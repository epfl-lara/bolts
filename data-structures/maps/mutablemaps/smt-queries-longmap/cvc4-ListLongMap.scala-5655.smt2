; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73746 () Bool)

(assert start!73746)

(declare-fun b_free!14633 () Bool)

(declare-fun b_next!14633 () Bool)

(assert (=> start!73746 (= b_free!14633 (not b_next!14633))))

(declare-fun tp!51404 () Bool)

(declare-fun b_and!24263 () Bool)

(assert (=> start!73746 (= tp!51404 b_and!24263)))

(declare-fun b!863925 () Bool)

(declare-datatypes ((Unit!29519 0))(
  ( (Unit!29520) )
))
(declare-fun e!481319 () Unit!29519)

(declare-fun Unit!29521 () Unit!29519)

(assert (=> b!863925 (= e!481319 Unit!29521)))

(declare-fun lt!390791 () Unit!29519)

(declare-datatypes ((array!49682 0))(
  ( (array!49683 (arr!23868 (Array (_ BitVec 32) (_ BitVec 64))) (size!24309 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49682)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49682 (_ BitVec 32) (_ BitVec 32)) Unit!29519)

(assert (=> b!863925 (= lt!390791 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-datatypes ((List!17031 0))(
  ( (Nil!17028) (Cons!17027 (h!18158 (_ BitVec 64)) (t!23938 List!17031)) )
))
(declare-fun arrayNoDuplicates!0 (array!49682 (_ BitVec 32) List!17031) Bool)

(assert (=> b!863925 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17028)))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun lt!390789 () Unit!29519)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49682 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29519)

(assert (=> b!863925 (= lt!390789 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49682 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!863925 (arrayContainsKey!0 _keys!868 k!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!390798 () Unit!29519)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49682 (_ BitVec 64) (_ BitVec 32) List!17031) Unit!29519)

(assert (=> b!863925 (= lt!390798 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k!854 from!1053 Nil!17028))))

(assert (=> b!863925 false))

(declare-fun b!863926 () Bool)

(declare-fun res!587163 () Bool)

(declare-fun e!481321 () Bool)

(assert (=> b!863926 (=> (not res!587163) (not e!481321))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!863926 (= res!587163 (validMask!0 mask!1196))))

(declare-fun b!863927 () Bool)

(declare-fun e!481325 () Bool)

(declare-fun tp_is_empty!16769 () Bool)

(assert (=> b!863927 (= e!481325 tp_is_empty!16769)))

(declare-fun mapIsEmpty!26753 () Bool)

(declare-fun mapRes!26753 () Bool)

(assert (=> mapIsEmpty!26753 mapRes!26753))

(declare-fun b!863928 () Bool)

(declare-fun e!481323 () Bool)

(declare-fun e!481326 () Bool)

(assert (=> b!863928 (= e!481323 e!481326)))

(declare-fun res!587161 () Bool)

(assert (=> b!863928 (=> res!587161 e!481326)))

(assert (=> b!863928 (= res!587161 (= k!854 (select (arr!23868 _keys!868) from!1053)))))

(assert (=> b!863928 (not (= (select (arr!23868 _keys!868) from!1053) k!854))))

(declare-fun lt!390793 () Unit!29519)

(assert (=> b!863928 (= lt!390793 e!481319)))

(declare-fun c!92088 () Bool)

(assert (=> b!863928 (= c!92088 (= (select (arr!23868 _keys!868) from!1053) k!854))))

(declare-datatypes ((V!27405 0))(
  ( (V!27406 (val!8432 Int)) )
))
(declare-datatypes ((tuple2!11164 0))(
  ( (tuple2!11165 (_1!5592 (_ BitVec 64)) (_2!5592 V!27405)) )
))
(declare-datatypes ((List!17032 0))(
  ( (Nil!17029) (Cons!17028 (h!18159 tuple2!11164) (t!23939 List!17032)) )
))
(declare-datatypes ((ListLongMap!9947 0))(
  ( (ListLongMap!9948 (toList!4989 List!17032)) )
))
(declare-fun lt!390797 () ListLongMap!9947)

(declare-fun lt!390786 () ListLongMap!9947)

(assert (=> b!863928 (= lt!390797 lt!390786)))

(declare-fun lt!390788 () ListLongMap!9947)

(declare-fun lt!390800 () tuple2!11164)

(declare-fun +!2286 (ListLongMap!9947 tuple2!11164) ListLongMap!9947)

(assert (=> b!863928 (= lt!390786 (+!2286 lt!390788 lt!390800))))

(declare-fun lt!390799 () V!27405)

(assert (=> b!863928 (= lt!390800 (tuple2!11165 (select (arr!23868 _keys!868) from!1053) lt!390799))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((ValueCell!7945 0))(
  ( (ValueCellFull!7945 (v!10853 V!27405)) (EmptyCell!7945) )
))
(declare-datatypes ((array!49684 0))(
  ( (array!49685 (arr!23869 (Array (_ BitVec 32) ValueCell!7945)) (size!24310 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49684)

(declare-fun get!12619 (ValueCell!7945 V!27405) V!27405)

(declare-fun dynLambda!1159 (Int (_ BitVec 64)) V!27405)

(assert (=> b!863928 (= lt!390799 (get!12619 (select (arr!23869 _values!688) from!1053) (dynLambda!1159 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!863929 () Bool)

(declare-fun e!481322 () Bool)

(assert (=> b!863929 (= e!481322 (not e!481323))))

(declare-fun res!587166 () Bool)

(assert (=> b!863929 (=> res!587166 e!481323)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!863929 (= res!587166 (not (validKeyInArray!0 (select (arr!23868 _keys!868) from!1053))))))

(declare-fun lt!390795 () ListLongMap!9947)

(assert (=> b!863929 (= lt!390795 lt!390788)))

(declare-fun lt!390792 () ListLongMap!9947)

(declare-fun lt!390787 () tuple2!11164)

(assert (=> b!863929 (= lt!390788 (+!2286 lt!390792 lt!390787))))

(declare-fun lt!390801 () array!49684)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!27405)

(declare-fun zeroValue!654 () V!27405)

(declare-fun getCurrentListMapNoExtraKeys!2962 (array!49682 array!49684 (_ BitVec 32) (_ BitVec 32) V!27405 V!27405 (_ BitVec 32) Int) ListLongMap!9947)

(assert (=> b!863929 (= lt!390795 (getCurrentListMapNoExtraKeys!2962 _keys!868 lt!390801 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun v!557 () V!27405)

(assert (=> b!863929 (= lt!390787 (tuple2!11165 k!854 v!557))))

(assert (=> b!863929 (= lt!390792 (getCurrentListMapNoExtraKeys!2962 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!390790 () Unit!29519)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!531 (array!49682 array!49684 (_ BitVec 32) (_ BitVec 32) V!27405 V!27405 (_ BitVec 32) (_ BitVec 64) V!27405 (_ BitVec 32) Int) Unit!29519)

(assert (=> b!863929 (= lt!390790 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!531 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!863930 () Bool)

(declare-fun e!481318 () Bool)

(assert (=> b!863930 (= e!481318 (and e!481325 mapRes!26753))))

(declare-fun condMapEmpty!26753 () Bool)

(declare-fun mapDefault!26753 () ValueCell!7945)

