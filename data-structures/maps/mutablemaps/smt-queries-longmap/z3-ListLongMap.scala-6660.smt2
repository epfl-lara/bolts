; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83962 () Bool)

(assert start!83962)

(declare-fun b!980767 () Bool)

(declare-fun res!656465 () Bool)

(declare-fun e!552866 () Bool)

(assert (=> b!980767 (=> (not res!656465) (not e!552866))))

(declare-datatypes ((array!61477 0))(
  ( (array!61478 (arr!29592 (Array (_ BitVec 32) (_ BitVec 64))) (size!30072 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61477)

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61477 (_ BitVec 32)) Bool)

(assert (=> b!980767 (= res!656465 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!980768 () Bool)

(assert (=> b!980768 (= e!552866 false)))

(declare-fun lt!435568 () Bool)

(declare-datatypes ((List!20648 0))(
  ( (Nil!20645) (Cons!20644 (h!21806 (_ BitVec 64)) (t!29339 List!20648)) )
))
(declare-fun arrayNoDuplicates!0 (array!61477 (_ BitVec 32) List!20648) Bool)

(assert (=> b!980768 (= lt!435568 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20645))))

(declare-fun b!980769 () Bool)

(declare-fun e!552862 () Bool)

(declare-fun tp_is_empty!22737 () Bool)

(assert (=> b!980769 (= e!552862 tp_is_empty!22737)))

(declare-fun b!980770 () Bool)

(declare-fun res!656464 () Bool)

(assert (=> b!980770 (=> (not res!656464) (not e!552866))))

(declare-datatypes ((V!35299 0))(
  ( (V!35300 (val!11419 Int)) )
))
(declare-datatypes ((ValueCell!10887 0))(
  ( (ValueCellFull!10887 (v!13981 V!35299)) (EmptyCell!10887) )
))
(declare-datatypes ((array!61479 0))(
  ( (array!61480 (arr!29593 (Array (_ BitVec 32) ValueCell!10887)) (size!30073 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61479)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!980770 (= res!656464 (and (= (size!30073 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30072 _keys!1544) (size!30073 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!36134 () Bool)

(declare-fun mapRes!36134 () Bool)

(declare-fun tp!68648 () Bool)

(assert (=> mapNonEmpty!36134 (= mapRes!36134 (and tp!68648 e!552862))))

(declare-fun mapKey!36134 () (_ BitVec 32))

(declare-fun mapValue!36134 () ValueCell!10887)

(declare-fun mapRest!36134 () (Array (_ BitVec 32) ValueCell!10887))

(assert (=> mapNonEmpty!36134 (= (arr!29593 _values!1278) (store mapRest!36134 mapKey!36134 mapValue!36134))))

(declare-fun b!980771 () Bool)

(declare-fun e!552863 () Bool)

(declare-fun e!552865 () Bool)

(assert (=> b!980771 (= e!552863 (and e!552865 mapRes!36134))))

(declare-fun condMapEmpty!36134 () Bool)

(declare-fun mapDefault!36134 () ValueCell!10887)

(assert (=> b!980771 (= condMapEmpty!36134 (= (arr!29593 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10887)) mapDefault!36134)))))

(declare-fun res!656466 () Bool)

(assert (=> start!83962 (=> (not res!656466) (not e!552866))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83962 (= res!656466 (validMask!0 mask!1948))))

(assert (=> start!83962 e!552866))

(assert (=> start!83962 true))

(declare-fun array_inv!22765 (array!61479) Bool)

(assert (=> start!83962 (and (array_inv!22765 _values!1278) e!552863)))

(declare-fun array_inv!22766 (array!61477) Bool)

(assert (=> start!83962 (array_inv!22766 _keys!1544)))

(declare-fun mapIsEmpty!36134 () Bool)

(assert (=> mapIsEmpty!36134 mapRes!36134))

(declare-fun b!980772 () Bool)

(assert (=> b!980772 (= e!552865 tp_is_empty!22737)))

(assert (= (and start!83962 res!656466) b!980770))

(assert (= (and b!980770 res!656464) b!980767))

(assert (= (and b!980767 res!656465) b!980768))

(assert (= (and b!980771 condMapEmpty!36134) mapIsEmpty!36134))

(assert (= (and b!980771 (not condMapEmpty!36134)) mapNonEmpty!36134))

(get-info :version)

(assert (= (and mapNonEmpty!36134 ((_ is ValueCellFull!10887) mapValue!36134)) b!980769))

(assert (= (and b!980771 ((_ is ValueCellFull!10887) mapDefault!36134)) b!980772))

(assert (= start!83962 b!980771))

(declare-fun m!908423 () Bool)

(assert (=> b!980767 m!908423))

(declare-fun m!908425 () Bool)

(assert (=> b!980768 m!908425))

(declare-fun m!908427 () Bool)

(assert (=> mapNonEmpty!36134 m!908427))

(declare-fun m!908429 () Bool)

(assert (=> start!83962 m!908429))

(declare-fun m!908431 () Bool)

(assert (=> start!83962 m!908431))

(declare-fun m!908433 () Bool)

(assert (=> start!83962 m!908433))

(check-sat (not b!980768) (not mapNonEmpty!36134) tp_is_empty!22737 (not b!980767) (not start!83962))
(check-sat)
