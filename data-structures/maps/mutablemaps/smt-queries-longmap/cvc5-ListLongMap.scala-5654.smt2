; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73736 () Bool)

(assert start!73736)

(declare-fun b_free!14623 () Bool)

(declare-fun b_next!14623 () Bool)

(assert (=> start!73736 (= b_free!14623 (not b_next!14623))))

(declare-fun tp!51373 () Bool)

(declare-fun b_and!24243 () Bool)

(assert (=> start!73736 (= tp!51373 b_and!24243)))

(declare-fun b!863675 () Bool)

(declare-fun res!586999 () Bool)

(declare-fun e!481187 () Bool)

(assert (=> b!863675 (=> (not res!586999) (not e!481187))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!49662 0))(
  ( (array!49663 (arr!23858 (Array (_ BitVec 32) (_ BitVec 64))) (size!24299 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49662)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!863675 (= res!586999 (and (= (select (arr!23858 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!863676 () Bool)

(declare-fun e!481191 () Bool)

(declare-fun tp_is_empty!16759 () Bool)

(assert (=> b!863676 (= e!481191 tp_is_empty!16759)))

(declare-fun b!863677 () Bool)

(declare-fun res!586993 () Bool)

(assert (=> b!863677 (=> (not res!586993) (not e!481187))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((V!27393 0))(
  ( (V!27394 (val!8427 Int)) )
))
(declare-datatypes ((ValueCell!7940 0))(
  ( (ValueCellFull!7940 (v!10848 V!27393)) (EmptyCell!7940) )
))
(declare-datatypes ((array!49664 0))(
  ( (array!49665 (arr!23859 (Array (_ BitVec 32) ValueCell!7940)) (size!24300 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49664)

(assert (=> b!863677 (= res!586993 (and (= (size!24300 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24299 _keys!868) (size!24300 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!863678 () Bool)

(declare-fun res!586996 () Bool)

(assert (=> b!863678 (=> (not res!586996) (not e!481187))))

(declare-datatypes ((List!17022 0))(
  ( (Nil!17019) (Cons!17018 (h!18149 (_ BitVec 64)) (t!23919 List!17022)) )
))
(declare-fun arrayNoDuplicates!0 (array!49662 (_ BitVec 32) List!17022) Bool)

(assert (=> b!863678 (= res!586996 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17019))))

(declare-fun b!863679 () Bool)

(declare-datatypes ((Unit!29502 0))(
  ( (Unit!29503) )
))
(declare-fun e!481183 () Unit!29502)

(declare-fun Unit!29504 () Unit!29502)

(assert (=> b!863679 (= e!481183 Unit!29504)))

(declare-fun lt!390553 () Unit!29502)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49662 (_ BitVec 32) (_ BitVec 32)) Unit!29502)

(assert (=> b!863679 (= lt!390553 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(assert (=> b!863679 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17019)))

(declare-fun lt!390556 () Unit!29502)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49662 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29502)

(assert (=> b!863679 (= lt!390556 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49662 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!863679 (arrayContainsKey!0 _keys!868 k!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!390555 () Unit!29502)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49662 (_ BitVec 64) (_ BitVec 32) List!17022) Unit!29502)

(assert (=> b!863679 (= lt!390555 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k!854 from!1053 Nil!17019))))

(assert (=> b!863679 false))

(declare-fun b!863680 () Bool)

(declare-fun e!481190 () Bool)

(assert (=> b!863680 (= e!481190 true)))

(declare-datatypes ((tuple2!11154 0))(
  ( (tuple2!11155 (_1!5587 (_ BitVec 64)) (_2!5587 V!27393)) )
))
(declare-datatypes ((List!17023 0))(
  ( (Nil!17020) (Cons!17019 (h!18150 tuple2!11154) (t!23920 List!17023)) )
))
(declare-datatypes ((ListLongMap!9937 0))(
  ( (ListLongMap!9938 (toList!4984 List!17023)) )
))
(declare-fun lt!390549 () ListLongMap!9937)

(declare-fun lt!390561 () tuple2!11154)

(declare-fun lt!390558 () tuple2!11154)

(declare-fun lt!390557 () ListLongMap!9937)

(declare-fun +!2281 (ListLongMap!9937 tuple2!11154) ListLongMap!9937)

(assert (=> b!863680 (= lt!390549 (+!2281 (+!2281 lt!390557 lt!390558) lt!390561))))

(declare-fun lt!390559 () V!27393)

(declare-fun lt!390548 () Unit!29502)

(declare-fun v!557 () V!27393)

(declare-fun addCommutativeForDiffKeys!493 (ListLongMap!9937 (_ BitVec 64) V!27393 (_ BitVec 64) V!27393) Unit!29502)

(assert (=> b!863680 (= lt!390548 (addCommutativeForDiffKeys!493 lt!390557 k!854 v!557 (select (arr!23858 _keys!868) from!1053) lt!390559))))

(declare-fun mapIsEmpty!26738 () Bool)

(declare-fun mapRes!26738 () Bool)

(assert (=> mapIsEmpty!26738 mapRes!26738))

(declare-fun res!587000 () Bool)

(assert (=> start!73736 (=> (not res!587000) (not e!481187))))

(assert (=> start!73736 (= res!587000 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24299 _keys!868))))))

(assert (=> start!73736 e!481187))

(assert (=> start!73736 tp_is_empty!16759))

(assert (=> start!73736 true))

(assert (=> start!73736 tp!51373))

(declare-fun array_inv!18846 (array!49662) Bool)

(assert (=> start!73736 (array_inv!18846 _keys!868)))

(declare-fun e!481186 () Bool)

(declare-fun array_inv!18847 (array!49664) Bool)

(assert (=> start!73736 (and (array_inv!18847 _values!688) e!481186)))

(declare-fun mapNonEmpty!26738 () Bool)

(declare-fun tp!51374 () Bool)

(declare-fun e!481188 () Bool)

(assert (=> mapNonEmpty!26738 (= mapRes!26738 (and tp!51374 e!481188))))

(declare-fun mapKey!26738 () (_ BitVec 32))

(declare-fun mapRest!26738 () (Array (_ BitVec 32) ValueCell!7940))

(declare-fun mapValue!26738 () ValueCell!7940)

(assert (=> mapNonEmpty!26738 (= (arr!23859 _values!688) (store mapRest!26738 mapKey!26738 mapValue!26738))))

(declare-fun b!863681 () Bool)

(declare-fun e!481189 () Bool)

(declare-fun e!481184 () Bool)

(assert (=> b!863681 (= e!481189 (not e!481184))))

(declare-fun res!586992 () Bool)

(assert (=> b!863681 (=> res!586992 e!481184)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!863681 (= res!586992 (not (validKeyInArray!0 (select (arr!23858 _keys!868) from!1053))))))

(declare-fun lt!390560 () ListLongMap!9937)

(declare-fun lt!390551 () ListLongMap!9937)

(assert (=> b!863681 (= lt!390560 lt!390551)))

(assert (=> b!863681 (= lt!390551 (+!2281 lt!390557 lt!390561))))

(declare-fun lt!390547 () array!49664)

(declare-fun defaultEntry!696 () Int)

(declare-fun minValue!654 () V!27393)

(declare-fun zeroValue!654 () V!27393)

(declare-fun getCurrentListMapNoExtraKeys!2958 (array!49662 array!49664 (_ BitVec 32) (_ BitVec 32) V!27393 V!27393 (_ BitVec 32) Int) ListLongMap!9937)

(assert (=> b!863681 (= lt!390560 (getCurrentListMapNoExtraKeys!2958 _keys!868 lt!390547 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!863681 (= lt!390561 (tuple2!11155 k!854 v!557))))

(assert (=> b!863681 (= lt!390557 (getCurrentListMapNoExtraKeys!2958 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!390550 () Unit!29502)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!527 (array!49662 array!49664 (_ BitVec 32) (_ BitVec 32) V!27393 V!27393 (_ BitVec 32) (_ BitVec 64) V!27393 (_ BitVec 32) Int) Unit!29502)

(assert (=> b!863681 (= lt!390550 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!527 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!863682 () Bool)

(assert (=> b!863682 (= e!481188 tp_is_empty!16759)))

(declare-fun b!863683 () Bool)

(declare-fun res!586998 () Bool)

(assert (=> b!863683 (=> (not res!586998) (not e!481187))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!863683 (= res!586998 (validMask!0 mask!1196))))

(declare-fun b!863684 () Bool)

(assert (=> b!863684 (= e!481184 e!481190)))

(declare-fun res!586994 () Bool)

(assert (=> b!863684 (=> res!586994 e!481190)))

(assert (=> b!863684 (= res!586994 (= k!854 (select (arr!23858 _keys!868) from!1053)))))

(assert (=> b!863684 (not (= (select (arr!23858 _keys!868) from!1053) k!854))))

(declare-fun lt!390546 () Unit!29502)

(assert (=> b!863684 (= lt!390546 e!481183)))

(declare-fun c!92073 () Bool)

(assert (=> b!863684 (= c!92073 (= (select (arr!23858 _keys!868) from!1053) k!854))))

(declare-fun lt!390552 () ListLongMap!9937)

(assert (=> b!863684 (= lt!390552 lt!390549)))

(assert (=> b!863684 (= lt!390549 (+!2281 lt!390551 lt!390558))))

(assert (=> b!863684 (= lt!390558 (tuple2!11155 (select (arr!23858 _keys!868) from!1053) lt!390559))))

(declare-fun get!12613 (ValueCell!7940 V!27393) V!27393)

(declare-fun dynLambda!1155 (Int (_ BitVec 64)) V!27393)

(assert (=> b!863684 (= lt!390559 (get!12613 (select (arr!23859 _values!688) from!1053) (dynLambda!1155 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!863685 () Bool)

(declare-fun res!587001 () Bool)

(assert (=> b!863685 (=> (not res!587001) (not e!481187))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49662 (_ BitVec 32)) Bool)

(assert (=> b!863685 (= res!587001 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!863686 () Bool)

(declare-fun res!586991 () Bool)

(assert (=> b!863686 (=> (not res!586991) (not e!481187))))

(assert (=> b!863686 (= res!586991 (validKeyInArray!0 k!854))))

(declare-fun b!863687 () Bool)

(assert (=> b!863687 (= e!481186 (and e!481191 mapRes!26738))))

(declare-fun condMapEmpty!26738 () Bool)

(declare-fun mapDefault!26738 () ValueCell!7940)

