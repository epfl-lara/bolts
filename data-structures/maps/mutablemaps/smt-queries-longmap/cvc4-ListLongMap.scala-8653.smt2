; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105298 () Bool)

(assert start!105298)

(declare-fun b_free!26957 () Bool)

(declare-fun b_next!26957 () Bool)

(assert (=> start!105298 (= b_free!26957 (not b_next!26957))))

(declare-fun tp!94380 () Bool)

(declare-fun b_and!44793 () Bool)

(assert (=> start!105298 (= tp!94380 b_and!44793)))

(declare-fun mapNonEmpty!49567 () Bool)

(declare-fun mapRes!49567 () Bool)

(declare-fun tp!94379 () Bool)

(declare-fun e!712674 () Bool)

(assert (=> mapNonEmpty!49567 (= mapRes!49567 (and tp!94379 e!712674))))

(declare-fun mapKey!49567 () (_ BitVec 32))

(declare-datatypes ((V!47843 0))(
  ( (V!47844 (val!15992 Int)) )
))
(declare-datatypes ((ValueCell!15166 0))(
  ( (ValueCellFull!15166 (v!18691 V!47843)) (EmptyCell!15166) )
))
(declare-datatypes ((array!81353 0))(
  ( (array!81354 (arr!39233 (Array (_ BitVec 32) ValueCell!15166)) (size!39770 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81353)

(declare-fun mapValue!49567 () ValueCell!15166)

(declare-fun mapRest!49567 () (Array (_ BitVec 32) ValueCell!15166))

(assert (=> mapNonEmpty!49567 (= (arr!39233 _values!914) (store mapRest!49567 mapKey!49567 mapValue!49567))))

(declare-fun b!1254195 () Bool)

(declare-fun tp_is_empty!31859 () Bool)

(assert (=> b!1254195 (= e!712674 tp_is_empty!31859)))

(declare-fun b!1254196 () Bool)

(declare-fun e!712670 () Bool)

(assert (=> b!1254196 (= e!712670 tp_is_empty!31859)))

(declare-fun mapIsEmpty!49567 () Bool)

(assert (=> mapIsEmpty!49567 mapRes!49567))

(declare-fun b!1254197 () Bool)

(declare-fun res!836351 () Bool)

(declare-fun e!712672 () Bool)

(assert (=> b!1254197 (=> (not res!836351) (not e!712672))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!81355 0))(
  ( (array!81356 (arr!39234 (Array (_ BitVec 32) (_ BitVec 64))) (size!39771 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81355)

(assert (=> b!1254197 (= res!836351 (and (= (size!39770 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39771 _keys!1118) (size!39770 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun res!836348 () Bool)

(assert (=> start!105298 (=> (not res!836348) (not e!712672))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105298 (= res!836348 (validMask!0 mask!1466))))

(assert (=> start!105298 e!712672))

(assert (=> start!105298 true))

(assert (=> start!105298 tp!94380))

(assert (=> start!105298 tp_is_empty!31859))

(declare-fun array_inv!29845 (array!81355) Bool)

(assert (=> start!105298 (array_inv!29845 _keys!1118)))

(declare-fun e!712671 () Bool)

(declare-fun array_inv!29846 (array!81353) Bool)

(assert (=> start!105298 (and (array_inv!29846 _values!914) e!712671)))

(declare-fun b!1254198 () Bool)

(declare-fun e!712675 () Bool)

(assert (=> b!1254198 (= e!712672 (not e!712675))))

(declare-fun res!836352 () Bool)

(assert (=> b!1254198 (=> res!836352 e!712675)))

(assert (=> b!1254198 (= res!836352 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!20786 0))(
  ( (tuple2!20787 (_1!10403 (_ BitVec 64)) (_2!10403 V!47843)) )
))
(declare-datatypes ((List!28031 0))(
  ( (Nil!28028) (Cons!28027 (h!29236 tuple2!20786) (t!41521 List!28031)) )
))
(declare-datatypes ((ListLongMap!18671 0))(
  ( (ListLongMap!18672 (toList!9351 List!28031)) )
))
(declare-fun lt!566717 () ListLongMap!18671)

(declare-fun lt!566720 () ListLongMap!18671)

(assert (=> b!1254198 (= lt!566717 lt!566720)))

(declare-fun defaultEntry!922 () Int)

(declare-datatypes ((Unit!41674 0))(
  ( (Unit!41675) )
))
(declare-fun lt!566716 () Unit!41674)

(declare-fun minValueAfter!43 () V!47843)

(declare-fun zeroValue!871 () V!47843)

(declare-fun minValueBefore!43 () V!47843)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1035 (array!81355 array!81353 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47843 V!47843 V!47843 V!47843 (_ BitVec 32) Int) Unit!41674)

(assert (=> b!1254198 (= lt!566716 (lemmaNoChangeToArrayThenSameMapNoExtras!1035 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5717 (array!81355 array!81353 (_ BitVec 32) (_ BitVec 32) V!47843 V!47843 (_ BitVec 32) Int) ListLongMap!18671)

(assert (=> b!1254198 (= lt!566720 (getCurrentListMapNoExtraKeys!5717 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1254198 (= lt!566717 (getCurrentListMapNoExtraKeys!5717 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1254199 () Bool)

(assert (=> b!1254199 (= e!712675 true)))

(declare-fun lt!566714 () ListLongMap!18671)

(declare-fun lt!566719 () ListLongMap!18671)

(declare-fun -!2060 (ListLongMap!18671 (_ BitVec 64)) ListLongMap!18671)

(assert (=> b!1254199 (= lt!566714 (-!2060 lt!566719 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!566713 () ListLongMap!18671)

(assert (=> b!1254199 (= (-!2060 lt!566713 #b1000000000000000000000000000000000000000000000000000000000000000) lt!566717)))

(declare-fun lt!566718 () Unit!41674)

(declare-fun addThenRemoveForNewKeyIsSame!320 (ListLongMap!18671 (_ BitVec 64) V!47843) Unit!41674)

(assert (=> b!1254199 (= lt!566718 (addThenRemoveForNewKeyIsSame!320 lt!566717 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(declare-fun lt!566715 () ListLongMap!18671)

(assert (=> b!1254199 (and (= lt!566719 lt!566713) (= lt!566715 lt!566720))))

(declare-fun +!4151 (ListLongMap!18671 tuple2!20786) ListLongMap!18671)

(assert (=> b!1254199 (= lt!566713 (+!4151 lt!566717 (tuple2!20787 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun getCurrentListMap!4538 (array!81355 array!81353 (_ BitVec 32) (_ BitVec 32) V!47843 V!47843 (_ BitVec 32) Int) ListLongMap!18671)

(assert (=> b!1254199 (= lt!566715 (getCurrentListMap!4538 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1254199 (= lt!566719 (getCurrentListMap!4538 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1254200 () Bool)

(declare-fun res!836349 () Bool)

(assert (=> b!1254200 (=> (not res!836349) (not e!712672))))

(declare-datatypes ((List!28032 0))(
  ( (Nil!28029) (Cons!28028 (h!29237 (_ BitVec 64)) (t!41522 List!28032)) )
))
(declare-fun arrayNoDuplicates!0 (array!81355 (_ BitVec 32) List!28032) Bool)

(assert (=> b!1254200 (= res!836349 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28029))))

(declare-fun b!1254201 () Bool)

(assert (=> b!1254201 (= e!712671 (and e!712670 mapRes!49567))))

(declare-fun condMapEmpty!49567 () Bool)

(declare-fun mapDefault!49567 () ValueCell!15166)

