; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40392 () Bool)

(assert start!40392)

(declare-fun b!443639 () Bool)

(declare-fun e!260991 () Bool)

(declare-fun e!260990 () Bool)

(assert (=> b!443639 (= e!260991 e!260990)))

(declare-fun res!263031 () Bool)

(assert (=> b!443639 (=> (not res!263031) (not e!260990))))

(declare-datatypes ((array!27317 0))(
  ( (array!27318 (arr!13103 (Array (_ BitVec 32) (_ BitVec 64))) (size!13455 (_ BitVec 32))) )
))
(declare-fun lt!203360 () array!27317)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27317 (_ BitVec 32)) Bool)

(assert (=> b!443639 (= res!263031 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203360 mask!1025))))

(declare-fun _keys!709 () array!27317)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!443639 (= lt!203360 (array!27318 (store (arr!13103 _keys!709) i!563 k0!794) (size!13455 _keys!709)))))

(declare-fun b!443640 () Bool)

(declare-fun e!260987 () Bool)

(declare-fun tp_is_empty!11769 () Bool)

(assert (=> b!443640 (= e!260987 tp_is_empty!11769)))

(declare-fun b!443641 () Bool)

(declare-fun res!263035 () Bool)

(assert (=> b!443641 (=> (not res!263035) (not e!260991))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!443641 (= res!263035 (validKeyInArray!0 k0!794))))

(declare-fun b!443642 () Bool)

(declare-fun res!263028 () Bool)

(assert (=> b!443642 (=> (not res!263028) (not e!260991))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!443642 (= res!263028 (validMask!0 mask!1025))))

(declare-fun b!443644 () Bool)

(declare-fun res!263034 () Bool)

(assert (=> b!443644 (=> (not res!263034) (not e!260991))))

(assert (=> b!443644 (= res!263034 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13455 _keys!709))))))

(declare-fun b!443645 () Bool)

(declare-fun res!263032 () Bool)

(assert (=> b!443645 (=> (not res!263032) (not e!260991))))

