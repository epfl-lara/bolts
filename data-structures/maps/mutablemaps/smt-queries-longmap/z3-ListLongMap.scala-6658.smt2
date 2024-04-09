; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83950 () Bool)

(assert start!83950)

(declare-fun b!980659 () Bool)

(declare-fun e!552774 () Bool)

(declare-fun tp_is_empty!22725 () Bool)

(assert (=> b!980659 (= e!552774 tp_is_empty!22725)))

(declare-fun mapIsEmpty!36116 () Bool)

(declare-fun mapRes!36116 () Bool)

(assert (=> mapIsEmpty!36116 mapRes!36116))

(declare-fun b!980660 () Bool)

(declare-fun e!552776 () Bool)

(assert (=> b!980660 (= e!552776 (and e!552774 mapRes!36116))))

(declare-fun condMapEmpty!36116 () Bool)

(declare-datatypes ((V!35283 0))(
  ( (V!35284 (val!11413 Int)) )
))
(declare-datatypes ((ValueCell!10881 0))(
  ( (ValueCellFull!10881 (v!13975 V!35283)) (EmptyCell!10881) )
))
(declare-datatypes ((array!61457 0))(
  ( (array!61458 (arr!29582 (Array (_ BitVec 32) ValueCell!10881)) (size!30062 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61457)

(declare-fun mapDefault!36116 () ValueCell!10881)

(assert (=> b!980660 (= condMapEmpty!36116 (= (arr!29582 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10881)) mapDefault!36116)))))

(declare-fun b!980661 () Bool)

(declare-fun e!552772 () Bool)

(assert (=> b!980661 (= e!552772 tp_is_empty!22725)))

(declare-fun b!980662 () Bool)

(declare-fun res!656412 () Bool)

(declare-fun e!552775 () Bool)

(assert (=> b!980662 (=> (not res!656412) (not e!552775))))

(declare-datatypes ((array!61459 0))(
  ( (array!61460 (arr!29583 (Array (_ BitVec 32) (_ BitVec 64))) (size!30063 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61459)

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61459 (_ BitVec 32)) Bool)

(assert (=> b!980662 (= res!656412 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun mapNonEmpty!36116 () Bool)

(declare-fun tp!68630 () Bool)

(assert (=> mapNonEmpty!36116 (= mapRes!36116 (and tp!68630 e!552772))))

(declare-fun mapRest!36116 () (Array (_ BitVec 32) ValueCell!10881))

(declare-fun mapValue!36116 () ValueCell!10881)

(declare-fun mapKey!36116 () (_ BitVec 32))

(assert (=> mapNonEmpty!36116 (= (arr!29582 _values!1278) (store mapRest!36116 mapKey!36116 mapValue!36116))))

(declare-fun res!656411 () Bool)

(assert (=> start!83950 (=> (not res!656411) (not e!552775))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83950 (= res!656411 (validMask!0 mask!1948))))

(assert (=> start!83950 e!552775))

(assert (=> start!83950 true))

(declare-fun array_inv!22757 (array!61457) Bool)

(assert (=> start!83950 (and (array_inv!22757 _values!1278) e!552776)))

(declare-fun array_inv!22758 (array!61459) Bool)

(assert (=> start!83950 (array_inv!22758 _keys!1544)))

(declare-fun b!980663 () Bool)

(declare-fun res!656410 () Bool)

(assert (=> b!980663 (=> (not res!656410) (not e!552775))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!980663 (= res!656410 (and (= (size!30062 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30063 _keys!1544) (size!30062 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!980664 () Bool)

(assert (=> b!980664 (= e!552775 false)))

(declare-fun lt!435550 () Bool)

(declare-datatypes ((List!20644 0))(
  ( (Nil!20641) (Cons!20640 (h!21802 (_ BitVec 64)) (t!29335 List!20644)) )
))
(declare-fun arrayNoDuplicates!0 (array!61459 (_ BitVec 32) List!20644) Bool)

(assert (=> b!980664 (= lt!435550 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20641))))

(assert (= (and start!83950 res!656411) b!980663))

(assert (= (and b!980663 res!656410) b!980662))

(assert (= (and b!980662 res!656412) b!980664))

(assert (= (and b!980660 condMapEmpty!36116) mapIsEmpty!36116))

(assert (= (and b!980660 (not condMapEmpty!36116)) mapNonEmpty!36116))

(get-info :version)

(assert (= (and mapNonEmpty!36116 ((_ is ValueCellFull!10881) mapValue!36116)) b!980661))

(assert (= (and b!980660 ((_ is ValueCellFull!10881) mapDefault!36116)) b!980659))

(assert (= start!83950 b!980660))

(declare-fun m!908351 () Bool)

(assert (=> b!980662 m!908351))

(declare-fun m!908353 () Bool)

(assert (=> mapNonEmpty!36116 m!908353))

(declare-fun m!908355 () Bool)

(assert (=> start!83950 m!908355))

(declare-fun m!908357 () Bool)

(assert (=> start!83950 m!908357))

(declare-fun m!908359 () Bool)

(assert (=> start!83950 m!908359))

(declare-fun m!908361 () Bool)

(assert (=> b!980664 m!908361))

(check-sat (not mapNonEmpty!36116) (not b!980664) (not start!83950) (not b!980662) tp_is_empty!22725)
(check-sat)
