; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37608 () Bool)

(assert start!37608)

(declare-fun b_free!8727 () Bool)

(declare-fun b_next!8727 () Bool)

(assert (=> start!37608 (= b_free!8727 (not b_next!8727))))

(declare-fun tp!30896 () Bool)

(declare-fun b_and!15987 () Bool)

(assert (=> start!37608 (= tp!30896 b_and!15987)))

(declare-fun b!384358 () Bool)

(declare-fun res!219152 () Bool)

(declare-fun e!233361 () Bool)

(assert (=> b!384358 (=> (not res!219152) (not e!233361))))

(declare-datatypes ((array!22637 0))(
  ( (array!22638 (arr!10784 (Array (_ BitVec 32) (_ BitVec 64))) (size!11136 (_ BitVec 32))) )
))
(declare-fun lt!180941 () array!22637)

(declare-datatypes ((List!6191 0))(
  ( (Nil!6188) (Cons!6187 (h!7043 (_ BitVec 64)) (t!11349 List!6191)) )
))
(declare-fun arrayNoDuplicates!0 (array!22637 (_ BitVec 32) List!6191) Bool)

(assert (=> b!384358 (= res!219152 (arrayNoDuplicates!0 lt!180941 #b00000000000000000000000000000000 Nil!6188))))

(declare-fun b!384359 () Bool)

(declare-fun res!219143 () Bool)

(declare-fun e!233357 () Bool)

(assert (=> b!384359 (=> (not res!219143) (not e!233357))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!13605 0))(
  ( (V!13606 (val!4732 Int)) )
))
(declare-datatypes ((ValueCell!4344 0))(
  ( (ValueCellFull!4344 (v!6925 V!13605)) (EmptyCell!4344) )
))
(declare-datatypes ((array!22639 0))(
  ( (array!22640 (arr!10785 (Array (_ BitVec 32) ValueCell!4344)) (size!11137 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22639)

(declare-fun _keys!658 () array!22637)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!384359 (= res!219143 (and (= (size!11137 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11136 _keys!658) (size!11137 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!384360 () Bool)

(declare-fun e!233358 () Bool)

(declare-fun e!233360 () Bool)

(declare-fun mapRes!15627 () Bool)

(assert (=> b!384360 (= e!233358 (and e!233360 mapRes!15627))))

(declare-fun condMapEmpty!15627 () Bool)

(declare-fun mapDefault!15627 () ValueCell!4344)

(assert (=> b!384360 (= condMapEmpty!15627 (= (arr!10785 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4344)) mapDefault!15627)))))

(declare-fun b!384361 () Bool)

(declare-fun res!219148 () Bool)

(assert (=> b!384361 (=> (not res!219148) (not e!233357))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22637 (_ BitVec 32)) Bool)

(assert (=> b!384361 (= res!219148 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun res!219142 () Bool)

(assert (=> start!37608 (=> (not res!219142) (not e!233357))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37608 (= res!219142 (validMask!0 mask!970))))

(assert (=> start!37608 e!233357))

(declare-fun array_inv!7920 (array!22639) Bool)

(assert (=> start!37608 (and (array_inv!7920 _values!506) e!233358)))

(assert (=> start!37608 tp!30896))

(assert (=> start!37608 true))

(declare-fun tp_is_empty!9375 () Bool)

(assert (=> start!37608 tp_is_empty!9375))

(declare-fun array_inv!7921 (array!22637) Bool)

(assert (=> start!37608 (array_inv!7921 _keys!658)))

(declare-fun b!384362 () Bool)

(assert (=> b!384362 (= e!233357 e!233361)))

(declare-fun res!219144 () Bool)

(assert (=> b!384362 (=> (not res!219144) (not e!233361))))

(assert (=> b!384362 (= res!219144 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!180941 mask!970))))

(declare-fun i!548 () (_ BitVec 32))

(declare-fun k0!778 () (_ BitVec 64))

(assert (=> b!384362 (= lt!180941 (array!22638 (store (arr!10784 _keys!658) i!548 k0!778) (size!11136 _keys!658)))))

(declare-fun b!384363 () Bool)

(declare-fun res!219150 () Bool)

(assert (=> b!384363 (=> (not res!219150) (not e!233357))))

(assert (=> b!384363 (= res!219150 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6188))))

(declare-fun b!384364 () Bool)

(declare-fun e!233356 () Bool)

(assert (=> b!384364 (= e!233361 (not e!233356))))

(declare-fun res!219147 () Bool)

(assert (=> b!384364 (=> res!219147 e!233356)))

(declare-fun lt!180942 () Bool)

(assert (=> b!384364 (= res!219147 (or (and (not lt!180942) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!180942) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!180942)))))

(assert (=> b!384364 (= lt!180942 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13605)

(declare-datatypes ((tuple2!6326 0))(
  ( (tuple2!6327 (_1!3173 (_ BitVec 64)) (_2!3173 V!13605)) )
))
(declare-datatypes ((List!6192 0))(
  ( (Nil!6189) (Cons!6188 (h!7044 tuple2!6326) (t!11350 List!6192)) )
))
(declare-datatypes ((ListLongMap!5253 0))(
  ( (ListLongMap!5254 (toList!2642 List!6192)) )
))
(declare-fun lt!180940 () ListLongMap!5253)

(declare-fun minValue!472 () V!13605)

(declare-fun getCurrentListMap!2058 (array!22637 array!22639 (_ BitVec 32) (_ BitVec 32) V!13605 V!13605 (_ BitVec 32) Int) ListLongMap!5253)

(assert (=> b!384364 (= lt!180940 (getCurrentListMap!2058 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!180938 () ListLongMap!5253)

(declare-fun lt!180946 () array!22639)

(assert (=> b!384364 (= lt!180938 (getCurrentListMap!2058 lt!180941 lt!180946 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!180939 () ListLongMap!5253)

(declare-fun lt!180943 () ListLongMap!5253)

(assert (=> b!384364 (and (= lt!180939 lt!180943) (= lt!180943 lt!180939))))

(declare-fun lt!180936 () ListLongMap!5253)

(declare-fun lt!180945 () tuple2!6326)

(declare-fun +!978 (ListLongMap!5253 tuple2!6326) ListLongMap!5253)

(assert (=> b!384364 (= lt!180943 (+!978 lt!180936 lt!180945))))

(declare-fun v!373 () V!13605)

(assert (=> b!384364 (= lt!180945 (tuple2!6327 k0!778 v!373))))

(declare-datatypes ((Unit!11845 0))(
  ( (Unit!11846) )
))
(declare-fun lt!180937 () Unit!11845)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!209 (array!22637 array!22639 (_ BitVec 32) (_ BitVec 32) V!13605 V!13605 (_ BitVec 32) (_ BitVec 64) V!13605 (_ BitVec 32) Int) Unit!11845)

(assert (=> b!384364 (= lt!180937 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!209 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!876 (array!22637 array!22639 (_ BitVec 32) (_ BitVec 32) V!13605 V!13605 (_ BitVec 32) Int) ListLongMap!5253)

(assert (=> b!384364 (= lt!180939 (getCurrentListMapNoExtraKeys!876 lt!180941 lt!180946 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!384364 (= lt!180946 (array!22640 (store (arr!10785 _values!506) i!548 (ValueCellFull!4344 v!373)) (size!11137 _values!506)))))

(assert (=> b!384364 (= lt!180936 (getCurrentListMapNoExtraKeys!876 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!384365 () Bool)

(assert (=> b!384365 (= e!233360 tp_is_empty!9375)))

(declare-fun b!384366 () Bool)

(declare-fun e!233355 () Bool)

(assert (=> b!384366 (= e!233355 tp_is_empty!9375)))

(declare-fun mapNonEmpty!15627 () Bool)

(declare-fun tp!30897 () Bool)

(assert (=> mapNonEmpty!15627 (= mapRes!15627 (and tp!30897 e!233355))))

(declare-fun mapRest!15627 () (Array (_ BitVec 32) ValueCell!4344))

(declare-fun mapKey!15627 () (_ BitVec 32))

(declare-fun mapValue!15627 () ValueCell!4344)

(assert (=> mapNonEmpty!15627 (= (arr!10785 _values!506) (store mapRest!15627 mapKey!15627 mapValue!15627))))

(declare-fun b!384367 () Bool)

(declare-fun res!219149 () Bool)

(assert (=> b!384367 (=> (not res!219149) (not e!233357))))

(assert (=> b!384367 (= res!219149 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11136 _keys!658))))))

(declare-fun b!384368 () Bool)

(declare-fun res!219146 () Bool)

(assert (=> b!384368 (=> (not res!219146) (not e!233357))))

(assert (=> b!384368 (= res!219146 (or (= (select (arr!10784 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10784 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!384369 () Bool)

(declare-fun res!219151 () Bool)

(assert (=> b!384369 (=> (not res!219151) (not e!233357))))

(declare-fun arrayContainsKey!0 (array!22637 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!384369 (= res!219151 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!15627 () Bool)

(assert (=> mapIsEmpty!15627 mapRes!15627))

(declare-fun b!384370 () Bool)

(declare-fun res!219145 () Bool)

(assert (=> b!384370 (=> (not res!219145) (not e!233357))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!384370 (= res!219145 (validKeyInArray!0 k0!778))))

(declare-fun b!384371 () Bool)

(assert (=> b!384371 (= e!233356 true)))

(declare-fun lt!180944 () ListLongMap!5253)

(assert (=> b!384371 (= lt!180944 (+!978 lt!180940 lt!180945))))

(assert (=> b!384371 (= lt!180938 lt!180939)))

(assert (= (and start!37608 res!219142) b!384359))

(assert (= (and b!384359 res!219143) b!384361))

(assert (= (and b!384361 res!219148) b!384363))

(assert (= (and b!384363 res!219150) b!384367))

(assert (= (and b!384367 res!219149) b!384370))

(assert (= (and b!384370 res!219145) b!384368))

(assert (= (and b!384368 res!219146) b!384369))

(assert (= (and b!384369 res!219151) b!384362))

(assert (= (and b!384362 res!219144) b!384358))

(assert (= (and b!384358 res!219152) b!384364))

(assert (= (and b!384364 (not res!219147)) b!384371))

(assert (= (and b!384360 condMapEmpty!15627) mapIsEmpty!15627))

(assert (= (and b!384360 (not condMapEmpty!15627)) mapNonEmpty!15627))

(get-info :version)

(assert (= (and mapNonEmpty!15627 ((_ is ValueCellFull!4344) mapValue!15627)) b!384366))

(assert (= (and b!384360 ((_ is ValueCellFull!4344) mapDefault!15627)) b!384365))

(assert (= start!37608 b!384360))

(declare-fun m!381081 () Bool)

(assert (=> b!384371 m!381081))

(declare-fun m!381083 () Bool)

(assert (=> b!384361 m!381083))

(declare-fun m!381085 () Bool)

(assert (=> b!384369 m!381085))

(declare-fun m!381087 () Bool)

(assert (=> b!384362 m!381087))

(declare-fun m!381089 () Bool)

(assert (=> b!384362 m!381089))

(declare-fun m!381091 () Bool)

(assert (=> b!384358 m!381091))

(declare-fun m!381093 () Bool)

(assert (=> b!384364 m!381093))

(declare-fun m!381095 () Bool)

(assert (=> b!384364 m!381095))

(declare-fun m!381097 () Bool)

(assert (=> b!384364 m!381097))

(declare-fun m!381099 () Bool)

(assert (=> b!384364 m!381099))

(declare-fun m!381101 () Bool)

(assert (=> b!384364 m!381101))

(declare-fun m!381103 () Bool)

(assert (=> b!384364 m!381103))

(declare-fun m!381105 () Bool)

(assert (=> b!384364 m!381105))

(declare-fun m!381107 () Bool)

(assert (=> b!384368 m!381107))

(declare-fun m!381109 () Bool)

(assert (=> mapNonEmpty!15627 m!381109))

(declare-fun m!381111 () Bool)

(assert (=> b!384370 m!381111))

(declare-fun m!381113 () Bool)

(assert (=> start!37608 m!381113))

(declare-fun m!381115 () Bool)

(assert (=> start!37608 m!381115))

(declare-fun m!381117 () Bool)

(assert (=> start!37608 m!381117))

(declare-fun m!381119 () Bool)

(assert (=> b!384363 m!381119))

(check-sat (not b!384370) (not b!384361) (not b!384362) (not b_next!8727) tp_is_empty!9375 (not start!37608) (not b!384371) (not mapNonEmpty!15627) (not b!384358) (not b!384364) (not b!384369) (not b!384363) b_and!15987)
(check-sat b_and!15987 (not b_next!8727))
