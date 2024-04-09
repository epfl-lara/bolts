; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37512 () Bool)

(assert start!37512)

(declare-fun b_free!8631 () Bool)

(declare-fun b_next!8631 () Bool)

(assert (=> start!37512 (= b_free!8631 (not b_next!8631))))

(declare-fun tp!30609 () Bool)

(declare-fun b_and!15891 () Bool)

(assert (=> start!37512 (= tp!30609 b_and!15891)))

(declare-fun b!382333 () Bool)

(declare-fun e!232341 () Bool)

(declare-fun e!232342 () Bool)

(assert (=> b!382333 (= e!232341 e!232342)))

(declare-fun res!217559 () Bool)

(assert (=> b!382333 (=> (not res!217559) (not e!232342))))

(declare-datatypes ((array!22449 0))(
  ( (array!22450 (arr!10690 (Array (_ BitVec 32) (_ BitVec 64))) (size!11042 (_ BitVec 32))) )
))
(declare-fun lt!179445 () array!22449)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22449 (_ BitVec 32)) Bool)

(assert (=> b!382333 (= res!217559 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!179445 mask!970))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun _keys!658 () array!22449)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!382333 (= lt!179445 (array!22450 (store (arr!10690 _keys!658) i!548 k0!778) (size!11042 _keys!658)))))

(declare-fun b!382334 () Bool)

(declare-fun res!217554 () Bool)

(assert (=> b!382334 (=> (not res!217554) (not e!232342))))

(declare-datatypes ((List!6117 0))(
  ( (Nil!6114) (Cons!6113 (h!6969 (_ BitVec 64)) (t!11275 List!6117)) )
))
(declare-fun arrayNoDuplicates!0 (array!22449 (_ BitVec 32) List!6117) Bool)

