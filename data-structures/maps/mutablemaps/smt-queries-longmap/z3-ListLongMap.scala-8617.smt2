; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105006 () Bool)

(assert start!105006)

(declare-fun b_free!26739 () Bool)

(declare-fun b_next!26739 () Bool)

(assert (=> start!105006 (= b_free!26739 (not b_next!26739))))

(declare-fun tp!93713 () Bool)

(declare-fun b_and!44535 () Bool)

(assert (=> start!105006 (= tp!93713 b_and!44535)))

(declare-fun res!834506 () Bool)

(declare-fun e!710363 () Bool)

(assert (=> start!105006 (=> (not res!834506) (not e!710363))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105006 (= res!834506 (validMask!0 mask!1466))))

(assert (=> start!105006 e!710363))

(assert (=> start!105006 true))

(assert (=> start!105006 tp!93713))

(declare-fun tp_is_empty!31641 () Bool)

(assert (=> start!105006 tp_is_empty!31641))

(declare-datatypes ((array!80929 0))(
  ( (array!80930 (arr!39025 (Array (_ BitVec 32) (_ BitVec 64))) (size!39562 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80929)

(declare-fun array_inv!29701 (array!80929) Bool)

(assert (=> start!105006 (array_inv!29701 _keys!1118)))

(declare-datatypes ((V!47553 0))(
  ( (V!47554 (val!15883 Int)) )
))
(declare-datatypes ((ValueCell!15057 0))(
  ( (ValueCellFull!15057 (v!18580 V!47553)) (EmptyCell!15057) )
))
(declare-datatypes ((array!80931 0))(
  ( (array!80932 (arr!39026 (Array (_ BitVec 32) ValueCell!15057)) (size!39563 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80931)

(declare-fun e!710366 () Bool)

(declare-fun array_inv!29702 (array!80931) Bool)

(assert (=> start!105006 (and (array_inv!29702 _values!914) e!710366)))

(declare-fun b!1251028 () Bool)

(declare-fun e!710365 () Bool)

(assert (=> b!1251028 (= e!710363 (not e!710365))))

(declare-fun res!834509 () Bool)

(assert (=> b!1251028 (=> res!834509 e!710365)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1251028 (= res!834509 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!20620 0))(
  ( (tuple2!20621 (_1!10320 (_ BitVec 64)) (_2!10320 V!47553)) )
))
(declare-datatypes ((List!27874 0))(
  ( (Nil!27871) (Cons!27870 (h!29079 tuple2!20620) (t!41356 List!27874)) )
))
(declare-datatypes ((ListLongMap!18505 0))(
  ( (ListLongMap!18506 (toList!9268 List!27874)) )
))
(declare-fun lt!564583 () ListLongMap!18505)

(declare-fun lt!564585 () ListLongMap!18505)

(assert (=> b!1251028 (= lt!564583 lt!564585)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47553)

(declare-datatypes ((Unit!41513 0))(
  ( (Unit!41514) )
))
(declare-fun lt!564586 () Unit!41513)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47553)

(declare-fun minValueBefore!43 () V!47553)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!962 (array!80929 array!80931 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47553 V!47553 V!47553 V!47553 (_ BitVec 32) Int) Unit!41513)

(assert (=> b!1251028 (= lt!564586 (lemmaNoChangeToArrayThenSameMapNoExtras!962 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5644 (array!80929 array!80931 (_ BitVec 32) (_ BitVec 32) V!47553 V!47553 (_ BitVec 32) Int) ListLongMap!18505)

(assert (=> b!1251028 (= lt!564585 (getCurrentListMapNoExtraKeys!5644 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1251028 (= lt!564583 (getCurrentListMapNoExtraKeys!5644 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapIsEmpty!49228 () Bool)

(declare-fun mapRes!49228 () Bool)

(assert (=> mapIsEmpty!49228 mapRes!49228))

(declare-fun b!1251029 () Bool)

(declare-fun e!710364 () Bool)

(assert (=> b!1251029 (= e!710365 e!710364)))

(declare-fun res!834505 () Bool)

(assert (=> b!1251029 (=> res!834505 e!710364)))

(declare-fun lt!564584 () ListLongMap!18505)

(declare-fun contains!7519 (ListLongMap!18505 (_ BitVec 64)) Bool)

(assert (=> b!1251029 (= res!834505 (contains!7519 lt!564584 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun getCurrentListMap!4484 (array!80929 array!80931 (_ BitVec 32) (_ BitVec 32) V!47553 V!47553 (_ BitVec 32) Int) ListLongMap!18505)

(assert (=> b!1251029 (= lt!564584 (getCurrentListMap!4484 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1251030 () Bool)

(assert (=> b!1251030 (= e!710364 true)))

(declare-fun -!2030 (ListLongMap!18505 (_ BitVec 64)) ListLongMap!18505)

(assert (=> b!1251030 (= (-!2030 lt!564584 #b1000000000000000000000000000000000000000000000000000000000000000) lt!564584)))

(declare-fun lt!564587 () Unit!41513)

(declare-fun removeNotPresentStillSame!97 (ListLongMap!18505 (_ BitVec 64)) Unit!41513)

(assert (=> b!1251030 (= lt!564587 (removeNotPresentStillSame!97 lt!564584 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1251031 () Bool)

(declare-fun e!710367 () Bool)

(assert (=> b!1251031 (= e!710367 tp_is_empty!31641)))

(declare-fun b!1251032 () Bool)

(declare-fun e!710368 () Bool)

(assert (=> b!1251032 (= e!710368 tp_is_empty!31641)))

(declare-fun b!1251033 () Bool)

(declare-fun res!834504 () Bool)

(assert (=> b!1251033 (=> (not res!834504) (not e!710363))))

(assert (=> b!1251033 (= res!834504 (and (= (size!39563 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39562 _keys!1118) (size!39563 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1251034 () Bool)

(declare-fun res!834508 () Bool)

(assert (=> b!1251034 (=> (not res!834508) (not e!710363))))

(declare-datatypes ((List!27875 0))(
  ( (Nil!27872) (Cons!27871 (h!29080 (_ BitVec 64)) (t!41357 List!27875)) )
))
(declare-fun arrayNoDuplicates!0 (array!80929 (_ BitVec 32) List!27875) Bool)

(assert (=> b!1251034 (= res!834508 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27872))))

(declare-fun b!1251035 () Bool)

(assert (=> b!1251035 (= e!710366 (and e!710368 mapRes!49228))))

(declare-fun condMapEmpty!49228 () Bool)

(declare-fun mapDefault!49228 () ValueCell!15057)

(assert (=> b!1251035 (= condMapEmpty!49228 (= (arr!39026 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15057)) mapDefault!49228)))))

(declare-fun b!1251036 () Bool)

(declare-fun res!834507 () Bool)

(assert (=> b!1251036 (=> (not res!834507) (not e!710363))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80929 (_ BitVec 32)) Bool)

(assert (=> b!1251036 (= res!834507 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun mapNonEmpty!49228 () Bool)

(declare-fun tp!93714 () Bool)

(assert (=> mapNonEmpty!49228 (= mapRes!49228 (and tp!93714 e!710367))))

(declare-fun mapRest!49228 () (Array (_ BitVec 32) ValueCell!15057))

(declare-fun mapKey!49228 () (_ BitVec 32))

(declare-fun mapValue!49228 () ValueCell!15057)

(assert (=> mapNonEmpty!49228 (= (arr!39026 _values!914) (store mapRest!49228 mapKey!49228 mapValue!49228))))

(assert (= (and start!105006 res!834506) b!1251033))

(assert (= (and b!1251033 res!834504) b!1251036))

(assert (= (and b!1251036 res!834507) b!1251034))

(assert (= (and b!1251034 res!834508) b!1251028))

(assert (= (and b!1251028 (not res!834509)) b!1251029))

(assert (= (and b!1251029 (not res!834505)) b!1251030))

(assert (= (and b!1251035 condMapEmpty!49228) mapIsEmpty!49228))

(assert (= (and b!1251035 (not condMapEmpty!49228)) mapNonEmpty!49228))

(get-info :version)

(assert (= (and mapNonEmpty!49228 ((_ is ValueCellFull!15057) mapValue!49228)) b!1251031))

(assert (= (and b!1251035 ((_ is ValueCellFull!15057) mapDefault!49228)) b!1251032))

(assert (= start!105006 b!1251035))

(declare-fun m!1151851 () Bool)

(assert (=> mapNonEmpty!49228 m!1151851))

(declare-fun m!1151853 () Bool)

(assert (=> b!1251030 m!1151853))

(declare-fun m!1151855 () Bool)

(assert (=> b!1251030 m!1151855))

(declare-fun m!1151857 () Bool)

(assert (=> b!1251028 m!1151857))

(declare-fun m!1151859 () Bool)

(assert (=> b!1251028 m!1151859))

(declare-fun m!1151861 () Bool)

(assert (=> b!1251028 m!1151861))

(declare-fun m!1151863 () Bool)

(assert (=> b!1251029 m!1151863))

(declare-fun m!1151865 () Bool)

(assert (=> b!1251029 m!1151865))

(declare-fun m!1151867 () Bool)

(assert (=> start!105006 m!1151867))

(declare-fun m!1151869 () Bool)

(assert (=> start!105006 m!1151869))

(declare-fun m!1151871 () Bool)

(assert (=> start!105006 m!1151871))

(declare-fun m!1151873 () Bool)

(assert (=> b!1251034 m!1151873))

(declare-fun m!1151875 () Bool)

(assert (=> b!1251036 m!1151875))

(check-sat (not b_next!26739) (not mapNonEmpty!49228) b_and!44535 (not b!1251028) (not start!105006) (not b!1251029) (not b!1251036) tp_is_empty!31641 (not b!1251034) (not b!1251030))
(check-sat b_and!44535 (not b_next!26739))
