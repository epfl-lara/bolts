; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105252 () Bool)

(assert start!105252)

(declare-fun b_free!26933 () Bool)

(declare-fun b_next!26933 () Bool)

(assert (=> start!105252 (= b_free!26933 (not b_next!26933))))

(declare-fun tp!94304 () Bool)

(declare-fun b_and!44757 () Bool)

(assert (=> start!105252 (= tp!94304 b_and!44757)))

(declare-fun res!836086 () Bool)

(declare-fun e!712336 () Bool)

(assert (=> start!105252 (=> (not res!836086) (not e!712336))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105252 (= res!836086 (validMask!0 mask!1466))))

(assert (=> start!105252 e!712336))

(assert (=> start!105252 true))

(assert (=> start!105252 tp!94304))

(declare-fun tp_is_empty!31835 () Bool)

(assert (=> start!105252 tp_is_empty!31835))

(declare-datatypes ((array!81309 0))(
  ( (array!81310 (arr!39212 (Array (_ BitVec 32) (_ BitVec 64))) (size!39749 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81309)

(declare-fun array_inv!29833 (array!81309) Bool)

(assert (=> start!105252 (array_inv!29833 _keys!1118)))

(declare-datatypes ((V!47811 0))(
  ( (V!47812 (val!15980 Int)) )
))
(declare-datatypes ((ValueCell!15154 0))(
  ( (ValueCellFull!15154 (v!18678 V!47811)) (EmptyCell!15154) )
))
(declare-datatypes ((array!81311 0))(
  ( (array!81312 (arr!39213 (Array (_ BitVec 32) ValueCell!15154)) (size!39750 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81311)

(declare-fun e!712340 () Bool)

(declare-fun array_inv!29834 (array!81311) Bool)

(assert (=> start!105252 (and (array_inv!29834 _values!914) e!712340)))

(declare-fun mapIsEmpty!49528 () Bool)

(declare-fun mapRes!49528 () Bool)

(assert (=> mapIsEmpty!49528 mapRes!49528))

(declare-fun mapNonEmpty!49528 () Bool)

(declare-fun tp!94305 () Bool)

(declare-fun e!712339 () Bool)

(assert (=> mapNonEmpty!49528 (= mapRes!49528 (and tp!94305 e!712339))))

(declare-fun mapValue!49528 () ValueCell!15154)

(declare-fun mapKey!49528 () (_ BitVec 32))

(declare-fun mapRest!49528 () (Array (_ BitVec 32) ValueCell!15154))

(assert (=> mapNonEmpty!49528 (= (arr!39213 _values!914) (store mapRest!49528 mapKey!49528 mapValue!49528))))

(declare-fun b!1253723 () Bool)

(declare-fun e!712337 () Bool)

(assert (=> b!1253723 (= e!712337 true)))

(declare-datatypes ((tuple2!20774 0))(
  ( (tuple2!20775 (_1!10397 (_ BitVec 64)) (_2!10397 V!47811)) )
))
(declare-datatypes ((List!28020 0))(
  ( (Nil!28017) (Cons!28016 (h!29225 tuple2!20774) (t!41508 List!28020)) )
))
(declare-datatypes ((ListLongMap!18659 0))(
  ( (ListLongMap!18660 (toList!9345 List!28020)) )
))
(declare-fun lt!566288 () ListLongMap!18659)

(declare-fun lt!566293 () ListLongMap!18659)

(declare-fun -!2055 (ListLongMap!18659 (_ BitVec 64)) ListLongMap!18659)

(assert (=> b!1253723 (= lt!566288 (-!2055 lt!566293 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!566287 () ListLongMap!18659)

(declare-fun lt!566292 () ListLongMap!18659)

(assert (=> b!1253723 (= (-!2055 lt!566287 #b1000000000000000000000000000000000000000000000000000000000000000) lt!566292)))

(declare-datatypes ((Unit!41660 0))(
  ( (Unit!41661) )
))
(declare-fun lt!566294 () Unit!41660)

(declare-fun minValueBefore!43 () V!47811)

(declare-fun addThenRemoveForNewKeyIsSame!315 (ListLongMap!18659 (_ BitVec 64) V!47811) Unit!41660)

(assert (=> b!1253723 (= lt!566294 (addThenRemoveForNewKeyIsSame!315 lt!566292 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(declare-fun lt!566290 () ListLongMap!18659)

(declare-fun lt!566289 () ListLongMap!18659)

(assert (=> b!1253723 (and (= lt!566293 lt!566287) (= lt!566290 lt!566289))))

(declare-fun +!4146 (ListLongMap!18659 tuple2!20774) ListLongMap!18659)

(assert (=> b!1253723 (= lt!566287 (+!4146 lt!566292 (tuple2!20775 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47811)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47811)

(declare-fun getCurrentListMap!4533 (array!81309 array!81311 (_ BitVec 32) (_ BitVec 32) V!47811 V!47811 (_ BitVec 32) Int) ListLongMap!18659)

(assert (=> b!1253723 (= lt!566290 (getCurrentListMap!4533 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1253723 (= lt!566293 (getCurrentListMap!4533 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1253724 () Bool)

(assert (=> b!1253724 (= e!712336 (not e!712337))))

(declare-fun res!836088 () Bool)

(assert (=> b!1253724 (=> res!836088 e!712337)))

(assert (=> b!1253724 (= res!836088 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1253724 (= lt!566292 lt!566289)))

(declare-fun lt!566291 () Unit!41660)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1029 (array!81309 array!81311 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47811 V!47811 V!47811 V!47811 (_ BitVec 32) Int) Unit!41660)

(assert (=> b!1253724 (= lt!566291 (lemmaNoChangeToArrayThenSameMapNoExtras!1029 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5711 (array!81309 array!81311 (_ BitVec 32) (_ BitVec 32) V!47811 V!47811 (_ BitVec 32) Int) ListLongMap!18659)

(assert (=> b!1253724 (= lt!566289 (getCurrentListMapNoExtraKeys!5711 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1253724 (= lt!566292 (getCurrentListMapNoExtraKeys!5711 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1253725 () Bool)

(assert (=> b!1253725 (= e!712339 tp_is_empty!31835)))

(declare-fun b!1253726 () Bool)

(declare-fun e!712335 () Bool)

(assert (=> b!1253726 (= e!712340 (and e!712335 mapRes!49528))))

(declare-fun condMapEmpty!49528 () Bool)

(declare-fun mapDefault!49528 () ValueCell!15154)

