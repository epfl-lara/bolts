; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73424 () Bool)

(assert start!73424)

(declare-fun b_free!14311 () Bool)

(declare-fun b_next!14311 () Bool)

(assert (=> start!73424 (= b_free!14311 (not b_next!14311))))

(declare-fun tp!50438 () Bool)

(declare-fun b_and!23685 () Bool)

(assert (=> start!73424 (= tp!50438 b_and!23685)))

(declare-fun b!856572 () Bool)

(declare-fun res!581927 () Bool)

(declare-fun e!477489 () Bool)

(assert (=> b!856572 (=> (not res!581927) (not e!477489))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!856572 (= res!581927 (validKeyInArray!0 k!854))))

(declare-fun b!856574 () Bool)

(declare-fun res!581924 () Bool)

(assert (=> b!856574 (=> (not res!581924) (not e!477489))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!856574 (= res!581924 (validMask!0 mask!1196))))

(declare-fun b!856575 () Bool)

(declare-fun e!477492 () Bool)

(assert (=> b!856575 (= e!477492 (not true))))

(declare-datatypes ((V!26977 0))(
  ( (V!26978 (val!8271 Int)) )
))
(declare-fun v!557 () V!26977)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((array!49062 0))(
  ( (array!49063 (arr!23558 (Array (_ BitVec 32) (_ BitVec 64))) (size!23999 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49062)

(declare-datatypes ((ValueCell!7784 0))(
  ( (ValueCellFull!7784 (v!10692 V!26977)) (EmptyCell!7784) )
))
(declare-datatypes ((array!49064 0))(
  ( (array!49065 (arr!23559 (Array (_ BitVec 32) ValueCell!7784)) (size!24000 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49064)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun lt!385997 () array!49064)

(declare-fun minValue!654 () V!26977)

(declare-fun zeroValue!654 () V!26977)

(declare-datatypes ((tuple2!10894 0))(
  ( (tuple2!10895 (_1!5457 (_ BitVec 64)) (_2!5457 V!26977)) )
))
(declare-datatypes ((List!16767 0))(
  ( (Nil!16764) (Cons!16763 (h!17894 tuple2!10894) (t!23416 List!16767)) )
))
(declare-datatypes ((ListLongMap!9677 0))(
  ( (ListLongMap!9678 (toList!4854 List!16767)) )
))
(declare-fun getCurrentListMapNoExtraKeys!2836 (array!49062 array!49064 (_ BitVec 32) (_ BitVec 32) V!26977 V!26977 (_ BitVec 32) Int) ListLongMap!9677)

(declare-fun +!2163 (ListLongMap!9677 tuple2!10894) ListLongMap!9677)

(assert (=> b!856575 (= (getCurrentListMapNoExtraKeys!2836 _keys!868 lt!385997 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2163 (getCurrentListMapNoExtraKeys!2836 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!10895 k!854 v!557)))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((Unit!29168 0))(
  ( (Unit!29169) )
))
(declare-fun lt!385996 () Unit!29168)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!423 (array!49062 array!49064 (_ BitVec 32) (_ BitVec 32) V!26977 V!26977 (_ BitVec 32) (_ BitVec 64) V!26977 (_ BitVec 32) Int) Unit!29168)

(assert (=> b!856575 (= lt!385996 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!423 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!856576 () Bool)

(declare-fun e!477490 () Bool)

(declare-fun tp_is_empty!16447 () Bool)

(assert (=> b!856576 (= e!477490 tp_is_empty!16447)))

(declare-fun mapIsEmpty!26270 () Bool)

(declare-fun mapRes!26270 () Bool)

(assert (=> mapIsEmpty!26270 mapRes!26270))

(declare-fun b!856577 () Bool)

(assert (=> b!856577 (= e!477489 e!477492)))

(declare-fun res!581921 () Bool)

(assert (=> b!856577 (=> (not res!581921) (not e!477492))))

(assert (=> b!856577 (= res!581921 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!385998 () ListLongMap!9677)

(assert (=> b!856577 (= lt!385998 (getCurrentListMapNoExtraKeys!2836 _keys!868 lt!385997 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!856577 (= lt!385997 (array!49065 (store (arr!23559 _values!688) i!612 (ValueCellFull!7784 v!557)) (size!24000 _values!688)))))

(declare-fun lt!385995 () ListLongMap!9677)

(assert (=> b!856577 (= lt!385995 (getCurrentListMapNoExtraKeys!2836 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!856578 () Bool)

(declare-fun res!581926 () Bool)

(assert (=> b!856578 (=> (not res!581926) (not e!477489))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49062 (_ BitVec 32)) Bool)

(assert (=> b!856578 (= res!581926 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!856579 () Bool)

(declare-fun res!581922 () Bool)

(assert (=> b!856579 (=> (not res!581922) (not e!477489))))

(assert (=> b!856579 (= res!581922 (and (= (size!24000 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23999 _keys!868) (size!24000 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!856580 () Bool)

(declare-fun res!581920 () Bool)

(assert (=> b!856580 (=> (not res!581920) (not e!477489))))

(assert (=> b!856580 (= res!581920 (and (= (select (arr!23558 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!856581 () Bool)

(declare-fun e!477491 () Bool)

(assert (=> b!856581 (= e!477491 tp_is_empty!16447)))

(declare-fun b!856573 () Bool)

(declare-fun e!477488 () Bool)

(assert (=> b!856573 (= e!477488 (and e!477491 mapRes!26270))))

(declare-fun condMapEmpty!26270 () Bool)

(declare-fun mapDefault!26270 () ValueCell!7784)

