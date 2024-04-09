; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95734 () Bool)

(assert start!95734)

(declare-fun b_free!22351 () Bool)

(declare-fun b_next!22351 () Bool)

(assert (=> start!95734 (= b_free!22351 (not b_next!22351))))

(declare-fun tp!78903 () Bool)

(declare-fun b_and!35395 () Bool)

(assert (=> start!95734 (= tp!78903 b_and!35395)))

(declare-fun res!721197 () Bool)

(declare-fun e!618354 () Bool)

(assert (=> start!95734 (=> (not res!721197) (not e!618354))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95734 (= res!721197 (validMask!0 mask!1414))))

(assert (=> start!95734 e!618354))

(assert (=> start!95734 tp!78903))

(assert (=> start!95734 true))

(declare-fun tp_is_empty!26353 () Bool)

(assert (=> start!95734 tp_is_empty!26353))

(declare-datatypes ((array!69610 0))(
  ( (array!69611 (arr!33475 (Array (_ BitVec 32) (_ BitVec 64))) (size!34012 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69610)

(declare-fun array_inv!25700 (array!69610) Bool)

(assert (=> start!95734 (array_inv!25700 _keys!1070)))

(declare-datatypes ((V!40265 0))(
  ( (V!40266 (val!13233 Int)) )
))
(declare-datatypes ((ValueCell!12467 0))(
  ( (ValueCellFull!12467 (v!15855 V!40265)) (EmptyCell!12467) )
))
(declare-datatypes ((array!69612 0))(
  ( (array!69613 (arr!33476 (Array (_ BitVec 32) ValueCell!12467)) (size!34013 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69612)

(declare-fun e!618353 () Bool)

(declare-fun array_inv!25701 (array!69612) Bool)

(assert (=> start!95734 (and (array_inv!25701 _values!874) e!618353)))

(declare-fun b!1081831 () Bool)

(declare-fun res!721194 () Bool)

(assert (=> b!1081831 (=> (not res!721194) (not e!618354))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1081831 (= res!721194 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34012 _keys!1070))))))

(declare-fun b!1081832 () Bool)

(declare-fun e!618352 () Bool)

(declare-fun mapRes!41284 () Bool)

(assert (=> b!1081832 (= e!618353 (and e!618352 mapRes!41284))))

(declare-fun condMapEmpty!41284 () Bool)

(declare-fun mapDefault!41284 () ValueCell!12467)

