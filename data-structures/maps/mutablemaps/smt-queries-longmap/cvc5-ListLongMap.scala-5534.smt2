; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73016 () Bool)

(assert start!73016)

(declare-fun b_free!13903 () Bool)

(declare-fun b_next!13903 () Bool)

(assert (=> start!73016 (= b_free!13903 (not b_next!13903))))

(declare-fun tp!49214 () Bool)

(declare-fun b_and!23007 () Bool)

(assert (=> start!73016 (= tp!49214 b_and!23007)))

(declare-fun b!847774 () Bool)

(declare-fun res!576108 () Bool)

(declare-fun e!473076 () Bool)

(assert (=> b!847774 (=> (not res!576108) (not e!473076))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!847774 (= res!576108 (validMask!0 mask!1196))))

(declare-fun b!847775 () Bool)

(declare-fun e!473071 () Bool)

(assert (=> b!847775 (= e!473071 (not true))))

(declare-fun e!473074 () Bool)

(assert (=> b!847775 e!473074))

(declare-fun c!91443 () Bool)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!847775 (= c!91443 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!48270 0))(
  ( (array!48271 (arr!23162 (Array (_ BitVec 32) (_ BitVec 64))) (size!23603 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48270)

(declare-datatypes ((V!26433 0))(
  ( (V!26434 (val!8067 Int)) )
))
(declare-datatypes ((ValueCell!7580 0))(
  ( (ValueCellFull!7580 (v!10488 V!26433)) (EmptyCell!7580) )
))
(declare-datatypes ((array!48272 0))(
  ( (array!48273 (arr!23163 (Array (_ BitVec 32) ValueCell!7580)) (size!23604 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48272)

(declare-fun minValue!654 () V!26433)

(declare-fun zeroValue!654 () V!26433)

(declare-datatypes ((Unit!28936 0))(
  ( (Unit!28937) )
))
(declare-fun lt!381820 () Unit!28936)

(declare-fun v!557 () V!26433)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!317 (array!48270 array!48272 (_ BitVec 32) (_ BitVec 32) V!26433 V!26433 (_ BitVec 32) (_ BitVec 64) V!26433 (_ BitVec 32) Int) Unit!28936)

(assert (=> b!847775 (= lt!381820 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!317 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun res!576107 () Bool)

(assert (=> start!73016 (=> (not res!576107) (not e!473076))))

(assert (=> start!73016 (= res!576107 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23603 _keys!868))))))

(assert (=> start!73016 e!473076))

(declare-fun tp_is_empty!16039 () Bool)

(assert (=> start!73016 tp_is_empty!16039))

(assert (=> start!73016 true))

(assert (=> start!73016 tp!49214))

(declare-fun array_inv!18374 (array!48270) Bool)

(assert (=> start!73016 (array_inv!18374 _keys!868)))

(declare-fun e!473075 () Bool)

(declare-fun array_inv!18375 (array!48272) Bool)

(assert (=> start!73016 (and (array_inv!18375 _values!688) e!473075)))

(declare-datatypes ((tuple2!10556 0))(
  ( (tuple2!10557 (_1!5288 (_ BitVec 64)) (_2!5288 V!26433)) )
))
(declare-datatypes ((List!16465 0))(
  ( (Nil!16462) (Cons!16461 (h!17592 tuple2!10556) (t!22844 List!16465)) )
))
(declare-datatypes ((ListLongMap!9339 0))(
  ( (ListLongMap!9340 (toList!4685 List!16465)) )
))
(declare-fun call!37565 () ListLongMap!9339)

(declare-fun lt!381821 () array!48272)

(declare-fun bm!37561 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!2674 (array!48270 array!48272 (_ BitVec 32) (_ BitVec 32) V!26433 V!26433 (_ BitVec 32) Int) ListLongMap!9339)

(assert (=> bm!37561 (= call!37565 (getCurrentListMapNoExtraKeys!2674 _keys!868 lt!381821 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapIsEmpty!25658 () Bool)

(declare-fun mapRes!25658 () Bool)

(assert (=> mapIsEmpty!25658 mapRes!25658))

(declare-fun call!37564 () ListLongMap!9339)

(declare-fun b!847776 () Bool)

(declare-fun +!2040 (ListLongMap!9339 tuple2!10556) ListLongMap!9339)

(assert (=> b!847776 (= e!473074 (= call!37565 (+!2040 call!37564 (tuple2!10557 k!854 v!557))))))

(declare-fun b!847777 () Bool)

(declare-fun res!576110 () Bool)

(assert (=> b!847777 (=> (not res!576110) (not e!473076))))

(declare-datatypes ((List!16466 0))(
  ( (Nil!16463) (Cons!16462 (h!17593 (_ BitVec 64)) (t!22845 List!16466)) )
))
(declare-fun arrayNoDuplicates!0 (array!48270 (_ BitVec 32) List!16466) Bool)

(assert (=> b!847777 (= res!576110 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16463))))

(declare-fun b!847778 () Bool)

(declare-fun res!576114 () Bool)

(assert (=> b!847778 (=> (not res!576114) (not e!473076))))

(assert (=> b!847778 (= res!576114 (and (= (size!23604 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23603 _keys!868) (size!23604 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!847779 () Bool)

(declare-fun res!576106 () Bool)

(assert (=> b!847779 (=> (not res!576106) (not e!473076))))

(assert (=> b!847779 (= res!576106 (and (= (select (arr!23162 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!847780 () Bool)

(declare-fun e!473072 () Bool)

(assert (=> b!847780 (= e!473075 (and e!473072 mapRes!25658))))

(declare-fun condMapEmpty!25658 () Bool)

(declare-fun mapDefault!25658 () ValueCell!7580)

