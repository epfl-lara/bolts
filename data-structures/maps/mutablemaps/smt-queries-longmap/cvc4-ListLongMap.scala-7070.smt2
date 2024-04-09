; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89514 () Bool)

(assert start!89514)

(declare-fun b!1026087 () Bool)

(declare-fun b_free!20477 () Bool)

(declare-fun b_next!20477 () Bool)

(assert (=> b!1026087 (= b_free!20477 (not b_next!20477))))

(declare-fun tp!72478 () Bool)

(declare-fun b_and!32741 () Bool)

(assert (=> b!1026087 (= tp!72478 b_and!32741)))

(declare-fun res!686995 () Bool)

(declare-fun e!578787 () Bool)

(assert (=> start!89514 (=> (not res!686995) (not e!578787))))

(declare-datatypes ((V!37135 0))(
  ( (V!37136 (val!12149 Int)) )
))
(declare-datatypes ((ValueCell!11395 0))(
  ( (ValueCellFull!11395 (v!14719 V!37135)) (EmptyCell!11395) )
))
(declare-datatypes ((array!64428 0))(
  ( (array!64429 (arr!31019 (Array (_ BitVec 32) (_ BitVec 64))) (size!31533 (_ BitVec 32))) )
))
(declare-datatypes ((array!64430 0))(
  ( (array!64431 (arr!31020 (Array (_ BitVec 32) ValueCell!11395)) (size!31534 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5384 0))(
  ( (LongMapFixedSize!5385 (defaultEntry!6044 Int) (mask!29725 (_ BitVec 32)) (extraKeys!5776 (_ BitVec 32)) (zeroValue!5880 V!37135) (minValue!5880 V!37135) (_size!2747 (_ BitVec 32)) (_keys!11188 array!64428) (_values!6067 array!64430) (_vacant!2747 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5384)

(declare-fun valid!1997 (LongMapFixedSize!5384) Bool)

(assert (=> start!89514 (= res!686995 (valid!1997 thiss!1427))))

(assert (=> start!89514 e!578787))

(declare-fun e!578786 () Bool)

(assert (=> start!89514 e!578786))

(assert (=> start!89514 true))

(declare-fun b!1026085 () Bool)

(declare-fun e!578789 () Bool)

(assert (=> b!1026085 (= e!578789 true)))

(declare-fun lt!451321 () Bool)

(declare-datatypes ((List!21878 0))(
  ( (Nil!21875) (Cons!21874 (h!23072 (_ BitVec 64)) (t!30947 List!21878)) )
))
(declare-fun arrayNoDuplicates!0 (array!64428 (_ BitVec 32) List!21878) Bool)

(assert (=> b!1026085 (= lt!451321 (arrayNoDuplicates!0 (_keys!11188 thiss!1427) #b00000000000000000000000000000000 Nil!21875))))

(declare-fun b!1026086 () Bool)

(declare-fun res!686996 () Bool)

(assert (=> b!1026086 (=> (not res!686996) (not e!578787))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1026086 (= res!686996 (not (= key!909 (bvneg key!909))))))

(declare-fun mapIsEmpty!37724 () Bool)

(declare-fun mapRes!37724 () Bool)

(assert (=> mapIsEmpty!37724 mapRes!37724))

(declare-fun mapNonEmpty!37724 () Bool)

(declare-fun tp!72477 () Bool)

(declare-fun e!578792 () Bool)

(assert (=> mapNonEmpty!37724 (= mapRes!37724 (and tp!72477 e!578792))))

(declare-fun mapValue!37724 () ValueCell!11395)

(declare-fun mapKey!37724 () (_ BitVec 32))

(declare-fun mapRest!37724 () (Array (_ BitVec 32) ValueCell!11395))

(assert (=> mapNonEmpty!37724 (= (arr!31020 (_values!6067 thiss!1427)) (store mapRest!37724 mapKey!37724 mapValue!37724))))

(declare-fun tp_is_empty!24197 () Bool)

(declare-fun e!578785 () Bool)

(declare-fun array_inv!23875 (array!64428) Bool)

(declare-fun array_inv!23876 (array!64430) Bool)

(assert (=> b!1026087 (= e!578786 (and tp!72478 tp_is_empty!24197 (array_inv!23875 (_keys!11188 thiss!1427)) (array_inv!23876 (_values!6067 thiss!1427)) e!578785))))

(declare-fun b!1026088 () Bool)

(declare-fun e!578788 () Bool)

(assert (=> b!1026088 (= e!578788 tp_is_empty!24197)))

(declare-fun b!1026089 () Bool)

(declare-fun e!578791 () Bool)

(assert (=> b!1026089 (= e!578787 e!578791)))

(declare-fun res!686994 () Bool)

(assert (=> b!1026089 (=> (not res!686994) (not e!578791))))

(declare-datatypes ((SeekEntryResult!9625 0))(
  ( (MissingZero!9625 (index!40870 (_ BitVec 32))) (Found!9625 (index!40871 (_ BitVec 32))) (Intermediate!9625 (undefined!10437 Bool) (index!40872 (_ BitVec 32)) (x!91250 (_ BitVec 32))) (Undefined!9625) (MissingVacant!9625 (index!40873 (_ BitVec 32))) )
))
(declare-fun lt!451316 () SeekEntryResult!9625)

(assert (=> b!1026089 (= res!686994 (is-Found!9625 lt!451316))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64428 (_ BitVec 32)) SeekEntryResult!9625)

(assert (=> b!1026089 (= lt!451316 (seekEntry!0 key!909 (_keys!11188 thiss!1427) (mask!29725 thiss!1427)))))

(declare-fun b!1026090 () Bool)

(assert (=> b!1026090 (= e!578791 (not e!578789))))

(declare-fun res!686997 () Bool)

(assert (=> b!1026090 (=> res!686997 e!578789)))

(assert (=> b!1026090 (= res!686997 (or (bvslt (index!40871 lt!451316) #b00000000000000000000000000000000) (bvsge (index!40871 lt!451316) (size!31533 (_keys!11188 thiss!1427))) (bvsge (size!31533 (_keys!11188 thiss!1427)) #b01111111111111111111111111111111)))))

(declare-fun lt!451320 () array!64428)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64428 (_ BitVec 32)) Bool)

(assert (=> b!1026090 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!451320 (mask!29725 thiss!1427))))

(declare-datatypes ((Unit!33388 0))(
  ( (Unit!33389) )
))
(declare-fun lt!451319 () Unit!33388)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64428 (_ BitVec 32) (_ BitVec 32)) Unit!33388)

(assert (=> b!1026090 (= lt!451319 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11188 thiss!1427) (index!40871 lt!451316) (mask!29725 thiss!1427)))))

(assert (=> b!1026090 (arrayNoDuplicates!0 lt!451320 #b00000000000000000000000000000000 Nil!21875)))

(declare-fun lt!451317 () Unit!33388)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64428 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21878) Unit!33388)

(assert (=> b!1026090 (= lt!451317 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11188 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!40871 lt!451316) #b00000000000000000000000000000000 Nil!21875))))

(declare-fun arrayCountValidKeys!0 (array!64428 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1026090 (= (arrayCountValidKeys!0 lt!451320 #b00000000000000000000000000000000 (size!31533 (_keys!11188 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11188 thiss!1427) #b00000000000000000000000000000000 (size!31533 (_keys!11188 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1026090 (= lt!451320 (array!64429 (store (arr!31019 (_keys!11188 thiss!1427)) (index!40871 lt!451316) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31533 (_keys!11188 thiss!1427))))))

(declare-fun lt!451318 () Unit!33388)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64428 (_ BitVec 32) (_ BitVec 64)) Unit!33388)

(assert (=> b!1026090 (= lt!451318 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11188 thiss!1427) (index!40871 lt!451316) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1026091 () Bool)

(assert (=> b!1026091 (= e!578792 tp_is_empty!24197)))

(declare-fun b!1026092 () Bool)

(assert (=> b!1026092 (= e!578785 (and e!578788 mapRes!37724))))

(declare-fun condMapEmpty!37724 () Bool)

(declare-fun mapDefault!37724 () ValueCell!11395)

