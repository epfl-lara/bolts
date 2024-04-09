; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108072 () Bool)

(assert start!108072)

(declare-fun b!1275920 () Bool)

(declare-fun e!728547 () Bool)

(assert (=> b!1275920 (= e!728547 false)))

(declare-fun lt!575367 () Bool)

(declare-datatypes ((array!83669 0))(
  ( (array!83670 (arr!40342 (Array (_ BitVec 32) (_ BitVec 64))) (size!40893 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83669)

(declare-datatypes ((List!28792 0))(
  ( (Nil!28789) (Cons!28788 (h!29997 (_ BitVec 64)) (t!42335 List!28792)) )
))
(declare-fun arrayNoDuplicates!0 (array!83669 (_ BitVec 32) List!28792) Bool)

(assert (=> b!1275920 (= lt!575367 (arrayNoDuplicates!0 _keys!1427 #b00000000000000000000000000000000 Nil!28789))))

(declare-fun b!1275921 () Bool)

(declare-fun res!848076 () Bool)

(assert (=> b!1275921 (=> (not res!848076) (not e!728547))))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83669 (_ BitVec 32)) Bool)

(assert (=> b!1275921 (= res!848076 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1427 mask!1805))))

(declare-fun res!848074 () Bool)

(assert (=> start!108072 (=> (not res!848074) (not e!728547))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108072 (= res!848074 (validMask!0 mask!1805))))

(assert (=> start!108072 e!728547))

(assert (=> start!108072 true))

(declare-datatypes ((V!49515 0))(
  ( (V!49516 (val!16729 Int)) )
))
(declare-datatypes ((ValueCell!15756 0))(
  ( (ValueCellFull!15756 (v!19324 V!49515)) (EmptyCell!15756) )
))
(declare-datatypes ((array!83671 0))(
  ( (array!83672 (arr!40343 (Array (_ BitVec 32) ValueCell!15756)) (size!40894 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83671)

(declare-fun e!728548 () Bool)

(declare-fun array_inv!30619 (array!83671) Bool)

(assert (=> start!108072 (and (array_inv!30619 _values!1187) e!728548)))

(declare-fun array_inv!30620 (array!83669) Bool)

(assert (=> start!108072 (array_inv!30620 _keys!1427)))

(declare-fun mapIsEmpty!51491 () Bool)

(declare-fun mapRes!51491 () Bool)

(assert (=> mapIsEmpty!51491 mapRes!51491))

(declare-fun b!1275922 () Bool)

(declare-fun e!728549 () Bool)

(assert (=> b!1275922 (= e!728548 (and e!728549 mapRes!51491))))

(declare-fun condMapEmpty!51491 () Bool)

(declare-fun mapDefault!51491 () ValueCell!15756)

(assert (=> b!1275922 (= condMapEmpty!51491 (= (arr!40343 _values!1187) ((as const (Array (_ BitVec 32) ValueCell!15756)) mapDefault!51491)))))

(declare-fun b!1275923 () Bool)

(declare-fun e!728545 () Bool)

(declare-fun tp_is_empty!33309 () Bool)

(assert (=> b!1275923 (= e!728545 tp_is_empty!33309)))

(declare-fun mapNonEmpty!51491 () Bool)

(declare-fun tp!98250 () Bool)

(assert (=> mapNonEmpty!51491 (= mapRes!51491 (and tp!98250 e!728545))))

(declare-fun mapValue!51491 () ValueCell!15756)

(declare-fun mapKey!51491 () (_ BitVec 32))

(declare-fun mapRest!51491 () (Array (_ BitVec 32) ValueCell!15756))

(assert (=> mapNonEmpty!51491 (= (arr!40343 _values!1187) (store mapRest!51491 mapKey!51491 mapValue!51491))))

(declare-fun b!1275924 () Bool)

(assert (=> b!1275924 (= e!728549 tp_is_empty!33309)))

(declare-fun b!1275925 () Bool)

(declare-fun res!848075 () Bool)

(assert (=> b!1275925 (=> (not res!848075) (not e!728547))))

(declare-fun extraKeys!1108 () (_ BitVec 32))

(assert (=> b!1275925 (= res!848075 (and (= (size!40894 _values!1187) (bvadd #b00000000000000000000000000000001 mask!1805)) (= (size!40893 _keys!1427) (size!40894 _values!1187)) (bvsge mask!1805 #b00000000000000000000000000000000) (bvsge extraKeys!1108 #b00000000000000000000000000000000) (bvsle extraKeys!1108 #b00000000000000000000000000000011)))))

(assert (= (and start!108072 res!848074) b!1275925))

(assert (= (and b!1275925 res!848075) b!1275921))

(assert (= (and b!1275921 res!848076) b!1275920))

(assert (= (and b!1275922 condMapEmpty!51491) mapIsEmpty!51491))

(assert (= (and b!1275922 (not condMapEmpty!51491)) mapNonEmpty!51491))

(get-info :version)

(assert (= (and mapNonEmpty!51491 ((_ is ValueCellFull!15756) mapValue!51491)) b!1275923))

(assert (= (and b!1275922 ((_ is ValueCellFull!15756) mapDefault!51491)) b!1275924))

(assert (= start!108072 b!1275922))

(declare-fun m!1172009 () Bool)

(assert (=> b!1275920 m!1172009))

(declare-fun m!1172011 () Bool)

(assert (=> b!1275921 m!1172011))

(declare-fun m!1172013 () Bool)

(assert (=> start!108072 m!1172013))

(declare-fun m!1172015 () Bool)

(assert (=> start!108072 m!1172015))

(declare-fun m!1172017 () Bool)

(assert (=> start!108072 m!1172017))

(declare-fun m!1172019 () Bool)

(assert (=> mapNonEmpty!51491 m!1172019))

(check-sat (not mapNonEmpty!51491) (not b!1275920) (not b!1275921) tp_is_empty!33309 (not start!108072))
(check-sat)
