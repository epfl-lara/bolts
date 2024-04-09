; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72540 () Bool)

(assert start!72540)

(declare-fun b_free!13697 () Bool)

(declare-fun b_next!13697 () Bool)

(assert (=> start!72540 (= b_free!13697 (not b_next!13697))))

(declare-fun tp!48190 () Bool)

(declare-fun b_and!22801 () Bool)

(assert (=> start!72540 (= tp!48190 b_and!22801)))

(declare-fun b!841253 () Bool)

(declare-fun e!469338 () Bool)

(declare-fun tp_is_empty!15563 () Bool)

(assert (=> b!841253 (= e!469338 tp_is_empty!15563)))

(declare-fun res!571974 () Bool)

(declare-fun e!469334 () Bool)

(assert (=> start!72540 (=> (not res!571974) (not e!469334))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!47372 0))(
  ( (array!47373 (arr!22713 (Array (_ BitVec 32) (_ BitVec 64))) (size!23154 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47372)

(assert (=> start!72540 (= res!571974 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23154 _keys!868))))))

(assert (=> start!72540 e!469334))

(assert (=> start!72540 tp_is_empty!15563))

(assert (=> start!72540 true))

(assert (=> start!72540 tp!48190))

(declare-fun array_inv!18058 (array!47372) Bool)

(assert (=> start!72540 (array_inv!18058 _keys!868)))

(declare-datatypes ((V!25797 0))(
  ( (V!25798 (val!7829 Int)) )
))
(declare-datatypes ((ValueCell!7342 0))(
  ( (ValueCellFull!7342 (v!10250 V!25797)) (EmptyCell!7342) )
))
(declare-datatypes ((array!47374 0))(
  ( (array!47375 (arr!22714 (Array (_ BitVec 32) ValueCell!7342)) (size!23155 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47374)

(declare-fun e!469336 () Bool)

(declare-fun array_inv!18059 (array!47374) Bool)

(assert (=> start!72540 (and (array_inv!18059 _values!688) e!469336)))

(declare-fun mapNonEmpty!24944 () Bool)

(declare-fun mapRes!24944 () Bool)

(declare-fun tp!48191 () Bool)

(assert (=> mapNonEmpty!24944 (= mapRes!24944 (and tp!48191 e!469338))))

(declare-fun mapValue!24944 () ValueCell!7342)

(declare-fun mapRest!24944 () (Array (_ BitVec 32) ValueCell!7342))

(declare-fun mapKey!24944 () (_ BitVec 32))

(assert (=> mapNonEmpty!24944 (= (arr!22714 _values!688) (store mapRest!24944 mapKey!24944 mapValue!24944))))

(declare-fun b!841254 () Bool)

(declare-fun res!571968 () Bool)

(assert (=> b!841254 (=> (not res!571968) (not e!469334))))

(declare-datatypes ((List!16232 0))(
  ( (Nil!16229) (Cons!16228 (h!17359 (_ BitVec 64)) (t!22611 List!16232)) )
))
(declare-fun arrayNoDuplicates!0 (array!47372 (_ BitVec 32) List!16232) Bool)

(assert (=> b!841254 (= res!571968 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16229))))

(declare-fun b!841255 () Bool)

(declare-fun res!571969 () Bool)

(assert (=> b!841255 (=> (not res!571969) (not e!469334))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(assert (=> b!841255 (= res!571969 (and (= (size!23155 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23154 _keys!868) (size!23155 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!841256 () Bool)

(declare-fun res!571972 () Bool)

(assert (=> b!841256 (=> (not res!571972) (not e!469334))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(assert (=> b!841256 (= res!571972 (and (= (select (arr!22713 _keys!868) i!612) k!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!23154 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun b!841257 () Bool)

(declare-fun e!469337 () Bool)

(assert (=> b!841257 (= e!469337 tp_is_empty!15563)))

(declare-fun b!841258 () Bool)

(declare-fun e!469335 () Bool)

(declare-datatypes ((tuple2!10408 0))(
  ( (tuple2!10409 (_1!5214 (_ BitVec 64)) (_2!5214 V!25797)) )
))
(declare-datatypes ((List!16233 0))(
  ( (Nil!16230) (Cons!16229 (h!17360 tuple2!10408) (t!22612 List!16233)) )
))
(declare-datatypes ((ListLongMap!9191 0))(
  ( (ListLongMap!9192 (toList!4611 List!16233)) )
))
(declare-fun call!37324 () ListLongMap!9191)

(declare-fun call!37325 () ListLongMap!9191)

(assert (=> b!841258 (= e!469335 (= call!37324 call!37325))))

(declare-fun v!557 () V!25797)

(declare-fun defaultEntry!696 () Int)

(declare-fun bm!37321 () Bool)

(declare-fun minValue!654 () V!25797)

(declare-fun zeroValue!654 () V!25797)

(declare-fun getCurrentListMapNoExtraKeys!2602 (array!47372 array!47374 (_ BitVec 32) (_ BitVec 32) V!25797 V!25797 (_ BitVec 32) Int) ListLongMap!9191)

(assert (=> bm!37321 (= call!37324 (getCurrentListMapNoExtraKeys!2602 _keys!868 (array!47375 (store (arr!22714 _values!688) i!612 (ValueCellFull!7342 v!557)) (size!23155 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!841259 () Bool)

(declare-fun res!571967 () Bool)

(assert (=> b!841259 (=> (not res!571967) (not e!469334))))

(assert (=> b!841259 (= res!571967 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23154 _keys!868))))))

(declare-fun b!841260 () Bool)

(assert (=> b!841260 (= e!469336 (and e!469337 mapRes!24944))))

(declare-fun condMapEmpty!24944 () Bool)

(declare-fun mapDefault!24944 () ValueCell!7342)

