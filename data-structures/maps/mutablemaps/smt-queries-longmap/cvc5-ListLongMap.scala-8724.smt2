; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105852 () Bool)

(assert start!105852)

(declare-fun b_free!27379 () Bool)

(declare-fun b_next!27379 () Bool)

(assert (=> start!105852 (= b_free!27379 (not b_next!27379))))

(declare-fun tp!95667 () Bool)

(declare-fun b_and!45285 () Bool)

(assert (=> start!105852 (= tp!95667 b_and!45285)))

(declare-fun mapIsEmpty!50221 () Bool)

(declare-fun mapRes!50221 () Bool)

(assert (=> mapIsEmpty!50221 mapRes!50221))

(declare-fun b!1260429 () Bool)

(declare-fun res!840092 () Bool)

(declare-fun e!717280 () Bool)

(assert (=> b!1260429 (=> (not res!840092) (not e!717280))))

(declare-datatypes ((array!82167 0))(
  ( (array!82168 (arr!39633 (Array (_ BitVec 32) (_ BitVec 64))) (size!40170 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82167)

(declare-datatypes ((List!28332 0))(
  ( (Nil!28329) (Cons!28328 (h!29537 (_ BitVec 64)) (t!41836 List!28332)) )
))
(declare-fun arrayNoDuplicates!0 (array!82167 (_ BitVec 32) List!28332) Bool)

(assert (=> b!1260429 (= res!840092 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28329))))

(declare-datatypes ((V!48407 0))(
  ( (V!48408 (val!16203 Int)) )
))
(declare-datatypes ((tuple2!21112 0))(
  ( (tuple2!21113 (_1!10566 (_ BitVec 64)) (_2!10566 V!48407)) )
))
(declare-datatypes ((List!28333 0))(
  ( (Nil!28330) (Cons!28329 (h!29538 tuple2!21112) (t!41837 List!28333)) )
))
(declare-datatypes ((ListLongMap!18997 0))(
  ( (ListLongMap!18998 (toList!9514 List!28333)) )
))
(declare-fun lt!571150 () ListLongMap!18997)

(declare-fun b!1260430 () Bool)

(declare-fun lt!571154 () tuple2!21112)

(declare-fun lt!571152 () ListLongMap!18997)

(declare-fun e!717282 () Bool)

(declare-fun +!4210 (ListLongMap!18997 tuple2!21112) ListLongMap!18997)

(assert (=> b!1260430 (= e!717282 (= lt!571150 (+!4210 lt!571152 lt!571154)))))

(declare-fun b!1260431 () Bool)

(declare-fun e!717285 () Bool)

(assert (=> b!1260431 (= e!717280 (not e!717285))))

(declare-fun res!840091 () Bool)

(assert (=> b!1260431 (=> res!840091 e!717285)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1260431 (= res!840091 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!571155 () ListLongMap!18997)

(assert (=> b!1260431 (= lt!571155 lt!571152)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48407)

(declare-datatypes ((Unit!41995 0))(
  ( (Unit!41996) )
))
(declare-fun lt!571151 () Unit!41995)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!48407)

(declare-datatypes ((ValueCell!15377 0))(
  ( (ValueCellFull!15377 (v!18906 V!48407)) (EmptyCell!15377) )
))
(declare-datatypes ((array!82169 0))(
  ( (array!82170 (arr!39634 (Array (_ BitVec 32) ValueCell!15377)) (size!40171 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82169)

(declare-fun minValueBefore!43 () V!48407)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1173 (array!82167 array!82169 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48407 V!48407 V!48407 V!48407 (_ BitVec 32) Int) Unit!41995)

(assert (=> b!1260431 (= lt!571151 (lemmaNoChangeToArrayThenSameMapNoExtras!1173 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5855 (array!82167 array!82169 (_ BitVec 32) (_ BitVec 32) V!48407 V!48407 (_ BitVec 32) Int) ListLongMap!18997)

(assert (=> b!1260431 (= lt!571152 (getCurrentListMapNoExtraKeys!5855 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1260431 (= lt!571155 (getCurrentListMapNoExtraKeys!5855 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapNonEmpty!50221 () Bool)

(declare-fun tp!95666 () Bool)

(declare-fun e!717279 () Bool)

(assert (=> mapNonEmpty!50221 (= mapRes!50221 (and tp!95666 e!717279))))

(declare-fun mapKey!50221 () (_ BitVec 32))

(declare-fun mapValue!50221 () ValueCell!15377)

(declare-fun mapRest!50221 () (Array (_ BitVec 32) ValueCell!15377))

(assert (=> mapNonEmpty!50221 (= (arr!39634 _values!914) (store mapRest!50221 mapKey!50221 mapValue!50221))))

(declare-fun b!1260432 () Bool)

(declare-fun res!840095 () Bool)

(assert (=> b!1260432 (=> (not res!840095) (not e!717280))))

(assert (=> b!1260432 (= res!840095 (and (= (size!40171 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40170 _keys!1118) (size!40171 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun res!840090 () Bool)

(assert (=> start!105852 (=> (not res!840090) (not e!717280))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105852 (= res!840090 (validMask!0 mask!1466))))

(assert (=> start!105852 e!717280))

(assert (=> start!105852 true))

(assert (=> start!105852 tp!95667))

(declare-fun tp_is_empty!32281 () Bool)

(assert (=> start!105852 tp_is_empty!32281))

(declare-fun array_inv!30125 (array!82167) Bool)

(assert (=> start!105852 (array_inv!30125 _keys!1118)))

(declare-fun e!717284 () Bool)

(declare-fun array_inv!30126 (array!82169) Bool)

(assert (=> start!105852 (and (array_inv!30126 _values!914) e!717284)))

(declare-fun b!1260433 () Bool)

(declare-fun e!717281 () Bool)

(assert (=> b!1260433 (= e!717284 (and e!717281 mapRes!50221))))

(declare-fun condMapEmpty!50221 () Bool)

(declare-fun mapDefault!50221 () ValueCell!15377)

