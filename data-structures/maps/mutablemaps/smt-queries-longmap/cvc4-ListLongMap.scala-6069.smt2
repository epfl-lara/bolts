; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78554 () Bool)

(assert start!78554)

(declare-fun b!915276 () Bool)

(declare-fun e!513710 () Bool)

(assert (=> b!915276 (= e!513710 false)))

(declare-fun lt!411615 () Bool)

(declare-datatypes ((array!54500 0))(
  ( (array!54501 (arr!26191 (Array (_ BitVec 32) (_ BitVec 64))) (size!26651 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54500)

(declare-datatypes ((List!18482 0))(
  ( (Nil!18479) (Cons!18478 (h!19624 (_ BitVec 64)) (t!26103 List!18482)) )
))
(declare-fun arrayNoDuplicates!0 (array!54500 (_ BitVec 32) List!18482) Bool)

(assert (=> b!915276 (= lt!411615 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18479))))

(declare-fun res!617215 () Bool)

(assert (=> start!78554 (=> (not res!617215) (not e!513710))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78554 (= res!617215 (validMask!0 mask!1881))))

(assert (=> start!78554 e!513710))

(assert (=> start!78554 true))

(declare-datatypes ((V!30627 0))(
  ( (V!30628 (val!9674 Int)) )
))
(declare-datatypes ((ValueCell!9142 0))(
  ( (ValueCellFull!9142 (v!12192 V!30627)) (EmptyCell!9142) )
))
(declare-datatypes ((array!54502 0))(
  ( (array!54503 (arr!26192 (Array (_ BitVec 32) ValueCell!9142)) (size!26652 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54502)

(declare-fun e!513713 () Bool)

(declare-fun array_inv!20430 (array!54502) Bool)

(assert (=> start!78554 (and (array_inv!20430 _values!1231) e!513713)))

(declare-fun array_inv!20431 (array!54500) Bool)

(assert (=> start!78554 (array_inv!20431 _keys!1487)))

(declare-fun mapNonEmpty!30627 () Bool)

(declare-fun mapRes!30627 () Bool)

(declare-fun tp!58695 () Bool)

(declare-fun e!513712 () Bool)

(assert (=> mapNonEmpty!30627 (= mapRes!30627 (and tp!58695 e!513712))))

(declare-fun mapRest!30627 () (Array (_ BitVec 32) ValueCell!9142))

(declare-fun mapValue!30627 () ValueCell!9142)

(declare-fun mapKey!30627 () (_ BitVec 32))

(assert (=> mapNonEmpty!30627 (= (arr!26192 _values!1231) (store mapRest!30627 mapKey!30627 mapValue!30627))))

(declare-fun b!915277 () Bool)

(declare-fun res!617214 () Bool)

(assert (=> b!915277 (=> (not res!617214) (not e!513710))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54500 (_ BitVec 32)) Bool)

(assert (=> b!915277 (= res!617214 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!915278 () Bool)

(declare-fun tp_is_empty!19247 () Bool)

(assert (=> b!915278 (= e!513712 tp_is_empty!19247)))

(declare-fun b!915279 () Bool)

(declare-fun e!513714 () Bool)

(assert (=> b!915279 (= e!513714 tp_is_empty!19247)))

(declare-fun b!915280 () Bool)

(declare-fun res!617216 () Bool)

(assert (=> b!915280 (=> (not res!617216) (not e!513710))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!915280 (= res!617216 (and (= (size!26652 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26651 _keys!1487) (size!26652 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!915281 () Bool)

(assert (=> b!915281 (= e!513713 (and e!513714 mapRes!30627))))

(declare-fun condMapEmpty!30627 () Bool)

(declare-fun mapDefault!30627 () ValueCell!9142)

