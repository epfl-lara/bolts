; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43556 () Bool)

(assert start!43556)

(declare-fun b_free!12327 () Bool)

(declare-fun b_next!12327 () Bool)

(assert (=> start!43556 (= b_free!12327 (not b_next!12327))))

(declare-fun tp!43264 () Bool)

(declare-fun b_and!21105 () Bool)

(assert (=> start!43556 (= tp!43264 b_and!21105)))

(declare-fun res!287598 () Bool)

(declare-fun e!283863 () Bool)

(assert (=> start!43556 (=> (not res!287598) (not e!283863))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43556 (= res!287598 (validMask!0 mask!2352))))

(assert (=> start!43556 e!283863))

(assert (=> start!43556 true))

(declare-fun tp_is_empty!13839 () Bool)

(assert (=> start!43556 tp_is_empty!13839))

(declare-datatypes ((V!19523 0))(
  ( (V!19524 (val!6967 Int)) )
))
(declare-datatypes ((ValueCell!6558 0))(
  ( (ValueCellFull!6558 (v!9256 V!19523)) (EmptyCell!6558) )
))
(declare-datatypes ((array!31303 0))(
  ( (array!31304 (arr!15051 (Array (_ BitVec 32) ValueCell!6558)) (size!15409 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31303)

(declare-fun e!283862 () Bool)

(declare-fun array_inv!10834 (array!31303) Bool)

(assert (=> start!43556 (and (array_inv!10834 _values!1516) e!283862)))

(assert (=> start!43556 tp!43264))

(declare-datatypes ((array!31305 0))(
  ( (array!31306 (arr!15052 (Array (_ BitVec 32) (_ BitVec 64))) (size!15410 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31305)

(declare-fun array_inv!10835 (array!31305) Bool)

(assert (=> start!43556 (array_inv!10835 _keys!1874)))

(declare-fun mapIsEmpty!22468 () Bool)

(declare-fun mapRes!22468 () Bool)

(assert (=> mapIsEmpty!22468 mapRes!22468))

(declare-fun b!482350 () Bool)

(declare-fun res!287600 () Bool)

(assert (=> b!482350 (=> (not res!287600) (not e!283863))))

(declare-fun k0!1332 () (_ BitVec 64))

(declare-fun minValue!1458 () V!19523)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-fun zeroValue!1458 () V!19523)

(declare-fun defaultEntry!1519 () Int)

(declare-datatypes ((tuple2!9146 0))(
  ( (tuple2!9147 (_1!4583 (_ BitVec 64)) (_2!4583 V!19523)) )
))
(declare-datatypes ((List!9262 0))(
  ( (Nil!9259) (Cons!9258 (h!10114 tuple2!9146) (t!15484 List!9262)) )
))
(declare-datatypes ((ListLongMap!8073 0))(
  ( (ListLongMap!8074 (toList!4052 List!9262)) )
))
(declare-fun contains!2663 (ListLongMap!8073 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2344 (array!31305 array!31303 (_ BitVec 32) (_ BitVec 32) V!19523 V!19523 (_ BitVec 32) Int) ListLongMap!8073)

(assert (=> b!482350 (= res!287600 (contains!2663 (getCurrentListMap!2344 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k0!1332))))

(declare-fun mapNonEmpty!22468 () Bool)

(declare-fun tp!43263 () Bool)

(declare-fun e!283866 () Bool)

(assert (=> mapNonEmpty!22468 (= mapRes!22468 (and tp!43263 e!283866))))

(declare-fun mapRest!22468 () (Array (_ BitVec 32) ValueCell!6558))

(declare-fun mapValue!22468 () ValueCell!6558)

(declare-fun mapKey!22468 () (_ BitVec 32))

(assert (=> mapNonEmpty!22468 (= (arr!15051 _values!1516) (store mapRest!22468 mapKey!22468 mapValue!22468))))

(declare-fun b!482351 () Bool)

(declare-fun e!283865 () Bool)

(assert (=> b!482351 (= e!283865 (ite (= k0!1332 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!482352 () Bool)

(declare-fun res!287602 () Bool)

(assert (=> b!482352 (=> (not res!287602) (not e!283863))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!482352 (= res!287602 (validKeyInArray!0 k0!1332))))

(declare-fun b!482353 () Bool)

(declare-fun res!287597 () Bool)

(assert (=> b!482353 (=> (not res!287597) (not e!283863))))

(assert (=> b!482353 (= res!287597 (and (= (size!15409 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15410 _keys!1874) (size!15409 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun b!482354 () Bool)

(declare-fun res!287599 () Bool)

(assert (=> b!482354 (=> (not res!287599) (not e!283863))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31305 (_ BitVec 32)) Bool)

(assert (=> b!482354 (= res!287599 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!482355 () Bool)

(declare-fun res!287601 () Bool)

(assert (=> b!482355 (=> (not res!287601) (not e!283863))))

(declare-datatypes ((List!9263 0))(
  ( (Nil!9260) (Cons!9259 (h!10115 (_ BitVec 64)) (t!15485 List!9263)) )
))
(declare-fun arrayNoDuplicates!0 (array!31305 (_ BitVec 32) List!9263) Bool)

(assert (=> b!482355 (= res!287601 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9260))))

(declare-fun b!482356 () Bool)

(declare-fun arrayContainsKey!0 (array!31305 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!482356 (= e!283865 (arrayContainsKey!0 _keys!1874 k0!1332 #b00000000000000000000000000000000))))

(declare-fun b!482357 () Bool)

(declare-fun e!283867 () Bool)

(assert (=> b!482357 (= e!283867 tp_is_empty!13839)))

(declare-fun b!482358 () Bool)

(assert (=> b!482358 (= e!283862 (and e!283867 mapRes!22468))))

(declare-fun condMapEmpty!22468 () Bool)

(declare-fun mapDefault!22468 () ValueCell!6558)

(assert (=> b!482358 (= condMapEmpty!22468 (= (arr!15051 _values!1516) ((as const (Array (_ BitVec 32) ValueCell!6558)) mapDefault!22468)))))

(declare-fun b!482359 () Bool)

(assert (=> b!482359 (= e!283866 tp_is_empty!13839)))

(declare-fun b!482360 () Bool)

(assert (=> b!482360 (= e!283863 (not (= (size!15410 _keys!1874) (bvadd #b00000000000000000000000000000001 mask!2352))))))

(declare-fun lt!218705 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!31305 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!482360 (= lt!218705 (arrayScanForKey!0 _keys!1874 k0!1332 #b00000000000000000000000000000000))))

(assert (=> b!482360 e!283865))

(declare-fun c!57888 () Bool)

(assert (=> b!482360 (= c!57888 (and (not (= k0!1332 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1332 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((Unit!14116 0))(
  ( (Unit!14117) )
))
(declare-fun lt!218704 () Unit!14116)

(declare-fun lemmaKeyInListMapIsInArray!147 (array!31305 array!31303 (_ BitVec 32) (_ BitVec 32) V!19523 V!19523 (_ BitVec 64) Int) Unit!14116)

(assert (=> b!482360 (= lt!218704 (lemmaKeyInListMapIsInArray!147 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 k0!1332 defaultEntry!1519))))

(assert (= (and start!43556 res!287598) b!482353))

(assert (= (and b!482353 res!287597) b!482354))

(assert (= (and b!482354 res!287599) b!482355))

(assert (= (and b!482355 res!287601) b!482350))

(assert (= (and b!482350 res!287600) b!482352))

(assert (= (and b!482352 res!287602) b!482360))

(assert (= (and b!482360 c!57888) b!482356))

(assert (= (and b!482360 (not c!57888)) b!482351))

(assert (= (and b!482358 condMapEmpty!22468) mapIsEmpty!22468))

(assert (= (and b!482358 (not condMapEmpty!22468)) mapNonEmpty!22468))

(get-info :version)

(assert (= (and mapNonEmpty!22468 ((_ is ValueCellFull!6558) mapValue!22468)) b!482359))

(assert (= (and b!482358 ((_ is ValueCellFull!6558) mapDefault!22468)) b!482357))

(assert (= start!43556 b!482358))

(declare-fun m!463603 () Bool)

(assert (=> start!43556 m!463603))

(declare-fun m!463605 () Bool)

(assert (=> start!43556 m!463605))

(declare-fun m!463607 () Bool)

(assert (=> start!43556 m!463607))

(declare-fun m!463609 () Bool)

(assert (=> b!482352 m!463609))

(declare-fun m!463611 () Bool)

(assert (=> b!482354 m!463611))

(declare-fun m!463613 () Bool)

(assert (=> b!482350 m!463613))

(assert (=> b!482350 m!463613))

(declare-fun m!463615 () Bool)

(assert (=> b!482350 m!463615))

(declare-fun m!463617 () Bool)

(assert (=> mapNonEmpty!22468 m!463617))

(declare-fun m!463619 () Bool)

(assert (=> b!482355 m!463619))

(declare-fun m!463621 () Bool)

(assert (=> b!482356 m!463621))

(declare-fun m!463623 () Bool)

(assert (=> b!482360 m!463623))

(declare-fun m!463625 () Bool)

(assert (=> b!482360 m!463625))

(check-sat (not b!482350) (not mapNonEmpty!22468) (not b!482355) b_and!21105 (not b!482360) (not start!43556) (not b!482354) (not b!482352) (not b!482356) tp_is_empty!13839 (not b_next!12327))
(check-sat b_and!21105 (not b_next!12327))
