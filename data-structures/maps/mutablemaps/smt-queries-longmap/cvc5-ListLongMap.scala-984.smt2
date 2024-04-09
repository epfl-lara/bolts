; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21254 () Bool)

(assert start!21254)

(declare-fun b!213999 () Bool)

(declare-fun b_free!5653 () Bool)

(declare-fun b_next!5653 () Bool)

(assert (=> b!213999 (= b_free!5653 (not b_next!5653))))

(declare-fun tp!20036 () Bool)

(declare-fun b_and!12561 () Bool)

(assert (=> b!213999 (= tp!20036 b_and!12561)))

(declare-fun b!213997 () Bool)

(declare-fun e!139156 () Bool)

(declare-datatypes ((V!7001 0))(
  ( (V!7002 (val!2802 Int)) )
))
(declare-datatypes ((ValueCell!2414 0))(
  ( (ValueCellFull!2414 (v!4816 V!7001)) (EmptyCell!2414) )
))
(declare-datatypes ((array!10234 0))(
  ( (array!10235 (arr!4855 (Array (_ BitVec 32) ValueCell!2414)) (size!5180 (_ BitVec 32))) )
))
(declare-datatypes ((array!10236 0))(
  ( (array!10237 (arr!4856 (Array (_ BitVec 32) (_ BitVec 64))) (size!5181 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2728 0))(
  ( (LongMapFixedSize!2729 (defaultEntry!4014 Int) (mask!9662 (_ BitVec 32)) (extraKeys!3751 (_ BitVec 32)) (zeroValue!3855 V!7001) (minValue!3855 V!7001) (_size!1413 (_ BitVec 32)) (_keys!6030 array!10236) (_values!3997 array!10234) (_vacant!1413 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2728)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!213997 (= e!139156 (not (validMask!0 (mask!9662 thiss!1504))))))

(declare-fun b!213998 () Bool)

(declare-fun res!104787 () Bool)

(assert (=> b!213998 (=> (not res!104787) (not e!139156))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!213998 (= res!104787 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!104788 () Bool)

(assert (=> start!21254 (=> (not res!104788) (not e!139156))))

(declare-fun valid!1110 (LongMapFixedSize!2728) Bool)

(assert (=> start!21254 (= res!104788 (valid!1110 thiss!1504))))

(assert (=> start!21254 e!139156))

(declare-fun e!139152 () Bool)

(assert (=> start!21254 e!139152))

(assert (=> start!21254 true))

(declare-fun mapNonEmpty!9377 () Bool)

(declare-fun mapRes!9377 () Bool)

(declare-fun tp!20035 () Bool)

(declare-fun e!139153 () Bool)

(assert (=> mapNonEmpty!9377 (= mapRes!9377 (and tp!20035 e!139153))))

(declare-fun mapRest!9377 () (Array (_ BitVec 32) ValueCell!2414))

(declare-fun mapKey!9377 () (_ BitVec 32))

(declare-fun mapValue!9377 () ValueCell!2414)

(assert (=> mapNonEmpty!9377 (= (arr!4855 (_values!3997 thiss!1504)) (store mapRest!9377 mapKey!9377 mapValue!9377))))

(declare-fun e!139154 () Bool)

(declare-fun tp_is_empty!5515 () Bool)

(declare-fun array_inv!3201 (array!10236) Bool)

(declare-fun array_inv!3202 (array!10234) Bool)

(assert (=> b!213999 (= e!139152 (and tp!20036 tp_is_empty!5515 (array_inv!3201 (_keys!6030 thiss!1504)) (array_inv!3202 (_values!3997 thiss!1504)) e!139154))))

(declare-fun b!214000 () Bool)

(declare-fun e!139151 () Bool)

(assert (=> b!214000 (= e!139154 (and e!139151 mapRes!9377))))

(declare-fun condMapEmpty!9377 () Bool)

(declare-fun mapDefault!9377 () ValueCell!2414)

