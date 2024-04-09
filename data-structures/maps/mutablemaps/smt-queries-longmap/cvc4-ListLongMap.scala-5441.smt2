; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72462 () Bool)

(assert start!72462)

(declare-fun b_free!13619 () Bool)

(declare-fun b_next!13619 () Bool)

(assert (=> start!72462 (= b_free!13619 (not b_next!13619))))

(declare-fun tp!47956 () Bool)

(declare-fun b_and!22723 () Bool)

(assert (=> start!72462 (= tp!47956 b_and!22723)))

(declare-fun b!839732 () Bool)

(declare-fun e!468631 () Bool)

(declare-fun tp_is_empty!15485 () Bool)

(assert (=> b!839732 (= e!468631 tp_is_empty!15485)))

(declare-fun mapIsEmpty!24827 () Bool)

(declare-fun mapRes!24827 () Bool)

(assert (=> mapIsEmpty!24827 mapRes!24827))

(declare-fun b!839733 () Bool)

(declare-fun res!571031 () Bool)

(declare-fun e!468633 () Bool)

(assert (=> b!839733 (=> (not res!571031) (not e!468633))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((V!25693 0))(
  ( (V!25694 (val!7790 Int)) )
))
(declare-datatypes ((ValueCell!7303 0))(
  ( (ValueCellFull!7303 (v!10211 V!25693)) (EmptyCell!7303) )
))
(declare-datatypes ((array!47222 0))(
  ( (array!47223 (arr!22638 (Array (_ BitVec 32) ValueCell!7303)) (size!23079 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47222)

(declare-datatypes ((array!47224 0))(
  ( (array!47225 (arr!22639 (Array (_ BitVec 32) (_ BitVec 64))) (size!23080 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47224)

(assert (=> b!839733 (= res!571031 (and (= (size!23079 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23080 _keys!868) (size!23079 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!839734 () Bool)

(declare-fun e!468632 () Bool)

(assert (=> b!839734 (= e!468632 (and e!468631 mapRes!24827))))

(declare-fun condMapEmpty!24827 () Bool)

(declare-fun mapDefault!24827 () ValueCell!7303)

