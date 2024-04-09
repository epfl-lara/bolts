; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89418 () Bool)

(assert start!89418)

(declare-fun b!1024609 () Bool)

(declare-fun b_free!20381 () Bool)

(declare-fun b_next!20381 () Bool)

(assert (=> b!1024609 (= b_free!20381 (not b_next!20381))))

(declare-fun tp!72189 () Bool)

(declare-fun b_and!32645 () Bool)

(assert (=> b!1024609 (= tp!72189 b_and!32645)))

(declare-fun mapIsEmpty!37580 () Bool)

(declare-fun mapRes!37580 () Bool)

(assert (=> mapIsEmpty!37580 mapRes!37580))

(declare-fun mapNonEmpty!37580 () Bool)

(declare-fun tp!72190 () Bool)

(declare-fun e!577640 () Bool)

(assert (=> mapNonEmpty!37580 (= mapRes!37580 (and tp!72190 e!577640))))

(declare-datatypes ((V!37007 0))(
  ( (V!37008 (val!12101 Int)) )
))
(declare-datatypes ((ValueCell!11347 0))(
  ( (ValueCellFull!11347 (v!14671 V!37007)) (EmptyCell!11347) )
))
(declare-fun mapValue!37580 () ValueCell!11347)

(declare-fun mapRest!37580 () (Array (_ BitVec 32) ValueCell!11347))

(declare-fun mapKey!37580 () (_ BitVec 32))

