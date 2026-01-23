; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!92380 () Bool)

(assert start!92380)

(declare-fun b!1085593 () Bool)

(assert (=> b!1085593 true))

(declare-fun bs!256571 () Bool)

(declare-fun b!1085584 () Bool)

(assert (= bs!256571 (and b!1085584 b!1085593)))

(declare-fun lambda!39868 () Int)

(declare-fun lambda!39867 () Int)

(assert (=> bs!256571 (not (= lambda!39868 lambda!39867))))

(declare-fun b!1085582 () Bool)

(declare-datatypes ((Unit!15687 0))(
  ( (Unit!15688) )
))
(declare-fun e!686574 () Unit!15687)

(declare-fun Unit!15689 () Unit!15687)

(assert (=> b!1085582 (= e!686574 Unit!15689)))

(declare-datatypes ((C!6570 0))(
  ( (C!6571 (val!3533 Int)) )
))
(declare-datatypes ((Regex!3000 0))(
  ( (ElementMatch!3000 (c!183465 C!6570)) (Concat!4833 (regOne!6512 Regex!3000) (regTwo!6512 Regex!3000)) (EmptyExpr!3000) (Star!3000 (reg!3329 Regex!3000)) (EmptyLang!3000) (Union!3000 (regOne!6513 Regex!3000) (regTwo!6513 Regex!3000)) )
))
(declare-datatypes ((List!10303 0))(
  ( (Nil!10287) (Cons!10287 (h!15688 Regex!3000) (t!101349 List!10303)) )
))
(declare-datatypes ((Context!960 0))(
  ( (Context!961 (exprs!980 List!10303)) )
))
(declare-fun z!1122 () (Set Context!960))

(declare-datatypes ((List!10304 0))(
  ( (Nil!10288) (Cons!10288 (h!15689 C!6570) (t!101350 List!10304)) )
))
(declare-fun s!2287 () List!10304)

(declare-fun b!1085583 () Bool)

(declare-fun e!686569 () Bool)

(declare-fun matchZipper!48 ((Set Context!960) List!10304) Bool)

(declare-fun filter!162 ((Set Context!960) Int) (Set Context!960))

(assert (=> b!1085583 (= e!686569 (matchZipper!48 (filter!162 z!1122 lambda!39868) s!2287))))

(declare-datatypes ((List!10305 0))(
  ( (Nil!10289) (Cons!10289 (h!15690 Context!960) (t!101351 List!10305)) )
))
(declare-fun lt!363154 () List!10305)

(declare-fun content!1473 (List!10305) (Set Context!960))

(assert (=> b!1085583 (matchZipper!48 (content!1473 lt!363154) s!2287)))

(declare-fun lt!363149 () Unit!15687)

(declare-fun lemmaExistsMatchingContextThenMatchingString!1 (List!10305 List!10304) Unit!15687)

(assert (=> b!1085583 (= lt!363149 (lemmaExistsMatchingContextThenMatchingString!1 lt!363154 s!2287))))

(declare-fun toList!618 ((Set Context!960)) List!10305)

(assert (=> b!1085583 (= lt!363154 (toList!618 (filter!162 z!1122 lambda!39868)))))

(declare-fun e!686572 () Bool)

(declare-fun e!686576 () Bool)

(assert (=> b!1085584 (= e!686572 e!686576)))

(declare-fun res!482866 () Bool)

(assert (=> b!1085584 (=> res!482866 e!686576)))

(declare-fun lt!363156 () Context!960)

(assert (=> b!1085584 (= res!482866 (not (set.member lt!363156 (filter!162 z!1122 lambda!39868))))))

(declare-fun lt!363155 () Unit!15687)

(declare-fun filterPost!13 ((Set Context!960) Int Context!960) Unit!15687)

(assert (=> b!1085584 (= lt!363155 (filterPost!13 z!1122 lambda!39868 lt!363156))))

(declare-fun b!1085585 () Bool)

(declare-fun e!686567 () Bool)

(declare-fun tp!324968 () Bool)

(assert (=> b!1085585 (= e!686567 tp!324968)))

(declare-fun b!1085586 () Bool)

(declare-fun res!482871 () Bool)

(declare-fun e!686566 () Bool)

(assert (=> b!1085586 (=> (not res!482871) (not e!686566))))

(assert (=> b!1085586 (= res!482871 (matchZipper!48 z!1122 s!2287))))

(declare-fun b!1085587 () Bool)

(assert (=> b!1085587 (= e!686576 e!686569)))

(declare-fun res!482870 () Bool)

(assert (=> b!1085587 (=> res!482870 e!686569)))

(declare-fun exists!142 ((Set Context!960) Int) Bool)

(assert (=> b!1085587 (= res!482870 (not (exists!142 (filter!162 z!1122 lambda!39868) lambda!39867)))))

(declare-fun lt!363158 () (Set Context!960))

(assert (=> b!1085587 (exists!142 lt!363158 lambda!39867)))

(declare-fun lt!363148 () Unit!15687)

(declare-fun lemmaContainsThenExists!22 ((Set Context!960) Context!960 Int) Unit!15687)

(assert (=> b!1085587 (= lt!363148 (lemmaContainsThenExists!22 lt!363158 lt!363156 lambda!39867))))

(assert (=> b!1085587 (= lt!363158 (filter!162 z!1122 lambda!39868))))

(declare-fun b!1085588 () Bool)

(declare-fun e!686571 () Bool)

(assert (=> b!1085588 (= e!686571 e!686572)))

(declare-fun res!482869 () Bool)

(assert (=> b!1085588 (=> res!482869 e!686572)))

(declare-fun lt!363157 () Bool)

(assert (=> b!1085588 (= res!482869 lt!363157)))

(declare-fun lt!363151 () Unit!15687)

