; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21488 () Bool)

(assert start!21488)

(declare-fun b!215510 () Bool)

(declare-fun b_free!5723 () Bool)

(declare-fun b_next!5723 () Bool)

(assert (=> b!215510 (= b_free!5723 (not b_next!5723))))

(declare-fun tp!20283 () Bool)

(declare-fun b_and!12631 () Bool)

(assert (=> b!215510 (= tp!20283 b_and!12631)))

(declare-fun mapNonEmpty!9520 () Bool)

(declare-fun mapRes!9520 () Bool)

(declare-fun tp!20284 () Bool)

(declare-fun e!140211 () Bool)

(assert (=> mapNonEmpty!9520 (= mapRes!9520 (and tp!20284 e!140211))))

(declare-fun mapKey!9520 () (_ BitVec 32))

(declare-datatypes ((V!7093 0))(
  ( (V!7094 (val!2837 Int)) )
))
(declare-datatypes ((ValueCell!2449 0))(
  ( (ValueCellFull!2449 (v!4851 V!7093)) (EmptyCell!2449) )
))
(declare-datatypes ((array!10396 0))(
  ( (array!10397 (arr!4925 (Array (_ BitVec 32) ValueCell!2449)) (size!5255 (_ BitVec 32))) )
))
(declare-datatypes ((array!10398 0))(
  ( (array!10399 (arr!4926 (Array (_ BitVec 32) (_ BitVec 64))) (size!5256 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2798 0))(
  ( (LongMapFixedSize!2799 (defaultEntry!4049 Int) (mask!9751 (_ BitVec 32)) (extraKeys!3786 (_ BitVec 32)) (zeroValue!3890 V!7093) (minValue!3890 V!7093) (_size!1448 (_ BitVec 32)) (_keys!6083 array!10398) (_values!4032 array!10396) (_vacant!1448 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2798)

(declare-fun mapValue!9520 () ValueCell!2449)

(declare-fun mapRest!9520 () (Array (_ BitVec 32) ValueCell!2449))

(assert (=> mapNonEmpty!9520 (= (arr!4925 (_values!4032 thiss!1504)) (store mapRest!9520 mapKey!9520 mapValue!9520))))

(declare-fun mapIsEmpty!9520 () Bool)

(assert (=> mapIsEmpty!9520 mapRes!9520))

(declare-fun b!215509 () Bool)

(declare-fun e!140214 () Bool)

(declare-fun e!140215 () Bool)

(assert (=> b!215509 (= e!140214 (and e!140215 mapRes!9520))))

(declare-fun condMapEmpty!9520 () Bool)

(declare-fun mapDefault!9520 () ValueCell!2449)

