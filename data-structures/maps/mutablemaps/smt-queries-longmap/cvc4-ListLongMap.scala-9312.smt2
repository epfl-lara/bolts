; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111348 () Bool)

(assert start!111348)

(declare-fun mapIsEmpty!55331 () Bool)

(declare-fun mapRes!55331 () Bool)

(assert (=> mapIsEmpty!55331 mapRes!55331))

(declare-fun b!1317148 () Bool)

(declare-fun res!874307 () Bool)

(declare-fun e!751580 () Bool)

(assert (=> b!1317148 (=> (not res!874307) (not e!751580))))

(declare-datatypes ((array!88491 0))(
  ( (array!88492 (arr!42715 (Array (_ BitVec 32) (_ BitVec 64))) (size!43266 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88491)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88491 (_ BitVec 32)) Bool)

(assert (=> b!1317148 (= res!874307 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1317149 () Bool)

(declare-fun e!751582 () Bool)

(declare-fun tp_is_empty!35789 () Bool)

(assert (=> b!1317149 (= e!751582 tp_is_empty!35789)))

(declare-fun b!1317150 () Bool)

(assert (=> b!1317150 (= e!751580 false)))

(declare-fun lt!586270 () Bool)

(declare-datatypes ((List!30478 0))(
  ( (Nil!30475) (Cons!30474 (h!31683 (_ BitVec 64)) (t!44093 List!30478)) )
))
(declare-fun arrayNoDuplicates!0 (array!88491 (_ BitVec 32) List!30478) Bool)

(assert (=> b!1317150 (= lt!586270 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30475))))

(declare-fun b!1317151 () Bool)

(declare-fun res!874308 () Bool)

(assert (=> b!1317151 (=> (not res!874308) (not e!751580))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-datatypes ((V!52821 0))(
  ( (V!52822 (val!17969 Int)) )
))
(declare-datatypes ((ValueCell!16996 0))(
  ( (ValueCellFull!16996 (v!20597 V!52821)) (EmptyCell!16996) )
))
(declare-datatypes ((array!88493 0))(
  ( (array!88494 (arr!42716 (Array (_ BitVec 32) ValueCell!16996)) (size!43267 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88493)

(assert (=> b!1317151 (= res!874308 (and (= (size!43267 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43266 _keys!1609) (size!43267 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun res!874309 () Bool)

(assert (=> start!111348 (=> (not res!874309) (not e!751580))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111348 (= res!874309 (validMask!0 mask!2019))))

(assert (=> start!111348 e!751580))

(assert (=> start!111348 true))

(declare-fun e!751578 () Bool)

(declare-fun array_inv!32225 (array!88493) Bool)

(assert (=> start!111348 (and (array_inv!32225 _values!1337) e!751578)))

(declare-fun array_inv!32226 (array!88491) Bool)

(assert (=> start!111348 (array_inv!32226 _keys!1609)))

(declare-fun b!1317152 () Bool)

(declare-fun e!751579 () Bool)

(assert (=> b!1317152 (= e!751579 tp_is_empty!35789)))

(declare-fun b!1317153 () Bool)

(assert (=> b!1317153 (= e!751578 (and e!751579 mapRes!55331))))

(declare-fun condMapEmpty!55331 () Bool)

(declare-fun mapDefault!55331 () ValueCell!16996)

