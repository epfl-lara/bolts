; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!18478 () Bool)

(assert start!18478)

(declare-fun b!183137 () Bool)

(declare-fun b_free!4523 () Bool)

(declare-fun b_next!4523 () Bool)

(assert (=> b!183137 (= b_free!4523 (not b_next!4523))))

(declare-fun tp!16336 () Bool)

(declare-fun b_and!11109 () Bool)

(assert (=> b!183137 (= tp!16336 b_and!11109)))

(declare-fun b!183131 () Bool)

(declare-fun res!86711 () Bool)

(declare-fun e!120589 () Bool)

(assert (=> b!183131 (=> (not res!86711) (not e!120589))))

(declare-datatypes ((V!5373 0))(
  ( (V!5374 (val!2192 Int)) )
))
(declare-datatypes ((ValueCell!1804 0))(
  ( (ValueCellFull!1804 (v!4090 V!5373)) (EmptyCell!1804) )
))
(declare-datatypes ((array!7780 0))(
  ( (array!7781 (arr!3678 (Array (_ BitVec 32) (_ BitVec 64))) (size!3990 (_ BitVec 32))) )
))
(declare-datatypes ((array!7782 0))(
  ( (array!7783 (arr!3679 (Array (_ BitVec 32) ValueCell!1804)) (size!3991 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2516 0))(
  ( (LongMapFixedSize!2517 (defaultEntry!3747 Int) (mask!8805 (_ BitVec 32)) (extraKeys!3484 (_ BitVec 32)) (zeroValue!3588 V!5373) (minValue!3588 V!5373) (_size!1307 (_ BitVec 32)) (_keys!5664 array!7780) (_values!3730 array!7782) (_vacant!1307 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2516)

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3412 0))(
  ( (tuple2!3413 (_1!1716 (_ BitVec 64)) (_2!1716 V!5373)) )
))
(declare-datatypes ((List!2354 0))(
  ( (Nil!2351) (Cons!2350 (h!2979 tuple2!3412) (t!7228 List!2354)) )
))
(declare-datatypes ((ListLongMap!2343 0))(
  ( (ListLongMap!2344 (toList!1187 List!2354)) )
))
(declare-fun contains!1267 (ListLongMap!2343 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!830 (array!7780 array!7782 (_ BitVec 32) (_ BitVec 32) V!5373 V!5373 (_ BitVec 32) Int) ListLongMap!2343)

(assert (=> b!183131 (= res!86711 (not (contains!1267 (getCurrentListMap!830 (_keys!5664 thiss!1248) (_values!3730 thiss!1248) (mask!8805 thiss!1248) (extraKeys!3484 thiss!1248) (zeroValue!3588 thiss!1248) (minValue!3588 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3747 thiss!1248)) key!828)))))

(declare-fun b!183132 () Bool)

(declare-fun e!120588 () Bool)

(assert (=> b!183132 (= e!120588 e!120589)))

(declare-fun res!86712 () Bool)

(assert (=> b!183132 (=> (not res!86712) (not e!120589))))

(declare-datatypes ((SeekEntryResult!628 0))(
  ( (MissingZero!628 (index!4682 (_ BitVec 32))) (Found!628 (index!4683 (_ BitVec 32))) (Intermediate!628 (undefined!1440 Bool) (index!4684 (_ BitVec 32)) (x!19964 (_ BitVec 32))) (Undefined!628) (MissingVacant!628 (index!4685 (_ BitVec 32))) )
))
(declare-fun lt!90551 () SeekEntryResult!628)

(assert (=> b!183132 (= res!86712 (and (not (is-Undefined!628 lt!90551)) (not (is-MissingVacant!628 lt!90551)) (not (is-MissingZero!628 lt!90551)) (is-Found!628 lt!90551)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7780 (_ BitVec 32)) SeekEntryResult!628)

(assert (=> b!183132 (= lt!90551 (seekEntryOrOpen!0 key!828 (_keys!5664 thiss!1248) (mask!8805 thiss!1248)))))

(declare-fun b!183133 () Bool)

(declare-fun res!86709 () Bool)

(assert (=> b!183133 (=> (not res!86709) (not e!120588))))

(assert (=> b!183133 (= res!86709 (not (= key!828 (bvneg key!828))))))

(declare-fun mapNonEmpty!7373 () Bool)

(declare-fun mapRes!7373 () Bool)

(declare-fun tp!16337 () Bool)

(declare-fun e!120587 () Bool)

(assert (=> mapNonEmpty!7373 (= mapRes!7373 (and tp!16337 e!120587))))

(declare-fun mapRest!7373 () (Array (_ BitVec 32) ValueCell!1804))

(declare-fun mapValue!7373 () ValueCell!1804)

(declare-fun mapKey!7373 () (_ BitVec 32))

(assert (=> mapNonEmpty!7373 (= (arr!3679 (_values!3730 thiss!1248)) (store mapRest!7373 mapKey!7373 mapValue!7373))))

(declare-fun b!183135 () Bool)

(declare-fun e!120583 () Bool)

(declare-fun e!120585 () Bool)

(assert (=> b!183135 (= e!120583 (and e!120585 mapRes!7373))))

(declare-fun condMapEmpty!7373 () Bool)

(declare-fun mapDefault!7373 () ValueCell!1804)

