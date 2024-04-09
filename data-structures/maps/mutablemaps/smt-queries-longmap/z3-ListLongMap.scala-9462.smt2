; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112418 () Bool)

(assert start!112418)

(declare-fun b_free!30777 () Bool)

(declare-fun b_next!30777 () Bool)

(assert (=> start!112418 (= b_free!30777 (not b_next!30777))))

(declare-fun tp!107968 () Bool)

(declare-fun b_and!49619 () Bool)

(assert (=> start!112418 (= tp!107968 b_and!49619)))

(declare-fun b!1332224 () Bool)

(declare-fun e!759003 () Bool)

(declare-fun tp_is_empty!36687 () Bool)

(assert (=> b!1332224 (= e!759003 tp_is_empty!36687)))

(declare-fun mapIsEmpty!56704 () Bool)

(declare-fun mapRes!56704 () Bool)

(assert (=> mapIsEmpty!56704 mapRes!56704))

(declare-fun b!1332226 () Bool)

(declare-fun res!884167 () Bool)

(declare-fun e!759000 () Bool)

(assert (=> b!1332226 (=> (not res!884167) (not e!759000))))

(declare-datatypes ((array!90223 0))(
  ( (array!90224 (arr!43573 (Array (_ BitVec 32) (_ BitVec 64))) (size!44124 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90223)

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1332226 (= res!884167 (validKeyInArray!0 (select (arr!43573 _keys!1590) from!1980)))))

(declare-fun b!1332227 () Bool)

(declare-fun res!884168 () Bool)

(assert (=> b!1332227 (=> (not res!884168) (not e!759000))))

(declare-datatypes ((V!54019 0))(
  ( (V!54020 (val!18418 Int)) )
))
(declare-datatypes ((ValueCell!17445 0))(
  ( (ValueCellFull!17445 (v!21053 V!54019)) (EmptyCell!17445) )
))
(declare-datatypes ((array!90225 0))(
  ( (array!90226 (arr!43574 (Array (_ BitVec 32) ValueCell!17445)) (size!44125 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90225)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun defaultEntry!1323 () Int)

(declare-fun k0!1153 () (_ BitVec 64))

(declare-fun minValue!1262 () V!54019)

(declare-fun zeroValue!1262 () V!54019)

(declare-datatypes ((tuple2!23884 0))(
  ( (tuple2!23885 (_1!11952 (_ BitVec 64)) (_2!11952 V!54019)) )
))
(declare-datatypes ((List!31062 0))(
  ( (Nil!31059) (Cons!31058 (h!32267 tuple2!23884) (t!45259 List!31062)) )
))
(declare-datatypes ((ListLongMap!21553 0))(
  ( (ListLongMap!21554 (toList!10792 List!31062)) )
))
(declare-fun contains!8892 (ListLongMap!21553 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5713 (array!90223 array!90225 (_ BitVec 32) (_ BitVec 32) V!54019 V!54019 (_ BitVec 32) Int) ListLongMap!21553)

(assert (=> b!1332227 (= res!884168 (contains!8892 (getCurrentListMap!5713 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun b!1332228 () Bool)

(declare-fun res!884172 () Bool)

(assert (=> b!1332228 (=> (not res!884172) (not e!759000))))

(assert (=> b!1332228 (= res!884172 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1332229 () Bool)

(declare-fun res!884173 () Bool)

(assert (=> b!1332229 (=> (not res!884173) (not e!759000))))

(assert (=> b!1332229 (= res!884173 (and (= (size!44125 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44124 _keys!1590) (size!44125 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1332230 () Bool)

(declare-fun res!884169 () Bool)

(assert (=> b!1332230 (=> (not res!884169) (not e!759000))))

(assert (=> b!1332230 (= res!884169 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44124 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1332231 () Bool)

(assert (=> b!1332231 (= e!759000 (not true))))

(declare-fun lt!591885 () ListLongMap!21553)

(declare-fun +!4679 (ListLongMap!21553 tuple2!23884) ListLongMap!21553)

(assert (=> b!1332231 (contains!8892 (+!4679 lt!591885 (tuple2!23885 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)) k0!1153)))

(declare-datatypes ((Unit!43785 0))(
  ( (Unit!43786) )
))
(declare-fun lt!591888 () Unit!43785)

(declare-fun addStillContains!1189 (ListLongMap!21553 (_ BitVec 64) V!54019 (_ BitVec 64)) Unit!43785)

(assert (=> b!1332231 (= lt!591888 (addStillContains!1189 lt!591885 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 k0!1153))))

(assert (=> b!1332231 (contains!8892 lt!591885 k0!1153)))

(declare-fun lt!591886 () Unit!43785)

(declare-fun lt!591887 () V!54019)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!284 ((_ BitVec 64) (_ BitVec 64) V!54019 ListLongMap!21553) Unit!43785)

(assert (=> b!1332231 (= lt!591886 (lemmaInListMapAfterAddingDiffThenInBefore!284 k0!1153 (select (arr!43573 _keys!1590) from!1980) lt!591887 lt!591885))))

(declare-fun lt!591890 () ListLongMap!21553)

(assert (=> b!1332231 (contains!8892 lt!591890 k0!1153)))

(declare-fun lt!591889 () Unit!43785)

(assert (=> b!1332231 (= lt!591889 (lemmaInListMapAfterAddingDiffThenInBefore!284 k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 lt!591890))))

(assert (=> b!1332231 (= lt!591890 (+!4679 lt!591885 (tuple2!23885 (select (arr!43573 _keys!1590) from!1980) lt!591887)))))

(declare-fun get!22023 (ValueCell!17445 V!54019) V!54019)

(declare-fun dynLambda!3716 (Int (_ BitVec 64)) V!54019)

(assert (=> b!1332231 (= lt!591887 (get!22023 (select (arr!43574 _values!1320) from!1980) (dynLambda!3716 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6397 (array!90223 array!90225 (_ BitVec 32) (_ BitVec 32) V!54019 V!54019 (_ BitVec 32) Int) ListLongMap!21553)

(assert (=> b!1332231 (= lt!591885 (getCurrentListMapNoExtraKeys!6397 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun b!1332232 () Bool)

(declare-fun e!759001 () Bool)

(declare-fun e!759004 () Bool)

(assert (=> b!1332232 (= e!759001 (and e!759004 mapRes!56704))))

(declare-fun condMapEmpty!56704 () Bool)

(declare-fun mapDefault!56704 () ValueCell!17445)

(assert (=> b!1332232 (= condMapEmpty!56704 (= (arr!43574 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17445)) mapDefault!56704)))))

(declare-fun b!1332233 () Bool)

(assert (=> b!1332233 (= e!759004 tp_is_empty!36687)))

(declare-fun b!1332234 () Bool)

(declare-fun res!884174 () Bool)

(assert (=> b!1332234 (=> (not res!884174) (not e!759000))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90223 (_ BitVec 32)) Bool)

(assert (=> b!1332234 (= res!884174 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun res!884166 () Bool)

(assert (=> start!112418 (=> (not res!884166) (not e!759000))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112418 (= res!884166 (validMask!0 mask!1998))))

(assert (=> start!112418 e!759000))

(declare-fun array_inv!32815 (array!90225) Bool)

(assert (=> start!112418 (and (array_inv!32815 _values!1320) e!759001)))

(assert (=> start!112418 true))

(declare-fun array_inv!32816 (array!90223) Bool)

(assert (=> start!112418 (array_inv!32816 _keys!1590)))

(assert (=> start!112418 tp!107968))

(assert (=> start!112418 tp_is_empty!36687))

(declare-fun b!1332225 () Bool)

(declare-fun res!884170 () Bool)

(assert (=> b!1332225 (=> (not res!884170) (not e!759000))))

(declare-datatypes ((List!31063 0))(
  ( (Nil!31060) (Cons!31059 (h!32268 (_ BitVec 64)) (t!45260 List!31063)) )
))
(declare-fun arrayNoDuplicates!0 (array!90223 (_ BitVec 32) List!31063) Bool)

(assert (=> b!1332225 (= res!884170 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31060))))

(declare-fun b!1332235 () Bool)

(declare-fun res!884171 () Bool)

(assert (=> b!1332235 (=> (not res!884171) (not e!759000))))

(assert (=> b!1332235 (= res!884171 (not (= (select (arr!43573 _keys!1590) from!1980) k0!1153)))))

(declare-fun mapNonEmpty!56704 () Bool)

(declare-fun tp!107969 () Bool)

(assert (=> mapNonEmpty!56704 (= mapRes!56704 (and tp!107969 e!759003))))

(declare-fun mapKey!56704 () (_ BitVec 32))

(declare-fun mapRest!56704 () (Array (_ BitVec 32) ValueCell!17445))

(declare-fun mapValue!56704 () ValueCell!17445)

(assert (=> mapNonEmpty!56704 (= (arr!43574 _values!1320) (store mapRest!56704 mapKey!56704 mapValue!56704))))

(assert (= (and start!112418 res!884166) b!1332229))

(assert (= (and b!1332229 res!884173) b!1332234))

(assert (= (and b!1332234 res!884174) b!1332225))

(assert (= (and b!1332225 res!884170) b!1332230))

(assert (= (and b!1332230 res!884169) b!1332227))

(assert (= (and b!1332227 res!884168) b!1332235))

(assert (= (and b!1332235 res!884171) b!1332226))

(assert (= (and b!1332226 res!884167) b!1332228))

(assert (= (and b!1332228 res!884172) b!1332231))

(assert (= (and b!1332232 condMapEmpty!56704) mapIsEmpty!56704))

(assert (= (and b!1332232 (not condMapEmpty!56704)) mapNonEmpty!56704))

(get-info :version)

(assert (= (and mapNonEmpty!56704 ((_ is ValueCellFull!17445) mapValue!56704)) b!1332224))

(assert (= (and b!1332232 ((_ is ValueCellFull!17445) mapDefault!56704)) b!1332233))

(assert (= start!112418 b!1332232))

(declare-fun b_lambda!24047 () Bool)

(assert (=> (not b_lambda!24047) (not b!1332231)))

(declare-fun t!45258 () Bool)

(declare-fun tb!12001 () Bool)

(assert (=> (and start!112418 (= defaultEntry!1323 defaultEntry!1323) t!45258) tb!12001))

(declare-fun result!25065 () Bool)

(assert (=> tb!12001 (= result!25065 tp_is_empty!36687)))

(assert (=> b!1332231 t!45258))

(declare-fun b_and!49621 () Bool)

(assert (= b_and!49619 (and (=> t!45258 result!25065) b_and!49621)))

(declare-fun m!1221059 () Bool)

(assert (=> b!1332231 m!1221059))

(declare-fun m!1221061 () Bool)

(assert (=> b!1332231 m!1221061))

(declare-fun m!1221063 () Bool)

(assert (=> b!1332231 m!1221063))

(assert (=> b!1332231 m!1221061))

(declare-fun m!1221065 () Bool)

(assert (=> b!1332231 m!1221065))

(declare-fun m!1221067 () Bool)

(assert (=> b!1332231 m!1221067))

(declare-fun m!1221069 () Bool)

(assert (=> b!1332231 m!1221069))

(declare-fun m!1221071 () Bool)

(assert (=> b!1332231 m!1221071))

(assert (=> b!1332231 m!1221063))

(declare-fun m!1221073 () Bool)

(assert (=> b!1332231 m!1221073))

(declare-fun m!1221075 () Bool)

(assert (=> b!1332231 m!1221075))

(assert (=> b!1332231 m!1221073))

(declare-fun m!1221077 () Bool)

(assert (=> b!1332231 m!1221077))

(assert (=> b!1332231 m!1221059))

(declare-fun m!1221079 () Bool)

(assert (=> b!1332231 m!1221079))

(declare-fun m!1221081 () Bool)

(assert (=> b!1332231 m!1221081))

(declare-fun m!1221083 () Bool)

(assert (=> b!1332231 m!1221083))

(assert (=> b!1332235 m!1221073))

(assert (=> b!1332226 m!1221073))

(assert (=> b!1332226 m!1221073))

(declare-fun m!1221085 () Bool)

(assert (=> b!1332226 m!1221085))

(declare-fun m!1221087 () Bool)

(assert (=> b!1332227 m!1221087))

(assert (=> b!1332227 m!1221087))

(declare-fun m!1221089 () Bool)

(assert (=> b!1332227 m!1221089))

(declare-fun m!1221091 () Bool)

(assert (=> b!1332225 m!1221091))

(declare-fun m!1221093 () Bool)

(assert (=> start!112418 m!1221093))

(declare-fun m!1221095 () Bool)

(assert (=> start!112418 m!1221095))

(declare-fun m!1221097 () Bool)

(assert (=> start!112418 m!1221097))

(declare-fun m!1221099 () Bool)

(assert (=> b!1332234 m!1221099))

(declare-fun m!1221101 () Bool)

(assert (=> mapNonEmpty!56704 m!1221101))

(check-sat (not b!1332234) tp_is_empty!36687 (not b_lambda!24047) b_and!49621 (not b!1332227) (not b!1332225) (not b_next!30777) (not b!1332226) (not b!1332231) (not mapNonEmpty!56704) (not start!112418))
(check-sat b_and!49621 (not b_next!30777))
