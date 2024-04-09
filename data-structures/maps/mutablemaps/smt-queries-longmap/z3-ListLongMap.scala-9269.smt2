; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111000 () Bool)

(assert start!111000)

(declare-fun b_free!29799 () Bool)

(declare-fun b_next!29799 () Bool)

(assert (=> start!111000 (= b_free!29799 (not b_next!29799))))

(declare-fun tp!104720 () Bool)

(declare-fun b_and!48017 () Bool)

(assert (=> start!111000 (= tp!104720 b_and!48017)))

(declare-fun b!1313625 () Bool)

(declare-fun e!749326 () Bool)

(declare-fun tp_is_empty!35529 () Bool)

(assert (=> b!1313625 (= e!749326 tp_is_empty!35529)))

(declare-fun b!1313626 () Bool)

(declare-fun res!872195 () Bool)

(declare-fun e!749327 () Bool)

(assert (=> b!1313626 (=> (not res!872195) (not e!749327))))

(declare-datatypes ((array!87997 0))(
  ( (array!87998 (arr!42474 (Array (_ BitVec 32) (_ BitVec 64))) (size!43025 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87997)

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1313626 (= res!872195 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43025 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1313627 () Bool)

(declare-fun res!872196 () Bool)

(assert (=> b!1313627 (=> (not res!872196) (not e!749327))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87997 (_ BitVec 32)) Bool)

(assert (=> b!1313627 (= res!872196 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun mapIsEmpty!54922 () Bool)

(declare-fun mapRes!54922 () Bool)

(assert (=> mapIsEmpty!54922 mapRes!54922))

(declare-fun b!1313628 () Bool)

(declare-fun res!872194 () Bool)

(assert (=> b!1313628 (=> (not res!872194) (not e!749327))))

(declare-datatypes ((V!52475 0))(
  ( (V!52476 (val!17839 Int)) )
))
(declare-datatypes ((ValueCell!16866 0))(
  ( (ValueCellFull!16866 (v!20464 V!52475)) (EmptyCell!16866) )
))
(declare-datatypes ((array!87999 0))(
  ( (array!88000 (arr!42475 (Array (_ BitVec 32) ValueCell!16866)) (size!43026 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87999)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1313628 (= res!872194 (and (= (size!43026 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!43025 _keys!1628) (size!43026 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1313629 () Bool)

(declare-fun e!749328 () Bool)

(declare-fun e!749330 () Bool)

(assert (=> b!1313629 (= e!749328 (and e!749330 mapRes!54922))))

(declare-fun condMapEmpty!54922 () Bool)

(declare-fun mapDefault!54922 () ValueCell!16866)

(assert (=> b!1313629 (= condMapEmpty!54922 (= (arr!42475 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16866)) mapDefault!54922)))))

(declare-fun res!872198 () Bool)

(assert (=> start!111000 (=> (not res!872198) (not e!749327))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111000 (= res!872198 (validMask!0 mask!2040))))

(assert (=> start!111000 e!749327))

(assert (=> start!111000 tp!104720))

(declare-fun array_inv!32063 (array!87997) Bool)

(assert (=> start!111000 (array_inv!32063 _keys!1628)))

(assert (=> start!111000 true))

(assert (=> start!111000 tp_is_empty!35529))

(declare-fun array_inv!32064 (array!87999) Bool)

(assert (=> start!111000 (and (array_inv!32064 _values!1354) e!749328)))

(declare-fun b!1313630 () Bool)

(assert (=> b!1313630 (= e!749330 tp_is_empty!35529)))

(declare-fun mapNonEmpty!54922 () Bool)

(declare-fun tp!104719 () Bool)

(assert (=> mapNonEmpty!54922 (= mapRes!54922 (and tp!104719 e!749326))))

(declare-fun mapRest!54922 () (Array (_ BitVec 32) ValueCell!16866))

(declare-fun mapKey!54922 () (_ BitVec 32))

(declare-fun mapValue!54922 () ValueCell!16866)

(assert (=> mapNonEmpty!54922 (= (arr!42475 _values!1354) (store mapRest!54922 mapKey!54922 mapValue!54922))))

(declare-fun b!1313631 () Bool)

(assert (=> b!1313631 (= e!749327 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun zeroValue!1296 () V!52475)

(declare-fun lt!585640 () Bool)

(declare-fun minValue!1296 () V!52475)

(declare-datatypes ((tuple2!23170 0))(
  ( (tuple2!23171 (_1!11595 (_ BitVec 64)) (_2!11595 V!52475)) )
))
(declare-datatypes ((List!30333 0))(
  ( (Nil!30330) (Cons!30329 (h!31538 tuple2!23170) (t!43946 List!30333)) )
))
(declare-datatypes ((ListLongMap!20839 0))(
  ( (ListLongMap!20840 (toList!10435 List!30333)) )
))
(declare-fun contains!8521 (ListLongMap!20839 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5391 (array!87997 array!87999 (_ BitVec 32) (_ BitVec 32) V!52475 V!52475 (_ BitVec 32) Int) ListLongMap!20839)

(assert (=> b!1313631 (= lt!585640 (contains!8521 (getCurrentListMap!5391 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1313632 () Bool)

(declare-fun res!872197 () Bool)

(assert (=> b!1313632 (=> (not res!872197) (not e!749327))))

(declare-datatypes ((List!30334 0))(
  ( (Nil!30331) (Cons!30330 (h!31539 (_ BitVec 64)) (t!43947 List!30334)) )
))
(declare-fun arrayNoDuplicates!0 (array!87997 (_ BitVec 32) List!30334) Bool)

(assert (=> b!1313632 (= res!872197 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30331))))

(assert (= (and start!111000 res!872198) b!1313628))

(assert (= (and b!1313628 res!872194) b!1313627))

(assert (= (and b!1313627 res!872196) b!1313632))

(assert (= (and b!1313632 res!872197) b!1313626))

(assert (= (and b!1313626 res!872195) b!1313631))

(assert (= (and b!1313629 condMapEmpty!54922) mapIsEmpty!54922))

(assert (= (and b!1313629 (not condMapEmpty!54922)) mapNonEmpty!54922))

(get-info :version)

(assert (= (and mapNonEmpty!54922 ((_ is ValueCellFull!16866) mapValue!54922)) b!1313625))

(assert (= (and b!1313629 ((_ is ValueCellFull!16866) mapDefault!54922)) b!1313630))

(assert (= start!111000 b!1313629))

(declare-fun m!1202419 () Bool)

(assert (=> start!111000 m!1202419))

(declare-fun m!1202421 () Bool)

(assert (=> start!111000 m!1202421))

(declare-fun m!1202423 () Bool)

(assert (=> start!111000 m!1202423))

(declare-fun m!1202425 () Bool)

(assert (=> b!1313632 m!1202425))

(declare-fun m!1202427 () Bool)

(assert (=> b!1313627 m!1202427))

(declare-fun m!1202429 () Bool)

(assert (=> mapNonEmpty!54922 m!1202429))

(declare-fun m!1202431 () Bool)

(assert (=> b!1313631 m!1202431))

(assert (=> b!1313631 m!1202431))

(declare-fun m!1202433 () Bool)

(assert (=> b!1313631 m!1202433))

(check-sat (not mapNonEmpty!54922) (not b!1313632) b_and!48017 (not b_next!29799) (not start!111000) tp_is_empty!35529 (not b!1313627) (not b!1313631))
(check-sat b_and!48017 (not b_next!29799))
