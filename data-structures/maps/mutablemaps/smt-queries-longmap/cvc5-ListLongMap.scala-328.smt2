; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!5956 () Bool)

(assert start!5956)

(declare-fun b_free!1429 () Bool)

(declare-fun b_next!1429 () Bool)

(assert (=> start!5956 (= b_free!1429 (not b_next!1429))))

(declare-fun tp!5831 () Bool)

(declare-fun b_and!2517 () Bool)

(assert (=> start!5956 (= tp!5831 b_and!2517)))

(declare-fun b!41796 () Bool)

(declare-fun e!26414 () Bool)

(declare-fun e!26415 () Bool)

(assert (=> b!41796 (= e!26414 (not e!26415))))

(declare-fun res!24900 () Bool)

(assert (=> b!41796 (=> res!24900 e!26415)))

(declare-datatypes ((V!2185 0))(
  ( (V!2186 (val!948 Int)) )
))
(declare-datatypes ((tuple2!1554 0))(
  ( (tuple2!1555 (_1!787 (_ BitVec 64)) (_2!787 V!2185)) )
))
(declare-datatypes ((List!1134 0))(
  ( (Nil!1131) (Cons!1130 (h!1707 tuple2!1554) (t!4067 List!1134)) )
))
(declare-datatypes ((ListLongMap!1135 0))(
  ( (ListLongMap!1136 (toList!583 List!1134)) )
))
(declare-fun lt!16917 () ListLongMap!1135)

(assert (=> b!41796 (= res!24900 (= lt!16917 (ListLongMap!1136 Nil!1131)))))

(declare-datatypes ((array!2719 0))(
  ( (array!2720 (arr!1303 (Array (_ BitVec 32) (_ BitVec 64))) (size!1455 (_ BitVec 32))) )
))
(declare-fun lt!16913 () array!2719)

(declare-fun defaultEntry!470 () Int)

(declare-datatypes ((ValueCell!662 0))(
  ( (ValueCellFull!662 (v!2031 V!2185)) (EmptyCell!662) )
))
(declare-datatypes ((array!2721 0))(
  ( (array!2722 (arr!1304 (Array (_ BitVec 32) ValueCell!662)) (size!1456 (_ BitVec 32))) )
))
(declare-fun lt!16916 () array!2721)

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun lt!16919 () V!2185)

(declare-datatypes ((LongMapFixedSize!304 0))(
  ( (LongMapFixedSize!305 (defaultEntry!1842 Int) (mask!5261 (_ BitVec 32)) (extraKeys!1733 (_ BitVec 32)) (zeroValue!1760 V!2185) (minValue!1760 V!2185) (_size!201 (_ BitVec 32)) (_keys!3349 array!2719) (_values!1825 array!2721) (_vacant!201 (_ BitVec 32))) )
))
(declare-fun map!747 (LongMapFixedSize!304) ListLongMap!1135)

