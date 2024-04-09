; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74016 () Bool)

(assert start!74016)

(declare-fun b_free!14903 () Bool)

(declare-fun b_next!14903 () Bool)

(assert (=> start!74016 (= b_free!14903 (not b_next!14903))))

(declare-fun tp!52214 () Bool)

(declare-fun b_and!24673 () Bool)

(assert (=> start!74016 (= tp!52214 b_and!24673)))

(declare-fun b!869757 () Bool)

(declare-fun e!484377 () Bool)

(declare-fun e!484376 () Bool)

(assert (=> b!869757 (= e!484377 e!484376)))

(declare-fun res!591221 () Bool)

(assert (=> b!869757 (=> (not res!591221) (not e!484376))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!869757 (= res!591221 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((V!27765 0))(
  ( (V!27766 (val!8567 Int)) )
))
(declare-datatypes ((ValueCell!8080 0))(
  ( (ValueCellFull!8080 (v!10988 V!27765)) (EmptyCell!8080) )
))
(declare-datatypes ((array!50210 0))(
  ( (array!50211 (arr!24132 (Array (_ BitVec 32) ValueCell!8080)) (size!24573 (_ BitVec 32))) )
))
(declare-fun lt!394903 () array!50210)

(declare-datatypes ((tuple2!11380 0))(
  ( (tuple2!11381 (_1!5700 (_ BitVec 64)) (_2!5700 V!27765)) )
))
(declare-datatypes ((List!17236 0))(
  ( (Nil!17233) (Cons!17232 (h!18363 tuple2!11380) (t!24281 List!17236)) )
))
(declare-datatypes ((ListLongMap!10163 0))(
  ( (ListLongMap!10164 (toList!5097 List!17236)) )
))
(declare-fun lt!394902 () ListLongMap!10163)

(declare-datatypes ((array!50212 0))(
  ( (array!50213 (arr!24133 (Array (_ BitVec 32) (_ BitVec 64))) (size!24574 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50212)

(declare-fun minValue!654 () V!27765)

(declare-fun zeroValue!654 () V!27765)

(declare-fun getCurrentListMapNoExtraKeys!3061 (array!50212 array!50210 (_ BitVec 32) (_ BitVec 32) V!27765 V!27765 (_ BitVec 32) Int) ListLongMap!10163)

(assert (=> b!869757 (= lt!394902 (getCurrentListMapNoExtraKeys!3061 _keys!868 lt!394903 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27765)

(declare-fun _values!688 () array!50210)

(assert (=> b!869757 (= lt!394903 (array!50211 (store (arr!24132 _values!688) i!612 (ValueCellFull!8080 v!557)) (size!24573 _values!688)))))

(declare-fun lt!394905 () ListLongMap!10163)

(assert (=> b!869757 (= lt!394905 (getCurrentListMapNoExtraKeys!3061 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!869758 () Bool)

(declare-fun e!484375 () Bool)

(declare-fun tp_is_empty!17039 () Bool)

(assert (=> b!869758 (= e!484375 tp_is_empty!17039)))

(declare-fun b!869759 () Bool)

(declare-fun res!591223 () Bool)

(assert (=> b!869759 (=> (not res!591223) (not e!484377))))

(assert (=> b!869759 (= res!591223 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24574 _keys!868))))))

(declare-fun res!591217 () Bool)

(assert (=> start!74016 (=> (not res!591217) (not e!484377))))

(assert (=> start!74016 (= res!591217 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24574 _keys!868))))))

(assert (=> start!74016 e!484377))

(assert (=> start!74016 tp_is_empty!17039))

(assert (=> start!74016 true))

(assert (=> start!74016 tp!52214))

(declare-fun array_inv!19032 (array!50212) Bool)

(assert (=> start!74016 (array_inv!19032 _keys!868)))

(declare-fun e!484372 () Bool)

(declare-fun array_inv!19033 (array!50210) Bool)

(assert (=> start!74016 (and (array_inv!19033 _values!688) e!484372)))

(declare-fun b!869760 () Bool)

(declare-fun res!591225 () Bool)

(assert (=> b!869760 (=> (not res!591225) (not e!484377))))

(declare-datatypes ((List!17237 0))(
  ( (Nil!17234) (Cons!17233 (h!18364 (_ BitVec 64)) (t!24282 List!17237)) )
))
(declare-fun arrayNoDuplicates!0 (array!50212 (_ BitVec 32) List!17237) Bool)

(assert (=> b!869760 (= res!591225 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17234))))

(declare-fun b!869761 () Bool)

(declare-fun res!591224 () Bool)

(assert (=> b!869761 (=> (not res!591224) (not e!484377))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!869761 (= res!591224 (validMask!0 mask!1196))))

(declare-fun b!869762 () Bool)

(declare-fun e!484373 () Bool)

(declare-fun mapRes!27158 () Bool)

(assert (=> b!869762 (= e!484372 (and e!484373 mapRes!27158))))

(declare-fun condMapEmpty!27158 () Bool)

(declare-fun mapDefault!27158 () ValueCell!8080)

