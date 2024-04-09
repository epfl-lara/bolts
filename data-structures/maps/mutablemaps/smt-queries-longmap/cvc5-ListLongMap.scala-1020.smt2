; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21732 () Bool)

(assert start!21732)

(declare-fun b!218316 () Bool)

(declare-fun b_free!5869 () Bool)

(declare-fun b_next!5869 () Bool)

(assert (=> b!218316 (= b_free!5869 (not b_next!5869))))

(declare-fun tp!20742 () Bool)

(declare-fun b_and!12777 () Bool)

(assert (=> b!218316 (= tp!20742 b_and!12777)))

(declare-fun b!218306 () Bool)

(declare-fun e!142018 () Bool)

(declare-fun e!142016 () Bool)

(declare-fun mapRes!9759 () Bool)

(assert (=> b!218306 (= e!142018 (and e!142016 mapRes!9759))))

(declare-fun condMapEmpty!9759 () Bool)

(declare-datatypes ((V!7289 0))(
  ( (V!7290 (val!2910 Int)) )
))
(declare-datatypes ((ValueCell!2522 0))(
  ( (ValueCellFull!2522 (v!4924 V!7289)) (EmptyCell!2522) )
))
(declare-datatypes ((array!10700 0))(
  ( (array!10701 (arr!5071 (Array (_ BitVec 32) ValueCell!2522)) (size!5403 (_ BitVec 32))) )
))
(declare-datatypes ((array!10702 0))(
  ( (array!10703 (arr!5072 (Array (_ BitVec 32) (_ BitVec 64))) (size!5404 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2944 0))(
  ( (LongMapFixedSize!2945 (defaultEntry!4122 Int) (mask!9897 (_ BitVec 32)) (extraKeys!3859 (_ BitVec 32)) (zeroValue!3963 V!7289) (minValue!3963 V!7289) (_size!1521 (_ BitVec 32)) (_keys!6171 array!10702) (_values!4105 array!10700) (_vacant!1521 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2944)

(declare-fun mapDefault!9759 () ValueCell!2522)

