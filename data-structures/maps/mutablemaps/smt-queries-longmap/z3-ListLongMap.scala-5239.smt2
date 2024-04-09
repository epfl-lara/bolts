; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70540 () Bool)

(assert start!70540)

(declare-fun b_free!12843 () Bool)

(declare-fun b_next!12843 () Bool)

(assert (=> start!70540 (= b_free!12843 (not b_next!12843))))

(declare-fun tp!45262 () Bool)

(declare-fun b_and!21691 () Bool)

(assert (=> start!70540 (= tp!45262 b_and!21691)))

(declare-fun b!818979 () Bool)

(declare-fun res!559006 () Bool)

(declare-fun e!454789 () Bool)

(assert (=> b!818979 (=> (not res!559006) (not e!454789))))

(declare-datatypes ((array!45276 0))(
  ( (array!45277 (arr!21688 (Array (_ BitVec 32) (_ BitVec 64))) (size!22109 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45276)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45276 (_ BitVec 32)) Bool)

(assert (=> b!818979 (= res!559006 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!818980 () Bool)

(declare-fun res!559007 () Bool)

(assert (=> b!818980 (=> (not res!559007) (not e!454789))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!24405 0))(
  ( (V!24406 (val!7324 Int)) )
))
(declare-datatypes ((ValueCell!6861 0))(
  ( (ValueCellFull!6861 (v!9749 V!24405)) (EmptyCell!6861) )
))
(declare-datatypes ((array!45278 0))(
  ( (array!45279 (arr!21689 (Array (_ BitVec 32) ValueCell!6861)) (size!22110 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45278)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!818980 (= res!559007 (and (= (size!22110 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22109 _keys!976) (size!22110 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!818981 () Bool)

(declare-fun e!454790 () Bool)

(declare-fun e!454786 () Bool)

(declare-fun mapRes!23428 () Bool)

(assert (=> b!818981 (= e!454790 (and e!454786 mapRes!23428))))

(declare-fun condMapEmpty!23428 () Bool)

(declare-fun mapDefault!23428 () ValueCell!6861)

(assert (=> b!818981 (= condMapEmpty!23428 (= (arr!21689 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6861)) mapDefault!23428)))))

(declare-fun b!818982 () Bool)

(declare-fun tp_is_empty!14553 () Bool)

(assert (=> b!818982 (= e!454786 tp_is_empty!14553)))

(declare-fun res!559003 () Bool)

(assert (=> start!70540 (=> (not res!559003) (not e!454789))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70540 (= res!559003 (validMask!0 mask!1312))))

(assert (=> start!70540 e!454789))

(assert (=> start!70540 tp_is_empty!14553))

(declare-fun array_inv!17307 (array!45276) Bool)

(assert (=> start!70540 (array_inv!17307 _keys!976)))

(assert (=> start!70540 true))

(declare-fun array_inv!17308 (array!45278) Bool)

(assert (=> start!70540 (and (array_inv!17308 _values!788) e!454790)))

(assert (=> start!70540 tp!45262))

(declare-fun mapIsEmpty!23428 () Bool)

(assert (=> mapIsEmpty!23428 mapRes!23428))

(declare-fun mapNonEmpty!23428 () Bool)

(declare-fun tp!45261 () Bool)

(declare-fun e!454788 () Bool)

(assert (=> mapNonEmpty!23428 (= mapRes!23428 (and tp!45261 e!454788))))

(declare-fun mapValue!23428 () ValueCell!6861)

(declare-fun mapRest!23428 () (Array (_ BitVec 32) ValueCell!6861))

(declare-fun mapKey!23428 () (_ BitVec 32))

(assert (=> mapNonEmpty!23428 (= (arr!21689 _values!788) (store mapRest!23428 mapKey!23428 mapValue!23428))))

(declare-fun b!818983 () Bool)

(declare-fun res!559004 () Bool)

(assert (=> b!818983 (=> (not res!559004) (not e!454789))))

(declare-datatypes ((List!15509 0))(
  ( (Nil!15506) (Cons!15505 (h!16634 (_ BitVec 64)) (t!21846 List!15509)) )
))
(declare-fun arrayNoDuplicates!0 (array!45276 (_ BitVec 32) List!15509) Bool)

(assert (=> b!818983 (= res!559004 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15506))))

(declare-fun b!818984 () Bool)

(assert (=> b!818984 (= e!454788 tp_is_empty!14553)))

(declare-fun b!818985 () Bool)

(declare-fun e!454787 () Bool)

(assert (=> b!818985 (= e!454789 (not e!454787))))

(declare-fun res!559005 () Bool)

(assert (=> b!818985 (=> res!559005 e!454787)))

(assert (=> b!818985 (= res!559005 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!9648 0))(
  ( (tuple2!9649 (_1!4834 (_ BitVec 64)) (_2!4834 V!24405)) )
))
(declare-datatypes ((List!15510 0))(
  ( (Nil!15507) (Cons!15506 (h!16635 tuple2!9648) (t!21847 List!15510)) )
))
(declare-datatypes ((ListLongMap!8485 0))(
  ( (ListLongMap!8486 (toList!4258 List!15510)) )
))
(declare-fun lt!367384 () ListLongMap!8485)

(declare-fun lt!367383 () ListLongMap!8485)

(assert (=> b!818985 (= lt!367384 lt!367383)))

(declare-fun zeroValueBefore!34 () V!24405)

(declare-datatypes ((Unit!27965 0))(
  ( (Unit!27966) )
))
(declare-fun lt!367380 () Unit!27965)

(declare-fun zeroValueAfter!34 () V!24405)

(declare-fun minValue!754 () V!24405)

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!413 (array!45276 array!45278 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24405 V!24405 V!24405 V!24405 (_ BitVec 32) Int) Unit!27965)

(assert (=> b!818985 (= lt!367380 (lemmaNoChangeToArrayThenSameMapNoExtras!413 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2297 (array!45276 array!45278 (_ BitVec 32) (_ BitVec 32) V!24405 V!24405 (_ BitVec 32) Int) ListLongMap!8485)

(assert (=> b!818985 (= lt!367383 (getCurrentListMapNoExtraKeys!2297 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!818985 (= lt!367384 (getCurrentListMapNoExtraKeys!2297 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!818986 () Bool)

(declare-fun lt!367387 () ListLongMap!8485)

(declare-fun e!454792 () Bool)

(declare-fun +!1802 (ListLongMap!8485 tuple2!9648) ListLongMap!8485)

(assert (=> b!818986 (= e!454792 (= lt!367387 (+!1802 lt!367383 (tuple2!9649 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun b!818987 () Bool)

(assert (=> b!818987 (= e!454787 true)))

(declare-fun lt!367385 () tuple2!9648)

(declare-fun lt!367382 () tuple2!9648)

(declare-fun lt!367379 () ListLongMap!8485)

(assert (=> b!818987 (= lt!367379 (+!1802 (+!1802 lt!367383 lt!367382) lt!367385))))

(declare-fun lt!367381 () ListLongMap!8485)

(assert (=> b!818987 (= (+!1802 lt!367384 lt!367385) (+!1802 lt!367381 lt!367385))))

(declare-fun lt!367386 () Unit!27965)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!181 (ListLongMap!8485 (_ BitVec 64) V!24405 V!24405) Unit!27965)

(assert (=> b!818987 (= lt!367386 (addSameAsAddTwiceSameKeyDiffValues!181 lt!367384 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(assert (=> b!818987 (= lt!367385 (tuple2!9649 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(assert (=> b!818987 e!454792))

(declare-fun res!559002 () Bool)

(assert (=> b!818987 (=> (not res!559002) (not e!454792))))

(declare-fun lt!367378 () ListLongMap!8485)

(assert (=> b!818987 (= res!559002 (= lt!367378 lt!367381))))

(assert (=> b!818987 (= lt!367381 (+!1802 lt!367384 lt!367382))))

(assert (=> b!818987 (= lt!367382 (tuple2!9649 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-fun getCurrentListMap!2416 (array!45276 array!45278 (_ BitVec 32) (_ BitVec 32) V!24405 V!24405 (_ BitVec 32) Int) ListLongMap!8485)

(assert (=> b!818987 (= lt!367387 (getCurrentListMap!2416 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!818987 (= lt!367378 (getCurrentListMap!2416 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (= (and start!70540 res!559003) b!818980))

(assert (= (and b!818980 res!559007) b!818979))

(assert (= (and b!818979 res!559006) b!818983))

(assert (= (and b!818983 res!559004) b!818985))

(assert (= (and b!818985 (not res!559005)) b!818987))

(assert (= (and b!818987 res!559002) b!818986))

(assert (= (and b!818981 condMapEmpty!23428) mapIsEmpty!23428))

(assert (= (and b!818981 (not condMapEmpty!23428)) mapNonEmpty!23428))

(get-info :version)

(assert (= (and mapNonEmpty!23428 ((_ is ValueCellFull!6861) mapValue!23428)) b!818984))

(assert (= (and b!818981 ((_ is ValueCellFull!6861) mapDefault!23428)) b!818982))

(assert (= start!70540 b!818981))

(declare-fun m!760615 () Bool)

(assert (=> start!70540 m!760615))

(declare-fun m!760617 () Bool)

(assert (=> start!70540 m!760617))

(declare-fun m!760619 () Bool)

(assert (=> start!70540 m!760619))

(declare-fun m!760621 () Bool)

(assert (=> b!818983 m!760621))

(declare-fun m!760623 () Bool)

(assert (=> mapNonEmpty!23428 m!760623))

(declare-fun m!760625 () Bool)

(assert (=> b!818987 m!760625))

(declare-fun m!760627 () Bool)

(assert (=> b!818987 m!760627))

(declare-fun m!760629 () Bool)

(assert (=> b!818987 m!760629))

(declare-fun m!760631 () Bool)

(assert (=> b!818987 m!760631))

(declare-fun m!760633 () Bool)

(assert (=> b!818987 m!760633))

(declare-fun m!760635 () Bool)

(assert (=> b!818987 m!760635))

(assert (=> b!818987 m!760631))

(declare-fun m!760637 () Bool)

(assert (=> b!818987 m!760637))

(declare-fun m!760639 () Bool)

(assert (=> b!818987 m!760639))

(declare-fun m!760641 () Bool)

(assert (=> b!818985 m!760641))

(declare-fun m!760643 () Bool)

(assert (=> b!818985 m!760643))

(declare-fun m!760645 () Bool)

(assert (=> b!818985 m!760645))

(declare-fun m!760647 () Bool)

(assert (=> b!818986 m!760647))

(declare-fun m!760649 () Bool)

(assert (=> b!818979 m!760649))

(check-sat b_and!21691 (not b!818985) (not start!70540) (not mapNonEmpty!23428) (not b_next!12843) (not b!818986) tp_is_empty!14553 (not b!818979) (not b!818987) (not b!818983))
(check-sat b_and!21691 (not b_next!12843))
