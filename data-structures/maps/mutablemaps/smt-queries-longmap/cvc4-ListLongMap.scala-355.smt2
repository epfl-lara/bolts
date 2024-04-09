; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!6662 () Bool)

(assert start!6662)

(declare-fun b_free!1511 () Bool)

(declare-fun b_next!1511 () Bool)

(assert (=> start!6662 (= b_free!1511 (not b_next!1511))))

(declare-fun tp!5954 () Bool)

(declare-fun b_and!2705 () Bool)

(assert (=> start!6662 (= tp!5954 b_and!2705)))

(declare-fun b!43921 () Bool)

(declare-fun e!27843 () Bool)

(declare-fun e!27841 () Bool)

(assert (=> b!43921 (= e!27843 (not e!27841))))

(declare-fun res!25979 () Bool)

(assert (=> b!43921 (=> res!25979 e!27841)))

(declare-datatypes ((V!2321 0))(
  ( (V!2322 (val!989 Int)) )
))
(declare-datatypes ((tuple2!1636 0))(
  ( (tuple2!1637 (_1!828 (_ BitVec 64)) (_2!828 V!2321)) )
))
(declare-datatypes ((List!1222 0))(
  ( (Nil!1219) (Cons!1218 (h!1795 tuple2!1636) (t!4243 List!1222)) )
))
(declare-datatypes ((ListLongMap!1217 0))(
  ( (ListLongMap!1218 (toList!624 List!1222)) )
))
(declare-fun lt!19154 () ListLongMap!1217)

