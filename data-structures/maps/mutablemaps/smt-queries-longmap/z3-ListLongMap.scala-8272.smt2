; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100680 () Bool)

(assert start!100680)

(declare-fun b_free!25905 () Bool)

(declare-fun b_next!25905 () Bool)

(assert (=> start!100680 (= b_free!25905 (not b_next!25905))))

(declare-fun tp!90709 () Bool)

(declare-fun b_and!42751 () Bool)

(assert (=> start!100680 (= tp!90709 b_and!42751)))

(declare-datatypes ((V!45939 0))(
  ( (V!45940 (val!15361 Int)) )
))
(declare-datatypes ((tuple2!19830 0))(
  ( (tuple2!19831 (_1!9925 (_ BitVec 64)) (_2!9925 V!45939)) )
))
(declare-datatypes ((List!26657 0))(
  ( (Nil!26654) (Cons!26653 (h!27862 tuple2!19830) (t!39549 List!26657)) )
))
(declare-datatypes ((ListLongMap!17811 0))(
  ( (ListLongMap!17812 (toList!8921 List!26657)) )
))
(declare-fun call!58113 () ListLongMap!17811)

(declare-fun e!683689 () Bool)

(declare-fun call!58107 () ListLongMap!17811)

(declare-fun b!1203895 () Bool)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun -!1837 (ListLongMap!17811 (_ BitVec 64)) ListLongMap!17811)

(assert (=> b!1203895 (= e!683689 (= call!58107 (-!1837 call!58113 k0!934)))))

(declare-fun b!1203896 () Bool)

(declare-fun res!801123 () Bool)

(declare-fun e!683688 () Bool)

(assert (=> b!1203896 (=> (not res!801123) (not e!683688))))

