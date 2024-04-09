; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74844 () Bool)

(assert start!74844)

(declare-fun b_free!15393 () Bool)

(declare-fun b_next!15393 () Bool)

(assert (=> start!74844 (= b_free!15393 (not b_next!15393))))

(declare-fun tp!53876 () Bool)

(declare-fun b_and!25471 () Bool)

(assert (=> start!74844 (= tp!53876 b_and!25471)))

(declare-fun b!881934 () Bool)

(declare-fun e!490846 () Bool)

(declare-fun e!490852 () Bool)

(declare-fun mapRes!28086 () Bool)

(assert (=> b!881934 (= e!490846 (and e!490852 mapRes!28086))))

(declare-fun condMapEmpty!28086 () Bool)

(declare-datatypes ((V!28563 0))(
  ( (V!28564 (val!8866 Int)) )
))
(declare-datatypes ((ValueCell!8379 0))(
  ( (ValueCellFull!8379 (v!11322 V!28563)) (EmptyCell!8379) )
))
(declare-datatypes ((array!51382 0))(
  ( (array!51383 (arr!24708 (Array (_ BitVec 32) ValueCell!8379)) (size!25149 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51382)

(declare-fun mapDefault!28086 () ValueCell!8379)

(assert (=> b!881934 (= condMapEmpty!28086 (= (arr!24708 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8379)) mapDefault!28086)))))

(declare-fun b!881935 () Bool)

(declare-fun res!599288 () Bool)

(declare-fun e!490851 () Bool)

(assert (=> b!881935 (=> (not res!599288) (not e!490851))))

(declare-datatypes ((array!51384 0))(
  ( (array!51385 (arr!24709 (Array (_ BitVec 32) (_ BitVec 64))) (size!25150 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51384)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51384 (_ BitVec 32)) Bool)

(assert (=> b!881935 (= res!599288 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!881936 () Bool)

(declare-fun tp_is_empty!17637 () Bool)

(assert (=> b!881936 (= e!490852 tp_is_empty!17637)))

(declare-fun res!599285 () Bool)

(assert (=> start!74844 (=> (not res!599285) (not e!490851))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!74844 (= res!599285 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25150 _keys!868))))))

(assert (=> start!74844 e!490851))

(assert (=> start!74844 tp_is_empty!17637))

(assert (=> start!74844 true))

(assert (=> start!74844 tp!53876))

(declare-fun array_inv!19444 (array!51384) Bool)

(assert (=> start!74844 (array_inv!19444 _keys!868)))

(declare-fun array_inv!19445 (array!51382) Bool)

(assert (=> start!74844 (and (array_inv!19445 _values!688) e!490846)))

(declare-fun b!881937 () Bool)

(declare-fun res!599283 () Bool)

(assert (=> b!881937 (=> (not res!599283) (not e!490851))))

(declare-datatypes ((List!17637 0))(
  ( (Nil!17634) (Cons!17633 (h!18764 (_ BitVec 64)) (t!24840 List!17637)) )
))
(declare-fun arrayNoDuplicates!0 (array!51384 (_ BitVec 32) List!17637) Bool)

(assert (=> b!881937 (= res!599283 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17634))))

(declare-fun b!881938 () Bool)

(declare-fun res!599281 () Bool)

(assert (=> b!881938 (=> (not res!599281) (not e!490851))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!881938 (= res!599281 (validKeyInArray!0 k0!854))))

(declare-fun b!881939 () Bool)

(declare-fun e!490848 () Bool)

(assert (=> b!881939 (= e!490848 (or (bvsge (size!25150 _keys!868) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) (size!25150 _keys!868)) (bvslt from!1053 (size!25150 _keys!868))))))

(declare-fun arrayContainsKey!0 (array!51384 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!881939 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((Unit!30072 0))(
  ( (Unit!30073) )
))
(declare-fun lt!399000 () Unit!30072)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!51384 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!30072)

(assert (=> b!881939 (= lt!399000 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(assert (=> b!881939 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17634)))

(declare-fun lt!398993 () Unit!30072)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!51384 (_ BitVec 32) (_ BitVec 32)) Unit!30072)

(assert (=> b!881939 (= lt!398993 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-fun b!881940 () Bool)

(declare-fun res!599289 () Bool)

(assert (=> b!881940 (=> (not res!599289) (not e!490851))))

(assert (=> b!881940 (= res!599289 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25150 _keys!868))))))

(declare-fun b!881941 () Bool)

(declare-fun e!490849 () Bool)

(declare-fun e!490850 () Bool)

(assert (=> b!881941 (= e!490849 (not e!490850))))

(declare-fun res!599286 () Bool)

(assert (=> b!881941 (=> res!599286 e!490850)))

