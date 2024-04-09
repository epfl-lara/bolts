; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37572 () Bool)

(assert start!37572)

(declare-fun b_free!8691 () Bool)

(declare-fun b_next!8691 () Bool)

(assert (=> start!37572 (= b_free!8691 (not b_next!8691))))

(declare-fun tp!30789 () Bool)

(declare-fun b_and!15951 () Bool)

(assert (=> start!37572 (= tp!30789 b_and!15951)))

(declare-fun b!383593 () Bool)

(declare-fun e!232969 () Bool)

(declare-fun e!232970 () Bool)

(assert (=> b!383593 (= e!232969 e!232970)))

(declare-fun res!218549 () Bool)

(assert (=> b!383593 (=> (not res!218549) (not e!232970))))

(declare-datatypes ((array!22569 0))(
  ( (array!22570 (arr!10750 (Array (_ BitVec 32) (_ BitVec 64))) (size!11102 (_ BitVec 32))) )
))
(declare-fun lt!180354 () array!22569)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22569 (_ BitVec 32)) Bool)

(assert (=> b!383593 (= res!218549 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!180354 mask!970))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun i!548 () (_ BitVec 32))

(declare-fun _keys!658 () array!22569)

(assert (=> b!383593 (= lt!180354 (array!22570 (store (arr!10750 _keys!658) i!548 k0!778) (size!11102 _keys!658)))))

(declare-fun mapNonEmpty!15573 () Bool)

(declare-fun mapRes!15573 () Bool)

(declare-fun tp!30788 () Bool)

(declare-fun e!232968 () Bool)

(assert (=> mapNonEmpty!15573 (= mapRes!15573 (and tp!30788 e!232968))))

(declare-datatypes ((V!13557 0))(
  ( (V!13558 (val!4714 Int)) )
))
(declare-datatypes ((ValueCell!4326 0))(
  ( (ValueCellFull!4326 (v!6907 V!13557)) (EmptyCell!4326) )
))
(declare-datatypes ((array!22571 0))(
  ( (array!22572 (arr!10751 (Array (_ BitVec 32) ValueCell!4326)) (size!11103 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22571)

(declare-fun mapRest!15573 () (Array (_ BitVec 32) ValueCell!4326))

(declare-fun mapValue!15573 () ValueCell!4326)

(declare-fun mapKey!15573 () (_ BitVec 32))

(assert (=> mapNonEmpty!15573 (= (arr!10751 _values!506) (store mapRest!15573 mapKey!15573 mapValue!15573))))

(declare-fun b!383594 () Bool)

(declare-fun e!232974 () Bool)

(declare-fun tp_is_empty!9339 () Bool)

(assert (=> b!383594 (= e!232974 tp_is_empty!9339)))

(declare-fun b!383595 () Bool)

(declare-fun res!218540 () Bool)

(assert (=> b!383595 (=> (not res!218540) (not e!232969))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!383595 (= res!218540 (validKeyInArray!0 k0!778))))

(declare-fun b!383596 () Bool)

(declare-fun res!218545 () Bool)

(assert (=> b!383596 (=> (not res!218545) (not e!232969))))

(declare-datatypes ((List!6167 0))(
  ( (Nil!6164) (Cons!6163 (h!7019 (_ BitVec 64)) (t!11325 List!6167)) )
))
(declare-fun arrayNoDuplicates!0 (array!22569 (_ BitVec 32) List!6167) Bool)

(assert (=> b!383596 (= res!218545 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6164))))

(declare-fun b!383597 () Bool)

(declare-fun e!232973 () Bool)

(assert (=> b!383597 (= e!232970 (not e!232973))))

(declare-fun res!218542 () Bool)

(assert (=> b!383597 (=> res!218542 e!232973)))

(declare-fun lt!180353 () Bool)

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!383597 (= res!218542 (or (and (not lt!180353) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!180353) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!180353)))))

