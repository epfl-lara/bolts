; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!485876 () Bool)

(assert start!485876)

(declare-fun b!4754141 () Bool)

(declare-fun res!2016582 () Bool)

(declare-fun e!2965759 () Bool)

(assert (=> b!4754141 (=> res!2016582 e!2965759)))

(declare-datatypes ((K!14605 0))(
  ( (K!14606 (val!19955 Int)) )
))
(declare-datatypes ((V!14851 0))(
  ( (V!14852 (val!19956 Int)) )
))
(declare-datatypes ((tuple2!54924 0))(
  ( (tuple2!54925 (_1!30756 K!14605) (_2!30756 V!14851)) )
))
(declare-datatypes ((List!53246 0))(
  ( (Nil!53122) (Cons!53122 (h!59519 tuple2!54924) (t!360590 List!53246)) )
))
(declare-fun l!13029 () List!53246)

(declare-fun noDuplicateKeys!2182 (List!53246) Bool)

(assert (=> b!4754141 (= res!2016582 (not (noDuplicateKeys!2182 (t!360590 l!13029))))))

(declare-fun res!2016584 () Bool)

(declare-fun e!2965758 () Bool)

(assert (=> start!485876 (=> (not res!2016584) (not e!2965758))))

(declare-fun key!4572 () K!14605)

(declare-fun containsKey!3588 (List!53246 K!14605) Bool)

(assert (=> start!485876 (= res!2016584 (not (containsKey!3588 l!13029 key!4572)))))

(assert (=> start!485876 e!2965758))

(declare-fun e!2965757 () Bool)

(assert (=> start!485876 e!2965757))

(declare-fun tp_is_empty!32021 () Bool)

(assert (=> start!485876 tp_is_empty!32021))

(declare-fun tp_is_empty!32023 () Bool)

(assert (=> start!485876 tp_is_empty!32023))

(declare-datatypes ((ListMap!5609 0))(
  ( (ListMap!5610 (toList!6150 List!53246)) )
))
(declare-fun lhm!63 () ListMap!5609)

(declare-fun e!2965760 () Bool)

(declare-fun inv!68475 (ListMap!5609) Bool)

(assert (=> start!485876 (and (inv!68475 lhm!63) e!2965760)))

(declare-fun b!4754142 () Bool)

(declare-fun tp!1350464 () Bool)

(assert (=> b!4754142 (= e!2965760 tp!1350464)))

(declare-fun b!4754143 () Bool)

(declare-fun res!2016583 () Bool)

(assert (=> b!4754143 (=> (not res!2016583) (not e!2965758))))

(get-info :version)

(assert (=> b!4754143 (= res!2016583 ((_ is Cons!53122) l!13029))))

(declare-fun tp!1350465 () Bool)

(declare-fun b!4754144 () Bool)

(assert (=> b!4754144 (= e!2965757 (and tp_is_empty!32021 tp_is_empty!32023 tp!1350465))))

(declare-fun b!4754145 () Bool)

(declare-fun res!2016581 () Bool)

(assert (=> b!4754145 (=> (not res!2016581) (not e!2965758))))

(assert (=> b!4754145 (= res!2016581 (noDuplicateKeys!2182 l!13029))))

(declare-fun b!4754146 () Bool)

(assert (=> b!4754146 (= e!2965758 (not e!2965759))))

(declare-fun res!2016585 () Bool)

(assert (=> b!4754146 (=> res!2016585 e!2965759)))

(assert (=> b!4754146 (= res!2016585 (containsKey!3588 (t!360590 l!13029) key!4572))))

(declare-fun lt!1920151 () ListMap!5609)

(declare-fun lt!1920153 () tuple2!54924)

(declare-fun eq!1247 (ListMap!5609 ListMap!5609) Bool)

(declare-fun +!2416 (ListMap!5609 tuple2!54924) ListMap!5609)

(assert (=> b!4754146 (eq!1247 (+!2416 lt!1920151 lt!1920153) (+!2416 (+!2416 lhm!63 lt!1920153) (h!59519 l!13029)))))

