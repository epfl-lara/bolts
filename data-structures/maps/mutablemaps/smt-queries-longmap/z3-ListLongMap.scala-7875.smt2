; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98032 () Bool)

(assert start!98032)

(declare-fun b_free!23697 () Bool)

(declare-fun b_next!23697 () Bool)

(assert (=> start!98032 (= b_free!23697 (not b_next!23697))))

(declare-fun tp!83796 () Bool)

(declare-fun b_and!38199 () Bool)

(assert (=> start!98032 (= tp!83796 b_and!38199)))

(declare-fun b!1123928 () Bool)

(declare-fun res!751014 () Bool)

(declare-fun e!639872 () Bool)

(assert (=> b!1123928 (=> (not res!751014) (not e!639872))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!42763 0))(
  ( (V!42764 (val!14170 Int)) )
))
(declare-datatypes ((ValueCell!13404 0))(
  ( (ValueCellFull!13404 (v!16804 V!42763)) (EmptyCell!13404) )
))
(declare-datatypes ((array!73280 0))(
  ( (array!73281 (arr!35289 (Array (_ BitVec 32) ValueCell!13404)) (size!35826 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73280)

(declare-datatypes ((array!73282 0))(
  ( (array!73283 (arr!35290 (Array (_ BitVec 32) (_ BitVec 64))) (size!35827 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73282)

(assert (=> b!1123928 (= res!751014 (and (= (size!35826 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35827 _keys!1208) (size!35826 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1123929 () Bool)

(declare-fun e!639878 () Bool)

(declare-fun e!639868 () Bool)

(assert (=> b!1123929 (= e!639878 (not e!639868))))

(declare-fun res!751004 () Bool)

(assert (=> b!1123929 (=> res!751004 e!639868)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1123929 (= res!751004 (bvsgt from!1455 i!673))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!73282 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1123929 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36789 0))(
  ( (Unit!36790) )
))
(declare-fun lt!499252 () Unit!36789)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73282 (_ BitVec 64) (_ BitVec 32)) Unit!36789)

(assert (=> b!1123929 (= lt!499252 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun zeroValue!944 () V!42763)

(declare-fun bm!47371 () Bool)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!17876 0))(
  ( (tuple2!17877 (_1!8948 (_ BitVec 64)) (_2!8948 V!42763)) )
))
(declare-datatypes ((List!24710 0))(
  ( (Nil!24707) (Cons!24706 (h!25915 tuple2!17876) (t!35406 List!24710)) )
))
(declare-datatypes ((ListLongMap!15857 0))(
  ( (ListLongMap!15858 (toList!7944 List!24710)) )
))
(declare-fun call!47374 () ListLongMap!15857)

(declare-fun lt!499257 () array!73282)

(declare-fun minValue!944 () V!42763)

(declare-fun lt!499251 () array!73280)

(declare-fun getCurrentListMapNoExtraKeys!4403 (array!73282 array!73280 (_ BitVec 32) (_ BitVec 32) V!42763 V!42763 (_ BitVec 32) Int) ListLongMap!15857)

(assert (=> bm!47371 (= call!47374 (getCurrentListMapNoExtraKeys!4403 lt!499257 lt!499251 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1123930 () Bool)

(declare-fun res!751005 () Bool)

(assert (=> b!1123930 (=> (not res!751005) (not e!639872))))

(assert (=> b!1123930 (= res!751005 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35827 _keys!1208))))))

(declare-fun b!1123931 () Bool)

(declare-fun e!639871 () Bool)

(assert (=> b!1123931 (= e!639868 e!639871)))

(declare-fun res!751007 () Bool)

(assert (=> b!1123931 (=> res!751007 e!639871)))

(assert (=> b!1123931 (= res!751007 (not (= from!1455 i!673)))))

(declare-fun lt!499256 () ListLongMap!15857)

(assert (=> b!1123931 (= lt!499256 (getCurrentListMapNoExtraKeys!4403 lt!499257 lt!499251 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2495 (Int (_ BitVec 64)) V!42763)

(assert (=> b!1123931 (= lt!499251 (array!73281 (store (arr!35289 _values!996) i!673 (ValueCellFull!13404 (dynLambda!2495 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35826 _values!996)))))

(declare-fun lt!499254 () ListLongMap!15857)

(assert (=> b!1123931 (= lt!499254 (getCurrentListMapNoExtraKeys!4403 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun res!751002 () Bool)

(assert (=> start!98032 (=> (not res!751002) (not e!639872))))

(assert (=> start!98032 (= res!751002 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35827 _keys!1208))))))

(assert (=> start!98032 e!639872))

(declare-fun tp_is_empty!28227 () Bool)

(assert (=> start!98032 tp_is_empty!28227))

(declare-fun array_inv!26962 (array!73282) Bool)

(assert (=> start!98032 (array_inv!26962 _keys!1208)))

(assert (=> start!98032 true))

(assert (=> start!98032 tp!83796))

(declare-fun e!639870 () Bool)

(declare-fun array_inv!26963 (array!73280) Bool)

(assert (=> start!98032 (and (array_inv!26963 _values!996) e!639870)))

(declare-fun b!1123932 () Bool)

(declare-fun res!751006 () Bool)

(assert (=> b!1123932 (=> (not res!751006) (not e!639878))))

(declare-datatypes ((List!24711 0))(
  ( (Nil!24708) (Cons!24707 (h!25916 (_ BitVec 64)) (t!35407 List!24711)) )
))
(declare-fun arrayNoDuplicates!0 (array!73282 (_ BitVec 32) List!24711) Bool)

(assert (=> b!1123932 (= res!751006 (arrayNoDuplicates!0 lt!499257 #b00000000000000000000000000000000 Nil!24708))))

(declare-fun b!1123933 () Bool)

(declare-fun res!751011 () Bool)

(assert (=> b!1123933 (=> (not res!751011) (not e!639872))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73282 (_ BitVec 32)) Bool)

(assert (=> b!1123933 (= res!751011 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1123934 () Bool)

(declare-fun e!639877 () Bool)

(assert (=> b!1123934 (= e!639877 tp_is_empty!28227)))

(declare-fun b!1123935 () Bool)

(declare-fun e!639869 () Bool)

(declare-fun call!47375 () ListLongMap!15857)

(assert (=> b!1123935 (= e!639869 (= call!47374 call!47375))))

(declare-fun bm!47372 () Bool)

(assert (=> bm!47372 (= call!47375 (getCurrentListMapNoExtraKeys!4403 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1123936 () Bool)

(declare-fun res!751000 () Bool)

(declare-fun e!639876 () Bool)

(assert (=> b!1123936 (=> res!751000 e!639876)))

(assert (=> b!1123936 (= res!751000 (or (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1123937 () Bool)

(declare-fun e!639875 () Bool)

(assert (=> b!1123937 (= e!639871 e!639875)))

(declare-fun res!751003 () Bool)

(assert (=> b!1123937 (=> res!751003 e!639875)))

(assert (=> b!1123937 (= res!751003 (not (= (select (arr!35290 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1123937 e!639869))

(declare-fun c!109496 () Bool)

(assert (=> b!1123937 (= c!109496 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!499250 () Unit!36789)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!351 (array!73282 array!73280 (_ BitVec 32) (_ BitVec 32) V!42763 V!42763 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36789)

(assert (=> b!1123937 (= lt!499250 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!351 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!44158 () Bool)

(declare-fun mapRes!44158 () Bool)

(declare-fun tp!83795 () Bool)

(assert (=> mapNonEmpty!44158 (= mapRes!44158 (and tp!83795 e!639877))))

(declare-fun mapValue!44158 () ValueCell!13404)

(declare-fun mapKey!44158 () (_ BitVec 32))

(declare-fun mapRest!44158 () (Array (_ BitVec 32) ValueCell!13404))

(assert (=> mapNonEmpty!44158 (= (arr!35289 _values!996) (store mapRest!44158 mapKey!44158 mapValue!44158))))

(declare-fun b!1123938 () Bool)

(declare-fun res!751013 () Bool)

(assert (=> b!1123938 (=> (not res!751013) (not e!639872))))

(assert (=> b!1123938 (= res!751013 (= (select (arr!35290 _keys!1208) i!673) k0!934))))

(declare-fun b!1123939 () Bool)

(declare-fun res!751001 () Bool)

(assert (=> b!1123939 (=> (not res!751001) (not e!639872))))

(assert (=> b!1123939 (= res!751001 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24708))))

(declare-fun b!1123940 () Bool)

(assert (=> b!1123940 (= e!639872 e!639878)))

(declare-fun res!751012 () Bool)

(assert (=> b!1123940 (=> (not res!751012) (not e!639878))))

(assert (=> b!1123940 (= res!751012 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!499257 mask!1564))))

(assert (=> b!1123940 (= lt!499257 (array!73283 (store (arr!35290 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35827 _keys!1208)))))

(declare-fun b!1123941 () Bool)

(declare-fun e!639873 () Bool)

(assert (=> b!1123941 (= e!639870 (and e!639873 mapRes!44158))))

(declare-fun condMapEmpty!44158 () Bool)

(declare-fun mapDefault!44158 () ValueCell!13404)

(assert (=> b!1123941 (= condMapEmpty!44158 (= (arr!35289 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13404)) mapDefault!44158)))))

(declare-fun b!1123942 () Bool)

(assert (=> b!1123942 (= e!639873 tp_is_empty!28227)))

(declare-fun b!1123943 () Bool)

(declare-fun res!751009 () Bool)

(assert (=> b!1123943 (=> (not res!751009) (not e!639872))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1123943 (= res!751009 (validKeyInArray!0 k0!934))))

(declare-fun b!1123944 () Bool)

(assert (=> b!1123944 (= e!639876 true)))

(declare-fun lt!499255 () ListLongMap!15857)

(declare-fun contains!6458 (ListLongMap!15857 (_ BitVec 64)) Bool)

(declare-fun +!3376 (ListLongMap!15857 tuple2!17876) ListLongMap!15857)

(assert (=> b!1123944 (contains!6458 (+!3376 lt!499255 (tuple2!17877 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)) k0!934)))

(declare-fun lt!499253 () Unit!36789)

(declare-fun addStillContains!675 (ListLongMap!15857 (_ BitVec 64) V!42763 (_ BitVec 64)) Unit!36789)

(assert (=> b!1123944 (= lt!499253 (addStillContains!675 lt!499255 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(declare-fun b!1123945 () Bool)

(declare-fun -!1098 (ListLongMap!15857 (_ BitVec 64)) ListLongMap!15857)

(assert (=> b!1123945 (= e!639869 (= call!47374 (-!1098 call!47375 k0!934)))))

(declare-fun mapIsEmpty!44158 () Bool)

(assert (=> mapIsEmpty!44158 mapRes!44158))

(declare-fun b!1123946 () Bool)

(assert (=> b!1123946 (= e!639875 e!639876)))

(declare-fun res!751010 () Bool)

(assert (=> b!1123946 (=> res!751010 e!639876)))

(assert (=> b!1123946 (= res!751010 (not (contains!6458 lt!499255 k0!934)))))

(assert (=> b!1123946 (= lt!499255 (getCurrentListMapNoExtraKeys!4403 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1123947 () Bool)

(declare-fun res!751008 () Bool)

(assert (=> b!1123947 (=> (not res!751008) (not e!639872))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1123947 (= res!751008 (validMask!0 mask!1564))))

(assert (= (and start!98032 res!751002) b!1123947))

(assert (= (and b!1123947 res!751008) b!1123928))

(assert (= (and b!1123928 res!751014) b!1123933))

(assert (= (and b!1123933 res!751011) b!1123939))

(assert (= (and b!1123939 res!751001) b!1123930))

(assert (= (and b!1123930 res!751005) b!1123943))

(assert (= (and b!1123943 res!751009) b!1123938))

(assert (= (and b!1123938 res!751013) b!1123940))

(assert (= (and b!1123940 res!751012) b!1123932))

(assert (= (and b!1123932 res!751006) b!1123929))

(assert (= (and b!1123929 (not res!751004)) b!1123931))

(assert (= (and b!1123931 (not res!751007)) b!1123937))

(assert (= (and b!1123937 c!109496) b!1123945))

(assert (= (and b!1123937 (not c!109496)) b!1123935))

(assert (= (or b!1123945 b!1123935) bm!47371))

(assert (= (or b!1123945 b!1123935) bm!47372))

(assert (= (and b!1123937 (not res!751003)) b!1123946))

(assert (= (and b!1123946 (not res!751010)) b!1123936))

(assert (= (and b!1123936 (not res!751000)) b!1123944))

(assert (= (and b!1123941 condMapEmpty!44158) mapIsEmpty!44158))

(assert (= (and b!1123941 (not condMapEmpty!44158)) mapNonEmpty!44158))

(get-info :version)

(assert (= (and mapNonEmpty!44158 ((_ is ValueCellFull!13404) mapValue!44158)) b!1123934))

(assert (= (and b!1123941 ((_ is ValueCellFull!13404) mapDefault!44158)) b!1123942))

(assert (= start!98032 b!1123941))

(declare-fun b_lambda!18701 () Bool)

(assert (=> (not b_lambda!18701) (not b!1123931)))

(declare-fun t!35405 () Bool)

(declare-fun tb!8517 () Bool)

(assert (=> (and start!98032 (= defaultEntry!1004 defaultEntry!1004) t!35405) tb!8517))

(declare-fun result!17587 () Bool)

(assert (=> tb!8517 (= result!17587 tp_is_empty!28227)))

(assert (=> b!1123931 t!35405))

(declare-fun b_and!38201 () Bool)

(assert (= b_and!38199 (and (=> t!35405 result!17587) b_and!38201)))

(declare-fun m!1038415 () Bool)

(assert (=> bm!47372 m!1038415))

(declare-fun m!1038417 () Bool)

(assert (=> b!1123944 m!1038417))

(assert (=> b!1123944 m!1038417))

(declare-fun m!1038419 () Bool)

(assert (=> b!1123944 m!1038419))

(declare-fun m!1038421 () Bool)

(assert (=> b!1123944 m!1038421))

(declare-fun m!1038423 () Bool)

(assert (=> b!1123931 m!1038423))

(declare-fun m!1038425 () Bool)

(assert (=> b!1123931 m!1038425))

(declare-fun m!1038427 () Bool)

(assert (=> b!1123931 m!1038427))

(declare-fun m!1038429 () Bool)

(assert (=> b!1123931 m!1038429))

(declare-fun m!1038431 () Bool)

(assert (=> bm!47371 m!1038431))

(declare-fun m!1038433 () Bool)

(assert (=> b!1123938 m!1038433))

(declare-fun m!1038435 () Bool)

(assert (=> b!1123940 m!1038435))

(declare-fun m!1038437 () Bool)

(assert (=> b!1123940 m!1038437))

(declare-fun m!1038439 () Bool)

(assert (=> b!1123937 m!1038439))

(declare-fun m!1038441 () Bool)

(assert (=> b!1123937 m!1038441))

(declare-fun m!1038443 () Bool)

(assert (=> b!1123939 m!1038443))

(declare-fun m!1038445 () Bool)

(assert (=> b!1123932 m!1038445))

(declare-fun m!1038447 () Bool)

(assert (=> mapNonEmpty!44158 m!1038447))

(declare-fun m!1038449 () Bool)

(assert (=> b!1123946 m!1038449))

(assert (=> b!1123946 m!1038415))

(declare-fun m!1038451 () Bool)

(assert (=> b!1123933 m!1038451))

(declare-fun m!1038453 () Bool)

(assert (=> b!1123945 m!1038453))

(declare-fun m!1038455 () Bool)

(assert (=> b!1123947 m!1038455))

(declare-fun m!1038457 () Bool)

(assert (=> b!1123943 m!1038457))

(declare-fun m!1038459 () Bool)

(assert (=> start!98032 m!1038459))

(declare-fun m!1038461 () Bool)

(assert (=> start!98032 m!1038461))

(declare-fun m!1038463 () Bool)

(assert (=> b!1123929 m!1038463))

(declare-fun m!1038465 () Bool)

(assert (=> b!1123929 m!1038465))

(check-sat (not bm!47371) (not mapNonEmpty!44158) tp_is_empty!28227 (not b!1123931) (not b!1123944) (not b!1123946) b_and!38201 (not b!1123933) (not bm!47372) (not b_next!23697) (not b!1123940) (not b!1123937) (not b!1123947) (not b!1123929) (not b!1123945) (not b_lambda!18701) (not b!1123939) (not b!1123943) (not start!98032) (not b!1123932))
(check-sat b_and!38201 (not b_next!23697))
