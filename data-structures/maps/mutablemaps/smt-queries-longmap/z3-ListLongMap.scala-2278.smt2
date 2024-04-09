; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37140 () Bool)

(assert start!37140)

(declare-fun b_free!8259 () Bool)

(declare-fun b_next!8259 () Bool)

(assert (=> start!37140 (= b_free!8259 (not b_next!8259))))

(declare-fun tp!29492 () Bool)

(declare-fun b_and!15519 () Bool)

(assert (=> start!37140 (= tp!29492 b_and!15519)))

(declare-fun b!374067 () Bool)

(declare-fun e!228001 () Bool)

(assert (=> b!374067 (= e!228001 true)))

(declare-datatypes ((V!12981 0))(
  ( (V!12982 (val!4498 Int)) )
))
(declare-datatypes ((tuple2!5958 0))(
  ( (tuple2!5959 (_1!2989 (_ BitVec 64)) (_2!2989 V!12981)) )
))
(declare-datatypes ((List!5828 0))(
  ( (Nil!5825) (Cons!5824 (h!6680 tuple2!5958) (t!10986 List!5828)) )
))
(declare-datatypes ((ListLongMap!4885 0))(
  ( (ListLongMap!4886 (toList!2458 List!5828)) )
))
(declare-fun lt!172371 () ListLongMap!4885)

(declare-fun lt!172383 () tuple2!5958)

(declare-fun lt!172384 () ListLongMap!4885)

(declare-fun lt!172372 () tuple2!5958)

(declare-fun +!799 (ListLongMap!4885 tuple2!5958) ListLongMap!4885)

(assert (=> b!374067 (= (+!799 lt!172384 lt!172383) (+!799 lt!172371 lt!172372))))

(declare-fun v!373 () V!12981)

(declare-fun lt!172378 () ListLongMap!4885)

(declare-datatypes ((Unit!11501 0))(
  ( (Unit!11502) )
))
(declare-fun lt!172385 () Unit!11501)

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun minValue!472 () V!12981)

(declare-fun addCommutativeForDiffKeys!228 (ListLongMap!4885 (_ BitVec 64) V!12981 (_ BitVec 64) V!12981) Unit!11501)

