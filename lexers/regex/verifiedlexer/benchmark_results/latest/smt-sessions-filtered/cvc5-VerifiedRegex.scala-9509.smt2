; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!502496 () Bool)

(assert start!502496)

(declare-fun b!4834254 () Bool)

(declare-fun res!2059420 () Bool)

(declare-fun e!3021031 () Bool)

(assert (=> b!4834254 (=> res!2059420 e!3021031)))

(declare-datatypes ((K!16832 0))(
  ( (K!16833 (val!21771 Int)) )
))
(declare-datatypes ((V!17078 0))(
  ( (V!17079 (val!21772 Int)) )
))
(declare-datatypes ((tuple2!58426 0))(
  ( (tuple2!58427 (_1!32507 K!16832) (_2!32507 V!17078)) )
))
(declare-datatypes ((List!55240 0))(
  ( (Nil!55116) (Cons!55116 (h!61550 tuple2!58426) (t!362736 List!55240)) )
))
(declare-fun l!14180 () List!55240)

(declare-fun key!5666 () K!16832)

(declare-fun lt!1980114 () Bool)

(assert (=> b!4834254 (= res!2059420 (or (= (_1!32507 (h!61550 l!14180)) key!5666) lt!1980114))))

(declare-fun res!2059419 () Bool)

(declare-fun e!3021030 () Bool)

(assert (=> start!502496 (=> (not res!2059419) (not e!3021030))))

(declare-fun noDuplicateKeys!2503 (List!55240) Bool)

(assert (=> start!502496 (= res!2059419 (noDuplicateKeys!2503 l!14180))))

(assert (=> start!502496 e!3021030))

(declare-fun e!3021033 () Bool)

(assert (=> start!502496 e!3021033))

(declare-datatypes ((ListMap!6987 0))(
  ( (ListMap!6988 (toList!7589 List!55240)) )
))
(declare-fun acc!1183 () ListMap!6987)

(declare-fun e!3021034 () Bool)

(declare-fun inv!70733 (ListMap!6987) Bool)

(assert (=> start!502496 (and (inv!70733 acc!1183) e!3021034)))

(declare-fun tp_is_empty!34693 () Bool)

(assert (=> start!502496 tp_is_empty!34693))

(declare-fun b!4834255 () Bool)

(assert (=> b!4834255 (= e!3021030 (not e!3021031))))

(declare-fun res!2059418 () Bool)

(assert (=> b!4834255 (=> res!2059418 e!3021031)))

(declare-fun contains!18936 (ListMap!6987 K!16832) Bool)

(assert (=> b!4834255 (= res!2059418 (contains!18936 acc!1183 key!5666))))

(declare-fun lt!1980115 () ListMap!6987)

(declare-fun e!3021032 () Bool)

(assert (=> b!4834255 (= (contains!18936 lt!1980115 key!5666) e!3021032)))

(declare-fun res!2059422 () Bool)

(assert (=> b!4834255 (=> res!2059422 e!3021032)))

(assert (=> b!4834255 (= res!2059422 lt!1980114)))

(declare-fun containsKey!4480 (List!55240 K!16832) Bool)

(assert (=> b!4834255 (= lt!1980114 (containsKey!4480 (t!362736 l!14180) key!5666))))

(declare-fun lt!1980112 () ListMap!6987)

(declare-datatypes ((Unit!144377 0))(
  ( (Unit!144378) )
))
(declare-fun lt!1980113 () Unit!144377)

(declare-fun lemmaAddToMapFromBucketContainsIIFInAccOrL!71 (List!55240 ListMap!6987 K!16832) Unit!144377)

(assert (=> b!4834255 (= lt!1980113 (lemmaAddToMapFromBucketContainsIIFInAccOrL!71 (t!362736 l!14180) lt!1980112 key!5666))))

(declare-fun addToMapMapFromBucket!1858 (List!55240 ListMap!6987) ListMap!6987)

(assert (=> b!4834255 (= lt!1980115 (addToMapMapFromBucket!1858 (t!362736 l!14180) lt!1980112))))

(declare-fun +!2582 (ListMap!6987 tuple2!58426) ListMap!6987)

(assert (=> b!4834255 (= lt!1980112 (+!2582 acc!1183 (h!61550 l!14180)))))

(declare-fun b!4834256 () Bool)

(declare-fun tp!1363191 () Bool)

(assert (=> b!4834256 (= e!3021034 tp!1363191)))

(declare-fun b!4834257 () Bool)

(assert (=> b!4834257 (= e!3021031 (noDuplicateKeys!2503 (t!362736 l!14180)))))

(declare-fun b!4834258 () Bool)

(assert (=> b!4834258 (= e!3021032 (contains!18936 lt!1980112 key!5666))))

(declare-fun b!4834259 () Bool)

(declare-fun res!2059421 () Bool)

(assert (=> b!4834259 (=> (not res!2059421) (not e!3021030))))

(assert (=> b!4834259 (= res!2059421 (not (is-Nil!55116 l!14180)))))

(declare-fun b!4834260 () Bool)

(declare-fun tp_is_empty!34695 () Bool)

(declare-fun tp!1363192 () Bool)

(assert (=> b!4834260 (= e!3021033 (and tp_is_empty!34693 tp_is_empty!34695 tp!1363192))))

(assert (= (and start!502496 res!2059419) b!4834259))

(assert (= (and b!4834259 res!2059421) b!4834255))

(assert (= (and b!4834255 (not res!2059422)) b!4834258))

(assert (= (and b!4834255 (not res!2059418)) b!4834254))

(assert (= (and b!4834254 (not res!2059420)) b!4834257))

(assert (= (and start!502496 (is-Cons!55116 l!14180)) b!4834260))

(assert (= start!502496 b!4834256))

(declare-fun m!5829118 () Bool)

(assert (=> start!502496 m!5829118))

(declare-fun m!5829120 () Bool)

(assert (=> start!502496 m!5829120))

(declare-fun m!5829122 () Bool)

(assert (=> b!4834255 m!5829122))

(declare-fun m!5829124 () Bool)

(assert (=> b!4834255 m!5829124))

(declare-fun m!5829126 () Bool)

(assert (=> b!4834255 m!5829126))

(declare-fun m!5829128 () Bool)

(assert (=> b!4834255 m!5829128))

(declare-fun m!5829130 () Bool)

(assert (=> b!4834255 m!5829130))

(declare-fun m!5829132 () Bool)

(assert (=> b!4834255 m!5829132))

(declare-fun m!5829134 () Bool)

