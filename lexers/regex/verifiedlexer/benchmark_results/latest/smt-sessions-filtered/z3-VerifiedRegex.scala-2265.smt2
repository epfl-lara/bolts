; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110842 () Bool)

(assert start!110842)

(declare-fun b!1257031 () Bool)

(declare-fun b_free!29743 () Bool)

(declare-fun b_next!30447 () Bool)

(assert (=> b!1257031 (= b_free!29743 (not b_next!30447))))

(declare-fun tp!370576 () Bool)

(declare-fun b_and!84887 () Bool)

(assert (=> b!1257031 (= tp!370576 b_and!84887)))

(declare-datatypes ((V!2948 0))(
  ( (V!2949 (val!4184 Int)) )
))
(declare-datatypes ((tuple2!12478 0))(
  ( (tuple2!12479 (_1!7087 (_ BitVec 64)) (_2!7087 V!2948)) )
))
(declare-datatypes ((List!12630 0))(
  ( (Nil!12566) (Cons!12566 (h!17967 tuple2!12478) (t!115762 List!12630)) )
))
(declare-datatypes ((ListLongMap!143 0))(
  ( (ListLongMap!144 (toList!703 List!12630)) )
))
(declare-fun lt!420771 () ListLongMap!143)

(declare-fun v!11775 () V!2948)

(declare-fun e!800080 () Bool)

(declare-fun key!7099 () (_ BitVec 64))

(declare-fun b!1257028 () Bool)

(declare-fun call!88220 () ListLongMap!143)

(declare-fun +!35 (ListLongMap!143 tuple2!12478) ListLongMap!143)

(assert (=> b!1257028 (= e!800080 (not (= lt!420771 (+!35 call!88220 (tuple2!12479 key!7099 v!11775)))))))

(declare-fun bm!88214 () Bool)

(declare-fun call!88219 () ListLongMap!143)

