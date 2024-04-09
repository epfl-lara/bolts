; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16588 () Bool)

(assert start!16588)

(declare-fun b!165132 () Bool)

(declare-fun b_free!3881 () Bool)

(declare-fun b_next!3881 () Bool)

(assert (=> b!165132 (= b_free!3881 (not b_next!3881))))

(declare-fun tp!14243 () Bool)

(declare-fun b_and!10313 () Bool)

(assert (=> b!165132 (= tp!14243 b_and!10313)))

(declare-fun b!165129 () Bool)

(declare-fun res!78318 () Bool)

(declare-fun e!108339 () Bool)

(assert (=> b!165129 (=> (not res!78318) (not e!108339))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!165129 (= res!78318 (not (= key!828 (bvneg key!828))))))

(declare-fun b!165130 () Bool)

(declare-fun res!78317 () Bool)

(declare-fun e!108337 () Bool)

(assert (=> b!165130 (=> (not res!78317) (not e!108337))))

(declare-datatypes ((V!4557 0))(
  ( (V!4558 (val!1886 Int)) )
))
(declare-datatypes ((ValueCell!1498 0))(
  ( (ValueCellFull!1498 (v!3747 V!4557)) (EmptyCell!1498) )
))
(declare-datatypes ((array!6462 0))(
  ( (array!6463 (arr!3066 (Array (_ BitVec 32) (_ BitVec 64))) (size!3354 (_ BitVec 32))) )
))
(declare-datatypes ((array!6464 0))(
  ( (array!6465 (arr!3067 (Array (_ BitVec 32) ValueCell!1498)) (size!3355 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1904 0))(
  ( (LongMapFixedSize!1905 (defaultEntry!3394 Int) (mask!8099 (_ BitVec 32)) (extraKeys!3135 (_ BitVec 32)) (zeroValue!3237 V!4557) (minValue!3237 V!4557) (_size!1001 (_ BitVec 32)) (_keys!5219 array!6462) (_values!3377 array!6464) (_vacant!1001 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1904)

(assert (=> b!165130 (= res!78317 (and (= (size!3355 (_values!3377 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8099 thiss!1248))) (= (size!3354 (_keys!5219 thiss!1248)) (size!3355 (_values!3377 thiss!1248))) (bvsge (mask!8099 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3135 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3135 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun res!78316 () Bool)

(assert (=> start!16588 (=> (not res!78316) (not e!108339))))

(declare-fun valid!835 (LongMapFixedSize!1904) Bool)

(assert (=> start!16588 (= res!78316 (valid!835 thiss!1248))))

(assert (=> start!16588 e!108339))

(declare-fun e!108334 () Bool)

(assert (=> start!16588 e!108334))

(assert (=> start!16588 true))

(declare-fun b!165131 () Bool)

(declare-fun e!108338 () Bool)

(declare-fun tp_is_empty!3683 () Bool)

(assert (=> b!165131 (= e!108338 tp_is_empty!3683)))

(declare-fun e!108336 () Bool)

(declare-fun array_inv!1959 (array!6462) Bool)

(declare-fun array_inv!1960 (array!6464) Bool)

(assert (=> b!165132 (= e!108334 (and tp!14243 tp_is_empty!3683 (array_inv!1959 (_keys!5219 thiss!1248)) (array_inv!1960 (_values!3377 thiss!1248)) e!108336))))

(declare-fun b!165133 () Bool)

(declare-fun res!78315 () Bool)

(assert (=> b!165133 (=> (not res!78315) (not e!108337))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6462 (_ BitVec 32)) Bool)

(assert (=> b!165133 (= res!78315 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5219 thiss!1248) (mask!8099 thiss!1248)))))

(declare-fun b!165134 () Bool)

(assert (=> b!165134 (= e!108337 false)))

(declare-fun lt!83045 () Bool)

(declare-datatypes ((List!2058 0))(
  ( (Nil!2055) (Cons!2054 (h!2671 (_ BitVec 64)) (t!6868 List!2058)) )
))
(declare-fun arrayNoDuplicates!0 (array!6462 (_ BitVec 32) List!2058) Bool)

(assert (=> b!165134 (= lt!83045 (arrayNoDuplicates!0 (_keys!5219 thiss!1248) #b00000000000000000000000000000000 Nil!2055))))

(declare-fun b!165135 () Bool)

(declare-fun res!78319 () Bool)

(assert (=> b!165135 (=> (not res!78319) (not e!108337))))

(declare-datatypes ((tuple2!3052 0))(
  ( (tuple2!3053 (_1!1536 (_ BitVec 64)) (_2!1536 V!4557)) )
))
(declare-datatypes ((List!2059 0))(
  ( (Nil!2056) (Cons!2055 (h!2672 tuple2!3052) (t!6869 List!2059)) )
))
(declare-datatypes ((ListLongMap!2021 0))(
  ( (ListLongMap!2022 (toList!1026 List!2059)) )
))
(declare-fun contains!1062 (ListLongMap!2021 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!679 (array!6462 array!6464 (_ BitVec 32) (_ BitVec 32) V!4557 V!4557 (_ BitVec 32) Int) ListLongMap!2021)

(assert (=> b!165135 (= res!78319 (contains!1062 (getCurrentListMap!679 (_keys!5219 thiss!1248) (_values!3377 thiss!1248) (mask!8099 thiss!1248) (extraKeys!3135 thiss!1248) (zeroValue!3237 thiss!1248) (minValue!3237 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3394 thiss!1248)) key!828))))

(declare-fun mapNonEmpty!6243 () Bool)

(declare-fun mapRes!6243 () Bool)

(declare-fun tp!14244 () Bool)

(declare-fun e!108335 () Bool)

(assert (=> mapNonEmpty!6243 (= mapRes!6243 (and tp!14244 e!108335))))

(declare-fun mapValue!6243 () ValueCell!1498)

(declare-fun mapKey!6243 () (_ BitVec 32))

(declare-fun mapRest!6243 () (Array (_ BitVec 32) ValueCell!1498))

(assert (=> mapNonEmpty!6243 (= (arr!3067 (_values!3377 thiss!1248)) (store mapRest!6243 mapKey!6243 mapValue!6243))))

(declare-fun b!165136 () Bool)

(assert (=> b!165136 (= e!108339 e!108337)))

(declare-fun res!78320 () Bool)

(assert (=> b!165136 (=> (not res!78320) (not e!108337))))

(declare-datatypes ((SeekEntryResult!440 0))(
  ( (MissingZero!440 (index!3928 (_ BitVec 32))) (Found!440 (index!3929 (_ BitVec 32))) (Intermediate!440 (undefined!1252 Bool) (index!3930 (_ BitVec 32)) (x!18316 (_ BitVec 32))) (Undefined!440) (MissingVacant!440 (index!3931 (_ BitVec 32))) )
))
(declare-fun lt!83044 () SeekEntryResult!440)

(assert (=> b!165136 (= res!78320 (and (not (is-Undefined!440 lt!83044)) (not (is-MissingVacant!440 lt!83044)) (not (is-MissingZero!440 lt!83044)) (is-Found!440 lt!83044)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6462 (_ BitVec 32)) SeekEntryResult!440)

(assert (=> b!165136 (= lt!83044 (seekEntryOrOpen!0 key!828 (_keys!5219 thiss!1248) (mask!8099 thiss!1248)))))

(declare-fun b!165137 () Bool)

(assert (=> b!165137 (= e!108335 tp_is_empty!3683)))

(declare-fun mapIsEmpty!6243 () Bool)

(assert (=> mapIsEmpty!6243 mapRes!6243))

(declare-fun b!165138 () Bool)

(assert (=> b!165138 (= e!108336 (and e!108338 mapRes!6243))))

(declare-fun condMapEmpty!6243 () Bool)

(declare-fun mapDefault!6243 () ValueCell!1498)

