; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100942 () Bool)

(assert start!100942)

(declare-fun b_free!25975 () Bool)

(declare-fun b_next!25975 () Bool)

(assert (=> start!100942 (= b_free!25975 (not b_next!25975))))

(declare-fun tp!90935 () Bool)

(declare-fun b_and!43005 () Bool)

(assert (=> start!100942 (= tp!90935 b_and!43005)))

(declare-fun bm!59094 () Bool)

(declare-datatypes ((V!46033 0))(
  ( (V!46034 (val!15396 Int)) )
))
(declare-datatypes ((tuple2!19896 0))(
  ( (tuple2!19897 (_1!9958 (_ BitVec 64)) (_2!9958 V!46033)) )
))
(declare-datatypes ((List!26718 0))(
  ( (Nil!26715) (Cons!26714 (h!27923 tuple2!19896) (t!39680 List!26718)) )
))
(declare-datatypes ((ListLongMap!17877 0))(
  ( (ListLongMap!17878 (toList!8954 List!26718)) )
))
(declare-fun call!59098 () ListLongMap!17877)

(declare-fun call!59104 () ListLongMap!17877)

(assert (=> bm!59094 (= call!59098 call!59104)))

(declare-fun bm!59095 () Bool)

(declare-datatypes ((Unit!39977 0))(
  ( (Unit!39978) )
))
(declare-fun call!59097 () Unit!39977)

(declare-fun call!59099 () Unit!39977)

(assert (=> bm!59095 (= call!59097 call!59099)))

(declare-fun bm!59096 () Bool)

(declare-fun lt!548242 () ListLongMap!17877)

(declare-fun minValue!944 () V!46033)

(declare-fun c!118789 () Bool)

(declare-fun zeroValue!944 () V!46033)

(declare-fun c!118788 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun addStillContains!1047 (ListLongMap!17877 (_ BitVec 64) V!46033 (_ BitVec 64)) Unit!39977)

(assert (=> bm!59096 (= call!59099 (addStillContains!1047 lt!548242 (ite (or c!118789 c!118788) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!118789 c!118788) zeroValue!944 minValue!944) k!934))))

(declare-fun b!1208135 () Bool)

(declare-fun e!686162 () Bool)

(declare-fun e!686169 () Bool)

(assert (=> b!1208135 (= e!686162 e!686169)))

(declare-fun res!803202 () Bool)

(assert (=> b!1208135 (=> (not res!803202) (not e!686169))))

(declare-datatypes ((array!78116 0))(
  ( (array!78117 (arr!37693 (Array (_ BitVec 32) (_ BitVec 64))) (size!38230 (_ BitVec 32))) )
))
(declare-fun lt!548248 () array!78116)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78116 (_ BitVec 32)) Bool)

(assert (=> b!1208135 (= res!803202 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!548248 mask!1564))))

(declare-fun _keys!1208 () array!78116)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1208135 (= lt!548248 (array!78117 (store (arr!37693 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38230 _keys!1208)))))

(declare-fun b!1208136 () Bool)

(declare-fun res!803203 () Bool)

(assert (=> b!1208136 (=> (not res!803203) (not e!686162))))

(declare-datatypes ((List!26719 0))(
  ( (Nil!26716) (Cons!26715 (h!27924 (_ BitVec 64)) (t!39681 List!26719)) )
))
(declare-fun arrayNoDuplicates!0 (array!78116 (_ BitVec 32) List!26719) Bool)

(assert (=> b!1208136 (= res!803203 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26716))))

(declare-fun b!1208137 () Bool)

(declare-fun res!803195 () Bool)

(assert (=> b!1208137 (=> (not res!803195) (not e!686162))))

(assert (=> b!1208137 (= res!803195 (= (select (arr!37693 _keys!1208) i!673) k!934))))

(declare-fun b!1208138 () Bool)

(declare-fun e!686173 () Unit!39977)

(declare-fun Unit!39979 () Unit!39977)