(declare-datatypes ((array!77970 0))(
  ( (array!77971 (arr!37625 (Array (_ BitVec 32) (_ BitVec 64))) (size!38162 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77970)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77970 (_ BitVec 32)) Bool)

(assert (=> b!1203896 (= res!801123 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1203897 () Bool)

(declare-fun res!801128 () Bool)

(assert (=> b!1203897 (=> (not res!801128) (not e!683688))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14595 0))(
  ( (ValueCellFull!14595 (v!18003 V!45939)) (EmptyCell!14595) )
))
(declare-datatypes ((array!77972 0))(
  ( (array!77973 (arr!37626 (Array (_ BitVec 32) ValueCell!14595)) (size!38163 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77972)

(assert (=> b!1203897 (= res!801128 (and (= (size!38163 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38162 _keys!1208) (size!38163 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1203898 () Bool)

(declare-fun res!801126 () Bool)

(assert (=> b!1203898 (=> (not res!801126) (not e!683688))))

(declare-datatypes ((List!26658 0))(
  ( (Nil!26655) (Cons!26654 (h!27863 (_ BitVec 64)) (t!39550 List!26658)) )
))
(declare-fun arrayNoDuplicates!0 (array!77970 (_ BitVec 32) List!26658) Bool)

(assert (=> b!1203898 (= res!801126 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26655))))

(declare-fun b!1203899 () Bool)

(declare-datatypes ((Unit!39844 0))(
  ( (Unit!39845) )
))
(declare-fun e!683690 () Unit!39844)

(declare-fun Unit!39846 () Unit!39844)

(assert (=> b!1203899 (= e!683690 Unit!39846)))

(declare-fun zeroValue!944 () V!45939)

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun minValue!944 () V!45939)

(declare-fun bm!58103 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!5331 (array!77970 array!77972 (_ BitVec 32) (_ BitVec 32) V!45939 V!45939 (_ BitVec 32) Int) ListLongMap!17811)

(assert (=> bm!58103 (= call!58113 (getCurrentListMapNoExtraKeys!5331 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1203900 () Bool)

(declare-fun e!683683 () Bool)

(declare-fun contains!6921 (ListLongMap!17811 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4454 (array!77970 array!77972 (_ BitVec 32) (_ BitVec 32) V!45939 V!45939 (_ BitVec 32) Int) ListLongMap!17811)

(assert (=> b!1203900 (= e!683683 (contains!6921 (getCurrentListMap!4454 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-fun b!1203901 () Bool)

(declare-fun e!683694 () Bool)

(declare-fun e!683695 () Bool)

(assert (=> b!1203901 (= e!683694 e!683695)))

(declare-fun res!801124 () Bool)

(assert (=> b!1203901 (=> res!801124 e!683695)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1203901 (= res!801124 (not (= from!1455 i!673)))))

(declare-fun lt!545818 () array!77972)

(declare-fun lt!545823 () array!77970)

(declare-fun lt!545810 () ListLongMap!17811)

(assert (=> b!1203901 (= lt!545810 (getCurrentListMapNoExtraKeys!5331 lt!545823 lt!545818 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3253 (Int (_ BitVec 64)) V!45939)

(assert (=> b!1203901 (= lt!545818 (array!77973 (store (arr!37626 _values!996) i!673 (ValueCellFull!14595 (dynLambda!3253 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38163 _values!996)))))

(declare-fun lt!545822 () ListLongMap!17811)

(assert (=> b!1203901 (= lt!545822 (getCurrentListMapNoExtraKeys!5331 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1203902 () Bool)

(declare-fun res!801121 () Bool)

(assert (=> b!1203902 (=> (not res!801121) (not e!683688))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1203902 (= res!801121 (validKeyInArray!0 k0!934))))

(declare-fun b!1203903 () Bool)

(declare-fun res!801130 () Bool)

(assert (=> b!1203903 (=> (not res!801130) (not e!683688))))

(assert (=> b!1203903 (= res!801130 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38162 _keys!1208))))))

(declare-fun b!1203904 () Bool)

(declare-fun res!801120 () Bool)

(assert (=> b!1203904 (=> (not res!801120) (not e!683688))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1203904 (= res!801120 (validMask!0 mask!1564))))

(declare-fun b!1203905 () Bool)

(declare-fun e!683693 () Unit!39844)

(declare-fun lt!545820 () Unit!39844)

(assert (=> b!1203905 (= e!683693 lt!545820)))

(declare-fun lt!545815 () Unit!39844)

(declare-fun call!58112 () Unit!39844)

(assert (=> b!1203905 (= lt!545815 call!58112)))

(declare-fun lt!545812 () ListLongMap!17811)

(declare-fun lt!545821 () ListLongMap!17811)

(declare-fun +!3955 (ListLongMap!17811 tuple2!19830) ListLongMap!17811)

(assert (=> b!1203905 (= lt!545812 (+!3955 lt!545821 (tuple2!19831 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun call!58109 () Bool)

(assert (=> b!1203905 call!58109))

(declare-fun addStillContains!1019 (ListLongMap!17811 (_ BitVec 64) V!45939 (_ BitVec 64)) Unit!39844)

(assert (=> b!1203905 (= lt!545820 (addStillContains!1019 lt!545812 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(declare-fun call!58106 () ListLongMap!17811)

(assert (=> b!1203905 (contains!6921 call!58106 k0!934)))

(declare-fun mapIsEmpty!47760 () Bool)

(declare-fun mapRes!47760 () Bool)

(assert (=> mapIsEmpty!47760 mapRes!47760))

(declare-fun b!1203906 () Bool)

(declare-fun e!683685 () Bool)

(assert (=> b!1203906 (= e!683688 e!683685)))

(declare-fun res!801119 () Bool)

(assert (=> b!1203906 (=> (not res!801119) (not e!683685))))

(assert (=> b!1203906 (= res!801119 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!545823 mask!1564))))

(assert (=> b!1203906 (= lt!545823 (array!77971 (store (arr!37625 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38162 _keys!1208)))))

(declare-fun b!1203907 () Bool)

(declare-fun e!683684 () Bool)

(assert (=> b!1203907 (= e!683684 e!683683)))

(declare-fun res!801117 () Bool)

(assert (=> b!1203907 (=> res!801117 e!683683)))

(assert (=> b!1203907 (= res!801117 (or (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!38162 _keys!1208))))))

(declare-fun lt!545819 () Unit!39844)

(assert (=> b!1203907 (= lt!545819 e!683693)))

(declare-fun c!117923 () Bool)

(declare-fun lt!545816 () Bool)

(assert (=> b!1203907 (= c!117923 (and (not lt!545816) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1203907 (= lt!545816 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1203908 () Bool)

(declare-fun e!683686 () Bool)

(declare-fun tp_is_empty!30609 () Bool)

(assert (=> b!1203908 (= e!683686 tp_is_empty!30609)))

(declare-fun b!1203909 () Bool)

(declare-fun e!683696 () Bool)

(assert (=> b!1203909 (= e!683696 e!683684)))

(declare-fun res!801125 () Bool)

(assert (=> b!1203909 (=> res!801125 e!683684)))

(assert (=> b!1203909 (= res!801125 (not (contains!6921 lt!545821 k0!934)))))

(assert (=> b!1203909 (= lt!545821 (getCurrentListMapNoExtraKeys!5331 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1203910 () Bool)

(declare-fun call!58110 () Bool)

(assert (=> b!1203910 call!58110))

(declare-fun lt!545817 () Unit!39844)

(declare-fun call!58108 () Unit!39844)

(assert (=> b!1203910 (= lt!545817 call!58108)))

(declare-fun e!683691 () Unit!39844)

(assert (=> b!1203910 (= e!683691 lt!545817)))

(declare-fun c!117922 () Bool)

(declare-fun bm!58105 () Bool)

(assert (=> bm!58105 (= call!58106 (+!3955 (ite c!117923 lt!545812 lt!545821) (ite c!117923 (tuple2!19831 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!117922 (tuple2!19831 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19831 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun mapNonEmpty!47760 () Bool)

(declare-fun tp!90710 () Bool)

(declare-fun e!683692 () Bool)

(assert (=> mapNonEmpty!47760 (= mapRes!47760 (and tp!90710 e!683692))))

(declare-fun mapKey!47760 () (_ BitVec 32))

(declare-fun mapRest!47760 () (Array (_ BitVec 32) ValueCell!14595))

(declare-fun mapValue!47760 () ValueCell!14595)

(assert (=> mapNonEmpty!47760 (= (arr!37626 _values!996) (store mapRest!47760 mapKey!47760 mapValue!47760))))

(declare-fun b!1203911 () Bool)

(declare-fun res!801118 () Bool)

(assert (=> b!1203911 (=> (not res!801118) (not e!683688))))

(assert (=> b!1203911 (= res!801118 (= (select (arr!37625 _keys!1208) i!673) k0!934))))

(declare-fun bm!58106 () Bool)

(assert (=> bm!58106 (= call!58107 (getCurrentListMapNoExtraKeys!5331 lt!545823 lt!545818 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1203912 () Bool)

(assert (=> b!1203912 (= e!683693 e!683691)))

(assert (=> b!1203912 (= c!117922 (and (not lt!545816) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!58107 () Bool)

(assert (=> bm!58107 (= call!58112 (addStillContains!1019 lt!545821 (ite (or c!117923 c!117922) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!117923 c!117922) zeroValue!944 minValue!944) k0!934))))

(declare-fun b!1203913 () Bool)

(assert (=> b!1203913 (= e!683689 (= call!58107 call!58113))))

(declare-fun b!1203914 () Bool)

(assert (=> b!1203914 (= e!683695 e!683696)))

(declare-fun res!801122 () Bool)

(assert (=> b!1203914 (=> res!801122 e!683696)))

(assert (=> b!1203914 (= res!801122 (not (= (select (arr!37625 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1203914 e!683689))

(declare-fun c!117924 () Bool)

(assert (=> b!1203914 (= c!117924 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!545813 () Unit!39844)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1041 (array!77970 array!77972 (_ BitVec 32) (_ BitVec 32) V!45939 V!45939 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39844)

(assert (=> b!1203914 (= lt!545813 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1041 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!58104 () Bool)

(declare-fun call!58111 () ListLongMap!17811)

(assert (=> bm!58104 (= call!58109 (contains!6921 (ite c!117923 lt!545812 call!58111) k0!934))))

(declare-fun res!801127 () Bool)

(assert (=> start!100680 (=> (not res!801127) (not e!683688))))

(assert (=> start!100680 (= res!801127 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38162 _keys!1208))))))

(assert (=> start!100680 e!683688))

(assert (=> start!100680 tp_is_empty!30609))

(declare-fun array_inv!28566 (array!77970) Bool)

(assert (=> start!100680 (array_inv!28566 _keys!1208)))

(assert (=> start!100680 true))

(assert (=> start!100680 tp!90709))

(declare-fun e!683682 () Bool)

(declare-fun array_inv!28567 (array!77972) Bool)

(assert (=> start!100680 (and (array_inv!28567 _values!996) e!683682)))

(declare-fun b!1203915 () Bool)

(assert (=> b!1203915 (= e!683692 tp_is_empty!30609)))

(declare-fun bm!58108 () Bool)

(assert (=> bm!58108 (= call!58108 call!58112)))

(declare-fun b!1203916 () Bool)

(assert (=> b!1203916 (= e!683682 (and e!683686 mapRes!47760))))

(declare-fun condMapEmpty!47760 () Bool)

(declare-fun mapDefault!47760 () ValueCell!14595)

(assert (=> b!1203916 (= condMapEmpty!47760 (= (arr!37626 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14595)) mapDefault!47760)))))

(declare-fun b!1203917 () Bool)

(declare-fun c!117925 () Bool)

(assert (=> b!1203917 (= c!117925 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!545816))))

(assert (=> b!1203917 (= e!683691 e!683690)))

(declare-fun bm!58109 () Bool)

(assert (=> bm!58109 (= call!58111 call!58106)))

(declare-fun b!1203918 () Bool)

(declare-fun lt!545814 () Unit!39844)

(assert (=> b!1203918 (= e!683690 lt!545814)))

(assert (=> b!1203918 (= lt!545814 call!58108)))

(assert (=> b!1203918 call!58110))

(declare-fun bm!58110 () Bool)

(assert (=> bm!58110 (= call!58110 call!58109)))

(declare-fun b!1203919 () Bool)

(assert (=> b!1203919 (= e!683685 (not e!683694))))

(declare-fun res!801129 () Bool)

(assert (=> b!1203919 (=> res!801129 e!683694)))

(assert (=> b!1203919 (= res!801129 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!77970 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1203919 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!545811 () Unit!39844)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77970 (_ BitVec 64) (_ BitVec 32)) Unit!39844)

(assert (=> b!1203919 (= lt!545811 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1203920 () Bool)

(declare-fun res!801131 () Bool)

(assert (=> b!1203920 (=> (not res!801131) (not e!683685))))

(assert (=> b!1203920 (= res!801131 (arrayNoDuplicates!0 lt!545823 #b00000000000000000000000000000000 Nil!26655))))

(assert (= (and start!100680 res!801127) b!1203904))

(assert (= (and b!1203904 res!801120) b!1203897))

(assert (= (and b!1203897 res!801128) b!1203896))

(assert (= (and b!1203896 res!801123) b!1203898))

(assert (= (and b!1203898 res!801126) b!1203903))

(assert (= (and b!1203903 res!801130) b!1203902))

(assert (= (and b!1203902 res!801121) b!1203911))

(assert (= (and b!1203911 res!801118) b!1203906))

(assert (= (and b!1203906 res!801119) b!1203920))

(assert (= (and b!1203920 res!801131) b!1203919))

(assert (= (and b!1203919 (not res!801129)) b!1203901))

(assert (= (and b!1203901 (not res!801124)) b!1203914))

(assert (= (and b!1203914 c!117924) b!1203895))

(assert (= (and b!1203914 (not c!117924)) b!1203913))

(assert (= (or b!1203895 b!1203913) bm!58103))

(assert (= (or b!1203895 b!1203913) bm!58106))

(assert (= (and b!1203914 (not res!801122)) b!1203909))

(assert (= (and b!1203909 (not res!801125)) b!1203907))

(assert (= (and b!1203907 c!117923) b!1203905))

(assert (= (and b!1203907 (not c!117923)) b!1203912))

(assert (= (and b!1203912 c!117922) b!1203910))

(assert (= (and b!1203912 (not c!117922)) b!1203917))

(assert (= (and b!1203917 c!117925) b!1203918))

(assert (= (and b!1203917 (not c!117925)) b!1203899))

(assert (= (or b!1203910 b!1203918) bm!58108))

(assert (= (or b!1203910 b!1203918) bm!58109))

(assert (= (or b!1203910 b!1203918) bm!58110))

(assert (= (or b!1203905 bm!58110) bm!58104))

(assert (= (or b!1203905 bm!58108) bm!58107))

(assert (= (or b!1203905 bm!58109) bm!58105))

(assert (= (and b!1203907 (not res!801117)) b!1203900))

(assert (= (and b!1203916 condMapEmpty!47760) mapIsEmpty!47760))

(assert (= (and b!1203916 (not condMapEmpty!47760)) mapNonEmpty!47760))

(get-info :version)

(assert (= (and mapNonEmpty!47760 ((_ is ValueCellFull!14595) mapValue!47760)) b!1203915))

(assert (= (and b!1203916 ((_ is ValueCellFull!14595) mapDefault!47760)) b!1203908))

(assert (= start!100680 b!1203916))

(declare-fun b_lambda!21201 () Bool)

(assert (=> (not b_lambda!21201) (not b!1203901)))

(declare-fun t!39548 () Bool)

(declare-fun tb!10713 () Bool)

(assert (=> (and start!100680 (= defaultEntry!1004 defaultEntry!1004) t!39548) tb!10713))

(declare-fun result!21997 () Bool)

(assert (=> tb!10713 (= result!21997 tp_is_empty!30609)))

(assert (=> b!1203901 t!39548))

(declare-fun b_and!42753 () Bool)

(assert (= b_and!42751 (and (=> t!39548 result!21997) b_and!42753)))

(declare-fun m!1109939 () Bool)

(assert (=> b!1203919 m!1109939))

(declare-fun m!1109941 () Bool)

(assert (=> b!1203919 m!1109941))

(declare-fun m!1109943 () Bool)

(assert (=> b!1203906 m!1109943))

(declare-fun m!1109945 () Bool)

(assert (=> b!1203906 m!1109945))

(declare-fun m!1109947 () Bool)

(assert (=> b!1203902 m!1109947))

(declare-fun m!1109949 () Bool)

(assert (=> mapNonEmpty!47760 m!1109949))

(declare-fun m!1109951 () Bool)

(assert (=> start!100680 m!1109951))

(declare-fun m!1109953 () Bool)

(assert (=> start!100680 m!1109953))

(declare-fun m!1109955 () Bool)

(assert (=> b!1203909 m!1109955))

(declare-fun m!1109957 () Bool)

(assert (=> b!1203909 m!1109957))

(declare-fun m!1109959 () Bool)

(assert (=> bm!58106 m!1109959))

(declare-fun m!1109961 () Bool)

(assert (=> b!1203911 m!1109961))

(declare-fun m!1109963 () Bool)

(assert (=> b!1203900 m!1109963))

(assert (=> b!1203900 m!1109963))

(declare-fun m!1109965 () Bool)

(assert (=> b!1203900 m!1109965))

(declare-fun m!1109967 () Bool)

(assert (=> bm!58107 m!1109967))

(declare-fun m!1109969 () Bool)

(assert (=> bm!58104 m!1109969))

(declare-fun m!1109971 () Bool)

(assert (=> b!1203920 m!1109971))

(declare-fun m!1109973 () Bool)

(assert (=> b!1203896 m!1109973))

(declare-fun m!1109975 () Bool)

(assert (=> b!1203904 m!1109975))

(declare-fun m!1109977 () Bool)

(assert (=> bm!58105 m!1109977))

(declare-fun m!1109979 () Bool)

(assert (=> b!1203905 m!1109979))

(declare-fun m!1109981 () Bool)

(assert (=> b!1203905 m!1109981))

(declare-fun m!1109983 () Bool)

(assert (=> b!1203905 m!1109983))

(declare-fun m!1109985 () Bool)

(assert (=> b!1203895 m!1109985))

(assert (=> bm!58103 m!1109957))

(declare-fun m!1109987 () Bool)

(assert (=> b!1203914 m!1109987))

(declare-fun m!1109989 () Bool)

(assert (=> b!1203914 m!1109989))

(declare-fun m!1109991 () Bool)

(assert (=> b!1203901 m!1109991))

(declare-fun m!1109993 () Bool)

(assert (=> b!1203901 m!1109993))

(declare-fun m!1109995 () Bool)

(assert (=> b!1203901 m!1109995))

(declare-fun m!1109997 () Bool)

(assert (=> b!1203901 m!1109997))

(declare-fun m!1109999 () Bool)

(assert (=> b!1203898 m!1109999))

(check-sat (not b!1203898) (not b!1203902) (not bm!58103) (not b!1203919) (not b!1203914) (not b!1203901) (not start!100680) (not b_lambda!21201) (not bm!58107) (not bm!58105) (not b!1203900) (not bm!58106) (not b!1203920) (not bm!58104) tp_is_empty!30609 (not b_next!25905) (not b!1203896) (not b!1203909) b_and!42753 (not b!1203904) (not mapNonEmpty!47760) (not b!1203905) (not b!1203895) (not b!1203906))
(check-sat b_and!42753 (not b_next!25905))
(get-model)

(declare-fun b_lambda!21205 () Bool)

(assert (= b_lambda!21201 (or (and start!100680 b_free!25905) b_lambda!21205)))

(check-sat (not b!1203898) (not bm!58107) (not b!1203902) (not bm!58103) (not b_lambda!21205) (not b!1203919) (not b!1203914) (not b!1203901) (not start!100680) (not bm!58105) (not b!1203900) (not bm!58106) (not b!1203920) (not bm!58104) tp_is_empty!30609 (not b_next!25905) (not b!1203896) (not b!1203909) b_and!42753 (not b!1203904) (not mapNonEmpty!47760) (not b!1203905) (not b!1203895) (not b!1203906))
(check-sat b_and!42753 (not b_next!25905))
(get-model)

(declare-fun b!1204011 () Bool)

(declare-fun e!683748 () Bool)

(declare-fun e!683750 () Bool)

(assert (=> b!1204011 (= e!683748 e!683750)))

(declare-fun lt!545874 () (_ BitVec 64))

(assert (=> b!1204011 (= lt!545874 (select (arr!37625 lt!545823) #b00000000000000000000000000000000))))

(declare-fun lt!545872 () Unit!39844)

(assert (=> b!1204011 (= lt!545872 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!545823 lt!545874 #b00000000000000000000000000000000))))

(assert (=> b!1204011 (arrayContainsKey!0 lt!545823 lt!545874 #b00000000000000000000000000000000)))

(declare-fun lt!545873 () Unit!39844)

(assert (=> b!1204011 (= lt!545873 lt!545872)))

(declare-fun res!801182 () Bool)

(declare-datatypes ((SeekEntryResult!9931 0))(
  ( (MissingZero!9931 (index!42094 (_ BitVec 32))) (Found!9931 (index!42095 (_ BitVec 32))) (Intermediate!9931 (undefined!10743 Bool) (index!42096 (_ BitVec 32)) (x!106384 (_ BitVec 32))) (Undefined!9931) (MissingVacant!9931 (index!42097 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!77970 (_ BitVec 32)) SeekEntryResult!9931)

(assert (=> b!1204011 (= res!801182 (= (seekEntryOrOpen!0 (select (arr!37625 lt!545823) #b00000000000000000000000000000000) lt!545823 mask!1564) (Found!9931 #b00000000000000000000000000000000)))))

(assert (=> b!1204011 (=> (not res!801182) (not e!683750))))

(declare-fun b!1204012 () Bool)

(declare-fun call!58140 () Bool)

(assert (=> b!1204012 (= e!683750 call!58140)))

(declare-fun bm!58137 () Bool)

(assert (=> bm!58137 (= call!58140 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!545823 mask!1564))))

(declare-fun b!1204013 () Bool)

(declare-fun e!683749 () Bool)

(assert (=> b!1204013 (= e!683749 e!683748)))

(declare-fun c!117940 () Bool)

(assert (=> b!1204013 (= c!117940 (validKeyInArray!0 (select (arr!37625 lt!545823) #b00000000000000000000000000000000)))))

(declare-fun d!132661 () Bool)

(declare-fun res!801181 () Bool)

(assert (=> d!132661 (=> res!801181 e!683749)))

(assert (=> d!132661 (= res!801181 (bvsge #b00000000000000000000000000000000 (size!38162 lt!545823)))))

(assert (=> d!132661 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!545823 mask!1564) e!683749)))

(declare-fun b!1204014 () Bool)

(assert (=> b!1204014 (= e!683748 call!58140)))

(assert (= (and d!132661 (not res!801181)) b!1204013))

(assert (= (and b!1204013 c!117940) b!1204011))

(assert (= (and b!1204013 (not c!117940)) b!1204014))

(assert (= (and b!1204011 res!801182) b!1204012))

(assert (= (or b!1204012 b!1204014) bm!58137))

(declare-fun m!1110063 () Bool)

(assert (=> b!1204011 m!1110063))

(declare-fun m!1110065 () Bool)

(assert (=> b!1204011 m!1110065))

(declare-fun m!1110067 () Bool)

(assert (=> b!1204011 m!1110067))

(assert (=> b!1204011 m!1110063))

(declare-fun m!1110069 () Bool)

(assert (=> b!1204011 m!1110069))

(declare-fun m!1110071 () Bool)

(assert (=> bm!58137 m!1110071))

(assert (=> b!1204013 m!1110063))

(assert (=> b!1204013 m!1110063))

(declare-fun m!1110073 () Bool)

(assert (=> b!1204013 m!1110073))

(assert (=> b!1203906 d!132661))

(declare-fun b!1204039 () Bool)

(declare-fun e!683768 () ListLongMap!17811)

(declare-fun e!683771 () ListLongMap!17811)

(assert (=> b!1204039 (= e!683768 e!683771)))

(declare-fun c!117950 () Bool)

(assert (=> b!1204039 (= c!117950 (validKeyInArray!0 (select (arr!37625 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(declare-fun b!1204040 () Bool)

(declare-fun lt!545892 () Unit!39844)

(declare-fun lt!545889 () Unit!39844)

(assert (=> b!1204040 (= lt!545892 lt!545889)))

(declare-fun lt!545891 () (_ BitVec 64))

(declare-fun lt!545895 () V!45939)

(declare-fun lt!545893 () (_ BitVec 64))

(declare-fun lt!545894 () ListLongMap!17811)

(assert (=> b!1204040 (not (contains!6921 (+!3955 lt!545894 (tuple2!19831 lt!545893 lt!545895)) lt!545891))))

(declare-fun addStillNotContains!291 (ListLongMap!17811 (_ BitVec 64) V!45939 (_ BitVec 64)) Unit!39844)

(assert (=> b!1204040 (= lt!545889 (addStillNotContains!291 lt!545894 lt!545893 lt!545895 lt!545891))))

(assert (=> b!1204040 (= lt!545891 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun get!19221 (ValueCell!14595 V!45939) V!45939)

(assert (=> b!1204040 (= lt!545895 (get!19221 (select (arr!37626 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3253 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1204040 (= lt!545893 (select (arr!37625 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun call!58143 () ListLongMap!17811)

(assert (=> b!1204040 (= lt!545894 call!58143)))

(assert (=> b!1204040 (= e!683771 (+!3955 call!58143 (tuple2!19831 (select (arr!37625 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19221 (select (arr!37626 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3253 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun d!132663 () Bool)

(declare-fun e!683765 () Bool)

(assert (=> d!132663 e!683765))

(declare-fun res!801192 () Bool)

(assert (=> d!132663 (=> (not res!801192) (not e!683765))))

(declare-fun lt!545890 () ListLongMap!17811)

(assert (=> d!132663 (= res!801192 (not (contains!6921 lt!545890 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!132663 (= lt!545890 e!683768)))

(declare-fun c!117949 () Bool)

(assert (=> d!132663 (= c!117949 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!38162 _keys!1208)))))

(assert (=> d!132663 (validMask!0 mask!1564)))

(assert (=> d!132663 (= (getCurrentListMapNoExtraKeys!5331 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!545890)))

(declare-fun b!1204041 () Bool)

(declare-fun e!683770 () Bool)

(declare-fun e!683769 () Bool)

(assert (=> b!1204041 (= e!683770 e!683769)))

(declare-fun c!117951 () Bool)

(assert (=> b!1204041 (= c!117951 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38162 _keys!1208)))))

(declare-fun b!1204042 () Bool)

(assert (=> b!1204042 (= e!683769 (= lt!545890 (getCurrentListMapNoExtraKeys!5331 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1204043 () Bool)

(declare-fun isEmpty!986 (ListLongMap!17811) Bool)

(assert (=> b!1204043 (= e!683769 (isEmpty!986 lt!545890))))

(declare-fun b!1204044 () Bool)

(assert (=> b!1204044 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38162 _keys!1208)))))

(assert (=> b!1204044 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38163 _values!996)))))

(declare-fun e!683767 () Bool)

(declare-fun apply!996 (ListLongMap!17811 (_ BitVec 64)) V!45939)

(assert (=> b!1204044 (= e!683767 (= (apply!996 lt!545890 (select (arr!37625 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))) (get!19221 (select (arr!37626 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3253 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1204045 () Bool)

(assert (=> b!1204045 (= e!683770 e!683767)))

(assert (=> b!1204045 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38162 _keys!1208)))))

(declare-fun res!801193 () Bool)

(assert (=> b!1204045 (= res!801193 (contains!6921 lt!545890 (select (arr!37625 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1204045 (=> (not res!801193) (not e!683767))))

(declare-fun b!1204046 () Bool)

(declare-fun res!801191 () Bool)

(assert (=> b!1204046 (=> (not res!801191) (not e!683765))))

(assert (=> b!1204046 (= res!801191 (not (contains!6921 lt!545890 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1204047 () Bool)

(assert (=> b!1204047 (= e!683771 call!58143)))

(declare-fun b!1204048 () Bool)

(assert (=> b!1204048 (= e!683768 (ListLongMap!17812 Nil!26654))))

(declare-fun bm!58140 () Bool)

(assert (=> bm!58140 (= call!58143 (getCurrentListMapNoExtraKeys!5331 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1204049 () Bool)

(declare-fun e!683766 () Bool)

(assert (=> b!1204049 (= e!683766 (validKeyInArray!0 (select (arr!37625 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1204049 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))

(declare-fun b!1204050 () Bool)

(assert (=> b!1204050 (= e!683765 e!683770)))

(declare-fun c!117952 () Bool)

(assert (=> b!1204050 (= c!117952 e!683766)))

(declare-fun res!801194 () Bool)

(assert (=> b!1204050 (=> (not res!801194) (not e!683766))))

(assert (=> b!1204050 (= res!801194 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38162 _keys!1208)))))

(assert (= (and d!132663 c!117949) b!1204048))

(assert (= (and d!132663 (not c!117949)) b!1204039))

(assert (= (and b!1204039 c!117950) b!1204040))

(assert (= (and b!1204039 (not c!117950)) b!1204047))

(assert (= (or b!1204040 b!1204047) bm!58140))

(assert (= (and d!132663 res!801192) b!1204046))

(assert (= (and b!1204046 res!801191) b!1204050))

(assert (= (and b!1204050 res!801194) b!1204049))

(assert (= (and b!1204050 c!117952) b!1204045))

(assert (= (and b!1204050 (not c!117952)) b!1204041))

(assert (= (and b!1204045 res!801193) b!1204044))

(assert (= (and b!1204041 c!117951) b!1204042))

(assert (= (and b!1204041 (not c!117951)) b!1204043))

(declare-fun b_lambda!21207 () Bool)

(assert (=> (not b_lambda!21207) (not b!1204040)))

(assert (=> b!1204040 t!39548))

(declare-fun b_and!42759 () Bool)

(assert (= b_and!42753 (and (=> t!39548 result!21997) b_and!42759)))

(declare-fun b_lambda!21209 () Bool)

(assert (=> (not b_lambda!21209) (not b!1204044)))

(assert (=> b!1204044 t!39548))

(declare-fun b_and!42761 () Bool)

(assert (= b_and!42759 (and (=> t!39548 result!21997) b_and!42761)))

(declare-fun m!1110075 () Bool)

(assert (=> d!132663 m!1110075))

(assert (=> d!132663 m!1109975))

(declare-fun m!1110077 () Bool)

(assert (=> b!1204046 m!1110077))

(declare-fun m!1110079 () Bool)

(assert (=> b!1204043 m!1110079))

(declare-fun m!1110081 () Bool)

(assert (=> b!1204040 m!1110081))

(declare-fun m!1110083 () Bool)

(assert (=> b!1204040 m!1110083))

(declare-fun m!1110085 () Bool)

(assert (=> b!1204040 m!1110085))

(declare-fun m!1110087 () Bool)

(assert (=> b!1204040 m!1110087))

(assert (=> b!1204040 m!1109993))

(declare-fun m!1110089 () Bool)

(assert (=> b!1204040 m!1110089))

(assert (=> b!1204040 m!1109993))

(assert (=> b!1204040 m!1110083))

(declare-fun m!1110091 () Bool)

(assert (=> b!1204040 m!1110091))

(assert (=> b!1204040 m!1110087))

(declare-fun m!1110093 () Bool)

(assert (=> b!1204040 m!1110093))

(declare-fun m!1110095 () Bool)

(assert (=> b!1204042 m!1110095))

(assert (=> b!1204039 m!1110085))

(assert (=> b!1204039 m!1110085))

(declare-fun m!1110097 () Bool)

(assert (=> b!1204039 m!1110097))

(assert (=> b!1204045 m!1110085))

(assert (=> b!1204045 m!1110085))

(declare-fun m!1110099 () Bool)

(assert (=> b!1204045 m!1110099))

(assert (=> bm!58140 m!1110095))

(assert (=> b!1204049 m!1110085))

(assert (=> b!1204049 m!1110085))

(assert (=> b!1204049 m!1110097))

(assert (=> b!1204044 m!1110085))

(declare-fun m!1110101 () Bool)

(assert (=> b!1204044 m!1110101))

(assert (=> b!1204044 m!1110087))

(assert (=> b!1204044 m!1110085))

(assert (=> b!1204044 m!1110087))

(assert (=> b!1204044 m!1109993))

(assert (=> b!1204044 m!1110089))

(assert (=> b!1204044 m!1109993))

(assert (=> bm!58103 d!132663))

(declare-fun b!1204057 () Bool)

(declare-fun e!683777 () Bool)

(declare-fun e!683776 () Bool)

(assert (=> b!1204057 (= e!683777 e!683776)))

(declare-fun c!117955 () Bool)

(assert (=> b!1204057 (= c!117955 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun b!1204058 () Bool)

(declare-fun call!58148 () ListLongMap!17811)

(declare-fun call!58149 () ListLongMap!17811)

(assert (=> b!1204058 (= e!683776 (= call!58148 call!58149))))

(assert (=> b!1204058 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38163 _values!996)))))

(declare-fun b!1204059 () Bool)

(assert (=> b!1204059 (= e!683776 (= call!58148 (-!1837 call!58149 k0!934)))))

(assert (=> b!1204059 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38163 _values!996)))))

(declare-fun bm!58145 () Bool)

(assert (=> bm!58145 (= call!58149 (getCurrentListMapNoExtraKeys!5331 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun d!132665 () Bool)

(assert (=> d!132665 e!683777))

(declare-fun res!801197 () Bool)

(assert (=> d!132665 (=> (not res!801197) (not e!683777))))

(assert (=> d!132665 (= res!801197 (and (or (not (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673)) (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38162 _keys!1208)))) (or (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673) (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38162 _keys!1208))))))))

(declare-fun lt!545898 () Unit!39844)

(declare-fun choose!1797 (array!77970 array!77972 (_ BitVec 32) (_ BitVec 32) V!45939 V!45939 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39844)

(assert (=> d!132665 (= lt!545898 (choose!1797 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> d!132665 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1455) (size!38162 _keys!1208)))))

(assert (=> d!132665 (= (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1041 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!545898)))

(declare-fun bm!58146 () Bool)

(assert (=> bm!58146 (= call!58148 (getCurrentListMapNoExtraKeys!5331 (array!77971 (store (arr!37625 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38162 _keys!1208)) (array!77973 (store (arr!37626 _values!996) i!673 (ValueCellFull!14595 (dynLambda!3253 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38163 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (= (and d!132665 res!801197) b!1204057))

(assert (= (and b!1204057 c!117955) b!1204059))

(assert (= (and b!1204057 (not c!117955)) b!1204058))

(assert (= (or b!1204059 b!1204058) bm!58145))

(assert (= (or b!1204059 b!1204058) bm!58146))

(declare-fun b_lambda!21211 () Bool)

(assert (=> (not b_lambda!21211) (not bm!58146)))

(assert (=> bm!58146 t!39548))

(declare-fun b_and!42763 () Bool)

(assert (= b_and!42761 (and (=> t!39548 result!21997) b_and!42763)))

(declare-fun m!1110103 () Bool)

(assert (=> b!1204059 m!1110103))

(assert (=> bm!58145 m!1109957))

(declare-fun m!1110105 () Bool)

(assert (=> d!132665 m!1110105))

(assert (=> bm!58146 m!1109945))

(assert (=> bm!58146 m!1109993))

(assert (=> bm!58146 m!1109995))

(declare-fun m!1110107 () Bool)

(assert (=> bm!58146 m!1110107))

(assert (=> b!1203914 d!132665))

(declare-fun d!132667 () Bool)

(declare-fun e!683783 () Bool)

(assert (=> d!132667 e!683783))

(declare-fun res!801200 () Bool)

(assert (=> d!132667 (=> res!801200 e!683783)))

(declare-fun lt!545907 () Bool)

(assert (=> d!132667 (= res!801200 (not lt!545907))))

(declare-fun lt!545910 () Bool)

(assert (=> d!132667 (= lt!545907 lt!545910)))

(declare-fun lt!545908 () Unit!39844)

(declare-fun e!683782 () Unit!39844)

(assert (=> d!132667 (= lt!545908 e!683782)))

(declare-fun c!117958 () Bool)

(assert (=> d!132667 (= c!117958 lt!545910)))

(declare-fun containsKey!589 (List!26657 (_ BitVec 64)) Bool)

(assert (=> d!132667 (= lt!545910 (containsKey!589 (toList!8921 lt!545821) k0!934))))

(assert (=> d!132667 (= (contains!6921 lt!545821 k0!934) lt!545907)))

(declare-fun b!1204066 () Bool)

(declare-fun lt!545909 () Unit!39844)

(assert (=> b!1204066 (= e!683782 lt!545909)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!418 (List!26657 (_ BitVec 64)) Unit!39844)

(assert (=> b!1204066 (= lt!545909 (lemmaContainsKeyImpliesGetValueByKeyDefined!418 (toList!8921 lt!545821) k0!934))))

(declare-datatypes ((Option!686 0))(
  ( (Some!685 (v!18005 V!45939)) (None!684) )
))
(declare-fun isDefined!458 (Option!686) Bool)

(declare-fun getValueByKey!635 (List!26657 (_ BitVec 64)) Option!686)

(assert (=> b!1204066 (isDefined!458 (getValueByKey!635 (toList!8921 lt!545821) k0!934))))

(declare-fun b!1204067 () Bool)

(declare-fun Unit!39850 () Unit!39844)

(assert (=> b!1204067 (= e!683782 Unit!39850)))

(declare-fun b!1204068 () Bool)

(assert (=> b!1204068 (= e!683783 (isDefined!458 (getValueByKey!635 (toList!8921 lt!545821) k0!934)))))

(assert (= (and d!132667 c!117958) b!1204066))

(assert (= (and d!132667 (not c!117958)) b!1204067))

(assert (= (and d!132667 (not res!801200)) b!1204068))

(declare-fun m!1110109 () Bool)

(assert (=> d!132667 m!1110109))

(declare-fun m!1110111 () Bool)

(assert (=> b!1204066 m!1110111))

(declare-fun m!1110113 () Bool)

(assert (=> b!1204066 m!1110113))

(assert (=> b!1204066 m!1110113))

(declare-fun m!1110115 () Bool)

(assert (=> b!1204066 m!1110115))

(assert (=> b!1204068 m!1110113))

(assert (=> b!1204068 m!1110113))

(assert (=> b!1204068 m!1110115))

(assert (=> b!1203909 d!132667))

(assert (=> b!1203909 d!132663))

(declare-fun d!132669 () Bool)

(declare-fun e!683785 () Bool)

(assert (=> d!132669 e!683785))

(declare-fun res!801201 () Bool)

(assert (=> d!132669 (=> res!801201 e!683785)))

(declare-fun lt!545911 () Bool)

(assert (=> d!132669 (= res!801201 (not lt!545911))))

(declare-fun lt!545914 () Bool)

(assert (=> d!132669 (= lt!545911 lt!545914)))

(declare-fun lt!545912 () Unit!39844)

(declare-fun e!683784 () Unit!39844)

(assert (=> d!132669 (= lt!545912 e!683784)))

(declare-fun c!117959 () Bool)

(assert (=> d!132669 (= c!117959 lt!545914)))

(assert (=> d!132669 (= lt!545914 (containsKey!589 (toList!8921 (ite c!117923 lt!545812 call!58111)) k0!934))))

(assert (=> d!132669 (= (contains!6921 (ite c!117923 lt!545812 call!58111) k0!934) lt!545911)))

(declare-fun b!1204069 () Bool)

(declare-fun lt!545913 () Unit!39844)

(assert (=> b!1204069 (= e!683784 lt!545913)))

(assert (=> b!1204069 (= lt!545913 (lemmaContainsKeyImpliesGetValueByKeyDefined!418 (toList!8921 (ite c!117923 lt!545812 call!58111)) k0!934))))

(assert (=> b!1204069 (isDefined!458 (getValueByKey!635 (toList!8921 (ite c!117923 lt!545812 call!58111)) k0!934))))

(declare-fun b!1204070 () Bool)

(declare-fun Unit!39851 () Unit!39844)

(assert (=> b!1204070 (= e!683784 Unit!39851)))

(declare-fun b!1204071 () Bool)

(assert (=> b!1204071 (= e!683785 (isDefined!458 (getValueByKey!635 (toList!8921 (ite c!117923 lt!545812 call!58111)) k0!934)))))

(assert (= (and d!132669 c!117959) b!1204069))

(assert (= (and d!132669 (not c!117959)) b!1204070))

(assert (= (and d!132669 (not res!801201)) b!1204071))

(declare-fun m!1110117 () Bool)

(assert (=> d!132669 m!1110117))

(declare-fun m!1110119 () Bool)

(assert (=> b!1204069 m!1110119))

(declare-fun m!1110121 () Bool)

(assert (=> b!1204069 m!1110121))

(assert (=> b!1204069 m!1110121))

(declare-fun m!1110123 () Bool)

(assert (=> b!1204069 m!1110123))

(assert (=> b!1204071 m!1110121))

(assert (=> b!1204071 m!1110121))

(assert (=> b!1204071 m!1110123))

(assert (=> bm!58104 d!132669))

(declare-fun d!132671 () Bool)

(declare-fun e!683787 () Bool)

(assert (=> d!132671 e!683787))

(declare-fun res!801202 () Bool)

(assert (=> d!132671 (=> res!801202 e!683787)))

(declare-fun lt!545915 () Bool)

(assert (=> d!132671 (= res!801202 (not lt!545915))))

(declare-fun lt!545918 () Bool)

(assert (=> d!132671 (= lt!545915 lt!545918)))

(declare-fun lt!545916 () Unit!39844)

(declare-fun e!683786 () Unit!39844)

(assert (=> d!132671 (= lt!545916 e!683786)))

(declare-fun c!117960 () Bool)

(assert (=> d!132671 (= c!117960 lt!545918)))

(assert (=> d!132671 (= lt!545918 (containsKey!589 (toList!8921 (getCurrentListMap!4454 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)) k0!934))))

(assert (=> d!132671 (= (contains!6921 (getCurrentListMap!4454 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934) lt!545915)))

(declare-fun b!1204072 () Bool)

(declare-fun lt!545917 () Unit!39844)

(assert (=> b!1204072 (= e!683786 lt!545917)))

(assert (=> b!1204072 (= lt!545917 (lemmaContainsKeyImpliesGetValueByKeyDefined!418 (toList!8921 (getCurrentListMap!4454 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)) k0!934))))

(assert (=> b!1204072 (isDefined!458 (getValueByKey!635 (toList!8921 (getCurrentListMap!4454 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)) k0!934))))

(declare-fun b!1204073 () Bool)

(declare-fun Unit!39852 () Unit!39844)

(assert (=> b!1204073 (= e!683786 Unit!39852)))

(declare-fun b!1204074 () Bool)

(assert (=> b!1204074 (= e!683787 (isDefined!458 (getValueByKey!635 (toList!8921 (getCurrentListMap!4454 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)) k0!934)))))

(assert (= (and d!132671 c!117960) b!1204072))

(assert (= (and d!132671 (not c!117960)) b!1204073))

(assert (= (and d!132671 (not res!801202)) b!1204074))

(declare-fun m!1110125 () Bool)

(assert (=> d!132671 m!1110125))

(declare-fun m!1110127 () Bool)

(assert (=> b!1204072 m!1110127))

(declare-fun m!1110129 () Bool)

(assert (=> b!1204072 m!1110129))

(assert (=> b!1204072 m!1110129))

(declare-fun m!1110131 () Bool)

(assert (=> b!1204072 m!1110131))

(assert (=> b!1204074 m!1110129))

(assert (=> b!1204074 m!1110129))

(assert (=> b!1204074 m!1110131))

(assert (=> b!1203900 d!132671))

(declare-fun b!1204117 () Bool)

(declare-fun c!117973 () Bool)

(assert (=> b!1204117 (= c!117973 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!683819 () ListLongMap!17811)

(declare-fun e!683817 () ListLongMap!17811)

(assert (=> b!1204117 (= e!683819 e!683817)))

(declare-fun b!1204118 () Bool)

(declare-fun e!683826 () Bool)

(declare-fun lt!545971 () ListLongMap!17811)

(assert (=> b!1204118 (= e!683826 (= (apply!996 lt!545971 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!944))))

(declare-fun b!1204120 () Bool)

(declare-fun res!801226 () Bool)

(declare-fun e!683816 () Bool)

(assert (=> b!1204120 (=> (not res!801226) (not e!683816))))

(declare-fun e!683825 () Bool)

(assert (=> b!1204120 (= res!801226 e!683825)))

(declare-fun c!117978 () Bool)

(assert (=> b!1204120 (= c!117978 (not (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1204121 () Bool)

(declare-fun e!683821 () Bool)

(assert (=> b!1204121 (= e!683821 (validKeyInArray!0 (select (arr!37625 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(declare-fun b!1204122 () Bool)

(declare-fun e!683822 () Bool)

(assert (=> b!1204122 (= e!683825 e!683822)))

(declare-fun res!801229 () Bool)

(declare-fun call!58167 () Bool)

(assert (=> b!1204122 (= res!801229 call!58167)))

(assert (=> b!1204122 (=> (not res!801229) (not e!683822))))

(declare-fun b!1204123 () Bool)

(declare-fun call!58165 () ListLongMap!17811)

(assert (=> b!1204123 (= e!683817 call!58165)))

(declare-fun b!1204124 () Bool)

(assert (=> b!1204124 (= e!683825 (not call!58167))))

(declare-fun bm!58161 () Bool)

(declare-fun call!58169 () ListLongMap!17811)

(assert (=> bm!58161 (= call!58165 call!58169)))

(declare-fun b!1204125 () Bool)

(declare-fun e!683818 () Bool)

(assert (=> b!1204125 (= e!683818 (validKeyInArray!0 (select (arr!37625 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(declare-fun b!1204126 () Bool)

(assert (=> b!1204126 (= e!683822 (= (apply!996 lt!545971 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!944))))

(declare-fun b!1204127 () Bool)

(declare-fun res!801227 () Bool)

(assert (=> b!1204127 (=> (not res!801227) (not e!683816))))

(declare-fun e!683815 () Bool)

(assert (=> b!1204127 (= res!801227 e!683815)))

(declare-fun res!801228 () Bool)

(assert (=> b!1204127 (=> res!801228 e!683815)))

(assert (=> b!1204127 (= res!801228 (not e!683821))))

(declare-fun res!801225 () Bool)

(assert (=> b!1204127 (=> (not res!801225) (not e!683821))))

(assert (=> b!1204127 (= res!801225 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38162 _keys!1208)))))

(declare-fun bm!58162 () Bool)

(declare-fun call!58170 () ListLongMap!17811)

(assert (=> bm!58162 (= call!58169 call!58170)))

(declare-fun c!117976 () Bool)

(declare-fun bm!58163 () Bool)

(declare-fun call!58166 () ListLongMap!17811)

(declare-fun c!117977 () Bool)

(assert (=> bm!58163 (= call!58166 (+!3955 (ite c!117976 call!58170 (ite c!117977 call!58169 call!58165)) (ite (or c!117976 c!117977) (tuple2!19831 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19831 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1204128 () Bool)

(declare-fun e!683820 () ListLongMap!17811)

(assert (=> b!1204128 (= e!683820 (+!3955 call!58166 (tuple2!19831 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))

(declare-fun b!1204129 () Bool)

(declare-fun e!683824 () Bool)

(assert (=> b!1204129 (= e!683824 e!683826)))

(declare-fun res!801223 () Bool)

(declare-fun call!58164 () Bool)

(assert (=> b!1204129 (= res!801223 call!58164)))

(assert (=> b!1204129 (=> (not res!801223) (not e!683826))))

(declare-fun b!1204130 () Bool)

(assert (=> b!1204130 (= e!683816 e!683824)))

(declare-fun c!117974 () Bool)

(assert (=> b!1204130 (= c!117974 (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!58164 () Bool)

(assert (=> bm!58164 (= call!58167 (contains!6921 lt!545971 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1204131 () Bool)

(declare-fun call!58168 () ListLongMap!17811)

(assert (=> b!1204131 (= e!683819 call!58168)))

(declare-fun b!1204132 () Bool)

(declare-fun e!683823 () Unit!39844)

(declare-fun lt!545978 () Unit!39844)

(assert (=> b!1204132 (= e!683823 lt!545978)))

(declare-fun lt!545980 () ListLongMap!17811)

(assert (=> b!1204132 (= lt!545980 (getCurrentListMapNoExtraKeys!5331 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!545967 () (_ BitVec 64))

(assert (=> b!1204132 (= lt!545967 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!545963 () (_ BitVec 64))

(assert (=> b!1204132 (= lt!545963 (select (arr!37625 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun lt!545972 () Unit!39844)

(assert (=> b!1204132 (= lt!545972 (addStillContains!1019 lt!545980 lt!545967 zeroValue!944 lt!545963))))

(assert (=> b!1204132 (contains!6921 (+!3955 lt!545980 (tuple2!19831 lt!545967 zeroValue!944)) lt!545963)))

(declare-fun lt!545974 () Unit!39844)

(assert (=> b!1204132 (= lt!545974 lt!545972)))

(declare-fun lt!545983 () ListLongMap!17811)

(assert (=> b!1204132 (= lt!545983 (getCurrentListMapNoExtraKeys!5331 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!545964 () (_ BitVec 64))

(assert (=> b!1204132 (= lt!545964 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!545969 () (_ BitVec 64))

(assert (=> b!1204132 (= lt!545969 (select (arr!37625 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun lt!545977 () Unit!39844)

(declare-fun addApplyDifferent!524 (ListLongMap!17811 (_ BitVec 64) V!45939 (_ BitVec 64)) Unit!39844)

(assert (=> b!1204132 (= lt!545977 (addApplyDifferent!524 lt!545983 lt!545964 minValue!944 lt!545969))))

(assert (=> b!1204132 (= (apply!996 (+!3955 lt!545983 (tuple2!19831 lt!545964 minValue!944)) lt!545969) (apply!996 lt!545983 lt!545969))))

(declare-fun lt!545979 () Unit!39844)

(assert (=> b!1204132 (= lt!545979 lt!545977)))

(declare-fun lt!545975 () ListLongMap!17811)

(assert (=> b!1204132 (= lt!545975 (getCurrentListMapNoExtraKeys!5331 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!545966 () (_ BitVec 64))

(assert (=> b!1204132 (= lt!545966 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!545976 () (_ BitVec 64))

(assert (=> b!1204132 (= lt!545976 (select (arr!37625 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun lt!545981 () Unit!39844)

(assert (=> b!1204132 (= lt!545981 (addApplyDifferent!524 lt!545975 lt!545966 zeroValue!944 lt!545976))))

(assert (=> b!1204132 (= (apply!996 (+!3955 lt!545975 (tuple2!19831 lt!545966 zeroValue!944)) lt!545976) (apply!996 lt!545975 lt!545976))))

(declare-fun lt!545970 () Unit!39844)

(assert (=> b!1204132 (= lt!545970 lt!545981)))

(declare-fun lt!545984 () ListLongMap!17811)

(assert (=> b!1204132 (= lt!545984 (getCurrentListMapNoExtraKeys!5331 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!545965 () (_ BitVec 64))

(assert (=> b!1204132 (= lt!545965 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!545973 () (_ BitVec 64))

(assert (=> b!1204132 (= lt!545973 (select (arr!37625 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1204132 (= lt!545978 (addApplyDifferent!524 lt!545984 lt!545965 minValue!944 lt!545973))))

(assert (=> b!1204132 (= (apply!996 (+!3955 lt!545984 (tuple2!19831 lt!545965 minValue!944)) lt!545973) (apply!996 lt!545984 lt!545973))))

(declare-fun b!1204133 () Bool)

(declare-fun Unit!39853 () Unit!39844)

(assert (=> b!1204133 (= e!683823 Unit!39853)))

(declare-fun b!1204134 () Bool)

(assert (=> b!1204134 (= e!683820 e!683819)))

(assert (=> b!1204134 (= c!117977 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun d!132673 () Bool)

(assert (=> d!132673 e!683816))

(declare-fun res!801224 () Bool)

(assert (=> d!132673 (=> (not res!801224) (not e!683816))))

(assert (=> d!132673 (= res!801224 (or (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!38162 _keys!1208)) (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38162 _keys!1208)))))))

(declare-fun lt!545982 () ListLongMap!17811)

(assert (=> d!132673 (= lt!545971 lt!545982)))

(declare-fun lt!545968 () Unit!39844)

(assert (=> d!132673 (= lt!545968 e!683823)))

(declare-fun c!117975 () Bool)

(assert (=> d!132673 (= c!117975 e!683818)))

(declare-fun res!801222 () Bool)

(assert (=> d!132673 (=> (not res!801222) (not e!683818))))

(assert (=> d!132673 (= res!801222 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38162 _keys!1208)))))

(assert (=> d!132673 (= lt!545982 e!683820)))

(assert (=> d!132673 (= c!117976 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!132673 (validMask!0 mask!1564)))

(assert (=> d!132673 (= (getCurrentListMap!4454 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!545971)))

(declare-fun b!1204119 () Bool)

(declare-fun e!683814 () Bool)

(assert (=> b!1204119 (= e!683815 e!683814)))

(declare-fun res!801221 () Bool)

(assert (=> b!1204119 (=> (not res!801221) (not e!683814))))

(assert (=> b!1204119 (= res!801221 (contains!6921 lt!545971 (select (arr!37625 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1204119 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38162 _keys!1208)))))

(declare-fun bm!58165 () Bool)

(assert (=> bm!58165 (= call!58168 call!58166)))

(declare-fun b!1204135 () Bool)

(assert (=> b!1204135 (= e!683814 (= (apply!996 lt!545971 (select (arr!37625 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))) (get!19221 (select (arr!37626 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3253 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1204135 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38163 _values!996)))))

(assert (=> b!1204135 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38162 _keys!1208)))))

(declare-fun bm!58166 () Bool)

(assert (=> bm!58166 (= call!58164 (contains!6921 lt!545971 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1204136 () Bool)

(assert (=> b!1204136 (= e!683817 call!58168)))

(declare-fun bm!58167 () Bool)

(assert (=> bm!58167 (= call!58170 (getCurrentListMapNoExtraKeys!5331 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1204137 () Bool)

(assert (=> b!1204137 (= e!683824 (not call!58164))))

(assert (= (and d!132673 c!117976) b!1204128))

(assert (= (and d!132673 (not c!117976)) b!1204134))

(assert (= (and b!1204134 c!117977) b!1204131))

(assert (= (and b!1204134 (not c!117977)) b!1204117))

(assert (= (and b!1204117 c!117973) b!1204136))

(assert (= (and b!1204117 (not c!117973)) b!1204123))

(assert (= (or b!1204136 b!1204123) bm!58161))

(assert (= (or b!1204131 bm!58161) bm!58162))

(assert (= (or b!1204131 b!1204136) bm!58165))

(assert (= (or b!1204128 bm!58162) bm!58167))

(assert (= (or b!1204128 bm!58165) bm!58163))

(assert (= (and d!132673 res!801222) b!1204125))

(assert (= (and d!132673 c!117975) b!1204132))

(assert (= (and d!132673 (not c!117975)) b!1204133))

(assert (= (and d!132673 res!801224) b!1204127))

(assert (= (and b!1204127 res!801225) b!1204121))

(assert (= (and b!1204127 (not res!801228)) b!1204119))

(assert (= (and b!1204119 res!801221) b!1204135))

(assert (= (and b!1204127 res!801227) b!1204120))

(assert (= (and b!1204120 c!117978) b!1204122))

(assert (= (and b!1204120 (not c!117978)) b!1204124))

(assert (= (and b!1204122 res!801229) b!1204126))

(assert (= (or b!1204122 b!1204124) bm!58164))

(assert (= (and b!1204120 res!801226) b!1204130))

(assert (= (and b!1204130 c!117974) b!1204129))

(assert (= (and b!1204130 (not c!117974)) b!1204137))

(assert (= (and b!1204129 res!801223) b!1204118))

(assert (= (or b!1204129 b!1204137) bm!58166))

(declare-fun b_lambda!21213 () Bool)

(assert (=> (not b_lambda!21213) (not b!1204135)))

(assert (=> b!1204135 t!39548))

(declare-fun b_and!42765 () Bool)

(assert (= b_and!42763 (and (=> t!39548 result!21997) b_and!42765)))

(assert (=> b!1204121 m!1110085))

(assert (=> b!1204121 m!1110085))

(assert (=> b!1204121 m!1110097))

(declare-fun m!1110133 () Bool)

(assert (=> b!1204132 m!1110133))

(declare-fun m!1110135 () Bool)

(assert (=> b!1204132 m!1110135))

(declare-fun m!1110137 () Bool)

(assert (=> b!1204132 m!1110137))

(declare-fun m!1110139 () Bool)

(assert (=> b!1204132 m!1110139))

(assert (=> b!1204132 m!1110085))

(declare-fun m!1110141 () Bool)

(assert (=> b!1204132 m!1110141))

(declare-fun m!1110143 () Bool)

(assert (=> b!1204132 m!1110143))

(declare-fun m!1110145 () Bool)

(assert (=> b!1204132 m!1110145))

(declare-fun m!1110147 () Bool)

(assert (=> b!1204132 m!1110147))

(assert (=> b!1204132 m!1110137))

(declare-fun m!1110149 () Bool)

(assert (=> b!1204132 m!1110149))

(declare-fun m!1110151 () Bool)

(assert (=> b!1204132 m!1110151))

(declare-fun m!1110153 () Bool)

(assert (=> b!1204132 m!1110153))

(declare-fun m!1110155 () Bool)

(assert (=> b!1204132 m!1110155))

(declare-fun m!1110157 () Bool)

(assert (=> b!1204132 m!1110157))

(assert (=> b!1204132 m!1110153))

(assert (=> b!1204132 m!1110133))

(assert (=> b!1204132 m!1109957))

(assert (=> b!1204132 m!1110139))

(declare-fun m!1110159 () Bool)

(assert (=> b!1204132 m!1110159))

(declare-fun m!1110161 () Bool)

(assert (=> b!1204132 m!1110161))

(declare-fun m!1110163 () Bool)

(assert (=> bm!58166 m!1110163))

(declare-fun m!1110165 () Bool)

(assert (=> b!1204118 m!1110165))

(assert (=> b!1204119 m!1110085))

(assert (=> b!1204119 m!1110085))

(declare-fun m!1110167 () Bool)

(assert (=> b!1204119 m!1110167))

(declare-fun m!1110169 () Bool)

(assert (=> b!1204126 m!1110169))

(assert (=> b!1204135 m!1110087))

(assert (=> b!1204135 m!1109993))

(assert (=> b!1204135 m!1110089))

(assert (=> b!1204135 m!1110085))

(declare-fun m!1110171 () Bool)

(assert (=> b!1204135 m!1110171))

(assert (=> b!1204135 m!1110085))

(assert (=> b!1204135 m!1109993))

(assert (=> b!1204135 m!1110087))

(assert (=> b!1204125 m!1110085))

(assert (=> b!1204125 m!1110085))

(assert (=> b!1204125 m!1110097))

(declare-fun m!1110173 () Bool)

(assert (=> b!1204128 m!1110173))

(declare-fun m!1110175 () Bool)

(assert (=> bm!58164 m!1110175))

(assert (=> bm!58167 m!1109957))

(assert (=> d!132673 m!1109975))

(declare-fun m!1110177 () Bool)

(assert (=> bm!58163 m!1110177))

(assert (=> b!1203900 d!132673))

(declare-fun d!132675 () Bool)

(declare-fun e!683829 () Bool)

(assert (=> d!132675 e!683829))

(declare-fun res!801235 () Bool)

(assert (=> d!132675 (=> (not res!801235) (not e!683829))))

(declare-fun lt!545994 () ListLongMap!17811)

(assert (=> d!132675 (= res!801235 (contains!6921 lt!545994 (_1!9925 (ite c!117923 (tuple2!19831 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!117922 (tuple2!19831 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19831 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))))

(declare-fun lt!545996 () List!26657)

(assert (=> d!132675 (= lt!545994 (ListLongMap!17812 lt!545996))))

(declare-fun lt!545993 () Unit!39844)

(declare-fun lt!545995 () Unit!39844)

(assert (=> d!132675 (= lt!545993 lt!545995)))

(assert (=> d!132675 (= (getValueByKey!635 lt!545996 (_1!9925 (ite c!117923 (tuple2!19831 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!117922 (tuple2!19831 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19831 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))) (Some!685 (_2!9925 (ite c!117923 (tuple2!19831 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!117922 (tuple2!19831 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19831 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!310 (List!26657 (_ BitVec 64) V!45939) Unit!39844)

(assert (=> d!132675 (= lt!545995 (lemmaContainsTupThenGetReturnValue!310 lt!545996 (_1!9925 (ite c!117923 (tuple2!19831 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!117922 (tuple2!19831 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19831 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))) (_2!9925 (ite c!117923 (tuple2!19831 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!117922 (tuple2!19831 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19831 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))))

(declare-fun insertStrictlySorted!402 (List!26657 (_ BitVec 64) V!45939) List!26657)

(assert (=> d!132675 (= lt!545996 (insertStrictlySorted!402 (toList!8921 (ite c!117923 lt!545812 lt!545821)) (_1!9925 (ite c!117923 (tuple2!19831 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!117922 (tuple2!19831 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19831 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))) (_2!9925 (ite c!117923 (tuple2!19831 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!117922 (tuple2!19831 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19831 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))))

(assert (=> d!132675 (= (+!3955 (ite c!117923 lt!545812 lt!545821) (ite c!117923 (tuple2!19831 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!117922 (tuple2!19831 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19831 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))) lt!545994)))

(declare-fun b!1204142 () Bool)

(declare-fun res!801234 () Bool)

(assert (=> b!1204142 (=> (not res!801234) (not e!683829))))

(assert (=> b!1204142 (= res!801234 (= (getValueByKey!635 (toList!8921 lt!545994) (_1!9925 (ite c!117923 (tuple2!19831 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!117922 (tuple2!19831 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19831 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))) (Some!685 (_2!9925 (ite c!117923 (tuple2!19831 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!117922 (tuple2!19831 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19831 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))))

(declare-fun b!1204143 () Bool)

(declare-fun contains!6923 (List!26657 tuple2!19830) Bool)

(assert (=> b!1204143 (= e!683829 (contains!6923 (toList!8921 lt!545994) (ite c!117923 (tuple2!19831 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!117922 (tuple2!19831 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19831 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(assert (= (and d!132675 res!801235) b!1204142))

(assert (= (and b!1204142 res!801234) b!1204143))

(declare-fun m!1110179 () Bool)

(assert (=> d!132675 m!1110179))

(declare-fun m!1110181 () Bool)

(assert (=> d!132675 m!1110181))

(declare-fun m!1110183 () Bool)

(assert (=> d!132675 m!1110183))

(declare-fun m!1110185 () Bool)

(assert (=> d!132675 m!1110185))

(declare-fun m!1110187 () Bool)

(assert (=> b!1204142 m!1110187))

(declare-fun m!1110189 () Bool)

(assert (=> b!1204143 m!1110189))

(assert (=> bm!58105 d!132675))

(declare-fun b!1204144 () Bool)

(declare-fun e!683833 () ListLongMap!17811)

(declare-fun e!683836 () ListLongMap!17811)

(assert (=> b!1204144 (= e!683833 e!683836)))

(declare-fun c!117980 () Bool)

(assert (=> b!1204144 (= c!117980 (validKeyInArray!0 (select (arr!37625 lt!545823) from!1455)))))

(declare-fun b!1204145 () Bool)

(declare-fun lt!546000 () Unit!39844)

(declare-fun lt!545997 () Unit!39844)

(assert (=> b!1204145 (= lt!546000 lt!545997)))

(declare-fun lt!546003 () V!45939)

(declare-fun lt!546002 () ListLongMap!17811)

(declare-fun lt!546001 () (_ BitVec 64))

(declare-fun lt!545999 () (_ BitVec 64))

(assert (=> b!1204145 (not (contains!6921 (+!3955 lt!546002 (tuple2!19831 lt!546001 lt!546003)) lt!545999))))

(assert (=> b!1204145 (= lt!545997 (addStillNotContains!291 lt!546002 lt!546001 lt!546003 lt!545999))))

(assert (=> b!1204145 (= lt!545999 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1204145 (= lt!546003 (get!19221 (select (arr!37626 lt!545818) from!1455) (dynLambda!3253 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1204145 (= lt!546001 (select (arr!37625 lt!545823) from!1455))))

(declare-fun call!58171 () ListLongMap!17811)

(assert (=> b!1204145 (= lt!546002 call!58171)))

(assert (=> b!1204145 (= e!683836 (+!3955 call!58171 (tuple2!19831 (select (arr!37625 lt!545823) from!1455) (get!19221 (select (arr!37626 lt!545818) from!1455) (dynLambda!3253 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun d!132677 () Bool)

(declare-fun e!683830 () Bool)

(assert (=> d!132677 e!683830))

(declare-fun res!801237 () Bool)

(assert (=> d!132677 (=> (not res!801237) (not e!683830))))

(declare-fun lt!545998 () ListLongMap!17811)

(assert (=> d!132677 (= res!801237 (not (contains!6921 lt!545998 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!132677 (= lt!545998 e!683833)))

(declare-fun c!117979 () Bool)

(assert (=> d!132677 (= c!117979 (bvsge from!1455 (size!38162 lt!545823)))))

(assert (=> d!132677 (validMask!0 mask!1564)))

(assert (=> d!132677 (= (getCurrentListMapNoExtraKeys!5331 lt!545823 lt!545818 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004) lt!545998)))

(declare-fun b!1204146 () Bool)

(declare-fun e!683835 () Bool)

(declare-fun e!683834 () Bool)

(assert (=> b!1204146 (= e!683835 e!683834)))

(declare-fun c!117981 () Bool)

(assert (=> b!1204146 (= c!117981 (bvslt from!1455 (size!38162 lt!545823)))))

(declare-fun b!1204147 () Bool)

(assert (=> b!1204147 (= e!683834 (= lt!545998 (getCurrentListMapNoExtraKeys!5331 lt!545823 lt!545818 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1204148 () Bool)

(assert (=> b!1204148 (= e!683834 (isEmpty!986 lt!545998))))

(declare-fun b!1204149 () Bool)

(assert (=> b!1204149 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38162 lt!545823)))))

(assert (=> b!1204149 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38163 lt!545818)))))

(declare-fun e!683832 () Bool)

(assert (=> b!1204149 (= e!683832 (= (apply!996 lt!545998 (select (arr!37625 lt!545823) from!1455)) (get!19221 (select (arr!37626 lt!545818) from!1455) (dynLambda!3253 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1204150 () Bool)

(assert (=> b!1204150 (= e!683835 e!683832)))

(assert (=> b!1204150 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38162 lt!545823)))))

(declare-fun res!801238 () Bool)

(assert (=> b!1204150 (= res!801238 (contains!6921 lt!545998 (select (arr!37625 lt!545823) from!1455)))))

(assert (=> b!1204150 (=> (not res!801238) (not e!683832))))

(declare-fun b!1204151 () Bool)

(declare-fun res!801236 () Bool)

(assert (=> b!1204151 (=> (not res!801236) (not e!683830))))

(assert (=> b!1204151 (= res!801236 (not (contains!6921 lt!545998 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1204152 () Bool)

(assert (=> b!1204152 (= e!683836 call!58171)))

(declare-fun b!1204153 () Bool)

(assert (=> b!1204153 (= e!683833 (ListLongMap!17812 Nil!26654))))

(declare-fun bm!58168 () Bool)

(assert (=> bm!58168 (= call!58171 (getCurrentListMapNoExtraKeys!5331 lt!545823 lt!545818 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1204154 () Bool)

(declare-fun e!683831 () Bool)

(assert (=> b!1204154 (= e!683831 (validKeyInArray!0 (select (arr!37625 lt!545823) from!1455)))))

(assert (=> b!1204154 (bvsge from!1455 #b00000000000000000000000000000000)))

(declare-fun b!1204155 () Bool)

(assert (=> b!1204155 (= e!683830 e!683835)))

(declare-fun c!117982 () Bool)

(assert (=> b!1204155 (= c!117982 e!683831)))

(declare-fun res!801239 () Bool)

(assert (=> b!1204155 (=> (not res!801239) (not e!683831))))

(assert (=> b!1204155 (= res!801239 (bvslt from!1455 (size!38162 lt!545823)))))

(assert (= (and d!132677 c!117979) b!1204153))

(assert (= (and d!132677 (not c!117979)) b!1204144))

(assert (= (and b!1204144 c!117980) b!1204145))

(assert (= (and b!1204144 (not c!117980)) b!1204152))

(assert (= (or b!1204145 b!1204152) bm!58168))

(assert (= (and d!132677 res!801237) b!1204151))

(assert (= (and b!1204151 res!801236) b!1204155))

(assert (= (and b!1204155 res!801239) b!1204154))

(assert (= (and b!1204155 c!117982) b!1204150))

(assert (= (and b!1204155 (not c!117982)) b!1204146))

(assert (= (and b!1204150 res!801238) b!1204149))

(assert (= (and b!1204146 c!117981) b!1204147))

(assert (= (and b!1204146 (not c!117981)) b!1204148))

(declare-fun b_lambda!21215 () Bool)

(assert (=> (not b_lambda!21215) (not b!1204145)))

(assert (=> b!1204145 t!39548))

(declare-fun b_and!42767 () Bool)

(assert (= b_and!42765 (and (=> t!39548 result!21997) b_and!42767)))

(declare-fun b_lambda!21217 () Bool)

(assert (=> (not b_lambda!21217) (not b!1204149)))

(assert (=> b!1204149 t!39548))

(declare-fun b_and!42769 () Bool)

(assert (= b_and!42767 (and (=> t!39548 result!21997) b_and!42769)))

(declare-fun m!1110191 () Bool)

(assert (=> d!132677 m!1110191))

(assert (=> d!132677 m!1109975))

(declare-fun m!1110193 () Bool)

(assert (=> b!1204151 m!1110193))

(declare-fun m!1110195 () Bool)

(assert (=> b!1204148 m!1110195))

(declare-fun m!1110197 () Bool)

(assert (=> b!1204145 m!1110197))

(declare-fun m!1110199 () Bool)

(assert (=> b!1204145 m!1110199))

(declare-fun m!1110201 () Bool)

(assert (=> b!1204145 m!1110201))

(declare-fun m!1110203 () Bool)

(assert (=> b!1204145 m!1110203))

(assert (=> b!1204145 m!1109993))

(declare-fun m!1110205 () Bool)

(assert (=> b!1204145 m!1110205))

(assert (=> b!1204145 m!1109993))

(assert (=> b!1204145 m!1110199))

(declare-fun m!1110207 () Bool)

(assert (=> b!1204145 m!1110207))

(assert (=> b!1204145 m!1110203))

(declare-fun m!1110209 () Bool)

(assert (=> b!1204145 m!1110209))

(declare-fun m!1110211 () Bool)

(assert (=> b!1204147 m!1110211))

(assert (=> b!1204144 m!1110201))

(assert (=> b!1204144 m!1110201))

(declare-fun m!1110213 () Bool)

(assert (=> b!1204144 m!1110213))

(assert (=> b!1204150 m!1110201))

(assert (=> b!1204150 m!1110201))

(declare-fun m!1110215 () Bool)

(assert (=> b!1204150 m!1110215))

(assert (=> bm!58168 m!1110211))

(assert (=> b!1204154 m!1110201))

(assert (=> b!1204154 m!1110201))

(assert (=> b!1204154 m!1110213))

(assert (=> b!1204149 m!1110201))

(declare-fun m!1110217 () Bool)

(assert (=> b!1204149 m!1110217))

(assert (=> b!1204149 m!1110203))

(assert (=> b!1204149 m!1110201))

(assert (=> b!1204149 m!1110203))

(assert (=> b!1204149 m!1109993))

(assert (=> b!1204149 m!1110205))

(assert (=> b!1204149 m!1109993))

(assert (=> b!1203901 d!132677))

(declare-fun b!1204156 () Bool)

(declare-fun e!683840 () ListLongMap!17811)

(declare-fun e!683843 () ListLongMap!17811)

(assert (=> b!1204156 (= e!683840 e!683843)))

(declare-fun c!117984 () Bool)

(assert (=> b!1204156 (= c!117984 (validKeyInArray!0 (select (arr!37625 _keys!1208) from!1455)))))

(declare-fun b!1204157 () Bool)

(declare-fun lt!546007 () Unit!39844)

(declare-fun lt!546004 () Unit!39844)

(assert (=> b!1204157 (= lt!546007 lt!546004)))

(declare-fun lt!546010 () V!45939)

(declare-fun lt!546006 () (_ BitVec 64))

(declare-fun lt!546009 () ListLongMap!17811)

(declare-fun lt!546008 () (_ BitVec 64))

(assert (=> b!1204157 (not (contains!6921 (+!3955 lt!546009 (tuple2!19831 lt!546008 lt!546010)) lt!546006))))

(assert (=> b!1204157 (= lt!546004 (addStillNotContains!291 lt!546009 lt!546008 lt!546010 lt!546006))))

(assert (=> b!1204157 (= lt!546006 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1204157 (= lt!546010 (get!19221 (select (arr!37626 _values!996) from!1455) (dynLambda!3253 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1204157 (= lt!546008 (select (arr!37625 _keys!1208) from!1455))))

(declare-fun call!58172 () ListLongMap!17811)

(assert (=> b!1204157 (= lt!546009 call!58172)))

(assert (=> b!1204157 (= e!683843 (+!3955 call!58172 (tuple2!19831 (select (arr!37625 _keys!1208) from!1455) (get!19221 (select (arr!37626 _values!996) from!1455) (dynLambda!3253 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun d!132679 () Bool)

(declare-fun e!683837 () Bool)

(assert (=> d!132679 e!683837))

(declare-fun res!801241 () Bool)

(assert (=> d!132679 (=> (not res!801241) (not e!683837))))

(declare-fun lt!546005 () ListLongMap!17811)

(assert (=> d!132679 (= res!801241 (not (contains!6921 lt!546005 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!132679 (= lt!546005 e!683840)))

(declare-fun c!117983 () Bool)

(assert (=> d!132679 (= c!117983 (bvsge from!1455 (size!38162 _keys!1208)))))

(assert (=> d!132679 (validMask!0 mask!1564)))

(assert (=> d!132679 (= (getCurrentListMapNoExtraKeys!5331 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004) lt!546005)))

(declare-fun b!1204158 () Bool)

(declare-fun e!683842 () Bool)

(declare-fun e!683841 () Bool)

(assert (=> b!1204158 (= e!683842 e!683841)))

(declare-fun c!117985 () Bool)

(assert (=> b!1204158 (= c!117985 (bvslt from!1455 (size!38162 _keys!1208)))))

(declare-fun b!1204159 () Bool)

(assert (=> b!1204159 (= e!683841 (= lt!546005 (getCurrentListMapNoExtraKeys!5331 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1204160 () Bool)

(assert (=> b!1204160 (= e!683841 (isEmpty!986 lt!546005))))

(declare-fun b!1204161 () Bool)

(assert (=> b!1204161 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38162 _keys!1208)))))

(assert (=> b!1204161 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38163 _values!996)))))

(declare-fun e!683839 () Bool)

(assert (=> b!1204161 (= e!683839 (= (apply!996 lt!546005 (select (arr!37625 _keys!1208) from!1455)) (get!19221 (select (arr!37626 _values!996) from!1455) (dynLambda!3253 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1204162 () Bool)

(assert (=> b!1204162 (= e!683842 e!683839)))

(assert (=> b!1204162 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38162 _keys!1208)))))

(declare-fun res!801242 () Bool)

(assert (=> b!1204162 (= res!801242 (contains!6921 lt!546005 (select (arr!37625 _keys!1208) from!1455)))))

(assert (=> b!1204162 (=> (not res!801242) (not e!683839))))

(declare-fun b!1204163 () Bool)

(declare-fun res!801240 () Bool)

(assert (=> b!1204163 (=> (not res!801240) (not e!683837))))

(assert (=> b!1204163 (= res!801240 (not (contains!6921 lt!546005 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1204164 () Bool)

(assert (=> b!1204164 (= e!683843 call!58172)))

(declare-fun b!1204165 () Bool)

(assert (=> b!1204165 (= e!683840 (ListLongMap!17812 Nil!26654))))

(declare-fun bm!58169 () Bool)

(assert (=> bm!58169 (= call!58172 (getCurrentListMapNoExtraKeys!5331 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1204166 () Bool)

(declare-fun e!683838 () Bool)

(assert (=> b!1204166 (= e!683838 (validKeyInArray!0 (select (arr!37625 _keys!1208) from!1455)))))

(assert (=> b!1204166 (bvsge from!1455 #b00000000000000000000000000000000)))

(declare-fun b!1204167 () Bool)

(assert (=> b!1204167 (= e!683837 e!683842)))

(declare-fun c!117986 () Bool)

(assert (=> b!1204167 (= c!117986 e!683838)))

(declare-fun res!801243 () Bool)

(assert (=> b!1204167 (=> (not res!801243) (not e!683838))))

(assert (=> b!1204167 (= res!801243 (bvslt from!1455 (size!38162 _keys!1208)))))

(assert (= (and d!132679 c!117983) b!1204165))

(assert (= (and d!132679 (not c!117983)) b!1204156))

(assert (= (and b!1204156 c!117984) b!1204157))

(assert (= (and b!1204156 (not c!117984)) b!1204164))

(assert (= (or b!1204157 b!1204164) bm!58169))

(assert (= (and d!132679 res!801241) b!1204163))

(assert (= (and b!1204163 res!801240) b!1204167))

(assert (= (and b!1204167 res!801243) b!1204166))

(assert (= (and b!1204167 c!117986) b!1204162))

(assert (= (and b!1204167 (not c!117986)) b!1204158))

(assert (= (and b!1204162 res!801242) b!1204161))

(assert (= (and b!1204158 c!117985) b!1204159))

(assert (= (and b!1204158 (not c!117985)) b!1204160))

(declare-fun b_lambda!21219 () Bool)

(assert (=> (not b_lambda!21219) (not b!1204157)))

(assert (=> b!1204157 t!39548))

(declare-fun b_and!42771 () Bool)

(assert (= b_and!42769 (and (=> t!39548 result!21997) b_and!42771)))

(declare-fun b_lambda!21221 () Bool)

(assert (=> (not b_lambda!21221) (not b!1204161)))

(assert (=> b!1204161 t!39548))

(declare-fun b_and!42773 () Bool)

(assert (= b_and!42771 (and (=> t!39548 result!21997) b_and!42773)))

(declare-fun m!1110219 () Bool)

(assert (=> d!132679 m!1110219))

(assert (=> d!132679 m!1109975))

(declare-fun m!1110221 () Bool)

(assert (=> b!1204163 m!1110221))

(declare-fun m!1110223 () Bool)

(assert (=> b!1204160 m!1110223))

(declare-fun m!1110225 () Bool)

(assert (=> b!1204157 m!1110225))

(declare-fun m!1110227 () Bool)

(assert (=> b!1204157 m!1110227))

(assert (=> b!1204157 m!1109987))

(declare-fun m!1110229 () Bool)

(assert (=> b!1204157 m!1110229))

(assert (=> b!1204157 m!1109993))

(declare-fun m!1110231 () Bool)

(assert (=> b!1204157 m!1110231))

(assert (=> b!1204157 m!1109993))

(assert (=> b!1204157 m!1110227))

(declare-fun m!1110233 () Bool)

(assert (=> b!1204157 m!1110233))

(assert (=> b!1204157 m!1110229))

(declare-fun m!1110235 () Bool)

(assert (=> b!1204157 m!1110235))

(declare-fun m!1110237 () Bool)

(assert (=> b!1204159 m!1110237))

(assert (=> b!1204156 m!1109987))

(assert (=> b!1204156 m!1109987))

(declare-fun m!1110239 () Bool)

(assert (=> b!1204156 m!1110239))

(assert (=> b!1204162 m!1109987))

(assert (=> b!1204162 m!1109987))

(declare-fun m!1110241 () Bool)

(assert (=> b!1204162 m!1110241))

(assert (=> bm!58169 m!1110237))

(assert (=> b!1204166 m!1109987))

(assert (=> b!1204166 m!1109987))

(assert (=> b!1204166 m!1110239))

(assert (=> b!1204161 m!1109987))

(declare-fun m!1110243 () Bool)

(assert (=> b!1204161 m!1110243))

(assert (=> b!1204161 m!1110229))

(assert (=> b!1204161 m!1109987))

(assert (=> b!1204161 m!1110229))

(assert (=> b!1204161 m!1109993))

(assert (=> b!1204161 m!1110231))

(assert (=> b!1204161 m!1109993))

(assert (=> b!1203901 d!132679))

(declare-fun d!132681 () Bool)

(assert (=> d!132681 (= (validKeyInArray!0 k0!934) (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1203902 d!132681))

(declare-fun d!132683 () Bool)

(assert (=> d!132683 (= (array_inv!28566 _keys!1208) (bvsge (size!38162 _keys!1208) #b00000000000000000000000000000000))))

(assert (=> start!100680 d!132683))

(declare-fun d!132685 () Bool)

(assert (=> d!132685 (= (array_inv!28567 _values!996) (bvsge (size!38163 _values!996) #b00000000000000000000000000000000))))

(assert (=> start!100680 d!132685))

(declare-fun d!132687 () Bool)

(assert (=> d!132687 (= (validMask!0 mask!1564) (and (or (= mask!1564 #b00000000000000000000000000000111) (= mask!1564 #b00000000000000000000000000001111) (= mask!1564 #b00000000000000000000000000011111) (= mask!1564 #b00000000000000000000000000111111) (= mask!1564 #b00000000000000000000000001111111) (= mask!1564 #b00000000000000000000000011111111) (= mask!1564 #b00000000000000000000000111111111) (= mask!1564 #b00000000000000000000001111111111) (= mask!1564 #b00000000000000000000011111111111) (= mask!1564 #b00000000000000000000111111111111) (= mask!1564 #b00000000000000000001111111111111) (= mask!1564 #b00000000000000000011111111111111) (= mask!1564 #b00000000000000000111111111111111) (= mask!1564 #b00000000000000001111111111111111) (= mask!1564 #b00000000000000011111111111111111) (= mask!1564 #b00000000000000111111111111111111) (= mask!1564 #b00000000000001111111111111111111) (= mask!1564 #b00000000000011111111111111111111) (= mask!1564 #b00000000000111111111111111111111) (= mask!1564 #b00000000001111111111111111111111) (= mask!1564 #b00000000011111111111111111111111) (= mask!1564 #b00000000111111111111111111111111) (= mask!1564 #b00000001111111111111111111111111) (= mask!1564 #b00000011111111111111111111111111) (= mask!1564 #b00000111111111111111111111111111) (= mask!1564 #b00001111111111111111111111111111) (= mask!1564 #b00011111111111111111111111111111) (= mask!1564 #b00111111111111111111111111111111)) (bvsle mask!1564 #b00111111111111111111111111111111)))))

(assert (=> b!1203904 d!132687))

(declare-fun d!132689 () Bool)

(declare-fun lt!546013 () ListLongMap!17811)

(assert (=> d!132689 (not (contains!6921 lt!546013 k0!934))))

(declare-fun removeStrictlySorted!95 (List!26657 (_ BitVec 64)) List!26657)

(assert (=> d!132689 (= lt!546013 (ListLongMap!17812 (removeStrictlySorted!95 (toList!8921 call!58113) k0!934)))))

(assert (=> d!132689 (= (-!1837 call!58113 k0!934) lt!546013)))

(declare-fun bs!34076 () Bool)

(assert (= bs!34076 d!132689))

(declare-fun m!1110245 () Bool)

(assert (=> bs!34076 m!1110245))

(declare-fun m!1110247 () Bool)

(assert (=> bs!34076 m!1110247))

(assert (=> b!1203895 d!132689))

(declare-fun b!1204168 () Bool)

(declare-fun e!683844 () Bool)

(declare-fun e!683846 () Bool)

(assert (=> b!1204168 (= e!683844 e!683846)))

(declare-fun lt!546016 () (_ BitVec 64))

(assert (=> b!1204168 (= lt!546016 (select (arr!37625 _keys!1208) #b00000000000000000000000000000000))))

(declare-fun lt!546014 () Unit!39844)

(assert (=> b!1204168 (= lt!546014 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 lt!546016 #b00000000000000000000000000000000))))

(assert (=> b!1204168 (arrayContainsKey!0 _keys!1208 lt!546016 #b00000000000000000000000000000000)))

(declare-fun lt!546015 () Unit!39844)

(assert (=> b!1204168 (= lt!546015 lt!546014)))

(declare-fun res!801245 () Bool)

(assert (=> b!1204168 (= res!801245 (= (seekEntryOrOpen!0 (select (arr!37625 _keys!1208) #b00000000000000000000000000000000) _keys!1208 mask!1564) (Found!9931 #b00000000000000000000000000000000)))))

(assert (=> b!1204168 (=> (not res!801245) (not e!683846))))

(declare-fun b!1204169 () Bool)

(declare-fun call!58173 () Bool)

(assert (=> b!1204169 (= e!683846 call!58173)))

(declare-fun bm!58170 () Bool)

(assert (=> bm!58170 (= call!58173 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1208 mask!1564))))

(declare-fun b!1204170 () Bool)

(declare-fun e!683845 () Bool)

(assert (=> b!1204170 (= e!683845 e!683844)))

(declare-fun c!117987 () Bool)

(assert (=> b!1204170 (= c!117987 (validKeyInArray!0 (select (arr!37625 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun d!132691 () Bool)

(declare-fun res!801244 () Bool)

(assert (=> d!132691 (=> res!801244 e!683845)))

(assert (=> d!132691 (= res!801244 (bvsge #b00000000000000000000000000000000 (size!38162 _keys!1208)))))

(assert (=> d!132691 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564) e!683845)))

(declare-fun b!1204171 () Bool)

(assert (=> b!1204171 (= e!683844 call!58173)))

(assert (= (and d!132691 (not res!801244)) b!1204170))

(assert (= (and b!1204170 c!117987) b!1204168))

(assert (= (and b!1204170 (not c!117987)) b!1204171))

(assert (= (and b!1204168 res!801245) b!1204169))

(assert (= (or b!1204169 b!1204171) bm!58170))

(declare-fun m!1110249 () Bool)

(assert (=> b!1204168 m!1110249))

(declare-fun m!1110251 () Bool)

(assert (=> b!1204168 m!1110251))

(declare-fun m!1110253 () Bool)

(assert (=> b!1204168 m!1110253))

(assert (=> b!1204168 m!1110249))

(declare-fun m!1110255 () Bool)

(assert (=> b!1204168 m!1110255))

(declare-fun m!1110257 () Bool)

(assert (=> bm!58170 m!1110257))

(assert (=> b!1204170 m!1110249))

(assert (=> b!1204170 m!1110249))

(declare-fun m!1110259 () Bool)

(assert (=> b!1204170 m!1110259))

(assert (=> b!1203896 d!132691))

(declare-fun b!1204172 () Bool)

(declare-fun e!683850 () ListLongMap!17811)

(declare-fun e!683853 () ListLongMap!17811)

(assert (=> b!1204172 (= e!683850 e!683853)))

(declare-fun c!117989 () Bool)

(assert (=> b!1204172 (= c!117989 (validKeyInArray!0 (select (arr!37625 lt!545823) (bvadd #b00000000000000000000000000000001 from!1455))))))

(declare-fun b!1204173 () Bool)

(declare-fun lt!546020 () Unit!39844)

(declare-fun lt!546017 () Unit!39844)

(assert (=> b!1204173 (= lt!546020 lt!546017)))

(declare-fun lt!546019 () (_ BitVec 64))

(declare-fun lt!546021 () (_ BitVec 64))

(declare-fun lt!546022 () ListLongMap!17811)

(declare-fun lt!546023 () V!45939)

(assert (=> b!1204173 (not (contains!6921 (+!3955 lt!546022 (tuple2!19831 lt!546021 lt!546023)) lt!546019))))

(assert (=> b!1204173 (= lt!546017 (addStillNotContains!291 lt!546022 lt!546021 lt!546023 lt!546019))))

(assert (=> b!1204173 (= lt!546019 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1204173 (= lt!546023 (get!19221 (select (arr!37626 lt!545818) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3253 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1204173 (= lt!546021 (select (arr!37625 lt!545823) (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun call!58174 () ListLongMap!17811)

(assert (=> b!1204173 (= lt!546022 call!58174)))

(assert (=> b!1204173 (= e!683853 (+!3955 call!58174 (tuple2!19831 (select (arr!37625 lt!545823) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19221 (select (arr!37626 lt!545818) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3253 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun d!132693 () Bool)

(declare-fun e!683847 () Bool)

(assert (=> d!132693 e!683847))

(declare-fun res!801247 () Bool)

(assert (=> d!132693 (=> (not res!801247) (not e!683847))))

(declare-fun lt!546018 () ListLongMap!17811)

(assert (=> d!132693 (= res!801247 (not (contains!6921 lt!546018 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!132693 (= lt!546018 e!683850)))

(declare-fun c!117988 () Bool)

(assert (=> d!132693 (= c!117988 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!38162 lt!545823)))))

(assert (=> d!132693 (validMask!0 mask!1564)))

(assert (=> d!132693 (= (getCurrentListMapNoExtraKeys!5331 lt!545823 lt!545818 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!546018)))

(declare-fun b!1204174 () Bool)

(declare-fun e!683852 () Bool)

(declare-fun e!683851 () Bool)

(assert (=> b!1204174 (= e!683852 e!683851)))

(declare-fun c!117990 () Bool)

(assert (=> b!1204174 (= c!117990 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38162 lt!545823)))))

(declare-fun b!1204175 () Bool)

(assert (=> b!1204175 (= e!683851 (= lt!546018 (getCurrentListMapNoExtraKeys!5331 lt!545823 lt!545818 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1204176 () Bool)

(assert (=> b!1204176 (= e!683851 (isEmpty!986 lt!546018))))

(declare-fun b!1204177 () Bool)

(assert (=> b!1204177 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38162 lt!545823)))))

(assert (=> b!1204177 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38163 lt!545818)))))

(declare-fun e!683849 () Bool)

(assert (=> b!1204177 (= e!683849 (= (apply!996 lt!546018 (select (arr!37625 lt!545823) (bvadd #b00000000000000000000000000000001 from!1455))) (get!19221 (select (arr!37626 lt!545818) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3253 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1204178 () Bool)

(assert (=> b!1204178 (= e!683852 e!683849)))

(assert (=> b!1204178 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38162 lt!545823)))))

(declare-fun res!801248 () Bool)

(assert (=> b!1204178 (= res!801248 (contains!6921 lt!546018 (select (arr!37625 lt!545823) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1204178 (=> (not res!801248) (not e!683849))))

(declare-fun b!1204179 () Bool)

(declare-fun res!801246 () Bool)

(assert (=> b!1204179 (=> (not res!801246) (not e!683847))))

(assert (=> b!1204179 (= res!801246 (not (contains!6921 lt!546018 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1204180 () Bool)

(assert (=> b!1204180 (= e!683853 call!58174)))

(declare-fun b!1204181 () Bool)

(assert (=> b!1204181 (= e!683850 (ListLongMap!17812 Nil!26654))))

(declare-fun bm!58171 () Bool)

(assert (=> bm!58171 (= call!58174 (getCurrentListMapNoExtraKeys!5331 lt!545823 lt!545818 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1204182 () Bool)

(declare-fun e!683848 () Bool)

(assert (=> b!1204182 (= e!683848 (validKeyInArray!0 (select (arr!37625 lt!545823) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1204182 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))

(declare-fun b!1204183 () Bool)

(assert (=> b!1204183 (= e!683847 e!683852)))

(declare-fun c!117991 () Bool)

(assert (=> b!1204183 (= c!117991 e!683848)))

(declare-fun res!801249 () Bool)

(assert (=> b!1204183 (=> (not res!801249) (not e!683848))))

(assert (=> b!1204183 (= res!801249 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38162 lt!545823)))))

(assert (= (and d!132693 c!117988) b!1204181))

(assert (= (and d!132693 (not c!117988)) b!1204172))

(assert (= (and b!1204172 c!117989) b!1204173))

(assert (= (and b!1204172 (not c!117989)) b!1204180))

(assert (= (or b!1204173 b!1204180) bm!58171))

(assert (= (and d!132693 res!801247) b!1204179))

(assert (= (and b!1204179 res!801246) b!1204183))

(assert (= (and b!1204183 res!801249) b!1204182))

(assert (= (and b!1204183 c!117991) b!1204178))

(assert (= (and b!1204183 (not c!117991)) b!1204174))

(assert (= (and b!1204178 res!801248) b!1204177))

(assert (= (and b!1204174 c!117990) b!1204175))

(assert (= (and b!1204174 (not c!117990)) b!1204176))

(declare-fun b_lambda!21223 () Bool)

(assert (=> (not b_lambda!21223) (not b!1204173)))

(assert (=> b!1204173 t!39548))

(declare-fun b_and!42775 () Bool)

(assert (= b_and!42773 (and (=> t!39548 result!21997) b_and!42775)))

(declare-fun b_lambda!21225 () Bool)

(assert (=> (not b_lambda!21225) (not b!1204177)))

(assert (=> b!1204177 t!39548))

(declare-fun b_and!42777 () Bool)

(assert (= b_and!42775 (and (=> t!39548 result!21997) b_and!42777)))

(declare-fun m!1110261 () Bool)

(assert (=> d!132693 m!1110261))

(assert (=> d!132693 m!1109975))

(declare-fun m!1110263 () Bool)

(assert (=> b!1204179 m!1110263))

(declare-fun m!1110265 () Bool)

(assert (=> b!1204176 m!1110265))

(declare-fun m!1110267 () Bool)

(assert (=> b!1204173 m!1110267))

(declare-fun m!1110269 () Bool)

(assert (=> b!1204173 m!1110269))

(declare-fun m!1110271 () Bool)

(assert (=> b!1204173 m!1110271))

(declare-fun m!1110273 () Bool)

(assert (=> b!1204173 m!1110273))

(assert (=> b!1204173 m!1109993))

(declare-fun m!1110275 () Bool)

(assert (=> b!1204173 m!1110275))

(assert (=> b!1204173 m!1109993))

(assert (=> b!1204173 m!1110269))

(declare-fun m!1110277 () Bool)

(assert (=> b!1204173 m!1110277))

(assert (=> b!1204173 m!1110273))

(declare-fun m!1110279 () Bool)

(assert (=> b!1204173 m!1110279))

(declare-fun m!1110281 () Bool)

(assert (=> b!1204175 m!1110281))

(assert (=> b!1204172 m!1110271))

(assert (=> b!1204172 m!1110271))

(declare-fun m!1110283 () Bool)

(assert (=> b!1204172 m!1110283))

(assert (=> b!1204178 m!1110271))

(assert (=> b!1204178 m!1110271))

(declare-fun m!1110285 () Bool)

(assert (=> b!1204178 m!1110285))

(assert (=> bm!58171 m!1110281))

(assert (=> b!1204182 m!1110271))

(assert (=> b!1204182 m!1110271))

(assert (=> b!1204182 m!1110283))

(assert (=> b!1204177 m!1110271))

(declare-fun m!1110287 () Bool)

(assert (=> b!1204177 m!1110287))

(assert (=> b!1204177 m!1110273))

(assert (=> b!1204177 m!1110271))

(assert (=> b!1204177 m!1110273))

(assert (=> b!1204177 m!1109993))

(assert (=> b!1204177 m!1110275))

(assert (=> b!1204177 m!1109993))

(assert (=> bm!58106 d!132693))

(declare-fun d!132695 () Bool)

(declare-fun e!683854 () Bool)

(assert (=> d!132695 e!683854))

(declare-fun res!801251 () Bool)

(assert (=> d!132695 (=> (not res!801251) (not e!683854))))

(declare-fun lt!546025 () ListLongMap!17811)

(assert (=> d!132695 (= res!801251 (contains!6921 lt!546025 (_1!9925 (tuple2!19831 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944))))))

(declare-fun lt!546027 () List!26657)

(assert (=> d!132695 (= lt!546025 (ListLongMap!17812 lt!546027))))

(declare-fun lt!546024 () Unit!39844)

(declare-fun lt!546026 () Unit!39844)

(assert (=> d!132695 (= lt!546024 lt!546026)))

(assert (=> d!132695 (= (getValueByKey!635 lt!546027 (_1!9925 (tuple2!19831 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944))) (Some!685 (_2!9925 (tuple2!19831 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944))))))

(assert (=> d!132695 (= lt!546026 (lemmaContainsTupThenGetReturnValue!310 lt!546027 (_1!9925 (tuple2!19831 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)) (_2!9925 (tuple2!19831 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944))))))

(assert (=> d!132695 (= lt!546027 (insertStrictlySorted!402 (toList!8921 lt!545821) (_1!9925 (tuple2!19831 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)) (_2!9925 (tuple2!19831 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944))))))

(assert (=> d!132695 (= (+!3955 lt!545821 (tuple2!19831 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)) lt!546025)))

(declare-fun b!1204184 () Bool)

(declare-fun res!801250 () Bool)

(assert (=> b!1204184 (=> (not res!801250) (not e!683854))))

(assert (=> b!1204184 (= res!801250 (= (getValueByKey!635 (toList!8921 lt!546025) (_1!9925 (tuple2!19831 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944))) (Some!685 (_2!9925 (tuple2!19831 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))))

(declare-fun b!1204185 () Bool)

(assert (=> b!1204185 (= e!683854 (contains!6923 (toList!8921 lt!546025) (tuple2!19831 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(assert (= (and d!132695 res!801251) b!1204184))

(assert (= (and b!1204184 res!801250) b!1204185))

(declare-fun m!1110289 () Bool)

(assert (=> d!132695 m!1110289))

(declare-fun m!1110291 () Bool)

(assert (=> d!132695 m!1110291))

(declare-fun m!1110293 () Bool)

(assert (=> d!132695 m!1110293))

(declare-fun m!1110295 () Bool)

(assert (=> d!132695 m!1110295))

(declare-fun m!1110297 () Bool)

(assert (=> b!1204184 m!1110297))

(declare-fun m!1110299 () Bool)

(assert (=> b!1204185 m!1110299))

(assert (=> b!1203905 d!132695))

(declare-fun d!132697 () Bool)

(assert (=> d!132697 (contains!6921 (+!3955 lt!545812 (tuple2!19831 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun lt!546030 () Unit!39844)

(declare-fun choose!1798 (ListLongMap!17811 (_ BitVec 64) V!45939 (_ BitVec 64)) Unit!39844)

(assert (=> d!132697 (= lt!546030 (choose!1798 lt!545812 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(assert (=> d!132697 (contains!6921 lt!545812 k0!934)))

(assert (=> d!132697 (= (addStillContains!1019 lt!545812 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934) lt!546030)))

(declare-fun bs!34077 () Bool)

(assert (= bs!34077 d!132697))

(declare-fun m!1110301 () Bool)

(assert (=> bs!34077 m!1110301))

(assert (=> bs!34077 m!1110301))

(declare-fun m!1110303 () Bool)

(assert (=> bs!34077 m!1110303))

(declare-fun m!1110305 () Bool)

(assert (=> bs!34077 m!1110305))

(declare-fun m!1110307 () Bool)

(assert (=> bs!34077 m!1110307))

(assert (=> b!1203905 d!132697))

(declare-fun d!132699 () Bool)

(declare-fun e!683856 () Bool)

(assert (=> d!132699 e!683856))

(declare-fun res!801252 () Bool)

(assert (=> d!132699 (=> res!801252 e!683856)))

(declare-fun lt!546031 () Bool)

(assert (=> d!132699 (= res!801252 (not lt!546031))))

(declare-fun lt!546034 () Bool)

(assert (=> d!132699 (= lt!546031 lt!546034)))

(declare-fun lt!546032 () Unit!39844)

(declare-fun e!683855 () Unit!39844)

(assert (=> d!132699 (= lt!546032 e!683855)))

(declare-fun c!117992 () Bool)

(assert (=> d!132699 (= c!117992 lt!546034)))

(assert (=> d!132699 (= lt!546034 (containsKey!589 (toList!8921 call!58106) k0!934))))

(assert (=> d!132699 (= (contains!6921 call!58106 k0!934) lt!546031)))

(declare-fun b!1204187 () Bool)

(declare-fun lt!546033 () Unit!39844)

(assert (=> b!1204187 (= e!683855 lt!546033)))

(assert (=> b!1204187 (= lt!546033 (lemmaContainsKeyImpliesGetValueByKeyDefined!418 (toList!8921 call!58106) k0!934))))

(assert (=> b!1204187 (isDefined!458 (getValueByKey!635 (toList!8921 call!58106) k0!934))))

(declare-fun b!1204188 () Bool)

(declare-fun Unit!39854 () Unit!39844)

(assert (=> b!1204188 (= e!683855 Unit!39854)))

(declare-fun b!1204189 () Bool)

(assert (=> b!1204189 (= e!683856 (isDefined!458 (getValueByKey!635 (toList!8921 call!58106) k0!934)))))

(assert (= (and d!132699 c!117992) b!1204187))

(assert (= (and d!132699 (not c!117992)) b!1204188))

(assert (= (and d!132699 (not res!801252)) b!1204189))

(declare-fun m!1110309 () Bool)

(assert (=> d!132699 m!1110309))

(declare-fun m!1110311 () Bool)

(assert (=> b!1204187 m!1110311))

(declare-fun m!1110313 () Bool)

(assert (=> b!1204187 m!1110313))

(assert (=> b!1204187 m!1110313))

(declare-fun m!1110315 () Bool)

(assert (=> b!1204187 m!1110315))

(assert (=> b!1204189 m!1110313))

(assert (=> b!1204189 m!1110313))

(assert (=> b!1204189 m!1110315))

(assert (=> b!1203905 d!132699))

(declare-fun d!132701 () Bool)

(declare-fun res!801257 () Bool)

(declare-fun e!683861 () Bool)

(assert (=> d!132701 (=> res!801257 e!683861)))

(assert (=> d!132701 (= res!801257 (= (select (arr!37625 _keys!1208) #b00000000000000000000000000000000) k0!934))))

(assert (=> d!132701 (= (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000) e!683861)))

(declare-fun b!1204194 () Bool)

(declare-fun e!683862 () Bool)

(assert (=> b!1204194 (= e!683861 e!683862)))

(declare-fun res!801258 () Bool)

(assert (=> b!1204194 (=> (not res!801258) (not e!683862))))

(assert (=> b!1204194 (= res!801258 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!38162 _keys!1208)))))

(declare-fun b!1204195 () Bool)

(assert (=> b!1204195 (= e!683862 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!132701 (not res!801257)) b!1204194))

(assert (= (and b!1204194 res!801258) b!1204195))

(assert (=> d!132701 m!1110249))

(declare-fun m!1110317 () Bool)

(assert (=> b!1204195 m!1110317))

(assert (=> b!1203919 d!132701))

(declare-fun d!132703 () Bool)

(assert (=> d!132703 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!546037 () Unit!39844)

(declare-fun choose!13 (array!77970 (_ BitVec 64) (_ BitVec 32)) Unit!39844)

(assert (=> d!132703 (= lt!546037 (choose!13 _keys!1208 k0!934 i!673))))

(assert (=> d!132703 (bvsge i!673 #b00000000000000000000000000000000)))

(assert (=> d!132703 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673) lt!546037)))

(declare-fun bs!34078 () Bool)

(assert (= bs!34078 d!132703))

(assert (=> bs!34078 m!1109939))

(declare-fun m!1110319 () Bool)

(assert (=> bs!34078 m!1110319))

(assert (=> b!1203919 d!132703))

(declare-fun b!1204206 () Bool)

(declare-fun e!683874 () Bool)

(declare-fun e!683871 () Bool)

(assert (=> b!1204206 (= e!683874 e!683871)))

(declare-fun c!117995 () Bool)

(assert (=> b!1204206 (= c!117995 (validKeyInArray!0 (select (arr!37625 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun b!1204207 () Bool)

(declare-fun e!683872 () Bool)

(declare-fun contains!6924 (List!26658 (_ BitVec 64)) Bool)

(assert (=> b!1204207 (= e!683872 (contains!6924 Nil!26655 (select (arr!37625 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun b!1204208 () Bool)

(declare-fun call!58177 () Bool)

(assert (=> b!1204208 (= e!683871 call!58177)))

(declare-fun d!132705 () Bool)

(declare-fun res!801265 () Bool)

(declare-fun e!683873 () Bool)

(assert (=> d!132705 (=> res!801265 e!683873)))

(assert (=> d!132705 (= res!801265 (bvsge #b00000000000000000000000000000000 (size!38162 _keys!1208)))))

(assert (=> d!132705 (= (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26655) e!683873)))

(declare-fun b!1204209 () Bool)

(assert (=> b!1204209 (= e!683873 e!683874)))

(declare-fun res!801266 () Bool)

(assert (=> b!1204209 (=> (not res!801266) (not e!683874))))

(assert (=> b!1204209 (= res!801266 (not e!683872))))

(declare-fun res!801267 () Bool)

(assert (=> b!1204209 (=> (not res!801267) (not e!683872))))

(assert (=> b!1204209 (= res!801267 (validKeyInArray!0 (select (arr!37625 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun b!1204210 () Bool)

(assert (=> b!1204210 (= e!683871 call!58177)))

(declare-fun bm!58174 () Bool)

(assert (=> bm!58174 (= call!58177 (arrayNoDuplicates!0 _keys!1208 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!117995 (Cons!26654 (select (arr!37625 _keys!1208) #b00000000000000000000000000000000) Nil!26655) Nil!26655)))))

(assert (= (and d!132705 (not res!801265)) b!1204209))

(assert (= (and b!1204209 res!801267) b!1204207))

(assert (= (and b!1204209 res!801266) b!1204206))

(assert (= (and b!1204206 c!117995) b!1204208))

(assert (= (and b!1204206 (not c!117995)) b!1204210))

(assert (= (or b!1204208 b!1204210) bm!58174))

(assert (=> b!1204206 m!1110249))

(assert (=> b!1204206 m!1110249))

(assert (=> b!1204206 m!1110259))

(assert (=> b!1204207 m!1110249))

(assert (=> b!1204207 m!1110249))

(declare-fun m!1110321 () Bool)

(assert (=> b!1204207 m!1110321))

(assert (=> b!1204209 m!1110249))

(assert (=> b!1204209 m!1110249))

(assert (=> b!1204209 m!1110259))

(assert (=> bm!58174 m!1110249))

(declare-fun m!1110323 () Bool)

(assert (=> bm!58174 m!1110323))

(assert (=> b!1203898 d!132705))

(declare-fun b!1204211 () Bool)

(declare-fun e!683878 () Bool)

(declare-fun e!683875 () Bool)

(assert (=> b!1204211 (= e!683878 e!683875)))

(declare-fun c!117996 () Bool)

(assert (=> b!1204211 (= c!117996 (validKeyInArray!0 (select (arr!37625 lt!545823) #b00000000000000000000000000000000)))))

(declare-fun b!1204212 () Bool)

(declare-fun e!683876 () Bool)

(assert (=> b!1204212 (= e!683876 (contains!6924 Nil!26655 (select (arr!37625 lt!545823) #b00000000000000000000000000000000)))))

(declare-fun b!1204213 () Bool)

(declare-fun call!58178 () Bool)

(assert (=> b!1204213 (= e!683875 call!58178)))

(declare-fun d!132707 () Bool)

(declare-fun res!801268 () Bool)

(declare-fun e!683877 () Bool)

(assert (=> d!132707 (=> res!801268 e!683877)))

(assert (=> d!132707 (= res!801268 (bvsge #b00000000000000000000000000000000 (size!38162 lt!545823)))))

(assert (=> d!132707 (= (arrayNoDuplicates!0 lt!545823 #b00000000000000000000000000000000 Nil!26655) e!683877)))

(declare-fun b!1204214 () Bool)

(assert (=> b!1204214 (= e!683877 e!683878)))

(declare-fun res!801269 () Bool)

(assert (=> b!1204214 (=> (not res!801269) (not e!683878))))

(assert (=> b!1204214 (= res!801269 (not e!683876))))

(declare-fun res!801270 () Bool)

(assert (=> b!1204214 (=> (not res!801270) (not e!683876))))

(assert (=> b!1204214 (= res!801270 (validKeyInArray!0 (select (arr!37625 lt!545823) #b00000000000000000000000000000000)))))

(declare-fun b!1204215 () Bool)

(assert (=> b!1204215 (= e!683875 call!58178)))

(declare-fun bm!58175 () Bool)

(assert (=> bm!58175 (= call!58178 (arrayNoDuplicates!0 lt!545823 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!117996 (Cons!26654 (select (arr!37625 lt!545823) #b00000000000000000000000000000000) Nil!26655) Nil!26655)))))

(assert (= (and d!132707 (not res!801268)) b!1204214))

(assert (= (and b!1204214 res!801270) b!1204212))

(assert (= (and b!1204214 res!801269) b!1204211))

(assert (= (and b!1204211 c!117996) b!1204213))

(assert (= (and b!1204211 (not c!117996)) b!1204215))

(assert (= (or b!1204213 b!1204215) bm!58175))

(assert (=> b!1204211 m!1110063))

(assert (=> b!1204211 m!1110063))

(assert (=> b!1204211 m!1110073))

(assert (=> b!1204212 m!1110063))

(assert (=> b!1204212 m!1110063))

(declare-fun m!1110325 () Bool)

(assert (=> b!1204212 m!1110325))

(assert (=> b!1204214 m!1110063))

(assert (=> b!1204214 m!1110063))

(assert (=> b!1204214 m!1110073))

(assert (=> bm!58175 m!1110063))

(declare-fun m!1110327 () Bool)

(assert (=> bm!58175 m!1110327))

(assert (=> b!1203920 d!132707))

(declare-fun d!132709 () Bool)

(assert (=> d!132709 (contains!6921 (+!3955 lt!545821 (tuple2!19831 (ite (or c!117923 c!117922) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!117923 c!117922) zeroValue!944 minValue!944))) k0!934)))

(declare-fun lt!546038 () Unit!39844)

(assert (=> d!132709 (= lt!546038 (choose!1798 lt!545821 (ite (or c!117923 c!117922) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!117923 c!117922) zeroValue!944 minValue!944) k0!934))))

(assert (=> d!132709 (contains!6921 lt!545821 k0!934)))

(assert (=> d!132709 (= (addStillContains!1019 lt!545821 (ite (or c!117923 c!117922) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!117923 c!117922) zeroValue!944 minValue!944) k0!934) lt!546038)))

(declare-fun bs!34079 () Bool)

(assert (= bs!34079 d!132709))

(declare-fun m!1110329 () Bool)

(assert (=> bs!34079 m!1110329))

(assert (=> bs!34079 m!1110329))

(declare-fun m!1110331 () Bool)

(assert (=> bs!34079 m!1110331))

(declare-fun m!1110333 () Bool)

(assert (=> bs!34079 m!1110333))

(assert (=> bs!34079 m!1109955))

(assert (=> bm!58107 d!132709))

(declare-fun b!1204223 () Bool)

(declare-fun e!683883 () Bool)

(assert (=> b!1204223 (= e!683883 tp_is_empty!30609)))

(declare-fun mapNonEmpty!47766 () Bool)

(declare-fun mapRes!47766 () Bool)

(declare-fun tp!90719 () Bool)

(declare-fun e!683884 () Bool)

(assert (=> mapNonEmpty!47766 (= mapRes!47766 (and tp!90719 e!683884))))

(declare-fun mapKey!47766 () (_ BitVec 32))

(declare-fun mapRest!47766 () (Array (_ BitVec 32) ValueCell!14595))

(declare-fun mapValue!47766 () ValueCell!14595)

(assert (=> mapNonEmpty!47766 (= mapRest!47760 (store mapRest!47766 mapKey!47766 mapValue!47766))))

(declare-fun condMapEmpty!47766 () Bool)

(declare-fun mapDefault!47766 () ValueCell!14595)

(assert (=> mapNonEmpty!47760 (= condMapEmpty!47766 (= mapRest!47760 ((as const (Array (_ BitVec 32) ValueCell!14595)) mapDefault!47766)))))

(assert (=> mapNonEmpty!47760 (= tp!90710 (and e!683883 mapRes!47766))))

(declare-fun b!1204222 () Bool)

(assert (=> b!1204222 (= e!683884 tp_is_empty!30609)))

(declare-fun mapIsEmpty!47766 () Bool)

(assert (=> mapIsEmpty!47766 mapRes!47766))

(assert (= (and mapNonEmpty!47760 condMapEmpty!47766) mapIsEmpty!47766))

(assert (= (and mapNonEmpty!47760 (not condMapEmpty!47766)) mapNonEmpty!47766))

(assert (= (and mapNonEmpty!47766 ((_ is ValueCellFull!14595) mapValue!47766)) b!1204222))

(assert (= (and mapNonEmpty!47760 ((_ is ValueCellFull!14595) mapDefault!47766)) b!1204223))

(declare-fun m!1110335 () Bool)

(assert (=> mapNonEmpty!47766 m!1110335))

(declare-fun b_lambda!21227 () Bool)

(assert (= b_lambda!21213 (or (and start!100680 b_free!25905) b_lambda!21227)))

(declare-fun b_lambda!21229 () Bool)

(assert (= b_lambda!21221 (or (and start!100680 b_free!25905) b_lambda!21229)))

(declare-fun b_lambda!21231 () Bool)

(assert (= b_lambda!21207 (or (and start!100680 b_free!25905) b_lambda!21231)))

(declare-fun b_lambda!21233 () Bool)

(assert (= b_lambda!21209 (or (and start!100680 b_free!25905) b_lambda!21233)))

(declare-fun b_lambda!21235 () Bool)

(assert (= b_lambda!21225 (or (and start!100680 b_free!25905) b_lambda!21235)))

(declare-fun b_lambda!21237 () Bool)

(assert (= b_lambda!21217 (or (and start!100680 b_free!25905) b_lambda!21237)))

(declare-fun b_lambda!21239 () Bool)

(assert (= b_lambda!21215 (or (and start!100680 b_free!25905) b_lambda!21239)))

(declare-fun b_lambda!21241 () Bool)

(assert (= b_lambda!21223 (or (and start!100680 b_free!25905) b_lambda!21241)))

(declare-fun b_lambda!21243 () Bool)

(assert (= b_lambda!21219 (or (and start!100680 b_free!25905) b_lambda!21243)))

(declare-fun b_lambda!21245 () Bool)

(assert (= b_lambda!21211 (or (and start!100680 b_free!25905) b_lambda!21245)))

(check-sat (not d!132689) (not b!1204043) (not b!1204159) (not b!1204187) (not d!132697) (not bm!58169) (not b_lambda!21237) (not b!1204151) (not d!132677) (not d!132663) (not bm!58167) (not d!132665) (not bm!58146) (not bm!58171) (not bm!58140) (not b!1204121) (not b_lambda!21235) (not b!1204154) (not b!1204135) (not b!1204144) (not b_lambda!21231) (not b!1204177) (not b!1204176) (not b!1204214) (not b!1204142) (not bm!58163) (not b!1204170) (not b!1204066) (not b!1204126) (not b!1204045) (not b!1204172) (not d!132671) (not b!1204147) (not b!1204069) (not b!1204145) (not b!1204071) (not b!1204042) (not b!1204013) (not d!132699) (not b!1204040) b_and!42777 (not bm!58174) (not b!1204162) (not b!1204173) (not mapNonEmpty!47766) (not b!1204184) (not d!132695) (not b_lambda!21227) (not d!132709) (not b!1204161) (not b!1204068) tp_is_empty!30609 (not b!1204178) (not b_next!25905) (not b!1204212) (not d!132703) (not b!1204182) (not b_lambda!21205) (not b!1204074) (not bm!58145) (not b_lambda!21241) (not d!132675) (not bm!58164) (not b_lambda!21245) (not b!1204189) (not b!1204119) (not b!1204195) (not b!1204143) (not b_lambda!21229) (not b!1204118) (not b!1204039) (not b!1204185) (not b!1204132) (not d!132679) (not b!1204149) (not b_lambda!21239) (not b!1204163) (not b!1204209) (not b!1204168) (not b!1204166) (not bm!58175) (not b!1204072) (not b!1204211) (not b!1204046) (not bm!58170) (not b!1204148) (not b!1204175) (not b!1204207) (not d!132667) (not b_lambda!21233) (not b!1204150) (not d!132669) (not d!132673) (not b!1204125) (not b!1204157) (not b!1204179) (not bm!58166) (not d!132693) (not bm!58137) (not b!1204011) (not b!1204049) (not b!1204044) (not bm!58168) (not b!1204156) (not b_lambda!21243) (not b!1204160) (not b!1204128) (not b!1204059) (not b!1204206))
(check-sat b_and!42777 (not b_next!25905))
