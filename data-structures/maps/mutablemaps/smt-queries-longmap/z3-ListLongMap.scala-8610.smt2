; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104942 () Bool)

(assert start!104942)

(declare-fun b_free!26697 () Bool)

(declare-fun b_next!26697 () Bool)

(assert (=> start!104942 (= b_free!26697 (not b_next!26697))))

(declare-fun tp!93584 () Bool)

(declare-fun b_and!44483 () Bool)

(assert (=> start!104942 (= tp!93584 b_and!44483)))

(declare-fun res!834067 () Bool)

(declare-fun e!709828 () Bool)

(assert (=> start!104942 (=> (not res!834067) (not e!709828))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104942 (= res!834067 (validMask!0 mask!1466))))

(assert (=> start!104942 e!709828))

(assert (=> start!104942 true))

(assert (=> start!104942 tp!93584))

(declare-fun tp_is_empty!31599 () Bool)

(assert (=> start!104942 tp_is_empty!31599))

(declare-datatypes ((array!80847 0))(
  ( (array!80848 (arr!38985 (Array (_ BitVec 32) (_ BitVec 64))) (size!39522 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80847)

(declare-fun array_inv!29673 (array!80847) Bool)

(assert (=> start!104942 (array_inv!29673 _keys!1118)))

(declare-datatypes ((V!47497 0))(
  ( (V!47498 (val!15862 Int)) )
))
(declare-datatypes ((ValueCell!15036 0))(
  ( (ValueCellFull!15036 (v!18558 V!47497)) (EmptyCell!15036) )
))
(declare-datatypes ((array!80849 0))(
  ( (array!80850 (arr!38986 (Array (_ BitVec 32) ValueCell!15036)) (size!39523 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80849)

(declare-fun e!709827 () Bool)

(declare-fun array_inv!29674 (array!80849) Bool)

(assert (=> start!104942 (and (array_inv!29674 _values!914) e!709827)))

(declare-fun b!1250304 () Bool)

(declare-fun e!709825 () Bool)

(assert (=> b!1250304 (= e!709825 tp_is_empty!31599)))

(declare-fun b!1250305 () Bool)

(declare-fun e!709826 () Bool)

(assert (=> b!1250305 (= e!709826 tp_is_empty!31599)))

(declare-fun mapNonEmpty!49162 () Bool)

(declare-fun mapRes!49162 () Bool)

(declare-fun tp!93585 () Bool)

(assert (=> mapNonEmpty!49162 (= mapRes!49162 (and tp!93585 e!709826))))

(declare-fun mapKey!49162 () (_ BitVec 32))

(declare-fun mapRest!49162 () (Array (_ BitVec 32) ValueCell!15036))

(declare-fun mapValue!49162 () ValueCell!15036)

(assert (=> mapNonEmpty!49162 (= (arr!38986 _values!914) (store mapRest!49162 mapKey!49162 mapValue!49162))))

(declare-fun b!1250306 () Bool)

(declare-fun e!709823 () Bool)

(declare-fun e!709822 () Bool)

(assert (=> b!1250306 (= e!709823 e!709822)))

(declare-fun res!834070 () Bool)

(assert (=> b!1250306 (=> res!834070 e!709822)))

(declare-datatypes ((tuple2!20582 0))(
  ( (tuple2!20583 (_1!10301 (_ BitVec 64)) (_2!10301 V!47497)) )
))
(declare-datatypes ((List!27840 0))(
  ( (Nil!27837) (Cons!27836 (h!29045 tuple2!20582) (t!41320 List!27840)) )
))
(declare-datatypes ((ListLongMap!18467 0))(
  ( (ListLongMap!18468 (toList!9249 List!27840)) )
))
(declare-fun lt!564144 () ListLongMap!18467)

(declare-fun contains!7502 (ListLongMap!18467 (_ BitVec 64)) Bool)

(assert (=> b!1250306 (= res!834070 (contains!7502 lt!564144 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!922 () Int)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47497)

(declare-fun minValueBefore!43 () V!47497)

(declare-fun getCurrentListMap!4468 (array!80847 array!80849 (_ BitVec 32) (_ BitVec 32) V!47497 V!47497 (_ BitVec 32) Int) ListLongMap!18467)

(assert (=> b!1250306 (= lt!564144 (getCurrentListMap!4468 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapIsEmpty!49162 () Bool)

(assert (=> mapIsEmpty!49162 mapRes!49162))

(declare-fun b!1250307 () Bool)

(declare-fun res!834066 () Bool)

(assert (=> b!1250307 (=> (not res!834066) (not e!709828))))

(declare-datatypes ((List!27841 0))(
  ( (Nil!27838) (Cons!27837 (h!29046 (_ BitVec 64)) (t!41321 List!27841)) )
))
(declare-fun arrayNoDuplicates!0 (array!80847 (_ BitVec 32) List!27841) Bool)

(assert (=> b!1250307 (= res!834066 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27838))))

(declare-fun b!1250308 () Bool)

(declare-fun res!834069 () Bool)

(assert (=> b!1250308 (=> (not res!834069) (not e!709828))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80847 (_ BitVec 32)) Bool)

(assert (=> b!1250308 (= res!834069 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1250309 () Bool)

(assert (=> b!1250309 (= e!709827 (and e!709825 mapRes!49162))))

(declare-fun condMapEmpty!49162 () Bool)

(declare-fun mapDefault!49162 () ValueCell!15036)

(assert (=> b!1250309 (= condMapEmpty!49162 (= (arr!38986 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15036)) mapDefault!49162)))))

(declare-fun b!1250310 () Bool)

(assert (=> b!1250310 (= e!709828 (not e!709823))))

(declare-fun res!834065 () Bool)

(assert (=> b!1250310 (=> res!834065 e!709823)))

(assert (=> b!1250310 (= res!834065 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!564148 () ListLongMap!18467)

(declare-fun lt!564147 () ListLongMap!18467)

(assert (=> b!1250310 (= lt!564148 lt!564147)))

(declare-fun minValueAfter!43 () V!47497)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((Unit!41479 0))(
  ( (Unit!41480) )
))
(declare-fun lt!564146 () Unit!41479)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!948 (array!80847 array!80849 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47497 V!47497 V!47497 V!47497 (_ BitVec 32) Int) Unit!41479)

(assert (=> b!1250310 (= lt!564146 (lemmaNoChangeToArrayThenSameMapNoExtras!948 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5630 (array!80847 array!80849 (_ BitVec 32) (_ BitVec 32) V!47497 V!47497 (_ BitVec 32) Int) ListLongMap!18467)

(assert (=> b!1250310 (= lt!564147 (getCurrentListMapNoExtraKeys!5630 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1250310 (= lt!564148 (getCurrentListMapNoExtraKeys!5630 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1250311 () Bool)

(declare-fun res!834068 () Bool)

(assert (=> b!1250311 (=> (not res!834068) (not e!709828))))

(assert (=> b!1250311 (= res!834068 (and (= (size!39523 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39522 _keys!1118) (size!39523 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1250312 () Bool)

(assert (=> b!1250312 (= e!709822 true)))

(declare-fun -!2017 (ListLongMap!18467 (_ BitVec 64)) ListLongMap!18467)

(assert (=> b!1250312 (= (-!2017 lt!564144 #b1000000000000000000000000000000000000000000000000000000000000000) lt!564144)))

(declare-fun lt!564145 () Unit!41479)

(declare-fun removeNotPresentStillSame!84 (ListLongMap!18467 (_ BitVec 64)) Unit!41479)

(assert (=> b!1250312 (= lt!564145 (removeNotPresentStillSame!84 lt!564144 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!104942 res!834067) b!1250311))

(assert (= (and b!1250311 res!834068) b!1250308))

(assert (= (and b!1250308 res!834069) b!1250307))

(assert (= (and b!1250307 res!834066) b!1250310))

(assert (= (and b!1250310 (not res!834065)) b!1250306))

(assert (= (and b!1250306 (not res!834070)) b!1250312))

(assert (= (and b!1250309 condMapEmpty!49162) mapIsEmpty!49162))

(assert (= (and b!1250309 (not condMapEmpty!49162)) mapNonEmpty!49162))

(get-info :version)

(assert (= (and mapNonEmpty!49162 ((_ is ValueCellFull!15036) mapValue!49162)) b!1250305))

(assert (= (and b!1250309 ((_ is ValueCellFull!15036) mapDefault!49162)) b!1250304))

(assert (= start!104942 b!1250309))

(declare-fun m!1151179 () Bool)

(assert (=> b!1250306 m!1151179))

(declare-fun m!1151181 () Bool)

(assert (=> b!1250306 m!1151181))

(declare-fun m!1151183 () Bool)

(assert (=> b!1250307 m!1151183))

(declare-fun m!1151185 () Bool)

(assert (=> b!1250308 m!1151185))

(declare-fun m!1151187 () Bool)

(assert (=> b!1250312 m!1151187))

(declare-fun m!1151189 () Bool)

(assert (=> b!1250312 m!1151189))

(declare-fun m!1151191 () Bool)

(assert (=> b!1250310 m!1151191))

(declare-fun m!1151193 () Bool)

(assert (=> b!1250310 m!1151193))

(declare-fun m!1151195 () Bool)

(assert (=> b!1250310 m!1151195))

(declare-fun m!1151197 () Bool)

(assert (=> mapNonEmpty!49162 m!1151197))

(declare-fun m!1151199 () Bool)

(assert (=> start!104942 m!1151199))

(declare-fun m!1151201 () Bool)

(assert (=> start!104942 m!1151201))

(declare-fun m!1151203 () Bool)

(assert (=> start!104942 m!1151203))

(check-sat (not b!1250306) tp_is_empty!31599 (not start!104942) (not b!1250307) (not b!1250312) (not b!1250308) (not b!1250310) (not mapNonEmpty!49162) b_and!44483 (not b_next!26697))
(check-sat b_and!44483 (not b_next!26697))
