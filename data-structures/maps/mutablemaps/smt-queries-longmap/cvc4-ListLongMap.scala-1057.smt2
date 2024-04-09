; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22040 () Bool)

(assert start!22040)

(declare-fun b!227164 () Bool)

(declare-fun b_free!6095 () Bool)

(declare-fun b_next!6095 () Bool)

(assert (=> b!227164 (= b_free!6095 (not b_next!6095))))

(declare-fun tp!21427 () Bool)

(declare-fun b_and!13011 () Bool)

(assert (=> b!227164 (= tp!21427 b_and!13011)))

(declare-fun b!227149 () Bool)

(declare-fun e!147373 () Bool)

(declare-fun e!147374 () Bool)

(declare-fun mapRes!10105 () Bool)

(assert (=> b!227149 (= e!147373 (and e!147374 mapRes!10105))))

(declare-fun condMapEmpty!10105 () Bool)

(declare-datatypes ((V!7589 0))(
  ( (V!7590 (val!3023 Int)) )
))
(declare-datatypes ((ValueCell!2635 0))(
  ( (ValueCellFull!2635 (v!5039 V!7589)) (EmptyCell!2635) )
))
(declare-datatypes ((array!11156 0))(
  ( (array!11157 (arr!5297 (Array (_ BitVec 32) ValueCell!2635)) (size!5630 (_ BitVec 32))) )
))
(declare-datatypes ((array!11158 0))(
  ( (array!11159 (arr!5298 (Array (_ BitVec 32) (_ BitVec 64))) (size!5631 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3170 0))(
  ( (LongMapFixedSize!3171 (defaultEntry!4244 Int) (mask!10102 (_ BitVec 32)) (extraKeys!3981 (_ BitVec 32)) (zeroValue!4085 V!7589) (minValue!4085 V!7589) (_size!1634 (_ BitVec 32)) (_keys!6298 array!11158) (_values!4227 array!11156) (_vacant!1634 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3170)

(declare-fun mapDefault!10105 () ValueCell!2635)

