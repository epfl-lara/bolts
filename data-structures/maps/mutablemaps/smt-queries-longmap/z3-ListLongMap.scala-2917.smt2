; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41668 () Bool)

(assert start!41668)

(declare-fun b_free!11313 () Bool)

(declare-fun b_next!11313 () Bool)

(assert (=> start!41668 (= b_free!11313 (not b_next!11313))))

(declare-fun tp!39940 () Bool)

(declare-fun b_and!19679 () Bool)

(assert (=> start!41668 (= tp!39940 b_and!19679)))

(declare-fun b!465023 () Bool)

(declare-fun e!271742 () Bool)

(declare-fun tp_is_empty!12741 () Bool)

(assert (=> b!465023 (= e!271742 tp_is_empty!12741)))

(declare-fun b!465024 () Bool)

(declare-fun res!278058 () Bool)

(declare-fun e!271744 () Bool)

(assert (=> b!465024 (=> (not res!278058) (not e!271744))))

(declare-datatypes ((array!29221 0))(
  ( (array!29222 (arr!14038 (Array (_ BitVec 32) (_ BitVec 64))) (size!14390 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29221)

(declare-datatypes ((List!8510 0))(
  ( (Nil!8507) (Cons!8506 (h!9362 (_ BitVec 64)) (t!14466 List!8510)) )
))
(declare-fun arrayNoDuplicates!0 (array!29221 (_ BitVec 32) List!8510) Bool)

(assert (=> b!465024 (= res!278058 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8507))))

(declare-fun b!465025 () Bool)

(declare-fun res!278055 () Bool)

(assert (=> b!465025 (=> (not res!278055) (not e!271744))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((V!18093 0))(
  ( (V!18094 (val!6415 Int)) )
))
(declare-datatypes ((ValueCell!6027 0))(
  ( (ValueCellFull!6027 (v!8698 V!18093)) (EmptyCell!6027) )
))
(declare-datatypes ((array!29223 0))(
  ( (array!29224 (arr!14039 (Array (_ BitVec 32) ValueCell!6027)) (size!14391 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29223)

(assert (=> b!465025 (= res!278055 (and (= (size!14391 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14390 _keys!1025) (size!14391 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!465026 () Bool)

(declare-fun res!278057 () Bool)

(assert (=> b!465026 (=> (not res!278057) (not e!271744))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29221 (_ BitVec 32)) Bool)

(assert (=> b!465026 (= res!278057 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!465027 () Bool)

(declare-fun e!271741 () Bool)

(assert (=> b!465027 (= e!271741 tp_is_empty!12741)))

(declare-fun res!278056 () Bool)

(assert (=> start!41668 (=> (not res!278056) (not e!271744))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41668 (= res!278056 (validMask!0 mask!1365))))

(assert (=> start!41668 e!271744))

(assert (=> start!41668 tp_is_empty!12741))

(assert (=> start!41668 tp!39940))

(assert (=> start!41668 true))

(declare-fun array_inv!10122 (array!29221) Bool)

(assert (=> start!41668 (array_inv!10122 _keys!1025)))

(declare-fun e!271745 () Bool)

(declare-fun array_inv!10123 (array!29223) Bool)

(assert (=> start!41668 (and (array_inv!10123 _values!833) e!271745)))

(declare-fun b!465028 () Bool)

(assert (=> b!465028 (= e!271744 (not true))))

(declare-datatypes ((tuple2!8386 0))(
  ( (tuple2!8387 (_1!4203 (_ BitVec 64)) (_2!4203 V!18093)) )
))
(declare-datatypes ((List!8511 0))(
  ( (Nil!8508) (Cons!8507 (h!9363 tuple2!8386) (t!14467 List!8511)) )
))
(declare-datatypes ((ListLongMap!7313 0))(
  ( (ListLongMap!7314 (toList!3672 List!8511)) )
))
(declare-fun lt!210016 () ListLongMap!7313)

(declare-fun lt!210015 () ListLongMap!7313)

(assert (=> b!465028 (= lt!210016 lt!210015)))

(declare-fun minValueBefore!38 () V!18093)

(declare-fun zeroValue!794 () V!18093)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13465 0))(
  ( (Unit!13466) )
))
(declare-fun lt!210014 () Unit!13465)

(declare-fun minValueAfter!38 () V!18093)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!35 (array!29221 array!29223 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18093 V!18093 V!18093 V!18093 (_ BitVec 32) Int) Unit!13465)

(assert (=> b!465028 (= lt!210014 (lemmaNoChangeToArrayThenSameMapNoExtras!35 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1840 (array!29221 array!29223 (_ BitVec 32) (_ BitVec 32) V!18093 V!18093 (_ BitVec 32) Int) ListLongMap!7313)

(assert (=> b!465028 (= lt!210015 (getCurrentListMapNoExtraKeys!1840 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!465028 (= lt!210016 (getCurrentListMapNoExtraKeys!1840 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapNonEmpty!20791 () Bool)

(declare-fun mapRes!20791 () Bool)

(declare-fun tp!39939 () Bool)

(assert (=> mapNonEmpty!20791 (= mapRes!20791 (and tp!39939 e!271742))))

(declare-fun mapValue!20791 () ValueCell!6027)

(declare-fun mapKey!20791 () (_ BitVec 32))

(declare-fun mapRest!20791 () (Array (_ BitVec 32) ValueCell!6027))

(assert (=> mapNonEmpty!20791 (= (arr!14039 _values!833) (store mapRest!20791 mapKey!20791 mapValue!20791))))

(declare-fun b!465029 () Bool)

(assert (=> b!465029 (= e!271745 (and e!271741 mapRes!20791))))

(declare-fun condMapEmpty!20791 () Bool)

(declare-fun mapDefault!20791 () ValueCell!6027)

(assert (=> b!465029 (= condMapEmpty!20791 (= (arr!14039 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6027)) mapDefault!20791)))))

(declare-fun mapIsEmpty!20791 () Bool)

(assert (=> mapIsEmpty!20791 mapRes!20791))

(assert (= (and start!41668 res!278056) b!465025))

(assert (= (and b!465025 res!278055) b!465026))

(assert (= (and b!465026 res!278057) b!465024))

(assert (= (and b!465024 res!278058) b!465028))

(assert (= (and b!465029 condMapEmpty!20791) mapIsEmpty!20791))

(assert (= (and b!465029 (not condMapEmpty!20791)) mapNonEmpty!20791))

(get-info :version)

(assert (= (and mapNonEmpty!20791 ((_ is ValueCellFull!6027) mapValue!20791)) b!465023))

(assert (= (and b!465029 ((_ is ValueCellFull!6027) mapDefault!20791)) b!465027))

(assert (= start!41668 b!465029))

(declare-fun m!447325 () Bool)

(assert (=> mapNonEmpty!20791 m!447325))

(declare-fun m!447327 () Bool)

(assert (=> b!465024 m!447327))

(declare-fun m!447329 () Bool)

(assert (=> b!465028 m!447329))

(declare-fun m!447331 () Bool)

(assert (=> b!465028 m!447331))

(declare-fun m!447333 () Bool)

(assert (=> b!465028 m!447333))

(declare-fun m!447335 () Bool)

(assert (=> start!41668 m!447335))

(declare-fun m!447337 () Bool)

(assert (=> start!41668 m!447337))

(declare-fun m!447339 () Bool)

(assert (=> start!41668 m!447339))

(declare-fun m!447341 () Bool)

(assert (=> b!465026 m!447341))

(check-sat (not mapNonEmpty!20791) tp_is_empty!12741 (not b!465024) b_and!19679 (not b!465028) (not b!465026) (not start!41668) (not b_next!11313))
(check-sat b_and!19679 (not b_next!11313))
