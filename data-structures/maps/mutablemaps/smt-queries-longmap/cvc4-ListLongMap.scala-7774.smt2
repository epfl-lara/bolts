; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97428 () Bool)

(assert start!97428)

(declare-fun b_free!23363 () Bool)

(declare-fun b_next!23363 () Bool)

(assert (=> start!97428 (= b_free!23363 (not b_next!23363))))

(declare-fun tp!82388 () Bool)

(declare-fun b_and!37583 () Bool)

(assert (=> start!97428 (= tp!82388 b_and!37583)))

(declare-datatypes ((V!41957 0))(
  ( (V!41958 (val!13868 Int)) )
))
(declare-fun zeroValue!944 () V!41957)

(declare-fun bm!46783 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((array!72112 0))(
  ( (array!72113 (arr!34705 (Array (_ BitVec 32) (_ BitVec 64))) (size!35242 (_ BitVec 32))) )
))
(declare-fun lt!496147 () array!72112)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((tuple2!17606 0))(
  ( (tuple2!17607 (_1!8813 (_ BitVec 64)) (_2!8813 V!41957)) )
))
(declare-datatypes ((List!24342 0))(
  ( (Nil!24339) (Cons!24338 (h!25547 tuple2!17606) (t!34758 List!24342)) )
))
(declare-datatypes ((ListLongMap!15587 0))(
  ( (ListLongMap!15588 (toList!7809 List!24342)) )
))
(declare-fun call!46787 () ListLongMap!15587)

(declare-datatypes ((ValueCell!13102 0))(
  ( (ValueCellFull!13102 (v!16502 V!41957)) (EmptyCell!13102) )
))
(declare-datatypes ((array!72114 0))(
  ( (array!72115 (arr!34706 (Array (_ BitVec 32) ValueCell!13102)) (size!35243 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72114)

(declare-fun minValue!944 () V!41957)

(declare-fun getCurrentListMapNoExtraKeys!4272 (array!72112 array!72114 (_ BitVec 32) (_ BitVec 32) V!41957 V!41957 (_ BitVec 32) Int) ListLongMap!15587)

(declare-fun dynLambda!2394 (Int (_ BitVec 64)) V!41957)

(assert (=> bm!46783 (= call!46787 (getCurrentListMapNoExtraKeys!4272 lt!496147 (array!72115 (store (arr!34706 _values!996) i!673 (ValueCellFull!13102 (dynLambda!2394 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35243 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1110443 () Bool)

(declare-fun res!741121 () Bool)

(declare-fun e!633331 () Bool)

(assert (=> b!1110443 (=> (not res!741121) (not e!633331))))

(declare-fun _keys!1208 () array!72112)

(assert (=> b!1110443 (= res!741121 (and (= (size!35243 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35242 _keys!1208) (size!35243 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun res!741113 () Bool)

(assert (=> start!97428 (=> (not res!741113) (not e!633331))))

(assert (=> start!97428 (= res!741113 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35242 _keys!1208))))))

(assert (=> start!97428 e!633331))

(declare-fun tp_is_empty!27623 () Bool)

(assert (=> start!97428 tp_is_empty!27623))

(declare-fun array_inv!26570 (array!72112) Bool)

(assert (=> start!97428 (array_inv!26570 _keys!1208)))

(assert (=> start!97428 true))

(assert (=> start!97428 tp!82388))

(declare-fun e!633330 () Bool)

(declare-fun array_inv!26571 (array!72114) Bool)

(assert (=> start!97428 (and (array_inv!26571 _values!996) e!633330)))

(declare-fun b!1110444 () Bool)

(declare-fun res!741115 () Bool)

(declare-fun e!633328 () Bool)

(assert (=> b!1110444 (=> (not res!741115) (not e!633328))))

(declare-datatypes ((List!24343 0))(
  ( (Nil!24340) (Cons!24339 (h!25548 (_ BitVec 64)) (t!34759 List!24343)) )
))
(declare-fun arrayNoDuplicates!0 (array!72112 (_ BitVec 32) List!24343) Bool)

(assert (=> b!1110444 (= res!741115 (arrayNoDuplicates!0 lt!496147 #b00000000000000000000000000000000 Nil!24340))))

(declare-fun b!1110445 () Bool)

(declare-fun e!633333 () Bool)

(assert (=> b!1110445 (= e!633333 tp_is_empty!27623)))

(declare-fun b!1110446 () Bool)

(declare-fun e!633334 () Bool)

(declare-fun mapRes!43252 () Bool)

(assert (=> b!1110446 (= e!633330 (and e!633334 mapRes!43252))))

(declare-fun condMapEmpty!43252 () Bool)

(declare-fun mapDefault!43252 () ValueCell!13102)

