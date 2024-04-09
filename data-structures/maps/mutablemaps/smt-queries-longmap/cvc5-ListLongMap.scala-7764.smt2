; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97364 () Bool)

(assert start!97364)

(declare-fun b_free!23299 () Bool)

(declare-fun b_next!23299 () Bool)

(assert (=> start!97364 (= b_free!23299 (not b_next!23299))))

(declare-fun tp!82196 () Bool)

(declare-fun b_and!37451 () Bool)

(assert (=> start!97364 (= tp!82196 b_and!37451)))

(declare-fun mapIsEmpty!43156 () Bool)

(declare-fun mapRes!43156 () Bool)

(assert (=> mapIsEmpty!43156 mapRes!43156))

(declare-fun b!1108819 () Bool)

(declare-fun res!740063 () Bool)

(declare-fun e!632552 () Bool)

(assert (=> b!1108819 (=> (not res!740063) (not e!632552))))

(declare-datatypes ((array!71986 0))(
  ( (array!71987 (arr!34642 (Array (_ BitVec 32) (_ BitVec 64))) (size!35179 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71986)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!41873 0))(
  ( (V!41874 (val!13836 Int)) )
))
(declare-datatypes ((ValueCell!13070 0))(
  ( (ValueCellFull!13070 (v!16470 V!41873)) (EmptyCell!13070) )
))
(declare-datatypes ((array!71988 0))(
  ( (array!71989 (arr!34643 (Array (_ BitVec 32) ValueCell!13070)) (size!35180 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71988)

(assert (=> b!1108819 (= res!740063 (and (= (size!35180 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35179 _keys!1208) (size!35180 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun res!740057 () Bool)

(assert (=> start!97364 (=> (not res!740057) (not e!632552))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97364 (= res!740057 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35179 _keys!1208))))))

(assert (=> start!97364 e!632552))

(declare-fun tp_is_empty!27559 () Bool)

(assert (=> start!97364 tp_is_empty!27559))

(declare-fun array_inv!26524 (array!71986) Bool)

(assert (=> start!97364 (array_inv!26524 _keys!1208)))

(assert (=> start!97364 true))

(assert (=> start!97364 tp!82196))

(declare-fun e!632550 () Bool)

(declare-fun array_inv!26525 (array!71988) Bool)

(assert (=> start!97364 (and (array_inv!26525 _values!996) e!632550)))

(declare-fun b!1108820 () Bool)

(declare-fun res!740066 () Bool)

(assert (=> b!1108820 (=> (not res!740066) (not e!632552))))

(declare-datatypes ((List!24292 0))(
  ( (Nil!24289) (Cons!24288 (h!25497 (_ BitVec 64)) (t!34644 List!24292)) )
))
(declare-fun arrayNoDuplicates!0 (array!71986 (_ BitVec 32) List!24292) Bool)

(assert (=> b!1108820 (= res!740066 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24289))))

(declare-fun e!632554 () Bool)

(declare-datatypes ((tuple2!17556 0))(
  ( (tuple2!17557 (_1!8788 (_ BitVec 64)) (_2!8788 V!41873)) )
))
(declare-datatypes ((List!24293 0))(
  ( (Nil!24290) (Cons!24289 (h!25498 tuple2!17556) (t!34645 List!24293)) )
))
(declare-datatypes ((ListLongMap!15537 0))(
  ( (ListLongMap!15538 (toList!7784 List!24293)) )
))
(declare-fun call!46595 () ListLongMap!15537)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun b!1108821 () Bool)

(declare-fun call!46594 () ListLongMap!15537)

(declare-fun -!1015 (ListLongMap!15537 (_ BitVec 64)) ListLongMap!15537)

(assert (=> b!1108821 (= e!632554 (= call!46594 (-!1015 call!46595 k!934)))))

(declare-fun b!1108822 () Bool)

(declare-fun res!740067 () Bool)

(assert (=> b!1108822 (=> (not res!740067) (not e!632552))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1108822 (= res!740067 (validMask!0 mask!1564))))

(declare-fun b!1108823 () Bool)

(declare-fun e!632549 () Bool)

(assert (=> b!1108823 (= e!632550 (and e!632549 mapRes!43156))))

(declare-fun condMapEmpty!43156 () Bool)

(declare-fun mapDefault!43156 () ValueCell!13070)

