; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101738 () Bool)

(assert start!101738)

(declare-fun b_free!26391 () Bool)

(declare-fun b_next!26391 () Bool)

(assert (=> start!101738 (= b_free!26391 (not b_next!26391))))

(declare-fun tp!92219 () Bool)

(declare-fun b_and!44053 () Bool)

(assert (=> start!101738 (= tp!92219 b_and!44053)))

(declare-fun b!1223431 () Bool)

(declare-fun e!694883 () Bool)

(declare-datatypes ((V!46587 0))(
  ( (V!46588 (val!15604 Int)) )
))
(declare-datatypes ((tuple2!20246 0))(
  ( (tuple2!20247 (_1!10133 (_ BitVec 64)) (_2!10133 V!46587)) )
))
(declare-datatypes ((List!27058 0))(
  ( (Nil!27055) (Cons!27054 (h!28263 tuple2!20246) (t!40436 List!27058)) )
))
(declare-datatypes ((ListLongMap!18227 0))(
  ( (ListLongMap!18228 (toList!9129 List!27058)) )
))
(declare-fun lt!556828 () ListLongMap!18227)

(declare-fun lt!556831 () ListLongMap!18227)

(declare-fun lt!556827 () tuple2!20246)

(declare-fun +!4092 (ListLongMap!18227 tuple2!20246) ListLongMap!18227)

(assert (=> b!1223431 (= e!694883 (= lt!556828 (+!4092 lt!556831 lt!556827)))))

(declare-fun b!1223432 () Bool)

(declare-fun e!694872 () Bool)

(declare-fun e!694882 () Bool)

(assert (=> b!1223432 (= e!694872 e!694882)))

(declare-fun res!812974 () Bool)

(assert (=> b!1223432 (=> (not res!812974) (not e!694882))))

(declare-datatypes ((array!78948 0))(
  ( (array!78949 (arr!38097 (Array (_ BitVec 32) (_ BitVec 64))) (size!38634 (_ BitVec 32))) )
))
(declare-fun lt!556832 () array!78948)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78948 (_ BitVec 32)) Bool)

(assert (=> b!1223432 (= res!812974 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!556832 mask!1564))))

(declare-fun _keys!1208 () array!78948)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1223432 (= lt!556832 (array!78949 (store (arr!38097 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38634 _keys!1208)))))

(declare-fun res!812978 () Bool)

(assert (=> start!101738 (=> (not res!812978) (not e!694872))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!101738 (= res!812978 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38634 _keys!1208))))))

(assert (=> start!101738 e!694872))

(declare-fun tp_is_empty!31095 () Bool)

(assert (=> start!101738 tp_is_empty!31095))

(declare-fun array_inv!28900 (array!78948) Bool)

(assert (=> start!101738 (array_inv!28900 _keys!1208)))

(assert (=> start!101738 true))

(assert (=> start!101738 tp!92219))

