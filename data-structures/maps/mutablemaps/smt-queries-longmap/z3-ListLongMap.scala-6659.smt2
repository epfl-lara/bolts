; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83956 () Bool)

(assert start!83956)

(declare-fun b!980713 () Bool)

(declare-fun e!552817 () Bool)

(assert (=> b!980713 (= e!552817 false)))

(declare-fun lt!435559 () Bool)

(declare-datatypes ((array!61469 0))(
  ( (array!61470 (arr!29588 (Array (_ BitVec 32) (_ BitVec 64))) (size!30068 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61469)

(declare-datatypes ((List!20647 0))(
  ( (Nil!20644) (Cons!20643 (h!21805 (_ BitVec 64)) (t!29338 List!20647)) )
))
(declare-fun arrayNoDuplicates!0 (array!61469 (_ BitVec 32) List!20647) Bool)

(assert (=> b!980713 (= lt!435559 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20644))))

(declare-fun b!980714 () Bool)

(declare-fun res!656439 () Bool)

(assert (=> b!980714 (=> (not res!656439) (not e!552817))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61469 (_ BitVec 32)) Bool)

(assert (=> b!980714 (= res!656439 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun res!656438 () Bool)

(assert (=> start!83956 (=> (not res!656438) (not e!552817))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83956 (= res!656438 (validMask!0 mask!1948))))

(assert (=> start!83956 e!552817))

(assert (=> start!83956 true))

(declare-datatypes ((V!35291 0))(
  ( (V!35292 (val!11416 Int)) )
))
(declare-datatypes ((ValueCell!10884 0))(
  ( (ValueCellFull!10884 (v!13978 V!35291)) (EmptyCell!10884) )
))
(declare-datatypes ((array!61471 0))(
  ( (array!61472 (arr!29589 (Array (_ BitVec 32) ValueCell!10884)) (size!30069 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61471)

(declare-fun e!552819 () Bool)

(declare-fun array_inv!22763 (array!61471) Bool)

(assert (=> start!83956 (and (array_inv!22763 _values!1278) e!552819)))

(declare-fun array_inv!22764 (array!61469) Bool)

(assert (=> start!83956 (array_inv!22764 _keys!1544)))

(declare-fun b!980715 () Bool)

(declare-fun e!552818 () Bool)

(declare-fun tp_is_empty!22731 () Bool)

(assert (=> b!980715 (= e!552818 tp_is_empty!22731)))

(declare-fun mapNonEmpty!36125 () Bool)

(declare-fun mapRes!36125 () Bool)

(declare-fun tp!68639 () Bool)

(declare-fun e!552820 () Bool)

(assert (=> mapNonEmpty!36125 (= mapRes!36125 (and tp!68639 e!552820))))

(declare-fun mapValue!36125 () ValueCell!10884)

(declare-fun mapRest!36125 () (Array (_ BitVec 32) ValueCell!10884))

(declare-fun mapKey!36125 () (_ BitVec 32))

(assert (=> mapNonEmpty!36125 (= (arr!29589 _values!1278) (store mapRest!36125 mapKey!36125 mapValue!36125))))

(declare-fun b!980716 () Bool)

(assert (=> b!980716 (= e!552819 (and e!552818 mapRes!36125))))

(declare-fun condMapEmpty!36125 () Bool)

(declare-fun mapDefault!36125 () ValueCell!10884)

(assert (=> b!980716 (= condMapEmpty!36125 (= (arr!29589 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10884)) mapDefault!36125)))))

(declare-fun b!980717 () Bool)

(assert (=> b!980717 (= e!552820 tp_is_empty!22731)))

(declare-fun mapIsEmpty!36125 () Bool)

(assert (=> mapIsEmpty!36125 mapRes!36125))

(declare-fun b!980718 () Bool)

(declare-fun res!656437 () Bool)

(assert (=> b!980718 (=> (not res!656437) (not e!552817))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!980718 (= res!656437 (and (= (size!30069 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30068 _keys!1544) (size!30069 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(assert (= (and start!83956 res!656438) b!980718))

(assert (= (and b!980718 res!656437) b!980714))

(assert (= (and b!980714 res!656439) b!980713))

(assert (= (and b!980716 condMapEmpty!36125) mapIsEmpty!36125))

(assert (= (and b!980716 (not condMapEmpty!36125)) mapNonEmpty!36125))

(get-info :version)

(assert (= (and mapNonEmpty!36125 ((_ is ValueCellFull!10884) mapValue!36125)) b!980717))

(assert (= (and b!980716 ((_ is ValueCellFull!10884) mapDefault!36125)) b!980715))

(assert (= start!83956 b!980716))

(declare-fun m!908387 () Bool)

(assert (=> b!980713 m!908387))

(declare-fun m!908389 () Bool)

(assert (=> b!980714 m!908389))

(declare-fun m!908391 () Bool)

(assert (=> start!83956 m!908391))

(declare-fun m!908393 () Bool)

(assert (=> start!83956 m!908393))

(declare-fun m!908395 () Bool)

(assert (=> start!83956 m!908395))

(declare-fun m!908397 () Bool)

(assert (=> mapNonEmpty!36125 m!908397))

(check-sat (not b!980713) (not start!83956) tp_is_empty!22731 (not b!980714) (not mapNonEmpty!36125))
(check-sat)
