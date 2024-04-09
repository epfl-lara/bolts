; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74034 () Bool)

(assert start!74034)

(declare-fun b_free!14921 () Bool)

(declare-fun b_next!14921 () Bool)

(assert (=> start!74034 (= b_free!14921 (not b_next!14921))))

(declare-fun tp!52267 () Bool)

(declare-fun b_and!24691 () Bool)

(assert (=> start!74034 (= tp!52267 b_and!24691)))

(declare-fun mapNonEmpty!27185 () Bool)

(declare-fun mapRes!27185 () Bool)

(declare-fun tp!52268 () Bool)

(declare-fun e!484538 () Bool)

(assert (=> mapNonEmpty!27185 (= mapRes!27185 (and tp!52268 e!484538))))

(declare-datatypes ((V!27789 0))(
  ( (V!27790 (val!8576 Int)) )
))
(declare-datatypes ((ValueCell!8089 0))(
  ( (ValueCellFull!8089 (v!10997 V!27789)) (EmptyCell!8089) )
))
(declare-fun mapRest!27185 () (Array (_ BitVec 32) ValueCell!8089))

(declare-fun mapValue!27185 () ValueCell!8089)

(declare-datatypes ((array!50246 0))(
  ( (array!50247 (arr!24150 (Array (_ BitVec 32) ValueCell!8089)) (size!24591 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50246)

(declare-fun mapKey!27185 () (_ BitVec 32))

(assert (=> mapNonEmpty!27185 (= (arr!24150 _values!688) (store mapRest!27185 mapKey!27185 mapValue!27185))))

(declare-fun res!591467 () Bool)

(declare-fun e!484539 () Bool)

(assert (=> start!74034 (=> (not res!591467) (not e!484539))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!50248 0))(
  ( (array!50249 (arr!24151 (Array (_ BitVec 32) (_ BitVec 64))) (size!24592 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50248)

(assert (=> start!74034 (= res!591467 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24592 _keys!868))))))

(assert (=> start!74034 e!484539))

(declare-fun tp_is_empty!17057 () Bool)

(assert (=> start!74034 tp_is_empty!17057))

(assert (=> start!74034 true))

(assert (=> start!74034 tp!52267))

(declare-fun array_inv!19046 (array!50248) Bool)

(assert (=> start!74034 (array_inv!19046 _keys!868)))

(declare-fun e!484534 () Bool)

(declare-fun array_inv!19047 (array!50246) Bool)

(assert (=> start!74034 (and (array_inv!19047 _values!688) e!484534)))

(declare-fun b!870081 () Bool)

(assert (=> b!870081 (= e!484538 tp_is_empty!17057)))

(declare-fun b!870082 () Bool)

(declare-fun e!484535 () Bool)

(assert (=> b!870082 (= e!484535 tp_is_empty!17057)))

(declare-fun mapIsEmpty!27185 () Bool)

(assert (=> mapIsEmpty!27185 mapRes!27185))

(declare-fun b!870083 () Bool)

(declare-fun e!484536 () Bool)

(assert (=> b!870083 (= e!484539 e!484536)))

(declare-fun res!591462 () Bool)

(assert (=> b!870083 (=> (not res!591462) (not e!484536))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!870083 (= res!591462 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!395012 () array!50246)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!11394 0))(
  ( (tuple2!11395 (_1!5707 (_ BitVec 64)) (_2!5707 V!27789)) )
))
(declare-datatypes ((List!17250 0))(
  ( (Nil!17247) (Cons!17246 (h!18377 tuple2!11394) (t!24295 List!17250)) )
))
(declare-datatypes ((ListLongMap!10177 0))(
  ( (ListLongMap!10178 (toList!5104 List!17250)) )
))
(declare-fun lt!395011 () ListLongMap!10177)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!27789)

(declare-fun zeroValue!654 () V!27789)

(declare-fun getCurrentListMapNoExtraKeys!3068 (array!50248 array!50246 (_ BitVec 32) (_ BitVec 32) V!27789 V!27789 (_ BitVec 32) Int) ListLongMap!10177)

(assert (=> b!870083 (= lt!395011 (getCurrentListMapNoExtraKeys!3068 _keys!868 lt!395012 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27789)

(assert (=> b!870083 (= lt!395012 (array!50247 (store (arr!24150 _values!688) i!612 (ValueCellFull!8089 v!557)) (size!24591 _values!688)))))

(declare-fun lt!395010 () ListLongMap!10177)

(assert (=> b!870083 (= lt!395010 (getCurrentListMapNoExtraKeys!3068 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!870084 () Bool)

(declare-fun res!591461 () Bool)

(assert (=> b!870084 (=> (not res!591461) (not e!484539))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50248 (_ BitVec 32)) Bool)

(assert (=> b!870084 (= res!591461 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!870085 () Bool)

(declare-fun res!591466 () Bool)

(assert (=> b!870085 (=> (not res!591466) (not e!484539))))

(declare-fun k!854 () (_ BitVec 64))

(assert (=> b!870085 (= res!591466 (and (= (select (arr!24151 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!870086 () Bool)

(declare-fun res!591465 () Bool)

(assert (=> b!870086 (=> (not res!591465) (not e!484539))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!870086 (= res!591465 (validKeyInArray!0 k!854))))

(declare-fun b!870087 () Bool)

(declare-fun res!591468 () Bool)

(assert (=> b!870087 (=> (not res!591468) (not e!484539))))

(assert (=> b!870087 (= res!591468 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24592 _keys!868))))))

(declare-fun b!870088 () Bool)

(declare-fun res!591464 () Bool)

(assert (=> b!870088 (=> (not res!591464) (not e!484539))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!870088 (= res!591464 (validMask!0 mask!1196))))

(declare-fun b!870089 () Bool)

(assert (=> b!870089 (= e!484534 (and e!484535 mapRes!27185))))

(declare-fun condMapEmpty!27185 () Bool)

(declare-fun mapDefault!27185 () ValueCell!8089)