(declare-datatypes ((ValueCell!14838 0))(
  ( (ValueCellFull!14838 (v!18267 V!46587)) (EmptyCell!14838) )
))
(declare-datatypes ((array!78950 0))(
  ( (array!78951 (arr!38098 (Array (_ BitVec 32) ValueCell!14838)) (size!38635 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78950)

(declare-fun e!694876 () Bool)

(declare-fun array_inv!28901 (array!78950) Bool)

(assert (=> start!101738 (and (array_inv!28901 _values!996) e!694876)))

(declare-fun b!1223433 () Bool)

(declare-fun e!694877 () Bool)

(declare-fun mapRes!48541 () Bool)

(assert (=> b!1223433 (= e!694876 (and e!694877 mapRes!48541))))

(declare-fun condMapEmpty!48541 () Bool)

(declare-fun mapDefault!48541 () ValueCell!14838)

(assert (=> b!1223433 (= condMapEmpty!48541 (= (arr!38098 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14838)) mapDefault!48541)))))

(declare-fun mapNonEmpty!48541 () Bool)

(declare-fun tp!92220 () Bool)

(declare-fun e!694874 () Bool)

(assert (=> mapNonEmpty!48541 (= mapRes!48541 (and tp!92220 e!694874))))

(declare-fun mapKey!48541 () (_ BitVec 32))

(declare-fun mapValue!48541 () ValueCell!14838)

(declare-fun mapRest!48541 () (Array (_ BitVec 32) ValueCell!14838))

(assert (=> mapNonEmpty!48541 (= (arr!38098 _values!996) (store mapRest!48541 mapKey!48541 mapValue!48541))))

(declare-fun e!694878 () Bool)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun b!1223434 () Bool)

(declare-fun arrayContainsKey!0 (array!78948 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1223434 (= e!694878 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1223435 () Bool)

(declare-fun e!694873 () Bool)

(assert (=> b!1223435 (= e!694873 e!694878)))

(declare-fun res!812975 () Bool)

(assert (=> b!1223435 (=> res!812975 e!694878)))

(assert (=> b!1223435 (= res!812975 (not (= (select (arr!38097 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1223436 () Bool)

(declare-fun res!812973 () Bool)

(assert (=> b!1223436 (=> (not res!812973) (not e!694872))))

(assert (=> b!1223436 (= res!812973 (= (select (arr!38097 _keys!1208) i!673) k0!934))))

(declare-fun b!1223437 () Bool)

(declare-datatypes ((Unit!40447 0))(
  ( (Unit!40448) )
))
(declare-fun e!694875 () Unit!40447)

(declare-fun Unit!40449 () Unit!40447)

(assert (=> b!1223437 (= e!694875 Unit!40449)))

(declare-fun b!1223438 () Bool)

(declare-fun e!694880 () Bool)

(declare-fun e!694881 () Bool)

(assert (=> b!1223438 (= e!694880 e!694881)))

(declare-fun res!812981 () Bool)

(assert (=> b!1223438 (=> res!812981 e!694881)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1223438 (= res!812981 (not (validKeyInArray!0 (select (arr!38097 _keys!1208) from!1455))))))

(declare-fun lt!556830 () ListLongMap!18227)

(declare-fun lt!556833 () ListLongMap!18227)

(assert (=> b!1223438 (= lt!556830 lt!556833)))

(declare-fun -!1970 (ListLongMap!18227 (_ BitVec 64)) ListLongMap!18227)

(assert (=> b!1223438 (= lt!556833 (-!1970 lt!556831 k0!934))))

(declare-fun zeroValue!944 () V!46587)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!556835 () array!78950)

(declare-fun minValue!944 () V!46587)

(declare-fun getCurrentListMapNoExtraKeys!5527 (array!78948 array!78950 (_ BitVec 32) (_ BitVec 32) V!46587 V!46587 (_ BitVec 32) Int) ListLongMap!18227)

(assert (=> b!1223438 (= lt!556830 (getCurrentListMapNoExtraKeys!5527 lt!556832 lt!556835 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1223438 (= lt!556831 (getCurrentListMapNoExtraKeys!5527 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!556829 () Unit!40447)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1172 (array!78948 array!78950 (_ BitVec 32) (_ BitVec 32) V!46587 V!46587 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40447)

(assert (=> b!1223438 (= lt!556829 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1172 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!48541 () Bool)

(assert (=> mapIsEmpty!48541 mapRes!48541))

(declare-fun b!1223439 () Bool)

(assert (=> b!1223439 (= e!694874 tp_is_empty!31095)))

(declare-fun b!1223440 () Bool)

(declare-fun res!812977 () Bool)

(assert (=> b!1223440 (=> (not res!812977) (not e!694872))))

(assert (=> b!1223440 (= res!812977 (validKeyInArray!0 k0!934))))

(declare-fun b!1223441 () Bool)

(assert (=> b!1223441 (= e!694877 tp_is_empty!31095)))

(declare-fun b!1223442 () Bool)

(declare-fun e!694884 () Bool)

(assert (=> b!1223442 (= e!694884 e!694880)))

(declare-fun res!812986 () Bool)

(assert (=> b!1223442 (=> res!812986 e!694880)))

(assert (=> b!1223442 (= res!812986 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!556839 () ListLongMap!18227)

(assert (=> b!1223442 (= lt!556839 (getCurrentListMapNoExtraKeys!5527 lt!556832 lt!556835 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!556837 () V!46587)

(assert (=> b!1223442 (= lt!556835 (array!78951 (store (arr!38098 _values!996) i!673 (ValueCellFull!14838 lt!556837)) (size!38635 _values!996)))))

(declare-fun dynLambda!3423 (Int (_ BitVec 64)) V!46587)

(assert (=> b!1223442 (= lt!556837 (dynLambda!3423 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1223442 (= lt!556828 (getCurrentListMapNoExtraKeys!5527 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1223443 () Bool)

(declare-fun res!812988 () Bool)

(assert (=> b!1223443 (=> (not res!812988) (not e!694872))))

(assert (=> b!1223443 (= res!812988 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38634 _keys!1208))))))

(declare-fun b!1223444 () Bool)

(assert (=> b!1223444 (= e!694882 (not e!694884))))

(declare-fun res!812985 () Bool)

(assert (=> b!1223444 (=> res!812985 e!694884)))

(assert (=> b!1223444 (= res!812985 (bvsgt from!1455 i!673))))

(assert (=> b!1223444 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!556836 () Unit!40447)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78948 (_ BitVec 64) (_ BitVec 32)) Unit!40447)

(assert (=> b!1223444 (= lt!556836 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1223445 () Bool)

(declare-fun res!812976 () Bool)

(assert (=> b!1223445 (=> (not res!812976) (not e!694872))))

(assert (=> b!1223445 (= res!812976 (and (= (size!38635 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38634 _keys!1208) (size!38635 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1223446 () Bool)

(declare-fun res!812987 () Bool)

(assert (=> b!1223446 (=> (not res!812987) (not e!694872))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1223446 (= res!812987 (validMask!0 mask!1564))))

(declare-fun b!1223447 () Bool)

(declare-fun res!812979 () Bool)

(assert (=> b!1223447 (=> (not res!812979) (not e!694882))))

(declare-datatypes ((List!27059 0))(
  ( (Nil!27056) (Cons!27055 (h!28264 (_ BitVec 64)) (t!40437 List!27059)) )
))
(declare-fun arrayNoDuplicates!0 (array!78948 (_ BitVec 32) List!27059) Bool)

(assert (=> b!1223447 (= res!812979 (arrayNoDuplicates!0 lt!556832 #b00000000000000000000000000000000 Nil!27056))))

(declare-fun b!1223448 () Bool)

(declare-fun res!812980 () Bool)

(assert (=> b!1223448 (=> (not res!812980) (not e!694872))))

(assert (=> b!1223448 (= res!812980 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1223449 () Bool)

(assert (=> b!1223449 (= e!694881 true)))

(assert (=> b!1223449 e!694883))

(declare-fun res!812982 () Bool)

(assert (=> b!1223449 (=> (not res!812982) (not e!694883))))

(assert (=> b!1223449 (= res!812982 (not (= (select (arr!38097 _keys!1208) from!1455) k0!934)))))

(declare-fun lt!556840 () Unit!40447)

(assert (=> b!1223449 (= lt!556840 e!694875)))

(declare-fun c!120351 () Bool)

(assert (=> b!1223449 (= c!120351 (= (select (arr!38097 _keys!1208) from!1455) k0!934))))

(assert (=> b!1223449 e!694873))

(declare-fun res!812983 () Bool)

(assert (=> b!1223449 (=> (not res!812983) (not e!694873))))

(assert (=> b!1223449 (= res!812983 (= lt!556839 (+!4092 lt!556833 lt!556827)))))

(declare-fun get!19496 (ValueCell!14838 V!46587) V!46587)

(assert (=> b!1223449 (= lt!556827 (tuple2!20247 (select (arr!38097 _keys!1208) from!1455) (get!19496 (select (arr!38098 _values!996) from!1455) lt!556837)))))

(declare-fun b!1223450 () Bool)

(declare-fun res!812984 () Bool)

(assert (=> b!1223450 (=> (not res!812984) (not e!694872))))

(assert (=> b!1223450 (= res!812984 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!27056))))

(declare-fun b!1223451 () Bool)

(declare-fun Unit!40450 () Unit!40447)

(assert (=> b!1223451 (= e!694875 Unit!40450)))

(declare-fun lt!556826 () Unit!40447)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!78948 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!40447)

(assert (=> b!1223451 (= lt!556826 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1223451 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!556834 () Unit!40447)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78948 (_ BitVec 32) (_ BitVec 32)) Unit!40447)

(assert (=> b!1223451 (= lt!556834 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1223451 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!27056)))

(declare-fun lt!556838 () Unit!40447)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!78948 (_ BitVec 64) (_ BitVec 32) List!27059) Unit!40447)

(assert (=> b!1223451 (= lt!556838 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!27056))))

(assert (=> b!1223451 false))

(assert (= (and start!101738 res!812978) b!1223446))

(assert (= (and b!1223446 res!812987) b!1223445))

(assert (= (and b!1223445 res!812976) b!1223448))

(assert (= (and b!1223448 res!812980) b!1223450))

(assert (= (and b!1223450 res!812984) b!1223443))

(assert (= (and b!1223443 res!812988) b!1223440))

(assert (= (and b!1223440 res!812977) b!1223436))

(assert (= (and b!1223436 res!812973) b!1223432))

(assert (= (and b!1223432 res!812974) b!1223447))

(assert (= (and b!1223447 res!812979) b!1223444))

(assert (= (and b!1223444 (not res!812985)) b!1223442))

(assert (= (and b!1223442 (not res!812986)) b!1223438))

(assert (= (and b!1223438 (not res!812981)) b!1223449))

(assert (= (and b!1223449 res!812983) b!1223435))

(assert (= (and b!1223435 (not res!812975)) b!1223434))

(assert (= (and b!1223449 c!120351) b!1223451))

(assert (= (and b!1223449 (not c!120351)) b!1223437))

(assert (= (and b!1223449 res!812982) b!1223431))

(assert (= (and b!1223433 condMapEmpty!48541) mapIsEmpty!48541))

(assert (= (and b!1223433 (not condMapEmpty!48541)) mapNonEmpty!48541))

(get-info :version)

(assert (= (and mapNonEmpty!48541 ((_ is ValueCellFull!14838) mapValue!48541)) b!1223439))

(assert (= (and b!1223433 ((_ is ValueCellFull!14838) mapDefault!48541)) b!1223441))

(assert (= start!101738 b!1223433))

(declare-fun b_lambda!22381 () Bool)

(assert (=> (not b_lambda!22381) (not b!1223442)))

(declare-fun t!40435 () Bool)

(declare-fun tb!11199 () Bool)

(assert (=> (and start!101738 (= defaultEntry!1004 defaultEntry!1004) t!40435) tb!11199))

(declare-fun result!23003 () Bool)

(assert (=> tb!11199 (= result!23003 tp_is_empty!31095)))

(assert (=> b!1223442 t!40435))

(declare-fun b_and!44055 () Bool)

(assert (= b_and!44053 (and (=> t!40435 result!23003) b_and!44055)))

(declare-fun m!1128481 () Bool)

(assert (=> b!1223451 m!1128481))

(declare-fun m!1128483 () Bool)

(assert (=> b!1223451 m!1128483))

(declare-fun m!1128485 () Bool)

(assert (=> b!1223451 m!1128485))

(declare-fun m!1128487 () Bool)

(assert (=> b!1223451 m!1128487))

(declare-fun m!1128489 () Bool)

(assert (=> b!1223451 m!1128489))

(declare-fun m!1128491 () Bool)

(assert (=> b!1223438 m!1128491))

(declare-fun m!1128493 () Bool)

(assert (=> b!1223438 m!1128493))

(declare-fun m!1128495 () Bool)

(assert (=> b!1223438 m!1128495))

(declare-fun m!1128497 () Bool)

(assert (=> b!1223438 m!1128497))

(declare-fun m!1128499 () Bool)

(assert (=> b!1223438 m!1128499))

(declare-fun m!1128501 () Bool)

(assert (=> b!1223438 m!1128501))

(assert (=> b!1223438 m!1128499))

(assert (=> b!1223435 m!1128499))

(assert (=> b!1223449 m!1128499))

(declare-fun m!1128503 () Bool)

(assert (=> b!1223449 m!1128503))

(declare-fun m!1128505 () Bool)

(assert (=> b!1223449 m!1128505))

(assert (=> b!1223449 m!1128505))

(declare-fun m!1128507 () Bool)

(assert (=> b!1223449 m!1128507))

(declare-fun m!1128509 () Bool)

(assert (=> b!1223436 m!1128509))

(declare-fun m!1128511 () Bool)

(assert (=> b!1223432 m!1128511))

(declare-fun m!1128513 () Bool)

(assert (=> b!1223432 m!1128513))

(declare-fun m!1128515 () Bool)

(assert (=> b!1223440 m!1128515))

(declare-fun m!1128517 () Bool)

(assert (=> mapNonEmpty!48541 m!1128517))

(declare-fun m!1128519 () Bool)

(assert (=> b!1223442 m!1128519))

(declare-fun m!1128521 () Bool)

(assert (=> b!1223442 m!1128521))

(declare-fun m!1128523 () Bool)

(assert (=> b!1223442 m!1128523))

(declare-fun m!1128525 () Bool)

(assert (=> b!1223442 m!1128525))

(declare-fun m!1128527 () Bool)

(assert (=> b!1223434 m!1128527))

(declare-fun m!1128529 () Bool)

(assert (=> b!1223444 m!1128529))

(declare-fun m!1128531 () Bool)

(assert (=> b!1223444 m!1128531))

(declare-fun m!1128533 () Bool)

(assert (=> start!101738 m!1128533))

(declare-fun m!1128535 () Bool)

(assert (=> start!101738 m!1128535))

(declare-fun m!1128537 () Bool)

(assert (=> b!1223446 m!1128537))

(declare-fun m!1128539 () Bool)

(assert (=> b!1223431 m!1128539))

(declare-fun m!1128541 () Bool)

(assert (=> b!1223447 m!1128541))

(declare-fun m!1128543 () Bool)

(assert (=> b!1223448 m!1128543))

(declare-fun m!1128545 () Bool)

(assert (=> b!1223450 m!1128545))

(check-sat b_and!44055 (not b!1223440) (not b!1223450) (not b_next!26391) (not b!1223446) (not b!1223447) (not b!1223431) (not b!1223448) (not b!1223442) (not b!1223432) (not b_lambda!22381) (not b!1223438) (not mapNonEmpty!48541) (not b!1223444) tp_is_empty!31095 (not start!101738) (not b!1223449) (not b!1223451) (not b!1223434))
(check-sat b_and!44055 (not b_next!26391))
