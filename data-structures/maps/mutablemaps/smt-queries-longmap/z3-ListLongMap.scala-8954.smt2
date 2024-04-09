; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108488 () Bool)

(assert start!108488)

(declare-fun b_free!27999 () Bool)

(declare-fun b_next!27999 () Bool)

(assert (=> start!108488 (= b_free!27999 (not b_next!27999))))

(declare-fun tp!99107 () Bool)

(declare-fun b_and!46069 () Bool)

(assert (=> start!108488 (= tp!99107 b_and!46069)))

(declare-fun b!1279903 () Bool)

(declare-fun e!731331 () Bool)

(declare-fun tp_is_empty!33639 () Bool)

(assert (=> b!1279903 (= e!731331 tp_is_empty!33639)))

(declare-fun res!850286 () Bool)

(declare-fun e!731335 () Bool)

(assert (=> start!108488 (=> (not res!850286) (not e!731335))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108488 (= res!850286 (validMask!0 mask!2175))))

(assert (=> start!108488 e!731335))

(assert (=> start!108488 tp_is_empty!33639))

(assert (=> start!108488 true))

(declare-datatypes ((V!49955 0))(
  ( (V!49956 (val!16894 Int)) )
))
(declare-datatypes ((ValueCell!15921 0))(
  ( (ValueCellFull!15921 (v!19492 V!49955)) (EmptyCell!15921) )
))
(declare-datatypes ((array!84311 0))(
  ( (array!84312 (arr!40655 (Array (_ BitVec 32) ValueCell!15921)) (size!41206 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84311)

(declare-fun e!731334 () Bool)

(declare-fun array_inv!30845 (array!84311) Bool)

(assert (=> start!108488 (and (array_inv!30845 _values!1445) e!731334)))

(declare-datatypes ((array!84313 0))(
  ( (array!84314 (arr!40656 (Array (_ BitVec 32) (_ BitVec 64))) (size!41207 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84313)

(declare-fun array_inv!30846 (array!84313) Bool)

(assert (=> start!108488 (array_inv!30846 _keys!1741)))

(assert (=> start!108488 tp!99107))

(declare-fun b!1279904 () Bool)

(assert (=> b!1279904 (= e!731335 false)))

(declare-fun zeroValue!1387 () V!49955)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun minValue!1387 () V!49955)

(declare-fun lt!576007 () Bool)

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!21766 0))(
  ( (tuple2!21767 (_1!10893 (_ BitVec 64)) (_2!10893 V!49955)) )
))
(declare-datatypes ((List!28976 0))(
  ( (Nil!28973) (Cons!28972 (h!30181 tuple2!21766) (t!42523 List!28976)) )
))
(declare-datatypes ((ListLongMap!19435 0))(
  ( (ListLongMap!19436 (toList!9733 List!28976)) )
))
(declare-fun contains!7786 (ListLongMap!19435 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4753 (array!84313 array!84311 (_ BitVec 32) (_ BitVec 32) V!49955 V!49955 (_ BitVec 32) Int) ListLongMap!19435)

(assert (=> b!1279904 (= lt!576007 (contains!7786 (getCurrentListMap!4753 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1279905 () Bool)

(declare-fun mapRes!52010 () Bool)

(assert (=> b!1279905 (= e!731334 (and e!731331 mapRes!52010))))

(declare-fun condMapEmpty!52010 () Bool)

(declare-fun mapDefault!52010 () ValueCell!15921)

(assert (=> b!1279905 (= condMapEmpty!52010 (= (arr!40655 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!15921)) mapDefault!52010)))))

(declare-fun mapIsEmpty!52010 () Bool)

(assert (=> mapIsEmpty!52010 mapRes!52010))

(declare-fun b!1279906 () Bool)

(declare-fun res!850282 () Bool)

(assert (=> b!1279906 (=> (not res!850282) (not e!731335))))

(declare-datatypes ((List!28977 0))(
  ( (Nil!28974) (Cons!28973 (h!30182 (_ BitVec 64)) (t!42524 List!28977)) )
))
(declare-fun arrayNoDuplicates!0 (array!84313 (_ BitVec 32) List!28977) Bool)

(assert (=> b!1279906 (= res!850282 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!28974))))

(declare-fun b!1279907 () Bool)

(declare-fun e!731333 () Bool)

(assert (=> b!1279907 (= e!731333 tp_is_empty!33639)))

(declare-fun mapNonEmpty!52010 () Bool)

(declare-fun tp!99108 () Bool)

(assert (=> mapNonEmpty!52010 (= mapRes!52010 (and tp!99108 e!731333))))

(declare-fun mapValue!52010 () ValueCell!15921)

(declare-fun mapKey!52010 () (_ BitVec 32))

(declare-fun mapRest!52010 () (Array (_ BitVec 32) ValueCell!15921))

(assert (=> mapNonEmpty!52010 (= (arr!40655 _values!1445) (store mapRest!52010 mapKey!52010 mapValue!52010))))

(declare-fun b!1279908 () Bool)

(declare-fun res!850283 () Bool)

(assert (=> b!1279908 (=> (not res!850283) (not e!731335))))

(assert (=> b!1279908 (= res!850283 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41207 _keys!1741))))))

(declare-fun b!1279909 () Bool)

(declare-fun res!850285 () Bool)

(assert (=> b!1279909 (=> (not res!850285) (not e!731335))))

(assert (=> b!1279909 (= res!850285 (and (= (size!41206 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41207 _keys!1741) (size!41206 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1279910 () Bool)

(declare-fun res!850284 () Bool)

(assert (=> b!1279910 (=> (not res!850284) (not e!731335))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84313 (_ BitVec 32)) Bool)

(assert (=> b!1279910 (= res!850284 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(assert (= (and start!108488 res!850286) b!1279909))

(assert (= (and b!1279909 res!850285) b!1279910))

(assert (= (and b!1279910 res!850284) b!1279906))

(assert (= (and b!1279906 res!850282) b!1279908))

(assert (= (and b!1279908 res!850283) b!1279904))

(assert (= (and b!1279905 condMapEmpty!52010) mapIsEmpty!52010))

(assert (= (and b!1279905 (not condMapEmpty!52010)) mapNonEmpty!52010))

(get-info :version)

(assert (= (and mapNonEmpty!52010 ((_ is ValueCellFull!15921) mapValue!52010)) b!1279907))

(assert (= (and b!1279905 ((_ is ValueCellFull!15921) mapDefault!52010)) b!1279903))

(assert (= start!108488 b!1279905))

(declare-fun m!1174719 () Bool)

(assert (=> b!1279904 m!1174719))

(assert (=> b!1279904 m!1174719))

(declare-fun m!1174721 () Bool)

(assert (=> b!1279904 m!1174721))

(declare-fun m!1174723 () Bool)

(assert (=> mapNonEmpty!52010 m!1174723))

(declare-fun m!1174725 () Bool)

(assert (=> b!1279906 m!1174725))

(declare-fun m!1174727 () Bool)

(assert (=> b!1279910 m!1174727))

(declare-fun m!1174729 () Bool)

(assert (=> start!108488 m!1174729))

(declare-fun m!1174731 () Bool)

(assert (=> start!108488 m!1174731))

(declare-fun m!1174733 () Bool)

(assert (=> start!108488 m!1174733))

(check-sat (not b!1279910) (not b_next!27999) (not b!1279906) tp_is_empty!33639 (not mapNonEmpty!52010) (not start!108488) (not b!1279904) b_and!46069)
(check-sat b_and!46069 (not b_next!27999))