(declare-datatypes ((array!64236 0))(
  ( (array!64237 (arr!30923 (Array (_ BitVec 32) (_ BitVec 64))) (size!31437 (_ BitVec 32))) )
))
(declare-datatypes ((array!64238 0))(
  ( (array!64239 (arr!30924 (Array (_ BitVec 32) ValueCell!11347)) (size!31438 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5288 0))(
  ( (LongMapFixedSize!5289 (defaultEntry!5996 Int) (mask!29645 (_ BitVec 32)) (extraKeys!5728 (_ BitVec 32)) (zeroValue!5832 V!37007) (minValue!5832 V!37007) (_size!2699 (_ BitVec 32)) (_keys!11140 array!64236) (_values!6019 array!64238) (_vacant!2699 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5288)

(assert (=> mapNonEmpty!37580 (= (arr!30924 (_values!6019 thiss!1427)) (store mapRest!37580 mapKey!37580 mapValue!37580))))

(declare-fun b!1024606 () Bool)

(declare-fun res!686091 () Bool)

(declare-fun e!577633 () Bool)

(assert (=> b!1024606 (=> res!686091 e!577633)))

(declare-datatypes ((List!21838 0))(
  ( (Nil!21835) (Cons!21834 (h!23032 (_ BitVec 64)) (t!30907 List!21838)) )
))
(declare-fun contains!5966 (List!21838 (_ BitVec 64)) Bool)

(assert (=> b!1024606 (= res!686091 (contains!5966 Nil!21835 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1024607 () Bool)

(declare-fun res!686097 () Bool)

(assert (=> b!1024607 (=> res!686097 e!577633)))

(assert (=> b!1024607 (= res!686097 (contains!5966 Nil!21835 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1024608 () Bool)

(declare-fun e!577638 () Bool)

(assert (=> b!1024608 (= e!577638 (not e!577633))))

(declare-fun res!686092 () Bool)

(assert (=> b!1024608 (=> res!686092 e!577633)))

(assert (=> b!1024608 (= res!686092 (or (bvsge (size!31437 (_keys!11140 thiss!1427)) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!31437 (_keys!11140 thiss!1427)))))))

(declare-datatypes ((SeekEntryResult!9589 0))(
  ( (MissingZero!9589 (index!40726 (_ BitVec 32))) (Found!9589 (index!40727 (_ BitVec 32))) (Intermediate!9589 (undefined!10401 Bool) (index!40728 (_ BitVec 32)) (x!91086 (_ BitVec 32))) (Undefined!9589) (MissingVacant!9589 (index!40729 (_ BitVec 32))) )
))
(declare-fun lt!450655 () SeekEntryResult!9589)

(declare-fun arrayCountValidKeys!0 (array!64236 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1024608 (= (arrayCountValidKeys!0 (array!64237 (store (arr!30923 (_keys!11140 thiss!1427)) (index!40727 lt!450655) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31437 (_keys!11140 thiss!1427))) #b00000000000000000000000000000000 (size!31437 (_keys!11140 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11140 thiss!1427) #b00000000000000000000000000000000 (size!31437 (_keys!11140 thiss!1427))) #b00000000000000000000000000000001))))

(declare-datatypes ((Unit!33324 0))(
  ( (Unit!33325) )
))
(declare-fun lt!450653 () Unit!33324)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64236 (_ BitVec 32) (_ BitVec 64)) Unit!33324)

(assert (=> b!1024608 (= lt!450653 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11140 thiss!1427) (index!40727 lt!450655) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!577635 () Bool)

(declare-fun e!577637 () Bool)

(declare-fun tp_is_empty!24101 () Bool)

(declare-fun array_inv!23821 (array!64236) Bool)

(declare-fun array_inv!23822 (array!64238) Bool)

(assert (=> b!1024609 (= e!577635 (and tp!72189 tp_is_empty!24101 (array_inv!23821 (_keys!11140 thiss!1427)) (array_inv!23822 (_values!6019 thiss!1427)) e!577637))))

(declare-fun b!1024610 () Bool)

(assert (=> b!1024610 (= e!577633 true)))

(declare-fun lt!450654 () Bool)

(declare-fun arrayNoDuplicates!0 (array!64236 (_ BitVec 32) List!21838) Bool)

(assert (=> b!1024610 (= lt!450654 (arrayNoDuplicates!0 (_keys!11140 thiss!1427) #b00000000000000000000000000000000 Nil!21835))))

(declare-fun res!686095 () Bool)

(declare-fun e!577634 () Bool)

(assert (=> start!89418 (=> (not res!686095) (not e!577634))))

(declare-fun valid!1965 (LongMapFixedSize!5288) Bool)

(assert (=> start!89418 (= res!686095 (valid!1965 thiss!1427))))

(assert (=> start!89418 e!577634))

(assert (=> start!89418 e!577635))

(assert (=> start!89418 true))

(declare-fun b!1024611 () Bool)

(declare-fun res!686094 () Bool)

(assert (=> b!1024611 (=> res!686094 e!577633)))

(declare-fun noDuplicate!1476 (List!21838) Bool)

(assert (=> b!1024611 (= res!686094 (not (noDuplicate!1476 Nil!21835)))))

(declare-fun b!1024612 () Bool)

(declare-fun res!686096 () Bool)

(assert (=> b!1024612 (=> (not res!686096) (not e!577634))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1024612 (= res!686096 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1024613 () Bool)

(assert (=> b!1024613 (= e!577634 e!577638)))

(declare-fun res!686093 () Bool)

(assert (=> b!1024613 (=> (not res!686093) (not e!577638))))

(assert (=> b!1024613 (= res!686093 (is-Found!9589 lt!450655))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64236 (_ BitVec 32)) SeekEntryResult!9589)

(assert (=> b!1024613 (= lt!450655 (seekEntry!0 key!909 (_keys!11140 thiss!1427) (mask!29645 thiss!1427)))))

(declare-fun b!1024614 () Bool)

(assert (=> b!1024614 (= e!577640 tp_is_empty!24101)))

(declare-fun b!1024615 () Bool)

(declare-fun e!577639 () Bool)

(assert (=> b!1024615 (= e!577637 (and e!577639 mapRes!37580))))

(declare-fun condMapEmpty!37580 () Bool)

(declare-fun mapDefault!37580 () ValueCell!11347)

