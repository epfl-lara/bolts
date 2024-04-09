; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!18268 () Bool)

(assert start!18268)

(declare-fun b!181390 () Bool)

(declare-fun b_free!4481 () Bool)

(declare-fun b_next!4481 () Bool)

(assert (=> b!181390 (= b_free!4481 (not b_next!4481))))

(declare-fun tp!16191 () Bool)

(declare-fun b_and!11047 () Bool)

(assert (=> b!181390 (= tp!16191 b_and!11047)))

(declare-fun b!181388 () Bool)

(declare-fun e!119484 () Bool)

(declare-datatypes ((V!5317 0))(
  ( (V!5318 (val!2171 Int)) )
))
(declare-datatypes ((ValueCell!1783 0))(
  ( (ValueCellFull!1783 (v!4063 V!5317)) (EmptyCell!1783) )
))
(declare-datatypes ((array!7684 0))(
  ( (array!7685 (arr!3636 (Array (_ BitVec 32) (_ BitVec 64))) (size!3946 (_ BitVec 32))) )
))
(declare-datatypes ((array!7686 0))(
  ( (array!7687 (arr!3637 (Array (_ BitVec 32) ValueCell!1783)) (size!3947 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2474 0))(
  ( (LongMapFixedSize!2475 (defaultEntry!3718 Int) (mask!8739 (_ BitVec 32)) (extraKeys!3455 (_ BitVec 32)) (zeroValue!3559 V!5317) (minValue!3559 V!5317) (_size!1286 (_ BitVec 32)) (_keys!5620 array!7684) (_values!3701 array!7686) (_vacant!1286 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2474)

(assert (=> b!181388 (= e!119484 (and (= (size!3947 (_values!3701 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8739 thiss!1248))) (= (size!3946 (_keys!5620 thiss!1248)) (size!3947 (_values!3701 thiss!1248))) (bvslt (mask!8739 thiss!1248) #b00000000000000000000000000000000)))))

(declare-fun b!181389 () Bool)

(declare-fun res!85898 () Bool)

(assert (=> b!181389 (=> (not res!85898) (not e!119484))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!181389 (= res!85898 (validMask!0 (mask!8739 thiss!1248)))))

(declare-fun e!119486 () Bool)

(declare-fun tp_is_empty!4253 () Bool)

(declare-fun e!119487 () Bool)

(declare-fun array_inv!2333 (array!7684) Bool)

(declare-fun array_inv!2334 (array!7686) Bool)

(assert (=> b!181390 (= e!119487 (and tp!16191 tp_is_empty!4253 (array_inv!2333 (_keys!5620 thiss!1248)) (array_inv!2334 (_values!3701 thiss!1248)) e!119486))))

(declare-fun b!181391 () Bool)

(declare-fun res!85897 () Bool)

(assert (=> b!181391 (=> (not res!85897) (not e!119484))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3382 0))(
  ( (tuple2!3383 (_1!1701 (_ BitVec 64)) (_2!1701 V!5317)) )
))
(declare-datatypes ((List!2327 0))(
  ( (Nil!2324) (Cons!2323 (h!2950 tuple2!3382) (t!7189 List!2327)) )
))
(declare-datatypes ((ListLongMap!2313 0))(
  ( (ListLongMap!2314 (toList!1172 List!2327)) )
))
(declare-fun contains!1246 (ListLongMap!2313 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!815 (array!7684 array!7686 (_ BitVec 32) (_ BitVec 32) V!5317 V!5317 (_ BitVec 32) Int) ListLongMap!2313)

(assert (=> b!181391 (= res!85897 (contains!1246 (getCurrentListMap!815 (_keys!5620 thiss!1248) (_values!3701 thiss!1248) (mask!8739 thiss!1248) (extraKeys!3455 thiss!1248) (zeroValue!3559 thiss!1248) (minValue!3559 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3718 thiss!1248)) key!828))))

(declare-fun mapIsEmpty!7290 () Bool)

(declare-fun mapRes!7290 () Bool)

(assert (=> mapIsEmpty!7290 mapRes!7290))

(declare-fun mapNonEmpty!7290 () Bool)

(declare-fun tp!16190 () Bool)

(declare-fun e!119481 () Bool)

(assert (=> mapNonEmpty!7290 (= mapRes!7290 (and tp!16190 e!119481))))

(declare-fun mapRest!7290 () (Array (_ BitVec 32) ValueCell!1783))

(declare-fun mapKey!7290 () (_ BitVec 32))

(declare-fun mapValue!7290 () ValueCell!1783)

(assert (=> mapNonEmpty!7290 (= (arr!3637 (_values!3701 thiss!1248)) (store mapRest!7290 mapKey!7290 mapValue!7290))))

(declare-fun b!181392 () Bool)

(assert (=> b!181392 (= e!119481 tp_is_empty!4253)))

(declare-fun b!181393 () Bool)

(declare-fun e!119482 () Bool)

(assert (=> b!181393 (= e!119482 e!119484)))

(declare-fun res!85894 () Bool)

(assert (=> b!181393 (=> (not res!85894) (not e!119484))))

(declare-datatypes ((SeekEntryResult!611 0))(
  ( (MissingZero!611 (index!4614 (_ BitVec 32))) (Found!611 (index!4615 (_ BitVec 32))) (Intermediate!611 (undefined!1423 Bool) (index!4616 (_ BitVec 32)) (x!19815 (_ BitVec 32))) (Undefined!611) (MissingVacant!611 (index!4617 (_ BitVec 32))) )
))
(declare-fun lt!89710 () SeekEntryResult!611)

(assert (=> b!181393 (= res!85894 (and (not (is-Undefined!611 lt!89710)) (not (is-MissingVacant!611 lt!89710)) (not (is-MissingZero!611 lt!89710)) (is-Found!611 lt!89710)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7684 (_ BitVec 32)) SeekEntryResult!611)

(assert (=> b!181393 (= lt!89710 (seekEntryOrOpen!0 key!828 (_keys!5620 thiss!1248) (mask!8739 thiss!1248)))))

(declare-fun b!181395 () Bool)

(declare-fun res!85896 () Bool)

(assert (=> b!181395 (=> (not res!85896) (not e!119482))))

(assert (=> b!181395 (= res!85896 (not (= key!828 (bvneg key!828))))))

(declare-fun b!181396 () Bool)

(declare-fun e!119483 () Bool)

(assert (=> b!181396 (= e!119486 (and e!119483 mapRes!7290))))

(declare-fun condMapEmpty!7290 () Bool)

(declare-fun mapDefault!7290 () ValueCell!1783)

