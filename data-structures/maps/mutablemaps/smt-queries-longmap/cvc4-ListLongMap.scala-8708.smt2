; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105738 () Bool)

(assert start!105738)

(declare-fun b_free!27287 () Bool)

(declare-fun b_next!27287 () Bool)

(assert (=> start!105738 (= b_free!27287 (not b_next!27287))))

(declare-fun tp!95387 () Bool)

(declare-fun b_and!45181 () Bool)

(assert (=> start!105738 (= tp!95387 b_and!45181)))

(declare-fun b!1258997 () Bool)

(declare-fun res!839178 () Bool)

(declare-fun e!716191 () Bool)

(assert (=> b!1258997 (=> (not res!839178) (not e!716191))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((V!48283 0))(
  ( (V!48284 (val!16157 Int)) )
))
(declare-datatypes ((ValueCell!15331 0))(
  ( (ValueCellFull!15331 (v!18859 V!48283)) (EmptyCell!15331) )
))
(declare-datatypes ((array!81991 0))(
  ( (array!81992 (arr!39546 (Array (_ BitVec 32) ValueCell!15331)) (size!40083 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81991)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-datatypes ((array!81993 0))(
  ( (array!81994 (arr!39547 (Array (_ BitVec 32) (_ BitVec 64))) (size!40084 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81993)

(assert (=> b!1258997 (= res!839178 (and (= (size!40083 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40084 _keys!1118) (size!40083 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1258998 () Bool)

(declare-fun e!716194 () Bool)

(assert (=> b!1258998 (= e!716194 true)))

(declare-datatypes ((tuple2!21038 0))(
  ( (tuple2!21039 (_1!10529 (_ BitVec 64)) (_2!10529 V!48283)) )
))
(declare-datatypes ((List!28268 0))(
  ( (Nil!28265) (Cons!28264 (h!29473 tuple2!21038) (t!41770 List!28268)) )
))
(declare-datatypes ((ListLongMap!18923 0))(
  ( (ListLongMap!18924 (toList!9477 List!28268)) )
))
(declare-fun lt!569630 () ListLongMap!18923)

(declare-fun lt!569627 () ListLongMap!18923)

(declare-fun -!2111 (ListLongMap!18923 (_ BitVec 64)) ListLongMap!18923)

(assert (=> b!1258998 (= lt!569630 (-!2111 lt!569627 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!569628 () ListLongMap!18923)

(declare-fun lt!569632 () ListLongMap!18923)

(assert (=> b!1258998 (= (-!2111 lt!569628 #b1000000000000000000000000000000000000000000000000000000000000000) lt!569632)))

(declare-datatypes ((Unit!41923 0))(
  ( (Unit!41924) )
))
(declare-fun lt!569623 () Unit!41923)

(declare-fun minValueBefore!43 () V!48283)

(declare-fun addThenRemoveForNewKeyIsSame!336 (ListLongMap!18923 (_ BitVec 64) V!48283) Unit!41923)

(assert (=> b!1258998 (= lt!569623 (addThenRemoveForNewKeyIsSame!336 lt!569632 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(declare-fun e!716192 () Bool)

(assert (=> b!1258998 e!716192))

(declare-fun res!839174 () Bool)

(assert (=> b!1258998 (=> (not res!839174) (not e!716192))))

(assert (=> b!1258998 (= res!839174 (= lt!569627 lt!569628))))

(declare-fun +!4176 (ListLongMap!18923 tuple2!21038) ListLongMap!18923)

(assert (=> b!1258998 (= lt!569628 (+!4176 lt!569632 (tuple2!21039 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun lt!569624 () ListLongMap!18923)

(declare-fun lt!569626 () tuple2!21038)

(assert (=> b!1258998 (= lt!569632 (+!4176 lt!569624 lt!569626))))

(declare-fun zeroValue!871 () V!48283)

(assert (=> b!1258998 (= lt!569626 (tuple2!21039 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871))))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48283)

(declare-fun lt!569629 () ListLongMap!18923)

(declare-fun getCurrentListMap!4615 (array!81993 array!81991 (_ BitVec 32) (_ BitVec 32) V!48283 V!48283 (_ BitVec 32) Int) ListLongMap!18923)

(assert (=> b!1258998 (= lt!569629 (getCurrentListMap!4615 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1258998 (= lt!569627 (getCurrentListMap!4615 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!569625 () ListLongMap!18923)

(declare-fun b!1258999 () Bool)

(assert (=> b!1258999 (= e!716192 (= lt!569629 (+!4176 lt!569625 lt!569626)))))

(declare-fun mapNonEmpty!50080 () Bool)

(declare-fun mapRes!50080 () Bool)

(declare-fun tp!95388 () Bool)

(declare-fun e!716189 () Bool)

(assert (=> mapNonEmpty!50080 (= mapRes!50080 (and tp!95388 e!716189))))

(declare-fun mapValue!50080 () ValueCell!15331)

(declare-fun mapRest!50080 () (Array (_ BitVec 32) ValueCell!15331))

(declare-fun mapKey!50080 () (_ BitVec 32))

(assert (=> mapNonEmpty!50080 (= (arr!39546 _values!914) (store mapRest!50080 mapKey!50080 mapValue!50080))))

(declare-fun mapIsEmpty!50080 () Bool)

(assert (=> mapIsEmpty!50080 mapRes!50080))

(declare-fun res!839176 () Bool)

(assert (=> start!105738 (=> (not res!839176) (not e!716191))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105738 (= res!839176 (validMask!0 mask!1466))))

(assert (=> start!105738 e!716191))

(assert (=> start!105738 true))

(assert (=> start!105738 tp!95387))

(declare-fun tp_is_empty!32189 () Bool)

(assert (=> start!105738 tp_is_empty!32189))

(declare-fun array_inv!30065 (array!81993) Bool)

(assert (=> start!105738 (array_inv!30065 _keys!1118)))

(declare-fun e!716193 () Bool)

(declare-fun array_inv!30066 (array!81991) Bool)

(assert (=> start!105738 (and (array_inv!30066 _values!914) e!716193)))

(declare-fun b!1259000 () Bool)

(declare-fun e!716195 () Bool)

(assert (=> b!1259000 (= e!716193 (and e!716195 mapRes!50080))))

(declare-fun condMapEmpty!50080 () Bool)

(declare-fun mapDefault!50080 () ValueCell!15331)

