; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!5510 () Bool)

(assert start!5510)

(declare-fun b_free!1361 () Bool)

(declare-fun b_next!1361 () Bool)

(assert (=> start!5510 (= b_free!1361 (not b_next!1361))))

(declare-fun tp!5729 () Bool)

(declare-fun b_and!2345 () Bool)

(assert (=> start!5510 (= tp!5729 b_and!2345)))

(declare-fun res!23569 () Bool)

(declare-fun e!24900 () Bool)

(assert (=> start!5510 (=> (not res!23569) (not e!24900))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!5510 (= res!23569 (validMask!0 mask!853))))

(assert (=> start!5510 e!24900))

(assert (=> start!5510 true))

(assert (=> start!5510 tp!5729))

(declare-fun b!39210 () Bool)

(declare-fun e!24899 () Bool)

(assert (=> b!39210 (= e!24900 (not e!24899))))

(declare-fun res!23568 () Bool)

(assert (=> b!39210 (=> res!23568 e!24899)))

(declare-datatypes ((array!2583 0))(
  ( (array!2584 (arr!1235 (Array (_ BitVec 32) (_ BitVec 64))) (size!1357 (_ BitVec 32))) )
))
(declare-datatypes ((V!2093 0))(
  ( (V!2094 (val!914 Int)) )
))
(declare-datatypes ((ValueCell!628 0))(
  ( (ValueCellFull!628 (v!1985 V!2093)) (EmptyCell!628) )
))
(declare-datatypes ((array!2585 0))(
  ( (array!2586 (arr!1236 (Array (_ BitVec 32) ValueCell!628)) (size!1358 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!236 0))(
  ( (LongMapFixedSize!237 (defaultEntry!1796 Int) (mask!5143 (_ BitVec 32)) (extraKeys!1687 (_ BitVec 32)) (zeroValue!1714 V!2093) (minValue!1714 V!2093) (_size!167 (_ BitVec 32)) (_keys!3267 array!2583) (_values!1779 array!2585) (_vacant!167 (_ BitVec 32))) )
))
(declare-fun lt!14740 () LongMapFixedSize!236)

(declare-datatypes ((tuple2!1486 0))(
  ( (tuple2!1487 (_1!753 (_ BitVec 64)) (_2!753 V!2093)) )
))
(declare-datatypes ((List!1066 0))(
  ( (Nil!1063) (Cons!1062 (h!1633 tuple2!1486) (t!3919 List!1066)) )
))
(declare-datatypes ((ListLongMap!1067 0))(
  ( (ListLongMap!1068 (toList!549 List!1066)) )
))
(declare-fun map!689 (LongMapFixedSize!236) ListLongMap!1067)

(assert (=> b!39210 (= res!23568 (= (map!689 lt!14740) (ListLongMap!1068 Nil!1063)))))

(declare-fun lt!14738 () array!2583)

(declare-datatypes ((List!1067 0))(
  ( (Nil!1064) (Cons!1063 (h!1634 (_ BitVec 64)) (t!3920 List!1067)) )
))
(declare-fun arrayNoDuplicates!0 (array!2583 (_ BitVec 32) List!1067) Bool)

(assert (=> b!39210 (arrayNoDuplicates!0 lt!14738 #b00000000000000000000000000000000 Nil!1064)))

(declare-datatypes ((Unit!964 0))(
  ( (Unit!965) )
))
(declare-fun lt!14742 () Unit!964)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2583 (_ BitVec 32) (_ BitVec 32) List!1067) Unit!964)

(assert (=> b!39210 (= lt!14742 (lemmaArrayNoDuplicatesInAll0Array!0 lt!14738 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1064))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2583 (_ BitVec 32)) Bool)

(assert (=> b!39210 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!14738 mask!853)))

(declare-fun lt!14743 () Unit!964)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2583 (_ BitVec 32) (_ BitVec 32)) Unit!964)

