; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105548 () Bool)

(assert start!105548)

(declare-fun b_free!27149 () Bool)

(declare-fun b_next!27149 () Bool)

(assert (=> start!105548 (= b_free!27149 (not b_next!27149))))

(declare-fun tp!94964 () Bool)

(declare-fun b_and!45015 () Bool)

(assert (=> start!105548 (= tp!94964 b_and!45015)))

(declare-fun b!1256987 () Bool)

(declare-fun e!714736 () Bool)

(assert (=> b!1256987 (= e!714736 true)))

(declare-datatypes ((V!48099 0))(
  ( (V!48100 (val!16088 Int)) )
))
(declare-datatypes ((tuple2!20940 0))(
  ( (tuple2!20941 (_1!10480 (_ BitVec 64)) (_2!10480 V!48099)) )
))
(declare-datatypes ((List!28173 0))(
  ( (Nil!28170) (Cons!28169 (h!29378 tuple2!20940) (t!41669 List!28173)) )
))
(declare-datatypes ((ListLongMap!18825 0))(
  ( (ListLongMap!18826 (toList!9428 List!28173)) )
))
(declare-fun lt!568452 () ListLongMap!18825)

(declare-fun -!2104 (ListLongMap!18825 (_ BitVec 64)) ListLongMap!18825)

(assert (=> b!1256987 (= (-!2104 lt!568452 #b1000000000000000000000000000000000000000000000000000000000000000) lt!568452)))

(declare-datatypes ((Unit!41828 0))(
  ( (Unit!41829) )
))
(declare-fun lt!568449 () Unit!41828)

(declare-fun removeNotPresentStillSame!137 (ListLongMap!18825 (_ BitVec 64)) Unit!41828)

(assert (=> b!1256987 (= lt!568449 (removeNotPresentStillSame!137 lt!568452 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapNonEmpty!49864 () Bool)

(declare-fun mapRes!49864 () Bool)

(declare-fun tp!94965 () Bool)

(declare-fun e!714734 () Bool)

(assert (=> mapNonEmpty!49864 (= mapRes!49864 (and tp!94965 e!714734))))

(declare-fun mapKey!49864 () (_ BitVec 32))

(declare-datatypes ((ValueCell!15262 0))(
  ( (ValueCellFull!15262 (v!18789 V!48099)) (EmptyCell!15262) )
))
(declare-datatypes ((array!81735 0))(
  ( (array!81736 (arr!39421 (Array (_ BitVec 32) ValueCell!15262)) (size!39958 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81735)

(declare-fun mapValue!49864 () ValueCell!15262)

(declare-fun mapRest!49864 () (Array (_ BitVec 32) ValueCell!15262))

(assert (=> mapNonEmpty!49864 (= (arr!39421 _values!914) (store mapRest!49864 mapKey!49864 mapValue!49864))))

(declare-fun b!1256988 () Bool)

(declare-fun res!838026 () Bool)

(declare-fun e!714735 () Bool)

(assert (=> b!1256988 (=> (not res!838026) (not e!714735))))

(declare-datatypes ((array!81737 0))(
  ( (array!81738 (arr!39422 (Array (_ BitVec 32) (_ BitVec 64))) (size!39959 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81737)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81737 (_ BitVec 32)) Bool)

(assert (=> b!1256988 (= res!838026 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun res!838028 () Bool)

(assert (=> start!105548 (=> (not res!838028) (not e!714735))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105548 (= res!838028 (validMask!0 mask!1466))))

(assert (=> start!105548 e!714735))

(assert (=> start!105548 true))

(assert (=> start!105548 tp!94964))

(declare-fun tp_is_empty!32051 () Bool)

(assert (=> start!105548 tp_is_empty!32051))

(declare-fun array_inv!29975 (array!81737) Bool)

(assert (=> start!105548 (array_inv!29975 _keys!1118)))

(declare-fun e!714740 () Bool)

(declare-fun array_inv!29976 (array!81735) Bool)

(assert (=> start!105548 (and (array_inv!29976 _values!914) e!714740)))

(declare-fun b!1256989 () Bool)

(declare-fun e!714739 () Bool)

(assert (=> b!1256989 (= e!714735 (not e!714739))))

(declare-fun res!838025 () Bool)

(assert (=> b!1256989 (=> res!838025 e!714739)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1256989 (= res!838025 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!568450 () ListLongMap!18825)

(declare-fun lt!568453 () ListLongMap!18825)

(assert (=> b!1256989 (= lt!568450 lt!568453)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48099)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!48099)

(declare-fun minValueBefore!43 () V!48099)

(declare-fun lt!568451 () Unit!41828)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1098 (array!81737 array!81735 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48099 V!48099 V!48099 V!48099 (_ BitVec 32) Int) Unit!41828)

(assert (=> b!1256989 (= lt!568451 (lemmaNoChangeToArrayThenSameMapNoExtras!1098 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5780 (array!81737 array!81735 (_ BitVec 32) (_ BitVec 32) V!48099 V!48099 (_ BitVec 32) Int) ListLongMap!18825)

(assert (=> b!1256989 (= lt!568453 (getCurrentListMapNoExtraKeys!5780 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1256989 (= lt!568450 (getCurrentListMapNoExtraKeys!5780 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1256990 () Bool)

(declare-fun e!714737 () Bool)

(assert (=> b!1256990 (= e!714740 (and e!714737 mapRes!49864))))

(declare-fun condMapEmpty!49864 () Bool)

(declare-fun mapDefault!49864 () ValueCell!15262)

