; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105146 () Bool)

(assert start!105146)

(declare-fun b_free!26843 () Bool)

(declare-fun b_next!26843 () Bool)

(assert (=> start!105146 (= b_free!26843 (not b_next!26843))))

(declare-fun tp!94031 () Bool)

(declare-fun b_and!44657 () Bool)

(assert (=> start!105146 (= tp!94031 b_and!44657)))

(declare-fun b!1252486 () Bool)

(declare-fun e!711423 () Bool)

(declare-fun tp_is_empty!31745 () Bool)

(assert (=> b!1252486 (= e!711423 tp_is_empty!31745)))

(declare-fun b!1252487 () Bool)

(declare-fun e!711425 () Bool)

(assert (=> b!1252487 (= e!711425 true)))

(declare-fun defaultEntry!922 () Int)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-datatypes ((V!47691 0))(
  ( (V!47692 (val!15935 Int)) )
))
(declare-fun zeroValue!871 () V!47691)

(declare-datatypes ((array!81131 0))(
  ( (array!81132 (arr!39124 (Array (_ BitVec 32) (_ BitVec 64))) (size!39661 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81131)

(declare-datatypes ((ValueCell!15109 0))(
  ( (ValueCellFull!15109 (v!18633 V!47691)) (EmptyCell!15109) )
))
(declare-datatypes ((array!81133 0))(
  ( (array!81134 (arr!39125 (Array (_ BitVec 32) ValueCell!15109)) (size!39662 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81133)

(declare-fun minValueBefore!43 () V!47691)

(declare-datatypes ((tuple2!20696 0))(
  ( (tuple2!20697 (_1!10358 (_ BitVec 64)) (_2!10358 V!47691)) )
))
(declare-datatypes ((List!27946 0))(
  ( (Nil!27943) (Cons!27942 (h!29151 tuple2!20696) (t!41432 List!27946)) )
))
(declare-datatypes ((ListLongMap!18581 0))(
  ( (ListLongMap!18582 (toList!9306 List!27946)) )
))
(declare-fun lt!565342 () ListLongMap!18581)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun getCurrentListMap!4502 (array!81131 array!81133 (_ BitVec 32) (_ BitVec 32) V!47691 V!47691 (_ BitVec 32) Int) ListLongMap!18581)

(assert (=> b!1252487 (= lt!565342 (getCurrentListMap!4502 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1252488 () Bool)

(declare-fun e!711424 () Bool)

(assert (=> b!1252488 (= e!711424 tp_is_empty!31745)))

(declare-fun b!1252489 () Bool)

(declare-fun res!835345 () Bool)

(declare-fun e!711426 () Bool)

(assert (=> b!1252489 (=> (not res!835345) (not e!711426))))

(declare-datatypes ((List!27947 0))(
  ( (Nil!27944) (Cons!27943 (h!29152 (_ BitVec 64)) (t!41433 List!27947)) )
))
(declare-fun arrayNoDuplicates!0 (array!81131 (_ BitVec 32) List!27947) Bool)

(assert (=> b!1252489 (= res!835345 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27944))))

(declare-fun b!1252490 () Bool)

(declare-fun e!711427 () Bool)

(declare-fun mapRes!49390 () Bool)

(assert (=> b!1252490 (= e!711427 (and e!711424 mapRes!49390))))

(declare-fun condMapEmpty!49390 () Bool)

(declare-fun mapDefault!49390 () ValueCell!15109)

