; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72576 () Bool)

(assert start!72576)

(declare-fun b_free!13733 () Bool)

(declare-fun b_next!13733 () Bool)

(assert (=> start!72576 (= b_free!13733 (not b_next!13733))))

(declare-fun tp!48299 () Bool)

(declare-fun b_and!22837 () Bool)

(assert (=> start!72576 (= tp!48299 b_and!22837)))

(declare-fun b!841955 () Bool)

(declare-fun res!572406 () Bool)

(declare-fun e!469661 () Bool)

(assert (=> b!841955 (=> (not res!572406) (not e!469661))))

(declare-datatypes ((array!47440 0))(
  ( (array!47441 (arr!22747 (Array (_ BitVec 32) (_ BitVec 64))) (size!23188 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47440)

(declare-datatypes ((List!16260 0))(
  ( (Nil!16257) (Cons!16256 (h!17387 (_ BitVec 64)) (t!22639 List!16260)) )
))
(declare-fun arrayNoDuplicates!0 (array!47440 (_ BitVec 32) List!16260) Bool)

(assert (=> b!841955 (= res!572406 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16257))))

(declare-fun bm!37429 () Bool)

(declare-datatypes ((V!25845 0))(
  ( (V!25846 (val!7847 Int)) )
))
(declare-datatypes ((tuple2!10436 0))(
  ( (tuple2!10437 (_1!5228 (_ BitVec 64)) (_2!5228 V!25845)) )
))
(declare-datatypes ((List!16261 0))(
  ( (Nil!16258) (Cons!16257 (h!17388 tuple2!10436) (t!22640 List!16261)) )
))
(declare-datatypes ((ListLongMap!9219 0))(
  ( (ListLongMap!9220 (toList!4625 List!16261)) )
))
(declare-fun call!37432 () ListLongMap!9219)

(declare-fun v!557 () V!25845)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((ValueCell!7360 0))(
  ( (ValueCellFull!7360 (v!10268 V!25845)) (EmptyCell!7360) )
))
(declare-datatypes ((array!47442 0))(
  ( (array!47443 (arr!22748 (Array (_ BitVec 32) ValueCell!7360)) (size!23189 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47442)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!25845)

(declare-fun zeroValue!654 () V!25845)

(declare-fun getCurrentListMapNoExtraKeys!2614 (array!47440 array!47442 (_ BitVec 32) (_ BitVec 32) V!25845 V!25845 (_ BitVec 32) Int) ListLongMap!9219)

(assert (=> bm!37429 (= call!37432 (getCurrentListMapNoExtraKeys!2614 _keys!868 (array!47443 (store (arr!22748 _values!688) i!612 (ValueCellFull!7360 v!557)) (size!23189 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!841956 () Bool)

(declare-fun e!469660 () Bool)

(declare-fun tp_is_empty!15599 () Bool)

(assert (=> b!841956 (= e!469660 tp_is_empty!15599)))

(declare-fun b!841957 () Bool)

(declare-fun res!572404 () Bool)

(assert (=> b!841957 (=> (not res!572404) (not e!469661))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47440 (_ BitVec 32)) Bool)

(assert (=> b!841957 (= res!572404 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!841958 () Bool)

(declare-fun res!572399 () Bool)

(assert (=> b!841958 (=> (not res!572399) (not e!469661))))

(assert (=> b!841958 (= res!572399 (and (= (size!23189 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23188 _keys!868) (size!23189 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun res!572401 () Bool)

(assert (=> start!72576 (=> (not res!572401) (not e!469661))))

(assert (=> start!72576 (= res!572401 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23188 _keys!868))))))

(assert (=> start!72576 e!469661))

(assert (=> start!72576 tp_is_empty!15599))

(assert (=> start!72576 true))

(assert (=> start!72576 tp!48299))

(declare-fun array_inv!18082 (array!47440) Bool)

(assert (=> start!72576 (array_inv!18082 _keys!868)))

(declare-fun e!469659 () Bool)

(declare-fun array_inv!18083 (array!47442) Bool)

(assert (=> start!72576 (and (array_inv!18083 _values!688) e!469659)))

(declare-fun mapIsEmpty!24998 () Bool)

(declare-fun mapRes!24998 () Bool)

(assert (=> mapIsEmpty!24998 mapRes!24998))

(declare-fun bm!37430 () Bool)

(declare-fun call!37433 () ListLongMap!9219)

(assert (=> bm!37430 (= call!37433 (getCurrentListMapNoExtraKeys!2614 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapNonEmpty!24998 () Bool)

(declare-fun tp!48298 () Bool)

(assert (=> mapNonEmpty!24998 (= mapRes!24998 (and tp!48298 e!469660))))

(declare-fun mapRest!24998 () (Array (_ BitVec 32) ValueCell!7360))

(declare-fun mapKey!24998 () (_ BitVec 32))

(declare-fun mapValue!24998 () ValueCell!7360)

(assert (=> mapNonEmpty!24998 (= (arr!22748 _values!688) (store mapRest!24998 mapKey!24998 mapValue!24998))))

(declare-fun b!841959 () Bool)

(declare-fun res!572400 () Bool)

(assert (=> b!841959 (=> (not res!572400) (not e!469661))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!841959 (= res!572400 (validKeyInArray!0 k!854))))

(declare-fun b!841960 () Bool)

(declare-fun res!572403 () Bool)

(assert (=> b!841960 (=> (not res!572403) (not e!469661))))

(assert (=> b!841960 (= res!572403 (and (= (select (arr!22747 _keys!868) i!612) k!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!23188 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun e!469658 () Bool)

(declare-fun b!841961 () Bool)

(declare-fun +!2027 (ListLongMap!9219 tuple2!10436) ListLongMap!9219)

(assert (=> b!841961 (= e!469658 (= call!37432 (+!2027 call!37433 (tuple2!10437 k!854 v!557))))))

(declare-fun b!841962 () Bool)

(assert (=> b!841962 (= e!469661 (not true))))

(assert (=> b!841962 e!469658))

(declare-fun c!91377 () Bool)

(assert (=> b!841962 (= c!91377 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!28908 0))(
  ( (Unit!28909) )
))
(declare-fun lt!380910 () Unit!28908)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!303 (array!47440 array!47442 (_ BitVec 32) (_ BitVec 32) V!25845 V!25845 (_ BitVec 32) (_ BitVec 64) V!25845 (_ BitVec 32) Int) Unit!28908)

(assert (=> b!841962 (= lt!380910 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!303 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!841963 () Bool)

(assert (=> b!841963 (= e!469658 (= call!37432 call!37433))))

(declare-fun b!841964 () Bool)

(declare-fun res!572405 () Bool)

(assert (=> b!841964 (=> (not res!572405) (not e!469661))))

(assert (=> b!841964 (= res!572405 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23188 _keys!868))))))

(declare-fun b!841965 () Bool)

(declare-fun res!572402 () Bool)

(assert (=> b!841965 (=> (not res!572402) (not e!469661))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!841965 (= res!572402 (validMask!0 mask!1196))))

(declare-fun b!841966 () Bool)

(declare-fun e!469657 () Bool)

(assert (=> b!841966 (= e!469659 (and e!469657 mapRes!24998))))

(declare-fun condMapEmpty!24998 () Bool)

(declare-fun mapDefault!24998 () ValueCell!7360)

