; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!91554 () Bool)

(assert start!91554)

(declare-fun b!1042411 () Bool)

(declare-fun b_free!21063 () Bool)

(declare-fun b_next!21063 () Bool)

(assert (=> b!1042411 (= b_free!21063 (not b_next!21063))))

(declare-fun tp!74416 () Bool)

(declare-fun b_and!33613 () Bool)

(assert (=> b!1042411 (= tp!74416 b_and!33613)))

(declare-fun b!1042409 () Bool)

(declare-fun e!590534 () Bool)

(declare-fun e!590532 () Bool)

(assert (=> b!1042409 (= e!590534 e!590532)))

(declare-fun res!694664 () Bool)

(assert (=> b!1042409 (=> (not res!694664) (not e!590532))))

(declare-datatypes ((SeekEntryResult!9817 0))(
  ( (MissingZero!9817 (index!41638 (_ BitVec 32))) (Found!9817 (index!41639 (_ BitVec 32))) (Intermediate!9817 (undefined!10629 Bool) (index!41640 (_ BitVec 32)) (x!93064 (_ BitVec 32))) (Undefined!9817) (MissingVacant!9817 (index!41641 (_ BitVec 32))) )
))
(declare-fun lt!459462 () SeekEntryResult!9817)

(get-info :version)

(assert (=> b!1042409 (= res!694664 ((_ is Found!9817) lt!459462))))

(declare-fun key!909 () (_ BitVec 64))

