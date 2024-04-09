; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105002 () Bool)

(assert start!105002)

(declare-fun b_free!26735 () Bool)

(declare-fun b_next!26735 () Bool)

(assert (=> start!105002 (= b_free!26735 (not b_next!26735))))

(declare-fun tp!93701 () Bool)

(declare-fun b_and!44531 () Bool)

(assert (=> start!105002 (= tp!93701 b_and!44531)))

(declare-fun mapIsEmpty!49222 () Bool)

(declare-fun mapRes!49222 () Bool)

(assert (=> mapIsEmpty!49222 mapRes!49222))

(declare-fun b!1250974 () Bool)

(declare-fun e!710327 () Bool)

(declare-fun e!710323 () Bool)

(assert (=> b!1250974 (= e!710327 e!710323)))

(declare-fun res!834472 () Bool)

(assert (=> b!1250974 (=> res!834472 e!710323)))

(declare-datatypes ((V!47547 0))(
  ( (V!47548 (val!15881 Int)) )
))
(declare-datatypes ((tuple2!20616 0))(
  ( (tuple2!20617 (_1!10318 (_ BitVec 64)) (_2!10318 V!47547)) )
))
(declare-datatypes ((List!27871 0))(
  ( (Nil!27868) (Cons!27867 (h!29076 tuple2!20616) (t!41353 List!27871)) )
))
(declare-datatypes ((ListLongMap!18501 0))(
  ( (ListLongMap!18502 (toList!9266 List!27871)) )
))
(declare-fun lt!564557 () ListLongMap!18501)

(declare-fun contains!7517 (ListLongMap!18501 (_ BitVec 64)) Bool)

(assert (=> b!1250974 (= res!834472 (contains!7517 lt!564557 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47547)

(declare-datatypes ((array!80921 0))(
  ( (array!80922 (arr!39021 (Array (_ BitVec 32) (_ BitVec 64))) (size!39558 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80921)

(declare-datatypes ((ValueCell!15055 0))(
  ( (ValueCellFull!15055 (v!18578 V!47547)) (EmptyCell!15055) )
))
(declare-datatypes ((array!80923 0))(
  ( (array!80924 (arr!39022 (Array (_ BitVec 32) ValueCell!15055)) (size!39559 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80923)

(declare-fun minValueBefore!43 () V!47547)

(declare-fun getCurrentListMap!4482 (array!80921 array!80923 (_ BitVec 32) (_ BitVec 32) V!47547 V!47547 (_ BitVec 32) Int) ListLongMap!18501)

(assert (=> b!1250974 (= lt!564557 (getCurrentListMap!4482 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1250975 () Bool)

(declare-fun e!710321 () Bool)

(declare-fun e!710322 () Bool)

(assert (=> b!1250975 (= e!710321 (and e!710322 mapRes!49222))))

(declare-fun condMapEmpty!49222 () Bool)

(declare-fun mapDefault!49222 () ValueCell!15055)

