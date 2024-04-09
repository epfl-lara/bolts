; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108054 () Bool)

(assert start!108054)

(declare-fun mapIsEmpty!51464 () Bool)

(declare-fun mapRes!51464 () Bool)

(assert (=> mapIsEmpty!51464 mapRes!51464))

(declare-fun b!1275758 () Bool)

(declare-fun e!728410 () Bool)

(declare-fun tp_is_empty!33291 () Bool)

(assert (=> b!1275758 (= e!728410 tp_is_empty!33291)))

(declare-fun mapNonEmpty!51464 () Bool)

(declare-fun tp!98223 () Bool)

(declare-fun e!728411 () Bool)

(assert (=> mapNonEmpty!51464 (= mapRes!51464 (and tp!98223 e!728411))))

(declare-datatypes ((V!49491 0))(
  ( (V!49492 (val!16720 Int)) )
))
(declare-datatypes ((ValueCell!15747 0))(
  ( (ValueCellFull!15747 (v!19315 V!49491)) (EmptyCell!15747) )
))
(declare-fun mapValue!51464 () ValueCell!15747)

(declare-fun mapRest!51464 () (Array (_ BitVec 32) ValueCell!15747))

(declare-fun mapKey!51464 () (_ BitVec 32))

(declare-datatypes ((array!83633 0))(
  ( (array!83634 (arr!40324 (Array (_ BitVec 32) ValueCell!15747)) (size!40875 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83633)

(assert (=> mapNonEmpty!51464 (= (arr!40324 _values!1187) (store mapRest!51464 mapKey!51464 mapValue!51464))))

(declare-fun b!1275759 () Bool)

(declare-fun e!728414 () Bool)

(assert (=> b!1275759 (= e!728414 false)))

(declare-fun lt!575340 () Bool)

(declare-datatypes ((array!83635 0))(
  ( (array!83636 (arr!40325 (Array (_ BitVec 32) (_ BitVec 64))) (size!40876 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83635)

(declare-datatypes ((List!28787 0))(
  ( (Nil!28784) (Cons!28783 (h!29992 (_ BitVec 64)) (t!42330 List!28787)) )
))
(declare-fun arrayNoDuplicates!0 (array!83635 (_ BitVec 32) List!28787) Bool)

(assert (=> b!1275759 (= lt!575340 (arrayNoDuplicates!0 _keys!1427 #b00000000000000000000000000000000 Nil!28784))))

(declare-fun res!847995 () Bool)

(assert (=> start!108054 (=> (not res!847995) (not e!728414))))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108054 (= res!847995 (validMask!0 mask!1805))))

(assert (=> start!108054 e!728414))

(assert (=> start!108054 true))

(declare-fun e!728412 () Bool)

(declare-fun array_inv!30601 (array!83633) Bool)

(assert (=> start!108054 (and (array_inv!30601 _values!1187) e!728412)))

(declare-fun array_inv!30602 (array!83635) Bool)

(assert (=> start!108054 (array_inv!30602 _keys!1427)))

(declare-fun b!1275760 () Bool)

(assert (=> b!1275760 (= e!728411 tp_is_empty!33291)))

(declare-fun b!1275761 () Bool)

(declare-fun res!847994 () Bool)

(assert (=> b!1275761 (=> (not res!847994) (not e!728414))))

(declare-fun extraKeys!1108 () (_ BitVec 32))

(assert (=> b!1275761 (= res!847994 (and (= (size!40875 _values!1187) (bvadd #b00000000000000000000000000000001 mask!1805)) (= (size!40876 _keys!1427) (size!40875 _values!1187)) (bvsge mask!1805 #b00000000000000000000000000000000) (bvsge extraKeys!1108 #b00000000000000000000000000000000) (bvsle extraKeys!1108 #b00000000000000000000000000000011)))))

(declare-fun b!1275762 () Bool)

(declare-fun res!847993 () Bool)

(assert (=> b!1275762 (=> (not res!847993) (not e!728414))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83635 (_ BitVec 32)) Bool)

(assert (=> b!1275762 (= res!847993 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1427 mask!1805))))

(declare-fun b!1275763 () Bool)

(assert (=> b!1275763 (= e!728412 (and e!728410 mapRes!51464))))

(declare-fun condMapEmpty!51464 () Bool)

(declare-fun mapDefault!51464 () ValueCell!15747)

(assert (=> b!1275763 (= condMapEmpty!51464 (= (arr!40324 _values!1187) ((as const (Array (_ BitVec 32) ValueCell!15747)) mapDefault!51464)))))

(assert (= (and start!108054 res!847995) b!1275761))

(assert (= (and b!1275761 res!847994) b!1275762))

(assert (= (and b!1275762 res!847993) b!1275759))

(assert (= (and b!1275763 condMapEmpty!51464) mapIsEmpty!51464))

(assert (= (and b!1275763 (not condMapEmpty!51464)) mapNonEmpty!51464))

(get-info :version)

(assert (= (and mapNonEmpty!51464 ((_ is ValueCellFull!15747) mapValue!51464)) b!1275760))

(assert (= (and b!1275763 ((_ is ValueCellFull!15747) mapDefault!51464)) b!1275758))

(assert (= start!108054 b!1275763))

(declare-fun m!1171901 () Bool)

(assert (=> mapNonEmpty!51464 m!1171901))

(declare-fun m!1171903 () Bool)

(assert (=> b!1275759 m!1171903))

(declare-fun m!1171905 () Bool)

(assert (=> start!108054 m!1171905))

(declare-fun m!1171907 () Bool)

(assert (=> start!108054 m!1171907))

(declare-fun m!1171909 () Bool)

(assert (=> start!108054 m!1171909))

(declare-fun m!1171911 () Bool)

(assert (=> b!1275762 m!1171911))

(check-sat (not b!1275762) (not mapNonEmpty!51464) (not start!108054) (not b!1275759) tp_is_empty!33291)
(check-sat)