(assert (=> b!1085588 (= lt!363151 e!686574)))

(declare-fun c!183464 () Bool)

(assert (=> b!1085588 (= c!183464 lt!363157)))

(declare-fun lostCause!223 (Context!960) Bool)

(assert (=> b!1085588 (= lt!363157 (lostCause!223 lt!363156))))

(declare-fun e!686570 () Bool)

(declare-fun b!1085589 () Bool)

(declare-fun zl!316 () List!10305)

(declare-fun tp!324966 () Bool)

(declare-fun inv!13214 (Context!960) Bool)

(assert (=> b!1085589 (= e!686570 (and (inv!13214 (h!15690 zl!316)) e!686567 tp!324966))))

(declare-fun b!1085590 () Bool)

(declare-fun e!686575 () Bool)

(declare-fun tp!324965 () Bool)

(assert (=> b!1085590 (= e!686575 tp!324965)))

(declare-fun b!1085591 () Bool)

(declare-fun Unit!15690 () Unit!15687)

(assert (=> b!1085591 (= e!686574 Unit!15690)))

(declare-fun lt!363152 () Unit!15687)

(declare-fun lt!363150 () (Set Context!960))

(declare-fun lemmaLostCauseCannotMatch!12 ((Set Context!960) List!10304) Unit!15687)

(assert (=> b!1085591 (= lt!363152 (lemmaLostCauseCannotMatch!12 lt!363150 s!2287))))

(assert (=> b!1085591 false))

(declare-fun res!482873 () Bool)

(assert (=> start!92380 (=> (not res!482873) (not e!686566))))

(assert (=> start!92380 (= res!482873 (= (toList!618 z!1122) zl!316))))

(assert (=> start!92380 e!686566))

(declare-fun condSetEmpty!7539 () Bool)

(assert (=> start!92380 (= condSetEmpty!7539 (= z!1122 (as set.empty (Set Context!960))))))

(declare-fun setRes!7539 () Bool)

(assert (=> start!92380 setRes!7539))

(assert (=> start!92380 e!686570))

(declare-fun e!686568 () Bool)

(assert (=> start!92380 e!686568))

(declare-fun b!1085592 () Bool)

(declare-fun e!686565 () Bool)

(assert (=> b!1085592 (= e!686565 e!686571)))

(declare-fun res!482867 () Bool)

(assert (=> b!1085592 (=> res!482867 e!686571)))

(assert (=> b!1085592 (= res!482867 (not (matchZipper!48 lt!363150 s!2287)))))

(assert (=> b!1085592 (= lt!363150 (set.insert lt!363156 (as set.empty (Set Context!960))))))

(declare-fun setIsEmpty!7539 () Bool)

(assert (=> setIsEmpty!7539 setRes!7539))

(declare-fun e!686573 () Bool)

(assert (=> b!1085593 (= e!686566 (not e!686573))))

(declare-fun res!482868 () Bool)

(assert (=> b!1085593 (=> res!482868 e!686573)))

(assert (=> b!1085593 (= res!482868 (not (exists!142 z!1122 lambda!39867)))))

(declare-fun exists!143 (List!10305 Int) Bool)

(assert (=> b!1085593 (exists!143 zl!316 lambda!39867)))

(declare-fun lt!363153 () Unit!15687)

(declare-fun lemmaZipperMatchesExistsMatchingContext!27 (List!10305 List!10304) Unit!15687)

(assert (=> b!1085593 (= lt!363153 (lemmaZipperMatchesExistsMatchingContext!27 zl!316 s!2287))))

(declare-fun b!1085594 () Bool)

(declare-fun tp_is_empty!5631 () Bool)

(declare-fun tp!324969 () Bool)

(assert (=> b!1085594 (= e!686568 (and tp_is_empty!5631 tp!324969))))

(declare-fun b!1085595 () Bool)

(assert (=> b!1085595 (= e!686573 e!686565)))

(declare-fun res!482872 () Bool)

(assert (=> b!1085595 (=> res!482872 e!686565)))

(assert (=> b!1085595 (= res!482872 (not (set.member lt!363156 z!1122)))))

(declare-fun getWitness!67 ((Set Context!960) Int) Context!960)

(assert (=> b!1085595 (= lt!363156 (getWitness!67 z!1122 lambda!39867))))

(declare-fun setElem!7539 () Context!960)

(declare-fun tp!324967 () Bool)

(declare-fun setNonEmpty!7539 () Bool)

(assert (=> setNonEmpty!7539 (= setRes!7539 (and tp!324967 (inv!13214 setElem!7539) e!686575))))

(declare-fun setRest!7539 () (Set Context!960))

(assert (=> setNonEmpty!7539 (= z!1122 (set.union (set.insert setElem!7539 (as set.empty (Set Context!960))) setRest!7539))))

(assert (= (and start!92380 res!482873) b!1085586))

(assert (= (and b!1085586 res!482871) b!1085593))

(assert (= (and b!1085593 (not res!482868)) b!1085595))

(assert (= (and b!1085595 (not res!482872)) b!1085592))

(assert (= (and b!1085592 (not res!482867)) b!1085588))

(assert (= (and b!1085588 c!183464) b!1085591))

(assert (= (and b!1085588 (not c!183464)) b!1085582))

(assert (= (and b!1085588 (not res!482869)) b!1085584))

(assert (= (and b!1085584 (not res!482866)) b!1085587))

(assert (= (and b!1085587 (not res!482870)) b!1085583))

(assert (= (and start!92380 condSetEmpty!7539) setIsEmpty!7539))

(assert (= (and start!92380 (not condSetEmpty!7539)) setNonEmpty!7539))

(assert (= setNonEmpty!7539 b!1085590))

(assert (= b!1085589 b!1085585))

(assert (= (and start!92380 (is-Cons!10289 zl!316)) b!1085589))

