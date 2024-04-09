; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73734 () Bool)

(assert start!73734)

(declare-fun b_free!14621 () Bool)

(declare-fun b_next!14621 () Bool)

(assert (=> start!73734 (= b_free!14621 (not b_next!14621))))

(declare-fun tp!51368 () Bool)

(declare-fun b_and!24239 () Bool)

(assert (=> start!73734 (= tp!51368 b_and!24239)))

(declare-fun b!863625 () Bool)

(declare-datatypes ((Unit!29498 0))(
  ( (Unit!29499) )
))
(declare-fun e!481157 () Unit!29498)

(declare-fun Unit!29500 () Unit!29498)

(assert (=> b!863625 (= e!481157 Unit!29500)))

(declare-fun b!863626 () Bool)

(declare-fun res!586961 () Bool)

(declare-fun e!481160 () Bool)

(assert (=> b!863626 (=> (not res!586961) (not e!481160))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!863626 (= res!586961 (validMask!0 mask!1196))))

(declare-fun b!863627 () Bool)

(declare-fun e!481163 () Bool)

(declare-fun e!481162 () Bool)

(assert (=> b!863627 (= e!481163 (not e!481162))))

(declare-fun res!586966 () Bool)

(assert (=> b!863627 (=> res!586966 e!481162)))

