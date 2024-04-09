; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73676 () Bool)

(assert start!73676)

(declare-fun b_free!14563 () Bool)

(declare-fun b_next!14563 () Bool)

(assert (=> start!73676 (= b_free!14563 (not b_next!14563))))

(declare-fun tp!51193 () Bool)

(declare-fun b_and!24123 () Bool)

(assert (=> start!73676 (= tp!51193 b_and!24123)))

(declare-fun b!862175 () Bool)

(declare-fun e!480381 () Bool)

(assert (=> b!862175 (= e!480381 true)))

(declare-datatypes ((V!27313 0))(
  ( (V!27314 (val!8397 Int)) )
))
(declare-datatypes ((tuple2!11100 0))(
  ( (tuple2!11101 (_1!5560 (_ BitVec 64)) (_2!5560 V!27313)) )
))
(declare-fun lt!389110 () tuple2!11100)

(declare-fun lt!389114 () tuple2!11100)

(declare-datatypes ((List!16971 0))(
  ( (Nil!16968) (Cons!16967 (h!18098 tuple2!11100) (t!23808 List!16971)) )
))
(declare-datatypes ((ListLongMap!9883 0))(
  ( (ListLongMap!9884 (toList!4957 List!16971)) )
))
(declare-fun lt!389117 () ListLongMap!9883)

(declare-fun lt!389113 () ListLongMap!9883)

(declare-fun +!2254 (ListLongMap!9883 tuple2!11100) ListLongMap!9883)

(assert (=> b!862175 (= lt!389113 (+!2254 (+!2254 lt!389117 lt!389110) lt!389114))))

(declare-fun v!557 () V!27313)

