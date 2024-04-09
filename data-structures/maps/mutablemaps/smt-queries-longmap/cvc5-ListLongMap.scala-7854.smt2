; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97904 () Bool)

(assert start!97904)

(declare-fun b_free!23569 () Bool)

(declare-fun b_next!23569 () Bool)

(assert (=> start!97904 (= b_free!23569 (not b_next!23569))))

(declare-fun tp!83412 () Bool)

(declare-fun b_and!37943 () Bool)

(assert (=> start!97904 (= tp!83412 b_and!37943)))

(declare-fun res!748571 () Bool)

(declare-fun e!638042 () Bool)

(assert (=> start!97904 (=> (not res!748571) (not e!638042))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!73024 0))(
  ( (array!73025 (arr!35161 (Array (_ BitVec 32) (_ BitVec 64))) (size!35698 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73024)

(assert (=> start!97904 (= res!748571 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35698 _keys!1208))))))

(assert (=> start!97904 e!638042))

(declare-fun tp_is_empty!28099 () Bool)

(assert (=> start!97904 tp_is_empty!28099))

(declare-fun array_inv!26874 (array!73024) Bool)

(assert (=> start!97904 (array_inv!26874 _keys!1208)))

(assert (=> start!97904 true))

(assert (=> start!97904 tp!83412))

(declare-datatypes ((V!42593 0))(
  ( (V!42594 (val!14106 Int)) )
))
(declare-datatypes ((ValueCell!13340 0))(
  ( (ValueCellFull!13340 (v!16740 V!42593)) (EmptyCell!13340) )
))
(declare-datatypes ((array!73026 0))(
  ( (array!73027 (arr!35162 (Array (_ BitVec 32) ValueCell!13340)) (size!35699 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73026)

(declare-fun e!638039 () Bool)

(declare-fun array_inv!26875 (array!73026) Bool)

(assert (=> start!97904 (and (array_inv!26875 _values!996) e!638039)))

(declare-fun b!1120416 () Bool)

(declare-fun e!638036 () Bool)

(assert (=> b!1120416 (= e!638036 true)))

(declare-fun zeroValue!944 () V!42593)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!42593)

(declare-datatypes ((tuple2!17754 0))(
  ( (tuple2!17755 (_1!8887 (_ BitVec 64)) (_2!8887 V!42593)) )
))
(declare-datatypes ((List!24594 0))(
  ( (Nil!24591) (Cons!24590 (h!25799 tuple2!17754) (t!35162 List!24594)) )
))
(declare-datatypes ((ListLongMap!15735 0))(
  ( (ListLongMap!15736 (toList!7883 List!24594)) )
))
(declare-fun lt!498003 () ListLongMap!15735)

(declare-fun lt!498004 () array!73024)

(declare-fun getCurrentListMapNoExtraKeys!4344 (array!73024 array!73026 (_ BitVec 32) (_ BitVec 32) V!42593 V!42593 (_ BitVec 32) Int) ListLongMap!15735)

(declare-fun dynLambda!2446 (Int (_ BitVec 64)) V!42593)

(assert (=> b!1120416 (= lt!498003 (getCurrentListMapNoExtraKeys!4344 lt!498004 (array!73027 (store (arr!35162 _values!996) i!673 (ValueCellFull!13340 (dynLambda!2446 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35699 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!498006 () ListLongMap!15735)

(assert (=> b!1120416 (= lt!498006 (getCurrentListMapNoExtraKeys!4344 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1120417 () Bool)

(declare-fun e!638040 () Bool)

(declare-fun mapRes!43966 () Bool)

(assert (=> b!1120417 (= e!638039 (and e!638040 mapRes!43966))))

(declare-fun condMapEmpty!43966 () Bool)

(declare-fun mapDefault!43966 () ValueCell!13340)

