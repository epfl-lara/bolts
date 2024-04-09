; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73618 () Bool)

(assert start!73618)

(declare-fun b_free!14505 () Bool)

(declare-fun b_next!14505 () Bool)

(assert (=> start!73618 (= b_free!14505 (not b_next!14505))))

(declare-fun tp!51020 () Bool)

(declare-fun b_and!24007 () Bool)

(assert (=> start!73618 (= tp!51020 b_and!24007)))

(declare-fun b!860801 () Bool)

(declare-fun res!585124 () Bool)

(declare-fun e!479669 () Bool)

(assert (=> b!860801 (=> (not res!585124) (not e!479669))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!860801 (= res!585124 (validKeyInArray!0 k0!854))))

(declare-fun b!860802 () Bool)

(declare-fun res!585122 () Bool)

(assert (=> b!860802 (=> (not res!585122) (not e!479669))))

(declare-datatypes ((array!49432 0))(
  ( (array!49433 (arr!23743 (Array (_ BitVec 32) (_ BitVec 64))) (size!24184 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49432)

(declare-datatypes ((List!16919 0))(
  ( (Nil!16916) (Cons!16915 (h!18046 (_ BitVec 64)) (t!23698 List!16919)) )
))
(declare-fun arrayNoDuplicates!0 (array!49432 (_ BitVec 32) List!16919) Bool)

(assert (=> b!860802 (= res!585122 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16916))))

(declare-fun b!860803 () Bool)

(declare-fun res!585121 () Bool)

(assert (=> b!860803 (=> (not res!585121) (not e!479669))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49432 (_ BitVec 32)) Bool)

(assert (=> b!860803 (= res!585121 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!860804 () Bool)

(declare-fun res!585123 () Bool)

(assert (=> b!860804 (=> (not res!585123) (not e!479669))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((V!27235 0))(
  ( (V!27236 (val!8368 Int)) )
))
(declare-datatypes ((ValueCell!7881 0))(
  ( (ValueCellFull!7881 (v!10789 V!27235)) (EmptyCell!7881) )
))
(declare-datatypes ((array!49434 0))(
  ( (array!49435 (arr!23744 (Array (_ BitVec 32) ValueCell!7881)) (size!24185 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49434)

(assert (=> b!860804 (= res!585123 (and (= (size!24185 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24184 _keys!868) (size!24185 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!860805 () Bool)

(declare-fun e!479667 () Bool)

(declare-fun tp_is_empty!16641 () Bool)

(assert (=> b!860805 (= e!479667 tp_is_empty!16641)))

(declare-fun b!860806 () Bool)

(declare-fun res!585126 () Bool)

(assert (=> b!860806 (=> (not res!585126) (not e!479669))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!860806 (= res!585126 (validMask!0 mask!1196))))

(declare-fun b!860807 () Bool)

(declare-fun res!585129 () Bool)

(assert (=> b!860807 (=> (not res!585129) (not e!479669))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!860807 (= res!585129 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24184 _keys!868))))))

(declare-fun b!860808 () Bool)

(declare-fun res!585120 () Bool)

(assert (=> b!860808 (=> (not res!585120) (not e!479669))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!860808 (= res!585120 (and (= (select (arr!23743 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun mapNonEmpty!26561 () Bool)

(declare-fun mapRes!26561 () Bool)

(declare-fun tp!51019 () Bool)

(declare-fun e!479666 () Bool)

(assert (=> mapNonEmpty!26561 (= mapRes!26561 (and tp!51019 e!479666))))

(declare-fun mapRest!26561 () (Array (_ BitVec 32) ValueCell!7881))

(declare-fun mapKey!26561 () (_ BitVec 32))

(declare-fun mapValue!26561 () ValueCell!7881)

(assert (=> mapNonEmpty!26561 (= (arr!23744 _values!688) (store mapRest!26561 mapKey!26561 mapValue!26561))))

(declare-fun b!860809 () Bool)

(declare-fun e!479670 () Bool)

(assert (=> b!860809 (= e!479670 true)))

(assert (=> b!860809 (not (= (select (arr!23743 _keys!868) from!1053) k0!854))))

(declare-datatypes ((Unit!29310 0))(
  ( (Unit!29311) )
))
(declare-fun lt!388098 () Unit!29310)

(declare-fun e!479673 () Unit!29310)

(assert (=> b!860809 (= lt!388098 e!479673)))

(declare-fun c!91896 () Bool)

(assert (=> b!860809 (= c!91896 (= (select (arr!23743 _keys!868) from!1053) k0!854))))

(declare-datatypes ((tuple2!11048 0))(
  ( (tuple2!11049 (_1!5534 (_ BitVec 64)) (_2!5534 V!27235)) )
))
(declare-datatypes ((List!16920 0))(
  ( (Nil!16917) (Cons!16916 (h!18047 tuple2!11048) (t!23699 List!16920)) )
))
(declare-datatypes ((ListLongMap!9831 0))(
  ( (ListLongMap!9832 (toList!4931 List!16920)) )
))
(declare-fun lt!388095 () ListLongMap!9831)

(declare-fun defaultEntry!696 () Int)

(declare-fun lt!388103 () ListLongMap!9831)

(declare-fun +!2232 (ListLongMap!9831 tuple2!11048) ListLongMap!9831)

(declare-fun get!12533 (ValueCell!7881 V!27235) V!27235)

(declare-fun dynLambda!1115 (Int (_ BitVec 64)) V!27235)

(assert (=> b!860809 (= lt!388103 (+!2232 lt!388095 (tuple2!11049 (select (arr!23743 _keys!868) from!1053) (get!12533 (select (arr!23744 _values!688) from!1053) (dynLambda!1115 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!860810 () Bool)

(declare-fun e!479668 () Bool)

(assert (=> b!860810 (= e!479668 (and e!479667 mapRes!26561))))

(declare-fun condMapEmpty!26561 () Bool)

(declare-fun mapDefault!26561 () ValueCell!7881)

(assert (=> b!860810 (= condMapEmpty!26561 (= (arr!23744 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7881)) mapDefault!26561)))))

(declare-fun b!860811 () Bool)

(declare-fun Unit!29312 () Unit!29310)

(assert (=> b!860811 (= e!479673 Unit!29312)))

(declare-fun lt!388100 () Unit!29310)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49432 (_ BitVec 32) (_ BitVec 32)) Unit!29310)

(assert (=> b!860811 (= lt!388100 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(assert (=> b!860811 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!16916)))

(declare-fun lt!388102 () Unit!29310)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49432 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29310)

(assert (=> b!860811 (= lt!388102 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49432 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!860811 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!388099 () Unit!29310)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49432 (_ BitVec 64) (_ BitVec 32) List!16919) Unit!29310)

(assert (=> b!860811 (= lt!388099 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k0!854 from!1053 Nil!16916))))

(assert (=> b!860811 false))

(declare-fun b!860812 () Bool)

(declare-fun Unit!29313 () Unit!29310)

(assert (=> b!860812 (= e!479673 Unit!29313)))

(declare-fun res!585127 () Bool)

(assert (=> start!73618 (=> (not res!585127) (not e!479669))))

(assert (=> start!73618 (= res!585127 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24184 _keys!868))))))

(assert (=> start!73618 e!479669))

(assert (=> start!73618 tp_is_empty!16641))

(assert (=> start!73618 true))

(assert (=> start!73618 tp!51020))

(declare-fun array_inv!18766 (array!49432) Bool)

(assert (=> start!73618 (array_inv!18766 _keys!868)))

(declare-fun array_inv!18767 (array!49434) Bool)

(assert (=> start!73618 (and (array_inv!18767 _values!688) e!479668)))

(declare-fun b!860813 () Bool)

(assert (=> b!860813 (= e!479666 tp_is_empty!16641)))

(declare-fun b!860814 () Bool)

(declare-fun e!479671 () Bool)

(assert (=> b!860814 (= e!479671 (not e!479670))))

(declare-fun res!585128 () Bool)

(assert (=> b!860814 (=> res!585128 e!479670)))

(assert (=> b!860814 (= res!585128 (not (validKeyInArray!0 (select (arr!23743 _keys!868) from!1053))))))

(declare-fun lt!388104 () ListLongMap!9831)

(assert (=> b!860814 (= lt!388104 lt!388095)))

(declare-fun v!557 () V!27235)

(declare-fun lt!388096 () ListLongMap!9831)

(assert (=> b!860814 (= lt!388095 (+!2232 lt!388096 (tuple2!11049 k0!854 v!557)))))

(declare-fun lt!388097 () array!49434)

(declare-fun minValue!654 () V!27235)

(declare-fun zeroValue!654 () V!27235)

(declare-fun getCurrentListMapNoExtraKeys!2911 (array!49432 array!49434 (_ BitVec 32) (_ BitVec 32) V!27235 V!27235 (_ BitVec 32) Int) ListLongMap!9831)

(assert (=> b!860814 (= lt!388104 (getCurrentListMapNoExtraKeys!2911 _keys!868 lt!388097 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!860814 (= lt!388096 (getCurrentListMapNoExtraKeys!2911 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!388101 () Unit!29310)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!485 (array!49432 array!49434 (_ BitVec 32) (_ BitVec 32) V!27235 V!27235 (_ BitVec 32) (_ BitVec 64) V!27235 (_ BitVec 32) Int) Unit!29310)

(assert (=> b!860814 (= lt!388101 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!485 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapIsEmpty!26561 () Bool)

(assert (=> mapIsEmpty!26561 mapRes!26561))

(declare-fun b!860815 () Bool)

(assert (=> b!860815 (= e!479669 e!479671)))

(declare-fun res!585125 () Bool)

(assert (=> b!860815 (=> (not res!585125) (not e!479671))))

(assert (=> b!860815 (= res!585125 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(assert (=> b!860815 (= lt!388103 (getCurrentListMapNoExtraKeys!2911 _keys!868 lt!388097 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!860815 (= lt!388097 (array!49435 (store (arr!23744 _values!688) i!612 (ValueCellFull!7881 v!557)) (size!24185 _values!688)))))

(declare-fun lt!388094 () ListLongMap!9831)

(assert (=> b!860815 (= lt!388094 (getCurrentListMapNoExtraKeys!2911 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (= (and start!73618 res!585127) b!860806))

(assert (= (and b!860806 res!585126) b!860804))

(assert (= (and b!860804 res!585123) b!860803))

(assert (= (and b!860803 res!585121) b!860802))

(assert (= (and b!860802 res!585122) b!860807))

(assert (= (and b!860807 res!585129) b!860801))

(assert (= (and b!860801 res!585124) b!860808))

(assert (= (and b!860808 res!585120) b!860815))

(assert (= (and b!860815 res!585125) b!860814))

(assert (= (and b!860814 (not res!585128)) b!860809))

(assert (= (and b!860809 c!91896) b!860811))

(assert (= (and b!860809 (not c!91896)) b!860812))

(assert (= (and b!860810 condMapEmpty!26561) mapIsEmpty!26561))

(assert (= (and b!860810 (not condMapEmpty!26561)) mapNonEmpty!26561))

(get-info :version)

(assert (= (and mapNonEmpty!26561 ((_ is ValueCellFull!7881) mapValue!26561)) b!860813))

(assert (= (and b!860810 ((_ is ValueCellFull!7881) mapDefault!26561)) b!860805))

(assert (= start!73618 b!860810))

(declare-fun b_lambda!11887 () Bool)

(assert (=> (not b_lambda!11887) (not b!860809)))

(declare-fun t!23697 () Bool)

(declare-fun tb!4635 () Bool)

(assert (=> (and start!73618 (= defaultEntry!696 defaultEntry!696) t!23697) tb!4635))

(declare-fun result!8873 () Bool)

(assert (=> tb!4635 (= result!8873 tp_is_empty!16641)))

(assert (=> b!860809 t!23697))

(declare-fun b_and!24009 () Bool)

(assert (= b_and!24007 (and (=> t!23697 result!8873) b_and!24009)))

(declare-fun m!801755 () Bool)

(assert (=> b!860808 m!801755))

(declare-fun m!801757 () Bool)

(assert (=> start!73618 m!801757))

(declare-fun m!801759 () Bool)

(assert (=> start!73618 m!801759))

(declare-fun m!801761 () Bool)

(assert (=> b!860801 m!801761))

(declare-fun m!801763 () Bool)

(assert (=> b!860811 m!801763))

(declare-fun m!801765 () Bool)

(assert (=> b!860811 m!801765))

(declare-fun m!801767 () Bool)

(assert (=> b!860811 m!801767))

(declare-fun m!801769 () Bool)

(assert (=> b!860811 m!801769))

(declare-fun m!801771 () Bool)

(assert (=> b!860811 m!801771))

(declare-fun m!801773 () Bool)

(assert (=> b!860815 m!801773))

(declare-fun m!801775 () Bool)

(assert (=> b!860815 m!801775))

(declare-fun m!801777 () Bool)

(assert (=> b!860815 m!801777))

(declare-fun m!801779 () Bool)

(assert (=> mapNonEmpty!26561 m!801779))

(declare-fun m!801781 () Bool)

(assert (=> b!860814 m!801781))

(declare-fun m!801783 () Bool)

(assert (=> b!860814 m!801783))

(declare-fun m!801785 () Bool)

(assert (=> b!860814 m!801785))

(declare-fun m!801787 () Bool)

(assert (=> b!860814 m!801787))

(assert (=> b!860814 m!801785))

(declare-fun m!801789 () Bool)

(assert (=> b!860814 m!801789))

(declare-fun m!801791 () Bool)

(assert (=> b!860814 m!801791))

(declare-fun m!801793 () Bool)

(assert (=> b!860806 m!801793))

(declare-fun m!801795 () Bool)

(assert (=> b!860809 m!801795))

(declare-fun m!801797 () Bool)

(assert (=> b!860809 m!801797))

(declare-fun m!801799 () Bool)

(assert (=> b!860809 m!801799))

(declare-fun m!801801 () Bool)

(assert (=> b!860809 m!801801))

(assert (=> b!860809 m!801797))

(assert (=> b!860809 m!801785))

(assert (=> b!860809 m!801799))

(declare-fun m!801803 () Bool)

(assert (=> b!860803 m!801803))

(declare-fun m!801805 () Bool)

(assert (=> b!860802 m!801805))

(check-sat (not mapNonEmpty!26561) tp_is_empty!16641 b_and!24009 (not b!860811) (not b_lambda!11887) (not start!73618) (not b!860814) (not b!860806) (not b_next!14505) (not b!860803) (not b!860815) (not b!860802) (not b!860809) (not b!860801))
(check-sat b_and!24009 (not b_next!14505))
