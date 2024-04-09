; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112692 () Bool)

(assert start!112692)

(declare-fun b_free!30993 () Bool)

(declare-fun b_next!30993 () Bool)

(assert (=> start!112692 (= b_free!30993 (not b_next!30993))))

(declare-fun tp!108621 () Bool)

(declare-fun b_and!49933 () Bool)

(assert (=> start!112692 (= tp!108621 b_and!49933)))

(declare-fun b!1336076 () Bool)

(declare-fun res!886740 () Bool)

(declare-fun e!760944 () Bool)

(assert (=> b!1336076 (=> (not res!886740) (not e!760944))))

(declare-datatypes ((array!90639 0))(
  ( (array!90640 (arr!43780 (Array (_ BitVec 32) (_ BitVec 64))) (size!44331 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90639)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90639 (_ BitVec 32)) Bool)

(assert (=> b!1336076 (= res!886740 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1336077 () Bool)

(declare-fun e!760946 () Bool)

(declare-fun tp_is_empty!36903 () Bool)

(assert (=> b!1336077 (= e!760946 tp_is_empty!36903)))

(declare-fun b!1336078 () Bool)

(declare-fun res!886739 () Bool)

(assert (=> b!1336078 (=> (not res!886739) (not e!760944))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun k0!1153 () (_ BitVec 64))

(assert (=> b!1336078 (= res!886739 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44331 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1336079 () Bool)

(declare-fun e!760948 () Bool)

(declare-fun e!760945 () Bool)

(declare-fun mapRes!57032 () Bool)

(assert (=> b!1336079 (= e!760948 (and e!760945 mapRes!57032))))

(declare-fun condMapEmpty!57032 () Bool)

(declare-datatypes ((V!54307 0))(
  ( (V!54308 (val!18526 Int)) )
))
(declare-datatypes ((ValueCell!17553 0))(
  ( (ValueCellFull!17553 (v!21164 V!54307)) (EmptyCell!17553) )
))
(declare-datatypes ((array!90641 0))(
  ( (array!90642 (arr!43781 (Array (_ BitVec 32) ValueCell!17553)) (size!44332 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90641)

(declare-fun mapDefault!57032 () ValueCell!17553)

(assert (=> b!1336079 (= condMapEmpty!57032 (= (arr!43781 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17553)) mapDefault!57032)))))

(declare-fun b!1336080 () Bool)

(assert (=> b!1336080 (= e!760945 tp_is_empty!36903)))

(declare-fun b!1336081 () Bool)

(declare-fun res!886741 () Bool)

(assert (=> b!1336081 (=> (not res!886741) (not e!760944))))

(declare-fun defaultEntry!1323 () Int)

(declare-fun zeroValue!1262 () V!54307)

(declare-fun minValue!1262 () V!54307)

(declare-datatypes ((tuple2!24044 0))(
  ( (tuple2!24045 (_1!12032 (_ BitVec 64)) (_2!12032 V!54307)) )
))
(declare-datatypes ((List!31213 0))(
  ( (Nil!31210) (Cons!31209 (h!32418 tuple2!24044) (t!45494 List!31213)) )
))
(declare-datatypes ((ListLongMap!21713 0))(
  ( (ListLongMap!21714 (toList!10872 List!31213)) )
))
(declare-fun contains!8973 (ListLongMap!21713 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5782 (array!90639 array!90641 (_ BitVec 32) (_ BitVec 32) V!54307 V!54307 (_ BitVec 32) Int) ListLongMap!21713)

(assert (=> b!1336081 (= res!886741 (contains!8973 (getCurrentListMap!5782 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun mapNonEmpty!57032 () Bool)

(declare-fun tp!108620 () Bool)

(assert (=> mapNonEmpty!57032 (= mapRes!57032 (and tp!108620 e!760946))))

(declare-fun mapValue!57032 () ValueCell!17553)

(declare-fun mapKey!57032 () (_ BitVec 32))

(declare-fun mapRest!57032 () (Array (_ BitVec 32) ValueCell!17553))

(assert (=> mapNonEmpty!57032 (= (arr!43781 _values!1320) (store mapRest!57032 mapKey!57032 mapValue!57032))))

(declare-fun b!1336082 () Bool)

(assert (=> b!1336082 (= e!760944 false)))

(declare-fun lt!592668 () Bool)

(declare-fun +!4704 (ListLongMap!21713 tuple2!24044) ListLongMap!21713)

(declare-fun getCurrentListMapNoExtraKeys!6427 (array!90639 array!90641 (_ BitVec 32) (_ BitVec 32) V!54307 V!54307 (_ BitVec 32) Int) ListLongMap!21713)

(declare-fun get!22123 (ValueCell!17553 V!54307) V!54307)

(declare-fun dynLambda!3741 (Int (_ BitVec 64)) V!54307)

(assert (=> b!1336082 (= lt!592668 (contains!8973 (+!4704 (+!4704 (getCurrentListMapNoExtraKeys!6427 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24045 (select (arr!43780 _keys!1590) from!1980) (get!22123 (select (arr!43781 _values!1320) from!1980) (dynLambda!3741 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!24045 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)) k0!1153))))

(declare-fun mapIsEmpty!57032 () Bool)

(assert (=> mapIsEmpty!57032 mapRes!57032))

(declare-fun b!1336083 () Bool)

(declare-fun res!886743 () Bool)

(assert (=> b!1336083 (=> (not res!886743) (not e!760944))))

(declare-datatypes ((List!31214 0))(
  ( (Nil!31211) (Cons!31210 (h!32419 (_ BitVec 64)) (t!45495 List!31214)) )
))
(declare-fun arrayNoDuplicates!0 (array!90639 (_ BitVec 32) List!31214) Bool)

(assert (=> b!1336083 (= res!886743 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31211))))

(declare-fun b!1336084 () Bool)

(declare-fun res!886745 () Bool)

(assert (=> b!1336084 (=> (not res!886745) (not e!760944))))

(assert (=> b!1336084 (= res!886745 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1336085 () Bool)

(declare-fun res!886747 () Bool)

(assert (=> b!1336085 (=> (not res!886747) (not e!760944))))

(assert (=> b!1336085 (= res!886747 (not (= (select (arr!43780 _keys!1590) from!1980) k0!1153)))))

(declare-fun b!1336086 () Bool)

(declare-fun res!886744 () Bool)

(assert (=> b!1336086 (=> (not res!886744) (not e!760944))))

(assert (=> b!1336086 (= res!886744 (and (= (size!44332 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44331 _keys!1590) (size!44332 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1336087 () Bool)

(declare-fun res!886746 () Bool)

(assert (=> b!1336087 (=> (not res!886746) (not e!760944))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1336087 (= res!886746 (validKeyInArray!0 (select (arr!43780 _keys!1590) from!1980)))))

(declare-fun res!886742 () Bool)

(assert (=> start!112692 (=> (not res!886742) (not e!760944))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112692 (= res!886742 (validMask!0 mask!1998))))

(assert (=> start!112692 e!760944))

(declare-fun array_inv!32951 (array!90641) Bool)

(assert (=> start!112692 (and (array_inv!32951 _values!1320) e!760948)))

(assert (=> start!112692 true))

(declare-fun array_inv!32952 (array!90639) Bool)

(assert (=> start!112692 (array_inv!32952 _keys!1590)))

(assert (=> start!112692 tp!108621))

(assert (=> start!112692 tp_is_empty!36903))

(assert (= (and start!112692 res!886742) b!1336086))

(assert (= (and b!1336086 res!886744) b!1336076))

(assert (= (and b!1336076 res!886740) b!1336083))

(assert (= (and b!1336083 res!886743) b!1336078))

(assert (= (and b!1336078 res!886739) b!1336081))

(assert (= (and b!1336081 res!886741) b!1336085))

(assert (= (and b!1336085 res!886747) b!1336087))

(assert (= (and b!1336087 res!886746) b!1336084))

(assert (= (and b!1336084 res!886745) b!1336082))

(assert (= (and b!1336079 condMapEmpty!57032) mapIsEmpty!57032))

(assert (= (and b!1336079 (not condMapEmpty!57032)) mapNonEmpty!57032))

(get-info :version)

(assert (= (and mapNonEmpty!57032 ((_ is ValueCellFull!17553) mapValue!57032)) b!1336077))

(assert (= (and b!1336079 ((_ is ValueCellFull!17553) mapDefault!57032)) b!1336080))

(assert (= start!112692 b!1336079))

(declare-fun b_lambda!24161 () Bool)

(assert (=> (not b_lambda!24161) (not b!1336082)))

(declare-fun t!45493 () Bool)

(declare-fun tb!12085 () Bool)

(assert (=> (and start!112692 (= defaultEntry!1323 defaultEntry!1323) t!45493) tb!12085))

(declare-fun result!25235 () Bool)

(assert (=> tb!12085 (= result!25235 tp_is_empty!36903)))

(assert (=> b!1336082 t!45493))

(declare-fun b_and!49935 () Bool)

(assert (= b_and!49933 (and (=> t!45493 result!25235) b_and!49935)))

(declare-fun m!1224233 () Bool)

(assert (=> b!1336085 m!1224233))

(declare-fun m!1224235 () Bool)

(assert (=> b!1336081 m!1224235))

(assert (=> b!1336081 m!1224235))

(declare-fun m!1224237 () Bool)

(assert (=> b!1336081 m!1224237))

(declare-fun m!1224239 () Bool)

(assert (=> b!1336076 m!1224239))

(assert (=> b!1336087 m!1224233))

(assert (=> b!1336087 m!1224233))

(declare-fun m!1224241 () Bool)

(assert (=> b!1336087 m!1224241))

(declare-fun m!1224243 () Bool)

(assert (=> b!1336082 m!1224243))

(declare-fun m!1224245 () Bool)

(assert (=> b!1336082 m!1224245))

(declare-fun m!1224247 () Bool)

(assert (=> b!1336082 m!1224247))

(declare-fun m!1224249 () Bool)

(assert (=> b!1336082 m!1224249))

(declare-fun m!1224251 () Bool)

(assert (=> b!1336082 m!1224251))

(assert (=> b!1336082 m!1224245))

(declare-fun m!1224253 () Bool)

(assert (=> b!1336082 m!1224253))

(assert (=> b!1336082 m!1224243))

(assert (=> b!1336082 m!1224247))

(assert (=> b!1336082 m!1224233))

(assert (=> b!1336082 m!1224249))

(assert (=> b!1336082 m!1224253))

(declare-fun m!1224255 () Bool)

(assert (=> b!1336082 m!1224255))

(declare-fun m!1224257 () Bool)

(assert (=> mapNonEmpty!57032 m!1224257))

(declare-fun m!1224259 () Bool)

(assert (=> b!1336083 m!1224259))

(declare-fun m!1224261 () Bool)

(assert (=> start!112692 m!1224261))

(declare-fun m!1224263 () Bool)

(assert (=> start!112692 m!1224263))

(declare-fun m!1224265 () Bool)

(assert (=> start!112692 m!1224265))

(check-sat (not b!1336083) (not b!1336076) (not b!1336081) (not b!1336082) (not mapNonEmpty!57032) (not start!112692) tp_is_empty!36903 (not b!1336087) b_and!49935 (not b_lambda!24161) (not b_next!30993))
(check-sat b_and!49935 (not b_next!30993))
