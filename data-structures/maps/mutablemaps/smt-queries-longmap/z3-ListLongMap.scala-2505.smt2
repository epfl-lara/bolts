; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38858 () Bool)

(assert start!38858)

(declare-fun b!405572 () Bool)

(declare-fun e!243818 () Bool)

(declare-fun e!243820 () Bool)

(assert (=> b!405572 (= e!243818 e!243820)))

(declare-fun res!234214 () Bool)

(assert (=> b!405572 (=> (not res!234214) (not e!243820))))

(declare-datatypes ((array!24395 0))(
  ( (array!24396 (arr!11644 (Array (_ BitVec 32) (_ BitVec 64))) (size!11996 (_ BitVec 32))) )
))
(declare-fun lt!188349 () array!24395)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24395 (_ BitVec 32)) Bool)

(assert (=> b!405572 (= res!234214 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188349 mask!1025))))

(declare-fun _keys!709 () array!24395)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!405572 (= lt!188349 (array!24396 (store (arr!11644 _keys!709) i!563 k0!794) (size!11996 _keys!709)))))

(declare-fun b!405573 () Bool)

(declare-fun res!234215 () Bool)

(assert (=> b!405573 (=> (not res!234215) (not e!243818))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!405573 (= res!234215 (validKeyInArray!0 k0!794))))

(declare-fun b!405574 () Bool)

(declare-fun e!243819 () Bool)

(declare-fun e!243823 () Bool)

(declare-fun mapRes!17025 () Bool)

(assert (=> b!405574 (= e!243819 (and e!243823 mapRes!17025))))

(declare-fun condMapEmpty!17025 () Bool)

