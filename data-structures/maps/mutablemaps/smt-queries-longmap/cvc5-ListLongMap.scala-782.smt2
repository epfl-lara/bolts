; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!18550 () Bool)

(assert start!18550)

(declare-fun b!183653 () Bool)

(declare-fun b_free!4531 () Bool)

(declare-fun b_next!4531 () Bool)

(assert (=> b!183653 (= b_free!4531 (not b_next!4531))))

(declare-fun tp!16368 () Bool)

(declare-fun b_and!11125 () Bool)

(assert (=> b!183653 (= tp!16368 b_and!11125)))

(declare-fun b!183652 () Bool)

(declare-fun e!120912 () Bool)

(declare-fun tp_is_empty!4303 () Bool)

(assert (=> b!183652 (= e!120912 tp_is_empty!4303)))

(declare-fun res!86932 () Bool)

(declare-fun e!120915 () Bool)

(assert (=> start!18550 (=> (not res!86932) (not e!120915))))

(declare-datatypes ((V!5385 0))(
  ( (V!5386 (val!2196 Int)) )
))
(declare-datatypes ((ValueCell!1808 0))(
  ( (ValueCellFull!1808 (v!4096 V!5385)) (EmptyCell!1808) )
))
(declare-datatypes ((array!7800 0))(
  ( (array!7801 (arr!3686 (Array (_ BitVec 32) (_ BitVec 64))) (size!3999 (_ BitVec 32))) )
))
(declare-datatypes ((array!7802 0))(
  ( (array!7803 (arr!3687 (Array (_ BitVec 32) ValueCell!1808)) (size!4000 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2524 0))(
  ( (LongMapFixedSize!2525 (defaultEntry!3754 Int) (mask!8824 (_ BitVec 32)) (extraKeys!3491 (_ BitVec 32)) (zeroValue!3595 V!5385) (minValue!3595 V!5385) (_size!1311 (_ BitVec 32)) (_keys!5676 array!7800) (_values!3737 array!7802) (_vacant!1311 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2524)

(declare-fun valid!1036 (LongMapFixedSize!2524) Bool)

(assert (=> start!18550 (= res!86932 (valid!1036 thiss!1248))))

(assert (=> start!18550 e!120915))

(declare-fun e!120910 () Bool)

(assert (=> start!18550 e!120910))

(assert (=> start!18550 true))

(declare-fun e!120913 () Bool)

(declare-fun array_inv!2375 (array!7800) Bool)

(declare-fun array_inv!2376 (array!7802) Bool)

(assert (=> b!183653 (= e!120910 (and tp!16368 tp_is_empty!4303 (array_inv!2375 (_keys!5676 thiss!1248)) (array_inv!2376 (_values!3737 thiss!1248)) e!120913))))

(declare-fun b!183654 () Bool)

(declare-fun e!120911 () Bool)

(declare-fun mapRes!7392 () Bool)

(assert (=> b!183654 (= e!120913 (and e!120911 mapRes!7392))))

(declare-fun condMapEmpty!7392 () Bool)

(declare-fun mapDefault!7392 () ValueCell!1808)

