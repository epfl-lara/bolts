; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43514 () Bool)

(assert start!43514)

(declare-fun b_free!12285 () Bool)

(declare-fun b_next!12285 () Bool)

(assert (=> start!43514 (= b_free!12285 (not b_next!12285))))

(declare-fun tp!43137 () Bool)

(declare-fun b_and!21063 () Bool)

(assert (=> start!43514 (= tp!43137 b_and!21063)))

(declare-fun b!481853 () Bool)

(declare-fun e!283535 () Bool)

(assert (=> b!481853 (= e!283535 false)))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-datatypes ((V!19467 0))(
  ( (V!19468 (val!6946 Int)) )
))
(declare-fun minValue!1458 () V!19467)

(declare-fun lt!218627 () Bool)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-fun zeroValue!1458 () V!19467)

(declare-datatypes ((ValueCell!6537 0))(
  ( (ValueCellFull!6537 (v!9235 V!19467)) (EmptyCell!6537) )
))
(declare-datatypes ((array!31225 0))(
  ( (array!31226 (arr!15012 (Array (_ BitVec 32) ValueCell!6537)) (size!15370 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31225)

(declare-fun k0!1332 () (_ BitVec 64))

(declare-fun defaultEntry!1519 () Int)

(declare-datatypes ((array!31227 0))(
  ( (array!31228 (arr!15013 (Array (_ BitVec 32) (_ BitVec 64))) (size!15371 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31227)

(declare-datatypes ((tuple2!9118 0))(
  ( (tuple2!9119 (_1!4569 (_ BitVec 64)) (_2!4569 V!19467)) )
))
(declare-datatypes ((List!9233 0))(
  ( (Nil!9230) (Cons!9229 (h!10085 tuple2!9118) (t!15455 List!9233)) )
))
(declare-datatypes ((ListLongMap!8045 0))(
  ( (ListLongMap!8046 (toList!4038 List!9233)) )
))
(declare-fun contains!2649 (ListLongMap!8045 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2330 (array!31227 array!31225 (_ BitVec 32) (_ BitVec 32) V!19467 V!19467 (_ BitVec 32) Int) ListLongMap!8045)

(assert (=> b!481853 (= lt!218627 (contains!2649 (getCurrentListMap!2330 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k0!1332))))

(declare-fun res!287318 () Bool)

(assert (=> start!43514 (=> (not res!287318) (not e!283535))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43514 (= res!287318 (validMask!0 mask!2352))))

(assert (=> start!43514 e!283535))

(assert (=> start!43514 true))

(declare-fun tp_is_empty!13797 () Bool)

(assert (=> start!43514 tp_is_empty!13797))

(declare-fun e!283537 () Bool)

(declare-fun array_inv!10806 (array!31225) Bool)

(assert (=> start!43514 (and (array_inv!10806 _values!1516) e!283537)))

(assert (=> start!43514 tp!43137))

(declare-fun array_inv!10807 (array!31227) Bool)

(assert (=> start!43514 (array_inv!10807 _keys!1874)))

(declare-fun mapIsEmpty!22405 () Bool)

(declare-fun mapRes!22405 () Bool)

(assert (=> mapIsEmpty!22405 mapRes!22405))

(declare-fun b!481854 () Bool)

(declare-fun e!283534 () Bool)

(assert (=> b!481854 (= e!283534 tp_is_empty!13797)))

(declare-fun b!481855 () Bool)

(declare-fun e!283533 () Bool)

(assert (=> b!481855 (= e!283537 (and e!283533 mapRes!22405))))

(declare-fun condMapEmpty!22405 () Bool)

(declare-fun mapDefault!22405 () ValueCell!6537)

(assert (=> b!481855 (= condMapEmpty!22405 (= (arr!15012 _values!1516) ((as const (Array (_ BitVec 32) ValueCell!6537)) mapDefault!22405)))))

(declare-fun b!481856 () Bool)

(declare-fun res!287320 () Bool)

(assert (=> b!481856 (=> (not res!287320) (not e!283535))))

(declare-datatypes ((List!9234 0))(
  ( (Nil!9231) (Cons!9230 (h!10086 (_ BitVec 64)) (t!15456 List!9234)) )
))
(declare-fun arrayNoDuplicates!0 (array!31227 (_ BitVec 32) List!9234) Bool)

(assert (=> b!481856 (= res!287320 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9231))))

(declare-fun b!481857 () Bool)

(declare-fun res!287317 () Bool)

(assert (=> b!481857 (=> (not res!287317) (not e!283535))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31227 (_ BitVec 32)) Bool)

(assert (=> b!481857 (= res!287317 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!481858 () Bool)

(declare-fun res!287319 () Bool)

(assert (=> b!481858 (=> (not res!287319) (not e!283535))))

(assert (=> b!481858 (= res!287319 (and (= (size!15370 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15371 _keys!1874) (size!15370 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!22405 () Bool)

(declare-fun tp!43138 () Bool)

(assert (=> mapNonEmpty!22405 (= mapRes!22405 (and tp!43138 e!283534))))

(declare-fun mapKey!22405 () (_ BitVec 32))

(declare-fun mapValue!22405 () ValueCell!6537)

(declare-fun mapRest!22405 () (Array (_ BitVec 32) ValueCell!6537))

(assert (=> mapNonEmpty!22405 (= (arr!15012 _values!1516) (store mapRest!22405 mapKey!22405 mapValue!22405))))

(declare-fun b!481859 () Bool)

(assert (=> b!481859 (= e!283533 tp_is_empty!13797)))

(assert (= (and start!43514 res!287318) b!481858))

(assert (= (and b!481858 res!287319) b!481857))

(assert (= (and b!481857 res!287317) b!481856))

(assert (= (and b!481856 res!287320) b!481853))

(assert (= (and b!481855 condMapEmpty!22405) mapIsEmpty!22405))

(assert (= (and b!481855 (not condMapEmpty!22405)) mapNonEmpty!22405))

(get-info :version)

(assert (= (and mapNonEmpty!22405 ((_ is ValueCellFull!6537) mapValue!22405)) b!481854))

(assert (= (and b!481855 ((_ is ValueCellFull!6537) mapDefault!22405)) b!481859))

(assert (= start!43514 b!481855))

(declare-fun m!463235 () Bool)

(assert (=> mapNonEmpty!22405 m!463235))

(declare-fun m!463237 () Bool)

(assert (=> b!481856 m!463237))

(declare-fun m!463239 () Bool)

(assert (=> b!481853 m!463239))

(assert (=> b!481853 m!463239))

(declare-fun m!463241 () Bool)

(assert (=> b!481853 m!463241))

(declare-fun m!463243 () Bool)

(assert (=> start!43514 m!463243))

(declare-fun m!463245 () Bool)

(assert (=> start!43514 m!463245))

(declare-fun m!463247 () Bool)

(assert (=> start!43514 m!463247))

(declare-fun m!463249 () Bool)

(assert (=> b!481857 m!463249))

(check-sat (not b_next!12285) (not b!481857) (not b!481853) b_and!21063 (not mapNonEmpty!22405) (not start!43514) tp_is_empty!13797 (not b!481856))
(check-sat b_and!21063 (not b_next!12285))
