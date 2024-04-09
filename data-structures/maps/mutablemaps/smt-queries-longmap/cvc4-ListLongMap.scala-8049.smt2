; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99174 () Bool)

(assert start!99174)

(declare-fun b_free!24743 () Bool)

(declare-fun b_next!24743 () Bool)

(assert (=> start!99174 (= b_free!24743 (not b_next!24743))))

(declare-fun tp!86940 () Bool)

(declare-fun b_and!40349 () Bool)

(assert (=> start!99174 (= tp!86940 b_and!40349)))

(declare-fun b!1166450 () Bool)

(declare-fun res!773793 () Bool)

(declare-fun e!663081 () Bool)

(assert (=> b!1166450 (=> (not res!773793) (not e!663081))))

(declare-datatypes ((array!75324 0))(
  ( (array!75325 (arr!36309 (Array (_ BitVec 32) (_ BitVec 64))) (size!36846 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75324)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!44157 0))(
  ( (V!44158 (val!14693 Int)) )
))
(declare-datatypes ((ValueCell!13927 0))(
  ( (ValueCellFull!13927 (v!17331 V!44157)) (EmptyCell!13927) )
))
(declare-datatypes ((array!75326 0))(
  ( (array!75327 (arr!36310 (Array (_ BitVec 32) ValueCell!13927)) (size!36847 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75326)

(assert (=> b!1166450 (= res!773793 (and (= (size!36847 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36846 _keys!1208) (size!36847 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1166451 () Bool)

(declare-fun e!663079 () Bool)

(assert (=> b!1166451 (= e!663079 true)))

(declare-fun zeroValue!944 () V!44157)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!525228 () array!75326)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lt!525229 () array!75324)

(declare-fun minValue!944 () V!44157)

(declare-datatypes ((tuple2!18818 0))(
  ( (tuple2!18819 (_1!9419 (_ BitVec 64)) (_2!9419 V!44157)) )
))
(declare-datatypes ((List!25594 0))(
  ( (Nil!25591) (Cons!25590 (h!26799 tuple2!18818) (t!37336 List!25594)) )
))
(declare-datatypes ((ListLongMap!16799 0))(
  ( (ListLongMap!16800 (toList!8415 List!25594)) )
))
(declare-fun getCurrentListMapNoExtraKeys!4848 (array!75324 array!75326 (_ BitVec 32) (_ BitVec 32) V!44157 V!44157 (_ BitVec 32) Int) ListLongMap!16799)

(declare-fun -!1452 (ListLongMap!16799 (_ BitVec 64)) ListLongMap!16799)

(assert (=> b!1166451 (= (getCurrentListMapNoExtraKeys!4848 lt!525229 lt!525228 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1452 (getCurrentListMapNoExtraKeys!4848 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!38384 0))(
  ( (Unit!38385) )
))
(declare-fun lt!525230 () Unit!38384)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!676 (array!75324 array!75326 (_ BitVec 32) (_ BitVec 32) V!44157 V!44157 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38384)

(assert (=> b!1166451 (= lt!525230 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!676 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun res!773799 () Bool)

(assert (=> start!99174 (=> (not res!773799) (not e!663081))))

(assert (=> start!99174 (= res!773799 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36846 _keys!1208))))))

(assert (=> start!99174 e!663081))

(declare-fun tp_is_empty!29273 () Bool)

(assert (=> start!99174 tp_is_empty!29273))

(declare-fun array_inv!27640 (array!75324) Bool)

(assert (=> start!99174 (array_inv!27640 _keys!1208)))

(assert (=> start!99174 true))

(assert (=> start!99174 tp!86940))

(declare-fun e!663080 () Bool)

(declare-fun array_inv!27641 (array!75326) Bool)

(assert (=> start!99174 (and (array_inv!27641 _values!996) e!663080)))

(declare-fun b!1166452 () Bool)

(declare-fun res!773797 () Bool)

(assert (=> b!1166452 (=> (not res!773797) (not e!663081))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1166452 (= res!773797 (validMask!0 mask!1564))))

(declare-fun mapIsEmpty!45734 () Bool)

(declare-fun mapRes!45734 () Bool)

(assert (=> mapIsEmpty!45734 mapRes!45734))

(declare-fun b!1166453 () Bool)

(declare-fun e!663077 () Bool)

(assert (=> b!1166453 (= e!663077 e!663079)))

(declare-fun res!773795 () Bool)

(assert (=> b!1166453 (=> res!773795 e!663079)))

(assert (=> b!1166453 (= res!773795 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!525226 () ListLongMap!16799)

(assert (=> b!1166453 (= lt!525226 (getCurrentListMapNoExtraKeys!4848 lt!525229 lt!525228 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2843 (Int (_ BitVec 64)) V!44157)

(assert (=> b!1166453 (= lt!525228 (array!75327 (store (arr!36310 _values!996) i!673 (ValueCellFull!13927 (dynLambda!2843 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36847 _values!996)))))

(declare-fun lt!525231 () ListLongMap!16799)

(assert (=> b!1166453 (= lt!525231 (getCurrentListMapNoExtraKeys!4848 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1166454 () Bool)

(declare-fun res!773804 () Bool)

(assert (=> b!1166454 (=> (not res!773804) (not e!663081))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1166454 (= res!773804 (validKeyInArray!0 k!934))))

(declare-fun b!1166455 () Bool)

(declare-fun e!663084 () Bool)

(assert (=> b!1166455 (= e!663084 tp_is_empty!29273)))

(declare-fun b!1166456 () Bool)

(declare-fun res!773796 () Bool)

(assert (=> b!1166456 (=> (not res!773796) (not e!663081))))

(declare-datatypes ((List!25595 0))(
  ( (Nil!25592) (Cons!25591 (h!26800 (_ BitVec 64)) (t!37337 List!25595)) )
))
(declare-fun arrayNoDuplicates!0 (array!75324 (_ BitVec 32) List!25595) Bool)

(assert (=> b!1166456 (= res!773796 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25592))))

(declare-fun b!1166457 () Bool)

(declare-fun res!773803 () Bool)

(declare-fun e!663083 () Bool)

(assert (=> b!1166457 (=> (not res!773803) (not e!663083))))

(assert (=> b!1166457 (= res!773803 (arrayNoDuplicates!0 lt!525229 #b00000000000000000000000000000000 Nil!25592))))

(declare-fun b!1166458 () Bool)

(declare-fun res!773801 () Bool)

(assert (=> b!1166458 (=> (not res!773801) (not e!663081))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75324 (_ BitVec 32)) Bool)

(assert (=> b!1166458 (= res!773801 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1166459 () Bool)

(declare-fun res!773794 () Bool)

(assert (=> b!1166459 (=> (not res!773794) (not e!663081))))

(assert (=> b!1166459 (= res!773794 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36846 _keys!1208))))))

(declare-fun b!1166460 () Bool)

(declare-fun e!663078 () Bool)

(assert (=> b!1166460 (= e!663080 (and e!663078 mapRes!45734))))

(declare-fun condMapEmpty!45734 () Bool)

(declare-fun mapDefault!45734 () ValueCell!13927)

