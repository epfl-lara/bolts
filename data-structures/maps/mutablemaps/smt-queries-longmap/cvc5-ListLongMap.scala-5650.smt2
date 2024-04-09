; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73712 () Bool)

(assert start!73712)

(declare-fun b_free!14599 () Bool)

(declare-fun b_next!14599 () Bool)

(assert (=> start!73712 (= b_free!14599 (not b_next!14599))))

(declare-fun tp!51301 () Bool)

(declare-fun b_and!24195 () Bool)

(assert (=> start!73712 (= tp!51301 b_and!24195)))

(declare-fun b!863075 () Bool)

(declare-fun res!586596 () Bool)

(declare-fun e!480866 () Bool)

(assert (=> b!863075 (=> (not res!586596) (not e!480866))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!49616 0))(
  ( (array!49617 (arr!23835 (Array (_ BitVec 32) (_ BitVec 64))) (size!24276 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49616)

(declare-datatypes ((V!27361 0))(
  ( (V!27362 (val!8415 Int)) )
))
(declare-datatypes ((ValueCell!7928 0))(
  ( (ValueCellFull!7928 (v!10836 V!27361)) (EmptyCell!7928) )
))
(declare-datatypes ((array!49618 0))(
  ( (array!49619 (arr!23836 (Array (_ BitVec 32) ValueCell!7928)) (size!24277 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49618)

(assert (=> b!863075 (= res!586596 (and (= (size!24277 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24276 _keys!868) (size!24277 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!863076 () Bool)

(declare-fun res!586597 () Bool)

(assert (=> b!863076 (=> (not res!586597) (not e!480866))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!863076 (= res!586597 (validMask!0 mask!1196))))

(declare-fun b!863077 () Bool)

(declare-fun res!586605 () Bool)

(assert (=> b!863077 (=> (not res!586605) (not e!480866))))

(declare-datatypes ((List!17002 0))(
  ( (Nil!16999) (Cons!16998 (h!18129 (_ BitVec 64)) (t!23875 List!17002)) )
))
(declare-fun arrayNoDuplicates!0 (array!49616 (_ BitVec 32) List!17002) Bool)

(assert (=> b!863077 (= res!586605 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16999))))

(declare-fun b!863078 () Bool)

(declare-fun e!480867 () Bool)

(declare-fun tp_is_empty!16735 () Bool)

(assert (=> b!863078 (= e!480867 tp_is_empty!16735)))

(declare-fun b!863079 () Bool)

(declare-fun e!480862 () Bool)

(declare-fun e!480859 () Bool)

(assert (=> b!863079 (= e!480862 (not e!480859))))

(declare-fun res!586601 () Bool)

(assert (=> b!863079 (=> res!586601 e!480859)))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!863079 (= res!586601 (not (validKeyInArray!0 (select (arr!23835 _keys!868) from!1053))))))

(declare-datatypes ((tuple2!11134 0))(
  ( (tuple2!11135 (_1!5577 (_ BitVec 64)) (_2!5577 V!27361)) )
))
(declare-datatypes ((List!17003 0))(
  ( (Nil!17000) (Cons!16999 (h!18130 tuple2!11134) (t!23876 List!17003)) )
))
(declare-datatypes ((ListLongMap!9917 0))(
  ( (ListLongMap!9918 (toList!4974 List!17003)) )
))
(declare-fun lt!389976 () ListLongMap!9917)

(declare-fun lt!389972 () ListLongMap!9917)

(assert (=> b!863079 (= lt!389976 lt!389972)))

(declare-fun lt!389981 () ListLongMap!9917)

(declare-fun lt!389973 () tuple2!11134)

(declare-fun +!2271 (ListLongMap!9917 tuple2!11134) ListLongMap!9917)

(assert (=> b!863079 (= lt!389972 (+!2271 lt!389981 lt!389973))))

(declare-fun lt!389975 () array!49618)

(declare-fun defaultEntry!696 () Int)

(declare-fun minValue!654 () V!27361)

(declare-fun zeroValue!654 () V!27361)

(declare-fun getCurrentListMapNoExtraKeys!2949 (array!49616 array!49618 (_ BitVec 32) (_ BitVec 32) V!27361 V!27361 (_ BitVec 32) Int) ListLongMap!9917)

(assert (=> b!863079 (= lt!389976 (getCurrentListMapNoExtraKeys!2949 _keys!868 lt!389975 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun v!557 () V!27361)

(assert (=> b!863079 (= lt!389973 (tuple2!11135 k!854 v!557))))

(assert (=> b!863079 (= lt!389981 (getCurrentListMapNoExtraKeys!2949 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-datatypes ((Unit!29464 0))(
  ( (Unit!29465) )
))
(declare-fun lt!389971 () Unit!29464)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!518 (array!49616 array!49618 (_ BitVec 32) (_ BitVec 32) V!27361 V!27361 (_ BitVec 32) (_ BitVec 64) V!27361 (_ BitVec 32) Int) Unit!29464)

(assert (=> b!863079 (= lt!389971 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!518 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!863080 () Bool)

(declare-fun res!586595 () Bool)

(assert (=> b!863080 (=> (not res!586595) (not e!480866))))

(assert (=> b!863080 (= res!586595 (validKeyInArray!0 k!854))))

(declare-fun b!863081 () Bool)

(declare-fun e!480861 () Bool)

(assert (=> b!863081 (= e!480859 e!480861)))

(declare-fun res!586604 () Bool)

(assert (=> b!863081 (=> res!586604 e!480861)))

(assert (=> b!863081 (= res!586604 (= k!854 (select (arr!23835 _keys!868) from!1053)))))

(assert (=> b!863081 (not (= (select (arr!23835 _keys!868) from!1053) k!854))))

(declare-fun lt!389982 () Unit!29464)

(declare-fun e!480863 () Unit!29464)

(assert (=> b!863081 (= lt!389982 e!480863)))

(declare-fun c!92037 () Bool)

(assert (=> b!863081 (= c!92037 (= (select (arr!23835 _keys!868) from!1053) k!854))))

(declare-fun lt!389978 () ListLongMap!9917)

(declare-fun lt!389977 () ListLongMap!9917)

(assert (=> b!863081 (= lt!389978 lt!389977)))

(declare-fun lt!389984 () tuple2!11134)

(assert (=> b!863081 (= lt!389977 (+!2271 lt!389972 lt!389984))))

(declare-fun lt!389970 () V!27361)

(assert (=> b!863081 (= lt!389984 (tuple2!11135 (select (arr!23835 _keys!868) from!1053) lt!389970))))

(declare-fun get!12597 (ValueCell!7928 V!27361) V!27361)

(declare-fun dynLambda!1147 (Int (_ BitVec 64)) V!27361)

(assert (=> b!863081 (= lt!389970 (get!12597 (select (arr!23836 _values!688) from!1053) (dynLambda!1147 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!26702 () Bool)

(declare-fun mapRes!26702 () Bool)

(assert (=> mapIsEmpty!26702 mapRes!26702))

(declare-fun b!863082 () Bool)

(declare-fun e!480864 () Bool)

(assert (=> b!863082 (= e!480864 (and e!480867 mapRes!26702))))

(declare-fun condMapEmpty!26702 () Bool)

(declare-fun mapDefault!26702 () ValueCell!7928)

