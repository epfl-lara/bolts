; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43538 () Bool)

(assert start!43538)

(declare-fun b_free!12309 () Bool)

(declare-fun b_next!12309 () Bool)

(assert (=> start!43538 (= b_free!12309 (not b_next!12309))))

(declare-fun tp!43209 () Bool)

(declare-fun b_and!21087 () Bool)

(assert (=> start!43538 (= tp!43209 b_and!21087)))

(declare-fun b!482105 () Bool)

(declare-fun e!283713 () Bool)

(assert (=> b!482105 (= e!283713 false)))

(declare-fun k0!1332 () (_ BitVec 64))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-datatypes ((V!19499 0))(
  ( (V!19500 (val!6958 Int)) )
))
(declare-fun minValue!1458 () V!19499)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-fun zeroValue!1458 () V!19499)

(declare-datatypes ((ValueCell!6549 0))(
  ( (ValueCellFull!6549 (v!9247 V!19499)) (EmptyCell!6549) )
))
(declare-datatypes ((array!31271 0))(
  ( (array!31272 (arr!15035 (Array (_ BitVec 32) ValueCell!6549)) (size!15393 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31271)

(declare-fun lt!218663 () Bool)

(declare-fun defaultEntry!1519 () Int)

(declare-datatypes ((array!31273 0))(
  ( (array!31274 (arr!15036 (Array (_ BitVec 32) (_ BitVec 64))) (size!15394 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31273)

(declare-datatypes ((tuple2!9134 0))(
  ( (tuple2!9135 (_1!4577 (_ BitVec 64)) (_2!4577 V!19499)) )
))
(declare-datatypes ((List!9250 0))(
  ( (Nil!9247) (Cons!9246 (h!10102 tuple2!9134) (t!15472 List!9250)) )
))
(declare-datatypes ((ListLongMap!8061 0))(
  ( (ListLongMap!8062 (toList!4046 List!9250)) )
))
(declare-fun contains!2657 (ListLongMap!8061 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2338 (array!31273 array!31271 (_ BitVec 32) (_ BitVec 32) V!19499 V!19499 (_ BitVec 32) Int) ListLongMap!8061)

(assert (=> b!482105 (= lt!218663 (contains!2657 (getCurrentListMap!2338 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k0!1332))))

(declare-fun mapIsEmpty!22441 () Bool)

(declare-fun mapRes!22441 () Bool)

(assert (=> mapIsEmpty!22441 mapRes!22441))

(declare-fun b!482106 () Bool)

(declare-fun res!287462 () Bool)

(assert (=> b!482106 (=> (not res!287462) (not e!283713))))

(assert (=> b!482106 (= res!287462 (and (= (size!15393 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15394 _keys!1874) (size!15393 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!22441 () Bool)

(declare-fun tp!43210 () Bool)

(declare-fun e!283716 () Bool)

(assert (=> mapNonEmpty!22441 (= mapRes!22441 (and tp!43210 e!283716))))

(declare-fun mapValue!22441 () ValueCell!6549)

(declare-fun mapRest!22441 () (Array (_ BitVec 32) ValueCell!6549))

(declare-fun mapKey!22441 () (_ BitVec 32))

(assert (=> mapNonEmpty!22441 (= (arr!15035 _values!1516) (store mapRest!22441 mapKey!22441 mapValue!22441))))

(declare-fun b!482107 () Bool)

(declare-fun e!283717 () Bool)

(declare-fun e!283714 () Bool)

(assert (=> b!482107 (= e!283717 (and e!283714 mapRes!22441))))

(declare-fun condMapEmpty!22441 () Bool)

(declare-fun mapDefault!22441 () ValueCell!6549)

(assert (=> b!482107 (= condMapEmpty!22441 (= (arr!15035 _values!1516) ((as const (Array (_ BitVec 32) ValueCell!6549)) mapDefault!22441)))))

(declare-fun b!482108 () Bool)

(declare-fun tp_is_empty!13821 () Bool)

(assert (=> b!482108 (= e!283714 tp_is_empty!13821)))

(declare-fun b!482110 () Bool)

(declare-fun res!287461 () Bool)

(assert (=> b!482110 (=> (not res!287461) (not e!283713))))

(declare-datatypes ((List!9251 0))(
  ( (Nil!9248) (Cons!9247 (h!10103 (_ BitVec 64)) (t!15473 List!9251)) )
))
(declare-fun arrayNoDuplicates!0 (array!31273 (_ BitVec 32) List!9251) Bool)

(assert (=> b!482110 (= res!287461 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9248))))

(declare-fun b!482111 () Bool)

(assert (=> b!482111 (= e!283716 tp_is_empty!13821)))

(declare-fun b!482109 () Bool)

(declare-fun res!287463 () Bool)

(assert (=> b!482109 (=> (not res!287463) (not e!283713))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31273 (_ BitVec 32)) Bool)

(assert (=> b!482109 (= res!287463 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun res!287464 () Bool)

(assert (=> start!43538 (=> (not res!287464) (not e!283713))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43538 (= res!287464 (validMask!0 mask!2352))))

(assert (=> start!43538 e!283713))

(assert (=> start!43538 true))

(assert (=> start!43538 tp_is_empty!13821))

(declare-fun array_inv!10824 (array!31271) Bool)

(assert (=> start!43538 (and (array_inv!10824 _values!1516) e!283717)))

(assert (=> start!43538 tp!43209))

(declare-fun array_inv!10825 (array!31273) Bool)

(assert (=> start!43538 (array_inv!10825 _keys!1874)))

(assert (= (and start!43538 res!287464) b!482106))

(assert (= (and b!482106 res!287462) b!482109))

(assert (= (and b!482109 res!287463) b!482110))

(assert (= (and b!482110 res!287461) b!482105))

(assert (= (and b!482107 condMapEmpty!22441) mapIsEmpty!22441))

(assert (= (and b!482107 (not condMapEmpty!22441)) mapNonEmpty!22441))

(get-info :version)

(assert (= (and mapNonEmpty!22441 ((_ is ValueCellFull!6549) mapValue!22441)) b!482111))

(assert (= (and b!482107 ((_ is ValueCellFull!6549) mapDefault!22441)) b!482108))

(assert (= start!43538 b!482107))

(declare-fun m!463427 () Bool)

(assert (=> start!43538 m!463427))

(declare-fun m!463429 () Bool)

(assert (=> start!43538 m!463429))

(declare-fun m!463431 () Bool)

(assert (=> start!43538 m!463431))

(declare-fun m!463433 () Bool)

(assert (=> b!482105 m!463433))

(assert (=> b!482105 m!463433))

(declare-fun m!463435 () Bool)

(assert (=> b!482105 m!463435))

(declare-fun m!463437 () Bool)

(assert (=> b!482110 m!463437))

(declare-fun m!463439 () Bool)

(assert (=> mapNonEmpty!22441 m!463439))

(declare-fun m!463441 () Bool)

(assert (=> b!482109 m!463441))

(check-sat b_and!21087 (not start!43538) (not mapNonEmpty!22441) (not b!482110) (not b_next!12309) tp_is_empty!13821 (not b!482109) (not b!482105))
(check-sat b_and!21087 (not b_next!12309))
