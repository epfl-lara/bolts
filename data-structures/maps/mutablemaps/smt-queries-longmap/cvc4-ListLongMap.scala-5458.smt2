; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72564 () Bool)

(assert start!72564)

(declare-fun b_free!13721 () Bool)

(declare-fun b_next!13721 () Bool)

(assert (=> start!72564 (= b_free!13721 (not b_next!13721))))

(declare-fun tp!48263 () Bool)

(declare-fun b_and!22825 () Bool)

(assert (=> start!72564 (= tp!48263 b_and!22825)))

(declare-fun b!841721 () Bool)

(declare-fun res!572256 () Bool)

(declare-fun e!469552 () Bool)

(assert (=> b!841721 (=> (not res!572256) (not e!469552))))

(declare-datatypes ((array!47418 0))(
  ( (array!47419 (arr!22736 (Array (_ BitVec 32) (_ BitVec 64))) (size!23177 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47418)

(declare-datatypes ((List!16251 0))(
  ( (Nil!16248) (Cons!16247 (h!17378 (_ BitVec 64)) (t!22630 List!16251)) )
))
(declare-fun arrayNoDuplicates!0 (array!47418 (_ BitVec 32) List!16251) Bool)

(assert (=> b!841721 (= res!572256 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16248))))

(declare-fun b!841722 () Bool)

(declare-fun e!469549 () Bool)

(declare-fun e!469551 () Bool)

(declare-fun mapRes!24980 () Bool)

(assert (=> b!841722 (= e!469549 (and e!469551 mapRes!24980))))

(declare-fun condMapEmpty!24980 () Bool)

(declare-datatypes ((V!25829 0))(
  ( (V!25830 (val!7841 Int)) )
))
(declare-datatypes ((ValueCell!7354 0))(
  ( (ValueCellFull!7354 (v!10262 V!25829)) (EmptyCell!7354) )
))
(declare-datatypes ((array!47420 0))(
  ( (array!47421 (arr!22737 (Array (_ BitVec 32) ValueCell!7354)) (size!23178 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47420)

(declare-fun mapDefault!24980 () ValueCell!7354)