(declare-fun value!2966 () V!14851)

(assert (=> b!4754146 (= lt!1920153 (tuple2!54925 key!4572 value!2966))))

(declare-datatypes ((Unit!137044 0))(
  ( (Unit!137045) )
))
(declare-fun lt!1920152 () Unit!137044)

(declare-fun addCommutativeForDiffKeys!48 (ListMap!5609 K!14605 V!14851 K!14605 V!14851) Unit!137044)

(assert (=> b!4754146 (= lt!1920152 (addCommutativeForDiffKeys!48 lhm!63 (_1!30756 (h!59519 l!13029)) (_2!30756 (h!59519 l!13029)) key!4572 value!2966))))

(assert (=> b!4754146 (= lt!1920151 (+!2416 lhm!63 (h!59519 l!13029)))))

(declare-fun b!4754147 () Bool)

(declare-fun ListPrimitiveSize!339 (List!53246) Int)

(assert (=> b!4754147 (= e!2965759 (< (ListPrimitiveSize!339 (t!360590 l!13029)) (ListPrimitiveSize!339 l!13029)))))

(assert (= (and start!485876 res!2016584) b!4754145))

(assert (= (and b!4754145 res!2016581) b!4754143))

(assert (= (and b!4754143 res!2016583) b!4754146))

(assert (= (and b!4754146 (not res!2016585)) b!4754141))

(assert (= (and b!4754141 (not res!2016582)) b!4754147))

(assert (= (and start!485876 ((_ is Cons!53122) l!13029)) b!4754144))

(assert (= start!485876 b!4754142))

(declare-fun m!5722129 () Bool)

(assert (=> b!4754146 m!5722129))

(declare-fun m!5722131 () Bool)

(assert (=> b!4754146 m!5722131))

(assert (=> b!4754146 m!5722131))

(declare-fun m!5722133 () Bool)

(assert (=> b!4754146 m!5722133))

(declare-fun m!5722135 () Bool)

(assert (=> b!4754146 m!5722135))

(declare-fun m!5722137 () Bool)

(assert (=> b!4754146 m!5722137))

(declare-fun m!5722139 () Bool)

(assert (=> b!4754146 m!5722139))

(declare-fun m!5722141 () Bool)

(assert (=> b!4754146 m!5722141))

(assert (=> b!4754146 m!5722137))

(assert (=> b!4754146 m!5722133))

(declare-fun m!5722143 () Bool)

(assert (=> b!4754141 m!5722143))

(declare-fun m!5722145 () Bool)

(assert (=> b!4754147 m!5722145))

(declare-fun m!5722147 () Bool)

(assert (=> b!4754147 m!5722147))

(declare-fun m!5722149 () Bool)

(assert (=> b!4754145 m!5722149))

(declare-fun m!5722151 () Bool)

(assert (=> start!485876 m!5722151))

(declare-fun m!5722153 () Bool)

(assert (=> start!485876 m!5722153))

(check-sat tp_is_empty!32021 tp_is_empty!32023 (not b!4754147) (not b!4754141) (not start!485876) (not b!4754145) (not b!4754144) (not b!4754146) (not b!4754142))
(check-sat)
(get-model)

(declare-fun d!1520165 () Bool)

(declare-fun lt!1920156 () Int)

(assert (=> d!1520165 (>= lt!1920156 0)))

(declare-fun e!2965763 () Int)

(assert (=> d!1520165 (= lt!1920156 e!2965763)))

(declare-fun c!811582 () Bool)

(assert (=> d!1520165 (= c!811582 ((_ is Nil!53122) (t!360590 l!13029)))))

(assert (=> d!1520165 (= (ListPrimitiveSize!339 (t!360590 l!13029)) lt!1920156)))

(declare-fun b!4754152 () Bool)

(assert (=> b!4754152 (= e!2965763 0)))

(declare-fun b!4754153 () Bool)

