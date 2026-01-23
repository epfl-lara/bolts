; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!486084 () Bool)

(assert start!486084)

(declare-fun tp_is_empty!32077 () Bool)

(declare-fun b!4755096 () Bool)

(declare-fun e!2966383 () Bool)

(declare-fun tp!1350597 () Bool)

(declare-fun tp_is_empty!32079 () Bool)

(assert (=> b!4755096 (= e!2966383 (and tp_is_empty!32077 tp_is_empty!32079 tp!1350597))))

(declare-fun b!4755097 () Bool)

(declare-fun e!2966382 () Bool)

(declare-datatypes ((K!14640 0))(
  ( (K!14641 (val!19983 Int)) )
))
(declare-datatypes ((V!14886 0))(
  ( (V!14887 (val!19984 Int)) )
))
(declare-datatypes ((tuple2!54952 0))(
  ( (tuple2!54953 (_1!30770 K!14640) (_2!30770 V!14886)) )
))
(declare-datatypes ((List!53260 0))(
  ( (Nil!53136) (Cons!53136 (h!59533 tuple2!54952) (t!360604 List!53260)) )
))
(declare-datatypes ((ListMap!5637 0))(
  ( (ListMap!5638 (toList!6164 List!53260)) )
))
(declare-fun lt!1922019 () ListMap!5637)

(declare-fun lt!1922020 () ListMap!5637)

(declare-fun eq!1259 (ListMap!5637 ListMap!5637) Bool)

(assert (=> b!4755097 (= e!2966382 (not (eq!1259 lt!1922019 lt!1922020)))))

(declare-fun b!4755098 () Bool)

(declare-fun res!2017230 () Bool)

(declare-fun e!2966381 () Bool)

(assert (=> b!4755098 (=> (not res!2017230) (not e!2966381))))

(declare-fun l!13029 () List!53260)

(get-info :version)

(assert (=> b!4755098 (= res!2017230 (not ((_ is Cons!53136) l!13029)))))

(declare-fun b!4755099 () Bool)

(assert (=> b!4755099 (= e!2966381 e!2966382)))

(declare-fun res!2017228 () Bool)

(assert (=> b!4755099 (=> (not res!2017228) (not e!2966382))))

(assert (=> b!4755099 (= res!2017228 (= lt!1922019 lt!1922020))))

(declare-fun lt!1922018 () ListMap!5637)

(declare-fun lt!1922017 () tuple2!54952)

(declare-fun +!2430 (ListMap!5637 tuple2!54952) ListMap!5637)

(assert (=> b!4755099 (= lt!1922020 (+!2430 lt!1922018 lt!1922017))))

(declare-fun lt!1922021 () ListMap!5637)

(declare-fun addToMapMapFromBucket!1610 (List!53260 ListMap!5637) ListMap!5637)

(assert (=> b!4755099 (= lt!1922019 (addToMapMapFromBucket!1610 l!13029 lt!1922021))))

(declare-fun lhm!63 () ListMap!5637)

(assert (=> b!4755099 (= lt!1922018 (addToMapMapFromBucket!1610 l!13029 lhm!63))))

(assert (=> b!4755099 (= lt!1922021 (+!2430 lhm!63 lt!1922017))))

(declare-fun key!4572 () K!14640)

(declare-fun value!2966 () V!14886)

(assert (=> b!4755099 (= lt!1922017 (tuple2!54953 key!4572 value!2966))))

(declare-fun b!4755100 () Bool)

(declare-fun res!2017231 () Bool)

(assert (=> b!4755100 (=> (not res!2017231) (not e!2966381))))

(declare-fun noDuplicateKeys!2196 (List!53260) Bool)

(assert (=> b!4755100 (= res!2017231 (noDuplicateKeys!2196 l!13029))))

(declare-fun b!4755101 () Bool)

(declare-fun e!2966384 () Bool)

(declare-fun tp!1350596 () Bool)

(assert (=> b!4755101 (= e!2966384 tp!1350596)))

(declare-fun res!2017229 () Bool)

(assert (=> start!486084 (=> (not res!2017229) (not e!2966381))))

(declare-fun containsKey!3602 (List!53260 K!14640) Bool)

(assert (=> start!486084 (= res!2017229 (not (containsKey!3602 l!13029 key!4572)))))

(assert (=> start!486084 e!2966381))

(assert (=> start!486084 e!2966383))

(assert (=> start!486084 tp_is_empty!32077))

(assert (=> start!486084 tp_is_empty!32079))

(declare-fun inv!68510 (ListMap!5637) Bool)

(assert (=> start!486084 (and (inv!68510 lhm!63) e!2966384)))

(assert (= (and start!486084 res!2017229) b!4755100))

(assert (= (and b!4755100 res!2017231) b!4755098))

(assert (= (and b!4755098 res!2017230) b!4755099))

(assert (= (and b!4755099 res!2017228) b!4755097))

(assert (= (and start!486084 ((_ is Cons!53136) l!13029)) b!4755096))

(assert (= start!486084 b!4755101))

(declare-fun m!5724813 () Bool)

(assert (=> b!4755097 m!5724813))

(declare-fun m!5724815 () Bool)

(assert (=> b!4755099 m!5724815))

(declare-fun m!5724817 () Bool)

(assert (=> b!4755099 m!5724817))

(declare-fun m!5724819 () Bool)

(assert (=> b!4755099 m!5724819))

