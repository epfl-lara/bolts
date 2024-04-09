; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73128 () Bool)

(assert start!73128)

(declare-fun b_free!14015 () Bool)

(declare-fun b_next!14015 () Bool)

(assert (=> start!73128 (= b_free!14015 (not b_next!14015))))

(declare-fun tp!49549 () Bool)

(declare-fun b_and!23207 () Bool)

(assert (=> start!73128 (= tp!49549 b_and!23207)))

(declare-fun b!850357 () Bool)

(declare-fun res!577768 () Bool)

(declare-fun e!474394 () Bool)

(assert (=> b!850357 (=> (not res!577768) (not e!474394))))

(declare-datatypes ((array!48492 0))(
  ( (array!48493 (arr!23273 (Array (_ BitVec 32) (_ BitVec 64))) (size!23714 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48492)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48492 (_ BitVec 32)) Bool)

(assert (=> b!850357 (= res!577768 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!850358 () Bool)

(declare-fun res!577764 () Bool)

(assert (=> b!850358 (=> (not res!577764) (not e!474394))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!850358 (= res!577764 (validMask!0 mask!1196))))

(declare-fun b!850359 () Bool)

(declare-fun e!474392 () Bool)

(declare-fun e!474389 () Bool)

(declare-fun mapRes!25826 () Bool)

(assert (=> b!850359 (= e!474392 (and e!474389 mapRes!25826))))

(declare-fun condMapEmpty!25826 () Bool)

(declare-datatypes ((V!26581 0))(
  ( (V!26582 (val!8123 Int)) )
))
(declare-datatypes ((ValueCell!7636 0))(
  ( (ValueCellFull!7636 (v!10544 V!26581)) (EmptyCell!7636) )
))
(declare-datatypes ((array!48494 0))(
  ( (array!48495 (arr!23274 (Array (_ BitVec 32) ValueCell!7636)) (size!23715 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48494)

(declare-fun mapDefault!25826 () ValueCell!7636)

