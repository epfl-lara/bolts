; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!5960 () Bool)

(assert start!5960)

(declare-fun b_free!1433 () Bool)

(declare-fun b_next!1433 () Bool)

(assert (=> start!5960 (= b_free!1433 (not b_next!1433))))

(declare-fun tp!5837 () Bool)

(declare-fun b_and!2525 () Bool)

(assert (=> start!5960 (= tp!5837 b_and!2525)))

(declare-fun b!41825 () Bool)

(declare-fun res!24922 () Bool)

(declare-fun e!26431 () Bool)

(assert (=> b!41825 (=> res!24922 e!26431)))

(declare-datatypes ((V!2189 0))(
  ( (V!2190 (val!950 Int)) )
))
(declare-datatypes ((tuple2!1558 0))(
  ( (tuple2!1559 (_1!789 (_ BitVec 64)) (_2!789 V!2189)) )
))
(declare-datatypes ((List!1138 0))(
  ( (Nil!1135) (Cons!1134 (h!1711 tuple2!1558) (t!4075 List!1138)) )
))
(declare-datatypes ((ListLongMap!1139 0))(
  ( (ListLongMap!1140 (toList!585 List!1138)) )
))
(declare-fun lt!16968 () ListLongMap!1139)

(declare-fun isEmpty!270 (List!1138) Bool)

(assert (=> b!41825 (= res!24922 (isEmpty!270 (toList!585 lt!16968)))))

(declare-fun b!41826 () Bool)

(declare-fun mask!853 () (_ BitVec 32))

