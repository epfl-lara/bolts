; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74458 () Bool)

(assert start!74458)

(declare-fun b_free!15173 () Bool)

(declare-fun b_next!15173 () Bool)

(assert (=> start!74458 (= b_free!15173 (not b_next!15173))))

(declare-fun tp!53197 () Bool)

(declare-fun b_and!25017 () Bool)

(assert (=> start!74458 (= tp!53197 b_and!25017)))

(declare-fun b!876426 () Bool)

(declare-fun e!487913 () Bool)

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((V!28269 0))(
  ( (V!28270 (val!8756 Int)) )
))
(declare-datatypes ((ValueCell!8269 0))(
  ( (ValueCellFull!8269 (v!11185 V!28269)) (EmptyCell!8269) )
))
(declare-datatypes ((array!50942 0))(
  ( (array!50943 (arr!24494 (Array (_ BitVec 32) ValueCell!8269)) (size!24935 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50942)

(assert (=> b!876426 (= e!487913 (bvslt i!612 (size!24935 _values!688)))))

(declare-datatypes ((tuple2!11586 0))(
  ( (tuple2!11587 (_1!5803 (_ BitVec 64)) (_2!5803 V!28269)) )
))
(declare-fun lt!396518 () tuple2!11586)

(declare-datatypes ((List!17468 0))(
  ( (Nil!17465) (Cons!17464 (h!18595 tuple2!11586) (t!24553 List!17468)) )
))
(declare-datatypes ((ListLongMap!10369 0))(
  ( (ListLongMap!10370 (toList!5200 List!17468)) )
))
(declare-fun lt!396513 () ListLongMap!10369)

(declare-fun lt!396510 () V!28269)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun +!2436 (ListLongMap!10369 tuple2!11586) ListLongMap!10369)

(assert (=> b!876426 (= (+!2436 lt!396513 lt!396518) (+!2436 (+!2436 lt!396513 (tuple2!11587 k!854 lt!396510)) lt!396518))))

(declare-fun lt!396511 () V!28269)

(assert (=> b!876426 (= lt!396518 (tuple2!11587 k!854 lt!396511))))

(declare-datatypes ((Unit!29930 0))(
  ( (Unit!29931) )
))
(declare-fun lt!396516 () Unit!29930)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!328 (ListLongMap!10369 (_ BitVec 64) V!28269 V!28269) Unit!29930)

(assert (=> b!876426 (= lt!396516 (addSameAsAddTwiceSameKeyDiffValues!328 lt!396513 k!854 lt!396510 lt!396511))))

(declare-fun lt!396512 () V!28269)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun get!12896 (ValueCell!8269 V!28269) V!28269)

(assert (=> b!876426 (= lt!396510 (get!12896 (select (arr!24494 _values!688) from!1053) lt!396512))))

(declare-datatypes ((array!50944 0))(
  ( (array!50945 (arr!24495 (Array (_ BitVec 32) (_ BitVec 64))) (size!24936 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50944)

(declare-fun lt!396514 () ListLongMap!10369)

(assert (=> b!876426 (= lt!396514 (+!2436 lt!396513 (tuple2!11587 (select (arr!24495 _keys!868) from!1053) lt!396511)))))

(declare-fun v!557 () V!28269)

(assert (=> b!876426 (= lt!396511 (get!12896 (select (store (arr!24494 _values!688) i!612 (ValueCellFull!8269 v!557)) from!1053) lt!396512))))

(declare-fun defaultEntry!696 () Int)

(declare-fun dynLambda!1218 (Int (_ BitVec 64)) V!28269)

(assert (=> b!876426 (= lt!396512 (dynLambda!1218 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!396517 () array!50942)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!28269)

(declare-fun zeroValue!654 () V!28269)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!3162 (array!50944 array!50942 (_ BitVec 32) (_ BitVec 32) V!28269 V!28269 (_ BitVec 32) Int) ListLongMap!10369)

(assert (=> b!876426 (= lt!396513 (getCurrentListMapNoExtraKeys!3162 _keys!868 lt!396517 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!876427 () Bool)

(declare-fun e!487907 () Bool)

(declare-fun e!487908 () Bool)

(declare-fun mapRes!27737 () Bool)

(assert (=> b!876427 (= e!487907 (and e!487908 mapRes!27737))))

(declare-fun condMapEmpty!27737 () Bool)

(declare-fun mapDefault!27737 () ValueCell!8269)

