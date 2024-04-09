; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104720 () Bool)

(assert start!104720)

(declare-fun b_free!26501 () Bool)

(declare-fun b_next!26501 () Bool)

(assert (=> start!104720 (= b_free!26501 (not b_next!26501))))

(declare-fun tp!92990 () Bool)

(declare-fun b_and!44275 () Bool)

(assert (=> start!104720 (= tp!92990 b_and!44275)))

(declare-fun mapIsEmpty!48862 () Bool)

(declare-fun mapRes!48862 () Bool)

(assert (=> mapIsEmpty!48862 mapRes!48862))

(declare-fun b!1247979 () Bool)

(declare-fun e!708144 () Bool)

(assert (=> b!1247979 (= e!708144 false)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-datatypes ((V!47235 0))(
  ( (V!47236 (val!15764 Int)) )
))
(declare-fun zeroValue!871 () V!47235)

(declare-datatypes ((array!80475 0))(
  ( (array!80476 (arr!38801 (Array (_ BitVec 32) (_ BitVec 64))) (size!39338 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80475)

(declare-datatypes ((ValueCell!14938 0))(
  ( (ValueCellFull!14938 (v!18460 V!47235)) (EmptyCell!14938) )
))
(declare-datatypes ((array!80477 0))(
  ( (array!80478 (arr!38802 (Array (_ BitVec 32) ValueCell!14938)) (size!39339 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80477)

(declare-fun minValueBefore!43 () V!47235)

(declare-datatypes ((tuple2!20460 0))(
  ( (tuple2!20461 (_1!10240 (_ BitVec 64)) (_2!10240 V!47235)) )
))
(declare-datatypes ((List!27718 0))(
  ( (Nil!27715) (Cons!27714 (h!28923 tuple2!20460) (t!41194 List!27718)) )
))
(declare-datatypes ((ListLongMap!18345 0))(
  ( (ListLongMap!18346 (toList!9188 List!27718)) )
))
(declare-fun lt!563292 () ListLongMap!18345)

(declare-fun getCurrentListMapNoExtraKeys!5571 (array!80475 array!80477 (_ BitVec 32) (_ BitVec 32) V!47235 V!47235 (_ BitVec 32) Int) ListLongMap!18345)

(assert (=> b!1247979 (= lt!563292 (getCurrentListMapNoExtraKeys!5571 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1247980 () Bool)

(declare-fun res!832724 () Bool)

(assert (=> b!1247980 (=> (not res!832724) (not e!708144))))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1247980 (= res!832724 (and (= (size!39339 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39338 _keys!1118) (size!39339 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1247981 () Bool)

(declare-fun e!708140 () Bool)

(declare-fun e!708143 () Bool)

(assert (=> b!1247981 (= e!708140 (and e!708143 mapRes!48862))))

(declare-fun condMapEmpty!48862 () Bool)

(declare-fun mapDefault!48862 () ValueCell!14938)