(assert (= (and start!92380 (is-Cons!10288 s!2287)) b!1085594))

(declare-fun m!1235209 () Bool)

(assert (=> b!1085588 m!1235209))

(declare-fun m!1235211 () Bool)

(assert (=> start!92380 m!1235211))

(declare-fun m!1235213 () Bool)

(assert (=> b!1085584 m!1235213))

(declare-fun m!1235215 () Bool)

(assert (=> b!1085584 m!1235215))

(declare-fun m!1235217 () Bool)

(assert (=> b!1085584 m!1235217))

(assert (=> b!1085583 m!1235213))

(declare-fun m!1235219 () Bool)

(assert (=> b!1085583 m!1235219))

(declare-fun m!1235221 () Bool)

(assert (=> b!1085583 m!1235221))

(assert (=> b!1085583 m!1235213))

(declare-fun m!1235223 () Bool)

(assert (=> b!1085583 m!1235223))

(assert (=> b!1085583 m!1235221))

(declare-fun m!1235225 () Bool)

(assert (=> b!1085583 m!1235225))

(declare-fun m!1235227 () Bool)

(assert (=> b!1085583 m!1235227))

(assert (=> b!1085583 m!1235213))

(assert (=> b!1085583 m!1235213))

(declare-fun m!1235229 () Bool)

(assert (=> b!1085586 m!1235229))

(declare-fun m!1235231 () Bool)

(assert (=> b!1085591 m!1235231))

(assert (=> b!1085587 m!1235213))

(declare-fun m!1235233 () Bool)

(assert (=> b!1085587 m!1235233))

(assert (=> b!1085587 m!1235213))

(declare-fun m!1235235 () Bool)

(assert (=> b!1085587 m!1235235))

(assert (=> b!1085587 m!1235213))

(declare-fun m!1235237 () Bool)

(assert (=> b!1085587 m!1235237))

(declare-fun m!1235239 () Bool)

(assert (=> b!1085589 m!1235239))

(declare-fun m!1235241 () Bool)

(assert (=> b!1085593 m!1235241))

(declare-fun m!1235243 () Bool)

(assert (=> b!1085593 m!1235243))

(declare-fun m!1235245 () Bool)

(assert (=> b!1085593 m!1235245))

(declare-fun m!1235247 () Bool)

(assert (=> b!1085592 m!1235247))

(declare-fun m!1235249 () Bool)

(assert (=> b!1085592 m!1235249))

(declare-fun m!1235251 () Bool)

(assert (=> setNonEmpty!7539 m!1235251))

(declare-fun m!1235253 () Bool)

(assert (=> b!1085595 m!1235253))

(declare-fun m!1235255 () Bool)

(assert (=> b!1085595 m!1235255))

(push 1)

(assert (not b!1085590))

(assert (not b!1085591))

(assert (not b!1085587))

(assert (not start!92380))

(assert (not b!1085584))

(assert (not b!1085589))

(assert (not b!1085594))

(assert tp_is_empty!5631)

(assert (not b!1085592))

(assert (not b!1085583))

(assert (not b!1085593))

(assert (not setNonEmpty!7539))

(assert (not b!1085588))

(assert (not b!1085586))

(assert (not b!1085595))

(assert (not b!1085585))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!304934 () Bool)

(declare-fun c!183494 () Bool)

(declare-fun isEmpty!6620 (List!10304) Bool)

(assert (=> d!304934 (= c!183494 (isEmpty!6620 s!2287))))

(declare-fun e!686615 () Bool)

(assert (=> d!304934 (= (matchZipper!48 lt!363150 s!2287) e!686615)))

(declare-fun b!1085646 () Bool)

(declare-fun nullableZipper!19 ((Set Context!960)) Bool)

(assert (=> b!1085646 (= e!686615 (nullableZipper!19 lt!363150))))

(declare-fun b!1085647 () Bool)

(declare-fun derivationStepZipper!17 ((Set Context!960) C!6570) (Set Context!960))

(declare-fun head!2005 (List!10304) C!6570)

(declare-fun tail!1567 (List!10304) List!10304)

(assert (=> b!1085647 (= e!686615 (matchZipper!48 (derivationStepZipper!17 lt!363150 (head!2005 s!2287)) (tail!1567 s!2287)))))

(assert (= (and d!304934 c!183494) b!1085646))

(assert (= (and d!304934 (not c!183494)) b!1085647))

(declare-fun m!1235305 () Bool)

(assert (=> d!304934 m!1235305))

(declare-fun m!1235307 () Bool)

(assert (=> b!1085646 m!1235307))

(declare-fun m!1235309 () Bool)

(assert (=> b!1085647 m!1235309))

(assert (=> b!1085647 m!1235309))

(declare-fun m!1235311 () Bool)

(assert (=> b!1085647 m!1235311))

(declare-fun m!1235313 () Bool)

(assert (=> b!1085647 m!1235313))

(assert (=> b!1085647 m!1235311))

(assert (=> b!1085647 m!1235313))

(declare-fun m!1235315 () Bool)

(assert (=> b!1085647 m!1235315))

(assert (=> b!1085592 d!304934))

(declare-fun d!304936 () Bool)

(assert (=> d!304936 (not (matchZipper!48 lt!363150 s!2287))))

(declare-fun lt!363194 () Unit!15687)

(declare-fun choose!6905 ((Set Context!960) List!10304) Unit!15687)

(assert (=> d!304936 (= lt!363194 (choose!6905 lt!363150 s!2287))))

(declare-fun lostCauseZipper!8 ((Set Context!960)) Bool)

(assert (=> d!304936 (lostCauseZipper!8 lt!363150)))

(assert (=> d!304936 (= (lemmaLostCauseCannotMatch!12 lt!363150 s!2287) lt!363194)))

