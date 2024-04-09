; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101508 () Bool)

(assert start!101508)

(declare-fun b_free!26289 () Bool)

(declare-fun b_next!26289 () Bool)

(assert (=> start!101508 (= b_free!26289 (not b_next!26289))))

(declare-fun tp!91901 () Bool)

(declare-fun b_and!43777 () Bool)

(assert (=> start!101508 (= tp!91901 b_and!43777)))

(declare-fun b!1219647 () Bool)

(declare-fun res!810205 () Bool)

(declare-fun e!692567 () Bool)

(assert (=> b!1219647 (=> (not res!810205) (not e!692567))))

(declare-datatypes ((array!78738 0))(
  ( (array!78739 (arr!37996 (Array (_ BitVec 32) (_ BitVec 64))) (size!38533 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78738)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1219647 (= res!810205 (= (select (arr!37996 _keys!1208) i!673) k0!934))))

(declare-fun b!1219648 () Bool)

(declare-fun res!810197 () Bool)

(assert (=> b!1219648 (=> (not res!810197) (not e!692567))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78738 (_ BitVec 32)) Bool)

(assert (=> b!1219648 (= res!810197 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1219649 () Bool)

(declare-fun e!692558 () Bool)

(declare-fun e!692566 () Bool)

(assert (=> b!1219649 (= e!692558 e!692566)))

(declare-fun res!810199 () Bool)

(assert (=> b!1219649 (=> res!810199 e!692566)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1219649 (= res!810199 (not (= (select (arr!37996 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1219650 () Bool)

(declare-fun arrayContainsKey!0 (array!78738 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1219650 (= e!692566 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun mapNonEmpty!48376 () Bool)

(declare-fun mapRes!48376 () Bool)

(declare-fun tp!91902 () Bool)

(declare-fun e!692559 () Bool)

(assert (=> mapNonEmpty!48376 (= mapRes!48376 (and tp!91902 e!692559))))

(declare-datatypes ((V!46451 0))(
  ( (V!46452 (val!15553 Int)) )
))
(declare-datatypes ((ValueCell!14787 0))(
  ( (ValueCellFull!14787 (v!18211 V!46451)) (EmptyCell!14787) )
))
(declare-fun mapRest!48376 () (Array (_ BitVec 32) ValueCell!14787))

(declare-fun mapKey!48376 () (_ BitVec 32))

(declare-fun mapValue!48376 () ValueCell!14787)

(declare-datatypes ((array!78740 0))(
  ( (array!78741 (arr!37997 (Array (_ BitVec 32) ValueCell!14787)) (size!38534 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78740)

(assert (=> mapNonEmpty!48376 (= (arr!37997 _values!996) (store mapRest!48376 mapKey!48376 mapValue!48376))))

(declare-fun b!1219651 () Bool)

(declare-fun e!692562 () Bool)

(declare-fun e!692565 () Bool)

(assert (=> b!1219651 (= e!692562 e!692565)))

(declare-fun res!810201 () Bool)

(assert (=> b!1219651 (=> res!810201 e!692565)))

(assert (=> b!1219651 (= res!810201 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!46451)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!554533 () array!78738)

(declare-fun lt!554536 () array!78740)

(declare-fun minValue!944 () V!46451)

(declare-datatypes ((tuple2!20150 0))(
  ( (tuple2!20151 (_1!10085 (_ BitVec 64)) (_2!10085 V!46451)) )
))
(declare-datatypes ((List!26969 0))(
  ( (Nil!26966) (Cons!26965 (h!28174 tuple2!20150) (t!40245 List!26969)) )
))
(declare-datatypes ((ListLongMap!18131 0))(
  ( (ListLongMap!18132 (toList!9081 List!26969)) )
))
(declare-fun lt!554535 () ListLongMap!18131)

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!5481 (array!78738 array!78740 (_ BitVec 32) (_ BitVec 32) V!46451 V!46451 (_ BitVec 32) Int) ListLongMap!18131)

(assert (=> b!1219651 (= lt!554535 (getCurrentListMapNoExtraKeys!5481 lt!554533 lt!554536 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!554529 () V!46451)

(assert (=> b!1219651 (= lt!554536 (array!78741 (store (arr!37997 _values!996) i!673 (ValueCellFull!14787 lt!554529)) (size!38534 _values!996)))))

(declare-fun dynLambda!3383 (Int (_ BitVec 64)) V!46451)

(assert (=> b!1219651 (= lt!554529 (dynLambda!3383 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!554534 () ListLongMap!18131)

(assert (=> b!1219651 (= lt!554534 (getCurrentListMapNoExtraKeys!5481 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1219652 () Bool)

(declare-fun res!810209 () Bool)

(assert (=> b!1219652 (=> (not res!810209) (not e!692567))))

(declare-datatypes ((List!26970 0))(
  ( (Nil!26967) (Cons!26966 (h!28175 (_ BitVec 64)) (t!40246 List!26970)) )
))
(declare-fun arrayNoDuplicates!0 (array!78738 (_ BitVec 32) List!26970) Bool)

(assert (=> b!1219652 (= res!810209 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26967))))

(declare-fun b!1219653 () Bool)

(declare-fun res!810195 () Bool)

(assert (=> b!1219653 (=> (not res!810195) (not e!692567))))

(assert (=> b!1219653 (= res!810195 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38533 _keys!1208))))))

(declare-fun b!1219654 () Bool)

(declare-fun res!810208 () Bool)

(declare-fun e!692563 () Bool)

(assert (=> b!1219654 (=> (not res!810208) (not e!692563))))

(assert (=> b!1219654 (= res!810208 (arrayNoDuplicates!0 lt!554533 #b00000000000000000000000000000000 Nil!26967))))

(declare-fun res!810207 () Bool)

(assert (=> start!101508 (=> (not res!810207) (not e!692567))))

(assert (=> start!101508 (= res!810207 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38533 _keys!1208))))))

(assert (=> start!101508 e!692567))

(declare-fun tp_is_empty!30993 () Bool)

(assert (=> start!101508 tp_is_empty!30993))

(declare-fun array_inv!28828 (array!78738) Bool)

(assert (=> start!101508 (array_inv!28828 _keys!1208)))

(assert (=> start!101508 true))

(assert (=> start!101508 tp!91901))

(declare-fun e!692560 () Bool)

(declare-fun array_inv!28829 (array!78740) Bool)

(assert (=> start!101508 (and (array_inv!28829 _values!996) e!692560)))

(declare-fun b!1219655 () Bool)

(declare-fun res!810202 () Bool)

(assert (=> b!1219655 (=> (not res!810202) (not e!692567))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1219655 (= res!810202 (validKeyInArray!0 k0!934))))

(declare-fun mapIsEmpty!48376 () Bool)

(assert (=> mapIsEmpty!48376 mapRes!48376))

(declare-fun b!1219656 () Bool)

(declare-fun e!692557 () Bool)

(declare-fun e!692568 () Bool)

(assert (=> b!1219656 (= e!692557 e!692568)))

(declare-fun res!810206 () Bool)

(assert (=> b!1219656 (=> res!810206 e!692568)))

(assert (=> b!1219656 (= res!810206 (not (= (select (arr!37996 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1219656 e!692558))

(declare-fun res!810203 () Bool)

(assert (=> b!1219656 (=> (not res!810203) (not e!692558))))

(declare-fun lt!554531 () ListLongMap!18131)

(declare-fun +!4057 (ListLongMap!18131 tuple2!20150) ListLongMap!18131)

(declare-fun get!19419 (ValueCell!14787 V!46451) V!46451)

(assert (=> b!1219656 (= res!810203 (= lt!554535 (+!4057 lt!554531 (tuple2!20151 (select (arr!37996 _keys!1208) from!1455) (get!19419 (select (arr!37997 _values!996) from!1455) lt!554529)))))))

(declare-fun b!1219657 () Bool)

(assert (=> b!1219657 (= e!692559 tp_is_empty!30993)))

(declare-fun b!1219658 () Bool)

(assert (=> b!1219658 (= e!692568 true)))

(assert (=> b!1219658 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-datatypes ((Unit!40336 0))(
  ( (Unit!40337) )
))
(declare-fun lt!554532 () Unit!40336)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!78738 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!40336)

(assert (=> b!1219658 (= lt!554532 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1219659 () Bool)

(declare-fun res!810194 () Bool)

(assert (=> b!1219659 (=> (not res!810194) (not e!692567))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1219659 (= res!810194 (validMask!0 mask!1564))))

(declare-fun b!1219660 () Bool)

(declare-fun e!692564 () Bool)

(assert (=> b!1219660 (= e!692560 (and e!692564 mapRes!48376))))

(declare-fun condMapEmpty!48376 () Bool)

(declare-fun mapDefault!48376 () ValueCell!14787)

(assert (=> b!1219660 (= condMapEmpty!48376 (= (arr!37997 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14787)) mapDefault!48376)))))

(declare-fun b!1219661 () Bool)

(assert (=> b!1219661 (= e!692567 e!692563)))

(declare-fun res!810204 () Bool)

(assert (=> b!1219661 (=> (not res!810204) (not e!692563))))

(assert (=> b!1219661 (= res!810204 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!554533 mask!1564))))

(assert (=> b!1219661 (= lt!554533 (array!78739 (store (arr!37996 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38533 _keys!1208)))))

(declare-fun b!1219662 () Bool)

(assert (=> b!1219662 (= e!692563 (not e!692562))))

(declare-fun res!810198 () Bool)

(assert (=> b!1219662 (=> res!810198 e!692562)))

(assert (=> b!1219662 (= res!810198 (bvsgt from!1455 i!673))))

(assert (=> b!1219662 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!554528 () Unit!40336)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78738 (_ BitVec 64) (_ BitVec 32)) Unit!40336)

(assert (=> b!1219662 (= lt!554528 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1219663 () Bool)

(declare-fun res!810200 () Bool)

(assert (=> b!1219663 (=> (not res!810200) (not e!692567))))

(assert (=> b!1219663 (= res!810200 (and (= (size!38534 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38533 _keys!1208) (size!38534 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1219664 () Bool)

(assert (=> b!1219664 (= e!692564 tp_is_empty!30993)))

(declare-fun b!1219665 () Bool)

(assert (=> b!1219665 (= e!692565 e!692557)))

(declare-fun res!810196 () Bool)

(assert (=> b!1219665 (=> res!810196 e!692557)))

(assert (=> b!1219665 (= res!810196 (not (validKeyInArray!0 (select (arr!37996 _keys!1208) from!1455))))))

(declare-fun lt!554530 () ListLongMap!18131)

(assert (=> b!1219665 (= lt!554530 lt!554531)))

(declare-fun lt!554537 () ListLongMap!18131)

(declare-fun -!1934 (ListLongMap!18131 (_ BitVec 64)) ListLongMap!18131)

(assert (=> b!1219665 (= lt!554531 (-!1934 lt!554537 k0!934))))

(assert (=> b!1219665 (= lt!554530 (getCurrentListMapNoExtraKeys!5481 lt!554533 lt!554536 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1219665 (= lt!554537 (getCurrentListMapNoExtraKeys!5481 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!554527 () Unit!40336)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1136 (array!78738 array!78740 (_ BitVec 32) (_ BitVec 32) V!46451 V!46451 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40336)

(assert (=> b!1219665 (= lt!554527 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1136 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (= (and start!101508 res!810207) b!1219659))

(assert (= (and b!1219659 res!810194) b!1219663))

(assert (= (and b!1219663 res!810200) b!1219648))

(assert (= (and b!1219648 res!810197) b!1219652))

(assert (= (and b!1219652 res!810209) b!1219653))

(assert (= (and b!1219653 res!810195) b!1219655))

(assert (= (and b!1219655 res!810202) b!1219647))

(assert (= (and b!1219647 res!810205) b!1219661))

(assert (= (and b!1219661 res!810204) b!1219654))

(assert (= (and b!1219654 res!810208) b!1219662))

(assert (= (and b!1219662 (not res!810198)) b!1219651))

(assert (= (and b!1219651 (not res!810201)) b!1219665))

(assert (= (and b!1219665 (not res!810196)) b!1219656))

(assert (= (and b!1219656 res!810203) b!1219649))

(assert (= (and b!1219649 (not res!810199)) b!1219650))

(assert (= (and b!1219656 (not res!810206)) b!1219658))

(assert (= (and b!1219660 condMapEmpty!48376) mapIsEmpty!48376))

(assert (= (and b!1219660 (not condMapEmpty!48376)) mapNonEmpty!48376))

(get-info :version)

(assert (= (and mapNonEmpty!48376 ((_ is ValueCellFull!14787) mapValue!48376)) b!1219657))

(assert (= (and b!1219660 ((_ is ValueCellFull!14787) mapDefault!48376)) b!1219664))

(assert (= start!101508 b!1219660))

(declare-fun b_lambda!22127 () Bool)

(assert (=> (not b_lambda!22127) (not b!1219651)))

(declare-fun t!40244 () Bool)

(declare-fun tb!11097 () Bool)

(assert (=> (and start!101508 (= defaultEntry!1004 defaultEntry!1004) t!40244) tb!11097))

(declare-fun result!22791 () Bool)

(assert (=> tb!11097 (= result!22791 tp_is_empty!30993)))

(assert (=> b!1219651 t!40244))

(declare-fun b_and!43779 () Bool)

(assert (= b_and!43777 (and (=> t!40244 result!22791) b_and!43779)))

(declare-fun m!1124465 () Bool)

(assert (=> b!1219650 m!1124465))

(declare-fun m!1124467 () Bool)

(assert (=> b!1219655 m!1124467))

(declare-fun m!1124469 () Bool)

(assert (=> b!1219649 m!1124469))

(assert (=> b!1219656 m!1124469))

(declare-fun m!1124471 () Bool)

(assert (=> b!1219656 m!1124471))

(assert (=> b!1219656 m!1124471))

(declare-fun m!1124473 () Bool)

(assert (=> b!1219656 m!1124473))

(declare-fun m!1124475 () Bool)

(assert (=> b!1219656 m!1124475))

(declare-fun m!1124477 () Bool)

(assert (=> b!1219661 m!1124477))

(declare-fun m!1124479 () Bool)

(assert (=> b!1219661 m!1124479))

(declare-fun m!1124481 () Bool)

(assert (=> b!1219651 m!1124481))

(declare-fun m!1124483 () Bool)

(assert (=> b!1219651 m!1124483))

(declare-fun m!1124485 () Bool)

(assert (=> b!1219651 m!1124485))

(declare-fun m!1124487 () Bool)

(assert (=> b!1219651 m!1124487))

(declare-fun m!1124489 () Bool)

(assert (=> b!1219662 m!1124489))

(declare-fun m!1124491 () Bool)

(assert (=> b!1219662 m!1124491))

(declare-fun m!1124493 () Bool)

(assert (=> b!1219659 m!1124493))

(declare-fun m!1124495 () Bool)

(assert (=> b!1219665 m!1124495))

(declare-fun m!1124497 () Bool)

(assert (=> b!1219665 m!1124497))

(declare-fun m!1124499 () Bool)

(assert (=> b!1219665 m!1124499))

(assert (=> b!1219665 m!1124469))

(declare-fun m!1124501 () Bool)

(assert (=> b!1219665 m!1124501))

(declare-fun m!1124503 () Bool)

(assert (=> b!1219665 m!1124503))

(assert (=> b!1219665 m!1124469))

(declare-fun m!1124505 () Bool)

(assert (=> b!1219647 m!1124505))

(declare-fun m!1124507 () Bool)

(assert (=> start!101508 m!1124507))

(declare-fun m!1124509 () Bool)

(assert (=> start!101508 m!1124509))

(declare-fun m!1124511 () Bool)

(assert (=> b!1219648 m!1124511))

(declare-fun m!1124513 () Bool)

(assert (=> b!1219652 m!1124513))

(declare-fun m!1124515 () Bool)

(assert (=> mapNonEmpty!48376 m!1124515))

(declare-fun m!1124517 () Bool)

(assert (=> b!1219658 m!1124517))

(declare-fun m!1124519 () Bool)

(assert (=> b!1219658 m!1124519))

(declare-fun m!1124521 () Bool)

(assert (=> b!1219654 m!1124521))

(check-sat (not mapNonEmpty!48376) (not b!1219665) (not b!1219654) (not b!1219662) (not b!1219658) (not b!1219659) tp_is_empty!30993 (not b!1219652) (not b!1219655) (not b_lambda!22127) (not b!1219651) (not b_next!26289) (not b!1219648) (not b!1219661) (not b!1219656) (not start!101508) (not b!1219650) b_and!43779)
(check-sat b_and!43779 (not b_next!26289))
