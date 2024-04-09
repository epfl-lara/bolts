; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112304 () Bool)

(assert start!112304)

(declare-fun b_free!30663 () Bool)

(declare-fun b_next!30663 () Bool)

(assert (=> start!112304 (= b_free!30663 (not b_next!30663))))

(declare-fun tp!107626 () Bool)

(declare-fun b_and!49391 () Bool)

(assert (=> start!112304 (= tp!107626 b_and!49391)))

(declare-fun mapIsEmpty!56533 () Bool)

(declare-fun mapRes!56533 () Bool)

(assert (=> mapIsEmpty!56533 mapRes!56533))

(declare-fun b!1330058 () Bool)

(declare-fun res!882627 () Bool)

(declare-fun e!758145 () Bool)

(assert (=> b!1330058 (=> (not res!882627) (not e!758145))))

(declare-datatypes ((V!53867 0))(
  ( (V!53868 (val!18361 Int)) )
))
(declare-datatypes ((ValueCell!17388 0))(
  ( (ValueCellFull!17388 (v!20996 V!53867)) (EmptyCell!17388) )
))
(declare-datatypes ((array!90001 0))(
  ( (array!90002 (arr!43462 (Array (_ BitVec 32) ValueCell!17388)) (size!44013 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90001)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun defaultEntry!1323 () Int)

(declare-fun k0!1153 () (_ BitVec 64))

(declare-fun minValue!1262 () V!53867)

(declare-fun zeroValue!1262 () V!53867)

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((array!90003 0))(
  ( (array!90004 (arr!43463 (Array (_ BitVec 32) (_ BitVec 64))) (size!44014 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90003)

(declare-datatypes ((tuple2!23790 0))(
  ( (tuple2!23791 (_1!11905 (_ BitVec 64)) (_2!11905 V!53867)) )
))
(declare-datatypes ((List!30979 0))(
  ( (Nil!30976) (Cons!30975 (h!32184 tuple2!23790) (t!45062 List!30979)) )
))
(declare-datatypes ((ListLongMap!21459 0))(
  ( (ListLongMap!21460 (toList!10745 List!30979)) )
))
(declare-fun contains!8845 (ListLongMap!21459 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5675 (array!90003 array!90001 (_ BitVec 32) (_ BitVec 32) V!53867 V!53867 (_ BitVec 32) Int) ListLongMap!21459)

(assert (=> b!1330058 (= res!882627 (contains!8845 (getCurrentListMap!5675 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun res!882631 () Bool)

(assert (=> start!112304 (=> (not res!882631) (not e!758145))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112304 (= res!882631 (validMask!0 mask!1998))))

(assert (=> start!112304 e!758145))

(declare-fun e!758146 () Bool)

(declare-fun array_inv!32743 (array!90001) Bool)

(assert (=> start!112304 (and (array_inv!32743 _values!1320) e!758146)))

(assert (=> start!112304 true))

(declare-fun array_inv!32744 (array!90003) Bool)

(assert (=> start!112304 (array_inv!32744 _keys!1590)))

(assert (=> start!112304 tp!107626))

(declare-fun tp_is_empty!36573 () Bool)

(assert (=> start!112304 tp_is_empty!36573))

(declare-fun b!1330059 () Bool)

(declare-fun res!882628 () Bool)

(assert (=> b!1330059 (=> (not res!882628) (not e!758145))))

(declare-datatypes ((List!30980 0))(
  ( (Nil!30977) (Cons!30976 (h!32185 (_ BitVec 64)) (t!45063 List!30980)) )
))
(declare-fun arrayNoDuplicates!0 (array!90003 (_ BitVec 32) List!30980) Bool)

(assert (=> b!1330059 (= res!882628 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!30977))))

(declare-fun b!1330060 () Bool)

(declare-fun e!758149 () Bool)

(assert (=> b!1330060 (= e!758146 (and e!758149 mapRes!56533))))

(declare-fun condMapEmpty!56533 () Bool)

(declare-fun mapDefault!56533 () ValueCell!17388)

(assert (=> b!1330060 (= condMapEmpty!56533 (= (arr!43462 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17388)) mapDefault!56533)))))

(declare-fun b!1330061 () Bool)

(declare-fun res!882630 () Bool)

(assert (=> b!1330061 (=> (not res!882630) (not e!758145))))

(assert (=> b!1330061 (= res!882630 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!56533 () Bool)

(declare-fun tp!107627 () Bool)

(declare-fun e!758147 () Bool)

(assert (=> mapNonEmpty!56533 (= mapRes!56533 (and tp!107627 e!758147))))

(declare-fun mapRest!56533 () (Array (_ BitVec 32) ValueCell!17388))

(declare-fun mapKey!56533 () (_ BitVec 32))

(declare-fun mapValue!56533 () ValueCell!17388)

(assert (=> mapNonEmpty!56533 (= (arr!43462 _values!1320) (store mapRest!56533 mapKey!56533 mapValue!56533))))

(declare-fun b!1330062 () Bool)

(assert (=> b!1330062 (= e!758149 tp_is_empty!36573)))

(declare-fun b!1330063 () Bool)

(assert (=> b!1330063 (= e!758147 tp_is_empty!36573)))

(declare-fun b!1330064 () Bool)

(declare-fun res!882633 () Bool)

(assert (=> b!1330064 (=> (not res!882633) (not e!758145))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1330064 (= res!882633 (validKeyInArray!0 (select (arr!43463 _keys!1590) from!1980)))))

(declare-fun b!1330065 () Bool)

(assert (=> b!1330065 (= e!758145 (not true))))

(declare-fun lt!591001 () ListLongMap!21459)

(assert (=> b!1330065 (contains!8845 lt!591001 k0!1153)))

(declare-datatypes ((Unit!43707 0))(
  ( (Unit!43708) )
))
(declare-fun lt!591002 () Unit!43707)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!245 ((_ BitVec 64) (_ BitVec 64) V!53867 ListLongMap!21459) Unit!43707)

(assert (=> b!1330065 (= lt!591002 (lemmaInListMapAfterAddingDiffThenInBefore!245 k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 lt!591001))))

(declare-fun +!4640 (ListLongMap!21459 tuple2!23790) ListLongMap!21459)

(declare-fun getCurrentListMapNoExtraKeys!6358 (array!90003 array!90001 (_ BitVec 32) (_ BitVec 32) V!53867 V!53867 (_ BitVec 32) Int) ListLongMap!21459)

(declare-fun get!21946 (ValueCell!17388 V!53867) V!53867)

(declare-fun dynLambda!3677 (Int (_ BitVec 64)) V!53867)

(assert (=> b!1330065 (= lt!591001 (+!4640 (getCurrentListMapNoExtraKeys!6358 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!23791 (select (arr!43463 _keys!1590) from!1980) (get!21946 (select (arr!43462 _values!1320) from!1980) (dynLambda!3677 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1330066 () Bool)

(declare-fun res!882634 () Bool)

(assert (=> b!1330066 (=> (not res!882634) (not e!758145))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90003 (_ BitVec 32)) Bool)

(assert (=> b!1330066 (= res!882634 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1330067 () Bool)

(declare-fun res!882635 () Bool)

(assert (=> b!1330067 (=> (not res!882635) (not e!758145))))

(assert (=> b!1330067 (= res!882635 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44014 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1330068 () Bool)

(declare-fun res!882632 () Bool)

(assert (=> b!1330068 (=> (not res!882632) (not e!758145))))

(assert (=> b!1330068 (= res!882632 (not (= (select (arr!43463 _keys!1590) from!1980) k0!1153)))))

(declare-fun b!1330069 () Bool)

(declare-fun res!882629 () Bool)

(assert (=> b!1330069 (=> (not res!882629) (not e!758145))))

(assert (=> b!1330069 (= res!882629 (and (= (size!44013 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44014 _keys!1590) (size!44013 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(assert (= (and start!112304 res!882631) b!1330069))

(assert (= (and b!1330069 res!882629) b!1330066))

(assert (= (and b!1330066 res!882634) b!1330059))

(assert (= (and b!1330059 res!882628) b!1330067))

(assert (= (and b!1330067 res!882635) b!1330058))

(assert (= (and b!1330058 res!882627) b!1330068))

(assert (= (and b!1330068 res!882632) b!1330064))

(assert (= (and b!1330064 res!882633) b!1330061))

(assert (= (and b!1330061 res!882630) b!1330065))

(assert (= (and b!1330060 condMapEmpty!56533) mapIsEmpty!56533))

(assert (= (and b!1330060 (not condMapEmpty!56533)) mapNonEmpty!56533))

(get-info :version)

(assert (= (and mapNonEmpty!56533 ((_ is ValueCellFull!17388) mapValue!56533)) b!1330063))

(assert (= (and b!1330060 ((_ is ValueCellFull!17388) mapDefault!56533)) b!1330062))

(assert (= start!112304 b!1330060))

(declare-fun b_lambda!23933 () Bool)

(assert (=> (not b_lambda!23933) (not b!1330065)))

(declare-fun t!45061 () Bool)

(declare-fun tb!11887 () Bool)

(assert (=> (and start!112304 (= defaultEntry!1323 defaultEntry!1323) t!45061) tb!11887))

(declare-fun result!24837 () Bool)

(assert (=> tb!11887 (= result!24837 tp_is_empty!36573)))

(assert (=> b!1330065 t!45061))

(declare-fun b_and!49393 () Bool)

(assert (= b_and!49391 (and (=> t!45061 result!24837) b_and!49393)))

(declare-fun m!1218781 () Bool)

(assert (=> b!1330065 m!1218781))

(declare-fun m!1218783 () Bool)

(assert (=> b!1330065 m!1218783))

(declare-fun m!1218785 () Bool)

(assert (=> b!1330065 m!1218785))

(declare-fun m!1218787 () Bool)

(assert (=> b!1330065 m!1218787))

(assert (=> b!1330065 m!1218781))

(declare-fun m!1218789 () Bool)

(assert (=> b!1330065 m!1218789))

(declare-fun m!1218791 () Bool)

(assert (=> b!1330065 m!1218791))

(assert (=> b!1330065 m!1218783))

(assert (=> b!1330065 m!1218787))

(declare-fun m!1218793 () Bool)

(assert (=> b!1330065 m!1218793))

(declare-fun m!1218795 () Bool)

(assert (=> b!1330065 m!1218795))

(assert (=> b!1330068 m!1218795))

(declare-fun m!1218797 () Bool)

(assert (=> start!112304 m!1218797))

(declare-fun m!1218799 () Bool)

(assert (=> start!112304 m!1218799))

(declare-fun m!1218801 () Bool)

(assert (=> start!112304 m!1218801))

(assert (=> b!1330064 m!1218795))

(assert (=> b!1330064 m!1218795))

(declare-fun m!1218803 () Bool)

(assert (=> b!1330064 m!1218803))

(declare-fun m!1218805 () Bool)

(assert (=> b!1330058 m!1218805))

(assert (=> b!1330058 m!1218805))

(declare-fun m!1218807 () Bool)

(assert (=> b!1330058 m!1218807))

(declare-fun m!1218809 () Bool)

(assert (=> mapNonEmpty!56533 m!1218809))

(declare-fun m!1218811 () Bool)

(assert (=> b!1330066 m!1218811))

(declare-fun m!1218813 () Bool)

(assert (=> b!1330059 m!1218813))

(check-sat (not b!1330065) tp_is_empty!36573 (not b!1330064) (not b!1330058) (not b!1330059) b_and!49393 (not start!112304) (not b!1330066) (not b_next!30663) (not mapNonEmpty!56533) (not b_lambda!23933))
(check-sat b_and!49393 (not b_next!30663))
