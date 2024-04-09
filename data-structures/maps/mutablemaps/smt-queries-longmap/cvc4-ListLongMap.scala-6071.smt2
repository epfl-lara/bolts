; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78566 () Bool)

(assert start!78566)

(declare-fun b!915384 () Bool)

(declare-fun res!617270 () Bool)

(declare-fun e!513802 () Bool)

(assert (=> b!915384 (=> (not res!617270) (not e!513802))))

(declare-datatypes ((array!54522 0))(
  ( (array!54523 (arr!26202 (Array (_ BitVec 32) (_ BitVec 64))) (size!26662 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54522)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!30643 0))(
  ( (V!30644 (val!9680 Int)) )
))
(declare-datatypes ((ValueCell!9148 0))(
  ( (ValueCellFull!9148 (v!12198 V!30643)) (EmptyCell!9148) )
))
(declare-datatypes ((array!54524 0))(
  ( (array!54525 (arr!26203 (Array (_ BitVec 32) ValueCell!9148)) (size!26663 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54524)

(assert (=> b!915384 (= res!617270 (and (= (size!26663 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26662 _keys!1487) (size!26663 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!915385 () Bool)

(declare-fun res!617269 () Bool)

(assert (=> b!915385 (=> (not res!617269) (not e!513802))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54522 (_ BitVec 32)) Bool)

(assert (=> b!915385 (= res!617269 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!915386 () Bool)

(declare-fun e!513803 () Bool)

(declare-fun tp_is_empty!19259 () Bool)

(assert (=> b!915386 (= e!513803 tp_is_empty!19259)))

(declare-fun mapNonEmpty!30645 () Bool)

(declare-fun mapRes!30645 () Bool)

(declare-fun tp!58713 () Bool)

(declare-fun e!513801 () Bool)

(assert (=> mapNonEmpty!30645 (= mapRes!30645 (and tp!58713 e!513801))))

(declare-fun mapKey!30645 () (_ BitVec 32))

(declare-fun mapValue!30645 () ValueCell!9148)

(declare-fun mapRest!30645 () (Array (_ BitVec 32) ValueCell!9148))

(assert (=> mapNonEmpty!30645 (= (arr!26203 _values!1231) (store mapRest!30645 mapKey!30645 mapValue!30645))))

(declare-fun b!915387 () Bool)

(declare-fun e!513800 () Bool)

(assert (=> b!915387 (= e!513800 (and e!513803 mapRes!30645))))

(declare-fun condMapEmpty!30645 () Bool)

(declare-fun mapDefault!30645 () ValueCell!9148)

