; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73776 () Bool)

(assert start!73776)

(declare-fun b_free!14663 () Bool)

(declare-fun b_next!14663 () Bool)

(assert (=> start!73776 (= b_free!14663 (not b_next!14663))))

(declare-fun tp!51494 () Bool)

(declare-fun b_and!24323 () Bool)

(assert (=> start!73776 (= tp!51494 b_and!24323)))

(declare-fun b!864675 () Bool)

(declare-fun e!481728 () Bool)

(declare-fun tp_is_empty!16799 () Bool)

(assert (=> b!864675 (= e!481728 tp_is_empty!16799)))

(declare-fun b!864676 () Bool)

(declare-fun res!587656 () Bool)

(declare-fun e!481731 () Bool)

(assert (=> b!864676 (=> (not res!587656) (not e!481731))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!864676 (= res!587656 (validKeyInArray!0 k!854))))

(declare-fun b!864677 () Bool)

(declare-fun e!481726 () Bool)

(assert (=> b!864677 (= e!481731 e!481726)))

(declare-fun res!587660 () Bool)

(assert (=> b!864677 (=> (not res!587660) (not e!481726))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!864677 (= res!587660 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-datatypes ((V!27445 0))(
  ( (V!27446 (val!8447 Int)) )
))
(declare-datatypes ((tuple2!11190 0))(
  ( (tuple2!11191 (_1!5605 (_ BitVec 64)) (_2!5605 V!27445)) )
))
(declare-datatypes ((List!17056 0))(
  ( (Nil!17053) (Cons!17052 (h!18183 tuple2!11190) (t!23993 List!17056)) )
))
(declare-datatypes ((ListLongMap!9973 0))(
  ( (ListLongMap!9974 (toList!5002 List!17056)) )
))
(declare-fun lt!391516 () ListLongMap!9973)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((ValueCell!7960 0))(
  ( (ValueCellFull!7960 (v!10868 V!27445)) (EmptyCell!7960) )
))
(declare-datatypes ((array!49742 0))(
  ( (array!49743 (arr!23898 (Array (_ BitVec 32) ValueCell!7960)) (size!24339 (_ BitVec 32))) )
))
(declare-fun lt!391520 () array!49742)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!49744 0))(
  ( (array!49745 (arr!23899 (Array (_ BitVec 32) (_ BitVec 64))) (size!24340 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49744)

(declare-fun minValue!654 () V!27445)

(declare-fun zeroValue!654 () V!27445)

(declare-fun getCurrentListMapNoExtraKeys!2974 (array!49744 array!49742 (_ BitVec 32) (_ BitVec 32) V!27445 V!27445 (_ BitVec 32) Int) ListLongMap!9973)

(assert (=> b!864677 (= lt!391516 (getCurrentListMapNoExtraKeys!2974 _keys!868 lt!391520 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27445)

(declare-fun _values!688 () array!49742)

(assert (=> b!864677 (= lt!391520 (array!49743 (store (arr!23898 _values!688) i!612 (ValueCellFull!7960 v!557)) (size!24339 _values!688)))))

(declare-fun lt!391521 () ListLongMap!9973)

(assert (=> b!864677 (= lt!391521 (getCurrentListMapNoExtraKeys!2974 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!864678 () Bool)

(declare-fun res!587651 () Bool)

(assert (=> b!864678 (=> (not res!587651) (not e!481731))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!864678 (= res!587651 (validMask!0 mask!1196))))

(declare-fun res!587658 () Bool)

(assert (=> start!73776 (=> (not res!587658) (not e!481731))))

(assert (=> start!73776 (= res!587658 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24340 _keys!868))))))

(assert (=> start!73776 e!481731))

(assert (=> start!73776 tp_is_empty!16799))

(assert (=> start!73776 true))

(assert (=> start!73776 tp!51494))

(declare-fun array_inv!18876 (array!49744) Bool)

(assert (=> start!73776 (array_inv!18876 _keys!868)))

(declare-fun e!481729 () Bool)

(declare-fun array_inv!18877 (array!49742) Bool)

(assert (=> start!73776 (and (array_inv!18877 _values!688) e!481729)))

(declare-fun b!864679 () Bool)

(declare-datatypes ((Unit!29564 0))(
  ( (Unit!29565) )
))
(declare-fun e!481725 () Unit!29564)

(declare-fun Unit!29566 () Unit!29564)

(assert (=> b!864679 (= e!481725 Unit!29566)))

(declare-fun b!864680 () Bool)

(declare-fun res!587657 () Bool)

(assert (=> b!864680 (=> (not res!587657) (not e!481731))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49744 (_ BitVec 32)) Bool)

(assert (=> b!864680 (= res!587657 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!864681 () Bool)

(declare-fun res!587654 () Bool)

(assert (=> b!864681 (=> (not res!587654) (not e!481731))))

(assert (=> b!864681 (= res!587654 (and (= (size!24339 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24340 _keys!868) (size!24339 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!864682 () Bool)

(declare-fun e!481723 () Bool)

(assert (=> b!864682 (= e!481723 true)))

(declare-fun lt!391506 () tuple2!11190)

(declare-fun lt!391513 () ListLongMap!9973)

(declare-fun lt!391518 () ListLongMap!9973)

(declare-fun lt!391512 () tuple2!11190)

(declare-fun +!2298 (ListLongMap!9973 tuple2!11190) ListLongMap!9973)

(assert (=> b!864682 (= lt!391518 (+!2298 (+!2298 lt!391513 lt!391506) lt!391512))))

(declare-fun lt!391519 () Unit!29564)

(declare-fun lt!391514 () V!27445)

(declare-fun addCommutativeForDiffKeys!506 (ListLongMap!9973 (_ BitVec 64) V!27445 (_ BitVec 64) V!27445) Unit!29564)

(assert (=> b!864682 (= lt!391519 (addCommutativeForDiffKeys!506 lt!391513 k!854 v!557 (select (arr!23899 _keys!868) from!1053) lt!391514))))

(declare-fun b!864683 () Bool)

(declare-fun res!587655 () Bool)

(assert (=> b!864683 (=> (not res!587655) (not e!481731))))

(assert (=> b!864683 (= res!587655 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24340 _keys!868))))))

(declare-fun b!864684 () Bool)

(declare-fun e!481730 () Bool)

(assert (=> b!864684 (= e!481726 (not e!481730))))

(declare-fun res!587653 () Bool)

(assert (=> b!864684 (=> res!587653 e!481730)))

(assert (=> b!864684 (= res!587653 (not (validKeyInArray!0 (select (arr!23899 _keys!868) from!1053))))))

(declare-fun lt!391510 () ListLongMap!9973)

(declare-fun lt!391517 () ListLongMap!9973)

(assert (=> b!864684 (= lt!391510 lt!391517)))

(assert (=> b!864684 (= lt!391517 (+!2298 lt!391513 lt!391512))))

(assert (=> b!864684 (= lt!391510 (getCurrentListMapNoExtraKeys!2974 _keys!868 lt!391520 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!864684 (= lt!391512 (tuple2!11191 k!854 v!557))))

(assert (=> b!864684 (= lt!391513 (getCurrentListMapNoExtraKeys!2974 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!391507 () Unit!29564)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!540 (array!49744 array!49742 (_ BitVec 32) (_ BitVec 32) V!27445 V!27445 (_ BitVec 32) (_ BitVec 64) V!27445 (_ BitVec 32) Int) Unit!29564)

(assert (=> b!864684 (= lt!391507 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!540 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!864685 () Bool)

(assert (=> b!864685 (= e!481730 e!481723)))

(declare-fun res!587659 () Bool)

(assert (=> b!864685 (=> res!587659 e!481723)))

(assert (=> b!864685 (= res!587659 (= k!854 (select (arr!23899 _keys!868) from!1053)))))

(assert (=> b!864685 (not (= (select (arr!23899 _keys!868) from!1053) k!854))))

(declare-fun lt!391508 () Unit!29564)

(assert (=> b!864685 (= lt!391508 e!481725)))

(declare-fun c!92133 () Bool)

(assert (=> b!864685 (= c!92133 (= (select (arr!23899 _keys!868) from!1053) k!854))))

(assert (=> b!864685 (= lt!391516 lt!391518)))

(assert (=> b!864685 (= lt!391518 (+!2298 lt!391517 lt!391506))))

(assert (=> b!864685 (= lt!391506 (tuple2!11191 (select (arr!23899 _keys!868) from!1053) lt!391514))))

(declare-fun get!12638 (ValueCell!7960 V!27445) V!27445)

(declare-fun dynLambda!1168 (Int (_ BitVec 64)) V!27445)

(assert (=> b!864685 (= lt!391514 (get!12638 (select (arr!23898 _values!688) from!1053) (dynLambda!1168 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!864686 () Bool)

(declare-fun res!587652 () Bool)

(assert (=> b!864686 (=> (not res!587652) (not e!481731))))

(declare-datatypes ((List!17057 0))(
  ( (Nil!17054) (Cons!17053 (h!18184 (_ BitVec 64)) (t!23994 List!17057)) )
))
(declare-fun arrayNoDuplicates!0 (array!49744 (_ BitVec 32) List!17057) Bool)

(assert (=> b!864686 (= res!587652 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17054))))

(declare-fun b!864687 () Bool)

(declare-fun res!587661 () Bool)

(assert (=> b!864687 (=> (not res!587661) (not e!481731))))

(assert (=> b!864687 (= res!587661 (and (= (select (arr!23899 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!864688 () Bool)

(declare-fun Unit!29567 () Unit!29564)

(assert (=> b!864688 (= e!481725 Unit!29567)))

(declare-fun lt!391511 () Unit!29564)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49744 (_ BitVec 32) (_ BitVec 32)) Unit!29564)

(assert (=> b!864688 (= lt!391511 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(assert (=> b!864688 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17054)))

(declare-fun lt!391515 () Unit!29564)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49744 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29564)

(assert (=> b!864688 (= lt!391515 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49744 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!864688 (arrayContainsKey!0 _keys!868 k!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!391509 () Unit!29564)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49744 (_ BitVec 64) (_ BitVec 32) List!17057) Unit!29564)

(assert (=> b!864688 (= lt!391509 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k!854 from!1053 Nil!17054))))

(assert (=> b!864688 false))

(declare-fun b!864689 () Bool)

(declare-fun e!481727 () Bool)

(declare-fun mapRes!26798 () Bool)

(assert (=> b!864689 (= e!481729 (and e!481727 mapRes!26798))))

(declare-fun condMapEmpty!26798 () Bool)

(declare-fun mapDefault!26798 () ValueCell!7960)

