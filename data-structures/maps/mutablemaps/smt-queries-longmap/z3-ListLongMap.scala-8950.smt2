; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108464 () Bool)

(assert start!108464)

(declare-fun b_free!27975 () Bool)

(declare-fun b_next!27975 () Bool)

(assert (=> start!108464 (= b_free!27975 (not b_next!27975))))

(declare-fun tp!99036 () Bool)

(declare-fun b_and!46045 () Bool)

(assert (=> start!108464 (= tp!99036 b_and!46045)))

(declare-fun res!850104 () Bool)

(declare-fun e!731151 () Bool)

(assert (=> start!108464 (=> (not res!850104) (not e!731151))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108464 (= res!850104 (validMask!0 mask!2175))))

(assert (=> start!108464 e!731151))

(declare-fun tp_is_empty!33615 () Bool)

(assert (=> start!108464 tp_is_empty!33615))

(assert (=> start!108464 true))

(declare-datatypes ((V!49923 0))(
  ( (V!49924 (val!16882 Int)) )
))
(declare-datatypes ((ValueCell!15909 0))(
  ( (ValueCellFull!15909 (v!19480 V!49923)) (EmptyCell!15909) )
))
(declare-datatypes ((array!84265 0))(
  ( (array!84266 (arr!40632 (Array (_ BitVec 32) ValueCell!15909)) (size!41183 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84265)

(declare-fun e!731154 () Bool)

(declare-fun array_inv!30825 (array!84265) Bool)

(assert (=> start!108464 (and (array_inv!30825 _values!1445) e!731154)))

(declare-datatypes ((array!84267 0))(
  ( (array!84268 (arr!40633 (Array (_ BitVec 32) (_ BitVec 64))) (size!41184 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84267)

(declare-fun array_inv!30826 (array!84267) Bool)

(assert (=> start!108464 (array_inv!30826 _keys!1741)))

(assert (=> start!108464 tp!99036))

(declare-fun b!1279615 () Bool)

(declare-fun res!850105 () Bool)

(assert (=> b!1279615 (=> (not res!850105) (not e!731151))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1279615 (= res!850105 (and (= (size!41183 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41184 _keys!1741) (size!41183 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1279616 () Bool)

(declare-fun e!731152 () Bool)

(assert (=> b!1279616 (= e!731152 tp_is_empty!33615)))

(declare-fun b!1279617 () Bool)

(declare-fun res!850103 () Bool)

(assert (=> b!1279617 (=> (not res!850103) (not e!731151))))

(declare-datatypes ((List!28962 0))(
  ( (Nil!28959) (Cons!28958 (h!30167 (_ BitVec 64)) (t!42509 List!28962)) )
))
(declare-fun arrayNoDuplicates!0 (array!84267 (_ BitVec 32) List!28962) Bool)

(assert (=> b!1279617 (= res!850103 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!28959))))

(declare-fun b!1279618 () Bool)

(assert (=> b!1279618 (= e!731151 false)))

(declare-fun zeroValue!1387 () V!49923)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun minValue!1387 () V!49923)

(declare-fun lt!575971 () Bool)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!21750 0))(
  ( (tuple2!21751 (_1!10885 (_ BitVec 64)) (_2!10885 V!49923)) )
))
(declare-datatypes ((List!28963 0))(
  ( (Nil!28960) (Cons!28959 (h!30168 tuple2!21750) (t!42510 List!28963)) )
))
(declare-datatypes ((ListLongMap!19419 0))(
  ( (ListLongMap!19420 (toList!9725 List!28963)) )
))
(declare-fun contains!7778 (ListLongMap!19419 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4745 (array!84267 array!84265 (_ BitVec 32) (_ BitVec 32) V!49923 V!49923 (_ BitVec 32) Int) ListLongMap!19419)

(assert (=> b!1279618 (= lt!575971 (contains!7778 (getCurrentListMap!4745 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1279619 () Bool)

(declare-fun res!850102 () Bool)

(assert (=> b!1279619 (=> (not res!850102) (not e!731151))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84267 (_ BitVec 32)) Bool)

(assert (=> b!1279619 (= res!850102 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun mapNonEmpty!51974 () Bool)

(declare-fun mapRes!51974 () Bool)

(declare-fun tp!99035 () Bool)

(declare-fun e!731153 () Bool)

(assert (=> mapNonEmpty!51974 (= mapRes!51974 (and tp!99035 e!731153))))

(declare-fun mapRest!51974 () (Array (_ BitVec 32) ValueCell!15909))

(declare-fun mapKey!51974 () (_ BitVec 32))

(declare-fun mapValue!51974 () ValueCell!15909)

(assert (=> mapNonEmpty!51974 (= (arr!40632 _values!1445) (store mapRest!51974 mapKey!51974 mapValue!51974))))

(declare-fun b!1279620 () Bool)

(declare-fun res!850106 () Bool)

(assert (=> b!1279620 (=> (not res!850106) (not e!731151))))

(assert (=> b!1279620 (= res!850106 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41184 _keys!1741))))))

(declare-fun mapIsEmpty!51974 () Bool)

(assert (=> mapIsEmpty!51974 mapRes!51974))

(declare-fun b!1279621 () Bool)

(assert (=> b!1279621 (= e!731154 (and e!731152 mapRes!51974))))

(declare-fun condMapEmpty!51974 () Bool)

(declare-fun mapDefault!51974 () ValueCell!15909)

(assert (=> b!1279621 (= condMapEmpty!51974 (= (arr!40632 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!15909)) mapDefault!51974)))))

(declare-fun b!1279622 () Bool)

(assert (=> b!1279622 (= e!731153 tp_is_empty!33615)))

(assert (= (and start!108464 res!850104) b!1279615))

(assert (= (and b!1279615 res!850105) b!1279619))

(assert (= (and b!1279619 res!850102) b!1279617))

(assert (= (and b!1279617 res!850103) b!1279620))

(assert (= (and b!1279620 res!850106) b!1279618))

(assert (= (and b!1279621 condMapEmpty!51974) mapIsEmpty!51974))

(assert (= (and b!1279621 (not condMapEmpty!51974)) mapNonEmpty!51974))

(get-info :version)

(assert (= (and mapNonEmpty!51974 ((_ is ValueCellFull!15909) mapValue!51974)) b!1279622))

(assert (= (and b!1279621 ((_ is ValueCellFull!15909) mapDefault!51974)) b!1279616))

(assert (= start!108464 b!1279621))

(declare-fun m!1174527 () Bool)

(assert (=> b!1279619 m!1174527))

(declare-fun m!1174529 () Bool)

(assert (=> mapNonEmpty!51974 m!1174529))

(declare-fun m!1174531 () Bool)

(assert (=> start!108464 m!1174531))

(declare-fun m!1174533 () Bool)

(assert (=> start!108464 m!1174533))

(declare-fun m!1174535 () Bool)

(assert (=> start!108464 m!1174535))

(declare-fun m!1174537 () Bool)

(assert (=> b!1279617 m!1174537))

(declare-fun m!1174539 () Bool)

(assert (=> b!1279618 m!1174539))

(assert (=> b!1279618 m!1174539))

(declare-fun m!1174541 () Bool)

(assert (=> b!1279618 m!1174541))

(check-sat (not b!1279619) (not mapNonEmpty!51974) (not b!1279618) (not start!108464) (not b!1279617) b_and!46045 tp_is_empty!33615 (not b_next!27975))
(check-sat b_and!46045 (not b_next!27975))