(declare-fun m!5724821 () Bool)

(assert (=> b!4755099 m!5724821))

(declare-fun m!5724823 () Bool)

(assert (=> b!4755100 m!5724823))

(declare-fun m!5724825 () Bool)

(assert (=> start!486084 m!5724825))

(declare-fun m!5724827 () Bool)

(assert (=> start!486084 m!5724827))

(check-sat (not b!4755099) (not b!4755101) tp_is_empty!32079 (not b!4755097) (not b!4755096) (not start!486084) (not b!4755100) tp_is_empty!32077)
(check-sat)
(get-model)

(declare-fun d!1520544 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9559 (List!53260) (InoxSet tuple2!54952))

(assert (=> d!1520544 (= (eq!1259 lt!1922019 lt!1922020) (= (content!9559 (toList!6164 lt!1922019)) (content!9559 (toList!6164 lt!1922020))))))

(declare-fun bs!1146619 () Bool)

(assert (= bs!1146619 d!1520544))

(declare-fun m!5724833 () Bool)

(assert (=> bs!1146619 m!5724833))

(declare-fun m!5724835 () Bool)

(assert (=> bs!1146619 m!5724835))

(assert (=> b!4755097 d!1520544))

(declare-fun d!1520546 () Bool)

(declare-fun res!2017236 () Bool)

(declare-fun e!2966389 () Bool)

(assert (=> d!1520546 (=> res!2017236 e!2966389)))

(assert (=> d!1520546 (= res!2017236 (and ((_ is Cons!53136) l!13029) (= (_1!30770 (h!59533 l!13029)) key!4572)))))

(assert (=> d!1520546 (= (containsKey!3602 l!13029 key!4572) e!2966389)))

(declare-fun b!4755106 () Bool)

(declare-fun e!2966390 () Bool)

(assert (=> b!4755106 (= e!2966389 e!2966390)))

(declare-fun res!2017237 () Bool)

(assert (=> b!4755106 (=> (not res!2017237) (not e!2966390))))

(assert (=> b!4755106 (= res!2017237 ((_ is Cons!53136) l!13029))))

(declare-fun b!4755107 () Bool)

(assert (=> b!4755107 (= e!2966390 (containsKey!3602 (t!360604 l!13029) key!4572))))

(assert (= (and d!1520546 (not res!2017236)) b!4755106))

(assert (= (and b!4755106 res!2017237) b!4755107))

(declare-fun m!5724837 () Bool)

(assert (=> b!4755107 m!5724837))

(assert (=> start!486084 d!1520546))

(declare-fun d!1520548 () Bool)

(declare-fun invariantList!1623 (List!53260) Bool)

(assert (=> d!1520548 (= (inv!68510 lhm!63) (invariantList!1623 (toList!6164 lhm!63)))))

(declare-fun bs!1146620 () Bool)

(assert (= bs!1146620 d!1520548))

(declare-fun m!5724839 () Bool)

(assert (=> bs!1146620 m!5724839))

(assert (=> start!486084 d!1520548))

(declare-fun d!1520550 () Bool)

(declare-fun e!2966396 () Bool)

(assert (=> d!1520550 e!2966396))

(declare-fun res!2017249 () Bool)

(assert (=> d!1520550 (=> (not res!2017249) (not e!2966396))))

(declare-fun lt!1922045 () ListMap!5637)

(declare-fun contains!16572 (ListMap!5637 K!14640) Bool)

(assert (=> d!1520550 (= res!2017249 (contains!16572 lt!1922045 (_1!30770 lt!1922017)))))

(declare-fun lt!1922043 () List!53260)

(assert (=> d!1520550 (= lt!1922045 (ListMap!5638 lt!1922043))))

(declare-datatypes ((Unit!137490 0))(
  ( (Unit!137491) )
))
(declare-fun lt!1922042 () Unit!137490)

(declare-fun lt!1922044 () Unit!137490)

(assert (=> d!1520550 (= lt!1922042 lt!1922044)))

(declare-datatypes ((Option!12561 0))(
  ( (None!12560) (Some!12560 (v!47261 V!14886)) )
))
(declare-fun getValueByKey!2111 (List!53260 K!14640) Option!12561)

(assert (=> d!1520550 (= (getValueByKey!2111 lt!1922043 (_1!30770 lt!1922017)) (Some!12560 (_2!30770 lt!1922017)))))

(declare-fun lemmaContainsTupThenGetReturnValue!1188 (List!53260 K!14640 V!14886) Unit!137490)

(assert (=> d!1520550 (= lt!1922044 (lemmaContainsTupThenGetReturnValue!1188 lt!1922043 (_1!30770 lt!1922017) (_2!30770 lt!1922017)))))

(declare-fun insertNoDuplicatedKeys!696 (List!53260 K!14640 V!14886) List!53260)

(assert (=> d!1520550 (= lt!1922043 (insertNoDuplicatedKeys!696 (toList!6164 lt!1922018) (_1!30770 lt!1922017) (_2!30770 lt!1922017)))))

(assert (=> d!1520550 (= (+!2430 lt!1922018 lt!1922017) lt!1922045)))

(declare-fun b!4755118 () Bool)

(declare-fun res!2017248 () Bool)

(assert (=> b!4755118 (=> (not res!2017248) (not e!2966396))))

(assert (=> b!4755118 (= res!2017248 (= (getValueByKey!2111 (toList!6164 lt!1922045) (_1!30770 lt!1922017)) (Some!12560 (_2!30770 lt!1922017))))))