(declare-fun bs!256573 () Bool)

(assert (= bs!256573 d!304936))

(assert (=> bs!256573 m!1235247))

(declare-fun m!1235317 () Bool)

(assert (=> bs!256573 m!1235317))

(declare-fun m!1235319 () Bool)

(assert (=> bs!256573 m!1235319))

(assert (=> b!1085591 d!304936))

(declare-fun d!304938 () Bool)

(declare-fun e!686618 () Bool)

(assert (=> d!304938 e!686618))

(declare-fun res!482900 () Bool)

(assert (=> d!304938 (=> (not res!482900) (not e!686618))))

(declare-fun lt!363197 () List!10305)

(declare-fun noDuplicate!182 (List!10305) Bool)

(assert (=> d!304938 (= res!482900 (noDuplicate!182 lt!363197))))

(declare-fun choose!6906 ((Set Context!960)) List!10305)

(assert (=> d!304938 (= lt!363197 (choose!6906 z!1122))))

(assert (=> d!304938 (= (toList!618 z!1122) lt!363197)))

(declare-fun b!1085650 () Bool)

(assert (=> b!1085650 (= e!686618 (= (content!1473 lt!363197) z!1122))))

(assert (= (and d!304938 res!482900) b!1085650))

(declare-fun m!1235321 () Bool)

(assert (=> d!304938 m!1235321))

(declare-fun m!1235323 () Bool)

(assert (=> d!304938 m!1235323))

(declare-fun m!1235325 () Bool)

(assert (=> b!1085650 m!1235325))

(assert (=> start!92380 d!304938))

(declare-fun d!304940 () Bool)

(declare-fun lambda!39895 () Int)

(declare-fun exists!146 (List!10303 Int) Bool)

(assert (=> d!304940 (= (lostCause!223 lt!363156) (exists!146 (exprs!980 lt!363156) lambda!39895))))

(declare-fun bs!256574 () Bool)

(assert (= bs!256574 d!304940))

(declare-fun m!1235327 () Bool)

(assert (=> bs!256574 m!1235327))

(assert (=> b!1085588 d!304940))

(declare-fun bs!256575 () Bool)

(declare-fun d!304942 () Bool)

(assert (= bs!256575 (and d!304942 d!304940)))

(declare-fun lambda!39898 () Int)

(assert (=> bs!256575 (not (= lambda!39898 lambda!39895))))

(declare-fun forall!2256 (List!10303 Int) Bool)

(assert (=> d!304942 (= (inv!13214 (h!15690 zl!316)) (forall!2256 (exprs!980 (h!15690 zl!316)) lambda!39898))))

(declare-fun bs!256576 () Bool)

(assert (= bs!256576 d!304942))

(declare-fun m!1235329 () Bool)

(assert (=> bs!256576 m!1235329))

(assert (=> b!1085589 d!304942))

(declare-fun d!304944 () Bool)

(declare-fun lt!363200 () Bool)

(assert (=> d!304944 (= lt!363200 (exists!143 (toList!618 lt!363158) lambda!39867))))

(declare-fun choose!6907 ((Set Context!960) Int) Bool)

(assert (=> d!304944 (= lt!363200 (choose!6907 lt!363158 lambda!39867))))

(assert (=> d!304944 (= (exists!142 lt!363158 lambda!39867) lt!363200)))

(declare-fun bs!256577 () Bool)

(assert (= bs!256577 d!304944))

(declare-fun m!1235331 () Bool)

(assert (=> bs!256577 m!1235331))

(assert (=> bs!256577 m!1235331))

(declare-fun m!1235333 () Bool)

(assert (=> bs!256577 m!1235333))

(declare-fun m!1235335 () Bool)

(assert (=> bs!256577 m!1235335))

(assert (=> b!1085587 d!304944))

(declare-fun lt!363201 () Bool)

(declare-fun d!304948 () Bool)

(assert (=> d!304948 (= lt!363201 (exists!143 (toList!618 (filter!162 z!1122 lambda!39868)) lambda!39867))))

(assert (=> d!304948 (= lt!363201 (choose!6907 (filter!162 z!1122 lambda!39868) lambda!39867))))

(assert (=> d!304948 (= (exists!142 (filter!162 z!1122 lambda!39868) lambda!39867) lt!363201)))

(declare-fun bs!256578 () Bool)

(assert (= bs!256578 d!304948))

(assert (=> bs!256578 m!1235213))

(assert (=> bs!256578 m!1235223))

(assert (=> bs!256578 m!1235223))

(declare-fun m!1235337 () Bool)

(assert (=> bs!256578 m!1235337))

(assert (=> bs!256578 m!1235213))

(declare-fun m!1235339 () Bool)

(assert (=> bs!256578 m!1235339))

(assert (=> b!1085587 d!304948))

(declare-fun d!304950 () Bool)

(assert (=> d!304950 (exists!142 lt!363158 lambda!39867)))

(declare-fun lt!363204 () Unit!15687)

(declare-fun choose!6908 ((Set Context!960) Context!960 Int) Unit!15687)

(assert (=> d!304950 (= lt!363204 (choose!6908 lt!363158 lt!363156 lambda!39867))))

(assert (=> d!304950 (set.member lt!363156 lt!363158)))

(assert (=> d!304950 (= (lemmaContainsThenExists!22 lt!363158 lt!363156 lambda!39867) lt!363204)))

(declare-fun bs!256579 () Bool)

(assert (= bs!256579 d!304950))

(assert (=> bs!256579 m!1235233))

(declare-fun m!1235341 () Bool)

(assert (=> bs!256579 m!1235341))

(declare-fun m!1235343 () Bool)

(assert (=> bs!256579 m!1235343))

(assert (=> b!1085587 d!304950))

(declare-fun d!304952 () Bool)

