; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42056 () Bool)

(assert start!42056)

(declare-fun b_free!11601 () Bool)

(declare-fun b_next!11601 () Bool)

(assert (=> start!42056 (= b_free!11601 (not b_next!11601))))

(declare-fun tp!40821 () Bool)

(declare-fun b_and!20029 () Bool)

(assert (=> start!42056 (= tp!40821 b_and!20029)))

(declare-fun mapIsEmpty!21241 () Bool)

(declare-fun mapRes!21241 () Bool)

(assert (=> mapIsEmpty!21241 mapRes!21241))

(declare-fun b!469250 () Bool)

(declare-fun e!274780 () Bool)

(declare-fun e!274775 () Bool)

(assert (=> b!469250 (= e!274780 (and e!274775 mapRes!21241))))

(declare-fun condMapEmpty!21241 () Bool)

(declare-datatypes ((V!18477 0))(
  ( (V!18478 (val!6559 Int)) )
))
(declare-datatypes ((ValueCell!6171 0))(
  ( (ValueCellFull!6171 (v!8845 V!18477)) (EmptyCell!6171) )
))
(declare-datatypes ((array!29793 0))(
  ( (array!29794 (arr!14318 (Array (_ BitVec 32) ValueCell!6171)) (size!14670 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29793)

(declare-fun mapDefault!21241 () ValueCell!6171)

(assert (=> b!469250 (= condMapEmpty!21241 (= (arr!14318 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6171)) mapDefault!21241)))))

(declare-fun b!469251 () Bool)

(declare-fun e!274776 () Bool)

(declare-fun e!274779 () Bool)

(assert (=> b!469251 (= e!274776 (not e!274779))))

(declare-fun res!280483 () Bool)

(assert (=> b!469251 (=> res!280483 e!274779)))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!469251 (= res!280483 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!8608 0))(
  ( (tuple2!8609 (_1!4314 (_ BitVec 64)) (_2!4314 V!18477)) )
))
(declare-datatypes ((List!8726 0))(
  ( (Nil!8723) (Cons!8722 (h!9578 tuple2!8608) (t!14694 List!8726)) )
))
(declare-datatypes ((ListLongMap!7535 0))(
  ( (ListLongMap!7536 (toList!3783 List!8726)) )
))
(declare-fun lt!212681 () ListLongMap!7535)

(declare-fun lt!212682 () ListLongMap!7535)

(assert (=> b!469251 (= lt!212681 lt!212682)))

(declare-fun minValueBefore!38 () V!18477)