(declare-fun lt!389116 () V!27313)

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!49544 0))(
  ( (array!49545 (arr!23799 (Array (_ BitVec 32) (_ BitVec 64))) (size!24240 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49544)

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((Unit!29408 0))(
  ( (Unit!29409) )
))
(declare-fun lt!389106 () Unit!29408)

(declare-fun addCommutativeForDiffKeys!471 (ListLongMap!9883 (_ BitVec 64) V!27313 (_ BitVec 64) V!27313) Unit!29408)

(assert (=> b!862175 (= lt!389106 (addCommutativeForDiffKeys!471 lt!389117 k!854 v!557 (select (arr!23799 _keys!868) from!1053) lt!389116))))

(declare-fun b!862176 () Bool)

(declare-fun res!586008 () Bool)

(declare-fun e!480378 () Bool)

(assert (=> b!862176 (=> (not res!586008) (not e!480378))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!862176 (= res!586008 (validMask!0 mask!1196))))

(declare-fun b!862177 () Bool)

(declare-fun res!586001 () Bool)

(assert (=> b!862177 (=> (not res!586001) (not e!480378))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!862177 (= res!586001 (validKeyInArray!0 k!854))))

(declare-fun b!862178 () Bool)

(declare-fun e!480377 () Bool)

(assert (=> b!862178 (= e!480378 e!480377)))

(declare-fun res!586007 () Bool)

(assert (=> b!862178 (=> (not res!586007) (not e!480377))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!862178 (= res!586007 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-datatypes ((ValueCell!7910 0))(
  ( (ValueCellFull!7910 (v!10818 V!27313)) (EmptyCell!7910) )
))
(declare-datatypes ((array!49546 0))(
  ( (array!49547 (arr!23800 (Array (_ BitVec 32) ValueCell!7910)) (size!24241 (_ BitVec 32))) )
))
(declare-fun lt!389107 () array!49546)

(declare-fun lt!389119 () ListLongMap!9883)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!27313)

(declare-fun zeroValue!654 () V!27313)

(declare-fun getCurrentListMapNoExtraKeys!2934 (array!49544 array!49546 (_ BitVec 32) (_ BitVec 32) V!27313 V!27313 (_ BitVec 32) Int) ListLongMap!9883)

(assert (=> b!862178 (= lt!389119 (getCurrentListMapNoExtraKeys!2934 _keys!868 lt!389107 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun _values!688 () array!49546)

(assert (=> b!862178 (= lt!389107 (array!49547 (store (arr!23800 _values!688) i!612 (ValueCellFull!7910 v!557)) (size!24241 _values!688)))))

(declare-fun lt!389112 () ListLongMap!9883)

(assert (=> b!862178 (= lt!389112 (getCurrentListMapNoExtraKeys!2934 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!862179 () Bool)

(declare-fun e!480374 () Unit!29408)

(declare-fun Unit!29410 () Unit!29408)

(assert (=> b!862179 (= e!480374 Unit!29410)))

(declare-fun lt!389109 () Unit!29408)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49544 (_ BitVec 32) (_ BitVec 32)) Unit!29408)

(assert (=> b!862179 (= lt!389109 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-datatypes ((List!16972 0))(
  ( (Nil!16969) (Cons!16968 (h!18099 (_ BitVec 64)) (t!23809 List!16972)) )
))
(declare-fun arrayNoDuplicates!0 (array!49544 (_ BitVec 32) List!16972) Bool)

(assert (=> b!862179 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!16969)))

(declare-fun lt!389120 () Unit!29408)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49544 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29408)

(assert (=> b!862179 (= lt!389120 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49544 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!862179 (arrayContainsKey!0 _keys!868 k!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!389108 () Unit!29408)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49544 (_ BitVec 64) (_ BitVec 32) List!16972) Unit!29408)

(assert (=> b!862179 (= lt!389108 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k!854 from!1053 Nil!16969))))

(assert (=> b!862179 false))

(declare-fun b!862180 () Bool)

(declare-fun res!586006 () Bool)

(assert (=> b!862180 (=> (not res!586006) (not e!480378))))

(assert (=> b!862180 (= res!586006 (and (= (size!24241 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24240 _keys!868) (size!24241 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!862181 () Bool)

(declare-fun e!480379 () Bool)

(declare-fun tp_is_empty!16699 () Bool)

(assert (=> b!862181 (= e!480379 tp_is_empty!16699)))

(declare-fun b!862182 () Bool)

(declare-fun res!586005 () Bool)

(assert (=> b!862182 (=> (not res!586005) (not e!480378))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49544 (_ BitVec 32)) Bool)

(assert (=> b!862182 (= res!586005 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!862183 () Bool)

(declare-fun e!480376 () Bool)

(assert (=> b!862183 (= e!480377 (not e!480376))))

(declare-fun res!586009 () Bool)

(assert (=> b!862183 (=> res!586009 e!480376)))

(assert (=> b!862183 (= res!586009 (not (validKeyInArray!0 (select (arr!23799 _keys!868) from!1053))))))

(declare-fun lt!389118 () ListLongMap!9883)

(declare-fun lt!389121 () ListLongMap!9883)

(assert (=> b!862183 (= lt!389118 lt!389121)))

(assert (=> b!862183 (= lt!389121 (+!2254 lt!389117 lt!389114))))

(assert (=> b!862183 (= lt!389118 (getCurrentListMapNoExtraKeys!2934 _keys!868 lt!389107 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!862183 (= lt!389114 (tuple2!11101 k!854 v!557))))

(assert (=> b!862183 (= lt!389117 (getCurrentListMapNoExtraKeys!2934 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!389111 () Unit!29408)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!504 (array!49544 array!49546 (_ BitVec 32) (_ BitVec 32) V!27313 V!27313 (_ BitVec 32) (_ BitVec 64) V!27313 (_ BitVec 32) Int) Unit!29408)

(assert (=> b!862183 (= lt!389111 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!504 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun res!586004 () Bool)

(assert (=> start!73676 (=> (not res!586004) (not e!480378))))

(assert (=> start!73676 (= res!586004 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24240 _keys!868))))))

(assert (=> start!73676 e!480378))

(assert (=> start!73676 tp_is_empty!16699))

(assert (=> start!73676 true))

(assert (=> start!73676 tp!51193))

(declare-fun array_inv!18806 (array!49544) Bool)

(assert (=> start!73676 (array_inv!18806 _keys!868)))

(declare-fun e!480375 () Bool)

(declare-fun array_inv!18807 (array!49546) Bool)

(assert (=> start!73676 (and (array_inv!18807 _values!688) e!480375)))

(declare-fun mapIsEmpty!26648 () Bool)

(declare-fun mapRes!26648 () Bool)

(assert (=> mapIsEmpty!26648 mapRes!26648))

(declare-fun b!862184 () Bool)

(declare-fun res!586010 () Bool)

(assert (=> b!862184 (=> (not res!586010) (not e!480378))))

(assert (=> b!862184 (= res!586010 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16969))))

(declare-fun b!862185 () Bool)

(declare-fun res!586011 () Bool)

(assert (=> b!862185 (=> (not res!586011) (not e!480378))))

(assert (=> b!862185 (= res!586011 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24240 _keys!868))))))

(declare-fun b!862186 () Bool)

(declare-fun e!480373 () Bool)

(assert (=> b!862186 (= e!480373 tp_is_empty!16699)))

(declare-fun b!862187 () Bool)

(assert (=> b!862187 (= e!480376 e!480381)))

(declare-fun res!586003 () Bool)

(assert (=> b!862187 (=> res!586003 e!480381)))

(assert (=> b!862187 (= res!586003 (= k!854 (select (arr!23799 _keys!868) from!1053)))))

(assert (=> b!862187 (not (= (select (arr!23799 _keys!868) from!1053) k!854))))

(declare-fun lt!389115 () Unit!29408)

(assert (=> b!862187 (= lt!389115 e!480374)))

(declare-fun c!91983 () Bool)

(assert (=> b!862187 (= c!91983 (= (select (arr!23799 _keys!868) from!1053) k!854))))

(assert (=> b!862187 (= lt!389119 lt!389113)))

(assert (=> b!862187 (= lt!389113 (+!2254 lt!389121 lt!389110))))

(assert (=> b!862187 (= lt!389110 (tuple2!11101 (select (arr!23799 _keys!868) from!1053) lt!389116))))

(declare-fun get!12572 (ValueCell!7910 V!27313) V!27313)

(declare-fun dynLambda!1134 (Int (_ BitVec 64)) V!27313)

(assert (=> b!862187 (= lt!389116 (get!12572 (select (arr!23800 _values!688) from!1053) (dynLambda!1134 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!862188 () Bool)

(declare-fun res!586002 () Bool)

(assert (=> b!862188 (=> (not res!586002) (not e!480378))))

(assert (=> b!862188 (= res!586002 (and (= (select (arr!23799 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun mapNonEmpty!26648 () Bool)

(declare-fun tp!51194 () Bool)

(assert (=> mapNonEmpty!26648 (= mapRes!26648 (and tp!51194 e!480373))))

(declare-fun mapKey!26648 () (_ BitVec 32))

(declare-fun mapValue!26648 () ValueCell!7910)

(declare-fun mapRest!26648 () (Array (_ BitVec 32) ValueCell!7910))

(assert (=> mapNonEmpty!26648 (= (arr!23800 _values!688) (store mapRest!26648 mapKey!26648 mapValue!26648))))

(declare-fun b!862189 () Bool)

(declare-fun Unit!29411 () Unit!29408)

(assert (=> b!862189 (= e!480374 Unit!29411)))

(declare-fun b!862190 () Bool)

(assert (=> b!862190 (= e!480375 (and e!480379 mapRes!26648))))

(declare-fun condMapEmpty!26648 () Bool)

(declare-fun mapDefault!26648 () ValueCell!7910)

