; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99876 () Bool)

(assert start!99876)

(declare-fun b_free!25419 () Bool)

(declare-fun b_next!25419 () Bool)

(assert (=> start!99876 (= b_free!25419 (not b_next!25419))))

(declare-fun tp!88971 () Bool)

(declare-fun b_and!41719 () Bool)

(assert (=> start!99876 (= tp!88971 b_and!41719)))

(declare-fun b!1187211 () Bool)

(declare-fun res!789380 () Bool)

(declare-fun e!675084 () Bool)

(assert (=> b!1187211 (=> (not res!789380) (not e!675084))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!76666 0))(
  ( (array!76667 (arr!36979 (Array (_ BitVec 32) (_ BitVec 64))) (size!37516 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76666)

(assert (=> b!1187211 (= res!789380 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37516 _keys!1208))))))

(declare-fun b!1187212 () Bool)

(declare-fun res!789382 () Bool)

(assert (=> b!1187212 (=> (not res!789382) (not e!675084))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!45059 0))(
  ( (V!45060 (val!15031 Int)) )
))
(declare-datatypes ((ValueCell!14265 0))(
  ( (ValueCellFull!14265 (v!17670 V!45059)) (EmptyCell!14265) )
))
(declare-datatypes ((array!76668 0))(
  ( (array!76669 (arr!36980 (Array (_ BitVec 32) ValueCell!14265)) (size!37517 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76668)

(assert (=> b!1187212 (= res!789382 (and (= (size!37517 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37516 _keys!1208) (size!37517 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1187213 () Bool)

(declare-fun e!675083 () Bool)

(declare-fun e!675081 () Bool)

(assert (=> b!1187213 (= e!675083 e!675081)))

(declare-fun res!789384 () Bool)

(assert (=> b!1187213 (=> res!789384 e!675081)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1187213 (= res!789384 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!45059)

(declare-fun lt!539641 () array!76666)

(declare-fun lt!539656 () array!76668)

(declare-fun zeroValue!944 () V!45059)

(declare-datatypes ((tuple2!19424 0))(
  ( (tuple2!19425 (_1!9722 (_ BitVec 64)) (_2!9722 V!45059)) )
))
(declare-datatypes ((List!26182 0))(
  ( (Nil!26179) (Cons!26178 (h!27387 tuple2!19424) (t!38600 List!26182)) )
))
(declare-datatypes ((ListLongMap!17405 0))(
  ( (ListLongMap!17406 (toList!8718 List!26182)) )
))
(declare-fun lt!539652 () ListLongMap!17405)

(declare-fun getCurrentListMapNoExtraKeys!5133 (array!76666 array!76668 (_ BitVec 32) (_ BitVec 32) V!45059 V!45059 (_ BitVec 32) Int) ListLongMap!17405)

(assert (=> b!1187213 (= lt!539652 (getCurrentListMapNoExtraKeys!5133 lt!539641 lt!539656 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!539654 () V!45059)

(assert (=> b!1187213 (= lt!539656 (array!76669 (store (arr!36980 _values!996) i!673 (ValueCellFull!14265 lt!539654)) (size!37517 _values!996)))))

(declare-fun dynLambda!3090 (Int (_ BitVec 64)) V!45059)

(assert (=> b!1187213 (= lt!539654 (dynLambda!3090 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!539651 () ListLongMap!17405)

(assert (=> b!1187213 (= lt!539651 (getCurrentListMapNoExtraKeys!5133 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1187214 () Bool)

(declare-fun res!789377 () Bool)

(assert (=> b!1187214 (=> (not res!789377) (not e!675084))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1187214 (= res!789377 (validMask!0 mask!1564))))

(declare-fun mapNonEmpty!46751 () Bool)

(declare-fun mapRes!46751 () Bool)

(declare-fun tp!88972 () Bool)

(declare-fun e!675075 () Bool)

(assert (=> mapNonEmpty!46751 (= mapRes!46751 (and tp!88972 e!675075))))

(declare-fun mapKey!46751 () (_ BitVec 32))

(declare-fun mapRest!46751 () (Array (_ BitVec 32) ValueCell!14265))

(declare-fun mapValue!46751 () ValueCell!14265)

(assert (=> mapNonEmpty!46751 (= (arr!36980 _values!996) (store mapRest!46751 mapKey!46751 mapValue!46751))))

(declare-fun b!1187215 () Bool)

(declare-fun e!675082 () Bool)

(assert (=> b!1187215 (= e!675081 e!675082)))

(declare-fun res!789376 () Bool)

(assert (=> b!1187215 (=> res!789376 e!675082)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1187215 (= res!789376 (not (validKeyInArray!0 (select (arr!36979 _keys!1208) from!1455))))))

(declare-fun lt!539653 () ListLongMap!17405)

(declare-fun lt!539646 () ListLongMap!17405)

(assert (=> b!1187215 (= lt!539653 lt!539646)))

(declare-fun lt!539642 () ListLongMap!17405)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun -!1703 (ListLongMap!17405 (_ BitVec 64)) ListLongMap!17405)

(assert (=> b!1187215 (= lt!539646 (-!1703 lt!539642 k0!934))))

(assert (=> b!1187215 (= lt!539653 (getCurrentListMapNoExtraKeys!5133 lt!539641 lt!539656 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1187215 (= lt!539642 (getCurrentListMapNoExtraKeys!5133 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-datatypes ((Unit!39294 0))(
  ( (Unit!39295) )
))
(declare-fun lt!539643 () Unit!39294)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!912 (array!76666 array!76668 (_ BitVec 32) (_ BitVec 32) V!45059 V!45059 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39294)

(assert (=> b!1187215 (= lt!539643 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!912 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun res!789379 () Bool)

(assert (=> start!99876 (=> (not res!789379) (not e!675084))))

(assert (=> start!99876 (= res!789379 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37516 _keys!1208))))))

(assert (=> start!99876 e!675084))

(declare-fun tp_is_empty!29949 () Bool)

(assert (=> start!99876 tp_is_empty!29949))

(declare-fun array_inv!28100 (array!76666) Bool)

(assert (=> start!99876 (array_inv!28100 _keys!1208)))

(assert (=> start!99876 true))

(assert (=> start!99876 tp!88971))

(declare-fun e!675074 () Bool)

(declare-fun array_inv!28101 (array!76668) Bool)

(assert (=> start!99876 (and (array_inv!28101 _values!996) e!675074)))

(declare-fun b!1187216 () Bool)

(assert (=> b!1187216 (= e!675075 tp_is_empty!29949)))

(declare-fun b!1187217 () Bool)

(declare-fun e!675077 () Unit!39294)

(declare-fun Unit!39296 () Unit!39294)

(assert (=> b!1187217 (= e!675077 Unit!39296)))

(declare-fun lt!539648 () Unit!39294)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76666 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!39294)

(assert (=> b!1187217 (= lt!539648 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!76666 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1187217 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!539649 () Unit!39294)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76666 (_ BitVec 32) (_ BitVec 32)) Unit!39294)

(assert (=> b!1187217 (= lt!539649 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!26183 0))(
  ( (Nil!26180) (Cons!26179 (h!27388 (_ BitVec 64)) (t!38601 List!26183)) )
))
(declare-fun arrayNoDuplicates!0 (array!76666 (_ BitVec 32) List!26183) Bool)

(assert (=> b!1187217 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26180)))

(declare-fun lt!539640 () Unit!39294)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76666 (_ BitVec 64) (_ BitVec 32) List!26183) Unit!39294)

(assert (=> b!1187217 (= lt!539640 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!26180))))

(assert (=> b!1187217 false))

(declare-fun mapIsEmpty!46751 () Bool)

(assert (=> mapIsEmpty!46751 mapRes!46751))

(declare-fun b!1187218 () Bool)

(declare-fun e!675080 () Bool)

(assert (=> b!1187218 (= e!675084 e!675080)))

(declare-fun res!789381 () Bool)

(assert (=> b!1187218 (=> (not res!789381) (not e!675080))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76666 (_ BitVec 32)) Bool)

(assert (=> b!1187218 (= res!789381 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!539641 mask!1564))))

(assert (=> b!1187218 (= lt!539641 (array!76667 (store (arr!36979 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37516 _keys!1208)))))

(declare-fun b!1187219 () Bool)

(assert (=> b!1187219 (= e!675082 true)))

(declare-fun lt!539644 () ListLongMap!17405)

(declare-fun lt!539657 () ListLongMap!17405)

(assert (=> b!1187219 (= (-!1703 lt!539644 k0!934) lt!539657)))

(declare-fun lt!539647 () Unit!39294)

(declare-fun lt!539658 () V!45059)

(declare-fun addRemoveCommutativeForDiffKeys!210 (ListLongMap!17405 (_ BitVec 64) V!45059 (_ BitVec 64)) Unit!39294)

(assert (=> b!1187219 (= lt!539647 (addRemoveCommutativeForDiffKeys!210 lt!539642 (select (arr!36979 _keys!1208) from!1455) lt!539658 k0!934))))

(assert (=> b!1187219 (and (= lt!539651 lt!539644) (= lt!539646 lt!539653))))

(declare-fun lt!539655 () tuple2!19424)

(declare-fun +!3920 (ListLongMap!17405 tuple2!19424) ListLongMap!17405)

(assert (=> b!1187219 (= lt!539644 (+!3920 lt!539642 lt!539655))))

(assert (=> b!1187219 (not (= (select (arr!36979 _keys!1208) from!1455) k0!934))))

(declare-fun lt!539650 () Unit!39294)

(assert (=> b!1187219 (= lt!539650 e!675077)))

(declare-fun c!117200 () Bool)

(assert (=> b!1187219 (= c!117200 (= (select (arr!36979 _keys!1208) from!1455) k0!934))))

(declare-fun e!675085 () Bool)

(assert (=> b!1187219 e!675085))

(declare-fun res!789386 () Bool)

(assert (=> b!1187219 (=> (not res!789386) (not e!675085))))

(assert (=> b!1187219 (= res!789386 (= lt!539652 lt!539657))))

(assert (=> b!1187219 (= lt!539657 (+!3920 lt!539646 lt!539655))))

(assert (=> b!1187219 (= lt!539655 (tuple2!19425 (select (arr!36979 _keys!1208) from!1455) lt!539658))))

(declare-fun get!18982 (ValueCell!14265 V!45059) V!45059)

(assert (=> b!1187219 (= lt!539658 (get!18982 (select (arr!36980 _values!996) from!1455) lt!539654))))

(declare-fun b!1187220 () Bool)

(declare-fun res!789385 () Bool)

(assert (=> b!1187220 (=> (not res!789385) (not e!675084))))

(assert (=> b!1187220 (= res!789385 (= (select (arr!36979 _keys!1208) i!673) k0!934))))

(declare-fun b!1187221 () Bool)

(declare-fun e!675076 () Bool)

(assert (=> b!1187221 (= e!675074 (and e!675076 mapRes!46751))))

(declare-fun condMapEmpty!46751 () Bool)

(declare-fun mapDefault!46751 () ValueCell!14265)

(assert (=> b!1187221 (= condMapEmpty!46751 (= (arr!36980 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14265)) mapDefault!46751)))))

(declare-fun b!1187222 () Bool)

(assert (=> b!1187222 (= e!675076 tp_is_empty!29949)))

(declare-fun e!675079 () Bool)

(declare-fun b!1187223 () Bool)

(assert (=> b!1187223 (= e!675079 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1187224 () Bool)

(declare-fun res!789378 () Bool)

(assert (=> b!1187224 (=> (not res!789378) (not e!675080))))

(assert (=> b!1187224 (= res!789378 (arrayNoDuplicates!0 lt!539641 #b00000000000000000000000000000000 Nil!26180))))

(declare-fun b!1187225 () Bool)

(assert (=> b!1187225 (= e!675085 e!675079)))

(declare-fun res!789374 () Bool)

(assert (=> b!1187225 (=> res!789374 e!675079)))

(assert (=> b!1187225 (= res!789374 (not (= (select (arr!36979 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1187226 () Bool)

(declare-fun Unit!39297 () Unit!39294)

(assert (=> b!1187226 (= e!675077 Unit!39297)))

(declare-fun b!1187227 () Bool)

(assert (=> b!1187227 (= e!675080 (not e!675083))))

(declare-fun res!789375 () Bool)

(assert (=> b!1187227 (=> res!789375 e!675083)))

(assert (=> b!1187227 (= res!789375 (bvsgt from!1455 i!673))))

(assert (=> b!1187227 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!539645 () Unit!39294)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76666 (_ BitVec 64) (_ BitVec 32)) Unit!39294)

(assert (=> b!1187227 (= lt!539645 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1187228 () Bool)

(declare-fun res!789388 () Bool)

(assert (=> b!1187228 (=> (not res!789388) (not e!675084))))

(assert (=> b!1187228 (= res!789388 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1187229 () Bool)

(declare-fun res!789383 () Bool)

(assert (=> b!1187229 (=> (not res!789383) (not e!675084))))

(assert (=> b!1187229 (= res!789383 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26180))))

(declare-fun b!1187230 () Bool)

(declare-fun res!789387 () Bool)

(assert (=> b!1187230 (=> (not res!789387) (not e!675084))))

(assert (=> b!1187230 (= res!789387 (validKeyInArray!0 k0!934))))

(assert (= (and start!99876 res!789379) b!1187214))

(assert (= (and b!1187214 res!789377) b!1187212))

(assert (= (and b!1187212 res!789382) b!1187228))

(assert (= (and b!1187228 res!789388) b!1187229))

(assert (= (and b!1187229 res!789383) b!1187211))

(assert (= (and b!1187211 res!789380) b!1187230))

(assert (= (and b!1187230 res!789387) b!1187220))

(assert (= (and b!1187220 res!789385) b!1187218))

(assert (= (and b!1187218 res!789381) b!1187224))

(assert (= (and b!1187224 res!789378) b!1187227))

(assert (= (and b!1187227 (not res!789375)) b!1187213))

(assert (= (and b!1187213 (not res!789384)) b!1187215))

(assert (= (and b!1187215 (not res!789376)) b!1187219))

(assert (= (and b!1187219 res!789386) b!1187225))

(assert (= (and b!1187225 (not res!789374)) b!1187223))

(assert (= (and b!1187219 c!117200) b!1187217))

(assert (= (and b!1187219 (not c!117200)) b!1187226))

(assert (= (and b!1187221 condMapEmpty!46751) mapIsEmpty!46751))

(assert (= (and b!1187221 (not condMapEmpty!46751)) mapNonEmpty!46751))

(get-info :version)

(assert (= (and mapNonEmpty!46751 ((_ is ValueCellFull!14265) mapValue!46751)) b!1187216))

(assert (= (and b!1187221 ((_ is ValueCellFull!14265) mapDefault!46751)) b!1187222))

(assert (= start!99876 b!1187221))

(declare-fun b_lambda!20581 () Bool)

(assert (=> (not b_lambda!20581) (not b!1187213)))

(declare-fun t!38599 () Bool)

(declare-fun tb!10239 () Bool)

(assert (=> (and start!99876 (= defaultEntry!1004 defaultEntry!1004) t!38599) tb!10239))

(declare-fun result!21037 () Bool)

(assert (=> tb!10239 (= result!21037 tp_is_empty!29949)))

(assert (=> b!1187213 t!38599))

(declare-fun b_and!41721 () Bool)

(assert (= b_and!41719 (and (=> t!38599 result!21037) b_and!41721)))

(declare-fun m!1095915 () Bool)

(assert (=> b!1187229 m!1095915))

(declare-fun m!1095917 () Bool)

(assert (=> b!1187224 m!1095917))

(declare-fun m!1095919 () Bool)

(assert (=> b!1187213 m!1095919))

(declare-fun m!1095921 () Bool)

(assert (=> b!1187213 m!1095921))

(declare-fun m!1095923 () Bool)

(assert (=> b!1187213 m!1095923))

(declare-fun m!1095925 () Bool)

(assert (=> b!1187213 m!1095925))

(declare-fun m!1095927 () Bool)

(assert (=> b!1187223 m!1095927))

(declare-fun m!1095929 () Bool)

(assert (=> b!1187218 m!1095929))

(declare-fun m!1095931 () Bool)

(assert (=> b!1187218 m!1095931))

(declare-fun m!1095933 () Bool)

(assert (=> mapNonEmpty!46751 m!1095933))

(declare-fun m!1095935 () Bool)

(assert (=> b!1187227 m!1095935))

(declare-fun m!1095937 () Bool)

(assert (=> b!1187227 m!1095937))

(declare-fun m!1095939 () Bool)

(assert (=> b!1187217 m!1095939))

(declare-fun m!1095941 () Bool)

(assert (=> b!1187217 m!1095941))

(declare-fun m!1095943 () Bool)

(assert (=> b!1187217 m!1095943))

(declare-fun m!1095945 () Bool)

(assert (=> b!1187217 m!1095945))

(declare-fun m!1095947 () Bool)

(assert (=> b!1187217 m!1095947))

(declare-fun m!1095949 () Bool)

(assert (=> b!1187228 m!1095949))

(declare-fun m!1095951 () Bool)

(assert (=> b!1187219 m!1095951))

(declare-fun m!1095953 () Bool)

(assert (=> b!1187219 m!1095953))

(declare-fun m!1095955 () Bool)

(assert (=> b!1187219 m!1095955))

(assert (=> b!1187219 m!1095951))

(declare-fun m!1095957 () Bool)

(assert (=> b!1187219 m!1095957))

(declare-fun m!1095959 () Bool)

(assert (=> b!1187219 m!1095959))

(declare-fun m!1095961 () Bool)

(assert (=> b!1187219 m!1095961))

(assert (=> b!1187219 m!1095959))

(declare-fun m!1095963 () Bool)

(assert (=> b!1187219 m!1095963))

(declare-fun m!1095965 () Bool)

(assert (=> start!99876 m!1095965))

(declare-fun m!1095967 () Bool)

(assert (=> start!99876 m!1095967))

(declare-fun m!1095969 () Bool)

(assert (=> b!1187230 m!1095969))

(assert (=> b!1187225 m!1095959))

(declare-fun m!1095971 () Bool)

(assert (=> b!1187220 m!1095971))

(declare-fun m!1095973 () Bool)

(assert (=> b!1187215 m!1095973))

(declare-fun m!1095975 () Bool)

(assert (=> b!1187215 m!1095975))

(assert (=> b!1187215 m!1095959))

(declare-fun m!1095977 () Bool)

(assert (=> b!1187215 m!1095977))

(declare-fun m!1095979 () Bool)

(assert (=> b!1187215 m!1095979))

(assert (=> b!1187215 m!1095959))

(declare-fun m!1095981 () Bool)

(assert (=> b!1187215 m!1095981))

(declare-fun m!1095983 () Bool)

(assert (=> b!1187214 m!1095983))

(check-sat (not b_lambda!20581) (not b!1187224) (not b!1187228) (not b!1187219) (not b!1187229) (not b!1187227) (not mapNonEmpty!46751) (not b!1187217) (not b!1187215) (not b!1187218) tp_is_empty!29949 (not b!1187223) (not b_next!25419) b_and!41721 (not b!1187214) (not b!1187230) (not start!99876) (not b!1187213))
(check-sat b_and!41721 (not b_next!25419))
