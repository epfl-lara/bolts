; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111678 () Bool)

(assert start!111678)

(declare-fun b_free!30299 () Bool)

(declare-fun b_next!30299 () Bool)

(assert (=> start!111678 (= b_free!30299 (not b_next!30299))))

(declare-fun tp!106374 () Bool)

(declare-fun b_and!48767 () Bool)

(assert (=> start!111678 (= tp!106374 b_and!48767)))

(declare-fun b!1322349 () Bool)

(declare-fun e!754056 () Bool)

(assert (=> b!1322349 (= e!754056 (not true))))

(declare-datatypes ((V!53261 0))(
  ( (V!53262 (val!18134 Int)) )
))
(declare-datatypes ((tuple2!23526 0))(
  ( (tuple2!23527 (_1!11773 (_ BitVec 64)) (_2!11773 V!53261)) )
))
(declare-datatypes ((List!30701 0))(
  ( (Nil!30698) (Cons!30697 (h!31906 tuple2!23526) (t!44556 List!30701)) )
))
(declare-datatypes ((ListLongMap!21195 0))(
  ( (ListLongMap!21196 (toList!10613 List!30701)) )
))
(declare-fun lt!588109 () ListLongMap!21195)

(declare-fun lt!588108 () tuple2!23526)

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun contains!8704 (ListLongMap!21195 (_ BitVec 64)) Bool)

(declare-fun +!4563 (ListLongMap!21195 tuple2!23526) ListLongMap!21195)

(assert (=> b!1322349 (contains!8704 (+!4563 lt!588109 lt!588108) k!1164)))

(declare-fun zeroValue!1279 () V!53261)

(declare-datatypes ((Unit!43526 0))(
  ( (Unit!43527) )
))
(declare-fun lt!588115 () Unit!43526)

(declare-fun addStillContains!1144 (ListLongMap!21195 (_ BitVec 64) V!53261 (_ BitVec 64)) Unit!43526)

(assert (=> b!1322349 (= lt!588115 (addStillContains!1144 lt!588109 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 k!1164))))

(assert (=> b!1322349 (contains!8704 lt!588109 k!1164)))