(assert (=> b!41826 (= e!26431 (and (bvslt #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) (bvslt (bvadd #b00000000000000000000000000000001 mask!853) #b01111111111111111111111111111111)))))

(declare-fun e!26433 () Bool)

(assert (=> b!41826 e!26433))

(declare-fun res!24925 () Bool)

(assert (=> b!41826 (=> (not res!24925) (not e!26433))))

(declare-fun lt!16973 () tuple2!1558)

(assert (=> b!41826 (= res!24925 (and (not (= (_1!789 lt!16973) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (_1!789 lt!16973) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!16967 () V!2189)

(declare-datatypes ((ValueCell!664 0))(
  ( (ValueCellFull!664 (v!2033 V!2189)) (EmptyCell!664) )
))
(declare-datatypes ((array!2727 0))(
  ( (array!2728 (arr!1307 (Array (_ BitVec 32) ValueCell!664)) (size!1459 (_ BitVec 32))) )
))
(declare-fun lt!16975 () array!2727)

(declare-datatypes ((array!2729 0))(
  ( (array!2730 (arr!1308 (Array (_ BitVec 32) (_ BitVec 64))) (size!1460 (_ BitVec 32))) )
))
(declare-fun lt!16969 () array!2729)

(declare-fun defaultEntry!470 () Int)

(declare-datatypes ((Unit!1065 0))(
  ( (Unit!1066) )
))
(declare-fun lt!16974 () Unit!1065)

(declare-fun lemmaKeyInListMapIsInArray!98 (array!2729 array!2727 (_ BitVec 32) (_ BitVec 32) V!2189 V!2189 (_ BitVec 64) Int) Unit!1065)

(assert (=> b!41826 (= lt!16974 (lemmaKeyInListMapIsInArray!98 lt!16969 lt!16975 mask!853 #b00000000000000000000000000000000 lt!16967 lt!16967 (_1!789 lt!16973) defaultEntry!470))))

(declare-fun head!880 (List!1138) tuple2!1558)

(assert (=> b!41826 (= lt!16973 (head!880 (toList!585 lt!16968)))))

(declare-fun b!41827 () Bool)

(declare-fun arrayContainsKey!0 (array!2729 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!41827 (= e!26433 (arrayContainsKey!0 lt!16969 (_1!789 lt!16973) #b00000000000000000000000000000000))))

(declare-fun res!24924 () Bool)

(declare-fun e!26432 () Bool)

(assert (=> start!5960 (=> (not res!24924) (not e!26432))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!5960 (= res!24924 (validMask!0 mask!853))))

(assert (=> start!5960 e!26432))

(assert (=> start!5960 true))

(assert (=> start!5960 tp!5837))

(declare-fun b!41824 () Bool)

(assert (=> b!41824 (= e!26432 (not e!26431))))

(declare-fun res!24923 () Bool)

(assert (=> b!41824 (=> res!24923 e!26431)))

(assert (=> b!41824 (= res!24923 (= lt!16968 (ListLongMap!1140 Nil!1135)))))

(declare-datatypes ((LongMapFixedSize!308 0))(
  ( (LongMapFixedSize!309 (defaultEntry!1844 Int) (mask!5263 (_ BitVec 32)) (extraKeys!1735 (_ BitVec 32)) (zeroValue!1762 V!2189) (minValue!1762 V!2189) (_size!203 (_ BitVec 32)) (_keys!3351 array!2729) (_values!1827 array!2727) (_vacant!203 (_ BitVec 32))) )
))
(declare-fun map!749 (LongMapFixedSize!308) ListLongMap!1139)

(assert (=> b!41824 (= lt!16968 (map!749 (LongMapFixedSize!309 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!16967 lt!16967 #b00000000000000000000000000000000 lt!16969 lt!16975 #b00000000000000000000000000000000)))))

(declare-datatypes ((List!1139 0))(
  ( (Nil!1136) (Cons!1135 (h!1712 (_ BitVec 64)) (t!4076 List!1139)) )
))
(declare-fun arrayNoDuplicates!0 (array!2729 (_ BitVec 32) List!1139) Bool)

(assert (=> b!41824 (arrayNoDuplicates!0 lt!16969 #b00000000000000000000000000000000 Nil!1136)))

(declare-fun lt!16970 () Unit!1065)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2729 (_ BitVec 32) (_ BitVec 32) List!1139) Unit!1065)

(assert (=> b!41824 (= lt!16970 (lemmaArrayNoDuplicatesInAll0Array!0 lt!16969 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1136))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2729 (_ BitVec 32)) Bool)

(assert (=> b!41824 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!16969 mask!853)))

(declare-fun lt!16971 () Unit!1065)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2729 (_ BitVec 32) (_ BitVec 32)) Unit!1065)

(assert (=> b!41824 (= lt!16971 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!16969 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2729 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!41824 (= (arrayCountValidKeys!0 lt!16969 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!16972 () Unit!1065)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2729 (_ BitVec 32) (_ BitVec 32)) Unit!1065)

(assert (=> b!41824 (= lt!16972 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!16969 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!41824 (= lt!16975 (array!2728 ((as const (Array (_ BitVec 32) ValueCell!664)) EmptyCell!664) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!41824 (= lt!16969 (array!2730 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!225 (Int (_ BitVec 64)) V!2189)

(assert (=> b!41824 (= lt!16967 (dynLambda!225 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!5960 res!24924) b!41824))

(assert (= (and b!41824 (not res!24923)) b!41825))

(assert (= (and b!41825 (not res!24922)) b!41826))

(assert (= (and b!41826 res!24925) b!41827))

(declare-fun b_lambda!2177 () Bool)

(assert (=> (not b_lambda!2177) (not b!41824)))

(declare-fun t!4074 () Bool)

(declare-fun tb!923 () Bool)

(assert (=> (and start!5960 (= defaultEntry!470 defaultEntry!470) t!4074) tb!923))

(declare-fun result!1589 () Bool)

(declare-fun tp_is_empty!1823 () Bool)

(assert (=> tb!923 (= result!1589 tp_is_empty!1823)))

(assert (=> b!41824 t!4074))

(declare-fun b_and!2527 () Bool)

(assert (= b_and!2525 (and (=> t!4074 result!1589) b_and!2527)))

(declare-fun m!35397 () Bool)

(assert (=> b!41827 m!35397))

(declare-fun m!35399 () Bool)

(assert (=> b!41824 m!35399))

(declare-fun m!35401 () Bool)

(assert (=> b!41824 m!35401))

(declare-fun m!35403 () Bool)

(assert (=> b!41824 m!35403))

(declare-fun m!35405 () Bool)

(assert (=> b!41824 m!35405))

(declare-fun m!35407 () Bool)

(assert (=> b!41824 m!35407))

(declare-fun m!35409 () Bool)

(assert (=> b!41824 m!35409))

(declare-fun m!35411 () Bool)

(assert (=> b!41824 m!35411))

(declare-fun m!35413 () Bool)

(assert (=> b!41824 m!35413))

(declare-fun m!35415 () Bool)

(assert (=> start!5960 m!35415))

(declare-fun m!35417 () Bool)

(assert (=> b!41825 m!35417))

(declare-fun m!35419 () Bool)

(assert (=> b!41826 m!35419))

(declare-fun m!35421 () Bool)

(assert (=> b!41826 m!35421))

(push 1)

(assert (not b!41824))

(assert (not b_next!1433))

(assert (not b_lambda!2177))

(assert (not b!41826))

(assert tp_is_empty!1823)

(assert (not b!41827))

(assert (not start!5960))

(assert b_and!2527)

(assert (not b!41825))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2527)

(assert (not b_next!1433))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!2183 () Bool)

(assert (= b_lambda!2177 (or (and start!5960 b_free!1433) b_lambda!2183)))

(push 1)

(assert (not b!41824))

(assert (not b_lambda!2183))

(assert (not b_next!1433))

(assert (not b!41826))

(assert tp_is_empty!1823)

(assert (not b!41827))

(assert (not start!5960))

(assert b_and!2527)

(assert (not b!41825))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2527)

(assert (not b_next!1433))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!7487 () Bool)

(assert (=> d!7487 (= (validMask!0 mask!853) (and (or (= mask!853 #b00000000000000000000000000000111) (= mask!853 #b00000000000000000000000000001111) (= mask!853 #b00000000000000000000000000011111) (= mask!853 #b00000000000000000000000000111111) (= mask!853 #b00000000000000000000000001111111) (= mask!853 #b00000000000000000000000011111111) (= mask!853 #b00000000000000000000000111111111) (= mask!853 #b00000000000000000000001111111111) (= mask!853 #b00000000000000000000011111111111) (= mask!853 #b00000000000000000000111111111111) (= mask!853 #b00000000000000000001111111111111) (= mask!853 #b00000000000000000011111111111111) (= mask!853 #b00000000000000000111111111111111) (= mask!853 #b00000000000000001111111111111111) (= mask!853 #b00000000000000011111111111111111) (= mask!853 #b00000000000000111111111111111111) (= mask!853 #b00000000000001111111111111111111) (= mask!853 #b00000000000011111111111111111111) (= mask!853 #b00000000000111111111111111111111) (= mask!853 #b00000000001111111111111111111111) (= mask!853 #b00000000011111111111111111111111) (= mask!853 #b00000000111111111111111111111111) (= mask!853 #b00000001111111111111111111111111) (= mask!853 #b00000011111111111111111111111111) (= mask!853 #b00000111111111111111111111111111) (= mask!853 #b00001111111111111111111111111111) (= mask!853 #b00011111111111111111111111111111) (= mask!853 #b00111111111111111111111111111111)) (bvsle mask!853 #b00111111111111111111111111111111)))))

(assert (=> start!5960 d!7487))

(declare-fun d!7493 () Bool)

(declare-fun res!24942 () Bool)

(declare-fun e!26460 () Bool)

(assert (=> d!7493 (=> res!24942 e!26460)))

(assert (=> d!7493 (= res!24942 (= (select (arr!1308 lt!16969) #b00000000000000000000000000000000) (_1!789 lt!16973)))))

(assert (=> d!7493 (= (arrayContainsKey!0 lt!16969 (_1!789 lt!16973) #b00000000000000000000000000000000) e!26460)))

(declare-fun b!41866 () Bool)

(declare-fun e!26461 () Bool)

(assert (=> b!41866 (= e!26460 e!26461)))

(declare-fun res!24943 () Bool)

(assert (=> b!41866 (=> (not res!24943) (not e!26461))))

(assert (=> b!41866 (= res!24943 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1460 lt!16969)))))

(declare-fun b!41867 () Bool)

(assert (=> b!41867 (= e!26461 (arrayContainsKey!0 lt!16969 (_1!789 lt!16973) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!7493 (not res!24942)) b!41866))

(assert (= (and b!41866 res!24943) b!41867))

(declare-fun m!35435 () Bool)

(assert (=> d!7493 m!35435))

(declare-fun m!35437 () Bool)

(assert (=> b!41867 m!35437))

(assert (=> b!41827 d!7493))

(declare-fun d!7495 () Bool)

(declare-fun e!26472 () Bool)

(assert (=> d!7495 e!26472))

(declare-fun c!5224 () Bool)

(assert (=> d!7495 (= c!5224 (and (not (= (_1!789 lt!16973) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (_1!789 lt!16973) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!16990 () Unit!1065)

(declare-fun choose!256 (array!2729 array!2727 (_ BitVec 32) (_ BitVec 32) V!2189 V!2189 (_ BitVec 64) Int) Unit!1065)

(assert (=> d!7495 (= lt!16990 (choose!256 lt!16969 lt!16975 mask!853 #b00000000000000000000000000000000 lt!16967 lt!16967 (_1!789 lt!16973) defaultEntry!470))))

(assert (=> d!7495 (validMask!0 mask!853)))

(assert (=> d!7495 (= (lemmaKeyInListMapIsInArray!98 lt!16969 lt!16975 mask!853 #b00000000000000000000000000000000 lt!16967 lt!16967 (_1!789 lt!16973) defaultEntry!470) lt!16990)))

(declare-fun b!41882 () Bool)

(assert (=> b!41882 (= e!26472 (arrayContainsKey!0 lt!16969 (_1!789 lt!16973) #b00000000000000000000000000000000))))

(declare-fun b!41883 () Bool)

(assert (=> b!41883 (= e!26472 (ite (= (_1!789 lt!16973) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand #b00000000000000000000000000000000 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!7495 c!5224) b!41882))

(assert (= (and d!7495 (not c!5224)) b!41883))

(declare-fun m!35453 () Bool)

(assert (=> d!7495 m!35453))

(assert (=> d!7495 m!35415))

(assert (=> b!41882 m!35397))

(assert (=> b!41826 d!7495))

(declare-fun d!7503 () Bool)

(assert (=> d!7503 (= (head!880 (toList!585 lt!16968)) (h!1711 (toList!585 lt!16968)))))

(assert (=> b!41826 d!7503))

(declare-fun d!7505 () Bool)

(assert (=> d!7505 (= (isEmpty!270 (toList!585 lt!16968)) (is-Nil!1135 (toList!585 lt!16968)))))

(assert (=> b!41825 d!7505))

(declare-fun d!7507 () Bool)

(declare-fun getCurrentListMap!342 (array!2729 array!2727 (_ BitVec 32) (_ BitVec 32) V!2189 V!2189 (_ BitVec 32) Int) ListLongMap!1139)

(assert (=> d!7507 (= (map!749 (LongMapFixedSize!309 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!16967 lt!16967 #b00000000000000000000000000000000 lt!16969 lt!16975 #b00000000000000000000000000000000)) (getCurrentListMap!342 (_keys!3351 (LongMapFixedSize!309 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!16967 lt!16967 #b00000000000000000000000000000000 lt!16969 lt!16975 #b00000000000000000000000000000000)) (_values!1827 (LongMapFixedSize!309 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!16967 lt!16967 #b00000000000000000000000000000000 lt!16969 lt!16975 #b00000000000000000000000000000000)) (mask!5263 (LongMapFixedSize!309 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!16967 lt!16967 #b00000000000000000000000000000000 lt!16969 lt!16975 #b00000000000000000000000000000000)) (extraKeys!1735 (LongMapFixedSize!309 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!16967 lt!16967 #b00000000000000000000000000000000 lt!16969 lt!16975 #b00000000000000000000000000000000)) (zeroValue!1762 (LongMapFixedSize!309 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!16967 lt!16967 #b00000000000000000000000000000000 lt!16969 lt!16975 #b00000000000000000000000000000000)) (minValue!1762 (LongMapFixedSize!309 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!16967 lt!16967 #b00000000000000000000000000000000 lt!16969 lt!16975 #b00000000000000000000000000000000)) #b00000000000000000000000000000000 (defaultEntry!1844 (LongMapFixedSize!309 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!16967 lt!16967 #b00000000000000000000000000000000 lt!16969 lt!16975 #b00000000000000000000000000000000))))))

(declare-fun bs!1795 () Bool)

(assert (= bs!1795 d!7507))

(declare-fun m!35467 () Bool)

(assert (=> bs!1795 m!35467))

(assert (=> b!41824 d!7507))

(declare-fun b!41924 () Bool)

(declare-fun e!26502 () Bool)

(declare-fun call!3253 () Bool)

(assert (=> b!41924 (= e!26502 call!3253)))

(declare-fun b!41925 () Bool)

(declare-fun e!26501 () Bool)

(assert (=> b!41925 (= e!26501 call!3253)))

(declare-fun bm!3250 () Bool)

(assert (=> bm!3250 (= call!3253 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!16969 mask!853))))

(declare-fun b!41926 () Bool)

(declare-fun e!26500 () Bool)

(assert (=> b!41926 (= e!26500 e!26502)))

(declare-fun c!5238 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!41926 (= c!5238 (validKeyInArray!0 (select (arr!1308 lt!16969) #b00000000000000000000000000000000)))))

(declare-fun d!7515 () Bool)

(declare-fun res!24965 () Bool)

(assert (=> d!7515 (=> res!24965 e!26500)))

(assert (=> d!7515 (= res!24965 (bvsge #b00000000000000000000000000000000 (size!1460 lt!16969)))))

(assert (=> d!7515 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!16969 mask!853) e!26500)))

(declare-fun b!41927 () Bool)

(assert (=> b!41927 (= e!26502 e!26501)))

(declare-fun lt!17026 () (_ BitVec 64))

(assert (=> b!41927 (= lt!17026 (select (arr!1308 lt!16969) #b00000000000000000000000000000000))))

(declare-fun lt!17025 () Unit!1065)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!2729 (_ BitVec 64) (_ BitVec 32)) Unit!1065)

(assert (=> b!41927 (= lt!17025 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!16969 lt!17026 #b00000000000000000000000000000000))))

(assert (=> b!41927 (arrayContainsKey!0 lt!16969 lt!17026 #b00000000000000000000000000000000)))

(declare-fun lt!17024 () Unit!1065)

(assert (=> b!41927 (= lt!17024 lt!17025)))

(declare-fun res!24964 () Bool)

(declare-datatypes ((SeekEntryResult!188 0))(
  ( (MissingZero!188 (index!2874 (_ BitVec 32))) (Found!188 (index!2875 (_ BitVec 32))) (Intermediate!188 (undefined!1000 Bool) (index!2876 (_ BitVec 32)) (x!7958 (_ BitVec 32))) (Undefined!188) (MissingVacant!188 (index!2877 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!2729 (_ BitVec 32)) SeekEntryResult!188)

(assert (=> b!41927 (= res!24964 (= (seekEntryOrOpen!0 (select (arr!1308 lt!16969) #b00000000000000000000000000000000) lt!16969 mask!853) (Found!188 #b00000000000000000000000000000000)))))

(assert (=> b!41927 (=> (not res!24964) (not e!26501))))

(assert (= (and d!7515 (not res!24965)) b!41926))

(assert (= (and b!41926 c!5238) b!41927))

(assert (= (and b!41926 (not c!5238)) b!41924))

(assert (= (and b!41927 res!24964) b!41925))

(assert (= (or b!41925 b!41924) bm!3250))

(declare-fun m!35475 () Bool)

(assert (=> bm!3250 m!35475))

(assert (=> b!41926 m!35435))

(assert (=> b!41926 m!35435))

(declare-fun m!35477 () Bool)

(assert (=> b!41926 m!35477))

(assert (=> b!41927 m!35435))

(declare-fun m!35479 () Bool)

(assert (=> b!41927 m!35479))

(declare-fun m!35481 () Bool)

(assert (=> b!41927 m!35481))

(assert (=> b!41927 m!35435))

(declare-fun m!35485 () Bool)

(assert (=> b!41927 m!35485))

(assert (=> b!41824 d!7515))

(declare-fun d!7523 () Bool)

(declare-fun res!24988 () Bool)

(declare-fun e!26527 () Bool)

(assert (=> d!7523 (=> res!24988 e!26527)))

(assert (=> d!7523 (= res!24988 (bvsge #b00000000000000000000000000000000 (size!1460 lt!16969)))))

(assert (=> d!7523 (= (arrayNoDuplicates!0 lt!16969 #b00000000000000000000000000000000 Nil!1136) e!26527)))

(declare-fun b!41954 () Bool)

(declare-fun e!26526 () Bool)

(declare-fun e!26528 () Bool)

(assert (=> b!41954 (= e!26526 e!26528)))

(declare-fun c!5242 () Bool)

(assert (=> b!41954 (= c!5242 (validKeyInArray!0 (select (arr!1308 lt!16969) #b00000000000000000000000000000000)))))

(declare-fun b!41955 () Bool)

(declare-fun call!3257 () Bool)

(assert (=> b!41955 (= e!26528 call!3257)))

(declare-fun b!41956 () Bool)

(declare-fun e!26529 () Bool)

(declare-fun contains!551 (List!1139 (_ BitVec 64)) Bool)

(assert (=> b!41956 (= e!26529 (contains!551 Nil!1136 (select (arr!1308 lt!16969) #b00000000000000000000000000000000)))))

(declare-fun b!41957 () Bool)

(assert (=> b!41957 (= e!26528 call!3257)))

(declare-fun b!41958 () Bool)

(assert (=> b!41958 (= e!26527 e!26526)))

(declare-fun res!24986 () Bool)

(assert (=> b!41958 (=> (not res!24986) (not e!26526))))

(assert (=> b!41958 (= res!24986 (not e!26529))))

(declare-fun res!24987 () Bool)

(assert (=> b!41958 (=> (not res!24987) (not e!26529))))

(assert (=> b!41958 (= res!24987 (validKeyInArray!0 (select (arr!1308 lt!16969) #b00000000000000000000000000000000)))))

(declare-fun bm!3254 () Bool)

(assert (=> bm!3254 (= call!3257 (arrayNoDuplicates!0 lt!16969 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!5242 (Cons!1135 (select (arr!1308 lt!16969) #b00000000000000000000000000000000) Nil!1136) Nil!1136)))))

(assert (= (and d!7523 (not res!24988)) b!41958))

(assert (= (and b!41958 res!24987) b!41956))

(assert (= (and b!41958 res!24986) b!41954))

(assert (= (and b!41954 c!5242) b!41957))

(assert (= (and b!41954 (not c!5242)) b!41955))

(assert (= (or b!41957 b!41955) bm!3254))

(assert (=> b!41954 m!35435))

(assert (=> b!41954 m!35435))

(assert (=> b!41954 m!35477))

(assert (=> b!41956 m!35435))

(assert (=> b!41956 m!35435))

(declare-fun m!35497 () Bool)

(assert (=> b!41956 m!35497))

(assert (=> b!41958 m!35435))

(assert (=> b!41958 m!35435))

(assert (=> b!41958 m!35477))

(assert (=> bm!3254 m!35435))

(declare-fun m!35499 () Bool)

(assert (=> bm!3254 m!35499))

(assert (=> b!41824 d!7523))

(declare-fun b!41967 () Bool)

(declare-fun e!26534 () (_ BitVec 32))

(declare-fun e!26535 () (_ BitVec 32))

(assert (=> b!41967 (= e!26534 e!26535)))

(declare-fun c!5248 () Bool)

(assert (=> b!41967 (= c!5248 (validKeyInArray!0 (select (arr!1308 lt!16969) #b00000000000000000000000000000000)))))

(declare-fun b!41968 () Bool)

(declare-fun call!3260 () (_ BitVec 32))

(assert (=> b!41968 (= e!26535 (bvadd #b00000000000000000000000000000001 call!3260))))

(declare-fun bm!3257 () Bool)

(assert (=> bm!3257 (= call!3260 (arrayCountValidKeys!0 lt!16969 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun b!41969 () Bool)

(assert (=> b!41969 (= e!26534 #b00000000000000000000000000000000)))

(declare-fun b!41970 () Bool)

(assert (=> b!41970 (= e!26535 call!3260)))

(declare-fun d!7531 () Bool)

(declare-fun lt!17032 () (_ BitVec 32))

(assert (=> d!7531 (and (bvsge lt!17032 #b00000000000000000000000000000000) (bvsle lt!17032 (bvsub (size!1460 lt!16969) #b00000000000000000000000000000000)))))

(assert (=> d!7531 (= lt!17032 e!26534)))

(declare-fun c!5247 () Bool)

(assert (=> d!7531 (= c!5247 (bvsge #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!7531 (and (bvsle #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 mask!853) (size!1460 lt!16969)))))

(assert (=> d!7531 (= (arrayCountValidKeys!0 lt!16969 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) lt!17032)))

(assert (= (and d!7531 c!5247) b!41969))

(assert (= (and d!7531 (not c!5247)) b!41967))

(assert (= (and b!41967 c!5248) b!41968))

(assert (= (and b!41967 (not c!5248)) b!41970))

(assert (= (or b!41968 b!41970) bm!3257))

(assert (=> b!41967 m!35435))

(assert (=> b!41967 m!35435))

(assert (=> b!41967 m!35477))

(declare-fun m!35501 () Bool)

(assert (=> bm!3257 m!35501))

(assert (=> b!41824 d!7531))

(declare-fun d!7537 () Bool)

(assert (=> d!7537 (arrayNoDuplicates!0 lt!16969 #b00000000000000000000000000000000 Nil!1136)))

(declare-fun lt!17037 () Unit!1065)

(declare-fun choose!111 (array!2729 (_ BitVec 32) (_ BitVec 32) List!1139) Unit!1065)

(assert (=> d!7537 (= lt!17037 (choose!111 lt!16969 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1136))))

(assert (=> d!7537 (= (size!1460 lt!16969) (bvadd #b00000000000000000000000000000001 mask!853))))

(assert (=> d!7537 (= (lemmaArrayNoDuplicatesInAll0Array!0 lt!16969 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1136) lt!17037)))

(declare-fun bs!1798 () Bool)

(assert (= bs!1798 d!7537))

(assert (=> bs!1798 m!35407))

(declare-fun m!35503 () Bool)

(assert (=> bs!1798 m!35503))

(assert (=> b!41824 d!7537))

(declare-fun d!7539 () Bool)

(assert (=> d!7539 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!16969 mask!853)))

(declare-fun lt!17044 () Unit!1065)

(declare-fun choose!34 (array!2729 (_ BitVec 32) (_ BitVec 32)) Unit!1065)

