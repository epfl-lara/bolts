; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!91410 () Bool)

(assert start!91410)

(declare-fun b!1041601 () Bool)

(declare-fun b_free!21045 () Bool)

(declare-fun b_next!21045 () Bool)

(assert (=> b!1041601 (= b_free!21045 (not b_next!21045))))

(declare-fun tp!74350 () Bool)

(declare-fun b_and!33595 () Bool)

(assert (=> b!1041601 (= tp!74350 b_and!33595)))

(declare-fun b!1041599 () Bool)

(declare-fun e!589957 () Bool)

(declare-fun e!589960 () Bool)

(declare-fun mapRes!38745 () Bool)

(assert (=> b!1041599 (= e!589957 (and e!589960 mapRes!38745))))

(declare-fun condMapEmpty!38745 () Bool)

(declare-datatypes ((V!37893 0))(
  ( (V!37894 (val!12433 Int)) )
))
(declare-datatypes ((ValueCell!11679 0))(
  ( (ValueCellFull!11679 (v!15023 V!37893)) (EmptyCell!11679) )
))
(declare-datatypes ((array!65662 0))(
  ( (array!65663 (arr!31587 (Array (_ BitVec 32) (_ BitVec 64))) (size!32121 (_ BitVec 32))) )
))
(declare-datatypes ((array!65664 0))(
  ( (array!65665 (arr!31588 (Array (_ BitVec 32) ValueCell!11679)) (size!32122 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5952 0))(
  ( (LongMapFixedSize!5953 (defaultEntry!6358 Int) (mask!30388 (_ BitVec 32)) (extraKeys!6086 (_ BitVec 32)) (zeroValue!6192 V!37893) (minValue!6192 V!37893) (_size!3031 (_ BitVec 32)) (_keys!11593 array!65662) (_values!6381 array!65664) (_vacant!3031 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5952)

(declare-fun mapDefault!38745 () ValueCell!11679)

(assert (=> b!1041599 (= condMapEmpty!38745 (= (arr!31588 (_values!6381 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11679)) mapDefault!38745)))))

(declare-fun b!1041600 () Bool)

(declare-fun tp_is_empty!24765 () Bool)

(assert (=> b!1041600 (= e!589960 tp_is_empty!24765)))

(declare-fun e!589962 () Bool)

(declare-fun array_inv!24249 (array!65662) Bool)

(declare-fun array_inv!24250 (array!65664) Bool)

(assert (=> b!1041601 (= e!589962 (and tp!74350 tp_is_empty!24765 (array_inv!24249 (_keys!11593 thiss!1427)) (array_inv!24250 (_values!6381 thiss!1427)) e!589957))))

(declare-fun b!1041602 () Bool)

(declare-fun e!589956 () Bool)

(assert (=> b!1041602 (= e!589956 tp_is_empty!24765)))

(declare-fun mapIsEmpty!38745 () Bool)

(assert (=> mapIsEmpty!38745 mapRes!38745))

(declare-fun b!1041603 () Bool)

(declare-fun e!589961 () Bool)

(declare-fun e!589958 () Bool)

(assert (=> b!1041603 (= e!589961 e!589958)))

(declare-fun res!694282 () Bool)

(assert (=> b!1041603 (=> (not res!694282) (not e!589958))))

(declare-datatypes ((SeekEntryResult!9810 0))(
  ( (MissingZero!9810 (index!41610 (_ BitVec 32))) (Found!9810 (index!41611 (_ BitVec 32))) (Intermediate!9810 (undefined!10622 Bool) (index!41612 (_ BitVec 32)) (x!92991 (_ BitVec 32))) (Undefined!9810) (MissingVacant!9810 (index!41613 (_ BitVec 32))) )
))
(declare-fun lt!459100 () SeekEntryResult!9810)

(get-info :version)

(assert (=> b!1041603 (= res!694282 ((_ is Found!9810) lt!459100))))

(declare-fun key!909 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65662 (_ BitVec 32)) SeekEntryResult!9810)

(assert (=> b!1041603 (= lt!459100 (seekEntry!0 key!909 (_keys!11593 thiss!1427) (mask!30388 thiss!1427)))))

(declare-fun res!694284 () Bool)

(assert (=> start!91410 (=> (not res!694284) (not e!589961))))

(declare-fun valid!2188 (LongMapFixedSize!5952) Bool)

(assert (=> start!91410 (= res!694284 (valid!2188 thiss!1427))))

(assert (=> start!91410 e!589961))

(assert (=> start!91410 e!589962))

(assert (=> start!91410 true))

(declare-fun b!1041604 () Bool)

(declare-fun e!589955 () Bool)

(assert (=> b!1041604 (= e!589958 (not e!589955))))

(declare-fun res!694285 () Bool)

(assert (=> b!1041604 (=> res!694285 e!589955)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1041604 (= res!694285 (not (validMask!0 (mask!30388 thiss!1427))))))

(declare-fun lt!459095 () array!65662)

(declare-fun arrayContainsKey!0 (array!65662 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1041604 (not (arrayContainsKey!0 lt!459095 key!909 #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!34036 0))(
  ( (Unit!34037) )
))
(declare-fun lt!459099 () Unit!34036)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!65662 (_ BitVec 32) (_ BitVec 64)) Unit!34036)

(assert (=> b!1041604 (= lt!459099 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11593 thiss!1427) (index!41611 lt!459100) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65662 (_ BitVec 32)) Bool)

(assert (=> b!1041604 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!459095 (mask!30388 thiss!1427))))

(declare-fun lt!459098 () Unit!34036)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!65662 (_ BitVec 32) (_ BitVec 32)) Unit!34036)

(assert (=> b!1041604 (= lt!459098 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11593 thiss!1427) (index!41611 lt!459100) (mask!30388 thiss!1427)))))

(declare-datatypes ((List!22094 0))(
  ( (Nil!22091) (Cons!22090 (h!23296 (_ BitVec 64)) (t!31315 List!22094)) )
))
(declare-fun arrayNoDuplicates!0 (array!65662 (_ BitVec 32) List!22094) Bool)

