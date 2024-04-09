; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89472 () Bool)

(assert start!89472)

(declare-fun b!1025502 () Bool)

(declare-fun b_free!20435 () Bool)

(declare-fun b_next!20435 () Bool)

(assert (=> b!1025502 (= b_free!20435 (not b_next!20435))))

(declare-fun tp!72351 () Bool)

(declare-fun b_and!32699 () Bool)

(assert (=> b!1025502 (= tp!72351 b_and!32699)))

(declare-fun res!686663 () Bool)

(declare-fun e!578281 () Bool)

(assert (=> start!89472 (=> (not res!686663) (not e!578281))))

(declare-datatypes ((V!37079 0))(
  ( (V!37080 (val!12128 Int)) )
))
(declare-datatypes ((ValueCell!11374 0))(
  ( (ValueCellFull!11374 (v!14698 V!37079)) (EmptyCell!11374) )
))
(declare-datatypes ((array!64344 0))(
  ( (array!64345 (arr!30977 (Array (_ BitVec 32) (_ BitVec 64))) (size!31491 (_ BitVec 32))) )
))
(declare-datatypes ((array!64346 0))(
  ( (array!64347 (arr!30978 (Array (_ BitVec 32) ValueCell!11374)) (size!31492 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5342 0))(
  ( (LongMapFixedSize!5343 (defaultEntry!6023 Int) (mask!29690 (_ BitVec 32)) (extraKeys!5755 (_ BitVec 32)) (zeroValue!5859 V!37079) (minValue!5859 V!37079) (_size!2726 (_ BitVec 32)) (_keys!11167 array!64344) (_values!6046 array!64346) (_vacant!2726 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5342)

(declare-fun valid!1984 (LongMapFixedSize!5342) Bool)

(assert (=> start!89472 (= res!686663 (valid!1984 thiss!1427))))

(assert (=> start!89472 e!578281))

(declare-fun e!578287 () Bool)

(assert (=> start!89472 e!578287))

(assert (=> start!89472 true))

(declare-fun b!1025497 () Bool)

(declare-fun res!686661 () Bool)

(declare-fun e!578282 () Bool)

(assert (=> b!1025497 (=> res!686661 e!578282)))

(declare-datatypes ((SeekEntryResult!9610 0))(
  ( (MissingZero!9610 (index!40810 (_ BitVec 32))) (Found!9610 (index!40811 (_ BitVec 32))) (Intermediate!9610 (undefined!10422 Bool) (index!40812 (_ BitVec 32)) (x!91179 (_ BitVec 32))) (Undefined!9610) (MissingVacant!9610 (index!40813 (_ BitVec 32))) )
))
(declare-fun lt!450969 () SeekEntryResult!9610)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1025497 (= res!686661 (not (validKeyInArray!0 (select (arr!30977 (_keys!11167 thiss!1427)) (index!40811 lt!450969)))))))

(declare-fun b!1025498 () Bool)

(declare-fun res!686660 () Bool)

(assert (=> b!1025498 (=> res!686660 e!578282)))

(assert (=> b!1025498 (= res!686660 (or (not (= (size!31491 (_keys!11167 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29690 thiss!1427)))) (bvslt (index!40811 lt!450969) #b00000000000000000000000000000000) (bvsge (index!40811 lt!450969) (size!31491 (_keys!11167 thiss!1427)))))))

(declare-fun b!1025499 () Bool)

(declare-fun res!686662 () Bool)

(assert (=> b!1025499 (=> (not res!686662) (not e!578281))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1025499 (= res!686662 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1025500 () Bool)

(declare-fun e!578286 () Bool)

(assert (=> b!1025500 (= e!578286 (not e!578282))))

(declare-fun res!686658 () Bool)

(assert (=> b!1025500 (=> res!686658 e!578282)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1025500 (= res!686658 (not (validMask!0 (mask!29690 thiss!1427))))))

(declare-fun lt!450967 () array!64344)

(declare-datatypes ((List!21862 0))(
  ( (Nil!21859) (Cons!21858 (h!23056 (_ BitVec 64)) (t!30931 List!21862)) )
))
(declare-fun arrayNoDuplicates!0 (array!64344 (_ BitVec 32) List!21862) Bool)

(assert (=> b!1025500 (arrayNoDuplicates!0 lt!450967 #b00000000000000000000000000000000 Nil!21859)))

(declare-datatypes ((Unit!33358 0))(
  ( (Unit!33359) )
))
(declare-fun lt!450966 () Unit!33358)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64344 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21862) Unit!33358)

(assert (=> b!1025500 (= lt!450966 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11167 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!40811 lt!450969) #b00000000000000000000000000000000 Nil!21859))))

(declare-fun arrayCountValidKeys!0 (array!64344 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1025500 (= (arrayCountValidKeys!0 lt!450967 #b00000000000000000000000000000000 (size!31491 (_keys!11167 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11167 thiss!1427) #b00000000000000000000000000000000 (size!31491 (_keys!11167 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1025500 (= lt!450967 (array!64345 (store (arr!30977 (_keys!11167 thiss!1427)) (index!40811 lt!450969) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31491 (_keys!11167 thiss!1427))))))

(declare-fun lt!450968 () Unit!33358)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64344 (_ BitVec 32) (_ BitVec 64)) Unit!33358)

(assert (=> b!1025500 (= lt!450968 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11167 thiss!1427) (index!40811 lt!450969) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapIsEmpty!37661 () Bool)

(declare-fun mapRes!37661 () Bool)

(assert (=> mapIsEmpty!37661 mapRes!37661))

(declare-fun b!1025501 () Bool)

(declare-fun res!686664 () Bool)

(assert (=> b!1025501 (=> res!686664 e!578282)))

(assert (=> b!1025501 (= res!686664 (not (arrayNoDuplicates!0 (_keys!11167 thiss!1427) #b00000000000000000000000000000000 Nil!21859)))))

(declare-fun e!578285 () Bool)

(declare-fun tp_is_empty!24155 () Bool)

(declare-fun array_inv!23845 (array!64344) Bool)

(declare-fun array_inv!23846 (array!64346) Bool)

(assert (=> b!1025502 (= e!578287 (and tp!72351 tp_is_empty!24155 (array_inv!23845 (_keys!11167 thiss!1427)) (array_inv!23846 (_values!6046 thiss!1427)) e!578285))))

(declare-fun mapNonEmpty!37661 () Bool)

(declare-fun tp!72352 () Bool)

(declare-fun e!578284 () Bool)

(assert (=> mapNonEmpty!37661 (= mapRes!37661 (and tp!72352 e!578284))))

(declare-fun mapValue!37661 () ValueCell!11374)

(declare-fun mapKey!37661 () (_ BitVec 32))

(declare-fun mapRest!37661 () (Array (_ BitVec 32) ValueCell!11374))

(assert (=> mapNonEmpty!37661 (= (arr!30978 (_values!6046 thiss!1427)) (store mapRest!37661 mapKey!37661 mapValue!37661))))

(declare-fun b!1025503 () Bool)

(assert (=> b!1025503 (= e!578282 true)))

(declare-fun lt!450970 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64344 (_ BitVec 32)) Bool)

(assert (=> b!1025503 (= lt!450970 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11167 thiss!1427) (mask!29690 thiss!1427)))))

(declare-fun b!1025504 () Bool)

(declare-fun e!578288 () Bool)

(assert (=> b!1025504 (= e!578288 tp_is_empty!24155)))

(declare-fun b!1025505 () Bool)

(assert (=> b!1025505 (= e!578285 (and e!578288 mapRes!37661))))

(declare-fun condMapEmpty!37661 () Bool)

(declare-fun mapDefault!37661 () ValueCell!11374)

