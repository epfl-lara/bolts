; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89504 () Bool)

(assert start!89504)

(declare-fun b!1025968 () Bool)

(declare-fun b_free!20467 () Bool)

(declare-fun b_next!20467 () Bool)

(assert (=> b!1025968 (= b_free!20467 (not b_next!20467))))

(declare-fun tp!72447 () Bool)

(declare-fun b_and!32731 () Bool)

(assert (=> b!1025968 (= tp!72447 b_and!32731)))

(declare-fun mapIsEmpty!37709 () Bool)

(declare-fun mapRes!37709 () Bool)

(assert (=> mapIsEmpty!37709 mapRes!37709))

(declare-fun b!1025965 () Bool)

(declare-fun e!578672 () Bool)

(declare-fun tp_is_empty!24187 () Bool)

(assert (=> b!1025965 (= e!578672 tp_is_empty!24187)))

(declare-fun mapNonEmpty!37709 () Bool)

(declare-fun tp!72448 () Bool)

(declare-fun e!578665 () Bool)

(assert (=> mapNonEmpty!37709 (= mapRes!37709 (and tp!72448 e!578665))))

(declare-fun mapKey!37709 () (_ BitVec 32))

(declare-datatypes ((V!37123 0))(
  ( (V!37124 (val!12144 Int)) )
))
(declare-datatypes ((ValueCell!11390 0))(
  ( (ValueCellFull!11390 (v!14714 V!37123)) (EmptyCell!11390) )
))
(declare-fun mapValue!37709 () ValueCell!11390)

(declare-datatypes ((array!64408 0))(
  ( (array!64409 (arr!31009 (Array (_ BitVec 32) (_ BitVec 64))) (size!31523 (_ BitVec 32))) )
))
(declare-datatypes ((array!64410 0))(
  ( (array!64411 (arr!31010 (Array (_ BitVec 32) ValueCell!11390)) (size!31524 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5374 0))(
  ( (LongMapFixedSize!5375 (defaultEntry!6039 Int) (mask!29718 (_ BitVec 32)) (extraKeys!5771 (_ BitVec 32)) (zeroValue!5875 V!37123) (minValue!5875 V!37123) (_size!2742 (_ BitVec 32)) (_keys!11183 array!64408) (_values!6062 array!64410) (_vacant!2742 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5374)

(declare-fun mapRest!37709 () (Array (_ BitVec 32) ValueCell!11390))

(assert (=> mapNonEmpty!37709 (= (arr!31010 (_values!6062 thiss!1427)) (store mapRest!37709 mapKey!37709 mapValue!37709))))

(declare-fun b!1025966 () Bool)

(declare-fun e!578668 () Bool)

(declare-fun e!578670 () Bool)

(assert (=> b!1025966 (= e!578668 (not e!578670))))

(declare-fun res!686936 () Bool)

(assert (=> b!1025966 (=> res!686936 e!578670)))

(declare-datatypes ((SeekEntryResult!9622 0))(
  ( (MissingZero!9622 (index!40858 (_ BitVec 32))) (Found!9622 (index!40859 (_ BitVec 32))) (Intermediate!9622 (undefined!10434 Bool) (index!40860 (_ BitVec 32)) (x!91239 (_ BitVec 32))) (Undefined!9622) (MissingVacant!9622 (index!40861 (_ BitVec 32))) )
))
(declare-fun lt!451229 () SeekEntryResult!9622)

(assert (=> b!1025966 (= res!686936 (or (bvslt (index!40859 lt!451229) #b00000000000000000000000000000000) (bvsge (index!40859 lt!451229) (size!31523 (_keys!11183 thiss!1427))) (bvsge (size!31523 (_keys!11183 thiss!1427)) #b01111111111111111111111111111111)))))

(declare-fun lt!451231 () array!64408)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64408 (_ BitVec 32)) Bool)

(assert (=> b!1025966 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!451231 (mask!29718 thiss!1427))))

(declare-datatypes ((Unit!33382 0))(
  ( (Unit!33383) )
))
(declare-fun lt!451228 () Unit!33382)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64408 (_ BitVec 32) (_ BitVec 32)) Unit!33382)

(assert (=> b!1025966 (= lt!451228 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11183 thiss!1427) (index!40859 lt!451229) (mask!29718 thiss!1427)))))

(declare-datatypes ((List!21875 0))(
  ( (Nil!21872) (Cons!21871 (h!23069 (_ BitVec 64)) (t!30944 List!21875)) )
))
(declare-fun arrayNoDuplicates!0 (array!64408 (_ BitVec 32) List!21875) Bool)

(assert (=> b!1025966 (arrayNoDuplicates!0 lt!451231 #b00000000000000000000000000000000 Nil!21872)))

(declare-fun lt!451226 () Unit!33382)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64408 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21875) Unit!33382)

(assert (=> b!1025966 (= lt!451226 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11183 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!40859 lt!451229) #b00000000000000000000000000000000 Nil!21872))))

(declare-fun arrayCountValidKeys!0 (array!64408 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1025966 (= (arrayCountValidKeys!0 lt!451231 #b00000000000000000000000000000000 (size!31523 (_keys!11183 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11183 thiss!1427) #b00000000000000000000000000000000 (size!31523 (_keys!11183 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1025966 (= lt!451231 (array!64409 (store (arr!31009 (_keys!11183 thiss!1427)) (index!40859 lt!451229) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31523 (_keys!11183 thiss!1427))))))

(declare-fun lt!451230 () Unit!33382)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64408 (_ BitVec 32) (_ BitVec 64)) Unit!33382)

(assert (=> b!1025966 (= lt!451230 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11183 thiss!1427) (index!40859 lt!451229) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1025967 () Bool)

(declare-fun e!578669 () Bool)

(assert (=> b!1025967 (= e!578669 (and e!578672 mapRes!37709))))

(declare-fun condMapEmpty!37709 () Bool)

(declare-fun mapDefault!37709 () ValueCell!11390)

