; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100800 () Bool)

(assert start!100800)

(declare-fun b_free!25935 () Bool)

(declare-fun b_next!25935 () Bool)

(assert (=> start!100800 (= b_free!25935 (not b_next!25935))))

(declare-fun tp!90809 () Bool)

(declare-fun b_and!42867 () Bool)

(assert (=> start!100800 (= tp!90809 b_and!42867)))

(declare-fun b!1205715 () Bool)

(declare-fun e!684746 () Bool)

(declare-fun e!684752 () Bool)

(assert (=> b!1205715 (= e!684746 (not e!684752))))

(declare-fun res!802023 () Bool)

(assert (=> b!1205715 (=> res!802023 e!684752)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1205715 (= res!802023 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!78034 0))(
  ( (array!78035 (arr!37654 (Array (_ BitVec 32) (_ BitVec 64))) (size!38191 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78034)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!78034 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1205715 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39895 0))(
  ( (Unit!39896) )
))
(declare-fun lt!546874 () Unit!39895)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78034 (_ BitVec 64) (_ BitVec 32)) Unit!39895)

(assert (=> b!1205715 (= lt!546874 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1205716 () Bool)

(declare-fun res!802021 () Bool)

(declare-fun e!684751 () Bool)

(assert (=> b!1205716 (=> (not res!802021) (not e!684751))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78034 (_ BitVec 32)) Bool)

(assert (=> b!1205716 (= res!802021 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1205717 () Bool)

(declare-fun e!684749 () Bool)

(assert (=> b!1205717 (= e!684749 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun lt!546867 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun e!684747 () Bool)

(declare-fun b!1205718 () Bool)

(assert (=> b!1205718 (= e!684747 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!546867) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1205719 () Bool)

(declare-fun e!684757 () Bool)

(declare-fun e!684754 () Bool)

(declare-fun mapRes!47814 () Bool)

(assert (=> b!1205719 (= e!684757 (and e!684754 mapRes!47814))))

(declare-fun condMapEmpty!47814 () Bool)

(declare-datatypes ((V!45979 0))(
  ( (V!45980 (val!15376 Int)) )
))
(declare-datatypes ((ValueCell!14610 0))(
  ( (ValueCellFull!14610 (v!18021 V!45979)) (EmptyCell!14610) )
))
(declare-datatypes ((array!78036 0))(
  ( (array!78037 (arr!37655 (Array (_ BitVec 32) ValueCell!14610)) (size!38192 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78036)

(declare-fun mapDefault!47814 () ValueCell!14610)

(assert (=> b!1205719 (= condMapEmpty!47814 (= (arr!37655 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14610)) mapDefault!47814)))))

(declare-fun b!1205720 () Bool)

(declare-fun e!684753 () Bool)

(assert (=> b!1205720 (= e!684753 true)))

(assert (=> b!1205720 e!684749))

(declare-fun res!802017 () Bool)

(assert (=> b!1205720 (=> (not res!802017) (not e!684749))))

(assert (=> b!1205720 (= res!802017 e!684747)))

(declare-fun c!118290 () Bool)

(assert (=> b!1205720 (= c!118290 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun zeroValue!944 () V!45979)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!546869 () Unit!39895)

(declare-fun minValue!944 () V!45979)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!571 (array!78034 array!78036 (_ BitVec 32) (_ BitVec 32) V!45979 V!45979 (_ BitVec 64) (_ BitVec 32) Int) Unit!39895)

(assert (=> b!1205720 (= lt!546869 (lemmaListMapContainsThenArrayContainsFrom!571 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!546880 () Unit!39895)

(declare-fun e!684759 () Unit!39895)

(assert (=> b!1205720 (= lt!546880 e!684759)))

(declare-fun c!118289 () Bool)

(assert (=> b!1205720 (= c!118289 (and (not lt!546867) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1205720 (= lt!546867 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1205721 () Bool)

(declare-fun e!684748 () Bool)

(declare-fun e!684755 () Bool)

(assert (=> b!1205721 (= e!684748 e!684755)))

(declare-fun res!802020 () Bool)

(assert (=> b!1205721 (=> res!802020 e!684755)))

(assert (=> b!1205721 (= res!802020 (not (= (select (arr!37654 _keys!1208) from!1455) k0!934)))))

(declare-fun e!684756 () Bool)

(assert (=> b!1205721 e!684756))

(declare-fun c!118288 () Bool)

(assert (=> b!1205721 (= c!118288 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!546871 () Unit!39895)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1051 (array!78034 array!78036 (_ BitVec 32) (_ BitVec 32) V!45979 V!45979 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39895)

(assert (=> b!1205721 (= lt!546871 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1051 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1205722 () Bool)

(declare-fun e!684760 () Unit!39895)

(declare-fun lt!546868 () Unit!39895)

(assert (=> b!1205722 (= e!684760 lt!546868)))

(declare-fun call!58552 () Unit!39895)

(assert (=> b!1205722 (= lt!546868 call!58552)))

(declare-fun call!58554 () Bool)

(assert (=> b!1205722 call!58554))

(declare-fun b!1205723 () Bool)

(declare-fun res!802022 () Bool)

(assert (=> b!1205723 (=> (not res!802022) (not e!684751))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1205723 (= res!802022 (validKeyInArray!0 k0!934))))

(declare-fun res!802016 () Bool)

(assert (=> start!100800 (=> (not res!802016) (not e!684751))))

(assert (=> start!100800 (= res!802016 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38191 _keys!1208))))))

(assert (=> start!100800 e!684751))

(declare-fun tp_is_empty!30639 () Bool)

(assert (=> start!100800 tp_is_empty!30639))

(declare-fun array_inv!28584 (array!78034) Bool)

(assert (=> start!100800 (array_inv!28584 _keys!1208)))

(assert (=> start!100800 true))

(assert (=> start!100800 tp!90809))

(declare-fun array_inv!28585 (array!78036) Bool)

(assert (=> start!100800 (and (array_inv!28585 _values!996) e!684757)))

(declare-fun b!1205724 () Bool)

(declare-fun c!118292 () Bool)

(assert (=> b!1205724 (= c!118292 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!546867))))

(declare-fun e!684750 () Unit!39895)

(assert (=> b!1205724 (= e!684750 e!684760)))

(declare-fun mapNonEmpty!47814 () Bool)

(declare-fun tp!90808 () Bool)

(declare-fun e!684758 () Bool)

(assert (=> mapNonEmpty!47814 (= mapRes!47814 (and tp!90808 e!684758))))

(declare-fun mapRest!47814 () (Array (_ BitVec 32) ValueCell!14610))

(declare-fun mapValue!47814 () ValueCell!14610)

(declare-fun mapKey!47814 () (_ BitVec 32))

(assert (=> mapNonEmpty!47814 (= (arr!37655 _values!996) (store mapRest!47814 mapKey!47814 mapValue!47814))))

(declare-datatypes ((tuple2!19858 0))(
  ( (tuple2!19859 (_1!9939 (_ BitVec 64)) (_2!9939 V!45979)) )
))
(declare-datatypes ((List!26683 0))(
  ( (Nil!26680) (Cons!26679 (h!27888 tuple2!19858) (t!39605 List!26683)) )
))
(declare-datatypes ((ListLongMap!17839 0))(
  ( (ListLongMap!17840 (toList!8935 List!26683)) )
))
(declare-fun call!58547 () ListLongMap!17839)

(declare-fun call!58550 () ListLongMap!17839)

(declare-fun b!1205725 () Bool)

(declare-fun -!1847 (ListLongMap!17839 (_ BitVec 64)) ListLongMap!17839)

(assert (=> b!1205725 (= e!684756 (= call!58547 (-!1847 call!58550 k0!934)))))

(declare-fun b!1205726 () Bool)

(declare-fun res!802027 () Bool)

(assert (=> b!1205726 (=> (not res!802027) (not e!684751))))

(assert (=> b!1205726 (= res!802027 (and (= (size!38192 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38191 _keys!1208) (size!38192 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun call!58553 () ListLongMap!17839)

(declare-fun bm!58544 () Bool)

(declare-fun lt!546875 () ListLongMap!17839)

(declare-fun c!118291 () Bool)

(declare-fun +!3965 (ListLongMap!17839 tuple2!19858) ListLongMap!17839)

(assert (=> bm!58544 (= call!58553 (+!3965 lt!546875 (ite (or c!118289 c!118291) (tuple2!19859 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19859 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1205727 () Bool)

(declare-fun res!802025 () Bool)

(assert (=> b!1205727 (=> (not res!802025) (not e!684746))))

(declare-fun lt!546872 () array!78034)

(declare-datatypes ((List!26684 0))(
  ( (Nil!26681) (Cons!26680 (h!27889 (_ BitVec 64)) (t!39606 List!26684)) )
))
(declare-fun arrayNoDuplicates!0 (array!78034 (_ BitVec 32) List!26684) Bool)

(assert (=> b!1205727 (= res!802025 (arrayNoDuplicates!0 lt!546872 #b00000000000000000000000000000000 Nil!26681))))

(declare-fun b!1205728 () Bool)

(declare-fun lt!546876 () Unit!39895)

(assert (=> b!1205728 (= e!684759 lt!546876)))

(declare-fun lt!546866 () Unit!39895)

(declare-fun addStillContains!1030 (ListLongMap!17839 (_ BitVec 64) V!45979 (_ BitVec 64)) Unit!39895)

(assert (=> b!1205728 (= lt!546866 (addStillContains!1030 lt!546875 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(declare-fun lt!546879 () ListLongMap!17839)

(assert (=> b!1205728 (= lt!546879 call!58553)))

(declare-fun call!58551 () Bool)

(assert (=> b!1205728 call!58551))

(declare-fun call!58549 () Unit!39895)

(assert (=> b!1205728 (= lt!546876 call!58549)))

(declare-fun contains!6939 (ListLongMap!17839 (_ BitVec 64)) Bool)

(assert (=> b!1205728 (contains!6939 (+!3965 lt!546879 (tuple2!19859 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun b!1205729 () Bool)

(assert (=> b!1205729 (= e!684758 tp_is_empty!30639)))

(declare-fun bm!58545 () Bool)

(declare-fun call!58548 () ListLongMap!17839)

(assert (=> bm!58545 (= call!58548 call!58553)))

(declare-fun bm!58546 () Bool)

(assert (=> bm!58546 (= call!58554 call!58551)))

(declare-fun bm!58547 () Bool)

(assert (=> bm!58547 (= call!58551 (contains!6939 (ite c!118289 lt!546879 call!58548) k0!934))))

(declare-fun b!1205730 () Bool)

(declare-fun res!802014 () Bool)

(assert (=> b!1205730 (=> (not res!802014) (not e!684751))))

(assert (=> b!1205730 (= res!802014 (= (select (arr!37654 _keys!1208) i!673) k0!934))))

(declare-fun b!1205731 () Bool)

(assert (=> b!1205731 call!58554))

(declare-fun lt!546873 () Unit!39895)

(assert (=> b!1205731 (= lt!546873 call!58552)))

(assert (=> b!1205731 (= e!684750 lt!546873)))

(declare-fun b!1205732 () Bool)

(declare-fun res!802019 () Bool)

(assert (=> b!1205732 (=> (not res!802019) (not e!684751))))

(assert (=> b!1205732 (= res!802019 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38191 _keys!1208))))))

(declare-fun b!1205733 () Bool)

(assert (=> b!1205733 (= e!684755 e!684753)))

(declare-fun res!802013 () Bool)

(assert (=> b!1205733 (=> res!802013 e!684753)))

(assert (=> b!1205733 (= res!802013 (not (contains!6939 lt!546875 k0!934)))))

(declare-fun getCurrentListMapNoExtraKeys!5343 (array!78034 array!78036 (_ BitVec 32) (_ BitVec 32) V!45979 V!45979 (_ BitVec 32) Int) ListLongMap!17839)

(assert (=> b!1205733 (= lt!546875 (getCurrentListMapNoExtraKeys!5343 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1205734 () Bool)

(assert (=> b!1205734 (= e!684756 (= call!58547 call!58550))))

(declare-fun b!1205735 () Bool)

(declare-fun Unit!39897 () Unit!39895)

(assert (=> b!1205735 (= e!684760 Unit!39897)))

(declare-fun b!1205736 () Bool)

(declare-fun res!802015 () Bool)

(assert (=> b!1205736 (=> (not res!802015) (not e!684751))))

(assert (=> b!1205736 (= res!802015 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26681))))

(declare-fun b!1205737 () Bool)

(assert (=> b!1205737 (= e!684752 e!684748)))

(declare-fun res!802018 () Bool)

(assert (=> b!1205737 (=> res!802018 e!684748)))

(assert (=> b!1205737 (= res!802018 (not (= from!1455 i!673)))))

(declare-fun lt!546877 () ListLongMap!17839)

(declare-fun lt!546870 () array!78036)

(assert (=> b!1205737 (= lt!546877 (getCurrentListMapNoExtraKeys!5343 lt!546872 lt!546870 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3264 (Int (_ BitVec 64)) V!45979)

(assert (=> b!1205737 (= lt!546870 (array!78037 (store (arr!37655 _values!996) i!673 (ValueCellFull!14610 (dynLambda!3264 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38192 _values!996)))))

(declare-fun lt!546878 () ListLongMap!17839)

(assert (=> b!1205737 (= lt!546878 (getCurrentListMapNoExtraKeys!5343 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun bm!58548 () Bool)

(assert (=> bm!58548 (= call!58547 (getCurrentListMapNoExtraKeys!5343 lt!546872 lt!546870 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!58549 () Bool)

(assert (=> bm!58549 (= call!58549 (addStillContains!1030 (ite c!118289 lt!546879 lt!546875) (ite c!118289 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!118291 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!118289 minValue!944 (ite c!118291 zeroValue!944 minValue!944)) k0!934))))

(declare-fun b!1205738 () Bool)

(assert (=> b!1205738 (= e!684759 e!684750)))

(assert (=> b!1205738 (= c!118291 (and (not lt!546867) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!58550 () Bool)

(assert (=> bm!58550 (= call!58552 call!58549)))

(declare-fun mapIsEmpty!47814 () Bool)

(assert (=> mapIsEmpty!47814 mapRes!47814))

(declare-fun b!1205739 () Bool)

(assert (=> b!1205739 (= e!684751 e!684746)))

(declare-fun res!802026 () Bool)

(assert (=> b!1205739 (=> (not res!802026) (not e!684746))))

(assert (=> b!1205739 (= res!802026 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!546872 mask!1564))))

(assert (=> b!1205739 (= lt!546872 (array!78035 (store (arr!37654 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38191 _keys!1208)))))

(declare-fun b!1205740 () Bool)

(declare-fun res!802024 () Bool)

(assert (=> b!1205740 (=> (not res!802024) (not e!684751))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1205740 (= res!802024 (validMask!0 mask!1564))))

(declare-fun b!1205741 () Bool)

(assert (=> b!1205741 (= e!684747 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1205742 () Bool)

(assert (=> b!1205742 (= e!684754 tp_is_empty!30639)))

(declare-fun bm!58551 () Bool)

(assert (=> bm!58551 (= call!58550 (getCurrentListMapNoExtraKeys!5343 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (= (and start!100800 res!802016) b!1205740))

(assert (= (and b!1205740 res!802024) b!1205726))

(assert (= (and b!1205726 res!802027) b!1205716))

(assert (= (and b!1205716 res!802021) b!1205736))

(assert (= (and b!1205736 res!802015) b!1205732))

(assert (= (and b!1205732 res!802019) b!1205723))

(assert (= (and b!1205723 res!802022) b!1205730))

(assert (= (and b!1205730 res!802014) b!1205739))

(assert (= (and b!1205739 res!802026) b!1205727))

(assert (= (and b!1205727 res!802025) b!1205715))

(assert (= (and b!1205715 (not res!802023)) b!1205737))

(assert (= (and b!1205737 (not res!802018)) b!1205721))

(assert (= (and b!1205721 c!118288) b!1205725))

(assert (= (and b!1205721 (not c!118288)) b!1205734))

(assert (= (or b!1205725 b!1205734) bm!58548))

(assert (= (or b!1205725 b!1205734) bm!58551))

(assert (= (and b!1205721 (not res!802020)) b!1205733))

(assert (= (and b!1205733 (not res!802013)) b!1205720))

(assert (= (and b!1205720 c!118289) b!1205728))

(assert (= (and b!1205720 (not c!118289)) b!1205738))

(assert (= (and b!1205738 c!118291) b!1205731))

(assert (= (and b!1205738 (not c!118291)) b!1205724))

(assert (= (and b!1205724 c!118292) b!1205722))

(assert (= (and b!1205724 (not c!118292)) b!1205735))

(assert (= (or b!1205731 b!1205722) bm!58550))

(assert (= (or b!1205731 b!1205722) bm!58545))

(assert (= (or b!1205731 b!1205722) bm!58546))

(assert (= (or b!1205728 bm!58546) bm!58547))

(assert (= (or b!1205728 bm!58550) bm!58549))

(assert (= (or b!1205728 bm!58545) bm!58544))

(assert (= (and b!1205720 c!118290) b!1205741))

(assert (= (and b!1205720 (not c!118290)) b!1205718))

(assert (= (and b!1205720 res!802017) b!1205717))

(assert (= (and b!1205719 condMapEmpty!47814) mapIsEmpty!47814))

(assert (= (and b!1205719 (not condMapEmpty!47814)) mapNonEmpty!47814))

(get-info :version)

(assert (= (and mapNonEmpty!47814 ((_ is ValueCellFull!14610) mapValue!47814)) b!1205729))

(assert (= (and b!1205719 ((_ is ValueCellFull!14610) mapDefault!47814)) b!1205742))

(assert (= start!100800 b!1205719))

(declare-fun b_lambda!21349 () Bool)

(assert (=> (not b_lambda!21349) (not b!1205737)))

(declare-fun t!39604 () Bool)

(declare-fun tb!10743 () Bool)

(assert (=> (and start!100800 (= defaultEntry!1004 defaultEntry!1004) t!39604) tb!10743))

(declare-fun result!22063 () Bool)

(assert (=> tb!10743 (= result!22063 tp_is_empty!30639)))

(assert (=> b!1205737 t!39604))

(declare-fun b_and!42869 () Bool)

(assert (= b_and!42867 (and (=> t!39604 result!22063) b_and!42869)))

(declare-fun m!1111585 () Bool)

(assert (=> b!1205727 m!1111585))

(declare-fun m!1111587 () Bool)

(assert (=> b!1205739 m!1111587))

(declare-fun m!1111589 () Bool)

(assert (=> b!1205739 m!1111589))

(declare-fun m!1111591 () Bool)

(assert (=> b!1205730 m!1111591))

(declare-fun m!1111593 () Bool)

(assert (=> bm!58544 m!1111593))

(declare-fun m!1111595 () Bool)

(assert (=> bm!58551 m!1111595))

(declare-fun m!1111597 () Bool)

(assert (=> mapNonEmpty!47814 m!1111597))

(declare-fun m!1111599 () Bool)

(assert (=> b!1205721 m!1111599))

(declare-fun m!1111601 () Bool)

(assert (=> b!1205721 m!1111601))

(declare-fun m!1111603 () Bool)

(assert (=> b!1205725 m!1111603))

(declare-fun m!1111605 () Bool)

(assert (=> b!1205733 m!1111605))

(assert (=> b!1205733 m!1111595))

(declare-fun m!1111607 () Bool)

(assert (=> b!1205736 m!1111607))

(declare-fun m!1111609 () Bool)

(assert (=> bm!58548 m!1111609))

(declare-fun m!1111611 () Bool)

(assert (=> bm!58549 m!1111611))

(declare-fun m!1111613 () Bool)

(assert (=> start!100800 m!1111613))

(declare-fun m!1111615 () Bool)

(assert (=> start!100800 m!1111615))

(declare-fun m!1111617 () Bool)

(assert (=> b!1205723 m!1111617))

(declare-fun m!1111619 () Bool)

(assert (=> b!1205737 m!1111619))

(declare-fun m!1111621 () Bool)

(assert (=> b!1205737 m!1111621))

(declare-fun m!1111623 () Bool)

(assert (=> b!1205737 m!1111623))

(declare-fun m!1111625 () Bool)

(assert (=> b!1205737 m!1111625))

(declare-fun m!1111627 () Bool)

(assert (=> b!1205740 m!1111627))

(declare-fun m!1111629 () Bool)

(assert (=> b!1205717 m!1111629))

(declare-fun m!1111631 () Bool)

(assert (=> b!1205716 m!1111631))

(assert (=> b!1205741 m!1111629))

(declare-fun m!1111633 () Bool)

(assert (=> b!1205728 m!1111633))

(declare-fun m!1111635 () Bool)

(assert (=> b!1205728 m!1111635))

(assert (=> b!1205728 m!1111635))

(declare-fun m!1111637 () Bool)

(assert (=> b!1205728 m!1111637))

(declare-fun m!1111639 () Bool)

(assert (=> bm!58547 m!1111639))

(declare-fun m!1111641 () Bool)

(assert (=> b!1205715 m!1111641))

(declare-fun m!1111643 () Bool)

(assert (=> b!1205715 m!1111643))

(declare-fun m!1111645 () Bool)

(assert (=> b!1205720 m!1111645))

(check-sat (not bm!58551) (not b!1205720) (not b_lambda!21349) (not b!1205715) (not b!1205721) (not b_next!25935) (not bm!58549) (not bm!58548) (not b!1205740) (not mapNonEmpty!47814) (not bm!58547) (not b!1205717) b_and!42869 tp_is_empty!30639 (not b!1205727) (not b!1205725) (not b!1205739) (not b!1205737) (not b!1205723) (not b!1205736) (not start!100800) (not b!1205728) (not bm!58544) (not b!1205741) (not b!1205716) (not b!1205733))
(check-sat b_and!42869 (not b_next!25935))
