; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72524 () Bool)

(assert start!72524)

(declare-fun b_free!13681 () Bool)

(declare-fun b_next!13681 () Bool)

(assert (=> start!72524 (= b_free!13681 (not b_next!13681))))

(declare-fun tp!48142 () Bool)

(declare-fun b_and!22785 () Bool)

(assert (=> start!72524 (= tp!48142 b_and!22785)))

(declare-fun res!571779 () Bool)

(declare-fun e!469190 () Bool)

(assert (=> start!72524 (=> (not res!571779) (not e!469190))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!47340 0))(
  ( (array!47341 (arr!22697 (Array (_ BitVec 32) (_ BitVec 64))) (size!23138 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47340)

(assert (=> start!72524 (= res!571779 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23138 _keys!868))))))

(assert (=> start!72524 e!469190))

(declare-fun tp_is_empty!15547 () Bool)

(assert (=> start!72524 tp_is_empty!15547))

(assert (=> start!72524 true))

(assert (=> start!72524 tp!48142))

(declare-fun array_inv!18044 (array!47340) Bool)

(assert (=> start!72524 (array_inv!18044 _keys!868)))

(declare-datatypes ((V!25777 0))(
  ( (V!25778 (val!7821 Int)) )
))
(declare-datatypes ((ValueCell!7334 0))(
  ( (ValueCellFull!7334 (v!10242 V!25777)) (EmptyCell!7334) )
))
(declare-datatypes ((array!47342 0))(
  ( (array!47343 (arr!22698 (Array (_ BitVec 32) ValueCell!7334)) (size!23139 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47342)

(declare-fun e!469193 () Bool)

(declare-fun array_inv!18045 (array!47342) Bool)

(assert (=> start!72524 (and (array_inv!18045 _values!688) e!469193)))

(declare-fun b!840941 () Bool)

(declare-fun e!469191 () Bool)

(assert (=> b!840941 (= e!469191 tp_is_empty!15547)))

(declare-datatypes ((tuple2!10392 0))(
  ( (tuple2!10393 (_1!5206 (_ BitVec 64)) (_2!5206 V!25777)) )
))
(declare-datatypes ((List!16216 0))(
  ( (Nil!16213) (Cons!16212 (h!17343 tuple2!10392) (t!22595 List!16216)) )
))
(declare-datatypes ((ListLongMap!9175 0))(
  ( (ListLongMap!9176 (toList!4603 List!16216)) )
))
(declare-fun call!37276 () ListLongMap!9175)

(declare-fun v!557 () V!25777)

(declare-fun call!37277 () ListLongMap!9175)

(declare-fun b!840942 () Bool)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun e!469189 () Bool)

(declare-fun +!2009 (ListLongMap!9175 tuple2!10392) ListLongMap!9175)

(assert (=> b!840942 (= e!469189 (= call!37277 (+!2009 call!37276 (tuple2!10393 k!854 v!557))))))

(declare-fun mapIsEmpty!24920 () Bool)

(declare-fun mapRes!24920 () Bool)

(assert (=> mapIsEmpty!24920 mapRes!24920))

(declare-fun b!840943 () Bool)

(declare-fun res!571776 () Bool)

(assert (=> b!840943 (=> (not res!571776) (not e!469190))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(assert (=> b!840943 (= res!571776 (and (= (size!23139 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23138 _keys!868) (size!23139 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun defaultEntry!696 () Int)

(declare-fun bm!37273 () Bool)

(declare-fun minValue!654 () V!25777)

(declare-fun zeroValue!654 () V!25777)

(declare-fun getCurrentListMapNoExtraKeys!2594 (array!47340 array!47342 (_ BitVec 32) (_ BitVec 32) V!25777 V!25777 (_ BitVec 32) Int) ListLongMap!9175)

(assert (=> bm!37273 (= call!37277 (getCurrentListMapNoExtraKeys!2594 _keys!868 (array!47343 (store (arr!22698 _values!688) i!612 (ValueCellFull!7334 v!557)) (size!23139 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!840944 () Bool)

(declare-fun res!571777 () Bool)

(assert (=> b!840944 (=> (not res!571777) (not e!469190))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!840944 (= res!571777 (validMask!0 mask!1196))))

(declare-fun b!840945 () Bool)

(declare-fun res!571782 () Bool)

(assert (=> b!840945 (=> (not res!571782) (not e!469190))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47340 (_ BitVec 32)) Bool)

(assert (=> b!840945 (= res!571782 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!840946 () Bool)

(declare-fun res!571781 () Bool)

(assert (=> b!840946 (=> (not res!571781) (not e!469190))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!840946 (= res!571781 (validKeyInArray!0 k!854))))

(declare-fun bm!37274 () Bool)

(assert (=> bm!37274 (= call!37276 (getCurrentListMapNoExtraKeys!2594 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapNonEmpty!24920 () Bool)

(declare-fun tp!48143 () Bool)

(declare-fun e!469194 () Bool)

(assert (=> mapNonEmpty!24920 (= mapRes!24920 (and tp!48143 e!469194))))

(declare-fun mapValue!24920 () ValueCell!7334)

(declare-fun mapKey!24920 () (_ BitVec 32))

(declare-fun mapRest!24920 () (Array (_ BitVec 32) ValueCell!7334))

(assert (=> mapNonEmpty!24920 (= (arr!22698 _values!688) (store mapRest!24920 mapKey!24920 mapValue!24920))))

(declare-fun b!840947 () Bool)

(declare-fun res!571775 () Bool)

(assert (=> b!840947 (=> (not res!571775) (not e!469190))))

(assert (=> b!840947 (= res!571775 (and (= (select (arr!22697 _keys!868) i!612) k!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!23138 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun b!840948 () Bool)

(assert (=> b!840948 (= e!469194 tp_is_empty!15547)))

(declare-fun b!840949 () Bool)

(declare-fun res!571780 () Bool)

(assert (=> b!840949 (=> (not res!571780) (not e!469190))))

(assert (=> b!840949 (= res!571780 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23138 _keys!868))))))

(declare-fun b!840950 () Bool)

(assert (=> b!840950 (= e!469190 (not true))))

(assert (=> b!840950 e!469189))

(declare-fun c!91299 () Bool)

(assert (=> b!840950 (= c!91299 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!28882 0))(
  ( (Unit!28883) )
))
(declare-fun lt!380832 () Unit!28882)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!290 (array!47340 array!47342 (_ BitVec 32) (_ BitVec 32) V!25777 V!25777 (_ BitVec 32) (_ BitVec 64) V!25777 (_ BitVec 32) Int) Unit!28882)

(assert (=> b!840950 (= lt!380832 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!290 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!840951 () Bool)

(declare-fun res!571778 () Bool)

(assert (=> b!840951 (=> (not res!571778) (not e!469190))))

(declare-datatypes ((List!16217 0))(
  ( (Nil!16214) (Cons!16213 (h!17344 (_ BitVec 64)) (t!22596 List!16217)) )
))
(declare-fun arrayNoDuplicates!0 (array!47340 (_ BitVec 32) List!16217) Bool)

(assert (=> b!840951 (= res!571778 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16214))))

(declare-fun b!840952 () Bool)

(assert (=> b!840952 (= e!469189 (= call!37277 call!37276))))

(declare-fun b!840953 () Bool)

(assert (=> b!840953 (= e!469193 (and e!469191 mapRes!24920))))

(declare-fun condMapEmpty!24920 () Bool)

(declare-fun mapDefault!24920 () ValueCell!7334)

