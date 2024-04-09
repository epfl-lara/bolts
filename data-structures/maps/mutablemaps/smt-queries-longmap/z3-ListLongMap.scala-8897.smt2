; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108060 () Bool)

(assert start!108060)

(declare-fun b!1275812 () Bool)

(declare-fun res!848021 () Bool)

(declare-fun e!728458 () Bool)

(assert (=> b!1275812 (=> (not res!848021) (not e!728458))))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun extraKeys!1108 () (_ BitVec 32))

(declare-datatypes ((V!49499 0))(
  ( (V!49500 (val!16723 Int)) )
))
(declare-datatypes ((ValueCell!15750 0))(
  ( (ValueCellFull!15750 (v!19318 V!49499)) (EmptyCell!15750) )
))
(declare-datatypes ((array!83645 0))(
  ( (array!83646 (arr!40330 (Array (_ BitVec 32) ValueCell!15750)) (size!40881 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83645)

(declare-datatypes ((array!83647 0))(
  ( (array!83648 (arr!40331 (Array (_ BitVec 32) (_ BitVec 64))) (size!40882 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83647)

(assert (=> b!1275812 (= res!848021 (and (= (size!40881 _values!1187) (bvadd #b00000000000000000000000000000001 mask!1805)) (= (size!40882 _keys!1427) (size!40881 _values!1187)) (bvsge mask!1805 #b00000000000000000000000000000000) (bvsge extraKeys!1108 #b00000000000000000000000000000000) (bvsle extraKeys!1108 #b00000000000000000000000000000011)))))

(declare-fun b!1275813 () Bool)

(declare-fun e!728456 () Bool)

(declare-fun e!728457 () Bool)

(declare-fun mapRes!51473 () Bool)

(assert (=> b!1275813 (= e!728456 (and e!728457 mapRes!51473))))

(declare-fun condMapEmpty!51473 () Bool)

(declare-fun mapDefault!51473 () ValueCell!15750)

(assert (=> b!1275813 (= condMapEmpty!51473 (= (arr!40330 _values!1187) ((as const (Array (_ BitVec 32) ValueCell!15750)) mapDefault!51473)))))

(declare-fun mapIsEmpty!51473 () Bool)

(assert (=> mapIsEmpty!51473 mapRes!51473))

(declare-fun mapNonEmpty!51473 () Bool)

(declare-fun tp!98232 () Bool)

(declare-fun e!728459 () Bool)

(assert (=> mapNonEmpty!51473 (= mapRes!51473 (and tp!98232 e!728459))))

(declare-fun mapRest!51473 () (Array (_ BitVec 32) ValueCell!15750))

(declare-fun mapKey!51473 () (_ BitVec 32))

(declare-fun mapValue!51473 () ValueCell!15750)

(assert (=> mapNonEmpty!51473 (= (arr!40330 _values!1187) (store mapRest!51473 mapKey!51473 mapValue!51473))))

(declare-fun b!1275814 () Bool)

(assert (=> b!1275814 (= e!728458 false)))

(declare-fun lt!575349 () Bool)

(declare-datatypes ((List!28789 0))(
  ( (Nil!28786) (Cons!28785 (h!29994 (_ BitVec 64)) (t!42332 List!28789)) )
))
(declare-fun arrayNoDuplicates!0 (array!83647 (_ BitVec 32) List!28789) Bool)

(assert (=> b!1275814 (= lt!575349 (arrayNoDuplicates!0 _keys!1427 #b00000000000000000000000000000000 Nil!28786))))

(declare-fun res!848022 () Bool)

(assert (=> start!108060 (=> (not res!848022) (not e!728458))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108060 (= res!848022 (validMask!0 mask!1805))))

(assert (=> start!108060 e!728458))

(assert (=> start!108060 true))

(declare-fun array_inv!30607 (array!83645) Bool)

(assert (=> start!108060 (and (array_inv!30607 _values!1187) e!728456)))

(declare-fun array_inv!30608 (array!83647) Bool)

(assert (=> start!108060 (array_inv!30608 _keys!1427)))

(declare-fun b!1275815 () Bool)

(declare-fun tp_is_empty!33297 () Bool)

(assert (=> b!1275815 (= e!728457 tp_is_empty!33297)))

(declare-fun b!1275816 () Bool)

(assert (=> b!1275816 (= e!728459 tp_is_empty!33297)))

(declare-fun b!1275817 () Bool)

(declare-fun res!848020 () Bool)

(assert (=> b!1275817 (=> (not res!848020) (not e!728458))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83647 (_ BitVec 32)) Bool)

(assert (=> b!1275817 (= res!848020 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1427 mask!1805))))

(assert (= (and start!108060 res!848022) b!1275812))

(assert (= (and b!1275812 res!848021) b!1275817))

(assert (= (and b!1275817 res!848020) b!1275814))

(assert (= (and b!1275813 condMapEmpty!51473) mapIsEmpty!51473))

(assert (= (and b!1275813 (not condMapEmpty!51473)) mapNonEmpty!51473))

(get-info :version)

(assert (= (and mapNonEmpty!51473 ((_ is ValueCellFull!15750) mapValue!51473)) b!1275816))

(assert (= (and b!1275813 ((_ is ValueCellFull!15750) mapDefault!51473)) b!1275815))

(assert (= start!108060 b!1275813))

(declare-fun m!1171937 () Bool)

(assert (=> mapNonEmpty!51473 m!1171937))

(declare-fun m!1171939 () Bool)

(assert (=> b!1275814 m!1171939))

(declare-fun m!1171941 () Bool)

(assert (=> start!108060 m!1171941))

(declare-fun m!1171943 () Bool)

(assert (=> start!108060 m!1171943))

(declare-fun m!1171945 () Bool)

(assert (=> start!108060 m!1171945))

(declare-fun m!1171947 () Bool)

(assert (=> b!1275817 m!1171947))

(check-sat tp_is_empty!33297 (not mapNonEmpty!51473) (not b!1275817) (not start!108060) (not b!1275814))
(check-sat)
