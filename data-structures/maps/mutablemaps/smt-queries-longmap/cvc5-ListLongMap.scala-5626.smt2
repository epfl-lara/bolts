; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73568 () Bool)

(assert start!73568)

(declare-fun b_free!14455 () Bool)

(declare-fun b_next!14455 () Bool)

(assert (=> start!73568 (= b_free!14455 (not b_next!14455))))

(declare-fun tp!50869 () Bool)

(declare-fun b_and!23907 () Bool)

(assert (=> start!73568 (= tp!50869 b_and!23907)))

(declare-fun b!859504 () Bool)

(declare-fun e!479009 () Bool)

(declare-fun e!479012 () Bool)

(assert (=> b!859504 (= e!479009 e!479012)))

(declare-fun res!584127 () Bool)

(assert (=> b!859504 (=> (not res!584127) (not e!479012))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!859504 (= res!584127 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((V!27169 0))(
  ( (V!27170 (val!8343 Int)) )
))
(declare-datatypes ((ValueCell!7856 0))(
  ( (ValueCellFull!7856 (v!10764 V!27169)) (EmptyCell!7856) )
))
(declare-datatypes ((array!49340 0))(
  ( (array!49341 (arr!23697 (Array (_ BitVec 32) ValueCell!7856)) (size!24138 (_ BitVec 32))) )
))
(declare-fun lt!387336 () array!49340)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((tuple2!11008 0))(
  ( (tuple2!11009 (_1!5514 (_ BitVec 64)) (_2!5514 V!27169)) )
))
(declare-datatypes ((List!16881 0))(
  ( (Nil!16878) (Cons!16877 (h!18008 tuple2!11008) (t!23610 List!16881)) )
))
(declare-datatypes ((ListLongMap!9791 0))(
  ( (ListLongMap!9792 (toList!4911 List!16881)) )
))
(declare-fun lt!387334 () ListLongMap!9791)

(declare-datatypes ((array!49342 0))(
  ( (array!49343 (arr!23698 (Array (_ BitVec 32) (_ BitVec 64))) (size!24139 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49342)

(declare-fun minValue!654 () V!27169)

(declare-fun zeroValue!654 () V!27169)

(declare-fun getCurrentListMapNoExtraKeys!2891 (array!49342 array!49340 (_ BitVec 32) (_ BitVec 32) V!27169 V!27169 (_ BitVec 32) Int) ListLongMap!9791)

(assert (=> b!859504 (= lt!387334 (getCurrentListMapNoExtraKeys!2891 _keys!868 lt!387336 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27169)

(declare-fun _values!688 () array!49340)

(assert (=> b!859504 (= lt!387336 (array!49341 (store (arr!23697 _values!688) i!612 (ValueCellFull!7856 v!557)) (size!24138 _values!688)))))

(declare-fun lt!387333 () ListLongMap!9791)

(assert (=> b!859504 (= lt!387333 (getCurrentListMapNoExtraKeys!2891 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!859505 () Bool)

(declare-fun res!584136 () Bool)

(declare-fun e!479013 () Bool)

(assert (=> b!859505 (=> res!584136 e!479013)))

(declare-datatypes ((List!16882 0))(
  ( (Nil!16879) (Cons!16878 (h!18009 (_ BitVec 64)) (t!23611 List!16882)) )
))
(declare-fun contains!4223 (List!16882 (_ BitVec 64)) Bool)

(assert (=> b!859505 (= res!584136 (contains!4223 Nil!16879 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!584129 () Bool)

(assert (=> start!73568 (=> (not res!584129) (not e!479009))))

(assert (=> start!73568 (= res!584129 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24139 _keys!868))))))

(assert (=> start!73568 e!479009))

(declare-fun tp_is_empty!16591 () Bool)

(assert (=> start!73568 tp_is_empty!16591))

(assert (=> start!73568 true))

(assert (=> start!73568 tp!50869))

(declare-fun array_inv!18740 (array!49342) Bool)

(assert (=> start!73568 (array_inv!18740 _keys!868)))

(declare-fun e!479005 () Bool)

(declare-fun array_inv!18741 (array!49340) Bool)

(assert (=> start!73568 (and (array_inv!18741 _values!688) e!479005)))

(declare-fun b!859506 () Bool)

(declare-fun e!479010 () Bool)

(declare-fun e!479007 () Bool)

(assert (=> b!859506 (= e!479010 e!479007)))

(declare-fun res!584134 () Bool)

(assert (=> b!859506 (=> res!584134 e!479007)))

(declare-fun k!854 () (_ BitVec 64))

(assert (=> b!859506 (= res!584134 (not (= (select (arr!23698 _keys!868) from!1053) k!854)))))

(declare-fun lt!387335 () ListLongMap!9791)

(declare-fun +!2214 (ListLongMap!9791 tuple2!11008) ListLongMap!9791)

(declare-fun get!12502 (ValueCell!7856 V!27169) V!27169)

(declare-fun dynLambda!1100 (Int (_ BitVec 64)) V!27169)

(assert (=> b!859506 (= lt!387334 (+!2214 lt!387335 (tuple2!11009 (select (arr!23698 _keys!868) from!1053) (get!12502 (select (arr!23697 _values!688) from!1053) (dynLambda!1100 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!859507 () Bool)

(declare-fun res!584137 () Bool)

(assert (=> b!859507 (=> (not res!584137) (not e!479009))))

(assert (=> b!859507 (= res!584137 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24139 _keys!868))))))

(declare-fun mapIsEmpty!26486 () Bool)

(declare-fun mapRes!26486 () Bool)

(assert (=> mapIsEmpty!26486 mapRes!26486))

(declare-fun b!859508 () Bool)

(assert (=> b!859508 (= e!479012 (not e!479010))))

(declare-fun res!584130 () Bool)

(assert (=> b!859508 (=> res!584130 e!479010)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!859508 (= res!584130 (not (validKeyInArray!0 (select (arr!23698 _keys!868) from!1053))))))

(declare-fun lt!387331 () ListLongMap!9791)

(assert (=> b!859508 (= lt!387331 lt!387335)))

(declare-fun lt!387332 () ListLongMap!9791)

(assert (=> b!859508 (= lt!387335 (+!2214 lt!387332 (tuple2!11009 k!854 v!557)))))

(assert (=> b!859508 (= lt!387331 (getCurrentListMapNoExtraKeys!2891 _keys!868 lt!387336 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!859508 (= lt!387332 (getCurrentListMapNoExtraKeys!2891 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-datatypes ((Unit!29272 0))(
  ( (Unit!29273) )
))
(declare-fun lt!387337 () Unit!29272)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!471 (array!49342 array!49340 (_ BitVec 32) (_ BitVec 32) V!27169 V!27169 (_ BitVec 32) (_ BitVec 64) V!27169 (_ BitVec 32) Int) Unit!29272)

(assert (=> b!859508 (= lt!387337 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!471 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!859509 () Bool)

(declare-fun res!584138 () Bool)

(assert (=> b!859509 (=> res!584138 e!479013)))

(declare-fun noDuplicate!1305 (List!16882) Bool)

(assert (=> b!859509 (= res!584138 (not (noDuplicate!1305 Nil!16879)))))

(declare-fun b!859510 () Bool)

(declare-fun res!584135 () Bool)

(assert (=> b!859510 (=> (not res!584135) (not e!479009))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49342 (_ BitVec 32)) Bool)

(assert (=> b!859510 (= res!584135 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapNonEmpty!26486 () Bool)

(declare-fun tp!50870 () Bool)

(declare-fun e!479011 () Bool)

(assert (=> mapNonEmpty!26486 (= mapRes!26486 (and tp!50870 e!479011))))

(declare-fun mapRest!26486 () (Array (_ BitVec 32) ValueCell!7856))

(declare-fun mapKey!26486 () (_ BitVec 32))

(declare-fun mapValue!26486 () ValueCell!7856)

(assert (=> mapNonEmpty!26486 (= (arr!23697 _values!688) (store mapRest!26486 mapKey!26486 mapValue!26486))))

(declare-fun b!859511 () Bool)

(declare-fun res!584131 () Bool)

(assert (=> b!859511 (=> (not res!584131) (not e!479009))))

(assert (=> b!859511 (= res!584131 (and (= (select (arr!23698 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!859512 () Bool)

(declare-fun res!584133 () Bool)

(assert (=> b!859512 (=> (not res!584133) (not e!479009))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!859512 (= res!584133 (validMask!0 mask!1196))))

(declare-fun b!859513 () Bool)

(assert (=> b!859513 (= e!479007 e!479013)))

(declare-fun res!584126 () Bool)

(assert (=> b!859513 (=> res!584126 e!479013)))

(assert (=> b!859513 (= res!584126 (or (bvsge (size!24139 _keys!868) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) (size!24139 _keys!868)) (bvsge from!1053 (size!24139 _keys!868))))))

(declare-fun arrayContainsKey!0 (array!49342 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!859513 (arrayContainsKey!0 _keys!868 k!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!387330 () Unit!29272)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49342 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29272)

(assert (=> b!859513 (= lt!387330 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayNoDuplicates!0 (array!49342 (_ BitVec 32) List!16882) Bool)

(assert (=> b!859513 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!16879)))

(declare-fun lt!387338 () Unit!29272)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49342 (_ BitVec 32) (_ BitVec 32)) Unit!29272)

(assert (=> b!859513 (= lt!387338 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-fun b!859514 () Bool)

(assert (=> b!859514 (= e!479011 tp_is_empty!16591)))

(declare-fun b!859515 () Bool)

(declare-fun e!479006 () Bool)

(assert (=> b!859515 (= e!479005 (and e!479006 mapRes!26486))))

(declare-fun condMapEmpty!26486 () Bool)

(declare-fun mapDefault!26486 () ValueCell!7856)

