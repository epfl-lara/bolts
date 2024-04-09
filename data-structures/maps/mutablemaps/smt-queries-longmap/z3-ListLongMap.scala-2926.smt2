; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41736 () Bool)

(assert start!41736)

(declare-fun b_free!11367 () Bool)

(declare-fun b_next!11367 () Bool)

(assert (=> start!41736 (= b_free!11367 (not b_next!11367))))

(declare-fun tp!40104 () Bool)

(declare-fun b_and!19741 () Bool)

(assert (=> start!41736 (= tp!40104 b_and!19741)))

(declare-fun res!278480 () Bool)

(declare-fun e!272271 () Bool)

(assert (=> start!41736 (=> (not res!278480) (not e!272271))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41736 (= res!278480 (validMask!0 mask!1365))))

(assert (=> start!41736 e!272271))

(declare-fun tp_is_empty!12795 () Bool)

(assert (=> start!41736 tp_is_empty!12795))

(assert (=> start!41736 tp!40104))

(assert (=> start!41736 true))

(declare-datatypes ((array!29327 0))(
  ( (array!29328 (arr!14090 (Array (_ BitVec 32) (_ BitVec 64))) (size!14442 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29327)

(declare-fun array_inv!10158 (array!29327) Bool)

(assert (=> start!41736 (array_inv!10158 _keys!1025)))

(declare-datatypes ((V!18165 0))(
  ( (V!18166 (val!6442 Int)) )
))
(declare-datatypes ((ValueCell!6054 0))(
  ( (ValueCellFull!6054 (v!8725 V!18165)) (EmptyCell!6054) )
))
(declare-datatypes ((array!29329 0))(
  ( (array!29330 (arr!14091 (Array (_ BitVec 32) ValueCell!6054)) (size!14443 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29329)

(declare-fun e!272269 () Bool)

(declare-fun array_inv!10159 (array!29329) Bool)

(assert (=> start!41736 (and (array_inv!10159 _values!833) e!272269)))

(declare-fun b!465743 () Bool)

(declare-fun e!272272 () Bool)

(assert (=> b!465743 (= e!272272 true)))

(declare-fun zeroValue!794 () V!18165)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((tuple2!8424 0))(
  ( (tuple2!8425 (_1!4222 (_ BitVec 64)) (_2!4222 V!18165)) )
))
(declare-datatypes ((List!8546 0))(
  ( (Nil!8543) (Cons!8542 (h!9398 tuple2!8424) (t!14504 List!8546)) )
))
(declare-datatypes ((ListLongMap!7351 0))(
  ( (ListLongMap!7352 (toList!3691 List!8546)) )
))
(declare-fun lt!210436 () ListLongMap!7351)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun minValueAfter!38 () V!18165)

(declare-fun getCurrentListMap!2135 (array!29327 array!29329 (_ BitVec 32) (_ BitVec 32) V!18165 V!18165 (_ BitVec 32) Int) ListLongMap!7351)

(assert (=> b!465743 (= lt!210436 (getCurrentListMap!2135 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun minValueBefore!38 () V!18165)

(declare-fun lt!210435 () ListLongMap!7351)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun +!1626 (ListLongMap!7351 tuple2!8424) ListLongMap!7351)

(assert (=> b!465743 (= lt!210435 (+!1626 (getCurrentListMap!2135 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) (tuple2!8425 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)))))

(declare-fun b!465744 () Bool)

(declare-fun e!272273 () Bool)

(assert (=> b!465744 (= e!272273 tp_is_empty!12795)))

(declare-fun b!465745 () Bool)

(declare-fun e!272270 () Bool)

(assert (=> b!465745 (= e!272270 tp_is_empty!12795)))

(declare-fun b!465746 () Bool)

(declare-fun res!278482 () Bool)

(assert (=> b!465746 (=> (not res!278482) (not e!272271))))

(assert (=> b!465746 (= res!278482 (and (= (size!14443 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14442 _keys!1025) (size!14443 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!465747 () Bool)

(assert (=> b!465747 (= e!272271 (not e!272272))))

(declare-fun res!278481 () Bool)

(assert (=> b!465747 (=> res!278481 e!272272)))

(assert (=> b!465747 (= res!278481 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!210433 () ListLongMap!7351)

(declare-fun lt!210434 () ListLongMap!7351)

(assert (=> b!465747 (= lt!210433 lt!210434)))

(declare-datatypes ((Unit!13501 0))(
  ( (Unit!13502) )
))
(declare-fun lt!210437 () Unit!13501)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!53 (array!29327 array!29329 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18165 V!18165 V!18165 V!18165 (_ BitVec 32) Int) Unit!13501)

(assert (=> b!465747 (= lt!210437 (lemmaNoChangeToArrayThenSameMapNoExtras!53 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1858 (array!29327 array!29329 (_ BitVec 32) (_ BitVec 32) V!18165 V!18165 (_ BitVec 32) Int) ListLongMap!7351)

(assert (=> b!465747 (= lt!210434 (getCurrentListMapNoExtraKeys!1858 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!465747 (= lt!210433 (getCurrentListMapNoExtraKeys!1858 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapNonEmpty!20875 () Bool)

(declare-fun mapRes!20875 () Bool)

(declare-fun tp!40105 () Bool)

(assert (=> mapNonEmpty!20875 (= mapRes!20875 (and tp!40105 e!272270))))

(declare-fun mapKey!20875 () (_ BitVec 32))

(declare-fun mapRest!20875 () (Array (_ BitVec 32) ValueCell!6054))

(declare-fun mapValue!20875 () ValueCell!6054)

(assert (=> mapNonEmpty!20875 (= (arr!14091 _values!833) (store mapRest!20875 mapKey!20875 mapValue!20875))))

(declare-fun mapIsEmpty!20875 () Bool)

(assert (=> mapIsEmpty!20875 mapRes!20875))

(declare-fun b!465748 () Bool)

(declare-fun res!278478 () Bool)

(assert (=> b!465748 (=> (not res!278478) (not e!272271))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29327 (_ BitVec 32)) Bool)

(assert (=> b!465748 (= res!278478 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!465749 () Bool)

(assert (=> b!465749 (= e!272269 (and e!272273 mapRes!20875))))

(declare-fun condMapEmpty!20875 () Bool)

(declare-fun mapDefault!20875 () ValueCell!6054)

(assert (=> b!465749 (= condMapEmpty!20875 (= (arr!14091 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6054)) mapDefault!20875)))))

(declare-fun b!465750 () Bool)

(declare-fun res!278479 () Bool)

(assert (=> b!465750 (=> (not res!278479) (not e!272271))))

(declare-datatypes ((List!8547 0))(
  ( (Nil!8544) (Cons!8543 (h!9399 (_ BitVec 64)) (t!14505 List!8547)) )
))
(declare-fun arrayNoDuplicates!0 (array!29327 (_ BitVec 32) List!8547) Bool)

(assert (=> b!465750 (= res!278479 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8544))))

(assert (= (and start!41736 res!278480) b!465746))

(assert (= (and b!465746 res!278482) b!465748))

(assert (= (and b!465748 res!278478) b!465750))

(assert (= (and b!465750 res!278479) b!465747))

(assert (= (and b!465747 (not res!278481)) b!465743))

(assert (= (and b!465749 condMapEmpty!20875) mapIsEmpty!20875))

(assert (= (and b!465749 (not condMapEmpty!20875)) mapNonEmpty!20875))

(get-info :version)

(assert (= (and mapNonEmpty!20875 ((_ is ValueCellFull!6054) mapValue!20875)) b!465745))

(assert (= (and b!465749 ((_ is ValueCellFull!6054) mapDefault!20875)) b!465744))

(assert (= start!41736 b!465749))

(declare-fun m!448009 () Bool)

(assert (=> start!41736 m!448009))

(declare-fun m!448011 () Bool)

(assert (=> start!41736 m!448011))

(declare-fun m!448013 () Bool)

(assert (=> start!41736 m!448013))

(declare-fun m!448015 () Bool)

(assert (=> b!465748 m!448015))

(declare-fun m!448017 () Bool)

(assert (=> b!465750 m!448017))

(declare-fun m!448019 () Bool)

(assert (=> b!465743 m!448019))

(declare-fun m!448021 () Bool)

(assert (=> b!465743 m!448021))

(assert (=> b!465743 m!448021))

(declare-fun m!448023 () Bool)

(assert (=> b!465743 m!448023))

(declare-fun m!448025 () Bool)

(assert (=> mapNonEmpty!20875 m!448025))

(declare-fun m!448027 () Bool)

(assert (=> b!465747 m!448027))

(declare-fun m!448029 () Bool)

(assert (=> b!465747 m!448029))

(declare-fun m!448031 () Bool)

(assert (=> b!465747 m!448031))

(check-sat b_and!19741 (not mapNonEmpty!20875) (not b!465743) (not b!465748) (not b!465747) (not b_next!11367) tp_is_empty!12795 (not b!465750) (not start!41736))
(check-sat b_and!19741 (not b_next!11367))
