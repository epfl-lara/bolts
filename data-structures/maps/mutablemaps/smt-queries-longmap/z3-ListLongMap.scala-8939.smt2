; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108398 () Bool)

(assert start!108398)

(declare-fun b!1278831 () Bool)

(declare-fun e!730660 () Bool)

(declare-fun tp_is_empty!33549 () Bool)

(assert (=> b!1278831 (= e!730660 tp_is_empty!33549)))

(declare-fun mapIsEmpty!51875 () Bool)

(declare-fun mapRes!51875 () Bool)

(assert (=> mapIsEmpty!51875 mapRes!51875))

(declare-fun mapNonEmpty!51875 () Bool)

(declare-fun tp!98850 () Bool)

(assert (=> mapNonEmpty!51875 (= mapRes!51875 (and tp!98850 e!730660))))

(declare-datatypes ((V!49835 0))(
  ( (V!49836 (val!16849 Int)) )
))
(declare-datatypes ((ValueCell!15876 0))(
  ( (ValueCellFull!15876 (v!19447 V!49835)) (EmptyCell!15876) )
))
(declare-fun mapValue!51875 () ValueCell!15876)

(declare-fun mapRest!51875 () (Array (_ BitVec 32) ValueCell!15876))

(declare-datatypes ((array!84137 0))(
  ( (array!84138 (arr!40568 (Array (_ BitVec 32) ValueCell!15876)) (size!41119 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84137)

(declare-fun mapKey!51875 () (_ BitVec 32))

(assert (=> mapNonEmpty!51875 (= (arr!40568 _values!1445) (store mapRest!51875 mapKey!51875 mapValue!51875))))

(declare-fun b!1278832 () Bool)

(declare-fun e!730658 () Bool)

(assert (=> b!1278832 (= e!730658 false)))

(declare-fun lt!575890 () Bool)

(declare-datatypes ((array!84139 0))(
  ( (array!84140 (arr!40569 (Array (_ BitVec 32) (_ BitVec 64))) (size!41120 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84139)

(declare-datatypes ((List!28919 0))(
  ( (Nil!28916) (Cons!28915 (h!30124 (_ BitVec 64)) (t!42466 List!28919)) )
))
(declare-fun arrayNoDuplicates!0 (array!84139 (_ BitVec 32) List!28919) Bool)

(assert (=> b!1278832 (= lt!575890 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!28916))))

(declare-fun b!1278833 () Bool)

(declare-fun res!849617 () Bool)

(assert (=> b!1278833 (=> (not res!849617) (not e!730658))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84139 (_ BitVec 32)) Bool)

(assert (=> b!1278833 (= res!849617 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1278834 () Bool)

(declare-fun e!730657 () Bool)

(declare-fun e!730656 () Bool)

(assert (=> b!1278834 (= e!730657 (and e!730656 mapRes!51875))))

(declare-fun condMapEmpty!51875 () Bool)

(declare-fun mapDefault!51875 () ValueCell!15876)

(assert (=> b!1278834 (= condMapEmpty!51875 (= (arr!40568 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!15876)) mapDefault!51875)))))

(declare-fun res!849616 () Bool)

(assert (=> start!108398 (=> (not res!849616) (not e!730658))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108398 (= res!849616 (validMask!0 mask!2175))))

(assert (=> start!108398 e!730658))

(assert (=> start!108398 true))

(declare-fun array_inv!30789 (array!84137) Bool)

(assert (=> start!108398 (and (array_inv!30789 _values!1445) e!730657)))

(declare-fun array_inv!30790 (array!84139) Bool)

(assert (=> start!108398 (array_inv!30790 _keys!1741)))

(declare-fun b!1278835 () Bool)

(assert (=> b!1278835 (= e!730656 tp_is_empty!33549)))

(declare-fun b!1278836 () Bool)

(declare-fun res!849615 () Bool)

(assert (=> b!1278836 (=> (not res!849615) (not e!730658))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1278836 (= res!849615 (and (= (size!41119 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41120 _keys!1741) (size!41119 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(assert (= (and start!108398 res!849616) b!1278836))

(assert (= (and b!1278836 res!849615) b!1278833))

(assert (= (and b!1278833 res!849617) b!1278832))

(assert (= (and b!1278834 condMapEmpty!51875) mapIsEmpty!51875))

(assert (= (and b!1278834 (not condMapEmpty!51875)) mapNonEmpty!51875))

(get-info :version)

(assert (= (and mapNonEmpty!51875 ((_ is ValueCellFull!15876) mapValue!51875)) b!1278831))

(assert (= (and b!1278834 ((_ is ValueCellFull!15876) mapDefault!51875)) b!1278835))

(assert (= start!108398 b!1278834))

(declare-fun m!1174019 () Bool)

(assert (=> mapNonEmpty!51875 m!1174019))

(declare-fun m!1174021 () Bool)

(assert (=> b!1278832 m!1174021))

(declare-fun m!1174023 () Bool)

(assert (=> b!1278833 m!1174023))

(declare-fun m!1174025 () Bool)

(assert (=> start!108398 m!1174025))

(declare-fun m!1174027 () Bool)

(assert (=> start!108398 m!1174027))

(declare-fun m!1174029 () Bool)

(assert (=> start!108398 m!1174029))

(check-sat (not mapNonEmpty!51875) (not start!108398) (not b!1278833) (not b!1278832) tp_is_empty!33549)
(check-sat)
