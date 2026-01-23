; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!534410 () Bool)

(assert start!534410)

(declare-fun b!5053010 () Bool)

(declare-datatypes ((T!104908 0))(
  ( (T!104909 (val!23618 Int)) )
))
(declare-datatypes ((List!58528 0))(
  ( (Nil!58404) (Cons!58404 (h!64852 T!104908) (t!371167 List!58528)) )
))
(declare-datatypes ((tuple2!63290 0))(
  ( (tuple2!63291 (_1!34948 List!58528) (_2!34948 List!58528)) )
))
(declare-fun lt!2087171 () tuple2!63290)

(declare-fun call!352023 () tuple2!63290)

(assert (=> b!5053010 (= lt!2087171 call!352023)))

(declare-fun e!3154601 () tuple2!63290)

(declare-fun call!352024 () List!58528)

(assert (=> b!5053010 (= e!3154601 (tuple2!63291 call!352024 (_2!34948 lt!2087171)))))

(declare-fun b!5053011 () Bool)

(declare-fun e!3154602 () Bool)

(declare-fun lt!2087175 () tuple2!63290)

(declare-fun e!3154604 () tuple2!63290)

(assert (=> b!5053011 (= e!3154602 (= lt!2087175 e!3154604))))

(declare-fun c!867062 () Bool)

(declare-fun i!652 () Int)

(declare-fun lt!2087173 () Int)

(assert (=> b!5053011 (= c!867062 (< i!652 lt!2087173))))

(declare-fun b!5053012 () Bool)

(declare-fun e!3154596 () Bool)

(declare-fun lt!2087168 () tuple2!63290)

(assert (=> b!5053012 (= e!3154596 (= lt!2087168 e!3154601))))

(declare-fun c!867063 () Bool)

(declare-fun lt!2087174 () Int)

(assert (=> b!5053012 (= c!867063 (< (- i!652 1) lt!2087174))))

(declare-fun b!5053013 () Bool)

(declare-fun res!2151555 () Bool)

(declare-fun e!3154600 () Bool)

(assert (=> b!5053013 (=> (not res!2151555) (not e!3154600))))

(assert (=> b!5053013 (= res!2151555 (> i!652 0))))

(declare-fun b!5053014 () Bool)

(declare-fun e!3154603 () Bool)

(declare-fun e!3154598 () Bool)

(assert (=> b!5053014 (= e!3154603 e!3154598)))

(declare-fun res!2151556 () Bool)

(assert (=> b!5053014 (=> (not res!2151556) (not e!3154598))))

(declare-fun lt!2087172 () Int)

(assert (=> b!5053014 (= res!2151556 (<= (- i!652 1) (+ lt!2087174 lt!2087172)))))

(declare-fun lt!2087179 () List!58528)

(declare-fun size!39027 (List!58528) Int)

(assert (=> b!5053014 (= lt!2087174 (size!39027 lt!2087179))))

(declare-fun b!5053015 () Bool)

(assert (=> b!5053015 (= e!3154600 e!3154603)))

(declare-fun res!2151557 () Bool)

(assert (=> b!5053015 (=> (not res!2151557) (not e!3154603))))

(declare-fun lt!2087176 () List!58528)

(declare-fun lt!2087167 () List!58528)

(declare-fun tail!9950 (List!58528) List!58528)

(assert (=> b!5053015 (= res!2151557 (= (tail!9950 lt!2087176) lt!2087167))))

(declare-fun r!2041 () List!58528)

(declare-fun ++!12767 (List!58528 List!58528) List!58528)

(assert (=> b!5053015 (= lt!2087167 (++!12767 lt!2087179 r!2041))))

(declare-fun l!2757 () List!58528)

(assert (=> b!5053015 (= lt!2087179 (tail!9950 l!2757))))

(assert (=> b!5053015 (= lt!2087176 (++!12767 l!2757 r!2041))))

(declare-fun b!5053016 () Bool)

(declare-fun lt!2087178 () tuple2!63290)

(declare-fun call!352025 () tuple2!63290)

(assert (=> b!5053016 (= lt!2087178 call!352025)))

(declare-fun call!352022 () List!58528)

(assert (=> b!5053016 (= e!3154604 (tuple2!63291 (_1!34948 lt!2087178) call!352022))))

(declare-fun res!2151554 () Bool)

(declare-fun e!3154597 () Bool)

(assert (=> start!534410 (=> (not res!2151554) (not e!3154597))))

(assert (=> start!534410 (= res!2151554 (<= 0 i!652))))

(assert (=> start!534410 e!3154597))

(assert (=> start!534410 true))

(declare-fun e!3154599 () Bool)

(assert (=> start!534410 e!3154599))

(declare-fun e!3154595 () Bool)

(assert (=> start!534410 e!3154595))

(declare-fun bm!352017 () Bool)

(declare-fun splitAtIndex!231 (List!58528 Int) tuple2!63290)

(assert (=> bm!352017 (= call!352023 (splitAtIndex!231 (ite c!867063 lt!2087179 r!2041) (ite c!867063 (- i!652 1) (- (- i!652 1) lt!2087174))))))

(declare-fun b!5053017 () Bool)

(declare-fun res!2151553 () Bool)

(assert (=> b!5053017 (=> (not res!2151553) (not e!3154603))))

(assert (=> b!5053017 (= res!2151553 (<= 0 (- i!652 1)))))

(declare-fun bm!352018 () Bool)

(declare-fun lt!2087170 () tuple2!63290)

(assert (=> bm!352018 (= call!352024 (++!12767 (ite c!867063 (_2!34948 lt!2087170) lt!2087179) (ite c!867063 r!2041 (_1!34948 lt!2087171))))))

(declare-fun bm!352019 () Bool)

(declare-fun lt!2087177 () tuple2!63290)

(assert (=> bm!352019 (= call!352022 (++!12767 (ite c!867062 (_2!34948 lt!2087178) l!2757) (ite c!867062 r!2041 (_1!34948 lt!2087177))))))

(declare-fun b!5053018 () Bool)

(assert (=> b!5053018 (= e!3154596 (= lt!2087168 (tuple2!63291 lt!2087179 r!2041)))))

(declare-fun b!5053019 () Bool)