(declare-fun choose!6909 ((Set Context!960) Int) (Set Context!960))

(assert (=> d!304952 (= (filter!162 z!1122 lambda!39868) (choose!6909 z!1122 lambda!39868))))

(declare-fun bs!256580 () Bool)

(assert (= bs!256580 d!304952))

(declare-fun m!1235345 () Bool)

(assert (=> bs!256580 m!1235345))

(assert (=> b!1085587 d!304952))

(declare-fun d!304954 () Bool)

(declare-fun e!686622 () Bool)

(assert (=> d!304954 e!686622))

(declare-fun res!482903 () Bool)

(assert (=> d!304954 (=> (not res!482903) (not e!686622))))

(declare-fun lt!363207 () Context!960)

(declare-fun dynLambda!4509 (Int Context!960) Bool)

(assert (=> d!304954 (= res!482903 (dynLambda!4509 lambda!39867 lt!363207))))

(declare-fun getWitness!69 (List!10305 Int) Context!960)

(assert (=> d!304954 (= lt!363207 (getWitness!69 (toList!618 z!1122) lambda!39867))))

(assert (=> d!304954 (exists!142 z!1122 lambda!39867)))

(assert (=> d!304954 (= (getWitness!67 z!1122 lambda!39867) lt!363207)))

(declare-fun b!1085653 () Bool)

(assert (=> b!1085653 (= e!686622 (set.member lt!363207 z!1122))))

(assert (= (and d!304954 res!482903) b!1085653))

(declare-fun b_lambda!30015 () Bool)

(assert (=> (not b_lambda!30015) (not d!304954)))

(declare-fun m!1235347 () Bool)

(assert (=> d!304954 m!1235347))

(assert (=> d!304954 m!1235211))

(assert (=> d!304954 m!1235211))

(declare-fun m!1235349 () Bool)

(assert (=> d!304954 m!1235349))

(assert (=> d!304954 m!1235241))

(declare-fun m!1235351 () Bool)

(assert (=> b!1085653 m!1235351))

(assert (=> b!1085595 d!304954))

(declare-fun d!304956 () Bool)

(declare-fun c!183495 () Bool)

(assert (=> d!304956 (= c!183495 (isEmpty!6620 s!2287))))

(declare-fun e!686623 () Bool)

(assert (=> d!304956 (= (matchZipper!48 z!1122 s!2287) e!686623)))

(declare-fun b!1085654 () Bool)

(assert (=> b!1085654 (= e!686623 (nullableZipper!19 z!1122))))

(declare-fun b!1085655 () Bool)

(assert (=> b!1085655 (= e!686623 (matchZipper!48 (derivationStepZipper!17 z!1122 (head!2005 s!2287)) (tail!1567 s!2287)))))

(assert (= (and d!304956 c!183495) b!1085654))

(assert (= (and d!304956 (not c!183495)) b!1085655))

(assert (=> d!304956 m!1235305))

(declare-fun m!1235355 () Bool)

(assert (=> b!1085654 m!1235355))

(assert (=> b!1085655 m!1235309))

(assert (=> b!1085655 m!1235309))

(declare-fun m!1235357 () Bool)

(assert (=> b!1085655 m!1235357))

(assert (=> b!1085655 m!1235313))

(assert (=> b!1085655 m!1235357))

(assert (=> b!1085655 m!1235313))

(declare-fun m!1235359 () Bool)

(assert (=> b!1085655 m!1235359))

(assert (=> b!1085586 d!304956))

(declare-fun bs!256582 () Bool)

(declare-fun d!304960 () Bool)

(assert (= bs!256582 (and d!304960 d!304940)))

(declare-fun lambda!39902 () Int)

(assert (=> bs!256582 (not (= lambda!39902 lambda!39895))))

(declare-fun bs!256583 () Bool)

(assert (= bs!256583 (and d!304960 d!304942)))

(assert (=> bs!256583 (= lambda!39902 lambda!39898)))

(assert (=> d!304960 (= (inv!13214 setElem!7539) (forall!2256 (exprs!980 setElem!7539) lambda!39902))))

(declare-fun bs!256584 () Bool)

(assert (= bs!256584 d!304960))

(declare-fun m!1235361 () Bool)

(assert (=> bs!256584 m!1235361))

(assert (=> setNonEmpty!7539 d!304960))

(assert (=> b!1085584 d!304952))

(declare-fun d!304962 () Bool)

(declare-fun e!686626 () Bool)

(assert (=> d!304962 (= (set.member lt!363156 (filter!162 z!1122 lambda!39868)) e!686626)))

(declare-fun res!482906 () Bool)

(assert (=> d!304962 (=> (not res!482906) (not e!686626))))

(assert (=> d!304962 (= res!482906 (dynLambda!4509 lambda!39868 lt!363156))))

(declare-fun lt!363210 () Unit!15687)

(declare-fun choose!6910 ((Set Context!960) Int Context!960) Unit!15687)

(assert (=> d!304962 (= lt!363210 (choose!6910 z!1122 lambda!39868 lt!363156))))

(assert (=> d!304962 (= (filterPost!13 z!1122 lambda!39868 lt!363156) lt!363210)))

(declare-fun b!1085658 () Bool)

(assert (=> b!1085658 (= e!686626 (set.member lt!363156 z!1122))))

(assert (= (and d!304962 res!482906) b!1085658))

(declare-fun b_lambda!30017 () Bool)

(assert (=> (not b_lambda!30017) (not d!304962)))

(assert (=> d!304962 m!1235213))

(assert (=> d!304962 m!1235215))

(declare-fun m!1235363 () Bool)

(assert (=> d!304962 m!1235363))

(declare-fun m!1235365 () Bool)

(assert (=> d!304962 m!1235365))

(assert (=> b!1085658 m!1235253))

(assert (=> b!1085584 d!304962))

