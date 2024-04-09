; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108386 () Bool)

(assert start!108386)

(declare-fun b!1278723 () Bool)

(declare-fun e!730566 () Bool)

(declare-fun tp_is_empty!33537 () Bool)

(assert (=> b!1278723 (= e!730566 tp_is_empty!33537)))

(declare-fun b!1278724 () Bool)

(declare-fun res!849562 () Bool)

(declare-fun e!730567 () Bool)

(assert (=> b!1278724 (=> (not res!849562) (not e!730567))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!49819 0))(
  ( (V!49820 (val!16843 Int)) )
))
(declare-datatypes ((ValueCell!15870 0))(
  ( (ValueCellFull!15870 (v!19441 V!49819)) (EmptyCell!15870) )
))
(declare-datatypes ((array!84113 0))(
  ( (array!84114 (arr!40556 (Array (_ BitVec 32) ValueCell!15870)) (size!41107 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84113)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!84115 0))(
  ( (array!84116 (arr!40557 (Array (_ BitVec 32) (_ BitVec 64))) (size!41108 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84115)

(assert (=> b!1278724 (= res!849562 (and (= (size!41107 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41108 _keys!1741) (size!41107 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!51857 () Bool)

(declare-fun mapRes!51857 () Bool)

(assert (=> mapIsEmpty!51857 mapRes!51857))

(declare-fun b!1278725 () Bool)

(assert (=> b!1278725 (= e!730567 false)))

(declare-fun lt!575872 () Bool)

(declare-datatypes ((List!28914 0))(
  ( (Nil!28911) (Cons!28910 (h!30119 (_ BitVec 64)) (t!42461 List!28914)) )
))
(declare-fun arrayNoDuplicates!0 (array!84115 (_ BitVec 32) List!28914) Bool)

(assert (=> b!1278725 (= lt!575872 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!28911))))

(declare-fun mapNonEmpty!51857 () Bool)

(declare-fun tp!98832 () Bool)

(assert (=> mapNonEmpty!51857 (= mapRes!51857 (and tp!98832 e!730566))))

(declare-fun mapRest!51857 () (Array (_ BitVec 32) ValueCell!15870))

(declare-fun mapKey!51857 () (_ BitVec 32))

(declare-fun mapValue!51857 () ValueCell!15870)

(assert (=> mapNonEmpty!51857 (= (arr!40556 _values!1445) (store mapRest!51857 mapKey!51857 mapValue!51857))))

(declare-fun b!1278726 () Bool)

(declare-fun res!849563 () Bool)

(assert (=> b!1278726 (=> (not res!849563) (not e!730567))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84115 (_ BitVec 32)) Bool)

(assert (=> b!1278726 (= res!849563 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun res!849561 () Bool)

(assert (=> start!108386 (=> (not res!849561) (not e!730567))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108386 (= res!849561 (validMask!0 mask!2175))))

(assert (=> start!108386 e!730567))

(assert (=> start!108386 true))

(declare-fun e!730568 () Bool)

(declare-fun array_inv!30781 (array!84113) Bool)

(assert (=> start!108386 (and (array_inv!30781 _values!1445) e!730568)))

(declare-fun array_inv!30782 (array!84115) Bool)

(assert (=> start!108386 (array_inv!30782 _keys!1741)))

(declare-fun b!1278727 () Bool)

(declare-fun e!730570 () Bool)

(assert (=> b!1278727 (= e!730570 tp_is_empty!33537)))

(declare-fun b!1278728 () Bool)

(assert (=> b!1278728 (= e!730568 (and e!730570 mapRes!51857))))

(declare-fun condMapEmpty!51857 () Bool)

(declare-fun mapDefault!51857 () ValueCell!15870)

(assert (=> b!1278728 (= condMapEmpty!51857 (= (arr!40556 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!15870)) mapDefault!51857)))))

(assert (= (and start!108386 res!849561) b!1278724))

(assert (= (and b!1278724 res!849562) b!1278726))

(assert (= (and b!1278726 res!849563) b!1278725))

(assert (= (and b!1278728 condMapEmpty!51857) mapIsEmpty!51857))

(assert (= (and b!1278728 (not condMapEmpty!51857)) mapNonEmpty!51857))

(get-info :version)

(assert (= (and mapNonEmpty!51857 ((_ is ValueCellFull!15870) mapValue!51857)) b!1278723))

(assert (= (and b!1278728 ((_ is ValueCellFull!15870) mapDefault!51857)) b!1278727))

(assert (= start!108386 b!1278728))

(declare-fun m!1173947 () Bool)

(assert (=> b!1278725 m!1173947))

(declare-fun m!1173949 () Bool)

(assert (=> mapNonEmpty!51857 m!1173949))

(declare-fun m!1173951 () Bool)

(assert (=> b!1278726 m!1173951))

(declare-fun m!1173953 () Bool)

(assert (=> start!108386 m!1173953))

(declare-fun m!1173955 () Bool)

(assert (=> start!108386 m!1173955))

(declare-fun m!1173957 () Bool)

(assert (=> start!108386 m!1173957))

(check-sat (not b!1278725) (not mapNonEmpty!51857) (not start!108386) (not b!1278726) tp_is_empty!33537)
(check-sat)
