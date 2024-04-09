; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73270 () Bool)

(assert start!73270)

(declare-fun b_free!14157 () Bool)

(declare-fun b_next!14157 () Bool)

(assert (=> start!73270 (= b_free!14157 (not b_next!14157))))

(declare-fun tp!49975 () Bool)

(declare-fun b_and!23491 () Bool)

(assert (=> start!73270 (= tp!49975 b_and!23491)))

(declare-fun b!853694 () Bool)

(declare-fun res!579898 () Bool)

(declare-fun e!476094 () Bool)

(assert (=> b!853694 (=> (not res!579898) (not e!476094))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(declare-datatypes ((array!48768 0))(
  ( (array!48769 (arr!23411 (Array (_ BitVec 32) (_ BitVec 64))) (size!23852 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48768)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!853694 (= res!579898 (and (= (select (arr!23411 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!853695 () Bool)

(declare-fun e!476099 () Bool)

(declare-fun e!476098 () Bool)

(declare-fun mapRes!26039 () Bool)

(assert (=> b!853695 (= e!476099 (and e!476098 mapRes!26039))))

(declare-fun condMapEmpty!26039 () Bool)

(declare-datatypes ((V!26771 0))(
  ( (V!26772 (val!8194 Int)) )
))
(declare-datatypes ((ValueCell!7707 0))(
  ( (ValueCellFull!7707 (v!10615 V!26771)) (EmptyCell!7707) )
))
(declare-datatypes ((array!48770 0))(
  ( (array!48771 (arr!23412 (Array (_ BitVec 32) ValueCell!7707)) (size!23853 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48770)

(declare-fun mapDefault!26039 () ValueCell!7707)

(assert (=> b!853695 (= condMapEmpty!26039 (= (arr!23412 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7707)) mapDefault!26039)))))

(declare-fun b!853696 () Bool)

(declare-fun tp_is_empty!16293 () Bool)

(assert (=> b!853696 (= e!476098 tp_is_empty!16293)))

(declare-fun mapIsEmpty!26039 () Bool)

(assert (=> mapIsEmpty!26039 mapRes!26039))

(declare-fun res!579899 () Bool)

(assert (=> start!73270 (=> (not res!579899) (not e!476094))))

(assert (=> start!73270 (= res!579899 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23852 _keys!868))))))

(assert (=> start!73270 e!476094))

(assert (=> start!73270 tp_is_empty!16293))

(assert (=> start!73270 true))

(assert (=> start!73270 tp!49975))

(declare-fun array_inv!18540 (array!48768) Bool)

(assert (=> start!73270 (array_inv!18540 _keys!868)))

(declare-fun array_inv!18541 (array!48770) Bool)

(assert (=> start!73270 (and (array_inv!18541 _values!688) e!476099)))

(declare-fun b!853697 () Bool)

(declare-fun res!579893 () Bool)

(assert (=> b!853697 (=> (not res!579893) (not e!476094))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(assert (=> b!853697 (= res!579893 (and (= (size!23853 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23852 _keys!868) (size!23853 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!853698 () Bool)

(declare-fun e!476095 () Bool)

(assert (=> b!853698 (= e!476094 e!476095)))

(declare-fun res!579897 () Bool)

(assert (=> b!853698 (=> (not res!579897) (not e!476095))))

(assert (=> b!853698 (= res!579897 (= from!1053 i!612))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!10784 0))(
  ( (tuple2!10785 (_1!5402 (_ BitVec 64)) (_2!5402 V!26771)) )
))
(declare-datatypes ((List!16661 0))(
  ( (Nil!16658) (Cons!16657 (h!17788 tuple2!10784) (t!23272 List!16661)) )
))
(declare-datatypes ((ListLongMap!9567 0))(
  ( (ListLongMap!9568 (toList!4799 List!16661)) )
))
(declare-fun lt!384939 () ListLongMap!9567)

(declare-fun minValue!654 () V!26771)

(declare-fun lt!384947 () array!48770)

(declare-fun zeroValue!654 () V!26771)

(declare-fun getCurrentListMapNoExtraKeys!2781 (array!48768 array!48770 (_ BitVec 32) (_ BitVec 32) V!26771 V!26771 (_ BitVec 32) Int) ListLongMap!9567)

(assert (=> b!853698 (= lt!384939 (getCurrentListMapNoExtraKeys!2781 _keys!868 lt!384947 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!26771)

(assert (=> b!853698 (= lt!384947 (array!48771 (store (arr!23412 _values!688) i!612 (ValueCellFull!7707 v!557)) (size!23853 _values!688)))))

(declare-fun lt!384940 () ListLongMap!9567)

(assert (=> b!853698 (= lt!384940 (getCurrentListMapNoExtraKeys!2781 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!853699 () Bool)

(declare-fun res!579900 () Bool)

(assert (=> b!853699 (=> (not res!579900) (not e!476094))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!853699 (= res!579900 (validKeyInArray!0 k0!854))))

(declare-fun b!853700 () Bool)

(declare-fun e!476096 () Bool)

(assert (=> b!853700 (= e!476095 (not e!476096))))

(declare-fun res!579896 () Bool)

(assert (=> b!853700 (=> res!579896 e!476096)))

(assert (=> b!853700 (= res!579896 (not (validKeyInArray!0 (select (arr!23411 _keys!868) from!1053))))))

(declare-fun e!476093 () Bool)

(assert (=> b!853700 e!476093))

(declare-fun c!91824 () Bool)

(assert (=> b!853700 (= c!91824 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!29120 0))(
  ( (Unit!29121) )
))
(declare-fun lt!384946 () Unit!29120)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!400 (array!48768 array!48770 (_ BitVec 32) (_ BitVec 32) V!26771 V!26771 (_ BitVec 32) (_ BitVec 64) V!26771 (_ BitVec 32) Int) Unit!29120)

(assert (=> b!853700 (= lt!384946 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!400 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun bm!38323 () Bool)

(declare-fun call!38326 () ListLongMap!9567)

(assert (=> bm!38323 (= call!38326 (getCurrentListMapNoExtraKeys!2781 _keys!868 lt!384947 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!853701 () Bool)

(declare-fun call!38327 () ListLongMap!9567)

(assert (=> b!853701 (= e!476093 (= call!38326 call!38327))))

(declare-fun b!853702 () Bool)

(declare-fun res!579892 () Bool)

(assert (=> b!853702 (=> (not res!579892) (not e!476094))))

(declare-datatypes ((List!16662 0))(
  ( (Nil!16659) (Cons!16658 (h!17789 (_ BitVec 64)) (t!23273 List!16662)) )
))
(declare-fun arrayNoDuplicates!0 (array!48768 (_ BitVec 32) List!16662) Bool)

(assert (=> b!853702 (= res!579892 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16659))))

(declare-fun b!853703 () Bool)

(declare-fun +!2138 (ListLongMap!9567 tuple2!10784) ListLongMap!9567)

(assert (=> b!853703 (= e!476093 (= call!38326 (+!2138 call!38327 (tuple2!10785 k0!854 v!557))))))

(declare-fun b!853704 () Bool)

(declare-fun res!579891 () Bool)

(assert (=> b!853704 (=> (not res!579891) (not e!476094))))

(assert (=> b!853704 (= res!579891 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23852 _keys!868))))))

(declare-fun mapNonEmpty!26039 () Bool)

(declare-fun tp!49976 () Bool)

(declare-fun e!476097 () Bool)

(assert (=> mapNonEmpty!26039 (= mapRes!26039 (and tp!49976 e!476097))))

(declare-fun mapRest!26039 () (Array (_ BitVec 32) ValueCell!7707))

(declare-fun mapKey!26039 () (_ BitVec 32))

(declare-fun mapValue!26039 () ValueCell!7707)

(assert (=> mapNonEmpty!26039 (= (arr!23412 _values!688) (store mapRest!26039 mapKey!26039 mapValue!26039))))

(declare-fun b!853705 () Bool)

(declare-fun res!579895 () Bool)

(assert (=> b!853705 (=> (not res!579895) (not e!476094))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48768 (_ BitVec 32)) Bool)

(assert (=> b!853705 (= res!579895 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!853706 () Bool)

(assert (=> b!853706 (= e!476096 true)))

(declare-fun lt!384948 () V!26771)

(declare-fun lt!384945 () ListLongMap!9567)

(declare-fun lt!384943 () tuple2!10784)

(assert (=> b!853706 (= (+!2138 lt!384945 lt!384943) (+!2138 (+!2138 lt!384945 (tuple2!10785 k0!854 lt!384948)) lt!384943))))

(declare-fun lt!384944 () V!26771)

(assert (=> b!853706 (= lt!384943 (tuple2!10785 k0!854 lt!384944))))

(declare-fun lt!384942 () Unit!29120)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!317 (ListLongMap!9567 (_ BitVec 64) V!26771 V!26771) Unit!29120)

(assert (=> b!853706 (= lt!384942 (addSameAsAddTwiceSameKeyDiffValues!317 lt!384945 k0!854 lt!384948 lt!384944))))

(declare-fun lt!384941 () V!26771)

(declare-fun get!12367 (ValueCell!7707 V!26771) V!26771)

(assert (=> b!853706 (= lt!384948 (get!12367 (select (arr!23412 _values!688) from!1053) lt!384941))))

(assert (=> b!853706 (= lt!384939 (+!2138 lt!384945 (tuple2!10785 (select (arr!23411 _keys!868) from!1053) lt!384944)))))

(assert (=> b!853706 (= lt!384944 (get!12367 (select (store (arr!23412 _values!688) i!612 (ValueCellFull!7707 v!557)) from!1053) lt!384941))))

(declare-fun dynLambda!1065 (Int (_ BitVec 64)) V!26771)

(assert (=> b!853706 (= lt!384941 (dynLambda!1065 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!853706 (= lt!384945 (getCurrentListMapNoExtraKeys!2781 _keys!868 lt!384947 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!853707 () Bool)

(assert (=> b!853707 (= e!476097 tp_is_empty!16293)))

(declare-fun bm!38324 () Bool)

(assert (=> bm!38324 (= call!38327 (getCurrentListMapNoExtraKeys!2781 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!853708 () Bool)

(declare-fun res!579894 () Bool)

(assert (=> b!853708 (=> (not res!579894) (not e!476094))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!853708 (= res!579894 (validMask!0 mask!1196))))

(assert (= (and start!73270 res!579899) b!853708))

(assert (= (and b!853708 res!579894) b!853697))

(assert (= (and b!853697 res!579893) b!853705))

(assert (= (and b!853705 res!579895) b!853702))

(assert (= (and b!853702 res!579892) b!853704))

(assert (= (and b!853704 res!579891) b!853699))

(assert (= (and b!853699 res!579900) b!853694))

(assert (= (and b!853694 res!579898) b!853698))

(assert (= (and b!853698 res!579897) b!853700))

(assert (= (and b!853700 c!91824) b!853703))

(assert (= (and b!853700 (not c!91824)) b!853701))

(assert (= (or b!853703 b!853701) bm!38323))

(assert (= (or b!853703 b!853701) bm!38324))

(assert (= (and b!853700 (not res!579896)) b!853706))

(assert (= (and b!853695 condMapEmpty!26039) mapIsEmpty!26039))

(assert (= (and b!853695 (not condMapEmpty!26039)) mapNonEmpty!26039))

(get-info :version)

(assert (= (and mapNonEmpty!26039 ((_ is ValueCellFull!7707) mapValue!26039)) b!853707))

(assert (= (and b!853695 ((_ is ValueCellFull!7707) mapDefault!26039)) b!853696))

(assert (= start!73270 b!853695))

(declare-fun b_lambda!11719 () Bool)

(assert (=> (not b_lambda!11719) (not b!853706)))

(declare-fun t!23271 () Bool)

(declare-fun tb!4467 () Bool)

(assert (=> (and start!73270 (= defaultEntry!696 defaultEntry!696) t!23271) tb!4467))

(declare-fun result!8537 () Bool)

(assert (=> tb!4467 (= result!8537 tp_is_empty!16293)))

(assert (=> b!853706 t!23271))

(declare-fun b_and!23493 () Bool)

(assert (= b_and!23491 (and (=> t!23271 result!8537) b_and!23493)))

(declare-fun m!795073 () Bool)

(assert (=> bm!38323 m!795073))

(declare-fun m!795075 () Bool)

(assert (=> b!853702 m!795075))

(declare-fun m!795077 () Bool)

(assert (=> b!853706 m!795077))

(declare-fun m!795079 () Bool)

(assert (=> b!853706 m!795079))

(declare-fun m!795081 () Bool)

(assert (=> b!853706 m!795081))

(assert (=> b!853706 m!795073))

(assert (=> b!853706 m!795077))

(declare-fun m!795083 () Bool)

(assert (=> b!853706 m!795083))

(declare-fun m!795085 () Bool)

(assert (=> b!853706 m!795085))

(assert (=> b!853706 m!795079))

(declare-fun m!795087 () Bool)

(assert (=> b!853706 m!795087))

(declare-fun m!795089 () Bool)

(assert (=> b!853706 m!795089))

(declare-fun m!795091 () Bool)

(assert (=> b!853706 m!795091))

(declare-fun m!795093 () Bool)

(assert (=> b!853706 m!795093))

(assert (=> b!853706 m!795093))

(declare-fun m!795095 () Bool)

(assert (=> b!853706 m!795095))

(declare-fun m!795097 () Bool)

(assert (=> b!853706 m!795097))

(declare-fun m!795099 () Bool)

(assert (=> b!853706 m!795099))

(declare-fun m!795101 () Bool)

(assert (=> b!853705 m!795101))

(declare-fun m!795103 () Bool)

(assert (=> b!853699 m!795103))

(declare-fun m!795105 () Bool)

(assert (=> b!853698 m!795105))

(assert (=> b!853698 m!795099))

(declare-fun m!795107 () Bool)

(assert (=> b!853698 m!795107))

(declare-fun m!795109 () Bool)

(assert (=> bm!38324 m!795109))

(declare-fun m!795111 () Bool)

(assert (=> start!73270 m!795111))

(declare-fun m!795113 () Bool)

(assert (=> start!73270 m!795113))

(declare-fun m!795115 () Bool)

(assert (=> b!853703 m!795115))

(assert (=> b!853700 m!795087))

(assert (=> b!853700 m!795087))

(declare-fun m!795117 () Bool)

(assert (=> b!853700 m!795117))

(declare-fun m!795119 () Bool)

(assert (=> b!853700 m!795119))

(declare-fun m!795121 () Bool)

(assert (=> b!853694 m!795121))

(declare-fun m!795123 () Bool)

(assert (=> mapNonEmpty!26039 m!795123))

(declare-fun m!795125 () Bool)

(assert (=> b!853708 m!795125))

(check-sat (not b_next!14157) b_and!23493 (not bm!38324) (not b_lambda!11719) (not b!853705) (not b!853698) (not bm!38323) (not mapNonEmpty!26039) (not b!853703) (not b!853708) (not b!853706) (not b!853700) (not b!853702) tp_is_empty!16293 (not b!853699) (not start!73270))
(check-sat b_and!23493 (not b_next!14157))
