; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!396034 () Bool)

(assert start!396034)

(declare-fun b!4158188 () Bool)

(declare-fun e!2580659 () Bool)

(declare-fun tp_is_empty!21701 () Bool)

(declare-fun tp!1268894 () Bool)

(assert (=> b!4158188 (= e!2580659 (and tp_is_empty!21701 tp!1268894))))

(declare-fun b!4158189 () Bool)

(declare-datatypes ((Unit!64538 0))(
  ( (Unit!64539) )
))
(declare-fun e!2580662 () Unit!64538)

(declare-fun lt!1482139 () Unit!64538)

(assert (=> b!4158189 (= e!2580662 lt!1482139)))

(declare-datatypes ((B!2653 0))(
  ( (B!2654 (val!14618 Int)) )
))
(declare-fun e2!32 () B!2653)

(declare-datatypes ((List!45495 0))(
  ( (Nil!45371) (Cons!45371 (h!50791 B!2653) (t!343526 List!45495)) )
))
(declare-fun l!3062 () List!45495)

(declare-fun e1!32 () B!2653)

(declare-fun lemmaGetIndexBiggerAndHeadEqThenTailContains!114 (List!45495 B!2653 B!2653) Unit!64538)

(assert (=> b!4158189 (= lt!1482139 (lemmaGetIndexBiggerAndHeadEqThenTailContains!114 l!3062 e1!32 e2!32))))

(declare-fun call!290813 () Bool)

(assert (=> b!4158189 call!290813))

(declare-fun res!1703151 () Bool)

(declare-fun e!2580660 () Bool)

(assert (=> start!396034 (=> (not res!1703151) (not e!2580660))))

(declare-fun contains!9229 (List!45495 B!2653) Bool)

(assert (=> start!396034 (= res!1703151 (contains!9229 l!3062 e1!32))))

(assert (=> start!396034 e!2580660))

(assert (=> start!396034 e!2580659))

(assert (=> start!396034 tp_is_empty!21701))

(declare-fun bm!290808 () Bool)

(declare-fun call!290814 () List!45495)

(declare-fun c!711609 () Bool)

(declare-fun tail!6661 (List!45495) List!45495)

(assert (=> bm!290808 (= call!290814 (tail!6661 (ite c!711609 l!3062 (t!343526 l!3062))))))

(declare-fun b!4158190 () Bool)

(declare-fun e!2580661 () Bool)

(assert (=> b!4158190 (= e!2580660 e!2580661)))

(declare-fun res!1703152 () Bool)

(assert (=> b!4158190 (=> (not res!1703152) (not e!2580661))))

(declare-fun lt!1482142 () Int)

(declare-fun lt!1482138 () Int)

(assert (=> b!4158190 (= res!1703152 (< lt!1482142 lt!1482138))))

(declare-fun getIndex!850 (List!45495 B!2653) Int)

(assert (=> b!4158190 (= lt!1482138 (getIndex!850 l!3062 e2!32))))

(assert (=> b!4158190 (= lt!1482142 (getIndex!850 l!3062 e1!32))))

(declare-fun b!4158191 () Bool)

(declare-fun res!1703153 () Bool)

(assert (=> b!4158191 (=> (not res!1703153) (not e!2580660))))

(assert (=> b!4158191 (= res!1703153 (not (= e1!32 e2!32)))))

(declare-fun b!4158192 () Bool)

(declare-fun e!2580658 () Unit!64538)

(assert (=> b!4158192 (= e!2580662 e!2580658)))

(declare-fun c!711608 () Bool)

(get-info :version)

(assert (=> b!4158192 (= c!711608 (and ((_ is Cons!45371) l!3062) (not (= (h!50791 l!3062) e1!32))))))

(declare-fun b!4158193 () Bool)

(assert (=> b!4158193 false))

(declare-fun Unit!64540 () Unit!64538)

(assert (=> b!4158193 (= e!2580658 Unit!64540)))

(declare-fun b!4158194 () Bool)

(declare-fun res!1703154 () Bool)

(assert (=> b!4158194 (=> (not res!1703154) (not e!2580660))))

(assert (=> b!4158194 (= res!1703154 (contains!9229 l!3062 e2!32))))