(declare-fun d!304964 () Bool)

(declare-fun c!183498 () Bool)

(assert (=> d!304964 (= c!183498 (is-Nil!10289 lt!363154))))

(declare-fun e!686629 () (Set Context!960))

(assert (=> d!304964 (= (content!1473 lt!363154) e!686629)))

(declare-fun b!1085663 () Bool)

(assert (=> b!1085663 (= e!686629 (as set.empty (Set Context!960)))))

(declare-fun b!1085664 () Bool)

(assert (=> b!1085664 (= e!686629 (set.union (set.insert (h!15690 lt!363154) (as set.empty (Set Context!960))) (content!1473 (t!101351 lt!363154))))))

(assert (= (and d!304964 c!183498) b!1085663))

(assert (= (and d!304964 (not c!183498)) b!1085664))

(declare-fun m!1235367 () Bool)

(assert (=> b!1085664 m!1235367))

(declare-fun m!1235369 () Bool)

(assert (=> b!1085664 m!1235369))

(assert (=> b!1085583 d!304964))

(assert (=> b!1085583 d!304952))

(declare-fun d!304966 () Bool)

(declare-fun e!686630 () Bool)

(assert (=> d!304966 e!686630))

(declare-fun res!482907 () Bool)

(assert (=> d!304966 (=> (not res!482907) (not e!686630))))

(declare-fun lt!363211 () List!10305)

(assert (=> d!304966 (= res!482907 (noDuplicate!182 lt!363211))))

(assert (=> d!304966 (= lt!363211 (choose!6906 (filter!162 z!1122 lambda!39868)))))

(assert (=> d!304966 (= (toList!618 (filter!162 z!1122 lambda!39868)) lt!363211)))

(declare-fun b!1085665 () Bool)

(assert (=> b!1085665 (= e!686630 (= (content!1473 lt!363211) (filter!162 z!1122 lambda!39868)))))

(assert (= (and d!304966 res!482907) b!1085665))

(declare-fun m!1235371 () Bool)

(assert (=> d!304966 m!1235371))

(assert (=> d!304966 m!1235213))

(declare-fun m!1235373 () Bool)

(assert (=> d!304966 m!1235373))

(declare-fun m!1235375 () Bool)

(assert (=> b!1085665 m!1235375))

(assert (=> b!1085583 d!304966))

(declare-fun d!304968 () Bool)

(declare-fun c!183499 () Bool)

(assert (=> d!304968 (= c!183499 (isEmpty!6620 s!2287))))

(declare-fun e!686631 () Bool)

(assert (=> d!304968 (= (matchZipper!48 (content!1473 lt!363154) s!2287) e!686631)))

(declare-fun b!1085666 () Bool)

(assert (=> b!1085666 (= e!686631 (nullableZipper!19 (content!1473 lt!363154)))))

(declare-fun b!1085667 () Bool)

(assert (=> b!1085667 (= e!686631 (matchZipper!48 (derivationStepZipper!17 (content!1473 lt!363154) (head!2005 s!2287)) (tail!1567 s!2287)))))

(assert (= (and d!304968 c!183499) b!1085666))

(assert (= (and d!304968 (not c!183499)) b!1085667))

(assert (=> d!304968 m!1235305))

(assert (=> b!1085666 m!1235221))

(declare-fun m!1235377 () Bool)

(assert (=> b!1085666 m!1235377))

(assert (=> b!1085667 m!1235309))

(assert (=> b!1085667 m!1235221))

(assert (=> b!1085667 m!1235309))

(declare-fun m!1235379 () Bool)

(assert (=> b!1085667 m!1235379))

(assert (=> b!1085667 m!1235313))

(assert (=> b!1085667 m!1235379))

(assert (=> b!1085667 m!1235313))

(declare-fun m!1235381 () Bool)

(assert (=> b!1085667 m!1235381))

(assert (=> b!1085583 d!304968))

(declare-fun d!304970 () Bool)

(declare-fun c!183500 () Bool)

(assert (=> d!304970 (= c!183500 (isEmpty!6620 s!2287))))

(declare-fun e!686632 () Bool)

(assert (=> d!304970 (= (matchZipper!48 (filter!162 z!1122 lambda!39868) s!2287) e!686632)))

(declare-fun b!1085668 () Bool)

(assert (=> b!1085668 (= e!686632 (nullableZipper!19 (filter!162 z!1122 lambda!39868)))))

(declare-fun b!1085669 () Bool)

(assert (=> b!1085669 (= e!686632 (matchZipper!48 (derivationStepZipper!17 (filter!162 z!1122 lambda!39868) (head!2005 s!2287)) (tail!1567 s!2287)))))

(assert (= (and d!304970 c!183500) b!1085668))

(assert (= (and d!304970 (not c!183500)) b!1085669))

(assert (=> d!304970 m!1235305))

(assert (=> b!1085668 m!1235213))

(declare-fun m!1235383 () Bool)

(assert (=> b!1085668 m!1235383))

(assert (=> b!1085669 m!1235309))

(assert (=> b!1085669 m!1235213))

(assert (=> b!1085669 m!1235309))

(declare-fun m!1235385 () Bool)

(assert (=> b!1085669 m!1235385))

(assert (=> b!1085669 m!1235313))

(assert (=> b!1085669 m!1235385))

(assert (=> b!1085669 m!1235313))

(declare-fun m!1235387 () Bool)

(assert (=> b!1085669 m!1235387))

(assert (=> b!1085583 d!304970))

(declare-fun bs!256586 () Bool)

(declare-fun d!304972 () Bool)

(assert (= bs!256586 (and d!304972 b!1085593)))

(declare-fun lambda!39906 () Int)

(assert (=> bs!256586 (= lambda!39906 lambda!39867)))

(declare-fun bs!256587 () Bool)

