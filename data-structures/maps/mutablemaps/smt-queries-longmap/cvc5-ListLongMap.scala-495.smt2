; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!11164 () Bool)

(assert start!11164)

(declare-fun b!91373 () Bool)

(declare-fun b_free!2329 () Bool)

(declare-fun b_next!2329 () Bool)

(assert (=> b!91373 (= b_free!2329 (not b_next!2329))))

(declare-fun tp!9239 () Bool)

(declare-fun b_and!5525 () Bool)

(assert (=> b!91373 (= tp!9239 b_and!5525)))

(declare-fun b!91366 () Bool)

(declare-fun b_free!2331 () Bool)

(declare-fun b_next!2331 () Bool)

(assert (=> b!91366 (= b_free!2331 (not b_next!2331))))

(declare-fun tp!9241 () Bool)

(declare-fun b_and!5527 () Bool)

(assert (=> b!91366 (= tp!9241 b_and!5527)))

(declare-fun b!91352 () Bool)

(declare-fun e!59600 () Bool)

(declare-fun tp_is_empty!2581 () Bool)

(assert (=> b!91352 (= e!59600 tp_is_empty!2581)))

(declare-fun b!91353 () Bool)

(declare-fun e!59604 () Bool)

(declare-fun mapRes!3565 () Bool)

(assert (=> b!91353 (= e!59604 (and e!59600 mapRes!3565))))

(declare-fun condMapEmpty!3565 () Bool)

(declare-datatypes ((V!3089 0))(
  ( (V!3090 (val!1335 Int)) )
))
(declare-datatypes ((array!4130 0))(
  ( (array!4131 (arr!1964 (Array (_ BitVec 32) (_ BitVec 64))) (size!2211 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!947 0))(
  ( (ValueCellFull!947 (v!2719 V!3089)) (EmptyCell!947) )
))
(declare-datatypes ((array!4132 0))(
  ( (array!4133 (arr!1965 (Array (_ BitVec 32) ValueCell!947)) (size!2212 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!802 0))(
  ( (LongMapFixedSize!803 (defaultEntry!2405 Int) (mask!6465 (_ BitVec 32)) (extraKeys!2236 (_ BitVec 32)) (zeroValue!2293 V!3089) (minValue!2293 V!3089) (_size!450 (_ BitVec 32)) (_keys!4085 array!4130) (_values!2388 array!4132) (_vacant!450 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!606 0))(
  ( (Cell!607 (v!2720 LongMapFixedSize!802)) )
))
(declare-datatypes ((LongMap!606 0))(
  ( (LongMap!607 (underlying!314 Cell!606)) )
))
(declare-fun thiss!992 () LongMap!606)

(declare-fun mapDefault!3566 () ValueCell!947)