(assert (=> b!39210 (= lt!14743 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!14738 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2583 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!39210 (= (arrayCountValidKeys!0 lt!14738 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!14741 () Unit!964)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2583 (_ BitVec 32) (_ BitVec 32)) Unit!964)

(assert (=> b!39210 (= lt!14741 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!14738 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun defaultEntry!470 () Int)

(declare-fun lt!14739 () V!2093)

(assert (=> b!39210 (= lt!14740 (LongMapFixedSize!237 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14739 lt!14739 #b00000000000000000000000000000000 lt!14738 (array!2586 ((as const (Array (_ BitVec 32) ValueCell!628)) EmptyCell!628) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))))

(assert (=> b!39210 (= lt!14738 (array!2584 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!189 (Int (_ BitVec 64)) V!2093)

(assert (=> b!39210 (= lt!14739 (dynLambda!189 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!39211 () Bool)

(declare-fun valid!121 (LongMapFixedSize!236) Bool)

(assert (=> b!39211 (= e!24899 (valid!121 lt!14740))))

(assert (= (and start!5510 res!23569) b!39210))

(assert (= (and b!39210 (not res!23568)) b!39211))

(declare-fun b_lambda!2045 () Bool)

(assert (=> (not b_lambda!2045) (not b!39210)))

(declare-fun t!3918 () Bool)

(declare-fun tb!839 () Bool)

(assert (=> (and start!5510 (= defaultEntry!470 defaultEntry!470) t!3918) tb!839))

(declare-fun result!1433 () Bool)

(declare-fun tp_is_empty!1751 () Bool)

(assert (=> tb!839 (= result!1433 tp_is_empty!1751)))

(assert (=> b!39210 t!3918))

(declare-fun b_and!2347 () Bool)

(assert (= b_and!2345 (and (=> t!3918 result!1433) b_and!2347)))

(declare-fun m!31941 () Bool)

(assert (=> start!5510 m!31941))

(declare-fun m!31943 () Bool)

(assert (=> b!39210 m!31943))

(declare-fun m!31945 () Bool)

(assert (=> b!39210 m!31945))

(declare-fun m!31947 () Bool)

(assert (=> b!39210 m!31947))

(declare-fun m!31949 () Bool)

(assert (=> b!39210 m!31949))

(declare-fun m!31951 () Bool)

(assert (=> b!39210 m!31951))

(declare-fun m!31953 () Bool)

(assert (=> b!39210 m!31953))

(declare-fun m!31955 () Bool)

(assert (=> b!39210 m!31955))

(declare-fun m!31957 () Bool)

(assert (=> b!39210 m!31957))

(declare-fun m!31959 () Bool)

(assert (=> b!39211 m!31959))

(push 1)

(assert tp_is_empty!1751)

(assert (not b_lambda!2045))

(assert (not b_next!1361))

(assert (not start!5510))

(assert (not b!39211))

(assert (not b!39210))

(assert b_and!2347)

(check-sat)

(pop 1)

(push 1)

(assert b_and!2347)

(assert (not b_next!1361))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!2051 () Bool)

(assert (= b_lambda!2045 (or (and start!5510 b_free!1361) b_lambda!2051)))

(push 1)

(assert tp_is_empty!1751)

(assert (not b_next!1361))

(assert (not b_lambda!2051))

(assert (not start!5510))

(assert (not b!39211))

(assert (not b!39210))

(assert b_and!2347)

(check-sat)

(pop 1)

(push 1)

(assert b_and!2347)

(assert (not b_next!1361))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6551 () Bool)

(assert (=> d!6551 (= (validMask!0 mask!853) (and (or (= mask!853 #b00000000000000000000000000000111) (= mask!853 #b00000000000000000000000000001111) (= mask!853 #b00000000000000000000000000011111) (= mask!853 #b00000000000000000000000000111111) (= mask!853 #b00000000000000000000000001111111) (= mask!853 #b00000000000000000000000011111111) (= mask!853 #b00000000000000000000000111111111) (= mask!853 #b00000000000000000000001111111111) (= mask!853 #b00000000000000000000011111111111) (= mask!853 #b00000000000000000000111111111111) (= mask!853 #b00000000000000000001111111111111) (= mask!853 #b00000000000000000011111111111111) (= mask!853 #b00000000000000000111111111111111) (= mask!853 #b00000000000000001111111111111111) (= mask!853 #b00000000000000011111111111111111) (= mask!853 #b00000000000000111111111111111111) (= mask!853 #b00000000000001111111111111111111) (= mask!853 #b00000000000011111111111111111111) (= mask!853 #b00000000000111111111111111111111) (= mask!853 #b00000000001111111111111111111111) (= mask!853 #b00000000011111111111111111111111) (= mask!853 #b00000000111111111111111111111111) (= mask!853 #b00000001111111111111111111111111) (= mask!853 #b00000011111111111111111111111111) (= mask!853 #b00000111111111111111111111111111) (= mask!853 #b00001111111111111111111111111111) (= mask!853 #b00011111111111111111111111111111) (= mask!853 #b00111111111111111111111111111111)) (bvsle mask!853 #b00111111111111111111111111111111)))))

(assert (=> start!5510 d!6551))

(declare-fun d!6557 () Bool)

(declare-fun getCurrentListMap!309 (array!2583 array!2585 (_ BitVec 32) (_ BitVec 32) V!2093 V!2093 (_ BitVec 32) Int) ListLongMap!1067)

(assert (=> d!6557 (= (map!689 lt!14740) (getCurrentListMap!309 (_keys!3267 lt!14740) (_values!1779 lt!14740) (mask!5143 lt!14740) (extraKeys!1687 lt!14740) (zeroValue!1714 lt!14740) (minValue!1714 lt!14740) #b00000000000000000000000000000000 (defaultEntry!1796 lt!14740)))))

(declare-fun bs!1629 () Bool)

(assert (= bs!1629 d!6557))

(declare-fun m!31965 () Bool)

(assert (=> bs!1629 m!31965))

(assert (=> b!39210 d!6557))

(declare-fun d!6565 () Bool)

(assert (=> d!6565 (= (arrayCountValidKeys!0 lt!14738 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!14758 () Unit!964)

(declare-fun choose!59 (array!2583 (_ BitVec 32) (_ BitVec 32)) Unit!964)

(assert (=> d!6565 (= lt!14758 (choose!59 lt!14738 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!6565 (bvslt (size!1357 lt!14738) #b01111111111111111111111111111111)))

(assert (=> d!6565 (= (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!14738 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) lt!14758)))

(declare-fun bs!1630 () Bool)

(assert (= bs!1630 d!6565))

(assert (=> bs!1630 m!31949))

(declare-fun m!31979 () Bool)

(assert (=> bs!1630 m!31979))

(assert (=> b!39210 d!6565))

(declare-fun d!6569 () Bool)

(assert (=> d!6569 (arrayNoDuplicates!0 lt!14738 #b00000000000000000000000000000000 Nil!1064)))

(declare-fun lt!14761 () Unit!964)

(declare-fun choose!111 (array!2583 (_ BitVec 32) (_ BitVec 32) List!1067) Unit!964)

(assert (=> d!6569 (= lt!14761 (choose!111 lt!14738 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1064))))

(assert (=> d!6569 (= (size!1357 lt!14738) (bvadd #b00000000000000000000000000000001 mask!853))))

(assert (=> d!6569 (= (lemmaArrayNoDuplicatesInAll0Array!0 lt!14738 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1064) lt!14761)))

(declare-fun bs!1631 () Bool)

(assert (= bs!1631 d!6569))

(assert (=> bs!1631 m!31947))

(declare-fun m!31989 () Bool)

(assert (=> bs!1631 m!31989))

(assert (=> b!39210 d!6569))

(declare-fun b!39273 () Bool)

(declare-fun e!24942 () (_ BitVec 32))

(declare-fun call!2975 () (_ BitVec 32))

(assert (=> b!39273 (= e!24942 call!2975)))

(declare-fun b!39274 () Bool)

(declare-fun e!24943 () (_ BitVec 32))

(assert (=> b!39274 (= e!24943 #b00000000000000000000000000000000)))

(declare-fun bm!2972 () Bool)

(assert (=> bm!2972 (= call!2975 (arrayCountValidKeys!0 lt!14738 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun d!6573 () Bool)

(declare-fun lt!14775 () (_ BitVec 32))

(assert (=> d!6573 (and (bvsge lt!14775 #b00000000000000000000000000000000) (bvsle lt!14775 (bvsub (size!1357 lt!14738) #b00000000000000000000000000000000)))))

(assert (=> d!6573 (= lt!14775 e!24943)))

(declare-fun c!4631 () Bool)

(assert (=> d!6573 (= c!4631 (bvsge #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!6573 (and (bvsle #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 mask!853) (size!1357 lt!14738)))))

(assert (=> d!6573 (= (arrayCountValidKeys!0 lt!14738 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) lt!14775)))

(declare-fun b!39275 () Bool)

(assert (=> b!39275 (= e!24942 (bvadd #b00000000000000000000000000000001 call!2975))))

(declare-fun b!39276 () Bool)

(assert (=> b!39276 (= e!24943 e!24942)))

(declare-fun c!4630 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!39276 (= c!4630 (validKeyInArray!0 (select (arr!1235 lt!14738) #b00000000000000000000000000000000)))))

(assert (= (and d!6573 c!4631) b!39274))

(assert (= (and d!6573 (not c!4631)) b!39276))

(assert (= (and b!39276 c!4630) b!39275))

(assert (= (and b!39276 (not c!4630)) b!39273))

(assert (= (or b!39275 b!39273) bm!2972))

(declare-fun m!31997 () Bool)

(assert (=> bm!2972 m!31997))

(declare-fun m!31999 () Bool)

(assert (=> b!39276 m!31999))

(assert (=> b!39276 m!31999))

(declare-fun m!32001 () Bool)

(assert (=> b!39276 m!32001))

(assert (=> b!39210 d!6573))

(declare-fun d!6581 () Bool)

(assert (=> d!6581 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!14738 mask!853)))

(declare-fun lt!14779 () Unit!964)

(declare-fun choose!34 (array!2583 (_ BitVec 32) (_ BitVec 32)) Unit!964)

(assert (=> d!6581 (= lt!14779 (choose!34 lt!14738 mask!853 #b00000000000000000000000000000000))))

(assert (=> d!6581 (validMask!0 mask!853)))

(assert (=> d!6581 (= (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!14738 mask!853 #b00000000000000000000000000000000) lt!14779)))

(declare-fun bs!1634 () Bool)

(assert (= bs!1634 d!6581))

(assert (=> bs!1634 m!31957))

(declare-fun m!32009 () Bool)

(assert (=> bs!1634 m!32009))

(assert (=> bs!1634 m!31941))

(assert (=> b!39210 d!6581))

(declare-fun b!39302 () Bool)

(declare-fun e!24960 () Bool)

(declare-fun contains!506 (List!1067 (_ BitVec 64)) Bool)

(assert (=> b!39302 (= e!24960 (contains!506 Nil!1064 (select (arr!1235 lt!14738) #b00000000000000000000000000000000)))))

(declare-fun b!39303 () Bool)

(declare-fun e!24963 () Bool)

(declare-fun e!24962 () Bool)

(assert (=> b!39303 (= e!24963 e!24962)))

(declare-fun res!23602 () Bool)

(assert (=> b!39303 (=> (not res!23602) (not e!24962))))

(assert (=> b!39303 (= res!23602 (not e!24960))))

(declare-fun res!23601 () Bool)

(assert (=> b!39303 (=> (not res!23601) (not e!24960))))

(assert (=> b!39303 (= res!23601 (validKeyInArray!0 (select (arr!1235 lt!14738) #b00000000000000000000000000000000)))))

(declare-fun b!39304 () Bool)

(declare-fun e!24961 () Bool)

(declare-fun call!2984 () Bool)

(assert (=> b!39304 (= e!24961 call!2984)))

(declare-fun bm!2981 () Bool)

(declare-fun c!4639 () Bool)

(assert (=> bm!2981 (= call!2984 (arrayNoDuplicates!0 lt!14738 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!4639 (Cons!1063 (select (arr!1235 lt!14738) #b00000000000000000000000000000000) Nil!1064) Nil!1064)))))

(declare-fun d!6587 () Bool)

(declare-fun res!23600 () Bool)

(assert (=> d!6587 (=> res!23600 e!24963)))

(assert (=> d!6587 (= res!23600 (bvsge #b00000000000000000000000000000000 (size!1357 lt!14738)))))

(assert (=> d!6587 (= (arrayNoDuplicates!0 lt!14738 #b00000000000000000000000000000000 Nil!1064) e!24963)))

(declare-fun b!39305 () Bool)

(assert (=> b!39305 (= e!24962 e!24961)))

(assert (=> b!39305 (= c!4639 (validKeyInArray!0 (select (arr!1235 lt!14738) #b00000000000000000000000000000000)))))

(declare-fun b!39306 () Bool)

(assert (=> b!39306 (= e!24961 call!2984)))

(assert (= (and d!6587 (not res!23600)) b!39303))

(assert (= (and b!39303 res!23601) b!39302))

(assert (= (and b!39303 res!23602) b!39305))

(assert (= (and b!39305 c!4639) b!39306))

(assert (= (and b!39305 (not c!4639)) b!39304))

(assert (= (or b!39306 b!39304) bm!2981))

(assert (=> b!39302 m!31999))

(assert (=> b!39302 m!31999))

(declare-fun m!32017 () Bool)

(assert (=> b!39302 m!32017))

(assert (=> b!39303 m!31999))

(assert (=> b!39303 m!31999))

(assert (=> b!39303 m!32001))

(assert (=> bm!2981 m!31999))

(declare-fun m!32019 () Bool)

(assert (=> bm!2981 m!32019))

(assert (=> b!39305 m!31999))

(assert (=> b!39305 m!31999))

(assert (=> b!39305 m!32001))

(assert (=> b!39210 d!6587))

(declare-fun b!39336 () Bool)

(declare-fun e!24984 () Bool)

(declare-fun call!2990 () Bool)

(assert (=> b!39336 (= e!24984 call!2990)))

(declare-fun b!39337 () Bool)

(declare-fun e!24983 () Bool)

(assert (=> b!39337 (= e!24984 e!24983)))

(declare-fun lt!14806 () (_ BitVec 64))

(assert (=> b!39337 (= lt!14806 (select (arr!1235 lt!14738) #b00000000000000000000000000000000))))

(declare-fun lt!14805 () Unit!964)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!2583 (_ BitVec 64) (_ BitVec 32)) Unit!964)

(assert (=> b!39337 (= lt!14805 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!14738 lt!14806 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!2583 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!39337 (arrayContainsKey!0 lt!14738 lt!14806 #b00000000000000000000000000000000)))

(declare-fun lt!14804 () Unit!964)

(assert (=> b!39337 (= lt!14804 lt!14805)))

(declare-fun res!23623 () Bool)

(declare-datatypes ((SeekEntryResult!182 0))(
  ( (MissingZero!182 (index!2850 (_ BitVec 32))) (Found!182 (index!2851 (_ BitVec 32))) (Intermediate!182 (undefined!994 Bool) (index!2852 (_ BitVec 32)) (x!7668 (_ BitVec 32))) (Undefined!182) (MissingVacant!182 (index!2853 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!2583 (_ BitVec 32)) SeekEntryResult!182)

(assert (=> b!39337 (= res!23623 (= (seekEntryOrOpen!0 (select (arr!1235 lt!14738) #b00000000000000000000000000000000) lt!14738 mask!853) (Found!182 #b00000000000000000000000000000000)))))

(assert (=> b!39337 (=> (not res!23623) (not e!24983))))

(declare-fun d!6595 () Bool)

(declare-fun res!23622 () Bool)

(declare-fun e!24982 () Bool)

(assert (=> d!6595 (=> res!23622 e!24982)))

(assert (=> d!6595 (= res!23622 (bvsge #b00000000000000000000000000000000 (size!1357 lt!14738)))))

(assert (=> d!6595 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!14738 mask!853) e!24982)))

(declare-fun b!39338 () Bool)

(assert (=> b!39338 (= e!24983 call!2990)))

(declare-fun bm!2987 () Bool)

(assert (=> bm!2987 (= call!2990 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!14738 mask!853))))

(declare-fun b!39339 () Bool)

(assert (=> b!39339 (= e!24982 e!24984)))

(declare-fun c!4645 () Bool)

(assert (=> b!39339 (= c!4645 (validKeyInArray!0 (select (arr!1235 lt!14738) #b00000000000000000000000000000000)))))

(assert (= (and d!6595 (not res!23622)) b!39339))

(assert (= (and b!39339 c!4645) b!39337))

(assert (= (and b!39339 (not c!4645)) b!39336))

(assert (= (and b!39337 res!23623) b!39338))

(assert (= (or b!39338 b!39336) bm!2987))

(assert (=> b!39337 m!31999))

(declare-fun m!32039 () Bool)

(assert (=> b!39337 m!32039))

(declare-fun m!32041 () Bool)

(assert (=> b!39337 m!32041))

(assert (=> b!39337 m!31999))

(declare-fun m!32043 () Bool)

(assert (=> b!39337 m!32043))

(declare-fun m!32045 () Bool)

(assert (=> bm!2987 m!32045))

(assert (=> b!39339 m!31999))

(assert (=> b!39339 m!31999))

(assert (=> b!39339 m!32001))

(assert (=> b!39210 d!6595))

(declare-fun d!6601 () Bool)

(declare-fun res!23639 () Bool)

(declare-fun e!24990 () Bool)

(assert (=> d!6601 (=> (not res!23639) (not e!24990))))

(declare-fun simpleValid!25 (LongMapFixedSize!236) Bool)

(assert (=> d!6601 (= res!23639 (simpleValid!25 lt!14740))))

(assert (=> d!6601 (= (valid!121 lt!14740) e!24990)))

(declare-fun b!39355 () Bool)

(declare-fun res!23640 () Bool)

(assert (=> b!39355 (=> (not res!23640) (not e!24990))))

(assert (=> b!39355 (= res!23640 (= (arrayCountValidKeys!0 (_keys!3267 lt!14740) #b00000000000000000000000000000000 (size!1357 (_keys!3267 lt!14740))) (_size!167 lt!14740)))))

(declare-fun b!39356 () Bool)

(declare-fun res!23641 () Bool)

(assert (=> b!39356 (=> (not res!23641) (not e!24990))))

(assert (=> b!39356 (= res!23641 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3267 lt!14740) (mask!5143 lt!14740)))))

(declare-fun b!39357 () Bool)

(assert (=> b!39357 (= e!24990 (arrayNoDuplicates!0 (_keys!3267 lt!14740) #b00000000000000000000000000000000 Nil!1064))))

(assert (= (and d!6601 res!23639) b!39355))

(assert (= (and b!39355 res!23640) b!39356))

(assert (= (and b!39356 res!23641) b!39357))

(declare-fun m!32055 () Bool)

(assert (=> d!6601 m!32055))

(declare-fun m!32057 () Bool)

(assert (=> b!39355 m!32057))

(declare-fun m!32059 () Bool)

(assert (=> b!39356 m!32059))

(declare-fun m!32061 () Bool)

(assert (=> b!39357 m!32061))

(assert (=> b!39211 d!6601))

(push 1)

(assert (not b!39337))

(assert (not d!6565))

(assert (not b!39356))

(assert (not d!6601))

(assert (not b!39302))

(assert (not bm!2972))

(assert (not bm!2981))

(assert (not b_next!1361))

(assert (not d!6569))

(assert (not b!39357))

(assert b_and!2347)

(assert (not b_lambda!2051))

(assert (not d!6557))

(assert (not b!39305))

(assert (not b!39355))

(assert (not d!6581))

(assert (not b!39276))

(assert (not b!39339))

(assert tp_is_empty!1751)

(assert (not b!39303))

(assert (not bm!2987))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2347)

(assert (not b_next!1361))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!39370 () Bool)

(declare-fun e!24996 () Bool)

(declare-fun call!2991 () Bool)

(assert (=> b!39370 (= e!24996 call!2991)))

(declare-fun b!39371 () Bool)

(declare-fun e!24995 () Bool)

(assert (=> b!39371 (= e!24996 e!24995)))

(declare-fun lt!14809 () (_ BitVec 64))

(assert (=> b!39371 (= lt!14809 (select (arr!1235 lt!14738) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!14808 () Unit!964)

(assert (=> b!39371 (= lt!14808 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!14738 lt!14809 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!39371 (arrayContainsKey!0 lt!14738 lt!14809 #b00000000000000000000000000000000)))

(declare-fun lt!14807 () Unit!964)

(assert (=> b!39371 (= lt!14807 lt!14808)))

(declare-fun res!23655 () Bool)

(assert (=> b!39371 (= res!23655 (= (seekEntryOrOpen!0 (select (arr!1235 lt!14738) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!14738 mask!853) (Found!182 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!39371 (=> (not res!23655) (not e!24995))))

(declare-fun d!6611 () Bool)

(declare-fun res!23654 () Bool)

(declare-fun e!24994 () Bool)

(assert (=> d!6611 (=> res!23654 e!24994)))

(assert (=> d!6611 (= res!23654 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1357 lt!14738)))))

(assert (=> d!6611 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!14738 mask!853) e!24994)))

(declare-fun b!39372 () Bool)

(assert (=> b!39372 (= e!24995 call!2991)))

(declare-fun bm!2988 () Bool)

(assert (=> bm!2988 (= call!2991 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) lt!14738 mask!853))))

(declare-fun b!39373 () Bool)

(assert (=> b!39373 (= e!24994 e!24996)))

(declare-fun c!4646 () Bool)

(assert (=> b!39373 (= c!4646 (validKeyInArray!0 (select (arr!1235 lt!14738) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!6611 (not res!23654)) b!39373))

(assert (= (and b!39373 c!4646) b!39371))

(assert (= (and b!39373 (not c!4646)) b!39370))

(assert (= (and b!39371 res!23655) b!39372))

(assert (= (or b!39372 b!39370) bm!2988))

(declare-fun m!32067 () Bool)

(assert (=> b!39371 m!32067))

(declare-fun m!32069 () Bool)

(assert (=> b!39371 m!32069))

(declare-fun m!32071 () Bool)

(assert (=> b!39371 m!32071))

(assert (=> b!39371 m!32067))

(declare-fun m!32073 () Bool)

(assert (=> b!39371 m!32073))

(declare-fun m!32075 () Bool)

(assert (=> bm!2988 m!32075))

(assert (=> b!39373 m!32067))

(assert (=> b!39373 m!32067))

(declare-fun m!32077 () Bool)

(assert (=> b!39373 m!32077))

(assert (=> bm!2987 d!6611))

(declare-fun d!6615 () Bool)

(assert (=> d!6615 (= (validKeyInArray!0 (select (arr!1235 lt!14738) #b00000000000000000000000000000000)) (and (not (= (select (arr!1235 lt!14738) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1235 lt!14738) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!39276 d!6615))

(declare-fun b!39561 () Bool)

(declare-fun e!25125 () Bool)

(declare-fun lt!14961 () ListLongMap!1067)

(declare-fun apply!53 (ListLongMap!1067 (_ BitVec 64)) V!2093)

(declare-fun get!690 (ValueCell!628 V!2093) V!2093)

(assert (=> b!39561 (= e!25125 (= (apply!53 lt!14961 (select (arr!1235 (_keys!3267 lt!14740)) #b00000000000000000000000000000000)) (get!690 (select (arr!1236 (_values!1779 lt!14740)) #b00000000000000000000000000000000) (dynLambda!189 (defaultEntry!1796 lt!14740) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!39561 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1358 (_values!1779 lt!14740))))))

(assert (=> b!39561 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1357 (_keys!3267 lt!14740))))))

(declare-fun call!3037 () ListLongMap!1067)

(declare-fun call!3040 () ListLongMap!1067)

(declare-fun bm!3033 () Bool)

(declare-fun c!4699 () Bool)

(declare-fun call!3038 () ListLongMap!1067)

(declare-fun call!3039 () ListLongMap!1067)

(declare-fun c!4700 () Bool)

(declare-fun +!62 (ListLongMap!1067 tuple2!1486) ListLongMap!1067)

(assert (=> bm!3033 (= call!3040 (+!62 (ite c!4699 call!3039 (ite c!4700 call!3038 call!3037)) (ite (or c!4699 c!4700) (tuple2!1487 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1714 lt!14740)) (tuple2!1487 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1714 lt!14740)))))))

(declare-fun b!39563 () Bool)

(declare-fun res!23755 () Bool)

(declare-fun e!25120 () Bool)

(assert (=> b!39563 (=> (not res!23755) (not e!25120))))

(declare-fun e!25117 () Bool)

(assert (=> b!39563 (= res!23755 e!25117)))

(declare-fun res!23751 () Bool)

(assert (=> b!39563 (=> res!23751 e!25117)))

(declare-fun e!25126 () Bool)

(assert (=> b!39563 (= res!23751 (not e!25126))))

(declare-fun res!23757 () Bool)

(assert (=> b!39563 (=> (not res!23757) (not e!25126))))

(assert (=> b!39563 (= res!23757 (bvslt #b00000000000000000000000000000000 (size!1357 (_keys!3267 lt!14740))))))

(declare-fun b!39564 () Bool)

(declare-fun e!25116 () ListLongMap!1067)

(declare-fun e!25119 () ListLongMap!1067)

(assert (=> b!39564 (= e!25116 e!25119)))

(assert (=> b!39564 (= c!4700 (and (not (= (bvand (extraKeys!1687 lt!14740) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!1687 lt!14740) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!3034 () Bool)

(declare-fun call!3036 () ListLongMap!1067)

(assert (=> bm!3034 (= call!3036 call!3040)))

(declare-fun bm!3035 () Bool)

(declare-fun call!3042 () Bool)

(declare-fun contains!508 (ListLongMap!1067 (_ BitVec 64)) Bool)

(assert (=> bm!3035 (= call!3042 (contains!508 lt!14961 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!39565 () Bool)

(declare-fun e!25124 () Bool)

(assert (=> b!39565 (= e!25124 (= (apply!53 lt!14961 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!1714 lt!14740)))))

(declare-fun b!39566 () Bool)

(declare-fun e!25118 () Bool)

(assert (=> b!39566 (= e!25118 (validKeyInArray!0 (select (arr!1235 (_keys!3267 lt!14740)) #b00000000000000000000000000000000)))))

(declare-fun b!39567 () Bool)

(declare-fun e!25115 () ListLongMap!1067)

(assert (=> b!39567 (= e!25115 call!3037)))

(declare-fun b!39568 () Bool)

(declare-fun e!25123 () Unit!964)

(declare-fun Unit!967 () Unit!964)

(assert (=> b!39568 (= e!25123 Unit!967)))

(declare-fun b!39569 () Bool)

(assert (=> b!39569 (= e!25116 (+!62 call!3040 (tuple2!1487 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1714 lt!14740))))))

(declare-fun b!39570 () Bool)

(assert (=> b!39570 (= e!25117 e!25125)))

(declare-fun res!23756 () Bool)

(assert (=> b!39570 (=> (not res!23756) (not e!25125))))

(assert (=> b!39570 (= res!23756 (contains!508 lt!14961 (select (arr!1235 (_keys!3267 lt!14740)) #b00000000000000000000000000000000)))))

(assert (=> b!39570 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1357 (_keys!3267 lt!14740))))))

(declare-fun b!39571 () Bool)

(declare-fun lt!14946 () Unit!964)

(assert (=> b!39571 (= e!25123 lt!14946)))

(declare-fun lt!14949 () ListLongMap!1067)

(declare-fun getCurrentListMapNoExtraKeys!31 (array!2583 array!2585 (_ BitVec 32) (_ BitVec 32) V!2093 V!2093 (_ BitVec 32) Int) ListLongMap!1067)

(assert (=> b!39571 (= lt!14949 (getCurrentListMapNoExtraKeys!31 (_keys!3267 lt!14740) (_values!1779 lt!14740) (mask!5143 lt!14740) (extraKeys!1687 lt!14740) (zeroValue!1714 lt!14740) (minValue!1714 lt!14740) #b00000000000000000000000000000000 (defaultEntry!1796 lt!14740)))))

(declare-fun lt!14962 () (_ BitVec 64))

(assert (=> b!39571 (= lt!14962 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!14958 () (_ BitVec 64))

(assert (=> b!39571 (= lt!14958 (select (arr!1235 (_keys!3267 lt!14740)) #b00000000000000000000000000000000))))

(declare-fun lt!14950 () Unit!964)

(declare-fun addStillContains!29 (ListLongMap!1067 (_ BitVec 64) V!2093 (_ BitVec 64)) Unit!964)

(assert (=> b!39571 (= lt!14950 (addStillContains!29 lt!14949 lt!14962 (zeroValue!1714 lt!14740) lt!14958))))

(assert (=> b!39571 (contains!508 (+!62 lt!14949 (tuple2!1487 lt!14962 (zeroValue!1714 lt!14740))) lt!14958)))

(declare-fun lt!14954 () Unit!964)

(assert (=> b!39571 (= lt!14954 lt!14950)))

(declare-fun lt!14959 () ListLongMap!1067)

(assert (=> b!39571 (= lt!14959 (getCurrentListMapNoExtraKeys!31 (_keys!3267 lt!14740) (_values!1779 lt!14740) (mask!5143 lt!14740) (extraKeys!1687 lt!14740) (zeroValue!1714 lt!14740) (minValue!1714 lt!14740) #b00000000000000000000000000000000 (defaultEntry!1796 lt!14740)))))

(declare-fun lt!14953 () (_ BitVec 64))

(assert (=> b!39571 (= lt!14953 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!14947 () (_ BitVec 64))

(assert (=> b!39571 (= lt!14947 (select (arr!1235 (_keys!3267 lt!14740)) #b00000000000000000000000000000000))))

(declare-fun lt!14956 () Unit!964)

(declare-fun addApplyDifferent!29 (ListLongMap!1067 (_ BitVec 64) V!2093 (_ BitVec 64)) Unit!964)

(assert (=> b!39571 (= lt!14956 (addApplyDifferent!29 lt!14959 lt!14953 (minValue!1714 lt!14740) lt!14947))))

(assert (=> b!39571 (= (apply!53 (+!62 lt!14959 (tuple2!1487 lt!14953 (minValue!1714 lt!14740))) lt!14947) (apply!53 lt!14959 lt!14947))))

(declare-fun lt!14957 () Unit!964)

(assert (=> b!39571 (= lt!14957 lt!14956)))

(declare-fun lt!14960 () ListLongMap!1067)

(assert (=> b!39571 (= lt!14960 (getCurrentListMapNoExtraKeys!31 (_keys!3267 lt!14740) (_values!1779 lt!14740) (mask!5143 lt!14740) (extraKeys!1687 lt!14740) (zeroValue!1714 lt!14740) (minValue!1714 lt!14740) #b00000000000000000000000000000000 (defaultEntry!1796 lt!14740)))))

(declare-fun lt!14948 () (_ BitVec 64))

(assert (=> b!39571 (= lt!14948 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!14963 () (_ BitVec 64))

(assert (=> b!39571 (= lt!14963 (select (arr!1235 (_keys!3267 lt!14740)) #b00000000000000000000000000000000))))

(declare-fun lt!14951 () Unit!964)

(assert (=> b!39571 (= lt!14951 (addApplyDifferent!29 lt!14960 lt!14948 (zeroValue!1714 lt!14740) lt!14963))))

(assert (=> b!39571 (= (apply!53 (+!62 lt!14960 (tuple2!1487 lt!14948 (zeroValue!1714 lt!14740))) lt!14963) (apply!53 lt!14960 lt!14963))))

(declare-fun lt!14955 () Unit!964)

(assert (=> b!39571 (= lt!14955 lt!14951)))

(declare-fun lt!14952 () ListLongMap!1067)

(assert (=> b!39571 (= lt!14952 (getCurrentListMapNoExtraKeys!31 (_keys!3267 lt!14740) (_values!1779 lt!14740) (mask!5143 lt!14740) (extraKeys!1687 lt!14740) (zeroValue!1714 lt!14740) (minValue!1714 lt!14740) #b00000000000000000000000000000000 (defaultEntry!1796 lt!14740)))))

(declare-fun lt!14966 () (_ BitVec 64))

(assert (=> b!39571 (= lt!14966 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!14967 () (_ BitVec 64))

(assert (=> b!39571 (= lt!14967 (select (arr!1235 (_keys!3267 lt!14740)) #b00000000000000000000000000000000))))

(assert (=> b!39571 (= lt!14946 (addApplyDifferent!29 lt!14952 lt!14966 (minValue!1714 lt!14740) lt!14967))))

(assert (=> b!39571 (= (apply!53 (+!62 lt!14952 (tuple2!1487 lt!14966 (minValue!1714 lt!14740))) lt!14967) (apply!53 lt!14952 lt!14967))))

(declare-fun b!39572 () Bool)

(declare-fun e!25127 () Bool)

(declare-fun call!3041 () Bool)

(assert (=> b!39572 (= e!25127 (not call!3041))))

(declare-fun bm!3036 () Bool)

(assert (=> bm!3036 (= call!3038 call!3039)))

(declare-fun b!39573 () Bool)

(declare-fun res!23753 () Bool)

(assert (=> b!39573 (=> (not res!23753) (not e!25120))))

(assert (=> b!39573 (= res!23753 e!25127)))

(declare-fun c!4702 () Bool)

(assert (=> b!39573 (= c!4702 (not (= (bvand (extraKeys!1687 lt!14740) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!39562 () Bool)

(assert (=> b!39562 (= e!25119 call!3036)))

(declare-fun d!6619 () Bool)

(assert (=> d!6619 e!25120))

(declare-fun res!23754 () Bool)

(assert (=> d!6619 (=> (not res!23754) (not e!25120))))

(assert (=> d!6619 (= res!23754 (or (bvsge #b00000000000000000000000000000000 (size!1357 (_keys!3267 lt!14740))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1357 (_keys!3267 lt!14740))))))))

(declare-fun lt!14964 () ListLongMap!1067)

(assert (=> d!6619 (= lt!14961 lt!14964)))

(declare-fun lt!14965 () Unit!964)

(assert (=> d!6619 (= lt!14965 e!25123)))

(declare-fun c!4697 () Bool)

(assert (=> d!6619 (= c!4697 e!25118)))

(declare-fun res!23752 () Bool)

(assert (=> d!6619 (=> (not res!23752) (not e!25118))))

(assert (=> d!6619 (= res!23752 (bvslt #b00000000000000000000000000000000 (size!1357 (_keys!3267 lt!14740))))))

(assert (=> d!6619 (= lt!14964 e!25116)))

(assert (=> d!6619 (= c!4699 (and (not (= (bvand (extraKeys!1687 lt!14740) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!1687 lt!14740) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!6619 (validMask!0 (mask!5143 lt!14740))))

(assert (=> d!6619 (= (getCurrentListMap!309 (_keys!3267 lt!14740) (_values!1779 lt!14740) (mask!5143 lt!14740) (extraKeys!1687 lt!14740) (zeroValue!1714 lt!14740) (minValue!1714 lt!14740) #b00000000000000000000000000000000 (defaultEntry!1796 lt!14740)) lt!14961)))

(declare-fun b!39574 () Bool)

(declare-fun c!4701 () Bool)

(assert (=> b!39574 (= c!4701 (and (not (= (bvand (extraKeys!1687 lt!14740) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!1687 lt!14740) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!39574 (= e!25119 e!25115)))

(declare-fun b!39575 () Bool)

(assert (=> b!39575 (= e!25127 e!25124)))

(declare-fun res!23750 () Bool)

(assert (=> b!39575 (= res!23750 call!3041)))

(assert (=> b!39575 (=> (not res!23750) (not e!25124))))

(declare-fun b!39576 () Bool)

(declare-fun e!25122 () Bool)

(assert (=> b!39576 (= e!25122 (= (apply!53 lt!14961 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!1714 lt!14740)))))

(declare-fun b!39577 () Bool)

(assert (=> b!39577 (= e!25126 (validKeyInArray!0 (select (arr!1235 (_keys!3267 lt!14740)) #b00000000000000000000000000000000)))))

(declare-fun b!39578 () Bool)

(declare-fun e!25121 () Bool)

(assert (=> b!39578 (= e!25121 (not call!3042))))

(declare-fun bm!3037 () Bool)

(assert (=> bm!3037 (= call!3041 (contains!508 lt!14961 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!39579 () Bool)

(assert (=> b!39579 (= e!25120 e!25121)))

(declare-fun c!4698 () Bool)

(assert (=> b!39579 (= c!4698 (not (= (bvand (extraKeys!1687 lt!14740) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!39580 () Bool)

(assert (=> b!39580 (= e!25115 call!3036)))

(declare-fun bm!3038 () Bool)

(assert (=> bm!3038 (= call!3037 call!3038)))

(declare-fun b!39581 () Bool)

(assert (=> b!39581 (= e!25121 e!25122)))

(declare-fun res!23749 () Bool)

(assert (=> b!39581 (= res!23749 call!3042)))

(assert (=> b!39581 (=> (not res!23749) (not e!25122))))

(declare-fun bm!3039 () Bool)

(assert (=> bm!3039 (= call!3039 (getCurrentListMapNoExtraKeys!31 (_keys!3267 lt!14740) (_values!1779 lt!14740) (mask!5143 lt!14740) (extraKeys!1687 lt!14740) (zeroValue!1714 lt!14740) (minValue!1714 lt!14740) #b00000000000000000000000000000000 (defaultEntry!1796 lt!14740)))))

(assert (= (and d!6619 c!4699) b!39569))

(assert (= (and d!6619 (not c!4699)) b!39564))

(assert (= (and b!39564 c!4700) b!39562))

(assert (= (and b!39564 (not c!4700)) b!39574))

(assert (= (and b!39574 c!4701) b!39580))

(assert (= (and b!39574 (not c!4701)) b!39567))

(assert (= (or b!39580 b!39567) bm!3038))

(assert (= (or b!39562 bm!3038) bm!3036))

(assert (= (or b!39562 b!39580) bm!3034))

(assert (= (or b!39569 bm!3036) bm!3039))

(assert (= (or b!39569 bm!3034) bm!3033))

(assert (= (and d!6619 res!23752) b!39566))

(assert (= (and d!6619 c!4697) b!39571))

(assert (= (and d!6619 (not c!4697)) b!39568))

(assert (= (and d!6619 res!23754) b!39563))

(assert (= (and b!39563 res!23757) b!39577))

(assert (= (and b!39563 (not res!23751)) b!39570))

(assert (= (and b!39570 res!23756) b!39561))

(assert (= (and b!39563 res!23755) b!39573))

(assert (= (and b!39573 c!4702) b!39575))

(assert (= (and b!39573 (not c!4702)) b!39572))

(assert (= (and b!39575 res!23750) b!39565))

(assert (= (or b!39575 b!39572) bm!3037))

(assert (= (and b!39573 res!23753) b!39579))

(assert (= (and b!39579 c!4698) b!39581))

(assert (= (and b!39579 (not c!4698)) b!39578))

(assert (= (and b!39581 res!23749) b!39576))

(assert (= (or b!39581 b!39578) bm!3035))

(declare-fun b_lambda!2055 () Bool)

(assert (=> (not b_lambda!2055) (not b!39561)))

(declare-fun t!3924 () Bool)

(declare-fun tb!843 () Bool)

(assert (=> (and start!5510 (= defaultEntry!470 (defaultEntry!1796 lt!14740)) t!3924) tb!843))

(declare-fun result!1439 () Bool)

(assert (=> tb!843 (= result!1439 tp_is_empty!1751)))

(assert (=> b!39561 t!3924))

(declare-fun b_and!2351 () Bool)

(assert (= b_and!2347 (and (=> t!3924 result!1439) b_and!2351)))

(declare-fun m!32223 () Bool)

(assert (=> b!39570 m!32223))

(assert (=> b!39570 m!32223))

(declare-fun m!32225 () Bool)

(assert (=> b!39570 m!32225))

(declare-fun m!32227 () Bool)

(assert (=> b!39571 m!32227))

(declare-fun m!32229 () Bool)

(assert (=> b!39571 m!32229))

(declare-fun m!32231 () Bool)

(assert (=> b!39571 m!32231))

(declare-fun m!32233 () Bool)

(assert (=> b!39571 m!32233))

(declare-fun m!32235 () Bool)

(assert (=> b!39571 m!32235))

(assert (=> b!39571 m!32229))

(declare-fun m!32237 () Bool)

(assert (=> b!39571 m!32237))

(declare-fun m!32239 () Bool)

(assert (=> b!39571 m!32239))

(declare-fun m!32241 () Bool)

(assert (=> b!39571 m!32241))

(assert (=> b!39571 m!32223))

(assert (=> b!39571 m!32241))

(declare-fun m!32243 () Bool)

(assert (=> b!39571 m!32243))

(assert (=> b!39571 m!32227))

(declare-fun m!32245 () Bool)

(assert (=> b!39571 m!32245))

(assert (=> b!39571 m!32239))

(declare-fun m!32247 () Bool)

(assert (=> b!39571 m!32247))

(declare-fun m!32249 () Bool)

(assert (=> b!39571 m!32249))

(declare-fun m!32251 () Bool)

(assert (=> b!39571 m!32251))

(declare-fun m!32253 () Bool)

(assert (=> b!39571 m!32253))

(declare-fun m!32255 () Bool)

(assert (=> b!39571 m!32255))

(declare-fun m!32257 () Bool)

(assert (=> b!39571 m!32257))

(declare-fun m!32259 () Bool)

(assert (=> bm!3033 m!32259))

(assert (=> bm!3039 m!32235))

(assert (=> b!39566 m!32223))

(assert (=> b!39566 m!32223))

(declare-fun m!32261 () Bool)

(assert (=> b!39566 m!32261))

(declare-fun m!32263 () Bool)

(assert (=> b!39565 m!32263))

(declare-fun m!32265 () Bool)

(assert (=> bm!3037 m!32265))

(declare-fun m!32267 () Bool)

(assert (=> b!39569 m!32267))

(declare-fun m!32269 () Bool)

(assert (=> bm!3035 m!32269))

(declare-fun m!32271 () Bool)

(assert (=> b!39576 m!32271))

(assert (=> b!39561 m!32223))

(declare-fun m!32275 () Bool)

(assert (=> b!39561 m!32275))

(declare-fun m!32277 () Bool)

(assert (=> b!39561 m!32277))

(assert (=> b!39561 m!32223))

(declare-fun m!32279 () Bool)

(assert (=> b!39561 m!32279))

(assert (=> b!39561 m!32279))

(assert (=> b!39561 m!32277))

(declare-fun m!32281 () Bool)

(assert (=> b!39561 m!32281))

(declare-fun m!32283 () Bool)

(assert (=> d!6619 m!32283))

(assert (=> b!39577 m!32223))

(assert (=> b!39577 m!32223))

(assert (=> b!39577 m!32261))

(assert (=> d!6557 d!6619))

(assert (=> d!6565 d!6573))

(declare-fun d!6665 () Bool)

(assert (=> d!6665 (= (arrayCountValidKeys!0 lt!14738 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(assert (=> d!6665 true))

(declare-fun _$88!34 () Unit!964)

(assert (=> d!6665 (= (choose!59 lt!14738 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) _$88!34)))

(declare-fun bs!1647 () Bool)

(assert (= bs!1647 d!6665))

(assert (=> bs!1647 m!31949))

(assert (=> d!6565 d!6665))

(assert (=> b!39305 d!6615))

(declare-fun d!6667 () Bool)

(assert (=> d!6667 (arrayContainsKey!0 lt!14738 lt!14806 #b00000000000000000000000000000000)))

(declare-fun lt!14973 () Unit!964)

(declare-fun choose!13 (array!2583 (_ BitVec 64) (_ BitVec 32)) Unit!964)

(assert (=> d!6667 (= lt!14973 (choose!13 lt!14738 lt!14806 #b00000000000000000000000000000000))))

(assert (=> d!6667 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!6667 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!14738 lt!14806 #b00000000000000000000000000000000) lt!14973)))

(declare-fun bs!1648 () Bool)

(assert (= bs!1648 d!6667))

(assert (=> bs!1648 m!32041))

(declare-fun m!32285 () Bool)

(assert (=> bs!1648 m!32285))

(assert (=> b!39337 d!6667))

(declare-fun d!6669 () Bool)

(declare-fun res!23768 () Bool)

(declare-fun e!25144 () Bool)

(assert (=> d!6669 (=> res!23768 e!25144)))

(assert (=> d!6669 (= res!23768 (= (select (arr!1235 lt!14738) #b00000000000000000000000000000000) lt!14806))))

(assert (=> d!6669 (= (arrayContainsKey!0 lt!14738 lt!14806 #b00000000000000000000000000000000) e!25144)))

(declare-fun b!39604 () Bool)

(declare-fun e!25145 () Bool)

(assert (=> b!39604 (= e!25144 e!25145)))

(declare-fun res!23769 () Bool)

(assert (=> b!39604 (=> (not res!23769) (not e!25145))))

(assert (=> b!39604 (= res!23769 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1357 lt!14738)))))

(declare-fun b!39605 () Bool)

(assert (=> b!39605 (= e!25145 (arrayContainsKey!0 lt!14738 lt!14806 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!6669 (not res!23768)) b!39604))

(assert (= (and b!39604 res!23769) b!39605))

(assert (=> d!6669 m!31999))

(declare-fun m!32287 () Bool)

(assert (=> b!39605 m!32287))

(assert (=> b!39337 d!6669))

(declare-fun b!39697 () Bool)

(declare-fun e!25204 () SeekEntryResult!182)

(declare-fun e!25203 () SeekEntryResult!182)

(assert (=> b!39697 (= e!25204 e!25203)))

(declare-fun lt!15063 () (_ BitVec 64))

(declare-fun lt!15062 () SeekEntryResult!182)

(assert (=> b!39697 (= lt!15063 (select (arr!1235 lt!14738) (index!2852 lt!15062)))))

(declare-fun c!4739 () Bool)

(assert (=> b!39697 (= c!4739 (= lt!15063 (select (arr!1235 lt!14738) #b00000000000000000000000000000000)))))

(declare-fun b!39698 () Bool)

(assert (=> b!39698 (= e!25204 Undefined!182)))

(declare-fun b!39699 () Bool)

(declare-fun c!4737 () Bool)

(assert (=> b!39699 (= c!4737 (= lt!15063 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!25205 () SeekEntryResult!182)

(assert (=> b!39699 (= e!25203 e!25205)))

(declare-fun b!39700 () Bool)

(assert (=> b!39700 (= e!25205 (MissingZero!182 (index!2852 lt!15062)))))

(declare-fun d!6671 () Bool)

(declare-fun lt!15061 () SeekEntryResult!182)

(assert (=> d!6671 (and (or (is-Undefined!182 lt!15061) (not (is-Found!182 lt!15061)) (and (bvsge (index!2851 lt!15061) #b00000000000000000000000000000000) (bvslt (index!2851 lt!15061) (size!1357 lt!14738)))) (or (is-Undefined!182 lt!15061) (is-Found!182 lt!15061) (not (is-MissingZero!182 lt!15061)) (and (bvsge (index!2850 lt!15061) #b00000000000000000000000000000000) (bvslt (index!2850 lt!15061) (size!1357 lt!14738)))) (or (is-Undefined!182 lt!15061) (is-Found!182 lt!15061) (is-MissingZero!182 lt!15061) (not (is-MissingVacant!182 lt!15061)) (and (bvsge (index!2853 lt!15061) #b00000000000000000000000000000000) (bvslt (index!2853 lt!15061) (size!1357 lt!14738)))) (or (is-Undefined!182 lt!15061) (ite (is-Found!182 lt!15061) (= (select (arr!1235 lt!14738) (index!2851 lt!15061)) (select (arr!1235 lt!14738) #b00000000000000000000000000000000)) (ite (is-MissingZero!182 lt!15061) (= (select (arr!1235 lt!14738) (index!2850 lt!15061)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!182 lt!15061) (= (select (arr!1235 lt!14738) (index!2853 lt!15061)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!6671 (= lt!15061 e!25204)))

(declare-fun c!4738 () Bool)

(assert (=> d!6671 (= c!4738 (and (is-Intermediate!182 lt!15062) (undefined!994 lt!15062)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!2583 (_ BitVec 32)) SeekEntryResult!182)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!6671 (= lt!15062 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!1235 lt!14738) #b00000000000000000000000000000000) mask!853) (select (arr!1235 lt!14738) #b00000000000000000000000000000000) lt!14738 mask!853))))

(assert (=> d!6671 (validMask!0 mask!853)))

(assert (=> d!6671 (= (seekEntryOrOpen!0 (select (arr!1235 lt!14738) #b00000000000000000000000000000000) lt!14738 mask!853) lt!15061)))

(declare-fun b!39701 () Bool)

(assert (=> b!39701 (= e!25203 (Found!182 (index!2852 lt!15062)))))

(declare-fun b!39702 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!2583 (_ BitVec 32)) SeekEntryResult!182)

(assert (=> b!39702 (= e!25205 (seekKeyOrZeroReturnVacant!0 (x!7668 lt!15062) (index!2852 lt!15062) (index!2852 lt!15062) (select (arr!1235 lt!14738) #b00000000000000000000000000000000) lt!14738 mask!853))))

(assert (= (and d!6671 c!4738) b!39698))

(assert (= (and d!6671 (not c!4738)) b!39697))

(assert (= (and b!39697 c!4739) b!39701))

(assert (= (and b!39697 (not c!4739)) b!39699))

(assert (= (and b!39699 c!4737) b!39700))

(assert (= (and b!39699 (not c!4737)) b!39702))

(declare-fun m!32317 () Bool)

(assert (=> b!39697 m!32317))

(assert (=> d!6671 m!31941))

(assert (=> d!6671 m!31999))

(declare-fun m!32319 () Bool)

(assert (=> d!6671 m!32319))

(declare-fun m!32321 () Bool)

(assert (=> d!6671 m!32321))

(declare-fun m!32323 () Bool)

(assert (=> d!6671 m!32323))

(declare-fun m!32325 () Bool)

(assert (=> d!6671 m!32325))

(assert (=> d!6671 m!32319))

(assert (=> d!6671 m!31999))

(declare-fun m!32327 () Bool)

(assert (=> d!6671 m!32327))

(assert (=> b!39702 m!31999))

(declare-fun m!32329 () Bool)

(assert (=> b!39702 m!32329))

(assert (=> b!39337 d!6671))

(declare-fun b!39703 () Bool)

(declare-fun e!25206 () Bool)

(assert (=> b!39703 (= e!25206 (contains!506 (ite c!4639 (Cons!1063 (select (arr!1235 lt!14738) #b00000000000000000000000000000000) Nil!1064) Nil!1064) (select (arr!1235 lt!14738) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!39704 () Bool)

(declare-fun e!25209 () Bool)

(declare-fun e!25208 () Bool)

(assert (=> b!39704 (= e!25209 e!25208)))

(declare-fun res!23807 () Bool)

(assert (=> b!39704 (=> (not res!23807) (not e!25208))))

(assert (=> b!39704 (= res!23807 (not e!25206))))

(declare-fun res!23806 () Bool)

(assert (=> b!39704 (=> (not res!23806) (not e!25206))))

(assert (=> b!39704 (= res!23806 (validKeyInArray!0 (select (arr!1235 lt!14738) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!39705 () Bool)

(declare-fun e!25207 () Bool)

(declare-fun call!3065 () Bool)

(assert (=> b!39705 (= e!25207 call!3065)))

(declare-fun c!4740 () Bool)

(declare-fun bm!3062 () Bool)

(assert (=> bm!3062 (= call!3065 (arrayNoDuplicates!0 lt!14738 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!4740 (Cons!1063 (select (arr!1235 lt!14738) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!4639 (Cons!1063 (select (arr!1235 lt!14738) #b00000000000000000000000000000000) Nil!1064) Nil!1064)) (ite c!4639 (Cons!1063 (select (arr!1235 lt!14738) #b00000000000000000000000000000000) Nil!1064) Nil!1064))))))

(declare-fun d!6677 () Bool)

(declare-fun res!23805 () Bool)

(assert (=> d!6677 (=> res!23805 e!25209)))

(assert (=> d!6677 (= res!23805 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1357 lt!14738)))))

(assert (=> d!6677 (= (arrayNoDuplicates!0 lt!14738 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!4639 (Cons!1063 (select (arr!1235 lt!14738) #b00000000000000000000000000000000) Nil!1064) Nil!1064)) e!25209)))

(declare-fun b!39706 () Bool)

(assert (=> b!39706 (= e!25208 e!25207)))

(assert (=> b!39706 (= c!4740 (validKeyInArray!0 (select (arr!1235 lt!14738) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!39707 () Bool)

(assert (=> b!39707 (= e!25207 call!3065)))

(assert (= (and d!6677 (not res!23805)) b!39704))

(assert (= (and b!39704 res!23806) b!39703))

(assert (= (and b!39704 res!23807) b!39706))

(assert (= (and b!39706 c!4740) b!39707))

(assert (= (and b!39706 (not c!4740)) b!39705))

(assert (= (or b!39707 b!39705) bm!3062))

(assert (=> b!39703 m!32067))

(assert (=> b!39703 m!32067))

(declare-fun m!32357 () Bool)

(assert (=> b!39703 m!32357))

(assert (=> b!39704 m!32067))

(assert (=> b!39704 m!32067))

(assert (=> b!39704 m!32077))

(assert (=> bm!3062 m!32067))

(declare-fun m!32367 () Bool)

(assert (=> bm!3062 m!32367))

(assert (=> b!39706 m!32067))

(assert (=> b!39706 m!32067))

(assert (=> b!39706 m!32077))

(assert (=> bm!2981 d!6677))

(declare-fun b!39708 () Bool)

(declare-fun e!25210 () (_ BitVec 32))

(declare-fun call!3066 () (_ BitVec 32))

(assert (=> b!39708 (= e!25210 call!3066)))

(declare-fun b!39709 () Bool)

(declare-fun e!25211 () (_ BitVec 32))

(assert (=> b!39709 (= e!25211 #b00000000000000000000000000000000)))

(declare-fun bm!3063 () Bool)

(assert (=> bm!3063 (= call!3066 (arrayCountValidKeys!0 lt!14738 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun d!6679 () Bool)

(declare-fun lt!15064 () (_ BitVec 32))

(assert (=> d!6679 (and (bvsge lt!15064 #b00000000000000000000000000000000) (bvsle lt!15064 (bvsub (size!1357 lt!14738) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> d!6679 (= lt!15064 e!25211)))

(declare-fun c!4742 () Bool)

(assert (=> d!6679 (= c!4742 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!6679 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 mask!853) (size!1357 lt!14738)))))

(assert (=> d!6679 (= (arrayCountValidKeys!0 lt!14738 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)) lt!15064)))

(declare-fun b!39710 () Bool)

(assert (=> b!39710 (= e!25210 (bvadd #b00000000000000000000000000000001 call!3066))))

(declare-fun b!39711 () Bool)

(assert (=> b!39711 (= e!25211 e!25210)))

(declare-fun c!4741 () Bool)

(assert (=> b!39711 (= c!4741 (validKeyInArray!0 (select (arr!1235 lt!14738) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!6679 c!4742) b!39709))

(assert (= (and d!6679 (not c!4742)) b!39711))

(assert (= (and b!39711 c!4741) b!39710))

(assert (= (and b!39711 (not c!4741)) b!39708))

(assert (= (or b!39710 b!39708) bm!3063))

(declare-fun m!32385 () Bool)

(assert (=> bm!3063 m!32385))

(assert (=> b!39711 m!32067))

(assert (=> b!39711 m!32067))

(assert (=> b!39711 m!32077))

(assert (=> bm!2972 d!6679))

(assert (=> b!39303 d!6615))

(assert (=> d!6569 d!6587))

(declare-fun d!6681 () Bool)

(assert (=> d!6681 (arrayNoDuplicates!0 lt!14738 #b00000000000000000000000000000000 Nil!1064)))

(assert (=> d!6681 true))

(declare-fun res!23810 () Unit!964)

(assert (=> d!6681 (= (choose!111 lt!14738 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1064) res!23810)))

(declare-fun bs!1649 () Bool)

(assert (= bs!1649 d!6681))

(assert (=> bs!1649 m!31947))

(assert (=> d!6569 d!6681))

(declare-fun d!6687 () Bool)

(declare-fun lt!15069 () Bool)

(declare-fun content!30 (List!1067) (Set (_ BitVec 64)))

(assert (=> d!6687 (= lt!15069 (member (select (arr!1235 lt!14738) #b00000000000000000000000000000000) (content!30 Nil!1064)))))

(declare-fun e!25221 () Bool)

(assert (=> d!6687 (= lt!15069 e!25221)))

(declare-fun res!23816 () Bool)

(assert (=> d!6687 (=> (not res!23816) (not e!25221))))

(assert (=> d!6687 (= res!23816 (is-Cons!1063 Nil!1064))))

(assert (=> d!6687 (= (contains!506 Nil!1064 (select (arr!1235 lt!14738) #b00000000000000000000000000000000)) lt!15069)))

(declare-fun b!39724 () Bool)

(declare-fun e!25220 () Bool)

(assert (=> b!39724 (= e!25221 e!25220)))

(declare-fun res!23815 () Bool)

(assert (=> b!39724 (=> res!23815 e!25220)))

(assert (=> b!39724 (= res!23815 (= (h!1634 Nil!1064) (select (arr!1235 lt!14738) #b00000000000000000000000000000000)))))

(declare-fun b!39725 () Bool)

(assert (=> b!39725 (= e!25220 (contains!506 (t!3920 Nil!1064) (select (arr!1235 lt!14738) #b00000000000000000000000000000000)))))

(assert (= (and d!6687 res!23816) b!39724))

(assert (= (and b!39724 (not res!23815)) b!39725))

(declare-fun m!32395 () Bool)

(assert (=> d!6687 m!32395))

(assert (=> d!6687 m!31999))

(declare-fun m!32397 () Bool)

(assert (=> d!6687 m!32397))

(assert (=> b!39725 m!31999))

(declare-fun m!32399 () Bool)

(assert (=> b!39725 m!32399))

(assert (=> b!39302 d!6687))

(declare-fun b!39726 () Bool)

(declare-fun e!25222 () Bool)

(assert (=> b!39726 (= e!25222 (contains!506 Nil!1064 (select (arr!1235 (_keys!3267 lt!14740)) #b00000000000000000000000000000000)))))

(declare-fun b!39727 () Bool)

(declare-fun e!25225 () Bool)

(declare-fun e!25224 () Bool)

(assert (=> b!39727 (= e!25225 e!25224)))

(declare-fun res!23819 () Bool)

(assert (=> b!39727 (=> (not res!23819) (not e!25224))))

(assert (=> b!39727 (= res!23819 (not e!25222))))

(declare-fun res!23818 () Bool)

(assert (=> b!39727 (=> (not res!23818) (not e!25222))))

(assert (=> b!39727 (= res!23818 (validKeyInArray!0 (select (arr!1235 (_keys!3267 lt!14740)) #b00000000000000000000000000000000)))))

(declare-fun b!39728 () Bool)

(declare-fun e!25223 () Bool)

(declare-fun call!3069 () Bool)

(assert (=> b!39728 (= e!25223 call!3069)))

(declare-fun bm!3066 () Bool)

(declare-fun c!4747 () Bool)

(assert (=> bm!3066 (= call!3069 (arrayNoDuplicates!0 (_keys!3267 lt!14740) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!4747 (Cons!1063 (select (arr!1235 (_keys!3267 lt!14740)) #b00000000000000000000000000000000) Nil!1064) Nil!1064)))))

(declare-fun d!6689 () Bool)

(declare-fun res!23817 () Bool)

(assert (=> d!6689 (=> res!23817 e!25225)))

(assert (=> d!6689 (= res!23817 (bvsge #b00000000000000000000000000000000 (size!1357 (_keys!3267 lt!14740))))))

(assert (=> d!6689 (= (arrayNoDuplicates!0 (_keys!3267 lt!14740) #b00000000000000000000000000000000 Nil!1064) e!25225)))

(declare-fun b!39729 () Bool)

(assert (=> b!39729 (= e!25224 e!25223)))

(assert (=> b!39729 (= c!4747 (validKeyInArray!0 (select (arr!1235 (_keys!3267 lt!14740)) #b00000000000000000000000000000000)))))

(declare-fun b!39730 () Bool)

(assert (=> b!39730 (= e!25223 call!3069)))

(assert (= (and d!6689 (not res!23817)) b!39727))

(assert (= (and b!39727 res!23818) b!39726))

(assert (= (and b!39727 res!23819) b!39729))

(assert (= (and b!39729 c!4747) b!39730))

(assert (= (and b!39729 (not c!4747)) b!39728))

(assert (= (or b!39730 b!39728) bm!3066))

(assert (=> b!39726 m!32223))

(assert (=> b!39726 m!32223))

(declare-fun m!32401 () Bool)

(assert (=> b!39726 m!32401))

(assert (=> b!39727 m!32223))

(assert (=> b!39727 m!32223))

(assert (=> b!39727 m!32261))

(assert (=> bm!3066 m!32223))

(declare-fun m!32403 () Bool)

(assert (=> bm!3066 m!32403))

(assert (=> b!39729 m!32223))

(assert (=> b!39729 m!32223))

(assert (=> b!39729 m!32261))

(assert (=> b!39357 d!6689))

(assert (=> d!6581 d!6595))

(declare-fun d!6691 () Bool)

(assert (=> d!6691 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!14738 mask!853)))

(assert (=> d!6691 true))

(declare-fun _$30!48 () Unit!964)

(assert (=> d!6691 (= (choose!34 lt!14738 mask!853 #b00000000000000000000000000000000) _$30!48)))

(declare-fun bs!1650 () Bool)

(assert (= bs!1650 d!6691))

(assert (=> bs!1650 m!31957))

(assert (=> d!6581 d!6691))

(assert (=> d!6581 d!6551))

(declare-fun b!39731 () Bool)

(declare-fun e!25228 () Bool)

(declare-fun call!3070 () Bool)

(assert (=> b!39731 (= e!25228 call!3070)))

(declare-fun b!39732 () Bool)

(declare-fun e!25227 () Bool)

(assert (=> b!39732 (= e!25228 e!25227)))

(declare-fun lt!15072 () (_ BitVec 64))

(assert (=> b!39732 (= lt!15072 (select (arr!1235 (_keys!3267 lt!14740)) #b00000000000000000000000000000000))))

(declare-fun lt!15071 () Unit!964)

(assert (=> b!39732 (= lt!15071 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3267 lt!14740) lt!15072 #b00000000000000000000000000000000))))

(assert (=> b!39732 (arrayContainsKey!0 (_keys!3267 lt!14740) lt!15072 #b00000000000000000000000000000000)))

(declare-fun lt!15070 () Unit!964)

(assert (=> b!39732 (= lt!15070 lt!15071)))

(declare-fun res!23821 () Bool)

(assert (=> b!39732 (= res!23821 (= (seekEntryOrOpen!0 (select (arr!1235 (_keys!3267 lt!14740)) #b00000000000000000000000000000000) (_keys!3267 lt!14740) (mask!5143 lt!14740)) (Found!182 #b00000000000000000000000000000000)))))

(assert (=> b!39732 (=> (not res!23821) (not e!25227))))

(declare-fun d!6693 () Bool)

(declare-fun res!23820 () Bool)

(declare-fun e!25226 () Bool)

(assert (=> d!6693 (=> res!23820 e!25226)))

(assert (=> d!6693 (= res!23820 (bvsge #b00000000000000000000000000000000 (size!1357 (_keys!3267 lt!14740))))))

(assert (=> d!6693 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3267 lt!14740) (mask!5143 lt!14740)) e!25226)))

(declare-fun b!39733 () Bool)

(assert (=> b!39733 (= e!25227 call!3070)))

(declare-fun bm!3067 () Bool)

(assert (=> bm!3067 (= call!3070 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!3267 lt!14740) (mask!5143 lt!14740)))))

(declare-fun b!39734 () Bool)

(assert (=> b!39734 (= e!25226 e!25228)))

(declare-fun c!4748 () Bool)

(assert (=> b!39734 (= c!4748 (validKeyInArray!0 (select (arr!1235 (_keys!3267 lt!14740)) #b00000000000000000000000000000000)))))

(assert (= (and d!6693 (not res!23820)) b!39734))

(assert (= (and b!39734 c!4748) b!39732))

(assert (= (and b!39734 (not c!4748)) b!39731))

(assert (= (and b!39732 res!23821) b!39733))

(assert (= (or b!39733 b!39731) bm!3067))

(assert (=> b!39732 m!32223))

(declare-fun m!32405 () Bool)

(assert (=> b!39732 m!32405))

(declare-fun m!32407 () Bool)

(assert (=> b!39732 m!32407))

(assert (=> b!39732 m!32223))

(declare-fun m!32409 () Bool)

(assert (=> b!39732 m!32409))

(declare-fun m!32411 () Bool)

(assert (=> bm!3067 m!32411))

(assert (=> b!39734 m!32223))

(assert (=> b!39734 m!32223))

(assert (=> b!39734 m!32261))

(assert (=> b!39356 d!6693))

(declare-fun b!39735 () Bool)

(declare-fun e!25229 () (_ BitVec 32))

(declare-fun call!3071 () (_ BitVec 32))

(assert (=> b!39735 (= e!25229 call!3071)))

(declare-fun b!39736 () Bool)

(declare-fun e!25230 () (_ BitVec 32))

(assert (=> b!39736 (= e!25230 #b00000000000000000000000000000000)))

(declare-fun bm!3068 () Bool)

(assert (=> bm!3068 (= call!3071 (arrayCountValidKeys!0 (_keys!3267 lt!14740) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1357 (_keys!3267 lt!14740))))))

(declare-fun d!6695 () Bool)

(declare-fun lt!15073 () (_ BitVec 32))

(assert (=> d!6695 (and (bvsge lt!15073 #b00000000000000000000000000000000) (bvsle lt!15073 (bvsub (size!1357 (_keys!3267 lt!14740)) #b00000000000000000000000000000000)))))

(assert (=> d!6695 (= lt!15073 e!25230)))

(declare-fun c!4750 () Bool)

(assert (=> d!6695 (= c!4750 (bvsge #b00000000000000000000000000000000 (size!1357 (_keys!3267 lt!14740))))))

(assert (=> d!6695 (and (bvsle #b00000000000000000000000000000000 (size!1357 (_keys!3267 lt!14740))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!1357 (_keys!3267 lt!14740)) (size!1357 (_keys!3267 lt!14740))))))

(assert (=> d!6695 (= (arrayCountValidKeys!0 (_keys!3267 lt!14740) #b00000000000000000000000000000000 (size!1357 (_keys!3267 lt!14740))) lt!15073)))

(declare-fun b!39737 () Bool)

(assert (=> b!39737 (= e!25229 (bvadd #b00000000000000000000000000000001 call!3071))))

(declare-fun b!39738 () Bool)

(assert (=> b!39738 (= e!25230 e!25229)))

(declare-fun c!4749 () Bool)

(assert (=> b!39738 (= c!4749 (validKeyInArray!0 (select (arr!1235 (_keys!3267 lt!14740)) #b00000000000000000000000000000000)))))

(assert (= (and d!6695 c!4750) b!39736))

(assert (= (and d!6695 (not c!4750)) b!39738))

(assert (= (and b!39738 c!4749) b!39737))

(assert (= (and b!39738 (not c!4749)) b!39735))

(assert (= (or b!39737 b!39735) bm!3068))

(declare-fun m!32413 () Bool)

(assert (=> bm!3068 m!32413))

(assert (=> b!39738 m!32223))

(assert (=> b!39738 m!32223))

(assert (=> b!39738 m!32261))

(assert (=> b!39355 d!6695))

(assert (=> b!39339 d!6615))

(declare-fun d!6697 () Bool)

(declare-fun res!23832 () Bool)

(declare-fun e!25233 () Bool)

(assert (=> d!6697 (=> (not res!23832) (not e!25233))))

(assert (=> d!6697 (= res!23832 (validMask!0 (mask!5143 lt!14740)))))

(assert (=> d!6697 (= (simpleValid!25 lt!14740) e!25233)))

(declare-fun b!39749 () Bool)

(declare-fun res!23831 () Bool)

(assert (=> b!39749 (=> (not res!23831) (not e!25233))))

(declare-fun size!1373 (LongMapFixedSize!236) (_ BitVec 32))

(assert (=> b!39749 (= res!23831 (= (size!1373 lt!14740) (bvadd (_size!167 lt!14740) (bvsdiv (bvadd (extraKeys!1687 lt!14740) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!39748 () Bool)

(declare-fun res!23833 () Bool)

(assert (=> b!39748 (=> (not res!23833) (not e!25233))))

(assert (=> b!39748 (= res!23833 (bvsge (size!1373 lt!14740) (_size!167 lt!14740)))))

(declare-fun b!39747 () Bool)

(declare-fun res!23830 () Bool)

(assert (=> b!39747 (=> (not res!23830) (not e!25233))))

(assert (=> b!39747 (= res!23830 (and (= (size!1358 (_values!1779 lt!14740)) (bvadd (mask!5143 lt!14740) #b00000000000000000000000000000001)) (= (size!1357 (_keys!3267 lt!14740)) (size!1358 (_values!1779 lt!14740))) (bvsge (_size!167 lt!14740) #b00000000000000000000000000000000) (bvsle (_size!167 lt!14740) (bvadd (mask!5143 lt!14740) #b00000000000000000000000000000001))))))

(declare-fun b!39750 () Bool)

(assert (=> b!39750 (= e!25233 (and (bvsge (extraKeys!1687 lt!14740) #b00000000000000000000000000000000) (bvsle (extraKeys!1687 lt!14740) #b00000000000000000000000000000011) (bvsge (_vacant!167 lt!14740) #b00000000000000000000000000000000)))))

(assert (= (and d!6697 res!23832) b!39747))

(assert (= (and b!39747 res!23830) b!39748))

(assert (= (and b!39748 res!23833) b!39749))

(assert (= (and b!39749 res!23831) b!39750))

(assert (=> d!6697 m!32283))

(declare-fun m!32415 () Bool)

(assert (=> b!39749 m!32415))

(assert (=> b!39748 m!32415))

(assert (=> d!6601 d!6697))

(push 1)

(assert (not bm!3037))

(assert b_and!2351)

(assert (not bm!3067))

(assert (not bm!3068))

(assert (not b!39565))

(assert (not bm!2988))

(assert (not b!39725))

(assert (not b!39748))

(assert (not b!39732))

(assert (not d!6691))

(assert (not d!6697))

(assert (not b!39561))

(assert (not d!6665))

(assert (not b!39570))

(assert (not b!39702))

(assert (not b!39703))

(assert (not b!39704))

(assert (not b!39577))

(assert (not b!39734))

(assert (not b!39569))

(assert (not b!39738))

(assert (not b!39729))

(assert (not b!39749))

(assert tp_is_empty!1751)

(assert (not b!39371))

(assert (not bm!3035))

(assert (not bm!3033))

(assert (not b!39711))

(assert (not b!39571))

(assert (not bm!3062))

(assert (not d!6671))

(assert (not b_next!1361))

(assert (not b!39373))

(assert (not b_lambda!2055))

(assert (not b_lambda!2051))

(assert (not b!39605))

(assert (not b!39727))

(assert (not b!39576))

(assert (not bm!3063))

(assert (not bm!3039))

(assert (not d!6681))

(assert (not b!39706))

(assert (not d!6687))

(assert (not d!6619))

(assert (not b!39566))

(assert (not d!6667))

(assert (not bm!3066))

(assert (not b!39726))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2351)

(assert (not b_next!1361))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6821 () Bool)

(assert (=> d!6821 (= (validKeyInArray!0 (select (arr!1235 (_keys!3267 lt!14740)) #b00000000000000000000000000000000)) (and (not (= (select (arr!1235 (_keys!3267 lt!14740)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1235 (_keys!3267 lt!14740)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!39727 d!6821))

(declare-fun d!6823 () Bool)

(assert (=> d!6823 (= (validKeyInArray!0 (select (arr!1235 lt!14738) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))) (and (not (= (select (arr!1235 lt!14738) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1235 lt!14738) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!39373 d!6823))

(assert (=> b!39711 d!6823))

(declare-fun b!39961 () Bool)

(declare-fun e!25365 () Bool)

(declare-fun call!3084 () Bool)

(assert (=> b!39961 (= e!25365 call!3084)))

(declare-fun b!39962 () Bool)

(declare-fun e!25364 () Bool)

(assert (=> b!39962 (= e!25365 e!25364)))

(declare-fun lt!15211 () (_ BitVec 64))

(assert (=> b!39962 (= lt!15211 (select (arr!1235 lt!14738) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(declare-fun lt!15210 () Unit!964)

(assert (=> b!39962 (= lt!15210 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!14738 lt!15211 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (=> b!39962 (arrayContainsKey!0 lt!14738 lt!15211 #b00000000000000000000000000000000)))

(declare-fun lt!15209 () Unit!964)

(assert (=> b!39962 (= lt!15209 lt!15210)))

(declare-fun res!23913 () Bool)

(assert (=> b!39962 (= res!23913 (= (seekEntryOrOpen!0 (select (arr!1235 lt!14738) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)) lt!14738 mask!853) (Found!182 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(assert (=> b!39962 (=> (not res!23913) (not e!25364))))

(declare-fun d!6825 () Bool)

(declare-fun res!23912 () Bool)

(declare-fun e!25363 () Bool)

(assert (=> d!6825 (=> res!23912 e!25363)))

(assert (=> d!6825 (= res!23912 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!1357 lt!14738)))))

(assert (=> d!6825 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) lt!14738 mask!853) e!25363)))

(declare-fun b!39963 () Bool)

(assert (=> b!39963 (= e!25364 call!3084)))

(declare-fun bm!3081 () Bool)

(assert (=> bm!3081 (= call!3084 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001 #b00000000000000000000000000000001) lt!14738 mask!853))))

(declare-fun b!39964 () Bool)

(assert (=> b!39964 (= e!25363 e!25365)))

(declare-fun c!4817 () Bool)

(assert (=> b!39964 (= c!4817 (validKeyInArray!0 (select (arr!1235 lt!14738) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(assert (= (and d!6825 (not res!23912)) b!39964))

(assert (= (and b!39964 c!4817) b!39962))

(assert (= (and b!39964 (not c!4817)) b!39961))

(assert (= (and b!39962 res!23913) b!39963))

(assert (= (or b!39963 b!39961) bm!3081))

(declare-fun m!32715 () Bool)

(assert (=> b!39962 m!32715))

(declare-fun m!32717 () Bool)

(assert (=> b!39962 m!32717))

(declare-fun m!32719 () Bool)

(assert (=> b!39962 m!32719))

(assert (=> b!39962 m!32715))

(declare-fun m!32721 () Bool)

(assert (=> b!39962 m!32721))

(declare-fun m!32723 () Bool)

(assert (=> bm!3081 m!32723))

(assert (=> b!39964 m!32715))

(assert (=> b!39964 m!32715))

(declare-fun m!32725 () Bool)

(assert (=> b!39964 m!32725))

(assert (=> bm!2988 d!6825))

(assert (=> b!39566 d!6821))

(declare-fun d!6827 () Bool)

(declare-fun lt!15214 () Bool)

(assert (=> d!6827 (= lt!15214 (member (select (arr!1235 (_keys!3267 lt!14740)) #b00000000000000000000000000000000) (content!30 Nil!1064)))))

(declare-fun e!25369 () Bool)

(assert (=> d!6827 (= lt!15214 e!25369)))

(declare-fun res!23917 () Bool)

(assert (=> d!6827 (=> (not res!23917) (not e!25369))))

(assert (=> d!6827 (= res!23917 (is-Cons!1063 Nil!1064))))

(assert (=> d!6827 (= (contains!506 Nil!1064 (select (arr!1235 (_keys!3267 lt!14740)) #b00000000000000000000000000000000)) lt!15214)))

(declare-fun b!39968 () Bool)

(declare-fun e!25368 () Bool)

(assert (=> b!39968 (= e!25369 e!25368)))

(declare-fun res!23916 () Bool)

(assert (=> b!39968 (=> res!23916 e!25368)))

(assert (=> b!39968 (= res!23916 (= (h!1634 Nil!1064) (select (arr!1235 (_keys!3267 lt!14740)) #b00000000000000000000000000000000)))))

(declare-fun b!39969 () Bool)

(assert (=> b!39969 (= e!25368 (contains!506 (t!3920 Nil!1064) (select (arr!1235 (_keys!3267 lt!14740)) #b00000000000000000000000000000000)))))

(assert (= (and d!6827 res!23917) b!39968))

(assert (= (and b!39968 (not res!23916)) b!39969))

(assert (=> d!6827 m!32395))

(assert (=> d!6827 m!32223))

(declare-fun m!32727 () Bool)

(assert (=> d!6827 m!32727))

(assert (=> b!39969 m!32223))

(declare-fun m!32729 () Bool)

(assert (=> b!39969 m!32729))

(assert (=> b!39726 d!6827))

(declare-fun d!6829 () Bool)

(assert (=> d!6829 (= (validMask!0 (mask!5143 lt!14740)) (and (or (= (mask!5143 lt!14740) #b00000000000000000000000000000111) (= (mask!5143 lt!14740) #b00000000000000000000000000001111) (= (mask!5143 lt!14740) #b00000000000000000000000000011111) (= (mask!5143 lt!14740) #b00000000000000000000000000111111) (= (mask!5143 lt!14740) #b00000000000000000000000001111111) (= (mask!5143 lt!14740) #b00000000000000000000000011111111) (= (mask!5143 lt!14740) #b00000000000000000000000111111111) (= (mask!5143 lt!14740) #b00000000000000000000001111111111) (= (mask!5143 lt!14740) #b00000000000000000000011111111111) (= (mask!5143 lt!14740) #b00000000000000000000111111111111) (= (mask!5143 lt!14740) #b00000000000000000001111111111111) (= (mask!5143 lt!14740) #b00000000000000000011111111111111) (= (mask!5143 lt!14740) #b00000000000000000111111111111111) (= (mask!5143 lt!14740) #b00000000000000001111111111111111) (= (mask!5143 lt!14740) #b00000000000000011111111111111111) (= (mask!5143 lt!14740) #b00000000000000111111111111111111) (= (mask!5143 lt!14740) #b00000000000001111111111111111111) (= (mask!5143 lt!14740) #b00000000000011111111111111111111) (= (mask!5143 lt!14740) #b00000000000111111111111111111111) (= (mask!5143 lt!14740) #b00000000001111111111111111111111) (= (mask!5143 lt!14740) #b00000000011111111111111111111111) (= (mask!5143 lt!14740) #b00000000111111111111111111111111) (= (mask!5143 lt!14740) #b00000001111111111111111111111111) (= (mask!5143 lt!14740) #b00000011111111111111111111111111) (= (mask!5143 lt!14740) #b00000111111111111111111111111111) (= (mask!5143 lt!14740) #b00001111111111111111111111111111) (= (mask!5143 lt!14740) #b00011111111111111111111111111111) (= (mask!5143 lt!14740) #b00111111111111111111111111111111)) (bvsle (mask!5143 lt!14740) #b00111111111111111111111111111111)))))

(assert (=> d!6697 d!6829))

(declare-fun d!6831 () Bool)

(declare-datatypes ((Option!105 0))(
  ( (Some!104 (v!1991 V!2093)) (None!103) )
))
(declare-fun get!698 (Option!105) V!2093)

(declare-fun getValueByKey!99 (List!1066 (_ BitVec 64)) Option!105)

(assert (=> d!6831 (= (apply!53 lt!14961 #b0000000000000000000000000000000000000000000000000000000000000000) (get!698 (getValueByKey!99 (toList!549 lt!14961) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!1668 () Bool)

(assert (= bs!1668 d!6831))

(declare-fun m!32769 () Bool)

(assert (=> bs!1668 m!32769))

(assert (=> bs!1668 m!32769))

(declare-fun m!32773 () Bool)

(assert (=> bs!1668 m!32773))

(assert (=> b!39565 d!6831))

(declare-fun d!6845 () Bool)

(assert (=> d!6845 (arrayContainsKey!0 lt!14738 lt!14809 #b00000000000000000000000000000000)))

(declare-fun lt!15228 () Unit!964)

(assert (=> d!6845 (= lt!15228 (choose!13 lt!14738 lt!14809 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> d!6845 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(assert (=> d!6845 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!14738 lt!14809 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!15228)))

(declare-fun bs!1670 () Bool)

(assert (= bs!1670 d!6845))

(assert (=> bs!1670 m!32071))

(declare-fun m!32779 () Bool)

(assert (=> bs!1670 m!32779))

(assert (=> b!39371 d!6845))

(declare-fun d!6849 () Bool)

(declare-fun res!23924 () Bool)

(declare-fun e!25380 () Bool)

(assert (=> d!6849 (=> res!23924 e!25380)))

(assert (=> d!6849 (= res!23924 (= (select (arr!1235 lt!14738) #b00000000000000000000000000000000) lt!14809))))

(assert (=> d!6849 (= (arrayContainsKey!0 lt!14738 lt!14809 #b00000000000000000000000000000000) e!25380)))

(declare-fun b!39988 () Bool)

(declare-fun e!25381 () Bool)

(assert (=> b!39988 (= e!25380 e!25381)))

(declare-fun res!23925 () Bool)

(assert (=> b!39988 (=> (not res!23925) (not e!25381))))

(assert (=> b!39988 (= res!23925 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1357 lt!14738)))))

(declare-fun b!39989 () Bool)

(assert (=> b!39989 (= e!25381 (arrayContainsKey!0 lt!14738 lt!14809 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!6849 (not res!23924)) b!39988))

(assert (= (and b!39988 res!23925) b!39989))

(assert (=> d!6849 m!31999))

(declare-fun m!32785 () Bool)

(assert (=> b!39989 m!32785))

(assert (=> b!39371 d!6849))

(declare-fun b!39997 () Bool)

(declare-fun e!25387 () SeekEntryResult!182)

(declare-fun e!25386 () SeekEntryResult!182)

(assert (=> b!39997 (= e!25387 e!25386)))

(declare-fun lt!15235 () (_ BitVec 64))

(declare-fun lt!15234 () SeekEntryResult!182)

(assert (=> b!39997 (= lt!15235 (select (arr!1235 lt!14738) (index!2852 lt!15234)))))

(declare-fun c!4829 () Bool)

(assert (=> b!39997 (= c!4829 (= lt!15235 (select (arr!1235 lt!14738) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!39998 () Bool)

(assert (=> b!39998 (= e!25387 Undefined!182)))

(declare-fun b!39999 () Bool)

(declare-fun c!4827 () Bool)

(assert (=> b!39999 (= c!4827 (= lt!15235 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!25388 () SeekEntryResult!182)

(assert (=> b!39999 (= e!25386 e!25388)))

(declare-fun b!40000 () Bool)

(assert (=> b!40000 (= e!25388 (MissingZero!182 (index!2852 lt!15234)))))

(declare-fun d!6853 () Bool)

(declare-fun lt!15233 () SeekEntryResult!182)

(assert (=> d!6853 (and (or (is-Undefined!182 lt!15233) (not (is-Found!182 lt!15233)) (and (bvsge (index!2851 lt!15233) #b00000000000000000000000000000000) (bvslt (index!2851 lt!15233) (size!1357 lt!14738)))) (or (is-Undefined!182 lt!15233) (is-Found!182 lt!15233) (not (is-MissingZero!182 lt!15233)) (and (bvsge (index!2850 lt!15233) #b00000000000000000000000000000000) (bvslt (index!2850 lt!15233) (size!1357 lt!14738)))) (or (is-Undefined!182 lt!15233) (is-Found!182 lt!15233) (is-MissingZero!182 lt!15233) (not (is-MissingVacant!182 lt!15233)) (and (bvsge (index!2853 lt!15233) #b00000000000000000000000000000000) (bvslt (index!2853 lt!15233) (size!1357 lt!14738)))) (or (is-Undefined!182 lt!15233) (ite (is-Found!182 lt!15233) (= (select (arr!1235 lt!14738) (index!2851 lt!15233)) (select (arr!1235 lt!14738) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))) (ite (is-MissingZero!182 lt!15233) (= (select (arr!1235 lt!14738) (index!2850 lt!15233)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!182 lt!15233) (= (select (arr!1235 lt!14738) (index!2853 lt!15233)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!6853 (= lt!15233 e!25387)))

(declare-fun c!4828 () Bool)

(assert (=> d!6853 (= c!4828 (and (is-Intermediate!182 lt!15234) (undefined!994 lt!15234)))))

(assert (=> d!6853 (= lt!15234 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!1235 lt!14738) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) mask!853) (select (arr!1235 lt!14738) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!14738 mask!853))))

(assert (=> d!6853 (validMask!0 mask!853)))

(assert (=> d!6853 (= (seekEntryOrOpen!0 (select (arr!1235 lt!14738) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!14738 mask!853) lt!15233)))

(declare-fun b!40001 () Bool)

(assert (=> b!40001 (= e!25386 (Found!182 (index!2852 lt!15234)))))

(declare-fun b!40002 () Bool)

(assert (=> b!40002 (= e!25388 (seekKeyOrZeroReturnVacant!0 (x!7668 lt!15234) (index!2852 lt!15234) (index!2852 lt!15234) (select (arr!1235 lt!14738) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!14738 mask!853))))

(assert (= (and d!6853 c!4828) b!39998))

(assert (= (and d!6853 (not c!4828)) b!39997))

(assert (= (and b!39997 c!4829) b!40001))

(assert (= (and b!39997 (not c!4829)) b!39999))

(assert (= (and b!39999 c!4827) b!40000))

(assert (= (and b!39999 (not c!4827)) b!40002))

(declare-fun m!32799 () Bool)

(assert (=> b!39997 m!32799))

(assert (=> d!6853 m!31941))

(assert (=> d!6853 m!32067))

(declare-fun m!32805 () Bool)

(assert (=> d!6853 m!32805))

(declare-fun m!32807 () Bool)

(assert (=> d!6853 m!32807))

(declare-fun m!32809 () Bool)

(assert (=> d!6853 m!32809))

(declare-fun m!32811 () Bool)

(assert (=> d!6853 m!32811))

(assert (=> d!6853 m!32805))

(assert (=> d!6853 m!32067))

(declare-fun m!32813 () Bool)

(assert (=> d!6853 m!32813))

(assert (=> b!40002 m!32067))

(declare-fun m!32815 () Bool)

(assert (=> b!40002 m!32815))

(assert (=> b!39371 d!6853))

(declare-fun d!6861 () Bool)

(declare-fun e!25400 () Bool)

(assert (=> d!6861 e!25400))

(declare-fun res!23937 () Bool)

(assert (=> d!6861 (=> res!23937 e!25400)))

(declare-fun lt!15260 () Bool)

(assert (=> d!6861 (= res!23937 (not lt!15260))))

(declare-fun lt!15262 () Bool)

(assert (=> d!6861 (= lt!15260 lt!15262)))

(declare-fun lt!15261 () Unit!964)

(declare-fun e!25401 () Unit!964)

(assert (=> d!6861 (= lt!15261 e!25401)))

(declare-fun c!4833 () Bool)

(assert (=> d!6861 (= c!4833 lt!15262)))

(declare-fun containsKey!67 (List!1066 (_ BitVec 64)) Bool)

(assert (=> d!6861 (= lt!15262 (containsKey!67 (toList!549 lt!14961) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!6861 (= (contains!508 lt!14961 #b1000000000000000000000000000000000000000000000000000000000000000) lt!15260)))

(declare-fun b!40020 () Bool)

(declare-fun lt!15259 () Unit!964)

(assert (=> b!40020 (= e!25401 lt!15259)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!55 (List!1066 (_ BitVec 64)) Unit!964)

(assert (=> b!40020 (= lt!15259 (lemmaContainsKeyImpliesGetValueByKeyDefined!55 (toList!549 lt!14961) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun isDefined!56 (Option!105) Bool)

(assert (=> b!40020 (isDefined!56 (getValueByKey!99 (toList!549 lt!14961) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!40021 () Bool)

(declare-fun Unit!972 () Unit!964)

(assert (=> b!40021 (= e!25401 Unit!972)))

(declare-fun b!40022 () Bool)

(assert (=> b!40022 (= e!25400 (isDefined!56 (getValueByKey!99 (toList!549 lt!14961) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!6861 c!4833) b!40020))

(assert (= (and d!6861 (not c!4833)) b!40021))

(assert (= (and d!6861 (not res!23937)) b!40022))

(declare-fun m!32869 () Bool)

(assert (=> d!6861 m!32869))

(declare-fun m!32871 () Bool)

(assert (=> b!40020 m!32871))

(declare-fun m!32873 () Bool)

(assert (=> b!40020 m!32873))

(assert (=> b!40020 m!32873))

(declare-fun m!32875 () Bool)

(assert (=> b!40020 m!32875))

(assert (=> b!40022 m!32873))

(assert (=> b!40022 m!32873))

(assert (=> b!40022 m!32875))

(assert (=> bm!3035 d!6861))

(declare-fun b!40025 () Bool)

(declare-fun e!25403 () (_ BitVec 32))

(declare-fun call!3085 () (_ BitVec 32))

(assert (=> b!40025 (= e!25403 call!3085)))

(declare-fun b!40026 () Bool)

(declare-fun e!25404 () (_ BitVec 32))

(assert (=> b!40026 (= e!25404 #b00000000000000000000000000000000)))

(declare-fun bm!3082 () Bool)

(assert (=> bm!3082 (= call!3085 (arrayCountValidKeys!0 lt!14738 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun d!6879 () Bool)

(declare-fun lt!15267 () (_ BitVec 32))

(assert (=> d!6879 (and (bvsge lt!15267 #b00000000000000000000000000000000) (bvsle lt!15267 (bvsub (size!1357 lt!14738) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(assert (=> d!6879 (= lt!15267 e!25404)))

(declare-fun c!4835 () Bool)

(assert (=> d!6879 (= c!4835 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!6879 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 mask!853) (size!1357 lt!14738)))))

(assert (=> d!6879 (= (arrayCountValidKeys!0 lt!14738 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)) lt!15267)))

(declare-fun b!40027 () Bool)

(assert (=> b!40027 (= e!25403 (bvadd #b00000000000000000000000000000001 call!3085))))

(declare-fun b!40028 () Bool)

(assert (=> b!40028 (= e!25404 e!25403)))

(declare-fun c!4834 () Bool)

(assert (=> b!40028 (= c!4834 (validKeyInArray!0 (select (arr!1235 lt!14738) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(assert (= (and d!6879 c!4835) b!40026))

(assert (= (and d!6879 (not c!4835)) b!40028))

(assert (= (and b!40028 c!4834) b!40027))

(assert (= (and b!40028 (not c!4834)) b!40025))

(assert (= (or b!40027 b!40025) bm!3082))

(declare-fun m!32891 () Bool)

(assert (=> bm!3082 m!32891))

(assert (=> b!40028 m!32715))

(assert (=> b!40028 m!32715))

(assert (=> b!40028 m!32725))

(assert (=> bm!3063 d!6879))

(declare-fun b!40119 () Bool)

(declare-fun e!25461 () Bool)

(declare-fun lt!15326 () ListLongMap!1067)

(assert (=> b!40119 (= e!25461 (= lt!15326 (getCurrentListMapNoExtraKeys!31 (_keys!3267 lt!14740) (_values!1779 lt!14740) (mask!5143 lt!14740) (extraKeys!1687 lt!14740) (zeroValue!1714 lt!14740) (minValue!1714 lt!14740) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!1796 lt!14740))))))

(declare-fun b!40121 () Bool)

(declare-fun e!25462 () ListLongMap!1067)

(declare-fun call!3091 () ListLongMap!1067)

(assert (=> b!40121 (= e!25462 call!3091)))

(declare-fun b!40122 () Bool)

(declare-fun e!25460 () Bool)

(assert (=> b!40122 (= e!25460 (validKeyInArray!0 (select (arr!1235 (_keys!3267 lt!14740)) #b00000000000000000000000000000000)))))

(assert (=> b!40122 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!40123 () Bool)

(declare-fun lt!15324 () Unit!964)

(declare-fun lt!15323 () Unit!964)

(assert (=> b!40123 (= lt!15324 lt!15323)))

(declare-fun lt!15325 () (_ BitVec 64))

(declare-fun lt!15327 () (_ BitVec 64))

(declare-fun lt!15328 () ListLongMap!1067)

(declare-fun lt!15322 () V!2093)

(assert (=> b!40123 (not (contains!508 (+!62 lt!15328 (tuple2!1487 lt!15327 lt!15322)) lt!15325))))

(declare-fun addStillNotContains!5 (ListLongMap!1067 (_ BitVec 64) V!2093 (_ BitVec 64)) Unit!964)

(assert (=> b!40123 (= lt!15323 (addStillNotContains!5 lt!15328 lt!15327 lt!15322 lt!15325))))

(assert (=> b!40123 (= lt!15325 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!40123 (= lt!15322 (get!690 (select (arr!1236 (_values!1779 lt!14740)) #b00000000000000000000000000000000) (dynLambda!189 (defaultEntry!1796 lt!14740) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!40123 (= lt!15327 (select (arr!1235 (_keys!3267 lt!14740)) #b00000000000000000000000000000000))))

(assert (=> b!40123 (= lt!15328 call!3091)))

(assert (=> b!40123 (= e!25462 (+!62 call!3091 (tuple2!1487 (select (arr!1235 (_keys!3267 lt!14740)) #b00000000000000000000000000000000) (get!690 (select (arr!1236 (_values!1779 lt!14740)) #b00000000000000000000000000000000) (dynLambda!189 (defaultEntry!1796 lt!14740) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!40124 () Bool)

(declare-fun e!25463 () Bool)

(declare-fun e!25459 () Bool)

(assert (=> b!40124 (= e!25463 e!25459)))

(declare-fun c!4866 () Bool)

(assert (=> b!40124 (= c!4866 e!25460)))

(declare-fun res!23974 () Bool)

(assert (=> b!40124 (=> (not res!23974) (not e!25460))))

(assert (=> b!40124 (= res!23974 (bvslt #b00000000000000000000000000000000 (size!1357 (_keys!3267 lt!14740))))))

(declare-fun b!40125 () Bool)

(declare-fun e!25464 () ListLongMap!1067)

(assert (=> b!40125 (= e!25464 (ListLongMap!1068 Nil!1063))))

(declare-fun b!40126 () Bool)

(declare-fun isEmpty!230 (ListLongMap!1067) Bool)

(assert (=> b!40126 (= e!25461 (isEmpty!230 lt!15326))))

(declare-fun b!40127 () Bool)

(assert (=> b!40127 (= e!25464 e!25462)))

(declare-fun c!4868 () Bool)

(assert (=> b!40127 (= c!4868 (validKeyInArray!0 (select (arr!1235 (_keys!3267 lt!14740)) #b00000000000000000000000000000000)))))

(declare-fun b!40128 () Bool)

(assert (=> b!40128 (= e!25459 e!25461)))

(declare-fun c!4865 () Bool)

(assert (=> b!40128 (= c!4865 (bvslt #b00000000000000000000000000000000 (size!1357 (_keys!3267 lt!14740))))))

(declare-fun bm!3088 () Bool)

(assert (=> bm!3088 (= call!3091 (getCurrentListMapNoExtraKeys!31 (_keys!3267 lt!14740) (_values!1779 lt!14740) (mask!5143 lt!14740) (extraKeys!1687 lt!14740) (zeroValue!1714 lt!14740) (minValue!1714 lt!14740) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!1796 lt!14740)))))

(declare-fun d!6883 () Bool)

(assert (=> d!6883 e!25463))

(declare-fun res!23975 () Bool)

(assert (=> d!6883 (=> (not res!23975) (not e!25463))))

(assert (=> d!6883 (= res!23975 (not (contains!508 lt!15326 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!6883 (= lt!15326 e!25464)))

(declare-fun c!4867 () Bool)

(assert (=> d!6883 (= c!4867 (bvsge #b00000000000000000000000000000000 (size!1357 (_keys!3267 lt!14740))))))

(assert (=> d!6883 (validMask!0 (mask!5143 lt!14740))))

(assert (=> d!6883 (= (getCurrentListMapNoExtraKeys!31 (_keys!3267 lt!14740) (_values!1779 lt!14740) (mask!5143 lt!14740) (extraKeys!1687 lt!14740) (zeroValue!1714 lt!14740) (minValue!1714 lt!14740) #b00000000000000000000000000000000 (defaultEntry!1796 lt!14740)) lt!15326)))

(declare-fun b!40120 () Bool)

(declare-fun e!25458 () Bool)

(assert (=> b!40120 (= e!25459 e!25458)))

(assert (=> b!40120 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1357 (_keys!3267 lt!14740))))))

(declare-fun res!23976 () Bool)

(assert (=> b!40120 (= res!23976 (contains!508 lt!15326 (select (arr!1235 (_keys!3267 lt!14740)) #b00000000000000000000000000000000)))))

(assert (=> b!40120 (=> (not res!23976) (not e!25458))))

(declare-fun b!40129 () Bool)

(declare-fun res!23973 () Bool)

(assert (=> b!40129 (=> (not res!23973) (not e!25463))))

(assert (=> b!40129 (= res!23973 (not (contains!508 lt!15326 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!40130 () Bool)

(assert (=> b!40130 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1357 (_keys!3267 lt!14740))))))

(assert (=> b!40130 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1358 (_values!1779 lt!14740))))))

(assert (=> b!40130 (= e!25458 (= (apply!53 lt!15326 (select (arr!1235 (_keys!3267 lt!14740)) #b00000000000000000000000000000000)) (get!690 (select (arr!1236 (_values!1779 lt!14740)) #b00000000000000000000000000000000) (dynLambda!189 (defaultEntry!1796 lt!14740) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and d!6883 c!4867) b!40125))

(assert (= (and d!6883 (not c!4867)) b!40127))

(assert (= (and b!40127 c!4868) b!40123))

(assert (= (and b!40127 (not c!4868)) b!40121))

(assert (= (or b!40123 b!40121) bm!3088))

(assert (= (and d!6883 res!23975) b!40129))

(assert (= (and b!40129 res!23973) b!40124))

(assert (= (and b!40124 res!23974) b!40122))

(assert (= (and b!40124 c!4866) b!40120))

(assert (= (and b!40124 (not c!4866)) b!40128))

(assert (= (and b!40120 res!23976) b!40130))

(assert (= (and b!40128 c!4865) b!40119))

(assert (= (and b!40128 (not c!4865)) b!40126))

(declare-fun b_lambda!2065 () Bool)

(assert (=> (not b_lambda!2065) (not b!40123)))

(assert (=> b!40123 t!3924))

(declare-fun b_and!2359 () Bool)

(assert (= b_and!2351 (and (=> t!3924 result!1439) b_and!2359)))

(declare-fun b_lambda!2069 () Bool)

(assert (=> (not b_lambda!2069) (not b!40130)))

(assert (=> b!40130 t!3924))

(declare-fun b_and!2363 () Bool)

(assert (= b_and!2359 (and (=> t!3924 result!1439) b_and!2363)))

(assert (=> b!40120 m!32223))

(assert (=> b!40120 m!32223))

(declare-fun m!32931 () Bool)

(assert (=> b!40120 m!32931))

(assert (=> b!40127 m!32223))

(assert (=> b!40127 m!32223))

(assert (=> b!40127 m!32261))

(declare-fun m!32937 () Bool)

(assert (=> d!6883 m!32937))

(assert (=> d!6883 m!32283))

(assert (=> b!40122 m!32223))

(assert (=> b!40122 m!32223))

(assert (=> b!40122 m!32261))

(assert (=> b!40130 m!32223))

(assert (=> b!40130 m!32279))

(assert (=> b!40130 m!32277))

(assert (=> b!40130 m!32281))

(assert (=> b!40130 m!32279))

(assert (=> b!40130 m!32223))

(declare-fun m!32943 () Bool)

(assert (=> b!40130 m!32943))

(assert (=> b!40130 m!32277))

(declare-fun m!32945 () Bool)

(assert (=> bm!3088 m!32945))

(declare-fun m!32949 () Bool)

(assert (=> b!40129 m!32949))

(declare-fun m!32953 () Bool)

(assert (=> b!40126 m!32953))

(assert (=> b!40119 m!32945))

(assert (=> b!40123 m!32223))

(declare-fun m!32957 () Bool)

(assert (=> b!40123 m!32957))

(assert (=> b!40123 m!32279))

(assert (=> b!40123 m!32277))

(assert (=> b!40123 m!32281))

(assert (=> b!40123 m!32957))

(declare-fun m!32963 () Bool)

(assert (=> b!40123 m!32963))

(assert (=> b!40123 m!32279))

(declare-fun m!32965 () Bool)

(assert (=> b!40123 m!32965))

(assert (=> b!40123 m!32277))

(declare-fun m!32967 () Bool)

(assert (=> b!40123 m!32967))

(assert (=> bm!3039 d!6883))

(declare-fun d!6899 () Bool)

(assert (=> d!6899 (= (content!30 Nil!1064) (as emptyset (Set (_ BitVec 64))))))

(assert (=> d!6687 d!6899))

(declare-fun b!40184 () Bool)

(declare-fun e!25498 () Bool)

(declare-fun lt!15363 () SeekEntryResult!182)

(assert (=> b!40184 (= e!25498 (bvsge (x!7668 lt!15363) #b01111111111111111111111111111110))))

(declare-fun b!40185 () Bool)

(declare-fun e!25500 () SeekEntryResult!182)

(declare-fun e!25499 () SeekEntryResult!182)

(assert (=> b!40185 (= e!25500 e!25499)))

(declare-fun c!4886 () Bool)

(declare-fun lt!15362 () (_ BitVec 64))

(assert (=> b!40185 (= c!4886 (or (= lt!15362 (select (arr!1235 lt!14738) #b00000000000000000000000000000000)) (= (bvadd lt!15362 lt!15362) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!40186 () Bool)

(assert (=> b!40186 (and (bvsge (index!2852 lt!15363) #b00000000000000000000000000000000) (bvslt (index!2852 lt!15363) (size!1357 lt!14738)))))

(declare-fun e!25497 () Bool)

(assert (=> b!40186 (= e!25497 (= (select (arr!1235 lt!14738) (index!2852 lt!15363)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!40187 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!40187 (= e!25499 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!1235 lt!14738) #b00000000000000000000000000000000) mask!853) #b00000000000000000000000000000000 mask!853) (select (arr!1235 lt!14738) #b00000000000000000000000000000000) lt!14738 mask!853))))

(declare-fun b!40188 () Bool)

(assert (=> b!40188 (= e!25500 (Intermediate!182 true (toIndex!0 (select (arr!1235 lt!14738) #b00000000000000000000000000000000) mask!853) #b00000000000000000000000000000000))))

(declare-fun b!40189 () Bool)

(assert (=> b!40189 (and (bvsge (index!2852 lt!15363) #b00000000000000000000000000000000) (bvslt (index!2852 lt!15363) (size!1357 lt!14738)))))

(declare-fun res!24001 () Bool)

(assert (=> b!40189 (= res!24001 (= (select (arr!1235 lt!14738) (index!2852 lt!15363)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!40189 (=> res!24001 e!25497)))

(declare-fun b!40190 () Bool)

(declare-fun e!25501 () Bool)

(assert (=> b!40190 (= e!25498 e!25501)))

(declare-fun res!24000 () Bool)

(assert (=> b!40190 (= res!24000 (and (is-Intermediate!182 lt!15363) (not (undefined!994 lt!15363)) (bvslt (x!7668 lt!15363) #b01111111111111111111111111111110) (bvsge (x!7668 lt!15363) #b00000000000000000000000000000000) (bvsge (x!7668 lt!15363) #b00000000000000000000000000000000)))))

(assert (=> b!40190 (=> (not res!24000) (not e!25501))))

(declare-fun d!6903 () Bool)

(assert (=> d!6903 e!25498))

(declare-fun c!4885 () Bool)

(assert (=> d!6903 (= c!4885 (and (is-Intermediate!182 lt!15363) (undefined!994 lt!15363)))))

(assert (=> d!6903 (= lt!15363 e!25500)))

(declare-fun c!4884 () Bool)

(assert (=> d!6903 (= c!4884 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!6903 (= lt!15362 (select (arr!1235 lt!14738) (toIndex!0 (select (arr!1235 lt!14738) #b00000000000000000000000000000000) mask!853)))))

(assert (=> d!6903 (validMask!0 mask!853)))

(assert (=> d!6903 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!1235 lt!14738) #b00000000000000000000000000000000) mask!853) (select (arr!1235 lt!14738) #b00000000000000000000000000000000) lt!14738 mask!853) lt!15363)))

(declare-fun b!40191 () Bool)

(assert (=> b!40191 (= e!25499 (Intermediate!182 false (toIndex!0 (select (arr!1235 lt!14738) #b00000000000000000000000000000000) mask!853) #b00000000000000000000000000000000))))

(declare-fun b!40192 () Bool)

(assert (=> b!40192 (and (bvsge (index!2852 lt!15363) #b00000000000000000000000000000000) (bvslt (index!2852 lt!15363) (size!1357 lt!14738)))))

(declare-fun res!23999 () Bool)

(assert (=> b!40192 (= res!23999 (= (select (arr!1235 lt!14738) (index!2852 lt!15363)) (select (arr!1235 lt!14738) #b00000000000000000000000000000000)))))

(assert (=> b!40192 (=> res!23999 e!25497)))

(assert (=> b!40192 (= e!25501 e!25497)))

(assert (= (and d!6903 c!4884) b!40188))

(assert (= (and d!6903 (not c!4884)) b!40185))

(assert (= (and b!40185 c!4886) b!40191))

(assert (= (and b!40185 (not c!4886)) b!40187))

(assert (= (and d!6903 c!4885) b!40184))

(assert (= (and d!6903 (not c!4885)) b!40190))

(assert (= (and b!40190 res!24000) b!40192))

(assert (= (and b!40192 (not res!23999)) b!40189))

(assert (= (and b!40189 (not res!24001)) b!40186))

(assert (=> d!6903 m!32319))

(declare-fun m!33033 () Bool)

(assert (=> d!6903 m!33033))

(assert (=> d!6903 m!31941))

(assert (=> b!40187 m!32319))

(declare-fun m!33035 () Bool)

(assert (=> b!40187 m!33035))

(assert (=> b!40187 m!33035))

(assert (=> b!40187 m!31999))

(declare-fun m!33037 () Bool)

(assert (=> b!40187 m!33037))

(declare-fun m!33039 () Bool)

(assert (=> b!40192 m!33039))

(assert (=> b!40186 m!33039))

(assert (=> b!40189 m!33039))

(assert (=> d!6671 d!6903))

(declare-fun d!6927 () Bool)

(declare-fun lt!15369 () (_ BitVec 32))

(declare-fun lt!15368 () (_ BitVec 32))

(assert (=> d!6927 (= lt!15369 (bvmul (bvxor lt!15368 (bvlshr lt!15368 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!6927 (= lt!15368 ((_ extract 31 0) (bvand (bvxor (select (arr!1235 lt!14738) #b00000000000000000000000000000000) (bvlshr (select (arr!1235 lt!14738) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!6927 (and (bvsge mask!853 #b00000000000000000000000000000000) (let ((res!24002 (let ((h!1637 ((_ extract 31 0) (bvand (bvxor (select (arr!1235 lt!14738) #b00000000000000000000000000000000) (bvlshr (select (arr!1235 lt!14738) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!7695 (bvmul (bvxor h!1637 (bvlshr h!1637 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!7695 (bvlshr x!7695 #b00000000000000000000000000001101)) mask!853))))) (and (bvslt res!24002 (bvadd mask!853 #b00000000000000000000000000000001)) (bvsge res!24002 #b00000000000000000000000000000000))))))

(assert (=> d!6927 (= (toIndex!0 (select (arr!1235 lt!14738) #b00000000000000000000000000000000) mask!853) (bvand (bvxor lt!15369 (bvlshr lt!15369 #b00000000000000000000000000001101)) mask!853))))

(assert (=> d!6671 d!6927))

(assert (=> d!6671 d!6551))

(assert (=> b!39734 d!6821))

(assert (=> d!6681 d!6587))

(assert (=> d!6667 d!6669))

(declare-fun d!6929 () Bool)

(assert (=> d!6929 (arrayContainsKey!0 lt!14738 lt!14806 #b00000000000000000000000000000000)))

(assert (=> d!6929 true))

(declare-fun _$60!338 () Unit!964)

(assert (=> d!6929 (= (choose!13 lt!14738 lt!14806 #b00000000000000000000000000000000) _$60!338)))

(declare-fun bs!1679 () Bool)

(assert (= bs!1679 d!6929))

(assert (=> bs!1679 m!32041))

(assert (=> d!6667 d!6929))

(declare-fun b!40193 () Bool)

(declare-fun e!25504 () Bool)

(declare-fun call!3095 () Bool)

(assert (=> b!40193 (= e!25504 call!3095)))

(declare-fun b!40194 () Bool)

(declare-fun e!25503 () Bool)

(assert (=> b!40194 (= e!25504 e!25503)))

(declare-fun lt!15372 () (_ BitVec 64))

(assert (=> b!40194 (= lt!15372 (select (arr!1235 (_keys!3267 lt!14740)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!15371 () Unit!964)

(assert (=> b!40194 (= lt!15371 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3267 lt!14740) lt!15372 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!40194 (arrayContainsKey!0 (_keys!3267 lt!14740) lt!15372 #b00000000000000000000000000000000)))

(declare-fun lt!15370 () Unit!964)

(assert (=> b!40194 (= lt!15370 lt!15371)))

(declare-fun res!24004 () Bool)

(assert (=> b!40194 (= res!24004 (= (seekEntryOrOpen!0 (select (arr!1235 (_keys!3267 lt!14740)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (_keys!3267 lt!14740) (mask!5143 lt!14740)) (Found!182 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!40194 (=> (not res!24004) (not e!25503))))

(declare-fun d!6931 () Bool)

(declare-fun res!24003 () Bool)

(declare-fun e!25502 () Bool)

(assert (=> d!6931 (=> res!24003 e!25502)))

(assert (=> d!6931 (= res!24003 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1357 (_keys!3267 lt!14740))))))

(assert (=> d!6931 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!3267 lt!14740) (mask!5143 lt!14740)) e!25502)))

(declare-fun b!40195 () Bool)

(assert (=> b!40195 (= e!25503 call!3095)))

(declare-fun bm!3092 () Bool)

(assert (=> bm!3092 (= call!3095 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (_keys!3267 lt!14740) (mask!5143 lt!14740)))))

(declare-fun b!40196 () Bool)

(assert (=> b!40196 (= e!25502 e!25504)))

(declare-fun c!4887 () Bool)

(assert (=> b!40196 (= c!4887 (validKeyInArray!0 (select (arr!1235 (_keys!3267 lt!14740)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!6931 (not res!24003)) b!40196))

(assert (= (and b!40196 c!4887) b!40194))

(assert (= (and b!40196 (not c!4887)) b!40193))

(assert (= (and b!40194 res!24004) b!40195))

(assert (= (or b!40195 b!40193) bm!3092))

(declare-fun m!33041 () Bool)

(assert (=> b!40194 m!33041))

(declare-fun m!33043 () Bool)

(assert (=> b!40194 m!33043))

(declare-fun m!33045 () Bool)

(assert (=> b!40194 m!33045))

(assert (=> b!40194 m!33041))

(declare-fun m!33047 () Bool)

(assert (=> b!40194 m!33047))

(declare-fun m!33049 () Bool)

(assert (=> bm!3092 m!33049))

(assert (=> b!40196 m!33041))

(assert (=> b!40196 m!33041))

(declare-fun m!33051 () Bool)

(assert (=> b!40196 m!33051))

(assert (=> bm!3067 d!6931))

(assert (=> b!39738 d!6821))

(declare-fun b!40197 () Bool)

(declare-fun e!25505 () (_ BitVec 32))

(declare-fun call!3096 () (_ BitVec 32))

(assert (=> b!40197 (= e!25505 call!3096)))

(declare-fun b!40198 () Bool)

(declare-fun e!25506 () (_ BitVec 32))

(assert (=> b!40198 (= e!25506 #b00000000000000000000000000000000)))

(declare-fun bm!3093 () Bool)

(assert (=> bm!3093 (= call!3096 (arrayCountValidKeys!0 (_keys!3267 lt!14740) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!1357 (_keys!3267 lt!14740))))))

(declare-fun d!6933 () Bool)

(declare-fun lt!15373 () (_ BitVec 32))

(assert (=> d!6933 (and (bvsge lt!15373 #b00000000000000000000000000000000) (bvsle lt!15373 (bvsub (size!1357 (_keys!3267 lt!14740)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> d!6933 (= lt!15373 e!25506)))

(declare-fun c!4889 () Bool)

(assert (=> d!6933 (= c!4889 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1357 (_keys!3267 lt!14740))))))

(assert (=> d!6933 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1357 (_keys!3267 lt!14740))) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (size!1357 (_keys!3267 lt!14740)) (size!1357 (_keys!3267 lt!14740))))))

(assert (=> d!6933 (= (arrayCountValidKeys!0 (_keys!3267 lt!14740) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1357 (_keys!3267 lt!14740))) lt!15373)))

(declare-fun b!40199 () Bool)

(assert (=> b!40199 (= e!25505 (bvadd #b00000000000000000000000000000001 call!3096))))

(declare-fun b!40200 () Bool)

(assert (=> b!40200 (= e!25506 e!25505)))

(declare-fun c!4888 () Bool)

(assert (=> b!40200 (= c!4888 (validKeyInArray!0 (select (arr!1235 (_keys!3267 lt!14740)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!6933 c!4889) b!40198))

(assert (= (and d!6933 (not c!4889)) b!40200))

(assert (= (and b!40200 c!4888) b!40199))

(assert (= (and b!40200 (not c!4888)) b!40197))

(assert (= (or b!40199 b!40197) bm!3093))

(declare-fun m!33053 () Bool)

(assert (=> bm!3093 m!33053))

(assert (=> b!40200 m!33041))

(assert (=> b!40200 m!33041))

(assert (=> b!40200 m!33051))

(assert (=> bm!3068 d!6933))

(declare-fun d!6935 () Bool)

(declare-fun e!25507 () Bool)

(assert (=> d!6935 e!25507))

(declare-fun res!24005 () Bool)

(assert (=> d!6935 (=> res!24005 e!25507)))

(declare-fun lt!15375 () Bool)

(assert (=> d!6935 (= res!24005 (not lt!15375))))

(declare-fun lt!15377 () Bool)

(assert (=> d!6935 (= lt!15375 lt!15377)))

(declare-fun lt!15376 () Unit!964)

(declare-fun e!25508 () Unit!964)

(assert (=> d!6935 (= lt!15376 e!25508)))

(declare-fun c!4890 () Bool)

(assert (=> d!6935 (= c!4890 lt!15377)))

(assert (=> d!6935 (= lt!15377 (containsKey!67 (toList!549 lt!14961) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!6935 (= (contains!508 lt!14961 #b0000000000000000000000000000000000000000000000000000000000000000) lt!15375)))

(declare-fun b!40201 () Bool)

(declare-fun lt!15374 () Unit!964)

(assert (=> b!40201 (= e!25508 lt!15374)))

(assert (=> b!40201 (= lt!15374 (lemmaContainsKeyImpliesGetValueByKeyDefined!55 (toList!549 lt!14961) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!40201 (isDefined!56 (getValueByKey!99 (toList!549 lt!14961) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!40202 () Bool)

(declare-fun Unit!977 () Unit!964)

(assert (=> b!40202 (= e!25508 Unit!977)))

(declare-fun b!40203 () Bool)

(assert (=> b!40203 (= e!25507 (isDefined!56 (getValueByKey!99 (toList!549 lt!14961) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!6935 c!4890) b!40201))

(assert (= (and d!6935 (not c!4890)) b!40202))

(assert (= (and d!6935 (not res!24005)) b!40203))

(declare-fun m!33055 () Bool)

(assert (=> d!6935 m!33055))

(declare-fun m!33057 () Bool)

(assert (=> b!40201 m!33057))

(assert (=> b!40201 m!32769))

(assert (=> b!40201 m!32769))

(declare-fun m!33059 () Bool)

(assert (=> b!40201 m!33059))

(assert (=> b!40203 m!32769))

(assert (=> b!40203 m!32769))

(assert (=> b!40203 m!33059))

(assert (=> bm!3037 d!6935))

(declare-fun d!6937 () Bool)

(declare-fun e!25511 () Bool)

(assert (=> d!6937 e!25511))

(declare-fun res!24010 () Bool)

(assert (=> d!6937 (=> (not res!24010) (not e!25511))))

(declare-fun lt!15386 () ListLongMap!1067)

(assert (=> d!6937 (= res!24010 (contains!508 lt!15386 (_1!753 (ite (or c!4699 c!4700) (tuple2!1487 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1714 lt!14740)) (tuple2!1487 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1714 lt!14740))))))))

(declare-fun lt!15388 () List!1066)

(assert (=> d!6937 (= lt!15386 (ListLongMap!1068 lt!15388))))

(declare-fun lt!15387 () Unit!964)

(declare-fun lt!15389 () Unit!964)

(assert (=> d!6937 (= lt!15387 lt!15389)))

(assert (=> d!6937 (= (getValueByKey!99 lt!15388 (_1!753 (ite (or c!4699 c!4700) (tuple2!1487 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1714 lt!14740)) (tuple2!1487 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1714 lt!14740))))) (Some!104 (_2!753 (ite (or c!4699 c!4700) (tuple2!1487 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1714 lt!14740)) (tuple2!1487 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1714 lt!14740))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!25 (List!1066 (_ BitVec 64) V!2093) Unit!964)

(assert (=> d!6937 (= lt!15389 (lemmaContainsTupThenGetReturnValue!25 lt!15388 (_1!753 (ite (or c!4699 c!4700) (tuple2!1487 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1714 lt!14740)) (tuple2!1487 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1714 lt!14740)))) (_2!753 (ite (or c!4699 c!4700) (tuple2!1487 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1714 lt!14740)) (tuple2!1487 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1714 lt!14740))))))))

(declare-fun insertStrictlySorted!22 (List!1066 (_ BitVec 64) V!2093) List!1066)

(assert (=> d!6937 (= lt!15388 (insertStrictlySorted!22 (toList!549 (ite c!4699 call!3039 (ite c!4700 call!3038 call!3037))) (_1!753 (ite (or c!4699 c!4700) (tuple2!1487 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1714 lt!14740)) (tuple2!1487 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1714 lt!14740)))) (_2!753 (ite (or c!4699 c!4700) (tuple2!1487 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1714 lt!14740)) (tuple2!1487 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1714 lt!14740))))))))

(assert (=> d!6937 (= (+!62 (ite c!4699 call!3039 (ite c!4700 call!3038 call!3037)) (ite (or c!4699 c!4700) (tuple2!1487 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1714 lt!14740)) (tuple2!1487 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1714 lt!14740)))) lt!15386)))

(declare-fun b!40208 () Bool)

(declare-fun res!24011 () Bool)

(assert (=> b!40208 (=> (not res!24011) (not e!25511))))

(assert (=> b!40208 (= res!24011 (= (getValueByKey!99 (toList!549 lt!15386) (_1!753 (ite (or c!4699 c!4700) (tuple2!1487 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1714 lt!14740)) (tuple2!1487 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1714 lt!14740))))) (Some!104 (_2!753 (ite (or c!4699 c!4700) (tuple2!1487 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1714 lt!14740)) (tuple2!1487 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1714 lt!14740)))))))))

(declare-fun b!40209 () Bool)

(declare-fun contains!512 (List!1066 tuple2!1486) Bool)

(assert (=> b!40209 (= e!25511 (contains!512 (toList!549 lt!15386) (ite (or c!4699 c!4700) (tuple2!1487 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1714 lt!14740)) (tuple2!1487 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1714 lt!14740)))))))

(assert (= (and d!6937 res!24010) b!40208))

(assert (= (and b!40208 res!24011) b!40209))

(declare-fun m!33061 () Bool)

(assert (=> d!6937 m!33061))

(declare-fun m!33063 () Bool)

(assert (=> d!6937 m!33063))

(declare-fun m!33065 () Bool)

(assert (=> d!6937 m!33065))

(declare-fun m!33067 () Bool)

(assert (=> d!6937 m!33067))

(declare-fun m!33069 () Bool)

(assert (=> b!40208 m!33069))

(declare-fun m!33071 () Bool)

(assert (=> b!40209 m!33071))

(assert (=> bm!3033 d!6937))

(declare-fun d!6939 () Bool)

(assert (=> d!6939 (= (apply!53 lt!14961 (select (arr!1235 (_keys!3267 lt!14740)) #b00000000000000000000000000000000)) (get!698 (getValueByKey!99 (toList!549 lt!14961) (select (arr!1235 (_keys!3267 lt!14740)) #b00000000000000000000000000000000))))))

(declare-fun bs!1680 () Bool)

(assert (= bs!1680 d!6939))

(assert (=> bs!1680 m!32223))

(declare-fun m!33073 () Bool)

(assert (=> bs!1680 m!33073))

(assert (=> bs!1680 m!33073))

(declare-fun m!33075 () Bool)

(assert (=> bs!1680 m!33075))

(assert (=> b!39561 d!6939))

(declare-fun d!6941 () Bool)

(declare-fun c!4893 () Bool)

(assert (=> d!6941 (= c!4893 (is-ValueCellFull!628 (select (arr!1236 (_values!1779 lt!14740)) #b00000000000000000000000000000000)))))

(declare-fun e!25514 () V!2093)

(assert (=> d!6941 (= (get!690 (select (arr!1236 (_values!1779 lt!14740)) #b00000000000000000000000000000000) (dynLambda!189 (defaultEntry!1796 lt!14740) #b0000000000000000000000000000000000000000000000000000000000000000)) e!25514)))

(declare-fun b!40214 () Bool)

(declare-fun get!699 (ValueCell!628 V!2093) V!2093)

(assert (=> b!40214 (= e!25514 (get!699 (select (arr!1236 (_values!1779 lt!14740)) #b00000000000000000000000000000000) (dynLambda!189 (defaultEntry!1796 lt!14740) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!40215 () Bool)

(declare-fun get!700 (ValueCell!628 V!2093) V!2093)

(assert (=> b!40215 (= e!25514 (get!700 (select (arr!1236 (_values!1779 lt!14740)) #b00000000000000000000000000000000) (dynLambda!189 (defaultEntry!1796 lt!14740) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!6941 c!4893) b!40214))

(assert (= (and d!6941 (not c!4893)) b!40215))

(assert (=> b!40214 m!32279))

(assert (=> b!40214 m!32277))

(declare-fun m!33077 () Bool)

(assert (=> b!40214 m!33077))

(assert (=> b!40215 m!32279))

(assert (=> b!40215 m!32277))

(declare-fun m!33079 () Bool)

(assert (=> b!40215 m!33079))

(assert (=> b!39561 d!6941))

(declare-fun d!6943 () Bool)

(assert (=> d!6943 (arrayContainsKey!0 (_keys!3267 lt!14740) lt!15072 #b00000000000000000000000000000000)))

(declare-fun lt!15390 () Unit!964)

(assert (=> d!6943 (= lt!15390 (choose!13 (_keys!3267 lt!14740) lt!15072 #b00000000000000000000000000000000))))

(assert (=> d!6943 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!6943 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3267 lt!14740) lt!15072 #b00000000000000000000000000000000) lt!15390)))

(declare-fun bs!1681 () Bool)

(assert (= bs!1681 d!6943))

(assert (=> bs!1681 m!32407))

(declare-fun m!33081 () Bool)

(assert (=> bs!1681 m!33081))

(assert (=> b!39732 d!6943))

(declare-fun d!6945 () Bool)

(declare-fun res!24012 () Bool)

(declare-fun e!25515 () Bool)

(assert (=> d!6945 (=> res!24012 e!25515)))

(assert (=> d!6945 (= res!24012 (= (select (arr!1235 (_keys!3267 lt!14740)) #b00000000000000000000000000000000) lt!15072))))

(assert (=> d!6945 (= (arrayContainsKey!0 (_keys!3267 lt!14740) lt!15072 #b00000000000000000000000000000000) e!25515)))

(declare-fun b!40216 () Bool)

(declare-fun e!25516 () Bool)

(assert (=> b!40216 (= e!25515 e!25516)))

(declare-fun res!24013 () Bool)

(assert (=> b!40216 (=> (not res!24013) (not e!25516))))

(assert (=> b!40216 (= res!24013 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1357 (_keys!3267 lt!14740))))))

(declare-fun b!40217 () Bool)

(assert (=> b!40217 (= e!25516 (arrayContainsKey!0 (_keys!3267 lt!14740) lt!15072 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!6945 (not res!24012)) b!40216))

(assert (= (and b!40216 res!24013) b!40217))

(assert (=> d!6945 m!32223))

(declare-fun m!33083 () Bool)

(assert (=> b!40217 m!33083))

(assert (=> b!39732 d!6945))

(declare-fun b!40218 () Bool)

(declare-fun e!25518 () SeekEntryResult!182)

(declare-fun e!25517 () SeekEntryResult!182)

(assert (=> b!40218 (= e!25518 e!25517)))

(declare-fun lt!15393 () (_ BitVec 64))

(declare-fun lt!15392 () SeekEntryResult!182)

(assert (=> b!40218 (= lt!15393 (select (arr!1235 (_keys!3267 lt!14740)) (index!2852 lt!15392)))))

(declare-fun c!4896 () Bool)

(assert (=> b!40218 (= c!4896 (= lt!15393 (select (arr!1235 (_keys!3267 lt!14740)) #b00000000000000000000000000000000)))))

(declare-fun b!40219 () Bool)

(assert (=> b!40219 (= e!25518 Undefined!182)))

(declare-fun b!40220 () Bool)

(declare-fun c!4894 () Bool)

(assert (=> b!40220 (= c!4894 (= lt!15393 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!25519 () SeekEntryResult!182)

(assert (=> b!40220 (= e!25517 e!25519)))

(declare-fun b!40221 () Bool)

(assert (=> b!40221 (= e!25519 (MissingZero!182 (index!2852 lt!15392)))))

(declare-fun d!6947 () Bool)

(declare-fun lt!15391 () SeekEntryResult!182)

(assert (=> d!6947 (and (or (is-Undefined!182 lt!15391) (not (is-Found!182 lt!15391)) (and (bvsge (index!2851 lt!15391) #b00000000000000000000000000000000) (bvslt (index!2851 lt!15391) (size!1357 (_keys!3267 lt!14740))))) (or (is-Undefined!182 lt!15391) (is-Found!182 lt!15391) (not (is-MissingZero!182 lt!15391)) (and (bvsge (index!2850 lt!15391) #b00000000000000000000000000000000) (bvslt (index!2850 lt!15391) (size!1357 (_keys!3267 lt!14740))))) (or (is-Undefined!182 lt!15391) (is-Found!182 lt!15391) (is-MissingZero!182 lt!15391) (not (is-MissingVacant!182 lt!15391)) (and (bvsge (index!2853 lt!15391) #b00000000000000000000000000000000) (bvslt (index!2853 lt!15391) (size!1357 (_keys!3267 lt!14740))))) (or (is-Undefined!182 lt!15391) (ite (is-Found!182 lt!15391) (= (select (arr!1235 (_keys!3267 lt!14740)) (index!2851 lt!15391)) (select (arr!1235 (_keys!3267 lt!14740)) #b00000000000000000000000000000000)) (ite (is-MissingZero!182 lt!15391) (= (select (arr!1235 (_keys!3267 lt!14740)) (index!2850 lt!15391)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!182 lt!15391) (= (select (arr!1235 (_keys!3267 lt!14740)) (index!2853 lt!15391)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!6947 (= lt!15391 e!25518)))

(declare-fun c!4895 () Bool)

(assert (=> d!6947 (= c!4895 (and (is-Intermediate!182 lt!15392) (undefined!994 lt!15392)))))

(assert (=> d!6947 (= lt!15392 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!1235 (_keys!3267 lt!14740)) #b00000000000000000000000000000000) (mask!5143 lt!14740)) (select (arr!1235 (_keys!3267 lt!14740)) #b00000000000000000000000000000000) (_keys!3267 lt!14740) (mask!5143 lt!14740)))))

(assert (=> d!6947 (validMask!0 (mask!5143 lt!14740))))

(assert (=> d!6947 (= (seekEntryOrOpen!0 (select (arr!1235 (_keys!3267 lt!14740)) #b00000000000000000000000000000000) (_keys!3267 lt!14740) (mask!5143 lt!14740)) lt!15391)))

(declare-fun b!40222 () Bool)

(assert (=> b!40222 (= e!25517 (Found!182 (index!2852 lt!15392)))))

(declare-fun b!40223 () Bool)

(assert (=> b!40223 (= e!25519 (seekKeyOrZeroReturnVacant!0 (x!7668 lt!15392) (index!2852 lt!15392) (index!2852 lt!15392) (select (arr!1235 (_keys!3267 lt!14740)) #b00000000000000000000000000000000) (_keys!3267 lt!14740) (mask!5143 lt!14740)))))

(assert (= (and d!6947 c!4895) b!40219))

(assert (= (and d!6947 (not c!4895)) b!40218))

(assert (= (and b!40218 c!4896) b!40222))

(assert (= (and b!40218 (not c!4896)) b!40220))

(assert (= (and b!40220 c!4894) b!40221))

(assert (= (and b!40220 (not c!4894)) b!40223))

(declare-fun m!33085 () Bool)

(assert (=> b!40218 m!33085))

(assert (=> d!6947 m!32283))

(assert (=> d!6947 m!32223))

(declare-fun m!33087 () Bool)

(assert (=> d!6947 m!33087))

(declare-fun m!33089 () Bool)

(assert (=> d!6947 m!33089))

(declare-fun m!33091 () Bool)

(assert (=> d!6947 m!33091))

(declare-fun m!33093 () Bool)

(assert (=> d!6947 m!33093))

(assert (=> d!6947 m!33087))

(assert (=> d!6947 m!32223))

(declare-fun m!33095 () Bool)

(assert (=> d!6947 m!33095))

(assert (=> b!40223 m!32223))

(declare-fun m!33097 () Bool)

(assert (=> b!40223 m!33097))

(assert (=> b!39732 d!6947))

(assert (=> b!39577 d!6821))

(declare-fun d!6949 () Bool)

(assert (=> d!6949 (= (apply!53 lt!14961 #b1000000000000000000000000000000000000000000000000000000000000000) (get!698 (getValueByKey!99 (toList!549 lt!14961) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!1682 () Bool)

(assert (= bs!1682 d!6949))

(assert (=> bs!1682 m!32873))

(assert (=> bs!1682 m!32873))

(declare-fun m!33099 () Bool)

(assert (=> bs!1682 m!33099))

(assert (=> b!39576 d!6949))

(assert (=> d!6691 d!6595))

(declare-fun d!6951 () Bool)

(declare-fun res!24014 () Bool)

(declare-fun e!25520 () Bool)

(assert (=> d!6951 (=> res!24014 e!25520)))

(assert (=> d!6951 (= res!24014 (= (select (arr!1235 lt!14738) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!14806))))

(assert (=> d!6951 (= (arrayContainsKey!0 lt!14738 lt!14806 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!25520)))

(declare-fun b!40224 () Bool)

(declare-fun e!25521 () Bool)

(assert (=> b!40224 (= e!25520 e!25521)))

(declare-fun res!24015 () Bool)

(assert (=> b!40224 (=> (not res!24015) (not e!25521))))

(assert (=> b!40224 (= res!24015 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!1357 lt!14738)))))

(declare-fun b!40225 () Bool)

(assert (=> b!40225 (= e!25521 (arrayContainsKey!0 lt!14738 lt!14806 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!6951 (not res!24014)) b!40224))

(assert (= (and b!40224 res!24015) b!40225))

(assert (=> d!6951 m!32067))

(declare-fun m!33101 () Bool)

(assert (=> b!40225 m!33101))

(assert (=> b!39605 d!6951))

(assert (=> b!39706 d!6823))

(declare-fun d!6953 () Bool)

(assert (=> d!6953 (= (size!1373 lt!14740) (bvadd (_size!167 lt!14740) (bvsdiv (bvadd (extraKeys!1687 lt!14740) #b00000000000000000000000000000001) #b00000000000000000000000000000010)))))

(assert (=> b!39749 d!6953))

(declare-fun b!40226 () Bool)

(declare-fun e!25522 () Bool)

(assert (=> b!40226 (= e!25522 (contains!506 (ite c!4740 (Cons!1063 (select (arr!1235 lt!14738) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!4639 (Cons!1063 (select (arr!1235 lt!14738) #b00000000000000000000000000000000) Nil!1064) Nil!1064)) (ite c!4639 (Cons!1063 (select (arr!1235 lt!14738) #b00000000000000000000000000000000) Nil!1064) Nil!1064)) (select (arr!1235 lt!14738) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(declare-fun b!40227 () Bool)

(declare-fun e!25525 () Bool)

(declare-fun e!25524 () Bool)

(assert (=> b!40227 (= e!25525 e!25524)))

(declare-fun res!24018 () Bool)

(assert (=> b!40227 (=> (not res!24018) (not e!25524))))

(assert (=> b!40227 (= res!24018 (not e!25522))))

(declare-fun res!24017 () Bool)

(assert (=> b!40227 (=> (not res!24017) (not e!25522))))

(assert (=> b!40227 (= res!24017 (validKeyInArray!0 (select (arr!1235 lt!14738) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(declare-fun b!40228 () Bool)

(declare-fun e!25523 () Bool)

(declare-fun call!3097 () Bool)

(assert (=> b!40228 (= e!25523 call!3097)))

(declare-fun c!4897 () Bool)

(declare-fun bm!3094 () Bool)

(assert (=> bm!3094 (= call!3097 (arrayNoDuplicates!0 lt!14738 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!4897 (Cons!1063 (select (arr!1235 lt!14738) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)) (ite c!4740 (Cons!1063 (select (arr!1235 lt!14738) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!4639 (Cons!1063 (select (arr!1235 lt!14738) #b00000000000000000000000000000000) Nil!1064) Nil!1064)) (ite c!4639 (Cons!1063 (select (arr!1235 lt!14738) #b00000000000000000000000000000000) Nil!1064) Nil!1064))) (ite c!4740 (Cons!1063 (select (arr!1235 lt!14738) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!4639 (Cons!1063 (select (arr!1235 lt!14738) #b00000000000000000000000000000000) Nil!1064) Nil!1064)) (ite c!4639 (Cons!1063 (select (arr!1235 lt!14738) #b00000000000000000000000000000000) Nil!1064) Nil!1064)))))))

(declare-fun d!6955 () Bool)

(declare-fun res!24016 () Bool)

(assert (=> d!6955 (=> res!24016 e!25525)))

(assert (=> d!6955 (= res!24016 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!1357 lt!14738)))))

(assert (=> d!6955 (= (arrayNoDuplicates!0 lt!14738 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!4740 (Cons!1063 (select (arr!1235 lt!14738) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!4639 (Cons!1063 (select (arr!1235 lt!14738) #b00000000000000000000000000000000) Nil!1064) Nil!1064)) (ite c!4639 (Cons!1063 (select (arr!1235 lt!14738) #b00000000000000000000000000000000) Nil!1064) Nil!1064))) e!25525)))

(declare-fun b!40229 () Bool)

(assert (=> b!40229 (= e!25524 e!25523)))

(assert (=> b!40229 (= c!4897 (validKeyInArray!0 (select (arr!1235 lt!14738) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(declare-fun b!40230 () Bool)

(assert (=> b!40230 (= e!25523 call!3097)))

(assert (= (and d!6955 (not res!24016)) b!40227))

(assert (= (and b!40227 res!24017) b!40226))

(assert (= (and b!40227 res!24018) b!40229))

(assert (= (and b!40229 c!4897) b!40230))

(assert (= (and b!40229 (not c!4897)) b!40228))

(assert (= (or b!40230 b!40228) bm!3094))

(assert (=> b!40226 m!32715))

(assert (=> b!40226 m!32715))

(declare-fun m!33103 () Bool)

(assert (=> b!40226 m!33103))

(assert (=> b!40227 m!32715))

(assert (=> b!40227 m!32715))

(assert (=> b!40227 m!32725))

(assert (=> bm!3094 m!32715))

(declare-fun m!33105 () Bool)

(assert (=> bm!3094 m!33105))

(assert (=> b!40229 m!32715))

(assert (=> b!40229 m!32715))

(assert (=> b!40229 m!32725))

(assert (=> bm!3062 d!6955))

(declare-fun b!40244 () Bool)

(declare-fun e!25534 () SeekEntryResult!182)

(declare-fun e!25533 () SeekEntryResult!182)

(assert (=> b!40244 (= e!25534 e!25533)))

(declare-fun c!4906 () Bool)

(declare-fun lt!15398 () (_ BitVec 64))

(assert (=> b!40244 (= c!4906 (= lt!15398 (select (arr!1235 lt!14738) #b00000000000000000000000000000000)))))

(declare-fun b!40245 () Bool)

(assert (=> b!40245 (= e!25533 (Found!182 (index!2852 lt!15062)))))

(declare-fun b!40246 () Bool)

(declare-fun c!4904 () Bool)

(assert (=> b!40246 (= c!4904 (= lt!15398 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!25532 () SeekEntryResult!182)

(assert (=> b!40246 (= e!25533 e!25532)))

(declare-fun b!40247 () Bool)

(assert (=> b!40247 (= e!25532 (seekKeyOrZeroReturnVacant!0 (bvadd (x!7668 lt!15062) #b00000000000000000000000000000001) (nextIndex!0 (index!2852 lt!15062) (x!7668 lt!15062) mask!853) (index!2852 lt!15062) (select (arr!1235 lt!14738) #b00000000000000000000000000000000) lt!14738 mask!853))))

(declare-fun b!40248 () Bool)

(assert (=> b!40248 (= e!25532 (MissingVacant!182 (index!2852 lt!15062)))))

(declare-fun d!6957 () Bool)

(declare-fun lt!15399 () SeekEntryResult!182)

(assert (=> d!6957 (and (or (is-Undefined!182 lt!15399) (not (is-Found!182 lt!15399)) (and (bvsge (index!2851 lt!15399) #b00000000000000000000000000000000) (bvslt (index!2851 lt!15399) (size!1357 lt!14738)))) (or (is-Undefined!182 lt!15399) (is-Found!182 lt!15399) (not (is-MissingVacant!182 lt!15399)) (not (= (index!2853 lt!15399) (index!2852 lt!15062))) (and (bvsge (index!2853 lt!15399) #b00000000000000000000000000000000) (bvslt (index!2853 lt!15399) (size!1357 lt!14738)))) (or (is-Undefined!182 lt!15399) (ite (is-Found!182 lt!15399) (= (select (arr!1235 lt!14738) (index!2851 lt!15399)) (select (arr!1235 lt!14738) #b00000000000000000000000000000000)) (and (is-MissingVacant!182 lt!15399) (= (index!2853 lt!15399) (index!2852 lt!15062)) (= (select (arr!1235 lt!14738) (index!2853 lt!15399)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!6957 (= lt!15399 e!25534)))

(declare-fun c!4905 () Bool)

(assert (=> d!6957 (= c!4905 (bvsge (x!7668 lt!15062) #b01111111111111111111111111111110))))

(assert (=> d!6957 (= lt!15398 (select (arr!1235 lt!14738) (index!2852 lt!15062)))))

(assert (=> d!6957 (validMask!0 mask!853)))

(assert (=> d!6957 (= (seekKeyOrZeroReturnVacant!0 (x!7668 lt!15062) (index!2852 lt!15062) (index!2852 lt!15062) (select (arr!1235 lt!14738) #b00000000000000000000000000000000) lt!14738 mask!853) lt!15399)))

(declare-fun b!40243 () Bool)

(assert (=> b!40243 (= e!25534 Undefined!182)))

(assert (= (and d!6957 c!4905) b!40243))

(assert (= (and d!6957 (not c!4905)) b!40244))

(assert (= (and b!40244 c!4906) b!40245))

(assert (= (and b!40244 (not c!4906)) b!40246))

(assert (= (and b!40246 c!4904) b!40248))

(assert (= (and b!40246 (not c!4904)) b!40247))

(declare-fun m!33107 () Bool)

(assert (=> b!40247 m!33107))

(assert (=> b!40247 m!33107))

(assert (=> b!40247 m!31999))

(declare-fun m!33109 () Bool)

(assert (=> b!40247 m!33109))

(declare-fun m!33111 () Bool)

(assert (=> d!6957 m!33111))

(declare-fun m!33113 () Bool)

(assert (=> d!6957 m!33113))

(assert (=> d!6957 m!32317))

(assert (=> d!6957 m!31941))

(assert (=> b!39702 d!6957))

(assert (=> b!39748 d!6953))

(assert (=> d!6619 d!6829))

(declare-fun d!6959 () Bool)

(declare-fun lt!15400 () Bool)

(assert (=> d!6959 (= lt!15400 (member (select (arr!1235 lt!14738) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (content!30 (ite c!4639 (Cons!1063 (select (arr!1235 lt!14738) #b00000000000000000000000000000000) Nil!1064) Nil!1064))))))

(declare-fun e!25536 () Bool)

(assert (=> d!6959 (= lt!15400 e!25536)))

(declare-fun res!24020 () Bool)

(assert (=> d!6959 (=> (not res!24020) (not e!25536))))

(assert (=> d!6959 (= res!24020 (is-Cons!1063 (ite c!4639 (Cons!1063 (select (arr!1235 lt!14738) #b00000000000000000000000000000000) Nil!1064) Nil!1064)))))

(assert (=> d!6959 (= (contains!506 (ite c!4639 (Cons!1063 (select (arr!1235 lt!14738) #b00000000000000000000000000000000) Nil!1064) Nil!1064) (select (arr!1235 lt!14738) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))) lt!15400)))

(declare-fun b!40249 () Bool)

(declare-fun e!25535 () Bool)

(assert (=> b!40249 (= e!25536 e!25535)))

(declare-fun res!24019 () Bool)

(assert (=> b!40249 (=> res!24019 e!25535)))

(assert (=> b!40249 (= res!24019 (= (h!1634 (ite c!4639 (Cons!1063 (select (arr!1235 lt!14738) #b00000000000000000000000000000000) Nil!1064) Nil!1064)) (select (arr!1235 lt!14738) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!40250 () Bool)

(assert (=> b!40250 (= e!25535 (contains!506 (t!3920 (ite c!4639 (Cons!1063 (select (arr!1235 lt!14738) #b00000000000000000000000000000000) Nil!1064) Nil!1064)) (select (arr!1235 lt!14738) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!6959 res!24020) b!40249))

(assert (= (and b!40249 (not res!24019)) b!40250))

(declare-fun m!33115 () Bool)

(assert (=> d!6959 m!33115))

(assert (=> d!6959 m!32067))

(declare-fun m!33117 () Bool)

(assert (=> d!6959 m!33117))

(assert (=> b!40250 m!32067))

(declare-fun m!33119 () Bool)

(assert (=> b!40250 m!33119))

(assert (=> b!39703 d!6959))

(assert (=> b!39704 d!6823))

(declare-fun d!6961 () Bool)

(assert (=> d!6961 (= (apply!53 lt!14952 lt!14967) (get!698 (getValueByKey!99 (toList!549 lt!14952) lt!14967)))))

(declare-fun bs!1683 () Bool)

(assert (= bs!1683 d!6961))

(declare-fun m!33121 () Bool)

(assert (=> bs!1683 m!33121))

(assert (=> bs!1683 m!33121))

(declare-fun m!33123 () Bool)

(assert (=> bs!1683 m!33123))

(assert (=> b!39571 d!6961))

(declare-fun d!6963 () Bool)

(declare-fun e!25537 () Bool)

(assert (=> d!6963 e!25537))

(declare-fun res!24021 () Bool)

(assert (=> d!6963 (=> res!24021 e!25537)))

(declare-fun lt!15402 () Bool)

(assert (=> d!6963 (= res!24021 (not lt!15402))))

(declare-fun lt!15404 () Bool)

(assert (=> d!6963 (= lt!15402 lt!15404)))

(declare-fun lt!15403 () Unit!964)

(declare-fun e!25538 () Unit!964)

(assert (=> d!6963 (= lt!15403 e!25538)))

(declare-fun c!4907 () Bool)

(assert (=> d!6963 (= c!4907 lt!15404)))

(assert (=> d!6963 (= lt!15404 (containsKey!67 (toList!549 (+!62 lt!14949 (tuple2!1487 lt!14962 (zeroValue!1714 lt!14740)))) lt!14958))))

(assert (=> d!6963 (= (contains!508 (+!62 lt!14949 (tuple2!1487 lt!14962 (zeroValue!1714 lt!14740))) lt!14958) lt!15402)))

(declare-fun b!40251 () Bool)

(declare-fun lt!15401 () Unit!964)

(assert (=> b!40251 (= e!25538 lt!15401)))

(assert (=> b!40251 (= lt!15401 (lemmaContainsKeyImpliesGetValueByKeyDefined!55 (toList!549 (+!62 lt!14949 (tuple2!1487 lt!14962 (zeroValue!1714 lt!14740)))) lt!14958))))

(assert (=> b!40251 (isDefined!56 (getValueByKey!99 (toList!549 (+!62 lt!14949 (tuple2!1487 lt!14962 (zeroValue!1714 lt!14740)))) lt!14958))))

(declare-fun b!40252 () Bool)

(declare-fun Unit!979 () Unit!964)

(assert (=> b!40252 (= e!25538 Unit!979)))

(declare-fun b!40253 () Bool)

(assert (=> b!40253 (= e!25537 (isDefined!56 (getValueByKey!99 (toList!549 (+!62 lt!14949 (tuple2!1487 lt!14962 (zeroValue!1714 lt!14740)))) lt!14958)))))

(assert (= (and d!6963 c!4907) b!40251))

(assert (= (and d!6963 (not c!4907)) b!40252))

(assert (= (and d!6963 (not res!24021)) b!40253))

(declare-fun m!33125 () Bool)

(assert (=> d!6963 m!33125))

(declare-fun m!33127 () Bool)

(assert (=> b!40251 m!33127))

(declare-fun m!33129 () Bool)

(assert (=> b!40251 m!33129))

(assert (=> b!40251 m!33129))

(declare-fun m!33131 () Bool)

(assert (=> b!40251 m!33131))

(assert (=> b!40253 m!33129))

(assert (=> b!40253 m!33129))

(assert (=> b!40253 m!33131))

(assert (=> b!39571 d!6963))

(declare-fun d!6965 () Bool)

(assert (=> d!6965 (= (apply!53 (+!62 lt!14960 (tuple2!1487 lt!14948 (zeroValue!1714 lt!14740))) lt!14963) (get!698 (getValueByKey!99 (toList!549 (+!62 lt!14960 (tuple2!1487 lt!14948 (zeroValue!1714 lt!14740)))) lt!14963)))))

(declare-fun bs!1684 () Bool)

(assert (= bs!1684 d!6965))

(declare-fun m!33133 () Bool)

(assert (=> bs!1684 m!33133))

(assert (=> bs!1684 m!33133))

(declare-fun m!33135 () Bool)

(assert (=> bs!1684 m!33135))

(assert (=> b!39571 d!6965))

(declare-fun d!6967 () Bool)

(assert (=> d!6967 (= (apply!53 (+!62 lt!14959 (tuple2!1487 lt!14953 (minValue!1714 lt!14740))) lt!14947) (get!698 (getValueByKey!99 (toList!549 (+!62 lt!14959 (tuple2!1487 lt!14953 (minValue!1714 lt!14740)))) lt!14947)))))

(declare-fun bs!1685 () Bool)

(assert (= bs!1685 d!6967))

(declare-fun m!33137 () Bool)

(assert (=> bs!1685 m!33137))

(assert (=> bs!1685 m!33137))

(declare-fun m!33139 () Bool)

(assert (=> bs!1685 m!33139))

(assert (=> b!39571 d!6967))

(declare-fun d!6969 () Bool)

(declare-fun e!25539 () Bool)

(assert (=> d!6969 e!25539))

(declare-fun res!24022 () Bool)

(assert (=> d!6969 (=> (not res!24022) (not e!25539))))

(declare-fun lt!15405 () ListLongMap!1067)

(assert (=> d!6969 (= res!24022 (contains!508 lt!15405 (_1!753 (tuple2!1487 lt!14953 (minValue!1714 lt!14740)))))))

(declare-fun lt!15407 () List!1066)

(assert (=> d!6969 (= lt!15405 (ListLongMap!1068 lt!15407))))

(declare-fun lt!15406 () Unit!964)

(declare-fun lt!15408 () Unit!964)

(assert (=> d!6969 (= lt!15406 lt!15408)))

(assert (=> d!6969 (= (getValueByKey!99 lt!15407 (_1!753 (tuple2!1487 lt!14953 (minValue!1714 lt!14740)))) (Some!104 (_2!753 (tuple2!1487 lt!14953 (minValue!1714 lt!14740)))))))

(assert (=> d!6969 (= lt!15408 (lemmaContainsTupThenGetReturnValue!25 lt!15407 (_1!753 (tuple2!1487 lt!14953 (minValue!1714 lt!14740))) (_2!753 (tuple2!1487 lt!14953 (minValue!1714 lt!14740)))))))

(assert (=> d!6969 (= lt!15407 (insertStrictlySorted!22 (toList!549 lt!14959) (_1!753 (tuple2!1487 lt!14953 (minValue!1714 lt!14740))) (_2!753 (tuple2!1487 lt!14953 (minValue!1714 lt!14740)))))))

(assert (=> d!6969 (= (+!62 lt!14959 (tuple2!1487 lt!14953 (minValue!1714 lt!14740))) lt!15405)))

(declare-fun b!40254 () Bool)

(declare-fun res!24023 () Bool)

(assert (=> b!40254 (=> (not res!24023) (not e!25539))))

(assert (=> b!40254 (= res!24023 (= (getValueByKey!99 (toList!549 lt!15405) (_1!753 (tuple2!1487 lt!14953 (minValue!1714 lt!14740)))) (Some!104 (_2!753 (tuple2!1487 lt!14953 (minValue!1714 lt!14740))))))))

(declare-fun b!40255 () Bool)

(assert (=> b!40255 (= e!25539 (contains!512 (toList!549 lt!15405) (tuple2!1487 lt!14953 (minValue!1714 lt!14740))))))

(assert (= (and d!6969 res!24022) b!40254))

(assert (= (and b!40254 res!24023) b!40255))

(declare-fun m!33141 () Bool)

(assert (=> d!6969 m!33141))

(declare-fun m!33143 () Bool)

(assert (=> d!6969 m!33143))

(declare-fun m!33145 () Bool)

(assert (=> d!6969 m!33145))

(declare-fun m!33147 () Bool)

(assert (=> d!6969 m!33147))

(declare-fun m!33149 () Bool)

(assert (=> b!40254 m!33149))

(declare-fun m!33151 () Bool)

(assert (=> b!40255 m!33151))

(assert (=> b!39571 d!6969))

(assert (=> b!39571 d!6883))

(declare-fun d!6971 () Bool)

(assert (=> d!6971 (contains!508 (+!62 lt!14949 (tuple2!1487 lt!14962 (zeroValue!1714 lt!14740))) lt!14958)))

(declare-fun lt!15411 () Unit!964)

(declare-fun choose!248 (ListLongMap!1067 (_ BitVec 64) V!2093 (_ BitVec 64)) Unit!964)

(assert (=> d!6971 (= lt!15411 (choose!248 lt!14949 lt!14962 (zeroValue!1714 lt!14740) lt!14958))))

(assert (=> d!6971 (contains!508 lt!14949 lt!14958)))

(assert (=> d!6971 (= (addStillContains!29 lt!14949 lt!14962 (zeroValue!1714 lt!14740) lt!14958) lt!15411)))

(declare-fun bs!1686 () Bool)

(assert (= bs!1686 d!6971))

(assert (=> bs!1686 m!32227))

(assert (=> bs!1686 m!32227))

(assert (=> bs!1686 m!32245))

(declare-fun m!33153 () Bool)

(assert (=> bs!1686 m!33153))

(declare-fun m!33155 () Bool)

(assert (=> bs!1686 m!33155))

(assert (=> b!39571 d!6971))

(declare-fun d!6973 () Bool)

(declare-fun e!25540 () Bool)

(assert (=> d!6973 e!25540))

(declare-fun res!24024 () Bool)

(assert (=> d!6973 (=> (not res!24024) (not e!25540))))

(declare-fun lt!15412 () ListLongMap!1067)

(assert (=> d!6973 (= res!24024 (contains!508 lt!15412 (_1!753 (tuple2!1487 lt!14966 (minValue!1714 lt!14740)))))))

(declare-fun lt!15414 () List!1066)

(assert (=> d!6973 (= lt!15412 (ListLongMap!1068 lt!15414))))

(declare-fun lt!15413 () Unit!964)

(declare-fun lt!15415 () Unit!964)

(assert (=> d!6973 (= lt!15413 lt!15415)))

(assert (=> d!6973 (= (getValueByKey!99 lt!15414 (_1!753 (tuple2!1487 lt!14966 (minValue!1714 lt!14740)))) (Some!104 (_2!753 (tuple2!1487 lt!14966 (minValue!1714 lt!14740)))))))

(assert (=> d!6973 (= lt!15415 (lemmaContainsTupThenGetReturnValue!25 lt!15414 (_1!753 (tuple2!1487 lt!14966 (minValue!1714 lt!14740))) (_2!753 (tuple2!1487 lt!14966 (minValue!1714 lt!14740)))))))

(assert (=> d!6973 (= lt!15414 (insertStrictlySorted!22 (toList!549 lt!14952) (_1!753 (tuple2!1487 lt!14966 (minValue!1714 lt!14740))) (_2!753 (tuple2!1487 lt!14966 (minValue!1714 lt!14740)))))))

(assert (=> d!6973 (= (+!62 lt!14952 (tuple2!1487 lt!14966 (minValue!1714 lt!14740))) lt!15412)))

(declare-fun b!40257 () Bool)

(declare-fun res!24025 () Bool)

(assert (=> b!40257 (=> (not res!24025) (not e!25540))))

(assert (=> b!40257 (= res!24025 (= (getValueByKey!99 (toList!549 lt!15412) (_1!753 (tuple2!1487 lt!14966 (minValue!1714 lt!14740)))) (Some!104 (_2!753 (tuple2!1487 lt!14966 (minValue!1714 lt!14740))))))))

(declare-fun b!40258 () Bool)

(assert (=> b!40258 (= e!25540 (contains!512 (toList!549 lt!15412) (tuple2!1487 lt!14966 (minValue!1714 lt!14740))))))

(assert (= (and d!6973 res!24024) b!40257))

(assert (= (and b!40257 res!24025) b!40258))

(declare-fun m!33157 () Bool)

(assert (=> d!6973 m!33157))

(declare-fun m!33159 () Bool)

(assert (=> d!6973 m!33159))

(declare-fun m!33161 () Bool)

(assert (=> d!6973 m!33161))

(declare-fun m!33163 () Bool)

(assert (=> d!6973 m!33163))

(declare-fun m!33165 () Bool)

(assert (=> b!40257 m!33165))

(declare-fun m!33167 () Bool)

(assert (=> b!40258 m!33167))

(assert (=> b!39571 d!6973))

(declare-fun d!6975 () Bool)

(assert (=> d!6975 (= (apply!53 lt!14960 lt!14963) (get!698 (getValueByKey!99 (toList!549 lt!14960) lt!14963)))))

(declare-fun bs!1687 () Bool)

(assert (= bs!1687 d!6975))

(declare-fun m!33169 () Bool)

(assert (=> bs!1687 m!33169))

(assert (=> bs!1687 m!33169))

(declare-fun m!33171 () Bool)

(assert (=> bs!1687 m!33171))

(assert (=> b!39571 d!6975))

(declare-fun d!6977 () Bool)

(assert (=> d!6977 (= (apply!53 (+!62 lt!14952 (tuple2!1487 lt!14966 (minValue!1714 lt!14740))) lt!14967) (get!698 (getValueByKey!99 (toList!549 (+!62 lt!14952 (tuple2!1487 lt!14966 (minValue!1714 lt!14740)))) lt!14967)))))

(declare-fun bs!1688 () Bool)

(assert (= bs!1688 d!6977))

(declare-fun m!33173 () Bool)

(assert (=> bs!1688 m!33173))

(assert (=> bs!1688 m!33173))

(declare-fun m!33175 () Bool)

(assert (=> bs!1688 m!33175))

(assert (=> b!39571 d!6977))

(declare-fun d!6979 () Bool)

(assert (=> d!6979 (= (apply!53 (+!62 lt!14960 (tuple2!1487 lt!14948 (zeroValue!1714 lt!14740))) lt!14963) (apply!53 lt!14960 lt!14963))))

(declare-fun lt!15418 () Unit!964)

(declare-fun choose!249 (ListLongMap!1067 (_ BitVec 64) V!2093 (_ BitVec 64)) Unit!964)

(assert (=> d!6979 (= lt!15418 (choose!249 lt!14960 lt!14948 (zeroValue!1714 lt!14740) lt!14963))))

(declare-fun e!25543 () Bool)

(assert (=> d!6979 e!25543))

(declare-fun res!24028 () Bool)

(assert (=> d!6979 (=> (not res!24028) (not e!25543))))

(assert (=> d!6979 (= res!24028 (contains!508 lt!14960 lt!14963))))

(assert (=> d!6979 (= (addApplyDifferent!29 lt!14960 lt!14948 (zeroValue!1714 lt!14740) lt!14963) lt!15418)))

(declare-fun b!40262 () Bool)

(assert (=> b!40262 (= e!25543 (not (= lt!14963 lt!14948)))))

(assert (= (and d!6979 res!24028) b!40262))

(declare-fun m!33177 () Bool)

(assert (=> d!6979 m!33177))

(assert (=> d!6979 m!32253))

(assert (=> d!6979 m!32229))

(assert (=> d!6979 m!32229))

(assert (=> d!6979 m!32231))

(declare-fun m!33179 () Bool)

(assert (=> d!6979 m!33179))

(assert (=> b!39571 d!6979))

(declare-fun d!6981 () Bool)

(assert (=> d!6981 (= (apply!53 (+!62 lt!14959 (tuple2!1487 lt!14953 (minValue!1714 lt!14740))) lt!14947) (apply!53 lt!14959 lt!14947))))

(declare-fun lt!15419 () Unit!964)

(assert (=> d!6981 (= lt!15419 (choose!249 lt!14959 lt!14953 (minValue!1714 lt!14740) lt!14947))))

(declare-fun e!25544 () Bool)

(assert (=> d!6981 e!25544))

(declare-fun res!24029 () Bool)

(assert (=> d!6981 (=> (not res!24029) (not e!25544))))

(assert (=> d!6981 (= res!24029 (contains!508 lt!14959 lt!14947))))

(assert (=> d!6981 (= (addApplyDifferent!29 lt!14959 lt!14953 (minValue!1714 lt!14740) lt!14947) lt!15419)))

(declare-fun b!40263 () Bool)

(assert (=> b!40263 (= e!25544 (not (= lt!14947 lt!14953)))))

(assert (= (and d!6981 res!24029) b!40263))

(declare-fun m!33181 () Bool)

(assert (=> d!6981 m!33181))

(assert (=> d!6981 m!32233))

(assert (=> d!6981 m!32241))

(assert (=> d!6981 m!32241))

(assert (=> d!6981 m!32243))

(declare-fun m!33183 () Bool)

(assert (=> d!6981 m!33183))

(assert (=> b!39571 d!6981))

(declare-fun d!6983 () Bool)

(declare-fun e!25545 () Bool)

(assert (=> d!6983 e!25545))

(declare-fun res!24030 () Bool)

(assert (=> d!6983 (=> (not res!24030) (not e!25545))))

(declare-fun lt!15420 () ListLongMap!1067)

(assert (=> d!6983 (= res!24030 (contains!508 lt!15420 (_1!753 (tuple2!1487 lt!14962 (zeroValue!1714 lt!14740)))))))

(declare-fun lt!15422 () List!1066)

(assert (=> d!6983 (= lt!15420 (ListLongMap!1068 lt!15422))))

(declare-fun lt!15421 () Unit!964)

(declare-fun lt!15423 () Unit!964)

(assert (=> d!6983 (= lt!15421 lt!15423)))

(assert (=> d!6983 (= (getValueByKey!99 lt!15422 (_1!753 (tuple2!1487 lt!14962 (zeroValue!1714 lt!14740)))) (Some!104 (_2!753 (tuple2!1487 lt!14962 (zeroValue!1714 lt!14740)))))))

(assert (=> d!6983 (= lt!15423 (lemmaContainsTupThenGetReturnValue!25 lt!15422 (_1!753 (tuple2!1487 lt!14962 (zeroValue!1714 lt!14740))) (_2!753 (tuple2!1487 lt!14962 (zeroValue!1714 lt!14740)))))))

(assert (=> d!6983 (= lt!15422 (insertStrictlySorted!22 (toList!549 lt!14949) (_1!753 (tuple2!1487 lt!14962 (zeroValue!1714 lt!14740))) (_2!753 (tuple2!1487 lt!14962 (zeroValue!1714 lt!14740)))))))

(assert (=> d!6983 (= (+!62 lt!14949 (tuple2!1487 lt!14962 (zeroValue!1714 lt!14740))) lt!15420)))

(declare-fun b!40264 () Bool)

(declare-fun res!24031 () Bool)

(assert (=> b!40264 (=> (not res!24031) (not e!25545))))

(assert (=> b!40264 (= res!24031 (= (getValueByKey!99 (toList!549 lt!15420) (_1!753 (tuple2!1487 lt!14962 (zeroValue!1714 lt!14740)))) (Some!104 (_2!753 (tuple2!1487 lt!14962 (zeroValue!1714 lt!14740))))))))

(declare-fun b!40265 () Bool)

(assert (=> b!40265 (= e!25545 (contains!512 (toList!549 lt!15420) (tuple2!1487 lt!14962 (zeroValue!1714 lt!14740))))))

(assert (= (and d!6983 res!24030) b!40264))

(assert (= (and b!40264 res!24031) b!40265))

(declare-fun m!33185 () Bool)

(assert (=> d!6983 m!33185))

(declare-fun m!33187 () Bool)

(assert (=> d!6983 m!33187))

(declare-fun m!33189 () Bool)

(assert (=> d!6983 m!33189))

(declare-fun m!33191 () Bool)

(assert (=> d!6983 m!33191))

(declare-fun m!33193 () Bool)

(assert (=> b!40264 m!33193))

(declare-fun m!33195 () Bool)

(assert (=> b!40265 m!33195))

(assert (=> b!39571 d!6983))

(declare-fun d!6985 () Bool)

(assert (=> d!6985 (= (apply!53 (+!62 lt!14952 (tuple2!1487 lt!14966 (minValue!1714 lt!14740))) lt!14967) (apply!53 lt!14952 lt!14967))))

(declare-fun lt!15424 () Unit!964)

(assert (=> d!6985 (= lt!15424 (choose!249 lt!14952 lt!14966 (minValue!1714 lt!14740) lt!14967))))

