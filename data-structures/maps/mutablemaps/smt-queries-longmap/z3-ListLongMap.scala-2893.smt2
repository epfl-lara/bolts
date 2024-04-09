; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41510 () Bool)

(assert start!41510)

(declare-fun b_free!11169 () Bool)

(declare-fun b_next!11169 () Bool)

(assert (=> start!41510 (= b_free!11169 (not b_next!11169))))

(declare-fun tp!39504 () Bool)

(declare-fun b_and!19527 () Bool)

(assert (=> start!41510 (= tp!39504 b_and!19527)))

(declare-fun b!463426 () Bool)

(declare-fun res!277161 () Bool)

(declare-fun e!270606 () Bool)

(assert (=> b!463426 (=> (not res!277161) (not e!270606))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!28953 0))(
  ( (array!28954 (arr!13905 (Array (_ BitVec 32) (_ BitVec 64))) (size!14257 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28953)

(declare-datatypes ((V!17901 0))(
  ( (V!17902 (val!6343 Int)) )
))
(declare-datatypes ((ValueCell!5955 0))(
  ( (ValueCellFull!5955 (v!8626 V!17901)) (EmptyCell!5955) )
))
(declare-datatypes ((array!28955 0))(
  ( (array!28956 (arr!13906 (Array (_ BitVec 32) ValueCell!5955)) (size!14258 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28955)

(assert (=> b!463426 (= res!277161 (and (= (size!14258 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14257 _keys!1025) (size!14258 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!20572 () Bool)

(declare-fun mapRes!20572 () Bool)

(assert (=> mapIsEmpty!20572 mapRes!20572))

(declare-fun b!463427 () Bool)

(declare-fun e!270609 () Bool)

(declare-fun tp_is_empty!12597 () Bool)

(assert (=> b!463427 (= e!270609 tp_is_empty!12597)))

(declare-fun b!463429 () Bool)

(assert (=> b!463429 (= e!270606 false)))

(declare-fun zeroValue!794 () V!17901)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((tuple2!8284 0))(
  ( (tuple2!8285 (_1!4152 (_ BitVec 64)) (_2!4152 V!17901)) )
))
(declare-datatypes ((List!8410 0))(
  ( (Nil!8407) (Cons!8406 (h!9262 tuple2!8284) (t!14364 List!8410)) )
))
(declare-datatypes ((ListLongMap!7211 0))(
  ( (ListLongMap!7212 (toList!3621 List!8410)) )
))
(declare-fun lt!209394 () ListLongMap!7211)

(declare-fun minValueAfter!38 () V!17901)

(declare-fun getCurrentListMapNoExtraKeys!1789 (array!28953 array!28955 (_ BitVec 32) (_ BitVec 32) V!17901 V!17901 (_ BitVec 32) Int) ListLongMap!7211)

(assert (=> b!463429 (= lt!209394 (getCurrentListMapNoExtraKeys!1789 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun minValueBefore!38 () V!17901)

(declare-fun lt!209393 () ListLongMap!7211)

(assert (=> b!463429 (= lt!209393 (getCurrentListMapNoExtraKeys!1789 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!463430 () Bool)

(declare-fun res!277160 () Bool)

(assert (=> b!463430 (=> (not res!277160) (not e!270606))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28953 (_ BitVec 32)) Bool)

(assert (=> b!463430 (= res!277160 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!463431 () Bool)

(declare-fun e!270608 () Bool)

(assert (=> b!463431 (= e!270608 tp_is_empty!12597)))

(declare-fun mapNonEmpty!20572 () Bool)

(declare-fun tp!39505 () Bool)

(assert (=> mapNonEmpty!20572 (= mapRes!20572 (and tp!39505 e!270608))))

(declare-fun mapRest!20572 () (Array (_ BitVec 32) ValueCell!5955))

(declare-fun mapKey!20572 () (_ BitVec 32))

(declare-fun mapValue!20572 () ValueCell!5955)

(assert (=> mapNonEmpty!20572 (= (arr!13906 _values!833) (store mapRest!20572 mapKey!20572 mapValue!20572))))

(declare-fun b!463432 () Bool)

(declare-fun res!277163 () Bool)

(assert (=> b!463432 (=> (not res!277163) (not e!270606))))

(declare-datatypes ((List!8411 0))(
  ( (Nil!8408) (Cons!8407 (h!9263 (_ BitVec 64)) (t!14365 List!8411)) )
))
(declare-fun arrayNoDuplicates!0 (array!28953 (_ BitVec 32) List!8411) Bool)

(assert (=> b!463432 (= res!277163 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8408))))

(declare-fun b!463428 () Bool)

(declare-fun e!270610 () Bool)

(assert (=> b!463428 (= e!270610 (and e!270609 mapRes!20572))))

(declare-fun condMapEmpty!20572 () Bool)

(declare-fun mapDefault!20572 () ValueCell!5955)

(assert (=> b!463428 (= condMapEmpty!20572 (= (arr!13906 _values!833) ((as const (Array (_ BitVec 32) ValueCell!5955)) mapDefault!20572)))))

(declare-fun res!277162 () Bool)

(assert (=> start!41510 (=> (not res!277162) (not e!270606))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41510 (= res!277162 (validMask!0 mask!1365))))

(assert (=> start!41510 e!270606))

(assert (=> start!41510 tp_is_empty!12597))

(assert (=> start!41510 tp!39504))

(assert (=> start!41510 true))

(declare-fun array_inv!10030 (array!28953) Bool)

(assert (=> start!41510 (array_inv!10030 _keys!1025)))

(declare-fun array_inv!10031 (array!28955) Bool)

(assert (=> start!41510 (and (array_inv!10031 _values!833) e!270610)))

(assert (= (and start!41510 res!277162) b!463426))

(assert (= (and b!463426 res!277161) b!463430))

(assert (= (and b!463430 res!277160) b!463432))

(assert (= (and b!463432 res!277163) b!463429))

(assert (= (and b!463428 condMapEmpty!20572) mapIsEmpty!20572))

(assert (= (and b!463428 (not condMapEmpty!20572)) mapNonEmpty!20572))

(get-info :version)

(assert (= (and mapNonEmpty!20572 ((_ is ValueCellFull!5955) mapValue!20572)) b!463431))

(assert (= (and b!463428 ((_ is ValueCellFull!5955) mapDefault!20572)) b!463427))

(assert (= start!41510 b!463428))

(declare-fun m!446009 () Bool)

(assert (=> b!463430 m!446009))

(declare-fun m!446011 () Bool)

(assert (=> b!463429 m!446011))

(declare-fun m!446013 () Bool)

(assert (=> b!463429 m!446013))

(declare-fun m!446015 () Bool)

(assert (=> start!41510 m!446015))

(declare-fun m!446017 () Bool)

(assert (=> start!41510 m!446017))

(declare-fun m!446019 () Bool)

(assert (=> start!41510 m!446019))

(declare-fun m!446021 () Bool)

(assert (=> mapNonEmpty!20572 m!446021))

(declare-fun m!446023 () Bool)

(assert (=> b!463432 m!446023))

(check-sat b_and!19527 (not b!463430) (not start!41510) (not mapNonEmpty!20572) (not b!463429) (not b!463432) (not b_next!11169) tp_is_empty!12597)
(check-sat b_and!19527 (not b_next!11169))
