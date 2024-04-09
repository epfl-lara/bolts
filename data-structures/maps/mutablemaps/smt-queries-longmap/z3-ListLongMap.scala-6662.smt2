; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83974 () Bool)

(assert start!83974)

(declare-fun mapIsEmpty!36152 () Bool)

(declare-fun mapRes!36152 () Bool)

(assert (=> mapIsEmpty!36152 mapRes!36152))

(declare-fun b!980875 () Bool)

(declare-fun e!552952 () Bool)

(declare-fun e!552953 () Bool)

(assert (=> b!980875 (= e!552952 (and e!552953 mapRes!36152))))

(declare-fun condMapEmpty!36152 () Bool)

(declare-datatypes ((V!35315 0))(
  ( (V!35316 (val!11425 Int)) )
))
(declare-datatypes ((ValueCell!10893 0))(
  ( (ValueCellFull!10893 (v!13987 V!35315)) (EmptyCell!10893) )
))
(declare-datatypes ((array!61495 0))(
  ( (array!61496 (arr!29601 (Array (_ BitVec 32) ValueCell!10893)) (size!30081 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61495)

(declare-fun mapDefault!36152 () ValueCell!10893)

(assert (=> b!980875 (= condMapEmpty!36152 (= (arr!29601 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10893)) mapDefault!36152)))))

(declare-fun res!656518 () Bool)

(declare-fun e!552955 () Bool)

(assert (=> start!83974 (=> (not res!656518) (not e!552955))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83974 (= res!656518 (validMask!0 mask!1948))))

(assert (=> start!83974 e!552955))

(assert (=> start!83974 true))

(declare-fun array_inv!22771 (array!61495) Bool)

(assert (=> start!83974 (and (array_inv!22771 _values!1278) e!552952)))

(declare-datatypes ((array!61497 0))(
  ( (array!61498 (arr!29602 (Array (_ BitVec 32) (_ BitVec 64))) (size!30082 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61497)

(declare-fun array_inv!22772 (array!61497) Bool)

(assert (=> start!83974 (array_inv!22772 _keys!1544)))

(declare-fun b!980876 () Bool)

(assert (=> b!980876 (= e!552955 false)))

(declare-fun lt!435586 () Bool)

(declare-datatypes ((List!20651 0))(
  ( (Nil!20648) (Cons!20647 (h!21809 (_ BitVec 64)) (t!29342 List!20651)) )
))
(declare-fun arrayNoDuplicates!0 (array!61497 (_ BitVec 32) List!20651) Bool)

(assert (=> b!980876 (= lt!435586 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20648))))

(declare-fun b!980877 () Bool)

(declare-fun res!656520 () Bool)

(assert (=> b!980877 (=> (not res!656520) (not e!552955))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!980877 (= res!656520 (and (= (size!30081 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30082 _keys!1544) (size!30081 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!36152 () Bool)

(declare-fun tp!68666 () Bool)

(declare-fun e!552954 () Bool)

(assert (=> mapNonEmpty!36152 (= mapRes!36152 (and tp!68666 e!552954))))

(declare-fun mapRest!36152 () (Array (_ BitVec 32) ValueCell!10893))

(declare-fun mapValue!36152 () ValueCell!10893)

(declare-fun mapKey!36152 () (_ BitVec 32))

(assert (=> mapNonEmpty!36152 (= (arr!29601 _values!1278) (store mapRest!36152 mapKey!36152 mapValue!36152))))

(declare-fun b!980878 () Bool)

(declare-fun res!656519 () Bool)

(assert (=> b!980878 (=> (not res!656519) (not e!552955))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61497 (_ BitVec 32)) Bool)

(assert (=> b!980878 (= res!656519 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!980879 () Bool)

(declare-fun tp_is_empty!22749 () Bool)

(assert (=> b!980879 (= e!552953 tp_is_empty!22749)))

(declare-fun b!980880 () Bool)

(assert (=> b!980880 (= e!552954 tp_is_empty!22749)))

(assert (= (and start!83974 res!656518) b!980877))

(assert (= (and b!980877 res!656520) b!980878))

(assert (= (and b!980878 res!656519) b!980876))

(assert (= (and b!980875 condMapEmpty!36152) mapIsEmpty!36152))

(assert (= (and b!980875 (not condMapEmpty!36152)) mapNonEmpty!36152))

(get-info :version)

(assert (= (and mapNonEmpty!36152 ((_ is ValueCellFull!10893) mapValue!36152)) b!980880))

(assert (= (and b!980875 ((_ is ValueCellFull!10893) mapDefault!36152)) b!980879))

(assert (= start!83974 b!980875))

(declare-fun m!908495 () Bool)

(assert (=> start!83974 m!908495))

(declare-fun m!908497 () Bool)

(assert (=> start!83974 m!908497))

(declare-fun m!908499 () Bool)

(assert (=> start!83974 m!908499))

(declare-fun m!908501 () Bool)

(assert (=> b!980876 m!908501))

(declare-fun m!908503 () Bool)

(assert (=> mapNonEmpty!36152 m!908503))

(declare-fun m!908505 () Bool)

(assert (=> b!980878 m!908505))

(check-sat (not b!980876) (not b!980878) (not mapNonEmpty!36152) tp_is_empty!22749 (not start!83974))
(check-sat)
