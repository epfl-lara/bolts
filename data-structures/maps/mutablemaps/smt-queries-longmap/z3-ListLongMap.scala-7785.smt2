; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97492 () Bool)

(assert start!97492)

(declare-fun b_free!23427 () Bool)

(declare-fun b_next!23427 () Bool)

(assert (=> start!97492 (= b_free!23427 (not b_next!23427))))

(declare-fun tp!82580 () Bool)

(declare-fun b_and!37713 () Bool)

(assert (=> start!97492 (= tp!82580 b_and!37713)))

(declare-fun b!1112055 () Bool)

(declare-fun res!742172 () Bool)

(declare-fun e!634109 () Bool)

(assert (=> b!1112055 (=> (not res!742172) (not e!634109))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1112055 (= res!742172 (validMask!0 mask!1564))))

(declare-fun b!1112056 () Bool)

(declare-fun e!634104 () Bool)

(assert (=> b!1112056 (= e!634104 true)))

(declare-fun e!634107 () Bool)

(assert (=> b!1112056 e!634107))

(declare-fun c!109298 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1112056 (= c!109298 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((V!42043 0))(
  ( (V!42044 (val!13900 Int)) )
))
(declare-fun zeroValue!944 () V!42043)

(declare-datatypes ((array!72232 0))(
  ( (array!72233 (arr!34765 (Array (_ BitVec 32) (_ BitVec 64))) (size!35302 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72232)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun k0!934 () (_ BitVec 64))

(declare-datatypes ((ValueCell!13134 0))(
  ( (ValueCellFull!13134 (v!16534 V!42043)) (EmptyCell!13134) )
))
(declare-datatypes ((array!72234 0))(
  ( (array!72235 (arr!34766 (Array (_ BitVec 32) ValueCell!13134)) (size!35303 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72234)

(declare-fun minValue!944 () V!42043)

(declare-datatypes ((Unit!36405 0))(
  ( (Unit!36406) )
))
(declare-fun lt!496435 () Unit!36405)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!308 (array!72232 array!72234 (_ BitVec 32) (_ BitVec 32) V!42043 V!42043 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36405)

(assert (=> b!1112056 (= lt!496435 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!308 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1112057 () Bool)

(declare-fun res!742171 () Bool)

(assert (=> b!1112057 (=> (not res!742171) (not e!634109))))

(declare-datatypes ((List!24389 0))(
  ( (Nil!24386) (Cons!24385 (h!25594 (_ BitVec 64)) (t!34869 List!24389)) )
))
(declare-fun arrayNoDuplicates!0 (array!72232 (_ BitVec 32) List!24389) Bool)

(assert (=> b!1112057 (= res!742171 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24386))))

(declare-fun b!1112058 () Bool)

(declare-fun res!742169 () Bool)

(assert (=> b!1112058 (=> (not res!742169) (not e!634109))))

(assert (=> b!1112058 (= res!742169 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35302 _keys!1208))))))

(declare-fun b!1112059 () Bool)

(declare-fun res!742176 () Bool)

(assert (=> b!1112059 (=> (not res!742176) (not e!634109))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1112059 (= res!742176 (validKeyInArray!0 k0!934))))

(declare-fun b!1112060 () Bool)

(declare-fun e!634103 () Bool)

(assert (=> b!1112060 (= e!634103 (not e!634104))))

(declare-fun res!742175 () Bool)

(assert (=> b!1112060 (=> res!742175 e!634104)))

(assert (=> b!1112060 (= res!742175 (or (bvsle from!1455 i!673) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!35302 _keys!1208)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!72232 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1112060 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!496436 () Unit!36405)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72232 (_ BitVec 64) (_ BitVec 32)) Unit!36405)

(assert (=> b!1112060 (= lt!496436 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1112061 () Bool)

(declare-fun e!634108 () Bool)

(declare-fun tp_is_empty!27687 () Bool)

(assert (=> b!1112061 (= e!634108 tp_is_empty!27687)))

(declare-fun b!1112062 () Bool)

(declare-fun res!742170 () Bool)

(assert (=> b!1112062 (=> (not res!742170) (not e!634109))))

(assert (=> b!1112062 (= res!742170 (= (select (arr!34765 _keys!1208) i!673) k0!934))))

(declare-datatypes ((tuple2!17652 0))(
  ( (tuple2!17653 (_1!8836 (_ BitVec 64)) (_2!8836 V!42043)) )
))
(declare-datatypes ((List!24390 0))(
  ( (Nil!24387) (Cons!24386 (h!25595 tuple2!17652) (t!34870 List!24390)) )
))
(declare-datatypes ((ListLongMap!15633 0))(
  ( (ListLongMap!15634 (toList!7832 List!24390)) )
))
(declare-fun call!46978 () ListLongMap!15633)

(declare-fun b!1112063 () Bool)

(declare-fun call!46979 () ListLongMap!15633)

(declare-fun -!1051 (ListLongMap!15633 (_ BitVec 64)) ListLongMap!15633)

(assert (=> b!1112063 (= e!634107 (= call!46978 (-!1051 call!46979 k0!934)))))

(declare-fun b!1112064 () Bool)

(declare-fun e!634106 () Bool)

(assert (=> b!1112064 (= e!634106 tp_is_empty!27687)))

(declare-fun bm!46975 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4293 (array!72232 array!72234 (_ BitVec 32) (_ BitVec 32) V!42043 V!42043 (_ BitVec 32) Int) ListLongMap!15633)

(assert (=> bm!46975 (= call!46979 (getCurrentListMapNoExtraKeys!4293 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1112065 () Bool)

(declare-fun e!634102 () Bool)

(declare-fun mapRes!43348 () Bool)

(assert (=> b!1112065 (= e!634102 (and e!634106 mapRes!43348))))

(declare-fun condMapEmpty!43348 () Bool)

(declare-fun mapDefault!43348 () ValueCell!13134)

(assert (=> b!1112065 (= condMapEmpty!43348 (= (arr!34766 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13134)) mapDefault!43348)))))

(declare-fun b!1112066 () Bool)

(assert (=> b!1112066 (= e!634107 (= call!46978 call!46979))))

(declare-fun b!1112067 () Bool)

(declare-fun res!742179 () Bool)

(assert (=> b!1112067 (=> (not res!742179) (not e!634109))))

(assert (=> b!1112067 (= res!742179 (and (= (size!35303 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35302 _keys!1208) (size!35303 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1112068 () Bool)

(declare-fun res!742177 () Bool)

(assert (=> b!1112068 (=> (not res!742177) (not e!634109))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72232 (_ BitVec 32)) Bool)

(assert (=> b!1112068 (= res!742177 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapIsEmpty!43348 () Bool)

(assert (=> mapIsEmpty!43348 mapRes!43348))

(declare-fun b!1112069 () Bool)

(declare-fun res!742173 () Bool)

(assert (=> b!1112069 (=> (not res!742173) (not e!634103))))

(declare-fun lt!496437 () array!72232)

(assert (=> b!1112069 (= res!742173 (arrayNoDuplicates!0 lt!496437 #b00000000000000000000000000000000 Nil!24386))))

(declare-fun bm!46976 () Bool)

(declare-fun dynLambda!2415 (Int (_ BitVec 64)) V!42043)

(assert (=> bm!46976 (= call!46978 (getCurrentListMapNoExtraKeys!4293 lt!496437 (array!72235 (store (arr!34766 _values!996) i!673 (ValueCellFull!13134 (dynLambda!2415 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35303 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1112070 () Bool)

(assert (=> b!1112070 (= e!634109 e!634103)))

(declare-fun res!742178 () Bool)

(assert (=> b!1112070 (=> (not res!742178) (not e!634103))))

(assert (=> b!1112070 (= res!742178 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496437 mask!1564))))

(assert (=> b!1112070 (= lt!496437 (array!72233 (store (arr!34765 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35302 _keys!1208)))))

(declare-fun res!742174 () Bool)

(assert (=> start!97492 (=> (not res!742174) (not e!634109))))

(assert (=> start!97492 (= res!742174 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35302 _keys!1208))))))

(assert (=> start!97492 e!634109))

(assert (=> start!97492 tp_is_empty!27687))

(declare-fun array_inv!26606 (array!72232) Bool)

(assert (=> start!97492 (array_inv!26606 _keys!1208)))

(assert (=> start!97492 true))

(assert (=> start!97492 tp!82580))

(declare-fun array_inv!26607 (array!72234) Bool)

(assert (=> start!97492 (and (array_inv!26607 _values!996) e!634102)))

(declare-fun mapNonEmpty!43348 () Bool)

(declare-fun tp!82581 () Bool)

(assert (=> mapNonEmpty!43348 (= mapRes!43348 (and tp!82581 e!634108))))

(declare-fun mapKey!43348 () (_ BitVec 32))

(declare-fun mapValue!43348 () ValueCell!13134)

(declare-fun mapRest!43348 () (Array (_ BitVec 32) ValueCell!13134))

(assert (=> mapNonEmpty!43348 (= (arr!34766 _values!996) (store mapRest!43348 mapKey!43348 mapValue!43348))))

(assert (= (and start!97492 res!742174) b!1112055))

(assert (= (and b!1112055 res!742172) b!1112067))

(assert (= (and b!1112067 res!742179) b!1112068))

(assert (= (and b!1112068 res!742177) b!1112057))

(assert (= (and b!1112057 res!742171) b!1112058))

(assert (= (and b!1112058 res!742169) b!1112059))

(assert (= (and b!1112059 res!742176) b!1112062))

(assert (= (and b!1112062 res!742170) b!1112070))

(assert (= (and b!1112070 res!742178) b!1112069))

(assert (= (and b!1112069 res!742173) b!1112060))

(assert (= (and b!1112060 (not res!742175)) b!1112056))

(assert (= (and b!1112056 c!109298) b!1112063))

(assert (= (and b!1112056 (not c!109298)) b!1112066))

(assert (= (or b!1112063 b!1112066) bm!46976))

(assert (= (or b!1112063 b!1112066) bm!46975))

(assert (= (and b!1112065 condMapEmpty!43348) mapIsEmpty!43348))

(assert (= (and b!1112065 (not condMapEmpty!43348)) mapNonEmpty!43348))

(get-info :version)

(assert (= (and mapNonEmpty!43348 ((_ is ValueCellFull!13134) mapValue!43348)) b!1112061))

(assert (= (and b!1112065 ((_ is ValueCellFull!13134) mapDefault!43348)) b!1112064))

(assert (= start!97492 b!1112065))

(declare-fun b_lambda!18485 () Bool)

(assert (=> (not b_lambda!18485) (not bm!46976)))

(declare-fun t!34868 () Bool)

(declare-fun tb!8301 () Bool)

(assert (=> (and start!97492 (= defaultEntry!1004 defaultEntry!1004) t!34868) tb!8301))

(declare-fun result!17155 () Bool)

(assert (=> tb!8301 (= result!17155 tp_is_empty!27687)))

(assert (=> bm!46976 t!34868))

(declare-fun b_and!37715 () Bool)

(assert (= b_and!37713 (and (=> t!34868 result!17155) b_and!37715)))

(declare-fun m!1029801 () Bool)

(assert (=> b!1112055 m!1029801))

(declare-fun m!1029803 () Bool)

(assert (=> b!1112057 m!1029803))

(declare-fun m!1029805 () Bool)

(assert (=> b!1112059 m!1029805))

(declare-fun m!1029807 () Bool)

(assert (=> b!1112069 m!1029807))

(declare-fun m!1029809 () Bool)

(assert (=> b!1112070 m!1029809))

(declare-fun m!1029811 () Bool)

(assert (=> b!1112070 m!1029811))

(declare-fun m!1029813 () Bool)

(assert (=> b!1112063 m!1029813))

(declare-fun m!1029815 () Bool)

(assert (=> bm!46976 m!1029815))

(declare-fun m!1029817 () Bool)

(assert (=> bm!46976 m!1029817))

(declare-fun m!1029819 () Bool)

(assert (=> bm!46976 m!1029819))

(declare-fun m!1029821 () Bool)

(assert (=> start!97492 m!1029821))

(declare-fun m!1029823 () Bool)

(assert (=> start!97492 m!1029823))

(declare-fun m!1029825 () Bool)

(assert (=> b!1112060 m!1029825))

(declare-fun m!1029827 () Bool)

(assert (=> b!1112060 m!1029827))

(declare-fun m!1029829 () Bool)

(assert (=> b!1112062 m!1029829))

(declare-fun m!1029831 () Bool)

(assert (=> b!1112068 m!1029831))

(declare-fun m!1029833 () Bool)

(assert (=> mapNonEmpty!43348 m!1029833))

(declare-fun m!1029835 () Bool)

(assert (=> bm!46975 m!1029835))

(declare-fun m!1029837 () Bool)

(assert (=> b!1112056 m!1029837))

(check-sat (not start!97492) tp_is_empty!27687 (not b!1112055) (not bm!46975) (not b!1112060) (not mapNonEmpty!43348) (not bm!46976) (not b!1112068) (not b!1112056) (not b!1112059) (not b!1112069) (not b_next!23427) b_and!37715 (not b!1112070) (not b_lambda!18485) (not b!1112063) (not b!1112057))
(check-sat b_and!37715 (not b_next!23427))
