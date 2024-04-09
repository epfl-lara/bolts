; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37764 () Bool)

(assert start!37764)

(declare-fun b_free!8859 () Bool)

(declare-fun b_next!8859 () Bool)

(assert (=> start!37764 (= b_free!8859 (not b_next!8859))))

(declare-fun tp!31328 () Bool)

(declare-fun b_and!16119 () Bool)

(assert (=> start!37764 (= tp!31328 b_and!16119)))

(declare-fun mapNonEmpty!15861 () Bool)

(declare-fun mapRes!15861 () Bool)

(declare-fun tp!31329 () Bool)

(declare-fun e!234791 () Bool)

(assert (=> mapNonEmpty!15861 (= mapRes!15861 (and tp!31329 e!234791))))

(declare-fun mapKey!15861 () (_ BitVec 32))

(declare-datatypes ((V!13813 0))(
  ( (V!13814 (val!4810 Int)) )
))
(declare-datatypes ((ValueCell!4422 0))(
  ( (ValueCellFull!4422 (v!7003 V!13813)) (EmptyCell!4422) )
))
(declare-fun mapRest!15861 () (Array (_ BitVec 32) ValueCell!4422))

(declare-datatypes ((array!22931 0))(
  ( (array!22932 (arr!10931 (Array (_ BitVec 32) ValueCell!4422)) (size!11283 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22931)

(declare-fun mapValue!15861 () ValueCell!4422)

(assert (=> mapNonEmpty!15861 (= (arr!10931 _values!506) (store mapRest!15861 mapKey!15861 mapValue!15861))))

(declare-fun b!387260 () Bool)

(declare-fun res!221344 () Bool)

(declare-fun e!234794 () Bool)

(assert (=> b!387260 (=> (not res!221344) (not e!234794))))

(declare-fun i!548 () (_ BitVec 32))

(declare-datatypes ((array!22933 0))(
  ( (array!22934 (arr!10932 (Array (_ BitVec 32) (_ BitVec 64))) (size!11284 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22933)

(assert (=> b!387260 (= res!221344 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11284 _keys!658))))))

(declare-fun b!387261 () Bool)

(declare-fun e!234793 () Bool)

(assert (=> b!387261 (= e!234794 e!234793)))

(declare-fun res!221346 () Bool)

(assert (=> b!387261 (=> (not res!221346) (not e!234793))))

(declare-fun lt!182003 () array!22933)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22933 (_ BitVec 32)) Bool)

(assert (=> b!387261 (= res!221346 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!182003 mask!970))))

(declare-fun k0!778 () (_ BitVec 64))

(assert (=> b!387261 (= lt!182003 (array!22934 (store (arr!10932 _keys!658) i!548 k0!778) (size!11284 _keys!658)))))

(declare-fun b!387262 () Bool)

(declare-fun res!221345 () Bool)

(assert (=> b!387262 (=> (not res!221345) (not e!234794))))

(declare-datatypes ((List!6292 0))(
  ( (Nil!6289) (Cons!6288 (h!7144 (_ BitVec 64)) (t!11450 List!6292)) )
))
(declare-fun arrayNoDuplicates!0 (array!22933 (_ BitVec 32) List!6292) Bool)

(assert (=> b!387262 (= res!221345 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6289))))

(declare-fun b!387263 () Bool)

(declare-fun res!221349 () Bool)

(assert (=> b!387263 (=> (not res!221349) (not e!234793))))

(assert (=> b!387263 (= res!221349 (arrayNoDuplicates!0 lt!182003 #b00000000000000000000000000000000 Nil!6289))))

(declare-fun b!387264 () Bool)

(declare-fun tp_is_empty!9531 () Bool)

(assert (=> b!387264 (= e!234791 tp_is_empty!9531)))

(declare-fun res!221351 () Bool)

(assert (=> start!37764 (=> (not res!221351) (not e!234794))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37764 (= res!221351 (validMask!0 mask!970))))

(assert (=> start!37764 e!234794))

(declare-fun e!234790 () Bool)

(declare-fun array_inv!8018 (array!22931) Bool)

(assert (=> start!37764 (and (array_inv!8018 _values!506) e!234790)))

(assert (=> start!37764 tp!31328))

(assert (=> start!37764 true))

(assert (=> start!37764 tp_is_empty!9531))

(declare-fun array_inv!8019 (array!22933) Bool)

(assert (=> start!37764 (array_inv!8019 _keys!658)))

(declare-fun b!387265 () Bool)

(declare-fun res!221347 () Bool)

(assert (=> b!387265 (=> (not res!221347) (not e!234794))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!387265 (= res!221347 (validKeyInArray!0 k0!778))))

(declare-fun b!387266 () Bool)

(declare-fun res!221348 () Bool)

(assert (=> b!387266 (=> (not res!221348) (not e!234794))))

(assert (=> b!387266 (= res!221348 (or (= (select (arr!10932 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10932 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!387267 () Bool)

(declare-fun e!234795 () Bool)

(assert (=> b!387267 (= e!234795 tp_is_empty!9531)))

(declare-fun mapIsEmpty!15861 () Bool)

(assert (=> mapIsEmpty!15861 mapRes!15861))

(declare-fun b!387268 () Bool)

(declare-fun res!221343 () Bool)

(assert (=> b!387268 (=> (not res!221343) (not e!234794))))

(assert (=> b!387268 (= res!221343 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!387269 () Bool)

(assert (=> b!387269 (= e!234793 false)))

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13813)

(declare-datatypes ((tuple2!6408 0))(
  ( (tuple2!6409 (_1!3214 (_ BitVec 64)) (_2!3214 V!13813)) )
))
(declare-datatypes ((List!6293 0))(
  ( (Nil!6290) (Cons!6289 (h!7145 tuple2!6408) (t!11451 List!6293)) )
))
(declare-datatypes ((ListLongMap!5335 0))(
  ( (ListLongMap!5336 (toList!2683 List!6293)) )
))
(declare-fun lt!182005 () ListLongMap!5335)

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-fun v!373 () V!13813)

(declare-fun minValue!472 () V!13813)

(declare-fun getCurrentListMapNoExtraKeys!917 (array!22933 array!22931 (_ BitVec 32) (_ BitVec 32) V!13813 V!13813 (_ BitVec 32) Int) ListLongMap!5335)

(assert (=> b!387269 (= lt!182005 (getCurrentListMapNoExtraKeys!917 lt!182003 (array!22932 (store (arr!10931 _values!506) i!548 (ValueCellFull!4422 v!373)) (size!11283 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!182004 () ListLongMap!5335)

(assert (=> b!387269 (= lt!182004 (getCurrentListMapNoExtraKeys!917 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!387270 () Bool)

(declare-fun res!221350 () Bool)

(assert (=> b!387270 (=> (not res!221350) (not e!234794))))

(declare-fun arrayContainsKey!0 (array!22933 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!387270 (= res!221350 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!387271 () Bool)

(declare-fun res!221342 () Bool)

(assert (=> b!387271 (=> (not res!221342) (not e!234794))))

(assert (=> b!387271 (= res!221342 (and (= (size!11283 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11284 _keys!658) (size!11283 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!387272 () Bool)

(assert (=> b!387272 (= e!234790 (and e!234795 mapRes!15861))))

(declare-fun condMapEmpty!15861 () Bool)

(declare-fun mapDefault!15861 () ValueCell!4422)

(assert (=> b!387272 (= condMapEmpty!15861 (= (arr!10931 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4422)) mapDefault!15861)))))

(assert (= (and start!37764 res!221351) b!387271))

(assert (= (and b!387271 res!221342) b!387268))

(assert (= (and b!387268 res!221343) b!387262))

(assert (= (and b!387262 res!221345) b!387260))

(assert (= (and b!387260 res!221344) b!387265))

(assert (= (and b!387265 res!221347) b!387266))

(assert (= (and b!387266 res!221348) b!387270))

(assert (= (and b!387270 res!221350) b!387261))

(assert (= (and b!387261 res!221346) b!387263))

(assert (= (and b!387263 res!221349) b!387269))

(assert (= (and b!387272 condMapEmpty!15861) mapIsEmpty!15861))

(assert (= (and b!387272 (not condMapEmpty!15861)) mapNonEmpty!15861))

(get-info :version)

(assert (= (and mapNonEmpty!15861 ((_ is ValueCellFull!4422) mapValue!15861)) b!387264))

(assert (= (and b!387272 ((_ is ValueCellFull!4422) mapDefault!15861)) b!387267))

(assert (= start!37764 b!387272))

(declare-fun m!383411 () Bool)

(assert (=> b!387265 m!383411))

(declare-fun m!383413 () Bool)

(assert (=> b!387261 m!383413))

(declare-fun m!383415 () Bool)

(assert (=> b!387261 m!383415))

(declare-fun m!383417 () Bool)

(assert (=> b!387268 m!383417))

(declare-fun m!383419 () Bool)

(assert (=> b!387269 m!383419))

(declare-fun m!383421 () Bool)

(assert (=> b!387269 m!383421))

(declare-fun m!383423 () Bool)

(assert (=> b!387269 m!383423))

(declare-fun m!383425 () Bool)

(assert (=> b!387262 m!383425))

(declare-fun m!383427 () Bool)

(assert (=> b!387266 m!383427))

(declare-fun m!383429 () Bool)

(assert (=> b!387263 m!383429))

(declare-fun m!383431 () Bool)

(assert (=> start!37764 m!383431))

(declare-fun m!383433 () Bool)

(assert (=> start!37764 m!383433))

(declare-fun m!383435 () Bool)

(assert (=> start!37764 m!383435))

(declare-fun m!383437 () Bool)

(assert (=> mapNonEmpty!15861 m!383437))

(declare-fun m!383439 () Bool)

(assert (=> b!387270 m!383439))

(check-sat (not mapNonEmpty!15861) (not b_next!8859) (not b!387270) (not b!387262) (not b!387263) (not b!387269) (not start!37764) (not b!387261) (not b!387268) (not b!387265) tp_is_empty!9531 b_and!16119)
(check-sat b_and!16119 (not b_next!8859))
