; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105626 () Bool)

(assert start!105626)

(declare-fun b_free!27205 () Bool)

(declare-fun b_next!27205 () Bool)

(assert (=> start!105626 (= b_free!27205 (not b_next!27205))))

(declare-fun tp!95136 () Bool)

(declare-fun b_and!45081 () Bool)

(assert (=> start!105626 (= tp!95136 b_and!45081)))

(declare-fun b!1257770 () Bool)

(declare-fun e!715292 () Bool)

(declare-fun tp_is_empty!32107 () Bool)

(assert (=> b!1257770 (= e!715292 tp_is_empty!32107)))

(declare-fun b!1257771 () Bool)

(declare-fun e!715294 () Bool)

(assert (=> b!1257771 (= e!715294 (not true))))

(declare-datatypes ((V!48175 0))(
  ( (V!48176 (val!16116 Int)) )
))
(declare-datatypes ((tuple2!20982 0))(
  ( (tuple2!20983 (_1!10501 (_ BitVec 64)) (_2!10501 V!48175)) )
))
(declare-datatypes ((List!28213 0))(
  ( (Nil!28210) (Cons!28209 (h!29418 tuple2!20982) (t!41711 List!28213)) )
))
(declare-datatypes ((ListLongMap!18867 0))(
  ( (ListLongMap!18868 (toList!9449 List!28213)) )
))
(declare-fun lt!568865 () ListLongMap!18867)

(declare-fun lt!568863 () ListLongMap!18867)

(assert (=> b!1257771 (= lt!568865 lt!568863)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48175)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-datatypes ((Unit!41872 0))(
  ( (Unit!41873) )
))
(declare-fun lt!568864 () Unit!41872)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!48175)

(declare-datatypes ((array!81841 0))(
  ( (array!81842 (arr!39473 (Array (_ BitVec 32) (_ BitVec 64))) (size!40010 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81841)

(declare-datatypes ((ValueCell!15290 0))(
  ( (ValueCellFull!15290 (v!18818 V!48175)) (EmptyCell!15290) )
))
(declare-datatypes ((array!81843 0))(
  ( (array!81844 (arr!39474 (Array (_ BitVec 32) ValueCell!15290)) (size!40011 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81843)

(declare-fun minValueBefore!43 () V!48175)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1119 (array!81841 array!81843 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48175 V!48175 V!48175 V!48175 (_ BitVec 32) Int) Unit!41872)

(assert (=> b!1257771 (= lt!568864 (lemmaNoChangeToArrayThenSameMapNoExtras!1119 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5801 (array!81841 array!81843 (_ BitVec 32) (_ BitVec 32) V!48175 V!48175 (_ BitVec 32) Int) ListLongMap!18867)

(assert (=> b!1257771 (= lt!568863 (getCurrentListMapNoExtraKeys!5801 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1257771 (= lt!568865 (getCurrentListMapNoExtraKeys!5801 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun res!838461 () Bool)

(assert (=> start!105626 (=> (not res!838461) (not e!715294))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105626 (= res!838461 (validMask!0 mask!1466))))

(assert (=> start!105626 e!715294))

(assert (=> start!105626 true))

(assert (=> start!105626 tp!95136))

(assert (=> start!105626 tp_is_empty!32107))

(declare-fun array_inv!30015 (array!81841) Bool)

(assert (=> start!105626 (array_inv!30015 _keys!1118)))

(declare-fun e!715293 () Bool)

(declare-fun array_inv!30016 (array!81843) Bool)

(assert (=> start!105626 (and (array_inv!30016 _values!914) e!715293)))

(declare-fun b!1257772 () Bool)

(declare-fun res!838460 () Bool)

(assert (=> b!1257772 (=> (not res!838460) (not e!715294))))

(assert (=> b!1257772 (= res!838460 (and (= (size!40011 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40010 _keys!1118) (size!40011 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1257773 () Bool)

(declare-fun e!715295 () Bool)

(assert (=> b!1257773 (= e!715295 tp_is_empty!32107)))

(declare-fun mapIsEmpty!49951 () Bool)

(declare-fun mapRes!49951 () Bool)

(assert (=> mapIsEmpty!49951 mapRes!49951))

(declare-fun mapNonEmpty!49951 () Bool)

(declare-fun tp!95135 () Bool)

(assert (=> mapNonEmpty!49951 (= mapRes!49951 (and tp!95135 e!715295))))

(declare-fun mapValue!49951 () ValueCell!15290)

(declare-fun mapRest!49951 () (Array (_ BitVec 32) ValueCell!15290))

(declare-fun mapKey!49951 () (_ BitVec 32))

(assert (=> mapNonEmpty!49951 (= (arr!39474 _values!914) (store mapRest!49951 mapKey!49951 mapValue!49951))))

(declare-fun b!1257774 () Bool)

(declare-fun res!838459 () Bool)

(assert (=> b!1257774 (=> (not res!838459) (not e!715294))))

(declare-datatypes ((List!28214 0))(
  ( (Nil!28211) (Cons!28210 (h!29419 (_ BitVec 64)) (t!41712 List!28214)) )
))
(declare-fun arrayNoDuplicates!0 (array!81841 (_ BitVec 32) List!28214) Bool)

(assert (=> b!1257774 (= res!838459 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28211))))

(declare-fun b!1257775 () Bool)

(declare-fun res!838462 () Bool)

(assert (=> b!1257775 (=> (not res!838462) (not e!715294))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81841 (_ BitVec 32)) Bool)

(assert (=> b!1257775 (= res!838462 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1257776 () Bool)

(assert (=> b!1257776 (= e!715293 (and e!715292 mapRes!49951))))

(declare-fun condMapEmpty!49951 () Bool)

(declare-fun mapDefault!49951 () ValueCell!15290)

