; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!91466 () Bool)

(assert start!91466)

(declare-fun b!1041908 () Bool)

(declare-fun b_free!21051 () Bool)

(declare-fun b_next!21051 () Bool)

(assert (=> b!1041908 (= b_free!21051 (not b_next!21051))))

(declare-fun tp!74373 () Bool)

(declare-fun b_and!33601 () Bool)

(assert (=> b!1041908 (= tp!74373 b_and!33601)))

(declare-fun b!1041904 () Bool)

(declare-fun e!590174 () Bool)

(declare-fun tp_is_empty!24771 () Bool)

(assert (=> b!1041904 (= e!590174 tp_is_empty!24771)))

(declare-fun b!1041906 () Bool)

(declare-fun e!590175 () Bool)

(declare-datatypes ((V!37901 0))(
  ( (V!37902 (val!12436 Int)) )
))
(declare-datatypes ((ValueCell!11682 0))(
  ( (ValueCellFull!11682 (v!15027 V!37901)) (EmptyCell!11682) )
))
(declare-datatypes ((array!65676 0))(
  ( (array!65677 (arr!31593 (Array (_ BitVec 32) (_ BitVec 64))) (size!32128 (_ BitVec 32))) )
))
(declare-datatypes ((array!65678 0))(
  ( (array!65679 (arr!31594 (Array (_ BitVec 32) ValueCell!11682)) (size!32129 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5958 0))(
  ( (LongMapFixedSize!5959 (defaultEntry!6361 Int) (mask!30402 (_ BitVec 32)) (extraKeys!6089 (_ BitVec 32)) (zeroValue!6195 V!37901) (minValue!6195 V!37901) (_size!3034 (_ BitVec 32)) (_keys!11601 array!65676) (_values!6384 array!65678) (_vacant!3034 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5958)

(assert (=> b!1041906 (= e!590175 (or (not (= (size!32129 (_values!6384 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30402 thiss!1427)))) (not (= (size!32128 (_keys!11601 thiss!1427)) (size!32129 (_values!6384 thiss!1427)))) (bvslt (mask!30402 thiss!1427) #b00000000000000000000000000000000) (bvslt (extraKeys!6089 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!6089 thiss!1427) #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!38758 () Bool)

(declare-fun mapRes!38758 () Bool)

(assert (=> mapIsEmpty!38758 mapRes!38758))

(declare-fun b!1041907 () Bool)

(declare-fun e!590177 () Bool)

(declare-fun e!590173 () Bool)

(assert (=> b!1041907 (= e!590177 e!590173)))

(declare-fun res!694421 () Bool)

(assert (=> b!1041907 (=> (not res!694421) (not e!590173))))

(declare-datatypes ((SeekEntryResult!9813 0))(
  ( (MissingZero!9813 (index!41622 (_ BitVec 32))) (Found!9813 (index!41623 (_ BitVec 32))) (Intermediate!9813 (undefined!10625 Bool) (index!41624 (_ BitVec 32)) (x!93019 (_ BitVec 32))) (Undefined!9813) (MissingVacant!9813 (index!41625 (_ BitVec 32))) )
))
(declare-fun lt!459232 () SeekEntryResult!9813)

(get-info :version)

(assert (=> b!1041907 (= res!694421 ((_ is Found!9813) lt!459232))))

(declare-fun key!909 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65676 (_ BitVec 32)) SeekEntryResult!9813)

(assert (=> b!1041907 (= lt!459232 (seekEntry!0 key!909 (_keys!11601 thiss!1427) (mask!30402 thiss!1427)))))

(declare-fun e!590178 () Bool)

(declare-fun e!590179 () Bool)

(declare-fun array_inv!24255 (array!65676) Bool)

(declare-fun array_inv!24256 (array!65678) Bool)

(assert (=> b!1041908 (= e!590178 (and tp!74373 tp_is_empty!24771 (array_inv!24255 (_keys!11601 thiss!1427)) (array_inv!24256 (_values!6384 thiss!1427)) e!590179))))

(declare-fun res!694419 () Bool)

(assert (=> start!91466 (=> (not res!694419) (not e!590177))))

(declare-fun valid!2190 (LongMapFixedSize!5958) Bool)

(assert (=> start!91466 (= res!694419 (valid!2190 thiss!1427))))

(assert (=> start!91466 e!590177))

(assert (=> start!91466 e!590178))

(assert (=> start!91466 true))

(declare-fun b!1041905 () Bool)

(assert (=> b!1041905 (= e!590179 (and e!590174 mapRes!38758))))

(declare-fun condMapEmpty!38758 () Bool)

(declare-fun mapDefault!38758 () ValueCell!11682)

(assert (=> b!1041905 (= condMapEmpty!38758 (= (arr!31594 (_values!6384 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11682)) mapDefault!38758)))))

(declare-fun b!1041909 () Bool)

(assert (=> b!1041909 (= e!590173 (not e!590175))))

(declare-fun res!694418 () Bool)

(assert (=> b!1041909 (=> res!694418 e!590175)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1041909 (= res!694418 (not (validMask!0 (mask!30402 thiss!1427))))))

(declare-fun lt!459236 () array!65676)

(declare-fun arrayContainsKey!0 (array!65676 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1041909 (not (arrayContainsKey!0 lt!459236 key!909 #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!34042 0))(
  ( (Unit!34043) )
))
(declare-fun lt!459233 () Unit!34042)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!65676 (_ BitVec 32) (_ BitVec 64)) Unit!34042)

(assert (=> b!1041909 (= lt!459233 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11601 thiss!1427) (index!41623 lt!459232) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65676 (_ BitVec 32)) Bool)

(assert (=> b!1041909 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!459236 (mask!30402 thiss!1427))))

(declare-fun lt!459234 () Unit!34042)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!65676 (_ BitVec 32) (_ BitVec 32)) Unit!34042)

(assert (=> b!1041909 (= lt!459234 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11601 thiss!1427) (index!41623 lt!459232) (mask!30402 thiss!1427)))))

(declare-datatypes ((List!22097 0))(
  ( (Nil!22094) (Cons!22093 (h!23300 (_ BitVec 64)) (t!31318 List!22097)) )
))
(declare-fun arrayNoDuplicates!0 (array!65676 (_ BitVec 32) List!22097) Bool)

(assert (=> b!1041909 (arrayNoDuplicates!0 lt!459236 #b00000000000000000000000000000000 Nil!22094)))

(declare-fun lt!459231 () Unit!34042)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!65676 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22097) Unit!34042)

(assert (=> b!1041909 (= lt!459231 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11601 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41623 lt!459232) #b00000000000000000000000000000000 Nil!22094))))

(declare-fun arrayCountValidKeys!0 (array!65676 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1041909 (= (arrayCountValidKeys!0 lt!459236 #b00000000000000000000000000000000 (size!32128 (_keys!11601 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11601 thiss!1427) #b00000000000000000000000000000000 (size!32128 (_keys!11601 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1041909 (= lt!459236 (array!65677 (store (arr!31593 (_keys!11601 thiss!1427)) (index!41623 lt!459232) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32128 (_keys!11601 thiss!1427))))))

(declare-fun lt!459235 () Unit!34042)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65676 (_ BitVec 32) (_ BitVec 64)) Unit!34042)

(assert (=> b!1041909 (= lt!459235 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11601 thiss!1427) (index!41623 lt!459232) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1041910 () Bool)

(declare-fun e!590176 () Bool)

(assert (=> b!1041910 (= e!590176 tp_is_empty!24771)))

(declare-fun b!1041911 () Bool)

(declare-fun res!694420 () Bool)

(assert (=> b!1041911 (=> (not res!694420) (not e!590177))))

(assert (=> b!1041911 (= res!694420 (not (= key!909 (bvneg key!909))))))

(declare-fun mapNonEmpty!38758 () Bool)

(declare-fun tp!74372 () Bool)

(assert (=> mapNonEmpty!38758 (= mapRes!38758 (and tp!74372 e!590176))))

(declare-fun mapValue!38758 () ValueCell!11682)

(declare-fun mapRest!38758 () (Array (_ BitVec 32) ValueCell!11682))

(declare-fun mapKey!38758 () (_ BitVec 32))

(assert (=> mapNonEmpty!38758 (= (arr!31594 (_values!6384 thiss!1427)) (store mapRest!38758 mapKey!38758 mapValue!38758))))

(assert (= (and start!91466 res!694419) b!1041911))

(assert (= (and b!1041911 res!694420) b!1041907))

(assert (= (and b!1041907 res!694421) b!1041909))

(assert (= (and b!1041909 (not res!694418)) b!1041906))

(assert (= (and b!1041905 condMapEmpty!38758) mapIsEmpty!38758))

(assert (= (and b!1041905 (not condMapEmpty!38758)) mapNonEmpty!38758))

(assert (= (and mapNonEmpty!38758 ((_ is ValueCellFull!11682) mapValue!38758)) b!1041910))

(assert (= (and b!1041905 ((_ is ValueCellFull!11682) mapDefault!38758)) b!1041904))

(assert (= b!1041908 b!1041905))

(assert (= start!91466 b!1041908))

(declare-fun m!961417 () Bool)

(assert (=> mapNonEmpty!38758 m!961417))

(declare-fun m!961419 () Bool)

(assert (=> b!1041907 m!961419))

(declare-fun m!961421 () Bool)

(assert (=> b!1041908 m!961421))

(declare-fun m!961423 () Bool)

(assert (=> b!1041908 m!961423))

(declare-fun m!961425 () Bool)

(assert (=> start!91466 m!961425))

(declare-fun m!961427 () Bool)

(assert (=> b!1041909 m!961427))

(declare-fun m!961429 () Bool)

(assert (=> b!1041909 m!961429))

(declare-fun m!961431 () Bool)

(assert (=> b!1041909 m!961431))

(declare-fun m!961433 () Bool)

(assert (=> b!1041909 m!961433))

(declare-fun m!961435 () Bool)

(assert (=> b!1041909 m!961435))

(declare-fun m!961437 () Bool)

(assert (=> b!1041909 m!961437))

(declare-fun m!961439 () Bool)

(assert (=> b!1041909 m!961439))

(declare-fun m!961441 () Bool)

(assert (=> b!1041909 m!961441))

(declare-fun m!961443 () Bool)

(assert (=> b!1041909 m!961443))

(declare-fun m!961445 () Bool)

(assert (=> b!1041909 m!961445))

(declare-fun m!961447 () Bool)

(assert (=> b!1041909 m!961447))

(check-sat (not b!1041908) (not mapNonEmpty!38758) (not start!91466) tp_is_empty!24771 (not b!1041909) (not b!1041907) b_and!33601 (not b_next!21051))
(check-sat b_and!33601 (not b_next!21051))
(get-model)

(declare-fun d!125955 () Bool)

(assert (=> d!125955 (= (array_inv!24255 (_keys!11601 thiss!1427)) (bvsge (size!32128 (_keys!11601 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1041908 d!125955))

(declare-fun d!125957 () Bool)

(assert (=> d!125957 (= (array_inv!24256 (_values!6384 thiss!1427)) (bvsge (size!32129 (_values!6384 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1041908 d!125957))

(declare-fun d!125959 () Bool)

(declare-fun res!694440 () Bool)

(declare-fun e!590206 () Bool)

(assert (=> d!125959 (=> (not res!694440) (not e!590206))))

(declare-fun simpleValid!439 (LongMapFixedSize!5958) Bool)

(assert (=> d!125959 (= res!694440 (simpleValid!439 thiss!1427))))

(assert (=> d!125959 (= (valid!2190 thiss!1427) e!590206)))

(declare-fun b!1041942 () Bool)

(declare-fun res!694441 () Bool)

(assert (=> b!1041942 (=> (not res!694441) (not e!590206))))

(assert (=> b!1041942 (= res!694441 (= (arrayCountValidKeys!0 (_keys!11601 thiss!1427) #b00000000000000000000000000000000 (size!32128 (_keys!11601 thiss!1427))) (_size!3034 thiss!1427)))))

(declare-fun b!1041943 () Bool)

(declare-fun res!694442 () Bool)

(assert (=> b!1041943 (=> (not res!694442) (not e!590206))))

(assert (=> b!1041943 (= res!694442 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11601 thiss!1427) (mask!30402 thiss!1427)))))

(declare-fun b!1041944 () Bool)

(assert (=> b!1041944 (= e!590206 (arrayNoDuplicates!0 (_keys!11601 thiss!1427) #b00000000000000000000000000000000 Nil!22094))))

(assert (= (and d!125959 res!694440) b!1041942))

(assert (= (and b!1041942 res!694441) b!1041943))

(assert (= (and b!1041943 res!694442) b!1041944))

(declare-fun m!961481 () Bool)

(assert (=> d!125959 m!961481))

(assert (=> b!1041942 m!961431))

(declare-fun m!961483 () Bool)

(assert (=> b!1041943 m!961483))

(declare-fun m!961485 () Bool)

(assert (=> b!1041944 m!961485))

(assert (=> start!91466 d!125959))

(declare-fun d!125961 () Bool)

(declare-fun res!694447 () Bool)

(declare-fun e!590211 () Bool)

(assert (=> d!125961 (=> res!694447 e!590211)))

(assert (=> d!125961 (= res!694447 (= (select (arr!31593 lt!459236) #b00000000000000000000000000000000) key!909))))

(assert (=> d!125961 (= (arrayContainsKey!0 lt!459236 key!909 #b00000000000000000000000000000000) e!590211)))

(declare-fun b!1041949 () Bool)

(declare-fun e!590212 () Bool)

(assert (=> b!1041949 (= e!590211 e!590212)))

(declare-fun res!694448 () Bool)

(assert (=> b!1041949 (=> (not res!694448) (not e!590212))))

(assert (=> b!1041949 (= res!694448 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32128 lt!459236)))))

(declare-fun b!1041950 () Bool)

(assert (=> b!1041950 (= e!590212 (arrayContainsKey!0 lt!459236 key!909 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!125961 (not res!694447)) b!1041949))

(assert (= (and b!1041949 res!694448) b!1041950))

(declare-fun m!961487 () Bool)

(assert (=> d!125961 m!961487))

(declare-fun m!961489 () Bool)

(assert (=> b!1041950 m!961489))

(assert (=> b!1041909 d!125961))

(declare-fun b!1041959 () Bool)

(declare-fun e!590218 () (_ BitVec 32))

(declare-fun e!590217 () (_ BitVec 32))

(assert (=> b!1041959 (= e!590218 e!590217)))

(declare-fun c!105699 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1041959 (= c!105699 (validKeyInArray!0 (select (arr!31593 lt!459236) #b00000000000000000000000000000000)))))

(declare-fun b!1041960 () Bool)

(declare-fun call!44148 () (_ BitVec 32))

(assert (=> b!1041960 (= e!590217 (bvadd #b00000000000000000000000000000001 call!44148))))

(declare-fun b!1041961 () Bool)

(assert (=> b!1041961 (= e!590217 call!44148)))

(declare-fun d!125963 () Bool)

(declare-fun lt!459257 () (_ BitVec 32))

(assert (=> d!125963 (and (bvsge lt!459257 #b00000000000000000000000000000000) (bvsle lt!459257 (bvsub (size!32128 lt!459236) #b00000000000000000000000000000000)))))

(assert (=> d!125963 (= lt!459257 e!590218)))

(declare-fun c!105700 () Bool)

(assert (=> d!125963 (= c!105700 (bvsge #b00000000000000000000000000000000 (size!32128 (_keys!11601 thiss!1427))))))

(assert (=> d!125963 (and (bvsle #b00000000000000000000000000000000 (size!32128 (_keys!11601 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!32128 (_keys!11601 thiss!1427)) (size!32128 lt!459236)))))

(assert (=> d!125963 (= (arrayCountValidKeys!0 lt!459236 #b00000000000000000000000000000000 (size!32128 (_keys!11601 thiss!1427))) lt!459257)))

(declare-fun bm!44145 () Bool)

(assert (=> bm!44145 (= call!44148 (arrayCountValidKeys!0 lt!459236 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32128 (_keys!11601 thiss!1427))))))

(declare-fun b!1041962 () Bool)

(assert (=> b!1041962 (= e!590218 #b00000000000000000000000000000000)))

(assert (= (and d!125963 c!105700) b!1041962))

(assert (= (and d!125963 (not c!105700)) b!1041959))

(assert (= (and b!1041959 c!105699) b!1041960))

(assert (= (and b!1041959 (not c!105699)) b!1041961))

(assert (= (or b!1041960 b!1041961) bm!44145))

(assert (=> b!1041959 m!961487))

(assert (=> b!1041959 m!961487))

(declare-fun m!961491 () Bool)

(assert (=> b!1041959 m!961491))

(declare-fun m!961493 () Bool)

(assert (=> bm!44145 m!961493))

(assert (=> b!1041909 d!125963))

(declare-fun d!125965 () Bool)

(assert (=> d!125965 (= (validMask!0 (mask!30402 thiss!1427)) (and (or (= (mask!30402 thiss!1427) #b00000000000000000000000000000111) (= (mask!30402 thiss!1427) #b00000000000000000000000000001111) (= (mask!30402 thiss!1427) #b00000000000000000000000000011111) (= (mask!30402 thiss!1427) #b00000000000000000000000000111111) (= (mask!30402 thiss!1427) #b00000000000000000000000001111111) (= (mask!30402 thiss!1427) #b00000000000000000000000011111111) (= (mask!30402 thiss!1427) #b00000000000000000000000111111111) (= (mask!30402 thiss!1427) #b00000000000000000000001111111111) (= (mask!30402 thiss!1427) #b00000000000000000000011111111111) (= (mask!30402 thiss!1427) #b00000000000000000000111111111111) (= (mask!30402 thiss!1427) #b00000000000000000001111111111111) (= (mask!30402 thiss!1427) #b00000000000000000011111111111111) (= (mask!30402 thiss!1427) #b00000000000000000111111111111111) (= (mask!30402 thiss!1427) #b00000000000000001111111111111111) (= (mask!30402 thiss!1427) #b00000000000000011111111111111111) (= (mask!30402 thiss!1427) #b00000000000000111111111111111111) (= (mask!30402 thiss!1427) #b00000000000001111111111111111111) (= (mask!30402 thiss!1427) #b00000000000011111111111111111111) (= (mask!30402 thiss!1427) #b00000000000111111111111111111111) (= (mask!30402 thiss!1427) #b00000000001111111111111111111111) (= (mask!30402 thiss!1427) #b00000000011111111111111111111111) (= (mask!30402 thiss!1427) #b00000000111111111111111111111111) (= (mask!30402 thiss!1427) #b00000001111111111111111111111111) (= (mask!30402 thiss!1427) #b00000011111111111111111111111111) (= (mask!30402 thiss!1427) #b00000111111111111111111111111111) (= (mask!30402 thiss!1427) #b00001111111111111111111111111111) (= (mask!30402 thiss!1427) #b00011111111111111111111111111111) (= (mask!30402 thiss!1427) #b00111111111111111111111111111111)) (bvsle (mask!30402 thiss!1427) #b00111111111111111111111111111111)))))

(assert (=> b!1041909 d!125965))

(declare-fun b!1041973 () Bool)

(declare-fun e!590229 () Bool)

(declare-fun call!44151 () Bool)

(assert (=> b!1041973 (= e!590229 call!44151)))

(declare-fun bm!44148 () Bool)

(declare-fun c!105703 () Bool)

(assert (=> bm!44148 (= call!44151 (arrayNoDuplicates!0 lt!459236 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!105703 (Cons!22093 (select (arr!31593 lt!459236) #b00000000000000000000000000000000) Nil!22094) Nil!22094)))))

(declare-fun d!125967 () Bool)

(declare-fun res!694455 () Bool)

(declare-fun e!590227 () Bool)

(assert (=> d!125967 (=> res!694455 e!590227)))

(assert (=> d!125967 (= res!694455 (bvsge #b00000000000000000000000000000000 (size!32128 lt!459236)))))

(assert (=> d!125967 (= (arrayNoDuplicates!0 lt!459236 #b00000000000000000000000000000000 Nil!22094) e!590227)))

(declare-fun b!1041974 () Bool)

(declare-fun e!590228 () Bool)

(assert (=> b!1041974 (= e!590227 e!590228)))

(declare-fun res!694457 () Bool)

(assert (=> b!1041974 (=> (not res!694457) (not e!590228))))

(declare-fun e!590230 () Bool)

(assert (=> b!1041974 (= res!694457 (not e!590230))))

(declare-fun res!694456 () Bool)

(assert (=> b!1041974 (=> (not res!694456) (not e!590230))))

(assert (=> b!1041974 (= res!694456 (validKeyInArray!0 (select (arr!31593 lt!459236) #b00000000000000000000000000000000)))))

(declare-fun b!1041975 () Bool)

(assert (=> b!1041975 (= e!590229 call!44151)))

(declare-fun b!1041976 () Bool)

(assert (=> b!1041976 (= e!590228 e!590229)))

(assert (=> b!1041976 (= c!105703 (validKeyInArray!0 (select (arr!31593 lt!459236) #b00000000000000000000000000000000)))))

(declare-fun b!1041977 () Bool)

(declare-fun contains!6079 (List!22097 (_ BitVec 64)) Bool)

(assert (=> b!1041977 (= e!590230 (contains!6079 Nil!22094 (select (arr!31593 lt!459236) #b00000000000000000000000000000000)))))

(assert (= (and d!125967 (not res!694455)) b!1041974))

(assert (= (and b!1041974 res!694456) b!1041977))

(assert (= (and b!1041974 res!694457) b!1041976))

(assert (= (and b!1041976 c!105703) b!1041975))

(assert (= (and b!1041976 (not c!105703)) b!1041973))

(assert (= (or b!1041975 b!1041973) bm!44148))

(assert (=> bm!44148 m!961487))

(declare-fun m!961495 () Bool)

(assert (=> bm!44148 m!961495))

(assert (=> b!1041974 m!961487))

(assert (=> b!1041974 m!961487))

(assert (=> b!1041974 m!961491))

(assert (=> b!1041976 m!961487))

(assert (=> b!1041976 m!961487))

(assert (=> b!1041976 m!961491))

(assert (=> b!1041977 m!961487))

(assert (=> b!1041977 m!961487))

(declare-fun m!961497 () Bool)

(assert (=> b!1041977 m!961497))

(assert (=> b!1041909 d!125967))

(declare-fun b!1041989 () Bool)

(declare-fun e!590236 () Bool)

(assert (=> b!1041989 (= e!590236 (= (arrayCountValidKeys!0 (array!65677 (store (arr!31593 (_keys!11601 thiss!1427)) (index!41623 lt!459232) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32128 (_keys!11601 thiss!1427))) #b00000000000000000000000000000000 (size!32128 (_keys!11601 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11601 thiss!1427) #b00000000000000000000000000000000 (size!32128 (_keys!11601 thiss!1427))) #b00000000000000000000000000000001)))))

(declare-fun d!125969 () Bool)

(assert (=> d!125969 e!590236))

(declare-fun res!694469 () Bool)

(assert (=> d!125969 (=> (not res!694469) (not e!590236))))

(assert (=> d!125969 (= res!694469 (and (bvsge (index!41623 lt!459232) #b00000000000000000000000000000000) (bvslt (index!41623 lt!459232) (size!32128 (_keys!11601 thiss!1427)))))))

(declare-fun lt!459260 () Unit!34042)

(declare-fun choose!82 (array!65676 (_ BitVec 32) (_ BitVec 64)) Unit!34042)

(assert (=> d!125969 (= lt!459260 (choose!82 (_keys!11601 thiss!1427) (index!41623 lt!459232) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!590235 () Bool)

(assert (=> d!125969 e!590235))

(declare-fun res!694468 () Bool)

(assert (=> d!125969 (=> (not res!694468) (not e!590235))))

(assert (=> d!125969 (= res!694468 (and (bvsge (index!41623 lt!459232) #b00000000000000000000000000000000) (bvslt (index!41623 lt!459232) (size!32128 (_keys!11601 thiss!1427)))))))

(assert (=> d!125969 (= (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11601 thiss!1427) (index!41623 lt!459232) #b1000000000000000000000000000000000000000000000000000000000000000) lt!459260)))

(declare-fun b!1041986 () Bool)

(declare-fun res!694467 () Bool)

(assert (=> b!1041986 (=> (not res!694467) (not e!590235))))

(assert (=> b!1041986 (= res!694467 (validKeyInArray!0 (select (arr!31593 (_keys!11601 thiss!1427)) (index!41623 lt!459232))))))

(declare-fun b!1041987 () Bool)

(declare-fun res!694466 () Bool)

(assert (=> b!1041987 (=> (not res!694466) (not e!590235))))

(assert (=> b!1041987 (= res!694466 (not (validKeyInArray!0 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1041988 () Bool)

(assert (=> b!1041988 (= e!590235 (bvslt (size!32128 (_keys!11601 thiss!1427)) #b01111111111111111111111111111111))))

(assert (= (and d!125969 res!694468) b!1041986))

(assert (= (and b!1041986 res!694467) b!1041987))

(assert (= (and b!1041987 res!694466) b!1041988))

(assert (= (and d!125969 res!694469) b!1041989))

(assert (=> b!1041989 m!961445))

(declare-fun m!961499 () Bool)

(assert (=> b!1041989 m!961499))

(assert (=> b!1041989 m!961431))

(declare-fun m!961501 () Bool)

(assert (=> d!125969 m!961501))

(declare-fun m!961503 () Bool)

(assert (=> b!1041986 m!961503))

(assert (=> b!1041986 m!961503))

(declare-fun m!961505 () Bool)

(assert (=> b!1041986 m!961505))

(declare-fun m!961507 () Bool)

(assert (=> b!1041987 m!961507))

(assert (=> b!1041909 d!125969))

(declare-fun d!125971 () Bool)

(declare-fun e!590239 () Bool)

(assert (=> d!125971 e!590239))

(declare-fun res!694472 () Bool)

(assert (=> d!125971 (=> (not res!694472) (not e!590239))))

(assert (=> d!125971 (= res!694472 (and (bvsge (index!41623 lt!459232) #b00000000000000000000000000000000) (bvslt (index!41623 lt!459232) (size!32128 (_keys!11601 thiss!1427)))))))

(declare-fun lt!459263 () Unit!34042)

(declare-fun choose!53 (array!65676 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22097) Unit!34042)

(assert (=> d!125971 (= lt!459263 (choose!53 (_keys!11601 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41623 lt!459232) #b00000000000000000000000000000000 Nil!22094))))

(assert (=> d!125971 (bvslt (size!32128 (_keys!11601 thiss!1427)) #b01111111111111111111111111111111)))

(assert (=> d!125971 (= (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11601 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41623 lt!459232) #b00000000000000000000000000000000 Nil!22094) lt!459263)))

(declare-fun b!1041992 () Bool)

(assert (=> b!1041992 (= e!590239 (arrayNoDuplicates!0 (array!65677 (store (arr!31593 (_keys!11601 thiss!1427)) (index!41623 lt!459232) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32128 (_keys!11601 thiss!1427))) #b00000000000000000000000000000000 Nil!22094))))

(assert (= (and d!125971 res!694472) b!1041992))

(declare-fun m!961509 () Bool)

(assert (=> d!125971 m!961509))

(assert (=> b!1041992 m!961445))

(declare-fun m!961511 () Bool)

(assert (=> b!1041992 m!961511))

(assert (=> b!1041909 d!125971))

(declare-fun b!1041993 () Bool)

(declare-fun e!590241 () (_ BitVec 32))

(declare-fun e!590240 () (_ BitVec 32))

(assert (=> b!1041993 (= e!590241 e!590240)))

(declare-fun c!105704 () Bool)

(assert (=> b!1041993 (= c!105704 (validKeyInArray!0 (select (arr!31593 (_keys!11601 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1041994 () Bool)

(declare-fun call!44152 () (_ BitVec 32))

(assert (=> b!1041994 (= e!590240 (bvadd #b00000000000000000000000000000001 call!44152))))

(declare-fun b!1041995 () Bool)

(assert (=> b!1041995 (= e!590240 call!44152)))

(declare-fun d!125973 () Bool)

(declare-fun lt!459264 () (_ BitVec 32))

(assert (=> d!125973 (and (bvsge lt!459264 #b00000000000000000000000000000000) (bvsle lt!459264 (bvsub (size!32128 (_keys!11601 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> d!125973 (= lt!459264 e!590241)))

(declare-fun c!105705 () Bool)

(assert (=> d!125973 (= c!105705 (bvsge #b00000000000000000000000000000000 (size!32128 (_keys!11601 thiss!1427))))))

(assert (=> d!125973 (and (bvsle #b00000000000000000000000000000000 (size!32128 (_keys!11601 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!32128 (_keys!11601 thiss!1427)) (size!32128 (_keys!11601 thiss!1427))))))

(assert (=> d!125973 (= (arrayCountValidKeys!0 (_keys!11601 thiss!1427) #b00000000000000000000000000000000 (size!32128 (_keys!11601 thiss!1427))) lt!459264)))

(declare-fun bm!44149 () Bool)

(assert (=> bm!44149 (= call!44152 (arrayCountValidKeys!0 (_keys!11601 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32128 (_keys!11601 thiss!1427))))))

(declare-fun b!1041996 () Bool)

(assert (=> b!1041996 (= e!590241 #b00000000000000000000000000000000)))

(assert (= (and d!125973 c!105705) b!1041996))

(assert (= (and d!125973 (not c!105705)) b!1041993))

(assert (= (and b!1041993 c!105704) b!1041994))

(assert (= (and b!1041993 (not c!105704)) b!1041995))

(assert (= (or b!1041994 b!1041995) bm!44149))

(declare-fun m!961513 () Bool)

(assert (=> b!1041993 m!961513))

(assert (=> b!1041993 m!961513))

(declare-fun m!961515 () Bool)

(assert (=> b!1041993 m!961515))

(declare-fun m!961517 () Bool)

(assert (=> bm!44149 m!961517))

(assert (=> b!1041909 d!125973))

(declare-fun d!125975 () Bool)

(declare-fun e!590244 () Bool)

(assert (=> d!125975 e!590244))

(declare-fun res!694475 () Bool)

(assert (=> d!125975 (=> (not res!694475) (not e!590244))))

(assert (=> d!125975 (= res!694475 (and (bvsge (index!41623 lt!459232) #b00000000000000000000000000000000) (bvslt (index!41623 lt!459232) (size!32128 (_keys!11601 thiss!1427)))))))

(declare-fun lt!459267 () Unit!34042)

(declare-fun choose!25 (array!65676 (_ BitVec 32) (_ BitVec 32)) Unit!34042)

(assert (=> d!125975 (= lt!459267 (choose!25 (_keys!11601 thiss!1427) (index!41623 lt!459232) (mask!30402 thiss!1427)))))

(assert (=> d!125975 (validMask!0 (mask!30402 thiss!1427))))

(assert (=> d!125975 (= (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11601 thiss!1427) (index!41623 lt!459232) (mask!30402 thiss!1427)) lt!459267)))

(declare-fun b!1041999 () Bool)

(assert (=> b!1041999 (= e!590244 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!65677 (store (arr!31593 (_keys!11601 thiss!1427)) (index!41623 lt!459232) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32128 (_keys!11601 thiss!1427))) (mask!30402 thiss!1427)))))

(assert (= (and d!125975 res!694475) b!1041999))

(declare-fun m!961519 () Bool)

(assert (=> d!125975 m!961519))

(assert (=> d!125975 m!961427))

(assert (=> b!1041999 m!961445))

(declare-fun m!961521 () Bool)

(assert (=> b!1041999 m!961521))

(assert (=> b!1041909 d!125975))

(declare-fun d!125977 () Bool)

(declare-fun e!590247 () Bool)

(assert (=> d!125977 e!590247))

(declare-fun res!694478 () Bool)

(assert (=> d!125977 (=> (not res!694478) (not e!590247))))

(assert (=> d!125977 (= res!694478 (bvslt (index!41623 lt!459232) (size!32128 (_keys!11601 thiss!1427))))))

(declare-fun lt!459270 () Unit!34042)

(declare-fun choose!121 (array!65676 (_ BitVec 32) (_ BitVec 64)) Unit!34042)

(assert (=> d!125977 (= lt!459270 (choose!121 (_keys!11601 thiss!1427) (index!41623 lt!459232) key!909))))

(assert (=> d!125977 (bvsge (index!41623 lt!459232) #b00000000000000000000000000000000)))

(assert (=> d!125977 (= (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11601 thiss!1427) (index!41623 lt!459232) key!909) lt!459270)))

(declare-fun b!1042002 () Bool)

(assert (=> b!1042002 (= e!590247 (not (arrayContainsKey!0 (array!65677 (store (arr!31593 (_keys!11601 thiss!1427)) (index!41623 lt!459232) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32128 (_keys!11601 thiss!1427))) key!909 #b00000000000000000000000000000000)))))

(assert (= (and d!125977 res!694478) b!1042002))

(declare-fun m!961523 () Bool)

(assert (=> d!125977 m!961523))

(assert (=> b!1042002 m!961445))

(declare-fun m!961525 () Bool)

(assert (=> b!1042002 m!961525))

(assert (=> b!1041909 d!125977))

(declare-fun b!1042011 () Bool)

(declare-fun e!590255 () Bool)

(declare-fun call!44155 () Bool)

(assert (=> b!1042011 (= e!590255 call!44155)))

(declare-fun b!1042013 () Bool)

(declare-fun e!590256 () Bool)

(assert (=> b!1042013 (= e!590256 call!44155)))

(declare-fun b!1042012 () Bool)

(assert (=> b!1042012 (= e!590256 e!590255)))

(declare-fun lt!459278 () (_ BitVec 64))

(assert (=> b!1042012 (= lt!459278 (select (arr!31593 lt!459236) #b00000000000000000000000000000000))))

(declare-fun lt!459277 () Unit!34042)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!65676 (_ BitVec 64) (_ BitVec 32)) Unit!34042)

(assert (=> b!1042012 (= lt!459277 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!459236 lt!459278 #b00000000000000000000000000000000))))

(assert (=> b!1042012 (arrayContainsKey!0 lt!459236 lt!459278 #b00000000000000000000000000000000)))

(declare-fun lt!459279 () Unit!34042)

(assert (=> b!1042012 (= lt!459279 lt!459277)))

(declare-fun res!694484 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!65676 (_ BitVec 32)) SeekEntryResult!9813)

(assert (=> b!1042012 (= res!694484 (= (seekEntryOrOpen!0 (select (arr!31593 lt!459236) #b00000000000000000000000000000000) lt!459236 (mask!30402 thiss!1427)) (Found!9813 #b00000000000000000000000000000000)))))

(assert (=> b!1042012 (=> (not res!694484) (not e!590255))))

(declare-fun d!125979 () Bool)

(declare-fun res!694483 () Bool)

(declare-fun e!590254 () Bool)

(assert (=> d!125979 (=> res!694483 e!590254)))

(assert (=> d!125979 (= res!694483 (bvsge #b00000000000000000000000000000000 (size!32128 lt!459236)))))

(assert (=> d!125979 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!459236 (mask!30402 thiss!1427)) e!590254)))

(declare-fun b!1042014 () Bool)

(assert (=> b!1042014 (= e!590254 e!590256)))

(declare-fun c!105708 () Bool)

(assert (=> b!1042014 (= c!105708 (validKeyInArray!0 (select (arr!31593 lt!459236) #b00000000000000000000000000000000)))))

(declare-fun bm!44152 () Bool)

(assert (=> bm!44152 (= call!44155 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!459236 (mask!30402 thiss!1427)))))

(assert (= (and d!125979 (not res!694483)) b!1042014))

(assert (= (and b!1042014 c!105708) b!1042012))

(assert (= (and b!1042014 (not c!105708)) b!1042013))

(assert (= (and b!1042012 res!694484) b!1042011))

(assert (= (or b!1042011 b!1042013) bm!44152))

(assert (=> b!1042012 m!961487))

(declare-fun m!961527 () Bool)

(assert (=> b!1042012 m!961527))

(declare-fun m!961529 () Bool)

(assert (=> b!1042012 m!961529))

(assert (=> b!1042012 m!961487))

(declare-fun m!961531 () Bool)

(assert (=> b!1042012 m!961531))

(assert (=> b!1042014 m!961487))

(assert (=> b!1042014 m!961487))

(assert (=> b!1042014 m!961491))

(declare-fun m!961533 () Bool)

(assert (=> bm!44152 m!961533))

(assert (=> b!1041909 d!125979))

(declare-fun b!1042027 () Bool)

(declare-fun e!590263 () SeekEntryResult!9813)

(declare-fun lt!459290 () SeekEntryResult!9813)

(assert (=> b!1042027 (= e!590263 (MissingZero!9813 (index!41624 lt!459290)))))

(declare-fun b!1042028 () Bool)

(declare-fun e!590264 () SeekEntryResult!9813)

(assert (=> b!1042028 (= e!590264 (Found!9813 (index!41624 lt!459290)))))

(declare-fun d!125981 () Bool)

(declare-fun lt!459288 () SeekEntryResult!9813)

(assert (=> d!125981 (and (or ((_ is MissingVacant!9813) lt!459288) (not ((_ is Found!9813) lt!459288)) (and (bvsge (index!41623 lt!459288) #b00000000000000000000000000000000) (bvslt (index!41623 lt!459288) (size!32128 (_keys!11601 thiss!1427))))) (not ((_ is MissingVacant!9813) lt!459288)) (or (not ((_ is Found!9813) lt!459288)) (= (select (arr!31593 (_keys!11601 thiss!1427)) (index!41623 lt!459288)) key!909)))))

(declare-fun e!590265 () SeekEntryResult!9813)

(assert (=> d!125981 (= lt!459288 e!590265)))

(declare-fun c!105717 () Bool)

(assert (=> d!125981 (= c!105717 (and ((_ is Intermediate!9813) lt!459290) (undefined!10625 lt!459290)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65676 (_ BitVec 32)) SeekEntryResult!9813)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!125981 (= lt!459290 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!909 (mask!30402 thiss!1427)) key!909 (_keys!11601 thiss!1427) (mask!30402 thiss!1427)))))

(assert (=> d!125981 (validMask!0 (mask!30402 thiss!1427))))

(assert (=> d!125981 (= (seekEntry!0 key!909 (_keys!11601 thiss!1427) (mask!30402 thiss!1427)) lt!459288)))

(declare-fun b!1042029 () Bool)

(declare-fun c!105716 () Bool)

(declare-fun lt!459291 () (_ BitVec 64))

(assert (=> b!1042029 (= c!105716 (= lt!459291 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1042029 (= e!590264 e!590263)))

(declare-fun b!1042030 () Bool)

(declare-fun lt!459289 () SeekEntryResult!9813)

(assert (=> b!1042030 (= e!590263 (ite ((_ is MissingVacant!9813) lt!459289) (MissingZero!9813 (index!41625 lt!459289)) lt!459289))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65676 (_ BitVec 32)) SeekEntryResult!9813)

(assert (=> b!1042030 (= lt!459289 (seekKeyOrZeroReturnVacant!0 (x!93019 lt!459290) (index!41624 lt!459290) (index!41624 lt!459290) key!909 (_keys!11601 thiss!1427) (mask!30402 thiss!1427)))))

(declare-fun b!1042031 () Bool)

(assert (=> b!1042031 (= e!590265 Undefined!9813)))

(declare-fun b!1042032 () Bool)

(assert (=> b!1042032 (= e!590265 e!590264)))

(assert (=> b!1042032 (= lt!459291 (select (arr!31593 (_keys!11601 thiss!1427)) (index!41624 lt!459290)))))

(declare-fun c!105715 () Bool)

(assert (=> b!1042032 (= c!105715 (= lt!459291 key!909))))

(assert (= (and d!125981 c!105717) b!1042031))

(assert (= (and d!125981 (not c!105717)) b!1042032))

(assert (= (and b!1042032 c!105715) b!1042028))

(assert (= (and b!1042032 (not c!105715)) b!1042029))

(assert (= (and b!1042029 c!105716) b!1042027))

(assert (= (and b!1042029 (not c!105716)) b!1042030))

(declare-fun m!961535 () Bool)

(assert (=> d!125981 m!961535))

(declare-fun m!961537 () Bool)

(assert (=> d!125981 m!961537))

(assert (=> d!125981 m!961537))

(declare-fun m!961539 () Bool)

(assert (=> d!125981 m!961539))

(assert (=> d!125981 m!961427))

(declare-fun m!961541 () Bool)

(assert (=> b!1042030 m!961541))

(declare-fun m!961543 () Bool)

(assert (=> b!1042032 m!961543))

(assert (=> b!1041907 d!125981))

(declare-fun condMapEmpty!38764 () Bool)

(declare-fun mapDefault!38764 () ValueCell!11682)

(assert (=> mapNonEmpty!38758 (= condMapEmpty!38764 (= mapRest!38758 ((as const (Array (_ BitVec 32) ValueCell!11682)) mapDefault!38764)))))

(declare-fun e!590271 () Bool)

(declare-fun mapRes!38764 () Bool)

(assert (=> mapNonEmpty!38758 (= tp!74372 (and e!590271 mapRes!38764))))

(declare-fun mapIsEmpty!38764 () Bool)

(assert (=> mapIsEmpty!38764 mapRes!38764))

(declare-fun b!1042040 () Bool)

(assert (=> b!1042040 (= e!590271 tp_is_empty!24771)))

(declare-fun b!1042039 () Bool)

(declare-fun e!590270 () Bool)

(assert (=> b!1042039 (= e!590270 tp_is_empty!24771)))

(declare-fun mapNonEmpty!38764 () Bool)

(declare-fun tp!74382 () Bool)

(assert (=> mapNonEmpty!38764 (= mapRes!38764 (and tp!74382 e!590270))))

(declare-fun mapRest!38764 () (Array (_ BitVec 32) ValueCell!11682))

(declare-fun mapValue!38764 () ValueCell!11682)

(declare-fun mapKey!38764 () (_ BitVec 32))

(assert (=> mapNonEmpty!38764 (= mapRest!38758 (store mapRest!38764 mapKey!38764 mapValue!38764))))

(assert (= (and mapNonEmpty!38758 condMapEmpty!38764) mapIsEmpty!38764))

(assert (= (and mapNonEmpty!38758 (not condMapEmpty!38764)) mapNonEmpty!38764))

(assert (= (and mapNonEmpty!38764 ((_ is ValueCellFull!11682) mapValue!38764)) b!1042039))

(assert (= (and mapNonEmpty!38758 ((_ is ValueCellFull!11682) mapDefault!38764)) b!1042040))

(declare-fun m!961545 () Bool)

(assert (=> mapNonEmpty!38764 m!961545))

(check-sat (not d!125975) (not b!1041943) (not b!1041989) (not b!1042002) (not d!125981) (not b!1041992) (not b!1041976) (not b!1042014) (not d!125971) (not bm!44149) (not b!1041977) (not d!125959) (not b!1041944) tp_is_empty!24771 (not bm!44145) (not bm!44148) b_and!33601 (not d!125969) (not mapNonEmpty!38764) (not b_next!21051) (not b!1041993) (not b!1041987) (not b!1041950) (not b!1042030) (not b!1041999) (not b!1041974) (not b!1041986) (not b!1041942) (not d!125977) (not bm!44152) (not b!1041959) (not b!1042012))
(check-sat b_and!33601 (not b_next!21051))
(get-model)

(declare-fun d!125983 () Bool)

(assert (=> d!125983 (= (validKeyInArray!0 (select (arr!31593 lt!459236) #b00000000000000000000000000000000)) (and (not (= (select (arr!31593 lt!459236) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!31593 lt!459236) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1042014 d!125983))

(declare-fun d!125985 () Bool)

(assert (=> d!125985 (= (validKeyInArray!0 (select (arr!31593 (_keys!11601 thiss!1427)) #b00000000000000000000000000000000)) (and (not (= (select (arr!31593 (_keys!11601 thiss!1427)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!31593 (_keys!11601 thiss!1427)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1041993 d!125985))

(declare-fun b!1042041 () Bool)

(declare-fun e!590273 () Bool)

(declare-fun call!44156 () Bool)

(assert (=> b!1042041 (= e!590273 call!44156)))

(declare-fun b!1042043 () Bool)

(declare-fun e!590274 () Bool)

(assert (=> b!1042043 (= e!590274 call!44156)))

(declare-fun b!1042042 () Bool)

(assert (=> b!1042042 (= e!590274 e!590273)))

(declare-fun lt!459293 () (_ BitVec 64))

(assert (=> b!1042042 (= lt!459293 (select (arr!31593 lt!459236) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!459292 () Unit!34042)

(assert (=> b!1042042 (= lt!459292 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!459236 lt!459293 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!1042042 (arrayContainsKey!0 lt!459236 lt!459293 #b00000000000000000000000000000000)))

(declare-fun lt!459294 () Unit!34042)

(assert (=> b!1042042 (= lt!459294 lt!459292)))

(declare-fun res!694486 () Bool)

(assert (=> b!1042042 (= res!694486 (= (seekEntryOrOpen!0 (select (arr!31593 lt!459236) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!459236 (mask!30402 thiss!1427)) (Found!9813 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1042042 (=> (not res!694486) (not e!590273))))

(declare-fun d!125987 () Bool)

(declare-fun res!694485 () Bool)

(declare-fun e!590272 () Bool)

(assert (=> d!125987 (=> res!694485 e!590272)))

(assert (=> d!125987 (= res!694485 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32128 lt!459236)))))

(assert (=> d!125987 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!459236 (mask!30402 thiss!1427)) e!590272)))

(declare-fun b!1042044 () Bool)

(assert (=> b!1042044 (= e!590272 e!590274)))

(declare-fun c!105718 () Bool)

(assert (=> b!1042044 (= c!105718 (validKeyInArray!0 (select (arr!31593 lt!459236) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun bm!44153 () Bool)

(assert (=> bm!44153 (= call!44156 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) lt!459236 (mask!30402 thiss!1427)))))

(assert (= (and d!125987 (not res!694485)) b!1042044))

(assert (= (and b!1042044 c!105718) b!1042042))

(assert (= (and b!1042044 (not c!105718)) b!1042043))

(assert (= (and b!1042042 res!694486) b!1042041))

(assert (= (or b!1042041 b!1042043) bm!44153))

(declare-fun m!961547 () Bool)

(assert (=> b!1042042 m!961547))

(declare-fun m!961549 () Bool)

(assert (=> b!1042042 m!961549))

(declare-fun m!961551 () Bool)

(assert (=> b!1042042 m!961551))

(assert (=> b!1042042 m!961547))

(declare-fun m!961553 () Bool)

(assert (=> b!1042042 m!961553))

(assert (=> b!1042044 m!961547))

(assert (=> b!1042044 m!961547))

(declare-fun m!961555 () Bool)

(assert (=> b!1042044 m!961555))

(declare-fun m!961557 () Bool)

(assert (=> bm!44153 m!961557))

(assert (=> bm!44152 d!125987))

(declare-fun d!125989 () Bool)

(declare-fun lt!459297 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!527 (List!22097) (InoxSet (_ BitVec 64)))

(assert (=> d!125989 (= lt!459297 (select (content!527 Nil!22094) (select (arr!31593 lt!459236) #b00000000000000000000000000000000)))))

(declare-fun e!590279 () Bool)

(assert (=> d!125989 (= lt!459297 e!590279)))

(declare-fun res!694491 () Bool)

(assert (=> d!125989 (=> (not res!694491) (not e!590279))))

(assert (=> d!125989 (= res!694491 ((_ is Cons!22093) Nil!22094))))

(assert (=> d!125989 (= (contains!6079 Nil!22094 (select (arr!31593 lt!459236) #b00000000000000000000000000000000)) lt!459297)))

(declare-fun b!1042049 () Bool)

(declare-fun e!590280 () Bool)

(assert (=> b!1042049 (= e!590279 e!590280)))

(declare-fun res!694492 () Bool)

(assert (=> b!1042049 (=> res!694492 e!590280)))

(assert (=> b!1042049 (= res!694492 (= (h!23300 Nil!22094) (select (arr!31593 lt!459236) #b00000000000000000000000000000000)))))

(declare-fun b!1042050 () Bool)

(assert (=> b!1042050 (= e!590280 (contains!6079 (t!31318 Nil!22094) (select (arr!31593 lt!459236) #b00000000000000000000000000000000)))))

(assert (= (and d!125989 res!694491) b!1042049))

(assert (= (and b!1042049 (not res!694492)) b!1042050))

(declare-fun m!961559 () Bool)

(assert (=> d!125989 m!961559))

(assert (=> d!125989 m!961487))

(declare-fun m!961561 () Bool)

(assert (=> d!125989 m!961561))

(assert (=> b!1042050 m!961487))

(declare-fun m!961563 () Bool)

(assert (=> b!1042050 m!961563))

(assert (=> b!1041977 d!125989))

(declare-fun d!125991 () Bool)

(assert (=> d!125991 (arrayContainsKey!0 lt!459236 lt!459278 #b00000000000000000000000000000000)))

(declare-fun lt!459300 () Unit!34042)

(declare-fun choose!13 (array!65676 (_ BitVec 64) (_ BitVec 32)) Unit!34042)

(assert (=> d!125991 (= lt!459300 (choose!13 lt!459236 lt!459278 #b00000000000000000000000000000000))))

(assert (=> d!125991 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!125991 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!459236 lt!459278 #b00000000000000000000000000000000) lt!459300)))

(declare-fun bs!30470 () Bool)

(assert (= bs!30470 d!125991))

(assert (=> bs!30470 m!961529))

(declare-fun m!961565 () Bool)

(assert (=> bs!30470 m!961565))

(assert (=> b!1042012 d!125991))

(declare-fun d!125993 () Bool)

(declare-fun res!694493 () Bool)

(declare-fun e!590281 () Bool)

(assert (=> d!125993 (=> res!694493 e!590281)))

(assert (=> d!125993 (= res!694493 (= (select (arr!31593 lt!459236) #b00000000000000000000000000000000) lt!459278))))

(assert (=> d!125993 (= (arrayContainsKey!0 lt!459236 lt!459278 #b00000000000000000000000000000000) e!590281)))

(declare-fun b!1042051 () Bool)

(declare-fun e!590282 () Bool)

(assert (=> b!1042051 (= e!590281 e!590282)))

(declare-fun res!694494 () Bool)

(assert (=> b!1042051 (=> (not res!694494) (not e!590282))))

(assert (=> b!1042051 (= res!694494 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32128 lt!459236)))))

(declare-fun b!1042052 () Bool)

(assert (=> b!1042052 (= e!590282 (arrayContainsKey!0 lt!459236 lt!459278 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!125993 (not res!694493)) b!1042051))

(assert (= (and b!1042051 res!694494) b!1042052))

(assert (=> d!125993 m!961487))

(declare-fun m!961567 () Bool)

(assert (=> b!1042052 m!961567))

(assert (=> b!1042012 d!125993))

(declare-fun b!1042065 () Bool)

(declare-fun e!590290 () SeekEntryResult!9813)

(assert (=> b!1042065 (= e!590290 Undefined!9813)))

(declare-fun d!125995 () Bool)

(declare-fun lt!459307 () SeekEntryResult!9813)

(assert (=> d!125995 (and (or ((_ is Undefined!9813) lt!459307) (not ((_ is Found!9813) lt!459307)) (and (bvsge (index!41623 lt!459307) #b00000000000000000000000000000000) (bvslt (index!41623 lt!459307) (size!32128 lt!459236)))) (or ((_ is Undefined!9813) lt!459307) ((_ is Found!9813) lt!459307) (not ((_ is MissingZero!9813) lt!459307)) (and (bvsge (index!41622 lt!459307) #b00000000000000000000000000000000) (bvslt (index!41622 lt!459307) (size!32128 lt!459236)))) (or ((_ is Undefined!9813) lt!459307) ((_ is Found!9813) lt!459307) ((_ is MissingZero!9813) lt!459307) (not ((_ is MissingVacant!9813) lt!459307)) (and (bvsge (index!41625 lt!459307) #b00000000000000000000000000000000) (bvslt (index!41625 lt!459307) (size!32128 lt!459236)))) (or ((_ is Undefined!9813) lt!459307) (ite ((_ is Found!9813) lt!459307) (= (select (arr!31593 lt!459236) (index!41623 lt!459307)) (select (arr!31593 lt!459236) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!9813) lt!459307) (= (select (arr!31593 lt!459236) (index!41622 lt!459307)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!9813) lt!459307) (= (select (arr!31593 lt!459236) (index!41625 lt!459307)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!125995 (= lt!459307 e!590290)))

(declare-fun c!105725 () Bool)

(declare-fun lt!459308 () SeekEntryResult!9813)

(assert (=> d!125995 (= c!105725 (and ((_ is Intermediate!9813) lt!459308) (undefined!10625 lt!459308)))))

(assert (=> d!125995 (= lt!459308 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!31593 lt!459236) #b00000000000000000000000000000000) (mask!30402 thiss!1427)) (select (arr!31593 lt!459236) #b00000000000000000000000000000000) lt!459236 (mask!30402 thiss!1427)))))

(assert (=> d!125995 (validMask!0 (mask!30402 thiss!1427))))

(assert (=> d!125995 (= (seekEntryOrOpen!0 (select (arr!31593 lt!459236) #b00000000000000000000000000000000) lt!459236 (mask!30402 thiss!1427)) lt!459307)))

(declare-fun b!1042066 () Bool)

(declare-fun e!590289 () SeekEntryResult!9813)

(assert (=> b!1042066 (= e!590290 e!590289)))

(declare-fun lt!459309 () (_ BitVec 64))

(assert (=> b!1042066 (= lt!459309 (select (arr!31593 lt!459236) (index!41624 lt!459308)))))

(declare-fun c!105726 () Bool)

(assert (=> b!1042066 (= c!105726 (= lt!459309 (select (arr!31593 lt!459236) #b00000000000000000000000000000000)))))

(declare-fun e!590291 () SeekEntryResult!9813)

(declare-fun b!1042067 () Bool)

(assert (=> b!1042067 (= e!590291 (seekKeyOrZeroReturnVacant!0 (x!93019 lt!459308) (index!41624 lt!459308) (index!41624 lt!459308) (select (arr!31593 lt!459236) #b00000000000000000000000000000000) lt!459236 (mask!30402 thiss!1427)))))

(declare-fun b!1042068 () Bool)

(assert (=> b!1042068 (= e!590289 (Found!9813 (index!41624 lt!459308)))))

(declare-fun b!1042069 () Bool)

(assert (=> b!1042069 (= e!590291 (MissingZero!9813 (index!41624 lt!459308)))))

(declare-fun b!1042070 () Bool)

(declare-fun c!105727 () Bool)

(assert (=> b!1042070 (= c!105727 (= lt!459309 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1042070 (= e!590289 e!590291)))

(assert (= (and d!125995 c!105725) b!1042065))

(assert (= (and d!125995 (not c!105725)) b!1042066))

(assert (= (and b!1042066 c!105726) b!1042068))

(assert (= (and b!1042066 (not c!105726)) b!1042070))

(assert (= (and b!1042070 c!105727) b!1042069))

(assert (= (and b!1042070 (not c!105727)) b!1042067))

(assert (=> d!125995 m!961487))

(declare-fun m!961569 () Bool)

(assert (=> d!125995 m!961569))

(assert (=> d!125995 m!961569))

(assert (=> d!125995 m!961487))

(declare-fun m!961571 () Bool)

(assert (=> d!125995 m!961571))

(declare-fun m!961573 () Bool)

(assert (=> d!125995 m!961573))

(assert (=> d!125995 m!961427))

(declare-fun m!961575 () Bool)

(assert (=> d!125995 m!961575))

(declare-fun m!961577 () Bool)

(assert (=> d!125995 m!961577))

(declare-fun m!961579 () Bool)

(assert (=> b!1042066 m!961579))

(assert (=> b!1042067 m!961487))

(declare-fun m!961581 () Bool)

(assert (=> b!1042067 m!961581))

(assert (=> b!1042012 d!125995))

(declare-fun d!125997 () Bool)

(declare-fun res!694495 () Bool)

(declare-fun e!590292 () Bool)

(assert (=> d!125997 (=> res!694495 e!590292)))

(assert (=> d!125997 (= res!694495 (= (select (arr!31593 lt!459236) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) key!909))))

(assert (=> d!125997 (= (arrayContainsKey!0 lt!459236 key!909 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!590292)))

(declare-fun b!1042071 () Bool)

(declare-fun e!590293 () Bool)

(assert (=> b!1042071 (= e!590292 e!590293)))

(declare-fun res!694496 () Bool)

(assert (=> b!1042071 (=> (not res!694496) (not e!590293))))

(assert (=> b!1042071 (= res!694496 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!32128 lt!459236)))))

(declare-fun b!1042072 () Bool)

(assert (=> b!1042072 (= e!590293 (arrayContainsKey!0 lt!459236 key!909 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!125997 (not res!694495)) b!1042071))

(assert (= (and b!1042071 res!694496) b!1042072))

(assert (=> d!125997 m!961547))

(declare-fun m!961583 () Bool)

(assert (=> b!1042072 m!961583))

(assert (=> b!1041950 d!125997))

(declare-fun b!1042073 () Bool)

(declare-fun e!590295 () (_ BitVec 32))

(declare-fun e!590294 () (_ BitVec 32))

(assert (=> b!1042073 (= e!590295 e!590294)))

(declare-fun c!105728 () Bool)

(assert (=> b!1042073 (= c!105728 (validKeyInArray!0 (select (arr!31593 (array!65677 (store (arr!31593 (_keys!11601 thiss!1427)) (index!41623 lt!459232) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32128 (_keys!11601 thiss!1427)))) #b00000000000000000000000000000000)))))

(declare-fun b!1042074 () Bool)

(declare-fun call!44157 () (_ BitVec 32))

(assert (=> b!1042074 (= e!590294 (bvadd #b00000000000000000000000000000001 call!44157))))

(declare-fun b!1042075 () Bool)

(assert (=> b!1042075 (= e!590294 call!44157)))

(declare-fun d!125999 () Bool)

(declare-fun lt!459310 () (_ BitVec 32))

(assert (=> d!125999 (and (bvsge lt!459310 #b00000000000000000000000000000000) (bvsle lt!459310 (bvsub (size!32128 (array!65677 (store (arr!31593 (_keys!11601 thiss!1427)) (index!41623 lt!459232) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32128 (_keys!11601 thiss!1427)))) #b00000000000000000000000000000000)))))

(assert (=> d!125999 (= lt!459310 e!590295)))

(declare-fun c!105729 () Bool)

(assert (=> d!125999 (= c!105729 (bvsge #b00000000000000000000000000000000 (size!32128 (_keys!11601 thiss!1427))))))

(assert (=> d!125999 (and (bvsle #b00000000000000000000000000000000 (size!32128 (_keys!11601 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!32128 (_keys!11601 thiss!1427)) (size!32128 (array!65677 (store (arr!31593 (_keys!11601 thiss!1427)) (index!41623 lt!459232) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32128 (_keys!11601 thiss!1427))))))))

(assert (=> d!125999 (= (arrayCountValidKeys!0 (array!65677 (store (arr!31593 (_keys!11601 thiss!1427)) (index!41623 lt!459232) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32128 (_keys!11601 thiss!1427))) #b00000000000000000000000000000000 (size!32128 (_keys!11601 thiss!1427))) lt!459310)))

(declare-fun bm!44154 () Bool)

(assert (=> bm!44154 (= call!44157 (arrayCountValidKeys!0 (array!65677 (store (arr!31593 (_keys!11601 thiss!1427)) (index!41623 lt!459232) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32128 (_keys!11601 thiss!1427))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32128 (_keys!11601 thiss!1427))))))

(declare-fun b!1042076 () Bool)

(assert (=> b!1042076 (= e!590295 #b00000000000000000000000000000000)))

(assert (= (and d!125999 c!105729) b!1042076))

(assert (= (and d!125999 (not c!105729)) b!1042073))

(assert (= (and b!1042073 c!105728) b!1042074))

(assert (= (and b!1042073 (not c!105728)) b!1042075))

(assert (= (or b!1042074 b!1042075) bm!44154))

(declare-fun m!961585 () Bool)

(assert (=> b!1042073 m!961585))

(assert (=> b!1042073 m!961585))

(declare-fun m!961587 () Bool)

(assert (=> b!1042073 m!961587))

(declare-fun m!961589 () Bool)

(assert (=> bm!44154 m!961589))

(assert (=> b!1041989 d!125999))

(assert (=> b!1041989 d!125973))

(declare-fun e!590304 () SeekEntryResult!9813)

(declare-fun b!1042089 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1042089 (= e!590304 (seekKeyOrZeroReturnVacant!0 (bvadd (x!93019 lt!459290) #b00000000000000000000000000000001) (nextIndex!0 (index!41624 lt!459290) (x!93019 lt!459290) (mask!30402 thiss!1427)) (index!41624 lt!459290) key!909 (_keys!11601 thiss!1427) (mask!30402 thiss!1427)))))

(declare-fun b!1042090 () Bool)

(declare-fun e!590302 () SeekEntryResult!9813)

(declare-fun e!590303 () SeekEntryResult!9813)

(assert (=> b!1042090 (= e!590302 e!590303)))

(declare-fun c!105738 () Bool)

(declare-fun lt!459316 () (_ BitVec 64))

(assert (=> b!1042090 (= c!105738 (= lt!459316 key!909))))

(declare-fun b!1042091 () Bool)

(assert (=> b!1042091 (= e!590303 (Found!9813 (index!41624 lt!459290)))))

(declare-fun b!1042092 () Bool)

(assert (=> b!1042092 (= e!590304 (MissingVacant!9813 (index!41624 lt!459290)))))

(declare-fun lt!459315 () SeekEntryResult!9813)

(declare-fun d!126001 () Bool)

(assert (=> d!126001 (and (or ((_ is Undefined!9813) lt!459315) (not ((_ is Found!9813) lt!459315)) (and (bvsge (index!41623 lt!459315) #b00000000000000000000000000000000) (bvslt (index!41623 lt!459315) (size!32128 (_keys!11601 thiss!1427))))) (or ((_ is Undefined!9813) lt!459315) ((_ is Found!9813) lt!459315) (not ((_ is MissingVacant!9813) lt!459315)) (not (= (index!41625 lt!459315) (index!41624 lt!459290))) (and (bvsge (index!41625 lt!459315) #b00000000000000000000000000000000) (bvslt (index!41625 lt!459315) (size!32128 (_keys!11601 thiss!1427))))) (or ((_ is Undefined!9813) lt!459315) (ite ((_ is Found!9813) lt!459315) (= (select (arr!31593 (_keys!11601 thiss!1427)) (index!41623 lt!459315)) key!909) (and ((_ is MissingVacant!9813) lt!459315) (= (index!41625 lt!459315) (index!41624 lt!459290)) (= (select (arr!31593 (_keys!11601 thiss!1427)) (index!41625 lt!459315)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!126001 (= lt!459315 e!590302)))

(declare-fun c!105737 () Bool)

(assert (=> d!126001 (= c!105737 (bvsge (x!93019 lt!459290) #b01111111111111111111111111111110))))

(assert (=> d!126001 (= lt!459316 (select (arr!31593 (_keys!11601 thiss!1427)) (index!41624 lt!459290)))))

(assert (=> d!126001 (validMask!0 (mask!30402 thiss!1427))))

(assert (=> d!126001 (= (seekKeyOrZeroReturnVacant!0 (x!93019 lt!459290) (index!41624 lt!459290) (index!41624 lt!459290) key!909 (_keys!11601 thiss!1427) (mask!30402 thiss!1427)) lt!459315)))

(declare-fun b!1042093 () Bool)

(declare-fun c!105736 () Bool)

(assert (=> b!1042093 (= c!105736 (= lt!459316 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1042093 (= e!590303 e!590304)))

(declare-fun b!1042094 () Bool)

(assert (=> b!1042094 (= e!590302 Undefined!9813)))

(assert (= (and d!126001 c!105737) b!1042094))

(assert (= (and d!126001 (not c!105737)) b!1042090))

(assert (= (and b!1042090 c!105738) b!1042091))

(assert (= (and b!1042090 (not c!105738)) b!1042093))

(assert (= (and b!1042093 c!105736) b!1042092))

(assert (= (and b!1042093 (not c!105736)) b!1042089))

(declare-fun m!961591 () Bool)

(assert (=> b!1042089 m!961591))

(assert (=> b!1042089 m!961591))

(declare-fun m!961593 () Bool)

(assert (=> b!1042089 m!961593))

(declare-fun m!961595 () Bool)

(assert (=> d!126001 m!961595))

(declare-fun m!961597 () Bool)

(assert (=> d!126001 m!961597))

(assert (=> d!126001 m!961543))

(assert (=> d!126001 m!961427))

(assert (=> b!1042030 d!126001))

(declare-fun b!1042095 () Bool)

(declare-fun e!590306 () (_ BitVec 32))

(declare-fun e!590305 () (_ BitVec 32))

(assert (=> b!1042095 (= e!590306 e!590305)))

(declare-fun c!105739 () Bool)

(assert (=> b!1042095 (= c!105739 (validKeyInArray!0 (select (arr!31593 lt!459236) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1042096 () Bool)

(declare-fun call!44158 () (_ BitVec 32))

(assert (=> b!1042096 (= e!590305 (bvadd #b00000000000000000000000000000001 call!44158))))

(declare-fun b!1042097 () Bool)

(assert (=> b!1042097 (= e!590305 call!44158)))

(declare-fun d!126003 () Bool)

(declare-fun lt!459317 () (_ BitVec 32))

(assert (=> d!126003 (and (bvsge lt!459317 #b00000000000000000000000000000000) (bvsle lt!459317 (bvsub (size!32128 lt!459236) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> d!126003 (= lt!459317 e!590306)))

(declare-fun c!105740 () Bool)

(assert (=> d!126003 (= c!105740 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32128 (_keys!11601 thiss!1427))))))

(assert (=> d!126003 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32128 (_keys!11601 thiss!1427))) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (size!32128 (_keys!11601 thiss!1427)) (size!32128 lt!459236)))))

(assert (=> d!126003 (= (arrayCountValidKeys!0 lt!459236 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32128 (_keys!11601 thiss!1427))) lt!459317)))

(declare-fun bm!44155 () Bool)

(assert (=> bm!44155 (= call!44158 (arrayCountValidKeys!0 lt!459236 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!32128 (_keys!11601 thiss!1427))))))

(declare-fun b!1042098 () Bool)

(assert (=> b!1042098 (= e!590306 #b00000000000000000000000000000000)))

(assert (= (and d!126003 c!105740) b!1042098))

(assert (= (and d!126003 (not c!105740)) b!1042095))

(assert (= (and b!1042095 c!105739) b!1042096))

(assert (= (and b!1042095 (not c!105739)) b!1042097))

(assert (= (or b!1042096 b!1042097) bm!44155))

(assert (=> b!1042095 m!961547))

(assert (=> b!1042095 m!961547))

(assert (=> b!1042095 m!961555))

(declare-fun m!961599 () Bool)

(assert (=> bm!44155 m!961599))

(assert (=> bm!44145 d!126003))

(declare-fun b!1042099 () Bool)

(declare-fun e!590308 () Bool)

(declare-fun call!44159 () Bool)

(assert (=> b!1042099 (= e!590308 call!44159)))

(declare-fun b!1042101 () Bool)

(declare-fun e!590309 () Bool)

(assert (=> b!1042101 (= e!590309 call!44159)))

(declare-fun b!1042100 () Bool)

(assert (=> b!1042100 (= e!590309 e!590308)))

(declare-fun lt!459319 () (_ BitVec 64))

(assert (=> b!1042100 (= lt!459319 (select (arr!31593 (array!65677 (store (arr!31593 (_keys!11601 thiss!1427)) (index!41623 lt!459232) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32128 (_keys!11601 thiss!1427)))) #b00000000000000000000000000000000))))

(declare-fun lt!459318 () Unit!34042)

(assert (=> b!1042100 (= lt!459318 (lemmaArrayContainsFromImpliesContainsFromZero!0 (array!65677 (store (arr!31593 (_keys!11601 thiss!1427)) (index!41623 lt!459232) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32128 (_keys!11601 thiss!1427))) lt!459319 #b00000000000000000000000000000000))))

(assert (=> b!1042100 (arrayContainsKey!0 (array!65677 (store (arr!31593 (_keys!11601 thiss!1427)) (index!41623 lt!459232) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32128 (_keys!11601 thiss!1427))) lt!459319 #b00000000000000000000000000000000)))

(declare-fun lt!459320 () Unit!34042)

(assert (=> b!1042100 (= lt!459320 lt!459318)))

(declare-fun res!694498 () Bool)

(assert (=> b!1042100 (= res!694498 (= (seekEntryOrOpen!0 (select (arr!31593 (array!65677 (store (arr!31593 (_keys!11601 thiss!1427)) (index!41623 lt!459232) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32128 (_keys!11601 thiss!1427)))) #b00000000000000000000000000000000) (array!65677 (store (arr!31593 (_keys!11601 thiss!1427)) (index!41623 lt!459232) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32128 (_keys!11601 thiss!1427))) (mask!30402 thiss!1427)) (Found!9813 #b00000000000000000000000000000000)))))

(assert (=> b!1042100 (=> (not res!694498) (not e!590308))))

(declare-fun d!126005 () Bool)

(declare-fun res!694497 () Bool)

(declare-fun e!590307 () Bool)

(assert (=> d!126005 (=> res!694497 e!590307)))

(assert (=> d!126005 (= res!694497 (bvsge #b00000000000000000000000000000000 (size!32128 (array!65677 (store (arr!31593 (_keys!11601 thiss!1427)) (index!41623 lt!459232) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32128 (_keys!11601 thiss!1427))))))))

(assert (=> d!126005 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!65677 (store (arr!31593 (_keys!11601 thiss!1427)) (index!41623 lt!459232) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32128 (_keys!11601 thiss!1427))) (mask!30402 thiss!1427)) e!590307)))

(declare-fun b!1042102 () Bool)

(assert (=> b!1042102 (= e!590307 e!590309)))

(declare-fun c!105741 () Bool)

(assert (=> b!1042102 (= c!105741 (validKeyInArray!0 (select (arr!31593 (array!65677 (store (arr!31593 (_keys!11601 thiss!1427)) (index!41623 lt!459232) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32128 (_keys!11601 thiss!1427)))) #b00000000000000000000000000000000)))))

(declare-fun bm!44156 () Bool)

(assert (=> bm!44156 (= call!44159 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (array!65677 (store (arr!31593 (_keys!11601 thiss!1427)) (index!41623 lt!459232) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32128 (_keys!11601 thiss!1427))) (mask!30402 thiss!1427)))))

(assert (= (and d!126005 (not res!694497)) b!1042102))

(assert (= (and b!1042102 c!105741) b!1042100))

(assert (= (and b!1042102 (not c!105741)) b!1042101))

(assert (= (and b!1042100 res!694498) b!1042099))

(assert (= (or b!1042099 b!1042101) bm!44156))

(assert (=> b!1042100 m!961585))

(declare-fun m!961601 () Bool)

(assert (=> b!1042100 m!961601))

(declare-fun m!961603 () Bool)

(assert (=> b!1042100 m!961603))

(assert (=> b!1042100 m!961585))

(declare-fun m!961605 () Bool)

(assert (=> b!1042100 m!961605))

(assert (=> b!1042102 m!961585))

(assert (=> b!1042102 m!961585))

(assert (=> b!1042102 m!961587))

(declare-fun m!961607 () Bool)

(assert (=> bm!44156 m!961607))

(assert (=> b!1041999 d!126005))

(declare-fun b!1042103 () Bool)

(declare-fun e!590311 () (_ BitVec 32))

(declare-fun e!590310 () (_ BitVec 32))

(assert (=> b!1042103 (= e!590311 e!590310)))

(declare-fun c!105742 () Bool)

(assert (=> b!1042103 (= c!105742 (validKeyInArray!0 (select (arr!31593 (_keys!11601 thiss!1427)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1042104 () Bool)

(declare-fun call!44160 () (_ BitVec 32))

(assert (=> b!1042104 (= e!590310 (bvadd #b00000000000000000000000000000001 call!44160))))

(declare-fun b!1042105 () Bool)

(assert (=> b!1042105 (= e!590310 call!44160)))

(declare-fun d!126007 () Bool)

(declare-fun lt!459321 () (_ BitVec 32))

(assert (=> d!126007 (and (bvsge lt!459321 #b00000000000000000000000000000000) (bvsle lt!459321 (bvsub (size!32128 (_keys!11601 thiss!1427)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> d!126007 (= lt!459321 e!590311)))

(declare-fun c!105743 () Bool)

(assert (=> d!126007 (= c!105743 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32128 (_keys!11601 thiss!1427))))))

(assert (=> d!126007 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32128 (_keys!11601 thiss!1427))) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (size!32128 (_keys!11601 thiss!1427)) (size!32128 (_keys!11601 thiss!1427))))))

(assert (=> d!126007 (= (arrayCountValidKeys!0 (_keys!11601 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32128 (_keys!11601 thiss!1427))) lt!459321)))

(declare-fun bm!44157 () Bool)

(assert (=> bm!44157 (= call!44160 (arrayCountValidKeys!0 (_keys!11601 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!32128 (_keys!11601 thiss!1427))))))

(declare-fun b!1042106 () Bool)

(assert (=> b!1042106 (= e!590311 #b00000000000000000000000000000000)))

(assert (= (and d!126007 c!105743) b!1042106))

(assert (= (and d!126007 (not c!105743)) b!1042103))

(assert (= (and b!1042103 c!105742) b!1042104))

(assert (= (and b!1042103 (not c!105742)) b!1042105))

(assert (= (or b!1042104 b!1042105) bm!44157))

(declare-fun m!961609 () Bool)

(assert (=> b!1042103 m!961609))

(assert (=> b!1042103 m!961609))

(declare-fun m!961611 () Bool)

(assert (=> b!1042103 m!961611))

(declare-fun m!961613 () Bool)

(assert (=> bm!44157 m!961613))

(assert (=> bm!44149 d!126007))

(declare-fun d!126009 () Bool)

(assert (=> d!126009 (= (arrayCountValidKeys!0 (array!65677 (store (arr!31593 (_keys!11601 thiss!1427)) (index!41623 lt!459232) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32128 (_keys!11601 thiss!1427))) #b00000000000000000000000000000000 (size!32128 (_keys!11601 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11601 thiss!1427) #b00000000000000000000000000000000 (size!32128 (_keys!11601 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> d!126009 true))

(declare-fun _$79!32 () Unit!34042)

(assert (=> d!126009 (= (choose!82 (_keys!11601 thiss!1427) (index!41623 lt!459232) #b1000000000000000000000000000000000000000000000000000000000000000) _$79!32)))

(declare-fun bs!30471 () Bool)

(assert (= bs!30471 d!126009))

(assert (=> bs!30471 m!961445))

(assert (=> bs!30471 m!961499))

(assert (=> bs!30471 m!961431))

(assert (=> d!125969 d!126009))

(declare-fun d!126011 () Bool)

(assert (=> d!126011 (arrayNoDuplicates!0 (array!65677 (store (arr!31593 (_keys!11601 thiss!1427)) (index!41623 lt!459232) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32128 (_keys!11601 thiss!1427))) #b00000000000000000000000000000000 Nil!22094)))

(assert (=> d!126011 true))

(declare-fun _$66!56 () Unit!34042)

(assert (=> d!126011 (= (choose!53 (_keys!11601 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41623 lt!459232) #b00000000000000000000000000000000 Nil!22094) _$66!56)))

(declare-fun bs!30472 () Bool)

(assert (= bs!30472 d!126011))

(assert (=> bs!30472 m!961445))

(assert (=> bs!30472 m!961511))

(assert (=> d!125971 d!126011))

(declare-fun b!1042107 () Bool)

(declare-fun e!590314 () Bool)

(declare-fun call!44161 () Bool)

(assert (=> b!1042107 (= e!590314 call!44161)))

(declare-fun bm!44158 () Bool)

(declare-fun c!105744 () Bool)

(assert (=> bm!44158 (= call!44161 (arrayNoDuplicates!0 (_keys!11601 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!105744 (Cons!22093 (select (arr!31593 (_keys!11601 thiss!1427)) #b00000000000000000000000000000000) Nil!22094) Nil!22094)))))

(declare-fun d!126013 () Bool)

(declare-fun res!694499 () Bool)

(declare-fun e!590312 () Bool)

(assert (=> d!126013 (=> res!694499 e!590312)))

(assert (=> d!126013 (= res!694499 (bvsge #b00000000000000000000000000000000 (size!32128 (_keys!11601 thiss!1427))))))

(assert (=> d!126013 (= (arrayNoDuplicates!0 (_keys!11601 thiss!1427) #b00000000000000000000000000000000 Nil!22094) e!590312)))

(declare-fun b!1042108 () Bool)

(declare-fun e!590313 () Bool)

(assert (=> b!1042108 (= e!590312 e!590313)))

(declare-fun res!694501 () Bool)

(assert (=> b!1042108 (=> (not res!694501) (not e!590313))))

(declare-fun e!590315 () Bool)

(assert (=> b!1042108 (= res!694501 (not e!590315))))

(declare-fun res!694500 () Bool)

(assert (=> b!1042108 (=> (not res!694500) (not e!590315))))

(assert (=> b!1042108 (= res!694500 (validKeyInArray!0 (select (arr!31593 (_keys!11601 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1042109 () Bool)

(assert (=> b!1042109 (= e!590314 call!44161)))

(declare-fun b!1042110 () Bool)

(assert (=> b!1042110 (= e!590313 e!590314)))

(assert (=> b!1042110 (= c!105744 (validKeyInArray!0 (select (arr!31593 (_keys!11601 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1042111 () Bool)

(assert (=> b!1042111 (= e!590315 (contains!6079 Nil!22094 (select (arr!31593 (_keys!11601 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (= (and d!126013 (not res!694499)) b!1042108))

(assert (= (and b!1042108 res!694500) b!1042111))

(assert (= (and b!1042108 res!694501) b!1042110))

(assert (= (and b!1042110 c!105744) b!1042109))

(assert (= (and b!1042110 (not c!105744)) b!1042107))

(assert (= (or b!1042109 b!1042107) bm!44158))

(assert (=> bm!44158 m!961513))

(declare-fun m!961615 () Bool)

(assert (=> bm!44158 m!961615))

(assert (=> b!1042108 m!961513))

(assert (=> b!1042108 m!961513))

(assert (=> b!1042108 m!961515))

(assert (=> b!1042110 m!961513))

(assert (=> b!1042110 m!961513))

(assert (=> b!1042110 m!961515))

(assert (=> b!1042111 m!961513))

(assert (=> b!1042111 m!961513))

(declare-fun m!961617 () Bool)

(assert (=> b!1042111 m!961617))

(assert (=> b!1041944 d!126013))

(declare-fun b!1042130 () Bool)

(declare-fun e!590326 () SeekEntryResult!9813)

(assert (=> b!1042130 (= e!590326 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!909 (mask!30402 thiss!1427)) #b00000000000000000000000000000000 (mask!30402 thiss!1427)) key!909 (_keys!11601 thiss!1427) (mask!30402 thiss!1427)))))

(declare-fun b!1042131 () Bool)

(declare-fun e!590329 () SeekEntryResult!9813)

(assert (=> b!1042131 (= e!590329 (Intermediate!9813 true (toIndex!0 key!909 (mask!30402 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun b!1042132 () Bool)

(assert (=> b!1042132 (= e!590326 (Intermediate!9813 false (toIndex!0 key!909 (mask!30402 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun d!126015 () Bool)

(declare-fun e!590328 () Bool)

(assert (=> d!126015 e!590328))

(declare-fun c!105752 () Bool)

(declare-fun lt!459327 () SeekEntryResult!9813)

(assert (=> d!126015 (= c!105752 (and ((_ is Intermediate!9813) lt!459327) (undefined!10625 lt!459327)))))

(assert (=> d!126015 (= lt!459327 e!590329)))

(declare-fun c!105753 () Bool)

(assert (=> d!126015 (= c!105753 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!459326 () (_ BitVec 64))

(assert (=> d!126015 (= lt!459326 (select (arr!31593 (_keys!11601 thiss!1427)) (toIndex!0 key!909 (mask!30402 thiss!1427))))))

(assert (=> d!126015 (validMask!0 (mask!30402 thiss!1427))))

(assert (=> d!126015 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!909 (mask!30402 thiss!1427)) key!909 (_keys!11601 thiss!1427) (mask!30402 thiss!1427)) lt!459327)))

(declare-fun b!1042133 () Bool)

(assert (=> b!1042133 (= e!590328 (bvsge (x!93019 lt!459327) #b01111111111111111111111111111110))))

(declare-fun b!1042134 () Bool)

(declare-fun e!590330 () Bool)

(assert (=> b!1042134 (= e!590328 e!590330)))

(declare-fun res!694510 () Bool)

(assert (=> b!1042134 (= res!694510 (and ((_ is Intermediate!9813) lt!459327) (not (undefined!10625 lt!459327)) (bvslt (x!93019 lt!459327) #b01111111111111111111111111111110) (bvsge (x!93019 lt!459327) #b00000000000000000000000000000000) (bvsge (x!93019 lt!459327) #b00000000000000000000000000000000)))))

(assert (=> b!1042134 (=> (not res!694510) (not e!590330))))

(declare-fun b!1042135 () Bool)

(assert (=> b!1042135 (and (bvsge (index!41624 lt!459327) #b00000000000000000000000000000000) (bvslt (index!41624 lt!459327) (size!32128 (_keys!11601 thiss!1427))))))

(declare-fun e!590327 () Bool)

(assert (=> b!1042135 (= e!590327 (= (select (arr!31593 (_keys!11601 thiss!1427)) (index!41624 lt!459327)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1042136 () Bool)

(assert (=> b!1042136 (= e!590329 e!590326)))

(declare-fun c!105751 () Bool)

(assert (=> b!1042136 (= c!105751 (or (= lt!459326 key!909) (= (bvadd lt!459326 lt!459326) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1042137 () Bool)

(assert (=> b!1042137 (and (bvsge (index!41624 lt!459327) #b00000000000000000000000000000000) (bvslt (index!41624 lt!459327) (size!32128 (_keys!11601 thiss!1427))))))

(declare-fun res!694509 () Bool)

(assert (=> b!1042137 (= res!694509 (= (select (arr!31593 (_keys!11601 thiss!1427)) (index!41624 lt!459327)) key!909))))

(assert (=> b!1042137 (=> res!694509 e!590327)))

(assert (=> b!1042137 (= e!590330 e!590327)))

(declare-fun b!1042138 () Bool)

(assert (=> b!1042138 (and (bvsge (index!41624 lt!459327) #b00000000000000000000000000000000) (bvslt (index!41624 lt!459327) (size!32128 (_keys!11601 thiss!1427))))))

(declare-fun res!694508 () Bool)

(assert (=> b!1042138 (= res!694508 (= (select (arr!31593 (_keys!11601 thiss!1427)) (index!41624 lt!459327)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1042138 (=> res!694508 e!590327)))

(assert (= (and d!126015 c!105753) b!1042131))

(assert (= (and d!126015 (not c!105753)) b!1042136))

(assert (= (and b!1042136 c!105751) b!1042132))

(assert (= (and b!1042136 (not c!105751)) b!1042130))

(assert (= (and d!126015 c!105752) b!1042133))

(assert (= (and d!126015 (not c!105752)) b!1042134))

(assert (= (and b!1042134 res!694510) b!1042137))

(assert (= (and b!1042137 (not res!694509)) b!1042138))

(assert (= (and b!1042138 (not res!694508)) b!1042135))

(assert (=> b!1042130 m!961537))

(declare-fun m!961619 () Bool)

(assert (=> b!1042130 m!961619))

(assert (=> b!1042130 m!961619))

(declare-fun m!961621 () Bool)

(assert (=> b!1042130 m!961621))

(declare-fun m!961623 () Bool)

(assert (=> b!1042135 m!961623))

(assert (=> b!1042138 m!961623))

(assert (=> d!126015 m!961537))

(declare-fun m!961625 () Bool)

(assert (=> d!126015 m!961625))

(assert (=> d!126015 m!961427))

(assert (=> b!1042137 m!961623))

(assert (=> d!125981 d!126015))

(declare-fun d!126017 () Bool)

(declare-fun lt!459333 () (_ BitVec 32))

(declare-fun lt!459332 () (_ BitVec 32))

(assert (=> d!126017 (= lt!459333 (bvmul (bvxor lt!459332 (bvlshr lt!459332 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!126017 (= lt!459332 ((_ extract 31 0) (bvand (bvxor key!909 (bvlshr key!909 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!126017 (and (bvsge (mask!30402 thiss!1427) #b00000000000000000000000000000000) (let ((res!694511 (let ((h!23302 ((_ extract 31 0) (bvand (bvxor key!909 (bvlshr key!909 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!93037 (bvmul (bvxor h!23302 (bvlshr h!23302 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!93037 (bvlshr x!93037 #b00000000000000000000000000001101)) (mask!30402 thiss!1427)))))) (and (bvslt res!694511 (bvadd (mask!30402 thiss!1427) #b00000000000000000000000000000001)) (bvsge res!694511 #b00000000000000000000000000000000))))))

(assert (=> d!126017 (= (toIndex!0 key!909 (mask!30402 thiss!1427)) (bvand (bvxor lt!459333 (bvlshr lt!459333 #b00000000000000000000000000001101)) (mask!30402 thiss!1427)))))

(assert (=> d!125981 d!126017))

(assert (=> d!125981 d!125965))

(declare-fun d!126019 () Bool)

(assert (=> d!126019 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!65677 (store (arr!31593 (_keys!11601 thiss!1427)) (index!41623 lt!459232) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32128 (_keys!11601 thiss!1427))) (mask!30402 thiss!1427))))

(assert (=> d!126019 true))

(declare-fun _$44!30 () Unit!34042)

(assert (=> d!126019 (= (choose!25 (_keys!11601 thiss!1427) (index!41623 lt!459232) (mask!30402 thiss!1427)) _$44!30)))

(declare-fun bs!30473 () Bool)

(assert (= bs!30473 d!126019))

(assert (=> bs!30473 m!961445))

(assert (=> bs!30473 m!961521))

(assert (=> d!125975 d!126019))

(assert (=> d!125975 d!125965))

(declare-fun b!1042139 () Bool)

(declare-fun e!590333 () Bool)

(declare-fun call!44162 () Bool)

(assert (=> b!1042139 (= e!590333 call!44162)))

(declare-fun c!105754 () Bool)

(declare-fun bm!44159 () Bool)

(assert (=> bm!44159 (= call!44162 (arrayNoDuplicates!0 (array!65677 (store (arr!31593 (_keys!11601 thiss!1427)) (index!41623 lt!459232) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32128 (_keys!11601 thiss!1427))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!105754 (Cons!22093 (select (arr!31593 (array!65677 (store (arr!31593 (_keys!11601 thiss!1427)) (index!41623 lt!459232) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32128 (_keys!11601 thiss!1427)))) #b00000000000000000000000000000000) Nil!22094) Nil!22094)))))

(declare-fun d!126021 () Bool)

(declare-fun res!694512 () Bool)

(declare-fun e!590331 () Bool)

(assert (=> d!126021 (=> res!694512 e!590331)))

(assert (=> d!126021 (= res!694512 (bvsge #b00000000000000000000000000000000 (size!32128 (array!65677 (store (arr!31593 (_keys!11601 thiss!1427)) (index!41623 lt!459232) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32128 (_keys!11601 thiss!1427))))))))

(assert (=> d!126021 (= (arrayNoDuplicates!0 (array!65677 (store (arr!31593 (_keys!11601 thiss!1427)) (index!41623 lt!459232) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32128 (_keys!11601 thiss!1427))) #b00000000000000000000000000000000 Nil!22094) e!590331)))

(declare-fun b!1042140 () Bool)

(declare-fun e!590332 () Bool)

(assert (=> b!1042140 (= e!590331 e!590332)))

(declare-fun res!694514 () Bool)

(assert (=> b!1042140 (=> (not res!694514) (not e!590332))))

(declare-fun e!590334 () Bool)

(assert (=> b!1042140 (= res!694514 (not e!590334))))

(declare-fun res!694513 () Bool)

(assert (=> b!1042140 (=> (not res!694513) (not e!590334))))

(assert (=> b!1042140 (= res!694513 (validKeyInArray!0 (select (arr!31593 (array!65677 (store (arr!31593 (_keys!11601 thiss!1427)) (index!41623 lt!459232) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32128 (_keys!11601 thiss!1427)))) #b00000000000000000000000000000000)))))

(declare-fun b!1042141 () Bool)

(assert (=> b!1042141 (= e!590333 call!44162)))

(declare-fun b!1042142 () Bool)

(assert (=> b!1042142 (= e!590332 e!590333)))

(assert (=> b!1042142 (= c!105754 (validKeyInArray!0 (select (arr!31593 (array!65677 (store (arr!31593 (_keys!11601 thiss!1427)) (index!41623 lt!459232) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32128 (_keys!11601 thiss!1427)))) #b00000000000000000000000000000000)))))

(declare-fun b!1042143 () Bool)

(assert (=> b!1042143 (= e!590334 (contains!6079 Nil!22094 (select (arr!31593 (array!65677 (store (arr!31593 (_keys!11601 thiss!1427)) (index!41623 lt!459232) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32128 (_keys!11601 thiss!1427)))) #b00000000000000000000000000000000)))))

(assert (= (and d!126021 (not res!694512)) b!1042140))

(assert (= (and b!1042140 res!694513) b!1042143))

(assert (= (and b!1042140 res!694514) b!1042142))

(assert (= (and b!1042142 c!105754) b!1042141))

(assert (= (and b!1042142 (not c!105754)) b!1042139))

(assert (= (or b!1042141 b!1042139) bm!44159))

(assert (=> bm!44159 m!961585))

(declare-fun m!961627 () Bool)

(assert (=> bm!44159 m!961627))

(assert (=> b!1042140 m!961585))

(assert (=> b!1042140 m!961585))

(assert (=> b!1042140 m!961587))

(assert (=> b!1042142 m!961585))

(assert (=> b!1042142 m!961585))

(assert (=> b!1042142 m!961587))

(assert (=> b!1042143 m!961585))

(assert (=> b!1042143 m!961585))

(declare-fun m!961629 () Bool)

(assert (=> b!1042143 m!961629))

(assert (=> b!1041992 d!126021))

(declare-fun d!126023 () Bool)

(declare-fun res!694523 () Bool)

(declare-fun e!590337 () Bool)

(assert (=> d!126023 (=> (not res!694523) (not e!590337))))

(assert (=> d!126023 (= res!694523 (validMask!0 (mask!30402 thiss!1427)))))

(assert (=> d!126023 (= (simpleValid!439 thiss!1427) e!590337)))

(declare-fun b!1042152 () Bool)

(declare-fun res!694526 () Bool)

(assert (=> b!1042152 (=> (not res!694526) (not e!590337))))

(assert (=> b!1042152 (= res!694526 (and (= (size!32129 (_values!6384 thiss!1427)) (bvadd (mask!30402 thiss!1427) #b00000000000000000000000000000001)) (= (size!32128 (_keys!11601 thiss!1427)) (size!32129 (_values!6384 thiss!1427))) (bvsge (_size!3034 thiss!1427) #b00000000000000000000000000000000) (bvsle (_size!3034 thiss!1427) (bvadd (mask!30402 thiss!1427) #b00000000000000000000000000000001))))))

(declare-fun b!1042155 () Bool)

(assert (=> b!1042155 (= e!590337 (and (bvsge (extraKeys!6089 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!6089 thiss!1427) #b00000000000000000000000000000011) (bvsge (_vacant!3034 thiss!1427) #b00000000000000000000000000000000)))))

(declare-fun b!1042154 () Bool)

(declare-fun res!694525 () Bool)

(assert (=> b!1042154 (=> (not res!694525) (not e!590337))))

(declare-fun size!32132 (LongMapFixedSize!5958) (_ BitVec 32))

(assert (=> b!1042154 (= res!694525 (= (size!32132 thiss!1427) (bvadd (_size!3034 thiss!1427) (bvsdiv (bvadd (extraKeys!6089 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!1042153 () Bool)

(declare-fun res!694524 () Bool)

(assert (=> b!1042153 (=> (not res!694524) (not e!590337))))

(assert (=> b!1042153 (= res!694524 (bvsge (size!32132 thiss!1427) (_size!3034 thiss!1427)))))

(assert (= (and d!126023 res!694523) b!1042152))

(assert (= (and b!1042152 res!694526) b!1042153))

(assert (= (and b!1042153 res!694524) b!1042154))

(assert (= (and b!1042154 res!694525) b!1042155))

(assert (=> d!126023 m!961427))

(declare-fun m!961631 () Bool)

(assert (=> b!1042154 m!961631))

(assert (=> b!1042153 m!961631))

(assert (=> d!125959 d!126023))

(assert (=> b!1041942 d!125973))

(declare-fun b!1042156 () Bool)

(declare-fun e!590339 () Bool)

(declare-fun call!44163 () Bool)

(assert (=> b!1042156 (= e!590339 call!44163)))

(declare-fun b!1042158 () Bool)

(declare-fun e!590340 () Bool)

(assert (=> b!1042158 (= e!590340 call!44163)))

(declare-fun b!1042157 () Bool)

(assert (=> b!1042157 (= e!590340 e!590339)))

(declare-fun lt!459335 () (_ BitVec 64))

(assert (=> b!1042157 (= lt!459335 (select (arr!31593 (_keys!11601 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun lt!459334 () Unit!34042)

(assert (=> b!1042157 (= lt!459334 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!11601 thiss!1427) lt!459335 #b00000000000000000000000000000000))))

(assert (=> b!1042157 (arrayContainsKey!0 (_keys!11601 thiss!1427) lt!459335 #b00000000000000000000000000000000)))

(declare-fun lt!459336 () Unit!34042)

(assert (=> b!1042157 (= lt!459336 lt!459334)))

(declare-fun res!694528 () Bool)

(assert (=> b!1042157 (= res!694528 (= (seekEntryOrOpen!0 (select (arr!31593 (_keys!11601 thiss!1427)) #b00000000000000000000000000000000) (_keys!11601 thiss!1427) (mask!30402 thiss!1427)) (Found!9813 #b00000000000000000000000000000000)))))

(assert (=> b!1042157 (=> (not res!694528) (not e!590339))))

(declare-fun d!126025 () Bool)

(declare-fun res!694527 () Bool)

(declare-fun e!590338 () Bool)

(assert (=> d!126025 (=> res!694527 e!590338)))

(assert (=> d!126025 (= res!694527 (bvsge #b00000000000000000000000000000000 (size!32128 (_keys!11601 thiss!1427))))))

(assert (=> d!126025 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11601 thiss!1427) (mask!30402 thiss!1427)) e!590338)))

(declare-fun b!1042159 () Bool)

(assert (=> b!1042159 (= e!590338 e!590340)))

(declare-fun c!105755 () Bool)

(assert (=> b!1042159 (= c!105755 (validKeyInArray!0 (select (arr!31593 (_keys!11601 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun bm!44160 () Bool)

(assert (=> bm!44160 (= call!44163 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!11601 thiss!1427) (mask!30402 thiss!1427)))))

(assert (= (and d!126025 (not res!694527)) b!1042159))

(assert (= (and b!1042159 c!105755) b!1042157))

(assert (= (and b!1042159 (not c!105755)) b!1042158))

(assert (= (and b!1042157 res!694528) b!1042156))

(assert (= (or b!1042156 b!1042158) bm!44160))

(assert (=> b!1042157 m!961513))

(declare-fun m!961633 () Bool)

(assert (=> b!1042157 m!961633))

(declare-fun m!961635 () Bool)

(assert (=> b!1042157 m!961635))

(assert (=> b!1042157 m!961513))

(declare-fun m!961637 () Bool)

(assert (=> b!1042157 m!961637))

(assert (=> b!1042159 m!961513))

(assert (=> b!1042159 m!961513))

(assert (=> b!1042159 m!961515))

(declare-fun m!961639 () Bool)

(assert (=> bm!44160 m!961639))

(assert (=> b!1041943 d!126025))

(declare-fun d!126027 () Bool)

(declare-fun res!694529 () Bool)

(declare-fun e!590341 () Bool)

(assert (=> d!126027 (=> res!694529 e!590341)))

(assert (=> d!126027 (= res!694529 (= (select (arr!31593 (array!65677 (store (arr!31593 (_keys!11601 thiss!1427)) (index!41623 lt!459232) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32128 (_keys!11601 thiss!1427)))) #b00000000000000000000000000000000) key!909))))

(assert (=> d!126027 (= (arrayContainsKey!0 (array!65677 (store (arr!31593 (_keys!11601 thiss!1427)) (index!41623 lt!459232) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32128 (_keys!11601 thiss!1427))) key!909 #b00000000000000000000000000000000) e!590341)))

(declare-fun b!1042160 () Bool)

(declare-fun e!590342 () Bool)

(assert (=> b!1042160 (= e!590341 e!590342)))

(declare-fun res!694530 () Bool)

(assert (=> b!1042160 (=> (not res!694530) (not e!590342))))

(assert (=> b!1042160 (= res!694530 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32128 (array!65677 (store (arr!31593 (_keys!11601 thiss!1427)) (index!41623 lt!459232) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32128 (_keys!11601 thiss!1427))))))))

(declare-fun b!1042161 () Bool)

(assert (=> b!1042161 (= e!590342 (arrayContainsKey!0 (array!65677 (store (arr!31593 (_keys!11601 thiss!1427)) (index!41623 lt!459232) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32128 (_keys!11601 thiss!1427))) key!909 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!126027 (not res!694529)) b!1042160))

(assert (= (and b!1042160 res!694530) b!1042161))

(assert (=> d!126027 m!961585))

(declare-fun m!961641 () Bool)

(assert (=> b!1042161 m!961641))

(assert (=> b!1042002 d!126027))

(declare-fun d!126029 () Bool)

(assert (=> d!126029 (= (validKeyInArray!0 (select (arr!31593 (_keys!11601 thiss!1427)) (index!41623 lt!459232))) (and (not (= (select (arr!31593 (_keys!11601 thiss!1427)) (index!41623 lt!459232)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!31593 (_keys!11601 thiss!1427)) (index!41623 lt!459232)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1041986 d!126029))

(assert (=> b!1041976 d!125983))

(assert (=> b!1041959 d!125983))

(declare-fun d!126031 () Bool)

(assert (=> d!126031 (= (validKeyInArray!0 #b1000000000000000000000000000000000000000000000000000000000000000) false)))

(assert (=> b!1041987 d!126031))

(declare-fun d!126033 () Bool)

(assert (=> d!126033 (not (arrayContainsKey!0 (array!65677 (store (arr!31593 (_keys!11601 thiss!1427)) (index!41623 lt!459232) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32128 (_keys!11601 thiss!1427))) key!909 #b00000000000000000000000000000000))))

(assert (=> d!126033 true))

(declare-fun _$59!32 () Unit!34042)

(assert (=> d!126033 (= (choose!121 (_keys!11601 thiss!1427) (index!41623 lt!459232) key!909) _$59!32)))

(declare-fun bs!30474 () Bool)

(assert (= bs!30474 d!126033))

(assert (=> bs!30474 m!961445))

(assert (=> bs!30474 m!961525))

(assert (=> d!125977 d!126033))

(declare-fun b!1042162 () Bool)

(declare-fun e!590345 () Bool)

(declare-fun call!44164 () Bool)

(assert (=> b!1042162 (= e!590345 call!44164)))

(declare-fun c!105756 () Bool)

(declare-fun bm!44161 () Bool)

(assert (=> bm!44161 (= call!44164 (arrayNoDuplicates!0 lt!459236 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!105756 (Cons!22093 (select (arr!31593 lt!459236) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!105703 (Cons!22093 (select (arr!31593 lt!459236) #b00000000000000000000000000000000) Nil!22094) Nil!22094)) (ite c!105703 (Cons!22093 (select (arr!31593 lt!459236) #b00000000000000000000000000000000) Nil!22094) Nil!22094))))))

(declare-fun d!126035 () Bool)

(declare-fun res!694531 () Bool)

(declare-fun e!590343 () Bool)

(assert (=> d!126035 (=> res!694531 e!590343)))

(assert (=> d!126035 (= res!694531 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32128 lt!459236)))))

(assert (=> d!126035 (= (arrayNoDuplicates!0 lt!459236 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!105703 (Cons!22093 (select (arr!31593 lt!459236) #b00000000000000000000000000000000) Nil!22094) Nil!22094)) e!590343)))

(declare-fun b!1042163 () Bool)

(declare-fun e!590344 () Bool)

(assert (=> b!1042163 (= e!590343 e!590344)))

(declare-fun res!694533 () Bool)

(assert (=> b!1042163 (=> (not res!694533) (not e!590344))))

(declare-fun e!590346 () Bool)

(assert (=> b!1042163 (= res!694533 (not e!590346))))

(declare-fun res!694532 () Bool)

(assert (=> b!1042163 (=> (not res!694532) (not e!590346))))

(assert (=> b!1042163 (= res!694532 (validKeyInArray!0 (select (arr!31593 lt!459236) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1042164 () Bool)

(assert (=> b!1042164 (= e!590345 call!44164)))

(declare-fun b!1042165 () Bool)

(assert (=> b!1042165 (= e!590344 e!590345)))

(assert (=> b!1042165 (= c!105756 (validKeyInArray!0 (select (arr!31593 lt!459236) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1042166 () Bool)

(assert (=> b!1042166 (= e!590346 (contains!6079 (ite c!105703 (Cons!22093 (select (arr!31593 lt!459236) #b00000000000000000000000000000000) Nil!22094) Nil!22094) (select (arr!31593 lt!459236) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!126035 (not res!694531)) b!1042163))

(assert (= (and b!1042163 res!694532) b!1042166))

(assert (= (and b!1042163 res!694533) b!1042165))

(assert (= (and b!1042165 c!105756) b!1042164))

(assert (= (and b!1042165 (not c!105756)) b!1042162))

(assert (= (or b!1042164 b!1042162) bm!44161))

(assert (=> bm!44161 m!961547))

(declare-fun m!961643 () Bool)

(assert (=> bm!44161 m!961643))

(assert (=> b!1042163 m!961547))

(assert (=> b!1042163 m!961547))

(assert (=> b!1042163 m!961555))

(assert (=> b!1042165 m!961547))

(assert (=> b!1042165 m!961547))

(assert (=> b!1042165 m!961555))

(assert (=> b!1042166 m!961547))

(assert (=> b!1042166 m!961547))

(declare-fun m!961645 () Bool)

(assert (=> b!1042166 m!961645))

(assert (=> bm!44148 d!126035))

(assert (=> b!1041974 d!125983))

(declare-fun condMapEmpty!38765 () Bool)

(declare-fun mapDefault!38765 () ValueCell!11682)

(assert (=> mapNonEmpty!38764 (= condMapEmpty!38765 (= mapRest!38764 ((as const (Array (_ BitVec 32) ValueCell!11682)) mapDefault!38765)))))

(declare-fun e!590348 () Bool)

(declare-fun mapRes!38765 () Bool)

(assert (=> mapNonEmpty!38764 (= tp!74382 (and e!590348 mapRes!38765))))

(declare-fun mapIsEmpty!38765 () Bool)

(assert (=> mapIsEmpty!38765 mapRes!38765))

(declare-fun b!1042168 () Bool)

(assert (=> b!1042168 (= e!590348 tp_is_empty!24771)))

(declare-fun b!1042167 () Bool)

(declare-fun e!590347 () Bool)

(assert (=> b!1042167 (= e!590347 tp_is_empty!24771)))

(declare-fun mapNonEmpty!38765 () Bool)

(declare-fun tp!74383 () Bool)

(assert (=> mapNonEmpty!38765 (= mapRes!38765 (and tp!74383 e!590347))))

(declare-fun mapValue!38765 () ValueCell!11682)

(declare-fun mapKey!38765 () (_ BitVec 32))

(declare-fun mapRest!38765 () (Array (_ BitVec 32) ValueCell!11682))

(assert (=> mapNonEmpty!38765 (= mapRest!38764 (store mapRest!38765 mapKey!38765 mapValue!38765))))

(assert (= (and mapNonEmpty!38764 condMapEmpty!38765) mapIsEmpty!38765))

(assert (= (and mapNonEmpty!38764 (not condMapEmpty!38765)) mapNonEmpty!38765))

(assert (= (and mapNonEmpty!38765 ((_ is ValueCellFull!11682) mapValue!38765)) b!1042167))

(assert (= (and mapNonEmpty!38764 ((_ is ValueCellFull!11682) mapDefault!38765)) b!1042168))

(declare-fun m!961647 () Bool)

(assert (=> mapNonEmpty!38765 m!961647))

(check-sat (not b!1042103) (not bm!44154) (not b!1042110) (not b!1042089) (not b!1042067) (not d!126011) (not d!125989) (not d!126015) (not b!1042165) (not b!1042159) (not b!1042142) (not bm!44161) (not b!1042163) (not bm!44155) (not d!125991) (not d!126019) (not b!1042154) (not b!1042044) (not mapNonEmpty!38765) (not b!1042143) (not b!1042095) tp_is_empty!24771 (not b!1042111) (not bm!44153) (not d!125995) (not b!1042052) (not b!1042050) (not b!1042166) (not d!126009) (not b!1042072) (not b!1042157) (not bm!44160) (not b!1042108) (not d!126023) (not b!1042130) (not b!1042100) (not b!1042102) (not d!126001) (not b!1042161) (not b!1042073) b_and!33601 (not b!1042153) (not d!126033) (not b_next!21051) (not bm!44156) (not b!1042042) (not bm!44158) (not bm!44159) (not b!1042140) (not bm!44157))
(check-sat b_and!33601 (not b_next!21051))
