; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101104 () Bool)

(assert start!101104)

(declare-fun b_free!26029 () Bool)

(declare-fun b_next!26029 () Bool)

(assert (=> start!101104 (= b_free!26029 (not b_next!26029))))

(declare-fun tp!91106 () Bool)

(declare-fun b_and!43167 () Bool)

(assert (=> start!101104 (= tp!91106 b_and!43167)))

(declare-fun b!1211117 () Bool)

(declare-fun e!687856 () Bool)

(declare-fun e!687862 () Bool)

(assert (=> b!1211117 (= e!687856 e!687862)))

(declare-fun res!804701 () Bool)

(assert (=> b!1211117 (=> (not res!804701) (not e!687862))))

(declare-datatypes ((array!78224 0))(
  ( (array!78225 (arr!37744 (Array (_ BitVec 32) (_ BitVec 64))) (size!38281 (_ BitVec 32))) )
))
(declare-fun lt!550033 () array!78224)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78224 (_ BitVec 32)) Bool)

(assert (=> b!1211117 (= res!804701 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!550033 mask!1564))))

(declare-fun _keys!1208 () array!78224)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1211117 (= lt!550033 (array!78225 (store (arr!37744 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38281 _keys!1208)))))

(declare-fun b!1211118 () Bool)

(declare-fun res!804711 () Bool)

(assert (=> b!1211118 (=> (not res!804711) (not e!687856))))

(assert (=> b!1211118 (= res!804711 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38281 _keys!1208))))))

(declare-fun b!1211119 () Bool)

(declare-fun res!804707 () Bool)

(assert (=> b!1211119 (=> (not res!804707) (not e!687856))))

