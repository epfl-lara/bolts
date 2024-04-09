; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100576 () Bool)

(assert start!100576)

(declare-fun b_free!25863 () Bool)

(declare-fun b_next!25863 () Bool)

(assert (=> start!100576 (= b_free!25863 (not b_next!25863))))

(declare-fun tp!90579 () Bool)

(declare-fun b_and!42627 () Bool)

(assert (=> start!100576 (= tp!90579 b_and!42627)))

(declare-fun b!1201766 () Bool)

(declare-fun call!57561 () Bool)

(assert (=> b!1201766 call!57561))

(declare-datatypes ((Unit!39762 0))(
  ( (Unit!39763) )
))
(declare-fun lt!544615 () Unit!39762)

(declare-fun call!57558 () Unit!39762)

(assert (=> b!1201766 (= lt!544615 call!57558)))

(declare-fun e!682478 () Unit!39762)

(assert (=> b!1201766 (= e!682478 lt!544615)))

(declare-fun b!1201767 () Bool)

(declare-fun e!682473 () Unit!39762)

(assert (=> b!1201767 (= e!682473 e!682478)))

(declare-fun c!117524 () Bool)

(declare-fun lt!544617 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1201767 (= c!117524 (and (not lt!544617) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!45883 0))(
  ( (V!45884 (val!15340 Int)) )
))
(declare-fun zeroValue!944 () V!45883)

(declare-datatypes ((array!77884 0))(
  ( (array!77885 (arr!37583 (Array (_ BitVec 32) (_ BitVec 64))) (size!38120 (_ BitVec 32))) )
))
(declare-fun lt!544613 () array!77884)

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14574 0))(
  ( (ValueCellFull!14574 (v!17979 V!45883)) (EmptyCell!14574) )
))
(declare-datatypes ((array!77886 0))(
  ( (array!77887 (arr!37584 (Array (_ BitVec 32) ValueCell!14574)) (size!38121 (_ BitVec 32))) )
))
(declare-fun lt!544622 () array!77886)

(declare-fun minValue!944 () V!45883)

(declare-datatypes ((tuple2!19788 0))(
  ( (tuple2!19789 (_1!9904 (_ BitVec 64)) (_2!9904 V!45883)) )
))
(declare-datatypes ((List!26618 0))(
  ( (Nil!26615) (Cons!26614 (h!27823 tuple2!19788) (t!39468 List!26618)) )
))
(declare-datatypes ((ListLongMap!17769 0))(
  ( (ListLongMap!17770 (toList!8900 List!26618)) )
))
(declare-fun call!57555 () ListLongMap!17769)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun bm!57552 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!5311 (array!77884 array!77886 (_ BitVec 32) (_ BitVec 32) V!45883 V!45883 (_ BitVec 32) Int) ListLongMap!17769)

(assert (=> bm!57552 (= call!57555 (getCurrentListMapNoExtraKeys!5311 lt!544613 lt!544622 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1201768 () Bool)

(declare-fun e!682480 () Bool)

(declare-fun e!682476 () Bool)

(assert (=> b!1201768 (= e!682480 e!682476)))

(declare-fun res!800036 () Bool)

(assert (=> b!1201768 (=> (not res!800036) (not e!682476))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77884 (_ BitVec 32)) Bool)

(assert (=> b!1201768 (= res!800036 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!544613 mask!1564))))

(declare-fun _keys!1208 () array!77884)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1201768 (= lt!544613 (array!77885 (store (arr!37583 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38120 _keys!1208)))))

(declare-fun b!1201769 () Bool)

(declare-fun res!800032 () Bool)

(assert (=> b!1201769 (=> (not res!800032) (not e!682480))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1201769 (= res!800032 (validMask!0 mask!1564))))

(declare-fun res!800030 () Bool)

(assert (=> start!100576 (=> (not res!800030) (not e!682480))))

(assert (=> start!100576 (= res!800030 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38120 _keys!1208))))))

(assert (=> start!100576 e!682480))

(declare-fun tp_is_empty!30567 () Bool)

(assert (=> start!100576 tp_is_empty!30567))

(declare-fun array_inv!28530 (array!77884) Bool)

(assert (=> start!100576 (array_inv!28530 _keys!1208)))