(declare-fun b!4158195 () Bool)

(assert (=> b!4158195 (= e!2580661 (not (contains!9229 (tail!6661 l!3062) e2!32)))))

(declare-fun lt!1482134 () Unit!64538)

(assert (=> b!4158195 (= lt!1482134 e!2580662)))

(assert (=> b!4158195 (= c!711609 (and ((_ is Cons!45371) l!3062) (= (h!50791 l!3062) e1!32)))))

(declare-fun b!4158196 () Bool)

(assert (=> b!4158196 (contains!9229 call!290814 e2!32)))

(declare-fun lt!1482140 () Unit!64538)

(declare-fun lemmaGetIndexBiggerAndHeadNotEqThenTailContains!24 (List!45495 B!2653 B!2653) Unit!64538)

(assert (=> b!4158196 (= lt!1482140 (lemmaGetIndexBiggerAndHeadNotEqThenTailContains!24 (t!343526 l!3062) e1!32 e2!32))))

(declare-fun lt!1482136 () List!45495)

(assert (=> b!4158196 (= lt!1482138 (+ 1 (getIndex!850 lt!1482136 e2!32)))))

(declare-fun lt!1482137 () Unit!64538)

(declare-fun lemmaNotHeadSoGetIndexTailIsMinusOne!10 (List!45495 B!2653) Unit!64538)

(assert (=> b!4158196 (= lt!1482137 (lemmaNotHeadSoGetIndexTailIsMinusOne!10 l!3062 e2!32))))

(assert (=> b!4158196 (= lt!1482142 (+ 1 (getIndex!850 lt!1482136 e1!32)))))

(declare-fun lt!1482135 () Unit!64538)

(assert (=> b!4158196 (= lt!1482135 (lemmaNotHeadSoGetIndexTailIsMinusOne!10 l!3062 e1!32))))

(assert (=> b!4158196 call!290813))

(assert (=> b!4158196 (= lt!1482136 (tail!6661 l!3062))))

(declare-fun lt!1482141 () Unit!64538)

(declare-fun lemmaContainsAndNotHdThenTlContains!12 (List!45495 B!2653) Unit!64538)

(assert (=> b!4158196 (= lt!1482141 (lemmaContainsAndNotHdThenTlContains!12 l!3062 e1!32))))

(assert (=> b!4158196 (= e!2580658 lt!1482140)))

(declare-fun bm!290809 () Bool)

(assert (=> bm!290809 (= call!290813 (contains!9229 (ite c!711609 call!290814 lt!1482136) (ite c!711609 e2!32 e1!32)))))

(assert (= (and start!396034 res!1703151) b!4158194))

(assert (= (and b!4158194 res!1703154) b!4158191))

(assert (= (and b!4158191 res!1703153) b!4158190))

(assert (= (and b!4158190 res!1703152) b!4158195))

(assert (= (and b!4158195 c!711609) b!4158189))

(assert (= (and b!4158195 (not c!711609)) b!4158192))

(assert (= (and b!4158192 c!711608) b!4158196))

(assert (= (and b!4158192 (not c!711608)) b!4158193))

(assert (= (or b!4158189 b!4158196) bm!290808))

(assert (= (or b!4158189 b!4158196) bm!290809))

(assert (= (and start!396034 ((_ is Cons!45371) l!3062)) b!4158188))

(declare-fun m!4752061 () Bool)

(assert (=> b!4158189 m!4752061))

(declare-fun m!4752063 () Bool)

(assert (=> b!4158190 m!4752063))

(declare-fun m!4752065 () Bool)

(assert (=> b!4158190 m!4752065))

(declare-fun m!4752067 () Bool)

(assert (=> start!396034 m!4752067))

(declare-fun m!4752069 () Bool)

(assert (=> b!4158195 m!4752069))

(assert (=> b!4158195 m!4752069))

(declare-fun m!4752071 () Bool)

(assert (=> b!4158195 m!4752071))

(declare-fun m!4752073 () Bool)

(assert (=> b!4158194 m!4752073))

(declare-fun m!4752075 () Bool)

(assert (=> b!4158196 m!4752075))

(declare-fun m!4752077 () Bool)

(assert (=> b!4158196 m!4752077))

(declare-fun m!4752079 () Bool)

