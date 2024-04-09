; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111366 () Bool)

(assert start!111366)

(declare-fun b!1317310 () Bool)

(declare-fun e!751714 () Bool)

(assert (=> b!1317310 (= e!751714 false)))

(declare-fun lt!586297 () Bool)

(declare-datatypes ((array!88525 0))(
  ( (array!88526 (arr!42732 (Array (_ BitVec 32) (_ BitVec 64))) (size!43283 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88525)

(declare-datatypes ((List!30484 0))(
  ( (Nil!30481) (Cons!30480 (h!31689 (_ BitVec 64)) (t!44099 List!30484)) )
))
(declare-fun arrayNoDuplicates!0 (array!88525 (_ BitVec 32) List!30484) Bool)

(assert (=> b!1317310 (= lt!586297 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30481))))

(declare-fun b!1317311 () Bool)

(declare-fun res!874390 () Bool)

(assert (=> b!1317311 (=> (not res!874390) (not e!751714))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-datatypes ((V!52845 0))(
  ( (V!52846 (val!17978 Int)) )
))
(declare-datatypes ((ValueCell!17005 0))(
  ( (ValueCellFull!17005 (v!20606 V!52845)) (EmptyCell!17005) )
))
(declare-datatypes ((array!88527 0))(
  ( (array!88528 (arr!42733 (Array (_ BitVec 32) ValueCell!17005)) (size!43284 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88527)

(declare-fun mask!2019 () (_ BitVec 32))

(assert (=> b!1317311 (= res!874390 (and (= (size!43284 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43283 _keys!1609) (size!43284 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1317313 () Bool)

(declare-fun e!751717 () Bool)

(declare-fun tp_is_empty!35807 () Bool)

(assert (=> b!1317313 (= e!751717 tp_is_empty!35807)))

(declare-fun mapNonEmpty!55358 () Bool)

(declare-fun mapRes!55358 () Bool)

(declare-fun tp!105465 () Bool)

(assert (=> mapNonEmpty!55358 (= mapRes!55358 (and tp!105465 e!751717))))

(declare-fun mapRest!55358 () (Array (_ BitVec 32) ValueCell!17005))

(declare-fun mapKey!55358 () (_ BitVec 32))

(declare-fun mapValue!55358 () ValueCell!17005)

(assert (=> mapNonEmpty!55358 (= (arr!42733 _values!1337) (store mapRest!55358 mapKey!55358 mapValue!55358))))

(declare-fun b!1317314 () Bool)

(declare-fun e!751713 () Bool)

(assert (=> b!1317314 (= e!751713 tp_is_empty!35807)))

(declare-fun b!1317312 () Bool)

(declare-fun e!751716 () Bool)

(assert (=> b!1317312 (= e!751716 (and e!751713 mapRes!55358))))

(declare-fun condMapEmpty!55358 () Bool)

(declare-fun mapDefault!55358 () ValueCell!17005)

