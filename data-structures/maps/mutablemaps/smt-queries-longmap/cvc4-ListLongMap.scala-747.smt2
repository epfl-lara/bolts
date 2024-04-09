; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!17416 () Bool)

(assert start!17416)

(declare-fun b!174652 () Bool)

(declare-fun b_free!4325 () Bool)

(declare-fun b_next!4325 () Bool)

(assert (=> b!174652 (= b_free!4325 (not b_next!4325))))

(declare-fun tp!15646 () Bool)

(declare-fun b_and!10811 () Bool)

(assert (=> b!174652 (= tp!15646 b_and!10811)))

(declare-fun b!174649 () Bool)

(declare-fun e!115335 () Bool)

(declare-fun tp_is_empty!4097 () Bool)

(assert (=> b!174649 (= e!115335 tp_is_empty!4097)))

(declare-fun b!174650 () Bool)

(declare-fun e!115337 () Bool)

(assert (=> b!174650 (= e!115337 tp_is_empty!4097)))

(declare-fun b!174651 () Bool)

(declare-fun res!82848 () Bool)

(declare-fun e!115339 () Bool)

(assert (=> b!174651 (=> (not res!82848) (not e!115339))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!174651 (= res!82848 (not (= key!828 (bvneg key!828))))))

(declare-fun res!82847 () Bool)

(assert (=> start!17416 (=> (not res!82847) (not e!115339))))

(declare-datatypes ((V!5109 0))(
  ( (V!5110 (val!2093 Int)) )
))
(declare-datatypes ((ValueCell!1705 0))(
  ( (ValueCellFull!1705 (v!3961 V!5109)) (EmptyCell!1705) )
))
(declare-datatypes ((array!7328 0))(
  ( (array!7329 (arr!3480 (Array (_ BitVec 32) (_ BitVec 64))) (size!3780 (_ BitVec 32))) )
))
(declare-datatypes ((array!7330 0))(
  ( (array!7331 (arr!3481 (Array (_ BitVec 32) ValueCell!1705)) (size!3781 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2318 0))(
  ( (LongMapFixedSize!2319 (defaultEntry!3610 Int) (mask!8491 (_ BitVec 32)) (extraKeys!3347 (_ BitVec 32)) (zeroValue!3451 V!5109) (minValue!3451 V!5109) (_size!1208 (_ BitVec 32)) (_keys!5454 array!7328) (_values!3593 array!7330) (_vacant!1208 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2318)

(declare-fun valid!971 (LongMapFixedSize!2318) Bool)

(assert (=> start!17416 (= res!82847 (valid!971 thiss!1248))))

(assert (=> start!17416 e!115339))

(declare-fun e!115338 () Bool)

(assert (=> start!17416 e!115338))

(assert (=> start!17416 true))

(declare-fun mapNonEmpty!6980 () Bool)

(declare-fun mapRes!6980 () Bool)

(declare-fun tp!15647 () Bool)

(assert (=> mapNonEmpty!6980 (= mapRes!6980 (and tp!15647 e!115335))))

(declare-fun mapKey!6980 () (_ BitVec 32))

(declare-fun mapRest!6980 () (Array (_ BitVec 32) ValueCell!1705))

(declare-fun mapValue!6980 () ValueCell!1705)

(assert (=> mapNonEmpty!6980 (= (arr!3481 (_values!3593 thiss!1248)) (store mapRest!6980 mapKey!6980 mapValue!6980))))

(declare-fun e!115340 () Bool)

(declare-fun array_inv!2219 (array!7328) Bool)

(declare-fun array_inv!2220 (array!7330) Bool)

(assert (=> b!174652 (= e!115338 (and tp!15646 tp_is_empty!4097 (array_inv!2219 (_keys!5454 thiss!1248)) (array_inv!2220 (_values!3593 thiss!1248)) e!115340))))

(declare-fun mapIsEmpty!6980 () Bool)

(assert (=> mapIsEmpty!6980 mapRes!6980))

(declare-fun b!174653 () Bool)

(assert (=> b!174653 (= e!115339 (not (= (size!3781 (_values!3593 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8491 thiss!1248)))))))

(declare-fun b!174654 () Bool)

(declare-fun res!82850 () Bool)

(assert (=> b!174654 (=> (not res!82850) (not e!115339))))

(declare-datatypes ((tuple2!3250 0))(
  ( (tuple2!3251 (_1!1635 (_ BitVec 64)) (_2!1635 V!5109)) )
))
(declare-datatypes ((List!2235 0))(
  ( (Nil!2232) (Cons!2231 (h!2848 tuple2!3250) (t!7057 List!2235)) )
))
(declare-datatypes ((ListLongMap!2191 0))(
  ( (ListLongMap!2192 (toList!1111 List!2235)) )
))
(declare-fun contains!1161 (ListLongMap!2191 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!758 (array!7328 array!7330 (_ BitVec 32) (_ BitVec 32) V!5109 V!5109 (_ BitVec 32) Int) ListLongMap!2191)

(assert (=> b!174654 (= res!82850 (contains!1161 (getCurrentListMap!758 (_keys!5454 thiss!1248) (_values!3593 thiss!1248) (mask!8491 thiss!1248) (extraKeys!3347 thiss!1248) (zeroValue!3451 thiss!1248) (minValue!3451 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3610 thiss!1248)) key!828))))

(declare-fun b!174655 () Bool)

(declare-fun res!82849 () Bool)

(assert (=> b!174655 (=> (not res!82849) (not e!115339))))

(declare-datatypes ((SeekEntryResult!557 0))(
  ( (MissingZero!557 (index!4396 (_ BitVec 32))) (Found!557 (index!4397 (_ BitVec 32))) (Intermediate!557 (undefined!1369 Bool) (index!4398 (_ BitVec 32)) (x!19245 (_ BitVec 32))) (Undefined!557) (MissingVacant!557 (index!4399 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7328 (_ BitVec 32)) SeekEntryResult!557)

(assert (=> b!174655 (= res!82849 (is-Undefined!557 (seekEntryOrOpen!0 key!828 (_keys!5454 thiss!1248) (mask!8491 thiss!1248))))))

(declare-fun b!174656 () Bool)

(declare-fun res!82851 () Bool)

(assert (=> b!174656 (=> (not res!82851) (not e!115339))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!174656 (= res!82851 (validMask!0 (mask!8491 thiss!1248)))))

(declare-fun b!174657 () Bool)

(assert (=> b!174657 (= e!115340 (and e!115337 mapRes!6980))))

(declare-fun condMapEmpty!6980 () Bool)

(declare-fun mapDefault!6980 () ValueCell!1705)

