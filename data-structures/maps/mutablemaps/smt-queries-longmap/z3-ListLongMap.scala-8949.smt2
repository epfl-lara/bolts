; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108458 () Bool)

(assert start!108458)

(declare-fun b_free!27969 () Bool)

(declare-fun b_next!27969 () Bool)

(assert (=> start!108458 (= b_free!27969 (not b_next!27969))))

(declare-fun tp!99018 () Bool)

(declare-fun b_and!46039 () Bool)

(assert (=> start!108458 (= tp!99018 b_and!46039)))

(declare-fun b!1279539 () Bool)

(declare-fun e!731107 () Bool)

(declare-fun tp_is_empty!33609 () Bool)

(assert (=> b!1279539 (= e!731107 tp_is_empty!33609)))

(declare-fun b!1279540 () Bool)

(declare-fun res!850053 () Bool)

(declare-fun e!731106 () Bool)

(assert (=> b!1279540 (=> (not res!850053) (not e!731106))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!84253 0))(
  ( (array!84254 (arr!40626 (Array (_ BitVec 32) (_ BitVec 64))) (size!41177 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84253)

(assert (=> b!1279540 (= res!850053 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41177 _keys!1741))))))

(declare-fun b!1279541 () Bool)

(declare-fun res!850057 () Bool)

(assert (=> b!1279541 (=> (not res!850057) (not e!731106))))

(declare-datatypes ((List!28957 0))(
  ( (Nil!28954) (Cons!28953 (h!30162 (_ BitVec 64)) (t!42504 List!28957)) )
))
(declare-fun arrayNoDuplicates!0 (array!84253 (_ BitVec 32) List!28957) Bool)

(assert (=> b!1279541 (= res!850057 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!28954))))

(declare-fun b!1279542 () Bool)

(declare-fun res!850055 () Bool)

(assert (=> b!1279542 (=> (not res!850055) (not e!731106))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84253 (_ BitVec 32)) Bool)

