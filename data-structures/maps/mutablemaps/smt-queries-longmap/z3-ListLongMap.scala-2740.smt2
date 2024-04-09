; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40268 () Bool)

(assert start!40268)

(declare-fun b!441794 () Bool)

(declare-fun res!261713 () Bool)

(declare-fun e!260067 () Bool)

(assert (=> b!441794 (=> (not res!261713) (not e!260067))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!441794 (= res!261713 (validKeyInArray!0 k0!794))))

(declare-fun b!441795 () Bool)

(declare-fun e!260063 () Bool)

(declare-fun e!260066 () Bool)

(declare-fun mapRes!19140 () Bool)

(assert (=> b!441795 (= e!260063 (and e!260066 mapRes!19140))))

(declare-fun condMapEmpty!19140 () Bool)

(declare-datatypes ((V!16677 0))(
  ( (V!16678 (val!5884 Int)) )
))
(declare-datatypes ((ValueCell!5496 0))(
  ( (ValueCellFull!5496 (v!8127 V!16677)) (EmptyCell!5496) )
))
(declare-datatypes ((array!27145 0))(
  ( (array!27146 (arr!13019 (Array (_ BitVec 32) ValueCell!5496)) (size!13371 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27145)

(declare-fun mapDefault!19140 () ValueCell!5496)

(assert (=> b!441795 (= condMapEmpty!19140 (= (arr!13019 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5496)) mapDefault!19140)))))

(declare-fun b!441796 () Bool)

(declare-fun e!260065 () Bool)

(assert (=> b!441796 (= e!260067 e!260065)))

(declare-fun res!261711 () Bool)

(assert (=> b!441796 (=> (not res!261711) (not e!260065))))

(declare-datatypes ((array!27147 0))(
  ( (array!27148 (arr!13020 (Array (_ BitVec 32) (_ BitVec 64))) (size!13372 (_ BitVec 32))) )
))
(declare-fun lt!203018 () array!27147)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27147 (_ BitVec 32)) Bool)

(assert (=> b!441796 (= res!261711 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203018 mask!1025))))

(declare-fun _keys!709 () array!27147)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!441796 (= lt!203018 (array!27148 (store (arr!13020 _keys!709) i!563 k0!794) (size!13372 _keys!709)))))

(declare-fun b!441797 () Bool)

(assert (=> b!441797 (= e!260065 false)))

(declare-fun lt!203019 () Bool)

(declare-datatypes ((List!7795 0))(
  ( (Nil!7792) (Cons!7791 (h!8647 (_ BitVec 64)) (t!13559 List!7795)) )
))
(declare-fun arrayNoDuplicates!0 (array!27147 (_ BitVec 32) List!7795) Bool)

