; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73176 () Bool)

(assert start!73176)

(declare-fun b_free!14063 () Bool)

(declare-fun b_next!14063 () Bool)

(assert (=> start!73176 (= b_free!14063 (not b_next!14063))))

(declare-fun tp!49694 () Bool)

(declare-fun b_and!23303 () Bool)

(assert (=> start!73176 (= tp!49694 b_and!23303)))

(declare-fun b!851485 () Bool)

(declare-fun res!578486 () Bool)

(declare-fun e!474969 () Bool)

(assert (=> b!851485 (=> (not res!578486) (not e!474969))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!48586 0))(
  ( (array!48587 (arr!23320 (Array (_ BitVec 32) (_ BitVec 64))) (size!23761 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48586)

(assert (=> b!851485 (= res!578486 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23761 _keys!868))))))

(declare-fun b!851486 () Bool)

(declare-fun res!578483 () Bool)

(assert (=> b!851486 (=> (not res!578483) (not e!474969))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!851486 (= res!578483 (validKeyInArray!0 k!854))))

(declare-fun b!851487 () Bool)

(declare-fun e!474972 () Bool)

(declare-fun e!474971 () Bool)

(assert (=> b!851487 (= e!474972 (not e!474971))))

(declare-fun res!578490 () Bool)

(assert (=> b!851487 (=> res!578490 e!474971)))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!851487 (= res!578490 (not (validKeyInArray!0 (select (arr!23320 _keys!868) from!1053))))))

(declare-fun e!474967 () Bool)

(assert (=> b!851487 e!474967))

(declare-fun c!91683 () Bool)