(assert (=> b!881941 (= res!599286 (not (validKeyInArray!0 (select (arr!24709 _keys!868) from!1053))))))

(declare-datatypes ((tuple2!11770 0))(
  ( (tuple2!11771 (_1!5895 (_ BitVec 64)) (_2!5895 V!28563)) )
))
(declare-datatypes ((List!17638 0))(
  ( (Nil!17635) (Cons!17634 (h!18765 tuple2!11770) (t!24841 List!17638)) )
))
(declare-datatypes ((ListLongMap!10553 0))(
  ( (ListLongMap!10554 (toList!5292 List!17638)) )
))
(declare-fun lt!398996 () ListLongMap!10553)

(declare-fun lt!398997 () ListLongMap!10553)

(assert (=> b!881941 (= lt!398996 lt!398997)))

(declare-fun v!557 () V!28563)

(declare-fun lt!398995 () ListLongMap!10553)

(declare-fun +!2498 (ListLongMap!10553 tuple2!11770) ListLongMap!10553)

(assert (=> b!881941 (= lt!398997 (+!2498 lt!398995 (tuple2!11771 k0!854 v!557)))))

(declare-fun lt!398994 () array!51382)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!28563)

(declare-fun zeroValue!654 () V!28563)

(declare-fun getCurrentListMapNoExtraKeys!3251 (array!51384 array!51382 (_ BitVec 32) (_ BitVec 32) V!28563 V!28563 (_ BitVec 32) Int) ListLongMap!10553)

