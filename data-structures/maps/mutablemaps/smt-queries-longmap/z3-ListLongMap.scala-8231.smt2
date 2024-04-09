; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100332 () Bool)

(assert start!100332)

(declare-fun b_free!25683 () Bool)

(declare-fun b_next!25683 () Bool)

(assert (=> start!100332 (= b_free!25683 (not b_next!25683))))

(declare-fun tp!89997 () Bool)

(declare-fun b_and!42247 () Bool)

(assert (=> start!100332 (= tp!89997 b_and!42247)))

(declare-fun b!1196599 () Bool)

(declare-fun e!679876 () Bool)

(declare-datatypes ((V!45611 0))(
  ( (V!45612 (val!15238 Int)) )
))
(declare-datatypes ((tuple2!19648 0))(
  ( (tuple2!19649 (_1!9834 (_ BitVec 64)) (_2!9834 V!45611)) )
))
(declare-datatypes ((List!26465 0))(
  ( (Nil!26462) (Cons!26461 (h!27670 tuple2!19648) (t!39147 List!26465)) )
))
(declare-datatypes ((ListLongMap!17629 0))(
  ( (ListLongMap!17630 (toList!8830 List!26465)) )
))
(declare-fun call!57169 () ListLongMap!17629)

(declare-fun call!57170 () ListLongMap!17629)

(assert (=> b!1196599 (= e!679876 (= call!57169 call!57170))))

(declare-fun zeroValue!944 () V!45611)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun bm!57166 () Bool)

