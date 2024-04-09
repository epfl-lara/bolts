; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105514 () Bool)

(assert start!105514)

(declare-fun b_free!27115 () Bool)

(declare-fun b_next!27115 () Bool)

(assert (=> start!105514 (= b_free!27115 (not b_next!27115))))

(declare-fun tp!94862 () Bool)

(declare-fun b_and!44981 () Bool)

(assert (=> start!105514 (= tp!94862 b_and!44981)))

(declare-fun mapIsEmpty!49813 () Bool)

(declare-fun mapRes!49813 () Bool)

(assert (=> mapIsEmpty!49813 mapRes!49813))

(declare-fun res!837723 () Bool)

(declare-fun e!714380 () Bool)

(assert (=> start!105514 (=> (not res!837723) (not e!714380))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105514 (= res!837723 (validMask!0 mask!1466))))

(assert (=> start!105514 e!714380))

(assert (=> start!105514 true))

(assert (=> start!105514 tp!94862))

(declare-fun tp_is_empty!32017 () Bool)

(assert (=> start!105514 tp_is_empty!32017))

(declare-datatypes ((array!81669 0))(
  ( (array!81670 (arr!39388 (Array (_ BitVec 32) (_ BitVec 64))) (size!39925 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81669)

(declare-fun array_inv!29953 (array!81669) Bool)

(assert (=> start!105514 (array_inv!29953 _keys!1118)))

(declare-datatypes ((V!48055 0))(
  ( (V!48056 (val!16071 Int)) )
))
(declare-datatypes ((ValueCell!15245 0))(
  ( (ValueCellFull!15245 (v!18772 V!48055)) (EmptyCell!15245) )
))
(declare-datatypes ((array!81671 0))(
  ( (array!81672 (arr!39389 (Array (_ BitVec 32) ValueCell!15245)) (size!39926 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81671)

(declare-fun e!714377 () Bool)

(declare-fun array_inv!29954 (array!81671) Bool)

(assert (=> start!105514 (and (array_inv!29954 _values!914) e!714377)))

(declare-fun b!1256528 () Bool)

(declare-fun e!714382 () Bool)

(assert (=> b!1256528 (= e!714380 (not e!714382))))

(declare-fun res!837718 () Bool)

(assert (=> b!1256528 (=> res!837718 e!714382)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1256528 (= res!837718 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!20912 0))(
  ( (tuple2!20913 (_1!10466 (_ BitVec 64)) (_2!10466 V!48055)) )
))
(declare-datatypes ((List!28147 0))(
  ( (Nil!28144) (Cons!28143 (h!29352 tuple2!20912) (t!41643 List!28147)) )
))
(declare-datatypes ((ListLongMap!18797 0))(
  ( (ListLongMap!18798 (toList!9414 List!28147)) )
))
(declare-fun lt!568195 () ListLongMap!18797)

(declare-fun lt!568198 () ListLongMap!18797)

(assert (=> b!1256528 (= lt!568195 lt!568198)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48055)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun minValueBefore!43 () V!48055)

(declare-datatypes ((Unit!41800 0))(
  ( (Unit!41801) )
))
(declare-fun lt!568196 () Unit!41800)

(declare-fun zeroValue!871 () V!48055)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1087 (array!81669 array!81671 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48055 V!48055 V!48055 V!48055 (_ BitVec 32) Int) Unit!41800)

(assert (=> b!1256528 (= lt!568196 (lemmaNoChangeToArrayThenSameMapNoExtras!1087 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5769 (array!81669 array!81671 (_ BitVec 32) (_ BitVec 32) V!48055 V!48055 (_ BitVec 32) Int) ListLongMap!18797)

(assert (=> b!1256528 (= lt!568198 (getCurrentListMapNoExtraKeys!5769 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1256528 (= lt!568195 (getCurrentListMapNoExtraKeys!5769 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapNonEmpty!49813 () Bool)

(declare-fun tp!94863 () Bool)

(declare-fun e!714383 () Bool)

(assert (=> mapNonEmpty!49813 (= mapRes!49813 (and tp!94863 e!714383))))

(declare-fun mapValue!49813 () ValueCell!15245)

(declare-fun mapRest!49813 () (Array (_ BitVec 32) ValueCell!15245))

(declare-fun mapKey!49813 () (_ BitVec 32))

(assert (=> mapNonEmpty!49813 (= (arr!39389 _values!914) (store mapRest!49813 mapKey!49813 mapValue!49813))))

(declare-fun b!1256529 () Bool)

(declare-fun e!714381 () Bool)

(assert (=> b!1256529 (= e!714381 tp_is_empty!32017)))

(declare-fun b!1256530 () Bool)

(assert (=> b!1256530 (= e!714377 (and e!714381 mapRes!49813))))

(declare-fun condMapEmpty!49813 () Bool)

(declare-fun mapDefault!49813 () ValueCell!15245)