(assert (=> b!443645 (= res!263032 (or (= (select (arr!13103 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13103 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!443646 () Bool)

(declare-fun res!263029 () Bool)

(assert (=> b!443646 (=> (not res!263029) (not e!260991))))

(assert (=> b!443646 (= res!263029 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapNonEmpty!19281 () Bool)

(declare-fun mapRes!19281 () Bool)

(declare-fun tp!37263 () Bool)

(assert (=> mapNonEmpty!19281 (= mapRes!19281 (and tp!37263 e!260987))))

(declare-datatypes ((V!16797 0))(
  ( (V!16798 (val!5929 Int)) )
))
(declare-datatypes ((ValueCell!5541 0))(
  ( (ValueCellFull!5541 (v!8176 V!16797)) (EmptyCell!5541) )
))
(declare-datatypes ((array!27319 0))(
  ( (array!27320 (arr!13104 (Array (_ BitVec 32) ValueCell!5541)) (size!13456 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27319)

(declare-fun mapRest!19281 () (Array (_ BitVec 32) ValueCell!5541))

(declare-fun mapValue!19281 () ValueCell!5541)

(declare-fun mapKey!19281 () (_ BitVec 32))

(assert (=> mapNonEmpty!19281 (= (arr!13104 _values!549) (store mapRest!19281 mapKey!19281 mapValue!19281))))

(declare-fun b!443647 () Bool)

(declare-fun e!260989 () Bool)

(declare-fun e!260986 () Bool)

(assert (=> b!443647 (= e!260989 (and e!260986 mapRes!19281))))

(declare-fun condMapEmpty!19281 () Bool)

(declare-fun mapDefault!19281 () ValueCell!5541)

(assert (=> b!443647 (= condMapEmpty!19281 (= (arr!13104 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5541)) mapDefault!19281)))))

(declare-fun b!443648 () Bool)

(declare-fun res!263033 () Bool)

(assert (=> b!443648 (=> (not res!263033) (not e!260991))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!443648 (= res!263033 (and (= (size!13456 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13455 _keys!709) (size!13456 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!443649 () Bool)

(declare-fun res!263027 () Bool)

(assert (=> b!443649 (=> (not res!263027) (not e!260991))))

(declare-datatypes ((List!7829 0))(
  ( (Nil!7826) (Cons!7825 (h!8681 (_ BitVec 64)) (t!13595 List!7829)) )
))
(declare-fun arrayNoDuplicates!0 (array!27317 (_ BitVec 32) List!7829) Bool)

(assert (=> b!443649 (= res!263027 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7826))))

(declare-fun mapIsEmpty!19281 () Bool)

(assert (=> mapIsEmpty!19281 mapRes!19281))

(declare-fun b!443643 () Bool)

(assert (=> b!443643 (= e!260986 tp_is_empty!11769)))

(declare-fun res!263026 () Bool)

(assert (=> start!40392 (=> (not res!263026) (not e!260991))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40392 (= res!263026 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13455 _keys!709))))))

(assert (=> start!40392 e!260991))

(assert (=> start!40392 true))

(declare-fun array_inv!9496 (array!27319) Bool)

(assert (=> start!40392 (and (array_inv!9496 _values!549) e!260989)))

(declare-fun array_inv!9497 (array!27317) Bool)

(assert (=> start!40392 (array_inv!9497 _keys!709)))

(declare-fun b!443650 () Bool)

(assert (=> b!443650 (= e!260990 false)))

(declare-fun lt!203361 () Bool)

(assert (=> b!443650 (= lt!203361 (arrayNoDuplicates!0 lt!203360 #b00000000000000000000000000000000 Nil!7826))))

(declare-fun b!443651 () Bool)

(declare-fun res!263030 () Bool)

(assert (=> b!443651 (=> (not res!263030) (not e!260991))))

(declare-fun arrayContainsKey!0 (array!27317 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!443651 (= res!263030 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(assert (= (and start!40392 res!263026) b!443642))

(assert (= (and b!443642 res!263028) b!443648))

(assert (= (and b!443648 res!263033) b!443646))

(assert (= (and b!443646 res!263029) b!443649))

(assert (= (and b!443649 res!263027) b!443644))

(assert (= (and b!443644 res!263034) b!443641))

(assert (= (and b!443641 res!263035) b!443645))

(assert (= (and b!443645 res!263032) b!443651))

(assert (= (and b!443651 res!263030) b!443639))

(assert (= (and b!443639 res!263031) b!443650))

(assert (= (and b!443647 condMapEmpty!19281) mapIsEmpty!19281))

(assert (= (and b!443647 (not condMapEmpty!19281)) mapNonEmpty!19281))

(get-info :version)

(assert (= (and mapNonEmpty!19281 ((_ is ValueCellFull!5541) mapValue!19281)) b!443640))

(assert (= (and b!443647 ((_ is ValueCellFull!5541) mapDefault!19281)) b!443643))

(assert (= start!40392 b!443647))

(declare-fun m!429791 () Bool)

(assert (=> b!443651 m!429791))

(declare-fun m!429793 () Bool)

(assert (=> b!443645 m!429793))

(declare-fun m!429795 () Bool)

(assert (=> b!443642 m!429795))

(declare-fun m!429797 () Bool)

(assert (=> start!40392 m!429797))

(declare-fun m!429799 () Bool)

(assert (=> start!40392 m!429799))

(declare-fun m!429801 () Bool)

(assert (=> b!443649 m!429801))

(declare-fun m!429803 () Bool)

(assert (=> b!443646 m!429803))

(declare-fun m!429805 () Bool)

(assert (=> mapNonEmpty!19281 m!429805))

(declare-fun m!429807 () Bool)

(assert (=> b!443641 m!429807))

(declare-fun m!429809 () Bool)

(assert (=> b!443639 m!429809))

(declare-fun m!429811 () Bool)

(assert (=> b!443639 m!429811))

(declare-fun m!429813 () Bool)

(assert (=> b!443650 m!429813))

(check-sat (not start!40392) (not b!443646) (not b!443641) (not b!443639) (not b!443649) tp_is_empty!11769 (not b!443651) (not mapNonEmpty!19281) (not b!443650) (not b!443642))
(check-sat)
