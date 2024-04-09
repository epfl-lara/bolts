; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!18630 () Bool)

(assert start!18630)

(declare-fun b!184289 () Bool)

(declare-fun b_free!4547 () Bool)

(declare-fun b_next!4547 () Bool)

(assert (=> b!184289 (= b_free!4547 (not b_next!4547))))

(declare-fun tp!16423 () Bool)

(declare-fun b_and!11149 () Bool)

(assert (=> b!184289 (= tp!16423 b_and!11149)))

(declare-fun b!184282 () Bool)

(declare-fun res!87211 () Bool)

(declare-fun e!121323 () Bool)

(assert (=> b!184282 (=> (not res!87211) (not e!121323))))

(declare-datatypes ((V!5405 0))(
  ( (V!5406 (val!2204 Int)) )
))
(declare-datatypes ((ValueCell!1816 0))(
  ( (ValueCellFull!1816 (v!4106 V!5405)) (EmptyCell!1816) )
))
(declare-datatypes ((array!7836 0))(
  ( (array!7837 (arr!3702 (Array (_ BitVec 32) (_ BitVec 64))) (size!4016 (_ BitVec 32))) )
))
(declare-datatypes ((array!7838 0))(
  ( (array!7839 (arr!3703 (Array (_ BitVec 32) ValueCell!1816)) (size!4017 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2540 0))(
  ( (LongMapFixedSize!2541 (defaultEntry!3765 Int) (mask!8847 (_ BitVec 32)) (extraKeys!3502 (_ BitVec 32)) (zeroValue!3606 V!5405) (minValue!3606 V!5405) (_size!1319 (_ BitVec 32)) (_keys!5692 array!7836) (_values!3748 array!7838) (_vacant!1319 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2540)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!184282 (= res!87211 (validMask!0 (mask!8847 thiss!1248)))))

(declare-fun b!184283 () Bool)

(declare-fun res!87210 () Bool)

(assert (=> b!184283 (=> (not res!87210) (not e!121323))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3428 0))(
  ( (tuple2!3429 (_1!1724 (_ BitVec 64)) (_2!1724 V!5405)) )
))
(declare-datatypes ((List!2366 0))(
  ( (Nil!2363) (Cons!2362 (h!2993 tuple2!3428) (t!7248 List!2366)) )
))
(declare-datatypes ((ListLongMap!2359 0))(
  ( (ListLongMap!2360 (toList!1195 List!2366)) )
))
(declare-fun contains!1279 (ListLongMap!2359 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!838 (array!7836 array!7838 (_ BitVec 32) (_ BitVec 32) V!5405 V!5405 (_ BitVec 32) Int) ListLongMap!2359)

(assert (=> b!184283 (= res!87210 (not (contains!1279 (getCurrentListMap!838 (_keys!5692 thiss!1248) (_values!3748 thiss!1248) (mask!8847 thiss!1248) (extraKeys!3502 thiss!1248) (zeroValue!3606 thiss!1248) (minValue!3606 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3765 thiss!1248)) key!828)))))

(declare-fun mapNonEmpty!7423 () Bool)

(declare-fun mapRes!7423 () Bool)

(declare-fun tp!16422 () Bool)

(declare-fun e!121321 () Bool)

(assert (=> mapNonEmpty!7423 (= mapRes!7423 (and tp!16422 e!121321))))

(declare-fun mapRest!7423 () (Array (_ BitVec 32) ValueCell!1816))

(declare-fun mapKey!7423 () (_ BitVec 32))

(declare-fun mapValue!7423 () ValueCell!1816)

(assert (=> mapNonEmpty!7423 (= (arr!3703 (_values!3748 thiss!1248)) (store mapRest!7423 mapKey!7423 mapValue!7423))))

(declare-fun b!184284 () Bool)

(declare-fun res!87214 () Bool)

(declare-fun e!121325 () Bool)

(assert (=> b!184284 (=> (not res!87214) (not e!121325))))

(assert (=> b!184284 (= res!87214 (not (= key!828 (bvneg key!828))))))

(declare-fun mapIsEmpty!7423 () Bool)

(assert (=> mapIsEmpty!7423 mapRes!7423))

(declare-fun b!184285 () Bool)

(assert (=> b!184285 (= e!121323 (and (= (size!4017 (_values!3748 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8847 thiss!1248))) (= (size!4016 (_keys!5692 thiss!1248)) (size!4017 (_values!3748 thiss!1248))) (bvsge (mask!8847 thiss!1248) #b00000000000000000000000000000000) (bvslt (extraKeys!3502 thiss!1248) #b00000000000000000000000000000000)))))

(declare-fun b!184286 () Bool)

(declare-fun e!121322 () Bool)

(declare-fun e!121324 () Bool)

(assert (=> b!184286 (= e!121322 (and e!121324 mapRes!7423))))

(declare-fun condMapEmpty!7423 () Bool)

(declare-fun mapDefault!7423 () ValueCell!1816)