(assert (=> b!5053019 (= lt!2087170 call!352023)))

(assert (=> b!5053019 (= e!3154601 (tuple2!63291 (_1!34948 lt!2087170) call!352024))))

(declare-fun b!5053020 () Bool)

(declare-fun res!2151559 () Bool)

(assert (=> b!5053020 (=> (not res!2151559) (not e!3154600))))

(declare-fun isEmpty!31583 (List!58528) Bool)

(assert (=> b!5053020 (= res!2151559 (not (isEmpty!31583 r!2041)))))

(declare-fun b!5053021 () Bool)

(assert (=> b!5053021 (= e!3154597 e!3154600)))

(declare-fun res!2151552 () Bool)

(assert (=> b!5053021 (=> (not res!2151552) (not e!3154600))))

(assert (=> b!5053021 (= res!2151552 (and (<= i!652 (+ lt!2087173 lt!2087172)) (not (= l!2757 Nil!58404)) (not (= r!2041 Nil!58404))))))

(assert (=> b!5053021 (= lt!2087172 (size!39027 r!2041))))

(assert (=> b!5053021 (= lt!2087173 (size!39027 l!2757))))

(declare-fun b!5053022 () Bool)

(declare-fun tp_is_empty!36991 () Bool)

(declare-fun tp!1412404 () Bool)

(assert (=> b!5053022 (= e!3154599 (and tp_is_empty!36991 tp!1412404))))

(declare-fun b!5053023 () Bool)

(declare-fun res!2151558 () Bool)

(assert (=> b!5053023 (=> (not res!2151558) (not e!3154600))))

(assert (=> b!5053023 (= res!2151558 (not (isEmpty!31583 l!2757)))))

(declare-fun b!5053024 () Bool)

(declare-fun tp!1412405 () Bool)

(assert (=> b!5053024 (= e!3154595 (and tp_is_empty!36991 tp!1412405))))

(declare-fun b!5053025 () Bool)

(assert (=> b!5053025 (= lt!2087177 call!352025)))

(assert (=> b!5053025 (= e!3154604 (tuple2!63291 call!352022 (_2!34948 lt!2087177)))))

(declare-fun b!5053026 () Bool)

(assert (=> b!5053026 (= e!3154602 (= lt!2087175 (tuple2!63291 l!2757 r!2041)))))

(declare-fun b!5053027 () Bool)

(assert (=> b!5053027 (= e!3154598 (not e!3154602))))

(declare-fun c!867060 () Bool)

(assert (=> b!5053027 (= c!867060 (= lt!2087173 i!652))))

(assert (=> b!5053027 (= lt!2087175 (splitAtIndex!231 lt!2087176 i!652))))

(assert (=> b!5053027 e!3154596))

(declare-fun c!867061 () Bool)

(assert (=> b!5053027 (= c!867061 (= lt!2087174 (- i!652 1)))))

(assert (=> b!5053027 (= lt!2087168 (splitAtIndex!231 lt!2087167 (- i!652 1)))))

(declare-datatypes ((Unit!149571 0))(
  ( (Unit!149572) )
))
(declare-fun lt!2087169 () Unit!149571)

(declare-fun splitAtLemma!82 (List!58528 List!58528 Int) Unit!149571)

(assert (=> b!5053027 (= lt!2087169 (splitAtLemma!82 lt!2087179 r!2041 (- i!652 1)))))

(declare-fun bm!352020 () Bool)

(assert (=> bm!352020 (= call!352025 (splitAtIndex!231 (ite c!867062 l!2757 r!2041) (ite c!867062 i!652 (- i!652 lt!2087173))))))

(assert (= (and start!534410 res!2151554) b!5053021))

(assert (= (and b!5053021 res!2151552) b!5053023))

(assert (= (and b!5053023 res!2151558) b!5053020))

(assert (= (and b!5053020 res!2151559) b!5053013))

(assert (= (and b!5053013 res!2151555) b!5053015))

(assert (= (and b!5053015 res!2151557) b!5053017))

(assert (= (and b!5053017 res!2151553) b!5053014))

(assert (= (and b!5053014 res!2151556) b!5053027))

(assert (= (and b!5053027 c!867061) b!5053018))

(assert (= (and b!5053027 (not c!867061)) b!5053012))

(assert (= (and b!5053012 c!867063) b!5053019))

(assert (= (and b!5053012 (not c!867063)) b!5053010))

(assert (= (or b!5053019 b!5053010) bm!352017))

(assert (= (or b!5053019 b!5053010) bm!352018))

(assert (= (and b!5053027 c!867060) b!5053026))

(assert (= (and b!5053027 (not c!867060)) b!5053011))

(assert (= (and b!5053011 c!867062) b!5053016))

(assert (= (and b!5053011 (not c!867062)) b!5053025))

(assert (= (or b!5053016 b!5053025) bm!352020))

(assert (= (or b!5053016 b!5053025) bm!352019))

(get-info :version)

(assert (= (and start!534410 ((_ is Cons!58404) l!2757)) b!5053022))

(assert (= (and start!534410 ((_ is Cons!58404) r!2041)) b!5053024))

(declare-fun m!6087066 () Bool)

(assert (=> b!5053014 m!6087066))

(declare-fun m!6087068 () Bool)

(assert (=> b!5053021 m!6087068))

(declare-fun m!6087070 () Bool)

(assert (=> b!5053021 m!6087070))

(declare-fun m!6087072 () Bool)

(assert (=> bm!352018 m!6087072))

(declare-fun m!6087074 () Bool)

(assert (=> b!5053020 m!6087074))

(declare-fun m!6087076 () Bool)

(assert (=> b!5053023 m!6087076))

(declare-fun m!6087078 () Bool)

(assert (=> bm!352017 m!6087078))

(declare-fun m!6087080 () Bool)

(assert (=> b!5053027 m!6087080))

(declare-fun m!6087082 () Bool)

(assert (=> b!5053027 m!6087082))

(declare-fun m!6087084 () Bool)

(assert (=> b!5053027 m!6087084))

(declare-fun m!6087086 () Bool)

(assert (=> b!5053015 m!6087086))

(declare-fun m!6087088 () Bool)

(assert (=> b!5053015 m!6087088))

