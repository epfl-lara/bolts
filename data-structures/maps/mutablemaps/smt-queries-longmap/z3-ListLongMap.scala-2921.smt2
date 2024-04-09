; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41706 () Bool)

(assert start!41706)

(declare-fun b_free!11337 () Bool)

(declare-fun b_next!11337 () Bool)

(assert (=> start!41706 (= b_free!11337 (not b_next!11337))))

(declare-fun tp!40015 () Bool)

(declare-fun b_and!19711 () Bool)

(assert (=> start!41706 (= tp!40015 b_and!19711)))

(declare-fun b!465383 () Bool)

(declare-fun res!278256 () Bool)

(declare-fun e!272003 () Bool)

(assert (=> b!465383 (=> (not res!278256) (not e!272003))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29269 0))(
  ( (array!29270 (arr!14061 (Array (_ BitVec 32) (_ BitVec 64))) (size!14413 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29269)

(declare-datatypes ((V!18125 0))(
  ( (V!18126 (val!6427 Int)) )
))
(declare-datatypes ((ValueCell!6039 0))(
  ( (ValueCellFull!6039 (v!8710 V!18125)) (EmptyCell!6039) )
))
(declare-datatypes ((array!29271 0))(
  ( (array!29272 (arr!14062 (Array (_ BitVec 32) ValueCell!6039)) (size!14414 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29271)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!465383 (= res!278256 (and (= (size!14414 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14413 _keys!1025) (size!14414 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!465384 () Bool)

(declare-fun e!272002 () Bool)

(assert (=> b!465384 (= e!272003 (not e!272002))))

(declare-fun res!278255 () Bool)

(assert (=> b!465384 (=> res!278255 e!272002)))

(assert (=> b!465384 (= res!278255 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!8402 0))(
  ( (tuple2!8403 (_1!4211 (_ BitVec 64)) (_2!4211 V!18125)) )
))
(declare-datatypes ((List!8526 0))(
  ( (Nil!8523) (Cons!8522 (h!9378 tuple2!8402) (t!14484 List!8526)) )
))
(declare-datatypes ((ListLongMap!7329 0))(
  ( (ListLongMap!7330 (toList!3680 List!8526)) )
))
(declare-fun lt!210210 () ListLongMap!7329)

(declare-fun lt!210209 () ListLongMap!7329)

(assert (=> b!465384 (= lt!210210 lt!210209)))

(declare-fun minValueBefore!38 () V!18125)

(declare-fun defaultEntry!841 () Int)

(declare-fun zeroValue!794 () V!18125)

(declare-datatypes ((Unit!13481 0))(
  ( (Unit!13482) )
))
(declare-fun lt!210208 () Unit!13481)

(declare-fun minValueAfter!38 () V!18125)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!43 (array!29269 array!29271 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18125 V!18125 V!18125 V!18125 (_ BitVec 32) Int) Unit!13481)

(assert (=> b!465384 (= lt!210208 (lemmaNoChangeToArrayThenSameMapNoExtras!43 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1848 (array!29269 array!29271 (_ BitVec 32) (_ BitVec 32) V!18125 V!18125 (_ BitVec 32) Int) ListLongMap!7329)

(assert (=> b!465384 (= lt!210209 (getCurrentListMapNoExtraKeys!1848 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!465384 (= lt!210210 (getCurrentListMapNoExtraKeys!1848 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!465385 () Bool)

(declare-fun res!278253 () Bool)

(assert (=> b!465385 (=> (not res!278253) (not e!272003))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29269 (_ BitVec 32)) Bool)

(assert (=> b!465385 (= res!278253 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapIsEmpty!20830 () Bool)

(declare-fun mapRes!20830 () Bool)

(assert (=> mapIsEmpty!20830 mapRes!20830))

(declare-fun b!465386 () Bool)

(declare-fun e!272004 () Bool)

(declare-fun e!272000 () Bool)

(assert (=> b!465386 (= e!272004 (and e!272000 mapRes!20830))))

(declare-fun condMapEmpty!20830 () Bool)

(declare-fun mapDefault!20830 () ValueCell!6039)

(assert (=> b!465386 (= condMapEmpty!20830 (= (arr!14062 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6039)) mapDefault!20830)))))

(declare-fun b!465387 () Bool)

(declare-fun e!271999 () Bool)

(declare-fun tp_is_empty!12765 () Bool)

(assert (=> b!465387 (= e!271999 tp_is_empty!12765)))

(declare-fun b!465388 () Bool)

(assert (=> b!465388 (= e!272002 true)))

(declare-fun lt!210212 () ListLongMap!7329)

(declare-fun getCurrentListMap!2126 (array!29269 array!29271 (_ BitVec 32) (_ BitVec 32) V!18125 V!18125 (_ BitVec 32) Int) ListLongMap!7329)

(assert (=> b!465388 (= lt!210212 (getCurrentListMap!2126 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!210211 () ListLongMap!7329)

(declare-fun +!1617 (ListLongMap!7329 tuple2!8402) ListLongMap!7329)

(assert (=> b!465388 (= lt!210211 (+!1617 (getCurrentListMap!2126 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) (tuple2!8403 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)))))

(declare-fun mapNonEmpty!20830 () Bool)

(declare-fun tp!40014 () Bool)

(assert (=> mapNonEmpty!20830 (= mapRes!20830 (and tp!40014 e!271999))))

(declare-fun mapValue!20830 () ValueCell!6039)

(declare-fun mapKey!20830 () (_ BitVec 32))

(declare-fun mapRest!20830 () (Array (_ BitVec 32) ValueCell!6039))

(assert (=> mapNonEmpty!20830 (= (arr!14062 _values!833) (store mapRest!20830 mapKey!20830 mapValue!20830))))

(declare-fun res!278257 () Bool)

(assert (=> start!41706 (=> (not res!278257) (not e!272003))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41706 (= res!278257 (validMask!0 mask!1365))))

(assert (=> start!41706 e!272003))

(assert (=> start!41706 tp_is_empty!12765))

(assert (=> start!41706 tp!40015))

(assert (=> start!41706 true))

(declare-fun array_inv!10136 (array!29269) Bool)

(assert (=> start!41706 (array_inv!10136 _keys!1025)))

(declare-fun array_inv!10137 (array!29271) Bool)

(assert (=> start!41706 (and (array_inv!10137 _values!833) e!272004)))

(declare-fun b!465389 () Bool)

(declare-fun res!278254 () Bool)

(assert (=> b!465389 (=> (not res!278254) (not e!272003))))

(declare-datatypes ((List!8527 0))(
  ( (Nil!8524) (Cons!8523 (h!9379 (_ BitVec 64)) (t!14485 List!8527)) )
))
(declare-fun arrayNoDuplicates!0 (array!29269 (_ BitVec 32) List!8527) Bool)

(assert (=> b!465389 (= res!278254 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8524))))

(declare-fun b!465390 () Bool)

(assert (=> b!465390 (= e!272000 tp_is_empty!12765)))

(assert (= (and start!41706 res!278257) b!465383))

(assert (= (and b!465383 res!278256) b!465385))

(assert (= (and b!465385 res!278253) b!465389))

(assert (= (and b!465389 res!278254) b!465384))

(assert (= (and b!465384 (not res!278255)) b!465388))

(assert (= (and b!465386 condMapEmpty!20830) mapIsEmpty!20830))

(assert (= (and b!465386 (not condMapEmpty!20830)) mapNonEmpty!20830))

(get-info :version)

(assert (= (and mapNonEmpty!20830 ((_ is ValueCellFull!6039) mapValue!20830)) b!465387))

(assert (= (and b!465386 ((_ is ValueCellFull!6039) mapDefault!20830)) b!465390))

(assert (= start!41706 b!465386))

(declare-fun m!447649 () Bool)

(assert (=> start!41706 m!447649))

(declare-fun m!447651 () Bool)

(assert (=> start!41706 m!447651))

(declare-fun m!447653 () Bool)

(assert (=> start!41706 m!447653))

(declare-fun m!447655 () Bool)

(assert (=> b!465384 m!447655))

(declare-fun m!447657 () Bool)

(assert (=> b!465384 m!447657))

(declare-fun m!447659 () Bool)

(assert (=> b!465384 m!447659))

(declare-fun m!447661 () Bool)

(assert (=> b!465388 m!447661))

(declare-fun m!447663 () Bool)

(assert (=> b!465388 m!447663))

(assert (=> b!465388 m!447663))

(declare-fun m!447665 () Bool)

(assert (=> b!465388 m!447665))

(declare-fun m!447667 () Bool)

(assert (=> b!465385 m!447667))

(declare-fun m!447669 () Bool)

(assert (=> b!465389 m!447669))

(declare-fun m!447671 () Bool)

(assert (=> mapNonEmpty!20830 m!447671))

(check-sat (not mapNonEmpty!20830) (not b!465384) (not b!465389) (not b_next!11337) (not b!465385) b_and!19711 (not b!465388) (not start!41706) tp_is_empty!12765)
(check-sat b_and!19711 (not b_next!11337))
