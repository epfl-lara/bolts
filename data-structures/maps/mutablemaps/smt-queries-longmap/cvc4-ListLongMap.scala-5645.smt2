; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73686 () Bool)

(assert start!73686)

(declare-fun b_free!14573 () Bool)

(declare-fun b_next!14573 () Bool)

(assert (=> start!73686 (= b_free!14573 (not b_next!14573))))

(declare-fun tp!51223 () Bool)

(declare-fun b_and!24143 () Bool)

(assert (=> start!73686 (= tp!51223 b_and!24143)))

(declare-fun b!862425 () Bool)

(declare-fun res!586166 () Bool)

(declare-fun e!480516 () Bool)

(assert (=> b!862425 (=> (not res!586166) (not e!480516))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!49564 0))(
  ( (array!49565 (arr!23809 (Array (_ BitVec 32) (_ BitVec 64))) (size!24250 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49564)

(declare-datatypes ((V!27325 0))(
  ( (V!27326 (val!8402 Int)) )
))
(declare-datatypes ((ValueCell!7915 0))(
  ( (ValueCellFull!7915 (v!10823 V!27325)) (EmptyCell!7915) )
))
(declare-datatypes ((array!49566 0))(
  ( (array!49567 (arr!23810 (Array (_ BitVec 32) ValueCell!7915)) (size!24251 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49566)

(assert (=> b!862425 (= res!586166 (and (= (size!24251 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24250 _keys!868) (size!24251 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!862426 () Bool)

(declare-fun e!480510 () Bool)

(declare-fun e!480515 () Bool)

(assert (=> b!862426 (= e!480510 (not e!480515))))

(declare-fun res!586168 () Bool)

(assert (=> b!862426 (=> res!586168 e!480515)))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!862426 (= res!586168 (not (validKeyInArray!0 (select (arr!23809 _keys!868) from!1053))))))

(declare-datatypes ((tuple2!11110 0))(
  ( (tuple2!11111 (_1!5565 (_ BitVec 64)) (_2!5565 V!27325)) )
))
(declare-datatypes ((List!16980 0))(
  ( (Nil!16977) (Cons!16976 (h!18107 tuple2!11110) (t!23827 List!16980)) )
))
(declare-datatypes ((ListLongMap!9893 0))(
  ( (ListLongMap!9894 (toList!4962 List!16980)) )
))
(declare-fun lt!389352 () ListLongMap!9893)

(declare-fun lt!389359 () ListLongMap!9893)

(assert (=> b!862426 (= lt!389352 lt!389359)))

(declare-fun lt!389346 () ListLongMap!9893)

(declare-fun lt!389355 () tuple2!11110)

(declare-fun +!2259 (ListLongMap!9893 tuple2!11110) ListLongMap!9893)

(assert (=> b!862426 (= lt!389359 (+!2259 lt!389346 lt!389355))))

(declare-fun defaultEntry!696 () Int)

(declare-fun lt!389350 () array!49566)

(declare-fun minValue!654 () V!27325)

(declare-fun zeroValue!654 () V!27325)

(declare-fun getCurrentListMapNoExtraKeys!2938 (array!49564 array!49566 (_ BitVec 32) (_ BitVec 32) V!27325 V!27325 (_ BitVec 32) Int) ListLongMap!9893)

(assert (=> b!862426 (= lt!389352 (getCurrentListMapNoExtraKeys!2938 _keys!868 lt!389350 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun v!557 () V!27325)

(assert (=> b!862426 (= lt!389355 (tuple2!11111 k!854 v!557))))

(assert (=> b!862426 (= lt!389346 (getCurrentListMapNoExtraKeys!2938 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-datatypes ((Unit!29424 0))(
  ( (Unit!29425) )
))
(declare-fun lt!389358 () Unit!29424)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!507 (array!49564 array!49566 (_ BitVec 32) (_ BitVec 32) V!27325 V!27325 (_ BitVec 32) (_ BitVec 64) V!27325 (_ BitVec 32) Int) Unit!29424)

(assert (=> b!862426 (= lt!389358 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!507 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!862427 () Bool)

(declare-fun e!480509 () Unit!29424)

(declare-fun Unit!29426 () Unit!29424)

(assert (=> b!862427 (= e!480509 Unit!29426)))

(declare-fun lt!389354 () Unit!29424)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49564 (_ BitVec 32) (_ BitVec 32)) Unit!29424)

(assert (=> b!862427 (= lt!389354 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-datatypes ((List!16981 0))(
  ( (Nil!16978) (Cons!16977 (h!18108 (_ BitVec 64)) (t!23828 List!16981)) )
))
(declare-fun arrayNoDuplicates!0 (array!49564 (_ BitVec 32) List!16981) Bool)

(assert (=> b!862427 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!16978)))

(declare-fun lt!389351 () Unit!29424)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49564 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29424)

(assert (=> b!862427 (= lt!389351 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49564 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!862427 (arrayContainsKey!0 _keys!868 k!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!389348 () Unit!29424)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49564 (_ BitVec 64) (_ BitVec 32) List!16981) Unit!29424)

(assert (=> b!862427 (= lt!389348 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k!854 from!1053 Nil!16978))))

(assert (=> b!862427 false))

(declare-fun res!586172 () Bool)

(assert (=> start!73686 (=> (not res!586172) (not e!480516))))

(assert (=> start!73686 (= res!586172 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24250 _keys!868))))))

(assert (=> start!73686 e!480516))

(declare-fun tp_is_empty!16709 () Bool)

(assert (=> start!73686 tp_is_empty!16709))

(assert (=> start!73686 true))

(assert (=> start!73686 tp!51223))

(declare-fun array_inv!18814 (array!49564) Bool)

(assert (=> start!73686 (array_inv!18814 _keys!868)))

(declare-fun e!480513 () Bool)

(declare-fun array_inv!18815 (array!49566) Bool)

(assert (=> start!73686 (and (array_inv!18815 _values!688) e!480513)))

(declare-fun b!862428 () Bool)

(declare-fun e!480511 () Bool)

(assert (=> b!862428 (= e!480511 tp_is_empty!16709)))

(declare-fun b!862429 () Bool)

(declare-fun e!480512 () Bool)

(declare-fun mapRes!26663 () Bool)

(assert (=> b!862429 (= e!480513 (and e!480512 mapRes!26663))))

(declare-fun condMapEmpty!26663 () Bool)

(declare-fun mapDefault!26663 () ValueCell!7915)

