; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89462 () Bool)

(assert start!89462)

(declare-fun b!1025334 () Bool)

(declare-fun b_free!20425 () Bool)

(declare-fun b_next!20425 () Bool)

(assert (=> b!1025334 (= b_free!20425 (not b_next!20425))))

(declare-fun tp!72322 () Bool)

(declare-fun b_and!32689 () Bool)

(assert (=> b!1025334 (= tp!72322 b_and!32689)))

(declare-fun b!1025332 () Bool)

(declare-fun e!578166 () Bool)

(declare-fun tp_is_empty!24145 () Bool)

(assert (=> b!1025332 (= e!578166 tp_is_empty!24145)))

(declare-fun b!1025333 () Bool)

(declare-fun res!686557 () Bool)

(declare-fun e!578168 () Bool)

(assert (=> b!1025333 (=> (not res!686557) (not e!578168))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1025333 (= res!686557 (not (= key!909 (bvneg key!909))))))

(declare-fun e!578163 () Bool)

(declare-datatypes ((V!37067 0))(
  ( (V!37068 (val!12123 Int)) )
))
(declare-datatypes ((ValueCell!11369 0))(
  ( (ValueCellFull!11369 (v!14693 V!37067)) (EmptyCell!11369) )
))
(declare-datatypes ((array!64324 0))(
  ( (array!64325 (arr!30967 (Array (_ BitVec 32) (_ BitVec 64))) (size!31481 (_ BitVec 32))) )
))
(declare-datatypes ((array!64326 0))(
  ( (array!64327 (arr!30968 (Array (_ BitVec 32) ValueCell!11369)) (size!31482 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5332 0))(
  ( (LongMapFixedSize!5333 (defaultEntry!6018 Int) (mask!29683 (_ BitVec 32)) (extraKeys!5750 (_ BitVec 32)) (zeroValue!5854 V!37067) (minValue!5854 V!37067) (_size!2721 (_ BitVec 32)) (_keys!11162 array!64324) (_values!6041 array!64326) (_vacant!2721 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5332)

(declare-fun e!578161 () Bool)

(declare-fun array_inv!23839 (array!64324) Bool)

(declare-fun array_inv!23840 (array!64326) Bool)

(assert (=> b!1025334 (= e!578161 (and tp!72322 tp_is_empty!24145 (array_inv!23839 (_keys!11162 thiss!1427)) (array_inv!23840 (_values!6041 thiss!1427)) e!578163))))

(declare-fun b!1025335 () Bool)

(declare-fun e!578165 () Bool)

(assert (=> b!1025335 (= e!578165 tp_is_empty!24145)))

(declare-fun mapIsEmpty!37646 () Bool)

(declare-fun mapRes!37646 () Bool)

(assert (=> mapIsEmpty!37646 mapRes!37646))

(declare-fun b!1025336 () Bool)

(declare-fun e!578162 () Bool)

(assert (=> b!1025336 (= e!578162 true)))

(declare-fun lt!450891 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64324 (_ BitVec 32)) Bool)

(assert (=> b!1025336 (= lt!450891 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11162 thiss!1427) (mask!29683 thiss!1427)))))

(declare-fun b!1025338 () Bool)

(declare-fun e!578164 () Bool)

(assert (=> b!1025338 (= e!578168 e!578164)))

(declare-fun res!686553 () Bool)

(assert (=> b!1025338 (=> (not res!686553) (not e!578164))))

(declare-datatypes ((SeekEntryResult!9607 0))(
  ( (MissingZero!9607 (index!40798 (_ BitVec 32))) (Found!9607 (index!40799 (_ BitVec 32))) (Intermediate!9607 (undefined!10419 Bool) (index!40800 (_ BitVec 32)) (x!91168 (_ BitVec 32))) (Undefined!9607) (MissingVacant!9607 (index!40801 (_ BitVec 32))) )
))
(declare-fun lt!450892 () SeekEntryResult!9607)

(assert (=> b!1025338 (= res!686553 (is-Found!9607 lt!450892))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64324 (_ BitVec 32)) SeekEntryResult!9607)

(assert (=> b!1025338 (= lt!450892 (seekEntry!0 key!909 (_keys!11162 thiss!1427) (mask!29683 thiss!1427)))))

(declare-fun b!1025339 () Bool)

(assert (=> b!1025339 (= e!578164 (not e!578162))))

(declare-fun res!686556 () Bool)

(assert (=> b!1025339 (=> res!686556 e!578162)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1025339 (= res!686556 (not (validMask!0 (mask!29683 thiss!1427))))))

(declare-fun lt!450893 () array!64324)

(declare-datatypes ((List!21859 0))(
  ( (Nil!21856) (Cons!21855 (h!23053 (_ BitVec 64)) (t!30928 List!21859)) )
))
(declare-fun arrayNoDuplicates!0 (array!64324 (_ BitVec 32) List!21859) Bool)

(assert (=> b!1025339 (arrayNoDuplicates!0 lt!450893 #b00000000000000000000000000000000 Nil!21856)))

(declare-datatypes ((Unit!33352 0))(
  ( (Unit!33353) )
))
(declare-fun lt!450895 () Unit!33352)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64324 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21859) Unit!33352)

(assert (=> b!1025339 (= lt!450895 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11162 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!40799 lt!450892) #b00000000000000000000000000000000 Nil!21856))))

(declare-fun arrayCountValidKeys!0 (array!64324 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1025339 (= (arrayCountValidKeys!0 lt!450893 #b00000000000000000000000000000000 (size!31481 (_keys!11162 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11162 thiss!1427) #b00000000000000000000000000000000 (size!31481 (_keys!11162 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1025339 (= lt!450893 (array!64325 (store (arr!30967 (_keys!11162 thiss!1427)) (index!40799 lt!450892) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31481 (_keys!11162 thiss!1427))))))

(declare-fun lt!450894 () Unit!33352)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64324 (_ BitVec 32) (_ BitVec 64)) Unit!33352)

(assert (=> b!1025339 (= lt!450894 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11162 thiss!1427) (index!40799 lt!450892) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1025340 () Bool)

(declare-fun res!686558 () Bool)

(assert (=> b!1025340 (=> res!686558 e!578162)))

(assert (=> b!1025340 (= res!686558 (or (not (= (size!31481 (_keys!11162 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29683 thiss!1427)))) (bvslt (index!40799 lt!450892) #b00000000000000000000000000000000) (bvsge (index!40799 lt!450892) (size!31481 (_keys!11162 thiss!1427)))))))

(declare-fun mapNonEmpty!37646 () Bool)

(declare-fun tp!72321 () Bool)

(assert (=> mapNonEmpty!37646 (= mapRes!37646 (and tp!72321 e!578166))))

(declare-fun mapRest!37646 () (Array (_ BitVec 32) ValueCell!11369))

(declare-fun mapKey!37646 () (_ BitVec 32))

(declare-fun mapValue!37646 () ValueCell!11369)

(assert (=> mapNonEmpty!37646 (= (arr!30968 (_values!6041 thiss!1427)) (store mapRest!37646 mapKey!37646 mapValue!37646))))

(declare-fun b!1025337 () Bool)

(declare-fun res!686554 () Bool)

(assert (=> b!1025337 (=> res!686554 e!578162)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1025337 (= res!686554 (not (validKeyInArray!0 (select (arr!30967 (_keys!11162 thiss!1427)) (index!40799 lt!450892)))))))

(declare-fun res!686559 () Bool)

(assert (=> start!89462 (=> (not res!686559) (not e!578168))))

(declare-fun valid!1980 (LongMapFixedSize!5332) Bool)

(assert (=> start!89462 (= res!686559 (valid!1980 thiss!1427))))

(assert (=> start!89462 e!578168))

(assert (=> start!89462 e!578161))

(assert (=> start!89462 true))

(declare-fun b!1025341 () Bool)

(assert (=> b!1025341 (= e!578163 (and e!578165 mapRes!37646))))

(declare-fun condMapEmpty!37646 () Bool)

(declare-fun mapDefault!37646 () ValueCell!11369)

