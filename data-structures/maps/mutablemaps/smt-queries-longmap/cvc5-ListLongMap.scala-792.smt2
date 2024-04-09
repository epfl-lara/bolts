; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!18848 () Bool)

(assert start!18848)

(declare-fun b!186094 () Bool)

(declare-fun b_free!4591 () Bool)

(declare-fun b_next!4591 () Bool)

(assert (=> b!186094 (= b_free!4591 (not b_next!4591))))

(declare-fun tp!16575 () Bool)

(declare-fun b_and!11213 () Bool)

(assert (=> b!186094 (= tp!16575 b_and!11213)))

(declare-fun tp_is_empty!4363 () Bool)

(declare-fun e!122489 () Bool)

(declare-datatypes ((V!5465 0))(
  ( (V!5466 (val!2226 Int)) )
))
(declare-datatypes ((ValueCell!1838 0))(
  ( (ValueCellFull!1838 (v!4134 V!5465)) (EmptyCell!1838) )
))
(declare-datatypes ((array!7936 0))(
  ( (array!7937 (arr!3746 (Array (_ BitVec 32) (_ BitVec 64))) (size!4062 (_ BitVec 32))) )
))
(declare-datatypes ((array!7938 0))(
  ( (array!7939 (arr!3747 (Array (_ BitVec 32) ValueCell!1838)) (size!4063 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2584 0))(
  ( (LongMapFixedSize!2585 (defaultEntry!3797 Int) (mask!8919 (_ BitVec 32)) (extraKeys!3534 (_ BitVec 32)) (zeroValue!3638 V!5465) (minValue!3638 V!5465) (_size!1341 (_ BitVec 32)) (_keys!5739 array!7936) (_values!3780 array!7938) (_vacant!1341 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2584)

(declare-fun e!122482 () Bool)

(declare-fun array_inv!2413 (array!7936) Bool)

(declare-fun array_inv!2414 (array!7938) Bool)

(assert (=> b!186094 (= e!122482 (and tp!16575 tp_is_empty!4363 (array_inv!2413 (_keys!5739 thiss!1248)) (array_inv!2414 (_values!3780 thiss!1248)) e!122489))))

(declare-fun mapNonEmpty!7509 () Bool)

(declare-fun mapRes!7509 () Bool)

(declare-fun tp!16574 () Bool)

(declare-fun e!122487 () Bool)

(assert (=> mapNonEmpty!7509 (= mapRes!7509 (and tp!16574 e!122487))))

(declare-fun mapRest!7509 () (Array (_ BitVec 32) ValueCell!1838))

(declare-fun mapValue!7509 () ValueCell!1838)

(declare-fun mapKey!7509 () (_ BitVec 32))

(assert (=> mapNonEmpty!7509 (= (arr!3747 (_values!3780 thiss!1248)) (store mapRest!7509 mapKey!7509 mapValue!7509))))

(declare-fun res!88049 () Bool)

(declare-fun e!122485 () Bool)

(assert (=> start!18848 (=> (not res!88049) (not e!122485))))

(declare-fun valid!1057 (LongMapFixedSize!2584) Bool)

(assert (=> start!18848 (= res!88049 (valid!1057 thiss!1248))))

(assert (=> start!18848 e!122485))

(assert (=> start!18848 e!122482))

(assert (=> start!18848 true))

(declare-fun b!186095 () Bool)

(declare-fun e!122488 () Bool)

(assert (=> b!186095 (= e!122489 (and e!122488 mapRes!7509))))

(declare-fun condMapEmpty!7509 () Bool)

(declare-fun mapDefault!7509 () ValueCell!1838)

