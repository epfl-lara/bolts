; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16672 () Bool)

(assert start!16672)

(declare-fun b!166594 () Bool)

(declare-fun b_free!3965 () Bool)

(declare-fun b_next!3965 () Bool)

(assert (=> b!166594 (= b_free!3965 (not b_next!3965))))

(declare-fun tp!14496 () Bool)

(declare-fun b_and!10397 () Bool)

(assert (=> b!166594 (= tp!14496 b_and!10397)))

(declare-fun b!166585 () Bool)

(declare-fun e!109325 () Bool)

(declare-fun e!109321 () Bool)

(declare-fun mapRes!6369 () Bool)

(assert (=> b!166585 (= e!109325 (and e!109321 mapRes!6369))))

(declare-fun condMapEmpty!6369 () Bool)

(declare-datatypes ((V!4669 0))(
  ( (V!4670 (val!1928 Int)) )
))
(declare-datatypes ((ValueCell!1540 0))(
  ( (ValueCellFull!1540 (v!3789 V!4669)) (EmptyCell!1540) )
))
(declare-datatypes ((array!6630 0))(
  ( (array!6631 (arr!3150 (Array (_ BitVec 32) (_ BitVec 64))) (size!3438 (_ BitVec 32))) )
))
(declare-datatypes ((array!6632 0))(
  ( (array!6633 (arr!3151 (Array (_ BitVec 32) ValueCell!1540)) (size!3439 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1988 0))(
  ( (LongMapFixedSize!1989 (defaultEntry!3436 Int) (mask!8169 (_ BitVec 32)) (extraKeys!3177 (_ BitVec 32)) (zeroValue!3279 V!4669) (minValue!3279 V!4669) (_size!1043 (_ BitVec 32)) (_keys!5261 array!6630) (_values!3419 array!6632) (_vacant!1043 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1988)

(declare-fun mapDefault!6369 () ValueCell!1540)

