; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111506 () Bool)

(assert start!111506)

(declare-fun b_free!30127 () Bool)

(declare-fun b_next!30127 () Bool)

(assert (=> start!111506 (= b_free!30127 (not b_next!30127))))

(declare-fun tp!105857 () Bool)

(declare-fun b_and!48423 () Bool)

(assert (=> start!111506 (= tp!105857 b_and!48423)))

(declare-fun b!1319339 () Bool)

(declare-fun res!875727 () Bool)

(declare-fun e!752763 () Bool)

(assert (=> b!1319339 (=> (not res!875727) (not e!752763))))

(declare-datatypes ((array!88793 0))(
  ( (array!88794 (arr!42866 (Array (_ BitVec 32) (_ BitVec 64))) (size!43417 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88793)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88793 (_ BitVec 32)) Bool)

(assert (=> b!1319339 (= res!875727 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1319340 () Bool)

(declare-fun res!875723 () Bool)

(assert (=> b!1319340 (=> (not res!875723) (not e!752763))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k!1164 () (_ BitVec 64))

(assert (=> b!1319340 (= res!875723 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43417 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1319341 () Bool)

(declare-fun res!875728 () Bool)

(assert (=> b!1319341 (=> (not res!875728) (not e!752763))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1319341 (= res!875728 (validKeyInArray!0 (select (arr!42866 _keys!1609) from!2000)))))

(declare-fun mapNonEmpty!55568 () Bool)

(declare-fun mapRes!55568 () Bool)

(declare-fun tp!105858 () Bool)

(declare-fun e!752764 () Bool)

(assert (=> mapNonEmpty!55568 (= mapRes!55568 (and tp!105858 e!752764))))

(declare-fun mapKey!55568 () (_ BitVec 32))

(declare-datatypes ((V!53033 0))(
  ( (V!53034 (val!18048 Int)) )
))
(declare-datatypes ((ValueCell!17075 0))(
  ( (ValueCellFull!17075 (v!20676 V!53033)) (EmptyCell!17075) )
))
(declare-fun mapRest!55568 () (Array (_ BitVec 32) ValueCell!17075))

(declare-datatypes ((array!88795 0))(
  ( (array!88796 (arr!42867 (Array (_ BitVec 32) ValueCell!17075)) (size!43418 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88795)

(declare-fun mapValue!55568 () ValueCell!17075)

(assert (=> mapNonEmpty!55568 (= (arr!42867 _values!1337) (store mapRest!55568 mapKey!55568 mapValue!55568))))

(declare-fun b!1319342 () Bool)

(declare-fun res!875725 () Bool)

(assert (=> b!1319342 (=> (not res!875725) (not e!752763))))

(declare-datatypes ((List!30576 0))(
  ( (Nil!30573) (Cons!30572 (h!31781 (_ BitVec 64)) (t!44259 List!30576)) )
))
(declare-fun arrayNoDuplicates!0 (array!88793 (_ BitVec 32) List!30576) Bool)

(assert (=> b!1319342 (= res!875725 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30573))))

(declare-fun b!1319343 () Bool)

(declare-fun res!875721 () Bool)

(assert (=> b!1319343 (=> (not res!875721) (not e!752763))))

(assert (=> b!1319343 (= res!875721 (not (= (select (arr!42866 _keys!1609) from!2000) k!1164)))))

(declare-fun res!875724 () Bool)

(assert (=> start!111506 (=> (not res!875724) (not e!752763))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111506 (= res!875724 (validMask!0 mask!2019))))

(assert (=> start!111506 e!752763))

(declare-fun array_inv!32317 (array!88793) Bool)

(assert (=> start!111506 (array_inv!32317 _keys!1609)))

(assert (=> start!111506 true))

(declare-fun tp_is_empty!35947 () Bool)

(assert (=> start!111506 tp_is_empty!35947))

(declare-fun e!752766 () Bool)

(declare-fun array_inv!32318 (array!88795) Bool)

(assert (=> start!111506 (and (array_inv!32318 _values!1337) e!752766)))

(assert (=> start!111506 tp!105857))

(declare-fun b!1319344 () Bool)

(assert (=> b!1319344 (= e!752764 tp_is_empty!35947)))

(declare-fun b!1319345 () Bool)

(declare-fun res!875722 () Bool)

(assert (=> b!1319345 (=> (not res!875722) (not e!752763))))

(assert (=> b!1319345 (= res!875722 (and (= (size!43418 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43417 _keys!1609) (size!43418 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1319346 () Bool)

(declare-fun e!752767 () Bool)

(assert (=> b!1319346 (= e!752767 tp_is_empty!35947)))

(declare-fun b!1319347 () Bool)

(assert (=> b!1319347 (= e!752763 (not true))))

(declare-datatypes ((tuple2!23390 0))(
  ( (tuple2!23391 (_1!11705 (_ BitVec 64)) (_2!11705 V!53033)) )
))
(declare-datatypes ((List!30577 0))(
  ( (Nil!30574) (Cons!30573 (h!31782 tuple2!23390) (t!44260 List!30577)) )
))
(declare-datatypes ((ListLongMap!21059 0))(
  ( (ListLongMap!21060 (toList!10545 List!30577)) )
))
(declare-fun lt!586572 () ListLongMap!21059)

(declare-fun contains!8636 (ListLongMap!21059 (_ BitVec 64)) Bool)

(assert (=> b!1319347 (contains!8636 lt!586572 k!1164)))

(declare-fun minValue!1279 () V!53033)

(declare-datatypes ((Unit!43404 0))(
  ( (Unit!43405) )
))
(declare-fun lt!586573 () Unit!43404)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!117 ((_ BitVec 64) (_ BitVec 64) V!53033 ListLongMap!21059) Unit!43404)

(assert (=> b!1319347 (= lt!586573 (lemmaInListMapAfterAddingDiffThenInBefore!117 k!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!586572))))

(declare-fun zeroValue!1279 () V!53033)

(declare-fun defaultEntry!1340 () Int)

(declare-fun +!4502 (ListLongMap!21059 tuple2!23390) ListLongMap!21059)

(declare-fun getCurrentListMapNoExtraKeys!6217 (array!88793 array!88795 (_ BitVec 32) (_ BitVec 32) V!53033 V!53033 (_ BitVec 32) Int) ListLongMap!21059)

(declare-fun get!21592 (ValueCell!17075 V!53033) V!53033)

(declare-fun dynLambda!3539 (Int (_ BitVec 64)) V!53033)

(assert (=> b!1319347 (= lt!586572 (+!4502 (+!4502 (getCurrentListMapNoExtraKeys!6217 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23391 (select (arr!42866 _keys!1609) from!2000) (get!21592 (select (arr!42867 _values!1337) from!2000) (dynLambda!3539 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23391 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(declare-fun b!1319348 () Bool)

(assert (=> b!1319348 (= e!752766 (and e!752767 mapRes!55568))))

(declare-fun condMapEmpty!55568 () Bool)

(declare-fun mapDefault!55568 () ValueCell!17075)