(declare-datatypes ((array!4632 0))(
  ( (array!4633 (arr!2065 (Array (_ BitVec 32) (_ BitVec 64))) (size!9956 (_ BitVec 32))) )
))
(declare-datatypes ((array!4634 0))(
  ( (array!4635 (arr!2066 (Array (_ BitVec 32) V!2948)) (size!9957 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2612 0))(
  ( (LongMapFixedSize!2613 (defaultEntry!1666 Int) (mask!4115 (_ BitVec 32)) (extraKeys!1553 (_ BitVec 32)) (zeroValue!1563 V!2948) (minValue!1563 V!2948) (_size!2700 (_ BitVec 32)) (_keys!1600 array!4632) (_values!1585 array!4634) (_vacant!1367 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5123 0))(
  ( (Cell!5124 (v!20776 LongMapFixedSize!2612)) )
))
(declare-datatypes ((MutLongMap!1306 0))(
  ( (LongMap!1306 (underlying!2824 Cell!5123)) (MutLongMapExt!1305 (__x!8200 Int)) )
))
(declare-datatypes ((tuple2!12480 0))(
  ( (tuple2!12481 (_1!7088 Bool) (_2!7088 MutLongMap!1306)) )
))
(declare-fun lt!420770 () tuple2!12480)

(declare-fun abstractMap!52 (MutLongMap!1306) ListLongMap!143)

(assert (=> bm!88214 (= call!88219 (abstractMap!52 (_2!7088 lt!420770)))))

(declare-fun b!1257029 () Bool)

(declare-fun res!556548 () Bool)

(declare-fun e!800076 () Bool)

(assert (=> b!1257029 (=> (not res!556548) (not e!800076))))

(declare-fun thiss!47531 () MutLongMap!1306)

(get-info :version)

(assert (=> b!1257029 (= res!556548 (not ((_ is LongMap!1306) thiss!47531)))))

(declare-fun b!1257030 () Bool)

(declare-fun e!800083 () Bool)

(declare-fun e!800082 () Bool)

(assert (=> b!1257030 (= e!800083 e!800082)))

(declare-fun c!208705 () Bool)

(assert (=> b!1257030 (= c!208705 (_1!7088 lt!420770))))

(declare-fun tp_is_empty!6507 () Bool)

(declare-fun e!800078 () Bool)

(declare-fun e!800081 () Bool)

(declare-fun array_inv!1503 (array!4632) Bool)

(declare-fun array_inv!1504 (array!4634) Bool)

(assert (=> b!1257031 (= e!800078 (and tp!370576 tp_is_empty!6507 (array_inv!1503 (_keys!1600 (v!20776 (underlying!2824 thiss!47531)))) (array_inv!1504 (_values!1585 (v!20776 (underlying!2824 thiss!47531)))) e!800081))))

(declare-fun mapNonEmpty!6274 () Bool)

(declare-fun mapRes!6274 () Bool)

(declare-fun tp!370577 () Bool)

(assert (=> mapNonEmpty!6274 (= mapRes!6274 (and tp!370577 tp_is_empty!6507))))

(declare-fun mapRest!6274 () (Array (_ BitVec 32) V!2948))

(declare-fun mapValue!6274 () V!2948)

(declare-fun mapKey!6274 () (_ BitVec 32))

(assert (=> mapNonEmpty!6274 (= (arr!2066 (_values!1585 (v!20776 (underlying!2824 thiss!47531)))) (store mapRest!6274 mapKey!6274 mapValue!6274))))

(declare-fun b!1257032 () Bool)

(assert (=> b!1257032 (= e!800082 e!800080)))

(assert (=> b!1257032 (= lt!420771 call!88219)))

(declare-fun res!556547 () Bool)

(declare-fun contains!2123 (ListLongMap!143 (_ BitVec 64)) Bool)

(assert (=> b!1257032 (= res!556547 (not (contains!2123 lt!420771 key!7099)))))

(assert (=> b!1257032 (=> res!556547 e!800080)))

(declare-fun res!556549 () Bool)

(assert (=> start!110842 (=> (not res!556549) (not e!800076))))

(declare-fun valid!1045 (MutLongMap!1306) Bool)

(assert (=> start!110842 (= res!556549 (valid!1045 thiss!47531))))

(assert (=> start!110842 e!800076))

(declare-fun e!800084 () Bool)

(assert (=> start!110842 e!800084))

(assert (=> start!110842 true))

(assert (=> start!110842 tp_is_empty!6507))

(declare-fun b!1257033 () Bool)

(declare-fun e!800079 () Bool)

(assert (=> b!1257033 (= e!800084 e!800079)))

(declare-fun b!1257034 () Bool)

(assert (=> b!1257034 (= e!800082 (not (= call!88219 call!88220)))))

(declare-fun bm!88215 () Bool)

(assert (=> bm!88215 (= call!88220 (abstractMap!52 thiss!47531))))

(declare-fun b!1257035 () Bool)

(assert (=> b!1257035 (= e!800076 e!800083)))

(declare-fun res!556550 () Bool)

(assert (=> b!1257035 (=> res!556550 e!800083)))

(assert (=> b!1257035 (= res!556550 (not (valid!1045 (_2!7088 lt!420770))))))

(declare-fun update!81 (MutLongMap!1306 (_ BitVec 64) V!2948) tuple2!12480)

(assert (=> b!1257035 (= lt!420770 (update!81 thiss!47531 key!7099 v!11775))))

(declare-fun b!1257036 () Bool)

(assert (=> b!1257036 (= e!800081 (and tp_is_empty!6507 mapRes!6274))))

(declare-fun condMapEmpty!6274 () Bool)

(declare-fun mapDefault!6274 () V!2948)

(assert (=> b!1257036 (= condMapEmpty!6274 (= (arr!2066 (_values!1585 (v!20776 (underlying!2824 thiss!47531)))) ((as const (Array (_ BitVec 32) V!2948)) mapDefault!6274)))))

(declare-fun mapIsEmpty!6274 () Bool)

(assert (=> mapIsEmpty!6274 mapRes!6274))

(declare-fun b!1257037 () Bool)

(assert (=> b!1257037 (= e!800079 e!800078)))

(assert (= (and start!110842 res!556549) b!1257029))

(assert (= (and b!1257029 res!556548) b!1257035))

(assert (= (and b!1257035 (not res!556550)) b!1257030))

(assert (= (and b!1257030 c!208705) b!1257032))

(assert (= (and b!1257030 (not c!208705)) b!1257034))

(assert (= (and b!1257032 (not res!556547)) b!1257028))

(assert (= (or b!1257028 b!1257034) bm!88215))

(assert (= (or b!1257032 b!1257034) bm!88214))

(assert (= (and b!1257036 condMapEmpty!6274) mapIsEmpty!6274))

(assert (= (and b!1257036 (not condMapEmpty!6274)) mapNonEmpty!6274))

(assert (= b!1257031 b!1257036))

(assert (= b!1257037 b!1257031))

(assert (= b!1257033 b!1257037))

(assert (= (and start!110842 ((_ is LongMap!1306) thiss!47531)) b!1257033))

(declare-fun m!1415221 () Bool)

(assert (=> bm!88214 m!1415221))

(declare-fun m!1415223 () Bool)

(assert (=> b!1257032 m!1415223))

(declare-fun m!1415225 () Bool)

(assert (=> bm!88215 m!1415225))

(declare-fun m!1415227 () Bool)

(assert (=> b!1257028 m!1415227))

(declare-fun m!1415229 () Bool)

(assert (=> b!1257031 m!1415229))

(declare-fun m!1415231 () Bool)

(assert (=> b!1257031 m!1415231))

(declare-fun m!1415233 () Bool)

(assert (=> start!110842 m!1415233))

(declare-fun m!1415235 () Bool)

(assert (=> mapNonEmpty!6274 m!1415235))

(declare-fun m!1415237 () Bool)

(assert (=> b!1257035 m!1415237))

(declare-fun m!1415239 () Bool)

(assert (=> b!1257035 m!1415239))

(check-sat (not b!1257031) (not mapNonEmpty!6274) (not b_next!30447) (not b!1257028) (not b!1257032) (not b!1257035) (not start!110842) b_and!84887 (not bm!88215) (not bm!88214) tp_is_empty!6507)
(check-sat b_and!84887 (not b_next!30447))
(get-model)

(declare-fun d!355230 () Bool)

(declare-fun e!800089 () Bool)

(assert (=> d!355230 e!800089))

(declare-fun res!556553 () Bool)

(assert (=> d!355230 (=> res!556553 e!800089)))

(declare-fun lt!420782 () Bool)

(assert (=> d!355230 (= res!556553 (not lt!420782))))

(declare-fun lt!420781 () Bool)

(assert (=> d!355230 (= lt!420782 lt!420781)))

(declare-datatypes ((Unit!18849 0))(
  ( (Unit!18850) )
))
(declare-fun lt!420780 () Unit!18849)

(declare-fun e!800090 () Unit!18849)

(assert (=> d!355230 (= lt!420780 e!800090)))

(declare-fun c!208708 () Bool)

(assert (=> d!355230 (= c!208708 lt!420781)))

(declare-fun containsKey!34 (List!12630 (_ BitVec 64)) Bool)

(assert (=> d!355230 (= lt!420781 (containsKey!34 (toList!703 lt!420771) key!7099))))

(assert (=> d!355230 (= (contains!2123 lt!420771 key!7099) lt!420782)))

(declare-fun b!1257044 () Bool)

(declare-fun lt!420783 () Unit!18849)

(assert (=> b!1257044 (= e!800090 lt!420783)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!17 (List!12630 (_ BitVec 64)) Unit!18849)

(assert (=> b!1257044 (= lt!420783 (lemmaContainsKeyImpliesGetValueByKeyDefined!17 (toList!703 lt!420771) key!7099))))

(declare-datatypes ((Option!2527 0))(
  ( (None!2526) (Some!2526 (v!20778 V!2948)) )
))
(declare-fun isDefined!2163 (Option!2527) Bool)

(declare-fun getValueByKey!25 (List!12630 (_ BitVec 64)) Option!2527)

(assert (=> b!1257044 (isDefined!2163 (getValueByKey!25 (toList!703 lt!420771) key!7099))))

(declare-fun b!1257045 () Bool)

(declare-fun Unit!18851 () Unit!18849)

(assert (=> b!1257045 (= e!800090 Unit!18851)))

(declare-fun b!1257046 () Bool)

(assert (=> b!1257046 (= e!800089 (isDefined!2163 (getValueByKey!25 (toList!703 lt!420771) key!7099)))))

(assert (= (and d!355230 c!208708) b!1257044))

(assert (= (and d!355230 (not c!208708)) b!1257045))

(assert (= (and d!355230 (not res!556553)) b!1257046))

(declare-fun m!1415241 () Bool)

(assert (=> d!355230 m!1415241))

(declare-fun m!1415243 () Bool)

(assert (=> b!1257044 m!1415243))

(declare-fun m!1415245 () Bool)

(assert (=> b!1257044 m!1415245))

(assert (=> b!1257044 m!1415245))

(declare-fun m!1415247 () Bool)

(assert (=> b!1257044 m!1415247))

(assert (=> b!1257046 m!1415245))

(assert (=> b!1257046 m!1415245))

(assert (=> b!1257046 m!1415247))

(assert (=> b!1257032 d!355230))

(declare-fun d!355232 () Bool)

(declare-fun c!208711 () Bool)

(assert (=> d!355232 (= c!208711 ((_ is LongMap!1306) (_2!7088 lt!420770)))))

(declare-fun e!800093 () ListLongMap!143)

(assert (=> d!355232 (= (abstractMap!52 (_2!7088 lt!420770)) e!800093)))

(declare-fun b!1257051 () Bool)

(declare-fun abstractMap!53 (MutLongMap!1306) ListLongMap!143)

(assert (=> b!1257051 (= e!800093 (abstractMap!53 (_2!7088 lt!420770)))))

(declare-fun b!1257052 () Bool)

(declare-fun abstractMap!54 (MutLongMap!1306) ListLongMap!143)

(assert (=> b!1257052 (= e!800093 (abstractMap!54 (_2!7088 lt!420770)))))

(assert (= (and d!355232 c!208711) b!1257051))

(assert (= (and d!355232 (not c!208711)) b!1257052))

(declare-fun m!1415249 () Bool)

(assert (=> b!1257051 m!1415249))

(declare-fun m!1415251 () Bool)

(assert (=> b!1257052 m!1415251))

(assert (=> bm!88214 d!355232))

(declare-fun d!355234 () Bool)

(declare-fun c!208714 () Bool)

(assert (=> d!355234 (= c!208714 ((_ is LongMap!1306) thiss!47531))))

(declare-fun e!800096 () Bool)

(assert (=> d!355234 (= (valid!1045 thiss!47531) e!800096)))

(declare-fun b!1257057 () Bool)

(declare-fun valid!1046 (MutLongMap!1306) Bool)

(assert (=> b!1257057 (= e!800096 (valid!1046 thiss!47531))))

(declare-fun b!1257058 () Bool)

(declare-fun valid!1047 (MutLongMap!1306) Bool)

(assert (=> b!1257058 (= e!800096 (valid!1047 thiss!47531))))

(assert (= (and d!355234 c!208714) b!1257057))

(assert (= (and d!355234 (not c!208714)) b!1257058))

(declare-fun m!1415253 () Bool)

(assert (=> b!1257057 m!1415253))

(declare-fun m!1415255 () Bool)

(assert (=> b!1257058 m!1415255))

(assert (=> start!110842 d!355234))

(declare-fun d!355236 () Bool)

(assert (=> d!355236 (= (array_inv!1503 (_keys!1600 (v!20776 (underlying!2824 thiss!47531)))) (bvsge (size!9956 (_keys!1600 (v!20776 (underlying!2824 thiss!47531)))) #b00000000000000000000000000000000))))

(assert (=> b!1257031 d!355236))

(declare-fun d!355238 () Bool)

(assert (=> d!355238 (= (array_inv!1504 (_values!1585 (v!20776 (underlying!2824 thiss!47531)))) (bvsge (size!9957 (_values!1585 (v!20776 (underlying!2824 thiss!47531)))) #b00000000000000000000000000000000))))

(assert (=> b!1257031 d!355238))

(declare-fun d!355240 () Bool)

(declare-fun c!208715 () Bool)

(assert (=> d!355240 (= c!208715 ((_ is LongMap!1306) thiss!47531))))

(declare-fun e!800097 () ListLongMap!143)

(assert (=> d!355240 (= (abstractMap!52 thiss!47531) e!800097)))

(declare-fun b!1257059 () Bool)

(assert (=> b!1257059 (= e!800097 (abstractMap!53 thiss!47531))))

(declare-fun b!1257060 () Bool)

(assert (=> b!1257060 (= e!800097 (abstractMap!54 thiss!47531))))

(assert (= (and d!355240 c!208715) b!1257059))

(assert (= (and d!355240 (not c!208715)) b!1257060))

(declare-fun m!1415257 () Bool)

(assert (=> b!1257059 m!1415257))

(declare-fun m!1415259 () Bool)

(assert (=> b!1257060 m!1415259))

(assert (=> bm!88215 d!355240))

(declare-fun d!355242 () Bool)

(declare-fun c!208716 () Bool)

(assert (=> d!355242 (= c!208716 ((_ is LongMap!1306) (_2!7088 lt!420770)))))

(declare-fun e!800098 () Bool)

(assert (=> d!355242 (= (valid!1045 (_2!7088 lt!420770)) e!800098)))

(declare-fun b!1257061 () Bool)

(assert (=> b!1257061 (= e!800098 (valid!1046 (_2!7088 lt!420770)))))

(declare-fun b!1257062 () Bool)

(assert (=> b!1257062 (= e!800098 (valid!1047 (_2!7088 lt!420770)))))

(assert (= (and d!355242 c!208716) b!1257061))

(assert (= (and d!355242 (not c!208716)) b!1257062))

(declare-fun m!1415261 () Bool)

(assert (=> b!1257061 m!1415261))

(declare-fun m!1415263 () Bool)

(assert (=> b!1257062 m!1415263))

(assert (=> b!1257035 d!355242))

(declare-fun b!1257073 () Bool)

(declare-fun e!800107 () Bool)

(declare-fun e!800106 () Bool)

(assert (=> b!1257073 (= e!800107 e!800106)))

(declare-fun res!556560 () Bool)

(declare-fun call!88225 () ListLongMap!143)

(assert (=> b!1257073 (= res!556560 (contains!2123 call!88225 key!7099))))

(assert (=> b!1257073 (=> (not res!556560) (not e!800106))))

(declare-fun call!88226 () ListLongMap!143)

(declare-fun b!1257074 () Bool)

(assert (=> b!1257074 (= e!800106 (= call!88225 (+!35 call!88226 (tuple2!12479 key!7099 v!11775))))))

(declare-fun b!1257075 () Bool)

(declare-fun e!800105 () Bool)

(assert (=> b!1257075 (= e!800105 e!800107)))

(declare-fun c!208719 () Bool)

(declare-fun lt!420786 () tuple2!12480)

(assert (=> b!1257075 (= c!208719 (_1!7088 lt!420786))))

(declare-fun bm!88220 () Bool)

(assert (=> bm!88220 (= call!88225 (abstractMap!52 (_2!7088 lt!420786)))))

(declare-fun d!355244 () Bool)

(assert (=> d!355244 e!800105))

(declare-fun res!556561 () Bool)

(assert (=> d!355244 (=> (not res!556561) (not e!800105))))

(assert (=> d!355244 (= res!556561 ((_ is MutLongMapExt!1305) (_2!7088 lt!420786)))))

(declare-fun choose!7872 (MutLongMap!1306 (_ BitVec 64) V!2948) tuple2!12480)

(assert (=> d!355244 (= lt!420786 (choose!7872 thiss!47531 key!7099 v!11775))))

(assert (=> d!355244 (valid!1045 thiss!47531)))

(assert (=> d!355244 (= (update!81 thiss!47531 key!7099 v!11775) lt!420786)))

(declare-fun b!1257076 () Bool)

(assert (=> b!1257076 (= e!800107 (= call!88225 call!88226))))

(declare-fun bm!88221 () Bool)

(assert (=> bm!88221 (= call!88226 (abstractMap!52 thiss!47531))))

(declare-fun b!1257077 () Bool)

(declare-fun res!556562 () Bool)

(assert (=> b!1257077 (=> (not res!556562) (not e!800105))))

(assert (=> b!1257077 (= res!556562 (valid!1045 (_2!7088 lt!420786)))))

(assert (= (and d!355244 res!556561) b!1257077))

(assert (= (and b!1257077 res!556562) b!1257075))

(assert (= (and b!1257075 c!208719) b!1257073))

(assert (= (and b!1257075 (not c!208719)) b!1257076))

(assert (= (and b!1257073 res!556560) b!1257074))

(assert (= (or b!1257073 b!1257074 b!1257076) bm!88220))

(assert (= (or b!1257074 b!1257076) bm!88221))

(assert (=> bm!88221 m!1415225))

(declare-fun m!1415265 () Bool)

(assert (=> bm!88220 m!1415265))

(declare-fun m!1415267 () Bool)

(assert (=> d!355244 m!1415267))

(assert (=> d!355244 m!1415233))

(declare-fun m!1415269 () Bool)

(assert (=> b!1257074 m!1415269))

(declare-fun m!1415271 () Bool)

(assert (=> b!1257073 m!1415271))

(declare-fun m!1415273 () Bool)

(assert (=> b!1257077 m!1415273))

(assert (=> b!1257035 d!355244))

(declare-fun d!355246 () Bool)

(declare-fun e!800110 () Bool)

(assert (=> d!355246 e!800110))

(declare-fun res!556567 () Bool)

(assert (=> d!355246 (=> (not res!556567) (not e!800110))))

(declare-fun lt!420795 () ListLongMap!143)

(assert (=> d!355246 (= res!556567 (contains!2123 lt!420795 (_1!7087 (tuple2!12479 key!7099 v!11775))))))

(declare-fun lt!420796 () List!12630)

(assert (=> d!355246 (= lt!420795 (ListLongMap!144 lt!420796))))

(declare-fun lt!420797 () Unit!18849)

(declare-fun lt!420798 () Unit!18849)

(assert (=> d!355246 (= lt!420797 lt!420798)))

(assert (=> d!355246 (= (getValueByKey!25 lt!420796 (_1!7087 (tuple2!12479 key!7099 v!11775))) (Some!2526 (_2!7087 (tuple2!12479 key!7099 v!11775))))))

(declare-fun lemmaContainsTupThenGetReturnValue!11 (List!12630 (_ BitVec 64) V!2948) Unit!18849)

(assert (=> d!355246 (= lt!420798 (lemmaContainsTupThenGetReturnValue!11 lt!420796 (_1!7087 (tuple2!12479 key!7099 v!11775)) (_2!7087 (tuple2!12479 key!7099 v!11775))))))

(declare-fun insertStrictlySorted!7 (List!12630 (_ BitVec 64) V!2948) List!12630)

(assert (=> d!355246 (= lt!420796 (insertStrictlySorted!7 (toList!703 call!88220) (_1!7087 (tuple2!12479 key!7099 v!11775)) (_2!7087 (tuple2!12479 key!7099 v!11775))))))

(assert (=> d!355246 (= (+!35 call!88220 (tuple2!12479 key!7099 v!11775)) lt!420795)))

(declare-fun b!1257082 () Bool)

(declare-fun res!556568 () Bool)

(assert (=> b!1257082 (=> (not res!556568) (not e!800110))))

(assert (=> b!1257082 (= res!556568 (= (getValueByKey!25 (toList!703 lt!420795) (_1!7087 (tuple2!12479 key!7099 v!11775))) (Some!2526 (_2!7087 (tuple2!12479 key!7099 v!11775)))))))

(declare-fun b!1257083 () Bool)

(declare-fun contains!2124 (List!12630 tuple2!12478) Bool)

(assert (=> b!1257083 (= e!800110 (contains!2124 (toList!703 lt!420795) (tuple2!12479 key!7099 v!11775)))))

(assert (= (and d!355246 res!556567) b!1257082))

(assert (= (and b!1257082 res!556568) b!1257083))

(declare-fun m!1415275 () Bool)

(assert (=> d!355246 m!1415275))

(declare-fun m!1415277 () Bool)

(assert (=> d!355246 m!1415277))

(declare-fun m!1415279 () Bool)

(assert (=> d!355246 m!1415279))

(declare-fun m!1415281 () Bool)

(assert (=> d!355246 m!1415281))

(declare-fun m!1415283 () Bool)

(assert (=> b!1257082 m!1415283))

(declare-fun m!1415285 () Bool)

(assert (=> b!1257083 m!1415285))

(assert (=> b!1257028 d!355246))

(declare-fun condMapEmpty!6277 () Bool)

(declare-fun mapDefault!6277 () V!2948)

(assert (=> mapNonEmpty!6274 (= condMapEmpty!6277 (= mapRest!6274 ((as const (Array (_ BitVec 32) V!2948)) mapDefault!6277)))))

(declare-fun mapRes!6277 () Bool)

(assert (=> mapNonEmpty!6274 (= tp!370577 (and tp_is_empty!6507 mapRes!6277))))

(declare-fun mapIsEmpty!6277 () Bool)

(assert (=> mapIsEmpty!6277 mapRes!6277))

(declare-fun mapNonEmpty!6277 () Bool)

(declare-fun tp!370580 () Bool)

(assert (=> mapNonEmpty!6277 (= mapRes!6277 (and tp!370580 tp_is_empty!6507))))

(declare-fun mapValue!6277 () V!2948)

(declare-fun mapRest!6277 () (Array (_ BitVec 32) V!2948))

(declare-fun mapKey!6277 () (_ BitVec 32))

(assert (=> mapNonEmpty!6277 (= mapRest!6274 (store mapRest!6277 mapKey!6277 mapValue!6277))))

(assert (= (and mapNonEmpty!6274 condMapEmpty!6277) mapIsEmpty!6277))

(assert (= (and mapNonEmpty!6274 (not condMapEmpty!6277)) mapNonEmpty!6277))

(declare-fun m!1415287 () Bool)

(assert (=> mapNonEmpty!6277 m!1415287))

(check-sat (not b!1257060) (not b!1257058) (not b_next!30447) (not b!1257083) (not b!1257074) (not d!355230) (not b!1257061) (not b!1257073) (not bm!88221) (not b!1257052) (not bm!88220) b_and!84887 (not b!1257059) (not b!1257077) (not b!1257051) (not mapNonEmpty!6277) (not b!1257062) (not b!1257082) (not d!355244) (not b!1257044) (not b!1257057) tp_is_empty!6507 (not d!355246) (not b!1257046))
(check-sat b_and!84887 (not b_next!30447))
