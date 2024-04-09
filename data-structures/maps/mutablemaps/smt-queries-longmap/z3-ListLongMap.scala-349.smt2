; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!6390 () Bool)

(assert start!6390)

(declare-fun b_free!1473 () Bool)

(declare-fun b_next!1473 () Bool)

(assert (=> start!6390 (= b_free!1473 (not b_next!1473))))

(declare-fun tp!5897 () Bool)

(declare-fun b_and!2605 () Bool)

(assert (=> start!6390 (= tp!5897 b_and!2605)))

(declare-fun res!25458 () Bool)

(declare-fun e!27149 () Bool)

(assert (=> start!6390 (=> (not res!25458) (not e!27149))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!6390 (= res!25458 (validMask!0 mask!853))))

(assert (=> start!6390 e!27149))

(assert (=> start!6390 true))

(assert (=> start!6390 tp!5897))

(declare-fun b!42831 () Bool)

(declare-fun e!27150 () Bool)

(assert (=> b!42831 (= e!27149 (not e!27150))))

(declare-fun res!25457 () Bool)

(assert (=> b!42831 (=> res!25457 e!27150)))

(declare-datatypes ((V!2271 0))(
  ( (V!2272 (val!970 Int)) )
))
(declare-datatypes ((tuple2!1598 0))(
  ( (tuple2!1599 (_1!809 (_ BitVec 64)) (_2!809 V!2271)) )
))
(declare-datatypes ((List!1184 0))(
  ( (Nil!1181) (Cons!1180 (h!1757 tuple2!1598) (t!4161 List!1184)) )
))
(declare-datatypes ((ListLongMap!1179 0))(
  ( (ListLongMap!1180 (toList!605 List!1184)) )
))
(declare-fun lt!18050 () ListLongMap!1179)

(assert (=> b!42831 (= res!25457 (= lt!18050 (ListLongMap!1180 Nil!1181)))))

(declare-fun lt!18047 () V!2271)

(declare-fun defaultEntry!470 () Int)

(declare-datatypes ((array!2867 0))(
  ( (array!2868 (arr!1377 (Array (_ BitVec 32) (_ BitVec 64))) (size!1556 (_ BitVec 32))) )
))
(declare-fun lt!18051 () array!2867)

