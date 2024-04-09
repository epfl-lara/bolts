; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37416 () Bool)

(assert start!37416)

(declare-fun b_free!8535 () Bool)

(declare-fun b_next!8535 () Bool)

(assert (=> start!37416 (= b_free!8535 (not b_next!8535))))

(declare-fun tp!30320 () Bool)

(declare-fun b_and!15795 () Bool)

(assert (=> start!37416 (= tp!30320 b_and!15795)))

(declare-fun b!380295 () Bool)

(declare-fun res!215951 () Bool)

(declare-fun e!231311 () Bool)

(assert (=> b!380295 (=> (not res!215951) (not e!231311))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!380295 (= res!215951 (validKeyInArray!0 k0!778))))

(declare-fun b!380296 () Bool)

(declare-fun e!231312 () Bool)

(assert (=> b!380296 (= e!231311 e!231312)))

(declare-fun res!215953 () Bool)

(assert (=> b!380296 (=> (not res!215953) (not e!231312))))

(declare-datatypes ((array!22263 0))(
  ( (array!22264 (arr!10597 (Array (_ BitVec 32) (_ BitVec 64))) (size!10949 (_ BitVec 32))) )
))
(declare-fun lt!178067 () array!22263)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22263 (_ BitVec 32)) Bool)

(assert (=> b!380296 (= res!215953 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!178067 mask!970))))

(declare-fun _keys!658 () array!22263)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!380296 (= lt!178067 (array!22264 (store (arr!10597 _keys!658) i!548 k0!778) (size!10949 _keys!658)))))

(declare-fun mapNonEmpty!15339 () Bool)

(declare-fun mapRes!15339 () Bool)

(declare-fun tp!30321 () Bool)

(declare-fun e!231313 () Bool)

(assert (=> mapNonEmpty!15339 (= mapRes!15339 (and tp!30321 e!231313))))

