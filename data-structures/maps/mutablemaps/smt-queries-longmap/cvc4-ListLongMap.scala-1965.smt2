; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34566 () Bool)

(assert start!34566)

(declare-fun b_free!7463 () Bool)

(declare-fun b_next!7463 () Bool)

(assert (=> start!34566 (= b_free!7463 (not b_next!7463))))

(declare-fun tp!25938 () Bool)

(declare-fun b_and!14691 () Bool)

(assert (=> start!34566 (= tp!25938 b_and!14691)))

(declare-fun mapIsEmpty!12564 () Bool)

(declare-fun mapRes!12564 () Bool)

(assert (=> mapIsEmpty!12564 mapRes!12564))

(declare-fun b!345230 () Bool)

(declare-fun e!211608 () Bool)

(declare-fun tp_is_empty!7415 () Bool)

(assert (=> b!345230 (= e!211608 tp_is_empty!7415)))

(declare-fun mapNonEmpty!12564 () Bool)

(declare-fun tp!25937 () Bool)

(declare-fun e!211607 () Bool)

(assert (=> mapNonEmpty!12564 (= mapRes!12564 (and tp!25937 e!211607))))

(declare-datatypes ((V!10863 0))(
  ( (V!10864 (val!3752 Int)) )
))
(declare-datatypes ((ValueCell!3364 0))(
  ( (ValueCellFull!3364 (v!5925 V!10863)) (EmptyCell!3364) )
))
(declare-fun mapRest!12564 () (Array (_ BitVec 32) ValueCell!3364))

(declare-datatypes ((array!18385 0))(
  ( (array!18386 (arr!8705 (Array (_ BitVec 32) ValueCell!3364)) (size!9057 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18385)

(declare-fun mapKey!12564 () (_ BitVec 32))

(declare-fun mapValue!12564 () ValueCell!3364)

(assert (=> mapNonEmpty!12564 (= (arr!8705 _values!1525) (store mapRest!12564 mapKey!12564 mapValue!12564))))

(declare-fun b!345231 () Bool)

(declare-fun e!211606 () Bool)

(assert (=> b!345231 (= e!211606 (and e!211608 mapRes!12564))))

(declare-fun condMapEmpty!12564 () Bool)

(declare-fun mapDefault!12564 () ValueCell!3364)

