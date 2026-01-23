; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!520126 () Bool)

(assert start!520126)

(declare-fun b!4943166 () Bool)

(declare-fun e!3088418 () Bool)

(declare-fun e!3088422 () Bool)

(assert (=> b!4943166 (= e!3088418 (not e!3088422))))

(declare-fun res!2109334 () Bool)

(assert (=> b!4943166 (=> res!2109334 e!3088422)))

(declare-datatypes ((C!27154 0))(
  ( (C!27155 (val!22911 Int)) )
))
(declare-datatypes ((List!57037 0))(
  ( (Nil!56913) (Cons!56913 (h!63361 C!27154) (t!367567 List!57037)) )
))
(declare-fun testedP!110 () List!57037)

(declare-fun lt!2037588 () List!57037)

(declare-fun isPrefix!5060 (List!57037 List!57037) Bool)

(assert (=> b!4943166 (= res!2109334 (not (isPrefix!5060 testedP!110 lt!2037588)))))

(declare-fun lt!2037582 () List!57037)

(assert (=> b!4943166 (isPrefix!5060 testedP!110 lt!2037582)))

(declare-datatypes ((Unit!147667 0))(
  ( (Unit!147668) )
))
(declare-fun lt!2037586 () Unit!147667)

(declare-fun testedSuffix!70 () List!57037)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3284 (List!57037 List!57037) Unit!147667)

(assert (=> b!4943166 (= lt!2037586 (lemmaConcatTwoListThenFirstIsPrefix!3284 testedP!110 testedSuffix!70))))

(declare-fun b!4943167 () Bool)

(declare-fun e!3088414 () Bool)

(declare-fun tp_is_empty!36101 () Bool)

(declare-fun tp!1386625 () Bool)

(assert (=> b!4943167 (= e!3088414 (and tp_is_empty!36101 tp!1386625))))

(declare-fun setRes!27941 () Bool)

(declare-fun tp!1386627 () Bool)

(declare-datatypes ((Regex!13460 0))(
  ( (ElementMatch!13460 (c!843347 C!27154)) (Concat!22033 (regOne!27432 Regex!13460) (regTwo!27432 Regex!13460)) (EmptyExpr!13460) (Star!13460 (reg!13789 Regex!13460)) (EmptyLang!13460) (Union!13460 (regOne!27433 Regex!13460) (regTwo!27433 Regex!13460)) )
))
(declare-datatypes ((List!57038 0))(
  ( (Nil!56914) (Cons!56914 (h!63362 Regex!13460) (t!367568 List!57038)) )
))
(declare-datatypes ((Context!6204 0))(
  ( (Context!6205 (exprs!3602 List!57038)) )
))
(declare-fun setElem!27941 () Context!6204)

(declare-fun setNonEmpty!27941 () Bool)

(declare-fun e!3088416 () Bool)

(declare-fun inv!74041 (Context!6204) Bool)

(assert (=> setNonEmpty!27941 (= setRes!27941 (and tp!1386627 (inv!74041 setElem!27941) e!3088416))))

(declare-fun z!3568 () (Set Context!6204))

(declare-fun setRest!27941 () (Set Context!6204))

(assert (=> setNonEmpty!27941 (= z!3568 (set.union (set.insert setElem!27941 (as set.empty (Set Context!6204))) setRest!27941))))

(declare-fun b!4943168 () Bool)

(declare-fun e!3088415 () Bool)

(declare-fun e!3088419 () Bool)

(assert (=> b!4943168 (= e!3088415 e!3088419)))

(declare-fun res!2109329 () Bool)

(assert (=> b!4943168 (=> (not res!2109329) (not e!3088419))))

(declare-fun testedPSize!70 () Int)

(declare-fun lt!2037577 () Int)

(assert (=> b!4943168 (= res!2109329 (= testedPSize!70 lt!2037577))))

(declare-fun size!37727 (List!57037) Int)

(assert (=> b!4943168 (= lt!2037577 (size!37727 testedP!110))))

(declare-fun b!4943169 () Bool)

(declare-fun e!3088417 () Bool)

(declare-fun e!3088420 () Bool)

(assert (=> b!4943169 (= e!3088417 e!3088420)))

(declare-fun res!2109335 () Bool)

(assert (=> b!4943169 (=> res!2109335 e!3088420)))

(declare-datatypes ((IArray!30003 0))(
  ( (IArray!30004 (innerList!15059 List!57037)) )
))
(declare-datatypes ((Conc!14971 0))(
  ( (Node!14971 (left!41523 Conc!14971) (right!41853 Conc!14971) (csize!30172 Int) (cheight!15182 Int)) (Leaf!24890 (xs!18297 IArray!30003) (csize!30173 Int)) (Empty!14971) )
))
(declare-datatypes ((BalanceConc!29372 0))(
  ( (BalanceConc!29373 (c!843348 Conc!14971)) )
))
(declare-fun totalInput!685 () BalanceConc!29372)

(declare-fun apply!13799 (BalanceConc!29372 Int) C!27154)

(declare-fun head!10589 (List!57037) C!27154)

(assert (=> b!4943169 (= res!2109335 (not (= (apply!13799 totalInput!685 testedPSize!70) (head!10589 testedSuffix!70))))))

(declare-fun drop!2283 (List!57037 Int) List!57037)

(declare-fun apply!13800 (List!57037 Int) C!27154)

(assert (=> b!4943169 (= (head!10589 (drop!2283 lt!2037588 testedPSize!70)) (apply!13800 lt!2037588 testedPSize!70))))

(declare-fun lt!2037576 () Unit!147667)

(declare-fun lemmaDropApply!1337 (List!57037 Int) Unit!147667)

(assert (=> b!4943169 (= lt!2037576 (lemmaDropApply!1337 lt!2037588 testedPSize!70))))

(declare-fun lt!2037583 () List!57037)

(declare-fun lt!2037584 () List!57037)

(assert (=> b!4943169 (not (or (not (= lt!2037584 testedP!110)) (not (= lt!2037583 testedSuffix!70))))))

(declare-fun lt!2037590 () Unit!147667)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!718 (List!57037 List!57037 List!57037 List!57037) Unit!147667)

(assert (=> b!4943169 (= lt!2037590 (lemmaConcatSameAndSameSizesThenSameLists!718 lt!2037584 lt!2037583 testedP!110 testedSuffix!70))))

(declare-fun b!4943170 () Bool)

(declare-fun tp!1386628 () Bool)

(assert (=> b!4943170 (= e!3088416 tp!1386628)))

(declare-fun b!4943171 () Bool)

(declare-fun lt!2037591 () Int)

(assert (=> b!4943171 (= e!3088420 (< lt!2037577 lt!2037591))))

(declare-fun lt!2037589 () Unit!147667)

(declare-fun e!3088412 () Unit!147667)

(assert (=> b!4943171 (= lt!2037589 e!3088412)))

(declare-fun c!843346 () Bool)

(assert (=> b!4943171 (= c!843346 (= lt!2037577 lt!2037591))))

(assert (=> b!4943171 (<= lt!2037577 (size!37727 lt!2037588))))

(declare-fun lt!2037585 () Unit!147667)

(declare-fun lemmaIsPrefixThenSmallerEqSize!732 (List!57037 List!57037) Unit!147667)

(assert (=> b!4943171 (= lt!2037585 (lemmaIsPrefixThenSmallerEqSize!732 testedP!110 lt!2037588))))

(declare-fun b!4943172 () Bool)

(declare-fun res!2109328 () Bool)

(declare-fun e!3088413 () Bool)

(assert (=> b!4943172 (=> res!2109328 e!3088413)))

(declare-fun totalInputSize!132 () Int)

(assert (=> b!4943172 (= res!2109328 (= testedPSize!70 totalInputSize!132))))

(declare-fun b!4943173 () Bool)

(assert (=> b!4943173 (= e!3088422 e!3088413)))

(declare-fun res!2109331 () Bool)

(assert (=> b!4943173 (=> res!2109331 e!3088413)))

(declare-fun lostCauseZipper!778 ((Set Context!6204)) Bool)

(assert (=> b!4943173 (= res!2109331 (lostCauseZipper!778 z!3568))))

(declare-fun lt!2037587 () List!57037)

(assert (=> b!4943173 (and (= testedSuffix!70 lt!2037587) (= lt!2037587 testedSuffix!70))))

(declare-fun lt!2037578 () Unit!147667)

(declare-fun lemmaSamePrefixThenSameSuffix!2456 (List!57037 List!57037 List!57037 List!57037 List!57037) Unit!147667)

(assert (=> b!4943173 (= lt!2037578 (lemmaSamePrefixThenSameSuffix!2456 testedP!110 testedSuffix!70 testedP!110 lt!2037587 lt!2037588))))

(declare-fun getSuffix!3042 (List!57037 List!57037) List!57037)

