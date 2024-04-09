; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37770 () Bool)

(assert start!37770)

(declare-fun b_free!8865 () Bool)

(declare-fun b_next!8865 () Bool)

(assert (=> start!37770 (= b_free!8865 (not b_next!8865))))

(declare-fun tp!31346 () Bool)

(declare-fun b_and!16125 () Bool)

(assert (=> start!37770 (= tp!31346 b_and!16125)))

(declare-fun b!387377 () Bool)

(declare-fun res!221432 () Bool)

(declare-fun e!234845 () Bool)

(assert (=> b!387377 (=> (not res!221432) (not e!234845))))

(declare-datatypes ((array!22943 0))(
  ( (array!22944 (arr!10937 (Array (_ BitVec 32) (_ BitVec 64))) (size!11289 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22943)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22943 (_ BitVec 32)) Bool)

(assert (=> b!387377 (= res!221432 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!387378 () Bool)

(declare-fun res!221440 () Bool)

(assert (=> b!387378 (=> (not res!221440) (not e!234845))))

(declare-datatypes ((List!6296 0))(
  ( (Nil!6293) (Cons!6292 (h!7148 (_ BitVec 64)) (t!11454 List!6296)) )
))
(declare-fun arrayNoDuplicates!0 (array!22943 (_ BitVec 32) List!6296) Bool)

(assert (=> b!387378 (= res!221440 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6293))))

(declare-fun b!387379 () Bool)

(declare-fun res!221436 () Bool)

(assert (=> b!387379 (=> (not res!221436) (not e!234845))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!387379 (= res!221436 (validKeyInArray!0 k0!778))))

(declare-fun b!387380 () Bool)

(declare-fun res!221437 () Bool)

(assert (=> b!387380 (=> (not res!221437) (not e!234845))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!387380 (= res!221437 (or (= (select (arr!10937 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10937 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!387381 () Bool)

(declare-fun res!221434 () Bool)

(declare-fun e!234846 () Bool)

(assert (=> b!387381 (=> (not res!221434) (not e!234846))))

(declare-fun lt!182032 () array!22943)

(assert (=> b!387381 (= res!221434 (arrayNoDuplicates!0 lt!182032 #b00000000000000000000000000000000 Nil!6293))))

(declare-fun b!387382 () Bool)

(declare-fun e!234847 () Bool)

(declare-fun tp_is_empty!9537 () Bool)

(assert (=> b!387382 (= e!234847 tp_is_empty!9537)))

(declare-fun mapIsEmpty!15870 () Bool)

(declare-fun mapRes!15870 () Bool)

(assert (=> mapIsEmpty!15870 mapRes!15870))

(declare-fun b!387383 () Bool)

(declare-fun res!221435 () Bool)

(assert (=> b!387383 (=> (not res!221435) (not e!234845))))

(assert (=> b!387383 (= res!221435 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11289 _keys!658))))))

(declare-fun b!387385 () Bool)

(declare-fun e!234848 () Bool)

(assert (=> b!387385 (= e!234848 tp_is_empty!9537)))

(declare-fun b!387386 () Bool)

(declare-fun res!221441 () Bool)

(assert (=> b!387386 (=> (not res!221441) (not e!234845))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!13821 0))(
  ( (V!13822 (val!4813 Int)) )
))
(declare-datatypes ((ValueCell!4425 0))(
  ( (ValueCellFull!4425 (v!7006 V!13821)) (EmptyCell!4425) )
))
(declare-datatypes ((array!22945 0))(
  ( (array!22946 (arr!10938 (Array (_ BitVec 32) ValueCell!4425)) (size!11290 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22945)

(assert (=> b!387386 (= res!221441 (and (= (size!11290 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11289 _keys!658) (size!11290 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!387387 () Bool)

(assert (=> b!387387 (= e!234845 e!234846)))

(declare-fun res!221433 () Bool)

(assert (=> b!387387 (=> (not res!221433) (not e!234846))))

(assert (=> b!387387 (= res!221433 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!182032 mask!970))))

(assert (=> b!387387 (= lt!182032 (array!22944 (store (arr!10937 _keys!658) i!548 k0!778) (size!11289 _keys!658)))))

(declare-fun b!387388 () Bool)

(assert (=> b!387388 (= e!234846 false)))

(declare-fun defaultEntry!514 () Int)

(declare-fun v!373 () V!13821)

(declare-datatypes ((tuple2!6412 0))(
  ( (tuple2!6413 (_1!3216 (_ BitVec 64)) (_2!3216 V!13821)) )
))
(declare-datatypes ((List!6297 0))(
  ( (Nil!6294) (Cons!6293 (h!7149 tuple2!6412) (t!11455 List!6297)) )
))
(declare-datatypes ((ListLongMap!5339 0))(
  ( (ListLongMap!5340 (toList!2685 List!6297)) )
))
(declare-fun lt!182031 () ListLongMap!5339)

(declare-fun zeroValue!472 () V!13821)

(declare-fun minValue!472 () V!13821)

(declare-fun getCurrentListMapNoExtraKeys!919 (array!22943 array!22945 (_ BitVec 32) (_ BitVec 32) V!13821 V!13821 (_ BitVec 32) Int) ListLongMap!5339)

(assert (=> b!387388 (= lt!182031 (getCurrentListMapNoExtraKeys!919 lt!182032 (array!22946 (store (arr!10938 _values!506) i!548 (ValueCellFull!4425 v!373)) (size!11290 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!182030 () ListLongMap!5339)

(assert (=> b!387388 (= lt!182030 (getCurrentListMapNoExtraKeys!919 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!387384 () Bool)

(declare-fun e!234844 () Bool)

(assert (=> b!387384 (= e!234844 (and e!234847 mapRes!15870))))

(declare-fun condMapEmpty!15870 () Bool)

(declare-fun mapDefault!15870 () ValueCell!4425)

(assert (=> b!387384 (= condMapEmpty!15870 (= (arr!10938 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4425)) mapDefault!15870)))))

(declare-fun res!221438 () Bool)

(assert (=> start!37770 (=> (not res!221438) (not e!234845))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37770 (= res!221438 (validMask!0 mask!970))))

(assert (=> start!37770 e!234845))

(declare-fun array_inv!8022 (array!22945) Bool)

(assert (=> start!37770 (and (array_inv!8022 _values!506) e!234844)))

(assert (=> start!37770 tp!31346))

(assert (=> start!37770 true))

(assert (=> start!37770 tp_is_empty!9537))

(declare-fun array_inv!8023 (array!22943) Bool)

(assert (=> start!37770 (array_inv!8023 _keys!658)))

(declare-fun mapNonEmpty!15870 () Bool)

(declare-fun tp!31347 () Bool)

(assert (=> mapNonEmpty!15870 (= mapRes!15870 (and tp!31347 e!234848))))

(declare-fun mapKey!15870 () (_ BitVec 32))

(declare-fun mapRest!15870 () (Array (_ BitVec 32) ValueCell!4425))

(declare-fun mapValue!15870 () ValueCell!4425)

(assert (=> mapNonEmpty!15870 (= (arr!10938 _values!506) (store mapRest!15870 mapKey!15870 mapValue!15870))))

(declare-fun b!387389 () Bool)

(declare-fun res!221439 () Bool)

(assert (=> b!387389 (=> (not res!221439) (not e!234845))))

(declare-fun arrayContainsKey!0 (array!22943 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!387389 (= res!221439 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(assert (= (and start!37770 res!221438) b!387386))

(assert (= (and b!387386 res!221441) b!387377))

(assert (= (and b!387377 res!221432) b!387378))

(assert (= (and b!387378 res!221440) b!387383))

(assert (= (and b!387383 res!221435) b!387379))

(assert (= (and b!387379 res!221436) b!387380))

(assert (= (and b!387380 res!221437) b!387389))

(assert (= (and b!387389 res!221439) b!387387))

(assert (= (and b!387387 res!221433) b!387381))

(assert (= (and b!387381 res!221434) b!387388))

(assert (= (and b!387384 condMapEmpty!15870) mapIsEmpty!15870))

(assert (= (and b!387384 (not condMapEmpty!15870)) mapNonEmpty!15870))

(get-info :version)

(assert (= (and mapNonEmpty!15870 ((_ is ValueCellFull!4425) mapValue!15870)) b!387385))

(assert (= (and b!387384 ((_ is ValueCellFull!4425) mapDefault!15870)) b!387382))

(assert (= start!37770 b!387384))

(declare-fun m!383501 () Bool)

(assert (=> b!387387 m!383501))

(declare-fun m!383503 () Bool)

(assert (=> b!387387 m!383503))

(declare-fun m!383505 () Bool)

(assert (=> b!387377 m!383505))

(declare-fun m!383507 () Bool)

(assert (=> b!387388 m!383507))

(declare-fun m!383509 () Bool)

(assert (=> b!387388 m!383509))

(declare-fun m!383511 () Bool)

(assert (=> b!387388 m!383511))

(declare-fun m!383513 () Bool)

(assert (=> b!387389 m!383513))

(declare-fun m!383515 () Bool)

(assert (=> mapNonEmpty!15870 m!383515))

(declare-fun m!383517 () Bool)

(assert (=> b!387378 m!383517))

(declare-fun m!383519 () Bool)

(assert (=> start!37770 m!383519))

(declare-fun m!383521 () Bool)

(assert (=> start!37770 m!383521))

(declare-fun m!383523 () Bool)

(assert (=> start!37770 m!383523))

(declare-fun m!383525 () Bool)

(assert (=> b!387381 m!383525))

(declare-fun m!383527 () Bool)

(assert (=> b!387379 m!383527))

(declare-fun m!383529 () Bool)

(assert (=> b!387380 m!383529))

(check-sat (not b!387387) (not b!387379) (not b!387377) (not b!387388) (not b!387389) (not b!387381) (not b!387378) b_and!16125 (not mapNonEmpty!15870) (not start!37770) (not b_next!8865) tp_is_empty!9537)
(check-sat b_and!16125 (not b_next!8865))
