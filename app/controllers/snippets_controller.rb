require 'builder'

class SnippetsController < ApplicationController
    helper_method :sort_column, :sort_direction

    def index #{{{
        #@snippets = sort(Snippet.all)
        @snippets = Snippet.order(sort_column + " " + sort_direction)
    end #}}}

    def new #{{{
        @snippet = Snippet.new
    end #}}}

    def create #{{{
        # Create new Snippet object.
        @snippet = Snippet.new(post_params)

        # Save Snippet object to db.
        if @snippet.save
            redirect_to snippets_path
        else
            render 'new'
        end
    end #}}}

    def show #{{{
        @snippet = Snippet.find(params[:id])
    end #}}}

    def update #{{{
        @snippet = Snippet.find(params[:id])

        # Attempt to update the snippet in the db.
        if @snippet.update(post_params)
            redirect_to edit_snippet_path
        end
    end #}}}

    def edit #{{{
        @snippet = Snippet.find(params[:id])
    end #}}}

    def destroy #{{{
        @snippet = Snippet.find(params[:id])
        @snippet.destroy
        redirect_to snippets_path
    end #}}}

    def export #{{{
        snippets = sort(Snippet.all)
        b = Builder::XmlMarkup.new(:indent=>2)
        b.instruct! :xml, :version=>"1.0", :encoding=>"UTF-8"
        @xml = ""
        b.templateSet(:group=>"print") {
            snippets.each { |s|
                if s.java != nil and s.java != ""
                    # Get map of all variables and their default valu
                    variables = {}
                    regex = /\${(\d):?(.*?)}/
                    s.java.scan(regex) { |var,default|
                        variables[var] = default
                    }

                    # Replace each variable with IntelliJ friendly syntax.
                    newValue = s.java
                    variables.each { |key,val|
                        if val != nil and val != "" and val.scan(/\W/).size == 0
                            replacement = val
                        else
                            replacement = key
                        end
                        newValue.gsub!(/\$#{key}/, "$" + replacement + "$") #Replaces like $key.
                        newValue.gsub!(/\$\{#{key}.*?\}/, "$" + replacement + "$") #Replaces like ${key.*?}.
                    }

                    b.template(:name=>s.trigger, :value=>newValue, :description=>s.desc, :toReformat=>"true", :toShortenFQNames=>"true") {
                        # Variables.
                        variables.sort_by { |k,v| k } # Key is an integer denoting sequence.
                        variables.each { |key,val|
                            if val != nil and val != "" and val.scan(/\W/).size == 0
                                b.variable(:name=>val, :expression=>"", :defaultValue=>val, :alwaysStopAt=>"true")
                            else
                                b.variable(:name=>key, :expression=>"", :defaultValue=>val, :alwaysStopAt=>"true")
                            end
                        }

                        # Other template settings.
                        b.context {
                            b.option(:name=>"JAVA_CODE", :value=>"true")
                            b.option(:name=>"JAVA_STATEMENT", :value=>"true")
                            b.option(:name=>"JAVA_EXPRESSION", :value=>"false")
                            b.option(:name=>"JAVA_DECLARATION", :value=>"false")
                            b.option(:name=>"JAVA_COMMENT", :value=>"false")
                            b.option(:name=>"JAVA_STRING", :value=>"false")
                            b.option(:name=>"COMPLETION", :value=>"false")
                        }
                    }
                end
            }
        }
        @xml += b.to_s
    end #}}}

    private
        # Define required and permitted HTML POST parameters.
        def post_params #{{{
            params.require(:snippet).permit(:trigger, :links, :pre, :category, :desc, :ruby2, :bash4, :vim, :java, :vbs, :python3, :js, :winshell, :powershell, :groovy, :c, :cpp, :scala, :erlang, :clojure, :rails4)
        end #}}}

        def sort(snippets) #{{{
            snippets.sort_by do |s|
                [s.category, s.trigger]
            end
        end #}}}

        def sort_column
            Snippet.column_names.include?(params[:sort]) ? params[:sort] : "trigger"
        end

        def sort_direction
            %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
        end

end
