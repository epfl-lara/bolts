; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36954 () Bool)

(assert start!36954)

(declare-fun b_free!8073 () Bool)

(declare-fun b_next!8073 () Bool)

(assert (=> start!36954 (= b_free!8073 (not b_next!8073))))

(declare-fun tp!28935 () Bool)

(declare-fun b_and!15333 () Bool)

(assert (=> start!36954 (= tp!28935 b_and!15333)))

(declare-fun b!370268 () Bool)

(declare-fun res!208002 () Bool)

(declare-fun e!226163 () Bool)

(assert (=> b!370268 (=> (not res!208002) (not e!226163))))

(declare-datatypes ((array!21361 0))(
  ( (array!21362 (arr!10146 (Array (_ BitVec 32) (_ BitVec 64))) (size!10498 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21361)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!370268 (= res!208002 (or (= (select (arr!10146 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10146 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!370269 () Bool)

(declare-fun e!226159 () Bool)

(declare-fun tp_is_empty!8721 () Bool)

(assert (=> b!370269 (= e!226159 tp_is_empty!8721)))

(declare-fun b!370270 () Bool)

(declare-fun res!207998 () Bool)

(assert (=> b!370270 (=> (not res!207998) (not e!226163))))

(declare-datatypes ((List!5695 0))(
  ( (Nil!5692) (Cons!5691 (h!6547 (_ BitVec 64)) (t!10853 List!5695)) )
))
(declare-fun arrayNoDuplicates!0 (array!21361 (_ BitVec 32) List!5695) Bool)

(assert (=> b!370270 (= res!207998 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5692))))

(declare-fun b!370271 () Bool)

(declare-fun res!208001 () Bool)

(assert (=> b!370271 (=> (not res!208001) (not e!226163))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21361 (_ BitVec 32)) Bool)

(assert (=> b!370271 (= res!208001 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!370272 () Bool)

(declare-fun e!226161 () Bool)

(assert (=> b!370272 (= e!226161 false)))

(declare-datatypes ((V!12733 0))(
  ( (V!12734 (val!4405 Int)) )
))
(declare-datatypes ((ValueCell!4017 0))(
  ( (ValueCellFull!4017 (v!6598 V!12733)) (EmptyCell!4017) )
))
(declare-datatypes ((array!21363 0))(
  ( (array!21364 (arr!10147 (Array (_ BitVec 32) ValueCell!4017)) (size!10499 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21363)

(declare-datatypes ((tuple2!5830 0))(
  ( (tuple2!5831 (_1!2925 (_ BitVec 64)) (_2!2925 V!12733)) )
))
(declare-datatypes ((List!5696 0))(
  ( (Nil!5693) (Cons!5692 (h!6548 tuple2!5830) (t!10854 List!5696)) )
))
(declare-datatypes ((ListLongMap!4757 0))(
  ( (ListLongMap!4758 (toList!2394 List!5696)) )
))
(declare-fun lt!169935 () ListLongMap!4757)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!12733)

(declare-fun lt!169936 () array!21361)

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-fun v!373 () V!12733)

(declare-fun minValue!472 () V!12733)

(declare-fun getCurrentListMapNoExtraKeys!662 (array!21361 array!21363 (_ BitVec 32) (_ BitVec 32) V!12733 V!12733 (_ BitVec 32) Int) ListLongMap!4757)

(assert (=> b!370272 (= lt!169935 (getCurrentListMapNoExtraKeys!662 lt!169936 (array!21364 (store (arr!10147 _values!506) i!548 (ValueCellFull!4017 v!373)) (size!10499 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!169934 () ListLongMap!4757)

(assert (=> b!370272 (= lt!169934 (getCurrentListMapNoExtraKeys!662 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!370273 () Bool)

(assert (=> b!370273 (= e!226163 e!226161)))

(declare-fun res!207996 () Bool)

(assert (=> b!370273 (=> (not res!207996) (not e!226161))))

(assert (=> b!370273 (= res!207996 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!169936 mask!970))))

(declare-fun k0!778 () (_ BitVec 64))

(assert (=> b!370273 (= lt!169936 (array!21362 (store (arr!10146 _keys!658) i!548 k0!778) (size!10498 _keys!658)))))

(declare-fun mapNonEmpty!14646 () Bool)

(declare-fun mapRes!14646 () Bool)

(declare-fun tp!28934 () Bool)

(assert (=> mapNonEmpty!14646 (= mapRes!14646 (and tp!28934 e!226159))))

(declare-fun mapValue!14646 () ValueCell!4017)

(declare-fun mapKey!14646 () (_ BitVec 32))

(declare-fun mapRest!14646 () (Array (_ BitVec 32) ValueCell!4017))

(assert (=> mapNonEmpty!14646 (= (arr!10147 _values!506) (store mapRest!14646 mapKey!14646 mapValue!14646))))

(declare-fun b!370275 () Bool)

(declare-fun res!207999 () Bool)

(assert (=> b!370275 (=> (not res!207999) (not e!226163))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!370275 (= res!207999 (validKeyInArray!0 k0!778))))

(declare-fun b!370276 () Bool)

(declare-fun res!208004 () Bool)

(assert (=> b!370276 (=> (not res!208004) (not e!226161))))

(assert (=> b!370276 (= res!208004 (arrayNoDuplicates!0 lt!169936 #b00000000000000000000000000000000 Nil!5692))))

(declare-fun b!370277 () Bool)

(declare-fun res!207995 () Bool)

(assert (=> b!370277 (=> (not res!207995) (not e!226163))))

(assert (=> b!370277 (= res!207995 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10498 _keys!658))))))

(declare-fun b!370278 () Bool)

(declare-fun e!226164 () Bool)

(declare-fun e!226162 () Bool)

(assert (=> b!370278 (= e!226164 (and e!226162 mapRes!14646))))

(declare-fun condMapEmpty!14646 () Bool)

(declare-fun mapDefault!14646 () ValueCell!4017)

(assert (=> b!370278 (= condMapEmpty!14646 (= (arr!10147 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4017)) mapDefault!14646)))))

(declare-fun b!370279 () Bool)

(assert (=> b!370279 (= e!226162 tp_is_empty!8721)))

(declare-fun b!370274 () Bool)

(declare-fun res!207997 () Bool)

(assert (=> b!370274 (=> (not res!207997) (not e!226163))))

(declare-fun arrayContainsKey!0 (array!21361 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!370274 (= res!207997 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun res!208003 () Bool)

(assert (=> start!36954 (=> (not res!208003) (not e!226163))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36954 (= res!208003 (validMask!0 mask!970))))

(assert (=> start!36954 e!226163))

(declare-fun array_inv!7492 (array!21363) Bool)

(assert (=> start!36954 (and (array_inv!7492 _values!506) e!226164)))

(assert (=> start!36954 tp!28935))

(assert (=> start!36954 true))

(assert (=> start!36954 tp_is_empty!8721))

(declare-fun array_inv!7493 (array!21361) Bool)

(assert (=> start!36954 (array_inv!7493 _keys!658)))

(declare-fun b!370280 () Bool)

(declare-fun res!208000 () Bool)

(assert (=> b!370280 (=> (not res!208000) (not e!226163))))

(assert (=> b!370280 (= res!208000 (and (= (size!10499 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10498 _keys!658) (size!10499 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!14646 () Bool)

(assert (=> mapIsEmpty!14646 mapRes!14646))

(assert (= (and start!36954 res!208003) b!370280))

(assert (= (and b!370280 res!208000) b!370271))

(assert (= (and b!370271 res!208001) b!370270))

(assert (= (and b!370270 res!207998) b!370277))

(assert (= (and b!370277 res!207995) b!370275))

(assert (= (and b!370275 res!207999) b!370268))

(assert (= (and b!370268 res!208002) b!370274))

(assert (= (and b!370274 res!207997) b!370273))

(assert (= (and b!370273 res!207996) b!370276))

(assert (= (and b!370276 res!208004) b!370272))

(assert (= (and b!370278 condMapEmpty!14646) mapIsEmpty!14646))

(assert (= (and b!370278 (not condMapEmpty!14646)) mapNonEmpty!14646))

(get-info :version)

(assert (= (and mapNonEmpty!14646 ((_ is ValueCellFull!4017) mapValue!14646)) b!370269))

(assert (= (and b!370278 ((_ is ValueCellFull!4017) mapDefault!14646)) b!370279))

(assert (= start!36954 b!370278))

(declare-fun m!366449 () Bool)

(assert (=> b!370271 m!366449))

(declare-fun m!366451 () Bool)

(assert (=> b!370270 m!366451))

(declare-fun m!366453 () Bool)

(assert (=> b!370276 m!366453))

(declare-fun m!366455 () Bool)

(assert (=> b!370275 m!366455))

(declare-fun m!366457 () Bool)

(assert (=> b!370273 m!366457))

(declare-fun m!366459 () Bool)

(assert (=> b!370273 m!366459))

(declare-fun m!366461 () Bool)

(assert (=> mapNonEmpty!14646 m!366461))

(declare-fun m!366463 () Bool)

(assert (=> b!370268 m!366463))

(declare-fun m!366465 () Bool)

(assert (=> start!36954 m!366465))

(declare-fun m!366467 () Bool)

(assert (=> start!36954 m!366467))

(declare-fun m!366469 () Bool)

(assert (=> start!36954 m!366469))

(declare-fun m!366471 () Bool)

(assert (=> b!370274 m!366471))

(declare-fun m!366473 () Bool)

(assert (=> b!370272 m!366473))

(declare-fun m!366475 () Bool)

(assert (=> b!370272 m!366475))

(declare-fun m!366477 () Bool)

(assert (=> b!370272 m!366477))

(check-sat (not b!370271) (not b!370272) (not b!370275) (not b!370273) (not start!36954) b_and!15333 (not b!370276) (not b!370270) (not mapNonEmpty!14646) tp_is_empty!8721 (not b!370274) (not b_next!8073))
(check-sat b_and!15333 (not b_next!8073))