(declare-fun m!6087090 () Bool)

(assert (=> b!5053015 m!6087090))

(declare-fun m!6087092 () Bool)

(assert (=> b!5053015 m!6087092))

(declare-fun m!6087094 () Bool)

(assert (=> bm!352020 m!6087094))

(declare-fun m!6087096 () Bool)

(assert (=> bm!352019 m!6087096))

(check-sat (not bm!352019) (not b!5053015) (not b!5053020) (not b!5053024) (not bm!352018) (not b!5053027) (not b!5053022) (not b!5053023) (not b!5053014) (not b!5053021) (not bm!352020) (not bm!352017) tp_is_empty!36991)
(check-sat)
(get-model)

(declare-fun d!1626000 () Bool)

(assert (=> d!1626000 (= (isEmpty!31583 r!2041) ((_ is Nil!58404) r!2041))))

(assert (=> b!5053020 d!1626000))

(declare-fun b!5053040 () Bool)

(declare-fun lt!2087184 () tuple2!63290)

(assert (=> b!5053040 (= lt!2087184 (splitAtIndex!231 (t!371167 (ite c!867063 lt!2087179 r!2041)) (- (ite c!867063 (- i!652 1) (- (- i!652 1) lt!2087174)) 1)))))

(declare-fun e!3154611 () tuple2!63290)

(assert (=> b!5053040 (= e!3154611 (tuple2!63291 (Cons!58404 (h!64852 (ite c!867063 lt!2087179 r!2041)) (_1!34948 lt!2087184)) (_2!34948 lt!2087184)))))

(declare-fun b!5053041 () Bool)

(assert (=> b!5053041 (= e!3154611 (tuple2!63291 Nil!58404 (ite c!867063 lt!2087179 r!2041)))))

(declare-fun d!1626002 () Bool)

(declare-fun e!3154612 () Bool)

(assert (=> d!1626002 e!3154612))

(declare-fun res!2151564 () Bool)

(assert (=> d!1626002 (=> (not res!2151564) (not e!3154612))))

(declare-fun lt!2087185 () tuple2!63290)

(assert (=> d!1626002 (= res!2151564 (= (++!12767 (_1!34948 lt!2087185) (_2!34948 lt!2087185)) (ite c!867063 lt!2087179 r!2041)))))

(declare-fun e!3154613 () tuple2!63290)

(assert (=> d!1626002 (= lt!2087185 e!3154613)))

(declare-fun c!867069 () Bool)

(assert (=> d!1626002 (= c!867069 ((_ is Nil!58404) (ite c!867063 lt!2087179 r!2041)))))

(assert (=> d!1626002 (= (splitAtIndex!231 (ite c!867063 lt!2087179 r!2041) (ite c!867063 (- i!652 1) (- (- i!652 1) lt!2087174))) lt!2087185)))

(declare-fun b!5053042 () Bool)

(assert (=> b!5053042 (= e!3154613 e!3154611)))

(declare-fun c!867068 () Bool)

(assert (=> b!5053042 (= c!867068 (<= (ite c!867063 (- i!652 1) (- (- i!652 1) lt!2087174)) 0))))

(declare-fun b!5053043 () Bool)

(declare-fun drop!2690 (List!58528 Int) List!58528)

(assert (=> b!5053043 (= e!3154612 (= (_2!34948 lt!2087185) (drop!2690 (ite c!867063 lt!2087179 r!2041) (ite c!867063 (- i!652 1) (- (- i!652 1) lt!2087174)))))))

(declare-fun b!5053044 () Bool)

(assert (=> b!5053044 (= e!3154613 (tuple2!63291 Nil!58404 Nil!58404))))

(declare-fun b!5053045 () Bool)

(declare-fun res!2151565 () Bool)

(assert (=> b!5053045 (=> (not res!2151565) (not e!3154612))))

(declare-fun take!891 (List!58528 Int) List!58528)

(assert (=> b!5053045 (= res!2151565 (= (_1!34948 lt!2087185) (take!891 (ite c!867063 lt!2087179 r!2041) (ite c!867063 (- i!652 1) (- (- i!652 1) lt!2087174)))))))

(assert (= (and d!1626002 c!867069) b!5053044))

(assert (= (and d!1626002 (not c!867069)) b!5053042))

(assert (= (and b!5053042 c!867068) b!5053041))

(assert (= (and b!5053042 (not c!867068)) b!5053040))

(assert (= (and d!1626002 res!2151564) b!5053045))

(assert (= (and b!5053045 res!2151565) b!5053043))

(declare-fun m!6087098 () Bool)

(assert (=> b!5053040 m!6087098))

(declare-fun m!6087100 () Bool)

(assert (=> d!1626002 m!6087100))

(declare-fun m!6087102 () Bool)

(assert (=> b!5053043 m!6087102))

(declare-fun m!6087104 () Bool)

(assert (=> b!5053045 m!6087104))

(assert (=> bm!352017 d!1626002))

(declare-fun d!1626004 () Bool)

(assert (=> d!1626004 (= (tail!9950 lt!2087176) (t!371167 lt!2087176))))

(assert (=> b!5053015 d!1626004))

(declare-fun b!5053058 () Bool)

(declare-fun e!3154621 () List!58528)

(assert (=> b!5053058 (= e!3154621 r!2041)))

(declare-fun lt!2087190 () List!58528)

(declare-fun b!5053063 () Bool)

(declare-fun e!3154620 () Bool)

(assert (=> b!5053063 (= e!3154620 (or (not (= r!2041 Nil!58404)) (= lt!2087190 lt!2087179)))))

(declare-fun b!5053061 () Bool)

(declare-fun res!2151571 () Bool)

(assert (=> b!5053061 (=> (not res!2151571) (not e!3154620))))

(assert (=> b!5053061 (= res!2151571 (= (size!39027 lt!2087190) (+ (size!39027 lt!2087179) (size!39027 r!2041))))))

(declare-fun b!5053059 () Bool)

(assert (=> b!5053059 (= e!3154621 (Cons!58404 (h!64852 lt!2087179) (++!12767 (t!371167 lt!2087179) r!2041)))))

(declare-fun d!1626006 () Bool)

(assert (=> d!1626006 e!3154620))

