; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73620 () Bool)

(assert start!73620)

(declare-fun b_free!14507 () Bool)

(declare-fun b_next!14507 () Bool)

(assert (=> start!73620 (= b_free!14507 (not b_next!14507))))

(declare-fun tp!51025 () Bool)

(declare-fun b_and!24011 () Bool)

(assert (=> start!73620 (= tp!51025 b_and!24011)))

(declare-fun b!860848 () Bool)

(declare-fun res!585159 () Bool)

(declare-fun e!479696 () Bool)

(assert (=> b!860848 (=> (not res!585159) (not e!479696))))

(declare-datatypes ((array!49436 0))(
  ( (array!49437 (arr!23745 (Array (_ BitVec 32) (_ BitVec 64))) (size!24186 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49436)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49436 (_ BitVec 32)) Bool)

(assert (=> b!860848 (= res!585159 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!860849 () Bool)

(declare-fun res!585154 () Bool)

(assert (=> b!860849 (=> (not res!585154) (not e!479696))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!860849 (= res!585154 (validKeyInArray!0 k!854))))

(declare-fun b!860850 () Bool)

(declare-datatypes ((Unit!29314 0))(
  ( (Unit!29315) )
))
(declare-fun e!479697 () Unit!29314)

(declare-fun Unit!29316 () Unit!29314)

(assert (=> b!860850 (= e!479697 Unit!29316)))

(declare-fun b!860851 () Bool)

(declare-fun e!479692 () Bool)

(declare-fun tp_is_empty!16643 () Bool)

(assert (=> b!860851 (= e!479692 tp_is_empty!16643)))

(declare-fun b!860852 () Bool)

(declare-fun e!479694 () Bool)

(assert (=> b!860852 (= e!479694 true)))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!860852 (not (= (select (arr!23745 _keys!868) from!1053) k!854))))

(declare-fun lt!388128 () Unit!29314)

(assert (=> b!860852 (= lt!388128 e!479697)))

(declare-fun c!91899 () Bool)

(assert (=> b!860852 (= c!91899 (= (select (arr!23745 _keys!868) from!1053) k!854))))

(declare-datatypes ((V!27237 0))(
  ( (V!27238 (val!8369 Int)) )
))
(declare-datatypes ((tuple2!11050 0))(
  ( (tuple2!11051 (_1!5535 (_ BitVec 64)) (_2!5535 V!27237)) )
))
(declare-datatypes ((List!16921 0))(
  ( (Nil!16918) (Cons!16917 (h!18048 tuple2!11050) (t!23702 List!16921)) )
))
(declare-datatypes ((ListLongMap!9833 0))(
  ( (ListLongMap!9834 (toList!4932 List!16921)) )
))
(declare-fun lt!388130 () ListLongMap!9833)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((ValueCell!7882 0))(
  ( (ValueCellFull!7882 (v!10790 V!27237)) (EmptyCell!7882) )
))
(declare-datatypes ((array!49438 0))(
  ( (array!49439 (arr!23746 (Array (_ BitVec 32) ValueCell!7882)) (size!24187 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49438)

(declare-fun lt!388131 () ListLongMap!9833)

(declare-fun +!2233 (ListLongMap!9833 tuple2!11050) ListLongMap!9833)

(declare-fun get!12534 (ValueCell!7882 V!27237) V!27237)

(declare-fun dynLambda!1116 (Int (_ BitVec 64)) V!27237)

(assert (=> b!860852 (= lt!388130 (+!2233 lt!388131 (tuple2!11051 (select (arr!23745 _keys!868) from!1053) (get!12534 (select (arr!23746 _values!688) from!1053) (dynLambda!1116 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!860853 () Bool)

(declare-fun e!479693 () Bool)

(assert (=> b!860853 (= e!479693 (not e!479694))))

(declare-fun res!585153 () Bool)

(assert (=> b!860853 (=> res!585153 e!479694)))

(assert (=> b!860853 (= res!585153 (not (validKeyInArray!0 (select (arr!23745 _keys!868) from!1053))))))

(declare-fun lt!388132 () ListLongMap!9833)

(assert (=> b!860853 (= lt!388132 lt!388131)))

(declare-fun lt!388127 () ListLongMap!9833)

(declare-fun v!557 () V!27237)

(assert (=> b!860853 (= lt!388131 (+!2233 lt!388127 (tuple2!11051 k!854 v!557)))))

(declare-fun lt!388137 () array!49438)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!27237)

(declare-fun zeroValue!654 () V!27237)

(declare-fun getCurrentListMapNoExtraKeys!2912 (array!49436 array!49438 (_ BitVec 32) (_ BitVec 32) V!27237 V!27237 (_ BitVec 32) Int) ListLongMap!9833)

(assert (=> b!860853 (= lt!388132 (getCurrentListMapNoExtraKeys!2912 _keys!868 lt!388137 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!860853 (= lt!388127 (getCurrentListMapNoExtraKeys!2912 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun lt!388136 () Unit!29314)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!486 (array!49436 array!49438 (_ BitVec 32) (_ BitVec 32) V!27237 V!27237 (_ BitVec 32) (_ BitVec 64) V!27237 (_ BitVec 32) Int) Unit!29314)

(assert (=> b!860853 (= lt!388136 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!486 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!860854 () Bool)

(declare-fun Unit!29317 () Unit!29314)

(assert (=> b!860854 (= e!479697 Unit!29317)))

(declare-fun lt!388134 () Unit!29314)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49436 (_ BitVec 32) (_ BitVec 32)) Unit!29314)

(assert (=> b!860854 (= lt!388134 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-datatypes ((List!16922 0))(
  ( (Nil!16919) (Cons!16918 (h!18049 (_ BitVec 64)) (t!23703 List!16922)) )
))
(declare-fun arrayNoDuplicates!0 (array!49436 (_ BitVec 32) List!16922) Bool)

(assert (=> b!860854 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!16919)))

(declare-fun lt!388133 () Unit!29314)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49436 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29314)

(assert (=> b!860854 (= lt!388133 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49436 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!860854 (arrayContainsKey!0 _keys!868 k!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!388129 () Unit!29314)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49436 (_ BitVec 64) (_ BitVec 32) List!16922) Unit!29314)

(assert (=> b!860854 (= lt!388129 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k!854 from!1053 Nil!16919))))

(assert (=> b!860854 false))

(declare-fun b!860855 () Bool)

(declare-fun res!585158 () Bool)

(assert (=> b!860855 (=> (not res!585158) (not e!479696))))

(assert (=> b!860855 (= res!585158 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24186 _keys!868))))))

(declare-fun b!860857 () Bool)

(declare-fun res!585150 () Bool)

(assert (=> b!860857 (=> (not res!585150) (not e!479696))))

(assert (=> b!860857 (= res!585150 (and (= (size!24187 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24186 _keys!868) (size!24187 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!860858 () Bool)

(declare-fun res!585157 () Bool)

(assert (=> b!860858 (=> (not res!585157) (not e!479696))))

(assert (=> b!860858 (= res!585157 (and (= (select (arr!23745 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!860859 () Bool)

(assert (=> b!860859 (= e!479696 e!479693)))

(declare-fun res!585151 () Bool)

(assert (=> b!860859 (=> (not res!585151) (not e!479693))))

(assert (=> b!860859 (= res!585151 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(assert (=> b!860859 (= lt!388130 (getCurrentListMapNoExtraKeys!2912 _keys!868 lt!388137 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!860859 (= lt!388137 (array!49439 (store (arr!23746 _values!688) i!612 (ValueCellFull!7882 v!557)) (size!24187 _values!688)))))

(declare-fun lt!388135 () ListLongMap!9833)

(assert (=> b!860859 (= lt!388135 (getCurrentListMapNoExtraKeys!2912 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!860860 () Bool)

(declare-fun res!585152 () Bool)

(assert (=> b!860860 (=> (not res!585152) (not e!479696))))

(assert (=> b!860860 (= res!585152 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16919))))

(declare-fun mapNonEmpty!26564 () Bool)

(declare-fun mapRes!26564 () Bool)

(declare-fun tp!51026 () Bool)

(assert (=> mapNonEmpty!26564 (= mapRes!26564 (and tp!51026 e!479692))))

(declare-fun mapKey!26564 () (_ BitVec 32))

(declare-fun mapRest!26564 () (Array (_ BitVec 32) ValueCell!7882))

(declare-fun mapValue!26564 () ValueCell!7882)

(assert (=> mapNonEmpty!26564 (= (arr!23746 _values!688) (store mapRest!26564 mapKey!26564 mapValue!26564))))

(declare-fun mapIsEmpty!26564 () Bool)

(assert (=> mapIsEmpty!26564 mapRes!26564))

(declare-fun res!585156 () Bool)

(assert (=> start!73620 (=> (not res!585156) (not e!479696))))

(assert (=> start!73620 (= res!585156 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24186 _keys!868))))))

(assert (=> start!73620 e!479696))

(assert (=> start!73620 tp_is_empty!16643))

(assert (=> start!73620 true))

(assert (=> start!73620 tp!51025))

(declare-fun array_inv!18768 (array!49436) Bool)

(assert (=> start!73620 (array_inv!18768 _keys!868)))

(declare-fun e!479691 () Bool)

(declare-fun array_inv!18769 (array!49438) Bool)

(assert (=> start!73620 (and (array_inv!18769 _values!688) e!479691)))

(declare-fun b!860856 () Bool)

(declare-fun res!585155 () Bool)

(assert (=> b!860856 (=> (not res!585155) (not e!479696))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!860856 (= res!585155 (validMask!0 mask!1196))))

(declare-fun b!860861 () Bool)

(declare-fun e!479695 () Bool)

(assert (=> b!860861 (= e!479695 tp_is_empty!16643)))

(declare-fun b!860862 () Bool)

(assert (=> b!860862 (= e!479691 (and e!479695 mapRes!26564))))

(declare-fun condMapEmpty!26564 () Bool)

(declare-fun mapDefault!26564 () ValueCell!7882)