(assert (= bs!256587 (and d!304972 b!1085584)))

(assert (=> bs!256587 (not (= lambda!39906 lambda!39868))))

(assert (=> d!304972 true))

(assert (=> d!304972 (matchZipper!48 (content!1473 lt!363154) s!2287)))

(declare-fun lt!363214 () Unit!15687)

(declare-fun choose!6911 (List!10305 List!10304) Unit!15687)

(assert (=> d!304972 (= lt!363214 (choose!6911 lt!363154 s!2287))))

(assert (=> d!304972 (exists!143 lt!363154 lambda!39906)))

(assert (=> d!304972 (= (lemmaExistsMatchingContextThenMatchingString!1 lt!363154 s!2287) lt!363214)))

(declare-fun bs!256589 () Bool)

(assert (= bs!256589 d!304972))

(assert (=> bs!256589 m!1235221))

(assert (=> bs!256589 m!1235221))

(assert (=> bs!256589 m!1235225))

(declare-fun m!1235409 () Bool)

(assert (=> bs!256589 m!1235409))

(declare-fun m!1235411 () Bool)

(assert (=> bs!256589 m!1235411))

(assert (=> b!1085583 d!304972))

(declare-fun d!304980 () Bool)

(declare-fun lt!363215 () Bool)

(assert (=> d!304980 (= lt!363215 (exists!143 (toList!618 z!1122) lambda!39867))))

(assert (=> d!304980 (= lt!363215 (choose!6907 z!1122 lambda!39867))))

(assert (=> d!304980 (= (exists!142 z!1122 lambda!39867) lt!363215)))

(declare-fun bs!256590 () Bool)

(assert (= bs!256590 d!304980))

(assert (=> bs!256590 m!1235211))

(assert (=> bs!256590 m!1235211))

(declare-fun m!1235413 () Bool)

(assert (=> bs!256590 m!1235413))

(declare-fun m!1235415 () Bool)

(assert (=> bs!256590 m!1235415))

(assert (=> b!1085593 d!304980))

(declare-fun bs!256591 () Bool)

(declare-fun d!304982 () Bool)

(assert (= bs!256591 (and d!304982 b!1085593)))

(declare-fun lambda!39909 () Int)

(assert (=> bs!256591 (not (= lambda!39909 lambda!39867))))

(declare-fun bs!256592 () Bool)

(assert (= bs!256592 (and d!304982 b!1085584)))

(assert (=> bs!256592 (not (= lambda!39909 lambda!39868))))

(declare-fun bs!256593 () Bool)

(assert (= bs!256593 (and d!304982 d!304972)))

(assert (=> bs!256593 (not (= lambda!39909 lambda!39906))))

(assert (=> d!304982 true))

(declare-fun order!6197 () Int)

(declare-fun dynLambda!4510 (Int Int) Int)

(assert (=> d!304982 (< (dynLambda!4510 order!6197 lambda!39867) (dynLambda!4510 order!6197 lambda!39909))))

(declare-fun forall!2257 (List!10305 Int) Bool)

(assert (=> d!304982 (= (exists!143 zl!316 lambda!39867) (not (forall!2257 zl!316 lambda!39909)))))

(declare-fun bs!256594 () Bool)

(assert (= bs!256594 d!304982))

(declare-fun m!1235417 () Bool)

(assert (=> bs!256594 m!1235417))

(assert (=> b!1085593 d!304982))

(declare-fun bs!256595 () Bool)

(declare-fun d!304984 () Bool)

(assert (= bs!256595 (and d!304984 b!1085593)))

(declare-fun lambda!39912 () Int)

(assert (=> bs!256595 (= lambda!39912 lambda!39867)))

(declare-fun bs!256596 () Bool)

(assert (= bs!256596 (and d!304984 b!1085584)))

(assert (=> bs!256596 (not (= lambda!39912 lambda!39868))))

(declare-fun bs!256597 () Bool)

(assert (= bs!256597 (and d!304984 d!304972)))

(assert (=> bs!256597 (= lambda!39912 lambda!39906)))

(declare-fun bs!256598 () Bool)

(assert (= bs!256598 (and d!304984 d!304982)))

(assert (=> bs!256598 (not (= lambda!39912 lambda!39909))))

(assert (=> d!304984 true))

(assert (=> d!304984 (exists!143 zl!316 lambda!39912)))

(declare-fun lt!363220 () Unit!15687)

(declare-fun choose!6912 (List!10305 List!10304) Unit!15687)

(assert (=> d!304984 (= lt!363220 (choose!6912 zl!316 s!2287))))

(assert (=> d!304984 (matchZipper!48 (content!1473 zl!316) s!2287)))

(assert (=> d!304984 (= (lemmaZipperMatchesExistsMatchingContext!27 zl!316 s!2287) lt!363220)))

(declare-fun bs!256599 () Bool)

(assert (= bs!256599 d!304984))

(declare-fun m!1235419 () Bool)

(assert (=> bs!256599 m!1235419))

(declare-fun m!1235421 () Bool)

(assert (=> bs!256599 m!1235421))

(declare-fun m!1235423 () Bool)

(assert (=> bs!256599 m!1235423))

(assert (=> bs!256599 m!1235423))

(declare-fun m!1235425 () Bool)

(assert (=> bs!256599 m!1235425))

(assert (=> b!1085593 d!304984))

(declare-fun condSetEmpty!7545 () Bool)

(assert (=> setNonEmpty!7539 (= condSetEmpty!7545 (= setRest!7539 (as set.empty (Set Context!960))))))

(declare-fun setRes!7545 () Bool)

(assert (=> setNonEmpty!7539 (= tp!324967 setRes!7545)))

(declare-fun setIsEmpty!7545 () Bool)

(assert (=> setIsEmpty!7545 setRes!7545))