(assert (=> b!4754153 (= e!2965763 (+ 1 (ListPrimitiveSize!339 (t!360590 (t!360590 l!13029)))))))

(assert (= (and d!1520165 c!811582) b!4754152))

(assert (= (and d!1520165 (not c!811582)) b!4754153))

(declare-fun m!5722159 () Bool)

(assert (=> b!4754153 m!5722159))

(assert (=> b!4754147 d!1520165))

(declare-fun d!1520171 () Bool)

(declare-fun lt!1920157 () Int)

(assert (=> d!1520171 (>= lt!1920157 0)))

(declare-fun e!2965764 () Int)

(assert (=> d!1520171 (= lt!1920157 e!2965764)))

(declare-fun c!811583 () Bool)

(assert (=> d!1520171 (= c!811583 ((_ is Nil!53122) l!13029))))

(assert (=> d!1520171 (= (ListPrimitiveSize!339 l!13029) lt!1920157)))

(declare-fun b!4754154 () Bool)

(assert (=> b!4754154 (= e!2965764 0)))

(declare-fun b!4754155 () Bool)

(assert (=> b!4754155 (= e!2965764 (+ 1 (ListPrimitiveSize!339 (t!360590 l!13029))))))

(assert (= (and d!1520171 c!811583) b!4754154))

(assert (= (and d!1520171 (not c!811583)) b!4754155))

(assert (=> b!4754155 m!5722145))

(assert (=> b!4754147 d!1520171))

(declare-fun d!1520173 () Bool)

(declare-fun e!2965770 () Bool)

(assert (=> d!1520173 e!2965770))

(declare-fun res!2016596 () Bool)

(assert (=> d!1520173 (=> (not res!2016596) (not e!2965770))))

(declare-fun lt!1920181 () ListMap!5609)

(declare-fun contains!16547 (ListMap!5609 K!14605) Bool)

(assert (=> d!1520173 (= res!2016596 (contains!16547 lt!1920181 (_1!30756 (h!59519 l!13029))))))

(declare-fun lt!1920180 () List!53246)

(assert (=> d!1520173 (= lt!1920181 (ListMap!5610 lt!1920180))))

(declare-fun lt!1920179 () Unit!137044)

(declare-fun lt!1920178 () Unit!137044)

(assert (=> d!1520173 (= lt!1920179 lt!1920178)))

(declare-datatypes ((Option!12549 0))(
  ( (None!12548) (Some!12548 (v!47249 V!14851)) )
))
(declare-fun getValueByKey!2099 (List!53246 K!14605) Option!12549)

