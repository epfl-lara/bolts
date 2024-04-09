; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!91698 () Bool)

(assert start!91698)

(declare-fun b!1043448 () Bool)

(declare-fun b_free!21099 () Bool)

(declare-fun b_next!21099 () Bool)

(assert (=> b!1043448 (= b_free!21099 (not b_next!21099))))

(declare-fun tp!74536 () Bool)

(declare-fun b_and!33651 () Bool)

(assert (=> b!1043448 (= tp!74536 b_and!33651)))

(declare-fun b!1043446 () Bool)

(declare-fun e!591259 () Bool)

(declare-fun e!591260 () Bool)

(assert (=> b!1043446 (= e!591259 e!591260)))

(declare-fun res!695249 () Bool)

(assert (=> b!1043446 (=> (not res!695249) (not e!591260))))

(declare-datatypes ((SeekEntryResult!9831 0))(
  ( (MissingZero!9831 (index!41694 (_ BitVec 32))) (Found!9831 (index!41695 (_ BitVec 32))) (Intermediate!9831 (undefined!10643 Bool) (index!41696 (_ BitVec 32)) (x!93162 (_ BitVec 32))) (Undefined!9831) (MissingVacant!9831 (index!41697 (_ BitVec 32))) )
))
(declare-fun lt!459974 () SeekEntryResult!9831)

(get-info :version)

(assert (=> b!1043446 (= res!695249 ((_ is Found!9831) lt!459974))))

(declare-fun key!909 () (_ BitVec 64))

