; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74696 () Bool)

(assert start!74696)

(declare-fun b_free!15317 () Bool)

(declare-fun b_next!15317 () Bool)

(assert (=> start!74696 (= b_free!15317 (not b_next!15317))))

(declare-fun tp!53640 () Bool)

(declare-fun b_and!25271 () Bool)

(assert (=> start!74696 (= tp!53640 b_and!25271)))

(declare-fun b!879855 () Bool)

(declare-fun res!597874 () Bool)

(declare-fun e!489680 () Bool)

(assert (=> b!879855 (=> (not res!597874) (not e!489680))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!879855 (= res!597874 (validKeyInArray!0 k!854))))

(declare-fun b!879856 () Bool)

(declare-fun e!489674 () Bool)

(declare-datatypes ((array!51232 0))(
  ( (array!51233 (arr!24636 (Array (_ BitVec 32) (_ BitVec 64))) (size!25077 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51232)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!879856 (= e!489674 (or (not (= (select (arr!24636 _keys!868) from!1053) k!854)) (bvsge (size!25077 _keys!868) #b01111111111111111111111111111111) (bvsle #b00000000000000000000000000000000 (size!25077 _keys!868))))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((V!28461 0))(
  ( (V!28462 (val!8828 Int)) )
))
(declare-datatypes ((tuple2!11702 0))(
  ( (tuple2!11703 (_1!5861 (_ BitVec 64)) (_2!5861 V!28461)) )
))
(declare-datatypes ((List!17577 0))(
  ( (Nil!17574) (Cons!17573 (h!18704 tuple2!11702) (t!24704 List!17577)) )
))
(declare-datatypes ((ListLongMap!10485 0))(
  ( (ListLongMap!10486 (toList!5258 List!17577)) )
))
(declare-fun lt!397837 () ListLongMap!10485)

(declare-datatypes ((ValueCell!8341 0))(
  ( (ValueCellFull!8341 (v!11272 V!28461)) (EmptyCell!8341) )
))
(declare-datatypes ((array!51234 0))(
  ( (array!51235 (arr!24637 (Array (_ BitVec 32) ValueCell!8341)) (size!25078 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51234)

(declare-fun lt!397839 () ListLongMap!10485)

(declare-fun +!2464 (ListLongMap!10485 tuple2!11702) ListLongMap!10485)

(declare-fun get!12966 (ValueCell!8341 V!28461) V!28461)

(declare-fun dynLambda!1233 (Int (_ BitVec 64)) V!28461)

(assert (=> b!879856 (= lt!397839 (+!2464 lt!397837 (tuple2!11703 (select (arr!24636 _keys!868) from!1053) (get!12966 (select (arr!24637 _values!688) from!1053) (dynLambda!1233 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!879857 () Bool)

(declare-fun e!489679 () Bool)

(declare-fun e!489675 () Bool)

(declare-fun mapRes!27963 () Bool)

(assert (=> b!879857 (= e!489679 (and e!489675 mapRes!27963))))

(declare-fun condMapEmpty!27963 () Bool)

(declare-fun mapDefault!27963 () ValueCell!8341)

