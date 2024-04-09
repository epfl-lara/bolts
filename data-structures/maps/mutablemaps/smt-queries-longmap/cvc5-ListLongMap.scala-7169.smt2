; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!91584 () Bool)

(assert start!91584)

(declare-fun b!1042585 () Bool)

(declare-fun b_free!21067 () Bool)

(declare-fun b_next!21067 () Bool)

(assert (=> b!1042585 (= b_free!21067 (not b_next!21067))))

(declare-fun tp!74430 () Bool)

(declare-fun b_and!33617 () Bool)

(assert (=> b!1042585 (= tp!74430 b_and!33617)))

(declare-fun e!590658 () Bool)

(declare-fun e!590662 () Bool)

(declare-datatypes ((V!37923 0))(
  ( (V!37924 (val!12444 Int)) )
))
(declare-datatypes ((ValueCell!11690 0))(
  ( (ValueCellFull!11690 (v!15036 V!37923)) (EmptyCell!11690) )
))
(declare-datatypes ((array!65714 0))(
  ( (array!65715 (arr!31609 (Array (_ BitVec 32) (_ BitVec 64))) (size!32145 (_ BitVec 32))) )
))
(declare-datatypes ((array!65716 0))(
  ( (array!65717 (arr!31610 (Array (_ BitVec 32) ValueCell!11690)) (size!32146 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5974 0))(
  ( (LongMapFixedSize!5975 (defaultEntry!6369 Int) (mask!30433 (_ BitVec 32)) (extraKeys!6097 (_ BitVec 32)) (zeroValue!6203 V!37923) (minValue!6203 V!37923) (_size!3042 (_ BitVec 32)) (_keys!11618 array!65714) (_values!6392 array!65716) (_vacant!3042 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5974)

(declare-fun tp_is_empty!24787 () Bool)

(declare-fun array_inv!24265 (array!65714) Bool)

(declare-fun array_inv!24266 (array!65716) Bool)

(assert (=> b!1042585 (= e!590658 (and tp!74430 tp_is_empty!24787 (array_inv!24265 (_keys!11618 thiss!1427)) (array_inv!24266 (_values!6392 thiss!1427)) e!590662))))

(declare-fun b!1042586 () Bool)

(declare-fun e!590656 () Bool)

(declare-fun e!590661 () Bool)

(assert (=> b!1042586 (= e!590656 (not e!590661))))

(declare-fun res!694757 () Bool)

(assert (=> b!1042586 (=> res!694757 e!590661)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1042586 (= res!694757 (not (validMask!0 (mask!30433 thiss!1427))))))

(declare-fun lt!459538 () array!65714)

(declare-fun key!909 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!65714 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1042586 (not (arrayContainsKey!0 lt!459538 key!909 #b00000000000000000000000000000000))))

(declare-datatypes ((SeekEntryResult!9819 0))(
  ( (MissingZero!9819 (index!41646 (_ BitVec 32))) (Found!9819 (index!41647 (_ BitVec 32))) (Intermediate!9819 (undefined!10631 Bool) (index!41648 (_ BitVec 32)) (x!93082 (_ BitVec 32))) (Undefined!9819) (MissingVacant!9819 (index!41649 (_ BitVec 32))) )
))
(declare-fun lt!459540 () SeekEntryResult!9819)

(declare-datatypes ((Unit!34052 0))(
  ( (Unit!34053) )
))
(declare-fun lt!459541 () Unit!34052)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!65714 (_ BitVec 32) (_ BitVec 64)) Unit!34052)

(assert (=> b!1042586 (= lt!459541 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11618 thiss!1427) (index!41647 lt!459540) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65714 (_ BitVec 32)) Bool)

(assert (=> b!1042586 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!459538 (mask!30433 thiss!1427))))

(declare-fun lt!459542 () Unit!34052)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!65714 (_ BitVec 32) (_ BitVec 32)) Unit!34052)

(assert (=> b!1042586 (= lt!459542 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11618 thiss!1427) (index!41647 lt!459540) (mask!30433 thiss!1427)))))

(declare-datatypes ((List!22103 0))(
  ( (Nil!22100) (Cons!22099 (h!23307 (_ BitVec 64)) (t!31324 List!22103)) )
))
(declare-fun arrayNoDuplicates!0 (array!65714 (_ BitVec 32) List!22103) Bool)

(assert (=> b!1042586 (arrayNoDuplicates!0 lt!459538 #b00000000000000000000000000000000 Nil!22100)))

(declare-fun lt!459537 () Unit!34052)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!65714 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22103) Unit!34052)

(assert (=> b!1042586 (= lt!459537 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11618 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41647 lt!459540) #b00000000000000000000000000000000 Nil!22100))))

(declare-fun arrayCountValidKeys!0 (array!65714 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1042586 (= (arrayCountValidKeys!0 lt!459538 #b00000000000000000000000000000000 (size!32145 (_keys!11618 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11618 thiss!1427) #b00000000000000000000000000000000 (size!32145 (_keys!11618 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1042586 (= lt!459538 (array!65715 (store (arr!31609 (_keys!11618 thiss!1427)) (index!41647 lt!459540) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32145 (_keys!11618 thiss!1427))))))

(declare-fun lt!459539 () Unit!34052)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65714 (_ BitVec 32) (_ BitVec 64)) Unit!34052)

(assert (=> b!1042586 (= lt!459539 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11618 thiss!1427) (index!41647 lt!459540) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1042587 () Bool)

(assert (=> b!1042587 (= e!590661 (and (bvsge (index!41647 lt!459540) #b00000000000000000000000000000000) (bvslt (index!41647 lt!459540) (size!32145 (_keys!11618 thiss!1427)))))))

(declare-fun b!1042588 () Bool)

(declare-fun e!590660 () Bool)

(assert (=> b!1042588 (= e!590660 tp_is_empty!24787)))

(declare-fun mapIsEmpty!38792 () Bool)

(declare-fun mapRes!38792 () Bool)

(assert (=> mapIsEmpty!38792 mapRes!38792))

(declare-fun b!1042590 () Bool)

(declare-fun res!694760 () Bool)

(assert (=> b!1042590 (=> res!694760 e!590661)))

(assert (=> b!1042590 (= res!694760 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11618 thiss!1427) (mask!30433 thiss!1427))))))

(declare-fun b!1042591 () Bool)

(declare-fun res!694761 () Bool)

(assert (=> b!1042591 (=> res!694761 e!590661)))

(assert (=> b!1042591 (= res!694761 (not (arrayNoDuplicates!0 (_keys!11618 thiss!1427) #b00000000000000000000000000000000 Nil!22100)))))

(declare-fun b!1042592 () Bool)

(declare-fun res!694756 () Bool)

(assert (=> b!1042592 (=> res!694756 e!590661)))

(assert (=> b!1042592 (= res!694756 (or (not (= (size!32146 (_values!6392 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30433 thiss!1427)))) (not (= (size!32145 (_keys!11618 thiss!1427)) (size!32146 (_values!6392 thiss!1427)))) (bvslt (mask!30433 thiss!1427) #b00000000000000000000000000000000) (bvslt (extraKeys!6097 thiss!1427) #b00000000000000000000000000000000) (bvsgt (extraKeys!6097 thiss!1427) #b00000000000000000000000000000011)))))

(declare-fun b!1042593 () Bool)

(declare-fun res!694758 () Bool)

(declare-fun e!590655 () Bool)

(assert (=> b!1042593 (=> (not res!694758) (not e!590655))))

(assert (=> b!1042593 (= res!694758 (not (= key!909 (bvneg key!909))))))

(declare-fun res!694759 () Bool)

(assert (=> start!91584 (=> (not res!694759) (not e!590655))))

(declare-fun valid!2195 (LongMapFixedSize!5974) Bool)

(assert (=> start!91584 (= res!694759 (valid!2195 thiss!1427))))

(assert (=> start!91584 e!590655))

(assert (=> start!91584 e!590658))

(assert (=> start!91584 true))

(declare-fun b!1042589 () Bool)

(assert (=> b!1042589 (= e!590662 (and e!590660 mapRes!38792))))

(declare-fun condMapEmpty!38792 () Bool)

(declare-fun mapDefault!38792 () ValueCell!11690)

