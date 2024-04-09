; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99852 () Bool)

(assert start!99852)

(declare-fun b_free!25395 () Bool)

(declare-fun b_next!25395 () Bool)

(assert (=> start!99852 (= b_free!25395 (not b_next!25395))))

(declare-fun tp!88899 () Bool)

(declare-fun b_and!41671 () Bool)

(assert (=> start!99852 (= tp!88899 b_and!41671)))

(declare-fun b!1186467 () Bool)

(declare-fun res!788846 () Bool)

(declare-fun e!674652 () Bool)

(assert (=> b!1186467 (=> (not res!788846) (not e!674652))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1186467 (= res!788846 (validKeyInArray!0 k0!934))))

(declare-fun b!1186468 () Bool)

(declare-fun res!788842 () Bool)

(assert (=> b!1186468 (=> (not res!788842) (not e!674652))))

(declare-datatypes ((array!76618 0))(
  ( (array!76619 (arr!36955 (Array (_ BitVec 32) (_ BitVec 64))) (size!37492 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76618)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1186468 (= res!788842 (= (select (arr!36955 _keys!1208) i!673) k0!934))))

(declare-fun b!1186469 () Bool)

(declare-fun res!788847 () Bool)

(declare-fun e!674651 () Bool)

(assert (=> b!1186469 (=> (not res!788847) (not e!674651))))

(declare-fun lt!538969 () array!76618)

(declare-datatypes ((List!26162 0))(
  ( (Nil!26159) (Cons!26158 (h!27367 (_ BitVec 64)) (t!38556 List!26162)) )
))
(declare-fun arrayNoDuplicates!0 (array!76618 (_ BitVec 32) List!26162) Bool)

(assert (=> b!1186469 (= res!788847 (arrayNoDuplicates!0 lt!538969 #b00000000000000000000000000000000 Nil!26159))))

(declare-fun b!1186470 () Bool)

(declare-fun res!788835 () Bool)

(assert (=> b!1186470 (=> (not res!788835) (not e!674652))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!45027 0))(
  ( (V!45028 (val!15019 Int)) )
))
(declare-datatypes ((ValueCell!14253 0))(
  ( (ValueCellFull!14253 (v!17658 V!45027)) (EmptyCell!14253) )
))
(declare-datatypes ((array!76620 0))(
  ( (array!76621 (arr!36956 (Array (_ BitVec 32) ValueCell!14253)) (size!37493 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76620)

(assert (=> b!1186470 (= res!788835 (and (= (size!37493 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37492 _keys!1208) (size!37493 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun e!674645 () Bool)

(declare-fun b!1186471 () Bool)

(declare-fun arrayContainsKey!0 (array!76618 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1186471 (= e!674645 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1186472 () Bool)

(declare-fun e!674642 () Bool)

(assert (=> b!1186472 (= e!674642 e!674645)))

(declare-fun res!788838 () Bool)

(assert (=> b!1186472 (=> res!788838 e!674645)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1186472 (= res!788838 (not (= (select (arr!36955 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1186473 () Bool)

(declare-fun e!674644 () Bool)

(declare-fun e!674653 () Bool)

(declare-fun mapRes!46715 () Bool)

(assert (=> b!1186473 (= e!674644 (and e!674653 mapRes!46715))))

(declare-fun condMapEmpty!46715 () Bool)

(declare-fun mapDefault!46715 () ValueCell!14253)

(assert (=> b!1186473 (= condMapEmpty!46715 (= (arr!36956 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14253)) mapDefault!46715)))))

(declare-fun b!1186474 () Bool)

(assert (=> b!1186474 (= e!674652 e!674651)))

(declare-fun res!788848 () Bool)

(assert (=> b!1186474 (=> (not res!788848) (not e!674651))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76618 (_ BitVec 32)) Bool)

(assert (=> b!1186474 (= res!788848 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!538969 mask!1564))))

(assert (=> b!1186474 (= lt!538969 (array!76619 (store (arr!36955 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37492 _keys!1208)))))

(declare-fun res!788841 () Bool)

(assert (=> start!99852 (=> (not res!788841) (not e!674652))))

(assert (=> start!99852 (= res!788841 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37492 _keys!1208))))))

(assert (=> start!99852 e!674652))

(declare-fun tp_is_empty!29925 () Bool)

(assert (=> start!99852 tp_is_empty!29925))

(declare-fun array_inv!28082 (array!76618) Bool)

(assert (=> start!99852 (array_inv!28082 _keys!1208)))

(assert (=> start!99852 true))

(assert (=> start!99852 tp!88899))

(declare-fun array_inv!28083 (array!76620) Bool)

(assert (=> start!99852 (and (array_inv!28083 _values!996) e!674644)))

(declare-fun mapIsEmpty!46715 () Bool)

(assert (=> mapIsEmpty!46715 mapRes!46715))

(declare-fun b!1186475 () Bool)

(declare-fun res!788844 () Bool)

(assert (=> b!1186475 (=> (not res!788844) (not e!674652))))

(assert (=> b!1186475 (= res!788844 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26159))))

(declare-fun b!1186476 () Bool)

(declare-fun res!788836 () Bool)

(assert (=> b!1186476 (=> (not res!788836) (not e!674652))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1186476 (= res!788836 (validMask!0 mask!1564))))

(declare-fun mapNonEmpty!46715 () Bool)

(declare-fun tp!88900 () Bool)

(declare-fun e!674648 () Bool)

(assert (=> mapNonEmpty!46715 (= mapRes!46715 (and tp!88900 e!674648))))

(declare-fun mapValue!46715 () ValueCell!14253)

(declare-fun mapKey!46715 () (_ BitVec 32))

(declare-fun mapRest!46715 () (Array (_ BitVec 32) ValueCell!14253))

(assert (=> mapNonEmpty!46715 (= (arr!36956 _values!996) (store mapRest!46715 mapKey!46715 mapValue!46715))))

(declare-fun b!1186477 () Bool)

(assert (=> b!1186477 (= e!674648 tp_is_empty!29925)))

(declare-fun b!1186478 () Bool)

(declare-datatypes ((Unit!39253 0))(
  ( (Unit!39254) )
))
(declare-fun e!674643 () Unit!39253)

(declare-fun Unit!39255 () Unit!39253)

(assert (=> b!1186478 (= e!674643 Unit!39255)))

(declare-fun lt!538963 () Unit!39253)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76618 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!39253)

(assert (=> b!1186478 (= lt!538963 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1186478 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!538960 () Unit!39253)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76618 (_ BitVec 32) (_ BitVec 32)) Unit!39253)

(assert (=> b!1186478 (= lt!538960 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1186478 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26159)))

(declare-fun lt!538959 () Unit!39253)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76618 (_ BitVec 64) (_ BitVec 32) List!26162) Unit!39253)

(assert (=> b!1186478 (= lt!538959 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!26159))))

(assert (=> b!1186478 false))

(declare-fun b!1186479 () Bool)

(declare-fun res!788845 () Bool)

(assert (=> b!1186479 (=> (not res!788845) (not e!674652))))

(assert (=> b!1186479 (= res!788845 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1186480 () Bool)

(declare-fun e!674647 () Bool)

(declare-fun e!674650 () Bool)

(assert (=> b!1186480 (= e!674647 e!674650)))

(declare-fun res!788834 () Bool)

(assert (=> b!1186480 (=> res!788834 e!674650)))

(assert (=> b!1186480 (= res!788834 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!45027)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!19402 0))(
  ( (tuple2!19403 (_1!9711 (_ BitVec 64)) (_2!9711 V!45027)) )
))
(declare-datatypes ((List!26163 0))(
  ( (Nil!26160) (Cons!26159 (h!27368 tuple2!19402) (t!38557 List!26163)) )
))
(declare-datatypes ((ListLongMap!17383 0))(
  ( (ListLongMap!17384 (toList!8707 List!26163)) )
))
(declare-fun lt!538970 () ListLongMap!17383)

(declare-fun minValue!944 () V!45027)

(declare-fun lt!538964 () array!76620)

(declare-fun getCurrentListMapNoExtraKeys!5124 (array!76618 array!76620 (_ BitVec 32) (_ BitVec 32) V!45027 V!45027 (_ BitVec 32) Int) ListLongMap!17383)

(assert (=> b!1186480 (= lt!538970 (getCurrentListMapNoExtraKeys!5124 lt!538969 lt!538964 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!538961 () V!45027)

(assert (=> b!1186480 (= lt!538964 (array!76621 (store (arr!36956 _values!996) i!673 (ValueCellFull!14253 lt!538961)) (size!37493 _values!996)))))

(declare-fun dynLambda!3083 (Int (_ BitVec 64)) V!45027)

(assert (=> b!1186480 (= lt!538961 (dynLambda!3083 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!538968 () ListLongMap!17383)

(assert (=> b!1186480 (= lt!538968 (getCurrentListMapNoExtraKeys!5124 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1186481 () Bool)

(declare-fun e!674649 () Bool)

(assert (=> b!1186481 (= e!674649 true)))

(declare-fun lt!538966 () ListLongMap!17383)

(declare-fun lt!538965 () ListLongMap!17383)

(declare-fun -!1692 (ListLongMap!17383 (_ BitVec 64)) ListLongMap!17383)

(assert (=> b!1186481 (= (-!1692 lt!538966 k0!934) lt!538965)))

(declare-fun lt!538967 () Unit!39253)

(declare-fun lt!538956 () V!45027)

(declare-fun lt!538972 () ListLongMap!17383)

(declare-fun addRemoveCommutativeForDiffKeys!201 (ListLongMap!17383 (_ BitVec 64) V!45027 (_ BitVec 64)) Unit!39253)

(assert (=> b!1186481 (= lt!538967 (addRemoveCommutativeForDiffKeys!201 lt!538972 (select (arr!36955 _keys!1208) from!1455) lt!538956 k0!934))))

(declare-fun lt!538962 () ListLongMap!17383)

(declare-fun lt!538958 () ListLongMap!17383)

(assert (=> b!1186481 (and (= lt!538968 lt!538966) (= lt!538958 lt!538962))))

(declare-fun lt!538973 () tuple2!19402)

(declare-fun +!3911 (ListLongMap!17383 tuple2!19402) ListLongMap!17383)

(assert (=> b!1186481 (= lt!538966 (+!3911 lt!538972 lt!538973))))

(assert (=> b!1186481 (not (= (select (arr!36955 _keys!1208) from!1455) k0!934))))

(declare-fun lt!538957 () Unit!39253)

(assert (=> b!1186481 (= lt!538957 e!674643)))

(declare-fun c!117164 () Bool)

(assert (=> b!1186481 (= c!117164 (= (select (arr!36955 _keys!1208) from!1455) k0!934))))

(assert (=> b!1186481 e!674642))

(declare-fun res!788840 () Bool)

(assert (=> b!1186481 (=> (not res!788840) (not e!674642))))

(assert (=> b!1186481 (= res!788840 (= lt!538970 lt!538965))))

(assert (=> b!1186481 (= lt!538965 (+!3911 lt!538958 lt!538973))))

(assert (=> b!1186481 (= lt!538973 (tuple2!19403 (select (arr!36955 _keys!1208) from!1455) lt!538956))))

(declare-fun get!18965 (ValueCell!14253 V!45027) V!45027)

(assert (=> b!1186481 (= lt!538956 (get!18965 (select (arr!36956 _values!996) from!1455) lt!538961))))

(declare-fun b!1186482 () Bool)

(assert (=> b!1186482 (= e!674650 e!674649)))

(declare-fun res!788837 () Bool)

(assert (=> b!1186482 (=> res!788837 e!674649)))

(assert (=> b!1186482 (= res!788837 (not (validKeyInArray!0 (select (arr!36955 _keys!1208) from!1455))))))

(assert (=> b!1186482 (= lt!538962 lt!538958)))

(assert (=> b!1186482 (= lt!538958 (-!1692 lt!538972 k0!934))))

(assert (=> b!1186482 (= lt!538962 (getCurrentListMapNoExtraKeys!5124 lt!538969 lt!538964 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1186482 (= lt!538972 (getCurrentListMapNoExtraKeys!5124 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!538971 () Unit!39253)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!903 (array!76618 array!76620 (_ BitVec 32) (_ BitVec 32) V!45027 V!45027 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39253)

(assert (=> b!1186482 (= lt!538971 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!903 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1186483 () Bool)

(assert (=> b!1186483 (= e!674653 tp_is_empty!29925)))

(declare-fun b!1186484 () Bool)

(declare-fun Unit!39256 () Unit!39253)

(assert (=> b!1186484 (= e!674643 Unit!39256)))

(declare-fun b!1186485 () Bool)

(declare-fun res!788839 () Bool)

(assert (=> b!1186485 (=> (not res!788839) (not e!674652))))

(assert (=> b!1186485 (= res!788839 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37492 _keys!1208))))))

(declare-fun b!1186486 () Bool)

(assert (=> b!1186486 (= e!674651 (not e!674647))))

(declare-fun res!788843 () Bool)

(assert (=> b!1186486 (=> res!788843 e!674647)))

(assert (=> b!1186486 (= res!788843 (bvsgt from!1455 i!673))))

(assert (=> b!1186486 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!538974 () Unit!39253)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76618 (_ BitVec 64) (_ BitVec 32)) Unit!39253)

(assert (=> b!1186486 (= lt!538974 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(assert (= (and start!99852 res!788841) b!1186476))

(assert (= (and b!1186476 res!788836) b!1186470))

(assert (= (and b!1186470 res!788835) b!1186479))

(assert (= (and b!1186479 res!788845) b!1186475))

(assert (= (and b!1186475 res!788844) b!1186485))

(assert (= (and b!1186485 res!788839) b!1186467))

(assert (= (and b!1186467 res!788846) b!1186468))

(assert (= (and b!1186468 res!788842) b!1186474))

(assert (= (and b!1186474 res!788848) b!1186469))

(assert (= (and b!1186469 res!788847) b!1186486))

(assert (= (and b!1186486 (not res!788843)) b!1186480))

(assert (= (and b!1186480 (not res!788834)) b!1186482))

(assert (= (and b!1186482 (not res!788837)) b!1186481))

(assert (= (and b!1186481 res!788840) b!1186472))

(assert (= (and b!1186472 (not res!788838)) b!1186471))

(assert (= (and b!1186481 c!117164) b!1186478))

(assert (= (and b!1186481 (not c!117164)) b!1186484))

(assert (= (and b!1186473 condMapEmpty!46715) mapIsEmpty!46715))

(assert (= (and b!1186473 (not condMapEmpty!46715)) mapNonEmpty!46715))

(get-info :version)

(assert (= (and mapNonEmpty!46715 ((_ is ValueCellFull!14253) mapValue!46715)) b!1186477))

(assert (= (and b!1186473 ((_ is ValueCellFull!14253) mapDefault!46715)) b!1186483))

(assert (= start!99852 b!1186473))

(declare-fun b_lambda!20557 () Bool)

(assert (=> (not b_lambda!20557) (not b!1186480)))

(declare-fun t!38555 () Bool)

(declare-fun tb!10215 () Bool)

(assert (=> (and start!99852 (= defaultEntry!1004 defaultEntry!1004) t!38555) tb!10215))

(declare-fun result!20989 () Bool)

(assert (=> tb!10215 (= result!20989 tp_is_empty!29925)))

(assert (=> b!1186480 t!38555))

(declare-fun b_and!41673 () Bool)

(assert (= b_and!41671 (and (=> t!38555 result!20989) b_and!41673)))

(declare-fun m!1095075 () Bool)

(assert (=> b!1186472 m!1095075))

(declare-fun m!1095077 () Bool)

(assert (=> b!1186480 m!1095077))

(declare-fun m!1095079 () Bool)

(assert (=> b!1186480 m!1095079))

(declare-fun m!1095081 () Bool)

(assert (=> b!1186480 m!1095081))

(declare-fun m!1095083 () Bool)

(assert (=> b!1186480 m!1095083))

(declare-fun m!1095085 () Bool)

(assert (=> b!1186468 m!1095085))

(declare-fun m!1095087 () Bool)

(assert (=> start!99852 m!1095087))

(declare-fun m!1095089 () Bool)

(assert (=> start!99852 m!1095089))

(declare-fun m!1095091 () Bool)

(assert (=> b!1186486 m!1095091))

(declare-fun m!1095093 () Bool)

(assert (=> b!1186486 m!1095093))

(declare-fun m!1095095 () Bool)

(assert (=> b!1186471 m!1095095))

(declare-fun m!1095097 () Bool)

(assert (=> b!1186474 m!1095097))

(declare-fun m!1095099 () Bool)

(assert (=> b!1186474 m!1095099))

(declare-fun m!1095101 () Bool)

(assert (=> b!1186479 m!1095101))

(declare-fun m!1095103 () Bool)

(assert (=> b!1186469 m!1095103))

(declare-fun m!1095105 () Bool)

(assert (=> b!1186482 m!1095105))

(declare-fun m!1095107 () Bool)

(assert (=> b!1186482 m!1095107))

(declare-fun m!1095109 () Bool)

(assert (=> b!1186482 m!1095109))

(assert (=> b!1186482 m!1095075))

(declare-fun m!1095111 () Bool)

(assert (=> b!1186482 m!1095111))

(declare-fun m!1095113 () Bool)

(assert (=> b!1186482 m!1095113))

(assert (=> b!1186482 m!1095075))

(declare-fun m!1095115 () Bool)

(assert (=> b!1186481 m!1095115))

(declare-fun m!1095117 () Bool)

(assert (=> b!1186481 m!1095117))

(assert (=> b!1186481 m!1095075))

(declare-fun m!1095119 () Bool)

(assert (=> b!1186481 m!1095119))

(declare-fun m!1095121 () Bool)

(assert (=> b!1186481 m!1095121))

(declare-fun m!1095123 () Bool)

(assert (=> b!1186481 m!1095123))

(assert (=> b!1186481 m!1095075))

(assert (=> b!1186481 m!1095115))

(declare-fun m!1095125 () Bool)

(assert (=> b!1186481 m!1095125))

(declare-fun m!1095127 () Bool)

(assert (=> b!1186475 m!1095127))

(declare-fun m!1095129 () Bool)

(assert (=> b!1186478 m!1095129))

(declare-fun m!1095131 () Bool)

(assert (=> b!1186478 m!1095131))

(declare-fun m!1095133 () Bool)

(assert (=> b!1186478 m!1095133))

(declare-fun m!1095135 () Bool)

(assert (=> b!1186478 m!1095135))

(declare-fun m!1095137 () Bool)

(assert (=> b!1186478 m!1095137))

(declare-fun m!1095139 () Bool)

(assert (=> b!1186467 m!1095139))

(declare-fun m!1095141 () Bool)

(assert (=> mapNonEmpty!46715 m!1095141))

(declare-fun m!1095143 () Bool)

(assert (=> b!1186476 m!1095143))

(check-sat (not b!1186474) (not b!1186480) (not mapNonEmpty!46715) (not start!99852) tp_is_empty!29925 (not b_lambda!20557) b_and!41673 (not b!1186486) (not b!1186479) (not b_next!25395) (not b!1186469) (not b!1186467) (not b!1186482) (not b!1186471) (not b!1186476) (not b!1186478) (not b!1186475) (not b!1186481))
(check-sat b_and!41673 (not b_next!25395))
