; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34664 () Bool)

(assert start!34664)

(declare-fun b_free!7483 () Bool)

(declare-fun b_next!7483 () Bool)

(assert (=> start!34664 (= b_free!7483 (not b_next!7483))))

(declare-fun tp!26010 () Bool)

(declare-fun b_and!14719 () Bool)

(assert (=> start!34664 (= tp!26010 b_and!14719)))

(declare-fun mapNonEmpty!12606 () Bool)

(declare-fun mapRes!12606 () Bool)

(declare-fun tp!26009 () Bool)

(declare-fun e!212121 () Bool)

(assert (=> mapNonEmpty!12606 (= mapRes!12606 (and tp!26009 e!212121))))

(declare-fun mapKey!12606 () (_ BitVec 32))

(declare-datatypes ((V!10891 0))(
  ( (V!10892 (val!3762 Int)) )
))
(declare-datatypes ((ValueCell!3374 0))(
  ( (ValueCellFull!3374 (v!5939 V!10891)) (EmptyCell!3374) )
))
(declare-fun mapRest!12606 () (Array (_ BitVec 32) ValueCell!3374))

(declare-datatypes ((array!18429 0))(
  ( (array!18430 (arr!8723 (Array (_ BitVec 32) ValueCell!3374)) (size!9075 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18429)

(declare-fun mapValue!12606 () ValueCell!3374)

(assert (=> mapNonEmpty!12606 (= (arr!8723 _values!1525) (store mapRest!12606 mapKey!12606 mapValue!12606))))

(declare-fun b!346067 () Bool)

(declare-fun e!212118 () Bool)

(declare-fun e!212117 () Bool)

(assert (=> b!346067 (= e!212118 (and e!212117 mapRes!12606))))

(declare-fun condMapEmpty!12606 () Bool)

(declare-fun mapDefault!12606 () ValueCell!3374)

