; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108500 () Bool)

(assert start!108500)

(declare-fun b_free!28011 () Bool)

(declare-fun b_next!28011 () Bool)

(assert (=> start!108500 (= b_free!28011 (not b_next!28011))))

(declare-fun tp!99143 () Bool)

(declare-fun b_and!46081 () Bool)

(assert (=> start!108500 (= tp!99143 b_and!46081)))

(declare-fun b!1280047 () Bool)

(declare-fun res!850375 () Bool)

(declare-fun e!731421 () Bool)

(assert (=> b!1280047 (=> (not res!850375) (not e!731421))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!49971 0))(
  ( (V!49972 (val!16900 Int)) )
))
(declare-datatypes ((ValueCell!15927 0))(
  ( (ValueCellFull!15927 (v!19498 V!49971)) (EmptyCell!15927) )
))
(declare-datatypes ((array!84333 0))(
  ( (array!84334 (arr!40666 (Array (_ BitVec 32) ValueCell!15927)) (size!41217 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84333)

(declare-datatypes ((array!84335 0))(
  ( (array!84336 (arr!40667 (Array (_ BitVec 32) (_ BitVec 64))) (size!41218 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84335)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1280047 (= res!850375 (and (= (size!41217 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41218 _keys!1741) (size!41217 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!52028 () Bool)

(declare-fun mapRes!52028 () Bool)

(assert (=> mapIsEmpty!52028 mapRes!52028))

(declare-fun res!850376 () Bool)

(assert (=> start!108500 (=> (not res!850376) (not e!731421))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108500 (= res!850376 (validMask!0 mask!2175))))

(assert (=> start!108500 e!731421))

(declare-fun tp_is_empty!33651 () Bool)

(assert (=> start!108500 tp_is_empty!33651))

(assert (=> start!108500 true))

(declare-fun e!731423 () Bool)

(declare-fun array_inv!30855 (array!84333) Bool)

(assert (=> start!108500 (and (array_inv!30855 _values!1445) e!731423)))

(declare-fun array_inv!30856 (array!84335) Bool)

(assert (=> start!108500 (array_inv!30856 _keys!1741)))

(assert (=> start!108500 tp!99143))

(declare-fun mapNonEmpty!52028 () Bool)

(declare-fun tp!99144 () Bool)

(declare-fun e!731425 () Bool)

(assert (=> mapNonEmpty!52028 (= mapRes!52028 (and tp!99144 e!731425))))

(declare-fun mapRest!52028 () (Array (_ BitVec 32) ValueCell!15927))

(declare-fun mapKey!52028 () (_ BitVec 32))

(declare-fun mapValue!52028 () ValueCell!15927)

(assert (=> mapNonEmpty!52028 (= (arr!40666 _values!1445) (store mapRest!52028 mapKey!52028 mapValue!52028))))

(declare-fun b!1280048 () Bool)

(declare-fun e!731424 () Bool)

(assert (=> b!1280048 (= e!731424 tp_is_empty!33651)))

(declare-fun b!1280049 () Bool)

(declare-fun res!850374 () Bool)

(assert (=> b!1280049 (=> (not res!850374) (not e!731421))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84335 (_ BitVec 32)) Bool)

(assert (=> b!1280049 (= res!850374 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1280050 () Bool)

(assert (=> b!1280050 (= e!731423 (and e!731424 mapRes!52028))))

(declare-fun condMapEmpty!52028 () Bool)

(declare-fun mapDefault!52028 () ValueCell!15927)

(assert (=> b!1280050 (= condMapEmpty!52028 (= (arr!40666 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!15927)) mapDefault!52028)))))

(declare-fun b!1280051 () Bool)

(assert (=> b!1280051 (= e!731425 tp_is_empty!33651)))

(declare-fun b!1280052 () Bool)

(declare-fun res!850373 () Bool)

(assert (=> b!1280052 (=> (not res!850373) (not e!731421))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1280052 (= res!850373 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41218 _keys!1741))))))

(declare-fun b!1280053 () Bool)

(declare-fun res!850372 () Bool)

(assert (=> b!1280053 (=> (not res!850372) (not e!731421))))

(declare-datatypes ((List!28985 0))(
  ( (Nil!28982) (Cons!28981 (h!30190 (_ BitVec 64)) (t!42532 List!28985)) )
))
(declare-fun arrayNoDuplicates!0 (array!84335 (_ BitVec 32) List!28985) Bool)

(assert (=> b!1280053 (= res!850372 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!28982))))

(declare-fun b!1280054 () Bool)

(assert (=> b!1280054 (= e!731421 false)))

(declare-fun minValue!1387 () V!49971)

(declare-fun zeroValue!1387 () V!49971)

(declare-fun lt!576025 () Bool)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!21776 0))(
  ( (tuple2!21777 (_1!10898 (_ BitVec 64)) (_2!10898 V!49971)) )
))
(declare-datatypes ((List!28986 0))(
  ( (Nil!28983) (Cons!28982 (h!30191 tuple2!21776) (t!42533 List!28986)) )
))
(declare-datatypes ((ListLongMap!19445 0))(
  ( (ListLongMap!19446 (toList!9738 List!28986)) )
))
(declare-fun contains!7791 (ListLongMap!19445 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4758 (array!84335 array!84333 (_ BitVec 32) (_ BitVec 32) V!49971 V!49971 (_ BitVec 32) Int) ListLongMap!19445)

(assert (=> b!1280054 (= lt!576025 (contains!7791 (getCurrentListMap!4758 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(assert (= (and start!108500 res!850376) b!1280047))

(assert (= (and b!1280047 res!850375) b!1280049))

(assert (= (and b!1280049 res!850374) b!1280053))

(assert (= (and b!1280053 res!850372) b!1280052))

(assert (= (and b!1280052 res!850373) b!1280054))

(assert (= (and b!1280050 condMapEmpty!52028) mapIsEmpty!52028))

(assert (= (and b!1280050 (not condMapEmpty!52028)) mapNonEmpty!52028))

(get-info :version)

(assert (= (and mapNonEmpty!52028 ((_ is ValueCellFull!15927) mapValue!52028)) b!1280051))

(assert (= (and b!1280050 ((_ is ValueCellFull!15927) mapDefault!52028)) b!1280048))

(assert (= start!108500 b!1280050))

(declare-fun m!1174815 () Bool)

(assert (=> start!108500 m!1174815))

(declare-fun m!1174817 () Bool)

(assert (=> start!108500 m!1174817))

(declare-fun m!1174819 () Bool)

(assert (=> start!108500 m!1174819))

(declare-fun m!1174821 () Bool)

(assert (=> mapNonEmpty!52028 m!1174821))

(declare-fun m!1174823 () Bool)

(assert (=> b!1280053 m!1174823))

(declare-fun m!1174825 () Bool)

(assert (=> b!1280049 m!1174825))

(declare-fun m!1174827 () Bool)

(assert (=> b!1280054 m!1174827))

(assert (=> b!1280054 m!1174827))

(declare-fun m!1174829 () Bool)

(assert (=> b!1280054 m!1174829))

(check-sat (not b!1280049) (not b!1280054) tp_is_empty!33651 (not start!108500) b_and!46081 (not b_next!28011) (not b!1280053) (not mapNonEmpty!52028))
(check-sat b_and!46081 (not b_next!28011))
