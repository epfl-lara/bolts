; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!17528 () Bool)

(assert start!17528)

(declare-fun b!175428 () Bool)

(declare-fun b_free!4337 () Bool)

(declare-fun b_next!4337 () Bool)

(assert (=> b!175428 (= b_free!4337 (not b_next!4337))))

(declare-fun tp!15691 () Bool)

(declare-fun b_and!10835 () Bool)

(assert (=> b!175428 (= tp!15691 b_and!10835)))

(declare-fun b!175421 () Bool)

(declare-fun res!83182 () Bool)

(declare-fun e!115806 () Bool)

(assert (=> b!175421 (=> (not res!83182) (not e!115806))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!175421 (= res!83182 (not (= key!828 (bvneg key!828))))))

(declare-fun mapIsEmpty!7006 () Bool)

(declare-fun mapRes!7006 () Bool)

(assert (=> mapIsEmpty!7006 mapRes!7006))

(declare-fun mapNonEmpty!7006 () Bool)

(declare-fun tp!15690 () Bool)

(declare-fun e!115805 () Bool)

(assert (=> mapNonEmpty!7006 (= mapRes!7006 (and tp!15690 e!115805))))

(declare-datatypes ((V!5125 0))(
  ( (V!5126 (val!2099 Int)) )
))
(declare-datatypes ((ValueCell!1711 0))(
  ( (ValueCellFull!1711 (v!3969 V!5125)) (EmptyCell!1711) )
))
(declare-fun mapRest!7006 () (Array (_ BitVec 32) ValueCell!1711))

(declare-datatypes ((array!7356 0))(
  ( (array!7357 (arr!3492 (Array (_ BitVec 32) (_ BitVec 64))) (size!3794 (_ BitVec 32))) )
))
(declare-datatypes ((array!7358 0))(
  ( (array!7359 (arr!3493 (Array (_ BitVec 32) ValueCell!1711)) (size!3795 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2330 0))(
  ( (LongMapFixedSize!2331 (defaultEntry!3620 Int) (mask!8517 (_ BitVec 32)) (extraKeys!3357 (_ BitVec 32)) (zeroValue!3461 V!5125) (minValue!3461 V!5125) (_size!1214 (_ BitVec 32)) (_keys!5472 array!7356) (_values!3603 array!7358) (_vacant!1214 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2330)

(declare-fun mapValue!7006 () ValueCell!1711)

(declare-fun mapKey!7006 () (_ BitVec 32))

(assert (=> mapNonEmpty!7006 (= (arr!3493 (_values!3603 thiss!1248)) (store mapRest!7006 mapKey!7006 mapValue!7006))))

(declare-fun b!175422 () Bool)

(assert (=> b!175422 (= e!115806 (and (= (size!3795 (_values!3603 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8517 thiss!1248))) (= (size!3794 (_keys!5472 thiss!1248)) (size!3795 (_values!3603 thiss!1248))) (bvslt (mask!8517 thiss!1248) #b00000000000000000000000000000000)))))

(declare-fun b!175423 () Bool)

(declare-fun res!83185 () Bool)

(assert (=> b!175423 (=> (not res!83185) (not e!115806))))

(declare-datatypes ((tuple2!3260 0))(
  ( (tuple2!3261 (_1!1640 (_ BitVec 64)) (_2!1640 V!5125)) )
))
(declare-datatypes ((List!2242 0))(
  ( (Nil!2239) (Cons!2238 (h!2857 tuple2!3260) (t!7068 List!2242)) )
))
(declare-datatypes ((ListLongMap!2201 0))(
  ( (ListLongMap!2202 (toList!1116 List!2242)) )
))
(declare-fun contains!1170 (ListLongMap!2201 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!763 (array!7356 array!7358 (_ BitVec 32) (_ BitVec 32) V!5125 V!5125 (_ BitVec 32) Int) ListLongMap!2201)

(assert (=> b!175423 (= res!83185 (contains!1170 (getCurrentListMap!763 (_keys!5472 thiss!1248) (_values!3603 thiss!1248) (mask!8517 thiss!1248) (extraKeys!3357 thiss!1248) (zeroValue!3461 thiss!1248) (minValue!3461 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3620 thiss!1248)) key!828))))

(declare-fun b!175425 () Bool)

(declare-fun e!115802 () Bool)

(declare-fun e!115803 () Bool)

(assert (=> b!175425 (= e!115802 (and e!115803 mapRes!7006))))

(declare-fun condMapEmpty!7006 () Bool)

(declare-fun mapDefault!7006 () ValueCell!1711)

