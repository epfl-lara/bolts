; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98170 () Bool)

(assert start!98170)

(declare-fun b_free!23835 () Bool)

(declare-fun b_next!23835 () Bool)

(assert (=> start!98170 (= b_free!23835 (not b_next!23835))))

(declare-fun tp!84209 () Bool)

(declare-fun b_and!38475 () Bool)

(assert (=> start!98170 (= tp!84209 b_and!38475)))

(declare-fun b!1127953 () Bool)

(declare-fun e!642021 () Bool)

(declare-fun e!642019 () Bool)

(assert (=> b!1127953 (= e!642021 e!642019)))

(declare-fun res!753863 () Bool)

(assert (=> b!1127953 (=> (not res!753863) (not e!642019))))

(declare-datatypes ((array!73550 0))(
  ( (array!73551 (arr!35424 (Array (_ BitVec 32) (_ BitVec 64))) (size!35961 (_ BitVec 32))) )
))
(declare-fun lt!500772 () array!73550)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73550 (_ BitVec 32)) Bool)

(assert (=> b!1127953 (= res!753863 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!500772 mask!1564))))

(declare-fun _keys!1208 () array!73550)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1127953 (= lt!500772 (array!73551 (store (arr!35424 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35961 _keys!1208)))))

(declare-fun b!1127954 () Bool)

(declare-fun e!642022 () Bool)

(declare-datatypes ((V!42947 0))(
  ( (V!42948 (val!14239 Int)) )
))
(declare-datatypes ((tuple2!18004 0))(
  ( (tuple2!18005 (_1!9012 (_ BitVec 64)) (_2!9012 V!42947)) )
))
(declare-datatypes ((List!24828 0))(
  ( (Nil!24825) (Cons!24824 (h!26033 tuple2!18004) (t!35662 List!24828)) )
))
(declare-datatypes ((ListLongMap!15985 0))(
  ( (ListLongMap!15986 (toList!8008 List!24828)) )
))
(declare-fun call!47788 () ListLongMap!15985)

(declare-fun call!47789 () ListLongMap!15985)

(assert (=> b!1127954 (= e!642022 (= call!47788 call!47789))))

(declare-fun b!1127955 () Bool)

(declare-fun e!642014 () Bool)

(declare-fun e!642015 () Bool)

(assert (=> b!1127955 (= e!642014 e!642015)))

(declare-fun res!753853 () Bool)

