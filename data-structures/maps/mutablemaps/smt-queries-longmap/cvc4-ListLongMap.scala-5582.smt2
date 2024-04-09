; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73308 () Bool)

(assert start!73308)

(declare-fun b_free!14195 () Bool)

(declare-fun b_next!14195 () Bool)

(assert (=> start!73308 (= b_free!14195 (not b_next!14195))))

(declare-fun tp!50089 () Bool)

(declare-fun b_and!23567 () Bool)

(assert (=> start!73308 (= tp!50089 b_and!23567)))

(declare-fun b!854587 () Bool)

(declare-fun e!476553 () Bool)

(declare-fun e!476554 () Bool)

(assert (=> b!854587 (= e!476553 e!476554)))

(declare-fun res!580467 () Bool)

(assert (=> b!854587 (=> (not res!580467) (not e!476554))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!854587 (= res!580467 (= from!1053 i!612))))

(declare-fun defaultEntry!696 () Int)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((V!26821 0))(
  ( (V!26822 (val!8213 Int)) )
))
(declare-datatypes ((tuple2!10816 0))(
  ( (tuple2!10817 (_1!5418 (_ BitVec 64)) (_2!5418 V!26821)) )
))
(declare-datatypes ((List!16688 0))(
  ( (Nil!16685) (Cons!16684 (h!17815 tuple2!10816) (t!23337 List!16688)) )
))
(declare-datatypes ((ListLongMap!9599 0))(
  ( (ListLongMap!9600 (toList!4815 List!16688)) )
))
(declare-fun lt!385516 () ListLongMap!9599)

