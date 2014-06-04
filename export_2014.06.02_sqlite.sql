PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
INSERT INTO "schema_migrations" VALUES('20140327155112');
INSERT INTO "schema_migrations" VALUES('20140329205854');
INSERT INTO "schema_migrations" VALUES('20140329210026');
INSERT INTO "schema_migrations" VALUES('20140330005229');
INSERT INTO "schema_migrations" VALUES('20140330005419');
CREATE TABLE "snippets" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "bash4" text, "winshell" text, "powershell" text, "vbs" text, "vim" text, "python3" text, "java" text, "js" text, "groovy" text, "c" text, "cpp" text, "scala" text, "erlang" text, "ruby2" text, "clojure" text, "trigger" varchar(255), "links" varchar(255), "pre" varchar(255), "category" varchar(255), "desc" varchar(255), "created_at" datetime, "updated_at" datetime, "rails4" text);
INSERT INTO "snippets" VALUES(341,'if [[ ${1:condition} ]]; then
    ${2:#statements}
fi',NULL,'if (${1:condition}) {
  ${2:#}
}','if ${1:condition} then
    ${2:''}
end if','if ${1:condition}
    ${2:"}
endif','if ${1:condition}:
    ${2:pass}','if (${1:condition}) {
    ${2://}
}','if (${1:condition}) {
    ${2://}
}','if (${1:condition}) {
    ${2://}
}',NULL,NULL,NULL,NULL,'if ${1:condition}
    ${2:#}
end',NULL,'if',NULL,'-','conditional','if','2014-03-29 05:11:30.367816','2014-03-29 05:11:30.367816',NULL);
INSERT INTO "snippets" VALUES(342,'NA','','','NA','','','static ','','','','','','','self.','','ms','','m','access modifier','static','2014-03-29 05:14:28.001269','2014-03-31 22:57:46.707945','');
INSERT INTO "snippets" VALUES(343,'NA',NULL,NULL,'NA',NULL,NULL,'protected ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'mt',NULL,'m','access modifier','protected','2014-03-29 05:14:28.013001','2014-03-29 05:14:28.013001',NULL);
INSERT INTO "snippets" VALUES(344,'declare -a ${1:ar}=(${2:1 2 3})',NULL,NULL,'xDim ${1:ar}(${2})',NULL,'${1:ar} = [${2:csv}]','${1:Object}[] arr = new $1[${2:10}];',NULL,NULL,NULL,NULL,NULL,NULL,'${1:ar} = [${2:csv}]',NULL,'ar',NULL,'ar','array','array','2014-03-29 05:14:28.021683','2014-03-29 05:14:28.021683',NULL);
INSERT INTO "snippets" VALUES(345,'NA',NULL,NULL,'NA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ar2da',NULL,'ar','array','convert array to dynamic array','2014-03-29 05:14:28.031071','2014-03-29 05:14:28.031071',NULL);
INSERT INTO "snippets" VALUES(346,'${1:ar}+=${2:val}','','','ReDim Preserve ${1:ar}[UBound($1) + 1]
$1(UBound($1)) = ${2:foo}','','${1:ar}.append(${2:val})','// import java.util.Arrays;
int origLength = ${1:origArray}.length;
$1 = java.util.Arrays.copyOf($1, origLength + 1);
$1[origLength] = ${2:newElement};','','','','','','','${1:ar}.push(${2:val})','','aradd','','ar','array','add new element at non-existent index','2014-03-29 05:14:28.037513','2014-03-30 02:19:57.120374','class Model < ActiveRecord::Base
    def self.dedupe
        grouped = all.group_by{ |model| [model.name, model.year, model.trim, model.make_id] }
        grouped.values.each do |duplicates|
        first_one = duplicates.shift
        duplicates.each{ |double| double.destroy }
end
#Model.dedupe');
INSERT INTO "snippets" VALUES(347,'if printf "%s
" ${${1:haystack}[@]} | grep -xc ${2:needle}; then
    ${3:#}
fi',NULL,NULL,'Dim i
For I = Lbound(${1:ar}) to Ubound($1)
    If $1(i) = ${2:needle} Then
        ${3:''}
    End If
Next',NULL,'${2:needle} in ${1:ar}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'${1:ar}.include?(${2:needle})',NULL,'arcon',NULL,'ar','array','array contains','2014-03-29 05:14:28.042891','2014-03-29 05:14:28.042891',NULL);
INSERT INTO "snippets" VALUES(348,'(${${1:ar1}[@]} ${${ar2}[@]})',NULL,'$${1:ar1} + $${2:ar2}','ReDim aTemp(UBound(${1:ar1}) + UBound(${2:ar2}) + 1)
For i = 0 To UBound($1)
    aTemp(i) = $1(i)
Next
Dim offset: offset = Ubound($1) + 1
For i = 0 To UBound($2)
    aTemp(i + offset) = $2(i)
Next
$1 = aTemp',NULL,'${1:ar1} + ${2:ar2}',NULL,'${1:ar1}.concat(${2:ar2})','${1:ar1} + ${2:ar2}',NULL,NULL,'${1:ar1} ++ ${2:ar2}','${1:List1} ++ ${2:List2}','${1:ar1} + ${2:ar2}','(concat ${1:ar1} ${2:ar2})','arconcat',NULL,'ar','array','add all elements from one to another','2014-03-29 05:14:28.047716','2014-03-29 05:14:28.047716',NULL);
INSERT INTO "snippets" VALUES(349,'($(printf "%s
" "${${1:ar}[@]}" | sort -u))','','','','','list(set(${1:ar}))','// import java.util.Set;
// import java.util.HashSet;
// import java.util.Arrays;
$1 = new HashSet<${2:Object}>(Arrays.asList(${1:ar})).toArray();','','${1:ar}.unique()','','','${1:ar}.distinct','lists:usort(${1:List})','${1:ar}.uniq!','(distinct ${1:ar})','ardd','aruniq','ar','array','array dedupe, keep unique elements','2014-03-29 05:14:28.054663','2014-03-30 01:52:09.929248','aaa');
INSERT INTO "snippets" VALUES(350,'(${${1:ar}[@]//${2:match}})',NULL,NULL,NULL,NULL,'[e for e in ${1:ar} if ${2:condition}]',NULL,'${1:ar}.filter(function(x) { ${2:return x > 0} })','${1:ar}.findAll() { x -> ${2:x > 0} }',NULL,NULL,NULL,NULL,'${1:ar}.select { |e| ${2:condition} }',NULL,'arfilter',NULL,'ar','array','filter elements of array','2014-03-29 05:14:28.059792','2014-03-29 05:14:28.059792',NULL);
INSERT INTO "snippets" VALUES(351,'${${1:ar}[${2:0}]}',NULL,'$${1:ar}[${2}]','${1:ar}(${2:i})',NULL,'${1:ar}[0]','${1:ar}[${2:0}]','${1:ar}[${2:0}]','${1:ar}[${2:0}]',NULL,NULL,NULL,NULL,'${1:ar}[0]',NULL,'arget',NULL,'ar','array','get element in array','2014-03-29 05:14:28.065194','2014-03-29 05:14:28.065194',NULL);
INSERT INTO "snippets" VALUES(352,NULL,NULL,NULL,NULL,NULL,'${1:ar1} & ${2:ar2}',NULL,NULL,'${1:ar}.intersect(${2:ar2})',NULL,NULL,NULL,NULL,'${1:ar1} & ${2:ar2}',NULL,'arintersect',NULL,'ar','array','inersect with another','2014-03-29 05:14:28.070778','2014-03-29 05:14:28.070778',NULL);
INSERT INTO "snippets" VALUES(353,'for ${1:i} in ${!${2:ar}[@]}; do
    ${3:#}
done',NULL,'foreach ($${1:foo} in $${2:ar}) {
    ${3:#}
}','Dim I
For i = 0 To UBound(${1:ar})
    ${2:''}
Next',NULL,'@@val
for ${2:e} in ${1:ar}:
    ${3:#}
@@val+i
for i, e in enumerate(${1:ar}):
    ${2:#}',NULL,'for (var i = 0; i < ${1:ar}.length; i++ ) {
    ${2://}
}','for (i in ${1:ar}) {
    ${2://}
}',NULL,NULL,NULL,NULL,'@@val
${1:ar}.each { |${2:e}| ${3} }
@@val+i
${1:ar}.each_with_index do |e, i|
    ${2:#}
end',NULL,'ariter',NULL,'ar','array','iterate through elements','2014-03-29 05:14:28.075823','2014-03-29 05:14:28.075823',NULL);
INSERT INTO "snippets" VALUES(354,'${#${1:ar}[@]}','','$${1:ar}.Length','UBound(${1:ar})','','len(${1:ar})','${1:array}.length','${1:ar}.length','${1:ar}.size','','','','','${1:ar}.size','','arlen','','ar','array','length','2014-03-29 05:14:28.081308','2014-04-07 19:55:58.601518','');
INSERT INTO "snippets" VALUES(355,'@LINK{ar}',NULL,'$${1:ar} = @(${2:csv})',NULL,NULL,'${1:ar} = [${2:csv}]','new ${1:Type}[]{${2:commaSeparatedList}}',NULL,NULL,NULL,NULL,NULL,NULL,'${1:ar} = [${2:csv}]',NULL,'arlit',NULL,'ar','array','array literal','2014-03-29 05:14:28.086676','2014-03-29 05:14:28.086676',NULL);
INSERT INTO "snippets" VALUES(356,'for ${1:e} in ${${2:ar}[@]}; do
    ${3:#}
done',NULL,NULL,'@LINK(ariter)',NULL,'[${2:operation} for e in ${1:ar}]',NULL,'${1:ar}.map(function(x) { ${2:return x > 0} })','${1:ar}.collect() { x -> ${2:x > 0} }',NULL,NULL,NULL,NULL,'${1:ar}.map { |e| ${2:operation} }',NULL,'armap',NULL,'ar','array','map operation, apply to each element','2014-03-29 05:14:28.091516','2014-03-29 05:14:28.091516',NULL);
INSERT INTO "snippets" VALUES(357,'max=${1:ar}[0]
for ${2:e} in ${$1}[@]}; do
    if [[ $2 > ${e} ]]; then
        max=${e}
    endif
done',NULL,NULL,NULL,NULL,'max(${1:ar})',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'${1:ar}.max',NULL,'armax',NULL,'ar','array','max element','2014-03-29 05:14:28.099539','2014-03-29 05:14:28.099539',NULL);
INSERT INTO "snippets" VALUES(358,'min=${1:ar}[0]
for ${2:e} in ${$1}[@]}; do
    if [[ $2 < ${e} ]]; then
        min=${e}
    endif
done',NULL,NULL,NULL,NULL,'min(${1:ar})',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'${1:ar}.min',NULL,'armin',NULL,'ar','array','min element','2014-03-29 05:14:28.106194','2014-03-29 05:14:28.106194',NULL);
INSERT INTO "snippets" VALUES(359,'reduce=0
for (( ${2:i} = 0; $2 < #${1:ar}[@] - 1; $2++ )); do
    reduce=$1[i] + $1[i+1]
done',NULL,NULL,NULL,NULL,'# from functools import reduce
reduce(lambda x, y: ${2:operation}, ${1:ar}, ${3:baseCase})',NULL,'${1:ar}.reduce(function(a, b) {
    ${3:operation};
}, ${2:baseCase})','${1:ar}.inject(${2:baseCase}) { x, y -> ${3:operation} }',NULL,NULL,NULL,NULL,'${1:ar}.inject(${3:baseCase}) { |x,y| ${2:operation} }',NULL,'arreduce',NULL,'ar','array','reduce operation, fold','2014-03-29 05:14:28.110927','2014-03-29 05:14:28.110927',NULL);
INSERT INTO "snippets" VALUES(360,'unset ${1:ar}[${2:0}]',NULL,NULL,'Dim ${1:iRemoveIndex}: $1 = ${2:0}
Dim i
For i = $1 To UBound(${3:array}) - 1
    $3(i) = $3(i + 1)
Next
ReDim Preserve $3(UBound($3) - 1)',NULL,'${1:ar}.pop(${2:0})','int origLength = ${1:origArray}.length;
${2:Object}[] tempArr = new $2[origLength - 1];
int idxToRemove = ${3:0};
int j = 0;
for (int i = 0; i < origLength; i++) {
    if (i != idxToRemove) {
        tempArr[j++] = $1[i];
    }
}
$1 = tempArr;',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'arrem',NULL,'ar','array','remove','2014-03-29 05:14:28.115843','2014-03-29 05:14:28.115843',NULL);
INSERT INTO "snippets" VALUES(361,'${1:ar}[${2:0}]=${3:val}',NULL,'$${1:ar}[${2:0}] = ${3:val}','${1:ar}(${2:i}) = ${3:val}',NULL,'${1:ar} = ${2:val}','${1:ar}[${2:0}] = ${3:value}','${1:ar}[${2:0}] = ${3:value}','${1:ar}[${2:0}] = ${3:value}',NULL,NULL,NULL,NULL,'${1:ar} = ${2:val}',NULL,'arset',NULL,'ar','array','set array element at existing index','2014-03-29 05:14:28.122298','2014-03-29 05:14:28.122298',NULL);
INSERT INTO "snippets" VALUES(362,'("${${1:ar}[@]:${2:startIdx}:${3:length}}")',NULL,'$${1:ar}[${2:0..1}]',NULL,NULL,'${1:ar}[0:1]',NULL,'${1:ar}.slice(${2:0,1})','${1:ar}[${2:0..1}]',NULL,NULL,NULL,NULL,'${1:ar}[0..1]',NULL,'arsl','arslice','ar','array','get contiguous portion of array','2014-03-29 05:14:28.127409','2014-03-29 05:14:28.127409',NULL);
INSERT INTO "snippets" VALUES(363,'($(printf "%s
" ${${1:ar}[@]} | shuf))',NULL,NULL,NULL,NULL,'# from random import shuffle, sample
shuffle(${1:ar})',NULL,NULL,'Collections.shuffle(${1:ar})',NULL,NULL,NULL,NULL,'${1:ar}.shuffle',NULL,'arshuffle',NULL,'ar','array','shuffle, randomize elements','2014-03-29 05:14:28.132696','2014-03-29 05:14:28.132696',NULL);
INSERT INTO "snippets" VALUES(364,'($(printf "%s
" ${${1:ar}[@]} | sort))',NULL,'$${1:ar} | Sort-Object',NULL,NULL,'${1:ar}.sort()',NULL,'${1:ar}.sort();','${1:ar}.sort()',NULL,NULL,NULL,NULL,'${1:ar}.sort!',NULL,'arsor',NULL,'ar','array','sort elements in array (in place)','2014-03-29 05:14:28.138395','2014-03-29 05:14:28.138395',NULL);
INSERT INTO "snippets" VALUES(365,NULL,NULL,NULL,NULL,NULL,'${1:ar1} | ${2:ar2}',NULL,NULL,'(${1:ar1} + ${2:ar2}).unique()',NULL,NULL,NULL,NULL,'${1:ar1} | ${2:ar2}',NULL,'arunion',NULL,'ar','array','union with another','2014-03-29 05:14:28.143239','2014-03-29 05:14:28.143239',NULL);
INSERT INTO "snippets" VALUES(366,'','','','','','','','','','','','','','','','ae','','a','assert','assert equals','2014-03-29 05:14:28.147473','2014-03-30 00:46:13.921701',NULL);
INSERT INTO "snippets" VALUES(367,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'an',NULL,'a','assert','assert null','2014-03-29 05:14:28.153584','2014-03-29 05:14:28.153584',NULL);
INSERT INTO "snippets" VALUES(368,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ann',NULL,'a','assert','assert not null','2014-03-29 05:14:28.158270','2014-03-29 05:14:28.158270',NULL);
INSERT INTO "snippets" VALUES(369,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'auplaymp3',NULL,'au','audio','play mp3 file','2014-03-29 05:14:28.170187','2014-03-29 05:14:28.170187',NULL);
INSERT INTO "snippets" VALUES(370,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'auplaywav',NULL,'au','audio','play wav file','2014-03-29 05:14:28.175235','2014-03-29 05:14:28.175235',NULL);
INSERT INTO "snippets" VALUES(371,'NA',NULL,NULL,'Class ${1:foo} ''{{{
    Private Sub Class_Initialize() ''{{{
        Reset
    End Sub ''}}}
    
    Private Sub Class_Terminate() ''{{{
        ''
    End Sub ''}}}
    
    Public Sub Reset() ''{{{
        ''
    End Sub ''}}}
''}}}',NULL,'class ${1:ClassName}(${2:object}):
    """${3:docstring for $1}"""
    def __init__(self, ${4:arg}):
        ${5:super($1, self).__init__()}
        self.$4 = $4
        ${6}','class ${1:FooBarClass} {
    public $1(${2}) {
        //
    }
    @Override
    public int hashCode() {
        org.apache.commons.lang3.builder.HashCodeBuilder hashCodeBuilder;
        hashCodeBuilder = new org.apache.commons.lang3.builder.HashCodeBuilder(17, 31);
        // hashCodeBuilder.append(foobar);
        return hashCodeBuilder.toHashCode();
    }
    @Override
    public boolean equals(Object o) {
        if (o == this) return true;
        if (o instanceof this) return false; // Also checks for null.
        if (foobar1 != o.foobar1) {
            return false;
        } else if (foobar2 != o.foobar2) {
            return false;
        }
        return true;
    }
    @Override
    public String toString() {
        return ;
    }
}',NULL,'class ${1:FooBarClass} {
    $1(${2}) {
        //
    }
}',NULL,NULL,NULL,NULL,NULL,NULL,'cl',NULL,'cl','class','new class','2014-03-29 05:14:28.179671','2014-03-29 05:14:28.179671',NULL);
INSERT INTO "snippets" VALUES(372,'NA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'clanon',NULL,'cl','class','define anonymous class','2014-03-29 05:14:28.185593','2014-03-29 05:14:28.185593',NULL);
INSERT INTO "snippets" VALUES(373,'NA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'clmethods',NULL,'cl','class','gets class methods','2014-03-29 05:14:28.191159','2014-03-29 05:14:28.191159',NULL);
INSERT INTO "snippets" VALUES(374,'NA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'clname',NULL,'cl','class','gets name of class','2014-03-29 05:14:28.196688','2014-03-29 05:14:28.196688',NULL);
INSERT INTO "snippets" VALUES(375,'NA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'clsub',NULL,'cl','class','make subclass','2014-03-29 05:14:28.201791','2014-03-29 05:14:28.201791',NULL);
INSERT INTO "snippets" VALUES(376,'xargs -i --max-procs=1 ${1:cmd}',NULL,NULL,NULL,NULL,NULL,'synchronized (LOCK_${1:FOOBAR}) {
    //
}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ccguard','guard','cc','concurrency','restrict execution to single thread','2014-03-29 05:14:28.207208','2014-03-29 05:14:28.207208',NULL);
INSERT INTO "snippets" VALUES(377,'ps -eLf',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'cclist',NULL,'cc','concurrency','list threads','2014-03-29 05:14:28.212413','2014-03-29 05:14:28.212413',NULL);
INSERT INTO "snippets" VALUES(378,'NA',NULL,NULL,NULL,NULL,NULL,'@GuardedBy("LOCK_$1") ${2:private String foobar = "foobar"};
final Object LOCK_${1:FOOBAR} = new Object();',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'cclock','lock','cc','concurrency','defines object lock','2014-03-29 05:14:28.218141','2014-03-29 05:14:28.218141',NULL);
INSERT INTO "snippets" VALUES(379,'NA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ccmsgq',NULL,'cc','concurrency','define message queue','2014-03-29 05:14:28.222736','2014-03-29 05:14:28.222736',NULL);
INSERT INTO "snippets" VALUES(380,'NA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ccmsgrx',NULL,'cc','concurrency','message receive','2014-03-29 05:14:28.229472','2014-03-29 05:14:28.229472',NULL);
INSERT INTO "snippets" VALUES(381,'NA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ccmsgtx',NULL,'cc','concurrency','message transmit, send','2014-03-29 05:14:28.234576','2014-03-29 05:14:28.234576',NULL);
INSERT INTO "snippets" VALUES(382,'sleep ${1:1s}','','','WScript.Sleep ${1:1000}','','# import time
time.sleep(${1:1.0})','Thread.sleep(${1:1000});','NA','Thread.sleep(${1:1000});','','','','','sleep(${1:1.0})','','ccsleep','sleep','cc','concurrency','make thread wait, sleep','2014-03-29 05:14:28.239551','2014-04-07 22:18:16.072254','');
INSERT INTO "snippets" VALUES(383,'@@single thread
${1:cmd} &
@@multiple threads
xargs -0 --max-procs=${2:4} -n 1 ${1:cmd}','','','','','class ${1:myThreadClass}(threading.Thread):
   def run(self):
       ${2:time.sleep(1.0)}
${3:thr} = $1()
$3.start()','Thread t = new Thread(new Runnable() {
    @Override
    public void run() {
       ${1://}
    }
});
t.start();','','','','','','','${1:thr} = Thread.new { ${2:sleep(1.0)} }','','ccstart','','cc','concurrency','starts thread','2014-03-29 05:14:28.248480','2014-05-31 04:14:06.718791','');
INSERT INTO "snippets" VALUES(384,'timeout ${1:5} ${2:cmd}',NULL,NULL,NULL,NULL,'# import signal, time
class Timeout(Exception): pass
def timeout_handler(signo, fm):
    raise Timeout()
signal.signal(signal.SIGALRM,
    timeout_handler)
try:
    signal.alarm(1)
    time.sleep(2)
except Timeout:
    pass
signal.alarm(0)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'# require ''timeout''
begin
    Timeout.timeout(1) do
        sleep(2)
    end
rescue Timeout::Error
end',NULL,'ccto','cctimeout','cc','concurrency','timeout','2014-03-29 05:14:28.254671','2014-03-29 05:14:28.254671',NULL);
INSERT INTO "snippets" VALUES(385,'kill -9 ${1:pid}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ccterm',NULL,'cc','concurrency','terminate thread','2014-03-29 05:14:28.259480','2014-03-29 05:14:28.259480',NULL);
INSERT INTO "snippets" VALUES(386,NULL,NULL,NULL,NULL,NULL,'${1:thr}.join()',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'${1:thr}.join',NULL,'ccwait',NULL,'cc','concurrency','wait on thread','2014-03-29 05:14:28.264750','2014-03-29 05:14:28.264750',NULL);
INSERT INTO "snippets" VALUES(387,'elif [[ ${1:condition} ]]; then
    ${2:#}',NULL,'elseif (${1:condition}) {
  ${2:#}
}','ElseIf ${1:condition} Then
    ${2:''}','elseif ${1:condition}
    ${2:"}','elif ${1}:
    ${2:pass}','else if (${1:condition}) {
    ${2://}
}',NULL,NULL,NULL,NULL,NULL,NULL,'elif ${1:condition}
    ${2:#}',NULL,'ei',NULL,'-','conditional','else if','2014-03-29 05:14:28.271423','2014-03-29 05:14:28.271423',NULL);
INSERT INTO "snippets" VALUES(388,'else
    ${1:#}',NULL,'else {
  ${1:#}
}','Else
    ${1:''}','else
    ${1:"}','else:
    ${1:pass}','else {
    ${1://}
}',NULL,NULL,NULL,NULL,NULL,NULL,'else
    ${1:#}',NULL,'el',NULL,'-','conditional','else','2014-03-29 05:14:28.277205','2014-03-29 05:14:28.277205',NULL);
INSERT INTO "snippets" VALUES(389,'if [[ ${1:condition} ]]; then
    ${2:#}
else
    ${3:#}
fi',NULL,'if (${1:condition}) {
  ${2:#}
} else {
  ${3:#}
}','If ${1:condition} Then
    ${2:''}
Else
    ${3:''}
End If','if ${1:condition}
    ${2:"}
else
    ${3:"}
endif','if ${1:condition}:
    ${2:pass}
else:
    ${3:pass}','if (${1:condition}) {
    ${2://}
} else {
    ${3://}
}','if (${1:condition}) {
    ${2://}
} else {
    ${3://}
}','if (${1:condition}) {
    ${2://}
} else {
    ${3://}
}',NULL,NULL,NULL,NULL,'if ${1:condition}
    ${2:#}
else
    ${3:#}
end',NULL,'ife',NULL,'-','conditional','if else','2014-03-29 05:14:28.282393','2014-03-29 05:14:28.282393',NULL);
INSERT INTO "snippets" VALUES(390,'if [[ ${1:condition} ]]; then
    ${3:#}
elif [[ ${2:condition} ]]; then
    ${4:#}
else
    ${5:#}
fi',NULL,'if (${1:condition}) {
  ${3:#}
} elseif (${2:condition}) {
  ${4:#}
} else {
  ${5:#}
}','If ${1:condition} Then
    ${3:''}
ElseIf ${2:condition} Then
    ${4:''}
Else
    ${5:''}
End If','if ${1:condition}
    ${3:"}
elseif ${2:condition}
    ${4:"}
else
    ${5:"}','if ${1:condition}:
    ${3:pass}
elif ${2:condition}:
    ${4:pass}
else:
    ${5:pass}','if (${1:condition}) {
    ${3://}
} else if (${2:condition}) {
    ${4://}
} else {
    ${5://}
}','if (${1:condition}) {
    ${2://}
} else if (${3:condition}) {
    ${4://}
} else {
    ${5://}
}','if (${1:condition}) {
    ${2://}
} else if (${3:condition}) {
    ${4://}
} else {
    ${5://}
}',NULL,NULL,NULL,NULL,'if ${1:condition}
    ${3:#}
elif ${2:condition}
    ${4:#}
else
    ${5:#}
end',NULL,'ifei',NULL,'-','conditional','if else if else','2014-03-29 05:14:28.288042','2014-03-29 05:14:28.288042',NULL);
INSERT INTO "snippets" VALUES(391,'$([ ${1:condition} ] && ${2:true} || ${3:false})',NULL,NULL,NULL,'${1:condition} ? ${2:true} : ${3:false}','${2:true} if ${1:condition} else ${3:false}','${1:condition} ? ${2:true} : ${3:false};','${1:condition} ? ${2:true} : ${3:false};','${1:condition} ? ${2:true} : ${3:false};',NULL,NULL,NULL,NULL,NULL,NULL,'ifet','ift','-','conditional','if else ternary','2014-03-29 05:14:28.294221','2014-03-29 05:14:28.294221',NULL);
INSERT INTO "snippets" VALUES(392,'case ${1:${var}} in
    ${2:pattern})
        ${3};;
    "a"|"b") ;;
    *) ;;
esac',NULL,NULL,'Select Case ${1:foo}
    Case 0
        ''
    Case 1
        ''
    Case 2
        ''
    Case Else
        ''
End Select',NULL,'NA','switch(${1:key}) {
    case ${2:value}:
        break;
    default:
        break;
}',NULL,NULL,NULL,NULL,NULL,NULL,'case ${1:value}
    when ${2:condition}
        ${3:#}
    else
        ${4:#}
end',NULL,'sw',NULL,'-','conditional','case, switch, select','2014-03-29 05:14:28.299144','2014-03-29 05:14:28.299144',NULL);
INSERT INTO "snippets" VALUES(393,NULL,NULL,NULL,'If Not ${1:condition} Then
    ${2:''}
End If',NULL,'if not ${1:condition}:
    ${2:action}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'${2:action} unless ${1:condition}',NULL,'unl',NULL,'-','conditional','unless','2014-03-29 05:14:28.305619','2014-03-29 05:14:28.305619',NULL);
INSERT INTO "snippets" VALUES(394,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dsdeq',NULL,'ds','data structure','define deque','2014-03-29 05:14:28.315175','2014-03-29 05:14:28.315175',NULL);
INSERT INTO "snippets" VALUES(395,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dsdeqadd',NULL,'ds','data structure','add element to deque','2014-03-29 05:14:28.319700','2014-03-29 05:14:28.319700',NULL);
INSERT INTO "snippets" VALUES(396,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dsdeqget',NULL,'ds','data structure','get element in deque','2014-03-29 05:14:28.325577','2014-03-29 05:14:28.325577',NULL);
INSERT INTO "snippets" VALUES(397,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'for (var key in ${1:dsm}) {
    var val = $1[key];
}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dsdeqiter',NULL,'ds','data structure','iterate through deque entries','2014-03-29 05:14:28.330227','2014-03-29 05:14:28.330227',NULL);
INSERT INTO "snippets" VALUES(398,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dsdeqlen',NULL,'ds','data structure','length of deque','2014-03-29 05:14:28.334657','2014-03-29 05:14:28.334657',NULL);
INSERT INTO "snippets" VALUES(399,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dsdeqrem',NULL,'ds','data structure','remove element from deque','2014-03-29 05:14:28.341096','2014-03-29 05:14:28.341096',NULL);
INSERT INTO "snippets" VALUES(400,'typeset -A ${1:foo}',NULL,NULL,'Dim d_${1}:Set d_$1 = CreateObject("Scripting.Dictionary")',NULL,'${1:dsm} = { ${2:''t'':1, ''f'':0} }',NULL,'${1:dsm} = { ${2:"t":1, "f":0} };','${1:dsm} = [${2:"t": 1, "f": 0}]',NULL,NULL,NULL,NULL,'${1:dsm} = { ${2:"t" => 1, "f" => 0} }',NULL,'dsm',NULL,'ds','data structure','map','2014-03-29 05:14:28.348469','2014-03-29 05:14:28.348469',NULL);
INSERT INTO "snippets" VALUES(401,'${1:foo}[${2:key}]=${3:val}',NULL,NULL,'d_${1}.Add ${2:key}, ${3:val}',NULL,'${1:dsm}[${2:key}] = ${3}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dsmadd',NULL,'ds','data structure','add element to map','2014-03-29 05:14:28.353947','2014-03-29 05:14:28.353947',NULL);
INSERT INTO "snippets" VALUES(402,'${${1:foo}[${2:key}]}',NULL,NULL,'d_${1}.Item ${2:key}',NULL,'${1:dsm}[${2:key}]',NULL,'${1:dsm}[${2:key}]','${1:dsm}[${2:key}]',NULL,NULL,NULL,NULL,'${1:dsm}[${2:key}]',NULL,'dsmget',NULL,'ds','data structure','get element in map','2014-03-29 05:14:28.359496','2014-03-29 05:14:28.359496',NULL);
INSERT INTO "snippets" VALUES(403,NULL,NULL,NULL,'d_${1}.Exists ${2:key}',NULL,'${2:key} in ${1:dsm}',NULL,'${1:dsm}.hasOwnProperty(${2:key});','${1:dsm}.containsKey(${2:key})',NULL,NULL,NULL,NULL,'${1:dsm}.has_key?(${2:key})',NULL,'dsmhaskey',NULL,'ds','data structure','test if map has key','2014-03-29 05:14:28.364866','2014-03-29 05:14:28.364866',NULL);
INSERT INTO "snippets" VALUES(404,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dsmhasval',NULL,'ds','data structure','test if map has value','2014-03-29 05:14:28.371147','2014-03-29 05:14:28.371147',NULL);
INSERT INTO "snippets" VALUES(405,'for ${1:k} in ${!${2:foo}[@]}; do
    ${3:#}
done',NULL,NULL,'Dim v_item
For Each ${2:v_item} In d_${1}.Keys
    ${3:''}
Next',NULL,'for key, val in ${1:dsm}.items():
    ${2:#}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'${1:dsm}.each do |key,val|
    ${2:#}
end',NULL,'dsmiter',NULL,'ds','data structure','iterate through map entries','2014-03-29 05:14:28.377103','2014-03-29 05:14:28.377103',NULL);
INSERT INTO "snippets" VALUES(406,'${!${1:foo}[@]}',NULL,NULL,'d_${1}.Keys',NULL,'list(${1:dsm}.keys())',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'${1:dsm}.keys',NULL,'dsmkeys',NULL,'ds','data structure','retrieve all keys in a map','2014-03-29 05:14:28.382205','2014-03-29 05:14:28.382205',NULL);
INSERT INTO "snippets" VALUES(407,'${#${1:foo}[@]}',NULL,NULL,'d_${1}.Count',NULL,'len(${1:dsm})',NULL,'var ${2:size} = 0;
for (var key in ${1:dsm}) { $2++; }','${1:dsm}.size()',NULL,NULL,NULL,NULL,'${1:dsm}.size',NULL,'dsmlen',NULL,'ds','data structure','length of map','2014-03-29 05:14:28.392143','2014-03-29 05:14:28.392143',NULL);
INSERT INTO "snippets" VALUES(408,NULL,NULL,NULL,'NA',NULL,'@LINK{dsm}',NULL,'${1:dsm} = { ${2:"t":1, "f":0} };','${1:dsm} = [${2:"t": 1, "f": 0}]',NULL,NULL,NULL,NULL,'@LINK{dsm}',NULL,'dsmlit',NULL,'ds','data structure','literal map','2014-03-29 05:14:28.400259','2014-03-29 05:14:28.400259',NULL);
INSERT INTO "snippets" VALUES(409,'unset "${1:foo}[${2:key}]"',NULL,NULL,NULL,NULL,'del ${1:dsm}[${2:key}]',NULL,'delete ${1:dsm}[${2:key}];',NULL,NULL,NULL,NULL,NULL,'${1:dsm}.delete(${2:key})',NULL,'dsmrem',NULL,'ds','data structure','remove element from map','2014-03-29 05:14:28.405444','2014-03-29 05:14:28.405444',NULL);
INSERT INTO "snippets" VALUES(410,'@LINK{dsmadd}',NULL,NULL,'@LINK{dsmadd}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dsmset',NULL,'ds','data structure','set element in map','2014-03-29 05:14:28.415510','2014-03-29 05:14:28.415510',NULL);
INSERT INTO "snippets" VALUES(411,'','','',' {{{ Sorts a dictionary by key value.  Dictionary may contain any object type.
'' Function Name: SortDictionary
'' Parameters:    d_objDict - Dictionary to sort.
'' Return:        Sorted dictionary.
''----------------------------------------------------------------------------}}}
Function SortDictionary(d_objDict) ''{{{
    '' declare our variables
    Dim v_dictKey: v_dictKey = 1
    Dim v_dictItem: v_dictItem = 2
    Dim a_strDict()
    Dim v_objKey
    Dim s_strKey,s_strItem
    Dim v_X,v_Y,v_Z
  
    '' get the dictionary count
    Z = d_objDict.Count
  
    '' we need more than one item to warrant sorting
    If Z > 1 Then
        '' create an array to store dictionary information
        ReDim a_strDict(Z,2)
        v_X = 0
        '' populate the string array
        For Each v_objKey In d_objDict
            a_strDict(v_X,v_dictKey)  = CStr(v_objKey)
            Set a_strDict(v_X,v_dictItem) = d_objDict(v_objKey)
            v_X = v_X + 1
        Next
  
      '' perform a a shell sort of the string array
      For v_X = 0 to (Z - 2)
          For v_Z_Y = v_X to (Z - 1)
              If StrComp(a_strDict(v_X,v_dictKey),a_strDict(v_Z_Y,v_dictKey),vbTextCompare) > 0 Then
                  s_strKey  = a_strDict(v_X,v_dictKey)
                  Set s_strItem = a_strDict(v_X,v_dictItem)
                  a_strDict(v_X,v_dictKey)  = a_strDict(v_Z_Y,v_dictKey)
                  Set a_strDict(v_X,v_dictItem) = a_strDict(v_Z_Y,v_dictItem)
                  a_strDict(v_Z_Y,v_dictKey)  = s_strKey
                  Set a_strDict(v_Z_Y,v_dictItem) = s_strItem
              End If
          Next
      Next
  
      '' erase the contents of the dictionary object
      d_objDict.RemoveAll
  
      '' repopulate the dictionary with the sorted information
      For v_X = 0 to (Z - 1)
          d_objDict.Add a_strDict(v_X,v_dictKey), a_strDict(v_X,v_dictItem)
      Next
  
    End If
End Function ''}}}','','# from operator import itemgetter
sorted(${1:dsm}.iteritems(), key=itemgetter(${2:0}))','//import com.google.common.base.Functions; // http://mvnrepository.com/artifact/com.google.guava/guava
//import com.google.common.collect.Ordering; //http://mvnrepository.com/artifact/com.google.guava/guava
Ordering<${2:String}> ${3:mapSorter} = Ordering.natural().onResultOf(Functions.forMap(${1:myMap}));
List<${2:String}> ${4:sortedList} = ${3:mapSorter}.sortedCopy(${1:myMap}.keySet());','','','','','','','d.sort_by {|k, v| v}','','dsmsor','','ds','data structure','sort map by keys or values','2014-03-29 05:14:28.420958','2014-05-13 06:22:49.444558','');
INSERT INTO "snippets" VALUES(412,'${${1:foo}[@]}',NULL,NULL,'d_${1}.Items',NULL,'list(${1:dsm}.values())',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'${1:dsm}.values',NULL,'dsmvals',NULL,'ds','data structure','retrieve all values in a map','2014-03-29 05:14:28.434572','2014-03-29 05:14:28.434572',NULL);
INSERT INTO "snippets" VALUES(413,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dsq',NULL,'ds','data structure','define queue','2014-03-29 05:14:28.440143','2014-03-29 05:14:28.440143',NULL);
INSERT INTO "snippets" VALUES(414,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dsqadd',NULL,'ds','data structure','add element to queue','2014-03-29 05:14:28.445184','2014-03-29 05:14:28.445184',NULL);
INSERT INTO "snippets" VALUES(415,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dsqget',NULL,'ds','data structure','get element in queue','2014-03-29 05:14:28.449309','2014-03-29 05:14:28.449309',NULL);
INSERT INTO "snippets" VALUES(416,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dsqiter',NULL,'ds','data structure','iterate through queue entries','2014-03-29 05:14:28.454964','2014-03-29 05:14:28.454964',NULL);
INSERT INTO "snippets" VALUES(417,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dsqlen',NULL,'ds','data structure','length of queue','2014-03-29 05:14:28.459493','2014-03-29 05:14:28.459493',NULL);
INSERT INTO "snippets" VALUES(418,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dsqrem',NULL,'ds','data structure','remove element from queue','2014-03-29 05:14:28.464587','2014-03-29 05:14:28.464587',NULL);
INSERT INTO "snippets" VALUES(419,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dss',NULL,'ds','data structure','define set','2014-03-29 05:14:28.470321','2014-03-29 05:14:28.470321',NULL);
INSERT INTO "snippets" VALUES(420,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dssadd',NULL,'ds','data structure','add element to set','2014-03-29 05:14:28.479449','2014-03-29 05:14:28.479449',NULL);
INSERT INTO "snippets" VALUES(421,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dssget',NULL,'ds','data structure','get element in set','2014-03-29 05:14:28.485278','2014-03-29 05:14:28.485278',NULL);
INSERT INTO "snippets" VALUES(422,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dssiter',NULL,'ds','data structure','iterate through set entries','2014-03-29 05:14:28.492294','2014-03-29 05:14:28.492294',NULL);
INSERT INTO "snippets" VALUES(423,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dsslen',NULL,'ds','data structure','length of set','2014-03-29 05:14:28.497107','2014-03-29 05:14:28.497107',NULL);
INSERT INTO "snippets" VALUES(424,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dssrem',NULL,'ds','data structure','remove element from set','2014-03-29 05:14:28.501958','2014-03-29 05:14:28.501958',NULL);
INSERT INTO "snippets" VALUES(425,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dsst',NULL,'ds','data structure','define stack','2014-03-29 05:14:28.506242','2014-03-29 05:14:28.506242',NULL);
INSERT INTO "snippets" VALUES(426,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dsstadd',NULL,'ds','data structure','add element to stack','2014-03-29 05:14:28.510647','2014-03-29 05:14:28.510647',NULL);
INSERT INTO "snippets" VALUES(427,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dsstget',NULL,'ds','data structure','get element in stack','2014-03-29 05:14:28.515403','2014-03-29 05:14:28.515403',NULL);
INSERT INTO "snippets" VALUES(428,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dsstiter',NULL,'ds','data structure','iterate through stack entries','2014-03-29 05:14:28.521089','2014-03-29 05:14:28.521089',NULL);
INSERT INTO "snippets" VALUES(429,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dsstlen',NULL,'ds','data structure','length of stack','2014-03-29 05:14:28.525558','2014-03-29 05:14:28.525558',NULL);
INSERT INTO "snippets" VALUES(430,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dsstrem',NULL,'ds','data structure','remove element from stack','2014-03-29 05:14:28.530671','2014-03-29 05:14:28.530671',NULL);
INSERT INTO "snippets" VALUES(431,NULL,NULL,NULL,NULL,NULL,NULL,'${1:d}.after(${2})',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'tafter',NULL,'t','date time','date after','2014-03-29 05:14:28.535726','2014-03-29 05:14:28.535726',NULL);
INSERT INTO "snippets" VALUES(432,NULL,NULL,NULL,NULL,NULL,NULL,'${1:d}.before(${2})',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'tbefore',NULL,'t','date time','date before','2014-03-29 05:14:28.540938','2014-03-29 05:14:28.540938',NULL);
INSERT INTO "snippets" VALUES(433,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'tformat',NULL,'t','date time','format date time','2014-03-29 05:14:28.545792','2014-03-29 05:14:28.545792',NULL);
INSERT INTO "snippets" VALUES(434,NULL,NULL,NULL,'Now',NULL,'# import datetime
${1:now} = datetime.datetime.now()','// import java.util.Date
new Date()','var ${1:now} = new Date();','${1:now} = new Date()',NULL,NULL,NULL,NULL,'${1:now} = Time.now',NULL,'tnow','now','t','date time','the date right now','2014-03-29 05:14:28.554612','2014-03-29 05:14:28.554612',NULL);
INSERT INTO "snippets" VALUES(435,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'tparse',NULL,'t','date time','parse date string','2014-03-29 05:14:28.559593','2014-03-29 05:14:28.559593',NULL);
INSERT INTO "snippets" VALUES(436,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ttomorrow',NULL,'t','date time','tomorrow''s date','2014-03-29 05:14:28.565612','2014-03-29 05:14:28.565612',NULL);
INSERT INTO "snippets" VALUES(437,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'tyesterday',NULL,'t','date time','yesterday''s date','2014-03-29 05:14:28.570970','2014-03-29 05:14:28.570970',NULL);
INSERT INTO "snippets" VALUES(438,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'whoami',NULL,'-','debugging','get this method name','2014-03-29 05:14:28.575370','2014-03-29 05:14:28.575370',NULL);
INSERT INTO "snippets" VALUES(439,NULL,NULL,NULL,NULL,NULL,NULL,'/**
 * ${1:desc}
 *
 * @author `g:snips_author`
 */',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dcl',NULL,'d','documentation','class documentation','2014-03-29 05:14:28.581278','2014-03-29 05:14:28.581278',NULL);
INSERT INTO "snippets" VALUES(440,'# Name: ${1:name}
# Version: ${2:0.01}
# Description: ${3:desc}
# Author: Dan Barrese (danbarrese.com)
# Date: `strftime("%B %d, %Y")`
# Update Log:
#   `strftime("%Y.%m.%d")` [$2][DRB] Initial version.
# Sources/References:
# - None',NULL,NULL,''' Name: ${1:name}
'' Version: ${2:0.01}
'' Description: ${3:desc}
'' Author: Dan Barrese (danbarrese.com)
'' Date: `strftime("%B %d, %Y")`
'' Update Log: {{{
''   `strftime("%Y.%m.%d")` [$2][DRB] Initial version.
'' }}}
'' Sources/References:
'' - None',NULL,NULL,'/**
 * ${1:desc}
 *
 * @author `g:snips_author`
 */',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dfile',NULL,'d','documentation','file documentation','2014-03-29 05:14:28.585890','2014-03-29 05:14:28.585890',NULL);
INSERT INTO "snippets" VALUES(441,'# Description: ${1}
# Date: `strftime("%B %d, %Y")`
# Author: Dan Barrese (danbarrese.com)','','',''' {{{ ${1:desc}
'' PARAMS:    ?
'' RETURNS:   ?
'' AUTHOR:    Dan Barrese
'' DATE:      `strftime("%B %d, %Y")`
''---------------------------------------------------------------------------}}}','','','/**
 * ${1:desc}
 *
 * @Preconditions
 * <li></li>
 *
 * @Postconditions
 * <li></li>
 *
 * @param
 * @return
 * @throws
 * @author `g:snips_author`
 */','','','','','','','','','dfn','','d','documentation','function documentation','2014-03-29 05:14:28.591270','2014-04-08 02:59:30.199667','');
INSERT INTO "snippets" VALUES(442,'# ',NULL,'# ',''' ',NULL,NULL,NULL,'// ','// ',NULL,NULL,NULL,NULL,NULL,NULL,'dl',NULL,'d','documentation','end of line comment','2014-03-29 05:14:28.598517','2014-03-29 05:14:28.598517',NULL);
INSERT INTO "snippets" VALUES(443,NULL,NULL,'<#
 # ${1}
 #>','NA',NULL,'''''''
${1}
''''''',NULL,'/* ${1} */','/* ${1} */',NULL,NULL,NULL,NULL,'=begin
${1}
=end',NULL,'dml',NULL,'d','documentation','multiline comment','2014-03-29 05:14:28.603755','2014-03-29 05:14:28.603755',NULL);
INSERT INTO "snippets" VALUES(444,'# Postconditions:
#     * ',NULL,NULL,''' Postconditions:
''     * ',NULL,NULL,'@Postconditions:
<li></li>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dpost','post','d','documentation','post conditions','2014-03-29 05:14:28.609192','2014-03-29 05:14:28.609192',NULL);
INSERT INTO "snippets" VALUES(445,'# Preconditions:
#     * ',NULL,NULL,''' Preconditions:
''     * ',NULL,NULL,'@Preconditions:
<li></li>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dpre','pre','d','documentation','pre conditions','2014-03-29 05:14:28.614618','2014-03-29 05:14:28.614618',NULL);
INSERT INTO "snippets" VALUES(446,'#!/bin/bash
# Name: ${1:name}
# Version: ${2:0.01}
# Description: ${3:desc}
# Author: Dan Barrese (danbarrese.com)
# Date: `strftime("%B %d, %Y")`
# Update Log:
#   `strftime("%Y.%m.%d")` [$2][DRB] Initial version.
# Sources/References:
# - None
',NULL,NULL,''' Option Explicit
'' Name: ${1:name}
'' Version: ${2:0.01}
'' Description: ${3:desc}
'' Author: Dan Barrese (danbarrese.com)
'' Date: `strftime("%B %d, %Y")`
'' Update Log:
''   `strftime("%Y.%m.%d")` [$2][DRB] Initial version.
'' Sources/References:
'' - None
','" Name: ${1:`expand(''%:t'')`}
" Version: ${2:0.01}
" Description: ${3:desc}
" Author: ${4:`g:snips_author`}
" Date: `strftime("%B %d, %Y")`
" Update Log:
"   `strftime("%Y.%m.%d")` [$2][DRB] Initial version.
" Sources/References:
" - None
','# Name: ${1:name}
# Version: ${2:0.01}
# Description: ${3:desc}
# Author: Dan Barrese (danbarrese.com)
# Date: `strftime("%B %d, %Y")`
# Update Log:
#   `strftime("%Y.%m.%d")` [$2][DRB] Initial version.
# Sources/References:
# - None
','/**
 * Name: ${2:name}
 * Version: ${3:0.01}
 * Description: ${4:desc}
 * Author: Dan Barrese (danbarrese.com)
 * Date: `strftime("%B %d, %Y")`
 * Update Log:
 *   `strftime("%Y.%m.%d")` [$3][DRB] Initial version.
 * Sources/References:
 * - None
 */
public class ${1:`Filename("", "FooBarClass")`} {
    public static void main (String [] args) {
        //
    }
}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dstart','start','d','documentation','file header','2014-03-29 05:14:28.623118','2014-03-29 05:14:28.623118',NULL);
INSERT INTO "snippets" VALUES(447,'# TODO: ',NULL,NULL,''' TODO: ','" TODO: ',NULL,'// TODO: ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dtodo','todo','d','documentation','todo tag','2014-03-29 05:14:28.636218','2014-03-29 05:14:28.636218',NULL);
INSERT INTO "snippets" VALUES(448,'# ',NULL,NULL,''' ',NULL,NULL,'/** ${1} */',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dv',NULL,'d','documentation','variable documentation','2014-03-29 05:14:28.643425','2014-03-29 05:14:28.643425',NULL);
INSERT INTO "snippets" VALUES(449,'# ${1:HEADER} {{{
#``````````````````````````````````````````````````````````````````````````````
${2}
#}}}',NULL,NULL,''' > ${1:HEADER} {{{
''``````````````````````````````````````````````````````````````````````````````
${2}
''}}}',NULL,NULL,'// ${1} {{{
//````````````````````````````````````````````````````````````````````````````` 
//}}}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'h1',NULL,'d','documentation','header','2014-03-29 05:14:28.649159','2014-03-29 05:14:28.649159',NULL);
INSERT INTO "snippets" VALUES(450,'# ',NULL,NULL,''' ',NULL,'# ','// ',NULL,NULL,NULL,NULL,NULL,NULL,'# ',NULL,'d','rem','d','documentation','end of line comment','2014-03-29 05:14:28.653395','2014-03-29 05:14:28.653395',NULL);
INSERT INTO "snippets" VALUES(451,NULL,NULL,NULL,'NA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'da2ar',NULL,'da','dynamic array','convert dynamic array to array','2014-03-29 05:14:28.658887','2014-03-29 05:14:28.658887',NULL);
INSERT INTO "snippets" VALUES(452,NULL,NULL,NULL,'NA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'daadd',NULL,'da','dynamic array','add','2014-03-29 05:14:28.663399','2014-03-29 05:14:28.663399',NULL);
INSERT INTO "snippets" VALUES(453,NULL,NULL,NULL,'NA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'daconcat',NULL,'da','dynamic array','add all elements from one to another','2014-03-29 05:14:28.668322','2014-03-29 05:14:28.668322',NULL);
INSERT INTO "snippets" VALUES(454,NULL,NULL,NULL,'NA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'daget',NULL,'da','dynamic array','gets element','2014-03-29 05:14:28.674690','2014-03-29 05:14:28.674690',NULL);
INSERT INTO "snippets" VALUES(455,NULL,NULL,NULL,'NA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dainit',NULL,'da','dynamic array','initialize with list','2014-03-29 05:14:28.679183','2014-03-29 05:14:28.679183',NULL);
INSERT INTO "snippets" VALUES(456,NULL,NULL,NULL,'NA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'daintersect',NULL,'da','dynamic array','inersect with another','2014-03-29 05:14:28.683204','2014-03-29 05:14:28.683204',NULL);
INSERT INTO "snippets" VALUES(457,NULL,NULL,NULL,'NA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'daiter',NULL,'da','dynamic array','iterate through elements','2014-03-29 05:14:28.689030','2014-03-29 05:14:28.689030',NULL);
INSERT INTO "snippets" VALUES(458,NULL,NULL,NULL,'NA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dalen',NULL,'da','dynamic array','length, size','2014-03-29 05:14:28.693255','2014-03-29 05:14:28.693255',NULL);
INSERT INTO "snippets" VALUES(459,NULL,NULL,NULL,'NA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'damax',NULL,'da','dynamic array','max element','2014-03-29 05:14:28.702919','2014-03-29 05:14:28.702919',NULL);
INSERT INTO "snippets" VALUES(460,NULL,NULL,NULL,'NA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'damin',NULL,'da','dynamic array','min element','2014-03-29 05:14:28.709132','2014-03-29 05:14:28.709132',NULL);
INSERT INTO "snippets" VALUES(461,NULL,NULL,NULL,'NA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'darem',NULL,'da','dynamic array','remove','2014-03-29 05:14:28.713238','2014-03-29 05:14:28.713238',NULL);
INSERT INTO "snippets" VALUES(462,NULL,NULL,NULL,'NA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'daset',NULL,'da','dynamic array','sets element','2014-03-29 05:14:28.718087','2014-03-29 05:14:28.718087',NULL);
INSERT INTO "snippets" VALUES(463,NULL,NULL,NULL,'NA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dashuffle',NULL,'da','dynamic array','shuffle, randomize elements','2014-03-29 05:14:28.723386','2014-03-29 05:14:28.723386',NULL);
INSERT INTO "snippets" VALUES(464,NULL,NULL,NULL,'NA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dasor',NULL,'da','dynamic array','sort','2014-03-29 05:14:28.727683','2014-03-29 05:14:28.727683',NULL);
INSERT INTO "snippets" VALUES(465,NULL,NULL,NULL,'NA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'daunion',NULL,'da','dynamic array','union with another','2014-03-29 05:14:28.732964','2014-03-29 05:14:28.732964',NULL);
INSERT INTO "snippets" VALUES(466,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'deccsv','parsecsv','enc/dec','encode decode','decode csv','2014-03-29 05:14:28.738166','2014-03-29 05:14:28.738166',NULL);
INSERT INTO "snippets" VALUES(467,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dechtml','parsehtml','enc/dec','encode decode','decode html','2014-03-29 05:14:28.742745','2014-03-29 05:14:28.742745',NULL);
INSERT INTO "snippets" VALUES(468,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'decjson','parsejson','enc/dec','encode decode','decode json','2014-03-29 05:14:28.747131','2014-03-29 05:14:28.747131',NULL);
INSERT INTO "snippets" VALUES(469,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'decurl',NULL,'enc/dec','encode decode','decode url','2014-03-29 05:14:28.753293','2014-03-29 05:14:28.753293',NULL);
INSERT INTO "snippets" VALUES(470,NULL,NULL,NULL,NULL,NULL,'from xml.dom.minidom import parseString
document = parseString(${1:xmlString}).documentElement
for $2 in document.getElementsByTagName(''${2:tagName}'')]):
    ${3:pass}','// solution uses JAXP and SAX included in Java API since version >= 1.5
class ShoppingContentHandler extends DefaultHandler {
    Double priceSum = 0d;
    @Override
        public void startElement(String uri, String localName, String name,
                Attributes attributes) throws SAXException {
            if(name.equals("item")) {
                String quantityString = attributes.getValue(attributes.getIndex("quantity"));
                String priceString = attributes.getValue(attributes.getIndex("price"));
                Integer quantity = Integer.parseInt(quantityString);
                Double price = Double.parseDouble(priceString);
                priceSum += (quantity * price);
            }
        }
    public Double getPriceSum() {
        return priceSum;
    }
}
SAXParserFactory parserFactory = SAXParserFactory.newInstance();
try {
    SAXParser parser = parserFactory.newSAXParser();
    XMLReader reader = parser.getXMLReader();
    ShoppingContentHandler contentHandler = new ShoppingContentHandler();
    reader.setContentHandler(contentHandler);
    reader.parse(new InputSource(new FileReader("shopping.xml")));
    System.out.printf("$%.2f", contentHandler.getPriceSum());
} catch (ParserConfigurationException e) {
    e.printStackTrace();
} catch (SAXException e) {
    e.printStackTrace();
} catch (FileNotFoundException e) {
    e.printStackTrace();
} catch (IOException e) {
    e.printStackTrace();
}',NULL,NULL,NULL,'TODOTODO','TODOTODO','TODOTODO','#!/usr/bin/env ruby
# needed to parse xml
require ''rexml/document''
# grab the file
file = File.new(''shop.xml'')
# load it as an xml document
doc = REXML::Document.new(file)
# initialize the total to 0 as a float
    total = 0.0
# cycle through the items
    doc.elements.each(''shopping/item'') do |item|
# add the price to the total
    total += item.attributes[''price''].to_f
    end
# round the total to the nearest 0.01
    total = (total*100.0).round/100.0
# pad the output with the proper number of trailing 0''s
    printf "$%.2f
", total','(println (format "Total cost of items are $%#.2f"
          (->> (xml-seq (parse *xml-input-stream*))
           (filter #(= :item (:tag %))) ; Remove all but the item tags
           (map :attrs) ; Keep the attributes
           (map (fn [e] (str "(* " (:quantity e) " " (:price e) ")"))) ; Get the total price as a sexp
           (map read-string) ; "(* quantity price)" -> (* quantity price)
           (map eval) ; (* quantity price) -> quantity*price
           (apply +)))) ; Sum all elements','decxml','parsexml','enc/dec','encode decode','decode xml','2014-03-29 05:14:28.758416','2014-03-29 05:14:28.758416',NULL);
INSERT INTO "snippets" VALUES(471,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'enccsv',NULL,'enc/dec','encode decode','encode csv','2014-03-29 05:14:28.763992','2014-03-29 05:14:28.763992',NULL);
INSERT INTO "snippets" VALUES(472,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'enchtml',NULL,'enc/dec','encode decode','encode html','2014-03-29 05:14:28.781197','2014-03-29 05:14:28.781197',NULL);
INSERT INTO "snippets" VALUES(473,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'encjson',NULL,'enc/dec','encode decode','encode json','2014-03-29 05:14:28.785978','2014-03-29 05:14:28.785978',NULL);
INSERT INTO "snippets" VALUES(474,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'encurl',NULL,'enc/dec','encode decode','encode url','2014-03-29 05:14:28.791228','2014-03-29 05:14:28.791228',NULL);
INSERT INTO "snippets" VALUES(475,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'encxml',NULL,'enc/dec','encode decode','encode xml','2014-03-29 05:14:28.797177','2014-03-29 05:14:28.797177',NULL);
INSERT INTO "snippets" VALUES(476,NULL,NULL,NULL,'If Err Then
    ${1:''}
End If',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'xca','xcatchall','x','error handling','catch any exception','2014-03-29 05:14:28.801890','2014-03-29 05:14:28.801890',NULL);
INSERT INTO "snippets" VALUES(477,NULL,NULL,NULL,NULL,NULL,'class ${1:MyException}(Exception):
    def __init__(self):
        super($1, self).__init__(''bam!'')',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'class ${1:MyException} < Exception
    def initialize
      super("bam!")
    end
end',NULL,'xdef',NULL,'x','error handling','define an exception','2014-03-29 05:14:28.806954','2014-03-29 05:14:28.806954',NULL);
INSERT INTO "snippets" VALUES(478,NULL,NULL,NULL,'NA',NULL,'finally:
    ${1:pass #always executes}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ensure
    ${1:#always executes}',NULL,'xfi','xfinally','x','error handling','finally clause','2014-03-29 05:14:28.812166','2014-03-29 05:14:28.812166',NULL);
INSERT INTO "snippets" VALUES(479,'cmd = "${1:command}"
$cmd 2>/dev/null
if (( $? == 0 )); then
    echo ''command was successful''
else
    echo ''error''
fi',NULL,'try {
    throw "${1}"
} catch {
    ${2:#}
}','On Error Resume Next
${1:''statements}
If Err Then
    ''Err.Description
    ''Err.Clear
End If
On Error GoTo 0',NULL,'try:
    ${1:pass}
except ${2:Exception} as ${3:e}:
    ${4:pass #handles exception}
else:
    ${5:pass}
finally:
    ${6:pass #always executes}','try {
    ${2://}
} catch (${1:Exception} e) {
    // TODO: handle exception
} finally {
}','try {
    ${1://}
} catch (e) {
    // TODO: handle exception
} finally {
}',NULL,NULL,NULL,NULL,NULL,'begin
    ${1:#}
rescue ${2:RuntimeError} => ${3:e}
    ${4:#handles exception}
ensure
    ${5:#always executes}
end',NULL,'xh','xhandle','x','error handling','handle potential exception (e.g. try/catch)','2014-03-29 05:14:28.817643','2014-03-29 05:14:28.817643',NULL);
INSERT INTO "snippets" VALUES(480,NULL,NULL,'throw "${1}"','Raise ${1:1}',NULL,'raise ${1:Exception}(${2:''msg''})','throw new ${1:Exception}(${2});','throw "${1:error}";','throw new ${1:Exception}(${2});',NULL,NULL,NULL,NULL,'raise "${1:msg}"',NULL,'xr','xraise','x','error handling','raise an exception','2014-03-29 05:14:28.822613','2014-03-29 05:14:28.822613',NULL);
INSERT INTO "snippets" VALUES(481,'>> ${${1:path}}',NULL,NULL,'${1:textFile}.Write(${2:str})',NULL,NULL,'fileWriter.append(${1:"
" + "newline"});',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'fila',NULL,'fil/fol','file','append to file','2014-03-29 05:14:28.829388','2014-03-29 05:14:28.829388',NULL);
INSERT INTO "snippets" VALUES(482,'','','','oFso.GetFile(${1:sSrc}).Copy ${2:sDestination}, True
','','','','','','','','','','','','filcopy','','fil/fol','file','copy file','2014-03-29 05:14:28.833683','2014-04-04 19:37:11.084503','');
INSERT INTO "snippets" VALUES(483,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'filedir',NULL,'fil/fol','file','get path where file exists','2014-03-29 05:14:28.838054','2014-03-29 05:14:28.838054',NULL);
INSERT INTO "snippets" VALUES(484,'[ -x ${${1:path}} ]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'new File(${1:path}).canExecute()',NULL,NULL,NULL,NULL,NULL,NULL,'filexecutable',NULL,'fil/fol','file','test if file is executable','2014-03-29 05:14:28.847522','2014-03-29 05:14:28.847522',NULL);
INSERT INTO "snippets" VALUES(485,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'filiter',NULL,'fil/fol','file','iterate through files','2014-03-29 05:14:28.852756','2014-03-29 05:14:28.852756',NULL);
INSERT INTO "snippets" VALUES(486,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'filname',NULL,'fil/fol','file','get name of file','2014-03-29 05:14:28.858199','2014-03-29 05:14:28.858199',NULL);
INSERT INTO "snippets" VALUES(487,'','','','','','','${2:MyClass}.class.getResource("${1:myFile.txt}").getFile();','','','','','','','','','filpath','','fil/fol','file','get file path','2014-03-29 05:14:28.863392','2014-05-13 06:27:57.881307','');
INSERT INTO "snippets" VALUES(488,'while read -r line; do
    ${2:#}
done < "${${1:path}}"',NULL,NULL,NULL,NULL,NULL,'// import java.io.BufferedReader;
// import java.io.File;
// import java.io.FileInputStream;
// import java.io.IOException;
// import java.io.InputStreamReader;
try {
    FileInputStream fis = new FileInputStream(${1:new File()});
    BufferedReader reader = new BufferedReader(new InputStreamReader(fis));
    String line = reader.readLine();
    while (line != null) {
        ${2://}
        line = reader.readLine();
    }
} catch (IOException e) {
    // TODO: handle exception
}','var fs = require(''fs'');
fs.readFileSync(${1:path}, "utf8");',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'filr',NULL,'fil/fol','file','read file contents','2014-03-29 05:14:28.868531','2014-03-29 05:14:28.868531',NULL);
INSERT INTO "snippets" VALUES(489,'[ -r ${${1:path}} ]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'new File(${1:path}).canRead()',NULL,NULL,NULL,NULL,NULL,NULL,'filreadable',NULL,'fil/fol','file','test if file is readable','2014-03-29 05:14:28.874614','2014-03-29 05:14:28.874614',NULL);
INSERT INTO "snippets" VALUES(490,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'filrem',NULL,'fil/fol','file','remove file','2014-03-29 05:14:28.881845','2014-03-29 05:14:28.881845',NULL);
INSERT INTO "snippets" VALUES(491,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'filrename',NULL,'fil/fol','file','rename file','2014-03-29 05:14:28.886358','2014-03-29 05:14:28.886358',NULL);
INSERT INTO "snippets" VALUES(492,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'new File(${1:path}).size()',NULL,NULL,NULL,NULL,NULL,NULL,'filsize',NULL,'fil/fol','file','file size','2014-03-29 05:14:28.891591','2014-03-29 05:14:28.891591',NULL);
INSERT INTO "snippets" VALUES(493,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'filtmp',NULL,'fil/fol','file','create temporary file','2014-03-29 05:14:28.896936','2014-03-29 05:14:28.896936',NULL);
INSERT INTO "snippets" VALUES(494,'> ${${1:path}}',NULL,NULL,'Dim o_fso: Set o_fso = CreateObject("Scripting.FileSystemObject")
Dim ${1:textFile}:Set $1 = o_fso.OpenTextFile(${2:path}, 2, True)
$1.Write(${3:str})
$1.Close',NULL,NULL,'// import java.io.File;
// import java.io.FileWriter;
// import java.io.IOException;
try {
    FileWriter fileWriter = new FileWriter(${1:new File()});
    fileWriter.write(${2:"contents"});
    fileWriter.close();
} catch (IOException e) {
    // TODO: handle exception
}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'filw',NULL,'fil/fol','file','write file contents','2014-03-29 05:14:28.901750','2014-03-29 05:14:28.901750',NULL);
INSERT INTO "snippets" VALUES(495,'[ -w ${${1:path}} ]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'new File(${1:path}).canWrite()',NULL,NULL,NULL,NULL,NULL,NULL,'filwritable',NULL,'fil/fol','file','test if file is writable','2014-03-29 05:14:28.907556','2014-03-29 05:14:28.907556',NULL);
INSERT INTO "snippets" VALUES(496,'[ -e ${${1:path}} ]',NULL,NULL,'Dim o_fso: Set o_fso = CreateObject("Scripting.FileSystemObject")
Dim b_fileExists: b_fileExists = o_fso.FileExists(${1:path})
If b_fileExists Then
    ${2:''}
End If
while read -r line; do
    ${1:''}
done < "${path}"',NULL,NULL,'new File(${1:path}).exists()',NULL,'new File(${1:path}).exists()',NULL,NULL,NULL,NULL,NULL,NULL,'filx',NULL,'fil/fol','file','file exists?','2014-03-29 05:14:28.912978','2014-03-29 05:14:28.912978',NULL);
INSERT INTO "snippets" VALUES(497,'${HOME}','%USERPROFILE%',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'folhome','home','fil/fol','file','get user''s home directory','2014-03-29 05:14:28.922143','2014-03-29 05:14:28.922143',NULL);
INSERT INTO "snippets" VALUES(498,'mkdir ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'folmake','mkdir','fil/fol','file','make directory','2014-03-29 05:14:28.927527','2014-03-29 05:14:28.927527',NULL);
INSERT INTO "snippets" VALUES(499,NULL,NULL,NULL,'Dim o_fso: Set o_fso = CreateObject("Scripting.FileSystemObject")
Dim b_folderExists: b_folderExists = o_fso.FolderExists(${1:path})
If b_folderExists Then
    ${2:''}
End If',NULL,NULL,'new File(${1:path}).exists()',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'folx',NULL,'fil/fol','file','folder exists?','2014-03-29 05:14:28.933093','2014-03-29 05:14:28.933093',NULL);
INSERT INTO "snippets" VALUES(500,'function ${1:fun} {
    ${2:#local foo="bar"}
}',NULL,'function ${1:fun} {
    param (${2:$a, $b})
    ${3:#}
}','Function ${1:fun}(${2}) ''{{{
    ${3:''}
End Function ''}}}','function ${1:Fun}(${2})
    ${3:"}
endfunction','def ${1:fun}(`indent(''.'') ? ''self'' : ''''`${2}):
    """${3: }"""
    ${4:pass}','private void ${1:fun}(${2}) {
    ${3://}
}','function ${1:fun}(${2}) {
    ${3://}
}','def ${1:fun}(${2}) {
    ${3://}
}',NULL,NULL,NULL,NULL,NULL,NULL,'fn',NULL,'fn','function','new function','2014-03-29 05:14:28.937565','2014-03-29 05:14:28.937565',NULL);
INSERT INTO "snippets" VALUES(501,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'fnanon',NULL,'fn','function','anonymous function','2014-03-29 05:14:28.943284','2014-03-29 05:14:28.943284',NULL);
INSERT INTO "snippets" VALUES(502,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'fna','fnarg','fn','function','function argument','2014-03-29 05:14:28.947560','2014-03-29 05:14:28.947560',NULL);
INSERT INTO "snippets" VALUES(503,NULL,NULL,'$${1:param}=${2:default}',NULL,NULL,'${1:param}=${2:default}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'fnpdefault',NULL,'fn','function','function parameter with default value','2014-03-29 05:14:28.952528','2014-03-29 05:14:28.952528',NULL);
INSERT INTO "snippets" VALUES(504,NULL,NULL,NULL,NULL,NULL,'${1:param}=${2:default}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'${1:param}=${2:default}',NULL,'fnpnamed',NULL,'fn','function','named parameter','2014-03-29 05:14:28.958301','2014-03-29 05:14:28.958301',NULL);
INSERT INTO "snippets" VALUES(505,NULL,NULL,NULL,NULL,NULL,'${1:arg}=${2:val}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'${1:arg}: ${2:val}',NULL,'fnanamed',NULL,'fn','function','named argument','2014-03-29 05:14:28.963194','2014-03-29 05:14:28.963194',NULL);
INSERT INTO "snippets" VALUES(506,NULL,NULL,NULL,'ByRef ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'fnpref',NULL,'fn','function','parameter by reference','2014-03-29 05:14:28.967624','2014-03-29 05:14:28.967624',NULL);
INSERT INTO "snippets" VALUES(507,NULL,NULL,NULL,'ByVal ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'fnpval',NULL,'fn','function','parameter by value','2014-03-29 05:14:28.973341','2014-03-29 05:14:28.973341',NULL);
INSERT INTO "snippets" VALUES(508,NULL,NULL,NULL,NULL,NULL,'${1:foo}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'${1:foo}',NULL,'fnaref',NULL,'fn','function','argument by reference','2014-03-29 05:14:28.978037','2014-03-29 05:14:28.978037',NULL);
INSERT INTO "snippets" VALUES(509,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'fnaval',NULL,'fn','function','argument by value','2014-03-29 05:14:28.982714','2014-03-29 05:14:28.982714',NULL);
INSERT INTO "snippets" VALUES(510,NULL,NULL,NULL,NULL,NULL,'*${1:arg}',NULL,'function ${1:fun}(arguments) {
    ${2:arguments[0];}
}',NULL,NULL,NULL,NULL,NULL,'*${1:arg}',NULL,'fnpvar',NULL,'fn','function','function variable # of args','2014-03-29 05:14:28.992762','2014-03-29 05:14:28.992762',NULL);
INSERT INTO "snippets" VALUES(511,NULL,NULL,'${1:fun}${2: args}',NULL,'call ${1:Fun}(${2:args})','${1:fun}(${2:args})',NULL,'${1:fun}(${2:args});','${1:fun}(${2:args});',NULL,NULL,NULL,NULL,'${1:fun}(${2:args})',NULL,'fncall',NULL,'fn','function','calls, invokes a function','2014-03-29 05:14:28.997786','2014-03-29 05:14:28.997786',NULL);
INSERT INTO "snippets" VALUES(512,NULL,NULL,NULL,NULL,NULL,'def counter():
    i = 0
    def closure():
        nonlocal i
        i += 1
        return i
    return counter
foo = make_counter()',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'def make_counter
  i = 0
  return lambda { i +=1; i }
end
foo = make_counter
foo.call',NULL,'fnclosure','closure','fn','function','closure','2014-03-29 05:14:29.002702','2014-03-29 05:14:29.002702',NULL);
INSERT INTO "snippets" VALUES(513,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'fngen','genfn','fn','function','generic function definition','2014-03-29 05:14:29.009438','2014-03-29 05:14:29.009438',NULL);
INSERT INTO "snippets" VALUES(514,NULL,NULL,NULL,NULL,NULL,NULL,'${1:fun}(${2}) {
    ${3://}
}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'fnn',NULL,'fn','function','function def without any modifiers','2014-03-29 05:14:29.013691','2014-03-29 05:14:29.013691',NULL);
INSERT INTO "snippets" VALUES(515,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'generic','gen','gen','generics','define generic type','2014-03-29 05:14:29.017939','2014-03-29 05:14:29.017939',NULL);
INSERT INTO "snippets" VALUES(516,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'infil',NULL,'in','input','get file input from user','2014-03-29 05:14:29.022835','2014-03-29 05:14:29.022835',NULL);
INSERT INTO "snippets" VALUES(517,'old_tty_setting=$(stty -g)
stty -icanon -echo
key=$(dd bs=1 count=1 2> /dev/null)
stty "${old_tty_setting}"',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'inkey',NULL,'in','input','get single keypress','2014-03-29 05:14:29.027331','2014-03-29 05:14:29.027331',NULL);
INSERT INTO "snippets" VALUES(518,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'inline',NULL,'in','input','get line input from user','2014-03-29 05:14:29.031671','2014-03-29 05:14:29.031671',NULL);
INSERT INTO "snippets" VALUES(519,NULL,NULL,NULL,NULL,NULL,NULL,'boolean ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'bo',NULL,'-','keyword','boolean type','2014-03-29 05:14:29.037776','2014-03-29 05:14:29.037776',NULL);
INSERT INTO "snippets" VALUES(520,'false',NULL,'$false',NULL,NULL,'False','false','false','false',NULL,NULL,NULL,NULL,'false',NULL,'fa','F','-','keyword','false value','2014-03-29 05:14:29.042576','2014-03-29 05:14:29.042576',NULL);
INSERT INTO "snippets" VALUES(521,'''''',NULL,'0 0.0 "" ''''',NULL,NULL,NULL,NULL,'false null undefined "" 0 NaN','false null 0 0.0 "" [] [:]',NULL,NULL,NULL,NULL,NULL,NULL,'falsehoods',NULL,'-','keyword','all possible false values','2014-03-29 05:14:29.047068','2014-03-29 05:14:29.047068',NULL);
INSERT INTO "snippets" VALUES(522,NULL,NULL,'$null','vbNull',NULL,'None','null','null','null',NULL,NULL,NULL,NULL,'nil',NULL,'nl',NULL,'-','keyword','null','2014-03-29 05:14:29.053580','2014-03-29 05:14:29.053580',NULL);
INSERT INTO "snippets" VALUES(523,'return ${1:0-255}',NULL,NULL,'${1:functionName} = ',NULL,'return ','return ','return ','return ',NULL,NULL,NULL,NULL,NULL,NULL,'re','ret','-','keyword','return','2014-03-29 05:14:29.062831','2014-03-29 05:14:29.062831',NULL);
INSERT INTO "snippets" VALUES(524,'NA',NULL,NULL,NULL,NULL,NULL,NULL,'return null','null',NULL,NULL,NULL,NULL,NULL,NULL,'rn',NULL,'-','keyword','return null','2014-03-29 05:14:29.067580','2014-03-29 05:14:29.067580',NULL);
INSERT INTO "snippets" VALUES(525,'NA',NULL,NULL,NULL,NULL,NULL,'String ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'s',NULL,'-','keyword','string','2014-03-29 05:14:29.073978','2014-03-29 05:14:29.073978',NULL);
INSERT INTO "snippets" VALUES(526,'true',NULL,'$true',NULL,NULL,'True','true','true','true',NULL,NULL,NULL,NULL,'true',NULL,'tr','T','-','keyword','true value','2014-03-29 05:14:29.078841','2014-03-29 05:14:29.078841',NULL);
INSERT INTO "snippets" VALUES(527,'break',NULL,'break','$${for}Exit For
$${do}Exit Do',NULL,'break','break;','break;','break',NULL,NULL,NULL,NULL,'break',NULL,'br',NULL,'-','loop','jump out, break','2014-03-29 05:14:29.083487','2014-03-29 05:14:29.083487',NULL);
INSERT INTO "snippets" VALUES(528,'continue',NULL,'continue',NULL,NULL,'continue',NULL,'continue;','continue',NULL,NULL,NULL,NULL,'next',NULL,'cont',NULL,'-','loop','skip to next, continue','2014-03-29 05:14:29.089707','2014-03-29 05:14:29.089707',NULL);
INSERT INTO "snippets" VALUES(529,NULL,NULL,NULL,NULL,NULL,NULL,'do {
    ${2://}
} while (${1:condition});',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dowh',NULL,'-','loop','do while','2014-03-29 05:14:29.094251','2014-03-29 05:14:29.094251',NULL);
INSERT INTO "snippets" VALUES(530,'for (( ${2:i} = 0; $2 < ${1:count}; $2++ )); do
    ${3:#statements}
done',NULL,NULL,'For ${1:i} = ${2:0} To ${3:i_count}
    ${4:''}
Next','for s:i in range(${1:0, 4})
    ${2:"}
endfor',NULL,'for (int ${1:i} = ${2:0}; $1 < ${3:5}; $1++) {
    ${4://}
}','for (int ${1:i} = ${2:0}; $1 < ${3:5}; $1++) {
    ${4://}
}','for (int ${1:i} = ${2:0}; $1 < ${3:5}; $1++) {
    ${4://}
}',NULL,NULL,NULL,NULL,NULL,NULL,'for',NULL,'-','loop','for','2014-03-29 05:14:29.098872','2014-03-29 05:14:29.098872',NULL);
INSERT INTO "snippets" VALUES(531,'for ${1:i} in ${${2:ar}[@]}; do
    ${3:#}
done',NULL,NULL,'For Each ${1:var} In ${2:coll}
    ${3:''}
Next','for ${1:needle} in ${2:haystack}
    ${3:"}
endfor','for ${1:beer} in ${2:wall}:
    ${3:pass}','for (${1:Type} ${2:elem} : ${3:coll}) {
    ${4://}
}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'fore',NULL,'-','loop','for each','2014-03-29 05:14:29.105210','2014-03-29 05:14:29.105210',NULL);
INSERT INTO "snippets" VALUES(532,'shopt -s nullglob
files=(${path}/*)
for fname in ${files[@]}; do
    printf ''%s
'' "${fname}"
done',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'foref',NULL,'-','loop','for each file','2014-03-29 05:14:29.110016','2014-03-29 05:14:29.110016',NULL);
INSERT INTO "snippets" VALUES(533,'until [[ ${1:condition} ]]; do
    ${2:#statements}
done',NULL,NULL,'Do Until ${1:condition}
    ${2:''}
Loop ',NULL,NULL,'do {
    ${2://}
} until (${1:condition});',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'until',NULL,'-','loop','until','2014-03-29 05:14:29.114495','2014-03-29 05:14:29.114495',NULL);
INSERT INTO "snippets" VALUES(534,'while [[ ${1:condition} ]]; do
    ${2:#}
done',NULL,'while (${1:condition}) {
    ${2:#}
}','Do While ${1:condition}
    ${2:''}
Loop','while ${1:condition}
    ${2:"}
endw','while ${1:condition}:
    ${2:pass}','while (${1:condition}) {
    ${2://}
}','while (${1:condition}) {
    ${2://}
}','while (${1:condition}) {
    ${2://}
}',NULL,NULL,NULL,NULL,'while ${1:condition} do
    ${2:#}
end',NULL,'wh',NULL,'-','loop','while','2014-03-29 05:14:29.120093','2014-03-29 05:14:29.120093',NULL);
INSERT INTO "snippets" VALUES(535,'$#',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'argc',NULL,'-','misc','count of program invokation arguments','2014-03-29 05:14:29.125527','2014-03-29 05:14:29.125527',NULL);
INSERT INTO "snippets" VALUES(536,'$@',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'args',NULL,NULL,NULL,NULL,NULL,NULL,'argv',NULL,'-','misc','program invokation arguments','2014-03-29 05:14:29.129791','2014-03-29 05:14:29.129791',NULL);
INSERT INTO "snippets" VALUES(537,'while getopts "w:a:" n; do
    case ${n} in
        w)
            echo ${OPTARG};;
        a)
            echo ${OPTARG};;
    esac
done',NULL,NULL,NULL,'NO','import argparse
parser = argparse.ArgumentParser(description=''DESCRIPTION'')
parser.add_argument(''--int'', ''-i'', metavar=''I'', type=int, nargs=1,
                    dest=''integer'', default=[0],
                    help=''HELP'')
parser.add_argument(''--str'', ''-s'', metavar=''S'', type=str, nargs=1,
                    dest=''string'', default=[None],
                    help=''HELP'')
parser.add_argument(''--bool'', dest=''boolean'', action=''store_true'',
                    help=''HELP'')
parser.set_defaults(boolean=True)
args = parser.parse_args()
my_int = args.integer[0]
my_string = args.string[0]
my_boolean = args.boolean',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'cli',NULL,'-','misc','command line interface','2014-03-29 05:14:29.140163','2014-03-29 05:14:29.140163',NULL);
INSERT INTO "snippets" VALUES(538,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'var ${1:clone} = Object.create(${2:cloneable});',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'clone',NULL,'-','misc','clone object','2014-03-29 05:14:29.145189','2014-03-29 05:14:29.145189',NULL);
INSERT INTO "snippets" VALUES(539,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'enum',NULL,'-','misc','define enum','2014-03-29 05:14:29.150400','2014-03-29 05:14:29.150400',NULL);
INSERT INTO "snippets" VALUES(540,NULL,NULL,'$env:${1:home}',NULL,'$${1:JAVA_HOME}',NULL,NULL,NULL,'System.getenv(${1:JAVA_HOME})',NULL,NULL,NULL,NULL,NULL,NULL,'env',NULL,'-','misc','get environment variable','2014-03-29 05:14:29.155351','2014-03-29 05:14:29.155351',NULL);
INSERT INTO "snippets" VALUES(541,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'enviter',NULL,'-','misc','iterate through environment variables','2014-03-29 05:14:29.160436','2014-03-29 05:14:29.160436',NULL);
INSERT INTO "snippets" VALUES(542,'command ${1:foo}','','dir','dim sh
set sh = CreateObject("WScript.Shell")
sh.run ${1:sPath}, 0, true','','','','','','','','','','','','ext','','-','misc','call external program','2014-03-29 05:14:29.165572','2014-04-04 20:29:29.664748','');
INSERT INTO "snippets" VALUES(543,'$(${1})',NULL,'dir',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'extil','extinline','-','misc','call external program inline','2014-03-29 05:14:29.170191','2014-03-29 05:14:29.170191',NULL);
INSERT INTO "snippets" VALUES(544,NULL,NULL,'$${1:lambda} = { ${2} }',NULL,NULL,'lambda ${1:x, y}: ${2:body}',NULL,'${1:lambda} = function(${2:x}) { ${3:return x}; }','${1:lambda} = { ${2:x} -> ${3:return x} }',NULL,NULL,NULL,NULL,'lambda { |${1:x, y}| ${2:body} }',NULL,'fnld','lambda,ld','-','misc','lambda function','2014-03-29 05:14:29.174747','2014-03-29 05:14:29.174747',NULL);
INSERT INTO "snippets" VALUES(545,NULL,NULL,'$${1:lambda}.invoke()',NULL,NULL,'${1:fun}(${2:args})',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'${1:fun}.call(${2:args})',NULL,'fnldcall',NULL,'-','misc','lambda function invocation','2014-03-29 05:14:29.179779','2014-03-29 05:14:29.179779',NULL);
INSERT INTO "snippets" VALUES(546,NULL,NULL,NULL,NULL,NULL,'import ','import','<script src="${1:path}"/>',NULL,NULL,NULL,NULL,NULL,'include ',NULL,'in',NULL,'-','misc','import, include','2014-03-29 05:14:29.185509','2014-03-29 05:14:29.185509',NULL);
INSERT INTO "snippets" VALUES(547,NULL,NULL,NULL,NULL,NULL,NULL,'if (${1:var} == null) {
    $1 = new ${2:Type}();
}
return $1;',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'lazy',NULL,'-','misc','lazy instantiation','2014-03-29 05:14:29.189957','2014-03-29 05:14:29.189957',NULL);
INSERT INTO "snippets" VALUES(548,NULL,NULL,NULL,'Dim o_network: Set o_network = CreateObject("Wscript.Network")
Dim s_username: s_username = o_network.UserName',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'uname',NULL,'-','misc','username','2014-03-29 05:14:29.194774','2014-03-29 05:14:29.194774',NULL);
INSERT INTO "snippets" VALUES(549,NULL,NULL,'[Math]::abs(${1})',NULL,NULL,'abs(${1})',NULL,'Math.abs(${1})','Math.abs(${1})',NULL,NULL,NULL,NULL,'${1:x}.abs',NULL,'nabs',NULL,'n','numeric','absolute value','2014-03-29 05:14:29.199989','2014-03-29 05:14:29.199989',NULL);
INSERT INTO "snippets" VALUES(550,NULL,NULL,'[Math}::ceiling(${1})',NULL,NULL,NULL,NULL,'Math.ceil(${1})','(int) Math.ceil(${1})',NULL,NULL,NULL,NULL,NULL,NULL,'nceil',NULL,'n','numeric','ceiling (next nearest integer)','2014-03-29 05:14:29.209844','2014-03-29 05:14:29.209844',NULL);
INSERT INTO "snippets" VALUES(551,'$((--${1:var}))',NULL,'$${1:foo}--','${1:var} = $1 - 1',NULL,NULL,'${1:i}--;',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ndec','dec','n','numeric','decrement by 1','2014-03-29 05:14:29.214761','2014-03-29 05:14:29.214761',NULL);
INSERT INTO "snippets" VALUES(552,NULL,NULL,'$${1:foo} / $${2:bar}',NULL,'${1:x} / ${2:y}','${1:x} / ${2:y}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'${1:x}.div(${2:y})',NULL,'ndivf',NULL,'n','numeric','float division','2014-03-29 05:14:29.220109','2014-03-29 05:14:29.220109',NULL);
INSERT INTO "snippets" VALUES(553,NULL,NULL,'$${1:remainder} = $null
$${2:quotient} = [Math]::DivRem($${3:numerator}, $${4:denominator}, [ref] $1)',NULL,NULL,'${1:x} // ${2:y}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'${1:x} / ${2:y}',NULL,'ndivi',NULL,'n','numeric','integer division','2014-03-29 05:14:29.225100','2014-03-29 05:14:29.225100',NULL);
INSERT INTO "snippets" VALUES(554,NULL,NULL,'[Math}::floor(${1})',NULL,NULL,NULL,NULL,'Math.floor(${1})','(int) Math.floor(${1})',NULL,NULL,NULL,NULL,NULL,NULL,'nfloor',NULL,'n','numeric','cloor (previous nearest integer)','2014-03-29 05:14:29.229651','2014-03-29 05:14:29.229651',NULL);
INSERT INTO "snippets" VALUES(555,'$((++${1:var}))',NULL,'$${1:foo}++','${1:var} = $1 + 1',NULL,NULL,'${1:i}++;',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ninc','inc','n','numeric','increment by 1','2014-03-29 05:14:29.235027','2014-03-29 05:14:29.235027',NULL);
INSERT INTO "snippets" VALUES(556,NULL,NULL,'$${1:num} -= ${2:1}',NULL,NULL,NULL,'${1:i} -= ${2:2};',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'nme',NULL,'n','numeric','numeric decrement by value','2014-03-29 05:14:29.239300','2014-03-29 05:14:29.239300',NULL);
INSERT INTO "snippets" VALUES(557,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'npad',NULL,'n','numeric','pad a number','2014-03-29 05:14:29.244700','2014-03-29 05:14:29.244700',NULL);
INSERT INTO "snippets" VALUES(558,NULL,NULL,'$${1:num} += ${2:1}',NULL,NULL,NULL,'${1:i} += ${2:2};',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'npe',NULL,'n','numeric','numeric increment by value','2014-03-29 05:14:29.249981','2014-03-29 05:14:29.249981',NULL);
INSERT INTO "snippets" VALUES(559,NULL,NULL,'[Math]::pow(${1:base}, ${2:exp})',NULL,NULL,'${1:base} ** ${2:exp}',NULL,'Math.pow(${1:base}, ${2:exponent})','${1:base} ** ${2:exponent}',NULL,NULL,NULL,NULL,'${1:base} ** ${2:exp}',NULL,'npow',NULL,'n','numeric','power function','2014-03-29 05:14:29.254478','2014-03-29 05:14:29.254478',NULL);
INSERT INTO "snippets" VALUES(560,NULL,NULL,'random ${1:1.0}',NULL,NULL,'# import random
random.random()',NULL,'Math.random()','rnd = new Random()
rnd.nextDouble()',NULL,NULL,NULL,NULL,'rand',NULL,'nrandf',NULL,'n','numeric','random float','2014-03-29 05:14:29.259071','2014-03-29 05:14:29.259071',NULL);
INSERT INTO "snippets" VALUES(561,'${RANDOM}',NULL,'random ${1:100}',NULL,NULL,'# import random
random.randint(${1:lower}, ${1:upper})',NULL,'Math.floor(Math.random() * 100)','${1:rand} = new Random()
$1.nextInt(100)',NULL,NULL,NULL,NULL,'rand(${1:upper})',NULL,'nrandi',NULL,'n','numeric','random integer','2014-03-29 05:14:29.265249','2014-03-29 05:14:29.265249',NULL);
INSERT INTO "snippets" VALUES(562,NULL,NULL,'[Math}::round(${1})',NULL,NULL,NULL,NULL,'Math.round(${1})','Math.round(${1})',NULL,NULL,NULL,NULL,NULL,NULL,'nround',NULL,'n','numeric','round a floating point number','2014-03-29 05:14:29.269566','2014-03-29 05:14:29.269566',NULL);
INSERT INTO "snippets" VALUES(563,NULL,NULL,'[Math}::truncate(${1})',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'nrounddown',NULL,'n','numeric','round a floating point number down','2014-03-29 05:14:29.274304','2014-03-29 05:14:29.274304',NULL);
INSERT INTO "snippets" VALUES(564,NULL,NULL,'[Math}::truncate(${1} + 1)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'nroundup',NULL,'n','numeric','round a floating point number up','2014-03-29 05:14:29.279467','2014-03-29 05:14:29.279467',NULL);
INSERT INTO "snippets" VALUES(565,NULL,NULL,'$${1:foo} = random -setseed ${2:17}',NULL,NULL,'# import random
random.seed(${1:17})
seed = random.getstate()
random.setstate(seed)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'srand(${1:17})
seed = srand
srand(seed)',NULL,'nseed',NULL,'n','numeric','seed random numbers','2014-03-29 05:14:29.284519','2014-03-29 05:14:29.284519',NULL);
INSERT INTO "snippets" VALUES(566,NULL,NULL,'[Math]::sqrt(${1})',NULL,NULL,'# import math
math.sqrt(${1})',NULL,'Math.sqrt(${1})','Math.sqrt(${1})',NULL,NULL,NULL,NULL,'# include Math
sqrt(${1})',NULL,'nsqrt',NULL,'n','numeric','square root','2014-03-29 05:14:29.292107','2014-03-29 05:14:29.292107',NULL);
INSERT INTO "snippets" VALUES(567,NULL,NULL,NULL,NULL,'str2nr(${1})','int(${1})',NULL,'parseInt(${1}, 10)','Integer.parseInt(${1})',NULL,NULL,NULL,NULL,'${1:foo}.to_i',NULL,'nvali',NULL,'n','numeric','integer value of string','2014-03-29 05:14:29.298163','2014-03-29 05:14:29.298163',NULL);
INSERT INTO "snippets" VALUES(568,'&& ',NULL,'-and ','And ','&& ','and ','&& ','&& ','&& ',NULL,NULL,NULL,NULL,'&& ',NULL,'and',NULL,'-','operator','and','2014-03-29 05:14:29.303310','2014-03-29 05:14:29.303310',NULL);
INSERT INTO "snippets" VALUES(569,'@@$(()) (()) ()
== 
@@[] [[]]
-eq',NULL,'-eq ','= ','== ','== ','== ','=== ','== ',NULL,NULL,NULL,NULL,'== ',NULL,'e',NULL,'-','operator','equals','2014-03-29 05:14:29.309807','2014-03-29 05:14:29.309807',NULL);
INSERT INTO "snippets" VALUES(570,NULL,NULL,NULL,NULL,NULL,'== ','${1:obj1}.equals(${2:obj2})',NULL,NULL,NULL,NULL,NULL,NULL,'== ',NULL,'eo',NULL,'-','operator','equals (for object)','2014-03-29 05:14:29.314934','2014-03-29 05:14:29.314934',NULL);
INSERT INTO "snippets" VALUES(571,'@@$(()) (()) ()
> 
@@[] [[]]
-gt',NULL,'-gt ','> ','> ','> ','> ','> ','> ',NULL,NULL,NULL,NULL,'> ',NULL,'gt',NULL,'-','operator','greater than','2014-03-29 05:14:29.320601','2014-03-29 05:14:29.320601',NULL);
INSERT INTO "snippets" VALUES(572,'@@$(()) (()) ()
>= 
@@[] [[]]
-ge',NULL,'-ge ','>= ','>= ','>= ','>= ','>= ','>= ',NULL,NULL,NULL,NULL,'>= ',NULL,'gte',NULL,'-','operator','greather than or equal to','2014-03-29 05:14:29.326997','2014-03-29 05:14:29.326997',NULL);
INSERT INTO "snippets" VALUES(573,'@@$(()) (()) ()
< 
@@[] [[]]
-lt',NULL,'-lt ','< ','< ','< ','< ','< ','< ',NULL,NULL,NULL,NULL,'< ',NULL,'lt',NULL,'-','operator','less than','2014-03-29 05:14:29.332635','2014-03-29 05:14:29.332635',NULL);
INSERT INTO "snippets" VALUES(574,'@@$(()) (()) ()
<= 
@@[] [[]]
-le',NULL,'-le ','<= ','<= ','<= ','<= ','<= ','<= ',NULL,NULL,NULL,NULL,'<= ',NULL,'lte',NULL,'-','operator','less than or equal to','2014-03-29 05:14:29.337588','2014-03-29 05:14:29.337588',NULL);
INSERT INTO "snippets" VALUES(575,'-= ',NULL,'-= ',NULL,NULL,'-= ','-= ',NULL,NULL,NULL,NULL,NULL,NULL,'-= ',NULL,'me',NULL,'-','operator','minus equals','2014-03-29 05:14:29.343181','2014-03-29 05:14:29.343181',NULL);
INSERT INTO "snippets" VALUES(576,'EMPTY',NULL,'+ ',NULL,'. ','+ ',NULL,'+ ','+ ',NULL,NULL,NULL,NULL,'+ ',NULL,'n','concat,cat','-','operator','concatenate, append','2014-03-29 05:14:29.348729','2014-03-29 05:14:29.348729',NULL);
INSERT INTO "snippets" VALUES(577,'!= ',NULL,'-ne ','<> ','!= ','!= ','!= ','!== ','!= ',NULL,NULL,NULL,NULL,'!= ',NULL,'ne',NULL,'-','operator','not equals','2014-03-29 05:14:29.354186','2014-03-29 05:14:29.354186',NULL);
INSERT INTO "snippets" VALUES(578,NULL,NULL,NULL,NULL,NULL,'!= ','!${1:obj1}.equals(${2:obj2})',NULL,NULL,NULL,NULL,NULL,NULL,'!= ',NULL,'neo',NULL,'-','operator','not equals (for object)','2014-03-29 05:14:29.359763','2014-03-29 05:14:29.359763',NULL);
INSERT INTO "snippets" VALUES(579,'! ',NULL,'-not ',NULL,'! ','not ',NULL,'!','!',NULL,NULL,NULL,NULL,'! ',NULL,'not',NULL,'-','operator','logical not','2014-03-29 05:14:29.365433','2014-03-29 05:14:29.365433',NULL);
INSERT INTO "snippets" VALUES(580,'|| ',NULL,'-or ','Or ','|| ','or ','|| ','|| ','|| ',NULL,NULL,NULL,NULL,'|| ',NULL,'or',NULL,'-','operator','or','2014-03-29 05:14:29.370051','2014-03-29 05:14:29.370051',NULL);
INSERT INTO "snippets" VALUES(581,'+= ',NULL,'+= ',NULL,NULL,'+= ','+= ',NULL,NULL,NULL,NULL,NULL,NULL,'+= ',NULL,'pe',NULL,'-','operator','plus equals','2014-03-29 05:14:29.375809','2014-03-29 05:14:29.375809',NULL);
INSERT INTO "snippets" VALUES(582,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'^ ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'xor',NULL,'-','operator','exclusive or','2014-03-29 05:14:29.381009','2014-03-29 05:14:29.381009',NULL);
INSERT INTO "snippets" VALUES(583,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'pabuilder',NULL,'pa','pattern','builder pattern','2014-03-29 05:14:29.385379','2014-03-29 05:14:29.385379',NULL);
INSERT INTO "snippets" VALUES(584,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'pasingleton',NULL,'pa','pattern','singleton pattern','2014-03-29 05:14:29.390836','2014-03-29 05:14:29.390836',NULL);
INSERT INTO "snippets" VALUES(585,'printf ''%s
'' ${1}',NULL,'write-host ${1}','WScript.Echo ${1}','echo ${1}','print(${1})','System.out.println(${1:});','sys.puts(${1});','println(${1})',NULL,NULL,NULL,NULL,NULL,NULL,'p',NULL,'p','print','print to console','2014-03-29 05:14:29.395782','2014-03-29 05:14:29.395782',NULL);
INSERT INTO "snippets" VALUES(586,'printf ''%s
'' ${${1:ar}[@]}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'par',NULL,'p','print','print to console array','2014-03-29 05:14:29.400925','2014-03-29 05:14:29.400925',NULL);
INSERT INTO "snippets" VALUES(587,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'pda',NULL,'p','print','print to console dynamic array','2014-03-29 05:14:29.405911','2014-03-29 05:14:29.405911',NULL);
INSERT INTO "snippets" VALUES(588,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'pdeque',NULL,'p','print','print to console deque','2014-03-29 05:14:29.411423','2014-03-29 05:14:29.411423',NULL);
INSERT INTO "snippets" VALUES(589,'@LINK{p}',NULL,'$${1:foo} = ${2:"str", 13, 3.7}
"{0} {1} {2}" -f $1',NULL,'printf("%s", ${2:str})','''${1:%s %d %f}'' % (${2:''str'', 10, 3.14})',NULL,'NA','String.format(${1:formatstr}, ${2:csv})',NULL,NULL,NULL,NULL,'${1:"%s %d %f"} % [${2:"str", 10, 3.14}]',NULL,'pf',NULL,'p','print','print to console with format','2014-03-29 05:14:29.416276','2014-03-29 05:14:29.416276',NULL);
INSERT INTO "snippets" VALUES(590,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'pmap',NULL,'p','print','print to console map','2014-03-29 05:14:29.424388','2014-03-29 05:14:29.424388',NULL);
INSERT INTO "snippets" VALUES(591,'printf ''%s
'' "${1}"',NULL,'write-host "${1}"','WScript.Echo "${1}"','echo ''${1}''','print("${1}")','System.out.println("${1:}");','sys.puts("${1}");','println("${1}")',NULL,NULL,NULL,NULL,NULL,NULL,'pp',NULL,'p','print','print to console string literal','2014-03-29 05:14:29.429454','2014-03-29 05:14:29.429454',NULL);
INSERT INTO "snippets" VALUES(592,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'pqueue',NULL,'p','print','print to console queue','2014-03-29 05:14:29.433701','2014-03-29 05:14:29.433701',NULL);
INSERT INTO "snippets" VALUES(593,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'pset',NULL,'p','print','print to console set','2014-03-29 05:14:29.439060','2014-03-29 05:14:29.439060',NULL);
INSERT INTO "snippets" VALUES(594,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'pstack',NULL,'p','print','print to console stack','2014-03-29 05:14:29.443449','2014-03-29 05:14:29.443449',NULL);
INSERT INTO "snippets" VALUES(595,NULL,NULL,NULL,NULL,NULL,'${1:regex} = ''(d{4})-(d{2})-(d{2})''
groups = re.search($1, ${2:''2010-06-03''})
yr, mo, dy = groups.groups()',NULL,'${1:regex} = /^(d{4})-(d{2})-(d{2})$/;
groups = $1.exec(${2:''2009-06-03''});
yr = groups[1];
mo = groups[2];
dy = groups[3];','${1:str} = "2010-06-03"
groups = $1 =~ /(d{4})-(d{2})-(d{2})/
yr = groups.group(1)
mo = groups.group(2)
dy = groups.group(3)',NULL,NULL,NULL,NULL,'${1:regex} = /(d{4})-(d{2})-(d{2})/
groups = rx.match(${2:"2010-06-03"})
yr, mo, dy = groups[1..3]',NULL,'rxg','rxgroup','rx','regex','get groups with regex','2014-03-29 05:14:29.447685','2014-03-29 05:14:29.447685',NULL);
INSERT INTO "snippets" VALUES(596,NULL,NULL,'${1:str} -match ${2:"^a*$"})',NULL,'match(${1:regex}, ${2:str})','re.search(${1:regex}, ${2:str})',NULL,'${1:str}.match(/${2}/)','${1:str} =~ /${2}/',NULL,NULL,NULL,NULL,'${1:regex}.match(${2:str})',NULL,'rxm','rxmatch','rx','regex','match with regex','2014-03-29 05:14:29.454559','2014-03-29 05:14:29.454559',NULL);
INSERT INTO "snippets" VALUES(597,'${${1:foo}/${2:existing}/${3:replacement}}',NULL,NULL,NULL,'substitute(${1:str}, ${2:regex}, ${3:replacement}${4:, flags})','${2:regex}.sub(${3:replacement}, ${1:str})',NULL,'${1:str}.replace(/${2}/, ${3:replacement})',NULL,NULL,NULL,NULL,NULL,'${1:str}.gsub!(${2:regex}, ${3:replacement})',NULL,'rxs','rxsub','rx','regex','substitute with regex','2014-03-29 05:14:29.459850','2014-03-29 05:14:29.459850',NULL);
INSERT INTO "snippets" VALUES(598,'${${1:foo}//${2:existing}/${3:replacement}}',NULL,'$${1:str} = $1 -replace ${2:regex}, ${3:replacement}',NULL,'substitute(${1:str}, ${2:regex}, ${3:replacement}, "g")',NULL,NULL,'${1:str}.replace(/${2}/g, ${3:replacement})','${1:str}.replaceAll(/${2}/, ${3:replacement})',NULL,NULL,NULL,NULL,NULL,NULL,'rxsg','rxsuba','rx','regex','substitute all with regex','2014-03-29 05:14:29.466274','2014-03-29 05:14:29.466274',NULL);
INSERT INTO "snippets" VALUES(599,'${${1:str}^}',NULL,NULL,NULL,NULL,'# import string
${1:str}.capitalize()
string.capwords($1)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'${1:str}.capitalize',NULL,'scap',NULL,'s','string','capitalize, proper case','2014-03-29 05:14:29.472016','2014-03-29 05:14:29.472016',NULL);
INSERT INTO "snippets" VALUES(600,'${${1:str}%?}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'schop',NULL,'s','string','remove last character from string','2014-03-29 05:14:29.477050','2014-03-29 05:14:29.477050',NULL);
INSERT INTO "snippets" VALUES(601,'${${1:str}} == *${2:contains}*',NULL,NULL,'(InStr(""&CStr(${1:str}), ""&CStr(${2:contains})) <> 0)',NULL,NULL,'${1:strVar}.contains(${2})',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'scon',NULL,'s','string','contains','2014-03-29 05:14:29.482418','2014-03-29 05:14:29.482418',NULL);
INSERT INTO "snippets" VALUES(602,'"X${1:${str}}" == "X${2:${str2}}"',NULL,'${1:foo} -ceq ${2:bar}','${1:str} = ${2:str2}','${1:str} == ${2:str2}','x','${1:strVar}.equals(${2})',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'se',NULL,'s','string','equals','2014-03-29 05:14:29.487615','2014-03-29 05:14:29.487615',NULL);
INSERT INTO "snippets" VALUES(603,'"X${1:${str,,}}" == "X${2:${str2,,}}"',NULL,'${1:foo} -eq ${2:bar}','LCase(${1:str}) = LCase(${2:str2})',NULL,NULL,'${1:strVar}.equalsIgnoreCase(${2})',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'sei',NULL,'s','string','equals ignore case','2014-03-29 05:14:29.492370','2014-03-29 05:14:29.492370',NULL);
INSERT INTO "snippets" VALUES(604,'${${1:str}} == ""',NULL,NULL,'${1:str} = vbNullString',NULL,NULL,'(${1:strVar} == null || $1.trim().isEmpty())',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'sempty',NULL,'s','string','null or ""','2014-03-29 05:14:29.497719','2014-03-29 05:14:29.497719',NULL);
INSERT INTO "snippets" VALUES(605,'${${1:str}} == *${2:endswith}',NULL,NULL,'(InStrRev(""&CStr(${1:str}), ""&CStr(${2:contains})) <> 0)',NULL,NULL,'${1:strVar}.endsWith(${2})',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'sends',NULL,'s','string','ends with','2014-03-29 05:14:29.502664','2014-03-29 05:14:29.502664',NULL);
INSERT INTO "snippets" VALUES(606,NULL,NULL,NULL,NULL,'@@command
exe ${1:str}
@@expression
eval(${1:str})',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'sexe',NULL,'s','string','execute string as command','2014-03-29 05:14:29.507156','2014-03-29 05:14:29.507156',NULL);
INSERT INTO "snippets" VALUES(607,NULL,NULL,NULL,NULL,'strridx(${1:str}, ${2:needle})','${1:str}.rfind(${2:needle})',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'${1:str}.rindex(${2:needle})',NULL,'sidxr',NULL,'s','string','last index of substring','2014-03-29 05:14:29.511904','2014-03-29 05:14:29.511904',NULL);
INSERT INTO "snippets" VALUES(608,NULL,NULL,'${1:foo}.indexof(${2})',NULL,'stridx(${1:str}, ${2:needle})','${1:str}.find(${2:needle})',NULL,'${1:haystack}.indexOf(${2:needle})','${1:haystack}.indexOf(${2:needle})',NULL,NULL,NULL,NULL,'${1:str}.index(${2:needle})',NULL,'sidx',NULL,'s','string','first index of substring','2014-03-29 05:14:29.518404','2014-03-29 05:14:29.518404',NULL);
INSERT INTO "snippets" VALUES(609,NULL,NULL,'${1:str} -join ${2:" "}',NULL,NULL,''' ''.join(${1:ar})',NULL,'${1:[''a'', ''b'']}.join(${2:" "})','${1:[''a'', ''b'']}.join(${2:" "})',NULL,NULL,NULL,NULL,'%w(${1:ar}).join('' '')',NULL,'sjoin',NULL,'s','string','join tokens into single string','2014-03-29 05:14:29.522680','2014-03-29 05:14:29.522680',NULL);
INSERT INTO "snippets" VALUES(610,'${1:str}="${$1%/}/"',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'slashdir',NULL,'s','string','add trailing / if needed','2014-03-29 05:14:29.527578','2014-03-29 05:14:29.527578',NULL);
INSERT INTO "snippets" VALUES(611,'${#${1:str}}',NULL,'${1:foo}.length','Len(${1:str})','strlen(${1:str})','len(${1:str})','${1:strVar}.length()','${1}.length','${1}.length()',NULL,NULL,NULL,NULL,'${1:str}.length',NULL,'slen',NULL,'s','string','length','2014-03-29 05:14:29.533259','2014-03-29 05:14:29.533259',NULL);
INSERT INTO "snippets" VALUES(612,'''${1}''',NULL,'${1:don''''t say "no"}''',NULL,'${1:''don''''t say "no"''}','${1:''don	 say "no"''}',NULL,'''${1}''','''${1}''',NULL,NULL,NULL,NULL,'${1:''don	 say "no"''}',NULL,'slit',NULL,'s','string','string literal','2014-03-29 05:14:29.537747','2014-03-29 05:14:29.537747',NULL);
INSERT INTO "snippets" VALUES(613,'${${1},,}',NULL,'$${1:foo}.tolower()','LCase(${1})','tolower(${1})','${1:str}.lower()','${1:strVar}.toLowerCase()','${1}.toLowerCase()','${1}.toLowerCase()',NULL,NULL,NULL,NULL,'${1:str}.downcase',NULL,'slower','slo','s','string','lowercase','2014-03-29 05:14:29.542765','2014-03-29 05:14:29.542765',NULL);
INSERT INTO "snippets" VALUES(614,NULL,NULL,NULL,NULL,NULL,'"""${1}"""',NULL,'${1:str} = "line1
line2";','${1:str} = """line1
line2"""',NULL,NULL,NULL,NULL,'"${1}"',NULL,'sml',NULL,'s','string','multiline string','2014-03-29 05:14:29.549187','2014-03-29 05:14:29.549187',NULL);
INSERT INTO "snippets" VALUES(615,NULL,NULL,'${1:foo} -cne ${2:bar}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'sne',NULL,'s','string','string not equal','2014-03-29 05:14:29.553573','2014-03-29 05:14:29.553573',NULL);
INSERT INTO "snippets" VALUES(616,NULL,NULL,'${1:foo} -ne ${2:bar}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'snei',NULL,'s','string','string not equal case insensitive','2014-03-29 05:14:29.558727','2014-03-29 05:14:29.558727',NULL);
INSERT INTO "snippets" VALUES(617,NULL,NULL,NULL,NULL,NULL,'${1:str}.center(${2:10})',NULL,NULL,'${1}.center(${2:1})',NULL,NULL,NULL,NULL,'${1:str}.center(${2:10})',NULL,'spadc',NULL,'s','string','pad string on center','2014-03-29 05:14:29.564811','2014-03-29 05:14:29.564811',NULL);
INSERT INTO "snippets" VALUES(618,NULL,NULL,'" " * (${2:10} - $1.length) + $${1:foo}',NULL,NULL,'${1:str}.ljust(${2:10})',NULL,NULL,'${1}.padLeft(${2:1})',NULL,NULL,NULL,NULL,'${1:str}.ljust(${2:10})',NULL,'spadl',NULL,'s','string','pad string on left','2014-03-29 05:14:29.569644','2014-03-29 05:14:29.569644',NULL);
INSERT INTO "snippets" VALUES(619,NULL,NULL,'$${1:foo} + " " * (${2:10} - $1.length)',NULL,NULL,'${1:str}.rjust(${2:10})',NULL,NULL,'${1}.padRight(${2:1})',NULL,NULL,NULL,NULL,'${1:str}.rjust(${2:10})',NULL,'spadr',NULL,'s','string','pad string on right','2014-03-29 05:14:29.574926','2014-03-29 05:14:29.574926',NULL);
INSERT INTO "snippets" VALUES(620,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ssl','sslice','s','string','slice, get contiguous portion of string','2014-03-29 05:14:29.580832','2014-03-29 05:14:29.580832',NULL);
INSERT INTO "snippets" VALUES(621,NULL,NULL,'${1:str} -split ${2:" "}',NULL,NULL,'${1:str}.split()',NULL,'${1:str}.split(${2:" "})','${1:str}.split(${2})',NULL,NULL,NULL,NULL,'${1:str}.split',NULL,'ssplit',NULL,'s','string','split string into tokens','2014-03-29 05:14:29.585390','2014-03-29 05:14:29.585390',NULL);
INSERT INTO "snippets" VALUES(622,'${${1:str}} == ${2:startswith}*',NULL,NULL,'(InStr(""&CStr(${1:str}), ""&CStr(${2:contains})) = 1)',NULL,'${1:str}.startswith(${2})','${1:strVar}.startsWith(${2})',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'sstarts',NULL,'s','string','starts with','2014-03-29 05:14:29.590524','2014-03-29 05:14:29.590524',NULL);
INSERT INTO "snippets" VALUES(623,'${${1:str}:${2:offset}:${3:len}}',NULL,'${1:foo}.substring(${2:4, 3})',NULL,NULL,'${1:str}[${2:0:1}]',NULL,'${1:str}.substring(${2:from}, ${3:to})','${1:str}.substring(${2:from}, ${3:to})',NULL,NULL,NULL,NULL,'${1:str}[${2:0..1}]',NULL,'ssub',NULL,'s','string','substring','2014-03-29 05:14:29.598070','2014-03-29 05:14:29.598070',NULL);
INSERT INTO "snippets" VALUES(624,NULL,NULL,NULL,NULL,NULL,'${1:str}.lstrip()',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'${1:str}.lstrip',NULL,'striml',NULL,'s','string','trim left whitespace','2014-03-29 05:14:29.602799','2014-03-29 05:14:29.602799',NULL);
INSERT INTO "snippets" VALUES(625,NULL,NULL,NULL,NULL,NULL,'${1:str}.rstrip()',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'${1:str}.rstrip',NULL,'strimr',NULL,'s','string','trim right whitespace','2014-03-29 05:14:29.607514','2014-03-29 05:14:29.607514',NULL);
INSERT INTO "snippets" VALUES(626,NULL,NULL,'$${1:foo}.trim()',NULL,NULL,'${1:str}.strip()',NULL,'${1}.trim()','${1}.trim()',NULL,NULL,NULL,NULL,'${1:str}.strip',NULL,'strim',NULL,'s','string','trim whitespace before & after','2014-03-29 05:14:29.613895','2014-03-29 05:14:29.613895',NULL);
INSERT INTO "snippets" VALUES(627,'${${1:str}^^}',NULL,'$${1:foo}.toupper()','UCase(${1})','toupper(${1})','${1:str}.upper()','${1:strVar}.toUpperCase()','${1}.toUpperCase()','${1}.toUpperCase()',NULL,NULL,NULL,NULL,'${1:str}.upcase',NULL,'supper','sup','s','string','uppercase','2014-03-29 05:14:29.618691','2014-03-29 05:14:29.618691',NULL);
INSERT INTO "snippets" VALUES(628,NULL,NULL,NULL,'CStr(${1:var})',NULL,'str(${1})','String.valueOf(${1:var})',NULL,'String.valueOf(${1})',NULL,NULL,NULL,NULL,'${1:foo}.to_s',NULL,'sval',NULL,'s','string','value as string','2014-03-29 05:14:29.623812','2014-03-29 05:14:29.623812',NULL);
INSERT INTO "snippets" VALUES(629,'${${1:foo}##*${2:prefix}}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'srpg',NULL,'s','string','remove prefix greedily','2014-03-29 05:14:29.629878','2014-03-29 05:14:29.629878',NULL);
INSERT INTO "snippets" VALUES(630,'${${1:foo}#*${2:prefix}}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'srpr',NULL,'s','string','remove prefix reluctantly','2014-03-29 05:14:29.634199','2014-03-29 05:14:29.634199',NULL);
INSERT INTO "snippets" VALUES(631,'${${1:foo}%%*${2:suffix}}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'srsg',NULL,'s','string','remove suffix greedily','2014-03-29 05:14:29.638682','2014-03-29 05:14:29.638682',NULL);
INSERT INTO "snippets" VALUES(632,'${${1:foo}%*${2:suffix}}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'srsr',NULL,'s','string','remove suffix reluctantly','2014-03-29 05:14:29.643746','2014-03-29 05:14:29.643746',NULL);
INSERT INTO "snippets" VALUES(633,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'testcl',NULL,'test','testing','write test class','2014-03-29 05:14:29.648405','2014-03-29 05:14:29.648405',NULL);
INSERT INTO "snippets" VALUES(634,NULL,NULL,NULL,NULL,NULL,NULL,'@Test
public void ${1:test}() throws Exception {
    ${2:// TODO: Implement test.}
}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'testfn','test','test','testing','write test method','2014-03-29 05:14:29.654063','2014-03-29 05:14:29.654063',NULL);
INSERT INTO "snippets" VALUES(635,NULL,NULL,'$${1:foo} -eq $null',NULL,NULL,'is None','== null','${1} === null','${1} === null',NULL,NULL,NULL,NULL,'== nil',NULL,'en',NULL,'-','var actions','equals null','2014-03-29 05:14:29.658949','2014-03-29 05:14:29.658949',NULL);
INSERT INTO "snippets" VALUES(636,NULL,NULL,NULL,'Not isEmpty(${1:var})',NULL,'is not None','!= null',NULL,NULL,NULL,NULL,NULL,NULL,'!= nil',NULL,'nn',NULL,'-','var actions','not null','2014-03-29 05:14:29.663528','2014-03-29 05:14:29.663528',NULL);
INSERT INTO "snippets" VALUES(637,NULL,NULL,NULL,NULL,'unlet! ${1:foo}','NO','NO',NULL,NULL,NULL,NULL,NULL,NULL,'NO',NULL,'free',NULL,'v','variable','free memory','2014-03-29 05:14:29.669248','2014-03-29 05:14:29.669248',NULL);
INSERT INTO "snippets" VALUES(638,'${${1}}',NULL,'$','EMPTY','@@scope: parameter of function
a:${1:foo}
@@scope: buffer
b:${1:foo}
@@scope: global
g:${1:foo}
@@scope: local (function)
${1:foo}
@@scope: script
s:${1:foo}
@@scope: tab
t:${1:foo}
@@scope: vim predefined
v:${1:foo}
@@scope: window
w:${1:foo}','EMPTY','EMPTY','EMPTY',NULL,NULL,NULL,NULL,NULL,'EMPTY',NULL,'v',NULL,'v','variable','variable access','2014-03-29 05:14:29.674741','2014-03-29 05:14:29.674741',NULL);
INSERT INTO "snippets" VALUES(639,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'vaddr',NULL,'v','variable','pass parameter by address','2014-03-29 05:14:29.679347','2014-03-29 05:14:29.679347',NULL);
INSERT INTO "snippets" VALUES(640,'${1:boolvar}=${2:true}',NULL,NULL,'xDim b_${1}: b_$1 = ${2:True}',NULL,'${1:b} = ${2:true}','boolean ${1:b} = ${2:false};',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'vb',NULL,'v','variable','boolean','2014-03-29 05:14:29.683619','2014-03-29 05:14:29.683619',NULL);
INSERT INTO "snippets" VALUES(641,'readonly ${1:ro}=${2}',NULL,NULL,'xConst ${1:foo} = ${2}',NULL,'${1:FOO_BAR} = ${2}','final ${1:String} ${2:FOO_BAR} = ${3};',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'vc',NULL,'v','variable','constant, final, read only','2014-03-29 05:14:29.690074','2014-03-29 05:14:29.690074',NULL);
INSERT INTO "snippets" VALUES(642,NULL,NULL,NULL,'xDim ch_${1}: ch_$1 = "${2}"',NULL,NULL,'char ${1:c} = ${2:''a''};',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'vch',NULL,'v','variable','character','2014-03-29 05:14:29.694754','2014-03-29 05:14:29.694754',NULL);
INSERT INTO "snippets" VALUES(643,NULL,NULL,NULL,'xDim cur_${1}: cur_$1 = ''${2}''',NULL,NULL,'NO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'vcur',NULL,'v','variable','currency','2014-03-29 05:14:29.699745','2014-03-29 05:14:29.699745',NULL);
INSERT INTO "snippets" VALUES(644,'${1:floatvar}=0.00',NULL,NULL,'xDim d_${1}: d_$1 = ${2:0.0}',NULL,'@LINK{vv}','double ${1:d} = ${2:1.0};',NULL,NULL,NULL,NULL,NULL,NULL,'@LINK{vv}',NULL,'vd',NULL,'v','variable','double','2014-03-29 05:14:29.706154','2014-03-29 05:14:29.706154',NULL);
INSERT INTO "snippets" VALUES(645,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'vda',NULL,'v','variable','dynamic array','2014-03-29 05:14:29.710515','2014-03-29 05:14:29.710515',NULL);
INSERT INTO "snippets" VALUES(646,NULL,NULL,NULL,NULL,NULL,NULL,'NO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'vderef',NULL,'v','variable','dereference variable','2014-03-29 05:14:29.718870','2014-03-29 05:14:29.718870',NULL);
INSERT INTO "snippets" VALUES(647,'${1:floatvar}=0.00',NULL,NULL,'Dim d_${1}: d_$1 = ${2:0.0}',NULL,'@LINK{vv}','float ${1:f} = ${2:1.0};',NULL,NULL,NULL,NULL,NULL,NULL,'@LINK{vv}',NULL,'vf',NULL,'v','variable','float','2014-03-29 05:14:29.723998','2014-03-29 05:14:29.723998',NULL);
INSERT INTO "snippets" VALUES(648,'NA',NULL,NULL,NULL,NULL,'@LINK{vv}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'@LINK{vv}',NULL,'vg','vgen,genv','v','variable','generic','2014-03-29 05:14:29.728795','2014-03-29 05:14:29.728795',NULL);
INSERT INTO "snippets" VALUES(649,'@LINK{vv}',NULL,NULL,NULL,'let g:${1:foo} = ${2:val}','${1:foo} = ${2}
def access_global():
    global $1','public class ${4:Global} {
    public static ${1:String} ${2:foo} = ${3:"bar"};
}','${1:foo} = ${2};',NULL,NULL,NULL,NULL,NULL,'$${1:foo} = ${2}',NULL,'vglobal','vgl,global','v','variable','define global variable','2014-03-29 05:14:29.733386','2014-03-29 05:14:29.733386',NULL);
INSERT INTO "snippets" VALUES(650,'declare -i ${1:i}=0',NULL,NULL,'xDim i_${1}: i_$1 = ${2:0}',NULL,'@LINK{vv}','int ${1:i} = ${2:1};',NULL,NULL,NULL,NULL,NULL,NULL,'@LINK{vv}',NULL,'vi',NULL,'v','variable','integer','2014-03-29 05:14:29.738883','2014-03-29 05:14:29.738883',NULL);
INSERT INTO "snippets" VALUES(651,'${${1}}',NULL,'$(${1})',NULL,NULL,'''{${1:foo}}''.format(**locals())',NULL,'NA','${${1}}',NULL,NULL,NULL,NULL,'#{${1:foo}}',NULL,'vis',NULL,'v','variable','variable in string (interpolation)','2014-03-29 05:14:29.743505','2014-03-29 05:14:29.743505',NULL);
INSERT INTO "snippets" VALUES(652,NULL,NULL,NULL,NULL,NULL,NULL,'instanceof ${1:String}','typeof ${1}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'vistype',NULL,'v','variable','test variable type','2014-03-29 05:14:29.748890','2014-03-29 05:14:29.748890',NULL);
INSERT INTO "snippets" VALUES(653,'@LINK{vv}',NULL,NULL,'xDim l_${1}: l_$1 = ${2:0}',NULL,'@LINK{vv}','long ${1:l} = ${2:1L};',NULL,NULL,NULL,NULL,NULL,NULL,'@LINK{vv}',NULL,'vl',NULL,'v','variable','long','2014-03-29 05:14:29.754270','2014-03-29 05:14:29.754270',NULL);
INSERT INTO "snippets" VALUES(654,NULL,NULL,'$${1:foo}, $${2:bar} = ${3:fooval}, ${4:barval}',NULL,NULL,'${1:foo}, ${2:bar} = ${3:csv}',NULL,NULL,'(${1:foo, bar, baz}) = [${2:1, 2, 3}]',NULL,NULL,NULL,NULL,'${1:foo}, ${2:bar} = ${3:csv}',NULL,'vll',NULL,'v','variable','parallel variable assignment','2014-03-29 05:14:29.758948','2014-03-29 05:14:29.758948',NULL);
INSERT INTO "snippets" VALUES(655,'${1:i}=0',NULL,NULL,'xDim n_${1}: n_$1 = ${2:0}',NULL,'@LINK{vv}','int ${1:i} = ${2:1};',NULL,NULL,NULL,NULL,NULL,NULL,'@LINK{vv}',NULL,'vn',NULL,'v','variable','numeric','2014-03-29 05:14:29.763790','2014-03-29 05:14:29.763790',NULL);
INSERT INTO "snippets" VALUES(656,'NA',NULL,NULL,'xDim o_${1}:Set o_$1 = New $1',NULL,NULL,'${1:Object} ${2:o} = new $1(${3});',NULL,'${1:Object} ${2:o} = new $1(${3});',NULL,NULL,NULL,NULL,NULL,NULL,'vo',NULL,'v','variable','object','2014-03-29 05:14:29.770435','2014-03-29 05:14:29.770435',NULL);
INSERT INTO "snippets" VALUES(657,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'var ${1:o} = {
    ${2:score: 21,}
    ${3:fun}: function() {
      ${4:return null}
    }
};',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'volit',NULL,'v','variable','object literal','2014-03-29 05:14:29.775281','2014-03-29 05:14:29.775281',NULL);
INSERT INTO "snippets" VALUES(658,NULL,NULL,NULL,NULL,NULL,'${1:foo} = re.compile(''${2}'')',NULL,'${1:regex} = /${2}/;','NA',NULL,NULL,NULL,NULL,'${1:foo} = /${2}/',NULL,'vr','vrx','v','variable','regex variable','2014-03-29 05:14:29.781071','2014-03-29 05:14:29.781071',NULL);
INSERT INTO "snippets" VALUES(659,NULL,NULL,NULL,NULL,NULL,NULL,'NO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'vref',NULL,'v','variable','reference, pointer','2014-03-29 05:14:29.787282','2014-03-29 05:14:29.787282',NULL);
INSERT INTO "snippets" VALUES(660,'${1:str}="${2}"',NULL,NULL,'xDim s_${1}: s_$1 = "${2}"','let ${1:foo} = "${2:val}"','@LINK{vv}','String ${1:s} = ${2:"foobar"};',NULL,NULL,NULL,NULL,NULL,NULL,'@LINK{vv}',NULL,'vs',NULL,'v','variable','string','2014-03-29 05:14:29.792620','2014-03-29 05:14:29.792620',NULL);
INSERT INTO "snippets" VALUES(661,'@LINK{vv}',NULL,'$${1:foo} = ${2:val}',NULL,'@@scope: buffer
let b:${1:foo} = ${2:val}
@@scope: global
let g:${1:foo} = ${2:val}
@@scope: function
let l:${1:foo} = ${2:val}
@@scope: script
let s:${1:foo} = ${2:val}
@@scope: tab
let t:${1:foo} = ${2:val}
@@scope: window
let w:${1:foo} = ${2:val}','@LINK{vv}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'@LINK{vv}',NULL,'vset',NULL,'v','variable','set variable value','2014-03-29 05:14:29.798006','2014-03-29 05:14:29.798006',NULL);
INSERT INTO "snippets" VALUES(662,'@LINK{vv}',NULL,NULL,'xDim sl_${1}: sl_$1 = ${2:0.0}',NULL,'@LINK{vv}','single ${1:sl} = ${2:1};','${1:foo} = ${2};',NULL,NULL,NULL,NULL,NULL,'@LINK{vv}',NULL,'vsl',NULL,'v','variable','single precision float','2014-03-29 05:14:29.803278','2014-03-29 05:14:29.803278',NULL);
INSERT INTO "snippets" VALUES(663,NULL,NULL,'$${1:foo}, $${2:bar} = $2, $1',NULL,NULL,'$${1:foo}, $${2:bar} = $2, $1','// import java.util.Date
Date ${1:d} = new Date();','tmp = ${1:foo};
$1 = ${2:bar};
$2 = tmp;','(${1:foo}, ${2:bar}) = [$2, $1]',NULL,NULL,NULL,NULL,'$${1:foo}, $${2:bar} = $2, $1',NULL,'vswap',NULL,'v','variable','swap variables','2014-03-29 05:14:29.808771','2014-03-29 05:14:29.808771',NULL);
INSERT INTO "snippets" VALUES(664,NULL,NULL,NULL,'xDim t_${1}: t_$1 = ${2:Now}',NULL,'@LINK{vv}','// import java.util.Date
Date ${1:d} = new Date();',NULL,NULL,NULL,NULL,NULL,NULL,'@LINK{vv}',NULL,'vt',NULL,'v','variable','date','2014-03-29 05:14:29.814524','2014-03-29 05:14:29.814524',NULL);
INSERT INTO "snippets" VALUES(665,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'vtuple',NULL,'v','variable','define a tuple','2014-03-29 05:14:29.820285','2014-03-29 05:14:29.820285',NULL);
INSERT INTO "snippets" VALUES(666,'${1:foo}=${2:val}',NULL,'$${1:foo} = ${2:val}','xDim ${1}',NULL,'${1:foo} = ${2}','${1:Object} ${2:o} = new $1();','var ${1:foo} = ${2}',NULL,NULL,NULL,NULL,NULL,'${1:foo} = ${2}',NULL,'vv',NULL,'v','variable','dynamic type declaration','2014-03-29 05:14:29.825418','2014-03-29 05:14:29.825418',NULL);
INSERT INTO "snippets" VALUES(667,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'vval',NULL,'v','variable','pass parameter by value','2014-03-29 05:14:29.831235','2014-03-29 05:14:29.831235',NULL);
INSERT INTO "snippets" VALUES(668,NULL,NULL,NULL,NULL,'exists("${1:foo}")',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'vx',NULL,'v','variable','variable exists?','2014-03-29 05:14:29.836694','2014-03-29 05:14:29.836694',NULL);
INSERT INTO "snippets" VALUES(996,NULL,NULL,NULL,NULL,NULL,'TODO','// requires Java Mail API (mail.jar), which must be in classpath
try {
    Properties props = System.getProperties();
    props.put("mail.smtp.host", "smtp.sampledomain.com");
    Session session = Session.getDefaultInstance(props, null);
    Message msg = new MimeMessage(session);
    msg.setFrom(new InternetAddress("gaylord.focker@hollywood.com"));
    msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse("father@family.com"));
    msg.setRecipients(Message.RecipientType.CC, InternetAddress.parse("mother@family.com"));
    msg.setSubject("subject");
    msg.setText("message body");
    msg.setHeader("X-Mailer", "jAVAmAILER");
    msg.setSentDate(new Date());
    Transport.send(msg);
} catch (AddressException e) {
    e.printStackTrace();
} catch (MessagingException e) {
    e.printStackTrace();
}',NULL,NULL,NULL,NULL,'// requires Java Mail API (mail.jar), which must be in classpath
import javax.mail._
import javax.mail.internet._
import java.util.Properties._
// Get the user''s message
println("Enter the text you wish to send in the message (hit Ctrl-D to finish):")
var bodyText = ""
var line = readLine
while (line != null) {
    bodyText += line
        line = readLine
}
// Confirm they want to send
println("Are you sure you want to send the message? [y/N]")
val yesOrNo = readLine
if (yesOrNo != "y" && yesOrNo != "Y") {
    println("Aborted")
        exit
}
// Set up the mail object
val properties = System.getProperties
    properties.put("mail.smtp.host", "localhost")
    val session = Session.getDefaultInstance(properties)
val message = new MimeMessage(session)
    // Set the from, to, subject, body text
    message.setFrom(new InternetAddress("test@example.org"))
    message.setRecipients(Message.RecipientType.TO, "spam@mopoke.co.uk")
    message.setSubject("Greetings from langref.org")
message.setText(bodyText)
    // And send it
Transport.send(message)',NULL,'TODOTODO',NULL,'email',NULL,'-','web','send an email','2014-03-29 05:15:18.985361','2014-03-29 05:15:18.985361',NULL);
INSERT INTO "snippets" VALUES(997,NULL,NULL,NULL,NULL,'str2float(${1})','float(${1})',NULL,'parseFloat(${1})','Double.parseDouble(${1})',NULL,NULL,NULL,NULL,'${1:foo}.to_f',NULL,'nvalf',NULL,'n','numeric','float value of string','2014-03-29 05:15:18.990521','2014-03-29 05:15:18.990521',NULL);
INSERT INTO "snippets" VALUES(998,NULL,NULL,NULL,NULL,NULL,'${1:fun}(${2:args, }*${3:ar})',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'${1:fun}(${2:args, }*${3:ar})',NULL,'arsplat',NULL,'ar','array','apply function to array elements','2014-03-29 05:15:18.996017','2014-03-29 05:15:18.996017',NULL);
INSERT INTO "snippets" VALUES(999,NULL,NULL,NULL,NULL,NULL,'${1:foo} = ${2:fun}',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'${1:foo} = lambda {|${2:x, y}| ${3:body}}',NULL,'vld',NULL,'v','variable','function as value','2014-03-29 05:15:19.001036','2014-03-29 05:15:19.001036',NULL);
INSERT INTO "snippets" VALUES(1000,NULL,NULL,NULL,NULL,NULL,'def ${1:logcall}(f):
    def wrapper(*a, **opts):
        print(''before '' + f.__name__)
        f(*a, **opts)
        print(''after '' + f.__name__)
    return wrapper
@$1
def square(x):
    return x * x',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'fndecorator',NULL,'fn','function','function decorator','2014-03-29 05:15:19.005842','2014-03-29 05:15:19.005842',NULL);
DELETE FROM sqlite_sequence;
INSERT INTO "sqlite_sequence" VALUES('snippets',1001);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
CREATE UNIQUE INDEX "index_snippets_on_trigger" ON "snippets" ("trigger");
COMMIT;