(assert (=> b!43921 (= res!25979 (= lt!19154 (ListLongMap!1218 Nil!1219)))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-datatypes ((array!2943 0))(
  ( (array!2944 (arr!1415 (Array (_ BitVec 32) (_ BitVec 64))) (size!1612 (_ BitVec 32))) )
))
(declare-fun lt!19162 () array!2943)

(declare-datatypes ((ValueCell!703 0))(
  ( (ValueCellFull!703 (v!2084 V!2321)) (EmptyCell!703) )
))
(declare-datatypes ((array!2945 0))(
  ( (array!2946 (arr!1416 (Array (_ BitVec 32) ValueCell!703)) (size!1613 (_ BitVec 32))) )
))
(declare-fun lt!19158 () array!2945)

(declare-fun defaultEntry!470 () Int)

(declare-fun lt!19156 () V!2321)

(declare-datatypes ((LongMapFixedSize!386 0))(
  ( (LongMapFixedSize!387 (defaultEntry!1892 Int) (mask!5458 (_ BitVec 32)) (extraKeys!1783 (_ BitVec 32)) (zeroValue!1810 V!2321) (minValue!1810 V!2321) (_size!242 (_ BitVec 32)) (_keys!3453 array!2943) (_values!1875 array!2945) (_vacant!242 (_ BitVec 32))) )
))
(declare-fun map!842 (LongMapFixedSize!386) ListLongMap!1217)

(assert (=> b!43921 (= lt!19154 (map!842 (LongMapFixedSize!387 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!19156 lt!19156 #b00000000000000000000000000000000 lt!19162 lt!19158 #b00000000000000000000000000000000)))))

(declare-datatypes ((List!1223 0))(
  ( (Nil!1220) (Cons!1219 (h!1796 (_ BitVec 64)) (t!4244 List!1223)) )
))
(declare-fun arrayNoDuplicates!0 (array!2943 (_ BitVec 32) List!1223) Bool)

(assert (=> b!43921 (arrayNoDuplicates!0 lt!19162 #b00000000000000000000000000000000 Nil!1220)))

(declare-datatypes ((Unit!1227 0))(
  ( (Unit!1228) )
))
(declare-fun lt!19153 () Unit!1227)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2943 (_ BitVec 32) (_ BitVec 32) List!1223) Unit!1227)

(assert (=> b!43921 (= lt!19153 (lemmaArrayNoDuplicatesInAll0Array!0 lt!19162 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1220))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2943 (_ BitVec 32)) Bool)

(assert (=> b!43921 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!19162 mask!853)))

(declare-fun lt!19155 () Unit!1227)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2943 (_ BitVec 32) (_ BitVec 32)) Unit!1227)

(assert (=> b!43921 (= lt!19155 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!19162 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2943 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!43921 (= (arrayCountValidKeys!0 lt!19162 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!19160 () Unit!1227)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2943 (_ BitVec 32) (_ BitVec 32)) Unit!1227)

(assert (=> b!43921 (= lt!19160 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!19162 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!43921 (= lt!19158 (array!2946 ((as const (Array (_ BitVec 32) ValueCell!703)) EmptyCell!703) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!43921 (= lt!19162 (array!2944 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!264 (Int (_ BitVec 64)) V!2321)

(assert (=> b!43921 (= lt!19156 (dynLambda!264 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!43924 () Bool)

(declare-fun e!27842 () Bool)

(declare-fun lt!19159 () tuple2!1636)

(declare-fun arrayContainsKey!0 (array!2943 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!43924 (= e!27842 (arrayContainsKey!0 lt!19162 (_1!828 lt!19159) #b00000000000000000000000000000000))))

(declare-fun res!25981 () Bool)

(assert (=> start!6662 (=> (not res!25981) (not e!27843))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!6662 (= res!25981 (validMask!0 mask!853))))

(assert (=> start!6662 e!27843))

(assert (=> start!6662 true))

(assert (=> start!6662 tp!5954))

(declare-fun b!43923 () Bool)

(assert (=> b!43923 (= e!27841 false)))

(declare-fun lt!19161 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!2943 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!43923 (= lt!19161 (arrayScanForKey!0 lt!19162 (_1!828 lt!19159) #b00000000000000000000000000000000))))

(assert (=> b!43923 e!27842))

(declare-fun res!25978 () Bool)

(assert (=> b!43923 (=> (not res!25978) (not e!27842))))

(assert (=> b!43923 (= res!25978 (and (not (= (_1!828 lt!19159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (_1!828 lt!19159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!19157 () Unit!1227)

(declare-fun lemmaKeyInListMapIsInArray!107 (array!2943 array!2945 (_ BitVec 32) (_ BitVec 32) V!2321 V!2321 (_ BitVec 64) Int) Unit!1227)

(assert (=> b!43923 (= lt!19157 (lemmaKeyInListMapIsInArray!107 lt!19162 lt!19158 mask!853 #b00000000000000000000000000000000 lt!19156 lt!19156 (_1!828 lt!19159) defaultEntry!470))))

(declare-fun head!892 (List!1222) tuple2!1636)

(assert (=> b!43923 (= lt!19159 (head!892 (toList!624 lt!19154)))))

(declare-fun b!43922 () Bool)

(declare-fun res!25980 () Bool)

(assert (=> b!43922 (=> res!25980 e!27841)))

(declare-fun isEmpty!291 (List!1222) Bool)

(assert (=> b!43922 (= res!25980 (isEmpty!291 (toList!624 lt!19154)))))

(assert (= (and start!6662 res!25981) b!43921))

(assert (= (and b!43921 (not res!25979)) b!43922))

(assert (= (and b!43922 (not res!25980)) b!43923))

(assert (= (and b!43923 res!25978) b!43924))

(declare-fun b_lambda!2321 () Bool)

(assert (=> (not b_lambda!2321) (not b!43921)))

(declare-fun t!4242 () Bool)

(declare-fun tb!1007 () Bool)

(assert (=> (and start!6662 (= defaultEntry!470 defaultEntry!470) t!4242) tb!1007))

(declare-fun result!1751 () Bool)

(declare-fun tp_is_empty!1901 () Bool)

(assert (=> tb!1007 (= result!1751 tp_is_empty!1901)))

(assert (=> b!43921 t!4242))

(declare-fun b_and!2707 () Bool)

(assert (= b_and!2705 (and (=> t!4242 result!1751) b_and!2707)))

(declare-fun m!38197 () Bool)

(assert (=> start!6662 m!38197))

(declare-fun m!38199 () Bool)

(assert (=> b!43924 m!38199))

(declare-fun m!38201 () Bool)

(assert (=> b!43921 m!38201))

(declare-fun m!38203 () Bool)

(assert (=> b!43921 m!38203))

(declare-fun m!38205 () Bool)

(assert (=> b!43921 m!38205))

(declare-fun m!38207 () Bool)

(assert (=> b!43921 m!38207))

(declare-fun m!38209 () Bool)

(assert (=> b!43921 m!38209))

(declare-fun m!38211 () Bool)

(assert (=> b!43921 m!38211))

(declare-fun m!38213 () Bool)

(assert (=> b!43921 m!38213))

(declare-fun m!38215 () Bool)

(assert (=> b!43921 m!38215))

(declare-fun m!38217 () Bool)

(assert (=> b!43922 m!38217))

(declare-fun m!38219 () Bool)

(assert (=> b!43923 m!38219))

(declare-fun m!38221 () Bool)

(assert (=> b!43923 m!38221))

(declare-fun m!38223 () Bool)

(assert (=> b!43923 m!38223))

(push 1)

(assert (not b_lambda!2321))

(assert (not b!43922))

(assert (not b!43924))

(assert (not b_next!1511))

(assert (not b!43923))

(assert b_and!2707)

(assert (not start!6662))

(assert (not b!43921))

(assert tp_is_empty!1901)

(check-sat)

(pop 1)

(push 1)

(assert b_and!2707)

(assert (not b_next!1511))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!2325 () Bool)

(assert (= b_lambda!2321 (or (and start!6662 b_free!1511) b_lambda!2325)))

(push 1)

(assert (not b!43922))

(assert (not b!43924))

(assert (not b_next!1511))

(assert (not b!43923))

(assert (not b_lambda!2325))

(assert b_and!2707)

(assert (not start!6662))

(assert (not b!43921))

(assert tp_is_empty!1901)

(check-sat)

(pop 1)

(push 1)

(assert b_and!2707)

(assert (not b_next!1511))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!8225 () Bool)

(declare-fun res!25992 () Bool)

(declare-fun e!27854 () Bool)

(assert (=> d!8225 (=> res!25992 e!27854)))

(assert (=> d!8225 (= res!25992 (= (select (arr!1415 lt!19162) #b00000000000000000000000000000000) (_1!828 lt!19159)))))

(assert (=> d!8225 (= (arrayContainsKey!0 lt!19162 (_1!828 lt!19159) #b00000000000000000000000000000000) e!27854)))

(declare-fun b!43937 () Bool)

(declare-fun e!27855 () Bool)

(assert (=> b!43937 (= e!27854 e!27855)))

(declare-fun res!25993 () Bool)

(assert (=> b!43937 (=> (not res!25993) (not e!27855))))

(assert (=> b!43937 (= res!25993 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1612 lt!19162)))))

(declare-fun b!43938 () Bool)

(assert (=> b!43938 (= e!27855 (arrayContainsKey!0 lt!19162 (_1!828 lt!19159) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!8225 (not res!25992)) b!43937))

(assert (= (and b!43937 res!25993) b!43938))

(declare-fun m!38229 () Bool)

(assert (=> d!8225 m!38229))

(declare-fun m!38231 () Bool)

(assert (=> b!43938 m!38231))

(assert (=> b!43924 d!8225))

(declare-fun d!8231 () Bool)

(declare-fun lt!19167 () (_ BitVec 32))

(assert (=> d!8231 (and (or (bvslt lt!19167 #b00000000000000000000000000000000) (bvsge lt!19167 (size!1612 lt!19162)) (and (bvsge lt!19167 #b00000000000000000000000000000000) (bvslt lt!19167 (size!1612 lt!19162)))) (bvsge lt!19167 #b00000000000000000000000000000000) (bvslt lt!19167 (size!1612 lt!19162)) (= (select (arr!1415 lt!19162) lt!19167) (_1!828 lt!19159)))))

(declare-fun e!27868 () (_ BitVec 32))

(assert (=> d!8231 (= lt!19167 e!27868)))

(declare-fun c!5699 () Bool)

(assert (=> d!8231 (= c!5699 (= (select (arr!1415 lt!19162) #b00000000000000000000000000000000) (_1!828 lt!19159)))))

(assert (=> d!8231 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1612 lt!19162)) (bvslt (size!1612 lt!19162) #b01111111111111111111111111111111))))

(assert (=> d!8231 (= (arrayScanForKey!0 lt!19162 (_1!828 lt!19159) #b00000000000000000000000000000000) lt!19167)))

(declare-fun b!43957 () Bool)

(assert (=> b!43957 (= e!27868 #b00000000000000000000000000000000)))

(declare-fun b!43958 () Bool)

(assert (=> b!43958 (= e!27868 (arrayScanForKey!0 lt!19162 (_1!828 lt!19159) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!8231 c!5699) b!43957))

(assert (= (and d!8231 (not c!5699)) b!43958))

(declare-fun m!38237 () Bool)

(assert (=> d!8231 m!38237))

(assert (=> d!8231 m!38229))

(declare-fun m!38239 () Bool)

(assert (=> b!43958 m!38239))

(assert (=> b!43923 d!8231))

(declare-fun d!8237 () Bool)

(declare-fun e!27873 () Bool)

(assert (=> d!8237 e!27873))

(declare-fun c!5704 () Bool)

(assert (=> d!8237 (= c!5704 (and (not (= (_1!828 lt!19159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (_1!828 lt!19159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!19171 () Unit!1227)

(declare-fun choose!267 (array!2943 array!2945 (_ BitVec 32) (_ BitVec 32) V!2321 V!2321 (_ BitVec 64) Int) Unit!1227)

(assert (=> d!8237 (= lt!19171 (choose!267 lt!19162 lt!19158 mask!853 #b00000000000000000000000000000000 lt!19156 lt!19156 (_1!828 lt!19159) defaultEntry!470))))

(assert (=> d!8237 (validMask!0 mask!853)))

(assert (=> d!8237 (= (lemmaKeyInListMapIsInArray!107 lt!19162 lt!19158 mask!853 #b00000000000000000000000000000000 lt!19156 lt!19156 (_1!828 lt!19159) defaultEntry!470) lt!19171)))

(declare-fun b!43967 () Bool)

(assert (=> b!43967 (= e!27873 (arrayContainsKey!0 lt!19162 (_1!828 lt!19159) #b00000000000000000000000000000000))))

(declare-fun b!43968 () Bool)

(assert (=> b!43968 (= e!27873 (ite (= (_1!828 lt!19159) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand #b00000000000000000000000000000000 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!8237 c!5704) b!43967))

(assert (= (and d!8237 (not c!5704)) b!43968))

(declare-fun m!38245 () Bool)

(assert (=> d!8237 m!38245))

(assert (=> d!8237 m!38197))

(assert (=> b!43967 m!38199))

(assert (=> b!43923 d!8237))

(declare-fun d!8243 () Bool)

(assert (=> d!8243 (= (head!892 (toList!624 lt!19154)) (h!1795 (toList!624 lt!19154)))))

(assert (=> b!43923 d!8243))

(declare-fun b!43989 () Bool)

(declare-fun e!27885 () (_ BitVec 32))

(assert (=> b!43989 (= e!27885 #b00000000000000000000000000000000)))

(declare-fun b!43990 () Bool)

(declare-fun e!27884 () (_ BitVec 32))

(declare-fun call!3533 () (_ BitVec 32))

(assert (=> b!43990 (= e!27884 call!3533)))

(declare-fun d!8245 () Bool)

(declare-fun lt!19180 () (_ BitVec 32))

(assert (=> d!8245 (and (bvsge lt!19180 #b00000000000000000000000000000000) (bvsle lt!19180 (bvsub (size!1612 lt!19162) #b00000000000000000000000000000000)))))

(assert (=> d!8245 (= lt!19180 e!27885)))

(declare-fun c!5715 () Bool)

(assert (=> d!8245 (= c!5715 (bvsge #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!8245 (and (bvsle #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 mask!853) (size!1612 lt!19162)))))

(assert (=> d!8245 (= (arrayCountValidKeys!0 lt!19162 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) lt!19180)))

(declare-fun bm!3530 () Bool)

(assert (=> bm!3530 (= call!3533 (arrayCountValidKeys!0 lt!19162 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun b!43991 () Bool)

(assert (=> b!43991 (= e!27885 e!27884)))

(declare-fun c!5716 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!43991 (= c!5716 (validKeyInArray!0 (select (arr!1415 lt!19162) #b00000000000000000000000000000000)))))

(declare-fun b!43992 () Bool)

(assert (=> b!43992 (= e!27884 (bvadd #b00000000000000000000000000000001 call!3533))))

(assert (= (and d!8245 c!5715) b!43989))

(assert (= (and d!8245 (not c!5715)) b!43991))

(assert (= (and b!43991 c!5716) b!43992))

(assert (= (and b!43991 (not c!5716)) b!43990))

(assert (= (or b!43992 b!43990) bm!3530))

(declare-fun m!38255 () Bool)

(assert (=> bm!3530 m!38255))

(assert (=> b!43991 m!38229))

(assert (=> b!43991 m!38229))

(declare-fun m!38257 () Bool)

(assert (=> b!43991 m!38257))

(assert (=> b!43921 d!8245))

(declare-fun d!8253 () Bool)

(assert (=> d!8253 (= (arrayCountValidKeys!0 lt!19162 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!19186 () Unit!1227)

(declare-fun choose!59 (array!2943 (_ BitVec 32) (_ BitVec 32)) Unit!1227)

(assert (=> d!8253 (= lt!19186 (choose!59 lt!19162 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!8253 (bvslt (size!1612 lt!19162) #b01111111111111111111111111111111)))

(assert (=> d!8253 (= (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!19162 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) lt!19186)))

(declare-fun bs!1993 () Bool)

(assert (= bs!1993 d!8253))

(assert (=> bs!1993 m!38203))

(declare-fun m!38261 () Bool)

(assert (=> bs!1993 m!38261))

(assert (=> b!43921 d!8253))

(declare-fun b!44016 () Bool)

(declare-fun e!27904 () Bool)

(declare-fun e!27906 () Bool)

(assert (=> b!44016 (= e!27904 e!27906)))

(declare-fun c!5722 () Bool)

(assert (=> b!44016 (= c!5722 (validKeyInArray!0 (select (arr!1415 lt!19162) #b00000000000000000000000000000000)))))

(declare-fun b!44017 () Bool)

(declare-fun call!3539 () Bool)

(assert (=> b!44017 (= e!27906 call!3539)))

(declare-fun d!8257 () Bool)

(declare-fun res!26014 () Bool)

(assert (=> d!8257 (=> res!26014 e!27904)))

(assert (=> d!8257 (= res!26014 (bvsge #b00000000000000000000000000000000 (size!1612 lt!19162)))))

(assert (=> d!8257 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!19162 mask!853) e!27904)))

(declare-fun b!44018 () Bool)

(declare-fun e!27905 () Bool)

(assert (=> b!44018 (= e!27905 call!3539)))

(declare-fun b!44019 () Bool)

(assert (=> b!44019 (= e!27906 e!27905)))

(declare-fun lt!19198 () (_ BitVec 64))

(assert (=> b!44019 (= lt!19198 (select (arr!1415 lt!19162) #b00000000000000000000000000000000))))

(declare-fun lt!19199 () Unit!1227)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!2943 (_ BitVec 64) (_ BitVec 32)) Unit!1227)

(assert (=> b!44019 (= lt!19199 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!19162 lt!19198 #b00000000000000000000000000000000))))

(assert (=> b!44019 (arrayContainsKey!0 lt!19162 lt!19198 #b00000000000000000000000000000000)))

(declare-fun lt!19200 () Unit!1227)

(assert (=> b!44019 (= lt!19200 lt!19199)))

(declare-fun res!26013 () Bool)

(declare-datatypes ((SeekEntryResult!212 0))(
  ( (MissingZero!212 (index!2970 (_ BitVec 32))) (Found!212 (index!2971 (_ BitVec 32))) (Intermediate!212 (undefined!1024 Bool) (index!2972 (_ BitVec 32)) (x!8333 (_ BitVec 32))) (Undefined!212) (MissingVacant!212 (index!2973 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!2943 (_ BitVec 32)) SeekEntryResult!212)

(assert (=> b!44019 (= res!26013 (= (seekEntryOrOpen!0 (select (arr!1415 lt!19162) #b00000000000000000000000000000000) lt!19162 mask!853) (Found!212 #b00000000000000000000000000000000)))))

(assert (=> b!44019 (=> (not res!26013) (not e!27905))))

(declare-fun bm!3536 () Bool)

(assert (=> bm!3536 (= call!3539 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!19162 mask!853))))

(assert (= (and d!8257 (not res!26014)) b!44016))

(assert (= (and b!44016 c!5722) b!44019))

(assert (= (and b!44016 (not c!5722)) b!44017))

(assert (= (and b!44019 res!26013) b!44018))

(assert (= (or b!44018 b!44017) bm!3536))

(assert (=> b!44016 m!38229))

(assert (=> b!44016 m!38229))

(assert (=> b!44016 m!38257))

(assert (=> b!44019 m!38229))

(declare-fun m!38273 () Bool)

(assert (=> b!44019 m!38273))

(declare-fun m!38275 () Bool)

(assert (=> b!44019 m!38275))

(assert (=> b!44019 m!38229))

(declare-fun m!38277 () Bool)

(assert (=> b!44019 m!38277))

(declare-fun m!38279 () Bool)

(assert (=> bm!3536 m!38279))

(assert (=> b!43921 d!8257))

(declare-fun b!44043 () Bool)

(declare-fun e!27924 () Bool)

(declare-fun e!27927 () Bool)

(assert (=> b!44043 (= e!27924 e!27927)))

(declare-fun c!5728 () Bool)

(assert (=> b!44043 (= c!5728 (validKeyInArray!0 (select (arr!1415 lt!19162) #b00000000000000000000000000000000)))))

(declare-fun b!44044 () Bool)

(declare-fun call!3545 () Bool)

(assert (=> b!44044 (= e!27927 call!3545)))

(declare-fun b!44045 () Bool)

(assert (=> b!44045 (= e!27927 call!3545)))

(declare-fun b!44042 () Bool)

(declare-fun e!27926 () Bool)

(assert (=> b!44042 (= e!27926 e!27924)))

(declare-fun res!26029 () Bool)

(assert (=> b!44042 (=> (not res!26029) (not e!27924))))

(declare-fun e!27925 () Bool)

(assert (=> b!44042 (= res!26029 (not e!27925))))

(declare-fun res!26027 () Bool)

(assert (=> b!44042 (=> (not res!26027) (not e!27925))))

(assert (=> b!44042 (= res!26027 (validKeyInArray!0 (select (arr!1415 lt!19162) #b00000000000000000000000000000000)))))

(declare-fun d!8267 () Bool)

(declare-fun res!26028 () Bool)

(assert (=> d!8267 (=> res!26028 e!27926)))

(assert (=> d!8267 (= res!26028 (bvsge #b00000000000000000000000000000000 (size!1612 lt!19162)))))

(assert (=> d!8267 (= (arrayNoDuplicates!0 lt!19162 #b00000000000000000000000000000000 Nil!1220) e!27926)))

(declare-fun b!44046 () Bool)

(declare-fun contains!575 (List!1223 (_ BitVec 64)) Bool)

(assert (=> b!44046 (= e!27925 (contains!575 Nil!1220 (select (arr!1415 lt!19162) #b00000000000000000000000000000000)))))

(declare-fun bm!3542 () Bool)

(assert (=> bm!3542 (= call!3545 (arrayNoDuplicates!0 lt!19162 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!5728 (Cons!1219 (select (arr!1415 lt!19162) #b00000000000000000000000000000000) Nil!1220) Nil!1220)))))

(assert (= (and d!8267 (not res!26028)) b!44042))

(assert (= (and b!44042 res!26027) b!44046))

(assert (= (and b!44042 res!26029) b!44043))

