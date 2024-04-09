; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!5958 () Bool)

(assert start!5958)

(declare-fun b_free!1431 () Bool)

(declare-fun b_next!1431 () Bool)

(assert (=> start!5958 (= b_free!1431 (not b_next!1431))))

(declare-fun tp!5834 () Bool)

(declare-fun b_and!2521 () Bool)

(assert (=> start!5958 (= tp!5834 b_and!2521)))

(declare-fun b!41810 () Bool)

(declare-fun e!26424 () Bool)

(declare-fun e!26422 () Bool)

(assert (=> b!41810 (= e!26424 (not e!26422))))

(declare-fun res!24910 () Bool)

(assert (=> b!41810 (=> res!24910 e!26422)))

(declare-datatypes ((V!2187 0))(
  ( (V!2188 (val!949 Int)) )
))
(declare-datatypes ((tuple2!1556 0))(
  ( (tuple2!1557 (_1!788 (_ BitVec 64)) (_2!788 V!2187)) )
))
(declare-datatypes ((List!1136 0))(
  ( (Nil!1133) (Cons!1132 (h!1709 tuple2!1556) (t!4071 List!1136)) )
))
(declare-datatypes ((ListLongMap!1137 0))(
  ( (ListLongMap!1138 (toList!584 List!1136)) )
))
(declare-fun lt!16946 () ListLongMap!1137)

(assert (=> b!41810 (= res!24910 (= lt!16946 (ListLongMap!1138 Nil!1133)))))

(declare-fun lt!16945 () V!2187)

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun defaultEntry!470 () Int)

(declare-datatypes ((ValueCell!663 0))(
  ( (ValueCellFull!663 (v!2032 V!2187)) (EmptyCell!663) )
))
(declare-datatypes ((array!2723 0))(
  ( (array!2724 (arr!1305 (Array (_ BitVec 32) ValueCell!663)) (size!1457 (_ BitVec 32))) )
))
(declare-fun lt!16942 () array!2723)

(declare-datatypes ((array!2725 0))(
  ( (array!2726 (arr!1306 (Array (_ BitVec 32) (_ BitVec 64))) (size!1458 (_ BitVec 32))) )
))
(declare-fun lt!16947 () array!2725)

(declare-datatypes ((LongMapFixedSize!306 0))(
  ( (LongMapFixedSize!307 (defaultEntry!1843 Int) (mask!5262 (_ BitVec 32)) (extraKeys!1734 (_ BitVec 32)) (zeroValue!1761 V!2187) (minValue!1761 V!2187) (_size!202 (_ BitVec 32)) (_keys!3350 array!2725) (_values!1826 array!2723) (_vacant!202 (_ BitVec 32))) )
))
(declare-fun map!748 (LongMapFixedSize!306) ListLongMap!1137)