(assert (=> b!4943173 (= lt!2037587 (getSuffix!3042 lt!2037588 testedP!110))))

(declare-fun res!2109332 () Bool)

(assert (=> start!520126 (=> (not res!2109332) (not e!3088415))))

(assert (=> start!520126 (= res!2109332 (= lt!2037582 lt!2037588))))

(declare-fun list!18110 (BalanceConc!29372) List!57037)

(assert (=> start!520126 (= lt!2037588 (list!18110 totalInput!685))))

(declare-fun ++!12437 (List!57037 List!57037) List!57037)

(assert (=> start!520126 (= lt!2037582 (++!12437 testedP!110 testedSuffix!70))))

(assert (=> start!520126 e!3088415))

(declare-fun e!3088421 () Bool)

(assert (=> start!520126 e!3088421))

(declare-fun condSetEmpty!27941 () Bool)

(assert (=> start!520126 (= condSetEmpty!27941 (= z!3568 (as set.empty (Set Context!6204))))))

(assert (=> start!520126 setRes!27941))

(assert (=> start!520126 true))

(declare-fun e!3088423 () Bool)

(declare-fun inv!74042 (BalanceConc!29372) Bool)

(assert (=> start!520126 (and (inv!74042 totalInput!685) e!3088423)))

(assert (=> start!520126 e!3088414))

(declare-fun b!4943174 () Bool)

(assert (=> b!4943174 (= e!3088419 e!3088418)))

(declare-fun res!2109330 () Bool)

(assert (=> b!4943174 (=> (not res!2109330) (not e!3088418))))

(assert (=> b!4943174 (= res!2109330 (= totalInputSize!132 lt!2037591))))

(declare-fun size!37728 (BalanceConc!29372) Int)

(assert (=> b!4943174 (= lt!2037591 (size!37728 totalInput!685))))

(declare-fun setIsEmpty!27941 () Bool)

(assert (=> setIsEmpty!27941 setRes!27941))

(declare-fun b!4943175 () Bool)

(assert (=> b!4943175 (= e!3088413 e!3088417)))

(declare-fun res!2109327 () Bool)

(assert (=> b!4943175 (=> res!2109327 e!3088417)))

(assert (=> b!4943175 (= res!2109327 (not (= (++!12437 lt!2037584 lt!2037583) lt!2037588)))))

(declare-datatypes ((tuple2!61462 0))(
  ( (tuple2!61463 (_1!34034 BalanceConc!29372) (_2!34034 BalanceConc!29372)) )
))
(declare-fun lt!2037581 () tuple2!61462)

(assert (=> b!4943175 (= lt!2037583 (list!18110 (_2!34034 lt!2037581)))))

(assert (=> b!4943175 (= lt!2037584 (list!18110 (_1!34034 lt!2037581)))))

(declare-fun splitAt!377 (BalanceConc!29372 Int) tuple2!61462)

(assert (=> b!4943175 (= lt!2037581 (splitAt!377 totalInput!685 testedPSize!70))))

(declare-fun b!4943176 () Bool)

(declare-fun Unit!147669 () Unit!147667)

(assert (=> b!4943176 (= e!3088412 Unit!147669)))

(declare-fun lt!2037580 () Unit!147667)

(declare-fun lemmaIsPrefixRefl!3412 (List!57037 List!57037) Unit!147667)

(assert (=> b!4943176 (= lt!2037580 (lemmaIsPrefixRefl!3412 lt!2037588 lt!2037588))))

(assert (=> b!4943176 (isPrefix!5060 lt!2037588 lt!2037588)))

(declare-fun lt!2037579 () Unit!147667)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1170 (List!57037 List!57037 List!57037) Unit!147667)

(assert (=> b!4943176 (= lt!2037579 (lemmaIsPrefixSameLengthThenSameList!1170 lt!2037588 testedP!110 lt!2037588))))

(assert (=> b!4943176 false))

(declare-fun b!4943177 () Bool)

(declare-fun tp!1386626 () Bool)

(declare-fun inv!74043 (Conc!14971) Bool)

(assert (=> b!4943177 (= e!3088423 (and (inv!74043 (c!843348 totalInput!685)) tp!1386626))))

(declare-fun b!4943178 () Bool)

(declare-fun Unit!147670 () Unit!147667)

(assert (=> b!4943178 (= e!3088412 Unit!147670)))

(declare-fun b!4943179 () Bool)

(declare-fun res!2109333 () Bool)

(assert (=> b!4943179 (=> res!2109333 e!3088417)))

(assert (=> b!4943179 (= res!2109333 (not (= (size!37728 (_1!34034 lt!2037581)) testedPSize!70)))))

(declare-fun b!4943180 () Bool)

(declare-fun tp!1386624 () Bool)

(assert (=> b!4943180 (= e!3088421 (and tp_is_empty!36101 tp!1386624))))

(assert (= (and start!520126 res!2109332) b!4943168))

(assert (= (and b!4943168 res!2109329) b!4943174))

(assert (= (and b!4943174 res!2109330) b!4943166))

(assert (= (and b!4943166 (not res!2109334)) b!4943173))

(assert (= (and b!4943173 (not res!2109331)) b!4943172))

(assert (= (and b!4943172 (not res!2109328)) b!4943175))

(assert (= (and b!4943175 (not res!2109327)) b!4943179))

(assert (= (and b!4943179 (not res!2109333)) b!4943169))

(assert (= (and b!4943169 (not res!2109335)) b!4943171))

(assert (= (and b!4943171 c!843346) b!4943176))

(assert (= (and b!4943171 (not c!843346)) b!4943178))

(assert (= (and start!520126 (is-Cons!56913 testedP!110)) b!4943180))

(assert (= (and start!520126 condSetEmpty!27941) setIsEmpty!27941))

(assert (= (and start!520126 (not condSetEmpty!27941)) setNonEmpty!27941))

(assert (= setNonEmpty!27941 b!4943170))

(assert (= start!520126 b!4943177))

(assert (= (and start!520126 (is-Cons!56913 testedSuffix!70)) b!4943167))

(declare-fun m!5966180 () Bool)

(assert (=> b!4943174 m!5966180))

(declare-fun m!5966182 () Bool)

(assert (=> start!520126 m!5966182))

(declare-fun m!5966184 () Bool)

(assert (=> start!520126 m!5966184))

(declare-fun m!5966186 () Bool)

(assert (=> start!520126 m!5966186))

(declare-fun m!5966188 () Bool)

(assert (=> b!4943168 m!5966188))

(declare-fun m!5966190 () Bool)

(assert (=> b!4943179 m!5966190))

(declare-fun m!5966192 () Bool)

(assert (=> b!4943175 m!5966192))

(declare-fun m!5966194 () Bool)

(assert (=> b!4943175 m!5966194))

(declare-fun m!5966196 () Bool)

(assert (=> b!4943175 m!5966196))

(declare-fun m!5966198 () Bool)

(assert (=> b!4943175 m!5966198))

(declare-fun m!5966200 () Bool)

(assert (=> b!4943177 m!5966200))

(declare-fun m!5966202 () Bool)

(assert (=> b!4943176 m!5966202))

(declare-fun m!5966204 () Bool)

(assert (=> b!4943176 m!5966204))

(declare-fun m!5966206 () Bool)

(assert (=> b!4943176 m!5966206))

(declare-fun m!5966208 () Bool)

(assert (=> b!4943171 m!5966208))

(declare-fun m!5966210 () Bool)

(assert (=> b!4943171 m!5966210))

(declare-fun m!5966212 () Bool)

(assert (=> b!4943166 m!5966212))

(declare-fun m!5966214 () Bool)

(assert (=> b!4943166 m!5966214))

(declare-fun m!5966216 () Bool)

(assert (=> b!4943166 m!5966216))

(declare-fun m!5966218 () Bool)

(assert (=> b!4943169 m!5966218))

(declare-fun m!5966220 () Bool)

(assert (=> b!4943169 m!5966220))

(declare-fun m!5966222 () Bool)

(assert (=> b!4943169 m!5966222))

(declare-fun m!5966224 () Bool)

(assert (=> b!4943169 m!5966224))

(declare-fun m!5966226 () Bool)

(assert (=> b!4943169 m!5966226))

(assert (=> b!4943169 m!5966218))

(declare-fun m!5966228 () Bool)

(assert (=> b!4943169 m!5966228))

(declare-fun m!5966230 () Bool)

(assert (=> b!4943169 m!5966230))

(declare-fun m!5966232 () Bool)

(assert (=> b!4943173 m!5966232))

(declare-fun m!5966234 () Bool)

(assert (=> b!4943173 m!5966234))

(declare-fun m!5966236 () Bool)

(assert (=> b!4943173 m!5966236))

(declare-fun m!5966238 () Bool)

(assert (=> setNonEmpty!27941 m!5966238))

(push 1)

(assert (not b!4943176))

(assert (not b!4943170))

