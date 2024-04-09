; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70544 () Bool)

(assert start!70544)

(declare-fun b_free!12847 () Bool)

(declare-fun b_next!12847 () Bool)

(assert (=> start!70544 (= b_free!12847 (not b_next!12847))))

(declare-fun tp!45273 () Bool)

(declare-fun b_and!21695 () Bool)

(assert (=> start!70544 (= tp!45273 b_and!21695)))

(declare-fun b!819033 () Bool)

(declare-fun e!454834 () Bool)

(declare-fun e!454831 () Bool)

(declare-fun mapRes!23434 () Bool)

(assert (=> b!819033 (= e!454834 (and e!454831 mapRes!23434))))

(declare-fun condMapEmpty!23434 () Bool)

(declare-datatypes ((V!24411 0))(
  ( (V!24412 (val!7326 Int)) )
))
(declare-datatypes ((ValueCell!6863 0))(
  ( (ValueCellFull!6863 (v!9751 V!24411)) (EmptyCell!6863) )
))
(declare-datatypes ((array!45284 0))(
  ( (array!45285 (arr!21692 (Array (_ BitVec 32) ValueCell!6863)) (size!22113 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45284)

(declare-fun mapDefault!23434 () ValueCell!6863)

