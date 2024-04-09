; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105082 () Bool)

(assert start!105082)

(declare-fun b_free!26793 () Bool)

(declare-fun b_next!26793 () Bool)

(assert (=> start!105082 (= b_free!26793 (not b_next!26793))))

(declare-fun tp!93879 () Bool)

(declare-fun b_and!44599 () Bool)

(assert (=> start!105082 (= tp!93879 b_and!44599)))

(declare-fun b!1251851 () Bool)

(declare-fun res!834990 () Bool)

(declare-fun e!710966 () Bool)

(assert (=> b!1251851 (=> (not res!834990) (not e!710966))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!81033 0))(
  ( (array!81034 (arr!39076 (Array (_ BitVec 32) (_ BitVec 64))) (size!39613 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81033)

(declare-datatypes ((V!47625 0))(
  ( (V!47626 (val!15910 Int)) )
))
(declare-datatypes ((ValueCell!15084 0))(
  ( (ValueCellFull!15084 (v!18608 V!47625)) (EmptyCell!15084) )
))
(declare-datatypes ((array!81035 0))(
  ( (array!81036 (arr!39077 (Array (_ BitVec 32) ValueCell!15084)) (size!39614 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81035)

(assert (=> b!1251851 (= res!834990 (and (= (size!39614 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39613 _keys!1118) (size!39614 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!49312 () Bool)

(declare-fun mapRes!49312 () Bool)

(assert (=> mapIsEmpty!49312 mapRes!49312))

(declare-fun b!1251852 () Bool)

(declare-fun res!834989 () Bool)

(assert (=> b!1251852 (=> (not res!834989) (not e!710966))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81033 (_ BitVec 32)) Bool)

(assert (=> b!1251852 (= res!834989 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1251853 () Bool)

(declare-fun e!710969 () Bool)

(declare-fun e!710968 () Bool)

(assert (=> b!1251853 (= e!710969 (and e!710968 mapRes!49312))))

(declare-fun condMapEmpty!49312 () Bool)

(declare-fun mapDefault!49312 () ValueCell!15084)

(assert (=> b!1251853 (= condMapEmpty!49312 (= (arr!39077 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15084)) mapDefault!49312)))))

(declare-fun mapNonEmpty!49312 () Bool)

(declare-fun tp!93878 () Bool)

(declare-fun e!710967 () Bool)

(assert (=> mapNonEmpty!49312 (= mapRes!49312 (and tp!93878 e!710967))))

(declare-fun mapKey!49312 () (_ BitVec 32))

(declare-fun mapValue!49312 () ValueCell!15084)

(declare-fun mapRest!49312 () (Array (_ BitVec 32) ValueCell!15084))

(assert (=> mapNonEmpty!49312 (= (arr!39077 _values!914) (store mapRest!49312 mapKey!49312 mapValue!49312))))

(declare-fun b!1251854 () Bool)

(declare-fun tp_is_empty!31695 () Bool)

(assert (=> b!1251854 (= e!710967 tp_is_empty!31695)))

(declare-fun res!834988 () Bool)

(assert (=> start!105082 (=> (not res!834988) (not e!710966))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105082 (= res!834988 (validMask!0 mask!1466))))

(assert (=> start!105082 e!710966))

(assert (=> start!105082 true))

(assert (=> start!105082 tp!93879))

(assert (=> start!105082 tp_is_empty!31695))

(declare-fun array_inv!29737 (array!81033) Bool)

(assert (=> start!105082 (array_inv!29737 _keys!1118)))

(declare-fun array_inv!29738 (array!81035) Bool)

(assert (=> start!105082 (and (array_inv!29738 _values!914) e!710969)))

(declare-fun b!1251850 () Bool)

(assert (=> b!1251850 (= e!710966 (not true))))

(declare-datatypes ((tuple2!20664 0))(
  ( (tuple2!20665 (_1!10342 (_ BitVec 64)) (_2!10342 V!47625)) )
))
(declare-datatypes ((List!27914 0))(
  ( (Nil!27911) (Cons!27910 (h!29119 tuple2!20664) (t!41398 List!27914)) )
))
(declare-datatypes ((ListLongMap!18549 0))(
  ( (ListLongMap!18550 (toList!9290 List!27914)) )
))
(declare-fun lt!565049 () ListLongMap!18549)

(declare-fun lt!565050 () ListLongMap!18549)

(assert (=> b!1251850 (= lt!565049 lt!565050)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47625)

(declare-fun zeroValue!871 () V!47625)

(declare-datatypes ((Unit!41557 0))(
  ( (Unit!41558) )
))
(declare-fun lt!565048 () Unit!41557)

(declare-fun minValueBefore!43 () V!47625)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!981 (array!81033 array!81035 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47625 V!47625 V!47625 V!47625 (_ BitVec 32) Int) Unit!41557)

(assert (=> b!1251850 (= lt!565048 (lemmaNoChangeToArrayThenSameMapNoExtras!981 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5663 (array!81033 array!81035 (_ BitVec 32) (_ BitVec 32) V!47625 V!47625 (_ BitVec 32) Int) ListLongMap!18549)

(assert (=> b!1251850 (= lt!565050 (getCurrentListMapNoExtraKeys!5663 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1251850 (= lt!565049 (getCurrentListMapNoExtraKeys!5663 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1251855 () Bool)

(declare-fun res!834987 () Bool)

(assert (=> b!1251855 (=> (not res!834987) (not e!710966))))

(declare-datatypes ((List!27915 0))(
  ( (Nil!27912) (Cons!27911 (h!29120 (_ BitVec 64)) (t!41399 List!27915)) )
))
(declare-fun arrayNoDuplicates!0 (array!81033 (_ BitVec 32) List!27915) Bool)

(assert (=> b!1251855 (= res!834987 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27912))))

(declare-fun b!1251856 () Bool)

(assert (=> b!1251856 (= e!710968 tp_is_empty!31695)))

(assert (= (and start!105082 res!834988) b!1251851))

(assert (= (and b!1251851 res!834990) b!1251852))

(assert (= (and b!1251852 res!834989) b!1251855))

(assert (= (and b!1251855 res!834987) b!1251850))

(assert (= (and b!1251853 condMapEmpty!49312) mapIsEmpty!49312))

(assert (= (and b!1251853 (not condMapEmpty!49312)) mapNonEmpty!49312))

(get-info :version)

(assert (= (and mapNonEmpty!49312 ((_ is ValueCellFull!15084) mapValue!49312)) b!1251854))

(assert (= (and b!1251853 ((_ is ValueCellFull!15084) mapDefault!49312)) b!1251856))

(assert (= start!105082 b!1251853))

(declare-fun m!1152599 () Bool)

(assert (=> mapNonEmpty!49312 m!1152599))

(declare-fun m!1152601 () Bool)

(assert (=> b!1251850 m!1152601))

(declare-fun m!1152603 () Bool)

(assert (=> b!1251850 m!1152603))

(declare-fun m!1152605 () Bool)

(assert (=> b!1251850 m!1152605))

(declare-fun m!1152607 () Bool)

(assert (=> b!1251852 m!1152607))

(declare-fun m!1152609 () Bool)

(assert (=> b!1251855 m!1152609))

(declare-fun m!1152611 () Bool)

(assert (=> start!105082 m!1152611))

(declare-fun m!1152613 () Bool)

(assert (=> start!105082 m!1152613))

(declare-fun m!1152615 () Bool)

(assert (=> start!105082 m!1152615))

(check-sat (not b!1251852) (not b_next!26793) (not b!1251850) (not b!1251855) tp_is_empty!31695 b_and!44599 (not mapNonEmpty!49312) (not start!105082))
(check-sat b_and!44599 (not b_next!26793))
