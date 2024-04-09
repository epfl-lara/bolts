; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105388 () Bool)

(assert start!105388)

(declare-fun b_free!27025 () Bool)

(declare-fun b_next!27025 () Bool)

(assert (=> start!105388 (= b_free!27025 (not b_next!27025))))

(declare-fun tp!94587 () Bool)

(declare-fun b_and!44873 () Bool)

(assert (=> start!105388 (= tp!94587 b_and!44873)))

(declare-fun b!1255148 () Bool)

(declare-fun e!713354 () Bool)

(declare-fun tp_is_empty!31927 () Bool)

(assert (=> b!1255148 (= e!713354 tp_is_empty!31927)))

(declare-fun b!1255149 () Bool)

(declare-fun e!713358 () Bool)

(assert (=> b!1255149 (= e!713358 tp_is_empty!31927)))

(declare-fun mapIsEmpty!49672 () Bool)

(declare-fun mapRes!49672 () Bool)

(assert (=> mapIsEmpty!49672 mapRes!49672))

(declare-fun res!836896 () Bool)

(declare-fun e!713357 () Bool)

(assert (=> start!105388 (=> (not res!836896) (not e!713357))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105388 (= res!836896 (validMask!0 mask!1466))))

(assert (=> start!105388 e!713357))

(assert (=> start!105388 true))

(assert (=> start!105388 tp!94587))

(assert (=> start!105388 tp_is_empty!31927))

(declare-datatypes ((array!81489 0))(
  ( (array!81490 (arr!39300 (Array (_ BitVec 32) (_ BitVec 64))) (size!39837 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81489)

(declare-fun array_inv!29893 (array!81489) Bool)

(assert (=> start!105388 (array_inv!29893 _keys!1118)))

(declare-datatypes ((V!47935 0))(
  ( (V!47936 (val!16026 Int)) )
))
(declare-datatypes ((ValueCell!15200 0))(
  ( (ValueCellFull!15200 (v!18726 V!47935)) (EmptyCell!15200) )
))
(declare-datatypes ((array!81491 0))(
  ( (array!81492 (arr!39301 (Array (_ BitVec 32) ValueCell!15200)) (size!39838 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81491)

(declare-fun e!713356 () Bool)

(declare-fun array_inv!29894 (array!81491) Bool)

(assert (=> start!105388 (and (array_inv!29894 _values!914) e!713356)))

(declare-fun b!1255150 () Bool)

(assert (=> b!1255150 (= e!713357 (not true))))

(declare-datatypes ((tuple2!20838 0))(
  ( (tuple2!20839 (_1!10429 (_ BitVec 64)) (_2!10429 V!47935)) )
))
(declare-datatypes ((List!28078 0))(
  ( (Nil!28075) (Cons!28074 (h!29283 tuple2!20838) (t!41570 List!28078)) )
))
(declare-datatypes ((ListLongMap!18723 0))(
  ( (ListLongMap!18724 (toList!9377 List!28078)) )
))
(declare-fun lt!567433 () ListLongMap!18723)

(declare-fun lt!567432 () ListLongMap!18723)

(assert (=> b!1255150 (= lt!567433 lt!567432)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47935)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47935)

(declare-fun minValueBefore!43 () V!47935)

(declare-datatypes ((Unit!41728 0))(
  ( (Unit!41729) )
))
(declare-fun lt!567434 () Unit!41728)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1056 (array!81489 array!81491 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47935 V!47935 V!47935 V!47935 (_ BitVec 32) Int) Unit!41728)

(assert (=> b!1255150 (= lt!567434 (lemmaNoChangeToArrayThenSameMapNoExtras!1056 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5738 (array!81489 array!81491 (_ BitVec 32) (_ BitVec 32) V!47935 V!47935 (_ BitVec 32) Int) ListLongMap!18723)

(assert (=> b!1255150 (= lt!567432 (getCurrentListMapNoExtraKeys!5738 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1255150 (= lt!567433 (getCurrentListMapNoExtraKeys!5738 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1255151 () Bool)

(assert (=> b!1255151 (= e!713356 (and e!713358 mapRes!49672))))

(declare-fun condMapEmpty!49672 () Bool)

(declare-fun mapDefault!49672 () ValueCell!15200)