(assert (=> b!1041604 (arrayNoDuplicates!0 lt!459095 #b00000000000000000000000000000000 Nil!22091)))

(declare-fun lt!459097 () Unit!34036)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!65662 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22094) Unit!34036)

(assert (=> b!1041604 (= lt!459097 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11593 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41611 lt!459100) #b00000000000000000000000000000000 Nil!22091))))

(declare-fun arrayCountValidKeys!0 (array!65662 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1041604 (= (arrayCountValidKeys!0 lt!459095 #b00000000000000000000000000000000 (size!32121 (_keys!11593 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11593 thiss!1427) #b00000000000000000000000000000000 (size!32121 (_keys!11593 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1041604 (= lt!459095 (array!65663 (store (arr!31587 (_keys!11593 thiss!1427)) (index!41611 lt!459100) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32121 (_keys!11593 thiss!1427))))))

(declare-fun lt!459096 () Unit!34036)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65662 (_ BitVec 32) (_ BitVec 64)) Unit!34036)

(assert (=> b!1041604 (= lt!459096 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11593 thiss!1427) (index!41611 lt!459100) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapNonEmpty!38745 () Bool)

(declare-fun tp!74351 () Bool)

(assert (=> mapNonEmpty!38745 (= mapRes!38745 (and tp!74351 e!589956))))

(declare-fun mapKey!38745 () (_ BitVec 32))

(declare-fun mapValue!38745 () ValueCell!11679)

(declare-fun mapRest!38745 () (Array (_ BitVec 32) ValueCell!11679))

(assert (=> mapNonEmpty!38745 (= (arr!31588 (_values!6381 thiss!1427)) (store mapRest!38745 mapKey!38745 mapValue!38745))))

(declare-fun b!1041605 () Bool)

(declare-fun res!694283 () Bool)

(assert (=> b!1041605 (=> (not res!694283) (not e!589961))))

(assert (=> b!1041605 (= res!694283 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1041606 () Bool)

(assert (=> b!1041606 (= e!589955 (or (not (= (size!32122 (_values!6381 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30388 thiss!1427)))) (not (= (size!32121 (_keys!11593 thiss!1427)) (size!32122 (_values!6381 thiss!1427)))) (bvslt (mask!30388 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!6086 thiss!1427) #b00000000000000000000000000000000)))))

(assert (= (and start!91410 res!694284) b!1041605))

(assert (= (and b!1041605 res!694283) b!1041603))

(assert (= (and b!1041603 res!694282) b!1041604))

(assert (= (and b!1041604 (not res!694285)) b!1041606))

(assert (= (and b!1041599 condMapEmpty!38745) mapIsEmpty!38745))

(assert (= (and b!1041599 (not condMapEmpty!38745)) mapNonEmpty!38745))

(assert (= (and mapNonEmpty!38745 ((_ is ValueCellFull!11679) mapValue!38745)) b!1041602))

(assert (= (and b!1041599 ((_ is ValueCellFull!11679) mapDefault!38745)) b!1041600))

(assert (= b!1041601 b!1041599))

(assert (= start!91410 b!1041601))

(declare-fun m!961153 () Bool)

(assert (=> mapNonEmpty!38745 m!961153))

(declare-fun m!961155 () Bool)

(assert (=> b!1041604 m!961155))

(declare-fun m!961157 () Bool)

(assert (=> b!1041604 m!961157))

(declare-fun m!961159 () Bool)

(assert (=> b!1041604 m!961159))

(declare-fun m!961161 () Bool)

(assert (=> b!1041604 m!961161))

(declare-fun m!961163 () Bool)

(assert (=> b!1041604 m!961163))

(declare-fun m!961165 () Bool)

(assert (=> b!1041604 m!961165))

(declare-fun m!961167 () Bool)

(assert (=> b!1041604 m!961167))

(declare-fun m!961169 () Bool)

(assert (=> b!1041604 m!961169))

(declare-fun m!961171 () Bool)

(assert (=> b!1041604 m!961171))

(declare-fun m!961173 () Bool)

(assert (=> b!1041604 m!961173))

(declare-fun m!961175 () Bool)

(assert (=> b!1041604 m!961175))

(declare-fun m!961177 () Bool)

(assert (=> b!1041601 m!961177))

(declare-fun m!961179 () Bool)

(assert (=> b!1041601 m!961179))

(declare-fun m!961181 () Bool)

(assert (=> start!91410 m!961181))

(declare-fun m!961183 () Bool)

(assert (=> b!1041603 m!961183))

(check-sat (not b!1041601) tp_is_empty!24765 (not b_next!21045) (not start!91410) (not mapNonEmpty!38745) b_and!33595 (not b!1041603) (not b!1041604))
(check-sat b_and!33595 (not b_next!21045))
(get-model)

(declare-fun d!125871 () Bool)

(assert (=> d!125871 (= (array_inv!24249 (_keys!11593 thiss!1427)) (bvsge (size!32121 (_keys!11593 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1041601 d!125871))

(declare-fun d!125873 () Bool)

(assert (=> d!125873 (= (array_inv!24250 (_values!6381 thiss!1427)) (bvsge (size!32122 (_values!6381 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1041601 d!125873))

(declare-fun b!1041643 () Bool)

(declare-fun c!105639 () Bool)

(declare-fun lt!459128 () (_ BitVec 64))

(assert (=> b!1041643 (= c!105639 (= lt!459128 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!589995 () SeekEntryResult!9810)

(declare-fun e!589993 () SeekEntryResult!9810)

(assert (=> b!1041643 (= e!589995 e!589993)))

(declare-fun b!1041644 () Bool)

(declare-fun e!589994 () SeekEntryResult!9810)

(assert (=> b!1041644 (= e!589994 e!589995)))

(declare-fun lt!459130 () SeekEntryResult!9810)

(assert (=> b!1041644 (= lt!459128 (select (arr!31587 (_keys!11593 thiss!1427)) (index!41612 lt!459130)))))

(declare-fun c!105641 () Bool)

(assert (=> b!1041644 (= c!105641 (= lt!459128 key!909))))

(declare-fun d!125875 () Bool)

(declare-fun lt!459127 () SeekEntryResult!9810)

(assert (=> d!125875 (and (or ((_ is MissingVacant!9810) lt!459127) (not ((_ is Found!9810) lt!459127)) (and (bvsge (index!41611 lt!459127) #b00000000000000000000000000000000) (bvslt (index!41611 lt!459127) (size!32121 (_keys!11593 thiss!1427))))) (not ((_ is MissingVacant!9810) lt!459127)) (or (not ((_ is Found!9810) lt!459127)) (= (select (arr!31587 (_keys!11593 thiss!1427)) (index!41611 lt!459127)) key!909)))))

(assert (=> d!125875 (= lt!459127 e!589994)))

(declare-fun c!105640 () Bool)

(assert (=> d!125875 (= c!105640 (and ((_ is Intermediate!9810) lt!459130) (undefined!10622 lt!459130)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65662 (_ BitVec 32)) SeekEntryResult!9810)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!125875 (= lt!459130 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!909 (mask!30388 thiss!1427)) key!909 (_keys!11593 thiss!1427) (mask!30388 thiss!1427)))))

(assert (=> d!125875 (validMask!0 (mask!30388 thiss!1427))))

(assert (=> d!125875 (= (seekEntry!0 key!909 (_keys!11593 thiss!1427) (mask!30388 thiss!1427)) lt!459127)))

(declare-fun b!1041645 () Bool)

(assert (=> b!1041645 (= e!589995 (Found!9810 (index!41612 lt!459130)))))

(declare-fun b!1041646 () Bool)

(assert (=> b!1041646 (= e!589993 (MissingZero!9810 (index!41612 lt!459130)))))

(declare-fun b!1041647 () Bool)

(assert (=> b!1041647 (= e!589994 Undefined!9810)))

(declare-fun b!1041648 () Bool)

(declare-fun lt!459129 () SeekEntryResult!9810)

(assert (=> b!1041648 (= e!589993 (ite ((_ is MissingVacant!9810) lt!459129) (MissingZero!9810 (index!41613 lt!459129)) lt!459129))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65662 (_ BitVec 32)) SeekEntryResult!9810)

(assert (=> b!1041648 (= lt!459129 (seekKeyOrZeroReturnVacant!0 (x!92991 lt!459130) (index!41612 lt!459130) (index!41612 lt!459130) key!909 (_keys!11593 thiss!1427) (mask!30388 thiss!1427)))))

(assert (= (and d!125875 c!105640) b!1041647))

(assert (= (and d!125875 (not c!105640)) b!1041644))

(assert (= (and b!1041644 c!105641) b!1041645))

(assert (= (and b!1041644 (not c!105641)) b!1041643))

(assert (= (and b!1041643 c!105639) b!1041646))

(assert (= (and b!1041643 (not c!105639)) b!1041648))

(declare-fun m!961217 () Bool)

(assert (=> b!1041644 m!961217))

(declare-fun m!961219 () Bool)

(assert (=> d!125875 m!961219))

(declare-fun m!961221 () Bool)

(assert (=> d!125875 m!961221))

(assert (=> d!125875 m!961221))

(declare-fun m!961223 () Bool)

(assert (=> d!125875 m!961223))

(assert (=> d!125875 m!961159))

(declare-fun m!961225 () Bool)

(assert (=> b!1041648 m!961225))

(assert (=> b!1041603 d!125875))

(declare-fun d!125877 () Bool)

(declare-fun res!694304 () Bool)

(declare-fun e!589998 () Bool)

(assert (=> d!125877 (=> (not res!694304) (not e!589998))))

(declare-fun simpleValid!438 (LongMapFixedSize!5952) Bool)

(assert (=> d!125877 (= res!694304 (simpleValid!438 thiss!1427))))

(assert (=> d!125877 (= (valid!2188 thiss!1427) e!589998)))

(declare-fun b!1041655 () Bool)

(declare-fun res!694305 () Bool)

(assert (=> b!1041655 (=> (not res!694305) (not e!589998))))

(assert (=> b!1041655 (= res!694305 (= (arrayCountValidKeys!0 (_keys!11593 thiss!1427) #b00000000000000000000000000000000 (size!32121 (_keys!11593 thiss!1427))) (_size!3031 thiss!1427)))))

(declare-fun b!1041656 () Bool)

(declare-fun res!694306 () Bool)

(assert (=> b!1041656 (=> (not res!694306) (not e!589998))))

(assert (=> b!1041656 (= res!694306 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11593 thiss!1427) (mask!30388 thiss!1427)))))

(declare-fun b!1041657 () Bool)

(assert (=> b!1041657 (= e!589998 (arrayNoDuplicates!0 (_keys!11593 thiss!1427) #b00000000000000000000000000000000 Nil!22091))))

(assert (= (and d!125877 res!694304) b!1041655))

(assert (= (and b!1041655 res!694305) b!1041656))

(assert (= (and b!1041656 res!694306) b!1041657))

(declare-fun m!961227 () Bool)

(assert (=> d!125877 m!961227))

(assert (=> b!1041655 m!961165))

(declare-fun m!961229 () Bool)

(assert (=> b!1041656 m!961229))

(declare-fun m!961231 () Bool)

(assert (=> b!1041657 m!961231))

(assert (=> start!91410 d!125877))

(declare-fun d!125879 () Bool)

(declare-fun e!590001 () Bool)

(assert (=> d!125879 e!590001))

(declare-fun res!694309 () Bool)

(assert (=> d!125879 (=> (not res!694309) (not e!590001))))

(assert (=> d!125879 (= res!694309 (and (bvsge (index!41611 lt!459100) #b00000000000000000000000000000000) (bvslt (index!41611 lt!459100) (size!32121 (_keys!11593 thiss!1427)))))))

(declare-fun lt!459133 () Unit!34036)

(declare-fun choose!53 (array!65662 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22094) Unit!34036)

(assert (=> d!125879 (= lt!459133 (choose!53 (_keys!11593 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41611 lt!459100) #b00000000000000000000000000000000 Nil!22091))))

(assert (=> d!125879 (bvslt (size!32121 (_keys!11593 thiss!1427)) #b01111111111111111111111111111111)))

(assert (=> d!125879 (= (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11593 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41611 lt!459100) #b00000000000000000000000000000000 Nil!22091) lt!459133)))

(declare-fun b!1041660 () Bool)

(assert (=> b!1041660 (= e!590001 (arrayNoDuplicates!0 (array!65663 (store (arr!31587 (_keys!11593 thiss!1427)) (index!41611 lt!459100) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32121 (_keys!11593 thiss!1427))) #b00000000000000000000000000000000 Nil!22091))))

(assert (= (and d!125879 res!694309) b!1041660))

(declare-fun m!961233 () Bool)

(assert (=> d!125879 m!961233))

(assert (=> b!1041660 m!961175))

(declare-fun m!961235 () Bool)

(assert (=> b!1041660 m!961235))

(assert (=> b!1041604 d!125879))

(declare-fun d!125881 () Bool)

(declare-fun e!590004 () Bool)

(assert (=> d!125881 e!590004))

(declare-fun res!694312 () Bool)

(assert (=> d!125881 (=> (not res!694312) (not e!590004))))

(assert (=> d!125881 (= res!694312 (bvslt (index!41611 lt!459100) (size!32121 (_keys!11593 thiss!1427))))))

(declare-fun lt!459136 () Unit!34036)

(declare-fun choose!121 (array!65662 (_ BitVec 32) (_ BitVec 64)) Unit!34036)

(assert (=> d!125881 (= lt!459136 (choose!121 (_keys!11593 thiss!1427) (index!41611 lt!459100) key!909))))

(assert (=> d!125881 (bvsge (index!41611 lt!459100) #b00000000000000000000000000000000)))

(assert (=> d!125881 (= (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11593 thiss!1427) (index!41611 lt!459100) key!909) lt!459136)))

(declare-fun b!1041663 () Bool)

(assert (=> b!1041663 (= e!590004 (not (arrayContainsKey!0 (array!65663 (store (arr!31587 (_keys!11593 thiss!1427)) (index!41611 lt!459100) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32121 (_keys!11593 thiss!1427))) key!909 #b00000000000000000000000000000000)))))

(assert (= (and d!125881 res!694312) b!1041663))

(declare-fun m!961237 () Bool)

(assert (=> d!125881 m!961237))

(assert (=> b!1041663 m!961175))

(declare-fun m!961239 () Bool)

(assert (=> b!1041663 m!961239))

(assert (=> b!1041604 d!125881))

(declare-fun b!1041674 () Bool)

(declare-fun e!590014 () Bool)

(declare-fun e!590016 () Bool)

(assert (=> b!1041674 (= e!590014 e!590016)))

(declare-fun c!105644 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1041674 (= c!105644 (validKeyInArray!0 (select (arr!31587 lt!459095) #b00000000000000000000000000000000)))))

(declare-fun bm!44126 () Bool)

(declare-fun call!44129 () Bool)

(assert (=> bm!44126 (= call!44129 (arrayNoDuplicates!0 lt!459095 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!105644 (Cons!22090 (select (arr!31587 lt!459095) #b00000000000000000000000000000000) Nil!22091) Nil!22091)))))

(declare-fun b!1041675 () Bool)

(declare-fun e!590013 () Bool)

(declare-fun contains!6078 (List!22094 (_ BitVec 64)) Bool)

(assert (=> b!1041675 (= e!590013 (contains!6078 Nil!22091 (select (arr!31587 lt!459095) #b00000000000000000000000000000000)))))

(declare-fun d!125883 () Bool)

(declare-fun res!694320 () Bool)

(declare-fun e!590015 () Bool)

(assert (=> d!125883 (=> res!694320 e!590015)))

(assert (=> d!125883 (= res!694320 (bvsge #b00000000000000000000000000000000 (size!32121 lt!459095)))))

(assert (=> d!125883 (= (arrayNoDuplicates!0 lt!459095 #b00000000000000000000000000000000 Nil!22091) e!590015)))

(declare-fun b!1041676 () Bool)

(assert (=> b!1041676 (= e!590016 call!44129)))

(declare-fun b!1041677 () Bool)

(assert (=> b!1041677 (= e!590016 call!44129)))

(declare-fun b!1041678 () Bool)

(assert (=> b!1041678 (= e!590015 e!590014)))

(declare-fun res!694319 () Bool)

(assert (=> b!1041678 (=> (not res!694319) (not e!590014))))

(assert (=> b!1041678 (= res!694319 (not e!590013))))

(declare-fun res!694321 () Bool)

(assert (=> b!1041678 (=> (not res!694321) (not e!590013))))

(assert (=> b!1041678 (= res!694321 (validKeyInArray!0 (select (arr!31587 lt!459095) #b00000000000000000000000000000000)))))

(assert (= (and d!125883 (not res!694320)) b!1041678))

(assert (= (and b!1041678 res!694321) b!1041675))

(assert (= (and b!1041678 res!694319) b!1041674))

(assert (= (and b!1041674 c!105644) b!1041676))

(assert (= (and b!1041674 (not c!105644)) b!1041677))

(assert (= (or b!1041676 b!1041677) bm!44126))

(declare-fun m!961241 () Bool)

(assert (=> b!1041674 m!961241))

(assert (=> b!1041674 m!961241))

(declare-fun m!961243 () Bool)

(assert (=> b!1041674 m!961243))

(assert (=> bm!44126 m!961241))

(declare-fun m!961245 () Bool)

(assert (=> bm!44126 m!961245))

(assert (=> b!1041675 m!961241))

(assert (=> b!1041675 m!961241))

(declare-fun m!961247 () Bool)

(assert (=> b!1041675 m!961247))

(assert (=> b!1041678 m!961241))

(assert (=> b!1041678 m!961241))

(assert (=> b!1041678 m!961243))

(assert (=> b!1041604 d!125883))

(declare-fun bm!44129 () Bool)

(declare-fun call!44132 () (_ BitVec 32))

(assert (=> bm!44129 (= call!44132 (arrayCountValidKeys!0 lt!459095 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32121 (_keys!11593 thiss!1427))))))

(declare-fun d!125885 () Bool)

(declare-fun lt!459139 () (_ BitVec 32))

(assert (=> d!125885 (and (bvsge lt!459139 #b00000000000000000000000000000000) (bvsle lt!459139 (bvsub (size!32121 lt!459095) #b00000000000000000000000000000000)))))

(declare-fun e!590021 () (_ BitVec 32))

(assert (=> d!125885 (= lt!459139 e!590021)))

(declare-fun c!105649 () Bool)

(assert (=> d!125885 (= c!105649 (bvsge #b00000000000000000000000000000000 (size!32121 (_keys!11593 thiss!1427))))))

(assert (=> d!125885 (and (bvsle #b00000000000000000000000000000000 (size!32121 (_keys!11593 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!32121 (_keys!11593 thiss!1427)) (size!32121 lt!459095)))))

(assert (=> d!125885 (= (arrayCountValidKeys!0 lt!459095 #b00000000000000000000000000000000 (size!32121 (_keys!11593 thiss!1427))) lt!459139)))

(declare-fun b!1041687 () Bool)

(declare-fun e!590022 () (_ BitVec 32))

(assert (=> b!1041687 (= e!590022 call!44132)))

(declare-fun b!1041688 () Bool)

(assert (=> b!1041688 (= e!590021 #b00000000000000000000000000000000)))

(declare-fun b!1041689 () Bool)

(assert (=> b!1041689 (= e!590022 (bvadd #b00000000000000000000000000000001 call!44132))))

(declare-fun b!1041690 () Bool)

(assert (=> b!1041690 (= e!590021 e!590022)))

(declare-fun c!105650 () Bool)

(assert (=> b!1041690 (= c!105650 (validKeyInArray!0 (select (arr!31587 lt!459095) #b00000000000000000000000000000000)))))

(assert (= (and d!125885 c!105649) b!1041688))

(assert (= (and d!125885 (not c!105649)) b!1041690))

(assert (= (and b!1041690 c!105650) b!1041689))

(assert (= (and b!1041690 (not c!105650)) b!1041687))

(assert (= (or b!1041689 b!1041687) bm!44129))

(declare-fun m!961249 () Bool)

(assert (=> bm!44129 m!961249))

(assert (=> b!1041690 m!961241))

(assert (=> b!1041690 m!961241))

(assert (=> b!1041690 m!961243))

(assert (=> b!1041604 d!125885))

(declare-fun d!125887 () Bool)

(assert (=> d!125887 (= (validMask!0 (mask!30388 thiss!1427)) (and (or (= (mask!30388 thiss!1427) #b00000000000000000000000000000111) (= (mask!30388 thiss!1427) #b00000000000000000000000000001111) (= (mask!30388 thiss!1427) #b00000000000000000000000000011111) (= (mask!30388 thiss!1427) #b00000000000000000000000000111111) (= (mask!30388 thiss!1427) #b00000000000000000000000001111111) (= (mask!30388 thiss!1427) #b00000000000000000000000011111111) (= (mask!30388 thiss!1427) #b00000000000000000000000111111111) (= (mask!30388 thiss!1427) #b00000000000000000000001111111111) (= (mask!30388 thiss!1427) #b00000000000000000000011111111111) (= (mask!30388 thiss!1427) #b00000000000000000000111111111111) (= (mask!30388 thiss!1427) #b00000000000000000001111111111111) (= (mask!30388 thiss!1427) #b00000000000000000011111111111111) (= (mask!30388 thiss!1427) #b00000000000000000111111111111111) (= (mask!30388 thiss!1427) #b00000000000000001111111111111111) (= (mask!30388 thiss!1427) #b00000000000000011111111111111111) (= (mask!30388 thiss!1427) #b00000000000000111111111111111111) (= (mask!30388 thiss!1427) #b00000000000001111111111111111111) (= (mask!30388 thiss!1427) #b00000000000011111111111111111111) (= (mask!30388 thiss!1427) #b00000000000111111111111111111111) (= (mask!30388 thiss!1427) #b00000000001111111111111111111111) (= (mask!30388 thiss!1427) #b00000000011111111111111111111111) (= (mask!30388 thiss!1427) #b00000000111111111111111111111111) (= (mask!30388 thiss!1427) #b00000001111111111111111111111111) (= (mask!30388 thiss!1427) #b00000011111111111111111111111111) (= (mask!30388 thiss!1427) #b00000111111111111111111111111111) (= (mask!30388 thiss!1427) #b00001111111111111111111111111111) (= (mask!30388 thiss!1427) #b00011111111111111111111111111111) (= (mask!30388 thiss!1427) #b00111111111111111111111111111111)) (bvsle (mask!30388 thiss!1427) #b00111111111111111111111111111111)))))

(assert (=> b!1041604 d!125887))

(declare-fun b!1041699 () Bool)

(declare-fun e!590029 () Bool)

(declare-fun e!590030 () Bool)

(assert (=> b!1041699 (= e!590029 e!590030)))

(declare-fun lt!459148 () (_ BitVec 64))

(assert (=> b!1041699 (= lt!459148 (select (arr!31587 lt!459095) #b00000000000000000000000000000000))))

(declare-fun lt!459147 () Unit!34036)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!65662 (_ BitVec 64) (_ BitVec 32)) Unit!34036)

(assert (=> b!1041699 (= lt!459147 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!459095 lt!459148 #b00000000000000000000000000000000))))

(assert (=> b!1041699 (arrayContainsKey!0 lt!459095 lt!459148 #b00000000000000000000000000000000)))

(declare-fun lt!459146 () Unit!34036)

(assert (=> b!1041699 (= lt!459146 lt!459147)))

(declare-fun res!694327 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!65662 (_ BitVec 32)) SeekEntryResult!9810)

(assert (=> b!1041699 (= res!694327 (= (seekEntryOrOpen!0 (select (arr!31587 lt!459095) #b00000000000000000000000000000000) lt!459095 (mask!30388 thiss!1427)) (Found!9810 #b00000000000000000000000000000000)))))

(assert (=> b!1041699 (=> (not res!694327) (not e!590030))))

(declare-fun b!1041700 () Bool)

(declare-fun call!44135 () Bool)

(assert (=> b!1041700 (= e!590029 call!44135)))

(declare-fun b!1041701 () Bool)

(assert (=> b!1041701 (= e!590030 call!44135)))

(declare-fun bm!44132 () Bool)

(assert (=> bm!44132 (= call!44135 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!459095 (mask!30388 thiss!1427)))))

(declare-fun d!125889 () Bool)

(declare-fun res!694326 () Bool)

(declare-fun e!590031 () Bool)

(assert (=> d!125889 (=> res!694326 e!590031)))

(assert (=> d!125889 (= res!694326 (bvsge #b00000000000000000000000000000000 (size!32121 lt!459095)))))

(assert (=> d!125889 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!459095 (mask!30388 thiss!1427)) e!590031)))

(declare-fun b!1041702 () Bool)

(assert (=> b!1041702 (= e!590031 e!590029)))

(declare-fun c!105653 () Bool)

(assert (=> b!1041702 (= c!105653 (validKeyInArray!0 (select (arr!31587 lt!459095) #b00000000000000000000000000000000)))))

(assert (= (and d!125889 (not res!694326)) b!1041702))

(assert (= (and b!1041702 c!105653) b!1041699))

(assert (= (and b!1041702 (not c!105653)) b!1041700))

(assert (= (and b!1041699 res!694327) b!1041701))

(assert (= (or b!1041701 b!1041700) bm!44132))

(assert (=> b!1041699 m!961241))

(declare-fun m!961251 () Bool)

(assert (=> b!1041699 m!961251))

(declare-fun m!961253 () Bool)

(assert (=> b!1041699 m!961253))

(assert (=> b!1041699 m!961241))

(declare-fun m!961255 () Bool)

(assert (=> b!1041699 m!961255))

(declare-fun m!961257 () Bool)

(assert (=> bm!44132 m!961257))

(assert (=> b!1041702 m!961241))

(assert (=> b!1041702 m!961241))

(assert (=> b!1041702 m!961243))

(assert (=> b!1041604 d!125889))

(declare-fun d!125891 () Bool)

(declare-fun res!694332 () Bool)

(declare-fun e!590036 () Bool)

(assert (=> d!125891 (=> res!694332 e!590036)))

(assert (=> d!125891 (= res!694332 (= (select (arr!31587 lt!459095) #b00000000000000000000000000000000) key!909))))

(assert (=> d!125891 (= (arrayContainsKey!0 lt!459095 key!909 #b00000000000000000000000000000000) e!590036)))

(declare-fun b!1041707 () Bool)

(declare-fun e!590037 () Bool)

(assert (=> b!1041707 (= e!590036 e!590037)))

(declare-fun res!694333 () Bool)

(assert (=> b!1041707 (=> (not res!694333) (not e!590037))))

(assert (=> b!1041707 (= res!694333 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32121 lt!459095)))))

(declare-fun b!1041708 () Bool)

(assert (=> b!1041708 (= e!590037 (arrayContainsKey!0 lt!459095 key!909 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!125891 (not res!694332)) b!1041707))

(assert (= (and b!1041707 res!694333) b!1041708))

(assert (=> d!125891 m!961241))

(declare-fun m!961259 () Bool)

(assert (=> b!1041708 m!961259))

(assert (=> b!1041604 d!125891))

(declare-fun bm!44133 () Bool)

(declare-fun call!44136 () (_ BitVec 32))

(assert (=> bm!44133 (= call!44136 (arrayCountValidKeys!0 (_keys!11593 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32121 (_keys!11593 thiss!1427))))))

(declare-fun d!125893 () Bool)

(declare-fun lt!459149 () (_ BitVec 32))

(assert (=> d!125893 (and (bvsge lt!459149 #b00000000000000000000000000000000) (bvsle lt!459149 (bvsub (size!32121 (_keys!11593 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun e!590038 () (_ BitVec 32))

(assert (=> d!125893 (= lt!459149 e!590038)))

(declare-fun c!105654 () Bool)

(assert (=> d!125893 (= c!105654 (bvsge #b00000000000000000000000000000000 (size!32121 (_keys!11593 thiss!1427))))))

(assert (=> d!125893 (and (bvsle #b00000000000000000000000000000000 (size!32121 (_keys!11593 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!32121 (_keys!11593 thiss!1427)) (size!32121 (_keys!11593 thiss!1427))))))

(assert (=> d!125893 (= (arrayCountValidKeys!0 (_keys!11593 thiss!1427) #b00000000000000000000000000000000 (size!32121 (_keys!11593 thiss!1427))) lt!459149)))

(declare-fun b!1041709 () Bool)

(declare-fun e!590039 () (_ BitVec 32))

(assert (=> b!1041709 (= e!590039 call!44136)))

(declare-fun b!1041710 () Bool)

(assert (=> b!1041710 (= e!590038 #b00000000000000000000000000000000)))

(declare-fun b!1041711 () Bool)

(assert (=> b!1041711 (= e!590039 (bvadd #b00000000000000000000000000000001 call!44136))))

(declare-fun b!1041712 () Bool)

(assert (=> b!1041712 (= e!590038 e!590039)))

(declare-fun c!105655 () Bool)

(assert (=> b!1041712 (= c!105655 (validKeyInArray!0 (select (arr!31587 (_keys!11593 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (= (and d!125893 c!105654) b!1041710))

(assert (= (and d!125893 (not c!105654)) b!1041712))

(assert (= (and b!1041712 c!105655) b!1041711))

(assert (= (and b!1041712 (not c!105655)) b!1041709))

(assert (= (or b!1041711 b!1041709) bm!44133))

(declare-fun m!961261 () Bool)

(assert (=> bm!44133 m!961261))

(declare-fun m!961263 () Bool)

(assert (=> b!1041712 m!961263))

(assert (=> b!1041712 m!961263))

(declare-fun m!961265 () Bool)

(assert (=> b!1041712 m!961265))

(assert (=> b!1041604 d!125893))

(declare-fun d!125895 () Bool)

(declare-fun e!590042 () Bool)

(assert (=> d!125895 e!590042))

(declare-fun res!694336 () Bool)

(assert (=> d!125895 (=> (not res!694336) (not e!590042))))

(assert (=> d!125895 (= res!694336 (and (bvsge (index!41611 lt!459100) #b00000000000000000000000000000000) (bvslt (index!41611 lt!459100) (size!32121 (_keys!11593 thiss!1427)))))))

(declare-fun lt!459152 () Unit!34036)

(declare-fun choose!25 (array!65662 (_ BitVec 32) (_ BitVec 32)) Unit!34036)

(assert (=> d!125895 (= lt!459152 (choose!25 (_keys!11593 thiss!1427) (index!41611 lt!459100) (mask!30388 thiss!1427)))))

(assert (=> d!125895 (validMask!0 (mask!30388 thiss!1427))))

(assert (=> d!125895 (= (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11593 thiss!1427) (index!41611 lt!459100) (mask!30388 thiss!1427)) lt!459152)))

(declare-fun b!1041715 () Bool)

(assert (=> b!1041715 (= e!590042 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!65663 (store (arr!31587 (_keys!11593 thiss!1427)) (index!41611 lt!459100) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32121 (_keys!11593 thiss!1427))) (mask!30388 thiss!1427)))))

(assert (= (and d!125895 res!694336) b!1041715))

(declare-fun m!961267 () Bool)

(assert (=> d!125895 m!961267))

(assert (=> d!125895 m!961159))

(assert (=> b!1041715 m!961175))

(declare-fun m!961269 () Bool)

(assert (=> b!1041715 m!961269))

(assert (=> b!1041604 d!125895))

(declare-fun d!125897 () Bool)

(declare-fun e!590047 () Bool)

(assert (=> d!125897 e!590047))

(declare-fun res!694346 () Bool)

(assert (=> d!125897 (=> (not res!694346) (not e!590047))))

(assert (=> d!125897 (= res!694346 (and (bvsge (index!41611 lt!459100) #b00000000000000000000000000000000) (bvslt (index!41611 lt!459100) (size!32121 (_keys!11593 thiss!1427)))))))

(declare-fun lt!459155 () Unit!34036)

(declare-fun choose!82 (array!65662 (_ BitVec 32) (_ BitVec 64)) Unit!34036)

(assert (=> d!125897 (= lt!459155 (choose!82 (_keys!11593 thiss!1427) (index!41611 lt!459100) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!590048 () Bool)

(assert (=> d!125897 e!590048))

(declare-fun res!694347 () Bool)

(assert (=> d!125897 (=> (not res!694347) (not e!590048))))

(assert (=> d!125897 (= res!694347 (and (bvsge (index!41611 lt!459100) #b00000000000000000000000000000000) (bvslt (index!41611 lt!459100) (size!32121 (_keys!11593 thiss!1427)))))))

(assert (=> d!125897 (= (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11593 thiss!1427) (index!41611 lt!459100) #b1000000000000000000000000000000000000000000000000000000000000000) lt!459155)))

(declare-fun b!1041727 () Bool)

(assert (=> b!1041727 (= e!590047 (= (arrayCountValidKeys!0 (array!65663 (store (arr!31587 (_keys!11593 thiss!1427)) (index!41611 lt!459100) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32121 (_keys!11593 thiss!1427))) #b00000000000000000000000000000000 (size!32121 (_keys!11593 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11593 thiss!1427) #b00000000000000000000000000000000 (size!32121 (_keys!11593 thiss!1427))) #b00000000000000000000000000000001)))))

(declare-fun b!1041726 () Bool)

(assert (=> b!1041726 (= e!590048 (bvslt (size!32121 (_keys!11593 thiss!1427)) #b01111111111111111111111111111111))))

(declare-fun b!1041724 () Bool)

(declare-fun res!694348 () Bool)

(assert (=> b!1041724 (=> (not res!694348) (not e!590048))))

(assert (=> b!1041724 (= res!694348 (validKeyInArray!0 (select (arr!31587 (_keys!11593 thiss!1427)) (index!41611 lt!459100))))))

(declare-fun b!1041725 () Bool)

(declare-fun res!694345 () Bool)

(assert (=> b!1041725 (=> (not res!694345) (not e!590048))))

(assert (=> b!1041725 (= res!694345 (not (validKeyInArray!0 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!125897 res!694347) b!1041724))

(assert (= (and b!1041724 res!694348) b!1041725))

(assert (= (and b!1041725 res!694345) b!1041726))

(assert (= (and d!125897 res!694346) b!1041727))

(declare-fun m!961271 () Bool)

(assert (=> d!125897 m!961271))

(assert (=> b!1041727 m!961175))

(declare-fun m!961273 () Bool)

(assert (=> b!1041727 m!961273))

(assert (=> b!1041727 m!961165))

(declare-fun m!961275 () Bool)

(assert (=> b!1041724 m!961275))

(assert (=> b!1041724 m!961275))

(declare-fun m!961277 () Bool)

(assert (=> b!1041724 m!961277))

(declare-fun m!961279 () Bool)

(assert (=> b!1041725 m!961279))

(assert (=> b!1041604 d!125897))

(declare-fun mapNonEmpty!38751 () Bool)

(declare-fun mapRes!38751 () Bool)

(declare-fun tp!74360 () Bool)

(declare-fun e!590054 () Bool)

(assert (=> mapNonEmpty!38751 (= mapRes!38751 (and tp!74360 e!590054))))

(declare-fun mapValue!38751 () ValueCell!11679)

(declare-fun mapKey!38751 () (_ BitVec 32))

(declare-fun mapRest!38751 () (Array (_ BitVec 32) ValueCell!11679))

(assert (=> mapNonEmpty!38751 (= mapRest!38745 (store mapRest!38751 mapKey!38751 mapValue!38751))))

(declare-fun condMapEmpty!38751 () Bool)

(declare-fun mapDefault!38751 () ValueCell!11679)

(assert (=> mapNonEmpty!38745 (= condMapEmpty!38751 (= mapRest!38745 ((as const (Array (_ BitVec 32) ValueCell!11679)) mapDefault!38751)))))

(declare-fun e!590053 () Bool)

(assert (=> mapNonEmpty!38745 (= tp!74351 (and e!590053 mapRes!38751))))

(declare-fun b!1041734 () Bool)

(assert (=> b!1041734 (= e!590054 tp_is_empty!24765)))

(declare-fun b!1041735 () Bool)

(assert (=> b!1041735 (= e!590053 tp_is_empty!24765)))

(declare-fun mapIsEmpty!38751 () Bool)

(assert (=> mapIsEmpty!38751 mapRes!38751))

(assert (= (and mapNonEmpty!38745 condMapEmpty!38751) mapIsEmpty!38751))

(assert (= (and mapNonEmpty!38745 (not condMapEmpty!38751)) mapNonEmpty!38751))

(assert (= (and mapNonEmpty!38751 ((_ is ValueCellFull!11679) mapValue!38751)) b!1041734))

(assert (= (and mapNonEmpty!38745 ((_ is ValueCellFull!11679) mapDefault!38751)) b!1041735))

(declare-fun m!961281 () Bool)

(assert (=> mapNonEmpty!38751 m!961281))

(check-sat (not b!1041648) (not b!1041727) (not b!1041656) (not bm!44132) (not d!125897) (not b!1041724) (not b!1041702) (not b!1041663) (not b!1041674) (not d!125879) (not d!125895) (not b!1041699) (not bm!44129) (not b!1041675) tp_is_empty!24765 (not d!125881) (not mapNonEmpty!38751) (not b_next!21045) (not b!1041725) (not bm!44133) (not b!1041657) (not d!125877) (not b!1041678) (not b!1041708) b_and!33595 (not d!125875) (not b!1041715) (not b!1041655) (not b!1041660) (not bm!44126) (not b!1041690) (not b!1041712))
(check-sat b_and!33595 (not b_next!21045))
(get-model)

(declare-fun b!1041736 () Bool)

(declare-fun e!590056 () Bool)

(declare-fun e!590058 () Bool)

(assert (=> b!1041736 (= e!590056 e!590058)))

(declare-fun c!105656 () Bool)

(assert (=> b!1041736 (= c!105656 (validKeyInArray!0 (select (arr!31587 (array!65663 (store (arr!31587 (_keys!11593 thiss!1427)) (index!41611 lt!459100) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32121 (_keys!11593 thiss!1427)))) #b00000000000000000000000000000000)))))

(declare-fun bm!44134 () Bool)

(declare-fun call!44137 () Bool)

(assert (=> bm!44134 (= call!44137 (arrayNoDuplicates!0 (array!65663 (store (arr!31587 (_keys!11593 thiss!1427)) (index!41611 lt!459100) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32121 (_keys!11593 thiss!1427))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!105656 (Cons!22090 (select (arr!31587 (array!65663 (store (arr!31587 (_keys!11593 thiss!1427)) (index!41611 lt!459100) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32121 (_keys!11593 thiss!1427)))) #b00000000000000000000000000000000) Nil!22091) Nil!22091)))))

(declare-fun b!1041737 () Bool)

(declare-fun e!590055 () Bool)

(assert (=> b!1041737 (= e!590055 (contains!6078 Nil!22091 (select (arr!31587 (array!65663 (store (arr!31587 (_keys!11593 thiss!1427)) (index!41611 lt!459100) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32121 (_keys!11593 thiss!1427)))) #b00000000000000000000000000000000)))))

(declare-fun d!125899 () Bool)

(declare-fun res!694350 () Bool)

(declare-fun e!590057 () Bool)

(assert (=> d!125899 (=> res!694350 e!590057)))

(assert (=> d!125899 (= res!694350 (bvsge #b00000000000000000000000000000000 (size!32121 (array!65663 (store (arr!31587 (_keys!11593 thiss!1427)) (index!41611 lt!459100) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32121 (_keys!11593 thiss!1427))))))))

(assert (=> d!125899 (= (arrayNoDuplicates!0 (array!65663 (store (arr!31587 (_keys!11593 thiss!1427)) (index!41611 lt!459100) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32121 (_keys!11593 thiss!1427))) #b00000000000000000000000000000000 Nil!22091) e!590057)))

(declare-fun b!1041738 () Bool)

(assert (=> b!1041738 (= e!590058 call!44137)))

(declare-fun b!1041739 () Bool)

(assert (=> b!1041739 (= e!590058 call!44137)))

(declare-fun b!1041740 () Bool)

(assert (=> b!1041740 (= e!590057 e!590056)))

(declare-fun res!694349 () Bool)

(assert (=> b!1041740 (=> (not res!694349) (not e!590056))))

(assert (=> b!1041740 (= res!694349 (not e!590055))))

(declare-fun res!694351 () Bool)

(assert (=> b!1041740 (=> (not res!694351) (not e!590055))))

(assert (=> b!1041740 (= res!694351 (validKeyInArray!0 (select (arr!31587 (array!65663 (store (arr!31587 (_keys!11593 thiss!1427)) (index!41611 lt!459100) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32121 (_keys!11593 thiss!1427)))) #b00000000000000000000000000000000)))))

(assert (= (and d!125899 (not res!694350)) b!1041740))

(assert (= (and b!1041740 res!694351) b!1041737))

(assert (= (and b!1041740 res!694349) b!1041736))

(assert (= (and b!1041736 c!105656) b!1041738))

(assert (= (and b!1041736 (not c!105656)) b!1041739))

(assert (= (or b!1041738 b!1041739) bm!44134))

(declare-fun m!961283 () Bool)

(assert (=> b!1041736 m!961283))

(assert (=> b!1041736 m!961283))

(declare-fun m!961285 () Bool)

(assert (=> b!1041736 m!961285))

(assert (=> bm!44134 m!961283))

(declare-fun m!961287 () Bool)

(assert (=> bm!44134 m!961287))

(assert (=> b!1041737 m!961283))

(assert (=> b!1041737 m!961283))

(declare-fun m!961289 () Bool)

(assert (=> b!1041737 m!961289))

(assert (=> b!1041740 m!961283))

(assert (=> b!1041740 m!961283))

(assert (=> b!1041740 m!961285))

(assert (=> b!1041660 d!125899))

(declare-fun d!125901 () Bool)

(assert (=> d!125901 (= (validKeyInArray!0 (select (arr!31587 (_keys!11593 thiss!1427)) #b00000000000000000000000000000000)) (and (not (= (select (arr!31587 (_keys!11593 thiss!1427)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!31587 (_keys!11593 thiss!1427)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1041712 d!125901))

(declare-fun d!125903 () Bool)

(assert (=> d!125903 (= (validKeyInArray!0 (select (arr!31587 lt!459095) #b00000000000000000000000000000000)) (and (not (= (select (arr!31587 lt!459095) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!31587 lt!459095) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1041690 d!125903))

(declare-fun d!125905 () Bool)

(assert (=> d!125905 (= (validKeyInArray!0 (select (arr!31587 (_keys!11593 thiss!1427)) (index!41611 lt!459100))) (and (not (= (select (arr!31587 (_keys!11593 thiss!1427)) (index!41611 lt!459100)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!31587 (_keys!11593 thiss!1427)) (index!41611 lt!459100)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1041724 d!125905))

(declare-fun b!1041753 () Bool)

(declare-fun e!590067 () SeekEntryResult!9810)

(declare-fun e!590065 () SeekEntryResult!9810)

(assert (=> b!1041753 (= e!590067 e!590065)))

(declare-fun c!105663 () Bool)

(declare-fun lt!459161 () (_ BitVec 64))

(assert (=> b!1041753 (= c!105663 (= lt!459161 key!909))))

(declare-fun lt!459160 () SeekEntryResult!9810)

(declare-fun d!125907 () Bool)

(assert (=> d!125907 (and (or ((_ is Undefined!9810) lt!459160) (not ((_ is Found!9810) lt!459160)) (and (bvsge (index!41611 lt!459160) #b00000000000000000000000000000000) (bvslt (index!41611 lt!459160) (size!32121 (_keys!11593 thiss!1427))))) (or ((_ is Undefined!9810) lt!459160) ((_ is Found!9810) lt!459160) (not ((_ is MissingVacant!9810) lt!459160)) (not (= (index!41613 lt!459160) (index!41612 lt!459130))) (and (bvsge (index!41613 lt!459160) #b00000000000000000000000000000000) (bvslt (index!41613 lt!459160) (size!32121 (_keys!11593 thiss!1427))))) (or ((_ is Undefined!9810) lt!459160) (ite ((_ is Found!9810) lt!459160) (= (select (arr!31587 (_keys!11593 thiss!1427)) (index!41611 lt!459160)) key!909) (and ((_ is MissingVacant!9810) lt!459160) (= (index!41613 lt!459160) (index!41612 lt!459130)) (= (select (arr!31587 (_keys!11593 thiss!1427)) (index!41613 lt!459160)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!125907 (= lt!459160 e!590067)))

(declare-fun c!105665 () Bool)

(assert (=> d!125907 (= c!105665 (bvsge (x!92991 lt!459130) #b01111111111111111111111111111110))))

(assert (=> d!125907 (= lt!459161 (select (arr!31587 (_keys!11593 thiss!1427)) (index!41612 lt!459130)))))

(assert (=> d!125907 (validMask!0 (mask!30388 thiss!1427))))

(assert (=> d!125907 (= (seekKeyOrZeroReturnVacant!0 (x!92991 lt!459130) (index!41612 lt!459130) (index!41612 lt!459130) key!909 (_keys!11593 thiss!1427) (mask!30388 thiss!1427)) lt!459160)))

(declare-fun b!1041754 () Bool)

(declare-fun e!590066 () SeekEntryResult!9810)

(assert (=> b!1041754 (= e!590066 (MissingVacant!9810 (index!41612 lt!459130)))))

(declare-fun b!1041755 () Bool)

(assert (=> b!1041755 (= e!590065 (Found!9810 (index!41612 lt!459130)))))

(declare-fun b!1041756 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1041756 (= e!590066 (seekKeyOrZeroReturnVacant!0 (bvadd (x!92991 lt!459130) #b00000000000000000000000000000001) (nextIndex!0 (index!41612 lt!459130) (x!92991 lt!459130) (mask!30388 thiss!1427)) (index!41612 lt!459130) key!909 (_keys!11593 thiss!1427) (mask!30388 thiss!1427)))))

(declare-fun b!1041757 () Bool)

(declare-fun c!105664 () Bool)

(assert (=> b!1041757 (= c!105664 (= lt!459161 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1041757 (= e!590065 e!590066)))

(declare-fun b!1041758 () Bool)

(assert (=> b!1041758 (= e!590067 Undefined!9810)))

(assert (= (and d!125907 c!105665) b!1041758))

(assert (= (and d!125907 (not c!105665)) b!1041753))

(assert (= (and b!1041753 c!105663) b!1041755))

(assert (= (and b!1041753 (not c!105663)) b!1041757))

(assert (= (and b!1041757 c!105664) b!1041754))

(assert (= (and b!1041757 (not c!105664)) b!1041756))

(declare-fun m!961291 () Bool)

(assert (=> d!125907 m!961291))

(declare-fun m!961293 () Bool)

(assert (=> d!125907 m!961293))

(assert (=> d!125907 m!961217))

(assert (=> d!125907 m!961159))

(declare-fun m!961295 () Bool)

(assert (=> b!1041756 m!961295))

(assert (=> b!1041756 m!961295))

(declare-fun m!961297 () Bool)

(assert (=> b!1041756 m!961297))

(assert (=> b!1041648 d!125907))

(declare-fun bm!44135 () Bool)

(declare-fun call!44138 () (_ BitVec 32))

(assert (=> bm!44135 (= call!44138 (arrayCountValidKeys!0 (array!65663 (store (arr!31587 (_keys!11593 thiss!1427)) (index!41611 lt!459100) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32121 (_keys!11593 thiss!1427))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32121 (_keys!11593 thiss!1427))))))

(declare-fun d!125909 () Bool)

(declare-fun lt!459162 () (_ BitVec 32))

(assert (=> d!125909 (and (bvsge lt!459162 #b00000000000000000000000000000000) (bvsle lt!459162 (bvsub (size!32121 (array!65663 (store (arr!31587 (_keys!11593 thiss!1427)) (index!41611 lt!459100) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32121 (_keys!11593 thiss!1427)))) #b00000000000000000000000000000000)))))

(declare-fun e!590068 () (_ BitVec 32))

(assert (=> d!125909 (= lt!459162 e!590068)))

(declare-fun c!105666 () Bool)

(assert (=> d!125909 (= c!105666 (bvsge #b00000000000000000000000000000000 (size!32121 (_keys!11593 thiss!1427))))))

(assert (=> d!125909 (and (bvsle #b00000000000000000000000000000000 (size!32121 (_keys!11593 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!32121 (_keys!11593 thiss!1427)) (size!32121 (array!65663 (store (arr!31587 (_keys!11593 thiss!1427)) (index!41611 lt!459100) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32121 (_keys!11593 thiss!1427))))))))

(assert (=> d!125909 (= (arrayCountValidKeys!0 (array!65663 (store (arr!31587 (_keys!11593 thiss!1427)) (index!41611 lt!459100) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32121 (_keys!11593 thiss!1427))) #b00000000000000000000000000000000 (size!32121 (_keys!11593 thiss!1427))) lt!459162)))

(declare-fun b!1041759 () Bool)

(declare-fun e!590069 () (_ BitVec 32))

(assert (=> b!1041759 (= e!590069 call!44138)))

(declare-fun b!1041760 () Bool)

(assert (=> b!1041760 (= e!590068 #b00000000000000000000000000000000)))

(declare-fun b!1041761 () Bool)

(assert (=> b!1041761 (= e!590069 (bvadd #b00000000000000000000000000000001 call!44138))))

(declare-fun b!1041762 () Bool)

(assert (=> b!1041762 (= e!590068 e!590069)))

(declare-fun c!105667 () Bool)

(assert (=> b!1041762 (= c!105667 (validKeyInArray!0 (select (arr!31587 (array!65663 (store (arr!31587 (_keys!11593 thiss!1427)) (index!41611 lt!459100) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32121 (_keys!11593 thiss!1427)))) #b00000000000000000000000000000000)))))

(assert (= (and d!125909 c!105666) b!1041760))

(assert (= (and d!125909 (not c!105666)) b!1041762))

(assert (= (and b!1041762 c!105667) b!1041761))

(assert (= (and b!1041762 (not c!105667)) b!1041759))

(assert (= (or b!1041761 b!1041759) bm!44135))

(declare-fun m!961299 () Bool)

(assert (=> bm!44135 m!961299))

(assert (=> b!1041762 m!961283))

(assert (=> b!1041762 m!961283))

(assert (=> b!1041762 m!961285))

(assert (=> b!1041727 d!125909))

(assert (=> b!1041727 d!125893))

(declare-fun d!125911 () Bool)

(assert (=> d!125911 (not (arrayContainsKey!0 (array!65663 (store (arr!31587 (_keys!11593 thiss!1427)) (index!41611 lt!459100) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32121 (_keys!11593 thiss!1427))) key!909 #b00000000000000000000000000000000))))

(assert (=> d!125911 true))

(declare-fun _$59!29 () Unit!34036)

(assert (=> d!125911 (= (choose!121 (_keys!11593 thiss!1427) (index!41611 lt!459100) key!909) _$59!29)))

(declare-fun bs!30462 () Bool)

(assert (= bs!30462 d!125911))

(assert (=> bs!30462 m!961175))

(assert (=> bs!30462 m!961239))

(assert (=> d!125881 d!125911))

(declare-fun d!125913 () Bool)

(declare-fun res!694352 () Bool)

(declare-fun e!590070 () Bool)

(assert (=> d!125913 (=> res!694352 e!590070)))

(assert (=> d!125913 (= res!694352 (= (select (arr!31587 lt!459095) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) key!909))))

(assert (=> d!125913 (= (arrayContainsKey!0 lt!459095 key!909 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!590070)))

(declare-fun b!1041763 () Bool)

(declare-fun e!590071 () Bool)

(assert (=> b!1041763 (= e!590070 e!590071)))

(declare-fun res!694353 () Bool)

(assert (=> b!1041763 (=> (not res!694353) (not e!590071))))

(assert (=> b!1041763 (= res!694353 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!32121 lt!459095)))))

(declare-fun b!1041764 () Bool)

(assert (=> b!1041764 (= e!590071 (arrayContainsKey!0 lt!459095 key!909 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!125913 (not res!694352)) b!1041763))

(assert (= (and b!1041763 res!694353) b!1041764))

(declare-fun m!961301 () Bool)

(assert (=> d!125913 m!961301))

(declare-fun m!961303 () Bool)

(assert (=> b!1041764 m!961303))

(assert (=> b!1041708 d!125913))

(declare-fun d!125915 () Bool)

(assert (=> d!125915 (= (validKeyInArray!0 #b1000000000000000000000000000000000000000000000000000000000000000) false)))

(assert (=> b!1041725 d!125915))

(declare-fun d!125917 () Bool)

(assert (=> d!125917 (arrayNoDuplicates!0 (array!65663 (store (arr!31587 (_keys!11593 thiss!1427)) (index!41611 lt!459100) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32121 (_keys!11593 thiss!1427))) #b00000000000000000000000000000000 Nil!22091)))

(assert (=> d!125917 true))

(declare-fun _$66!53 () Unit!34036)

(assert (=> d!125917 (= (choose!53 (_keys!11593 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41611 lt!459100) #b00000000000000000000000000000000 Nil!22091) _$66!53)))

(declare-fun bs!30463 () Bool)

(assert (= bs!30463 d!125917))

(assert (=> bs!30463 m!961175))

(assert (=> bs!30463 m!961235))

(assert (=> d!125879 d!125917))

(declare-fun d!125919 () Bool)

(declare-fun res!694354 () Bool)

(declare-fun e!590072 () Bool)

(assert (=> d!125919 (=> res!694354 e!590072)))

(assert (=> d!125919 (= res!694354 (= (select (arr!31587 (array!65663 (store (arr!31587 (_keys!11593 thiss!1427)) (index!41611 lt!459100) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32121 (_keys!11593 thiss!1427)))) #b00000000000000000000000000000000) key!909))))

(assert (=> d!125919 (= (arrayContainsKey!0 (array!65663 (store (arr!31587 (_keys!11593 thiss!1427)) (index!41611 lt!459100) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32121 (_keys!11593 thiss!1427))) key!909 #b00000000000000000000000000000000) e!590072)))

(declare-fun b!1041765 () Bool)

(declare-fun e!590073 () Bool)

(assert (=> b!1041765 (= e!590072 e!590073)))

(declare-fun res!694355 () Bool)

(assert (=> b!1041765 (=> (not res!694355) (not e!590073))))

(assert (=> b!1041765 (= res!694355 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32121 (array!65663 (store (arr!31587 (_keys!11593 thiss!1427)) (index!41611 lt!459100) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32121 (_keys!11593 thiss!1427))))))))

(declare-fun b!1041766 () Bool)

(assert (=> b!1041766 (= e!590073 (arrayContainsKey!0 (array!65663 (store (arr!31587 (_keys!11593 thiss!1427)) (index!41611 lt!459100) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32121 (_keys!11593 thiss!1427))) key!909 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!125919 (not res!694354)) b!1041765))

(assert (= (and b!1041765 res!694355) b!1041766))

(assert (=> d!125919 m!961283))

(declare-fun m!961305 () Bool)

(assert (=> b!1041766 m!961305))

(assert (=> b!1041663 d!125919))

(declare-fun b!1041767 () Bool)

(declare-fun e!590074 () Bool)

(declare-fun e!590075 () Bool)

(assert (=> b!1041767 (= e!590074 e!590075)))

(declare-fun lt!459165 () (_ BitVec 64))

(assert (=> b!1041767 (= lt!459165 (select (arr!31587 (array!65663 (store (arr!31587 (_keys!11593 thiss!1427)) (index!41611 lt!459100) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32121 (_keys!11593 thiss!1427)))) #b00000000000000000000000000000000))))

(declare-fun lt!459164 () Unit!34036)

(assert (=> b!1041767 (= lt!459164 (lemmaArrayContainsFromImpliesContainsFromZero!0 (array!65663 (store (arr!31587 (_keys!11593 thiss!1427)) (index!41611 lt!459100) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32121 (_keys!11593 thiss!1427))) lt!459165 #b00000000000000000000000000000000))))

(assert (=> b!1041767 (arrayContainsKey!0 (array!65663 (store (arr!31587 (_keys!11593 thiss!1427)) (index!41611 lt!459100) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32121 (_keys!11593 thiss!1427))) lt!459165 #b00000000000000000000000000000000)))

(declare-fun lt!459163 () Unit!34036)

(assert (=> b!1041767 (= lt!459163 lt!459164)))

(declare-fun res!694357 () Bool)

(assert (=> b!1041767 (= res!694357 (= (seekEntryOrOpen!0 (select (arr!31587 (array!65663 (store (arr!31587 (_keys!11593 thiss!1427)) (index!41611 lt!459100) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32121 (_keys!11593 thiss!1427)))) #b00000000000000000000000000000000) (array!65663 (store (arr!31587 (_keys!11593 thiss!1427)) (index!41611 lt!459100) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32121 (_keys!11593 thiss!1427))) (mask!30388 thiss!1427)) (Found!9810 #b00000000000000000000000000000000)))))

(assert (=> b!1041767 (=> (not res!694357) (not e!590075))))

(declare-fun b!1041768 () Bool)

(declare-fun call!44139 () Bool)

(assert (=> b!1041768 (= e!590074 call!44139)))

(declare-fun b!1041769 () Bool)

(assert (=> b!1041769 (= e!590075 call!44139)))

(declare-fun bm!44136 () Bool)

(assert (=> bm!44136 (= call!44139 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (array!65663 (store (arr!31587 (_keys!11593 thiss!1427)) (index!41611 lt!459100) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32121 (_keys!11593 thiss!1427))) (mask!30388 thiss!1427)))))

(declare-fun d!125921 () Bool)

(declare-fun res!694356 () Bool)

(declare-fun e!590076 () Bool)

(assert (=> d!125921 (=> res!694356 e!590076)))

(assert (=> d!125921 (= res!694356 (bvsge #b00000000000000000000000000000000 (size!32121 (array!65663 (store (arr!31587 (_keys!11593 thiss!1427)) (index!41611 lt!459100) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32121 (_keys!11593 thiss!1427))))))))

(assert (=> d!125921 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!65663 (store (arr!31587 (_keys!11593 thiss!1427)) (index!41611 lt!459100) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32121 (_keys!11593 thiss!1427))) (mask!30388 thiss!1427)) e!590076)))

(declare-fun b!1041770 () Bool)

(assert (=> b!1041770 (= e!590076 e!590074)))

(declare-fun c!105668 () Bool)

(assert (=> b!1041770 (= c!105668 (validKeyInArray!0 (select (arr!31587 (array!65663 (store (arr!31587 (_keys!11593 thiss!1427)) (index!41611 lt!459100) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32121 (_keys!11593 thiss!1427)))) #b00000000000000000000000000000000)))))

(assert (= (and d!125921 (not res!694356)) b!1041770))

(assert (= (and b!1041770 c!105668) b!1041767))

(assert (= (and b!1041770 (not c!105668)) b!1041768))

(assert (= (and b!1041767 res!694357) b!1041769))

(assert (= (or b!1041769 b!1041768) bm!44136))

(assert (=> b!1041767 m!961283))

(declare-fun m!961307 () Bool)

(assert (=> b!1041767 m!961307))

(declare-fun m!961309 () Bool)

(assert (=> b!1041767 m!961309))

(assert (=> b!1041767 m!961283))

(declare-fun m!961311 () Bool)

(assert (=> b!1041767 m!961311))

(declare-fun m!961313 () Bool)

(assert (=> bm!44136 m!961313))

(assert (=> b!1041770 m!961283))

(assert (=> b!1041770 m!961283))

(assert (=> b!1041770 m!961285))

(assert (=> b!1041715 d!125921))

(assert (=> b!1041674 d!125903))

(declare-fun d!125923 () Bool)

(declare-fun lt!459168 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!526 (List!22094) (InoxSet (_ BitVec 64)))

(assert (=> d!125923 (= lt!459168 (select (content!526 Nil!22091) (select (arr!31587 lt!459095) #b00000000000000000000000000000000)))))

(declare-fun e!590082 () Bool)

(assert (=> d!125923 (= lt!459168 e!590082)))

(declare-fun res!694363 () Bool)

(assert (=> d!125923 (=> (not res!694363) (not e!590082))))

(assert (=> d!125923 (= res!694363 ((_ is Cons!22090) Nil!22091))))

(assert (=> d!125923 (= (contains!6078 Nil!22091 (select (arr!31587 lt!459095) #b00000000000000000000000000000000)) lt!459168)))

(declare-fun b!1041775 () Bool)

(declare-fun e!590081 () Bool)

(assert (=> b!1041775 (= e!590082 e!590081)))

(declare-fun res!694362 () Bool)

(assert (=> b!1041775 (=> res!694362 e!590081)))

(assert (=> b!1041775 (= res!694362 (= (h!23296 Nil!22091) (select (arr!31587 lt!459095) #b00000000000000000000000000000000)))))

(declare-fun b!1041776 () Bool)

(assert (=> b!1041776 (= e!590081 (contains!6078 (t!31315 Nil!22091) (select (arr!31587 lt!459095) #b00000000000000000000000000000000)))))

(assert (= (and d!125923 res!694363) b!1041775))

(assert (= (and b!1041775 (not res!694362)) b!1041776))

(declare-fun m!961315 () Bool)

(assert (=> d!125923 m!961315))

(assert (=> d!125923 m!961241))

(declare-fun m!961317 () Bool)

(assert (=> d!125923 m!961317))

(assert (=> b!1041776 m!961241))

(declare-fun m!961319 () Bool)

(assert (=> b!1041776 m!961319))

(assert (=> b!1041675 d!125923))

(declare-fun d!125925 () Bool)

(assert (=> d!125925 (arrayContainsKey!0 lt!459095 lt!459148 #b00000000000000000000000000000000)))

(declare-fun lt!459171 () Unit!34036)

(declare-fun choose!13 (array!65662 (_ BitVec 64) (_ BitVec 32)) Unit!34036)

(assert (=> d!125925 (= lt!459171 (choose!13 lt!459095 lt!459148 #b00000000000000000000000000000000))))

(assert (=> d!125925 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!125925 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!459095 lt!459148 #b00000000000000000000000000000000) lt!459171)))

(declare-fun bs!30464 () Bool)

(assert (= bs!30464 d!125925))

(assert (=> bs!30464 m!961253))

(declare-fun m!961321 () Bool)

(assert (=> bs!30464 m!961321))

(assert (=> b!1041699 d!125925))

(declare-fun d!125927 () Bool)

(declare-fun res!694364 () Bool)

(declare-fun e!590083 () Bool)

(assert (=> d!125927 (=> res!694364 e!590083)))

(assert (=> d!125927 (= res!694364 (= (select (arr!31587 lt!459095) #b00000000000000000000000000000000) lt!459148))))

(assert (=> d!125927 (= (arrayContainsKey!0 lt!459095 lt!459148 #b00000000000000000000000000000000) e!590083)))

(declare-fun b!1041777 () Bool)

(declare-fun e!590084 () Bool)

(assert (=> b!1041777 (= e!590083 e!590084)))

(declare-fun res!694365 () Bool)

(assert (=> b!1041777 (=> (not res!694365) (not e!590084))))

(assert (=> b!1041777 (= res!694365 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32121 lt!459095)))))

(declare-fun b!1041778 () Bool)

(assert (=> b!1041778 (= e!590084 (arrayContainsKey!0 lt!459095 lt!459148 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!125927 (not res!694364)) b!1041777))

(assert (= (and b!1041777 res!694365) b!1041778))

(assert (=> d!125927 m!961241))

(declare-fun m!961323 () Bool)

(assert (=> b!1041778 m!961323))

(assert (=> b!1041699 d!125927))

(declare-fun d!125929 () Bool)

(declare-fun lt!459180 () SeekEntryResult!9810)

(assert (=> d!125929 (and (or ((_ is Undefined!9810) lt!459180) (not ((_ is Found!9810) lt!459180)) (and (bvsge (index!41611 lt!459180) #b00000000000000000000000000000000) (bvslt (index!41611 lt!459180) (size!32121 lt!459095)))) (or ((_ is Undefined!9810) lt!459180) ((_ is Found!9810) lt!459180) (not ((_ is MissingZero!9810) lt!459180)) (and (bvsge (index!41610 lt!459180) #b00000000000000000000000000000000) (bvslt (index!41610 lt!459180) (size!32121 lt!459095)))) (or ((_ is Undefined!9810) lt!459180) ((_ is Found!9810) lt!459180) ((_ is MissingZero!9810) lt!459180) (not ((_ is MissingVacant!9810) lt!459180)) (and (bvsge (index!41613 lt!459180) #b00000000000000000000000000000000) (bvslt (index!41613 lt!459180) (size!32121 lt!459095)))) (or ((_ is Undefined!9810) lt!459180) (ite ((_ is Found!9810) lt!459180) (= (select (arr!31587 lt!459095) (index!41611 lt!459180)) (select (arr!31587 lt!459095) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!9810) lt!459180) (= (select (arr!31587 lt!459095) (index!41610 lt!459180)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!9810) lt!459180) (= (select (arr!31587 lt!459095) (index!41613 lt!459180)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!590093 () SeekEntryResult!9810)

(assert (=> d!125929 (= lt!459180 e!590093)))

(declare-fun c!105675 () Bool)

(declare-fun lt!459178 () SeekEntryResult!9810)

(assert (=> d!125929 (= c!105675 (and ((_ is Intermediate!9810) lt!459178) (undefined!10622 lt!459178)))))

(assert (=> d!125929 (= lt!459178 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!31587 lt!459095) #b00000000000000000000000000000000) (mask!30388 thiss!1427)) (select (arr!31587 lt!459095) #b00000000000000000000000000000000) lt!459095 (mask!30388 thiss!1427)))))

(assert (=> d!125929 (validMask!0 (mask!30388 thiss!1427))))

(assert (=> d!125929 (= (seekEntryOrOpen!0 (select (arr!31587 lt!459095) #b00000000000000000000000000000000) lt!459095 (mask!30388 thiss!1427)) lt!459180)))

(declare-fun b!1041791 () Bool)

(declare-fun e!590092 () SeekEntryResult!9810)

(assert (=> b!1041791 (= e!590092 (seekKeyOrZeroReturnVacant!0 (x!92991 lt!459178) (index!41612 lt!459178) (index!41612 lt!459178) (select (arr!31587 lt!459095) #b00000000000000000000000000000000) lt!459095 (mask!30388 thiss!1427)))))

(declare-fun b!1041792 () Bool)

(assert (=> b!1041792 (= e!590092 (MissingZero!9810 (index!41612 lt!459178)))))

(declare-fun b!1041793 () Bool)

(declare-fun e!590091 () SeekEntryResult!9810)

(assert (=> b!1041793 (= e!590093 e!590091)))

(declare-fun lt!459179 () (_ BitVec 64))

(assert (=> b!1041793 (= lt!459179 (select (arr!31587 lt!459095) (index!41612 lt!459178)))))

(declare-fun c!105677 () Bool)

(assert (=> b!1041793 (= c!105677 (= lt!459179 (select (arr!31587 lt!459095) #b00000000000000000000000000000000)))))

(declare-fun b!1041794 () Bool)

(assert (=> b!1041794 (= e!590093 Undefined!9810)))

(declare-fun b!1041795 () Bool)

(declare-fun c!105676 () Bool)

(assert (=> b!1041795 (= c!105676 (= lt!459179 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1041795 (= e!590091 e!590092)))

(declare-fun b!1041796 () Bool)

(assert (=> b!1041796 (= e!590091 (Found!9810 (index!41612 lt!459178)))))

(assert (= (and d!125929 c!105675) b!1041794))

(assert (= (and d!125929 (not c!105675)) b!1041793))

(assert (= (and b!1041793 c!105677) b!1041796))

(assert (= (and b!1041793 (not c!105677)) b!1041795))

(assert (= (and b!1041795 c!105676) b!1041792))

(assert (= (and b!1041795 (not c!105676)) b!1041791))

(declare-fun m!961325 () Bool)

(assert (=> d!125929 m!961325))

(declare-fun m!961327 () Bool)

(assert (=> d!125929 m!961327))

(declare-fun m!961329 () Bool)

(assert (=> d!125929 m!961329))

(assert (=> d!125929 m!961241))

(declare-fun m!961331 () Bool)

(assert (=> d!125929 m!961331))

(assert (=> d!125929 m!961331))

(assert (=> d!125929 m!961241))

(declare-fun m!961333 () Bool)

(assert (=> d!125929 m!961333))

(assert (=> d!125929 m!961159))

(assert (=> b!1041791 m!961241))

(declare-fun m!961335 () Bool)

(assert (=> b!1041791 m!961335))

(declare-fun m!961337 () Bool)

(assert (=> b!1041793 m!961337))

(assert (=> b!1041699 d!125929))

(declare-fun b!1041797 () Bool)

(declare-fun e!590095 () Bool)

(declare-fun e!590097 () Bool)

(assert (=> b!1041797 (= e!590095 e!590097)))

(declare-fun c!105678 () Bool)

(assert (=> b!1041797 (= c!105678 (validKeyInArray!0 (select (arr!31587 lt!459095) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun call!44140 () Bool)

(declare-fun bm!44137 () Bool)

(assert (=> bm!44137 (= call!44140 (arrayNoDuplicates!0 lt!459095 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!105678 (Cons!22090 (select (arr!31587 lt!459095) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!105644 (Cons!22090 (select (arr!31587 lt!459095) #b00000000000000000000000000000000) Nil!22091) Nil!22091)) (ite c!105644 (Cons!22090 (select (arr!31587 lt!459095) #b00000000000000000000000000000000) Nil!22091) Nil!22091))))))

(declare-fun b!1041798 () Bool)

(declare-fun e!590094 () Bool)

(assert (=> b!1041798 (= e!590094 (contains!6078 (ite c!105644 (Cons!22090 (select (arr!31587 lt!459095) #b00000000000000000000000000000000) Nil!22091) Nil!22091) (select (arr!31587 lt!459095) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!125931 () Bool)

(declare-fun res!694367 () Bool)

(declare-fun e!590096 () Bool)

(assert (=> d!125931 (=> res!694367 e!590096)))

(assert (=> d!125931 (= res!694367 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32121 lt!459095)))))

(assert (=> d!125931 (= (arrayNoDuplicates!0 lt!459095 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!105644 (Cons!22090 (select (arr!31587 lt!459095) #b00000000000000000000000000000000) Nil!22091) Nil!22091)) e!590096)))

(declare-fun b!1041799 () Bool)

(assert (=> b!1041799 (= e!590097 call!44140)))

(declare-fun b!1041800 () Bool)

(assert (=> b!1041800 (= e!590097 call!44140)))

(declare-fun b!1041801 () Bool)

(assert (=> b!1041801 (= e!590096 e!590095)))

(declare-fun res!694366 () Bool)

(assert (=> b!1041801 (=> (not res!694366) (not e!590095))))

(assert (=> b!1041801 (= res!694366 (not e!590094))))

(declare-fun res!694368 () Bool)

(assert (=> b!1041801 (=> (not res!694368) (not e!590094))))

(assert (=> b!1041801 (= res!694368 (validKeyInArray!0 (select (arr!31587 lt!459095) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!125931 (not res!694367)) b!1041801))

(assert (= (and b!1041801 res!694368) b!1041798))

(assert (= (and b!1041801 res!694366) b!1041797))

(assert (= (and b!1041797 c!105678) b!1041799))

(assert (= (and b!1041797 (not c!105678)) b!1041800))

(assert (= (or b!1041799 b!1041800) bm!44137))

(assert (=> b!1041797 m!961301))

(assert (=> b!1041797 m!961301))

(declare-fun m!961339 () Bool)

(assert (=> b!1041797 m!961339))

(assert (=> bm!44137 m!961301))

(declare-fun m!961341 () Bool)

(assert (=> bm!44137 m!961341))

(assert (=> b!1041798 m!961301))

(assert (=> b!1041798 m!961301))

(declare-fun m!961343 () Bool)

(assert (=> b!1041798 m!961343))

(assert (=> b!1041801 m!961301))

(assert (=> b!1041801 m!961301))

(assert (=> b!1041801 m!961339))

(assert (=> bm!44126 d!125931))

(declare-fun d!125933 () Bool)

(declare-fun e!590110 () Bool)

(assert (=> d!125933 e!590110))

(declare-fun c!105685 () Bool)

(declare-fun lt!459185 () SeekEntryResult!9810)

(assert (=> d!125933 (= c!105685 (and ((_ is Intermediate!9810) lt!459185) (undefined!10622 lt!459185)))))

(declare-fun e!590108 () SeekEntryResult!9810)

(assert (=> d!125933 (= lt!459185 e!590108)))

(declare-fun c!105686 () Bool)

(assert (=> d!125933 (= c!105686 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!459186 () (_ BitVec 64))

(assert (=> d!125933 (= lt!459186 (select (arr!31587 (_keys!11593 thiss!1427)) (toIndex!0 key!909 (mask!30388 thiss!1427))))))

(assert (=> d!125933 (validMask!0 (mask!30388 thiss!1427))))

(assert (=> d!125933 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!909 (mask!30388 thiss!1427)) key!909 (_keys!11593 thiss!1427) (mask!30388 thiss!1427)) lt!459185)))

(declare-fun b!1041820 () Bool)

(assert (=> b!1041820 (= e!590108 (Intermediate!9810 true (toIndex!0 key!909 (mask!30388 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun b!1041821 () Bool)

(assert (=> b!1041821 (and (bvsge (index!41612 lt!459185) #b00000000000000000000000000000000) (bvslt (index!41612 lt!459185) (size!32121 (_keys!11593 thiss!1427))))))

(declare-fun res!694375 () Bool)

(assert (=> b!1041821 (= res!694375 (= (select (arr!31587 (_keys!11593 thiss!1427)) (index!41612 lt!459185)) key!909))))

(declare-fun e!590112 () Bool)

(assert (=> b!1041821 (=> res!694375 e!590112)))

(declare-fun e!590111 () Bool)

(assert (=> b!1041821 (= e!590111 e!590112)))

(declare-fun b!1041822 () Bool)

(assert (=> b!1041822 (and (bvsge (index!41612 lt!459185) #b00000000000000000000000000000000) (bvslt (index!41612 lt!459185) (size!32121 (_keys!11593 thiss!1427))))))

(assert (=> b!1041822 (= e!590112 (= (select (arr!31587 (_keys!11593 thiss!1427)) (index!41612 lt!459185)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1041823 () Bool)

(assert (=> b!1041823 (and (bvsge (index!41612 lt!459185) #b00000000000000000000000000000000) (bvslt (index!41612 lt!459185) (size!32121 (_keys!11593 thiss!1427))))))

(declare-fun res!694377 () Bool)

(assert (=> b!1041823 (= res!694377 (= (select (arr!31587 (_keys!11593 thiss!1427)) (index!41612 lt!459185)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1041823 (=> res!694377 e!590112)))

(declare-fun b!1041824 () Bool)

(declare-fun e!590109 () SeekEntryResult!9810)

(assert (=> b!1041824 (= e!590109 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!909 (mask!30388 thiss!1427)) #b00000000000000000000000000000000 (mask!30388 thiss!1427)) key!909 (_keys!11593 thiss!1427) (mask!30388 thiss!1427)))))

(declare-fun b!1041825 () Bool)

(assert (=> b!1041825 (= e!590108 e!590109)))

(declare-fun c!105687 () Bool)

(assert (=> b!1041825 (= c!105687 (or (= lt!459186 key!909) (= (bvadd lt!459186 lt!459186) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1041826 () Bool)

(assert (=> b!1041826 (= e!590110 (bvsge (x!92991 lt!459185) #b01111111111111111111111111111110))))

(declare-fun b!1041827 () Bool)

(assert (=> b!1041827 (= e!590109 (Intermediate!9810 false (toIndex!0 key!909 (mask!30388 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun b!1041828 () Bool)

(assert (=> b!1041828 (= e!590110 e!590111)))

(declare-fun res!694376 () Bool)

(assert (=> b!1041828 (= res!694376 (and ((_ is Intermediate!9810) lt!459185) (not (undefined!10622 lt!459185)) (bvslt (x!92991 lt!459185) #b01111111111111111111111111111110) (bvsge (x!92991 lt!459185) #b00000000000000000000000000000000) (bvsge (x!92991 lt!459185) #b00000000000000000000000000000000)))))

(assert (=> b!1041828 (=> (not res!694376) (not e!590111))))

(assert (= (and d!125933 c!105686) b!1041820))

(assert (= (and d!125933 (not c!105686)) b!1041825))

(assert (= (and b!1041825 c!105687) b!1041827))

(assert (= (and b!1041825 (not c!105687)) b!1041824))

(assert (= (and d!125933 c!105685) b!1041826))

(assert (= (and d!125933 (not c!105685)) b!1041828))

(assert (= (and b!1041828 res!694376) b!1041821))

(assert (= (and b!1041821 (not res!694375)) b!1041823))

(assert (= (and b!1041823 (not res!694377)) b!1041822))

(declare-fun m!961345 () Bool)

(assert (=> b!1041821 m!961345))

(assert (=> b!1041824 m!961221))

(declare-fun m!961347 () Bool)

(assert (=> b!1041824 m!961347))

(assert (=> b!1041824 m!961347))

(declare-fun m!961349 () Bool)

(assert (=> b!1041824 m!961349))

(assert (=> d!125933 m!961221))

(declare-fun m!961351 () Bool)

(assert (=> d!125933 m!961351))

(assert (=> d!125933 m!961159))

(assert (=> b!1041823 m!961345))

(assert (=> b!1041822 m!961345))

(assert (=> d!125875 d!125933))

(declare-fun d!125935 () Bool)

(declare-fun lt!459192 () (_ BitVec 32))

(declare-fun lt!459191 () (_ BitVec 32))

(assert (=> d!125935 (= lt!459192 (bvmul (bvxor lt!459191 (bvlshr lt!459191 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!125935 (= lt!459191 ((_ extract 31 0) (bvand (bvxor key!909 (bvlshr key!909 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!125935 (and (bvsge (mask!30388 thiss!1427) #b00000000000000000000000000000000) (let ((res!694378 (let ((h!23298 ((_ extract 31 0) (bvand (bvxor key!909 (bvlshr key!909 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!93009 (bvmul (bvxor h!23298 (bvlshr h!23298 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!93009 (bvlshr x!93009 #b00000000000000000000000000001101)) (mask!30388 thiss!1427)))))) (and (bvslt res!694378 (bvadd (mask!30388 thiss!1427) #b00000000000000000000000000000001)) (bvsge res!694378 #b00000000000000000000000000000000))))))

(assert (=> d!125935 (= (toIndex!0 key!909 (mask!30388 thiss!1427)) (bvand (bvxor lt!459192 (bvlshr lt!459192 #b00000000000000000000000000001101)) (mask!30388 thiss!1427)))))

(assert (=> d!125875 d!125935))

(assert (=> d!125875 d!125887))

(declare-fun d!125937 () Bool)

(assert (=> d!125937 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!65663 (store (arr!31587 (_keys!11593 thiss!1427)) (index!41611 lt!459100) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32121 (_keys!11593 thiss!1427))) (mask!30388 thiss!1427))))

(assert (=> d!125937 true))

(declare-fun _$44!27 () Unit!34036)

(assert (=> d!125937 (= (choose!25 (_keys!11593 thiss!1427) (index!41611 lt!459100) (mask!30388 thiss!1427)) _$44!27)))

(declare-fun bs!30465 () Bool)

(assert (= bs!30465 d!125937))

(assert (=> bs!30465 m!961175))

(assert (=> bs!30465 m!961269))

(assert (=> d!125895 d!125937))

(assert (=> d!125895 d!125887))

(declare-fun d!125939 () Bool)

(assert (=> d!125939 (= (arrayCountValidKeys!0 (array!65663 (store (arr!31587 (_keys!11593 thiss!1427)) (index!41611 lt!459100) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32121 (_keys!11593 thiss!1427))) #b00000000000000000000000000000000 (size!32121 (_keys!11593 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11593 thiss!1427) #b00000000000000000000000000000000 (size!32121 (_keys!11593 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> d!125939 true))

(declare-fun _$79!29 () Unit!34036)

(assert (=> d!125939 (= (choose!82 (_keys!11593 thiss!1427) (index!41611 lt!459100) #b1000000000000000000000000000000000000000000000000000000000000000) _$79!29)))

(declare-fun bs!30466 () Bool)

(assert (= bs!30466 d!125939))

(assert (=> bs!30466 m!961175))

(assert (=> bs!30466 m!961273))

(assert (=> bs!30466 m!961165))

(assert (=> d!125897 d!125939))

(declare-fun b!1041829 () Bool)

(declare-fun e!590114 () Bool)

(declare-fun e!590116 () Bool)

(assert (=> b!1041829 (= e!590114 e!590116)))

(declare-fun c!105688 () Bool)

(assert (=> b!1041829 (= c!105688 (validKeyInArray!0 (select (arr!31587 (_keys!11593 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun bm!44138 () Bool)

(declare-fun call!44141 () Bool)

(assert (=> bm!44138 (= call!44141 (arrayNoDuplicates!0 (_keys!11593 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!105688 (Cons!22090 (select (arr!31587 (_keys!11593 thiss!1427)) #b00000000000000000000000000000000) Nil!22091) Nil!22091)))))

(declare-fun b!1041830 () Bool)

(declare-fun e!590113 () Bool)

(assert (=> b!1041830 (= e!590113 (contains!6078 Nil!22091 (select (arr!31587 (_keys!11593 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun d!125941 () Bool)

(declare-fun res!694380 () Bool)

(declare-fun e!590115 () Bool)

(assert (=> d!125941 (=> res!694380 e!590115)))

(assert (=> d!125941 (= res!694380 (bvsge #b00000000000000000000000000000000 (size!32121 (_keys!11593 thiss!1427))))))

(assert (=> d!125941 (= (arrayNoDuplicates!0 (_keys!11593 thiss!1427) #b00000000000000000000000000000000 Nil!22091) e!590115)))

(declare-fun b!1041831 () Bool)

(assert (=> b!1041831 (= e!590116 call!44141)))

(declare-fun b!1041832 () Bool)

(assert (=> b!1041832 (= e!590116 call!44141)))

(declare-fun b!1041833 () Bool)

(assert (=> b!1041833 (= e!590115 e!590114)))

(declare-fun res!694379 () Bool)

(assert (=> b!1041833 (=> (not res!694379) (not e!590114))))

(assert (=> b!1041833 (= res!694379 (not e!590113))))

(declare-fun res!694381 () Bool)

(assert (=> b!1041833 (=> (not res!694381) (not e!590113))))

(assert (=> b!1041833 (= res!694381 (validKeyInArray!0 (select (arr!31587 (_keys!11593 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (= (and d!125941 (not res!694380)) b!1041833))

(assert (= (and b!1041833 res!694381) b!1041830))

(assert (= (and b!1041833 res!694379) b!1041829))

(assert (= (and b!1041829 c!105688) b!1041831))

(assert (= (and b!1041829 (not c!105688)) b!1041832))

(assert (= (or b!1041831 b!1041832) bm!44138))

(assert (=> b!1041829 m!961263))

(assert (=> b!1041829 m!961263))

(assert (=> b!1041829 m!961265))

(assert (=> bm!44138 m!961263))

(declare-fun m!961353 () Bool)

(assert (=> bm!44138 m!961353))

(assert (=> b!1041830 m!961263))

(assert (=> b!1041830 m!961263))

(declare-fun m!961355 () Bool)

(assert (=> b!1041830 m!961355))

(assert (=> b!1041833 m!961263))

(assert (=> b!1041833 m!961263))

(assert (=> b!1041833 m!961265))

(assert (=> b!1041657 d!125941))

(assert (=> b!1041702 d!125903))

(assert (=> b!1041678 d!125903))

(declare-fun bm!44139 () Bool)

(declare-fun call!44142 () (_ BitVec 32))

(assert (=> bm!44139 (= call!44142 (arrayCountValidKeys!0 (_keys!11593 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!32121 (_keys!11593 thiss!1427))))))

(declare-fun d!125943 () Bool)

(declare-fun lt!459193 () (_ BitVec 32))

(assert (=> d!125943 (and (bvsge lt!459193 #b00000000000000000000000000000000) (bvsle lt!459193 (bvsub (size!32121 (_keys!11593 thiss!1427)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun e!590117 () (_ BitVec 32))

(assert (=> d!125943 (= lt!459193 e!590117)))

(declare-fun c!105689 () Bool)

(assert (=> d!125943 (= c!105689 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32121 (_keys!11593 thiss!1427))))))

(assert (=> d!125943 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32121 (_keys!11593 thiss!1427))) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (size!32121 (_keys!11593 thiss!1427)) (size!32121 (_keys!11593 thiss!1427))))))

(assert (=> d!125943 (= (arrayCountValidKeys!0 (_keys!11593 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32121 (_keys!11593 thiss!1427))) lt!459193)))

(declare-fun b!1041834 () Bool)

(declare-fun e!590118 () (_ BitVec 32))

(assert (=> b!1041834 (= e!590118 call!44142)))

(declare-fun b!1041835 () Bool)

(assert (=> b!1041835 (= e!590117 #b00000000000000000000000000000000)))

(declare-fun b!1041836 () Bool)

(assert (=> b!1041836 (= e!590118 (bvadd #b00000000000000000000000000000001 call!44142))))

(declare-fun b!1041837 () Bool)

(assert (=> b!1041837 (= e!590117 e!590118)))

(declare-fun c!105690 () Bool)

(assert (=> b!1041837 (= c!105690 (validKeyInArray!0 (select (arr!31587 (_keys!11593 thiss!1427)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!125943 c!105689) b!1041835))

(assert (= (and d!125943 (not c!105689)) b!1041837))

(assert (= (and b!1041837 c!105690) b!1041836))

(assert (= (and b!1041837 (not c!105690)) b!1041834))

(assert (= (or b!1041836 b!1041834) bm!44139))

(declare-fun m!961357 () Bool)

(assert (=> bm!44139 m!961357))

(declare-fun m!961359 () Bool)

(assert (=> b!1041837 m!961359))

(assert (=> b!1041837 m!961359))

(declare-fun m!961361 () Bool)

(assert (=> b!1041837 m!961361))

(assert (=> bm!44133 d!125943))

(declare-fun bm!44140 () Bool)

(declare-fun call!44143 () (_ BitVec 32))

(assert (=> bm!44140 (= call!44143 (arrayCountValidKeys!0 lt!459095 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!32121 (_keys!11593 thiss!1427))))))

(declare-fun d!125945 () Bool)

(declare-fun lt!459194 () (_ BitVec 32))

(assert (=> d!125945 (and (bvsge lt!459194 #b00000000000000000000000000000000) (bvsle lt!459194 (bvsub (size!32121 lt!459095) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun e!590119 () (_ BitVec 32))

(assert (=> d!125945 (= lt!459194 e!590119)))

(declare-fun c!105691 () Bool)

(assert (=> d!125945 (= c!105691 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32121 (_keys!11593 thiss!1427))))))

(assert (=> d!125945 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32121 (_keys!11593 thiss!1427))) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (size!32121 (_keys!11593 thiss!1427)) (size!32121 lt!459095)))))

(assert (=> d!125945 (= (arrayCountValidKeys!0 lt!459095 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32121 (_keys!11593 thiss!1427))) lt!459194)))

(declare-fun b!1041838 () Bool)

(declare-fun e!590120 () (_ BitVec 32))

(assert (=> b!1041838 (= e!590120 call!44143)))

(declare-fun b!1041839 () Bool)

(assert (=> b!1041839 (= e!590119 #b00000000000000000000000000000000)))

(declare-fun b!1041840 () Bool)

(assert (=> b!1041840 (= e!590120 (bvadd #b00000000000000000000000000000001 call!44143))))

(declare-fun b!1041841 () Bool)

(assert (=> b!1041841 (= e!590119 e!590120)))

(declare-fun c!105692 () Bool)

(assert (=> b!1041841 (= c!105692 (validKeyInArray!0 (select (arr!31587 lt!459095) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!125945 c!105691) b!1041839))

(assert (= (and d!125945 (not c!105691)) b!1041841))

(assert (= (and b!1041841 c!105692) b!1041840))

(assert (= (and b!1041841 (not c!105692)) b!1041838))

(assert (= (or b!1041840 b!1041838) bm!44140))

(declare-fun m!961363 () Bool)

(assert (=> bm!44140 m!961363))

(assert (=> b!1041841 m!961301))

(assert (=> b!1041841 m!961301))

(assert (=> b!1041841 m!961339))

(assert (=> bm!44129 d!125945))

(declare-fun b!1041851 () Bool)

(declare-fun res!694392 () Bool)

(declare-fun e!590123 () Bool)

(assert (=> b!1041851 (=> (not res!694392) (not e!590123))))

(declare-fun size!32125 (LongMapFixedSize!5952) (_ BitVec 32))

(assert (=> b!1041851 (= res!694392 (bvsge (size!32125 thiss!1427) (_size!3031 thiss!1427)))))

(declare-fun b!1041853 () Bool)

(assert (=> b!1041853 (= e!590123 (and (bvsge (extraKeys!6086 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!6086 thiss!1427) #b00000000000000000000000000000011) (bvsge (_vacant!3031 thiss!1427) #b00000000000000000000000000000000)))))

(declare-fun b!1041850 () Bool)

(declare-fun res!694391 () Bool)

(assert (=> b!1041850 (=> (not res!694391) (not e!590123))))

(assert (=> b!1041850 (= res!694391 (and (= (size!32122 (_values!6381 thiss!1427)) (bvadd (mask!30388 thiss!1427) #b00000000000000000000000000000001)) (= (size!32121 (_keys!11593 thiss!1427)) (size!32122 (_values!6381 thiss!1427))) (bvsge (_size!3031 thiss!1427) #b00000000000000000000000000000000) (bvsle (_size!3031 thiss!1427) (bvadd (mask!30388 thiss!1427) #b00000000000000000000000000000001))))))

(declare-fun d!125947 () Bool)

(declare-fun res!694390 () Bool)

(assert (=> d!125947 (=> (not res!694390) (not e!590123))))

(assert (=> d!125947 (= res!694390 (validMask!0 (mask!30388 thiss!1427)))))

(assert (=> d!125947 (= (simpleValid!438 thiss!1427) e!590123)))

(declare-fun b!1041852 () Bool)

(declare-fun res!694393 () Bool)

(assert (=> b!1041852 (=> (not res!694393) (not e!590123))))

(assert (=> b!1041852 (= res!694393 (= (size!32125 thiss!1427) (bvadd (_size!3031 thiss!1427) (bvsdiv (bvadd (extraKeys!6086 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(assert (= (and d!125947 res!694390) b!1041850))

(assert (= (and b!1041850 res!694391) b!1041851))

(assert (= (and b!1041851 res!694392) b!1041852))

(assert (= (and b!1041852 res!694393) b!1041853))

(declare-fun m!961365 () Bool)

(assert (=> b!1041851 m!961365))

(assert (=> d!125947 m!961159))

(assert (=> b!1041852 m!961365))

(assert (=> d!125877 d!125947))

(declare-fun b!1041854 () Bool)

(declare-fun e!590124 () Bool)

(declare-fun e!590125 () Bool)

(assert (=> b!1041854 (= e!590124 e!590125)))

(declare-fun lt!459197 () (_ BitVec 64))

(assert (=> b!1041854 (= lt!459197 (select (arr!31587 (_keys!11593 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun lt!459196 () Unit!34036)

(assert (=> b!1041854 (= lt!459196 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!11593 thiss!1427) lt!459197 #b00000000000000000000000000000000))))

(assert (=> b!1041854 (arrayContainsKey!0 (_keys!11593 thiss!1427) lt!459197 #b00000000000000000000000000000000)))

(declare-fun lt!459195 () Unit!34036)

(assert (=> b!1041854 (= lt!459195 lt!459196)))

(declare-fun res!694395 () Bool)

(assert (=> b!1041854 (= res!694395 (= (seekEntryOrOpen!0 (select (arr!31587 (_keys!11593 thiss!1427)) #b00000000000000000000000000000000) (_keys!11593 thiss!1427) (mask!30388 thiss!1427)) (Found!9810 #b00000000000000000000000000000000)))))

(assert (=> b!1041854 (=> (not res!694395) (not e!590125))))

(declare-fun b!1041855 () Bool)

(declare-fun call!44144 () Bool)

(assert (=> b!1041855 (= e!590124 call!44144)))

(declare-fun b!1041856 () Bool)

(assert (=> b!1041856 (= e!590125 call!44144)))

(declare-fun bm!44141 () Bool)

(assert (=> bm!44141 (= call!44144 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!11593 thiss!1427) (mask!30388 thiss!1427)))))

(declare-fun d!125949 () Bool)

(declare-fun res!694394 () Bool)

(declare-fun e!590126 () Bool)

(assert (=> d!125949 (=> res!694394 e!590126)))

(assert (=> d!125949 (= res!694394 (bvsge #b00000000000000000000000000000000 (size!32121 (_keys!11593 thiss!1427))))))

(assert (=> d!125949 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11593 thiss!1427) (mask!30388 thiss!1427)) e!590126)))

(declare-fun b!1041857 () Bool)

(assert (=> b!1041857 (= e!590126 e!590124)))

(declare-fun c!105693 () Bool)

(assert (=> b!1041857 (= c!105693 (validKeyInArray!0 (select (arr!31587 (_keys!11593 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (= (and d!125949 (not res!694394)) b!1041857))

(assert (= (and b!1041857 c!105693) b!1041854))

(assert (= (and b!1041857 (not c!105693)) b!1041855))

(assert (= (and b!1041854 res!694395) b!1041856))

(assert (= (or b!1041856 b!1041855) bm!44141))

(assert (=> b!1041854 m!961263))

(declare-fun m!961367 () Bool)

(assert (=> b!1041854 m!961367))

(declare-fun m!961369 () Bool)

(assert (=> b!1041854 m!961369))

(assert (=> b!1041854 m!961263))

(declare-fun m!961371 () Bool)

(assert (=> b!1041854 m!961371))

(declare-fun m!961373 () Bool)

(assert (=> bm!44141 m!961373))

(assert (=> b!1041857 m!961263))

(assert (=> b!1041857 m!961263))

(assert (=> b!1041857 m!961265))

(assert (=> b!1041656 d!125949))

(declare-fun b!1041858 () Bool)

(declare-fun e!590127 () Bool)

(declare-fun e!590128 () Bool)

(assert (=> b!1041858 (= e!590127 e!590128)))

(declare-fun lt!459200 () (_ BitVec 64))

(assert (=> b!1041858 (= lt!459200 (select (arr!31587 lt!459095) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!459199 () Unit!34036)

(assert (=> b!1041858 (= lt!459199 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!459095 lt!459200 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!1041858 (arrayContainsKey!0 lt!459095 lt!459200 #b00000000000000000000000000000000)))

(declare-fun lt!459198 () Unit!34036)

(assert (=> b!1041858 (= lt!459198 lt!459199)))

(declare-fun res!694397 () Bool)

(assert (=> b!1041858 (= res!694397 (= (seekEntryOrOpen!0 (select (arr!31587 lt!459095) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!459095 (mask!30388 thiss!1427)) (Found!9810 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1041858 (=> (not res!694397) (not e!590128))))

(declare-fun b!1041859 () Bool)

(declare-fun call!44145 () Bool)

(assert (=> b!1041859 (= e!590127 call!44145)))

(declare-fun b!1041860 () Bool)

(assert (=> b!1041860 (= e!590128 call!44145)))

(declare-fun bm!44142 () Bool)

(assert (=> bm!44142 (= call!44145 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) lt!459095 (mask!30388 thiss!1427)))))

(declare-fun d!125951 () Bool)

(declare-fun res!694396 () Bool)

(declare-fun e!590129 () Bool)

(assert (=> d!125951 (=> res!694396 e!590129)))

(assert (=> d!125951 (= res!694396 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32121 lt!459095)))))

(assert (=> d!125951 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!459095 (mask!30388 thiss!1427)) e!590129)))

(declare-fun b!1041861 () Bool)

(assert (=> b!1041861 (= e!590129 e!590127)))

(declare-fun c!105694 () Bool)

(assert (=> b!1041861 (= c!105694 (validKeyInArray!0 (select (arr!31587 lt!459095) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!125951 (not res!694396)) b!1041861))

(assert (= (and b!1041861 c!105694) b!1041858))

(assert (= (and b!1041861 (not c!105694)) b!1041859))

(assert (= (and b!1041858 res!694397) b!1041860))

(assert (= (or b!1041860 b!1041859) bm!44142))

(assert (=> b!1041858 m!961301))

(declare-fun m!961375 () Bool)

(assert (=> b!1041858 m!961375))

(declare-fun m!961377 () Bool)

(assert (=> b!1041858 m!961377))

(assert (=> b!1041858 m!961301))

(declare-fun m!961379 () Bool)

(assert (=> b!1041858 m!961379))

(declare-fun m!961381 () Bool)

(assert (=> bm!44142 m!961381))

(assert (=> b!1041861 m!961301))

(assert (=> b!1041861 m!961301))

(assert (=> b!1041861 m!961339))

(assert (=> bm!44132 d!125951))

(assert (=> b!1041655 d!125893))

(declare-fun mapNonEmpty!38752 () Bool)

(declare-fun mapRes!38752 () Bool)

(declare-fun tp!74361 () Bool)

(declare-fun e!590131 () Bool)

(assert (=> mapNonEmpty!38752 (= mapRes!38752 (and tp!74361 e!590131))))

(declare-fun mapRest!38752 () (Array (_ BitVec 32) ValueCell!11679))

(declare-fun mapKey!38752 () (_ BitVec 32))

(declare-fun mapValue!38752 () ValueCell!11679)

(assert (=> mapNonEmpty!38752 (= mapRest!38751 (store mapRest!38752 mapKey!38752 mapValue!38752))))

(declare-fun condMapEmpty!38752 () Bool)

(declare-fun mapDefault!38752 () ValueCell!11679)

(assert (=> mapNonEmpty!38751 (= condMapEmpty!38752 (= mapRest!38751 ((as const (Array (_ BitVec 32) ValueCell!11679)) mapDefault!38752)))))

(declare-fun e!590130 () Bool)

(assert (=> mapNonEmpty!38751 (= tp!74360 (and e!590130 mapRes!38752))))

(declare-fun b!1041862 () Bool)

(assert (=> b!1041862 (= e!590131 tp_is_empty!24765)))

(declare-fun b!1041863 () Bool)

(assert (=> b!1041863 (= e!590130 tp_is_empty!24765)))

(declare-fun mapIsEmpty!38752 () Bool)

(assert (=> mapIsEmpty!38752 mapRes!38752))

(assert (= (and mapNonEmpty!38751 condMapEmpty!38752) mapIsEmpty!38752))

(assert (= (and mapNonEmpty!38751 (not condMapEmpty!38752)) mapNonEmpty!38752))

(assert (= (and mapNonEmpty!38752 ((_ is ValueCellFull!11679) mapValue!38752)) b!1041862))

(assert (= (and mapNonEmpty!38751 ((_ is ValueCellFull!11679) mapDefault!38752)) b!1041863))

(declare-fun m!961383 () Bool)

(assert (=> mapNonEmpty!38752 m!961383))

(check-sat (not bm!44142) (not b!1041736) (not b!1041837) (not d!125947) (not b!1041830) (not b!1041762) (not b!1041857) (not bm!44140) (not b!1041851) (not b!1041829) (not b!1041756) (not bm!44141) (not b!1041841) (not b!1041833) (not b!1041858) (not d!125911) (not bm!44136) (not b!1041791) (not b!1041852) (not d!125923) (not b!1041740) (not bm!44134) (not d!125939) (not mapNonEmpty!38752) (not bm!44137) tp_is_empty!24765 (not bm!44138) (not b_next!21045) (not d!125917) (not d!125933) (not d!125925) (not bm!44135) (not d!125929) (not b!1041824) (not b!1041767) (not b!1041737) (not d!125937) (not b!1041801) (not b!1041764) (not b!1041770) (not b!1041798) (not b!1041766) b_and!33595 (not d!125907) (not bm!44139) (not b!1041778) (not b!1041861) (not b!1041854) (not b!1041776) (not b!1041797))
(check-sat b_and!33595 (not b_next!21045))