(assert (=> b!4834257 m!5829134))

(declare-fun m!5829136 () Bool)

(assert (=> b!4834258 m!5829136))

(push 1)

(assert (not b!4834255))

(assert (not start!502496))

(assert tp_is_empty!34695)

(assert (not b!4834256))

(assert (not b!4834258))

(assert (not b!4834257))

(assert (not b!4834260))

(assert tp_is_empty!34693)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1549996 () Bool)

(declare-fun e!3021065 () Bool)

(assert (=> d!1549996 e!3021065))

(declare-fun res!2059446 () Bool)

(assert (=> d!1549996 (=> res!2059446 e!3021065)))

(declare-fun e!3021063 () Bool)

(assert (=> d!1549996 (= res!2059446 e!3021063)))

(declare-fun res!2059444 () Bool)

(assert (=> d!1549996 (=> (not res!2059444) (not e!3021063))))

(declare-fun lt!1980147 () Bool)

(assert (=> d!1549996 (= res!2059444 (not lt!1980147))))

(declare-fun lt!1980149 () Bool)

(assert (=> d!1549996 (= lt!1980147 lt!1980149)))

(declare-fun lt!1980144 () Unit!144377)

(declare-fun e!3021067 () Unit!144377)

(assert (=> d!1549996 (= lt!1980144 e!3021067)))

(declare-fun c!823700 () Bool)

(assert (=> d!1549996 (= c!823700 lt!1980149)))

(declare-fun containsKey!4482 (List!55240 K!16832) Bool)

(assert (=> d!1549996 (= lt!1980149 (containsKey!4482 (toList!7589 acc!1183) key!5666))))

(assert (=> d!1549996 (= (contains!18936 acc!1183 key!5666) lt!1980147)))

(declare-fun b!4834300 () Bool)

(declare-fun e!3021064 () Bool)

(assert (=> b!4834300 (= e!3021065 e!3021064)))

(declare-fun res!2059445 () Bool)

(assert (=> b!4834300 (=> (not res!2059445) (not e!3021064))))

(declare-datatypes ((Option!13549 0))(
  ( (None!13548) (Some!13548 (v!49249 V!17078)) )
))
(declare-fun isDefined!10660 (Option!13549) Bool)

(declare-fun getValueByKey!2676 (List!55240 K!16832) Option!13549)

(assert (=> b!4834300 (= res!2059445 (isDefined!10660 (getValueByKey!2676 (toList!7589 acc!1183) key!5666)))))

(declare-fun b!4834301 () Bool)

(declare-datatypes ((List!55242 0))(
  ( (Nil!55118) (Cons!55118 (h!61552 K!16832) (t!362738 List!55242)) )
))
(declare-fun contains!18938 (List!55242 K!16832) Bool)

(declare-fun keys!20326 (ListMap!6987) List!55242)

(assert (=> b!4834301 (= e!3021063 (not (contains!18938 (keys!20326 acc!1183) key!5666)))))

(declare-fun b!4834302 () Bool)

(assert (=> b!4834302 (= e!3021064 (contains!18938 (keys!20326 acc!1183) key!5666))))

(declare-fun b!4834303 () Bool)

(declare-fun e!3021062 () Unit!144377)

(declare-fun Unit!144381 () Unit!144377)

(assert (=> b!4834303 (= e!3021062 Unit!144381)))

(declare-fun b!4834304 () Bool)

(declare-fun lt!1980150 () Unit!144377)

(assert (=> b!4834304 (= e!3021067 lt!1980150)))

(declare-fun lt!1980148 () Unit!144377)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2457 (List!55240 K!16832) Unit!144377)

(assert (=> b!4834304 (= lt!1980148 (lemmaContainsKeyImpliesGetValueByKeyDefined!2457 (toList!7589 acc!1183) key!5666))))

(assert (=> b!4834304 (isDefined!10660 (getValueByKey!2676 (toList!7589 acc!1183) key!5666))))

(declare-fun lt!1980145 () Unit!144377)

(assert (=> b!4834304 (= lt!1980145 lt!1980148)))

(declare-fun lemmaInListThenGetKeysListContains!1182 (List!55240 K!16832) Unit!144377)

(assert (=> b!4834304 (= lt!1980150 (lemmaInListThenGetKeysListContains!1182 (toList!7589 acc!1183) key!5666))))

(declare-fun call!336955 () Bool)

(assert (=> b!4834304 call!336955))

(declare-fun bm!336950 () Bool)

(declare-fun e!3021066 () List!55242)

(assert (=> bm!336950 (= call!336955 (contains!18938 e!3021066 key!5666))))

(declare-fun c!823701 () Bool)

(assert (=> bm!336950 (= c!823701 c!823700)))

(declare-fun b!4834305 () Bool)

(declare-fun getKeysList!1187 (List!55240) List!55242)

(assert (=> b!4834305 (= e!3021066 (getKeysList!1187 (toList!7589 acc!1183)))))

(declare-fun b!4834306 () Bool)

(assert (=> b!4834306 false))

(declare-fun lt!1980146 () Unit!144377)

(declare-fun lt!1980151 () Unit!144377)

(assert (=> b!4834306 (= lt!1980146 lt!1980151)))

(assert (=> b!4834306 (containsKey!4482 (toList!7589 acc!1183) key!5666)))

(declare-fun lemmaInGetKeysListThenContainsKey!1187 (List!55240 K!16832) Unit!144377)

(assert (=> b!4834306 (= lt!1980151 (lemmaInGetKeysListThenContainsKey!1187 (toList!7589 acc!1183) key!5666))))

(declare-fun Unit!144382 () Unit!144377)

(assert (=> b!4834306 (= e!3021062 Unit!144382)))

(declare-fun b!4834307 () Bool)

(assert (=> b!4834307 (= e!3021067 e!3021062)))

(declare-fun c!823702 () Bool)

(assert (=> b!4834307 (= c!823702 call!336955)))

(declare-fun b!4834308 () Bool)

(assert (=> b!4834308 (= e!3021066 (keys!20326 acc!1183))))

(assert (= (and d!1549996 c!823700) b!4834304))

(assert (= (and d!1549996 (not c!823700)) b!4834307))

(assert (= (and b!4834307 c!823702) b!4834306))

(assert (= (and b!4834307 (not c!823702)) b!4834303))

(assert (= (or b!4834304 b!4834307) bm!336950))

(assert (= (and bm!336950 c!823701) b!4834305))

(assert (= (and bm!336950 (not c!823701)) b!4834308))

