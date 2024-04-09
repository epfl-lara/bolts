; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105606 () Bool)

(assert start!105606)

(declare-fun b_free!27185 () Bool)

(declare-fun b_next!27185 () Bool)

(assert (=> start!105606 (= b_free!27185 (not b_next!27185))))

(declare-fun tp!95076 () Bool)

(declare-fun b_and!45061 () Bool)

(assert (=> start!105606 (= tp!95076 b_and!45061)))

(declare-fun b!1257560 () Bool)

(declare-fun e!715145 () Bool)

(declare-fun tp_is_empty!32087 () Bool)

(assert (=> b!1257560 (= e!715145 tp_is_empty!32087)))

(declare-fun mapIsEmpty!49921 () Bool)

(declare-fun mapRes!49921 () Bool)

(assert (=> mapIsEmpty!49921 mapRes!49921))

(declare-fun b!1257561 () Bool)

(declare-fun res!838340 () Bool)

(declare-fun e!715143 () Bool)

(assert (=> b!1257561 (=> (not res!838340) (not e!715143))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!81805 0))(
  ( (array!81806 (arr!39455 (Array (_ BitVec 32) (_ BitVec 64))) (size!39992 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81805)

(declare-datatypes ((V!48147 0))(
  ( (V!48148 (val!16106 Int)) )
))
(declare-datatypes ((ValueCell!15280 0))(
  ( (ValueCellFull!15280 (v!18808 V!48147)) (EmptyCell!15280) )
))
(declare-datatypes ((array!81807 0))(
  ( (array!81808 (arr!39456 (Array (_ BitVec 32) ValueCell!15280)) (size!39993 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81807)

(assert (=> b!1257561 (= res!838340 (and (= (size!39993 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39992 _keys!1118) (size!39993 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1257562 () Bool)

(declare-fun res!838341 () Bool)

(assert (=> b!1257562 (=> (not res!838341) (not e!715143))))

(declare-datatypes ((List!28199 0))(
  ( (Nil!28196) (Cons!28195 (h!29404 (_ BitVec 64)) (t!41697 List!28199)) )
))
(declare-fun arrayNoDuplicates!0 (array!81805 (_ BitVec 32) List!28199) Bool)

(assert (=> b!1257562 (= res!838341 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28196))))

(declare-fun res!838342 () Bool)

(assert (=> start!105606 (=> (not res!838342) (not e!715143))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105606 (= res!838342 (validMask!0 mask!1466))))

(assert (=> start!105606 e!715143))

(assert (=> start!105606 true))

(assert (=> start!105606 tp!95076))

(assert (=> start!105606 tp_is_empty!32087))

(declare-fun array_inv!30003 (array!81805) Bool)

(assert (=> start!105606 (array_inv!30003 _keys!1118)))

(declare-fun e!715144 () Bool)

(declare-fun array_inv!30004 (array!81807) Bool)

(assert (=> start!105606 (and (array_inv!30004 _values!914) e!715144)))

(declare-fun b!1257563 () Bool)

(assert (=> b!1257563 (= e!715143 (not true))))

(declare-datatypes ((tuple2!20968 0))(
  ( (tuple2!20969 (_1!10494 (_ BitVec 64)) (_2!10494 V!48147)) )
))
(declare-datatypes ((List!28200 0))(
  ( (Nil!28197) (Cons!28196 (h!29405 tuple2!20968) (t!41698 List!28200)) )
))
(declare-datatypes ((ListLongMap!18853 0))(
  ( (ListLongMap!18854 (toList!9442 List!28200)) )
))
(declare-fun lt!568774 () ListLongMap!18853)

(declare-fun lt!568773 () ListLongMap!18853)

(assert (=> b!1257563 (= lt!568774 lt!568773)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48147)

(declare-fun zeroValue!871 () V!48147)

(declare-datatypes ((Unit!41858 0))(
  ( (Unit!41859) )
))
(declare-fun lt!568775 () Unit!41858)

(declare-fun minValueBefore!43 () V!48147)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1112 (array!81805 array!81807 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48147 V!48147 V!48147 V!48147 (_ BitVec 32) Int) Unit!41858)

(assert (=> b!1257563 (= lt!568775 (lemmaNoChangeToArrayThenSameMapNoExtras!1112 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5794 (array!81805 array!81807 (_ BitVec 32) (_ BitVec 32) V!48147 V!48147 (_ BitVec 32) Int) ListLongMap!18853)

(assert (=> b!1257563 (= lt!568773 (getCurrentListMapNoExtraKeys!5794 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1257563 (= lt!568774 (getCurrentListMapNoExtraKeys!5794 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapNonEmpty!49921 () Bool)

(declare-fun tp!95075 () Bool)

(declare-fun e!715142 () Bool)

(assert (=> mapNonEmpty!49921 (= mapRes!49921 (and tp!95075 e!715142))))

(declare-fun mapKey!49921 () (_ BitVec 32))

(declare-fun mapRest!49921 () (Array (_ BitVec 32) ValueCell!15280))

(declare-fun mapValue!49921 () ValueCell!15280)

(assert (=> mapNonEmpty!49921 (= (arr!39456 _values!914) (store mapRest!49921 mapKey!49921 mapValue!49921))))

(declare-fun b!1257564 () Bool)

(declare-fun res!838339 () Bool)

(assert (=> b!1257564 (=> (not res!838339) (not e!715143))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81805 (_ BitVec 32)) Bool)

(assert (=> b!1257564 (= res!838339 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1257565 () Bool)

(assert (=> b!1257565 (= e!715144 (and e!715145 mapRes!49921))))

(declare-fun condMapEmpty!49921 () Bool)

(declare-fun mapDefault!49921 () ValueCell!15280)

