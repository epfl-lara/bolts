; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111752 () Bool)

(assert start!111752)

(declare-fun b_free!30373 () Bool)

(declare-fun b_next!30373 () Bool)

(assert (=> start!111752 (= b_free!30373 (not b_next!30373))))

(declare-fun tp!106596 () Bool)

(declare-fun b_and!48915 () Bool)

(assert (=> start!111752 (= tp!106596 b_and!48915)))

(declare-fun b!1323644 () Bool)

(declare-fun res!878680 () Bool)

(declare-fun e!754608 () Bool)

(assert (=> b!1323644 (=> (not res!878680) (not e!754608))))

(declare-datatypes ((array!89261 0))(
  ( (array!89262 (arr!43100 (Array (_ BitVec 32) (_ BitVec 64))) (size!43651 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89261)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-datatypes ((V!53361 0))(
  ( (V!53362 (val!18171 Int)) )
))
(declare-fun zeroValue!1279 () V!53361)

(declare-datatypes ((ValueCell!17198 0))(
  ( (ValueCellFull!17198 (v!20799 V!53361)) (EmptyCell!17198) )
))
(declare-datatypes ((array!89263 0))(
  ( (array!89264 (arr!43101 (Array (_ BitVec 32) ValueCell!17198)) (size!43652 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89263)

(declare-fun minValue!1279 () V!53361)

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun defaultEntry!1340 () Int)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-datatypes ((tuple2!23578 0))(
  ( (tuple2!23579 (_1!11799 (_ BitVec 64)) (_2!11799 V!53361)) )
))
(declare-datatypes ((List!30751 0))(
  ( (Nil!30748) (Cons!30747 (h!31956 tuple2!23578) (t!44680 List!30751)) )
))
(declare-datatypes ((ListLongMap!21247 0))(
  ( (ListLongMap!21248 (toList!10639 List!30751)) )
))
(declare-fun contains!8730 (ListLongMap!21247 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5576 (array!89261 array!89263 (_ BitVec 32) (_ BitVec 32) V!53361 V!53361 (_ BitVec 32) Int) ListLongMap!21247)

(assert (=> b!1323644 (= res!878680 (contains!8730 (getCurrentListMap!5576 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun b!1323645 () Bool)

(declare-fun e!754611 () Bool)

(declare-fun tp_is_empty!36193 () Bool)

(assert (=> b!1323645 (= e!754611 tp_is_empty!36193)))

(declare-fun mapNonEmpty!55937 () Bool)

(declare-fun mapRes!55937 () Bool)

(declare-fun tp!106595 () Bool)

(declare-fun e!754612 () Bool)

(assert (=> mapNonEmpty!55937 (= mapRes!55937 (and tp!106595 e!754612))))

(declare-fun mapRest!55937 () (Array (_ BitVec 32) ValueCell!17198))

(declare-fun mapKey!55937 () (_ BitVec 32))

(declare-fun mapValue!55937 () ValueCell!17198)

(assert (=> mapNonEmpty!55937 (= (arr!43101 _values!1337) (store mapRest!55937 mapKey!55937 mapValue!55937))))

(declare-fun b!1323646 () Bool)

(declare-fun e!754610 () Bool)

(assert (=> b!1323646 (= e!754610 (and e!754611 mapRes!55937))))

(declare-fun condMapEmpty!55937 () Bool)

(declare-fun mapDefault!55937 () ValueCell!17198)

