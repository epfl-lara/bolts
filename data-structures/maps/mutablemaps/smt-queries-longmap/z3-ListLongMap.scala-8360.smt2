; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101780 () Bool)

(assert start!101780)

(declare-fun b_free!26433 () Bool)

(declare-fun b_next!26433 () Bool)

(assert (=> start!101780 (= b_free!26433 (not b_next!26433))))

(declare-fun tp!92345 () Bool)

(declare-fun b_and!44137 () Bool)

(assert (=> start!101780 (= tp!92345 b_and!44137)))

(declare-fun b!1224809 () Bool)

(declare-fun e!695680 () Bool)

(declare-fun e!695684 () Bool)

(assert (=> b!1224809 (= e!695680 e!695684)))

(declare-fun res!813994 () Bool)

(assert (=> b!1224809 (=> (not res!813994) (not e!695684))))

(declare-datatypes ((array!79032 0))(
  ( (array!79033 (arr!38139 (Array (_ BitVec 32) (_ BitVec 64))) (size!38676 (_ BitVec 32))) )
))
(declare-fun lt!557838 () array!79032)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!79032 (_ BitVec 32)) Bool)

(assert (=> b!1224809 (= res!813994 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!557838 mask!1564))))

(declare-fun _keys!1208 () array!79032)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1224809 (= lt!557838 (array!79033 (store (arr!38139 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38676 _keys!1208)))))

(declare-fun b!1224810 () Bool)

(declare-fun res!814001 () Bool)

(assert (=> b!1224810 (=> (not res!814001) (not e!695680))))

(declare-datatypes ((V!46643 0))(
  ( (V!46644 (val!15625 Int)) )
))
(declare-datatypes ((ValueCell!14859 0))(
  ( (ValueCellFull!14859 (v!18288 V!46643)) (EmptyCell!14859) )
))
(declare-datatypes ((array!79034 0))(
  ( (array!79035 (arr!38140 (Array (_ BitVec 32) ValueCell!14859)) (size!38677 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!79034)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1224810 (= res!814001 (and (= (size!38677 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38676 _keys!1208) (size!38677 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1224811 () Bool)

(declare-fun res!814005 () Bool)

(assert (=> b!1224811 (=> (not res!814005) (not e!695680))))

(assert (=> b!1224811 (= res!814005 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1224812 () Bool)

(declare-datatypes ((Unit!40524 0))(
  ( (Unit!40525) )
))
(declare-fun e!695679 () Unit!40524)

(declare-fun Unit!40526 () Unit!40524)

(assert (=> b!1224812 (= e!695679 Unit!40526)))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lt!557833 () Unit!40524)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!79032 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!40524)

(assert (=> b!1224812 (= lt!557833 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!79032 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1224812 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!557844 () Unit!40524)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!79032 (_ BitVec 32) (_ BitVec 32)) Unit!40524)

(assert (=> b!1224812 (= lt!557844 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!27098 0))(
  ( (Nil!27095) (Cons!27094 (h!28303 (_ BitVec 64)) (t!40518 List!27098)) )
))
(declare-fun arrayNoDuplicates!0 (array!79032 (_ BitVec 32) List!27098) Bool)

(assert (=> b!1224812 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!27095)))

(declare-fun lt!557831 () Unit!40524)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!79032 (_ BitVec 64) (_ BitVec 32) List!27098) Unit!40524)

(assert (=> b!1224812 (= lt!557831 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!27095))))

(assert (=> b!1224812 false))

(declare-fun res!814008 () Bool)

(assert (=> start!101780 (=> (not res!814008) (not e!695680))))

(assert (=> start!101780 (= res!814008 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38676 _keys!1208))))))

(assert (=> start!101780 e!695680))

(declare-fun tp_is_empty!31137 () Bool)

(assert (=> start!101780 tp_is_empty!31137))

(declare-fun array_inv!28930 (array!79032) Bool)

(assert (=> start!101780 (array_inv!28930 _keys!1208)))

(assert (=> start!101780 true))

