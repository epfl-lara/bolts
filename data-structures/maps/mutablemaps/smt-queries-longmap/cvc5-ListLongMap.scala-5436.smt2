; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72428 () Bool)

(assert start!72428)

(declare-fun b_free!13585 () Bool)

(declare-fun b_next!13585 () Bool)

(assert (=> start!72428 (= b_free!13585 (not b_next!13585))))

(declare-fun tp!47854 () Bool)

(declare-fun b_and!22689 () Bool)

(assert (=> start!72428 (= tp!47854 b_and!22689)))

(declare-datatypes ((V!25649 0))(
  ( (V!25650 (val!7773 Int)) )
))
(declare-datatypes ((tuple2!10308 0))(
  ( (tuple2!10309 (_1!5164 (_ BitVec 64)) (_2!5164 V!25649)) )
))
(declare-datatypes ((List!16141 0))(
  ( (Nil!16138) (Cons!16137 (h!17268 tuple2!10308) (t!22520 List!16141)) )
))
(declare-datatypes ((ListLongMap!9091 0))(
  ( (ListLongMap!9092 (toList!4561 List!16141)) )
))
(declare-fun call!36988 () ListLongMap!9091)

(declare-fun call!36989 () ListLongMap!9091)

(declare-fun b!839069 () Bool)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun e!468328 () Bool)

(declare-fun v!557 () V!25649)

(declare-fun +!1980 (ListLongMap!9091 tuple2!10308) ListLongMap!9091)

(assert (=> b!839069 (= e!468328 (= call!36988 (+!1980 call!36989 (tuple2!10309 k!854 v!557))))))

(declare-fun res!570630 () Bool)

(declare-fun e!468330 () Bool)

(assert (=> start!72428 (=> (not res!570630) (not e!468330))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!47154 0))(
  ( (array!47155 (arr!22604 (Array (_ BitVec 32) (_ BitVec 64))) (size!23045 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47154)

(assert (=> start!72428 (= res!570630 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23045 _keys!868))))))

(assert (=> start!72428 e!468330))

(declare-fun tp_is_empty!15451 () Bool)

(assert (=> start!72428 tp_is_empty!15451))

(assert (=> start!72428 true))

(assert (=> start!72428 tp!47854))

(declare-fun array_inv!17982 (array!47154) Bool)

(assert (=> start!72428 (array_inv!17982 _keys!868)))

(declare-datatypes ((ValueCell!7286 0))(
  ( (ValueCellFull!7286 (v!10194 V!25649)) (EmptyCell!7286) )
))
(declare-datatypes ((array!47156 0))(
  ( (array!47157 (arr!22605 (Array (_ BitVec 32) ValueCell!7286)) (size!23046 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47156)

(declare-fun e!468326 () Bool)

(declare-fun array_inv!17983 (array!47156) Bool)

(assert (=> start!72428 (and (array_inv!17983 _values!688) e!468326)))

(declare-fun b!839070 () Bool)

(declare-fun res!570629 () Bool)

(assert (=> b!839070 (=> (not res!570629) (not e!468330))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!839070 (= res!570629 (validKeyInArray!0 k!854))))

(declare-fun b!839071 () Bool)

(declare-fun e!468325 () Bool)

(assert (=> b!839071 (= e!468325 tp_is_empty!15451)))

(declare-fun b!839072 () Bool)

(assert (=> b!839072 (= e!468330 (not true))))

(assert (=> b!839072 e!468328))

(declare-fun c!91155 () Bool)

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!839072 (= c!91155 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((Unit!28814 0))(
  ( (Unit!28815) )
))
(declare-fun lt!380688 () Unit!28814)

(declare-fun minValue!654 () V!25649)

(declare-fun zeroValue!654 () V!25649)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!256 (array!47154 array!47156 (_ BitVec 32) (_ BitVec 32) V!25649 V!25649 (_ BitVec 32) (_ BitVec 64) V!25649 (_ BitVec 32) Int) Unit!28814)

(assert (=> b!839072 (= lt!380688 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!256 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!839073 () Bool)

(declare-fun res!570625 () Bool)

(assert (=> b!839073 (=> (not res!570625) (not e!468330))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47154 (_ BitVec 32)) Bool)

(assert (=> b!839073 (= res!570625 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!839074 () Bool)

(declare-fun res!570627 () Bool)

(assert (=> b!839074 (=> (not res!570627) (not e!468330))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!839074 (= res!570627 (validMask!0 mask!1196))))

(declare-fun bm!36985 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!2555 (array!47154 array!47156 (_ BitVec 32) (_ BitVec 32) V!25649 V!25649 (_ BitVec 32) Int) ListLongMap!9091)

(assert (=> bm!36985 (= call!36989 (getCurrentListMapNoExtraKeys!2555 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!839075 () Bool)

(declare-fun res!570628 () Bool)

(assert (=> b!839075 (=> (not res!570628) (not e!468330))))

(assert (=> b!839075 (= res!570628 (and (= (select (arr!22604 _keys!868) i!612) k!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!23045 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun b!839076 () Bool)

(assert (=> b!839076 (= e!468328 (= call!36988 call!36989))))

(declare-fun b!839077 () Bool)

(declare-fun res!570623 () Bool)

(assert (=> b!839077 (=> (not res!570623) (not e!468330))))

(declare-datatypes ((List!16142 0))(
  ( (Nil!16139) (Cons!16138 (h!17269 (_ BitVec 64)) (t!22521 List!16142)) )
))
(declare-fun arrayNoDuplicates!0 (array!47154 (_ BitVec 32) List!16142) Bool)

(assert (=> b!839077 (= res!570623 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16139))))

(declare-fun b!839078 () Bool)

(declare-fun res!570624 () Bool)

(assert (=> b!839078 (=> (not res!570624) (not e!468330))))

(assert (=> b!839078 (= res!570624 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23045 _keys!868))))))

(declare-fun mapNonEmpty!24776 () Bool)

(declare-fun mapRes!24776 () Bool)

(declare-fun tp!47855 () Bool)

(declare-fun e!468327 () Bool)

(assert (=> mapNonEmpty!24776 (= mapRes!24776 (and tp!47855 e!468327))))

(declare-fun mapKey!24776 () (_ BitVec 32))

(declare-fun mapRest!24776 () (Array (_ BitVec 32) ValueCell!7286))

(declare-fun mapValue!24776 () ValueCell!7286)

(assert (=> mapNonEmpty!24776 (= (arr!22605 _values!688) (store mapRest!24776 mapKey!24776 mapValue!24776))))

(declare-fun bm!36986 () Bool)

(assert (=> bm!36986 (= call!36988 (getCurrentListMapNoExtraKeys!2555 _keys!868 (array!47157 (store (arr!22605 _values!688) i!612 (ValueCellFull!7286 v!557)) (size!23046 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!839079 () Bool)

(assert (=> b!839079 (= e!468326 (and e!468325 mapRes!24776))))

(declare-fun condMapEmpty!24776 () Bool)

(declare-fun mapDefault!24776 () ValueCell!7286)

