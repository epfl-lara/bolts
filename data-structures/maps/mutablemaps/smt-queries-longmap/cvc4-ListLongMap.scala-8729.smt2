; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105908 () Bool)

(assert start!105908)

(declare-fun b_free!27413 () Bool)

(declare-fun b_next!27413 () Bool)

(assert (=> start!105908 (= b_free!27413 (not b_next!27413))))

(declare-fun tp!95772 () Bool)

(declare-fun b_and!45331 () Bool)

(assert (=> start!105908 (= tp!95772 b_and!45331)))

(declare-fun b!1260986 () Bool)

(declare-fun e!717666 () Bool)

(declare-fun tp_is_empty!32315 () Bool)

(assert (=> b!1260986 (= e!717666 tp_is_empty!32315)))

(declare-fun mapIsEmpty!50275 () Bool)

(declare-fun mapRes!50275 () Bool)

(assert (=> mapIsEmpty!50275 mapRes!50275))

(declare-fun b!1260987 () Bool)

(declare-fun e!717670 () Bool)

(assert (=> b!1260987 (= e!717670 false)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-datatypes ((V!48451 0))(
  ( (V!48452 (val!16220 Int)) )
))
(declare-fun minValueAfter!43 () V!48451)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!48451)

(declare-datatypes ((array!82235 0))(
  ( (array!82236 (arr!39666 (Array (_ BitVec 32) (_ BitVec 64))) (size!40203 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82235)

(declare-datatypes ((tuple2!21136 0))(
  ( (tuple2!21137 (_1!10578 (_ BitVec 64)) (_2!10578 V!48451)) )
))
(declare-datatypes ((List!28359 0))(
  ( (Nil!28356) (Cons!28355 (h!29564 tuple2!21136) (t!41865 List!28359)) )
))
(declare-datatypes ((ListLongMap!19021 0))(
  ( (ListLongMap!19022 (toList!9526 List!28359)) )
))
(declare-fun lt!571463 () ListLongMap!19021)

(declare-datatypes ((ValueCell!15394 0))(
  ( (ValueCellFull!15394 (v!18924 V!48451)) (EmptyCell!15394) )
))
(declare-datatypes ((array!82237 0))(
  ( (array!82238 (arr!39667 (Array (_ BitVec 32) ValueCell!15394)) (size!40204 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82237)

(declare-fun getCurrentListMapNoExtraKeys!5867 (array!82235 array!82237 (_ BitVec 32) (_ BitVec 32) V!48451 V!48451 (_ BitVec 32) Int) ListLongMap!19021)

(assert (=> b!1260987 (= lt!571463 (getCurrentListMapNoExtraKeys!5867 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun lt!571462 () ListLongMap!19021)

(declare-fun minValueBefore!43 () V!48451)

(assert (=> b!1260987 (= lt!571462 (getCurrentListMapNoExtraKeys!5867 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1260988 () Bool)

(declare-fun e!717668 () Bool)

(declare-fun e!717669 () Bool)

(assert (=> b!1260988 (= e!717668 (and e!717669 mapRes!50275))))

(declare-fun condMapEmpty!50275 () Bool)

(declare-fun mapDefault!50275 () ValueCell!15394)