(assert (=> b!4158196 m!4752079))

(declare-fun m!4752081 () Bool)

(assert (=> b!4158196 m!4752081))

(declare-fun m!4752083 () Bool)

(assert (=> b!4158196 m!4752083))

(assert (=> b!4158196 m!4752069))

(declare-fun m!4752085 () Bool)

(assert (=> b!4158196 m!4752085))

(declare-fun m!4752087 () Bool)

(assert (=> b!4158196 m!4752087))

(declare-fun m!4752089 () Bool)

(assert (=> bm!290809 m!4752089))

(declare-fun m!4752091 () Bool)

(assert (=> bm!290808 m!4752091))

(check-sat (not b!4158195) (not b!4158189) (not b!4158188) (not b!4158190) (not start!396034) (not b!4158196) (not bm!290808) (not bm!290809) (not b!4158194) tp_is_empty!21701)
(check-sat)
(get-model)

(declare-fun b!4158205 () Bool)

(declare-fun e!2580668 () Int)

(assert (=> b!4158205 (= e!2580668 0)))

(declare-fun b!4158207 () Bool)

(declare-fun e!2580669 () Int)

(assert (=> b!4158207 (= e!2580669 (+ 1 (getIndex!850 (t!343526 l!3062) e2!32)))))

(declare-fun d!1229438 () Bool)

(declare-fun lt!1482145 () Int)

(assert (=> d!1229438 (>= lt!1482145 0)))

(assert (=> d!1229438 (= lt!1482145 e!2580668)))

(declare-fun c!711615 () Bool)

(assert (=> d!1229438 (= c!711615 (and ((_ is Cons!45371) l!3062) (= (h!50791 l!3062) e2!32)))))

(assert (=> d!1229438 (contains!9229 l!3062 e2!32)))

(assert (=> d!1229438 (= (getIndex!850 l!3062 e2!32) lt!1482145)))

(declare-fun b!4158206 () Bool)

(assert (=> b!4158206 (= e!2580668 e!2580669)))

(declare-fun c!711614 () Bool)

(assert (=> b!4158206 (= c!711614 (and ((_ is Cons!45371) l!3062) (not (= (h!50791 l!3062) e2!32))))))

(declare-fun b!4158208 () Bool)

(assert (=> b!4158208 (= e!2580669 (- 1))))

(assert (= (and d!1229438 c!711615) b!4158205))

(assert (= (and d!1229438 (not c!711615)) b!4158206))

(assert (= (and b!4158206 c!711614) b!4158207))

(assert (= (and b!4158206 (not c!711614)) b!4158208))

(declare-fun m!4752093 () Bool)

(assert (=> b!4158207 m!4752093))

(assert (=> d!1229438 m!4752073))

(assert (=> b!4158190 d!1229438))

(declare-fun b!4158209 () Bool)

(declare-fun e!2580670 () Int)

(assert (=> b!4158209 (= e!2580670 0)))

(declare-fun b!4158211 () Bool)

(declare-fun e!2580671 () Int)

(assert (=> b!4158211 (= e!2580671 (+ 1 (getIndex!850 (t!343526 l!3062) e1!32)))))

(declare-fun d!1229442 () Bool)

(declare-fun lt!1482146 () Int)

(assert (=> d!1229442 (>= lt!1482146 0)))

(assert (=> d!1229442 (= lt!1482146 e!2580670)))

(declare-fun c!711617 () Bool)

(assert (=> d!1229442 (= c!711617 (and ((_ is Cons!45371) l!3062) (= (h!50791 l!3062) e1!32)))))

(assert (=> d!1229442 (contains!9229 l!3062 e1!32)))

(assert (=> d!1229442 (= (getIndex!850 l!3062 e1!32) lt!1482146)))

(declare-fun b!4158210 () Bool)

(assert (=> b!4158210 (= e!2580670 e!2580671)))

(declare-fun c!711616 () Bool)

(assert (=> b!4158210 (= c!711616 (and ((_ is Cons!45371) l!3062) (not (= (h!50791 l!3062) e1!32))))))

(declare-fun b!4158212 () Bool)

(assert (=> b!4158212 (= e!2580671 (- 1))))

(assert (= (and d!1229442 c!711617) b!4158209))