(declare-fun zeroValue!794 () V!18477)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13690 0))(
  ( (Unit!13691) )
))
(declare-fun lt!212679 () Unit!13690)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29795 0))(
  ( (array!29796 (arr!14319 (Array (_ BitVec 32) (_ BitVec 64))) (size!14671 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29795)

(declare-fun minValueAfter!38 () V!18477)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!142 (array!29795 array!29793 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18477 V!18477 V!18477 V!18477 (_ BitVec 32) Int) Unit!13690)

(assert (=> b!469251 (= lt!212679 (lemmaNoChangeToArrayThenSameMapNoExtras!142 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1947 (array!29795 array!29793 (_ BitVec 32) (_ BitVec 32) V!18477 V!18477 (_ BitVec 32) Int) ListLongMap!7535)

(assert (=> b!469251 (= lt!212682 (getCurrentListMapNoExtraKeys!1947 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!469251 (= lt!212681 (getCurrentListMapNoExtraKeys!1947 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!469252 () Bool)

(declare-fun res!280486 () Bool)

(assert (=> b!469252 (=> (not res!280486) (not e!274776))))

(declare-datatypes ((List!8727 0))(
  ( (Nil!8724) (Cons!8723 (h!9579 (_ BitVec 64)) (t!14695 List!8727)) )
))
(declare-fun arrayNoDuplicates!0 (array!29795 (_ BitVec 32) List!8727) Bool)

(assert (=> b!469252 (= res!280486 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8724))))

(declare-fun b!469253 () Bool)

(assert (=> b!469253 (= e!274779 true)))

(declare-fun lt!212678 () tuple2!8608)

(declare-fun +!1671 (ListLongMap!7535 tuple2!8608) ListLongMap!7535)

(assert (=> b!469253 (= (+!1671 lt!212681 lt!212678) (+!1671 (+!1671 lt!212681 (tuple2!8609 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!212678))))

(assert (=> b!469253 (= lt!212678 (tuple2!8609 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))

(declare-fun lt!212680 () Unit!13690)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!112 (ListLongMap!7535 (_ BitVec 64) V!18477 V!18477) Unit!13690)

(assert (=> b!469253 (= lt!212680 (addSameAsAddTwiceSameKeyDiffValues!112 lt!212681 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(declare-fun lt!212677 () ListLongMap!7535)

(declare-fun getCurrentListMap!2193 (array!29795 array!29793 (_ BitVec 32) (_ BitVec 32) V!18477 V!18477 (_ BitVec 32) Int) ListLongMap!7535)

(assert (=> b!469253 (= lt!212677 (getCurrentListMap!2193 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!212676 () ListLongMap!7535)

(assert (=> b!469253 (= lt!212676 (getCurrentListMap!2193 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!469254 () Bool)

(declare-fun res!280484 () Bool)

(assert (=> b!469254 (=> (not res!280484) (not e!274776))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29795 (_ BitVec 32)) Bool)

(assert (=> b!469254 (= res!280484 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!469255 () Bool)

(declare-fun e!274778 () Bool)

(declare-fun tp_is_empty!13029 () Bool)

(assert (=> b!469255 (= e!274778 tp_is_empty!13029)))

(declare-fun b!469256 () Bool)

(assert (=> b!469256 (= e!274775 tp_is_empty!13029)))

(declare-fun b!469257 () Bool)

(declare-fun res!280485 () Bool)

(assert (=> b!469257 (=> (not res!280485) (not e!274776))))

(assert (=> b!469257 (= res!280485 (and (= (size!14670 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14671 _keys!1025) (size!14670 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!21241 () Bool)

(declare-fun tp!40822 () Bool)

(assert (=> mapNonEmpty!21241 (= mapRes!21241 (and tp!40822 e!274778))))

(declare-fun mapRest!21241 () (Array (_ BitVec 32) ValueCell!6171))

(declare-fun mapValue!21241 () ValueCell!6171)

(declare-fun mapKey!21241 () (_ BitVec 32))

(assert (=> mapNonEmpty!21241 (= (arr!14318 _values!833) (store mapRest!21241 mapKey!21241 mapValue!21241))))

(declare-fun res!280482 () Bool)

(assert (=> start!42056 (=> (not res!280482) (not e!274776))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42056 (= res!280482 (validMask!0 mask!1365))))

(assert (=> start!42056 e!274776))

(assert (=> start!42056 tp_is_empty!13029))

(assert (=> start!42056 tp!40821))

(assert (=> start!42056 true))

(declare-fun array_inv!10328 (array!29795) Bool)

(assert (=> start!42056 (array_inv!10328 _keys!1025)))

(declare-fun array_inv!10329 (array!29793) Bool)

(assert (=> start!42056 (and (array_inv!10329 _values!833) e!274780)))

(assert (= (and start!42056 res!280482) b!469257))

(assert (= (and b!469257 res!280485) b!469254))

(assert (= (and b!469254 res!280484) b!469252))

(assert (= (and b!469252 res!280486) b!469251))

(assert (= (and b!469251 (not res!280483)) b!469253))

(assert (= (and b!469250 condMapEmpty!21241) mapIsEmpty!21241))

(assert (= (and b!469250 (not condMapEmpty!21241)) mapNonEmpty!21241))

(get-info :version)

(assert (= (and mapNonEmpty!21241 ((_ is ValueCellFull!6171) mapValue!21241)) b!469255))

(assert (= (and b!469250 ((_ is ValueCellFull!6171) mapDefault!21241)) b!469256))

(assert (= start!42056 b!469250))

(declare-fun m!451451 () Bool)

(assert (=> start!42056 m!451451))

(declare-fun m!451453 () Bool)

(assert (=> start!42056 m!451453))

(declare-fun m!451455 () Bool)

(assert (=> start!42056 m!451455))

(declare-fun m!451457 () Bool)

(assert (=> b!469254 m!451457))

(declare-fun m!451459 () Bool)

(assert (=> mapNonEmpty!21241 m!451459))

(declare-fun m!451461 () Bool)

(assert (=> b!469253 m!451461))

(declare-fun m!451463 () Bool)

(assert (=> b!469253 m!451463))

(declare-fun m!451465 () Bool)

(assert (=> b!469253 m!451465))

(declare-fun m!451467 () Bool)

(assert (=> b!469253 m!451467))

(assert (=> b!469253 m!451465))

(declare-fun m!451469 () Bool)

(assert (=> b!469253 m!451469))

(declare-fun m!451471 () Bool)

(assert (=> b!469253 m!451471))

(declare-fun m!451473 () Bool)

(assert (=> b!469251 m!451473))

(declare-fun m!451475 () Bool)

(assert (=> b!469251 m!451475))

(declare-fun m!451477 () Bool)

(assert (=> b!469251 m!451477))

(declare-fun m!451479 () Bool)

(assert (=> b!469252 m!451479))

(check-sat (not mapNonEmpty!21241) (not b!469254) b_and!20029 (not b!469253) (not b!469252) tp_is_empty!13029 (not start!42056) (not b_next!11601) (not b!469251))
(check-sat b_and!20029 (not b_next!11601))
