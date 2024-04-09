; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98194 () Bool)

(assert start!98194)

(declare-fun b_free!23859 () Bool)

(declare-fun b_next!23859 () Bool)

(assert (=> start!98194 (= b_free!23859 (not b_next!23859))))

(declare-fun tp!84282 () Bool)

(declare-fun b_and!38523 () Bool)

(assert (=> start!98194 (= tp!84282 b_and!38523)))

(declare-fun mapNonEmpty!44401 () Bool)

(declare-fun mapRes!44401 () Bool)

(declare-fun tp!84281 () Bool)

(declare-fun e!642375 () Bool)

(assert (=> mapNonEmpty!44401 (= mapRes!44401 (and tp!84281 e!642375))))

(declare-datatypes ((V!42979 0))(
  ( (V!42980 (val!14251 Int)) )
))
(declare-datatypes ((ValueCell!13485 0))(
  ( (ValueCellFull!13485 (v!16885 V!42979)) (EmptyCell!13485) )
))
(declare-fun mapRest!44401 () (Array (_ BitVec 32) ValueCell!13485))

(declare-fun mapValue!44401 () ValueCell!13485)

(declare-fun mapKey!44401 () (_ BitVec 32))

(declare-datatypes ((array!73596 0))(
  ( (array!73597 (arr!35447 (Array (_ BitVec 32) ValueCell!13485)) (size!35984 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73596)

(assert (=> mapNonEmpty!44401 (= (arr!35447 _values!996) (store mapRest!44401 mapKey!44401 mapValue!44401))))

(declare-fun b!1128630 () Bool)

(declare-fun e!642382 () Bool)

(declare-fun e!642377 () Bool)

(assert (=> b!1128630 (= e!642382 e!642377)))

(declare-fun res!754330 () Bool)

(assert (=> b!1128630 (=> res!754330 e!642377)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1128630 (= res!754330 (not (= from!1455 i!673)))))

(declare-datatypes ((array!73598 0))(
  ( (array!73599 (arr!35448 (Array (_ BitVec 32) (_ BitVec 64))) (size!35985 (_ BitVec 32))) )
))
(declare-fun lt!501015 () array!73598)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun lt!501017 () array!73596)

(declare-fun minValue!944 () V!42979)

(declare-datatypes ((tuple2!18026 0))(
  ( (tuple2!18027 (_1!9023 (_ BitVec 64)) (_2!9023 V!42979)) )
))
(declare-datatypes ((List!24846 0))(
  ( (Nil!24843) (Cons!24842 (h!26051 tuple2!18026) (t!35704 List!24846)) )
))
(declare-datatypes ((ListLongMap!16007 0))(
  ( (ListLongMap!16008 (toList!8019 List!24846)) )
))
(declare-fun lt!501013 () ListLongMap!16007)

(declare-fun zeroValue!944 () V!42979)

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!4473 (array!73598 array!73596 (_ BitVec 32) (_ BitVec 32) V!42979 V!42979 (_ BitVec 32) Int) ListLongMap!16007)

(assert (=> b!1128630 (= lt!501013 (getCurrentListMapNoExtraKeys!4473 lt!501015 lt!501017 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2551 (Int (_ BitVec 64)) V!42979)

(assert (=> b!1128630 (= lt!501017 (array!73597 (store (arr!35447 _values!996) i!673 (ValueCellFull!13485 (dynLambda!2551 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35984 _values!996)))))

(declare-fun _keys!1208 () array!73598)

(declare-fun lt!501014 () ListLongMap!16007)

(assert (=> b!1128630 (= lt!501014 (getCurrentListMapNoExtraKeys!4473 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1128631 () Bool)

(declare-fun tp_is_empty!28389 () Bool)

(assert (=> b!1128631 (= e!642375 tp_is_empty!28389)))

(declare-fun b!1128632 () Bool)

(declare-fun e!642374 () Bool)

(assert (=> b!1128632 (= e!642374 (not e!642382))))

(declare-fun res!754335 () Bool)

(assert (=> b!1128632 (=> res!754335 e!642382)))

(assert (=> b!1128632 (= res!754335 (bvsgt from!1455 i!673))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!73598 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1128632 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36923 0))(
  ( (Unit!36924) )
))
(declare-fun lt!501018 () Unit!36923)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73598 (_ BitVec 64) (_ BitVec 32)) Unit!36923)

(assert (=> b!1128632 (= lt!501018 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1128633 () Bool)

(declare-fun res!754327 () Bool)

(declare-fun e!642383 () Bool)

(assert (=> b!1128633 (=> (not res!754327) (not e!642383))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1128633 (= res!754327 (validMask!0 mask!1564))))

(declare-fun b!1128634 () Bool)

(declare-fun e!642378 () Bool)

(assert (=> b!1128634 (= e!642377 e!642378)))

(declare-fun res!754333 () Bool)

(assert (=> b!1128634 (=> res!754333 e!642378)))

(assert (=> b!1128634 (= res!754333 (not (= (select (arr!35448 _keys!1208) from!1455) k0!934)))))

(declare-fun e!642380 () Bool)

(assert (=> b!1128634 e!642380))

(declare-fun c!109739 () Bool)

(assert (=> b!1128634 (= c!109739 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!501016 () Unit!36923)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!407 (array!73598 array!73596 (_ BitVec 32) (_ BitVec 32) V!42979 V!42979 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36923)

(assert (=> b!1128634 (= lt!501016 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!407 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun call!47860 () ListLongMap!16007)

(declare-fun b!1128635 () Bool)

(declare-fun call!47861 () ListLongMap!16007)

(declare-fun -!1154 (ListLongMap!16007 (_ BitVec 64)) ListLongMap!16007)

(assert (=> b!1128635 (= e!642380 (= call!47861 (-!1154 call!47860 k0!934)))))

(declare-fun bm!47857 () Bool)

(assert (=> bm!47857 (= call!47860 (getCurrentListMapNoExtraKeys!4473 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1128636 () Bool)

(declare-fun res!754337 () Bool)

(assert (=> b!1128636 (=> (not res!754337) (not e!642383))))

(declare-datatypes ((List!24847 0))(
  ( (Nil!24844) (Cons!24843 (h!26052 (_ BitVec 64)) (t!35705 List!24847)) )
))
(declare-fun arrayNoDuplicates!0 (array!73598 (_ BitVec 32) List!24847) Bool)

(assert (=> b!1128636 (= res!754337 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24844))))

(declare-fun b!1128637 () Bool)

(declare-fun res!754332 () Bool)

(assert (=> b!1128637 (=> (not res!754332) (not e!642383))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1128637 (= res!754332 (validKeyInArray!0 k0!934))))

(declare-fun b!1128638 () Bool)

(declare-fun res!754336 () Bool)

(assert (=> b!1128638 (=> (not res!754336) (not e!642374))))

(assert (=> b!1128638 (= res!754336 (arrayNoDuplicates!0 lt!501015 #b00000000000000000000000000000000 Nil!24844))))

(declare-fun b!1128639 () Bool)

(assert (=> b!1128639 (= e!642378 (or (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1455) (size!35985 _keys!1208)))))))

(declare-fun b!1128640 () Bool)

(declare-fun e!642379 () Bool)

(assert (=> b!1128640 (= e!642379 tp_is_empty!28389)))

(declare-fun b!1128641 () Bool)

(declare-fun res!754338 () Bool)

(assert (=> b!1128641 (=> res!754338 e!642378)))

(declare-fun contains!6514 (ListLongMap!16007 (_ BitVec 64)) Bool)

(assert (=> b!1128641 (= res!754338 (not (contains!6514 (getCurrentListMapNoExtraKeys!4473 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934)))))

(declare-fun b!1128642 () Bool)

(declare-fun res!754328 () Bool)

(assert (=> b!1128642 (=> (not res!754328) (not e!642383))))

(assert (=> b!1128642 (= res!754328 (= (select (arr!35448 _keys!1208) i!673) k0!934))))

(declare-fun mapIsEmpty!44401 () Bool)

(assert (=> mapIsEmpty!44401 mapRes!44401))

(declare-fun res!754329 () Bool)

(assert (=> start!98194 (=> (not res!754329) (not e!642383))))

(assert (=> start!98194 (= res!754329 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35985 _keys!1208))))))

(assert (=> start!98194 e!642383))

(assert (=> start!98194 tp_is_empty!28389))

(declare-fun array_inv!27062 (array!73598) Bool)

(assert (=> start!98194 (array_inv!27062 _keys!1208)))

(assert (=> start!98194 true))

(assert (=> start!98194 tp!84282))

(declare-fun e!642381 () Bool)

(declare-fun array_inv!27063 (array!73596) Bool)

(assert (=> start!98194 (and (array_inv!27063 _values!996) e!642381)))

(declare-fun b!1128643 () Bool)

(declare-fun res!754331 () Bool)

(assert (=> b!1128643 (=> (not res!754331) (not e!642383))))

(assert (=> b!1128643 (= res!754331 (and (= (size!35984 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35985 _keys!1208) (size!35984 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1128644 () Bool)

(declare-fun res!754325 () Bool)

(assert (=> b!1128644 (=> (not res!754325) (not e!642383))))

(assert (=> b!1128644 (= res!754325 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35985 _keys!1208))))))

(declare-fun b!1128645 () Bool)

(assert (=> b!1128645 (= e!642383 e!642374)))

(declare-fun res!754334 () Bool)

(assert (=> b!1128645 (=> (not res!754334) (not e!642374))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73598 (_ BitVec 32)) Bool)

(assert (=> b!1128645 (= res!754334 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!501015 mask!1564))))

(assert (=> b!1128645 (= lt!501015 (array!73599 (store (arr!35448 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35985 _keys!1208)))))

(declare-fun b!1128646 () Bool)

(assert (=> b!1128646 (= e!642381 (and e!642379 mapRes!44401))))

(declare-fun condMapEmpty!44401 () Bool)

(declare-fun mapDefault!44401 () ValueCell!13485)

(assert (=> b!1128646 (= condMapEmpty!44401 (= (arr!35447 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13485)) mapDefault!44401)))))

(declare-fun bm!47858 () Bool)

(assert (=> bm!47858 (= call!47861 (getCurrentListMapNoExtraKeys!4473 lt!501015 lt!501017 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1128647 () Bool)

(declare-fun res!754326 () Bool)

(assert (=> b!1128647 (=> (not res!754326) (not e!642383))))

(assert (=> b!1128647 (= res!754326 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1128648 () Bool)

(assert (=> b!1128648 (= e!642380 (= call!47861 call!47860))))

(assert (= (and start!98194 res!754329) b!1128633))

(assert (= (and b!1128633 res!754327) b!1128643))

(assert (= (and b!1128643 res!754331) b!1128647))

(assert (= (and b!1128647 res!754326) b!1128636))

(assert (= (and b!1128636 res!754337) b!1128644))

(assert (= (and b!1128644 res!754325) b!1128637))

(assert (= (and b!1128637 res!754332) b!1128642))

(assert (= (and b!1128642 res!754328) b!1128645))

(assert (= (and b!1128645 res!754334) b!1128638))

(assert (= (and b!1128638 res!754336) b!1128632))

(assert (= (and b!1128632 (not res!754335)) b!1128630))

(assert (= (and b!1128630 (not res!754330)) b!1128634))

(assert (= (and b!1128634 c!109739) b!1128635))

(assert (= (and b!1128634 (not c!109739)) b!1128648))

(assert (= (or b!1128635 b!1128648) bm!47857))

(assert (= (or b!1128635 b!1128648) bm!47858))

(assert (= (and b!1128634 (not res!754333)) b!1128641))

(assert (= (and b!1128641 (not res!754338)) b!1128639))

(assert (= (and b!1128646 condMapEmpty!44401) mapIsEmpty!44401))

(assert (= (and b!1128646 (not condMapEmpty!44401)) mapNonEmpty!44401))

(get-info :version)

(assert (= (and mapNonEmpty!44401 ((_ is ValueCellFull!13485) mapValue!44401)) b!1128631))

(assert (= (and b!1128646 ((_ is ValueCellFull!13485) mapDefault!44401)) b!1128640))

(assert (= start!98194 b!1128646))

(declare-fun b_lambda!18863 () Bool)

(assert (=> (not b_lambda!18863) (not b!1128630)))

(declare-fun t!35703 () Bool)

(declare-fun tb!8679 () Bool)

(assert (=> (and start!98194 (= defaultEntry!1004 defaultEntry!1004) t!35703) tb!8679))

(declare-fun result!17911 () Bool)

(assert (=> tb!8679 (= result!17911 tp_is_empty!28389)))

(assert (=> b!1128630 t!35703))

(declare-fun b_and!38525 () Bool)

(assert (= b_and!38523 (and (=> t!35703 result!17911) b_and!38525)))

(declare-fun m!1042307 () Bool)

(assert (=> b!1128638 m!1042307))

(declare-fun m!1042309 () Bool)

(assert (=> b!1128645 m!1042309))

(declare-fun m!1042311 () Bool)

(assert (=> b!1128645 m!1042311))

(declare-fun m!1042313 () Bool)

(assert (=> b!1128630 m!1042313))

(declare-fun m!1042315 () Bool)

(assert (=> b!1128630 m!1042315))

(declare-fun m!1042317 () Bool)

(assert (=> b!1128630 m!1042317))

(declare-fun m!1042319 () Bool)

(assert (=> b!1128630 m!1042319))

(declare-fun m!1042321 () Bool)

(assert (=> b!1128647 m!1042321))

(declare-fun m!1042323 () Bool)

(assert (=> b!1128633 m!1042323))

(declare-fun m!1042325 () Bool)

(assert (=> b!1128632 m!1042325))

(declare-fun m!1042327 () Bool)

(assert (=> b!1128632 m!1042327))

(declare-fun m!1042329 () Bool)

(assert (=> b!1128641 m!1042329))

(assert (=> b!1128641 m!1042329))

(declare-fun m!1042331 () Bool)

(assert (=> b!1128641 m!1042331))

(declare-fun m!1042333 () Bool)

(assert (=> b!1128635 m!1042333))

(declare-fun m!1042335 () Bool)

(assert (=> mapNonEmpty!44401 m!1042335))

(declare-fun m!1042337 () Bool)

(assert (=> bm!47858 m!1042337))

(declare-fun m!1042339 () Bool)

(assert (=> b!1128642 m!1042339))

(declare-fun m!1042341 () Bool)

(assert (=> b!1128636 m!1042341))

(declare-fun m!1042343 () Bool)

(assert (=> start!98194 m!1042343))

(declare-fun m!1042345 () Bool)

(assert (=> start!98194 m!1042345))

(declare-fun m!1042347 () Bool)

(assert (=> b!1128634 m!1042347))

(declare-fun m!1042349 () Bool)

(assert (=> b!1128634 m!1042349))

(declare-fun m!1042351 () Bool)

(assert (=> b!1128637 m!1042351))

(assert (=> bm!47857 m!1042329))

(check-sat (not b!1128645) (not b_next!23859) b_and!38525 (not b!1128630) (not bm!47858) (not b!1128634) (not b_lambda!18863) (not b!1128633) (not b!1128641) (not mapNonEmpty!44401) (not b!1128638) (not b!1128647) (not b!1128637) (not bm!47857) tp_is_empty!28389 (not b!1128636) (not b!1128632) (not b!1128635) (not start!98194))
(check-sat b_and!38525 (not b_next!23859))