(assert (= (and d!1229442 (not c!711617)) b!4158210))

(assert (= (and b!4158210 c!711616) b!4158211))

(assert (= (and b!4158210 (not c!711616)) b!4158212))

(declare-fun m!4752095 () Bool)

(assert (=> b!4158211 m!4752095))

(assert (=> d!1229442 m!4752067))

(assert (=> b!4158190 d!1229442))

(declare-fun d!1229444 () Bool)

(declare-fun lt!1482152 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7020 (List!45495) (InoxSet B!2653))

(assert (=> d!1229444 (= lt!1482152 (select (content!7020 call!290814) e2!32))))

(declare-fun e!2580683 () Bool)

(assert (=> d!1229444 (= lt!1482152 e!2580683)))

(declare-fun res!1703165 () Bool)

(assert (=> d!1229444 (=> (not res!1703165) (not e!2580683))))

(assert (=> d!1229444 (= res!1703165 ((_ is Cons!45371) call!290814))))

(assert (=> d!1229444 (= (contains!9229 call!290814 e2!32) lt!1482152)))

(declare-fun b!4158223 () Bool)

(declare-fun e!2580682 () Bool)

(assert (=> b!4158223 (= e!2580683 e!2580682)))

(declare-fun res!1703166 () Bool)

(assert (=> b!4158223 (=> res!1703166 e!2580682)))

(assert (=> b!4158223 (= res!1703166 (= (h!50791 call!290814) e2!32))))

(declare-fun b!4158224 () Bool)

(assert (=> b!4158224 (= e!2580682 (contains!9229 (t!343526 call!290814) e2!32))))

(assert (= (and d!1229444 res!1703165) b!4158223))

(assert (= (and b!4158223 (not res!1703166)) b!4158224))

(declare-fun m!4752103 () Bool)

(assert (=> d!1229444 m!4752103))

(declare-fun m!4752105 () Bool)

(assert (=> d!1229444 m!4752105))

(declare-fun m!4752107 () Bool)

(assert (=> b!4158224 m!4752107))

(assert (=> b!4158196 d!1229444))

(declare-fun d!1229450 () Bool)

(assert (=> d!1229450 (contains!9229 (tail!6661 l!3062) e1!32)))

(declare-fun lt!1482157 () Unit!64538)

(declare-fun choose!25458 (List!45495 B!2653) Unit!64538)

(assert (=> d!1229450 (= lt!1482157 (choose!25458 l!3062 e1!32))))

(assert (=> d!1229450 (contains!9229 l!3062 e1!32)))

(assert (=> d!1229450 (= (lemmaContainsAndNotHdThenTlContains!12 l!3062 e1!32) lt!1482157)))

(declare-fun bs!595568 () Bool)

(assert (= bs!595568 d!1229450))

(assert (=> bs!595568 m!4752069))

(assert (=> bs!595568 m!4752069))

(declare-fun m!4752109 () Bool)

(assert (=> bs!595568 m!4752109))

(declare-fun m!4752111 () Bool)

(assert (=> bs!595568 m!4752111))

(assert (=> bs!595568 m!4752067))

(assert (=> b!4158196 d!1229450))

(declare-fun d!1229452 () Bool)

(assert (=> d!1229452 (= (getIndex!850 l!3062 e2!32) (+ (getIndex!850 (tail!6661 l!3062) e2!32) 1))))

(declare-fun lt!1482162 () Unit!64538)

(declare-fun choose!25459 (List!45495 B!2653) Unit!64538)

(assert (=> d!1229452 (= lt!1482162 (choose!25459 l!3062 e2!32))))

(assert (=> d!1229452 (contains!9229 l!3062 e2!32)))

(assert (=> d!1229452 (= (lemmaNotHeadSoGetIndexTailIsMinusOne!10 l!3062 e2!32) lt!1482162)))

(declare-fun bs!595569 () Bool)

(assert (= bs!595569 d!1229452))

(assert (=> bs!595569 m!4752069))

(declare-fun m!4752117 () Bool)

(assert (=> bs!595569 m!4752117))

(assert (=> bs!595569 m!4752069))

(assert (=> bs!595569 m!4752063))

(assert (=> bs!595569 m!4752073))

