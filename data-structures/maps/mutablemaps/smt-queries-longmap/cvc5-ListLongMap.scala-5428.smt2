; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72380 () Bool)

(assert start!72380)

(declare-fun b_free!13537 () Bool)

(declare-fun b_next!13537 () Bool)

(assert (=> start!72380 (= b_free!13537 (not b_next!13537))))

(declare-fun tp!47711 () Bool)

(declare-fun b_and!22641 () Bool)

(assert (=> start!72380 (= tp!47711 b_and!22641)))

(declare-fun b!838133 () Bool)

(declare-fun res!570052 () Bool)

(declare-fun e!467893 () Bool)

(assert (=> b!838133 (=> (not res!570052) (not e!467893))))

(declare-datatypes ((array!47060 0))(
  ( (array!47061 (arr!22557 (Array (_ BitVec 32) (_ BitVec 64))) (size!22998 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47060)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47060 (_ BitVec 32)) Bool)

(assert (=> b!838133 (= res!570052 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-datatypes ((V!25585 0))(
  ( (V!25586 (val!7749 Int)) )
))
(declare-datatypes ((tuple2!10268 0))(
  ( (tuple2!10269 (_1!5144 (_ BitVec 64)) (_2!5144 V!25585)) )
))
(declare-datatypes ((List!16107 0))(
  ( (Nil!16104) (Cons!16103 (h!17234 tuple2!10268) (t!22486 List!16107)) )
))
(declare-datatypes ((ListLongMap!9051 0))(
  ( (ListLongMap!9052 (toList!4541 List!16107)) )
))
(declare-fun call!36844 () ListLongMap!9051)

(declare-fun b!838134 () Bool)

(declare-fun v!557 () V!25585)

(declare-fun e!467896 () Bool)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun call!36845 () ListLongMap!9051)

(declare-fun +!1965 (ListLongMap!9051 tuple2!10268) ListLongMap!9051)

(assert (=> b!838134 (= e!467896 (= call!36845 (+!1965 call!36844 (tuple2!10269 k!854 v!557))))))

(declare-fun b!838135 () Bool)

(declare-fun res!570054 () Bool)

(assert (=> b!838135 (=> (not res!570054) (not e!467893))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((ValueCell!7262 0))(
  ( (ValueCellFull!7262 (v!10170 V!25585)) (EmptyCell!7262) )
))
(declare-datatypes ((array!47062 0))(
  ( (array!47063 (arr!22558 (Array (_ BitVec 32) ValueCell!7262)) (size!22999 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47062)

(assert (=> b!838135 (= res!570054 (and (= (size!22999 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!22998 _keys!868) (size!22999 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!838136 () Bool)

(declare-fun res!570049 () Bool)

(assert (=> b!838136 (=> (not res!570049) (not e!467893))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!838136 (= res!570049 (and (= (select (arr!22557 _keys!868) i!612) k!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!22998 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun bm!36841 () Bool)

(declare-fun defaultEntry!696 () Int)

(declare-fun minValue!654 () V!25585)

(declare-fun zeroValue!654 () V!25585)

(declare-fun getCurrentListMapNoExtraKeys!2536 (array!47060 array!47062 (_ BitVec 32) (_ BitVec 32) V!25585 V!25585 (_ BitVec 32) Int) ListLongMap!9051)

(assert (=> bm!36841 (= call!36844 (getCurrentListMapNoExtraKeys!2536 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun res!570050 () Bool)

(assert (=> start!72380 (=> (not res!570050) (not e!467893))))

(assert (=> start!72380 (= res!570050 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!22998 _keys!868))))))

(assert (=> start!72380 e!467893))

(declare-fun tp_is_empty!15403 () Bool)

(assert (=> start!72380 tp_is_empty!15403))

(assert (=> start!72380 true))

(assert (=> start!72380 tp!47711))

(declare-fun array_inv!17944 (array!47060) Bool)

(assert (=> start!72380 (array_inv!17944 _keys!868)))

(declare-fun e!467895 () Bool)

(declare-fun array_inv!17945 (array!47062) Bool)

(assert (=> start!72380 (and (array_inv!17945 _values!688) e!467895)))

(declare-fun b!838137 () Bool)

(declare-fun e!467898 () Bool)

(assert (=> b!838137 (= e!467898 tp_is_empty!15403)))

(declare-fun b!838138 () Bool)

(declare-fun res!570047 () Bool)

(assert (=> b!838138 (=> (not res!570047) (not e!467893))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!838138 (= res!570047 (validMask!0 mask!1196))))

(declare-fun mapIsEmpty!24704 () Bool)

(declare-fun mapRes!24704 () Bool)

(assert (=> mapIsEmpty!24704 mapRes!24704))

(declare-fun b!838139 () Bool)

(declare-fun res!570048 () Bool)

(assert (=> b!838139 (=> (not res!570048) (not e!467893))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!838139 (= res!570048 (validKeyInArray!0 k!854))))

(declare-fun b!838140 () Bool)

(assert (=> b!838140 (= e!467893 (not true))))

(assert (=> b!838140 e!467896))

(declare-fun c!91083 () Bool)

(assert (=> b!838140 (= c!91083 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!28780 0))(
  ( (Unit!28781) )
))
(declare-fun lt!380616 () Unit!28780)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!239 (array!47060 array!47062 (_ BitVec 32) (_ BitVec 32) V!25585 V!25585 (_ BitVec 32) (_ BitVec 64) V!25585 (_ BitVec 32) Int) Unit!28780)

(assert (=> b!838140 (= lt!380616 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!239 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!838141 () Bool)

(declare-fun e!467897 () Bool)

(assert (=> b!838141 (= e!467897 tp_is_empty!15403)))

(declare-fun b!838142 () Bool)

(assert (=> b!838142 (= e!467896 (= call!36845 call!36844))))

(declare-fun b!838143 () Bool)

(declare-fun res!570051 () Bool)

(assert (=> b!838143 (=> (not res!570051) (not e!467893))))

(declare-datatypes ((List!16108 0))(
  ( (Nil!16105) (Cons!16104 (h!17235 (_ BitVec 64)) (t!22487 List!16108)) )
))
(declare-fun arrayNoDuplicates!0 (array!47060 (_ BitVec 32) List!16108) Bool)

(assert (=> b!838143 (= res!570051 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16105))))

(declare-fun mapNonEmpty!24704 () Bool)

(declare-fun tp!47710 () Bool)

(assert (=> mapNonEmpty!24704 (= mapRes!24704 (and tp!47710 e!467898))))

(declare-fun mapRest!24704 () (Array (_ BitVec 32) ValueCell!7262))

(declare-fun mapKey!24704 () (_ BitVec 32))

(declare-fun mapValue!24704 () ValueCell!7262)

(assert (=> mapNonEmpty!24704 (= (arr!22558 _values!688) (store mapRest!24704 mapKey!24704 mapValue!24704))))

(declare-fun b!838144 () Bool)

(assert (=> b!838144 (= e!467895 (and e!467897 mapRes!24704))))

(declare-fun condMapEmpty!24704 () Bool)

(declare-fun mapDefault!24704 () ValueCell!7262)

