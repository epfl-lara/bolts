; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!502398 () Bool)

(assert start!502398)

(declare-fun res!2059028 () Bool)

(declare-fun e!3020527 () Bool)

(assert (=> start!502398 (=> (not res!2059028) (not e!3020527))))

(declare-datatypes ((K!16819 0))(
  ( (K!16820 (val!21761 Int)) )
))
(declare-datatypes ((V!17065 0))(
  ( (V!17066 (val!21762 Int)) )
))
(declare-datatypes ((tuple2!58416 0))(
  ( (tuple2!58417 (_1!32502 K!16819) (_2!32502 V!17065)) )
))
(declare-datatypes ((List!55229 0))(
  ( (Nil!55105) (Cons!55105 (h!61539 tuple2!58416) (t!362725 List!55229)) )
))
(declare-fun l!14180 () List!55229)

(declare-fun noDuplicateKeys!2498 (List!55229) Bool)

(assert (=> start!502398 (= res!2059028 (noDuplicateKeys!2498 l!14180))))

(assert (=> start!502398 e!3020527))

(declare-fun e!3020524 () Bool)

(assert (=> start!502398 e!3020524))

(declare-datatypes ((ListMap!6977 0))(
  ( (ListMap!6978 (toList!7584 List!55229)) )
))
(declare-fun acc!1183 () ListMap!6977)

(declare-fun e!3020526 () Bool)

(declare-fun inv!70719 (ListMap!6977) Bool)

(assert (=> start!502398 (and (inv!70719 acc!1183) e!3020526)))

(declare-fun tp_is_empty!34673 () Bool)

(assert (=> start!502398 tp_is_empty!34673))

(declare-fun b!4833518 () Bool)

(declare-fun res!2059026 () Bool)

(assert (=> b!4833518 (=> (not res!2059026) (not e!3020527))))

(get-info :version)

(assert (=> b!4833518 (= res!2059026 (not ((_ is Nil!55105) l!14180)))))

(declare-fun b!4833519 () Bool)

(declare-fun e!3020525 () Bool)

(declare-fun lt!1979172 () ListMap!6977)

(declare-fun key!5666 () K!16819)

(declare-fun contains!18919 (ListMap!6977 K!16819) Bool)

(assert (=> b!4833519 (= e!3020525 (contains!18919 lt!1979172 key!5666))))

(declare-fun lt!1979170 () Bool)

(declare-fun containsKey!4469 (List!55229 K!16819) Bool)

(assert (=> b!4833519 (= lt!1979170 (containsKey!4469 l!14180 key!5666))))

(declare-fun addToMapMapFromBucket!1853 (List!55229 ListMap!6977) ListMap!6977)

(assert (=> b!4833519 (= lt!1979172 (addToMapMapFromBucket!1853 l!14180 acc!1183))))

(declare-fun lt!1979173 () ListMap!6977)

(assert (=> b!4833519 (contains!18919 lt!1979173 key!5666)))

(declare-datatypes ((Unit!144198 0))(
  ( (Unit!144199) )
))
(declare-fun lt!1979171 () Unit!144198)

(declare-fun addStillContains!28 (ListMap!6977 K!16819 V!17065 K!16819) Unit!144198)

(assert (=> b!4833519 (= lt!1979171 (addStillContains!28 acc!1183 (_1!32502 (h!61539 l!14180)) (_2!32502 (h!61539 l!14180)) key!5666))))

(declare-fun b!4833520 () Bool)

(declare-fun tp!1363138 () Bool)

(assert (=> b!4833520 (= e!3020526 tp!1363138)))

(declare-fun b!4833521 () Bool)

(assert (=> b!4833521 (= e!3020527 (not e!3020525))))

(declare-fun res!2059029 () Bool)

(assert (=> b!4833521 (=> res!2059029 e!3020525)))

(assert (=> b!4833521 (= res!2059029 (not (contains!18919 acc!1183 key!5666)))))

(declare-fun lt!1979169 () ListMap!6977)

(declare-fun e!3020523 () Bool)

(assert (=> b!4833521 (= (contains!18919 lt!1979169 key!5666) e!3020523)))

(declare-fun res!2059027 () Bool)

(assert (=> b!4833521 (=> res!2059027 e!3020523)))

(assert (=> b!4833521 (= res!2059027 (containsKey!4469 (t!362725 l!14180) key!5666))))

(declare-fun lt!1979168 () Unit!144198)

(declare-fun lemmaAddToMapFromBucketContainsIIFInAccOrL!66 (List!55229 ListMap!6977 K!16819) Unit!144198)

(assert (=> b!4833521 (= lt!1979168 (lemmaAddToMapFromBucketContainsIIFInAccOrL!66 (t!362725 l!14180) lt!1979173 key!5666))))

(assert (=> b!4833521 (= lt!1979169 (addToMapMapFromBucket!1853 (t!362725 l!14180) lt!1979173))))

(declare-fun +!2577 (ListMap!6977 tuple2!58416) ListMap!6977)

(assert (=> b!4833521 (= lt!1979173 (+!2577 acc!1183 (h!61539 l!14180)))))

(declare-fun b!4833522 () Bool)

(assert (=> b!4833522 (= e!3020523 (contains!18919 lt!1979173 key!5666))))

(declare-fun b!4833523 () Bool)

(declare-fun tp_is_empty!34675 () Bool)

(declare-fun tp!1363137 () Bool)

(assert (=> b!4833523 (= e!3020524 (and tp_is_empty!34673 tp_is_empty!34675 tp!1363137))))

(assert (= (and start!502398 res!2059028) b!4833518))

(assert (= (and b!4833518 res!2059026) b!4833521))

(assert (= (and b!4833521 (not res!2059027)) b!4833522))

(assert (= (and b!4833521 (not res!2059029)) b!4833519))

(assert (= (and start!502398 ((_ is Cons!55105) l!14180)) b!4833523))

(assert (= start!502398 b!4833520))

(declare-fun m!5827972 () Bool)

(assert (=> start!502398 m!5827972))

(declare-fun m!5827974 () Bool)

(assert (=> start!502398 m!5827974))

(declare-fun m!5827976 () Bool)

(assert (=> b!4833519 m!5827976))

(declare-fun m!5827978 () Bool)

(assert (=> b!4833519 m!5827978))

(declare-fun m!5827980 () Bool)

(assert (=> b!4833519 m!5827980))

(declare-fun m!5827982 () Bool)

(assert (=> b!4833519 m!5827982))

(declare-fun m!5827984 () Bool)

(assert (=> b!4833519 m!5827984))

(declare-fun m!5827986 () Bool)

(assert (=> b!4833521 m!5827986))

(declare-fun m!5827988 () Bool)

(assert (=> b!4833521 m!5827988))

(declare-fun m!5827990 () Bool)

(assert (=> b!4833521 m!5827990))

(declare-fun m!5827992 () Bool)

(assert (=> b!4833521 m!5827992))

(declare-fun m!5827994 () Bool)

(assert (=> b!4833521 m!5827994))

(declare-fun m!5827996 () Bool)

(assert (=> b!4833521 m!5827996))

(assert (=> b!4833522 m!5827980))

(check-sat (not b!4833521) tp_is_empty!34673 tp_is_empty!34675 (not b!4833522) (not b!4833519) (not b!4833523) (not start!502398) (not b!4833520))
(check-sat)
(get-model)

(declare-fun d!1549847 () Bool)

(declare-fun res!2059040 () Bool)

(declare-fun e!3020538 () Bool)

(assert (=> d!1549847 (=> res!2059040 e!3020538)))

(assert (=> d!1549847 (= res!2059040 (not ((_ is Cons!55105) l!14180)))))

(assert (=> d!1549847 (= (noDuplicateKeys!2498 l!14180) e!3020538)))

(declare-fun b!4833534 () Bool)

(declare-fun e!3020539 () Bool)

(assert (=> b!4833534 (= e!3020538 e!3020539)))

(declare-fun res!2059041 () Bool)

(assert (=> b!4833534 (=> (not res!2059041) (not e!3020539))))

(assert (=> b!4833534 (= res!2059041 (not (containsKey!4469 (t!362725 l!14180) (_1!32502 (h!61539 l!14180)))))))

(declare-fun b!4833535 () Bool)

(assert (=> b!4833535 (= e!3020539 (noDuplicateKeys!2498 (t!362725 l!14180)))))

(assert (= (and d!1549847 (not res!2059040)) b!4833534))

(assert (= (and b!4833534 res!2059041) b!4833535))

(declare-fun m!5827998 () Bool)

(assert (=> b!4833534 m!5827998))

(declare-fun m!5828000 () Bool)

(assert (=> b!4833535 m!5828000))

(assert (=> start!502398 d!1549847))

(declare-fun d!1549849 () Bool)

(declare-fun invariantList!1840 (List!55229) Bool)

(assert (=> d!1549849 (= (inv!70719 acc!1183) (invariantList!1840 (toList!7584 acc!1183)))))

(declare-fun bs!1167218 () Bool)

(assert (= bs!1167218 d!1549849))

(declare-fun m!5828002 () Bool)

(assert (=> bs!1167218 m!5828002))

(assert (=> start!502398 d!1549849))

(declare-fun b!4833554 () Bool)

