; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!17544 () Bool)

(assert start!17544)

(declare-fun b!175557 () Bool)

(declare-fun b_free!4339 () Bool)

(declare-fun b_next!4339 () Bool)

(assert (=> b!175557 (= b_free!4339 (not b_next!4339))))

(declare-fun tp!15699 () Bool)

(declare-fun b_and!10839 () Bool)

(assert (=> b!175557 (= tp!15699 b_and!10839)))

(declare-fun mapIsEmpty!7012 () Bool)

(declare-fun mapRes!7012 () Bool)

(assert (=> mapIsEmpty!7012 mapRes!7012))

(declare-fun tp_is_empty!4111 () Bool)

(declare-datatypes ((V!5129 0))(
  ( (V!5130 (val!2100 Int)) )
))
(declare-datatypes ((ValueCell!1712 0))(
  ( (ValueCellFull!1712 (v!3971 V!5129)) (EmptyCell!1712) )
))
(declare-datatypes ((array!7362 0))(
  ( (array!7363 (arr!3494 (Array (_ BitVec 32) (_ BitVec 64))) (size!3796 (_ BitVec 32))) )
))
(declare-datatypes ((array!7364 0))(
  ( (array!7365 (arr!3495 (Array (_ BitVec 32) ValueCell!1712)) (size!3797 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2332 0))(
  ( (LongMapFixedSize!2333 (defaultEntry!3622 Int) (mask!8523 (_ BitVec 32)) (extraKeys!3359 (_ BitVec 32)) (zeroValue!3463 V!5129) (minValue!3463 V!5129) (_size!1215 (_ BitVec 32)) (_keys!5475 array!7362) (_values!3605 array!7364) (_vacant!1215 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2332)

(declare-fun e!115882 () Bool)

(declare-fun e!115883 () Bool)

(declare-fun array_inv!2227 (array!7362) Bool)

(declare-fun array_inv!2228 (array!7364) Bool)

(assert (=> b!175557 (= e!115882 (and tp!15699 tp_is_empty!4111 (array_inv!2227 (_keys!5475 thiss!1248)) (array_inv!2228 (_values!3605 thiss!1248)) e!115883))))

(declare-fun res!83235 () Bool)

(declare-fun e!115884 () Bool)

(assert (=> start!17544 (=> (not res!83235) (not e!115884))))

(declare-fun valid!975 (LongMapFixedSize!2332) Bool)

(assert (=> start!17544 (= res!83235 (valid!975 thiss!1248))))

(assert (=> start!17544 e!115884))

(assert (=> start!17544 e!115882))

(assert (=> start!17544 true))

(declare-fun b!175558 () Bool)

(assert (=> b!175558 (= e!115884 (and (= (size!3797 (_values!3605 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8523 thiss!1248))) (= (size!3796 (_keys!5475 thiss!1248)) (size!3797 (_values!3605 thiss!1248))) (bvsge (mask!8523 thiss!1248) #b00000000000000000000000000000000) (bvslt (extraKeys!3359 thiss!1248) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!7012 () Bool)

(declare-fun tp!15700 () Bool)

(declare-fun e!115886 () Bool)

(assert (=> mapNonEmpty!7012 (= mapRes!7012 (and tp!15700 e!115886))))

(declare-fun mapValue!7012 () ValueCell!1712)

(declare-fun mapKey!7012 () (_ BitVec 32))

(declare-fun mapRest!7012 () (Array (_ BitVec 32) ValueCell!1712))

(assert (=> mapNonEmpty!7012 (= (arr!3495 (_values!3605 thiss!1248)) (store mapRest!7012 mapKey!7012 mapValue!7012))))

(declare-fun b!175559 () Bool)

(declare-fun res!83237 () Bool)

(assert (=> b!175559 (=> (not res!83237) (not e!115884))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!561 0))(
  ( (MissingZero!561 (index!4412 (_ BitVec 32))) (Found!561 (index!4413 (_ BitVec 32))) (Intermediate!561 (undefined!1373 Bool) (index!4414 (_ BitVec 32)) (x!19319 (_ BitVec 32))) (Undefined!561) (MissingVacant!561 (index!4415 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7362 (_ BitVec 32)) SeekEntryResult!561)

(assert (=> b!175559 (= res!83237 (is-Undefined!561 (seekEntryOrOpen!0 key!828 (_keys!5475 thiss!1248) (mask!8523 thiss!1248))))))

(declare-fun b!175560 () Bool)

(declare-fun e!115885 () Bool)

(assert (=> b!175560 (= e!115885 tp_is_empty!4111)))

(declare-fun b!175561 () Bool)

(assert (=> b!175561 (= e!115886 tp_is_empty!4111)))

(declare-fun b!175562 () Bool)

(declare-fun res!83238 () Bool)

(assert (=> b!175562 (=> (not res!83238) (not e!115884))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!175562 (= res!83238 (validMask!0 (mask!8523 thiss!1248)))))

(declare-fun b!175563 () Bool)

(declare-fun res!83236 () Bool)

(assert (=> b!175563 (=> (not res!83236) (not e!115884))))

(declare-datatypes ((tuple2!3262 0))(
  ( (tuple2!3263 (_1!1641 (_ BitVec 64)) (_2!1641 V!5129)) )
))
(declare-datatypes ((List!2244 0))(
  ( (Nil!2241) (Cons!2240 (h!2859 tuple2!3262) (t!7072 List!2244)) )
))
(declare-datatypes ((ListLongMap!2203 0))(
  ( (ListLongMap!2204 (toList!1117 List!2244)) )
))
(declare-fun contains!1171 (ListLongMap!2203 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!764 (array!7362 array!7364 (_ BitVec 32) (_ BitVec 32) V!5129 V!5129 (_ BitVec 32) Int) ListLongMap!2203)

(assert (=> b!175563 (= res!83236 (contains!1171 (getCurrentListMap!764 (_keys!5475 thiss!1248) (_values!3605 thiss!1248) (mask!8523 thiss!1248) (extraKeys!3359 thiss!1248) (zeroValue!3463 thiss!1248) (minValue!3463 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3622 thiss!1248)) key!828))))

(declare-fun b!175564 () Bool)

(declare-fun res!83239 () Bool)

(assert (=> b!175564 (=> (not res!83239) (not e!115884))))

(assert (=> b!175564 (= res!83239 (not (= key!828 (bvneg key!828))))))

(declare-fun b!175565 () Bool)

(assert (=> b!175565 (= e!115883 (and e!115885 mapRes!7012))))

(declare-fun condMapEmpty!7012 () Bool)

(declare-fun mapDefault!7012 () ValueCell!1712)

