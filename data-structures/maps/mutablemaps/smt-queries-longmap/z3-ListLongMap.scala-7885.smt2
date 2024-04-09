; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98092 () Bool)

(assert start!98092)

(declare-fun b_free!23757 () Bool)

(declare-fun b_next!23757 () Bool)

(assert (=> start!98092 (= b_free!23757 (not b_next!23757))))

(declare-fun tp!83976 () Bool)

(declare-fun b_and!38319 () Bool)

(assert (=> start!98092 (= tp!83976 b_and!38319)))

(declare-fun mapNonEmpty!44248 () Bool)

(declare-fun mapRes!44248 () Bool)

(declare-fun tp!83975 () Bool)

(declare-fun e!640845 () Bool)

(assert (=> mapNonEmpty!44248 (= mapRes!44248 (and tp!83975 e!640845))))

(declare-datatypes ((V!42843 0))(
  ( (V!42844 (val!14200 Int)) )
))
(declare-datatypes ((ValueCell!13434 0))(
  ( (ValueCellFull!13434 (v!16834 V!42843)) (EmptyCell!13434) )
))
(declare-fun mapRest!44248 () (Array (_ BitVec 32) ValueCell!13434))

(declare-fun mapKey!44248 () (_ BitVec 32))

(declare-datatypes ((array!73396 0))(
  ( (array!73397 (arr!35347 (Array (_ BitVec 32) ValueCell!13434)) (size!35884 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73396)

(declare-fun mapValue!44248 () ValueCell!13434)

(assert (=> mapNonEmpty!44248 (= (arr!35347 _values!996) (store mapRest!44248 mapKey!44248 mapValue!44248))))

(declare-fun mapIsEmpty!44248 () Bool)

(assert (=> mapIsEmpty!44248 mapRes!44248))

(declare-fun b!1125760 () Bool)

(declare-fun res!752322 () Bool)

(declare-fun e!640847 () Bool)

(assert (=> b!1125760 (=> (not res!752322) (not e!640847))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1125760 (= res!752322 (validKeyInArray!0 k0!934))))

(declare-fun b!1125761 () Bool)

(declare-fun e!640844 () Bool)

(declare-datatypes ((tuple2!17932 0))(
  ( (tuple2!17933 (_1!8976 (_ BitVec 64)) (_2!8976 V!42843)) )
))
(declare-datatypes ((List!24759 0))(
  ( (Nil!24756) (Cons!24755 (h!25964 tuple2!17932) (t!35515 List!24759)) )
))
(declare-datatypes ((ListLongMap!15913 0))(
  ( (ListLongMap!15914 (toList!7972 List!24759)) )
))
(declare-fun call!47554 () ListLongMap!15913)

(declare-fun call!47555 () ListLongMap!15913)

(assert (=> b!1125761 (= e!640844 (= call!47554 call!47555))))

(declare-fun b!1125762 () Bool)

(declare-fun res!752332 () Bool)

(assert (=> b!1125762 (=> (not res!752332) (not e!640847))))

(declare-datatypes ((array!73398 0))(
  ( (array!73399 (arr!35348 (Array (_ BitVec 32) (_ BitVec 64))) (size!35885 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73398)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1125762 (= res!752332 (and (= (size!35884 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35885 _keys!1208) (size!35884 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun zeroValue!944 () V!42843)

(declare-fun defaultEntry!1004 () Int)

(declare-fun bm!47551 () Bool)

(declare-fun lt!499956 () array!73396)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun minValue!944 () V!42843)

(declare-fun lt!499961 () array!73398)

(declare-fun getCurrentListMapNoExtraKeys!4431 (array!73398 array!73396 (_ BitVec 32) (_ BitVec 32) V!42843 V!42843 (_ BitVec 32) Int) ListLongMap!15913)

(assert (=> bm!47551 (= call!47554 (getCurrentListMapNoExtraKeys!4431 lt!499961 lt!499956 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun res!752328 () Bool)

(assert (=> start!98092 (=> (not res!752328) (not e!640847))))

(assert (=> start!98092 (= res!752328 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35885 _keys!1208))))))

(assert (=> start!98092 e!640847))

(declare-fun tp_is_empty!28287 () Bool)

(assert (=> start!98092 tp_is_empty!28287))

(declare-fun array_inv!27002 (array!73398) Bool)

(assert (=> start!98092 (array_inv!27002 _keys!1208)))

(assert (=> start!98092 true))

(assert (=> start!98092 tp!83976))

(declare-fun e!640853 () Bool)

(declare-fun array_inv!27003 (array!73396) Bool)

(assert (=> start!98092 (and (array_inv!27003 _values!996) e!640853)))

(declare-fun b!1125763 () Bool)

(declare-fun e!640849 () Bool)

(declare-fun e!640852 () Bool)

(assert (=> b!1125763 (= e!640849 (not e!640852))))

(declare-fun res!752331 () Bool)

(assert (=> b!1125763 (=> res!752331 e!640852)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1125763 (= res!752331 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73398 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1125763 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36839 0))(
  ( (Unit!36840) )
))
(declare-fun lt!499962 () Unit!36839)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73398 (_ BitVec 64) (_ BitVec 32)) Unit!36839)

(assert (=> b!1125763 (= lt!499962 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1125764 () Bool)

(declare-fun e!640846 () Bool)

(assert (=> b!1125764 (= e!640852 e!640846)))

(declare-fun res!752334 () Bool)

(assert (=> b!1125764 (=> res!752334 e!640846)))

(assert (=> b!1125764 (= res!752334 (not (= from!1455 i!673)))))

(declare-fun lt!499958 () ListLongMap!15913)

(assert (=> b!1125764 (= lt!499958 (getCurrentListMapNoExtraKeys!4431 lt!499961 lt!499956 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2515 (Int (_ BitVec 64)) V!42843)

(assert (=> b!1125764 (= lt!499956 (array!73397 (store (arr!35347 _values!996) i!673 (ValueCellFull!13434 (dynLambda!2515 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35884 _values!996)))))

(declare-fun lt!499959 () ListLongMap!15913)

(assert (=> b!1125764 (= lt!499959 (getCurrentListMapNoExtraKeys!4431 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1125765 () Bool)

(declare-fun -!1117 (ListLongMap!15913 (_ BitVec 64)) ListLongMap!15913)

(assert (=> b!1125765 (= e!640844 (= call!47554 (-!1117 call!47555 k0!934)))))

(declare-fun b!1125766 () Bool)

(declare-fun e!640851 () Bool)

(assert (=> b!1125766 (= e!640851 true)))

(declare-fun lt!499960 () Bool)

(declare-fun contains!6481 (ListLongMap!15913 (_ BitVec 64)) Bool)

(assert (=> b!1125766 (= lt!499960 (contains!6481 (getCurrentListMapNoExtraKeys!4431 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-fun b!1125767 () Bool)

(declare-fun res!752329 () Bool)

(assert (=> b!1125767 (=> (not res!752329) (not e!640847))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1125767 (= res!752329 (validMask!0 mask!1564))))

(declare-fun b!1125768 () Bool)

(declare-fun res!752333 () Bool)

(assert (=> b!1125768 (=> (not res!752333) (not e!640849))))

(declare-datatypes ((List!24760 0))(
  ( (Nil!24757) (Cons!24756 (h!25965 (_ BitVec 64)) (t!35516 List!24760)) )
))
(declare-fun arrayNoDuplicates!0 (array!73398 (_ BitVec 32) List!24760) Bool)

(assert (=> b!1125768 (= res!752333 (arrayNoDuplicates!0 lt!499961 #b00000000000000000000000000000000 Nil!24757))))

(declare-fun b!1125769 () Bool)

(assert (=> b!1125769 (= e!640847 e!640849)))

(declare-fun res!752327 () Bool)

(assert (=> b!1125769 (=> (not res!752327) (not e!640849))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73398 (_ BitVec 32)) Bool)

(assert (=> b!1125769 (= res!752327 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!499961 mask!1564))))

(assert (=> b!1125769 (= lt!499961 (array!73399 (store (arr!35348 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35885 _keys!1208)))))

(declare-fun b!1125770 () Bool)

(assert (=> b!1125770 (= e!640846 e!640851)))

(declare-fun res!752324 () Bool)

(assert (=> b!1125770 (=> res!752324 e!640851)))

(assert (=> b!1125770 (= res!752324 (not (= (select (arr!35348 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1125770 e!640844))

(declare-fun c!109586 () Bool)

(assert (=> b!1125770 (= c!109586 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!499957 () Unit!36839)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!371 (array!73398 array!73396 (_ BitVec 32) (_ BitVec 32) V!42843 V!42843 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36839)

(assert (=> b!1125770 (= lt!499957 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!371 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1125771 () Bool)

(assert (=> b!1125771 (= e!640845 tp_is_empty!28287)))

(declare-fun b!1125772 () Bool)

(declare-fun e!640848 () Bool)

(assert (=> b!1125772 (= e!640853 (and e!640848 mapRes!44248))))

(declare-fun condMapEmpty!44248 () Bool)

(declare-fun mapDefault!44248 () ValueCell!13434)

(assert (=> b!1125772 (= condMapEmpty!44248 (= (arr!35347 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13434)) mapDefault!44248)))))

(declare-fun b!1125773 () Bool)

(declare-fun res!752326 () Bool)

(assert (=> b!1125773 (=> (not res!752326) (not e!640847))))

(assert (=> b!1125773 (= res!752326 (= (select (arr!35348 _keys!1208) i!673) k0!934))))

(declare-fun b!1125774 () Bool)

(declare-fun res!752323 () Bool)

(assert (=> b!1125774 (=> (not res!752323) (not e!640847))))

(assert (=> b!1125774 (= res!752323 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35885 _keys!1208))))))

(declare-fun b!1125775 () Bool)

(declare-fun res!752330 () Bool)

(assert (=> b!1125775 (=> (not res!752330) (not e!640847))))

(assert (=> b!1125775 (= res!752330 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24757))))

(declare-fun b!1125776 () Bool)

(assert (=> b!1125776 (= e!640848 tp_is_empty!28287)))

(declare-fun b!1125777 () Bool)

(declare-fun res!752325 () Bool)

(assert (=> b!1125777 (=> (not res!752325) (not e!640847))))

(assert (=> b!1125777 (= res!752325 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!47552 () Bool)

(assert (=> bm!47552 (= call!47555 (getCurrentListMapNoExtraKeys!4431 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (= (and start!98092 res!752328) b!1125767))

(assert (= (and b!1125767 res!752329) b!1125762))

(assert (= (and b!1125762 res!752332) b!1125777))

(assert (= (and b!1125777 res!752325) b!1125775))

(assert (= (and b!1125775 res!752330) b!1125774))

(assert (= (and b!1125774 res!752323) b!1125760))

(assert (= (and b!1125760 res!752322) b!1125773))

(assert (= (and b!1125773 res!752326) b!1125769))

(assert (= (and b!1125769 res!752327) b!1125768))

(assert (= (and b!1125768 res!752333) b!1125763))

(assert (= (and b!1125763 (not res!752331)) b!1125764))

(assert (= (and b!1125764 (not res!752334)) b!1125770))

(assert (= (and b!1125770 c!109586) b!1125765))

(assert (= (and b!1125770 (not c!109586)) b!1125761))

(assert (= (or b!1125765 b!1125761) bm!47551))

(assert (= (or b!1125765 b!1125761) bm!47552))

(assert (= (and b!1125770 (not res!752324)) b!1125766))

(assert (= (and b!1125772 condMapEmpty!44248) mapIsEmpty!44248))

(assert (= (and b!1125772 (not condMapEmpty!44248)) mapNonEmpty!44248))

(get-info :version)

(assert (= (and mapNonEmpty!44248 ((_ is ValueCellFull!13434) mapValue!44248)) b!1125771))

(assert (= (and b!1125772 ((_ is ValueCellFull!13434) mapDefault!44248)) b!1125776))

(assert (= start!98092 b!1125772))

(declare-fun b_lambda!18761 () Bool)

(assert (=> (not b_lambda!18761) (not b!1125764)))

(declare-fun t!35514 () Bool)

(declare-fun tb!8577 () Bool)

(assert (=> (and start!98092 (= defaultEntry!1004 defaultEntry!1004) t!35514) tb!8577))

(declare-fun result!17707 () Bool)

(assert (=> tb!8577 (= result!17707 tp_is_empty!28287)))

(assert (=> b!1125764 t!35514))

(declare-fun b_and!38321 () Bool)

(assert (= b_and!38319 (and (=> t!35514 result!17707) b_and!38321)))

(declare-fun m!1039957 () Bool)

(assert (=> b!1125766 m!1039957))

(assert (=> b!1125766 m!1039957))

(declare-fun m!1039959 () Bool)

(assert (=> b!1125766 m!1039959))

(assert (=> bm!47552 m!1039957))

(declare-fun m!1039961 () Bool)

(assert (=> b!1125764 m!1039961))

(declare-fun m!1039963 () Bool)

(assert (=> b!1125764 m!1039963))

(declare-fun m!1039965 () Bool)

(assert (=> b!1125764 m!1039965))

(declare-fun m!1039967 () Bool)

(assert (=> b!1125764 m!1039967))

(declare-fun m!1039969 () Bool)

(assert (=> b!1125773 m!1039969))

(declare-fun m!1039971 () Bool)

(assert (=> b!1125775 m!1039971))

(declare-fun m!1039973 () Bool)

(assert (=> b!1125777 m!1039973))

(declare-fun m!1039975 () Bool)

(assert (=> mapNonEmpty!44248 m!1039975))

(declare-fun m!1039977 () Bool)

(assert (=> bm!47551 m!1039977))

(declare-fun m!1039979 () Bool)

(assert (=> start!98092 m!1039979))

(declare-fun m!1039981 () Bool)

(assert (=> start!98092 m!1039981))

(declare-fun m!1039983 () Bool)

(assert (=> b!1125765 m!1039983))

(declare-fun m!1039985 () Bool)

(assert (=> b!1125760 m!1039985))

(declare-fun m!1039987 () Bool)

(assert (=> b!1125769 m!1039987))

(declare-fun m!1039989 () Bool)

(assert (=> b!1125769 m!1039989))

(declare-fun m!1039991 () Bool)

(assert (=> b!1125763 m!1039991))

(declare-fun m!1039993 () Bool)

(assert (=> b!1125763 m!1039993))

(declare-fun m!1039995 () Bool)

(assert (=> b!1125767 m!1039995))

(declare-fun m!1039997 () Bool)

(assert (=> b!1125768 m!1039997))

(declare-fun m!1039999 () Bool)

(assert (=> b!1125770 m!1039999))

(declare-fun m!1040001 () Bool)

(assert (=> b!1125770 m!1040001))

(check-sat b_and!38321 (not bm!47552) (not b_lambda!18761) (not bm!47551) (not b!1125775) (not b!1125777) (not b!1125766) (not b!1125769) (not start!98092) (not b!1125760) (not mapNonEmpty!44248) (not b!1125768) (not b!1125764) tp_is_empty!28287 (not b!1125767) (not b_next!23757) (not b!1125765) (not b!1125770) (not b!1125763))
(check-sat b_and!38321 (not b_next!23757))
