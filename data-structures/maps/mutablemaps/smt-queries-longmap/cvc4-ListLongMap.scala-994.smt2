; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21458 () Bool)

(assert start!21458)

(declare-fun b!215310 () Bool)

(declare-fun b_free!5717 () Bool)

(declare-fun b_next!5717 () Bool)

(assert (=> b!215310 (= b_free!5717 (not b_next!5717))))

(declare-fun tp!20261 () Bool)

(declare-fun b_and!12625 () Bool)

(assert (=> b!215310 (= tp!20261 b_and!12625)))

(declare-fun b!215304 () Bool)

(declare-fun e!140079 () Bool)

(declare-fun e!140074 () Bool)

(declare-fun mapRes!9507 () Bool)

(assert (=> b!215304 (= e!140079 (and e!140074 mapRes!9507))))

(declare-fun condMapEmpty!9507 () Bool)

(declare-datatypes ((V!7085 0))(
  ( (V!7086 (val!2834 Int)) )
))
(declare-datatypes ((ValueCell!2446 0))(
  ( (ValueCellFull!2446 (v!4848 V!7085)) (EmptyCell!2446) )
))
(declare-datatypes ((array!10382 0))(
  ( (array!10383 (arr!4919 (Array (_ BitVec 32) ValueCell!2446)) (size!5248 (_ BitVec 32))) )
))
(declare-datatypes ((array!10384 0))(
  ( (array!10385 (arr!4920 (Array (_ BitVec 32) (_ BitVec 64))) (size!5249 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2792 0))(
  ( (LongMapFixedSize!2793 (defaultEntry!4046 Int) (mask!9740 (_ BitVec 32)) (extraKeys!3783 (_ BitVec 32)) (zeroValue!3887 V!7085) (minValue!3887 V!7085) (_size!1445 (_ BitVec 32)) (_keys!6076 array!10384) (_values!4029 array!10382) (_vacant!1445 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2792)

(declare-fun mapDefault!9507 () ValueCell!2446)