(declare-fun e!3020553 () Bool)

(declare-datatypes ((List!55231 0))(
  ( (Nil!55107) (Cons!55107 (h!61541 K!16819) (t!362727 List!55231)) )
))
(declare-fun contains!18922 (List!55231 K!16819) Bool)

(declare-fun keys!20315 (ListMap!6977) List!55231)

(assert (=> b!4833554 (= e!3020553 (contains!18922 (keys!20315 lt!1979173) key!5666))))

(declare-fun b!4833555 () Bool)

(declare-fun e!3020554 () Bool)

(assert (=> b!4833555 (= e!3020554 e!3020553)))

(declare-fun res!2059050 () Bool)

(assert (=> b!4833555 (=> (not res!2059050) (not e!3020553))))

(declare-datatypes ((Option!13544 0))(
  ( (None!13543) (Some!13543 (v!49244 V!17065)) )
))
(declare-fun isDefined!10655 (Option!13544) Bool)

(declare-fun getValueByKey!2671 (List!55229 K!16819) Option!13544)

(assert (=> b!4833555 (= res!2059050 (isDefined!10655 (getValueByKey!2671 (toList!7584 lt!1979173) key!5666)))))

(declare-fun b!4833556 () Bool)

(assert (=> b!4833556 false))

(declare-fun lt!1979194 () Unit!144198)

(declare-fun lt!1979195 () Unit!144198)

(assert (=> b!4833556 (= lt!1979194 lt!1979195)))

(declare-fun containsKey!4471 (List!55229 K!16819) Bool)

(assert (=> b!4833556 (containsKey!4471 (toList!7584 lt!1979173) key!5666)))

(declare-fun lemmaInGetKeysListThenContainsKey!1182 (List!55229 K!16819) Unit!144198)

(assert (=> b!4833556 (= lt!1979195 (lemmaInGetKeysListThenContainsKey!1182 (toList!7584 lt!1979173) key!5666))))

(declare-fun e!3020557 () Unit!144198)

(declare-fun Unit!144221 () Unit!144198)

(assert (=> b!4833556 (= e!3020557 Unit!144221)))

(declare-fun b!4833557 () Bool)

(declare-fun e!3020555 () List!55231)

(declare-fun getKeysList!1182 (List!55229) List!55231)

(assert (=> b!4833557 (= e!3020555 (getKeysList!1182 (toList!7584 lt!1979173)))))

(declare-fun b!4833558 () Bool)

(declare-fun e!3020552 () Unit!144198)

(assert (=> b!4833558 (= e!3020552 e!3020557)))

(declare-fun c!823569 () Bool)

(declare-fun call!336847 () Bool)

(assert (=> b!4833558 (= c!823569 call!336847)))

(declare-fun d!1549851 () Bool)

(assert (=> d!1549851 e!3020554))

(declare-fun res!2059049 () Bool)

(assert (=> d!1549851 (=> res!2059049 e!3020554)))

(declare-fun e!3020556 () Bool)

(assert (=> d!1549851 (= res!2059049 e!3020556)))

(declare-fun res!2059048 () Bool)

(assert (=> d!1549851 (=> (not res!2059048) (not e!3020556))))

(declare-fun lt!1979191 () Bool)

(assert (=> d!1549851 (= res!2059048 (not lt!1979191))))

(declare-fun lt!1979196 () Bool)

(assert (=> d!1549851 (= lt!1979191 lt!1979196)))

(declare-fun lt!1979197 () Unit!144198)

(assert (=> d!1549851 (= lt!1979197 e!3020552)))

(declare-fun c!823570 () Bool)

(assert (=> d!1549851 (= c!823570 lt!1979196)))

(assert (=> d!1549851 (= lt!1979196 (containsKey!4471 (toList!7584 lt!1979173) key!5666))))

(assert (=> d!1549851 (= (contains!18919 lt!1979173 key!5666) lt!1979191)))

(declare-fun b!4833559 () Bool)

(declare-fun Unit!144227 () Unit!144198)

(assert (=> b!4833559 (= e!3020557 Unit!144227)))

(declare-fun b!4833560 () Bool)

(declare-fun lt!1979190 () Unit!144198)

(assert (=> b!4833560 (= e!3020552 lt!1979190)))

(declare-fun lt!1979193 () Unit!144198)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2452 (List!55229 K!16819) Unit!144198)

(assert (=> b!4833560 (= lt!1979193 (lemmaContainsKeyImpliesGetValueByKeyDefined!2452 (toList!7584 lt!1979173) key!5666))))

(assert (=> b!4833560 (isDefined!10655 (getValueByKey!2671 (toList!7584 lt!1979173) key!5666))))

(declare-fun lt!1979192 () Unit!144198)

(assert (=> b!4833560 (= lt!1979192 lt!1979193)))

(declare-fun lemmaInListThenGetKeysListContains!1177 (List!55229 K!16819) Unit!144198)

(assert (=> b!4833560 (= lt!1979190 (lemmaInListThenGetKeysListContains!1177 (toList!7584 lt!1979173) key!5666))))

(assert (=> b!4833560 call!336847))

(declare-fun b!4833561 () Bool)

(assert (=> b!4833561 (= e!3020556 (not (contains!18922 (keys!20315 lt!1979173) key!5666)))))

(declare-fun bm!336842 () Bool)

(assert (=> bm!336842 (= call!336847 (contains!18922 e!3020555 key!5666))))

(declare-fun c!823568 () Bool)

(assert (=> bm!336842 (= c!823568 c!823570)))

(declare-fun b!4833562 () Bool)

(assert (=> b!4833562 (= e!3020555 (keys!20315 lt!1979173))))

(assert (= (and d!1549851 c!823570) b!4833560))

(assert (= (and d!1549851 (not c!823570)) b!4833558))

(assert (= (and b!4833558 c!823569) b!4833556))

(assert (= (and b!4833558 (not c!823569)) b!4833559))

(assert (= (or b!4833560 b!4833558) bm!336842))

(assert (= (and bm!336842 c!823568) b!4833557))

(assert (= (and bm!336842 (not c!823568)) b!4833562))

(assert (= (and d!1549851 res!2059048) b!4833561))

(assert (= (and d!1549851 (not res!2059049)) b!4833555))

(assert (= (and b!4833555 res!2059050) b!4833554))

(declare-fun m!5828004 () Bool)

(assert (=> b!4833554 m!5828004))

(assert (=> b!4833554 m!5828004))

(declare-fun m!5828006 () Bool)

(assert (=> b!4833554 m!5828006))

(declare-fun m!5828008 () Bool)

(assert (=> bm!336842 m!5828008))

(declare-fun m!5828010 () Bool)

(assert (=> b!4833557 m!5828010))

(declare-fun m!5828012 () Bool)

(assert (=> d!1549851 m!5828012))

(assert (=> b!4833562 m!5828004))

(assert (=> b!4833561 m!5828004))

(assert (=> b!4833561 m!5828004))

(assert (=> b!4833561 m!5828006))

(assert (=> b!4833556 m!5828012))

(declare-fun m!5828014 () Bool)

(assert (=> b!4833556 m!5828014))

(declare-fun m!5828016 () Bool)

(assert (=> b!4833555 m!5828016))

(assert (=> b!4833555 m!5828016))

(declare-fun m!5828018 () Bool)

(assert (=> b!4833555 m!5828018))

(declare-fun m!5828020 () Bool)

(assert (=> b!4833560 m!5828020))

(assert (=> b!4833560 m!5828016))

(assert (=> b!4833560 m!5828016))

(assert (=> b!4833560 m!5828018))

(declare-fun m!5828022 () Bool)

(assert (=> b!4833560 m!5828022))

(assert (=> b!4833522 d!1549851))

(declare-fun b!4833563 () Bool)

(declare-fun e!3020559 () Bool)

(assert (=> b!4833563 (= e!3020559 (contains!18922 (keys!20315 acc!1183) key!5666))))

(declare-fun b!4833564 () Bool)

(declare-fun e!3020560 () Bool)

(assert (=> b!4833564 (= e!3020560 e!3020559)))

(declare-fun res!2059053 () Bool)

(assert (=> b!4833564 (=> (not res!2059053) (not e!3020559))))

(assert (=> b!4833564 (= res!2059053 (isDefined!10655 (getValueByKey!2671 (toList!7584 acc!1183) key!5666)))))

(declare-fun b!4833565 () Bool)

(assert (=> b!4833565 false))

(declare-fun lt!1979202 () Unit!144198)

(declare-fun lt!1979203 () Unit!144198)

(assert (=> b!4833565 (= lt!1979202 lt!1979203)))

(assert (=> b!4833565 (containsKey!4471 (toList!7584 acc!1183) key!5666)))

(assert (=> b!4833565 (= lt!1979203 (lemmaInGetKeysListThenContainsKey!1182 (toList!7584 acc!1183) key!5666))))

(declare-fun e!3020563 () Unit!144198)

(declare-fun Unit!144232 () Unit!144198)

(assert (=> b!4833565 (= e!3020563 Unit!144232)))

(declare-fun b!4833566 () Bool)

(declare-fun e!3020561 () List!55231)

(assert (=> b!4833566 (= e!3020561 (getKeysList!1182 (toList!7584 acc!1183)))))