(declare-fun b!4755119 () Bool)

(declare-fun contains!16573 (List!53260 tuple2!54952) Bool)

(assert (=> b!4755119 (= e!2966396 (contains!16573 (toList!6164 lt!1922045) lt!1922017))))

(assert (= (and d!1520550 res!2017249) b!4755118))

(assert (= (and b!4755118 res!2017248) b!4755119))

(declare-fun m!5724853 () Bool)

(assert (=> d!1520550 m!5724853))

(declare-fun m!5724855 () Bool)

(assert (=> d!1520550 m!5724855))

(declare-fun m!5724857 () Bool)

(assert (=> d!1520550 m!5724857))

(declare-fun m!5724859 () Bool)

(assert (=> d!1520550 m!5724859))

(declare-fun m!5724861 () Bool)

(assert (=> b!4755118 m!5724861))

(declare-fun m!5724863 () Bool)

(assert (=> b!4755119 m!5724863))

(assert (=> b!4755099 d!1520550))

(declare-fun b!4755155 () Bool)

(assert (=> b!4755155 true))

(declare-fun bs!1146636 () Bool)

(declare-fun b!4755154 () Bool)

(assert (= bs!1146636 (and b!4755154 b!4755155)))

(declare-fun lambda!223298 () Int)

(declare-fun lambda!223297 () Int)

(assert (=> bs!1146636 (= lambda!223298 lambda!223297)))

(assert (=> b!4755154 true))

(declare-fun lambda!223299 () Int)

(declare-fun lt!1922192 () ListMap!5637)

(assert (=> bs!1146636 (= (= lt!1922192 lt!1922021) (= lambda!223299 lambda!223297))))

(assert (=> b!4755154 (= (= lt!1922192 lt!1922021) (= lambda!223299 lambda!223298))))

(assert (=> b!4755154 true))

(declare-fun bs!1146637 () Bool)

(declare-fun d!1520554 () Bool)

(assert (= bs!1146637 (and d!1520554 b!4755155)))

(declare-fun lt!1922179 () ListMap!5637)

(declare-fun lambda!223300 () Int)

(assert (=> bs!1146637 (= (= lt!1922179 lt!1922021) (= lambda!223300 lambda!223297))))

(declare-fun bs!1146638 () Bool)

(assert (= bs!1146638 (and d!1520554 b!4755154)))

(assert (=> bs!1146638 (= (= lt!1922179 lt!1922021) (= lambda!223300 lambda!223298))))

(assert (=> bs!1146638 (= (= lt!1922179 lt!1922192) (= lambda!223300 lambda!223299))))

(assert (=> d!1520554 true))

(declare-fun b!4755152 () Bool)

(declare-fun res!2017270 () Bool)

(declare-fun e!2966416 () Bool)

(assert (=> b!4755152 (=> (not res!2017270) (not e!2966416))))

(declare-fun forall!11786 (List!53260 Int) Bool)

(assert (=> b!4755152 (= res!2017270 (forall!11786 (toList!6164 lt!1922021) lambda!223300))))

(declare-fun b!4755153 () Bool)

(assert (=> b!4755153 (= e!2966416 (invariantList!1623 (toList!6164 lt!1922179)))))

(declare-fun c!811652 () Bool)

(declare-fun call!333486 () Bool)

(declare-fun bm!333479 () Bool)

(declare-fun lt!1922175 () ListMap!5637)

(assert (=> bm!333479 (= call!333486 (forall!11786 (ite c!811652 (toList!6164 lt!1922021) (toList!6164 lt!1922175)) (ite c!811652 lambda!223297 lambda!223299)))))

(declare-fun call!333484 () Bool)

(declare-fun bm!333480 () Bool)

(assert (=> bm!333480 (= call!333484 (forall!11786 (toList!6164 lt!1922021) (ite c!811652 lambda!223297 lambda!223299)))))

(declare-fun bm!333481 () Bool)

(declare-fun call!333485 () Unit!137490)

(declare-fun lemmaContainsAllItsOwnKeys!901 (ListMap!5637) Unit!137490)

(assert (=> bm!333481 (= call!333485 (lemmaContainsAllItsOwnKeys!901 lt!1922021))))

(declare-fun e!2966415 () ListMap!5637)

(assert (=> b!4755154 (= e!2966415 lt!1922192)))

(assert (=> b!4755154 (= lt!1922175 (+!2430 lt!1922021 (h!59533 l!13029)))))

(assert (=> b!4755154 (= lt!1922192 (addToMapMapFromBucket!1610 (t!360604 l!13029) (+!2430 lt!1922021 (h!59533 l!13029))))))

(declare-fun lt!1922173 () Unit!137490)

(assert (=> b!4755154 (= lt!1922173 call!333485)))

(assert (=> b!4755154 (forall!11786 (toList!6164 lt!1922021) lambda!223298)))

(declare-fun lt!1922182 () Unit!137490)

(assert (=> b!4755154 (= lt!1922182 lt!1922173)))

(assert (=> b!4755154 (forall!11786 (toList!6164 lt!1922175) lambda!223299)))

(declare-fun lt!1922185 () Unit!137490)

(declare-fun Unit!137496 () Unit!137490)

(assert (=> b!4755154 (= lt!1922185 Unit!137496)))

(assert (=> b!4755154 (forall!11786 (t!360604 l!13029) lambda!223299)))

