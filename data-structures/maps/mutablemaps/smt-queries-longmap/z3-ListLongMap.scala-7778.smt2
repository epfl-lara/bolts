; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97450 () Bool)

(assert start!97450)

(declare-fun b_free!23385 () Bool)

(declare-fun b_next!23385 () Bool)

(assert (=> start!97450 (= b_free!23385 (not b_next!23385))))

(declare-fun tp!82454 () Bool)

(declare-fun b_and!37627 () Bool)

(assert (=> start!97450 (= tp!82454 b_and!37627)))

(declare-fun b!1110993 () Bool)

(declare-fun res!741478 () Bool)

(declare-fun e!633593 () Bool)

(assert (=> b!1110993 (=> (not res!741478) (not e!633593))))

(declare-datatypes ((array!72154 0))(
  ( (array!72155 (arr!34726 (Array (_ BitVec 32) (_ BitVec 64))) (size!35263 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72154)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72154 (_ BitVec 32)) Bool)

(assert (=> b!1110993 (= res!741478 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1110994 () Bool)

(declare-fun e!633592 () Bool)

(declare-fun e!633595 () Bool)

(declare-fun mapRes!43285 () Bool)

(assert (=> b!1110994 (= e!633592 (and e!633595 mapRes!43285))))

(declare-fun condMapEmpty!43285 () Bool)

(declare-datatypes ((V!41987 0))(
  ( (V!41988 (val!13879 Int)) )
))
(declare-datatypes ((ValueCell!13113 0))(
  ( (ValueCellFull!13113 (v!16513 V!41987)) (EmptyCell!13113) )
))
(declare-datatypes ((array!72156 0))(
  ( (array!72157 (arr!34727 (Array (_ BitVec 32) ValueCell!13113)) (size!35264 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72156)

(declare-fun mapDefault!43285 () ValueCell!13113)

(assert (=> b!1110994 (= condMapEmpty!43285 (= (arr!34727 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13113)) mapDefault!43285)))))

(declare-fun zeroValue!944 () V!41987)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun bm!46849 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((tuple2!17624 0))(
  ( (tuple2!17625 (_1!8822 (_ BitVec 64)) (_2!8822 V!41987)) )
))
(declare-datatypes ((List!24359 0))(
  ( (Nil!24356) (Cons!24355 (h!25564 tuple2!17624) (t!34797 List!24359)) )
))
(declare-datatypes ((ListLongMap!15605 0))(
  ( (ListLongMap!15606 (toList!7818 List!24359)) )
))
(declare-fun call!46853 () ListLongMap!15605)

(declare-fun minValue!944 () V!41987)

(declare-fun lt!496246 () array!72154)

(declare-fun getCurrentListMapNoExtraKeys!4281 (array!72154 array!72156 (_ BitVec 32) (_ BitVec 32) V!41987 V!41987 (_ BitVec 32) Int) ListLongMap!15605)

(declare-fun dynLambda!2403 (Int (_ BitVec 64)) V!41987)

(assert (=> bm!46849 (= call!46853 (getCurrentListMapNoExtraKeys!4281 lt!496246 (array!72157 (store (arr!34727 _values!996) i!673 (ValueCellFull!13113 (dynLambda!2403 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35264 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1110995 () Bool)

(declare-fun e!633594 () Bool)

(declare-fun e!633597 () Bool)

(assert (=> b!1110995 (= e!633594 (not e!633597))))

(declare-fun res!741479 () Bool)

(assert (=> b!1110995 (=> res!741479 e!633597)))

(assert (=> b!1110995 (= res!741479 (or (bvsle from!1455 i!673) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!35263 _keys!1208)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!72154 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1110995 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36377 0))(
  ( (Unit!36378) )
))
(declare-fun lt!496248 () Unit!36377)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72154 (_ BitVec 64) (_ BitVec 32)) Unit!36377)

(assert (=> b!1110995 (= lt!496248 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1110996 () Bool)

(declare-fun res!741484 () Bool)

(assert (=> b!1110996 (=> (not res!741484) (not e!633593))))

(assert (=> b!1110996 (= res!741484 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35263 _keys!1208))))))

(declare-fun b!1110997 () Bool)

(declare-fun res!741486 () Bool)

(assert (=> b!1110997 (=> (not res!741486) (not e!633593))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1110997 (= res!741486 (validKeyInArray!0 k0!934))))

(declare-fun b!1110998 () Bool)

(declare-fun res!741477 () Bool)

(assert (=> b!1110998 (=> (not res!741477) (not e!633593))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1110998 (= res!741477 (validMask!0 mask!1564))))

(declare-fun b!1110999 () Bool)

(assert (=> b!1110999 (= e!633597 true)))

(declare-fun e!633596 () Bool)

(assert (=> b!1110999 e!633596))

(declare-fun c!109229 () Bool)

(assert (=> b!1110999 (= c!109229 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!496247 () Unit!36377)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!295 (array!72154 array!72156 (_ BitVec 32) (_ BitVec 32) V!41987 V!41987 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36377)

(assert (=> b!1110999 (= lt!496247 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!295 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1111000 () Bool)

(declare-fun res!741481 () Bool)

(assert (=> b!1111000 (=> (not res!741481) (not e!633593))))

(assert (=> b!1111000 (= res!741481 (= (select (arr!34726 _keys!1208) i!673) k0!934))))

(declare-fun b!1111001 () Bool)

(declare-fun call!46852 () ListLongMap!15605)

(assert (=> b!1111001 (= e!633596 (= call!46853 call!46852))))

(declare-fun b!1111003 () Bool)

(declare-fun res!741483 () Bool)

(assert (=> b!1111003 (=> (not res!741483) (not e!633593))))

(assert (=> b!1111003 (= res!741483 (and (= (size!35264 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35263 _keys!1208) (size!35264 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1111004 () Bool)

(assert (=> b!1111004 (= e!633593 e!633594)))

(declare-fun res!741482 () Bool)

(assert (=> b!1111004 (=> (not res!741482) (not e!633594))))

(assert (=> b!1111004 (= res!741482 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496246 mask!1564))))

(assert (=> b!1111004 (= lt!496246 (array!72155 (store (arr!34726 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35263 _keys!1208)))))

(declare-fun b!1111005 () Bool)

(declare-fun e!633599 () Bool)

(declare-fun tp_is_empty!27645 () Bool)

(assert (=> b!1111005 (= e!633599 tp_is_empty!27645)))

(declare-fun b!1111006 () Bool)

(assert (=> b!1111006 (= e!633595 tp_is_empty!27645)))

(declare-fun bm!46850 () Bool)

(assert (=> bm!46850 (= call!46852 (getCurrentListMapNoExtraKeys!4281 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1111007 () Bool)

(declare-fun -!1041 (ListLongMap!15605 (_ BitVec 64)) ListLongMap!15605)

(assert (=> b!1111007 (= e!633596 (= call!46853 (-!1041 call!46852 k0!934)))))

(declare-fun mapIsEmpty!43285 () Bool)

(assert (=> mapIsEmpty!43285 mapRes!43285))

(declare-fun res!741480 () Bool)

(assert (=> start!97450 (=> (not res!741480) (not e!633593))))

(assert (=> start!97450 (= res!741480 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35263 _keys!1208))))))

(assert (=> start!97450 e!633593))

(assert (=> start!97450 tp_is_empty!27645))

(declare-fun array_inv!26584 (array!72154) Bool)

(assert (=> start!97450 (array_inv!26584 _keys!1208)))

(assert (=> start!97450 true))

(assert (=> start!97450 tp!82454))

(declare-fun array_inv!26585 (array!72156) Bool)

(assert (=> start!97450 (and (array_inv!26585 _values!996) e!633592)))

(declare-fun b!1111002 () Bool)

(declare-fun res!741485 () Bool)

(assert (=> b!1111002 (=> (not res!741485) (not e!633594))))

(declare-datatypes ((List!24360 0))(
  ( (Nil!24357) (Cons!24356 (h!25565 (_ BitVec 64)) (t!34798 List!24360)) )
))
(declare-fun arrayNoDuplicates!0 (array!72154 (_ BitVec 32) List!24360) Bool)

(assert (=> b!1111002 (= res!741485 (arrayNoDuplicates!0 lt!496246 #b00000000000000000000000000000000 Nil!24357))))

(declare-fun b!1111008 () Bool)

(declare-fun res!741476 () Bool)

(assert (=> b!1111008 (=> (not res!741476) (not e!633593))))

(assert (=> b!1111008 (= res!741476 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24357))))

(declare-fun mapNonEmpty!43285 () Bool)

(declare-fun tp!82455 () Bool)

(assert (=> mapNonEmpty!43285 (= mapRes!43285 (and tp!82455 e!633599))))

(declare-fun mapRest!43285 () (Array (_ BitVec 32) ValueCell!13113))

(declare-fun mapKey!43285 () (_ BitVec 32))

(declare-fun mapValue!43285 () ValueCell!13113)

(assert (=> mapNonEmpty!43285 (= (arr!34727 _values!996) (store mapRest!43285 mapKey!43285 mapValue!43285))))

(assert (= (and start!97450 res!741480) b!1110998))

(assert (= (and b!1110998 res!741477) b!1111003))

(assert (= (and b!1111003 res!741483) b!1110993))

(assert (= (and b!1110993 res!741478) b!1111008))

(assert (= (and b!1111008 res!741476) b!1110996))

(assert (= (and b!1110996 res!741484) b!1110997))

(assert (= (and b!1110997 res!741486) b!1111000))

(assert (= (and b!1111000 res!741481) b!1111004))

(assert (= (and b!1111004 res!741482) b!1111002))

(assert (= (and b!1111002 res!741485) b!1110995))

(assert (= (and b!1110995 (not res!741479)) b!1110999))

(assert (= (and b!1110999 c!109229) b!1111007))

(assert (= (and b!1110999 (not c!109229)) b!1111001))

(assert (= (or b!1111007 b!1111001) bm!46849))

(assert (= (or b!1111007 b!1111001) bm!46850))

(assert (= (and b!1110994 condMapEmpty!43285) mapIsEmpty!43285))

(assert (= (and b!1110994 (not condMapEmpty!43285)) mapNonEmpty!43285))

(get-info :version)

(assert (= (and mapNonEmpty!43285 ((_ is ValueCellFull!13113) mapValue!43285)) b!1111005))

(assert (= (and b!1110994 ((_ is ValueCellFull!13113) mapDefault!43285)) b!1111006))

(assert (= start!97450 b!1110994))

(declare-fun b_lambda!18441 () Bool)

(assert (=> (not b_lambda!18441) (not bm!46849)))

(declare-fun t!34796 () Bool)

(declare-fun tb!8259 () Bool)

(assert (=> (and start!97450 (= defaultEntry!1004 defaultEntry!1004) t!34796) tb!8259))

(declare-fun result!17071 () Bool)

(assert (=> tb!8259 (= result!17071 tp_is_empty!27645)))

(assert (=> bm!46849 t!34796))

(declare-fun b_and!37629 () Bool)

(assert (= b_and!37627 (and (=> t!34796 result!17071) b_and!37629)))

(declare-fun m!1029003 () Bool)

(assert (=> b!1111002 m!1029003))

(declare-fun m!1029005 () Bool)

(assert (=> b!1110999 m!1029005))

(declare-fun m!1029007 () Bool)

(assert (=> b!1110993 m!1029007))

(declare-fun m!1029009 () Bool)

(assert (=> b!1110997 m!1029009))

(declare-fun m!1029011 () Bool)

(assert (=> start!97450 m!1029011))

(declare-fun m!1029013 () Bool)

(assert (=> start!97450 m!1029013))

(declare-fun m!1029015 () Bool)

(assert (=> b!1110998 m!1029015))

(declare-fun m!1029017 () Bool)

(assert (=> b!1111008 m!1029017))

(declare-fun m!1029019 () Bool)

(assert (=> bm!46849 m!1029019))

(declare-fun m!1029021 () Bool)

(assert (=> bm!46849 m!1029021))

(declare-fun m!1029023 () Bool)

(assert (=> bm!46849 m!1029023))

(declare-fun m!1029025 () Bool)

(assert (=> b!1110995 m!1029025))

(declare-fun m!1029027 () Bool)

(assert (=> b!1110995 m!1029027))

(declare-fun m!1029029 () Bool)

(assert (=> b!1111007 m!1029029))

(declare-fun m!1029031 () Bool)

(assert (=> mapNonEmpty!43285 m!1029031))

(declare-fun m!1029033 () Bool)

(assert (=> b!1111000 m!1029033))

(declare-fun m!1029035 () Bool)

(assert (=> b!1111004 m!1029035))

(declare-fun m!1029037 () Bool)

(assert (=> b!1111004 m!1029037))

(declare-fun m!1029039 () Bool)

(assert (=> bm!46850 m!1029039))

(check-sat b_and!37629 (not bm!46850) (not b_next!23385) (not b!1111004) (not start!97450) (not b_lambda!18441) (not b!1110995) (not b!1111002) (not b!1111007) (not b!1110998) (not b!1111008) (not mapNonEmpty!43285) (not b!1110997) tp_is_empty!27645 (not b!1110993) (not b!1110999) (not bm!46849))
(check-sat b_and!37629 (not b_next!23385))