(assert (=> start!100576 true))

(assert (=> start!100576 tp!90579))

(declare-fun _values!996 () array!77886)

(declare-fun e!682474 () Bool)

(declare-fun array_inv!28531 (array!77886) Bool)

(assert (=> start!100576 (and (array_inv!28531 _values!996) e!682474)))

(declare-fun b!1201770 () Bool)

(declare-fun res!800040 () Bool)

(assert (=> b!1201770 (=> (not res!800040) (not e!682480))))

(assert (=> b!1201770 (= res!800040 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38120 _keys!1208))))))

(declare-fun b!1201771 () Bool)

(declare-fun e!682477 () Bool)

(declare-fun call!57560 () ListLongMap!17769)

(assert (=> b!1201771 (= e!682477 (= call!57555 call!57560))))

(declare-fun b!1201772 () Bool)

(declare-fun e!682485 () Bool)

(assert (=> b!1201772 (= e!682485 tp_is_empty!30567)))

(declare-fun b!1201773 () Bool)

(declare-fun res!800031 () Bool)

(assert (=> b!1201773 (=> (not res!800031) (not e!682476))))

(declare-datatypes ((List!26619 0))(
  ( (Nil!26616) (Cons!26615 (h!27824 (_ BitVec 64)) (t!39469 List!26619)) )
))
(declare-fun arrayNoDuplicates!0 (array!77884 (_ BitVec 32) List!26619) Bool)