(assert (=> b!881941 (= lt!398996 (getCurrentListMapNoExtraKeys!3251 _keys!868 lt!398994 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!881941 (= lt!398995 (getCurrentListMapNoExtraKeys!3251 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!398999 () Unit!30072)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!725 (array!51384 array!51382 (_ BitVec 32) (_ BitVec 32) V!28563 V!28563 (_ BitVec 32) (_ BitVec 64) V!28563 (_ BitVec 32) Int) Unit!30072)

(assert (=> b!881941 (= lt!398999 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!725 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!881942 () Bool)

(assert (=> b!881942 (= e!490850 e!490848)))

(declare-fun res!599282 () Bool)

(assert (=> b!881942 (=> res!599282 e!490848)))

(assert (=> b!881942 (= res!599282 (not (= (select (arr!24709 _keys!868) from!1053) k0!854)))))

(declare-fun lt!399001 () ListLongMap!10553)

(declare-fun get!13022 (ValueCell!8379 V!28563) V!28563)

(declare-fun dynLambda!1257 (Int (_ BitVec 64)) V!28563)

(assert (=> b!881942 (= lt!399001 (+!2498 lt!398997 (tuple2!11771 (select (arr!24709 _keys!868) from!1053) (get!13022 (select (arr!24708 _values!688) from!1053) (dynLambda!1257 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!881943 () Bool)

(declare-fun res!599284 () Bool)

(assert (=> b!881943 (=> (not res!599284) (not e!490851))))

(assert (=> b!881943 (= res!599284 (and (= (select (arr!24709 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!881944 () Bool)

(declare-fun e!490847 () Bool)

(assert (=> b!881944 (= e!490847 tp_is_empty!17637)))

(declare-fun b!881945 () Bool)

(declare-fun res!599287 () Bool)

(assert (=> b!881945 (=> (not res!599287) (not e!490851))))

(assert (=> b!881945 (= res!599287 (and (= (size!25149 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25150 _keys!868) (size!25149 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!28086 () Bool)

(declare-fun tp!53877 () Bool)

(assert (=> mapNonEmpty!28086 (= mapRes!28086 (and tp!53877 e!490847))))

(declare-fun mapKey!28086 () (_ BitVec 32))

(declare-fun mapRest!28086 () (Array (_ BitVec 32) ValueCell!8379))

(declare-fun mapValue!28086 () ValueCell!8379)

(assert (=> mapNonEmpty!28086 (= (arr!24708 _values!688) (store mapRest!28086 mapKey!28086 mapValue!28086))))

(declare-fun b!881946 () Bool)

(assert (=> b!881946 (= e!490851 e!490849)))

(declare-fun res!599280 () Bool)

(assert (=> b!881946 (=> (not res!599280) (not e!490849))))

(assert (=> b!881946 (= res!599280 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(assert (=> b!881946 (= lt!399001 (getCurrentListMapNoExtraKeys!3251 _keys!868 lt!398994 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!881946 (= lt!398994 (array!51383 (store (arr!24708 _values!688) i!612 (ValueCellFull!8379 v!557)) (size!25149 _values!688)))))

(declare-fun lt!398998 () ListLongMap!10553)

(assert (=> b!881946 (= lt!398998 (getCurrentListMapNoExtraKeys!3251 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun mapIsEmpty!28086 () Bool)

(assert (=> mapIsEmpty!28086 mapRes!28086))

(declare-fun b!881947 () Bool)

(declare-fun res!599290 () Bool)

(assert (=> b!881947 (=> (not res!599290) (not e!490851))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!881947 (= res!599290 (validMask!0 mask!1196))))

(assert (= (and start!74844 res!599285) b!881947))

(assert (= (and b!881947 res!599290) b!881945))

(assert (= (and b!881945 res!599287) b!881935))

(assert (= (and b!881935 res!599288) b!881937))

(assert (= (and b!881937 res!599283) b!881940))

(assert (= (and b!881940 res!599289) b!881938))

(assert (= (and b!881938 res!599281) b!881943))

(assert (= (and b!881943 res!599284) b!881946))

(assert (= (and b!881946 res!599280) b!881941))

(assert (= (and b!881941 (not res!599286)) b!881942))

(assert (= (and b!881942 (not res!599282)) b!881939))

(assert (= (and b!881934 condMapEmpty!28086) mapIsEmpty!28086))

(assert (= (and b!881934 (not condMapEmpty!28086)) mapNonEmpty!28086))

(get-info :version)

(assert (= (and mapNonEmpty!28086 ((_ is ValueCellFull!8379) mapValue!28086)) b!881944))

(assert (= (and b!881934 ((_ is ValueCellFull!8379) mapDefault!28086)) b!881936))

(assert (= start!74844 b!881934))

(declare-fun b_lambda!12633 () Bool)

(assert (=> (not b_lambda!12633) (not b!881942)))

(declare-fun t!24839 () Bool)

(declare-fun tb!5059 () Bool)

(assert (=> (and start!74844 (= defaultEntry!696 defaultEntry!696) t!24839) tb!5059))

(declare-fun result!9741 () Bool)

(assert (=> tb!5059 (= result!9741 tp_is_empty!17637)))

(assert (=> b!881942 t!24839))

(declare-fun b_and!25473 () Bool)

(assert (= b_and!25471 (and (=> t!24839 result!9741) b_and!25473)))

(declare-fun m!821971 () Bool)

(assert (=> start!74844 m!821971))

(declare-fun m!821973 () Bool)

(assert (=> start!74844 m!821973))

(declare-fun m!821975 () Bool)

(assert (=> mapNonEmpty!28086 m!821975))

(declare-fun m!821977 () Bool)

(assert (=> b!881943 m!821977))

(declare-fun m!821979 () Bool)

(assert (=> b!881937 m!821979))

(declare-fun m!821981 () Bool)

(assert (=> b!881941 m!821981))

(declare-fun m!821983 () Bool)

(assert (=> b!881941 m!821983))

(declare-fun m!821985 () Bool)

(assert (=> b!881941 m!821985))

(assert (=> b!881941 m!821983))

(declare-fun m!821987 () Bool)

(assert (=> b!881941 m!821987))

(declare-fun m!821989 () Bool)

(assert (=> b!881941 m!821989))

(declare-fun m!821991 () Bool)

(assert (=> b!881941 m!821991))

(declare-fun m!821993 () Bool)

(assert (=> b!881947 m!821993))

(declare-fun m!821995 () Bool)

(assert (=> b!881946 m!821995))

(declare-fun m!821997 () Bool)

(assert (=> b!881946 m!821997))

(declare-fun m!821999 () Bool)

(assert (=> b!881946 m!821999))

(declare-fun m!822001 () Bool)

(assert (=> b!881942 m!822001))

(declare-fun m!822003 () Bool)

(assert (=> b!881942 m!822003))

(declare-fun m!822005 () Bool)

(assert (=> b!881942 m!822005))

(declare-fun m!822007 () Bool)

(assert (=> b!881942 m!822007))

(assert (=> b!881942 m!822003))

(assert (=> b!881942 m!821983))

(assert (=> b!881942 m!822005))

(declare-fun m!822009 () Bool)

(assert (=> b!881935 m!822009))

(declare-fun m!822011 () Bool)

(assert (=> b!881938 m!822011))

(declare-fun m!822013 () Bool)

(assert (=> b!881939 m!822013))

(declare-fun m!822015 () Bool)

(assert (=> b!881939 m!822015))

(declare-fun m!822017 () Bool)

(assert (=> b!881939 m!822017))

(declare-fun m!822019 () Bool)

(assert (=> b!881939 m!822019))

(check-sat tp_is_empty!17637 (not b!881947) (not b!881939) b_and!25473 (not mapNonEmpty!28086) (not b!881946) (not b!881937) (not b!881935) (not b_lambda!12633) (not b!881942) (not start!74844) (not b_next!15393) (not b!881938) (not b!881941))
(check-sat b_and!25473 (not b_next!15393))