(assert (=> start!101780 tp!92345))

(declare-fun e!695682 () Bool)

(declare-fun array_inv!28931 (array!79034) Bool)

(assert (=> start!101780 (and (array_inv!28931 _values!996) e!695682)))

(declare-fun b!1224813 () Bool)

(declare-fun e!695681 () Bool)

(declare-fun e!695688 () Bool)

(assert (=> b!1224813 (= e!695681 e!695688)))

(declare-fun res!813995 () Bool)

(assert (=> b!1224813 (=> res!813995 e!695688)))

(assert (=> b!1224813 (= res!813995 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!46643)

(declare-datatypes ((tuple2!20286 0))(
  ( (tuple2!20287 (_1!10153 (_ BitVec 64)) (_2!10153 V!46643)) )
))
(declare-datatypes ((List!27099 0))(
  ( (Nil!27096) (Cons!27095 (h!28304 tuple2!20286) (t!40519 List!27099)) )
))
(declare-datatypes ((ListLongMap!18267 0))(
  ( (ListLongMap!18268 (toList!9149 List!27099)) )
))
(declare-fun lt!557836 () ListLongMap!18267)

(declare-fun lt!557827 () array!79034)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!46643)

(declare-fun getCurrentListMapNoExtraKeys!5546 (array!79032 array!79034 (_ BitVec 32) (_ BitVec 32) V!46643 V!46643 (_ BitVec 32) Int) ListLongMap!18267)

(assert (=> b!1224813 (= lt!557836 (getCurrentListMapNoExtraKeys!5546 lt!557838 lt!557827 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!557845 () V!46643)

(assert (=> b!1224813 (= lt!557827 (array!79035 (store (arr!38140 _values!996) i!673 (ValueCellFull!14859 lt!557845)) (size!38677 _values!996)))))

(declare-fun dynLambda!3441 (Int (_ BitVec 64)) V!46643)

(assert (=> b!1224813 (= lt!557845 (dynLambda!3441 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!557832 () ListLongMap!18267)

(assert (=> b!1224813 (= lt!557832 (getCurrentListMapNoExtraKeys!5546 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1224814 () Bool)

(declare-fun res!814004 () Bool)

(assert (=> b!1224814 (=> (not res!814004) (not e!695680))))

(assert (=> b!1224814 (= res!814004 (= (select (arr!38139 _keys!1208) i!673) k0!934))))

(declare-fun b!1224815 () Bool)

(declare-fun res!813997 () Bool)

(assert (=> b!1224815 (=> (not res!813997) (not e!695680))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1224815 (= res!813997 (validKeyInArray!0 k0!934))))

(declare-fun b!1224816 () Bool)

(declare-fun e!695678 () Bool)

(declare-fun e!695683 () Bool)

(assert (=> b!1224816 (= e!695678 e!695683)))

(declare-fun res!814006 () Bool)

(assert (=> b!1224816 (=> res!814006 e!695683)))

(assert (=> b!1224816 (= res!814006 (not (= (select (arr!38139 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1224817 () Bool)

(declare-fun Unit!40527 () Unit!40524)

(assert (=> b!1224817 (= e!695679 Unit!40527)))

(declare-fun b!1224818 () Bool)

(declare-fun e!695685 () Bool)

(assert (=> b!1224818 (= e!695685 tp_is_empty!31137)))

(declare-fun b!1224819 () Bool)

(declare-fun res!814000 () Bool)

(assert (=> b!1224819 (=> (not res!814000) (not e!695680))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1224819 (= res!814000 (validMask!0 mask!1564))))

(declare-fun b!1224820 () Bool)

(declare-fun res!813999 () Bool)

(assert (=> b!1224820 (=> (not res!813999) (not e!695680))))

(assert (=> b!1224820 (= res!813999 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38676 _keys!1208))))))

(declare-fun b!1224821 () Bool)

(declare-fun res!814002 () Bool)

(assert (=> b!1224821 (=> (not res!814002) (not e!695680))))

(assert (=> b!1224821 (= res!814002 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!27095))))

(declare-fun b!1224822 () Bool)

(assert (=> b!1224822 (= e!695684 (not e!695681))))

(declare-fun res!814003 () Bool)

(assert (=> b!1224822 (=> res!814003 e!695681)))

(assert (=> b!1224822 (= res!814003 (bvsgt from!1455 i!673))))

(assert (=> b!1224822 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!557842 () Unit!40524)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!79032 (_ BitVec 64) (_ BitVec 32)) Unit!40524)

(assert (=> b!1224822 (= lt!557842 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1224823 () Bool)

(declare-fun e!695677 () Bool)

(assert (=> b!1224823 (= e!695688 e!695677)))

(declare-fun res!813998 () Bool)

(assert (=> b!1224823 (=> res!813998 e!695677)))

(assert (=> b!1224823 (= res!813998 (not (validKeyInArray!0 (select (arr!38139 _keys!1208) from!1455))))))

(declare-fun lt!557839 () ListLongMap!18267)

(declare-fun lt!557837 () ListLongMap!18267)

(assert (=> b!1224823 (= lt!557839 lt!557837)))

(declare-fun lt!557830 () ListLongMap!18267)

(declare-fun -!1985 (ListLongMap!18267 (_ BitVec 64)) ListLongMap!18267)

(assert (=> b!1224823 (= lt!557837 (-!1985 lt!557830 k0!934))))

(assert (=> b!1224823 (= lt!557839 (getCurrentListMapNoExtraKeys!5546 lt!557838 lt!557827 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1224823 (= lt!557830 (getCurrentListMapNoExtraKeys!5546 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!557828 () Unit!40524)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1187 (array!79032 array!79034 (_ BitVec 32) (_ BitVec 32) V!46643 V!46643 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40524)

(assert (=> b!1224823 (= lt!557828 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1187 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!48604 () Bool)

(declare-fun mapRes!48604 () Bool)

(declare-fun tp!92346 () Bool)

(declare-fun e!695686 () Bool)

(assert (=> mapNonEmpty!48604 (= mapRes!48604 (and tp!92346 e!695686))))

(declare-fun mapKey!48604 () (_ BitVec 32))

(declare-fun mapValue!48604 () ValueCell!14859)

(declare-fun mapRest!48604 () (Array (_ BitVec 32) ValueCell!14859))

(assert (=> mapNonEmpty!48604 (= (arr!38140 _values!996) (store mapRest!48604 mapKey!48604 mapValue!48604))))

(declare-fun b!1224824 () Bool)

(declare-fun res!814007 () Bool)

(assert (=> b!1224824 (=> (not res!814007) (not e!695684))))

(assert (=> b!1224824 (= res!814007 (arrayNoDuplicates!0 lt!557838 #b00000000000000000000000000000000 Nil!27095))))

(declare-fun b!1224825 () Bool)

(assert (=> b!1224825 (= e!695682 (and e!695685 mapRes!48604))))

(declare-fun condMapEmpty!48604 () Bool)

(declare-fun mapDefault!48604 () ValueCell!14859)

(assert (=> b!1224825 (= condMapEmpty!48604 (= (arr!38140 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14859)) mapDefault!48604)))))

(declare-fun b!1224826 () Bool)

(assert (=> b!1224826 (= e!695677 (bvslt i!673 (size!38677 _values!996)))))

(declare-fun lt!557834 () ListLongMap!18267)

(declare-fun lt!557840 () ListLongMap!18267)

(assert (=> b!1224826 (= (-!1985 lt!557834 k0!934) lt!557840)))

(declare-fun lt!557829 () V!46643)

(declare-fun lt!557843 () Unit!40524)

(declare-fun addRemoveCommutativeForDiffKeys!226 (ListLongMap!18267 (_ BitVec 64) V!46643 (_ BitVec 64)) Unit!40524)

(assert (=> b!1224826 (= lt!557843 (addRemoveCommutativeForDiffKeys!226 lt!557830 (select (arr!38139 _keys!1208) from!1455) lt!557829 k0!934))))

(assert (=> b!1224826 (and (= lt!557832 lt!557834) (= lt!557837 lt!557839))))

(declare-fun lt!557841 () tuple2!20286)

(declare-fun +!4111 (ListLongMap!18267 tuple2!20286) ListLongMap!18267)

(assert (=> b!1224826 (= lt!557834 (+!4111 lt!557830 lt!557841))))

(assert (=> b!1224826 (not (= (select (arr!38139 _keys!1208) from!1455) k0!934))))

(declare-fun lt!557835 () Unit!40524)

(assert (=> b!1224826 (= lt!557835 e!695679)))

(declare-fun c!120414 () Bool)

(assert (=> b!1224826 (= c!120414 (= (select (arr!38139 _keys!1208) from!1455) k0!934))))

(assert (=> b!1224826 e!695678))

(declare-fun res!813996 () Bool)

(assert (=> b!1224826 (=> (not res!813996) (not e!695678))))

(assert (=> b!1224826 (= res!813996 (= lt!557836 lt!557840))))

(assert (=> b!1224826 (= lt!557840 (+!4111 lt!557837 lt!557841))))

(assert (=> b!1224826 (= lt!557841 (tuple2!20287 (select (arr!38139 _keys!1208) from!1455) lt!557829))))

(declare-fun get!19527 (ValueCell!14859 V!46643) V!46643)

(assert (=> b!1224826 (= lt!557829 (get!19527 (select (arr!38140 _values!996) from!1455) lt!557845))))

(declare-fun mapIsEmpty!48604 () Bool)

(assert (=> mapIsEmpty!48604 mapRes!48604))

(declare-fun b!1224827 () Bool)

(assert (=> b!1224827 (= e!695683 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1224828 () Bool)

(assert (=> b!1224828 (= e!695686 tp_is_empty!31137)))

(assert (= (and start!101780 res!814008) b!1224819))

(assert (= (and b!1224819 res!814000) b!1224810))

(assert (= (and b!1224810 res!814001) b!1224811))

(assert (= (and b!1224811 res!814005) b!1224821))

(assert (= (and b!1224821 res!814002) b!1224820))

(assert (= (and b!1224820 res!813999) b!1224815))

(assert (= (and b!1224815 res!813997) b!1224814))

(assert (= (and b!1224814 res!814004) b!1224809))

(assert (= (and b!1224809 res!813994) b!1224824))

(assert (= (and b!1224824 res!814007) b!1224822))

(assert (= (and b!1224822 (not res!814003)) b!1224813))

(assert (= (and b!1224813 (not res!813995)) b!1224823))

(assert (= (and b!1224823 (not res!813998)) b!1224826))

(assert (= (and b!1224826 res!813996) b!1224816))

(assert (= (and b!1224816 (not res!814006)) b!1224827))

(assert (= (and b!1224826 c!120414) b!1224812))

(assert (= (and b!1224826 (not c!120414)) b!1224817))

(assert (= (and b!1224825 condMapEmpty!48604) mapIsEmpty!48604))

(assert (= (and b!1224825 (not condMapEmpty!48604)) mapNonEmpty!48604))

(get-info :version)

(assert (= (and mapNonEmpty!48604 ((_ is ValueCellFull!14859) mapValue!48604)) b!1224828))

(assert (= (and b!1224825 ((_ is ValueCellFull!14859) mapDefault!48604)) b!1224818))

(assert (= start!101780 b!1224825))

(declare-fun b_lambda!22423 () Bool)

(assert (=> (not b_lambda!22423) (not b!1224813)))

(declare-fun t!40517 () Bool)

(declare-fun tb!11241 () Bool)

(assert (=> (and start!101780 (= defaultEntry!1004 defaultEntry!1004) t!40517) tb!11241))

(declare-fun result!23087 () Bool)

(assert (=> tb!11241 (= result!23087 tp_is_empty!31137)))

(assert (=> b!1224813 t!40517))

(declare-fun b_and!44139 () Bool)

(assert (= b_and!44137 (and (=> t!40517 result!23087) b_and!44139)))

(declare-fun m!1129883 () Bool)

(assert (=> b!1224813 m!1129883))

(declare-fun m!1129885 () Bool)

(assert (=> b!1224813 m!1129885))

(declare-fun m!1129887 () Bool)

(assert (=> b!1224813 m!1129887))

(declare-fun m!1129889 () Bool)

(assert (=> b!1224813 m!1129889))

(declare-fun m!1129891 () Bool)

(assert (=> b!1224823 m!1129891))

(declare-fun m!1129893 () Bool)

(assert (=> b!1224823 m!1129893))

(declare-fun m!1129895 () Bool)

(assert (=> b!1224823 m!1129895))

(declare-fun m!1129897 () Bool)

(assert (=> b!1224823 m!1129897))

(declare-fun m!1129899 () Bool)

(assert (=> b!1224823 m!1129899))

(declare-fun m!1129901 () Bool)

(assert (=> b!1224823 m!1129901))

(assert (=> b!1224823 m!1129897))

(declare-fun m!1129903 () Bool)

(assert (=> b!1224826 m!1129903))

(declare-fun m!1129905 () Bool)

(assert (=> b!1224826 m!1129905))

(assert (=> b!1224826 m!1129903))

(declare-fun m!1129907 () Bool)

(assert (=> b!1224826 m!1129907))

(declare-fun m!1129909 () Bool)

(assert (=> b!1224826 m!1129909))

(assert (=> b!1224826 m!1129897))

(declare-fun m!1129911 () Bool)

(assert (=> b!1224826 m!1129911))

(assert (=> b!1224826 m!1129897))

(declare-fun m!1129913 () Bool)

(assert (=> b!1224826 m!1129913))

(assert (=> b!1224816 m!1129897))

(declare-fun m!1129915 () Bool)

(assert (=> b!1224809 m!1129915))

(declare-fun m!1129917 () Bool)

(assert (=> b!1224809 m!1129917))

(declare-fun m!1129919 () Bool)

(assert (=> b!1224814 m!1129919))

(declare-fun m!1129921 () Bool)

(assert (=> b!1224821 m!1129921))

(declare-fun m!1129923 () Bool)

(assert (=> b!1224812 m!1129923))

(declare-fun m!1129925 () Bool)

(assert (=> b!1224812 m!1129925))

(declare-fun m!1129927 () Bool)

(assert (=> b!1224812 m!1129927))

(declare-fun m!1129929 () Bool)

(assert (=> b!1224812 m!1129929))

(declare-fun m!1129931 () Bool)

(assert (=> b!1224812 m!1129931))

(declare-fun m!1129933 () Bool)

(assert (=> b!1224815 m!1129933))

(declare-fun m!1129935 () Bool)

(assert (=> b!1224822 m!1129935))

(declare-fun m!1129937 () Bool)

(assert (=> b!1224822 m!1129937))

(declare-fun m!1129939 () Bool)

(assert (=> start!101780 m!1129939))

(declare-fun m!1129941 () Bool)

(assert (=> start!101780 m!1129941))

(declare-fun m!1129943 () Bool)

(assert (=> b!1224827 m!1129943))

(declare-fun m!1129945 () Bool)

(assert (=> b!1224819 m!1129945))

(declare-fun m!1129947 () Bool)

(assert (=> b!1224811 m!1129947))

(declare-fun m!1129949 () Bool)

(assert (=> mapNonEmpty!48604 m!1129949))

(declare-fun m!1129951 () Bool)

(assert (=> b!1224824 m!1129951))

(check-sat (not b!1224812) (not b_next!26433) (not b!1224811) (not start!101780) (not b!1224821) b_and!44139 (not b!1224815) (not b!1224819) (not b!1224824) (not b!1224827) (not b!1224809) (not b!1224826) tp_is_empty!31137 (not b!1224822) (not b!1224813) (not b_lambda!22423) (not b!1224823) (not mapNonEmpty!48604))
(check-sat b_and!44139 (not b_next!26433))