(assert (not b!4943180))

(assert tp_is_empty!36101)

(assert (not b!4943179))

(assert (not b!4943167))

(assert (not b!4943168))

(assert (not b!4943175))

(assert (not b!4943169))

(assert (not b!4943174))

(assert (not start!520126))

(assert (not b!4943177))

(assert (not b!4943166))

(assert (not setNonEmpty!27941))

(assert (not b!4943173))

(assert (not b!4943171))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1591727 () Bool)

(declare-fun lt!2037642 () Int)

(assert (=> d!1591727 (>= lt!2037642 0)))

(declare-fun e!3088462 () Int)

(assert (=> d!1591727 (= lt!2037642 e!3088462)))

(declare-fun c!843356 () Bool)

(assert (=> d!1591727 (= c!843356 (is-Nil!56913 lt!2037588))))

(assert (=> d!1591727 (= (size!37727 lt!2037588) lt!2037642)))

(declare-fun b!4943230 () Bool)

(assert (=> b!4943230 (= e!3088462 0)))

(declare-fun b!4943231 () Bool)

(assert (=> b!4943231 (= e!3088462 (+ 1 (size!37727 (t!367567 lt!2037588))))))

(assert (= (and d!1591727 c!843356) b!4943230))

(assert (= (and d!1591727 (not c!843356)) b!4943231))

(declare-fun m!5966300 () Bool)

(assert (=> b!4943231 m!5966300))

(assert (=> b!4943171 d!1591727))

(declare-fun d!1591729 () Bool)

(assert (=> d!1591729 (<= (size!37727 testedP!110) (size!37727 lt!2037588))))

(declare-fun lt!2037645 () Unit!147667)

(declare-fun choose!36408 (List!57037 List!57037) Unit!147667)

(assert (=> d!1591729 (= lt!2037645 (choose!36408 testedP!110 lt!2037588))))

(assert (=> d!1591729 (isPrefix!5060 testedP!110 lt!2037588)))

(assert (=> d!1591729 (= (lemmaIsPrefixThenSmallerEqSize!732 testedP!110 lt!2037588) lt!2037645)))

(declare-fun bs!1181467 () Bool)

(assert (= bs!1181467 d!1591729))

(assert (=> bs!1181467 m!5966188))

(assert (=> bs!1181467 m!5966208))

(declare-fun m!5966302 () Bool)

(assert (=> bs!1181467 m!5966302))

(assert (=> bs!1181467 m!5966212))

(assert (=> b!4943171 d!1591729))

(declare-fun bs!1181468 () Bool)

(declare-fun b!4943236 () Bool)

(declare-fun d!1591731 () Bool)

(assert (= bs!1181468 (and b!4943236 d!1591731)))

(declare-fun lambda!246356 () Int)

(declare-fun lambda!246355 () Int)

(assert (=> bs!1181468 (not (= lambda!246356 lambda!246355))))

(declare-fun bs!1181469 () Bool)

(declare-fun b!4943237 () Bool)

(assert (= bs!1181469 (and b!4943237 d!1591731)))

(declare-fun lambda!246357 () Int)

(assert (=> bs!1181469 (not (= lambda!246357 lambda!246355))))

(declare-fun bs!1181470 () Bool)

(assert (= bs!1181470 (and b!4943237 b!4943236)))

(assert (=> bs!1181470 (= lambda!246357 lambda!246356)))

(declare-fun lt!2037669 () Bool)

(declare-datatypes ((Option!14201 0))(
  ( (None!14200) (Some!14200 (v!50176 List!57037)) )
))
(declare-fun isEmpty!30638 (Option!14201) Bool)

(declare-fun getLanguageWitness!670 ((Set Context!6204)) Option!14201)

(assert (=> d!1591731 (= lt!2037669 (isEmpty!30638 (getLanguageWitness!670 z!3568)))))

(declare-fun forall!13231 ((Set Context!6204) Int) Bool)

(assert (=> d!1591731 (= lt!2037669 (forall!13231 z!3568 lambda!246355))))

(declare-fun lt!2037665 () Unit!147667)

(declare-fun e!3088469 () Unit!147667)

(assert (=> d!1591731 (= lt!2037665 e!3088469)))

(declare-fun c!843367 () Bool)

(assert (=> d!1591731 (= c!843367 (not (forall!13231 z!3568 lambda!246355)))))

(assert (=> d!1591731 (= (lostCauseZipper!778 z!3568) lt!2037669)))

(declare-fun Unit!147675 () Unit!147667)

(assert (=> b!4943237 (= e!3088469 Unit!147675)))

(declare-datatypes ((List!57041 0))(
  ( (Nil!56917) (Cons!56917 (h!63365 Context!6204) (t!367571 List!57041)) )
))
(declare-fun lt!2037667 () List!57041)

(declare-fun call!344960 () List!57041)

(assert (=> b!4943237 (= lt!2037667 call!344960)))

(declare-fun lt!2037663 () Unit!147667)

(declare-fun lemmaForallThenNotExists!204 (List!57041 Int) Unit!147667)

(assert (=> b!4943237 (= lt!2037663 (lemmaForallThenNotExists!204 lt!2037667 lambda!246355))))

(declare-fun call!344959 () Bool)

(assert (=> b!4943237 (not call!344959)))

(declare-fun lt!2037664 () Unit!147667)

(assert (=> b!4943237 (= lt!2037664 lt!2037663)))

(declare-fun bm!344955 () Bool)

(declare-fun toList!7983 ((Set Context!6204)) List!57041)

(assert (=> bm!344955 (= call!344960 (toList!7983 z!3568))))

(declare-fun bm!344954 () Bool)

(declare-fun lt!2037662 () List!57041)

(declare-fun exists!1315 (List!57041 Int) Bool)

(assert (=> bm!344954 (= call!344959 (exists!1315 (ite c!843367 lt!2037662 lt!2037667) (ite c!843367 lambda!246356 lambda!246357)))))

(declare-fun Unit!147676 () Unit!147667)

(assert (=> b!4943236 (= e!3088469 Unit!147676)))

(assert (=> b!4943236 (= lt!2037662 call!344960)))

(declare-fun lt!2037666 () Unit!147667)

(declare-fun lemmaNotForallThenExists!221 (List!57041 Int) Unit!147667)

(assert (=> b!4943236 (= lt!2037666 (lemmaNotForallThenExists!221 lt!2037662 lambda!246355))))

(assert (=> b!4943236 call!344959))

(declare-fun lt!2037668 () Unit!147667)

(assert (=> b!4943236 (= lt!2037668 lt!2037666)))

(assert (= (and d!1591731 c!843367) b!4943236))

(assert (= (and d!1591731 (not c!843367)) b!4943237))

(assert (= (or b!4943236 b!4943237) bm!344954))

(assert (= (or b!4943236 b!4943237) bm!344955))

(declare-fun m!5966304 () Bool)

(assert (=> d!1591731 m!5966304))

(assert (=> d!1591731 m!5966304))

(declare-fun m!5966306 () Bool)

(assert (=> d!1591731 m!5966306))

(declare-fun m!5966308 () Bool)

(assert (=> d!1591731 m!5966308))

(assert (=> d!1591731 m!5966308))

(declare-fun m!5966310 () Bool)

(assert (=> b!4943236 m!5966310))

(declare-fun m!5966312 () Bool)

(assert (=> b!4943237 m!5966312))

(declare-fun m!5966314 () Bool)

(assert (=> bm!344955 m!5966314))

(declare-fun m!5966316 () Bool)

(assert (=> bm!344954 m!5966316))

(assert (=> b!4943173 d!1591731))

(declare-fun d!1591735 () Bool)

(assert (=> d!1591735 (= testedSuffix!70 lt!2037587)))

(declare-fun lt!2037672 () Unit!147667)

(declare-fun choose!36409 (List!57037 List!57037 List!57037 List!57037 List!57037) Unit!147667)

(assert (=> d!1591735 (= lt!2037672 (choose!36409 testedP!110 testedSuffix!70 testedP!110 lt!2037587 lt!2037588))))

(assert (=> d!1591735 (isPrefix!5060 testedP!110 lt!2037588)))

(assert (=> d!1591735 (= (lemmaSamePrefixThenSameSuffix!2456 testedP!110 testedSuffix!70 testedP!110 lt!2037587 lt!2037588) lt!2037672)))

(declare-fun bs!1181471 () Bool)

(assert (= bs!1181471 d!1591735))

(declare-fun m!5966318 () Bool)

(assert (=> bs!1181471 m!5966318))

(assert (=> bs!1181471 m!5966212))

(assert (=> b!4943173 d!1591735))

(declare-fun d!1591737 () Bool)

(declare-fun lt!2037675 () List!57037)

(assert (=> d!1591737 (= (++!12437 testedP!110 lt!2037675) lt!2037588)))

(declare-fun e!3088472 () List!57037)