(assert (=> b!1208138 (= e!686173 Unit!39979)))

(declare-fun e!686170 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!548240 () Bool)

(declare-fun b!1208139 () Bool)

(assert (=> b!1208139 (= e!686170 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!548240) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1208140 () Bool)

(declare-fun e!686159 () Bool)

(declare-fun e!686168 () Bool)

(assert (=> b!1208140 (= e!686159 e!686168)))

(declare-fun res!803196 () Bool)

(assert (=> b!1208140 (=> res!803196 e!686168)))

(declare-fun contains!6959 (ListLongMap!17877 (_ BitVec 64)) Bool)

(assert (=> b!1208140 (= res!803196 (not (contains!6959 lt!548242 k!934)))))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14630 0))(
  ( (ValueCellFull!14630 (v!18045 V!46033)) (EmptyCell!14630) )
))
(declare-datatypes ((array!78118 0))(
  ( (array!78119 (arr!37694 (Array (_ BitVec 32) ValueCell!14630)) (size!38231 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78118)

(declare-fun getCurrentListMapNoExtraKeys!5361 (array!78116 array!78118 (_ BitVec 32) (_ BitVec 32) V!46033 V!46033 (_ BitVec 32) Int) ListLongMap!17877)

(assert (=> b!1208140 (= lt!548242 (getCurrentListMapNoExtraKeys!5361 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1208141 () Bool)

(declare-fun res!803204 () Bool)

(assert (=> b!1208141 (=> (not res!803204) (not e!686162))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1208141 (= res!803204 (validKeyInArray!0 k!934))))

(declare-fun b!1208142 () Bool)

(declare-fun e!686161 () Unit!39977)

(declare-fun lt!548243 () Unit!39977)

(assert (=> b!1208142 (= e!686161 lt!548243)))

(declare-fun lt!548239 () Unit!39977)

(assert (=> b!1208142 (= lt!548239 call!59099)))

(declare-fun lt!548252 () ListLongMap!17877)

(assert (=> b!1208142 (= lt!548252 call!59104)))

(declare-fun call!59100 () Bool)

(assert (=> b!1208142 call!59100))

(assert (=> b!1208142 (= lt!548243 (addStillContains!1047 lt!548252 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(declare-fun +!3982 (ListLongMap!17877 tuple2!19896) ListLongMap!17877)

(assert (=> b!1208142 (contains!6959 (+!3982 lt!548252 (tuple2!19897 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun mapNonEmpty!47881 () Bool)

(declare-fun mapRes!47881 () Bool)

(declare-fun tp!90936 () Bool)

(declare-fun e!686172 () Bool)

(assert (=> mapNonEmpty!47881 (= mapRes!47881 (and tp!90936 e!686172))))

(declare-fun mapKey!47881 () (_ BitVec 32))

(declare-fun mapRest!47881 () (Array (_ BitVec 32) ValueCell!14630))

(declare-fun mapValue!47881 () ValueCell!14630)

(assert (=> mapNonEmpty!47881 (= (arr!37694 _values!996) (store mapRest!47881 mapKey!47881 mapValue!47881))))

(declare-fun b!1208143 () Bool)

(declare-fun call!59101 () Bool)

(assert (=> b!1208143 call!59101))

(declare-fun lt!548244 () Unit!39977)

(assert (=> b!1208143 (= lt!548244 call!59097)))

(declare-fun e!686167 () Unit!39977)

(assert (=> b!1208143 (= e!686167 lt!548244)))

(declare-fun b!1208144 () Bool)

(declare-fun e!686165 () Bool)

(assert (=> b!1208144 (= e!686169 (not e!686165))))

(declare-fun res!803200 () Bool)

(assert (=> b!1208144 (=> res!803200 e!686165)))

(assert (=> b!1208144 (= res!803200 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!78116 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1208144 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!548247 () Unit!39977)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78116 (_ BitVec 64) (_ BitVec 32)) Unit!39977)

(assert (=> b!1208144 (= lt!548247 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1208145 () Bool)

(declare-fun e!686164 () Bool)

(assert (=> b!1208145 (= e!686164 e!686159)))

(declare-fun res!803201 () Bool)

(assert (=> b!1208145 (=> res!803201 e!686159)))

(assert (=> b!1208145 (= res!803201 (not (= (select (arr!37693 _keys!1208) from!1455) k!934)))))

(declare-fun e!686163 () Bool)

(assert (=> b!1208145 e!686163))

(declare-fun c!118787 () Bool)

(assert (=> b!1208145 (= c!118787 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!548249 () Unit!39977)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1064 (array!78116 array!78118 (_ BitVec 32) (_ BitVec 32) V!46033 V!46033 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39977)

(assert (=> b!1208145 (= lt!548249 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1064 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1208146 () Bool)

(assert (=> b!1208146 (= e!686165 e!686164)))

(declare-fun res!803207 () Bool)

(assert (=> b!1208146 (=> res!803207 e!686164)))

(assert (=> b!1208146 (= res!803207 (not (= from!1455 i!673)))))

(declare-fun lt!548250 () array!78118)

(declare-fun lt!548241 () ListLongMap!17877)

(assert (=> b!1208146 (= lt!548241 (getCurrentListMapNoExtraKeys!5361 lt!548248 lt!548250 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3279 (Int (_ BitVec 64)) V!46033)

(assert (=> b!1208146 (= lt!548250 (array!78119 (store (arr!37694 _values!996) i!673 (ValueCellFull!14630 (dynLambda!3279 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38231 _values!996)))))

(declare-fun lt!548246 () ListLongMap!17877)

(assert (=> b!1208146 (= lt!548246 (getCurrentListMapNoExtraKeys!5361 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1208147 () Bool)

(declare-fun call!59102 () ListLongMap!17877)

(declare-fun call!59103 () ListLongMap!17877)

(assert (=> b!1208147 (= e!686163 (= call!59102 call!59103))))

(declare-fun res!803199 () Bool)

(assert (=> start!100942 (=> (not res!803199) (not e!686162))))

(assert (=> start!100942 (= res!803199 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38230 _keys!1208))))))

(assert (=> start!100942 e!686162))

(declare-fun tp_is_empty!30679 () Bool)

(assert (=> start!100942 tp_is_empty!30679))

(declare-fun array_inv!28618 (array!78116) Bool)

(assert (=> start!100942 (array_inv!28618 _keys!1208)))

(assert (=> start!100942 true))

(assert (=> start!100942 tp!90935))

(declare-fun e!686166 () Bool)

(declare-fun array_inv!28619 (array!78118) Bool)

(assert (=> start!100942 (and (array_inv!28619 _values!996) e!686166)))

(declare-fun b!1208148 () Bool)

(declare-fun lt!548251 () Unit!39977)

(assert (=> b!1208148 (= e!686173 lt!548251)))

(assert (=> b!1208148 (= lt!548251 call!59097)))

(assert (=> b!1208148 call!59101))

(declare-fun b!1208149 () Bool)

(assert (=> b!1208149 (= e!686161 e!686167)))

(assert (=> b!1208149 (= c!118788 (and (not lt!548240) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!59097 () Bool)

(assert (=> bm!59097 (= call!59104 (+!3982 lt!548242 (ite (or c!118789 c!118788) (tuple2!19897 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19897 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun bm!59098 () Bool)

(assert (=> bm!59098 (= call!59101 call!59100)))

(declare-fun b!1208150 () Bool)

(assert (=> b!1208150 (= e!686170 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1208151 () Bool)

(declare-fun e!686158 () Bool)

(assert (=> b!1208151 (= e!686158 tp_is_empty!30679)))

(declare-fun b!1208152 () Bool)

(declare-fun res!803209 () Bool)

(assert (=> b!1208152 (=> (not res!803209) (not e!686169))))

(assert (=> b!1208152 (= res!803209 (arrayNoDuplicates!0 lt!548248 #b00000000000000000000000000000000 Nil!26716))))

(declare-fun b!1208153 () Bool)

(declare-fun e!686171 () Bool)

(assert (=> b!1208153 (= e!686168 e!686171)))

(declare-fun res!803198 () Bool)

(assert (=> b!1208153 (=> res!803198 e!686171)))

(assert (=> b!1208153 (= res!803198 (or (bvsge (size!38230 _keys!1208) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!38230 _keys!1208)) (bvsge from!1455 (size!38230 _keys!1208))))))

(assert (=> b!1208153 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26716)))

(declare-fun lt!548238 () Unit!39977)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78116 (_ BitVec 32) (_ BitVec 32)) Unit!39977)

(assert (=> b!1208153 (= lt!548238 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-fun e!686174 () Bool)

(assert (=> b!1208153 e!686174))

(declare-fun res!803210 () Bool)

(assert (=> b!1208153 (=> (not res!803210) (not e!686174))))

(assert (=> b!1208153 (= res!803210 e!686170)))

(declare-fun c!118790 () Bool)

(assert (=> b!1208153 (= c!118790 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!548253 () Unit!39977)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!584 (array!78116 array!78118 (_ BitVec 32) (_ BitVec 32) V!46033 V!46033 (_ BitVec 64) (_ BitVec 32) Int) Unit!39977)

(assert (=> b!1208153 (= lt!548253 (lemmaListMapContainsThenArrayContainsFrom!584 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!548245 () Unit!39977)

(assert (=> b!1208153 (= lt!548245 e!686161)))

(assert (=> b!1208153 (= c!118789 (and (not lt!548240) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1208153 (= lt!548240 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1208154 () Bool)

(declare-fun res!803208 () Bool)

(assert (=> b!1208154 (=> (not res!803208) (not e!686162))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1208154 (= res!803208 (validMask!0 mask!1564))))

(declare-fun b!1208155 () Bool)

(declare-fun res!803197 () Bool)

(assert (=> b!1208155 (=> (not res!803197) (not e!686162))))

(assert (=> b!1208155 (= res!803197 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1208156 () Bool)

(assert (=> b!1208156 (= e!686174 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!59099 () Bool)

(assert (=> bm!59099 (= call!59103 (getCurrentListMapNoExtraKeys!5361 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!47881 () Bool)

(assert (=> mapIsEmpty!47881 mapRes!47881))

(declare-fun b!1208157 () Bool)

(declare-fun c!118786 () Bool)

(assert (=> b!1208157 (= c!118786 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!548240))))

(assert (=> b!1208157 (= e!686167 e!686173)))

(declare-fun bm!59100 () Bool)

(assert (=> bm!59100 (= call!59100 (contains!6959 (ite c!118789 lt!548252 call!59098) k!934))))

(declare-fun b!1208158 () Bool)

(declare-fun noDuplicate!1644 (List!26719) Bool)

(assert (=> b!1208158 (= e!686171 (noDuplicate!1644 Nil!26716))))

(declare-fun b!1208159 () Bool)

(declare-fun res!803206 () Bool)

(assert (=> b!1208159 (=> (not res!803206) (not e!686162))))

(assert (=> b!1208159 (= res!803206 (and (= (size!38231 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38230 _keys!1208) (size!38231 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1208160 () Bool)

(declare-fun -!1860 (ListLongMap!17877 (_ BitVec 64)) ListLongMap!17877)

(assert (=> b!1208160 (= e!686163 (= call!59102 (-!1860 call!59103 k!934)))))

(declare-fun b!1208161 () Bool)

(assert (=> b!1208161 (= e!686166 (and e!686158 mapRes!47881))))

(declare-fun condMapEmpty!47881 () Bool)

(declare-fun mapDefault!47881 () ValueCell!14630)