(declare-datatypes ((array!48842 0))(
  ( (array!48843 (arr!23448 (Array (_ BitVec 32) (_ BitVec 64))) (size!23889 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48842)

(declare-fun minValue!654 () V!26821)

(declare-fun zeroValue!654 () V!26821)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((ValueCell!7726 0))(
  ( (ValueCellFull!7726 (v!10634 V!26821)) (EmptyCell!7726) )
))
(declare-datatypes ((array!48844 0))(
  ( (array!48845 (arr!23449 (Array (_ BitVec 32) ValueCell!7726)) (size!23890 (_ BitVec 32))) )
))
(declare-fun lt!385512 () array!48844)

(declare-fun getCurrentListMapNoExtraKeys!2797 (array!48842 array!48844 (_ BitVec 32) (_ BitVec 32) V!26821 V!26821 (_ BitVec 32) Int) ListLongMap!9599)

(assert (=> b!854587 (= lt!385516 (getCurrentListMapNoExtraKeys!2797 _keys!868 lt!385512 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!26821)

(declare-fun _values!688 () array!48844)

(assert (=> b!854587 (= lt!385512 (array!48845 (store (arr!23449 _values!688) i!612 (ValueCellFull!7726 v!557)) (size!23890 _values!688)))))

(declare-fun lt!385515 () ListLongMap!9599)

(assert (=> b!854587 (= lt!385515 (getCurrentListMapNoExtraKeys!2797 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!854588 () Bool)

(declare-fun e!476552 () Bool)

(assert (=> b!854588 (= e!476552 true)))

(declare-fun lt!385511 () tuple2!10816)

(declare-fun lt!385518 () ListLongMap!9599)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun lt!385509 () V!26821)

(declare-fun +!2150 (ListLongMap!9599 tuple2!10816) ListLongMap!9599)

(assert (=> b!854588 (= (+!2150 lt!385518 lt!385511) (+!2150 (+!2150 lt!385518 (tuple2!10817 k!854 lt!385509)) lt!385511))))

(declare-fun lt!385513 () V!26821)

(assert (=> b!854588 (= lt!385511 (tuple2!10817 k!854 lt!385513))))

(declare-datatypes ((Unit!29142 0))(
  ( (Unit!29143) )
))
(declare-fun lt!385514 () Unit!29142)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!326 (ListLongMap!9599 (_ BitVec 64) V!26821 V!26821) Unit!29142)

(assert (=> b!854588 (= lt!385514 (addSameAsAddTwiceSameKeyDiffValues!326 lt!385518 k!854 lt!385509 lt!385513))))

(declare-fun lt!385510 () V!26821)

(declare-fun get!12388 (ValueCell!7726 V!26821) V!26821)

(assert (=> b!854588 (= lt!385509 (get!12388 (select (arr!23449 _values!688) from!1053) lt!385510))))

(assert (=> b!854588 (= lt!385516 (+!2150 lt!385518 (tuple2!10817 (select (arr!23448 _keys!868) from!1053) lt!385513)))))

(assert (=> b!854588 (= lt!385513 (get!12388 (select (store (arr!23449 _values!688) i!612 (ValueCellFull!7726 v!557)) from!1053) lt!385510))))

(declare-fun dynLambda!1074 (Int (_ BitVec 64)) V!26821)

(assert (=> b!854588 (= lt!385510 (dynLambda!1074 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!854588 (= lt!385518 (getCurrentListMapNoExtraKeys!2797 _keys!868 lt!385512 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!854589 () Bool)

(declare-fun res!580463 () Bool)

(assert (=> b!854589 (=> (not res!580463) (not e!476553))))

(assert (=> b!854589 (= res!580463 (and (= (size!23890 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23889 _keys!868) (size!23890 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun bm!38437 () Bool)

(declare-fun call!38440 () ListLongMap!9599)

(assert (=> bm!38437 (= call!38440 (getCurrentListMapNoExtraKeys!2797 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!854590 () Bool)

(declare-fun e!476556 () Bool)

(declare-fun tp_is_empty!16331 () Bool)

(assert (=> b!854590 (= e!476556 tp_is_empty!16331)))

(declare-fun b!854591 () Bool)

(declare-fun res!580466 () Bool)

(assert (=> b!854591 (=> (not res!580466) (not e!476553))))

(assert (=> b!854591 (= res!580466 (and (= (select (arr!23448 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun mapNonEmpty!26096 () Bool)

(declare-fun mapRes!26096 () Bool)

(declare-fun tp!50090 () Bool)

(assert (=> mapNonEmpty!26096 (= mapRes!26096 (and tp!50090 e!476556))))

(declare-fun mapKey!26096 () (_ BitVec 32))

(declare-fun mapRest!26096 () (Array (_ BitVec 32) ValueCell!7726))

(declare-fun mapValue!26096 () ValueCell!7726)

(assert (=> mapNonEmpty!26096 (= (arr!23449 _values!688) (store mapRest!26096 mapKey!26096 mapValue!26096))))

(declare-fun b!854592 () Bool)

(declare-fun res!580468 () Bool)

(assert (=> b!854592 (=> (not res!580468) (not e!476553))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!854592 (= res!580468 (validMask!0 mask!1196))))

(declare-fun b!854593 () Bool)

(declare-fun res!580464 () Bool)

(assert (=> b!854593 (=> (not res!580464) (not e!476553))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!854593 (= res!580464 (validKeyInArray!0 k!854))))

(declare-fun b!854595 () Bool)

(declare-fun res!580461 () Bool)

(assert (=> b!854595 (=> (not res!580461) (not e!476553))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48842 (_ BitVec 32)) Bool)

(assert (=> b!854595 (= res!580461 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!854596 () Bool)

(assert (=> b!854596 (= e!476554 (not e!476552))))

(declare-fun res!580465 () Bool)

(assert (=> b!854596 (=> res!580465 e!476552)))

(assert (=> b!854596 (= res!580465 (not (validKeyInArray!0 (select (arr!23448 _keys!868) from!1053))))))

(declare-fun e!476555 () Bool)

(assert (=> b!854596 e!476555))

(declare-fun c!91881 () Bool)

(assert (=> b!854596 (= c!91881 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun lt!385517 () Unit!29142)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!410 (array!48842 array!48844 (_ BitVec 32) (_ BitVec 32) V!26821 V!26821 (_ BitVec 32) (_ BitVec 64) V!26821 (_ BitVec 32) Int) Unit!29142)

(assert (=> b!854596 (= lt!385517 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!410 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!854597 () Bool)

(declare-fun res!580469 () Bool)

(assert (=> b!854597 (=> (not res!580469) (not e!476553))))

(assert (=> b!854597 (= res!580469 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23889 _keys!868))))))

(declare-fun mapIsEmpty!26096 () Bool)

(assert (=> mapIsEmpty!26096 mapRes!26096))

(declare-fun b!854598 () Bool)

(declare-fun res!580470 () Bool)

(assert (=> b!854598 (=> (not res!580470) (not e!476553))))

(declare-datatypes ((List!16689 0))(
  ( (Nil!16686) (Cons!16685 (h!17816 (_ BitVec 64)) (t!23338 List!16689)) )
))
(declare-fun arrayNoDuplicates!0 (array!48842 (_ BitVec 32) List!16689) Bool)

(assert (=> b!854598 (= res!580470 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16686))))

(declare-fun b!854599 () Bool)

(declare-fun call!38441 () ListLongMap!9599)

(assert (=> b!854599 (= e!476555 (= call!38441 (+!2150 call!38440 (tuple2!10817 k!854 v!557))))))

(declare-fun b!854600 () Bool)

(declare-fun e!476549 () Bool)

(assert (=> b!854600 (= e!476549 tp_is_empty!16331)))

(declare-fun bm!38438 () Bool)

(assert (=> bm!38438 (= call!38441 (getCurrentListMapNoExtraKeys!2797 _keys!868 lt!385512 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!854601 () Bool)

(declare-fun e!476551 () Bool)

(assert (=> b!854601 (= e!476551 (and e!476549 mapRes!26096))))

(declare-fun condMapEmpty!26096 () Bool)

(declare-fun mapDefault!26096 () ValueCell!7726)

