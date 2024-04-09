; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105896 () Bool)

(assert start!105896)

(declare-fun b_free!27401 () Bool)

(declare-fun b_next!27401 () Bool)

(assert (=> start!105896 (= b_free!27401 (not b_next!27401))))

(declare-fun tp!95736 () Bool)

(declare-fun b_and!45319 () Bool)

(assert (=> start!105896 (= tp!95736 b_and!45319)))

(declare-fun b!1260860 () Bool)

(declare-fun e!717578 () Bool)

(declare-fun tp_is_empty!32303 () Bool)

(assert (=> b!1260860 (= e!717578 tp_is_empty!32303)))

(declare-fun res!840321 () Bool)

(declare-fun e!717580 () Bool)

(assert (=> start!105896 (=> (not res!840321) (not e!717580))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105896 (= res!840321 (validMask!0 mask!1466))))

(assert (=> start!105896 e!717580))

(assert (=> start!105896 true))

(assert (=> start!105896 tp!95736))

(assert (=> start!105896 tp_is_empty!32303))

(declare-datatypes ((array!82211 0))(
  ( (array!82212 (arr!39654 (Array (_ BitVec 32) (_ BitVec 64))) (size!40191 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82211)

(declare-fun array_inv!30141 (array!82211) Bool)

(assert (=> start!105896 (array_inv!30141 _keys!1118)))

(declare-datatypes ((V!48435 0))(
  ( (V!48436 (val!16214 Int)) )
))
(declare-datatypes ((ValueCell!15388 0))(
  ( (ValueCellFull!15388 (v!18918 V!48435)) (EmptyCell!15388) )
))
(declare-datatypes ((array!82213 0))(
  ( (array!82214 (arr!39655 (Array (_ BitVec 32) ValueCell!15388)) (size!40192 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82213)

(declare-fun e!717579 () Bool)

(declare-fun array_inv!30142 (array!82213) Bool)

(assert (=> start!105896 (and (array_inv!30142 _values!914) e!717579)))

(declare-fun mapNonEmpty!50257 () Bool)

(declare-fun mapRes!50257 () Bool)

(declare-fun tp!95735 () Bool)

(assert (=> mapNonEmpty!50257 (= mapRes!50257 (and tp!95735 e!717578))))

(declare-fun mapRest!50257 () (Array (_ BitVec 32) ValueCell!15388))

(declare-fun mapKey!50257 () (_ BitVec 32))

(declare-fun mapValue!50257 () ValueCell!15388)

(assert (=> mapNonEmpty!50257 (= (arr!39655 _values!914) (store mapRest!50257 mapKey!50257 mapValue!50257))))

(declare-fun b!1260861 () Bool)

(declare-fun res!840319 () Bool)

(assert (=> b!1260861 (=> (not res!840319) (not e!717580))))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1260861 (= res!840319 (and (= (size!40192 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40191 _keys!1118) (size!40192 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1260862 () Bool)

(declare-fun res!840320 () Bool)

(assert (=> b!1260862 (=> (not res!840320) (not e!717580))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82211 (_ BitVec 32)) Bool)

(assert (=> b!1260862 (= res!840320 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1260863 () Bool)

(declare-fun e!717577 () Bool)

(assert (=> b!1260863 (= e!717577 tp_is_empty!32303)))

(declare-fun mapIsEmpty!50257 () Bool)

(assert (=> mapIsEmpty!50257 mapRes!50257))

(declare-fun b!1260864 () Bool)

(assert (=> b!1260864 (= e!717580 false)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48435)

(declare-fun zeroValue!871 () V!48435)

(declare-datatypes ((tuple2!21126 0))(
  ( (tuple2!21127 (_1!10573 (_ BitVec 64)) (_2!10573 V!48435)) )
))
(declare-datatypes ((List!28349 0))(
  ( (Nil!28346) (Cons!28345 (h!29554 tuple2!21126) (t!41855 List!28349)) )
))
(declare-datatypes ((ListLongMap!19011 0))(
  ( (ListLongMap!19012 (toList!9521 List!28349)) )
))
(declare-fun lt!571426 () ListLongMap!19011)

(declare-fun getCurrentListMapNoExtraKeys!5862 (array!82211 array!82213 (_ BitVec 32) (_ BitVec 32) V!48435 V!48435 (_ BitVec 32) Int) ListLongMap!19011)

(assert (=> b!1260864 (= lt!571426 (getCurrentListMapNoExtraKeys!5862 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!571427 () ListLongMap!19011)

(declare-fun minValueBefore!43 () V!48435)

(assert (=> b!1260864 (= lt!571427 (getCurrentListMapNoExtraKeys!5862 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1260865 () Bool)

(assert (=> b!1260865 (= e!717579 (and e!717577 mapRes!50257))))

(declare-fun condMapEmpty!50257 () Bool)

(declare-fun mapDefault!50257 () ValueCell!15388)

