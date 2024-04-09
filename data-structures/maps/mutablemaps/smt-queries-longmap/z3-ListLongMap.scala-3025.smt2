; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42514 () Bool)

(assert start!42514)

(declare-fun b_free!11961 () Bool)

(declare-fun b_next!11961 () Bool)

(assert (=> start!42514 (= b_free!11961 (not b_next!11961))))

(declare-fun tp!41920 () Bool)

(declare-fun b_and!20447 () Bool)

(assert (=> start!42514 (= tp!41920 b_and!20447)))

(declare-fun b!474090 () Bool)

(declare-fun res!283250 () Bool)

(declare-fun e!278260 () Bool)

(assert (=> b!474090 (=> (not res!283250) (not e!278260))))

(declare-datatypes ((array!30495 0))(
  ( (array!30496 (arr!14663 (Array (_ BitVec 32) (_ BitVec 64))) (size!15015 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30495)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30495 (_ BitVec 32)) Bool)

(assert (=> b!474090 (= res!283250 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun res!283249 () Bool)

(assert (=> start!42514 (=> (not res!283249) (not e!278260))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42514 (= res!283249 (validMask!0 mask!1365))))

(assert (=> start!42514 e!278260))

(declare-fun tp_is_empty!13389 () Bool)

(assert (=> start!42514 tp_is_empty!13389))

(assert (=> start!42514 tp!41920))

(assert (=> start!42514 true))

(declare-fun array_inv!10570 (array!30495) Bool)

(assert (=> start!42514 (array_inv!10570 _keys!1025)))

(declare-datatypes ((V!18957 0))(
  ( (V!18958 (val!6739 Int)) )
))
(declare-datatypes ((ValueCell!6351 0))(
  ( (ValueCellFull!6351 (v!9027 V!18957)) (EmptyCell!6351) )
))
(declare-datatypes ((array!30497 0))(
  ( (array!30498 (arr!14664 (Array (_ BitVec 32) ValueCell!6351)) (size!15016 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30497)

(declare-fun e!278258 () Bool)

(declare-fun array_inv!10571 (array!30497) Bool)

(assert (=> start!42514 (and (array_inv!10571 _values!833) e!278258)))

(declare-fun b!474091 () Bool)

(declare-fun res!283247 () Bool)

(assert (=> b!474091 (=> (not res!283247) (not e!278260))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!474091 (= res!283247 (and (= (size!15016 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!15015 _keys!1025) (size!15016 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!474092 () Bool)

(declare-fun e!278257 () Bool)

(assert (=> b!474092 (= e!278257 true)))

(declare-datatypes ((tuple2!8880 0))(
  ( (tuple2!8881 (_1!4450 (_ BitVec 64)) (_2!4450 V!18957)) )
))
(declare-datatypes ((List!8990 0))(
  ( (Nil!8987) (Cons!8986 (h!9842 tuple2!8880) (t!14970 List!8990)) )
))
(declare-datatypes ((ListLongMap!7807 0))(
  ( (ListLongMap!7808 (toList!3919 List!8990)) )
))
(declare-fun lt!215924 () ListLongMap!7807)

(declare-fun lt!215929 () tuple2!8880)

(declare-fun minValueBefore!38 () V!18957)

(declare-fun +!1724 (ListLongMap!7807 tuple2!8880) ListLongMap!7807)

(assert (=> b!474092 (= (+!1724 lt!215924 lt!215929) (+!1724 (+!1724 lt!215924 (tuple2!8881 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!215929))))

(declare-fun minValueAfter!38 () V!18957)

(assert (=> b!474092 (= lt!215929 (tuple2!8881 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))

(declare-datatypes ((Unit!13961 0))(
  ( (Unit!13962) )
))
(declare-fun lt!215928 () Unit!13961)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!161 (ListLongMap!7807 (_ BitVec 64) V!18957 V!18957) Unit!13961)

(assert (=> b!474092 (= lt!215928 (addSameAsAddTwiceSameKeyDiffValues!161 lt!215924 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(declare-fun lt!215923 () ListLongMap!7807)

(declare-fun zeroValue!794 () V!18957)

(assert (=> b!474092 (= lt!215924 (+!1724 lt!215923 (tuple2!8881 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794)))))

(declare-fun defaultEntry!841 () Int)

(declare-fun lt!215925 () ListLongMap!7807)

(declare-fun getCurrentListMap!2261 (array!30495 array!30497 (_ BitVec 32) (_ BitVec 32) V!18957 V!18957 (_ BitVec 32) Int) ListLongMap!7807)

(assert (=> b!474092 (= lt!215925 (getCurrentListMap!2261 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!215922 () ListLongMap!7807)

(assert (=> b!474092 (= lt!215922 (getCurrentListMap!2261 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!474093 () Bool)

(declare-fun e!278256 () Bool)

(assert (=> b!474093 (= e!278256 tp_is_empty!13389)))

(declare-fun b!474094 () Bool)

(declare-fun e!278259 () Bool)

(declare-fun mapRes!21799 () Bool)

(assert (=> b!474094 (= e!278258 (and e!278259 mapRes!21799))))

(declare-fun condMapEmpty!21799 () Bool)

(declare-fun mapDefault!21799 () ValueCell!6351)

(assert (=> b!474094 (= condMapEmpty!21799 (= (arr!14664 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6351)) mapDefault!21799)))))

(declare-fun mapNonEmpty!21799 () Bool)

(declare-fun tp!41919 () Bool)

(assert (=> mapNonEmpty!21799 (= mapRes!21799 (and tp!41919 e!278256))))

(declare-fun mapValue!21799 () ValueCell!6351)

(declare-fun mapRest!21799 () (Array (_ BitVec 32) ValueCell!6351))

(declare-fun mapKey!21799 () (_ BitVec 32))

(assert (=> mapNonEmpty!21799 (= (arr!14664 _values!833) (store mapRest!21799 mapKey!21799 mapValue!21799))))

(declare-fun mapIsEmpty!21799 () Bool)

(assert (=> mapIsEmpty!21799 mapRes!21799))

(declare-fun b!474095 () Bool)

(assert (=> b!474095 (= e!278260 (not e!278257))))

(declare-fun res!283248 () Bool)

(assert (=> b!474095 (=> res!283248 e!278257)))

(assert (=> b!474095 (= res!283248 (or (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!215927 () ListLongMap!7807)

(assert (=> b!474095 (= lt!215923 lt!215927)))

(declare-fun lt!215926 () Unit!13961)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!269 (array!30495 array!30497 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18957 V!18957 V!18957 V!18957 (_ BitVec 32) Int) Unit!13961)

(assert (=> b!474095 (= lt!215926 (lemmaNoChangeToArrayThenSameMapNoExtras!269 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2074 (array!30495 array!30497 (_ BitVec 32) (_ BitVec 32) V!18957 V!18957 (_ BitVec 32) Int) ListLongMap!7807)

(assert (=> b!474095 (= lt!215927 (getCurrentListMapNoExtraKeys!2074 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!474095 (= lt!215923 (getCurrentListMapNoExtraKeys!2074 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!474096 () Bool)

(declare-fun res!283246 () Bool)

(assert (=> b!474096 (=> (not res!283246) (not e!278260))))

(declare-datatypes ((List!8991 0))(
  ( (Nil!8988) (Cons!8987 (h!9843 (_ BitVec 64)) (t!14971 List!8991)) )
))
(declare-fun arrayNoDuplicates!0 (array!30495 (_ BitVec 32) List!8991) Bool)

(assert (=> b!474096 (= res!283246 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8988))))

(declare-fun b!474097 () Bool)

(assert (=> b!474097 (= e!278259 tp_is_empty!13389)))

(assert (= (and start!42514 res!283249) b!474091))

(assert (= (and b!474091 res!283247) b!474090))

(assert (= (and b!474090 res!283250) b!474096))

(assert (= (and b!474096 res!283246) b!474095))

(assert (= (and b!474095 (not res!283248)) b!474092))

(assert (= (and b!474094 condMapEmpty!21799) mapIsEmpty!21799))

(assert (= (and b!474094 (not condMapEmpty!21799)) mapNonEmpty!21799))

(get-info :version)

(assert (= (and mapNonEmpty!21799 ((_ is ValueCellFull!6351) mapValue!21799)) b!474093))

(assert (= (and b!474094 ((_ is ValueCellFull!6351) mapDefault!21799)) b!474097))

(assert (= start!42514 b!474094))

(declare-fun m!456429 () Bool)

(assert (=> b!474092 m!456429))

(declare-fun m!456431 () Bool)

(assert (=> b!474092 m!456431))

(declare-fun m!456433 () Bool)

(assert (=> b!474092 m!456433))

(assert (=> b!474092 m!456431))

(declare-fun m!456435 () Bool)

(assert (=> b!474092 m!456435))

(declare-fun m!456437 () Bool)

(assert (=> b!474092 m!456437))

(declare-fun m!456439 () Bool)

(assert (=> b!474092 m!456439))

(declare-fun m!456441 () Bool)

(assert (=> b!474092 m!456441))

(declare-fun m!456443 () Bool)

(assert (=> b!474095 m!456443))

(declare-fun m!456445 () Bool)

(assert (=> b!474095 m!456445))

(declare-fun m!456447 () Bool)

(assert (=> b!474095 m!456447))

(declare-fun m!456449 () Bool)

(assert (=> start!42514 m!456449))

(declare-fun m!456451 () Bool)

(assert (=> start!42514 m!456451))

(declare-fun m!456453 () Bool)

(assert (=> start!42514 m!456453))

(declare-fun m!456455 () Bool)

(assert (=> b!474096 m!456455))

(declare-fun m!456457 () Bool)

(assert (=> mapNonEmpty!21799 m!456457))

(declare-fun m!456459 () Bool)

(assert (=> b!474090 m!456459))

(check-sat (not b!474090) (not mapNonEmpty!21799) tp_is_empty!13389 (not b!474095) (not start!42514) (not b!474096) (not b_next!11961) b_and!20447 (not b!474092))
(check-sat b_and!20447 (not b_next!11961))
