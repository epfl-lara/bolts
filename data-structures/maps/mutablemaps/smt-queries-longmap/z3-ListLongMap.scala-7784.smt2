; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97486 () Bool)

(assert start!97486)

(declare-fun b_free!23421 () Bool)

(declare-fun b_next!23421 () Bool)

(assert (=> start!97486 (= b_free!23421 (not b_next!23421))))

(declare-fun tp!82563 () Bool)

(declare-fun b_and!37699 () Bool)

(assert (=> start!97486 (= tp!82563 b_and!37699)))

(declare-fun b!1111894 () Bool)

(declare-fun e!634025 () Bool)

(declare-fun e!634028 () Bool)

(declare-fun mapRes!43339 () Bool)

(assert (=> b!1111894 (= e!634025 (and e!634028 mapRes!43339))))

(declare-fun condMapEmpty!43339 () Bool)

(declare-datatypes ((V!42035 0))(
  ( (V!42036 (val!13897 Int)) )
))
(declare-datatypes ((ValueCell!13131 0))(
  ( (ValueCellFull!13131 (v!16531 V!42035)) (EmptyCell!13131) )
))
(declare-datatypes ((array!72222 0))(
  ( (array!72223 (arr!34760 (Array (_ BitVec 32) ValueCell!13131)) (size!35297 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72222)

(declare-fun mapDefault!43339 () ValueCell!13131)

(assert (=> b!1111894 (= condMapEmpty!43339 (= (arr!34760 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13131)) mapDefault!43339)))))

(declare-datatypes ((tuple2!17648 0))(
  ( (tuple2!17649 (_1!8834 (_ BitVec 64)) (_2!8834 V!42035)) )
))
(declare-datatypes ((List!24385 0))(
  ( (Nil!24382) (Cons!24381 (h!25590 tuple2!17648) (t!34859 List!24385)) )
))
(declare-datatypes ((ListLongMap!15629 0))(
  ( (ListLongMap!15630 (toList!7830 List!24385)) )
))
(declare-fun call!46961 () ListLongMap!15629)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun b!1111895 () Bool)

(declare-fun e!634027 () Bool)

(declare-fun call!46960 () ListLongMap!15629)

(declare-fun -!1049 (ListLongMap!15629 (_ BitVec 64)) ListLongMap!15629)

(assert (=> b!1111895 (= e!634027 (= call!46960 (-!1049 call!46961 k0!934)))))

(declare-fun b!1111896 () Bool)

(declare-fun res!742076 () Bool)

(declare-fun e!634024 () Bool)

(assert (=> b!1111896 (=> (not res!742076) (not e!634024))))

(declare-datatypes ((array!72224 0))(
  ( (array!72225 (arr!34761 (Array (_ BitVec 32) (_ BitVec 64))) (size!35298 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72224)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72224 (_ BitVec 32)) Bool)

(assert (=> b!1111896 (= res!742076 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapNonEmpty!43339 () Bool)

(declare-fun tp!82562 () Bool)

(declare-fun e!634026 () Bool)

(assert (=> mapNonEmpty!43339 (= mapRes!43339 (and tp!82562 e!634026))))

(declare-fun mapRest!43339 () (Array (_ BitVec 32) ValueCell!13131))

(declare-fun mapValue!43339 () ValueCell!13131)

(declare-fun mapKey!43339 () (_ BitVec 32))

(assert (=> mapNonEmpty!43339 (= (arr!34760 _values!996) (store mapRest!43339 mapKey!43339 mapValue!43339))))

(declare-fun b!1111897 () Bool)

(declare-fun res!742070 () Bool)

(assert (=> b!1111897 (=> (not res!742070) (not e!634024))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1111897 (= res!742070 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35298 _keys!1208))))))

(declare-fun b!1111898 () Bool)

(declare-fun e!634029 () Bool)

(assert (=> b!1111898 (= e!634029 true)))

(assert (=> b!1111898 e!634027))

(declare-fun c!109283 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1111898 (= c!109283 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun zeroValue!944 () V!42035)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((Unit!36401 0))(
  ( (Unit!36402) )
))
(declare-fun lt!496410 () Unit!36401)

(declare-fun minValue!944 () V!42035)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!306 (array!72224 array!72222 (_ BitVec 32) (_ BitVec 32) V!42035 V!42035 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36401)

(assert (=> b!1111898 (= lt!496410 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!306 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1111899 () Bool)

(declare-fun res!742074 () Bool)

(assert (=> b!1111899 (=> (not res!742074) (not e!634024))))

(assert (=> b!1111899 (= res!742074 (= (select (arr!34761 _keys!1208) i!673) k0!934))))

(declare-fun b!1111900 () Bool)

(assert (=> b!1111900 (= e!634027 (= call!46960 call!46961))))

(declare-fun b!1111901 () Bool)

(declare-fun res!742079 () Bool)

(assert (=> b!1111901 (=> (not res!742079) (not e!634024))))

(assert (=> b!1111901 (= res!742079 (and (= (size!35297 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35298 _keys!1208) (size!35297 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1111902 () Bool)

(declare-fun res!742077 () Bool)

(declare-fun e!634030 () Bool)

(assert (=> b!1111902 (=> (not res!742077) (not e!634030))))

(declare-fun lt!496409 () array!72224)

(declare-datatypes ((List!24386 0))(
  ( (Nil!24383) (Cons!24382 (h!25591 (_ BitVec 64)) (t!34860 List!24386)) )
))
(declare-fun arrayNoDuplicates!0 (array!72224 (_ BitVec 32) List!24386) Bool)

(assert (=> b!1111902 (= res!742077 (arrayNoDuplicates!0 lt!496409 #b00000000000000000000000000000000 Nil!24383))))

(declare-fun b!1111903 () Bool)

(declare-fun res!742078 () Bool)

(assert (=> b!1111903 (=> (not res!742078) (not e!634024))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1111903 (= res!742078 (validMask!0 mask!1564))))

(declare-fun bm!46957 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4291 (array!72224 array!72222 (_ BitVec 32) (_ BitVec 32) V!42035 V!42035 (_ BitVec 32) Int) ListLongMap!15629)

(assert (=> bm!46957 (= call!46961 (getCurrentListMapNoExtraKeys!4291 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1111904 () Bool)

(declare-fun tp_is_empty!27681 () Bool)

(assert (=> b!1111904 (= e!634026 tp_is_empty!27681)))

(declare-fun b!1111893 () Bool)

(declare-fun res!742080 () Bool)

(assert (=> b!1111893 (=> (not res!742080) (not e!634024))))

(assert (=> b!1111893 (= res!742080 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24383))))

(declare-fun res!742071 () Bool)

(assert (=> start!97486 (=> (not res!742071) (not e!634024))))

(assert (=> start!97486 (= res!742071 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35298 _keys!1208))))))

(assert (=> start!97486 e!634024))

(assert (=> start!97486 tp_is_empty!27681))

(declare-fun array_inv!26602 (array!72224) Bool)

(assert (=> start!97486 (array_inv!26602 _keys!1208)))

(assert (=> start!97486 true))

(assert (=> start!97486 tp!82563))

(declare-fun array_inv!26603 (array!72222) Bool)

(assert (=> start!97486 (and (array_inv!26603 _values!996) e!634025)))

(declare-fun bm!46958 () Bool)

(declare-fun dynLambda!2413 (Int (_ BitVec 64)) V!42035)

(assert (=> bm!46958 (= call!46960 (getCurrentListMapNoExtraKeys!4291 lt!496409 (array!72223 (store (arr!34760 _values!996) i!673 (ValueCellFull!13131 (dynLambda!2413 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35297 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!43339 () Bool)

(assert (=> mapIsEmpty!43339 mapRes!43339))

(declare-fun b!1111905 () Bool)

(assert (=> b!1111905 (= e!634030 (not e!634029))))

(declare-fun res!742073 () Bool)

(assert (=> b!1111905 (=> res!742073 e!634029)))

(assert (=> b!1111905 (= res!742073 (or (bvsle from!1455 i!673) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!35298 _keys!1208)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!72224 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1111905 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!496408 () Unit!36401)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72224 (_ BitVec 64) (_ BitVec 32)) Unit!36401)

(assert (=> b!1111905 (= lt!496408 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1111906 () Bool)

(declare-fun res!742075 () Bool)

(assert (=> b!1111906 (=> (not res!742075) (not e!634024))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1111906 (= res!742075 (validKeyInArray!0 k0!934))))

(declare-fun b!1111907 () Bool)

(assert (=> b!1111907 (= e!634024 e!634030)))

(declare-fun res!742072 () Bool)

(assert (=> b!1111907 (=> (not res!742072) (not e!634030))))

(assert (=> b!1111907 (= res!742072 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496409 mask!1564))))

(assert (=> b!1111907 (= lt!496409 (array!72225 (store (arr!34761 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35298 _keys!1208)))))

(declare-fun b!1111908 () Bool)

(assert (=> b!1111908 (= e!634028 tp_is_empty!27681)))

(assert (= (and start!97486 res!742071) b!1111903))

(assert (= (and b!1111903 res!742078) b!1111901))

(assert (= (and b!1111901 res!742079) b!1111896))

(assert (= (and b!1111896 res!742076) b!1111893))

(assert (= (and b!1111893 res!742080) b!1111897))

(assert (= (and b!1111897 res!742070) b!1111906))

(assert (= (and b!1111906 res!742075) b!1111899))

(assert (= (and b!1111899 res!742074) b!1111907))

(assert (= (and b!1111907 res!742072) b!1111902))

(assert (= (and b!1111902 res!742077) b!1111905))

(assert (= (and b!1111905 (not res!742073)) b!1111898))

(assert (= (and b!1111898 c!109283) b!1111895))

(assert (= (and b!1111898 (not c!109283)) b!1111900))

(assert (= (or b!1111895 b!1111900) bm!46958))

(assert (= (or b!1111895 b!1111900) bm!46957))

(assert (= (and b!1111894 condMapEmpty!43339) mapIsEmpty!43339))

(assert (= (and b!1111894 (not condMapEmpty!43339)) mapNonEmpty!43339))

(get-info :version)

(assert (= (and mapNonEmpty!43339 ((_ is ValueCellFull!13131) mapValue!43339)) b!1111904))

(assert (= (and b!1111894 ((_ is ValueCellFull!13131) mapDefault!43339)) b!1111908))

(assert (= start!97486 b!1111894))

(declare-fun b_lambda!18477 () Bool)

(assert (=> (not b_lambda!18477) (not bm!46958)))

(declare-fun t!34858 () Bool)

(declare-fun tb!8295 () Bool)

(assert (=> (and start!97486 (= defaultEntry!1004 defaultEntry!1004) t!34858) tb!8295))

(declare-fun result!17143 () Bool)

(assert (=> tb!8295 (= result!17143 tp_is_empty!27681)))

(assert (=> bm!46958 t!34858))

(declare-fun b_and!37701 () Bool)

(assert (= b_and!37699 (and (=> t!34858 result!17143) b_and!37701)))

(declare-fun m!1029687 () Bool)

(assert (=> bm!46957 m!1029687))

(declare-fun m!1029689 () Bool)

(assert (=> bm!46958 m!1029689))

(declare-fun m!1029691 () Bool)

(assert (=> bm!46958 m!1029691))

(declare-fun m!1029693 () Bool)

(assert (=> bm!46958 m!1029693))

(declare-fun m!1029695 () Bool)

(assert (=> b!1111898 m!1029695))

(declare-fun m!1029697 () Bool)

(assert (=> b!1111907 m!1029697))

(declare-fun m!1029699 () Bool)

(assert (=> b!1111907 m!1029699))

(declare-fun m!1029701 () Bool)

(assert (=> b!1111896 m!1029701))

(declare-fun m!1029703 () Bool)

(assert (=> b!1111899 m!1029703))

(declare-fun m!1029705 () Bool)

(assert (=> b!1111906 m!1029705))

(declare-fun m!1029707 () Bool)

(assert (=> mapNonEmpty!43339 m!1029707))

(declare-fun m!1029709 () Bool)

(assert (=> b!1111905 m!1029709))

(declare-fun m!1029711 () Bool)

(assert (=> b!1111905 m!1029711))

(declare-fun m!1029713 () Bool)

(assert (=> b!1111895 m!1029713))

(declare-fun m!1029715 () Bool)

(assert (=> b!1111902 m!1029715))

(declare-fun m!1029717 () Bool)

(assert (=> start!97486 m!1029717))

(declare-fun m!1029719 () Bool)

(assert (=> start!97486 m!1029719))

(declare-fun m!1029721 () Bool)

(assert (=> b!1111893 m!1029721))

(declare-fun m!1029723 () Bool)

(assert (=> b!1111903 m!1029723))

(check-sat (not b!1111905) (not start!97486) (not b!1111906) (not mapNonEmpty!43339) b_and!37701 (not b!1111893) tp_is_empty!27681 (not bm!46957) (not b_lambda!18477) (not b!1111907) (not bm!46958) (not b!1111902) (not b!1111896) (not b_next!23421) (not b!1111895) (not b!1111898) (not b!1111903))
(check-sat b_and!37701 (not b_next!23421))
