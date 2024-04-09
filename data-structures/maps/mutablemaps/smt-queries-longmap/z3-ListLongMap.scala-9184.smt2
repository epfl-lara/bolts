; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110490 () Bool)

(assert start!110490)

(declare-fun res!867460 () Bool)

(declare-fun e!745503 () Bool)

(assert (=> start!110490 (=> (not res!867460) (not e!745503))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110490 (= res!867460 (validMask!0 mask!2040))))

(assert (=> start!110490 e!745503))

(assert (=> start!110490 true))

(declare-datatypes ((V!51795 0))(
  ( (V!51796 (val!17584 Int)) )
))
(declare-datatypes ((ValueCell!16611 0))(
  ( (ValueCellFull!16611 (v!20209 V!51795)) (EmptyCell!16611) )
))
(declare-datatypes ((array!87027 0))(
  ( (array!87028 (arr!41989 (Array (_ BitVec 32) ValueCell!16611)) (size!42540 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87027)

(declare-fun e!745504 () Bool)

(declare-fun array_inv!31745 (array!87027) Bool)

(assert (=> start!110490 (and (array_inv!31745 _values!1354) e!745504)))

(declare-datatypes ((array!87029 0))(
  ( (array!87030 (arr!41990 (Array (_ BitVec 32) (_ BitVec 64))) (size!42541 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87029)

(declare-fun array_inv!31746 (array!87029) Bool)

(assert (=> start!110490 (array_inv!31746 _keys!1628)))

(declare-fun mapIsEmpty!54157 () Bool)

(declare-fun mapRes!54157 () Bool)

(assert (=> mapIsEmpty!54157 mapRes!54157))

(declare-fun b!1306595 () Bool)

(declare-fun res!867461 () Bool)

(assert (=> b!1306595 (=> (not res!867461) (not e!745503))))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1306595 (= res!867461 (and (= (size!42540 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42541 _keys!1628) (size!42540 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1306596 () Bool)

(assert (=> b!1306596 (= e!745503 false)))

(declare-fun lt!584893 () Bool)

(declare-datatypes ((List!29986 0))(
  ( (Nil!29983) (Cons!29982 (h!31191 (_ BitVec 64)) (t!43599 List!29986)) )
))
(declare-fun arrayNoDuplicates!0 (array!87029 (_ BitVec 32) List!29986) Bool)

(assert (=> b!1306596 (= lt!584893 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!29983))))

(declare-fun b!1306597 () Bool)

(declare-fun e!745501 () Bool)

(declare-fun tp_is_empty!35019 () Bool)

(assert (=> b!1306597 (= e!745501 tp_is_empty!35019)))

(declare-fun mapNonEmpty!54157 () Bool)

(declare-fun tp!103238 () Bool)

(declare-fun e!745505 () Bool)

(assert (=> mapNonEmpty!54157 (= mapRes!54157 (and tp!103238 e!745505))))

(declare-fun mapRest!54157 () (Array (_ BitVec 32) ValueCell!16611))

(declare-fun mapKey!54157 () (_ BitVec 32))

(declare-fun mapValue!54157 () ValueCell!16611)

(assert (=> mapNonEmpty!54157 (= (arr!41989 _values!1354) (store mapRest!54157 mapKey!54157 mapValue!54157))))

(declare-fun b!1306598 () Bool)

(assert (=> b!1306598 (= e!745505 tp_is_empty!35019)))

(declare-fun b!1306599 () Bool)

(assert (=> b!1306599 (= e!745504 (and e!745501 mapRes!54157))))

(declare-fun condMapEmpty!54157 () Bool)

(declare-fun mapDefault!54157 () ValueCell!16611)

(assert (=> b!1306599 (= condMapEmpty!54157 (= (arr!41989 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16611)) mapDefault!54157)))))

(declare-fun b!1306600 () Bool)

(declare-fun res!867459 () Bool)

(assert (=> b!1306600 (=> (not res!867459) (not e!745503))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87029 (_ BitVec 32)) Bool)

(assert (=> b!1306600 (= res!867459 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(assert (= (and start!110490 res!867460) b!1306595))

(assert (= (and b!1306595 res!867461) b!1306600))

(assert (= (and b!1306600 res!867459) b!1306596))

(assert (= (and b!1306599 condMapEmpty!54157) mapIsEmpty!54157))

(assert (= (and b!1306599 (not condMapEmpty!54157)) mapNonEmpty!54157))

(get-info :version)

(assert (= (and mapNonEmpty!54157 ((_ is ValueCellFull!16611) mapValue!54157)) b!1306598))

(assert (= (and b!1306599 ((_ is ValueCellFull!16611) mapDefault!54157)) b!1306597))

(assert (= start!110490 b!1306599))

(declare-fun m!1197585 () Bool)

(assert (=> start!110490 m!1197585))

(declare-fun m!1197587 () Bool)

(assert (=> start!110490 m!1197587))

(declare-fun m!1197589 () Bool)

(assert (=> start!110490 m!1197589))

(declare-fun m!1197591 () Bool)

(assert (=> b!1306596 m!1197591))

(declare-fun m!1197593 () Bool)

(assert (=> mapNonEmpty!54157 m!1197593))

(declare-fun m!1197595 () Bool)

(assert (=> b!1306600 m!1197595))

(check-sat (not b!1306596) (not start!110490) (not mapNonEmpty!54157) tp_is_empty!35019 (not b!1306600))
(check-sat)
