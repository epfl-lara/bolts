; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42062 () Bool)

(assert start!42062)

(declare-fun b_free!11607 () Bool)

(declare-fun b_next!11607 () Bool)

(assert (=> start!42062 (= b_free!11607 (not b_next!11607))))

(declare-fun tp!40840 () Bool)

(declare-fun b_and!20035 () Bool)

(assert (=> start!42062 (= tp!40840 b_and!20035)))

(declare-fun b!469322 () Bool)

(declare-fun e!274834 () Bool)

(declare-fun tp_is_empty!13035 () Bool)

(assert (=> b!469322 (= e!274834 tp_is_empty!13035)))

(declare-fun b!469323 () Bool)

(declare-fun e!274830 () Bool)

(assert (=> b!469323 (= e!274830 tp_is_empty!13035)))

(declare-fun mapIsEmpty!21250 () Bool)

(declare-fun mapRes!21250 () Bool)

(assert (=> mapIsEmpty!21250 mapRes!21250))

(declare-fun b!469324 () Bool)

(declare-fun res!280528 () Bool)

(declare-fun e!274831 () Bool)

(assert (=> b!469324 (=> (not res!280528) (not e!274831))))

(declare-datatypes ((array!29805 0))(
  ( (array!29806 (arr!14324 (Array (_ BitVec 32) (_ BitVec 64))) (size!14676 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29805)

(declare-datatypes ((List!8729 0))(
  ( (Nil!8726) (Cons!8725 (h!9581 (_ BitVec 64)) (t!14697 List!8729)) )
))
(declare-fun arrayNoDuplicates!0 (array!29805 (_ BitVec 32) List!8729) Bool)

(assert (=> b!469324 (= res!280528 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8726))))

(declare-fun b!469325 () Bool)

(declare-fun res!280530 () Bool)

(assert (=> b!469325 (=> (not res!280530) (not e!274831))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29805 (_ BitVec 32)) Bool)

(assert (=> b!469325 (= res!280530 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!469326 () Bool)

(declare-fun e!274833 () Bool)

(assert (=> b!469326 (= e!274833 true)))

(declare-datatypes ((V!18485 0))(
  ( (V!18486 (val!6562 Int)) )
))
(declare-datatypes ((tuple2!8610 0))(
  ( (tuple2!8611 (_1!4315 (_ BitVec 64)) (_2!4315 V!18485)) )
))
(declare-datatypes ((List!8730 0))(
  ( (Nil!8727) (Cons!8726 (h!9582 tuple2!8610) (t!14698 List!8730)) )
))
(declare-datatypes ((ListLongMap!7537 0))(
  ( (ListLongMap!7538 (toList!3784 List!8730)) )
))
(declare-fun lt!212740 () ListLongMap!7537)

(declare-fun lt!212745 () tuple2!8610)

(declare-fun minValueBefore!38 () V!18485)

(declare-fun +!1672 (ListLongMap!7537 tuple2!8610) ListLongMap!7537)

(assert (=> b!469326 (= (+!1672 lt!212740 lt!212745) (+!1672 (+!1672 lt!212740 (tuple2!8611 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!212745))))

(declare-fun minValueAfter!38 () V!18485)

(assert (=> b!469326 (= lt!212745 (tuple2!8611 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))

(declare-datatypes ((Unit!13692 0))(
  ( (Unit!13693) )
))
(declare-fun lt!212742 () Unit!13692)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!113 (ListLongMap!7537 (_ BitVec 64) V!18485 V!18485) Unit!13692)

(assert (=> b!469326 (= lt!212742 (addSameAsAddTwiceSameKeyDiffValues!113 lt!212740 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(declare-fun zeroValue!794 () V!18485)

(declare-fun defaultEntry!841 () Int)

(declare-fun lt!212743 () ListLongMap!7537)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((ValueCell!6174 0))(
  ( (ValueCellFull!6174 (v!8848 V!18485)) (EmptyCell!6174) )
))
(declare-datatypes ((array!29807 0))(
  ( (array!29808 (arr!14325 (Array (_ BitVec 32) ValueCell!6174)) (size!14677 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29807)

(declare-fun getCurrentListMap!2194 (array!29805 array!29807 (_ BitVec 32) (_ BitVec 32) V!18485 V!18485 (_ BitVec 32) Int) ListLongMap!7537)

(assert (=> b!469326 (= lt!212743 (getCurrentListMap!2194 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun lt!212739 () ListLongMap!7537)

(assert (=> b!469326 (= lt!212739 (getCurrentListMap!2194 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!469327 () Bool)

(declare-fun e!274829 () Bool)

(assert (=> b!469327 (= e!274829 (and e!274830 mapRes!21250))))

(declare-fun condMapEmpty!21250 () Bool)

(declare-fun mapDefault!21250 () ValueCell!6174)

(assert (=> b!469327 (= condMapEmpty!21250 (= (arr!14325 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6174)) mapDefault!21250)))))

(declare-fun b!469328 () Bool)

(declare-fun res!280531 () Bool)

(assert (=> b!469328 (=> (not res!280531) (not e!274831))))

(assert (=> b!469328 (= res!280531 (and (= (size!14677 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14676 _keys!1025) (size!14677 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!469329 () Bool)

(assert (=> b!469329 (= e!274831 (not e!274833))))

(declare-fun res!280529 () Bool)

(assert (=> b!469329 (=> res!280529 e!274833)))

(assert (=> b!469329 (= res!280529 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!212741 () ListLongMap!7537)

(assert (=> b!469329 (= lt!212740 lt!212741)))

(declare-fun lt!212744 () Unit!13692)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!143 (array!29805 array!29807 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18485 V!18485 V!18485 V!18485 (_ BitVec 32) Int) Unit!13692)

(assert (=> b!469329 (= lt!212744 (lemmaNoChangeToArrayThenSameMapNoExtras!143 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1948 (array!29805 array!29807 (_ BitVec 32) (_ BitVec 32) V!18485 V!18485 (_ BitVec 32) Int) ListLongMap!7537)

(assert (=> b!469329 (= lt!212741 (getCurrentListMapNoExtraKeys!1948 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!469329 (= lt!212740 (getCurrentListMapNoExtraKeys!1948 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun res!280527 () Bool)

(assert (=> start!42062 (=> (not res!280527) (not e!274831))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42062 (= res!280527 (validMask!0 mask!1365))))

(assert (=> start!42062 e!274831))

(assert (=> start!42062 tp_is_empty!13035))

(assert (=> start!42062 tp!40840))

(assert (=> start!42062 true))

(declare-fun array_inv!10330 (array!29805) Bool)

(assert (=> start!42062 (array_inv!10330 _keys!1025)))

(declare-fun array_inv!10331 (array!29807) Bool)

(assert (=> start!42062 (and (array_inv!10331 _values!833) e!274829)))

(declare-fun mapNonEmpty!21250 () Bool)

(declare-fun tp!40839 () Bool)

(assert (=> mapNonEmpty!21250 (= mapRes!21250 (and tp!40839 e!274834))))

(declare-fun mapValue!21250 () ValueCell!6174)

(declare-fun mapRest!21250 () (Array (_ BitVec 32) ValueCell!6174))

(declare-fun mapKey!21250 () (_ BitVec 32))

(assert (=> mapNonEmpty!21250 (= (arr!14325 _values!833) (store mapRest!21250 mapKey!21250 mapValue!21250))))

(assert (= (and start!42062 res!280527) b!469328))

(assert (= (and b!469328 res!280531) b!469325))

(assert (= (and b!469325 res!280530) b!469324))

(assert (= (and b!469324 res!280528) b!469329))

(assert (= (and b!469329 (not res!280529)) b!469326))

(assert (= (and b!469327 condMapEmpty!21250) mapIsEmpty!21250))

(assert (= (and b!469327 (not condMapEmpty!21250)) mapNonEmpty!21250))

(get-info :version)

(assert (= (and mapNonEmpty!21250 ((_ is ValueCellFull!6174) mapValue!21250)) b!469322))

(assert (= (and b!469327 ((_ is ValueCellFull!6174) mapDefault!21250)) b!469323))

(assert (= start!42062 b!469327))

(declare-fun m!451541 () Bool)

(assert (=> b!469324 m!451541))

(declare-fun m!451543 () Bool)

(assert (=> start!42062 m!451543))

(declare-fun m!451545 () Bool)

(assert (=> start!42062 m!451545))

(declare-fun m!451547 () Bool)

(assert (=> start!42062 m!451547))

(declare-fun m!451549 () Bool)

(assert (=> b!469329 m!451549))

(declare-fun m!451551 () Bool)

(assert (=> b!469329 m!451551))

(declare-fun m!451553 () Bool)

(assert (=> b!469329 m!451553))

(declare-fun m!451555 () Bool)

(assert (=> b!469325 m!451555))

(declare-fun m!451557 () Bool)

(assert (=> mapNonEmpty!21250 m!451557))

(declare-fun m!451559 () Bool)

(assert (=> b!469326 m!451559))

(declare-fun m!451561 () Bool)

(assert (=> b!469326 m!451561))

(declare-fun m!451563 () Bool)

(assert (=> b!469326 m!451563))

(assert (=> b!469326 m!451561))

(declare-fun m!451565 () Bool)

(assert (=> b!469326 m!451565))

(declare-fun m!451567 () Bool)

(assert (=> b!469326 m!451567))

(declare-fun m!451569 () Bool)

(assert (=> b!469326 m!451569))

(check-sat (not b!469324) (not b!469329) tp_is_empty!13035 (not start!42062) b_and!20035 (not b_next!11607) (not b!469325) (not mapNonEmpty!21250) (not b!469326))
(check-sat b_and!20035 (not b_next!11607))