(assert (= (and d!1549996 res!2059444) b!4834301))

(assert (= (and d!1549996 (not res!2059446)) b!4834300))

(assert (= (and b!4834300 res!2059445) b!4834302))

(declare-fun m!5829158 () Bool)

(assert (=> b!4834301 m!5829158))

(assert (=> b!4834301 m!5829158))

(declare-fun m!5829160 () Bool)

(assert (=> b!4834301 m!5829160))

(declare-fun m!5829162 () Bool)

(assert (=> b!4834305 m!5829162))

(declare-fun m!5829164 () Bool)

(assert (=> b!4834306 m!5829164))

(declare-fun m!5829166 () Bool)

(assert (=> b!4834306 m!5829166))

(assert (=> d!1549996 m!5829164))

(assert (=> b!4834308 m!5829158))

(declare-fun m!5829168 () Bool)

(assert (=> b!4834300 m!5829168))

(assert (=> b!4834300 m!5829168))

(declare-fun m!5829170 () Bool)

(assert (=> b!4834300 m!5829170))

(declare-fun m!5829172 () Bool)

(assert (=> b!4834304 m!5829172))

(assert (=> b!4834304 m!5829168))

(assert (=> b!4834304 m!5829168))

(assert (=> b!4834304 m!5829170))

(declare-fun m!5829174 () Bool)

(assert (=> b!4834304 m!5829174))

(declare-fun m!5829176 () Bool)

(assert (=> bm!336950 m!5829176))

(assert (=> b!4834302 m!5829158))

(assert (=> b!4834302 m!5829158))

(assert (=> b!4834302 m!5829160))

(assert (=> b!4834255 d!1549996))

(declare-fun d!1549998 () Bool)

(declare-fun e!3021071 () Bool)

(assert (=> d!1549998 e!3021071))

(declare-fun res!2059449 () Bool)

(assert (=> d!1549998 (=> res!2059449 e!3021071)))

(declare-fun e!3021069 () Bool)

(assert (=> d!1549998 (= res!2059449 e!3021069)))

(declare-fun res!2059447 () Bool)

(assert (=> d!1549998 (=> (not res!2059447) (not e!3021069))))

(declare-fun lt!1980155 () Bool)

(assert (=> d!1549998 (= res!2059447 (not lt!1980155))))

(declare-fun lt!1980157 () Bool)

(assert (=> d!1549998 (= lt!1980155 lt!1980157)))

(declare-fun lt!1980152 () Unit!144377)

(declare-fun e!3021073 () Unit!144377)

(assert (=> d!1549998 (= lt!1980152 e!3021073)))

(declare-fun c!823703 () Bool)

(assert (=> d!1549998 (= c!823703 lt!1980157)))

(assert (=> d!1549998 (= lt!1980157 (containsKey!4482 (toList!7589 lt!1980115) key!5666))))

(assert (=> d!1549998 (= (contains!18936 lt!1980115 key!5666) lt!1980155)))

(declare-fun b!4834309 () Bool)

(declare-fun e!3021070 () Bool)

(assert (=> b!4834309 (= e!3021071 e!3021070)))

(declare-fun res!2059448 () Bool)

(assert (=> b!4834309 (=> (not res!2059448) (not e!3021070))))

(assert (=> b!4834309 (= res!2059448 (isDefined!10660 (getValueByKey!2676 (toList!7589 lt!1980115) key!5666)))))

(declare-fun b!4834310 () Bool)

(assert (=> b!4834310 (= e!3021069 (not (contains!18938 (keys!20326 lt!1980115) key!5666)))))

(declare-fun b!4834311 () Bool)

(assert (=> b!4834311 (= e!3021070 (contains!18938 (keys!20326 lt!1980115) key!5666))))

(declare-fun b!4834312 () Bool)

(declare-fun e!3021068 () Unit!144377)

(declare-fun Unit!144383 () Unit!144377)

(assert (=> b!4834312 (= e!3021068 Unit!144383)))

(declare-fun b!4834313 () Bool)

(declare-fun lt!1980158 () Unit!144377)

(assert (=> b!4834313 (= e!3021073 lt!1980158)))

(declare-fun lt!1980156 () Unit!144377)

(assert (=> b!4834313 (= lt!1980156 (lemmaContainsKeyImpliesGetValueByKeyDefined!2457 (toList!7589 lt!1980115) key!5666))))

(assert (=> b!4834313 (isDefined!10660 (getValueByKey!2676 (toList!7589 lt!1980115) key!5666))))

(declare-fun lt!1980153 () Unit!144377)

(assert (=> b!4834313 (= lt!1980153 lt!1980156)))

(assert (=> b!4834313 (= lt!1980158 (lemmaInListThenGetKeysListContains!1182 (toList!7589 lt!1980115) key!5666))))

(declare-fun call!336956 () Bool)

(assert (=> b!4834313 call!336956))

(declare-fun bm!336951 () Bool)

(declare-fun e!3021072 () List!55242)

(assert (=> bm!336951 (= call!336956 (contains!18938 e!3021072 key!5666))))

(declare-fun c!823704 () Bool)

(assert (=> bm!336951 (= c!823704 c!823703)))

(declare-fun b!4834314 () Bool)

(assert (=> b!4834314 (= e!3021072 (getKeysList!1187 (toList!7589 lt!1980115)))))

(declare-fun b!4834315 () Bool)

(assert (=> b!4834315 false))

(declare-fun lt!1980154 () Unit!144377)

(declare-fun lt!1980159 () Unit!144377)

(assert (=> b!4834315 (= lt!1980154 lt!1980159)))

(assert (=> b!4834315 (containsKey!4482 (toList!7589 lt!1980115) key!5666)))

(assert (=> b!4834315 (= lt!1980159 (lemmaInGetKeysListThenContainsKey!1187 (toList!7589 lt!1980115) key!5666))))

(declare-fun Unit!144384 () Unit!144377)

(assert (=> b!4834315 (= e!3021068 Unit!144384)))

(declare-fun b!4834316 () Bool)

(assert (=> b!4834316 (= e!3021073 e!3021068)))

(declare-fun c!823705 () Bool)

(assert (=> b!4834316 (= c!823705 call!336956)))

(declare-fun b!4834317 () Bool)

(assert (=> b!4834317 (= e!3021072 (keys!20326 lt!1980115))))

(assert (= (and d!1549998 c!823703) b!4834313))

(assert (= (and d!1549998 (not c!823703)) b!4834316))

