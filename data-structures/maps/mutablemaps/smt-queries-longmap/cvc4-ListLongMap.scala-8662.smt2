; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105374 () Bool)

(assert start!105374)

(declare-fun b_free!27011 () Bool)

(declare-fun b_next!27011 () Bool)

(assert (=> start!105374 (= b_free!27011 (not b_next!27011))))

(declare-fun tp!94545 () Bool)

(declare-fun b_and!44859 () Bool)

(assert (=> start!105374 (= tp!94545 b_and!44859)))

(declare-fun mapIsEmpty!49651 () Bool)

(declare-fun mapRes!49651 () Bool)

(assert (=> mapIsEmpty!49651 mapRes!49651))

(declare-fun b!1255001 () Bool)

(declare-fun e!713253 () Bool)

(assert (=> b!1255001 (= e!713253 (not true))))

(declare-datatypes ((V!47915 0))(
  ( (V!47916 (val!16019 Int)) )
))
(declare-datatypes ((tuple2!20828 0))(
  ( (tuple2!20829 (_1!10424 (_ BitVec 64)) (_2!10424 V!47915)) )
))
(declare-datatypes ((List!28068 0))(
  ( (Nil!28065) (Cons!28064 (h!29273 tuple2!20828) (t!41560 List!28068)) )
))
(declare-datatypes ((ListLongMap!18713 0))(
  ( (ListLongMap!18714 (toList!9372 List!28068)) )
))
(declare-fun lt!567371 () ListLongMap!18713)

(declare-fun lt!567370 () ListLongMap!18713)

(assert (=> b!1255001 (= lt!567371 lt!567370)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47915)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47915)

(declare-datatypes ((ValueCell!15193 0))(
  ( (ValueCellFull!15193 (v!18719 V!47915)) (EmptyCell!15193) )
))
(declare-datatypes ((array!81461 0))(
  ( (array!81462 (arr!39286 (Array (_ BitVec 32) ValueCell!15193)) (size!39823 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81461)

(declare-fun minValueBefore!43 () V!47915)

(declare-datatypes ((Unit!41718 0))(
  ( (Unit!41719) )
))
(declare-fun lt!567369 () Unit!41718)

(declare-datatypes ((array!81463 0))(
  ( (array!81464 (arr!39287 (Array (_ BitVec 32) (_ BitVec 64))) (size!39824 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81463)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1051 (array!81463 array!81461 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47915 V!47915 V!47915 V!47915 (_ BitVec 32) Int) Unit!41718)

(assert (=> b!1255001 (= lt!567369 (lemmaNoChangeToArrayThenSameMapNoExtras!1051 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5733 (array!81463 array!81461 (_ BitVec 32) (_ BitVec 32) V!47915 V!47915 (_ BitVec 32) Int) ListLongMap!18713)

(assert (=> b!1255001 (= lt!567370 (getCurrentListMapNoExtraKeys!5733 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1255001 (= lt!567371 (getCurrentListMapNoExtraKeys!5733 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1255002 () Bool)

(declare-fun e!713252 () Bool)

(declare-fun tp_is_empty!31913 () Bool)

(assert (=> b!1255002 (= e!713252 tp_is_empty!31913)))

(declare-fun mapNonEmpty!49651 () Bool)

(declare-fun tp!94544 () Bool)

(assert (=> mapNonEmpty!49651 (= mapRes!49651 (and tp!94544 e!713252))))

(declare-fun mapValue!49651 () ValueCell!15193)

(declare-fun mapKey!49651 () (_ BitVec 32))

(declare-fun mapRest!49651 () (Array (_ BitVec 32) ValueCell!15193))

(assert (=> mapNonEmpty!49651 (= (arr!39286 _values!914) (store mapRest!49651 mapKey!49651 mapValue!49651))))

(declare-fun b!1255003 () Bool)

(declare-fun e!713249 () Bool)

(assert (=> b!1255003 (= e!713249 tp_is_empty!31913)))

(declare-fun res!836812 () Bool)

(assert (=> start!105374 (=> (not res!836812) (not e!713253))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105374 (= res!836812 (validMask!0 mask!1466))))

(assert (=> start!105374 e!713253))

(assert (=> start!105374 true))

(assert (=> start!105374 tp!94545))

(assert (=> start!105374 tp_is_empty!31913))

(declare-fun array_inv!29879 (array!81463) Bool)

(assert (=> start!105374 (array_inv!29879 _keys!1118)))

(declare-fun e!713250 () Bool)

(declare-fun array_inv!29880 (array!81461) Bool)

(assert (=> start!105374 (and (array_inv!29880 _values!914) e!713250)))

(declare-fun b!1255004 () Bool)

(assert (=> b!1255004 (= e!713250 (and e!713249 mapRes!49651))))

(declare-fun condMapEmpty!49651 () Bool)

(declare-fun mapDefault!49651 () ValueCell!15193)

