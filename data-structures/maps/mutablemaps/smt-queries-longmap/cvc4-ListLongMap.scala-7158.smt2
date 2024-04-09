; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!91154 () Bool)

(assert start!91154)

(declare-fun b!1040124 () Bool)

(declare-fun b_free!21005 () Bool)

(declare-fun b_next!21005 () Bool)

(assert (=> b!1040124 (= b_free!21005 (not b_next!21005))))

(declare-fun tp!74208 () Bool)

(declare-fun b_and!33555 () Bool)

(assert (=> b!1040124 (= tp!74208 b_and!33555)))

(declare-fun b!1040122 () Bool)

(declare-fun e!588871 () Bool)

(declare-fun e!588869 () Bool)

(assert (=> b!1040122 (= e!588871 (not e!588869))))

(declare-fun res!693589 () Bool)

(assert (=> b!1040122 (=> res!693589 e!588869)))

(declare-datatypes ((SeekEntryResult!9793 0))(
  ( (MissingZero!9793 (index!41542 (_ BitVec 32))) (Found!9793 (index!41543 (_ BitVec 32))) (Intermediate!9793 (undefined!10605 Bool) (index!41544 (_ BitVec 32)) (x!92844 (_ BitVec 32))) (Undefined!9793) (MissingVacant!9793 (index!41545 (_ BitVec 32))) )
))
(declare-fun lt!458417 () SeekEntryResult!9793)

