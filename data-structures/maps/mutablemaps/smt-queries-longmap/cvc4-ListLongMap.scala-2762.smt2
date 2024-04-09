; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40436 () Bool)

(assert start!40436)

(declare-fun b!444497 () Bool)

(declare-fun res!263690 () Bool)

(declare-fun e!261386 () Bool)

(assert (=> b!444497 (=> (not res!263690) (not e!261386))))

(declare-datatypes ((array!27397 0))(
  ( (array!27398 (arr!13143 (Array (_ BitVec 32) (_ BitVec 64))) (size!13495 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27397)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16855 0))(
  ( (V!16856 (val!5951 Int)) )
))
(declare-datatypes ((ValueCell!5563 0))(
  ( (ValueCellFull!5563 (v!8198 V!16855)) (EmptyCell!5563) )
))
(declare-datatypes ((array!27399 0))(
  ( (array!27400 (arr!13144 (Array (_ BitVec 32) ValueCell!5563)) (size!13496 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27399)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!444497 (= res!263690 (and (= (size!13496 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13495 _keys!709) (size!13496 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!444498 () Bool)

(declare-fun res!263691 () Bool)

(assert (=> b!444498 (=> (not res!263691) (not e!261386))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!27397 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!444498 (= res!263691 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!19347 () Bool)

(declare-fun mapRes!19347 () Bool)

(assert (=> mapIsEmpty!19347 mapRes!19347))

(declare-fun b!444499 () Bool)

(declare-fun res!263695 () Bool)

(assert (=> b!444499 (=> (not res!263695) (not e!261386))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27397 (_ BitVec 32)) Bool)

(assert (=> b!444499 (= res!263695 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!444500 () Bool)

(declare-fun e!261383 () Bool)

(assert (=> b!444500 (= e!261386 e!261383)))

(declare-fun res!263694 () Bool)

(assert (=> b!444500 (=> (not res!263694) (not e!261383))))

(declare-fun lt!203493 () array!27397)

(assert (=> b!444500 (= res!263694 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203493 mask!1025))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!444500 (= lt!203493 (array!27398 (store (arr!13143 _keys!709) i!563 k!794) (size!13495 _keys!709)))))

(declare-fun b!444501 () Bool)

(declare-fun e!261384 () Bool)

(declare-fun tp_is_empty!11813 () Bool)

(assert (=> b!444501 (= e!261384 tp_is_empty!11813)))

(declare-fun b!444502 () Bool)

(assert (=> b!444502 (= e!261383 false)))

(declare-fun lt!203492 () Bool)

(declare-datatypes ((List!7847 0))(
  ( (Nil!7844) (Cons!7843 (h!8699 (_ BitVec 64)) (t!13613 List!7847)) )
))
(declare-fun arrayNoDuplicates!0 (array!27397 (_ BitVec 32) List!7847) Bool)

(assert (=> b!444502 (= lt!203492 (arrayNoDuplicates!0 lt!203493 #b00000000000000000000000000000000 Nil!7844))))

(declare-fun b!444504 () Bool)

(declare-fun e!261387 () Bool)

(assert (=> b!444504 (= e!261387 tp_is_empty!11813)))

(declare-fun b!444505 () Bool)

(declare-fun res!263688 () Bool)

(assert (=> b!444505 (=> (not res!263688) (not e!261386))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!444505 (= res!263688 (validMask!0 mask!1025))))

(declare-fun mapNonEmpty!19347 () Bool)

(declare-fun tp!37329 () Bool)

(assert (=> mapNonEmpty!19347 (= mapRes!19347 (and tp!37329 e!261384))))

(declare-fun mapRest!19347 () (Array (_ BitVec 32) ValueCell!5563))

(declare-fun mapValue!19347 () ValueCell!5563)

(declare-fun mapKey!19347 () (_ BitVec 32))

(assert (=> mapNonEmpty!19347 (= (arr!13144 _values!549) (store mapRest!19347 mapKey!19347 mapValue!19347))))

(declare-fun b!444506 () Bool)

(declare-fun res!263687 () Bool)

(assert (=> b!444506 (=> (not res!263687) (not e!261386))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!444506 (= res!263687 (validKeyInArray!0 k!794))))

(declare-fun b!444507 () Bool)

(declare-fun e!261382 () Bool)

(assert (=> b!444507 (= e!261382 (and e!261387 mapRes!19347))))

(declare-fun condMapEmpty!19347 () Bool)

(declare-fun mapDefault!19347 () ValueCell!5563)

