; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72492 () Bool)

(assert start!72492)

(declare-fun b_free!13649 () Bool)

(declare-fun b_next!13649 () Bool)

(assert (=> start!72492 (= b_free!13649 (not b_next!13649))))

(declare-fun tp!48047 () Bool)

(declare-fun b_and!22753 () Bool)

(assert (=> start!72492 (= tp!48047 b_and!22753)))

(declare-fun b!840317 () Bool)

(declare-fun res!571392 () Bool)

(declare-fun e!468902 () Bool)

(assert (=> b!840317 (=> (not res!571392) (not e!468902))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!47278 0))(
  ( (array!47279 (arr!22666 (Array (_ BitVec 32) (_ BitVec 64))) (size!23107 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47278)

(declare-datatypes ((V!25733 0))(
  ( (V!25734 (val!7805 Int)) )
))
(declare-datatypes ((ValueCell!7318 0))(
  ( (ValueCellFull!7318 (v!10226 V!25733)) (EmptyCell!7318) )
))
(declare-datatypes ((array!47280 0))(
  ( (array!47281 (arr!22667 (Array (_ BitVec 32) ValueCell!7318)) (size!23108 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47280)

(assert (=> b!840317 (= res!571392 (and (= (size!23108 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23107 _keys!868) (size!23108 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-datatypes ((tuple2!10362 0))(
  ( (tuple2!10363 (_1!5191 (_ BitVec 64)) (_2!5191 V!25733)) )
))
(declare-datatypes ((List!16190 0))(
  ( (Nil!16187) (Cons!16186 (h!17317 tuple2!10362) (t!22569 List!16190)) )
))
(declare-datatypes ((ListLongMap!9145 0))(
  ( (ListLongMap!9146 (toList!4588 List!16190)) )
))
(declare-fun call!37181 () ListLongMap!9145)

(declare-fun defaultEntry!696 () Int)

(declare-fun bm!37177 () Bool)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!25733)

(declare-fun zeroValue!654 () V!25733)

(declare-fun getCurrentListMapNoExtraKeys!2580 (array!47278 array!47280 (_ BitVec 32) (_ BitVec 32) V!25733 V!25733 (_ BitVec 32) Int) ListLongMap!9145)

(assert (=> bm!37177 (= call!37181 (getCurrentListMapNoExtraKeys!2580 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!840318 () Bool)

(assert (=> b!840318 (= e!468902 (not true))))

(declare-fun e!468901 () Bool)

(assert (=> b!840318 e!468901))

(declare-fun c!91251 () Bool)

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!840318 (= c!91251 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun v!557 () V!25733)

(declare-datatypes ((Unit!28858 0))(
  ( (Unit!28859) )
))
(declare-fun lt!380784 () Unit!28858)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!278 (array!47278 array!47280 (_ BitVec 32) (_ BitVec 32) V!25733 V!25733 (_ BitVec 32) (_ BitVec 64) V!25733 (_ BitVec 32) Int) Unit!28858)

(assert (=> b!840318 (= lt!380784 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!278 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!840319 () Bool)

(declare-fun e!468903 () Bool)

(declare-fun tp_is_empty!15515 () Bool)

(assert (=> b!840319 (= e!468903 tp_is_empty!15515)))

(declare-fun b!840320 () Bool)

(declare-fun res!571391 () Bool)

(assert (=> b!840320 (=> (not res!571391) (not e!468902))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!840320 (= res!571391 (validKeyInArray!0 k!854))))

(declare-fun b!840321 () Bool)

(declare-fun res!571393 () Bool)

(assert (=> b!840321 (=> (not res!571393) (not e!468902))))

(declare-datatypes ((List!16191 0))(
  ( (Nil!16188) (Cons!16187 (h!17318 (_ BitVec 64)) (t!22570 List!16191)) )
))
(declare-fun arrayNoDuplicates!0 (array!47278 (_ BitVec 32) List!16191) Bool)

(assert (=> b!840321 (= res!571393 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16188))))

(declare-fun b!840322 () Bool)

(declare-fun e!468906 () Bool)

(assert (=> b!840322 (= e!468906 tp_is_empty!15515)))

(declare-fun b!840323 () Bool)

(declare-fun res!571395 () Bool)

(assert (=> b!840323 (=> (not res!571395) (not e!468902))))

(assert (=> b!840323 (= res!571395 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23107 _keys!868))))))

(declare-fun call!37180 () ListLongMap!9145)

(declare-fun bm!37178 () Bool)

(assert (=> bm!37178 (= call!37180 (getCurrentListMapNoExtraKeys!2580 _keys!868 (array!47281 (store (arr!22667 _values!688) i!612 (ValueCellFull!7318 v!557)) (size!23108 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun res!571396 () Bool)

(assert (=> start!72492 (=> (not res!571396) (not e!468902))))

(assert (=> start!72492 (= res!571396 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23107 _keys!868))))))

(assert (=> start!72492 e!468902))

(assert (=> start!72492 tp_is_empty!15515))

(assert (=> start!72492 true))

(assert (=> start!72492 tp!48047))

(declare-fun array_inv!18018 (array!47278) Bool)

(assert (=> start!72492 (array_inv!18018 _keys!868)))

(declare-fun e!468905 () Bool)

(declare-fun array_inv!18019 (array!47280) Bool)

(assert (=> start!72492 (and (array_inv!18019 _values!688) e!468905)))

(declare-fun b!840324 () Bool)

(declare-fun res!571397 () Bool)

(assert (=> b!840324 (=> (not res!571397) (not e!468902))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47278 (_ BitVec 32)) Bool)

(assert (=> b!840324 (= res!571397 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!840325 () Bool)

(declare-fun res!571398 () Bool)

(assert (=> b!840325 (=> (not res!571398) (not e!468902))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!840325 (= res!571398 (validMask!0 mask!1196))))

(declare-fun b!840326 () Bool)

(declare-fun res!571394 () Bool)

(assert (=> b!840326 (=> (not res!571394) (not e!468902))))

(assert (=> b!840326 (= res!571394 (and (= (select (arr!22666 _keys!868) i!612) k!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!23107 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun b!840327 () Bool)

(declare-fun mapRes!24872 () Bool)

(assert (=> b!840327 (= e!468905 (and e!468906 mapRes!24872))))

(declare-fun condMapEmpty!24872 () Bool)

(declare-fun mapDefault!24872 () ValueCell!7318)

