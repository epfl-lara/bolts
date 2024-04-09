; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73666 () Bool)

(assert start!73666)

(declare-fun b_free!14553 () Bool)

(declare-fun b_next!14553 () Bool)

(assert (=> start!73666 (= b_free!14553 (not b_next!14553))))

(declare-fun tp!51164 () Bool)

(declare-fun b_and!24103 () Bool)

(assert (=> start!73666 (= tp!51164 b_and!24103)))

(declare-fun b!861929 () Bool)

(declare-fun e!480245 () Bool)

(declare-fun e!480242 () Bool)

(declare-fun mapRes!26633 () Bool)

(assert (=> b!861929 (= e!480245 (and e!480242 mapRes!26633))))

(declare-fun condMapEmpty!26633 () Bool)

(declare-datatypes ((V!27299 0))(
  ( (V!27300 (val!8392 Int)) )
))
(declare-datatypes ((ValueCell!7905 0))(
  ( (ValueCellFull!7905 (v!10813 V!27299)) (EmptyCell!7905) )
))
(declare-datatypes ((array!49524 0))(
  ( (array!49525 (arr!23789 (Array (_ BitVec 32) ValueCell!7905)) (size!24230 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49524)

(declare-fun mapDefault!26633 () ValueCell!7905)

(assert (=> b!861929 (= condMapEmpty!26633 (= (arr!23789 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7905)) mapDefault!26633)))))

(declare-fun b!861930 () Bool)

(declare-fun res!585840 () Bool)

(declare-fun e!480243 () Bool)

(assert (=> b!861930 (=> (not res!585840) (not e!480243))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!861930 (= res!585840 (validMask!0 mask!1196))))

(declare-fun mapNonEmpty!26633 () Bool)

(declare-fun tp!51163 () Bool)

(declare-fun e!480248 () Bool)

(assert (=> mapNonEmpty!26633 (= mapRes!26633 (and tp!51163 e!480248))))

(declare-fun mapKey!26633 () (_ BitVec 32))

(declare-fun mapValue!26633 () ValueCell!7905)

(declare-fun mapRest!26633 () (Array (_ BitVec 32) ValueCell!7905))

(assert (=> mapNonEmpty!26633 (= (arr!23789 _values!688) (store mapRest!26633 mapKey!26633 mapValue!26633))))

(declare-fun b!861931 () Bool)

(declare-fun res!585849 () Bool)

(assert (=> b!861931 (=> (not res!585849) (not e!480243))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!49526 0))(
  ( (array!49527 (arr!23790 (Array (_ BitVec 32) (_ BitVec 64))) (size!24231 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49526)

(assert (=> b!861931 (= res!585849 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24231 _keys!868))))))

(declare-fun b!861932 () Bool)

(declare-fun res!585846 () Bool)

(assert (=> b!861932 (=> (not res!585846) (not e!480243))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!861932 (= res!585846 (validKeyInArray!0 k0!854))))

(declare-fun b!861933 () Bool)

(declare-fun e!480249 () Bool)

(declare-fun e!480247 () Bool)

(assert (=> b!861933 (= e!480249 (not e!480247))))

(declare-fun res!585848 () Bool)

(assert (=> b!861933 (=> res!585848 e!480247)))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!861933 (= res!585848 (not (validKeyInArray!0 (select (arr!23790 _keys!868) from!1053))))))

(declare-datatypes ((tuple2!11092 0))(
  ( (tuple2!11093 (_1!5556 (_ BitVec 64)) (_2!5556 V!27299)) )
))
(declare-datatypes ((List!16962 0))(
  ( (Nil!16959) (Cons!16958 (h!18089 tuple2!11092) (t!23789 List!16962)) )
))
(declare-datatypes ((ListLongMap!9875 0))(
  ( (ListLongMap!9876 (toList!4953 List!16962)) )
))
(declare-fun lt!388886 () ListLongMap!9875)

(declare-fun lt!388891 () ListLongMap!9875)

(assert (=> b!861933 (= lt!388886 lt!388891)))

(declare-fun v!557 () V!27299)

(declare-fun lt!388893 () ListLongMap!9875)

(declare-fun +!2250 (ListLongMap!9875 tuple2!11092) ListLongMap!9875)