(declare-fun lt!1922180 () Unit!137490)

(declare-fun Unit!137497 () Unit!137490)

(assert (=> b!4755154 (= lt!1922180 Unit!137497)))

(declare-fun lt!1922172 () Unit!137490)

(declare-fun Unit!137499 () Unit!137490)

(assert (=> b!4755154 (= lt!1922172 Unit!137499)))

(declare-fun lt!1922178 () Unit!137490)

(declare-fun forallContained!3812 (List!53260 Int tuple2!54952) Unit!137490)

(assert (=> b!4755154 (= lt!1922178 (forallContained!3812 (toList!6164 lt!1922175) lambda!223299 (h!59533 l!13029)))))

(assert (=> b!4755154 (contains!16572 lt!1922175 (_1!30770 (h!59533 l!13029)))))

(declare-fun lt!1922177 () Unit!137490)

(declare-fun Unit!137501 () Unit!137490)

(assert (=> b!4755154 (= lt!1922177 Unit!137501)))

(assert (=> b!4755154 (contains!16572 lt!1922192 (_1!30770 (h!59533 l!13029)))))

(declare-fun lt!1922183 () Unit!137490)

(declare-fun Unit!137503 () Unit!137490)

(assert (=> b!4755154 (= lt!1922183 Unit!137503)))

(assert (=> b!4755154 (forall!11786 l!13029 lambda!223299)))

(declare-fun lt!1922188 () Unit!137490)

(declare-fun Unit!137504 () Unit!137490)

(assert (=> b!4755154 (= lt!1922188 Unit!137504)))

(assert (=> b!4755154 call!333486))

(declare-fun lt!1922181 () Unit!137490)

(declare-fun Unit!137506 () Unit!137490)

(assert (=> b!4755154 (= lt!1922181 Unit!137506)))

(declare-fun lt!1922176 () Unit!137490)

(declare-fun Unit!137508 () Unit!137490)

(assert (=> b!4755154 (= lt!1922176 Unit!137508)))

(declare-fun lt!1922191 () Unit!137490)

(declare-fun addForallContainsKeyThenBeforeAdding!900 (ListMap!5637 ListMap!5637 K!14640 V!14886) Unit!137490)

(assert (=> b!4755154 (= lt!1922191 (addForallContainsKeyThenBeforeAdding!900 lt!1922021 lt!1922192 (_1!30770 (h!59533 l!13029)) (_2!30770 (h!59533 l!13029))))))

(assert (=> b!4755154 (forall!11786 (toList!6164 lt!1922021) lambda!223299)))

(declare-fun lt!1922184 () Unit!137490)

(assert (=> b!4755154 (= lt!1922184 lt!1922191)))

(assert (=> b!4755154 (forall!11786 (toList!6164 lt!1922021) lambda!223299)))

(declare-fun lt!1922189 () Unit!137490)

(declare-fun Unit!137509 () Unit!137490)

(assert (=> b!4755154 (= lt!1922189 Unit!137509)))

(declare-fun res!2017269 () Bool)

(assert (=> b!4755154 (= res!2017269 (forall!11786 l!13029 lambda!223299))))

(declare-fun e!2966417 () Bool)

(assert (=> b!4755154 (=> (not res!2017269) (not e!2966417))))

(assert (=> b!4755154 e!2966417))

(declare-fun lt!1922190 () Unit!137490)

(declare-fun Unit!137511 () Unit!137490)

(assert (=> b!4755154 (= lt!1922190 Unit!137511)))

(assert (=> d!1520554 e!2966416))

(declare-fun res!2017268 () Bool)

(assert (=> d!1520554 (=> (not res!2017268) (not e!2966416))))

(assert (=> d!1520554 (= res!2017268 (forall!11786 l!13029 lambda!223300))))

(assert (=> d!1520554 (= lt!1922179 e!2966415)))

(assert (=> d!1520554 (= c!811652 ((_ is Nil!53136) l!13029))))

(assert (=> d!1520554 (noDuplicateKeys!2196 l!13029)))

(assert (=> d!1520554 (= (addToMapMapFromBucket!1610 l!13029 lt!1922021) lt!1922179)))

(assert (=> b!4755155 (= e!2966415 lt!1922021)))

(declare-fun lt!1922174 () Unit!137490)

(assert (=> b!4755155 (= lt!1922174 call!333485)))

(assert (=> b!4755155 call!333486))

(declare-fun lt!1922186 () Unit!137490)

(assert (=> b!4755155 (= lt!1922186 lt!1922174)))

(assert (=> b!4755155 call!333484))

(declare-fun lt!1922187 () Unit!137490)

(declare-fun Unit!137513 () Unit!137490)

(assert (=> b!4755155 (= lt!1922187 Unit!137513)))

(declare-fun b!4755156 () Bool)

(assert (=> b!4755156 (= e!2966417 call!333484)))

(assert (= (and d!1520554 c!811652) b!4755155))

(assert (= (and d!1520554 (not c!811652)) b!4755154))

(assert (= (and b!4755154 res!2017269) b!4755156))

(assert (= (or b!4755155 b!4755156) bm!333480))

(assert (= (or b!4755155 b!4755154) bm!333479))

(assert (= (or b!4755155 b!4755154) bm!333481))

(assert (= (and d!1520554 res!2017268) b!4755152))

(assert (= (and b!4755152 res!2017270) b!4755153))