(assert (=> b!851487 (= c!91683 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((V!26645 0))(
  ( (V!26646 (val!8147 Int)) )
))
(declare-fun v!557 () V!26645)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((ValueCell!7660 0))(
  ( (ValueCellFull!7660 (v!10568 V!26645)) (EmptyCell!7660) )
))
(declare-datatypes ((array!48588 0))(
  ( (array!48589 (arr!23321 (Array (_ BitVec 32) ValueCell!7660)) (size!23762 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48588)

(declare-fun minValue!654 () V!26645)

(declare-fun zeroValue!654 () V!26645)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((Unit!29048 0))(
  ( (Unit!29049) )
))
(declare-fun lt!383530 () Unit!29048)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!368 (array!48586 array!48588 (_ BitVec 32) (_ BitVec 32) V!26645 V!26645 (_ BitVec 32) (_ BitVec 64) V!26645 (_ BitVec 32) Int) Unit!29048)

(assert (=> b!851487 (= lt!383530 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!368 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!851488 () Bool)

(declare-fun res!578481 () Bool)

(assert (=> b!851488 (=> (not res!578481) (not e!474969))))

(assert (=> b!851488 (= res!578481 (and (= (select (arr!23320 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-datatypes ((tuple2!10704 0))(
  ( (tuple2!10705 (_1!5362 (_ BitVec 64)) (_2!5362 V!26645)) )
))
(declare-datatypes ((List!16590 0))(
  ( (Nil!16587) (Cons!16586 (h!17717 tuple2!10704) (t!23107 List!16590)) )
))
(declare-datatypes ((ListLongMap!9487 0))(
  ( (ListLongMap!9488 (toList!4759 List!16590)) )
))
(declare-fun call!38045 () ListLongMap!9487)

(declare-fun call!38044 () ListLongMap!9487)

(declare-fun b!851489 () Bool)

(declare-fun +!2101 (ListLongMap!9487 tuple2!10704) ListLongMap!9487)

(assert (=> b!851489 (= e!474967 (= call!38044 (+!2101 call!38045 (tuple2!10705 k!854 v!557))))))

(declare-fun b!851490 () Bool)

(declare-fun e!474966 () Bool)

(declare-fun tp_is_empty!16199 () Bool)

(assert (=> b!851490 (= e!474966 tp_is_empty!16199)))

(declare-fun b!851491 () Bool)

(declare-fun res!578489 () Bool)

(assert (=> b!851491 (=> (not res!578489) (not e!474969))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48586 (_ BitVec 32)) Bool)

(assert (=> b!851491 (= res!578489 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapIsEmpty!25898 () Bool)

(declare-fun mapRes!25898 () Bool)

(assert (=> mapIsEmpty!25898 mapRes!25898))

(declare-fun b!851492 () Bool)

(assert (=> b!851492 (= e!474971 true)))

(declare-fun lt!383531 () ListLongMap!9487)

(declare-fun lt!383534 () V!26645)

(declare-fun lt!383538 () tuple2!10704)

(assert (=> b!851492 (= (+!2101 lt!383531 lt!383538) (+!2101 (+!2101 lt!383531 (tuple2!10705 k!854 lt!383534)) lt!383538))))

(declare-fun lt!383529 () V!26645)

(assert (=> b!851492 (= lt!383538 (tuple2!10705 k!854 lt!383529))))

(declare-fun lt!383532 () Unit!29048)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!285 (ListLongMap!9487 (_ BitVec 64) V!26645 V!26645) Unit!29048)

(assert (=> b!851492 (= lt!383532 (addSameAsAddTwiceSameKeyDiffValues!285 lt!383531 k!854 lt!383534 lt!383529))))

(declare-fun lt!383537 () V!26645)

(declare-fun get!12303 (ValueCell!7660 V!26645) V!26645)

(assert (=> b!851492 (= lt!383534 (get!12303 (select (arr!23321 _values!688) from!1053) lt!383537))))

(declare-fun lt!383535 () ListLongMap!9487)

(assert (=> b!851492 (= lt!383535 (+!2101 lt!383531 (tuple2!10705 (select (arr!23320 _keys!868) from!1053) lt!383529)))))

(assert (=> b!851492 (= lt!383529 (get!12303 (select (store (arr!23321 _values!688) i!612 (ValueCellFull!7660 v!557)) from!1053) lt!383537))))

(declare-fun dynLambda!1033 (Int (_ BitVec 64)) V!26645)

(assert (=> b!851492 (= lt!383537 (dynLambda!1033 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!383533 () array!48588)

(declare-fun getCurrentListMapNoExtraKeys!2744 (array!48586 array!48588 (_ BitVec 32) (_ BitVec 32) V!26645 V!26645 (_ BitVec 32) Int) ListLongMap!9487)

(assert (=> b!851492 (= lt!383531 (getCurrentListMapNoExtraKeys!2744 _keys!868 lt!383533 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapNonEmpty!25898 () Bool)

(declare-fun tp!49693 () Bool)

(declare-fun e!474970 () Bool)

(assert (=> mapNonEmpty!25898 (= mapRes!25898 (and tp!49693 e!474970))))

(declare-fun mapRest!25898 () (Array (_ BitVec 32) ValueCell!7660))

(declare-fun mapValue!25898 () ValueCell!7660)

(declare-fun mapKey!25898 () (_ BitVec 32))

(assert (=> mapNonEmpty!25898 (= (arr!23321 _values!688) (store mapRest!25898 mapKey!25898 mapValue!25898))))

(declare-fun res!578484 () Bool)

(assert (=> start!73176 (=> (not res!578484) (not e!474969))))

(assert (=> start!73176 (= res!578484 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23761 _keys!868))))))

(assert (=> start!73176 e!474969))

(assert (=> start!73176 tp_is_empty!16199))

(assert (=> start!73176 true))

(assert (=> start!73176 tp!49694))

(declare-fun array_inv!18488 (array!48586) Bool)

(assert (=> start!73176 (array_inv!18488 _keys!868)))

(declare-fun e!474968 () Bool)

(declare-fun array_inv!18489 (array!48588) Bool)

(assert (=> start!73176 (and (array_inv!18489 _values!688) e!474968)))

(declare-fun bm!38041 () Bool)

(assert (=> bm!38041 (= call!38044 (getCurrentListMapNoExtraKeys!2744 _keys!868 lt!383533 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!851493 () Bool)

(declare-fun res!578487 () Bool)

(assert (=> b!851493 (=> (not res!578487) (not e!474969))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!851493 (= res!578487 (validMask!0 mask!1196))))

(declare-fun b!851494 () Bool)

(assert (=> b!851494 (= e!474969 e!474972)))

(declare-fun res!578488 () Bool)

(assert (=> b!851494 (=> (not res!578488) (not e!474972))))

(assert (=> b!851494 (= res!578488 (= from!1053 i!612))))

(assert (=> b!851494 (= lt!383535 (getCurrentListMapNoExtraKeys!2744 _keys!868 lt!383533 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!851494 (= lt!383533 (array!48589 (store (arr!23321 _values!688) i!612 (ValueCellFull!7660 v!557)) (size!23762 _values!688)))))

(declare-fun lt!383536 () ListLongMap!9487)

(assert (=> b!851494 (= lt!383536 (getCurrentListMapNoExtraKeys!2744 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!851495 () Bool)

(declare-fun res!578482 () Bool)

(assert (=> b!851495 (=> (not res!578482) (not e!474969))))

(declare-datatypes ((List!16591 0))(
  ( (Nil!16588) (Cons!16587 (h!17718 (_ BitVec 64)) (t!23108 List!16591)) )
))
(declare-fun arrayNoDuplicates!0 (array!48586 (_ BitVec 32) List!16591) Bool)

(assert (=> b!851495 (= res!578482 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16588))))

(declare-fun bm!38042 () Bool)

(assert (=> bm!38042 (= call!38045 (getCurrentListMapNoExtraKeys!2744 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!851496 () Bool)

(assert (=> b!851496 (= e!474970 tp_is_empty!16199)))

(declare-fun b!851497 () Bool)

(assert (=> b!851497 (= e!474967 (= call!38044 call!38045))))

(declare-fun b!851498 () Bool)

(declare-fun res!578485 () Bool)

(assert (=> b!851498 (=> (not res!578485) (not e!474969))))

(assert (=> b!851498 (= res!578485 (and (= (size!23762 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23761 _keys!868) (size!23762 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!851499 () Bool)

(assert (=> b!851499 (= e!474968 (and e!474966 mapRes!25898))))

(declare-fun condMapEmpty!25898 () Bool)

(declare-fun mapDefault!25898 () ValueCell!7660)

