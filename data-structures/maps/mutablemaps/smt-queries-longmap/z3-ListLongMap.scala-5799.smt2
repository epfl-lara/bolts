; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74838 () Bool)

(assert start!74838)

(declare-fun b_free!15387 () Bool)

(declare-fun b_next!15387 () Bool)

(assert (=> start!74838 (= b_free!15387 (not b_next!15387))))

(declare-fun tp!53858 () Bool)

(declare-fun b_and!25459 () Bool)

(assert (=> start!74838 (= tp!53858 b_and!25459)))

(declare-fun b!881802 () Bool)

(declare-fun e!490777 () Bool)

(declare-fun tp_is_empty!17631 () Bool)

(assert (=> b!881802 (= e!490777 tp_is_empty!17631)))

(declare-fun b!881803 () Bool)

(declare-fun res!599183 () Bool)

(declare-fun e!490776 () Bool)

(assert (=> b!881803 (=> (not res!599183) (not e!490776))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!51372 0))(
  ( (array!51373 (arr!24703 (Array (_ BitVec 32) (_ BitVec 64))) (size!25144 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51372)

(assert (=> b!881803 (= res!599183 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25144 _keys!868))))))

(declare-fun b!881805 () Bool)

(declare-fun e!490781 () Bool)

(assert (=> b!881805 (= e!490781 tp_is_empty!17631)))

(declare-fun b!881806 () Bool)

(declare-fun res!599191 () Bool)