(assert (=> d!1591737 (= lt!2037675 e!3088472)))

(declare-fun c!843370 () Bool)

(assert (=> d!1591737 (= c!843370 (is-Cons!56913 testedP!110))))

(assert (=> d!1591737 (>= (size!37727 lt!2037588) (size!37727 testedP!110))))

(assert (=> d!1591737 (= (getSuffix!3042 lt!2037588 testedP!110) lt!2037675)))

(declare-fun b!4943242 () Bool)

(declare-fun tail!9728 (List!57037) List!57037)

(assert (=> b!4943242 (= e!3088472 (getSuffix!3042 (tail!9728 lt!2037588) (t!367567 testedP!110)))))

(declare-fun b!4943243 () Bool)

(assert (=> b!4943243 (= e!3088472 lt!2037588)))

(assert (= (and d!1591737 c!843370) b!4943242))

(assert (= (and d!1591737 (not c!843370)) b!4943243))

(declare-fun m!5966320 () Bool)

(assert (=> d!1591737 m!5966320))

(assert (=> d!1591737 m!5966208))

(assert (=> d!1591737 m!5966188))

(declare-fun m!5966322 () Bool)

(assert (=> b!4943242 m!5966322))

(assert (=> b!4943242 m!5966322))

(declare-fun m!5966324 () Bool)

(assert (=> b!4943242 m!5966324))

(assert (=> b!4943173 d!1591737))

(declare-fun d!1591739 () Bool)

(declare-fun lt!2037678 () Int)

(assert (=> d!1591739 (= lt!2037678 (size!37727 (list!18110 totalInput!685)))))

(declare-fun size!37731 (Conc!14971) Int)

(assert (=> d!1591739 (= lt!2037678 (size!37731 (c!843348 totalInput!685)))))

(assert (=> d!1591739 (= (size!37728 totalInput!685) lt!2037678)))

(declare-fun bs!1181472 () Bool)

(assert (= bs!1181472 d!1591739))

(assert (=> bs!1181472 m!5966182))

(assert (=> bs!1181472 m!5966182))

(declare-fun m!5966326 () Bool)

(assert (=> bs!1181472 m!5966326))

(declare-fun m!5966328 () Bool)

(assert (=> bs!1181472 m!5966328))

(assert (=> b!4943174 d!1591739))

(declare-fun d!1591741 () Bool)

(declare-fun e!3088480 () Bool)

(assert (=> d!1591741 e!3088480))

(declare-fun res!2109372 () Bool)

(assert (=> d!1591741 (=> res!2109372 e!3088480)))

(declare-fun lt!2037681 () Bool)

(assert (=> d!1591741 (= res!2109372 (not lt!2037681))))

(declare-fun e!3088481 () Bool)

(assert (=> d!1591741 (= lt!2037681 e!3088481)))

(declare-fun res!2109373 () Bool)

(assert (=> d!1591741 (=> res!2109373 e!3088481)))

(assert (=> d!1591741 (= res!2109373 (is-Nil!56913 testedP!110))))

(assert (=> d!1591741 (= (isPrefix!5060 testedP!110 lt!2037588) lt!2037681)))

(declare-fun b!4943252 () Bool)

(declare-fun e!3088479 () Bool)

(assert (=> b!4943252 (= e!3088481 e!3088479)))

(declare-fun res!2109374 () Bool)

(assert (=> b!4943252 (=> (not res!2109374) (not e!3088479))))

(assert (=> b!4943252 (= res!2109374 (not (is-Nil!56913 lt!2037588)))))

(declare-fun b!4943255 () Bool)

(assert (=> b!4943255 (= e!3088480 (>= (size!37727 lt!2037588) (size!37727 testedP!110)))))

(declare-fun b!4943253 () Bool)

(declare-fun res!2109371 () Bool)

(assert (=> b!4943253 (=> (not res!2109371) (not e!3088479))))

(assert (=> b!4943253 (= res!2109371 (= (head!10589 testedP!110) (head!10589 lt!2037588)))))

(declare-fun b!4943254 () Bool)

(assert (=> b!4943254 (= e!3088479 (isPrefix!5060 (tail!9728 testedP!110) (tail!9728 lt!2037588)))))

(assert (= (and d!1591741 (not res!2109373)) b!4943252))

(assert (= (and b!4943252 res!2109374) b!4943253))

(assert (= (and b!4943253 res!2109371) b!4943254))

(assert (= (and d!1591741 (not res!2109372)) b!4943255))

(assert (=> b!4943255 m!5966208))

(assert (=> b!4943255 m!5966188))

(declare-fun m!5966330 () Bool)

(assert (=> b!4943253 m!5966330))

(declare-fun m!5966332 () Bool)

(assert (=> b!4943253 m!5966332))

(declare-fun m!5966334 () Bool)

(assert (=> b!4943254 m!5966334))

(assert (=> b!4943254 m!5966322))

(assert (=> b!4943254 m!5966334))

(assert (=> b!4943254 m!5966322))

(declare-fun m!5966336 () Bool)

(assert (=> b!4943254 m!5966336))

(assert (=> b!4943166 d!1591741))

(declare-fun d!1591743 () Bool)

(declare-fun e!3088483 () Bool)

(assert (=> d!1591743 e!3088483))

(declare-fun res!2109376 () Bool)

(assert (=> d!1591743 (=> res!2109376 e!3088483)))

(declare-fun lt!2037682 () Bool)

(assert (=> d!1591743 (= res!2109376 (not lt!2037682))))

(declare-fun e!3088484 () Bool)

(assert (=> d!1591743 (= lt!2037682 e!3088484)))

(declare-fun res!2109377 () Bool)

(assert (=> d!1591743 (=> res!2109377 e!3088484)))

(assert (=> d!1591743 (= res!2109377 (is-Nil!56913 testedP!110))))

(assert (=> d!1591743 (= (isPrefix!5060 testedP!110 lt!2037582) lt!2037682)))

(declare-fun b!4943256 () Bool)

(declare-fun e!3088482 () Bool)

(assert (=> b!4943256 (= e!3088484 e!3088482)))

(declare-fun res!2109378 () Bool)

(assert (=> b!4943256 (=> (not res!2109378) (not e!3088482))))

(assert (=> b!4943256 (= res!2109378 (not (is-Nil!56913 lt!2037582)))))

(declare-fun b!4943259 () Bool)

(assert (=> b!4943259 (= e!3088483 (>= (size!37727 lt!2037582) (size!37727 testedP!110)))))

(declare-fun b!4943257 () Bool)

(declare-fun res!2109375 () Bool)

(assert (=> b!4943257 (=> (not res!2109375) (not e!3088482))))

(assert (=> b!4943257 (= res!2109375 (= (head!10589 testedP!110) (head!10589 lt!2037582)))))

(declare-fun b!4943258 () Bool)

(assert (=> b!4943258 (= e!3088482 (isPrefix!5060 (tail!9728 testedP!110) (tail!9728 lt!2037582)))))

(assert (= (and d!1591743 (not res!2109377)) b!4943256))

(assert (= (and b!4943256 res!2109378) b!4943257))

(assert (= (and b!4943257 res!2109375) b!4943258))

(assert (= (and d!1591743 (not res!2109376)) b!4943259))

(declare-fun m!5966338 () Bool)

(assert (=> b!4943259 m!5966338))

(assert (=> b!4943259 m!5966188))

(assert (=> b!4943257 m!5966330))

(declare-fun m!5966340 () Bool)

(assert (=> b!4943257 m!5966340))

(assert (=> b!4943258 m!5966334))

(declare-fun m!5966342 () Bool)

(assert (=> b!4943258 m!5966342))

(assert (=> b!4943258 m!5966334))

(assert (=> b!4943258 m!5966342))

(declare-fun m!5966344 () Bool)

(assert (=> b!4943258 m!5966344))

(assert (=> b!4943166 d!1591743))

(declare-fun d!1591745 () Bool)

(assert (=> d!1591745 (isPrefix!5060 testedP!110 (++!12437 testedP!110 testedSuffix!70))))

(declare-fun lt!2037685 () Unit!147667)

(declare-fun choose!36410 (List!57037 List!57037) Unit!147667)

(assert (=> d!1591745 (= lt!2037685 (choose!36410 testedP!110 testedSuffix!70))))

(assert (=> d!1591745 (= (lemmaConcatTwoListThenFirstIsPrefix!3284 testedP!110 testedSuffix!70) lt!2037685)))

(declare-fun bs!1181473 () Bool)

(assert (= bs!1181473 d!1591745))

(assert (=> bs!1181473 m!5966184))

(assert (=> bs!1181473 m!5966184))

(declare-fun m!5966346 () Bool)

(assert (=> bs!1181473 m!5966346))

(declare-fun m!5966348 () Bool)

(assert (=> bs!1181473 m!5966348))

(assert (=> b!4943166 d!1591745))

