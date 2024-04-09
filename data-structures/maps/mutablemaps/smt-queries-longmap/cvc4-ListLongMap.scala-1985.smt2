; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34806 () Bool)

(assert start!34806)

(declare-fun b_free!7583 () Bool)

(declare-fun b_next!7583 () Bool)

(assert (=> start!34806 (= b_free!7583 (not b_next!7583))))

(declare-fun tp!26316 () Bool)

(declare-fun b_and!14823 () Bool)

(assert (=> start!34806 (= tp!26316 b_and!14823)))

(declare-fun mapNonEmpty!12762 () Bool)

(declare-fun mapRes!12762 () Bool)

(declare-fun tp!26315 () Bool)

(declare-fun e!213229 () Bool)

(assert (=> mapNonEmpty!12762 (= mapRes!12762 (and tp!26315 e!213229))))

(declare-datatypes ((V!11023 0))(
  ( (V!11024 (val!3812 Int)) )
))
(declare-datatypes ((ValueCell!3424 0))(
  ( (ValueCellFull!3424 (v!5991 V!11023)) (EmptyCell!3424) )
))
(declare-fun mapValue!12762 () ValueCell!3424)

(declare-fun mapKey!12762 () (_ BitVec 32))

(declare-fun mapRest!12762 () (Array (_ BitVec 32) ValueCell!3424))

(declare-datatypes ((array!18625 0))(
  ( (array!18626 (arr!8819 (Array (_ BitVec 32) ValueCell!3424)) (size!9171 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18625)

(assert (=> mapNonEmpty!12762 (= (arr!8819 _values!1525) (store mapRest!12762 mapKey!12762 mapValue!12762))))

(declare-fun b!347976 () Bool)

(declare-fun e!213231 () Bool)

(declare-fun e!213232 () Bool)

(assert (=> b!347976 (= e!213231 (and e!213232 mapRes!12762))))

(declare-fun condMapEmpty!12762 () Bool)

(declare-fun mapDefault!12762 () ValueCell!3424)

