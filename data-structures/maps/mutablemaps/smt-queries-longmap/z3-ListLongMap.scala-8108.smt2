; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99552 () Bool)

(assert start!99552)

(declare-fun b_free!25095 () Bool)

(declare-fun b_next!25095 () Bool)

(assert (=> start!99552 (= b_free!25095 (not b_next!25095))))

(declare-fun tp!87999 () Bool)

(declare-fun b_and!41071 () Bool)

(assert (=> start!99552 (= tp!87999 b_and!41071)))

(declare-fun mapNonEmpty!46265 () Bool)

(declare-fun mapRes!46265 () Bool)

(declare-fun tp!88000 () Bool)

(declare-fun e!669037 () Bool)

(assert (=> mapNonEmpty!46265 (= mapRes!46265 (and tp!88000 e!669037))))

(declare-fun mapKey!46265 () (_ BitVec 32))

(declare-datatypes ((V!44627 0))(
  ( (V!44628 (val!14869 Int)) )
))
(declare-datatypes ((ValueCell!14103 0))(
  ( (ValueCellFull!14103 (v!17508 V!44627)) (EmptyCell!14103) )
))
(declare-fun mapRest!46265 () (Array (_ BitVec 32) ValueCell!14103))

(declare-fun mapValue!46265 () ValueCell!14103)

(declare-datatypes ((array!76026 0))(
  ( (array!76027 (arr!36659 (Array (_ BitVec 32) ValueCell!14103)) (size!37196 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76026)

(assert (=> mapNonEmpty!46265 (= (arr!36659 _values!996) (store mapRest!46265 mapKey!46265 mapValue!46265))))

(declare-fun b!1176866 () Bool)

(declare-fun tp_is_empty!29625 () Bool)

(assert (=> b!1176866 (= e!669037 tp_is_empty!29625)))

(declare-fun b!1176867 () Bool)

(declare-fun res!781798 () Bool)

(declare-fun e!669035 () Bool)

(assert (=> b!1176867 (=> (not res!781798) (not e!669035))))

(declare-datatypes ((array!76028 0))(
  ( (array!76029 (arr!36660 (Array (_ BitVec 32) (_ BitVec 64))) (size!37197 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76028)

(declare-datatypes ((List!25903 0))(
  ( (Nil!25900) (Cons!25899 (h!27108 (_ BitVec 64)) (t!37997 List!25903)) )
))
(declare-fun arrayNoDuplicates!0 (array!76028 (_ BitVec 32) List!25903) Bool)

(assert (=> b!1176867 (= res!781798 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25900))))

(declare-fun res!781796 () Bool)

(assert (=> start!99552 (=> (not res!781796) (not e!669035))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!99552 (= res!781796 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37197 _keys!1208))))))

(assert (=> start!99552 e!669035))

(assert (=> start!99552 tp_is_empty!29625))

(declare-fun array_inv!27884 (array!76028) Bool)

(assert (=> start!99552 (array_inv!27884 _keys!1208)))

(assert (=> start!99552 true))

(assert (=> start!99552 tp!87999))

(declare-fun e!669032 () Bool)

(declare-fun array_inv!27885 (array!76026) Bool)

(assert (=> start!99552 (and (array_inv!27885 _values!996) e!669032)))

(declare-fun b!1176868 () Bool)

(declare-fun e!669041 () Bool)

(assert (=> b!1176868 (= e!669032 (and e!669041 mapRes!46265))))

(declare-fun condMapEmpty!46265 () Bool)

(declare-fun mapDefault!46265 () ValueCell!14103)

(assert (=> b!1176868 (= condMapEmpty!46265 (= (arr!36659 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14103)) mapDefault!46265)))))

(declare-fun mapIsEmpty!46265 () Bool)

(assert (=> mapIsEmpty!46265 mapRes!46265))

(declare-fun b!1176869 () Bool)

(declare-fun res!781792 () Bool)

(assert (=> b!1176869 (=> (not res!781792) (not e!669035))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1176869 (= res!781792 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37197 _keys!1208))))))

(declare-fun b!1176870 () Bool)

(declare-fun e!669042 () Bool)

(declare-fun e!669034 () Bool)

(assert (=> b!1176870 (= e!669042 e!669034)))

(declare-fun res!781786 () Bool)

(assert (=> b!1176870 (=> res!781786 e!669034)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1176870 (= res!781786 (not (validKeyInArray!0 (select (arr!36660 _keys!1208) from!1455))))))

(declare-datatypes ((tuple2!19136 0))(
  ( (tuple2!19137 (_1!9578 (_ BitVec 64)) (_2!9578 V!44627)) )
))
(declare-datatypes ((List!25904 0))(
  ( (Nil!25901) (Cons!25900 (h!27109 tuple2!19136) (t!37998 List!25904)) )
))
(declare-datatypes ((ListLongMap!17117 0))(
  ( (ListLongMap!17118 (toList!8574 List!25904)) )
))
(declare-fun lt!531254 () ListLongMap!17117)

