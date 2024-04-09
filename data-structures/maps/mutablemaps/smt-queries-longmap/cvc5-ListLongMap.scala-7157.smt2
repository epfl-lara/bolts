; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!91124 () Bool)

(assert start!91124)

(declare-fun b!1039914 () Bool)

(declare-fun b_free!20995 () Bool)

(declare-fun b_next!20995 () Bool)

(assert (=> b!1039914 (= b_free!20995 (not b_next!20995))))

(declare-fun tp!74174 () Bool)

(declare-fun b_and!33545 () Bool)

(assert (=> b!1039914 (= tp!74174 b_and!33545)))

(declare-fun b!1039913 () Bool)

(declare-fun e!588703 () Bool)

(declare-fun tp_is_empty!24715 () Bool)

(assert (=> b!1039913 (= e!588703 tp_is_empty!24715)))

(declare-fun e!588700 () Bool)

(declare-datatypes ((V!37827 0))(
  ( (V!37828 (val!12408 Int)) )
))
(declare-datatypes ((ValueCell!11654 0))(
  ( (ValueCellFull!11654 (v!14996 V!37827)) (EmptyCell!11654) )
))
(declare-datatypes ((array!65546 0))(
  ( (array!65547 (arr!31537 (Array (_ BitVec 32) (_ BitVec 64))) (size!32069 (_ BitVec 32))) )
))
(declare-datatypes ((array!65548 0))(
  ( (array!65549 (arr!31538 (Array (_ BitVec 32) ValueCell!11654)) (size!32070 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5902 0))(
  ( (LongMapFixedSize!5903 (defaultEntry!6333 Int) (mask!30309 (_ BitVec 32)) (extraKeys!6061 (_ BitVec 32)) (zeroValue!6167 V!37827) (minValue!6167 V!37827) (_size!3006 (_ BitVec 32)) (_keys!11546 array!65546) (_values!6356 array!65548) (_vacant!3006 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5902)

(declare-fun e!588697 () Bool)

(declare-fun array_inv!24215 (array!65546) Bool)

(declare-fun array_inv!24216 (array!65548) Bool)

(assert (=> b!1039914 (= e!588697 (and tp!74174 tp_is_empty!24715 (array_inv!24215 (_keys!11546 thiss!1427)) (array_inv!24216 (_values!6356 thiss!1427)) e!588700))))

(declare-fun b!1039915 () Bool)

(declare-fun res!693492 () Bool)

(declare-fun e!588702 () Bool)

(assert (=> b!1039915 (=> (not res!693492) (not e!588702))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1039915 (= res!693492 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1039916 () Bool)

(declare-fun e!588701 () Bool)

(declare-datatypes ((SeekEntryResult!9789 0))(
  ( (MissingZero!9789 (index!41526 (_ BitVec 32))) (Found!9789 (index!41527 (_ BitVec 32))) (Intermediate!9789 (undefined!10601 Bool) (index!41528 (_ BitVec 32)) (x!92824 (_ BitVec 32))) (Undefined!9789) (MissingVacant!9789 (index!41529 (_ BitVec 32))) )
))
(declare-fun lt!458308 () SeekEntryResult!9789)

(assert (=> b!1039916 (= e!588701 (not (or (bvslt (index!41527 lt!458308) #b00000000000000000000000000000000) (bvsge (index!41527 lt!458308) (size!32069 (_keys!11546 thiss!1427))) (bvslt (size!32069 (_keys!11546 thiss!1427)) #b01111111111111111111111111111111))))))

(declare-fun lt!458305 () array!65546)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65546 (_ BitVec 32)) Bool)

(assert (=> b!1039916 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!458305 (mask!30309 thiss!1427))))

(declare-datatypes ((Unit!33998 0))(
  ( (Unit!33999) )
))
(declare-fun lt!458309 () Unit!33998)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!65546 (_ BitVec 32) (_ BitVec 32)) Unit!33998)

(assert (=> b!1039916 (= lt!458309 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11546 thiss!1427) (index!41527 lt!458308) (mask!30309 thiss!1427)))))

(declare-datatypes ((List!22075 0))(
  ( (Nil!22072) (Cons!22071 (h!23275 (_ BitVec 64)) (t!31296 List!22075)) )
))
(declare-fun arrayNoDuplicates!0 (array!65546 (_ BitVec 32) List!22075) Bool)

(assert (=> b!1039916 (arrayNoDuplicates!0 lt!458305 #b00000000000000000000000000000000 Nil!22072)))

(declare-fun lt!458307 () Unit!33998)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!65546 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22075) Unit!33998)

(assert (=> b!1039916 (= lt!458307 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11546 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41527 lt!458308) #b00000000000000000000000000000000 Nil!22072))))

(declare-fun arrayCountValidKeys!0 (array!65546 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1039916 (= (arrayCountValidKeys!0 lt!458305 #b00000000000000000000000000000000 (size!32069 (_keys!11546 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11546 thiss!1427) #b00000000000000000000000000000000 (size!32069 (_keys!11546 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1039916 (= lt!458305 (array!65547 (store (arr!31537 (_keys!11546 thiss!1427)) (index!41527 lt!458308) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32069 (_keys!11546 thiss!1427))))))

(declare-fun lt!458306 () Unit!33998)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65546 (_ BitVec 32) (_ BitVec 64)) Unit!33998)

(assert (=> b!1039916 (= lt!458306 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11546 thiss!1427) (index!41527 lt!458308) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapIsEmpty!38644 () Bool)

(declare-fun mapRes!38644 () Bool)

(assert (=> mapIsEmpty!38644 mapRes!38644))

(declare-fun mapNonEmpty!38644 () Bool)

(declare-fun tp!74175 () Bool)

(assert (=> mapNonEmpty!38644 (= mapRes!38644 (and tp!74175 e!588703))))

(declare-fun mapValue!38644 () ValueCell!11654)

(declare-fun mapRest!38644 () (Array (_ BitVec 32) ValueCell!11654))

(declare-fun mapKey!38644 () (_ BitVec 32))

(assert (=> mapNonEmpty!38644 (= (arr!31538 (_values!6356 thiss!1427)) (store mapRest!38644 mapKey!38644 mapValue!38644))))

(declare-fun b!1039917 () Bool)

(assert (=> b!1039917 (= e!588702 e!588701)))

(declare-fun res!693493 () Bool)

(assert (=> b!1039917 (=> (not res!693493) (not e!588701))))

(assert (=> b!1039917 (= res!693493 (is-Found!9789 lt!458308))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65546 (_ BitVec 32)) SeekEntryResult!9789)

(assert (=> b!1039917 (= lt!458308 (seekEntry!0 key!909 (_keys!11546 thiss!1427) (mask!30309 thiss!1427)))))

(declare-fun res!693494 () Bool)

(assert (=> start!91124 (=> (not res!693494) (not e!588702))))

(declare-fun valid!2171 (LongMapFixedSize!5902) Bool)

(assert (=> start!91124 (= res!693494 (valid!2171 thiss!1427))))

(assert (=> start!91124 e!588702))

(assert (=> start!91124 e!588697))

(assert (=> start!91124 true))

(declare-fun b!1039918 () Bool)

(declare-fun e!588698 () Bool)

(assert (=> b!1039918 (= e!588700 (and e!588698 mapRes!38644))))

(declare-fun condMapEmpty!38644 () Bool)

(declare-fun mapDefault!38644 () ValueCell!11654)

