; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74090 () Bool)

(assert start!74090)

(declare-fun b_free!14977 () Bool)

(declare-fun b_next!14977 () Bool)

(assert (=> start!74090 (= b_free!14977 (not b_next!14977))))

(declare-fun tp!52435 () Bool)

(declare-fun b_and!24747 () Bool)

(assert (=> start!74090 (= tp!52435 b_and!24747)))

(declare-fun b!871089 () Bool)

(declare-fun res!592219 () Bool)

(declare-fun e!485039 () Bool)

(assert (=> b!871089 (=> (not res!592219) (not e!485039))))

(declare-datatypes ((array!50354 0))(
  ( (array!50355 (arr!24204 (Array (_ BitVec 32) (_ BitVec 64))) (size!24645 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50354)

(declare-datatypes ((List!17287 0))(
  ( (Nil!17284) (Cons!17283 (h!18414 (_ BitVec 64)) (t!24332 List!17287)) )
))
(declare-fun arrayNoDuplicates!0 (array!50354 (_ BitVec 32) List!17287) Bool)

(assert (=> b!871089 (= res!592219 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17284))))

(declare-fun b!871090 () Bool)

(declare-fun res!592221 () Bool)

(assert (=> b!871090 (=> (not res!592221) (not e!485039))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!871090 (= res!592221 (validKeyInArray!0 k!854))))

(declare-fun res!592220 () Bool)

(assert (=> start!74090 (=> (not res!592220) (not e!485039))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!74090 (= res!592220 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24645 _keys!868))))))

(assert (=> start!74090 e!485039))

(declare-fun tp_is_empty!17113 () Bool)

(assert (=> start!74090 tp_is_empty!17113))

(assert (=> start!74090 true))

(assert (=> start!74090 tp!52435))

(declare-fun array_inv!19086 (array!50354) Bool)

(assert (=> start!74090 (array_inv!19086 _keys!868)))

(declare-datatypes ((V!27865 0))(
  ( (V!27866 (val!8604 Int)) )
))
(declare-datatypes ((ValueCell!8117 0))(
  ( (ValueCellFull!8117 (v!11025 V!27865)) (EmptyCell!8117) )
))
(declare-datatypes ((array!50356 0))(
  ( (array!50357 (arr!24205 (Array (_ BitVec 32) ValueCell!8117)) (size!24646 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50356)

(declare-fun e!485041 () Bool)

(declare-fun array_inv!19087 (array!50356) Bool)

(assert (=> start!74090 (and (array_inv!19087 _values!688) e!485041)))

(declare-fun b!871091 () Bool)

(declare-fun e!485042 () Bool)

(assert (=> b!871091 (= e!485042 tp_is_empty!17113)))

(declare-fun b!871092 () Bool)

(declare-fun res!592224 () Bool)

(assert (=> b!871092 (=> (not res!592224) (not e!485039))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!871092 (= res!592224 (validMask!0 mask!1196))))

(declare-fun b!871093 () Bool)

(declare-fun mapRes!27269 () Bool)

(assert (=> b!871093 (= e!485041 (and e!485042 mapRes!27269))))

(declare-fun condMapEmpty!27269 () Bool)

(declare-fun mapDefault!27269 () ValueCell!8117)

