; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90776 () Bool)

(assert start!90776)

(declare-fun b!1037454 () Bool)

(declare-fun b_free!20905 () Bool)

(declare-fun b_next!20905 () Bool)

(assert (=> b!1037454 (= b_free!20905 (not b_next!20905))))

(declare-fun tp!73864 () Bool)

(declare-fun b_and!33455 () Bool)

(assert (=> b!1037454 (= tp!73864 b_and!33455)))

(declare-fun b!1037449 () Bool)

(declare-fun e!586916 () Bool)

(declare-datatypes ((List!22040 0))(
  ( (Nil!22037) (Cons!22036 (h!23239 (_ BitVec 64)) (t!31261 List!22040)) )
))
(declare-fun noDuplicate!1489 (List!22040) Bool)

(assert (=> b!1037449 (= e!586916 (noDuplicate!1489 Nil!22037))))

(declare-fun mapIsEmpty!38469 () Bool)

(declare-fun mapRes!38469 () Bool)

(assert (=> mapIsEmpty!38469 mapRes!38469))

(declare-fun b!1037450 () Bool)

(declare-fun res!692265 () Bool)

(declare-fun e!586915 () Bool)

(assert (=> b!1037450 (=> (not res!692265) (not e!586915))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1037450 (= res!692265 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1037451 () Bool)

(declare-fun e!586918 () Bool)

(assert (=> b!1037451 (= e!586915 e!586918)))

(declare-fun res!692264 () Bool)

(assert (=> b!1037451 (=> (not res!692264) (not e!586918))))

(declare-datatypes ((SeekEntryResult!9753 0))(
  ( (MissingZero!9753 (index!41382 (_ BitVec 32))) (Found!9753 (index!41383 (_ BitVec 32))) (Intermediate!9753 (undefined!10565 Bool) (index!41384 (_ BitVec 32)) (x!92555 (_ BitVec 32))) (Undefined!9753) (MissingVacant!9753 (index!41385 (_ BitVec 32))) )
))
(declare-fun lt!457488 () SeekEntryResult!9753)

(assert (=> b!1037451 (= res!692264 (is-Found!9753 lt!457488))))

(declare-datatypes ((V!37707 0))(
  ( (V!37708 (val!12363 Int)) )
))
(declare-datatypes ((ValueCell!11609 0))(
  ( (ValueCellFull!11609 (v!14947 V!37707)) (EmptyCell!11609) )
))
(declare-datatypes ((array!65340 0))(
  ( (array!65341 (arr!31447 (Array (_ BitVec 32) (_ BitVec 64))) (size!31978 (_ BitVec 32))) )
))
(declare-datatypes ((array!65342 0))(
  ( (array!65343 (arr!31448 (Array (_ BitVec 32) ValueCell!11609)) (size!31979 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5812 0))(
  ( (LongMapFixedSize!5813 (defaultEntry!6288 Int) (mask!30205 (_ BitVec 32)) (extraKeys!6016 (_ BitVec 32)) (zeroValue!6122 V!37707) (minValue!6122 V!37707) (_size!2961 (_ BitVec 32)) (_keys!11482 array!65340) (_values!6311 array!65342) (_vacant!2961 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5812)

(declare-fun seekEntry!0 ((_ BitVec 64) array!65340 (_ BitVec 32)) SeekEntryResult!9753)

(assert (=> b!1037451 (= lt!457488 (seekEntry!0 key!909 (_keys!11482 thiss!1427) (mask!30205 thiss!1427)))))

(declare-fun res!692266 () Bool)

(assert (=> start!90776 (=> (not res!692266) (not e!586915))))

(declare-fun valid!2143 (LongMapFixedSize!5812) Bool)

(assert (=> start!90776 (= res!692266 (valid!2143 thiss!1427))))

(assert (=> start!90776 e!586915))

(declare-fun e!586913 () Bool)

(assert (=> start!90776 e!586913))

(assert (=> start!90776 true))

(declare-fun b!1037452 () Bool)

(assert (=> b!1037452 (= e!586918 (not e!586916))))

(declare-fun res!692263 () Bool)

(assert (=> b!1037452 (=> res!692263 e!586916)))

(assert (=> b!1037452 (= res!692263 (or (bvsge (size!31978 (_keys!11482 thiss!1427)) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!31978 (_keys!11482 thiss!1427)))))))

(declare-fun arrayCountValidKeys!0 (array!65340 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1037452 (= (arrayCountValidKeys!0 (array!65341 (store (arr!31447 (_keys!11482 thiss!1427)) (index!41383 lt!457488) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31978 (_keys!11482 thiss!1427))) #b00000000000000000000000000000000 (size!31978 (_keys!11482 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11482 thiss!1427) #b00000000000000000000000000000000 (size!31978 (_keys!11482 thiss!1427))) #b00000000000000000000000000000001))))

(declare-datatypes ((Unit!33938 0))(
  ( (Unit!33939) )
))
(declare-fun lt!457489 () Unit!33938)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65340 (_ BitVec 32) (_ BitVec 64)) Unit!33938)

(assert (=> b!1037452 (= lt!457489 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11482 thiss!1427) (index!41383 lt!457488) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapNonEmpty!38469 () Bool)

(declare-fun tp!73865 () Bool)

(declare-fun e!586917 () Bool)

(assert (=> mapNonEmpty!38469 (= mapRes!38469 (and tp!73865 e!586917))))

(declare-fun mapRest!38469 () (Array (_ BitVec 32) ValueCell!11609))

(declare-fun mapValue!38469 () ValueCell!11609)

(declare-fun mapKey!38469 () (_ BitVec 32))

(assert (=> mapNonEmpty!38469 (= (arr!31448 (_values!6311 thiss!1427)) (store mapRest!38469 mapKey!38469 mapValue!38469))))

(declare-fun b!1037453 () Bool)

(declare-fun e!586914 () Bool)

(declare-fun tp_is_empty!24625 () Bool)

(assert (=> b!1037453 (= e!586914 tp_is_empty!24625)))

(declare-fun e!586912 () Bool)

(declare-fun array_inv!24155 (array!65340) Bool)

(declare-fun array_inv!24156 (array!65342) Bool)

(assert (=> b!1037454 (= e!586913 (and tp!73864 tp_is_empty!24625 (array_inv!24155 (_keys!11482 thiss!1427)) (array_inv!24156 (_values!6311 thiss!1427)) e!586912))))

(declare-fun b!1037455 () Bool)

(assert (=> b!1037455 (= e!586912 (and e!586914 mapRes!38469))))

(declare-fun condMapEmpty!38469 () Bool)

(declare-fun mapDefault!38469 () ValueCell!11609)

