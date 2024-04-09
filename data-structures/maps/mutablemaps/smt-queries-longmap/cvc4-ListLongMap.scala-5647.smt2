; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73698 () Bool)

(assert start!73698)

(declare-fun b_free!14585 () Bool)

(declare-fun b_next!14585 () Bool)

(assert (=> start!73698 (= b_free!14585 (not b_next!14585))))

(declare-fun tp!51260 () Bool)

(declare-fun b_and!24167 () Bool)

(assert (=> start!73698 (= tp!51260 b_and!24167)))

(declare-fun b!862725 () Bool)

(declare-fun e!480672 () Bool)

(declare-fun e!480676 () Bool)

(assert (=> b!862725 (= e!480672 e!480676)))

(declare-fun res!586364 () Bool)

(assert (=> b!862725 (=> res!586364 e!480676)))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!49588 0))(
  ( (array!49589 (arr!23821 (Array (_ BitVec 32) (_ BitVec 64))) (size!24262 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49588)

(assert (=> b!862725 (= res!586364 (= k!854 (select (arr!23821 _keys!868) from!1053)))))

(assert (=> b!862725 (not (= (select (arr!23821 _keys!868) from!1053) k!854))))

(declare-datatypes ((Unit!29440 0))(
  ( (Unit!29441) )
))
(declare-fun lt!389645 () Unit!29440)

(declare-fun e!480673 () Unit!29440)

(assert (=> b!862725 (= lt!389645 e!480673)))

(declare-fun c!92016 () Bool)

(assert (=> b!862725 (= c!92016 (= (select (arr!23821 _keys!868) from!1053) k!854))))

(declare-datatypes ((V!27341 0))(
  ( (V!27342 (val!8408 Int)) )
))
(declare-datatypes ((tuple2!11120 0))(
  ( (tuple2!11121 (_1!5570 (_ BitVec 64)) (_2!5570 V!27341)) )
))
(declare-datatypes ((List!16989 0))(
  ( (Nil!16986) (Cons!16985 (h!18116 tuple2!11120) (t!23848 List!16989)) )
))
(declare-datatypes ((ListLongMap!9903 0))(
  ( (ListLongMap!9904 (toList!4967 List!16989)) )
))
(declare-fun lt!389648 () ListLongMap!9903)

(declare-fun lt!389640 () ListLongMap!9903)

(assert (=> b!862725 (= lt!389648 lt!389640)))

(declare-fun lt!389637 () ListLongMap!9903)

(declare-fun lt!389643 () tuple2!11120)

(declare-fun +!2264 (ListLongMap!9903 tuple2!11120) ListLongMap!9903)

(assert (=> b!862725 (= lt!389640 (+!2264 lt!389637 lt!389643))))

(declare-fun lt!389642 () V!27341)

(assert (=> b!862725 (= lt!389643 (tuple2!11121 (select (arr!23821 _keys!868) from!1053) lt!389642))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((ValueCell!7921 0))(
  ( (ValueCellFull!7921 (v!10829 V!27341)) (EmptyCell!7921) )
))
(declare-datatypes ((array!49590 0))(
  ( (array!49591 (arr!23822 (Array (_ BitVec 32) ValueCell!7921)) (size!24263 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49590)

(declare-fun get!12585 (ValueCell!7921 V!27341) V!27341)

(declare-fun dynLambda!1141 (Int (_ BitVec 64)) V!27341)

(assert (=> b!862725 (= lt!389642 (get!12585 (select (arr!23822 _values!688) from!1053) (dynLambda!1141 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!862726 () Bool)

(declare-fun res!586373 () Bool)

(declare-fun e!480674 () Bool)

(assert (=> b!862726 (=> (not res!586373) (not e!480674))))

(declare-datatypes ((List!16990 0))(
  ( (Nil!16987) (Cons!16986 (h!18117 (_ BitVec 64)) (t!23849 List!16990)) )
))
(declare-fun arrayNoDuplicates!0 (array!49588 (_ BitVec 32) List!16990) Bool)

(assert (=> b!862726 (= res!586373 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16987))))

(declare-fun mapIsEmpty!26681 () Bool)

(declare-fun mapRes!26681 () Bool)

(assert (=> mapIsEmpty!26681 mapRes!26681))

(declare-fun b!862727 () Bool)

(declare-fun Unit!29442 () Unit!29440)

(assert (=> b!862727 (= e!480673 Unit!29442)))

(declare-fun lt!389639 () Unit!29440)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49588 (_ BitVec 32) (_ BitVec 32)) Unit!29440)

(assert (=> b!862727 (= lt!389639 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(assert (=> b!862727 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!16987)))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun lt!389641 () Unit!29440)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49588 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29440)

(assert (=> b!862727 (= lt!389641 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49588 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!862727 (arrayContainsKey!0 _keys!868 k!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!389636 () Unit!29440)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49588 (_ BitVec 64) (_ BitVec 32) List!16990) Unit!29440)

(assert (=> b!862727 (= lt!389636 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k!854 from!1053 Nil!16987))))

(assert (=> b!862727 false))

(declare-fun b!862728 () Bool)

(declare-fun res!586367 () Bool)

(assert (=> b!862728 (=> (not res!586367) (not e!480674))))

(assert (=> b!862728 (= res!586367 (and (= (select (arr!23821 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!862729 () Bool)

(assert (=> b!862729 (= e!480676 true)))

(declare-fun lt!389649 () ListLongMap!9903)

(declare-fun lt!389635 () tuple2!11120)

(assert (=> b!862729 (= lt!389640 (+!2264 (+!2264 lt!389649 lt!389643) lt!389635))))

(declare-fun lt!389647 () Unit!29440)

(declare-fun v!557 () V!27341)

(declare-fun addCommutativeForDiffKeys!480 (ListLongMap!9903 (_ BitVec 64) V!27341 (_ BitVec 64) V!27341) Unit!29440)

(assert (=> b!862729 (= lt!389647 (addCommutativeForDiffKeys!480 lt!389649 k!854 v!557 (select (arr!23821 _keys!868) from!1053) lt!389642))))

(declare-fun b!862730 () Bool)

(declare-fun res!586374 () Bool)

(assert (=> b!862730 (=> (not res!586374) (not e!480674))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!862730 (= res!586374 (validMask!0 mask!1196))))

(declare-fun b!862732 () Bool)

(declare-fun e!480675 () Bool)

(declare-fun e!480677 () Bool)

(assert (=> b!862732 (= e!480675 (and e!480677 mapRes!26681))))

(declare-fun condMapEmpty!26681 () Bool)

(declare-fun mapDefault!26681 () ValueCell!7921)

