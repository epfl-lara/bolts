; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22784 () Bool)

(assert start!22784)

(declare-fun b!237414 () Bool)

(declare-fun b_free!6379 () Bool)

(declare-fun b_next!6379 () Bool)

(assert (=> b!237414 (= b_free!6379 (not b_next!6379))))

(declare-fun tp!22328 () Bool)

(declare-fun b_and!13351 () Bool)

(assert (=> b!237414 (= tp!22328 b_and!13351)))

(declare-fun res!116372 () Bool)

(declare-fun e!154178 () Bool)

(assert (=> start!22784 (=> (not res!116372) (not e!154178))))

(declare-datatypes ((V!7969 0))(
  ( (V!7970 (val!3165 Int)) )
))
(declare-datatypes ((ValueCell!2777 0))(
  ( (ValueCellFull!2777 (v!5195 V!7969)) (EmptyCell!2777) )
))
(declare-datatypes ((array!11752 0))(
  ( (array!11753 (arr!5581 (Array (_ BitVec 32) ValueCell!2777)) (size!5921 (_ BitVec 32))) )
))
(declare-datatypes ((array!11754 0))(
  ( (array!11755 (arr!5582 (Array (_ BitVec 32) (_ BitVec 64))) (size!5922 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3454 0))(
  ( (LongMapFixedSize!3455 (defaultEntry!4407 Int) (mask!10420 (_ BitVec 32)) (extraKeys!4144 (_ BitVec 32)) (zeroValue!4248 V!7969) (minValue!4248 V!7969) (_size!1776 (_ BitVec 32)) (_keys!6499 array!11754) (_values!4390 array!11752) (_vacant!1776 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3454)

(declare-fun valid!1355 (LongMapFixedSize!3454) Bool)

(assert (=> start!22784 (= res!116372 (valid!1355 thiss!1504))))

(assert (=> start!22784 e!154178))

(declare-fun e!154176 () Bool)

(assert (=> start!22784 e!154176))

(assert (=> start!22784 true))

(declare-fun b!237408 () Bool)

(declare-fun res!116371 () Bool)

(declare-fun e!154180 () Bool)

(assert (=> b!237408 (=> (not res!116371) (not e!154180))))

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((tuple2!4660 0))(
  ( (tuple2!4661 (_1!2340 (_ BitVec 64)) (_2!2340 V!7969)) )
))
(declare-datatypes ((List!3585 0))(
  ( (Nil!3582) (Cons!3581 (h!4236 tuple2!4660) (t!8580 List!3585)) )
))
(declare-datatypes ((ListLongMap!3587 0))(
  ( (ListLongMap!3588 (toList!1809 List!3585)) )
))
(declare-fun contains!1687 (ListLongMap!3587 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1332 (array!11754 array!11752 (_ BitVec 32) (_ BitVec 32) V!7969 V!7969 (_ BitVec 32) Int) ListLongMap!3587)

(assert (=> b!237408 (= res!116371 (not (contains!1687 (getCurrentListMap!1332 (_keys!6499 thiss!1504) (_values!4390 thiss!1504) (mask!10420 thiss!1504) (extraKeys!4144 thiss!1504) (zeroValue!4248 thiss!1504) (minValue!4248 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4407 thiss!1504)) key!932)))))

(declare-fun b!237409 () Bool)

(assert (=> b!237409 (= e!154180 (and (= (size!5921 (_values!4390 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10420 thiss!1504))) (= (size!5922 (_keys!6499 thiss!1504)) (size!5921 (_values!4390 thiss!1504))) (bvsge (mask!10420 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!4144 thiss!1504) #b00000000000000000000000000000000) (bvsgt (extraKeys!4144 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!237410 () Bool)

(declare-fun e!154177 () Bool)

(declare-fun tp_is_empty!6241 () Bool)

(assert (=> b!237410 (= e!154177 tp_is_empty!6241)))

(declare-fun b!237411 () Bool)

(declare-fun res!116370 () Bool)

(assert (=> b!237411 (=> (not res!116370) (not e!154180))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!237411 (= res!116370 (validMask!0 (mask!10420 thiss!1504)))))

(declare-fun b!237412 () Bool)

(declare-fun e!154179 () Bool)

(assert (=> b!237412 (= e!154179 tp_is_empty!6241)))

(declare-fun mapNonEmpty!10580 () Bool)

(declare-fun mapRes!10580 () Bool)

(declare-fun tp!22327 () Bool)

(assert (=> mapNonEmpty!10580 (= mapRes!10580 (and tp!22327 e!154179))))

(declare-fun mapKey!10580 () (_ BitVec 32))

(declare-fun mapRest!10580 () (Array (_ BitVec 32) ValueCell!2777))

(declare-fun mapValue!10580 () ValueCell!2777)

(assert (=> mapNonEmpty!10580 (= (arr!5581 (_values!4390 thiss!1504)) (store mapRest!10580 mapKey!10580 mapValue!10580))))

(declare-fun b!237413 () Bool)

(declare-fun res!116373 () Bool)

(assert (=> b!237413 (=> (not res!116373) (not e!154178))))

(assert (=> b!237413 (= res!116373 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!154181 () Bool)

(declare-fun array_inv!3675 (array!11754) Bool)

(declare-fun array_inv!3676 (array!11752) Bool)

(assert (=> b!237414 (= e!154176 (and tp!22328 tp_is_empty!6241 (array_inv!3675 (_keys!6499 thiss!1504)) (array_inv!3676 (_values!4390 thiss!1504)) e!154181))))

(declare-fun b!237415 () Bool)

(assert (=> b!237415 (= e!154181 (and e!154177 mapRes!10580))))

(declare-fun condMapEmpty!10580 () Bool)

(declare-fun mapDefault!10580 () ValueCell!2777)

