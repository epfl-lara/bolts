; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97366 () Bool)

(assert start!97366)

(declare-fun b_free!23301 () Bool)

(declare-fun b_next!23301 () Bool)

(assert (=> start!97366 (= b_free!23301 (not b_next!23301))))

(declare-fun tp!82203 () Bool)

(declare-fun b_and!37455 () Bool)

(assert (=> start!97366 (= tp!82203 b_and!37455)))

(declare-fun b!1108869 () Bool)

(declare-fun res!740099 () Bool)

(declare-fun e!632576 () Bool)

(assert (=> b!1108869 (=> (not res!740099) (not e!632576))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!71990 0))(
  ( (array!71991 (arr!34644 (Array (_ BitVec 32) (_ BitVec 64))) (size!35181 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71990)

(assert (=> b!1108869 (= res!740099 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35181 _keys!1208))))))

(declare-fun mapNonEmpty!43159 () Bool)

(declare-fun mapRes!43159 () Bool)

(declare-fun tp!82202 () Bool)

(declare-fun e!632579 () Bool)

(assert (=> mapNonEmpty!43159 (= mapRes!43159 (and tp!82202 e!632579))))

(declare-fun mapKey!43159 () (_ BitVec 32))

(declare-datatypes ((V!41875 0))(
  ( (V!41876 (val!13837 Int)) )
))
(declare-datatypes ((ValueCell!13071 0))(
  ( (ValueCellFull!13071 (v!16471 V!41875)) (EmptyCell!13071) )
))
(declare-fun mapRest!43159 () (Array (_ BitVec 32) ValueCell!13071))

(declare-datatypes ((array!71992 0))(
  ( (array!71993 (arr!34645 (Array (_ BitVec 32) ValueCell!13071)) (size!35182 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71992)

(declare-fun mapValue!43159 () ValueCell!13071)

(assert (=> mapNonEmpty!43159 (= (arr!34645 _values!996) (store mapRest!43159 mapKey!43159 mapValue!43159))))

(declare-fun b!1108870 () Bool)

(declare-fun res!740096 () Bool)

(assert (=> b!1108870 (=> (not res!740096) (not e!632576))))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1108870 (= res!740096 (= (select (arr!34644 _keys!1208) i!673) k0!934))))

(declare-fun zeroValue!944 () V!41875)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!495868 () array!71990)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!17558 0))(
  ( (tuple2!17559 (_1!8789 (_ BitVec 64)) (_2!8789 V!41875)) )
))
(declare-datatypes ((List!24294 0))(
  ( (Nil!24291) (Cons!24290 (h!25499 tuple2!17558) (t!34648 List!24294)) )
))
(declare-datatypes ((ListLongMap!15539 0))(
  ( (ListLongMap!15540 (toList!7785 List!24294)) )
))
(declare-fun call!46601 () ListLongMap!15539)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun bm!46597 () Bool)

(declare-fun minValue!944 () V!41875)

(declare-fun getCurrentListMapNoExtraKeys!4250 (array!71990 array!71992 (_ BitVec 32) (_ BitVec 32) V!41875 V!41875 (_ BitVec 32) Int) ListLongMap!15539)

(declare-fun dynLambda!2374 (Int (_ BitVec 64)) V!41875)