(assert (=> b!1201773 (= res!800031 (arrayNoDuplicates!0 lt!544613 #b00000000000000000000000000000000 Nil!26616))))

(declare-fun b!1201774 () Bool)

(declare-fun e!682484 () Bool)

(assert (=> b!1201774 (= e!682484 true)))

(declare-fun lt!544623 () Unit!39762)

(assert (=> b!1201774 (= lt!544623 e!682473)))

(declare-fun c!117525 () Bool)

(assert (=> b!1201774 (= c!117525 (and (not lt!544617) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1201774 (= lt!544617 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun call!57559 () Bool)

(declare-fun call!57562 () ListLongMap!17769)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun bm!57553 () Bool)

(declare-fun lt!544612 () ListLongMap!17769)

(declare-fun contains!6900 (ListLongMap!17769 (_ BitVec 64)) Bool)

(assert (=> bm!57553 (= call!57559 (contains!6900 (ite c!117525 lt!544612 call!57562) k0!934))))

(declare-fun b!1201775 () Bool)

(declare-fun e!682486 () Bool)

(assert (=> b!1201775 (= e!682486 e!682484)))

(declare-fun res!800042 () Bool)

(assert (=> b!1201775 (=> res!800042 e!682484)))

(declare-fun lt!544616 () ListLongMap!17769)

(assert (=> b!1201775 (= res!800042 (not (contains!6900 lt!544616 k0!934)))))

(assert (=> b!1201775 (= lt!544616 (getCurrentListMapNoExtraKeys!5311 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1201776 () Bool)

(declare-fun res!800038 () Bool)

(assert (=> b!1201776 (=> (not res!800038) (not e!682480))))

(assert (=> b!1201776 (= res!800038 (= (select (arr!37583 _keys!1208) i!673) k0!934))))

(declare-fun b!1201777 () Bool)

(declare-fun e!682475 () Bool)

(assert (=> b!1201777 (= e!682476 (not e!682475))))

(declare-fun res!800039 () Bool)

(assert (=> b!1201777 (=> res!800039 e!682475)))

(assert (=> b!1201777 (= res!800039 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!77884 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1201777 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!544614 () Unit!39762)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77884 (_ BitVec 64) (_ BitVec 32)) Unit!39762)

(assert (=> b!1201777 (= lt!544614 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1201778 () Bool)

(declare-fun c!117526 () Bool)

(assert (=> b!1201778 (= c!117526 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!544617))))

(declare-fun e!682483 () Unit!39762)

(assert (=> b!1201778 (= e!682478 e!682483)))

(declare-fun b!1201779 () Bool)

(declare-fun res!800043 () Bool)

(assert (=> b!1201779 (=> (not res!800043) (not e!682480))))

(assert (=> b!1201779 (= res!800043 (and (= (size!38121 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38120 _keys!1208) (size!38121 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun call!57556 () Unit!39762)

(declare-fun bm!57554 () Bool)

(declare-fun addStillContains!1001 (ListLongMap!17769 (_ BitVec 64) V!45883 (_ BitVec 64)) Unit!39762)

(assert (=> bm!57554 (= call!57556 (addStillContains!1001 lt!544616 (ite (or c!117525 c!117524) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!117525 c!117524) zeroValue!944 minValue!944) k0!934))))

(declare-fun b!1201780 () Bool)

(declare-fun res!800037 () Bool)

(assert (=> b!1201780 (=> (not res!800037) (not e!682480))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1201780 (= res!800037 (validKeyInArray!0 k0!934))))

(declare-fun b!1201781 () Bool)

(declare-fun e!682479 () Bool)

(assert (=> b!1201781 (= e!682479 e!682486)))

(declare-fun res!800033 () Bool)

(assert (=> b!1201781 (=> res!800033 e!682486)))

(assert (=> b!1201781 (= res!800033 (not (= (select (arr!37583 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1201781 e!682477))

(declare-fun c!117523 () Bool)

(assert (=> b!1201781 (= c!117523 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!544619 () Unit!39762)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1025 (array!77884 array!77886 (_ BitVec 32) (_ BitVec 32) V!45883 V!45883 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39762)

(assert (=> b!1201781 (= lt!544619 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1025 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1201782 () Bool)

(declare-fun lt!544624 () Unit!39762)

(assert (=> b!1201782 (= e!682483 lt!544624)))

(assert (=> b!1201782 (= lt!544624 call!57558)))

(assert (=> b!1201782 call!57561))

(declare-fun b!1201783 () Bool)

(declare-fun -!1820 (ListLongMap!17769 (_ BitVec 64)) ListLongMap!17769)

(assert (=> b!1201783 (= e!682477 (= call!57555 (-!1820 call!57560 k0!934)))))

(declare-fun mapIsEmpty!47693 () Bool)

(declare-fun mapRes!47693 () Bool)

(assert (=> mapIsEmpty!47693 mapRes!47693))

(declare-fun b!1201784 () Bool)

(declare-fun res!800041 () Bool)

(assert (=> b!1201784 (=> (not res!800041) (not e!682480))))

(assert (=> b!1201784 (= res!800041 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapNonEmpty!47693 () Bool)

(declare-fun tp!90580 () Bool)

(assert (=> mapNonEmpty!47693 (= mapRes!47693 (and tp!90580 e!682485))))

(declare-fun mapKey!47693 () (_ BitVec 32))

(declare-fun mapRest!47693 () (Array (_ BitVec 32) ValueCell!14574))

(declare-fun mapValue!47693 () ValueCell!14574)

(assert (=> mapNonEmpty!47693 (= (arr!37584 _values!996) (store mapRest!47693 mapKey!47693 mapValue!47693))))

(declare-fun bm!57555 () Bool)

(declare-fun call!57557 () ListLongMap!17769)

(assert (=> bm!57555 (= call!57562 call!57557)))

(declare-fun bm!57556 () Bool)

(assert (=> bm!57556 (= call!57561 call!57559)))

(declare-fun b!1201785 () Bool)

(declare-fun res!800035 () Bool)

(assert (=> b!1201785 (=> (not res!800035) (not e!682480))))

(assert (=> b!1201785 (= res!800035 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26616))))

(declare-fun bm!57557 () Bool)

(declare-fun +!3940 (ListLongMap!17769 tuple2!19788) ListLongMap!17769)

(assert (=> bm!57557 (= call!57557 (+!3940 lt!544616 (ite (or c!117525 c!117524) (tuple2!19789 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19789 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1201786 () Bool)

(declare-fun e!682481 () Bool)

(assert (=> b!1201786 (= e!682481 tp_is_empty!30567)))

(declare-fun b!1201787 () Bool)

(assert (=> b!1201787 (= e!682474 (and e!682481 mapRes!47693))))

(declare-fun condMapEmpty!47693 () Bool)

(declare-fun mapDefault!47693 () ValueCell!14574)

(assert (=> b!1201787 (= condMapEmpty!47693 (= (arr!37584 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14574)) mapDefault!47693)))))

(declare-fun b!1201788 () Bool)

(assert (=> b!1201788 (= e!682475 e!682479)))

(declare-fun res!800034 () Bool)

(assert (=> b!1201788 (=> res!800034 e!682479)))

(assert (=> b!1201788 (= res!800034 (not (= from!1455 i!673)))))

(declare-fun lt!544620 () ListLongMap!17769)

(assert (=> b!1201788 (= lt!544620 (getCurrentListMapNoExtraKeys!5311 lt!544613 lt!544622 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3238 (Int (_ BitVec 64)) V!45883)

(assert (=> b!1201788 (= lt!544622 (array!77887 (store (arr!37584 _values!996) i!673 (ValueCellFull!14574 (dynLambda!3238 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38121 _values!996)))))

(declare-fun lt!544621 () ListLongMap!17769)

(assert (=> b!1201788 (= lt!544621 (getCurrentListMapNoExtraKeys!5311 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun bm!57558 () Bool)

(assert (=> bm!57558 (= call!57558 call!57556)))

(declare-fun b!1201789 () Bool)

(declare-fun Unit!39764 () Unit!39762)

(assert (=> b!1201789 (= e!682483 Unit!39764)))

(declare-fun bm!57559 () Bool)

(assert (=> bm!57559 (= call!57560 (getCurrentListMapNoExtraKeys!5311 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1201790 () Bool)

(declare-fun lt!544618 () Unit!39762)

(assert (=> b!1201790 (= e!682473 lt!544618)))

(declare-fun lt!544611 () Unit!39762)

(assert (=> b!1201790 (= lt!544611 call!57556)))

(assert (=> b!1201790 (= lt!544612 call!57557)))

(assert (=> b!1201790 call!57559))

(assert (=> b!1201790 (= lt!544618 (addStillContains!1001 lt!544612 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(assert (=> b!1201790 (contains!6900 (+!3940 lt!544612 (tuple2!19789 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(assert (= (and start!100576 res!800030) b!1201769))

(assert (= (and b!1201769 res!800032) b!1201779))

(assert (= (and b!1201779 res!800043) b!1201784))

(assert (= (and b!1201784 res!800041) b!1201785))

(assert (= (and b!1201785 res!800035) b!1201770))

(assert (= (and b!1201770 res!800040) b!1201780))

(assert (= (and b!1201780 res!800037) b!1201776))

(assert (= (and b!1201776 res!800038) b!1201768))

(assert (= (and b!1201768 res!800036) b!1201773))

(assert (= (and b!1201773 res!800031) b!1201777))

(assert (= (and b!1201777 (not res!800039)) b!1201788))

(assert (= (and b!1201788 (not res!800034)) b!1201781))

(assert (= (and b!1201781 c!117523) b!1201783))

(assert (= (and b!1201781 (not c!117523)) b!1201771))

(assert (= (or b!1201783 b!1201771) bm!57552))

(assert (= (or b!1201783 b!1201771) bm!57559))

(assert (= (and b!1201781 (not res!800033)) b!1201775))

(assert (= (and b!1201775 (not res!800042)) b!1201774))

(assert (= (and b!1201774 c!117525) b!1201790))

(assert (= (and b!1201774 (not c!117525)) b!1201767))

(assert (= (and b!1201767 c!117524) b!1201766))

(assert (= (and b!1201767 (not c!117524)) b!1201778))

(assert (= (and b!1201778 c!117526) b!1201782))

(assert (= (and b!1201778 (not c!117526)) b!1201789))

(assert (= (or b!1201766 b!1201782) bm!57558))

(assert (= (or b!1201766 b!1201782) bm!57555))

(assert (= (or b!1201766 b!1201782) bm!57556))

(assert (= (or b!1201790 bm!57556) bm!57553))

(assert (= (or b!1201790 bm!57558) bm!57554))

(assert (= (or b!1201790 bm!57555) bm!57557))

(assert (= (and b!1201787 condMapEmpty!47693) mapIsEmpty!47693))

(assert (= (and b!1201787 (not condMapEmpty!47693)) mapNonEmpty!47693))

(get-info :version)

(assert (= (and mapNonEmpty!47693 ((_ is ValueCellFull!14574) mapValue!47693)) b!1201772))

(assert (= (and b!1201787 ((_ is ValueCellFull!14574) mapDefault!47693)) b!1201786))

(assert (= start!100576 b!1201787))

(declare-fun b_lambda!21077 () Bool)

(assert (=> (not b_lambda!21077) (not b!1201788)))

(declare-fun t!39467 () Bool)

(declare-fun tb!10671 () Bool)

(assert (=> (and start!100576 (= defaultEntry!1004 defaultEntry!1004) t!39467) tb!10671))

(declare-fun result!21911 () Bool)

(assert (=> tb!10671 (= result!21911 tp_is_empty!30567)))

(assert (=> b!1201788 t!39467))

(declare-fun b_and!42629 () Bool)

(assert (= b_and!42627 (and (=> t!39467 result!21911) b_and!42629)))

(declare-fun m!1107829 () Bool)

(assert (=> b!1201790 m!1107829))

(declare-fun m!1107831 () Bool)

(assert (=> b!1201790 m!1107831))

(assert (=> b!1201790 m!1107831))

(declare-fun m!1107833 () Bool)

(assert (=> b!1201790 m!1107833))

(declare-fun m!1107835 () Bool)

(assert (=> bm!57554 m!1107835))

(declare-fun m!1107837 () Bool)

(assert (=> b!1201780 m!1107837))

(declare-fun m!1107839 () Bool)

(assert (=> b!1201775 m!1107839))

(declare-fun m!1107841 () Bool)

(assert (=> b!1201775 m!1107841))

(declare-fun m!1107843 () Bool)

(assert (=> b!1201777 m!1107843))

(declare-fun m!1107845 () Bool)

(assert (=> b!1201777 m!1107845))

(declare-fun m!1107847 () Bool)

(assert (=> bm!57557 m!1107847))

(declare-fun m!1107849 () Bool)

(assert (=> b!1201769 m!1107849))

(declare-fun m!1107851 () Bool)

(assert (=> b!1201785 m!1107851))

(declare-fun m!1107853 () Bool)

(assert (=> b!1201783 m!1107853))

(declare-fun m!1107855 () Bool)

(assert (=> b!1201773 m!1107855))

(declare-fun m!1107857 () Bool)

(assert (=> bm!57553 m!1107857))

(declare-fun m!1107859 () Bool)

(assert (=> b!1201784 m!1107859))

(declare-fun m!1107861 () Bool)

(assert (=> b!1201776 m!1107861))

(assert (=> bm!57559 m!1107841))

(declare-fun m!1107863 () Bool)

(assert (=> start!100576 m!1107863))

(declare-fun m!1107865 () Bool)

(assert (=> start!100576 m!1107865))

(declare-fun m!1107867 () Bool)

(assert (=> bm!57552 m!1107867))

(declare-fun m!1107869 () Bool)

(assert (=> b!1201788 m!1107869))

(declare-fun m!1107871 () Bool)

(assert (=> b!1201788 m!1107871))

(declare-fun m!1107873 () Bool)

(assert (=> b!1201788 m!1107873))

(declare-fun m!1107875 () Bool)

(assert (=> b!1201788 m!1107875))

(declare-fun m!1107877 () Bool)

(assert (=> mapNonEmpty!47693 m!1107877))

(declare-fun m!1107879 () Bool)

(assert (=> b!1201781 m!1107879))

(declare-fun m!1107881 () Bool)

(assert (=> b!1201781 m!1107881))

(declare-fun m!1107883 () Bool)

(assert (=> b!1201768 m!1107883))

(declare-fun m!1107885 () Bool)

(assert (=> b!1201768 m!1107885))

(check-sat (not b!1201785) (not b_lambda!21077) (not b!1201784) (not bm!57552) (not b!1201783) (not b_next!25863) (not b!1201775) b_and!42629 (not bm!57553) (not b!1201768) (not b!1201780) (not b!1201773) (not bm!57554) (not start!100576) (not b!1201781) (not bm!57557) (not mapNonEmpty!47693) (not b!1201769) (not b!1201790) (not b!1201777) tp_is_empty!30567 (not bm!57559) (not b!1201788))
(check-sat b_and!42629 (not b_next!25863))
