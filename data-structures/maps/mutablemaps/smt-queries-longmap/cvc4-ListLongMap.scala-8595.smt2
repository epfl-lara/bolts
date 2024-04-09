; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104840 () Bool)

(assert start!104840)

(declare-fun b_free!26609 () Bool)

(declare-fun b_next!26609 () Bool)

(assert (=> start!104840 (= b_free!26609 (not b_next!26609))))

(declare-fun tp!93317 () Bool)

(declare-fun b_and!44387 () Bool)

(assert (=> start!104840 (= tp!93317 b_and!44387)))

(declare-fun b!1249186 () Bool)

(declare-fun res!833397 () Bool)

(declare-fun e!709002 () Bool)

(assert (=> b!1249186 (=> (not res!833397) (not e!709002))))

(declare-datatypes ((array!80681 0))(
  ( (array!80682 (arr!38903 (Array (_ BitVec 32) (_ BitVec 64))) (size!39440 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80681)

(declare-datatypes ((List!27782 0))(
  ( (Nil!27779) (Cons!27778 (h!28987 (_ BitVec 64)) (t!41260 List!27782)) )
))
(declare-fun arrayNoDuplicates!0 (array!80681 (_ BitVec 32) List!27782) Bool)

(assert (=> b!1249186 (= res!833397 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27779))))

(declare-fun res!833400 () Bool)

(assert (=> start!104840 (=> (not res!833400) (not e!709002))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104840 (= res!833400 (validMask!0 mask!1466))))

(assert (=> start!104840 e!709002))

(assert (=> start!104840 true))

(assert (=> start!104840 tp!93317))

(declare-fun tp_is_empty!31511 () Bool)

(assert (=> start!104840 tp_is_empty!31511))

(declare-fun array_inv!29619 (array!80681) Bool)

(assert (=> start!104840 (array_inv!29619 _keys!1118)))

(declare-datatypes ((V!47379 0))(
  ( (V!47380 (val!15818 Int)) )
))
(declare-datatypes ((ValueCell!14992 0))(
  ( (ValueCellFull!14992 (v!18514 V!47379)) (EmptyCell!14992) )
))
(declare-datatypes ((array!80683 0))(
  ( (array!80684 (arr!38904 (Array (_ BitVec 32) ValueCell!14992)) (size!39441 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80683)

(declare-fun e!708999 () Bool)

(declare-fun array_inv!29620 (array!80683) Bool)

(assert (=> start!104840 (and (array_inv!29620 _values!914) e!708999)))

(declare-fun b!1249187 () Bool)

(declare-fun e!709001 () Bool)

(assert (=> b!1249187 (= e!709001 tp_is_empty!31511)))

(declare-fun b!1249188 () Bool)

(assert (=> b!1249188 (= e!709002 (not true))))

(declare-datatypes ((tuple2!20522 0))(
  ( (tuple2!20523 (_1!10271 (_ BitVec 64)) (_2!10271 V!47379)) )
))
(declare-datatypes ((List!27783 0))(
  ( (Nil!27780) (Cons!27779 (h!28988 tuple2!20522) (t!41261 List!27783)) )
))
(declare-datatypes ((ListLongMap!18407 0))(
  ( (ListLongMap!18408 (toList!9219 List!27783)) )
))
(declare-fun lt!563601 () ListLongMap!18407)

(declare-fun lt!563599 () ListLongMap!18407)

(assert (=> b!1249188 (= lt!563601 lt!563599)))

(declare-fun defaultEntry!922 () Int)

(declare-datatypes ((Unit!41421 0))(
  ( (Unit!41422) )
))
(declare-fun lt!563600 () Unit!41421)

(declare-fun minValueAfter!43 () V!47379)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47379)

(declare-fun minValueBefore!43 () V!47379)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!920 (array!80681 array!80683 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47379 V!47379 V!47379 V!47379 (_ BitVec 32) Int) Unit!41421)

(assert (=> b!1249188 (= lt!563600 (lemmaNoChangeToArrayThenSameMapNoExtras!920 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5602 (array!80681 array!80683 (_ BitVec 32) (_ BitVec 32) V!47379 V!47379 (_ BitVec 32) Int) ListLongMap!18407)

(assert (=> b!1249188 (= lt!563599 (getCurrentListMapNoExtraKeys!5602 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1249188 (= lt!563601 (getCurrentListMapNoExtraKeys!5602 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapIsEmpty!49027 () Bool)

(declare-fun mapRes!49027 () Bool)

(assert (=> mapIsEmpty!49027 mapRes!49027))

(declare-fun b!1249189 () Bool)

(declare-fun e!708998 () Bool)

(assert (=> b!1249189 (= e!708998 tp_is_empty!31511)))

(declare-fun b!1249190 () Bool)

(declare-fun res!833399 () Bool)

(assert (=> b!1249190 (=> (not res!833399) (not e!709002))))

(assert (=> b!1249190 (= res!833399 (and (= (size!39441 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39440 _keys!1118) (size!39441 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!49027 () Bool)

(declare-fun tp!93318 () Bool)

(assert (=> mapNonEmpty!49027 (= mapRes!49027 (and tp!93318 e!709001))))

(declare-fun mapValue!49027 () ValueCell!14992)

(declare-fun mapRest!49027 () (Array (_ BitVec 32) ValueCell!14992))

(declare-fun mapKey!49027 () (_ BitVec 32))

(assert (=> mapNonEmpty!49027 (= (arr!38904 _values!914) (store mapRest!49027 mapKey!49027 mapValue!49027))))

(declare-fun b!1249191 () Bool)

(assert (=> b!1249191 (= e!708999 (and e!708998 mapRes!49027))))

(declare-fun condMapEmpty!49027 () Bool)

(declare-fun mapDefault!49027 () ValueCell!14992)