(declare-fun b!4943268 () Bool)

(declare-fun e!3088490 () List!57037)

(assert (=> b!4943268 (= e!3088490 lt!2037583)))

(declare-fun b!4943271 () Bool)

(declare-fun lt!2037688 () List!57037)

(declare-fun e!3088489 () Bool)

(assert (=> b!4943271 (= e!3088489 (or (not (= lt!2037583 Nil!56913)) (= lt!2037688 lt!2037584)))))

(declare-fun b!4943269 () Bool)

(assert (=> b!4943269 (= e!3088490 (Cons!56913 (h!63361 lt!2037584) (++!12437 (t!367567 lt!2037584) lt!2037583)))))

(declare-fun b!4943270 () Bool)

(declare-fun res!2109384 () Bool)

(assert (=> b!4943270 (=> (not res!2109384) (not e!3088489))))

(assert (=> b!4943270 (= res!2109384 (= (size!37727 lt!2037688) (+ (size!37727 lt!2037584) (size!37727 lt!2037583))))))

(declare-fun d!1591747 () Bool)

(assert (=> d!1591747 e!3088489))

(declare-fun res!2109383 () Bool)

(assert (=> d!1591747 (=> (not res!2109383) (not e!3088489))))

(declare-fun content!10128 (List!57037) (Set C!27154))

(assert (=> d!1591747 (= res!2109383 (= (content!10128 lt!2037688) (set.union (content!10128 lt!2037584) (content!10128 lt!2037583))))))

(assert (=> d!1591747 (= lt!2037688 e!3088490)))

(declare-fun c!843373 () Bool)

(assert (=> d!1591747 (= c!843373 (is-Nil!56913 lt!2037584))))

(assert (=> d!1591747 (= (++!12437 lt!2037584 lt!2037583) lt!2037688)))

(assert (= (and d!1591747 c!843373) b!4943268))

(assert (= (and d!1591747 (not c!843373)) b!4943269))

(assert (= (and d!1591747 res!2109383) b!4943270))

(assert (= (and b!4943270 res!2109384) b!4943271))

(declare-fun m!5966350 () Bool)

(assert (=> b!4943269 m!5966350))

(declare-fun m!5966352 () Bool)

(assert (=> b!4943270 m!5966352))

(declare-fun m!5966354 () Bool)

(assert (=> b!4943270 m!5966354))

(declare-fun m!5966356 () Bool)

(assert (=> b!4943270 m!5966356))

(declare-fun m!5966358 () Bool)

(assert (=> d!1591747 m!5966358))

(declare-fun m!5966360 () Bool)

(assert (=> d!1591747 m!5966360))

(declare-fun m!5966362 () Bool)

(assert (=> d!1591747 m!5966362))

(assert (=> b!4943175 d!1591747))

(declare-fun d!1591749 () Bool)

(declare-fun list!18112 (Conc!14971) List!57037)

(assert (=> d!1591749 (= (list!18110 (_2!34034 lt!2037581)) (list!18112 (c!843348 (_2!34034 lt!2037581))))))

(declare-fun bs!1181474 () Bool)

(assert (= bs!1181474 d!1591749))

(declare-fun m!5966364 () Bool)

(assert (=> bs!1181474 m!5966364))

(assert (=> b!4943175 d!1591749))

(declare-fun d!1591751 () Bool)

(assert (=> d!1591751 (= (list!18110 (_1!34034 lt!2037581)) (list!18112 (c!843348 (_1!34034 lt!2037581))))))

(declare-fun bs!1181475 () Bool)

(assert (= bs!1181475 d!1591751))

(declare-fun m!5966366 () Bool)

(assert (=> bs!1181475 m!5966366))

(assert (=> b!4943175 d!1591751))

(declare-fun d!1591753 () Bool)

(declare-fun e!3088493 () Bool)

(assert (=> d!1591753 e!3088493))

(declare-fun res!2109389 () Bool)

(assert (=> d!1591753 (=> (not res!2109389) (not e!3088493))))

(declare-fun lt!2037693 () tuple2!61462)

(declare-fun isBalanced!4133 (Conc!14971) Bool)

(assert (=> d!1591753 (= res!2109389 (isBalanced!4133 (c!843348 (_1!34034 lt!2037693))))))

(declare-datatypes ((tuple2!61466 0))(
  ( (tuple2!61467 (_1!34036 Conc!14971) (_2!34036 Conc!14971)) )
))
(declare-fun lt!2037694 () tuple2!61466)

(assert (=> d!1591753 (= lt!2037693 (tuple2!61463 (BalanceConc!29373 (_1!34036 lt!2037694)) (BalanceConc!29373 (_2!34036 lt!2037694))))))

(declare-fun splitAt!379 (Conc!14971 Int) tuple2!61466)

(assert (=> d!1591753 (= lt!2037694 (splitAt!379 (c!843348 totalInput!685) testedPSize!70))))

(assert (=> d!1591753 (isBalanced!4133 (c!843348 totalInput!685))))

(assert (=> d!1591753 (= (splitAt!377 totalInput!685 testedPSize!70) lt!2037693)))

(declare-fun b!4943276 () Bool)

(declare-fun res!2109390 () Bool)

(assert (=> b!4943276 (=> (not res!2109390) (not e!3088493))))

(assert (=> b!4943276 (= res!2109390 (isBalanced!4133 (c!843348 (_2!34034 lt!2037693))))))

(declare-fun b!4943277 () Bool)

(declare-datatypes ((tuple2!61468 0))(
  ( (tuple2!61469 (_1!34037 List!57037) (_2!34037 List!57037)) )
))
(declare-fun splitAtIndex!139 (List!57037 Int) tuple2!61468)

(assert (=> b!4943277 (= e!3088493 (= (tuple2!61469 (list!18110 (_1!34034 lt!2037693)) (list!18110 (_2!34034 lt!2037693))) (splitAtIndex!139 (list!18110 totalInput!685) testedPSize!70)))))

(assert (= (and d!1591753 res!2109389) b!4943276))

(assert (= (and b!4943276 res!2109390) b!4943277))

(declare-fun m!5966368 () Bool)

(assert (=> d!1591753 m!5966368))

(declare-fun m!5966370 () Bool)

(assert (=> d!1591753 m!5966370))

(declare-fun m!5966372 () Bool)

(assert (=> d!1591753 m!5966372))

(declare-fun m!5966374 () Bool)

(assert (=> b!4943276 m!5966374))

(declare-fun m!5966376 () Bool)

(assert (=> b!4943277 m!5966376))

(declare-fun m!5966378 () Bool)

(assert (=> b!4943277 m!5966378))

(assert (=> b!4943277 m!5966182))

(assert (=> b!4943277 m!5966182))

(declare-fun m!5966380 () Bool)

(assert (=> b!4943277 m!5966380))

(assert (=> b!4943175 d!1591753))

(declare-fun d!1591755 () Bool)

(assert (=> d!1591755 (isPrefix!5060 lt!2037588 lt!2037588)))

(declare-fun lt!2037697 () Unit!147667)

(declare-fun choose!36411 (List!57037 List!57037) Unit!147667)

(assert (=> d!1591755 (= lt!2037697 (choose!36411 lt!2037588 lt!2037588))))

(assert (=> d!1591755 (= (lemmaIsPrefixRefl!3412 lt!2037588 lt!2037588) lt!2037697)))

(declare-fun bs!1181476 () Bool)

(assert (= bs!1181476 d!1591755))

(assert (=> bs!1181476 m!5966204))

(declare-fun m!5966382 () Bool)

(assert (=> bs!1181476 m!5966382))

(assert (=> b!4943176 d!1591755))

(declare-fun d!1591757 () Bool)

(declare-fun e!3088495 () Bool)

(assert (=> d!1591757 e!3088495))

(declare-fun res!2109392 () Bool)

(assert (=> d!1591757 (=> res!2109392 e!3088495)))

(declare-fun lt!2037698 () Bool)

(assert (=> d!1591757 (= res!2109392 (not lt!2037698))))

(declare-fun e!3088496 () Bool)

(assert (=> d!1591757 (= lt!2037698 e!3088496)))

(declare-fun res!2109393 () Bool)

(assert (=> d!1591757 (=> res!2109393 e!3088496)))

(assert (=> d!1591757 (= res!2109393 (is-Nil!56913 lt!2037588))))

(assert (=> d!1591757 (= (isPrefix!5060 lt!2037588 lt!2037588) lt!2037698)))

(declare-fun b!4943278 () Bool)

(declare-fun e!3088494 () Bool)

(assert (=> b!4943278 (= e!3088496 e!3088494)))

(declare-fun res!2109394 () Bool)

(assert (=> b!4943278 (=> (not res!2109394) (not e!3088494))))

(assert (=> b!4943278 (= res!2109394 (not (is-Nil!56913 lt!2037588)))))

