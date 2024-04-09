; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72522 () Bool)

(assert start!72522)

(declare-fun b_free!13679 () Bool)

(declare-fun b_next!13679 () Bool)

(assert (=> start!72522 (= b_free!13679 (not b_next!13679))))

(declare-fun tp!48136 () Bool)

(declare-fun b_and!22783 () Bool)

(assert (=> start!72522 (= tp!48136 b_and!22783)))

(declare-fun mapNonEmpty!24917 () Bool)

(declare-fun mapRes!24917 () Bool)

(declare-fun tp!48137 () Bool)

(declare-fun e!469175 () Bool)

(assert (=> mapNonEmpty!24917 (= mapRes!24917 (and tp!48137 e!469175))))

(declare-fun mapKey!24917 () (_ BitVec 32))

(declare-datatypes ((V!25773 0))(
  ( (V!25774 (val!7820 Int)) )
))
(declare-datatypes ((ValueCell!7333 0))(
  ( (ValueCellFull!7333 (v!10241 V!25773)) (EmptyCell!7333) )
))
(declare-fun mapRest!24917 () (Array (_ BitVec 32) ValueCell!7333))

(declare-fun mapValue!24917 () ValueCell!7333)

(declare-datatypes ((array!47336 0))(
  ( (array!47337 (arr!22695 (Array (_ BitVec 32) ValueCell!7333)) (size!23136 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47336)

(assert (=> mapNonEmpty!24917 (= (arr!22695 _values!688) (store mapRest!24917 mapKey!24917 mapValue!24917))))

(declare-fun res!571756 () Bool)

(declare-fun e!469172 () Bool)

(assert (=> start!72522 (=> (not res!571756) (not e!469172))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!47338 0))(
  ( (array!47339 (arr!22696 (Array (_ BitVec 32) (_ BitVec 64))) (size!23137 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47338)

(assert (=> start!72522 (= res!571756 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23137 _keys!868))))))

(assert (=> start!72522 e!469172))

(declare-fun tp_is_empty!15545 () Bool)

(assert (=> start!72522 tp_is_empty!15545))

(assert (=> start!72522 true))

(assert (=> start!72522 tp!48136))

(declare-fun array_inv!18042 (array!47338) Bool)

(assert (=> start!72522 (array_inv!18042 _keys!868)))

(declare-fun e!469174 () Bool)

(declare-fun array_inv!18043 (array!47336) Bool)

(assert (=> start!72522 (and (array_inv!18043 _values!688) e!469174)))

(declare-fun b!840902 () Bool)

(declare-fun res!571758 () Bool)

(assert (=> b!840902 (=> (not res!571758) (not e!469172))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(assert (=> b!840902 (= res!571758 (and (= (select (arr!22696 _keys!868) i!612) k!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!23137 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun b!840903 () Bool)

(declare-fun res!571752 () Bool)

(assert (=> b!840903 (=> (not res!571752) (not e!469172))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!840903 (= res!571752 (validKeyInArray!0 k!854))))

(declare-fun b!840904 () Bool)

(assert (=> b!840904 (= e!469172 (not true))))

(declare-fun e!469176 () Bool)

(assert (=> b!840904 e!469176))

(declare-fun c!91296 () Bool)

(assert (=> b!840904 (= c!91296 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun v!557 () V!25773)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((Unit!28880 0))(
  ( (Unit!28881) )
))
(declare-fun lt!380829 () Unit!28880)

(declare-fun minValue!654 () V!25773)

(declare-fun zeroValue!654 () V!25773)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!289 (array!47338 array!47336 (_ BitVec 32) (_ BitVec 32) V!25773 V!25773 (_ BitVec 32) (_ BitVec 64) V!25773 (_ BitVec 32) Int) Unit!28880)

(assert (=> b!840904 (= lt!380829 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!289 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!840905 () Bool)

(declare-fun res!571755 () Bool)

(assert (=> b!840905 (=> (not res!571755) (not e!469172))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47338 (_ BitVec 32)) Bool)

(assert (=> b!840905 (= res!571755 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!840906 () Bool)

(declare-datatypes ((tuple2!10390 0))(
  ( (tuple2!10391 (_1!5205 (_ BitVec 64)) (_2!5205 V!25773)) )
))
(declare-datatypes ((List!16214 0))(
  ( (Nil!16211) (Cons!16210 (h!17341 tuple2!10390) (t!22593 List!16214)) )
))
(declare-datatypes ((ListLongMap!9173 0))(
  ( (ListLongMap!9174 (toList!4602 List!16214)) )
))
(declare-fun call!37271 () ListLongMap!9173)

(declare-fun call!37270 () ListLongMap!9173)

(assert (=> b!840906 (= e!469176 (= call!37271 call!37270))))

(declare-fun b!840907 () Bool)

(assert (=> b!840907 (= e!469175 tp_is_empty!15545)))

(declare-fun bm!37267 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!2593 (array!47338 array!47336 (_ BitVec 32) (_ BitVec 32) V!25773 V!25773 (_ BitVec 32) Int) ListLongMap!9173)

(assert (=> bm!37267 (= call!37270 (getCurrentListMapNoExtraKeys!2593 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!840908 () Bool)

(declare-fun res!571753 () Bool)

(assert (=> b!840908 (=> (not res!571753) (not e!469172))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!840908 (= res!571753 (validMask!0 mask!1196))))

(declare-fun b!840909 () Bool)

(declare-fun res!571751 () Bool)

(assert (=> b!840909 (=> (not res!571751) (not e!469172))))

(assert (=> b!840909 (= res!571751 (and (= (size!23136 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23137 _keys!868) (size!23136 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun bm!37268 () Bool)

(assert (=> bm!37268 (= call!37271 (getCurrentListMapNoExtraKeys!2593 _keys!868 (array!47337 (store (arr!22695 _values!688) i!612 (ValueCellFull!7333 v!557)) (size!23136 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!840910 () Bool)

(declare-fun +!2008 (ListLongMap!9173 tuple2!10390) ListLongMap!9173)

(assert (=> b!840910 (= e!469176 (= call!37271 (+!2008 call!37270 (tuple2!10391 k!854 v!557))))))

(declare-fun b!840911 () Bool)

(declare-fun res!571754 () Bool)

(assert (=> b!840911 (=> (not res!571754) (not e!469172))))

(declare-datatypes ((List!16215 0))(
  ( (Nil!16212) (Cons!16211 (h!17342 (_ BitVec 64)) (t!22594 List!16215)) )
))
(declare-fun arrayNoDuplicates!0 (array!47338 (_ BitVec 32) List!16215) Bool)

(assert (=> b!840911 (= res!571754 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16212))))

(declare-fun b!840912 () Bool)

(declare-fun res!571757 () Bool)

(assert (=> b!840912 (=> (not res!571757) (not e!469172))))

(assert (=> b!840912 (= res!571757 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23137 _keys!868))))))

(declare-fun b!840913 () Bool)

(declare-fun e!469173 () Bool)

(assert (=> b!840913 (= e!469174 (and e!469173 mapRes!24917))))

(declare-fun condMapEmpty!24917 () Bool)

(declare-fun mapDefault!24917 () ValueCell!7333)