(declare-fun m!4752119 () Bool)

(assert (=> bs!595569 m!4752119))

(assert (=> b!4158196 d!1229452))

(declare-fun b!4158243 () Bool)

(declare-fun e!2580697 () Int)

(assert (=> b!4158243 (= e!2580697 0)))

(declare-fun b!4158245 () Bool)

(declare-fun e!2580698 () Int)

(assert (=> b!4158245 (= e!2580698 (+ 1 (getIndex!850 (t!343526 lt!1482136) e1!32)))))

(declare-fun d!1229458 () Bool)

(declare-fun lt!1482163 () Int)

(assert (=> d!1229458 (>= lt!1482163 0)))

(assert (=> d!1229458 (= lt!1482163 e!2580697)))

(declare-fun c!711627 () Bool)

(assert (=> d!1229458 (= c!711627 (and ((_ is Cons!45371) lt!1482136) (= (h!50791 lt!1482136) e1!32)))))

(assert (=> d!1229458 (contains!9229 lt!1482136 e1!32)))

(assert (=> d!1229458 (= (getIndex!850 lt!1482136 e1!32) lt!1482163)))

(declare-fun b!4158244 () Bool)

(assert (=> b!4158244 (= e!2580697 e!2580698)))

(declare-fun c!711626 () Bool)

(assert (=> b!4158244 (= c!711626 (and ((_ is Cons!45371) lt!1482136) (not (= (h!50791 lt!1482136) e1!32))))))

(declare-fun b!4158246 () Bool)

(assert (=> b!4158246 (= e!2580698 (- 1))))

(assert (= (and d!1229458 c!711627) b!4158243))

(assert (= (and d!1229458 (not c!711627)) b!4158244))

(assert (= (and b!4158244 c!711626) b!4158245))

(assert (= (and b!4158244 (not c!711626)) b!4158246))

(declare-fun m!4752121 () Bool)

(assert (=> b!4158245 m!4752121))

(declare-fun m!4752123 () Bool)

(assert (=> d!1229458 m!4752123))

(assert (=> b!4158196 d!1229458))

(declare-fun d!1229460 () Bool)

(assert (=> d!1229460 (= (tail!6661 l!3062) (t!343526 l!3062))))

(assert (=> b!4158196 d!1229460))

(declare-fun d!1229462 () Bool)

(assert (=> d!1229462 (= (getIndex!850 l!3062 e1!32) (+ (getIndex!850 (tail!6661 l!3062) e1!32) 1))))

(declare-fun lt!1482167 () Unit!64538)

(assert (=> d!1229462 (= lt!1482167 (choose!25459 l!3062 e1!32))))

(assert (=> d!1229462 (contains!9229 l!3062 e1!32)))

(assert (=> d!1229462 (= (lemmaNotHeadSoGetIndexTailIsMinusOne!10 l!3062 e1!32) lt!1482167)))

(declare-fun bs!595570 () Bool)

(assert (= bs!595570 d!1229462))

(assert (=> bs!595570 m!4752069))

(declare-fun m!4752125 () Bool)

(assert (=> bs!595570 m!4752125))

(assert (=> bs!595570 m!4752069))

(assert (=> bs!595570 m!4752065))

(assert (=> bs!595570 m!4752067))

(declare-fun m!4752129 () Bool)

(assert (=> bs!595570 m!4752129))

(assert (=> b!4158196 d!1229462))

(declare-fun d!1229464 () Bool)

(assert (=> d!1229464 (contains!9229 (tail!6661 (t!343526 l!3062)) e2!32)))

(declare-fun lt!1482176 () Unit!64538)

(declare-fun choose!25461 (List!45495 B!2653 B!2653) Unit!64538)

(assert (=> d!1229464 (= lt!1482176 (choose!25461 (t!343526 l!3062) e1!32 e2!32))))

(declare-fun e!2580711 () Bool)

(assert (=> d!1229464 e!2580711))

(declare-fun res!1703178 () Bool)

(assert (=> d!1229464 (=> (not res!1703178) (not e!2580711))))

(assert (=> d!1229464 (= res!1703178 (contains!9229 (t!343526 l!3062) e1!32))))

