; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43526 () Bool)

(assert start!43526)

(declare-fun b_free!12297 () Bool)

(declare-fun b_next!12297 () Bool)

(assert (=> start!43526 (= b_free!12297 (not b_next!12297))))

(declare-fun tp!43173 () Bool)

(declare-fun b_and!21075 () Bool)

(assert (=> start!43526 (= tp!43173 b_and!21075)))

(declare-fun b!481979 () Bool)

(declare-fun e!283625 () Bool)

(declare-fun tp_is_empty!13809 () Bool)

(assert (=> b!481979 (= e!283625 tp_is_empty!13809)))

(declare-fun b!481980 () Bool)

(declare-fun res!287389 () Bool)

(declare-fun e!283624 () Bool)

(assert (=> b!481980 (=> (not res!287389) (not e!283624))))

(declare-datatypes ((array!31249 0))(
  ( (array!31250 (arr!15024 (Array (_ BitVec 32) (_ BitVec 64))) (size!15382 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31249)

(declare-datatypes ((List!9242 0))(
  ( (Nil!9239) (Cons!9238 (h!10094 (_ BitVec 64)) (t!15464 List!9242)) )
))
(declare-fun arrayNoDuplicates!0 (array!31249 (_ BitVec 32) List!9242) Bool)

(assert (=> b!481980 (= res!287389 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9239))))

(declare-fun b!481981 () Bool)

(declare-fun e!283627 () Bool)

(declare-fun e!283623 () Bool)

(declare-fun mapRes!22423 () Bool)

(assert (=> b!481981 (= e!283627 (and e!283623 mapRes!22423))))

(declare-fun condMapEmpty!22423 () Bool)

(declare-datatypes ((V!19483 0))(
  ( (V!19484 (val!6952 Int)) )
))
(declare-datatypes ((ValueCell!6543 0))(
  ( (ValueCellFull!6543 (v!9241 V!19483)) (EmptyCell!6543) )
))
(declare-datatypes ((array!31251 0))(
  ( (array!31252 (arr!15025 (Array (_ BitVec 32) ValueCell!6543)) (size!15383 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31251)

(declare-fun mapDefault!22423 () ValueCell!6543)

(assert (=> b!481981 (= condMapEmpty!22423 (= (arr!15025 _values!1516) ((as const (Array (_ BitVec 32) ValueCell!6543)) mapDefault!22423)))))

(declare-fun b!481982 () Bool)

(declare-fun res!287391 () Bool)

(assert (=> b!481982 (=> (not res!287391) (not e!283624))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31249 (_ BitVec 32)) Bool)

(assert (=> b!481982 (= res!287391 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun res!287390 () Bool)

(assert (=> start!43526 (=> (not res!287390) (not e!283624))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43526 (= res!287390 (validMask!0 mask!2352))))

(assert (=> start!43526 e!283624))

(assert (=> start!43526 true))

(assert (=> start!43526 tp_is_empty!13809))

(declare-fun array_inv!10816 (array!31251) Bool)

(assert (=> start!43526 (and (array_inv!10816 _values!1516) e!283627)))

(assert (=> start!43526 tp!43173))

(declare-fun array_inv!10817 (array!31249) Bool)

(assert (=> start!43526 (array_inv!10817 _keys!1874)))

(declare-fun b!481983 () Bool)

(assert (=> b!481983 (= e!283623 tp_is_empty!13809)))

(declare-fun b!481984 () Bool)

(assert (=> b!481984 (= e!283624 false)))

(declare-fun k0!1332 () (_ BitVec 64))

(declare-fun minValue!1458 () V!19483)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-fun defaultEntry!1519 () Int)

(declare-fun lt!218645 () Bool)

(declare-fun zeroValue!1458 () V!19483)

(declare-datatypes ((tuple2!9126 0))(
  ( (tuple2!9127 (_1!4573 (_ BitVec 64)) (_2!4573 V!19483)) )
))
(declare-datatypes ((List!9243 0))(
  ( (Nil!9240) (Cons!9239 (h!10095 tuple2!9126) (t!15465 List!9243)) )
))
(declare-datatypes ((ListLongMap!8053 0))(
  ( (ListLongMap!8054 (toList!4042 List!9243)) )
))
(declare-fun contains!2653 (ListLongMap!8053 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2334 (array!31249 array!31251 (_ BitVec 32) (_ BitVec 32) V!19483 V!19483 (_ BitVec 32) Int) ListLongMap!8053)

(assert (=> b!481984 (= lt!218645 (contains!2653 (getCurrentListMap!2334 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k0!1332))))

(declare-fun b!481985 () Bool)

(declare-fun res!287392 () Bool)

(assert (=> b!481985 (=> (not res!287392) (not e!283624))))

(assert (=> b!481985 (= res!287392 (and (= (size!15383 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15382 _keys!1874) (size!15383 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!22423 () Bool)

(assert (=> mapIsEmpty!22423 mapRes!22423))

(declare-fun mapNonEmpty!22423 () Bool)

(declare-fun tp!43174 () Bool)

(assert (=> mapNonEmpty!22423 (= mapRes!22423 (and tp!43174 e!283625))))

(declare-fun mapRest!22423 () (Array (_ BitVec 32) ValueCell!6543))

(declare-fun mapKey!22423 () (_ BitVec 32))

(declare-fun mapValue!22423 () ValueCell!6543)

(assert (=> mapNonEmpty!22423 (= (arr!15025 _values!1516) (store mapRest!22423 mapKey!22423 mapValue!22423))))

(assert (= (and start!43526 res!287390) b!481985))

(assert (= (and b!481985 res!287392) b!481982))

(assert (= (and b!481982 res!287391) b!481980))

(assert (= (and b!481980 res!287389) b!481984))

(assert (= (and b!481981 condMapEmpty!22423) mapIsEmpty!22423))

(assert (= (and b!481981 (not condMapEmpty!22423)) mapNonEmpty!22423))

(get-info :version)

(assert (= (and mapNonEmpty!22423 ((_ is ValueCellFull!6543) mapValue!22423)) b!481979))

(assert (= (and b!481981 ((_ is ValueCellFull!6543) mapDefault!22423)) b!481983))

(assert (= start!43526 b!481981))

(declare-fun m!463331 () Bool)

(assert (=> start!43526 m!463331))

(declare-fun m!463333 () Bool)

(assert (=> start!43526 m!463333))

(declare-fun m!463335 () Bool)

(assert (=> start!43526 m!463335))

(declare-fun m!463337 () Bool)

(assert (=> b!481980 m!463337))

(declare-fun m!463339 () Bool)

(assert (=> mapNonEmpty!22423 m!463339))

(declare-fun m!463341 () Bool)

(assert (=> b!481982 m!463341))

(declare-fun m!463343 () Bool)

(assert (=> b!481984 m!463343))

(assert (=> b!481984 m!463343))

(declare-fun m!463345 () Bool)

(assert (=> b!481984 m!463345))

(check-sat b_and!21075 (not b!481984) (not b!481980) (not b!481982) (not start!43526) (not mapNonEmpty!22423) (not b_next!12297) tp_is_empty!13809)
(check-sat b_and!21075 (not b_next!12297))
