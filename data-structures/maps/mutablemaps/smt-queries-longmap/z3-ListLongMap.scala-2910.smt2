; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41626 () Bool)

(assert start!41626)

(declare-fun b_free!11271 () Bool)

(declare-fun b_next!11271 () Bool)

(assert (=> start!41626 (= b_free!11271 (not b_next!11271))))

(declare-fun tp!39814 () Bool)

(declare-fun b_and!19637 () Bool)

(assert (=> start!41626 (= tp!39814 b_and!19637)))

(declare-fun mapIsEmpty!20728 () Bool)

(declare-fun mapRes!20728 () Bool)

(assert (=> mapIsEmpty!20728 mapRes!20728))

(declare-fun res!277804 () Bool)

(declare-fun e!271426 () Bool)

(assert (=> start!41626 (=> (not res!277804) (not e!271426))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41626 (= res!277804 (validMask!0 mask!1365))))

(assert (=> start!41626 e!271426))

(declare-fun tp_is_empty!12699 () Bool)

(assert (=> start!41626 tp_is_empty!12699))

(assert (=> start!41626 tp!39814))

(assert (=> start!41626 true))

(declare-datatypes ((array!29147 0))(
  ( (array!29148 (arr!14001 (Array (_ BitVec 32) (_ BitVec 64))) (size!14353 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29147)

(declare-fun array_inv!10090 (array!29147) Bool)

(assert (=> start!41626 (array_inv!10090 _keys!1025)))

(declare-datatypes ((V!18037 0))(
  ( (V!18038 (val!6394 Int)) )
))
(declare-datatypes ((ValueCell!6006 0))(
  ( (ValueCellFull!6006 (v!8677 V!18037)) (EmptyCell!6006) )
))
(declare-datatypes ((array!29149 0))(
  ( (array!29150 (arr!14002 (Array (_ BitVec 32) ValueCell!6006)) (size!14354 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29149)

(declare-fun e!271428 () Bool)

(declare-fun array_inv!10091 (array!29149) Bool)

(assert (=> start!41626 (and (array_inv!10091 _values!833) e!271428)))

(declare-fun b!464582 () Bool)

(declare-fun e!271427 () Bool)

(assert (=> b!464582 (= e!271427 tp_is_empty!12699)))

(declare-fun b!464583 () Bool)

(declare-fun res!277806 () Bool)

(assert (=> b!464583 (=> (not res!277806) (not e!271426))))

(declare-datatypes ((List!8482 0))(
  ( (Nil!8479) (Cons!8478 (h!9334 (_ BitVec 64)) (t!14438 List!8482)) )
))
(declare-fun arrayNoDuplicates!0 (array!29147 (_ BitVec 32) List!8482) Bool)

(assert (=> b!464583 (= res!277806 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8479))))

(declare-fun b!464584 () Bool)

(declare-fun e!271430 () Bool)

(assert (=> b!464584 (= e!271428 (and e!271430 mapRes!20728))))

(declare-fun condMapEmpty!20728 () Bool)

(declare-fun mapDefault!20728 () ValueCell!6006)

(assert (=> b!464584 (= condMapEmpty!20728 (= (arr!14002 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6006)) mapDefault!20728)))))

(declare-fun mapNonEmpty!20728 () Bool)

(declare-fun tp!39813 () Bool)

(assert (=> mapNonEmpty!20728 (= mapRes!20728 (and tp!39813 e!271427))))

(declare-fun mapRest!20728 () (Array (_ BitVec 32) ValueCell!6006))

(declare-fun mapKey!20728 () (_ BitVec 32))

(declare-fun mapValue!20728 () ValueCell!6006)

(assert (=> mapNonEmpty!20728 (= (arr!14002 _values!833) (store mapRest!20728 mapKey!20728 mapValue!20728))))

(declare-fun b!464585 () Bool)

(declare-fun res!277805 () Bool)

(assert (=> b!464585 (=> (not res!277805) (not e!271426))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!464585 (= res!277805 (and (= (size!14354 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14353 _keys!1025) (size!14354 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!464586 () Bool)

(assert (=> b!464586 (= e!271426 (not true))))

(declare-datatypes ((tuple2!8354 0))(
  ( (tuple2!8355 (_1!4187 (_ BitVec 64)) (_2!4187 V!18037)) )
))
(declare-datatypes ((List!8483 0))(
  ( (Nil!8480) (Cons!8479 (h!9335 tuple2!8354) (t!14439 List!8483)) )
))
(declare-datatypes ((ListLongMap!7281 0))(
  ( (ListLongMap!7282 (toList!3656 List!8483)) )
))
(declare-fun lt!209827 () ListLongMap!7281)

(declare-fun lt!209825 () ListLongMap!7281)

(assert (=> b!464586 (= lt!209827 lt!209825)))

(declare-datatypes ((Unit!13433 0))(
  ( (Unit!13434) )
))
(declare-fun lt!209826 () Unit!13433)

(declare-fun minValueBefore!38 () V!18037)

(declare-fun zeroValue!794 () V!18037)

(declare-fun defaultEntry!841 () Int)

(declare-fun minValueAfter!38 () V!18037)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!19 (array!29147 array!29149 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18037 V!18037 V!18037 V!18037 (_ BitVec 32) Int) Unit!13433)

(assert (=> b!464586 (= lt!209826 (lemmaNoChangeToArrayThenSameMapNoExtras!19 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1824 (array!29147 array!29149 (_ BitVec 32) (_ BitVec 32) V!18037 V!18037 (_ BitVec 32) Int) ListLongMap!7281)

(assert (=> b!464586 (= lt!209825 (getCurrentListMapNoExtraKeys!1824 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!464586 (= lt!209827 (getCurrentListMapNoExtraKeys!1824 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!464587 () Bool)

(assert (=> b!464587 (= e!271430 tp_is_empty!12699)))

(declare-fun b!464588 () Bool)

(declare-fun res!277803 () Bool)

(assert (=> b!464588 (=> (not res!277803) (not e!271426))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29147 (_ BitVec 32)) Bool)

(assert (=> b!464588 (= res!277803 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(assert (= (and start!41626 res!277804) b!464585))

(assert (= (and b!464585 res!277805) b!464588))

(assert (= (and b!464588 res!277803) b!464583))

(assert (= (and b!464583 res!277806) b!464586))

(assert (= (and b!464584 condMapEmpty!20728) mapIsEmpty!20728))

(assert (= (and b!464584 (not condMapEmpty!20728)) mapNonEmpty!20728))

(get-info :version)

(assert (= (and mapNonEmpty!20728 ((_ is ValueCellFull!6006) mapValue!20728)) b!464582))

(assert (= (and b!464584 ((_ is ValueCellFull!6006) mapDefault!20728)) b!464587))

(assert (= start!41626 b!464584))

(declare-fun m!446947 () Bool)

(assert (=> b!464583 m!446947))

(declare-fun m!446949 () Bool)

(assert (=> start!41626 m!446949))

(declare-fun m!446951 () Bool)

(assert (=> start!41626 m!446951))

(declare-fun m!446953 () Bool)

(assert (=> start!41626 m!446953))

(declare-fun m!446955 () Bool)

(assert (=> mapNonEmpty!20728 m!446955))

(declare-fun m!446957 () Bool)

(assert (=> b!464586 m!446957))

(declare-fun m!446959 () Bool)

(assert (=> b!464586 m!446959))

(declare-fun m!446961 () Bool)

(assert (=> b!464586 m!446961))

(declare-fun m!446963 () Bool)

(assert (=> b!464588 m!446963))

(check-sat tp_is_empty!12699 b_and!19637 (not start!41626) (not b!464588) (not b!464583) (not b!464586) (not mapNonEmpty!20728) (not b_next!11271))
(check-sat b_and!19637 (not b_next!11271))