(declare-fun m!5724943 () Bool)

(assert (=> bm!333481 m!5724943))

(declare-fun m!5724947 () Bool)

(assert (=> bm!333480 m!5724947))

(declare-fun m!5724949 () Bool)

(assert (=> b!4755152 m!5724949))

(declare-fun m!5724951 () Bool)

(assert (=> b!4755154 m!5724951))

(declare-fun m!5724953 () Bool)

(assert (=> b!4755154 m!5724953))

(declare-fun m!5724955 () Bool)

(assert (=> b!4755154 m!5724955))

(assert (=> b!4755154 m!5724951))

(declare-fun m!5724957 () Bool)

(assert (=> b!4755154 m!5724957))

(assert (=> b!4755154 m!5724955))

(declare-fun m!5724959 () Bool)

(assert (=> b!4755154 m!5724959))

(declare-fun m!5724961 () Bool)

(assert (=> b!4755154 m!5724961))

(declare-fun m!5724963 () Bool)

(assert (=> b!4755154 m!5724963))

(declare-fun m!5724965 () Bool)

(assert (=> b!4755154 m!5724965))

(declare-fun m!5724967 () Bool)

(assert (=> b!4755154 m!5724967))

(declare-fun m!5724969 () Bool)

(assert (=> b!4755154 m!5724969))

(declare-fun m!5724971 () Bool)

(assert (=> b!4755154 m!5724971))

(assert (=> b!4755154 m!5724963))

(declare-fun m!5724973 () Bool)

(assert (=> d!1520554 m!5724973))

(assert (=> d!1520554 m!5724823))

(declare-fun m!5724975 () Bool)

(assert (=> bm!333479 m!5724975))

(declare-fun m!5724977 () Bool)

(assert (=> b!4755153 m!5724977))

(assert (=> b!4755099 d!1520554))

(declare-fun bs!1146639 () Bool)

(declare-fun b!4755170 () Bool)

(assert (= bs!1146639 (and b!4755170 b!4755155)))

(declare-fun lambda!223301 () Int)

(assert (=> bs!1146639 (= (= lhm!63 lt!1922021) (= lambda!223301 lambda!223297))))

(declare-fun bs!1146640 () Bool)

(assert (= bs!1146640 (and b!4755170 b!4755154)))

(assert (=> bs!1146640 (= (= lhm!63 lt!1922021) (= lambda!223301 lambda!223298))))

(assert (=> bs!1146640 (= (= lhm!63 lt!1922192) (= lambda!223301 lambda!223299))))

(declare-fun bs!1146641 () Bool)

(assert (= bs!1146641 (and b!4755170 d!1520554)))

(assert (=> bs!1146641 (= (= lhm!63 lt!1922179) (= lambda!223301 lambda!223300))))

(assert (=> b!4755170 true))

(declare-fun bs!1146642 () Bool)

(declare-fun b!4755169 () Bool)

(assert (= bs!1146642 (and b!4755169 b!4755155)))

(declare-fun lambda!223302 () Int)

(assert (=> bs!1146642 (= (= lhm!63 lt!1922021) (= lambda!223302 lambda!223297))))

(declare-fun bs!1146643 () Bool)

(assert (= bs!1146643 (and b!4755169 d!1520554)))

(assert (=> bs!1146643 (= (= lhm!63 lt!1922179) (= lambda!223302 lambda!223300))))

(declare-fun bs!1146644 () Bool)

(assert (= bs!1146644 (and b!4755169 b!4755170)))

(assert (=> bs!1146644 (= lambda!223302 lambda!223301)))

(declare-fun bs!1146645 () Bool)

(assert (= bs!1146645 (and b!4755169 b!4755154)))

(assert (=> bs!1146645 (= (= lhm!63 lt!1922021) (= lambda!223302 lambda!223298))))

(assert (=> bs!1146645 (= (= lhm!63 lt!1922192) (= lambda!223302 lambda!223299))))

(assert (=> b!4755169 true))

(declare-fun lambda!223303 () Int)

(declare-fun lt!1922217 () ListMap!5637)

(assert (=> bs!1146642 (= (= lt!1922217 lt!1922021) (= lambda!223303 lambda!223297))))

(assert (=> bs!1146643 (= (= lt!1922217 lt!1922179) (= lambda!223303 lambda!223300))))

(assert (=> bs!1146644 (= (= lt!1922217 lhm!63) (= lambda!223303 lambda!223301))))

(assert (=> bs!1146645 (= (= lt!1922217 lt!1922021) (= lambda!223303 lambda!223298))))

(assert (=> b!4755169 (= (= lt!1922217 lhm!63) (= lambda!223303 lambda!223302))))

(assert (=> bs!1146645 (= (= lt!1922217 lt!1922192) (= lambda!223303 lambda!223299))))

(assert (=> b!4755169 true))

(declare-fun bs!1146647 () Bool)

(declare-fun d!1520564 () Bool)

(assert (= bs!1146647 (and d!1520564 b!4755155)))

(declare-fun lambda!223304 () Int)

(declare-fun lt!1922204 () ListMap!5637)

(assert (=> bs!1146647 (= (= lt!1922204 lt!1922021) (= lambda!223304 lambda!223297))))

(declare-fun bs!1146648 () Bool)

(assert (= bs!1146648 (and d!1520564 b!4755169)))

(assert (=> bs!1146648 (= (= lt!1922204 lt!1922217) (= lambda!223304 lambda!223303))))

