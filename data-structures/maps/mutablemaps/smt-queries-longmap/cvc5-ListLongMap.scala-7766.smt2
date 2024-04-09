; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97376 () Bool)

(assert start!97376)

(declare-fun b_free!23311 () Bool)

(declare-fun b_next!23311 () Bool)

(assert (=> start!97376 (= b_free!23311 (not b_next!23311))))

(declare-fun tp!82233 () Bool)

(declare-fun b_and!37475 () Bool)

(assert (=> start!97376 (= tp!82233 b_and!37475)))

(declare-fun b!1109119 () Bool)

(declare-fun res!740255 () Bool)

(declare-fun e!632699 () Bool)

(assert (=> b!1109119 (=> (not res!740255) (not e!632699))))

(declare-datatypes ((array!72010 0))(
  ( (array!72011 (arr!34654 (Array (_ BitVec 32) (_ BitVec 64))) (size!35191 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72010)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1109119 (= res!740255 (= (select (arr!34654 _keys!1208) i!673) k!934))))

(declare-fun res!740262 () Bool)

(assert (=> start!97376 (=> (not res!740262) (not e!632699))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97376 (= res!740262 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35191 _keys!1208))))))

(assert (=> start!97376 e!632699))

(declare-fun tp_is_empty!27571 () Bool)

(assert (=> start!97376 tp_is_empty!27571))

(declare-fun array_inv!26534 (array!72010) Bool)

(assert (=> start!97376 (array_inv!26534 _keys!1208)))

(assert (=> start!97376 true))

(assert (=> start!97376 tp!82233))

(declare-datatypes ((V!41889 0))(
  ( (V!41890 (val!13842 Int)) )
))
(declare-datatypes ((ValueCell!13076 0))(
  ( (ValueCellFull!13076 (v!16476 V!41889)) (EmptyCell!13076) )
))
(declare-datatypes ((array!72012 0))(
  ( (array!72013 (arr!34655 (Array (_ BitVec 32) ValueCell!13076)) (size!35192 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72012)

(declare-fun e!632697 () Bool)

(declare-fun array_inv!26535 (array!72012) Bool)

(assert (=> start!97376 (and (array_inv!26535 _values!996) e!632697)))

(declare-fun mapIsEmpty!43174 () Bool)

(declare-fun mapRes!43174 () Bool)

(assert (=> mapIsEmpty!43174 mapRes!43174))

(declare-fun zeroValue!944 () V!41889)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((tuple2!17564 0))(
  ( (tuple2!17565 (_1!8792 (_ BitVec 64)) (_2!8792 V!41889)) )
))
(declare-datatypes ((List!24302 0))(
  ( (Nil!24299) (Cons!24298 (h!25507 tuple2!17564) (t!34666 List!24302)) )
))
(declare-datatypes ((ListLongMap!15545 0))(
  ( (ListLongMap!15546 (toList!7788 List!24302)) )
))
(declare-fun call!46631 () ListLongMap!15545)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun bm!46627 () Bool)

(declare-fun lt!495915 () array!72010)

(declare-fun minValue!944 () V!41889)

(declare-fun getCurrentListMapNoExtraKeys!4253 (array!72010 array!72012 (_ BitVec 32) (_ BitVec 32) V!41889 V!41889 (_ BitVec 32) Int) ListLongMap!15545)

(declare-fun dynLambda!2377 (Int (_ BitVec 64)) V!41889)

(assert (=> bm!46627 (= call!46631 (getCurrentListMapNoExtraKeys!4253 lt!495915 (array!72013 (store (arr!34655 _values!996) i!673 (ValueCellFull!13076 (dynLambda!2377 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35192 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1109120 () Bool)

(declare-fun e!632698 () Bool)

(assert (=> b!1109120 (= e!632697 (and e!632698 mapRes!43174))))

(declare-fun condMapEmpty!43174 () Bool)

(declare-fun mapDefault!43174 () ValueCell!13076)