(declare-fun b!4943281 () Bool)

(assert (=> b!4943281 (= e!3088495 (>= (size!37727 lt!2037588) (size!37727 lt!2037588)))))

(declare-fun b!4943279 () Bool)

(declare-fun res!2109391 () Bool)

(assert (=> b!4943279 (=> (not res!2109391) (not e!3088494))))

(assert (=> b!4943279 (= res!2109391 (= (head!10589 lt!2037588) (head!10589 lt!2037588)))))

(declare-fun b!4943280 () Bool)

(assert (=> b!4943280 (= e!3088494 (isPrefix!5060 (tail!9728 lt!2037588) (tail!9728 lt!2037588)))))

(assert (= (and d!1591757 (not res!2109393)) b!4943278))

(assert (= (and b!4943278 res!2109394) b!4943279))

(assert (= (and b!4943279 res!2109391) b!4943280))

(assert (= (and d!1591757 (not res!2109392)) b!4943281))

(assert (=> b!4943281 m!5966208))

(assert (=> b!4943281 m!5966208))

(assert (=> b!4943279 m!5966332))

(assert (=> b!4943279 m!5966332))

(assert (=> b!4943280 m!5966322))

(assert (=> b!4943280 m!5966322))

(assert (=> b!4943280 m!5966322))

(assert (=> b!4943280 m!5966322))

(declare-fun m!5966384 () Bool)

(assert (=> b!4943280 m!5966384))

(assert (=> b!4943176 d!1591757))

(declare-fun d!1591759 () Bool)

(assert (=> d!1591759 (= lt!2037588 testedP!110)))

(declare-fun lt!2037701 () Unit!147667)

(declare-fun choose!36412 (List!57037 List!57037 List!57037) Unit!147667)

(assert (=> d!1591759 (= lt!2037701 (choose!36412 lt!2037588 testedP!110 lt!2037588))))

(assert (=> d!1591759 (isPrefix!5060 lt!2037588 lt!2037588)))

(assert (=> d!1591759 (= (lemmaIsPrefixSameLengthThenSameList!1170 lt!2037588 testedP!110 lt!2037588) lt!2037701)))

(declare-fun bs!1181477 () Bool)

(assert (= bs!1181477 d!1591759))

(declare-fun m!5966386 () Bool)

(assert (=> bs!1181477 m!5966386))

(assert (=> bs!1181477 m!5966204))

(assert (=> b!4943176 d!1591759))

(declare-fun d!1591761 () Bool)

(declare-fun lt!2037702 () Int)

(assert (=> d!1591761 (>= lt!2037702 0)))

(declare-fun e!3088497 () Int)

(assert (=> d!1591761 (= lt!2037702 e!3088497)))

(declare-fun c!843374 () Bool)

(assert (=> d!1591761 (= c!843374 (is-Nil!56913 testedP!110))))

(assert (=> d!1591761 (= (size!37727 testedP!110) lt!2037702)))

(declare-fun b!4943282 () Bool)

(assert (=> b!4943282 (= e!3088497 0)))

(declare-fun b!4943283 () Bool)

(assert (=> b!4943283 (= e!3088497 (+ 1 (size!37727 (t!367567 testedP!110))))))

(assert (= (and d!1591761 c!843374) b!4943282))

(assert (= (and d!1591761 (not c!843374)) b!4943283))

(declare-fun m!5966388 () Bool)

(assert (=> b!4943283 m!5966388))

(assert (=> b!4943168 d!1591761))

(declare-fun d!1591763 () Bool)

(declare-fun lambda!246360 () Int)

(declare-fun forall!13232 (List!57038 Int) Bool)

(assert (=> d!1591763 (= (inv!74041 setElem!27941) (forall!13232 (exprs!3602 setElem!27941) lambda!246360))))

(declare-fun bs!1181478 () Bool)

(assert (= bs!1181478 d!1591763))

(declare-fun m!5966390 () Bool)

(assert (=> bs!1181478 m!5966390))

(assert (=> setNonEmpty!27941 d!1591763))

(declare-fun d!1591765 () Bool)

(declare-fun c!843377 () Bool)

(assert (=> d!1591765 (= c!843377 (is-Node!14971 (c!843348 totalInput!685)))))

(declare-fun e!3088502 () Bool)

(assert (=> d!1591765 (= (inv!74043 (c!843348 totalInput!685)) e!3088502)))

(declare-fun b!4943290 () Bool)

(declare-fun inv!74047 (Conc!14971) Bool)

(assert (=> b!4943290 (= e!3088502 (inv!74047 (c!843348 totalInput!685)))))

(declare-fun b!4943291 () Bool)

(declare-fun e!3088503 () Bool)

(assert (=> b!4943291 (= e!3088502 e!3088503)))

(declare-fun res!2109397 () Bool)

(assert (=> b!4943291 (= res!2109397 (not (is-Leaf!24890 (c!843348 totalInput!685))))))

(assert (=> b!4943291 (=> res!2109397 e!3088503)))

(declare-fun b!4943292 () Bool)

(declare-fun inv!74048 (Conc!14971) Bool)

(assert (=> b!4943292 (= e!3088503 (inv!74048 (c!843348 totalInput!685)))))

(assert (= (and d!1591765 c!843377) b!4943290))

(assert (= (and d!1591765 (not c!843377)) b!4943291))

(assert (= (and b!4943291 (not res!2109397)) b!4943292))

(declare-fun m!5966392 () Bool)

(assert (=> b!4943290 m!5966392))

(declare-fun m!5966394 () Bool)

(assert (=> b!4943292 m!5966394))

(assert (=> b!4943177 d!1591765))

(declare-fun d!1591767 () Bool)

(declare-fun lt!2037705 () C!27154)

(declare-fun contains!19487 (List!57037 C!27154) Bool)

(assert (=> d!1591767 (contains!19487 lt!2037588 lt!2037705)))

(declare-fun e!3088508 () C!27154)

(assert (=> d!1591767 (= lt!2037705 e!3088508)))

(declare-fun c!843380 () Bool)

(assert (=> d!1591767 (= c!843380 (= testedPSize!70 0))))

(declare-fun e!3088509 () Bool)

(assert (=> d!1591767 e!3088509))

(declare-fun res!2109400 () Bool)

(assert (=> d!1591767 (=> (not res!2109400) (not e!3088509))))

(assert (=> d!1591767 (= res!2109400 (<= 0 testedPSize!70))))

(assert (=> d!1591767 (= (apply!13800 lt!2037588 testedPSize!70) lt!2037705)))

(declare-fun b!4943299 () Bool)

(assert (=> b!4943299 (= e!3088509 (< testedPSize!70 (size!37727 lt!2037588)))))

(declare-fun b!4943300 () Bool)

(assert (=> b!4943300 (= e!3088508 (head!10589 lt!2037588))))

(declare-fun b!4943301 () Bool)

(assert (=> b!4943301 (= e!3088508 (apply!13800 (tail!9728 lt!2037588) (- testedPSize!70 1)))))

(assert (= (and d!1591767 res!2109400) b!4943299))

(assert (= (and d!1591767 c!843380) b!4943300))

(assert (= (and d!1591767 (not c!843380)) b!4943301))

(declare-fun m!5966396 () Bool)

(assert (=> d!1591767 m!5966396))

(assert (=> b!4943299 m!5966208))

(assert (=> b!4943300 m!5966332))

(assert (=> b!4943301 m!5966322))

(assert (=> b!4943301 m!5966322))

(declare-fun m!5966398 () Bool)

(assert (=> b!4943301 m!5966398))

(assert (=> b!4943169 d!1591767))

(declare-fun d!1591769 () Bool)

(assert (=> d!1591769 (and (= lt!2037584 testedP!110) (= lt!2037583 testedSuffix!70))))

(declare-fun lt!2037708 () Unit!147667)

(declare-fun choose!36413 (List!57037 List!57037 List!57037 List!57037) Unit!147667)

(assert (=> d!1591769 (= lt!2037708 (choose!36413 lt!2037584 lt!2037583 testedP!110 testedSuffix!70))))

(assert (=> d!1591769 (= (++!12437 lt!2037584 lt!2037583) (++!12437 testedP!110 testedSuffix!70))))

(assert (=> d!1591769 (= (lemmaConcatSameAndSameSizesThenSameLists!718 lt!2037584 lt!2037583 testedP!110 testedSuffix!70) lt!2037708)))

(declare-fun bs!1181479 () Bool)

(assert (= bs!1181479 d!1591769))

(declare-fun m!5966400 () Bool)

(assert (=> bs!1181479 m!5966400))

(assert (=> bs!1181479 m!5966192))

(assert (=> bs!1181479 m!5966184))

(assert (=> b!4943169 d!1591769))

(declare-fun d!1591771 () Bool)

(assert (=> d!1591771 (= (head!10589 testedSuffix!70) (h!63361 testedSuffix!70))))

