; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112406 () Bool)

(assert start!112406)

(declare-fun b_free!30765 () Bool)

(declare-fun b_next!30765 () Bool)

(assert (=> start!112406 (= b_free!30765 (not b_next!30765))))

(declare-fun tp!107932 () Bool)

(declare-fun b_and!49595 () Bool)

(assert (=> start!112406 (= tp!107932 b_and!49595)))

(declare-fun res!884004 () Bool)

(declare-fun e!758913 () Bool)

(assert (=> start!112406 (=> (not res!884004) (not e!758913))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112406 (= res!884004 (validMask!0 mask!1998))))

(assert (=> start!112406 e!758913))

(declare-datatypes ((V!54003 0))(
  ( (V!54004 (val!18412 Int)) )
))
(declare-datatypes ((ValueCell!17439 0))(
  ( (ValueCellFull!17439 (v!21047 V!54003)) (EmptyCell!17439) )
))
(declare-datatypes ((array!90199 0))(
  ( (array!90200 (arr!43561 (Array (_ BitVec 32) ValueCell!17439)) (size!44112 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90199)

(declare-fun e!758914 () Bool)

(declare-fun array_inv!32809 (array!90199) Bool)

(assert (=> start!112406 (and (array_inv!32809 _values!1320) e!758914)))

(assert (=> start!112406 true))

(declare-datatypes ((array!90201 0))(
  ( (array!90202 (arr!43562 (Array (_ BitVec 32) (_ BitVec 64))) (size!44113 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90201)

(declare-fun array_inv!32810 (array!90201) Bool)

(assert (=> start!112406 (array_inv!32810 _keys!1590)))

(assert (=> start!112406 tp!107932))

(declare-fun tp_is_empty!36675 () Bool)

(assert (=> start!112406 tp_is_empty!36675))

(declare-fun b!1331996 () Bool)

(declare-fun res!884007 () Bool)

(assert (=> b!1331996 (=> (not res!884007) (not e!758913))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun k0!1153 () (_ BitVec 64))

(assert (=> b!1331996 (= res!884007 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44113 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1331997 () Bool)

(declare-fun res!884009 () Bool)

(assert (=> b!1331997 (=> (not res!884009) (not e!758913))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90201 (_ BitVec 32)) Bool)

(assert (=> b!1331997 (= res!884009 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1331998 () Bool)

(declare-fun res!884010 () Bool)

(assert (=> b!1331998 (=> (not res!884010) (not e!758913))))

(assert (=> b!1331998 (= res!884010 (and (= (size!44112 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44113 _keys!1590) (size!44112 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1331999 () Bool)

(assert (=> b!1331999 (= e!758913 (not true))))

(declare-datatypes ((tuple2!23874 0))(
  ( (tuple2!23875 (_1!11947 (_ BitVec 64)) (_2!11947 V!54003)) )
))
(declare-datatypes ((List!31054 0))(
  ( (Nil!31051) (Cons!31050 (h!32259 tuple2!23874) (t!45239 List!31054)) )
))
(declare-datatypes ((ListLongMap!21543 0))(
  ( (ListLongMap!21544 (toList!10787 List!31054)) )
))
(declare-fun lt!591782 () ListLongMap!21543)

(declare-fun minValue!1262 () V!54003)

(declare-fun contains!8887 (ListLongMap!21543 (_ BitVec 64)) Bool)

(declare-fun +!4675 (ListLongMap!21543 tuple2!23874) ListLongMap!21543)

(assert (=> b!1331999 (contains!8887 (+!4675 lt!591782 (tuple2!23875 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)) k0!1153)))

(declare-datatypes ((Unit!43777 0))(
  ( (Unit!43778) )
))
(declare-fun lt!591777 () Unit!43777)

(declare-fun addStillContains!1185 (ListLongMap!21543 (_ BitVec 64) V!54003 (_ BitVec 64)) Unit!43777)

(assert (=> b!1331999 (= lt!591777 (addStillContains!1185 lt!591782 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 k0!1153))))

(assert (=> b!1331999 (contains!8887 lt!591782 k0!1153)))

(declare-fun lt!591780 () V!54003)

(declare-fun lt!591781 () Unit!43777)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!280 ((_ BitVec 64) (_ BitVec 64) V!54003 ListLongMap!21543) Unit!43777)

(assert (=> b!1331999 (= lt!591781 (lemmaInListMapAfterAddingDiffThenInBefore!280 k0!1153 (select (arr!43562 _keys!1590) from!1980) lt!591780 lt!591782))))

(declare-fun lt!591778 () ListLongMap!21543)

(assert (=> b!1331999 (contains!8887 lt!591778 k0!1153)))

(declare-fun lt!591779 () Unit!43777)

(assert (=> b!1331999 (= lt!591779 (lemmaInListMapAfterAddingDiffThenInBefore!280 k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 lt!591778))))

(assert (=> b!1331999 (= lt!591778 (+!4675 lt!591782 (tuple2!23875 (select (arr!43562 _keys!1590) from!1980) lt!591780)))))

(declare-fun defaultEntry!1323 () Int)

(declare-fun get!22015 (ValueCell!17439 V!54003) V!54003)

(declare-fun dynLambda!3712 (Int (_ BitVec 64)) V!54003)

(assert (=> b!1331999 (= lt!591780 (get!22015 (select (arr!43561 _values!1320) from!1980) (dynLambda!3712 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!1262 () V!54003)

(declare-fun getCurrentListMapNoExtraKeys!6393 (array!90201 array!90199 (_ BitVec 32) (_ BitVec 32) V!54003 V!54003 (_ BitVec 32) Int) ListLongMap!21543)

(assert (=> b!1331999 (= lt!591782 (getCurrentListMapNoExtraKeys!6393 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun b!1332000 () Bool)

(declare-fun res!884008 () Bool)

(assert (=> b!1332000 (=> (not res!884008) (not e!758913))))

(declare-fun getCurrentListMap!5710 (array!90201 array!90199 (_ BitVec 32) (_ BitVec 32) V!54003 V!54003 (_ BitVec 32) Int) ListLongMap!21543)

(assert (=> b!1332000 (= res!884008 (contains!8887 (getCurrentListMap!5710 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun b!1332001 () Bool)

(declare-fun res!884005 () Bool)

(assert (=> b!1332001 (=> (not res!884005) (not e!758913))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1332001 (= res!884005 (validKeyInArray!0 (select (arr!43562 _keys!1590) from!1980)))))

(declare-fun b!1332002 () Bool)

(declare-fun e!758911 () Bool)

(declare-fun mapRes!56686 () Bool)

(assert (=> b!1332002 (= e!758914 (and e!758911 mapRes!56686))))

(declare-fun condMapEmpty!56686 () Bool)

(declare-fun mapDefault!56686 () ValueCell!17439)

(assert (=> b!1332002 (= condMapEmpty!56686 (= (arr!43561 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17439)) mapDefault!56686)))))

(declare-fun mapIsEmpty!56686 () Bool)

(assert (=> mapIsEmpty!56686 mapRes!56686))

(declare-fun mapNonEmpty!56686 () Bool)

(declare-fun tp!107933 () Bool)

(declare-fun e!758912 () Bool)

(assert (=> mapNonEmpty!56686 (= mapRes!56686 (and tp!107933 e!758912))))

(declare-fun mapKey!56686 () (_ BitVec 32))

(declare-fun mapValue!56686 () ValueCell!17439)

(declare-fun mapRest!56686 () (Array (_ BitVec 32) ValueCell!17439))

(assert (=> mapNonEmpty!56686 (= (arr!43561 _values!1320) (store mapRest!56686 mapKey!56686 mapValue!56686))))

(declare-fun b!1332003 () Bool)

(assert (=> b!1332003 (= e!758911 tp_is_empty!36675)))

(declare-fun b!1332004 () Bool)

(declare-fun res!884011 () Bool)

(assert (=> b!1332004 (=> (not res!884011) (not e!758913))))

(assert (=> b!1332004 (= res!884011 (not (= (select (arr!43562 _keys!1590) from!1980) k0!1153)))))

(declare-fun b!1332005 () Bool)

(declare-fun res!884006 () Bool)

(assert (=> b!1332005 (=> (not res!884006) (not e!758913))))

(assert (=> b!1332005 (= res!884006 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1332006 () Bool)

(declare-fun res!884012 () Bool)

(assert (=> b!1332006 (=> (not res!884012) (not e!758913))))

(declare-datatypes ((List!31055 0))(
  ( (Nil!31052) (Cons!31051 (h!32260 (_ BitVec 64)) (t!45240 List!31055)) )
))
(declare-fun arrayNoDuplicates!0 (array!90201 (_ BitVec 32) List!31055) Bool)

(assert (=> b!1332006 (= res!884012 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31052))))

(declare-fun b!1332007 () Bool)

(assert (=> b!1332007 (= e!758912 tp_is_empty!36675)))

(assert (= (and start!112406 res!884004) b!1331998))

(assert (= (and b!1331998 res!884010) b!1331997))

(assert (= (and b!1331997 res!884009) b!1332006))

(assert (= (and b!1332006 res!884012) b!1331996))

(assert (= (and b!1331996 res!884007) b!1332000))

(assert (= (and b!1332000 res!884008) b!1332004))

(assert (= (and b!1332004 res!884011) b!1332001))

(assert (= (and b!1332001 res!884005) b!1332005))

(assert (= (and b!1332005 res!884006) b!1331999))

(assert (= (and b!1332002 condMapEmpty!56686) mapIsEmpty!56686))

(assert (= (and b!1332002 (not condMapEmpty!56686)) mapNonEmpty!56686))

(get-info :version)

(assert (= (and mapNonEmpty!56686 ((_ is ValueCellFull!17439) mapValue!56686)) b!1332007))

(assert (= (and b!1332002 ((_ is ValueCellFull!17439) mapDefault!56686)) b!1332003))

(assert (= start!112406 b!1332002))

(declare-fun b_lambda!24035 () Bool)

(assert (=> (not b_lambda!24035) (not b!1331999)))

(declare-fun t!45238 () Bool)

(declare-fun tb!11989 () Bool)

(assert (=> (and start!112406 (= defaultEntry!1323 defaultEntry!1323) t!45238) tb!11989))

(declare-fun result!25041 () Bool)

(assert (=> tb!11989 (= result!25041 tp_is_empty!36675)))

(assert (=> b!1331999 t!45238))

(declare-fun b_and!49597 () Bool)

(assert (= b_and!49595 (and (=> t!45238 result!25041) b_and!49597)))

(declare-fun m!1220795 () Bool)

(assert (=> b!1331999 m!1220795))

(declare-fun m!1220797 () Bool)

(assert (=> b!1331999 m!1220797))

(assert (=> b!1331999 m!1220795))

(declare-fun m!1220799 () Bool)

(assert (=> b!1331999 m!1220799))

(declare-fun m!1220801 () Bool)

(assert (=> b!1331999 m!1220801))

(declare-fun m!1220803 () Bool)

(assert (=> b!1331999 m!1220803))

(declare-fun m!1220805 () Bool)

(assert (=> b!1331999 m!1220805))

(declare-fun m!1220807 () Bool)

(assert (=> b!1331999 m!1220807))

(declare-fun m!1220809 () Bool)

(assert (=> b!1331999 m!1220809))

(declare-fun m!1220811 () Bool)

(assert (=> b!1331999 m!1220811))

(declare-fun m!1220813 () Bool)

(assert (=> b!1331999 m!1220813))

(assert (=> b!1331999 m!1220807))

(declare-fun m!1220815 () Bool)

(assert (=> b!1331999 m!1220815))

(declare-fun m!1220817 () Bool)

(assert (=> b!1331999 m!1220817))

(assert (=> b!1331999 m!1220797))

(declare-fun m!1220819 () Bool)

(assert (=> b!1331999 m!1220819))

(assert (=> b!1331999 m!1220801))

(declare-fun m!1220821 () Bool)

(assert (=> start!112406 m!1220821))

(declare-fun m!1220823 () Bool)

(assert (=> start!112406 m!1220823))

(declare-fun m!1220825 () Bool)

(assert (=> start!112406 m!1220825))

(declare-fun m!1220827 () Bool)

(assert (=> b!1332000 m!1220827))

(assert (=> b!1332000 m!1220827))

(declare-fun m!1220829 () Bool)

(assert (=> b!1332000 m!1220829))

(assert (=> b!1332001 m!1220807))

(assert (=> b!1332001 m!1220807))

(declare-fun m!1220831 () Bool)

(assert (=> b!1332001 m!1220831))

(assert (=> b!1332004 m!1220807))

(declare-fun m!1220833 () Bool)

(assert (=> mapNonEmpty!56686 m!1220833))

(declare-fun m!1220835 () Bool)

(assert (=> b!1332006 m!1220835))

(declare-fun m!1220837 () Bool)

(assert (=> b!1331997 m!1220837))

(check-sat (not mapNonEmpty!56686) (not b!1331997) b_and!49597 (not b_lambda!24035) (not start!112406) (not b_next!30765) (not b!1332006) (not b!1331999) (not b!1332001) (not b!1332000) tp_is_empty!36675)
(check-sat b_and!49597 (not b_next!30765))