(assert (=> b!881806 (=> (not res!599191) (not e!490776))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((V!28555 0))(
  ( (V!28556 (val!8863 Int)) )
))
(declare-datatypes ((ValueCell!8376 0))(
  ( (ValueCellFull!8376 (v!11319 V!28555)) (EmptyCell!8376) )
))
(declare-datatypes ((array!51374 0))(
  ( (array!51375 (arr!24704 (Array (_ BitVec 32) ValueCell!8376)) (size!25145 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51374)

(assert (=> b!881806 (= res!599191 (and (= (size!25145 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25144 _keys!868) (size!25145 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!881807 () Bool)

(declare-fun res!599182 () Bool)

(assert (=> b!881807 (=> (not res!599182) (not e!490776))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!881807 (= res!599182 (validKeyInArray!0 k0!854))))

(declare-fun mapIsEmpty!28077 () Bool)

(declare-fun mapRes!28077 () Bool)

(assert (=> mapIsEmpty!28077 mapRes!28077))

(declare-fun b!881808 () Bool)

(declare-fun res!599187 () Bool)

(assert (=> b!881808 (=> (not res!599187) (not e!490776))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!881808 (= res!599187 (validMask!0 mask!1196))))

(declare-fun b!881809 () Bool)

(declare-fun res!599186 () Bool)

(assert (=> b!881809 (=> (not res!599186) (not e!490776))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51372 (_ BitVec 32)) Bool)

(assert (=> b!881809 (= res!599186 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!881810 () Bool)

(declare-fun e!490775 () Bool)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!881810 (= e!490775 (or (bvsge (size!25144 _keys!868) #b01111111111111111111111111111111) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25144 _keys!868))))))

(declare-fun arrayContainsKey!0 (array!51372 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!881810 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-datatypes ((Unit!30068 0))(
  ( (Unit!30069) )
))
(declare-fun lt!398912 () Unit!30068)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!51372 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!30068)

(assert (=> b!881810 (= lt!398912 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-datatypes ((List!17633 0))(
  ( (Nil!17630) (Cons!17629 (h!18760 (_ BitVec 64)) (t!24830 List!17633)) )
))
(declare-fun arrayNoDuplicates!0 (array!51372 (_ BitVec 32) List!17633) Bool)

(assert (=> b!881810 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17630)))

(declare-fun lt!398913 () Unit!30068)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!51372 (_ BitVec 32) (_ BitVec 32)) Unit!30068)

(assert (=> b!881810 (= lt!398913 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-fun b!881811 () Bool)

(declare-fun e!490780 () Bool)

(assert (=> b!881811 (= e!490780 (and e!490781 mapRes!28077))))

(declare-fun condMapEmpty!28077 () Bool)

(declare-fun mapDefault!28077 () ValueCell!8376)

(assert (=> b!881811 (= condMapEmpty!28077 (= (arr!24704 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8376)) mapDefault!28077)))))

(declare-fun b!881812 () Bool)

(declare-fun e!490778 () Bool)

(assert (=> b!881812 (= e!490778 e!490775)))

(declare-fun res!599185 () Bool)

(assert (=> b!881812 (=> res!599185 e!490775)))

(assert (=> b!881812 (= res!599185 (not (= (select (arr!24703 _keys!868) from!1053) k0!854)))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!11766 0))(
  ( (tuple2!11767 (_1!5893 (_ BitVec 64)) (_2!5893 V!28555)) )
))
(declare-datatypes ((List!17634 0))(
  ( (Nil!17631) (Cons!17630 (h!18761 tuple2!11766) (t!24831 List!17634)) )
))
(declare-datatypes ((ListLongMap!10549 0))(
  ( (ListLongMap!10550 (toList!5290 List!17634)) )
))
(declare-fun lt!398916 () ListLongMap!10549)

(declare-fun lt!398917 () ListLongMap!10549)

(declare-fun +!2496 (ListLongMap!10549 tuple2!11766) ListLongMap!10549)

(declare-fun get!13018 (ValueCell!8376 V!28555) V!28555)

(declare-fun dynLambda!1255 (Int (_ BitVec 64)) V!28555)

(assert (=> b!881812 (= lt!398916 (+!2496 lt!398917 (tuple2!11767 (select (arr!24703 _keys!868) from!1053) (get!13018 (select (arr!24704 _values!688) from!1053) (dynLambda!1255 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!881804 () Bool)

(declare-fun res!599188 () Bool)

(assert (=> b!881804 (=> (not res!599188) (not e!490776))))

(assert (=> b!881804 (= res!599188 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17630))))

(declare-fun res!599190 () Bool)

(assert (=> start!74838 (=> (not res!599190) (not e!490776))))

(assert (=> start!74838 (= res!599190 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25144 _keys!868))))))

(assert (=> start!74838 e!490776))

(assert (=> start!74838 tp_is_empty!17631))

(assert (=> start!74838 true))

(assert (=> start!74838 tp!53858))

(declare-fun array_inv!19442 (array!51372) Bool)

(assert (=> start!74838 (array_inv!19442 _keys!868)))

(declare-fun array_inv!19443 (array!51374) Bool)

(assert (=> start!74838 (and (array_inv!19443 _values!688) e!490780)))

(declare-fun mapNonEmpty!28077 () Bool)

(declare-fun tp!53859 () Bool)

(assert (=> mapNonEmpty!28077 (= mapRes!28077 (and tp!53859 e!490777))))

(declare-fun mapRest!28077 () (Array (_ BitVec 32) ValueCell!8376))

(declare-fun mapValue!28077 () ValueCell!8376)

(declare-fun mapKey!28077 () (_ BitVec 32))

(assert (=> mapNonEmpty!28077 (= (arr!24704 _values!688) (store mapRest!28077 mapKey!28077 mapValue!28077))))

(declare-fun b!881813 () Bool)

(declare-fun e!490774 () Bool)

(assert (=> b!881813 (= e!490776 e!490774)))

(declare-fun res!599181 () Bool)

(assert (=> b!881813 (=> (not res!599181) (not e!490774))))

(assert (=> b!881813 (= res!599181 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!398918 () array!51374)

(declare-fun minValue!654 () V!28555)

(declare-fun zeroValue!654 () V!28555)

(declare-fun getCurrentListMapNoExtraKeys!3250 (array!51372 array!51374 (_ BitVec 32) (_ BitVec 32) V!28555 V!28555 (_ BitVec 32) Int) ListLongMap!10549)

(assert (=> b!881813 (= lt!398916 (getCurrentListMapNoExtraKeys!3250 _keys!868 lt!398918 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!28555)

(assert (=> b!881813 (= lt!398918 (array!51375 (store (arr!24704 _values!688) i!612 (ValueCellFull!8376 v!557)) (size!25145 _values!688)))))

(declare-fun lt!398914 () ListLongMap!10549)

(assert (=> b!881813 (= lt!398914 (getCurrentListMapNoExtraKeys!3250 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!881814 () Bool)

(declare-fun res!599184 () Bool)

(assert (=> b!881814 (=> (not res!599184) (not e!490776))))

(assert (=> b!881814 (= res!599184 (and (= (select (arr!24703 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!881815 () Bool)

(assert (=> b!881815 (= e!490774 (not e!490778))))

(declare-fun res!599189 () Bool)

(assert (=> b!881815 (=> res!599189 e!490778)))

(assert (=> b!881815 (= res!599189 (not (validKeyInArray!0 (select (arr!24703 _keys!868) from!1053))))))

(declare-fun lt!398915 () ListLongMap!10549)

(assert (=> b!881815 (= lt!398915 lt!398917)))

(declare-fun lt!398920 () ListLongMap!10549)

(assert (=> b!881815 (= lt!398917 (+!2496 lt!398920 (tuple2!11767 k0!854 v!557)))))

(assert (=> b!881815 (= lt!398915 (getCurrentListMapNoExtraKeys!3250 _keys!868 lt!398918 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!881815 (= lt!398920 (getCurrentListMapNoExtraKeys!3250 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!398919 () Unit!30068)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!724 (array!51372 array!51374 (_ BitVec 32) (_ BitVec 32) V!28555 V!28555 (_ BitVec 32) (_ BitVec 64) V!28555 (_ BitVec 32) Int) Unit!30068)

(assert (=> b!881815 (= lt!398919 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!724 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (= (and start!74838 res!599190) b!881808))

(assert (= (and b!881808 res!599187) b!881806))

(assert (= (and b!881806 res!599191) b!881809))

(assert (= (and b!881809 res!599186) b!881804))

(assert (= (and b!881804 res!599188) b!881803))

(assert (= (and b!881803 res!599183) b!881807))

(assert (= (and b!881807 res!599182) b!881814))

(assert (= (and b!881814 res!599184) b!881813))

(assert (= (and b!881813 res!599181) b!881815))

(assert (= (and b!881815 (not res!599189)) b!881812))

(assert (= (and b!881812 (not res!599185)) b!881810))

(assert (= (and b!881811 condMapEmpty!28077) mapIsEmpty!28077))

(assert (= (and b!881811 (not condMapEmpty!28077)) mapNonEmpty!28077))

(get-info :version)

(assert (= (and mapNonEmpty!28077 ((_ is ValueCellFull!8376) mapValue!28077)) b!881802))

(assert (= (and b!881811 ((_ is ValueCellFull!8376) mapDefault!28077)) b!881805))

(assert (= start!74838 b!881811))

(declare-fun b_lambda!12627 () Bool)

(assert (=> (not b_lambda!12627) (not b!881812)))

(declare-fun t!24829 () Bool)

(declare-fun tb!5053 () Bool)

(assert (=> (and start!74838 (= defaultEntry!696 defaultEntry!696) t!24829) tb!5053))

(declare-fun result!9729 () Bool)

(assert (=> tb!5053 (= result!9729 tp_is_empty!17631)))

(assert (=> b!881812 t!24829))

(declare-fun b_and!25461 () Bool)

(assert (= b_and!25459 (and (=> t!24829 result!9729) b_and!25461)))

(declare-fun m!821821 () Bool)

(assert (=> b!881804 m!821821))

(declare-fun m!821823 () Bool)

(assert (=> start!74838 m!821823))

(declare-fun m!821825 () Bool)

(assert (=> start!74838 m!821825))

(declare-fun m!821827 () Bool)

(assert (=> b!881813 m!821827))

(declare-fun m!821829 () Bool)

(assert (=> b!881813 m!821829))

(declare-fun m!821831 () Bool)

(assert (=> b!881813 m!821831))

(declare-fun m!821833 () Bool)

(assert (=> b!881809 m!821833))

(declare-fun m!821835 () Bool)

(assert (=> b!881815 m!821835))

(declare-fun m!821837 () Bool)

(assert (=> b!881815 m!821837))

(declare-fun m!821839 () Bool)

(assert (=> b!881815 m!821839))

(assert (=> b!881815 m!821837))

(declare-fun m!821841 () Bool)

(assert (=> b!881815 m!821841))

(declare-fun m!821843 () Bool)

(assert (=> b!881815 m!821843))

(declare-fun m!821845 () Bool)

(assert (=> b!881815 m!821845))

(declare-fun m!821847 () Bool)

(assert (=> b!881814 m!821847))

(declare-fun m!821849 () Bool)

(assert (=> b!881810 m!821849))

(declare-fun m!821851 () Bool)

(assert (=> b!881810 m!821851))

(declare-fun m!821853 () Bool)

(assert (=> b!881810 m!821853))

(declare-fun m!821855 () Bool)

(assert (=> b!881810 m!821855))

(declare-fun m!821857 () Bool)

(assert (=> b!881812 m!821857))

(declare-fun m!821859 () Bool)

(assert (=> b!881812 m!821859))

(declare-fun m!821861 () Bool)

(assert (=> b!881812 m!821861))

(declare-fun m!821863 () Bool)

(assert (=> b!881812 m!821863))

(assert (=> b!881812 m!821859))

(assert (=> b!881812 m!821837))

(assert (=> b!881812 m!821861))

(declare-fun m!821865 () Bool)

(assert (=> b!881807 m!821865))

(declare-fun m!821867 () Bool)

(assert (=> mapNonEmpty!28077 m!821867))

(declare-fun m!821869 () Bool)

(assert (=> b!881808 m!821869))

(check-sat (not b_lambda!12627) (not b!881808) tp_is_empty!17631 (not b!881815) (not b_next!15387) (not b!881812) (not b!881810) (not b!881809) (not start!74838) (not b!881813) b_and!25461 (not b!881807) (not b!881804) (not mapNonEmpty!28077))
(check-sat b_and!25461 (not b_next!15387))
