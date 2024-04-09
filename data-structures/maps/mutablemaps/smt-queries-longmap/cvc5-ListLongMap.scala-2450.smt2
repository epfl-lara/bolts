; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38526 () Bool)

(assert start!38526)

(declare-fun b!397802 () Bool)

(declare-fun res!228594 () Bool)

(declare-fun e!240511 () Bool)

(assert (=> b!397802 (=> (not res!228594) (not e!240511))))

(declare-datatypes ((array!23757 0))(
  ( (array!23758 (arr!11325 (Array (_ BitVec 32) (_ BitVec 64))) (size!11677 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23757)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!23757 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!397802 (= res!228594 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!397803 () Bool)

(declare-fun res!228592 () Bool)

(assert (=> b!397803 (=> (not res!228592) (not e!240511))))

(declare-datatypes ((List!6523 0))(
  ( (Nil!6520) (Cons!6519 (h!7375 (_ BitVec 64)) (t!11705 List!6523)) )
))
(declare-fun arrayNoDuplicates!0 (array!23757 (_ BitVec 32) List!6523) Bool)

(assert (=> b!397803 (= res!228592 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6520))))

(declare-fun b!397804 () Bool)

(declare-fun e!240506 () Bool)

(declare-fun tp_is_empty!9937 () Bool)

(assert (=> b!397804 (= e!240506 tp_is_empty!9937)))

(declare-fun b!397806 () Bool)

(declare-fun e!240510 () Bool)

(assert (=> b!397806 (= e!240511 e!240510)))

(declare-fun res!228590 () Bool)

(assert (=> b!397806 (=> (not res!228590) (not e!240510))))

(declare-fun lt!187352 () array!23757)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23757 (_ BitVec 32)) Bool)

(assert (=> b!397806 (= res!228590 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187352 mask!1025))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!397806 (= lt!187352 (array!23758 (store (arr!11325 _keys!709) i!563 k!794) (size!11677 _keys!709)))))

(declare-fun b!397807 () Bool)

(declare-fun res!228591 () Bool)

(assert (=> b!397807 (=> (not res!228591) (not e!240511))))

(assert (=> b!397807 (= res!228591 (or (= (select (arr!11325 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11325 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!16527 () Bool)

(declare-fun mapRes!16527 () Bool)

(declare-fun tp!32322 () Bool)

(declare-fun e!240508 () Bool)

(assert (=> mapNonEmpty!16527 (= mapRes!16527 (and tp!32322 e!240508))))

(declare-datatypes ((V!14355 0))(
  ( (V!14356 (val!5013 Int)) )
))
(declare-datatypes ((ValueCell!4625 0))(
  ( (ValueCellFull!4625 (v!7256 V!14355)) (EmptyCell!4625) )
))
(declare-datatypes ((array!23759 0))(
  ( (array!23760 (arr!11326 (Array (_ BitVec 32) ValueCell!4625)) (size!11678 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23759)

(declare-fun mapRest!16527 () (Array (_ BitVec 32) ValueCell!4625))

(declare-fun mapKey!16527 () (_ BitVec 32))

(declare-fun mapValue!16527 () ValueCell!4625)

(assert (=> mapNonEmpty!16527 (= (arr!11326 _values!549) (store mapRest!16527 mapKey!16527 mapValue!16527))))

(declare-fun b!397808 () Bool)

(declare-fun res!228588 () Bool)

(assert (=> b!397808 (=> (not res!228588) (not e!240511))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!397808 (= res!228588 (and (= (size!11678 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11677 _keys!709) (size!11678 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!397809 () Bool)

(declare-fun res!228585 () Bool)

(assert (=> b!397809 (=> (not res!228585) (not e!240511))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!397809 (= res!228585 (validKeyInArray!0 k!794))))

(declare-fun b!397810 () Bool)

(assert (=> b!397810 (= e!240510 false)))

(declare-fun lt!187353 () Bool)

(assert (=> b!397810 (= lt!187353 (arrayNoDuplicates!0 lt!187352 #b00000000000000000000000000000000 Nil!6520))))

(declare-fun mapIsEmpty!16527 () Bool)

(assert (=> mapIsEmpty!16527 mapRes!16527))

(declare-fun res!228593 () Bool)

(assert (=> start!38526 (=> (not res!228593) (not e!240511))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38526 (= res!228593 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11677 _keys!709))))))

(assert (=> start!38526 e!240511))

(assert (=> start!38526 true))

(declare-fun e!240509 () Bool)

(declare-fun array_inv!8292 (array!23759) Bool)

(assert (=> start!38526 (and (array_inv!8292 _values!549) e!240509)))

(declare-fun array_inv!8293 (array!23757) Bool)

(assert (=> start!38526 (array_inv!8293 _keys!709)))

(declare-fun b!397805 () Bool)

(declare-fun res!228586 () Bool)

(assert (=> b!397805 (=> (not res!228586) (not e!240511))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!397805 (= res!228586 (validMask!0 mask!1025))))

(declare-fun b!397811 () Bool)

(declare-fun res!228589 () Bool)

(assert (=> b!397811 (=> (not res!228589) (not e!240511))))

(assert (=> b!397811 (= res!228589 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11677 _keys!709))))))

(declare-fun b!397812 () Bool)

(assert (=> b!397812 (= e!240509 (and e!240506 mapRes!16527))))

(declare-fun condMapEmpty!16527 () Bool)

(declare-fun mapDefault!16527 () ValueCell!4625)

