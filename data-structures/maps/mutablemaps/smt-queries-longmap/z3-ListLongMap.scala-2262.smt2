; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37044 () Bool)

(assert start!37044)

(declare-fun b_free!8163 () Bool)

(declare-fun b_next!8163 () Bool)

(assert (=> start!37044 (= b_free!8163 (not b_next!8163))))

(declare-fun tp!29205 () Bool)

(declare-fun b_and!15423 () Bool)

(assert (=> start!37044 (= tp!29205 b_and!15423)))

(declare-fun b!372023 () Bool)

(declare-fun res!209346 () Bool)

(declare-fun e!226972 () Bool)

(assert (=> b!372023 (=> (not res!209346) (not e!226972))))

(declare-datatypes ((array!21531 0))(
  ( (array!21532 (arr!10231 (Array (_ BitVec 32) (_ BitVec 64))) (size!10583 (_ BitVec 32))) )
))
(declare-fun lt!170593 () array!21531)

(declare-datatypes ((List!5751 0))(
  ( (Nil!5748) (Cons!5747 (h!6603 (_ BitVec 64)) (t!10909 List!5751)) )
))
(declare-fun arrayNoDuplicates!0 (array!21531 (_ BitVec 32) List!5751) Bool)

(assert (=> b!372023 (= res!209346 (arrayNoDuplicates!0 lt!170593 #b00000000000000000000000000000000 Nil!5748))))

(declare-fun mapIsEmpty!14781 () Bool)

(declare-fun mapRes!14781 () Bool)

(assert (=> mapIsEmpty!14781 mapRes!14781))

(declare-fun b!372024 () Bool)

(declare-fun res!209349 () Bool)

(declare-fun e!226970 () Bool)

(assert (=> b!372024 (=> (not res!209349) (not e!226970))))

(declare-fun i!548 () (_ BitVec 32))

(declare-fun _keys!658 () array!21531)

(assert (=> b!372024 (= res!209349 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10583 _keys!658))))))

(declare-fun b!372025 () Bool)

(declare-fun res!209353 () Bool)

(assert (=> b!372025 (=> (not res!209353) (not e!226970))))

(assert (=> b!372025 (= res!209353 (or (= (select (arr!10231 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10231 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!372026 () Bool)

(declare-fun res!209354 () Bool)

(assert (=> b!372026 (=> (not res!209354) (not e!226970))))

(assert (=> b!372026 (= res!209354 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5748))))

(declare-fun b!372028 () Bool)

(declare-fun res!209348 () Bool)

(assert (=> b!372028 (=> (not res!209348) (not e!226970))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!21531 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!372028 (= res!209348 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!372029 () Bool)

(declare-fun e!226973 () Bool)

(declare-fun tp_is_empty!8811 () Bool)

(assert (=> b!372029 (= e!226973 tp_is_empty!8811)))

(declare-fun b!372030 () Bool)

(declare-fun res!209347 () Bool)

(assert (=> b!372030 (=> (not res!209347) (not e!226970))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!372030 (= res!209347 (validKeyInArray!0 k0!778))))

(declare-fun b!372031 () Bool)

(declare-fun res!209351 () Bool)

(assert (=> b!372031 (=> (not res!209351) (not e!226970))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21531 (_ BitVec 32)) Bool)

(assert (=> b!372031 (= res!209351 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!372032 () Bool)

(assert (=> b!372032 (= e!226972 (not true))))

(declare-datatypes ((V!12853 0))(
  ( (V!12854 (val!4450 Int)) )
))
(declare-datatypes ((ValueCell!4062 0))(
  ( (ValueCellFull!4062 (v!6643 V!12853)) (EmptyCell!4062) )
))
(declare-datatypes ((array!21533 0))(
  ( (array!21534 (arr!10232 (Array (_ BitVec 32) ValueCell!4062)) (size!10584 (_ BitVec 32))) )
))
(declare-fun lt!170597 () array!21533)

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((tuple2!5878 0))(
  ( (tuple2!5879 (_1!2949 (_ BitVec 64)) (_2!2949 V!12853)) )
))
(declare-datatypes ((List!5752 0))(
  ( (Nil!5749) (Cons!5748 (h!6604 tuple2!5878) (t!10910 List!5752)) )
))
(declare-datatypes ((ListLongMap!4805 0))(
  ( (ListLongMap!4806 (toList!2418 List!5752)) )
))
(declare-fun lt!170596 () ListLongMap!4805)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!12853)

(declare-fun minValue!472 () V!12853)

(declare-fun getCurrentListMap!1868 (array!21531 array!21533 (_ BitVec 32) (_ BitVec 32) V!12853 V!12853 (_ BitVec 32) Int) ListLongMap!4805)

(assert (=> b!372032 (= lt!170596 (getCurrentListMap!1868 lt!170593 lt!170597 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!170599 () ListLongMap!4805)

(declare-fun lt!170598 () ListLongMap!4805)

(assert (=> b!372032 (and (= lt!170599 lt!170598) (= lt!170598 lt!170599))))

(declare-fun v!373 () V!12853)

(declare-fun lt!170595 () ListLongMap!4805)

(declare-fun +!759 (ListLongMap!4805 tuple2!5878) ListLongMap!4805)

(assert (=> b!372032 (= lt!170598 (+!759 lt!170595 (tuple2!5879 k0!778 v!373)))))

(declare-fun _values!506 () array!21533)

(declare-datatypes ((Unit!11423 0))(
  ( (Unit!11424) )
))
(declare-fun lt!170594 () Unit!11423)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!19 (array!21531 array!21533 (_ BitVec 32) (_ BitVec 32) V!12853 V!12853 (_ BitVec 32) (_ BitVec 64) V!12853 (_ BitVec 32) Int) Unit!11423)

(assert (=> b!372032 (= lt!170594 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!19 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!686 (array!21531 array!21533 (_ BitVec 32) (_ BitVec 32) V!12853 V!12853 (_ BitVec 32) Int) ListLongMap!4805)

(assert (=> b!372032 (= lt!170599 (getCurrentListMapNoExtraKeys!686 lt!170593 lt!170597 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!372032 (= lt!170597 (array!21534 (store (arr!10232 _values!506) i!548 (ValueCellFull!4062 v!373)) (size!10584 _values!506)))))

(assert (=> b!372032 (= lt!170595 (getCurrentListMapNoExtraKeys!686 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!372033 () Bool)

(declare-fun res!209350 () Bool)

(assert (=> b!372033 (=> (not res!209350) (not e!226970))))

(assert (=> b!372033 (= res!209350 (and (= (size!10584 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10583 _keys!658) (size!10584 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun res!209352 () Bool)

(assert (=> start!37044 (=> (not res!209352) (not e!226970))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37044 (= res!209352 (validMask!0 mask!970))))

(assert (=> start!37044 e!226970))

(declare-fun e!226969 () Bool)

(declare-fun array_inv!7554 (array!21533) Bool)

(assert (=> start!37044 (and (array_inv!7554 _values!506) e!226969)))

(assert (=> start!37044 tp!29205))

(assert (=> start!37044 true))

(assert (=> start!37044 tp_is_empty!8811))

(declare-fun array_inv!7555 (array!21531) Bool)

(assert (=> start!37044 (array_inv!7555 _keys!658)))

(declare-fun b!372027 () Bool)

(declare-fun e!226971 () Bool)

(assert (=> b!372027 (= e!226971 tp_is_empty!8811)))

(declare-fun b!372034 () Bool)

(assert (=> b!372034 (= e!226969 (and e!226971 mapRes!14781))))

(declare-fun condMapEmpty!14781 () Bool)

(declare-fun mapDefault!14781 () ValueCell!4062)

(assert (=> b!372034 (= condMapEmpty!14781 (= (arr!10232 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4062)) mapDefault!14781)))))

(declare-fun mapNonEmpty!14781 () Bool)

(declare-fun tp!29204 () Bool)

(assert (=> mapNonEmpty!14781 (= mapRes!14781 (and tp!29204 e!226973))))

(declare-fun mapKey!14781 () (_ BitVec 32))

(declare-fun mapRest!14781 () (Array (_ BitVec 32) ValueCell!4062))

(declare-fun mapValue!14781 () ValueCell!4062)

(assert (=> mapNonEmpty!14781 (= (arr!10232 _values!506) (store mapRest!14781 mapKey!14781 mapValue!14781))))

(declare-fun b!372035 () Bool)

(assert (=> b!372035 (= e!226970 e!226972)))

(declare-fun res!209345 () Bool)

(assert (=> b!372035 (=> (not res!209345) (not e!226972))))

(assert (=> b!372035 (= res!209345 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!170593 mask!970))))

(assert (=> b!372035 (= lt!170593 (array!21532 (store (arr!10231 _keys!658) i!548 k0!778) (size!10583 _keys!658)))))

(assert (= (and start!37044 res!209352) b!372033))

(assert (= (and b!372033 res!209350) b!372031))

(assert (= (and b!372031 res!209351) b!372026))

(assert (= (and b!372026 res!209354) b!372024))

(assert (= (and b!372024 res!209349) b!372030))

(assert (= (and b!372030 res!209347) b!372025))

(assert (= (and b!372025 res!209353) b!372028))

(assert (= (and b!372028 res!209348) b!372035))

(assert (= (and b!372035 res!209345) b!372023))

(assert (= (and b!372023 res!209346) b!372032))

(assert (= (and b!372034 condMapEmpty!14781) mapIsEmpty!14781))

(assert (= (and b!372034 (not condMapEmpty!14781)) mapNonEmpty!14781))

(get-info :version)

(assert (= (and mapNonEmpty!14781 ((_ is ValueCellFull!4062) mapValue!14781)) b!372029))

(assert (= (and b!372034 ((_ is ValueCellFull!4062) mapDefault!14781)) b!372027))

(assert (= start!37044 b!372034))

(declare-fun m!367949 () Bool)

(assert (=> b!372028 m!367949))

(declare-fun m!367951 () Bool)

(assert (=> b!372030 m!367951))

(declare-fun m!367953 () Bool)

(assert (=> b!372031 m!367953))

(declare-fun m!367955 () Bool)

(assert (=> start!37044 m!367955))

(declare-fun m!367957 () Bool)

(assert (=> start!37044 m!367957))

(declare-fun m!367959 () Bool)

(assert (=> start!37044 m!367959))

(declare-fun m!367961 () Bool)

(assert (=> b!372025 m!367961))

(declare-fun m!367963 () Bool)

(assert (=> b!372035 m!367963))

(declare-fun m!367965 () Bool)

(assert (=> b!372035 m!367965))

(declare-fun m!367967 () Bool)

(assert (=> b!372026 m!367967))

(declare-fun m!367969 () Bool)

(assert (=> mapNonEmpty!14781 m!367969))

(declare-fun m!367971 () Bool)

(assert (=> b!372032 m!367971))

(declare-fun m!367973 () Bool)

(assert (=> b!372032 m!367973))

(declare-fun m!367975 () Bool)

(assert (=> b!372032 m!367975))

(declare-fun m!367977 () Bool)

(assert (=> b!372032 m!367977))

(declare-fun m!367979 () Bool)

(assert (=> b!372032 m!367979))

(declare-fun m!367981 () Bool)

(assert (=> b!372032 m!367981))

(declare-fun m!367983 () Bool)

(assert (=> b!372023 m!367983))

(check-sat tp_is_empty!8811 (not b!372031) (not b!372023) (not b!372030) (not b!372026) (not b!372032) (not start!37044) (not b!372035) (not mapNonEmpty!14781) (not b!372028) (not b_next!8163) b_and!15423)
(check-sat b_and!15423 (not b_next!8163))
