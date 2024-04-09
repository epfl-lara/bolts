; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105012 () Bool)

(assert start!105012)

(declare-fun b_free!26745 () Bool)

(declare-fun b_next!26745 () Bool)

(assert (=> start!105012 (= b_free!26745 (not b_next!26745))))

(declare-fun tp!93732 () Bool)

(declare-fun b_and!44541 () Bool)

(assert (=> start!105012 (= tp!93732 b_and!44541)))

(declare-fun b!1251109 () Bool)

(declare-fun e!710426 () Bool)

(declare-fun tp_is_empty!31647 () Bool)

(assert (=> b!1251109 (= e!710426 tp_is_empty!31647)))

(declare-fun b!1251110 () Bool)

(declare-fun e!710429 () Bool)

(assert (=> b!1251110 (= e!710429 true)))

(declare-datatypes ((V!47561 0))(
  ( (V!47562 (val!15886 Int)) )
))
(declare-datatypes ((tuple2!20626 0))(
  ( (tuple2!20627 (_1!10323 (_ BitVec 64)) (_2!10323 V!47561)) )
))
(declare-datatypes ((List!27879 0))(
  ( (Nil!27876) (Cons!27875 (h!29084 tuple2!20626) (t!41361 List!27879)) )
))
(declare-datatypes ((ListLongMap!18511 0))(
  ( (ListLongMap!18512 (toList!9271 List!27879)) )
))
(declare-fun lt!564631 () ListLongMap!18511)

(declare-fun -!2031 (ListLongMap!18511 (_ BitVec 64)) ListLongMap!18511)

