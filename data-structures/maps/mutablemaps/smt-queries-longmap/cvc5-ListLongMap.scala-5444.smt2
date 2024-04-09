; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72476 () Bool)

(assert start!72476)

(declare-fun b_free!13633 () Bool)

(declare-fun b_next!13633 () Bool)

(assert (=> start!72476 (= b_free!13633 (not b_next!13633))))

(declare-fun tp!47999 () Bool)

(declare-fun b_and!22737 () Bool)

(assert (=> start!72476 (= tp!47999 b_and!22737)))

(declare-fun mapNonEmpty!24848 () Bool)

(declare-fun mapRes!24848 () Bool)

(declare-fun tp!47998 () Bool)

(declare-fun e!468759 () Bool)

(assert (=> mapNonEmpty!24848 (= mapRes!24848 (and tp!47998 e!468759))))

(declare-datatypes ((V!25713 0))(
  ( (V!25714 (val!7797 Int)) )
))
(declare-datatypes ((ValueCell!7310 0))(
  ( (ValueCellFull!7310 (v!10218 V!25713)) (EmptyCell!7310) )
))
(declare-fun mapRest!24848 () (Array (_ BitVec 32) ValueCell!7310))

(declare-fun mapKey!24848 () (_ BitVec 32))

(declare-datatypes ((array!47248 0))(
  ( (array!47249 (arr!22651 (Array (_ BitVec 32) ValueCell!7310)) (size!23092 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47248)

(declare-fun mapValue!24848 () ValueCell!7310)

(assert (=> mapNonEmpty!24848 (= (arr!22651 _values!688) (store mapRest!24848 mapKey!24848 mapValue!24848))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!47250 0))(
  ( (array!47251 (arr!22652 (Array (_ BitVec 32) (_ BitVec 64))) (size!23093 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47250)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun bm!37129 () Bool)

(declare-fun minValue!654 () V!25713)

(declare-fun zeroValue!654 () V!25713)

(declare-datatypes ((tuple2!10348 0))(
  ( (tuple2!10349 (_1!5184 (_ BitVec 64)) (_2!5184 V!25713)) )
))
(declare-datatypes ((List!16177 0))(
  ( (Nil!16174) (Cons!16173 (h!17304 tuple2!10348) (t!22556 List!16177)) )
))
(declare-datatypes ((ListLongMap!9131 0))(
  ( (ListLongMap!9132 (toList!4581 List!16177)) )
))
(declare-fun call!37133 () ListLongMap!9131)

(declare-fun v!557 () V!25713)

(declare-fun getCurrentListMapNoExtraKeys!2573 (array!47250 array!47248 (_ BitVec 32) (_ BitVec 32) V!25713 V!25713 (_ BitVec 32) Int) ListLongMap!9131)

(assert (=> bm!37129 (= call!37133 (getCurrentListMapNoExtraKeys!2573 _keys!868 (array!47249 (store (arr!22651 _values!688) i!612 (ValueCellFull!7310 v!557)) (size!23092 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!840005 () Bool)

(declare-fun res!571206 () Bool)

(declare-fun e!468762 () Bool)

(assert (=> b!840005 (=> (not res!571206) (not e!468762))))

(assert (=> b!840005 (= res!571206 (and (= (size!23092 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23093 _keys!868) (size!23092 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!840006 () Bool)

(declare-fun res!571205 () Bool)

(assert (=> b!840006 (=> (not res!571205) (not e!468762))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47250 (_ BitVec 32)) Bool)

(assert (=> b!840006 (= res!571205 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!840007 () Bool)

(declare-fun e!468761 () Bool)

(declare-fun tp_is_empty!15499 () Bool)

(assert (=> b!840007 (= e!468761 tp_is_empty!15499)))

(declare-fun mapIsEmpty!24848 () Bool)

(assert (=> mapIsEmpty!24848 mapRes!24848))

(declare-fun b!840008 () Bool)

(assert (=> b!840008 (= e!468762 (not true))))

(declare-fun e!468758 () Bool)

(assert (=> b!840008 e!468758))

(declare-fun c!91227 () Bool)

(assert (=> b!840008 (= c!91227 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!28846 0))(
  ( (Unit!28847) )
))
(declare-fun lt!380760 () Unit!28846)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!272 (array!47250 array!47248 (_ BitVec 32) (_ BitVec 32) V!25713 V!25713 (_ BitVec 32) (_ BitVec 64) V!25713 (_ BitVec 32) Int) Unit!28846)

(assert (=> b!840008 (= lt!380760 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!272 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun bm!37130 () Bool)

(declare-fun call!37132 () ListLongMap!9131)

(assert (=> bm!37130 (= call!37132 (getCurrentListMapNoExtraKeys!2573 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!840009 () Bool)

(declare-fun res!571202 () Bool)

(assert (=> b!840009 (=> (not res!571202) (not e!468762))))

(assert (=> b!840009 (= res!571202 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23093 _keys!868))))))

(declare-fun b!840010 () Bool)

(declare-fun res!571204 () Bool)

(assert (=> b!840010 (=> (not res!571204) (not e!468762))))

(assert (=> b!840010 (= res!571204 (and (= (select (arr!22652 _keys!868) i!612) k!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!23093 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun b!840011 () Bool)

(assert (=> b!840011 (= e!468759 tp_is_empty!15499)))

(declare-fun b!840012 () Bool)

(declare-fun res!571203 () Bool)

(assert (=> b!840012 (=> (not res!571203) (not e!468762))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!840012 (= res!571203 (validMask!0 mask!1196))))

(declare-fun res!571199 () Bool)

(assert (=> start!72476 (=> (not res!571199) (not e!468762))))

(assert (=> start!72476 (= res!571199 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23093 _keys!868))))))

(assert (=> start!72476 e!468762))

(assert (=> start!72476 tp_is_empty!15499))

(assert (=> start!72476 true))

(assert (=> start!72476 tp!47999))

(declare-fun array_inv!18008 (array!47250) Bool)

(assert (=> start!72476 (array_inv!18008 _keys!868)))

(declare-fun e!468757 () Bool)

(declare-fun array_inv!18009 (array!47248) Bool)

(assert (=> start!72476 (and (array_inv!18009 _values!688) e!468757)))

(declare-fun b!840013 () Bool)

(declare-fun +!1995 (ListLongMap!9131 tuple2!10348) ListLongMap!9131)

(assert (=> b!840013 (= e!468758 (= call!37133 (+!1995 call!37132 (tuple2!10349 k!854 v!557))))))

(declare-fun b!840014 () Bool)

(assert (=> b!840014 (= e!468758 (= call!37133 call!37132))))

(declare-fun b!840015 () Bool)

(declare-fun res!571201 () Bool)

(assert (=> b!840015 (=> (not res!571201) (not e!468762))))

(declare-datatypes ((List!16178 0))(
  ( (Nil!16175) (Cons!16174 (h!17305 (_ BitVec 64)) (t!22557 List!16178)) )
))
(declare-fun arrayNoDuplicates!0 (array!47250 (_ BitVec 32) List!16178) Bool)

(assert (=> b!840015 (= res!571201 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16175))))

(declare-fun b!840016 () Bool)

(declare-fun res!571200 () Bool)

(assert (=> b!840016 (=> (not res!571200) (not e!468762))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!840016 (= res!571200 (validKeyInArray!0 k!854))))

(declare-fun b!840017 () Bool)

(assert (=> b!840017 (= e!468757 (and e!468761 mapRes!24848))))

(declare-fun condMapEmpty!24848 () Bool)

(declare-fun mapDefault!24848 () ValueCell!7310)