(declare-fun tp!324990 () Bool)

(declare-fun setElem!7545 () Context!960)

(declare-fun e!686642 () Bool)

(declare-fun setNonEmpty!7545 () Bool)

(assert (=> setNonEmpty!7545 (= setRes!7545 (and tp!324990 (inv!13214 setElem!7545) e!686642))))

(declare-fun setRest!7545 () (Set Context!960))

(assert (=> setNonEmpty!7545 (= setRest!7539 (set.union (set.insert setElem!7545 (as set.empty (Set Context!960))) setRest!7545))))

(declare-fun b!1085687 () Bool)

(declare-fun tp!324989 () Bool)

(assert (=> b!1085687 (= e!686642 tp!324989)))

(assert (= (and setNonEmpty!7539 condSetEmpty!7545) setIsEmpty!7545))

(assert (= (and setNonEmpty!7539 (not condSetEmpty!7545)) setNonEmpty!7545))

(assert (= setNonEmpty!7545 b!1085687))

(declare-fun m!1235433 () Bool)

(assert (=> setNonEmpty!7545 m!1235433))

(declare-fun b!1085692 () Bool)

(declare-fun e!686645 () Bool)

(declare-fun tp!324993 () Bool)

(assert (=> b!1085692 (= e!686645 (and tp_is_empty!5631 tp!324993))))

(assert (=> b!1085594 (= tp!324969 e!686645)))

(assert (= (and b!1085594 (is-Cons!10288 (t!101350 s!2287))) b!1085692))

(declare-fun b!1085697 () Bool)

(declare-fun e!686648 () Bool)

(declare-fun tp!324998 () Bool)

(declare-fun tp!324999 () Bool)

(assert (=> b!1085697 (= e!686648 (and tp!324998 tp!324999))))

(assert (=> b!1085590 (= tp!324965 e!686648)))

(assert (= (and b!1085590 (is-Cons!10287 (exprs!980 setElem!7539))) b!1085697))

(declare-fun b!1085698 () Bool)

(declare-fun e!686649 () Bool)

(declare-fun tp!325000 () Bool)

(declare-fun tp!325001 () Bool)

(assert (=> b!1085698 (= e!686649 (and tp!325000 tp!325001))))

(assert (=> b!1085585 (= tp!324968 e!686649)))

(assert (= (and b!1085585 (is-Cons!10287 (exprs!980 (h!15690 zl!316)))) b!1085698))

(declare-fun b!1085706 () Bool)

(declare-fun e!686655 () Bool)

(declare-fun tp!325006 () Bool)

(assert (=> b!1085706 (= e!686655 tp!325006)))

(declare-fun b!1085705 () Bool)

(declare-fun tp!325007 () Bool)

(declare-fun e!686654 () Bool)

(assert (=> b!1085705 (= e!686654 (and (inv!13214 (h!15690 (t!101351 zl!316))) e!686655 tp!325007))))

(assert (=> b!1085589 (= tp!324966 e!686654)))

(assert (= b!1085705 b!1085706))

(assert (= (and b!1085589 (is-Cons!10289 (t!101351 zl!316))) b!1085705))

(declare-fun m!1235435 () Bool)

(assert (=> b!1085705 m!1235435))

(declare-fun b_lambda!30021 () Bool)

(assert (= b_lambda!30017 (or b!1085584 b_lambda!30021)))

(declare-fun bs!256600 () Bool)

(declare-fun d!304988 () Bool)

(assert (= bs!256600 (and d!304988 b!1085584)))

(assert (=> bs!256600 (= (dynLambda!4509 lambda!39868 lt!363156) (not (lostCause!223 lt!363156)))))

(assert (=> bs!256600 m!1235209))

(assert (=> d!304962 d!304988))

(declare-fun b_lambda!30023 () Bool)

(assert (= b_lambda!30015 (or b!1085593 b_lambda!30023)))

(declare-fun bs!256601 () Bool)

(declare-fun d!304990 () Bool)

(assert (= bs!256601 (and d!304990 b!1085593)))

(assert (=> bs!256601 (= (dynLambda!4509 lambda!39867 lt!363207) (matchZipper!48 (set.insert lt!363207 (as set.empty (Set Context!960))) s!2287))))

(declare-fun m!1235437 () Bool)

(assert (=> bs!256601 m!1235437))

(assert (=> bs!256601 m!1235437))

(declare-fun m!1235439 () Bool)

(assert (=> bs!256601 m!1235439))

(assert (=> d!304954 d!304990))

(push 1)

(assert (not d!304984))

(assert (not d!304934))

(assert (not b!1085706))

(assert (not d!304970))

(assert (not b!1085665))

(assert (not b!1085646))

(assert (not d!304938))

(assert (not b!1085669))

(assert (not b_lambda!30021))

(assert (not b!1085650))

(assert tp_is_empty!5631)

(assert (not b!1085687))

(assert (not b!1085705))

(assert (not setNonEmpty!7545))

(assert (not b!1085698))

(assert (not d!304940))

(assert (not b!1085667))

(assert (not d!304950))

(assert (not d!304944))

(assert (not b!1085647))

(assert (not b!1085668))

(assert (not d!304966))

(assert (not d!304956))

(assert (not b!1085654))

(assert (not d!304954))

(assert (not b!1085666))

(assert (not d!304936))

(assert (not b!1085664))

(assert (not b!1085692))

(assert (not d!304980))

(assert (not d!304962))

(assert (not d!304942))

(assert (not d!304972))

(assert (not bs!256601))

(assert (not d!304968))

(assert (not bs!256600))

(assert (not d!304960))

(assert (not d!304982))

(assert (not b!1085655))

(assert (not d!304948))

(assert (not d!304952))

(assert (not b!1085697))

(assert (not b_lambda!30023))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