(assert (=> b!4943169 d!1591771))

(declare-fun b!4943320 () Bool)

(declare-fun e!3088521 () Int)

(declare-fun call!344963 () Int)

(assert (=> b!4943320 (= e!3088521 call!344963)))

(declare-fun b!4943321 () Bool)

(declare-fun e!3088522 () List!57037)

(declare-fun e!3088523 () List!57037)

(assert (=> b!4943321 (= e!3088522 e!3088523)))

(declare-fun c!843389 () Bool)

(assert (=> b!4943321 (= c!843389 (<= testedPSize!70 0))))

(declare-fun b!4943322 () Bool)

(assert (=> b!4943322 (= e!3088522 Nil!56913)))

(declare-fun d!1591773 () Bool)

(declare-fun e!3088524 () Bool)

(assert (=> d!1591773 e!3088524))

(declare-fun res!2109403 () Bool)

(assert (=> d!1591773 (=> (not res!2109403) (not e!3088524))))

(declare-fun lt!2037711 () List!57037)

(assert (=> d!1591773 (= res!2109403 (set.subset (content!10128 lt!2037711) (content!10128 lt!2037588)))))

(assert (=> d!1591773 (= lt!2037711 e!3088522)))

(declare-fun c!843390 () Bool)

(assert (=> d!1591773 (= c!843390 (is-Nil!56913 lt!2037588))))

(assert (=> d!1591773 (= (drop!2283 lt!2037588 testedPSize!70) lt!2037711)))

(declare-fun b!4943323 () Bool)

(assert (=> b!4943323 (= e!3088523 (drop!2283 (t!367567 lt!2037588) (- testedPSize!70 1)))))

(declare-fun b!4943324 () Bool)

(declare-fun e!3088520 () Int)

(assert (=> b!4943324 (= e!3088520 0)))

(declare-fun b!4943325 () Bool)

(assert (=> b!4943325 (= e!3088520 (- call!344963 testedPSize!70))))

(declare-fun b!4943326 () Bool)

(assert (=> b!4943326 (= e!3088524 (= (size!37727 lt!2037711) e!3088521))))

(declare-fun c!843392 () Bool)

(assert (=> b!4943326 (= c!843392 (<= testedPSize!70 0))))

(declare-fun b!4943327 () Bool)

(assert (=> b!4943327 (= e!3088523 lt!2037588)))

(declare-fun bm!344958 () Bool)

(assert (=> bm!344958 (= call!344963 (size!37727 lt!2037588))))

(declare-fun b!4943328 () Bool)

(assert (=> b!4943328 (= e!3088521 e!3088520)))

(declare-fun c!843391 () Bool)

(assert (=> b!4943328 (= c!843391 (>= testedPSize!70 call!344963))))

(assert (= (and d!1591773 c!843390) b!4943322))

(assert (= (and d!1591773 (not c!843390)) b!4943321))

(assert (= (and b!4943321 c!843389) b!4943327))

(assert (= (and b!4943321 (not c!843389)) b!4943323))

(assert (= (and d!1591773 res!2109403) b!4943326))

(assert (= (and b!4943326 c!843392) b!4943320))

(assert (= (and b!4943326 (not c!843392)) b!4943328))

(assert (= (and b!4943328 c!843391) b!4943324))

(assert (= (and b!4943328 (not c!843391)) b!4943325))

(assert (= (or b!4943320 b!4943328 b!4943325) bm!344958))

(declare-fun m!5966402 () Bool)

(assert (=> d!1591773 m!5966402))

(declare-fun m!5966404 () Bool)

(assert (=> d!1591773 m!5966404))

(declare-fun m!5966406 () Bool)

(assert (=> b!4943323 m!5966406))

(declare-fun m!5966408 () Bool)

(assert (=> b!4943326 m!5966408))

(assert (=> bm!344958 m!5966208))

(assert (=> b!4943169 d!1591773))

(declare-fun d!1591775 () Bool)

(assert (=> d!1591775 (= (head!10589 (drop!2283 lt!2037588 testedPSize!70)) (h!63361 (drop!2283 lt!2037588 testedPSize!70)))))

(assert (=> b!4943169 d!1591775))

(declare-fun d!1591777 () Bool)

(assert (=> d!1591777 (= (head!10589 (drop!2283 lt!2037588 testedPSize!70)) (apply!13800 lt!2037588 testedPSize!70))))

(declare-fun lt!2037714 () Unit!147667)

(declare-fun choose!36414 (List!57037 Int) Unit!147667)

(assert (=> d!1591777 (= lt!2037714 (choose!36414 lt!2037588 testedPSize!70))))

(declare-fun e!3088527 () Bool)

(assert (=> d!1591777 e!3088527))

(declare-fun res!2109406 () Bool)

(assert (=> d!1591777 (=> (not res!2109406) (not e!3088527))))

(assert (=> d!1591777 (= res!2109406 (>= testedPSize!70 0))))

(assert (=> d!1591777 (= (lemmaDropApply!1337 lt!2037588 testedPSize!70) lt!2037714)))

(declare-fun b!4943331 () Bool)

(assert (=> b!4943331 (= e!3088527 (< testedPSize!70 (size!37727 lt!2037588)))))

(assert (= (and d!1591777 res!2109406) b!4943331))

(assert (=> d!1591777 m!5966218))

(assert (=> d!1591777 m!5966218))

(assert (=> d!1591777 m!5966220))

(assert (=> d!1591777 m!5966228))

(declare-fun m!5966410 () Bool)

(assert (=> d!1591777 m!5966410))

(assert (=> b!4943331 m!5966208))

(assert (=> b!4943169 d!1591777))

(declare-fun d!1591779 () Bool)

(declare-fun lt!2037717 () C!27154)

(assert (=> d!1591779 (= lt!2037717 (apply!13800 (list!18110 totalInput!685) testedPSize!70))))

(declare-fun apply!13803 (Conc!14971 Int) C!27154)

(assert (=> d!1591779 (= lt!2037717 (apply!13803 (c!843348 totalInput!685) testedPSize!70))))

(declare-fun e!3088530 () Bool)

(assert (=> d!1591779 e!3088530))

(declare-fun res!2109409 () Bool)

(assert (=> d!1591779 (=> (not res!2109409) (not e!3088530))))

(assert (=> d!1591779 (= res!2109409 (<= 0 testedPSize!70))))

(assert (=> d!1591779 (= (apply!13799 totalInput!685 testedPSize!70) lt!2037717)))

(declare-fun b!4943334 () Bool)

(assert (=> b!4943334 (= e!3088530 (< testedPSize!70 (size!37728 totalInput!685)))))

(assert (= (and d!1591779 res!2109409) b!4943334))

(assert (=> d!1591779 m!5966182))

(assert (=> d!1591779 m!5966182))

(declare-fun m!5966412 () Bool)

(assert (=> d!1591779 m!5966412))

(declare-fun m!5966414 () Bool)

(assert (=> d!1591779 m!5966414))

(assert (=> b!4943334 m!5966180))

(assert (=> b!4943169 d!1591779))

(declare-fun d!1591781 () Bool)

(declare-fun lt!2037718 () Int)

(assert (=> d!1591781 (= lt!2037718 (size!37727 (list!18110 (_1!34034 lt!2037581))))))

(assert (=> d!1591781 (= lt!2037718 (size!37731 (c!843348 (_1!34034 lt!2037581))))))

(assert (=> d!1591781 (= (size!37728 (_1!34034 lt!2037581)) lt!2037718)))

(declare-fun bs!1181480 () Bool)

(assert (= bs!1181480 d!1591781))

(assert (=> bs!1181480 m!5966196))

(assert (=> bs!1181480 m!5966196))

(declare-fun m!5966416 () Bool)

(assert (=> bs!1181480 m!5966416))

(declare-fun m!5966418 () Bool)

(assert (=> bs!1181480 m!5966418))

(assert (=> b!4943179 d!1591781))

(declare-fun d!1591783 () Bool)

(assert (=> d!1591783 (= (list!18110 totalInput!685) (list!18112 (c!843348 totalInput!685)))))

(declare-fun bs!1181481 () Bool)

(assert (= bs!1181481 d!1591783))

(declare-fun m!5966420 () Bool)

(assert (=> bs!1181481 m!5966420))

(assert (=> start!520126 d!1591783))

(declare-fun b!4943335 () Bool)

(declare-fun e!3088532 () List!57037)

(assert (=> b!4943335 (= e!3088532 testedSuffix!70)))

(declare-fun lt!2037719 () List!57037)

(declare-fun b!4943338 () Bool)

(declare-fun e!3088531 () Bool)

(assert (=> b!4943338 (= e!3088531 (or (not (= testedSuffix!70 Nil!56913)) (= lt!2037719 testedP!110)))))

(declare-fun b!4943336 () Bool)