(declare-fun minValue!944 () V!45611)

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14472 0))(
  ( (ValueCellFull!14472 (v!17877 V!45611)) (EmptyCell!14472) )
))
(declare-datatypes ((array!77486 0))(
  ( (array!77487 (arr!37386 (Array (_ BitVec 32) ValueCell!14472)) (size!37923 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77486)

(declare-datatypes ((array!77488 0))(
  ( (array!77489 (arr!37387 (Array (_ BitVec 32) (_ BitVec 64))) (size!37924 (_ BitVec 32))) )
))
(declare-fun lt!543065 () array!77488)

(declare-fun getCurrentListMapNoExtraKeys!5244 (array!77488 array!77486 (_ BitVec 32) (_ BitVec 32) V!45611 V!45611 (_ BitVec 32) Int) ListLongMap!17629)

(declare-fun dynLambda!3181 (Int (_ BitVec 64)) V!45611)

(assert (=> bm!57166 (= call!57169 (getCurrentListMapNoExtraKeys!5244 lt!543065 (array!77487 (store (arr!37386 _values!996) i!673 (ValueCellFull!14472 (dynLambda!3181 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37923 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1196600 () Bool)

(declare-fun res!796444 () Bool)

(declare-fun e!679881 () Bool)

(assert (=> b!1196600 (=> (not res!796444) (not e!679881))))

(declare-fun _keys!1208 () array!77488)

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1196600 (= res!796444 (= (select (arr!37387 _keys!1208) i!673) k0!934))))

(declare-fun b!1196601 () Bool)

(declare-fun e!679880 () Bool)

(declare-fun e!679882 () Bool)

(declare-fun mapRes!47381 () Bool)

(assert (=> b!1196601 (= e!679880 (and e!679882 mapRes!47381))))

(declare-fun condMapEmpty!47381 () Bool)

(declare-fun mapDefault!47381 () ValueCell!14472)

(assert (=> b!1196601 (= condMapEmpty!47381 (= (arr!37386 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14472)) mapDefault!47381)))))

(declare-fun b!1196602 () Bool)

(declare-fun e!679878 () Bool)

(assert (=> b!1196602 (= e!679878 true)))

(assert (=> b!1196602 e!679876))

(declare-fun c!117287 () Bool)

(assert (=> b!1196602 (= c!117287 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((Unit!39620 0))(
  ( (Unit!39621) )
))
(declare-fun lt!543066 () Unit!39620)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1004 (array!77488 array!77486 (_ BitVec 32) (_ BitVec 32) V!45611 V!45611 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39620)

(assert (=> b!1196602 (= lt!543066 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1004 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1196603 () Bool)

(declare-fun e!679877 () Bool)

(declare-fun tp_is_empty!30363 () Bool)

(assert (=> b!1196603 (= e!679877 tp_is_empty!30363)))

(declare-fun b!1196604 () Bool)

(declare-fun e!679875 () Bool)

(assert (=> b!1196604 (= e!679881 e!679875)))

(declare-fun res!796445 () Bool)

(assert (=> b!1196604 (=> (not res!796445) (not e!679875))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77488 (_ BitVec 32)) Bool)

(assert (=> b!1196604 (= res!796445 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!543065 mask!1564))))

(assert (=> b!1196604 (= lt!543065 (array!77489 (store (arr!37387 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37924 _keys!1208)))))

(declare-fun b!1196605 () Bool)

(declare-fun res!796437 () Bool)

(assert (=> b!1196605 (=> (not res!796437) (not e!679881))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1196605 (= res!796437 (validMask!0 mask!1564))))

(declare-fun res!796443 () Bool)

(assert (=> start!100332 (=> (not res!796443) (not e!679881))))

(assert (=> start!100332 (= res!796443 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37924 _keys!1208))))))

(assert (=> start!100332 e!679881))

(assert (=> start!100332 tp_is_empty!30363))

(declare-fun array_inv!28396 (array!77488) Bool)

(assert (=> start!100332 (array_inv!28396 _keys!1208)))

(assert (=> start!100332 true))

(assert (=> start!100332 tp!89997))

(declare-fun array_inv!28397 (array!77486) Bool)

(assert (=> start!100332 (and (array_inv!28397 _values!996) e!679880)))

(declare-fun b!1196606 () Bool)

(declare-fun res!796441 () Bool)

(assert (=> b!1196606 (=> (not res!796441) (not e!679881))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1196606 (= res!796441 (validKeyInArray!0 k0!934))))

(declare-fun b!1196607 () Bool)

(declare-fun res!796439 () Bool)

(assert (=> b!1196607 (=> (not res!796439) (not e!679881))))

(assert (=> b!1196607 (= res!796439 (and (= (size!37923 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37924 _keys!1208) (size!37923 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1196608 () Bool)

(declare-fun -!1797 (ListLongMap!17629 (_ BitVec 64)) ListLongMap!17629)

(assert (=> b!1196608 (= e!679876 (= call!57169 (-!1797 call!57170 k0!934)))))

(declare-fun b!1196609 () Bool)

(declare-fun res!796442 () Bool)

(assert (=> b!1196609 (=> (not res!796442) (not e!679881))))

(assert (=> b!1196609 (= res!796442 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37924 _keys!1208))))))

(declare-fun mapIsEmpty!47381 () Bool)

(assert (=> mapIsEmpty!47381 mapRes!47381))

(declare-fun b!1196610 () Bool)

(assert (=> b!1196610 (= e!679882 tp_is_empty!30363)))

(declare-fun b!1196611 () Bool)

(declare-fun res!796438 () Bool)

(assert (=> b!1196611 (=> (not res!796438) (not e!679875))))

(declare-datatypes ((List!26466 0))(
  ( (Nil!26463) (Cons!26462 (h!27671 (_ BitVec 64)) (t!39148 List!26466)) )
))
(declare-fun arrayNoDuplicates!0 (array!77488 (_ BitVec 32) List!26466) Bool)

(assert (=> b!1196611 (= res!796438 (arrayNoDuplicates!0 lt!543065 #b00000000000000000000000000000000 Nil!26463))))

(declare-fun b!1196612 () Bool)

(declare-fun res!796440 () Bool)

(assert (=> b!1196612 (=> (not res!796440) (not e!679881))))

(assert (=> b!1196612 (= res!796440 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapNonEmpty!47381 () Bool)

(declare-fun tp!89998 () Bool)

(assert (=> mapNonEmpty!47381 (= mapRes!47381 (and tp!89998 e!679877))))

(declare-fun mapValue!47381 () ValueCell!14472)

(declare-fun mapKey!47381 () (_ BitVec 32))

(declare-fun mapRest!47381 () (Array (_ BitVec 32) ValueCell!14472))

(assert (=> mapNonEmpty!47381 (= (arr!37386 _values!996) (store mapRest!47381 mapKey!47381 mapValue!47381))))

(declare-fun bm!57167 () Bool)

(assert (=> bm!57167 (= call!57170 (getCurrentListMapNoExtraKeys!5244 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1196613 () Bool)

(declare-fun res!796446 () Bool)

(assert (=> b!1196613 (=> (not res!796446) (not e!679881))))

(assert (=> b!1196613 (= res!796446 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26463))))

(declare-fun b!1196614 () Bool)

(assert (=> b!1196614 (= e!679875 (not e!679878))))

(declare-fun res!796447 () Bool)

(assert (=> b!1196614 (=> res!796447 e!679878)))

(assert (=> b!1196614 (= res!796447 (or (bvsle from!1455 i!673) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!37924 _keys!1208)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!77488 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1196614 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!543064 () Unit!39620)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77488 (_ BitVec 64) (_ BitVec 32)) Unit!39620)

(assert (=> b!1196614 (= lt!543064 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(assert (= (and start!100332 res!796443) b!1196605))

(assert (= (and b!1196605 res!796437) b!1196607))

(assert (= (and b!1196607 res!796439) b!1196612))

(assert (= (and b!1196612 res!796440) b!1196613))

(assert (= (and b!1196613 res!796446) b!1196609))

(assert (= (and b!1196609 res!796442) b!1196606))

(assert (= (and b!1196606 res!796441) b!1196600))

(assert (= (and b!1196600 res!796444) b!1196604))

(assert (= (and b!1196604 res!796445) b!1196611))

(assert (= (and b!1196611 res!796438) b!1196614))

(assert (= (and b!1196614 (not res!796447)) b!1196602))

(assert (= (and b!1196602 c!117287) b!1196608))

(assert (= (and b!1196602 (not c!117287)) b!1196599))

(assert (= (or b!1196608 b!1196599) bm!57166))

(assert (= (or b!1196608 b!1196599) bm!57167))

(assert (= (and b!1196601 condMapEmpty!47381) mapIsEmpty!47381))

(assert (= (and b!1196601 (not condMapEmpty!47381)) mapNonEmpty!47381))

(get-info :version)

(assert (= (and mapNonEmpty!47381 ((_ is ValueCellFull!14472) mapValue!47381)) b!1196603))

(assert (= (and b!1196601 ((_ is ValueCellFull!14472) mapDefault!47381)) b!1196610))

(assert (= start!100332 b!1196601))

(declare-fun b_lambda!20845 () Bool)

(assert (=> (not b_lambda!20845) (not bm!57166)))

(declare-fun t!39146 () Bool)

(declare-fun tb!10503 () Bool)

(assert (=> (and start!100332 (= defaultEntry!1004 defaultEntry!1004) t!39146) tb!10503))

(declare-fun result!21571 () Bool)

(assert (=> tb!10503 (= result!21571 tp_is_empty!30363)))

(assert (=> bm!57166 t!39146))

(declare-fun b_and!42249 () Bool)

(assert (= b_and!42247 (and (=> t!39146 result!21571) b_and!42249)))

(declare-fun m!1103815 () Bool)

(assert (=> bm!57167 m!1103815))

(declare-fun m!1103817 () Bool)

(assert (=> b!1196605 m!1103817))

(declare-fun m!1103819 () Bool)

(assert (=> b!1196602 m!1103819))

(declare-fun m!1103821 () Bool)

(assert (=> b!1196612 m!1103821))

(declare-fun m!1103823 () Bool)

(assert (=> b!1196608 m!1103823))

(declare-fun m!1103825 () Bool)

(assert (=> b!1196613 m!1103825))

(declare-fun m!1103827 () Bool)

(assert (=> start!100332 m!1103827))

(declare-fun m!1103829 () Bool)

(assert (=> start!100332 m!1103829))

(declare-fun m!1103831 () Bool)

(assert (=> b!1196600 m!1103831))

(declare-fun m!1103833 () Bool)

(assert (=> b!1196606 m!1103833))

(declare-fun m!1103835 () Bool)

(assert (=> bm!57166 m!1103835))

(declare-fun m!1103837 () Bool)

(assert (=> bm!57166 m!1103837))

(declare-fun m!1103839 () Bool)

(assert (=> bm!57166 m!1103839))

(declare-fun m!1103841 () Bool)

(assert (=> mapNonEmpty!47381 m!1103841))

(declare-fun m!1103843 () Bool)

(assert (=> b!1196611 m!1103843))

(declare-fun m!1103845 () Bool)

(assert (=> b!1196614 m!1103845))

(declare-fun m!1103847 () Bool)

(assert (=> b!1196614 m!1103847))

(declare-fun m!1103849 () Bool)

(assert (=> b!1196604 m!1103849))

(declare-fun m!1103851 () Bool)

(assert (=> b!1196604 m!1103851))

(check-sat b_and!42249 (not b!1196613) (not b!1196606) (not b!1196605) (not bm!57166) (not b!1196614) (not start!100332) (not b!1196612) (not b!1196602) (not b!1196604) tp_is_empty!30363 (not b!1196611) (not bm!57167) (not b!1196608) (not b_lambda!20845) (not mapNonEmpty!47381) (not b_next!25683))
(check-sat b_and!42249 (not b_next!25683))