(declare-fun b!4833567 () Bool)

(declare-fun e!3020558 () Unit!144198)

(assert (=> b!4833567 (= e!3020558 e!3020563)))

(declare-fun c!823572 () Bool)

(declare-fun call!336848 () Bool)

(assert (=> b!4833567 (= c!823572 call!336848)))

(declare-fun d!1549853 () Bool)

(assert (=> d!1549853 e!3020560))

(declare-fun res!2059052 () Bool)

(assert (=> d!1549853 (=> res!2059052 e!3020560)))

(declare-fun e!3020562 () Bool)

(assert (=> d!1549853 (= res!2059052 e!3020562)))

(declare-fun res!2059051 () Bool)

(assert (=> d!1549853 (=> (not res!2059051) (not e!3020562))))

(declare-fun lt!1979199 () Bool)

(assert (=> d!1549853 (= res!2059051 (not lt!1979199))))

(declare-fun lt!1979204 () Bool)

(assert (=> d!1549853 (= lt!1979199 lt!1979204)))

(declare-fun lt!1979205 () Unit!144198)

(assert (=> d!1549853 (= lt!1979205 e!3020558)))

(declare-fun c!823573 () Bool)

(assert (=> d!1549853 (= c!823573 lt!1979204)))

(assert (=> d!1549853 (= lt!1979204 (containsKey!4471 (toList!7584 acc!1183) key!5666))))

(assert (=> d!1549853 (= (contains!18919 acc!1183 key!5666) lt!1979199)))

(declare-fun b!4833568 () Bool)

(declare-fun Unit!144233 () Unit!144198)

(assert (=> b!4833568 (= e!3020563 Unit!144233)))

(declare-fun b!4833569 () Bool)

(declare-fun lt!1979198 () Unit!144198)

(assert (=> b!4833569 (= e!3020558 lt!1979198)))

(declare-fun lt!1979201 () Unit!144198)

(assert (=> b!4833569 (= lt!1979201 (lemmaContainsKeyImpliesGetValueByKeyDefined!2452 (toList!7584 acc!1183) key!5666))))

(assert (=> b!4833569 (isDefined!10655 (getValueByKey!2671 (toList!7584 acc!1183) key!5666))))

(declare-fun lt!1979200 () Unit!144198)

(assert (=> b!4833569 (= lt!1979200 lt!1979201)))

(assert (=> b!4833569 (= lt!1979198 (lemmaInListThenGetKeysListContains!1177 (toList!7584 acc!1183) key!5666))))

(assert (=> b!4833569 call!336848))

(declare-fun b!4833570 () Bool)

(assert (=> b!4833570 (= e!3020562 (not (contains!18922 (keys!20315 acc!1183) key!5666)))))

(declare-fun bm!336843 () Bool)

(assert (=> bm!336843 (= call!336848 (contains!18922 e!3020561 key!5666))))

(declare-fun c!823571 () Bool)

(assert (=> bm!336843 (= c!823571 c!823573)))

(declare-fun b!4833571 () Bool)

(assert (=> b!4833571 (= e!3020561 (keys!20315 acc!1183))))

(assert (= (and d!1549853 c!823573) b!4833569))

(assert (= (and d!1549853 (not c!823573)) b!4833567))

(assert (= (and b!4833567 c!823572) b!4833565))

(assert (= (and b!4833567 (not c!823572)) b!4833568))

(assert (= (or b!4833569 b!4833567) bm!336843))

(assert (= (and bm!336843 c!823571) b!4833566))

(assert (= (and bm!336843 (not c!823571)) b!4833571))

(assert (= (and d!1549853 res!2059051) b!4833570))

(assert (= (and d!1549853 (not res!2059052)) b!4833564))

(assert (= (and b!4833564 res!2059053) b!4833563))

(declare-fun m!5828024 () Bool)

(assert (=> b!4833563 m!5828024))

(assert (=> b!4833563 m!5828024))

(declare-fun m!5828026 () Bool)

(assert (=> b!4833563 m!5828026))

(declare-fun m!5828028 () Bool)

(assert (=> bm!336843 m!5828028))

(declare-fun m!5828030 () Bool)

(assert (=> b!4833566 m!5828030))

(declare-fun m!5828032 () Bool)

(assert (=> d!1549853 m!5828032))

(assert (=> b!4833571 m!5828024))

(assert (=> b!4833570 m!5828024))

(assert (=> b!4833570 m!5828024))

(assert (=> b!4833570 m!5828026))

(assert (=> b!4833565 m!5828032))

(declare-fun m!5828034 () Bool)

(assert (=> b!4833565 m!5828034))

(declare-fun m!5828036 () Bool)

(assert (=> b!4833564 m!5828036))

(assert (=> b!4833564 m!5828036))

(declare-fun m!5828038 () Bool)

(assert (=> b!4833564 m!5828038))

(declare-fun m!5828040 () Bool)

(assert (=> b!4833569 m!5828040))

(assert (=> b!4833569 m!5828036))

(assert (=> b!4833569 m!5828036))

(assert (=> b!4833569 m!5828038))

(declare-fun m!5828042 () Bool)

(assert (=> b!4833569 m!5828042))

(assert (=> b!4833521 d!1549853))

(declare-fun e!3020566 () Bool)

(declare-fun d!1549855 () Bool)

(assert (=> d!1549855 (= (contains!18919 (addToMapMapFromBucket!1853 (t!362725 l!14180) lt!1979173) key!5666) e!3020566)))

(declare-fun res!2059056 () Bool)

(assert (=> d!1549855 (=> res!2059056 e!3020566)))

(assert (=> d!1549855 (= res!2059056 (containsKey!4469 (t!362725 l!14180) key!5666))))

(declare-fun lt!1979208 () Unit!144198)

(declare-fun choose!35305 (List!55229 ListMap!6977 K!16819) Unit!144198)

(assert (=> d!1549855 (= lt!1979208 (choose!35305 (t!362725 l!14180) lt!1979173 key!5666))))

(assert (=> d!1549855 (noDuplicateKeys!2498 (t!362725 l!14180))))

(assert (=> d!1549855 (= (lemmaAddToMapFromBucketContainsIIFInAccOrL!66 (t!362725 l!14180) lt!1979173 key!5666) lt!1979208)))

(declare-fun b!4833574 () Bool)

(assert (=> b!4833574 (= e!3020566 (contains!18919 lt!1979173 key!5666))))

(assert (= (and d!1549855 (not res!2059056)) b!4833574))

(declare-fun m!5828044 () Bool)

(assert (=> d!1549855 m!5828044))

(assert (=> d!1549855 m!5828000))

(assert (=> d!1549855 m!5827994))

(assert (=> d!1549855 m!5827994))

(declare-fun m!5828046 () Bool)

(assert (=> d!1549855 m!5828046))

(assert (=> d!1549855 m!5827986))

(assert (=> b!4833574 m!5827980))

(assert (=> b!4833521 d!1549855))

(declare-fun d!1549857 () Bool)

(declare-fun e!3020571 () Bool)

(assert (=> d!1549857 e!3020571))

(declare-fun res!2059061 () Bool)

(assert (=> d!1549857 (=> (not res!2059061) (not e!3020571))))

(declare-fun lt!1979225 () ListMap!6977)

(assert (=> d!1549857 (= res!2059061 (contains!18919 lt!1979225 (_1!32502 (h!61539 l!14180))))))

(declare-fun lt!1979223 () List!55229)

(assert (=> d!1549857 (= lt!1979225 (ListMap!6978 lt!1979223))))

(declare-fun lt!1979226 () Unit!144198)

(declare-fun lt!1979224 () Unit!144198)

(assert (=> d!1549857 (= lt!1979226 lt!1979224)))

