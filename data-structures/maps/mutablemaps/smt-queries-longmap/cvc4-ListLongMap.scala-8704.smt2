; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105698 () Bool)

(assert start!105698)

(declare-fun b_free!27263 () Bool)

(declare-fun b_next!27263 () Bool)

(assert (=> start!105698 (= b_free!27263 (not b_next!27263))))

(declare-fun tp!95312 () Bool)

(declare-fun b_and!45147 () Bool)

(assert (=> start!105698 (= tp!95312 b_and!45147)))

(declare-fun res!838910 () Bool)

(declare-fun e!715858 () Bool)

(assert (=> start!105698 (=> (not res!838910) (not e!715858))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105698 (= res!838910 (validMask!0 mask!1466))))

(assert (=> start!105698 e!715858))

(assert (=> start!105698 true))

(assert (=> start!105698 tp!95312))

(declare-fun tp_is_empty!32165 () Bool)

(assert (=> start!105698 tp_is_empty!32165))

(declare-datatypes ((array!81945 0))(
  ( (array!81946 (arr!39524 (Array (_ BitVec 32) (_ BitVec 64))) (size!40061 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81945)

(declare-fun array_inv!30053 (array!81945) Bool)

(assert (=> start!105698 (array_inv!30053 _keys!1118)))

(declare-datatypes ((V!48251 0))(
  ( (V!48252 (val!16145 Int)) )
))
(declare-datatypes ((ValueCell!15319 0))(
  ( (ValueCellFull!15319 (v!18847 V!48251)) (EmptyCell!15319) )
))
(declare-datatypes ((array!81947 0))(
  ( (array!81948 (arr!39525 (Array (_ BitVec 32) ValueCell!15319)) (size!40062 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81947)

(declare-fun e!715856 () Bool)

(declare-fun array_inv!30054 (array!81947) Bool)

(assert (=> start!105698 (and (array_inv!30054 _values!914) e!715856)))

(declare-fun b!1258535 () Bool)

(declare-fun e!715857 () Bool)

(assert (=> b!1258535 (= e!715857 tp_is_empty!32165)))

(declare-fun b!1258536 () Bool)

(declare-fun e!715855 () Bool)

(assert (=> b!1258536 (= e!715855 true)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!48251)

(declare-fun minValueBefore!43 () V!48251)

(declare-datatypes ((tuple2!21020 0))(
  ( (tuple2!21021 (_1!10520 (_ BitVec 64)) (_2!10520 V!48251)) )
))
(declare-datatypes ((List!28252 0))(
  ( (Nil!28249) (Cons!28248 (h!29457 tuple2!21020) (t!41752 List!28252)) )
))
(declare-datatypes ((ListLongMap!18905 0))(
  ( (ListLongMap!18906 (toList!9468 List!28252)) )
))
(declare-fun lt!569235 () ListLongMap!18905)

(declare-fun defaultEntry!922 () Int)

(declare-fun getCurrentListMap!4607 (array!81945 array!81947 (_ BitVec 32) (_ BitVec 32) V!48251 V!48251 (_ BitVec 32) Int) ListLongMap!18905)

(assert (=> b!1258536 (= lt!569235 (getCurrentListMap!4607 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapNonEmpty!50041 () Bool)

(declare-fun mapRes!50041 () Bool)

(declare-fun tp!95313 () Bool)

(assert (=> mapNonEmpty!50041 (= mapRes!50041 (and tp!95313 e!715857))))

(declare-fun mapKey!50041 () (_ BitVec 32))

(declare-fun mapValue!50041 () ValueCell!15319)

(declare-fun mapRest!50041 () (Array (_ BitVec 32) ValueCell!15319))

(assert (=> mapNonEmpty!50041 (= (arr!39525 _values!914) (store mapRest!50041 mapKey!50041 mapValue!50041))))

(declare-fun mapIsEmpty!50041 () Bool)

(assert (=> mapIsEmpty!50041 mapRes!50041))

(declare-fun b!1258537 () Bool)

(declare-fun res!838912 () Bool)

(assert (=> b!1258537 (=> (not res!838912) (not e!715858))))

(declare-datatypes ((List!28253 0))(
  ( (Nil!28250) (Cons!28249 (h!29458 (_ BitVec 64)) (t!41753 List!28253)) )
))
(declare-fun arrayNoDuplicates!0 (array!81945 (_ BitVec 32) List!28253) Bool)

(assert (=> b!1258537 (= res!838912 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28250))))

(declare-fun b!1258538 () Bool)

(assert (=> b!1258538 (= e!715858 (not e!715855))))

(declare-fun res!838911 () Bool)

(assert (=> b!1258538 (=> res!838911 e!715855)))

(assert (=> b!1258538 (= res!838911 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!569238 () ListLongMap!18905)

(declare-fun lt!569236 () ListLongMap!18905)

(assert (=> b!1258538 (= lt!569238 lt!569236)))

(declare-fun minValueAfter!43 () V!48251)

(declare-datatypes ((Unit!41906 0))(
  ( (Unit!41907) )
))
(declare-fun lt!569237 () Unit!41906)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1136 (array!81945 array!81947 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48251 V!48251 V!48251 V!48251 (_ BitVec 32) Int) Unit!41906)

(assert (=> b!1258538 (= lt!569237 (lemmaNoChangeToArrayThenSameMapNoExtras!1136 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5818 (array!81945 array!81947 (_ BitVec 32) (_ BitVec 32) V!48251 V!48251 (_ BitVec 32) Int) ListLongMap!18905)

(assert (=> b!1258538 (= lt!569236 (getCurrentListMapNoExtraKeys!5818 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1258538 (= lt!569238 (getCurrentListMapNoExtraKeys!5818 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1258539 () Bool)

(declare-fun res!838909 () Bool)

(assert (=> b!1258539 (=> (not res!838909) (not e!715858))))

(assert (=> b!1258539 (= res!838909 (and (= (size!40062 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40061 _keys!1118) (size!40062 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1258540 () Bool)

(declare-fun e!715853 () Bool)

(assert (=> b!1258540 (= e!715853 tp_is_empty!32165)))

(declare-fun b!1258541 () Bool)

(assert (=> b!1258541 (= e!715856 (and e!715853 mapRes!50041))))

(declare-fun condMapEmpty!50041 () Bool)

(declare-fun mapDefault!50041 () ValueCell!15319)