(assert (=> d!1229464 (= (lemmaGetIndexBiggerAndHeadNotEqThenTailContains!24 (t!343526 l!3062) e1!32 e2!32) lt!1482176)))

(declare-fun b!4158260 () Bool)

(assert (=> b!4158260 (= e!2580711 (contains!9229 (t!343526 l!3062) e2!32))))

(assert (= (and d!1229464 res!1703178) b!4158260))

(declare-fun m!4752151 () Bool)

(assert (=> d!1229464 m!4752151))

(assert (=> d!1229464 m!4752151))

(declare-fun m!4752153 () Bool)

(assert (=> d!1229464 m!4752153))

(declare-fun m!4752155 () Bool)

(assert (=> d!1229464 m!4752155))

(declare-fun m!4752157 () Bool)

(assert (=> d!1229464 m!4752157))

(declare-fun m!4752159 () Bool)

(assert (=> b!4158260 m!4752159))

(assert (=> b!4158196 d!1229464))

(declare-fun b!4158261 () Bool)

(declare-fun e!2580712 () Int)

(assert (=> b!4158261 (= e!2580712 0)))

(declare-fun b!4158263 () Bool)

(declare-fun e!2580713 () Int)

(assert (=> b!4158263 (= e!2580713 (+ 1 (getIndex!850 (t!343526 lt!1482136) e2!32)))))

(declare-fun d!1229478 () Bool)

(declare-fun lt!1482178 () Int)

(assert (=> d!1229478 (>= lt!1482178 0)))

(assert (=> d!1229478 (= lt!1482178 e!2580712)))

(declare-fun c!711631 () Bool)

(assert (=> d!1229478 (= c!711631 (and ((_ is Cons!45371) lt!1482136) (= (h!50791 lt!1482136) e2!32)))))

(assert (=> d!1229478 (contains!9229 lt!1482136 e2!32)))

(assert (=> d!1229478 (= (getIndex!850 lt!1482136 e2!32) lt!1482178)))

(declare-fun b!4158262 () Bool)

(assert (=> b!4158262 (= e!2580712 e!2580713)))

(declare-fun c!711630 () Bool)

(assert (=> b!4158262 (= c!711630 (and ((_ is Cons!45371) lt!1482136) (not (= (h!50791 lt!1482136) e2!32))))))

(declare-fun b!4158264 () Bool)

(assert (=> b!4158264 (= e!2580713 (- 1))))

(assert (= (and d!1229478 c!711631) b!4158261))

(assert (= (and d!1229478 (not c!711631)) b!4158262))

(assert (= (and b!4158262 c!711630) b!4158263))

(assert (= (and b!4158262 (not c!711630)) b!4158264))

(declare-fun m!4752165 () Bool)

(assert (=> b!4158263 m!4752165))

(declare-fun m!4752167 () Bool)

(assert (=> d!1229478 m!4752167))

(assert (=> b!4158196 d!1229478))

(declare-fun lt!1482179 () Bool)

(declare-fun d!1229482 () Bool)

(assert (=> d!1229482 (= lt!1482179 (select (content!7020 (ite c!711609 call!290814 lt!1482136)) (ite c!711609 e2!32 e1!32)))))

(declare-fun e!2580715 () Bool)

(assert (=> d!1229482 (= lt!1482179 e!2580715)))

(declare-fun res!1703179 () Bool)

(assert (=> d!1229482 (=> (not res!1703179) (not e!2580715))))

(assert (=> d!1229482 (= res!1703179 ((_ is Cons!45371) (ite c!711609 call!290814 lt!1482136)))))

(assert (=> d!1229482 (= (contains!9229 (ite c!711609 call!290814 lt!1482136) (ite c!711609 e2!32 e1!32)) lt!1482179)))

(declare-fun b!4158265 () Bool)

(declare-fun e!2580714 () Bool)

(assert (=> b!4158265 (= e!2580715 e!2580714)))

(declare-fun res!1703180 () Bool)

(assert (=> b!4158265 (=> res!1703180 e!2580714)))

(assert (=> b!4158265 (= res!1703180 (= (h!50791 (ite c!711609 call!290814 lt!1482136)) (ite c!711609 e2!32 e1!32)))))

(declare-fun b!4158266 () Bool)

