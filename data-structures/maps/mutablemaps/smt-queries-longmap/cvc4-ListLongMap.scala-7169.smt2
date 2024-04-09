; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!91588 () Bool)

(assert start!91588)

(declare-fun b!1042652 () Bool)

(declare-fun b_free!21071 () Bool)

(declare-fun b_next!21071 () Bool)

(assert (=> b!1042652 (= b_free!21071 (not b_next!21071))))

(declare-fun tp!74443 () Bool)

(declare-fun b_and!33621 () Bool)

(assert (=> b!1042652 (= tp!74443 b_and!33621)))

(declare-fun res!694804 () Bool)

(declare-fun e!590706 () Bool)

(assert (=> start!91588 (=> (not res!694804) (not e!590706))))

(declare-datatypes ((V!37927 0))(
  ( (V!37928 (val!12446 Int)) )
))
(declare-datatypes ((ValueCell!11692 0))(
  ( (ValueCellFull!11692 (v!15038 V!37927)) (EmptyCell!11692) )
))
(declare-datatypes ((array!65722 0))(
  ( (array!65723 (arr!31613 (Array (_ BitVec 32) (_ BitVec 64))) (size!32149 (_ BitVec 32))) )
))
(declare-datatypes ((array!65724 0))(
  ( (array!65725 (arr!31614 (Array (_ BitVec 32) ValueCell!11692)) (size!32150 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5978 0))(
  ( (LongMapFixedSize!5979 (defaultEntry!6371 Int) (mask!30435 (_ BitVec 32)) (extraKeys!6099 (_ BitVec 32)) (zeroValue!6205 V!37927) (minValue!6205 V!37927) (_size!3044 (_ BitVec 32)) (_keys!11620 array!65722) (_values!6394 array!65724) (_vacant!3044 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5978)

(declare-fun valid!2197 (LongMapFixedSize!5978) Bool)

(assert (=> start!91588 (= res!694804 (valid!2197 thiss!1427))))

(assert (=> start!91588 e!590706))

(declare-fun e!590710 () Bool)

(assert (=> start!91588 e!590710))

(assert (=> start!91588 true))

(declare-fun b!1042651 () Bool)

(declare-fun res!694800 () Bool)

(declare-fun e!590709 () Bool)

(assert (=> b!1042651 (=> res!694800 e!590709)))

(assert (=> b!1042651 (= res!694800 (or (not (= (size!32150 (_values!6394 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30435 thiss!1427)))) (not (= (size!32149 (_keys!11620 thiss!1427)) (size!32150 (_values!6394 thiss!1427)))) (bvslt (mask!30435 thiss!1427) #b00000000000000000000000000000000) (bvslt (extraKeys!6099 thiss!1427) #b00000000000000000000000000000000) (bvsgt (extraKeys!6099 thiss!1427) #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!38798 () Bool)

(declare-fun mapRes!38798 () Bool)

(assert (=> mapIsEmpty!38798 mapRes!38798))

(declare-fun tp_is_empty!24791 () Bool)

(declare-fun e!590704 () Bool)

(declare-fun array_inv!24269 (array!65722) Bool)

(declare-fun array_inv!24270 (array!65724) Bool)

(assert (=> b!1042652 (= e!590710 (and tp!74443 tp_is_empty!24791 (array_inv!24269 (_keys!11620 thiss!1427)) (array_inv!24270 (_values!6394 thiss!1427)) e!590704))))

(declare-fun b!1042653 () Bool)

(declare-fun e!590708 () Bool)

(assert (=> b!1042653 (= e!590708 (not e!590709))))

(declare-fun res!694803 () Bool)

(assert (=> b!1042653 (=> res!694803 e!590709)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1042653 (= res!694803 (not (validMask!0 (mask!30435 thiss!1427))))))

(declare-fun lt!459573 () array!65722)

(declare-fun key!909 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!65722 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1042653 (not (arrayContainsKey!0 lt!459573 key!909 #b00000000000000000000000000000000))))

(declare-datatypes ((SeekEntryResult!9821 0))(
  ( (MissingZero!9821 (index!41654 (_ BitVec 32))) (Found!9821 (index!41655 (_ BitVec 32))) (Intermediate!9821 (undefined!10633 Bool) (index!41656 (_ BitVec 32)) (x!93084 (_ BitVec 32))) (Undefined!9821) (MissingVacant!9821 (index!41657 (_ BitVec 32))) )
))
(declare-fun lt!459577 () SeekEntryResult!9821)

(declare-datatypes ((Unit!34056 0))(
  ( (Unit!34057) )
))
(declare-fun lt!459576 () Unit!34056)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!65722 (_ BitVec 32) (_ BitVec 64)) Unit!34056)

(assert (=> b!1042653 (= lt!459576 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11620 thiss!1427) (index!41655 lt!459577) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65722 (_ BitVec 32)) Bool)

(assert (=> b!1042653 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!459573 (mask!30435 thiss!1427))))

(declare-fun lt!459578 () Unit!34056)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!65722 (_ BitVec 32) (_ BitVec 32)) Unit!34056)

(assert (=> b!1042653 (= lt!459578 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11620 thiss!1427) (index!41655 lt!459577) (mask!30435 thiss!1427)))))

(declare-datatypes ((List!22105 0))(
  ( (Nil!22102) (Cons!22101 (h!23309 (_ BitVec 64)) (t!31326 List!22105)) )
))
(declare-fun arrayNoDuplicates!0 (array!65722 (_ BitVec 32) List!22105) Bool)

(assert (=> b!1042653 (arrayNoDuplicates!0 lt!459573 #b00000000000000000000000000000000 Nil!22102)))

(declare-fun lt!459574 () Unit!34056)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!65722 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22105) Unit!34056)

(assert (=> b!1042653 (= lt!459574 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11620 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41655 lt!459577) #b00000000000000000000000000000000 Nil!22102))))

(declare-fun arrayCountValidKeys!0 (array!65722 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1042653 (= (arrayCountValidKeys!0 lt!459573 #b00000000000000000000000000000000 (size!32149 (_keys!11620 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11620 thiss!1427) #b00000000000000000000000000000000 (size!32149 (_keys!11620 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1042653 (= lt!459573 (array!65723 (store (arr!31613 (_keys!11620 thiss!1427)) (index!41655 lt!459577) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32149 (_keys!11620 thiss!1427))))))

(declare-fun lt!459575 () Unit!34056)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65722 (_ BitVec 32) (_ BitVec 64)) Unit!34056)

(assert (=> b!1042653 (= lt!459575 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11620 thiss!1427) (index!41655 lt!459577) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1042654 () Bool)

(declare-fun e!590703 () Bool)

(assert (=> b!1042654 (= e!590704 (and e!590703 mapRes!38798))))

(declare-fun condMapEmpty!38798 () Bool)

(declare-fun mapDefault!38798 () ValueCell!11692)

