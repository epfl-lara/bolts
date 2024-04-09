; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!91208 () Bool)

(assert start!91208)

(declare-fun b!1040496 () Bool)

(declare-fun b_free!21017 () Bool)

(declare-fun b_next!21017 () Bool)

(assert (=> b!1040496 (= b_free!21017 (not b_next!21017))))

(declare-fun tp!74249 () Bool)

(declare-fun b_and!33567 () Bool)

(assert (=> b!1040496 (= tp!74249 b_and!33567)))

(declare-fun b!1040493 () Bool)

(declare-fun e!589143 () Bool)

(declare-fun e!589144 () Bool)

(assert (=> b!1040493 (= e!589143 (not e!589144))))

(declare-fun res!693778 () Bool)

(assert (=> b!1040493 (=> res!693778 e!589144)))

(declare-datatypes ((SeekEntryResult!9798 0))(
  ( (MissingZero!9798 (index!41562 (_ BitVec 32))) (Found!9798 (index!41563 (_ BitVec 32))) (Intermediate!9798 (undefined!10610 Bool) (index!41564 (_ BitVec 32)) (x!92881 (_ BitVec 32))) (Undefined!9798) (MissingVacant!9798 (index!41565 (_ BitVec 32))) )
))
(declare-fun lt!458576 () SeekEntryResult!9798)

