; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97336 () Bool)

(assert start!97336)

(declare-fun b_free!23271 () Bool)

(declare-fun b_next!23271 () Bool)

(assert (=> start!97336 (= b_free!23271 (not b_next!23271))))

(declare-fun tp!82113 () Bool)

(declare-fun b_and!37393 () Bool)

(assert (=> start!97336 (= tp!82113 b_and!37393)))

(declare-fun b!1108107 () Bool)

(declare-fun res!739598 () Bool)

(declare-fun e!632211 () Bool)

(assert (=> b!1108107 (=> (not res!739598) (not e!632211))))

(declare-datatypes ((array!71930 0))(
  ( (array!71931 (arr!34614 (Array (_ BitVec 32) (_ BitVec 64))) (size!35151 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71930)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71930 (_ BitVec 32)) Bool)

(assert (=> b!1108107 (= res!739598 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-datatypes ((V!41835 0))(
  ( (V!41836 (val!13822 Int)) )
))
(declare-fun zeroValue!944 () V!41835)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun bm!46507 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!17532 0))(
  ( (tuple2!17533 (_1!8776 (_ BitVec 64)) (_2!8776 V!41835)) )
))
(declare-datatypes ((List!24268 0))(
  ( (Nil!24265) (Cons!24264 (h!25473 tuple2!17532) (t!34592 List!24268)) )
))
(declare-datatypes ((ListLongMap!15513 0))(
  ( (ListLongMap!15514 (toList!7772 List!24268)) )
))
(declare-fun call!46511 () ListLongMap!15513)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13056 0))(
  ( (ValueCellFull!13056 (v!16456 V!41835)) (EmptyCell!13056) )
))
(declare-datatypes ((array!71932 0))(
  ( (array!71933 (arr!34615 (Array (_ BitVec 32) ValueCell!13056)) (size!35152 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71932)

(declare-fun lt!495735 () array!71930)

(declare-fun minValue!944 () V!41835)

(declare-fun getCurrentListMapNoExtraKeys!4239 (array!71930 array!71932 (_ BitVec 32) (_ BitVec 32) V!41835 V!41835 (_ BitVec 32) Int) ListLongMap!15513)

(declare-fun dynLambda!2364 (Int (_ BitVec 64)) V!41835)

(assert (=> bm!46507 (= call!46511 (getCurrentListMapNoExtraKeys!4239 lt!495735 (array!71933 (store (arr!34615 _values!996) i!673 (ValueCellFull!13056 (dynLambda!2364 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35152 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1108108 () Bool)

(declare-fun res!739600 () Bool)

(assert (=> b!1108108 (=> (not res!739600) (not e!632211))))

(declare-datatypes ((List!24269 0))(
  ( (Nil!24266) (Cons!24265 (h!25474 (_ BitVec 64)) (t!34593 List!24269)) )
))
(declare-fun arrayNoDuplicates!0 (array!71930 (_ BitVec 32) List!24269) Bool)

(assert (=> b!1108108 (= res!739600 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24266))))

(declare-fun b!1108109 () Bool)

(declare-fun e!632206 () Bool)

(declare-fun call!46510 () ListLongMap!15513)

(assert (=> b!1108109 (= e!632206 (= call!46511 call!46510))))

(declare-fun b!1108110 () Bool)

(declare-fun res!739597 () Bool)

(assert (=> b!1108110 (=> (not res!739597) (not e!632211))))

(assert (=> b!1108110 (= res!739597 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35151 _keys!1208))))))

(declare-fun b!1108111 () Bool)

(declare-fun e!632212 () Bool)

(assert (=> b!1108111 (= e!632211 e!632212)))

(declare-fun res!739601 () Bool)

(assert (=> b!1108111 (=> (not res!739601) (not e!632212))))

(assert (=> b!1108111 (= res!739601 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495735 mask!1564))))

(assert (=> b!1108111 (= lt!495735 (array!71931 (store (arr!34614 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35151 _keys!1208)))))

(declare-fun b!1108112 () Bool)

(declare-fun res!739599 () Bool)

(assert (=> b!1108112 (=> (not res!739599) (not e!632212))))

(assert (=> b!1108112 (= res!739599 (arrayNoDuplicates!0 lt!495735 #b00000000000000000000000000000000 Nil!24266))))

(declare-fun b!1108113 () Bool)

(declare-fun res!739603 () Bool)

(assert (=> b!1108113 (=> (not res!739603) (not e!632211))))

(assert (=> b!1108113 (= res!739603 (and (= (size!35152 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35151 _keys!1208) (size!35152 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1108114 () Bool)

(declare-fun e!632208 () Bool)

(declare-fun tp_is_empty!27531 () Bool)

(assert (=> b!1108114 (= e!632208 tp_is_empty!27531)))

(declare-fun mapIsEmpty!43114 () Bool)

(declare-fun mapRes!43114 () Bool)

(assert (=> mapIsEmpty!43114 mapRes!43114))

(declare-fun res!739595 () Bool)

(assert (=> start!97336 (=> (not res!739595) (not e!632211))))

(assert (=> start!97336 (= res!739595 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35151 _keys!1208))))))

(assert (=> start!97336 e!632211))

(assert (=> start!97336 tp_is_empty!27531))

(declare-fun array_inv!26504 (array!71930) Bool)

(assert (=> start!97336 (array_inv!26504 _keys!1208)))

(assert (=> start!97336 true))

(assert (=> start!97336 tp!82113))

(declare-fun e!632209 () Bool)

(declare-fun array_inv!26505 (array!71932) Bool)

(assert (=> start!97336 (and (array_inv!26505 _values!996) e!632209)))

(declare-fun b!1108115 () Bool)

(declare-fun res!739605 () Bool)

(assert (=> b!1108115 (=> (not res!739605) (not e!632211))))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1108115 (= res!739605 (= (select (arr!34614 _keys!1208) i!673) k0!934))))

(declare-fun mapNonEmpty!43114 () Bool)

(declare-fun tp!82112 () Bool)

(assert (=> mapNonEmpty!43114 (= mapRes!43114 (and tp!82112 e!632208))))

(declare-fun mapValue!43114 () ValueCell!13056)

(declare-fun mapKey!43114 () (_ BitVec 32))

(declare-fun mapRest!43114 () (Array (_ BitVec 32) ValueCell!13056))

(assert (=> mapNonEmpty!43114 (= (arr!34615 _values!996) (store mapRest!43114 mapKey!43114 mapValue!43114))))

(declare-fun bm!46508 () Bool)

(assert (=> bm!46508 (= call!46510 (getCurrentListMapNoExtraKeys!4239 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1108116 () Bool)

(declare-fun e!632207 () Bool)

(assert (=> b!1108116 (= e!632212 (not e!632207))))

(declare-fun res!739604 () Bool)

(assert (=> b!1108116 (=> res!739604 e!632207)))

(assert (=> b!1108116 (= res!739604 (or (bvsle from!1455 i!673) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!35151 _keys!1208)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!71930 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1108116 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36299 0))(
  ( (Unit!36300) )
))
(declare-fun lt!495734 () Unit!36299)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71930 (_ BitVec 64) (_ BitVec 32)) Unit!36299)

(assert (=> b!1108116 (= lt!495734 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1108117 () Bool)

(assert (=> b!1108117 (= e!632207 true)))

(assert (=> b!1108117 e!632206))

(declare-fun c!109040 () Bool)

(assert (=> b!1108117 (= c!109040 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!495733 () Unit!36299)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!258 (array!71930 array!71932 (_ BitVec 32) (_ BitVec 32) V!41835 V!41835 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36299)

(assert (=> b!1108117 (= lt!495733 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!258 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1108118 () Bool)

(declare-fun res!739596 () Bool)

(assert (=> b!1108118 (=> (not res!739596) (not e!632211))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1108118 (= res!739596 (validMask!0 mask!1564))))

(declare-fun b!1108119 () Bool)

(declare-fun e!632210 () Bool)

(assert (=> b!1108119 (= e!632209 (and e!632210 mapRes!43114))))

(declare-fun condMapEmpty!43114 () Bool)

(declare-fun mapDefault!43114 () ValueCell!13056)

(assert (=> b!1108119 (= condMapEmpty!43114 (= (arr!34615 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13056)) mapDefault!43114)))))

(declare-fun b!1108120 () Bool)

(declare-fun res!739602 () Bool)

(assert (=> b!1108120 (=> (not res!739602) (not e!632211))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1108120 (= res!739602 (validKeyInArray!0 k0!934))))

(declare-fun b!1108121 () Bool)

(assert (=> b!1108121 (= e!632210 tp_is_empty!27531)))

(declare-fun b!1108122 () Bool)

(declare-fun -!1004 (ListLongMap!15513 (_ BitVec 64)) ListLongMap!15513)

(assert (=> b!1108122 (= e!632206 (= call!46511 (-!1004 call!46510 k0!934)))))

(assert (= (and start!97336 res!739595) b!1108118))

(assert (= (and b!1108118 res!739596) b!1108113))

(assert (= (and b!1108113 res!739603) b!1108107))

(assert (= (and b!1108107 res!739598) b!1108108))

(assert (= (and b!1108108 res!739600) b!1108110))

(assert (= (and b!1108110 res!739597) b!1108120))

(assert (= (and b!1108120 res!739602) b!1108115))

(assert (= (and b!1108115 res!739605) b!1108111))

(assert (= (and b!1108111 res!739601) b!1108112))

(assert (= (and b!1108112 res!739599) b!1108116))

(assert (= (and b!1108116 (not res!739604)) b!1108117))

(assert (= (and b!1108117 c!109040) b!1108122))

(assert (= (and b!1108117 (not c!109040)) b!1108109))

(assert (= (or b!1108122 b!1108109) bm!46507))

(assert (= (or b!1108122 b!1108109) bm!46508))

(assert (= (and b!1108119 condMapEmpty!43114) mapIsEmpty!43114))

(assert (= (and b!1108119 (not condMapEmpty!43114)) mapNonEmpty!43114))

(get-info :version)

(assert (= (and mapNonEmpty!43114 ((_ is ValueCellFull!13056) mapValue!43114)) b!1108114))

(assert (= (and b!1108119 ((_ is ValueCellFull!13056) mapDefault!43114)) b!1108121))

(assert (= start!97336 b!1108119))

(declare-fun b_lambda!18321 () Bool)

(assert (=> (not b_lambda!18321) (not bm!46507)))

(declare-fun t!34591 () Bool)

(declare-fun tb!8145 () Bool)

(assert (=> (and start!97336 (= defaultEntry!1004 defaultEntry!1004) t!34591) tb!8145))

(declare-fun result!16843 () Bool)

(assert (=> tb!8145 (= result!16843 tp_is_empty!27531)))

(assert (=> bm!46507 t!34591))

(declare-fun b_and!37395 () Bool)

(assert (= b_and!37393 (and (=> t!34591 result!16843) b_and!37395)))

(declare-fun m!1026837 () Bool)

(assert (=> b!1108112 m!1026837))

(declare-fun m!1026839 () Bool)

(assert (=> start!97336 m!1026839))

(declare-fun m!1026841 () Bool)

(assert (=> start!97336 m!1026841))

(declare-fun m!1026843 () Bool)

(assert (=> mapNonEmpty!43114 m!1026843))

(declare-fun m!1026845 () Bool)

(assert (=> b!1108116 m!1026845))

(declare-fun m!1026847 () Bool)

(assert (=> b!1108116 m!1026847))

(declare-fun m!1026849 () Bool)

(assert (=> b!1108122 m!1026849))

(declare-fun m!1026851 () Bool)

(assert (=> bm!46508 m!1026851))

(declare-fun m!1026853 () Bool)

(assert (=> b!1108108 m!1026853))

(declare-fun m!1026855 () Bool)

(assert (=> b!1108115 m!1026855))

(declare-fun m!1026857 () Bool)

(assert (=> b!1108118 m!1026857))

(declare-fun m!1026859 () Bool)

(assert (=> b!1108107 m!1026859))

(declare-fun m!1026861 () Bool)

(assert (=> b!1108120 m!1026861))

(declare-fun m!1026863 () Bool)

(assert (=> b!1108117 m!1026863))

(declare-fun m!1026865 () Bool)

(assert (=> bm!46507 m!1026865))

(declare-fun m!1026867 () Bool)

(assert (=> bm!46507 m!1026867))

(declare-fun m!1026869 () Bool)

(assert (=> bm!46507 m!1026869))

(declare-fun m!1026871 () Bool)

(assert (=> b!1108111 m!1026871))

(declare-fun m!1026873 () Bool)

(assert (=> b!1108111 m!1026873))

(check-sat (not b_next!23271) tp_is_empty!27531 (not b!1108117) (not b!1108107) (not start!97336) (not b_lambda!18321) (not b!1108112) (not b!1108108) (not mapNonEmpty!43114) (not b!1108122) (not b!1108116) (not bm!46507) b_and!37395 (not b!1108111) (not b!1108120) (not bm!46508) (not b!1108118))
(check-sat b_and!37395 (not b_next!23271))
