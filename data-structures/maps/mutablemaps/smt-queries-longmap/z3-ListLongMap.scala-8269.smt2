; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100600 () Bool)

(assert start!100600)

(declare-fun b_free!25887 () Bool)

(declare-fun b_next!25887 () Bool)

(assert (=> start!100600 (= b_free!25887 (not b_next!25887))))

(declare-fun tp!90652 () Bool)

(declare-fun b_and!42675 () Bool)

(assert (=> start!100600 (= tp!90652 b_and!42675)))

(declare-fun b!1202690 () Bool)

(declare-fun res!800536 () Bool)

(declare-fun e!682981 () Bool)

(assert (=> b!1202690 (=> (not res!800536) (not e!682981))))

(declare-datatypes ((array!77932 0))(
  ( (array!77933 (arr!37607 (Array (_ BitVec 32) (_ BitVec 64))) (size!38144 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77932)

(declare-datatypes ((List!26640 0))(
  ( (Nil!26637) (Cons!26636 (h!27845 (_ BitVec 64)) (t!39514 List!26640)) )
))
(declare-fun arrayNoDuplicates!0 (array!77932 (_ BitVec 32) List!26640) Bool)

(assert (=> b!1202690 (= res!800536 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26637))))

(declare-fun b!1202691 () Bool)

(declare-fun e!682987 () Bool)

(assert (=> b!1202691 (= e!682987 true)))

(declare-datatypes ((Unit!39795 0))(
  ( (Unit!39796) )
))
(declare-fun lt!545119 () Unit!39795)

(declare-fun e!682985 () Unit!39795)

(assert (=> b!1202691 (= lt!545119 e!682985)))

(declare-fun c!117667 () Bool)

(declare-fun lt!545116 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1202691 (= c!117667 (and (not lt!545116) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1202691 (= lt!545116 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1202693 () Bool)

(declare-fun res!800541 () Bool)

(assert (=> b!1202693 (=> (not res!800541) (not e!682981))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!45915 0))(
  ( (V!45916 (val!15352 Int)) )
))
(declare-datatypes ((ValueCell!14586 0))(
  ( (ValueCellFull!14586 (v!17991 V!45915)) (EmptyCell!14586) )
))
(declare-datatypes ((array!77934 0))(
  ( (array!77935 (arr!37608 (Array (_ BitVec 32) ValueCell!14586)) (size!38145 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77934)

(assert (=> b!1202693 (= res!800541 (and (= (size!38145 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38144 _keys!1208) (size!38145 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!47729 () Bool)

(declare-fun mapRes!47729 () Bool)

(declare-fun tp!90651 () Bool)

(declare-fun e!682982 () Bool)

(assert (=> mapNonEmpty!47729 (= mapRes!47729 (and tp!90651 e!682982))))

(declare-fun mapKey!47729 () (_ BitVec 32))

(declare-fun mapRest!47729 () (Array (_ BitVec 32) ValueCell!14586))

(declare-fun mapValue!47729 () ValueCell!14586)

(assert (=> mapNonEmpty!47729 (= (arr!37608 _values!996) (store mapRest!47729 mapKey!47729 mapValue!47729))))

(declare-fun b!1202694 () Bool)

(declare-fun e!682989 () Unit!39795)

(declare-fun Unit!39797 () Unit!39795)

(assert (=> b!1202694 (= e!682989 Unit!39797)))

(declare-fun bm!57840 () Bool)

(declare-fun call!57843 () Bool)

(declare-fun call!57845 () Bool)

(assert (=> bm!57840 (= call!57843 call!57845)))

(declare-fun b!1202695 () Bool)

(declare-fun e!682977 () Bool)

(declare-fun e!682979 () Bool)

(assert (=> b!1202695 (= e!682977 (and e!682979 mapRes!47729))))

(declare-fun condMapEmpty!47729 () Bool)

(declare-fun mapDefault!47729 () ValueCell!14586)

(assert (=> b!1202695 (= condMapEmpty!47729 (= (arr!37608 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14586)) mapDefault!47729)))))

(declare-fun b!1202696 () Bool)

(declare-fun res!800546 () Bool)

(assert (=> b!1202696 (=> (not res!800546) (not e!682981))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1202696 (= res!800546 (= (select (arr!37607 _keys!1208) i!673) k0!934))))

(declare-fun b!1202697 () Bool)

(declare-fun tp_is_empty!30591 () Bool)

(assert (=> b!1202697 (= e!682979 tp_is_empty!30591)))

(declare-fun zeroValue!944 () V!45915)

(declare-fun bm!57841 () Bool)

(declare-datatypes ((tuple2!19812 0))(
  ( (tuple2!19813 (_1!9916 (_ BitVec 64)) (_2!9916 V!45915)) )
))
(declare-datatypes ((List!26641 0))(
  ( (Nil!26638) (Cons!26637 (h!27846 tuple2!19812) (t!39515 List!26641)) )
))
(declare-datatypes ((ListLongMap!17793 0))(
  ( (ListLongMap!17794 (toList!8912 List!26641)) )
))
(declare-fun call!57849 () ListLongMap!17793)

(declare-fun lt!545120 () ListLongMap!17793)

(declare-fun c!117669 () Bool)

(declare-fun minValue!944 () V!45915)

(declare-fun lt!545127 () ListLongMap!17793)

(declare-fun +!3948 (ListLongMap!17793 tuple2!19812) ListLongMap!17793)

(assert (=> bm!57841 (= call!57849 (+!3948 (ite c!117667 lt!545120 lt!545127) (ite c!117667 (tuple2!19813 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!117669 (tuple2!19813 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19813 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1202698 () Bool)

(declare-fun lt!545123 () Unit!39795)

(assert (=> b!1202698 (= e!682989 lt!545123)))

(declare-fun call!57847 () Unit!39795)

(assert (=> b!1202698 (= lt!545123 call!57847)))

(assert (=> b!1202698 call!57843))

(declare-fun b!1202699 () Bool)

(declare-fun e!682984 () Bool)

(declare-fun e!682988 () Bool)

(assert (=> b!1202699 (= e!682984 e!682988)))

(declare-fun res!800543 () Bool)

(assert (=> b!1202699 (=> res!800543 e!682988)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1202699 (= res!800543 (not (= from!1455 i!673)))))

(declare-fun lt!545121 () array!77934)

(declare-fun lt!545128 () ListLongMap!17793)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!545118 () array!77932)

(declare-fun getCurrentListMapNoExtraKeys!5323 (array!77932 array!77934 (_ BitVec 32) (_ BitVec 32) V!45915 V!45915 (_ BitVec 32) Int) ListLongMap!17793)

(assert (=> b!1202699 (= lt!545128 (getCurrentListMapNoExtraKeys!5323 lt!545118 lt!545121 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3246 (Int (_ BitVec 64)) V!45915)

(assert (=> b!1202699 (= lt!545121 (array!77935 (store (arr!37608 _values!996) i!673 (ValueCellFull!14586 (dynLambda!3246 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38145 _values!996)))))

(declare-fun lt!545117 () ListLongMap!17793)

(assert (=> b!1202699 (= lt!545117 (getCurrentListMapNoExtraKeys!5323 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun call!57850 () Unit!39795)

(declare-fun bm!57842 () Bool)

(declare-fun addStillContains!1012 (ListLongMap!17793 (_ BitVec 64) V!45915 (_ BitVec 64)) Unit!39795)

(assert (=> bm!57842 (= call!57850 (addStillContains!1012 lt!545127 (ite (or c!117667 c!117669) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!117667 c!117669) zeroValue!944 minValue!944) k0!934))))

(declare-fun b!1202700 () Bool)

(declare-fun e!682980 () Unit!39795)

(assert (=> b!1202700 (= e!682985 e!682980)))

(assert (=> b!1202700 (= c!117669 (and (not lt!545116) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1202701 () Bool)

(declare-fun e!682978 () Bool)

(assert (=> b!1202701 (= e!682988 e!682978)))

(declare-fun res!800544 () Bool)

(assert (=> b!1202701 (=> res!800544 e!682978)))

(assert (=> b!1202701 (= res!800544 (not (= (select (arr!37607 _keys!1208) from!1455) k0!934)))))

(declare-fun e!682983 () Bool)

(assert (=> b!1202701 e!682983))

(declare-fun c!117668 () Bool)

(assert (=> b!1202701 (= c!117668 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!545125 () Unit!39795)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1033 (array!77932 array!77934 (_ BitVec 32) (_ BitVec 32) V!45915 V!45915 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39795)

(assert (=> b!1202701 (= lt!545125 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1033 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1202692 () Bool)

(declare-fun lt!545126 () Unit!39795)

(assert (=> b!1202692 (= e!682985 lt!545126)))

(declare-fun lt!545115 () Unit!39795)

(assert (=> b!1202692 (= lt!545115 call!57850)))

(assert (=> b!1202692 (= lt!545120 (+!3948 lt!545127 (tuple2!19813 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(assert (=> b!1202692 call!57845))

(assert (=> b!1202692 (= lt!545126 (addStillContains!1012 lt!545120 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(declare-fun contains!6911 (ListLongMap!17793 (_ BitVec 64)) Bool)

(assert (=> b!1202692 (contains!6911 call!57849 k0!934)))

(declare-fun res!800534 () Bool)

(assert (=> start!100600 (=> (not res!800534) (not e!682981))))

(assert (=> start!100600 (= res!800534 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38144 _keys!1208))))))

(assert (=> start!100600 e!682981))

(assert (=> start!100600 tp_is_empty!30591))

(declare-fun array_inv!28550 (array!77932) Bool)

(assert (=> start!100600 (array_inv!28550 _keys!1208)))

(assert (=> start!100600 true))

(assert (=> start!100600 tp!90652))

(declare-fun array_inv!28551 (array!77934) Bool)

(assert (=> start!100600 (and (array_inv!28551 _values!996) e!682977)))

(declare-fun b!1202702 () Bool)

(declare-fun call!57844 () ListLongMap!17793)

(declare-fun call!57848 () ListLongMap!17793)

(assert (=> b!1202702 (= e!682983 (= call!57844 call!57848))))

(declare-fun b!1202703 () Bool)

(declare-fun -!1828 (ListLongMap!17793 (_ BitVec 64)) ListLongMap!17793)

(assert (=> b!1202703 (= e!682983 (= call!57844 (-!1828 call!57848 k0!934)))))

(declare-fun mapIsEmpty!47729 () Bool)

(assert (=> mapIsEmpty!47729 mapRes!47729))

(declare-fun bm!57843 () Bool)

(assert (=> bm!57843 (= call!57848 (getCurrentListMapNoExtraKeys!5323 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!57844 () Bool)

(declare-fun call!57846 () ListLongMap!17793)

(assert (=> bm!57844 (= call!57845 (contains!6911 (ite c!117667 lt!545120 call!57846) k0!934))))

(declare-fun b!1202704 () Bool)

(declare-fun res!800542 () Bool)

(declare-fun e!682986 () Bool)

(assert (=> b!1202704 (=> (not res!800542) (not e!682986))))

(assert (=> b!1202704 (= res!800542 (arrayNoDuplicates!0 lt!545118 #b00000000000000000000000000000000 Nil!26637))))

(declare-fun b!1202705 () Bool)

(assert (=> b!1202705 (= e!682978 e!682987)))

(declare-fun res!800538 () Bool)

(assert (=> b!1202705 (=> res!800538 e!682987)))

(assert (=> b!1202705 (= res!800538 (not (contains!6911 lt!545127 k0!934)))))

(assert (=> b!1202705 (= lt!545127 (getCurrentListMapNoExtraKeys!5323 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!57845 () Bool)

(assert (=> bm!57845 (= call!57844 (getCurrentListMapNoExtraKeys!5323 lt!545118 lt!545121 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1202706 () Bool)

(assert (=> b!1202706 (= e!682986 (not e!682984))))

(declare-fun res!800547 () Bool)

(assert (=> b!1202706 (=> res!800547 e!682984)))

(assert (=> b!1202706 (= res!800547 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!77932 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1202706 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!545124 () Unit!39795)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77932 (_ BitVec 64) (_ BitVec 32)) Unit!39795)

(assert (=> b!1202706 (= lt!545124 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1202707 () Bool)

(assert (=> b!1202707 call!57843))

(declare-fun lt!545122 () Unit!39795)

(assert (=> b!1202707 (= lt!545122 call!57847)))

(assert (=> b!1202707 (= e!682980 lt!545122)))

(declare-fun b!1202708 () Bool)

(declare-fun res!800539 () Bool)

(assert (=> b!1202708 (=> (not res!800539) (not e!682981))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1202708 (= res!800539 (validKeyInArray!0 k0!934))))

(declare-fun bm!57846 () Bool)

(assert (=> bm!57846 (= call!57846 call!57849)))

(declare-fun b!1202709 () Bool)

(declare-fun c!117670 () Bool)

(assert (=> b!1202709 (= c!117670 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!545116))))

(assert (=> b!1202709 (= e!682980 e!682989)))

(declare-fun b!1202710 () Bool)

(declare-fun res!800545 () Bool)

(assert (=> b!1202710 (=> (not res!800545) (not e!682981))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77932 (_ BitVec 32)) Bool)

(assert (=> b!1202710 (= res!800545 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1202711 () Bool)

(assert (=> b!1202711 (= e!682982 tp_is_empty!30591)))

(declare-fun b!1202712 () Bool)

(assert (=> b!1202712 (= e!682981 e!682986)))

(declare-fun res!800537 () Bool)

(assert (=> b!1202712 (=> (not res!800537) (not e!682986))))

(assert (=> b!1202712 (= res!800537 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!545118 mask!1564))))

(assert (=> b!1202712 (= lt!545118 (array!77933 (store (arr!37607 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38144 _keys!1208)))))

(declare-fun b!1202713 () Bool)

(declare-fun res!800535 () Bool)

(assert (=> b!1202713 (=> (not res!800535) (not e!682981))))

(assert (=> b!1202713 (= res!800535 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38144 _keys!1208))))))

(declare-fun bm!57847 () Bool)

(assert (=> bm!57847 (= call!57847 call!57850)))

(declare-fun b!1202714 () Bool)

(declare-fun res!800540 () Bool)

(assert (=> b!1202714 (=> (not res!800540) (not e!682981))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1202714 (= res!800540 (validMask!0 mask!1564))))

(assert (= (and start!100600 res!800534) b!1202714))

(assert (= (and b!1202714 res!800540) b!1202693))

(assert (= (and b!1202693 res!800541) b!1202710))

(assert (= (and b!1202710 res!800545) b!1202690))

(assert (= (and b!1202690 res!800536) b!1202713))

(assert (= (and b!1202713 res!800535) b!1202708))

(assert (= (and b!1202708 res!800539) b!1202696))

(assert (= (and b!1202696 res!800546) b!1202712))

(assert (= (and b!1202712 res!800537) b!1202704))

(assert (= (and b!1202704 res!800542) b!1202706))

(assert (= (and b!1202706 (not res!800547)) b!1202699))

(assert (= (and b!1202699 (not res!800543)) b!1202701))

(assert (= (and b!1202701 c!117668) b!1202703))

(assert (= (and b!1202701 (not c!117668)) b!1202702))

(assert (= (or b!1202703 b!1202702) bm!57845))

(assert (= (or b!1202703 b!1202702) bm!57843))

(assert (= (and b!1202701 (not res!800544)) b!1202705))

(assert (= (and b!1202705 (not res!800538)) b!1202691))

(assert (= (and b!1202691 c!117667) b!1202692))

(assert (= (and b!1202691 (not c!117667)) b!1202700))

(assert (= (and b!1202700 c!117669) b!1202707))

(assert (= (and b!1202700 (not c!117669)) b!1202709))

(assert (= (and b!1202709 c!117670) b!1202698))

(assert (= (and b!1202709 (not c!117670)) b!1202694))

(assert (= (or b!1202707 b!1202698) bm!57847))

(assert (= (or b!1202707 b!1202698) bm!57846))

(assert (= (or b!1202707 b!1202698) bm!57840))

(assert (= (or b!1202692 bm!57840) bm!57844))

(assert (= (or b!1202692 bm!57847) bm!57842))

(assert (= (or b!1202692 bm!57846) bm!57841))

(assert (= (and b!1202695 condMapEmpty!47729) mapIsEmpty!47729))

(assert (= (and b!1202695 (not condMapEmpty!47729)) mapNonEmpty!47729))

(get-info :version)

(assert (= (and mapNonEmpty!47729 ((_ is ValueCellFull!14586) mapValue!47729)) b!1202711))

(assert (= (and b!1202695 ((_ is ValueCellFull!14586) mapDefault!47729)) b!1202697))

(assert (= start!100600 b!1202695))

(declare-fun b_lambda!21101 () Bool)

(assert (=> (not b_lambda!21101) (not b!1202699)))

(declare-fun t!39513 () Bool)

(declare-fun tb!10695 () Bool)

(assert (=> (and start!100600 (= defaultEntry!1004 defaultEntry!1004) t!39513) tb!10695))

(declare-fun result!21959 () Bool)

(assert (=> tb!10695 (= result!21959 tp_is_empty!30591)))

(assert (=> b!1202699 t!39513))

(declare-fun b_and!42677 () Bool)

(assert (= b_and!42675 (and (=> t!39513 result!21959) b_and!42677)))

(declare-fun m!1108525 () Bool)

(assert (=> b!1202714 m!1108525))

(declare-fun m!1108527 () Bool)

(assert (=> bm!57842 m!1108527))

(declare-fun m!1108529 () Bool)

(assert (=> b!1202708 m!1108529))

(declare-fun m!1108531 () Bool)

(assert (=> b!1202704 m!1108531))

(declare-fun m!1108533 () Bool)

(assert (=> bm!57843 m!1108533))

(declare-fun m!1108535 () Bool)

(assert (=> b!1202703 m!1108535))

(declare-fun m!1108537 () Bool)

(assert (=> b!1202712 m!1108537))

(declare-fun m!1108539 () Bool)

(assert (=> b!1202712 m!1108539))

(declare-fun m!1108541 () Bool)

(assert (=> bm!57845 m!1108541))

(declare-fun m!1108543 () Bool)

(assert (=> b!1202690 m!1108543))

(declare-fun m!1108545 () Bool)

(assert (=> b!1202701 m!1108545))

(declare-fun m!1108547 () Bool)

(assert (=> b!1202701 m!1108547))

(declare-fun m!1108549 () Bool)

(assert (=> bm!57841 m!1108549))

(declare-fun m!1108551 () Bool)

(assert (=> mapNonEmpty!47729 m!1108551))

(declare-fun m!1108553 () Bool)

(assert (=> b!1202710 m!1108553))

(declare-fun m!1108555 () Bool)

(assert (=> b!1202696 m!1108555))

(declare-fun m!1108557 () Bool)

(assert (=> start!100600 m!1108557))

(declare-fun m!1108559 () Bool)

(assert (=> start!100600 m!1108559))

(declare-fun m!1108561 () Bool)

(assert (=> b!1202706 m!1108561))

(declare-fun m!1108563 () Bool)

(assert (=> b!1202706 m!1108563))

(declare-fun m!1108565 () Bool)

(assert (=> b!1202705 m!1108565))

(assert (=> b!1202705 m!1108533))

(declare-fun m!1108567 () Bool)

(assert (=> b!1202699 m!1108567))

(declare-fun m!1108569 () Bool)

(assert (=> b!1202699 m!1108569))

(declare-fun m!1108571 () Bool)

(assert (=> b!1202699 m!1108571))

(declare-fun m!1108573 () Bool)

(assert (=> b!1202699 m!1108573))

(declare-fun m!1108575 () Bool)

(assert (=> b!1202692 m!1108575))

(declare-fun m!1108577 () Bool)

(assert (=> b!1202692 m!1108577))

(declare-fun m!1108579 () Bool)

(assert (=> b!1202692 m!1108579))

(declare-fun m!1108581 () Bool)

(assert (=> bm!57844 m!1108581))

(check-sat b_and!42677 (not b!1202710) (not b!1202703) (not bm!57843) (not b!1202705) (not b!1202690) (not b!1202714) (not b!1202706) (not bm!57841) (not bm!57845) (not b!1202712) (not b!1202699) (not mapNonEmpty!47729) (not b!1202708) (not b!1202704) (not start!100600) (not bm!57844) (not b!1202701) tp_is_empty!30591 (not b_lambda!21101) (not bm!57842) (not b!1202692) (not b_next!25887))
(check-sat b_and!42677 (not b_next!25887))
