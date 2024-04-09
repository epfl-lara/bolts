; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73938 () Bool)

(assert start!73938)

(declare-fun b_free!14825 () Bool)

(declare-fun b_next!14825 () Bool)

(assert (=> start!73938 (= b_free!14825 (not b_next!14825))))

(declare-fun tp!51980 () Bool)

(declare-fun b_and!24595 () Bool)

(assert (=> start!73938 (= tp!51980 b_and!24595)))

(declare-fun mapNonEmpty!27041 () Bool)

(declare-fun mapRes!27041 () Bool)

(declare-fun tp!51979 () Bool)

(declare-fun e!483675 () Bool)

(assert (=> mapNonEmpty!27041 (= mapRes!27041 (and tp!51979 e!483675))))

(declare-datatypes ((V!27661 0))(
  ( (V!27662 (val!8528 Int)) )
))
(declare-datatypes ((ValueCell!8041 0))(
  ( (ValueCellFull!8041 (v!10949 V!27661)) (EmptyCell!8041) )
))
(declare-fun mapRest!27041 () (Array (_ BitVec 32) ValueCell!8041))

(declare-fun mapKey!27041 () (_ BitVec 32))

(declare-datatypes ((array!50058 0))(
  ( (array!50059 (arr!24056 (Array (_ BitVec 32) ValueCell!8041)) (size!24497 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50058)

(declare-fun mapValue!27041 () ValueCell!8041)

(assert (=> mapNonEmpty!27041 (= (arr!24056 _values!688) (store mapRest!27041 mapKey!27041 mapValue!27041))))

(declare-fun b!868353 () Bool)

(declare-fun e!483673 () Bool)

(declare-fun tp_is_empty!16961 () Bool)

(assert (=> b!868353 (= e!483673 tp_is_empty!16961)))

(declare-fun b!868354 () Bool)

(declare-fun res!590169 () Bool)

(declare-fun e!483674 () Bool)

(assert (=> b!868354 (=> (not res!590169) (not e!483674))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!50060 0))(
  ( (array!50061 (arr!24057 (Array (_ BitVec 32) (_ BitVec 64))) (size!24498 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50060)

(assert (=> b!868354 (= res!590169 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24498 _keys!868))))))

(declare-fun res!590172 () Bool)

(assert (=> start!73938 (=> (not res!590172) (not e!483674))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!73938 (= res!590172 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24498 _keys!868))))))

(assert (=> start!73938 e!483674))

(assert (=> start!73938 tp_is_empty!16961))

(assert (=> start!73938 true))

(assert (=> start!73938 tp!51980))

(declare-fun array_inv!18980 (array!50060) Bool)

(assert (=> start!73938 (array_inv!18980 _keys!868)))

(declare-fun e!483672 () Bool)

(declare-fun array_inv!18981 (array!50058) Bool)

(assert (=> start!73938 (and (array_inv!18981 _values!688) e!483672)))

(declare-fun b!868355 () Bool)

(declare-fun e!483671 () Bool)

(assert (=> b!868355 (= e!483671 (not true))))

(declare-fun v!557 () V!27661)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun lt!394434 () array!50058)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun minValue!654 () V!27661)

(declare-fun zeroValue!654 () V!27661)

(declare-datatypes ((tuple2!11320 0))(
  ( (tuple2!11321 (_1!5670 (_ BitVec 64)) (_2!5670 V!27661)) )
))
(declare-datatypes ((List!17181 0))(
  ( (Nil!17178) (Cons!17177 (h!18308 tuple2!11320) (t!24226 List!17181)) )
))
(declare-datatypes ((ListLongMap!10103 0))(
  ( (ListLongMap!10104 (toList!5067 List!17181)) )
))
(declare-fun getCurrentListMapNoExtraKeys!3031 (array!50060 array!50058 (_ BitVec 32) (_ BitVec 32) V!27661 V!27661 (_ BitVec 32) Int) ListLongMap!10103)

(declare-fun +!2357 (ListLongMap!10103 tuple2!11320) ListLongMap!10103)

(assert (=> b!868355 (= (getCurrentListMapNoExtraKeys!3031 _keys!868 lt!394434 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2357 (getCurrentListMapNoExtraKeys!3031 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11321 k!854 v!557)))))

(declare-datatypes ((Unit!29764 0))(
  ( (Unit!29765) )
))
(declare-fun lt!394436 () Unit!29764)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!588 (array!50060 array!50058 (_ BitVec 32) (_ BitVec 32) V!27661 V!27661 (_ BitVec 32) (_ BitVec 64) V!27661 (_ BitVec 32) Int) Unit!29764)

(assert (=> b!868355 (= lt!394436 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!588 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!868356 () Bool)

(assert (=> b!868356 (= e!483674 e!483671)))

(declare-fun res!590171 () Bool)

(assert (=> b!868356 (=> (not res!590171) (not e!483671))))

(assert (=> b!868356 (= res!590171 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!394437 () ListLongMap!10103)

(assert (=> b!868356 (= lt!394437 (getCurrentListMapNoExtraKeys!3031 _keys!868 lt!394434 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!868356 (= lt!394434 (array!50059 (store (arr!24056 _values!688) i!612 (ValueCellFull!8041 v!557)) (size!24497 _values!688)))))

(declare-fun lt!394435 () ListLongMap!10103)

(assert (=> b!868356 (= lt!394435 (getCurrentListMapNoExtraKeys!3031 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!868357 () Bool)

(assert (=> b!868357 (= e!483675 tp_is_empty!16961)))

(declare-fun b!868358 () Bool)

(assert (=> b!868358 (= e!483672 (and e!483673 mapRes!27041))))

(declare-fun condMapEmpty!27041 () Bool)

(declare-fun mapDefault!27041 () ValueCell!8041)

