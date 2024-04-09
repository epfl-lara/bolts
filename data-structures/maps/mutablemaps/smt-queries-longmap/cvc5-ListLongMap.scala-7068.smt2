; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89498 () Bool)

(assert start!89498)

(declare-fun b!1025896 () Bool)

(declare-fun b_free!20461 () Bool)

(declare-fun b_next!20461 () Bool)

(assert (=> b!1025896 (= b_free!20461 (not b_next!20461))))

(declare-fun tp!72430 () Bool)

(declare-fun b_and!32725 () Bool)

(assert (=> b!1025896 (= tp!72430 b_and!32725)))

(declare-fun b!1025893 () Bool)

(declare-fun e!578599 () Bool)

(assert (=> b!1025893 (= e!578599 true)))

(declare-fun lt!451176 () Bool)

(declare-datatypes ((V!37115 0))(
  ( (V!37116 (val!12141 Int)) )
))
(declare-datatypes ((ValueCell!11387 0))(
  ( (ValueCellFull!11387 (v!14711 V!37115)) (EmptyCell!11387) )
))
(declare-datatypes ((array!64396 0))(
  ( (array!64397 (arr!31003 (Array (_ BitVec 32) (_ BitVec 64))) (size!31517 (_ BitVec 32))) )
))
(declare-datatypes ((array!64398 0))(
  ( (array!64399 (arr!31004 (Array (_ BitVec 32) ValueCell!11387)) (size!31518 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5368 0))(
  ( (LongMapFixedSize!5369 (defaultEntry!6036 Int) (mask!29713 (_ BitVec 32)) (extraKeys!5768 (_ BitVec 32)) (zeroValue!5872 V!37115) (minValue!5872 V!37115) (_size!2739 (_ BitVec 32)) (_keys!11180 array!64396) (_values!6059 array!64398) (_vacant!2739 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5368)

(declare-datatypes ((List!21872 0))(
  ( (Nil!21869) (Cons!21868 (h!23066 (_ BitVec 64)) (t!30941 List!21872)) )
))
(declare-fun arrayNoDuplicates!0 (array!64396 (_ BitVec 32) List!21872) Bool)

(assert (=> b!1025893 (= lt!451176 (arrayNoDuplicates!0 (_keys!11180 thiss!1427) #b00000000000000000000000000000000 Nil!21869))))

(declare-fun b!1025894 () Bool)

(declare-fun e!578597 () Bool)

(assert (=> b!1025894 (= e!578597 (not e!578599))))

(declare-fun res!686899 () Bool)

(assert (=> b!1025894 (=> res!686899 e!578599)))

(declare-datatypes ((SeekEntryResult!9619 0))(
  ( (MissingZero!9619 (index!40846 (_ BitVec 32))) (Found!9619 (index!40847 (_ BitVec 32))) (Intermediate!9619 (undefined!10431 Bool) (index!40848 (_ BitVec 32)) (x!91228 (_ BitVec 32))) (Undefined!9619) (MissingVacant!9619 (index!40849 (_ BitVec 32))) )
))
(declare-fun lt!451177 () SeekEntryResult!9619)

(assert (=> b!1025894 (= res!686899 (or (bvslt (index!40847 lt!451177) #b00000000000000000000000000000000) (bvsge (index!40847 lt!451177) (size!31517 (_keys!11180 thiss!1427))) (bvsge (size!31517 (_keys!11180 thiss!1427)) #b01111111111111111111111111111111)))))

(declare-fun lt!451174 () array!64396)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64396 (_ BitVec 32)) Bool)

(assert (=> b!1025894 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!451174 (mask!29713 thiss!1427))))

(declare-datatypes ((Unit!33376 0))(
  ( (Unit!33377) )
))
(declare-fun lt!451173 () Unit!33376)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64396 (_ BitVec 32) (_ BitVec 32)) Unit!33376)

(assert (=> b!1025894 (= lt!451173 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11180 thiss!1427) (index!40847 lt!451177) (mask!29713 thiss!1427)))))

(assert (=> b!1025894 (arrayNoDuplicates!0 lt!451174 #b00000000000000000000000000000000 Nil!21869)))

(declare-fun lt!451172 () Unit!33376)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64396 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21872) Unit!33376)

(assert (=> b!1025894 (= lt!451172 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11180 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!40847 lt!451177) #b00000000000000000000000000000000 Nil!21869))))

(declare-fun arrayCountValidKeys!0 (array!64396 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1025894 (= (arrayCountValidKeys!0 lt!451174 #b00000000000000000000000000000000 (size!31517 (_keys!11180 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11180 thiss!1427) #b00000000000000000000000000000000 (size!31517 (_keys!11180 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1025894 (= lt!451174 (array!64397 (store (arr!31003 (_keys!11180 thiss!1427)) (index!40847 lt!451177) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31517 (_keys!11180 thiss!1427))))))

(declare-fun lt!451175 () Unit!33376)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64396 (_ BitVec 32) (_ BitVec 64)) Unit!33376)

(assert (=> b!1025894 (= lt!451175 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11180 thiss!1427) (index!40847 lt!451177) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapIsEmpty!37700 () Bool)

(declare-fun mapRes!37700 () Bool)

(assert (=> mapIsEmpty!37700 mapRes!37700))

(declare-fun b!1025895 () Bool)

(declare-fun res!686900 () Bool)

(declare-fun e!578596 () Bool)

(assert (=> b!1025895 (=> (not res!686900) (not e!578596))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1025895 (= res!686900 (not (= key!909 (bvneg key!909))))))

(declare-fun e!578594 () Bool)

(declare-fun e!578595 () Bool)

(declare-fun tp_is_empty!24181 () Bool)

(declare-fun array_inv!23863 (array!64396) Bool)

(declare-fun array_inv!23864 (array!64398) Bool)

(assert (=> b!1025896 (= e!578595 (and tp!72430 tp_is_empty!24181 (array_inv!23863 (_keys!11180 thiss!1427)) (array_inv!23864 (_values!6059 thiss!1427)) e!578594))))

(declare-fun b!1025897 () Bool)

(assert (=> b!1025897 (= e!578596 e!578597)))

(declare-fun res!686901 () Bool)

(assert (=> b!1025897 (=> (not res!686901) (not e!578597))))

(assert (=> b!1025897 (= res!686901 (is-Found!9619 lt!451177))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64396 (_ BitVec 32)) SeekEntryResult!9619)

(assert (=> b!1025897 (= lt!451177 (seekEntry!0 key!909 (_keys!11180 thiss!1427) (mask!29713 thiss!1427)))))

(declare-fun res!686898 () Bool)

(assert (=> start!89498 (=> (not res!686898) (not e!578596))))

(declare-fun valid!1990 (LongMapFixedSize!5368) Bool)

(assert (=> start!89498 (= res!686898 (valid!1990 thiss!1427))))

(assert (=> start!89498 e!578596))

(assert (=> start!89498 e!578595))

(assert (=> start!89498 true))

(declare-fun mapNonEmpty!37700 () Bool)

(declare-fun tp!72429 () Bool)

(declare-fun e!578593 () Bool)

(assert (=> mapNonEmpty!37700 (= mapRes!37700 (and tp!72429 e!578593))))

(declare-fun mapRest!37700 () (Array (_ BitVec 32) ValueCell!11387))

(declare-fun mapValue!37700 () ValueCell!11387)

(declare-fun mapKey!37700 () (_ BitVec 32))

(assert (=> mapNonEmpty!37700 (= (arr!31004 (_values!6059 thiss!1427)) (store mapRest!37700 mapKey!37700 mapValue!37700))))

(declare-fun b!1025898 () Bool)

(declare-fun e!578598 () Bool)

(assert (=> b!1025898 (= e!578594 (and e!578598 mapRes!37700))))

(declare-fun condMapEmpty!37700 () Bool)

(declare-fun mapDefault!37700 () ValueCell!11387)