(assert (=> b!374067 (= lt!172385 (addCommutativeForDiffKeys!228 lt!172378 k0!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!374068 () Bool)

(declare-fun res!210961 () Bool)

(declare-fun e!227996 () Bool)

(assert (=> b!374068 (=> (not res!210961) (not e!227996))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!374068 (= res!210961 (validKeyInArray!0 k0!778))))

(declare-fun b!374069 () Bool)

(declare-fun res!210964 () Bool)

(assert (=> b!374069 (=> (not res!210964) (not e!227996))))

(declare-datatypes ((array!21719 0))(
  ( (array!21720 (arr!10325 (Array (_ BitVec 32) (_ BitVec 64))) (size!10677 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21719)

(declare-datatypes ((List!5829 0))(
  ( (Nil!5826) (Cons!5825 (h!6681 (_ BitVec 64)) (t!10987 List!5829)) )
))
(declare-fun arrayNoDuplicates!0 (array!21719 (_ BitVec 32) List!5829) Bool)

(assert (=> b!374069 (= res!210964 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5826))))

(declare-fun b!374070 () Bool)

(declare-fun e!228000 () Bool)

(assert (=> b!374070 (= e!228000 e!228001)))

(declare-fun res!210957 () Bool)

(assert (=> b!374070 (=> res!210957 e!228001)))

(assert (=> b!374070 (= res!210957 (= k0!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!172377 () ListLongMap!4885)

(assert (=> b!374070 (= lt!172377 lt!172384)))

(assert (=> b!374070 (= lt!172384 (+!799 lt!172378 lt!172372))))

(declare-fun lt!172375 () Unit!11501)

(declare-fun zeroValue!472 () V!12981)

(declare-fun lt!172387 () ListLongMap!4885)

(assert (=> b!374070 (= lt!172375 (addCommutativeForDiffKeys!228 lt!172387 k0!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun lt!172374 () ListLongMap!4885)

(assert (=> b!374070 (= lt!172374 (+!799 lt!172377 lt!172383))))

(declare-fun lt!172379 () ListLongMap!4885)

(declare-fun lt!172382 () tuple2!5958)

(assert (=> b!374070 (= lt!172377 (+!799 lt!172379 lt!172382))))

(declare-fun lt!172373 () ListLongMap!4885)

(assert (=> b!374070 (= lt!172373 lt!172371)))

(assert (=> b!374070 (= lt!172371 (+!799 lt!172378 lt!172383))))

(assert (=> b!374070 (= lt!172378 (+!799 lt!172387 lt!172382))))

(declare-fun lt!172381 () ListLongMap!4885)

(assert (=> b!374070 (= lt!172374 (+!799 (+!799 lt!172381 lt!172382) lt!172383))))

(assert (=> b!374070 (= lt!172383 (tuple2!5959 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(assert (=> b!374070 (= lt!172382 (tuple2!5959 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!374071 () Bool)

(declare-fun res!210966 () Bool)

(assert (=> b!374071 (=> (not res!210966) (not e!227996))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((ValueCell!4110 0))(
  ( (ValueCellFull!4110 (v!6691 V!12981)) (EmptyCell!4110) )
))
(declare-datatypes ((array!21721 0))(
  ( (array!21722 (arr!10326 (Array (_ BitVec 32) ValueCell!4110)) (size!10678 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21721)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!374071 (= res!210966 (and (= (size!10678 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10677 _keys!658) (size!10678 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!374072 () Bool)

(declare-fun res!210960 () Bool)

(declare-fun e!227997 () Bool)

(assert (=> b!374072 (=> (not res!210960) (not e!227997))))

(declare-fun lt!172380 () array!21719)

(assert (=> b!374072 (= res!210960 (arrayNoDuplicates!0 lt!172380 #b00000000000000000000000000000000 Nil!5826))))

(declare-fun res!210959 () Bool)

(assert (=> start!37140 (=> (not res!210959) (not e!227996))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37140 (= res!210959 (validMask!0 mask!970))))

(assert (=> start!37140 e!227996))

(declare-fun e!228002 () Bool)

(declare-fun array_inv!7618 (array!21721) Bool)

(assert (=> start!37140 (and (array_inv!7618 _values!506) e!228002)))

(assert (=> start!37140 tp!29492))

(assert (=> start!37140 true))

(declare-fun tp_is_empty!8907 () Bool)

(assert (=> start!37140 tp_is_empty!8907))

(declare-fun array_inv!7619 (array!21719) Bool)

(assert (=> start!37140 (array_inv!7619 _keys!658)))

(declare-fun b!374073 () Bool)

(declare-fun res!210962 () Bool)

(assert (=> b!374073 (=> (not res!210962) (not e!227996))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!374073 (= res!210962 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10677 _keys!658))))))

(declare-fun b!374074 () Bool)

(declare-fun res!210963 () Bool)

(assert (=> b!374074 (=> (not res!210963) (not e!227996))))

(assert (=> b!374074 (= res!210963 (or (= (select (arr!10325 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10325 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!14925 () Bool)

(declare-fun mapRes!14925 () Bool)

(assert (=> mapIsEmpty!14925 mapRes!14925))

(declare-fun mapNonEmpty!14925 () Bool)

(declare-fun tp!29493 () Bool)

(declare-fun e!227998 () Bool)

(assert (=> mapNonEmpty!14925 (= mapRes!14925 (and tp!29493 e!227998))))

(declare-fun mapRest!14925 () (Array (_ BitVec 32) ValueCell!4110))

(declare-fun mapValue!14925 () ValueCell!4110)

(declare-fun mapKey!14925 () (_ BitVec 32))

(assert (=> mapNonEmpty!14925 (= (arr!10326 _values!506) (store mapRest!14925 mapKey!14925 mapValue!14925))))

(declare-fun b!374075 () Bool)

(declare-fun e!227999 () Bool)

(assert (=> b!374075 (= e!227999 tp_is_empty!8907)))

(declare-fun b!374076 () Bool)

(assert (=> b!374076 (= e!228002 (and e!227999 mapRes!14925))))

(declare-fun condMapEmpty!14925 () Bool)

(declare-fun mapDefault!14925 () ValueCell!4110)

(assert (=> b!374076 (= condMapEmpty!14925 (= (arr!10326 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4110)) mapDefault!14925)))))

(declare-fun b!374077 () Bool)

(declare-fun res!210968 () Bool)

(assert (=> b!374077 (=> (not res!210968) (not e!227996))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21719 (_ BitVec 32)) Bool)

(assert (=> b!374077 (= res!210968 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!374078 () Bool)

(assert (=> b!374078 (= e!227998 tp_is_empty!8907)))

(declare-fun b!374079 () Bool)

(assert (=> b!374079 (= e!227997 (not e!228000))))

(declare-fun res!210965 () Bool)

(assert (=> b!374079 (=> res!210965 e!228000)))

(assert (=> b!374079 (= res!210965 (or (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun getCurrentListMap!1903 (array!21719 array!21721 (_ BitVec 32) (_ BitVec 32) V!12981 V!12981 (_ BitVec 32) Int) ListLongMap!4885)

(assert (=> b!374079 (= lt!172373 (getCurrentListMap!1903 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!172386 () array!21721)

(assert (=> b!374079 (= lt!172374 (getCurrentListMap!1903 lt!172380 lt!172386 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!374079 (and (= lt!172381 lt!172379) (= lt!172379 lt!172381))))

(assert (=> b!374079 (= lt!172379 (+!799 lt!172387 lt!172372))))

(assert (=> b!374079 (= lt!172372 (tuple2!5959 k0!778 v!373))))

(declare-fun lt!172376 () Unit!11501)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!54 (array!21719 array!21721 (_ BitVec 32) (_ BitVec 32) V!12981 V!12981 (_ BitVec 32) (_ BitVec 64) V!12981 (_ BitVec 32) Int) Unit!11501)

(assert (=> b!374079 (= lt!172376 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!54 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!721 (array!21719 array!21721 (_ BitVec 32) (_ BitVec 32) V!12981 V!12981 (_ BitVec 32) Int) ListLongMap!4885)

(assert (=> b!374079 (= lt!172381 (getCurrentListMapNoExtraKeys!721 lt!172380 lt!172386 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!374079 (= lt!172386 (array!21722 (store (arr!10326 _values!506) i!548 (ValueCellFull!4110 v!373)) (size!10678 _values!506)))))

(assert (=> b!374079 (= lt!172387 (getCurrentListMapNoExtraKeys!721 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!374080 () Bool)

(assert (=> b!374080 (= e!227996 e!227997)))

(declare-fun res!210967 () Bool)

(assert (=> b!374080 (=> (not res!210967) (not e!227997))))

(assert (=> b!374080 (= res!210967 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!172380 mask!970))))

(assert (=> b!374080 (= lt!172380 (array!21720 (store (arr!10325 _keys!658) i!548 k0!778) (size!10677 _keys!658)))))

(declare-fun b!374081 () Bool)

(declare-fun res!210958 () Bool)

(assert (=> b!374081 (=> (not res!210958) (not e!227996))))

(declare-fun arrayContainsKey!0 (array!21719 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!374081 (= res!210958 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(assert (= (and start!37140 res!210959) b!374071))

(assert (= (and b!374071 res!210966) b!374077))

(assert (= (and b!374077 res!210968) b!374069))

(assert (= (and b!374069 res!210964) b!374073))

(assert (= (and b!374073 res!210962) b!374068))

(assert (= (and b!374068 res!210961) b!374074))

(assert (= (and b!374074 res!210963) b!374081))

(assert (= (and b!374081 res!210958) b!374080))

(assert (= (and b!374080 res!210967) b!374072))

(assert (= (and b!374072 res!210960) b!374079))

(assert (= (and b!374079 (not res!210965)) b!374070))

(assert (= (and b!374070 (not res!210957)) b!374067))

(assert (= (and b!374076 condMapEmpty!14925) mapIsEmpty!14925))

(assert (= (and b!374076 (not condMapEmpty!14925)) mapNonEmpty!14925))

(get-info :version)

(assert (= (and mapNonEmpty!14925 ((_ is ValueCellFull!4110) mapValue!14925)) b!374078))

(assert (= (and b!374076 ((_ is ValueCellFull!4110) mapDefault!14925)) b!374075))

(assert (= start!37140 b!374076))

(declare-fun m!370301 () Bool)

(assert (=> b!374077 m!370301))

(declare-fun m!370303 () Bool)

(assert (=> b!374080 m!370303))

(declare-fun m!370305 () Bool)

(assert (=> b!374080 m!370305))

(declare-fun m!370307 () Bool)

(assert (=> b!374072 m!370307))

(declare-fun m!370309 () Bool)

(assert (=> b!374069 m!370309))

(declare-fun m!370311 () Bool)

(assert (=> b!374081 m!370311))

(declare-fun m!370313 () Bool)

(assert (=> b!374068 m!370313))

(declare-fun m!370315 () Bool)

(assert (=> mapNonEmpty!14925 m!370315))

(declare-fun m!370317 () Bool)

(assert (=> b!374070 m!370317))

(declare-fun m!370319 () Bool)

(assert (=> b!374070 m!370319))

(declare-fun m!370321 () Bool)

(assert (=> b!374070 m!370321))

(declare-fun m!370323 () Bool)

(assert (=> b!374070 m!370323))

(declare-fun m!370325 () Bool)

(assert (=> b!374070 m!370325))

(declare-fun m!370327 () Bool)

(assert (=> b!374070 m!370327))

(declare-fun m!370329 () Bool)

(assert (=> b!374070 m!370329))

(assert (=> b!374070 m!370323))

(declare-fun m!370331 () Bool)

(assert (=> b!374070 m!370331))

(declare-fun m!370333 () Bool)

(assert (=> b!374074 m!370333))

(declare-fun m!370335 () Bool)

(assert (=> start!37140 m!370335))

(declare-fun m!370337 () Bool)

(assert (=> start!37140 m!370337))

(declare-fun m!370339 () Bool)

(assert (=> start!37140 m!370339))

(declare-fun m!370341 () Bool)

(assert (=> b!374079 m!370341))

(declare-fun m!370343 () Bool)

(assert (=> b!374079 m!370343))

(declare-fun m!370345 () Bool)

(assert (=> b!374079 m!370345))

(declare-fun m!370347 () Bool)

(assert (=> b!374079 m!370347))

(declare-fun m!370349 () Bool)

(assert (=> b!374079 m!370349))

(declare-fun m!370351 () Bool)

(assert (=> b!374079 m!370351))

(declare-fun m!370353 () Bool)

(assert (=> b!374079 m!370353))

(declare-fun m!370355 () Bool)

(assert (=> b!374067 m!370355))

(declare-fun m!370357 () Bool)

(assert (=> b!374067 m!370357))

(declare-fun m!370359 () Bool)

(assert (=> b!374067 m!370359))

(check-sat b_and!15519 (not b_next!8259) (not b!374068) (not b!374070) (not b!374081) (not mapNonEmpty!14925) (not b!374079) (not b!374067) (not b!374077) (not b!374072) (not b!374080) (not start!37140) tp_is_empty!8907 (not b!374069))
(check-sat b_and!15519 (not b_next!8259))
