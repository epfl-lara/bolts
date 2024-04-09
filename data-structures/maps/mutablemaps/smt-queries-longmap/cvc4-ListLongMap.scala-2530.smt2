; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39010 () Bool)

(assert start!39010)

(declare-fun b!408536 () Bool)

(declare-fun res!236495 () Bool)

(declare-fun e!245186 () Bool)

(assert (=> b!408536 (=> (not res!236495) (not e!245186))))

(declare-datatypes ((array!24697 0))(
  ( (array!24698 (arr!11795 (Array (_ BitVec 32) (_ BitVec 64))) (size!12147 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24697)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!14999 0))(
  ( (V!15000 (val!5255 Int)) )
))
(declare-datatypes ((ValueCell!4867 0))(
  ( (ValueCellFull!4867 (v!7498 V!14999)) (EmptyCell!4867) )
))
(declare-datatypes ((array!24699 0))(
  ( (array!24700 (arr!11796 (Array (_ BitVec 32) ValueCell!4867)) (size!12148 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24699)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!408536 (= res!236495 (and (= (size!12148 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12147 _keys!709) (size!12148 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!408537 () Bool)

(declare-fun res!236501 () Bool)

(assert (=> b!408537 (=> (not res!236501) (not e!245186))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!408537 (= res!236501 (validKeyInArray!0 k!794))))

(declare-fun b!408538 () Bool)

(declare-fun e!245188 () Bool)

(declare-fun tp_is_empty!10421 () Bool)

(assert (=> b!408538 (= e!245188 tp_is_empty!10421)))

(declare-fun b!408539 () Bool)

(declare-fun res!236493 () Bool)

(assert (=> b!408539 (=> (not res!236493) (not e!245186))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24697 (_ BitVec 32)) Bool)

(assert (=> b!408539 (= res!236493 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!408540 () Bool)

(declare-fun e!245191 () Bool)

(assert (=> b!408540 (= e!245186 e!245191)))

(declare-fun res!236498 () Bool)

(assert (=> b!408540 (=> (not res!236498) (not e!245191))))

(declare-fun lt!188805 () array!24697)

(assert (=> b!408540 (= res!236498 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188805 mask!1025))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!408540 (= lt!188805 (array!24698 (store (arr!11795 _keys!709) i!563 k!794) (size!12147 _keys!709)))))

(declare-fun res!236496 () Bool)

(assert (=> start!39010 (=> (not res!236496) (not e!245186))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!39010 (= res!236496 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12147 _keys!709))))))

(assert (=> start!39010 e!245186))

(assert (=> start!39010 true))

(declare-fun e!245189 () Bool)

(declare-fun array_inv!8616 (array!24699) Bool)

(assert (=> start!39010 (and (array_inv!8616 _values!549) e!245189)))

(declare-fun array_inv!8617 (array!24697) Bool)

(assert (=> start!39010 (array_inv!8617 _keys!709)))

(declare-fun b!408541 () Bool)

(declare-fun res!236500 () Bool)

(assert (=> b!408541 (=> (not res!236500) (not e!245186))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!408541 (= res!236500 (validMask!0 mask!1025))))

(declare-fun mapIsEmpty!17253 () Bool)

(declare-fun mapRes!17253 () Bool)

(assert (=> mapIsEmpty!17253 mapRes!17253))

(declare-fun b!408542 () Bool)

(declare-fun res!236499 () Bool)

(assert (=> b!408542 (=> (not res!236499) (not e!245186))))

(assert (=> b!408542 (= res!236499 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12147 _keys!709))))))

(declare-fun b!408543 () Bool)

(declare-fun res!236494 () Bool)

(assert (=> b!408543 (=> (not res!236494) (not e!245186))))

(assert (=> b!408543 (= res!236494 (or (= (select (arr!11795 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11795 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!408544 () Bool)

(declare-fun res!236497 () Bool)

(assert (=> b!408544 (=> (not res!236497) (not e!245186))))

(declare-fun arrayContainsKey!0 (array!24697 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!408544 (= res!236497 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!408545 () Bool)

(declare-fun e!245187 () Bool)

(assert (=> b!408545 (= e!245187 tp_is_empty!10421)))

(declare-fun b!408546 () Bool)

(declare-fun res!236502 () Bool)

(assert (=> b!408546 (=> (not res!236502) (not e!245186))))

(declare-datatypes ((List!6813 0))(
  ( (Nil!6810) (Cons!6809 (h!7665 (_ BitVec 64)) (t!11995 List!6813)) )
))
(declare-fun arrayNoDuplicates!0 (array!24697 (_ BitVec 32) List!6813) Bool)

(assert (=> b!408546 (= res!236502 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6810))))

(declare-fun mapNonEmpty!17253 () Bool)

(declare-fun tp!33372 () Bool)

(assert (=> mapNonEmpty!17253 (= mapRes!17253 (and tp!33372 e!245187))))

(declare-fun mapValue!17253 () ValueCell!4867)

(declare-fun mapRest!17253 () (Array (_ BitVec 32) ValueCell!4867))

(declare-fun mapKey!17253 () (_ BitVec 32))

(assert (=> mapNonEmpty!17253 (= (arr!11796 _values!549) (store mapRest!17253 mapKey!17253 mapValue!17253))))

(declare-fun b!408547 () Bool)

(assert (=> b!408547 (= e!245191 false)))

(declare-fun lt!188804 () Bool)

(assert (=> b!408547 (= lt!188804 (arrayNoDuplicates!0 lt!188805 #b00000000000000000000000000000000 Nil!6810))))

(declare-fun b!408548 () Bool)

(assert (=> b!408548 (= e!245189 (and e!245188 mapRes!17253))))

(declare-fun condMapEmpty!17253 () Bool)

(declare-fun mapDefault!17253 () ValueCell!4867)

