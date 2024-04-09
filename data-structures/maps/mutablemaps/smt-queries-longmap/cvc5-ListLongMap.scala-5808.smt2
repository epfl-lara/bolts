; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74948 () Bool)

(assert start!74948)

(declare-fun b_free!15439 () Bool)

(declare-fun b_next!15439 () Bool)

(assert (=> start!74948 (= b_free!15439 (not b_next!15439))))

(declare-fun tp!54021 () Bool)

(declare-fun b_and!25595 () Bool)

(assert (=> start!74948 (= tp!54021 b_and!25595)))

(declare-fun b!883358 () Bool)

(declare-fun res!600251 () Bool)

(declare-fun e!491650 () Bool)

(assert (=> b!883358 (=> (not res!600251) (not e!491650))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!51476 0))(
  ( (array!51477 (arr!24753 (Array (_ BitVec 32) (_ BitVec 64))) (size!25194 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51476)

(declare-datatypes ((V!28625 0))(
  ( (V!28626 (val!8889 Int)) )
))
(declare-datatypes ((ValueCell!8402 0))(
  ( (ValueCellFull!8402 (v!11354 V!28625)) (EmptyCell!8402) )
))
(declare-datatypes ((array!51478 0))(
  ( (array!51479 (arr!24754 (Array (_ BitVec 32) ValueCell!8402)) (size!25195 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51478)

(assert (=> b!883358 (= res!600251 (and (= (size!25195 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25194 _keys!868) (size!25195 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!28161 () Bool)

(declare-fun mapRes!28161 () Bool)

(declare-fun tp!54020 () Bool)

(declare-fun e!491652 () Bool)

(assert (=> mapNonEmpty!28161 (= mapRes!28161 (and tp!54020 e!491652))))

(declare-fun mapValue!28161 () ValueCell!8402)

(declare-fun mapRest!28161 () (Array (_ BitVec 32) ValueCell!8402))

(declare-fun mapKey!28161 () (_ BitVec 32))

(assert (=> mapNonEmpty!28161 (= (arr!24754 _values!688) (store mapRest!28161 mapKey!28161 mapValue!28161))))

(declare-fun b!883359 () Bool)

(declare-fun e!491649 () Bool)

(declare-fun e!491653 () Bool)

(assert (=> b!883359 (= e!491649 (not e!491653))))

(declare-fun res!600255 () Bool)

(assert (=> b!883359 (=> res!600255 e!491653)))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!883359 (= res!600255 (not (validKeyInArray!0 (select (arr!24753 _keys!868) from!1053))))))

(declare-datatypes ((tuple2!11810 0))(
  ( (tuple2!11811 (_1!5915 (_ BitVec 64)) (_2!5915 V!28625)) )
))
(declare-datatypes ((List!17676 0))(
  ( (Nil!17673) (Cons!17672 (h!18803 tuple2!11810) (t!24925 List!17676)) )
))
(declare-datatypes ((ListLongMap!10593 0))(
  ( (ListLongMap!10594 (toList!5312 List!17676)) )
))
(declare-fun lt!399841 () ListLongMap!10593)

(declare-fun lt!399840 () ListLongMap!10593)

(assert (=> b!883359 (= lt!399841 lt!399840)))

(declare-fun v!557 () V!28625)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun lt!399837 () ListLongMap!10593)

(declare-fun +!2516 (ListLongMap!10593 tuple2!11810) ListLongMap!10593)

(assert (=> b!883359 (= lt!399840 (+!2516 lt!399837 (tuple2!11811 k!854 v!557)))))

(declare-fun lt!399847 () array!51478)

(declare-fun defaultEntry!696 () Int)

(declare-fun minValue!654 () V!28625)

(declare-fun zeroValue!654 () V!28625)

(declare-fun getCurrentListMapNoExtraKeys!3269 (array!51476 array!51478 (_ BitVec 32) (_ BitVec 32) V!28625 V!28625 (_ BitVec 32) Int) ListLongMap!10593)

(assert (=> b!883359 (= lt!399841 (getCurrentListMapNoExtraKeys!3269 _keys!868 lt!399847 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!883359 (= lt!399837 (getCurrentListMapNoExtraKeys!3269 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-datatypes ((Unit!30118 0))(
  ( (Unit!30119) )
))
(declare-fun lt!399845 () Unit!30118)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!740 (array!51476 array!51478 (_ BitVec 32) (_ BitVec 32) V!28625 V!28625 (_ BitVec 32) (_ BitVec 64) V!28625 (_ BitVec 32) Int) Unit!30118)

(assert (=> b!883359 (= lt!399845 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!740 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!883360 () Bool)

(assert (=> b!883360 (= e!491650 e!491649)))

(declare-fun res!600247 () Bool)

(assert (=> b!883360 (=> (not res!600247) (not e!491649))))

(assert (=> b!883360 (= res!600247 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!399838 () ListLongMap!10593)

(assert (=> b!883360 (= lt!399838 (getCurrentListMapNoExtraKeys!3269 _keys!868 lt!399847 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!883360 (= lt!399847 (array!51479 (store (arr!24754 _values!688) i!612 (ValueCellFull!8402 v!557)) (size!25195 _values!688)))))

(declare-fun lt!399842 () ListLongMap!10593)

(assert (=> b!883360 (= lt!399842 (getCurrentListMapNoExtraKeys!3269 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun res!600249 () Bool)

(assert (=> start!74948 (=> (not res!600249) (not e!491650))))

(assert (=> start!74948 (= res!600249 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25194 _keys!868))))))

(assert (=> start!74948 e!491650))

(declare-fun tp_is_empty!17683 () Bool)

(assert (=> start!74948 tp_is_empty!17683))

(assert (=> start!74948 true))

(assert (=> start!74948 tp!54021))

(declare-fun array_inv!19470 (array!51476) Bool)

(assert (=> start!74948 (array_inv!19470 _keys!868)))

(declare-fun e!491654 () Bool)

(declare-fun array_inv!19471 (array!51478) Bool)

(assert (=> start!74948 (and (array_inv!19471 _values!688) e!491654)))

(declare-fun b!883361 () Bool)

(declare-fun res!600248 () Bool)

(assert (=> b!883361 (=> (not res!600248) (not e!491650))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!883361 (= res!600248 (validMask!0 mask!1196))))

(declare-fun b!883362 () Bool)

(assert (=> b!883362 (= e!491652 tp_is_empty!17683)))

(declare-fun mapIsEmpty!28161 () Bool)

(assert (=> mapIsEmpty!28161 mapRes!28161))

(declare-fun b!883363 () Bool)

(declare-fun e!491651 () Bool)

(assert (=> b!883363 (= e!491654 (and e!491651 mapRes!28161))))

(declare-fun condMapEmpty!28161 () Bool)

(declare-fun mapDefault!28161 () ValueCell!8402)

