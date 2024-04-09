; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72506 () Bool)

(assert start!72506)

(declare-fun b_free!13663 () Bool)

(declare-fun b_next!13663 () Bool)

(assert (=> start!72506 (= b_free!13663 (not b_next!13663))))

(declare-fun tp!48089 () Bool)

(declare-fun b_and!22767 () Bool)

(assert (=> start!72506 (= tp!48089 b_and!22767)))

(declare-fun b!840590 () Bool)

(declare-fun e!469032 () Bool)

(declare-fun e!469027 () Bool)

(declare-fun mapRes!24893 () Bool)

(assert (=> b!840590 (= e!469032 (and e!469027 mapRes!24893))))

(declare-fun condMapEmpty!24893 () Bool)

(declare-datatypes ((V!25753 0))(
  ( (V!25754 (val!7812 Int)) )
))
(declare-datatypes ((ValueCell!7325 0))(
  ( (ValueCellFull!7325 (v!10233 V!25753)) (EmptyCell!7325) )
))
(declare-datatypes ((array!47306 0))(
  ( (array!47307 (arr!22680 (Array (_ BitVec 32) ValueCell!7325)) (size!23121 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47306)

(declare-fun mapDefault!24893 () ValueCell!7325)