(assert (=> b!861933 (= lt!388891 (+!2250 lt!388893 (tuple2!11093 k0!854 v!557)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun lt!388895 () array!49524)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!27299)

(declare-fun zeroValue!654 () V!27299)

(declare-fun getCurrentListMapNoExtraKeys!2930 (array!49526 array!49524 (_ BitVec 32) (_ BitVec 32) V!27299 V!27299 (_ BitVec 32) Int) ListLongMap!9875)

(assert (=> b!861933 (= lt!388886 (getCurrentListMapNoExtraKeys!2930 _keys!868 lt!388895 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!861933 (= lt!388893 (getCurrentListMapNoExtraKeys!2930 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-datatypes ((Unit!29389 0))(
  ( (Unit!29390) )
))
(declare-fun lt!388888 () Unit!29389)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!500 (array!49526 array!49524 (_ BitVec 32) (_ BitVec 32) V!27299 V!27299 (_ BitVec 32) (_ BitVec 64) V!27299 (_ BitVec 32) Int) Unit!29389)

(assert (=> b!861933 (= lt!388888 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!500 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!861934 () Bool)

(declare-fun res!585844 () Bool)

(assert (=> b!861934 (=> (not res!585844) (not e!480243))))

(assert (=> b!861934 (= res!585844 (and (= (size!24230 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24231 _keys!868) (size!24230 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun res!585843 () Bool)

(assert (=> start!73666 (=> (not res!585843) (not e!480243))))

(assert (=> start!73666 (= res!585843 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24231 _keys!868))))))

(assert (=> start!73666 e!480243))

(declare-fun tp_is_empty!16689 () Bool)

(assert (=> start!73666 tp_is_empty!16689))

(assert (=> start!73666 true))

(assert (=> start!73666 tp!51164))

(declare-fun array_inv!18798 (array!49526) Bool)

(assert (=> start!73666 (array_inv!18798 _keys!868)))

(declare-fun array_inv!18799 (array!49524) Bool)

(assert (=> start!73666 (and (array_inv!18799 _values!688) e!480245)))

(declare-fun b!861935 () Bool)

(declare-fun e!480244 () Unit!29389)

(declare-fun Unit!29391 () Unit!29389)

(assert (=> b!861935 (= e!480244 Unit!29391)))

(declare-fun b!861936 () Bool)

(declare-fun Unit!29392 () Unit!29389)

(assert (=> b!861936 (= e!480244 Unit!29392)))

(declare-fun lt!388889 () Unit!29389)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49526 (_ BitVec 32) (_ BitVec 32)) Unit!29389)

(assert (=> b!861936 (= lt!388889 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-datatypes ((List!16963 0))(
  ( (Nil!16960) (Cons!16959 (h!18090 (_ BitVec 64)) (t!23790 List!16963)) )
))
(declare-fun arrayNoDuplicates!0 (array!49526 (_ BitVec 32) List!16963) Bool)

(assert (=> b!861936 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!16960)))

(declare-fun lt!388894 () Unit!29389)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49526 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29389)

(assert (=> b!861936 (= lt!388894 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49526 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!861936 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!388896 () Unit!29389)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49526 (_ BitVec 64) (_ BitVec 32) List!16963) Unit!29389)

(assert (=> b!861936 (= lt!388896 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k0!854 from!1053 Nil!16960))))

(assert (=> b!861936 false))

(declare-fun b!861937 () Bool)

(assert (=> b!861937 (= e!480247 true)))

(assert (=> b!861937 (not (= (select (arr!23790 _keys!868) from!1053) k0!854))))

(declare-fun lt!388892 () Unit!29389)

(assert (=> b!861937 (= lt!388892 e!480244)))

(declare-fun c!91968 () Bool)

(assert (=> b!861937 (= c!91968 (= (select (arr!23790 _keys!868) from!1053) k0!854))))

(declare-fun lt!388890 () ListLongMap!9875)

(declare-fun get!12565 (ValueCell!7905 V!27299) V!27299)

(declare-fun dynLambda!1131 (Int (_ BitVec 64)) V!27299)

(assert (=> b!861937 (= lt!388890 (+!2250 lt!388891 (tuple2!11093 (select (arr!23790 _keys!868) from!1053) (get!12565 (select (arr!23789 _values!688) from!1053) (dynLambda!1131 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun mapIsEmpty!26633 () Bool)

(assert (=> mapIsEmpty!26633 mapRes!26633))

(declare-fun b!861938 () Bool)

(declare-fun res!585841 () Bool)

(assert (=> b!861938 (=> (not res!585841) (not e!480243))))

(assert (=> b!861938 (= res!585841 (and (= (select (arr!23790 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!861939 () Bool)

(assert (=> b!861939 (= e!480243 e!480249)))

(declare-fun res!585845 () Bool)

(assert (=> b!861939 (=> (not res!585845) (not e!480249))))

(assert (=> b!861939 (= res!585845 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(assert (=> b!861939 (= lt!388890 (getCurrentListMapNoExtraKeys!2930 _keys!868 lt!388895 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!861939 (= lt!388895 (array!49525 (store (arr!23789 _values!688) i!612 (ValueCellFull!7905 v!557)) (size!24230 _values!688)))))

(declare-fun lt!388887 () ListLongMap!9875)

(assert (=> b!861939 (= lt!388887 (getCurrentListMapNoExtraKeys!2930 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!861940 () Bool)

(declare-fun res!585847 () Bool)

(assert (=> b!861940 (=> (not res!585847) (not e!480243))))

(assert (=> b!861940 (= res!585847 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16960))))

(declare-fun b!861941 () Bool)

(assert (=> b!861941 (= e!480242 tp_is_empty!16689)))

(declare-fun b!861942 () Bool)

(assert (=> b!861942 (= e!480248 tp_is_empty!16689)))

(declare-fun b!861943 () Bool)

(declare-fun res!585842 () Bool)

(assert (=> b!861943 (=> (not res!585842) (not e!480243))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49526 (_ BitVec 32)) Bool)

(assert (=> b!861943 (= res!585842 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(assert (= (and start!73666 res!585843) b!861930))

(assert (= (and b!861930 res!585840) b!861934))

(assert (= (and b!861934 res!585844) b!861943))

(assert (= (and b!861943 res!585842) b!861940))

(assert (= (and b!861940 res!585847) b!861931))

(assert (= (and b!861931 res!585849) b!861932))

(assert (= (and b!861932 res!585846) b!861938))

(assert (= (and b!861938 res!585841) b!861939))

(assert (= (and b!861939 res!585845) b!861933))

(assert (= (and b!861933 (not res!585848)) b!861937))

(assert (= (and b!861937 c!91968) b!861936))

(assert (= (and b!861937 (not c!91968)) b!861935))

(assert (= (and b!861929 condMapEmpty!26633) mapIsEmpty!26633))

(assert (= (and b!861929 (not condMapEmpty!26633)) mapNonEmpty!26633))

(get-info :version)

(assert (= (and mapNonEmpty!26633 ((_ is ValueCellFull!7905) mapValue!26633)) b!861942))

(assert (= (and b!861929 ((_ is ValueCellFull!7905) mapDefault!26633)) b!861941))

(assert (= start!73666 b!861929))

(declare-fun b_lambda!11935 () Bool)

(assert (=> (not b_lambda!11935) (not b!861937)))

(declare-fun t!23788 () Bool)

(declare-fun tb!4683 () Bool)

(assert (=> (and start!73666 (= defaultEntry!696 defaultEntry!696) t!23788) tb!4683))

(declare-fun result!8969 () Bool)

(assert (=> tb!4683 (= result!8969 tp_is_empty!16689)))

(assert (=> b!861937 t!23788))

(declare-fun b_and!24105 () Bool)

(assert (= b_and!24103 (and (=> t!23788 result!8969) b_and!24105)))

(declare-fun m!803003 () Bool)

(assert (=> b!861936 m!803003))

(declare-fun m!803005 () Bool)

(assert (=> b!861936 m!803005))

(declare-fun m!803007 () Bool)

(assert (=> b!861936 m!803007))

(declare-fun m!803009 () Bool)

(assert (=> b!861936 m!803009))

(declare-fun m!803011 () Bool)

(assert (=> b!861936 m!803011))

(declare-fun m!803013 () Bool)

(assert (=> b!861932 m!803013))

(declare-fun m!803015 () Bool)

(assert (=> b!861930 m!803015))

(declare-fun m!803017 () Bool)

(assert (=> b!861937 m!803017))

(declare-fun m!803019 () Bool)

(assert (=> b!861937 m!803019))

(declare-fun m!803021 () Bool)

(assert (=> b!861937 m!803021))

(declare-fun m!803023 () Bool)

(assert (=> b!861937 m!803023))

(assert (=> b!861937 m!803019))

(declare-fun m!803025 () Bool)

(assert (=> b!861937 m!803025))

(assert (=> b!861937 m!803021))

(declare-fun m!803027 () Bool)

(assert (=> b!861943 m!803027))

(declare-fun m!803029 () Bool)

(assert (=> mapNonEmpty!26633 m!803029))

(declare-fun m!803031 () Bool)

(assert (=> b!861939 m!803031))

(declare-fun m!803033 () Bool)

(assert (=> b!861939 m!803033))

(declare-fun m!803035 () Bool)

(assert (=> b!861939 m!803035))

(declare-fun m!803037 () Bool)

(assert (=> b!861933 m!803037))

(assert (=> b!861933 m!803025))

(declare-fun m!803039 () Bool)

(assert (=> b!861933 m!803039))

(assert (=> b!861933 m!803025))

(declare-fun m!803041 () Bool)

(assert (=> b!861933 m!803041))

(declare-fun m!803043 () Bool)

(assert (=> b!861933 m!803043))

(declare-fun m!803045 () Bool)

(assert (=> b!861933 m!803045))

(declare-fun m!803047 () Bool)

(assert (=> b!861938 m!803047))

(declare-fun m!803049 () Bool)

(assert (=> b!861940 m!803049))

(declare-fun m!803051 () Bool)

(assert (=> start!73666 m!803051))

(declare-fun m!803053 () Bool)

(assert (=> start!73666 m!803053))

(check-sat (not mapNonEmpty!26633) (not b_next!14553) (not b!861933) (not b!861937) (not b!861932) tp_is_empty!16689 (not b!861936) b_and!24105 (not b_lambda!11935) (not b!861930) (not b!861939) (not start!73666) (not b!861940) (not b!861943))
(check-sat b_and!24105 (not b_next!14553))
