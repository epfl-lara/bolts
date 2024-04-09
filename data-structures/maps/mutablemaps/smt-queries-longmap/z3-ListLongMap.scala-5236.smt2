; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70522 () Bool)

(assert start!70522)

(declare-fun b_free!12825 () Bool)

(declare-fun b_next!12825 () Bool)

(assert (=> start!70522 (= b_free!12825 (not b_next!12825))))

(declare-fun tp!45207 () Bool)

(declare-fun b_and!21673 () Bool)

(assert (=> start!70522 (= tp!45207 b_and!21673)))

(declare-fun b!818736 () Bool)

(declare-fun res!558844 () Bool)

(declare-fun e!454598 () Bool)

(assert (=> b!818736 (=> (not res!558844) (not e!454598))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!24381 0))(
  ( (V!24382 (val!7315 Int)) )
))
(declare-datatypes ((ValueCell!6852 0))(
  ( (ValueCellFull!6852 (v!9740 V!24381)) (EmptyCell!6852) )
))
(declare-datatypes ((array!45242 0))(
  ( (array!45243 (arr!21671 (Array (_ BitVec 32) ValueCell!6852)) (size!22092 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45242)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-datatypes ((array!45244 0))(
  ( (array!45245 (arr!21672 (Array (_ BitVec 32) (_ BitVec 64))) (size!22093 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45244)

(assert (=> b!818736 (= res!558844 (and (= (size!22092 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22093 _keys!976) (size!22092 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!23401 () Bool)

(declare-fun mapRes!23401 () Bool)

(assert (=> mapIsEmpty!23401 mapRes!23401))

(declare-fun b!818737 () Bool)

(declare-fun res!558845 () Bool)

(assert (=> b!818737 (=> (not res!558845) (not e!454598))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45244 (_ BitVec 32)) Bool)

(assert (=> b!818737 (= res!558845 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun zeroValueAfter!34 () V!24381)

(declare-fun b!818738 () Bool)

(declare-fun e!454603 () Bool)

(declare-datatypes ((tuple2!9632 0))(
  ( (tuple2!9633 (_1!4826 (_ BitVec 64)) (_2!4826 V!24381)) )
))
(declare-datatypes ((List!15494 0))(
  ( (Nil!15491) (Cons!15490 (h!16619 tuple2!9632) (t!21831 List!15494)) )
))
(declare-datatypes ((ListLongMap!8469 0))(
  ( (ListLongMap!8470 (toList!4250 List!15494)) )
))
(declare-fun lt!367117 () ListLongMap!8469)

(declare-fun lt!367109 () ListLongMap!8469)

(declare-fun +!1794 (ListLongMap!8469 tuple2!9632) ListLongMap!8469)

(assert (=> b!818738 (= e!454603 (= lt!367109 (+!1794 lt!367117 (tuple2!9633 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun b!818739 () Bool)

(declare-fun e!454601 () Bool)

(assert (=> b!818739 (= e!454598 (not e!454601))))

(declare-fun res!558842 () Bool)

(assert (=> b!818739 (=> res!558842 e!454601)))

(assert (=> b!818739 (= res!558842 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!367111 () ListLongMap!8469)

(assert (=> b!818739 (= lt!367111 lt!367117)))

(declare-fun zeroValueBefore!34 () V!24381)

(declare-fun minValue!754 () V!24381)

(declare-datatypes ((Unit!27949 0))(
  ( (Unit!27950) )
))
(declare-fun lt!367116 () Unit!27949)

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!407 (array!45244 array!45242 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24381 V!24381 V!24381 V!24381 (_ BitVec 32) Int) Unit!27949)

(assert (=> b!818739 (= lt!367116 (lemmaNoChangeToArrayThenSameMapNoExtras!407 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2291 (array!45244 array!45242 (_ BitVec 32) (_ BitVec 32) V!24381 V!24381 (_ BitVec 32) Int) ListLongMap!8469)

(assert (=> b!818739 (= lt!367117 (getCurrentListMapNoExtraKeys!2291 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!818739 (= lt!367111 (getCurrentListMapNoExtraKeys!2291 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!818740 () Bool)

(declare-fun e!454600 () Bool)

(declare-fun e!454599 () Bool)

(assert (=> b!818740 (= e!454600 (and e!454599 mapRes!23401))))

(declare-fun condMapEmpty!23401 () Bool)

(declare-fun mapDefault!23401 () ValueCell!6852)

(assert (=> b!818740 (= condMapEmpty!23401 (= (arr!21671 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6852)) mapDefault!23401)))))

(declare-fun b!818741 () Bool)

(declare-fun e!454602 () Bool)

(declare-fun tp_is_empty!14535 () Bool)

(assert (=> b!818741 (= e!454602 tp_is_empty!14535)))

(declare-fun b!818742 () Bool)

(assert (=> b!818742 (= e!454599 tp_is_empty!14535)))

(declare-fun mapNonEmpty!23401 () Bool)

(declare-fun tp!45208 () Bool)

(assert (=> mapNonEmpty!23401 (= mapRes!23401 (and tp!45208 e!454602))))

(declare-fun mapKey!23401 () (_ BitVec 32))

(declare-fun mapValue!23401 () ValueCell!6852)

(declare-fun mapRest!23401 () (Array (_ BitVec 32) ValueCell!6852))

(assert (=> mapNonEmpty!23401 (= (arr!21671 _values!788) (store mapRest!23401 mapKey!23401 mapValue!23401))))

(declare-fun res!558843 () Bool)

(assert (=> start!70522 (=> (not res!558843) (not e!454598))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70522 (= res!558843 (validMask!0 mask!1312))))

(assert (=> start!70522 e!454598))

(assert (=> start!70522 tp_is_empty!14535))

(declare-fun array_inv!17295 (array!45244) Bool)

(assert (=> start!70522 (array_inv!17295 _keys!976)))

(assert (=> start!70522 true))

(declare-fun array_inv!17296 (array!45242) Bool)

(assert (=> start!70522 (and (array_inv!17296 _values!788) e!454600)))

(assert (=> start!70522 tp!45207))

(declare-fun b!818743 () Bool)

(assert (=> b!818743 (= e!454601 true)))

(declare-fun lt!367113 () tuple2!9632)

(declare-fun lt!367115 () tuple2!9632)

(declare-fun lt!367112 () ListLongMap!8469)

(assert (=> b!818743 (= lt!367112 (+!1794 (+!1794 lt!367117 lt!367113) lt!367115))))

(declare-fun lt!367110 () ListLongMap!8469)

(assert (=> b!818743 (= (+!1794 lt!367111 lt!367115) (+!1794 lt!367110 lt!367115))))

(declare-fun lt!367108 () Unit!27949)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!173 (ListLongMap!8469 (_ BitVec 64) V!24381 V!24381) Unit!27949)

(assert (=> b!818743 (= lt!367108 (addSameAsAddTwiceSameKeyDiffValues!173 lt!367111 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(assert (=> b!818743 (= lt!367115 (tuple2!9633 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(assert (=> b!818743 e!454603))

(declare-fun res!558840 () Bool)

(assert (=> b!818743 (=> (not res!558840) (not e!454603))))

(declare-fun lt!367114 () ListLongMap!8469)

(assert (=> b!818743 (= res!558840 (= lt!367114 lt!367110))))

(assert (=> b!818743 (= lt!367110 (+!1794 lt!367111 lt!367113))))

(assert (=> b!818743 (= lt!367113 (tuple2!9633 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-fun getCurrentListMap!2408 (array!45244 array!45242 (_ BitVec 32) (_ BitVec 32) V!24381 V!24381 (_ BitVec 32) Int) ListLongMap!8469)

(assert (=> b!818743 (= lt!367109 (getCurrentListMap!2408 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!818743 (= lt!367114 (getCurrentListMap!2408 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!818744 () Bool)

(declare-fun res!558841 () Bool)

(assert (=> b!818744 (=> (not res!558841) (not e!454598))))

(declare-datatypes ((List!15495 0))(
  ( (Nil!15492) (Cons!15491 (h!16620 (_ BitVec 64)) (t!21832 List!15495)) )
))
(declare-fun arrayNoDuplicates!0 (array!45244 (_ BitVec 32) List!15495) Bool)

(assert (=> b!818744 (= res!558841 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15492))))

(assert (= (and start!70522 res!558843) b!818736))

(assert (= (and b!818736 res!558844) b!818737))

(assert (= (and b!818737 res!558845) b!818744))

(assert (= (and b!818744 res!558841) b!818739))

(assert (= (and b!818739 (not res!558842)) b!818743))

(assert (= (and b!818743 res!558840) b!818738))

(assert (= (and b!818740 condMapEmpty!23401) mapIsEmpty!23401))

(assert (= (and b!818740 (not condMapEmpty!23401)) mapNonEmpty!23401))

(get-info :version)

(assert (= (and mapNonEmpty!23401 ((_ is ValueCellFull!6852) mapValue!23401)) b!818741))

(assert (= (and b!818740 ((_ is ValueCellFull!6852) mapDefault!23401)) b!818742))

(assert (= start!70522 b!818740))

(declare-fun m!760291 () Bool)

(assert (=> b!818744 m!760291))

(declare-fun m!760293 () Bool)

(assert (=> b!818739 m!760293))

(declare-fun m!760295 () Bool)

(assert (=> b!818739 m!760295))

(declare-fun m!760297 () Bool)

(assert (=> b!818739 m!760297))

(declare-fun m!760299 () Bool)

(assert (=> b!818743 m!760299))

(declare-fun m!760301 () Bool)

(assert (=> b!818743 m!760301))

(declare-fun m!760303 () Bool)

(assert (=> b!818743 m!760303))

(assert (=> b!818743 m!760303))

(declare-fun m!760305 () Bool)

(assert (=> b!818743 m!760305))

(declare-fun m!760307 () Bool)

(assert (=> b!818743 m!760307))

(declare-fun m!760309 () Bool)

(assert (=> b!818743 m!760309))

(declare-fun m!760311 () Bool)

(assert (=> b!818743 m!760311))

(declare-fun m!760313 () Bool)

(assert (=> b!818743 m!760313))

(declare-fun m!760315 () Bool)

(assert (=> mapNonEmpty!23401 m!760315))

(declare-fun m!760317 () Bool)

(assert (=> start!70522 m!760317))

(declare-fun m!760319 () Bool)

(assert (=> start!70522 m!760319))

(declare-fun m!760321 () Bool)

(assert (=> start!70522 m!760321))

(declare-fun m!760323 () Bool)

(assert (=> b!818737 m!760323))

(declare-fun m!760325 () Bool)

(assert (=> b!818738 m!760325))

(check-sat b_and!21673 (not b_next!12825) (not b!818744) (not b!818743) (not start!70522) tp_is_empty!14535 (not b!818738) (not b!818737) (not mapNonEmpty!23401) (not b!818739))
(check-sat b_and!21673 (not b_next!12825))
