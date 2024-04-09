; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109182 () Bool)

(assert start!109182)

(declare-fun b_free!28635 () Bool)

(declare-fun b_next!28635 () Bool)

(assert (=> start!109182 (= b_free!28635 (not b_next!28635))))

(declare-fun tp!101024 () Bool)

(declare-fun b_and!46735 () Bool)

(assert (=> start!109182 (= tp!101024 b_and!46735)))

(declare-fun mapNonEmpty!52973 () Bool)

(declare-fun mapRes!52973 () Bool)

(declare-fun tp!101025 () Bool)

(declare-fun e!736826 () Bool)

(assert (=> mapNonEmpty!52973 (= mapRes!52973 (and tp!101025 e!736826))))

(declare-datatypes ((V!50803 0))(
  ( (V!50804 (val!17212 Int)) )
))
(declare-datatypes ((ValueCell!16239 0))(
  ( (ValueCellFull!16239 (v!19813 V!50803)) (EmptyCell!16239) )
))
(declare-fun mapRest!52973 () (Array (_ BitVec 32) ValueCell!16239))

(declare-fun mapKey!52973 () (_ BitVec 32))

(declare-datatypes ((array!85547 0))(
  ( (array!85548 (arr!41270 (Array (_ BitVec 32) ValueCell!16239)) (size!41821 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85547)

(declare-fun mapValue!52973 () ValueCell!16239)

(assert (=> mapNonEmpty!52973 (= (arr!41270 _values!1445) (store mapRest!52973 mapKey!52973 mapValue!52973))))

(declare-fun b!1290615 () Bool)

(declare-fun e!736830 () Bool)

(declare-fun e!736829 () Bool)

(assert (=> b!1290615 (= e!736830 (not e!736829))))

(declare-fun res!857495 () Bool)

(assert (=> b!1290615 (=> res!857495 e!736829)))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1290615 (= res!857495 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-datatypes ((tuple2!22256 0))(
  ( (tuple2!22257 (_1!11138 (_ BitVec 64)) (_2!11138 V!50803)) )
))
(declare-datatypes ((List!29452 0))(
  ( (Nil!29449) (Cons!29448 (h!30657 tuple2!22256) (t!43023 List!29452)) )
))
(declare-datatypes ((ListLongMap!19925 0))(
  ( (ListLongMap!19926 (toList!9978 List!29452)) )
))
(declare-fun contains!8034 (ListLongMap!19925 (_ BitVec 64)) Bool)

(assert (=> b!1290615 (not (contains!8034 (ListLongMap!19926 Nil!29449) k0!1205))))

(declare-datatypes ((Unit!42645 0))(
  ( (Unit!42646) )
))
(declare-fun lt!578699 () Unit!42645)

(declare-fun emptyContainsNothing!83 ((_ BitVec 64)) Unit!42645)

(assert (=> b!1290615 (= lt!578699 (emptyContainsNothing!83 k0!1205))))

(declare-fun b!1290616 () Bool)

(declare-fun res!857499 () Bool)

(assert (=> b!1290616 (=> (not res!857499) (not e!736830))))

(declare-fun minValue!1387 () V!50803)

(declare-fun zeroValue!1387 () V!50803)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!85549 0))(
  ( (array!85550 (arr!41271 (Array (_ BitVec 32) (_ BitVec 64))) (size!41822 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85549)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun getCurrentListMap!4978 (array!85549 array!85547 (_ BitVec 32) (_ BitVec 32) V!50803 V!50803 (_ BitVec 32) Int) ListLongMap!19925)

(assert (=> b!1290616 (= res!857499 (contains!8034 (getCurrentListMap!4978 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1290617 () Bool)

(assert (=> b!1290617 (= e!736829 true)))

(assert (=> b!1290617 false))

(declare-fun lt!578702 () ListLongMap!19925)

(declare-fun lt!578700 () Unit!42645)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!39 ((_ BitVec 64) (_ BitVec 64) V!50803 ListLongMap!19925) Unit!42645)

(assert (=> b!1290617 (= lt!578700 (lemmaInListMapAfterAddingDiffThenInBefore!39 k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 lt!578702))))

(declare-fun lt!578701 () ListLongMap!19925)

(declare-fun +!4344 (ListLongMap!19925 tuple2!22256) ListLongMap!19925)

(assert (=> b!1290617 (not (contains!8034 (+!4344 lt!578701 (tuple2!22257 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k0!1205))))

(declare-fun lt!578703 () Unit!42645)

(declare-fun addStillNotContains!389 (ListLongMap!19925 (_ BitVec 64) V!50803 (_ BitVec 64)) Unit!42645)

(assert (=> b!1290617 (= lt!578703 (addStillNotContains!389 lt!578701 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k0!1205))))

(assert (=> b!1290617 (not (contains!8034 lt!578702 k0!1205))))

(assert (=> b!1290617 (= lt!578702 (+!4344 lt!578701 (tuple2!22257 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun lt!578704 () Unit!42645)

(assert (=> b!1290617 (= lt!578704 (addStillNotContains!389 lt!578701 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k0!1205))))

(declare-fun getCurrentListMapNoExtraKeys!6056 (array!85549 array!85547 (_ BitVec 32) (_ BitVec 32) V!50803 V!50803 (_ BitVec 32) Int) ListLongMap!19925)

(assert (=> b!1290617 (= lt!578701 (getCurrentListMapNoExtraKeys!6056 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1290618 () Bool)

(declare-fun res!857501 () Bool)

(assert (=> b!1290618 (=> (not res!857501) (not e!736830))))

(assert (=> b!1290618 (= res!857501 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41822 _keys!1741))))))

(declare-fun b!1290619 () Bool)

(declare-fun res!857497 () Bool)

(assert (=> b!1290619 (=> (not res!857497) (not e!736830))))

(declare-datatypes ((List!29453 0))(
  ( (Nil!29450) (Cons!29449 (h!30658 (_ BitVec 64)) (t!43024 List!29453)) )
))
(declare-fun arrayNoDuplicates!0 (array!85549 (_ BitVec 32) List!29453) Bool)

(assert (=> b!1290619 (= res!857497 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29450))))

(declare-fun b!1290620 () Bool)

(declare-fun tp_is_empty!34275 () Bool)

(assert (=> b!1290620 (= e!736826 tp_is_empty!34275)))

(declare-fun b!1290621 () Bool)

(declare-fun e!736831 () Bool)

(assert (=> b!1290621 (= e!736831 tp_is_empty!34275)))

(declare-fun b!1290622 () Bool)

(declare-fun res!857494 () Bool)

(assert (=> b!1290622 (=> (not res!857494) (not e!736830))))

(assert (=> b!1290622 (= res!857494 (and (= (size!41821 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41822 _keys!1741) (size!41821 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1290623 () Bool)

(declare-fun res!857500 () Bool)

(assert (=> b!1290623 (=> (not res!857500) (not e!736830))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1290623 (= res!857500 (not (validKeyInArray!0 (select (arr!41271 _keys!1741) from!2144))))))

(declare-fun b!1290625 () Bool)

(declare-fun res!857502 () Bool)

(assert (=> b!1290625 (=> (not res!857502) (not e!736830))))

(assert (=> b!1290625 (= res!857502 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41822 _keys!1741))))))

(declare-fun b!1290626 () Bool)

(declare-fun e!736828 () Bool)

(assert (=> b!1290626 (= e!736828 (and e!736831 mapRes!52973))))

(declare-fun condMapEmpty!52973 () Bool)

(declare-fun mapDefault!52973 () ValueCell!16239)

(assert (=> b!1290626 (= condMapEmpty!52973 (= (arr!41270 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16239)) mapDefault!52973)))))

(declare-fun mapIsEmpty!52973 () Bool)

(assert (=> mapIsEmpty!52973 mapRes!52973))

(declare-fun b!1290624 () Bool)

(declare-fun res!857498 () Bool)

(assert (=> b!1290624 (=> (not res!857498) (not e!736830))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85549 (_ BitVec 32)) Bool)

(assert (=> b!1290624 (= res!857498 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun res!857496 () Bool)

(assert (=> start!109182 (=> (not res!857496) (not e!736830))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109182 (= res!857496 (validMask!0 mask!2175))))

(assert (=> start!109182 e!736830))

(assert (=> start!109182 tp_is_empty!34275))

(assert (=> start!109182 true))

(declare-fun array_inv!31251 (array!85547) Bool)

(assert (=> start!109182 (and (array_inv!31251 _values!1445) e!736828)))

(declare-fun array_inv!31252 (array!85549) Bool)

(assert (=> start!109182 (array_inv!31252 _keys!1741)))

(assert (=> start!109182 tp!101024))

(assert (= (and start!109182 res!857496) b!1290622))

(assert (= (and b!1290622 res!857494) b!1290624))

(assert (= (and b!1290624 res!857498) b!1290619))

(assert (= (and b!1290619 res!857497) b!1290625))

(assert (= (and b!1290625 res!857502) b!1290616))

(assert (= (and b!1290616 res!857499) b!1290618))

(assert (= (and b!1290618 res!857501) b!1290623))

(assert (= (and b!1290623 res!857500) b!1290615))

(assert (= (and b!1290615 (not res!857495)) b!1290617))

(assert (= (and b!1290626 condMapEmpty!52973) mapIsEmpty!52973))

(assert (= (and b!1290626 (not condMapEmpty!52973)) mapNonEmpty!52973))

(get-info :version)

(assert (= (and mapNonEmpty!52973 ((_ is ValueCellFull!16239) mapValue!52973)) b!1290620))

(assert (= (and b!1290626 ((_ is ValueCellFull!16239) mapDefault!52973)) b!1290621))

(assert (= start!109182 b!1290626))

(declare-fun m!1183281 () Bool)

(assert (=> start!109182 m!1183281))

(declare-fun m!1183283 () Bool)

(assert (=> start!109182 m!1183283))

(declare-fun m!1183285 () Bool)

(assert (=> start!109182 m!1183285))

(declare-fun m!1183287 () Bool)

(assert (=> b!1290616 m!1183287))

(assert (=> b!1290616 m!1183287))

(declare-fun m!1183289 () Bool)

(assert (=> b!1290616 m!1183289))

(declare-fun m!1183291 () Bool)

(assert (=> b!1290624 m!1183291))

(declare-fun m!1183293 () Bool)

(assert (=> mapNonEmpty!52973 m!1183293))

(declare-fun m!1183295 () Bool)

(assert (=> b!1290623 m!1183295))

(assert (=> b!1290623 m!1183295))

(declare-fun m!1183297 () Bool)

(assert (=> b!1290623 m!1183297))

(declare-fun m!1183299 () Bool)

(assert (=> b!1290617 m!1183299))

(declare-fun m!1183301 () Bool)

(assert (=> b!1290617 m!1183301))

(declare-fun m!1183303 () Bool)

(assert (=> b!1290617 m!1183303))

(declare-fun m!1183305 () Bool)

(assert (=> b!1290617 m!1183305))

(assert (=> b!1290617 m!1183303))

(declare-fun m!1183307 () Bool)

(assert (=> b!1290617 m!1183307))

(declare-fun m!1183309 () Bool)

(assert (=> b!1290617 m!1183309))

(declare-fun m!1183311 () Bool)

(assert (=> b!1290617 m!1183311))

(declare-fun m!1183313 () Bool)

(assert (=> b!1290617 m!1183313))

(declare-fun m!1183315 () Bool)

(assert (=> b!1290615 m!1183315))

(declare-fun m!1183317 () Bool)

(assert (=> b!1290615 m!1183317))

(declare-fun m!1183319 () Bool)

(assert (=> b!1290619 m!1183319))

(check-sat (not start!109182) tp_is_empty!34275 b_and!46735 (not b!1290623) (not b_next!28635) (not b!1290616) (not b!1290624) (not mapNonEmpty!52973) (not b!1290615) (not b!1290619) (not b!1290617))
(check-sat b_and!46735 (not b_next!28635))
