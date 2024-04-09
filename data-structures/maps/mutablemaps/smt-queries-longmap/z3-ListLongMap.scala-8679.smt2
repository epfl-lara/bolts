; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105510 () Bool)

(assert start!105510)

(declare-fun b_free!27111 () Bool)

(declare-fun b_next!27111 () Bool)

(assert (=> start!105510 (= b_free!27111 (not b_next!27111))))

(declare-fun tp!94850 () Bool)

(declare-fun b_and!44977 () Bool)

(assert (=> start!105510 (= tp!94850 b_and!44977)))

(declare-fun b!1256474 () Bool)

(declare-fun e!714338 () Bool)

(assert (=> b!1256474 (= e!714338 true)))

(declare-datatypes ((V!48049 0))(
  ( (V!48050 (val!16069 Int)) )
))
(declare-datatypes ((tuple2!20910 0))(
  ( (tuple2!20911 (_1!10465 (_ BitVec 64)) (_2!10465 V!48049)) )
))
(declare-datatypes ((List!28144 0))(
  ( (Nil!28141) (Cons!28140 (h!29349 tuple2!20910) (t!41640 List!28144)) )
))
(declare-datatypes ((ListLongMap!18795 0))(
  ( (ListLongMap!18796 (toList!9413 List!28144)) )
))
(declare-fun lt!568164 () ListLongMap!18795)

(declare-fun -!2092 (ListLongMap!18795 (_ BitVec 64)) ListLongMap!18795)

