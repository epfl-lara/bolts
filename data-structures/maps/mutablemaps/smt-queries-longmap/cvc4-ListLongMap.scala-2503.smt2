; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38848 () Bool)

(assert start!38848)

(declare-fun res!234064 () Bool)

(declare-fun e!243729 () Bool)

(assert (=> start!38848 (=> (not res!234064) (not e!243729))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!24377 0))(
  ( (array!24378 (arr!11635 (Array (_ BitVec 32) (_ BitVec 64))) (size!11987 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24377)

(assert (=> start!38848 (= res!234064 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11987 _keys!709))))))

(assert (=> start!38848 e!243729))

(assert (=> start!38848 true))

(declare-datatypes ((V!14783 0))(
  ( (V!14784 (val!5174 Int)) )
))
(declare-datatypes ((ValueCell!4786 0))(
  ( (ValueCellFull!4786 (v!7417 V!14783)) (EmptyCell!4786) )
))
(declare-datatypes ((array!24379 0))(
  ( (array!24380 (arr!11636 (Array (_ BitVec 32) ValueCell!4786)) (size!11988 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24379)

(declare-fun e!243732 () Bool)

(declare-fun array_inv!8500 (array!24379) Bool)

(assert (=> start!38848 (and (array_inv!8500 _values!549) e!243732)))

(declare-fun array_inv!8501 (array!24377) Bool)

(assert (=> start!38848 (array_inv!8501 _keys!709)))

(declare-fun mapNonEmpty!17010 () Bool)

(declare-fun mapRes!17010 () Bool)

(declare-fun tp!33129 () Bool)

(declare-fun e!243733 () Bool)

(assert (=> mapNonEmpty!17010 (= mapRes!17010 (and tp!33129 e!243733))))

(declare-fun mapValue!17010 () ValueCell!4786)

(declare-fun mapRest!17010 () (Array (_ BitVec 32) ValueCell!4786))

(declare-fun mapKey!17010 () (_ BitVec 32))

(assert (=> mapNonEmpty!17010 (= (arr!11636 _values!549) (store mapRest!17010 mapKey!17010 mapValue!17010))))

(declare-fun b!405377 () Bool)

(declare-fun res!234065 () Bool)

(assert (=> b!405377 (=> (not res!234065) (not e!243729))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!24377 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!405377 (= res!234065 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!405378 () Bool)

(declare-fun res!234067 () Bool)

(assert (=> b!405378 (=> (not res!234067) (not e!243729))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!405378 (= res!234067 (and (= (size!11988 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11987 _keys!709) (size!11988 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!17010 () Bool)

(assert (=> mapIsEmpty!17010 mapRes!17010))

(declare-fun b!405379 () Bool)

(declare-fun res!234066 () Bool)

(assert (=> b!405379 (=> (not res!234066) (not e!243729))))

(declare-datatypes ((List!6743 0))(
  ( (Nil!6740) (Cons!6739 (h!7595 (_ BitVec 64)) (t!11925 List!6743)) )
))
(declare-fun arrayNoDuplicates!0 (array!24377 (_ BitVec 32) List!6743) Bool)

(assert (=> b!405379 (= res!234066 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6740))))

(declare-fun b!405380 () Bool)

(declare-fun res!234069 () Bool)

(assert (=> b!405380 (=> (not res!234069) (not e!243729))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!405380 (= res!234069 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11987 _keys!709))))))

(declare-fun b!405381 () Bool)

(declare-fun tp_is_empty!10259 () Bool)

(assert (=> b!405381 (= e!243733 tp_is_empty!10259)))

(declare-fun b!405382 () Bool)

(declare-fun res!234072 () Bool)

(assert (=> b!405382 (=> (not res!234072) (not e!243729))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!405382 (= res!234072 (validMask!0 mask!1025))))

(declare-fun b!405383 () Bool)

(declare-fun e!243731 () Bool)

(assert (=> b!405383 (= e!243731 tp_is_empty!10259)))

(declare-fun b!405384 () Bool)

(declare-fun res!234063 () Bool)

(assert (=> b!405384 (=> (not res!234063) (not e!243729))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!405384 (= res!234063 (validKeyInArray!0 k!794))))

(declare-fun b!405385 () Bool)

(declare-fun e!243728 () Bool)

(assert (=> b!405385 (= e!243728 false)))

(declare-fun lt!188318 () Bool)

(declare-fun lt!188319 () array!24377)

(assert (=> b!405385 (= lt!188318 (arrayNoDuplicates!0 lt!188319 #b00000000000000000000000000000000 Nil!6740))))

(declare-fun b!405386 () Bool)

(assert (=> b!405386 (= e!243729 e!243728)))

(declare-fun res!234068 () Bool)

(assert (=> b!405386 (=> (not res!234068) (not e!243728))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24377 (_ BitVec 32)) Bool)

(assert (=> b!405386 (= res!234068 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188319 mask!1025))))

(assert (=> b!405386 (= lt!188319 (array!24378 (store (arr!11635 _keys!709) i!563 k!794) (size!11987 _keys!709)))))

(declare-fun b!405387 () Bool)

(declare-fun res!234070 () Bool)

(assert (=> b!405387 (=> (not res!234070) (not e!243729))))

(assert (=> b!405387 (= res!234070 (or (= (select (arr!11635 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11635 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!405388 () Bool)

(assert (=> b!405388 (= e!243732 (and e!243731 mapRes!17010))))

(declare-fun condMapEmpty!17010 () Bool)

(declare-fun mapDefault!17010 () ValueCell!4786)

