; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43378 () Bool)

(assert start!43378)

(declare-fun b_free!12197 () Bool)

(declare-fun b_next!12197 () Bool)

(assert (=> start!43378 (= b_free!12197 (not b_next!12197))))

(declare-fun tp!42867 () Bool)

(declare-fun b_and!20971 () Bool)

(assert (=> start!43378 (= tp!42867 b_and!20971)))

(declare-fun mapIsEmpty!22267 () Bool)

(declare-fun mapRes!22267 () Bool)

(assert (=> mapIsEmpty!22267 mapRes!22267))

(declare-fun mapNonEmpty!22267 () Bool)

(declare-fun tp!42868 () Bool)

(declare-fun e!282599 () Bool)

(assert (=> mapNonEmpty!22267 (= mapRes!22267 (and tp!42868 e!282599))))

(declare-datatypes ((V!19349 0))(
  ( (V!19350 (val!6902 Int)) )
))
(declare-datatypes ((ValueCell!6493 0))(
  ( (ValueCellFull!6493 (v!9189 V!19349)) (EmptyCell!6493) )
))
(declare-fun mapValue!22267 () ValueCell!6493)

(declare-fun mapRest!22267 () (Array (_ BitVec 32) ValueCell!6493))

(declare-fun mapKey!22267 () (_ BitVec 32))

(declare-datatypes ((array!31055 0))(
  ( (array!31056 (arr!14929 (Array (_ BitVec 32) ValueCell!6493)) (size!15287 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31055)

(assert (=> mapNonEmpty!22267 (= (arr!14929 _values!1516) (store mapRest!22267 mapKey!22267 mapValue!22267))))

(declare-fun b!480268 () Bool)

(declare-fun e!282604 () Bool)

(declare-fun e!282603 () Bool)

(assert (=> b!480268 (= e!282604 (and e!282603 mapRes!22267))))

(declare-fun condMapEmpty!22267 () Bool)

(declare-fun mapDefault!22267 () ValueCell!6493)

