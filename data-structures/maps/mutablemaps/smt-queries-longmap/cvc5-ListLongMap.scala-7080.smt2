; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89570 () Bool)

(assert start!89570)

(declare-fun b!1026889 () Bool)

(declare-fun b_free!20533 () Bool)

(declare-fun b_next!20533 () Bool)

(assert (=> b!1026889 (= b_free!20533 (not b_next!20533))))

(declare-fun tp!72645 () Bool)

(declare-fun b_and!32797 () Bool)

(assert (=> b!1026889 (= tp!72645 b_and!32797)))

(declare-fun res!687463 () Bool)

(declare-fun e!579461 () Bool)

(assert (=> start!89570 (=> (not res!687463) (not e!579461))))

(declare-datatypes ((V!37211 0))(
  ( (V!37212 (val!12177 Int)) )
))
(declare-datatypes ((ValueCell!11423 0))(
  ( (ValueCellFull!11423 (v!14747 V!37211)) (EmptyCell!11423) )
))
(declare-datatypes ((array!64540 0))(
  ( (array!64541 (arr!31075 (Array (_ BitVec 32) (_ BitVec 64))) (size!31589 (_ BitVec 32))) )
))
(declare-datatypes ((array!64542 0))(
  ( (array!64543 (arr!31076 (Array (_ BitVec 32) ValueCell!11423)) (size!31590 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5440 0))(
  ( (LongMapFixedSize!5441 (defaultEntry!6072 Int) (mask!29773 (_ BitVec 32)) (extraKeys!5804 (_ BitVec 32)) (zeroValue!5908 V!37211) (minValue!5908 V!37211) (_size!2775 (_ BitVec 32)) (_keys!11216 array!64540) (_values!6095 array!64542) (_vacant!2775 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5440)

(declare-fun valid!2018 (LongMapFixedSize!5440) Bool)

(assert (=> start!89570 (= res!687463 (valid!2018 thiss!1427))))

(assert (=> start!89570 e!579461))

(declare-fun e!579462 () Bool)

(assert (=> start!89570 e!579462))

(assert (=> start!89570 true))

(declare-fun mapIsEmpty!37808 () Bool)

(declare-fun mapRes!37808 () Bool)

(assert (=> mapIsEmpty!37808 mapRes!37808))

(declare-fun b!1026887 () Bool)

(declare-fun e!579464 () Bool)

(declare-fun tp_is_empty!24253 () Bool)

(assert (=> b!1026887 (= e!579464 tp_is_empty!24253)))

(declare-fun b!1026888 () Bool)

(declare-fun res!687464 () Bool)

(assert (=> b!1026888 (=> (not res!687464) (not e!579461))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1026888 (= res!687464 (not (= key!909 (bvneg key!909))))))

(declare-fun e!579457 () Bool)

(declare-fun array_inv!23913 (array!64540) Bool)

(declare-fun array_inv!23914 (array!64542) Bool)

(assert (=> b!1026889 (= e!579462 (and tp!72645 tp_is_empty!24253 (array_inv!23913 (_keys!11216 thiss!1427)) (array_inv!23914 (_values!6095 thiss!1427)) e!579457))))

(declare-fun b!1026890 () Bool)

(declare-fun e!579459 () Bool)

(assert (=> b!1026890 (= e!579459 tp_is_empty!24253)))

(declare-fun b!1026891 () Bool)

(declare-fun res!687465 () Bool)

(declare-fun e!579458 () Bool)

(assert (=> b!1026891 (=> res!687465 e!579458)))

(assert (=> b!1026891 (= res!687465 (or (not (= (size!31590 (_values!6095 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29773 thiss!1427)))) (not (= (size!31589 (_keys!11216 thiss!1427)) (size!31590 (_values!6095 thiss!1427)))) (bvslt (mask!29773 thiss!1427) #b00000000000000000000000000000000) (bvslt (extraKeys!5804 thiss!1427) #b00000000000000000000000000000000) (bvsgt (extraKeys!5804 thiss!1427) #b00000000000000000000000000000011)))))

(declare-fun b!1026892 () Bool)

(declare-fun e!579460 () Bool)

(assert (=> b!1026892 (= e!579460 (not e!579458))))

(declare-fun res!687460 () Bool)

(assert (=> b!1026892 (=> res!687460 e!579458)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1026892 (= res!687460 (not (validMask!0 (mask!29773 thiss!1427))))))

(declare-fun lt!451888 () array!64540)

(declare-fun arrayContainsKey!0 (array!64540 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1026892 (not (arrayContainsKey!0 lt!451888 key!909 #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!33426 0))(
  ( (Unit!33427) )
))
(declare-fun lt!451889 () Unit!33426)

(declare-datatypes ((SeekEntryResult!9648 0))(
  ( (MissingZero!9648 (index!40962 (_ BitVec 32))) (Found!9648 (index!40963 (_ BitVec 32))) (Intermediate!9648 (undefined!10460 Bool) (index!40964 (_ BitVec 32)) (x!91353 (_ BitVec 32))) (Undefined!9648) (MissingVacant!9648 (index!40965 (_ BitVec 32))) )
))
(declare-fun lt!451891 () SeekEntryResult!9648)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!64540 (_ BitVec 32) (_ BitVec 64)) Unit!33426)

(assert (=> b!1026892 (= lt!451889 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11216 thiss!1427) (index!40963 lt!451891) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64540 (_ BitVec 32)) Bool)

(assert (=> b!1026892 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!451888 (mask!29773 thiss!1427))))

(declare-fun lt!451885 () Unit!33426)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64540 (_ BitVec 32) (_ BitVec 32)) Unit!33426)

(assert (=> b!1026892 (= lt!451885 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11216 thiss!1427) (index!40963 lt!451891) (mask!29773 thiss!1427)))))

(declare-datatypes ((List!21900 0))(
  ( (Nil!21897) (Cons!21896 (h!23094 (_ BitVec 64)) (t!30969 List!21900)) )
))
(declare-fun arrayNoDuplicates!0 (array!64540 (_ BitVec 32) List!21900) Bool)

(assert (=> b!1026892 (arrayNoDuplicates!0 lt!451888 #b00000000000000000000000000000000 Nil!21897)))

(declare-fun lt!451886 () Unit!33426)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64540 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21900) Unit!33426)

(assert (=> b!1026892 (= lt!451886 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11216 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!40963 lt!451891) #b00000000000000000000000000000000 Nil!21897))))

(declare-fun arrayCountValidKeys!0 (array!64540 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1026892 (= (arrayCountValidKeys!0 lt!451888 #b00000000000000000000000000000000 (size!31589 (_keys!11216 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11216 thiss!1427) #b00000000000000000000000000000000 (size!31589 (_keys!11216 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1026892 (= lt!451888 (array!64541 (store (arr!31075 (_keys!11216 thiss!1427)) (index!40963 lt!451891) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31589 (_keys!11216 thiss!1427))))))

(declare-fun lt!451890 () Unit!33426)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64540 (_ BitVec 32) (_ BitVec 64)) Unit!33426)

(assert (=> b!1026892 (= lt!451890 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11216 thiss!1427) (index!40963 lt!451891) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1026893 () Bool)

(assert (=> b!1026893 (= e!579457 (and e!579464 mapRes!37808))))

(declare-fun condMapEmpty!37808 () Bool)

(declare-fun mapDefault!37808 () ValueCell!11423)

