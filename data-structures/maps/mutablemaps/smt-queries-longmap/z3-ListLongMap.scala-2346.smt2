; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37548 () Bool)

(assert start!37548)

(declare-fun b_free!8667 () Bool)

(declare-fun b_next!8667 () Bool)

(assert (=> start!37548 (= b_free!8667 (not b_next!8667))))

(declare-fun tp!30717 () Bool)

(declare-fun b_and!15927 () Bool)

(assert (=> start!37548 (= tp!30717 b_and!15927)))

(declare-fun b!383089 () Bool)

(declare-fun e!232717 () Bool)

(declare-fun e!232722 () Bool)

(assert (=> b!383089 (= e!232717 (not e!232722))))

(declare-fun res!218153 () Bool)

(assert (=> b!383089 (=> res!218153 e!232722)))

(declare-fun lt!179962 () Bool)

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!383089 (= res!218153 (or (and (not lt!179962) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!179962) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!179962)))))

(assert (=> b!383089 (= lt!179962 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-datatypes ((V!13525 0))(
  ( (V!13526 (val!4702 Int)) )
))
(declare-datatypes ((tuple2!6278 0))(
  ( (tuple2!6279 (_1!3149 (_ BitVec 64)) (_2!3149 V!13525)) )
))
(declare-datatypes ((List!6145 0))(
  ( (Nil!6142) (Cons!6141 (h!6997 tuple2!6278) (t!11303 List!6145)) )
))
(declare-datatypes ((ListLongMap!5205 0))(
  ( (ListLongMap!5206 (toList!2618 List!6145)) )
))
(declare-fun lt!179957 () ListLongMap!5205)

(declare-datatypes ((ValueCell!4314 0))(
  ( (ValueCellFull!4314 (v!6895 V!13525)) (EmptyCell!4314) )
))
(declare-datatypes ((array!22521 0))(
  ( (array!22522 (arr!10726 (Array (_ BitVec 32) ValueCell!4314)) (size!11078 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22521)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13525)

(declare-datatypes ((array!22523 0))(
  ( (array!22524 (arr!10727 (Array (_ BitVec 32) (_ BitVec 64))) (size!11079 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22523)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun minValue!472 () V!13525)

(declare-fun getCurrentListMap!2036 (array!22523 array!22521 (_ BitVec 32) (_ BitVec 32) V!13525 V!13525 (_ BitVec 32) Int) ListLongMap!5205)

(assert (=> b!383089 (= lt!179957 (getCurrentListMap!2036 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!179959 () array!22523)

(declare-fun lt!179960 () ListLongMap!5205)

(declare-fun lt!179955 () array!22521)

(assert (=> b!383089 (= lt!179960 (getCurrentListMap!2036 lt!179959 lt!179955 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!179958 () ListLongMap!5205)

(declare-fun lt!179963 () ListLongMap!5205)

(assert (=> b!383089 (and (= lt!179958 lt!179963) (= lt!179963 lt!179958))))

(declare-fun lt!179964 () ListLongMap!5205)

(declare-fun lt!179961 () tuple2!6278)

(declare-fun +!954 (ListLongMap!5205 tuple2!6278) ListLongMap!5205)

(assert (=> b!383089 (= lt!179963 (+!954 lt!179964 lt!179961))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun v!373 () V!13525)

(assert (=> b!383089 (= lt!179961 (tuple2!6279 k0!778 v!373))))

(declare-datatypes ((Unit!11801 0))(
  ( (Unit!11802) )
))
(declare-fun lt!179956 () Unit!11801)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!187 (array!22523 array!22521 (_ BitVec 32) (_ BitVec 32) V!13525 V!13525 (_ BitVec 32) (_ BitVec 64) V!13525 (_ BitVec 32) Int) Unit!11801)

(assert (=> b!383089 (= lt!179956 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!187 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!854 (array!22523 array!22521 (_ BitVec 32) (_ BitVec 32) V!13525 V!13525 (_ BitVec 32) Int) ListLongMap!5205)

(assert (=> b!383089 (= lt!179958 (getCurrentListMapNoExtraKeys!854 lt!179959 lt!179955 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!383089 (= lt!179955 (array!22522 (store (arr!10726 _values!506) i!548 (ValueCellFull!4314 v!373)) (size!11078 _values!506)))))

(assert (=> b!383089 (= lt!179964 (getCurrentListMapNoExtraKeys!854 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!383091 () Bool)

(declare-fun res!218143 () Bool)

(declare-fun e!232719 () Bool)

(assert (=> b!383091 (=> (not res!218143) (not e!232719))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22523 (_ BitVec 32)) Bool)

(assert (=> b!383091 (= res!218143 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!383092 () Bool)

(assert (=> b!383092 (= e!232719 e!232717)))

(declare-fun res!218152 () Bool)

(assert (=> b!383092 (=> (not res!218152) (not e!232717))))

(assert (=> b!383092 (= res!218152 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!179959 mask!970))))

(assert (=> b!383092 (= lt!179959 (array!22524 (store (arr!10727 _keys!658) i!548 k0!778) (size!11079 _keys!658)))))

(declare-fun b!383093 () Bool)

(declare-fun e!232721 () Bool)

(declare-fun e!232716 () Bool)

(declare-fun mapRes!15537 () Bool)

(assert (=> b!383093 (= e!232721 (and e!232716 mapRes!15537))))

(declare-fun condMapEmpty!15537 () Bool)

(declare-fun mapDefault!15537 () ValueCell!4314)

(assert (=> b!383093 (= condMapEmpty!15537 (= (arr!10726 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4314)) mapDefault!15537)))))

(declare-fun b!383094 () Bool)

(declare-fun tp_is_empty!9315 () Bool)

(assert (=> b!383094 (= e!232716 tp_is_empty!9315)))

(declare-fun b!383095 () Bool)

(declare-fun res!218144 () Bool)

(assert (=> b!383095 (=> (not res!218144) (not e!232719))))

(declare-fun arrayContainsKey!0 (array!22523 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!383095 (= res!218144 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!383096 () Bool)

(declare-fun res!218150 () Bool)

(assert (=> b!383096 (=> (not res!218150) (not e!232719))))

(assert (=> b!383096 (= res!218150 (or (= (select (arr!10727 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10727 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!383097 () Bool)

(declare-fun e!232720 () Bool)

(assert (=> b!383097 (= e!232720 tp_is_empty!9315)))

(declare-fun b!383098 () Bool)

(declare-fun res!218145 () Bool)

(assert (=> b!383098 (=> (not res!218145) (not e!232719))))

(assert (=> b!383098 (= res!218145 (and (= (size!11078 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11079 _keys!658) (size!11078 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!383099 () Bool)

(assert (=> b!383099 (= e!232722 true)))

(declare-fun lt!179965 () ListLongMap!5205)

(assert (=> b!383099 (= lt!179965 (+!954 lt!179957 lt!179961))))

(assert (=> b!383099 (= lt!179960 lt!179958)))

(declare-fun b!383100 () Bool)

(declare-fun res!218149 () Bool)

(assert (=> b!383100 (=> (not res!218149) (not e!232719))))

(declare-datatypes ((List!6146 0))(
  ( (Nil!6143) (Cons!6142 (h!6998 (_ BitVec 64)) (t!11304 List!6146)) )
))
(declare-fun arrayNoDuplicates!0 (array!22523 (_ BitVec 32) List!6146) Bool)

(assert (=> b!383100 (= res!218149 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6143))))

(declare-fun res!218147 () Bool)

(assert (=> start!37548 (=> (not res!218147) (not e!232719))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37548 (= res!218147 (validMask!0 mask!970))))

(assert (=> start!37548 e!232719))

(declare-fun array_inv!7878 (array!22521) Bool)

(assert (=> start!37548 (and (array_inv!7878 _values!506) e!232721)))

(assert (=> start!37548 tp!30717))

(assert (=> start!37548 true))

(assert (=> start!37548 tp_is_empty!9315))

(declare-fun array_inv!7879 (array!22523) Bool)

(assert (=> start!37548 (array_inv!7879 _keys!658)))

(declare-fun b!383090 () Bool)

(declare-fun res!218148 () Bool)

(assert (=> b!383090 (=> (not res!218148) (not e!232717))))

(assert (=> b!383090 (= res!218148 (arrayNoDuplicates!0 lt!179959 #b00000000000000000000000000000000 Nil!6143))))

(declare-fun mapNonEmpty!15537 () Bool)

(declare-fun tp!30716 () Bool)

(assert (=> mapNonEmpty!15537 (= mapRes!15537 (and tp!30716 e!232720))))

(declare-fun mapRest!15537 () (Array (_ BitVec 32) ValueCell!4314))

(declare-fun mapValue!15537 () ValueCell!4314)

(declare-fun mapKey!15537 () (_ BitVec 32))

(assert (=> mapNonEmpty!15537 (= (arr!10726 _values!506) (store mapRest!15537 mapKey!15537 mapValue!15537))))

(declare-fun b!383101 () Bool)

(declare-fun res!218146 () Bool)

(assert (=> b!383101 (=> (not res!218146) (not e!232719))))

(assert (=> b!383101 (= res!218146 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11079 _keys!658))))))

(declare-fun mapIsEmpty!15537 () Bool)

(assert (=> mapIsEmpty!15537 mapRes!15537))

(declare-fun b!383102 () Bool)

(declare-fun res!218151 () Bool)

(assert (=> b!383102 (=> (not res!218151) (not e!232719))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!383102 (= res!218151 (validKeyInArray!0 k0!778))))

(assert (= (and start!37548 res!218147) b!383098))

(assert (= (and b!383098 res!218145) b!383091))

(assert (= (and b!383091 res!218143) b!383100))

(assert (= (and b!383100 res!218149) b!383101))

(assert (= (and b!383101 res!218146) b!383102))

(assert (= (and b!383102 res!218151) b!383096))

(assert (= (and b!383096 res!218150) b!383095))

(assert (= (and b!383095 res!218144) b!383092))

(assert (= (and b!383092 res!218152) b!383090))

(assert (= (and b!383090 res!218148) b!383089))

(assert (= (and b!383089 (not res!218153)) b!383099))

(assert (= (and b!383093 condMapEmpty!15537) mapIsEmpty!15537))

(assert (= (and b!383093 (not condMapEmpty!15537)) mapNonEmpty!15537))

(get-info :version)

(assert (= (and mapNonEmpty!15537 ((_ is ValueCellFull!4314) mapValue!15537)) b!383097))

(assert (= (and b!383093 ((_ is ValueCellFull!4314) mapDefault!15537)) b!383094))

(assert (= start!37548 b!383093))

(declare-fun m!379881 () Bool)

(assert (=> b!383102 m!379881))

(declare-fun m!379883 () Bool)

(assert (=> b!383100 m!379883))

(declare-fun m!379885 () Bool)

(assert (=> b!383089 m!379885))

(declare-fun m!379887 () Bool)

(assert (=> b!383089 m!379887))

(declare-fun m!379889 () Bool)

(assert (=> b!383089 m!379889))

(declare-fun m!379891 () Bool)

(assert (=> b!383089 m!379891))

(declare-fun m!379893 () Bool)

(assert (=> b!383089 m!379893))

(declare-fun m!379895 () Bool)

(assert (=> b!383089 m!379895))

(declare-fun m!379897 () Bool)

(assert (=> b!383089 m!379897))

(declare-fun m!379899 () Bool)

(assert (=> start!37548 m!379899))

(declare-fun m!379901 () Bool)

(assert (=> start!37548 m!379901))

(declare-fun m!379903 () Bool)

(assert (=> start!37548 m!379903))

(declare-fun m!379905 () Bool)

(assert (=> b!383095 m!379905))

(declare-fun m!379907 () Bool)

(assert (=> b!383091 m!379907))

(declare-fun m!379909 () Bool)

(assert (=> b!383096 m!379909))

(declare-fun m!379911 () Bool)

(assert (=> mapNonEmpty!15537 m!379911))

(declare-fun m!379913 () Bool)

(assert (=> b!383092 m!379913))

(declare-fun m!379915 () Bool)

(assert (=> b!383092 m!379915))

(declare-fun m!379917 () Bool)

(assert (=> b!383099 m!379917))

(declare-fun m!379919 () Bool)

(assert (=> b!383090 m!379919))

(check-sat (not b!383099) (not b!383090) (not b!383102) (not b_next!8667) (not b!383092) (not b!383100) b_and!15927 (not b!383091) (not mapNonEmpty!15537) (not b!383095) tp_is_empty!9315 (not b!383089) (not start!37548))
(check-sat b_and!15927 (not b_next!8667))
