; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!91890 () Bool)

(assert start!91890)

(declare-fun b!1044899 () Bool)

(declare-fun b_free!21129 () Bool)

(declare-fun b_next!21129 () Bool)

(assert (=> b!1044899 (= b_free!21129 (not b_next!21129))))

(declare-fun tp!74640 () Bool)

(declare-fun b_and!33747 () Bool)

(assert (=> b!1044899 (= tp!74640 b_and!33747)))

(declare-fun b!1044896 () Bool)

(declare-fun e!592285 () Bool)

(declare-datatypes ((V!38005 0))(
  ( (V!38006 (val!12475 Int)) )
))
(declare-datatypes ((ValueCell!11721 0))(
  ( (ValueCellFull!11721 (v!15070 V!38005)) (EmptyCell!11721) )
))
(declare-datatypes ((Unit!34118 0))(
  ( (Unit!34119) )
))
(declare-datatypes ((array!65854 0))(
  ( (array!65855 (arr!31671 (Array (_ BitVec 32) (_ BitVec 64))) (size!32207 (_ BitVec 32))) )
))
(declare-datatypes ((array!65856 0))(
  ( (array!65857 (arr!31672 (Array (_ BitVec 32) ValueCell!11721)) (size!32208 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6036 0))(
  ( (LongMapFixedSize!6037 (defaultEntry!6410 Int) (mask!30524 (_ BitVec 32)) (extraKeys!6138 (_ BitVec 32)) (zeroValue!6244 V!38005) (minValue!6244 V!38005) (_size!3073 (_ BitVec 32)) (_keys!11675 array!65854) (_values!6433 array!65856) (_vacant!3073 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!15872 0))(
  ( (tuple2!15873 (_1!7946 Unit!34118) (_2!7946 LongMapFixedSize!6036)) )
))
(declare-fun lt!461111 () tuple2!15872)

(assert (=> b!1044896 (= e!592285 (or (not (= (size!32208 (_values!6433 (_2!7946 lt!461111))) (bvadd #b00000000000000000000000000000001 (mask!30524 (_2!7946 lt!461111))))) (not (= (size!32207 (_keys!11675 (_2!7946 lt!461111))) (size!32208 (_values!6433 (_2!7946 lt!461111))))) (bvsge (mask!30524 (_2!7946 lt!461111)) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!38909 () Bool)

(declare-fun mapRes!38909 () Bool)

(declare-fun tp!74641 () Bool)

(declare-fun e!592283 () Bool)

(assert (=> mapNonEmpty!38909 (= mapRes!38909 (and tp!74641 e!592283))))

(declare-fun mapKey!38909 () (_ BitVec 32))

(declare-fun mapValue!38909 () ValueCell!11721)

(declare-fun thiss!1427 () LongMapFixedSize!6036)

(declare-fun mapRest!38909 () (Array (_ BitVec 32) ValueCell!11721))

(assert (=> mapNonEmpty!38909 (= (arr!31672 (_values!6433 thiss!1427)) (store mapRest!38909 mapKey!38909 mapValue!38909))))

(declare-fun b!1044897 () Bool)

(declare-fun tp_is_empty!24849 () Bool)

(assert (=> b!1044897 (= e!592283 tp_is_empty!24849)))

(declare-fun b!1044898 () Bool)

(declare-fun e!592280 () Bool)

(declare-fun e!592278 () Bool)

(assert (=> b!1044898 (= e!592280 (and e!592278 mapRes!38909))))

(declare-fun condMapEmpty!38909 () Bool)

(declare-fun mapDefault!38909 () ValueCell!11721)

(assert (=> b!1044898 (= condMapEmpty!38909 (= (arr!31672 (_values!6433 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11721)) mapDefault!38909)))))

(declare-fun b!1044900 () Bool)

(declare-fun res!695927 () Bool)

(declare-fun e!592284 () Bool)

(assert (=> b!1044900 (=> (not res!695927) (not e!592284))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1044900 (= res!695927 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1044901 () Bool)

(declare-fun e!592279 () Bool)

(assert (=> b!1044901 (= e!592284 e!592279)))

(declare-fun res!695925 () Bool)

(assert (=> b!1044901 (=> (not res!695925) (not e!592279))))

(declare-datatypes ((SeekEntryResult!9842 0))(
  ( (MissingZero!9842 (index!41738 (_ BitVec 32))) (Found!9842 (index!41739 (_ BitVec 32))) (Intermediate!9842 (undefined!10654 Bool) (index!41740 (_ BitVec 32)) (x!93317 (_ BitVec 32))) (Undefined!9842) (MissingVacant!9842 (index!41741 (_ BitVec 32))) )
))
(declare-fun lt!461105 () SeekEntryResult!9842)

(get-info :version)

(assert (=> b!1044901 (= res!695925 ((_ is Found!9842) lt!461105))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65854 (_ BitVec 32)) SeekEntryResult!9842)

(assert (=> b!1044901 (= lt!461105 (seekEntry!0 key!909 (_keys!11675 thiss!1427) (mask!30524 thiss!1427)))))

(declare-fun mapIsEmpty!38909 () Bool)

(assert (=> mapIsEmpty!38909 mapRes!38909))

(declare-fun b!1044902 () Bool)

(assert (=> b!1044902 (= e!592279 (not e!592285))))

(declare-fun res!695928 () Bool)

(assert (=> b!1044902 (=> res!695928 e!592285)))

(declare-datatypes ((tuple2!15874 0))(
  ( (tuple2!15875 (_1!7947 (_ BitVec 64)) (_2!7947 V!38005)) )
))
(declare-datatypes ((List!22136 0))(
  ( (Nil!22133) (Cons!22132 (h!23340 tuple2!15874) (t!31397 List!22136)) )
))
(declare-datatypes ((ListLongMap!13897 0))(
  ( (ListLongMap!13898 (toList!6964 List!22136)) )
))
(declare-fun contains!6096 (ListLongMap!13897 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3970 (array!65854 array!65856 (_ BitVec 32) (_ BitVec 32) V!38005 V!38005 (_ BitVec 32) Int) ListLongMap!13897)

(assert (=> b!1044902 (= res!695928 (not (contains!6096 (getCurrentListMap!3970 (_keys!11675 (_2!7946 lt!461111)) (_values!6433 (_2!7946 lt!461111)) (mask!30524 (_2!7946 lt!461111)) (extraKeys!6138 (_2!7946 lt!461111)) (zeroValue!6244 (_2!7946 lt!461111)) (minValue!6244 (_2!7946 lt!461111)) #b00000000000000000000000000000000 (defaultEntry!6410 (_2!7946 lt!461111))) key!909)))))

(declare-fun lt!461107 () array!65854)

(declare-fun lt!461106 () array!65856)

(declare-fun Unit!34120 () Unit!34118)

(declare-fun Unit!34121 () Unit!34118)

(assert (=> b!1044902 (= lt!461111 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!3073 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15873 Unit!34120 (LongMapFixedSize!6037 (defaultEntry!6410 thiss!1427) (mask!30524 thiss!1427) (extraKeys!6138 thiss!1427) (zeroValue!6244 thiss!1427) (minValue!6244 thiss!1427) (bvsub (_size!3073 thiss!1427) #b00000000000000000000000000000001) lt!461107 lt!461106 (bvadd #b00000000000000000000000000000001 (_vacant!3073 thiss!1427)))) (tuple2!15873 Unit!34121 (LongMapFixedSize!6037 (defaultEntry!6410 thiss!1427) (mask!30524 thiss!1427) (extraKeys!6138 thiss!1427) (zeroValue!6244 thiss!1427) (minValue!6244 thiss!1427) (bvsub (_size!3073 thiss!1427) #b00000000000000000000000000000001) lt!461107 lt!461106 (_vacant!3073 thiss!1427)))))))

(declare-fun -!540 (ListLongMap!13897 (_ BitVec 64)) ListLongMap!13897)

(assert (=> b!1044902 (= (-!540 (getCurrentListMap!3970 (_keys!11675 thiss!1427) (_values!6433 thiss!1427) (mask!30524 thiss!1427) (extraKeys!6138 thiss!1427) (zeroValue!6244 thiss!1427) (minValue!6244 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6410 thiss!1427)) key!909) (getCurrentListMap!3970 lt!461107 lt!461106 (mask!30524 thiss!1427) (extraKeys!6138 thiss!1427) (zeroValue!6244 thiss!1427) (minValue!6244 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6410 thiss!1427)))))

(declare-fun dynLambda!2014 (Int (_ BitVec 64)) V!38005)

(assert (=> b!1044902 (= lt!461106 (array!65857 (store (arr!31672 (_values!6433 thiss!1427)) (index!41739 lt!461105) (ValueCellFull!11721 (dynLambda!2014 (defaultEntry!6410 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!32208 (_values!6433 thiss!1427))))))

(declare-fun lt!461110 () Unit!34118)

(declare-fun lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!60 (array!65854 array!65856 (_ BitVec 32) (_ BitVec 32) V!38005 V!38005 (_ BitVec 32) (_ BitVec 64) Int) Unit!34118)

(assert (=> b!1044902 (= lt!461110 (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!60 (_keys!11675 thiss!1427) (_values!6433 thiss!1427) (mask!30524 thiss!1427) (extraKeys!6138 thiss!1427) (zeroValue!6244 thiss!1427) (minValue!6244 thiss!1427) (index!41739 lt!461105) key!909 (defaultEntry!6410 thiss!1427)))))

(declare-fun arrayContainsKey!0 (array!65854 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1044902 (not (arrayContainsKey!0 lt!461107 key!909 #b00000000000000000000000000000000))))

(declare-fun lt!461104 () Unit!34118)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!65854 (_ BitVec 32) (_ BitVec 64)) Unit!34118)

(assert (=> b!1044902 (= lt!461104 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11675 thiss!1427) (index!41739 lt!461105) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65854 (_ BitVec 32)) Bool)

(assert (=> b!1044902 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!461107 (mask!30524 thiss!1427))))

(declare-fun lt!461109 () Unit!34118)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!65854 (_ BitVec 32) (_ BitVec 32)) Unit!34118)

(assert (=> b!1044902 (= lt!461109 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11675 thiss!1427) (index!41739 lt!461105) (mask!30524 thiss!1427)))))

(declare-datatypes ((List!22137 0))(
  ( (Nil!22134) (Cons!22133 (h!23341 (_ BitVec 64)) (t!31398 List!22137)) )
))
(declare-fun arrayNoDuplicates!0 (array!65854 (_ BitVec 32) List!22137) Bool)

(assert (=> b!1044902 (arrayNoDuplicates!0 lt!461107 #b00000000000000000000000000000000 Nil!22134)))

(declare-fun lt!461112 () Unit!34118)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!65854 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22137) Unit!34118)

(assert (=> b!1044902 (= lt!461112 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11675 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41739 lt!461105) #b00000000000000000000000000000000 Nil!22134))))

(declare-fun arrayCountValidKeys!0 (array!65854 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1044902 (= (arrayCountValidKeys!0 lt!461107 #b00000000000000000000000000000000 (size!32207 (_keys!11675 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11675 thiss!1427) #b00000000000000000000000000000000 (size!32207 (_keys!11675 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1044902 (= lt!461107 (array!65855 (store (arr!31671 (_keys!11675 thiss!1427)) (index!41739 lt!461105) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32207 (_keys!11675 thiss!1427))))))

(declare-fun lt!461108 () Unit!34118)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65854 (_ BitVec 32) (_ BitVec 64)) Unit!34118)

(assert (=> b!1044902 (= lt!461108 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11675 thiss!1427) (index!41739 lt!461105) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1044903 () Bool)

(assert (=> b!1044903 (= e!592278 tp_is_empty!24849)))

(declare-fun b!1044904 () Bool)

(declare-fun res!695926 () Bool)

(assert (=> b!1044904 (=> res!695926 e!592285)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1044904 (= res!695926 (not (validMask!0 (mask!30524 (_2!7946 lt!461111)))))))

(declare-fun res!695929 () Bool)

(assert (=> start!91890 (=> (not res!695929) (not e!592284))))

(declare-fun valid!2218 (LongMapFixedSize!6036) Bool)

(assert (=> start!91890 (= res!695929 (valid!2218 thiss!1427))))

(assert (=> start!91890 e!592284))

(declare-fun e!592281 () Bool)

(assert (=> start!91890 e!592281))

(assert (=> start!91890 true))

(declare-fun array_inv!24311 (array!65854) Bool)

(declare-fun array_inv!24312 (array!65856) Bool)

(assert (=> b!1044899 (= e!592281 (and tp!74640 tp_is_empty!24849 (array_inv!24311 (_keys!11675 thiss!1427)) (array_inv!24312 (_values!6433 thiss!1427)) e!592280))))

(assert (= (and start!91890 res!695929) b!1044900))

(assert (= (and b!1044900 res!695927) b!1044901))

(assert (= (and b!1044901 res!695925) b!1044902))

(assert (= (and b!1044902 (not res!695928)) b!1044904))

(assert (= (and b!1044904 (not res!695926)) b!1044896))

(assert (= (and b!1044898 condMapEmpty!38909) mapIsEmpty!38909))

(assert (= (and b!1044898 (not condMapEmpty!38909)) mapNonEmpty!38909))

(assert (= (and mapNonEmpty!38909 ((_ is ValueCellFull!11721) mapValue!38909)) b!1044897))

(assert (= (and b!1044898 ((_ is ValueCellFull!11721) mapDefault!38909)) b!1044903))

(assert (= b!1044899 b!1044898))

(assert (= start!91890 b!1044899))

(declare-fun b_lambda!16295 () Bool)

(assert (=> (not b_lambda!16295) (not b!1044902)))

(declare-fun t!31396 () Bool)

(declare-fun tb!7083 () Bool)

(assert (=> (and b!1044899 (= (defaultEntry!6410 thiss!1427) (defaultEntry!6410 thiss!1427)) t!31396) tb!7083))

(declare-fun result!14583 () Bool)

(assert (=> tb!7083 (= result!14583 tp_is_empty!24849)))

(assert (=> b!1044902 t!31396))

(declare-fun b_and!33749 () Bool)

(assert (= b_and!33747 (and (=> t!31396 result!14583) b_and!33749)))

(declare-fun m!964613 () Bool)

(assert (=> mapNonEmpty!38909 m!964613))

(declare-fun m!964615 () Bool)

(assert (=> start!91890 m!964615))

(declare-fun m!964617 () Bool)

(assert (=> b!1044901 m!964617))

(declare-fun m!964619 () Bool)

(assert (=> b!1044902 m!964619))

(declare-fun m!964621 () Bool)

(assert (=> b!1044902 m!964621))

(declare-fun m!964623 () Bool)

(assert (=> b!1044902 m!964623))

(declare-fun m!964625 () Bool)

(assert (=> b!1044902 m!964625))

(declare-fun m!964627 () Bool)

(assert (=> b!1044902 m!964627))

(declare-fun m!964629 () Bool)

(assert (=> b!1044902 m!964629))

(declare-fun m!964631 () Bool)

(assert (=> b!1044902 m!964631))

(declare-fun m!964633 () Bool)

(assert (=> b!1044902 m!964633))

(declare-fun m!964635 () Bool)

(assert (=> b!1044902 m!964635))

(declare-fun m!964637 () Bool)

(assert (=> b!1044902 m!964637))

(declare-fun m!964639 () Bool)

(assert (=> b!1044902 m!964639))

(declare-fun m!964641 () Bool)

(assert (=> b!1044902 m!964641))

(assert (=> b!1044902 m!964619))

(assert (=> b!1044902 m!964633))

(declare-fun m!964643 () Bool)

(assert (=> b!1044902 m!964643))

(declare-fun m!964645 () Bool)

(assert (=> b!1044902 m!964645))

(declare-fun m!964647 () Bool)

(assert (=> b!1044902 m!964647))

(declare-fun m!964649 () Bool)

(assert (=> b!1044902 m!964649))

(declare-fun m!964651 () Bool)

(assert (=> b!1044902 m!964651))

(declare-fun m!964653 () Bool)

(assert (=> b!1044902 m!964653))

(declare-fun m!964655 () Bool)

(assert (=> b!1044899 m!964655))

(declare-fun m!964657 () Bool)

(assert (=> b!1044899 m!964657))

(declare-fun m!964659 () Bool)

(assert (=> b!1044904 m!964659))

(check-sat tp_is_empty!24849 b_and!33749 (not start!91890) (not b!1044904) (not mapNonEmpty!38909) (not b!1044899) (not b!1044901) (not b!1044902) (not b_next!21129) (not b_lambda!16295))
(check-sat b_and!33749 (not b_next!21129))
(get-model)

(declare-fun b_lambda!16299 () Bool)

(assert (= b_lambda!16295 (or (and b!1044899 b_free!21129) b_lambda!16299)))

(check-sat tp_is_empty!24849 (not b_lambda!16299) b_and!33749 (not start!91890) (not b!1044904) (not mapNonEmpty!38909) (not b_next!21129) (not b!1044899) (not b!1044901) (not b!1044902))
(check-sat b_and!33749 (not b_next!21129))
(get-model)

(declare-fun b!1044948 () Bool)

(declare-fun e!592316 () SeekEntryResult!9842)

(declare-fun lt!461151 () SeekEntryResult!9842)

(assert (=> b!1044948 (= e!592316 (MissingZero!9842 (index!41740 lt!461151)))))

(declare-fun b!1044949 () Bool)

(declare-fun e!592318 () SeekEntryResult!9842)

(declare-fun e!592317 () SeekEntryResult!9842)

(assert (=> b!1044949 (= e!592318 e!592317)))

(declare-fun lt!461150 () (_ BitVec 64))

(assert (=> b!1044949 (= lt!461150 (select (arr!31671 (_keys!11675 thiss!1427)) (index!41740 lt!461151)))))

(declare-fun c!106150 () Bool)

(assert (=> b!1044949 (= c!106150 (= lt!461150 key!909))))

(declare-fun b!1044950 () Bool)

(assert (=> b!1044950 (= e!592317 (Found!9842 (index!41740 lt!461151)))))

(declare-fun d!126413 () Bool)

(declare-fun lt!461149 () SeekEntryResult!9842)

(assert (=> d!126413 (and (or ((_ is MissingVacant!9842) lt!461149) (not ((_ is Found!9842) lt!461149)) (and (bvsge (index!41739 lt!461149) #b00000000000000000000000000000000) (bvslt (index!41739 lt!461149) (size!32207 (_keys!11675 thiss!1427))))) (not ((_ is MissingVacant!9842) lt!461149)) (or (not ((_ is Found!9842) lt!461149)) (= (select (arr!31671 (_keys!11675 thiss!1427)) (index!41739 lt!461149)) key!909)))))

(assert (=> d!126413 (= lt!461149 e!592318)))

(declare-fun c!106149 () Bool)

(assert (=> d!126413 (= c!106149 (and ((_ is Intermediate!9842) lt!461151) (undefined!10654 lt!461151)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65854 (_ BitVec 32)) SeekEntryResult!9842)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!126413 (= lt!461151 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!909 (mask!30524 thiss!1427)) key!909 (_keys!11675 thiss!1427) (mask!30524 thiss!1427)))))

(assert (=> d!126413 (validMask!0 (mask!30524 thiss!1427))))

(assert (=> d!126413 (= (seekEntry!0 key!909 (_keys!11675 thiss!1427) (mask!30524 thiss!1427)) lt!461149)))

(declare-fun b!1044951 () Bool)

(declare-fun lt!461148 () SeekEntryResult!9842)

(assert (=> b!1044951 (= e!592316 (ite ((_ is MissingVacant!9842) lt!461148) (MissingZero!9842 (index!41741 lt!461148)) lt!461148))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65854 (_ BitVec 32)) SeekEntryResult!9842)

(assert (=> b!1044951 (= lt!461148 (seekKeyOrZeroReturnVacant!0 (x!93317 lt!461151) (index!41740 lt!461151) (index!41740 lt!461151) key!909 (_keys!11675 thiss!1427) (mask!30524 thiss!1427)))))

(declare-fun b!1044952 () Bool)

(assert (=> b!1044952 (= e!592318 Undefined!9842)))

(declare-fun b!1044953 () Bool)

(declare-fun c!106151 () Bool)

(assert (=> b!1044953 (= c!106151 (= lt!461150 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1044953 (= e!592317 e!592316)))

(assert (= (and d!126413 c!106149) b!1044952))

(assert (= (and d!126413 (not c!106149)) b!1044949))

(assert (= (and b!1044949 c!106150) b!1044950))

(assert (= (and b!1044949 (not c!106150)) b!1044953))

(assert (= (and b!1044953 c!106151) b!1044948))

(assert (= (and b!1044953 (not c!106151)) b!1044951))

(declare-fun m!964709 () Bool)

(assert (=> b!1044949 m!964709))

(declare-fun m!964711 () Bool)

(assert (=> d!126413 m!964711))

(declare-fun m!964713 () Bool)

(assert (=> d!126413 m!964713))

(assert (=> d!126413 m!964713))

(declare-fun m!964715 () Bool)

(assert (=> d!126413 m!964715))

(declare-fun m!964717 () Bool)

(assert (=> d!126413 m!964717))

(declare-fun m!964719 () Bool)

(assert (=> b!1044951 m!964719))

(assert (=> b!1044901 d!126413))

(declare-fun d!126415 () Bool)

(assert (=> d!126415 (= (validMask!0 (mask!30524 (_2!7946 lt!461111))) (and (or (= (mask!30524 (_2!7946 lt!461111)) #b00000000000000000000000000000111) (= (mask!30524 (_2!7946 lt!461111)) #b00000000000000000000000000001111) (= (mask!30524 (_2!7946 lt!461111)) #b00000000000000000000000000011111) (= (mask!30524 (_2!7946 lt!461111)) #b00000000000000000000000000111111) (= (mask!30524 (_2!7946 lt!461111)) #b00000000000000000000000001111111) (= (mask!30524 (_2!7946 lt!461111)) #b00000000000000000000000011111111) (= (mask!30524 (_2!7946 lt!461111)) #b00000000000000000000000111111111) (= (mask!30524 (_2!7946 lt!461111)) #b00000000000000000000001111111111) (= (mask!30524 (_2!7946 lt!461111)) #b00000000000000000000011111111111) (= (mask!30524 (_2!7946 lt!461111)) #b00000000000000000000111111111111) (= (mask!30524 (_2!7946 lt!461111)) #b00000000000000000001111111111111) (= (mask!30524 (_2!7946 lt!461111)) #b00000000000000000011111111111111) (= (mask!30524 (_2!7946 lt!461111)) #b00000000000000000111111111111111) (= (mask!30524 (_2!7946 lt!461111)) #b00000000000000001111111111111111) (= (mask!30524 (_2!7946 lt!461111)) #b00000000000000011111111111111111) (= (mask!30524 (_2!7946 lt!461111)) #b00000000000000111111111111111111) (= (mask!30524 (_2!7946 lt!461111)) #b00000000000001111111111111111111) (= (mask!30524 (_2!7946 lt!461111)) #b00000000000011111111111111111111) (= (mask!30524 (_2!7946 lt!461111)) #b00000000000111111111111111111111) (= (mask!30524 (_2!7946 lt!461111)) #b00000000001111111111111111111111) (= (mask!30524 (_2!7946 lt!461111)) #b00000000011111111111111111111111) (= (mask!30524 (_2!7946 lt!461111)) #b00000000111111111111111111111111) (= (mask!30524 (_2!7946 lt!461111)) #b00000001111111111111111111111111) (= (mask!30524 (_2!7946 lt!461111)) #b00000011111111111111111111111111) (= (mask!30524 (_2!7946 lt!461111)) #b00000111111111111111111111111111) (= (mask!30524 (_2!7946 lt!461111)) #b00001111111111111111111111111111) (= (mask!30524 (_2!7946 lt!461111)) #b00011111111111111111111111111111) (= (mask!30524 (_2!7946 lt!461111)) #b00111111111111111111111111111111)) (bvsle (mask!30524 (_2!7946 lt!461111)) #b00111111111111111111111111111111)))))

(assert (=> b!1044904 d!126415))

(declare-fun d!126417 () Bool)

(assert (=> d!126417 (= (array_inv!24311 (_keys!11675 thiss!1427)) (bvsge (size!32207 (_keys!11675 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1044899 d!126417))

(declare-fun d!126419 () Bool)

(assert (=> d!126419 (= (array_inv!24312 (_values!6433 thiss!1427)) (bvsge (size!32208 (_values!6433 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1044899 d!126419))

(declare-fun b!1044996 () Bool)

(declare-fun e!592353 () Unit!34118)

(declare-fun Unit!34126 () Unit!34118)

(assert (=> b!1044996 (= e!592353 Unit!34126)))

(declare-fun b!1044997 () Bool)

(declare-fun e!592350 () Bool)

(declare-fun e!592352 () Bool)

(assert (=> b!1044997 (= e!592350 e!592352)))

(declare-fun res!695971 () Bool)

(declare-fun call!44449 () Bool)

(assert (=> b!1044997 (= res!695971 call!44449)))

(assert (=> b!1044997 (=> (not res!695971) (not e!592352))))

(declare-fun bm!44446 () Bool)

(declare-fun call!44453 () ListLongMap!13897)

(declare-fun call!44450 () ListLongMap!13897)

(assert (=> bm!44446 (= call!44453 call!44450)))

(declare-fun b!1044998 () Bool)

(declare-fun c!106165 () Bool)

(assert (=> b!1044998 (= c!106165 (and (not (= (bvand (extraKeys!6138 (_2!7946 lt!461111)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!6138 (_2!7946 lt!461111)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!592357 () ListLongMap!13897)

(declare-fun e!592351 () ListLongMap!13897)

(assert (=> b!1044998 (= e!592357 e!592351)))

(declare-fun bm!44447 () Bool)

(declare-fun call!44455 () ListLongMap!13897)

(declare-fun call!44454 () ListLongMap!13897)

(assert (=> bm!44447 (= call!44455 call!44454)))

(declare-fun b!1044999 () Bool)

(declare-fun res!695965 () Bool)

(declare-fun e!592349 () Bool)

(assert (=> b!1044999 (=> (not res!695965) (not e!592349))))

(assert (=> b!1044999 (= res!695965 e!592350)))

(declare-fun c!106168 () Bool)

(assert (=> b!1044999 (= c!106168 (not (= (bvand (extraKeys!6138 (_2!7946 lt!461111)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1045000 () Bool)

(declare-fun e!592355 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1045000 (= e!592355 (validKeyInArray!0 (select (arr!31671 (_keys!11675 (_2!7946 lt!461111))) #b00000000000000000000000000000000)))))

(declare-fun b!1045001 () Bool)

(declare-fun e!592345 () Bool)

(declare-fun e!592348 () Bool)

(assert (=> b!1045001 (= e!592345 e!592348)))

(declare-fun res!695968 () Bool)

(declare-fun call!44451 () Bool)

(assert (=> b!1045001 (= res!695968 call!44451)))

(assert (=> b!1045001 (=> (not res!695968) (not e!592348))))

(declare-fun b!1045002 () Bool)

(assert (=> b!1045002 (= e!592351 call!44453)))

(declare-fun b!1045004 () Bool)

(declare-fun lt!461216 () Unit!34118)

(assert (=> b!1045004 (= e!592353 lt!461216)))

(declare-fun lt!461204 () ListLongMap!13897)

(declare-fun getCurrentListMapNoExtraKeys!3541 (array!65854 array!65856 (_ BitVec 32) (_ BitVec 32) V!38005 V!38005 (_ BitVec 32) Int) ListLongMap!13897)

(assert (=> b!1045004 (= lt!461204 (getCurrentListMapNoExtraKeys!3541 (_keys!11675 (_2!7946 lt!461111)) (_values!6433 (_2!7946 lt!461111)) (mask!30524 (_2!7946 lt!461111)) (extraKeys!6138 (_2!7946 lt!461111)) (zeroValue!6244 (_2!7946 lt!461111)) (minValue!6244 (_2!7946 lt!461111)) #b00000000000000000000000000000000 (defaultEntry!6410 (_2!7946 lt!461111))))))

(declare-fun lt!461211 () (_ BitVec 64))

(assert (=> b!1045004 (= lt!461211 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!461210 () (_ BitVec 64))

(assert (=> b!1045004 (= lt!461210 (select (arr!31671 (_keys!11675 (_2!7946 lt!461111))) #b00000000000000000000000000000000))))

(declare-fun lt!461215 () Unit!34118)

(declare-fun addStillContains!636 (ListLongMap!13897 (_ BitVec 64) V!38005 (_ BitVec 64)) Unit!34118)

(assert (=> b!1045004 (= lt!461215 (addStillContains!636 lt!461204 lt!461211 (zeroValue!6244 (_2!7946 lt!461111)) lt!461210))))

(declare-fun +!3071 (ListLongMap!13897 tuple2!15874) ListLongMap!13897)

(assert (=> b!1045004 (contains!6096 (+!3071 lt!461204 (tuple2!15875 lt!461211 (zeroValue!6244 (_2!7946 lt!461111)))) lt!461210)))

(declare-fun lt!461197 () Unit!34118)

(assert (=> b!1045004 (= lt!461197 lt!461215)))

(declare-fun lt!461196 () ListLongMap!13897)

(assert (=> b!1045004 (= lt!461196 (getCurrentListMapNoExtraKeys!3541 (_keys!11675 (_2!7946 lt!461111)) (_values!6433 (_2!7946 lt!461111)) (mask!30524 (_2!7946 lt!461111)) (extraKeys!6138 (_2!7946 lt!461111)) (zeroValue!6244 (_2!7946 lt!461111)) (minValue!6244 (_2!7946 lt!461111)) #b00000000000000000000000000000000 (defaultEntry!6410 (_2!7946 lt!461111))))))

(declare-fun lt!461214 () (_ BitVec 64))

(assert (=> b!1045004 (= lt!461214 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!461202 () (_ BitVec 64))

(assert (=> b!1045004 (= lt!461202 (select (arr!31671 (_keys!11675 (_2!7946 lt!461111))) #b00000000000000000000000000000000))))

(declare-fun lt!461199 () Unit!34118)

(declare-fun addApplyDifferent!488 (ListLongMap!13897 (_ BitVec 64) V!38005 (_ BitVec 64)) Unit!34118)

(assert (=> b!1045004 (= lt!461199 (addApplyDifferent!488 lt!461196 lt!461214 (minValue!6244 (_2!7946 lt!461111)) lt!461202))))

(declare-fun apply!948 (ListLongMap!13897 (_ BitVec 64)) V!38005)

(assert (=> b!1045004 (= (apply!948 (+!3071 lt!461196 (tuple2!15875 lt!461214 (minValue!6244 (_2!7946 lt!461111)))) lt!461202) (apply!948 lt!461196 lt!461202))))

(declare-fun lt!461200 () Unit!34118)

(assert (=> b!1045004 (= lt!461200 lt!461199)))

(declare-fun lt!461198 () ListLongMap!13897)

(assert (=> b!1045004 (= lt!461198 (getCurrentListMapNoExtraKeys!3541 (_keys!11675 (_2!7946 lt!461111)) (_values!6433 (_2!7946 lt!461111)) (mask!30524 (_2!7946 lt!461111)) (extraKeys!6138 (_2!7946 lt!461111)) (zeroValue!6244 (_2!7946 lt!461111)) (minValue!6244 (_2!7946 lt!461111)) #b00000000000000000000000000000000 (defaultEntry!6410 (_2!7946 lt!461111))))))

(declare-fun lt!461205 () (_ BitVec 64))

(assert (=> b!1045004 (= lt!461205 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!461201 () (_ BitVec 64))

(assert (=> b!1045004 (= lt!461201 (select (arr!31671 (_keys!11675 (_2!7946 lt!461111))) #b00000000000000000000000000000000))))

(declare-fun lt!461217 () Unit!34118)

(assert (=> b!1045004 (= lt!461217 (addApplyDifferent!488 lt!461198 lt!461205 (zeroValue!6244 (_2!7946 lt!461111)) lt!461201))))

(assert (=> b!1045004 (= (apply!948 (+!3071 lt!461198 (tuple2!15875 lt!461205 (zeroValue!6244 (_2!7946 lt!461111)))) lt!461201) (apply!948 lt!461198 lt!461201))))

(declare-fun lt!461207 () Unit!34118)

(assert (=> b!1045004 (= lt!461207 lt!461217)))

(declare-fun lt!461203 () ListLongMap!13897)

(assert (=> b!1045004 (= lt!461203 (getCurrentListMapNoExtraKeys!3541 (_keys!11675 (_2!7946 lt!461111)) (_values!6433 (_2!7946 lt!461111)) (mask!30524 (_2!7946 lt!461111)) (extraKeys!6138 (_2!7946 lt!461111)) (zeroValue!6244 (_2!7946 lt!461111)) (minValue!6244 (_2!7946 lt!461111)) #b00000000000000000000000000000000 (defaultEntry!6410 (_2!7946 lt!461111))))))

(declare-fun lt!461213 () (_ BitVec 64))

(assert (=> b!1045004 (= lt!461213 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!461208 () (_ BitVec 64))

(assert (=> b!1045004 (= lt!461208 (select (arr!31671 (_keys!11675 (_2!7946 lt!461111))) #b00000000000000000000000000000000))))

(assert (=> b!1045004 (= lt!461216 (addApplyDifferent!488 lt!461203 lt!461213 (minValue!6244 (_2!7946 lt!461111)) lt!461208))))

(assert (=> b!1045004 (= (apply!948 (+!3071 lt!461203 (tuple2!15875 lt!461213 (minValue!6244 (_2!7946 lt!461111)))) lt!461208) (apply!948 lt!461203 lt!461208))))

(declare-fun b!1045005 () Bool)

(assert (=> b!1045005 (= e!592350 (not call!44449))))

(declare-fun b!1045006 () Bool)

(declare-fun e!592346 () Bool)

(assert (=> b!1045006 (= e!592346 (validKeyInArray!0 (select (arr!31671 (_keys!11675 (_2!7946 lt!461111))) #b00000000000000000000000000000000)))))

(declare-fun bm!44448 () Bool)

(declare-fun call!44452 () ListLongMap!13897)

(assert (=> bm!44448 (= call!44452 call!44455)))

(declare-fun bm!44449 () Bool)

(declare-fun lt!461206 () ListLongMap!13897)

(assert (=> bm!44449 (= call!44451 (contains!6096 lt!461206 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun c!106169 () Bool)

(declare-fun bm!44450 () Bool)

(declare-fun c!106167 () Bool)

(assert (=> bm!44450 (= call!44450 (+!3071 (ite c!106167 call!44454 (ite c!106169 call!44455 call!44452)) (ite (or c!106167 c!106169) (tuple2!15875 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6244 (_2!7946 lt!461111))) (tuple2!15875 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6244 (_2!7946 lt!461111))))))))

(declare-fun b!1045007 () Bool)

(assert (=> b!1045007 (= e!592345 (not call!44451))))

(declare-fun b!1045008 () Bool)

(assert (=> b!1045008 (= e!592351 call!44452)))

(declare-fun b!1045009 () Bool)

(assert (=> b!1045009 (= e!592357 call!44453)))

(declare-fun b!1045010 () Bool)

(declare-fun res!695963 () Bool)

(assert (=> b!1045010 (=> (not res!695963) (not e!592349))))

(declare-fun e!592356 () Bool)

(assert (=> b!1045010 (= res!695963 e!592356)))

(declare-fun res!695967 () Bool)

(assert (=> b!1045010 (=> res!695967 e!592356)))

(assert (=> b!1045010 (= res!695967 (not e!592346))))

(declare-fun res!695970 () Bool)

(assert (=> b!1045010 (=> (not res!695970) (not e!592346))))

(assert (=> b!1045010 (= res!695970 (bvslt #b00000000000000000000000000000000 (size!32207 (_keys!11675 (_2!7946 lt!461111)))))))

(declare-fun b!1045011 () Bool)

(declare-fun e!592354 () Bool)

(assert (=> b!1045011 (= e!592356 e!592354)))

(declare-fun res!695969 () Bool)

(assert (=> b!1045011 (=> (not res!695969) (not e!592354))))

(assert (=> b!1045011 (= res!695969 (contains!6096 lt!461206 (select (arr!31671 (_keys!11675 (_2!7946 lt!461111))) #b00000000000000000000000000000000)))))

(assert (=> b!1045011 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32207 (_keys!11675 (_2!7946 lt!461111)))))))

(declare-fun b!1045012 () Bool)

(assert (=> b!1045012 (= e!592348 (= (apply!948 lt!461206 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!6244 (_2!7946 lt!461111))))))

(declare-fun b!1045013 () Bool)

(declare-fun get!16567 (ValueCell!11721 V!38005) V!38005)

(assert (=> b!1045013 (= e!592354 (= (apply!948 lt!461206 (select (arr!31671 (_keys!11675 (_2!7946 lt!461111))) #b00000000000000000000000000000000)) (get!16567 (select (arr!31672 (_values!6433 (_2!7946 lt!461111))) #b00000000000000000000000000000000) (dynLambda!2014 (defaultEntry!6410 (_2!7946 lt!461111)) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1045013 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32208 (_values!6433 (_2!7946 lt!461111)))))))

(assert (=> b!1045013 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32207 (_keys!11675 (_2!7946 lt!461111)))))))

(declare-fun b!1045014 () Bool)

(assert (=> b!1045014 (= e!592349 e!592345)))

(declare-fun c!106166 () Bool)

(assert (=> b!1045014 (= c!106166 (not (= (bvand (extraKeys!6138 (_2!7946 lt!461111)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun d!126421 () Bool)

(assert (=> d!126421 e!592349))

(declare-fun res!695964 () Bool)

(assert (=> d!126421 (=> (not res!695964) (not e!592349))))

(assert (=> d!126421 (= res!695964 (or (bvsge #b00000000000000000000000000000000 (size!32207 (_keys!11675 (_2!7946 lt!461111)))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32207 (_keys!11675 (_2!7946 lt!461111)))))))))

(declare-fun lt!461209 () ListLongMap!13897)

(assert (=> d!126421 (= lt!461206 lt!461209)))

(declare-fun lt!461212 () Unit!34118)

(assert (=> d!126421 (= lt!461212 e!592353)))

(declare-fun c!106164 () Bool)

(assert (=> d!126421 (= c!106164 e!592355)))

(declare-fun res!695966 () Bool)

(assert (=> d!126421 (=> (not res!695966) (not e!592355))))

(assert (=> d!126421 (= res!695966 (bvslt #b00000000000000000000000000000000 (size!32207 (_keys!11675 (_2!7946 lt!461111)))))))

(declare-fun e!592347 () ListLongMap!13897)

(assert (=> d!126421 (= lt!461209 e!592347)))

(assert (=> d!126421 (= c!106167 (and (not (= (bvand (extraKeys!6138 (_2!7946 lt!461111)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!6138 (_2!7946 lt!461111)) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!126421 (validMask!0 (mask!30524 (_2!7946 lt!461111)))))

(assert (=> d!126421 (= (getCurrentListMap!3970 (_keys!11675 (_2!7946 lt!461111)) (_values!6433 (_2!7946 lt!461111)) (mask!30524 (_2!7946 lt!461111)) (extraKeys!6138 (_2!7946 lt!461111)) (zeroValue!6244 (_2!7946 lt!461111)) (minValue!6244 (_2!7946 lt!461111)) #b00000000000000000000000000000000 (defaultEntry!6410 (_2!7946 lt!461111))) lt!461206)))

(declare-fun b!1045003 () Bool)

(assert (=> b!1045003 (= e!592347 (+!3071 call!44450 (tuple2!15875 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6244 (_2!7946 lt!461111)))))))

(declare-fun b!1045015 () Bool)

(assert (=> b!1045015 (= e!592352 (= (apply!948 lt!461206 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!6244 (_2!7946 lt!461111))))))

(declare-fun bm!44451 () Bool)

(assert (=> bm!44451 (= call!44449 (contains!6096 lt!461206 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1045016 () Bool)

(assert (=> b!1045016 (= e!592347 e!592357)))

(assert (=> b!1045016 (= c!106169 (and (not (= (bvand (extraKeys!6138 (_2!7946 lt!461111)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!6138 (_2!7946 lt!461111)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!44452 () Bool)

(assert (=> bm!44452 (= call!44454 (getCurrentListMapNoExtraKeys!3541 (_keys!11675 (_2!7946 lt!461111)) (_values!6433 (_2!7946 lt!461111)) (mask!30524 (_2!7946 lt!461111)) (extraKeys!6138 (_2!7946 lt!461111)) (zeroValue!6244 (_2!7946 lt!461111)) (minValue!6244 (_2!7946 lt!461111)) #b00000000000000000000000000000000 (defaultEntry!6410 (_2!7946 lt!461111))))))

(assert (= (and d!126421 c!106167) b!1045003))

(assert (= (and d!126421 (not c!106167)) b!1045016))

(assert (= (and b!1045016 c!106169) b!1045009))

(assert (= (and b!1045016 (not c!106169)) b!1044998))

(assert (= (and b!1044998 c!106165) b!1045002))

(assert (= (and b!1044998 (not c!106165)) b!1045008))

(assert (= (or b!1045002 b!1045008) bm!44448))

(assert (= (or b!1045009 bm!44448) bm!44447))

(assert (= (or b!1045009 b!1045002) bm!44446))

(assert (= (or b!1045003 bm!44447) bm!44452))

(assert (= (or b!1045003 bm!44446) bm!44450))

(assert (= (and d!126421 res!695966) b!1045000))

(assert (= (and d!126421 c!106164) b!1045004))

(assert (= (and d!126421 (not c!106164)) b!1044996))

(assert (= (and d!126421 res!695964) b!1045010))

(assert (= (and b!1045010 res!695970) b!1045006))

(assert (= (and b!1045010 (not res!695967)) b!1045011))

(assert (= (and b!1045011 res!695969) b!1045013))

(assert (= (and b!1045010 res!695963) b!1044999))

(assert (= (and b!1044999 c!106168) b!1044997))

(assert (= (and b!1044999 (not c!106168)) b!1045005))

(assert (= (and b!1044997 res!695971) b!1045015))

(assert (= (or b!1044997 b!1045005) bm!44451))

(assert (= (and b!1044999 res!695965) b!1045014))

(assert (= (and b!1045014 c!106166) b!1045001))

(assert (= (and b!1045014 (not c!106166)) b!1045007))

(assert (= (and b!1045001 res!695968) b!1045012))

(assert (= (or b!1045001 b!1045007) bm!44449))

(declare-fun b_lambda!16301 () Bool)

(assert (=> (not b_lambda!16301) (not b!1045013)))

(declare-fun t!31404 () Bool)

(declare-fun tb!7087 () Bool)

(assert (=> (and b!1044899 (= (defaultEntry!6410 thiss!1427) (defaultEntry!6410 (_2!7946 lt!461111))) t!31404) tb!7087))

(declare-fun result!14591 () Bool)

(assert (=> tb!7087 (= result!14591 tp_is_empty!24849)))

(assert (=> b!1045013 t!31404))

(declare-fun b_and!33755 () Bool)

(assert (= b_and!33749 (and (=> t!31404 result!14591) b_and!33755)))

(assert (=> d!126421 m!964659))

(declare-fun m!964721 () Bool)

(assert (=> b!1045000 m!964721))

(assert (=> b!1045000 m!964721))

(declare-fun m!964723 () Bool)

(assert (=> b!1045000 m!964723))

(declare-fun m!964725 () Bool)

(assert (=> b!1045013 m!964725))

(assert (=> b!1045013 m!964725))

(declare-fun m!964727 () Bool)

(assert (=> b!1045013 m!964727))

(declare-fun m!964729 () Bool)

(assert (=> b!1045013 m!964729))

(assert (=> b!1045013 m!964721))

(assert (=> b!1045013 m!964727))

(assert (=> b!1045013 m!964721))

(declare-fun m!964731 () Bool)

(assert (=> b!1045013 m!964731))

(assert (=> b!1045011 m!964721))

(assert (=> b!1045011 m!964721))

(declare-fun m!964733 () Bool)

(assert (=> b!1045011 m!964733))

(assert (=> b!1045006 m!964721))

(assert (=> b!1045006 m!964721))

(assert (=> b!1045006 m!964723))

(declare-fun m!964735 () Bool)

(assert (=> bm!44451 m!964735))

(declare-fun m!964737 () Bool)

(assert (=> b!1045003 m!964737))

(declare-fun m!964739 () Bool)

(assert (=> bm!44452 m!964739))

(declare-fun m!964741 () Bool)

(assert (=> bm!44449 m!964741))

(assert (=> b!1045004 m!964739))

(declare-fun m!964743 () Bool)

(assert (=> b!1045004 m!964743))

(declare-fun m!964745 () Bool)

(assert (=> b!1045004 m!964745))

(declare-fun m!964747 () Bool)

(assert (=> b!1045004 m!964747))

(declare-fun m!964749 () Bool)

(assert (=> b!1045004 m!964749))

(assert (=> b!1045004 m!964721))

(declare-fun m!964751 () Bool)

(assert (=> b!1045004 m!964751))

(declare-fun m!964753 () Bool)

(assert (=> b!1045004 m!964753))

(declare-fun m!964755 () Bool)

(assert (=> b!1045004 m!964755))

(declare-fun m!964757 () Bool)

(assert (=> b!1045004 m!964757))

(declare-fun m!964759 () Bool)

(assert (=> b!1045004 m!964759))

(declare-fun m!964761 () Bool)

(assert (=> b!1045004 m!964761))

(declare-fun m!964763 () Bool)

(assert (=> b!1045004 m!964763))

(assert (=> b!1045004 m!964751))

(declare-fun m!964765 () Bool)

(assert (=> b!1045004 m!964765))

(assert (=> b!1045004 m!964763))

(declare-fun m!964767 () Bool)

(assert (=> b!1045004 m!964767))

(declare-fun m!964769 () Bool)

(assert (=> b!1045004 m!964769))

(declare-fun m!964771 () Bool)

(assert (=> b!1045004 m!964771))

(assert (=> b!1045004 m!964753))

(assert (=> b!1045004 m!964745))

(declare-fun m!964773 () Bool)

(assert (=> b!1045015 m!964773))

(declare-fun m!964775 () Bool)

(assert (=> bm!44450 m!964775))

(declare-fun m!964777 () Bool)

(assert (=> b!1045012 m!964777))

(assert (=> b!1044902 d!126421))

(declare-fun b!1045027 () Bool)

(declare-fun e!592362 () Bool)

(assert (=> b!1045027 (= e!592362 (bvslt (size!32207 (_keys!11675 thiss!1427)) #b01111111111111111111111111111111))))

(declare-fun b!1045026 () Bool)

(declare-fun res!695980 () Bool)

(assert (=> b!1045026 (=> (not res!695980) (not e!592362))))

(assert (=> b!1045026 (= res!695980 (not (validKeyInArray!0 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1045025 () Bool)

(declare-fun res!695983 () Bool)

(assert (=> b!1045025 (=> (not res!695983) (not e!592362))))

(assert (=> b!1045025 (= res!695983 (validKeyInArray!0 (select (arr!31671 (_keys!11675 thiss!1427)) (index!41739 lt!461105))))))

(declare-fun b!1045028 () Bool)

(declare-fun e!592363 () Bool)

(assert (=> b!1045028 (= e!592363 (= (arrayCountValidKeys!0 (array!65855 (store (arr!31671 (_keys!11675 thiss!1427)) (index!41739 lt!461105) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32207 (_keys!11675 thiss!1427))) #b00000000000000000000000000000000 (size!32207 (_keys!11675 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11675 thiss!1427) #b00000000000000000000000000000000 (size!32207 (_keys!11675 thiss!1427))) #b00000000000000000000000000000001)))))

(declare-fun d!126423 () Bool)

(assert (=> d!126423 e!592363))

(declare-fun res!695982 () Bool)

(assert (=> d!126423 (=> (not res!695982) (not e!592363))))

(assert (=> d!126423 (= res!695982 (and (bvsge (index!41739 lt!461105) #b00000000000000000000000000000000) (bvslt (index!41739 lt!461105) (size!32207 (_keys!11675 thiss!1427)))))))

(declare-fun lt!461220 () Unit!34118)

(declare-fun choose!82 (array!65854 (_ BitVec 32) (_ BitVec 64)) Unit!34118)

(assert (=> d!126423 (= lt!461220 (choose!82 (_keys!11675 thiss!1427) (index!41739 lt!461105) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!126423 e!592362))

(declare-fun res!695981 () Bool)

(assert (=> d!126423 (=> (not res!695981) (not e!592362))))

(assert (=> d!126423 (= res!695981 (and (bvsge (index!41739 lt!461105) #b00000000000000000000000000000000) (bvslt (index!41739 lt!461105) (size!32207 (_keys!11675 thiss!1427)))))))

(assert (=> d!126423 (= (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11675 thiss!1427) (index!41739 lt!461105) #b1000000000000000000000000000000000000000000000000000000000000000) lt!461220)))

(assert (= (and d!126423 res!695981) b!1045025))

(assert (= (and b!1045025 res!695983) b!1045026))

(assert (= (and b!1045026 res!695980) b!1045027))

(assert (= (and d!126423 res!695982) b!1045028))

(declare-fun m!964779 () Bool)

(assert (=> b!1045026 m!964779))

(declare-fun m!964781 () Bool)

(assert (=> b!1045025 m!964781))

(assert (=> b!1045025 m!964781))

(declare-fun m!964783 () Bool)

(assert (=> b!1045025 m!964783))

(assert (=> b!1045028 m!964637))

(declare-fun m!964785 () Bool)

(assert (=> b!1045028 m!964785))

(assert (=> b!1045028 m!964627))

(declare-fun m!964787 () Bool)

(assert (=> d!126423 m!964787))

(assert (=> b!1044902 d!126423))

(declare-fun d!126425 () Bool)

(declare-fun e!592366 () Bool)

(assert (=> d!126425 e!592366))

(declare-fun res!695986 () Bool)

(assert (=> d!126425 (=> (not res!695986) (not e!592366))))

(assert (=> d!126425 (= res!695986 (and (bvsge (index!41739 lt!461105) #b00000000000000000000000000000000) (bvslt (index!41739 lt!461105) (size!32207 (_keys!11675 thiss!1427)))))))

(declare-fun lt!461223 () Unit!34118)

(declare-fun choose!1719 (array!65854 array!65856 (_ BitVec 32) (_ BitVec 32) V!38005 V!38005 (_ BitVec 32) (_ BitVec 64) Int) Unit!34118)

(assert (=> d!126425 (= lt!461223 (choose!1719 (_keys!11675 thiss!1427) (_values!6433 thiss!1427) (mask!30524 thiss!1427) (extraKeys!6138 thiss!1427) (zeroValue!6244 thiss!1427) (minValue!6244 thiss!1427) (index!41739 lt!461105) key!909 (defaultEntry!6410 thiss!1427)))))

(assert (=> d!126425 (validMask!0 (mask!30524 thiss!1427))))

(assert (=> d!126425 (= (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!60 (_keys!11675 thiss!1427) (_values!6433 thiss!1427) (mask!30524 thiss!1427) (extraKeys!6138 thiss!1427) (zeroValue!6244 thiss!1427) (minValue!6244 thiss!1427) (index!41739 lt!461105) key!909 (defaultEntry!6410 thiss!1427)) lt!461223)))

(declare-fun b!1045031 () Bool)

(assert (=> b!1045031 (= e!592366 (= (-!540 (getCurrentListMap!3970 (_keys!11675 thiss!1427) (_values!6433 thiss!1427) (mask!30524 thiss!1427) (extraKeys!6138 thiss!1427) (zeroValue!6244 thiss!1427) (minValue!6244 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6410 thiss!1427)) key!909) (getCurrentListMap!3970 (array!65855 (store (arr!31671 (_keys!11675 thiss!1427)) (index!41739 lt!461105) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32207 (_keys!11675 thiss!1427))) (array!65857 (store (arr!31672 (_values!6433 thiss!1427)) (index!41739 lt!461105) (ValueCellFull!11721 (dynLambda!2014 (defaultEntry!6410 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!32208 (_values!6433 thiss!1427))) (mask!30524 thiss!1427) (extraKeys!6138 thiss!1427) (zeroValue!6244 thiss!1427) (minValue!6244 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6410 thiss!1427))))))

(assert (=> b!1045031 (bvslt (index!41739 lt!461105) (size!32208 (_values!6433 thiss!1427)))))

(assert (= (and d!126425 res!695986) b!1045031))

(declare-fun b_lambda!16303 () Bool)

(assert (=> (not b_lambda!16303) (not b!1045031)))

(assert (=> b!1045031 t!31396))

(declare-fun b_and!33757 () Bool)

(assert (= b_and!33755 (and (=> t!31396 result!14583) b_and!33757)))

(declare-fun m!964789 () Bool)

(assert (=> d!126425 m!964789))

(assert (=> d!126425 m!964717))

(assert (=> b!1045031 m!964633))

(assert (=> b!1045031 m!964635))

(declare-fun m!964791 () Bool)

(assert (=> b!1045031 m!964791))

(assert (=> b!1045031 m!964653))

(assert (=> b!1045031 m!964633))

(assert (=> b!1045031 m!964643))

(assert (=> b!1045031 m!964637))

(assert (=> b!1044902 d!126425))

(declare-fun b!1045032 () Bool)

(declare-fun e!592375 () Unit!34118)

(declare-fun Unit!34127 () Unit!34118)

(assert (=> b!1045032 (= e!592375 Unit!34127)))

(declare-fun b!1045033 () Bool)

(declare-fun e!592372 () Bool)

(declare-fun e!592374 () Bool)

(assert (=> b!1045033 (= e!592372 e!592374)))

(declare-fun res!695995 () Bool)

(declare-fun call!44456 () Bool)

(assert (=> b!1045033 (= res!695995 call!44456)))

(assert (=> b!1045033 (=> (not res!695995) (not e!592374))))

(declare-fun bm!44453 () Bool)

(declare-fun call!44460 () ListLongMap!13897)

(declare-fun call!44457 () ListLongMap!13897)

(assert (=> bm!44453 (= call!44460 call!44457)))

(declare-fun b!1045034 () Bool)

(declare-fun c!106171 () Bool)

(assert (=> b!1045034 (= c!106171 (and (not (= (bvand (extraKeys!6138 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!6138 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!592379 () ListLongMap!13897)

(declare-fun e!592373 () ListLongMap!13897)

(assert (=> b!1045034 (= e!592379 e!592373)))

(declare-fun bm!44454 () Bool)

(declare-fun call!44462 () ListLongMap!13897)

(declare-fun call!44461 () ListLongMap!13897)

(assert (=> bm!44454 (= call!44462 call!44461)))

(declare-fun b!1045035 () Bool)

(declare-fun res!695989 () Bool)

(declare-fun e!592371 () Bool)

(assert (=> b!1045035 (=> (not res!695989) (not e!592371))))

(assert (=> b!1045035 (= res!695989 e!592372)))

(declare-fun c!106174 () Bool)

(assert (=> b!1045035 (= c!106174 (not (= (bvand (extraKeys!6138 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1045036 () Bool)

(declare-fun e!592377 () Bool)

(assert (=> b!1045036 (= e!592377 (validKeyInArray!0 (select (arr!31671 lt!461107) #b00000000000000000000000000000000)))))

(declare-fun b!1045037 () Bool)

(declare-fun e!592367 () Bool)

(declare-fun e!592370 () Bool)

(assert (=> b!1045037 (= e!592367 e!592370)))

(declare-fun res!695992 () Bool)

(declare-fun call!44458 () Bool)

(assert (=> b!1045037 (= res!695992 call!44458)))

(assert (=> b!1045037 (=> (not res!695992) (not e!592370))))

(declare-fun b!1045038 () Bool)

(assert (=> b!1045038 (= e!592373 call!44460)))

(declare-fun b!1045040 () Bool)

(declare-fun lt!461244 () Unit!34118)

(assert (=> b!1045040 (= e!592375 lt!461244)))

(declare-fun lt!461232 () ListLongMap!13897)

(assert (=> b!1045040 (= lt!461232 (getCurrentListMapNoExtraKeys!3541 lt!461107 lt!461106 (mask!30524 thiss!1427) (extraKeys!6138 thiss!1427) (zeroValue!6244 thiss!1427) (minValue!6244 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6410 thiss!1427)))))

(declare-fun lt!461239 () (_ BitVec 64))

(assert (=> b!1045040 (= lt!461239 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!461238 () (_ BitVec 64))

(assert (=> b!1045040 (= lt!461238 (select (arr!31671 lt!461107) #b00000000000000000000000000000000))))

(declare-fun lt!461243 () Unit!34118)

(assert (=> b!1045040 (= lt!461243 (addStillContains!636 lt!461232 lt!461239 (zeroValue!6244 thiss!1427) lt!461238))))

(assert (=> b!1045040 (contains!6096 (+!3071 lt!461232 (tuple2!15875 lt!461239 (zeroValue!6244 thiss!1427))) lt!461238)))

(declare-fun lt!461225 () Unit!34118)

(assert (=> b!1045040 (= lt!461225 lt!461243)))

(declare-fun lt!461224 () ListLongMap!13897)

(assert (=> b!1045040 (= lt!461224 (getCurrentListMapNoExtraKeys!3541 lt!461107 lt!461106 (mask!30524 thiss!1427) (extraKeys!6138 thiss!1427) (zeroValue!6244 thiss!1427) (minValue!6244 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6410 thiss!1427)))))

(declare-fun lt!461242 () (_ BitVec 64))

(assert (=> b!1045040 (= lt!461242 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!461230 () (_ BitVec 64))

(assert (=> b!1045040 (= lt!461230 (select (arr!31671 lt!461107) #b00000000000000000000000000000000))))

(declare-fun lt!461227 () Unit!34118)

(assert (=> b!1045040 (= lt!461227 (addApplyDifferent!488 lt!461224 lt!461242 (minValue!6244 thiss!1427) lt!461230))))

(assert (=> b!1045040 (= (apply!948 (+!3071 lt!461224 (tuple2!15875 lt!461242 (minValue!6244 thiss!1427))) lt!461230) (apply!948 lt!461224 lt!461230))))

(declare-fun lt!461228 () Unit!34118)

(assert (=> b!1045040 (= lt!461228 lt!461227)))

(declare-fun lt!461226 () ListLongMap!13897)

(assert (=> b!1045040 (= lt!461226 (getCurrentListMapNoExtraKeys!3541 lt!461107 lt!461106 (mask!30524 thiss!1427) (extraKeys!6138 thiss!1427) (zeroValue!6244 thiss!1427) (minValue!6244 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6410 thiss!1427)))))

(declare-fun lt!461233 () (_ BitVec 64))

(assert (=> b!1045040 (= lt!461233 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!461229 () (_ BitVec 64))

(assert (=> b!1045040 (= lt!461229 (select (arr!31671 lt!461107) #b00000000000000000000000000000000))))

(declare-fun lt!461245 () Unit!34118)

(assert (=> b!1045040 (= lt!461245 (addApplyDifferent!488 lt!461226 lt!461233 (zeroValue!6244 thiss!1427) lt!461229))))

(assert (=> b!1045040 (= (apply!948 (+!3071 lt!461226 (tuple2!15875 lt!461233 (zeroValue!6244 thiss!1427))) lt!461229) (apply!948 lt!461226 lt!461229))))

(declare-fun lt!461235 () Unit!34118)

(assert (=> b!1045040 (= lt!461235 lt!461245)))

(declare-fun lt!461231 () ListLongMap!13897)

(assert (=> b!1045040 (= lt!461231 (getCurrentListMapNoExtraKeys!3541 lt!461107 lt!461106 (mask!30524 thiss!1427) (extraKeys!6138 thiss!1427) (zeroValue!6244 thiss!1427) (minValue!6244 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6410 thiss!1427)))))

(declare-fun lt!461241 () (_ BitVec 64))

(assert (=> b!1045040 (= lt!461241 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!461236 () (_ BitVec 64))

(assert (=> b!1045040 (= lt!461236 (select (arr!31671 lt!461107) #b00000000000000000000000000000000))))

(assert (=> b!1045040 (= lt!461244 (addApplyDifferent!488 lt!461231 lt!461241 (minValue!6244 thiss!1427) lt!461236))))

(assert (=> b!1045040 (= (apply!948 (+!3071 lt!461231 (tuple2!15875 lt!461241 (minValue!6244 thiss!1427))) lt!461236) (apply!948 lt!461231 lt!461236))))

(declare-fun b!1045041 () Bool)

(assert (=> b!1045041 (= e!592372 (not call!44456))))

(declare-fun b!1045042 () Bool)

(declare-fun e!592368 () Bool)

(assert (=> b!1045042 (= e!592368 (validKeyInArray!0 (select (arr!31671 lt!461107) #b00000000000000000000000000000000)))))

(declare-fun bm!44455 () Bool)

(declare-fun call!44459 () ListLongMap!13897)

(assert (=> bm!44455 (= call!44459 call!44462)))

(declare-fun bm!44456 () Bool)

(declare-fun lt!461234 () ListLongMap!13897)

(assert (=> bm!44456 (= call!44458 (contains!6096 lt!461234 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun c!106173 () Bool)

(declare-fun bm!44457 () Bool)

(declare-fun c!106175 () Bool)

(assert (=> bm!44457 (= call!44457 (+!3071 (ite c!106173 call!44461 (ite c!106175 call!44462 call!44459)) (ite (or c!106173 c!106175) (tuple2!15875 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6244 thiss!1427)) (tuple2!15875 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6244 thiss!1427)))))))

(declare-fun b!1045043 () Bool)

(assert (=> b!1045043 (= e!592367 (not call!44458))))

(declare-fun b!1045044 () Bool)

(assert (=> b!1045044 (= e!592373 call!44459)))

(declare-fun b!1045045 () Bool)

(assert (=> b!1045045 (= e!592379 call!44460)))

(declare-fun b!1045046 () Bool)

(declare-fun res!695987 () Bool)

(assert (=> b!1045046 (=> (not res!695987) (not e!592371))))

(declare-fun e!592378 () Bool)

(assert (=> b!1045046 (= res!695987 e!592378)))

(declare-fun res!695991 () Bool)

(assert (=> b!1045046 (=> res!695991 e!592378)))

(assert (=> b!1045046 (= res!695991 (not e!592368))))

(declare-fun res!695994 () Bool)

(assert (=> b!1045046 (=> (not res!695994) (not e!592368))))

(assert (=> b!1045046 (= res!695994 (bvslt #b00000000000000000000000000000000 (size!32207 lt!461107)))))

(declare-fun b!1045047 () Bool)

(declare-fun e!592376 () Bool)

(assert (=> b!1045047 (= e!592378 e!592376)))

(declare-fun res!695993 () Bool)

(assert (=> b!1045047 (=> (not res!695993) (not e!592376))))

(assert (=> b!1045047 (= res!695993 (contains!6096 lt!461234 (select (arr!31671 lt!461107) #b00000000000000000000000000000000)))))

(assert (=> b!1045047 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32207 lt!461107)))))

(declare-fun b!1045048 () Bool)

(assert (=> b!1045048 (= e!592370 (= (apply!948 lt!461234 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!6244 thiss!1427)))))

(declare-fun b!1045049 () Bool)

(assert (=> b!1045049 (= e!592376 (= (apply!948 lt!461234 (select (arr!31671 lt!461107) #b00000000000000000000000000000000)) (get!16567 (select (arr!31672 lt!461106) #b00000000000000000000000000000000) (dynLambda!2014 (defaultEntry!6410 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1045049 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32208 lt!461106)))))

(assert (=> b!1045049 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32207 lt!461107)))))

(declare-fun b!1045050 () Bool)

(assert (=> b!1045050 (= e!592371 e!592367)))

(declare-fun c!106172 () Bool)

(assert (=> b!1045050 (= c!106172 (not (= (bvand (extraKeys!6138 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun d!126427 () Bool)

(assert (=> d!126427 e!592371))

(declare-fun res!695988 () Bool)

(assert (=> d!126427 (=> (not res!695988) (not e!592371))))

(assert (=> d!126427 (= res!695988 (or (bvsge #b00000000000000000000000000000000 (size!32207 lt!461107)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32207 lt!461107)))))))

(declare-fun lt!461237 () ListLongMap!13897)

(assert (=> d!126427 (= lt!461234 lt!461237)))

(declare-fun lt!461240 () Unit!34118)

(assert (=> d!126427 (= lt!461240 e!592375)))

(declare-fun c!106170 () Bool)

(assert (=> d!126427 (= c!106170 e!592377)))

(declare-fun res!695990 () Bool)

(assert (=> d!126427 (=> (not res!695990) (not e!592377))))

(assert (=> d!126427 (= res!695990 (bvslt #b00000000000000000000000000000000 (size!32207 lt!461107)))))

(declare-fun e!592369 () ListLongMap!13897)

(assert (=> d!126427 (= lt!461237 e!592369)))

(assert (=> d!126427 (= c!106173 (and (not (= (bvand (extraKeys!6138 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!6138 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!126427 (validMask!0 (mask!30524 thiss!1427))))

(assert (=> d!126427 (= (getCurrentListMap!3970 lt!461107 lt!461106 (mask!30524 thiss!1427) (extraKeys!6138 thiss!1427) (zeroValue!6244 thiss!1427) (minValue!6244 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6410 thiss!1427)) lt!461234)))

(declare-fun b!1045039 () Bool)

(assert (=> b!1045039 (= e!592369 (+!3071 call!44457 (tuple2!15875 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6244 thiss!1427))))))

(declare-fun b!1045051 () Bool)

(assert (=> b!1045051 (= e!592374 (= (apply!948 lt!461234 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!6244 thiss!1427)))))

(declare-fun bm!44458 () Bool)

(assert (=> bm!44458 (= call!44456 (contains!6096 lt!461234 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1045052 () Bool)

(assert (=> b!1045052 (= e!592369 e!592379)))

(assert (=> b!1045052 (= c!106175 (and (not (= (bvand (extraKeys!6138 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!6138 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!44459 () Bool)

(assert (=> bm!44459 (= call!44461 (getCurrentListMapNoExtraKeys!3541 lt!461107 lt!461106 (mask!30524 thiss!1427) (extraKeys!6138 thiss!1427) (zeroValue!6244 thiss!1427) (minValue!6244 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6410 thiss!1427)))))

(assert (= (and d!126427 c!106173) b!1045039))

(assert (= (and d!126427 (not c!106173)) b!1045052))

(assert (= (and b!1045052 c!106175) b!1045045))

(assert (= (and b!1045052 (not c!106175)) b!1045034))

(assert (= (and b!1045034 c!106171) b!1045038))

(assert (= (and b!1045034 (not c!106171)) b!1045044))

(assert (= (or b!1045038 b!1045044) bm!44455))

(assert (= (or b!1045045 bm!44455) bm!44454))

(assert (= (or b!1045045 b!1045038) bm!44453))

(assert (= (or b!1045039 bm!44454) bm!44459))

(assert (= (or b!1045039 bm!44453) bm!44457))

(assert (= (and d!126427 res!695990) b!1045036))

(assert (= (and d!126427 c!106170) b!1045040))

(assert (= (and d!126427 (not c!106170)) b!1045032))

(assert (= (and d!126427 res!695988) b!1045046))

(assert (= (and b!1045046 res!695994) b!1045042))

(assert (= (and b!1045046 (not res!695991)) b!1045047))

(assert (= (and b!1045047 res!695993) b!1045049))

(assert (= (and b!1045046 res!695987) b!1045035))

(assert (= (and b!1045035 c!106174) b!1045033))

(assert (= (and b!1045035 (not c!106174)) b!1045041))

(assert (= (and b!1045033 res!695995) b!1045051))

(assert (= (or b!1045033 b!1045041) bm!44458))

(assert (= (and b!1045035 res!695989) b!1045050))

(assert (= (and b!1045050 c!106172) b!1045037))

(assert (= (and b!1045050 (not c!106172)) b!1045043))

(assert (= (and b!1045037 res!695992) b!1045048))

(assert (= (or b!1045037 b!1045043) bm!44456))

(declare-fun b_lambda!16305 () Bool)

(assert (=> (not b_lambda!16305) (not b!1045049)))

(assert (=> b!1045049 t!31396))

(declare-fun b_and!33759 () Bool)

(assert (= b_and!33757 (and (=> t!31396 result!14583) b_and!33759)))

(assert (=> d!126427 m!964717))

(declare-fun m!964793 () Bool)

(assert (=> b!1045036 m!964793))

(assert (=> b!1045036 m!964793))

(declare-fun m!964795 () Bool)

(assert (=> b!1045036 m!964795))

(declare-fun m!964797 () Bool)

(assert (=> b!1045049 m!964797))

(assert (=> b!1045049 m!964797))

(assert (=> b!1045049 m!964653))

(declare-fun m!964799 () Bool)

(assert (=> b!1045049 m!964799))

(assert (=> b!1045049 m!964793))

(assert (=> b!1045049 m!964653))

(assert (=> b!1045049 m!964793))

(declare-fun m!964801 () Bool)

(assert (=> b!1045049 m!964801))

(assert (=> b!1045047 m!964793))

(assert (=> b!1045047 m!964793))

(declare-fun m!964803 () Bool)

(assert (=> b!1045047 m!964803))

(assert (=> b!1045042 m!964793))

(assert (=> b!1045042 m!964793))

(assert (=> b!1045042 m!964795))

(declare-fun m!964805 () Bool)

(assert (=> bm!44458 m!964805))

(declare-fun m!964807 () Bool)

(assert (=> b!1045039 m!964807))

(declare-fun m!964809 () Bool)

(assert (=> bm!44459 m!964809))

(declare-fun m!964811 () Bool)

(assert (=> bm!44456 m!964811))

(assert (=> b!1045040 m!964809))

(declare-fun m!964813 () Bool)

(assert (=> b!1045040 m!964813))

(declare-fun m!964815 () Bool)

(assert (=> b!1045040 m!964815))

(declare-fun m!964817 () Bool)

(assert (=> b!1045040 m!964817))

(declare-fun m!964819 () Bool)

(assert (=> b!1045040 m!964819))

(assert (=> b!1045040 m!964793))

(declare-fun m!964821 () Bool)

(assert (=> b!1045040 m!964821))

(declare-fun m!964823 () Bool)

(assert (=> b!1045040 m!964823))

(declare-fun m!964825 () Bool)

(assert (=> b!1045040 m!964825))

(declare-fun m!964827 () Bool)

(assert (=> b!1045040 m!964827))

(declare-fun m!964829 () Bool)

(assert (=> b!1045040 m!964829))

(declare-fun m!964831 () Bool)

(assert (=> b!1045040 m!964831))

(declare-fun m!964833 () Bool)

(assert (=> b!1045040 m!964833))

(assert (=> b!1045040 m!964821))

(declare-fun m!964835 () Bool)

(assert (=> b!1045040 m!964835))

(assert (=> b!1045040 m!964833))

(declare-fun m!964837 () Bool)

(assert (=> b!1045040 m!964837))

(declare-fun m!964839 () Bool)

(assert (=> b!1045040 m!964839))

(declare-fun m!964841 () Bool)

(assert (=> b!1045040 m!964841))

(assert (=> b!1045040 m!964823))

(assert (=> b!1045040 m!964815))

(declare-fun m!964843 () Bool)

(assert (=> b!1045051 m!964843))

(declare-fun m!964845 () Bool)

(assert (=> bm!44457 m!964845))

(declare-fun m!964847 () Bool)

(assert (=> b!1045048 m!964847))

(assert (=> b!1044902 d!126427))

(declare-fun b!1045053 () Bool)

(declare-fun e!592388 () Unit!34118)

(declare-fun Unit!34128 () Unit!34118)

(assert (=> b!1045053 (= e!592388 Unit!34128)))

(declare-fun b!1045054 () Bool)

(declare-fun e!592385 () Bool)

(declare-fun e!592387 () Bool)

(assert (=> b!1045054 (= e!592385 e!592387)))

(declare-fun res!696004 () Bool)

(declare-fun call!44463 () Bool)

(assert (=> b!1045054 (= res!696004 call!44463)))

(assert (=> b!1045054 (=> (not res!696004) (not e!592387))))

(declare-fun bm!44460 () Bool)

(declare-fun call!44467 () ListLongMap!13897)

(declare-fun call!44464 () ListLongMap!13897)

(assert (=> bm!44460 (= call!44467 call!44464)))

(declare-fun b!1045055 () Bool)

(declare-fun c!106177 () Bool)

(assert (=> b!1045055 (= c!106177 (and (not (= (bvand (extraKeys!6138 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!6138 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!592392 () ListLongMap!13897)

(declare-fun e!592386 () ListLongMap!13897)

(assert (=> b!1045055 (= e!592392 e!592386)))

(declare-fun bm!44461 () Bool)

(declare-fun call!44469 () ListLongMap!13897)

(declare-fun call!44468 () ListLongMap!13897)

(assert (=> bm!44461 (= call!44469 call!44468)))

(declare-fun b!1045056 () Bool)

(declare-fun res!695998 () Bool)

(declare-fun e!592384 () Bool)

(assert (=> b!1045056 (=> (not res!695998) (not e!592384))))

(assert (=> b!1045056 (= res!695998 e!592385)))

(declare-fun c!106180 () Bool)

(assert (=> b!1045056 (= c!106180 (not (= (bvand (extraKeys!6138 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1045057 () Bool)

(declare-fun e!592390 () Bool)

(assert (=> b!1045057 (= e!592390 (validKeyInArray!0 (select (arr!31671 (_keys!11675 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1045058 () Bool)

(declare-fun e!592380 () Bool)

(declare-fun e!592383 () Bool)

(assert (=> b!1045058 (= e!592380 e!592383)))

(declare-fun res!696001 () Bool)

(declare-fun call!44465 () Bool)

(assert (=> b!1045058 (= res!696001 call!44465)))

(assert (=> b!1045058 (=> (not res!696001) (not e!592383))))

(declare-fun b!1045059 () Bool)

(assert (=> b!1045059 (= e!592386 call!44467)))

(declare-fun b!1045061 () Bool)

(declare-fun lt!461266 () Unit!34118)

(assert (=> b!1045061 (= e!592388 lt!461266)))

(declare-fun lt!461254 () ListLongMap!13897)

(assert (=> b!1045061 (= lt!461254 (getCurrentListMapNoExtraKeys!3541 (_keys!11675 thiss!1427) (_values!6433 thiss!1427) (mask!30524 thiss!1427) (extraKeys!6138 thiss!1427) (zeroValue!6244 thiss!1427) (minValue!6244 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6410 thiss!1427)))))

(declare-fun lt!461261 () (_ BitVec 64))

(assert (=> b!1045061 (= lt!461261 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!461260 () (_ BitVec 64))

(assert (=> b!1045061 (= lt!461260 (select (arr!31671 (_keys!11675 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun lt!461265 () Unit!34118)

(assert (=> b!1045061 (= lt!461265 (addStillContains!636 lt!461254 lt!461261 (zeroValue!6244 thiss!1427) lt!461260))))

(assert (=> b!1045061 (contains!6096 (+!3071 lt!461254 (tuple2!15875 lt!461261 (zeroValue!6244 thiss!1427))) lt!461260)))

(declare-fun lt!461247 () Unit!34118)

(assert (=> b!1045061 (= lt!461247 lt!461265)))

(declare-fun lt!461246 () ListLongMap!13897)

(assert (=> b!1045061 (= lt!461246 (getCurrentListMapNoExtraKeys!3541 (_keys!11675 thiss!1427) (_values!6433 thiss!1427) (mask!30524 thiss!1427) (extraKeys!6138 thiss!1427) (zeroValue!6244 thiss!1427) (minValue!6244 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6410 thiss!1427)))))

(declare-fun lt!461264 () (_ BitVec 64))

(assert (=> b!1045061 (= lt!461264 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!461252 () (_ BitVec 64))

(assert (=> b!1045061 (= lt!461252 (select (arr!31671 (_keys!11675 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun lt!461249 () Unit!34118)

(assert (=> b!1045061 (= lt!461249 (addApplyDifferent!488 lt!461246 lt!461264 (minValue!6244 thiss!1427) lt!461252))))

(assert (=> b!1045061 (= (apply!948 (+!3071 lt!461246 (tuple2!15875 lt!461264 (minValue!6244 thiss!1427))) lt!461252) (apply!948 lt!461246 lt!461252))))

(declare-fun lt!461250 () Unit!34118)

(assert (=> b!1045061 (= lt!461250 lt!461249)))

(declare-fun lt!461248 () ListLongMap!13897)

(assert (=> b!1045061 (= lt!461248 (getCurrentListMapNoExtraKeys!3541 (_keys!11675 thiss!1427) (_values!6433 thiss!1427) (mask!30524 thiss!1427) (extraKeys!6138 thiss!1427) (zeroValue!6244 thiss!1427) (minValue!6244 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6410 thiss!1427)))))

(declare-fun lt!461255 () (_ BitVec 64))

(assert (=> b!1045061 (= lt!461255 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!461251 () (_ BitVec 64))

(assert (=> b!1045061 (= lt!461251 (select (arr!31671 (_keys!11675 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun lt!461267 () Unit!34118)

(assert (=> b!1045061 (= lt!461267 (addApplyDifferent!488 lt!461248 lt!461255 (zeroValue!6244 thiss!1427) lt!461251))))

(assert (=> b!1045061 (= (apply!948 (+!3071 lt!461248 (tuple2!15875 lt!461255 (zeroValue!6244 thiss!1427))) lt!461251) (apply!948 lt!461248 lt!461251))))

(declare-fun lt!461257 () Unit!34118)

(assert (=> b!1045061 (= lt!461257 lt!461267)))

(declare-fun lt!461253 () ListLongMap!13897)

(assert (=> b!1045061 (= lt!461253 (getCurrentListMapNoExtraKeys!3541 (_keys!11675 thiss!1427) (_values!6433 thiss!1427) (mask!30524 thiss!1427) (extraKeys!6138 thiss!1427) (zeroValue!6244 thiss!1427) (minValue!6244 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6410 thiss!1427)))))

(declare-fun lt!461263 () (_ BitVec 64))

(assert (=> b!1045061 (= lt!461263 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!461258 () (_ BitVec 64))

(assert (=> b!1045061 (= lt!461258 (select (arr!31671 (_keys!11675 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1045061 (= lt!461266 (addApplyDifferent!488 lt!461253 lt!461263 (minValue!6244 thiss!1427) lt!461258))))

(assert (=> b!1045061 (= (apply!948 (+!3071 lt!461253 (tuple2!15875 lt!461263 (minValue!6244 thiss!1427))) lt!461258) (apply!948 lt!461253 lt!461258))))

(declare-fun b!1045062 () Bool)

(assert (=> b!1045062 (= e!592385 (not call!44463))))

(declare-fun b!1045063 () Bool)

(declare-fun e!592381 () Bool)

(assert (=> b!1045063 (= e!592381 (validKeyInArray!0 (select (arr!31671 (_keys!11675 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun bm!44462 () Bool)

(declare-fun call!44466 () ListLongMap!13897)

(assert (=> bm!44462 (= call!44466 call!44469)))

(declare-fun bm!44463 () Bool)

(declare-fun lt!461256 () ListLongMap!13897)

(assert (=> bm!44463 (= call!44465 (contains!6096 lt!461256 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!44464 () Bool)

(declare-fun c!106179 () Bool)

(declare-fun c!106181 () Bool)

(assert (=> bm!44464 (= call!44464 (+!3071 (ite c!106179 call!44468 (ite c!106181 call!44469 call!44466)) (ite (or c!106179 c!106181) (tuple2!15875 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6244 thiss!1427)) (tuple2!15875 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6244 thiss!1427)))))))

(declare-fun b!1045064 () Bool)

(assert (=> b!1045064 (= e!592380 (not call!44465))))

(declare-fun b!1045065 () Bool)

(assert (=> b!1045065 (= e!592386 call!44466)))

(declare-fun b!1045066 () Bool)

(assert (=> b!1045066 (= e!592392 call!44467)))

(declare-fun b!1045067 () Bool)

(declare-fun res!695996 () Bool)

(assert (=> b!1045067 (=> (not res!695996) (not e!592384))))

(declare-fun e!592391 () Bool)

(assert (=> b!1045067 (= res!695996 e!592391)))

(declare-fun res!696000 () Bool)

(assert (=> b!1045067 (=> res!696000 e!592391)))

(assert (=> b!1045067 (= res!696000 (not e!592381))))

(declare-fun res!696003 () Bool)

(assert (=> b!1045067 (=> (not res!696003) (not e!592381))))

(assert (=> b!1045067 (= res!696003 (bvslt #b00000000000000000000000000000000 (size!32207 (_keys!11675 thiss!1427))))))

(declare-fun b!1045068 () Bool)

(declare-fun e!592389 () Bool)

(assert (=> b!1045068 (= e!592391 e!592389)))

(declare-fun res!696002 () Bool)

(assert (=> b!1045068 (=> (not res!696002) (not e!592389))))

(assert (=> b!1045068 (= res!696002 (contains!6096 lt!461256 (select (arr!31671 (_keys!11675 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> b!1045068 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32207 (_keys!11675 thiss!1427))))))

(declare-fun b!1045069 () Bool)

(assert (=> b!1045069 (= e!592383 (= (apply!948 lt!461256 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!6244 thiss!1427)))))

(declare-fun b!1045070 () Bool)

(assert (=> b!1045070 (= e!592389 (= (apply!948 lt!461256 (select (arr!31671 (_keys!11675 thiss!1427)) #b00000000000000000000000000000000)) (get!16567 (select (arr!31672 (_values!6433 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2014 (defaultEntry!6410 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1045070 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32208 (_values!6433 thiss!1427))))))

(assert (=> b!1045070 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32207 (_keys!11675 thiss!1427))))))

(declare-fun b!1045071 () Bool)

(assert (=> b!1045071 (= e!592384 e!592380)))

(declare-fun c!106178 () Bool)

(assert (=> b!1045071 (= c!106178 (not (= (bvand (extraKeys!6138 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun d!126429 () Bool)

(assert (=> d!126429 e!592384))

(declare-fun res!695997 () Bool)

(assert (=> d!126429 (=> (not res!695997) (not e!592384))))

(assert (=> d!126429 (= res!695997 (or (bvsge #b00000000000000000000000000000000 (size!32207 (_keys!11675 thiss!1427))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32207 (_keys!11675 thiss!1427))))))))

(declare-fun lt!461259 () ListLongMap!13897)

(assert (=> d!126429 (= lt!461256 lt!461259)))

(declare-fun lt!461262 () Unit!34118)

(assert (=> d!126429 (= lt!461262 e!592388)))

(declare-fun c!106176 () Bool)

(assert (=> d!126429 (= c!106176 e!592390)))

(declare-fun res!695999 () Bool)

(assert (=> d!126429 (=> (not res!695999) (not e!592390))))

(assert (=> d!126429 (= res!695999 (bvslt #b00000000000000000000000000000000 (size!32207 (_keys!11675 thiss!1427))))))

(declare-fun e!592382 () ListLongMap!13897)

(assert (=> d!126429 (= lt!461259 e!592382)))

(assert (=> d!126429 (= c!106179 (and (not (= (bvand (extraKeys!6138 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!6138 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!126429 (validMask!0 (mask!30524 thiss!1427))))

(assert (=> d!126429 (= (getCurrentListMap!3970 (_keys!11675 thiss!1427) (_values!6433 thiss!1427) (mask!30524 thiss!1427) (extraKeys!6138 thiss!1427) (zeroValue!6244 thiss!1427) (minValue!6244 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6410 thiss!1427)) lt!461256)))

(declare-fun b!1045060 () Bool)

(assert (=> b!1045060 (= e!592382 (+!3071 call!44464 (tuple2!15875 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6244 thiss!1427))))))

(declare-fun b!1045072 () Bool)

(assert (=> b!1045072 (= e!592387 (= (apply!948 lt!461256 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!6244 thiss!1427)))))

(declare-fun bm!44465 () Bool)

(assert (=> bm!44465 (= call!44463 (contains!6096 lt!461256 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1045073 () Bool)

(assert (=> b!1045073 (= e!592382 e!592392)))

(assert (=> b!1045073 (= c!106181 (and (not (= (bvand (extraKeys!6138 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!6138 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!44466 () Bool)

(assert (=> bm!44466 (= call!44468 (getCurrentListMapNoExtraKeys!3541 (_keys!11675 thiss!1427) (_values!6433 thiss!1427) (mask!30524 thiss!1427) (extraKeys!6138 thiss!1427) (zeroValue!6244 thiss!1427) (minValue!6244 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6410 thiss!1427)))))

(assert (= (and d!126429 c!106179) b!1045060))

(assert (= (and d!126429 (not c!106179)) b!1045073))

(assert (= (and b!1045073 c!106181) b!1045066))

(assert (= (and b!1045073 (not c!106181)) b!1045055))

(assert (= (and b!1045055 c!106177) b!1045059))

(assert (= (and b!1045055 (not c!106177)) b!1045065))

(assert (= (or b!1045059 b!1045065) bm!44462))

(assert (= (or b!1045066 bm!44462) bm!44461))

(assert (= (or b!1045066 b!1045059) bm!44460))

(assert (= (or b!1045060 bm!44461) bm!44466))

(assert (= (or b!1045060 bm!44460) bm!44464))

(assert (= (and d!126429 res!695999) b!1045057))

(assert (= (and d!126429 c!106176) b!1045061))

(assert (= (and d!126429 (not c!106176)) b!1045053))

(assert (= (and d!126429 res!695997) b!1045067))

(assert (= (and b!1045067 res!696003) b!1045063))

(assert (= (and b!1045067 (not res!696000)) b!1045068))

(assert (= (and b!1045068 res!696002) b!1045070))

(assert (= (and b!1045067 res!695996) b!1045056))

(assert (= (and b!1045056 c!106180) b!1045054))

(assert (= (and b!1045056 (not c!106180)) b!1045062))

(assert (= (and b!1045054 res!696004) b!1045072))

(assert (= (or b!1045054 b!1045062) bm!44465))

(assert (= (and b!1045056 res!695998) b!1045071))

(assert (= (and b!1045071 c!106178) b!1045058))

(assert (= (and b!1045071 (not c!106178)) b!1045064))

(assert (= (and b!1045058 res!696001) b!1045069))

(assert (= (or b!1045058 b!1045064) bm!44463))

(declare-fun b_lambda!16307 () Bool)

(assert (=> (not b_lambda!16307) (not b!1045070)))

(assert (=> b!1045070 t!31396))

(declare-fun b_and!33761 () Bool)

(assert (= b_and!33759 (and (=> t!31396 result!14583) b_and!33761)))

(assert (=> d!126429 m!964717))

(declare-fun m!964849 () Bool)

(assert (=> b!1045057 m!964849))

(assert (=> b!1045057 m!964849))

(declare-fun m!964851 () Bool)

(assert (=> b!1045057 m!964851))

(declare-fun m!964853 () Bool)

(assert (=> b!1045070 m!964853))

(assert (=> b!1045070 m!964853))

(assert (=> b!1045070 m!964653))

(declare-fun m!964855 () Bool)

(assert (=> b!1045070 m!964855))

(assert (=> b!1045070 m!964849))

(assert (=> b!1045070 m!964653))

(assert (=> b!1045070 m!964849))

(declare-fun m!964857 () Bool)

(assert (=> b!1045070 m!964857))

(assert (=> b!1045068 m!964849))

(assert (=> b!1045068 m!964849))

(declare-fun m!964859 () Bool)

(assert (=> b!1045068 m!964859))

(assert (=> b!1045063 m!964849))

(assert (=> b!1045063 m!964849))

(assert (=> b!1045063 m!964851))

(declare-fun m!964861 () Bool)

(assert (=> bm!44465 m!964861))

(declare-fun m!964863 () Bool)

(assert (=> b!1045060 m!964863))

(declare-fun m!964865 () Bool)

(assert (=> bm!44466 m!964865))

(declare-fun m!964867 () Bool)

(assert (=> bm!44463 m!964867))

(assert (=> b!1045061 m!964865))

(declare-fun m!964869 () Bool)

(assert (=> b!1045061 m!964869))

(declare-fun m!964871 () Bool)

(assert (=> b!1045061 m!964871))

(declare-fun m!964873 () Bool)

(assert (=> b!1045061 m!964873))

(declare-fun m!964875 () Bool)

(assert (=> b!1045061 m!964875))

(assert (=> b!1045061 m!964849))

(declare-fun m!964877 () Bool)

(assert (=> b!1045061 m!964877))

(declare-fun m!964879 () Bool)

(assert (=> b!1045061 m!964879))

(declare-fun m!964881 () Bool)

(assert (=> b!1045061 m!964881))

(declare-fun m!964883 () Bool)

(assert (=> b!1045061 m!964883))

(declare-fun m!964885 () Bool)

(assert (=> b!1045061 m!964885))

(declare-fun m!964887 () Bool)

(assert (=> b!1045061 m!964887))

(declare-fun m!964889 () Bool)

(assert (=> b!1045061 m!964889))

(assert (=> b!1045061 m!964877))

(declare-fun m!964891 () Bool)

(assert (=> b!1045061 m!964891))

(assert (=> b!1045061 m!964889))

(declare-fun m!964893 () Bool)

(assert (=> b!1045061 m!964893))

(declare-fun m!964895 () Bool)

(assert (=> b!1045061 m!964895))

(declare-fun m!964897 () Bool)

(assert (=> b!1045061 m!964897))

(assert (=> b!1045061 m!964879))

(assert (=> b!1045061 m!964871))

(declare-fun m!964899 () Bool)

(assert (=> b!1045072 m!964899))

(declare-fun m!964901 () Bool)

(assert (=> bm!44464 m!964901))

(declare-fun m!964903 () Bool)

(assert (=> b!1045069 m!964903))

(assert (=> b!1044902 d!126429))

(declare-fun d!126431 () Bool)

(declare-fun res!696009 () Bool)

(declare-fun e!592397 () Bool)

(assert (=> d!126431 (=> res!696009 e!592397)))

(assert (=> d!126431 (= res!696009 (= (select (arr!31671 lt!461107) #b00000000000000000000000000000000) key!909))))

(assert (=> d!126431 (= (arrayContainsKey!0 lt!461107 key!909 #b00000000000000000000000000000000) e!592397)))

(declare-fun b!1045078 () Bool)

(declare-fun e!592398 () Bool)

(assert (=> b!1045078 (= e!592397 e!592398)))

(declare-fun res!696010 () Bool)

(assert (=> b!1045078 (=> (not res!696010) (not e!592398))))

(assert (=> b!1045078 (= res!696010 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32207 lt!461107)))))

(declare-fun b!1045079 () Bool)

(assert (=> b!1045079 (= e!592398 (arrayContainsKey!0 lt!461107 key!909 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!126431 (not res!696009)) b!1045078))

(assert (= (and b!1045078 res!696010) b!1045079))

(assert (=> d!126431 m!964793))

(declare-fun m!964905 () Bool)

(assert (=> b!1045079 m!964905))

(assert (=> b!1044902 d!126431))

(declare-fun d!126433 () Bool)

(declare-fun e!592401 () Bool)

(assert (=> d!126433 e!592401))

(declare-fun res!696013 () Bool)

(assert (=> d!126433 (=> (not res!696013) (not e!592401))))

(assert (=> d!126433 (= res!696013 (and (bvsge (index!41739 lt!461105) #b00000000000000000000000000000000) (bvslt (index!41739 lt!461105) (size!32207 (_keys!11675 thiss!1427)))))))

(declare-fun lt!461270 () Unit!34118)

(declare-fun choose!53 (array!65854 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22137) Unit!34118)

(assert (=> d!126433 (= lt!461270 (choose!53 (_keys!11675 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41739 lt!461105) #b00000000000000000000000000000000 Nil!22134))))

(assert (=> d!126433 (bvslt (size!32207 (_keys!11675 thiss!1427)) #b01111111111111111111111111111111)))

(assert (=> d!126433 (= (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11675 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41739 lt!461105) #b00000000000000000000000000000000 Nil!22134) lt!461270)))

(declare-fun b!1045082 () Bool)

(assert (=> b!1045082 (= e!592401 (arrayNoDuplicates!0 (array!65855 (store (arr!31671 (_keys!11675 thiss!1427)) (index!41739 lt!461105) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32207 (_keys!11675 thiss!1427))) #b00000000000000000000000000000000 Nil!22134))))

(assert (= (and d!126433 res!696013) b!1045082))

(declare-fun m!964907 () Bool)

(assert (=> d!126433 m!964907))

(assert (=> b!1045082 m!964637))

(declare-fun m!964909 () Bool)

(assert (=> b!1045082 m!964909))

(assert (=> b!1044902 d!126433))

(declare-fun b!1045091 () Bool)

(declare-fun e!592409 () Bool)

(declare-fun call!44472 () Bool)

(assert (=> b!1045091 (= e!592409 call!44472)))

(declare-fun b!1045092 () Bool)

(declare-fun e!592408 () Bool)

(declare-fun e!592410 () Bool)

(assert (=> b!1045092 (= e!592408 e!592410)))

(declare-fun c!106184 () Bool)

(assert (=> b!1045092 (= c!106184 (validKeyInArray!0 (select (arr!31671 lt!461107) #b00000000000000000000000000000000)))))

(declare-fun b!1045093 () Bool)

(assert (=> b!1045093 (= e!592410 call!44472)))

(declare-fun d!126435 () Bool)

(declare-fun res!696018 () Bool)

(assert (=> d!126435 (=> res!696018 e!592408)))

(assert (=> d!126435 (= res!696018 (bvsge #b00000000000000000000000000000000 (size!32207 lt!461107)))))

(assert (=> d!126435 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!461107 (mask!30524 thiss!1427)) e!592408)))

(declare-fun b!1045094 () Bool)

(assert (=> b!1045094 (= e!592410 e!592409)))

(declare-fun lt!461277 () (_ BitVec 64))

(assert (=> b!1045094 (= lt!461277 (select (arr!31671 lt!461107) #b00000000000000000000000000000000))))

(declare-fun lt!461279 () Unit!34118)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!65854 (_ BitVec 64) (_ BitVec 32)) Unit!34118)

(assert (=> b!1045094 (= lt!461279 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!461107 lt!461277 #b00000000000000000000000000000000))))

(assert (=> b!1045094 (arrayContainsKey!0 lt!461107 lt!461277 #b00000000000000000000000000000000)))

(declare-fun lt!461278 () Unit!34118)

(assert (=> b!1045094 (= lt!461278 lt!461279)))

(declare-fun res!696019 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!65854 (_ BitVec 32)) SeekEntryResult!9842)

(assert (=> b!1045094 (= res!696019 (= (seekEntryOrOpen!0 (select (arr!31671 lt!461107) #b00000000000000000000000000000000) lt!461107 (mask!30524 thiss!1427)) (Found!9842 #b00000000000000000000000000000000)))))

(assert (=> b!1045094 (=> (not res!696019) (not e!592409))))

(declare-fun bm!44469 () Bool)

(assert (=> bm!44469 (= call!44472 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!461107 (mask!30524 thiss!1427)))))

(assert (= (and d!126435 (not res!696018)) b!1045092))

(assert (= (and b!1045092 c!106184) b!1045094))

(assert (= (and b!1045092 (not c!106184)) b!1045093))

(assert (= (and b!1045094 res!696019) b!1045091))

(assert (= (or b!1045091 b!1045093) bm!44469))

(assert (=> b!1045092 m!964793))

(assert (=> b!1045092 m!964793))

(assert (=> b!1045092 m!964795))

(assert (=> b!1045094 m!964793))

(declare-fun m!964911 () Bool)

(assert (=> b!1045094 m!964911))

(declare-fun m!964913 () Bool)

(assert (=> b!1045094 m!964913))

(assert (=> b!1045094 m!964793))

(declare-fun m!964915 () Bool)

(assert (=> b!1045094 m!964915))

(declare-fun m!964917 () Bool)

(assert (=> bm!44469 m!964917))

(assert (=> b!1044902 d!126435))

(declare-fun d!126437 () Bool)

(declare-fun e!592416 () Bool)

(assert (=> d!126437 e!592416))

(declare-fun res!696022 () Bool)

(assert (=> d!126437 (=> res!696022 e!592416)))

(declare-fun lt!461290 () Bool)

(assert (=> d!126437 (= res!696022 (not lt!461290))))

(declare-fun lt!461288 () Bool)

(assert (=> d!126437 (= lt!461290 lt!461288)))

(declare-fun lt!461291 () Unit!34118)

(declare-fun e!592415 () Unit!34118)

(assert (=> d!126437 (= lt!461291 e!592415)))

(declare-fun c!106187 () Bool)

(assert (=> d!126437 (= c!106187 lt!461288)))

(declare-fun containsKey!569 (List!22136 (_ BitVec 64)) Bool)

(assert (=> d!126437 (= lt!461288 (containsKey!569 (toList!6964 (getCurrentListMap!3970 (_keys!11675 (_2!7946 lt!461111)) (_values!6433 (_2!7946 lt!461111)) (mask!30524 (_2!7946 lt!461111)) (extraKeys!6138 (_2!7946 lt!461111)) (zeroValue!6244 (_2!7946 lt!461111)) (minValue!6244 (_2!7946 lt!461111)) #b00000000000000000000000000000000 (defaultEntry!6410 (_2!7946 lt!461111)))) key!909))))

(assert (=> d!126437 (= (contains!6096 (getCurrentListMap!3970 (_keys!11675 (_2!7946 lt!461111)) (_values!6433 (_2!7946 lt!461111)) (mask!30524 (_2!7946 lt!461111)) (extraKeys!6138 (_2!7946 lt!461111)) (zeroValue!6244 (_2!7946 lt!461111)) (minValue!6244 (_2!7946 lt!461111)) #b00000000000000000000000000000000 (defaultEntry!6410 (_2!7946 lt!461111))) key!909) lt!461290)))

(declare-fun b!1045101 () Bool)

(declare-fun lt!461289 () Unit!34118)

(assert (=> b!1045101 (= e!592415 lt!461289)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!401 (List!22136 (_ BitVec 64)) Unit!34118)

(assert (=> b!1045101 (= lt!461289 (lemmaContainsKeyImpliesGetValueByKeyDefined!401 (toList!6964 (getCurrentListMap!3970 (_keys!11675 (_2!7946 lt!461111)) (_values!6433 (_2!7946 lt!461111)) (mask!30524 (_2!7946 lt!461111)) (extraKeys!6138 (_2!7946 lt!461111)) (zeroValue!6244 (_2!7946 lt!461111)) (minValue!6244 (_2!7946 lt!461111)) #b00000000000000000000000000000000 (defaultEntry!6410 (_2!7946 lt!461111)))) key!909))))

(declare-datatypes ((Option!647 0))(
  ( (Some!646 (v!15072 V!38005)) (None!645) )
))
(declare-fun isDefined!441 (Option!647) Bool)

(declare-fun getValueByKey!596 (List!22136 (_ BitVec 64)) Option!647)

(assert (=> b!1045101 (isDefined!441 (getValueByKey!596 (toList!6964 (getCurrentListMap!3970 (_keys!11675 (_2!7946 lt!461111)) (_values!6433 (_2!7946 lt!461111)) (mask!30524 (_2!7946 lt!461111)) (extraKeys!6138 (_2!7946 lt!461111)) (zeroValue!6244 (_2!7946 lt!461111)) (minValue!6244 (_2!7946 lt!461111)) #b00000000000000000000000000000000 (defaultEntry!6410 (_2!7946 lt!461111)))) key!909))))

(declare-fun b!1045102 () Bool)

(declare-fun Unit!34129 () Unit!34118)

(assert (=> b!1045102 (= e!592415 Unit!34129)))

(declare-fun b!1045103 () Bool)

(assert (=> b!1045103 (= e!592416 (isDefined!441 (getValueByKey!596 (toList!6964 (getCurrentListMap!3970 (_keys!11675 (_2!7946 lt!461111)) (_values!6433 (_2!7946 lt!461111)) (mask!30524 (_2!7946 lt!461111)) (extraKeys!6138 (_2!7946 lt!461111)) (zeroValue!6244 (_2!7946 lt!461111)) (minValue!6244 (_2!7946 lt!461111)) #b00000000000000000000000000000000 (defaultEntry!6410 (_2!7946 lt!461111)))) key!909)))))

(assert (= (and d!126437 c!106187) b!1045101))

(assert (= (and d!126437 (not c!106187)) b!1045102))

(assert (= (and d!126437 (not res!696022)) b!1045103))

(declare-fun m!964919 () Bool)

(assert (=> d!126437 m!964919))

(declare-fun m!964921 () Bool)

(assert (=> b!1045101 m!964921))

(declare-fun m!964923 () Bool)

(assert (=> b!1045101 m!964923))

(assert (=> b!1045101 m!964923))

(declare-fun m!964925 () Bool)

(assert (=> b!1045101 m!964925))

(assert (=> b!1045103 m!964923))

(assert (=> b!1045103 m!964923))

(assert (=> b!1045103 m!964925))

(assert (=> b!1044902 d!126437))

(declare-fun b!1045112 () Bool)

(declare-fun e!592422 () (_ BitVec 32))

(declare-fun e!592421 () (_ BitVec 32))

(assert (=> b!1045112 (= e!592422 e!592421)))

(declare-fun c!106192 () Bool)

(assert (=> b!1045112 (= c!106192 (validKeyInArray!0 (select (arr!31671 lt!461107) #b00000000000000000000000000000000)))))

(declare-fun b!1045113 () Bool)

(declare-fun call!44475 () (_ BitVec 32))

(assert (=> b!1045113 (= e!592421 call!44475)))

(declare-fun b!1045114 () Bool)

(assert (=> b!1045114 (= e!592421 (bvadd #b00000000000000000000000000000001 call!44475))))

(declare-fun d!126439 () Bool)

(declare-fun lt!461294 () (_ BitVec 32))

(assert (=> d!126439 (and (bvsge lt!461294 #b00000000000000000000000000000000) (bvsle lt!461294 (bvsub (size!32207 lt!461107) #b00000000000000000000000000000000)))))

(assert (=> d!126439 (= lt!461294 e!592422)))

(declare-fun c!106193 () Bool)

(assert (=> d!126439 (= c!106193 (bvsge #b00000000000000000000000000000000 (size!32207 (_keys!11675 thiss!1427))))))

(assert (=> d!126439 (and (bvsle #b00000000000000000000000000000000 (size!32207 (_keys!11675 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!32207 (_keys!11675 thiss!1427)) (size!32207 lt!461107)))))

(assert (=> d!126439 (= (arrayCountValidKeys!0 lt!461107 #b00000000000000000000000000000000 (size!32207 (_keys!11675 thiss!1427))) lt!461294)))

(declare-fun b!1045115 () Bool)

(assert (=> b!1045115 (= e!592422 #b00000000000000000000000000000000)))

(declare-fun bm!44472 () Bool)

(assert (=> bm!44472 (= call!44475 (arrayCountValidKeys!0 lt!461107 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32207 (_keys!11675 thiss!1427))))))

(assert (= (and d!126439 c!106193) b!1045115))

(assert (= (and d!126439 (not c!106193)) b!1045112))

(assert (= (and b!1045112 c!106192) b!1045114))

(assert (= (and b!1045112 (not c!106192)) b!1045113))

(assert (= (or b!1045114 b!1045113) bm!44472))

(assert (=> b!1045112 m!964793))

(assert (=> b!1045112 m!964793))

(assert (=> b!1045112 m!964795))

(declare-fun m!964927 () Bool)

(assert (=> bm!44472 m!964927))

(assert (=> b!1044902 d!126439))

(declare-fun d!126441 () Bool)

(declare-fun e!592425 () Bool)

(assert (=> d!126441 e!592425))

(declare-fun res!696025 () Bool)

(assert (=> d!126441 (=> (not res!696025) (not e!592425))))

(assert (=> d!126441 (= res!696025 (bvslt (index!41739 lt!461105) (size!32207 (_keys!11675 thiss!1427))))))

(declare-fun lt!461297 () Unit!34118)

(declare-fun choose!121 (array!65854 (_ BitVec 32) (_ BitVec 64)) Unit!34118)

(assert (=> d!126441 (= lt!461297 (choose!121 (_keys!11675 thiss!1427) (index!41739 lt!461105) key!909))))

(assert (=> d!126441 (bvsge (index!41739 lt!461105) #b00000000000000000000000000000000)))

(assert (=> d!126441 (= (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11675 thiss!1427) (index!41739 lt!461105) key!909) lt!461297)))

(declare-fun b!1045118 () Bool)

(assert (=> b!1045118 (= e!592425 (not (arrayContainsKey!0 (array!65855 (store (arr!31671 (_keys!11675 thiss!1427)) (index!41739 lt!461105) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32207 (_keys!11675 thiss!1427))) key!909 #b00000000000000000000000000000000)))))

(assert (= (and d!126441 res!696025) b!1045118))

(declare-fun m!964929 () Bool)

(assert (=> d!126441 m!964929))

(assert (=> b!1045118 m!964637))

(declare-fun m!964931 () Bool)

(assert (=> b!1045118 m!964931))

(assert (=> b!1044902 d!126441))

(declare-fun b!1045119 () Bool)

(declare-fun e!592427 () (_ BitVec 32))

(declare-fun e!592426 () (_ BitVec 32))

(assert (=> b!1045119 (= e!592427 e!592426)))

(declare-fun c!106194 () Bool)

(assert (=> b!1045119 (= c!106194 (validKeyInArray!0 (select (arr!31671 (_keys!11675 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1045120 () Bool)

(declare-fun call!44476 () (_ BitVec 32))

(assert (=> b!1045120 (= e!592426 call!44476)))

(declare-fun b!1045121 () Bool)

(assert (=> b!1045121 (= e!592426 (bvadd #b00000000000000000000000000000001 call!44476))))

(declare-fun d!126443 () Bool)

(declare-fun lt!461298 () (_ BitVec 32))

(assert (=> d!126443 (and (bvsge lt!461298 #b00000000000000000000000000000000) (bvsle lt!461298 (bvsub (size!32207 (_keys!11675 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> d!126443 (= lt!461298 e!592427)))

(declare-fun c!106195 () Bool)

(assert (=> d!126443 (= c!106195 (bvsge #b00000000000000000000000000000000 (size!32207 (_keys!11675 thiss!1427))))))

(assert (=> d!126443 (and (bvsle #b00000000000000000000000000000000 (size!32207 (_keys!11675 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!32207 (_keys!11675 thiss!1427)) (size!32207 (_keys!11675 thiss!1427))))))

(assert (=> d!126443 (= (arrayCountValidKeys!0 (_keys!11675 thiss!1427) #b00000000000000000000000000000000 (size!32207 (_keys!11675 thiss!1427))) lt!461298)))

(declare-fun b!1045122 () Bool)

(assert (=> b!1045122 (= e!592427 #b00000000000000000000000000000000)))

(declare-fun bm!44473 () Bool)

(assert (=> bm!44473 (= call!44476 (arrayCountValidKeys!0 (_keys!11675 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32207 (_keys!11675 thiss!1427))))))

(assert (= (and d!126443 c!106195) b!1045122))

(assert (= (and d!126443 (not c!106195)) b!1045119))

(assert (= (and b!1045119 c!106194) b!1045121))

(assert (= (and b!1045119 (not c!106194)) b!1045120))

(assert (= (or b!1045121 b!1045120) bm!44473))

(assert (=> b!1045119 m!964849))

(assert (=> b!1045119 m!964849))

(assert (=> b!1045119 m!964851))

(declare-fun m!964933 () Bool)

(assert (=> bm!44473 m!964933))

(assert (=> b!1044902 d!126443))

(declare-fun b!1045133 () Bool)

(declare-fun e!592438 () Bool)

(declare-fun contains!6098 (List!22137 (_ BitVec 64)) Bool)

(assert (=> b!1045133 (= e!592438 (contains!6098 Nil!22134 (select (arr!31671 lt!461107) #b00000000000000000000000000000000)))))

(declare-fun d!126445 () Bool)

(declare-fun res!696034 () Bool)

(declare-fun e!592439 () Bool)

(assert (=> d!126445 (=> res!696034 e!592439)))

(assert (=> d!126445 (= res!696034 (bvsge #b00000000000000000000000000000000 (size!32207 lt!461107)))))

(assert (=> d!126445 (= (arrayNoDuplicates!0 lt!461107 #b00000000000000000000000000000000 Nil!22134) e!592439)))

(declare-fun b!1045134 () Bool)

(declare-fun e!592436 () Bool)

(assert (=> b!1045134 (= e!592439 e!592436)))

(declare-fun res!696032 () Bool)

(assert (=> b!1045134 (=> (not res!696032) (not e!592436))))

(assert (=> b!1045134 (= res!696032 (not e!592438))))

(declare-fun res!696033 () Bool)

(assert (=> b!1045134 (=> (not res!696033) (not e!592438))))

(assert (=> b!1045134 (= res!696033 (validKeyInArray!0 (select (arr!31671 lt!461107) #b00000000000000000000000000000000)))))

(declare-fun b!1045135 () Bool)

(declare-fun e!592437 () Bool)

(declare-fun call!44479 () Bool)

(assert (=> b!1045135 (= e!592437 call!44479)))

(declare-fun bm!44476 () Bool)

(declare-fun c!106198 () Bool)

(assert (=> bm!44476 (= call!44479 (arrayNoDuplicates!0 lt!461107 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!106198 (Cons!22133 (select (arr!31671 lt!461107) #b00000000000000000000000000000000) Nil!22134) Nil!22134)))))

(declare-fun b!1045136 () Bool)

(assert (=> b!1045136 (= e!592437 call!44479)))

(declare-fun b!1045137 () Bool)

(assert (=> b!1045137 (= e!592436 e!592437)))

(assert (=> b!1045137 (= c!106198 (validKeyInArray!0 (select (arr!31671 lt!461107) #b00000000000000000000000000000000)))))

(assert (= (and d!126445 (not res!696034)) b!1045134))

(assert (= (and b!1045134 res!696033) b!1045133))

(assert (= (and b!1045134 res!696032) b!1045137))

(assert (= (and b!1045137 c!106198) b!1045136))

(assert (= (and b!1045137 (not c!106198)) b!1045135))

(assert (= (or b!1045136 b!1045135) bm!44476))

(assert (=> b!1045133 m!964793))

(assert (=> b!1045133 m!964793))

(declare-fun m!964935 () Bool)

(assert (=> b!1045133 m!964935))

(assert (=> b!1045134 m!964793))

(assert (=> b!1045134 m!964793))

(assert (=> b!1045134 m!964795))

(assert (=> bm!44476 m!964793))

(declare-fun m!964937 () Bool)

(assert (=> bm!44476 m!964937))

(assert (=> b!1045137 m!964793))

(assert (=> b!1045137 m!964793))

(assert (=> b!1045137 m!964795))

(assert (=> b!1044902 d!126445))

(declare-fun d!126447 () Bool)

(declare-fun lt!461301 () ListLongMap!13897)

(assert (=> d!126447 (not (contains!6096 lt!461301 key!909))))

(declare-fun removeStrictlySorted!64 (List!22136 (_ BitVec 64)) List!22136)

(assert (=> d!126447 (= lt!461301 (ListLongMap!13898 (removeStrictlySorted!64 (toList!6964 (getCurrentListMap!3970 (_keys!11675 thiss!1427) (_values!6433 thiss!1427) (mask!30524 thiss!1427) (extraKeys!6138 thiss!1427) (zeroValue!6244 thiss!1427) (minValue!6244 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6410 thiss!1427))) key!909)))))

(assert (=> d!126447 (= (-!540 (getCurrentListMap!3970 (_keys!11675 thiss!1427) (_values!6433 thiss!1427) (mask!30524 thiss!1427) (extraKeys!6138 thiss!1427) (zeroValue!6244 thiss!1427) (minValue!6244 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6410 thiss!1427)) key!909) lt!461301)))

(declare-fun bs!30519 () Bool)

(assert (= bs!30519 d!126447))

(declare-fun m!964939 () Bool)

(assert (=> bs!30519 m!964939))

(declare-fun m!964941 () Bool)

(assert (=> bs!30519 m!964941))

(assert (=> b!1044902 d!126447))

(declare-fun d!126449 () Bool)

(declare-fun e!592442 () Bool)

(assert (=> d!126449 e!592442))

(declare-fun res!696037 () Bool)

(assert (=> d!126449 (=> (not res!696037) (not e!592442))))

(assert (=> d!126449 (= res!696037 (and (bvsge (index!41739 lt!461105) #b00000000000000000000000000000000) (bvslt (index!41739 lt!461105) (size!32207 (_keys!11675 thiss!1427)))))))

(declare-fun lt!461304 () Unit!34118)

(declare-fun choose!25 (array!65854 (_ BitVec 32) (_ BitVec 32)) Unit!34118)

(assert (=> d!126449 (= lt!461304 (choose!25 (_keys!11675 thiss!1427) (index!41739 lt!461105) (mask!30524 thiss!1427)))))

(assert (=> d!126449 (validMask!0 (mask!30524 thiss!1427))))

(assert (=> d!126449 (= (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11675 thiss!1427) (index!41739 lt!461105) (mask!30524 thiss!1427)) lt!461304)))

(declare-fun b!1045140 () Bool)

(assert (=> b!1045140 (= e!592442 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!65855 (store (arr!31671 (_keys!11675 thiss!1427)) (index!41739 lt!461105) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32207 (_keys!11675 thiss!1427))) (mask!30524 thiss!1427)))))

(assert (= (and d!126449 res!696037) b!1045140))

(declare-fun m!964943 () Bool)

(assert (=> d!126449 m!964943))

(assert (=> d!126449 m!964717))

(assert (=> b!1045140 m!964637))

(declare-fun m!964945 () Bool)

(assert (=> b!1045140 m!964945))

(assert (=> b!1044902 d!126449))

(declare-fun d!126451 () Bool)

(declare-fun res!696044 () Bool)

(declare-fun e!592445 () Bool)

(assert (=> d!126451 (=> (not res!696044) (not e!592445))))

(declare-fun simpleValid!450 (LongMapFixedSize!6036) Bool)

(assert (=> d!126451 (= res!696044 (simpleValid!450 thiss!1427))))

(assert (=> d!126451 (= (valid!2218 thiss!1427) e!592445)))

(declare-fun b!1045147 () Bool)

(declare-fun res!696045 () Bool)

(assert (=> b!1045147 (=> (not res!696045) (not e!592445))))

(assert (=> b!1045147 (= res!696045 (= (arrayCountValidKeys!0 (_keys!11675 thiss!1427) #b00000000000000000000000000000000 (size!32207 (_keys!11675 thiss!1427))) (_size!3073 thiss!1427)))))

(declare-fun b!1045148 () Bool)

(declare-fun res!696046 () Bool)

(assert (=> b!1045148 (=> (not res!696046) (not e!592445))))

(assert (=> b!1045148 (= res!696046 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11675 thiss!1427) (mask!30524 thiss!1427)))))

(declare-fun b!1045149 () Bool)

(assert (=> b!1045149 (= e!592445 (arrayNoDuplicates!0 (_keys!11675 thiss!1427) #b00000000000000000000000000000000 Nil!22134))))

(assert (= (and d!126451 res!696044) b!1045147))

(assert (= (and b!1045147 res!696045) b!1045148))

(assert (= (and b!1045148 res!696046) b!1045149))

(declare-fun m!964947 () Bool)

(assert (=> d!126451 m!964947))

(assert (=> b!1045147 m!964627))

(declare-fun m!964949 () Bool)

(assert (=> b!1045148 m!964949))

(declare-fun m!964951 () Bool)

(assert (=> b!1045149 m!964951))

(assert (=> start!91890 d!126451))

(declare-fun b!1045157 () Bool)

(declare-fun e!592450 () Bool)

(assert (=> b!1045157 (= e!592450 tp_is_empty!24849)))

(declare-fun mapIsEmpty!38915 () Bool)

(declare-fun mapRes!38915 () Bool)

(assert (=> mapIsEmpty!38915 mapRes!38915))

(declare-fun condMapEmpty!38915 () Bool)

(declare-fun mapDefault!38915 () ValueCell!11721)

(assert (=> mapNonEmpty!38909 (= condMapEmpty!38915 (= mapRest!38909 ((as const (Array (_ BitVec 32) ValueCell!11721)) mapDefault!38915)))))

(assert (=> mapNonEmpty!38909 (= tp!74641 (and e!592450 mapRes!38915))))

(declare-fun b!1045156 () Bool)

(declare-fun e!592451 () Bool)

(assert (=> b!1045156 (= e!592451 tp_is_empty!24849)))

(declare-fun mapNonEmpty!38915 () Bool)

(declare-fun tp!74650 () Bool)

(assert (=> mapNonEmpty!38915 (= mapRes!38915 (and tp!74650 e!592451))))

(declare-fun mapValue!38915 () ValueCell!11721)

(declare-fun mapRest!38915 () (Array (_ BitVec 32) ValueCell!11721))

(declare-fun mapKey!38915 () (_ BitVec 32))

(assert (=> mapNonEmpty!38915 (= mapRest!38909 (store mapRest!38915 mapKey!38915 mapValue!38915))))

(assert (= (and mapNonEmpty!38909 condMapEmpty!38915) mapIsEmpty!38915))

(assert (= (and mapNonEmpty!38909 (not condMapEmpty!38915)) mapNonEmpty!38915))

(assert (= (and mapNonEmpty!38915 ((_ is ValueCellFull!11721) mapValue!38915)) b!1045156))

(assert (= (and mapNonEmpty!38909 ((_ is ValueCellFull!11721) mapDefault!38915)) b!1045157))

(declare-fun m!964953 () Bool)

(assert (=> mapNonEmpty!38915 m!964953))

(declare-fun b_lambda!16309 () Bool)

(assert (= b_lambda!16303 (or (and b!1044899 b_free!21129) b_lambda!16309)))

(declare-fun b_lambda!16311 () Bool)

(assert (= b_lambda!16307 (or (and b!1044899 b_free!21129) b_lambda!16311)))

(declare-fun b_lambda!16313 () Bool)

(assert (= b_lambda!16305 (or (and b!1044899 b_free!21129) b_lambda!16313)))

(check-sat (not b!1045011) (not d!126433) (not b!1045119) (not b!1045133) (not b!1045094) (not b!1045047) (not b_lambda!16309) (not b!1045026) (not b!1045042) (not b!1045003) (not d!126425) (not b_lambda!16311) (not bm!44469) (not b!1045060) (not b!1045025) (not d!126413) (not b!1045069) (not d!126447) (not d!126437) (not bm!44452) (not b!1045070) (not b!1045015) (not bm!44464) (not b!1045039) (not b!1045004) (not d!126451) (not b!1045147) tp_is_empty!24849 (not bm!44463) (not b!1045149) (not d!126421) (not mapNonEmpty!38915) (not d!126441) (not b!1045082) (not b!1045118) (not b_lambda!16299) (not b!1045051) (not bm!44476) (not b!1045006) (not b!1045012) (not b!1045061) (not b!1045028) (not b!1045137) (not d!126427) (not bm!44458) (not b!1045057) (not b!1045013) (not b!1045036) (not b!1045063) (not b!1045134) (not bm!44465) (not b!1045048) (not b!1045079) (not b!1045148) (not b!1045103) (not b!1045112) (not bm!44472) (not d!126423) (not bm!44473) (not d!126449) (not b!1045049) (not b!1045072) (not b!1045101) (not b_lambda!16313) (not b!1045000) (not d!126429) (not bm!44466) (not b!1045031) (not b!1045092) (not b!1045140) (not bm!44451) (not bm!44450) (not b_next!21129) (not bm!44456) b_and!33761 (not b!1044951) (not b_lambda!16301) (not bm!44449) (not b!1045068) (not b!1045040) (not bm!44459) (not bm!44457))
(check-sat b_and!33761 (not b_next!21129))