(assert (= (and b!4834316 c!823705) b!4834315))

(assert (= (and b!4834316 (not c!823705)) b!4834312))

(assert (= (or b!4834313 b!4834316) bm!336951))

(assert (= (and bm!336951 c!823704) b!4834314))

(assert (= (and bm!336951 (not c!823704)) b!4834317))

(assert (= (and d!1549998 res!2059447) b!4834310))

(assert (= (and d!1549998 (not res!2059449)) b!4834309))

(assert (= (and b!4834309 res!2059448) b!4834311))

(declare-fun m!5829178 () Bool)

(assert (=> b!4834310 m!5829178))

(assert (=> b!4834310 m!5829178))

(declare-fun m!5829180 () Bool)

(assert (=> b!4834310 m!5829180))

(declare-fun m!5829182 () Bool)

(assert (=> b!4834314 m!5829182))

(declare-fun m!5829184 () Bool)

(assert (=> b!4834315 m!5829184))

(declare-fun m!5829186 () Bool)

(assert (=> b!4834315 m!5829186))

(assert (=> d!1549998 m!5829184))

(assert (=> b!4834317 m!5829178))

(declare-fun m!5829188 () Bool)

(assert (=> b!4834309 m!5829188))

(assert (=> b!4834309 m!5829188))

(declare-fun m!5829190 () Bool)

(assert (=> b!4834309 m!5829190))

(declare-fun m!5829192 () Bool)

(assert (=> b!4834313 m!5829192))

(assert (=> b!4834313 m!5829188))

(assert (=> b!4834313 m!5829188))

(assert (=> b!4834313 m!5829190))

(declare-fun m!5829194 () Bool)

(assert (=> b!4834313 m!5829194))

(declare-fun m!5829196 () Bool)

(assert (=> bm!336951 m!5829196))

(assert (=> b!4834311 m!5829178))

(assert (=> b!4834311 m!5829178))

(assert (=> b!4834311 m!5829180))

(assert (=> b!4834255 d!1549998))

(declare-fun d!1550000 () Bool)

(declare-fun e!3021079 () Bool)

(assert (=> d!1550000 (= (contains!18936 (addToMapMapFromBucket!1858 (t!362736 l!14180) lt!1980112) key!5666) e!3021079)))

(declare-fun res!2059452 () Bool)

(assert (=> d!1550000 (=> res!2059452 e!3021079)))

(assert (=> d!1550000 (= res!2059452 (containsKey!4480 (t!362736 l!14180) key!5666))))

(declare-fun lt!1980174 () Unit!144377)

(declare-fun choose!35311 (List!55240 ListMap!6987 K!16832) Unit!144377)

(assert (=> d!1550000 (= lt!1980174 (choose!35311 (t!362736 l!14180) lt!1980112 key!5666))))

(assert (=> d!1550000 (noDuplicateKeys!2503 (t!362736 l!14180))))

(assert (=> d!1550000 (= (lemmaAddToMapFromBucketContainsIIFInAccOrL!71 (t!362736 l!14180) lt!1980112 key!5666) lt!1980174)))

(declare-fun b!4834328 () Bool)

(assert (=> b!4834328 (= e!3021079 (contains!18936 lt!1980112 key!5666))))

(assert (= (and d!1550000 (not res!2059452)) b!4834328))

(assert (=> d!1550000 m!5829122))

(assert (=> d!1550000 m!5829132))

(assert (=> d!1550000 m!5829134))

(assert (=> d!1550000 m!5829132))

(declare-fun m!5829198 () Bool)

(assert (=> d!1550000 m!5829198))

(declare-fun m!5829200 () Bool)

(assert (=> d!1550000 m!5829200))

(assert (=> b!4834328 m!5829136))

(assert (=> b!4834255 d!1550000))

(declare-fun d!1550002 () Bool)

(declare-fun e!3021091 () Bool)

(assert (=> d!1550002 e!3021091))

(declare-fun res!2059463 () Bool)

(assert (=> d!1550002 (=> (not res!2059463) (not e!3021091))))

(declare-fun lt!1980189 () ListMap!6987)

(assert (=> d!1550002 (= res!2059463 (contains!18936 lt!1980189 (_1!32507 (h!61550 l!14180))))))

(declare-fun lt!1980187 () List!55240)

(assert (=> d!1550002 (= lt!1980189 (ListMap!6988 lt!1980187))))

(declare-fun lt!1980188 () Unit!144377)

(declare-fun lt!1980190 () Unit!144377)

(assert (=> d!1550002 (= lt!1980188 lt!1980190)))