(declare-datatypes ((V!14797 0))(
  ( (V!14798 (val!5179 Int)) )
))
(declare-datatypes ((ValueCell!4791 0))(
  ( (ValueCellFull!4791 (v!7422 V!14797)) (EmptyCell!4791) )
))
(declare-datatypes ((array!24397 0))(
  ( (array!24398 (arr!11645 (Array (_ BitVec 32) ValueCell!4791)) (size!11997 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24397)

(declare-fun mapDefault!17025 () ValueCell!4791)

(assert (=> b!405574 (= condMapEmpty!17025 (= (arr!11645 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4791)) mapDefault!17025)))))

(declare-fun mapIsEmpty!17025 () Bool)

(assert (=> mapIsEmpty!17025 mapRes!17025))

(declare-fun b!405575 () Bool)

(declare-fun res!234219 () Bool)

(assert (=> b!405575 (=> (not res!234219) (not e!243818))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!405575 (= res!234219 (and (= (size!11997 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11996 _keys!709) (size!11997 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!405576 () Bool)

(assert (=> b!405576 (= e!243820 false)))

(declare-fun lt!188348 () Bool)

(declare-datatypes ((List!6747 0))(
  ( (Nil!6744) (Cons!6743 (h!7599 (_ BitVec 64)) (t!11929 List!6747)) )
))
(declare-fun arrayNoDuplicates!0 (array!24395 (_ BitVec 32) List!6747) Bool)

(assert (=> b!405576 (= lt!188348 (arrayNoDuplicates!0 lt!188349 #b00000000000000000000000000000000 Nil!6744))))

(declare-fun mapNonEmpty!17025 () Bool)

(declare-fun tp!33144 () Bool)

(declare-fun e!243821 () Bool)

(assert (=> mapNonEmpty!17025 (= mapRes!17025 (and tp!33144 e!243821))))

(declare-fun mapKey!17025 () (_ BitVec 32))

(declare-fun mapRest!17025 () (Array (_ BitVec 32) ValueCell!4791))

(declare-fun mapValue!17025 () ValueCell!4791)

(assert (=> mapNonEmpty!17025 (= (arr!11645 _values!549) (store mapRest!17025 mapKey!17025 mapValue!17025))))

(declare-fun b!405577 () Bool)

(declare-fun tp_is_empty!10269 () Bool)

(assert (=> b!405577 (= e!243821 tp_is_empty!10269)))

(declare-fun b!405578 () Bool)

(assert (=> b!405578 (= e!243823 tp_is_empty!10269)))

(declare-fun b!405580 () Bool)

(declare-fun res!234220 () Bool)

(assert (=> b!405580 (=> (not res!234220) (not e!243818))))

(assert (=> b!405580 (= res!234220 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11996 _keys!709))))))

(declare-fun b!405581 () Bool)

(declare-fun res!234217 () Bool)

(assert (=> b!405581 (=> (not res!234217) (not e!243818))))

(assert (=> b!405581 (= res!234217 (or (= (select (arr!11644 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11644 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!405582 () Bool)

(declare-fun res!234218 () Bool)

(assert (=> b!405582 (=> (not res!234218) (not e!243818))))

(assert (=> b!405582 (= res!234218 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6744))))

(declare-fun b!405583 () Bool)

(declare-fun res!234221 () Bool)

(assert (=> b!405583 (=> (not res!234221) (not e!243818))))

(assert (=> b!405583 (= res!234221 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!405584 () Bool)

(declare-fun res!234216 () Bool)

(assert (=> b!405584 (=> (not res!234216) (not e!243818))))

(declare-fun arrayContainsKey!0 (array!24395 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!405584 (= res!234216 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun res!234213 () Bool)

(assert (=> start!38858 (=> (not res!234213) (not e!243818))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38858 (= res!234213 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11996 _keys!709))))))

(assert (=> start!38858 e!243818))

(assert (=> start!38858 true))

(declare-fun array_inv!8508 (array!24397) Bool)

(assert (=> start!38858 (and (array_inv!8508 _values!549) e!243819)))

(declare-fun array_inv!8509 (array!24395) Bool)

(assert (=> start!38858 (array_inv!8509 _keys!709)))

(declare-fun b!405579 () Bool)

(declare-fun res!234222 () Bool)

(assert (=> b!405579 (=> (not res!234222) (not e!243818))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!405579 (= res!234222 (validMask!0 mask!1025))))

(assert (= (and start!38858 res!234213) b!405579))

(assert (= (and b!405579 res!234222) b!405575))

(assert (= (and b!405575 res!234219) b!405583))

(assert (= (and b!405583 res!234221) b!405582))

(assert (= (and b!405582 res!234218) b!405580))

(assert (= (and b!405580 res!234220) b!405573))

(assert (= (and b!405573 res!234215) b!405581))

(assert (= (and b!405581 res!234217) b!405584))

(assert (= (and b!405584 res!234216) b!405572))

(assert (= (and b!405572 res!234214) b!405576))

(assert (= (and b!405574 condMapEmpty!17025) mapIsEmpty!17025))

(assert (= (and b!405574 (not condMapEmpty!17025)) mapNonEmpty!17025))

(get-info :version)

(assert (= (and mapNonEmpty!17025 ((_ is ValueCellFull!4791) mapValue!17025)) b!405577))

(assert (= (and b!405574 ((_ is ValueCellFull!4791) mapDefault!17025)) b!405578))

(assert (= start!38858 b!405574))

(declare-fun m!397941 () Bool)

(assert (=> b!405573 m!397941))

(declare-fun m!397943 () Bool)

(assert (=> b!405584 m!397943))

(declare-fun m!397945 () Bool)

(assert (=> mapNonEmpty!17025 m!397945))

(declare-fun m!397947 () Bool)

(assert (=> b!405576 m!397947))

(declare-fun m!397949 () Bool)

(assert (=> b!405582 m!397949))

(declare-fun m!397951 () Bool)

(assert (=> start!38858 m!397951))

(declare-fun m!397953 () Bool)

(assert (=> start!38858 m!397953))

(declare-fun m!397955 () Bool)

(assert (=> b!405583 m!397955))

(declare-fun m!397957 () Bool)

(assert (=> b!405572 m!397957))

(declare-fun m!397959 () Bool)

(assert (=> b!405572 m!397959))

(declare-fun m!397961 () Bool)

(assert (=> b!405579 m!397961))

(declare-fun m!397963 () Bool)

(assert (=> b!405581 m!397963))

(check-sat (not b!405582) (not b!405579) (not mapNonEmpty!17025) (not b!405584) (not b!405573) tp_is_empty!10269 (not b!405572) (not b!405583) (not start!38858) (not b!405576))
(check-sat)