(assert (=> b!41796 (= lt!16917 (map!747 (LongMapFixedSize!305 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!16919 lt!16919 #b00000000000000000000000000000000 lt!16913 lt!16916 #b00000000000000000000000000000000)))))

(declare-datatypes ((List!1135 0))(
  ( (Nil!1132) (Cons!1131 (h!1708 (_ BitVec 64)) (t!4068 List!1135)) )
))
(declare-fun arrayNoDuplicates!0 (array!2719 (_ BitVec 32) List!1135) Bool)

(assert (=> b!41796 (arrayNoDuplicates!0 lt!16913 #b00000000000000000000000000000000 Nil!1132)))

(declare-datatypes ((Unit!1061 0))(
  ( (Unit!1062) )
))
(declare-fun lt!16921 () Unit!1061)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2719 (_ BitVec 32) (_ BitVec 32) List!1135) Unit!1061)

(assert (=> b!41796 (= lt!16921 (lemmaArrayNoDuplicatesInAll0Array!0 lt!16913 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1132))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2719 (_ BitVec 32)) Bool)

(assert (=> b!41796 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!16913 mask!853)))

(declare-fun lt!16920 () Unit!1061)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2719 (_ BitVec 32) (_ BitVec 32)) Unit!1061)

(assert (=> b!41796 (= lt!16920 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!16913 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2719 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!41796 (= (arrayCountValidKeys!0 lt!16913 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!16915 () Unit!1061)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2719 (_ BitVec 32) (_ BitVec 32)) Unit!1061)

(assert (=> b!41796 (= lt!16915 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!16913 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!41796 (= lt!16916 (array!2722 ((as const (Array (_ BitVec 32) ValueCell!662)) EmptyCell!662) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!41796 (= lt!16913 (array!2720 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!223 (Int (_ BitVec 64)) V!2185)

(assert (=> b!41796 (= lt!16919 (dynLambda!223 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!41798 () Bool)

(assert (=> b!41798 (= e!26415 (and (bvslt #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) (bvslt (bvadd #b00000000000000000000000000000001 mask!853) #b01111111111111111111111111111111)))))

(declare-fun e!26413 () Bool)

(assert (=> b!41798 e!26413))

(declare-fun res!24901 () Bool)

(assert (=> b!41798 (=> (not res!24901) (not e!26413))))

(declare-fun lt!16918 () tuple2!1554)

(assert (=> b!41798 (= res!24901 (and (not (= (_1!787 lt!16918) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (_1!787 lt!16918) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!16914 () Unit!1061)

(declare-fun lemmaKeyInListMapIsInArray!96 (array!2719 array!2721 (_ BitVec 32) (_ BitVec 32) V!2185 V!2185 (_ BitVec 64) Int) Unit!1061)

(assert (=> b!41798 (= lt!16914 (lemmaKeyInListMapIsInArray!96 lt!16913 lt!16916 mask!853 #b00000000000000000000000000000000 lt!16919 lt!16919 (_1!787 lt!16918) defaultEntry!470))))

(declare-fun head!878 (List!1134) tuple2!1554)

(assert (=> b!41798 (= lt!16918 (head!878 (toList!583 lt!16917)))))

(declare-fun res!24898 () Bool)

(assert (=> start!5956 (=> (not res!24898) (not e!26414))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!5956 (= res!24898 (validMask!0 mask!853))))

(assert (=> start!5956 e!26414))

(assert (=> start!5956 true))

(assert (=> start!5956 tp!5831))

(declare-fun b!41799 () Bool)

(declare-fun arrayContainsKey!0 (array!2719 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!41799 (= e!26413 (arrayContainsKey!0 lt!16913 (_1!787 lt!16918) #b00000000000000000000000000000000))))

(declare-fun b!41797 () Bool)

(declare-fun res!24899 () Bool)

(assert (=> b!41797 (=> res!24899 e!26415)))

(declare-fun isEmpty!268 (List!1134) Bool)

(assert (=> b!41797 (= res!24899 (isEmpty!268 (toList!583 lt!16917)))))

(assert (= (and start!5956 res!24898) b!41796))

(assert (= (and b!41796 (not res!24900)) b!41797))

(assert (= (and b!41797 (not res!24899)) b!41798))

(assert (= (and b!41798 res!24901) b!41799))

(declare-fun b_lambda!2173 () Bool)

(assert (=> (not b_lambda!2173) (not b!41796)))

(declare-fun t!4066 () Bool)

(declare-fun tb!919 () Bool)

(assert (=> (and start!5956 (= defaultEntry!470 defaultEntry!470) t!4066) tb!919))

(declare-fun result!1581 () Bool)

(declare-fun tp_is_empty!1819 () Bool)

(assert (=> tb!919 (= result!1581 tp_is_empty!1819)))

(assert (=> b!41796 t!4066))

(declare-fun b_and!2519 () Bool)

(assert (= b_and!2517 (and (=> t!4066 result!1581) b_and!2519)))

(declare-fun m!35345 () Bool)

(assert (=> start!5956 m!35345))

(declare-fun m!35347 () Bool)

(assert (=> b!41796 m!35347))

(declare-fun m!35349 () Bool)

(assert (=> b!41796 m!35349))

(declare-fun m!35351 () Bool)

(assert (=> b!41796 m!35351))

(declare-fun m!35353 () Bool)

(assert (=> b!41796 m!35353))

(declare-fun m!35355 () Bool)

(assert (=> b!41796 m!35355))

(declare-fun m!35357 () Bool)

(assert (=> b!41796 m!35357))

(declare-fun m!35359 () Bool)

(assert (=> b!41796 m!35359))

(declare-fun m!35361 () Bool)

(assert (=> b!41796 m!35361))

(declare-fun m!35363 () Bool)

(assert (=> b!41798 m!35363))

(declare-fun m!35365 () Bool)

(assert (=> b!41798 m!35365))

(declare-fun m!35367 () Bool)

(assert (=> b!41799 m!35367))

(declare-fun m!35369 () Bool)

(assert (=> b!41797 m!35369))

(push 1)

(assert (not b!41799))

(assert tp_is_empty!1819)

(assert b_and!2519)

(assert (not b!41796))

(assert (not b!41798))

(assert (not start!5956))

(assert (not b_next!1429))

(assert (not b_lambda!2173))

(assert (not b!41797))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2519)

(assert (not b_next!1429))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!2181 () Bool)

(assert (= b_lambda!2173 (or (and start!5956 b_free!1429) b_lambda!2181)))

(push 1)

(assert (not b_lambda!2181))

(assert (not b!41799))

(assert tp_is_empty!1819)

(assert b_and!2519)

(assert (not b!41796))

(assert (not b!41797))

(assert (not b!41798))

(assert (not start!5956))

(assert (not b_next!1429))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2519)

(assert (not b_next!1429))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!7481 () Bool)

(assert (=> d!7481 (arrayNoDuplicates!0 lt!16913 #b00000000000000000000000000000000 Nil!1132)))

(declare-fun lt!16981 () Unit!1061)

(declare-fun choose!111 (array!2719 (_ BitVec 32) (_ BitVec 32) List!1135) Unit!1061)

(assert (=> d!7481 (= lt!16981 (choose!111 lt!16913 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1132))))

(assert (=> d!7481 (= (size!1455 lt!16913) (bvadd #b00000000000000000000000000000001 mask!853))))

(assert (=> d!7481 (= (lemmaArrayNoDuplicatesInAll0Array!0 lt!16913 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1132) lt!16981)))

(declare-fun bs!1790 () Bool)

(assert (= bs!1790 d!7481))

(assert (=> bs!1790 m!35353))

(declare-fun m!35425 () Bool)

(assert (=> bs!1790 m!35425))

(assert (=> b!41796 d!7481))

(declare-fun d!7485 () Bool)

(declare-fun getCurrentListMap!341 (array!2719 array!2721 (_ BitVec 32) (_ BitVec 32) V!2185 V!2185 (_ BitVec 32) Int) ListLongMap!1135)

(assert (=> d!7485 (= (map!747 (LongMapFixedSize!305 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!16919 lt!16919 #b00000000000000000000000000000000 lt!16913 lt!16916 #b00000000000000000000000000000000)) (getCurrentListMap!341 (_keys!3349 (LongMapFixedSize!305 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!16919 lt!16919 #b00000000000000000000000000000000 lt!16913 lt!16916 #b00000000000000000000000000000000)) (_values!1825 (LongMapFixedSize!305 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!16919 lt!16919 #b00000000000000000000000000000000 lt!16913 lt!16916 #b00000000000000000000000000000000)) (mask!5261 (LongMapFixedSize!305 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!16919 lt!16919 #b00000000000000000000000000000000 lt!16913 lt!16916 #b00000000000000000000000000000000)) (extraKeys!1733 (LongMapFixedSize!305 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!16919 lt!16919 #b00000000000000000000000000000000 lt!16913 lt!16916 #b00000000000000000000000000000000)) (zeroValue!1760 (LongMapFixedSize!305 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!16919 lt!16919 #b00000000000000000000000000000000 lt!16913 lt!16916 #b00000000000000000000000000000000)) (minValue!1760 (LongMapFixedSize!305 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!16919 lt!16919 #b00000000000000000000000000000000 lt!16913 lt!16916 #b00000000000000000000000000000000)) #b00000000000000000000000000000000 (defaultEntry!1842 (LongMapFixedSize!305 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!16919 lt!16919 #b00000000000000000000000000000000 lt!16913 lt!16916 #b00000000000000000000000000000000))))))

(declare-fun bs!1791 () Bool)

(assert (= bs!1791 d!7485))

(declare-fun m!35433 () Bool)

(assert (=> bs!1791 m!35433))

(assert (=> b!41796 d!7485))

(declare-fun bm!3239 () Bool)

(declare-fun call!3242 () Bool)

(declare-fun c!5221 () Bool)

(assert (=> bm!3239 (= call!3242 (arrayNoDuplicates!0 lt!16913 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!5221 (Cons!1131 (select (arr!1303 lt!16913) #b00000000000000000000000000000000) Nil!1132) Nil!1132)))))

(declare-fun b!41873 () Bool)

(declare-fun e!26467 () Bool)

(declare-fun e!26466 () Bool)

(assert (=> b!41873 (= e!26467 e!26466)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!41873 (= c!5221 (validKeyInArray!0 (select (arr!1303 lt!16913) #b00000000000000000000000000000000)))))

(declare-fun d!7491 () Bool)

(declare-fun res!24949 () Bool)

(declare-fun e!26468 () Bool)

(assert (=> d!7491 (=> res!24949 e!26468)))

(assert (=> d!7491 (= res!24949 (bvsge #b00000000000000000000000000000000 (size!1455 lt!16913)))))

(assert (=> d!7491 (= (arrayNoDuplicates!0 lt!16913 #b00000000000000000000000000000000 Nil!1132) e!26468)))

(declare-fun b!41874 () Bool)

(assert (=> b!41874 (= e!26466 call!3242)))

(declare-fun b!41875 () Bool)

(assert (=> b!41875 (= e!26468 e!26467)))

(declare-fun res!24948 () Bool)

(assert (=> b!41875 (=> (not res!24948) (not e!26467))))

(declare-fun e!26469 () Bool)

(assert (=> b!41875 (= res!24948 (not e!26469))))

(declare-fun res!24947 () Bool)

(assert (=> b!41875 (=> (not res!24947) (not e!26469))))

(assert (=> b!41875 (= res!24947 (validKeyInArray!0 (select (arr!1303 lt!16913) #b00000000000000000000000000000000)))))

(declare-fun b!41876 () Bool)

(declare-fun contains!549 (List!1135 (_ BitVec 64)) Bool)

(assert (=> b!41876 (= e!26469 (contains!549 Nil!1132 (select (arr!1303 lt!16913) #b00000000000000000000000000000000)))))

(declare-fun b!41877 () Bool)

(assert (=> b!41877 (= e!26466 call!3242)))

(assert (= (and d!7491 (not res!24949)) b!41875))

(assert (= (and b!41875 res!24947) b!41876))

(assert (= (and b!41875 res!24948) b!41873))

(assert (= (and b!41873 c!5221) b!41877))

(assert (= (and b!41873 (not c!5221)) b!41874))

(assert (= (or b!41877 b!41874) bm!3239))

(declare-fun m!35439 () Bool)

(assert (=> bm!3239 m!35439))

(declare-fun m!35443 () Bool)

(assert (=> bm!3239 m!35443))

(assert (=> b!41873 m!35439))

(assert (=> b!41873 m!35439))

(declare-fun m!35447 () Bool)

(assert (=> b!41873 m!35447))

(assert (=> b!41875 m!35439))

(assert (=> b!41875 m!35439))

(assert (=> b!41875 m!35447))

(assert (=> b!41876 m!35439))

(assert (=> b!41876 m!35439))

(declare-fun m!35449 () Bool)

(assert (=> b!41876 m!35449))

(assert (=> b!41796 d!7491))

(declare-fun d!7499 () Bool)

(declare-fun res!24955 () Bool)

(declare-fun e!26481 () Bool)

(assert (=> d!7499 (=> res!24955 e!26481)))

(assert (=> d!7499 (= res!24955 (bvsge #b00000000000000000000000000000000 (size!1455 lt!16913)))))

(assert (=> d!7499 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!16913 mask!853) e!26481)))

(declare-fun b!41892 () Bool)

(declare-fun e!26480 () Bool)

(declare-fun call!3245 () Bool)

(assert (=> b!41892 (= e!26480 call!3245)))

(declare-fun bm!3242 () Bool)

(assert (=> bm!3242 (= call!3245 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!16913 mask!853))))

(declare-fun b!41893 () Bool)

(declare-fun e!26479 () Bool)

(assert (=> b!41893 (= e!26481 e!26479)))

(declare-fun c!5227 () Bool)

(assert (=> b!41893 (= c!5227 (validKeyInArray!0 (select (arr!1303 lt!16913) #b00000000000000000000000000000000)))))

(declare-fun b!41894 () Bool)

(assert (=> b!41894 (= e!26479 e!26480)))

(declare-fun lt!16997 () (_ BitVec 64))

(assert (=> b!41894 (= lt!16997 (select (arr!1303 lt!16913) #b00000000000000000000000000000000))))

(declare-fun lt!16998 () Unit!1061)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!2719 (_ BitVec 64) (_ BitVec 32)) Unit!1061)

(assert (=> b!41894 (= lt!16998 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!16913 lt!16997 #b00000000000000000000000000000000))))

(assert (=> b!41894 (arrayContainsKey!0 lt!16913 lt!16997 #b00000000000000000000000000000000)))

(declare-fun lt!16999 () Unit!1061)

(assert (=> b!41894 (= lt!16999 lt!16998)))

(declare-fun res!24954 () Bool)

(declare-datatypes ((SeekEntryResult!186 0))(
  ( (MissingZero!186 (index!2866 (_ BitVec 32))) (Found!186 (index!2867 (_ BitVec 32))) (Intermediate!186 (undefined!998 Bool) (index!2868 (_ BitVec 32)) (x!7956 (_ BitVec 32))) (Undefined!186) (MissingVacant!186 (index!2869 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!2719 (_ BitVec 32)) SeekEntryResult!186)

(assert (=> b!41894 (= res!24954 (= (seekEntryOrOpen!0 (select (arr!1303 lt!16913) #b00000000000000000000000000000000) lt!16913 mask!853) (Found!186 #b00000000000000000000000000000000)))))

(assert (=> b!41894 (=> (not res!24954) (not e!26480))))

(declare-fun b!41895 () Bool)

(assert (=> b!41895 (= e!26479 call!3245)))

(assert (= (and d!7499 (not res!24955)) b!41893))

(assert (= (and b!41893 c!5227) b!41894))

(assert (= (and b!41893 (not c!5227)) b!41895))

(assert (= (and b!41894 res!24954) b!41892))

(assert (= (or b!41892 b!41895) bm!3242))

(declare-fun m!35455 () Bool)

(assert (=> bm!3242 m!35455))

(assert (=> b!41893 m!35439))

(assert (=> b!41893 m!35439))

(assert (=> b!41893 m!35447))

(assert (=> b!41894 m!35439))

(declare-fun m!35457 () Bool)

(assert (=> b!41894 m!35457))

(declare-fun m!35459 () Bool)

(assert (=> b!41894 m!35459))

(assert (=> b!41894 m!35439))

(declare-fun m!35461 () Bool)

(assert (=> b!41894 m!35461))

(assert (=> b!41796 d!7499))

(declare-fun d!7509 () Bool)

(assert (=> d!7509 (= (arrayCountValidKeys!0 lt!16913 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!17002 () Unit!1061)

(declare-fun choose!59 (array!2719 (_ BitVec 32) (_ BitVec 32)) Unit!1061)

(assert (=> d!7509 (= lt!17002 (choose!59 lt!16913 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!7509 (bvslt (size!1455 lt!16913) #b01111111111111111111111111111111)))

(assert (=> d!7509 (= (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!16913 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) lt!17002)))

(declare-fun bs!1794 () Bool)

(assert (= bs!1794 d!7509))

(assert (=> bs!1794 m!35357))

(declare-fun m!35465 () Bool)

(assert (=> bs!1794 m!35465))

(assert (=> b!41796 d!7509))

(declare-fun bm!3245 () Bool)

(declare-fun call!3248 () (_ BitVec 32))

(assert (=> bm!3245 (= call!3248 (arrayCountValidKeys!0 lt!16913 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun b!41904 () Bool)

(declare-fun e!26487 () (_ BitVec 32))

(assert (=> b!41904 (= e!26487 #b00000000000000000000000000000000)))

(declare-fun b!41905 () Bool)

(declare-fun e!26486 () (_ BitVec 32))

(assert (=> b!41905 (= e!26486 call!3248)))

(declare-fun d!7513 () Bool)

(declare-fun lt!17008 () (_ BitVec 32))

(assert (=> d!7513 (and (bvsge lt!17008 #b00000000000000000000000000000000) (bvsle lt!17008 (bvsub (size!1455 lt!16913) #b00000000000000000000000000000000)))))

(assert (=> d!7513 (= lt!17008 e!26487)))

(declare-fun c!5233 () Bool)

(assert (=> d!7513 (= c!5233 (bvsge #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!7513 (and (bvsle #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 mask!853) (size!1455 lt!16913)))))

(assert (=> d!7513 (= (arrayCountValidKeys!0 lt!16913 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) lt!17008)))

(declare-fun b!41906 () Bool)

(assert (=> b!41906 (= e!26487 e!26486)))

(declare-fun c!5232 () Bool)

(assert (=> b!41906 (= c!5232 (validKeyInArray!0 (select (arr!1303 lt!16913) #b00000000000000000000000000000000)))))

(declare-fun b!41907 () Bool)

(assert (=> b!41907 (= e!26486 (bvadd #b00000000000000000000000000000001 call!3248))))

(assert (= (and d!7513 c!5233) b!41904))

(assert (= (and d!7513 (not c!5233)) b!41906))

(assert (= (and b!41906 c!5232) b!41907))

(assert (= (and b!41906 (not c!5232)) b!41905))

(assert (= (or b!41907 b!41905) bm!3245))

(declare-fun m!35471 () Bool)

(assert (=> bm!3245 m!35471))

(assert (=> b!41906 m!35439))

(assert (=> b!41906 m!35439))

(assert (=> b!41906 m!35447))

(assert (=> b!41796 d!7513))

(declare-fun d!7519 () Bool)

(assert (=> d!7519 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!16913 mask!853)))

(declare-fun lt!17023 () Unit!1061)

(declare-fun choose!34 (array!2719 (_ BitVec 32) (_ BitVec 32)) Unit!1061)

(assert (=> d!7519 (= lt!17023 (choose!34 lt!16913 mask!853 #b00000000000000000000000000000000))))

(assert (=> d!7519 (validMask!0 mask!853)))

(assert (=> d!7519 (= (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!16913 mask!853 #b00000000000000000000000000000000) lt!17023)))

(declare-fun bs!1797 () Bool)

(assert (= bs!1797 d!7519))

(assert (=> bs!1797 m!35349))

(declare-fun m!35473 () Bool)

(assert (=> bs!1797 m!35473))

(assert (=> bs!1797 m!35345))

(assert (=> b!41796 d!7519))

(declare-fun d!7521 () Bool)

(declare-fun res!24976 () Bool)

(declare-fun e!26514 () Bool)

(assert (=> d!7521 (=> res!24976 e!26514)))

(assert (=> d!7521 (= res!24976 (= (select (arr!1303 lt!16913) #b00000000000000000000000000000000) (_1!787 lt!16918)))))

(assert (=> d!7521 (= (arrayContainsKey!0 lt!16913 (_1!787 lt!16918) #b00000000000000000000000000000000) e!26514)))

(declare-fun b!41940 () Bool)

(declare-fun e!26515 () Bool)

(assert (=> b!41940 (= e!26514 e!26515)))

(declare-fun res!24977 () Bool)

(assert (=> b!41940 (=> (not res!24977) (not e!26515))))

(assert (=> b!41940 (= res!24977 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1455 lt!16913)))))

(declare-fun b!41941 () Bool)

(assert (=> b!41941 (= e!26515 (arrayContainsKey!0 lt!16913 (_1!787 lt!16918) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!7521 (not res!24976)) b!41940))

(assert (= (and b!41940 res!24977) b!41941))

(assert (=> d!7521 m!35439))

(declare-fun m!35493 () Bool)

(assert (=> b!41941 m!35493))

(assert (=> b!41799 d!7521))

(declare-fun d!7527 () Bool)

(assert (=> d!7527 (= (validMask!0 mask!853) (and (or (= mask!853 #b00000000000000000000000000000111) (= mask!853 #b00000000000000000000000000001111) (= mask!853 #b00000000000000000000000000011111) (= mask!853 #b00000000000000000000000000111111) (= mask!853 #b00000000000000000000000001111111) (= mask!853 #b00000000000000000000000011111111) (= mask!853 #b00000000000000000000000111111111) (= mask!853 #b00000000000000000000001111111111) (= mask!853 #b00000000000000000000011111111111) (= mask!853 #b00000000000000000000111111111111) (= mask!853 #b00000000000000000001111111111111) (= mask!853 #b00000000000000000011111111111111) (= mask!853 #b00000000000000000111111111111111) (= mask!853 #b00000000000000001111111111111111) (= mask!853 #b00000000000000011111111111111111) (= mask!853 #b00000000000000111111111111111111) (= mask!853 #b00000000000001111111111111111111) (= mask!853 #b00000000000011111111111111111111) (= mask!853 #b00000000000111111111111111111111) (= mask!853 #b00000000001111111111111111111111) (= mask!853 #b00000000011111111111111111111111) (= mask!853 #b00000000111111111111111111111111) (= mask!853 #b00000001111111111111111111111111) (= mask!853 #b00000011111111111111111111111111) (= mask!853 #b00000111111111111111111111111111) (= mask!853 #b00001111111111111111111111111111) (= mask!853 #b00011111111111111111111111111111) (= mask!853 #b00111111111111111111111111111111)) (bvsle mask!853 #b00111111111111111111111111111111)))))

(assert (=> start!5956 d!7527))

(declare-fun d!7533 () Bool)

(declare-fun e!26540 () Bool)

(assert (=> d!7533 e!26540))

(declare-fun c!5253 () Bool)

(assert (=> d!7533 (= c!5253 (and (not (= (_1!787 lt!16918) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (_1!787 lt!16918) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!17040 () Unit!1061)

(declare-fun choose!258 (array!2719 array!2721 (_ BitVec 32) (_ BitVec 32) V!2185 V!2185 (_ BitVec 64) Int) Unit!1061)

(assert (=> d!7533 (= lt!17040 (choose!258 lt!16913 lt!16916 mask!853 #b00000000000000000000000000000000 lt!16919 lt!16919 (_1!787 lt!16918) defaultEntry!470))))

(assert (=> d!7533 (validMask!0 mask!853)))

(assert (=> d!7533 (= (lemmaKeyInListMapIsInArray!96 lt!16913 lt!16916 mask!853 #b00000000000000000000000000000000 lt!16919 lt!16919 (_1!787 lt!16918) defaultEntry!470) lt!17040)))

(declare-fun b!41979 () Bool)

(assert (=> b!41979 (= e!26540 (arrayContainsKey!0 lt!16913 (_1!787 lt!16918) #b00000000000000000000000000000000))))

(declare-fun b!41980 () Bool)

(assert (=> b!41980 (= e!26540 (ite (= (_1!787 lt!16918) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand #b00000000000000000000000000000000 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!7533 c!5253) b!41979))

(assert (= (and d!7533 (not c!5253)) b!41980))

(declare-fun m!35505 () Bool)

(assert (=> d!7533 m!35505))

(assert (=> d!7533 m!35345))

(assert (=> b!41979 m!35367))

(assert (=> b!41798 d!7533))

(declare-fun d!7541 () Bool)

(assert (=> d!7541 (= (head!878 (toList!583 lt!16917)) (h!1707 (toList!583 lt!16917)))))

(assert (=> b!41798 d!7541))

(declare-fun d!7545 () Bool)

(assert (=> d!7545 (= (isEmpty!268 (toList!583 lt!16917)) (is-Nil!1131 (toList!583 lt!16917)))))

(assert (=> b!41797 d!7545))

(push 1)

