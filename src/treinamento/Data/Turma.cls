Class treinamento.Data.Turma Extends (%Persistent, %XML.Adaptor)
{

Property Instrutor As treinamento.Data.Instrutor;

Property DataInicio As %Date [ SqlColumnNumber = 3 ];

Property Status As %String [ SqlColumnNumber = 4 ];

Property Alunos As list Of treinamento.Data.Aluno [ SqlColumnNumber = 5 ];

Property Curso As treinamento.Data.Curso [ SqlColumnNumber = 6 ];

Method verificarStatus(curso) As %String [ Language = objectscript ]
{
	Set tSQL = "Select * from treinamento_Data.Turma where Curso->Nome like '%"_curso_"%' "
	Set tResult = ##class(%ResultSet).%New()
	Set tStatus = tResult.Prepare(tSQL)
	Set tStatus = tResult.Execute()
	while tResult.Next() {
		Set tStatusTurma = tResult.Get("Status")
	}

	return $Get(tStatusTurma)_" - "
}

Storage Default
{
<Data name="TurmaDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Instrutor</Value>
</Value>
<Value name="3">
<Value>DataInicio</Value>
</Value>
<Value name="4">
<Value>Status</Value>
</Value>
<Value name="5">
<Value>Alunos</Value>
</Value>
<Value name="6">
<Value>Curso</Value>
</Value>
</Data>
<DataLocation>^treinamento.Data.TurmaD</DataLocation>
<DefaultData>TurmaDefaultData</DefaultData>
<ExtentSize>1</ExtentSize>
<IdLocation>^treinamento.Data.TurmaD</IdLocation>
<IndexLocation>^treinamento.Data.TurmaI</IndexLocation>
<Property name="%%CLASSNAME">
<AverageFieldSize>2</AverageFieldSize>
<OutlierSelectivity>.999999:</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="%%ID">
<AverageFieldSize>3</AverageFieldSize>
<Selectivity>1</Selectivity>
</Property>
<Property name="Alunos">
<AverageFieldSize>17</AverageFieldSize>
<OutlierSelectivity>.999999:$lb($lb("1"),$lb("2"),$lb("3"))</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="Curso">
<AverageFieldSize>3</AverageFieldSize>
<OutlierSelectivity>.999999:1</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="DataInicio">
<AverageFieldSize>2</AverageFieldSize>
<OutlierSelectivity>.999999:</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="Instrutor">
<AverageFieldSize>3</AverageFieldSize>
<OutlierSelectivity>.999999:1</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<Property name="Status">
<AverageFieldSize>12</AverageFieldSize>
<OutlierSelectivity>.999999:"Incompleta"</OutlierSelectivity>
<Selectivity>0.0001%</Selectivity>
</Property>
<SQLMap name="IDKEY">
<BlockCount>-4</BlockCount>
</SQLMap>
<StreamLocation>^treinamento.Data.TurmaS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