(assert (=> b!383597 (= lt!180353 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13557)

(declare-datatypes ((tuple2!6298 0))(
  ( (tuple2!6299 (_1!3159 (_ BitVec 64)) (_2!3159 V!13557)) )
))
(declare-datatypes ((List!6168 0))(
  ( (Nil!6165) (Cons!6164 (h!7020 tuple2!6298) (t!11326 List!6168)) )
))
(declare-datatypes ((ListLongMap!5225 0))(
  ( (ListLongMap!5226 (toList!2628 List!6168)) )
))
(declare-fun lt!180357 () ListLongMap!5225)

(declare-fun minValue!472 () V!13557)

(declare-fun getCurrentListMap!2045 (array!22569 array!22571 (_ BitVec 32) (_ BitVec 32) V!13557 V!13557 (_ BitVec 32) Int) ListLongMap!5225)

(assert (=> b!383597 (= lt!180357 (getCurrentListMap!2045 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!180359 () ListLongMap!5225)

(declare-fun lt!180355 () array!22571)

(assert (=> b!383597 (= lt!180359 (getCurrentListMap!2045 lt!180354 lt!180355 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!180352 () ListLongMap!5225)

(declare-fun lt!180351 () ListLongMap!5225)

(assert (=> b!383597 (and (= lt!180352 lt!180351) (= lt!180351 lt!180352))))

(declare-fun lt!180360 () ListLongMap!5225)

(declare-fun lt!180358 () tuple2!6298)

(declare-fun +!964 (ListLongMap!5225 tuple2!6298) ListLongMap!5225)

(assert (=> b!383597 (= lt!180351 (+!964 lt!180360 lt!180358))))

(declare-fun v!373 () V!13557)

(assert (=> b!383597 (= lt!180358 (tuple2!6299 k0!778 v!373))))

(declare-datatypes ((Unit!11819 0))(
  ( (Unit!11820) )
))
(declare-fun lt!180356 () Unit!11819)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!196 (array!22569 array!22571 (_ BitVec 32) (_ BitVec 32) V!13557 V!13557 (_ BitVec 32) (_ BitVec 64) V!13557 (_ BitVec 32) Int) Unit!11819)

(assert (=> b!383597 (= lt!180356 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!196 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!863 (array!22569 array!22571 (_ BitVec 32) (_ BitVec 32) V!13557 V!13557 (_ BitVec 32) Int) ListLongMap!5225)

(assert (=> b!383597 (= lt!180352 (getCurrentListMapNoExtraKeys!863 lt!180354 lt!180355 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!383597 (= lt!180355 (array!22572 (store (arr!10751 _values!506) i!548 (ValueCellFull!4326 v!373)) (size!11103 _values!506)))))

(assert (=> b!383597 (= lt!180360 (getCurrentListMapNoExtraKeys!863 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun mapIsEmpty!15573 () Bool)

(assert (=> mapIsEmpty!15573 mapRes!15573))

(declare-fun b!383598 () Bool)

(declare-fun res!218539 () Bool)

(assert (=> b!383598 (=> (not res!218539) (not e!232969))))

(assert (=> b!383598 (= res!218539 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!383599 () Bool)

(declare-fun res!218541 () Bool)

(assert (=> b!383599 (=> (not res!218541) (not e!232969))))

(assert (=> b!383599 (= res!218541 (and (= (size!11103 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11102 _keys!658) (size!11103 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!383600 () Bool)

(assert (=> b!383600 (= e!232973 true)))

(declare-fun lt!180361 () ListLongMap!5225)

(assert (=> b!383600 (= lt!180361 (+!964 lt!180357 lt!180358))))

(assert (=> b!383600 (= lt!180359 lt!180352)))

(declare-fun b!383601 () Bool)

(declare-fun res!218548 () Bool)

(assert (=> b!383601 (=> (not res!218548) (not e!232969))))

(assert (=> b!383601 (= res!218548 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11102 _keys!658))))))

(declare-fun b!383602 () Bool)

(declare-fun res!218544 () Bool)

(assert (=> b!383602 (=> (not res!218544) (not e!232969))))

(declare-fun arrayContainsKey!0 (array!22569 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!383602 (= res!218544 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!383603 () Bool)

(declare-fun e!232972 () Bool)

(assert (=> b!383603 (= e!232972 (and e!232974 mapRes!15573))))

(declare-fun condMapEmpty!15573 () Bool)

(declare-fun mapDefault!15573 () ValueCell!4326)

(assert (=> b!383603 (= condMapEmpty!15573 (= (arr!10751 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4326)) mapDefault!15573)))))

(declare-fun b!383604 () Bool)

(declare-fun res!218543 () Bool)

(assert (=> b!383604 (=> (not res!218543) (not e!232969))))

(assert (=> b!383604 (= res!218543 (or (= (select (arr!10750 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10750 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!218547 () Bool)

(assert (=> start!37572 (=> (not res!218547) (not e!232969))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37572 (= res!218547 (validMask!0 mask!970))))

(assert (=> start!37572 e!232969))

(declare-fun array_inv!7896 (array!22571) Bool)

(assert (=> start!37572 (and (array_inv!7896 _values!506) e!232972)))

(assert (=> start!37572 tp!30789))

(assert (=> start!37572 true))

(assert (=> start!37572 tp_is_empty!9339))

(declare-fun array_inv!7897 (array!22569) Bool)

(assert (=> start!37572 (array_inv!7897 _keys!658)))

(declare-fun b!383605 () Bool)

(assert (=> b!383605 (= e!232968 tp_is_empty!9339)))

(declare-fun b!383606 () Bool)

(declare-fun res!218546 () Bool)

(assert (=> b!383606 (=> (not res!218546) (not e!232970))))

(assert (=> b!383606 (= res!218546 (arrayNoDuplicates!0 lt!180354 #b00000000000000000000000000000000 Nil!6164))))

(assert (= (and start!37572 res!218547) b!383599))

(assert (= (and b!383599 res!218541) b!383598))

(assert (= (and b!383598 res!218539) b!383596))

(assert (= (and b!383596 res!218545) b!383601))

(assert (= (and b!383601 res!218548) b!383595))

(assert (= (and b!383595 res!218540) b!383604))

(assert (= (and b!383604 res!218543) b!383602))

(assert (= (and b!383602 res!218544) b!383593))

(assert (= (and b!383593 res!218549) b!383606))

(assert (= (and b!383606 res!218546) b!383597))

(assert (= (and b!383597 (not res!218542)) b!383600))

(assert (= (and b!383603 condMapEmpty!15573) mapIsEmpty!15573))

(assert (= (and b!383603 (not condMapEmpty!15573)) mapNonEmpty!15573))

(get-info :version)

(assert (= (and mapNonEmpty!15573 ((_ is ValueCellFull!4326) mapValue!15573)) b!383605))

(assert (= (and b!383603 ((_ is ValueCellFull!4326) mapDefault!15573)) b!383594))

(assert (= start!37572 b!383603))

(declare-fun m!380361 () Bool)

(assert (=> b!383600 m!380361))

(declare-fun m!380363 () Bool)

(assert (=> b!383596 m!380363))

(declare-fun m!380365 () Bool)

(assert (=> mapNonEmpty!15573 m!380365))

(declare-fun m!380367 () Bool)

(assert (=> start!37572 m!380367))

(declare-fun m!380369 () Bool)

(assert (=> start!37572 m!380369))

(declare-fun m!380371 () Bool)

(assert (=> start!37572 m!380371))

(declare-fun m!380373 () Bool)

(assert (=> b!383597 m!380373))

(declare-fun m!380375 () Bool)

(assert (=> b!383597 m!380375))

(declare-fun m!380377 () Bool)

(assert (=> b!383597 m!380377))

(declare-fun m!380379 () Bool)

(assert (=> b!383597 m!380379))

(declare-fun m!380381 () Bool)

(assert (=> b!383597 m!380381))

(declare-fun m!380383 () Bool)

(assert (=> b!383597 m!380383))

(declare-fun m!380385 () Bool)

(assert (=> b!383597 m!380385))

(declare-fun m!380387 () Bool)

(assert (=> b!383604 m!380387))

(declare-fun m!380389 () Bool)

(assert (=> b!383593 m!380389))

(declare-fun m!380391 () Bool)

(assert (=> b!383593 m!380391))

(declare-fun m!380393 () Bool)

(assert (=> b!383595 m!380393))

(declare-fun m!380395 () Bool)

(assert (=> b!383606 m!380395))

(declare-fun m!380397 () Bool)

(assert (=> b!383602 m!380397))

(declare-fun m!380399 () Bool)

(assert (=> b!383598 m!380399))

(check-sat (not mapNonEmpty!15573) (not b!383600) (not b!383598) tp_is_empty!9339 (not b!383606) (not b!383593) (not b!383602) (not b!383597) (not b!383595) (not start!37572) (not b!383596) (not b_next!8691) b_and!15951)
(check-sat b_and!15951 (not b_next!8691))