(assert (=> b!1251110 (= (-!2031 lt!564631 #b1000000000000000000000000000000000000000000000000000000000000000) lt!564631)))

(declare-datatypes ((Unit!41517 0))(
  ( (Unit!41518) )
))
(declare-fun lt!564632 () Unit!41517)

(declare-fun removeNotPresentStillSame!98 (ListLongMap!18511 (_ BitVec 64)) Unit!41517)

(assert (=> b!1251110 (= lt!564632 (removeNotPresentStillSame!98 lt!564631 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1251111 () Bool)

(declare-fun res!834563 () Bool)

(declare-fun e!710432 () Bool)

(assert (=> b!1251111 (=> (not res!834563) (not e!710432))))

(declare-datatypes ((array!80941 0))(
  ( (array!80942 (arr!39031 (Array (_ BitVec 32) (_ BitVec 64))) (size!39568 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80941)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80941 (_ BitVec 32)) Bool)

(assert (=> b!1251111 (= res!834563 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1251112 () Bool)

(declare-fun e!710427 () Bool)

(assert (=> b!1251112 (= e!710427 tp_is_empty!31647)))

(declare-fun res!834560 () Bool)

(assert (=> start!105012 (=> (not res!834560) (not e!710432))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105012 (= res!834560 (validMask!0 mask!1466))))

(assert (=> start!105012 e!710432))

(assert (=> start!105012 true))

(assert (=> start!105012 tp!93732))

(assert (=> start!105012 tp_is_empty!31647))

(declare-fun array_inv!29703 (array!80941) Bool)

(assert (=> start!105012 (array_inv!29703 _keys!1118)))

(declare-datatypes ((ValueCell!15060 0))(
  ( (ValueCellFull!15060 (v!18583 V!47561)) (EmptyCell!15060) )
))
(declare-datatypes ((array!80943 0))(
  ( (array!80944 (arr!39032 (Array (_ BitVec 32) ValueCell!15060)) (size!39569 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80943)

(declare-fun e!710428 () Bool)

(declare-fun array_inv!29704 (array!80943) Bool)

(assert (=> start!105012 (and (array_inv!29704 _values!914) e!710428)))

(declare-fun b!1251113 () Bool)

(declare-fun e!710430 () Bool)

(assert (=> b!1251113 (= e!710432 (not e!710430))))

(declare-fun res!834562 () Bool)

(assert (=> b!1251113 (=> res!834562 e!710430)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1251113 (= res!834562 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!564630 () ListLongMap!18511)

(declare-fun lt!564628 () ListLongMap!18511)

(assert (=> b!1251113 (= lt!564630 lt!564628)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47561)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47561)

(declare-fun minValueBefore!43 () V!47561)

(declare-fun lt!564629 () Unit!41517)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!964 (array!80941 array!80943 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47561 V!47561 V!47561 V!47561 (_ BitVec 32) Int) Unit!41517)

(assert (=> b!1251113 (= lt!564629 (lemmaNoChangeToArrayThenSameMapNoExtras!964 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5646 (array!80941 array!80943 (_ BitVec 32) (_ BitVec 32) V!47561 V!47561 (_ BitVec 32) Int) ListLongMap!18511)

(assert (=> b!1251113 (= lt!564628 (getCurrentListMapNoExtraKeys!5646 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1251113 (= lt!564630 (getCurrentListMapNoExtraKeys!5646 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1251114 () Bool)

(declare-fun mapRes!49237 () Bool)

(assert (=> b!1251114 (= e!710428 (and e!710426 mapRes!49237))))

(declare-fun condMapEmpty!49237 () Bool)

(declare-fun mapDefault!49237 () ValueCell!15060)

(assert (=> b!1251114 (= condMapEmpty!49237 (= (arr!39032 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15060)) mapDefault!49237)))))

(declare-fun mapNonEmpty!49237 () Bool)

(declare-fun tp!93731 () Bool)

(assert (=> mapNonEmpty!49237 (= mapRes!49237 (and tp!93731 e!710427))))

(declare-fun mapKey!49237 () (_ BitVec 32))

(declare-fun mapValue!49237 () ValueCell!15060)

(declare-fun mapRest!49237 () (Array (_ BitVec 32) ValueCell!15060))

(assert (=> mapNonEmpty!49237 (= (arr!39032 _values!914) (store mapRest!49237 mapKey!49237 mapValue!49237))))

(declare-fun b!1251115 () Bool)

(declare-fun res!834558 () Bool)

(assert (=> b!1251115 (=> (not res!834558) (not e!710432))))

(declare-datatypes ((List!27880 0))(
  ( (Nil!27877) (Cons!27876 (h!29085 (_ BitVec 64)) (t!41362 List!27880)) )
))
(declare-fun arrayNoDuplicates!0 (array!80941 (_ BitVec 32) List!27880) Bool)

(assert (=> b!1251115 (= res!834558 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27877))))

(declare-fun mapIsEmpty!49237 () Bool)

(assert (=> mapIsEmpty!49237 mapRes!49237))

(declare-fun b!1251116 () Bool)

(declare-fun res!834561 () Bool)

(assert (=> b!1251116 (=> (not res!834561) (not e!710432))))

(assert (=> b!1251116 (= res!834561 (and (= (size!39569 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39568 _keys!1118) (size!39569 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1251117 () Bool)

(assert (=> b!1251117 (= e!710430 e!710429)))

(declare-fun res!834559 () Bool)

(assert (=> b!1251117 (=> res!834559 e!710429)))

(declare-fun contains!7522 (ListLongMap!18511 (_ BitVec 64)) Bool)

(assert (=> b!1251117 (= res!834559 (contains!7522 lt!564631 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun getCurrentListMap!4487 (array!80941 array!80943 (_ BitVec 32) (_ BitVec 32) V!47561 V!47561 (_ BitVec 32) Int) ListLongMap!18511)

(assert (=> b!1251117 (= lt!564631 (getCurrentListMap!4487 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (= (and start!105012 res!834560) b!1251116))

(assert (= (and b!1251116 res!834561) b!1251111))

(assert (= (and b!1251111 res!834563) b!1251115))

(assert (= (and b!1251115 res!834558) b!1251113))

(assert (= (and b!1251113 (not res!834562)) b!1251117))

(assert (= (and b!1251117 (not res!834559)) b!1251110))

(assert (= (and b!1251114 condMapEmpty!49237) mapIsEmpty!49237))

(assert (= (and b!1251114 (not condMapEmpty!49237)) mapNonEmpty!49237))

(get-info :version)

(assert (= (and mapNonEmpty!49237 ((_ is ValueCellFull!15060) mapValue!49237)) b!1251112))

(assert (= (and b!1251114 ((_ is ValueCellFull!15060) mapDefault!49237)) b!1251109))

(assert (= start!105012 b!1251114))

(declare-fun m!1151929 () Bool)

(assert (=> b!1251110 m!1151929))

(declare-fun m!1151931 () Bool)

(assert (=> b!1251110 m!1151931))

(declare-fun m!1151933 () Bool)

(assert (=> b!1251111 m!1151933))

(declare-fun m!1151935 () Bool)

(assert (=> start!105012 m!1151935))

(declare-fun m!1151937 () Bool)

(assert (=> start!105012 m!1151937))

(declare-fun m!1151939 () Bool)

(assert (=> start!105012 m!1151939))

(declare-fun m!1151941 () Bool)

(assert (=> mapNonEmpty!49237 m!1151941))

(declare-fun m!1151943 () Bool)

(assert (=> b!1251113 m!1151943))

(declare-fun m!1151945 () Bool)

(assert (=> b!1251113 m!1151945))

(declare-fun m!1151947 () Bool)

(assert (=> b!1251113 m!1151947))

(declare-fun m!1151949 () Bool)

(assert (=> b!1251117 m!1151949))

(declare-fun m!1151951 () Bool)

(assert (=> b!1251117 m!1151951))

(declare-fun m!1151953 () Bool)

(assert (=> b!1251115 m!1151953))

(check-sat (not b!1251117) (not mapNonEmpty!49237) (not b!1251111) tp_is_empty!31647 (not b_next!26745) (not b!1251110) (not b!1251113) b_and!44541 (not b!1251115) (not start!105012))
(check-sat b_and!44541 (not b_next!26745))
