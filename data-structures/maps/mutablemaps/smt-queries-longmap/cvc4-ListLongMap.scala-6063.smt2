; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78496 () Bool)

(assert start!78496)

(declare-fun b!914865 () Bool)

(declare-fun e!513385 () Bool)

(declare-datatypes ((List!18471 0))(
  ( (Nil!18468) (Cons!18467 (h!19613 (_ BitVec 64)) (t!26092 List!18471)) )
))
(declare-fun noDuplicate!1331 (List!18471) Bool)

(assert (=> b!914865 (= e!513385 (not (noDuplicate!1331 Nil!18468)))))

(declare-fun b!914866 () Bool)

(declare-fun e!513384 () Bool)

(declare-fun tp_is_empty!19211 () Bool)

(assert (=> b!914866 (= e!513384 tp_is_empty!19211)))

(declare-fun b!914867 () Bool)

(declare-fun res!616992 () Bool)

(assert (=> b!914867 (=> (not res!616992) (not e!513385))))

(declare-datatypes ((array!54432 0))(
  ( (array!54433 (arr!26159 (Array (_ BitVec 32) (_ BitVec 64))) (size!26619 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54432)

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!30579 0))(
  ( (V!30580 (val!9656 Int)) )
))
(declare-datatypes ((ValueCell!9124 0))(
  ( (ValueCellFull!9124 (v!12173 V!30579)) (EmptyCell!9124) )
))
(declare-datatypes ((array!54434 0))(
  ( (array!54435 (arr!26160 (Array (_ BitVec 32) ValueCell!9124)) (size!26620 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54434)

(declare-fun mask!1881 () (_ BitVec 32))

(assert (=> b!914867 (= res!616992 (and (= (size!26620 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26619 _keys!1487) (size!26620 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!914868 () Bool)

(declare-fun e!513381 () Bool)

(assert (=> b!914868 (= e!513381 tp_is_empty!19211)))

(declare-fun b!914869 () Bool)

(declare-fun res!616995 () Bool)

(assert (=> b!914869 (=> (not res!616995) (not e!513385))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54432 (_ BitVec 32)) Bool)

(assert (=> b!914869 (= res!616995 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun mapNonEmpty!30567 () Bool)

(declare-fun mapRes!30567 () Bool)

(declare-fun tp!58635 () Bool)

(assert (=> mapNonEmpty!30567 (= mapRes!30567 (and tp!58635 e!513384))))

(declare-fun mapRest!30567 () (Array (_ BitVec 32) ValueCell!9124))

(declare-fun mapKey!30567 () (_ BitVec 32))

(declare-fun mapValue!30567 () ValueCell!9124)

(assert (=> mapNonEmpty!30567 (= (arr!26160 _values!1231) (store mapRest!30567 mapKey!30567 mapValue!30567))))

(declare-fun b!914864 () Bool)

(declare-fun e!513382 () Bool)

(assert (=> b!914864 (= e!513382 (and e!513381 mapRes!30567))))

(declare-fun condMapEmpty!30567 () Bool)

(declare-fun mapDefault!30567 () ValueCell!9124)