(assert (=> bm!46597 (= call!46601 (getCurrentListMapNoExtraKeys!4250 lt!495868 (array!71993 (store (arr!34645 _values!996) i!673 (ValueCellFull!13071 (dynLambda!2374 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35182 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1108871 () Bool)

(declare-fun e!632574 () Bool)

(declare-fun call!46600 () ListLongMap!15539)

(assert (=> b!1108871 (= e!632574 (= call!46601 call!46600))))

(declare-fun b!1108872 () Bool)

(declare-fun res!740090 () Bool)

(assert (=> b!1108872 (=> (not res!740090) (not e!632576))))

(declare-datatypes ((List!24295 0))(
  ( (Nil!24292) (Cons!24291 (h!25500 (_ BitVec 64)) (t!34649 List!24295)) )
))
(declare-fun arrayNoDuplicates!0 (array!71990 (_ BitVec 32) List!24295) Bool)

(assert (=> b!1108872 (= res!740090 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24292))))

(declare-fun b!1108873 () Bool)

(declare-fun e!632577 () Bool)

(declare-fun tp_is_empty!27561 () Bool)

(assert (=> b!1108873 (= e!632577 tp_is_empty!27561)))

(declare-fun bm!46598 () Bool)

(assert (=> bm!46598 (= call!46600 (getCurrentListMapNoExtraKeys!4250 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1108874 () Bool)

(declare-fun res!740094 () Bool)

(assert (=> b!1108874 (=> (not res!740094) (not e!632576))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1108874 (= res!740094 (validMask!0 mask!1564))))

(declare-fun b!1108875 () Bool)

(declare-fun res!740091 () Bool)

(declare-fun e!632578 () Bool)

(assert (=> b!1108875 (=> (not res!740091) (not e!632578))))

(assert (=> b!1108875 (= res!740091 (arrayNoDuplicates!0 lt!495868 #b00000000000000000000000000000000 Nil!24292))))

(declare-fun b!1108876 () Bool)

(declare-fun e!632575 () Bool)

(assert (=> b!1108876 (= e!632575 true)))

(assert (=> b!1108876 e!632574))

(declare-fun c!109091 () Bool)

(assert (=> b!1108876 (= c!109091 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((Unit!36319 0))(
  ( (Unit!36320) )
))
(declare-fun lt!495870 () Unit!36319)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!267 (array!71990 array!71992 (_ BitVec 32) (_ BitVec 32) V!41875 V!41875 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36319)

(assert (=> b!1108876 (= lt!495870 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!267 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1108878 () Bool)

(declare-fun res!740093 () Bool)

(assert (=> b!1108878 (=> (not res!740093) (not e!632576))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71990 (_ BitVec 32)) Bool)

(assert (=> b!1108878 (= res!740093 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1108879 () Bool)

(assert (=> b!1108879 (= e!632579 tp_is_empty!27561)))

(declare-fun b!1108880 () Bool)

(declare-fun res!740100 () Bool)

(assert (=> b!1108880 (=> (not res!740100) (not e!632576))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1108880 (= res!740100 (validKeyInArray!0 k0!934))))

(declare-fun mapIsEmpty!43159 () Bool)

(assert (=> mapIsEmpty!43159 mapRes!43159))

(declare-fun b!1108881 () Bool)

(assert (=> b!1108881 (= e!632576 e!632578)))

(declare-fun res!740092 () Bool)

(assert (=> b!1108881 (=> (not res!740092) (not e!632578))))

(assert (=> b!1108881 (= res!740092 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495868 mask!1564))))

(assert (=> b!1108881 (= lt!495868 (array!71991 (store (arr!34644 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35181 _keys!1208)))))

(declare-fun b!1108882 () Bool)

(assert (=> b!1108882 (= e!632578 (not e!632575))))

(declare-fun res!740097 () Bool)

(assert (=> b!1108882 (=> res!740097 e!632575)))

(assert (=> b!1108882 (= res!740097 (or (bvsle from!1455 i!673) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!35181 _keys!1208)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!71990 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1108882 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!495869 () Unit!36319)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71990 (_ BitVec 64) (_ BitVec 32)) Unit!36319)

(assert (=> b!1108882 (= lt!495869 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1108883 () Bool)

(declare-fun e!632573 () Bool)

(assert (=> b!1108883 (= e!632573 (and e!632577 mapRes!43159))))

(declare-fun condMapEmpty!43159 () Bool)

(declare-fun mapDefault!43159 () ValueCell!13071)

(assert (=> b!1108883 (= condMapEmpty!43159 (= (arr!34645 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13071)) mapDefault!43159)))))

(declare-fun b!1108884 () Bool)

(declare-fun -!1016 (ListLongMap!15539 (_ BitVec 64)) ListLongMap!15539)

(assert (=> b!1108884 (= e!632574 (= call!46601 (-!1016 call!46600 k0!934)))))

(declare-fun b!1108877 () Bool)

(declare-fun res!740098 () Bool)

(assert (=> b!1108877 (=> (not res!740098) (not e!632576))))

(assert (=> b!1108877 (= res!740098 (and (= (size!35182 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35181 _keys!1208) (size!35182 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun res!740095 () Bool)

(assert (=> start!97366 (=> (not res!740095) (not e!632576))))

(assert (=> start!97366 (= res!740095 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35181 _keys!1208))))))

(assert (=> start!97366 e!632576))

(assert (=> start!97366 tp_is_empty!27561))

(declare-fun array_inv!26526 (array!71990) Bool)

(assert (=> start!97366 (array_inv!26526 _keys!1208)))

(assert (=> start!97366 true))

(assert (=> start!97366 tp!82203))

(declare-fun array_inv!26527 (array!71992) Bool)

(assert (=> start!97366 (and (array_inv!26527 _values!996) e!632573)))

(assert (= (and start!97366 res!740095) b!1108874))

(assert (= (and b!1108874 res!740094) b!1108877))

(assert (= (and b!1108877 res!740098) b!1108878))

(assert (= (and b!1108878 res!740093) b!1108872))

(assert (= (and b!1108872 res!740090) b!1108869))

(assert (= (and b!1108869 res!740099) b!1108880))

(assert (= (and b!1108880 res!740100) b!1108870))

(assert (= (and b!1108870 res!740096) b!1108881))

(assert (= (and b!1108881 res!740092) b!1108875))

(assert (= (and b!1108875 res!740091) b!1108882))

(assert (= (and b!1108882 (not res!740097)) b!1108876))

(assert (= (and b!1108876 c!109091) b!1108884))

(assert (= (and b!1108876 (not c!109091)) b!1108871))

(assert (= (or b!1108884 b!1108871) bm!46597))

(assert (= (or b!1108884 b!1108871) bm!46598))

(assert (= (and b!1108883 condMapEmpty!43159) mapIsEmpty!43159))

(assert (= (and b!1108883 (not condMapEmpty!43159)) mapNonEmpty!43159))

(get-info :version)

(assert (= (and mapNonEmpty!43159 ((_ is ValueCellFull!13071) mapValue!43159)) b!1108879))

(assert (= (and b!1108883 ((_ is ValueCellFull!13071) mapDefault!43159)) b!1108873))

(assert (= start!97366 b!1108883))

(declare-fun b_lambda!18353 () Bool)

(assert (=> (not b_lambda!18353) (not bm!46597)))

(declare-fun t!34647 () Bool)

(declare-fun tb!8175 () Bool)

(assert (=> (and start!97366 (= defaultEntry!1004 defaultEntry!1004) t!34647) tb!8175))

(declare-fun result!16903 () Bool)

(assert (=> tb!8175 (= result!16903 tp_is_empty!27561)))

(assert (=> bm!46597 t!34647))

(declare-fun b_and!37457 () Bool)

(assert (= b_and!37455 (and (=> t!34647 result!16903) b_and!37457)))

(declare-fun m!1027407 () Bool)

(assert (=> b!1108878 m!1027407))

(declare-fun m!1027409 () Bool)

(assert (=> b!1108876 m!1027409))

(declare-fun m!1027411 () Bool)

(assert (=> b!1108870 m!1027411))

(declare-fun m!1027413 () Bool)

(assert (=> b!1108881 m!1027413))

(declare-fun m!1027415 () Bool)

(assert (=> b!1108881 m!1027415))

(declare-fun m!1027417 () Bool)

(assert (=> b!1108882 m!1027417))

(declare-fun m!1027419 () Bool)

(assert (=> b!1108882 m!1027419))

(declare-fun m!1027421 () Bool)

(assert (=> mapNonEmpty!43159 m!1027421))

(declare-fun m!1027423 () Bool)

(assert (=> start!97366 m!1027423))

(declare-fun m!1027425 () Bool)

(assert (=> start!97366 m!1027425))

(declare-fun m!1027427 () Bool)

(assert (=> bm!46597 m!1027427))

(declare-fun m!1027429 () Bool)

(assert (=> bm!46597 m!1027429))

(declare-fun m!1027431 () Bool)

(assert (=> bm!46597 m!1027431))

(declare-fun m!1027433 () Bool)

(assert (=> b!1108874 m!1027433))

(declare-fun m!1027435 () Bool)

(assert (=> b!1108884 m!1027435))

(declare-fun m!1027437 () Bool)

(assert (=> b!1108872 m!1027437))

(declare-fun m!1027439 () Bool)

(assert (=> b!1108880 m!1027439))

(declare-fun m!1027441 () Bool)

(assert (=> bm!46598 m!1027441))

(declare-fun m!1027443 () Bool)

(assert (=> b!1108875 m!1027443))

(check-sat (not b!1108880) tp_is_empty!27561 (not b!1108884) (not b_lambda!18353) (not b!1108875) (not b_next!23301) (not b!1108881) (not b!1108882) (not b!1108876) (not b!1108872) (not start!97366) b_and!37457 (not bm!46598) (not bm!46597) (not mapNonEmpty!43159) (not b!1108874) (not b!1108878))
(check-sat b_and!37457 (not b_next!23301))
