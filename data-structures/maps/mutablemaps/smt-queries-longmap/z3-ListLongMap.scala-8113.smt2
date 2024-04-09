; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99582 () Bool)

(assert start!99582)

(declare-fun b_free!25125 () Bool)

(declare-fun b_next!25125 () Bool)

(assert (=> start!99582 (= b_free!25125 (not b_next!25125))))

(declare-fun tp!88090 () Bool)

(declare-fun b_and!41131 () Bool)

(assert (=> start!99582 (= tp!88090 b_and!41131)))

(declare-fun b!1177841 () Bool)

(declare-fun res!782505 () Bool)

(declare-fun e!669616 () Bool)

(assert (=> b!1177841 (=> (not res!782505) (not e!669616))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1177841 (= res!782505 (validKeyInArray!0 k0!934))))

(declare-datatypes ((V!44667 0))(
  ( (V!44668 (val!14884 Int)) )
))
(declare-datatypes ((tuple2!19164 0))(
  ( (tuple2!19165 (_1!9592 (_ BitVec 64)) (_2!9592 V!44667)) )
))
(declare-fun lt!531937 () tuple2!19164)

(declare-datatypes ((List!25929 0))(
  ( (Nil!25926) (Cons!25925 (h!27134 tuple2!19164) (t!38053 List!25929)) )
))
(declare-datatypes ((ListLongMap!17145 0))(
  ( (ListLongMap!17146 (toList!8588 List!25929)) )
))
(declare-fun lt!531929 () ListLongMap!17145)

(declare-fun b!1177842 () Bool)

(declare-fun lt!531925 () ListLongMap!17145)

(declare-fun e!669624 () Bool)

(declare-fun +!3810 (ListLongMap!17145 tuple2!19164) ListLongMap!17145)

(assert (=> b!1177842 (= e!669624 (= lt!531925 (+!3810 lt!531929 lt!531937)))))

(declare-fun b!1177843 () Bool)

(declare-fun res!782509 () Bool)

(declare-fun e!669627 () Bool)

(assert (=> b!1177843 (=> (not res!782509) (not e!669627))))

(declare-datatypes ((array!76082 0))(
  ( (array!76083 (arr!36687 (Array (_ BitVec 32) (_ BitVec 64))) (size!37224 (_ BitVec 32))) )
))
(declare-fun lt!531932 () array!76082)

(declare-datatypes ((List!25930 0))(
  ( (Nil!25927) (Cons!25926 (h!27135 (_ BitVec 64)) (t!38054 List!25930)) )
))
(declare-fun arrayNoDuplicates!0 (array!76082 (_ BitVec 32) List!25930) Bool)

