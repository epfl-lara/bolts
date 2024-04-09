; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41552 () Bool)

(assert start!41552)

(declare-fun b_free!11211 () Bool)

(declare-fun b_next!11211 () Bool)

(assert (=> start!41552 (= b_free!11211 (not b_next!11211))))

(declare-fun tp!39630 () Bool)

(declare-fun b_and!19569 () Bool)

(assert (=> start!41552 (= tp!39630 b_and!19569)))

(declare-fun b!463867 () Bool)

(declare-fun e!270921 () Bool)

(assert (=> b!463867 (= e!270921 false)))

(declare-datatypes ((V!17957 0))(
  ( (V!17958 (val!6364 Int)) )
))
(declare-datatypes ((tuple2!8316 0))(
  ( (tuple2!8317 (_1!4168 (_ BitVec 64)) (_2!4168 V!17957)) )
))
(declare-datatypes ((List!8443 0))(
  ( (Nil!8440) (Cons!8439 (h!9295 tuple2!8316) (t!14397 List!8443)) )
))
(declare-datatypes ((ListLongMap!7243 0))(
  ( (ListLongMap!7244 (toList!3637 List!8443)) )
))
(declare-fun lt!209520 () ListLongMap!7243)

(declare-fun zeroValue!794 () V!17957)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29033 0))(
  ( (array!29034 (arr!13945 (Array (_ BitVec 32) (_ BitVec 64))) (size!14297 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29033)

(declare-datatypes ((ValueCell!5976 0))(
  ( (ValueCellFull!5976 (v!8647 V!17957)) (EmptyCell!5976) )
))
(declare-datatypes ((array!29035 0))(
  ( (array!29036 (arr!13946 (Array (_ BitVec 32) ValueCell!5976)) (size!14298 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29035)

(declare-fun minValueAfter!38 () V!17957)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1805 (array!29033 array!29035 (_ BitVec 32) (_ BitVec 32) V!17957 V!17957 (_ BitVec 32) Int) ListLongMap!7243)

(assert (=> b!463867 (= lt!209520 (getCurrentListMapNoExtraKeys!1805 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun minValueBefore!38 () V!17957)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun lt!209519 () ListLongMap!7243)

(assert (=> b!463867 (= lt!209519 (getCurrentListMapNoExtraKeys!1805 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapIsEmpty!20635 () Bool)

(declare-fun mapRes!20635 () Bool)

(assert (=> mapIsEmpty!20635 mapRes!20635))

(declare-fun b!463868 () Bool)

(declare-fun e!270924 () Bool)

(declare-fun e!270925 () Bool)

(assert (=> b!463868 (= e!270924 (and e!270925 mapRes!20635))))

(declare-fun condMapEmpty!20635 () Bool)

(declare-fun mapDefault!20635 () ValueCell!5976)

(assert (=> b!463868 (= condMapEmpty!20635 (= (arr!13946 _values!833) ((as const (Array (_ BitVec 32) ValueCell!5976)) mapDefault!20635)))))

(declare-fun b!463869 () Bool)

(declare-fun res!277413 () Bool)

(assert (=> b!463869 (=> (not res!277413) (not e!270921))))

(declare-datatypes ((List!8444 0))(
  ( (Nil!8441) (Cons!8440 (h!9296 (_ BitVec 64)) (t!14398 List!8444)) )
))
(declare-fun arrayNoDuplicates!0 (array!29033 (_ BitVec 32) List!8444) Bool)

(assert (=> b!463869 (= res!277413 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8441))))

(declare-fun mapNonEmpty!20635 () Bool)

(declare-fun tp!39631 () Bool)

(declare-fun e!270923 () Bool)

(assert (=> mapNonEmpty!20635 (= mapRes!20635 (and tp!39631 e!270923))))

(declare-fun mapValue!20635 () ValueCell!5976)

(declare-fun mapRest!20635 () (Array (_ BitVec 32) ValueCell!5976))

(declare-fun mapKey!20635 () (_ BitVec 32))

(assert (=> mapNonEmpty!20635 (= (arr!13946 _values!833) (store mapRest!20635 mapKey!20635 mapValue!20635))))

(declare-fun b!463870 () Bool)

(declare-fun res!277415 () Bool)

(assert (=> b!463870 (=> (not res!277415) (not e!270921))))

(assert (=> b!463870 (= res!277415 (and (= (size!14298 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14297 _keys!1025) (size!14298 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun res!277412 () Bool)

(assert (=> start!41552 (=> (not res!277412) (not e!270921))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41552 (= res!277412 (validMask!0 mask!1365))))

(assert (=> start!41552 e!270921))

(declare-fun tp_is_empty!12639 () Bool)

(assert (=> start!41552 tp_is_empty!12639))

(assert (=> start!41552 tp!39630))

(assert (=> start!41552 true))

(declare-fun array_inv!10056 (array!29033) Bool)

(assert (=> start!41552 (array_inv!10056 _keys!1025)))

(declare-fun array_inv!10057 (array!29035) Bool)

(assert (=> start!41552 (and (array_inv!10057 _values!833) e!270924)))

(declare-fun b!463871 () Bool)

(assert (=> b!463871 (= e!270923 tp_is_empty!12639)))

(declare-fun b!463872 () Bool)

(declare-fun res!277414 () Bool)

(assert (=> b!463872 (=> (not res!277414) (not e!270921))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29033 (_ BitVec 32)) Bool)

(assert (=> b!463872 (= res!277414 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!463873 () Bool)

(assert (=> b!463873 (= e!270925 tp_is_empty!12639)))

(assert (= (and start!41552 res!277412) b!463870))

(assert (= (and b!463870 res!277415) b!463872))

(assert (= (and b!463872 res!277414) b!463869))

(assert (= (and b!463869 res!277413) b!463867))

(assert (= (and b!463868 condMapEmpty!20635) mapIsEmpty!20635))

(assert (= (and b!463868 (not condMapEmpty!20635)) mapNonEmpty!20635))

(get-info :version)

(assert (= (and mapNonEmpty!20635 ((_ is ValueCellFull!5976) mapValue!20635)) b!463871))

(assert (= (and b!463868 ((_ is ValueCellFull!5976) mapDefault!20635)) b!463873))

(assert (= start!41552 b!463868))

(declare-fun m!446345 () Bool)

(assert (=> start!41552 m!446345))

(declare-fun m!446347 () Bool)

(assert (=> start!41552 m!446347))

(declare-fun m!446349 () Bool)

(assert (=> start!41552 m!446349))

(declare-fun m!446351 () Bool)

(assert (=> mapNonEmpty!20635 m!446351))

(declare-fun m!446353 () Bool)

(assert (=> b!463869 m!446353))

(declare-fun m!446355 () Bool)

(assert (=> b!463872 m!446355))

(declare-fun m!446357 () Bool)

(assert (=> b!463867 m!446357))

(declare-fun m!446359 () Bool)

(assert (=> b!463867 m!446359))

(check-sat (not mapNonEmpty!20635) tp_is_empty!12639 (not b!463867) (not b_next!11211) b_and!19569 (not start!41552) (not b!463872) (not b!463869))
(check-sat b_and!19569 (not b_next!11211))
