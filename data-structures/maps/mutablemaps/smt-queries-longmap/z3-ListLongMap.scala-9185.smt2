; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110496 () Bool)

(assert start!110496)

(declare-fun res!867486 () Bool)

(declare-fun e!745550 () Bool)

(assert (=> start!110496 (=> (not res!867486) (not e!745550))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110496 (= res!867486 (validMask!0 mask!2040))))

(assert (=> start!110496 e!745550))

(assert (=> start!110496 true))

(declare-datatypes ((V!51803 0))(
  ( (V!51804 (val!17587 Int)) )
))
(declare-datatypes ((ValueCell!16614 0))(
  ( (ValueCellFull!16614 (v!20212 V!51803)) (EmptyCell!16614) )
))
(declare-datatypes ((array!87037 0))(
  ( (array!87038 (arr!41994 (Array (_ BitVec 32) ValueCell!16614)) (size!42545 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87037)

(declare-fun e!745546 () Bool)

(declare-fun array_inv!31749 (array!87037) Bool)

(assert (=> start!110496 (and (array_inv!31749 _values!1354) e!745546)))

(declare-datatypes ((array!87039 0))(
  ( (array!87040 (arr!41995 (Array (_ BitVec 32) (_ BitVec 64))) (size!42546 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87039)

(declare-fun array_inv!31750 (array!87039) Bool)

(assert (=> start!110496 (array_inv!31750 _keys!1628)))

(declare-fun b!1306649 () Bool)

(assert (=> b!1306649 (= e!745550 false)))

(declare-fun lt!584902 () Bool)

(declare-datatypes ((List!29988 0))(
  ( (Nil!29985) (Cons!29984 (h!31193 (_ BitVec 64)) (t!43601 List!29988)) )
))
(declare-fun arrayNoDuplicates!0 (array!87039 (_ BitVec 32) List!29988) Bool)

(assert (=> b!1306649 (= lt!584902 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!29985))))

(declare-fun b!1306650 () Bool)

(declare-fun e!745549 () Bool)

(declare-fun mapRes!54166 () Bool)

(assert (=> b!1306650 (= e!745546 (and e!745549 mapRes!54166))))

(declare-fun condMapEmpty!54166 () Bool)

(declare-fun mapDefault!54166 () ValueCell!16614)

(assert (=> b!1306650 (= condMapEmpty!54166 (= (arr!41994 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16614)) mapDefault!54166)))))

(declare-fun b!1306651 () Bool)

(declare-fun res!867488 () Bool)

(assert (=> b!1306651 (=> (not res!867488) (not e!745550))))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1306651 (= res!867488 (and (= (size!42545 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42546 _keys!1628) (size!42545 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1306652 () Bool)

(declare-fun e!745547 () Bool)

(declare-fun tp_is_empty!35025 () Bool)

(assert (=> b!1306652 (= e!745547 tp_is_empty!35025)))

(declare-fun mapIsEmpty!54166 () Bool)

(assert (=> mapIsEmpty!54166 mapRes!54166))

(declare-fun b!1306653 () Bool)

(declare-fun res!867487 () Bool)

(assert (=> b!1306653 (=> (not res!867487) (not e!745550))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87039 (_ BitVec 32)) Bool)

(assert (=> b!1306653 (= res!867487 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun mapNonEmpty!54166 () Bool)

(declare-fun tp!103247 () Bool)

(assert (=> mapNonEmpty!54166 (= mapRes!54166 (and tp!103247 e!745547))))

(declare-fun mapValue!54166 () ValueCell!16614)

(declare-fun mapKey!54166 () (_ BitVec 32))

(declare-fun mapRest!54166 () (Array (_ BitVec 32) ValueCell!16614))

(assert (=> mapNonEmpty!54166 (= (arr!41994 _values!1354) (store mapRest!54166 mapKey!54166 mapValue!54166))))

(declare-fun b!1306654 () Bool)

(assert (=> b!1306654 (= e!745549 tp_is_empty!35025)))

(assert (= (and start!110496 res!867486) b!1306651))

(assert (= (and b!1306651 res!867488) b!1306653))

(assert (= (and b!1306653 res!867487) b!1306649))

(assert (= (and b!1306650 condMapEmpty!54166) mapIsEmpty!54166))

(assert (= (and b!1306650 (not condMapEmpty!54166)) mapNonEmpty!54166))

(get-info :version)

(assert (= (and mapNonEmpty!54166 ((_ is ValueCellFull!16614) mapValue!54166)) b!1306652))

(assert (= (and b!1306650 ((_ is ValueCellFull!16614) mapDefault!54166)) b!1306654))

(assert (= start!110496 b!1306650))

(declare-fun m!1197621 () Bool)

(assert (=> start!110496 m!1197621))

(declare-fun m!1197623 () Bool)

(assert (=> start!110496 m!1197623))

(declare-fun m!1197625 () Bool)

(assert (=> start!110496 m!1197625))

(declare-fun m!1197627 () Bool)

(assert (=> b!1306649 m!1197627))

(declare-fun m!1197629 () Bool)

(assert (=> b!1306653 m!1197629))

(declare-fun m!1197631 () Bool)

(assert (=> mapNonEmpty!54166 m!1197631))

(check-sat (not start!110496) tp_is_empty!35025 (not b!1306649) (not b!1306653) (not mapNonEmpty!54166))
(check-sat)