(assert (=> b!4158266 (= e!2580714 (contains!9229 (t!343526 (ite c!711609 call!290814 lt!1482136)) (ite c!711609 e2!32 e1!32)))))

(assert (= (and d!1229482 res!1703179) b!4158265))

(assert (= (and b!4158265 (not res!1703180)) b!4158266))

(declare-fun m!4752169 () Bool)

(assert (=> d!1229482 m!4752169))

(declare-fun m!4752171 () Bool)

(assert (=> d!1229482 m!4752171))

(declare-fun m!4752173 () Bool)

(assert (=> b!4158266 m!4752173))

(assert (=> bm!290809 d!1229482))

(declare-fun d!1229484 () Bool)

(assert (=> d!1229484 (contains!9229 (tail!6661 l!3062) e2!32)))

(declare-fun lt!1482185 () Unit!64538)

(declare-fun choose!25463 (List!45495 B!2653 B!2653) Unit!64538)

(assert (=> d!1229484 (= lt!1482185 (choose!25463 l!3062 e1!32 e2!32))))

(declare-fun e!2580721 () Bool)

(assert (=> d!1229484 e!2580721))

(declare-fun res!1703186 () Bool)

(assert (=> d!1229484 (=> (not res!1703186) (not e!2580721))))

(assert (=> d!1229484 (= res!1703186 (contains!9229 l!3062 e1!32))))

(assert (=> d!1229484 (= (lemmaGetIndexBiggerAndHeadEqThenTailContains!114 l!3062 e1!32 e2!32) lt!1482185)))

(declare-fun b!4158272 () Bool)

(assert (=> b!4158272 (= e!2580721 (contains!9229 l!3062 e2!32))))

(assert (= (and d!1229484 res!1703186) b!4158272))

(assert (=> d!1229484 m!4752069))

(assert (=> d!1229484 m!4752069))

(assert (=> d!1229484 m!4752071))

(declare-fun m!4752181 () Bool)

(assert (=> d!1229484 m!4752181))

(assert (=> d!1229484 m!4752067))

(assert (=> b!4158272 m!4752073))

(assert (=> b!4158189 d!1229484))

(declare-fun d!1229488 () Bool)

(declare-fun lt!1482186 () Bool)

(assert (=> d!1229488 (= lt!1482186 (select (content!7020 l!3062) e2!32))))

(declare-fun e!2580723 () Bool)

(assert (=> d!1229488 (= lt!1482186 e!2580723)))

(declare-fun res!1703187 () Bool)

(assert (=> d!1229488 (=> (not res!1703187) (not e!2580723))))

(assert (=> d!1229488 (= res!1703187 ((_ is Cons!45371) l!3062))))

(assert (=> d!1229488 (= (contains!9229 l!3062 e2!32) lt!1482186)))

(declare-fun b!4158273 () Bool)

(declare-fun e!2580722 () Bool)

(assert (=> b!4158273 (= e!2580723 e!2580722)))

(declare-fun res!1703188 () Bool)

(assert (=> b!4158273 (=> res!1703188 e!2580722)))

(assert (=> b!4158273 (= res!1703188 (= (h!50791 l!3062) e2!32))))

(declare-fun b!4158274 () Bool)

(assert (=> b!4158274 (= e!2580722 (contains!9229 (t!343526 l!3062) e2!32))))

(assert (= (and d!1229488 res!1703187) b!4158273))

(assert (= (and b!4158273 (not res!1703188)) b!4158274))

(declare-fun m!4752183 () Bool)

(assert (=> d!1229488 m!4752183))

(declare-fun m!4752185 () Bool)

(assert (=> d!1229488 m!4752185))

(assert (=> b!4158274 m!4752159))

(assert (=> b!4158194 d!1229488))

(declare-fun d!1229490 () Bool)

(declare-fun lt!1482187 () Bool)

(assert (=> d!1229490 (= lt!1482187 (select (content!7020 l!3062) e1!32))))

(declare-fun e!2580725 () Bool)

(assert (=> d!1229490 (= lt!1482187 e!2580725)))

(declare-fun res!1703189 () Bool)

(assert (=> d!1229490 (=> (not res!1703189) (not e!2580725))))

