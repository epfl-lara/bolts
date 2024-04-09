; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74720 () Bool)

(assert start!74720)

(declare-fun b_free!15341 () Bool)

(declare-fun b_next!15341 () Bool)

(assert (=> start!74720 (= b_free!15341 (not b_next!15341))))

(declare-fun tp!53711 () Bool)

(declare-fun b_and!25319 () Bool)

(assert (=> start!74720 (= tp!53711 b_and!25319)))

(declare-fun b!880364 () Bool)

(declare-fun e!489949 () Bool)

(declare-fun e!489947 () Bool)

(assert (=> b!880364 (= e!489949 e!489947)))

(declare-fun res!598244 () Bool)

(assert (=> b!880364 (=> (not res!598244) (not e!489947))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!880364 (= res!598244 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-datatypes ((V!28493 0))(
  ( (V!28494 (val!8840 Int)) )
))
(declare-datatypes ((tuple2!11722 0))(
  ( (tuple2!11723 (_1!5871 (_ BitVec 64)) (_2!5871 V!28493)) )
))
(declare-datatypes ((List!17595 0))(
  ( (Nil!17592) (Cons!17591 (h!18722 tuple2!11722) (t!24746 List!17595)) )
))
(declare-datatypes ((ListLongMap!10505 0))(
  ( (ListLongMap!10506 (toList!5268 List!17595)) )
))
(declare-fun lt!398107 () ListLongMap!10505)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((ValueCell!8353 0))(
  ( (ValueCellFull!8353 (v!11284 V!28493)) (EmptyCell!8353) )
))
(declare-datatypes ((array!51276 0))(
  ( (array!51277 (arr!24658 (Array (_ BitVec 32) ValueCell!8353)) (size!25099 (_ BitVec 32))) )
))
(declare-fun lt!398108 () array!51276)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!51278 0))(
  ( (array!51279 (arr!24659 (Array (_ BitVec 32) (_ BitVec 64))) (size!25100 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51278)

(declare-fun minValue!654 () V!28493)

(declare-fun zeroValue!654 () V!28493)

(declare-fun getCurrentListMapNoExtraKeys!3228 (array!51278 array!51276 (_ BitVec 32) (_ BitVec 32) V!28493 V!28493 (_ BitVec 32) Int) ListLongMap!10505)

(assert (=> b!880364 (= lt!398107 (getCurrentListMapNoExtraKeys!3228 _keys!868 lt!398108 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!28493)

(declare-fun _values!688 () array!51276)

(assert (=> b!880364 (= lt!398108 (array!51277 (store (arr!24658 _values!688) i!612 (ValueCellFull!8353 v!557)) (size!25099 _values!688)))))

(declare-fun lt!398110 () ListLongMap!10505)

(assert (=> b!880364 (= lt!398110 (getCurrentListMapNoExtraKeys!3228 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!880365 () Bool)

(declare-fun res!598248 () Bool)

(assert (=> b!880365 (=> (not res!598248) (not e!489949))))

(declare-datatypes ((List!17596 0))(
  ( (Nil!17593) (Cons!17592 (h!18723 (_ BitVec 64)) (t!24747 List!17596)) )
))
(declare-fun arrayNoDuplicates!0 (array!51278 (_ BitVec 32) List!17596) Bool)

(assert (=> b!880365 (= res!598248 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17593))))

(declare-fun b!880366 () Bool)

(declare-fun res!598243 () Bool)

(assert (=> b!880366 (=> (not res!598243) (not e!489949))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!880366 (= res!598243 (validMask!0 mask!1196))))

(declare-fun b!880367 () Bool)

(declare-fun res!598246 () Bool)

(assert (=> b!880367 (=> (not res!598246) (not e!489949))))

(assert (=> b!880367 (= res!598246 (and (= (size!25099 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25100 _keys!868) (size!25099 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!880368 () Bool)

(declare-fun res!598242 () Bool)

(assert (=> b!880368 (=> (not res!598242) (not e!489949))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51278 (_ BitVec 32)) Bool)

(assert (=> b!880368 (= res!598242 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!880369 () Bool)

(declare-fun res!598249 () Bool)

(assert (=> b!880369 (=> (not res!598249) (not e!489949))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!880369 (= res!598249 (validKeyInArray!0 k!854))))

(declare-fun b!880370 () Bool)

(declare-fun e!489944 () Bool)

(declare-fun tp_is_empty!17585 () Bool)

(assert (=> b!880370 (= e!489944 tp_is_empty!17585)))

(declare-fun b!880371 () Bool)

(declare-fun e!489943 () Bool)

(assert (=> b!880371 (= e!489943 true)))

(assert (=> b!880371 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17593)))

(declare-datatypes ((Unit!30024 0))(
  ( (Unit!30025) )
))
(declare-fun lt!398106 () Unit!30024)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!51278 (_ BitVec 32) (_ BitVec 32)) Unit!30024)

(assert (=> b!880371 (= lt!398106 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-fun b!880372 () Bool)

(declare-fun e!489948 () Bool)

(assert (=> b!880372 (= e!489948 tp_is_empty!17585)))

(declare-fun b!880373 () Bool)

(declare-fun res!598250 () Bool)

(assert (=> b!880373 (=> (not res!598250) (not e!489949))))

(assert (=> b!880373 (= res!598250 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25100 _keys!868))))))

(declare-fun mapIsEmpty!27999 () Bool)

(declare-fun mapRes!27999 () Bool)

(assert (=> mapIsEmpty!27999 mapRes!27999))

(declare-fun res!598252 () Bool)

(assert (=> start!74720 (=> (not res!598252) (not e!489949))))

(assert (=> start!74720 (= res!598252 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25100 _keys!868))))))

(assert (=> start!74720 e!489949))

(assert (=> start!74720 tp_is_empty!17585))

(assert (=> start!74720 true))

(assert (=> start!74720 tp!53711))

(declare-fun array_inv!19412 (array!51278) Bool)

(assert (=> start!74720 (array_inv!19412 _keys!868)))

(declare-fun e!489945 () Bool)

(declare-fun array_inv!19413 (array!51276) Bool)

(assert (=> start!74720 (and (array_inv!19413 _values!688) e!489945)))

(declare-fun b!880374 () Bool)

(declare-fun res!598245 () Bool)

(assert (=> b!880374 (=> (not res!598245) (not e!489949))))

(assert (=> b!880374 (= res!598245 (and (= (select (arr!24659 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!880375 () Bool)

(declare-fun e!489950 () Bool)

(assert (=> b!880375 (= e!489950 e!489943)))

(declare-fun res!598251 () Bool)

(assert (=> b!880375 (=> res!598251 e!489943)))

(assert (=> b!880375 (= res!598251 (not (= (select (arr!24659 _keys!868) from!1053) k!854)))))

(declare-fun lt!398111 () ListLongMap!10505)

(declare-fun +!2474 (ListLongMap!10505 tuple2!11722) ListLongMap!10505)

(declare-fun get!12981 (ValueCell!8353 V!28493) V!28493)

(declare-fun dynLambda!1240 (Int (_ BitVec 64)) V!28493)

(assert (=> b!880375 (= lt!398107 (+!2474 lt!398111 (tuple2!11723 (select (arr!24659 _keys!868) from!1053) (get!12981 (select (arr!24658 _values!688) from!1053) (dynLambda!1240 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun mapNonEmpty!27999 () Bool)

(declare-fun tp!53712 () Bool)

(assert (=> mapNonEmpty!27999 (= mapRes!27999 (and tp!53712 e!489948))))

(declare-fun mapRest!27999 () (Array (_ BitVec 32) ValueCell!8353))

(declare-fun mapValue!27999 () ValueCell!8353)

(declare-fun mapKey!27999 () (_ BitVec 32))

(assert (=> mapNonEmpty!27999 (= (arr!24658 _values!688) (store mapRest!27999 mapKey!27999 mapValue!27999))))

(declare-fun b!880376 () Bool)

(assert (=> b!880376 (= e!489945 (and e!489944 mapRes!27999))))

(declare-fun condMapEmpty!27999 () Bool)

(declare-fun mapDefault!27999 () ValueCell!8353)