(declare-datatypes ((V!37855 0))(
  ( (V!37856 (val!12419 Int)) )
))
(declare-datatypes ((ValueCell!11665 0))(
  ( (ValueCellFull!11665 (v!15007 V!37855)) (EmptyCell!11665) )
))
(declare-datatypes ((array!65596 0))(
  ( (array!65597 (arr!31559 (Array (_ BitVec 32) (_ BitVec 64))) (size!32091 (_ BitVec 32))) )
))
(declare-datatypes ((array!65598 0))(
  ( (array!65599 (arr!31560 (Array (_ BitVec 32) ValueCell!11665)) (size!32092 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5924 0))(
  ( (LongMapFixedSize!5925 (defaultEntry!6344 Int) (mask!30335 (_ BitVec 32)) (extraKeys!6072 (_ BitVec 32)) (zeroValue!6178 V!37855) (minValue!6178 V!37855) (_size!3017 (_ BitVec 32)) (_keys!11563 array!65596) (_values!6367 array!65598) (_vacant!3017 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5924)

(assert (=> b!1040493 (= res!693778 (or (bvslt (index!41563 lt!458576) #b00000000000000000000000000000000) (bvsge (index!41563 lt!458576) (size!32091 (_keys!11563 thiss!1427))) (bvsge (size!32091 (_keys!11563 thiss!1427)) #b01111111111111111111111111111111)))))

(declare-fun lt!458573 () array!65596)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65596 (_ BitVec 32)) Bool)

(assert (=> b!1040493 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!458573 (mask!30335 thiss!1427))))

(declare-datatypes ((Unit!34014 0))(
  ( (Unit!34015) )
))
(declare-fun lt!458574 () Unit!34014)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!65596 (_ BitVec 32) (_ BitVec 32)) Unit!34014)

(assert (=> b!1040493 (= lt!458574 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11563 thiss!1427) (index!41563 lt!458576) (mask!30335 thiss!1427)))))

(declare-datatypes ((List!22083 0))(
  ( (Nil!22080) (Cons!22079 (h!23283 (_ BitVec 64)) (t!31304 List!22083)) )
))
(declare-fun arrayNoDuplicates!0 (array!65596 (_ BitVec 32) List!22083) Bool)

(assert (=> b!1040493 (arrayNoDuplicates!0 lt!458573 #b00000000000000000000000000000000 Nil!22080)))

(declare-fun lt!458572 () Unit!34014)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!65596 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22083) Unit!34014)

(assert (=> b!1040493 (= lt!458572 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11563 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41563 lt!458576) #b00000000000000000000000000000000 Nil!22080))))

(declare-fun arrayCountValidKeys!0 (array!65596 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1040493 (= (arrayCountValidKeys!0 lt!458573 #b00000000000000000000000000000000 (size!32091 (_keys!11563 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11563 thiss!1427) #b00000000000000000000000000000000 (size!32091 (_keys!11563 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1040493 (= lt!458573 (array!65597 (store (arr!31559 (_keys!11563 thiss!1427)) (index!41563 lt!458576) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32091 (_keys!11563 thiss!1427))))))

(declare-fun lt!458575 () Unit!34014)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65596 (_ BitVec 32) (_ BitVec 64)) Unit!34014)

(assert (=> b!1040493 (= lt!458575 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11563 thiss!1427) (index!41563 lt!458576) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapNonEmpty!38686 () Bool)

(declare-fun mapRes!38686 () Bool)

(declare-fun tp!74250 () Bool)

(declare-fun e!589141 () Bool)

(assert (=> mapNonEmpty!38686 (= mapRes!38686 (and tp!74250 e!589141))))

(declare-fun mapValue!38686 () ValueCell!11665)

(declare-fun mapKey!38686 () (_ BitVec 32))

(declare-fun mapRest!38686 () (Array (_ BitVec 32) ValueCell!11665))

(assert (=> mapNonEmpty!38686 (= (arr!31560 (_values!6367 thiss!1427)) (store mapRest!38686 mapKey!38686 mapValue!38686))))

(declare-fun b!1040494 () Bool)

(declare-fun tp_is_empty!24737 () Bool)

(assert (=> b!1040494 (= e!589141 tp_is_empty!24737)))

(declare-fun b!1040495 () Bool)

(declare-fun res!693779 () Bool)

(assert (=> b!1040495 (=> res!693779 e!589144)))

(assert (=> b!1040495 (= res!693779 (not (arrayNoDuplicates!0 (_keys!11563 thiss!1427) #b00000000000000000000000000000000 Nil!22080)))))

(declare-fun e!589140 () Bool)

(declare-fun e!589145 () Bool)

(declare-fun array_inv!24229 (array!65596) Bool)

(declare-fun array_inv!24230 (array!65598) Bool)

(assert (=> b!1040496 (= e!589145 (and tp!74249 tp_is_empty!24737 (array_inv!24229 (_keys!11563 thiss!1427)) (array_inv!24230 (_values!6367 thiss!1427)) e!589140))))

(declare-fun b!1040497 () Bool)

(declare-fun res!693775 () Bool)

(assert (=> b!1040497 (=> res!693775 e!589144)))

(declare-fun key!909 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1040497 (= res!693775 (not (validKeyInArray!0 key!909)))))

(declare-fun b!1040498 () Bool)

(declare-fun e!589139 () Bool)

(assert (=> b!1040498 (= e!589139 tp_is_empty!24737)))

(declare-fun b!1040499 () Bool)

(declare-fun res!693774 () Bool)

(declare-fun e!589142 () Bool)

(assert (=> b!1040499 (=> (not res!693774) (not e!589142))))

(assert (=> b!1040499 (= res!693774 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1040500 () Bool)

(assert (=> b!1040500 (= e!589142 e!589143)))

(declare-fun res!693777 () Bool)

(assert (=> b!1040500 (=> (not res!693777) (not e!589143))))

(assert (=> b!1040500 (= res!693777 (is-Found!9798 lt!458576))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65596 (_ BitVec 32)) SeekEntryResult!9798)

(assert (=> b!1040500 (= lt!458576 (seekEntry!0 key!909 (_keys!11563 thiss!1427) (mask!30335 thiss!1427)))))

(declare-fun res!693776 () Bool)

(assert (=> start!91208 (=> (not res!693776) (not e!589142))))

(declare-fun valid!2180 (LongMapFixedSize!5924) Bool)

(assert (=> start!91208 (= res!693776 (valid!2180 thiss!1427))))

(assert (=> start!91208 e!589142))

(assert (=> start!91208 e!589145))

(assert (=> start!91208 true))

(declare-fun mapIsEmpty!38686 () Bool)

(assert (=> mapIsEmpty!38686 mapRes!38686))

(declare-fun b!1040501 () Bool)

(assert (=> b!1040501 (= e!589140 (and e!589139 mapRes!38686))))

(declare-fun condMapEmpty!38686 () Bool)

(declare-fun mapDefault!38686 () ValueCell!11665)

