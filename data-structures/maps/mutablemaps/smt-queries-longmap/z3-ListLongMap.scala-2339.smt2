; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37506 () Bool)

(assert start!37506)

(declare-fun b_free!8625 () Bool)

(declare-fun b_next!8625 () Bool)

(assert (=> start!37506 (= b_free!8625 (not b_next!8625))))

(declare-fun tp!30590 () Bool)

(declare-fun b_and!15885 () Bool)

(assert (=> start!37506 (= tp!30590 b_and!15885)))

(declare-fun b!382207 () Bool)

(declare-fun res!217455 () Bool)

(declare-fun e!232275 () Bool)

(assert (=> b!382207 (=> (not res!217455) (not e!232275))))

(declare-datatypes ((array!22437 0))(
  ( (array!22438 (arr!10684 (Array (_ BitVec 32) (_ BitVec 64))) (size!11036 (_ BitVec 32))) )
))
(declare-fun lt!179363 () array!22437)

(declare-datatypes ((List!6112 0))(
  ( (Nil!6109) (Cons!6108 (h!6964 (_ BitVec 64)) (t!11270 List!6112)) )
))
(declare-fun arrayNoDuplicates!0 (array!22437 (_ BitVec 32) List!6112) Bool)

(assert (=> b!382207 (= res!217455 (arrayNoDuplicates!0 lt!179363 #b00000000000000000000000000000000 Nil!6109))))

(declare-fun b!382208 () Bool)

(declare-fun e!232279 () Bool)

(assert (=> b!382208 (= e!232275 (not e!232279))))

(declare-fun res!217458 () Bool)

(assert (=> b!382208 (=> res!217458 e!232279)))

(declare-fun lt!179368 () Bool)

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!382208 (= res!217458 (or (and (not lt!179368) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!179368) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!179368)))))

(assert (=> b!382208 (= lt!179368 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-datatypes ((V!13469 0))(
  ( (V!13470 (val!4681 Int)) )
))
(declare-datatypes ((ValueCell!4293 0))(
  ( (ValueCellFull!4293 (v!6874 V!13469)) (EmptyCell!4293) )
))
(declare-datatypes ((array!22439 0))(
  ( (array!22440 (arr!10685 (Array (_ BitVec 32) ValueCell!4293)) (size!11037 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22439)

(declare-datatypes ((tuple2!6244 0))(
  ( (tuple2!6245 (_1!3132 (_ BitVec 64)) (_2!3132 V!13469)) )
))
(declare-datatypes ((List!6113 0))(
  ( (Nil!6110) (Cons!6109 (h!6965 tuple2!6244) (t!11271 List!6113)) )
))
(declare-datatypes ((ListLongMap!5171 0))(
  ( (ListLongMap!5172 (toList!2601 List!6113)) )
))
(declare-fun lt!179362 () ListLongMap!5171)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13469)

(declare-fun _keys!658 () array!22437)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun minValue!472 () V!13469)

(declare-fun getCurrentListMap!2020 (array!22437 array!22439 (_ BitVec 32) (_ BitVec 32) V!13469 V!13469 (_ BitVec 32) Int) ListLongMap!5171)

(assert (=> b!382208 (= lt!179362 (getCurrentListMap!2020 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!179360 () ListLongMap!5171)

(declare-fun lt!179361 () array!22439)

(assert (=> b!382208 (= lt!179360 (getCurrentListMap!2020 lt!179363 lt!179361 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!179367 () ListLongMap!5171)

(declare-fun lt!179366 () ListLongMap!5171)

(assert (=> b!382208 (and (= lt!179367 lt!179366) (= lt!179366 lt!179367))))

(declare-fun lt!179364 () ListLongMap!5171)

(declare-fun v!373 () V!13469)

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun +!938 (ListLongMap!5171 tuple2!6244) ListLongMap!5171)

(assert (=> b!382208 (= lt!179366 (+!938 lt!179364 (tuple2!6245 k0!778 v!373)))))

(declare-datatypes ((Unit!11769 0))(
  ( (Unit!11770) )
))
(declare-fun lt!179365 () Unit!11769)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!171 (array!22437 array!22439 (_ BitVec 32) (_ BitVec 32) V!13469 V!13469 (_ BitVec 32) (_ BitVec 64) V!13469 (_ BitVec 32) Int) Unit!11769)

(assert (=> b!382208 (= lt!179365 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!171 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!838 (array!22437 array!22439 (_ BitVec 32) (_ BitVec 32) V!13469 V!13469 (_ BitVec 32) Int) ListLongMap!5171)

(assert (=> b!382208 (= lt!179367 (getCurrentListMapNoExtraKeys!838 lt!179363 lt!179361 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!382208 (= lt!179361 (array!22440 (store (arr!10685 _values!506) i!548 (ValueCellFull!4293 v!373)) (size!11037 _values!506)))))

(assert (=> b!382208 (= lt!179364 (getCurrentListMapNoExtraKeys!838 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!382209 () Bool)

(assert (=> b!382209 (= e!232279 true)))

(assert (=> b!382209 (= lt!179360 lt!179367)))

(declare-fun b!382210 () Bool)

(declare-fun e!232281 () Bool)

(declare-fun tp_is_empty!9273 () Bool)

(assert (=> b!382210 (= e!232281 tp_is_empty!9273)))

(declare-fun b!382211 () Bool)

(declare-fun e!232277 () Bool)

(assert (=> b!382211 (= e!232277 e!232275)))

(declare-fun res!217451 () Bool)

(assert (=> b!382211 (=> (not res!217451) (not e!232275))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22437 (_ BitVec 32)) Bool)

(assert (=> b!382211 (= res!217451 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!179363 mask!970))))

(assert (=> b!382211 (= lt!179363 (array!22438 (store (arr!10684 _keys!658) i!548 k0!778) (size!11036 _keys!658)))))

(declare-fun b!382212 () Bool)

(declare-fun res!217460 () Bool)

(assert (=> b!382212 (=> (not res!217460) (not e!232277))))

(declare-fun arrayContainsKey!0 (array!22437 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!382212 (= res!217460 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!382213 () Bool)

(declare-fun e!232276 () Bool)

(assert (=> b!382213 (= e!232276 tp_is_empty!9273)))

(declare-fun b!382214 () Bool)

(declare-fun res!217457 () Bool)

(assert (=> b!382214 (=> (not res!217457) (not e!232277))))

(assert (=> b!382214 (= res!217457 (or (= (select (arr!10684 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10684 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!382215 () Bool)

(declare-fun res!217456 () Bool)

(assert (=> b!382215 (=> (not res!217456) (not e!232277))))

(assert (=> b!382215 (= res!217456 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!382216 () Bool)

(declare-fun e!232278 () Bool)

(declare-fun mapRes!15474 () Bool)

(assert (=> b!382216 (= e!232278 (and e!232281 mapRes!15474))))

(declare-fun condMapEmpty!15474 () Bool)

(declare-fun mapDefault!15474 () ValueCell!4293)

(assert (=> b!382216 (= condMapEmpty!15474 (= (arr!10685 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4293)) mapDefault!15474)))))

(declare-fun res!217454 () Bool)

(assert (=> start!37506 (=> (not res!217454) (not e!232277))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37506 (= res!217454 (validMask!0 mask!970))))

(assert (=> start!37506 e!232277))

(declare-fun array_inv!7844 (array!22439) Bool)

(assert (=> start!37506 (and (array_inv!7844 _values!506) e!232278)))

(assert (=> start!37506 tp!30590))

(assert (=> start!37506 true))

(assert (=> start!37506 tp_is_empty!9273))

(declare-fun array_inv!7845 (array!22437) Bool)

(assert (=> start!37506 (array_inv!7845 _keys!658)))

(declare-fun b!382217 () Bool)

(declare-fun res!217453 () Bool)

(assert (=> b!382217 (=> (not res!217453) (not e!232277))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!382217 (= res!217453 (validKeyInArray!0 k0!778))))

(declare-fun mapNonEmpty!15474 () Bool)

(declare-fun tp!30591 () Bool)

(assert (=> mapNonEmpty!15474 (= mapRes!15474 (and tp!30591 e!232276))))

(declare-fun mapKey!15474 () (_ BitVec 32))

(declare-fun mapRest!15474 () (Array (_ BitVec 32) ValueCell!4293))

(declare-fun mapValue!15474 () ValueCell!4293)

(assert (=> mapNonEmpty!15474 (= (arr!10685 _values!506) (store mapRest!15474 mapKey!15474 mapValue!15474))))

(declare-fun b!382218 () Bool)

(declare-fun res!217459 () Bool)

(assert (=> b!382218 (=> (not res!217459) (not e!232277))))

(assert (=> b!382218 (= res!217459 (and (= (size!11037 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11036 _keys!658) (size!11037 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!382219 () Bool)

(declare-fun res!217452 () Bool)

(assert (=> b!382219 (=> (not res!217452) (not e!232277))))

(assert (=> b!382219 (= res!217452 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11036 _keys!658))))))

(declare-fun mapIsEmpty!15474 () Bool)

(assert (=> mapIsEmpty!15474 mapRes!15474))

(declare-fun b!382220 () Bool)

(declare-fun res!217450 () Bool)

(assert (=> b!382220 (=> (not res!217450) (not e!232277))))

(assert (=> b!382220 (= res!217450 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6109))))

(assert (= (and start!37506 res!217454) b!382218))

(assert (= (and b!382218 res!217459) b!382215))

(assert (= (and b!382215 res!217456) b!382220))

(assert (= (and b!382220 res!217450) b!382219))

(assert (= (and b!382219 res!217452) b!382217))

(assert (= (and b!382217 res!217453) b!382214))

(assert (= (and b!382214 res!217457) b!382212))

(assert (= (and b!382212 res!217460) b!382211))

(assert (= (and b!382211 res!217451) b!382207))

(assert (= (and b!382207 res!217455) b!382208))

(assert (= (and b!382208 (not res!217458)) b!382209))

(assert (= (and b!382216 condMapEmpty!15474) mapIsEmpty!15474))

(assert (= (and b!382216 (not condMapEmpty!15474)) mapNonEmpty!15474))

(get-info :version)

(assert (= (and mapNonEmpty!15474 ((_ is ValueCellFull!4293) mapValue!15474)) b!382213))

(assert (= (and b!382216 ((_ is ValueCellFull!4293) mapDefault!15474)) b!382210))

(assert (= start!37506 b!382216))

(declare-fun m!379075 () Bool)

(assert (=> b!382214 m!379075))

(declare-fun m!379077 () Bool)

(assert (=> b!382220 m!379077))

(declare-fun m!379079 () Bool)

(assert (=> b!382215 m!379079))

(declare-fun m!379081 () Bool)

(assert (=> b!382211 m!379081))

(declare-fun m!379083 () Bool)

(assert (=> b!382211 m!379083))

(declare-fun m!379085 () Bool)

(assert (=> mapNonEmpty!15474 m!379085))

(declare-fun m!379087 () Bool)

(assert (=> b!382208 m!379087))

(declare-fun m!379089 () Bool)

(assert (=> b!382208 m!379089))

(declare-fun m!379091 () Bool)

(assert (=> b!382208 m!379091))

(declare-fun m!379093 () Bool)

(assert (=> b!382208 m!379093))

(declare-fun m!379095 () Bool)

(assert (=> b!382208 m!379095))

(declare-fun m!379097 () Bool)

(assert (=> b!382208 m!379097))

(declare-fun m!379099 () Bool)

(assert (=> b!382208 m!379099))

(declare-fun m!379101 () Bool)

(assert (=> b!382207 m!379101))

(declare-fun m!379103 () Bool)

(assert (=> b!382212 m!379103))

(declare-fun m!379105 () Bool)

(assert (=> b!382217 m!379105))

(declare-fun m!379107 () Bool)

(assert (=> start!37506 m!379107))

(declare-fun m!379109 () Bool)

(assert (=> start!37506 m!379109))

(declare-fun m!379111 () Bool)

(assert (=> start!37506 m!379111))

(check-sat b_and!15885 (not b!382207) (not mapNonEmpty!15474) tp_is_empty!9273 (not b!382217) (not b!382220) (not b!382211) (not start!37506) (not b!382208) (not b_next!8625) (not b!382215) (not b!382212))
(check-sat b_and!15885 (not b_next!8625))