(declare-datatypes ((V!13349 0))(
  ( (V!13350 (val!4636 Int)) )
))
(declare-datatypes ((ValueCell!4248 0))(
  ( (ValueCellFull!4248 (v!6829 V!13349)) (EmptyCell!4248) )
))
(declare-datatypes ((array!22265 0))(
  ( (array!22266 (arr!10598 (Array (_ BitVec 32) ValueCell!4248)) (size!10950 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22265)

(declare-fun mapRest!15339 () (Array (_ BitVec 32) ValueCell!4248))

(declare-fun mapKey!15339 () (_ BitVec 32))

(declare-fun mapValue!15339 () ValueCell!4248)

(assert (=> mapNonEmpty!15339 (= (arr!10598 _values!506) (store mapRest!15339 mapKey!15339 mapValue!15339))))

(declare-fun b!380297 () Bool)

(declare-fun res!215950 () Bool)

(assert (=> b!380297 (=> (not res!215950) (not e!231311))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!380297 (= res!215950 (and (= (size!10950 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10949 _keys!658) (size!10950 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!380298 () Bool)

(declare-fun e!231308 () Bool)

(declare-fun tp_is_empty!9183 () Bool)

(assert (=> b!380298 (= e!231308 tp_is_empty!9183)))

(declare-fun b!380299 () Bool)

(declare-fun res!215945 () Bool)

(assert (=> b!380299 (=> (not res!215945) (not e!231311))))

(assert (=> b!380299 (= res!215945 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!380301 () Bool)

(declare-fun res!215954 () Bool)

(assert (=> b!380301 (=> (not res!215954) (not e!231311))))

(declare-fun arrayContainsKey!0 (array!22263 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!380301 (= res!215954 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!380302 () Bool)

(assert (=> b!380302 (= e!231313 tp_is_empty!9183)))

(declare-fun b!380303 () Bool)

(declare-fun e!231309 () Bool)

(assert (=> b!380303 (= e!231312 (not e!231309))))

(declare-fun res!215949 () Bool)

(assert (=> b!380303 (=> res!215949 e!231309)))

(assert (=> b!380303 (= res!215949 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!6180 0))(
  ( (tuple2!6181 (_1!3100 (_ BitVec 64)) (_2!3100 V!13349)) )
))
(declare-datatypes ((List!6050 0))(
  ( (Nil!6047) (Cons!6046 (h!6902 tuple2!6180) (t!11208 List!6050)) )
))
(declare-datatypes ((ListLongMap!5107 0))(
  ( (ListLongMap!5108 (toList!2569 List!6050)) )
))
(declare-fun lt!178060 () ListLongMap!5107)

(declare-fun zeroValue!472 () V!13349)

(declare-fun minValue!472 () V!13349)

(declare-fun getCurrentListMap!1993 (array!22263 array!22265 (_ BitVec 32) (_ BitVec 32) V!13349 V!13349 (_ BitVec 32) Int) ListLongMap!5107)

(assert (=> b!380303 (= lt!178060 (getCurrentListMap!1993 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!178065 () array!22265)

(declare-fun lt!178066 () ListLongMap!5107)

(assert (=> b!380303 (= lt!178066 (getCurrentListMap!1993 lt!178067 lt!178065 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!178064 () ListLongMap!5107)

(declare-fun lt!178068 () ListLongMap!5107)

(assert (=> b!380303 (and (= lt!178064 lt!178068) (= lt!178068 lt!178064))))

(declare-fun lt!178057 () ListLongMap!5107)

(declare-fun lt!178059 () tuple2!6180)

(declare-fun +!910 (ListLongMap!5107 tuple2!6180) ListLongMap!5107)

(assert (=> b!380303 (= lt!178068 (+!910 lt!178057 lt!178059))))

(declare-fun v!373 () V!13349)

(assert (=> b!380303 (= lt!178059 (tuple2!6181 k0!778 v!373))))

(declare-datatypes ((Unit!11715 0))(
  ( (Unit!11716) )
))
(declare-fun lt!178058 () Unit!11715)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!144 (array!22263 array!22265 (_ BitVec 32) (_ BitVec 32) V!13349 V!13349 (_ BitVec 32) (_ BitVec 64) V!13349 (_ BitVec 32) Int) Unit!11715)

(assert (=> b!380303 (= lt!178058 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!144 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!811 (array!22263 array!22265 (_ BitVec 32) (_ BitVec 32) V!13349 V!13349 (_ BitVec 32) Int) ListLongMap!5107)

(assert (=> b!380303 (= lt!178064 (getCurrentListMapNoExtraKeys!811 lt!178067 lt!178065 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!380303 (= lt!178065 (array!22266 (store (arr!10598 _values!506) i!548 (ValueCellFull!4248 v!373)) (size!10950 _values!506)))))

(assert (=> b!380303 (= lt!178057 (getCurrentListMapNoExtraKeys!811 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!380304 () Bool)

(declare-fun res!215944 () Bool)

(assert (=> b!380304 (=> (not res!215944) (not e!231311))))

(assert (=> b!380304 (= res!215944 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10949 _keys!658))))))

(declare-fun mapIsEmpty!15339 () Bool)

(assert (=> mapIsEmpty!15339 mapRes!15339))

(declare-fun b!380305 () Bool)

(declare-fun e!231314 () Bool)

(assert (=> b!380305 (= e!231314 true)))

(declare-fun lt!178062 () ListLongMap!5107)

(declare-fun lt!178061 () ListLongMap!5107)

(assert (=> b!380305 (= lt!178062 (+!910 lt!178061 lt!178059))))

(declare-fun lt!178069 () Unit!11715)

(declare-fun addCommutativeForDiffKeys!321 (ListLongMap!5107 (_ BitVec 64) V!13349 (_ BitVec 64) V!13349) Unit!11715)

(assert (=> b!380305 (= lt!178069 (addCommutativeForDiffKeys!321 lt!178057 k0!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!380306 () Bool)

(declare-fun res!215943 () Bool)

(assert (=> b!380306 (=> (not res!215943) (not e!231311))))

(assert (=> b!380306 (= res!215943 (or (= (select (arr!10597 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10597 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!380307 () Bool)

(declare-fun res!215946 () Bool)

(assert (=> b!380307 (=> (not res!215946) (not e!231312))))

(declare-datatypes ((List!6051 0))(
  ( (Nil!6048) (Cons!6047 (h!6903 (_ BitVec 64)) (t!11209 List!6051)) )
))
(declare-fun arrayNoDuplicates!0 (array!22263 (_ BitVec 32) List!6051) Bool)

(assert (=> b!380307 (= res!215946 (arrayNoDuplicates!0 lt!178067 #b00000000000000000000000000000000 Nil!6048))))

(declare-fun res!215948 () Bool)

(assert (=> start!37416 (=> (not res!215948) (not e!231311))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37416 (= res!215948 (validMask!0 mask!970))))

(assert (=> start!37416 e!231311))

(declare-fun e!231310 () Bool)

(declare-fun array_inv!7796 (array!22265) Bool)

(assert (=> start!37416 (and (array_inv!7796 _values!506) e!231310)))

(assert (=> start!37416 tp!30320))

(assert (=> start!37416 true))

(assert (=> start!37416 tp_is_empty!9183))

(declare-fun array_inv!7797 (array!22263) Bool)

(assert (=> start!37416 (array_inv!7797 _keys!658)))

(declare-fun b!380300 () Bool)

(assert (=> b!380300 (= e!231310 (and e!231308 mapRes!15339))))

(declare-fun condMapEmpty!15339 () Bool)

(declare-fun mapDefault!15339 () ValueCell!4248)

(assert (=> b!380300 (= condMapEmpty!15339 (= (arr!10598 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4248)) mapDefault!15339)))))

(declare-fun b!380308 () Bool)

(assert (=> b!380308 (= e!231309 e!231314)))

(declare-fun res!215947 () Bool)

(assert (=> b!380308 (=> res!215947 e!231314)))

(assert (=> b!380308 (= res!215947 (= k0!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!380308 (= lt!178060 lt!178061)))

(declare-fun lt!178063 () tuple2!6180)

(assert (=> b!380308 (= lt!178061 (+!910 lt!178057 lt!178063))))

(assert (=> b!380308 (= lt!178066 lt!178062)))

(assert (=> b!380308 (= lt!178062 (+!910 lt!178068 lt!178063))))

(assert (=> b!380308 (= lt!178066 (+!910 lt!178064 lt!178063))))

(assert (=> b!380308 (= lt!178063 (tuple2!6181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!380309 () Bool)

(declare-fun res!215952 () Bool)

(assert (=> b!380309 (=> (not res!215952) (not e!231311))))

(assert (=> b!380309 (= res!215952 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6048))))

(assert (= (and start!37416 res!215948) b!380297))

(assert (= (and b!380297 res!215950) b!380299))

(assert (= (and b!380299 res!215945) b!380309))

(assert (= (and b!380309 res!215952) b!380304))

(assert (= (and b!380304 res!215944) b!380295))

(assert (= (and b!380295 res!215951) b!380306))

(assert (= (and b!380306 res!215943) b!380301))

(assert (= (and b!380301 res!215954) b!380296))

(assert (= (and b!380296 res!215953) b!380307))

(assert (= (and b!380307 res!215946) b!380303))

(assert (= (and b!380303 (not res!215949)) b!380308))

(assert (= (and b!380308 (not res!215947)) b!380305))

(assert (= (and b!380300 condMapEmpty!15339) mapIsEmpty!15339))

(assert (= (and b!380300 (not condMapEmpty!15339)) mapNonEmpty!15339))

(get-info :version)

(assert (= (and mapNonEmpty!15339 ((_ is ValueCellFull!4248) mapValue!15339)) b!380302))

(assert (= (and b!380300 ((_ is ValueCellFull!4248) mapDefault!15339)) b!380298))

(assert (= start!37416 b!380300))

(declare-fun m!377285 () Bool)

(assert (=> b!380307 m!377285))

(declare-fun m!377287 () Bool)

(assert (=> b!380303 m!377287))

(declare-fun m!377289 () Bool)

(assert (=> b!380303 m!377289))

(declare-fun m!377291 () Bool)

(assert (=> b!380303 m!377291))

(declare-fun m!377293 () Bool)

(assert (=> b!380303 m!377293))

(declare-fun m!377295 () Bool)

(assert (=> b!380303 m!377295))

(declare-fun m!377297 () Bool)

(assert (=> b!380303 m!377297))

(declare-fun m!377299 () Bool)

(assert (=> b!380303 m!377299))

(declare-fun m!377301 () Bool)

(assert (=> b!380301 m!377301))

(declare-fun m!377303 () Bool)

(assert (=> b!380309 m!377303))

(declare-fun m!377305 () Bool)

(assert (=> b!380299 m!377305))

(declare-fun m!377307 () Bool)

(assert (=> mapNonEmpty!15339 m!377307))

(declare-fun m!377309 () Bool)

(assert (=> b!380296 m!377309))

(declare-fun m!377311 () Bool)

(assert (=> b!380296 m!377311))

(declare-fun m!377313 () Bool)

(assert (=> start!37416 m!377313))

(declare-fun m!377315 () Bool)

(assert (=> start!37416 m!377315))

(declare-fun m!377317 () Bool)

(assert (=> start!37416 m!377317))

(declare-fun m!377319 () Bool)

(assert (=> b!380295 m!377319))

(declare-fun m!377321 () Bool)

(assert (=> b!380306 m!377321))

(declare-fun m!377323 () Bool)

(assert (=> b!380305 m!377323))

(declare-fun m!377325 () Bool)

(assert (=> b!380305 m!377325))

(declare-fun m!377327 () Bool)

(assert (=> b!380308 m!377327))

(declare-fun m!377329 () Bool)

(assert (=> b!380308 m!377329))

(declare-fun m!377331 () Bool)

(assert (=> b!380308 m!377331))

(check-sat (not b!380299) (not b!380305) (not b!380296) (not b!380301) (not mapNonEmpty!15339) (not b!380309) (not b!380308) (not b!380303) (not b!380295) (not b_next!8535) (not b!380307) tp_is_empty!9183 (not start!37416) b_and!15795)
(check-sat b_and!15795 (not b_next!8535))
