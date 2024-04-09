; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!18132 () Bool)

(assert start!18132)

(declare-fun b!180381 () Bool)

(declare-fun b_free!4459 () Bool)

(declare-fun b_next!4459 () Bool)

(assert (=> b!180381 (= b_free!4459 (not b_next!4459))))

(declare-fun tp!16114 () Bool)

(declare-fun b_and!11011 () Bool)

(assert (=> b!180381 (= tp!16114 b_and!11011)))

(declare-fun b!180379 () Bool)

(declare-fun e!118833 () Bool)

(declare-fun e!118835 () Bool)

(declare-fun mapRes!7246 () Bool)

(assert (=> b!180379 (= e!118833 (and e!118835 mapRes!7246))))

(declare-fun condMapEmpty!7246 () Bool)

(declare-datatypes ((V!5289 0))(
  ( (V!5290 (val!2160 Int)) )
))
(declare-datatypes ((ValueCell!1772 0))(
  ( (ValueCellFull!1772 (v!4049 V!5289)) (EmptyCell!1772) )
))
(declare-datatypes ((array!7634 0))(
  ( (array!7635 (arr!3614 (Array (_ BitVec 32) (_ BitVec 64))) (size!3922 (_ BitVec 32))) )
))
(declare-datatypes ((array!7636 0))(
  ( (array!7637 (arr!3615 (Array (_ BitVec 32) ValueCell!1772)) (size!3923 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2452 0))(
  ( (LongMapFixedSize!2453 (defaultEntry!3702 Int) (mask!8703 (_ BitVec 32)) (extraKeys!3439 (_ BitVec 32)) (zeroValue!3543 V!5289) (minValue!3543 V!5289) (_size!1275 (_ BitVec 32)) (_keys!5595 array!7634) (_values!3685 array!7636) (_vacant!1275 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2452)

(declare-fun mapDefault!7246 () ValueCell!1772)