(declare-fun bs!1146649 () Bool)

(assert (= bs!1146649 (and d!1520564 d!1520554)))

(assert (=> bs!1146649 (= (= lt!1922204 lt!1922179) (= lambda!223304 lambda!223300))))

(declare-fun bs!1146650 () Bool)

(assert (= bs!1146650 (and d!1520564 b!4755170)))

(assert (=> bs!1146650 (= (= lt!1922204 lhm!63) (= lambda!223304 lambda!223301))))

(declare-fun bs!1146651 () Bool)

(assert (= bs!1146651 (and d!1520564 b!4755154)))

(assert (=> bs!1146651 (= (= lt!1922204 lt!1922021) (= lambda!223304 lambda!223298))))

(assert (=> bs!1146648 (= (= lt!1922204 lhm!63) (= lambda!223304 lambda!223302))))

(assert (=> bs!1146651 (= (= lt!1922204 lt!1922192) (= lambda!223304 lambda!223299))))

(assert (=> d!1520564 true))

(declare-fun b!4755167 () Bool)

(declare-fun res!2017281 () Bool)

(declare-fun e!2966426 () Bool)

(assert (=> b!4755167 (=> (not res!2017281) (not e!2966426))))

(assert (=> b!4755167 (= res!2017281 (forall!11786 (toList!6164 lhm!63) lambda!223304))))

(declare-fun b!4755168 () Bool)

(assert (=> b!4755168 (= e!2966426 (invariantList!1623 (toList!6164 lt!1922204)))))

(declare-fun call!333489 () Bool)

(declare-fun lt!1922200 () ListMap!5637)

(declare-fun bm!333482 () Bool)

(declare-fun c!811653 () Bool)

(assert (=> bm!333482 (= call!333489 (forall!11786 (ite c!811653 (toList!6164 lhm!63) (toList!6164 lt!1922200)) (ite c!811653 lambda!223301 lambda!223303)))))

(declare-fun bm!333483 () Bool)

(declare-fun call!333487 () Bool)

(assert (=> bm!333483 (= call!333487 (forall!11786 (toList!6164 lhm!63) (ite c!811653 lambda!223301 lambda!223303)))))

(declare-fun bm!333484 () Bool)

(declare-fun call!333488 () Unit!137490)

(assert (=> bm!333484 (= call!333488 (lemmaContainsAllItsOwnKeys!901 lhm!63))))

(declare-fun e!2966425 () ListMap!5637)

(assert (=> b!4755169 (= e!2966425 lt!1922217)))

(assert (=> b!4755169 (= lt!1922200 (+!2430 lhm!63 (h!59533 l!13029)))))

(assert (=> b!4755169 (= lt!1922217 (addToMapMapFromBucket!1610 (t!360604 l!13029) (+!2430 lhm!63 (h!59533 l!13029))))))

(declare-fun lt!1922198 () Unit!137490)

(assert (=> b!4755169 (= lt!1922198 call!333488)))

(assert (=> b!4755169 (forall!11786 (toList!6164 lhm!63) lambda!223302)))

(declare-fun lt!1922207 () Unit!137490)

(assert (=> b!4755169 (= lt!1922207 lt!1922198)))

(assert (=> b!4755169 (forall!11786 (toList!6164 lt!1922200) lambda!223303)))

(declare-fun lt!1922210 () Unit!137490)

(declare-fun Unit!137514 () Unit!137490)

(assert (=> b!4755169 (= lt!1922210 Unit!137514)))

(assert (=> b!4755169 (forall!11786 (t!360604 l!13029) lambda!223303)))

(declare-fun lt!1922205 () Unit!137490)

(declare-fun Unit!137515 () Unit!137490)

(assert (=> b!4755169 (= lt!1922205 Unit!137515)))

(declare-fun lt!1922197 () Unit!137490)

(declare-fun Unit!137516 () Unit!137490)

(assert (=> b!4755169 (= lt!1922197 Unit!137516)))

(declare-fun lt!1922203 () Unit!137490)

(assert (=> b!4755169 (= lt!1922203 (forallContained!3812 (toList!6164 lt!1922200) lambda!223303 (h!59533 l!13029)))))

(assert (=> b!4755169 (contains!16572 lt!1922200 (_1!30770 (h!59533 l!13029)))))

(declare-fun lt!1922202 () Unit!137490)

(declare-fun Unit!137517 () Unit!137490)

(assert (=> b!4755169 (= lt!1922202 Unit!137517)))

(assert (=> b!4755169 (contains!16572 lt!1922217 (_1!30770 (h!59533 l!13029)))))

(declare-fun lt!1922208 () Unit!137490)

(declare-fun Unit!137518 () Unit!137490)

(assert (=> b!4755169 (= lt!1922208 Unit!137518)))

(assert (=> b!4755169 (forall!11786 l!13029 lambda!223303)))

(declare-fun lt!1922213 () Unit!137490)

(declare-fun Unit!137519 () Unit!137490)

(assert (=> b!4755169 (= lt!1922213 Unit!137519)))

(assert (=> b!4755169 call!333489))

(declare-fun lt!1922206 () Unit!137490)

(declare-fun Unit!137520 () Unit!137490)

(assert (=> b!4755169 (= lt!1922206 Unit!137520)))

(declare-fun lt!1922201 () Unit!137490)

(declare-fun Unit!137521 () Unit!137490)