(assert (=> b!382334 (= res!217554 (arrayNoDuplicates!0 lt!179445 #b00000000000000000000000000000000 Nil!6114))))

(declare-fun res!217553 () Bool)

(assert (=> start!37512 (=> (not res!217553) (not e!232341))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37512 (= res!217553 (validMask!0 mask!970))))

(assert (=> start!37512 e!232341))

(declare-datatypes ((V!13477 0))(
  ( (V!13478 (val!4684 Int)) )
))
(declare-datatypes ((ValueCell!4296 0))(
  ( (ValueCellFull!4296 (v!6877 V!13477)) (EmptyCell!4296) )
))
(declare-datatypes ((array!22451 0))(
  ( (array!22452 (arr!10691 (Array (_ BitVec 32) ValueCell!4296)) (size!11043 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22451)

(declare-fun e!232339 () Bool)

(declare-fun array_inv!7850 (array!22451) Bool)

(assert (=> start!37512 (and (array_inv!7850 _values!506) e!232339)))

(assert (=> start!37512 tp!30609))

(assert (=> start!37512 true))

(declare-fun tp_is_empty!9279 () Bool)

(assert (=> start!37512 tp_is_empty!9279))

(declare-fun array_inv!7851 (array!22449) Bool)

(assert (=> start!37512 (array_inv!7851 _keys!658)))

(declare-fun b!382335 () Bool)

(declare-fun res!217549 () Bool)

(assert (=> b!382335 (=> (not res!217549) (not e!232341))))

(declare-fun arrayContainsKey!0 (array!22449 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!382335 (= res!217549 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!382336 () Bool)

(declare-fun res!217551 () Bool)

(assert (=> b!382336 (=> (not res!217551) (not e!232341))))

(assert (=> b!382336 (= res!217551 (or (= (select (arr!10690 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10690 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!382337 () Bool)

(declare-fun res!217556 () Bool)

(assert (=> b!382337 (=> (not res!217556) (not e!232341))))

(assert (=> b!382337 (= res!217556 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11042 _keys!658))))))

(declare-fun b!382338 () Bool)

(declare-fun res!217558 () Bool)

(assert (=> b!382338 (=> (not res!217558) (not e!232341))))

(assert (=> b!382338 (= res!217558 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6114))))

(declare-fun b!382339 () Bool)

(declare-fun e!232343 () Bool)

(assert (=> b!382339 (= e!232343 true)))

(declare-datatypes ((tuple2!6248 0))(
  ( (tuple2!6249 (_1!3134 (_ BitVec 64)) (_2!3134 V!13477)) )
))
(declare-datatypes ((List!6118 0))(
  ( (Nil!6115) (Cons!6114 (h!6970 tuple2!6248) (t!11276 List!6118)) )
))
(declare-datatypes ((ListLongMap!5175 0))(
  ( (ListLongMap!5176 (toList!2603 List!6118)) )
))
(declare-fun lt!179446 () ListLongMap!5175)

(declare-fun lt!179447 () ListLongMap!5175)

(assert (=> b!382339 (= lt!179446 lt!179447)))

(declare-fun b!382340 () Bool)

(declare-fun res!217557 () Bool)

(assert (=> b!382340 (=> (not res!217557) (not e!232341))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!382340 (= res!217557 (validKeyInArray!0 k0!778))))

(declare-fun mapNonEmpty!15483 () Bool)

(declare-fun mapRes!15483 () Bool)

(declare-fun tp!30608 () Bool)

(declare-fun e!232338 () Bool)

(assert (=> mapNonEmpty!15483 (= mapRes!15483 (and tp!30608 e!232338))))

(declare-fun mapValue!15483 () ValueCell!4296)

(declare-fun mapRest!15483 () (Array (_ BitVec 32) ValueCell!4296))

(declare-fun mapKey!15483 () (_ BitVec 32))

(assert (=> mapNonEmpty!15483 (= (arr!10691 _values!506) (store mapRest!15483 mapKey!15483 mapValue!15483))))

(declare-fun b!382341 () Bool)

(declare-fun res!217550 () Bool)

(assert (=> b!382341 (=> (not res!217550) (not e!232341))))

(assert (=> b!382341 (= res!217550 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!382342 () Bool)

(declare-fun e!232344 () Bool)

(assert (=> b!382342 (= e!232344 tp_is_empty!9279)))

(declare-fun b!382343 () Bool)

(declare-fun res!217552 () Bool)

(assert (=> b!382343 (=> (not res!217552) (not e!232341))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!382343 (= res!217552 (and (= (size!11043 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11042 _keys!658) (size!11043 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!15483 () Bool)

(assert (=> mapIsEmpty!15483 mapRes!15483))

(declare-fun b!382344 () Bool)

(assert (=> b!382344 (= e!232342 (not e!232343))))

(declare-fun res!217555 () Bool)

(assert (=> b!382344 (=> res!217555 e!232343)))

(declare-fun lt!179444 () Bool)

(assert (=> b!382344 (= res!217555 (or (and (not lt!179444) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!179444) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!179444)))))

(assert (=> b!382344 (= lt!179444 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun lt!179448 () ListLongMap!5175)

(declare-fun zeroValue!472 () V!13477)

(declare-fun defaultEntry!514 () Int)

(declare-fun minValue!472 () V!13477)

(declare-fun getCurrentListMap!2022 (array!22449 array!22451 (_ BitVec 32) (_ BitVec 32) V!13477 V!13477 (_ BitVec 32) Int) ListLongMap!5175)

(assert (=> b!382344 (= lt!179448 (getCurrentListMap!2022 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!179442 () array!22451)

(assert (=> b!382344 (= lt!179446 (getCurrentListMap!2022 lt!179445 lt!179442 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!179441 () ListLongMap!5175)

(assert (=> b!382344 (and (= lt!179447 lt!179441) (= lt!179441 lt!179447))))

(declare-fun v!373 () V!13477)

(declare-fun lt!179443 () ListLongMap!5175)

(declare-fun +!940 (ListLongMap!5175 tuple2!6248) ListLongMap!5175)

(assert (=> b!382344 (= lt!179441 (+!940 lt!179443 (tuple2!6249 k0!778 v!373)))))

(declare-datatypes ((Unit!11773 0))(
  ( (Unit!11774) )
))
(declare-fun lt!179449 () Unit!11773)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!173 (array!22449 array!22451 (_ BitVec 32) (_ BitVec 32) V!13477 V!13477 (_ BitVec 32) (_ BitVec 64) V!13477 (_ BitVec 32) Int) Unit!11773)

(assert (=> b!382344 (= lt!179449 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!173 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!840 (array!22449 array!22451 (_ BitVec 32) (_ BitVec 32) V!13477 V!13477 (_ BitVec 32) Int) ListLongMap!5175)

(assert (=> b!382344 (= lt!179447 (getCurrentListMapNoExtraKeys!840 lt!179445 lt!179442 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!382344 (= lt!179442 (array!22452 (store (arr!10691 _values!506) i!548 (ValueCellFull!4296 v!373)) (size!11043 _values!506)))))

(assert (=> b!382344 (= lt!179443 (getCurrentListMapNoExtraKeys!840 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!382345 () Bool)

(assert (=> b!382345 (= e!232339 (and e!232344 mapRes!15483))))

(declare-fun condMapEmpty!15483 () Bool)

(declare-fun mapDefault!15483 () ValueCell!4296)

(assert (=> b!382345 (= condMapEmpty!15483 (= (arr!10691 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4296)) mapDefault!15483)))))

(declare-fun b!382346 () Bool)

(assert (=> b!382346 (= e!232338 tp_is_empty!9279)))

(assert (= (and start!37512 res!217553) b!382343))

(assert (= (and b!382343 res!217552) b!382341))

(assert (= (and b!382341 res!217550) b!382338))

(assert (= (and b!382338 res!217558) b!382337))

(assert (= (and b!382337 res!217556) b!382340))

(assert (= (and b!382340 res!217557) b!382336))

(assert (= (and b!382336 res!217551) b!382335))

(assert (= (and b!382335 res!217549) b!382333))

(assert (= (and b!382333 res!217559) b!382334))

(assert (= (and b!382334 res!217554) b!382344))

(assert (= (and b!382344 (not res!217555)) b!382339))

(assert (= (and b!382345 condMapEmpty!15483) mapIsEmpty!15483))

(assert (= (and b!382345 (not condMapEmpty!15483)) mapNonEmpty!15483))

(get-info :version)

(assert (= (and mapNonEmpty!15483 ((_ is ValueCellFull!4296) mapValue!15483)) b!382346))

(assert (= (and b!382345 ((_ is ValueCellFull!4296) mapDefault!15483)) b!382342))

(assert (= start!37512 b!382345))

(declare-fun m!379189 () Bool)

(assert (=> b!382340 m!379189))

(declare-fun m!379191 () Bool)

(assert (=> b!382333 m!379191))

(declare-fun m!379193 () Bool)

(assert (=> b!382333 m!379193))

(declare-fun m!379195 () Bool)

(assert (=> b!382336 m!379195))

(declare-fun m!379197 () Bool)

(assert (=> start!37512 m!379197))

(declare-fun m!379199 () Bool)

(assert (=> start!37512 m!379199))

(declare-fun m!379201 () Bool)

(assert (=> start!37512 m!379201))

(declare-fun m!379203 () Bool)

(assert (=> b!382334 m!379203))

(declare-fun m!379205 () Bool)

(assert (=> b!382344 m!379205))

(declare-fun m!379207 () Bool)

(assert (=> b!382344 m!379207))

(declare-fun m!379209 () Bool)

(assert (=> b!382344 m!379209))

(declare-fun m!379211 () Bool)

(assert (=> b!382344 m!379211))

(declare-fun m!379213 () Bool)

(assert (=> b!382344 m!379213))

(declare-fun m!379215 () Bool)

(assert (=> b!382344 m!379215))

(declare-fun m!379217 () Bool)

(assert (=> b!382344 m!379217))

(declare-fun m!379219 () Bool)

(assert (=> b!382335 m!379219))

(declare-fun m!379221 () Bool)

(assert (=> b!382338 m!379221))

(declare-fun m!379223 () Bool)

(assert (=> b!382341 m!379223))

(declare-fun m!379225 () Bool)

(assert (=> mapNonEmpty!15483 m!379225))

(check-sat (not b!382335) (not b!382338) (not start!37512) (not b_next!8631) (not mapNonEmpty!15483) (not b!382341) b_and!15891 (not b!382344) tp_is_empty!9279 (not b!382334) (not b!382333) (not b!382340))
(check-sat b_and!15891 (not b_next!8631))