(declare-datatypes ((array!49658 0))(
  ( (array!49659 (arr!23856 (Array (_ BitVec 32) (_ BitVec 64))) (size!24297 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49658)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!863627 (= res!586966 (not (validKeyInArray!0 (select (arr!23856 _keys!868) from!1053))))))

(declare-datatypes ((V!27389 0))(
  ( (V!27390 (val!8426 Int)) )
))
(declare-datatypes ((tuple2!11152 0))(
  ( (tuple2!11153 (_1!5586 (_ BitVec 64)) (_2!5586 V!27389)) )
))
(declare-datatypes ((List!17020 0))(
  ( (Nil!17017) (Cons!17016 (h!18147 tuple2!11152) (t!23915 List!17020)) )
))
(declare-datatypes ((ListLongMap!9935 0))(
  ( (ListLongMap!9936 (toList!4983 List!17020)) )
))
(declare-fun lt!390512 () ListLongMap!9935)

(declare-fun lt!390499 () ListLongMap!9935)

(assert (=> b!863627 (= lt!390512 lt!390499)))

(declare-fun lt!390509 () ListLongMap!9935)

(declare-fun lt!390513 () tuple2!11152)

(declare-fun +!2280 (ListLongMap!9935 tuple2!11152) ListLongMap!9935)

(assert (=> b!863627 (= lt!390499 (+!2280 lt!390509 lt!390513))))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((ValueCell!7939 0))(
  ( (ValueCellFull!7939 (v!10847 V!27389)) (EmptyCell!7939) )
))
(declare-datatypes ((array!49660 0))(
  ( (array!49661 (arr!23857 (Array (_ BitVec 32) ValueCell!7939)) (size!24298 (_ BitVec 32))) )
))
(declare-fun lt!390498 () array!49660)

(declare-fun minValue!654 () V!27389)

(declare-fun zeroValue!654 () V!27389)

(declare-fun getCurrentListMapNoExtraKeys!2957 (array!49658 array!49660 (_ BitVec 32) (_ BitVec 32) V!27389 V!27389 (_ BitVec 32) Int) ListLongMap!9935)

(assert (=> b!863627 (= lt!390512 (getCurrentListMapNoExtraKeys!2957 _keys!868 lt!390498 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun v!557 () V!27389)

(assert (=> b!863627 (= lt!390513 (tuple2!11153 k!854 v!557))))

(declare-fun _values!688 () array!49660)

(assert (=> b!863627 (= lt!390509 (getCurrentListMapNoExtraKeys!2957 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!390506 () Unit!29498)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!526 (array!49658 array!49660 (_ BitVec 32) (_ BitVec 32) V!27389 V!27389 (_ BitVec 32) (_ BitVec 64) V!27389 (_ BitVec 32) Int) Unit!29498)

(assert (=> b!863627 (= lt!390506 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!526 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapIsEmpty!26735 () Bool)

(declare-fun mapRes!26735 () Bool)

(assert (=> mapIsEmpty!26735 mapRes!26735))

(declare-fun b!863628 () Bool)

(declare-fun e!481159 () Bool)

(assert (=> b!863628 (= e!481162 e!481159)))

(declare-fun res!586964 () Bool)

(assert (=> b!863628 (=> res!586964 e!481159)))

(assert (=> b!863628 (= res!586964 (= k!854 (select (arr!23856 _keys!868) from!1053)))))

(assert (=> b!863628 (not (= (select (arr!23856 _keys!868) from!1053) k!854))))

(declare-fun lt!390504 () Unit!29498)

(assert (=> b!863628 (= lt!390504 e!481157)))

(declare-fun c!92070 () Bool)

(assert (=> b!863628 (= c!92070 (= (select (arr!23856 _keys!868) from!1053) k!854))))

(declare-fun lt!390505 () ListLongMap!9935)

(declare-fun lt!390500 () ListLongMap!9935)

(assert (=> b!863628 (= lt!390505 lt!390500)))

(declare-fun lt!390510 () tuple2!11152)

(assert (=> b!863628 (= lt!390500 (+!2280 lt!390499 lt!390510))))

(declare-fun lt!390502 () V!27389)

(assert (=> b!863628 (= lt!390510 (tuple2!11153 (select (arr!23856 _keys!868) from!1053) lt!390502))))

(declare-fun get!12610 (ValueCell!7939 V!27389) V!27389)

(declare-fun dynLambda!1154 (Int (_ BitVec 64)) V!27389)

(assert (=> b!863628 (= lt!390502 (get!12610 (select (arr!23857 _values!688) from!1053) (dynLambda!1154 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!863629 () Bool)

(declare-fun res!586959 () Bool)

(assert (=> b!863629 (=> (not res!586959) (not e!481160))))

(assert (=> b!863629 (= res!586959 (and (= (select (arr!23856 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!863630 () Bool)

(assert (=> b!863630 (= e!481159 true)))

(assert (=> b!863630 (= lt!390500 (+!2280 (+!2280 lt!390509 lt!390510) lt!390513))))

(declare-fun lt!390511 () Unit!29498)

(declare-fun addCommutativeForDiffKeys!492 (ListLongMap!9935 (_ BitVec 64) V!27389 (_ BitVec 64) V!27389) Unit!29498)

(assert (=> b!863630 (= lt!390511 (addCommutativeForDiffKeys!492 lt!390509 k!854 v!557 (select (arr!23856 _keys!868) from!1053) lt!390502))))

(declare-fun b!863631 () Bool)

(declare-fun Unit!29501 () Unit!29498)

(assert (=> b!863631 (= e!481157 Unit!29501)))

(declare-fun lt!390507 () Unit!29498)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49658 (_ BitVec 32) (_ BitVec 32)) Unit!29498)

(assert (=> b!863631 (= lt!390507 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-datatypes ((List!17021 0))(
  ( (Nil!17018) (Cons!17017 (h!18148 (_ BitVec 64)) (t!23916 List!17021)) )
))
(declare-fun arrayNoDuplicates!0 (array!49658 (_ BitVec 32) List!17021) Bool)

(assert (=> b!863631 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17018)))

(declare-fun lt!390503 () Unit!29498)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49658 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29498)

(assert (=> b!863631 (= lt!390503 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49658 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!863631 (arrayContainsKey!0 _keys!868 k!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!390508 () Unit!29498)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49658 (_ BitVec 64) (_ BitVec 32) List!17021) Unit!29498)

(assert (=> b!863631 (= lt!390508 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k!854 from!1053 Nil!17018))))

(assert (=> b!863631 false))

(declare-fun b!863632 () Bool)

(assert (=> b!863632 (= e!481160 e!481163)))

(declare-fun res!586967 () Bool)

(assert (=> b!863632 (=> (not res!586967) (not e!481163))))

(assert (=> b!863632 (= res!586967 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(assert (=> b!863632 (= lt!390505 (getCurrentListMapNoExtraKeys!2957 _keys!868 lt!390498 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!863632 (= lt!390498 (array!49661 (store (arr!23857 _values!688) i!612 (ValueCellFull!7939 v!557)) (size!24298 _values!688)))))

(declare-fun lt!390501 () ListLongMap!9935)

(assert (=> b!863632 (= lt!390501 (getCurrentListMapNoExtraKeys!2957 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!863633 () Bool)

(declare-fun e!481156 () Bool)

(declare-fun tp_is_empty!16757 () Bool)

(assert (=> b!863633 (= e!481156 tp_is_empty!16757)))

(declare-fun b!863634 () Bool)

(declare-fun res!586965 () Bool)

(assert (=> b!863634 (=> (not res!586965) (not e!481160))))

(assert (=> b!863634 (= res!586965 (and (= (size!24298 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24297 _keys!868) (size!24298 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!863635 () Bool)

(declare-fun e!481158 () Bool)

(declare-fun e!481164 () Bool)

(assert (=> b!863635 (= e!481158 (and e!481164 mapRes!26735))))

(declare-fun condMapEmpty!26735 () Bool)

(declare-fun mapDefault!26735 () ValueCell!7939)

