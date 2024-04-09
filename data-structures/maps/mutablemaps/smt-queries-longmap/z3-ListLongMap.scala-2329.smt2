; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37446 () Bool)

(assert start!37446)

(declare-fun b_free!8565 () Bool)

(declare-fun b_next!8565 () Bool)

(assert (=> start!37446 (= b_free!8565 (not b_next!8565))))

(declare-fun tp!30410 () Bool)

(declare-fun b_and!15825 () Bool)

(assert (=> start!37446 (= tp!30410 b_and!15825)))

(declare-fun b!380947 () Bool)

(declare-fun res!216460 () Bool)

(declare-fun e!231645 () Bool)

(assert (=> b!380947 (=> (not res!216460) (not e!231645))))

(declare-datatypes ((array!22319 0))(
  ( (array!22320 (arr!10625 (Array (_ BitVec 32) (_ BitVec 64))) (size!10977 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22319)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22319 (_ BitVec 32)) Bool)

(assert (=> b!380947 (= res!216460 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!380948 () Bool)

(declare-fun res!216462 () Bool)

(assert (=> b!380948 (=> (not res!216462) (not e!231645))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!380948 (= res!216462 (or (= (select (arr!10625 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10625 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!380949 () Bool)

(declare-fun res!216463 () Bool)

(declare-fun e!231650 () Bool)

(assert (=> b!380949 (=> (not res!216463) (not e!231650))))

(declare-fun lt!178550 () array!22319)

(declare-datatypes ((List!6070 0))(
  ( (Nil!6067) (Cons!6066 (h!6922 (_ BitVec 64)) (t!11228 List!6070)) )
))
(declare-fun arrayNoDuplicates!0 (array!22319 (_ BitVec 32) List!6070) Bool)

(assert (=> b!380949 (= res!216463 (arrayNoDuplicates!0 lt!178550 #b00000000000000000000000000000000 Nil!6067))))

(declare-fun mapNonEmpty!15384 () Bool)

(declare-fun mapRes!15384 () Bool)

(declare-fun tp!30411 () Bool)

(declare-fun e!231647 () Bool)

(assert (=> mapNonEmpty!15384 (= mapRes!15384 (and tp!30411 e!231647))))

(declare-datatypes ((V!13389 0))(
  ( (V!13390 (val!4651 Int)) )
))
(declare-datatypes ((ValueCell!4263 0))(
  ( (ValueCellFull!4263 (v!6844 V!13389)) (EmptyCell!4263) )
))
(declare-datatypes ((array!22321 0))(
  ( (array!22322 (arr!10626 (Array (_ BitVec 32) ValueCell!4263)) (size!10978 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22321)

(declare-fun mapRest!15384 () (Array (_ BitVec 32) ValueCell!4263))

(declare-fun mapKey!15384 () (_ BitVec 32))

(declare-fun mapValue!15384 () ValueCell!4263)

(assert (=> mapNonEmpty!15384 (= (arr!10626 _values!506) (store mapRest!15384 mapKey!15384 mapValue!15384))))

(declare-fun b!380950 () Bool)

(assert (=> b!380950 (= e!231645 e!231650)))

(declare-fun res!216461 () Bool)

(assert (=> b!380950 (=> (not res!216461) (not e!231650))))

(assert (=> b!380950 (= res!216461 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!178550 mask!970))))

(declare-fun k0!778 () (_ BitVec 64))

(assert (=> b!380950 (= lt!178550 (array!22320 (store (arr!10625 _keys!658) i!548 k0!778) (size!10977 _keys!658)))))

(declare-fun b!380951 () Bool)

(declare-fun e!231651 () Bool)

(declare-fun e!231649 () Bool)

(assert (=> b!380951 (= e!231651 (and e!231649 mapRes!15384))))

(declare-fun condMapEmpty!15384 () Bool)

(declare-fun mapDefault!15384 () ValueCell!4263)

(assert (=> b!380951 (= condMapEmpty!15384 (= (arr!10626 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4263)) mapDefault!15384)))))

(declare-fun mapIsEmpty!15384 () Bool)

(assert (=> mapIsEmpty!15384 mapRes!15384))

(declare-fun b!380952 () Bool)

(declare-fun res!216468 () Bool)

(assert (=> b!380952 (=> (not res!216468) (not e!231645))))

(assert (=> b!380952 (= res!216468 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10977 _keys!658))))))

(declare-fun b!380953 () Bool)

(declare-fun e!231646 () Bool)

(assert (=> b!380953 (= e!231650 (not e!231646))))

(declare-fun res!216465 () Bool)

(assert (=> b!380953 (=> res!216465 e!231646)))

(declare-fun lt!178552 () Bool)

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!380953 (= res!216465 (or (and (not lt!178552) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!178552) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!178552)))))

(assert (=> b!380953 (= lt!178552 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13389)

(declare-datatypes ((tuple2!6198 0))(
  ( (tuple2!6199 (_1!3109 (_ BitVec 64)) (_2!3109 V!13389)) )
))
(declare-datatypes ((List!6071 0))(
  ( (Nil!6068) (Cons!6067 (h!6923 tuple2!6198) (t!11229 List!6071)) )
))
(declare-datatypes ((ListLongMap!5125 0))(
  ( (ListLongMap!5126 (toList!2578 List!6071)) )
))
(declare-fun lt!178553 () ListLongMap!5125)

(declare-fun minValue!472 () V!13389)

(declare-fun getCurrentListMap!2000 (array!22319 array!22321 (_ BitVec 32) (_ BitVec 32) V!13389 V!13389 (_ BitVec 32) Int) ListLongMap!5125)

(assert (=> b!380953 (= lt!178553 (getCurrentListMap!2000 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!178557 () array!22321)

(declare-fun lt!178556 () ListLongMap!5125)

(assert (=> b!380953 (= lt!178556 (getCurrentListMap!2000 lt!178550 lt!178557 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!178558 () ListLongMap!5125)

(declare-fun lt!178551 () ListLongMap!5125)

(assert (=> b!380953 (and (= lt!178558 lt!178551) (= lt!178551 lt!178558))))

(declare-fun v!373 () V!13389)

(declare-fun lt!178554 () ListLongMap!5125)

(declare-fun +!918 (ListLongMap!5125 tuple2!6198) ListLongMap!5125)

(assert (=> b!380953 (= lt!178551 (+!918 lt!178554 (tuple2!6199 k0!778 v!373)))))

(declare-datatypes ((Unit!11729 0))(
  ( (Unit!11730) )
))
(declare-fun lt!178555 () Unit!11729)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!151 (array!22319 array!22321 (_ BitVec 32) (_ BitVec 32) V!13389 V!13389 (_ BitVec 32) (_ BitVec 64) V!13389 (_ BitVec 32) Int) Unit!11729)

(assert (=> b!380953 (= lt!178555 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!151 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!818 (array!22319 array!22321 (_ BitVec 32) (_ BitVec 32) V!13389 V!13389 (_ BitVec 32) Int) ListLongMap!5125)

(assert (=> b!380953 (= lt!178558 (getCurrentListMapNoExtraKeys!818 lt!178550 lt!178557 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!380953 (= lt!178557 (array!22322 (store (arr!10626 _values!506) i!548 (ValueCellFull!4263 v!373)) (size!10978 _values!506)))))

(assert (=> b!380953 (= lt!178554 (getCurrentListMapNoExtraKeys!818 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!380954 () Bool)

(declare-fun tp_is_empty!9213 () Bool)

(assert (=> b!380954 (= e!231649 tp_is_empty!9213)))

(declare-fun res!216467 () Bool)

(assert (=> start!37446 (=> (not res!216467) (not e!231645))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37446 (= res!216467 (validMask!0 mask!970))))

(assert (=> start!37446 e!231645))

(declare-fun array_inv!7808 (array!22321) Bool)

(assert (=> start!37446 (and (array_inv!7808 _values!506) e!231651)))

(assert (=> start!37446 tp!30410))

(assert (=> start!37446 true))

(assert (=> start!37446 tp_is_empty!9213))

(declare-fun array_inv!7809 (array!22319) Bool)

(assert (=> start!37446 (array_inv!7809 _keys!658)))

(declare-fun b!380955 () Bool)

(declare-fun res!216466 () Bool)

(assert (=> b!380955 (=> (not res!216466) (not e!231645))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!380955 (= res!216466 (validKeyInArray!0 k0!778))))

(declare-fun b!380956 () Bool)

(declare-fun res!216464 () Bool)

(assert (=> b!380956 (=> (not res!216464) (not e!231645))))

(assert (=> b!380956 (= res!216464 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6067))))

(declare-fun b!380957 () Bool)

(declare-fun res!216470 () Bool)

(assert (=> b!380957 (=> (not res!216470) (not e!231645))))

(assert (=> b!380957 (= res!216470 (and (= (size!10978 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10977 _keys!658) (size!10978 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!380958 () Bool)

(assert (=> b!380958 (= e!231647 tp_is_empty!9213)))

(declare-fun b!380959 () Bool)

(declare-fun res!216469 () Bool)

(assert (=> b!380959 (=> (not res!216469) (not e!231645))))

(declare-fun arrayContainsKey!0 (array!22319 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!380959 (= res!216469 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!380960 () Bool)

(assert (=> b!380960 (= e!231646 true)))

(assert (=> b!380960 (= lt!178556 lt!178558)))

(assert (= (and start!37446 res!216467) b!380957))

(assert (= (and b!380957 res!216470) b!380947))

(assert (= (and b!380947 res!216460) b!380956))

(assert (= (and b!380956 res!216464) b!380952))

(assert (= (and b!380952 res!216468) b!380955))

(assert (= (and b!380955 res!216466) b!380948))

(assert (= (and b!380948 res!216462) b!380959))

(assert (= (and b!380959 res!216469) b!380950))

(assert (= (and b!380950 res!216461) b!380949))

(assert (= (and b!380949 res!216463) b!380953))

(assert (= (and b!380953 (not res!216465)) b!380960))

(assert (= (and b!380951 condMapEmpty!15384) mapIsEmpty!15384))

(assert (= (and b!380951 (not condMapEmpty!15384)) mapNonEmpty!15384))

(get-info :version)

(assert (= (and mapNonEmpty!15384 ((_ is ValueCellFull!4263) mapValue!15384)) b!380958))

(assert (= (and b!380951 ((_ is ValueCellFull!4263) mapDefault!15384)) b!380954))

(assert (= start!37446 b!380951))

(declare-fun m!377935 () Bool)

(assert (=> b!380947 m!377935))

(declare-fun m!377937 () Bool)

(assert (=> mapNonEmpty!15384 m!377937))

(declare-fun m!377939 () Bool)

(assert (=> b!380959 m!377939))

(declare-fun m!377941 () Bool)

(assert (=> b!380953 m!377941))

(declare-fun m!377943 () Bool)

(assert (=> b!380953 m!377943))

(declare-fun m!377945 () Bool)

(assert (=> b!380953 m!377945))

(declare-fun m!377947 () Bool)

(assert (=> b!380953 m!377947))

(declare-fun m!377949 () Bool)

(assert (=> b!380953 m!377949))

(declare-fun m!377951 () Bool)

(assert (=> b!380953 m!377951))

(declare-fun m!377953 () Bool)

(assert (=> b!380953 m!377953))

(declare-fun m!377955 () Bool)

(assert (=> b!380955 m!377955))

(declare-fun m!377957 () Bool)

(assert (=> b!380956 m!377957))

(declare-fun m!377959 () Bool)

(assert (=> b!380948 m!377959))

(declare-fun m!377961 () Bool)

(assert (=> start!37446 m!377961))

(declare-fun m!377963 () Bool)

(assert (=> start!37446 m!377963))

(declare-fun m!377965 () Bool)

(assert (=> start!37446 m!377965))

(declare-fun m!377967 () Bool)

(assert (=> b!380950 m!377967))

(declare-fun m!377969 () Bool)

(assert (=> b!380950 m!377969))

(declare-fun m!377971 () Bool)

(assert (=> b!380949 m!377971))

(check-sat (not b!380959) (not b!380947) (not b!380956) (not b!380955) (not start!37446) (not b_next!8565) (not b!380953) b_and!15825 (not mapNonEmpty!15384) (not b!380949) tp_is_empty!9213 (not b!380950))
(check-sat b_and!15825 (not b_next!8565))