(declare-datatypes ((V!37917 0))(
  ( (V!37918 (val!12442 Int)) )
))
(declare-datatypes ((ValueCell!11688 0))(
  ( (ValueCellFull!11688 (v!15034 V!37917)) (EmptyCell!11688) )
))
(declare-datatypes ((array!65704 0))(
  ( (array!65705 (arr!31605 (Array (_ BitVec 32) (_ BitVec 64))) (size!32141 (_ BitVec 32))) )
))
(declare-datatypes ((array!65706 0))(
  ( (array!65707 (arr!31606 (Array (_ BitVec 32) ValueCell!11688)) (size!32142 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5970 0))(
  ( (LongMapFixedSize!5971 (defaultEntry!6367 Int) (mask!30425 (_ BitVec 32)) (extraKeys!6095 (_ BitVec 32)) (zeroValue!6201 V!37917) (minValue!6201 V!37917) (_size!3040 (_ BitVec 32)) (_keys!11614 array!65704) (_values!6390 array!65706) (_vacant!3040 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5970)

(declare-fun seekEntry!0 ((_ BitVec 64) array!65704 (_ BitVec 32)) SeekEntryResult!9817)

(assert (=> b!1042409 (= lt!459462 (seekEntry!0 key!909 (_keys!11614 thiss!1427) (mask!30425 thiss!1427)))))

(declare-fun b!1042410 () Bool)

(declare-fun e!590538 () Bool)

(declare-fun tp_is_empty!24783 () Bool)

(assert (=> b!1042410 (= e!590538 tp_is_empty!24783)))

(declare-fun mapNonEmpty!38783 () Bool)

(declare-fun mapRes!38783 () Bool)

(declare-fun tp!74415 () Bool)

(assert (=> mapNonEmpty!38783 (= mapRes!38783 (and tp!74415 e!590538))))

(declare-fun mapRest!38783 () (Array (_ BitVec 32) ValueCell!11688))

(declare-fun mapKey!38783 () (_ BitVec 32))

(declare-fun mapValue!38783 () ValueCell!11688)

(assert (=> mapNonEmpty!38783 (= (arr!31606 (_values!6390 thiss!1427)) (store mapRest!38783 mapKey!38783 mapValue!38783))))

(declare-fun e!590533 () Bool)

(declare-fun e!590537 () Bool)

(declare-fun array_inv!24263 (array!65704) Bool)

(declare-fun array_inv!24264 (array!65706) Bool)

(assert (=> b!1042411 (= e!590533 (and tp!74416 tp_is_empty!24783 (array_inv!24263 (_keys!11614 thiss!1427)) (array_inv!24264 (_values!6390 thiss!1427)) e!590537))))

(declare-fun b!1042412 () Bool)

(declare-fun res!694667 () Bool)

(assert (=> b!1042412 (=> (not res!694667) (not e!590534))))

(assert (=> b!1042412 (= res!694667 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1042413 () Bool)

(declare-fun e!590535 () Bool)

(assert (=> b!1042413 (= e!590532 (not e!590535))))

(declare-fun res!694665 () Bool)

(assert (=> b!1042413 (=> res!694665 e!590535)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1042413 (= res!694665 (not (validMask!0 (mask!30425 thiss!1427))))))

(declare-fun lt!459466 () array!65704)

(declare-fun arrayContainsKey!0 (array!65704 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1042413 (not (arrayContainsKey!0 lt!459466 key!909 #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!34050 0))(
  ( (Unit!34051) )
))
(declare-fun lt!459463 () Unit!34050)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!65704 (_ BitVec 32) (_ BitVec 64)) Unit!34050)

(assert (=> b!1042413 (= lt!459463 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11614 thiss!1427) (index!41639 lt!459462) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65704 (_ BitVec 32)) Bool)

(assert (=> b!1042413 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!459466 (mask!30425 thiss!1427))))

(declare-fun lt!459465 () Unit!34050)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!65704 (_ BitVec 32) (_ BitVec 32)) Unit!34050)

(assert (=> b!1042413 (= lt!459465 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11614 thiss!1427) (index!41639 lt!459462) (mask!30425 thiss!1427)))))

(declare-datatypes ((List!22101 0))(
  ( (Nil!22098) (Cons!22097 (h!23305 (_ BitVec 64)) (t!31322 List!22101)) )
))
(declare-fun arrayNoDuplicates!0 (array!65704 (_ BitVec 32) List!22101) Bool)

(assert (=> b!1042413 (arrayNoDuplicates!0 lt!459466 #b00000000000000000000000000000000 Nil!22098)))

(declare-fun lt!459464 () Unit!34050)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!65704 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22101) Unit!34050)

(assert (=> b!1042413 (= lt!459464 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11614 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41639 lt!459462) #b00000000000000000000000000000000 Nil!22098))))

(declare-fun arrayCountValidKeys!0 (array!65704 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1042413 (= (arrayCountValidKeys!0 lt!459466 #b00000000000000000000000000000000 (size!32141 (_keys!11614 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11614 thiss!1427) #b00000000000000000000000000000000 (size!32141 (_keys!11614 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1042413 (= lt!459466 (array!65705 (store (arr!31605 (_keys!11614 thiss!1427)) (index!41639 lt!459462) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32141 (_keys!11614 thiss!1427))))))

(declare-fun lt!459461 () Unit!34050)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65704 (_ BitVec 32) (_ BitVec 64)) Unit!34050)

(assert (=> b!1042413 (= lt!459461 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11614 thiss!1427) (index!41639 lt!459462) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1042414 () Bool)

(assert (=> b!1042414 (= e!590535 (arrayNoDuplicates!0 (_keys!11614 thiss!1427) #b00000000000000000000000000000000 Nil!22098))))

(declare-fun res!694662 () Bool)

(assert (=> start!91554 (=> (not res!694662) (not e!590534))))

(declare-fun valid!2193 (LongMapFixedSize!5970) Bool)

(assert (=> start!91554 (= res!694662 (valid!2193 thiss!1427))))

(assert (=> start!91554 e!590534))

(assert (=> start!91554 e!590533))

(assert (=> start!91554 true))

(declare-fun b!1042415 () Bool)

(declare-fun res!694663 () Bool)

(assert (=> b!1042415 (=> res!694663 e!590535)))

(assert (=> b!1042415 (= res!694663 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11614 thiss!1427) (mask!30425 thiss!1427))))))

(declare-fun b!1042416 () Bool)

(declare-fun e!590536 () Bool)

(assert (=> b!1042416 (= e!590537 (and e!590536 mapRes!38783))))

(declare-fun condMapEmpty!38783 () Bool)

(declare-fun mapDefault!38783 () ValueCell!11688)

(assert (=> b!1042416 (= condMapEmpty!38783 (= (arr!31606 (_values!6390 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11688)) mapDefault!38783)))))

(declare-fun b!1042417 () Bool)

(assert (=> b!1042417 (= e!590536 tp_is_empty!24783)))

(declare-fun mapIsEmpty!38783 () Bool)

(assert (=> mapIsEmpty!38783 mapRes!38783))

(declare-fun b!1042418 () Bool)

(declare-fun res!694666 () Bool)

(assert (=> b!1042418 (=> res!694666 e!590535)))

(assert (=> b!1042418 (= res!694666 (or (not (= (size!32142 (_values!6390 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30425 thiss!1427)))) (not (= (size!32141 (_keys!11614 thiss!1427)) (size!32142 (_values!6390 thiss!1427)))) (bvslt (mask!30425 thiss!1427) #b00000000000000000000000000000000) (bvslt (extraKeys!6095 thiss!1427) #b00000000000000000000000000000000) (bvsgt (extraKeys!6095 thiss!1427) #b00000000000000000000000000000011)))))

(assert (= (and start!91554 res!694662) b!1042412))

(assert (= (and b!1042412 res!694667) b!1042409))

(assert (= (and b!1042409 res!694664) b!1042413))

(assert (= (and b!1042413 (not res!694665)) b!1042418))

(assert (= (and b!1042418 (not res!694666)) b!1042415))

(assert (= (and b!1042415 (not res!694663)) b!1042414))

(assert (= (and b!1042416 condMapEmpty!38783) mapIsEmpty!38783))

(assert (= (and b!1042416 (not condMapEmpty!38783)) mapNonEmpty!38783))

(assert (= (and mapNonEmpty!38783 ((_ is ValueCellFull!11688) mapValue!38783)) b!1042410))

(assert (= (and b!1042416 ((_ is ValueCellFull!11688) mapDefault!38783)) b!1042417))

(assert (= b!1042411 b!1042416))

(assert (= start!91554 b!1042411))

(declare-fun m!961859 () Bool)

(assert (=> b!1042415 m!961859))

(declare-fun m!961861 () Bool)

(assert (=> b!1042413 m!961861))

(declare-fun m!961863 () Bool)

(assert (=> b!1042413 m!961863))

(declare-fun m!961865 () Bool)

(assert (=> b!1042413 m!961865))

(declare-fun m!961867 () Bool)

(assert (=> b!1042413 m!961867))

(declare-fun m!961869 () Bool)

(assert (=> b!1042413 m!961869))

(declare-fun m!961871 () Bool)

(assert (=> b!1042413 m!961871))

(declare-fun m!961873 () Bool)

(assert (=> b!1042413 m!961873))

(declare-fun m!961875 () Bool)

(assert (=> b!1042413 m!961875))

(declare-fun m!961877 () Bool)

(assert (=> b!1042413 m!961877))

(declare-fun m!961879 () Bool)

(assert (=> b!1042413 m!961879))

(declare-fun m!961881 () Bool)

(assert (=> b!1042413 m!961881))

(declare-fun m!961883 () Bool)

(assert (=> start!91554 m!961883))

(declare-fun m!961885 () Bool)

(assert (=> b!1042411 m!961885))

(declare-fun m!961887 () Bool)

(assert (=> b!1042411 m!961887))

(declare-fun m!961889 () Bool)

(assert (=> mapNonEmpty!38783 m!961889))

(declare-fun m!961891 () Bool)

(assert (=> b!1042414 m!961891))

(declare-fun m!961893 () Bool)

(assert (=> b!1042409 m!961893))

(check-sat (not b!1042411) (not b!1042413) (not b!1042409) (not mapNonEmpty!38783) (not b!1042415) b_and!33613 (not b_next!21063) (not b!1042414) (not start!91554) tp_is_empty!24783)
(check-sat b_and!33613 (not b_next!21063))
(get-model)

(declare-fun b!1042459 () Bool)

(declare-fun e!590569 () Bool)

(assert (=> b!1042459 (= e!590569 (bvslt (size!32141 (_keys!11614 thiss!1427)) #b01111111111111111111111111111111))))

(declare-fun b!1042458 () Bool)

(declare-fun res!694695 () Bool)

(assert (=> b!1042458 (=> (not res!694695) (not e!590569))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1042458 (= res!694695 (not (validKeyInArray!0 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1042457 () Bool)

(declare-fun res!694697 () Bool)

(assert (=> b!1042457 (=> (not res!694697) (not e!590569))))

(assert (=> b!1042457 (= res!694697 (validKeyInArray!0 (select (arr!31605 (_keys!11614 thiss!1427)) (index!41639 lt!459462))))))

(declare-fun d!126071 () Bool)

(declare-fun e!590568 () Bool)

(assert (=> d!126071 e!590568))

(declare-fun res!694696 () Bool)

(assert (=> d!126071 (=> (not res!694696) (not e!590568))))

(assert (=> d!126071 (= res!694696 (and (bvsge (index!41639 lt!459462) #b00000000000000000000000000000000) (bvslt (index!41639 lt!459462) (size!32141 (_keys!11614 thiss!1427)))))))

(declare-fun lt!459487 () Unit!34050)

(declare-fun choose!82 (array!65704 (_ BitVec 32) (_ BitVec 64)) Unit!34050)

(assert (=> d!126071 (= lt!459487 (choose!82 (_keys!11614 thiss!1427) (index!41639 lt!459462) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!126071 e!590569))

(declare-fun res!694694 () Bool)

(assert (=> d!126071 (=> (not res!694694) (not e!590569))))

(assert (=> d!126071 (= res!694694 (and (bvsge (index!41639 lt!459462) #b00000000000000000000000000000000) (bvslt (index!41639 lt!459462) (size!32141 (_keys!11614 thiss!1427)))))))

(assert (=> d!126071 (= (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11614 thiss!1427) (index!41639 lt!459462) #b1000000000000000000000000000000000000000000000000000000000000000) lt!459487)))

(declare-fun b!1042460 () Bool)

(assert (=> b!1042460 (= e!590568 (= (arrayCountValidKeys!0 (array!65705 (store (arr!31605 (_keys!11614 thiss!1427)) (index!41639 lt!459462) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32141 (_keys!11614 thiss!1427))) #b00000000000000000000000000000000 (size!32141 (_keys!11614 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11614 thiss!1427) #b00000000000000000000000000000000 (size!32141 (_keys!11614 thiss!1427))) #b00000000000000000000000000000001)))))

(assert (= (and d!126071 res!694694) b!1042457))

(assert (= (and b!1042457 res!694697) b!1042458))

(assert (= (and b!1042458 res!694695) b!1042459))

(assert (= (and d!126071 res!694696) b!1042460))

(declare-fun m!961931 () Bool)

(assert (=> b!1042458 m!961931))

(declare-fun m!961933 () Bool)

(assert (=> b!1042457 m!961933))

(assert (=> b!1042457 m!961933))

(declare-fun m!961935 () Bool)

(assert (=> b!1042457 m!961935))

(declare-fun m!961937 () Bool)

(assert (=> d!126071 m!961937))

(assert (=> b!1042460 m!961867))

(declare-fun m!961939 () Bool)

(assert (=> b!1042460 m!961939))

(assert (=> b!1042460 m!961871))

(assert (=> b!1042413 d!126071))

(declare-fun b!1042471 () Bool)

(declare-fun e!590581 () Bool)

(declare-fun contains!6081 (List!22101 (_ BitVec 64)) Bool)

(assert (=> b!1042471 (= e!590581 (contains!6081 Nil!22098 (select (arr!31605 lt!459466) #b00000000000000000000000000000000)))))

(declare-fun b!1042472 () Bool)

(declare-fun e!590578 () Bool)

(declare-fun call!44178 () Bool)

(assert (=> b!1042472 (= e!590578 call!44178)))

(declare-fun bm!44175 () Bool)

(declare-fun c!105783 () Bool)

(assert (=> bm!44175 (= call!44178 (arrayNoDuplicates!0 lt!459466 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!105783 (Cons!22097 (select (arr!31605 lt!459466) #b00000000000000000000000000000000) Nil!22098) Nil!22098)))))

(declare-fun b!1042473 () Bool)

(declare-fun e!590579 () Bool)

(declare-fun e!590580 () Bool)

(assert (=> b!1042473 (= e!590579 e!590580)))

(declare-fun res!694705 () Bool)

(assert (=> b!1042473 (=> (not res!694705) (not e!590580))))

(assert (=> b!1042473 (= res!694705 (not e!590581))))

(declare-fun res!694704 () Bool)

(assert (=> b!1042473 (=> (not res!694704) (not e!590581))))

(assert (=> b!1042473 (= res!694704 (validKeyInArray!0 (select (arr!31605 lt!459466) #b00000000000000000000000000000000)))))

(declare-fun b!1042474 () Bool)

(assert (=> b!1042474 (= e!590580 e!590578)))

(assert (=> b!1042474 (= c!105783 (validKeyInArray!0 (select (arr!31605 lt!459466) #b00000000000000000000000000000000)))))

(declare-fun d!126073 () Bool)

(declare-fun res!694706 () Bool)

(assert (=> d!126073 (=> res!694706 e!590579)))

(assert (=> d!126073 (= res!694706 (bvsge #b00000000000000000000000000000000 (size!32141 lt!459466)))))

(assert (=> d!126073 (= (arrayNoDuplicates!0 lt!459466 #b00000000000000000000000000000000 Nil!22098) e!590579)))

(declare-fun b!1042475 () Bool)

(assert (=> b!1042475 (= e!590578 call!44178)))

(assert (= (and d!126073 (not res!694706)) b!1042473))

(assert (= (and b!1042473 res!694704) b!1042471))

(assert (= (and b!1042473 res!694705) b!1042474))

(assert (= (and b!1042474 c!105783) b!1042475))

(assert (= (and b!1042474 (not c!105783)) b!1042472))

(assert (= (or b!1042475 b!1042472) bm!44175))

(declare-fun m!961941 () Bool)

(assert (=> b!1042471 m!961941))

(assert (=> b!1042471 m!961941))

(declare-fun m!961943 () Bool)

(assert (=> b!1042471 m!961943))

(assert (=> bm!44175 m!961941))

(declare-fun m!961945 () Bool)

(assert (=> bm!44175 m!961945))

(assert (=> b!1042473 m!961941))

(assert (=> b!1042473 m!961941))

(declare-fun m!961947 () Bool)

(assert (=> b!1042473 m!961947))

(assert (=> b!1042474 m!961941))

(assert (=> b!1042474 m!961941))

(assert (=> b!1042474 m!961947))

(assert (=> b!1042413 d!126073))

(declare-fun d!126075 () Bool)

(assert (=> d!126075 (= (validMask!0 (mask!30425 thiss!1427)) (and (or (= (mask!30425 thiss!1427) #b00000000000000000000000000000111) (= (mask!30425 thiss!1427) #b00000000000000000000000000001111) (= (mask!30425 thiss!1427) #b00000000000000000000000000011111) (= (mask!30425 thiss!1427) #b00000000000000000000000000111111) (= (mask!30425 thiss!1427) #b00000000000000000000000001111111) (= (mask!30425 thiss!1427) #b00000000000000000000000011111111) (= (mask!30425 thiss!1427) #b00000000000000000000000111111111) (= (mask!30425 thiss!1427) #b00000000000000000000001111111111) (= (mask!30425 thiss!1427) #b00000000000000000000011111111111) (= (mask!30425 thiss!1427) #b00000000000000000000111111111111) (= (mask!30425 thiss!1427) #b00000000000000000001111111111111) (= (mask!30425 thiss!1427) #b00000000000000000011111111111111) (= (mask!30425 thiss!1427) #b00000000000000000111111111111111) (= (mask!30425 thiss!1427) #b00000000000000001111111111111111) (= (mask!30425 thiss!1427) #b00000000000000011111111111111111) (= (mask!30425 thiss!1427) #b00000000000000111111111111111111) (= (mask!30425 thiss!1427) #b00000000000001111111111111111111) (= (mask!30425 thiss!1427) #b00000000000011111111111111111111) (= (mask!30425 thiss!1427) #b00000000000111111111111111111111) (= (mask!30425 thiss!1427) #b00000000001111111111111111111111) (= (mask!30425 thiss!1427) #b00000000011111111111111111111111) (= (mask!30425 thiss!1427) #b00000000111111111111111111111111) (= (mask!30425 thiss!1427) #b00000001111111111111111111111111) (= (mask!30425 thiss!1427) #b00000011111111111111111111111111) (= (mask!30425 thiss!1427) #b00000111111111111111111111111111) (= (mask!30425 thiss!1427) #b00001111111111111111111111111111) (= (mask!30425 thiss!1427) #b00011111111111111111111111111111) (= (mask!30425 thiss!1427) #b00111111111111111111111111111111)) (bvsle (mask!30425 thiss!1427) #b00111111111111111111111111111111)))))

(assert (=> b!1042413 d!126075))

(declare-fun d!126077 () Bool)

(declare-fun e!590584 () Bool)

(assert (=> d!126077 e!590584))

(declare-fun res!694709 () Bool)

(assert (=> d!126077 (=> (not res!694709) (not e!590584))))

(assert (=> d!126077 (= res!694709 (and (bvsge (index!41639 lt!459462) #b00000000000000000000000000000000) (bvslt (index!41639 lt!459462) (size!32141 (_keys!11614 thiss!1427)))))))

(declare-fun lt!459490 () Unit!34050)

(declare-fun choose!53 (array!65704 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22101) Unit!34050)

(assert (=> d!126077 (= lt!459490 (choose!53 (_keys!11614 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41639 lt!459462) #b00000000000000000000000000000000 Nil!22098))))

(assert (=> d!126077 (bvslt (size!32141 (_keys!11614 thiss!1427)) #b01111111111111111111111111111111)))

(assert (=> d!126077 (= (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11614 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41639 lt!459462) #b00000000000000000000000000000000 Nil!22098) lt!459490)))

(declare-fun b!1042478 () Bool)

(assert (=> b!1042478 (= e!590584 (arrayNoDuplicates!0 (array!65705 (store (arr!31605 (_keys!11614 thiss!1427)) (index!41639 lt!459462) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32141 (_keys!11614 thiss!1427))) #b00000000000000000000000000000000 Nil!22098))))

(assert (= (and d!126077 res!694709) b!1042478))

(declare-fun m!961949 () Bool)

(assert (=> d!126077 m!961949))

(assert (=> b!1042478 m!961867))

(declare-fun m!961951 () Bool)

(assert (=> b!1042478 m!961951))

(assert (=> b!1042413 d!126077))

(declare-fun d!126079 () Bool)

(declare-fun e!590587 () Bool)

(assert (=> d!126079 e!590587))

(declare-fun res!694712 () Bool)

(assert (=> d!126079 (=> (not res!694712) (not e!590587))))

(assert (=> d!126079 (= res!694712 (and (bvsge (index!41639 lt!459462) #b00000000000000000000000000000000) (bvslt (index!41639 lt!459462) (size!32141 (_keys!11614 thiss!1427)))))))

(declare-fun lt!459493 () Unit!34050)

(declare-fun choose!25 (array!65704 (_ BitVec 32) (_ BitVec 32)) Unit!34050)

(assert (=> d!126079 (= lt!459493 (choose!25 (_keys!11614 thiss!1427) (index!41639 lt!459462) (mask!30425 thiss!1427)))))

(assert (=> d!126079 (validMask!0 (mask!30425 thiss!1427))))

(assert (=> d!126079 (= (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11614 thiss!1427) (index!41639 lt!459462) (mask!30425 thiss!1427)) lt!459493)))

(declare-fun b!1042481 () Bool)

(assert (=> b!1042481 (= e!590587 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!65705 (store (arr!31605 (_keys!11614 thiss!1427)) (index!41639 lt!459462) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32141 (_keys!11614 thiss!1427))) (mask!30425 thiss!1427)))))

(assert (= (and d!126079 res!694712) b!1042481))

(declare-fun m!961953 () Bool)

(assert (=> d!126079 m!961953))

(assert (=> d!126079 m!961863))

(assert (=> b!1042481 m!961867))

(declare-fun m!961955 () Bool)

(assert (=> b!1042481 m!961955))

(assert (=> b!1042413 d!126079))

(declare-fun b!1042490 () Bool)

(declare-fun e!590593 () (_ BitVec 32))

(declare-fun e!590592 () (_ BitVec 32))

(assert (=> b!1042490 (= e!590593 e!590592)))

(declare-fun c!105789 () Bool)

(assert (=> b!1042490 (= c!105789 (validKeyInArray!0 (select (arr!31605 (_keys!11614 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun d!126081 () Bool)

(declare-fun lt!459496 () (_ BitVec 32))

(assert (=> d!126081 (and (bvsge lt!459496 #b00000000000000000000000000000000) (bvsle lt!459496 (bvsub (size!32141 (_keys!11614 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> d!126081 (= lt!459496 e!590593)))

(declare-fun c!105788 () Bool)

(assert (=> d!126081 (= c!105788 (bvsge #b00000000000000000000000000000000 (size!32141 (_keys!11614 thiss!1427))))))

(assert (=> d!126081 (and (bvsle #b00000000000000000000000000000000 (size!32141 (_keys!11614 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!32141 (_keys!11614 thiss!1427)) (size!32141 (_keys!11614 thiss!1427))))))

(assert (=> d!126081 (= (arrayCountValidKeys!0 (_keys!11614 thiss!1427) #b00000000000000000000000000000000 (size!32141 (_keys!11614 thiss!1427))) lt!459496)))

(declare-fun bm!44178 () Bool)

(declare-fun call!44181 () (_ BitVec 32))

(assert (=> bm!44178 (= call!44181 (arrayCountValidKeys!0 (_keys!11614 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32141 (_keys!11614 thiss!1427))))))

(declare-fun b!1042491 () Bool)

(assert (=> b!1042491 (= e!590593 #b00000000000000000000000000000000)))

(declare-fun b!1042492 () Bool)

(assert (=> b!1042492 (= e!590592 (bvadd #b00000000000000000000000000000001 call!44181))))

(declare-fun b!1042493 () Bool)

(assert (=> b!1042493 (= e!590592 call!44181)))

(assert (= (and d!126081 c!105788) b!1042491))

(assert (= (and d!126081 (not c!105788)) b!1042490))

(assert (= (and b!1042490 c!105789) b!1042492))

(assert (= (and b!1042490 (not c!105789)) b!1042493))

(assert (= (or b!1042492 b!1042493) bm!44178))

(declare-fun m!961957 () Bool)

(assert (=> b!1042490 m!961957))

(assert (=> b!1042490 m!961957))

(declare-fun m!961959 () Bool)

(assert (=> b!1042490 m!961959))

(declare-fun m!961961 () Bool)

(assert (=> bm!44178 m!961961))

(assert (=> b!1042413 d!126081))

(declare-fun b!1042494 () Bool)

(declare-fun e!590595 () (_ BitVec 32))

(declare-fun e!590594 () (_ BitVec 32))

(assert (=> b!1042494 (= e!590595 e!590594)))

(declare-fun c!105791 () Bool)

(assert (=> b!1042494 (= c!105791 (validKeyInArray!0 (select (arr!31605 lt!459466) #b00000000000000000000000000000000)))))

(declare-fun d!126083 () Bool)

(declare-fun lt!459497 () (_ BitVec 32))

(assert (=> d!126083 (and (bvsge lt!459497 #b00000000000000000000000000000000) (bvsle lt!459497 (bvsub (size!32141 lt!459466) #b00000000000000000000000000000000)))))

(assert (=> d!126083 (= lt!459497 e!590595)))

(declare-fun c!105790 () Bool)

(assert (=> d!126083 (= c!105790 (bvsge #b00000000000000000000000000000000 (size!32141 (_keys!11614 thiss!1427))))))

(assert (=> d!126083 (and (bvsle #b00000000000000000000000000000000 (size!32141 (_keys!11614 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!32141 (_keys!11614 thiss!1427)) (size!32141 lt!459466)))))

(assert (=> d!126083 (= (arrayCountValidKeys!0 lt!459466 #b00000000000000000000000000000000 (size!32141 (_keys!11614 thiss!1427))) lt!459497)))

(declare-fun bm!44179 () Bool)

(declare-fun call!44182 () (_ BitVec 32))

(assert (=> bm!44179 (= call!44182 (arrayCountValidKeys!0 lt!459466 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32141 (_keys!11614 thiss!1427))))))

(declare-fun b!1042495 () Bool)

(assert (=> b!1042495 (= e!590595 #b00000000000000000000000000000000)))

(declare-fun b!1042496 () Bool)

(assert (=> b!1042496 (= e!590594 (bvadd #b00000000000000000000000000000001 call!44182))))

(declare-fun b!1042497 () Bool)

(assert (=> b!1042497 (= e!590594 call!44182)))

(assert (= (and d!126083 c!105790) b!1042495))

(assert (= (and d!126083 (not c!105790)) b!1042494))

(assert (= (and b!1042494 c!105791) b!1042496))

(assert (= (and b!1042494 (not c!105791)) b!1042497))

(assert (= (or b!1042496 b!1042497) bm!44179))

(assert (=> b!1042494 m!961941))

(assert (=> b!1042494 m!961941))

(assert (=> b!1042494 m!961947))

(declare-fun m!961963 () Bool)

(assert (=> bm!44179 m!961963))

(assert (=> b!1042413 d!126083))

(declare-fun d!126085 () Bool)

(declare-fun e!590598 () Bool)

(assert (=> d!126085 e!590598))

(declare-fun res!694715 () Bool)

(assert (=> d!126085 (=> (not res!694715) (not e!590598))))

(assert (=> d!126085 (= res!694715 (bvslt (index!41639 lt!459462) (size!32141 (_keys!11614 thiss!1427))))))

(declare-fun lt!459500 () Unit!34050)

(declare-fun choose!121 (array!65704 (_ BitVec 32) (_ BitVec 64)) Unit!34050)

(assert (=> d!126085 (= lt!459500 (choose!121 (_keys!11614 thiss!1427) (index!41639 lt!459462) key!909))))

(assert (=> d!126085 (bvsge (index!41639 lt!459462) #b00000000000000000000000000000000)))

(assert (=> d!126085 (= (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11614 thiss!1427) (index!41639 lt!459462) key!909) lt!459500)))

(declare-fun b!1042500 () Bool)

(assert (=> b!1042500 (= e!590598 (not (arrayContainsKey!0 (array!65705 (store (arr!31605 (_keys!11614 thiss!1427)) (index!41639 lt!459462) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32141 (_keys!11614 thiss!1427))) key!909 #b00000000000000000000000000000000)))))

(assert (= (and d!126085 res!694715) b!1042500))

(declare-fun m!961965 () Bool)

(assert (=> d!126085 m!961965))

(assert (=> b!1042500 m!961867))

(declare-fun m!961967 () Bool)

(assert (=> b!1042500 m!961967))

(assert (=> b!1042413 d!126085))

(declare-fun d!126087 () Bool)

(declare-fun res!694720 () Bool)

(declare-fun e!590603 () Bool)

(assert (=> d!126087 (=> res!694720 e!590603)))

(assert (=> d!126087 (= res!694720 (= (select (arr!31605 lt!459466) #b00000000000000000000000000000000) key!909))))

(assert (=> d!126087 (= (arrayContainsKey!0 lt!459466 key!909 #b00000000000000000000000000000000) e!590603)))

(declare-fun b!1042505 () Bool)

(declare-fun e!590604 () Bool)

(assert (=> b!1042505 (= e!590603 e!590604)))

(declare-fun res!694721 () Bool)

(assert (=> b!1042505 (=> (not res!694721) (not e!590604))))

(assert (=> b!1042505 (= res!694721 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32141 lt!459466)))))

(declare-fun b!1042506 () Bool)

(assert (=> b!1042506 (= e!590604 (arrayContainsKey!0 lt!459466 key!909 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!126087 (not res!694720)) b!1042505))

(assert (= (and b!1042505 res!694721) b!1042506))

(assert (=> d!126087 m!961941))

(declare-fun m!961969 () Bool)

(assert (=> b!1042506 m!961969))

(assert (=> b!1042413 d!126087))

(declare-fun b!1042515 () Bool)

(declare-fun e!590613 () Bool)

(declare-fun e!590612 () Bool)

(assert (=> b!1042515 (= e!590613 e!590612)))

(declare-fun lt!459508 () (_ BitVec 64))

(assert (=> b!1042515 (= lt!459508 (select (arr!31605 lt!459466) #b00000000000000000000000000000000))))

(declare-fun lt!459509 () Unit!34050)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!65704 (_ BitVec 64) (_ BitVec 32)) Unit!34050)

(assert (=> b!1042515 (= lt!459509 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!459466 lt!459508 #b00000000000000000000000000000000))))

(assert (=> b!1042515 (arrayContainsKey!0 lt!459466 lt!459508 #b00000000000000000000000000000000)))

(declare-fun lt!459507 () Unit!34050)

(assert (=> b!1042515 (= lt!459507 lt!459509)))

(declare-fun res!694727 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!65704 (_ BitVec 32)) SeekEntryResult!9817)

(assert (=> b!1042515 (= res!694727 (= (seekEntryOrOpen!0 (select (arr!31605 lt!459466) #b00000000000000000000000000000000) lt!459466 (mask!30425 thiss!1427)) (Found!9817 #b00000000000000000000000000000000)))))

(assert (=> b!1042515 (=> (not res!694727) (not e!590612))))

(declare-fun bm!44182 () Bool)

(declare-fun call!44185 () Bool)

(assert (=> bm!44182 (= call!44185 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!459466 (mask!30425 thiss!1427)))))

(declare-fun b!1042516 () Bool)

(assert (=> b!1042516 (= e!590612 call!44185)))

(declare-fun d!126089 () Bool)

(declare-fun res!694726 () Bool)

(declare-fun e!590611 () Bool)

(assert (=> d!126089 (=> res!694726 e!590611)))

(assert (=> d!126089 (= res!694726 (bvsge #b00000000000000000000000000000000 (size!32141 lt!459466)))))

(assert (=> d!126089 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!459466 (mask!30425 thiss!1427)) e!590611)))

(declare-fun b!1042517 () Bool)

(assert (=> b!1042517 (= e!590611 e!590613)))

(declare-fun c!105794 () Bool)

(assert (=> b!1042517 (= c!105794 (validKeyInArray!0 (select (arr!31605 lt!459466) #b00000000000000000000000000000000)))))

(declare-fun b!1042518 () Bool)

(assert (=> b!1042518 (= e!590613 call!44185)))

(assert (= (and d!126089 (not res!694726)) b!1042517))

(assert (= (and b!1042517 c!105794) b!1042515))

(assert (= (and b!1042517 (not c!105794)) b!1042518))

(assert (= (and b!1042515 res!694727) b!1042516))

(assert (= (or b!1042516 b!1042518) bm!44182))

(assert (=> b!1042515 m!961941))

(declare-fun m!961971 () Bool)

(assert (=> b!1042515 m!961971))

(declare-fun m!961973 () Bool)

(assert (=> b!1042515 m!961973))

(assert (=> b!1042515 m!961941))

(declare-fun m!961975 () Bool)

(assert (=> b!1042515 m!961975))

(declare-fun m!961977 () Bool)

(assert (=> bm!44182 m!961977))

(assert (=> b!1042517 m!961941))

(assert (=> b!1042517 m!961941))

(assert (=> b!1042517 m!961947))

(assert (=> b!1042413 d!126089))

(declare-fun d!126091 () Bool)

(assert (=> d!126091 (= (array_inv!24263 (_keys!11614 thiss!1427)) (bvsge (size!32141 (_keys!11614 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1042411 d!126091))

(declare-fun d!126093 () Bool)

(assert (=> d!126093 (= (array_inv!24264 (_values!6390 thiss!1427)) (bvsge (size!32142 (_values!6390 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1042411 d!126093))

(declare-fun b!1042519 () Bool)

(declare-fun e!590616 () Bool)

(declare-fun e!590615 () Bool)

(assert (=> b!1042519 (= e!590616 e!590615)))

(declare-fun lt!459511 () (_ BitVec 64))

(assert (=> b!1042519 (= lt!459511 (select (arr!31605 (_keys!11614 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun lt!459512 () Unit!34050)

(assert (=> b!1042519 (= lt!459512 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!11614 thiss!1427) lt!459511 #b00000000000000000000000000000000))))

(assert (=> b!1042519 (arrayContainsKey!0 (_keys!11614 thiss!1427) lt!459511 #b00000000000000000000000000000000)))

(declare-fun lt!459510 () Unit!34050)

(assert (=> b!1042519 (= lt!459510 lt!459512)))

(declare-fun res!694729 () Bool)

(assert (=> b!1042519 (= res!694729 (= (seekEntryOrOpen!0 (select (arr!31605 (_keys!11614 thiss!1427)) #b00000000000000000000000000000000) (_keys!11614 thiss!1427) (mask!30425 thiss!1427)) (Found!9817 #b00000000000000000000000000000000)))))

(assert (=> b!1042519 (=> (not res!694729) (not e!590615))))

(declare-fun bm!44183 () Bool)

(declare-fun call!44186 () Bool)

(assert (=> bm!44183 (= call!44186 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!11614 thiss!1427) (mask!30425 thiss!1427)))))

(declare-fun b!1042520 () Bool)

(assert (=> b!1042520 (= e!590615 call!44186)))

(declare-fun d!126095 () Bool)

(declare-fun res!694728 () Bool)

(declare-fun e!590614 () Bool)

(assert (=> d!126095 (=> res!694728 e!590614)))

(assert (=> d!126095 (= res!694728 (bvsge #b00000000000000000000000000000000 (size!32141 (_keys!11614 thiss!1427))))))

(assert (=> d!126095 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11614 thiss!1427) (mask!30425 thiss!1427)) e!590614)))

(declare-fun b!1042521 () Bool)

(assert (=> b!1042521 (= e!590614 e!590616)))

(declare-fun c!105795 () Bool)

(assert (=> b!1042521 (= c!105795 (validKeyInArray!0 (select (arr!31605 (_keys!11614 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1042522 () Bool)

(assert (=> b!1042522 (= e!590616 call!44186)))

(assert (= (and d!126095 (not res!694728)) b!1042521))

(assert (= (and b!1042521 c!105795) b!1042519))

(assert (= (and b!1042521 (not c!105795)) b!1042522))

(assert (= (and b!1042519 res!694729) b!1042520))

(assert (= (or b!1042520 b!1042522) bm!44183))

(assert (=> b!1042519 m!961957))

(declare-fun m!961979 () Bool)

(assert (=> b!1042519 m!961979))

(declare-fun m!961981 () Bool)

(assert (=> b!1042519 m!961981))

(assert (=> b!1042519 m!961957))

(declare-fun m!961983 () Bool)

(assert (=> b!1042519 m!961983))

(declare-fun m!961985 () Bool)

(assert (=> bm!44183 m!961985))

(assert (=> b!1042521 m!961957))

(assert (=> b!1042521 m!961957))

(assert (=> b!1042521 m!961959))

(assert (=> b!1042415 d!126095))

(declare-fun d!126097 () Bool)

(declare-fun res!694736 () Bool)

(declare-fun e!590619 () Bool)

(assert (=> d!126097 (=> (not res!694736) (not e!590619))))

(declare-fun simpleValid!441 (LongMapFixedSize!5970) Bool)

(assert (=> d!126097 (= res!694736 (simpleValid!441 thiss!1427))))

(assert (=> d!126097 (= (valid!2193 thiss!1427) e!590619)))

(declare-fun b!1042529 () Bool)

(declare-fun res!694737 () Bool)

(assert (=> b!1042529 (=> (not res!694737) (not e!590619))))

(assert (=> b!1042529 (= res!694737 (= (arrayCountValidKeys!0 (_keys!11614 thiss!1427) #b00000000000000000000000000000000 (size!32141 (_keys!11614 thiss!1427))) (_size!3040 thiss!1427)))))

(declare-fun b!1042530 () Bool)

(declare-fun res!694738 () Bool)

(assert (=> b!1042530 (=> (not res!694738) (not e!590619))))

(assert (=> b!1042530 (= res!694738 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11614 thiss!1427) (mask!30425 thiss!1427)))))

(declare-fun b!1042531 () Bool)

(assert (=> b!1042531 (= e!590619 (arrayNoDuplicates!0 (_keys!11614 thiss!1427) #b00000000000000000000000000000000 Nil!22098))))

(assert (= (and d!126097 res!694736) b!1042529))

(assert (= (and b!1042529 res!694737) b!1042530))

(assert (= (and b!1042530 res!694738) b!1042531))

(declare-fun m!961987 () Bool)

(assert (=> d!126097 m!961987))

(assert (=> b!1042529 m!961871))

(assert (=> b!1042530 m!961859))

(assert (=> b!1042531 m!961891))

(assert (=> start!91554 d!126097))

(declare-fun b!1042532 () Bool)

(declare-fun e!590623 () Bool)

(assert (=> b!1042532 (= e!590623 (contains!6081 Nil!22098 (select (arr!31605 (_keys!11614 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1042533 () Bool)

(declare-fun e!590620 () Bool)

(declare-fun call!44187 () Bool)

(assert (=> b!1042533 (= e!590620 call!44187)))

(declare-fun bm!44184 () Bool)

(declare-fun c!105796 () Bool)

(assert (=> bm!44184 (= call!44187 (arrayNoDuplicates!0 (_keys!11614 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!105796 (Cons!22097 (select (arr!31605 (_keys!11614 thiss!1427)) #b00000000000000000000000000000000) Nil!22098) Nil!22098)))))

(declare-fun b!1042534 () Bool)

(declare-fun e!590621 () Bool)

(declare-fun e!590622 () Bool)

(assert (=> b!1042534 (= e!590621 e!590622)))

(declare-fun res!694740 () Bool)

(assert (=> b!1042534 (=> (not res!694740) (not e!590622))))

(assert (=> b!1042534 (= res!694740 (not e!590623))))

(declare-fun res!694739 () Bool)

(assert (=> b!1042534 (=> (not res!694739) (not e!590623))))

(assert (=> b!1042534 (= res!694739 (validKeyInArray!0 (select (arr!31605 (_keys!11614 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1042535 () Bool)

(assert (=> b!1042535 (= e!590622 e!590620)))

(assert (=> b!1042535 (= c!105796 (validKeyInArray!0 (select (arr!31605 (_keys!11614 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun d!126099 () Bool)

(declare-fun res!694741 () Bool)

(assert (=> d!126099 (=> res!694741 e!590621)))

(assert (=> d!126099 (= res!694741 (bvsge #b00000000000000000000000000000000 (size!32141 (_keys!11614 thiss!1427))))))

(assert (=> d!126099 (= (arrayNoDuplicates!0 (_keys!11614 thiss!1427) #b00000000000000000000000000000000 Nil!22098) e!590621)))

(declare-fun b!1042536 () Bool)

(assert (=> b!1042536 (= e!590620 call!44187)))

(assert (= (and d!126099 (not res!694741)) b!1042534))

(assert (= (and b!1042534 res!694739) b!1042532))

(assert (= (and b!1042534 res!694740) b!1042535))

(assert (= (and b!1042535 c!105796) b!1042536))

(assert (= (and b!1042535 (not c!105796)) b!1042533))

(assert (= (or b!1042536 b!1042533) bm!44184))

(assert (=> b!1042532 m!961957))

(assert (=> b!1042532 m!961957))

(declare-fun m!961989 () Bool)

(assert (=> b!1042532 m!961989))

(assert (=> bm!44184 m!961957))

(declare-fun m!961991 () Bool)

(assert (=> bm!44184 m!961991))

(assert (=> b!1042534 m!961957))

(assert (=> b!1042534 m!961957))

(assert (=> b!1042534 m!961959))

(assert (=> b!1042535 m!961957))

(assert (=> b!1042535 m!961957))

(assert (=> b!1042535 m!961959))

(assert (=> b!1042414 d!126099))

(declare-fun d!126101 () Bool)

(declare-fun lt!459523 () SeekEntryResult!9817)

(assert (=> d!126101 (and (or ((_ is MissingVacant!9817) lt!459523) (not ((_ is Found!9817) lt!459523)) (and (bvsge (index!41639 lt!459523) #b00000000000000000000000000000000) (bvslt (index!41639 lt!459523) (size!32141 (_keys!11614 thiss!1427))))) (not ((_ is MissingVacant!9817) lt!459523)) (or (not ((_ is Found!9817) lt!459523)) (= (select (arr!31605 (_keys!11614 thiss!1427)) (index!41639 lt!459523)) key!909)))))

(declare-fun e!590631 () SeekEntryResult!9817)

(assert (=> d!126101 (= lt!459523 e!590631)))

(declare-fun c!105805 () Bool)

(declare-fun lt!459522 () SeekEntryResult!9817)

(assert (=> d!126101 (= c!105805 (and ((_ is Intermediate!9817) lt!459522) (undefined!10629 lt!459522)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65704 (_ BitVec 32)) SeekEntryResult!9817)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!126101 (= lt!459522 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!909 (mask!30425 thiss!1427)) key!909 (_keys!11614 thiss!1427) (mask!30425 thiss!1427)))))

(assert (=> d!126101 (validMask!0 (mask!30425 thiss!1427))))

(assert (=> d!126101 (= (seekEntry!0 key!909 (_keys!11614 thiss!1427) (mask!30425 thiss!1427)) lt!459523)))

(declare-fun b!1042549 () Bool)

(declare-fun e!590632 () SeekEntryResult!9817)

(assert (=> b!1042549 (= e!590632 (Found!9817 (index!41640 lt!459522)))))

(declare-fun b!1042550 () Bool)

(assert (=> b!1042550 (= e!590631 e!590632)))

(declare-fun lt!459521 () (_ BitVec 64))

(assert (=> b!1042550 (= lt!459521 (select (arr!31605 (_keys!11614 thiss!1427)) (index!41640 lt!459522)))))

(declare-fun c!105803 () Bool)

(assert (=> b!1042550 (= c!105803 (= lt!459521 key!909))))

(declare-fun b!1042551 () Bool)

(declare-fun e!590630 () SeekEntryResult!9817)

(declare-fun lt!459524 () SeekEntryResult!9817)

(assert (=> b!1042551 (= e!590630 (ite ((_ is MissingVacant!9817) lt!459524) (MissingZero!9817 (index!41641 lt!459524)) lt!459524))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65704 (_ BitVec 32)) SeekEntryResult!9817)

(assert (=> b!1042551 (= lt!459524 (seekKeyOrZeroReturnVacant!0 (x!93064 lt!459522) (index!41640 lt!459522) (index!41640 lt!459522) key!909 (_keys!11614 thiss!1427) (mask!30425 thiss!1427)))))

(declare-fun b!1042552 () Bool)

(assert (=> b!1042552 (= e!590631 Undefined!9817)))

(declare-fun b!1042553 () Bool)

(declare-fun c!105804 () Bool)

(assert (=> b!1042553 (= c!105804 (= lt!459521 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1042553 (= e!590632 e!590630)))

(declare-fun b!1042554 () Bool)

(assert (=> b!1042554 (= e!590630 (MissingZero!9817 (index!41640 lt!459522)))))

(assert (= (and d!126101 c!105805) b!1042552))

(assert (= (and d!126101 (not c!105805)) b!1042550))

(assert (= (and b!1042550 c!105803) b!1042549))

(assert (= (and b!1042550 (not c!105803)) b!1042553))

(assert (= (and b!1042553 c!105804) b!1042554))

(assert (= (and b!1042553 (not c!105804)) b!1042551))

(declare-fun m!961993 () Bool)

(assert (=> d!126101 m!961993))

(declare-fun m!961995 () Bool)

(assert (=> d!126101 m!961995))

(assert (=> d!126101 m!961995))

(declare-fun m!961997 () Bool)

(assert (=> d!126101 m!961997))

(assert (=> d!126101 m!961863))

(declare-fun m!961999 () Bool)

(assert (=> b!1042550 m!961999))

(declare-fun m!962001 () Bool)

(assert (=> b!1042551 m!962001))

(assert (=> b!1042409 d!126101))

(declare-fun b!1042561 () Bool)

(declare-fun e!590637 () Bool)

(assert (=> b!1042561 (= e!590637 tp_is_empty!24783)))

(declare-fun mapNonEmpty!38789 () Bool)

(declare-fun mapRes!38789 () Bool)

(declare-fun tp!74425 () Bool)

(assert (=> mapNonEmpty!38789 (= mapRes!38789 (and tp!74425 e!590637))))

(declare-fun mapValue!38789 () ValueCell!11688)

(declare-fun mapRest!38789 () (Array (_ BitVec 32) ValueCell!11688))

(declare-fun mapKey!38789 () (_ BitVec 32))

(assert (=> mapNonEmpty!38789 (= mapRest!38783 (store mapRest!38789 mapKey!38789 mapValue!38789))))

(declare-fun mapIsEmpty!38789 () Bool)

(assert (=> mapIsEmpty!38789 mapRes!38789))

(declare-fun condMapEmpty!38789 () Bool)

(declare-fun mapDefault!38789 () ValueCell!11688)

(assert (=> mapNonEmpty!38783 (= condMapEmpty!38789 (= mapRest!38783 ((as const (Array (_ BitVec 32) ValueCell!11688)) mapDefault!38789)))))

(declare-fun e!590638 () Bool)

(assert (=> mapNonEmpty!38783 (= tp!74415 (and e!590638 mapRes!38789))))

(declare-fun b!1042562 () Bool)

(assert (=> b!1042562 (= e!590638 tp_is_empty!24783)))

(assert (= (and mapNonEmpty!38783 condMapEmpty!38789) mapIsEmpty!38789))

(assert (= (and mapNonEmpty!38783 (not condMapEmpty!38789)) mapNonEmpty!38789))

(assert (= (and mapNonEmpty!38789 ((_ is ValueCellFull!11688) mapValue!38789)) b!1042561))

(assert (= (and mapNonEmpty!38783 ((_ is ValueCellFull!11688) mapDefault!38789)) b!1042562))

(declare-fun m!962003 () Bool)

(assert (=> mapNonEmpty!38789 m!962003))

(check-sat (not b!1042471) (not d!126101) (not b!1042515) b_and!33613 (not b!1042519) (not b!1042530) (not b!1042473) (not b!1042457) (not b!1042517) (not b!1042529) (not b!1042478) (not b!1042490) (not b!1042481) (not d!126085) (not b!1042531) (not b!1042506) (not b!1042500) (not b!1042535) (not bm!44178) (not d!126079) (not d!126071) (not bm!44179) (not b!1042460) (not b!1042474) (not b_next!21063) (not mapNonEmpty!38789) (not b!1042532) (not b!1042458) (not b!1042494) (not bm!44175) (not b!1042534) (not d!126077) (not d!126097) (not bm!44183) (not bm!44184) (not bm!44182) (not b!1042551) (not b!1042521) tp_is_empty!24783)
(check-sat b_and!33613 (not b_next!21063))
