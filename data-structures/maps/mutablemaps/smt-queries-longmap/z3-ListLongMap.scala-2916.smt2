; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41662 () Bool)

(assert start!41662)

(declare-fun b_free!11307 () Bool)

(declare-fun b_next!11307 () Bool)

(assert (=> start!41662 (= b_free!11307 (not b_next!11307))))

(declare-fun tp!39922 () Bool)

(declare-fun b_and!19673 () Bool)

(assert (=> start!41662 (= tp!39922 b_and!19673)))

(declare-fun res!278021 () Bool)

(declare-fun e!271699 () Bool)

(assert (=> start!41662 (=> (not res!278021) (not e!271699))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41662 (= res!278021 (validMask!0 mask!1365))))

(assert (=> start!41662 e!271699))

(declare-fun tp_is_empty!12735 () Bool)

(assert (=> start!41662 tp_is_empty!12735))

(assert (=> start!41662 tp!39922))

(assert (=> start!41662 true))

(declare-datatypes ((array!29211 0))(
  ( (array!29212 (arr!14033 (Array (_ BitVec 32) (_ BitVec 64))) (size!14385 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29211)

(declare-fun array_inv!10118 (array!29211) Bool)

(assert (=> start!41662 (array_inv!10118 _keys!1025)))

(declare-datatypes ((V!18085 0))(
  ( (V!18086 (val!6412 Int)) )
))
(declare-datatypes ((ValueCell!6024 0))(
  ( (ValueCellFull!6024 (v!8695 V!18085)) (EmptyCell!6024) )
))
(declare-datatypes ((array!29213 0))(
  ( (array!29214 (arr!14034 (Array (_ BitVec 32) ValueCell!6024)) (size!14386 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29213)

(declare-fun e!271698 () Bool)

(declare-fun array_inv!10119 (array!29213) Bool)

(assert (=> start!41662 (and (array_inv!10119 _values!833) e!271698)))

(declare-fun b!464960 () Bool)

(declare-fun e!271696 () Bool)

(assert (=> b!464960 (= e!271696 tp_is_empty!12735)))

(declare-fun mapNonEmpty!20782 () Bool)

(declare-fun mapRes!20782 () Bool)

(declare-fun tp!39921 () Bool)

(declare-fun e!271700 () Bool)

(assert (=> mapNonEmpty!20782 (= mapRes!20782 (and tp!39921 e!271700))))

(declare-fun mapRest!20782 () (Array (_ BitVec 32) ValueCell!6024))

(declare-fun mapKey!20782 () (_ BitVec 32))

(declare-fun mapValue!20782 () ValueCell!6024)

(assert (=> mapNonEmpty!20782 (= (arr!14034 _values!833) (store mapRest!20782 mapKey!20782 mapValue!20782))))

(declare-fun mapIsEmpty!20782 () Bool)

(assert (=> mapIsEmpty!20782 mapRes!20782))

(declare-fun b!464961 () Bool)

(assert (=> b!464961 (= e!271699 (not true))))

(declare-datatypes ((tuple2!8382 0))(
  ( (tuple2!8383 (_1!4201 (_ BitVec 64)) (_2!4201 V!18085)) )
))
(declare-datatypes ((List!8506 0))(
  ( (Nil!8503) (Cons!8502 (h!9358 tuple2!8382) (t!14462 List!8506)) )
))
(declare-datatypes ((ListLongMap!7309 0))(
  ( (ListLongMap!7310 (toList!3670 List!8506)) )
))
(declare-fun lt!209988 () ListLongMap!7309)

(declare-fun lt!209987 () ListLongMap!7309)

(assert (=> b!464961 (= lt!209988 lt!209987)))

(declare-fun minValueBefore!38 () V!18085)

(declare-fun zeroValue!794 () V!18085)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((Unit!13461 0))(
  ( (Unit!13462) )
))
(declare-fun lt!209989 () Unit!13461)

(declare-fun minValueAfter!38 () V!18085)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!33 (array!29211 array!29213 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18085 V!18085 V!18085 V!18085 (_ BitVec 32) Int) Unit!13461)

(assert (=> b!464961 (= lt!209989 (lemmaNoChangeToArrayThenSameMapNoExtras!33 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1838 (array!29211 array!29213 (_ BitVec 32) (_ BitVec 32) V!18085 V!18085 (_ BitVec 32) Int) ListLongMap!7309)

(assert (=> b!464961 (= lt!209987 (getCurrentListMapNoExtraKeys!1838 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!464961 (= lt!209988 (getCurrentListMapNoExtraKeys!1838 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!464962 () Bool)

(declare-fun res!278022 () Bool)

(assert (=> b!464962 (=> (not res!278022) (not e!271699))))

(assert (=> b!464962 (= res!278022 (and (= (size!14386 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14385 _keys!1025) (size!14386 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!464963 () Bool)

(assert (=> b!464963 (= e!271700 tp_is_empty!12735)))

(declare-fun b!464964 () Bool)

(assert (=> b!464964 (= e!271698 (and e!271696 mapRes!20782))))

(declare-fun condMapEmpty!20782 () Bool)

(declare-fun mapDefault!20782 () ValueCell!6024)

(assert (=> b!464964 (= condMapEmpty!20782 (= (arr!14034 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6024)) mapDefault!20782)))))

(declare-fun b!464965 () Bool)

(declare-fun res!278020 () Bool)

(assert (=> b!464965 (=> (not res!278020) (not e!271699))))

(declare-datatypes ((List!8507 0))(
  ( (Nil!8504) (Cons!8503 (h!9359 (_ BitVec 64)) (t!14463 List!8507)) )
))
(declare-fun arrayNoDuplicates!0 (array!29211 (_ BitVec 32) List!8507) Bool)

(assert (=> b!464965 (= res!278020 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8504))))

(declare-fun b!464966 () Bool)

(declare-fun res!278019 () Bool)

(assert (=> b!464966 (=> (not res!278019) (not e!271699))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29211 (_ BitVec 32)) Bool)

(assert (=> b!464966 (= res!278019 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(assert (= (and start!41662 res!278021) b!464962))

(assert (= (and b!464962 res!278022) b!464966))

(assert (= (and b!464966 res!278019) b!464965))

(assert (= (and b!464965 res!278020) b!464961))

(assert (= (and b!464964 condMapEmpty!20782) mapIsEmpty!20782))

(assert (= (and b!464964 (not condMapEmpty!20782)) mapNonEmpty!20782))

(get-info :version)

(assert (= (and mapNonEmpty!20782 ((_ is ValueCellFull!6024) mapValue!20782)) b!464963))

(assert (= (and b!464964 ((_ is ValueCellFull!6024) mapDefault!20782)) b!464960))

(assert (= start!41662 b!464964))

(declare-fun m!447271 () Bool)

(assert (=> mapNonEmpty!20782 m!447271))

(declare-fun m!447273 () Bool)

(assert (=> b!464966 m!447273))

(declare-fun m!447275 () Bool)

(assert (=> start!41662 m!447275))

(declare-fun m!447277 () Bool)

(assert (=> start!41662 m!447277))

(declare-fun m!447279 () Bool)

(assert (=> start!41662 m!447279))

(declare-fun m!447281 () Bool)

(assert (=> b!464961 m!447281))

(declare-fun m!447283 () Bool)

(assert (=> b!464961 m!447283))

(declare-fun m!447285 () Bool)

(assert (=> b!464961 m!447285))

(declare-fun m!447287 () Bool)

(assert (=> b!464965 m!447287))

(check-sat (not b_next!11307) (not b!464961) tp_is_empty!12735 (not mapNonEmpty!20782) (not b!464965) b_and!19673 (not start!41662) (not b!464966))
(check-sat b_and!19673 (not b_next!11307))