(declare-fun res!2151570 () Bool)

(assert (=> d!1626006 (=> (not res!2151570) (not e!3154620))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!10405 (List!58528) (InoxSet T!104908))

(assert (=> d!1626006 (= res!2151570 (= (content!10405 lt!2087190) ((_ map or) (content!10405 lt!2087179) (content!10405 r!2041))))))

(assert (=> d!1626006 (= lt!2087190 e!3154621)))

(declare-fun c!867074 () Bool)

(assert (=> d!1626006 (= c!867074 ((_ is Nil!58404) lt!2087179))))

(assert (=> d!1626006 (= (++!12767 lt!2087179 r!2041) lt!2087190)))

(assert (= (and d!1626006 c!867074) b!5053058))

(assert (= (and d!1626006 (not c!867074)) b!5053059))

(assert (= (and d!1626006 res!2151570) b!5053061))

(assert (= (and b!5053061 res!2151571) b!5053063))

(declare-fun m!6087106 () Bool)

(assert (=> b!5053061 m!6087106))

(assert (=> b!5053061 m!6087066))

(assert (=> b!5053061 m!6087068))

(declare-fun m!6087108 () Bool)

(assert (=> b!5053059 m!6087108))

(declare-fun m!6087110 () Bool)

(assert (=> d!1626006 m!6087110))

(declare-fun m!6087112 () Bool)

(assert (=> d!1626006 m!6087112))

(declare-fun m!6087114 () Bool)

(assert (=> d!1626006 m!6087114))

(assert (=> b!5053015 d!1626006))

(declare-fun d!1626010 () Bool)

(assert (=> d!1626010 (= (tail!9950 l!2757) (t!371167 l!2757))))

(assert (=> b!5053015 d!1626010))

(declare-fun b!5053070 () Bool)

(declare-fun e!3154627 () List!58528)

(assert (=> b!5053070 (= e!3154627 r!2041)))

(declare-fun b!5053073 () Bool)

(declare-fun lt!2087193 () List!58528)

(declare-fun e!3154626 () Bool)

(assert (=> b!5053073 (= e!3154626 (or (not (= r!2041 Nil!58404)) (= lt!2087193 l!2757)))))

(declare-fun b!5053072 () Bool)

(declare-fun res!2151577 () Bool)

(assert (=> b!5053072 (=> (not res!2151577) (not e!3154626))))

(assert (=> b!5053072 (= res!2151577 (= (size!39027 lt!2087193) (+ (size!39027 l!2757) (size!39027 r!2041))))))

(declare-fun b!5053071 () Bool)

(assert (=> b!5053071 (= e!3154627 (Cons!58404 (h!64852 l!2757) (++!12767 (t!371167 l!2757) r!2041)))))

(declare-fun d!1626012 () Bool)

(assert (=> d!1626012 e!3154626))

(declare-fun res!2151576 () Bool)

(assert (=> d!1626012 (=> (not res!2151576) (not e!3154626))))

(assert (=> d!1626012 (= res!2151576 (= (content!10405 lt!2087193) ((_ map or) (content!10405 l!2757) (content!10405 r!2041))))))

(assert (=> d!1626012 (= lt!2087193 e!3154627)))

(declare-fun c!867077 () Bool)

(assert (=> d!1626012 (= c!867077 ((_ is Nil!58404) l!2757))))

(assert (=> d!1626012 (= (++!12767 l!2757 r!2041) lt!2087193)))

(assert (= (and d!1626012 c!867077) b!5053070))

(assert (= (and d!1626012 (not c!867077)) b!5053071))

(assert (= (and d!1626012 res!2151576) b!5053072))

(assert (= (and b!5053072 res!2151577) b!5053073))

(declare-fun m!6087116 () Bool)

(assert (=> b!5053072 m!6087116))

(assert (=> b!5053072 m!6087070))

(assert (=> b!5053072 m!6087068))

(declare-fun m!6087118 () Bool)

(assert (=> b!5053071 m!6087118))

(declare-fun m!6087120 () Bool)

(assert (=> d!1626012 m!6087120))

(declare-fun m!6087122 () Bool)

(assert (=> d!1626012 m!6087122))

(assert (=> d!1626012 m!6087114))

(assert (=> b!5053015 d!1626012))

(declare-fun b!5053074 () Bool)

(declare-fun lt!2087194 () tuple2!63290)

(assert (=> b!5053074 (= lt!2087194 (splitAtIndex!231 (t!371167 (ite c!867062 l!2757 r!2041)) (- (ite c!867062 i!652 (- i!652 lt!2087173)) 1)))))

(declare-fun e!3154628 () tuple2!63290)

(assert (=> b!5053074 (= e!3154628 (tuple2!63291 (Cons!58404 (h!64852 (ite c!867062 l!2757 r!2041)) (_1!34948 lt!2087194)) (_2!34948 lt!2087194)))))

(declare-fun b!5053075 () Bool)

(assert (=> b!5053075 (= e!3154628 (tuple2!63291 Nil!58404 (ite c!867062 l!2757 r!2041)))))

(declare-fun d!1626014 () Bool)

(declare-fun e!3154629 () Bool)

(assert (=> d!1626014 e!3154629))

(declare-fun res!2151578 () Bool)

(assert (=> d!1626014 (=> (not res!2151578) (not e!3154629))))

(declare-fun lt!2087195 () tuple2!63290)

(assert (=> d!1626014 (= res!2151578 (= (++!12767 (_1!34948 lt!2087195) (_2!34948 lt!2087195)) (ite c!867062 l!2757 r!2041)))))

(declare-fun e!3154630 () tuple2!63290)

(assert (=> d!1626014 (= lt!2087195 e!3154630)))

(declare-fun c!867079 () Bool)

(assert (=> d!1626014 (= c!867079 ((_ is Nil!58404) (ite c!867062 l!2757 r!2041)))))

(assert (=> d!1626014 (= (splitAtIndex!231 (ite c!867062 l!2757 r!2041) (ite c!867062 i!652 (- i!652 lt!2087173))) lt!2087195)))

(declare-fun b!5053076 () Bool)

(assert (=> b!5053076 (= e!3154630 e!3154628)))

(declare-fun c!867078 () Bool)

(assert (=> b!5053076 (= c!867078 (<= (ite c!867062 i!652 (- i!652 lt!2087173)) 0))))

(declare-fun b!5053077 () Bool)

(assert (=> b!5053077 (= e!3154629 (= (_2!34948 lt!2087195) (drop!2690 (ite c!867062 l!2757 r!2041) (ite c!867062 i!652 (- i!652 lt!2087173)))))))

(declare-fun b!5053078 () Bool)

(assert (=> b!5053078 (= e!3154630 (tuple2!63291 Nil!58404 Nil!58404))))

(declare-fun b!5053079 () Bool)

(declare-fun res!2151579 () Bool)

(assert (=> b!5053079 (=> (not res!2151579) (not e!3154629))))

(assert (=> b!5053079 (= res!2151579 (= (_1!34948 lt!2087195) (take!891 (ite c!867062 l!2757 r!2041) (ite c!867062 i!652 (- i!652 lt!2087173)))))))

(assert (= (and d!1626014 c!867079) b!5053078))

(assert (= (and d!1626014 (not c!867079)) b!5053076))

(assert (= (and b!5053076 c!867078) b!5053075))

(assert (= (and b!5053076 (not c!867078)) b!5053074))

(assert (= (and d!1626014 res!2151578) b!5053079))

(assert (= (and b!5053079 res!2151579) b!5053077))

(declare-fun m!6087124 () Bool)

(assert (=> b!5053074 m!6087124))

(declare-fun m!6087126 () Bool)

(assert (=> d!1626014 m!6087126))

(declare-fun m!6087128 () Bool)

(assert (=> b!5053077 m!6087128))

(declare-fun m!6087130 () Bool)

(assert (=> b!5053079 m!6087130))

(assert (=> bm!352020 d!1626014))

(declare-fun d!1626016 () Bool)

(assert (=> d!1626016 (= (isEmpty!31583 l!2757) ((_ is Nil!58404) l!2757))))

(assert (=> b!5053023 d!1626016))

(declare-fun e!3154632 () List!58528)

(declare-fun b!5053080 () Bool)

(assert (=> b!5053080 (= e!3154632 (ite c!867062 r!2041 (_1!34948 lt!2087177)))))

(declare-fun lt!2087196 () List!58528)

(declare-fun e!3154631 () Bool)

(declare-fun b!5053083 () Bool)

(assert (=> b!5053083 (= e!3154631 (or (not (= (ite c!867062 r!2041 (_1!34948 lt!2087177)) Nil!58404)) (= lt!2087196 (ite c!867062 (_2!34948 lt!2087178) l!2757))))))

(declare-fun b!5053082 () Bool)

(declare-fun res!2151581 () Bool)

(assert (=> b!5053082 (=> (not res!2151581) (not e!3154631))))

(assert (=> b!5053082 (= res!2151581 (= (size!39027 lt!2087196) (+ (size!39027 (ite c!867062 (_2!34948 lt!2087178) l!2757)) (size!39027 (ite c!867062 r!2041 (_1!34948 lt!2087177))))))))

(declare-fun b!5053081 () Bool)

(assert (=> b!5053081 (= e!3154632 (Cons!58404 (h!64852 (ite c!867062 (_2!34948 lt!2087178) l!2757)) (++!12767 (t!371167 (ite c!867062 (_2!34948 lt!2087178) l!2757)) (ite c!867062 r!2041 (_1!34948 lt!2087177)))))))

(declare-fun d!1626018 () Bool)

(assert (=> d!1626018 e!3154631))

(declare-fun res!2151580 () Bool)

(assert (=> d!1626018 (=> (not res!2151580) (not e!3154631))))

(assert (=> d!1626018 (= res!2151580 (= (content!10405 lt!2087196) ((_ map or) (content!10405 (ite c!867062 (_2!34948 lt!2087178) l!2757)) (content!10405 (ite c!867062 r!2041 (_1!34948 lt!2087177))))))))

(assert (=> d!1626018 (= lt!2087196 e!3154632)))

(declare-fun c!867080 () Bool)

(assert (=> d!1626018 (= c!867080 ((_ is Nil!58404) (ite c!867062 (_2!34948 lt!2087178) l!2757)))))

(assert (=> d!1626018 (= (++!12767 (ite c!867062 (_2!34948 lt!2087178) l!2757) (ite c!867062 r!2041 (_1!34948 lt!2087177))) lt!2087196)))

(assert (= (and d!1626018 c!867080) b!5053080))

(assert (= (and d!1626018 (not c!867080)) b!5053081))

(assert (= (and d!1626018 res!2151580) b!5053082))

(assert (= (and b!5053082 res!2151581) b!5053083))

(declare-fun m!6087132 () Bool)

(assert (=> b!5053082 m!6087132))

(declare-fun m!6087134 () Bool)

(assert (=> b!5053082 m!6087134))

(declare-fun m!6087136 () Bool)

(assert (=> b!5053082 m!6087136))

(declare-fun m!6087138 () Bool)

(assert (=> b!5053081 m!6087138))

(declare-fun m!6087140 () Bool)

(assert (=> d!1626018 m!6087140))

(declare-fun m!6087142 () Bool)

(assert (=> d!1626018 m!6087142))

(declare-fun m!6087144 () Bool)

(assert (=> d!1626018 m!6087144))

(assert (=> bm!352019 d!1626018))

(declare-fun b!5053084 () Bool)

(declare-fun e!3154634 () List!58528)

(assert (=> b!5053084 (= e!3154634 (ite c!867063 r!2041 (_1!34948 lt!2087171)))))

(declare-fun lt!2087197 () List!58528)

(declare-fun b!5053087 () Bool)

(declare-fun e!3154633 () Bool)

(assert (=> b!5053087 (= e!3154633 (or (not (= (ite c!867063 r!2041 (_1!34948 lt!2087171)) Nil!58404)) (= lt!2087197 (ite c!867063 (_2!34948 lt!2087170) lt!2087179))))))

(declare-fun b!5053086 () Bool)

(declare-fun res!2151583 () Bool)

(assert (=> b!5053086 (=> (not res!2151583) (not e!3154633))))

(assert (=> b!5053086 (= res!2151583 (= (size!39027 lt!2087197) (+ (size!39027 (ite c!867063 (_2!34948 lt!2087170) lt!2087179)) (size!39027 (ite c!867063 r!2041 (_1!34948 lt!2087171))))))))

(declare-fun b!5053085 () Bool)

(assert (=> b!5053085 (= e!3154634 (Cons!58404 (h!64852 (ite c!867063 (_2!34948 lt!2087170) lt!2087179)) (++!12767 (t!371167 (ite c!867063 (_2!34948 lt!2087170) lt!2087179)) (ite c!867063 r!2041 (_1!34948 lt!2087171)))))))

(declare-fun d!1626020 () Bool)

(assert (=> d!1626020 e!3154633))

(declare-fun res!2151582 () Bool)

(assert (=> d!1626020 (=> (not res!2151582) (not e!3154633))))

(assert (=> d!1626020 (= res!2151582 (= (content!10405 lt!2087197) ((_ map or) (content!10405 (ite c!867063 (_2!34948 lt!2087170) lt!2087179)) (content!10405 (ite c!867063 r!2041 (_1!34948 lt!2087171))))))))

(assert (=> d!1626020 (= lt!2087197 e!3154634)))

(declare-fun c!867081 () Bool)

(assert (=> d!1626020 (= c!867081 ((_ is Nil!58404) (ite c!867063 (_2!34948 lt!2087170) lt!2087179)))))

(assert (=> d!1626020 (= (++!12767 (ite c!867063 (_2!34948 lt!2087170) lt!2087179) (ite c!867063 r!2041 (_1!34948 lt!2087171))) lt!2087197)))

(assert (= (and d!1626020 c!867081) b!5053084))

(assert (= (and d!1626020 (not c!867081)) b!5053085))

(assert (= (and d!1626020 res!2151582) b!5053086))

(assert (= (and b!5053086 res!2151583) b!5053087))

(declare-fun m!6087146 () Bool)

(assert (=> b!5053086 m!6087146))

(declare-fun m!6087148 () Bool)

(assert (=> b!5053086 m!6087148))

(declare-fun m!6087150 () Bool)

(assert (=> b!5053086 m!6087150))

(declare-fun m!6087152 () Bool)

(assert (=> b!5053085 m!6087152))

(declare-fun m!6087154 () Bool)

(assert (=> d!1626020 m!6087154))

(declare-fun m!6087156 () Bool)

(assert (=> d!1626020 m!6087156))

(declare-fun m!6087158 () Bool)

(assert (=> d!1626020 m!6087158))

(assert (=> bm!352018 d!1626020))

(declare-fun d!1626022 () Bool)

(declare-fun lt!2087204 () Int)

(assert (=> d!1626022 (>= lt!2087204 0)))

(declare-fun e!3154643 () Int)

(assert (=> d!1626022 (= lt!2087204 e!3154643)))

(declare-fun c!867088 () Bool)

(assert (=> d!1626022 (= c!867088 ((_ is Nil!58404) lt!2087179))))

(assert (=> d!1626022 (= (size!39027 lt!2087179) lt!2087204)))

(declare-fun b!5053104 () Bool)

(assert (=> b!5053104 (= e!3154643 0)))

(declare-fun b!5053105 () Bool)

(assert (=> b!5053105 (= e!3154643 (+ 1 (size!39027 (t!371167 lt!2087179))))))

(assert (= (and d!1626022 c!867088) b!5053104))

(assert (= (and d!1626022 (not c!867088)) b!5053105))

(declare-fun m!6087176 () Bool)

(assert (=> b!5053105 m!6087176))

(assert (=> b!5053014 d!1626022))

(declare-fun b!5053106 () Bool)

(declare-fun lt!2087205 () tuple2!63290)

(assert (=> b!5053106 (= lt!2087205 (splitAtIndex!231 (t!371167 lt!2087176) (- i!652 1)))))

(declare-fun e!3154644 () tuple2!63290)

(assert (=> b!5053106 (= e!3154644 (tuple2!63291 (Cons!58404 (h!64852 lt!2087176) (_1!34948 lt!2087205)) (_2!34948 lt!2087205)))))

(declare-fun b!5053107 () Bool)

(assert (=> b!5053107 (= e!3154644 (tuple2!63291 Nil!58404 lt!2087176))))

(declare-fun d!1626028 () Bool)

(declare-fun e!3154645 () Bool)

(assert (=> d!1626028 e!3154645))

(declare-fun res!2151588 () Bool)

(assert (=> d!1626028 (=> (not res!2151588) (not e!3154645))))

(declare-fun lt!2087206 () tuple2!63290)

(assert (=> d!1626028 (= res!2151588 (= (++!12767 (_1!34948 lt!2087206) (_2!34948 lt!2087206)) lt!2087176))))

(declare-fun e!3154646 () tuple2!63290)

(assert (=> d!1626028 (= lt!2087206 e!3154646)))

(declare-fun c!867090 () Bool)

(assert (=> d!1626028 (= c!867090 ((_ is Nil!58404) lt!2087176))))

(assert (=> d!1626028 (= (splitAtIndex!231 lt!2087176 i!652) lt!2087206)))

(declare-fun b!5053108 () Bool)

(assert (=> b!5053108 (= e!3154646 e!3154644)))

(declare-fun c!867089 () Bool)

(assert (=> b!5053108 (= c!867089 (<= i!652 0))))

(declare-fun b!5053109 () Bool)

(assert (=> b!5053109 (= e!3154645 (= (_2!34948 lt!2087206) (drop!2690 lt!2087176 i!652)))))

(declare-fun b!5053110 () Bool)

(assert (=> b!5053110 (= e!3154646 (tuple2!63291 Nil!58404 Nil!58404))))

(declare-fun b!5053111 () Bool)

(declare-fun res!2151589 () Bool)

(assert (=> b!5053111 (=> (not res!2151589) (not e!3154645))))

(assert (=> b!5053111 (= res!2151589 (= (_1!34948 lt!2087206) (take!891 lt!2087176 i!652)))))

(assert (= (and d!1626028 c!867090) b!5053110))

(assert (= (and d!1626028 (not c!867090)) b!5053108))

(assert (= (and b!5053108 c!867089) b!5053107))

(assert (= (and b!5053108 (not c!867089)) b!5053106))

(assert (= (and d!1626028 res!2151588) b!5053111))

(assert (= (and b!5053111 res!2151589) b!5053109))

(declare-fun m!6087178 () Bool)

(assert (=> b!5053106 m!6087178))

(declare-fun m!6087180 () Bool)

(assert (=> d!1626028 m!6087180))

(declare-fun m!6087182 () Bool)

(assert (=> b!5053109 m!6087182))

(declare-fun m!6087184 () Bool)

(assert (=> b!5053111 m!6087184))

(assert (=> b!5053027 d!1626028))

(declare-fun b!5053112 () Bool)

(declare-fun lt!2087207 () tuple2!63290)

(assert (=> b!5053112 (= lt!2087207 (splitAtIndex!231 (t!371167 lt!2087167) (- (- i!652 1) 1)))))

(declare-fun e!3154647 () tuple2!63290)

(assert (=> b!5053112 (= e!3154647 (tuple2!63291 (Cons!58404 (h!64852 lt!2087167) (_1!34948 lt!2087207)) (_2!34948 lt!2087207)))))

(declare-fun b!5053113 () Bool)

(assert (=> b!5053113 (= e!3154647 (tuple2!63291 Nil!58404 lt!2087167))))

(declare-fun d!1626030 () Bool)

(declare-fun e!3154648 () Bool)

(assert (=> d!1626030 e!3154648))

(declare-fun res!2151590 () Bool)

(assert (=> d!1626030 (=> (not res!2151590) (not e!3154648))))

(declare-fun lt!2087208 () tuple2!63290)

(assert (=> d!1626030 (= res!2151590 (= (++!12767 (_1!34948 lt!2087208) (_2!34948 lt!2087208)) lt!2087167))))

(declare-fun e!3154649 () tuple2!63290)

(assert (=> d!1626030 (= lt!2087208 e!3154649)))

(declare-fun c!867092 () Bool)

(assert (=> d!1626030 (= c!867092 ((_ is Nil!58404) lt!2087167))))

(assert (=> d!1626030 (= (splitAtIndex!231 lt!2087167 (- i!652 1)) lt!2087208)))

(declare-fun b!5053114 () Bool)

(assert (=> b!5053114 (= e!3154649 e!3154647)))

(declare-fun c!867091 () Bool)

(assert (=> b!5053114 (= c!867091 (<= (- i!652 1) 0))))

(declare-fun b!5053115 () Bool)

(assert (=> b!5053115 (= e!3154648 (= (_2!34948 lt!2087208) (drop!2690 lt!2087167 (- i!652 1))))))

(declare-fun b!5053116 () Bool)

(assert (=> b!5053116 (= e!3154649 (tuple2!63291 Nil!58404 Nil!58404))))

(declare-fun b!5053117 () Bool)

(declare-fun res!2151591 () Bool)

(assert (=> b!5053117 (=> (not res!2151591) (not e!3154648))))

(assert (=> b!5053117 (= res!2151591 (= (_1!34948 lt!2087208) (take!891 lt!2087167 (- i!652 1))))))

(assert (= (and d!1626030 c!867092) b!5053116))

(assert (= (and d!1626030 (not c!867092)) b!5053114))

(assert (= (and b!5053114 c!867091) b!5053113))

(assert (= (and b!5053114 (not c!867091)) b!5053112))

(assert (= (and d!1626030 res!2151590) b!5053117))

(assert (= (and b!5053117 res!2151591) b!5053115))

(declare-fun m!6087186 () Bool)

(assert (=> b!5053112 m!6087186))

(declare-fun m!6087188 () Bool)

(assert (=> d!1626030 m!6087188))

(declare-fun m!6087190 () Bool)

(assert (=> b!5053115 m!6087190))

(declare-fun m!6087192 () Bool)

(assert (=> b!5053117 m!6087192))

(assert (=> b!5053027 d!1626030))

(declare-fun d!1626032 () Bool)

(declare-fun e!3154678 () tuple2!63290)

(assert (=> d!1626032 (= (splitAtIndex!231 (++!12767 lt!2087179 r!2041) (- i!652 1)) e!3154678)))

(declare-fun c!867113 () Bool)

(assert (=> d!1626032 (= c!867113 (= (size!39027 lt!2087179) (- i!652 1)))))

(declare-fun lt!2087228 () Unit!149571)

(declare-fun choose!37287 (List!58528 List!58528 Int) Unit!149571)

(assert (=> d!1626032 (= lt!2087228 (choose!37287 lt!2087179 r!2041 (- i!652 1)))))

(declare-fun e!3154679 () Bool)

(assert (=> d!1626032 e!3154679))

(declare-fun res!2151603 () Bool)

(assert (=> d!1626032 (=> (not res!2151603) (not e!3154679))))

(assert (=> d!1626032 (= res!2151603 (<= 0 (- i!652 1)))))

(assert (=> d!1626032 (= (splitAtLemma!82 lt!2087179 r!2041 (- i!652 1)) lt!2087228)))

(declare-fun b!5053165 () Bool)

(declare-fun lt!2087227 () tuple2!63290)

(declare-fun call!352037 () tuple2!63290)

(assert (=> b!5053165 (= lt!2087227 call!352037)))

(declare-fun e!3154677 () tuple2!63290)

(declare-fun call!352036 () List!58528)

(assert (=> b!5053165 (= e!3154677 (tuple2!63291 call!352036 (_2!34948 lt!2087227)))))

(declare-fun b!5053166 () Bool)

(assert (=> b!5053166 (= e!3154678 (tuple2!63291 lt!2087179 r!2041))))

(declare-fun b!5053167 () Bool)

(declare-fun e!3154676 () Int)

(assert (=> b!5053167 (= e!3154676 (- (- i!652 1) (size!39027 lt!2087179)))))

(declare-fun bm!352031 () Bool)

(declare-fun lt!2087229 () tuple2!63290)

(declare-fun c!867111 () Bool)

(assert (=> bm!352031 (= call!352036 (++!12767 (ite c!867111 (_2!34948 lt!2087229) lt!2087179) (ite c!867111 r!2041 (_1!34948 lt!2087227))))))

(declare-fun bm!352032 () Bool)

(declare-fun c!867112 () Bool)

(assert (=> bm!352032 (= c!867112 c!867111)))

(assert (=> bm!352032 (= call!352037 (splitAtIndex!231 (ite c!867111 lt!2087179 r!2041) e!3154676))))

(declare-fun b!5053168 () Bool)

(assert (=> b!5053168 (= e!3154676 (- i!652 1))))

(declare-fun b!5053169 () Bool)

(assert (=> b!5053169 (= e!3154678 e!3154677)))

(assert (=> b!5053169 (= c!867111 (< (- i!652 1) (size!39027 lt!2087179)))))

(declare-fun b!5053170 () Bool)

(assert (=> b!5053170 (= lt!2087229 call!352037)))

(assert (=> b!5053170 (= e!3154677 (tuple2!63291 (_1!34948 lt!2087229) call!352036))))

(declare-fun b!5053171 () Bool)

(assert (=> b!5053171 (= e!3154679 (<= (- i!652 1) (+ (size!39027 lt!2087179) (size!39027 r!2041))))))

(assert (= (and d!1626032 res!2151603) b!5053171))

(assert (= (and d!1626032 c!867113) b!5053166))

(assert (= (and d!1626032 (not c!867113)) b!5053169))

(assert (= (and b!5053169 c!867111) b!5053170))

(assert (= (and b!5053169 (not c!867111)) b!5053165))

(assert (= (or b!5053170 b!5053165) bm!352031))

(assert (= (or b!5053170 b!5053165) bm!352032))

(assert (= (and bm!352032 c!867112) b!5053168))

(assert (= (and bm!352032 (not c!867112)) b!5053167))

(assert (=> b!5053169 m!6087066))

(declare-fun m!6087224 () Bool)

(assert (=> bm!352031 m!6087224))

(assert (=> d!1626032 m!6087088))

(assert (=> d!1626032 m!6087088))

(declare-fun m!6087226 () Bool)

(assert (=> d!1626032 m!6087226))

(assert (=> d!1626032 m!6087066))

(declare-fun m!6087228 () Bool)

(assert (=> d!1626032 m!6087228))

(assert (=> b!5053167 m!6087066))

(assert (=> b!5053171 m!6087066))

(assert (=> b!5053171 m!6087068))

(declare-fun m!6087230 () Bool)

(assert (=> bm!352032 m!6087230))

(assert (=> b!5053027 d!1626032))

(declare-fun d!1626046 () Bool)

(declare-fun lt!2087233 () Int)

(assert (=> d!1626046 (>= lt!2087233 0)))

(declare-fun e!3154685 () Int)

(assert (=> d!1626046 (= lt!2087233 e!3154685)))

(declare-fun c!867117 () Bool)

(assert (=> d!1626046 (= c!867117 ((_ is Nil!58404) r!2041))))

(assert (=> d!1626046 (= (size!39027 r!2041) lt!2087233)))

(declare-fun b!5053182 () Bool)

(assert (=> b!5053182 (= e!3154685 0)))

(declare-fun b!5053183 () Bool)

(assert (=> b!5053183 (= e!3154685 (+ 1 (size!39027 (t!371167 r!2041))))))

(assert (= (and d!1626046 c!867117) b!5053182))

(assert (= (and d!1626046 (not c!867117)) b!5053183))

(declare-fun m!6087242 () Bool)

(assert (=> b!5053183 m!6087242))

(assert (=> b!5053021 d!1626046))

(declare-fun d!1626052 () Bool)

(declare-fun lt!2087235 () Int)

(assert (=> d!1626052 (>= lt!2087235 0)))

(declare-fun e!3154688 () Int)

(assert (=> d!1626052 (= lt!2087235 e!3154688)))

(declare-fun c!867119 () Bool)

(assert (=> d!1626052 (= c!867119 ((_ is Nil!58404) l!2757))))

(assert (=> d!1626052 (= (size!39027 l!2757) lt!2087235)))

(declare-fun b!5053188 () Bool)

(assert (=> b!5053188 (= e!3154688 0)))

(declare-fun b!5053189 () Bool)

(assert (=> b!5053189 (= e!3154688 (+ 1 (size!39027 (t!371167 l!2757))))))

(assert (= (and d!1626052 c!867119) b!5053188))

(assert (= (and d!1626052 (not c!867119)) b!5053189))

(declare-fun m!6087252 () Bool)

(assert (=> b!5053189 m!6087252))

(assert (=> b!5053021 d!1626052))

(declare-fun b!5053198 () Bool)

(declare-fun e!3154693 () Bool)

(declare-fun tp!1412408 () Bool)

(assert (=> b!5053198 (= e!3154693 (and tp_is_empty!36991 tp!1412408))))

(assert (=> b!5053024 (= tp!1412405 e!3154693)))

(assert (= (and b!5053024 ((_ is Cons!58404) (t!371167 r!2041))) b!5053198))

(declare-fun b!5053199 () Bool)

(declare-fun e!3154694 () Bool)

(declare-fun tp!1412409 () Bool)

(assert (=> b!5053199 (= e!3154694 (and tp_is_empty!36991 tp!1412409))))

(assert (=> b!5053022 (= tp!1412404 e!3154694)))

(assert (= (and b!5053022 ((_ is Cons!58404) (t!371167 l!2757))) b!5053199))

(check-sat (not b!5053112) (not bm!352031) (not b!5053115) (not b!5053189) (not b!5053074) (not b!5053077) (not d!1626030) (not b!5053072) (not b!5053167) (not d!1626032) (not d!1626012) (not b!5053079) (not b!5053199) (not b!5053106) (not b!5053082) (not b!5053043) (not d!1626006) (not b!5053169) (not d!1626028) (not d!1626014) (not b!5053040) (not b!5053086) (not b!5053061) (not b!5053171) (not b!5053081) (not b!5053198) (not d!1626018) (not b!5053109) (not b!5053111) (not d!1626020) tp_is_empty!36991 (not b!5053117) (not b!5053071) (not d!1626002) (not bm!352032) (not b!5053183) (not b!5053105) (not b!5053045) (not b!5053085) (not b!5053059))
(check-sat)
