; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110508 () Bool)

(assert start!110508)

(declare-fun b!1306757 () Bool)

(declare-fun e!745639 () Bool)

(assert (=> b!1306757 (= e!745639 false)))

(declare-fun lt!584920 () Bool)

(declare-datatypes ((array!87059 0))(
  ( (array!87060 (arr!42005 (Array (_ BitVec 32) (_ BitVec 64))) (size!42556 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87059)

(declare-datatypes ((List!29992 0))(
  ( (Nil!29989) (Cons!29988 (h!31197 (_ BitVec 64)) (t!43605 List!29992)) )
))
(declare-fun arrayNoDuplicates!0 (array!87059 (_ BitVec 32) List!29992) Bool)

(assert (=> b!1306757 (= lt!584920 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!29989))))

(declare-fun b!1306758 () Bool)

(declare-fun res!867540 () Bool)

(assert (=> b!1306758 (=> (not res!867540) (not e!745639))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87059 (_ BitVec 32)) Bool)

(assert (=> b!1306758 (= res!867540 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1306759 () Bool)

(declare-fun e!745638 () Bool)

(declare-fun e!745636 () Bool)

(declare-fun mapRes!54184 () Bool)

(assert (=> b!1306759 (= e!745638 (and e!745636 mapRes!54184))))

(declare-fun condMapEmpty!54184 () Bool)

(declare-datatypes ((V!51819 0))(
  ( (V!51820 (val!17593 Int)) )
))
(declare-datatypes ((ValueCell!16620 0))(
  ( (ValueCellFull!16620 (v!20218 V!51819)) (EmptyCell!16620) )
))
(declare-datatypes ((array!87061 0))(
  ( (array!87062 (arr!42006 (Array (_ BitVec 32) ValueCell!16620)) (size!42557 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87061)

(declare-fun mapDefault!54184 () ValueCell!16620)

(assert (=> b!1306759 (= condMapEmpty!54184 (= (arr!42006 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16620)) mapDefault!54184)))))

(declare-fun mapIsEmpty!54184 () Bool)

(assert (=> mapIsEmpty!54184 mapRes!54184))

(declare-fun b!1306760 () Bool)

(declare-fun e!745637 () Bool)

(declare-fun tp_is_empty!35037 () Bool)

(assert (=> b!1306760 (= e!745637 tp_is_empty!35037)))

(declare-fun mapNonEmpty!54184 () Bool)

(declare-fun tp!103265 () Bool)

(assert (=> mapNonEmpty!54184 (= mapRes!54184 (and tp!103265 e!745637))))

(declare-fun mapRest!54184 () (Array (_ BitVec 32) ValueCell!16620))

(declare-fun mapValue!54184 () ValueCell!16620)

(declare-fun mapKey!54184 () (_ BitVec 32))

(assert (=> mapNonEmpty!54184 (= (arr!42006 _values!1354) (store mapRest!54184 mapKey!54184 mapValue!54184))))

(declare-fun res!867542 () Bool)

(assert (=> start!110508 (=> (not res!867542) (not e!745639))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110508 (= res!867542 (validMask!0 mask!2040))))

(assert (=> start!110508 e!745639))

(assert (=> start!110508 true))

(declare-fun array_inv!31757 (array!87061) Bool)

(assert (=> start!110508 (and (array_inv!31757 _values!1354) e!745638)))

(declare-fun array_inv!31758 (array!87059) Bool)

(assert (=> start!110508 (array_inv!31758 _keys!1628)))

(declare-fun b!1306761 () Bool)

(declare-fun res!867541 () Bool)

(assert (=> b!1306761 (=> (not res!867541) (not e!745639))))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1306761 (= res!867541 (and (= (size!42557 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42556 _keys!1628) (size!42557 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1306762 () Bool)

(assert (=> b!1306762 (= e!745636 tp_is_empty!35037)))

(assert (= (and start!110508 res!867542) b!1306761))

(assert (= (and b!1306761 res!867541) b!1306758))

(assert (= (and b!1306758 res!867540) b!1306757))

(assert (= (and b!1306759 condMapEmpty!54184) mapIsEmpty!54184))

(assert (= (and b!1306759 (not condMapEmpty!54184)) mapNonEmpty!54184))

(get-info :version)

(assert (= (and mapNonEmpty!54184 ((_ is ValueCellFull!16620) mapValue!54184)) b!1306760))

(assert (= (and b!1306759 ((_ is ValueCellFull!16620) mapDefault!54184)) b!1306762))

(assert (= start!110508 b!1306759))

(declare-fun m!1197693 () Bool)

(assert (=> b!1306757 m!1197693))

(declare-fun m!1197695 () Bool)

(assert (=> b!1306758 m!1197695))

(declare-fun m!1197697 () Bool)

(assert (=> mapNonEmpty!54184 m!1197697))

(declare-fun m!1197699 () Bool)

(assert (=> start!110508 m!1197699))

(declare-fun m!1197701 () Bool)

(assert (=> start!110508 m!1197701))

(declare-fun m!1197703 () Bool)

(assert (=> start!110508 m!1197703))

(check-sat (not start!110508) (not b!1306758) (not b!1306757) (not mapNonEmpty!54184) tp_is_empty!35037)
(check-sat)
