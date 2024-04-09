; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100936 () Bool)

(assert start!100936)

(declare-fun b_free!25969 () Bool)

(declare-fun b_next!25969 () Bool)

(assert (=> start!100936 (= b_free!25969 (not b_next!25969))))

(declare-fun tp!90917 () Bool)

(declare-fun b_and!42993 () Bool)

(assert (=> start!100936 (= tp!90917 b_and!42993)))

(declare-fun res!803069 () Bool)

(declare-fun e!686019 () Bool)

(assert (=> start!100936 (=> (not res!803069) (not e!686019))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!78104 0))(
  ( (array!78105 (arr!37687 (Array (_ BitVec 32) (_ BitVec 64))) (size!38224 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78104)

(assert (=> start!100936 (= res!803069 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38224 _keys!1208))))))

(assert (=> start!100936 e!686019))

(declare-fun tp_is_empty!30673 () Bool)

(assert (=> start!100936 tp_is_empty!30673))

(declare-fun array_inv!28612 (array!78104) Bool)

(assert (=> start!100936 (array_inv!28612 _keys!1208)))

(assert (=> start!100936 true))

(assert (=> start!100936 tp!90917))

(declare-datatypes ((V!46025 0))(
  ( (V!46026 (val!15393 Int)) )
))
(declare-datatypes ((ValueCell!14627 0))(
  ( (ValueCellFull!14627 (v!18042 V!46025)) (EmptyCell!14627) )
))
(declare-datatypes ((array!78106 0))(
  ( (array!78107 (arr!37688 (Array (_ BitVec 32) ValueCell!14627)) (size!38225 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78106)

(declare-fun e!686017 () Bool)

(declare-fun array_inv!28613 (array!78106) Bool)

(assert (=> start!100936 (and (array_inv!28613 _values!996) e!686017)))

(declare-fun mapNonEmpty!47872 () Bool)

(declare-fun mapRes!47872 () Bool)

(declare-fun tp!90918 () Bool)

(declare-fun e!686027 () Bool)

(assert (=> mapNonEmpty!47872 (= mapRes!47872 (and tp!90918 e!686027))))

(declare-fun mapKey!47872 () (_ BitVec 32))

(declare-fun mapValue!47872 () ValueCell!14627)

(declare-fun mapRest!47872 () (Array (_ BitVec 32) ValueCell!14627))

(assert (=> mapNonEmpty!47872 (= (arr!37688 _values!996) (store mapRest!47872 mapKey!47872 mapValue!47872))))

(declare-fun zeroValue!944 () V!46025)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!46025)

(declare-datatypes ((tuple2!19890 0))(
  ( (tuple2!19891 (_1!9955 (_ BitVec 64)) (_2!9955 V!46025)) )
))
(declare-datatypes ((List!26713 0))(
  ( (Nil!26710) (Cons!26709 (h!27918 tuple2!19890) (t!39669 List!26713)) )
))
(declare-datatypes ((ListLongMap!17871 0))(
  ( (ListLongMap!17872 (toList!8951 List!26713)) )
))
(declare-fun call!59032 () ListLongMap!17871)

(declare-fun bm!59022 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!5358 (array!78104 array!78106 (_ BitVec 32) (_ BitVec 32) V!46025 V!46025 (_ BitVec 32) Int) ListLongMap!17871)

(assert (=> bm!59022 (= call!59032 (getCurrentListMapNoExtraKeys!5358 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1207875 () Bool)

(declare-fun e!686026 () Bool)

(declare-fun call!59027 () ListLongMap!17871)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun -!1858 (ListLongMap!17871 (_ BitVec 64)) ListLongMap!17871)

(assert (=> b!1207875 (= e!686026 (= call!59027 (-!1858 call!59032 k!934)))))

(declare-fun b!1207876 () Bool)

(declare-fun res!803060 () Bool)

(assert (=> b!1207876 (=> (not res!803060) (not e!686019))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1207876 (= res!803060 (validMask!0 mask!1564))))

(declare-fun b!1207877 () Bool)

(declare-fun e!686022 () Bool)

(declare-fun e!686021 () Bool)

(assert (=> b!1207877 (= e!686022 (not e!686021))))

(declare-fun res!803070 () Bool)

(assert (=> b!1207877 (=> res!803070 e!686021)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1207877 (= res!803070 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!78104 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1207877 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39970 0))(
  ( (Unit!39971) )
))
(declare-fun lt!548095 () Unit!39970)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78104 (_ BitVec 64) (_ BitVec 32)) Unit!39970)

(assert (=> b!1207877 (= lt!548095 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1207878 () Bool)

(declare-fun res!803063 () Bool)

(assert (=> b!1207878 (=> (not res!803063) (not e!686019))))

(assert (=> b!1207878 (= res!803063 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38224 _keys!1208))))))

(declare-fun bm!59023 () Bool)

(declare-fun call!59026 () ListLongMap!17871)

(declare-fun call!59025 () ListLongMap!17871)

(assert (=> bm!59023 (= call!59026 call!59025)))

(declare-fun lt!548094 () ListLongMap!17871)

(declare-fun bm!59024 () Bool)

(declare-fun c!118745 () Bool)

(declare-fun c!118744 () Bool)

(declare-fun call!59031 () Unit!39970)

(declare-fun addStillContains!1044 (ListLongMap!17871 (_ BitVec 64) V!46025 (_ BitVec 64)) Unit!39970)

(assert (=> bm!59024 (= call!59031 (addStillContains!1044 lt!548094 (ite (or c!118745 c!118744) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!118745 c!118744) zeroValue!944 minValue!944) k!934))))

(declare-fun bm!59025 () Bool)

(declare-fun +!3980 (ListLongMap!17871 tuple2!19890) ListLongMap!17871)

(assert (=> bm!59025 (= call!59025 (+!3980 lt!548094 (ite (or c!118745 c!118744) (tuple2!19891 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19891 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1207879 () Bool)

(declare-fun res!803072 () Bool)

(assert (=> b!1207879 (=> (not res!803072) (not e!686019))))

(assert (=> b!1207879 (= res!803072 (= (select (arr!37687 _keys!1208) i!673) k!934))))

(declare-fun b!1207880 () Bool)

(declare-fun res!803066 () Bool)

(assert (=> b!1207880 (=> (not res!803066) (not e!686019))))

(declare-datatypes ((List!26714 0))(
  ( (Nil!26711) (Cons!26710 (h!27919 (_ BitVec 64)) (t!39670 List!26714)) )
))
(declare-fun arrayNoDuplicates!0 (array!78104 (_ BitVec 32) List!26714) Bool)

(assert (=> b!1207880 (= res!803066 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26711))))

(declare-fun b!1207881 () Bool)

(declare-fun res!803064 () Bool)

(assert (=> b!1207881 (=> (not res!803064) (not e!686019))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78104 (_ BitVec 32)) Bool)

(assert (=> b!1207881 (= res!803064 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapIsEmpty!47872 () Bool)

(assert (=> mapIsEmpty!47872 mapRes!47872))

(declare-fun b!1207882 () Bool)

(declare-fun e!686025 () Bool)

(assert (=> b!1207882 (= e!686025 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1207883 () Bool)

(declare-fun e!686016 () Bool)

(assert (=> b!1207883 (= e!686016 (or (bvsge (size!38224 _keys!1208) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!38224 _keys!1208)) (bvslt from!1455 (size!38224 _keys!1208))))))

(assert (=> b!1207883 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26711)))

(declare-fun lt!548102 () Unit!39970)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78104 (_ BitVec 32) (_ BitVec 32)) Unit!39970)

(assert (=> b!1207883 (= lt!548102 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-fun e!686015 () Bool)

(assert (=> b!1207883 e!686015))

(declare-fun res!803067 () Bool)

(assert (=> b!1207883 (=> (not res!803067) (not e!686015))))

(assert (=> b!1207883 (= res!803067 e!686025)))

(declare-fun c!118742 () Bool)

(assert (=> b!1207883 (= c!118742 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!548099 () Unit!39970)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!582 (array!78104 array!78106 (_ BitVec 32) (_ BitVec 32) V!46025 V!46025 (_ BitVec 64) (_ BitVec 32) Int) Unit!39970)

(assert (=> b!1207883 (= lt!548099 (lemmaListMapContainsThenArrayContainsFrom!582 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!548096 () Unit!39970)

(declare-fun e!686018 () Unit!39970)

(assert (=> b!1207883 (= lt!548096 e!686018)))

(declare-fun lt!548107 () Bool)

(assert (=> b!1207883 (= c!118745 (and (not lt!548107) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1207883 (= lt!548107 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1207884 () Bool)

(declare-fun call!59030 () Bool)

(assert (=> b!1207884 call!59030))

(declare-fun lt!548101 () Unit!39970)

(declare-fun call!59028 () Unit!39970)

(assert (=> b!1207884 (= lt!548101 call!59028)))

(declare-fun e!686024 () Unit!39970)

(assert (=> b!1207884 (= e!686024 lt!548101)))

(declare-fun lt!548105 () ListLongMap!17871)

(declare-fun call!59029 () Bool)

(declare-fun bm!59026 () Bool)

(declare-fun contains!6956 (ListLongMap!17871 (_ BitVec 64)) Bool)

(assert (=> bm!59026 (= call!59029 (contains!6956 (ite c!118745 lt!548105 call!59026) k!934))))

(declare-fun b!1207885 () Bool)

(declare-fun res!803068 () Bool)

(assert (=> b!1207885 (=> (not res!803068) (not e!686019))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1207885 (= res!803068 (validKeyInArray!0 k!934))))

(declare-fun lt!548103 () array!78104)

(declare-fun lt!548109 () array!78106)

(declare-fun bm!59027 () Bool)

(assert (=> bm!59027 (= call!59027 (getCurrentListMapNoExtraKeys!5358 lt!548103 lt!548109 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1207886 () Bool)

(declare-fun e!686020 () Bool)

(assert (=> b!1207886 (= e!686021 e!686020)))

(declare-fun res!803059 () Bool)

(assert (=> b!1207886 (=> res!803059 e!686020)))

(assert (=> b!1207886 (= res!803059 (not (= from!1455 i!673)))))

(declare-fun lt!548098 () ListLongMap!17871)

(assert (=> b!1207886 (= lt!548098 (getCurrentListMapNoExtraKeys!5358 lt!548103 lt!548109 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3277 (Int (_ BitVec 64)) V!46025)

(assert (=> b!1207886 (= lt!548109 (array!78107 (store (arr!37688 _values!996) i!673 (ValueCellFull!14627 (dynLambda!3277 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38225 _values!996)))))

(declare-fun lt!548100 () ListLongMap!17871)

(assert (=> b!1207886 (= lt!548100 (getCurrentListMapNoExtraKeys!5358 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun bm!59028 () Bool)

(assert (=> bm!59028 (= call!59030 call!59029)))

(declare-fun b!1207887 () Bool)

(declare-fun e!686013 () Unit!39970)

(declare-fun lt!548097 () Unit!39970)

(assert (=> b!1207887 (= e!686013 lt!548097)))

(assert (=> b!1207887 (= lt!548097 call!59028)))

(assert (=> b!1207887 call!59030))

(declare-fun b!1207888 () Bool)

(assert (=> b!1207888 (= e!686015 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1207889 () Bool)

(declare-fun e!686012 () Bool)

(assert (=> b!1207889 (= e!686017 (and e!686012 mapRes!47872))))

(declare-fun condMapEmpty!47872 () Bool)

(declare-fun mapDefault!47872 () ValueCell!14627)

