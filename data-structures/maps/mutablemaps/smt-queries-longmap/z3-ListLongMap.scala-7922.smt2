; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98410 () Bool)

(assert start!98410)

(declare-fun b_free!23979 () Bool)

(declare-fun b_next!23979 () Bool)

(assert (=> start!98410 (= b_free!23979 (not b_next!23979))))

(declare-fun tp!84648 () Bool)

(declare-fun b_and!38821 () Bool)

(assert (=> start!98410 (= tp!84648 b_and!38821)))

(declare-fun b!1134158 () Bool)

(declare-fun res!757267 () Bool)

(declare-fun e!645511 () Bool)

(assert (=> b!1134158 (=> (not res!757267) (not e!645511))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1134158 (= res!757267 (validKeyInArray!0 k0!934))))

(declare-fun bm!49286 () Bool)

(declare-datatypes ((V!43139 0))(
  ( (V!43140 (val!14311 Int)) )
))
(declare-datatypes ((tuple2!18144 0))(
  ( (tuple2!18145 (_1!9082 (_ BitVec 64)) (_2!9082 V!43139)) )
))
(declare-datatypes ((List!24956 0))(
  ( (Nil!24953) (Cons!24952 (h!26161 tuple2!18144) (t!35934 List!24956)) )
))
(declare-datatypes ((ListLongMap!16125 0))(
  ( (ListLongMap!16126 (toList!8078 List!24956)) )
))
(declare-fun call!49293 () ListLongMap!16125)

(declare-fun call!49296 () ListLongMap!16125)

(assert (=> bm!49286 (= call!49293 call!49296)))

(declare-fun b!1134159 () Bool)

(declare-fun res!757271 () Bool)

(assert (=> b!1134159 (=> (not res!757271) (not e!645511))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1134159 (= res!757271 (validMask!0 mask!1564))))

(declare-fun res!757278 () Bool)

(assert (=> start!98410 (=> (not res!757278) (not e!645511))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!73840 0))(
  ( (array!73841 (arr!35567 (Array (_ BitVec 32) (_ BitVec 64))) (size!36104 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73840)

(assert (=> start!98410 (= res!757278 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36104 _keys!1208))))))

(assert (=> start!98410 e!645511))

(declare-fun tp_is_empty!28509 () Bool)

(assert (=> start!98410 tp_is_empty!28509))

(declare-fun array_inv!27144 (array!73840) Bool)

(assert (=> start!98410 (array_inv!27144 _keys!1208)))

(assert (=> start!98410 true))

(assert (=> start!98410 tp!84648))

