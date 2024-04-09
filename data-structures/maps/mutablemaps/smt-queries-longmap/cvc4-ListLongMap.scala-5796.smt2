; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74796 () Bool)

(assert start!74796)

(declare-fun b_free!15371 () Bool)

(declare-fun b_next!15371 () Bool)

(assert (=> start!74796 (= b_free!15371 (not b_next!15371))))

(declare-fun tp!53808 () Bool)

(declare-fun b_and!25411 () Bool)

(assert (=> start!74796 (= tp!53808 b_and!25411)))

(declare-fun b!881309 () Bool)

(declare-fun res!598863 () Bool)

(declare-fun e!490491 () Bool)

(assert (=> b!881309 (=> (not res!598863) (not e!490491))))

(declare-datatypes ((array!51338 0))(
  ( (array!51339 (arr!24687 (Array (_ BitVec 32) (_ BitVec 64))) (size!25128 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51338)

(declare-datatypes ((List!17619 0))(
  ( (Nil!17616) (Cons!17615 (h!18746 (_ BitVec 64)) (t!24800 List!17619)) )
))
(declare-fun arrayNoDuplicates!0 (array!51338 (_ BitVec 32) List!17619) Bool)

(assert (=> b!881309 (= res!598863 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17616))))

(declare-fun b!881310 () Bool)

(declare-fun e!490495 () Bool)

(assert (=> b!881310 (= e!490495 (bvslt (size!25128 _keys!868) #b01111111111111111111111111111111))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!51338 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!881310 (arrayContainsKey!0 _keys!868 k!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-datatypes ((Unit!30052 0))(
  ( (Unit!30053) )
))
(declare-fun lt!398622 () Unit!30052)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!51338 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!30052)

(assert (=> b!881310 (= lt!398622 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(assert (=> b!881310 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17616)))

(declare-fun lt!398625 () Unit!30052)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!51338 (_ BitVec 32) (_ BitVec 32)) Unit!30052)

(assert (=> b!881310 (= lt!398625 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-fun mapNonEmpty!28050 () Bool)

(declare-fun mapRes!28050 () Bool)

(declare-fun tp!53807 () Bool)

(declare-fun e!490497 () Bool)

(assert (=> mapNonEmpty!28050 (= mapRes!28050 (and tp!53807 e!490497))))

(declare-fun mapKey!28050 () (_ BitVec 32))

(declare-datatypes ((V!28533 0))(
  ( (V!28534 (val!8855 Int)) )
))
(declare-datatypes ((ValueCell!8368 0))(
  ( (ValueCellFull!8368 (v!11307 V!28533)) (EmptyCell!8368) )
))
(declare-fun mapValue!28050 () ValueCell!8368)

(declare-fun mapRest!28050 () (Array (_ BitVec 32) ValueCell!8368))

(declare-datatypes ((array!51340 0))(
  ( (array!51341 (arr!24688 (Array (_ BitVec 32) ValueCell!8368)) (size!25129 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51340)

(assert (=> mapNonEmpty!28050 (= (arr!24688 _values!688) (store mapRest!28050 mapKey!28050 mapValue!28050))))

(declare-fun mapIsEmpty!28050 () Bool)

(assert (=> mapIsEmpty!28050 mapRes!28050))

(declare-fun b!881311 () Bool)

(declare-fun res!598865 () Bool)

(assert (=> b!881311 (=> (not res!598865) (not e!490491))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!881311 (= res!598865 (validKeyInArray!0 k!854))))

(declare-fun b!881312 () Bool)

(declare-fun e!490496 () Bool)

(declare-fun tp_is_empty!17615 () Bool)

(assert (=> b!881312 (= e!490496 tp_is_empty!17615)))

(declare-fun b!881313 () Bool)

(declare-fun res!598866 () Bool)

(assert (=> b!881313 (=> (not res!598866) (not e!490491))))

(assert (=> b!881313 (= res!598866 (and (= (select (arr!24687 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!881314 () Bool)

(declare-fun res!598862 () Bool)

(assert (=> b!881314 (=> (not res!598862) (not e!490491))))

(assert (=> b!881314 (= res!598862 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25128 _keys!868))))))

(declare-fun res!598860 () Bool)

(assert (=> start!74796 (=> (not res!598860) (not e!490491))))

(assert (=> start!74796 (= res!598860 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25128 _keys!868))))))

(assert (=> start!74796 e!490491))

(assert (=> start!74796 tp_is_empty!17615))

(assert (=> start!74796 true))

(assert (=> start!74796 tp!53808))

(declare-fun array_inv!19428 (array!51338) Bool)

(assert (=> start!74796 (array_inv!19428 _keys!868)))

(declare-fun e!490493 () Bool)

(declare-fun array_inv!19429 (array!51340) Bool)

(assert (=> start!74796 (and (array_inv!19429 _values!688) e!490493)))

(declare-fun b!881315 () Bool)

(assert (=> b!881315 (= e!490497 tp_is_empty!17615)))

(declare-fun b!881316 () Bool)

(declare-fun res!598864 () Bool)

(assert (=> b!881316 (=> (not res!598864) (not e!490491))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51338 (_ BitVec 32)) Bool)

(assert (=> b!881316 (= res!598864 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!881317 () Bool)

(declare-fun e!490494 () Bool)

(declare-fun e!490490 () Bool)

(assert (=> b!881317 (= e!490494 (not e!490490))))

(declare-fun res!598859 () Bool)

(assert (=> b!881317 (=> res!598859 e!490490)))

(assert (=> b!881317 (= res!598859 (not (validKeyInArray!0 (select (arr!24687 _keys!868) from!1053))))))

(declare-datatypes ((tuple2!11750 0))(
  ( (tuple2!11751 (_1!5885 (_ BitVec 64)) (_2!5885 V!28533)) )
))
(declare-datatypes ((List!17620 0))(
  ( (Nil!17617) (Cons!17616 (h!18747 tuple2!11750) (t!24801 List!17620)) )
))
(declare-datatypes ((ListLongMap!10533 0))(
  ( (ListLongMap!10534 (toList!5282 List!17620)) )
))
(declare-fun lt!398626 () ListLongMap!10533)

(declare-fun lt!398628 () ListLongMap!10533)

(assert (=> b!881317 (= lt!398626 lt!398628)))

(declare-fun lt!398627 () ListLongMap!10533)

(declare-fun v!557 () V!28533)

(declare-fun +!2488 (ListLongMap!10533 tuple2!11750) ListLongMap!10533)

(assert (=> b!881317 (= lt!398628 (+!2488 lt!398627 (tuple2!11751 k!854 v!557)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun lt!398620 () array!51340)

(declare-fun minValue!654 () V!28533)

(declare-fun zeroValue!654 () V!28533)

(declare-fun getCurrentListMapNoExtraKeys!3242 (array!51338 array!51340 (_ BitVec 32) (_ BitVec 32) V!28533 V!28533 (_ BitVec 32) Int) ListLongMap!10533)

(assert (=> b!881317 (= lt!398626 (getCurrentListMapNoExtraKeys!3242 _keys!868 lt!398620 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!881317 (= lt!398627 (getCurrentListMapNoExtraKeys!3242 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!398621 () Unit!30052)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!717 (array!51338 array!51340 (_ BitVec 32) (_ BitVec 32) V!28533 V!28533 (_ BitVec 32) (_ BitVec 64) V!28533 (_ BitVec 32) Int) Unit!30052)

(assert (=> b!881317 (= lt!398621 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!717 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!881318 () Bool)

(assert (=> b!881318 (= e!490490 e!490495)))

(declare-fun res!598867 () Bool)

(assert (=> b!881318 (=> res!598867 e!490495)))

(assert (=> b!881318 (= res!598867 (not (= (select (arr!24687 _keys!868) from!1053) k!854)))))

(declare-fun lt!398624 () ListLongMap!10533)

(declare-fun get!13005 (ValueCell!8368 V!28533) V!28533)

(declare-fun dynLambda!1250 (Int (_ BitVec 64)) V!28533)

(assert (=> b!881318 (= lt!398624 (+!2488 lt!398628 (tuple2!11751 (select (arr!24687 _keys!868) from!1053) (get!13005 (select (arr!24688 _values!688) from!1053) (dynLambda!1250 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!881319 () Bool)

(declare-fun res!598858 () Bool)

(assert (=> b!881319 (=> (not res!598858) (not e!490491))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!881319 (= res!598858 (validMask!0 mask!1196))))

(declare-fun b!881320 () Bool)

(assert (=> b!881320 (= e!490491 e!490494)))

(declare-fun res!598868 () Bool)

(assert (=> b!881320 (=> (not res!598868) (not e!490494))))

(assert (=> b!881320 (= res!598868 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(assert (=> b!881320 (= lt!398624 (getCurrentListMapNoExtraKeys!3242 _keys!868 lt!398620 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!881320 (= lt!398620 (array!51341 (store (arr!24688 _values!688) i!612 (ValueCellFull!8368 v!557)) (size!25129 _values!688)))))

(declare-fun lt!398623 () ListLongMap!10533)

(assert (=> b!881320 (= lt!398623 (getCurrentListMapNoExtraKeys!3242 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!881321 () Bool)

(assert (=> b!881321 (= e!490493 (and e!490496 mapRes!28050))))

(declare-fun condMapEmpty!28050 () Bool)

(declare-fun mapDefault!28050 () ValueCell!8368)

