; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35454 () Bool)

(assert start!35454)

(declare-fun b_free!7833 () Bool)

(declare-fun b_next!7833 () Bool)

(assert (=> start!35454 (= b_free!7833 (not b_next!7833))))

(declare-fun tp!27285 () Bool)

(declare-fun b_and!15093 () Bool)

(assert (=> start!35454 (= tp!27285 b_and!15093)))

(declare-fun b!354789 () Bool)

(declare-fun res!196813 () Bool)

(declare-fun e!217426 () Bool)

(assert (=> b!354789 (=> (not res!196813) (not e!217426))))

(declare-fun from!1805 () (_ BitVec 32))

(declare-datatypes ((array!19345 0))(
  ( (array!19346 (arr!9163 (Array (_ BitVec 32) (_ BitVec 64))) (size!9515 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19345)

(assert (=> b!354789 (= res!196813 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9515 _keys!1456))))))

(declare-fun b!354790 () Bool)

(declare-fun res!196811 () Bool)

(assert (=> b!354790 (=> (not res!196811) (not e!217426))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19345 (_ BitVec 32)) Bool)

(assert (=> b!354790 (= res!196811 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!354791 () Bool)

(declare-fun e!217430 () Bool)

(declare-fun tp_is_empty!7899 () Bool)

(assert (=> b!354791 (= e!217430 tp_is_empty!7899)))

(declare-fun b!354792 () Bool)

(declare-fun res!196812 () Bool)

(assert (=> b!354792 (=> (not res!196812) (not e!217426))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!354792 (= res!196812 (validKeyInArray!0 (select (arr!9163 _keys!1456) from!1805)))))

(declare-fun b!354793 () Bool)

(assert (=> b!354793 (= e!217426 (not true))))

(declare-datatypes ((V!11509 0))(
  ( (V!11510 (val!3994 Int)) )
))
(declare-fun minValue!1150 () V!11509)

(declare-fun defaultEntry!1216 () Int)

(declare-datatypes ((ValueCell!3606 0))(
  ( (ValueCellFull!3606 (v!6184 V!11509)) (EmptyCell!3606) )
))
(declare-datatypes ((array!19347 0))(
  ( (array!19348 (arr!9164 (Array (_ BitVec 32) ValueCell!3606)) (size!9516 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19347)

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun zeroValue!1150 () V!11509)

(declare-datatypes ((tuple2!5670 0))(
  ( (tuple2!5671 (_1!2845 (_ BitVec 64)) (_2!2845 V!11509)) )
))
(declare-datatypes ((List!5335 0))(
  ( (Nil!5332) (Cons!5331 (h!6187 tuple2!5670) (t!10493 List!5335)) )
))
(declare-datatypes ((ListLongMap!4597 0))(
  ( (ListLongMap!4598 (toList!2314 List!5335)) )
))
(declare-fun contains!2390 (ListLongMap!4597 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1831 (array!19345 array!19347 (_ BitVec 32) (_ BitVec 32) V!11509 V!11509 (_ BitVec 32) Int) ListLongMap!4597)

(assert (=> b!354793 (contains!2390 (getCurrentListMap!1831 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 #b00000000000000000000000000000000 defaultEntry!1216) (select (arr!9163 _keys!1456) from!1805))))

(declare-datatypes ((Unit!10937 0))(
  ( (Unit!10938) )
))
(declare-fun lt!165724 () Unit!10937)

(declare-fun lemmaValidKeyInArrayIsInListMap!181 (array!19345 array!19347 (_ BitVec 32) (_ BitVec 32) V!11509 V!11509 (_ BitVec 32) Int) Unit!10937)

(assert (=> b!354793 (= lt!165724 (lemmaValidKeyInArrayIsInListMap!181 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 from!1805 defaultEntry!1216))))

(declare-fun b!354794 () Bool)

(declare-fun res!196807 () Bool)

(assert (=> b!354794 (=> (not res!196807) (not e!217426))))

(declare-fun k0!1077 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!19345 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!354794 (= res!196807 (arrayContainsKey!0 _keys!1456 k0!1077 from!1805))))

(declare-fun res!196808 () Bool)

(assert (=> start!35454 (=> (not res!196808) (not e!217426))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35454 (= res!196808 (validMask!0 mask!1842))))

(assert (=> start!35454 e!217426))

(assert (=> start!35454 tp_is_empty!7899))

(assert (=> start!35454 true))

(assert (=> start!35454 tp!27285))

(declare-fun array_inv!6744 (array!19345) Bool)

(assert (=> start!35454 (array_inv!6744 _keys!1456)))

(declare-fun e!217428 () Bool)

(declare-fun array_inv!6745 (array!19347) Bool)

(assert (=> start!35454 (and (array_inv!6745 _values!1208) e!217428)))

(declare-fun b!354795 () Bool)

(declare-fun res!196805 () Bool)

(assert (=> b!354795 (=> (not res!196805) (not e!217426))))

(assert (=> b!354795 (= res!196805 (validKeyInArray!0 k0!1077))))

(declare-fun b!354796 () Bool)

(declare-fun e!217427 () Bool)

(declare-fun mapRes!13356 () Bool)

(assert (=> b!354796 (= e!217428 (and e!217427 mapRes!13356))))

(declare-fun condMapEmpty!13356 () Bool)

(declare-fun mapDefault!13356 () ValueCell!3606)

(assert (=> b!354796 (= condMapEmpty!13356 (= (arr!9164 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3606)) mapDefault!13356)))))

(declare-fun mapNonEmpty!13356 () Bool)

(declare-fun tp!27284 () Bool)

(assert (=> mapNonEmpty!13356 (= mapRes!13356 (and tp!27284 e!217430))))

(declare-fun mapRest!13356 () (Array (_ BitVec 32) ValueCell!3606))

(declare-fun mapValue!13356 () ValueCell!3606)

(declare-fun mapKey!13356 () (_ BitVec 32))

(assert (=> mapNonEmpty!13356 (= (arr!9164 _values!1208) (store mapRest!13356 mapKey!13356 mapValue!13356))))

(declare-fun b!354797 () Bool)

(declare-fun res!196809 () Bool)

(assert (=> b!354797 (=> (not res!196809) (not e!217426))))

(assert (=> b!354797 (= res!196809 (and (= (size!9516 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9515 _keys!1456) (size!9516 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!354798 () Bool)

(declare-fun res!196806 () Bool)

(assert (=> b!354798 (=> (not res!196806) (not e!217426))))

(declare-datatypes ((List!5336 0))(
  ( (Nil!5333) (Cons!5332 (h!6188 (_ BitVec 64)) (t!10494 List!5336)) )
))
(declare-fun arrayNoDuplicates!0 (array!19345 (_ BitVec 32) List!5336) Bool)

(assert (=> b!354798 (= res!196806 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5333))))

(declare-fun b!354799 () Bool)

(assert (=> b!354799 (= e!217427 tp_is_empty!7899)))

(declare-fun mapIsEmpty!13356 () Bool)

(assert (=> mapIsEmpty!13356 mapRes!13356))

(declare-fun b!354800 () Bool)

(declare-fun res!196810 () Bool)

(assert (=> b!354800 (=> (not res!196810) (not e!217426))))

(assert (=> b!354800 (= res!196810 (= (select (arr!9163 _keys!1456) from!1805) k0!1077))))

(assert (= (and start!35454 res!196808) b!354797))

(assert (= (and b!354797 res!196809) b!354790))

(assert (= (and b!354790 res!196811) b!354798))

(assert (= (and b!354798 res!196806) b!354795))

(assert (= (and b!354795 res!196805) b!354789))

(assert (= (and b!354789 res!196813) b!354794))

(assert (= (and b!354794 res!196807) b!354800))

(assert (= (and b!354800 res!196810) b!354792))

(assert (= (and b!354792 res!196812) b!354793))

(assert (= (and b!354796 condMapEmpty!13356) mapIsEmpty!13356))

(assert (= (and b!354796 (not condMapEmpty!13356)) mapNonEmpty!13356))

(get-info :version)

(assert (= (and mapNonEmpty!13356 ((_ is ValueCellFull!3606) mapValue!13356)) b!354791))

(assert (= (and b!354796 ((_ is ValueCellFull!3606) mapDefault!13356)) b!354799))

(assert (= start!35454 b!354796))

(declare-fun m!353675 () Bool)

(assert (=> mapNonEmpty!13356 m!353675))

(declare-fun m!353677 () Bool)

(assert (=> b!354792 m!353677))

(assert (=> b!354792 m!353677))

(declare-fun m!353679 () Bool)

(assert (=> b!354792 m!353679))

(assert (=> b!354800 m!353677))

(declare-fun m!353681 () Bool)

(assert (=> b!354790 m!353681))

(declare-fun m!353683 () Bool)

(assert (=> b!354795 m!353683))

(declare-fun m!353685 () Bool)

(assert (=> b!354794 m!353685))

(declare-fun m!353687 () Bool)

(assert (=> start!35454 m!353687))

(declare-fun m!353689 () Bool)

(assert (=> start!35454 m!353689))

(declare-fun m!353691 () Bool)

(assert (=> start!35454 m!353691))

(declare-fun m!353693 () Bool)

(assert (=> b!354793 m!353693))

(assert (=> b!354793 m!353677))

(assert (=> b!354793 m!353693))

(assert (=> b!354793 m!353677))

(declare-fun m!353695 () Bool)

(assert (=> b!354793 m!353695))

(declare-fun m!353697 () Bool)

(assert (=> b!354793 m!353697))

(declare-fun m!353699 () Bool)

(assert (=> b!354798 m!353699))

(check-sat (not start!35454) (not b_next!7833) (not mapNonEmpty!13356) (not b!354790) (not b!354793) (not b!354794) (not b!354798) b_and!15093 (not b!354792) (not b!354795) tp_is_empty!7899)
(check-sat b_and!15093 (not b_next!7833))
