; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105916 () Bool)

(assert start!105916)

(declare-fun b_free!27421 () Bool)

(declare-fun b_next!27421 () Bool)

(assert (=> start!105916 (= b_free!27421 (not b_next!27421))))

(declare-fun tp!95796 () Bool)

(declare-fun b_and!45339 () Bool)

(assert (=> start!105916 (= tp!95796 b_and!45339)))

(declare-fun b!1261070 () Bool)

(declare-fun e!717729 () Bool)

(declare-fun tp_is_empty!32323 () Bool)

(assert (=> b!1261070 (= e!717729 tp_is_empty!32323)))

(declare-fun b!1261071 () Bool)

(declare-fun e!717727 () Bool)

(assert (=> b!1261071 (= e!717727 false)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-datatypes ((V!48463 0))(
  ( (V!48464 (val!16224 Int)) )
))
(declare-fun minValueAfter!43 () V!48463)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!48463)

(declare-datatypes ((array!82249 0))(
  ( (array!82250 (arr!39673 (Array (_ BitVec 32) (_ BitVec 64))) (size!40210 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82249)

(declare-datatypes ((ValueCell!15398 0))(
  ( (ValueCellFull!15398 (v!18928 V!48463)) (EmptyCell!15398) )
))
(declare-datatypes ((array!82251 0))(
  ( (array!82252 (arr!39674 (Array (_ BitVec 32) ValueCell!15398)) (size!40211 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82251)

(declare-datatypes ((tuple2!21142 0))(
  ( (tuple2!21143 (_1!10581 (_ BitVec 64)) (_2!10581 V!48463)) )
))
(declare-datatypes ((List!28364 0))(
  ( (Nil!28361) (Cons!28360 (h!29569 tuple2!21142) (t!41870 List!28364)) )
))
(declare-datatypes ((ListLongMap!19027 0))(
  ( (ListLongMap!19028 (toList!9529 List!28364)) )
))
(declare-fun lt!571487 () ListLongMap!19027)

(declare-fun getCurrentListMapNoExtraKeys!5870 (array!82249 array!82251 (_ BitVec 32) (_ BitVec 32) V!48463 V!48463 (_ BitVec 32) Int) ListLongMap!19027)

(assert (=> b!1261071 (= lt!571487 (getCurrentListMapNoExtraKeys!5870 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!571486 () ListLongMap!19027)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun minValueBefore!43 () V!48463)

(assert (=> b!1261071 (= lt!571486 (getCurrentListMapNoExtraKeys!5870 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun res!840441 () Bool)

(assert (=> start!105916 (=> (not res!840441) (not e!717727))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105916 (= res!840441 (validMask!0 mask!1466))))

(assert (=> start!105916 e!717727))

(assert (=> start!105916 true))

(assert (=> start!105916 tp!95796))

(assert (=> start!105916 tp_is_empty!32323))

(declare-fun array_inv!30153 (array!82249) Bool)

(assert (=> start!105916 (array_inv!30153 _keys!1118)))

(declare-fun e!717728 () Bool)

(declare-fun array_inv!30154 (array!82251) Bool)

(assert (=> start!105916 (and (array_inv!30154 _values!914) e!717728)))

(declare-fun b!1261072 () Bool)

(declare-fun e!717730 () Bool)

(assert (=> b!1261072 (= e!717730 tp_is_empty!32323)))

(declare-fun mapIsEmpty!50287 () Bool)

(declare-fun mapRes!50287 () Bool)

(assert (=> mapIsEmpty!50287 mapRes!50287))

(declare-fun b!1261073 () Bool)

(declare-fun res!840442 () Bool)

(assert (=> b!1261073 (=> (not res!840442) (not e!717727))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82249 (_ BitVec 32)) Bool)

(assert (=> b!1261073 (= res!840442 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1261074 () Bool)

(declare-fun res!840440 () Bool)

(assert (=> b!1261074 (=> (not res!840440) (not e!717727))))

(assert (=> b!1261074 (= res!840440 (and (= (size!40211 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40210 _keys!1118) (size!40211 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1261075 () Bool)

(assert (=> b!1261075 (= e!717728 (and e!717730 mapRes!50287))))

(declare-fun condMapEmpty!50287 () Bool)

(declare-fun mapDefault!50287 () ValueCell!15398)

