; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21706 () Bool)

(assert start!21706)

(declare-fun b!217881 () Bool)

(declare-fun b_free!5843 () Bool)

(declare-fun b_next!5843 () Bool)

(assert (=> b!217881 (= b_free!5843 (not b_next!5843))))

(declare-fun tp!20663 () Bool)

(declare-fun b_and!12751 () Bool)

(assert (=> b!217881 (= tp!20663 b_and!12751)))

(declare-fun mapIsEmpty!9720 () Bool)

(declare-fun mapRes!9720 () Bool)

(assert (=> mapIsEmpty!9720 mapRes!9720))

(declare-fun b!217877 () Bool)

(declare-fun e!141741 () Bool)

(declare-fun e!141744 () Bool)

(assert (=> b!217877 (= e!141741 (and e!141744 mapRes!9720))))

(declare-fun condMapEmpty!9720 () Bool)

(declare-datatypes ((V!7253 0))(
  ( (V!7254 (val!2897 Int)) )
))
(declare-datatypes ((ValueCell!2509 0))(
  ( (ValueCellFull!2509 (v!4911 V!7253)) (EmptyCell!2509) )
))
(declare-datatypes ((array!10648 0))(
  ( (array!10649 (arr!5045 (Array (_ BitVec 32) ValueCell!2509)) (size!5377 (_ BitVec 32))) )
))
(declare-datatypes ((array!10650 0))(
  ( (array!10651 (arr!5046 (Array (_ BitVec 32) (_ BitVec 64))) (size!5378 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2918 0))(
  ( (LongMapFixedSize!2919 (defaultEntry!4109 Int) (mask!9874 (_ BitVec 32)) (extraKeys!3846 (_ BitVec 32)) (zeroValue!3950 V!7253) (minValue!3950 V!7253) (_size!1508 (_ BitVec 32)) (_keys!6158 array!10650) (_values!4092 array!10648) (_vacant!1508 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2918)

(declare-fun mapDefault!9720 () ValueCell!2509)