(assert (=> b!1127955 (=> res!753853 e!642015)))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1127955 (= res!753853 (not (= (select (arr!35424 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1127955 e!642022))

(declare-fun c!109703 () Bool)

(assert (=> b!1127955 (= c!109703 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun zeroValue!944 () V!42947)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13473 0))(
  ( (ValueCellFull!13473 (v!16873 V!42947)) (EmptyCell!13473) )
))
(declare-datatypes ((array!73552 0))(
  ( (array!73553 (arr!35425 (Array (_ BitVec 32) ValueCell!13473)) (size!35962 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73552)

(declare-fun minValue!944 () V!42947)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((Unit!36903 0))(
  ( (Unit!36904) )
))
(declare-fun lt!500770 () Unit!36903)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!399 (array!73550 array!73552 (_ BitVec 32) (_ BitVec 32) V!42947 V!42947 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36903)

(assert (=> b!1127955 (= lt!500770 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!399 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun res!753862 () Bool)

(assert (=> start!98170 (=> (not res!753862) (not e!642021))))

(assert (=> start!98170 (= res!753862 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35961 _keys!1208))))))

(assert (=> start!98170 e!642021))

(declare-fun tp_is_empty!28365 () Bool)

(assert (=> start!98170 tp_is_empty!28365))

(declare-fun array_inv!27046 (array!73550) Bool)

(assert (=> start!98170 (array_inv!27046 _keys!1208)))

(assert (=> start!98170 true))

(assert (=> start!98170 tp!84209))

(declare-fun e!642018 () Bool)

(declare-fun array_inv!27047 (array!73552) Bool)

(assert (=> start!98170 (and (array_inv!27047 _values!996) e!642018)))

(declare-fun b!1127956 () Bool)

(declare-fun res!753855 () Bool)

(assert (=> b!1127956 (=> (not res!753855) (not e!642021))))

(assert (=> b!1127956 (= res!753855 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1127957 () Bool)

(declare-fun res!753858 () Bool)

(assert (=> b!1127957 (=> (not res!753858) (not e!642021))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1127957 (= res!753858 (validKeyInArray!0 k0!934))))

(declare-fun bm!47785 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4464 (array!73550 array!73552 (_ BitVec 32) (_ BitVec 32) V!42947 V!42947 (_ BitVec 32) Int) ListLongMap!15985)

(assert (=> bm!47785 (= call!47789 (getCurrentListMapNoExtraKeys!4464 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1127958 () Bool)

(declare-fun e!642017 () Bool)

(declare-fun mapRes!44365 () Bool)

(assert (=> b!1127958 (= e!642018 (and e!642017 mapRes!44365))))

(declare-fun condMapEmpty!44365 () Bool)

(declare-fun mapDefault!44365 () ValueCell!13473)

(assert (=> b!1127958 (= condMapEmpty!44365 (= (arr!35425 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13473)) mapDefault!44365)))))

(declare-fun b!1127959 () Bool)

(declare-fun res!753861 () Bool)

(assert (=> b!1127959 (=> (not res!753861) (not e!642021))))

(assert (=> b!1127959 (= res!753861 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35961 _keys!1208))))))

(declare-fun b!1127960 () Bool)

(declare-fun e!642023 () Bool)

(assert (=> b!1127960 (= e!642023 e!642014)))

(declare-fun res!753860 () Bool)

(assert (=> b!1127960 (=> res!753860 e!642014)))

(assert (=> b!1127960 (= res!753860 (not (= from!1455 i!673)))))

(declare-fun lt!500768 () ListLongMap!15985)

(declare-fun lt!500771 () array!73552)

(assert (=> b!1127960 (= lt!500768 (getCurrentListMapNoExtraKeys!4464 lt!500772 lt!500771 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2542 (Int (_ BitVec 64)) V!42947)

(assert (=> b!1127960 (= lt!500771 (array!73553 (store (arr!35425 _values!996) i!673 (ValueCellFull!13473 (dynLambda!2542 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35962 _values!996)))))

(declare-fun lt!500769 () ListLongMap!15985)

(assert (=> b!1127960 (= lt!500769 (getCurrentListMapNoExtraKeys!4464 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1127961 () Bool)

(declare-fun res!753852 () Bool)

(assert (=> b!1127961 (=> (not res!753852) (not e!642019))))

(declare-datatypes ((List!24829 0))(
  ( (Nil!24826) (Cons!24825 (h!26034 (_ BitVec 64)) (t!35663 List!24829)) )
))
(declare-fun arrayNoDuplicates!0 (array!73550 (_ BitVec 32) List!24829) Bool)

(assert (=> b!1127961 (= res!753852 (arrayNoDuplicates!0 lt!500772 #b00000000000000000000000000000000 Nil!24826))))

(declare-fun b!1127962 () Bool)

(declare-fun e!642020 () Bool)

(assert (=> b!1127962 (= e!642020 tp_is_empty!28365)))

(declare-fun b!1127963 () Bool)

(declare-fun res!753857 () Bool)

(assert (=> b!1127963 (=> (not res!753857) (not e!642021))))

(assert (=> b!1127963 (= res!753857 (and (= (size!35962 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35961 _keys!1208) (size!35962 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!44365 () Bool)

(declare-fun tp!84210 () Bool)

(assert (=> mapNonEmpty!44365 (= mapRes!44365 (and tp!84210 e!642020))))

(declare-fun mapKey!44365 () (_ BitVec 32))

(declare-fun mapRest!44365 () (Array (_ BitVec 32) ValueCell!13473))

(declare-fun mapValue!44365 () ValueCell!13473)

(assert (=> mapNonEmpty!44365 (= (arr!35425 _values!996) (store mapRest!44365 mapKey!44365 mapValue!44365))))

(declare-fun b!1127964 () Bool)

(declare-fun -!1144 (ListLongMap!15985 (_ BitVec 64)) ListLongMap!15985)

(assert (=> b!1127964 (= e!642022 (= call!47788 (-!1144 call!47789 k0!934)))))

(declare-fun b!1127965 () Bool)

(assert (=> b!1127965 (= e!642017 tp_is_empty!28365)))

(declare-fun b!1127966 () Bool)

(declare-fun res!753854 () Bool)

(assert (=> b!1127966 (=> (not res!753854) (not e!642021))))

(assert (=> b!1127966 (= res!753854 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24826))))

(declare-fun bm!47786 () Bool)

(assert (=> bm!47786 (= call!47788 (getCurrentListMapNoExtraKeys!4464 lt!500772 lt!500771 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1127967 () Bool)

(declare-fun res!753856 () Bool)

(assert (=> b!1127967 (=> (not res!753856) (not e!642021))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1127967 (= res!753856 (validMask!0 mask!1564))))

(declare-fun mapIsEmpty!44365 () Bool)

(assert (=> mapIsEmpty!44365 mapRes!44365))

(declare-fun b!1127968 () Bool)

(declare-fun res!753864 () Bool)

(assert (=> b!1127968 (=> (not res!753864) (not e!642021))))

(assert (=> b!1127968 (= res!753864 (= (select (arr!35424 _keys!1208) i!673) k0!934))))

(declare-fun b!1127969 () Bool)

(assert (=> b!1127969 (= e!642019 (not e!642023))))

(declare-fun res!753859 () Bool)

(assert (=> b!1127969 (=> res!753859 e!642023)))

(assert (=> b!1127969 (= res!753859 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73550 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1127969 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!500767 () Unit!36903)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73550 (_ BitVec 64) (_ BitVec 32)) Unit!36903)

(assert (=> b!1127969 (= lt!500767 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1127970 () Bool)

(assert (=> b!1127970 (= e!642015 true)))

(declare-fun lt!500766 () Bool)

(declare-fun contains!6508 (ListLongMap!15985 (_ BitVec 64)) Bool)

(assert (=> b!1127970 (= lt!500766 (contains!6508 (getCurrentListMapNoExtraKeys!4464 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(assert (= (and start!98170 res!753862) b!1127967))

(assert (= (and b!1127967 res!753856) b!1127963))

(assert (= (and b!1127963 res!753857) b!1127956))

(assert (= (and b!1127956 res!753855) b!1127966))

(assert (= (and b!1127966 res!753854) b!1127959))

(assert (= (and b!1127959 res!753861) b!1127957))

(assert (= (and b!1127957 res!753858) b!1127968))

(assert (= (and b!1127968 res!753864) b!1127953))

(assert (= (and b!1127953 res!753863) b!1127961))

(assert (= (and b!1127961 res!753852) b!1127969))

(assert (= (and b!1127969 (not res!753859)) b!1127960))

(assert (= (and b!1127960 (not res!753860)) b!1127955))

(assert (= (and b!1127955 c!109703) b!1127964))

(assert (= (and b!1127955 (not c!109703)) b!1127954))

(assert (= (or b!1127964 b!1127954) bm!47786))

(assert (= (or b!1127964 b!1127954) bm!47785))

(assert (= (and b!1127955 (not res!753853)) b!1127970))

(assert (= (and b!1127958 condMapEmpty!44365) mapIsEmpty!44365))

(assert (= (and b!1127958 (not condMapEmpty!44365)) mapNonEmpty!44365))

(get-info :version)

(assert (= (and mapNonEmpty!44365 ((_ is ValueCellFull!13473) mapValue!44365)) b!1127962))

(assert (= (and b!1127958 ((_ is ValueCellFull!13473) mapDefault!44365)) b!1127965))

(assert (= start!98170 b!1127958))

(declare-fun b_lambda!18839 () Bool)

(assert (=> (not b_lambda!18839) (not b!1127960)))

(declare-fun t!35661 () Bool)

(declare-fun tb!8655 () Bool)

(assert (=> (and start!98170 (= defaultEntry!1004 defaultEntry!1004) t!35661) tb!8655))

(declare-fun result!17863 () Bool)

(assert (=> tb!8655 (= result!17863 tp_is_empty!28365)))

(assert (=> b!1127960 t!35661))

(declare-fun b_and!38477 () Bool)

(assert (= b_and!38475 (and (=> t!35661 result!17863) b_and!38477)))

(declare-fun m!1041755 () Bool)

(assert (=> b!1127955 m!1041755))

(declare-fun m!1041757 () Bool)

(assert (=> b!1127955 m!1041757))

(declare-fun m!1041759 () Bool)

(assert (=> b!1127970 m!1041759))

(assert (=> b!1127970 m!1041759))

(declare-fun m!1041761 () Bool)

(assert (=> b!1127970 m!1041761))

(declare-fun m!1041763 () Bool)

(assert (=> b!1127969 m!1041763))

(declare-fun m!1041765 () Bool)

(assert (=> b!1127969 m!1041765))

(declare-fun m!1041767 () Bool)

(assert (=> b!1127957 m!1041767))

(declare-fun m!1041769 () Bool)

(assert (=> b!1127964 m!1041769))

(declare-fun m!1041771 () Bool)

(assert (=> b!1127968 m!1041771))

(declare-fun m!1041773 () Bool)

(assert (=> b!1127953 m!1041773))

(declare-fun m!1041775 () Bool)

(assert (=> b!1127953 m!1041775))

(declare-fun m!1041777 () Bool)

(assert (=> b!1127966 m!1041777))

(declare-fun m!1041779 () Bool)

(assert (=> b!1127967 m!1041779))

(declare-fun m!1041781 () Bool)

(assert (=> mapNonEmpty!44365 m!1041781))

(declare-fun m!1041783 () Bool)

(assert (=> b!1127961 m!1041783))

(assert (=> bm!47785 m!1041759))

(declare-fun m!1041785 () Bool)

(assert (=> b!1127960 m!1041785))

(declare-fun m!1041787 () Bool)

(assert (=> b!1127960 m!1041787))

(declare-fun m!1041789 () Bool)

(assert (=> b!1127960 m!1041789))

(declare-fun m!1041791 () Bool)

(assert (=> b!1127960 m!1041791))

(declare-fun m!1041793 () Bool)

(assert (=> bm!47786 m!1041793))

(declare-fun m!1041795 () Bool)

(assert (=> b!1127956 m!1041795))

(declare-fun m!1041797 () Bool)

(assert (=> start!98170 m!1041797))

(declare-fun m!1041799 () Bool)

(assert (=> start!98170 m!1041799))

(check-sat (not b_lambda!18839) (not b!1127960) (not start!98170) (not bm!47786) (not b!1127967) (not b!1127964) (not b!1127957) (not b!1127966) (not b!1127956) (not b!1127953) b_and!38477 tp_is_empty!28365 (not b!1127970) (not b!1127955) (not bm!47785) (not b!1127969) (not b!1127961) (not mapNonEmpty!44365) (not b_next!23835))
(check-sat b_and!38477 (not b_next!23835))
