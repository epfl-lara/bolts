; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98710 () Bool)

(assert start!98710)

(declare-fun b_free!24279 () Bool)

(declare-fun b_next!24279 () Bool)

(assert (=> start!98710 (= b_free!24279 (not b_next!24279))))

(declare-fun tp!85548 () Bool)

(declare-fun b_and!39421 () Bool)

(assert (=> start!98710 (= tp!85548 b_and!39421)))

(declare-datatypes ((V!43539 0))(
  ( (V!43540 (val!14461 Int)) )
))
(declare-fun zeroValue!944 () V!43539)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((array!74422 0))(
  ( (array!74423 (arr!35858 (Array (_ BitVec 32) (_ BitVec 64))) (size!36395 (_ BitVec 32))) )
))
(declare-fun lt!512927 () array!74422)

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((tuple2!18414 0))(
  ( (tuple2!18415 (_1!9217 (_ BitVec 64)) (_2!9217 V!43539)) )
))
(declare-datatypes ((List!25207 0))(
  ( (Nil!25204) (Cons!25203 (h!26412 tuple2!18414) (t!36485 List!25207)) )
))
(declare-datatypes ((ListLongMap!16395 0))(
  ( (ListLongMap!16396 (toList!8213 List!25207)) )
))
(declare-fun call!52891 () ListLongMap!16395)

(declare-datatypes ((ValueCell!13695 0))(
  ( (ValueCellFull!13695 (v!17099 V!43539)) (EmptyCell!13695) )
))
(declare-datatypes ((array!74424 0))(
  ( (array!74425 (arr!35859 (Array (_ BitVec 32) ValueCell!13695)) (size!36396 (_ BitVec 32))) )
))
(declare-fun lt!512941 () array!74424)

(declare-fun bm!52886 () Bool)

(declare-fun minValue!944 () V!43539)

(declare-fun getCurrentListMapNoExtraKeys!4654 (array!74422 array!74424 (_ BitVec 32) (_ BitVec 32) V!43539 V!43539 (_ BitVec 32) Int) ListLongMap!16395)