(assert (=> b!441797 (= lt!203019 (arrayNoDuplicates!0 lt!203018 #b00000000000000000000000000000000 Nil!7792))))

(declare-fun b!441798 () Bool)

(declare-fun res!261717 () Bool)

(assert (=> b!441798 (=> (not res!261717) (not e!260067))))

(assert (=> b!441798 (= res!261717 (or (= (select (arr!13020 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13020 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!441799 () Bool)

(declare-fun res!261712 () Bool)

(assert (=> b!441799 (=> (not res!261712) (not e!260067))))

(assert (=> b!441799 (= res!261712 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7792))))

(declare-fun b!441800 () Bool)

(declare-fun res!261710 () Bool)

(assert (=> b!441800 (=> (not res!261710) (not e!260067))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!441800 (= res!261710 (and (= (size!13371 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13372 _keys!709) (size!13371 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!441801 () Bool)

(declare-fun res!261709 () Bool)

(assert (=> b!441801 (=> (not res!261709) (not e!260067))))

(assert (=> b!441801 (= res!261709 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13372 _keys!709))))))

(declare-fun b!441802 () Bool)

(declare-fun res!261715 () Bool)

(assert (=> b!441802 (=> (not res!261715) (not e!260067))))

(assert (=> b!441802 (= res!261715 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!441803 () Bool)

(declare-fun res!261716 () Bool)

(assert (=> b!441803 (=> (not res!261716) (not e!260067))))

(declare-fun arrayContainsKey!0 (array!27147 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!441803 (= res!261716 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!441804 () Bool)

(declare-fun e!260068 () Bool)

(declare-fun tp_is_empty!11679 () Bool)

(assert (=> b!441804 (= e!260068 tp_is_empty!11679)))

(declare-fun b!441805 () Bool)

(declare-fun res!261708 () Bool)

(assert (=> b!441805 (=> (not res!261708) (not e!260067))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!441805 (= res!261708 (validMask!0 mask!1025))))

(declare-fun mapNonEmpty!19140 () Bool)

(declare-fun tp!37104 () Bool)

(assert (=> mapNonEmpty!19140 (= mapRes!19140 (and tp!37104 e!260068))))

(declare-fun mapValue!19140 () ValueCell!5496)

(declare-fun mapRest!19140 () (Array (_ BitVec 32) ValueCell!5496))

(declare-fun mapKey!19140 () (_ BitVec 32))

(assert (=> mapNonEmpty!19140 (= (arr!13019 _values!549) (store mapRest!19140 mapKey!19140 mapValue!19140))))

(declare-fun b!441806 () Bool)

(assert (=> b!441806 (= e!260066 tp_is_empty!11679)))

(declare-fun res!261714 () Bool)

(assert (=> start!40268 (=> (not res!261714) (not e!260067))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40268 (= res!261714 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13372 _keys!709))))))

(assert (=> start!40268 e!260067))

(assert (=> start!40268 true))

(declare-fun array_inv!9438 (array!27145) Bool)

(assert (=> start!40268 (and (array_inv!9438 _values!549) e!260063)))

(declare-fun array_inv!9439 (array!27147) Bool)

(assert (=> start!40268 (array_inv!9439 _keys!709)))

(declare-fun mapIsEmpty!19140 () Bool)

(assert (=> mapIsEmpty!19140 mapRes!19140))

(assert (= (and start!40268 res!261714) b!441805))

(assert (= (and b!441805 res!261708) b!441800))

(assert (= (and b!441800 res!261710) b!441802))

(assert (= (and b!441802 res!261715) b!441799))

(assert (= (and b!441799 res!261712) b!441801))

(assert (= (and b!441801 res!261709) b!441794))

(assert (= (and b!441794 res!261713) b!441798))

(assert (= (and b!441798 res!261717) b!441803))

(assert (= (and b!441803 res!261716) b!441796))

(assert (= (and b!441796 res!261711) b!441797))

(assert (= (and b!441795 condMapEmpty!19140) mapIsEmpty!19140))

(assert (= (and b!441795 (not condMapEmpty!19140)) mapNonEmpty!19140))

(get-info :version)

(assert (= (and mapNonEmpty!19140 ((_ is ValueCellFull!5496) mapValue!19140)) b!441804))

(assert (= (and b!441795 ((_ is ValueCellFull!5496) mapDefault!19140)) b!441806))

(assert (= start!40268 b!441795))

(declare-fun m!428551 () Bool)

(assert (=> b!441797 m!428551))

(declare-fun m!428553 () Bool)

(assert (=> b!441802 m!428553))

(declare-fun m!428555 () Bool)

(assert (=> b!441796 m!428555))

(declare-fun m!428557 () Bool)

(assert (=> b!441796 m!428557))

(declare-fun m!428559 () Bool)

(assert (=> b!441799 m!428559))

(declare-fun m!428561 () Bool)

(assert (=> mapNonEmpty!19140 m!428561))

(declare-fun m!428563 () Bool)

(assert (=> b!441798 m!428563))

(declare-fun m!428565 () Bool)

(assert (=> b!441794 m!428565))

(declare-fun m!428567 () Bool)

(assert (=> start!40268 m!428567))

(declare-fun m!428569 () Bool)

(assert (=> start!40268 m!428569))

(declare-fun m!428571 () Bool)

(assert (=> b!441805 m!428571))

(declare-fun m!428573 () Bool)

(assert (=> b!441803 m!428573))

(check-sat (not b!441794) (not mapNonEmpty!19140) tp_is_empty!11679 (not b!441802) (not b!441797) (not start!40268) (not b!441803) (not b!441796) (not b!441805) (not b!441799))
(check-sat)