(declare-fun lt!531261 () ListLongMap!17117)

(assert (=> b!1176870 (= lt!531254 lt!531261)))

(declare-fun lt!531258 () ListLongMap!17117)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun -!1577 (ListLongMap!17117 (_ BitVec 64)) ListLongMap!17117)

(assert (=> b!1176870 (= lt!531261 (-!1577 lt!531258 k0!934))))

(declare-fun zeroValue!944 () V!44627)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!531262 () array!76026)

(declare-fun lt!531256 () array!76028)

(declare-fun minValue!944 () V!44627)

(declare-fun getCurrentListMapNoExtraKeys!5005 (array!76028 array!76026 (_ BitVec 32) (_ BitVec 32) V!44627 V!44627 (_ BitVec 32) Int) ListLongMap!17117)

(assert (=> b!1176870 (= lt!531254 (getCurrentListMapNoExtraKeys!5005 lt!531256 lt!531262 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1176870 (= lt!531258 (getCurrentListMapNoExtraKeys!5005 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-datatypes ((Unit!38790 0))(
  ( (Unit!38791) )
))
(declare-fun lt!531251 () Unit!38790)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!801 (array!76028 array!76026 (_ BitVec 32) (_ BitVec 32) V!44627 V!44627 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38790)

(assert (=> b!1176870 (= lt!531251 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!801 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun e!669038 () Bool)

(declare-fun b!1176871 () Bool)

(declare-fun arrayContainsKey!0 (array!76028 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1176871 (= e!669038 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1176872 () Bool)

(declare-fun res!781791 () Bool)

(assert (=> b!1176872 (=> (not res!781791) (not e!669035))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1176872 (= res!781791 (validMask!0 mask!1564))))

(declare-fun b!1176873 () Bool)

(declare-fun e!669040 () Unit!38790)

(declare-fun Unit!38792 () Unit!38790)

(assert (=> b!1176873 (= e!669040 Unit!38792)))

(declare-fun b!1176874 () Bool)

(declare-fun res!781787 () Bool)

(assert (=> b!1176874 (=> (not res!781787) (not e!669035))))

(assert (=> b!1176874 (= res!781787 (validKeyInArray!0 k0!934))))

(declare-fun b!1176875 () Bool)

(declare-fun e!669031 () Bool)

(assert (=> b!1176875 (= e!669031 e!669042)))

(declare-fun res!781785 () Bool)

(assert (=> b!1176875 (=> res!781785 e!669042)))

(assert (=> b!1176875 (= res!781785 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!531255 () ListLongMap!17117)

(assert (=> b!1176875 (= lt!531255 (getCurrentListMapNoExtraKeys!5005 lt!531256 lt!531262 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!531264 () V!44627)

(assert (=> b!1176875 (= lt!531262 (array!76027 (store (arr!36659 _values!996) i!673 (ValueCellFull!14103 lt!531264)) (size!37196 _values!996)))))

(declare-fun dynLambda!2981 (Int (_ BitVec 64)) V!44627)

(assert (=> b!1176875 (= lt!531264 (dynLambda!2981 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!531257 () ListLongMap!17117)

(assert (=> b!1176875 (= lt!531257 (getCurrentListMapNoExtraKeys!5005 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1176876 () Bool)

(declare-fun e!669033 () Bool)

(assert (=> b!1176876 (= e!669033 e!669038)))

(declare-fun res!781793 () Bool)

(assert (=> b!1176876 (=> res!781793 e!669038)))

(assert (=> b!1176876 (= res!781793 (not (= (select (arr!36660 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1176877 () Bool)

(declare-fun res!781795 () Bool)

(assert (=> b!1176877 (=> (not res!781795) (not e!669035))))

(assert (=> b!1176877 (= res!781795 (and (= (size!37196 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37197 _keys!1208) (size!37196 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun e!669043 () Bool)

(declare-fun lt!531252 () tuple2!19136)

(declare-fun b!1176878 () Bool)

(declare-fun +!3797 (ListLongMap!17117 tuple2!19136) ListLongMap!17117)

(assert (=> b!1176878 (= e!669043 (= lt!531257 (+!3797 lt!531258 lt!531252)))))

(declare-fun b!1176879 () Bool)

(declare-fun e!669036 () Bool)

(assert (=> b!1176879 (= e!669036 (not e!669031))))

(declare-fun res!781790 () Bool)

(assert (=> b!1176879 (=> res!781790 e!669031)))

(assert (=> b!1176879 (= res!781790 (bvsgt from!1455 i!673))))

(assert (=> b!1176879 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!531259 () Unit!38790)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76028 (_ BitVec 64) (_ BitVec 32)) Unit!38790)

(assert (=> b!1176879 (= lt!531259 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1176880 () Bool)

(declare-fun res!781784 () Bool)

(assert (=> b!1176880 (=> (not res!781784) (not e!669035))))

(assert (=> b!1176880 (= res!781784 (= (select (arr!36660 _keys!1208) i!673) k0!934))))

(declare-fun b!1176881 () Bool)

(declare-fun res!781797 () Bool)

(assert (=> b!1176881 (=> (not res!781797) (not e!669035))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76028 (_ BitVec 32)) Bool)

(assert (=> b!1176881 (= res!781797 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1176882 () Bool)

(assert (=> b!1176882 (= e!669035 e!669036)))

(declare-fun res!781788 () Bool)

(assert (=> b!1176882 (=> (not res!781788) (not e!669036))))

(assert (=> b!1176882 (= res!781788 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!531256 mask!1564))))

(assert (=> b!1176882 (= lt!531256 (array!76029 (store (arr!36660 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37197 _keys!1208)))))

(declare-fun b!1176883 () Bool)

(declare-fun res!781789 () Bool)

(assert (=> b!1176883 (=> (not res!781789) (not e!669036))))

(assert (=> b!1176883 (= res!781789 (arrayNoDuplicates!0 lt!531256 #b00000000000000000000000000000000 Nil!25900))))

(declare-fun b!1176884 () Bool)

(assert (=> b!1176884 (= e!669041 tp_is_empty!29625)))

(declare-fun b!1176885 () Bool)

(declare-fun Unit!38793 () Unit!38790)

(assert (=> b!1176885 (= e!669040 Unit!38793)))

(declare-fun lt!531253 () Unit!38790)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76028 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38790)

(assert (=> b!1176885 (= lt!531253 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1176885 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!531263 () Unit!38790)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76028 (_ BitVec 32) (_ BitVec 32)) Unit!38790)

(assert (=> b!1176885 (= lt!531263 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1176885 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25900)))

(declare-fun lt!531260 () Unit!38790)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76028 (_ BitVec 64) (_ BitVec 32) List!25903) Unit!38790)

(assert (=> b!1176885 (= lt!531260 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25900))))

(assert (=> b!1176885 false))

(declare-fun b!1176886 () Bool)

(assert (=> b!1176886 (= e!669034 true)))

(assert (=> b!1176886 e!669043))

(declare-fun res!781783 () Bool)

(assert (=> b!1176886 (=> (not res!781783) (not e!669043))))

(assert (=> b!1176886 (= res!781783 (not (= (select (arr!36660 _keys!1208) from!1455) k0!934)))))

(declare-fun lt!531250 () Unit!38790)

(assert (=> b!1176886 (= lt!531250 e!669040)))

(declare-fun c!116714 () Bool)

(assert (=> b!1176886 (= c!116714 (= (select (arr!36660 _keys!1208) from!1455) k0!934))))

(assert (=> b!1176886 e!669033))

(declare-fun res!781794 () Bool)

(assert (=> b!1176886 (=> (not res!781794) (not e!669033))))

(assert (=> b!1176886 (= res!781794 (= lt!531255 (+!3797 lt!531261 lt!531252)))))

(declare-fun get!18761 (ValueCell!14103 V!44627) V!44627)

(assert (=> b!1176886 (= lt!531252 (tuple2!19137 (select (arr!36660 _keys!1208) from!1455) (get!18761 (select (arr!36659 _values!996) from!1455) lt!531264)))))

(assert (= (and start!99552 res!781796) b!1176872))

(assert (= (and b!1176872 res!781791) b!1176877))

(assert (= (and b!1176877 res!781795) b!1176881))

(assert (= (and b!1176881 res!781797) b!1176867))

(assert (= (and b!1176867 res!781798) b!1176869))

(assert (= (and b!1176869 res!781792) b!1176874))

(assert (= (and b!1176874 res!781787) b!1176880))

(assert (= (and b!1176880 res!781784) b!1176882))

(assert (= (and b!1176882 res!781788) b!1176883))

(assert (= (and b!1176883 res!781789) b!1176879))

(assert (= (and b!1176879 (not res!781790)) b!1176875))

(assert (= (and b!1176875 (not res!781785)) b!1176870))

(assert (= (and b!1176870 (not res!781786)) b!1176886))

(assert (= (and b!1176886 res!781794) b!1176876))

(assert (= (and b!1176876 (not res!781793)) b!1176871))

(assert (= (and b!1176886 c!116714) b!1176885))

(assert (= (and b!1176886 (not c!116714)) b!1176873))

(assert (= (and b!1176886 res!781783) b!1176878))

(assert (= (and b!1176868 condMapEmpty!46265) mapIsEmpty!46265))

(assert (= (and b!1176868 (not condMapEmpty!46265)) mapNonEmpty!46265))

(get-info :version)

(assert (= (and mapNonEmpty!46265 ((_ is ValueCellFull!14103) mapValue!46265)) b!1176866))

(assert (= (and b!1176868 ((_ is ValueCellFull!14103) mapDefault!46265)) b!1176884))

(assert (= start!99552 b!1176868))

(declare-fun b_lambda!20257 () Bool)

(assert (=> (not b_lambda!20257) (not b!1176875)))

(declare-fun t!37996 () Bool)

(declare-fun tb!9915 () Bool)

(assert (=> (and start!99552 (= defaultEntry!1004 defaultEntry!1004) t!37996) tb!9915))

(declare-fun result!20389 () Bool)

(assert (=> tb!9915 (= result!20389 tp_is_empty!29625)))

(assert (=> b!1176875 t!37996))

(declare-fun b_and!41073 () Bool)

(assert (= b_and!41071 (and (=> t!37996 result!20389) b_and!41073)))

(declare-fun m!1084859 () Bool)

(assert (=> start!99552 m!1084859))

(declare-fun m!1084861 () Bool)

(assert (=> start!99552 m!1084861))

(declare-fun m!1084863 () Bool)

(assert (=> b!1176885 m!1084863))

(declare-fun m!1084865 () Bool)

(assert (=> b!1176885 m!1084865))

(declare-fun m!1084867 () Bool)

(assert (=> b!1176885 m!1084867))

(declare-fun m!1084869 () Bool)

(assert (=> b!1176885 m!1084869))

(declare-fun m!1084871 () Bool)

(assert (=> b!1176885 m!1084871))

(declare-fun m!1084873 () Bool)

(assert (=> b!1176874 m!1084873))

(declare-fun m!1084875 () Bool)

(assert (=> b!1176878 m!1084875))

(declare-fun m!1084877 () Bool)

(assert (=> b!1176876 m!1084877))

(assert (=> b!1176886 m!1084877))

(declare-fun m!1084879 () Bool)

(assert (=> b!1176886 m!1084879))

(declare-fun m!1084881 () Bool)

(assert (=> b!1176886 m!1084881))

(assert (=> b!1176886 m!1084881))

(declare-fun m!1084883 () Bool)

(assert (=> b!1176886 m!1084883))

(declare-fun m!1084885 () Bool)

(assert (=> b!1176879 m!1084885))

(declare-fun m!1084887 () Bool)

(assert (=> b!1176879 m!1084887))

(declare-fun m!1084889 () Bool)

(assert (=> b!1176867 m!1084889))

(declare-fun m!1084891 () Bool)

(assert (=> b!1176871 m!1084891))

(declare-fun m!1084893 () Bool)

(assert (=> b!1176882 m!1084893))

(declare-fun m!1084895 () Bool)

(assert (=> b!1176882 m!1084895))

(declare-fun m!1084897 () Bool)

(assert (=> b!1176870 m!1084897))

(declare-fun m!1084899 () Bool)

(assert (=> b!1176870 m!1084899))

(declare-fun m!1084901 () Bool)

(assert (=> b!1176870 m!1084901))

(assert (=> b!1176870 m!1084877))

(declare-fun m!1084903 () Bool)

(assert (=> b!1176870 m!1084903))

(declare-fun m!1084905 () Bool)

(assert (=> b!1176870 m!1084905))

(assert (=> b!1176870 m!1084877))

(declare-fun m!1084907 () Bool)

(assert (=> b!1176883 m!1084907))

(declare-fun m!1084909 () Bool)

(assert (=> b!1176872 m!1084909))

(declare-fun m!1084911 () Bool)

(assert (=> b!1176881 m!1084911))

(declare-fun m!1084913 () Bool)

(assert (=> b!1176880 m!1084913))

(declare-fun m!1084915 () Bool)

(assert (=> mapNonEmpty!46265 m!1084915))

(declare-fun m!1084917 () Bool)

(assert (=> b!1176875 m!1084917))

(declare-fun m!1084919 () Bool)

(assert (=> b!1176875 m!1084919))

(declare-fun m!1084921 () Bool)

(assert (=> b!1176875 m!1084921))

(declare-fun m!1084923 () Bool)

(assert (=> b!1176875 m!1084923))

(check-sat (not b!1176882) (not b!1176885) (not b_next!25095) (not b!1176879) tp_is_empty!29625 (not b!1176874) (not b!1176878) (not b!1176881) (not b!1176871) (not b_lambda!20257) (not b!1176872) (not b!1176870) (not b!1176867) (not mapNonEmpty!46265) b_and!41073 (not b!1176883) (not b!1176875) (not start!99552) (not b!1176886))
(check-sat b_and!41073 (not b_next!25095))