(assert (=> b!4755169 (= lt!1922201 Unit!137521)))

(declare-fun lt!1922216 () Unit!137490)

(assert (=> b!4755169 (= lt!1922216 (addForallContainsKeyThenBeforeAdding!900 lhm!63 lt!1922217 (_1!30770 (h!59533 l!13029)) (_2!30770 (h!59533 l!13029))))))

(assert (=> b!4755169 (forall!11786 (toList!6164 lhm!63) lambda!223303)))

(declare-fun lt!1922209 () Unit!137490)

(assert (=> b!4755169 (= lt!1922209 lt!1922216)))

(assert (=> b!4755169 (forall!11786 (toList!6164 lhm!63) lambda!223303)))

(declare-fun lt!1922214 () Unit!137490)

(declare-fun Unit!137522 () Unit!137490)

(assert (=> b!4755169 (= lt!1922214 Unit!137522)))

(declare-fun res!2017280 () Bool)

(assert (=> b!4755169 (= res!2017280 (forall!11786 l!13029 lambda!223303))))

(declare-fun e!2966427 () Bool)

(assert (=> b!4755169 (=> (not res!2017280) (not e!2966427))))

(assert (=> b!4755169 e!2966427))

(declare-fun lt!1922215 () Unit!137490)

(declare-fun Unit!137523 () Unit!137490)

(assert (=> b!4755169 (= lt!1922215 Unit!137523)))

(assert (=> d!1520564 e!2966426))

(declare-fun res!2017279 () Bool)

(assert (=> d!1520564 (=> (not res!2017279) (not e!2966426))))

(assert (=> d!1520564 (= res!2017279 (forall!11786 l!13029 lambda!223304))))

(assert (=> d!1520564 (= lt!1922204 e!2966425)))

(assert (=> d!1520564 (= c!811653 ((_ is Nil!53136) l!13029))))

(assert (=> d!1520564 (noDuplicateKeys!2196 l!13029)))

(assert (=> d!1520564 (= (addToMapMapFromBucket!1610 l!13029 lhm!63) lt!1922204)))

(assert (=> b!4755170 (= e!2966425 lhm!63)))

(declare-fun lt!1922199 () Unit!137490)

(assert (=> b!4755170 (= lt!1922199 call!333488)))

(assert (=> b!4755170 call!333489))

(declare-fun lt!1922211 () Unit!137490)

(assert (=> b!4755170 (= lt!1922211 lt!1922199)))

(assert (=> b!4755170 call!333487))

(declare-fun lt!1922212 () Unit!137490)

(declare-fun Unit!137524 () Unit!137490)

(assert (=> b!4755170 (= lt!1922212 Unit!137524)))

(declare-fun b!4755171 () Bool)

(assert (=> b!4755171 (= e!2966427 call!333487)))

(assert (= (and d!1520564 c!811653) b!4755170))

(assert (= (and d!1520564 (not c!811653)) b!4755169))

(assert (= (and b!4755169 res!2017280) b!4755171))

(assert (= (or b!4755170 b!4755171) bm!333483))

(assert (= (or b!4755170 b!4755169) bm!333482))

(assert (= (or b!4755170 b!4755169) bm!333484))

(assert (= (and d!1520564 res!2017279) b!4755167))

(assert (= (and b!4755167 res!2017281) b!4755168))

(declare-fun m!5724983 () Bool)

(assert (=> bm!333484 m!5724983))

(declare-fun m!5724985 () Bool)

(assert (=> bm!333483 m!5724985))

(declare-fun m!5724987 () Bool)

(assert (=> b!4755167 m!5724987))

(declare-fun m!5724989 () Bool)

(assert (=> b!4755169 m!5724989))

(declare-fun m!5724991 () Bool)

(assert (=> b!4755169 m!5724991))

(declare-fun m!5724993 () Bool)

(assert (=> b!4755169 m!5724993))

(assert (=> b!4755169 m!5724989))

(declare-fun m!5724995 () Bool)

(assert (=> b!4755169 m!5724995))

(assert (=> b!4755169 m!5724993))

(declare-fun m!5724997 () Bool)

(assert (=> b!4755169 m!5724997))

(declare-fun m!5724999 () Bool)

(assert (=> b!4755169 m!5724999))

(declare-fun m!5725001 () Bool)

(assert (=> b!4755169 m!5725001))

(declare-fun m!5725003 () Bool)

(assert (=> b!4755169 m!5725003))

(declare-fun m!5725005 () Bool)

(assert (=> b!4755169 m!5725005))

(declare-fun m!5725007 () Bool)

(assert (=> b!4755169 m!5725007))

(declare-fun m!5725009 () Bool)

(assert (=> b!4755169 m!5725009))

(assert (=> b!4755169 m!5725001))

(declare-fun m!5725011 () Bool)

(assert (=> d!1520564 m!5725011))

(assert (=> d!1520564 m!5724823))

(declare-fun m!5725013 () Bool)

(assert (=> bm!333482 m!5725013))

(declare-fun m!5725015 () Bool)

(assert (=> b!4755168 m!5725015))

(assert (=> b!4755099 d!1520564))

(declare-fun d!1520568 () Bool)

(declare-fun e!2966438 () Bool)

(assert (=> d!1520568 e!2966438))

(declare-fun res!2017289 () Bool)

(assert (=> d!1520568 (=> (not res!2017289) (not e!2966438))))

(declare-fun lt!1922221 () ListMap!5637)

