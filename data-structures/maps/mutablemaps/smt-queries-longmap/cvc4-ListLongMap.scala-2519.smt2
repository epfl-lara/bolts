; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38944 () Bool)

(assert start!38944)

(declare-fun b!407249 () Bool)

(declare-fun res!235507 () Bool)

(declare-fun e!244595 () Bool)

(assert (=> b!407249 (=> (not res!235507) (not e!244595))))

(declare-datatypes ((array!24565 0))(
  ( (array!24566 (arr!11729 (Array (_ BitVec 32) (_ BitVec 64))) (size!12081 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24565)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24565 (_ BitVec 32)) Bool)

(assert (=> b!407249 (= res!235507 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!407250 () Bool)

(declare-fun res!235506 () Bool)

(assert (=> b!407250 (=> (not res!235506) (not e!244595))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!14911 0))(
  ( (V!14912 (val!5222 Int)) )
))
(declare-datatypes ((ValueCell!4834 0))(
  ( (ValueCellFull!4834 (v!7465 V!14911)) (EmptyCell!4834) )
))
(declare-datatypes ((array!24567 0))(
  ( (array!24568 (arr!11730 (Array (_ BitVec 32) ValueCell!4834)) (size!12082 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24567)

(assert (=> b!407250 (= res!235506 (and (= (size!12082 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12081 _keys!709) (size!12082 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!17154 () Bool)

(declare-fun mapRes!17154 () Bool)

(assert (=> mapIsEmpty!17154 mapRes!17154))

(declare-fun b!407251 () Bool)

(declare-fun e!244596 () Bool)

(assert (=> b!407251 (= e!244595 e!244596)))

(declare-fun res!235509 () Bool)

(assert (=> b!407251 (=> (not res!235509) (not e!244596))))

(declare-fun lt!188606 () array!24565)

(assert (=> b!407251 (= res!235509 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188606 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!407251 (= lt!188606 (array!24566 (store (arr!11729 _keys!709) i!563 k!794) (size!12081 _keys!709)))))

(declare-fun b!407252 () Bool)

(declare-fun e!244597 () Bool)

(declare-fun tp_is_empty!10355 () Bool)

(assert (=> b!407252 (= e!244597 tp_is_empty!10355)))

(declare-fun b!407253 () Bool)

(declare-fun e!244593 () Bool)

(declare-fun e!244594 () Bool)

(assert (=> b!407253 (= e!244593 (and e!244594 mapRes!17154))))

(declare-fun condMapEmpty!17154 () Bool)

(declare-fun mapDefault!17154 () ValueCell!4834)