(assert (=> bm!52886 (= call!52891 (getCurrentListMapNoExtraKeys!4654 lt!512927 lt!512941 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1147782 () Bool)

(declare-fun res!763996 () Bool)

(declare-fun e!652905 () Bool)

(assert (=> b!1147782 (=> (not res!763996) (not e!652905))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1147782 (= res!763996 (validKeyInArray!0 k0!934))))

(declare-fun b!1147783 () Bool)

(declare-fun e!652916 () Bool)

(declare-fun e!652912 () Bool)

(assert (=> b!1147783 (= e!652916 e!652912)))

(declare-fun res!764001 () Bool)

(assert (=> b!1147783 (=> res!764001 e!652912)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1147783 (= res!764001 (not (= from!1455 i!673)))))

(declare-fun lt!512926 () ListLongMap!16395)

(assert (=> b!1147783 (= lt!512926 (getCurrentListMapNoExtraKeys!4654 lt!512927 lt!512941 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!512935 () V!43539)

(declare-fun _values!996 () array!74424)

(assert (=> b!1147783 (= lt!512941 (array!74425 (store (arr!35859 _values!996) i!673 (ValueCellFull!13695 lt!512935)) (size!36396 _values!996)))))

(declare-fun dynLambda!2687 (Int (_ BitVec 64)) V!43539)

(assert (=> b!1147783 (= lt!512935 (dynLambda!2687 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun _keys!1208 () array!74422)

(declare-fun lt!512934 () ListLongMap!16395)

(assert (=> b!1147783 (= lt!512934 (getCurrentListMapNoExtraKeys!4654 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1147784 () Bool)

(declare-datatypes ((Unit!37629 0))(
  ( (Unit!37630) )
))
(declare-fun e!652914 () Unit!37629)

(declare-fun Unit!37631 () Unit!37629)

(assert (=> b!1147784 (= e!652914 Unit!37631)))

(declare-fun b!1147785 () Bool)

(declare-fun res!763994 () Bool)

(assert (=> b!1147785 (=> (not res!763994) (not e!652905))))

(assert (=> b!1147785 (= res!763994 (= (select (arr!35858 _keys!1208) i!673) k0!934))))

(declare-fun res!764003 () Bool)

(assert (=> start!98710 (=> (not res!764003) (not e!652905))))

(assert (=> start!98710 (= res!764003 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36395 _keys!1208))))))

(assert (=> start!98710 e!652905))

(declare-fun tp_is_empty!28809 () Bool)

(assert (=> start!98710 tp_is_empty!28809))

(declare-fun array_inv!27344 (array!74422) Bool)

(assert (=> start!98710 (array_inv!27344 _keys!1208)))

(assert (=> start!98710 true))

(assert (=> start!98710 tp!85548))

(declare-fun e!652911 () Bool)

(declare-fun array_inv!27345 (array!74424) Bool)

(assert (=> start!98710 (and (array_inv!27345 _values!996) e!652911)))

(declare-fun b!1147786 () Bool)

(declare-fun e!652910 () Bool)

(assert (=> b!1147786 (= e!652910 true)))

(declare-fun e!652906 () Bool)

(assert (=> b!1147786 e!652906))

(declare-fun res!763991 () Bool)

(assert (=> b!1147786 (=> (not res!763991) (not e!652906))))

(declare-fun lt!512936 () ListLongMap!16395)

(declare-fun lt!512932 () V!43539)

(declare-fun -!1303 (ListLongMap!16395 (_ BitVec 64)) ListLongMap!16395)

(declare-fun +!3553 (ListLongMap!16395 tuple2!18414) ListLongMap!16395)

(assert (=> b!1147786 (= res!763991 (= (-!1303 (+!3553 lt!512936 (tuple2!18415 (select (arr!35858 _keys!1208) from!1455) lt!512932)) (select (arr!35858 _keys!1208) from!1455)) lt!512936))))

(declare-fun lt!512944 () Unit!37629)

(declare-fun addThenRemoveForNewKeyIsSame!152 (ListLongMap!16395 (_ BitVec 64) V!43539) Unit!37629)

(assert (=> b!1147786 (= lt!512944 (addThenRemoveForNewKeyIsSame!152 lt!512936 (select (arr!35858 _keys!1208) from!1455) lt!512932))))

(declare-fun get!18266 (ValueCell!13695 V!43539) V!43539)

(assert (=> b!1147786 (= lt!512932 (get!18266 (select (arr!35859 _values!996) from!1455) lt!512935))))

(declare-fun lt!512946 () Unit!37629)

(assert (=> b!1147786 (= lt!512946 e!652914)))

(declare-fun c!113321 () Bool)

(declare-fun contains!6710 (ListLongMap!16395 (_ BitVec 64)) Bool)

(assert (=> b!1147786 (= c!113321 (contains!6710 lt!512936 k0!934))))

(assert (=> b!1147786 (= lt!512936 (getCurrentListMapNoExtraKeys!4654 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1147787 () Bool)

(declare-fun e!652917 () Bool)

(assert (=> b!1147787 (= e!652917 (not e!652916))))

(declare-fun res!763990 () Bool)

(assert (=> b!1147787 (=> res!763990 e!652916)))

(assert (=> b!1147787 (= res!763990 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!74422 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1147787 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!512929 () Unit!37629)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74422 (_ BitVec 64) (_ BitVec 32)) Unit!37629)

(assert (=> b!1147787 (= lt!512929 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1147788 () Bool)

(declare-fun res!763997 () Bool)

(assert (=> b!1147788 (=> (not res!763997) (not e!652905))))

(assert (=> b!1147788 (= res!763997 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36395 _keys!1208))))))

(declare-fun b!1147789 () Bool)

(declare-fun e!652907 () Bool)

(assert (=> b!1147789 (= e!652907 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1147790 () Bool)

(declare-fun res!763993 () Bool)

(assert (=> b!1147790 (=> (not res!763993) (not e!652905))))

(declare-datatypes ((List!25208 0))(
  ( (Nil!25205) (Cons!25204 (h!26413 (_ BitVec 64)) (t!36486 List!25208)) )
))
(declare-fun arrayNoDuplicates!0 (array!74422 (_ BitVec 32) List!25208) Bool)

(assert (=> b!1147790 (= res!763993 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25205))))

(declare-fun b!1147791 () Bool)

(declare-fun e!652903 () Bool)

(assert (=> b!1147791 (= e!652903 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1147792 () Bool)

(declare-fun res!763992 () Bool)

(assert (=> b!1147792 (=> (not res!763992) (not e!652905))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1147792 (= res!763992 (validMask!0 mask!1564))))

(declare-fun b!1147793 () Bool)

(declare-fun call!52892 () ListLongMap!16395)

(assert (=> b!1147793 (contains!6710 call!52892 k0!934)))

(declare-fun lt!512928 () Unit!37629)

(declare-fun call!52894 () Unit!37629)

(assert (=> b!1147793 (= lt!512928 call!52894)))

(declare-fun call!52890 () Bool)

(assert (=> b!1147793 call!52890))

(declare-fun lt!512933 () ListLongMap!16395)

(assert (=> b!1147793 (= lt!512933 (+!3553 lt!512936 (tuple2!18415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!512938 () Unit!37629)

(declare-fun addStillContains!852 (ListLongMap!16395 (_ BitVec 64) V!43539 (_ BitVec 64)) Unit!37629)

(assert (=> b!1147793 (= lt!512938 (addStillContains!852 lt!512936 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(declare-fun e!652908 () Unit!37629)

(assert (=> b!1147793 (= e!652908 lt!512928)))

(declare-fun mapIsEmpty!45038 () Bool)

(declare-fun mapRes!45038 () Bool)

(assert (=> mapIsEmpty!45038 mapRes!45038))

(declare-fun c!113322 () Bool)

(declare-fun bm!52887 () Bool)

(declare-fun c!113318 () Bool)

(assert (=> bm!52887 (= call!52894 (addStillContains!852 (ite c!113322 lt!512933 lt!512936) (ite c!113322 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!113318 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!113322 minValue!944 (ite c!113318 zeroValue!944 minValue!944)) k0!934))))

(declare-fun b!1147794 () Bool)

(declare-fun e!652902 () Bool)

(assert (=> b!1147794 (= e!652911 (and e!652902 mapRes!45038))))

(declare-fun condMapEmpty!45038 () Bool)

(declare-fun mapDefault!45038 () ValueCell!13695)

(assert (=> b!1147794 (= condMapEmpty!45038 (= (arr!35859 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13695)) mapDefault!45038)))))

(declare-fun bm!52888 () Bool)

(declare-fun call!52893 () Unit!37629)

(assert (=> bm!52888 (= call!52893 call!52894)))

(declare-fun bm!52889 () Bool)

(declare-fun call!52895 () ListLongMap!16395)

(assert (=> bm!52889 (= call!52895 (getCurrentListMapNoExtraKeys!4654 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!45038 () Bool)

(declare-fun tp!85549 () Bool)

(declare-fun e!652913 () Bool)

(assert (=> mapNonEmpty!45038 (= mapRes!45038 (and tp!85549 e!652913))))

(declare-fun mapRest!45038 () (Array (_ BitVec 32) ValueCell!13695))

(declare-fun mapKey!45038 () (_ BitVec 32))

(declare-fun mapValue!45038 () ValueCell!13695)

(assert (=> mapNonEmpty!45038 (= (arr!35859 _values!996) (store mapRest!45038 mapKey!45038 mapValue!45038))))

(declare-fun b!1147795 () Bool)

(declare-fun res!764002 () Bool)

(assert (=> b!1147795 (=> (not res!764002) (not e!652905))))

(assert (=> b!1147795 (= res!764002 (and (= (size!36396 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36395 _keys!1208) (size!36396 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1147796 () Bool)

(declare-fun lt!512931 () Bool)

(assert (=> b!1147796 (= c!113318 (and (not lt!512931) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!652904 () Unit!37629)

(assert (=> b!1147796 (= e!652908 e!652904)))

(declare-fun b!1147797 () Bool)

(declare-fun res!763999 () Bool)

(assert (=> b!1147797 (=> (not res!763999) (not e!652905))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74422 (_ BitVec 32)) Bool)

(assert (=> b!1147797 (= res!763999 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1147798 () Bool)

(assert (=> b!1147798 (= e!652912 e!652910)))

(declare-fun res!763995 () Bool)

(assert (=> b!1147798 (=> res!763995 e!652910)))

(assert (=> b!1147798 (= res!763995 (not (= (select (arr!35858 _keys!1208) from!1455) k0!934)))))

(declare-fun e!652901 () Bool)

(assert (=> b!1147798 e!652901))

(declare-fun c!113319 () Bool)

(assert (=> b!1147798 (= c!113319 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!512940 () Unit!37629)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!548 (array!74422 array!74424 (_ BitVec 32) (_ BitVec 32) V!43539 V!43539 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37629)

(assert (=> b!1147798 (= lt!512940 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!548 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1147799 () Bool)

(assert (=> b!1147799 (= e!652901 (= call!52891 (-!1303 call!52895 k0!934)))))

(declare-fun b!1147800 () Bool)

(declare-fun res!764000 () Bool)

(assert (=> b!1147800 (=> (not res!764000) (not e!652917))))

(assert (=> b!1147800 (= res!764000 (arrayNoDuplicates!0 lt!512927 #b00000000000000000000000000000000 Nil!25205))))

(declare-fun b!1147801 () Bool)

(declare-fun e!652915 () Unit!37629)

(assert (=> b!1147801 (= e!652904 e!652915)))

(declare-fun c!113320 () Bool)

(assert (=> b!1147801 (= c!113320 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!512931))))

(declare-fun b!1147802 () Bool)

(assert (=> b!1147802 (= e!652903 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!512931) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1147803 () Bool)

(declare-fun call!52889 () Bool)

(assert (=> b!1147803 call!52889))

(declare-fun lt!512943 () Unit!37629)

(assert (=> b!1147803 (= lt!512943 call!52893)))

(assert (=> b!1147803 (= e!652915 lt!512943)))

(declare-fun b!1147804 () Bool)

(assert (=> b!1147804 (= e!652902 tp_is_empty!28809)))

(declare-fun bm!52890 () Bool)

(assert (=> bm!52890 (= call!52892 (+!3553 (ite c!113322 lt!512933 lt!512936) (ite c!113322 (tuple2!18415 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!113318 (tuple2!18415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18415 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun bm!52891 () Bool)

(declare-fun call!52896 () ListLongMap!16395)

(assert (=> bm!52891 (= call!52890 (contains!6710 (ite c!113322 lt!512933 call!52896) k0!934))))

(declare-fun b!1147805 () Bool)

(declare-fun lt!512937 () Unit!37629)

(assert (=> b!1147805 (= e!652904 lt!512937)))

(assert (=> b!1147805 (= lt!512937 call!52893)))

(assert (=> b!1147805 call!52889))

(declare-fun b!1147806 () Bool)

(declare-fun Unit!37632 () Unit!37629)

(assert (=> b!1147806 (= e!652914 Unit!37632)))

(assert (=> b!1147806 (= lt!512931 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1147806 (= c!113322 (and (not lt!512931) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!512945 () Unit!37629)

(assert (=> b!1147806 (= lt!512945 e!652908)))

(declare-fun lt!512942 () Unit!37629)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!439 (array!74422 array!74424 (_ BitVec 32) (_ BitVec 32) V!43539 V!43539 (_ BitVec 64) (_ BitVec 32) Int) Unit!37629)

(assert (=> b!1147806 (= lt!512942 (lemmaListMapContainsThenArrayContainsFrom!439 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!113317 () Bool)

(assert (=> b!1147806 (= c!113317 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!763989 () Bool)

(assert (=> b!1147806 (= res!763989 e!652903)))

(assert (=> b!1147806 (=> (not res!763989) (not e!652907))))

(assert (=> b!1147806 e!652907))

(declare-fun lt!512930 () Unit!37629)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74422 (_ BitVec 32) (_ BitVec 32)) Unit!37629)

(assert (=> b!1147806 (= lt!512930 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1147806 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25205)))

(declare-fun lt!512939 () Unit!37629)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74422 (_ BitVec 64) (_ BitVec 32) List!25208) Unit!37629)

(assert (=> b!1147806 (= lt!512939 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25205))))

(assert (=> b!1147806 false))

(declare-fun bm!52892 () Bool)

(assert (=> bm!52892 (= call!52889 call!52890)))

(declare-fun b!1147807 () Bool)

(assert (=> b!1147807 (= e!652906 (= (-!1303 lt!512934 k0!934) lt!512936))))

(declare-fun b!1147808 () Bool)

(assert (=> b!1147808 (= e!652913 tp_is_empty!28809)))

(declare-fun b!1147809 () Bool)

(assert (=> b!1147809 (= e!652901 (= call!52891 call!52895))))

(declare-fun b!1147810 () Bool)

(declare-fun Unit!37633 () Unit!37629)

(assert (=> b!1147810 (= e!652915 Unit!37633)))

(declare-fun b!1147811 () Bool)

(assert (=> b!1147811 (= e!652905 e!652917)))

(declare-fun res!763998 () Bool)

(assert (=> b!1147811 (=> (not res!763998) (not e!652917))))

(assert (=> b!1147811 (= res!763998 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!512927 mask!1564))))

(assert (=> b!1147811 (= lt!512927 (array!74423 (store (arr!35858 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36395 _keys!1208)))))

(declare-fun bm!52893 () Bool)

(assert (=> bm!52893 (= call!52896 call!52892)))

(assert (= (and start!98710 res!764003) b!1147792))

(assert (= (and b!1147792 res!763992) b!1147795))

(assert (= (and b!1147795 res!764002) b!1147797))

(assert (= (and b!1147797 res!763999) b!1147790))

(assert (= (and b!1147790 res!763993) b!1147788))

(assert (= (and b!1147788 res!763997) b!1147782))

(assert (= (and b!1147782 res!763996) b!1147785))

(assert (= (and b!1147785 res!763994) b!1147811))

(assert (= (and b!1147811 res!763998) b!1147800))

(assert (= (and b!1147800 res!764000) b!1147787))

(assert (= (and b!1147787 (not res!763990)) b!1147783))

(assert (= (and b!1147783 (not res!764001)) b!1147798))

(assert (= (and b!1147798 c!113319) b!1147799))

(assert (= (and b!1147798 (not c!113319)) b!1147809))

(assert (= (or b!1147799 b!1147809) bm!52886))

(assert (= (or b!1147799 b!1147809) bm!52889))

(assert (= (and b!1147798 (not res!763995)) b!1147786))

(assert (= (and b!1147786 c!113321) b!1147806))

(assert (= (and b!1147786 (not c!113321)) b!1147784))

(assert (= (and b!1147806 c!113322) b!1147793))

(assert (= (and b!1147806 (not c!113322)) b!1147796))

(assert (= (and b!1147796 c!113318) b!1147805))

(assert (= (and b!1147796 (not c!113318)) b!1147801))

(assert (= (and b!1147801 c!113320) b!1147803))

(assert (= (and b!1147801 (not c!113320)) b!1147810))

(assert (= (or b!1147805 b!1147803) bm!52888))

(assert (= (or b!1147805 b!1147803) bm!52893))

(assert (= (or b!1147805 b!1147803) bm!52892))

(assert (= (or b!1147793 bm!52892) bm!52891))

(assert (= (or b!1147793 bm!52888) bm!52887))

(assert (= (or b!1147793 bm!52893) bm!52890))

(assert (= (and b!1147806 c!113317) b!1147791))

(assert (= (and b!1147806 (not c!113317)) b!1147802))

(assert (= (and b!1147806 res!763989) b!1147789))

(assert (= (and b!1147786 res!763991) b!1147807))

(assert (= (and b!1147794 condMapEmpty!45038) mapIsEmpty!45038))

(assert (= (and b!1147794 (not condMapEmpty!45038)) mapNonEmpty!45038))

(get-info :version)

(assert (= (and mapNonEmpty!45038 ((_ is ValueCellFull!13695) mapValue!45038)) b!1147808))

(assert (= (and b!1147794 ((_ is ValueCellFull!13695) mapDefault!45038)) b!1147804))

(assert (= start!98710 b!1147794))

(declare-fun b_lambda!19403 () Bool)

(assert (=> (not b_lambda!19403) (not b!1147783)))

(declare-fun t!36484 () Bool)

(declare-fun tb!9099 () Bool)

(assert (=> (and start!98710 (= defaultEntry!1004 defaultEntry!1004) t!36484) tb!9099))

(declare-fun result!18755 () Bool)

(assert (=> tb!9099 (= result!18755 tp_is_empty!28809)))

(assert (=> b!1147783 t!36484))

(declare-fun b_and!39423 () Bool)

(assert (= b_and!39421 (and (=> t!36484 result!18755) b_and!39423)))

(declare-fun m!1058413 () Bool)

(assert (=> b!1147791 m!1058413))

(declare-fun m!1058415 () Bool)

(assert (=> b!1147806 m!1058415))

(declare-fun m!1058417 () Bool)

(assert (=> b!1147806 m!1058417))

(declare-fun m!1058419 () Bool)

(assert (=> b!1147806 m!1058419))

(declare-fun m!1058421 () Bool)

(assert (=> b!1147806 m!1058421))

(declare-fun m!1058423 () Bool)

(assert (=> b!1147782 m!1058423))

(declare-fun m!1058425 () Bool)

(assert (=> b!1147790 m!1058425))

(declare-fun m!1058427 () Bool)

(assert (=> b!1147800 m!1058427))

(declare-fun m!1058429 () Bool)

(assert (=> b!1147793 m!1058429))

(declare-fun m!1058431 () Bool)

(assert (=> b!1147793 m!1058431))

(declare-fun m!1058433 () Bool)

(assert (=> b!1147793 m!1058433))

(declare-fun m!1058435 () Bool)

(assert (=> bm!52889 m!1058435))

(declare-fun m!1058437 () Bool)

(assert (=> b!1147785 m!1058437))

(declare-fun m!1058439 () Bool)

(assert (=> start!98710 m!1058439))

(declare-fun m!1058441 () Bool)

(assert (=> start!98710 m!1058441))

(declare-fun m!1058443 () Bool)

(assert (=> bm!52886 m!1058443))

(declare-fun m!1058445 () Bool)

(assert (=> b!1147807 m!1058445))

(declare-fun m!1058447 () Bool)

(assert (=> b!1147799 m!1058447))

(declare-fun m!1058449 () Bool)

(assert (=> mapNonEmpty!45038 m!1058449))

(assert (=> b!1147786 m!1058435))

(declare-fun m!1058451 () Bool)

(assert (=> b!1147786 m!1058451))

(declare-fun m!1058453 () Bool)

(assert (=> b!1147786 m!1058453))

(declare-fun m!1058455 () Bool)

(assert (=> b!1147786 m!1058455))

(declare-fun m!1058457 () Bool)

(assert (=> b!1147786 m!1058457))

(assert (=> b!1147786 m!1058455))

(declare-fun m!1058459 () Bool)

(assert (=> b!1147786 m!1058459))

(assert (=> b!1147786 m!1058457))

(assert (=> b!1147786 m!1058451))

(declare-fun m!1058461 () Bool)

(assert (=> b!1147786 m!1058461))

(assert (=> b!1147786 m!1058451))

(declare-fun m!1058463 () Bool)

(assert (=> b!1147786 m!1058463))

(declare-fun m!1058465 () Bool)

(assert (=> b!1147787 m!1058465))

(declare-fun m!1058467 () Bool)

(assert (=> b!1147787 m!1058467))

(declare-fun m!1058469 () Bool)

(assert (=> b!1147792 m!1058469))

(declare-fun m!1058471 () Bool)

(assert (=> bm!52891 m!1058471))

(declare-fun m!1058473 () Bool)

(assert (=> bm!52887 m!1058473))

(declare-fun m!1058475 () Bool)

(assert (=> bm!52890 m!1058475))

(assert (=> b!1147789 m!1058413))

(declare-fun m!1058477 () Bool)

(assert (=> b!1147797 m!1058477))

(declare-fun m!1058479 () Bool)

(assert (=> b!1147783 m!1058479))

(declare-fun m!1058481 () Bool)

(assert (=> b!1147783 m!1058481))

(declare-fun m!1058483 () Bool)

(assert (=> b!1147783 m!1058483))

(declare-fun m!1058485 () Bool)

(assert (=> b!1147783 m!1058485))

(declare-fun m!1058487 () Bool)

(assert (=> b!1147811 m!1058487))

(declare-fun m!1058489 () Bool)

(assert (=> b!1147811 m!1058489))

(assert (=> b!1147798 m!1058451))

(declare-fun m!1058491 () Bool)

(assert (=> b!1147798 m!1058491))

(check-sat b_and!39423 (not bm!52887) (not b!1147782) (not b!1147807) (not b_lambda!19403) (not b!1147786) (not bm!52890) (not b!1147792) (not b!1147800) (not b!1147783) (not b!1147806) (not b_next!24279) (not bm!52886) (not b!1147811) (not b!1147793) (not b!1147799) (not b!1147790) (not b!1147798) (not b!1147787) (not bm!52891) (not bm!52889) (not b!1147789) (not mapNonEmpty!45038) tp_is_empty!28809 (not b!1147797) (not b!1147791) (not start!98710))
(check-sat b_and!39423 (not b_next!24279))