(declare-datatypes ((array!89117 0))(
  ( (array!89118 (arr!43028 (Array (_ BitVec 32) (_ BitVec 64))) (size!43579 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89117)

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun lt!588107 () Unit!43526)

(declare-fun lt!588111 () V!53261)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!178 ((_ BitVec 64) (_ BitVec 64) V!53261 ListLongMap!21195) Unit!43526)

(assert (=> b!1322349 (= lt!588107 (lemmaInListMapAfterAddingDiffThenInBefore!178 k!1164 (select (arr!43028 _keys!1609) from!2000) lt!588111 lt!588109))))

(declare-fun lt!588113 () ListLongMap!21195)

(assert (=> b!1322349 (contains!8704 lt!588113 k!1164)))

(declare-fun lt!588110 () Unit!43526)

(assert (=> b!1322349 (= lt!588110 (lemmaInListMapAfterAddingDiffThenInBefore!178 k!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!588113))))

(declare-fun lt!588112 () ListLongMap!21195)

(assert (=> b!1322349 (contains!8704 lt!588112 k!1164)))

(declare-fun lt!588114 () Unit!43526)

(declare-fun minValue!1279 () V!53261)

(assert (=> b!1322349 (= lt!588114 (lemmaInListMapAfterAddingDiffThenInBefore!178 k!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!588112))))

(assert (=> b!1322349 (= lt!588112 (+!4563 lt!588113 lt!588108))))

(assert (=> b!1322349 (= lt!588108 (tuple2!23527 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279))))

(assert (=> b!1322349 (= lt!588113 (+!4563 lt!588109 (tuple2!23527 (select (arr!43028 _keys!1609) from!2000) lt!588111)))))

(declare-datatypes ((ValueCell!17161 0))(
  ( (ValueCellFull!17161 (v!20762 V!53261)) (EmptyCell!17161) )
))
(declare-datatypes ((array!89119 0))(
  ( (array!89120 (arr!43029 (Array (_ BitVec 32) ValueCell!17161)) (size!43580 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89119)

(declare-fun defaultEntry!1340 () Int)

(declare-fun get!21709 (ValueCell!17161 V!53261) V!53261)

(declare-fun dynLambda!3600 (Int (_ BitVec 64)) V!53261)

(assert (=> b!1322349 (= lt!588111 (get!21709 (select (arr!43029 _values!1337) from!2000) (dynLambda!3600 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6278 (array!89117 array!89119 (_ BitVec 32) (_ BitVec 32) V!53261 V!53261 (_ BitVec 32) Int) ListLongMap!21195)

(assert (=> b!1322349 (= lt!588109 (getCurrentListMapNoExtraKeys!6278 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))

(declare-fun b!1322350 () Bool)

(declare-fun res!877788 () Bool)

(assert (=> b!1322350 (=> (not res!877788) (not e!754056))))

(assert (=> b!1322350 (= res!877788 (and (= (size!43580 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43579 _keys!1609) (size!43580 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1322351 () Bool)

(declare-fun e!754053 () Bool)

(declare-fun tp_is_empty!36119 () Bool)

(assert (=> b!1322351 (= e!754053 tp_is_empty!36119)))

(declare-fun b!1322352 () Bool)

(declare-fun res!877791 () Bool)

(assert (=> b!1322352 (=> (not res!877791) (not e!754056))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89117 (_ BitVec 32)) Bool)

(assert (=> b!1322352 (= res!877791 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1322353 () Bool)

(declare-fun res!877785 () Bool)

(assert (=> b!1322353 (=> (not res!877785) (not e!754056))))

(assert (=> b!1322353 (= res!877785 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43579 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!55826 () Bool)

(declare-fun mapRes!55826 () Bool)

(declare-fun tp!106373 () Bool)

(assert (=> mapNonEmpty!55826 (= mapRes!55826 (and tp!106373 e!754053))))

(declare-fun mapRest!55826 () (Array (_ BitVec 32) ValueCell!17161))

(declare-fun mapValue!55826 () ValueCell!17161)

(declare-fun mapKey!55826 () (_ BitVec 32))

(assert (=> mapNonEmpty!55826 (= (arr!43029 _values!1337) (store mapRest!55826 mapKey!55826 mapValue!55826))))

(declare-fun b!1322354 () Bool)

(declare-fun res!877790 () Bool)

(assert (=> b!1322354 (=> (not res!877790) (not e!754056))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1322354 (= res!877790 (validKeyInArray!0 (select (arr!43028 _keys!1609) from!2000)))))

(declare-fun res!877787 () Bool)

(assert (=> start!111678 (=> (not res!877787) (not e!754056))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111678 (= res!877787 (validMask!0 mask!2019))))

(assert (=> start!111678 e!754056))

(declare-fun array_inv!32437 (array!89117) Bool)

(assert (=> start!111678 (array_inv!32437 _keys!1609)))

(assert (=> start!111678 true))

(assert (=> start!111678 tp_is_empty!36119))

(declare-fun e!754055 () Bool)

(declare-fun array_inv!32438 (array!89119) Bool)

(assert (=> start!111678 (and (array_inv!32438 _values!1337) e!754055)))

(assert (=> start!111678 tp!106374))

(declare-fun b!1322355 () Bool)

(declare-fun res!877789 () Bool)

(assert (=> b!1322355 (=> (not res!877789) (not e!754056))))

(assert (=> b!1322355 (= res!877789 (not (= (select (arr!43028 _keys!1609) from!2000) k!1164)))))

(declare-fun b!1322356 () Bool)

(declare-fun res!877786 () Bool)

(assert (=> b!1322356 (=> (not res!877786) (not e!754056))))

(declare-fun getCurrentListMap!5553 (array!89117 array!89119 (_ BitVec 32) (_ BitVec 32) V!53261 V!53261 (_ BitVec 32) Int) ListLongMap!21195)

(assert (=> b!1322356 (= res!877786 (contains!8704 (getCurrentListMap!5553 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun b!1322357 () Bool)

(declare-fun e!754057 () Bool)

(assert (=> b!1322357 (= e!754055 (and e!754057 mapRes!55826))))

(declare-fun condMapEmpty!55826 () Bool)

(declare-fun mapDefault!55826 () ValueCell!17161)