(assert (=> d!1550002 (= (getValueByKey!2676 lt!1980187 (_1!32507 (h!61550 l!14180))) (Some!13548 (_2!32507 (h!61550 l!14180))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1246 (List!55240 K!16832 V!17078) Unit!144377)

(assert (=> d!1550002 (= lt!1980190 (lemmaContainsTupThenGetReturnValue!1246 lt!1980187 (_1!32507 (h!61550 l!14180)) (_2!32507 (h!61550 l!14180))))))

(declare-fun insertNoDuplicatedKeys!754 (List!55240 K!16832 V!17078) List!55240)

(assert (=> d!1550002 (= lt!1980187 (insertNoDuplicatedKeys!754 (toList!7589 acc!1183) (_1!32507 (h!61550 l!14180)) (_2!32507 (h!61550 l!14180))))))

(assert (=> d!1550002 (= (+!2582 acc!1183 (h!61550 l!14180)) lt!1980189)))

(declare-fun b!4834343 () Bool)

(declare-fun res!2059464 () Bool)

(assert (=> b!4834343 (=> (not res!2059464) (not e!3021091))))

(assert (=> b!4834343 (= res!2059464 (= (getValueByKey!2676 (toList!7589 lt!1980189) (_1!32507 (h!61550 l!14180))) (Some!13548 (_2!32507 (h!61550 l!14180)))))))

(declare-fun b!4834344 () Bool)

(declare-fun contains!18939 (List!55240 tuple2!58426) Bool)

(assert (=> b!4834344 (= e!3021091 (contains!18939 (toList!7589 lt!1980189) (h!61550 l!14180)))))

(assert (= (and d!1550002 res!2059463) b!4834343))

(assert (= (and b!4834343 res!2059464) b!4834344))

(declare-fun m!5829202 () Bool)

(assert (=> d!1550002 m!5829202))

(declare-fun m!5829204 () Bool)

(assert (=> d!1550002 m!5829204))

(declare-fun m!5829206 () Bool)

(assert (=> d!1550002 m!5829206))

(declare-fun m!5829208 () Bool)

(assert (=> d!1550002 m!5829208))

(declare-fun m!5829210 () Bool)

(assert (=> b!4834343 m!5829210))

(declare-fun m!5829212 () Bool)

(assert (=> b!4834344 m!5829212))

(assert (=> b!4834255 d!1550002))

(declare-fun b!4834383 () Bool)

(assert (=> b!4834383 true))

(declare-fun bs!1167322 () Bool)

(declare-fun b!4834380 () Bool)

(assert (= bs!1167322 (and b!4834380 b!4834383)))

(declare-fun lambda!238966 () Int)

(declare-fun lambda!238965 () Int)

(assert (=> bs!1167322 (= lambda!238966 lambda!238965)))

(assert (=> b!4834380 true))

(declare-fun lambda!238967 () Int)

(declare-fun lt!1980258 () ListMap!6987)

(assert (=> bs!1167322 (= (= lt!1980258 lt!1980112) (= lambda!238967 lambda!238965))))

(assert (=> b!4834380 (= (= lt!1980258 lt!1980112) (= lambda!238967 lambda!238966))))

(assert (=> b!4834380 true))

(declare-fun bs!1167323 () Bool)

(declare-fun d!1550004 () Bool)

(assert (= bs!1167323 (and d!1550004 b!4834383)))

(declare-fun lt!1980270 () ListMap!6987)

(declare-fun lambda!238968 () Int)

(assert (=> bs!1167323 (= (= lt!1980270 lt!1980112) (= lambda!238968 lambda!238965))))

(declare-fun bs!1167324 () Bool)

(assert (= bs!1167324 (and d!1550004 b!4834380)))

(assert (=> bs!1167324 (= (= lt!1980270 lt!1980112) (= lambda!238968 lambda!238966))))

(assert (=> bs!1167324 (= (= lt!1980270 lt!1980258) (= lambda!238968 lambda!238967))))

(assert (=> d!1550004 true))

(declare-fun e!3021116 () Bool)

(assert (=> d!1550004 e!3021116))

(declare-fun res!2059481 () Bool)

(assert (=> d!1550004 (=> (not res!2059481) (not e!3021116))))

(declare-fun forall!12704 (List!55240 Int) Bool)

(assert (=> d!1550004 (= res!2059481 (forall!12704 (t!362736 l!14180) lambda!238968))))

(declare-fun e!3021117 () ListMap!6987)

(assert (=> d!1550004 (= lt!1980270 e!3021117)))

(declare-fun c!823722 () Bool)

(assert (=> d!1550004 (= c!823722 (is-Nil!55116 (t!362736 l!14180)))))

(assert (=> d!1550004 (noDuplicateKeys!2503 (t!362736 l!14180))))

(assert (=> d!1550004 (= (addToMapMapFromBucket!1858 (t!362736 l!14180) lt!1980112) lt!1980270)))

(declare-fun bm!336962 () Bool)

(declare-fun call!336968 () Unit!144377)

(declare-fun lemmaContainsAllItsOwnKeys!1022 (ListMap!6987) Unit!144377)

(assert (=> bm!336962 (= call!336968 (lemmaContainsAllItsOwnKeys!1022 lt!1980112))))

(declare-fun bm!336963 () Bool)

(declare-fun call!336969 () Bool)

(assert (=> bm!336963 (= call!336969 (forall!12704 (toList!7589 lt!1980112) (ite c!823722 lambda!238965 lambda!238966)))))

(assert (=> b!4834380 (= e!3021117 lt!1980258)))

(declare-fun lt!1980266 () ListMap!6987)

(assert (=> b!4834380 (= lt!1980266 (+!2582 lt!1980112 (h!61550 (t!362736 l!14180))))))

(assert (=> b!4834380 (= lt!1980258 (addToMapMapFromBucket!1858 (t!362736 (t!362736 l!14180)) (+!2582 lt!1980112 (h!61550 (t!362736 l!14180)))))))

(declare-fun lt!1980274 () Unit!144377)

(assert (=> b!4834380 (= lt!1980274 call!336968)))

(assert (=> b!4834380 call!336969))

(declare-fun lt!1980271 () Unit!144377)

(assert (=> b!4834380 (= lt!1980271 lt!1980274)))

(assert (=> b!4834380 (forall!12704 (toList!7589 lt!1980266) lambda!238967)))

(declare-fun lt!1980259 () Unit!144377)

(declare-fun Unit!144385 () Unit!144377)

(assert (=> b!4834380 (= lt!1980259 Unit!144385)))

(assert (=> b!4834380 (forall!12704 (t!362736 (t!362736 l!14180)) lambda!238967)))

(declare-fun lt!1980268 () Unit!144377)

(declare-fun Unit!144386 () Unit!144377)

(assert (=> b!4834380 (= lt!1980268 Unit!144386)))

(declare-fun lt!1980263 () Unit!144377)

(declare-fun Unit!144387 () Unit!144377)

(assert (=> b!4834380 (= lt!1980263 Unit!144387)))

(declare-fun lt!1980262 () Unit!144377)

(declare-fun forallContained!4434 (List!55240 Int tuple2!58426) Unit!144377)

(assert (=> b!4834380 (= lt!1980262 (forallContained!4434 (toList!7589 lt!1980266) lambda!238967 (h!61550 (t!362736 l!14180))))))

(assert (=> b!4834380 (contains!18936 lt!1980266 (_1!32507 (h!61550 (t!362736 l!14180))))))

(declare-fun lt!1980260 () Unit!144377)

(declare-fun Unit!144388 () Unit!144377)

(assert (=> b!4834380 (= lt!1980260 Unit!144388)))

(assert (=> b!4834380 (contains!18936 lt!1980258 (_1!32507 (h!61550 (t!362736 l!14180))))))

(declare-fun lt!1980275 () Unit!144377)

(declare-fun Unit!144389 () Unit!144377)

(assert (=> b!4834380 (= lt!1980275 Unit!144389)))

(declare-fun call!336967 () Bool)

(assert (=> b!4834380 call!336967))

(declare-fun lt!1980276 () Unit!144377)

(declare-fun Unit!144390 () Unit!144377)

(assert (=> b!4834380 (= lt!1980276 Unit!144390)))

(assert (=> b!4834380 (forall!12704 (toList!7589 lt!1980266) lambda!238967)))

(declare-fun lt!1980269 () Unit!144377)

(declare-fun Unit!144391 () Unit!144377)

(assert (=> b!4834380 (= lt!1980269 Unit!144391)))

(declare-fun lt!1980267 () Unit!144377)

(declare-fun Unit!144392 () Unit!144377)

(assert (=> b!4834380 (= lt!1980267 Unit!144392)))

(declare-fun lt!1980261 () Unit!144377)

(declare-fun addForallContainsKeyThenBeforeAdding!1021 (ListMap!6987 ListMap!6987 K!16832 V!17078) Unit!144377)

(assert (=> b!4834380 (= lt!1980261 (addForallContainsKeyThenBeforeAdding!1021 lt!1980112 lt!1980258 (_1!32507 (h!61550 (t!362736 l!14180))) (_2!32507 (h!61550 (t!362736 l!14180)))))))

(assert (=> b!4834380 (forall!12704 (toList!7589 lt!1980112) lambda!238967)))

(declare-fun lt!1980264 () Unit!144377)

(assert (=> b!4834380 (= lt!1980264 lt!1980261)))

(assert (=> b!4834380 (forall!12704 (toList!7589 lt!1980112) lambda!238967)))

(declare-fun lt!1980273 () Unit!144377)

(declare-fun Unit!144393 () Unit!144377)

(assert (=> b!4834380 (= lt!1980273 Unit!144393)))

(declare-fun res!2059482 () Bool)

(assert (=> b!4834380 (= res!2059482 (forall!12704 (t!362736 l!14180) lambda!238967))))

(declare-fun e!3021115 () Bool)

(assert (=> b!4834380 (=> (not res!2059482) (not e!3021115))))

(assert (=> b!4834380 e!3021115))

(declare-fun lt!1980265 () Unit!144377)

(declare-fun Unit!144394 () Unit!144377)

(assert (=> b!4834380 (= lt!1980265 Unit!144394)))

(declare-fun bm!336964 () Bool)

(assert (=> bm!336964 (= call!336967 (forall!12704 (ite c!823722 (toList!7589 lt!1980112) (t!362736 l!14180)) (ite c!823722 lambda!238965 lambda!238967)))))

(declare-fun b!4834381 () Bool)

(declare-fun invariantList!1845 (List!55240) Bool)

(assert (=> b!4834381 (= e!3021116 (invariantList!1845 (toList!7589 lt!1980270)))))

(declare-fun b!4834382 () Bool)

(declare-fun res!2059480 () Bool)

(assert (=> b!4834382 (=> (not res!2059480) (not e!3021116))))

(assert (=> b!4834382 (= res!2059480 (forall!12704 (toList!7589 lt!1980112) lambda!238968))))

(assert (=> b!4834383 (= e!3021117 lt!1980112)))

(declare-fun lt!1980277 () Unit!144377)

(assert (=> b!4834383 (= lt!1980277 call!336968)))

(assert (=> b!4834383 call!336967))

(declare-fun lt!1980272 () Unit!144377)

(assert (=> b!4834383 (= lt!1980272 lt!1980277)))

(assert (=> b!4834383 call!336969))

(declare-fun lt!1980278 () Unit!144377)

(declare-fun Unit!144395 () Unit!144377)

(assert (=> b!4834383 (= lt!1980278 Unit!144395)))

(declare-fun b!4834384 () Bool)

(assert (=> b!4834384 (= e!3021115 (forall!12704 (toList!7589 lt!1980112) lambda!238967))))

(assert (= (and d!1550004 c!823722) b!4834383))

(assert (= (and d!1550004 (not c!823722)) b!4834380))

(assert (= (and b!4834380 res!2059482) b!4834384))

(assert (= (or b!4834383 b!4834380) bm!336964))

(assert (= (or b!4834383 b!4834380) bm!336963))

(assert (= (or b!4834383 b!4834380) bm!336962))

(assert (= (and d!1550004 res!2059481) b!4834382))

(assert (= (and b!4834382 res!2059480) b!4834381))

(declare-fun m!5829258 () Bool)

(assert (=> b!4834380 m!5829258))

(declare-fun m!5829260 () Bool)

(assert (=> b!4834380 m!5829260))

(declare-fun m!5829262 () Bool)

(assert (=> b!4834380 m!5829262))

(declare-fun m!5829264 () Bool)

(assert (=> b!4834380 m!5829264))

(declare-fun m!5829266 () Bool)

(assert (=> b!4834380 m!5829266))

(declare-fun m!5829268 () Bool)

(assert (=> b!4834380 m!5829268))

(assert (=> b!4834380 m!5829260))

(declare-fun m!5829270 () Bool)

(assert (=> b!4834380 m!5829270))

(declare-fun m!5829272 () Bool)

(assert (=> b!4834380 m!5829272))

(declare-fun m!5829274 () Bool)

(assert (=> b!4834380 m!5829274))

(declare-fun m!5829276 () Bool)

(assert (=> b!4834380 m!5829276))

(assert (=> b!4834380 m!5829274))

(assert (=> b!4834380 m!5829264))

(declare-fun m!5829278 () Bool)

(assert (=> d!1550004 m!5829278))

(assert (=> d!1550004 m!5829134))

(declare-fun m!5829280 () Bool)

(assert (=> bm!336964 m!5829280))

(declare-fun m!5829282 () Bool)

(assert (=> b!4834382 m!5829282))

(assert (=> b!4834384 m!5829274))

(declare-fun m!5829284 () Bool)

(assert (=> bm!336963 m!5829284))

(declare-fun m!5829286 () Bool)

(assert (=> b!4834381 m!5829286))

(declare-fun m!5829288 () Bool)

(assert (=> bm!336962 m!5829288))

(assert (=> b!4834255 d!1550004))

(declare-fun d!1550012 () Bool)

(declare-fun res!2059487 () Bool)

(declare-fun e!3021122 () Bool)

(assert (=> d!1550012 (=> res!2059487 e!3021122)))

(assert (=> d!1550012 (= res!2059487 (and (is-Cons!55116 (t!362736 l!14180)) (= (_1!32507 (h!61550 (t!362736 l!14180))) key!5666)))))

(assert (=> d!1550012 (= (containsKey!4480 (t!362736 l!14180) key!5666) e!3021122)))

(declare-fun b!4834391 () Bool)

(declare-fun e!3021123 () Bool)

(assert (=> b!4834391 (= e!3021122 e!3021123)))

(declare-fun res!2059488 () Bool)

(assert (=> b!4834391 (=> (not res!2059488) (not e!3021123))))

(assert (=> b!4834391 (= res!2059488 (is-Cons!55116 (t!362736 l!14180)))))

(declare-fun b!4834392 () Bool)

(assert (=> b!4834392 (= e!3021123 (containsKey!4480 (t!362736 (t!362736 l!14180)) key!5666))))

(assert (= (and d!1550012 (not res!2059487)) b!4834391))

(assert (= (and b!4834391 res!2059488) b!4834392))

(declare-fun m!5829290 () Bool)

(assert (=> b!4834392 m!5829290))

(assert (=> b!4834255 d!1550012))

(declare-fun d!1550014 () Bool)

(declare-fun res!2059493 () Bool)

(declare-fun e!3021128 () Bool)

(assert (=> d!1550014 (=> res!2059493 e!3021128)))

(assert (=> d!1550014 (= res!2059493 (not (is-Cons!55116 l!14180)))))

(assert (=> d!1550014 (= (noDuplicateKeys!2503 l!14180) e!3021128)))

(declare-fun b!4834397 () Bool)

(declare-fun e!3021129 () Bool)

(assert (=> b!4834397 (= e!3021128 e!3021129)))

(declare-fun res!2059494 () Bool)

(assert (=> b!4834397 (=> (not res!2059494) (not e!3021129))))

(assert (=> b!4834397 (= res!2059494 (not (containsKey!4480 (t!362736 l!14180) (_1!32507 (h!61550 l!14180)))))))

(declare-fun b!4834398 () Bool)

(assert (=> b!4834398 (= e!3021129 (noDuplicateKeys!2503 (t!362736 l!14180)))))

(assert (= (and d!1550014 (not res!2059493)) b!4834397))

(assert (= (and b!4834397 res!2059494) b!4834398))

(declare-fun m!5829292 () Bool)

(assert (=> b!4834397 m!5829292))

(assert (=> b!4834398 m!5829134))

(assert (=> start!502496 d!1550014))

(declare-fun d!1550016 () Bool)

(assert (=> d!1550016 (= (inv!70733 acc!1183) (invariantList!1845 (toList!7589 acc!1183)))))

(declare-fun bs!1167325 () Bool)

(assert (= bs!1167325 d!1550016))

(declare-fun m!5829294 () Bool)

(assert (=> bs!1167325 m!5829294))

(assert (=> start!502496 d!1550016))

(declare-fun d!1550018 () Bool)

(declare-fun e!3021133 () Bool)

(assert (=> d!1550018 e!3021133))

(declare-fun res!2059497 () Bool)

(assert (=> d!1550018 (=> res!2059497 e!3021133)))

(declare-fun e!3021131 () Bool)

(assert (=> d!1550018 (= res!2059497 e!3021131)))

(declare-fun res!2059495 () Bool)

(assert (=> d!1550018 (=> (not res!2059495) (not e!3021131))))

(declare-fun lt!1980282 () Bool)

(assert (=> d!1550018 (= res!2059495 (not lt!1980282))))

(declare-fun lt!1980284 () Bool)

(assert (=> d!1550018 (= lt!1980282 lt!1980284)))

(declare-fun lt!1980279 () Unit!144377)

(declare-fun e!3021135 () Unit!144377)

(assert (=> d!1550018 (= lt!1980279 e!3021135)))

(declare-fun c!823723 () Bool)

(assert (=> d!1550018 (= c!823723 lt!1980284)))

(assert (=> d!1550018 (= lt!1980284 (containsKey!4482 (toList!7589 lt!1980112) key!5666))))

(assert (=> d!1550018 (= (contains!18936 lt!1980112 key!5666) lt!1980282)))

(declare-fun b!4834399 () Bool)

(declare-fun e!3021132 () Bool)

(assert (=> b!4834399 (= e!3021133 e!3021132)))

(declare-fun res!2059496 () Bool)

(assert (=> b!4834399 (=> (not res!2059496) (not e!3021132))))

(assert (=> b!4834399 (= res!2059496 (isDefined!10660 (getValueByKey!2676 (toList!7589 lt!1980112) key!5666)))))

(declare-fun b!4834400 () Bool)

(assert (=> b!4834400 (= e!3021131 (not (contains!18938 (keys!20326 lt!1980112) key!5666)))))

(declare-fun b!4834401 () Bool)

(assert (=> b!4834401 (= e!3021132 (contains!18938 (keys!20326 lt!1980112) key!5666))))

(declare-fun b!4834402 () Bool)

(declare-fun e!3021130 () Unit!144377)

(declare-fun Unit!144396 () Unit!144377)

(assert (=> b!4834402 (= e!3021130 Unit!144396)))

(declare-fun b!4834403 () Bool)

(declare-fun lt!1980285 () Unit!144377)

(assert (=> b!4834403 (= e!3021135 lt!1980285)))

(declare-fun lt!1980283 () Unit!144377)

(assert (=> b!4834403 (= lt!1980283 (lemmaContainsKeyImpliesGetValueByKeyDefined!2457 (toList!7589 lt!1980112) key!5666))))

(assert (=> b!4834403 (isDefined!10660 (getValueByKey!2676 (toList!7589 lt!1980112) key!5666))))

(declare-fun lt!1980280 () Unit!144377)

(assert (=> b!4834403 (= lt!1980280 lt!1980283)))

(assert (=> b!4834403 (= lt!1980285 (lemmaInListThenGetKeysListContains!1182 (toList!7589 lt!1980112) key!5666))))

(declare-fun call!336970 () Bool)

(assert (=> b!4834403 call!336970))

(declare-fun bm!336965 () Bool)

(declare-fun e!3021134 () List!55242)

(assert (=> bm!336965 (= call!336970 (contains!18938 e!3021134 key!5666))))

(declare-fun c!823724 () Bool)

(assert (=> bm!336965 (= c!823724 c!823723)))

(declare-fun b!4834404 () Bool)

(assert (=> b!4834404 (= e!3021134 (getKeysList!1187 (toList!7589 lt!1980112)))))

(declare-fun b!4834405 () Bool)

(assert (=> b!4834405 false))

(declare-fun lt!1980281 () Unit!144377)

(declare-fun lt!1980286 () Unit!144377)

(assert (=> b!4834405 (= lt!1980281 lt!1980286)))

(assert (=> b!4834405 (containsKey!4482 (toList!7589 lt!1980112) key!5666)))

(assert (=> b!4834405 (= lt!1980286 (lemmaInGetKeysListThenContainsKey!1187 (toList!7589 lt!1980112) key!5666))))

(declare-fun Unit!144397 () Unit!144377)

(assert (=> b!4834405 (= e!3021130 Unit!144397)))

(declare-fun b!4834406 () Bool)

(assert (=> b!4834406 (= e!3021135 e!3021130)))

(declare-fun c!823725 () Bool)

(assert (=> b!4834406 (= c!823725 call!336970)))

(declare-fun b!4834407 () Bool)

(assert (=> b!4834407 (= e!3021134 (keys!20326 lt!1980112))))

(assert (= (and d!1550018 c!823723) b!4834403))

(assert (= (and d!1550018 (not c!823723)) b!4834406))

(assert (= (and b!4834406 c!823725) b!4834405))

(assert (= (and b!4834406 (not c!823725)) b!4834402))

(assert (= (or b!4834403 b!4834406) bm!336965))

(assert (= (and bm!336965 c!823724) b!4834404))

(assert (= (and bm!336965 (not c!823724)) b!4834407))

(assert (= (and d!1550018 res!2059495) b!4834400))

(assert (= (and d!1550018 (not res!2059497)) b!4834399))

(assert (= (and b!4834399 res!2059496) b!4834401))

(declare-fun m!5829296 () Bool)

(assert (=> b!4834400 m!5829296))

(assert (=> b!4834400 m!5829296))

(declare-fun m!5829298 () Bool)

(assert (=> b!4834400 m!5829298))

(declare-fun m!5829300 () Bool)

(assert (=> b!4834404 m!5829300))

(declare-fun m!5829302 () Bool)

(assert (=> b!4834405 m!5829302))

(declare-fun m!5829304 () Bool)

(assert (=> b!4834405 m!5829304))

(assert (=> d!1550018 m!5829302))

(assert (=> b!4834407 m!5829296))

(declare-fun m!5829306 () Bool)

(assert (=> b!4834399 m!5829306))

(assert (=> b!4834399 m!5829306))

(declare-fun m!5829308 () Bool)

(assert (=> b!4834399 m!5829308))

(declare-fun m!5829310 () Bool)

(assert (=> b!4834403 m!5829310))

(assert (=> b!4834403 m!5829306))

(assert (=> b!4834403 m!5829306))

(assert (=> b!4834403 m!5829308))

(declare-fun m!5829312 () Bool)

(assert (=> b!4834403 m!5829312))

(declare-fun m!5829314 () Bool)

(assert (=> bm!336965 m!5829314))

(assert (=> b!4834401 m!5829296))

(assert (=> b!4834401 m!5829296))

(assert (=> b!4834401 m!5829298))

(assert (=> b!4834258 d!1550018))

(declare-fun d!1550020 () Bool)

(declare-fun res!2059498 () Bool)

(declare-fun e!3021136 () Bool)

(assert (=> d!1550020 (=> res!2059498 e!3021136)))

(assert (=> d!1550020 (= res!2059498 (not (is-Cons!55116 (t!362736 l!14180))))))

(assert (=> d!1550020 (= (noDuplicateKeys!2503 (t!362736 l!14180)) e!3021136)))

(declare-fun b!4834408 () Bool)

(declare-fun e!3021137 () Bool)

(assert (=> b!4834408 (= e!3021136 e!3021137)))

(declare-fun res!2059499 () Bool)

(assert (=> b!4834408 (=> (not res!2059499) (not e!3021137))))

(assert (=> b!4834408 (= res!2059499 (not (containsKey!4480 (t!362736 (t!362736 l!14180)) (_1!32507 (h!61550 (t!362736 l!14180))))))))

(declare-fun b!4834409 () Bool)

(assert (=> b!4834409 (= e!3021137 (noDuplicateKeys!2503 (t!362736 (t!362736 l!14180))))))

(assert (= (and d!1550020 (not res!2059498)) b!4834408))

(assert (= (and b!4834408 res!2059499) b!4834409))

(declare-fun m!5829316 () Bool)

(assert (=> b!4834408 m!5829316))

(declare-fun m!5829318 () Bool)

(assert (=> b!4834409 m!5829318))

(assert (=> b!4834257 d!1550020))

(declare-fun tp!1363201 () Bool)

(declare-fun e!3021140 () Bool)

(declare-fun b!4834414 () Bool)

(assert (=> b!4834414 (= e!3021140 (and tp_is_empty!34693 tp_is_empty!34695 tp!1363201))))

(assert (=> b!4834260 (= tp!1363192 e!3021140)))

(assert (= (and b!4834260 (is-Cons!55116 (t!362736 l!14180))) b!4834414))

(declare-fun b!4834415 () Bool)

(declare-fun e!3021141 () Bool)

(declare-fun tp!1363202 () Bool)

(assert (=> b!4834415 (= e!3021141 (and tp_is_empty!34693 tp_is_empty!34695 tp!1363202))))

(assert (=> b!4834256 (= tp!1363191 e!3021141)))

(assert (= (and b!4834256 (is-Cons!55116 (toList!7589 acc!1183))) b!4834415))

(push 1)

(assert (not b!4834404))

(assert (not bm!336950))

(assert (not b!4834306))

(assert (not b!4834380))

(assert (not b!4834409))

(assert tp_is_empty!34693)

(assert (not b!4834381))

(assert (not b!4834407))

(assert (not bm!336962))

(assert (not b!4834302))

(assert (not bm!336964))

(assert (not b!4834392))

(assert (not b!4834309))

(assert (not b!4834399))

(assert (not b!4834397))

(assert (not d!1549998))

(assert (not bm!336965))

(assert (not d!1550018))

(assert tp_is_empty!34695)

(assert (not b!4834311))

(assert (not d!1550002))

(assert (not b!4834304))

(assert (not b!4834414))

(assert (not b!4834301))

(assert (not b!4834315))

(assert (not b!4834344))

(assert (not d!1549996))

(assert (not b!4834400))

(assert (not b!4834317))

(assert (not b!4834401))

(assert (not b!4834382))

(assert (not bm!336963))

(assert (not b!4834328))

(assert (not b!4834313))

(assert (not b!4834343))

(assert (not b!4834314))

(assert (not b!4834405))

(assert (not b!4834384))

(assert (not b!4834403))

(assert (not d!1550004))

(assert (not b!4834300))

(assert (not d!1550016))

(assert (not b!4834408))

(assert (not d!1550000))

(assert (not b!4834305))

(assert (not bm!336951))

(assert (not b!4834415))

(assert (not b!4834398))

(assert (not b!4834308))

(assert (not b!4834310))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

