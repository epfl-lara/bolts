; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101204 () Bool)

(assert start!101204)

(declare-fun b_free!26091 () Bool)

(declare-fun b_next!26091 () Bool)

(assert (=> start!101204 (= b_free!26091 (not b_next!26091))))

(declare-fun tp!91295 () Bool)

(declare-fun b_and!43309 () Bool)

(assert (=> start!101204 (= tp!91295 b_and!43309)))

(declare-fun b!1214136 () Bool)

(declare-datatypes ((V!46187 0))(
  ( (V!46188 (val!15454 Int)) )
))
(declare-datatypes ((tuple2!20002 0))(
  ( (tuple2!20003 (_1!10011 (_ BitVec 64)) (_2!10011 V!46187)) )
))
(declare-datatypes ((List!26821 0))(
  ( (Nil!26818) (Cons!26817 (h!28026 tuple2!20002) (t!39899 List!26821)) )
))
(declare-datatypes ((ListLongMap!17983 0))(
  ( (ListLongMap!17984 (toList!9007 List!26821)) )
))
(declare-fun lt!552183 () ListLongMap!17983)

(declare-fun minValue!944 () V!46187)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun contains!7021 (ListLongMap!17983 (_ BitVec 64)) Bool)

(declare-fun +!4032 (ListLongMap!17983 tuple2!20002) ListLongMap!17983)

