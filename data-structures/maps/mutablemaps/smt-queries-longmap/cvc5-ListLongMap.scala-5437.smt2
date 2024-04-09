; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72434 () Bool)

(assert start!72434)

(declare-fun b_free!13591 () Bool)

(declare-fun b_next!13591 () Bool)

(assert (=> start!72434 (= b_free!13591 (not b_next!13591))))

(declare-fun tp!47872 () Bool)

(declare-fun b_and!22695 () Bool)

(assert (=> start!72434 (= tp!47872 b_and!22695)))

(declare-fun b!839186 () Bool)

(declare-fun e!468380 () Bool)

(declare-fun tp_is_empty!15457 () Bool)

(assert (=> b!839186 (= e!468380 tp_is_empty!15457)))

(declare-fun b!839187 () Bool)

(declare-fun res!570699 () Bool)

(declare-fun e!468379 () Bool)

(assert (=> b!839187 (=> (not res!570699) (not e!468379))))

(declare-datatypes ((array!47166 0))(
  ( (array!47167 (arr!22610 (Array (_ BitVec 32) (_ BitVec 64))) (size!23051 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47166)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47166 (_ BitVec 32)) Bool)

(assert (=> b!839187 (= res!570699 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun bm!37003 () Bool)

(declare-datatypes ((V!25657 0))(
  ( (V!25658 (val!7776 Int)) )
))
(declare-fun v!557 () V!25657)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((ValueCell!7289 0))(
  ( (ValueCellFull!7289 (v!10197 V!25657)) (EmptyCell!7289) )
))
(declare-datatypes ((array!47168 0))(
  ( (array!47169 (arr!22611 (Array (_ BitVec 32) ValueCell!7289)) (size!23052 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47168)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!25657)

(declare-fun zeroValue!654 () V!25657)

(declare-datatypes ((tuple2!10314 0))(
  ( (tuple2!10315 (_1!5167 (_ BitVec 64)) (_2!5167 V!25657)) )
))
(declare-datatypes ((List!16147 0))(
  ( (Nil!16144) (Cons!16143 (h!17274 tuple2!10314) (t!22526 List!16147)) )
))
(declare-datatypes ((ListLongMap!9097 0))(
  ( (ListLongMap!9098 (toList!4564 List!16147)) )
))
(declare-fun call!37007 () ListLongMap!9097)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!2557 (array!47166 array!47168 (_ BitVec 32) (_ BitVec 32) V!25657 V!25657 (_ BitVec 32) Int) ListLongMap!9097)

(assert (=> bm!37003 (= call!37007 (getCurrentListMapNoExtraKeys!2557 _keys!868 (array!47169 (store (arr!22611 _values!688) i!612 (ValueCellFull!7289 v!557)) (size!23052 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!839188 () Bool)

(assert (=> b!839188 (= e!468379 (not true))))

(declare-fun e!468384 () Bool)

(assert (=> b!839188 e!468384))

(declare-fun c!91164 () Bool)

(assert (=> b!839188 (= c!91164 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!28820 0))(
  ( (Unit!28821) )
))
(declare-fun lt!380697 () Unit!28820)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!259 (array!47166 array!47168 (_ BitVec 32) (_ BitVec 32) V!25657 V!25657 (_ BitVec 32) (_ BitVec 64) V!25657 (_ BitVec 32) Int) Unit!28820)

(assert (=> b!839188 (= lt!380697 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!259 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!839189 () Bool)

(declare-fun res!570700 () Bool)

(assert (=> b!839189 (=> (not res!570700) (not e!468379))))

(assert (=> b!839189 (= res!570700 (and (= (select (arr!22610 _keys!868) i!612) k!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!23051 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!24785 () Bool)

(declare-fun mapRes!24785 () Bool)

(declare-fun tp!47873 () Bool)

(assert (=> mapNonEmpty!24785 (= mapRes!24785 (and tp!47873 e!468380))))

(declare-fun mapKey!24785 () (_ BitVec 32))

(declare-fun mapRest!24785 () (Array (_ BitVec 32) ValueCell!7289))

(declare-fun mapValue!24785 () ValueCell!7289)

(assert (=> mapNonEmpty!24785 (= (arr!22611 _values!688) (store mapRest!24785 mapKey!24785 mapValue!24785))))

(declare-fun call!37006 () ListLongMap!9097)

(declare-fun b!839191 () Bool)

(declare-fun +!1983 (ListLongMap!9097 tuple2!10314) ListLongMap!9097)

(assert (=> b!839191 (= e!468384 (= call!37007 (+!1983 call!37006 (tuple2!10315 k!854 v!557))))))

(declare-fun mapIsEmpty!24785 () Bool)

(assert (=> mapIsEmpty!24785 mapRes!24785))

(declare-fun b!839192 () Bool)

(declare-fun e!468381 () Bool)

(assert (=> b!839192 (= e!468381 tp_is_empty!15457)))

(declare-fun bm!37004 () Bool)

(assert (=> bm!37004 (= call!37006 (getCurrentListMapNoExtraKeys!2557 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!839193 () Bool)

(declare-fun res!570701 () Bool)

(assert (=> b!839193 (=> (not res!570701) (not e!468379))))

(assert (=> b!839193 (= res!570701 (and (= (size!23052 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23051 _keys!868) (size!23052 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!839194 () Bool)

(declare-fun res!570702 () Bool)

(assert (=> b!839194 (=> (not res!570702) (not e!468379))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!839194 (= res!570702 (validMask!0 mask!1196))))

(declare-fun res!570695 () Bool)

(assert (=> start!72434 (=> (not res!570695) (not e!468379))))

(assert (=> start!72434 (= res!570695 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23051 _keys!868))))))

(assert (=> start!72434 e!468379))

(assert (=> start!72434 tp_is_empty!15457))

(assert (=> start!72434 true))

(assert (=> start!72434 tp!47872))

(declare-fun array_inv!17986 (array!47166) Bool)

(assert (=> start!72434 (array_inv!17986 _keys!868)))

(declare-fun e!468382 () Bool)

(declare-fun array_inv!17987 (array!47168) Bool)

(assert (=> start!72434 (and (array_inv!17987 _values!688) e!468382)))

(declare-fun b!839190 () Bool)

(declare-fun res!570697 () Bool)

(assert (=> b!839190 (=> (not res!570697) (not e!468379))))

(declare-datatypes ((List!16148 0))(
  ( (Nil!16145) (Cons!16144 (h!17275 (_ BitVec 64)) (t!22527 List!16148)) )
))
(declare-fun arrayNoDuplicates!0 (array!47166 (_ BitVec 32) List!16148) Bool)

(assert (=> b!839190 (= res!570697 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16145))))

(declare-fun b!839195 () Bool)

(declare-fun res!570696 () Bool)

(assert (=> b!839195 (=> (not res!570696) (not e!468379))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!839195 (= res!570696 (validKeyInArray!0 k!854))))

(declare-fun b!839196 () Bool)

(assert (=> b!839196 (= e!468384 (= call!37007 call!37006))))

(declare-fun b!839197 () Bool)

(declare-fun res!570698 () Bool)

(assert (=> b!839197 (=> (not res!570698) (not e!468379))))

(assert (=> b!839197 (= res!570698 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23051 _keys!868))))))

(declare-fun b!839198 () Bool)

(assert (=> b!839198 (= e!468382 (and e!468381 mapRes!24785))))

(declare-fun condMapEmpty!24785 () Bool)

(declare-fun mapDefault!24785 () ValueCell!7289)

