; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73382 () Bool)

(assert start!73382)

(declare-fun b_free!14269 () Bool)

(declare-fun b_next!14269 () Bool)

(assert (=> start!73382 (= b_free!14269 (not b_next!14269))))

(declare-fun tp!50312 () Bool)

(declare-fun b_and!23643 () Bool)

(assert (=> start!73382 (= tp!50312 b_and!23643)))

(declare-fun b!855816 () Bool)

(declare-fun res!581356 () Bool)

(declare-fun e!477109 () Bool)

(assert (=> b!855816 (=> (not res!581356) (not e!477109))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!855816 (= res!581356 (validMask!0 mask!1196))))

(declare-fun b!855817 () Bool)

(declare-fun res!581355 () Bool)

(assert (=> b!855817 (=> (not res!581355) (not e!477109))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!48980 0))(
  ( (array!48981 (arr!23517 (Array (_ BitVec 32) (_ BitVec 64))) (size!23958 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48980)

(assert (=> b!855817 (= res!581355 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23958 _keys!868))))))

(declare-fun b!855818 () Bool)

(declare-fun e!477111 () Bool)

(assert (=> b!855818 (= e!477109 e!477111)))

(declare-fun res!581354 () Bool)

(assert (=> b!855818 (=> (not res!581354) (not e!477111))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!855818 (= res!581354 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-datatypes ((V!26921 0))(
  ( (V!26922 (val!8250 Int)) )
))
(declare-datatypes ((ValueCell!7763 0))(
  ( (ValueCellFull!7763 (v!10671 V!26921)) (EmptyCell!7763) )
))
(declare-datatypes ((array!48982 0))(
  ( (array!48983 (arr!23518 (Array (_ BitVec 32) ValueCell!7763)) (size!23959 (_ BitVec 32))) )
))
(declare-fun lt!385745 () array!48982)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((tuple2!10862 0))(
  ( (tuple2!10863 (_1!5441 (_ BitVec 64)) (_2!5441 V!26921)) )
))
(declare-datatypes ((List!16736 0))(
  ( (Nil!16733) (Cons!16732 (h!17863 tuple2!10862) (t!23385 List!16736)) )
))
(declare-datatypes ((ListLongMap!9645 0))(
  ( (ListLongMap!9646 (toList!4838 List!16736)) )
))
(declare-fun lt!385743 () ListLongMap!9645)

(declare-fun minValue!654 () V!26921)

(declare-fun zeroValue!654 () V!26921)

(declare-fun getCurrentListMapNoExtraKeys!2820 (array!48980 array!48982 (_ BitVec 32) (_ BitVec 32) V!26921 V!26921 (_ BitVec 32) Int) ListLongMap!9645)

(assert (=> b!855818 (= lt!385743 (getCurrentListMapNoExtraKeys!2820 _keys!868 lt!385745 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun _values!688 () array!48982)

(declare-fun v!557 () V!26921)

(assert (=> b!855818 (= lt!385745 (array!48983 (store (arr!23518 _values!688) i!612 (ValueCellFull!7763 v!557)) (size!23959 _values!688)))))

(declare-fun lt!385746 () ListLongMap!9645)

(assert (=> b!855818 (= lt!385746 (getCurrentListMapNoExtraKeys!2820 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!855819 () Bool)

(assert (=> b!855819 (= e!477111 (not true))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun +!2151 (ListLongMap!9645 tuple2!10862) ListLongMap!9645)

(assert (=> b!855819 (= (getCurrentListMapNoExtraKeys!2820 _keys!868 lt!385745 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2151 (getCurrentListMapNoExtraKeys!2820 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!10863 k!854 v!557)))))

(declare-datatypes ((Unit!29144 0))(
  ( (Unit!29145) )
))
(declare-fun lt!385744 () Unit!29144)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!411 (array!48980 array!48982 (_ BitVec 32) (_ BitVec 32) V!26921 V!26921 (_ BitVec 32) (_ BitVec 64) V!26921 (_ BitVec 32) Int) Unit!29144)

(assert (=> b!855819 (= lt!385744 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!411 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun res!581357 () Bool)

(assert (=> start!73382 (=> (not res!581357) (not e!477109))))

(assert (=> start!73382 (= res!581357 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23958 _keys!868))))))

(assert (=> start!73382 e!477109))

(declare-fun tp_is_empty!16405 () Bool)

(assert (=> start!73382 tp_is_empty!16405))

(assert (=> start!73382 true))

(assert (=> start!73382 tp!50312))

(declare-fun array_inv!18616 (array!48980) Bool)

(assert (=> start!73382 (array_inv!18616 _keys!868)))

(declare-fun e!477112 () Bool)

(declare-fun array_inv!18617 (array!48982) Bool)

(assert (=> start!73382 (and (array_inv!18617 _values!688) e!477112)))

(declare-fun mapIsEmpty!26207 () Bool)

(declare-fun mapRes!26207 () Bool)

(assert (=> mapIsEmpty!26207 mapRes!26207))

(declare-fun b!855820 () Bool)

(declare-fun res!581353 () Bool)

(assert (=> b!855820 (=> (not res!581353) (not e!477109))))

(assert (=> b!855820 (= res!581353 (and (= (size!23959 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23958 _keys!868) (size!23959 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!855821 () Bool)

(declare-fun res!581359 () Bool)

(assert (=> b!855821 (=> (not res!581359) (not e!477109))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48980 (_ BitVec 32)) Bool)

(assert (=> b!855821 (= res!581359 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!855822 () Bool)

(declare-fun res!581361 () Bool)

(assert (=> b!855822 (=> (not res!581361) (not e!477109))))

(declare-datatypes ((List!16737 0))(
  ( (Nil!16734) (Cons!16733 (h!17864 (_ BitVec 64)) (t!23386 List!16737)) )
))
(declare-fun arrayNoDuplicates!0 (array!48980 (_ BitVec 32) List!16737) Bool)

(assert (=> b!855822 (= res!581361 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16734))))

(declare-fun b!855823 () Bool)

(declare-fun e!477113 () Bool)

(assert (=> b!855823 (= e!477113 tp_is_empty!16405)))

(declare-fun b!855824 () Bool)

(declare-fun e!477114 () Bool)

(assert (=> b!855824 (= e!477114 tp_is_empty!16405)))

(declare-fun b!855825 () Bool)

(declare-fun res!581360 () Bool)

(assert (=> b!855825 (=> (not res!581360) (not e!477109))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!855825 (= res!581360 (validKeyInArray!0 k!854))))

(declare-fun b!855826 () Bool)

(assert (=> b!855826 (= e!477112 (and e!477114 mapRes!26207))))

(declare-fun condMapEmpty!26207 () Bool)

(declare-fun mapDefault!26207 () ValueCell!7763)

