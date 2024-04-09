; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108804 () Bool)

(assert start!108804)

(declare-fun b_free!28281 () Bool)

(declare-fun b_next!28281 () Bool)

(assert (=> start!108804 (= b_free!28281 (not b_next!28281))))

(declare-fun tp!99960 () Bool)

(declare-fun b_and!46357 () Bool)

(assert (=> start!108804 (= tp!99960 b_and!46357)))

(declare-fun res!853271 () Bool)

(declare-fun e!733645 () Bool)

(assert (=> start!108804 (=> (not res!853271) (not e!733645))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108804 (= res!853271 (validMask!0 mask!2175))))

(assert (=> start!108804 e!733645))

(declare-fun tp_is_empty!33921 () Bool)

(assert (=> start!108804 tp_is_empty!33921))

(assert (=> start!108804 true))

(declare-datatypes ((V!50331 0))(
  ( (V!50332 (val!17035 Int)) )
))
(declare-datatypes ((ValueCell!16062 0))(
  ( (ValueCellFull!16062 (v!19635 V!50331)) (EmptyCell!16062) )
))
(declare-datatypes ((array!84857 0))(
  ( (array!84858 (arr!40926 (Array (_ BitVec 32) ValueCell!16062)) (size!41477 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84857)

(declare-fun e!733643 () Bool)

(declare-fun array_inv!31021 (array!84857) Bool)

(assert (=> start!108804 (and (array_inv!31021 _values!1445) e!733643)))

(declare-datatypes ((array!84859 0))(
  ( (array!84860 (arr!40927 (Array (_ BitVec 32) (_ BitVec 64))) (size!41478 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84859)

(declare-fun array_inv!31022 (array!84859) Bool)

(assert (=> start!108804 (array_inv!31022 _keys!1741)))

(assert (=> start!108804 tp!99960))

(declare-fun b!1284306 () Bool)

(declare-fun res!853272 () Bool)

(assert (=> b!1284306 (=> (not res!853272) (not e!733645))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84859 (_ BitVec 32)) Bool)

(assert (=> b!1284306 (= res!853272 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun mapIsEmpty!52439 () Bool)

(declare-fun mapRes!52439 () Bool)

(assert (=> mapIsEmpty!52439 mapRes!52439))

(declare-fun b!1284307 () Bool)

(declare-fun e!733644 () Bool)

(assert (=> b!1284307 (= e!733644 tp_is_empty!33921)))

(declare-fun b!1284308 () Bool)

(declare-fun e!733642 () Bool)

(assert (=> b!1284308 (= e!733642 tp_is_empty!33921)))

(declare-fun b!1284309 () Bool)

(assert (=> b!1284309 (= e!733645 false)))

(declare-fun minValue!1387 () V!50331)

(declare-fun zeroValue!1387 () V!50331)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun lt!576744 () Bool)

(declare-datatypes ((tuple2!21962 0))(
  ( (tuple2!21963 (_1!10991 (_ BitVec 64)) (_2!10991 V!50331)) )
))
(declare-datatypes ((List!29171 0))(
  ( (Nil!29168) (Cons!29167 (h!30376 tuple2!21962) (t!42722 List!29171)) )
))
(declare-datatypes ((ListLongMap!19631 0))(
  ( (ListLongMap!19632 (toList!9831 List!29171)) )
))
(declare-fun contains!7886 (ListLongMap!19631 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4849 (array!84859 array!84857 (_ BitVec 32) (_ BitVec 32) V!50331 V!50331 (_ BitVec 32) Int) ListLongMap!19631)

(assert (=> b!1284309 (= lt!576744 (contains!7886 (getCurrentListMap!4849 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1284310 () Bool)

(declare-fun res!853268 () Bool)

(assert (=> b!1284310 (=> (not res!853268) (not e!733645))))

(assert (=> b!1284310 (= res!853268 (and (= (size!41477 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41478 _keys!1741) (size!41477 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!52439 () Bool)

(declare-fun tp!99959 () Bool)

(assert (=> mapNonEmpty!52439 (= mapRes!52439 (and tp!99959 e!733642))))

(declare-fun mapRest!52439 () (Array (_ BitVec 32) ValueCell!16062))

(declare-fun mapKey!52439 () (_ BitVec 32))

(declare-fun mapValue!52439 () ValueCell!16062)

(assert (=> mapNonEmpty!52439 (= (arr!40926 _values!1445) (store mapRest!52439 mapKey!52439 mapValue!52439))))

(declare-fun b!1284311 () Bool)

(declare-fun res!853270 () Bool)

(assert (=> b!1284311 (=> (not res!853270) (not e!733645))))

(assert (=> b!1284311 (= res!853270 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41478 _keys!1741))))))

(declare-fun b!1284312 () Bool)

(assert (=> b!1284312 (= e!733643 (and e!733644 mapRes!52439))))

(declare-fun condMapEmpty!52439 () Bool)

(declare-fun mapDefault!52439 () ValueCell!16062)

(assert (=> b!1284312 (= condMapEmpty!52439 (= (arr!40926 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16062)) mapDefault!52439)))))

(declare-fun b!1284313 () Bool)

(declare-fun res!853269 () Bool)

(assert (=> b!1284313 (=> (not res!853269) (not e!733645))))

(declare-datatypes ((List!29172 0))(
  ( (Nil!29169) (Cons!29168 (h!30377 (_ BitVec 64)) (t!42723 List!29172)) )
))
(declare-fun arrayNoDuplicates!0 (array!84859 (_ BitVec 32) List!29172) Bool)

(assert (=> b!1284313 (= res!853269 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29169))))

(assert (= (and start!108804 res!853271) b!1284310))

(assert (= (and b!1284310 res!853268) b!1284306))

(assert (= (and b!1284306 res!853272) b!1284313))

(assert (= (and b!1284313 res!853269) b!1284311))

(assert (= (and b!1284311 res!853270) b!1284309))

(assert (= (and b!1284312 condMapEmpty!52439) mapIsEmpty!52439))

(assert (= (and b!1284312 (not condMapEmpty!52439)) mapNonEmpty!52439))

(get-info :version)

(assert (= (and mapNonEmpty!52439 ((_ is ValueCellFull!16062) mapValue!52439)) b!1284308))

(assert (= (and b!1284312 ((_ is ValueCellFull!16062) mapDefault!52439)) b!1284307))

(assert (= start!108804 b!1284312))

(declare-fun m!1178047 () Bool)

(assert (=> start!108804 m!1178047))

(declare-fun m!1178049 () Bool)

(assert (=> start!108804 m!1178049))

(declare-fun m!1178051 () Bool)

(assert (=> start!108804 m!1178051))

(declare-fun m!1178053 () Bool)

(assert (=> b!1284313 m!1178053))

(declare-fun m!1178055 () Bool)

(assert (=> b!1284306 m!1178055))

(declare-fun m!1178057 () Bool)

(assert (=> b!1284309 m!1178057))

(assert (=> b!1284309 m!1178057))

(declare-fun m!1178059 () Bool)

(assert (=> b!1284309 m!1178059))

(declare-fun m!1178061 () Bool)

(assert (=> mapNonEmpty!52439 m!1178061))

(check-sat tp_is_empty!33921 (not b!1284309) b_and!46357 (not b!1284313) (not mapNonEmpty!52439) (not start!108804) (not b!1284306) (not b_next!28281))
(check-sat b_and!46357 (not b_next!28281))
