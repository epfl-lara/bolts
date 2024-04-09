; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74926 () Bool)

(assert start!74926)

(declare-fun b_free!15417 () Bool)

(declare-fun b_next!15417 () Bool)

(assert (=> start!74926 (= b_free!15417 (not b_next!15417))))

(declare-fun tp!53954 () Bool)

(declare-fun b_and!25551 () Bool)

(assert (=> start!74926 (= tp!53954 b_and!25551)))

(declare-fun b!882842 () Bool)

(declare-fun res!599903 () Bool)

(declare-fun e!491384 () Bool)

(assert (=> b!882842 (=> (not res!599903) (not e!491384))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(declare-datatypes ((array!51434 0))(
  ( (array!51435 (arr!24732 (Array (_ BitVec 32) (_ BitVec 64))) (size!25173 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51434)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!882842 (= res!599903 (and (= (select (arr!24732 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!882843 () Bool)

(declare-fun e!491381 () Bool)

(declare-fun e!491385 () Bool)

(assert (=> b!882843 (= e!491381 (not e!491385))))

(declare-fun res!599896 () Bool)

(assert (=> b!882843 (=> res!599896 e!491385)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!882843 (= res!599896 (not (validKeyInArray!0 (select (arr!24732 _keys!868) from!1053))))))

(declare-datatypes ((V!28595 0))(
  ( (V!28596 (val!8878 Int)) )
))
(declare-datatypes ((tuple2!11790 0))(
  ( (tuple2!11791 (_1!5905 (_ BitVec 64)) (_2!5905 V!28595)) )
))
(declare-datatypes ((List!17657 0))(
  ( (Nil!17654) (Cons!17653 (h!18784 tuple2!11790) (t!24884 List!17657)) )
))
(declare-datatypes ((ListLongMap!10573 0))(
  ( (ListLongMap!10574 (toList!5302 List!17657)) )
))
(declare-fun lt!399496 () ListLongMap!10573)

(declare-fun lt!399491 () ListLongMap!10573)

(assert (=> b!882843 (= lt!399496 lt!399491)))

(declare-fun v!557 () V!28595)

(declare-fun lt!399494 () ListLongMap!10573)

(declare-fun +!2507 (ListLongMap!10573 tuple2!11790) ListLongMap!10573)

(assert (=> b!882843 (= lt!399491 (+!2507 lt!399494 (tuple2!11791 k0!854 v!557)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((ValueCell!8391 0))(
  ( (ValueCellFull!8391 (v!11343 V!28595)) (EmptyCell!8391) )
))
(declare-datatypes ((array!51436 0))(
  ( (array!51437 (arr!24733 (Array (_ BitVec 32) ValueCell!8391)) (size!25174 (_ BitVec 32))) )
))
(declare-fun lt!399495 () array!51436)

(declare-fun minValue!654 () V!28595)

(declare-fun zeroValue!654 () V!28595)

(declare-fun getCurrentListMapNoExtraKeys!3259 (array!51434 array!51436 (_ BitVec 32) (_ BitVec 32) V!28595 V!28595 (_ BitVec 32) Int) ListLongMap!10573)

(assert (=> b!882843 (= lt!399496 (getCurrentListMapNoExtraKeys!3259 _keys!868 lt!399495 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun _values!688 () array!51436)

(assert (=> b!882843 (= lt!399494 (getCurrentListMapNoExtraKeys!3259 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-datatypes ((Unit!30088 0))(
  ( (Unit!30089) )
))
(declare-fun lt!399489 () Unit!30088)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!732 (array!51434 array!51436 (_ BitVec 32) (_ BitVec 32) V!28595 V!28595 (_ BitVec 32) (_ BitVec 64) V!28595 (_ BitVec 32) Int) Unit!30088)

(assert (=> b!882843 (= lt!399489 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!732 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapNonEmpty!28128 () Bool)

(declare-fun mapRes!28128 () Bool)

(declare-fun tp!53955 () Bool)

(declare-fun e!491386 () Bool)

(assert (=> mapNonEmpty!28128 (= mapRes!28128 (and tp!53955 e!491386))))

(declare-fun mapValue!28128 () ValueCell!8391)

(declare-fun mapRest!28128 () (Array (_ BitVec 32) ValueCell!8391))

(declare-fun mapKey!28128 () (_ BitVec 32))

(assert (=> mapNonEmpty!28128 (= (arr!24733 _values!688) (store mapRest!28128 mapKey!28128 mapValue!28128))))

(declare-fun b!882844 () Bool)

(declare-fun res!599895 () Bool)

(assert (=> b!882844 (=> (not res!599895) (not e!491384))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!882844 (= res!599895 (validMask!0 mask!1196))))

(declare-fun b!882845 () Bool)

(declare-fun tp_is_empty!17661 () Bool)

(assert (=> b!882845 (= e!491386 tp_is_empty!17661)))

(declare-fun b!882846 () Bool)

(assert (=> b!882846 (= e!491384 e!491381)))

(declare-fun res!599905 () Bool)

(assert (=> b!882846 (=> (not res!599905) (not e!491381))))

(assert (=> b!882846 (= res!599905 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!399488 () ListLongMap!10573)

(assert (=> b!882846 (= lt!399488 (getCurrentListMapNoExtraKeys!3259 _keys!868 lt!399495 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!882846 (= lt!399495 (array!51437 (store (arr!24733 _values!688) i!612 (ValueCellFull!8391 v!557)) (size!25174 _values!688)))))

(declare-fun lt!399487 () ListLongMap!10573)

(assert (=> b!882846 (= lt!399487 (getCurrentListMapNoExtraKeys!3259 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!882847 () Bool)

(declare-fun res!599900 () Bool)

(assert (=> b!882847 (=> (not res!599900) (not e!491384))))

(assert (=> b!882847 (= res!599900 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25173 _keys!868))))))

(declare-fun b!882848 () Bool)

(declare-fun res!599902 () Bool)

(assert (=> b!882848 (=> (not res!599902) (not e!491384))))

(assert (=> b!882848 (= res!599902 (and (= (size!25174 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25173 _keys!868) (size!25174 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!882849 () Bool)

(declare-fun res!599901 () Bool)

(declare-fun e!491380 () Bool)

(assert (=> b!882849 (=> res!599901 e!491380)))

(declare-datatypes ((List!17658 0))(
  ( (Nil!17655) (Cons!17654 (h!18785 (_ BitVec 64)) (t!24885 List!17658)) )
))
(declare-fun noDuplicate!1324 (List!17658) Bool)

(assert (=> b!882849 (= res!599901 (not (noDuplicate!1324 Nil!17655)))))

(declare-fun b!882850 () Bool)

(declare-fun e!491382 () Bool)

(assert (=> b!882850 (= e!491382 tp_is_empty!17661)))

(declare-fun b!882851 () Bool)

(declare-fun res!599894 () Bool)

(assert (=> b!882851 (=> (not res!599894) (not e!491384))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51434 (_ BitVec 32)) Bool)

(assert (=> b!882851 (= res!599894 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!882852 () Bool)

(declare-fun res!599892 () Bool)

(assert (=> b!882852 (=> (not res!599892) (not e!491384))))

(declare-fun arrayNoDuplicates!0 (array!51434 (_ BitVec 32) List!17658) Bool)

(assert (=> b!882852 (= res!599892 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17655))))

(declare-fun mapIsEmpty!28128 () Bool)

(assert (=> mapIsEmpty!28128 mapRes!28128))

(declare-fun b!882853 () Bool)

(declare-fun e!491383 () Bool)

(assert (=> b!882853 (= e!491385 e!491383)))

(declare-fun res!599904 () Bool)

(assert (=> b!882853 (=> res!599904 e!491383)))

(assert (=> b!882853 (= res!599904 (not (= (select (arr!24732 _keys!868) from!1053) k0!854)))))

(declare-fun get!13042 (ValueCell!8391 V!28595) V!28595)

(declare-fun dynLambda!1265 (Int (_ BitVec 64)) V!28595)

(assert (=> b!882853 (= lt!399488 (+!2507 lt!399491 (tuple2!11791 (select (arr!24732 _keys!868) from!1053) (get!13042 (select (arr!24733 _values!688) from!1053) (dynLambda!1265 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!882854 () Bool)

(assert (=> b!882854 (= e!491383 e!491380)))

(declare-fun res!599897 () Bool)

(assert (=> b!882854 (=> res!599897 e!491380)))

(assert (=> b!882854 (= res!599897 (or (bvsge (size!25173 _keys!868) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) (size!25173 _keys!868)) (bvsge from!1053 (size!25173 _keys!868))))))

(declare-fun arrayContainsKey!0 (array!51434 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!882854 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!399490 () Unit!30088)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!51434 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!30088)

(assert (=> b!882854 (= lt!399490 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(assert (=> b!882854 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17655)))

(declare-fun lt!399492 () Unit!30088)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!51434 (_ BitVec 32) (_ BitVec 32)) Unit!30088)

(assert (=> b!882854 (= lt!399492 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-fun b!882855 () Bool)

(declare-fun res!599893 () Bool)

(assert (=> b!882855 (=> (not res!599893) (not e!491384))))

(assert (=> b!882855 (= res!599893 (validKeyInArray!0 k0!854))))

(declare-fun b!882856 () Bool)

(assert (=> b!882856 (= e!491380 true)))

(declare-fun lt!399493 () Bool)

(declare-fun contains!4272 (List!17658 (_ BitVec 64)) Bool)

(assert (=> b!882856 (= lt!399493 (contains!4272 Nil!17655 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!882858 () Bool)

(declare-fun e!491379 () Bool)

(assert (=> b!882858 (= e!491379 (and e!491382 mapRes!28128))))

(declare-fun condMapEmpty!28128 () Bool)

(declare-fun mapDefault!28128 () ValueCell!8391)

(assert (=> b!882858 (= condMapEmpty!28128 (= (arr!24733 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8391)) mapDefault!28128)))))

(declare-fun res!599898 () Bool)

(assert (=> start!74926 (=> (not res!599898) (not e!491384))))

(assert (=> start!74926 (= res!599898 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25173 _keys!868))))))

(assert (=> start!74926 e!491384))

(assert (=> start!74926 tp_is_empty!17661))

(assert (=> start!74926 true))

(assert (=> start!74926 tp!53954))

(declare-fun array_inv!19456 (array!51434) Bool)

(assert (=> start!74926 (array_inv!19456 _keys!868)))

(declare-fun array_inv!19457 (array!51436) Bool)

(assert (=> start!74926 (and (array_inv!19457 _values!688) e!491379)))

(declare-fun b!882857 () Bool)

(declare-fun res!599899 () Bool)

(assert (=> b!882857 (=> res!599899 e!491380)))

(assert (=> b!882857 (= res!599899 (contains!4272 Nil!17655 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!74926 res!599898) b!882844))

(assert (= (and b!882844 res!599895) b!882848))

(assert (= (and b!882848 res!599902) b!882851))

(assert (= (and b!882851 res!599894) b!882852))

(assert (= (and b!882852 res!599892) b!882847))

(assert (= (and b!882847 res!599900) b!882855))

(assert (= (and b!882855 res!599893) b!882842))

(assert (= (and b!882842 res!599903) b!882846))

(assert (= (and b!882846 res!599905) b!882843))

(assert (= (and b!882843 (not res!599896)) b!882853))

(assert (= (and b!882853 (not res!599904)) b!882854))

(assert (= (and b!882854 (not res!599897)) b!882849))

(assert (= (and b!882849 (not res!599901)) b!882857))

(assert (= (and b!882857 (not res!599899)) b!882856))

(assert (= (and b!882858 condMapEmpty!28128) mapIsEmpty!28128))

(assert (= (and b!882858 (not condMapEmpty!28128)) mapNonEmpty!28128))

(get-info :version)

(assert (= (and mapNonEmpty!28128 ((_ is ValueCellFull!8391) mapValue!28128)) b!882845))

(assert (= (and b!882858 ((_ is ValueCellFull!8391) mapDefault!28128)) b!882850))

(assert (= start!74926 b!882858))

(declare-fun b_lambda!12725 () Bool)

(assert (=> (not b_lambda!12725) (not b!882853)))

(declare-fun t!24883 () Bool)

(declare-fun tb!5083 () Bool)

(assert (=> (and start!74926 (= defaultEntry!696 defaultEntry!696) t!24883) tb!5083))

(declare-fun result!9793 () Bool)

(assert (=> tb!5083 (= result!9793 tp_is_empty!17661)))

(assert (=> b!882853 t!24883))

(declare-fun b_and!25553 () Bool)

(assert (= b_and!25551 (and (=> t!24883 result!9793) b_and!25553)))

(declare-fun m!822953 () Bool)

(assert (=> b!882856 m!822953))

(declare-fun m!822955 () Bool)

(assert (=> b!882851 m!822955))

(declare-fun m!822957 () Bool)

(assert (=> b!882844 m!822957))

(declare-fun m!822959 () Bool)

(assert (=> b!882842 m!822959))

(declare-fun m!822961 () Bool)

(assert (=> mapNonEmpty!28128 m!822961))

(declare-fun m!822963 () Bool)

(assert (=> b!882857 m!822963))

(declare-fun m!822965 () Bool)

(assert (=> b!882854 m!822965))

(declare-fun m!822967 () Bool)

(assert (=> b!882854 m!822967))

(declare-fun m!822969 () Bool)

(assert (=> b!882854 m!822969))

(declare-fun m!822971 () Bool)

(assert (=> b!882854 m!822971))

(declare-fun m!822973 () Bool)

(assert (=> b!882843 m!822973))

(declare-fun m!822975 () Bool)

(assert (=> b!882843 m!822975))

(declare-fun m!822977 () Bool)

(assert (=> b!882843 m!822977))

(assert (=> b!882843 m!822975))

(declare-fun m!822979 () Bool)

(assert (=> b!882843 m!822979))

(declare-fun m!822981 () Bool)

(assert (=> b!882843 m!822981))

(declare-fun m!822983 () Bool)

(assert (=> b!882843 m!822983))

(declare-fun m!822985 () Bool)

(assert (=> b!882849 m!822985))

(declare-fun m!822987 () Bool)

(assert (=> b!882852 m!822987))

(declare-fun m!822989 () Bool)

(assert (=> b!882846 m!822989))

(declare-fun m!822991 () Bool)

(assert (=> b!882846 m!822991))

(declare-fun m!822993 () Bool)

(assert (=> b!882846 m!822993))

(declare-fun m!822995 () Bool)

(assert (=> start!74926 m!822995))

(declare-fun m!822997 () Bool)

(assert (=> start!74926 m!822997))

(declare-fun m!822999 () Bool)

(assert (=> b!882855 m!822999))

(declare-fun m!823001 () Bool)

(assert (=> b!882853 m!823001))

(declare-fun m!823003 () Bool)

(assert (=> b!882853 m!823003))

(declare-fun m!823005 () Bool)

(assert (=> b!882853 m!823005))

(declare-fun m!823007 () Bool)

(assert (=> b!882853 m!823007))

(assert (=> b!882853 m!823003))

(assert (=> b!882853 m!822975))

(assert (=> b!882853 m!823005))

(check-sat (not b!882846) (not b!882851) (not b!882855) (not b_next!15417) (not b!882849) tp_is_empty!17661 (not mapNonEmpty!28128) (not start!74926) (not b!882843) b_and!25553 (not b!882854) (not b!882844) (not b_lambda!12725) (not b!882856) (not b!882853) (not b!882857) (not b!882852))
(check-sat b_and!25553 (not b_next!15417))