(assert (=> b!1211119 (= res!804707 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!59805 () Bool)

(declare-fun call!59808 () Bool)

(declare-fun call!59813 () Bool)

(assert (=> bm!59805 (= call!59808 call!59813)))

(declare-fun bm!59806 () Bool)

(declare-datatypes ((Unit!40067 0))(
  ( (Unit!40068) )
))
(declare-fun call!59810 () Unit!40067)

(declare-fun call!59812 () Unit!40067)

(assert (=> bm!59806 (= call!59810 call!59812)))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!550014 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun e!687860 () Bool)

(declare-fun b!1211120 () Bool)

(assert (=> b!1211120 (= e!687860 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!550014) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1211121 () Bool)

(declare-fun e!687863 () Unit!40067)

(declare-fun lt!550024 () Unit!40067)

(assert (=> b!1211121 (= e!687863 lt!550024)))

(assert (=> b!1211121 (= lt!550024 call!59810)))

(assert (=> b!1211121 call!59808))

(declare-fun bm!59807 () Bool)

(declare-datatypes ((V!46105 0))(
  ( (V!46106 (val!15423 Int)) )
))
(declare-datatypes ((tuple2!19944 0))(
  ( (tuple2!19945 (_1!9982 (_ BitVec 64)) (_2!9982 V!46105)) )
))
(declare-datatypes ((List!26763 0))(
  ( (Nil!26760) (Cons!26759 (h!27968 tuple2!19944) (t!39779 List!26763)) )
))
(declare-datatypes ((ListLongMap!17925 0))(
  ( (ListLongMap!17926 (toList!8978 List!26763)) )
))
(declare-fun call!59814 () ListLongMap!17925)

(declare-fun call!59811 () ListLongMap!17925)

(assert (=> bm!59807 (= call!59814 call!59811)))

(declare-fun b!1211122 () Bool)

(declare-fun e!687871 () Bool)

(declare-fun call!59815 () ListLongMap!17925)

(declare-fun call!59809 () ListLongMap!17925)

(assert (=> b!1211122 (= e!687871 (= call!59815 call!59809))))

(declare-fun b!1211124 () Bool)

(declare-fun e!687858 () Bool)

(declare-fun tp_is_empty!30733 () Bool)

(assert (=> b!1211124 (= e!687858 tp_is_empty!30733)))

(declare-fun b!1211125 () Bool)

(assert (=> b!1211125 call!59808))

(declare-fun lt!550018 () Unit!40067)

(assert (=> b!1211125 (= lt!550018 call!59810)))

(declare-fun e!687866 () Unit!40067)

(assert (=> b!1211125 (= e!687866 lt!550018)))

(declare-fun b!1211126 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!78224 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1211126 (= e!687860 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!59808 () Bool)

(declare-fun c!119367 () Bool)

(declare-fun lt!550029 () ListLongMap!17925)

(declare-fun contains!6993 (ListLongMap!17925 (_ BitVec 64)) Bool)

(assert (=> bm!59808 (= call!59813 (contains!6993 (ite c!119367 lt!550029 call!59814) k!934))))

(declare-fun b!1211127 () Bool)

(declare-fun res!804708 () Bool)

(assert (=> b!1211127 (=> (not res!804708) (not e!687856))))

(assert (=> b!1211127 (= res!804708 (= (select (arr!37744 _keys!1208) i!673) k!934))))

(declare-fun b!1211128 () Bool)

(declare-fun e!687865 () Bool)

(declare-fun e!687864 () Bool)

(assert (=> b!1211128 (= e!687865 e!687864)))

(declare-fun res!804699 () Bool)

(assert (=> b!1211128 (=> res!804699 e!687864)))

(assert (=> b!1211128 (= res!804699 (not (= (select (arr!37744 _keys!1208) from!1455) k!934)))))

(assert (=> b!1211128 e!687871))

(declare-fun c!119365 () Bool)

(assert (=> b!1211128 (= c!119365 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun zeroValue!944 () V!46105)

(declare-fun lt!550030 () Unit!40067)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!14657 0))(
  ( (ValueCellFull!14657 (v!18076 V!46105)) (EmptyCell!14657) )
))
(declare-datatypes ((array!78226 0))(
  ( (array!78227 (arr!37745 (Array (_ BitVec 32) ValueCell!14657)) (size!38282 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78226)

(declare-fun minValue!944 () V!46105)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1084 (array!78224 array!78226 (_ BitVec 32) (_ BitVec 32) V!46105 V!46105 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40067)

(assert (=> b!1211128 (= lt!550030 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1084 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1211129 () Bool)

(declare-fun e!687857 () Bool)

(assert (=> b!1211129 (= e!687857 e!687865)))

(declare-fun res!804704 () Bool)

(assert (=> b!1211129 (=> res!804704 e!687865)))

(assert (=> b!1211129 (= res!804704 (not (= from!1455 i!673)))))

(declare-fun lt!550028 () array!78226)

(declare-fun lt!550025 () ListLongMap!17925)

(declare-fun getCurrentListMapNoExtraKeys!5383 (array!78224 array!78226 (_ BitVec 32) (_ BitVec 32) V!46105 V!46105 (_ BitVec 32) Int) ListLongMap!17925)

(assert (=> b!1211129 (= lt!550025 (getCurrentListMapNoExtraKeys!5383 lt!550033 lt!550028 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!550027 () V!46105)

(assert (=> b!1211129 (= lt!550028 (array!78227 (store (arr!37745 _values!996) i!673 (ValueCellFull!14657 lt!550027)) (size!38282 _values!996)))))

(declare-fun dynLambda!3298 (Int (_ BitVec 64)) V!46105)

(assert (=> b!1211129 (= lt!550027 (dynLambda!3298 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!550017 () ListLongMap!17925)

(assert (=> b!1211129 (= lt!550017 (getCurrentListMapNoExtraKeys!5383 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1211130 () Bool)

(declare-fun e!687869 () Unit!40067)

(declare-fun Unit!40069 () Unit!40067)

(assert (=> b!1211130 (= e!687869 Unit!40069)))

(assert (=> b!1211130 (= lt!550014 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1211130 (= c!119367 (and (not lt!550014) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!550032 () Unit!40067)

(declare-fun e!687872 () Unit!40067)

(assert (=> b!1211130 (= lt!550032 e!687872)))

(declare-fun lt!550026 () Unit!40067)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!603 (array!78224 array!78226 (_ BitVec 32) (_ BitVec 32) V!46105 V!46105 (_ BitVec 64) (_ BitVec 32) Int) Unit!40067)

(assert (=> b!1211130 (= lt!550026 (lemmaListMapContainsThenArrayContainsFrom!603 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!119369 () Bool)

(assert (=> b!1211130 (= c!119369 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!804706 () Bool)

(assert (=> b!1211130 (= res!804706 e!687860)))

(declare-fun e!687861 () Bool)

(assert (=> b!1211130 (=> (not res!804706) (not e!687861))))

(assert (=> b!1211130 e!687861))

(declare-fun lt!550019 () Unit!40067)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78224 (_ BitVec 32) (_ BitVec 32)) Unit!40067)

(assert (=> b!1211130 (= lt!550019 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!26764 0))(
  ( (Nil!26761) (Cons!26760 (h!27969 (_ BitVec 64)) (t!39780 List!26764)) )
))
(declare-fun arrayNoDuplicates!0 (array!78224 (_ BitVec 32) List!26764) Bool)

(assert (=> b!1211130 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26761)))

(declare-fun lt!550021 () Unit!40067)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!78224 (_ BitVec 64) (_ BitVec 32) List!26764) Unit!40067)

(assert (=> b!1211130 (= lt!550021 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!26761))))

(assert (=> b!1211130 false))

(declare-fun b!1211131 () Bool)

(declare-fun +!4005 (ListLongMap!17925 tuple2!19944) ListLongMap!17925)

(assert (=> b!1211131 (contains!6993 (+!4005 lt!550029 (tuple2!19945 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun lt!550031 () Unit!40067)

(declare-fun addStillContains!1066 (ListLongMap!17925 (_ BitVec 64) V!46105 (_ BitVec 64)) Unit!40067)

(assert (=> b!1211131 (= lt!550031 (addStillContains!1066 lt!550029 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(assert (=> b!1211131 call!59813))

(assert (=> b!1211131 (= lt!550029 call!59811)))

(declare-fun lt!550015 () Unit!40067)

(assert (=> b!1211131 (= lt!550015 call!59812)))

(assert (=> b!1211131 (= e!687872 lt!550031)))

(declare-fun b!1211132 () Bool)

(declare-fun Unit!40070 () Unit!40067)

(assert (=> b!1211132 (= e!687866 Unit!40070)))

(declare-fun mapIsEmpty!47971 () Bool)

(declare-fun mapRes!47971 () Bool)

(assert (=> mapIsEmpty!47971 mapRes!47971))

(declare-fun b!1211133 () Bool)

(declare-fun res!804697 () Bool)

(assert (=> b!1211133 (=> (not res!804697) (not e!687856))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1211133 (= res!804697 (validKeyInArray!0 k!934))))

(declare-fun b!1211134 () Bool)

(declare-fun res!804705 () Bool)

(assert (=> b!1211134 (=> (not res!804705) (not e!687862))))

(assert (=> b!1211134 (= res!804705 (arrayNoDuplicates!0 lt!550033 #b00000000000000000000000000000000 Nil!26761))))

(declare-fun mapNonEmpty!47971 () Bool)

(declare-fun tp!91107 () Bool)

(declare-fun e!687868 () Bool)

(assert (=> mapNonEmpty!47971 (= mapRes!47971 (and tp!91107 e!687868))))

(declare-fun mapValue!47971 () ValueCell!14657)

(declare-fun mapKey!47971 () (_ BitVec 32))

(declare-fun mapRest!47971 () (Array (_ BitVec 32) ValueCell!14657))

(assert (=> mapNonEmpty!47971 (= (arr!37745 _values!996) (store mapRest!47971 mapKey!47971 mapValue!47971))))

(declare-fun bm!59809 () Bool)

(assert (=> bm!59809 (= call!59815 (getCurrentListMapNoExtraKeys!5383 lt!550033 lt!550028 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!59810 () Bool)

(assert (=> bm!59810 (= call!59809 (getCurrentListMapNoExtraKeys!5383 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1211135 () Bool)

(assert (=> b!1211135 (= e!687864 true)))

(declare-fun e!687870 () Bool)

(assert (=> b!1211135 e!687870))

(declare-fun res!804710 () Bool)

(assert (=> b!1211135 (=> (not res!804710) (not e!687870))))

(declare-fun lt!550022 () ListLongMap!17925)

(declare-fun lt!550013 () V!46105)

(declare-fun -!1876 (ListLongMap!17925 (_ BitVec 64)) ListLongMap!17925)

(assert (=> b!1211135 (= res!804710 (= (-!1876 (+!4005 lt!550022 (tuple2!19945 (select (arr!37744 _keys!1208) from!1455) lt!550013)) (select (arr!37744 _keys!1208) from!1455)) lt!550022))))

(declare-fun lt!550016 () Unit!40067)

(declare-fun addThenRemoveForNewKeyIsSame!278 (ListLongMap!17925 (_ BitVec 64) V!46105) Unit!40067)

(assert (=> b!1211135 (= lt!550016 (addThenRemoveForNewKeyIsSame!278 lt!550022 (select (arr!37744 _keys!1208) from!1455) lt!550013))))

(declare-fun get!19278 (ValueCell!14657 V!46105) V!46105)

(assert (=> b!1211135 (= lt!550013 (get!19278 (select (arr!37745 _values!996) from!1455) lt!550027))))

(declare-fun lt!550023 () Unit!40067)

(assert (=> b!1211135 (= lt!550023 e!687869)))

(declare-fun c!119368 () Bool)

(assert (=> b!1211135 (= c!119368 (contains!6993 lt!550022 k!934))))

(assert (=> b!1211135 (= lt!550022 (getCurrentListMapNoExtraKeys!5383 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1211136 () Bool)

(declare-fun res!804709 () Bool)

(assert (=> b!1211136 (=> (not res!804709) (not e!687856))))

(assert (=> b!1211136 (= res!804709 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26761))))

(declare-fun b!1211137 () Bool)

(declare-fun res!804698 () Bool)

(assert (=> b!1211137 (=> (not res!804698) (not e!687856))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1211137 (= res!804698 (validMask!0 mask!1564))))

(declare-fun b!1211138 () Bool)

(declare-fun c!119366 () Bool)

(assert (=> b!1211138 (= c!119366 (and (not lt!550014) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1211138 (= e!687872 e!687863)))

(declare-fun b!1211139 () Bool)

(declare-fun res!804703 () Bool)

(assert (=> b!1211139 (=> (not res!804703) (not e!687856))))

(assert (=> b!1211139 (= res!804703 (and (= (size!38282 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38281 _keys!1208) (size!38282 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1211140 () Bool)

(assert (=> b!1211140 (= e!687862 (not e!687857))))

(declare-fun res!804702 () Bool)

(assert (=> b!1211140 (=> res!804702 e!687857)))

(assert (=> b!1211140 (= res!804702 (bvsgt from!1455 i!673))))

(assert (=> b!1211140 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!550020 () Unit!40067)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78224 (_ BitVec 64) (_ BitVec 32)) Unit!40067)

(assert (=> b!1211140 (= lt!550020 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1211141 () Bool)

(assert (=> b!1211141 (= e!687871 (= call!59815 (-!1876 call!59809 k!934)))))

(declare-fun bm!59811 () Bool)

(assert (=> bm!59811 (= call!59811 (+!4005 lt!550022 (ite (or c!119367 c!119366) (tuple2!19945 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19945 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1211142 () Bool)

(assert (=> b!1211142 (= e!687868 tp_is_empty!30733)))

(declare-fun b!1211143 () Bool)

(assert (=> b!1211143 (= e!687863 e!687866)))

(declare-fun c!119364 () Bool)

(assert (=> b!1211143 (= c!119364 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!550014))))

(declare-fun res!804700 () Bool)

(assert (=> start!101104 (=> (not res!804700) (not e!687856))))

(assert (=> start!101104 (= res!804700 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38281 _keys!1208))))))

(assert (=> start!101104 e!687856))

(assert (=> start!101104 tp_is_empty!30733))

(declare-fun array_inv!28650 (array!78224) Bool)

(assert (=> start!101104 (array_inv!28650 _keys!1208)))

(assert (=> start!101104 true))

(assert (=> start!101104 tp!91106))

(declare-fun e!687867 () Bool)

(declare-fun array_inv!28651 (array!78226) Bool)

(assert (=> start!101104 (and (array_inv!28651 _values!996) e!687867)))

(declare-fun b!1211123 () Bool)

(assert (=> b!1211123 (= e!687870 (= (-!1876 lt!550017 k!934) lt!550022))))

(declare-fun b!1211144 () Bool)

(declare-fun Unit!40071 () Unit!40067)

(assert (=> b!1211144 (= e!687869 Unit!40071)))

(declare-fun b!1211145 () Bool)

(assert (=> b!1211145 (= e!687867 (and e!687858 mapRes!47971))))

(declare-fun condMapEmpty!47971 () Bool)

(declare-fun mapDefault!47971 () ValueCell!14657)