(assert (=> b!1256474 (= (-!2092 lt!568164 #b1000000000000000000000000000000000000000000000000000000000000000) lt!568164)))

(declare-datatypes ((Unit!41798 0))(
  ( (Unit!41799) )
))
(declare-fun lt!568168 () Unit!41798)

(declare-fun removeNotPresentStillSame!125 (ListLongMap!18795 (_ BitVec 64)) Unit!41798)

(assert (=> b!1256474 (= lt!568168 (removeNotPresentStillSame!125 lt!568164 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1256475 () Bool)

(declare-fun e!714339 () Bool)

(declare-fun tp_is_empty!32013 () Bool)

(assert (=> b!1256475 (= e!714339 tp_is_empty!32013)))

(declare-fun b!1256476 () Bool)

(declare-fun e!714341 () Bool)

(declare-fun e!714336 () Bool)

(assert (=> b!1256476 (= e!714341 (not e!714336))))

(declare-fun res!837683 () Bool)

(assert (=> b!1256476 (=> res!837683 e!714336)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1256476 (= res!837683 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!568165 () ListLongMap!18795)

(declare-fun lt!568167 () ListLongMap!18795)

(assert (=> b!1256476 (= lt!568165 lt!568167)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48049)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!48049)

(declare-datatypes ((array!81661 0))(
  ( (array!81662 (arr!39384 (Array (_ BitVec 32) (_ BitVec 64))) (size!39921 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81661)

(declare-datatypes ((ValueCell!15243 0))(
  ( (ValueCellFull!15243 (v!18770 V!48049)) (EmptyCell!15243) )
))
(declare-datatypes ((array!81663 0))(
  ( (array!81664 (arr!39385 (Array (_ BitVec 32) ValueCell!15243)) (size!39922 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81663)

(declare-fun minValueBefore!43 () V!48049)

(declare-fun lt!568166 () Unit!41798)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1086 (array!81661 array!81663 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48049 V!48049 V!48049 V!48049 (_ BitVec 32) Int) Unit!41798)

(assert (=> b!1256476 (= lt!568166 (lemmaNoChangeToArrayThenSameMapNoExtras!1086 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5768 (array!81661 array!81663 (_ BitVec 32) (_ BitVec 32) V!48049 V!48049 (_ BitVec 32) Int) ListLongMap!18795)

(assert (=> b!1256476 (= lt!568167 (getCurrentListMapNoExtraKeys!5768 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1256476 (= lt!568165 (getCurrentListMapNoExtraKeys!5768 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapNonEmpty!49807 () Bool)

(declare-fun mapRes!49807 () Bool)

(declare-fun tp!94851 () Bool)

(assert (=> mapNonEmpty!49807 (= mapRes!49807 (and tp!94851 e!714339))))

(declare-fun mapRest!49807 () (Array (_ BitVec 32) ValueCell!15243))

(declare-fun mapValue!49807 () ValueCell!15243)

(declare-fun mapKey!49807 () (_ BitVec 32))

(assert (=> mapNonEmpty!49807 (= (arr!39385 _values!914) (store mapRest!49807 mapKey!49807 mapValue!49807))))

(declare-fun b!1256477 () Bool)

(declare-fun res!837685 () Bool)

(assert (=> b!1256477 (=> (not res!837685) (not e!714341))))

(declare-datatypes ((List!28145 0))(
  ( (Nil!28142) (Cons!28141 (h!29350 (_ BitVec 64)) (t!41641 List!28145)) )
))
(declare-fun arrayNoDuplicates!0 (array!81661 (_ BitVec 32) List!28145) Bool)

(assert (=> b!1256477 (= res!837685 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28142))))

(declare-fun b!1256478 () Bool)

(declare-fun res!837684 () Bool)

(assert (=> b!1256478 (=> (not res!837684) (not e!714341))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81661 (_ BitVec 32)) Bool)

(assert (=> b!1256478 (= res!837684 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1256479 () Bool)

(assert (=> b!1256479 (= e!714336 e!714338)))

(declare-fun res!837682 () Bool)

(assert (=> b!1256479 (=> res!837682 e!714338)))

(declare-fun contains!7570 (ListLongMap!18795 (_ BitVec 64)) Bool)

(assert (=> b!1256479 (= res!837682 (contains!7570 lt!568164 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun getCurrentListMap!4574 (array!81661 array!81663 (_ BitVec 32) (_ BitVec 32) V!48049 V!48049 (_ BitVec 32) Int) ListLongMap!18795)

(assert (=> b!1256479 (= lt!568164 (getCurrentListMap!4574 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun res!837687 () Bool)

(assert (=> start!105510 (=> (not res!837687) (not e!714341))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105510 (= res!837687 (validMask!0 mask!1466))))

(assert (=> start!105510 e!714341))

(assert (=> start!105510 true))

(assert (=> start!105510 tp!94850))

(assert (=> start!105510 tp_is_empty!32013))

(declare-fun array_inv!29949 (array!81661) Bool)

(assert (=> start!105510 (array_inv!29949 _keys!1118)))

(declare-fun e!714335 () Bool)

(declare-fun array_inv!29950 (array!81663) Bool)

(assert (=> start!105510 (and (array_inv!29950 _values!914) e!714335)))

(declare-fun mapIsEmpty!49807 () Bool)

(assert (=> mapIsEmpty!49807 mapRes!49807))

(declare-fun b!1256480 () Bool)

(declare-fun e!714337 () Bool)

(assert (=> b!1256480 (= e!714335 (and e!714337 mapRes!49807))))

(declare-fun condMapEmpty!49807 () Bool)

(declare-fun mapDefault!49807 () ValueCell!15243)

(assert (=> b!1256480 (= condMapEmpty!49807 (= (arr!39385 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15243)) mapDefault!49807)))))

(declare-fun b!1256481 () Bool)

(declare-fun res!837686 () Bool)

(assert (=> b!1256481 (=> (not res!837686) (not e!714341))))

(assert (=> b!1256481 (= res!837686 (and (= (size!39922 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39921 _keys!1118) (size!39922 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1256482 () Bool)

(assert (=> b!1256482 (= e!714337 tp_is_empty!32013)))

(assert (= (and start!105510 res!837687) b!1256481))

(assert (= (and b!1256481 res!837686) b!1256478))

(assert (= (and b!1256478 res!837684) b!1256477))

(assert (= (and b!1256477 res!837685) b!1256476))

(assert (= (and b!1256476 (not res!837683)) b!1256479))

(assert (= (and b!1256479 (not res!837682)) b!1256474))

(assert (= (and b!1256480 condMapEmpty!49807) mapIsEmpty!49807))

(assert (= (and b!1256480 (not condMapEmpty!49807)) mapNonEmpty!49807))

(get-info :version)

(assert (= (and mapNonEmpty!49807 ((_ is ValueCellFull!15243) mapValue!49807)) b!1256475))

(assert (= (and b!1256480 ((_ is ValueCellFull!15243) mapDefault!49807)) b!1256482))

(assert (= start!105510 b!1256480))

(declare-fun m!1157161 () Bool)

(assert (=> b!1256476 m!1157161))

(declare-fun m!1157163 () Bool)

(assert (=> b!1256476 m!1157163))

(declare-fun m!1157165 () Bool)

(assert (=> b!1256476 m!1157165))

(declare-fun m!1157167 () Bool)

(assert (=> b!1256479 m!1157167))

(declare-fun m!1157169 () Bool)

(assert (=> b!1256479 m!1157169))

(declare-fun m!1157171 () Bool)

(assert (=> b!1256477 m!1157171))

(declare-fun m!1157173 () Bool)

(assert (=> b!1256474 m!1157173))

(declare-fun m!1157175 () Bool)

(assert (=> b!1256474 m!1157175))

(declare-fun m!1157177 () Bool)

(assert (=> mapNonEmpty!49807 m!1157177))

(declare-fun m!1157179 () Bool)

(assert (=> start!105510 m!1157179))

(declare-fun m!1157181 () Bool)

(assert (=> start!105510 m!1157181))

(declare-fun m!1157183 () Bool)

(assert (=> start!105510 m!1157183))

(declare-fun m!1157185 () Bool)

(assert (=> b!1256478 m!1157185))

(check-sat (not b_next!27111) (not b!1256478) (not b!1256474) tp_is_empty!32013 (not b!1256479) (not start!105510) b_and!44977 (not mapNonEmpty!49807) (not b!1256477) (not b!1256476))
(check-sat b_and!44977 (not b_next!27111))