(declare-datatypes ((ValueCell!13545 0))(
  ( (ValueCellFull!13545 (v!16949 V!43139)) (EmptyCell!13545) )
))
(declare-datatypes ((array!73842 0))(
  ( (array!73843 (arr!35568 (Array (_ BitVec 32) ValueCell!13545)) (size!36105 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73842)

(declare-fun e!645519 () Bool)

(declare-fun array_inv!27145 (array!73842) Bool)

(assert (=> start!98410 (and (array_inv!27145 _values!996) e!645519)))

(declare-fun b!1134160 () Bool)

(declare-datatypes ((Unit!37103 0))(
  ( (Unit!37104) )
))
(declare-fun e!645512 () Unit!37103)

(declare-fun Unit!37105 () Unit!37103)

(assert (=> b!1134160 (= e!645512 Unit!37105)))

(declare-fun mapNonEmpty!44588 () Bool)

(declare-fun mapRes!44588 () Bool)

(declare-fun tp!84649 () Bool)

(declare-fun e!645503 () Bool)

(assert (=> mapNonEmpty!44588 (= mapRes!44588 (and tp!84649 e!645503))))

(declare-fun mapKey!44588 () (_ BitVec 32))

(declare-fun mapValue!44588 () ValueCell!13545)

(declare-fun mapRest!44588 () (Array (_ BitVec 32) ValueCell!13545))

(assert (=> mapNonEmpty!44588 (= (arr!35568 _values!996) (store mapRest!44588 mapKey!44588 mapValue!44588))))

(declare-fun bm!49287 () Bool)

(declare-fun call!49292 () Bool)

(declare-fun call!49295 () Bool)

(assert (=> bm!49287 (= call!49292 call!49295)))

(declare-fun b!1134161 () Bool)

(declare-fun e!645515 () Bool)

(declare-fun e!645506 () Bool)

(assert (=> b!1134161 (= e!645515 e!645506)))

(declare-fun res!757279 () Bool)

(assert (=> b!1134161 (=> res!757279 e!645506)))

(declare-fun lt!504054 () ListLongMap!16125)

(declare-fun contains!6569 (ListLongMap!16125 (_ BitVec 64)) Bool)

(assert (=> b!1134161 (= res!757279 (not (contains!6569 lt!504054 k0!934)))))

(declare-fun zeroValue!944 () V!43139)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!43139)

(declare-fun getCurrentListMapNoExtraKeys!4527 (array!73840 array!73842 (_ BitVec 32) (_ BitVec 32) V!43139 V!43139 (_ BitVec 32) Int) ListLongMap!16125)

(assert (=> b!1134161 (= lt!504054 (getCurrentListMapNoExtraKeys!4527 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1134162 () Bool)

(declare-fun e!645516 () Bool)

(assert (=> b!1134162 (= e!645516 true)))

(declare-fun lt!504043 () Bool)

(declare-datatypes ((List!24957 0))(
  ( (Nil!24954) (Cons!24953 (h!26162 (_ BitVec 64)) (t!35935 List!24957)) )
))
(declare-fun contains!6570 (List!24957 (_ BitVec 64)) Bool)

(assert (=> b!1134162 (= lt!504043 (contains!6570 Nil!24954 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1134163 () Bool)

(declare-fun e!645504 () Bool)

(assert (=> b!1134163 (= e!645519 (and e!645504 mapRes!44588))))

(declare-fun condMapEmpty!44588 () Bool)

(declare-fun mapDefault!44588 () ValueCell!13545)

(assert (=> b!1134163 (= condMapEmpty!44588 (= (arr!35568 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13545)) mapDefault!44588)))))

(declare-fun b!1134164 () Bool)

(assert (=> b!1134164 call!49292))

(declare-fun lt!504048 () Unit!37103)

(declare-fun call!49291 () Unit!37103)

(assert (=> b!1134164 (= lt!504048 call!49291)))

(declare-fun e!645509 () Unit!37103)

(assert (=> b!1134164 (= e!645509 lt!504048)))

(declare-fun b!1134165 () Bool)

(declare-fun e!645505 () Bool)

(assert (=> b!1134165 (= e!645505 e!645515)))

(declare-fun res!757269 () Bool)

(assert (=> b!1134165 (=> res!757269 e!645515)))

(assert (=> b!1134165 (= res!757269 (not (= (select (arr!35567 _keys!1208) from!1455) k0!934)))))

(declare-fun e!645518 () Bool)

(assert (=> b!1134165 e!645518))

(declare-fun c!110696 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1134165 (= c!110696 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!504056 () Unit!37103)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!452 (array!73840 array!73842 (_ BitVec 32) (_ BitVec 32) V!43139 V!43139 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37103)

(assert (=> b!1134165 (= lt!504056 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!452 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!49288 () Bool)

(declare-fun c!110697 () Bool)

(declare-fun lt!504050 () ListLongMap!16125)

(declare-fun c!110693 () Bool)

(declare-fun +!3437 (ListLongMap!16125 tuple2!18144) ListLongMap!16125)

(assert (=> bm!49288 (= call!49296 (+!3437 (ite c!110693 lt!504050 lt!504054) (ite c!110693 (tuple2!18145 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!110697 (tuple2!18145 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18145 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1134166 () Bool)

(declare-fun res!757264 () Bool)

(declare-fun e!645510 () Bool)

(assert (=> b!1134166 (=> (not res!757264) (not e!645510))))

(declare-fun lt!504052 () array!73840)

(declare-fun arrayNoDuplicates!0 (array!73840 (_ BitVec 32) List!24957) Bool)

(assert (=> b!1134166 (= res!757264 (arrayNoDuplicates!0 lt!504052 #b00000000000000000000000000000000 Nil!24954))))

(declare-fun lt!504055 () array!73842)

(declare-fun bm!49289 () Bool)

(declare-fun call!49290 () ListLongMap!16125)

(assert (=> bm!49289 (= call!49290 (getCurrentListMapNoExtraKeys!4527 lt!504052 lt!504055 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1134167 () Bool)

(assert (=> b!1134167 (= e!645506 e!645516)))

(declare-fun res!757272 () Bool)

(assert (=> b!1134167 (=> res!757272 e!645516)))

(assert (=> b!1134167 (= res!757272 (or (bvsge (size!36104 _keys!1208) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!36104 _keys!1208)) (bvsge from!1455 (size!36104 _keys!1208))))))

(assert (=> b!1134167 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!24954)))

(declare-fun lt!504041 () Unit!37103)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!73840 (_ BitVec 32) (_ BitVec 32)) Unit!37103)

(assert (=> b!1134167 (= lt!504041 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-fun e!645517 () Bool)

(assert (=> b!1134167 e!645517))

(declare-fun res!757266 () Bool)

(assert (=> b!1134167 (=> (not res!757266) (not e!645517))))

(declare-fun e!645507 () Bool)

(assert (=> b!1134167 (= res!757266 e!645507)))

(declare-fun c!110695 () Bool)

(assert (=> b!1134167 (= c!110695 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!504051 () Unit!37103)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!345 (array!73840 array!73842 (_ BitVec 32) (_ BitVec 32) V!43139 V!43139 (_ BitVec 64) (_ BitVec 32) Int) Unit!37103)

(assert (=> b!1134167 (= lt!504051 (lemmaListMapContainsThenArrayContainsFrom!345 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!504049 () Unit!37103)

(declare-fun e!645508 () Unit!37103)

(assert (=> b!1134167 (= lt!504049 e!645508)))

(declare-fun lt!504044 () Bool)

(assert (=> b!1134167 (= c!110693 (and (not lt!504044) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1134167 (= lt!504044 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun call!49289 () Unit!37103)

(declare-fun bm!49290 () Bool)

(declare-fun addStillContains!736 (ListLongMap!16125 (_ BitVec 64) V!43139 (_ BitVec 64)) Unit!37103)

(assert (=> bm!49290 (= call!49289 (addStillContains!736 lt!504054 (ite (or c!110693 c!110697) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!110693 c!110697) zeroValue!944 minValue!944) k0!934))))

(declare-fun b!1134168 () Bool)

(assert (=> b!1134168 (= e!645508 e!645509)))

(assert (=> b!1134168 (= c!110697 (and (not lt!504044) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun call!49294 () ListLongMap!16125)

(declare-fun b!1134169 () Bool)

(declare-fun -!1195 (ListLongMap!16125 (_ BitVec 64)) ListLongMap!16125)

(assert (=> b!1134169 (= e!645518 (= call!49290 (-!1195 call!49294 k0!934)))))

(declare-fun b!1134170 () Bool)

(assert (=> b!1134170 (= e!645518 (= call!49290 call!49294))))

(declare-fun b!1134171 () Bool)

(declare-fun arrayContainsKey!0 (array!73840 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1134171 (= e!645517 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!49291 () Bool)

(assert (=> bm!49291 (= call!49291 call!49289)))

(declare-fun b!1134172 () Bool)

(declare-fun e!645513 () Bool)

(assert (=> b!1134172 (= e!645513 e!645505)))

(declare-fun res!757273 () Bool)

(assert (=> b!1134172 (=> res!757273 e!645505)))

(assert (=> b!1134172 (= res!757273 (not (= from!1455 i!673)))))

(declare-fun lt!504057 () ListLongMap!16125)

(assert (=> b!1134172 (= lt!504057 (getCurrentListMapNoExtraKeys!4527 lt!504052 lt!504055 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2595 (Int (_ BitVec 64)) V!43139)

(assert (=> b!1134172 (= lt!504055 (array!73843 (store (arr!35568 _values!996) i!673 (ValueCellFull!13545 (dynLambda!2595 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36105 _values!996)))))

(declare-fun lt!504042 () ListLongMap!16125)

(assert (=> b!1134172 (= lt!504042 (getCurrentListMapNoExtraKeys!4527 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1134173 () Bool)

(assert (=> b!1134173 (= e!645507 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!504044) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1134174 () Bool)

(declare-fun res!757268 () Bool)

(assert (=> b!1134174 (=> (not res!757268) (not e!645511))))

(assert (=> b!1134174 (= res!757268 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36104 _keys!1208))))))

(declare-fun b!1134175 () Bool)

(assert (=> b!1134175 (= e!645507 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1134176 () Bool)

(assert (=> b!1134176 (= e!645510 (not e!645513))))

(declare-fun res!757263 () Bool)

(assert (=> b!1134176 (=> res!757263 e!645513)))

(assert (=> b!1134176 (= res!757263 (bvsgt from!1455 i!673))))

(assert (=> b!1134176 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!504047 () Unit!37103)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73840 (_ BitVec 64) (_ BitVec 32)) Unit!37103)

(assert (=> b!1134176 (= lt!504047 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1134177 () Bool)

(declare-fun res!757265 () Bool)

(assert (=> b!1134177 (=> (not res!757265) (not e!645511))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73840 (_ BitVec 32)) Bool)

(assert (=> b!1134177 (= res!757265 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1134178 () Bool)

(declare-fun lt!504045 () Unit!37103)

(assert (=> b!1134178 (= e!645508 lt!504045)))

(declare-fun lt!504053 () Unit!37103)

(assert (=> b!1134178 (= lt!504053 call!49289)))

(assert (=> b!1134178 (= lt!504050 (+!3437 lt!504054 (tuple2!18145 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(assert (=> b!1134178 call!49295))

(assert (=> b!1134178 (= lt!504045 (addStillContains!736 lt!504050 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(assert (=> b!1134178 (contains!6569 call!49296 k0!934)))

(declare-fun b!1134179 () Bool)

(declare-fun lt!504046 () Unit!37103)

(assert (=> b!1134179 (= e!645512 lt!504046)))

(assert (=> b!1134179 (= lt!504046 call!49291)))

(assert (=> b!1134179 call!49292))

(declare-fun b!1134180 () Bool)

(declare-fun res!757274 () Bool)

(assert (=> b!1134180 (=> res!757274 e!645516)))

(declare-fun noDuplicate!1607 (List!24957) Bool)

(assert (=> b!1134180 (= res!757274 (not (noDuplicate!1607 Nil!24954)))))

(declare-fun b!1134181 () Bool)

(declare-fun res!757270 () Bool)

(assert (=> b!1134181 (=> (not res!757270) (not e!645511))))

(assert (=> b!1134181 (= res!757270 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24954))))

(declare-fun b!1134182 () Bool)

(declare-fun res!757275 () Bool)

(assert (=> b!1134182 (=> (not res!757275) (not e!645511))))

(assert (=> b!1134182 (= res!757275 (= (select (arr!35567 _keys!1208) i!673) k0!934))))

(declare-fun b!1134183 () Bool)

(assert (=> b!1134183 (= e!645503 tp_is_empty!28509)))

(declare-fun b!1134184 () Bool)

(declare-fun res!757280 () Bool)

(assert (=> b!1134184 (=> (not res!757280) (not e!645511))))

(assert (=> b!1134184 (= res!757280 (and (= (size!36105 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36104 _keys!1208) (size!36105 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1134185 () Bool)

(declare-fun c!110694 () Bool)

(assert (=> b!1134185 (= c!110694 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!504044))))

(assert (=> b!1134185 (= e!645509 e!645512)))

(declare-fun b!1134186 () Bool)

(assert (=> b!1134186 (= e!645504 tp_is_empty!28509)))

(declare-fun mapIsEmpty!44588 () Bool)

(assert (=> mapIsEmpty!44588 mapRes!44588))

(declare-fun b!1134187 () Bool)

(declare-fun res!757276 () Bool)

(assert (=> b!1134187 (=> res!757276 e!645516)))

(assert (=> b!1134187 (= res!757276 (contains!6570 Nil!24954 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1134188 () Bool)

(assert (=> b!1134188 (= e!645511 e!645510)))

(declare-fun res!757277 () Bool)

(assert (=> b!1134188 (=> (not res!757277) (not e!645510))))

(assert (=> b!1134188 (= res!757277 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!504052 mask!1564))))

(assert (=> b!1134188 (= lt!504052 (array!73841 (store (arr!35567 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36104 _keys!1208)))))

(declare-fun bm!49292 () Bool)

(assert (=> bm!49292 (= call!49294 (getCurrentListMapNoExtraKeys!4527 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!49293 () Bool)

(assert (=> bm!49293 (= call!49295 (contains!6569 (ite c!110693 lt!504050 call!49293) k0!934))))

(assert (= (and start!98410 res!757278) b!1134159))

(assert (= (and b!1134159 res!757271) b!1134184))

(assert (= (and b!1134184 res!757280) b!1134177))

(assert (= (and b!1134177 res!757265) b!1134181))

(assert (= (and b!1134181 res!757270) b!1134174))

(assert (= (and b!1134174 res!757268) b!1134158))

(assert (= (and b!1134158 res!757267) b!1134182))

(assert (= (and b!1134182 res!757275) b!1134188))

(assert (= (and b!1134188 res!757277) b!1134166))

(assert (= (and b!1134166 res!757264) b!1134176))

(assert (= (and b!1134176 (not res!757263)) b!1134172))

(assert (= (and b!1134172 (not res!757273)) b!1134165))

(assert (= (and b!1134165 c!110696) b!1134169))

(assert (= (and b!1134165 (not c!110696)) b!1134170))

(assert (= (or b!1134169 b!1134170) bm!49289))

(assert (= (or b!1134169 b!1134170) bm!49292))

(assert (= (and b!1134165 (not res!757269)) b!1134161))

(assert (= (and b!1134161 (not res!757279)) b!1134167))

(assert (= (and b!1134167 c!110693) b!1134178))

(assert (= (and b!1134167 (not c!110693)) b!1134168))

(assert (= (and b!1134168 c!110697) b!1134164))

(assert (= (and b!1134168 (not c!110697)) b!1134185))

(assert (= (and b!1134185 c!110694) b!1134179))

(assert (= (and b!1134185 (not c!110694)) b!1134160))

(assert (= (or b!1134164 b!1134179) bm!49291))

(assert (= (or b!1134164 b!1134179) bm!49286))

(assert (= (or b!1134164 b!1134179) bm!49287))

(assert (= (or b!1134178 bm!49287) bm!49293))

(assert (= (or b!1134178 bm!49291) bm!49290))

(assert (= (or b!1134178 bm!49286) bm!49288))

(assert (= (and b!1134167 c!110695) b!1134175))

(assert (= (and b!1134167 (not c!110695)) b!1134173))

(assert (= (and b!1134167 res!757266) b!1134171))

(assert (= (and b!1134167 (not res!757272)) b!1134180))

(assert (= (and b!1134180 (not res!757274)) b!1134187))

(assert (= (and b!1134187 (not res!757276)) b!1134162))

(assert (= (and b!1134163 condMapEmpty!44588) mapIsEmpty!44588))

(assert (= (and b!1134163 (not condMapEmpty!44588)) mapNonEmpty!44588))

(get-info :version)

(assert (= (and mapNonEmpty!44588 ((_ is ValueCellFull!13545) mapValue!44588)) b!1134183))

(assert (= (and b!1134163 ((_ is ValueCellFull!13545) mapDefault!44588)) b!1134186))

(assert (= start!98410 b!1134163))

(declare-fun b_lambda!19103 () Bool)

(assert (=> (not b_lambda!19103) (not b!1134172)))

(declare-fun t!35933 () Bool)

(declare-fun tb!8799 () Bool)

(assert (=> (and start!98410 (= defaultEntry!1004 defaultEntry!1004) t!35933) tb!8799))

(declare-fun result!18155 () Bool)

(assert (=> tb!8799 (= result!18155 tp_is_empty!28509)))

(assert (=> b!1134172 t!35933))

(declare-fun b_and!38823 () Bool)

(assert (= b_and!38821 (and (=> t!35933 result!18155) b_and!38823)))

(declare-fun m!1047075 () Bool)

(assert (=> b!1134177 m!1047075))

(declare-fun m!1047077 () Bool)

(assert (=> bm!49288 m!1047077))

(declare-fun m!1047079 () Bool)

(assert (=> b!1134178 m!1047079))

(declare-fun m!1047081 () Bool)

(assert (=> b!1134178 m!1047081))

(declare-fun m!1047083 () Bool)

(assert (=> b!1134178 m!1047083))

(declare-fun m!1047085 () Bool)

(assert (=> b!1134166 m!1047085))

(declare-fun m!1047087 () Bool)

(assert (=> bm!49292 m!1047087))

(declare-fun m!1047089 () Bool)

(assert (=> b!1134176 m!1047089))

(declare-fun m!1047091 () Bool)

(assert (=> b!1134176 m!1047091))

(declare-fun m!1047093 () Bool)

(assert (=> b!1134161 m!1047093))

(assert (=> b!1134161 m!1047087))

(declare-fun m!1047095 () Bool)

(assert (=> bm!49289 m!1047095))

(declare-fun m!1047097 () Bool)

(assert (=> b!1134172 m!1047097))

(declare-fun m!1047099 () Bool)

(assert (=> b!1134172 m!1047099))

(declare-fun m!1047101 () Bool)

(assert (=> b!1134172 m!1047101))

(declare-fun m!1047103 () Bool)

(assert (=> b!1134172 m!1047103))

(declare-fun m!1047105 () Bool)

(assert (=> mapNonEmpty!44588 m!1047105))

(declare-fun m!1047107 () Bool)

(assert (=> b!1134165 m!1047107))

(declare-fun m!1047109 () Bool)

(assert (=> b!1134165 m!1047109))

(declare-fun m!1047111 () Bool)

(assert (=> b!1134182 m!1047111))

(declare-fun m!1047113 () Bool)

(assert (=> b!1134171 m!1047113))

(declare-fun m!1047115 () Bool)

(assert (=> b!1134188 m!1047115))

(declare-fun m!1047117 () Bool)

(assert (=> b!1134188 m!1047117))

(declare-fun m!1047119 () Bool)

(assert (=> bm!49293 m!1047119))

(assert (=> b!1134175 m!1047113))

(declare-fun m!1047121 () Bool)

(assert (=> b!1134181 m!1047121))

(declare-fun m!1047123 () Bool)

(assert (=> start!98410 m!1047123))

(declare-fun m!1047125 () Bool)

(assert (=> start!98410 m!1047125))

(declare-fun m!1047127 () Bool)

(assert (=> b!1134180 m!1047127))

(declare-fun m!1047129 () Bool)

(assert (=> b!1134159 m!1047129))

(declare-fun m!1047131 () Bool)

(assert (=> b!1134187 m!1047131))

(declare-fun m!1047133 () Bool)

(assert (=> bm!49290 m!1047133))

(declare-fun m!1047135 () Bool)

(assert (=> b!1134162 m!1047135))

(declare-fun m!1047137 () Bool)

(assert (=> b!1134169 m!1047137))

(declare-fun m!1047139 () Bool)

(assert (=> b!1134167 m!1047139))

(declare-fun m!1047141 () Bool)

(assert (=> b!1134167 m!1047141))

(declare-fun m!1047143 () Bool)

(assert (=> b!1134167 m!1047143))

(declare-fun m!1047145 () Bool)

(assert (=> b!1134158 m!1047145))

(check-sat (not b_lambda!19103) (not b!1134176) (not mapNonEmpty!44588) (not b!1134159) (not b!1134169) (not b!1134177) (not b!1134178) (not b!1134166) (not start!98410) (not b!1134180) (not b!1134158) (not b!1134161) (not b!1134162) (not bm!49292) (not b!1134175) b_and!38823 (not b_next!23979) (not b!1134165) (not b!1134171) (not bm!49293) tp_is_empty!28509 (not b!1134187) (not b!1134167) (not bm!49288) (not bm!49290) (not b!1134172) (not b!1134188) (not bm!49289) (not b!1134181))
(check-sat b_and!38823 (not b_next!23979))
