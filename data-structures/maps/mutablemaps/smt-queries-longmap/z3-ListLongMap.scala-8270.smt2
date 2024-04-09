; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100606 () Bool)

(assert start!100606)

(declare-fun b_free!25893 () Bool)

(declare-fun b_next!25893 () Bool)

(assert (=> start!100606 (= b_free!25893 (not b_next!25893))))

(declare-fun tp!90670 () Bool)

(declare-fun b_and!42687 () Bool)

(assert (=> start!100606 (= tp!90670 b_and!42687)))

(declare-fun b!1202921 () Bool)

(declare-fun e!683103 () Bool)

(declare-fun tp_is_empty!30597 () Bool)

(assert (=> b!1202921 (= e!683103 tp_is_empty!30597)))

(declare-fun b!1202922 () Bool)

(declare-fun e!683110 () Bool)

(declare-fun e!683107 () Bool)

(assert (=> b!1202922 (= e!683110 e!683107)))

(declare-fun res!800662 () Bool)

(assert (=> b!1202922 (=> res!800662 e!683107)))

(declare-datatypes ((array!77944 0))(
  ( (array!77945 (arr!37613 (Array (_ BitVec 32) (_ BitVec 64))) (size!38150 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77944)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1202922 (= res!800662 (not (= (select (arr!37613 _keys!1208) from!1455) k0!934)))))

(declare-fun e!683112 () Bool)

(assert (=> b!1202922 e!683112))

(declare-fun c!117704 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1202922 (= c!117704 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((V!45923 0))(
  ( (V!45924 (val!15355 Int)) )
))
(declare-fun zeroValue!944 () V!45923)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((Unit!39803 0))(
  ( (Unit!39804) )
))
(declare-fun lt!545249 () Unit!39803)

(declare-datatypes ((ValueCell!14589 0))(
  ( (ValueCellFull!14589 (v!17994 V!45923)) (EmptyCell!14589) )
))
(declare-datatypes ((array!77946 0))(
  ( (array!77947 (arr!37614 (Array (_ BitVec 32) ValueCell!14589)) (size!38151 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77946)

(declare-fun minValue!944 () V!45923)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1036 (array!77944 array!77946 (_ BitVec 32) (_ BitVec 32) V!45923 V!45923 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39803)

(assert (=> b!1202922 (= lt!545249 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1036 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1202923 () Bool)

(declare-fun res!800667 () Bool)

(declare-fun e!683115 () Bool)

(assert (=> b!1202923 (=> (not res!800667) (not e!683115))))

(declare-fun lt!545244 () array!77944)

(declare-datatypes ((List!26646 0))(
  ( (Nil!26643) (Cons!26642 (h!27851 (_ BitVec 64)) (t!39526 List!26646)) )
))
(declare-fun arrayNoDuplicates!0 (array!77944 (_ BitVec 32) List!26646) Bool)

(assert (=> b!1202923 (= res!800667 (arrayNoDuplicates!0 lt!545244 #b00000000000000000000000000000000 Nil!26643))))

(declare-fun b!1202924 () Bool)

(declare-fun e!683111 () Unit!39803)

(declare-fun lt!545251 () Unit!39803)

(assert (=> b!1202924 (= e!683111 lt!545251)))

(declare-fun lt!545245 () Unit!39803)

(declare-fun call!57916 () Unit!39803)

(assert (=> b!1202924 (= lt!545245 call!57916)))

(declare-datatypes ((tuple2!19818 0))(
  ( (tuple2!19819 (_1!9919 (_ BitVec 64)) (_2!9919 V!45923)) )
))
(declare-datatypes ((List!26647 0))(
  ( (Nil!26644) (Cons!26643 (h!27852 tuple2!19818) (t!39527 List!26647)) )
))
(declare-datatypes ((ListLongMap!17799 0))(
  ( (ListLongMap!17800 (toList!8915 List!26647)) )
))
(declare-fun lt!545241 () ListLongMap!17799)

(declare-fun call!57919 () ListLongMap!17799)

(assert (=> b!1202924 (= lt!545241 call!57919)))

(declare-fun call!57918 () Bool)

(assert (=> b!1202924 call!57918))

(declare-fun addStillContains!1014 (ListLongMap!17799 (_ BitVec 64) V!45923 (_ BitVec 64)) Unit!39803)

(assert (=> b!1202924 (= lt!545251 (addStillContains!1014 lt!545241 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(declare-fun contains!6913 (ListLongMap!17799 (_ BitVec 64)) Bool)

(declare-fun +!3950 (ListLongMap!17799 tuple2!19818) ListLongMap!17799)

(assert (=> b!1202924 (contains!6913 (+!3950 lt!545241 (tuple2!19819 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun b!1202925 () Bool)

(declare-fun res!800663 () Bool)

(declare-fun e!683114 () Bool)

(assert (=> b!1202925 (=> (not res!800663) (not e!683114))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1202925 (= res!800663 (validMask!0 mask!1564))))

(declare-fun b!1202926 () Bool)

(declare-fun call!57921 () ListLongMap!17799)

(declare-fun call!57922 () ListLongMap!17799)

(assert (=> b!1202926 (= e!683112 (= call!57921 call!57922))))

(declare-fun mapNonEmpty!47738 () Bool)

(declare-fun mapRes!47738 () Bool)

(declare-fun tp!90669 () Bool)

(assert (=> mapNonEmpty!47738 (= mapRes!47738 (and tp!90669 e!683103))))

(declare-fun mapRest!47738 () (Array (_ BitVec 32) ValueCell!14589))

(declare-fun mapValue!47738 () ValueCell!14589)

(declare-fun mapKey!47738 () (_ BitVec 32))

(assert (=> mapNonEmpty!47738 (= (arr!37614 _values!996) (store mapRest!47738 mapKey!47738 mapValue!47738))))

(declare-fun b!1202927 () Bool)

(declare-fun res!800661 () Bool)

(assert (=> b!1202927 (=> (not res!800661) (not e!683114))))

(assert (=> b!1202927 (= res!800661 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26643))))

(declare-fun b!1202928 () Bool)

(declare-fun c!117706 () Bool)

(declare-fun lt!545242 () Bool)

(assert (=> b!1202928 (= c!117706 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!545242))))

(declare-fun e!683104 () Unit!39803)

(declare-fun e!683113 () Unit!39803)

(assert (=> b!1202928 (= e!683104 e!683113)))

(declare-fun res!800669 () Bool)

(assert (=> start!100606 (=> (not res!800669) (not e!683114))))

(assert (=> start!100606 (= res!800669 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38150 _keys!1208))))))

(assert (=> start!100606 e!683114))

(assert (=> start!100606 tp_is_empty!30597))

(declare-fun array_inv!28554 (array!77944) Bool)

(assert (=> start!100606 (array_inv!28554 _keys!1208)))

(assert (=> start!100606 true))

(assert (=> start!100606 tp!90670))

(declare-fun e!683108 () Bool)

(declare-fun array_inv!28555 (array!77946) Bool)

(assert (=> start!100606 (and (array_inv!28555 _values!996) e!683108)))

(declare-fun b!1202929 () Bool)

(declare-fun res!800664 () Bool)

(assert (=> b!1202929 (=> (not res!800664) (not e!683114))))

(assert (=> b!1202929 (= res!800664 (and (= (size!38151 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38150 _keys!1208) (size!38151 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1202930 () Bool)

(declare-fun res!800672 () Bool)

(assert (=> b!1202930 (=> (not res!800672) (not e!683114))))

(assert (=> b!1202930 (= res!800672 (= (select (arr!37613 _keys!1208) i!673) k0!934))))

(declare-fun bm!57912 () Bool)

(declare-fun call!57920 () Unit!39803)

(assert (=> bm!57912 (= call!57920 call!57916)))

(declare-fun call!57917 () ListLongMap!17799)

(declare-fun bm!57913 () Bool)

(declare-fun c!117705 () Bool)

(assert (=> bm!57913 (= call!57918 (contains!6913 (ite c!117705 lt!545241 call!57917) k0!934))))

(declare-fun mapIsEmpty!47738 () Bool)

(assert (=> mapIsEmpty!47738 mapRes!47738))

(declare-fun b!1202931 () Bool)

(declare-fun -!1831 (ListLongMap!17799 (_ BitVec 64)) ListLongMap!17799)

(assert (=> b!1202931 (= e!683112 (= call!57921 (-!1831 call!57922 k0!934)))))

(declare-fun b!1202932 () Bool)

(declare-fun lt!545243 () Unit!39803)

(assert (=> b!1202932 (= e!683113 lt!545243)))

(assert (=> b!1202932 (= lt!545243 call!57920)))

(declare-fun call!57915 () Bool)

(assert (=> b!1202932 call!57915))

(declare-fun b!1202933 () Bool)

(declare-fun Unit!39805 () Unit!39803)

(assert (=> b!1202933 (= e!683113 Unit!39805)))

(declare-fun lt!545253 () ListLongMap!17799)

(declare-fun c!117703 () Bool)

(declare-fun bm!57914 () Bool)

(assert (=> bm!57914 (= call!57919 (+!3950 lt!545253 (ite (or c!117705 c!117703) (tuple2!19819 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19819 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1202934 () Bool)

(declare-fun res!800668 () Bool)

(assert (=> b!1202934 (=> (not res!800668) (not e!683114))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1202934 (= res!800668 (validKeyInArray!0 k0!934))))

(declare-fun bm!57915 () Bool)

(declare-fun lt!545246 () array!77946)

(declare-fun getCurrentListMapNoExtraKeys!5326 (array!77944 array!77946 (_ BitVec 32) (_ BitVec 32) V!45923 V!45923 (_ BitVec 32) Int) ListLongMap!17799)

(assert (=> bm!57915 (= call!57921 (getCurrentListMapNoExtraKeys!5326 lt!545244 lt!545246 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1202935 () Bool)

(declare-fun e!683116 () Bool)

(assert (=> b!1202935 (= e!683108 (and e!683116 mapRes!47738))))

(declare-fun condMapEmpty!47738 () Bool)

(declare-fun mapDefault!47738 () ValueCell!14589)

(assert (=> b!1202935 (= condMapEmpty!47738 (= (arr!37614 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14589)) mapDefault!47738)))))

(declare-fun b!1202936 () Bool)

(assert (=> b!1202936 (= e!683111 e!683104)))

(assert (=> b!1202936 (= c!117703 (and (not lt!545242) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1202937 () Bool)

(declare-fun e!683109 () Bool)

(assert (=> b!1202937 (= e!683109 true)))

(declare-fun lt!545250 () Unit!39803)

(assert (=> b!1202937 (= lt!545250 e!683111)))

(assert (=> b!1202937 (= c!117705 (and (not lt!545242) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1202937 (= lt!545242 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun bm!57916 () Bool)

(assert (=> bm!57916 (= call!57917 call!57919)))

(declare-fun b!1202938 () Bool)

(declare-fun e!683106 () Bool)

(assert (=> b!1202938 (= e!683115 (not e!683106))))

(declare-fun res!800671 () Bool)

(assert (=> b!1202938 (=> res!800671 e!683106)))

(assert (=> b!1202938 (= res!800671 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!77944 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1202938 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!545254 () Unit!39803)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77944 (_ BitVec 64) (_ BitVec 32)) Unit!39803)

(assert (=> b!1202938 (= lt!545254 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1202939 () Bool)

(assert (=> b!1202939 (= e!683114 e!683115)))

(declare-fun res!800666 () Bool)

(assert (=> b!1202939 (=> (not res!800666) (not e!683115))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77944 (_ BitVec 32)) Bool)

(assert (=> b!1202939 (= res!800666 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!545244 mask!1564))))

(assert (=> b!1202939 (= lt!545244 (array!77945 (store (arr!37613 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38150 _keys!1208)))))

(declare-fun b!1202940 () Bool)

(assert (=> b!1202940 (= e!683116 tp_is_empty!30597)))

(declare-fun b!1202941 () Bool)

(assert (=> b!1202941 (= e!683107 e!683109)))

(declare-fun res!800670 () Bool)

(assert (=> b!1202941 (=> res!800670 e!683109)))

(assert (=> b!1202941 (= res!800670 (not (contains!6913 lt!545253 k0!934)))))

(assert (=> b!1202941 (= lt!545253 (getCurrentListMapNoExtraKeys!5326 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!57917 () Bool)

(assert (=> bm!57917 (= call!57922 (getCurrentListMapNoExtraKeys!5326 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1202942 () Bool)

(declare-fun res!800665 () Bool)

(assert (=> b!1202942 (=> (not res!800665) (not e!683114))))

(assert (=> b!1202942 (= res!800665 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1202943 () Bool)

(assert (=> b!1202943 (= e!683106 e!683110)))

(declare-fun res!800660 () Bool)

(assert (=> b!1202943 (=> res!800660 e!683110)))

(assert (=> b!1202943 (= res!800660 (not (= from!1455 i!673)))))

(declare-fun lt!545247 () ListLongMap!17799)

(assert (=> b!1202943 (= lt!545247 (getCurrentListMapNoExtraKeys!5326 lt!545244 lt!545246 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3249 (Int (_ BitVec 64)) V!45923)

(assert (=> b!1202943 (= lt!545246 (array!77947 (store (arr!37614 _values!996) i!673 (ValueCellFull!14589 (dynLambda!3249 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38151 _values!996)))))

(declare-fun lt!545248 () ListLongMap!17799)

(assert (=> b!1202943 (= lt!545248 (getCurrentListMapNoExtraKeys!5326 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun bm!57918 () Bool)

(assert (=> bm!57918 (= call!57916 (addStillContains!1014 lt!545253 (ite (or c!117705 c!117703) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!117705 c!117703) zeroValue!944 minValue!944) k0!934))))

(declare-fun b!1202944 () Bool)

(declare-fun res!800673 () Bool)

(assert (=> b!1202944 (=> (not res!800673) (not e!683114))))

(assert (=> b!1202944 (= res!800673 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38150 _keys!1208))))))

(declare-fun bm!57919 () Bool)

(assert (=> bm!57919 (= call!57915 call!57918)))

(declare-fun b!1202945 () Bool)

(assert (=> b!1202945 call!57915))

(declare-fun lt!545252 () Unit!39803)

(assert (=> b!1202945 (= lt!545252 call!57920)))

(assert (=> b!1202945 (= e!683104 lt!545252)))

(assert (= (and start!100606 res!800669) b!1202925))

(assert (= (and b!1202925 res!800663) b!1202929))

(assert (= (and b!1202929 res!800664) b!1202942))

(assert (= (and b!1202942 res!800665) b!1202927))

(assert (= (and b!1202927 res!800661) b!1202944))

(assert (= (and b!1202944 res!800673) b!1202934))

(assert (= (and b!1202934 res!800668) b!1202930))

(assert (= (and b!1202930 res!800672) b!1202939))

(assert (= (and b!1202939 res!800666) b!1202923))

(assert (= (and b!1202923 res!800667) b!1202938))

(assert (= (and b!1202938 (not res!800671)) b!1202943))

(assert (= (and b!1202943 (not res!800660)) b!1202922))

(assert (= (and b!1202922 c!117704) b!1202931))

(assert (= (and b!1202922 (not c!117704)) b!1202926))

(assert (= (or b!1202931 b!1202926) bm!57915))

(assert (= (or b!1202931 b!1202926) bm!57917))

(assert (= (and b!1202922 (not res!800662)) b!1202941))

(assert (= (and b!1202941 (not res!800670)) b!1202937))

(assert (= (and b!1202937 c!117705) b!1202924))

(assert (= (and b!1202937 (not c!117705)) b!1202936))

(assert (= (and b!1202936 c!117703) b!1202945))

(assert (= (and b!1202936 (not c!117703)) b!1202928))

(assert (= (and b!1202928 c!117706) b!1202932))

(assert (= (and b!1202928 (not c!117706)) b!1202933))

(assert (= (or b!1202945 b!1202932) bm!57912))

(assert (= (or b!1202945 b!1202932) bm!57916))

(assert (= (or b!1202945 b!1202932) bm!57919))

(assert (= (or b!1202924 bm!57919) bm!57913))

(assert (= (or b!1202924 bm!57912) bm!57918))

(assert (= (or b!1202924 bm!57916) bm!57914))

(assert (= (and b!1202935 condMapEmpty!47738) mapIsEmpty!47738))

(assert (= (and b!1202935 (not condMapEmpty!47738)) mapNonEmpty!47738))

(get-info :version)

(assert (= (and mapNonEmpty!47738 ((_ is ValueCellFull!14589) mapValue!47738)) b!1202921))

(assert (= (and b!1202935 ((_ is ValueCellFull!14589) mapDefault!47738)) b!1202940))

(assert (= start!100606 b!1202935))

(declare-fun b_lambda!21107 () Bool)

(assert (=> (not b_lambda!21107) (not b!1202943)))

(declare-fun t!39525 () Bool)

(declare-fun tb!10701 () Bool)

(assert (=> (and start!100606 (= defaultEntry!1004 defaultEntry!1004) t!39525) tb!10701))

(declare-fun result!21971 () Bool)

(assert (=> tb!10701 (= result!21971 tp_is_empty!30597)))

(assert (=> b!1202943 t!39525))

(declare-fun b_and!42689 () Bool)

(assert (= b_and!42687 (and (=> t!39525 result!21971) b_and!42689)))

(declare-fun m!1108699 () Bool)

(assert (=> b!1202941 m!1108699))

(declare-fun m!1108701 () Bool)

(assert (=> b!1202941 m!1108701))

(declare-fun m!1108703 () Bool)

(assert (=> b!1202938 m!1108703))

(declare-fun m!1108705 () Bool)

(assert (=> b!1202938 m!1108705))

(declare-fun m!1108707 () Bool)

(assert (=> bm!57915 m!1108707))

(declare-fun m!1108709 () Bool)

(assert (=> b!1202922 m!1108709))

(declare-fun m!1108711 () Bool)

(assert (=> b!1202922 m!1108711))

(declare-fun m!1108713 () Bool)

(assert (=> b!1202930 m!1108713))

(declare-fun m!1108715 () Bool)

(assert (=> start!100606 m!1108715))

(declare-fun m!1108717 () Bool)

(assert (=> start!100606 m!1108717))

(declare-fun m!1108719 () Bool)

(assert (=> b!1202939 m!1108719))

(declare-fun m!1108721 () Bool)

(assert (=> b!1202939 m!1108721))

(declare-fun m!1108723 () Bool)

(assert (=> b!1202923 m!1108723))

(declare-fun m!1108725 () Bool)

(assert (=> b!1202927 m!1108725))

(declare-fun m!1108727 () Bool)

(assert (=> b!1202924 m!1108727))

(declare-fun m!1108729 () Bool)

(assert (=> b!1202924 m!1108729))

(assert (=> b!1202924 m!1108729))

(declare-fun m!1108731 () Bool)

(assert (=> b!1202924 m!1108731))

(declare-fun m!1108733 () Bool)

(assert (=> mapNonEmpty!47738 m!1108733))

(declare-fun m!1108735 () Bool)

(assert (=> b!1202934 m!1108735))

(assert (=> bm!57917 m!1108701))

(declare-fun m!1108737 () Bool)

(assert (=> b!1202931 m!1108737))

(declare-fun m!1108739 () Bool)

(assert (=> b!1202925 m!1108739))

(declare-fun m!1108741 () Bool)

(assert (=> bm!57914 m!1108741))

(declare-fun m!1108743 () Bool)

(assert (=> bm!57913 m!1108743))

(declare-fun m!1108745 () Bool)

(assert (=> b!1202942 m!1108745))

(declare-fun m!1108747 () Bool)

(assert (=> bm!57918 m!1108747))

(declare-fun m!1108749 () Bool)

(assert (=> b!1202943 m!1108749))

(declare-fun m!1108751 () Bool)

(assert (=> b!1202943 m!1108751))

(declare-fun m!1108753 () Bool)

(assert (=> b!1202943 m!1108753))

(declare-fun m!1108755 () Bool)

(assert (=> b!1202943 m!1108755))

(check-sat (not bm!57913) (not b_lambda!21107) (not b!1202939) (not b!1202927) (not bm!57915) (not b!1202942) (not b!1202924) b_and!42689 tp_is_empty!30597 (not b!1202941) (not b!1202931) (not b_next!25893) (not b!1202938) (not mapNonEmpty!47738) (not b!1202923) (not b!1202922) (not bm!57918) (not b!1202943) (not start!100606) (not bm!57914) (not b!1202934) (not bm!57917) (not b!1202925))
(check-sat b_and!42689 (not b_next!25893))
