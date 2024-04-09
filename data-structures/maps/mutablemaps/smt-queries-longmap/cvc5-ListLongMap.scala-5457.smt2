; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72554 () Bool)

(assert start!72554)

(declare-fun b_free!13711 () Bool)

(declare-fun b_next!13711 () Bool)

(assert (=> start!72554 (= b_free!13711 (not b_next!13711))))

(declare-fun tp!48233 () Bool)

(declare-fun b_and!22815 () Bool)

(assert (=> start!72554 (= tp!48233 b_and!22815)))

(declare-fun b!841526 () Bool)

(declare-fun e!469464 () Bool)

(declare-fun tp_is_empty!15577 () Bool)

(assert (=> b!841526 (= e!469464 tp_is_empty!15577)))

(declare-fun b!841527 () Bool)

(declare-fun res!572139 () Bool)

(declare-fun e!469461 () Bool)

(assert (=> b!841527 (=> (not res!572139) (not e!469461))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!47398 0))(
  ( (array!47399 (arr!22726 (Array (_ BitVec 32) (_ BitVec 64))) (size!23167 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47398)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!841527 (= res!572139 (and (= (select (arr!22726 _keys!868) i!612) k!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!23167 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun b!841528 () Bool)

(declare-fun e!469463 () Bool)

(declare-datatypes ((V!25817 0))(
  ( (V!25818 (val!7836 Int)) )
))
(declare-datatypes ((tuple2!10420 0))(
  ( (tuple2!10421 (_1!5220 (_ BitVec 64)) (_2!5220 V!25817)) )
))
(declare-datatypes ((List!16243 0))(
  ( (Nil!16240) (Cons!16239 (h!17370 tuple2!10420) (t!22622 List!16243)) )
))
(declare-datatypes ((ListLongMap!9203 0))(
  ( (ListLongMap!9204 (toList!4617 List!16243)) )
))
(declare-fun call!37366 () ListLongMap!9203)

(declare-fun call!37367 () ListLongMap!9203)

(assert (=> b!841528 (= e!469463 (= call!37366 call!37367))))

(declare-fun defaultEntry!696 () Int)

(declare-fun bm!37363 () Bool)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((ValueCell!7349 0))(
  ( (ValueCellFull!7349 (v!10257 V!25817)) (EmptyCell!7349) )
))
(declare-datatypes ((array!47400 0))(
  ( (array!47401 (arr!22727 (Array (_ BitVec 32) ValueCell!7349)) (size!23168 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47400)

(declare-fun minValue!654 () V!25817)

(declare-fun zeroValue!654 () V!25817)

(declare-fun getCurrentListMapNoExtraKeys!2607 (array!47398 array!47400 (_ BitVec 32) (_ BitVec 32) V!25817 V!25817 (_ BitVec 32) Int) ListLongMap!9203)

(assert (=> bm!37363 (= call!37367 (getCurrentListMapNoExtraKeys!2607 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapIsEmpty!24965 () Bool)

(declare-fun mapRes!24965 () Bool)

(assert (=> mapIsEmpty!24965 mapRes!24965))

(declare-fun b!841530 () Bool)

(declare-fun res!572138 () Bool)

(assert (=> b!841530 (=> (not res!572138) (not e!469461))))

(declare-datatypes ((List!16244 0))(
  ( (Nil!16241) (Cons!16240 (h!17371 (_ BitVec 64)) (t!22623 List!16244)) )
))
(declare-fun arrayNoDuplicates!0 (array!47398 (_ BitVec 32) List!16244) Bool)

(assert (=> b!841530 (= res!572138 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16241))))

(declare-fun mapNonEmpty!24965 () Bool)

(declare-fun tp!48232 () Bool)

(declare-fun e!469462 () Bool)

(assert (=> mapNonEmpty!24965 (= mapRes!24965 (and tp!48232 e!469462))))

(declare-fun mapValue!24965 () ValueCell!7349)

(declare-fun mapKey!24965 () (_ BitVec 32))

(declare-fun mapRest!24965 () (Array (_ BitVec 32) ValueCell!7349))

(assert (=> mapNonEmpty!24965 (= (arr!22727 _values!688) (store mapRest!24965 mapKey!24965 mapValue!24965))))

(declare-fun b!841531 () Bool)

(declare-fun res!572141 () Bool)

(assert (=> b!841531 (=> (not res!572141) (not e!469461))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!841531 (= res!572141 (validMask!0 mask!1196))))

(declare-fun b!841532 () Bool)

(declare-fun res!572136 () Bool)

(assert (=> b!841532 (=> (not res!572136) (not e!469461))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!841532 (= res!572136 (validKeyInArray!0 k!854))))

(declare-fun b!841533 () Bool)

(assert (=> b!841533 (= e!469462 tp_is_empty!15577)))

(declare-fun v!557 () V!25817)

(declare-fun b!841534 () Bool)

(declare-fun +!2020 (ListLongMap!9203 tuple2!10420) ListLongMap!9203)

(assert (=> b!841534 (= e!469463 (= call!37366 (+!2020 call!37367 (tuple2!10421 k!854 v!557))))))

(declare-fun b!841535 () Bool)

(declare-fun e!469459 () Bool)

(assert (=> b!841535 (= e!469459 (and e!469464 mapRes!24965))))

(declare-fun condMapEmpty!24965 () Bool)

(declare-fun mapDefault!24965 () ValueCell!7349)

