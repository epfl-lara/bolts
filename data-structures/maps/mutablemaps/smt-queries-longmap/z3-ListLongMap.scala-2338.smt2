; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37500 () Bool)

(assert start!37500)

(declare-fun b_free!8619 () Bool)

(declare-fun b_next!8619 () Bool)

(assert (=> start!37500 (= b_free!8619 (not b_next!8619))))

(declare-fun tp!30572 () Bool)

(declare-fun b_and!15879 () Bool)

(assert (=> start!37500 (= tp!30572 b_and!15879)))

(declare-fun b!382081 () Bool)

(declare-fun res!217361 () Bool)

(declare-fun e!232215 () Bool)

(assert (=> b!382081 (=> (not res!217361) (not e!232215))))

(declare-datatypes ((array!22425 0))(
  ( (array!22426 (arr!10678 (Array (_ BitVec 32) (_ BitVec 64))) (size!11030 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22425)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!382081 (= res!217361 (or (= (select (arr!10678 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10678 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!382082 () Bool)

(declare-fun e!232212 () Bool)

(assert (=> b!382082 (= e!232215 e!232212)))

(declare-fun res!217353 () Bool)

(assert (=> b!382082 (=> (not res!217353) (not e!232212))))

(declare-fun lt!179284 () array!22425)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22425 (_ BitVec 32)) Bool)

(assert (=> b!382082 (= res!217353 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!179284 mask!970))))

(declare-fun k0!778 () (_ BitVec 64))

(assert (=> b!382082 (= lt!179284 (array!22426 (store (arr!10678 _keys!658) i!548 k0!778) (size!11030 _keys!658)))))

(declare-fun res!217351 () Bool)

(assert (=> start!37500 (=> (not res!217351) (not e!232215))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37500 (= res!217351 (validMask!0 mask!970))))

(assert (=> start!37500 e!232215))

(declare-datatypes ((V!13461 0))(
  ( (V!13462 (val!4678 Int)) )
))
(declare-datatypes ((ValueCell!4290 0))(
  ( (ValueCellFull!4290 (v!6871 V!13461)) (EmptyCell!4290) )
))
(declare-datatypes ((array!22427 0))(
  ( (array!22428 (arr!10679 (Array (_ BitVec 32) ValueCell!4290)) (size!11031 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22427)

(declare-fun e!232213 () Bool)

(declare-fun array_inv!7840 (array!22427) Bool)

(assert (=> start!37500 (and (array_inv!7840 _values!506) e!232213)))

(assert (=> start!37500 tp!30572))

(assert (=> start!37500 true))

(declare-fun tp_is_empty!9267 () Bool)

(assert (=> start!37500 tp_is_empty!9267))

(declare-fun array_inv!7841 (array!22425) Bool)

(assert (=> start!37500 (array_inv!7841 _keys!658)))

(declare-fun b!382083 () Bool)

(declare-fun res!217356 () Bool)

(assert (=> b!382083 (=> (not res!217356) (not e!232212))))

(declare-datatypes ((List!6107 0))(
  ( (Nil!6104) (Cons!6103 (h!6959 (_ BitVec 64)) (t!11265 List!6107)) )
))
(declare-fun arrayNoDuplicates!0 (array!22425 (_ BitVec 32) List!6107) Bool)

(assert (=> b!382083 (= res!217356 (arrayNoDuplicates!0 lt!179284 #b00000000000000000000000000000000 Nil!6104))))

(declare-fun b!382084 () Bool)

(declare-fun e!232218 () Bool)

(assert (=> b!382084 (= e!232212 (not e!232218))))

(declare-fun res!217355 () Bool)

(assert (=> b!382084 (=> res!217355 e!232218)))

(declare-fun lt!179279 () Bool)

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!382084 (= res!217355 (or (and (not lt!179279) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!179279) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!179279)))))

(assert (=> b!382084 (= lt!179279 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!6238 0))(
  ( (tuple2!6239 (_1!3129 (_ BitVec 64)) (_2!3129 V!13461)) )
))
(declare-datatypes ((List!6108 0))(
  ( (Nil!6105) (Cons!6104 (h!6960 tuple2!6238) (t!11266 List!6108)) )
))
(declare-datatypes ((ListLongMap!5165 0))(
  ( (ListLongMap!5166 (toList!2598 List!6108)) )
))
(declare-fun lt!179286 () ListLongMap!5165)

(declare-fun zeroValue!472 () V!13461)

(declare-fun minValue!472 () V!13461)

(declare-fun getCurrentListMap!2017 (array!22425 array!22427 (_ BitVec 32) (_ BitVec 32) V!13461 V!13461 (_ BitVec 32) Int) ListLongMap!5165)

(assert (=> b!382084 (= lt!179286 (getCurrentListMap!2017 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!179283 () ListLongMap!5165)

(declare-fun lt!179285 () array!22427)

(assert (=> b!382084 (= lt!179283 (getCurrentListMap!2017 lt!179284 lt!179285 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!179282 () ListLongMap!5165)

(declare-fun lt!179281 () ListLongMap!5165)

(assert (=> b!382084 (and (= lt!179282 lt!179281) (= lt!179281 lt!179282))))

(declare-fun v!373 () V!13461)

(declare-fun lt!179287 () ListLongMap!5165)

(declare-fun +!935 (ListLongMap!5165 tuple2!6238) ListLongMap!5165)

(assert (=> b!382084 (= lt!179281 (+!935 lt!179287 (tuple2!6239 k0!778 v!373)))))

(declare-datatypes ((Unit!11763 0))(
  ( (Unit!11764) )
))
(declare-fun lt!179280 () Unit!11763)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!168 (array!22425 array!22427 (_ BitVec 32) (_ BitVec 32) V!13461 V!13461 (_ BitVec 32) (_ BitVec 64) V!13461 (_ BitVec 32) Int) Unit!11763)

(assert (=> b!382084 (= lt!179280 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!168 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!835 (array!22425 array!22427 (_ BitVec 32) (_ BitVec 32) V!13461 V!13461 (_ BitVec 32) Int) ListLongMap!5165)

(assert (=> b!382084 (= lt!179282 (getCurrentListMapNoExtraKeys!835 lt!179284 lt!179285 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!382084 (= lt!179285 (array!22428 (store (arr!10679 _values!506) i!548 (ValueCellFull!4290 v!373)) (size!11031 _values!506)))))

(assert (=> b!382084 (= lt!179287 (getCurrentListMapNoExtraKeys!835 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!382085 () Bool)

(declare-fun res!217352 () Bool)

(assert (=> b!382085 (=> (not res!217352) (not e!232215))))

(assert (=> b!382085 (= res!217352 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6104))))

(declare-fun b!382086 () Bool)

(declare-fun e!232214 () Bool)

(assert (=> b!382086 (= e!232214 tp_is_empty!9267)))

(declare-fun b!382087 () Bool)

(declare-fun res!217358 () Bool)

(assert (=> b!382087 (=> (not res!217358) (not e!232215))))

(assert (=> b!382087 (= res!217358 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!382088 () Bool)

(declare-fun res!217360 () Bool)

(assert (=> b!382088 (=> (not res!217360) (not e!232215))))

(declare-fun arrayContainsKey!0 (array!22425 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!382088 (= res!217360 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!382089 () Bool)

(declare-fun res!217357 () Bool)

(assert (=> b!382089 (=> (not res!217357) (not e!232215))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!382089 (= res!217357 (validKeyInArray!0 k0!778))))

(declare-fun b!382090 () Bool)

(declare-fun res!217359 () Bool)

(assert (=> b!382090 (=> (not res!217359) (not e!232215))))

(assert (=> b!382090 (= res!217359 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11030 _keys!658))))))

(declare-fun b!382091 () Bool)

(declare-fun res!217354 () Bool)

(assert (=> b!382091 (=> (not res!217354) (not e!232215))))

(assert (=> b!382091 (= res!217354 (and (= (size!11031 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11030 _keys!658) (size!11031 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!382092 () Bool)

(assert (=> b!382092 (= e!232218 true)))

(assert (=> b!382092 (= lt!179283 lt!179282)))

(declare-fun b!382093 () Bool)

(declare-fun e!232216 () Bool)

(assert (=> b!382093 (= e!232216 tp_is_empty!9267)))

(declare-fun mapNonEmpty!15465 () Bool)

(declare-fun mapRes!15465 () Bool)

(declare-fun tp!30573 () Bool)

(assert (=> mapNonEmpty!15465 (= mapRes!15465 (and tp!30573 e!232214))))

(declare-fun mapRest!15465 () (Array (_ BitVec 32) ValueCell!4290))

(declare-fun mapKey!15465 () (_ BitVec 32))

(declare-fun mapValue!15465 () ValueCell!4290)

(assert (=> mapNonEmpty!15465 (= (arr!10679 _values!506) (store mapRest!15465 mapKey!15465 mapValue!15465))))

(declare-fun mapIsEmpty!15465 () Bool)

(assert (=> mapIsEmpty!15465 mapRes!15465))

(declare-fun b!382094 () Bool)

(assert (=> b!382094 (= e!232213 (and e!232216 mapRes!15465))))

(declare-fun condMapEmpty!15465 () Bool)

(declare-fun mapDefault!15465 () ValueCell!4290)

(assert (=> b!382094 (= condMapEmpty!15465 (= (arr!10679 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4290)) mapDefault!15465)))))

(assert (= (and start!37500 res!217351) b!382091))

(assert (= (and b!382091 res!217354) b!382087))

(assert (= (and b!382087 res!217358) b!382085))

(assert (= (and b!382085 res!217352) b!382090))

(assert (= (and b!382090 res!217359) b!382089))

(assert (= (and b!382089 res!217357) b!382081))

(assert (= (and b!382081 res!217361) b!382088))

(assert (= (and b!382088 res!217360) b!382082))

(assert (= (and b!382082 res!217353) b!382083))

(assert (= (and b!382083 res!217356) b!382084))

(assert (= (and b!382084 (not res!217355)) b!382092))

(assert (= (and b!382094 condMapEmpty!15465) mapIsEmpty!15465))

(assert (= (and b!382094 (not condMapEmpty!15465)) mapNonEmpty!15465))

(get-info :version)

(assert (= (and mapNonEmpty!15465 ((_ is ValueCellFull!4290) mapValue!15465)) b!382086))

(assert (= (and b!382094 ((_ is ValueCellFull!4290) mapDefault!15465)) b!382093))

(assert (= start!37500 b!382094))

(declare-fun m!378961 () Bool)

(assert (=> b!382089 m!378961))

(declare-fun m!378963 () Bool)

(assert (=> start!37500 m!378963))

(declare-fun m!378965 () Bool)

(assert (=> start!37500 m!378965))

(declare-fun m!378967 () Bool)

(assert (=> start!37500 m!378967))

(declare-fun m!378969 () Bool)

(assert (=> b!382088 m!378969))

(declare-fun m!378971 () Bool)

(assert (=> b!382081 m!378971))

(declare-fun m!378973 () Bool)

(assert (=> b!382085 m!378973))

(declare-fun m!378975 () Bool)

(assert (=> mapNonEmpty!15465 m!378975))

(declare-fun m!378977 () Bool)

(assert (=> b!382082 m!378977))

(declare-fun m!378979 () Bool)

(assert (=> b!382082 m!378979))

(declare-fun m!378981 () Bool)

(assert (=> b!382083 m!378981))

(declare-fun m!378983 () Bool)

(assert (=> b!382084 m!378983))

(declare-fun m!378985 () Bool)

(assert (=> b!382084 m!378985))

(declare-fun m!378987 () Bool)

(assert (=> b!382084 m!378987))

(declare-fun m!378989 () Bool)

(assert (=> b!382084 m!378989))

(declare-fun m!378991 () Bool)

(assert (=> b!382084 m!378991))

(declare-fun m!378993 () Bool)

(assert (=> b!382084 m!378993))

(declare-fun m!378995 () Bool)

(assert (=> b!382084 m!378995))

(declare-fun m!378997 () Bool)

(assert (=> b!382087 m!378997))

(check-sat (not mapNonEmpty!15465) (not b!382089) (not b!382084) b_and!15879 (not b!382087) (not b!382085) (not start!37500) (not b_next!8619) (not b!382083) (not b!382088) (not b!382082) tp_is_empty!9267)
(check-sat b_and!15879 (not b_next!8619))
