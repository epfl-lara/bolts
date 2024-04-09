; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73704 () Bool)

(assert start!73704)

(declare-fun b_free!14591 () Bool)

(declare-fun b_next!14591 () Bool)

(assert (=> start!73704 (= b_free!14591 (not b_next!14591))))

(declare-fun tp!51277 () Bool)

(declare-fun b_and!24179 () Bool)

(assert (=> start!73704 (= tp!51277 b_and!24179)))

(declare-fun b!862875 () Bool)

(declare-fun res!586471 () Bool)

(declare-fun e!480755 () Bool)

(assert (=> b!862875 (=> (not res!586471) (not e!480755))))

(declare-datatypes ((array!49600 0))(
  ( (array!49601 (arr!23827 (Array (_ BitVec 32) (_ BitVec 64))) (size!24268 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49600)

(declare-datatypes ((List!16994 0))(
  ( (Nil!16991) (Cons!16990 (h!18121 (_ BitVec 64)) (t!23859 List!16994)) )
))
(declare-fun arrayNoDuplicates!0 (array!49600 (_ BitVec 32) List!16994) Bool)

(assert (=> b!862875 (= res!586471 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16991))))

(declare-fun b!862876 () Bool)

(declare-fun e!480758 () Bool)

(assert (=> b!862876 (= e!480758 true)))

(declare-datatypes ((V!27349 0))(
  ( (V!27350 (val!8411 Int)) )
))
(declare-datatypes ((tuple2!11126 0))(
  ( (tuple2!11127 (_1!5573 (_ BitVec 64)) (_2!5573 V!27349)) )
))
(declare-datatypes ((List!16995 0))(
  ( (Nil!16992) (Cons!16991 (h!18122 tuple2!11126) (t!23860 List!16995)) )
))
(declare-datatypes ((ListLongMap!9909 0))(
  ( (ListLongMap!9910 (toList!4970 List!16995)) )
))
(declare-fun lt!389782 () ListLongMap!9909)

(declare-fun lt!389786 () ListLongMap!9909)

(declare-fun lt!389781 () tuple2!11126)

(declare-fun lt!389790 () tuple2!11126)

(declare-fun +!2267 (ListLongMap!9909 tuple2!11126) ListLongMap!9909)

(assert (=> b!862876 (= lt!389786 (+!2267 (+!2267 lt!389782 lt!389781) lt!389790))))

(declare-datatypes ((Unit!29450 0))(
  ( (Unit!29451) )
))
(declare-fun lt!389779 () Unit!29450)

(declare-fun v!557 () V!27349)

(declare-fun lt!389778 () V!27349)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun addCommutativeForDiffKeys!482 (ListLongMap!9909 (_ BitVec 64) V!27349 (_ BitVec 64) V!27349) Unit!29450)

(assert (=> b!862876 (= lt!389779 (addCommutativeForDiffKeys!482 lt!389782 k!854 v!557 (select (arr!23827 _keys!868) from!1053) lt!389778))))

(declare-fun b!862877 () Bool)

(declare-fun e!480754 () Bool)

(assert (=> b!862877 (= e!480755 e!480754)))

(declare-fun res!586465 () Bool)

(assert (=> b!862877 (=> (not res!586465) (not e!480754))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!862877 (= res!586465 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!389780 () ListLongMap!9909)

(declare-datatypes ((ValueCell!7924 0))(
  ( (ValueCellFull!7924 (v!10832 V!27349)) (EmptyCell!7924) )
))
(declare-datatypes ((array!49602 0))(
  ( (array!49603 (arr!23828 (Array (_ BitVec 32) ValueCell!7924)) (size!24269 (_ BitVec 32))) )
))
(declare-fun lt!389788 () array!49602)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!27349)

(declare-fun zeroValue!654 () V!27349)

(declare-fun getCurrentListMapNoExtraKeys!2945 (array!49600 array!49602 (_ BitVec 32) (_ BitVec 32) V!27349 V!27349 (_ BitVec 32) Int) ListLongMap!9909)

(assert (=> b!862877 (= lt!389780 (getCurrentListMapNoExtraKeys!2945 _keys!868 lt!389788 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun _values!688 () array!49602)

(assert (=> b!862877 (= lt!389788 (array!49603 (store (arr!23828 _values!688) i!612 (ValueCellFull!7924 v!557)) (size!24269 _values!688)))))

(declare-fun lt!389792 () ListLongMap!9909)

(assert (=> b!862877 (= lt!389792 (getCurrentListMapNoExtraKeys!2945 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!862878 () Bool)

(declare-fun e!480753 () Bool)

(assert (=> b!862878 (= e!480754 (not e!480753))))

(declare-fun res!586467 () Bool)

(assert (=> b!862878 (=> res!586467 e!480753)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!862878 (= res!586467 (not (validKeyInArray!0 (select (arr!23827 _keys!868) from!1053))))))

(declare-fun lt!389793 () ListLongMap!9909)

(declare-fun lt!389783 () ListLongMap!9909)

(assert (=> b!862878 (= lt!389793 lt!389783)))

(assert (=> b!862878 (= lt!389783 (+!2267 lt!389782 lt!389790))))

(assert (=> b!862878 (= lt!389793 (getCurrentListMapNoExtraKeys!2945 _keys!868 lt!389788 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!862878 (= lt!389790 (tuple2!11127 k!854 v!557))))

(assert (=> b!862878 (= lt!389782 (getCurrentListMapNoExtraKeys!2945 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!389784 () Unit!29450)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!514 (array!49600 array!49602 (_ BitVec 32) (_ BitVec 32) V!27349 V!27349 (_ BitVec 32) (_ BitVec 64) V!27349 (_ BitVec 32) Int) Unit!29450)

(assert (=> b!862878 (= lt!389784 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!514 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapNonEmpty!26690 () Bool)

(declare-fun mapRes!26690 () Bool)

(declare-fun tp!51278 () Bool)

(declare-fun e!480756 () Bool)

(assert (=> mapNonEmpty!26690 (= mapRes!26690 (and tp!51278 e!480756))))

(declare-fun mapKey!26690 () (_ BitVec 32))

(declare-fun mapRest!26690 () (Array (_ BitVec 32) ValueCell!7924))

(declare-fun mapValue!26690 () ValueCell!7924)

(assert (=> mapNonEmpty!26690 (= (arr!23828 _values!688) (store mapRest!26690 mapKey!26690 mapValue!26690))))

(declare-fun b!862879 () Bool)

(assert (=> b!862879 (= e!480753 e!480758)))

(declare-fun res!586464 () Bool)

(assert (=> b!862879 (=> res!586464 e!480758)))

(assert (=> b!862879 (= res!586464 (= k!854 (select (arr!23827 _keys!868) from!1053)))))

(assert (=> b!862879 (not (= (select (arr!23827 _keys!868) from!1053) k!854))))

(declare-fun lt!389787 () Unit!29450)

(declare-fun e!480752 () Unit!29450)

(assert (=> b!862879 (= lt!389787 e!480752)))

(declare-fun c!92025 () Bool)

(assert (=> b!862879 (= c!92025 (= (select (arr!23827 _keys!868) from!1053) k!854))))

(assert (=> b!862879 (= lt!389780 lt!389786)))

(assert (=> b!862879 (= lt!389786 (+!2267 lt!389783 lt!389781))))

(assert (=> b!862879 (= lt!389781 (tuple2!11127 (select (arr!23827 _keys!868) from!1053) lt!389778))))

(declare-fun get!12590 (ValueCell!7924 V!27349) V!27349)

(declare-fun dynLambda!1144 (Int (_ BitVec 64)) V!27349)

(assert (=> b!862879 (= lt!389778 (get!12590 (select (arr!23828 _values!688) from!1053) (dynLambda!1144 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!862880 () Bool)

(declare-fun res!586470 () Bool)

(assert (=> b!862880 (=> (not res!586470) (not e!480755))))

(assert (=> b!862880 (= res!586470 (validKeyInArray!0 k!854))))

(declare-fun mapIsEmpty!26690 () Bool)

(assert (=> mapIsEmpty!26690 mapRes!26690))

(declare-fun res!586468 () Bool)

(assert (=> start!73704 (=> (not res!586468) (not e!480755))))

(assert (=> start!73704 (= res!586468 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24268 _keys!868))))))

(assert (=> start!73704 e!480755))

(declare-fun tp_is_empty!16727 () Bool)

(assert (=> start!73704 tp_is_empty!16727))

(assert (=> start!73704 true))

(assert (=> start!73704 tp!51277))

(declare-fun array_inv!18828 (array!49600) Bool)

(assert (=> start!73704 (array_inv!18828 _keys!868)))

(declare-fun e!480757 () Bool)

(declare-fun array_inv!18829 (array!49602) Bool)

(assert (=> start!73704 (and (array_inv!18829 _values!688) e!480757)))

(declare-fun b!862881 () Bool)

(declare-fun res!586472 () Bool)

(assert (=> b!862881 (=> (not res!586472) (not e!480755))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!862881 (= res!586472 (validMask!0 mask!1196))))

(declare-fun b!862882 () Bool)

(declare-fun Unit!29452 () Unit!29450)

(assert (=> b!862882 (= e!480752 Unit!29452)))

(declare-fun lt!389785 () Unit!29450)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49600 (_ BitVec 32) (_ BitVec 32)) Unit!29450)

(assert (=> b!862882 (= lt!389785 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(assert (=> b!862882 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!16991)))

(declare-fun lt!389791 () Unit!29450)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49600 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29450)

(assert (=> b!862882 (= lt!389791 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49600 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!862882 (arrayContainsKey!0 _keys!868 k!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!389789 () Unit!29450)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49600 (_ BitVec 64) (_ BitVec 32) List!16994) Unit!29450)

(assert (=> b!862882 (= lt!389789 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k!854 from!1053 Nil!16991))))

(assert (=> b!862882 false))

(declare-fun b!862883 () Bool)

(declare-fun res!586463 () Bool)

(assert (=> b!862883 (=> (not res!586463) (not e!480755))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49600 (_ BitVec 32)) Bool)

(assert (=> b!862883 (= res!586463 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!862884 () Bool)

(declare-fun res!586473 () Bool)

(assert (=> b!862884 (=> (not res!586473) (not e!480755))))

(assert (=> b!862884 (= res!586473 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24268 _keys!868))))))

(declare-fun b!862885 () Bool)

(declare-fun res!586466 () Bool)

(assert (=> b!862885 (=> (not res!586466) (not e!480755))))

(assert (=> b!862885 (= res!586466 (and (= (size!24269 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24268 _keys!868) (size!24269 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!862886 () Bool)

(declare-fun res!586469 () Bool)

(assert (=> b!862886 (=> (not res!586469) (not e!480755))))

(assert (=> b!862886 (= res!586469 (and (= (select (arr!23827 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!862887 () Bool)

(assert (=> b!862887 (= e!480756 tp_is_empty!16727)))

(declare-fun b!862888 () Bool)

(declare-fun e!480751 () Bool)

(assert (=> b!862888 (= e!480757 (and e!480751 mapRes!26690))))

(declare-fun condMapEmpty!26690 () Bool)

(declare-fun mapDefault!26690 () ValueCell!7924)

