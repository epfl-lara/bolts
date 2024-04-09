; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74958 () Bool)

(assert start!74958)

(declare-fun b_free!15449 () Bool)

(declare-fun b_next!15449 () Bool)

(assert (=> start!74958 (= b_free!15449 (not b_next!15449))))

(declare-fun tp!54051 () Bool)

(declare-fun b_and!25615 () Bool)

(assert (=> start!74958 (= tp!54051 b_and!25615)))

(declare-fun b!883593 () Bool)

(declare-fun res!600405 () Bool)

(declare-fun e!491770 () Bool)

(assert (=> b!883593 (=> (not res!600405) (not e!491770))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!51496 0))(
  ( (array!51497 (arr!24763 (Array (_ BitVec 32) (_ BitVec 64))) (size!25204 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51496)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!883593 (= res!600405 (and (= (select (arr!24763 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!883594 () Bool)

(declare-datatypes ((Unit!30133 0))(
  ( (Unit!30134) )
))
(declare-fun e!491767 () Unit!30133)

(declare-fun Unit!30135 () Unit!30133)

(assert (=> b!883594 (= e!491767 Unit!30135)))

(declare-fun lt!400004 () Unit!30133)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!51496 (_ BitVec 32) (_ BitVec 32)) Unit!30133)

(assert (=> b!883594 (= lt!400004 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-datatypes ((List!17683 0))(
  ( (Nil!17680) (Cons!17679 (h!18810 (_ BitVec 64)) (t!24942 List!17683)) )
))
(declare-fun arrayNoDuplicates!0 (array!51496 (_ BitVec 32) List!17683) Bool)

(assert (=> b!883594 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17680)))

(declare-fun lt!400008 () Unit!30133)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!51496 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!30133)

(assert (=> b!883594 (= lt!400008 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!51496 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!883594 (arrayContainsKey!0 _keys!868 k!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!400012 () Unit!30133)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!51496 (_ BitVec 64) (_ BitVec 32) List!17683) Unit!30133)

(assert (=> b!883594 (= lt!400012 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k!854 from!1053 Nil!17680))))

(assert (=> b!883594 false))

(declare-fun b!883595 () Bool)

(declare-fun e!491768 () Bool)

(declare-fun tp_is_empty!17693 () Bool)

(assert (=> b!883595 (= e!491768 tp_is_empty!17693)))

(declare-fun b!883596 () Bool)

(declare-fun res!600399 () Bool)

(assert (=> b!883596 (=> (not res!600399) (not e!491770))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!883596 (= res!600399 (validKeyInArray!0 k!854))))

(declare-fun b!883597 () Bool)

(declare-fun e!491773 () Bool)

(declare-datatypes ((V!28637 0))(
  ( (V!28638 (val!8894 Int)) )
))
(declare-datatypes ((ValueCell!8407 0))(
  ( (ValueCellFull!8407 (v!11359 V!28637)) (EmptyCell!8407) )
))
(declare-datatypes ((array!51498 0))(
  ( (array!51499 (arr!24764 (Array (_ BitVec 32) ValueCell!8407)) (size!25205 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51498)

(assert (=> b!883597 (= e!491773 (bvslt from!1053 (size!25205 _values!688)))))

(assert (=> b!883597 (not (= (select (arr!24763 _keys!868) from!1053) k!854))))

(declare-fun lt!400007 () Unit!30133)

(assert (=> b!883597 (= lt!400007 e!491767)))

(declare-fun c!92997 () Bool)

(assert (=> b!883597 (= c!92997 (= (select (arr!24763 _keys!868) from!1053) k!854))))

(declare-datatypes ((tuple2!11820 0))(
  ( (tuple2!11821 (_1!5920 (_ BitVec 64)) (_2!5920 V!28637)) )
))
(declare-datatypes ((List!17684 0))(
  ( (Nil!17681) (Cons!17680 (h!18811 tuple2!11820) (t!24943 List!17684)) )
))
(declare-datatypes ((ListLongMap!10603 0))(
  ( (ListLongMap!10604 (toList!5317 List!17684)) )
))
(declare-fun lt!400003 () ListLongMap!10603)

(declare-fun defaultEntry!696 () Int)

(declare-fun lt!400005 () ListLongMap!10603)

(declare-fun +!2521 (ListLongMap!10603 tuple2!11820) ListLongMap!10603)

(declare-fun get!13062 (ValueCell!8407 V!28637) V!28637)

(declare-fun dynLambda!1275 (Int (_ BitVec 64)) V!28637)

(assert (=> b!883597 (= lt!400005 (+!2521 lt!400003 (tuple2!11821 (select (arr!24763 _keys!868) from!1053) (get!13062 (select (arr!24764 _values!688) from!1053) (dynLambda!1275 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun mapNonEmpty!28176 () Bool)

(declare-fun mapRes!28176 () Bool)

(declare-fun tp!54050 () Bool)

(assert (=> mapNonEmpty!28176 (= mapRes!28176 (and tp!54050 e!491768))))

(declare-fun mapValue!28176 () ValueCell!8407)

(declare-fun mapRest!28176 () (Array (_ BitVec 32) ValueCell!8407))

(declare-fun mapKey!28176 () (_ BitVec 32))

(assert (=> mapNonEmpty!28176 (= (arr!24764 _values!688) (store mapRest!28176 mapKey!28176 mapValue!28176))))

(declare-fun b!883598 () Bool)

(declare-fun res!600398 () Bool)

(assert (=> b!883598 (=> (not res!600398) (not e!491770))))

(assert (=> b!883598 (= res!600398 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17680))))

(declare-fun b!883600 () Bool)

(declare-fun res!600402 () Bool)

(assert (=> b!883600 (=> (not res!600402) (not e!491770))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(assert (=> b!883600 (= res!600402 (and (= (size!25205 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25204 _keys!868) (size!25205 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!883601 () Bool)

(declare-fun res!600401 () Bool)

(assert (=> b!883601 (=> (not res!600401) (not e!491770))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!883601 (= res!600401 (validMask!0 mask!1196))))

(declare-fun b!883602 () Bool)

(declare-fun Unit!30136 () Unit!30133)

(assert (=> b!883602 (= e!491767 Unit!30136)))

(declare-fun b!883603 () Bool)

(declare-fun e!491774 () Bool)

(assert (=> b!883603 (= e!491774 (not e!491773))))

(declare-fun res!600397 () Bool)

(assert (=> b!883603 (=> res!600397 e!491773)))

(assert (=> b!883603 (= res!600397 (not (validKeyInArray!0 (select (arr!24763 _keys!868) from!1053))))))

(declare-fun lt!400009 () ListLongMap!10603)

(assert (=> b!883603 (= lt!400009 lt!400003)))

(declare-fun lt!400010 () ListLongMap!10603)

(declare-fun v!557 () V!28637)

(assert (=> b!883603 (= lt!400003 (+!2521 lt!400010 (tuple2!11821 k!854 v!557)))))

(declare-fun lt!400011 () array!51498)

(declare-fun minValue!654 () V!28637)

(declare-fun zeroValue!654 () V!28637)

(declare-fun getCurrentListMapNoExtraKeys!3272 (array!51496 array!51498 (_ BitVec 32) (_ BitVec 32) V!28637 V!28637 (_ BitVec 32) Int) ListLongMap!10603)

(assert (=> b!883603 (= lt!400009 (getCurrentListMapNoExtraKeys!3272 _keys!868 lt!400011 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!883603 (= lt!400010 (getCurrentListMapNoExtraKeys!3272 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!400002 () Unit!30133)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!743 (array!51496 array!51498 (_ BitVec 32) (_ BitVec 32) V!28637 V!28637 (_ BitVec 32) (_ BitVec 64) V!28637 (_ BitVec 32) Int) Unit!30133)

(assert (=> b!883603 (= lt!400002 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!743 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!883604 () Bool)

(assert (=> b!883604 (= e!491770 e!491774)))

(declare-fun res!600400 () Bool)

(assert (=> b!883604 (=> (not res!600400) (not e!491774))))

(assert (=> b!883604 (= res!600400 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(assert (=> b!883604 (= lt!400005 (getCurrentListMapNoExtraKeys!3272 _keys!868 lt!400011 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!883604 (= lt!400011 (array!51499 (store (arr!24764 _values!688) i!612 (ValueCellFull!8407 v!557)) (size!25205 _values!688)))))

(declare-fun lt!400006 () ListLongMap!10603)

(assert (=> b!883604 (= lt!400006 (getCurrentListMapNoExtraKeys!3272 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun mapIsEmpty!28176 () Bool)

(assert (=> mapIsEmpty!28176 mapRes!28176))

(declare-fun b!883605 () Bool)

(declare-fun res!600403 () Bool)

(assert (=> b!883605 (=> (not res!600403) (not e!491770))))

(assert (=> b!883605 (= res!600403 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25204 _keys!868))))))

(declare-fun b!883606 () Bool)

(declare-fun e!491771 () Bool)

(assert (=> b!883606 (= e!491771 tp_is_empty!17693)))

(declare-fun b!883607 () Bool)

(declare-fun e!491769 () Bool)

(assert (=> b!883607 (= e!491769 (and e!491771 mapRes!28176))))

(declare-fun condMapEmpty!28176 () Bool)

(declare-fun mapDefault!28176 () ValueCell!8407)

