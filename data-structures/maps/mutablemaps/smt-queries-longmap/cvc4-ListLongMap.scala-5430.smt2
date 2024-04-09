; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72396 () Bool)

(assert start!72396)

(declare-fun b_free!13553 () Bool)

(declare-fun b_next!13553 () Bool)

(assert (=> start!72396 (= b_free!13553 (not b_next!13553))))

(declare-fun tp!47759 () Bool)

(declare-fun b_and!22657 () Bool)

(assert (=> start!72396 (= tp!47759 b_and!22657)))

(declare-fun b!838445 () Bool)

(declare-fun e!468037 () Bool)

(declare-datatypes ((V!25605 0))(
  ( (V!25606 (val!7757 Int)) )
))
(declare-datatypes ((tuple2!10282 0))(
  ( (tuple2!10283 (_1!5151 (_ BitVec 64)) (_2!5151 V!25605)) )
))
(declare-datatypes ((List!16119 0))(
  ( (Nil!16116) (Cons!16115 (h!17246 tuple2!10282) (t!22498 List!16119)) )
))
(declare-datatypes ((ListLongMap!9065 0))(
  ( (ListLongMap!9066 (toList!4548 List!16119)) )
))
(declare-fun call!36892 () ListLongMap!9065)

(declare-fun call!36893 () ListLongMap!9065)

(assert (=> b!838445 (= e!468037 (= call!36892 call!36893))))

(declare-fun b!838446 () Bool)

(declare-fun e!468040 () Bool)

(declare-fun tp_is_empty!15419 () Bool)

(assert (=> b!838446 (= e!468040 tp_is_empty!15419)))

(declare-fun b!838447 () Bool)

(declare-fun res!570245 () Bool)

(declare-fun e!468038 () Bool)

(assert (=> b!838447 (=> (not res!570245) (not e!468038))))

(declare-datatypes ((array!47090 0))(
  ( (array!47091 (arr!22572 (Array (_ BitVec 32) (_ BitVec 64))) (size!23013 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47090)

(declare-datatypes ((List!16120 0))(
  ( (Nil!16117) (Cons!16116 (h!17247 (_ BitVec 64)) (t!22499 List!16120)) )
))
(declare-fun arrayNoDuplicates!0 (array!47090 (_ BitVec 32) List!16120) Bool)

(assert (=> b!838447 (= res!570245 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16117))))

(declare-fun bm!36889 () Bool)

(declare-fun v!557 () V!25605)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((ValueCell!7270 0))(
  ( (ValueCellFull!7270 (v!10178 V!25605)) (EmptyCell!7270) )
))
(declare-datatypes ((array!47092 0))(
  ( (array!47093 (arr!22573 (Array (_ BitVec 32) ValueCell!7270)) (size!23014 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47092)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!25605)

(declare-fun zeroValue!654 () V!25605)

(declare-fun getCurrentListMapNoExtraKeys!2543 (array!47090 array!47092 (_ BitVec 32) (_ BitVec 32) V!25605 V!25605 (_ BitVec 32) Int) ListLongMap!9065)

(assert (=> bm!36889 (= call!36892 (getCurrentListMapNoExtraKeys!2543 _keys!868 (array!47093 (store (arr!22573 _values!688) i!612 (ValueCellFull!7270 v!557)) (size!23014 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!838449 () Bool)

(assert (=> b!838449 (= e!468038 (not true))))

(assert (=> b!838449 e!468037))

(declare-fun c!91107 () Bool)

(assert (=> b!838449 (= c!91107 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((Unit!28790 0))(
  ( (Unit!28791) )
))
(declare-fun lt!380640 () Unit!28790)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!244 (array!47090 array!47092 (_ BitVec 32) (_ BitVec 32) V!25605 V!25605 (_ BitVec 32) (_ BitVec 64) V!25605 (_ BitVec 32) Int) Unit!28790)

(assert (=> b!838449 (= lt!380640 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!244 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!838450 () Bool)

(declare-fun res!570242 () Bool)

(assert (=> b!838450 (=> (not res!570242) (not e!468038))))

(assert (=> b!838450 (= res!570242 (and (= (size!23014 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23013 _keys!868) (size!23014 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!838451 () Bool)

(declare-fun res!570246 () Bool)

(assert (=> b!838451 (=> (not res!570246) (not e!468038))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!838451 (= res!570246 (validKeyInArray!0 k!854))))

(declare-fun b!838452 () Bool)

(declare-fun res!570244 () Bool)

(assert (=> b!838452 (=> (not res!570244) (not e!468038))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47090 (_ BitVec 32)) Bool)

(assert (=> b!838452 (= res!570244 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!838448 () Bool)

(declare-fun res!570243 () Bool)

(assert (=> b!838448 (=> (not res!570243) (not e!468038))))

(assert (=> b!838448 (= res!570243 (and (= (select (arr!22572 _keys!868) i!612) k!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!23013 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun res!570241 () Bool)

(assert (=> start!72396 (=> (not res!570241) (not e!468038))))

(assert (=> start!72396 (= res!570241 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23013 _keys!868))))))

(assert (=> start!72396 e!468038))

(assert (=> start!72396 tp_is_empty!15419))

(assert (=> start!72396 true))

(assert (=> start!72396 tp!47759))

(declare-fun array_inv!17958 (array!47090) Bool)

(assert (=> start!72396 (array_inv!17958 _keys!868)))

(declare-fun e!468039 () Bool)

(declare-fun array_inv!17959 (array!47092) Bool)

(assert (=> start!72396 (and (array_inv!17959 _values!688) e!468039)))

(declare-fun b!838453 () Bool)

(declare-fun res!570239 () Bool)

(assert (=> b!838453 (=> (not res!570239) (not e!468038))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!838453 (= res!570239 (validMask!0 mask!1196))))

(declare-fun mapIsEmpty!24728 () Bool)

(declare-fun mapRes!24728 () Bool)

(assert (=> mapIsEmpty!24728 mapRes!24728))

(declare-fun b!838454 () Bool)

(declare-fun +!1971 (ListLongMap!9065 tuple2!10282) ListLongMap!9065)

(assert (=> b!838454 (= e!468037 (= call!36892 (+!1971 call!36893 (tuple2!10283 k!854 v!557))))))

(declare-fun b!838455 () Bool)

(declare-fun e!468041 () Bool)

(assert (=> b!838455 (= e!468041 tp_is_empty!15419)))

(declare-fun b!838456 () Bool)

(declare-fun res!570240 () Bool)

(assert (=> b!838456 (=> (not res!570240) (not e!468038))))

(assert (=> b!838456 (= res!570240 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23013 _keys!868))))))

(declare-fun bm!36890 () Bool)

(assert (=> bm!36890 (= call!36893 (getCurrentListMapNoExtraKeys!2543 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapNonEmpty!24728 () Bool)

(declare-fun tp!47758 () Bool)

(assert (=> mapNonEmpty!24728 (= mapRes!24728 (and tp!47758 e!468041))))

(declare-fun mapKey!24728 () (_ BitVec 32))

(declare-fun mapValue!24728 () ValueCell!7270)

(declare-fun mapRest!24728 () (Array (_ BitVec 32) ValueCell!7270))

(assert (=> mapNonEmpty!24728 (= (arr!22573 _values!688) (store mapRest!24728 mapKey!24728 mapValue!24728))))

(declare-fun b!838457 () Bool)

(assert (=> b!838457 (= e!468039 (and e!468040 mapRes!24728))))

(declare-fun condMapEmpty!24728 () Bool)

(declare-fun mapDefault!24728 () ValueCell!7270)

