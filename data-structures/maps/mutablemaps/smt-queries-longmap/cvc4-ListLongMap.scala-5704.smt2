; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74040 () Bool)

(assert start!74040)

(declare-fun b_free!14927 () Bool)

(declare-fun b_next!14927 () Bool)

(assert (=> start!74040 (= b_free!14927 (not b_next!14927))))

(declare-fun tp!52285 () Bool)

(declare-fun b_and!24697 () Bool)

(assert (=> start!74040 (= tp!52285 b_and!24697)))

(declare-fun b!870189 () Bool)

(declare-fun e!484593 () Bool)

(declare-fun tp_is_empty!17063 () Bool)

(assert (=> b!870189 (= e!484593 tp_is_empty!17063)))

(declare-fun b!870190 () Bool)

(declare-fun res!591542 () Bool)

(declare-fun e!484592 () Bool)

(assert (=> b!870190 (=> (not res!591542) (not e!484592))))

(declare-datatypes ((array!50258 0))(
  ( (array!50259 (arr!24156 (Array (_ BitVec 32) (_ BitVec 64))) (size!24597 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50258)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50258 (_ BitVec 32)) Bool)

(assert (=> b!870190 (= res!591542 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!870191 () Bool)

(declare-fun e!484591 () Bool)

(assert (=> b!870191 (= e!484592 e!484591)))

(declare-fun res!591543 () Bool)

(assert (=> b!870191 (=> (not res!591543) (not e!484591))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!870191 (= res!591543 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((V!27797 0))(
  ( (V!27798 (val!8579 Int)) )
))
(declare-datatypes ((ValueCell!8092 0))(
  ( (ValueCellFull!8092 (v!11000 V!27797)) (EmptyCell!8092) )
))
(declare-datatypes ((array!50260 0))(
  ( (array!50261 (arr!24157 (Array (_ BitVec 32) ValueCell!8092)) (size!24598 (_ BitVec 32))) )
))
(declare-fun lt!395046 () array!50260)

(declare-fun minValue!654 () V!27797)

(declare-fun zeroValue!654 () V!27797)

(declare-datatypes ((tuple2!11398 0))(
  ( (tuple2!11399 (_1!5709 (_ BitVec 64)) (_2!5709 V!27797)) )
))
(declare-datatypes ((List!17254 0))(
  ( (Nil!17251) (Cons!17250 (h!18381 tuple2!11398) (t!24299 List!17254)) )
))
(declare-datatypes ((ListLongMap!10181 0))(
  ( (ListLongMap!10182 (toList!5106 List!17254)) )
))
(declare-fun lt!395048 () ListLongMap!10181)

(declare-fun getCurrentListMapNoExtraKeys!3070 (array!50258 array!50260 (_ BitVec 32) (_ BitVec 32) V!27797 V!27797 (_ BitVec 32) Int) ListLongMap!10181)

(assert (=> b!870191 (= lt!395048 (getCurrentListMapNoExtraKeys!3070 _keys!868 lt!395046 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27797)

(declare-fun _values!688 () array!50260)

(assert (=> b!870191 (= lt!395046 (array!50261 (store (arr!24157 _values!688) i!612 (ValueCellFull!8092 v!557)) (size!24598 _values!688)))))

(declare-fun lt!395047 () ListLongMap!10181)

(assert (=> b!870191 (= lt!395047 (getCurrentListMapNoExtraKeys!3070 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!870192 () Bool)

(declare-fun res!591544 () Bool)

(assert (=> b!870192 (=> (not res!591544) (not e!484592))))

(assert (=> b!870192 (= res!591544 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24597 _keys!868))))))

(declare-fun b!870193 () Bool)

(declare-fun res!591546 () Bool)

(assert (=> b!870193 (=> (not res!591546) (not e!484592))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!870193 (= res!591546 (validMask!0 mask!1196))))

(declare-fun b!870194 () Bool)

(declare-fun res!591547 () Bool)

(assert (=> b!870194 (=> (not res!591547) (not e!484592))))

(assert (=> b!870194 (= res!591547 (and (= (size!24598 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24597 _keys!868) (size!24598 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun res!591545 () Bool)

(assert (=> start!74040 (=> (not res!591545) (not e!484592))))

(assert (=> start!74040 (= res!591545 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24597 _keys!868))))))

(assert (=> start!74040 e!484592))

(assert (=> start!74040 tp_is_empty!17063))

(assert (=> start!74040 true))

(assert (=> start!74040 tp!52285))

(declare-fun array_inv!19050 (array!50258) Bool)

(assert (=> start!74040 (array_inv!19050 _keys!868)))

(declare-fun e!484589 () Bool)

(declare-fun array_inv!19051 (array!50260) Bool)

(assert (=> start!74040 (and (array_inv!19051 _values!688) e!484589)))

(declare-fun b!870195 () Bool)

(declare-fun res!591549 () Bool)

(assert (=> b!870195 (=> (not res!591549) (not e!484592))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!870195 (= res!591549 (validKeyInArray!0 k!854))))

(declare-fun mapNonEmpty!27194 () Bool)

(declare-fun mapRes!27194 () Bool)

(declare-fun tp!52286 () Bool)

(assert (=> mapNonEmpty!27194 (= mapRes!27194 (and tp!52286 e!484593))))

(declare-fun mapValue!27194 () ValueCell!8092)

(declare-fun mapKey!27194 () (_ BitVec 32))

(declare-fun mapRest!27194 () (Array (_ BitVec 32) ValueCell!8092))

(assert (=> mapNonEmpty!27194 (= (arr!24157 _values!688) (store mapRest!27194 mapKey!27194 mapValue!27194))))

(declare-fun b!870196 () Bool)

(assert (=> b!870196 (= e!484591 (not true))))

(declare-fun +!2388 (ListLongMap!10181 tuple2!11398) ListLongMap!10181)

(assert (=> b!870196 (= (getCurrentListMapNoExtraKeys!3070 _keys!868 lt!395046 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2388 (getCurrentListMapNoExtraKeys!3070 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11399 k!854 v!557)))))

(declare-datatypes ((Unit!29826 0))(
  ( (Unit!29827) )
))
(declare-fun lt!395049 () Unit!29826)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!619 (array!50258 array!50260 (_ BitVec 32) (_ BitVec 32) V!27797 V!27797 (_ BitVec 32) (_ BitVec 64) V!27797 (_ BitVec 32) Int) Unit!29826)

(assert (=> b!870196 (= lt!395049 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!619 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!870197 () Bool)

(declare-fun e!484588 () Bool)

(assert (=> b!870197 (= e!484589 (and e!484588 mapRes!27194))))

(declare-fun condMapEmpty!27194 () Bool)

(declare-fun mapDefault!27194 () ValueCell!8092)