(assert (=> d!1520173 (= (getValueByKey!2099 lt!1920180 (_1!30756 (h!59519 l!13029))) (Some!12548 (_2!30756 (h!59519 l!13029))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1176 (List!53246 K!14605 V!14851) Unit!137044)

(assert (=> d!1520173 (= lt!1920178 (lemmaContainsTupThenGetReturnValue!1176 lt!1920180 (_1!30756 (h!59519 l!13029)) (_2!30756 (h!59519 l!13029))))))

(declare-fun insertNoDuplicatedKeys!684 (List!53246 K!14605 V!14851) List!53246)

(assert (=> d!1520173 (= lt!1920180 (insertNoDuplicatedKeys!684 (toList!6150 (+!2416 lhm!63 lt!1920153)) (_1!30756 (h!59519 l!13029)) (_2!30756 (h!59519 l!13029))))))

(assert (=> d!1520173 (= (+!2416 (+!2416 lhm!63 lt!1920153) (h!59519 l!13029)) lt!1920181)))

(declare-fun b!4754166 () Bool)

(declare-fun res!2016597 () Bool)

(assert (=> b!4754166 (=> (not res!2016597) (not e!2965770))))

(assert (=> b!4754166 (= res!2016597 (= (getValueByKey!2099 (toList!6150 lt!1920181) (_1!30756 (h!59519 l!13029))) (Some!12548 (_2!30756 (h!59519 l!13029)))))))

(declare-fun b!4754167 () Bool)

(declare-fun contains!16549 (List!53246 tuple2!54924) Bool)

(assert (=> b!4754167 (= e!2965770 (contains!16549 (toList!6150 lt!1920181) (h!59519 l!13029)))))

(assert (= (and d!1520173 res!2016596) b!4754166))

(assert (= (and b!4754166 res!2016597) b!4754167))

(declare-fun m!5722165 () Bool)

(assert (=> d!1520173 m!5722165))

(declare-fun m!5722169 () Bool)

(assert (=> d!1520173 m!5722169))

(declare-fun m!5722173 () Bool)

(assert (=> d!1520173 m!5722173))

(declare-fun m!5722179 () Bool)

(assert (=> d!1520173 m!5722179))

(declare-fun m!5722181 () Bool)

(assert (=> b!4754166 m!5722181))

(declare-fun m!5722183 () Bool)

(assert (=> b!4754167 m!5722183))

(assert (=> b!4754146 d!1520173))

(declare-fun d!1520177 () Bool)

(declare-fun res!2016608 () Bool)

(declare-fun e!2965781 () Bool)

(assert (=> d!1520177 (=> res!2016608 e!2965781)))

(assert (=> d!1520177 (= res!2016608 (and ((_ is Cons!53122) (t!360590 l!13029)) (= (_1!30756 (h!59519 (t!360590 l!13029))) key!4572)))))

(assert (=> d!1520177 (= (containsKey!3588 (t!360590 l!13029) key!4572) e!2965781)))

(declare-fun b!4754178 () Bool)

(declare-fun e!2965782 () Bool)

(assert (=> b!4754178 (= e!2965781 e!2965782)))

(declare-fun res!2016609 () Bool)

(assert (=> b!4754178 (=> (not res!2016609) (not e!2965782))))

(assert (=> b!4754178 (= res!2016609 ((_ is Cons!53122) (t!360590 l!13029)))))

(declare-fun b!4754179 () Bool)

(assert (=> b!4754179 (= e!2965782 (containsKey!3588 (t!360590 (t!360590 l!13029)) key!4572))))

(assert (= (and d!1520177 (not res!2016608)) b!4754178))

(assert (= (and b!4754178 res!2016609) b!4754179))

(declare-fun m!5722187 () Bool)

(assert (=> b!4754179 m!5722187))

(assert (=> b!4754146 d!1520177))

(declare-fun d!1520181 () Bool)

(declare-fun e!2965784 () Bool)

(assert (=> d!1520181 e!2965784))

(declare-fun res!2016612 () Bool)

(assert (=> d!1520181 (=> (not res!2016612) (not e!2965784))))

(declare-fun lt!1920189 () ListMap!5609)

(assert (=> d!1520181 (= res!2016612 (contains!16547 lt!1920189 (_1!30756 lt!1920153)))))

(declare-fun lt!1920188 () List!53246)

(assert (=> d!1520181 (= lt!1920189 (ListMap!5610 lt!1920188))))

(declare-fun lt!1920187 () Unit!137044)

(declare-fun lt!1920186 () Unit!137044)

(assert (=> d!1520181 (= lt!1920187 lt!1920186)))

(assert (=> d!1520181 (= (getValueByKey!2099 lt!1920188 (_1!30756 lt!1920153)) (Some!12548 (_2!30756 lt!1920153)))))

(assert (=> d!1520181 (= lt!1920186 (lemmaContainsTupThenGetReturnValue!1176 lt!1920188 (_1!30756 lt!1920153) (_2!30756 lt!1920153)))))

(assert (=> d!1520181 (= lt!1920188 (insertNoDuplicatedKeys!684 (toList!6150 lt!1920151) (_1!30756 lt!1920153) (_2!30756 lt!1920153)))))

(assert (=> d!1520181 (= (+!2416 lt!1920151 lt!1920153) lt!1920189)))

(declare-fun b!4754182 () Bool)

(declare-fun res!2016613 () Bool)

(assert (=> b!4754182 (=> (not res!2016613) (not e!2965784))))

(assert (=> b!4754182 (= res!2016613 (= (getValueByKey!2099 (toList!6150 lt!1920189) (_1!30756 lt!1920153)) (Some!12548 (_2!30756 lt!1920153))))))

(declare-fun b!4754183 () Bool)

(assert (=> b!4754183 (= e!2965784 (contains!16549 (toList!6150 lt!1920189) lt!1920153))))

(assert (= (and d!1520181 res!2016612) b!4754182))

(assert (= (and b!4754182 res!2016613) b!4754183))

(declare-fun m!5722193 () Bool)

(assert (=> d!1520181 m!5722193))

(declare-fun m!5722197 () Bool)

(assert (=> d!1520181 m!5722197))

(declare-fun m!5722201 () Bool)

(assert (=> d!1520181 m!5722201))

(declare-fun m!5722205 () Bool)

(assert (=> d!1520181 m!5722205))

(declare-fun m!5722209 () Bool)

(assert (=> b!4754182 m!5722209))

(declare-fun m!5722211 () Bool)

(assert (=> b!4754183 m!5722211))

(assert (=> b!4754146 d!1520181))

(declare-fun d!1520185 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9549 (List!53246) (InoxSet tuple2!54924))

(assert (=> d!1520185 (= (eq!1247 (+!2416 lt!1920151 lt!1920153) (+!2416 (+!2416 lhm!63 lt!1920153) (h!59519 l!13029))) (= (content!9549 (toList!6150 (+!2416 lt!1920151 lt!1920153))) (content!9549 (toList!6150 (+!2416 (+!2416 lhm!63 lt!1920153) (h!59519 l!13029))))))))

(declare-fun bs!1145913 () Bool)

(assert (= bs!1145913 d!1520185))

(declare-fun m!5722237 () Bool)

(assert (=> bs!1145913 m!5722237))

(declare-fun m!5722239 () Bool)

(assert (=> bs!1145913 m!5722239))

(assert (=> b!4754146 d!1520185))

(declare-fun d!1520191 () Bool)

(declare-fun e!2965787 () Bool)

(assert (=> d!1520191 e!2965787))

(declare-fun res!2016618 () Bool)

(assert (=> d!1520191 (=> (not res!2016618) (not e!2965787))))

(declare-fun lt!1920201 () ListMap!5609)

(assert (=> d!1520191 (= res!2016618 (contains!16547 lt!1920201 (_1!30756 lt!1920153)))))

(declare-fun lt!1920200 () List!53246)

(assert (=> d!1520191 (= lt!1920201 (ListMap!5610 lt!1920200))))

(declare-fun lt!1920199 () Unit!137044)

(declare-fun lt!1920198 () Unit!137044)

(assert (=> d!1520191 (= lt!1920199 lt!1920198)))

(assert (=> d!1520191 (= (getValueByKey!2099 lt!1920200 (_1!30756 lt!1920153)) (Some!12548 (_2!30756 lt!1920153)))))

(assert (=> d!1520191 (= lt!1920198 (lemmaContainsTupThenGetReturnValue!1176 lt!1920200 (_1!30756 lt!1920153) (_2!30756 lt!1920153)))))

(assert (=> d!1520191 (= lt!1920200 (insertNoDuplicatedKeys!684 (toList!6150 lhm!63) (_1!30756 lt!1920153) (_2!30756 lt!1920153)))))

(assert (=> d!1520191 (= (+!2416 lhm!63 lt!1920153) lt!1920201)))

(declare-fun b!4754188 () Bool)

(declare-fun res!2016619 () Bool)

(assert (=> b!4754188 (=> (not res!2016619) (not e!2965787))))

(assert (=> b!4754188 (= res!2016619 (= (getValueByKey!2099 (toList!6150 lt!1920201) (_1!30756 lt!1920153)) (Some!12548 (_2!30756 lt!1920153))))))

(declare-fun b!4754189 () Bool)

(assert (=> b!4754189 (= e!2965787 (contains!16549 (toList!6150 lt!1920201) lt!1920153))))

(assert (= (and d!1520191 res!2016618) b!4754188))

(assert (= (and b!4754188 res!2016619) b!4754189))

(declare-fun m!5722241 () Bool)

(assert (=> d!1520191 m!5722241))

(declare-fun m!5722243 () Bool)

(assert (=> d!1520191 m!5722243))

(declare-fun m!5722245 () Bool)

(assert (=> d!1520191 m!5722245))

(declare-fun m!5722247 () Bool)

(assert (=> d!1520191 m!5722247))

(declare-fun m!5722249 () Bool)

(assert (=> b!4754188 m!5722249))

(declare-fun m!5722251 () Bool)

(assert (=> b!4754189 m!5722251))

(assert (=> b!4754146 d!1520191))

(declare-fun d!1520193 () Bool)

(declare-fun e!2965788 () Bool)

(assert (=> d!1520193 e!2965788))

(declare-fun res!2016620 () Bool)

(assert (=> d!1520193 (=> (not res!2016620) (not e!2965788))))

(declare-fun lt!1920205 () ListMap!5609)

(assert (=> d!1520193 (= res!2016620 (contains!16547 lt!1920205 (_1!30756 (h!59519 l!13029))))))

(declare-fun lt!1920204 () List!53246)

(assert (=> d!1520193 (= lt!1920205 (ListMap!5610 lt!1920204))))

(declare-fun lt!1920203 () Unit!137044)

(declare-fun lt!1920202 () Unit!137044)

(assert (=> d!1520193 (= lt!1920203 lt!1920202)))

(assert (=> d!1520193 (= (getValueByKey!2099 lt!1920204 (_1!30756 (h!59519 l!13029))) (Some!12548 (_2!30756 (h!59519 l!13029))))))

(assert (=> d!1520193 (= lt!1920202 (lemmaContainsTupThenGetReturnValue!1176 lt!1920204 (_1!30756 (h!59519 l!13029)) (_2!30756 (h!59519 l!13029))))))

(assert (=> d!1520193 (= lt!1920204 (insertNoDuplicatedKeys!684 (toList!6150 lhm!63) (_1!30756 (h!59519 l!13029)) (_2!30756 (h!59519 l!13029))))))

(assert (=> d!1520193 (= (+!2416 lhm!63 (h!59519 l!13029)) lt!1920205)))

(declare-fun b!4754190 () Bool)

(declare-fun res!2016621 () Bool)

(assert (=> b!4754190 (=> (not res!2016621) (not e!2965788))))

(assert (=> b!4754190 (= res!2016621 (= (getValueByKey!2099 (toList!6150 lt!1920205) (_1!30756 (h!59519 l!13029))) (Some!12548 (_2!30756 (h!59519 l!13029)))))))

(declare-fun b!4754191 () Bool)

(assert (=> b!4754191 (= e!2965788 (contains!16549 (toList!6150 lt!1920205) (h!59519 l!13029)))))

(assert (= (and d!1520193 res!2016620) b!4754190))

(assert (= (and b!4754190 res!2016621) b!4754191))

(declare-fun m!5722253 () Bool)

(assert (=> d!1520193 m!5722253))

(declare-fun m!5722255 () Bool)

(assert (=> d!1520193 m!5722255))

(declare-fun m!5722257 () Bool)

(assert (=> d!1520193 m!5722257))

(declare-fun m!5722259 () Bool)

(assert (=> d!1520193 m!5722259))

(declare-fun m!5722261 () Bool)

(assert (=> b!4754190 m!5722261))

(declare-fun m!5722263 () Bool)

(assert (=> b!4754191 m!5722263))

(assert (=> b!4754146 d!1520193))

(declare-fun d!1520195 () Bool)

(assert (=> d!1520195 (eq!1247 (+!2416 (+!2416 lhm!63 (tuple2!54925 (_1!30756 (h!59519 l!13029)) (_2!30756 (h!59519 l!13029)))) (tuple2!54925 key!4572 value!2966)) (+!2416 (+!2416 lhm!63 (tuple2!54925 key!4572 value!2966)) (tuple2!54925 (_1!30756 (h!59519 l!13029)) (_2!30756 (h!59519 l!13029)))))))

(declare-fun lt!1920211 () Unit!137044)

(declare-fun choose!33866 (ListMap!5609 K!14605 V!14851 K!14605 V!14851) Unit!137044)

(assert (=> d!1520195 (= lt!1920211 (choose!33866 lhm!63 (_1!30756 (h!59519 l!13029)) (_2!30756 (h!59519 l!13029)) key!4572 value!2966))))

(assert (=> d!1520195 (not (= (_1!30756 (h!59519 l!13029)) key!4572))))

(assert (=> d!1520195 (= (addCommutativeForDiffKeys!48 lhm!63 (_1!30756 (h!59519 l!13029)) (_2!30756 (h!59519 l!13029)) key!4572 value!2966) lt!1920211)))

(declare-fun bs!1145915 () Bool)

(assert (= bs!1145915 d!1520195))

(declare-fun m!5722277 () Bool)

(assert (=> bs!1145915 m!5722277))

(declare-fun m!5722279 () Bool)

(assert (=> bs!1145915 m!5722279))

(declare-fun m!5722281 () Bool)

(assert (=> bs!1145915 m!5722281))

(assert (=> bs!1145915 m!5722281))

(declare-fun m!5722283 () Bool)

(assert (=> bs!1145915 m!5722283))

(declare-fun m!5722285 () Bool)

(assert (=> bs!1145915 m!5722285))

(declare-fun m!5722287 () Bool)

(assert (=> bs!1145915 m!5722287))

(assert (=> bs!1145915 m!5722283))

(assert (=> bs!1145915 m!5722287))

(assert (=> bs!1145915 m!5722279))

(assert (=> b!4754146 d!1520195))

(declare-fun d!1520199 () Bool)

(declare-fun res!2016634 () Bool)

(declare-fun e!2965801 () Bool)

(assert (=> d!1520199 (=> res!2016634 e!2965801)))

(assert (=> d!1520199 (= res!2016634 (not ((_ is Cons!53122) (t!360590 l!13029))))))

(assert (=> d!1520199 (= (noDuplicateKeys!2182 (t!360590 l!13029)) e!2965801)))

(declare-fun b!4754204 () Bool)

(declare-fun e!2965802 () Bool)

(assert (=> b!4754204 (= e!2965801 e!2965802)))

(declare-fun res!2016635 () Bool)

(assert (=> b!4754204 (=> (not res!2016635) (not e!2965802))))

(assert (=> b!4754204 (= res!2016635 (not (containsKey!3588 (t!360590 (t!360590 l!13029)) (_1!30756 (h!59519 (t!360590 l!13029))))))))

(declare-fun b!4754205 () Bool)

(assert (=> b!4754205 (= e!2965802 (noDuplicateKeys!2182 (t!360590 (t!360590 l!13029))))))

(assert (= (and d!1520199 (not res!2016634)) b!4754204))

(assert (= (and b!4754204 res!2016635) b!4754205))

(declare-fun m!5722295 () Bool)

(assert (=> b!4754204 m!5722295))

(declare-fun m!5722297 () Bool)

(assert (=> b!4754205 m!5722297))

(assert (=> b!4754141 d!1520199))

(declare-fun d!1520205 () Bool)

(declare-fun res!2016636 () Bool)

(declare-fun e!2965805 () Bool)

(assert (=> d!1520205 (=> res!2016636 e!2965805)))

(assert (=> d!1520205 (= res!2016636 (and ((_ is Cons!53122) l!13029) (= (_1!30756 (h!59519 l!13029)) key!4572)))))

(assert (=> d!1520205 (= (containsKey!3588 l!13029 key!4572) e!2965805)))

(declare-fun b!4754210 () Bool)

(declare-fun e!2965806 () Bool)

(assert (=> b!4754210 (= e!2965805 e!2965806)))

(declare-fun res!2016637 () Bool)

(assert (=> b!4754210 (=> (not res!2016637) (not e!2965806))))

(assert (=> b!4754210 (= res!2016637 ((_ is Cons!53122) l!13029))))

(declare-fun b!4754211 () Bool)

(assert (=> b!4754211 (= e!2965806 (containsKey!3588 (t!360590 l!13029) key!4572))))

(assert (= (and d!1520205 (not res!2016636)) b!4754210))

(assert (= (and b!4754210 res!2016637) b!4754211))

(assert (=> b!4754211 m!5722139))

(assert (=> start!485876 d!1520205))

(declare-fun d!1520207 () Bool)

(declare-fun invariantList!1611 (List!53246) Bool)

(assert (=> d!1520207 (= (inv!68475 lhm!63) (invariantList!1611 (toList!6150 lhm!63)))))

(declare-fun bs!1145916 () Bool)

(assert (= bs!1145916 d!1520207))

(declare-fun m!5722301 () Bool)

(assert (=> bs!1145916 m!5722301))

(assert (=> start!485876 d!1520207))

(declare-fun d!1520215 () Bool)

(declare-fun res!2016640 () Bool)

(declare-fun e!2965811 () Bool)

(assert (=> d!1520215 (=> res!2016640 e!2965811)))

(assert (=> d!1520215 (= res!2016640 (not ((_ is Cons!53122) l!13029)))))

(assert (=> d!1520215 (= (noDuplicateKeys!2182 l!13029) e!2965811)))

(declare-fun b!4754218 () Bool)

(declare-fun e!2965812 () Bool)

(assert (=> b!4754218 (= e!2965811 e!2965812)))

(declare-fun res!2016641 () Bool)

(assert (=> b!4754218 (=> (not res!2016641) (not e!2965812))))

(assert (=> b!4754218 (= res!2016641 (not (containsKey!3588 (t!360590 l!13029) (_1!30756 (h!59519 l!13029)))))))

(declare-fun b!4754219 () Bool)

(assert (=> b!4754219 (= e!2965812 (noDuplicateKeys!2182 (t!360590 l!13029)))))

(assert (= (and d!1520215 (not res!2016640)) b!4754218))

(assert (= (and b!4754218 res!2016641) b!4754219))

(declare-fun m!5722303 () Bool)

(assert (=> b!4754218 m!5722303))

(assert (=> b!4754219 m!5722143))

(assert (=> b!4754145 d!1520215))

(declare-fun tp!1350468 () Bool)

(declare-fun e!2965815 () Bool)

(declare-fun b!4754224 () Bool)

(assert (=> b!4754224 (= e!2965815 (and tp_is_empty!32021 tp_is_empty!32023 tp!1350468))))

(assert (=> b!4754142 (= tp!1350464 e!2965815)))

(assert (= (and b!4754142 ((_ is Cons!53122) (toList!6150 lhm!63))) b!4754224))

(declare-fun b!4754225 () Bool)

(declare-fun tp!1350469 () Bool)

(declare-fun e!2965816 () Bool)

(assert (=> b!4754225 (= e!2965816 (and tp_is_empty!32021 tp_is_empty!32023 tp!1350469))))

(assert (=> b!4754144 (= tp!1350465 e!2965816)))

(assert (= (and b!4754144 ((_ is Cons!53122) (t!360590 l!13029))) b!4754225))

(check-sat (not b!4754205) (not b!4754225) (not d!1520185) tp_is_empty!32023 (not d!1520193) (not b!4754204) (not b!4754191) (not d!1520173) tp_is_empty!32021 (not b!4754153) (not b!4754179) (not b!4754188) (not b!4754219) (not b!4754190) (not d!1520181) (not b!4754211) (not d!1520207) (not b!4754166) (not b!4754218) (not d!1520191) (not b!4754182) (not b!4754155) (not d!1520195) (not b!4754189) (not b!4754183) (not b!4754224) (not b!4754167))
(check-sat)
