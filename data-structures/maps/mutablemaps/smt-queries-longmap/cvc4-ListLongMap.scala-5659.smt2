; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73770 () Bool)

(assert start!73770)

(declare-fun b_free!14657 () Bool)

(declare-fun b_next!14657 () Bool)

(assert (=> start!73770 (= b_free!14657 (not b_next!14657))))

(declare-fun tp!51476 () Bool)

(declare-fun b_and!24311 () Bool)

(assert (=> start!73770 (= tp!51476 b_and!24311)))

(declare-fun mapIsEmpty!26789 () Bool)

(declare-fun mapRes!26789 () Bool)

(assert (=> mapIsEmpty!26789 mapRes!26789))

(declare-fun b!864525 () Bool)

(declare-datatypes ((Unit!29553 0))(
  ( (Unit!29554) )
))
(declare-fun e!481644 () Unit!29553)

(declare-fun Unit!29555 () Unit!29553)

(assert (=> b!864525 (= e!481644 Unit!29555)))

(declare-fun lt!391374 () Unit!29553)

(declare-datatypes ((array!49730 0))(
  ( (array!49731 (arr!23892 (Array (_ BitVec 32) (_ BitVec 64))) (size!24333 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49730)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49730 (_ BitVec 32) (_ BitVec 32)) Unit!29553)

(assert (=> b!864525 (= lt!391374 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-datatypes ((List!17050 0))(
  ( (Nil!17047) (Cons!17046 (h!18177 (_ BitVec 64)) (t!23981 List!17050)) )
))
(declare-fun arrayNoDuplicates!0 (array!49730 (_ BitVec 32) List!17050) Bool)

(assert (=> b!864525 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17047)))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun lt!391363 () Unit!29553)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49730 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29553)

(assert (=> b!864525 (= lt!391363 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49730 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!864525 (arrayContainsKey!0 _keys!868 k!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!391362 () Unit!29553)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49730 (_ BitVec 64) (_ BitVec 32) List!17050) Unit!29553)

(assert (=> b!864525 (= lt!391362 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k!854 from!1053 Nil!17047))))

(assert (=> b!864525 false))

(declare-fun b!864526 () Bool)

(declare-fun res!587554 () Bool)

(declare-fun e!481645 () Bool)

(assert (=> b!864526 (=> (not res!587554) (not e!481645))))

(assert (=> b!864526 (= res!587554 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17047))))

(declare-fun b!864527 () Bool)

(declare-fun res!587561 () Bool)

(assert (=> b!864527 (=> (not res!587561) (not e!481645))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!864527 (= res!587561 (validKeyInArray!0 k!854))))

(declare-fun b!864528 () Bool)

(declare-fun res!587558 () Bool)

(assert (=> b!864528 (=> (not res!587558) (not e!481645))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49730 (_ BitVec 32)) Bool)

(assert (=> b!864528 (= res!587558 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!864529 () Bool)

(declare-fun res!587553 () Bool)

(assert (=> b!864529 (=> (not res!587553) (not e!481645))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((V!27437 0))(
  ( (V!27438 (val!8444 Int)) )
))
(declare-datatypes ((ValueCell!7957 0))(
  ( (ValueCellFull!7957 (v!10865 V!27437)) (EmptyCell!7957) )
))
(declare-datatypes ((array!49732 0))(
  ( (array!49733 (arr!23893 (Array (_ BitVec 32) ValueCell!7957)) (size!24334 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49732)

(assert (=> b!864529 (= res!587553 (and (= (size!24334 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24333 _keys!868) (size!24334 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!864530 () Bool)

(declare-fun res!587562 () Bool)

(assert (=> b!864530 (=> (not res!587562) (not e!481645))))

(assert (=> b!864530 (= res!587562 (and (= (select (arr!23892 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!864531 () Bool)

(declare-fun e!481646 () Bool)

(declare-fun tp_is_empty!16793 () Bool)

(assert (=> b!864531 (= e!481646 tp_is_empty!16793)))

(declare-fun b!864532 () Bool)

(declare-fun Unit!29556 () Unit!29553)

(assert (=> b!864532 (= e!481644 Unit!29556)))

(declare-fun b!864533 () Bool)

(declare-fun res!587556 () Bool)

(assert (=> b!864533 (=> (not res!587556) (not e!481645))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!864533 (= res!587556 (validMask!0 mask!1196))))

(declare-fun b!864534 () Bool)

(declare-fun e!481649 () Bool)

(declare-fun e!481642 () Bool)

(assert (=> b!864534 (= e!481649 e!481642)))

(declare-fun res!587555 () Bool)

(assert (=> b!864534 (=> res!587555 e!481642)))

(assert (=> b!864534 (= res!587555 (= k!854 (select (arr!23892 _keys!868) from!1053)))))

(assert (=> b!864534 (not (= (select (arr!23892 _keys!868) from!1053) k!854))))

(declare-fun lt!391376 () Unit!29553)

(assert (=> b!864534 (= lt!391376 e!481644)))

(declare-fun c!92124 () Bool)

(assert (=> b!864534 (= c!92124 (= (select (arr!23892 _keys!868) from!1053) k!854))))

(declare-datatypes ((tuple2!11184 0))(
  ( (tuple2!11185 (_1!5602 (_ BitVec 64)) (_2!5602 V!27437)) )
))
(declare-datatypes ((List!17051 0))(
  ( (Nil!17048) (Cons!17047 (h!18178 tuple2!11184) (t!23982 List!17051)) )
))
(declare-datatypes ((ListLongMap!9967 0))(
  ( (ListLongMap!9968 (toList!4999 List!17051)) )
))
(declare-fun lt!391372 () ListLongMap!9967)

(declare-fun lt!391368 () ListLongMap!9967)

(assert (=> b!864534 (= lt!391372 lt!391368)))

(declare-fun lt!391369 () ListLongMap!9967)

(declare-fun lt!391373 () tuple2!11184)

(declare-fun +!2295 (ListLongMap!9967 tuple2!11184) ListLongMap!9967)

(assert (=> b!864534 (= lt!391368 (+!2295 lt!391369 lt!391373))))

(declare-fun lt!391377 () V!27437)

(assert (=> b!864534 (= lt!391373 (tuple2!11185 (select (arr!23892 _keys!868) from!1053) lt!391377))))

(declare-fun defaultEntry!696 () Int)

(declare-fun get!12633 (ValueCell!7957 V!27437) V!27437)

(declare-fun dynLambda!1165 (Int (_ BitVec 64)) V!27437)

(assert (=> b!864534 (= lt!391377 (get!12633 (select (arr!23893 _values!688) from!1053) (dynLambda!1165 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!864535 () Bool)

(declare-fun e!481643 () Bool)

(assert (=> b!864535 (= e!481643 (and e!481646 mapRes!26789))))

(declare-fun condMapEmpty!26789 () Bool)

(declare-fun mapDefault!26789 () ValueCell!7957)

