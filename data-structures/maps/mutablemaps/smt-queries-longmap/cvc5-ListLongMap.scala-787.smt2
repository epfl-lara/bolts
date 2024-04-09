; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!18760 () Bool)

(assert start!18760)

(declare-fun b!185220 () Bool)

(declare-fun b_free!4561 () Bool)

(declare-fun b_next!4561 () Bool)

(assert (=> b!185220 (= b_free!4561 (not b_next!4561))))

(declare-fun tp!16476 () Bool)

(declare-fun b_and!11177 () Bool)

(assert (=> b!185220 (= tp!16476 b_and!11177)))

(declare-fun mapNonEmpty!7455 () Bool)

(declare-fun mapRes!7455 () Bool)

(declare-fun tp!16475 () Bool)

(declare-fun e!121899 () Bool)

(assert (=> mapNonEmpty!7455 (= mapRes!7455 (and tp!16475 e!121899))))

(declare-datatypes ((V!5425 0))(
  ( (V!5426 (val!2211 Int)) )
))
(declare-datatypes ((ValueCell!1823 0))(
  ( (ValueCellFull!1823 (v!4116 V!5425)) (EmptyCell!1823) )
))
(declare-fun mapValue!7455 () ValueCell!1823)

(declare-fun mapKey!7455 () (_ BitVec 32))

(declare-datatypes ((array!7870 0))(
  ( (array!7871 (arr!3716 (Array (_ BitVec 32) (_ BitVec 64))) (size!4032 (_ BitVec 32))) )
))
(declare-datatypes ((array!7872 0))(
  ( (array!7873 (arr!3717 (Array (_ BitVec 32) ValueCell!1823)) (size!4033 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2554 0))(
  ( (LongMapFixedSize!2555 (defaultEntry!3777 Int) (mask!8880 (_ BitVec 32)) (extraKeys!3514 (_ BitVec 32)) (zeroValue!3618 V!5425) (minValue!3618 V!5425) (_size!1326 (_ BitVec 32)) (_keys!5714 array!7870) (_values!3760 array!7872) (_vacant!1326 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2554)

(declare-fun mapRest!7455 () (Array (_ BitVec 32) ValueCell!1823))

(assert (=> mapNonEmpty!7455 (= (arr!3717 (_values!3760 thiss!1248)) (store mapRest!7455 mapKey!7455 mapValue!7455))))

(declare-fun b!185215 () Bool)

(declare-fun e!121901 () Bool)

(declare-fun tp_is_empty!4333 () Bool)

(assert (=> b!185215 (= e!121901 tp_is_empty!4333)))

(declare-fun b!185216 () Bool)

(declare-fun res!87617 () Bool)

(declare-fun e!121896 () Bool)

(assert (=> b!185216 (=> (not res!87617) (not e!121896))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7870 (_ BitVec 32)) Bool)

(assert (=> b!185216 (= res!87617 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5714 thiss!1248) (mask!8880 thiss!1248)))))

(declare-fun b!185217 () Bool)

(assert (=> b!185217 (= e!121899 tp_is_empty!4333)))

(declare-fun b!185218 () Bool)

(declare-fun res!87618 () Bool)

(assert (=> b!185218 (=> (not res!87618) (not e!121896))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3440 0))(
  ( (tuple2!3441 (_1!1730 (_ BitVec 64)) (_2!1730 V!5425)) )
))
(declare-datatypes ((List!2375 0))(
  ( (Nil!2372) (Cons!2371 (h!3004 tuple2!3440) (t!7263 List!2375)) )
))
(declare-datatypes ((ListLongMap!2371 0))(
  ( (ListLongMap!2372 (toList!1201 List!2375)) )
))
(declare-fun contains!1289 (ListLongMap!2371 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!844 (array!7870 array!7872 (_ BitVec 32) (_ BitVec 32) V!5425 V!5425 (_ BitVec 32) Int) ListLongMap!2371)

(assert (=> b!185218 (= res!87618 (not (contains!1289 (getCurrentListMap!844 (_keys!5714 thiss!1248) (_values!3760 thiss!1248) (mask!8880 thiss!1248) (extraKeys!3514 thiss!1248) (zeroValue!3618 thiss!1248) (minValue!3618 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3777 thiss!1248)) key!828)))))

(declare-fun b!185219 () Bool)

(declare-fun e!121897 () Bool)

(assert (=> b!185219 (= e!121897 (and e!121901 mapRes!7455))))

(declare-fun condMapEmpty!7455 () Bool)

(declare-fun mapDefault!7455 () ValueCell!1823)

