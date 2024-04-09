; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110502 () Bool)

(assert start!110502)

(declare-fun b!1306703 () Bool)

(declare-fun e!745595 () Bool)

(assert (=> b!1306703 (= e!745595 false)))

(declare-fun lt!584911 () Bool)

(declare-datatypes ((array!87047 0))(
  ( (array!87048 (arr!41999 (Array (_ BitVec 32) (_ BitVec 64))) (size!42550 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87047)

(declare-datatypes ((List!29989 0))(
  ( (Nil!29986) (Cons!29985 (h!31194 (_ BitVec 64)) (t!43602 List!29989)) )
))
(declare-fun arrayNoDuplicates!0 (array!87047 (_ BitVec 32) List!29989) Bool)

(assert (=> b!1306703 (= lt!584911 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!29986))))

(declare-fun b!1306704 () Bool)

(declare-fun res!867513 () Bool)

(assert (=> b!1306704 (=> (not res!867513) (not e!745595))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!51811 0))(
  ( (V!51812 (val!17590 Int)) )
))
(declare-datatypes ((ValueCell!16617 0))(
  ( (ValueCellFull!16617 (v!20215 V!51811)) (EmptyCell!16617) )
))
(declare-datatypes ((array!87049 0))(
  ( (array!87050 (arr!42000 (Array (_ BitVec 32) ValueCell!16617)) (size!42551 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87049)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1306704 (= res!867513 (and (= (size!42551 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42550 _keys!1628) (size!42551 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun res!867515 () Bool)

(assert (=> start!110502 (=> (not res!867515) (not e!745595))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110502 (= res!867515 (validMask!0 mask!2040))))

(assert (=> start!110502 e!745595))

(assert (=> start!110502 true))

(declare-fun e!745594 () Bool)

(declare-fun array_inv!31751 (array!87049) Bool)

(assert (=> start!110502 (and (array_inv!31751 _values!1354) e!745594)))

(declare-fun array_inv!31752 (array!87047) Bool)

(assert (=> start!110502 (array_inv!31752 _keys!1628)))

(declare-fun mapIsEmpty!54175 () Bool)

(declare-fun mapRes!54175 () Bool)

(assert (=> mapIsEmpty!54175 mapRes!54175))

(declare-fun b!1306705 () Bool)

(declare-fun e!745592 () Bool)

(assert (=> b!1306705 (= e!745594 (and e!745592 mapRes!54175))))

(declare-fun condMapEmpty!54175 () Bool)

(declare-fun mapDefault!54175 () ValueCell!16617)

(assert (=> b!1306705 (= condMapEmpty!54175 (= (arr!42000 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16617)) mapDefault!54175)))))

(declare-fun mapNonEmpty!54175 () Bool)

(declare-fun tp!103256 () Bool)

(declare-fun e!745593 () Bool)

(assert (=> mapNonEmpty!54175 (= mapRes!54175 (and tp!103256 e!745593))))

(declare-fun mapKey!54175 () (_ BitVec 32))

(declare-fun mapRest!54175 () (Array (_ BitVec 32) ValueCell!16617))

(declare-fun mapValue!54175 () ValueCell!16617)

(assert (=> mapNonEmpty!54175 (= (arr!42000 _values!1354) (store mapRest!54175 mapKey!54175 mapValue!54175))))

(declare-fun b!1306706 () Bool)

(declare-fun tp_is_empty!35031 () Bool)

(assert (=> b!1306706 (= e!745593 tp_is_empty!35031)))

(declare-fun b!1306707 () Bool)

(declare-fun res!867514 () Bool)

(assert (=> b!1306707 (=> (not res!867514) (not e!745595))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87047 (_ BitVec 32)) Bool)

(assert (=> b!1306707 (= res!867514 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1306708 () Bool)

(assert (=> b!1306708 (= e!745592 tp_is_empty!35031)))

(assert (= (and start!110502 res!867515) b!1306704))

(assert (= (and b!1306704 res!867513) b!1306707))

(assert (= (and b!1306707 res!867514) b!1306703))

(assert (= (and b!1306705 condMapEmpty!54175) mapIsEmpty!54175))

(assert (= (and b!1306705 (not condMapEmpty!54175)) mapNonEmpty!54175))

(get-info :version)

(assert (= (and mapNonEmpty!54175 ((_ is ValueCellFull!16617) mapValue!54175)) b!1306706))

(assert (= (and b!1306705 ((_ is ValueCellFull!16617) mapDefault!54175)) b!1306708))

(assert (= start!110502 b!1306705))

(declare-fun m!1197657 () Bool)

(assert (=> b!1306703 m!1197657))

(declare-fun m!1197659 () Bool)

(assert (=> start!110502 m!1197659))

(declare-fun m!1197661 () Bool)

(assert (=> start!110502 m!1197661))

(declare-fun m!1197663 () Bool)

(assert (=> start!110502 m!1197663))

(declare-fun m!1197665 () Bool)

(assert (=> mapNonEmpty!54175 m!1197665))

(declare-fun m!1197667 () Bool)

(assert (=> b!1306707 m!1197667))

(check-sat (not start!110502) (not mapNonEmpty!54175) (not b!1306707) tp_is_empty!35031 (not b!1306703))
(check-sat)
