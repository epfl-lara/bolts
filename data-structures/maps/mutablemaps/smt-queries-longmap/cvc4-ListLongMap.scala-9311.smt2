; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111342 () Bool)

(assert start!111342)

(declare-fun b!1317094 () Bool)

(declare-fun res!874280 () Bool)

(declare-fun e!751533 () Bool)

(assert (=> b!1317094 (=> (not res!874280) (not e!751533))))

(declare-datatypes ((array!88479 0))(
  ( (array!88480 (arr!42709 (Array (_ BitVec 32) (_ BitVec 64))) (size!43260 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88479)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88479 (_ BitVec 32)) Bool)

(assert (=> b!1317094 (= res!874280 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1317095 () Bool)

(declare-fun res!874281 () Bool)

(assert (=> b!1317095 (=> (not res!874281) (not e!751533))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-datatypes ((V!52813 0))(
  ( (V!52814 (val!17966 Int)) )
))
(declare-datatypes ((ValueCell!16993 0))(
  ( (ValueCellFull!16993 (v!20594 V!52813)) (EmptyCell!16993) )
))
(declare-datatypes ((array!88481 0))(
  ( (array!88482 (arr!42710 (Array (_ BitVec 32) ValueCell!16993)) (size!43261 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88481)

(assert (=> b!1317095 (= res!874281 (and (= (size!43261 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43260 _keys!1609) (size!43261 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1317096 () Bool)

(declare-fun e!751535 () Bool)

(declare-fun e!751536 () Bool)

(declare-fun mapRes!55322 () Bool)

(assert (=> b!1317096 (= e!751535 (and e!751536 mapRes!55322))))

(declare-fun condMapEmpty!55322 () Bool)

(declare-fun mapDefault!55322 () ValueCell!16993)

