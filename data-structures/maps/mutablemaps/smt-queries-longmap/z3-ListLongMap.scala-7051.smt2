; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89398 () Bool)

(assert start!89398)

(declare-fun b!1024278 () Bool)

(declare-fun b_free!20361 () Bool)

(declare-fun b_next!20361 () Bool)

(assert (=> b!1024278 (= b_free!20361 (not b_next!20361))))

(declare-fun tp!72129 () Bool)

(declare-fun b_and!32625 () Bool)

(assert (=> b!1024278 (= tp!72129 b_and!32625)))

(declare-fun b!1024276 () Bool)

(declare-fun res!685884 () Bool)

(declare-fun e!577393 () Bool)

(assert (=> b!1024276 (=> res!685884 e!577393)))

(declare-datatypes ((List!21830 0))(
  ( (Nil!21827) (Cons!21826 (h!23024 (_ BitVec 64)) (t!30899 List!21830)) )
))
(declare-fun contains!5958 (List!21830 (_ BitVec 64)) Bool)

(assert (=> b!1024276 (= res!685884 (contains!5958 Nil!21827 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1024277 () Bool)

(declare-fun res!685885 () Bool)

(declare-fun e!577395 () Bool)

(assert (=> b!1024277 (=> (not res!685885) (not e!577395))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1024277 (= res!685885 (not (= key!909 (bvneg key!909))))))

(declare-fun e!577398 () Bool)

(declare-fun tp_is_empty!24081 () Bool)

(declare-datatypes ((V!36981 0))(
  ( (V!36982 (val!12091 Int)) )
))
(declare-datatypes ((ValueCell!11337 0))(
  ( (ValueCellFull!11337 (v!14661 V!36981)) (EmptyCell!11337) )
))
(declare-datatypes ((array!64196 0))(
  ( (array!64197 (arr!30903 (Array (_ BitVec 32) (_ BitVec 64))) (size!31417 (_ BitVec 32))) )
))
(declare-datatypes ((array!64198 0))(
  ( (array!64199 (arr!30904 (Array (_ BitVec 32) ValueCell!11337)) (size!31418 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5268 0))(
  ( (LongMapFixedSize!5269 (defaultEntry!5986 Int) (mask!29629 (_ BitVec 32)) (extraKeys!5718 (_ BitVec 32)) (zeroValue!5822 V!36981) (minValue!5822 V!36981) (_size!2689 (_ BitVec 32)) (_keys!11130 array!64196) (_values!6009 array!64198) (_vacant!2689 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5268)

(declare-fun e!577399 () Bool)

(declare-fun array_inv!23803 (array!64196) Bool)

(declare-fun array_inv!23804 (array!64198) Bool)

(assert (=> b!1024278 (= e!577398 (and tp!72129 tp_is_empty!24081 (array_inv!23803 (_keys!11130 thiss!1427)) (array_inv!23804 (_values!6009 thiss!1427)) e!577399))))

(declare-fun mapIsEmpty!37550 () Bool)

(declare-fun mapRes!37550 () Bool)

(assert (=> mapIsEmpty!37550 mapRes!37550))

(declare-fun mapNonEmpty!37550 () Bool)

(declare-fun tp!72130 () Bool)

(declare-fun e!577400 () Bool)

(assert (=> mapNonEmpty!37550 (= mapRes!37550 (and tp!72130 e!577400))))

(declare-fun mapRest!37550 () (Array (_ BitVec 32) ValueCell!11337))

(declare-fun mapValue!37550 () ValueCell!11337)

(declare-fun mapKey!37550 () (_ BitVec 32))

(assert (=> mapNonEmpty!37550 (= (arr!30904 (_values!6009 thiss!1427)) (store mapRest!37550 mapKey!37550 mapValue!37550))))

(declare-fun b!1024279 () Bool)

(declare-fun e!577396 () Bool)

(assert (=> b!1024279 (= e!577396 (not e!577393))))

(declare-fun res!685881 () Bool)

(assert (=> b!1024279 (=> res!685881 e!577393)))

(assert (=> b!1024279 (= res!685881 (or (bvsge (size!31417 (_keys!11130 thiss!1427)) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!31417 (_keys!11130 thiss!1427)))))))

(declare-datatypes ((SeekEntryResult!9582 0))(
  ( (MissingZero!9582 (index!40698 (_ BitVec 32))) (Found!9582 (index!40699 (_ BitVec 32))) (Intermediate!9582 (undefined!10394 Bool) (index!40700 (_ BitVec 32)) (x!91055 (_ BitVec 32))) (Undefined!9582) (MissingVacant!9582 (index!40701 (_ BitVec 32))) )
))
(declare-fun lt!450564 () SeekEntryResult!9582)

(declare-fun arrayCountValidKeys!0 (array!64196 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1024279 (= (arrayCountValidKeys!0 (array!64197 (store (arr!30903 (_keys!11130 thiss!1427)) (index!40699 lt!450564) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31417 (_keys!11130 thiss!1427))) #b00000000000000000000000000000000 (size!31417 (_keys!11130 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11130 thiss!1427) #b00000000000000000000000000000000 (size!31417 (_keys!11130 thiss!1427))) #b00000000000000000000000000000001))))

(declare-datatypes ((Unit!33312 0))(
  ( (Unit!33313) )
))
(declare-fun lt!450563 () Unit!33312)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64196 (_ BitVec 32) (_ BitVec 64)) Unit!33312)

(assert (=> b!1024279 (= lt!450563 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11130 thiss!1427) (index!40699 lt!450564) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1024280 () Bool)

(declare-fun res!685882 () Bool)

(assert (=> b!1024280 (=> res!685882 e!577393)))

(assert (=> b!1024280 (= res!685882 (contains!5958 Nil!21827 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1024281 () Bool)

(declare-fun e!577397 () Bool)

(assert (=> b!1024281 (= e!577397 tp_is_empty!24081)))

(declare-fun b!1024283 () Bool)

(assert (=> b!1024283 (= e!577395 e!577396)))

(declare-fun res!685887 () Bool)

(assert (=> b!1024283 (=> (not res!685887) (not e!577396))))

(get-info :version)

(assert (=> b!1024283 (= res!685887 ((_ is Found!9582) lt!450564))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64196 (_ BitVec 32)) SeekEntryResult!9582)

(assert (=> b!1024283 (= lt!450564 (seekEntry!0 key!909 (_keys!11130 thiss!1427) (mask!29629 thiss!1427)))))

(declare-fun b!1024284 () Bool)

(assert (=> b!1024284 (= e!577393 true)))

(declare-fun lt!450565 () Bool)

(declare-fun arrayNoDuplicates!0 (array!64196 (_ BitVec 32) List!21830) Bool)

(assert (=> b!1024284 (= lt!450565 (arrayNoDuplicates!0 (_keys!11130 thiss!1427) #b00000000000000000000000000000000 Nil!21827))))

(declare-fun b!1024285 () Bool)

(assert (=> b!1024285 (= e!577399 (and e!577397 mapRes!37550))))

(declare-fun condMapEmpty!37550 () Bool)

(declare-fun mapDefault!37550 () ValueCell!11337)

(assert (=> b!1024285 (= condMapEmpty!37550 (= (arr!30904 (_values!6009 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11337)) mapDefault!37550)))))

(declare-fun b!1024286 () Bool)

(assert (=> b!1024286 (= e!577400 tp_is_empty!24081)))

(declare-fun b!1024282 () Bool)

(declare-fun res!685886 () Bool)

(assert (=> b!1024282 (=> res!685886 e!577393)))

(declare-fun noDuplicate!1470 (List!21830) Bool)

(assert (=> b!1024282 (= res!685886 (not (noDuplicate!1470 Nil!21827)))))

(declare-fun res!685883 () Bool)

(assert (=> start!89398 (=> (not res!685883) (not e!577395))))

(declare-fun valid!1960 (LongMapFixedSize!5268) Bool)

(assert (=> start!89398 (= res!685883 (valid!1960 thiss!1427))))

(assert (=> start!89398 e!577395))

(assert (=> start!89398 e!577398))

(assert (=> start!89398 true))

(assert (= (and start!89398 res!685883) b!1024277))

(assert (= (and b!1024277 res!685885) b!1024283))

(assert (= (and b!1024283 res!685887) b!1024279))

(assert (= (and b!1024279 (not res!685881)) b!1024282))

(assert (= (and b!1024282 (not res!685886)) b!1024276))

(assert (= (and b!1024276 (not res!685884)) b!1024280))

(assert (= (and b!1024280 (not res!685882)) b!1024284))

(assert (= (and b!1024285 condMapEmpty!37550) mapIsEmpty!37550))

(assert (= (and b!1024285 (not condMapEmpty!37550)) mapNonEmpty!37550))

(assert (= (and mapNonEmpty!37550 ((_ is ValueCellFull!11337) mapValue!37550)) b!1024286))

(assert (= (and b!1024285 ((_ is ValueCellFull!11337) mapDefault!37550)) b!1024281))

(assert (= b!1024278 b!1024285))

(assert (= start!89398 b!1024278))

(declare-fun m!942783 () Bool)

(assert (=> b!1024276 m!942783))

(declare-fun m!942785 () Bool)

(assert (=> b!1024280 m!942785))

(declare-fun m!942787 () Bool)

(assert (=> b!1024284 m!942787))

(declare-fun m!942789 () Bool)

(assert (=> b!1024278 m!942789))

(declare-fun m!942791 () Bool)

(assert (=> b!1024278 m!942791))

(declare-fun m!942793 () Bool)

(assert (=> start!89398 m!942793))

(declare-fun m!942795 () Bool)

(assert (=> b!1024279 m!942795))

(declare-fun m!942797 () Bool)

(assert (=> b!1024279 m!942797))

(declare-fun m!942799 () Bool)

(assert (=> b!1024279 m!942799))

(declare-fun m!942801 () Bool)

(assert (=> b!1024279 m!942801))

(declare-fun m!942803 () Bool)

(assert (=> b!1024283 m!942803))

(declare-fun m!942805 () Bool)

(assert (=> mapNonEmpty!37550 m!942805))

(declare-fun m!942807 () Bool)

(assert (=> b!1024282 m!942807))

(check-sat (not b!1024282) (not b!1024280) (not mapNonEmpty!37550) (not b!1024284) (not b!1024279) (not b!1024278) (not b_next!20361) b_and!32625 (not b!1024283) tp_is_empty!24081 (not start!89398) (not b!1024276))
(check-sat b_and!32625 (not b_next!20361))
