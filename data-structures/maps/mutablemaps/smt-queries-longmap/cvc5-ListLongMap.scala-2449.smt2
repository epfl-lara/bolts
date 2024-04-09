; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38520 () Bool)

(assert start!38520)

(declare-fun b!397685 () Bool)

(declare-fun res!228496 () Bool)

(declare-fun e!240454 () Bool)

(assert (=> b!397685 (=> (not res!228496) (not e!240454))))

(declare-datatypes ((array!23745 0))(
  ( (array!23746 (arr!11319 (Array (_ BitVec 32) (_ BitVec 64))) (size!11671 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23745)

(declare-datatypes ((List!6521 0))(
  ( (Nil!6518) (Cons!6517 (h!7373 (_ BitVec 64)) (t!11703 List!6521)) )
))
(declare-fun arrayNoDuplicates!0 (array!23745 (_ BitVec 32) List!6521) Bool)

(assert (=> b!397685 (= res!228496 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6518))))

(declare-fun b!397686 () Bool)

(declare-fun e!240453 () Bool)

(assert (=> b!397686 (= e!240453 false)))

(declare-fun lt!187335 () Bool)

(declare-fun lt!187334 () array!23745)

(assert (=> b!397686 (= lt!187335 (arrayNoDuplicates!0 lt!187334 #b00000000000000000000000000000000 Nil!6518))))

(declare-fun b!397687 () Bool)

(declare-fun res!228495 () Bool)

(assert (=> b!397687 (=> (not res!228495) (not e!240454))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!397687 (= res!228495 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11671 _keys!709))))))

(declare-fun b!397688 () Bool)

(assert (=> b!397688 (= e!240454 e!240453)))

(declare-fun res!228499 () Bool)

(assert (=> b!397688 (=> (not res!228499) (not e!240453))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23745 (_ BitVec 32)) Bool)

(assert (=> b!397688 (= res!228499 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187334 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!397688 (= lt!187334 (array!23746 (store (arr!11319 _keys!709) i!563 k!794) (size!11671 _keys!709)))))

(declare-fun mapIsEmpty!16518 () Bool)

(declare-fun mapRes!16518 () Bool)

(assert (=> mapIsEmpty!16518 mapRes!16518))

(declare-fun b!397689 () Bool)

(declare-fun e!240457 () Bool)

(declare-fun e!240452 () Bool)

(assert (=> b!397689 (= e!240457 (and e!240452 mapRes!16518))))

(declare-fun condMapEmpty!16518 () Bool)

(declare-datatypes ((V!14347 0))(
  ( (V!14348 (val!5010 Int)) )
))
(declare-datatypes ((ValueCell!4622 0))(
  ( (ValueCellFull!4622 (v!7253 V!14347)) (EmptyCell!4622) )
))
(declare-datatypes ((array!23747 0))(
  ( (array!23748 (arr!11320 (Array (_ BitVec 32) ValueCell!4622)) (size!11672 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23747)

(declare-fun mapDefault!16518 () ValueCell!4622)

