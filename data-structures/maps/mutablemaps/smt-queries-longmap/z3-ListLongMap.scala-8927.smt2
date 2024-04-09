; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108282 () Bool)

(assert start!108282)

(declare-fun mapIsEmpty!51752 () Bool)

(declare-fun mapRes!51752 () Bool)

(assert (=> mapIsEmpty!51752 mapRes!51752))

(declare-fun b!1278047 () Bool)

(declare-fun e!730023 () Bool)

(declare-fun tp_is_empty!33477 () Bool)

(assert (=> b!1278047 (= e!730023 tp_is_empty!33477)))

(declare-fun res!849219 () Bool)

(declare-fun e!730022 () Bool)

(assert (=> start!108282 (=> (not res!849219) (not e!730022))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108282 (= res!849219 (validMask!0 mask!2175))))

(assert (=> start!108282 e!730022))

(assert (=> start!108282 true))

(declare-datatypes ((V!49739 0))(
  ( (V!49740 (val!16813 Int)) )
))
(declare-datatypes ((ValueCell!15840 0))(
  ( (ValueCellFull!15840 (v!19410 V!49739)) (EmptyCell!15840) )
))
(declare-datatypes ((array!83987 0))(
  ( (array!83988 (arr!40498 (Array (_ BitVec 32) ValueCell!15840)) (size!41049 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!83987)

(declare-fun e!730024 () Bool)

(declare-fun array_inv!30739 (array!83987) Bool)

(assert (=> start!108282 (and (array_inv!30739 _values!1445) e!730024)))

(declare-datatypes ((array!83989 0))(
  ( (array!83990 (arr!40499 (Array (_ BitVec 32) (_ BitVec 64))) (size!41050 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!83989)

(declare-fun array_inv!30740 (array!83989) Bool)

(assert (=> start!108282 (array_inv!30740 _keys!1741)))

(declare-fun b!1278048 () Bool)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1278048 (= e!730022 (and (= (size!41049 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41050 _keys!1741) (size!41049 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011) (= (size!41050 _keys!1741) (bvadd #b00000000000000000000000000000001 mask!2175)) (bvsgt #b00000000000000000000000000000000 (size!41050 _keys!1741))))))

(declare-fun b!1278049 () Bool)

(declare-fun e!730025 () Bool)

(assert (=> b!1278049 (= e!730024 (and e!730025 mapRes!51752))))

(declare-fun condMapEmpty!51752 () Bool)

(declare-fun mapDefault!51752 () ValueCell!15840)

(assert (=> b!1278049 (= condMapEmpty!51752 (= (arr!40498 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!15840)) mapDefault!51752)))))

(declare-fun mapNonEmpty!51752 () Bool)

(declare-fun tp!98727 () Bool)

(assert (=> mapNonEmpty!51752 (= mapRes!51752 (and tp!98727 e!730023))))

(declare-fun mapKey!51752 () (_ BitVec 32))

(declare-fun mapValue!51752 () ValueCell!15840)

(declare-fun mapRest!51752 () (Array (_ BitVec 32) ValueCell!15840))

(assert (=> mapNonEmpty!51752 (= (arr!40498 _values!1445) (store mapRest!51752 mapKey!51752 mapValue!51752))))

(declare-fun b!1278050 () Bool)

(assert (=> b!1278050 (= e!730025 tp_is_empty!33477)))

(assert (= (and start!108282 res!849219) b!1278048))

(assert (= (and b!1278049 condMapEmpty!51752) mapIsEmpty!51752))

(assert (= (and b!1278049 (not condMapEmpty!51752)) mapNonEmpty!51752))

(get-info :version)

(assert (= (and mapNonEmpty!51752 ((_ is ValueCellFull!15840) mapValue!51752)) b!1278047))

(assert (= (and b!1278049 ((_ is ValueCellFull!15840) mapDefault!51752)) b!1278050))

(assert (= start!108282 b!1278049))

(declare-fun m!1173519 () Bool)

(assert (=> start!108282 m!1173519))

(declare-fun m!1173521 () Bool)

(assert (=> start!108282 m!1173521))

(declare-fun m!1173523 () Bool)

(assert (=> start!108282 m!1173523))

(declare-fun m!1173525 () Bool)

(assert (=> mapNonEmpty!51752 m!1173525))

(check-sat (not start!108282) (not mapNonEmpty!51752) tp_is_empty!33477)
(check-sat)
(get-model)

(declare-fun d!140423 () Bool)

(assert (=> d!140423 (= (validMask!0 mask!2175) (and (or (= mask!2175 #b00000000000000000000000000000111) (= mask!2175 #b00000000000000000000000000001111) (= mask!2175 #b00000000000000000000000000011111) (= mask!2175 #b00000000000000000000000000111111) (= mask!2175 #b00000000000000000000000001111111) (= mask!2175 #b00000000000000000000000011111111) (= mask!2175 #b00000000000000000000000111111111) (= mask!2175 #b00000000000000000000001111111111) (= mask!2175 #b00000000000000000000011111111111) (= mask!2175 #b00000000000000000000111111111111) (= mask!2175 #b00000000000000000001111111111111) (= mask!2175 #b00000000000000000011111111111111) (= mask!2175 #b00000000000000000111111111111111) (= mask!2175 #b00000000000000001111111111111111) (= mask!2175 #b00000000000000011111111111111111) (= mask!2175 #b00000000000000111111111111111111) (= mask!2175 #b00000000000001111111111111111111) (= mask!2175 #b00000000000011111111111111111111) (= mask!2175 #b00000000000111111111111111111111) (= mask!2175 #b00000000001111111111111111111111) (= mask!2175 #b00000000011111111111111111111111) (= mask!2175 #b00000000111111111111111111111111) (= mask!2175 #b00000001111111111111111111111111) (= mask!2175 #b00000011111111111111111111111111) (= mask!2175 #b00000111111111111111111111111111) (= mask!2175 #b00001111111111111111111111111111) (= mask!2175 #b00011111111111111111111111111111) (= mask!2175 #b00111111111111111111111111111111)) (bvsle mask!2175 #b00111111111111111111111111111111)))))

(assert (=> start!108282 d!140423))

(declare-fun d!140425 () Bool)

(assert (=> d!140425 (= (array_inv!30739 _values!1445) (bvsge (size!41049 _values!1445) #b00000000000000000000000000000000))))

(assert (=> start!108282 d!140425))

(declare-fun d!140427 () Bool)

(assert (=> d!140427 (= (array_inv!30740 _keys!1741) (bvsge (size!41050 _keys!1741) #b00000000000000000000000000000000))))

(assert (=> start!108282 d!140427))

(declare-fun mapNonEmpty!51758 () Bool)

(declare-fun mapRes!51758 () Bool)

(declare-fun tp!98733 () Bool)

(declare-fun e!730046 () Bool)

(assert (=> mapNonEmpty!51758 (= mapRes!51758 (and tp!98733 e!730046))))

(declare-fun mapValue!51758 () ValueCell!15840)

(declare-fun mapKey!51758 () (_ BitVec 32))

(declare-fun mapRest!51758 () (Array (_ BitVec 32) ValueCell!15840))

(assert (=> mapNonEmpty!51758 (= mapRest!51752 (store mapRest!51758 mapKey!51758 mapValue!51758))))

(declare-fun mapIsEmpty!51758 () Bool)

(assert (=> mapIsEmpty!51758 mapRes!51758))

(declare-fun b!1278070 () Bool)

(declare-fun e!730045 () Bool)

(assert (=> b!1278070 (= e!730045 tp_is_empty!33477)))

(declare-fun condMapEmpty!51758 () Bool)

(declare-fun mapDefault!51758 () ValueCell!15840)

(assert (=> mapNonEmpty!51752 (= condMapEmpty!51758 (= mapRest!51752 ((as const (Array (_ BitVec 32) ValueCell!15840)) mapDefault!51758)))))

(assert (=> mapNonEmpty!51752 (= tp!98727 (and e!730045 mapRes!51758))))

(declare-fun b!1278069 () Bool)

(assert (=> b!1278069 (= e!730046 tp_is_empty!33477)))

(assert (= (and mapNonEmpty!51752 condMapEmpty!51758) mapIsEmpty!51758))

(assert (= (and mapNonEmpty!51752 (not condMapEmpty!51758)) mapNonEmpty!51758))

(assert (= (and mapNonEmpty!51758 ((_ is ValueCellFull!15840) mapValue!51758)) b!1278069))

(assert (= (and mapNonEmpty!51752 ((_ is ValueCellFull!15840) mapDefault!51758)) b!1278070))

(declare-fun m!1173535 () Bool)

(assert (=> mapNonEmpty!51758 m!1173535))

(check-sat (not mapNonEmpty!51758) tp_is_empty!33477)
(check-sat)
