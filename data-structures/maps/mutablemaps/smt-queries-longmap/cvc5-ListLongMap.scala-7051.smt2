; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89396 () Bool)

(assert start!89396)

(declare-fun b!1024248 () Bool)

(declare-fun b_free!20359 () Bool)

(declare-fun b_next!20359 () Bool)

(assert (=> b!1024248 (= b_free!20359 (not b_next!20359))))

(declare-fun tp!72124 () Bool)

(declare-fun b_and!32623 () Bool)

(assert (=> b!1024248 (= tp!72124 b_and!32623)))

(declare-fun b!1024243 () Bool)

(declare-fun e!577371 () Bool)

(declare-fun tp_is_empty!24079 () Bool)

(assert (=> b!1024243 (= e!577371 tp_is_empty!24079)))

(declare-fun b!1024244 () Bool)

(declare-fun res!685864 () Bool)

(declare-fun e!577372 () Bool)

(assert (=> b!1024244 (=> res!685864 e!577372)))

(declare-datatypes ((List!21829 0))(
  ( (Nil!21826) (Cons!21825 (h!23023 (_ BitVec 64)) (t!30898 List!21829)) )
))
(declare-fun contains!5957 (List!21829 (_ BitVec 64)) Bool)

(assert (=> b!1024244 (= res!685864 (contains!5957 Nil!21826 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapIsEmpty!37547 () Bool)

(declare-fun mapRes!37547 () Bool)

(assert (=> mapIsEmpty!37547 mapRes!37547))

(declare-fun b!1024245 () Bool)

(assert (=> b!1024245 (= e!577372 true)))

(declare-fun lt!450554 () Bool)

(declare-datatypes ((V!36979 0))(
  ( (V!36980 (val!12090 Int)) )
))
(declare-datatypes ((ValueCell!11336 0))(
  ( (ValueCellFull!11336 (v!14660 V!36979)) (EmptyCell!11336) )
))
(declare-datatypes ((array!64192 0))(
  ( (array!64193 (arr!30901 (Array (_ BitVec 32) (_ BitVec 64))) (size!31415 (_ BitVec 32))) )
))
(declare-datatypes ((array!64194 0))(
  ( (array!64195 (arr!30902 (Array (_ BitVec 32) ValueCell!11336)) (size!31416 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5266 0))(
  ( (LongMapFixedSize!5267 (defaultEntry!5985 Int) (mask!29628 (_ BitVec 32)) (extraKeys!5717 (_ BitVec 32)) (zeroValue!5821 V!36979) (minValue!5821 V!36979) (_size!2688 (_ BitVec 32)) (_keys!11129 array!64192) (_values!6008 array!64194) (_vacant!2688 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5266)

(declare-fun arrayNoDuplicates!0 (array!64192 (_ BitVec 32) List!21829) Bool)

(assert (=> b!1024245 (= lt!450554 (arrayNoDuplicates!0 (_keys!11129 thiss!1427) #b00000000000000000000000000000000 Nil!21826))))

(declare-fun res!685865 () Bool)

(declare-fun e!577374 () Bool)

(assert (=> start!89396 (=> (not res!685865) (not e!577374))))

(declare-fun valid!1959 (LongMapFixedSize!5266) Bool)

(assert (=> start!89396 (= res!685865 (valid!1959 thiss!1427))))

(assert (=> start!89396 e!577374))

(declare-fun e!577376 () Bool)

(assert (=> start!89396 e!577376))

(assert (=> start!89396 true))

(declare-fun b!1024246 () Bool)

(declare-fun res!685862 () Bool)

(assert (=> b!1024246 (=> (not res!685862) (not e!577374))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1024246 (= res!685862 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1024247 () Bool)

(declare-fun res!685861 () Bool)

(assert (=> b!1024247 (=> res!685861 e!577372)))

(declare-fun noDuplicate!1469 (List!21829) Bool)

(assert (=> b!1024247 (= res!685861 (not (noDuplicate!1469 Nil!21826)))))

(declare-fun e!577373 () Bool)

(declare-fun array_inv!23801 (array!64192) Bool)

(declare-fun array_inv!23802 (array!64194) Bool)

(assert (=> b!1024248 (= e!577376 (and tp!72124 tp_is_empty!24079 (array_inv!23801 (_keys!11129 thiss!1427)) (array_inv!23802 (_values!6008 thiss!1427)) e!577373))))

(declare-fun b!1024249 () Bool)

(declare-fun e!577370 () Bool)

(assert (=> b!1024249 (= e!577374 e!577370)))

(declare-fun res!685863 () Bool)

(assert (=> b!1024249 (=> (not res!685863) (not e!577370))))

(declare-datatypes ((SeekEntryResult!9581 0))(
  ( (MissingZero!9581 (index!40694 (_ BitVec 32))) (Found!9581 (index!40695 (_ BitVec 32))) (Intermediate!9581 (undefined!10393 Bool) (index!40696 (_ BitVec 32)) (x!91054 (_ BitVec 32))) (Undefined!9581) (MissingVacant!9581 (index!40697 (_ BitVec 32))) )
))
(declare-fun lt!450556 () SeekEntryResult!9581)

(assert (=> b!1024249 (= res!685863 (is-Found!9581 lt!450556))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64192 (_ BitVec 32)) SeekEntryResult!9581)

(assert (=> b!1024249 (= lt!450556 (seekEntry!0 key!909 (_keys!11129 thiss!1427) (mask!29628 thiss!1427)))))

(declare-fun b!1024250 () Bool)

(assert (=> b!1024250 (= e!577373 (and e!577371 mapRes!37547))))

(declare-fun condMapEmpty!37547 () Bool)

(declare-fun mapDefault!37547 () ValueCell!11336)

