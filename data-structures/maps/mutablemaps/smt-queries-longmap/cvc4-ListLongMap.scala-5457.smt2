; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72558 () Bool)

(assert start!72558)

(declare-fun b_free!13715 () Bool)

(declare-fun b_next!13715 () Bool)

(assert (=> start!72558 (= b_free!13715 (not b_next!13715))))

(declare-fun tp!48245 () Bool)

(declare-fun b_and!22819 () Bool)

(assert (=> start!72558 (= tp!48245 b_and!22819)))

(declare-fun mapNonEmpty!24971 () Bool)

(declare-fun mapRes!24971 () Bool)

(declare-fun tp!48244 () Bool)

(declare-fun e!469497 () Bool)

(assert (=> mapNonEmpty!24971 (= mapRes!24971 (and tp!48244 e!469497))))

(declare-datatypes ((V!25821 0))(
  ( (V!25822 (val!7838 Int)) )
))
(declare-datatypes ((ValueCell!7351 0))(
  ( (ValueCellFull!7351 (v!10259 V!25821)) (EmptyCell!7351) )
))
(declare-fun mapRest!24971 () (Array (_ BitVec 32) ValueCell!7351))

(declare-fun mapValue!24971 () ValueCell!7351)

(declare-fun mapKey!24971 () (_ BitVec 32))

(declare-datatypes ((array!47406 0))(
  ( (array!47407 (arr!22730 (Array (_ BitVec 32) ValueCell!7351)) (size!23171 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47406)

(assert (=> mapNonEmpty!24971 (= (arr!22730 _values!688) (store mapRest!24971 mapKey!24971 mapValue!24971))))

(declare-fun b!841604 () Bool)

(declare-fun res!572186 () Bool)

(declare-fun e!469495 () Bool)

(assert (=> b!841604 (=> (not res!572186) (not e!469495))))

(declare-datatypes ((array!47408 0))(
  ( (array!47409 (arr!22731 (Array (_ BitVec 32) (_ BitVec 64))) (size!23172 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47408)

(declare-datatypes ((List!16247 0))(
  ( (Nil!16244) (Cons!16243 (h!17374 (_ BitVec 64)) (t!22626 List!16247)) )
))
(declare-fun arrayNoDuplicates!0 (array!47408 (_ BitVec 32) List!16247) Bool)

(assert (=> b!841604 (= res!572186 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16244))))

(declare-fun b!841605 () Bool)

(declare-fun e!469500 () Bool)

(declare-fun e!469496 () Bool)

(assert (=> b!841605 (= e!469500 (and e!469496 mapRes!24971))))

(declare-fun condMapEmpty!24971 () Bool)

(declare-fun mapDefault!24971 () ValueCell!7351)