(assert (=> d!1229490 (= res!1703189 ((_ is Cons!45371) l!3062))))

(assert (=> d!1229490 (= (contains!9229 l!3062 e1!32) lt!1482187)))

(declare-fun b!4158275 () Bool)

(declare-fun e!2580724 () Bool)

(assert (=> b!4158275 (= e!2580725 e!2580724)))

(declare-fun res!1703190 () Bool)

(assert (=> b!4158275 (=> res!1703190 e!2580724)))

(assert (=> b!4158275 (= res!1703190 (= (h!50791 l!3062) e1!32))))

(declare-fun b!4158276 () Bool)

(assert (=> b!4158276 (= e!2580724 (contains!9229 (t!343526 l!3062) e1!32))))

(assert (= (and d!1229490 res!1703189) b!4158275))

(assert (= (and b!4158275 (not res!1703190)) b!4158276))

(assert (=> d!1229490 m!4752183))

(declare-fun m!4752187 () Bool)

(assert (=> d!1229490 m!4752187))

(assert (=> b!4158276 m!4752157))

(assert (=> start!396034 d!1229490))

(declare-fun d!1229492 () Bool)

(assert (=> d!1229492 (= (tail!6661 (ite c!711609 l!3062 (t!343526 l!3062))) (t!343526 (ite c!711609 l!3062 (t!343526 l!3062))))))

(assert (=> bm!290808 d!1229492))

(declare-fun d!1229494 () Bool)

(declare-fun lt!1482190 () Bool)

(assert (=> d!1229494 (= lt!1482190 (select (content!7020 (tail!6661 l!3062)) e2!32))))

(declare-fun e!2580728 () Bool)

(assert (=> d!1229494 (= lt!1482190 e!2580728)))

(declare-fun res!1703191 () Bool)

(assert (=> d!1229494 (=> (not res!1703191) (not e!2580728))))

(assert (=> d!1229494 (= res!1703191 ((_ is Cons!45371) (tail!6661 l!3062)))))

(assert (=> d!1229494 (= (contains!9229 (tail!6661 l!3062) e2!32) lt!1482190)))

(declare-fun b!4158277 () Bool)

(declare-fun e!2580727 () Bool)

(assert (=> b!4158277 (= e!2580728 e!2580727)))

(declare-fun res!1703192 () Bool)

(assert (=> b!4158277 (=> res!1703192 e!2580727)))

(assert (=> b!4158277 (= res!1703192 (= (h!50791 (tail!6661 l!3062)) e2!32))))

(declare-fun b!4158278 () Bool)

(assert (=> b!4158278 (= e!2580727 (contains!9229 (t!343526 (tail!6661 l!3062)) e2!32))))

(assert (= (and d!1229494 res!1703191) b!4158277))

(assert (= (and b!4158277 (not res!1703192)) b!4158278))

(assert (=> d!1229494 m!4752069))

(declare-fun m!4752189 () Bool)

(assert (=> d!1229494 m!4752189))

(declare-fun m!4752191 () Bool)

(assert (=> d!1229494 m!4752191))

(declare-fun m!4752193 () Bool)

(assert (=> b!4158278 m!4752193))

(assert (=> b!4158195 d!1229494))

(assert (=> b!4158195 d!1229460))

(declare-fun b!4158283 () Bool)

(declare-fun e!2580731 () Bool)

(declare-fun tp!1268897 () Bool)

(assert (=> b!4158283 (= e!2580731 (and tp_is_empty!21701 tp!1268897))))

(assert (=> b!4158188 (= tp!1268894 e!2580731)))

(assert (= (and b!4158188 ((_ is Cons!45371) (t!343526 l!3062))) b!4158283))

(check-sat (not d!1229442) (not b!4158276) (not d!1229490) (not b!4158283) (not b!4158207) (not d!1229488) (not d!1229458) tp_is_empty!21701 (not b!4158224) (not b!4158260) (not d!1229478) (not b!4158266) (not b!4158278) (not d!1229444) (not d!1229462) (not d!1229438) (not b!4158263) (not d!1229482) (not b!4158211) (not b!4158274) (not d!1229452) (not b!4158245) (not b!4158272) (not d!1229464) (not d!1229494) (not d!1229484) (not d!1229450))
(check-sat)