(assert (=> d!1549857 (= (getValueByKey!2671 lt!1979223 (_1!32502 (h!61539 l!14180))) (Some!13543 (_2!32502 (h!61539 l!14180))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1241 (List!55229 K!16819 V!17065) Unit!144198)

(assert (=> d!1549857 (= lt!1979224 (lemmaContainsTupThenGetReturnValue!1241 lt!1979223 (_1!32502 (h!61539 l!14180)) (_2!32502 (h!61539 l!14180))))))

(declare-fun insertNoDuplicatedKeys!749 (List!55229 K!16819 V!17065) List!55229)

(assert (=> d!1549857 (= lt!1979223 (insertNoDuplicatedKeys!749 (toList!7584 acc!1183) (_1!32502 (h!61539 l!14180)) (_2!32502 (h!61539 l!14180))))))

(assert (=> d!1549857 (= (+!2577 acc!1183 (h!61539 l!14180)) lt!1979225)))

(declare-fun b!4833583 () Bool)

(declare-fun res!2059062 () Bool)

(assert (=> b!4833583 (=> (not res!2059062) (not e!3020571))))

(assert (=> b!4833583 (= res!2059062 (= (getValueByKey!2671 (toList!7584 lt!1979225) (_1!32502 (h!61539 l!14180))) (Some!13543 (_2!32502 (h!61539 l!14180)))))))

(declare-fun b!4833584 () Bool)

(declare-fun contains!18923 (List!55229 tuple2!58416) Bool)

(assert (=> b!4833584 (= e!3020571 (contains!18923 (toList!7584 lt!1979225) (h!61539 l!14180)))))

(assert (= (and d!1549857 res!2059061) b!4833583))

(assert (= (and b!4833583 res!2059062) b!4833584))

(declare-fun m!5828048 () Bool)

(assert (=> d!1549857 m!5828048))

(declare-fun m!5828050 () Bool)

(assert (=> d!1549857 m!5828050))

(declare-fun m!5828052 () Bool)

(assert (=> d!1549857 m!5828052))

(declare-fun m!5828054 () Bool)

(assert (=> d!1549857 m!5828054))

(declare-fun m!5828056 () Bool)

(assert (=> b!4833583 m!5828056))

(declare-fun m!5828058 () Bool)

(assert (=> b!4833584 m!5828058))

(assert (=> b!4833521 d!1549857))

(declare-fun b!4833585 () Bool)

(declare-fun e!3020573 () Bool)

(assert (=> b!4833585 (= e!3020573 (contains!18922 (keys!20315 lt!1979169) key!5666))))

(declare-fun b!4833586 () Bool)

(declare-fun e!3020574 () Bool)

(assert (=> b!4833586 (= e!3020574 e!3020573)))

(declare-fun res!2059065 () Bool)

(assert (=> b!4833586 (=> (not res!2059065) (not e!3020573))))

(assert (=> b!4833586 (= res!2059065 (isDefined!10655 (getValueByKey!2671 (toList!7584 lt!1979169) key!5666)))))

(declare-fun b!4833587 () Bool)

(assert (=> b!4833587 false))

(declare-fun lt!1979231 () Unit!144198)

(declare-fun lt!1979232 () Unit!144198)

(assert (=> b!4833587 (= lt!1979231 lt!1979232)))

(assert (=> b!4833587 (containsKey!4471 (toList!7584 lt!1979169) key!5666)))

(assert (=> b!4833587 (= lt!1979232 (lemmaInGetKeysListThenContainsKey!1182 (toList!7584 lt!1979169) key!5666))))

(declare-fun e!3020577 () Unit!144198)

(declare-fun Unit!144234 () Unit!144198)

(assert (=> b!4833587 (= e!3020577 Unit!144234)))

(declare-fun b!4833588 () Bool)

(declare-fun e!3020575 () List!55231)

(assert (=> b!4833588 (= e!3020575 (getKeysList!1182 (toList!7584 lt!1979169)))))

(declare-fun b!4833589 () Bool)

(declare-fun e!3020572 () Unit!144198)

(assert (=> b!4833589 (= e!3020572 e!3020577)))

(declare-fun c!823577 () Bool)

(declare-fun call!336849 () Bool)

(assert (=> b!4833589 (= c!823577 call!336849)))

(declare-fun d!1549859 () Bool)

(assert (=> d!1549859 e!3020574))

(declare-fun res!2059064 () Bool)

(assert (=> d!1549859 (=> res!2059064 e!3020574)))

(declare-fun e!3020576 () Bool)

(assert (=> d!1549859 (= res!2059064 e!3020576)))

(declare-fun res!2059063 () Bool)

(assert (=> d!1549859 (=> (not res!2059063) (not e!3020576))))

(declare-fun lt!1979228 () Bool)

(assert (=> d!1549859 (= res!2059063 (not lt!1979228))))

(declare-fun lt!1979233 () Bool)

(assert (=> d!1549859 (= lt!1979228 lt!1979233)))

(declare-fun lt!1979234 () Unit!144198)

(assert (=> d!1549859 (= lt!1979234 e!3020572)))

(declare-fun c!823578 () Bool)

(assert (=> d!1549859 (= c!823578 lt!1979233)))

(assert (=> d!1549859 (= lt!1979233 (containsKey!4471 (toList!7584 lt!1979169) key!5666))))

(assert (=> d!1549859 (= (contains!18919 lt!1979169 key!5666) lt!1979228)))

(declare-fun b!4833590 () Bool)

(declare-fun Unit!144235 () Unit!144198)

(assert (=> b!4833590 (= e!3020577 Unit!144235)))

(declare-fun b!4833591 () Bool)

(declare-fun lt!1979227 () Unit!144198)

(assert (=> b!4833591 (= e!3020572 lt!1979227)))

(declare-fun lt!1979230 () Unit!144198)

(assert (=> b!4833591 (= lt!1979230 (lemmaContainsKeyImpliesGetValueByKeyDefined!2452 (toList!7584 lt!1979169) key!5666))))

(assert (=> b!4833591 (isDefined!10655 (getValueByKey!2671 (toList!7584 lt!1979169) key!5666))))

(declare-fun lt!1979229 () Unit!144198)

(assert (=> b!4833591 (= lt!1979229 lt!1979230)))

(assert (=> b!4833591 (= lt!1979227 (lemmaInListThenGetKeysListContains!1177 (toList!7584 lt!1979169) key!5666))))

(assert (=> b!4833591 call!336849))

(declare-fun b!4833592 () Bool)

(assert (=> b!4833592 (= e!3020576 (not (contains!18922 (keys!20315 lt!1979169) key!5666)))))

(declare-fun bm!336844 () Bool)

(assert (=> bm!336844 (= call!336849 (contains!18922 e!3020575 key!5666))))

(declare-fun c!823576 () Bool)

(assert (=> bm!336844 (= c!823576 c!823578)))

(declare-fun b!4833593 () Bool)

(assert (=> b!4833593 (= e!3020575 (keys!20315 lt!1979169))))

(assert (= (and d!1549859 c!823578) b!4833591))

(assert (= (and d!1549859 (not c!823578)) b!4833589))

(assert (= (and b!4833589 c!823577) b!4833587))

(assert (= (and b!4833589 (not c!823577)) b!4833590))

(assert (= (or b!4833591 b!4833589) bm!336844))

(assert (= (and bm!336844 c!823576) b!4833588))

(assert (= (and bm!336844 (not c!823576)) b!4833593))

(assert (= (and d!1549859 res!2059063) b!4833592))

(assert (= (and d!1549859 (not res!2059064)) b!4833586))

(assert (= (and b!4833586 res!2059065) b!4833585))

(declare-fun m!5828060 () Bool)

(assert (=> b!4833585 m!5828060))

(assert (=> b!4833585 m!5828060))

(declare-fun m!5828062 () Bool)

(assert (=> b!4833585 m!5828062))

(declare-fun m!5828064 () Bool)

(assert (=> bm!336844 m!5828064))

(declare-fun m!5828066 () Bool)

(assert (=> b!4833588 m!5828066))

(declare-fun m!5828068 () Bool)

(assert (=> d!1549859 m!5828068))

(assert (=> b!4833593 m!5828060))

(assert (=> b!4833592 m!5828060))

(assert (=> b!4833592 m!5828060))

(assert (=> b!4833592 m!5828062))

(assert (=> b!4833587 m!5828068))

(declare-fun m!5828070 () Bool)

(assert (=> b!4833587 m!5828070))

(declare-fun m!5828072 () Bool)

(assert (=> b!4833586 m!5828072))

(assert (=> b!4833586 m!5828072))

(declare-fun m!5828074 () Bool)

(assert (=> b!4833586 m!5828074))

(declare-fun m!5828076 () Bool)

(assert (=> b!4833591 m!5828076))

(assert (=> b!4833591 m!5828072))

(assert (=> b!4833591 m!5828072))

(assert (=> b!4833591 m!5828074))

(declare-fun m!5828078 () Bool)

(assert (=> b!4833591 m!5828078))

(assert (=> b!4833521 d!1549859))

(declare-fun d!1549861 () Bool)

(declare-fun res!2059070 () Bool)

(declare-fun e!3020582 () Bool)

(assert (=> d!1549861 (=> res!2059070 e!3020582)))

(assert (=> d!1549861 (= res!2059070 (and ((_ is Cons!55105) (t!362725 l!14180)) (= (_1!32502 (h!61539 (t!362725 l!14180))) key!5666)))))

(assert (=> d!1549861 (= (containsKey!4469 (t!362725 l!14180) key!5666) e!3020582)))

(declare-fun b!4833598 () Bool)

(declare-fun e!3020583 () Bool)

(assert (=> b!4833598 (= e!3020582 e!3020583)))

(declare-fun res!2059071 () Bool)

(assert (=> b!4833598 (=> (not res!2059071) (not e!3020583))))

(assert (=> b!4833598 (= res!2059071 ((_ is Cons!55105) (t!362725 l!14180)))))

(declare-fun b!4833599 () Bool)

(assert (=> b!4833599 (= e!3020583 (containsKey!4469 (t!362725 (t!362725 l!14180)) key!5666))))

(assert (= (and d!1549861 (not res!2059070)) b!4833598))

(assert (= (and b!4833598 res!2059071) b!4833599))

(declare-fun m!5828080 () Bool)

(assert (=> b!4833599 m!5828080))

(assert (=> b!4833521 d!1549861))

(declare-fun b!4833706 () Bool)

(assert (=> b!4833706 true))

(declare-fun bs!1167236 () Bool)

(declare-fun b!4833708 () Bool)

(assert (= bs!1167236 (and b!4833708 b!4833706)))

(declare-fun lambda!238786 () Int)

(declare-fun lambda!238785 () Int)

(assert (=> bs!1167236 (= lambda!238786 lambda!238785)))

(assert (=> b!4833708 true))

(declare-fun lambda!238787 () Int)

(declare-fun lt!1979421 () ListMap!6977)

(assert (=> bs!1167236 (= (= lt!1979421 lt!1979173) (= lambda!238787 lambda!238785))))

(assert (=> b!4833708 (= (= lt!1979421 lt!1979173) (= lambda!238787 lambda!238786))))

(assert (=> b!4833708 true))

(declare-fun bs!1167237 () Bool)

(declare-fun d!1549863 () Bool)

(assert (= bs!1167237 (and d!1549863 b!4833706)))

(declare-fun lambda!238788 () Int)

(declare-fun lt!1979441 () ListMap!6977)

(assert (=> bs!1167237 (= (= lt!1979441 lt!1979173) (= lambda!238788 lambda!238785))))

(declare-fun bs!1167238 () Bool)

(assert (= bs!1167238 (and d!1549863 b!4833708)))

(assert (=> bs!1167238 (= (= lt!1979441 lt!1979173) (= lambda!238788 lambda!238786))))

(assert (=> bs!1167238 (= (= lt!1979441 lt!1979421) (= lambda!238788 lambda!238787))))

(assert (=> d!1549863 true))

(declare-fun e!3020656 () ListMap!6977)

(assert (=> b!4833706 (= e!3020656 lt!1979173)))

(declare-fun lt!1979438 () Unit!144198)

(declare-fun call!336875 () Unit!144198)

(assert (=> b!4833706 (= lt!1979438 call!336875)))

(declare-fun call!336876 () Bool)

(assert (=> b!4833706 call!336876))

(declare-fun lt!1979426 () Unit!144198)

(assert (=> b!4833706 (= lt!1979426 lt!1979438)))

(declare-fun call!336874 () Bool)

(assert (=> b!4833706 call!336874))

(declare-fun lt!1979423 () Unit!144198)

(declare-fun Unit!144236 () Unit!144198)

(assert (=> b!4833706 (= lt!1979423 Unit!144236)))

(declare-fun b!4833707 () Bool)

(declare-fun e!3020654 () Bool)

(declare-fun forall!12699 (List!55229 Int) Bool)

(assert (=> b!4833707 (= e!3020654 (forall!12699 (toList!7584 lt!1979173) lambda!238787))))

(declare-fun c!823601 () Bool)

(declare-fun bm!336869 () Bool)

(assert (=> bm!336869 (= call!336876 (forall!12699 (ite c!823601 (toList!7584 lt!1979173) (t!362725 l!14180)) (ite c!823601 lambda!238785 lambda!238787)))))

(declare-fun bm!336870 () Bool)

(assert (=> bm!336870 (= call!336874 (forall!12699 (toList!7584 lt!1979173) (ite c!823601 lambda!238785 lambda!238787)))))

(assert (=> b!4833708 (= e!3020656 lt!1979421)))

(declare-fun lt!1979427 () ListMap!6977)

(assert (=> b!4833708 (= lt!1979427 (+!2577 lt!1979173 (h!61539 (t!362725 l!14180))))))

(assert (=> b!4833708 (= lt!1979421 (addToMapMapFromBucket!1853 (t!362725 (t!362725 l!14180)) (+!2577 lt!1979173 (h!61539 (t!362725 l!14180)))))))

(declare-fun lt!1979436 () Unit!144198)

(assert (=> b!4833708 (= lt!1979436 call!336875)))

(assert (=> b!4833708 (forall!12699 (toList!7584 lt!1979173) lambda!238786)))

(declare-fun lt!1979422 () Unit!144198)

(assert (=> b!4833708 (= lt!1979422 lt!1979436)))

(assert (=> b!4833708 (forall!12699 (toList!7584 lt!1979427) lambda!238787)))

(declare-fun lt!1979432 () Unit!144198)

(declare-fun Unit!144237 () Unit!144198)

(assert (=> b!4833708 (= lt!1979432 Unit!144237)))

(assert (=> b!4833708 (forall!12699 (t!362725 (t!362725 l!14180)) lambda!238787)))

(declare-fun lt!1979431 () Unit!144198)

(declare-fun Unit!144238 () Unit!144198)

(assert (=> b!4833708 (= lt!1979431 Unit!144238)))

(declare-fun lt!1979425 () Unit!144198)

(declare-fun Unit!144239 () Unit!144198)

(assert (=> b!4833708 (= lt!1979425 Unit!144239)))

(declare-fun lt!1979440 () Unit!144198)

(declare-fun forallContained!4429 (List!55229 Int tuple2!58416) Unit!144198)

(assert (=> b!4833708 (= lt!1979440 (forallContained!4429 (toList!7584 lt!1979427) lambda!238787 (h!61539 (t!362725 l!14180))))))

(assert (=> b!4833708 (contains!18919 lt!1979427 (_1!32502 (h!61539 (t!362725 l!14180))))))

(declare-fun lt!1979430 () Unit!144198)

(declare-fun Unit!144240 () Unit!144198)

(assert (=> b!4833708 (= lt!1979430 Unit!144240)))

(assert (=> b!4833708 (contains!18919 lt!1979421 (_1!32502 (h!61539 (t!362725 l!14180))))))

(declare-fun lt!1979428 () Unit!144198)

(declare-fun Unit!144241 () Unit!144198)

(assert (=> b!4833708 (= lt!1979428 Unit!144241)))

(assert (=> b!4833708 call!336876))

(declare-fun lt!1979437 () Unit!144198)

(declare-fun Unit!144242 () Unit!144198)

(assert (=> b!4833708 (= lt!1979437 Unit!144242)))

(assert (=> b!4833708 (forall!12699 (toList!7584 lt!1979427) lambda!238787)))

(declare-fun lt!1979435 () Unit!144198)

(declare-fun Unit!144243 () Unit!144198)

(assert (=> b!4833708 (= lt!1979435 Unit!144243)))

(declare-fun lt!1979439 () Unit!144198)

(declare-fun Unit!144244 () Unit!144198)

(assert (=> b!4833708 (= lt!1979439 Unit!144244)))

(declare-fun lt!1979429 () Unit!144198)

(declare-fun addForallContainsKeyThenBeforeAdding!1016 (ListMap!6977 ListMap!6977 K!16819 V!17065) Unit!144198)

(assert (=> b!4833708 (= lt!1979429 (addForallContainsKeyThenBeforeAdding!1016 lt!1979173 lt!1979421 (_1!32502 (h!61539 (t!362725 l!14180))) (_2!32502 (h!61539 (t!362725 l!14180)))))))

(assert (=> b!4833708 call!336874))

(declare-fun lt!1979424 () Unit!144198)

(assert (=> b!4833708 (= lt!1979424 lt!1979429)))

(assert (=> b!4833708 (forall!12699 (toList!7584 lt!1979173) lambda!238787)))

(declare-fun lt!1979433 () Unit!144198)

(declare-fun Unit!144245 () Unit!144198)

(assert (=> b!4833708 (= lt!1979433 Unit!144245)))

(declare-fun res!2059126 () Bool)

(assert (=> b!4833708 (= res!2059126 (forall!12699 (t!362725 l!14180) lambda!238787))))

(assert (=> b!4833708 (=> (not res!2059126) (not e!3020654))))

(assert (=> b!4833708 e!3020654))

(declare-fun lt!1979434 () Unit!144198)

(declare-fun Unit!144246 () Unit!144198)

(assert (=> b!4833708 (= lt!1979434 Unit!144246)))

(declare-fun b!4833709 () Bool)

(declare-fun res!2059125 () Bool)

(declare-fun e!3020655 () Bool)

(assert (=> b!4833709 (=> (not res!2059125) (not e!3020655))))

(assert (=> b!4833709 (= res!2059125 (forall!12699 (toList!7584 lt!1979173) lambda!238788))))

(declare-fun b!4833710 () Bool)

(assert (=> b!4833710 (= e!3020655 (invariantList!1840 (toList!7584 lt!1979441)))))

(assert (=> d!1549863 e!3020655))

(declare-fun res!2059127 () Bool)

(assert (=> d!1549863 (=> (not res!2059127) (not e!3020655))))

(assert (=> d!1549863 (= res!2059127 (forall!12699 (t!362725 l!14180) lambda!238788))))

(assert (=> d!1549863 (= lt!1979441 e!3020656)))

(assert (=> d!1549863 (= c!823601 ((_ is Nil!55105) (t!362725 l!14180)))))

(assert (=> d!1549863 (noDuplicateKeys!2498 (t!362725 l!14180))))

(assert (=> d!1549863 (= (addToMapMapFromBucket!1853 (t!362725 l!14180) lt!1979173) lt!1979441)))

(declare-fun bm!336871 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!1017 (ListMap!6977) Unit!144198)

(assert (=> bm!336871 (= call!336875 (lemmaContainsAllItsOwnKeys!1017 lt!1979173))))

(assert (= (and d!1549863 c!823601) b!4833706))

(assert (= (and d!1549863 (not c!823601)) b!4833708))

(assert (= (and b!4833708 res!2059126) b!4833707))

(assert (= (or b!4833706 b!4833708) bm!336869))

(assert (= (or b!4833706 b!4833708) bm!336870))

(assert (= (or b!4833706 b!4833708) bm!336871))

(assert (= (and d!1549863 res!2059127) b!4833709))

(assert (= (and b!4833709 res!2059125) b!4833710))

(declare-fun m!5828258 () Bool)

(assert (=> b!4833707 m!5828258))

(declare-fun m!5828260 () Bool)

(assert (=> d!1549863 m!5828260))

(assert (=> d!1549863 m!5828000))

(declare-fun m!5828262 () Bool)

(assert (=> b!4833708 m!5828262))

(declare-fun m!5828264 () Bool)

(assert (=> b!4833708 m!5828264))

(declare-fun m!5828266 () Bool)

(assert (=> b!4833708 m!5828266))

(declare-fun m!5828268 () Bool)

(assert (=> b!4833708 m!5828268))

(assert (=> b!4833708 m!5828258))

(declare-fun m!5828270 () Bool)

(assert (=> b!4833708 m!5828270))

(declare-fun m!5828272 () Bool)

(assert (=> b!4833708 m!5828272))

(declare-fun m!5828274 () Bool)

(assert (=> b!4833708 m!5828274))

(assert (=> b!4833708 m!5828272))

(assert (=> b!4833708 m!5828268))

(declare-fun m!5828276 () Bool)

(assert (=> b!4833708 m!5828276))

(declare-fun m!5828278 () Bool)

(assert (=> b!4833708 m!5828278))

(declare-fun m!5828280 () Bool)

(assert (=> b!4833708 m!5828280))

(declare-fun m!5828282 () Bool)

(assert (=> bm!336869 m!5828282))

(declare-fun m!5828284 () Bool)

(assert (=> b!4833710 m!5828284))

(declare-fun m!5828286 () Bool)

(assert (=> b!4833709 m!5828286))

(declare-fun m!5828288 () Bool)

(assert (=> bm!336871 m!5828288))

(declare-fun m!5828290 () Bool)

(assert (=> bm!336870 m!5828290))

(assert (=> b!4833521 d!1549863))

(declare-fun d!1549887 () Bool)

(declare-fun res!2059128 () Bool)

(declare-fun e!3020657 () Bool)

(assert (=> d!1549887 (=> res!2059128 e!3020657)))

(assert (=> d!1549887 (= res!2059128 (and ((_ is Cons!55105) l!14180) (= (_1!32502 (h!61539 l!14180)) key!5666)))))

(assert (=> d!1549887 (= (containsKey!4469 l!14180 key!5666) e!3020657)))

(declare-fun b!4833713 () Bool)

(declare-fun e!3020658 () Bool)

(assert (=> b!4833713 (= e!3020657 e!3020658)))

(declare-fun res!2059129 () Bool)

(assert (=> b!4833713 (=> (not res!2059129) (not e!3020658))))

(assert (=> b!4833713 (= res!2059129 ((_ is Cons!55105) l!14180))))

(declare-fun b!4833714 () Bool)

(assert (=> b!4833714 (= e!3020658 (containsKey!4469 (t!362725 l!14180) key!5666))))

(assert (= (and d!1549887 (not res!2059128)) b!4833713))

(assert (= (and b!4833713 res!2059129) b!4833714))

(assert (=> b!4833714 m!5827986))

(assert (=> b!4833519 d!1549887))

(declare-fun bs!1167239 () Bool)

(declare-fun b!4833715 () Bool)

(assert (= bs!1167239 (and b!4833715 b!4833706)))

(declare-fun lambda!238789 () Int)

(assert (=> bs!1167239 (= (= acc!1183 lt!1979173) (= lambda!238789 lambda!238785))))

(declare-fun bs!1167240 () Bool)

(assert (= bs!1167240 (and b!4833715 b!4833708)))

(assert (=> bs!1167240 (= (= acc!1183 lt!1979173) (= lambda!238789 lambda!238786))))

(assert (=> bs!1167240 (= (= acc!1183 lt!1979421) (= lambda!238789 lambda!238787))))

(declare-fun bs!1167241 () Bool)

(assert (= bs!1167241 (and b!4833715 d!1549863)))

(assert (=> bs!1167241 (= (= acc!1183 lt!1979441) (= lambda!238789 lambda!238788))))

(assert (=> b!4833715 true))

(declare-fun bs!1167242 () Bool)

(declare-fun b!4833717 () Bool)

(assert (= bs!1167242 (and b!4833717 b!4833715)))

(declare-fun lambda!238790 () Int)

(assert (=> bs!1167242 (= lambda!238790 lambda!238789)))

(declare-fun bs!1167243 () Bool)

(assert (= bs!1167243 (and b!4833717 b!4833708)))

(assert (=> bs!1167243 (= (= acc!1183 lt!1979421) (= lambda!238790 lambda!238787))))

(declare-fun bs!1167244 () Bool)

(assert (= bs!1167244 (and b!4833717 d!1549863)))

(assert (=> bs!1167244 (= (= acc!1183 lt!1979441) (= lambda!238790 lambda!238788))))

(declare-fun bs!1167245 () Bool)

(assert (= bs!1167245 (and b!4833717 b!4833706)))

(assert (=> bs!1167245 (= (= acc!1183 lt!1979173) (= lambda!238790 lambda!238785))))

(assert (=> bs!1167243 (= (= acc!1183 lt!1979173) (= lambda!238790 lambda!238786))))

(assert (=> b!4833717 true))

(declare-fun lt!1979442 () ListMap!6977)

(declare-fun lambda!238791 () Int)

(assert (=> bs!1167242 (= (= lt!1979442 acc!1183) (= lambda!238791 lambda!238789))))

(assert (=> bs!1167244 (= (= lt!1979442 lt!1979441) (= lambda!238791 lambda!238788))))

(assert (=> bs!1167245 (= (= lt!1979442 lt!1979173) (= lambda!238791 lambda!238785))))

(assert (=> bs!1167243 (= (= lt!1979442 lt!1979173) (= lambda!238791 lambda!238786))))

(assert (=> bs!1167243 (= (= lt!1979442 lt!1979421) (= lambda!238791 lambda!238787))))

(assert (=> b!4833717 (= (= lt!1979442 acc!1183) (= lambda!238791 lambda!238790))))

(assert (=> b!4833717 true))

(declare-fun bs!1167246 () Bool)

(declare-fun d!1549889 () Bool)

(assert (= bs!1167246 (and d!1549889 b!4833715)))

(declare-fun lt!1979462 () ListMap!6977)

(declare-fun lambda!238792 () Int)

(assert (=> bs!1167246 (= (= lt!1979462 acc!1183) (= lambda!238792 lambda!238789))))

(declare-fun bs!1167247 () Bool)

(assert (= bs!1167247 (and d!1549889 b!4833717)))

(assert (=> bs!1167247 (= (= lt!1979462 lt!1979442) (= lambda!238792 lambda!238791))))

(declare-fun bs!1167248 () Bool)

(assert (= bs!1167248 (and d!1549889 d!1549863)))

(assert (=> bs!1167248 (= (= lt!1979462 lt!1979441) (= lambda!238792 lambda!238788))))

(declare-fun bs!1167249 () Bool)

(assert (= bs!1167249 (and d!1549889 b!4833706)))

(assert (=> bs!1167249 (= (= lt!1979462 lt!1979173) (= lambda!238792 lambda!238785))))

(declare-fun bs!1167250 () Bool)

(assert (= bs!1167250 (and d!1549889 b!4833708)))

(assert (=> bs!1167250 (= (= lt!1979462 lt!1979173) (= lambda!238792 lambda!238786))))

(assert (=> bs!1167250 (= (= lt!1979462 lt!1979421) (= lambda!238792 lambda!238787))))

(assert (=> bs!1167247 (= (= lt!1979462 acc!1183) (= lambda!238792 lambda!238790))))

(assert (=> d!1549889 true))

(declare-fun e!3020661 () ListMap!6977)

(assert (=> b!4833715 (= e!3020661 acc!1183)))

(declare-fun lt!1979459 () Unit!144198)

(declare-fun call!336878 () Unit!144198)

(assert (=> b!4833715 (= lt!1979459 call!336878)))

(declare-fun call!336879 () Bool)

(assert (=> b!4833715 call!336879))

(declare-fun lt!1979447 () Unit!144198)

(assert (=> b!4833715 (= lt!1979447 lt!1979459)))

(declare-fun call!336877 () Bool)

(assert (=> b!4833715 call!336877))

(declare-fun lt!1979444 () Unit!144198)

(declare-fun Unit!144247 () Unit!144198)

(assert (=> b!4833715 (= lt!1979444 Unit!144247)))

(declare-fun b!4833716 () Bool)

(declare-fun e!3020659 () Bool)

(assert (=> b!4833716 (= e!3020659 (forall!12699 (toList!7584 acc!1183) lambda!238791))))

(declare-fun c!823602 () Bool)

(declare-fun bm!336872 () Bool)

(assert (=> bm!336872 (= call!336879 (forall!12699 (ite c!823602 (toList!7584 acc!1183) l!14180) (ite c!823602 lambda!238789 lambda!238791)))))

(declare-fun bm!336873 () Bool)

(assert (=> bm!336873 (= call!336877 (forall!12699 (toList!7584 acc!1183) (ite c!823602 lambda!238789 lambda!238791)))))

(assert (=> b!4833717 (= e!3020661 lt!1979442)))

(declare-fun lt!1979448 () ListMap!6977)

(assert (=> b!4833717 (= lt!1979448 (+!2577 acc!1183 (h!61539 l!14180)))))

(assert (=> b!4833717 (= lt!1979442 (addToMapMapFromBucket!1853 (t!362725 l!14180) (+!2577 acc!1183 (h!61539 l!14180))))))

(declare-fun lt!1979457 () Unit!144198)

(assert (=> b!4833717 (= lt!1979457 call!336878)))

(assert (=> b!4833717 (forall!12699 (toList!7584 acc!1183) lambda!238790)))

(declare-fun lt!1979443 () Unit!144198)

(assert (=> b!4833717 (= lt!1979443 lt!1979457)))

(assert (=> b!4833717 (forall!12699 (toList!7584 lt!1979448) lambda!238791)))

(declare-fun lt!1979453 () Unit!144198)

(declare-fun Unit!144248 () Unit!144198)

(assert (=> b!4833717 (= lt!1979453 Unit!144248)))

(assert (=> b!4833717 (forall!12699 (t!362725 l!14180) lambda!238791)))

(declare-fun lt!1979452 () Unit!144198)

(declare-fun Unit!144249 () Unit!144198)

(assert (=> b!4833717 (= lt!1979452 Unit!144249)))

(declare-fun lt!1979446 () Unit!144198)

(declare-fun Unit!144250 () Unit!144198)

(assert (=> b!4833717 (= lt!1979446 Unit!144250)))

(declare-fun lt!1979461 () Unit!144198)

(assert (=> b!4833717 (= lt!1979461 (forallContained!4429 (toList!7584 lt!1979448) lambda!238791 (h!61539 l!14180)))))

(assert (=> b!4833717 (contains!18919 lt!1979448 (_1!32502 (h!61539 l!14180)))))

(declare-fun lt!1979451 () Unit!144198)

(declare-fun Unit!144251 () Unit!144198)

(assert (=> b!4833717 (= lt!1979451 Unit!144251)))

(assert (=> b!4833717 (contains!18919 lt!1979442 (_1!32502 (h!61539 l!14180)))))

(declare-fun lt!1979449 () Unit!144198)

(declare-fun Unit!144252 () Unit!144198)

(assert (=> b!4833717 (= lt!1979449 Unit!144252)))

(assert (=> b!4833717 call!336879))

(declare-fun lt!1979458 () Unit!144198)

(declare-fun Unit!144253 () Unit!144198)

(assert (=> b!4833717 (= lt!1979458 Unit!144253)))

(assert (=> b!4833717 (forall!12699 (toList!7584 lt!1979448) lambda!238791)))

(declare-fun lt!1979456 () Unit!144198)

(declare-fun Unit!144254 () Unit!144198)

(assert (=> b!4833717 (= lt!1979456 Unit!144254)))

(declare-fun lt!1979460 () Unit!144198)

(declare-fun Unit!144255 () Unit!144198)

(assert (=> b!4833717 (= lt!1979460 Unit!144255)))

(declare-fun lt!1979450 () Unit!144198)

(assert (=> b!4833717 (= lt!1979450 (addForallContainsKeyThenBeforeAdding!1016 acc!1183 lt!1979442 (_1!32502 (h!61539 l!14180)) (_2!32502 (h!61539 l!14180))))))

(assert (=> b!4833717 call!336877))

(declare-fun lt!1979445 () Unit!144198)

(assert (=> b!4833717 (= lt!1979445 lt!1979450)))

(assert (=> b!4833717 (forall!12699 (toList!7584 acc!1183) lambda!238791)))

(declare-fun lt!1979454 () Unit!144198)

(declare-fun Unit!144256 () Unit!144198)

(assert (=> b!4833717 (= lt!1979454 Unit!144256)))

(declare-fun res!2059131 () Bool)

(assert (=> b!4833717 (= res!2059131 (forall!12699 l!14180 lambda!238791))))

(assert (=> b!4833717 (=> (not res!2059131) (not e!3020659))))

(assert (=> b!4833717 e!3020659))

(declare-fun lt!1979455 () Unit!144198)

(declare-fun Unit!144257 () Unit!144198)

(assert (=> b!4833717 (= lt!1979455 Unit!144257)))

(declare-fun b!4833718 () Bool)

(declare-fun res!2059130 () Bool)

(declare-fun e!3020660 () Bool)

(assert (=> b!4833718 (=> (not res!2059130) (not e!3020660))))

(assert (=> b!4833718 (= res!2059130 (forall!12699 (toList!7584 acc!1183) lambda!238792))))

(declare-fun b!4833719 () Bool)

(assert (=> b!4833719 (= e!3020660 (invariantList!1840 (toList!7584 lt!1979462)))))

(assert (=> d!1549889 e!3020660))

(declare-fun res!2059132 () Bool)

(assert (=> d!1549889 (=> (not res!2059132) (not e!3020660))))

(assert (=> d!1549889 (= res!2059132 (forall!12699 l!14180 lambda!238792))))

(assert (=> d!1549889 (= lt!1979462 e!3020661)))

(assert (=> d!1549889 (= c!823602 ((_ is Nil!55105) l!14180))))

(assert (=> d!1549889 (noDuplicateKeys!2498 l!14180)))

(assert (=> d!1549889 (= (addToMapMapFromBucket!1853 l!14180 acc!1183) lt!1979462)))

(declare-fun bm!336874 () Bool)

(assert (=> bm!336874 (= call!336878 (lemmaContainsAllItsOwnKeys!1017 acc!1183))))

(assert (= (and d!1549889 c!823602) b!4833715))

(assert (= (and d!1549889 (not c!823602)) b!4833717))

(assert (= (and b!4833717 res!2059131) b!4833716))

(assert (= (or b!4833715 b!4833717) bm!336872))

(assert (= (or b!4833715 b!4833717) bm!336873))

(assert (= (or b!4833715 b!4833717) bm!336874))

(assert (= (and d!1549889 res!2059132) b!4833718))

(assert (= (and b!4833718 res!2059130) b!4833719))

(declare-fun m!5828292 () Bool)

(assert (=> b!4833716 m!5828292))

(declare-fun m!5828294 () Bool)

(assert (=> d!1549889 m!5828294))

(assert (=> d!1549889 m!5827972))

(declare-fun m!5828296 () Bool)

(assert (=> b!4833717 m!5828296))

(declare-fun m!5828298 () Bool)

(assert (=> b!4833717 m!5828298))

(declare-fun m!5828300 () Bool)

(assert (=> b!4833717 m!5828300))

(declare-fun m!5828302 () Bool)

(assert (=> b!4833717 m!5828302))

(assert (=> b!4833717 m!5828292))

(declare-fun m!5828304 () Bool)

(assert (=> b!4833717 m!5828304))

(assert (=> b!4833717 m!5827988))

(declare-fun m!5828306 () Bool)

(assert (=> b!4833717 m!5828306))

(assert (=> b!4833717 m!5827988))

(assert (=> b!4833717 m!5828302))

(declare-fun m!5828308 () Bool)

(assert (=> b!4833717 m!5828308))

(declare-fun m!5828310 () Bool)

(assert (=> b!4833717 m!5828310))

(declare-fun m!5828312 () Bool)

(assert (=> b!4833717 m!5828312))

(declare-fun m!5828314 () Bool)

(assert (=> bm!336872 m!5828314))

(declare-fun m!5828316 () Bool)

(assert (=> b!4833719 m!5828316))

(declare-fun m!5828318 () Bool)

(assert (=> b!4833718 m!5828318))

(declare-fun m!5828320 () Bool)

(assert (=> bm!336874 m!5828320))

(declare-fun m!5828322 () Bool)

(assert (=> bm!336873 m!5828322))

(assert (=> b!4833519 d!1549889))

(declare-fun b!4833720 () Bool)

(declare-fun e!3020663 () Bool)

(assert (=> b!4833720 (= e!3020663 (contains!18922 (keys!20315 lt!1979172) key!5666))))

(declare-fun b!4833721 () Bool)

(declare-fun e!3020664 () Bool)

(assert (=> b!4833721 (= e!3020664 e!3020663)))

(declare-fun res!2059135 () Bool)

(assert (=> b!4833721 (=> (not res!2059135) (not e!3020663))))

(assert (=> b!4833721 (= res!2059135 (isDefined!10655 (getValueByKey!2671 (toList!7584 lt!1979172) key!5666)))))

(declare-fun b!4833722 () Bool)

(assert (=> b!4833722 false))

(declare-fun lt!1979467 () Unit!144198)

(declare-fun lt!1979468 () Unit!144198)

(assert (=> b!4833722 (= lt!1979467 lt!1979468)))

(assert (=> b!4833722 (containsKey!4471 (toList!7584 lt!1979172) key!5666)))

(assert (=> b!4833722 (= lt!1979468 (lemmaInGetKeysListThenContainsKey!1182 (toList!7584 lt!1979172) key!5666))))

(declare-fun e!3020667 () Unit!144198)

(declare-fun Unit!144258 () Unit!144198)

(assert (=> b!4833722 (= e!3020667 Unit!144258)))

(declare-fun b!4833723 () Bool)

(declare-fun e!3020665 () List!55231)

(assert (=> b!4833723 (= e!3020665 (getKeysList!1182 (toList!7584 lt!1979172)))))

(declare-fun b!4833724 () Bool)

(declare-fun e!3020662 () Unit!144198)

(assert (=> b!4833724 (= e!3020662 e!3020667)))

(declare-fun c!823604 () Bool)

(declare-fun call!336880 () Bool)

(assert (=> b!4833724 (= c!823604 call!336880)))

(declare-fun d!1549891 () Bool)

(assert (=> d!1549891 e!3020664))

(declare-fun res!2059134 () Bool)

(assert (=> d!1549891 (=> res!2059134 e!3020664)))

(declare-fun e!3020666 () Bool)

(assert (=> d!1549891 (= res!2059134 e!3020666)))

(declare-fun res!2059133 () Bool)

(assert (=> d!1549891 (=> (not res!2059133) (not e!3020666))))

(declare-fun lt!1979464 () Bool)

(assert (=> d!1549891 (= res!2059133 (not lt!1979464))))

(declare-fun lt!1979469 () Bool)

(assert (=> d!1549891 (= lt!1979464 lt!1979469)))

(declare-fun lt!1979470 () Unit!144198)

(assert (=> d!1549891 (= lt!1979470 e!3020662)))

(declare-fun c!823605 () Bool)

(assert (=> d!1549891 (= c!823605 lt!1979469)))

(assert (=> d!1549891 (= lt!1979469 (containsKey!4471 (toList!7584 lt!1979172) key!5666))))

(assert (=> d!1549891 (= (contains!18919 lt!1979172 key!5666) lt!1979464)))

(declare-fun b!4833725 () Bool)

(declare-fun Unit!144259 () Unit!144198)

(assert (=> b!4833725 (= e!3020667 Unit!144259)))

(declare-fun b!4833726 () Bool)

(declare-fun lt!1979463 () Unit!144198)

(assert (=> b!4833726 (= e!3020662 lt!1979463)))

(declare-fun lt!1979466 () Unit!144198)

(assert (=> b!4833726 (= lt!1979466 (lemmaContainsKeyImpliesGetValueByKeyDefined!2452 (toList!7584 lt!1979172) key!5666))))

(assert (=> b!4833726 (isDefined!10655 (getValueByKey!2671 (toList!7584 lt!1979172) key!5666))))

(declare-fun lt!1979465 () Unit!144198)

(assert (=> b!4833726 (= lt!1979465 lt!1979466)))

(assert (=> b!4833726 (= lt!1979463 (lemmaInListThenGetKeysListContains!1177 (toList!7584 lt!1979172) key!5666))))

(assert (=> b!4833726 call!336880))

(declare-fun b!4833727 () Bool)

(assert (=> b!4833727 (= e!3020666 (not (contains!18922 (keys!20315 lt!1979172) key!5666)))))

(declare-fun bm!336875 () Bool)

(assert (=> bm!336875 (= call!336880 (contains!18922 e!3020665 key!5666))))

(declare-fun c!823603 () Bool)

(assert (=> bm!336875 (= c!823603 c!823605)))

(declare-fun b!4833728 () Bool)

(assert (=> b!4833728 (= e!3020665 (keys!20315 lt!1979172))))

(assert (= (and d!1549891 c!823605) b!4833726))

(assert (= (and d!1549891 (not c!823605)) b!4833724))

(assert (= (and b!4833724 c!823604) b!4833722))

(assert (= (and b!4833724 (not c!823604)) b!4833725))

(assert (= (or b!4833726 b!4833724) bm!336875))

(assert (= (and bm!336875 c!823603) b!4833723))

(assert (= (and bm!336875 (not c!823603)) b!4833728))

(assert (= (and d!1549891 res!2059133) b!4833727))

(assert (= (and d!1549891 (not res!2059134)) b!4833721))

(assert (= (and b!4833721 res!2059135) b!4833720))

(declare-fun m!5828324 () Bool)

(assert (=> b!4833720 m!5828324))

(assert (=> b!4833720 m!5828324))

(declare-fun m!5828326 () Bool)

(assert (=> b!4833720 m!5828326))

(declare-fun m!5828328 () Bool)

(assert (=> bm!336875 m!5828328))

(declare-fun m!5828330 () Bool)

(assert (=> b!4833723 m!5828330))

(declare-fun m!5828332 () Bool)

(assert (=> d!1549891 m!5828332))

(assert (=> b!4833728 m!5828324))

(assert (=> b!4833727 m!5828324))

(assert (=> b!4833727 m!5828324))

(assert (=> b!4833727 m!5828326))

(assert (=> b!4833722 m!5828332))

(declare-fun m!5828334 () Bool)

(assert (=> b!4833722 m!5828334))

(declare-fun m!5828336 () Bool)

(assert (=> b!4833721 m!5828336))

(assert (=> b!4833721 m!5828336))

(declare-fun m!5828338 () Bool)

(assert (=> b!4833721 m!5828338))

(declare-fun m!5828340 () Bool)

(assert (=> b!4833726 m!5828340))

(assert (=> b!4833726 m!5828336))

(assert (=> b!4833726 m!5828336))

(assert (=> b!4833726 m!5828338))

(declare-fun m!5828342 () Bool)

(assert (=> b!4833726 m!5828342))

(assert (=> b!4833519 d!1549891))

(declare-fun d!1549893 () Bool)

(assert (=> d!1549893 (contains!18919 (+!2577 acc!1183 (tuple2!58417 (_1!32502 (h!61539 l!14180)) (_2!32502 (h!61539 l!14180)))) key!5666)))

(declare-fun lt!1979473 () Unit!144198)

(declare-fun choose!35306 (ListMap!6977 K!16819 V!17065 K!16819) Unit!144198)

(assert (=> d!1549893 (= lt!1979473 (choose!35306 acc!1183 (_1!32502 (h!61539 l!14180)) (_2!32502 (h!61539 l!14180)) key!5666))))

(assert (=> d!1549893 (contains!18919 acc!1183 key!5666)))

(assert (=> d!1549893 (= (addStillContains!28 acc!1183 (_1!32502 (h!61539 l!14180)) (_2!32502 (h!61539 l!14180)) key!5666) lt!1979473)))

(declare-fun bs!1167251 () Bool)

(assert (= bs!1167251 d!1549893))

(declare-fun m!5828344 () Bool)

(assert (=> bs!1167251 m!5828344))

(assert (=> bs!1167251 m!5828344))

(declare-fun m!5828346 () Bool)

(assert (=> bs!1167251 m!5828346))

(declare-fun m!5828348 () Bool)

(assert (=> bs!1167251 m!5828348))

(assert (=> bs!1167251 m!5827990))

(assert (=> b!4833519 d!1549893))

(assert (=> b!4833519 d!1549851))

(declare-fun e!3020670 () Bool)

(declare-fun b!4833734 () Bool)

(declare-fun tp!1363145 () Bool)

(assert (=> b!4833734 (= e!3020670 (and tp_is_empty!34673 tp_is_empty!34675 tp!1363145))))

(assert (=> b!4833523 (= tp!1363137 e!3020670)))

(assert (= (and b!4833523 ((_ is Cons!55105) (t!362725 l!14180))) b!4833734))

(declare-fun tp!1363146 () Bool)

(declare-fun b!4833735 () Bool)

(declare-fun e!3020671 () Bool)

(assert (=> b!4833735 (= e!3020671 (and tp_is_empty!34673 tp_is_empty!34675 tp!1363146))))

(assert (=> b!4833520 (= tp!1363138 e!3020671)))

(assert (= (and b!4833520 ((_ is Cons!55105) (toList!7584 acc!1183))) b!4833735))

(check-sat (not b!4833593) (not b!4833554) tp_is_empty!34675 (not b!4833735) (not b!4833710) (not b!4833721) (not bm!336874) (not bm!336869) (not b!4833719) (not b!4833555) (not b!4833727) (not b!4833717) (not d!1549859) (not b!4833574) (not b!4833565) (not b!4833723) (not b!4833728) (not b!4833718) (not b!4833557) (not b!4833592) (not b!4833599) (not bm!336842) (not d!1549863) (not b!4833556) (not b!4833708) (not b!4833720) (not d!1549857) (not b!4833560) (not d!1549849) tp_is_empty!34673 (not bm!336871) (not b!4833534) (not b!4833584) (not d!1549851) (not bm!336843) (not b!4833726) (not b!4833563) (not b!4833709) (not b!4833707) (not d!1549853) (not b!4833587) (not b!4833535) (not b!4833570) (not b!4833562) (not b!4833734) (not bm!336844) (not b!4833566) (not d!1549889) (not bm!336873) (not b!4833583) (not d!1549855) (not bm!336875) (not bm!336872) (not b!4833722) (not b!4833561) (not d!1549891) (not b!4833564) (not b!4833569) (not b!4833571) (not b!4833586) (not b!4833716) (not b!4833591) (not b!4833585) (not b!4833588) (not b!4833714) (not d!1549893) (not bm!336870))
(check-sat)
