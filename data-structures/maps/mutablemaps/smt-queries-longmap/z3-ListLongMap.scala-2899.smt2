; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41546 () Bool)

(assert start!41546)

(declare-fun b_free!11205 () Bool)

(declare-fun b_next!11205 () Bool)

(assert (=> start!41546 (= b_free!11205 (not b_next!11205))))

(declare-fun tp!39612 () Bool)

(declare-fun b_and!19563 () Bool)

(assert (=> start!41546 (= tp!39612 b_and!19563)))

(declare-fun b!463804 () Bool)

(declare-fun res!277377 () Bool)

(declare-fun e!270877 () Bool)

(assert (=> b!463804 (=> (not res!277377) (not e!270877))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29023 0))(
  ( (array!29024 (arr!13940 (Array (_ BitVec 32) (_ BitVec 64))) (size!14292 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29023)

(declare-datatypes ((V!17949 0))(
  ( (V!17950 (val!6361 Int)) )
))
(declare-datatypes ((ValueCell!5973 0))(
  ( (ValueCellFull!5973 (v!8644 V!17949)) (EmptyCell!5973) )
))
(declare-datatypes ((array!29025 0))(
  ( (array!29026 (arr!13941 (Array (_ BitVec 32) ValueCell!5973)) (size!14293 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29025)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!463804 (= res!277377 (and (= (size!14293 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14292 _keys!1025) (size!14293 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!463805 () Bool)

(declare-fun res!277379 () Bool)

(assert (=> b!463805 (=> (not res!277379) (not e!270877))))

(declare-datatypes ((List!8440 0))(
  ( (Nil!8437) (Cons!8436 (h!9292 (_ BitVec 64)) (t!14394 List!8440)) )
))
(declare-fun arrayNoDuplicates!0 (array!29023 (_ BitVec 32) List!8440) Bool)

(assert (=> b!463805 (= res!277379 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8437))))

(declare-fun b!463806 () Bool)

(declare-fun res!277378 () Bool)

(assert (=> b!463806 (=> (not res!277378) (not e!270877))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29023 (_ BitVec 32)) Bool)

(assert (=> b!463806 (= res!277378 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!463807 () Bool)

(assert (=> b!463807 (= e!270877 false)))

(declare-fun zeroValue!794 () V!17949)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((tuple2!8314 0))(
  ( (tuple2!8315 (_1!4167 (_ BitVec 64)) (_2!4167 V!17949)) )
))
(declare-datatypes ((List!8441 0))(
  ( (Nil!8438) (Cons!8437 (h!9293 tuple2!8314) (t!14395 List!8441)) )
))
(declare-datatypes ((ListLongMap!7241 0))(
  ( (ListLongMap!7242 (toList!3636 List!8441)) )
))
(declare-fun lt!209501 () ListLongMap!7241)

(declare-fun minValueAfter!38 () V!17949)

(declare-fun getCurrentListMapNoExtraKeys!1804 (array!29023 array!29025 (_ BitVec 32) (_ BitVec 32) V!17949 V!17949 (_ BitVec 32) Int) ListLongMap!7241)

(assert (=> b!463807 (= lt!209501 (getCurrentListMapNoExtraKeys!1804 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun minValueBefore!38 () V!17949)

(declare-fun lt!209502 () ListLongMap!7241)

(assert (=> b!463807 (= lt!209502 (getCurrentListMapNoExtraKeys!1804 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!463808 () Bool)

(declare-fun e!270880 () Bool)

(declare-fun e!270876 () Bool)

(declare-fun mapRes!20626 () Bool)

(assert (=> b!463808 (= e!270880 (and e!270876 mapRes!20626))))

(declare-fun condMapEmpty!20626 () Bool)

(declare-fun mapDefault!20626 () ValueCell!5973)

(assert (=> b!463808 (= condMapEmpty!20626 (= (arr!13941 _values!833) ((as const (Array (_ BitVec 32) ValueCell!5973)) mapDefault!20626)))))

(declare-fun mapNonEmpty!20626 () Bool)

(declare-fun tp!39613 () Bool)

(declare-fun e!270879 () Bool)

(assert (=> mapNonEmpty!20626 (= mapRes!20626 (and tp!39613 e!270879))))

(declare-fun mapValue!20626 () ValueCell!5973)

(declare-fun mapRest!20626 () (Array (_ BitVec 32) ValueCell!5973))

(declare-fun mapKey!20626 () (_ BitVec 32))

(assert (=> mapNonEmpty!20626 (= (arr!13941 _values!833) (store mapRest!20626 mapKey!20626 mapValue!20626))))

(declare-fun b!463810 () Bool)

(declare-fun tp_is_empty!12633 () Bool)

(assert (=> b!463810 (= e!270879 tp_is_empty!12633)))

(declare-fun mapIsEmpty!20626 () Bool)

(assert (=> mapIsEmpty!20626 mapRes!20626))

(declare-fun b!463809 () Bool)

(assert (=> b!463809 (= e!270876 tp_is_empty!12633)))

(declare-fun res!277376 () Bool)

(assert (=> start!41546 (=> (not res!277376) (not e!270877))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41546 (= res!277376 (validMask!0 mask!1365))))

(assert (=> start!41546 e!270877))

(assert (=> start!41546 tp_is_empty!12633))

(assert (=> start!41546 tp!39612))

(assert (=> start!41546 true))

(declare-fun array_inv!10054 (array!29023) Bool)

(assert (=> start!41546 (array_inv!10054 _keys!1025)))

(declare-fun array_inv!10055 (array!29025) Bool)

(assert (=> start!41546 (and (array_inv!10055 _values!833) e!270880)))

(assert (= (and start!41546 res!277376) b!463804))

(assert (= (and b!463804 res!277377) b!463806))

(assert (= (and b!463806 res!277378) b!463805))

(assert (= (and b!463805 res!277379) b!463807))

(assert (= (and b!463808 condMapEmpty!20626) mapIsEmpty!20626))

(assert (= (and b!463808 (not condMapEmpty!20626)) mapNonEmpty!20626))

(get-info :version)

(assert (= (and mapNonEmpty!20626 ((_ is ValueCellFull!5973) mapValue!20626)) b!463810))

(assert (= (and b!463808 ((_ is ValueCellFull!5973) mapDefault!20626)) b!463809))

(assert (= start!41546 b!463808))

(declare-fun m!446297 () Bool)

(assert (=> mapNonEmpty!20626 m!446297))

(declare-fun m!446299 () Bool)

(assert (=> b!463806 m!446299))

(declare-fun m!446301 () Bool)

(assert (=> b!463805 m!446301))

(declare-fun m!446303 () Bool)

(assert (=> start!41546 m!446303))

(declare-fun m!446305 () Bool)

(assert (=> start!41546 m!446305))

(declare-fun m!446307 () Bool)

(assert (=> start!41546 m!446307))

(declare-fun m!446309 () Bool)

(assert (=> b!463807 m!446309))

(declare-fun m!446311 () Bool)

(assert (=> b!463807 m!446311))

(check-sat (not b!463805) (not b_next!11205) b_and!19563 (not start!41546) (not b!463807) tp_is_empty!12633 (not mapNonEmpty!20626) (not b!463806))
(check-sat b_and!19563 (not b_next!11205))