(declare-datatypes ((ValueCell!684 0))(
  ( (ValueCellFull!684 (v!2059 V!2271)) (EmptyCell!684) )
))
(declare-datatypes ((array!2869 0))(
  ( (array!2870 (arr!1378 (Array (_ BitVec 32) ValueCell!684)) (size!1557 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!348 0))(
  ( (LongMapFixedSize!349 (defaultEntry!1867 Int) (mask!5397 (_ BitVec 32)) (extraKeys!1758 (_ BitVec 32)) (zeroValue!1785 V!2271) (minValue!1785 V!2271) (_size!223 (_ BitVec 32)) (_keys!3410 array!2867) (_values!1850 array!2869) (_vacant!223 (_ BitVec 32))) )
))
(declare-fun map!811 (LongMapFixedSize!348) ListLongMap!1179)

(assert (=> b!42831 (= lt!18050 (map!811 (LongMapFixedSize!349 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18047 lt!18047 #b00000000000000000000000000000000 lt!18051 (array!2870 ((as const (Array (_ BitVec 32) ValueCell!684)) EmptyCell!684) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))))

(declare-datatypes ((List!1185 0))(
  ( (Nil!1182) (Cons!1181 (h!1758 (_ BitVec 64)) (t!4162 List!1185)) )
))
(declare-fun arrayNoDuplicates!0 (array!2867 (_ BitVec 32) List!1185) Bool)

(assert (=> b!42831 (arrayNoDuplicates!0 lt!18051 #b00000000000000000000000000000000 Nil!1182)))

(declare-datatypes ((Unit!1171 0))(
  ( (Unit!1172) )
))
(declare-fun lt!18048 () Unit!1171)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2867 (_ BitVec 32) (_ BitVec 32) List!1185) Unit!1171)

(assert (=> b!42831 (= lt!18048 (lemmaArrayNoDuplicatesInAll0Array!0 lt!18051 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1182))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2867 (_ BitVec 32)) Bool)

(assert (=> b!42831 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!18051 mask!853)))

(declare-fun lt!18052 () Unit!1171)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2867 (_ BitVec 32) (_ BitVec 32)) Unit!1171)

(assert (=> b!42831 (= lt!18052 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!18051 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2867 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!42831 (= (arrayCountValidKeys!0 lt!18051 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!18049 () Unit!1171)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2867 (_ BitVec 32) (_ BitVec 32)) Unit!1171)

(assert (=> b!42831 (= lt!18049 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!18051 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!42831 (= lt!18051 (array!2868 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!245 (Int (_ BitVec 64)) V!2271)

(assert (=> b!42831 (= lt!18047 (dynLambda!245 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!42832 () Bool)

(declare-fun res!25459 () Bool)

(assert (=> b!42832 (=> res!25459 e!27150)))

(declare-fun isEmpty!278 (List!1184) Bool)

(assert (=> b!42832 (= res!25459 (isEmpty!278 (toList!605 lt!18050)))))

(declare-fun b!42833 () Bool)

(assert (=> b!42833 (= e!27150 (bvsge mask!853 #b00000000000000000000000000000000))))

(assert (= (and start!6390 res!25458) b!42831))

(assert (= (and b!42831 (not res!25457)) b!42832))

(assert (= (and b!42832 (not res!25459)) b!42833))

(declare-fun b_lambda!2229 () Bool)

(assert (=> (not b_lambda!2229) (not b!42831)))

(declare-fun t!4160 () Bool)

(declare-fun tb!963 () Bool)

(assert (=> (and start!6390 (= defaultEntry!470 defaultEntry!470) t!4160) tb!963))

(declare-fun result!1669 () Bool)

(declare-fun tp_is_empty!1863 () Bool)

(assert (=> tb!963 (= result!1669 tp_is_empty!1863)))

(assert (=> b!42831 t!4160))

(declare-fun b_and!2607 () Bool)

(assert (= b_and!2605 (and (=> t!4160 result!1669) b_and!2607)))

(declare-fun m!36613 () Bool)

(assert (=> start!6390 m!36613))

(declare-fun m!36615 () Bool)

(assert (=> b!42831 m!36615))

(declare-fun m!36617 () Bool)

(assert (=> b!42831 m!36617))

(declare-fun m!36619 () Bool)

(assert (=> b!42831 m!36619))

(declare-fun m!36621 () Bool)

(assert (=> b!42831 m!36621))

(declare-fun m!36623 () Bool)

(assert (=> b!42831 m!36623))

(declare-fun m!36625 () Bool)

(assert (=> b!42831 m!36625))

(declare-fun m!36627 () Bool)

(assert (=> b!42831 m!36627))

(declare-fun m!36629 () Bool)

(assert (=> b!42831 m!36629))

(declare-fun m!36631 () Bool)

(assert (=> b!42832 m!36631))

(check-sat tp_is_empty!1863 (not start!6390) (not b_next!1473) (not b!42832) (not b!42831) (not b_lambda!2229) b_and!2607)
(check-sat b_and!2607 (not b_next!1473))
(get-model)

(declare-fun b_lambda!2237 () Bool)

(assert (= b_lambda!2229 (or (and start!6390 b_free!1473) b_lambda!2237)))

(check-sat tp_is_empty!1863 b_and!2607 (not b_next!1473) (not b!42832) (not b!42831) (not start!6390) (not b_lambda!2237))
(check-sat b_and!2607 (not b_next!1473))
(get-model)

(declare-fun d!7845 () Bool)

(assert (=> d!7845 (= (validMask!0 mask!853) (and (or (= mask!853 #b00000000000000000000000000000111) (= mask!853 #b00000000000000000000000000001111) (= mask!853 #b00000000000000000000000000011111) (= mask!853 #b00000000000000000000000000111111) (= mask!853 #b00000000000000000000000001111111) (= mask!853 #b00000000000000000000000011111111) (= mask!853 #b00000000000000000000000111111111) (= mask!853 #b00000000000000000000001111111111) (= mask!853 #b00000000000000000000011111111111) (= mask!853 #b00000000000000000000111111111111) (= mask!853 #b00000000000000000001111111111111) (= mask!853 #b00000000000000000011111111111111) (= mask!853 #b00000000000000000111111111111111) (= mask!853 #b00000000000000001111111111111111) (= mask!853 #b00000000000000011111111111111111) (= mask!853 #b00000000000000111111111111111111) (= mask!853 #b00000000000001111111111111111111) (= mask!853 #b00000000000011111111111111111111) (= mask!853 #b00000000000111111111111111111111) (= mask!853 #b00000000001111111111111111111111) (= mask!853 #b00000000011111111111111111111111) (= mask!853 #b00000000111111111111111111111111) (= mask!853 #b00000001111111111111111111111111) (= mask!853 #b00000011111111111111111111111111) (= mask!853 #b00000111111111111111111111111111) (= mask!853 #b00001111111111111111111111111111) (= mask!853 #b00011111111111111111111111111111) (= mask!853 #b00111111111111111111111111111111)) (bvsle mask!853 #b00111111111111111111111111111111)))))

(assert (=> start!6390 d!7845))

(declare-fun d!7857 () Bool)

(get-info :version)

(assert (=> d!7857 (= (isEmpty!278 (toList!605 lt!18050)) ((_ is Nil!1181) (toList!605 lt!18050)))))

(assert (=> b!42832 d!7857))

(declare-fun b!42879 () Bool)

(declare-fun e!27179 () Bool)

(declare-fun call!3377 () Bool)

(assert (=> b!42879 (= e!27179 call!3377)))

(declare-fun b!42880 () Bool)

(declare-fun e!27180 () Bool)

(assert (=> b!42880 (= e!27180 e!27179)))

(declare-fun c!5437 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!42880 (= c!5437 (validKeyInArray!0 (select (arr!1377 lt!18051) #b00000000000000000000000000000000)))))

(declare-fun bm!3374 () Bool)

(assert (=> bm!3374 (= call!3377 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!18051 mask!853))))

(declare-fun d!7859 () Bool)

(declare-fun res!25479 () Bool)

(assert (=> d!7859 (=> res!25479 e!27180)))

(assert (=> d!7859 (= res!25479 (bvsge #b00000000000000000000000000000000 (size!1556 lt!18051)))))

(assert (=> d!7859 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!18051 mask!853) e!27180)))

(declare-fun b!42881 () Bool)

(declare-fun e!27178 () Bool)

(assert (=> b!42881 (= e!27179 e!27178)))

(declare-fun lt!18099 () (_ BitVec 64))

(assert (=> b!42881 (= lt!18099 (select (arr!1377 lt!18051) #b00000000000000000000000000000000))))

(declare-fun lt!18098 () Unit!1171)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!2867 (_ BitVec 64) (_ BitVec 32)) Unit!1171)

(assert (=> b!42881 (= lt!18098 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!18051 lt!18099 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!2867 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!42881 (arrayContainsKey!0 lt!18051 lt!18099 #b00000000000000000000000000000000)))

(declare-fun lt!18100 () Unit!1171)

(assert (=> b!42881 (= lt!18100 lt!18098)))

(declare-fun res!25480 () Bool)

(declare-datatypes ((SeekEntryResult!205 0))(
  ( (MissingZero!205 (index!2942 (_ BitVec 32))) (Found!205 (index!2943 (_ BitVec 32))) (Intermediate!205 (undefined!1017 Bool) (index!2944 (_ BitVec 32)) (x!8213 (_ BitVec 32))) (Undefined!205) (MissingVacant!205 (index!2945 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!2867 (_ BitVec 32)) SeekEntryResult!205)

(assert (=> b!42881 (= res!25480 (= (seekEntryOrOpen!0 (select (arr!1377 lt!18051) #b00000000000000000000000000000000) lt!18051 mask!853) (Found!205 #b00000000000000000000000000000000)))))

(assert (=> b!42881 (=> (not res!25480) (not e!27178))))

(declare-fun b!42882 () Bool)

(assert (=> b!42882 (= e!27178 call!3377)))

(assert (= (and d!7859 (not res!25479)) b!42880))

(assert (= (and b!42880 c!5437) b!42881))

(assert (= (and b!42880 (not c!5437)) b!42879))

(assert (= (and b!42881 res!25480) b!42882))

(assert (= (or b!42882 b!42879) bm!3374))

(declare-fun m!36679 () Bool)

(assert (=> b!42880 m!36679))

(assert (=> b!42880 m!36679))

(declare-fun m!36681 () Bool)

(assert (=> b!42880 m!36681))

(declare-fun m!36683 () Bool)

(assert (=> bm!3374 m!36683))

(assert (=> b!42881 m!36679))

(declare-fun m!36685 () Bool)

(assert (=> b!42881 m!36685))

(declare-fun m!36687 () Bool)

(assert (=> b!42881 m!36687))

(assert (=> b!42881 m!36679))

(declare-fun m!36689 () Bool)

(assert (=> b!42881 m!36689))

(assert (=> b!42831 d!7859))

(declare-fun bm!3382 () Bool)

(declare-fun call!3385 () (_ BitVec 32))

(assert (=> bm!3382 (= call!3385 (arrayCountValidKeys!0 lt!18051 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun b!42916 () Bool)

(declare-fun e!27205 () (_ BitVec 32))

(assert (=> b!42916 (= e!27205 #b00000000000000000000000000000000)))

(declare-fun b!42917 () Bool)

(declare-fun e!27206 () (_ BitVec 32))

(assert (=> b!42917 (= e!27206 (bvadd #b00000000000000000000000000000001 call!3385))))

(declare-fun b!42918 () Bool)

(assert (=> b!42918 (= e!27205 e!27206)))

(declare-fun c!5447 () Bool)

(assert (=> b!42918 (= c!5447 (validKeyInArray!0 (select (arr!1377 lt!18051) #b00000000000000000000000000000000)))))

(declare-fun b!42919 () Bool)

(assert (=> b!42919 (= e!27206 call!3385)))

(declare-fun d!7867 () Bool)

(declare-fun lt!18106 () (_ BitVec 32))

(assert (=> d!7867 (and (bvsge lt!18106 #b00000000000000000000000000000000) (bvsle lt!18106 (bvsub (size!1556 lt!18051) #b00000000000000000000000000000000)))))

(assert (=> d!7867 (= lt!18106 e!27205)))

(declare-fun c!5448 () Bool)

(assert (=> d!7867 (= c!5448 (bvsge #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!7867 (and (bvsle #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 mask!853) (size!1556 lt!18051)))))

(assert (=> d!7867 (= (arrayCountValidKeys!0 lt!18051 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) lt!18106)))

(assert (= (and d!7867 c!5448) b!42916))

(assert (= (and d!7867 (not c!5448)) b!42918))

(assert (= (and b!42918 c!5447) b!42917))

(assert (= (and b!42918 (not c!5447)) b!42919))

(assert (= (or b!42917 b!42919) bm!3382))

(declare-fun m!36697 () Bool)

(assert (=> bm!3382 m!36697))

(assert (=> b!42918 m!36679))

(assert (=> b!42918 m!36679))

(assert (=> b!42918 m!36681))

(assert (=> b!42831 d!7867))

(declare-fun d!7873 () Bool)

(assert (=> d!7873 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!18051 mask!853)))

(declare-fun lt!18109 () Unit!1171)

(declare-fun choose!34 (array!2867 (_ BitVec 32) (_ BitVec 32)) Unit!1171)

(assert (=> d!7873 (= lt!18109 (choose!34 lt!18051 mask!853 #b00000000000000000000000000000000))))

(assert (=> d!7873 (validMask!0 mask!853)))

(assert (=> d!7873 (= (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!18051 mask!853 #b00000000000000000000000000000000) lt!18109)))

(declare-fun bs!1908 () Bool)

(assert (= bs!1908 d!7873))

(assert (=> bs!1908 m!36627))

(declare-fun m!36703 () Bool)

(assert (=> bs!1908 m!36703))

(assert (=> bs!1908 m!36613))

(assert (=> b!42831 d!7873))

(declare-fun d!7877 () Bool)

(assert (=> d!7877 (arrayNoDuplicates!0 lt!18051 #b00000000000000000000000000000000 Nil!1182)))

(declare-fun lt!18112 () Unit!1171)

(declare-fun choose!111 (array!2867 (_ BitVec 32) (_ BitVec 32) List!1185) Unit!1171)

(assert (=> d!7877 (= lt!18112 (choose!111 lt!18051 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1182))))

(assert (=> d!7877 (= (size!1556 lt!18051) (bvadd #b00000000000000000000000000000001 mask!853))))

(assert (=> d!7877 (= (lemmaArrayNoDuplicatesInAll0Array!0 lt!18051 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1182) lt!18112)))

(declare-fun bs!1910 () Bool)

(assert (= bs!1910 d!7877))

(assert (=> bs!1910 m!36623))

(declare-fun m!36707 () Bool)

(assert (=> bs!1910 m!36707))

(assert (=> b!42831 d!7877))

(declare-fun b!42947 () Bool)

(declare-fun e!27228 () Bool)

(declare-fun e!27231 () Bool)

(assert (=> b!42947 (= e!27228 e!27231)))

(declare-fun c!5455 () Bool)

(assert (=> b!42947 (= c!5455 (validKeyInArray!0 (select (arr!1377 lt!18051) #b00000000000000000000000000000000)))))

(declare-fun b!42948 () Bool)

(declare-fun e!27230 () Bool)

(declare-fun contains!562 (List!1185 (_ BitVec 64)) Bool)

(assert (=> b!42948 (= e!27230 (contains!562 Nil!1182 (select (arr!1377 lt!18051) #b00000000000000000000000000000000)))))

(declare-fun bm!3389 () Bool)

(declare-fun call!3392 () Bool)

(assert (=> bm!3389 (= call!3392 (arrayNoDuplicates!0 lt!18051 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!5455 (Cons!1181 (select (arr!1377 lt!18051) #b00000000000000000000000000000000) Nil!1182) Nil!1182)))))

(declare-fun b!42949 () Bool)

(declare-fun e!27229 () Bool)

(assert (=> b!42949 (= e!27229 e!27228)))

(declare-fun res!25513 () Bool)

(assert (=> b!42949 (=> (not res!25513) (not e!27228))))

(assert (=> b!42949 (= res!25513 (not e!27230))))

(declare-fun res!25512 () Bool)

(assert (=> b!42949 (=> (not res!25512) (not e!27230))))

(assert (=> b!42949 (= res!25512 (validKeyInArray!0 (select (arr!1377 lt!18051) #b00000000000000000000000000000000)))))

(declare-fun d!7881 () Bool)

(declare-fun res!25511 () Bool)

(assert (=> d!7881 (=> res!25511 e!27229)))

(assert (=> d!7881 (= res!25511 (bvsge #b00000000000000000000000000000000 (size!1556 lt!18051)))))

(assert (=> d!7881 (= (arrayNoDuplicates!0 lt!18051 #b00000000000000000000000000000000 Nil!1182) e!27229)))

(declare-fun b!42950 () Bool)

(assert (=> b!42950 (= e!27231 call!3392)))

(declare-fun b!42951 () Bool)

(assert (=> b!42951 (= e!27231 call!3392)))

(assert (= (and d!7881 (not res!25511)) b!42949))

(assert (= (and b!42949 res!25512) b!42948))

(assert (= (and b!42949 res!25513) b!42947))

(assert (= (and b!42947 c!5455) b!42951))

(assert (= (and b!42947 (not c!5455)) b!42950))

(assert (= (or b!42951 b!42950) bm!3389))

(assert (=> b!42947 m!36679))

(assert (=> b!42947 m!36679))

(assert (=> b!42947 m!36681))

(assert (=> b!42948 m!36679))

(assert (=> b!42948 m!36679))

(declare-fun m!36721 () Bool)

(assert (=> b!42948 m!36721))

(assert (=> bm!3389 m!36679))

(declare-fun m!36723 () Bool)

(assert (=> bm!3389 m!36723))

(assert (=> b!42949 m!36679))

(assert (=> b!42949 m!36679))

(assert (=> b!42949 m!36681))

(assert (=> b!42831 d!7881))

(declare-fun d!7889 () Bool)

(declare-fun getCurrentListMap!349 (array!2867 array!2869 (_ BitVec 32) (_ BitVec 32) V!2271 V!2271 (_ BitVec 32) Int) ListLongMap!1179)

(assert (=> d!7889 (= (map!811 (LongMapFixedSize!349 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18047 lt!18047 #b00000000000000000000000000000000 lt!18051 (array!2870 ((as const (Array (_ BitVec 32) ValueCell!684)) EmptyCell!684) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (getCurrentListMap!349 (_keys!3410 (LongMapFixedSize!349 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18047 lt!18047 #b00000000000000000000000000000000 lt!18051 (array!2870 ((as const (Array (_ BitVec 32) ValueCell!684)) EmptyCell!684) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (_values!1850 (LongMapFixedSize!349 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18047 lt!18047 #b00000000000000000000000000000000 lt!18051 (array!2870 ((as const (Array (_ BitVec 32) ValueCell!684)) EmptyCell!684) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (mask!5397 (LongMapFixedSize!349 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18047 lt!18047 #b00000000000000000000000000000000 lt!18051 (array!2870 ((as const (Array (_ BitVec 32) ValueCell!684)) EmptyCell!684) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (extraKeys!1758 (LongMapFixedSize!349 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18047 lt!18047 #b00000000000000000000000000000000 lt!18051 (array!2870 ((as const (Array (_ BitVec 32) ValueCell!684)) EmptyCell!684) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (zeroValue!1785 (LongMapFixedSize!349 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18047 lt!18047 #b00000000000000000000000000000000 lt!18051 (array!2870 ((as const (Array (_ BitVec 32) ValueCell!684)) EmptyCell!684) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (minValue!1785 (LongMapFixedSize!349 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18047 lt!18047 #b00000000000000000000000000000000 lt!18051 (array!2870 ((as const (Array (_ BitVec 32) ValueCell!684)) EmptyCell!684) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000000000000000000000000 (defaultEntry!1867 (LongMapFixedSize!349 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18047 lt!18047 #b00000000000000000000000000000000 lt!18051 (array!2870 ((as const (Array (_ BitVec 32) ValueCell!684)) EmptyCell!684) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))))))

(declare-fun bs!1913 () Bool)

(assert (= bs!1913 d!7889))

(declare-fun m!36727 () Bool)

(assert (=> bs!1913 m!36727))

(assert (=> b!42831 d!7889))

(declare-fun d!7891 () Bool)

(assert (=> d!7891 (= (arrayCountValidKeys!0 lt!18051 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!18133 () Unit!1171)

(declare-fun choose!59 (array!2867 (_ BitVec 32) (_ BitVec 32)) Unit!1171)

(assert (=> d!7891 (= lt!18133 (choose!59 lt!18051 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!7891 (bvslt (size!1556 lt!18051) #b01111111111111111111111111111111)))

(assert (=> d!7891 (= (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!18051 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) lt!18133)))

(declare-fun bs!1914 () Bool)

(assert (= bs!1914 d!7891))

(assert (=> bs!1914 m!36617))

(declare-fun m!36729 () Bool)

(assert (=> bs!1914 m!36729))

(assert (=> b!42831 d!7891))

(check-sat tp_is_empty!1863 (not b!42918) (not bm!3374) (not b_lambda!2237) b_and!2607 (not b_next!1473) (not b!42881) (not b!42947) (not d!7889) (not d!7877) (not d!7873) (not b!42948) (not b!42949) (not bm!3382) (not b!42880) (not d!7891) (not bm!3389))
(check-sat b_and!2607 (not b_next!1473))