(declare-datatypes ((V!37839 0))(
  ( (V!37840 (val!12413 Int)) )
))
(declare-datatypes ((ValueCell!11659 0))(
  ( (ValueCellFull!11659 (v!15001 V!37839)) (EmptyCell!11659) )
))
(declare-datatypes ((array!65568 0))(
  ( (array!65569 (arr!31547 (Array (_ BitVec 32) (_ BitVec 64))) (size!32079 (_ BitVec 32))) )
))
(declare-datatypes ((array!65570 0))(
  ( (array!65571 (arr!31548 (Array (_ BitVec 32) ValueCell!11659)) (size!32080 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5912 0))(
  ( (LongMapFixedSize!5913 (defaultEntry!6338 Int) (mask!30319 (_ BitVec 32)) (extraKeys!6066 (_ BitVec 32)) (zeroValue!6172 V!37839) (minValue!6172 V!37839) (_size!3011 (_ BitVec 32)) (_keys!11553 array!65568) (_values!6361 array!65570) (_vacant!3011 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5912)

(assert (=> b!1040122 (= res!693589 (or (bvslt (index!41543 lt!458417) #b00000000000000000000000000000000) (bvsge (index!41543 lt!458417) (size!32079 (_keys!11553 thiss!1427))) (bvsge (size!32079 (_keys!11553 thiss!1427)) #b01111111111111111111111111111111)))))

(declare-fun lt!458416 () array!65568)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65568 (_ BitVec 32)) Bool)

(assert (=> b!1040122 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!458416 (mask!30319 thiss!1427))))

(declare-datatypes ((Unit!34006 0))(
  ( (Unit!34007) )
))
(declare-fun lt!458415 () Unit!34006)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!65568 (_ BitVec 32) (_ BitVec 32)) Unit!34006)

(assert (=> b!1040122 (= lt!458415 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11553 thiss!1427) (index!41543 lt!458417) (mask!30319 thiss!1427)))))

(declare-datatypes ((List!22079 0))(
  ( (Nil!22076) (Cons!22075 (h!23279 (_ BitVec 64)) (t!31300 List!22079)) )
))
(declare-fun arrayNoDuplicates!0 (array!65568 (_ BitVec 32) List!22079) Bool)

(assert (=> b!1040122 (arrayNoDuplicates!0 lt!458416 #b00000000000000000000000000000000 Nil!22076)))

(declare-fun lt!458418 () Unit!34006)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!65568 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22079) Unit!34006)

(assert (=> b!1040122 (= lt!458418 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11553 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41543 lt!458417) #b00000000000000000000000000000000 Nil!22076))))

(declare-fun arrayCountValidKeys!0 (array!65568 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1040122 (= (arrayCountValidKeys!0 lt!458416 #b00000000000000000000000000000000 (size!32079 (_keys!11553 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11553 thiss!1427) #b00000000000000000000000000000000 (size!32079 (_keys!11553 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1040122 (= lt!458416 (array!65569 (store (arr!31547 (_keys!11553 thiss!1427)) (index!41543 lt!458417) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32079 (_keys!11553 thiss!1427))))))

(declare-fun lt!458414 () Unit!34006)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65568 (_ BitVec 32) (_ BitVec 64)) Unit!34006)

(assert (=> b!1040122 (= lt!458414 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11553 thiss!1427) (index!41543 lt!458417) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1040123 () Bool)

(declare-fun e!588875 () Bool)

(assert (=> b!1040123 (= e!588875 e!588871)))

(declare-fun res!693587 () Bool)

(assert (=> b!1040123 (=> (not res!693587) (not e!588871))))

(assert (=> b!1040123 (= res!693587 (is-Found!9793 lt!458417))))

(declare-fun key!909 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65568 (_ BitVec 32)) SeekEntryResult!9793)

(assert (=> b!1040123 (= lt!458417 (seekEntry!0 key!909 (_keys!11553 thiss!1427) (mask!30319 thiss!1427)))))

(declare-fun tp_is_empty!24725 () Bool)

(declare-fun e!588874 () Bool)

(declare-fun e!588873 () Bool)

(declare-fun array_inv!24221 (array!65568) Bool)

(declare-fun array_inv!24222 (array!65570) Bool)

(assert (=> b!1040124 (= e!588873 (and tp!74208 tp_is_empty!24725 (array_inv!24221 (_keys!11553 thiss!1427)) (array_inv!24222 (_values!6361 thiss!1427)) e!588874))))

(declare-fun res!693590 () Bool)

(assert (=> start!91154 (=> (not res!693590) (not e!588875))))

(declare-fun valid!2175 (LongMapFixedSize!5912) Bool)

(assert (=> start!91154 (= res!693590 (valid!2175 thiss!1427))))

(assert (=> start!91154 e!588875))

(assert (=> start!91154 e!588873))

(assert (=> start!91154 true))

(declare-fun b!1040125 () Bool)

(declare-fun e!588870 () Bool)

(assert (=> b!1040125 (= e!588870 tp_is_empty!24725)))

(declare-fun b!1040126 () Bool)

(declare-fun e!588872 () Bool)

(assert (=> b!1040126 (= e!588872 tp_is_empty!24725)))

(declare-fun b!1040127 () Bool)

(declare-fun res!693588 () Bool)

(assert (=> b!1040127 (=> (not res!693588) (not e!588875))))

(assert (=> b!1040127 (= res!693588 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1040128 () Bool)

(assert (=> b!1040128 (= e!588869 (arrayNoDuplicates!0 (_keys!11553 thiss!1427) #b00000000000000000000000000000000 Nil!22076))))

(declare-fun mapIsEmpty!38662 () Bool)

(declare-fun mapRes!38662 () Bool)

(assert (=> mapIsEmpty!38662 mapRes!38662))

(declare-fun mapNonEmpty!38662 () Bool)

(declare-fun tp!74207 () Bool)

(assert (=> mapNonEmpty!38662 (= mapRes!38662 (and tp!74207 e!588870))))

(declare-fun mapKey!38662 () (_ BitVec 32))

(declare-fun mapValue!38662 () ValueCell!11659)

(declare-fun mapRest!38662 () (Array (_ BitVec 32) ValueCell!11659))

(assert (=> mapNonEmpty!38662 (= (arr!31548 (_values!6361 thiss!1427)) (store mapRest!38662 mapKey!38662 mapValue!38662))))

(declare-fun b!1040129 () Bool)

(assert (=> b!1040129 (= e!588874 (and e!588872 mapRes!38662))))

(declare-fun condMapEmpty!38662 () Bool)

(declare-fun mapDefault!38662 () ValueCell!11659)