(assert (=> b!41810 (= lt!16946 (map!748 (LongMapFixedSize!307 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!16945 lt!16945 #b00000000000000000000000000000000 lt!16947 lt!16942 #b00000000000000000000000000000000)))))

(declare-datatypes ((List!1137 0))(
  ( (Nil!1134) (Cons!1133 (h!1710 (_ BitVec 64)) (t!4072 List!1137)) )
))
(declare-fun arrayNoDuplicates!0 (array!2725 (_ BitVec 32) List!1137) Bool)

(assert (=> b!41810 (arrayNoDuplicates!0 lt!16947 #b00000000000000000000000000000000 Nil!1134)))

(declare-datatypes ((Unit!1063 0))(
  ( (Unit!1064) )
))
(declare-fun lt!16944 () Unit!1063)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2725 (_ BitVec 32) (_ BitVec 32) List!1137) Unit!1063)

(assert (=> b!41810 (= lt!16944 (lemmaArrayNoDuplicatesInAll0Array!0 lt!16947 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1134))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2725 (_ BitVec 32)) Bool)

(assert (=> b!41810 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!16947 mask!853)))

(declare-fun lt!16943 () Unit!1063)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2725 (_ BitVec 32) (_ BitVec 32)) Unit!1063)

(assert (=> b!41810 (= lt!16943 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!16947 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2725 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!41810 (= (arrayCountValidKeys!0 lt!16947 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!16948 () Unit!1063)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2725 (_ BitVec 32) (_ BitVec 32)) Unit!1063)

(assert (=> b!41810 (= lt!16948 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!16947 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!41810 (= lt!16942 (array!2724 ((as const (Array (_ BitVec 32) ValueCell!663)) EmptyCell!663) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!41810 (= lt!16947 (array!2726 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!224 (Int (_ BitVec 64)) V!2187)

(assert (=> b!41810 (= lt!16945 (dynLambda!224 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!41812 () Bool)

(assert (=> b!41812 (= e!26422 (and (bvslt #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) (bvslt (bvadd #b00000000000000000000000000000001 mask!853) #b01111111111111111111111111111111)))))

(declare-fun e!26423 () Bool)

(assert (=> b!41812 e!26423))

(declare-fun res!24913 () Bool)

(assert (=> b!41812 (=> (not res!24913) (not e!26423))))

(declare-fun lt!16941 () tuple2!1556)

(assert (=> b!41812 (= res!24913 (and (not (= (_1!788 lt!16941) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (_1!788 lt!16941) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!16940 () Unit!1063)

(declare-fun lemmaKeyInListMapIsInArray!97 (array!2725 array!2723 (_ BitVec 32) (_ BitVec 32) V!2187 V!2187 (_ BitVec 64) Int) Unit!1063)

(assert (=> b!41812 (= lt!16940 (lemmaKeyInListMapIsInArray!97 lt!16947 lt!16942 mask!853 #b00000000000000000000000000000000 lt!16945 lt!16945 (_1!788 lt!16941) defaultEntry!470))))

(declare-fun head!879 (List!1136) tuple2!1556)

(assert (=> b!41812 (= lt!16941 (head!879 (toList!584 lt!16946)))))

(declare-fun res!24912 () Bool)

(assert (=> start!5958 (=> (not res!24912) (not e!26424))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!5958 (= res!24912 (validMask!0 mask!853))))

(assert (=> start!5958 e!26424))

(assert (=> start!5958 true))

(assert (=> start!5958 tp!5834))

(declare-fun b!41813 () Bool)

(declare-fun arrayContainsKey!0 (array!2725 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!41813 (= e!26423 (arrayContainsKey!0 lt!16947 (_1!788 lt!16941) #b00000000000000000000000000000000))))

(declare-fun b!41811 () Bool)

(declare-fun res!24911 () Bool)

(assert (=> b!41811 (=> res!24911 e!26422)))

(declare-fun isEmpty!269 (List!1136) Bool)

(assert (=> b!41811 (= res!24911 (isEmpty!269 (toList!584 lt!16946)))))

(assert (= (and start!5958 res!24912) b!41810))

(assert (= (and b!41810 (not res!24910)) b!41811))

(assert (= (and b!41811 (not res!24911)) b!41812))

(assert (= (and b!41812 res!24913) b!41813))

(declare-fun b_lambda!2175 () Bool)

(assert (=> (not b_lambda!2175) (not b!41810)))

(declare-fun t!4070 () Bool)

(declare-fun tb!921 () Bool)

(assert (=> (and start!5958 (= defaultEntry!470 defaultEntry!470) t!4070) tb!921))

(declare-fun result!1585 () Bool)

(declare-fun tp_is_empty!1821 () Bool)

(assert (=> tb!921 (= result!1585 tp_is_empty!1821)))

(assert (=> b!41810 t!4070))

(declare-fun b_and!2523 () Bool)

(assert (= b_and!2521 (and (=> t!4070 result!1585) b_and!2523)))

(declare-fun m!35371 () Bool)

(assert (=> b!41813 m!35371))

(declare-fun m!35373 () Bool)

(assert (=> b!41811 m!35373))

(declare-fun m!35375 () Bool)

(assert (=> b!41812 m!35375))

(declare-fun m!35377 () Bool)

(assert (=> b!41812 m!35377))

(declare-fun m!35379 () Bool)

(assert (=> b!41810 m!35379))

(declare-fun m!35381 () Bool)

(assert (=> b!41810 m!35381))

(declare-fun m!35383 () Bool)

(assert (=> b!41810 m!35383))

(declare-fun m!35385 () Bool)

(assert (=> b!41810 m!35385))

(declare-fun m!35387 () Bool)

(assert (=> b!41810 m!35387))

(declare-fun m!35389 () Bool)

(assert (=> b!41810 m!35389))

(declare-fun m!35391 () Bool)

(assert (=> b!41810 m!35391))

(declare-fun m!35393 () Bool)

(assert (=> b!41810 m!35393))

(declare-fun m!35395 () Bool)

(assert (=> start!5958 m!35395))

(check-sat tp_is_empty!1821 (not b!41810) b_and!2523 (not b_lambda!2175) (not b!41813) (not start!5958) (not b!41811) (not b_next!1431) (not b!41812))
(check-sat b_and!2523 (not b_next!1431))
(get-model)

(declare-fun b_lambda!2179 () Bool)

(assert (= b_lambda!2175 (or (and start!5958 b_free!1431) b_lambda!2179)))

(check-sat tp_is_empty!1821 (not b!41810) (not b_lambda!2179) b_and!2523 (not b!41813) (not start!5958) (not b!41811) (not b_next!1431) (not b!41812))
(check-sat b_and!2523 (not b_next!1431))
(get-model)

(declare-fun d!7479 () Bool)

(assert (=> d!7479 (= (arrayCountValidKeys!0 lt!16947 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!16980 () Unit!1063)

(declare-fun choose!59 (array!2725 (_ BitVec 32) (_ BitVec 32)) Unit!1063)

(assert (=> d!7479 (= lt!16980 (choose!59 lt!16947 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!7479 (bvslt (size!1458 lt!16947) #b01111111111111111111111111111111)))

(assert (=> d!7479 (= (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!16947 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) lt!16980)))

(declare-fun bs!1789 () Bool)

(assert (= bs!1789 d!7479))

(assert (=> bs!1789 m!35383))

(declare-fun m!35423 () Bool)

(assert (=> bs!1789 m!35423))

(assert (=> b!41810 d!7479))

(declare-fun b!41838 () Bool)

(declare-fun e!26439 () (_ BitVec 32))

(assert (=> b!41838 (= e!26439 #b00000000000000000000000000000000)))

(declare-fun b!41839 () Bool)

(declare-fun e!26438 () (_ BitVec 32))

(declare-fun call!3236 () (_ BitVec 32))

(assert (=> b!41839 (= e!26438 call!3236)))

(declare-fun bm!3233 () Bool)

(assert (=> bm!3233 (= call!3236 (arrayCountValidKeys!0 lt!16947 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun d!7483 () Bool)

(declare-fun lt!16984 () (_ BitVec 32))

(assert (=> d!7483 (and (bvsge lt!16984 #b00000000000000000000000000000000) (bvsle lt!16984 (bvsub (size!1458 lt!16947) #b00000000000000000000000000000000)))))

(assert (=> d!7483 (= lt!16984 e!26439)))

(declare-fun c!5214 () Bool)

(assert (=> d!7483 (= c!5214 (bvsge #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!7483 (and (bvsle #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 mask!853) (size!1458 lt!16947)))))

(assert (=> d!7483 (= (arrayCountValidKeys!0 lt!16947 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) lt!16984)))

(declare-fun b!41840 () Bool)

(assert (=> b!41840 (= e!26438 (bvadd #b00000000000000000000000000000001 call!3236))))

(declare-fun b!41841 () Bool)

(assert (=> b!41841 (= e!26439 e!26438)))

(declare-fun c!5215 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!41841 (= c!5215 (validKeyInArray!0 (select (arr!1306 lt!16947) #b00000000000000000000000000000000)))))

(assert (= (and d!7483 c!5214) b!41838))

(assert (= (and d!7483 (not c!5214)) b!41841))

(assert (= (and b!41841 c!5215) b!41840))

(assert (= (and b!41841 (not c!5215)) b!41839))

(assert (= (or b!41840 b!41839) bm!3233))

(declare-fun m!35427 () Bool)

(assert (=> bm!3233 m!35427))

(declare-fun m!35429 () Bool)

(assert (=> b!41841 m!35429))

(assert (=> b!41841 m!35429))

(declare-fun m!35431 () Bool)

(assert (=> b!41841 m!35431))

(assert (=> b!41810 d!7483))

(declare-fun b!41868 () Bool)

(declare-fun e!26465 () Bool)

(declare-fun call!3241 () Bool)

(assert (=> b!41868 (= e!26465 call!3241)))

(declare-fun b!41869 () Bool)

(assert (=> b!41869 (= e!26465 call!3241)))

(declare-fun b!41870 () Bool)

(declare-fun e!26463 () Bool)

(declare-fun e!26462 () Bool)

(assert (=> b!41870 (= e!26463 e!26462)))

(declare-fun res!24946 () Bool)

(assert (=> b!41870 (=> (not res!24946) (not e!26462))))

(declare-fun e!26464 () Bool)

(assert (=> b!41870 (= res!24946 (not e!26464))))

(declare-fun res!24945 () Bool)

(assert (=> b!41870 (=> (not res!24945) (not e!26464))))

(assert (=> b!41870 (= res!24945 (validKeyInArray!0 (select (arr!1306 lt!16947) #b00000000000000000000000000000000)))))

(declare-fun b!41871 () Bool)

(declare-fun contains!550 (List!1137 (_ BitVec 64)) Bool)

(assert (=> b!41871 (= e!26464 (contains!550 Nil!1134 (select (arr!1306 lt!16947) #b00000000000000000000000000000000)))))

(declare-fun bm!3238 () Bool)

(declare-fun c!5220 () Bool)

(assert (=> bm!3238 (= call!3241 (arrayNoDuplicates!0 lt!16947 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!5220 (Cons!1133 (select (arr!1306 lt!16947) #b00000000000000000000000000000000) Nil!1134) Nil!1134)))))

(declare-fun b!41872 () Bool)

(assert (=> b!41872 (= e!26462 e!26465)))

(assert (=> b!41872 (= c!5220 (validKeyInArray!0 (select (arr!1306 lt!16947) #b00000000000000000000000000000000)))))

(declare-fun d!7489 () Bool)

(declare-fun res!24944 () Bool)

(assert (=> d!7489 (=> res!24944 e!26463)))

(assert (=> d!7489 (= res!24944 (bvsge #b00000000000000000000000000000000 (size!1458 lt!16947)))))

(assert (=> d!7489 (= (arrayNoDuplicates!0 lt!16947 #b00000000000000000000000000000000 Nil!1134) e!26463)))

(assert (= (and d!7489 (not res!24944)) b!41870))

(assert (= (and b!41870 res!24945) b!41871))

(assert (= (and b!41870 res!24946) b!41872))

(assert (= (and b!41872 c!5220) b!41869))

(assert (= (and b!41872 (not c!5220)) b!41868))

(assert (= (or b!41869 b!41868) bm!3238))

(assert (=> b!41870 m!35429))

(assert (=> b!41870 m!35429))

(assert (=> b!41870 m!35431))

(assert (=> b!41871 m!35429))

(assert (=> b!41871 m!35429))

(declare-fun m!35441 () Bool)

(assert (=> b!41871 m!35441))

(assert (=> bm!3238 m!35429))

(declare-fun m!35445 () Bool)

(assert (=> bm!3238 m!35445))

(assert (=> b!41872 m!35429))

(assert (=> b!41872 m!35429))

(assert (=> b!41872 m!35431))

(assert (=> b!41810 d!7489))

(declare-fun d!7497 () Bool)

(assert (=> d!7497 (arrayNoDuplicates!0 lt!16947 #b00000000000000000000000000000000 Nil!1134)))

(declare-fun lt!16987 () Unit!1063)

(declare-fun choose!111 (array!2725 (_ BitVec 32) (_ BitVec 32) List!1137) Unit!1063)

(assert (=> d!7497 (= lt!16987 (choose!111 lt!16947 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1134))))

(assert (=> d!7497 (= (size!1458 lt!16947) (bvadd #b00000000000000000000000000000001 mask!853))))

(assert (=> d!7497 (= (lemmaArrayNoDuplicatesInAll0Array!0 lt!16947 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1134) lt!16987)))

(declare-fun bs!1792 () Bool)

(assert (= bs!1792 d!7497))

(assert (=> bs!1792 m!35385))

(declare-fun m!35451 () Bool)

(assert (=> bs!1792 m!35451))

(assert (=> b!41810 d!7497))

(declare-fun d!7501 () Bool)

(declare-fun getCurrentListMap!343 (array!2725 array!2723 (_ BitVec 32) (_ BitVec 32) V!2187 V!2187 (_ BitVec 32) Int) ListLongMap!1137)

(assert (=> d!7501 (= (map!748 (LongMapFixedSize!307 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!16945 lt!16945 #b00000000000000000000000000000000 lt!16947 lt!16942 #b00000000000000000000000000000000)) (getCurrentListMap!343 (_keys!3350 (LongMapFixedSize!307 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!16945 lt!16945 #b00000000000000000000000000000000 lt!16947 lt!16942 #b00000000000000000000000000000000)) (_values!1826 (LongMapFixedSize!307 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!16945 lt!16945 #b00000000000000000000000000000000 lt!16947 lt!16942 #b00000000000000000000000000000000)) (mask!5262 (LongMapFixedSize!307 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!16945 lt!16945 #b00000000000000000000000000000000 lt!16947 lt!16942 #b00000000000000000000000000000000)) (extraKeys!1734 (LongMapFixedSize!307 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!16945 lt!16945 #b00000000000000000000000000000000 lt!16947 lt!16942 #b00000000000000000000000000000000)) (zeroValue!1761 (LongMapFixedSize!307 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!16945 lt!16945 #b00000000000000000000000000000000 lt!16947 lt!16942 #b00000000000000000000000000000000)) (minValue!1761 (LongMapFixedSize!307 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!16945 lt!16945 #b00000000000000000000000000000000 lt!16947 lt!16942 #b00000000000000000000000000000000)) #b00000000000000000000000000000000 (defaultEntry!1843 (LongMapFixedSize!307 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!16945 lt!16945 #b00000000000000000000000000000000 lt!16947 lt!16942 #b00000000000000000000000000000000))))))

(declare-fun bs!1793 () Bool)

(assert (= bs!1793 d!7501))

(declare-fun m!35463 () Bool)

(assert (=> bs!1793 m!35463))

(assert (=> b!41810 d!7501))

(declare-fun d!7511 () Bool)

(assert (=> d!7511 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!16947 mask!853)))

(declare-fun lt!17005 () Unit!1063)

(declare-fun choose!34 (array!2725 (_ BitVec 32) (_ BitVec 32)) Unit!1063)

(assert (=> d!7511 (= lt!17005 (choose!34 lt!16947 mask!853 #b00000000000000000000000000000000))))

(assert (=> d!7511 (validMask!0 mask!853)))

(assert (=> d!7511 (= (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!16947 mask!853 #b00000000000000000000000000000000) lt!17005)))

(declare-fun bs!1796 () Bool)

(assert (= bs!1796 d!7511))

(assert (=> bs!1796 m!35389))

(declare-fun m!35469 () Bool)

(assert (=> bs!1796 m!35469))

(assert (=> bs!1796 m!35395))

(assert (=> b!41810 d!7511))

(declare-fun b!41928 () Bool)

(declare-fun e!26504 () Bool)

(declare-fun e!26505 () Bool)

(assert (=> b!41928 (= e!26504 e!26505)))

(declare-fun c!5239 () Bool)

(assert (=> b!41928 (= c!5239 (validKeyInArray!0 (select (arr!1306 lt!16947) #b00000000000000000000000000000000)))))

(declare-fun b!41929 () Bool)

(declare-fun e!26503 () Bool)

(declare-fun call!3254 () Bool)

(assert (=> b!41929 (= e!26503 call!3254)))

(declare-fun b!41930 () Bool)

(assert (=> b!41930 (= e!26505 e!26503)))

(declare-fun lt!17028 () (_ BitVec 64))

(assert (=> b!41930 (= lt!17028 (select (arr!1306 lt!16947) #b00000000000000000000000000000000))))

(declare-fun lt!17027 () Unit!1063)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!2725 (_ BitVec 64) (_ BitVec 32)) Unit!1063)

(assert (=> b!41930 (= lt!17027 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!16947 lt!17028 #b00000000000000000000000000000000))))

(assert (=> b!41930 (arrayContainsKey!0 lt!16947 lt!17028 #b00000000000000000000000000000000)))

(declare-fun lt!17029 () Unit!1063)

(assert (=> b!41930 (= lt!17029 lt!17027)))

(declare-fun res!24967 () Bool)

(declare-datatypes ((SeekEntryResult!187 0))(
  ( (MissingZero!187 (index!2870 (_ BitVec 32))) (Found!187 (index!2871 (_ BitVec 32))) (Intermediate!187 (undefined!999 Bool) (index!2872 (_ BitVec 32)) (x!7957 (_ BitVec 32))) (Undefined!187) (MissingVacant!187 (index!2873 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!2725 (_ BitVec 32)) SeekEntryResult!187)

(assert (=> b!41930 (= res!24967 (= (seekEntryOrOpen!0 (select (arr!1306 lt!16947) #b00000000000000000000000000000000) lt!16947 mask!853) (Found!187 #b00000000000000000000000000000000)))))

(assert (=> b!41930 (=> (not res!24967) (not e!26503))))

(declare-fun d!7517 () Bool)

(declare-fun res!24966 () Bool)

(assert (=> d!7517 (=> res!24966 e!26504)))

(assert (=> d!7517 (= res!24966 (bvsge #b00000000000000000000000000000000 (size!1458 lt!16947)))))

(assert (=> d!7517 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!16947 mask!853) e!26504)))

(declare-fun b!41931 () Bool)

(assert (=> b!41931 (= e!26505 call!3254)))

(declare-fun bm!3251 () Bool)

(assert (=> bm!3251 (= call!3254 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!16947 mask!853))))

(assert (= (and d!7517 (not res!24966)) b!41928))

(assert (= (and b!41928 c!5239) b!41930))

(assert (= (and b!41928 (not c!5239)) b!41931))

(assert (= (and b!41930 res!24967) b!41929))

(assert (= (or b!41929 b!41931) bm!3251))

(assert (=> b!41928 m!35429))

(assert (=> b!41928 m!35429))

(assert (=> b!41928 m!35431))

(assert (=> b!41930 m!35429))

(declare-fun m!35483 () Bool)

(assert (=> b!41930 m!35483))

(declare-fun m!35487 () Bool)

(assert (=> b!41930 m!35487))

(assert (=> b!41930 m!35429))

(declare-fun m!35489 () Bool)

(assert (=> b!41930 m!35489))

(declare-fun m!35491 () Bool)

(assert (=> bm!3251 m!35491))

(assert (=> b!41810 d!7517))

(declare-fun d!7525 () Bool)

(declare-fun res!24978 () Bool)

(declare-fun e!26516 () Bool)

(assert (=> d!7525 (=> res!24978 e!26516)))

(assert (=> d!7525 (= res!24978 (= (select (arr!1306 lt!16947) #b00000000000000000000000000000000) (_1!788 lt!16941)))))

(assert (=> d!7525 (= (arrayContainsKey!0 lt!16947 (_1!788 lt!16941) #b00000000000000000000000000000000) e!26516)))

(declare-fun b!41942 () Bool)

(declare-fun e!26517 () Bool)

(assert (=> b!41942 (= e!26516 e!26517)))

(declare-fun res!24979 () Bool)

(assert (=> b!41942 (=> (not res!24979) (not e!26517))))

(assert (=> b!41942 (= res!24979 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1458 lt!16947)))))

(declare-fun b!41943 () Bool)

(assert (=> b!41943 (= e!26517 (arrayContainsKey!0 lt!16947 (_1!788 lt!16941) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!7525 (not res!24978)) b!41942))

(assert (= (and b!41942 res!24979) b!41943))

(assert (=> d!7525 m!35429))

(declare-fun m!35495 () Bool)

(assert (=> b!41943 m!35495))

(assert (=> b!41813 d!7525))

(declare-fun d!7529 () Bool)

(assert (=> d!7529 (= (validMask!0 mask!853) (and (or (= mask!853 #b00000000000000000000000000000111) (= mask!853 #b00000000000000000000000000001111) (= mask!853 #b00000000000000000000000000011111) (= mask!853 #b00000000000000000000000000111111) (= mask!853 #b00000000000000000000000001111111) (= mask!853 #b00000000000000000000000011111111) (= mask!853 #b00000000000000000000000111111111) (= mask!853 #b00000000000000000000001111111111) (= mask!853 #b00000000000000000000011111111111) (= mask!853 #b00000000000000000000111111111111) (= mask!853 #b00000000000000000001111111111111) (= mask!853 #b00000000000000000011111111111111) (= mask!853 #b00000000000000000111111111111111) (= mask!853 #b00000000000000001111111111111111) (= mask!853 #b00000000000000011111111111111111) (= mask!853 #b00000000000000111111111111111111) (= mask!853 #b00000000000001111111111111111111) (= mask!853 #b00000000000011111111111111111111) (= mask!853 #b00000000000111111111111111111111) (= mask!853 #b00000000001111111111111111111111) (= mask!853 #b00000000011111111111111111111111) (= mask!853 #b00000000111111111111111111111111) (= mask!853 #b00000001111111111111111111111111) (= mask!853 #b00000011111111111111111111111111) (= mask!853 #b00000111111111111111111111111111) (= mask!853 #b00001111111111111111111111111111) (= mask!853 #b00011111111111111111111111111111) (= mask!853 #b00111111111111111111111111111111)) (bvsle mask!853 #b00111111111111111111111111111111)))))

(assert (=> start!5958 d!7529))

(declare-fun d!7535 () Bool)

(declare-fun e!26541 () Bool)

(assert (=> d!7535 e!26541))

(declare-fun c!5254 () Bool)

(assert (=> d!7535 (= c!5254 (and (not (= (_1!788 lt!16941) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (_1!788 lt!16941) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!17041 () Unit!1063)

(declare-fun choose!257 (array!2725 array!2723 (_ BitVec 32) (_ BitVec 32) V!2187 V!2187 (_ BitVec 64) Int) Unit!1063)

(assert (=> d!7535 (= lt!17041 (choose!257 lt!16947 lt!16942 mask!853 #b00000000000000000000000000000000 lt!16945 lt!16945 (_1!788 lt!16941) defaultEntry!470))))

(assert (=> d!7535 (validMask!0 mask!853)))

(assert (=> d!7535 (= (lemmaKeyInListMapIsInArray!97 lt!16947 lt!16942 mask!853 #b00000000000000000000000000000000 lt!16945 lt!16945 (_1!788 lt!16941) defaultEntry!470) lt!17041)))

(declare-fun b!41981 () Bool)

(assert (=> b!41981 (= e!26541 (arrayContainsKey!0 lt!16947 (_1!788 lt!16941) #b00000000000000000000000000000000))))

(declare-fun b!41982 () Bool)

(assert (=> b!41982 (= e!26541 (ite (= (_1!788 lt!16941) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand #b00000000000000000000000000000000 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!7535 c!5254) b!41981))

(assert (= (and d!7535 (not c!5254)) b!41982))

(declare-fun m!35507 () Bool)

(assert (=> d!7535 m!35507))

(assert (=> d!7535 m!35395))

(assert (=> b!41981 m!35371))

(assert (=> b!41812 d!7535))

(declare-fun d!7543 () Bool)

(assert (=> d!7543 (= (head!879 (toList!584 lt!16946)) (h!1709 (toList!584 lt!16946)))))

(assert (=> b!41812 d!7543))

(declare-fun d!7547 () Bool)

(get-info :version)

(assert (=> d!7547 (= (isEmpty!269 (toList!584 lt!16946)) ((_ is Nil!1133) (toList!584 lt!16946)))))

(assert (=> b!41811 d!7547))

(check-sat (not bm!3233) tp_is_empty!1821 (not b!41871) (not b!41930) (not d!7497) (not d!7501) b_and!2523 (not d!7535) (not b_next!1431) (not b!41943) (not bm!3238) (not d!7479) (not b!41872) (not b!41981) (not bm!3251) (not b!41870) (not b!41928) (not d!7511) (not b!41841) (not b_lambda!2179))
(check-sat b_and!2523 (not b_next!1431))