(declare-datatypes ((V!37965 0))(
  ( (V!37966 (val!12460 Int)) )
))
(declare-datatypes ((ValueCell!11706 0))(
  ( (ValueCellFull!11706 (v!15052 V!37965)) (EmptyCell!11706) )
))
(declare-datatypes ((array!65784 0))(
  ( (array!65785 (arr!31641 (Array (_ BitVec 32) (_ BitVec 64))) (size!32177 (_ BitVec 32))) )
))
(declare-datatypes ((array!65786 0))(
  ( (array!65787 (arr!31642 (Array (_ BitVec 32) ValueCell!11706)) (size!32178 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6006 0))(
  ( (LongMapFixedSize!6007 (defaultEntry!6385 Int) (mask!30471 (_ BitVec 32)) (extraKeys!6113 (_ BitVec 32)) (zeroValue!6219 V!37965) (minValue!6219 V!37965) (_size!3058 (_ BitVec 32)) (_keys!11640 array!65784) (_values!6408 array!65786) (_vacant!3058 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!6006)

(declare-fun seekEntry!0 ((_ BitVec 64) array!65784 (_ BitVec 32)) SeekEntryResult!9831)

(assert (=> b!1043446 (= lt!459974 (seekEntry!0 key!909 (_keys!11640 thiss!1427) (mask!30471 thiss!1427)))))

(declare-fun b!1043447 () Bool)

(assert (=> b!1043447 (= e!591260 (not (and (bvsge (index!41695 lt!459974) #b00000000000000000000000000000000) (bvslt (index!41695 lt!459974) (size!32177 (_keys!11640 thiss!1427))))))))

(declare-fun lt!459973 () array!65784)

(declare-datatypes ((tuple2!15842 0))(
  ( (tuple2!15843 (_1!7931 (_ BitVec 64)) (_2!7931 V!37965)) )
))
(declare-datatypes ((List!22118 0))(
  ( (Nil!22115) (Cons!22114 (h!23322 tuple2!15842) (t!31343 List!22118)) )
))
(declare-datatypes ((ListLongMap!13879 0))(
  ( (ListLongMap!13880 (toList!6955 List!22118)) )
))
(declare-fun -!531 (ListLongMap!13879 (_ BitVec 64)) ListLongMap!13879)

(declare-fun getCurrentListMap!3961 (array!65784 array!65786 (_ BitVec 32) (_ BitVec 32) V!37965 V!37965 (_ BitVec 32) Int) ListLongMap!13879)

(declare-fun dynLambda!2005 (Int (_ BitVec 64)) V!37965)

(assert (=> b!1043447 (= (-!531 (getCurrentListMap!3961 (_keys!11640 thiss!1427) (_values!6408 thiss!1427) (mask!30471 thiss!1427) (extraKeys!6113 thiss!1427) (zeroValue!6219 thiss!1427) (minValue!6219 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6385 thiss!1427)) key!909) (getCurrentListMap!3961 lt!459973 (array!65787 (store (arr!31642 (_values!6408 thiss!1427)) (index!41695 lt!459974) (ValueCellFull!11706 (dynLambda!2005 (defaultEntry!6385 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!32178 (_values!6408 thiss!1427))) (mask!30471 thiss!1427) (extraKeys!6113 thiss!1427) (zeroValue!6219 thiss!1427) (minValue!6219 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6385 thiss!1427)))))

(declare-datatypes ((Unit!34072 0))(
  ( (Unit!34073) )
))
(declare-fun lt!459970 () Unit!34072)

(declare-fun lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!51 (array!65784 array!65786 (_ BitVec 32) (_ BitVec 32) V!37965 V!37965 (_ BitVec 32) (_ BitVec 64) Int) Unit!34072)

(assert (=> b!1043447 (= lt!459970 (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!51 (_keys!11640 thiss!1427) (_values!6408 thiss!1427) (mask!30471 thiss!1427) (extraKeys!6113 thiss!1427) (zeroValue!6219 thiss!1427) (minValue!6219 thiss!1427) (index!41695 lt!459974) key!909 (defaultEntry!6385 thiss!1427)))))

(declare-fun arrayContainsKey!0 (array!65784 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1043447 (not (arrayContainsKey!0 lt!459973 key!909 #b00000000000000000000000000000000))))

(declare-fun lt!459971 () Unit!34072)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!65784 (_ BitVec 32) (_ BitVec 64)) Unit!34072)

(assert (=> b!1043447 (= lt!459971 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11640 thiss!1427) (index!41695 lt!459974) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65784 (_ BitVec 32)) Bool)

(assert (=> b!1043447 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!459973 (mask!30471 thiss!1427))))

(declare-fun lt!459972 () Unit!34072)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!65784 (_ BitVec 32) (_ BitVec 32)) Unit!34072)

(assert (=> b!1043447 (= lt!459972 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11640 thiss!1427) (index!41695 lt!459974) (mask!30471 thiss!1427)))))

(declare-datatypes ((List!22119 0))(
  ( (Nil!22116) (Cons!22115 (h!23323 (_ BitVec 64)) (t!31344 List!22119)) )
))
(declare-fun arrayNoDuplicates!0 (array!65784 (_ BitVec 32) List!22119) Bool)

(assert (=> b!1043447 (arrayNoDuplicates!0 lt!459973 #b00000000000000000000000000000000 Nil!22116)))

(declare-fun lt!459968 () Unit!34072)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!65784 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22119) Unit!34072)

(assert (=> b!1043447 (= lt!459968 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11640 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41695 lt!459974) #b00000000000000000000000000000000 Nil!22116))))

(declare-fun arrayCountValidKeys!0 (array!65784 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1043447 (= (arrayCountValidKeys!0 lt!459973 #b00000000000000000000000000000000 (size!32177 (_keys!11640 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11640 thiss!1427) #b00000000000000000000000000000000 (size!32177 (_keys!11640 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1043447 (= lt!459973 (array!65785 (store (arr!31641 (_keys!11640 thiss!1427)) (index!41695 lt!459974) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32177 (_keys!11640 thiss!1427))))))

(declare-fun lt!459969 () Unit!34072)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65784 (_ BitVec 32) (_ BitVec 64)) Unit!34072)

(assert (=> b!1043447 (= lt!459969 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11640 thiss!1427) (index!41695 lt!459974) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!591262 () Bool)

(declare-fun e!591263 () Bool)

(declare-fun tp_is_empty!24819 () Bool)

(declare-fun array_inv!24289 (array!65784) Bool)

(declare-fun array_inv!24290 (array!65786) Bool)

(assert (=> b!1043448 (= e!591262 (and tp!74536 tp_is_empty!24819 (array_inv!24289 (_keys!11640 thiss!1427)) (array_inv!24290 (_values!6408 thiss!1427)) e!591263))))

(declare-fun b!1043449 () Bool)

(declare-fun e!591261 () Bool)

(assert (=> b!1043449 (= e!591261 tp_is_empty!24819)))

(declare-fun mapIsEmpty!38849 () Bool)

(declare-fun mapRes!38849 () Bool)

(assert (=> mapIsEmpty!38849 mapRes!38849))

(declare-fun b!1043450 () Bool)

(declare-fun e!591265 () Bool)

(assert (=> b!1043450 (= e!591265 tp_is_empty!24819)))

(declare-fun b!1043451 () Bool)

(assert (=> b!1043451 (= e!591263 (and e!591261 mapRes!38849))))

(declare-fun condMapEmpty!38849 () Bool)

(declare-fun mapDefault!38849 () ValueCell!11706)

(assert (=> b!1043451 (= condMapEmpty!38849 (= (arr!31642 (_values!6408 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11706)) mapDefault!38849)))))

(declare-fun mapNonEmpty!38849 () Bool)

(declare-fun tp!74535 () Bool)

(assert (=> mapNonEmpty!38849 (= mapRes!38849 (and tp!74535 e!591265))))

(declare-fun mapKey!38849 () (_ BitVec 32))

(declare-fun mapValue!38849 () ValueCell!11706)

(declare-fun mapRest!38849 () (Array (_ BitVec 32) ValueCell!11706))

(assert (=> mapNonEmpty!38849 (= (arr!31642 (_values!6408 thiss!1427)) (store mapRest!38849 mapKey!38849 mapValue!38849))))

(declare-fun b!1043452 () Bool)

(declare-fun res!695250 () Bool)

(assert (=> b!1043452 (=> (not res!695250) (not e!591259))))

(assert (=> b!1043452 (= res!695250 (not (= key!909 (bvneg key!909))))))

(declare-fun res!695251 () Bool)

(assert (=> start!91698 (=> (not res!695251) (not e!591259))))

(declare-fun valid!2207 (LongMapFixedSize!6006) Bool)

(assert (=> start!91698 (= res!695251 (valid!2207 thiss!1427))))

(assert (=> start!91698 e!591259))

(assert (=> start!91698 e!591262))

(assert (=> start!91698 true))

(assert (= (and start!91698 res!695251) b!1043452))

(assert (= (and b!1043452 res!695250) b!1043446))

(assert (= (and b!1043446 res!695249) b!1043447))

(assert (= (and b!1043451 condMapEmpty!38849) mapIsEmpty!38849))

(assert (= (and b!1043451 (not condMapEmpty!38849)) mapNonEmpty!38849))

(assert (= (and mapNonEmpty!38849 ((_ is ValueCellFull!11706) mapValue!38849)) b!1043450))

(assert (= (and b!1043451 ((_ is ValueCellFull!11706) mapDefault!38849)) b!1043449))

(assert (= b!1043448 b!1043451))

(assert (= start!91698 b!1043448))

(declare-fun b_lambda!16189 () Bool)

(assert (=> (not b_lambda!16189) (not b!1043447)))

(declare-fun t!31342 () Bool)

(declare-fun tb!7047 () Bool)

(assert (=> (and b!1043448 (= (defaultEntry!6385 thiss!1427) (defaultEntry!6385 thiss!1427)) t!31342) tb!7047))

(declare-fun result!14507 () Bool)

(assert (=> tb!7047 (= result!14507 tp_is_empty!24819)))

(assert (=> b!1043447 t!31342))

(declare-fun b_and!33653 () Bool)

(assert (= b_and!33651 (and (=> t!31342 result!14507) b_and!33653)))

(declare-fun m!962825 () Bool)

(assert (=> b!1043446 m!962825))

(declare-fun m!962827 () Bool)

(assert (=> start!91698 m!962827))

(declare-fun m!962829 () Bool)

(assert (=> b!1043447 m!962829))

(declare-fun m!962831 () Bool)

(assert (=> b!1043447 m!962831))

(declare-fun m!962833 () Bool)

(assert (=> b!1043447 m!962833))

(declare-fun m!962835 () Bool)

(assert (=> b!1043447 m!962835))

(declare-fun m!962837 () Bool)

(assert (=> b!1043447 m!962837))

(declare-fun m!962839 () Bool)

(assert (=> b!1043447 m!962839))

(declare-fun m!962841 () Bool)

(assert (=> b!1043447 m!962841))

(declare-fun m!962843 () Bool)

(assert (=> b!1043447 m!962843))

(declare-fun m!962845 () Bool)

(assert (=> b!1043447 m!962845))

(declare-fun m!962847 () Bool)

(assert (=> b!1043447 m!962847))

(declare-fun m!962849 () Bool)

(assert (=> b!1043447 m!962849))

(declare-fun m!962851 () Bool)

(assert (=> b!1043447 m!962851))

(declare-fun m!962853 () Bool)

(assert (=> b!1043447 m!962853))

(declare-fun m!962855 () Bool)

(assert (=> b!1043447 m!962855))

(assert (=> b!1043447 m!962845))

(declare-fun m!962857 () Bool)

(assert (=> b!1043447 m!962857))

(declare-fun m!962859 () Bool)

(assert (=> b!1043447 m!962859))

(declare-fun m!962861 () Bool)

(assert (=> b!1043448 m!962861))

(declare-fun m!962863 () Bool)

(assert (=> b!1043448 m!962863))

(declare-fun m!962865 () Bool)

(assert (=> mapNonEmpty!38849 m!962865))

(check-sat (not b!1043447) (not b!1043448) (not b_lambda!16189) (not b_next!21099) (not b!1043446) tp_is_empty!24819 (not start!91698) b_and!33653 (not mapNonEmpty!38849))
(check-sat b_and!33653 (not b_next!21099))
(get-model)

(declare-fun b_lambda!16193 () Bool)

(assert (= b_lambda!16189 (or (and b!1043448 b_free!21099) b_lambda!16193)))

(check-sat (not b!1043447) (not b_lambda!16193) (not b!1043448) (not b_next!21099) (not b!1043446) tp_is_empty!24819 (not start!91698) b_and!33653 (not mapNonEmpty!38849))
(check-sat b_and!33653 (not b_next!21099))
(get-model)

(declare-fun b!1043490 () Bool)

(declare-fun e!591295 () SeekEntryResult!9831)

(declare-fun e!591293 () SeekEntryResult!9831)

(assert (=> b!1043490 (= e!591295 e!591293)))

(declare-fun lt!460006 () (_ BitVec 64))

(declare-fun lt!460004 () SeekEntryResult!9831)

(assert (=> b!1043490 (= lt!460006 (select (arr!31641 (_keys!11640 thiss!1427)) (index!41696 lt!460004)))))

(declare-fun c!105888 () Bool)

(assert (=> b!1043490 (= c!105888 (= lt!460006 key!909))))

(declare-fun b!1043491 () Bool)

(assert (=> b!1043491 (= e!591293 (Found!9831 (index!41696 lt!460004)))))

(declare-fun b!1043492 () Bool)

(declare-fun e!591294 () SeekEntryResult!9831)

(assert (=> b!1043492 (= e!591294 (MissingZero!9831 (index!41696 lt!460004)))))

(declare-fun d!126215 () Bool)

(declare-fun lt!460005 () SeekEntryResult!9831)

(assert (=> d!126215 (and (or ((_ is MissingVacant!9831) lt!460005) (not ((_ is Found!9831) lt!460005)) (and (bvsge (index!41695 lt!460005) #b00000000000000000000000000000000) (bvslt (index!41695 lt!460005) (size!32177 (_keys!11640 thiss!1427))))) (not ((_ is MissingVacant!9831) lt!460005)) (or (not ((_ is Found!9831) lt!460005)) (= (select (arr!31641 (_keys!11640 thiss!1427)) (index!41695 lt!460005)) key!909)))))

(assert (=> d!126215 (= lt!460005 e!591295)))

(declare-fun c!105887 () Bool)

(assert (=> d!126215 (= c!105887 (and ((_ is Intermediate!9831) lt!460004) (undefined!10643 lt!460004)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65784 (_ BitVec 32)) SeekEntryResult!9831)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!126215 (= lt!460004 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!909 (mask!30471 thiss!1427)) key!909 (_keys!11640 thiss!1427) (mask!30471 thiss!1427)))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!126215 (validMask!0 (mask!30471 thiss!1427))))

(assert (=> d!126215 (= (seekEntry!0 key!909 (_keys!11640 thiss!1427) (mask!30471 thiss!1427)) lt!460005)))

(declare-fun b!1043493 () Bool)

(assert (=> b!1043493 (= e!591295 Undefined!9831)))

(declare-fun b!1043494 () Bool)

(declare-fun c!105889 () Bool)

(assert (=> b!1043494 (= c!105889 (= lt!460006 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1043494 (= e!591293 e!591294)))

(declare-fun b!1043495 () Bool)

(declare-fun lt!460007 () SeekEntryResult!9831)

(assert (=> b!1043495 (= e!591294 (ite ((_ is MissingVacant!9831) lt!460007) (MissingZero!9831 (index!41697 lt!460007)) lt!460007))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65784 (_ BitVec 32)) SeekEntryResult!9831)

(assert (=> b!1043495 (= lt!460007 (seekKeyOrZeroReturnVacant!0 (x!93162 lt!460004) (index!41696 lt!460004) (index!41696 lt!460004) key!909 (_keys!11640 thiss!1427) (mask!30471 thiss!1427)))))

(assert (= (and d!126215 c!105887) b!1043493))

(assert (= (and d!126215 (not c!105887)) b!1043490))

(assert (= (and b!1043490 c!105888) b!1043491))

(assert (= (and b!1043490 (not c!105888)) b!1043494))

(assert (= (and b!1043494 c!105889) b!1043492))

(assert (= (and b!1043494 (not c!105889)) b!1043495))

(declare-fun m!962909 () Bool)

(assert (=> b!1043490 m!962909))

(declare-fun m!962911 () Bool)

(assert (=> d!126215 m!962911))

(declare-fun m!962913 () Bool)

(assert (=> d!126215 m!962913))

(assert (=> d!126215 m!962913))

(declare-fun m!962915 () Bool)

(assert (=> d!126215 m!962915))

(declare-fun m!962917 () Bool)

(assert (=> d!126215 m!962917))

(declare-fun m!962919 () Bool)

(assert (=> b!1043495 m!962919))

(assert (=> b!1043446 d!126215))

(declare-fun d!126217 () Bool)

(declare-fun res!695267 () Bool)

(declare-fun e!591298 () Bool)

(assert (=> d!126217 (=> (not res!695267) (not e!591298))))

(declare-fun simpleValid!445 (LongMapFixedSize!6006) Bool)

(assert (=> d!126217 (= res!695267 (simpleValid!445 thiss!1427))))

(assert (=> d!126217 (= (valid!2207 thiss!1427) e!591298)))

(declare-fun b!1043502 () Bool)

(declare-fun res!695268 () Bool)

(assert (=> b!1043502 (=> (not res!695268) (not e!591298))))

(assert (=> b!1043502 (= res!695268 (= (arrayCountValidKeys!0 (_keys!11640 thiss!1427) #b00000000000000000000000000000000 (size!32177 (_keys!11640 thiss!1427))) (_size!3058 thiss!1427)))))

(declare-fun b!1043503 () Bool)

(declare-fun res!695269 () Bool)

(assert (=> b!1043503 (=> (not res!695269) (not e!591298))))

(assert (=> b!1043503 (= res!695269 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11640 thiss!1427) (mask!30471 thiss!1427)))))

(declare-fun b!1043504 () Bool)

(assert (=> b!1043504 (= e!591298 (arrayNoDuplicates!0 (_keys!11640 thiss!1427) #b00000000000000000000000000000000 Nil!22116))))

(assert (= (and d!126217 res!695267) b!1043502))

(assert (= (and b!1043502 res!695268) b!1043503))

(assert (= (and b!1043503 res!695269) b!1043504))

(declare-fun m!962921 () Bool)

(assert (=> d!126217 m!962921))

(assert (=> b!1043502 m!962839))

(declare-fun m!962923 () Bool)

(assert (=> b!1043503 m!962923))

(declare-fun m!962925 () Bool)

(assert (=> b!1043504 m!962925))

(assert (=> start!91698 d!126217))

(declare-fun b!1043547 () Bool)

(declare-fun e!591329 () Bool)

(declare-fun e!591326 () Bool)

(assert (=> b!1043547 (= e!591329 e!591326)))

(declare-fun res!695292 () Bool)

(declare-fun call!44241 () Bool)

(assert (=> b!1043547 (= res!695292 call!44241)))

(assert (=> b!1043547 (=> (not res!695292) (not e!591326))))

(declare-fun b!1043548 () Bool)

(declare-fun e!591332 () ListLongMap!13879)

(declare-fun call!44243 () ListLongMap!13879)

(assert (=> b!1043548 (= e!591332 call!44243)))

(declare-fun bm!44235 () Bool)

(declare-fun call!44242 () ListLongMap!13879)

(declare-fun getCurrentListMapNoExtraKeys!3536 (array!65784 array!65786 (_ BitVec 32) (_ BitVec 32) V!37965 V!37965 (_ BitVec 32) Int) ListLongMap!13879)

(assert (=> bm!44235 (= call!44242 (getCurrentListMapNoExtraKeys!3536 (_keys!11640 thiss!1427) (_values!6408 thiss!1427) (mask!30471 thiss!1427) (extraKeys!6113 thiss!1427) (zeroValue!6219 thiss!1427) (minValue!6219 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6385 thiss!1427)))))

(declare-fun b!1043549 () Bool)

(declare-fun e!591337 () Unit!34072)

(declare-fun lt!460072 () Unit!34072)

(assert (=> b!1043549 (= e!591337 lt!460072)))

(declare-fun lt!460054 () ListLongMap!13879)

(assert (=> b!1043549 (= lt!460054 (getCurrentListMapNoExtraKeys!3536 (_keys!11640 thiss!1427) (_values!6408 thiss!1427) (mask!30471 thiss!1427) (extraKeys!6113 thiss!1427) (zeroValue!6219 thiss!1427) (minValue!6219 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6385 thiss!1427)))))

(declare-fun lt!460062 () (_ BitVec 64))

(assert (=> b!1043549 (= lt!460062 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!460060 () (_ BitVec 64))

(assert (=> b!1043549 (= lt!460060 (select (arr!31641 (_keys!11640 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun lt!460065 () Unit!34072)

(declare-fun addStillContains!631 (ListLongMap!13879 (_ BitVec 64) V!37965 (_ BitVec 64)) Unit!34072)

(assert (=> b!1043549 (= lt!460065 (addStillContains!631 lt!460054 lt!460062 (zeroValue!6219 thiss!1427) lt!460060))))

(declare-fun contains!6085 (ListLongMap!13879 (_ BitVec 64)) Bool)

(declare-fun +!3066 (ListLongMap!13879 tuple2!15842) ListLongMap!13879)

(assert (=> b!1043549 (contains!6085 (+!3066 lt!460054 (tuple2!15843 lt!460062 (zeroValue!6219 thiss!1427))) lt!460060)))

(declare-fun lt!460055 () Unit!34072)

(assert (=> b!1043549 (= lt!460055 lt!460065)))

(declare-fun lt!460064 () ListLongMap!13879)

(assert (=> b!1043549 (= lt!460064 (getCurrentListMapNoExtraKeys!3536 (_keys!11640 thiss!1427) (_values!6408 thiss!1427) (mask!30471 thiss!1427) (extraKeys!6113 thiss!1427) (zeroValue!6219 thiss!1427) (minValue!6219 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6385 thiss!1427)))))

(declare-fun lt!460061 () (_ BitVec 64))

(assert (=> b!1043549 (= lt!460061 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!460053 () (_ BitVec 64))

(assert (=> b!1043549 (= lt!460053 (select (arr!31641 (_keys!11640 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun lt!460067 () Unit!34072)

(declare-fun addApplyDifferent!483 (ListLongMap!13879 (_ BitVec 64) V!37965 (_ BitVec 64)) Unit!34072)

(assert (=> b!1043549 (= lt!460067 (addApplyDifferent!483 lt!460064 lt!460061 (minValue!6219 thiss!1427) lt!460053))))

(declare-fun apply!943 (ListLongMap!13879 (_ BitVec 64)) V!37965)

(assert (=> b!1043549 (= (apply!943 (+!3066 lt!460064 (tuple2!15843 lt!460061 (minValue!6219 thiss!1427))) lt!460053) (apply!943 lt!460064 lt!460053))))

(declare-fun lt!460059 () Unit!34072)

(assert (=> b!1043549 (= lt!460059 lt!460067)))

(declare-fun lt!460066 () ListLongMap!13879)

(assert (=> b!1043549 (= lt!460066 (getCurrentListMapNoExtraKeys!3536 (_keys!11640 thiss!1427) (_values!6408 thiss!1427) (mask!30471 thiss!1427) (extraKeys!6113 thiss!1427) (zeroValue!6219 thiss!1427) (minValue!6219 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6385 thiss!1427)))))

(declare-fun lt!460052 () (_ BitVec 64))

(assert (=> b!1043549 (= lt!460052 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!460073 () (_ BitVec 64))

(assert (=> b!1043549 (= lt!460073 (select (arr!31641 (_keys!11640 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun lt!460070 () Unit!34072)

(assert (=> b!1043549 (= lt!460070 (addApplyDifferent!483 lt!460066 lt!460052 (zeroValue!6219 thiss!1427) lt!460073))))

(assert (=> b!1043549 (= (apply!943 (+!3066 lt!460066 (tuple2!15843 lt!460052 (zeroValue!6219 thiss!1427))) lt!460073) (apply!943 lt!460066 lt!460073))))

(declare-fun lt!460068 () Unit!34072)

(assert (=> b!1043549 (= lt!460068 lt!460070)))

(declare-fun lt!460056 () ListLongMap!13879)

(assert (=> b!1043549 (= lt!460056 (getCurrentListMapNoExtraKeys!3536 (_keys!11640 thiss!1427) (_values!6408 thiss!1427) (mask!30471 thiss!1427) (extraKeys!6113 thiss!1427) (zeroValue!6219 thiss!1427) (minValue!6219 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6385 thiss!1427)))))

(declare-fun lt!460069 () (_ BitVec 64))

(assert (=> b!1043549 (= lt!460069 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!460071 () (_ BitVec 64))

(assert (=> b!1043549 (= lt!460071 (select (arr!31641 (_keys!11640 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1043549 (= lt!460072 (addApplyDifferent!483 lt!460056 lt!460069 (minValue!6219 thiss!1427) lt!460071))))

(assert (=> b!1043549 (= (apply!943 (+!3066 lt!460056 (tuple2!15843 lt!460069 (minValue!6219 thiss!1427))) lt!460071) (apply!943 lt!460056 lt!460071))))

(declare-fun bm!44236 () Bool)

(declare-fun call!44240 () ListLongMap!13879)

(declare-fun call!44239 () ListLongMap!13879)

(assert (=> bm!44236 (= call!44240 call!44239)))

(declare-fun bm!44237 () Bool)

(declare-fun lt!460057 () ListLongMap!13879)

(assert (=> bm!44237 (= call!44241 (contains!6085 lt!460057 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1043550 () Bool)

(declare-fun e!591327 () Bool)

(assert (=> b!1043550 (= e!591327 e!591329)))

(declare-fun c!105903 () Bool)

(assert (=> b!1043550 (= c!105903 (not (= (bvand (extraKeys!6113 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1043551 () Bool)

(declare-fun c!105904 () Bool)

(assert (=> b!1043551 (= c!105904 (and (not (= (bvand (extraKeys!6113 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!6113 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!591334 () ListLongMap!13879)

(assert (=> b!1043551 (= e!591334 e!591332)))

(declare-fun bm!44238 () Bool)

(declare-fun call!44238 () ListLongMap!13879)

(assert (=> bm!44238 (= call!44238 call!44242)))

(declare-fun b!1043552 () Bool)

(declare-fun e!591333 () Bool)

(declare-fun get!16552 (ValueCell!11706 V!37965) V!37965)

(assert (=> b!1043552 (= e!591333 (= (apply!943 lt!460057 (select (arr!31641 (_keys!11640 thiss!1427)) #b00000000000000000000000000000000)) (get!16552 (select (arr!31642 (_values!6408 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2005 (defaultEntry!6385 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1043552 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32178 (_values!6408 thiss!1427))))))

(assert (=> b!1043552 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32177 (_keys!11640 thiss!1427))))))

(declare-fun c!105906 () Bool)

(declare-fun c!105907 () Bool)

(declare-fun bm!44239 () Bool)

(assert (=> bm!44239 (= call!44239 (+!3066 (ite c!105907 call!44242 (ite c!105906 call!44238 call!44243)) (ite (or c!105907 c!105906) (tuple2!15843 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6219 thiss!1427)) (tuple2!15843 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6219 thiss!1427)))))))

(declare-fun b!1043553 () Bool)

(assert (=> b!1043553 (= e!591326 (= (apply!943 lt!460057 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!6219 thiss!1427)))))

(declare-fun d!126219 () Bool)

(assert (=> d!126219 e!591327))

(declare-fun res!695294 () Bool)

(assert (=> d!126219 (=> (not res!695294) (not e!591327))))

(assert (=> d!126219 (= res!695294 (or (bvsge #b00000000000000000000000000000000 (size!32177 (_keys!11640 thiss!1427))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32177 (_keys!11640 thiss!1427))))))))

(declare-fun lt!460058 () ListLongMap!13879)

(assert (=> d!126219 (= lt!460057 lt!460058)))

(declare-fun lt!460063 () Unit!34072)

(assert (=> d!126219 (= lt!460063 e!591337)))

(declare-fun c!105902 () Bool)

(declare-fun e!591330 () Bool)

(assert (=> d!126219 (= c!105902 e!591330)))

(declare-fun res!695296 () Bool)

(assert (=> d!126219 (=> (not res!695296) (not e!591330))))

(assert (=> d!126219 (= res!695296 (bvslt #b00000000000000000000000000000000 (size!32177 (_keys!11640 thiss!1427))))))

(declare-fun e!591331 () ListLongMap!13879)

(assert (=> d!126219 (= lt!460058 e!591331)))

(assert (=> d!126219 (= c!105907 (and (not (= (bvand (extraKeys!6113 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!6113 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!126219 (validMask!0 (mask!30471 thiss!1427))))

(assert (=> d!126219 (= (getCurrentListMap!3961 (_keys!11640 thiss!1427) (_values!6408 thiss!1427) (mask!30471 thiss!1427) (extraKeys!6113 thiss!1427) (zeroValue!6219 thiss!1427) (minValue!6219 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6385 thiss!1427)) lt!460057)))

(declare-fun b!1043554 () Bool)

(declare-fun Unit!34076 () Unit!34072)

(assert (=> b!1043554 (= e!591337 Unit!34076)))

(declare-fun b!1043555 () Bool)

(declare-fun e!591336 () Bool)

(declare-fun e!591325 () Bool)

(assert (=> b!1043555 (= e!591336 e!591325)))

(declare-fun res!695293 () Bool)

(declare-fun call!44244 () Bool)

(assert (=> b!1043555 (= res!695293 call!44244)))

(assert (=> b!1043555 (=> (not res!695293) (not e!591325))))

(declare-fun bm!44240 () Bool)

(assert (=> bm!44240 (= call!44244 (contains!6085 lt!460057 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1043556 () Bool)

(declare-fun e!591335 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1043556 (= e!591335 (validKeyInArray!0 (select (arr!31641 (_keys!11640 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1043557 () Bool)

(assert (=> b!1043557 (= e!591336 (not call!44244))))

(declare-fun b!1043558 () Bool)

(assert (=> b!1043558 (= e!591331 (+!3066 call!44239 (tuple2!15843 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6219 thiss!1427))))))

(declare-fun b!1043559 () Bool)

(assert (=> b!1043559 (= e!591325 (= (apply!943 lt!460057 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!6219 thiss!1427)))))

(declare-fun b!1043560 () Bool)

(assert (=> b!1043560 (= e!591334 call!44240)))

(declare-fun b!1043561 () Bool)

(assert (=> b!1043561 (= e!591330 (validKeyInArray!0 (select (arr!31641 (_keys!11640 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1043562 () Bool)

(declare-fun res!695290 () Bool)

(assert (=> b!1043562 (=> (not res!695290) (not e!591327))))

(declare-fun e!591328 () Bool)

(assert (=> b!1043562 (= res!695290 e!591328)))

(declare-fun res!695291 () Bool)

(assert (=> b!1043562 (=> res!695291 e!591328)))

(assert (=> b!1043562 (= res!695291 (not e!591335))))

(declare-fun res!695295 () Bool)

(assert (=> b!1043562 (=> (not res!695295) (not e!591335))))

(assert (=> b!1043562 (= res!695295 (bvslt #b00000000000000000000000000000000 (size!32177 (_keys!11640 thiss!1427))))))

(declare-fun b!1043563 () Bool)

(declare-fun res!695289 () Bool)

(assert (=> b!1043563 (=> (not res!695289) (not e!591327))))

(assert (=> b!1043563 (= res!695289 e!591336)))

(declare-fun c!105905 () Bool)

(assert (=> b!1043563 (= c!105905 (not (= (bvand (extraKeys!6113 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1043564 () Bool)

(assert (=> b!1043564 (= e!591329 (not call!44241))))

(declare-fun b!1043565 () Bool)

(assert (=> b!1043565 (= e!591331 e!591334)))

(assert (=> b!1043565 (= c!105906 (and (not (= (bvand (extraKeys!6113 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!6113 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1043566 () Bool)

(assert (=> b!1043566 (= e!591328 e!591333)))

(declare-fun res!695288 () Bool)

(assert (=> b!1043566 (=> (not res!695288) (not e!591333))))

(assert (=> b!1043566 (= res!695288 (contains!6085 lt!460057 (select (arr!31641 (_keys!11640 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> b!1043566 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32177 (_keys!11640 thiss!1427))))))

(declare-fun bm!44241 () Bool)

(assert (=> bm!44241 (= call!44243 call!44238)))

(declare-fun b!1043567 () Bool)

(assert (=> b!1043567 (= e!591332 call!44240)))

(assert (= (and d!126219 c!105907) b!1043558))

(assert (= (and d!126219 (not c!105907)) b!1043565))

(assert (= (and b!1043565 c!105906) b!1043560))

(assert (= (and b!1043565 (not c!105906)) b!1043551))

(assert (= (and b!1043551 c!105904) b!1043567))

(assert (= (and b!1043551 (not c!105904)) b!1043548))

(assert (= (or b!1043567 b!1043548) bm!44241))

(assert (= (or b!1043560 bm!44241) bm!44238))

(assert (= (or b!1043560 b!1043567) bm!44236))

(assert (= (or b!1043558 bm!44238) bm!44235))

(assert (= (or b!1043558 bm!44236) bm!44239))

(assert (= (and d!126219 res!695296) b!1043561))

(assert (= (and d!126219 c!105902) b!1043549))

(assert (= (and d!126219 (not c!105902)) b!1043554))

(assert (= (and d!126219 res!695294) b!1043562))

(assert (= (and b!1043562 res!695295) b!1043556))

(assert (= (and b!1043562 (not res!695291)) b!1043566))

(assert (= (and b!1043566 res!695288) b!1043552))

(assert (= (and b!1043562 res!695290) b!1043563))

(assert (= (and b!1043563 c!105905) b!1043555))

(assert (= (and b!1043563 (not c!105905)) b!1043557))

(assert (= (and b!1043555 res!695293) b!1043559))

(assert (= (or b!1043555 b!1043557) bm!44240))

(assert (= (and b!1043563 res!695289) b!1043550))

(assert (= (and b!1043550 c!105903) b!1043547))

(assert (= (and b!1043550 (not c!105903)) b!1043564))

(assert (= (and b!1043547 res!695292) b!1043553))

(assert (= (or b!1043547 b!1043564) bm!44237))

(declare-fun b_lambda!16195 () Bool)

(assert (=> (not b_lambda!16195) (not b!1043552)))

(assert (=> b!1043552 t!31342))

(declare-fun b_and!33659 () Bool)

(assert (= b_and!33653 (and (=> t!31342 result!14507) b_and!33659)))

(declare-fun m!962927 () Bool)

(assert (=> b!1043552 m!962927))

(declare-fun m!962929 () Bool)

(assert (=> b!1043552 m!962929))

(declare-fun m!962931 () Bool)

(assert (=> b!1043552 m!962931))

(assert (=> b!1043552 m!962849))

(declare-fun m!962933 () Bool)

(assert (=> b!1043552 m!962933))

(assert (=> b!1043552 m!962849))

(assert (=> b!1043552 m!962927))

(assert (=> b!1043552 m!962931))

(declare-fun m!962935 () Bool)

(assert (=> bm!44237 m!962935))

(assert (=> d!126219 m!962917))

(declare-fun m!962937 () Bool)

(assert (=> bm!44235 m!962937))

(declare-fun m!962939 () Bool)

(assert (=> b!1043559 m!962939))

(declare-fun m!962941 () Bool)

(assert (=> bm!44240 m!962941))

(declare-fun m!962943 () Bool)

(assert (=> b!1043553 m!962943))

(assert (=> b!1043566 m!962927))

(assert (=> b!1043566 m!962927))

(declare-fun m!962945 () Bool)

(assert (=> b!1043566 m!962945))

(assert (=> b!1043556 m!962927))

(assert (=> b!1043556 m!962927))

(declare-fun m!962947 () Bool)

(assert (=> b!1043556 m!962947))

(assert (=> b!1043561 m!962927))

(assert (=> b!1043561 m!962927))

(assert (=> b!1043561 m!962947))

(declare-fun m!962949 () Bool)

(assert (=> bm!44239 m!962949))

(declare-fun m!962951 () Bool)

(assert (=> b!1043549 m!962951))

(declare-fun m!962953 () Bool)

(assert (=> b!1043549 m!962953))

(declare-fun m!962955 () Bool)

(assert (=> b!1043549 m!962955))

(declare-fun m!962957 () Bool)

(assert (=> b!1043549 m!962957))

(declare-fun m!962959 () Bool)

(assert (=> b!1043549 m!962959))

(assert (=> b!1043549 m!962957))

(declare-fun m!962961 () Bool)

(assert (=> b!1043549 m!962961))

(declare-fun m!962963 () Bool)

(assert (=> b!1043549 m!962963))

(assert (=> b!1043549 m!962927))

(assert (=> b!1043549 m!962963))

(declare-fun m!962965 () Bool)

(assert (=> b!1043549 m!962965))

(assert (=> b!1043549 m!962937))

(declare-fun m!962967 () Bool)

(assert (=> b!1043549 m!962967))

(declare-fun m!962969 () Bool)

(assert (=> b!1043549 m!962969))

(declare-fun m!962971 () Bool)

(assert (=> b!1043549 m!962971))

(declare-fun m!962973 () Bool)

(assert (=> b!1043549 m!962973))

(declare-fun m!962975 () Bool)

(assert (=> b!1043549 m!962975))

(declare-fun m!962977 () Bool)

(assert (=> b!1043549 m!962977))

(assert (=> b!1043549 m!962975))

(declare-fun m!962979 () Bool)

(assert (=> b!1043549 m!962979))

(assert (=> b!1043549 m!962967))

(declare-fun m!962981 () Bool)

(assert (=> b!1043558 m!962981))

(assert (=> b!1043447 d!126219))

(declare-fun d!126221 () Bool)

(declare-fun lt!460076 () ListLongMap!13879)

(assert (=> d!126221 (not (contains!6085 lt!460076 key!909))))

(declare-fun removeStrictlySorted!59 (List!22118 (_ BitVec 64)) List!22118)

(assert (=> d!126221 (= lt!460076 (ListLongMap!13880 (removeStrictlySorted!59 (toList!6955 (getCurrentListMap!3961 (_keys!11640 thiss!1427) (_values!6408 thiss!1427) (mask!30471 thiss!1427) (extraKeys!6113 thiss!1427) (zeroValue!6219 thiss!1427) (minValue!6219 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6385 thiss!1427))) key!909)))))

(assert (=> d!126221 (= (-!531 (getCurrentListMap!3961 (_keys!11640 thiss!1427) (_values!6408 thiss!1427) (mask!30471 thiss!1427) (extraKeys!6113 thiss!1427) (zeroValue!6219 thiss!1427) (minValue!6219 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6385 thiss!1427)) key!909) lt!460076)))

(declare-fun bs!30499 () Bool)

(assert (= bs!30499 d!126221))

(declare-fun m!962983 () Bool)

(assert (=> bs!30499 m!962983))

(declare-fun m!962985 () Bool)

(assert (=> bs!30499 m!962985))

(assert (=> b!1043447 d!126221))

(declare-fun b!1043576 () Bool)

(declare-fun res!695307 () Bool)

(declare-fun e!591343 () Bool)

(assert (=> b!1043576 (=> (not res!695307) (not e!591343))))

(assert (=> b!1043576 (= res!695307 (validKeyInArray!0 (select (arr!31641 (_keys!11640 thiss!1427)) (index!41695 lt!459974))))))

(declare-fun b!1043578 () Bool)

(assert (=> b!1043578 (= e!591343 (bvslt (size!32177 (_keys!11640 thiss!1427)) #b01111111111111111111111111111111))))

(declare-fun d!126223 () Bool)

(declare-fun e!591342 () Bool)

(assert (=> d!126223 e!591342))

(declare-fun res!695308 () Bool)

(assert (=> d!126223 (=> (not res!695308) (not e!591342))))

(assert (=> d!126223 (= res!695308 (and (bvsge (index!41695 lt!459974) #b00000000000000000000000000000000) (bvslt (index!41695 lt!459974) (size!32177 (_keys!11640 thiss!1427)))))))

(declare-fun lt!460079 () Unit!34072)

(declare-fun choose!82 (array!65784 (_ BitVec 32) (_ BitVec 64)) Unit!34072)

(assert (=> d!126223 (= lt!460079 (choose!82 (_keys!11640 thiss!1427) (index!41695 lt!459974) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!126223 e!591343))

(declare-fun res!695306 () Bool)

(assert (=> d!126223 (=> (not res!695306) (not e!591343))))

(assert (=> d!126223 (= res!695306 (and (bvsge (index!41695 lt!459974) #b00000000000000000000000000000000) (bvslt (index!41695 lt!459974) (size!32177 (_keys!11640 thiss!1427)))))))

(assert (=> d!126223 (= (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11640 thiss!1427) (index!41695 lt!459974) #b1000000000000000000000000000000000000000000000000000000000000000) lt!460079)))

(declare-fun b!1043579 () Bool)

(assert (=> b!1043579 (= e!591342 (= (arrayCountValidKeys!0 (array!65785 (store (arr!31641 (_keys!11640 thiss!1427)) (index!41695 lt!459974) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32177 (_keys!11640 thiss!1427))) #b00000000000000000000000000000000 (size!32177 (_keys!11640 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11640 thiss!1427) #b00000000000000000000000000000000 (size!32177 (_keys!11640 thiss!1427))) #b00000000000000000000000000000001)))))

(declare-fun b!1043577 () Bool)

(declare-fun res!695305 () Bool)

(assert (=> b!1043577 (=> (not res!695305) (not e!591343))))

(assert (=> b!1043577 (= res!695305 (not (validKeyInArray!0 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!126223 res!695306) b!1043576))

(assert (= (and b!1043576 res!695307) b!1043577))

(assert (= (and b!1043577 res!695305) b!1043578))

(assert (= (and d!126223 res!695308) b!1043579))

(declare-fun m!962987 () Bool)

(assert (=> b!1043576 m!962987))

(assert (=> b!1043576 m!962987))

(declare-fun m!962989 () Bool)

(assert (=> b!1043576 m!962989))

(declare-fun m!962991 () Bool)

(assert (=> d!126223 m!962991))

(assert (=> b!1043579 m!962843))

(declare-fun m!962993 () Bool)

(assert (=> b!1043579 m!962993))

(assert (=> b!1043579 m!962839))

(declare-fun m!962995 () Bool)

(assert (=> b!1043577 m!962995))

(assert (=> b!1043447 d!126223))

(declare-fun b!1043588 () Bool)

(declare-fun e!591352 () Bool)

(declare-fun call!44247 () Bool)

(assert (=> b!1043588 (= e!591352 call!44247)))

(declare-fun d!126225 () Bool)

(declare-fun res!695314 () Bool)

(declare-fun e!591350 () Bool)

(assert (=> d!126225 (=> res!695314 e!591350)))

(assert (=> d!126225 (= res!695314 (bvsge #b00000000000000000000000000000000 (size!32177 lt!459973)))))

(assert (=> d!126225 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!459973 (mask!30471 thiss!1427)) e!591350)))

(declare-fun b!1043589 () Bool)

(declare-fun e!591351 () Bool)

(assert (=> b!1043589 (= e!591350 e!591351)))

(declare-fun c!105910 () Bool)

(assert (=> b!1043589 (= c!105910 (validKeyInArray!0 (select (arr!31641 lt!459973) #b00000000000000000000000000000000)))))

(declare-fun b!1043590 () Bool)

(assert (=> b!1043590 (= e!591351 e!591352)))

(declare-fun lt!460087 () (_ BitVec 64))

(assert (=> b!1043590 (= lt!460087 (select (arr!31641 lt!459973) #b00000000000000000000000000000000))))

(declare-fun lt!460088 () Unit!34072)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!65784 (_ BitVec 64) (_ BitVec 32)) Unit!34072)

(assert (=> b!1043590 (= lt!460088 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!459973 lt!460087 #b00000000000000000000000000000000))))

(assert (=> b!1043590 (arrayContainsKey!0 lt!459973 lt!460087 #b00000000000000000000000000000000)))

(declare-fun lt!460086 () Unit!34072)

(assert (=> b!1043590 (= lt!460086 lt!460088)))

(declare-fun res!695313 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!65784 (_ BitVec 32)) SeekEntryResult!9831)

(assert (=> b!1043590 (= res!695313 (= (seekEntryOrOpen!0 (select (arr!31641 lt!459973) #b00000000000000000000000000000000) lt!459973 (mask!30471 thiss!1427)) (Found!9831 #b00000000000000000000000000000000)))))

(assert (=> b!1043590 (=> (not res!695313) (not e!591352))))

(declare-fun bm!44244 () Bool)

(assert (=> bm!44244 (= call!44247 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!459973 (mask!30471 thiss!1427)))))

(declare-fun b!1043591 () Bool)

(assert (=> b!1043591 (= e!591351 call!44247)))

(assert (= (and d!126225 (not res!695314)) b!1043589))

(assert (= (and b!1043589 c!105910) b!1043590))

(assert (= (and b!1043589 (not c!105910)) b!1043591))

(assert (= (and b!1043590 res!695313) b!1043588))

(assert (= (or b!1043588 b!1043591) bm!44244))

(declare-fun m!962997 () Bool)

(assert (=> b!1043589 m!962997))

(assert (=> b!1043589 m!962997))

(declare-fun m!962999 () Bool)

(assert (=> b!1043589 m!962999))

(assert (=> b!1043590 m!962997))

(declare-fun m!963001 () Bool)

(assert (=> b!1043590 m!963001))

(declare-fun m!963003 () Bool)

(assert (=> b!1043590 m!963003))

(assert (=> b!1043590 m!962997))

(declare-fun m!963005 () Bool)

(assert (=> b!1043590 m!963005))

(declare-fun m!963007 () Bool)

(assert (=> bm!44244 m!963007))

(assert (=> b!1043447 d!126225))

(declare-fun d!126227 () Bool)

(declare-fun e!591355 () Bool)

(assert (=> d!126227 e!591355))

(declare-fun res!695317 () Bool)

(assert (=> d!126227 (=> (not res!695317) (not e!591355))))

(assert (=> d!126227 (= res!695317 (bvslt (index!41695 lt!459974) (size!32177 (_keys!11640 thiss!1427))))))

(declare-fun lt!460091 () Unit!34072)

(declare-fun choose!121 (array!65784 (_ BitVec 32) (_ BitVec 64)) Unit!34072)

(assert (=> d!126227 (= lt!460091 (choose!121 (_keys!11640 thiss!1427) (index!41695 lt!459974) key!909))))

(assert (=> d!126227 (bvsge (index!41695 lt!459974) #b00000000000000000000000000000000)))

(assert (=> d!126227 (= (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11640 thiss!1427) (index!41695 lt!459974) key!909) lt!460091)))

(declare-fun b!1043594 () Bool)

(assert (=> b!1043594 (= e!591355 (not (arrayContainsKey!0 (array!65785 (store (arr!31641 (_keys!11640 thiss!1427)) (index!41695 lt!459974) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32177 (_keys!11640 thiss!1427))) key!909 #b00000000000000000000000000000000)))))

(assert (= (and d!126227 res!695317) b!1043594))

(declare-fun m!963009 () Bool)

(assert (=> d!126227 m!963009))

(assert (=> b!1043594 m!962843))

(declare-fun m!963011 () Bool)

(assert (=> b!1043594 m!963011))

(assert (=> b!1043447 d!126227))

(declare-fun b!1043603 () Bool)

(declare-fun e!591360 () (_ BitVec 32))

(declare-fun e!591361 () (_ BitVec 32))

(assert (=> b!1043603 (= e!591360 e!591361)))

(declare-fun c!105915 () Bool)

(assert (=> b!1043603 (= c!105915 (validKeyInArray!0 (select (arr!31641 lt!459973) #b00000000000000000000000000000000)))))

(declare-fun bm!44247 () Bool)

(declare-fun call!44250 () (_ BitVec 32))

(assert (=> bm!44247 (= call!44250 (arrayCountValidKeys!0 lt!459973 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32177 (_keys!11640 thiss!1427))))))

(declare-fun b!1043604 () Bool)

(assert (=> b!1043604 (= e!591361 (bvadd #b00000000000000000000000000000001 call!44250))))

(declare-fun b!1043605 () Bool)

(assert (=> b!1043605 (= e!591361 call!44250)))

(declare-fun b!1043606 () Bool)

(assert (=> b!1043606 (= e!591360 #b00000000000000000000000000000000)))

(declare-fun d!126229 () Bool)

(declare-fun lt!460094 () (_ BitVec 32))

(assert (=> d!126229 (and (bvsge lt!460094 #b00000000000000000000000000000000) (bvsle lt!460094 (bvsub (size!32177 lt!459973) #b00000000000000000000000000000000)))))

(assert (=> d!126229 (= lt!460094 e!591360)))

(declare-fun c!105916 () Bool)

(assert (=> d!126229 (= c!105916 (bvsge #b00000000000000000000000000000000 (size!32177 (_keys!11640 thiss!1427))))))

(assert (=> d!126229 (and (bvsle #b00000000000000000000000000000000 (size!32177 (_keys!11640 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!32177 (_keys!11640 thiss!1427)) (size!32177 lt!459973)))))

(assert (=> d!126229 (= (arrayCountValidKeys!0 lt!459973 #b00000000000000000000000000000000 (size!32177 (_keys!11640 thiss!1427))) lt!460094)))

(assert (= (and d!126229 c!105916) b!1043606))

(assert (= (and d!126229 (not c!105916)) b!1043603))

(assert (= (and b!1043603 c!105915) b!1043604))

(assert (= (and b!1043603 (not c!105915)) b!1043605))

(assert (= (or b!1043604 b!1043605) bm!44247))

(assert (=> b!1043603 m!962997))

(assert (=> b!1043603 m!962997))

(assert (=> b!1043603 m!962999))

(declare-fun m!963013 () Bool)

(assert (=> bm!44247 m!963013))

(assert (=> b!1043447 d!126229))

(declare-fun d!126231 () Bool)

(declare-fun e!591364 () Bool)

(assert (=> d!126231 e!591364))

(declare-fun res!695320 () Bool)

(assert (=> d!126231 (=> (not res!695320) (not e!591364))))

(assert (=> d!126231 (= res!695320 (and (bvsge (index!41695 lt!459974) #b00000000000000000000000000000000) (bvslt (index!41695 lt!459974) (size!32177 (_keys!11640 thiss!1427)))))))

(declare-fun lt!460097 () Unit!34072)

(declare-fun choose!25 (array!65784 (_ BitVec 32) (_ BitVec 32)) Unit!34072)

(assert (=> d!126231 (= lt!460097 (choose!25 (_keys!11640 thiss!1427) (index!41695 lt!459974) (mask!30471 thiss!1427)))))

(assert (=> d!126231 (validMask!0 (mask!30471 thiss!1427))))

(assert (=> d!126231 (= (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11640 thiss!1427) (index!41695 lt!459974) (mask!30471 thiss!1427)) lt!460097)))

(declare-fun b!1043609 () Bool)

(assert (=> b!1043609 (= e!591364 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!65785 (store (arr!31641 (_keys!11640 thiss!1427)) (index!41695 lt!459974) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32177 (_keys!11640 thiss!1427))) (mask!30471 thiss!1427)))))

(assert (= (and d!126231 res!695320) b!1043609))

(declare-fun m!963015 () Bool)

(assert (=> d!126231 m!963015))

(assert (=> d!126231 m!962917))

(assert (=> b!1043609 m!962843))

(declare-fun m!963017 () Bool)

(assert (=> b!1043609 m!963017))

(assert (=> b!1043447 d!126231))

(declare-fun d!126233 () Bool)

(declare-fun res!695325 () Bool)

(declare-fun e!591369 () Bool)

(assert (=> d!126233 (=> res!695325 e!591369)))

(assert (=> d!126233 (= res!695325 (= (select (arr!31641 lt!459973) #b00000000000000000000000000000000) key!909))))

(assert (=> d!126233 (= (arrayContainsKey!0 lt!459973 key!909 #b00000000000000000000000000000000) e!591369)))

(declare-fun b!1043614 () Bool)

(declare-fun e!591370 () Bool)

(assert (=> b!1043614 (= e!591369 e!591370)))

(declare-fun res!695326 () Bool)

(assert (=> b!1043614 (=> (not res!695326) (not e!591370))))

(assert (=> b!1043614 (= res!695326 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32177 lt!459973)))))

(declare-fun b!1043615 () Bool)

(assert (=> b!1043615 (= e!591370 (arrayContainsKey!0 lt!459973 key!909 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!126233 (not res!695325)) b!1043614))

(assert (= (and b!1043614 res!695326) b!1043615))

(assert (=> d!126233 m!962997))

(declare-fun m!963019 () Bool)

(assert (=> b!1043615 m!963019))

(assert (=> b!1043447 d!126233))

(declare-fun b!1043616 () Bool)

(declare-fun e!591375 () Bool)

(declare-fun e!591372 () Bool)

(assert (=> b!1043616 (= e!591375 e!591372)))

(declare-fun res!695331 () Bool)

(declare-fun call!44254 () Bool)

(assert (=> b!1043616 (= res!695331 call!44254)))

(assert (=> b!1043616 (=> (not res!695331) (not e!591372))))

(declare-fun b!1043617 () Bool)

(declare-fun e!591378 () ListLongMap!13879)

(declare-fun call!44256 () ListLongMap!13879)

(assert (=> b!1043617 (= e!591378 call!44256)))

(declare-fun call!44255 () ListLongMap!13879)

(declare-fun bm!44248 () Bool)

(assert (=> bm!44248 (= call!44255 (getCurrentListMapNoExtraKeys!3536 lt!459973 (array!65787 (store (arr!31642 (_values!6408 thiss!1427)) (index!41695 lt!459974) (ValueCellFull!11706 (dynLambda!2005 (defaultEntry!6385 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!32178 (_values!6408 thiss!1427))) (mask!30471 thiss!1427) (extraKeys!6113 thiss!1427) (zeroValue!6219 thiss!1427) (minValue!6219 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6385 thiss!1427)))))

(declare-fun b!1043618 () Bool)

(declare-fun e!591383 () Unit!34072)

(declare-fun lt!460118 () Unit!34072)

(assert (=> b!1043618 (= e!591383 lt!460118)))

(declare-fun lt!460100 () ListLongMap!13879)

(assert (=> b!1043618 (= lt!460100 (getCurrentListMapNoExtraKeys!3536 lt!459973 (array!65787 (store (arr!31642 (_values!6408 thiss!1427)) (index!41695 lt!459974) (ValueCellFull!11706 (dynLambda!2005 (defaultEntry!6385 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!32178 (_values!6408 thiss!1427))) (mask!30471 thiss!1427) (extraKeys!6113 thiss!1427) (zeroValue!6219 thiss!1427) (minValue!6219 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6385 thiss!1427)))))

(declare-fun lt!460108 () (_ BitVec 64))

(assert (=> b!1043618 (= lt!460108 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!460106 () (_ BitVec 64))

(assert (=> b!1043618 (= lt!460106 (select (arr!31641 lt!459973) #b00000000000000000000000000000000))))

(declare-fun lt!460111 () Unit!34072)

(assert (=> b!1043618 (= lt!460111 (addStillContains!631 lt!460100 lt!460108 (zeroValue!6219 thiss!1427) lt!460106))))

(assert (=> b!1043618 (contains!6085 (+!3066 lt!460100 (tuple2!15843 lt!460108 (zeroValue!6219 thiss!1427))) lt!460106)))

(declare-fun lt!460101 () Unit!34072)

(assert (=> b!1043618 (= lt!460101 lt!460111)))

(declare-fun lt!460110 () ListLongMap!13879)

(assert (=> b!1043618 (= lt!460110 (getCurrentListMapNoExtraKeys!3536 lt!459973 (array!65787 (store (arr!31642 (_values!6408 thiss!1427)) (index!41695 lt!459974) (ValueCellFull!11706 (dynLambda!2005 (defaultEntry!6385 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!32178 (_values!6408 thiss!1427))) (mask!30471 thiss!1427) (extraKeys!6113 thiss!1427) (zeroValue!6219 thiss!1427) (minValue!6219 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6385 thiss!1427)))))

(declare-fun lt!460107 () (_ BitVec 64))

(assert (=> b!1043618 (= lt!460107 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!460099 () (_ BitVec 64))

(assert (=> b!1043618 (= lt!460099 (select (arr!31641 lt!459973) #b00000000000000000000000000000000))))

(declare-fun lt!460113 () Unit!34072)

(assert (=> b!1043618 (= lt!460113 (addApplyDifferent!483 lt!460110 lt!460107 (minValue!6219 thiss!1427) lt!460099))))

(assert (=> b!1043618 (= (apply!943 (+!3066 lt!460110 (tuple2!15843 lt!460107 (minValue!6219 thiss!1427))) lt!460099) (apply!943 lt!460110 lt!460099))))

(declare-fun lt!460105 () Unit!34072)

(assert (=> b!1043618 (= lt!460105 lt!460113)))

(declare-fun lt!460112 () ListLongMap!13879)

(assert (=> b!1043618 (= lt!460112 (getCurrentListMapNoExtraKeys!3536 lt!459973 (array!65787 (store (arr!31642 (_values!6408 thiss!1427)) (index!41695 lt!459974) (ValueCellFull!11706 (dynLambda!2005 (defaultEntry!6385 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!32178 (_values!6408 thiss!1427))) (mask!30471 thiss!1427) (extraKeys!6113 thiss!1427) (zeroValue!6219 thiss!1427) (minValue!6219 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6385 thiss!1427)))))

(declare-fun lt!460098 () (_ BitVec 64))

(assert (=> b!1043618 (= lt!460098 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!460119 () (_ BitVec 64))

(assert (=> b!1043618 (= lt!460119 (select (arr!31641 lt!459973) #b00000000000000000000000000000000))))

(declare-fun lt!460116 () Unit!34072)

(assert (=> b!1043618 (= lt!460116 (addApplyDifferent!483 lt!460112 lt!460098 (zeroValue!6219 thiss!1427) lt!460119))))

(assert (=> b!1043618 (= (apply!943 (+!3066 lt!460112 (tuple2!15843 lt!460098 (zeroValue!6219 thiss!1427))) lt!460119) (apply!943 lt!460112 lt!460119))))

(declare-fun lt!460114 () Unit!34072)

(assert (=> b!1043618 (= lt!460114 lt!460116)))

(declare-fun lt!460102 () ListLongMap!13879)

(assert (=> b!1043618 (= lt!460102 (getCurrentListMapNoExtraKeys!3536 lt!459973 (array!65787 (store (arr!31642 (_values!6408 thiss!1427)) (index!41695 lt!459974) (ValueCellFull!11706 (dynLambda!2005 (defaultEntry!6385 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!32178 (_values!6408 thiss!1427))) (mask!30471 thiss!1427) (extraKeys!6113 thiss!1427) (zeroValue!6219 thiss!1427) (minValue!6219 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6385 thiss!1427)))))

(declare-fun lt!460115 () (_ BitVec 64))

(assert (=> b!1043618 (= lt!460115 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!460117 () (_ BitVec 64))

(assert (=> b!1043618 (= lt!460117 (select (arr!31641 lt!459973) #b00000000000000000000000000000000))))

(assert (=> b!1043618 (= lt!460118 (addApplyDifferent!483 lt!460102 lt!460115 (minValue!6219 thiss!1427) lt!460117))))

(assert (=> b!1043618 (= (apply!943 (+!3066 lt!460102 (tuple2!15843 lt!460115 (minValue!6219 thiss!1427))) lt!460117) (apply!943 lt!460102 lt!460117))))

(declare-fun bm!44249 () Bool)

(declare-fun call!44253 () ListLongMap!13879)

(declare-fun call!44252 () ListLongMap!13879)

(assert (=> bm!44249 (= call!44253 call!44252)))

(declare-fun bm!44250 () Bool)

(declare-fun lt!460103 () ListLongMap!13879)

(assert (=> bm!44250 (= call!44254 (contains!6085 lt!460103 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1043619 () Bool)

(declare-fun e!591373 () Bool)

(assert (=> b!1043619 (= e!591373 e!591375)))

(declare-fun c!105918 () Bool)

(assert (=> b!1043619 (= c!105918 (not (= (bvand (extraKeys!6113 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1043620 () Bool)

(declare-fun c!105919 () Bool)

(assert (=> b!1043620 (= c!105919 (and (not (= (bvand (extraKeys!6113 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!6113 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!591380 () ListLongMap!13879)

(assert (=> b!1043620 (= e!591380 e!591378)))

(declare-fun bm!44251 () Bool)

(declare-fun call!44251 () ListLongMap!13879)

(assert (=> bm!44251 (= call!44251 call!44255)))

(declare-fun e!591379 () Bool)

(declare-fun b!1043621 () Bool)

(assert (=> b!1043621 (= e!591379 (= (apply!943 lt!460103 (select (arr!31641 lt!459973) #b00000000000000000000000000000000)) (get!16552 (select (arr!31642 (array!65787 (store (arr!31642 (_values!6408 thiss!1427)) (index!41695 lt!459974) (ValueCellFull!11706 (dynLambda!2005 (defaultEntry!6385 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!32178 (_values!6408 thiss!1427)))) #b00000000000000000000000000000000) (dynLambda!2005 (defaultEntry!6385 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1043621 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32178 (array!65787 (store (arr!31642 (_values!6408 thiss!1427)) (index!41695 lt!459974) (ValueCellFull!11706 (dynLambda!2005 (defaultEntry!6385 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!32178 (_values!6408 thiss!1427))))))))

(assert (=> b!1043621 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32177 lt!459973)))))

(declare-fun bm!44252 () Bool)

(declare-fun c!105922 () Bool)

(declare-fun c!105921 () Bool)

(assert (=> bm!44252 (= call!44252 (+!3066 (ite c!105922 call!44255 (ite c!105921 call!44251 call!44256)) (ite (or c!105922 c!105921) (tuple2!15843 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6219 thiss!1427)) (tuple2!15843 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6219 thiss!1427)))))))

(declare-fun b!1043622 () Bool)

(assert (=> b!1043622 (= e!591372 (= (apply!943 lt!460103 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!6219 thiss!1427)))))

(declare-fun d!126235 () Bool)

(assert (=> d!126235 e!591373))

(declare-fun res!695333 () Bool)

(assert (=> d!126235 (=> (not res!695333) (not e!591373))))

(assert (=> d!126235 (= res!695333 (or (bvsge #b00000000000000000000000000000000 (size!32177 lt!459973)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32177 lt!459973)))))))

(declare-fun lt!460104 () ListLongMap!13879)

(assert (=> d!126235 (= lt!460103 lt!460104)))

(declare-fun lt!460109 () Unit!34072)

(assert (=> d!126235 (= lt!460109 e!591383)))

(declare-fun c!105917 () Bool)

(declare-fun e!591376 () Bool)

(assert (=> d!126235 (= c!105917 e!591376)))

(declare-fun res!695335 () Bool)

(assert (=> d!126235 (=> (not res!695335) (not e!591376))))

(assert (=> d!126235 (= res!695335 (bvslt #b00000000000000000000000000000000 (size!32177 lt!459973)))))

(declare-fun e!591377 () ListLongMap!13879)

(assert (=> d!126235 (= lt!460104 e!591377)))

(assert (=> d!126235 (= c!105922 (and (not (= (bvand (extraKeys!6113 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!6113 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!126235 (validMask!0 (mask!30471 thiss!1427))))

(assert (=> d!126235 (= (getCurrentListMap!3961 lt!459973 (array!65787 (store (arr!31642 (_values!6408 thiss!1427)) (index!41695 lt!459974) (ValueCellFull!11706 (dynLambda!2005 (defaultEntry!6385 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!32178 (_values!6408 thiss!1427))) (mask!30471 thiss!1427) (extraKeys!6113 thiss!1427) (zeroValue!6219 thiss!1427) (minValue!6219 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6385 thiss!1427)) lt!460103)))

(declare-fun b!1043623 () Bool)

(declare-fun Unit!34077 () Unit!34072)

(assert (=> b!1043623 (= e!591383 Unit!34077)))

(declare-fun b!1043624 () Bool)

(declare-fun e!591382 () Bool)

(declare-fun e!591371 () Bool)

(assert (=> b!1043624 (= e!591382 e!591371)))

(declare-fun res!695332 () Bool)

(declare-fun call!44257 () Bool)

(assert (=> b!1043624 (= res!695332 call!44257)))

(assert (=> b!1043624 (=> (not res!695332) (not e!591371))))

(declare-fun bm!44253 () Bool)

(assert (=> bm!44253 (= call!44257 (contains!6085 lt!460103 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1043625 () Bool)

(declare-fun e!591381 () Bool)

(assert (=> b!1043625 (= e!591381 (validKeyInArray!0 (select (arr!31641 lt!459973) #b00000000000000000000000000000000)))))

(declare-fun b!1043626 () Bool)

(assert (=> b!1043626 (= e!591382 (not call!44257))))

(declare-fun b!1043627 () Bool)

(assert (=> b!1043627 (= e!591377 (+!3066 call!44252 (tuple2!15843 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6219 thiss!1427))))))

(declare-fun b!1043628 () Bool)

(assert (=> b!1043628 (= e!591371 (= (apply!943 lt!460103 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!6219 thiss!1427)))))

(declare-fun b!1043629 () Bool)

(assert (=> b!1043629 (= e!591380 call!44253)))

(declare-fun b!1043630 () Bool)

(assert (=> b!1043630 (= e!591376 (validKeyInArray!0 (select (arr!31641 lt!459973) #b00000000000000000000000000000000)))))

(declare-fun b!1043631 () Bool)

(declare-fun res!695329 () Bool)

(assert (=> b!1043631 (=> (not res!695329) (not e!591373))))

(declare-fun e!591374 () Bool)

(assert (=> b!1043631 (= res!695329 e!591374)))

(declare-fun res!695330 () Bool)

(assert (=> b!1043631 (=> res!695330 e!591374)))

(assert (=> b!1043631 (= res!695330 (not e!591381))))

(declare-fun res!695334 () Bool)

(assert (=> b!1043631 (=> (not res!695334) (not e!591381))))

(assert (=> b!1043631 (= res!695334 (bvslt #b00000000000000000000000000000000 (size!32177 lt!459973)))))

(declare-fun b!1043632 () Bool)

(declare-fun res!695328 () Bool)

(assert (=> b!1043632 (=> (not res!695328) (not e!591373))))

(assert (=> b!1043632 (= res!695328 e!591382)))

(declare-fun c!105920 () Bool)

(assert (=> b!1043632 (= c!105920 (not (= (bvand (extraKeys!6113 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1043633 () Bool)

(assert (=> b!1043633 (= e!591375 (not call!44254))))

(declare-fun b!1043634 () Bool)

(assert (=> b!1043634 (= e!591377 e!591380)))

(assert (=> b!1043634 (= c!105921 (and (not (= (bvand (extraKeys!6113 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!6113 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1043635 () Bool)

(assert (=> b!1043635 (= e!591374 e!591379)))

(declare-fun res!695327 () Bool)

(assert (=> b!1043635 (=> (not res!695327) (not e!591379))))

(assert (=> b!1043635 (= res!695327 (contains!6085 lt!460103 (select (arr!31641 lt!459973) #b00000000000000000000000000000000)))))

(assert (=> b!1043635 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32177 lt!459973)))))

(declare-fun bm!44254 () Bool)

(assert (=> bm!44254 (= call!44256 call!44251)))

(declare-fun b!1043636 () Bool)

(assert (=> b!1043636 (= e!591378 call!44253)))

(assert (= (and d!126235 c!105922) b!1043627))

(assert (= (and d!126235 (not c!105922)) b!1043634))

(assert (= (and b!1043634 c!105921) b!1043629))

(assert (= (and b!1043634 (not c!105921)) b!1043620))

(assert (= (and b!1043620 c!105919) b!1043636))

(assert (= (and b!1043620 (not c!105919)) b!1043617))

(assert (= (or b!1043636 b!1043617) bm!44254))

(assert (= (or b!1043629 bm!44254) bm!44251))

(assert (= (or b!1043629 b!1043636) bm!44249))

(assert (= (or b!1043627 bm!44251) bm!44248))

(assert (= (or b!1043627 bm!44249) bm!44252))

(assert (= (and d!126235 res!695335) b!1043630))

(assert (= (and d!126235 c!105917) b!1043618))

(assert (= (and d!126235 (not c!105917)) b!1043623))

(assert (= (and d!126235 res!695333) b!1043631))

(assert (= (and b!1043631 res!695334) b!1043625))

(assert (= (and b!1043631 (not res!695330)) b!1043635))

(assert (= (and b!1043635 res!695327) b!1043621))

(assert (= (and b!1043631 res!695329) b!1043632))

(assert (= (and b!1043632 c!105920) b!1043624))

(assert (= (and b!1043632 (not c!105920)) b!1043626))

(assert (= (and b!1043624 res!695332) b!1043628))

(assert (= (or b!1043624 b!1043626) bm!44253))

(assert (= (and b!1043632 res!695328) b!1043619))

(assert (= (and b!1043619 c!105918) b!1043616))

(assert (= (and b!1043619 (not c!105918)) b!1043633))

(assert (= (and b!1043616 res!695331) b!1043622))

(assert (= (or b!1043616 b!1043633) bm!44250))

(declare-fun b_lambda!16197 () Bool)

(assert (=> (not b_lambda!16197) (not b!1043621)))

(assert (=> b!1043621 t!31342))

(declare-fun b_and!33661 () Bool)

(assert (= b_and!33659 (and (=> t!31342 result!14507) b_and!33661)))

(assert (=> b!1043621 m!962997))

(declare-fun m!963021 () Bool)

(assert (=> b!1043621 m!963021))

(declare-fun m!963023 () Bool)

(assert (=> b!1043621 m!963023))

(assert (=> b!1043621 m!962849))

(declare-fun m!963025 () Bool)

(assert (=> b!1043621 m!963025))

(assert (=> b!1043621 m!962849))

(assert (=> b!1043621 m!962997))

(assert (=> b!1043621 m!963023))

(declare-fun m!963027 () Bool)

(assert (=> bm!44250 m!963027))

(assert (=> d!126235 m!962917))

(declare-fun m!963029 () Bool)

(assert (=> bm!44248 m!963029))

(declare-fun m!963031 () Bool)

(assert (=> b!1043628 m!963031))

(declare-fun m!963033 () Bool)

(assert (=> bm!44253 m!963033))

(declare-fun m!963035 () Bool)

(assert (=> b!1043622 m!963035))

(assert (=> b!1043635 m!962997))

(assert (=> b!1043635 m!962997))

(declare-fun m!963037 () Bool)

(assert (=> b!1043635 m!963037))

(assert (=> b!1043625 m!962997))

(assert (=> b!1043625 m!962997))

(assert (=> b!1043625 m!962999))

(assert (=> b!1043630 m!962997))

(assert (=> b!1043630 m!962997))

(assert (=> b!1043630 m!962999))

(declare-fun m!963039 () Bool)

(assert (=> bm!44252 m!963039))

(declare-fun m!963041 () Bool)

(assert (=> b!1043618 m!963041))

(declare-fun m!963043 () Bool)

(assert (=> b!1043618 m!963043))

(declare-fun m!963045 () Bool)

(assert (=> b!1043618 m!963045))

(declare-fun m!963047 () Bool)

(assert (=> b!1043618 m!963047))

(declare-fun m!963049 () Bool)

(assert (=> b!1043618 m!963049))

(assert (=> b!1043618 m!963047))

(declare-fun m!963051 () Bool)

(assert (=> b!1043618 m!963051))

(declare-fun m!963053 () Bool)

(assert (=> b!1043618 m!963053))

(assert (=> b!1043618 m!962997))

(assert (=> b!1043618 m!963053))

(declare-fun m!963055 () Bool)

(assert (=> b!1043618 m!963055))

(assert (=> b!1043618 m!963029))

(declare-fun m!963057 () Bool)

(assert (=> b!1043618 m!963057))

(declare-fun m!963059 () Bool)

(assert (=> b!1043618 m!963059))

(declare-fun m!963061 () Bool)

(assert (=> b!1043618 m!963061))

(declare-fun m!963063 () Bool)

(assert (=> b!1043618 m!963063))

(declare-fun m!963065 () Bool)

(assert (=> b!1043618 m!963065))

(declare-fun m!963067 () Bool)

(assert (=> b!1043618 m!963067))

(assert (=> b!1043618 m!963065))

(declare-fun m!963069 () Bool)

(assert (=> b!1043618 m!963069))

(assert (=> b!1043618 m!963057))

(declare-fun m!963071 () Bool)

(assert (=> b!1043627 m!963071))

(assert (=> b!1043447 d!126235))

(declare-fun d!126237 () Bool)

(declare-fun e!591386 () Bool)

(assert (=> d!126237 e!591386))

(declare-fun res!695338 () Bool)

(assert (=> d!126237 (=> (not res!695338) (not e!591386))))

(assert (=> d!126237 (= res!695338 (and (bvsge (index!41695 lt!459974) #b00000000000000000000000000000000) (bvslt (index!41695 lt!459974) (size!32177 (_keys!11640 thiss!1427)))))))

(declare-fun lt!460122 () Unit!34072)

(declare-fun choose!53 (array!65784 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22119) Unit!34072)

(assert (=> d!126237 (= lt!460122 (choose!53 (_keys!11640 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41695 lt!459974) #b00000000000000000000000000000000 Nil!22116))))

(assert (=> d!126237 (bvslt (size!32177 (_keys!11640 thiss!1427)) #b01111111111111111111111111111111)))

(assert (=> d!126237 (= (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11640 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41695 lt!459974) #b00000000000000000000000000000000 Nil!22116) lt!460122)))

(declare-fun b!1043639 () Bool)

(assert (=> b!1043639 (= e!591386 (arrayNoDuplicates!0 (array!65785 (store (arr!31641 (_keys!11640 thiss!1427)) (index!41695 lt!459974) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32177 (_keys!11640 thiss!1427))) #b00000000000000000000000000000000 Nil!22116))))

(assert (= (and d!126237 res!695338) b!1043639))

(declare-fun m!963073 () Bool)

(assert (=> d!126237 m!963073))

(assert (=> b!1043639 m!962843))

(declare-fun m!963075 () Bool)

(assert (=> b!1043639 m!963075))

(assert (=> b!1043447 d!126237))

(declare-fun d!126239 () Bool)

(declare-fun e!591389 () Bool)

(assert (=> d!126239 e!591389))

(declare-fun res!695341 () Bool)

(assert (=> d!126239 (=> (not res!695341) (not e!591389))))

(assert (=> d!126239 (= res!695341 (and (bvsge (index!41695 lt!459974) #b00000000000000000000000000000000) (bvslt (index!41695 lt!459974) (size!32177 (_keys!11640 thiss!1427)))))))

(declare-fun lt!460125 () Unit!34072)

(declare-fun choose!1714 (array!65784 array!65786 (_ BitVec 32) (_ BitVec 32) V!37965 V!37965 (_ BitVec 32) (_ BitVec 64) Int) Unit!34072)

(assert (=> d!126239 (= lt!460125 (choose!1714 (_keys!11640 thiss!1427) (_values!6408 thiss!1427) (mask!30471 thiss!1427) (extraKeys!6113 thiss!1427) (zeroValue!6219 thiss!1427) (minValue!6219 thiss!1427) (index!41695 lt!459974) key!909 (defaultEntry!6385 thiss!1427)))))

(assert (=> d!126239 (validMask!0 (mask!30471 thiss!1427))))

(assert (=> d!126239 (= (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!51 (_keys!11640 thiss!1427) (_values!6408 thiss!1427) (mask!30471 thiss!1427) (extraKeys!6113 thiss!1427) (zeroValue!6219 thiss!1427) (minValue!6219 thiss!1427) (index!41695 lt!459974) key!909 (defaultEntry!6385 thiss!1427)) lt!460125)))

(declare-fun b!1043642 () Bool)

(assert (=> b!1043642 (= e!591389 (= (-!531 (getCurrentListMap!3961 (_keys!11640 thiss!1427) (_values!6408 thiss!1427) (mask!30471 thiss!1427) (extraKeys!6113 thiss!1427) (zeroValue!6219 thiss!1427) (minValue!6219 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6385 thiss!1427)) key!909) (getCurrentListMap!3961 (array!65785 (store (arr!31641 (_keys!11640 thiss!1427)) (index!41695 lt!459974) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32177 (_keys!11640 thiss!1427))) (array!65787 (store (arr!31642 (_values!6408 thiss!1427)) (index!41695 lt!459974) (ValueCellFull!11706 (dynLambda!2005 (defaultEntry!6385 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!32178 (_values!6408 thiss!1427))) (mask!30471 thiss!1427) (extraKeys!6113 thiss!1427) (zeroValue!6219 thiss!1427) (minValue!6219 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6385 thiss!1427))))))

(assert (=> b!1043642 (bvslt (index!41695 lt!459974) (size!32178 (_values!6408 thiss!1427)))))

(assert (= (and d!126239 res!695341) b!1043642))

(declare-fun b_lambda!16199 () Bool)

(assert (=> (not b_lambda!16199) (not b!1043642)))

(assert (=> b!1043642 t!31342))

(declare-fun b_and!33663 () Bool)

(assert (= b_and!33661 (and (=> t!31342 result!14507) b_and!33663)))

(declare-fun m!963077 () Bool)

(assert (=> d!126239 m!963077))

(assert (=> d!126239 m!962917))

(assert (=> b!1043642 m!962849))

(assert (=> b!1043642 m!962845))

(declare-fun m!963079 () Bool)

(assert (=> b!1043642 m!963079))

(assert (=> b!1043642 m!962843))

(assert (=> b!1043642 m!962859))

(assert (=> b!1043642 m!962845))

(assert (=> b!1043642 m!962857))

(assert (=> b!1043447 d!126239))

(declare-fun b!1043643 () Bool)

(declare-fun e!591390 () (_ BitVec 32))

(declare-fun e!591391 () (_ BitVec 32))

(assert (=> b!1043643 (= e!591390 e!591391)))

(declare-fun c!105923 () Bool)

(assert (=> b!1043643 (= c!105923 (validKeyInArray!0 (select (arr!31641 (_keys!11640 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun bm!44255 () Bool)

(declare-fun call!44258 () (_ BitVec 32))

(assert (=> bm!44255 (= call!44258 (arrayCountValidKeys!0 (_keys!11640 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32177 (_keys!11640 thiss!1427))))))

(declare-fun b!1043644 () Bool)

(assert (=> b!1043644 (= e!591391 (bvadd #b00000000000000000000000000000001 call!44258))))

(declare-fun b!1043645 () Bool)

(assert (=> b!1043645 (= e!591391 call!44258)))

(declare-fun b!1043646 () Bool)

(assert (=> b!1043646 (= e!591390 #b00000000000000000000000000000000)))

(declare-fun d!126241 () Bool)

(declare-fun lt!460126 () (_ BitVec 32))

(assert (=> d!126241 (and (bvsge lt!460126 #b00000000000000000000000000000000) (bvsle lt!460126 (bvsub (size!32177 (_keys!11640 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> d!126241 (= lt!460126 e!591390)))

(declare-fun c!105924 () Bool)

(assert (=> d!126241 (= c!105924 (bvsge #b00000000000000000000000000000000 (size!32177 (_keys!11640 thiss!1427))))))

(assert (=> d!126241 (and (bvsle #b00000000000000000000000000000000 (size!32177 (_keys!11640 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!32177 (_keys!11640 thiss!1427)) (size!32177 (_keys!11640 thiss!1427))))))

(assert (=> d!126241 (= (arrayCountValidKeys!0 (_keys!11640 thiss!1427) #b00000000000000000000000000000000 (size!32177 (_keys!11640 thiss!1427))) lt!460126)))

(assert (= (and d!126241 c!105924) b!1043646))

(assert (= (and d!126241 (not c!105924)) b!1043643))

(assert (= (and b!1043643 c!105923) b!1043644))

(assert (= (and b!1043643 (not c!105923)) b!1043645))

(assert (= (or b!1043644 b!1043645) bm!44255))

(assert (=> b!1043643 m!962927))

(assert (=> b!1043643 m!962927))

(assert (=> b!1043643 m!962947))

(declare-fun m!963081 () Bool)

(assert (=> bm!44255 m!963081))

(assert (=> b!1043447 d!126241))

(declare-fun b!1043657 () Bool)

(declare-fun e!591403 () Bool)

(declare-fun call!44261 () Bool)

(assert (=> b!1043657 (= e!591403 call!44261)))

(declare-fun b!1043658 () Bool)

(assert (=> b!1043658 (= e!591403 call!44261)))

(declare-fun b!1043659 () Bool)

(declare-fun e!591401 () Bool)

(declare-fun e!591400 () Bool)

(assert (=> b!1043659 (= e!591401 e!591400)))

(declare-fun res!695349 () Bool)

(assert (=> b!1043659 (=> (not res!695349) (not e!591400))))

(declare-fun e!591402 () Bool)

(assert (=> b!1043659 (= res!695349 (not e!591402))))

(declare-fun res!695350 () Bool)

(assert (=> b!1043659 (=> (not res!695350) (not e!591402))))

(assert (=> b!1043659 (= res!695350 (validKeyInArray!0 (select (arr!31641 lt!459973) #b00000000000000000000000000000000)))))

(declare-fun bm!44258 () Bool)

(declare-fun c!105927 () Bool)

(assert (=> bm!44258 (= call!44261 (arrayNoDuplicates!0 lt!459973 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!105927 (Cons!22115 (select (arr!31641 lt!459973) #b00000000000000000000000000000000) Nil!22116) Nil!22116)))))

(declare-fun d!126243 () Bool)

(declare-fun res!695348 () Bool)

(assert (=> d!126243 (=> res!695348 e!591401)))

(assert (=> d!126243 (= res!695348 (bvsge #b00000000000000000000000000000000 (size!32177 lt!459973)))))

(assert (=> d!126243 (= (arrayNoDuplicates!0 lt!459973 #b00000000000000000000000000000000 Nil!22116) e!591401)))

(declare-fun b!1043660 () Bool)

(declare-fun contains!6086 (List!22119 (_ BitVec 64)) Bool)

(assert (=> b!1043660 (= e!591402 (contains!6086 Nil!22116 (select (arr!31641 lt!459973) #b00000000000000000000000000000000)))))

(declare-fun b!1043661 () Bool)

(assert (=> b!1043661 (= e!591400 e!591403)))

(assert (=> b!1043661 (= c!105927 (validKeyInArray!0 (select (arr!31641 lt!459973) #b00000000000000000000000000000000)))))

(assert (= (and d!126243 (not res!695348)) b!1043659))

(assert (= (and b!1043659 res!695350) b!1043660))

(assert (= (and b!1043659 res!695349) b!1043661))

(assert (= (and b!1043661 c!105927) b!1043657))

(assert (= (and b!1043661 (not c!105927)) b!1043658))

(assert (= (or b!1043657 b!1043658) bm!44258))

(assert (=> b!1043659 m!962997))

(assert (=> b!1043659 m!962997))

(assert (=> b!1043659 m!962999))

(assert (=> bm!44258 m!962997))

(declare-fun m!963083 () Bool)

(assert (=> bm!44258 m!963083))

(assert (=> b!1043660 m!962997))

(assert (=> b!1043660 m!962997))

(declare-fun m!963085 () Bool)

(assert (=> b!1043660 m!963085))

(assert (=> b!1043661 m!962997))

(assert (=> b!1043661 m!962997))

(assert (=> b!1043661 m!962999))

(assert (=> b!1043447 d!126243))

(declare-fun d!126245 () Bool)

(assert (=> d!126245 (= (array_inv!24289 (_keys!11640 thiss!1427)) (bvsge (size!32177 (_keys!11640 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1043448 d!126245))

(declare-fun d!126247 () Bool)

(assert (=> d!126247 (= (array_inv!24290 (_values!6408 thiss!1427)) (bvsge (size!32178 (_values!6408 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1043448 d!126247))

(declare-fun b!1043669 () Bool)

(declare-fun e!591409 () Bool)

(assert (=> b!1043669 (= e!591409 tp_is_empty!24819)))

(declare-fun mapNonEmpty!38855 () Bool)

(declare-fun mapRes!38855 () Bool)

(declare-fun tp!74545 () Bool)

(declare-fun e!591408 () Bool)

(assert (=> mapNonEmpty!38855 (= mapRes!38855 (and tp!74545 e!591408))))

(declare-fun mapValue!38855 () ValueCell!11706)

(declare-fun mapRest!38855 () (Array (_ BitVec 32) ValueCell!11706))

(declare-fun mapKey!38855 () (_ BitVec 32))

(assert (=> mapNonEmpty!38855 (= mapRest!38849 (store mapRest!38855 mapKey!38855 mapValue!38855))))

(declare-fun b!1043668 () Bool)

(assert (=> b!1043668 (= e!591408 tp_is_empty!24819)))

(declare-fun condMapEmpty!38855 () Bool)

(declare-fun mapDefault!38855 () ValueCell!11706)

(assert (=> mapNonEmpty!38849 (= condMapEmpty!38855 (= mapRest!38849 ((as const (Array (_ BitVec 32) ValueCell!11706)) mapDefault!38855)))))

(assert (=> mapNonEmpty!38849 (= tp!74535 (and e!591409 mapRes!38855))))

(declare-fun mapIsEmpty!38855 () Bool)

(assert (=> mapIsEmpty!38855 mapRes!38855))

(assert (= (and mapNonEmpty!38849 condMapEmpty!38855) mapIsEmpty!38855))

(assert (= (and mapNonEmpty!38849 (not condMapEmpty!38855)) mapNonEmpty!38855))

(assert (= (and mapNonEmpty!38855 ((_ is ValueCellFull!11706) mapValue!38855)) b!1043668))

(assert (= (and mapNonEmpty!38849 ((_ is ValueCellFull!11706) mapDefault!38855)) b!1043669))

(declare-fun m!963087 () Bool)

(assert (=> mapNonEmpty!38855 m!963087))

(declare-fun b_lambda!16201 () Bool)

(assert (= b_lambda!16195 (or (and b!1043448 b_free!21099) b_lambda!16201)))

(declare-fun b_lambda!16203 () Bool)

(assert (= b_lambda!16197 (or (and b!1043448 b_free!21099) b_lambda!16203)))

(declare-fun b_lambda!16205 () Bool)

(assert (= b_lambda!16199 (or (and b!1043448 b_free!21099) b_lambda!16205)))

(check-sat (not b!1043618) (not b!1043503) (not bm!44252) (not d!126227) (not b!1043661) (not b!1043561) (not b_lambda!16205) (not bm!44258) (not b!1043594) (not d!126219) (not bm!44240) (not b!1043553) (not d!126237) (not b!1043577) (not b!1043552) (not d!126215) (not bm!44237) (not b!1043590) (not bm!44253) (not bm!44239) (not b!1043609) (not b!1043579) (not b!1043625) (not d!126221) (not b!1043556) (not b!1043659) (not bm!44235) (not b!1043566) (not b!1043549) (not b_lambda!16193) (not b!1043660) (not b!1043502) (not d!126239) (not b!1043643) (not b!1043628) (not b_lambda!16203) (not d!126217) (not bm!44250) (not b!1043576) (not d!126235) (not b!1043627) (not b!1043559) b_and!33663 (not b_next!21099) (not bm!44248) (not b!1043603) (not b!1043622) (not b!1043615) (not d!126223) (not b!1043589) (not b!1043558) (not b!1043621) tp_is_empty!24819 (not b_lambda!16201) (not b!1043642) (not bm!44244) (not bm!44247) (not b!1043635) (not b!1043495) (not b!1043639) (not b!1043504) (not b!1043630) (not mapNonEmpty!38855) (not bm!44255) (not d!126231))
(check-sat b_and!33663 (not b_next!21099))
