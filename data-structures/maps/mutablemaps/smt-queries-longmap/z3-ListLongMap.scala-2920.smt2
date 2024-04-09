; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41700 () Bool)

(assert start!41700)

(declare-fun b_free!11331 () Bool)

(declare-fun b_next!11331 () Bool)

(assert (=> start!41700 (= b_free!11331 (not b_next!11331))))

(declare-fun tp!39996 () Bool)

(declare-fun b_and!19705 () Bool)

(assert (=> start!41700 (= tp!39996 b_and!19705)))

(declare-fun b!465311 () Bool)

(declare-fun e!271947 () Bool)

(declare-fun tp_is_empty!12759 () Bool)

(assert (=> b!465311 (= e!271947 tp_is_empty!12759)))

(declare-fun b!465312 () Bool)

(declare-fun e!271950 () Bool)

(declare-fun mapRes!20821 () Bool)

(assert (=> b!465312 (= e!271950 (and e!271947 mapRes!20821))))

(declare-fun condMapEmpty!20821 () Bool)

(declare-datatypes ((V!18117 0))(
  ( (V!18118 (val!6424 Int)) )
))
(declare-datatypes ((ValueCell!6036 0))(
  ( (ValueCellFull!6036 (v!8707 V!18117)) (EmptyCell!6036) )
))
(declare-datatypes ((array!29257 0))(
  ( (array!29258 (arr!14055 (Array (_ BitVec 32) ValueCell!6036)) (size!14407 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29257)

(declare-fun mapDefault!20821 () ValueCell!6036)

(assert (=> b!465312 (= condMapEmpty!20821 (= (arr!14055 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6036)) mapDefault!20821)))))

(declare-fun mapNonEmpty!20821 () Bool)

(declare-fun tp!39997 () Bool)

(declare-fun e!271949 () Bool)

(assert (=> mapNonEmpty!20821 (= mapRes!20821 (and tp!39997 e!271949))))

(declare-fun mapKey!20821 () (_ BitVec 32))

(declare-fun mapValue!20821 () ValueCell!6036)

(declare-fun mapRest!20821 () (Array (_ BitVec 32) ValueCell!6036))

(assert (=> mapNonEmpty!20821 (= (arr!14055 _values!833) (store mapRest!20821 mapKey!20821 mapValue!20821))))

(declare-fun b!465314 () Bool)

(declare-fun res!278208 () Bool)

(declare-fun e!271945 () Bool)

(assert (=> b!465314 (=> (not res!278208) (not e!271945))))

(declare-datatypes ((array!29259 0))(
  ( (array!29260 (arr!14056 (Array (_ BitVec 32) (_ BitVec 64))) (size!14408 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29259)

(declare-datatypes ((List!8522 0))(
  ( (Nil!8519) (Cons!8518 (h!9374 (_ BitVec 64)) (t!14480 List!8522)) )
))
(declare-fun arrayNoDuplicates!0 (array!29259 (_ BitVec 32) List!8522) Bool)

(assert (=> b!465314 (= res!278208 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8519))))

(declare-fun b!465315 () Bool)

(declare-fun res!278212 () Bool)

(assert (=> b!465315 (=> (not res!278212) (not e!271945))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!465315 (= res!278212 (and (= (size!14407 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14408 _keys!1025) (size!14407 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!465316 () Bool)

(declare-fun e!271946 () Bool)

(assert (=> b!465316 (= e!271945 (not e!271946))))

(declare-fun res!278211 () Bool)

(assert (=> b!465316 (=> res!278211 e!271946)))

(assert (=> b!465316 (= res!278211 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!8398 0))(
  ( (tuple2!8399 (_1!4209 (_ BitVec 64)) (_2!4209 V!18117)) )
))
(declare-datatypes ((List!8523 0))(
  ( (Nil!8520) (Cons!8519 (h!9375 tuple2!8398) (t!14481 List!8523)) )
))
(declare-datatypes ((ListLongMap!7325 0))(
  ( (ListLongMap!7326 (toList!3678 List!8523)) )
))
(declare-fun lt!210167 () ListLongMap!7325)

(declare-fun lt!210166 () ListLongMap!7325)

(assert (=> b!465316 (= lt!210167 lt!210166)))

(declare-fun minValueBefore!38 () V!18117)

(declare-fun zeroValue!794 () V!18117)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13477 0))(
  ( (Unit!13478) )
))
(declare-fun lt!210165 () Unit!13477)

(declare-fun minValueAfter!38 () V!18117)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!41 (array!29259 array!29257 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18117 V!18117 V!18117 V!18117 (_ BitVec 32) Int) Unit!13477)

(assert (=> b!465316 (= lt!210165 (lemmaNoChangeToArrayThenSameMapNoExtras!41 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1846 (array!29259 array!29257 (_ BitVec 32) (_ BitVec 32) V!18117 V!18117 (_ BitVec 32) Int) ListLongMap!7325)

(assert (=> b!465316 (= lt!210166 (getCurrentListMapNoExtraKeys!1846 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!465316 (= lt!210167 (getCurrentListMapNoExtraKeys!1846 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapIsEmpty!20821 () Bool)

(assert (=> mapIsEmpty!20821 mapRes!20821))

(declare-fun b!465317 () Bool)

(assert (=> b!465317 (= e!271946 true)))

(declare-fun lt!210163 () ListLongMap!7325)

(declare-fun getCurrentListMap!2125 (array!29259 array!29257 (_ BitVec 32) (_ BitVec 32) V!18117 V!18117 (_ BitVec 32) Int) ListLongMap!7325)

(assert (=> b!465317 (= lt!210163 (getCurrentListMap!2125 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!210164 () ListLongMap!7325)

(declare-fun +!1616 (ListLongMap!7325 tuple2!8398) ListLongMap!7325)

(assert (=> b!465317 (= lt!210164 (+!1616 (getCurrentListMap!2125 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) (tuple2!8399 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)))))

(declare-fun b!465318 () Bool)

(assert (=> b!465318 (= e!271949 tp_is_empty!12759)))

(declare-fun b!465313 () Bool)

(declare-fun res!278210 () Bool)

(assert (=> b!465313 (=> (not res!278210) (not e!271945))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29259 (_ BitVec 32)) Bool)

(assert (=> b!465313 (= res!278210 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun res!278209 () Bool)

(assert (=> start!41700 (=> (not res!278209) (not e!271945))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41700 (= res!278209 (validMask!0 mask!1365))))

(assert (=> start!41700 e!271945))

(assert (=> start!41700 tp_is_empty!12759))

(assert (=> start!41700 tp!39996))

(assert (=> start!41700 true))

(declare-fun array_inv!10134 (array!29259) Bool)

(assert (=> start!41700 (array_inv!10134 _keys!1025)))

(declare-fun array_inv!10135 (array!29257) Bool)

(assert (=> start!41700 (and (array_inv!10135 _values!833) e!271950)))

(assert (= (and start!41700 res!278209) b!465315))

(assert (= (and b!465315 res!278212) b!465313))

(assert (= (and b!465313 res!278210) b!465314))

(assert (= (and b!465314 res!278208) b!465316))

(assert (= (and b!465316 (not res!278211)) b!465317))

(assert (= (and b!465312 condMapEmpty!20821) mapIsEmpty!20821))

(assert (= (and b!465312 (not condMapEmpty!20821)) mapNonEmpty!20821))

(get-info :version)

(assert (= (and mapNonEmpty!20821 ((_ is ValueCellFull!6036) mapValue!20821)) b!465318))

(assert (= (and b!465312 ((_ is ValueCellFull!6036) mapDefault!20821)) b!465311))

(assert (= start!41700 b!465312))

(declare-fun m!447577 () Bool)

(assert (=> b!465316 m!447577))

(declare-fun m!447579 () Bool)

(assert (=> b!465316 m!447579))

(declare-fun m!447581 () Bool)

(assert (=> b!465316 m!447581))

(declare-fun m!447583 () Bool)

(assert (=> start!41700 m!447583))

(declare-fun m!447585 () Bool)

(assert (=> start!41700 m!447585))

(declare-fun m!447587 () Bool)

(assert (=> start!41700 m!447587))

(declare-fun m!447589 () Bool)

(assert (=> b!465317 m!447589))

(declare-fun m!447591 () Bool)

(assert (=> b!465317 m!447591))

(assert (=> b!465317 m!447591))

(declare-fun m!447593 () Bool)

(assert (=> b!465317 m!447593))

(declare-fun m!447595 () Bool)

(assert (=> mapNonEmpty!20821 m!447595))

(declare-fun m!447597 () Bool)

(assert (=> b!465314 m!447597))

(declare-fun m!447599 () Bool)

(assert (=> b!465313 m!447599))

(check-sat (not b!465317) tp_is_empty!12759 (not b!465316) (not b_next!11331) (not start!41700) (not b!465313) b_and!19705 (not b!465314) (not mapNonEmpty!20821))
(check-sat b_and!19705 (not b_next!11331))
