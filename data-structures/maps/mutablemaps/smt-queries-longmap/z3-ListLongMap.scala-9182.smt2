; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110478 () Bool)

(assert start!110478)

(declare-fun res!867405 () Bool)

(declare-fun e!745412 () Bool)

(assert (=> start!110478 (=> (not res!867405) (not e!745412))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110478 (= res!867405 (validMask!0 mask!2040))))

(assert (=> start!110478 e!745412))

(assert (=> start!110478 true))

(declare-datatypes ((V!51779 0))(
  ( (V!51780 (val!17578 Int)) )
))
(declare-datatypes ((ValueCell!16605 0))(
  ( (ValueCellFull!16605 (v!20203 V!51779)) (EmptyCell!16605) )
))
(declare-datatypes ((array!87005 0))(
  ( (array!87006 (arr!41978 (Array (_ BitVec 32) ValueCell!16605)) (size!42529 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87005)

(declare-fun e!745415 () Bool)

(declare-fun array_inv!31737 (array!87005) Bool)

(assert (=> start!110478 (and (array_inv!31737 _values!1354) e!745415)))

(declare-datatypes ((array!87007 0))(
  ( (array!87008 (arr!41979 (Array (_ BitVec 32) (_ BitVec 64))) (size!42530 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87007)

(declare-fun array_inv!31738 (array!87007) Bool)

(assert (=> start!110478 (array_inv!31738 _keys!1628)))

(declare-fun mapIsEmpty!54139 () Bool)

(declare-fun mapRes!54139 () Bool)

(assert (=> mapIsEmpty!54139 mapRes!54139))

(declare-fun mapNonEmpty!54139 () Bool)

(declare-fun tp!103220 () Bool)

(declare-fun e!745413 () Bool)

(assert (=> mapNonEmpty!54139 (= mapRes!54139 (and tp!103220 e!745413))))

(declare-fun mapRest!54139 () (Array (_ BitVec 32) ValueCell!16605))

(declare-fun mapKey!54139 () (_ BitVec 32))

(declare-fun mapValue!54139 () ValueCell!16605)

(assert (=> mapNonEmpty!54139 (= (arr!41978 _values!1354) (store mapRest!54139 mapKey!54139 mapValue!54139))))

(declare-fun b!1306487 () Bool)

(declare-fun e!745414 () Bool)

(assert (=> b!1306487 (= e!745415 (and e!745414 mapRes!54139))))

(declare-fun condMapEmpty!54139 () Bool)

(declare-fun mapDefault!54139 () ValueCell!16605)

(assert (=> b!1306487 (= condMapEmpty!54139 (= (arr!41978 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16605)) mapDefault!54139)))))

(declare-fun b!1306488 () Bool)

(declare-fun tp_is_empty!35007 () Bool)

(assert (=> b!1306488 (= e!745414 tp_is_empty!35007)))

(declare-fun b!1306489 () Bool)

(declare-fun res!867406 () Bool)

(assert (=> b!1306489 (=> (not res!867406) (not e!745412))))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1306489 (= res!867406 (and (= (size!42529 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42530 _keys!1628) (size!42529 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1306490 () Bool)

(assert (=> b!1306490 (= e!745412 false)))

(declare-fun lt!584875 () Bool)

(declare-datatypes ((List!29981 0))(
  ( (Nil!29978) (Cons!29977 (h!31186 (_ BitVec 64)) (t!43594 List!29981)) )
))
(declare-fun arrayNoDuplicates!0 (array!87007 (_ BitVec 32) List!29981) Bool)

(assert (=> b!1306490 (= lt!584875 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!29978))))

(declare-fun b!1306491 () Bool)

(declare-fun res!867407 () Bool)

(assert (=> b!1306491 (=> (not res!867407) (not e!745412))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87007 (_ BitVec 32)) Bool)

(assert (=> b!1306491 (= res!867407 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1306492 () Bool)

(assert (=> b!1306492 (= e!745413 tp_is_empty!35007)))

(assert (= (and start!110478 res!867405) b!1306489))

(assert (= (and b!1306489 res!867406) b!1306491))

(assert (= (and b!1306491 res!867407) b!1306490))

(assert (= (and b!1306487 condMapEmpty!54139) mapIsEmpty!54139))

(assert (= (and b!1306487 (not condMapEmpty!54139)) mapNonEmpty!54139))

(get-info :version)

(assert (= (and mapNonEmpty!54139 ((_ is ValueCellFull!16605) mapValue!54139)) b!1306492))

(assert (= (and b!1306487 ((_ is ValueCellFull!16605) mapDefault!54139)) b!1306488))

(assert (= start!110478 b!1306487))

(declare-fun m!1197513 () Bool)

(assert (=> start!110478 m!1197513))

(declare-fun m!1197515 () Bool)

(assert (=> start!110478 m!1197515))

(declare-fun m!1197517 () Bool)

(assert (=> start!110478 m!1197517))

(declare-fun m!1197519 () Bool)

(assert (=> mapNonEmpty!54139 m!1197519))

(declare-fun m!1197521 () Bool)

(assert (=> b!1306490 m!1197521))

(declare-fun m!1197523 () Bool)

(assert (=> b!1306491 m!1197523))

(check-sat tp_is_empty!35007 (not b!1306491) (not start!110478) (not mapNonEmpty!54139) (not b!1306490))
(check-sat)
