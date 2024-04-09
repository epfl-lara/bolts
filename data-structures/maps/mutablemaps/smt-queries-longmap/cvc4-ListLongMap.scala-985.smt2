; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21280 () Bool)

(assert start!21280)

(declare-fun b!214171 () Bool)

(declare-fun b_free!5663 () Bool)

(declare-fun b_next!5663 () Bool)

(assert (=> b!214171 (= b_free!5663 (not b_next!5663))))

(declare-fun tp!20070 () Bool)

(declare-fun b_and!12571 () Bool)

(assert (=> b!214171 (= tp!20070 b_and!12571)))

(declare-fun b!214165 () Bool)

(declare-fun e!139286 () Bool)

(declare-fun tp_is_empty!5525 () Bool)

(assert (=> b!214165 (= e!139286 tp_is_empty!5525)))

(declare-fun res!104863 () Bool)

(declare-fun e!139282 () Bool)

(assert (=> start!21280 (=> (not res!104863) (not e!139282))))

(declare-datatypes ((V!7013 0))(
  ( (V!7014 (val!2807 Int)) )
))
(declare-datatypes ((ValueCell!2419 0))(
  ( (ValueCellFull!2419 (v!4821 V!7013)) (EmptyCell!2419) )
))
(declare-datatypes ((array!10256 0))(
  ( (array!10257 (arr!4865 (Array (_ BitVec 32) ValueCell!2419)) (size!5191 (_ BitVec 32))) )
))
(declare-datatypes ((array!10258 0))(
  ( (array!10259 (arr!4866 (Array (_ BitVec 32) (_ BitVec 64))) (size!5192 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2738 0))(
  ( (LongMapFixedSize!2739 (defaultEntry!4019 Int) (mask!9671 (_ BitVec 32)) (extraKeys!3756 (_ BitVec 32)) (zeroValue!3860 V!7013) (minValue!3860 V!7013) (_size!1418 (_ BitVec 32)) (_keys!6036 array!10258) (_values!4002 array!10256) (_vacant!1418 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2738)

(declare-fun valid!1114 (LongMapFixedSize!2738) Bool)

(assert (=> start!21280 (= res!104863 (valid!1114 thiss!1504))))

(assert (=> start!21280 e!139282))

(declare-fun e!139283 () Bool)

(assert (=> start!21280 e!139283))

(assert (=> start!21280 true))

(declare-fun b!214166 () Bool)

(declare-fun e!139287 () Bool)

(declare-fun mapRes!9396 () Bool)

(assert (=> b!214166 (= e!139287 (and e!139286 mapRes!9396))))

(declare-fun condMapEmpty!9396 () Bool)

(declare-fun mapDefault!9396 () ValueCell!2419)