(assert (=> b!4943336 (= e!3088532 (Cons!56913 (h!63361 testedP!110) (++!12437 (t!367567 testedP!110) testedSuffix!70)))))

(declare-fun b!4943337 () Bool)

(declare-fun res!2109411 () Bool)

(assert (=> b!4943337 (=> (not res!2109411) (not e!3088531))))

(assert (=> b!4943337 (= res!2109411 (= (size!37727 lt!2037719) (+ (size!37727 testedP!110) (size!37727 testedSuffix!70))))))

(declare-fun d!1591785 () Bool)

(assert (=> d!1591785 e!3088531))

(declare-fun res!2109410 () Bool)

(assert (=> d!1591785 (=> (not res!2109410) (not e!3088531))))

(assert (=> d!1591785 (= res!2109410 (= (content!10128 lt!2037719) (set.union (content!10128 testedP!110) (content!10128 testedSuffix!70))))))

(assert (=> d!1591785 (= lt!2037719 e!3088532)))

(declare-fun c!843393 () Bool)

(assert (=> d!1591785 (= c!843393 (is-Nil!56913 testedP!110))))

(assert (=> d!1591785 (= (++!12437 testedP!110 testedSuffix!70) lt!2037719)))

(assert (= (and d!1591785 c!843393) b!4943335))

(assert (= (and d!1591785 (not c!843393)) b!4943336))

(assert (= (and d!1591785 res!2109410) b!4943337))

(assert (= (and b!4943337 res!2109411) b!4943338))

(declare-fun m!5966422 () Bool)

(assert (=> b!4943336 m!5966422))

(declare-fun m!5966424 () Bool)

(assert (=> b!4943337 m!5966424))

(assert (=> b!4943337 m!5966188))

(declare-fun m!5966426 () Bool)

(assert (=> b!4943337 m!5966426))

(declare-fun m!5966428 () Bool)

(assert (=> d!1591785 m!5966428))

(declare-fun m!5966430 () Bool)

(assert (=> d!1591785 m!5966430))

(declare-fun m!5966432 () Bool)

(assert (=> d!1591785 m!5966432))

(assert (=> start!520126 d!1591785))

(declare-fun d!1591787 () Bool)

(assert (=> d!1591787 (= (inv!74042 totalInput!685) (isBalanced!4133 (c!843348 totalInput!685)))))

(declare-fun bs!1181482 () Bool)

(assert (= bs!1181482 d!1591787))

(assert (=> bs!1181482 m!5966372))

(assert (=> start!520126 d!1591787))

(declare-fun b!4943343 () Bool)

(declare-fun e!3088535 () Bool)

(declare-fun tp!1386646 () Bool)

(assert (=> b!4943343 (= e!3088535 (and tp_is_empty!36101 tp!1386646))))

(assert (=> b!4943180 (= tp!1386624 e!3088535)))

(assert (= (and b!4943180 (is-Cons!56913 (t!367567 testedP!110))) b!4943343))

(declare-fun b!4943348 () Bool)

(declare-fun e!3088538 () Bool)

(declare-fun tp!1386651 () Bool)

(declare-fun tp!1386652 () Bool)

(assert (=> b!4943348 (= e!3088538 (and tp!1386651 tp!1386652))))

(assert (=> b!4943170 (= tp!1386628 e!3088538)))

(assert (= (and b!4943170 (is-Cons!56914 (exprs!3602 setElem!27941))) b!4943348))

(declare-fun b!4943349 () Bool)

(declare-fun e!3088539 () Bool)

(declare-fun tp!1386653 () Bool)

(assert (=> b!4943349 (= e!3088539 (and tp_is_empty!36101 tp!1386653))))

(assert (=> b!4943167 (= tp!1386625 e!3088539)))

(assert (= (and b!4943167 (is-Cons!56913 (t!367567 testedSuffix!70))) b!4943349))

(declare-fun condSetEmpty!27947 () Bool)

(assert (=> setNonEmpty!27941 (= condSetEmpty!27947 (= setRest!27941 (as set.empty (Set Context!6204))))))

(declare-fun setRes!27947 () Bool)

(assert (=> setNonEmpty!27941 (= tp!1386627 setRes!27947)))

(declare-fun setIsEmpty!27947 () Bool)

(assert (=> setIsEmpty!27947 setRes!27947))

(declare-fun setElem!27947 () Context!6204)

(declare-fun tp!1386658 () Bool)

(declare-fun setNonEmpty!27947 () Bool)

(declare-fun e!3088542 () Bool)

(assert (=> setNonEmpty!27947 (= setRes!27947 (and tp!1386658 (inv!74041 setElem!27947) e!3088542))))

(declare-fun setRest!27947 () (Set Context!6204))

(assert (=> setNonEmpty!27947 (= setRest!27941 (set.union (set.insert setElem!27947 (as set.empty (Set Context!6204))) setRest!27947))))

(declare-fun b!4943354 () Bool)

(declare-fun tp!1386659 () Bool)

(assert (=> b!4943354 (= e!3088542 tp!1386659)))

(assert (= (and setNonEmpty!27941 condSetEmpty!27947) setIsEmpty!27947))

(assert (= (and setNonEmpty!27941 (not condSetEmpty!27947)) setNonEmpty!27947))

(assert (= setNonEmpty!27947 b!4943354))

(declare-fun m!5966434 () Bool)

(assert (=> setNonEmpty!27947 m!5966434))

(declare-fun b!4943363 () Bool)

(declare-fun e!3088547 () Bool)

(declare-fun tp!1386667 () Bool)

(declare-fun tp!1386666 () Bool)

(assert (=> b!4943363 (= e!3088547 (and (inv!74043 (left!41523 (c!843348 totalInput!685))) tp!1386666 (inv!74043 (right!41853 (c!843348 totalInput!685))) tp!1386667))))

(declare-fun b!4943365 () Bool)

(declare-fun e!3088548 () Bool)

(declare-fun tp!1386668 () Bool)

(assert (=> b!4943365 (= e!3088548 tp!1386668)))

(declare-fun b!4943364 () Bool)

(declare-fun inv!74049 (IArray!30003) Bool)

(assert (=> b!4943364 (= e!3088547 (and (inv!74049 (xs!18297 (c!843348 totalInput!685))) e!3088548))))

(assert (=> b!4943177 (= tp!1386626 (and (inv!74043 (c!843348 totalInput!685)) e!3088547))))

(assert (= (and b!4943177 (is-Node!14971 (c!843348 totalInput!685))) b!4943363))

(assert (= b!4943364 b!4943365))

(assert (= (and b!4943177 (is-Leaf!24890 (c!843348 totalInput!685))) b!4943364))

(declare-fun m!5966436 () Bool)

(assert (=> b!4943363 m!5966436))

(declare-fun m!5966438 () Bool)

(assert (=> b!4943363 m!5966438))

(declare-fun m!5966440 () Bool)

(assert (=> b!4943364 m!5966440))

(assert (=> b!4943177 m!5966200))

(push 1)

(assert (not b!4943323))

(assert (not b!4943349))

(assert (not d!1591783))

(assert (not b!4943300))

(assert (not b!4943299))

(assert (not b!4943334))

(assert (not b!4943259))

(assert (not b!4943280))

(assert (not b!4943276))

(assert (not d!1591745))

(assert (not b!4943336))

(assert (not d!1591787))

(assert (not bm!344958))

(assert (not d!1591755))

(assert (not b!4943237))

(assert (not d!1591779))

(assert (not b!4943231))

(assert (not b!4943270))

(assert (not b!4943269))

(assert (not d!1591773))

(assert (not b!4943301))

(assert (not b!4943337))

(assert (not b!4943258))

(assert (not b!4943279))

(assert (not d!1591751))

(assert (not b!4943365))

(assert (not d!1591739))

(assert (not b!4943331))

(assert (not d!1591737))

(assert (not d!1591767))

(assert (not setNonEmpty!27947))

(assert (not d!1591731))

(assert (not b!4943354))

(assert (not b!4943348))

(assert (not b!4943254))

(assert (not d!1591735))

(assert (not b!4943253))

(assert (not b!4943242))

(assert (not b!4943363))

(assert (not d!1591777))

(assert (not b!4943343))

(assert (not b!4943236))

(assert (not b!4943177))

(assert (not b!4943255))

(assert tp_is_empty!36101)

(assert (not b!4943292))

(assert (not b!4943257))

(assert (not d!1591785))

(assert (not bm!344954))

(assert (not b!4943281))

(assert (not b!4943326))

(assert (not bm!344955))

(assert (not d!1591769))

(assert (not b!4943364))

(assert (not d!1591749))

(assert (not b!4943290))

(assert (not d!1591763))

(assert (not d!1591759))

(assert (not b!4943277))

(assert (not d!1591753))

(assert (not d!1591781))

(assert (not b!4943283))

(assert (not d!1591747))

(assert (not d!1591729))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

