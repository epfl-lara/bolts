; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74042 () Bool)

(assert start!74042)

(declare-fun b_free!14929 () Bool)

(declare-fun b_next!14929 () Bool)

(assert (=> start!74042 (= b_free!14929 (not b_next!14929))))

(declare-fun tp!52291 () Bool)

(declare-fun b_and!24699 () Bool)

(assert (=> start!74042 (= tp!52291 b_and!24699)))

(declare-fun b!870225 () Bool)

(declare-fun res!591569 () Bool)

(declare-fun e!484610 () Bool)

(assert (=> b!870225 (=> (not res!591569) (not e!484610))))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!50262 0))(
  ( (array!50263 (arr!24158 (Array (_ BitVec 32) (_ BitVec 64))) (size!24599 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50262)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!870225 (= res!591569 (and (= (select (arr!24158 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!870226 () Bool)

(declare-fun e!484611 () Bool)

(declare-fun tp_is_empty!17065 () Bool)

(assert (=> b!870226 (= e!484611 tp_is_empty!17065)))

(declare-fun b!870227 () Bool)

(declare-fun res!591570 () Bool)

(assert (=> b!870227 (=> (not res!591570) (not e!484610))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50262 (_ BitVec 32)) Bool)

(assert (=> b!870227 (= res!591570 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun res!591576 () Bool)

(assert (=> start!74042 (=> (not res!591576) (not e!484610))))

(assert (=> start!74042 (= res!591576 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24599 _keys!868))))))

(assert (=> start!74042 e!484610))

(assert (=> start!74042 tp_is_empty!17065))

(assert (=> start!74042 true))

(assert (=> start!74042 tp!52291))

(declare-fun array_inv!19052 (array!50262) Bool)

(assert (=> start!74042 (array_inv!19052 _keys!868)))

(declare-datatypes ((V!27801 0))(
  ( (V!27802 (val!8580 Int)) )
))
(declare-datatypes ((ValueCell!8093 0))(
  ( (ValueCellFull!8093 (v!11001 V!27801)) (EmptyCell!8093) )
))
(declare-datatypes ((array!50264 0))(
  ( (array!50265 (arr!24159 (Array (_ BitVec 32) ValueCell!8093)) (size!24600 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50264)

(declare-fun e!484606 () Bool)

(declare-fun array_inv!19053 (array!50264) Bool)

(assert (=> start!74042 (and (array_inv!19053 _values!688) e!484606)))

(declare-fun b!870228 () Bool)

(declare-fun res!591572 () Bool)

(assert (=> b!870228 (=> (not res!591572) (not e!484610))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!870228 (= res!591572 (validKeyInArray!0 k!854))))

(declare-fun b!870229 () Bool)

(declare-fun e!484608 () Bool)

(assert (=> b!870229 (= e!484610 e!484608)))

(declare-fun res!591575 () Bool)

(assert (=> b!870229 (=> (not res!591575) (not e!484608))))

(assert (=> b!870229 (= res!591575 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((tuple2!11400 0))(
  ( (tuple2!11401 (_1!5710 (_ BitVec 64)) (_2!5710 V!27801)) )
))
(declare-datatypes ((List!17255 0))(
  ( (Nil!17252) (Cons!17251 (h!18382 tuple2!11400) (t!24300 List!17255)) )
))
(declare-datatypes ((ListLongMap!10183 0))(
  ( (ListLongMap!10184 (toList!5107 List!17255)) )
))
(declare-fun lt!395061 () ListLongMap!10183)

(declare-fun minValue!654 () V!27801)

(declare-fun zeroValue!654 () V!27801)

(declare-fun lt!395058 () array!50264)

(declare-fun getCurrentListMapNoExtraKeys!3071 (array!50262 array!50264 (_ BitVec 32) (_ BitVec 32) V!27801 V!27801 (_ BitVec 32) Int) ListLongMap!10183)

(assert (=> b!870229 (= lt!395061 (getCurrentListMapNoExtraKeys!3071 _keys!868 lt!395058 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27801)

(assert (=> b!870229 (= lt!395058 (array!50265 (store (arr!24159 _values!688) i!612 (ValueCellFull!8093 v!557)) (size!24600 _values!688)))))

(declare-fun lt!395060 () ListLongMap!10183)

(assert (=> b!870229 (= lt!395060 (getCurrentListMapNoExtraKeys!3071 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!870230 () Bool)

(declare-fun mapRes!27197 () Bool)

(assert (=> b!870230 (= e!484606 (and e!484611 mapRes!27197))))

(declare-fun condMapEmpty!27197 () Bool)

(declare-fun mapDefault!27197 () ValueCell!8093)

