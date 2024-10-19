Class treinamento.Production Extends Ens.Production
{

XData ProductionDefinition
{
<Production Name="treinamento.Production" TestingEnabled="true" LogGeneralTraceEvents="false">
  <Description></Description>
  <ActorPoolSize>2</ActorPoolSize>
  <Item Name="bpEntrada" Category="" ClassName="ws.demo.bp.entrada" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="boEntrada" Category="" ClassName="ws.demo.bo.Operation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="ws.demo.bs.Service" Category="" ClassName="ws.demo.bs.Service" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="EnableStandardRequests">1</Setting>
  </Item>
</Production>
}

}