(assert (=> b!1177843 (= res!782509 (arrayNoDuplicates!0 lt!531932 #b00000000000000000000000000000000 Nil!25927))))

(declare-fun b!1177844 () Bool)

(declare-fun e!669625 () Bool)

(assert (=> b!1177844 (= e!669627 (not e!669625))))

(declare-fun res!782517 () Bool)

(assert (=> b!1177844 (=> res!782517 e!669625)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1177844 (= res!782517 (bvsgt from!1455 i!673))))

(declare-fun _keys!1208 () array!76082)

(declare-fun arrayContainsKey!0 (array!76082 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1177844 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38837 0))(
  ( (Unit!38838) )
))
(declare-fun lt!531938 () Unit!38837)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76082 (_ BitVec 64) (_ BitVec 32)) Unit!38837)

(assert (=> b!1177844 (= lt!531938 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1177845 () Bool)

(declare-fun res!782511 () Bool)

(assert (=> b!1177845 (=> (not res!782511) (not e!669616))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14118 0))(
  ( (ValueCellFull!14118 (v!17523 V!44667)) (EmptyCell!14118) )
))
(declare-datatypes ((array!76084 0))(
  ( (array!76085 (arr!36688 (Array (_ BitVec 32) ValueCell!14118)) (size!37225 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76084)

(assert (=> b!1177845 (= res!782511 (and (= (size!37225 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37224 _keys!1208) (size!37225 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1177846 () Bool)

(declare-fun res!782515 () Bool)

(assert (=> b!1177846 (=> (not res!782515) (not e!669616))))

(assert (=> b!1177846 (= res!782515 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37224 _keys!1208))))))

(declare-fun b!1177847 () Bool)

(assert (=> b!1177847 (= e!669616 e!669627)))

(declare-fun res!782504 () Bool)

(assert (=> b!1177847 (=> (not res!782504) (not e!669627))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76082 (_ BitVec 32)) Bool)

(assert (=> b!1177847 (= res!782504 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!531932 mask!1564))))

(assert (=> b!1177847 (= lt!531932 (array!76083 (store (arr!36687 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37224 _keys!1208)))))

(declare-fun b!1177848 () Bool)

(declare-fun e!669628 () Bool)

(assert (=> b!1177848 (= e!669625 e!669628)))

(declare-fun res!782516 () Bool)

(assert (=> b!1177848 (=> res!782516 e!669628)))

(assert (=> b!1177848 (= res!782516 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44667)

(declare-fun lt!531933 () ListLongMap!17145)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!531939 () array!76084)

(declare-fun minValue!944 () V!44667)

(declare-fun getCurrentListMapNoExtraKeys!5018 (array!76082 array!76084 (_ BitVec 32) (_ BitVec 32) V!44667 V!44667 (_ BitVec 32) Int) ListLongMap!17145)

(assert (=> b!1177848 (= lt!531933 (getCurrentListMapNoExtraKeys!5018 lt!531932 lt!531939 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!531935 () V!44667)

(assert (=> b!1177848 (= lt!531939 (array!76085 (store (arr!36688 _values!996) i!673 (ValueCellFull!14118 lt!531935)) (size!37225 _values!996)))))

(declare-fun dynLambda!2993 (Int (_ BitVec 64)) V!44667)

(assert (=> b!1177848 (= lt!531935 (dynLambda!2993 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1177848 (= lt!531925 (getCurrentListMapNoExtraKeys!5018 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1177849 () Bool)

(declare-fun res!782506 () Bool)

(assert (=> b!1177849 (=> (not res!782506) (not e!669616))))

(assert (=> b!1177849 (= res!782506 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1177850 () Bool)

(declare-fun e!669620 () Bool)

(declare-fun e!669621 () Bool)

(declare-fun mapRes!46310 () Bool)

(assert (=> b!1177850 (= e!669620 (and e!669621 mapRes!46310))))

(declare-fun condMapEmpty!46310 () Bool)

(declare-fun mapDefault!46310 () ValueCell!14118)

(assert (=> b!1177850 (= condMapEmpty!46310 (= (arr!36688 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14118)) mapDefault!46310)))))

(declare-fun b!1177851 () Bool)

(declare-fun e!669622 () Bool)

(declare-fun e!669623 () Bool)

(assert (=> b!1177851 (= e!669622 e!669623)))

(declare-fun res!782513 () Bool)

(assert (=> b!1177851 (=> res!782513 e!669623)))

(assert (=> b!1177851 (= res!782513 (not (= (select (arr!36687 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1177853 () Bool)

(assert (=> b!1177853 (= e!669623 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1177854 () Bool)

(declare-fun e!669618 () Unit!38837)

(declare-fun Unit!38839 () Unit!38837)

(assert (=> b!1177854 (= e!669618 Unit!38839)))

(declare-fun lt!531931 () Unit!38837)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76082 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38837)

(assert (=> b!1177854 (= lt!531931 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1177854 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!531930 () Unit!38837)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76082 (_ BitVec 32) (_ BitVec 32)) Unit!38837)

(assert (=> b!1177854 (= lt!531930 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1177854 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25927)))

(declare-fun lt!531934 () Unit!38837)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76082 (_ BitVec 64) (_ BitVec 32) List!25930) Unit!38837)

(assert (=> b!1177854 (= lt!531934 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25927))))

(assert (=> b!1177854 false))

(declare-fun b!1177855 () Bool)

(declare-fun res!782503 () Bool)

(assert (=> b!1177855 (=> (not res!782503) (not e!669616))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1177855 (= res!782503 (validMask!0 mask!1564))))

(declare-fun b!1177856 () Bool)

(declare-fun Unit!38840 () Unit!38837)

(assert (=> b!1177856 (= e!669618 Unit!38840)))

(declare-fun b!1177857 () Bool)

(declare-fun res!782514 () Bool)

(assert (=> b!1177857 (=> (not res!782514) (not e!669616))))

(assert (=> b!1177857 (= res!782514 (= (select (arr!36687 _keys!1208) i!673) k0!934))))

(declare-fun b!1177858 () Bool)

(declare-fun res!782507 () Bool)

(assert (=> b!1177858 (=> (not res!782507) (not e!669616))))

(assert (=> b!1177858 (= res!782507 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25927))))

(declare-fun mapIsEmpty!46310 () Bool)

(assert (=> mapIsEmpty!46310 mapRes!46310))

(declare-fun mapNonEmpty!46310 () Bool)

(declare-fun tp!88089 () Bool)

(declare-fun e!669617 () Bool)

(assert (=> mapNonEmpty!46310 (= mapRes!46310 (and tp!88089 e!669617))))

(declare-fun mapValue!46310 () ValueCell!14118)

(declare-fun mapRest!46310 () (Array (_ BitVec 32) ValueCell!14118))

(declare-fun mapKey!46310 () (_ BitVec 32))

(assert (=> mapNonEmpty!46310 (= (arr!36688 _values!996) (store mapRest!46310 mapKey!46310 mapValue!46310))))

(declare-fun b!1177859 () Bool)

(declare-fun tp_is_empty!29655 () Bool)

(assert (=> b!1177859 (= e!669617 tp_is_empty!29655)))

(declare-fun b!1177860 () Bool)

(declare-fun e!669619 () Bool)

(assert (=> b!1177860 (= e!669619 true)))

(assert (=> b!1177860 e!669624))

(declare-fun res!782510 () Bool)

(assert (=> b!1177860 (=> (not res!782510) (not e!669624))))

(assert (=> b!1177860 (= res!782510 (not (= (select (arr!36687 _keys!1208) from!1455) k0!934)))))

(declare-fun lt!531936 () Unit!38837)

(assert (=> b!1177860 (= lt!531936 e!669618)))

(declare-fun c!116759 () Bool)

(assert (=> b!1177860 (= c!116759 (= (select (arr!36687 _keys!1208) from!1455) k0!934))))

(assert (=> b!1177860 e!669622))

(declare-fun res!782512 () Bool)

(assert (=> b!1177860 (=> (not res!782512) (not e!669622))))

(declare-fun lt!531926 () ListLongMap!17145)

(assert (=> b!1177860 (= res!782512 (= lt!531933 (+!3810 lt!531926 lt!531937)))))

(declare-fun get!18782 (ValueCell!14118 V!44667) V!44667)

(assert (=> b!1177860 (= lt!531937 (tuple2!19165 (select (arr!36687 _keys!1208) from!1455) (get!18782 (select (arr!36688 _values!996) from!1455) lt!531935)))))

(declare-fun b!1177861 () Bool)

(assert (=> b!1177861 (= e!669628 e!669619)))

(declare-fun res!782508 () Bool)

(assert (=> b!1177861 (=> res!782508 e!669619)))

(assert (=> b!1177861 (= res!782508 (not (validKeyInArray!0 (select (arr!36687 _keys!1208) from!1455))))))

(declare-fun lt!531928 () ListLongMap!17145)

(assert (=> b!1177861 (= lt!531928 lt!531926)))

(declare-fun -!1588 (ListLongMap!17145 (_ BitVec 64)) ListLongMap!17145)

(assert (=> b!1177861 (= lt!531926 (-!1588 lt!531929 k0!934))))

(assert (=> b!1177861 (= lt!531928 (getCurrentListMapNoExtraKeys!5018 lt!531932 lt!531939 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1177861 (= lt!531929 (getCurrentListMapNoExtraKeys!5018 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!531927 () Unit!38837)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!812 (array!76082 array!76084 (_ BitVec 32) (_ BitVec 32) V!44667 V!44667 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38837)

(assert (=> b!1177861 (= lt!531927 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!812 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1177852 () Bool)

(assert (=> b!1177852 (= e!669621 tp_is_empty!29655)))

(declare-fun res!782518 () Bool)

(assert (=> start!99582 (=> (not res!782518) (not e!669616))))

(assert (=> start!99582 (= res!782518 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37224 _keys!1208))))))

(assert (=> start!99582 e!669616))

(assert (=> start!99582 tp_is_empty!29655))

(declare-fun array_inv!27906 (array!76082) Bool)

(assert (=> start!99582 (array_inv!27906 _keys!1208)))

(assert (=> start!99582 true))

(assert (=> start!99582 tp!88090))

(declare-fun array_inv!27907 (array!76084) Bool)

(assert (=> start!99582 (and (array_inv!27907 _values!996) e!669620)))

(assert (= (and start!99582 res!782518) b!1177855))

(assert (= (and b!1177855 res!782503) b!1177845))

(assert (= (and b!1177845 res!782511) b!1177849))

(assert (= (and b!1177849 res!782506) b!1177858))

(assert (= (and b!1177858 res!782507) b!1177846))

(assert (= (and b!1177846 res!782515) b!1177841))

(assert (= (and b!1177841 res!782505) b!1177857))

(assert (= (and b!1177857 res!782514) b!1177847))

(assert (= (and b!1177847 res!782504) b!1177843))

(assert (= (and b!1177843 res!782509) b!1177844))

(assert (= (and b!1177844 (not res!782517)) b!1177848))

(assert (= (and b!1177848 (not res!782516)) b!1177861))

(assert (= (and b!1177861 (not res!782508)) b!1177860))

(assert (= (and b!1177860 res!782512) b!1177851))

(assert (= (and b!1177851 (not res!782513)) b!1177853))

(assert (= (and b!1177860 c!116759) b!1177854))

(assert (= (and b!1177860 (not c!116759)) b!1177856))

(assert (= (and b!1177860 res!782510) b!1177842))

(assert (= (and b!1177850 condMapEmpty!46310) mapIsEmpty!46310))

(assert (= (and b!1177850 (not condMapEmpty!46310)) mapNonEmpty!46310))

(get-info :version)

(assert (= (and mapNonEmpty!46310 ((_ is ValueCellFull!14118) mapValue!46310)) b!1177859))

(assert (= (and b!1177850 ((_ is ValueCellFull!14118) mapDefault!46310)) b!1177852))

(assert (= start!99582 b!1177850))

(declare-fun b_lambda!20287 () Bool)

(assert (=> (not b_lambda!20287) (not b!1177848)))

(declare-fun t!38052 () Bool)

(declare-fun tb!9945 () Bool)

(assert (=> (and start!99582 (= defaultEntry!1004 defaultEntry!1004) t!38052) tb!9945))

(declare-fun result!20449 () Bool)

(assert (=> tb!9945 (= result!20449 tp_is_empty!29655)))

(assert (=> b!1177848 t!38052))

(declare-fun b_and!41133 () Bool)

(assert (= b_and!41131 (and (=> t!38052 result!20449) b_and!41133)))

(declare-fun m!1085849 () Bool)

(assert (=> b!1177848 m!1085849))

(declare-fun m!1085851 () Bool)

(assert (=> b!1177848 m!1085851))

(declare-fun m!1085853 () Bool)

(assert (=> b!1177848 m!1085853))

(declare-fun m!1085855 () Bool)

(assert (=> b!1177848 m!1085855))

(declare-fun m!1085857 () Bool)

(assert (=> b!1177851 m!1085857))

(declare-fun m!1085859 () Bool)

(assert (=> b!1177842 m!1085859))

(declare-fun m!1085861 () Bool)

(assert (=> b!1177844 m!1085861))

(declare-fun m!1085863 () Bool)

(assert (=> b!1177844 m!1085863))

(declare-fun m!1085865 () Bool)

(assert (=> b!1177843 m!1085865))

(declare-fun m!1085867 () Bool)

(assert (=> b!1177847 m!1085867))

(declare-fun m!1085869 () Bool)

(assert (=> b!1177847 m!1085869))

(declare-fun m!1085871 () Bool)

(assert (=> b!1177858 m!1085871))

(declare-fun m!1085873 () Bool)

(assert (=> b!1177855 m!1085873))

(assert (=> b!1177860 m!1085857))

(declare-fun m!1085875 () Bool)

(assert (=> b!1177860 m!1085875))

(declare-fun m!1085877 () Bool)

(assert (=> b!1177860 m!1085877))

(assert (=> b!1177860 m!1085877))

(declare-fun m!1085879 () Bool)

(assert (=> b!1177860 m!1085879))

(declare-fun m!1085881 () Bool)

(assert (=> b!1177854 m!1085881))

(declare-fun m!1085883 () Bool)

(assert (=> b!1177854 m!1085883))

(declare-fun m!1085885 () Bool)

(assert (=> b!1177854 m!1085885))

(declare-fun m!1085887 () Bool)

(assert (=> b!1177854 m!1085887))

(declare-fun m!1085889 () Bool)

(assert (=> b!1177854 m!1085889))

(declare-fun m!1085891 () Bool)

(assert (=> b!1177861 m!1085891))

(declare-fun m!1085893 () Bool)

(assert (=> b!1177861 m!1085893))

(declare-fun m!1085895 () Bool)

(assert (=> b!1177861 m!1085895))

(declare-fun m!1085897 () Bool)

(assert (=> b!1177861 m!1085897))

(assert (=> b!1177861 m!1085857))

(declare-fun m!1085899 () Bool)

(assert (=> b!1177861 m!1085899))

(assert (=> b!1177861 m!1085857))

(declare-fun m!1085901 () Bool)

(assert (=> start!99582 m!1085901))

(declare-fun m!1085903 () Bool)

(assert (=> start!99582 m!1085903))

(declare-fun m!1085905 () Bool)

(assert (=> b!1177853 m!1085905))

(declare-fun m!1085907 () Bool)

(assert (=> b!1177849 m!1085907))

(declare-fun m!1085909 () Bool)

(assert (=> mapNonEmpty!46310 m!1085909))

(declare-fun m!1085911 () Bool)

(assert (=> b!1177841 m!1085911))

(declare-fun m!1085913 () Bool)

(assert (=> b!1177857 m!1085913))

(check-sat (not mapNonEmpty!46310) (not b!1177860) (not b_next!25125) (not b_lambda!20287) (not b!1177861) (not b!1177853) (not b!1177841) (not b!1177854) b_and!41133 (not b!1177849) (not b!1177848) (not b!1177843) (not b!1177858) (not b!1177844) (not b!1177847) tp_is_empty!29655 (not b!1177855) (not start!99582) (not b!1177842))
(check-sat b_and!41133 (not b_next!25125))