(assert (=> d!1520568 (= res!2017289 (contains!16572 lt!1922221 (_1!30770 lt!1922017)))))

(declare-fun lt!1922219 () List!53260)

(assert (=> d!1520568 (= lt!1922221 (ListMap!5638 lt!1922219))))

(declare-fun lt!1922218 () Unit!137490)

(declare-fun lt!1922220 () Unit!137490)

(assert (=> d!1520568 (= lt!1922218 lt!1922220)))

(assert (=> d!1520568 (= (getValueByKey!2111 lt!1922219 (_1!30770 lt!1922017)) (Some!12560 (_2!30770 lt!1922017)))))

(assert (=> d!1520568 (= lt!1922220 (lemmaContainsTupThenGetReturnValue!1188 lt!1922219 (_1!30770 lt!1922017) (_2!30770 lt!1922017)))))

(assert (=> d!1520568 (= lt!1922219 (insertNoDuplicatedKeys!696 (toList!6164 lhm!63) (_1!30770 lt!1922017) (_2!30770 lt!1922017)))))

(assert (=> d!1520568 (= (+!2430 lhm!63 lt!1922017) lt!1922221)))

(declare-fun b!4755184 () Bool)

(declare-fun res!2017288 () Bool)

(assert (=> b!4755184 (=> (not res!2017288) (not e!2966438))))

(assert (=> b!4755184 (= res!2017288 (= (getValueByKey!2111 (toList!6164 lt!1922221) (_1!30770 lt!1922017)) (Some!12560 (_2!30770 lt!1922017))))))

(declare-fun b!4755185 () Bool)

(assert (=> b!4755185 (= e!2966438 (contains!16573 (toList!6164 lt!1922221) lt!1922017))))

(assert (= (and d!1520568 res!2017289) b!4755184))

(assert (= (and b!4755184 res!2017288) b!4755185))

(declare-fun m!5725017 () Bool)

(assert (=> d!1520568 m!5725017))

(declare-fun m!5725019 () Bool)

(assert (=> d!1520568 m!5725019))

(declare-fun m!5725021 () Bool)

(assert (=> d!1520568 m!5725021))

(declare-fun m!5725023 () Bool)

(assert (=> d!1520568 m!5725023))

(declare-fun m!5725025 () Bool)

(assert (=> b!4755184 m!5725025))

(declare-fun m!5725027 () Bool)

(assert (=> b!4755185 m!5725027))

(assert (=> b!4755099 d!1520568))

(declare-fun d!1520570 () Bool)

(declare-fun res!2017294 () Bool)

(declare-fun e!2966443 () Bool)

(assert (=> d!1520570 (=> res!2017294 e!2966443)))

(assert (=> d!1520570 (= res!2017294 (not ((_ is Cons!53136) l!13029)))))

(assert (=> d!1520570 (= (noDuplicateKeys!2196 l!13029) e!2966443)))

(declare-fun b!4755190 () Bool)

(declare-fun e!2966444 () Bool)

(assert (=> b!4755190 (= e!2966443 e!2966444)))

(declare-fun res!2017295 () Bool)

(assert (=> b!4755190 (=> (not res!2017295) (not e!2966444))))

(assert (=> b!4755190 (= res!2017295 (not (containsKey!3602 (t!360604 l!13029) (_1!30770 (h!59533 l!13029)))))))

(declare-fun b!4755191 () Bool)

(assert (=> b!4755191 (= e!2966444 (noDuplicateKeys!2196 (t!360604 l!13029)))))

(assert (= (and d!1520570 (not res!2017294)) b!4755190))

(assert (= (and b!4755190 res!2017295) b!4755191))

(declare-fun m!5725029 () Bool)

(assert (=> b!4755190 m!5725029))

(declare-fun m!5725031 () Bool)

(assert (=> b!4755191 m!5725031))

(assert (=> b!4755100 d!1520570))

(declare-fun b!4755196 () Bool)

(declare-fun tp!1350604 () Bool)

(declare-fun e!2966447 () Bool)

(assert (=> b!4755196 (= e!2966447 (and tp_is_empty!32077 tp_is_empty!32079 tp!1350604))))

(assert (=> b!4755096 (= tp!1350597 e!2966447)))

(assert (= (and b!4755096 ((_ is Cons!53136) (t!360604 l!13029))) b!4755196))

(declare-fun e!2966448 () Bool)

(declare-fun b!4755197 () Bool)

(declare-fun tp!1350605 () Bool)

(assert (=> b!4755197 (= e!2966448 (and tp_is_empty!32077 tp_is_empty!32079 tp!1350605))))

(assert (=> b!4755101 (= tp!1350596 e!2966448)))

(assert (= (and b!4755101 ((_ is Cons!53136) (toList!6164 lhm!63))) b!4755197))

(check-sat (not d!1520544) (not b!4755169) (not b!4755107) (not b!4755191) (not b!4755152) (not b!4755190) (not d!1520550) (not b!4755185) (not bm!333479) (not b!4755119) (not b!4755153) (not bm!333480) (not d!1520564) tp_is_empty!32077 (not b!4755168) (not d!1520554) (not bm!333484) (not bm!333482) (not b!4755154) (not d!1520568) (not b!4755167) tp_is_empty!32079 (not bm!333481) (not d!1520548) (not b!4755118) (not b!4755196) (not b!4755197) (not bm!333483) (not b!4755184))
(check-sat)
