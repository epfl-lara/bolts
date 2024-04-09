; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108816 () Bool)

(assert start!108816)

(declare-fun b_free!28293 () Bool)

(declare-fun b_next!28293 () Bool)

(assert (=> start!108816 (= b_free!28293 (not b_next!28293))))

(declare-fun tp!99996 () Bool)

(declare-fun b_and!46369 () Bool)

(assert (=> start!108816 (= tp!99996 b_and!46369)))

(declare-fun res!853362 () Bool)

(declare-fun e!733733 () Bool)

(assert (=> start!108816 (=> (not res!853362) (not e!733733))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108816 (= res!853362 (validMask!0 mask!2175))))

(assert (=> start!108816 e!733733))

(declare-fun tp_is_empty!33933 () Bool)

(assert (=> start!108816 tp_is_empty!33933))

(assert (=> start!108816 true))

(declare-datatypes ((V!50347 0))(
  ( (V!50348 (val!17041 Int)) )
))
(declare-datatypes ((ValueCell!16068 0))(
  ( (ValueCellFull!16068 (v!19641 V!50347)) (EmptyCell!16068) )
))
(declare-datatypes ((array!84881 0))(
  ( (array!84882 (arr!40938 (Array (_ BitVec 32) ValueCell!16068)) (size!41489 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84881)

(declare-fun e!733731 () Bool)

(declare-fun array_inv!31027 (array!84881) Bool)

(assert (=> start!108816 (and (array_inv!31027 _values!1445) e!733731)))

(declare-datatypes ((array!84883 0))(
  ( (array!84884 (arr!40939 (Array (_ BitVec 32) (_ BitVec 64))) (size!41490 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84883)

(declare-fun array_inv!31028 (array!84883) Bool)

(assert (=> start!108816 (array_inv!31028 _keys!1741)))

(assert (=> start!108816 tp!99996))

(declare-fun b!1284450 () Bool)

(declare-fun e!733734 () Bool)

(assert (=> b!1284450 (= e!733734 tp_is_empty!33933)))

(declare-fun b!1284451 () Bool)

(declare-fun e!733735 () Bool)

(assert (=> b!1284451 (= e!733735 tp_is_empty!33933)))

(declare-fun b!1284452 () Bool)

(declare-fun res!853359 () Bool)

(assert (=> b!1284452 (=> (not res!853359) (not e!733733))))

(declare-datatypes ((List!29179 0))(
  ( (Nil!29176) (Cons!29175 (h!30384 (_ BitVec 64)) (t!42730 List!29179)) )
))
(declare-fun arrayNoDuplicates!0 (array!84883 (_ BitVec 32) List!29179) Bool)

(assert (=> b!1284452 (= res!853359 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29176))))

(declare-fun mapNonEmpty!52457 () Bool)

(declare-fun mapRes!52457 () Bool)

(declare-fun tp!99995 () Bool)

(assert (=> mapNonEmpty!52457 (= mapRes!52457 (and tp!99995 e!733735))))

(declare-fun mapRest!52457 () (Array (_ BitVec 32) ValueCell!16068))

(declare-fun mapKey!52457 () (_ BitVec 32))

(declare-fun mapValue!52457 () ValueCell!16068)

(assert (=> mapNonEmpty!52457 (= (arr!40938 _values!1445) (store mapRest!52457 mapKey!52457 mapValue!52457))))

(declare-fun b!1284453 () Bool)

(assert (=> b!1284453 (= e!733731 (and e!733734 mapRes!52457))))

(declare-fun condMapEmpty!52457 () Bool)

(declare-fun mapDefault!52457 () ValueCell!16068)

(assert (=> b!1284453 (= condMapEmpty!52457 (= (arr!40938 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16068)) mapDefault!52457)))))

(declare-fun mapIsEmpty!52457 () Bool)

(assert (=> mapIsEmpty!52457 mapRes!52457))

(declare-fun b!1284454 () Bool)

(assert (=> b!1284454 (= e!733733 false)))

(declare-fun minValue!1387 () V!50347)

(declare-fun zeroValue!1387 () V!50347)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun lt!576762 () Bool)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!21970 0))(
  ( (tuple2!21971 (_1!10995 (_ BitVec 64)) (_2!10995 V!50347)) )
))
(declare-datatypes ((List!29180 0))(
  ( (Nil!29177) (Cons!29176 (h!30385 tuple2!21970) (t!42731 List!29180)) )
))
(declare-datatypes ((ListLongMap!19639 0))(
  ( (ListLongMap!19640 (toList!9835 List!29180)) )
))
(declare-fun contains!7890 (ListLongMap!19639 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4853 (array!84883 array!84881 (_ BitVec 32) (_ BitVec 32) V!50347 V!50347 (_ BitVec 32) Int) ListLongMap!19639)

(assert (=> b!1284454 (= lt!576762 (contains!7890 (getCurrentListMap!4853 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1284455 () Bool)

(declare-fun res!853361 () Bool)

(assert (=> b!1284455 (=> (not res!853361) (not e!733733))))

(assert (=> b!1284455 (= res!853361 (and (= (size!41489 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41490 _keys!1741) (size!41489 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1284456 () Bool)

(declare-fun res!853360 () Bool)

(assert (=> b!1284456 (=> (not res!853360) (not e!733733))))

(assert (=> b!1284456 (= res!853360 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41490 _keys!1741))))))

(declare-fun b!1284457 () Bool)

(declare-fun res!853358 () Bool)

(assert (=> b!1284457 (=> (not res!853358) (not e!733733))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84883 (_ BitVec 32)) Bool)

(assert (=> b!1284457 (= res!853358 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(assert (= (and start!108816 res!853362) b!1284455))

(assert (= (and b!1284455 res!853361) b!1284457))

(assert (= (and b!1284457 res!853358) b!1284452))

(assert (= (and b!1284452 res!853359) b!1284456))

(assert (= (and b!1284456 res!853360) b!1284454))

(assert (= (and b!1284453 condMapEmpty!52457) mapIsEmpty!52457))

(assert (= (and b!1284453 (not condMapEmpty!52457)) mapNonEmpty!52457))

(get-info :version)

(assert (= (and mapNonEmpty!52457 ((_ is ValueCellFull!16068) mapValue!52457)) b!1284451))

(assert (= (and b!1284453 ((_ is ValueCellFull!16068) mapDefault!52457)) b!1284450))

(assert (= start!108816 b!1284453))

(declare-fun m!1178143 () Bool)

(assert (=> b!1284457 m!1178143))

(declare-fun m!1178145 () Bool)

(assert (=> b!1284452 m!1178145))

(declare-fun m!1178147 () Bool)

(assert (=> mapNonEmpty!52457 m!1178147))

(declare-fun m!1178149 () Bool)

(assert (=> b!1284454 m!1178149))

(assert (=> b!1284454 m!1178149))

(declare-fun m!1178151 () Bool)

(assert (=> b!1284454 m!1178151))

(declare-fun m!1178153 () Bool)

(assert (=> start!108816 m!1178153))

(declare-fun m!1178155 () Bool)

(assert (=> start!108816 m!1178155))

(declare-fun m!1178157 () Bool)

(assert (=> start!108816 m!1178157))

(check-sat (not b_next!28293) (not mapNonEmpty!52457) tp_is_empty!33933 (not b!1284454) (not b!1284452) (not start!108816) b_and!46369 (not b!1284457))
(check-sat b_and!46369 (not b_next!28293))
