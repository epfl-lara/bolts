; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73640 () Bool)

(assert start!73640)

(declare-fun b_free!14527 () Bool)

(declare-fun b_next!14527 () Bool)

(assert (=> start!73640 (= b_free!14527 (not b_next!14527))))

(declare-fun tp!51086 () Bool)

(declare-fun b_and!24051 () Bool)

(assert (=> start!73640 (= tp!51086 b_and!24051)))

(declare-fun b!861318 () Bool)

(declare-fun res!585452 () Bool)

(declare-fun e!479933 () Bool)

(assert (=> b!861318 (=> (not res!585452) (not e!479933))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!861318 (= res!585452 (validMask!0 mask!1196))))

(declare-fun b!861319 () Bool)

(declare-fun e!479934 () Bool)

(declare-fun tp_is_empty!16663 () Bool)

(assert (=> b!861319 (= e!479934 tp_is_empty!16663)))

(declare-fun b!861320 () Bool)

(declare-fun res!585454 () Bool)

(assert (=> b!861320 (=> (not res!585454) (not e!479933))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!49474 0))(
  ( (array!49475 (arr!23764 (Array (_ BitVec 32) (_ BitVec 64))) (size!24205 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49474)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!861320 (= res!585454 (and (= (select (arr!23764 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!861321 () Bool)

(declare-datatypes ((Unit!29345 0))(
  ( (Unit!29346) )
))
(declare-fun e!479937 () Unit!29345)

(declare-fun Unit!29347 () Unit!29345)

(assert (=> b!861321 (= e!479937 Unit!29347)))

(declare-fun lt!388461 () Unit!29345)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49474 (_ BitVec 32) (_ BitVec 32)) Unit!29345)

(assert (=> b!861321 (= lt!388461 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-datatypes ((List!16938 0))(
  ( (Nil!16935) (Cons!16934 (h!18065 (_ BitVec 64)) (t!23739 List!16938)) )
))
(declare-fun arrayNoDuplicates!0 (array!49474 (_ BitVec 32) List!16938) Bool)

(assert (=> b!861321 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!16935)))

(declare-fun lt!388457 () Unit!29345)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49474 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29345)

(assert (=> b!861321 (= lt!388457 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49474 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!861321 (arrayContainsKey!0 _keys!868 k!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!388467 () Unit!29345)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49474 (_ BitVec 64) (_ BitVec 32) List!16938) Unit!29345)

(assert (=> b!861321 (= lt!388467 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k!854 from!1053 Nil!16935))))

(assert (=> b!861321 false))

(declare-fun b!861322 () Bool)

(declare-fun e!479935 () Bool)

(assert (=> b!861322 (= e!479935 tp_is_empty!16663)))

(declare-fun b!861324 () Bool)

(declare-fun res!585459 () Bool)

(assert (=> b!861324 (=> (not res!585459) (not e!479933))))

(assert (=> b!861324 (= res!585459 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24205 _keys!868))))))

(declare-fun b!861325 () Bool)

(declare-fun e!479936 () Bool)

(assert (=> b!861325 (= e!479933 e!479936)))

(declare-fun res!585455 () Bool)

(assert (=> b!861325 (=> (not res!585455) (not e!479936))))

(assert (=> b!861325 (= res!585455 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-datatypes ((V!27265 0))(
  ( (V!27266 (val!8379 Int)) )
))
(declare-datatypes ((ValueCell!7892 0))(
  ( (ValueCellFull!7892 (v!10800 V!27265)) (EmptyCell!7892) )
))
(declare-datatypes ((array!49476 0))(
  ( (array!49477 (arr!23765 (Array (_ BitVec 32) ValueCell!7892)) (size!24206 (_ BitVec 32))) )
))
(declare-fun lt!388460 () array!49476)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((tuple2!11068 0))(
  ( (tuple2!11069 (_1!5544 (_ BitVec 64)) (_2!5544 V!27265)) )
))
(declare-datatypes ((List!16939 0))(
  ( (Nil!16936) (Cons!16935 (h!18066 tuple2!11068) (t!23740 List!16939)) )
))
(declare-datatypes ((ListLongMap!9851 0))(
  ( (ListLongMap!9852 (toList!4941 List!16939)) )
))
(declare-fun lt!388465 () ListLongMap!9851)

(declare-fun minValue!654 () V!27265)

(declare-fun zeroValue!654 () V!27265)

(declare-fun getCurrentListMapNoExtraKeys!2920 (array!49474 array!49476 (_ BitVec 32) (_ BitVec 32) V!27265 V!27265 (_ BitVec 32) Int) ListLongMap!9851)

(assert (=> b!861325 (= lt!388465 (getCurrentListMapNoExtraKeys!2920 _keys!868 lt!388460 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27265)

(declare-fun _values!688 () array!49476)

(assert (=> b!861325 (= lt!388460 (array!49477 (store (arr!23765 _values!688) i!612 (ValueCellFull!7892 v!557)) (size!24206 _values!688)))))

(declare-fun lt!388458 () ListLongMap!9851)

(assert (=> b!861325 (= lt!388458 (getCurrentListMapNoExtraKeys!2920 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun mapIsEmpty!26594 () Bool)

(declare-fun mapRes!26594 () Bool)

(assert (=> mapIsEmpty!26594 mapRes!26594))

(declare-fun b!861326 () Bool)

(declare-fun res!585451 () Bool)

(assert (=> b!861326 (=> (not res!585451) (not e!479933))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!861326 (= res!585451 (validKeyInArray!0 k!854))))

(declare-fun b!861327 () Bool)

(declare-fun e!479931 () Bool)

(assert (=> b!861327 (= e!479931 (and e!479935 mapRes!26594))))

(declare-fun condMapEmpty!26594 () Bool)

(declare-fun mapDefault!26594 () ValueCell!7892)

