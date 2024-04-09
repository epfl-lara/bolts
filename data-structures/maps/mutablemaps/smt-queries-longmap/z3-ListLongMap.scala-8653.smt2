; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105296 () Bool)

(assert start!105296)

(declare-fun b_free!26955 () Bool)

(declare-fun b_next!26955 () Bool)

(assert (=> start!105296 (= b_free!26955 (not b_next!26955))))

(declare-fun tp!94374 () Bool)

(declare-fun b_and!44791 () Bool)

(assert (=> start!105296 (= tp!94374 b_and!44791)))

(declare-fun b!1254171 () Bool)

(declare-fun res!836335 () Bool)

(declare-fun e!712653 () Bool)

(assert (=> b!1254171 (=> (not res!836335) (not e!712653))))

(declare-datatypes ((array!81349 0))(
  ( (array!81350 (arr!39231 (Array (_ BitVec 32) (_ BitVec 64))) (size!39768 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81349)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81349 (_ BitVec 32)) Bool)

(assert (=> b!1254171 (= res!836335 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1254172 () Bool)

(declare-fun e!712656 () Bool)

(assert (=> b!1254172 (= e!712653 (not e!712656))))

(declare-fun res!836334 () Bool)

(assert (=> b!1254172 (=> res!836334 e!712656)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1254172 (= res!836334 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!47841 0))(
  ( (V!47842 (val!15991 Int)) )
))
(declare-datatypes ((tuple2!20784 0))(
  ( (tuple2!20785 (_1!10402 (_ BitVec 64)) (_2!10402 V!47841)) )
))
(declare-datatypes ((List!28029 0))(
  ( (Nil!28026) (Cons!28025 (h!29234 tuple2!20784) (t!41519 List!28029)) )
))
(declare-datatypes ((ListLongMap!18669 0))(
  ( (ListLongMap!18670 (toList!9350 List!28029)) )
))
(declare-fun lt!566692 () ListLongMap!18669)

(declare-fun lt!566691 () ListLongMap!18669)

(assert (=> b!1254172 (= lt!566692 lt!566691)))

(declare-fun defaultEntry!922 () Int)

(declare-datatypes ((Unit!41672 0))(
  ( (Unit!41673) )
))
(declare-fun lt!566694 () Unit!41672)

(declare-fun minValueAfter!43 () V!47841)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47841)

(declare-datatypes ((ValueCell!15165 0))(
  ( (ValueCellFull!15165 (v!18690 V!47841)) (EmptyCell!15165) )
))
(declare-datatypes ((array!81351 0))(
  ( (array!81352 (arr!39232 (Array (_ BitVec 32) ValueCell!15165)) (size!39769 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81351)

(declare-fun minValueBefore!43 () V!47841)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1034 (array!81349 array!81351 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47841 V!47841 V!47841 V!47841 (_ BitVec 32) Int) Unit!41672)

(assert (=> b!1254172 (= lt!566694 (lemmaNoChangeToArrayThenSameMapNoExtras!1034 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5716 (array!81349 array!81351 (_ BitVec 32) (_ BitVec 32) V!47841 V!47841 (_ BitVec 32) Int) ListLongMap!18669)

(assert (=> b!1254172 (= lt!566691 (getCurrentListMapNoExtraKeys!5716 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1254172 (= lt!566692 (getCurrentListMapNoExtraKeys!5716 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1254173 () Bool)

(assert (=> b!1254173 (= e!712656 true)))

(declare-fun lt!566689 () ListLongMap!18669)

(declare-fun lt!566695 () ListLongMap!18669)

(declare-fun -!2059 (ListLongMap!18669 (_ BitVec 64)) ListLongMap!18669)

(assert (=> b!1254173 (= lt!566689 (-!2059 lt!566695 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!566693 () ListLongMap!18669)

(assert (=> b!1254173 (= (-!2059 lt!566693 #b1000000000000000000000000000000000000000000000000000000000000000) lt!566692)))

(declare-fun lt!566690 () Unit!41672)

(declare-fun addThenRemoveForNewKeyIsSame!319 (ListLongMap!18669 (_ BitVec 64) V!47841) Unit!41672)

(assert (=> b!1254173 (= lt!566690 (addThenRemoveForNewKeyIsSame!319 lt!566692 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(declare-fun lt!566696 () ListLongMap!18669)

(assert (=> b!1254173 (and (= lt!566695 lt!566693) (= lt!566696 lt!566691))))

(declare-fun +!4150 (ListLongMap!18669 tuple2!20784) ListLongMap!18669)

(assert (=> b!1254173 (= lt!566693 (+!4150 lt!566692 (tuple2!20785 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun getCurrentListMap!4537 (array!81349 array!81351 (_ BitVec 32) (_ BitVec 32) V!47841 V!47841 (_ BitVec 32) Int) ListLongMap!18669)

(assert (=> b!1254173 (= lt!566696 (getCurrentListMap!4537 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1254173 (= lt!566695 (getCurrentListMap!4537 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1254174 () Bool)

(declare-fun res!836336 () Bool)

(assert (=> b!1254174 (=> (not res!836336) (not e!712653))))

(assert (=> b!1254174 (= res!836336 (and (= (size!39769 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39768 _keys!1118) (size!39769 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!49564 () Bool)

(declare-fun mapRes!49564 () Bool)

(declare-fun tp!94373 () Bool)

(declare-fun e!712655 () Bool)

(assert (=> mapNonEmpty!49564 (= mapRes!49564 (and tp!94373 e!712655))))

(declare-fun mapRest!49564 () (Array (_ BitVec 32) ValueCell!15165))

(declare-fun mapValue!49564 () ValueCell!15165)

(declare-fun mapKey!49564 () (_ BitVec 32))

(assert (=> mapNonEmpty!49564 (= (arr!39232 _values!914) (store mapRest!49564 mapKey!49564 mapValue!49564))))

(declare-fun mapIsEmpty!49564 () Bool)

(assert (=> mapIsEmpty!49564 mapRes!49564))

(declare-fun b!1254175 () Bool)

(declare-fun tp_is_empty!31857 () Bool)

(assert (=> b!1254175 (= e!712655 tp_is_empty!31857)))

(declare-fun res!836337 () Bool)

(assert (=> start!105296 (=> (not res!836337) (not e!712653))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105296 (= res!836337 (validMask!0 mask!1466))))

(assert (=> start!105296 e!712653))

(assert (=> start!105296 true))

(assert (=> start!105296 tp!94374))

(assert (=> start!105296 tp_is_empty!31857))

(declare-fun array_inv!29843 (array!81349) Bool)

(assert (=> start!105296 (array_inv!29843 _keys!1118)))

(declare-fun e!712657 () Bool)

(declare-fun array_inv!29844 (array!81351) Bool)

(assert (=> start!105296 (and (array_inv!29844 _values!914) e!712657)))

(declare-fun b!1254176 () Bool)

(declare-fun e!712654 () Bool)

(assert (=> b!1254176 (= e!712657 (and e!712654 mapRes!49564))))

(declare-fun condMapEmpty!49564 () Bool)

(declare-fun mapDefault!49564 () ValueCell!15165)

(assert (=> b!1254176 (= condMapEmpty!49564 (= (arr!39232 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15165)) mapDefault!49564)))))

(declare-fun b!1254177 () Bool)

(declare-fun res!836333 () Bool)

(assert (=> b!1254177 (=> (not res!836333) (not e!712653))))

(declare-datatypes ((List!28030 0))(
  ( (Nil!28027) (Cons!28026 (h!29235 (_ BitVec 64)) (t!41520 List!28030)) )
))
(declare-fun arrayNoDuplicates!0 (array!81349 (_ BitVec 32) List!28030) Bool)

(assert (=> b!1254177 (= res!836333 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28027))))

(declare-fun b!1254178 () Bool)

(assert (=> b!1254178 (= e!712654 tp_is_empty!31857)))

(assert (= (and start!105296 res!836337) b!1254174))

(assert (= (and b!1254174 res!836336) b!1254171))

(assert (= (and b!1254171 res!836335) b!1254177))

(assert (= (and b!1254177 res!836333) b!1254172))

(assert (= (and b!1254172 (not res!836334)) b!1254173))

(assert (= (and b!1254176 condMapEmpty!49564) mapIsEmpty!49564))

(assert (= (and b!1254176 (not condMapEmpty!49564)) mapNonEmpty!49564))

(get-info :version)

(assert (= (and mapNonEmpty!49564 ((_ is ValueCellFull!15165) mapValue!49564)) b!1254175))

(assert (= (and b!1254176 ((_ is ValueCellFull!15165) mapDefault!49564)) b!1254178))

(assert (= start!105296 b!1254176))

(declare-fun m!1154905 () Bool)

(assert (=> b!1254177 m!1154905))

(declare-fun m!1154907 () Bool)

(assert (=> start!105296 m!1154907))

(declare-fun m!1154909 () Bool)

(assert (=> start!105296 m!1154909))

(declare-fun m!1154911 () Bool)

(assert (=> start!105296 m!1154911))

(declare-fun m!1154913 () Bool)

(assert (=> b!1254173 m!1154913))

(declare-fun m!1154915 () Bool)

(assert (=> b!1254173 m!1154915))

(declare-fun m!1154917 () Bool)

(assert (=> b!1254173 m!1154917))

(declare-fun m!1154919 () Bool)

(assert (=> b!1254173 m!1154919))

(declare-fun m!1154921 () Bool)

(assert (=> b!1254173 m!1154921))

(declare-fun m!1154923 () Bool)

(assert (=> b!1254173 m!1154923))

(declare-fun m!1154925 () Bool)

(assert (=> b!1254172 m!1154925))

(declare-fun m!1154927 () Bool)

(assert (=> b!1254172 m!1154927))

(declare-fun m!1154929 () Bool)

(assert (=> b!1254172 m!1154929))

(declare-fun m!1154931 () Bool)

(assert (=> mapNonEmpty!49564 m!1154931))

(declare-fun m!1154933 () Bool)

(assert (=> b!1254171 m!1154933))

(check-sat (not mapNonEmpty!49564) (not start!105296) (not b!1254172) (not b!1254171) b_and!44791 (not b!1254173) (not b!1254177) tp_is_empty!31857 (not b_next!26955))
(check-sat b_and!44791 (not b_next!26955))