(assert (=> b!1214136 (contains!7021 (+!4032 lt!552183 (tuple2!20003 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-datatypes ((Unit!40197 0))(
  ( (Unit!40198) )
))
(declare-fun lt!552175 () Unit!40197)

(declare-fun addStillContains!1089 (ListLongMap!17983 (_ BitVec 64) V!46187 (_ BitVec 64)) Unit!40197)

(assert (=> b!1214136 (= lt!552175 (addStillContains!1089 lt!552183 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(declare-fun call!60573 () Bool)

(assert (=> b!1214136 call!60573))

(declare-fun call!60574 () ListLongMap!17983)

(assert (=> b!1214136 (= lt!552183 call!60574)))

(declare-fun lt!552170 () Unit!40197)

(declare-fun call!60579 () Unit!40197)

(assert (=> b!1214136 (= lt!552170 call!60579)))

(declare-fun e!689551 () Unit!40197)

(assert (=> b!1214136 (= e!689551 lt!552175)))

(declare-fun mapNonEmpty!48067 () Bool)

(declare-fun mapRes!48067 () Bool)

(declare-fun tp!91296 () Bool)

(declare-fun e!689558 () Bool)

(assert (=> mapNonEmpty!48067 (= mapRes!48067 (and tp!91296 e!689558))))

(declare-datatypes ((ValueCell!14688 0))(
  ( (ValueCellFull!14688 (v!18108 V!46187)) (EmptyCell!14688) )
))
(declare-fun mapRest!48067 () (Array (_ BitVec 32) ValueCell!14688))

(declare-fun mapValue!48067 () ValueCell!14688)

(declare-fun mapKey!48067 () (_ BitVec 32))

(declare-datatypes ((array!78350 0))(
  ( (array!78351 (arr!37806 (Array (_ BitVec 32) ValueCell!14688)) (size!38343 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78350)

(assert (=> mapNonEmpty!48067 (= (arr!37806 _values!996) (store mapRest!48067 mapKey!48067 mapValue!48067))))

(declare-fun b!1214137 () Bool)

(declare-fun e!689552 () Bool)

(declare-fun e!689549 () Bool)

(assert (=> b!1214137 (= e!689552 e!689549)))

(declare-fun res!806170 () Bool)

(assert (=> b!1214137 (=> res!806170 e!689549)))

(declare-datatypes ((array!78352 0))(
  ( (array!78353 (arr!37807 (Array (_ BitVec 32) (_ BitVec 64))) (size!38344 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78352)

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1214137 (= res!806170 (not (= (select (arr!37807 _keys!1208) from!1455) k0!934)))))

(declare-fun e!689545 () Bool)

(assert (=> b!1214137 e!689545))

(declare-fun c!119969 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1214137 (= c!119969 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun zeroValue!944 () V!46187)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!552169 () Unit!40197)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1103 (array!78352 array!78350 (_ BitVec 32) (_ BitVec 32) V!46187 V!46187 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40197)

(assert (=> b!1214137 (= lt!552169 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1103 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!60570 () Bool)

(declare-fun lt!552171 () array!78352)

(declare-fun call!60577 () ListLongMap!17983)

(declare-fun lt!552180 () array!78350)

(declare-fun getCurrentListMapNoExtraKeys!5412 (array!78352 array!78350 (_ BitVec 32) (_ BitVec 32) V!46187 V!46187 (_ BitVec 32) Int) ListLongMap!17983)

(assert (=> bm!60570 (= call!60577 (getCurrentListMapNoExtraKeys!5412 lt!552171 lt!552180 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!119974 () Bool)

(declare-fun bm!60571 () Bool)

(declare-fun call!60578 () ListLongMap!17983)

(assert (=> bm!60571 (= call!60573 (contains!7021 (ite c!119974 lt!552183 call!60578) k0!934))))

(declare-fun b!1214138 () Bool)

(declare-fun e!689544 () Unit!40197)

(declare-fun lt!552165 () Unit!40197)

(assert (=> b!1214138 (= e!689544 lt!552165)))

(declare-fun call!60580 () Unit!40197)

(assert (=> b!1214138 (= lt!552165 call!60580)))

(declare-fun call!60576 () Bool)

(assert (=> b!1214138 call!60576))

(declare-fun b!1214139 () Bool)

(declare-fun res!806159 () Bool)

(declare-fun e!689546 () Bool)

(assert (=> b!1214139 (=> (not res!806159) (not e!689546))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1214139 (= res!806159 (validMask!0 mask!1564))))

(declare-fun c!119970 () Bool)

(declare-fun bm!60572 () Bool)

(declare-fun lt!552167 () ListLongMap!17983)

(assert (=> bm!60572 (= call!60579 (addStillContains!1089 lt!552167 (ite (or c!119974 c!119970) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!119974 c!119970) zeroValue!944 minValue!944) k0!934))))

(declare-fun b!1214140 () Bool)

(declare-fun call!60575 () ListLongMap!17983)

(assert (=> b!1214140 (= e!689545 (= call!60577 call!60575))))

(declare-fun b!1214141 () Bool)

(declare-fun e!689543 () Bool)

(assert (=> b!1214141 (= e!689543 e!689552)))

(declare-fun res!806164 () Bool)

(assert (=> b!1214141 (=> res!806164 e!689552)))

(assert (=> b!1214141 (= res!806164 (not (= from!1455 i!673)))))

(declare-fun lt!552173 () ListLongMap!17983)

(assert (=> b!1214141 (= lt!552173 (getCurrentListMapNoExtraKeys!5412 lt!552171 lt!552180 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!552184 () V!46187)

(assert (=> b!1214141 (= lt!552180 (array!78351 (store (arr!37806 _values!996) i!673 (ValueCellFull!14688 lt!552184)) (size!38343 _values!996)))))

(declare-fun dynLambda!3321 (Int (_ BitVec 64)) V!46187)

(assert (=> b!1214141 (= lt!552184 (dynLambda!3321 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!552179 () ListLongMap!17983)

(assert (=> b!1214141 (= lt!552179 (getCurrentListMapNoExtraKeys!5412 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1214142 () Bool)

(declare-fun res!806165 () Bool)

(assert (=> b!1214142 (=> (not res!806165) (not e!689546))))

(declare-datatypes ((List!26822 0))(
  ( (Nil!26819) (Cons!26818 (h!28027 (_ BitVec 64)) (t!39900 List!26822)) )
))
(declare-fun arrayNoDuplicates!0 (array!78352 (_ BitVec 32) List!26822) Bool)

(assert (=> b!1214142 (= res!806165 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26819))))

(declare-fun bm!60573 () Bool)

(assert (=> bm!60573 (= call!60580 call!60579)))

(declare-fun b!1214143 () Bool)

(declare-fun e!689557 () Unit!40197)

(declare-fun Unit!40199 () Unit!40197)

(assert (=> b!1214143 (= e!689557 Unit!40199)))

(declare-fun b!1214144 () Bool)

(declare-fun e!689550 () Bool)

(assert (=> b!1214144 (= e!689546 e!689550)))

(declare-fun res!806158 () Bool)

(assert (=> b!1214144 (=> (not res!806158) (not e!689550))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78352 (_ BitVec 32)) Bool)

(assert (=> b!1214144 (= res!806158 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!552171 mask!1564))))

(assert (=> b!1214144 (= lt!552171 (array!78353 (store (arr!37807 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38344 _keys!1208)))))

(declare-fun b!1214145 () Bool)

(declare-fun tp_is_empty!30795 () Bool)

(assert (=> b!1214145 (= e!689558 tp_is_empty!30795)))

(declare-fun b!1214146 () Bool)

(declare-fun e!689555 () Bool)

(declare-fun arrayContainsKey!0 (array!78352 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1214146 (= e!689555 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun lt!552181 () ListLongMap!17983)

(declare-fun e!689554 () Bool)

(declare-fun b!1214147 () Bool)

(assert (=> b!1214147 (= e!689554 (= lt!552181 (getCurrentListMapNoExtraKeys!5412 lt!552171 lt!552180 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1214148 () Bool)

(declare-fun lt!552166 () Bool)

(assert (=> b!1214148 (= e!689555 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!552166) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1214149 () Bool)

(assert (=> b!1214149 (= c!119970 (and (not lt!552166) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1214149 (= e!689551 e!689544)))

(declare-fun b!1214150 () Bool)

(declare-fun res!806167 () Bool)

(assert (=> b!1214150 (=> (not res!806167) (not e!689546))))

(assert (=> b!1214150 (= res!806167 (and (= (size!38343 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38344 _keys!1208) (size!38343 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1214151 () Bool)

(declare-fun res!806157 () Bool)

(assert (=> b!1214151 (=> (not res!806157) (not e!689550))))

(assert (=> b!1214151 (= res!806157 (arrayNoDuplicates!0 lt!552171 #b00000000000000000000000000000000 Nil!26819))))

(declare-fun bm!60574 () Bool)

(assert (=> bm!60574 (= call!60574 (+!4032 lt!552167 (ite (or c!119974 c!119970) (tuple2!20003 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!20003 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1214152 () Bool)

(assert (=> b!1214152 call!60576))

(declare-fun lt!552177 () Unit!40197)

(assert (=> b!1214152 (= lt!552177 call!60580)))

(assert (=> b!1214152 (= e!689557 lt!552177)))

(declare-fun b!1214153 () Bool)

(declare-fun res!806156 () Bool)

(assert (=> b!1214153 (=> (not res!806156) (not e!689546))))

(assert (=> b!1214153 (= res!806156 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapIsEmpty!48067 () Bool)

(assert (=> mapIsEmpty!48067 mapRes!48067))

(declare-fun b!1214154 () Bool)

(declare-fun res!806163 () Bool)

(assert (=> b!1214154 (=> (not res!806163) (not e!689546))))

(assert (=> b!1214154 (= res!806163 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38344 _keys!1208))))))

(declare-fun b!1214155 () Bool)

(declare-fun e!689547 () Bool)

(assert (=> b!1214155 (= e!689547 tp_is_empty!30795)))

(declare-fun res!806162 () Bool)

(assert (=> start!101204 (=> (not res!806162) (not e!689546))))

(assert (=> start!101204 (= res!806162 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38344 _keys!1208))))))

(assert (=> start!101204 e!689546))

(assert (=> start!101204 tp_is_empty!30795))

(declare-fun array_inv!28694 (array!78352) Bool)

(assert (=> start!101204 (array_inv!28694 _keys!1208)))

(assert (=> start!101204 true))

(assert (=> start!101204 tp!91295))

(declare-fun e!689556 () Bool)

(declare-fun array_inv!28695 (array!78350) Bool)

(assert (=> start!101204 (and (array_inv!28695 _values!996) e!689556)))

(declare-fun b!1214156 () Bool)

(declare-fun e!689553 () Unit!40197)

(declare-fun Unit!40200 () Unit!40197)

(assert (=> b!1214156 (= e!689553 Unit!40200)))

(declare-fun b!1214157 () Bool)

(declare-fun Unit!40201 () Unit!40197)

(assert (=> b!1214157 (= e!689553 Unit!40201)))

(assert (=> b!1214157 (= lt!552166 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1214157 (= c!119974 (and (not lt!552166) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!552174 () Unit!40197)

(assert (=> b!1214157 (= lt!552174 e!689551)))

(declare-fun lt!552182 () Unit!40197)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!624 (array!78352 array!78350 (_ BitVec 32) (_ BitVec 32) V!46187 V!46187 (_ BitVec 64) (_ BitVec 32) Int) Unit!40197)

(assert (=> b!1214157 (= lt!552182 (lemmaListMapContainsThenArrayContainsFrom!624 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!119972 () Bool)

(assert (=> b!1214157 (= c!119972 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!806161 () Bool)

(assert (=> b!1214157 (= res!806161 e!689555)))

(declare-fun e!689548 () Bool)

(assert (=> b!1214157 (=> (not res!806161) (not e!689548))))

(assert (=> b!1214157 e!689548))

(declare-fun lt!552168 () Unit!40197)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78352 (_ BitVec 32) (_ BitVec 32)) Unit!40197)

(assert (=> b!1214157 (= lt!552168 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1214157 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26819)))

(declare-fun lt!552178 () Unit!40197)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!78352 (_ BitVec 64) (_ BitVec 32) List!26822) Unit!40197)

(assert (=> b!1214157 (= lt!552178 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!26819))))

(assert (=> b!1214157 false))

(declare-fun b!1214158 () Bool)

(assert (=> b!1214158 (= e!689544 e!689557)))

(declare-fun c!119971 () Bool)

(assert (=> b!1214158 (= c!119971 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!552166))))

(declare-fun bm!60575 () Bool)

(assert (=> bm!60575 (= call!60576 call!60573)))

(declare-fun b!1214159 () Bool)

(assert (=> b!1214159 (= e!689549 (or (not (= lt!552181 lt!552173)) (= lt!552173 lt!552181)))))

(assert (=> b!1214159 e!689554))

(declare-fun res!806160 () Bool)

(assert (=> b!1214159 (=> (not res!806160) (not e!689554))))

(assert (=> b!1214159 (= res!806160 (= lt!552181 lt!552167))))

(declare-fun -!1901 (ListLongMap!17983 (_ BitVec 64)) ListLongMap!17983)

(assert (=> b!1214159 (= lt!552181 (-!1901 lt!552179 k0!934))))

(declare-fun lt!552172 () V!46187)

(assert (=> b!1214159 (= (-!1901 (+!4032 lt!552167 (tuple2!20003 (select (arr!37807 _keys!1208) from!1455) lt!552172)) (select (arr!37807 _keys!1208) from!1455)) lt!552167)))

(declare-fun lt!552176 () Unit!40197)

(declare-fun addThenRemoveForNewKeyIsSame!299 (ListLongMap!17983 (_ BitVec 64) V!46187) Unit!40197)

(assert (=> b!1214159 (= lt!552176 (addThenRemoveForNewKeyIsSame!299 lt!552167 (select (arr!37807 _keys!1208) from!1455) lt!552172))))

(declare-fun get!19321 (ValueCell!14688 V!46187) V!46187)

(assert (=> b!1214159 (= lt!552172 (get!19321 (select (arr!37806 _values!996) from!1455) lt!552184))))

(declare-fun lt!552164 () Unit!40197)

(assert (=> b!1214159 (= lt!552164 e!689553)))

(declare-fun c!119973 () Bool)

(assert (=> b!1214159 (= c!119973 (contains!7021 lt!552167 k0!934))))

(assert (=> b!1214159 (= lt!552167 (getCurrentListMapNoExtraKeys!5412 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!60576 () Bool)

(assert (=> bm!60576 (= call!60578 call!60574)))

(declare-fun b!1214160 () Bool)

(declare-fun res!806168 () Bool)

(assert (=> b!1214160 (=> (not res!806168) (not e!689546))))

(assert (=> b!1214160 (= res!806168 (= (select (arr!37807 _keys!1208) i!673) k0!934))))

(declare-fun bm!60577 () Bool)

(assert (=> bm!60577 (= call!60575 (getCurrentListMapNoExtraKeys!5412 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1214161 () Bool)

(declare-fun res!806169 () Bool)

(assert (=> b!1214161 (=> (not res!806169) (not e!689546))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1214161 (= res!806169 (validKeyInArray!0 k0!934))))

(declare-fun b!1214162 () Bool)

(assert (=> b!1214162 (= e!689556 (and e!689547 mapRes!48067))))

(declare-fun condMapEmpty!48067 () Bool)

(declare-fun mapDefault!48067 () ValueCell!14688)

(assert (=> b!1214162 (= condMapEmpty!48067 (= (arr!37806 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14688)) mapDefault!48067)))))

(declare-fun b!1214163 () Bool)

(assert (=> b!1214163 (= e!689545 (= call!60577 (-!1901 call!60575 k0!934)))))

(declare-fun b!1214164 () Bool)

(assert (=> b!1214164 (= e!689550 (not e!689543))))

(declare-fun res!806166 () Bool)

(assert (=> b!1214164 (=> res!806166 e!689543)))

(assert (=> b!1214164 (= res!806166 (bvsgt from!1455 i!673))))

(assert (=> b!1214164 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!552185 () Unit!40197)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78352 (_ BitVec 64) (_ BitVec 32)) Unit!40197)

(assert (=> b!1214164 (= lt!552185 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1214165 () Bool)

(assert (=> b!1214165 (= e!689548 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (= (and start!101204 res!806162) b!1214139))

(assert (= (and b!1214139 res!806159) b!1214150))

(assert (= (and b!1214150 res!806167) b!1214153))

(assert (= (and b!1214153 res!806156) b!1214142))

(assert (= (and b!1214142 res!806165) b!1214154))

(assert (= (and b!1214154 res!806163) b!1214161))

(assert (= (and b!1214161 res!806169) b!1214160))

(assert (= (and b!1214160 res!806168) b!1214144))

(assert (= (and b!1214144 res!806158) b!1214151))

(assert (= (and b!1214151 res!806157) b!1214164))

(assert (= (and b!1214164 (not res!806166)) b!1214141))

(assert (= (and b!1214141 (not res!806164)) b!1214137))

(assert (= (and b!1214137 c!119969) b!1214163))

(assert (= (and b!1214137 (not c!119969)) b!1214140))

(assert (= (or b!1214163 b!1214140) bm!60570))

(assert (= (or b!1214163 b!1214140) bm!60577))

(assert (= (and b!1214137 (not res!806170)) b!1214159))

(assert (= (and b!1214159 c!119973) b!1214157))

(assert (= (and b!1214159 (not c!119973)) b!1214156))

(assert (= (and b!1214157 c!119974) b!1214136))

(assert (= (and b!1214157 (not c!119974)) b!1214149))

(assert (= (and b!1214149 c!119970) b!1214138))

(assert (= (and b!1214149 (not c!119970)) b!1214158))

(assert (= (and b!1214158 c!119971) b!1214152))

(assert (= (and b!1214158 (not c!119971)) b!1214143))

(assert (= (or b!1214138 b!1214152) bm!60573))

(assert (= (or b!1214138 b!1214152) bm!60576))

(assert (= (or b!1214138 b!1214152) bm!60575))

(assert (= (or b!1214136 bm!60575) bm!60571))

(assert (= (or b!1214136 bm!60573) bm!60572))

(assert (= (or b!1214136 bm!60576) bm!60574))

(assert (= (and b!1214157 c!119972) b!1214146))

(assert (= (and b!1214157 (not c!119972)) b!1214148))

(assert (= (and b!1214157 res!806161) b!1214165))

(assert (= (and b!1214159 res!806160) b!1214147))

(assert (= (and b!1214162 condMapEmpty!48067) mapIsEmpty!48067))

(assert (= (and b!1214162 (not condMapEmpty!48067)) mapNonEmpty!48067))

(get-info :version)

(assert (= (and mapNonEmpty!48067 ((_ is ValueCellFull!14688) mapValue!48067)) b!1214145))

(assert (= (and b!1214162 ((_ is ValueCellFull!14688) mapDefault!48067)) b!1214155))

(assert (= start!101204 b!1214162))

(declare-fun b_lambda!21777 () Bool)

(assert (=> (not b_lambda!21777) (not b!1214141)))

(declare-fun t!39898 () Bool)

(declare-fun tb!10899 () Bool)

(assert (=> (and start!101204 (= defaultEntry!1004 defaultEntry!1004) t!39898) tb!10899))

(declare-fun result!22387 () Bool)

(assert (=> tb!10899 (= result!22387 tp_is_empty!30795)))

(assert (=> b!1214141 t!39898))

(declare-fun b_and!43311 () Bool)

(assert (= b_and!43309 (and (=> t!39898 result!22387) b_and!43311)))

(declare-fun m!1119385 () Bool)

(assert (=> b!1214157 m!1119385))

(declare-fun m!1119387 () Bool)

(assert (=> b!1214157 m!1119387))

(declare-fun m!1119389 () Bool)

(assert (=> b!1214157 m!1119389))

(declare-fun m!1119391 () Bool)

(assert (=> b!1214157 m!1119391))

(declare-fun m!1119393 () Bool)

(assert (=> b!1214144 m!1119393))

(declare-fun m!1119395 () Bool)

(assert (=> b!1214144 m!1119395))

(declare-fun m!1119397 () Bool)

(assert (=> b!1214160 m!1119397))

(declare-fun m!1119399 () Bool)

(assert (=> b!1214164 m!1119399))

(declare-fun m!1119401 () Bool)

(assert (=> b!1214164 m!1119401))

(declare-fun m!1119403 () Bool)

(assert (=> bm!60572 m!1119403))

(declare-fun m!1119405 () Bool)

(assert (=> b!1214159 m!1119405))

(declare-fun m!1119407 () Bool)

(assert (=> b!1214159 m!1119407))

(declare-fun m!1119409 () Bool)

(assert (=> b!1214159 m!1119409))

(declare-fun m!1119411 () Bool)

(assert (=> b!1214159 m!1119411))

(assert (=> b!1214159 m!1119411))

(declare-fun m!1119413 () Bool)

(assert (=> b!1214159 m!1119413))

(assert (=> b!1214159 m!1119409))

(declare-fun m!1119415 () Bool)

(assert (=> b!1214159 m!1119415))

(declare-fun m!1119417 () Bool)

(assert (=> b!1214159 m!1119417))

(assert (=> b!1214159 m!1119415))

(declare-fun m!1119419 () Bool)

(assert (=> b!1214159 m!1119419))

(assert (=> b!1214159 m!1119415))

(declare-fun m!1119421 () Bool)

(assert (=> b!1214159 m!1119421))

(declare-fun m!1119423 () Bool)

(assert (=> b!1214163 m!1119423))

(declare-fun m!1119425 () Bool)

(assert (=> b!1214147 m!1119425))

(declare-fun m!1119427 () Bool)

(assert (=> bm!60571 m!1119427))

(declare-fun m!1119429 () Bool)

(assert (=> b!1214136 m!1119429))

(assert (=> b!1214136 m!1119429))

(declare-fun m!1119431 () Bool)

(assert (=> b!1214136 m!1119431))

(declare-fun m!1119433 () Bool)

(assert (=> b!1214136 m!1119433))

(declare-fun m!1119435 () Bool)

(assert (=> b!1214139 m!1119435))

(assert (=> b!1214137 m!1119415))

(declare-fun m!1119437 () Bool)

(assert (=> b!1214137 m!1119437))

(assert (=> bm!60577 m!1119405))

(declare-fun m!1119439 () Bool)

(assert (=> b!1214153 m!1119439))

(declare-fun m!1119441 () Bool)

(assert (=> b!1214142 m!1119441))

(declare-fun m!1119443 () Bool)

(assert (=> mapNonEmpty!48067 m!1119443))

(declare-fun m!1119445 () Bool)

(assert (=> start!101204 m!1119445))

(declare-fun m!1119447 () Bool)

(assert (=> start!101204 m!1119447))

(declare-fun m!1119449 () Bool)

(assert (=> b!1214141 m!1119449))

(declare-fun m!1119451 () Bool)

(assert (=> b!1214141 m!1119451))

(declare-fun m!1119453 () Bool)

(assert (=> b!1214141 m!1119453))

(declare-fun m!1119455 () Bool)

(assert (=> b!1214141 m!1119455))

(assert (=> bm!60570 m!1119425))

(declare-fun m!1119457 () Bool)

(assert (=> bm!60574 m!1119457))

(declare-fun m!1119459 () Bool)

(assert (=> b!1214161 m!1119459))

(declare-fun m!1119461 () Bool)

(assert (=> b!1214146 m!1119461))

(assert (=> b!1214165 m!1119461))

(declare-fun m!1119463 () Bool)

(assert (=> b!1214151 m!1119463))

(check-sat (not start!101204) (not b!1214157) (not mapNonEmpty!48067) (not b!1214153) (not b!1214136) (not bm!60571) (not b!1214164) tp_is_empty!30795 (not bm!60570) (not bm!60574) (not b!1214144) (not bm!60572) (not b!1214146) b_and!43311 (not b!1214161) (not b!1214159) (not b!1214142) (not b!1214151) (not b!1214163) (not b!1214141) (not bm!60577) (not b!1214139) (not b_lambda!21777) (not b!1214165) (not b_next!26091) (not b!1214147) (not b!1214137))
(check-sat b_and!43311 (not b_next!26091))