(assert (=> b!1279542 (= res!850055 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1279543 () Bool)

(declare-fun e!731109 () Bool)

(declare-fun e!731108 () Bool)

(declare-fun mapRes!51965 () Bool)

(assert (=> b!1279543 (= e!731109 (and e!731108 mapRes!51965))))

(declare-fun condMapEmpty!51965 () Bool)

(declare-datatypes ((V!49915 0))(
  ( (V!49916 (val!16879 Int)) )
))
(declare-datatypes ((ValueCell!15906 0))(
  ( (ValueCellFull!15906 (v!19477 V!49915)) (EmptyCell!15906) )
))
(declare-datatypes ((array!84255 0))(
  ( (array!84256 (arr!40627 (Array (_ BitVec 32) ValueCell!15906)) (size!41178 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84255)

(declare-fun mapDefault!51965 () ValueCell!15906)

(assert (=> b!1279543 (= condMapEmpty!51965 (= (arr!40627 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!15906)) mapDefault!51965)))))

(declare-fun mapNonEmpty!51965 () Bool)

(declare-fun tp!99017 () Bool)

(assert (=> mapNonEmpty!51965 (= mapRes!51965 (and tp!99017 e!731107))))

(declare-fun mapValue!51965 () ValueCell!15906)

(declare-fun mapRest!51965 () (Array (_ BitVec 32) ValueCell!15906))

(declare-fun mapKey!51965 () (_ BitVec 32))

(assert (=> mapNonEmpty!51965 (= (arr!40627 _values!1445) (store mapRest!51965 mapKey!51965 mapValue!51965))))

(declare-fun res!850054 () Bool)

(assert (=> start!108458 (=> (not res!850054) (not e!731106))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108458 (= res!850054 (validMask!0 mask!2175))))

(assert (=> start!108458 e!731106))

(assert (=> start!108458 tp_is_empty!33609))

(assert (=> start!108458 true))

(declare-fun array_inv!30819 (array!84255) Bool)

(assert (=> start!108458 (and (array_inv!30819 _values!1445) e!731109)))

(declare-fun array_inv!30820 (array!84253) Bool)

(assert (=> start!108458 (array_inv!30820 _keys!1741)))

(assert (=> start!108458 tp!99018))

(declare-fun b!1279544 () Bool)

(assert (=> b!1279544 (= e!731106 (bvsgt from!2144 (size!41177 _keys!1741)))))

(declare-fun b!1279545 () Bool)

(declare-fun res!850058 () Bool)

(assert (=> b!1279545 (=> (not res!850058) (not e!731106))))

(declare-fun minValue!1387 () V!49915)

(declare-fun zeroValue!1387 () V!49915)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!21746 0))(
  ( (tuple2!21747 (_1!10883 (_ BitVec 64)) (_2!10883 V!49915)) )
))
(declare-datatypes ((List!28958 0))(
  ( (Nil!28955) (Cons!28954 (h!30163 tuple2!21746) (t!42505 List!28958)) )
))
(declare-datatypes ((ListLongMap!19415 0))(
  ( (ListLongMap!19416 (toList!9723 List!28958)) )
))
(declare-fun contains!7776 (ListLongMap!19415 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4743 (array!84253 array!84255 (_ BitVec 32) (_ BitVec 32) V!49915 V!49915 (_ BitVec 32) Int) ListLongMap!19415)

(assert (=> b!1279545 (= res!850058 (contains!7776 (getCurrentListMap!4743 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun mapIsEmpty!51965 () Bool)

(assert (=> mapIsEmpty!51965 mapRes!51965))

(declare-fun b!1279546 () Bool)

(declare-fun res!850056 () Bool)

(assert (=> b!1279546 (=> (not res!850056) (not e!731106))))

(assert (=> b!1279546 (= res!850056 (and (= (size!41178 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41177 _keys!1741) (size!41178 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1279547 () Bool)

(assert (=> b!1279547 (= e!731108 tp_is_empty!33609)))

(assert (= (and start!108458 res!850054) b!1279546))

(assert (= (and b!1279546 res!850056) b!1279542))

(assert (= (and b!1279542 res!850055) b!1279541))

(assert (= (and b!1279541 res!850057) b!1279540))

(assert (= (and b!1279540 res!850053) b!1279545))

(assert (= (and b!1279545 res!850058) b!1279544))

(assert (= (and b!1279543 condMapEmpty!51965) mapIsEmpty!51965))

(assert (= (and b!1279543 (not condMapEmpty!51965)) mapNonEmpty!51965))

(get-info :version)

(assert (= (and mapNonEmpty!51965 ((_ is ValueCellFull!15906) mapValue!51965)) b!1279539))

(assert (= (and b!1279543 ((_ is ValueCellFull!15906) mapDefault!51965)) b!1279547))

(assert (= start!108458 b!1279543))

(declare-fun m!1174479 () Bool)

(assert (=> b!1279541 m!1174479))

(declare-fun m!1174481 () Bool)

(assert (=> start!108458 m!1174481))

(declare-fun m!1174483 () Bool)

(assert (=> start!108458 m!1174483))

(declare-fun m!1174485 () Bool)

(assert (=> start!108458 m!1174485))

(declare-fun m!1174487 () Bool)

(assert (=> mapNonEmpty!51965 m!1174487))

(declare-fun m!1174489 () Bool)

(assert (=> b!1279542 m!1174489))

(declare-fun m!1174491 () Bool)

(assert (=> b!1279545 m!1174491))

(assert (=> b!1279545 m!1174491))

(declare-fun m!1174493 () Bool)

(assert (=> b!1279545 m!1174493))

(check-sat (not mapNonEmpty!51965) b_and!46039 (not b_next!27969) (not b!1279545) tp_is_empty!33609 (not start!108458) (not b!1279542) (not b!1279541))
(check-sat b_and!46039 (not b_next!27969))
