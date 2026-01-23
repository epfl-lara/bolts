; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!238628 () Bool)

(assert start!238628)

(declare-fun b!2438031 () Bool)

(assert (=> b!2438031 true))

(assert (=> b!2438031 true))

(declare-fun lambda!92184 () Int)

(declare-fun lambda!92183 () Int)

(assert (=> b!2438031 (not (= lambda!92184 lambda!92183))))

(assert (=> b!2438031 true))

(assert (=> b!2438031 true))

(declare-fun b!2438025 () Bool)

(declare-fun e!1549341 () Bool)

(declare-fun e!1549339 () Bool)

(assert (=> b!2438025 (= e!1549341 e!1549339)))

(declare-fun res!1035045 () Bool)

(assert (=> b!2438025 (=> res!1035045 e!1549339)))

(declare-datatypes ((C!14494 0))(
  ( (C!14495 (val!8489 Int)) )
))
(declare-datatypes ((Regex!7168 0))(
  ( (ElementMatch!7168 (c!388988 C!14494)) (Concat!11804 (regOne!14848 Regex!7168) (regTwo!14848 Regex!7168)) (EmptyExpr!7168) (Star!7168 (reg!7497 Regex!7168)) (EmptyLang!7168) (Union!7168 (regOne!14849 Regex!7168) (regTwo!14849 Regex!7168)) )
))
(declare-fun lt!877850 () Regex!7168)

(declare-datatypes ((List!28572 0))(
  ( (Nil!28474) (Cons!28474 (h!33875 C!14494) (t!208549 List!28572)) )
))
(declare-fun s!9460 () List!28572)

(declare-fun matchR!3283 (Regex!7168 List!28572) Bool)

(assert (=> b!2438025 (= res!1035045 (matchR!3283 lt!877850 s!9460))))

(declare-datatypes ((List!28573 0))(
  ( (Nil!28475) (Cons!28475 (h!33876 Regex!7168) (t!208550 List!28573)) )
))
(declare-fun l!9164 () List!28573)

(declare-fun head!5530 (List!28573) Regex!7168)

(assert (=> b!2438025 (= lt!877850 (head!5530 l!9164))))

(declare-fun b!2438026 () Bool)

(declare-fun e!1549338 () Bool)

(declare-fun tp!774214 () Bool)

(declare-fun tp!774217 () Bool)

(assert (=> b!2438026 (= e!1549338 (and tp!774214 tp!774217))))

(declare-fun b!2438027 () Bool)

(declare-fun e!1549340 () Bool)

(declare-fun tp_is_empty!11749 () Bool)

(declare-fun tp!774212 () Bool)

(assert (=> b!2438027 (= e!1549340 (and tp_is_empty!11749 tp!774212))))

(declare-fun b!2438028 () Bool)

(declare-fun res!1035047 () Bool)

(declare-fun e!1549343 () Bool)

(assert (=> b!2438028 (=> (not res!1035047) (not e!1549343))))

(declare-fun r!13927 () Regex!7168)

(declare-fun generalisedConcat!269 (List!28573) Regex!7168)

(assert (=> b!2438028 (= res!1035047 (= r!13927 (generalisedConcat!269 l!9164)))))

(declare-fun b!2438029 () Bool)

(declare-fun res!1035051 () Bool)

(assert (=> b!2438029 (=> res!1035051 e!1549339)))

(declare-datatypes ((tuple2!28092 0))(
  ( (tuple2!28093 (_1!16587 List!28572) (_2!16587 List!28572)) )
))
(declare-datatypes ((Option!5657 0))(
  ( (None!5656) (Some!5656 (v!31064 tuple2!28092)) )
))
(declare-fun isDefined!4483 (Option!5657) Bool)

(declare-fun findConcatSeparation!765 (Regex!7168 Regex!7168 List!28572 List!28572 List!28572) Option!5657)

(assert (=> b!2438029 (= res!1035051 (not (isDefined!4483 (findConcatSeparation!765 lt!877850 EmptyExpr!7168 Nil!28474 s!9460 s!9460))))))

(declare-fun b!2438030 () Bool)

(declare-fun e!1549337 () Bool)

(assert (=> b!2438030 (= e!1549343 (not e!1549337))))

(declare-fun res!1035048 () Bool)

(assert (=> b!2438030 (=> res!1035048 e!1549337)))

(assert (=> b!2438030 (= res!1035048 (not (is-Concat!11804 r!13927)))))

(declare-fun lt!877852 () Bool)

(declare-fun lt!877847 () Bool)

(assert (=> b!2438030 (= lt!877852 lt!877847)))

(declare-fun matchRSpec!1015 (Regex!7168 List!28572) Bool)

(assert (=> b!2438030 (= lt!877847 (matchRSpec!1015 r!13927 s!9460))))

(assert (=> b!2438030 (= lt!877852 (matchR!3283 r!13927 s!9460))))

(declare-datatypes ((Unit!41719 0))(
  ( (Unit!41720) )
))
(declare-fun lt!877845 () Unit!41719)

(declare-fun mainMatchTheorem!1015 (Regex!7168 List!28572) Unit!41719)

(assert (=> b!2438030 (= lt!877845 (mainMatchTheorem!1015 r!13927 s!9460))))

(declare-fun res!1035050 () Bool)

(assert (=> start!238628 (=> (not res!1035050) (not e!1549343))))

(declare-fun lambda!92182 () Int)

(declare-fun forall!5802 (List!28573 Int) Bool)

(assert (=> start!238628 (= res!1035050 (forall!5802 l!9164 lambda!92182))))

(assert (=> start!238628 e!1549343))

(declare-fun e!1549344 () Bool)

(assert (=> start!238628 e!1549344))

(assert (=> start!238628 e!1549338))

(assert (=> start!238628 e!1549340))

(declare-fun e!1549342 () Bool)

(assert (=> b!2438031 (= e!1549337 e!1549342)))

(declare-fun res!1035053 () Bool)

(assert (=> b!2438031 (=> res!1035053 e!1549342)))

(declare-fun lt!877851 () Bool)

(assert (=> b!2438031 (= res!1035053 (not (= lt!877847 lt!877851)))))

(declare-fun Exists!1204 (Int) Bool)

(assert (=> b!2438031 (= (Exists!1204 lambda!92183) (Exists!1204 lambda!92184))))

(declare-fun lt!877848 () Unit!41719)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!449 (Regex!7168 Regex!7168 List!28572) Unit!41719)

(assert (=> b!2438031 (= lt!877848 (lemmaExistCutMatchRandMatchRSpecEquivalent!449 (regOne!14848 r!13927) (regTwo!14848 r!13927) s!9460))))

(assert (=> b!2438031 (= lt!877851 (Exists!1204 lambda!92183))))

(assert (=> b!2438031 (= lt!877851 (isDefined!4483 (findConcatSeparation!765 (regOne!14848 r!13927) (regTwo!14848 r!13927) Nil!28474 s!9460 s!9460)))))

(declare-fun lt!877846 () Unit!41719)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!703 (Regex!7168 Regex!7168 List!28572) Unit!41719)

(assert (=> b!2438031 (= lt!877846 (lemmaFindConcatSeparationEquivalentToExists!703 (regOne!14848 r!13927) (regTwo!14848 r!13927) s!9460))))

(declare-fun b!2438032 () Bool)

(assert (=> b!2438032 (= e!1549342 e!1549341)))

(declare-fun res!1035046 () Bool)

(assert (=> b!2438032 (=> res!1035046 e!1549341)))

(declare-fun lt!877849 () List!28573)

(declare-fun isEmpty!16514 (List!28573) Bool)

(assert (=> b!2438032 (= res!1035046 (not (isEmpty!16514 lt!877849)))))

(declare-fun tail!3803 (List!28573) List!28573)

(assert (=> b!2438032 (= lt!877849 (tail!3803 l!9164))))

(declare-fun b!2438033 () Bool)

(assert (=> b!2438033 (= e!1549338 tp_is_empty!11749)))

(declare-fun b!2438034 () Bool)

(declare-fun tp!774213 () Bool)

(declare-fun tp!774216 () Bool)

(assert (=> b!2438034 (= e!1549344 (and tp!774213 tp!774216))))

(declare-fun b!2438035 () Bool)

(declare-fun res!1035049 () Bool)

(assert (=> b!2438035 (=> res!1035049 e!1549342)))

(assert (=> b!2438035 (= res!1035049 (isEmpty!16514 l!9164))))

(declare-fun b!2438036 () Bool)

(declare-fun tp!774218 () Bool)

(assert (=> b!2438036 (= e!1549338 tp!774218)))

(declare-fun b!2438037 () Bool)

(declare-fun tp!774215 () Bool)

(declare-fun tp!774219 () Bool)

(assert (=> b!2438037 (= e!1549338 (and tp!774215 tp!774219))))

(declare-fun b!2438038 () Bool)

(declare-fun validRegex!2880 (Regex!7168) Bool)

(assert (=> b!2438038 (= e!1549339 (validRegex!2880 lt!877850))))

(declare-fun b!2438039 () Bool)

(declare-fun res!1035052 () Bool)

(assert (=> b!2438039 (=> res!1035052 e!1549341)))

(assert (=> b!2438039 (= res!1035052 (not (= (generalisedConcat!269 lt!877849) EmptyExpr!7168)))))

(assert (= (and start!238628 res!1035050) b!2438028))

(assert (= (and b!2438028 res!1035047) b!2438030))

(assert (= (and b!2438030 (not res!1035048)) b!2438031))

(assert (= (and b!2438031 (not res!1035053)) b!2438035))

(assert (= (and b!2438035 (not res!1035049)) b!2438032))

(assert (= (and b!2438032 (not res!1035046)) b!2438039))

(assert (= (and b!2438039 (not res!1035052)) b!2438025))

(assert (= (and b!2438025 (not res!1035045)) b!2438029))

(assert (= (and b!2438029 (not res!1035051)) b!2438038))

(assert (= (and start!238628 (is-Cons!28475 l!9164)) b!2438034))

(assert (= (and start!238628 (is-ElementMatch!7168 r!13927)) b!2438033))

(assert (= (and start!238628 (is-Concat!11804 r!13927)) b!2438026))

(assert (= (and start!238628 (is-Star!7168 r!13927)) b!2438036))

(assert (= (and start!238628 (is-Union!7168 r!13927)) b!2438037))

(assert (= (and start!238628 (is-Cons!28474 s!9460)) b!2438027))

(declare-fun m!2817121 () Bool)

(assert (=> b!2438032 m!2817121))

(declare-fun m!2817123 () Bool)

(assert (=> b!2438032 m!2817123))

(declare-fun m!2817125 () Bool)

(assert (=> b!2438031 m!2817125))

(declare-fun m!2817127 () Bool)

(assert (=> b!2438031 m!2817127))

(declare-fun m!2817129 () Bool)

(assert (=> b!2438031 m!2817129))

(assert (=> b!2438031 m!2817125))

(declare-fun m!2817131 () Bool)

(assert (=> b!2438031 m!2817131))

(declare-fun m!2817133 () Bool)

(assert (=> b!2438031 m!2817133))

(declare-fun m!2817135 () Bool)

(assert (=> b!2438031 m!2817135))

(assert (=> b!2438031 m!2817135))

(declare-fun m!2817137 () Bool)

(assert (=> b!2438029 m!2817137))

(assert (=> b!2438029 m!2817137))

(declare-fun m!2817139 () Bool)

(assert (=> b!2438029 m!2817139))

(declare-fun m!2817141 () Bool)

(assert (=> b!2438030 m!2817141))

(declare-fun m!2817143 () Bool)

(assert (=> b!2438030 m!2817143))

(declare-fun m!2817145 () Bool)

(assert (=> b!2438030 m!2817145))

(declare-fun m!2817147 () Bool)

(assert (=> b!2438035 m!2817147))

(declare-fun m!2817149 () Bool)

(assert (=> b!2438039 m!2817149))

(declare-fun m!2817151 () Bool)

(assert (=> b!2438038 m!2817151))

(declare-fun m!2817153 () Bool)

(assert (=> b!2438025 m!2817153))

(declare-fun m!2817155 () Bool)

(assert (=> b!2438025 m!2817155))

(declare-fun m!2817157 () Bool)

(assert (=> b!2438028 m!2817157))

(declare-fun m!2817159 () Bool)

(assert (=> start!238628 m!2817159))

(push 1)

(assert (not b!2438028))

(assert (not b!2438035))

(assert (not b!2438030))

(assert (not b!2438036))

(assert tp_is_empty!11749)

(assert (not b!2438039))

(assert (not b!2438027))

(assert (not b!2438038))

(assert (not start!238628))

(assert (not b!2438037))

(assert (not b!2438029))

(assert (not b!2438032))

(assert (not b!2438025))

(assert (not b!2438026))

(assert (not b!2438034))

(assert (not b!2438031))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!704269 () Bool)

(assert (=> d!704269 (= (isEmpty!16514 lt!877849) (is-Nil!28475 lt!877849))))

(assert (=> b!2438032 d!704269))

(declare-fun d!704273 () Bool)

(assert (=> d!704273 (= (tail!3803 l!9164) (t!208550 l!9164))))

(assert (=> b!2438032 d!704273))

(declare-fun bs!464683 () Bool)

(declare-fun d!704275 () Bool)

(assert (= bs!464683 (and d!704275 start!238628)))

(declare-fun lambda!92198 () Int)

(assert (=> bs!464683 (= lambda!92198 lambda!92182)))

(declare-fun b!2438125 () Bool)

(declare-fun e!1549389 () Bool)

(assert (=> b!2438125 (= e!1549389 (isEmpty!16514 (t!208550 l!9164)))))

(declare-fun b!2438126 () Bool)

(declare-fun e!1549392 () Regex!7168)

(assert (=> b!2438126 (= e!1549392 EmptyExpr!7168)))

(declare-fun b!2438127 () Bool)

(declare-fun e!1549391 () Bool)

(declare-fun e!1549387 () Bool)

(assert (=> b!2438127 (= e!1549391 e!1549387)))

(declare-fun c!388998 () Bool)

(assert (=> b!2438127 (= c!388998 (isEmpty!16514 (tail!3803 l!9164)))))

(declare-fun b!2438128 () Bool)

(declare-fun lt!877879 () Regex!7168)

(declare-fun isEmptyExpr!211 (Regex!7168) Bool)

(assert (=> b!2438128 (= e!1549391 (isEmptyExpr!211 lt!877879))))

(declare-fun b!2438129 () Bool)

(declare-fun isConcat!211 (Regex!7168) Bool)

(assert (=> b!2438129 (= e!1549387 (isConcat!211 lt!877879))))

(declare-fun e!1549390 () Bool)

(assert (=> d!704275 e!1549390))

(declare-fun res!1035098 () Bool)

(assert (=> d!704275 (=> (not res!1035098) (not e!1549390))))

(assert (=> d!704275 (= res!1035098 (validRegex!2880 lt!877879))))

(declare-fun e!1549388 () Regex!7168)

(assert (=> d!704275 (= lt!877879 e!1549388)))

(declare-fun c!389001 () Bool)

(assert (=> d!704275 (= c!389001 e!1549389)))

(declare-fun res!1035097 () Bool)

(assert (=> d!704275 (=> (not res!1035097) (not e!1549389))))

(assert (=> d!704275 (= res!1035097 (is-Cons!28475 l!9164))))

(assert (=> d!704275 (forall!5802 l!9164 lambda!92198)))

(assert (=> d!704275 (= (generalisedConcat!269 l!9164) lt!877879)))

(declare-fun b!2438130 () Bool)

(assert (=> b!2438130 (= e!1549390 e!1549391)))

(declare-fun c!389000 () Bool)

(assert (=> b!2438130 (= c!389000 (isEmpty!16514 l!9164))))

(declare-fun b!2438131 () Bool)

(assert (=> b!2438131 (= e!1549387 (= lt!877879 (head!5530 l!9164)))))

(declare-fun b!2438132 () Bool)

(assert (=> b!2438132 (= e!1549388 (h!33876 l!9164))))

(declare-fun b!2438133 () Bool)

(assert (=> b!2438133 (= e!1549388 e!1549392)))

(declare-fun c!388999 () Bool)

(assert (=> b!2438133 (= c!388999 (is-Cons!28475 l!9164))))

(declare-fun b!2438134 () Bool)

(assert (=> b!2438134 (= e!1549392 (Concat!11804 (h!33876 l!9164) (generalisedConcat!269 (t!208550 l!9164))))))

(assert (= (and d!704275 res!1035097) b!2438125))

(assert (= (and d!704275 c!389001) b!2438132))

(assert (= (and d!704275 (not c!389001)) b!2438133))

(assert (= (and b!2438133 c!388999) b!2438134))

(assert (= (and b!2438133 (not c!388999)) b!2438126))

(assert (= (and d!704275 res!1035098) b!2438130))

(assert (= (and b!2438130 c!389000) b!2438128))

(assert (= (and b!2438130 (not c!389000)) b!2438127))

(assert (= (and b!2438127 c!388998) b!2438131))

(assert (= (and b!2438127 (not c!388998)) b!2438129))

(declare-fun m!2817201 () Bool)

(assert (=> d!704275 m!2817201))

(declare-fun m!2817203 () Bool)

(assert (=> d!704275 m!2817203))

(assert (=> b!2438131 m!2817155))

(declare-fun m!2817205 () Bool)

(assert (=> b!2438125 m!2817205))

(assert (=> b!2438127 m!2817123))

(assert (=> b!2438127 m!2817123))

(declare-fun m!2817207 () Bool)

(assert (=> b!2438127 m!2817207))

(declare-fun m!2817209 () Bool)

(assert (=> b!2438128 m!2817209))

(assert (=> b!2438130 m!2817147))

(declare-fun m!2817211 () Bool)

(assert (=> b!2438129 m!2817211))

(declare-fun m!2817213 () Bool)

(assert (=> b!2438134 m!2817213))

(assert (=> b!2438028 d!704275))

(declare-fun bs!464684 () Bool)

(declare-fun d!704277 () Bool)

(assert (= bs!464684 (and d!704277 start!238628)))

(declare-fun lambda!92201 () Int)

(assert (=> bs!464684 (= lambda!92201 lambda!92182)))

(declare-fun bs!464685 () Bool)

(assert (= bs!464685 (and d!704277 d!704275)))

(assert (=> bs!464685 (= lambda!92201 lambda!92198)))

(declare-fun b!2438135 () Bool)

(declare-fun e!1549395 () Bool)

(assert (=> b!2438135 (= e!1549395 (isEmpty!16514 (t!208550 lt!877849)))))

(declare-fun b!2438136 () Bool)

(declare-fun e!1549398 () Regex!7168)

(assert (=> b!2438136 (= e!1549398 EmptyExpr!7168)))

(declare-fun b!2438137 () Bool)

(declare-fun e!1549397 () Bool)

(declare-fun e!1549393 () Bool)

(assert (=> b!2438137 (= e!1549397 e!1549393)))

(declare-fun c!389002 () Bool)

(assert (=> b!2438137 (= c!389002 (isEmpty!16514 (tail!3803 lt!877849)))))

(declare-fun b!2438138 () Bool)

(declare-fun lt!877880 () Regex!7168)

(assert (=> b!2438138 (= e!1549397 (isEmptyExpr!211 lt!877880))))

(declare-fun b!2438139 () Bool)

(assert (=> b!2438139 (= e!1549393 (isConcat!211 lt!877880))))

(declare-fun e!1549396 () Bool)

(assert (=> d!704277 e!1549396))

(declare-fun res!1035100 () Bool)

(assert (=> d!704277 (=> (not res!1035100) (not e!1549396))))

(assert (=> d!704277 (= res!1035100 (validRegex!2880 lt!877880))))

(declare-fun e!1549394 () Regex!7168)

(assert (=> d!704277 (= lt!877880 e!1549394)))

(declare-fun c!389005 () Bool)

(assert (=> d!704277 (= c!389005 e!1549395)))

(declare-fun res!1035099 () Bool)

(assert (=> d!704277 (=> (not res!1035099) (not e!1549395))))

(assert (=> d!704277 (= res!1035099 (is-Cons!28475 lt!877849))))

(assert (=> d!704277 (forall!5802 lt!877849 lambda!92201)))

(assert (=> d!704277 (= (generalisedConcat!269 lt!877849) lt!877880)))

(declare-fun b!2438140 () Bool)

(assert (=> b!2438140 (= e!1549396 e!1549397)))

(declare-fun c!389004 () Bool)

(assert (=> b!2438140 (= c!389004 (isEmpty!16514 lt!877849))))

(declare-fun b!2438141 () Bool)

(assert (=> b!2438141 (= e!1549393 (= lt!877880 (head!5530 lt!877849)))))

(declare-fun b!2438142 () Bool)

(assert (=> b!2438142 (= e!1549394 (h!33876 lt!877849))))

(declare-fun b!2438143 () Bool)

(assert (=> b!2438143 (= e!1549394 e!1549398)))

(declare-fun c!389003 () Bool)

(assert (=> b!2438143 (= c!389003 (is-Cons!28475 lt!877849))))

(declare-fun b!2438144 () Bool)

(assert (=> b!2438144 (= e!1549398 (Concat!11804 (h!33876 lt!877849) (generalisedConcat!269 (t!208550 lt!877849))))))

(assert (= (and d!704277 res!1035099) b!2438135))

(assert (= (and d!704277 c!389005) b!2438142))

(assert (= (and d!704277 (not c!389005)) b!2438143))

(assert (= (and b!2438143 c!389003) b!2438144))

(assert (= (and b!2438143 (not c!389003)) b!2438136))

(assert (= (and d!704277 res!1035100) b!2438140))

(assert (= (and b!2438140 c!389004) b!2438138))

(assert (= (and b!2438140 (not c!389004)) b!2438137))

(assert (= (and b!2438137 c!389002) b!2438141))

(assert (= (and b!2438137 (not c!389002)) b!2438139))

(declare-fun m!2817215 () Bool)

(assert (=> d!704277 m!2817215))

(declare-fun m!2817217 () Bool)

(assert (=> d!704277 m!2817217))

(declare-fun m!2817219 () Bool)

(assert (=> b!2438141 m!2817219))

(declare-fun m!2817221 () Bool)

(assert (=> b!2438135 m!2817221))

(declare-fun m!2817223 () Bool)

(assert (=> b!2438137 m!2817223))

(assert (=> b!2438137 m!2817223))

(declare-fun m!2817225 () Bool)

(assert (=> b!2438137 m!2817225))

(declare-fun m!2817227 () Bool)

(assert (=> b!2438138 m!2817227))

(assert (=> b!2438140 m!2817121))

(declare-fun m!2817229 () Bool)

(assert (=> b!2438139 m!2817229))

(declare-fun m!2817231 () Bool)

(assert (=> b!2438144 m!2817231))

(assert (=> b!2438039 d!704277))

(declare-fun d!704279 () Bool)

(declare-fun res!1035109 () Bool)

(declare-fun e!1549415 () Bool)

(assert (=> d!704279 (=> res!1035109 e!1549415)))

(assert (=> d!704279 (= res!1035109 (is-Nil!28475 l!9164))))

(assert (=> d!704279 (= (forall!5802 l!9164 lambda!92182) e!1549415)))

(declare-fun b!2438169 () Bool)

(declare-fun e!1549416 () Bool)

(assert (=> b!2438169 (= e!1549415 e!1549416)))

(declare-fun res!1035110 () Bool)

(assert (=> b!2438169 (=> (not res!1035110) (not e!1549416))))

(declare-fun dynLambda!12251 (Int Regex!7168) Bool)

(assert (=> b!2438169 (= res!1035110 (dynLambda!12251 lambda!92182 (h!33876 l!9164)))))

(declare-fun b!2438170 () Bool)

(assert (=> b!2438170 (= e!1549416 (forall!5802 (t!208550 l!9164) lambda!92182))))

(assert (= (and d!704279 (not res!1035109)) b!2438169))

(assert (= (and b!2438169 res!1035110) b!2438170))

(declare-fun b_lambda!74903 () Bool)

(assert (=> (not b_lambda!74903) (not b!2438169)))

(declare-fun m!2817233 () Bool)

(assert (=> b!2438169 m!2817233))

(declare-fun m!2817235 () Bool)

(assert (=> b!2438170 m!2817235))

(assert (=> start!238628 d!704279))

(declare-fun b!2438199 () Bool)

(declare-fun e!1549441 () Bool)

(declare-fun e!1549437 () Bool)

(assert (=> b!2438199 (= e!1549441 e!1549437)))

(declare-fun c!389023 () Bool)

(assert (=> b!2438199 (= c!389023 (is-Union!7168 lt!877850))))

(declare-fun c!389022 () Bool)

(declare-fun call!149323 () Bool)

(declare-fun bm!149316 () Bool)

(assert (=> bm!149316 (= call!149323 (validRegex!2880 (ite c!389022 (reg!7497 lt!877850) (ite c!389023 (regTwo!14849 lt!877850) (regOne!14848 lt!877850)))))))

(declare-fun d!704281 () Bool)

(declare-fun res!1035127 () Bool)

(declare-fun e!1549440 () Bool)

(assert (=> d!704281 (=> res!1035127 e!1549440)))

(assert (=> d!704281 (= res!1035127 (is-ElementMatch!7168 lt!877850))))

(assert (=> d!704281 (= (validRegex!2880 lt!877850) e!1549440)))

(declare-fun b!2438200 () Bool)

(assert (=> b!2438200 (= e!1549440 e!1549441)))

(assert (=> b!2438200 (= c!389022 (is-Star!7168 lt!877850))))

(declare-fun b!2438201 () Bool)

(declare-fun e!1549438 () Bool)

(assert (=> b!2438201 (= e!1549441 e!1549438)))

(declare-fun res!1035125 () Bool)

(declare-fun nullable!2193 (Regex!7168) Bool)

(assert (=> b!2438201 (= res!1035125 (not (nullable!2193 (reg!7497 lt!877850))))))

(assert (=> b!2438201 (=> (not res!1035125) (not e!1549438))))

(declare-fun b!2438202 () Bool)

(declare-fun res!1035126 () Bool)

(declare-fun e!1549439 () Bool)

(assert (=> b!2438202 (=> res!1035126 e!1549439)))

(assert (=> b!2438202 (= res!1035126 (not (is-Concat!11804 lt!877850)))))

(assert (=> b!2438202 (= e!1549437 e!1549439)))

(declare-fun b!2438203 () Bool)

(declare-fun e!1549442 () Bool)

(declare-fun call!149321 () Bool)

(assert (=> b!2438203 (= e!1549442 call!149321)))

(declare-fun b!2438204 () Bool)

(declare-fun e!1549443 () Bool)

(assert (=> b!2438204 (= e!1549439 e!1549443)))

(declare-fun res!1035123 () Bool)

(assert (=> b!2438204 (=> (not res!1035123) (not e!1549443))))

(assert (=> b!2438204 (= res!1035123 call!149321)))

(declare-fun bm!149317 () Bool)

(declare-fun call!149322 () Bool)

(assert (=> bm!149317 (= call!149322 (validRegex!2880 (ite c!389023 (regOne!14849 lt!877850) (regTwo!14848 lt!877850))))))

(declare-fun b!2438205 () Bool)

(declare-fun res!1035124 () Bool)

(assert (=> b!2438205 (=> (not res!1035124) (not e!1549442))))

(assert (=> b!2438205 (= res!1035124 call!149322)))

(assert (=> b!2438205 (= e!1549437 e!1549442)))

(declare-fun b!2438206 () Bool)

(assert (=> b!2438206 (= e!1549443 call!149322)))

(declare-fun b!2438207 () Bool)

(assert (=> b!2438207 (= e!1549438 call!149323)))

(declare-fun bm!149318 () Bool)

(assert (=> bm!149318 (= call!149321 call!149323)))

(assert (= (and d!704281 (not res!1035127)) b!2438200))

(assert (= (and b!2438200 c!389022) b!2438201))

(assert (= (and b!2438200 (not c!389022)) b!2438199))

(assert (= (and b!2438201 res!1035125) b!2438207))

(assert (= (and b!2438199 c!389023) b!2438205))

(assert (= (and b!2438199 (not c!389023)) b!2438202))

(assert (= (and b!2438205 res!1035124) b!2438203))

(assert (= (and b!2438202 (not res!1035126)) b!2438204))

(assert (= (and b!2438204 res!1035123) b!2438206))

(assert (= (or b!2438205 b!2438206) bm!149317))

(assert (= (or b!2438203 b!2438204) bm!149318))

(assert (= (or b!2438207 bm!149318) bm!149316))

(declare-fun m!2817237 () Bool)

(assert (=> bm!149316 m!2817237))

(declare-fun m!2817239 () Bool)

(assert (=> b!2438201 m!2817239))

(declare-fun m!2817241 () Bool)

(assert (=> bm!149317 m!2817241))

(assert (=> b!2438038 d!704281))

(declare-fun d!704283 () Bool)

(assert (=> d!704283 (= (isEmpty!16514 l!9164) (is-Nil!28475 l!9164))))

(assert (=> b!2438035 d!704283))

(declare-fun d!704285 () Bool)

(declare-fun isEmpty!16516 (Option!5657) Bool)

(assert (=> d!704285 (= (isDefined!4483 (findConcatSeparation!765 lt!877850 EmptyExpr!7168 Nil!28474 s!9460 s!9460)) (not (isEmpty!16516 (findConcatSeparation!765 lt!877850 EmptyExpr!7168 Nil!28474 s!9460 s!9460))))))

(declare-fun bs!464687 () Bool)

(assert (= bs!464687 d!704285))

(assert (=> bs!464687 m!2817137))

(declare-fun m!2817243 () Bool)

(assert (=> bs!464687 m!2817243))

(assert (=> b!2438029 d!704285))

(declare-fun b!2438244 () Bool)

(declare-fun e!1549468 () Option!5657)

(assert (=> b!2438244 (= e!1549468 (Some!5656 (tuple2!28093 Nil!28474 s!9460)))))

(declare-fun b!2438245 () Bool)

(declare-fun e!1549470 () Bool)

(assert (=> b!2438245 (= e!1549470 (matchR!3283 EmptyExpr!7168 s!9460))))

(declare-fun b!2438246 () Bool)

(declare-fun res!1035149 () Bool)

(declare-fun e!1549469 () Bool)

(assert (=> b!2438246 (=> (not res!1035149) (not e!1549469))))

(declare-fun lt!877892 () Option!5657)

(declare-fun get!8784 (Option!5657) tuple2!28092)

(assert (=> b!2438246 (= res!1035149 (matchR!3283 EmptyExpr!7168 (_2!16587 (get!8784 lt!877892))))))

(declare-fun d!704287 () Bool)

(declare-fun e!1549471 () Bool)

(assert (=> d!704287 e!1549471))

(declare-fun res!1035151 () Bool)

(assert (=> d!704287 (=> res!1035151 e!1549471)))

(assert (=> d!704287 (= res!1035151 e!1549469)))

(declare-fun res!1035148 () Bool)

(assert (=> d!704287 (=> (not res!1035148) (not e!1549469))))

(assert (=> d!704287 (= res!1035148 (isDefined!4483 lt!877892))))

(assert (=> d!704287 (= lt!877892 e!1549468)))

(declare-fun c!389033 () Bool)

(assert (=> d!704287 (= c!389033 e!1549470)))

(declare-fun res!1035152 () Bool)

(assert (=> d!704287 (=> (not res!1035152) (not e!1549470))))

(assert (=> d!704287 (= res!1035152 (matchR!3283 lt!877850 Nil!28474))))

(assert (=> d!704287 (validRegex!2880 lt!877850)))

(assert (=> d!704287 (= (findConcatSeparation!765 lt!877850 EmptyExpr!7168 Nil!28474 s!9460 s!9460) lt!877892)))

(declare-fun b!2438247 () Bool)

(declare-fun e!1549472 () Option!5657)

(assert (=> b!2438247 (= e!1549468 e!1549472)))

(declare-fun c!389032 () Bool)

(assert (=> b!2438247 (= c!389032 (is-Nil!28474 s!9460))))

(declare-fun b!2438248 () Bool)

(declare-fun lt!877891 () Unit!41719)

(declare-fun lt!877890 () Unit!41719)

(assert (=> b!2438248 (= lt!877891 lt!877890)))

(declare-fun ++!7073 (List!28572 List!28572) List!28572)

(assert (=> b!2438248 (= (++!7073 (++!7073 Nil!28474 (Cons!28474 (h!33875 s!9460) Nil!28474)) (t!208549 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!694 (List!28572 C!14494 List!28572 List!28572) Unit!41719)

(assert (=> b!2438248 (= lt!877890 (lemmaMoveElementToOtherListKeepsConcatEq!694 Nil!28474 (h!33875 s!9460) (t!208549 s!9460) s!9460))))

(assert (=> b!2438248 (= e!1549472 (findConcatSeparation!765 lt!877850 EmptyExpr!7168 (++!7073 Nil!28474 (Cons!28474 (h!33875 s!9460) Nil!28474)) (t!208549 s!9460) s!9460))))

(declare-fun b!2438249 () Bool)

(assert (=> b!2438249 (= e!1549472 None!5656)))

(declare-fun b!2438250 () Bool)

(assert (=> b!2438250 (= e!1549471 (not (isDefined!4483 lt!877892)))))

(declare-fun b!2438251 () Bool)

(declare-fun res!1035150 () Bool)

(assert (=> b!2438251 (=> (not res!1035150) (not e!1549469))))

(assert (=> b!2438251 (= res!1035150 (matchR!3283 lt!877850 (_1!16587 (get!8784 lt!877892))))))

(declare-fun b!2438252 () Bool)

(assert (=> b!2438252 (= e!1549469 (= (++!7073 (_1!16587 (get!8784 lt!877892)) (_2!16587 (get!8784 lt!877892))) s!9460))))

(assert (= (and d!704287 res!1035152) b!2438245))

(assert (= (and d!704287 c!389033) b!2438244))

(assert (= (and d!704287 (not c!389033)) b!2438247))

(assert (= (and b!2438247 c!389032) b!2438249))

(assert (= (and b!2438247 (not c!389032)) b!2438248))

(assert (= (and d!704287 res!1035148) b!2438251))

(assert (= (and b!2438251 res!1035150) b!2438246))

(assert (= (and b!2438246 res!1035149) b!2438252))

(assert (= (and d!704287 (not res!1035151)) b!2438250))

(declare-fun m!2817259 () Bool)

(assert (=> b!2438251 m!2817259))

(declare-fun m!2817261 () Bool)

(assert (=> b!2438251 m!2817261))

(assert (=> b!2438246 m!2817259))

(declare-fun m!2817263 () Bool)

(assert (=> b!2438246 m!2817263))

(assert (=> b!2438252 m!2817259))

(declare-fun m!2817265 () Bool)

(assert (=> b!2438252 m!2817265))

(declare-fun m!2817267 () Bool)

(assert (=> b!2438250 m!2817267))

(assert (=> d!704287 m!2817267))

(declare-fun m!2817269 () Bool)

(assert (=> d!704287 m!2817269))

(assert (=> d!704287 m!2817151))

(declare-fun m!2817271 () Bool)

(assert (=> b!2438245 m!2817271))

(declare-fun m!2817273 () Bool)

(assert (=> b!2438248 m!2817273))

(assert (=> b!2438248 m!2817273))

(declare-fun m!2817275 () Bool)

(assert (=> b!2438248 m!2817275))

(declare-fun m!2817277 () Bool)

(assert (=> b!2438248 m!2817277))

(assert (=> b!2438248 m!2817273))

(declare-fun m!2817279 () Bool)

(assert (=> b!2438248 m!2817279))

(assert (=> b!2438029 d!704287))

(declare-fun d!704291 () Bool)

(declare-fun choose!14459 (Int) Bool)

(assert (=> d!704291 (= (Exists!1204 lambda!92184) (choose!14459 lambda!92184))))

(declare-fun bs!464688 () Bool)

(assert (= bs!464688 d!704291))

(declare-fun m!2817287 () Bool)

(assert (=> bs!464688 m!2817287))

(assert (=> b!2438031 d!704291))

(declare-fun d!704295 () Bool)

(assert (=> d!704295 (= (isDefined!4483 (findConcatSeparation!765 (regOne!14848 r!13927) (regTwo!14848 r!13927) Nil!28474 s!9460 s!9460)) (not (isEmpty!16516 (findConcatSeparation!765 (regOne!14848 r!13927) (regTwo!14848 r!13927) Nil!28474 s!9460 s!9460))))))

(declare-fun bs!464689 () Bool)

(assert (= bs!464689 d!704295))

(assert (=> bs!464689 m!2817125))

(declare-fun m!2817289 () Bool)

(assert (=> bs!464689 m!2817289))

(assert (=> b!2438031 d!704295))

(declare-fun bs!464690 () Bool)

(declare-fun d!704297 () Bool)

(assert (= bs!464690 (and d!704297 b!2438031)))

(declare-fun lambda!92205 () Int)

(assert (=> bs!464690 (= lambda!92205 lambda!92183)))

(assert (=> bs!464690 (not (= lambda!92205 lambda!92184))))

(assert (=> d!704297 true))

(assert (=> d!704297 true))

(assert (=> d!704297 true))

(assert (=> d!704297 (= (isDefined!4483 (findConcatSeparation!765 (regOne!14848 r!13927) (regTwo!14848 r!13927) Nil!28474 s!9460 s!9460)) (Exists!1204 lambda!92205))))

(declare-fun lt!877895 () Unit!41719)

(declare-fun choose!14460 (Regex!7168 Regex!7168 List!28572) Unit!41719)

(assert (=> d!704297 (= lt!877895 (choose!14460 (regOne!14848 r!13927) (regTwo!14848 r!13927) s!9460))))

(assert (=> d!704297 (validRegex!2880 (regOne!14848 r!13927))))

(assert (=> d!704297 (= (lemmaFindConcatSeparationEquivalentToExists!703 (regOne!14848 r!13927) (regTwo!14848 r!13927) s!9460) lt!877895)))

(declare-fun bs!464691 () Bool)

(assert (= bs!464691 d!704297))

(assert (=> bs!464691 m!2817125))

(assert (=> bs!464691 m!2817127))

(declare-fun m!2817291 () Bool)

(assert (=> bs!464691 m!2817291))

(declare-fun m!2817293 () Bool)

(assert (=> bs!464691 m!2817293))

(declare-fun m!2817295 () Bool)

(assert (=> bs!464691 m!2817295))

(assert (=> bs!464691 m!2817125))

(assert (=> b!2438031 d!704297))

(declare-fun bs!464692 () Bool)

(declare-fun d!704299 () Bool)

(assert (= bs!464692 (and d!704299 b!2438031)))

(declare-fun lambda!92213 () Int)

(assert (=> bs!464692 (= lambda!92213 lambda!92183)))

(assert (=> bs!464692 (not (= lambda!92213 lambda!92184))))

(declare-fun bs!464694 () Bool)

(assert (= bs!464694 (and d!704299 d!704297)))

(assert (=> bs!464694 (= lambda!92213 lambda!92205)))

(assert (=> d!704299 true))

(assert (=> d!704299 true))

(assert (=> d!704299 true))

(declare-fun lambda!92214 () Int)

(assert (=> bs!464692 (not (= lambda!92214 lambda!92183))))

(assert (=> bs!464692 (= lambda!92214 lambda!92184)))

(assert (=> bs!464694 (not (= lambda!92214 lambda!92205))))

(declare-fun bs!464695 () Bool)

(assert (= bs!464695 d!704299))

(assert (=> bs!464695 (not (= lambda!92214 lambda!92213))))

(assert (=> d!704299 true))

(assert (=> d!704299 true))

(assert (=> d!704299 true))

(assert (=> d!704299 (= (Exists!1204 lambda!92213) (Exists!1204 lambda!92214))))

(declare-fun lt!877901 () Unit!41719)

(declare-fun choose!14461 (Regex!7168 Regex!7168 List!28572) Unit!41719)

(assert (=> d!704299 (= lt!877901 (choose!14461 (regOne!14848 r!13927) (regTwo!14848 r!13927) s!9460))))

(assert (=> d!704299 (validRegex!2880 (regOne!14848 r!13927))))

(assert (=> d!704299 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!449 (regOne!14848 r!13927) (regTwo!14848 r!13927) s!9460) lt!877901)))

(declare-fun m!2817301 () Bool)

(assert (=> bs!464695 m!2817301))

(declare-fun m!2817303 () Bool)

(assert (=> bs!464695 m!2817303))

(declare-fun m!2817305 () Bool)

(assert (=> bs!464695 m!2817305))

(assert (=> bs!464695 m!2817291))

(assert (=> b!2438031 d!704299))

(declare-fun d!704301 () Bool)

(assert (=> d!704301 (= (Exists!1204 lambda!92183) (choose!14459 lambda!92183))))

(declare-fun bs!464697 () Bool)

(assert (= bs!464697 d!704301))

(declare-fun m!2817309 () Bool)

(assert (=> bs!464697 m!2817309))

(assert (=> b!2438031 d!704301))

(declare-fun b!2438278 () Bool)

(declare-fun e!1549488 () Option!5657)

(assert (=> b!2438278 (= e!1549488 (Some!5656 (tuple2!28093 Nil!28474 s!9460)))))

(declare-fun b!2438279 () Bool)

(declare-fun e!1549490 () Bool)

(assert (=> b!2438279 (= e!1549490 (matchR!3283 (regTwo!14848 r!13927) s!9460))))

(declare-fun b!2438280 () Bool)

(declare-fun res!1035175 () Bool)

(declare-fun e!1549489 () Bool)

(assert (=> b!2438280 (=> (not res!1035175) (not e!1549489))))

(declare-fun lt!877904 () Option!5657)

(assert (=> b!2438280 (= res!1035175 (matchR!3283 (regTwo!14848 r!13927) (_2!16587 (get!8784 lt!877904))))))

(declare-fun d!704305 () Bool)

(declare-fun e!1549491 () Bool)

(assert (=> d!704305 e!1549491))

(declare-fun res!1035177 () Bool)

(assert (=> d!704305 (=> res!1035177 e!1549491)))

(assert (=> d!704305 (= res!1035177 e!1549489)))

(declare-fun res!1035174 () Bool)

(assert (=> d!704305 (=> (not res!1035174) (not e!1549489))))

(assert (=> d!704305 (= res!1035174 (isDefined!4483 lt!877904))))

(assert (=> d!704305 (= lt!877904 e!1549488)))

(declare-fun c!389037 () Bool)

(assert (=> d!704305 (= c!389037 e!1549490)))

(declare-fun res!1035178 () Bool)

(assert (=> d!704305 (=> (not res!1035178) (not e!1549490))))

(assert (=> d!704305 (= res!1035178 (matchR!3283 (regOne!14848 r!13927) Nil!28474))))

(assert (=> d!704305 (validRegex!2880 (regOne!14848 r!13927))))

(assert (=> d!704305 (= (findConcatSeparation!765 (regOne!14848 r!13927) (regTwo!14848 r!13927) Nil!28474 s!9460 s!9460) lt!877904)))

(declare-fun b!2438281 () Bool)

(declare-fun e!1549492 () Option!5657)

(assert (=> b!2438281 (= e!1549488 e!1549492)))

(declare-fun c!389036 () Bool)

(assert (=> b!2438281 (= c!389036 (is-Nil!28474 s!9460))))

(declare-fun b!2438282 () Bool)

(declare-fun lt!877903 () Unit!41719)

(declare-fun lt!877902 () Unit!41719)

(assert (=> b!2438282 (= lt!877903 lt!877902)))

(assert (=> b!2438282 (= (++!7073 (++!7073 Nil!28474 (Cons!28474 (h!33875 s!9460) Nil!28474)) (t!208549 s!9460)) s!9460)))

(assert (=> b!2438282 (= lt!877902 (lemmaMoveElementToOtherListKeepsConcatEq!694 Nil!28474 (h!33875 s!9460) (t!208549 s!9460) s!9460))))

(assert (=> b!2438282 (= e!1549492 (findConcatSeparation!765 (regOne!14848 r!13927) (regTwo!14848 r!13927) (++!7073 Nil!28474 (Cons!28474 (h!33875 s!9460) Nil!28474)) (t!208549 s!9460) s!9460))))

(declare-fun b!2438283 () Bool)

(assert (=> b!2438283 (= e!1549492 None!5656)))

(declare-fun b!2438284 () Bool)

(assert (=> b!2438284 (= e!1549491 (not (isDefined!4483 lt!877904)))))

(declare-fun b!2438285 () Bool)

(declare-fun res!1035176 () Bool)

(assert (=> b!2438285 (=> (not res!1035176) (not e!1549489))))

(assert (=> b!2438285 (= res!1035176 (matchR!3283 (regOne!14848 r!13927) (_1!16587 (get!8784 lt!877904))))))

(declare-fun b!2438286 () Bool)

(assert (=> b!2438286 (= e!1549489 (= (++!7073 (_1!16587 (get!8784 lt!877904)) (_2!16587 (get!8784 lt!877904))) s!9460))))

(assert (= (and d!704305 res!1035178) b!2438279))

(assert (= (and d!704305 c!389037) b!2438278))

(assert (= (and d!704305 (not c!389037)) b!2438281))

(assert (= (and b!2438281 c!389036) b!2438283))

(assert (= (and b!2438281 (not c!389036)) b!2438282))

(assert (= (and d!704305 res!1035174) b!2438285))

(assert (= (and b!2438285 res!1035176) b!2438280))

(assert (= (and b!2438280 res!1035175) b!2438286))

(assert (= (and d!704305 (not res!1035177)) b!2438284))

(declare-fun m!2817311 () Bool)

(assert (=> b!2438285 m!2817311))

(declare-fun m!2817313 () Bool)

(assert (=> b!2438285 m!2817313))

(assert (=> b!2438280 m!2817311))

(declare-fun m!2817315 () Bool)

(assert (=> b!2438280 m!2817315))

(assert (=> b!2438286 m!2817311))

(declare-fun m!2817317 () Bool)

(assert (=> b!2438286 m!2817317))

(declare-fun m!2817319 () Bool)

(assert (=> b!2438284 m!2817319))

(assert (=> d!704305 m!2817319))

(declare-fun m!2817321 () Bool)

(assert (=> d!704305 m!2817321))

(assert (=> d!704305 m!2817291))

(declare-fun m!2817323 () Bool)

(assert (=> b!2438279 m!2817323))

(assert (=> b!2438282 m!2817273))

(assert (=> b!2438282 m!2817273))

(assert (=> b!2438282 m!2817275))

(assert (=> b!2438282 m!2817277))

(assert (=> b!2438282 m!2817273))

(declare-fun m!2817325 () Bool)

(assert (=> b!2438282 m!2817325))

(assert (=> b!2438031 d!704305))

(declare-fun bs!464698 () Bool)

(declare-fun b!2438325 () Bool)

(assert (= bs!464698 (and b!2438325 d!704299)))

(declare-fun lambda!92221 () Int)

(assert (=> bs!464698 (not (= lambda!92221 lambda!92213))))

(declare-fun bs!464699 () Bool)

(assert (= bs!464699 (and b!2438325 b!2438031)))

(assert (=> bs!464699 (not (= lambda!92221 lambda!92183))))

(assert (=> bs!464698 (not (= lambda!92221 lambda!92214))))

(declare-fun bs!464700 () Bool)

(assert (= bs!464700 (and b!2438325 d!704297)))

(assert (=> bs!464700 (not (= lambda!92221 lambda!92205))))

(assert (=> bs!464699 (not (= lambda!92221 lambda!92184))))

(assert (=> b!2438325 true))

(assert (=> b!2438325 true))

(declare-fun bs!464701 () Bool)

(declare-fun b!2438324 () Bool)

(assert (= bs!464701 (and b!2438324 d!704299)))

(declare-fun lambda!92222 () Int)

(assert (=> bs!464701 (not (= lambda!92222 lambda!92213))))

(declare-fun bs!464702 () Bool)

(assert (= bs!464702 (and b!2438324 b!2438031)))

(assert (=> bs!464702 (not (= lambda!92222 lambda!92183))))

(assert (=> bs!464701 (= lambda!92222 lambda!92214)))

(declare-fun bs!464703 () Bool)

(assert (= bs!464703 (and b!2438324 d!704297)))

(assert (=> bs!464703 (not (= lambda!92222 lambda!92205))))

(assert (=> bs!464702 (= lambda!92222 lambda!92184)))

(declare-fun bs!464704 () Bool)

(assert (= bs!464704 (and b!2438324 b!2438325)))

(assert (=> bs!464704 (not (= lambda!92222 lambda!92221))))

(assert (=> b!2438324 true))

(assert (=> b!2438324 true))

(declare-fun b!2438323 () Bool)

(declare-fun e!1549516 () Bool)

(assert (=> b!2438323 (= e!1549516 (= s!9460 (Cons!28474 (c!388988 r!13927) Nil!28474)))))

(declare-fun bm!149332 () Bool)

(declare-fun call!149338 () Bool)

(declare-fun isEmpty!16517 (List!28572) Bool)

(assert (=> bm!149332 (= call!149338 (isEmpty!16517 s!9460))))

(declare-fun d!704307 () Bool)

(declare-fun c!389047 () Bool)

(assert (=> d!704307 (= c!389047 (is-EmptyExpr!7168 r!13927))))

(declare-fun e!1549514 () Bool)

(assert (=> d!704307 (= (matchRSpec!1015 r!13927 s!9460) e!1549514)))

(declare-fun e!1549517 () Bool)

(declare-fun call!149337 () Bool)

(assert (=> b!2438324 (= e!1549517 call!149337)))

(declare-fun e!1549518 () Bool)

(assert (=> b!2438325 (= e!1549518 call!149337)))

(declare-fun b!2438326 () Bool)

(declare-fun c!389048 () Bool)

(assert (=> b!2438326 (= c!389048 (is-Union!7168 r!13927))))

(declare-fun e!1549515 () Bool)

(assert (=> b!2438326 (= e!1549516 e!1549515)))

(declare-fun bm!149333 () Bool)

(declare-fun c!389049 () Bool)

(assert (=> bm!149333 (= call!149337 (Exists!1204 (ite c!389049 lambda!92221 lambda!92222)))))

(declare-fun b!2438327 () Bool)

(declare-fun e!1549519 () Bool)

(assert (=> b!2438327 (= e!1549515 e!1549519)))

(declare-fun res!1035201 () Bool)

(assert (=> b!2438327 (= res!1035201 (matchRSpec!1015 (regOne!14849 r!13927) s!9460))))

(assert (=> b!2438327 (=> res!1035201 e!1549519)))

(declare-fun b!2438328 () Bool)

(assert (=> b!2438328 (= e!1549514 call!149338)))

(declare-fun b!2438329 () Bool)

(declare-fun res!1035200 () Bool)

(assert (=> b!2438329 (=> res!1035200 e!1549518)))

(assert (=> b!2438329 (= res!1035200 call!149338)))

(assert (=> b!2438329 (= e!1549517 e!1549518)))

(declare-fun b!2438330 () Bool)

(assert (=> b!2438330 (= e!1549515 e!1549517)))

(assert (=> b!2438330 (= c!389049 (is-Star!7168 r!13927))))

(declare-fun b!2438331 () Bool)

(assert (=> b!2438331 (= e!1549519 (matchRSpec!1015 (regTwo!14849 r!13927) s!9460))))

(declare-fun b!2438332 () Bool)

(declare-fun e!1549513 () Bool)

(assert (=> b!2438332 (= e!1549514 e!1549513)))

(declare-fun res!1035199 () Bool)

(assert (=> b!2438332 (= res!1035199 (not (is-EmptyLang!7168 r!13927)))))

(assert (=> b!2438332 (=> (not res!1035199) (not e!1549513))))

(declare-fun b!2438333 () Bool)

(declare-fun c!389046 () Bool)

(assert (=> b!2438333 (= c!389046 (is-ElementMatch!7168 r!13927))))

(assert (=> b!2438333 (= e!1549513 e!1549516)))

(assert (= (and d!704307 c!389047) b!2438328))

(assert (= (and d!704307 (not c!389047)) b!2438332))

(assert (= (and b!2438332 res!1035199) b!2438333))

(assert (= (and b!2438333 c!389046) b!2438323))

(assert (= (and b!2438333 (not c!389046)) b!2438326))

(assert (= (and b!2438326 c!389048) b!2438327))

(assert (= (and b!2438326 (not c!389048)) b!2438330))

(assert (= (and b!2438327 (not res!1035201)) b!2438331))

(assert (= (and b!2438330 c!389049) b!2438329))

(assert (= (and b!2438330 (not c!389049)) b!2438324))

(assert (= (and b!2438329 (not res!1035200)) b!2438325))

(assert (= (or b!2438325 b!2438324) bm!149333))

(assert (= (or b!2438328 b!2438329) bm!149332))

(declare-fun m!2817327 () Bool)

(assert (=> bm!149332 m!2817327))

(declare-fun m!2817329 () Bool)

(assert (=> bm!149333 m!2817329))

(declare-fun m!2817331 () Bool)

(assert (=> b!2438327 m!2817331))

(declare-fun m!2817333 () Bool)

(assert (=> b!2438331 m!2817333))

(assert (=> b!2438030 d!704307))

(declare-fun b!2438366 () Bool)

(declare-fun res!1035224 () Bool)

(declare-fun e!1549539 () Bool)

(assert (=> b!2438366 (=> (not res!1035224) (not e!1549539))))

(declare-fun tail!3805 (List!28572) List!28572)

(assert (=> b!2438366 (= res!1035224 (isEmpty!16517 (tail!3805 s!9460)))))

(declare-fun d!704309 () Bool)

(declare-fun e!1549536 () Bool)

(assert (=> d!704309 e!1549536))

(declare-fun c!389056 () Bool)

(assert (=> d!704309 (= c!389056 (is-EmptyExpr!7168 r!13927))))

(declare-fun lt!877910 () Bool)

(declare-fun e!1549541 () Bool)

(assert (=> d!704309 (= lt!877910 e!1549541)))

(declare-fun c!389057 () Bool)

(assert (=> d!704309 (= c!389057 (isEmpty!16517 s!9460))))

(assert (=> d!704309 (validRegex!2880 r!13927)))

(assert (=> d!704309 (= (matchR!3283 r!13927 s!9460) lt!877910)))

(declare-fun b!2438367 () Bool)

(declare-fun res!1035226 () Bool)

(declare-fun e!1549537 () Bool)

(assert (=> b!2438367 (=> res!1035226 e!1549537)))

(assert (=> b!2438367 (= res!1035226 (not (isEmpty!16517 (tail!3805 s!9460))))))

(declare-fun b!2438368 () Bool)

(declare-fun res!1035225 () Bool)

(declare-fun e!1549538 () Bool)

(assert (=> b!2438368 (=> res!1035225 e!1549538)))

(assert (=> b!2438368 (= res!1035225 e!1549539)))

(declare-fun res!1035228 () Bool)

(assert (=> b!2438368 (=> (not res!1035228) (not e!1549539))))

(assert (=> b!2438368 (= res!1035228 lt!877910)))

(declare-fun b!2438369 () Bool)

(declare-fun res!1035229 () Bool)

(assert (=> b!2438369 (=> res!1035229 e!1549538)))

(assert (=> b!2438369 (= res!1035229 (not (is-ElementMatch!7168 r!13927)))))

(declare-fun e!1549540 () Bool)

(assert (=> b!2438369 (= e!1549540 e!1549538)))

(declare-fun b!2438370 () Bool)

(declare-fun e!1549542 () Bool)

(assert (=> b!2438370 (= e!1549538 e!1549542)))

(declare-fun res!1035222 () Bool)

(assert (=> b!2438370 (=> (not res!1035222) (not e!1549542))))

(assert (=> b!2438370 (= res!1035222 (not lt!877910))))

(declare-fun b!2438371 () Bool)

(declare-fun res!1035223 () Bool)

(assert (=> b!2438371 (=> (not res!1035223) (not e!1549539))))

(declare-fun call!149341 () Bool)

(assert (=> b!2438371 (= res!1035223 (not call!149341))))

(declare-fun b!2438372 () Bool)

(assert (=> b!2438372 (= e!1549536 (= lt!877910 call!149341))))

(declare-fun b!2438373 () Bool)

(assert (=> b!2438373 (= e!1549536 e!1549540)))

(declare-fun c!389058 () Bool)

(assert (=> b!2438373 (= c!389058 (is-EmptyLang!7168 r!13927))))

(declare-fun b!2438374 () Bool)

(declare-fun head!5532 (List!28572) C!14494)

(assert (=> b!2438374 (= e!1549537 (not (= (head!5532 s!9460) (c!388988 r!13927))))))

(declare-fun b!2438375 () Bool)

(declare-fun derivativeStep!1847 (Regex!7168 C!14494) Regex!7168)

(assert (=> b!2438375 (= e!1549541 (matchR!3283 (derivativeStep!1847 r!13927 (head!5532 s!9460)) (tail!3805 s!9460)))))

(declare-fun b!2438376 () Bool)

(assert (=> b!2438376 (= e!1549542 e!1549537)))

(declare-fun res!1035227 () Bool)

(assert (=> b!2438376 (=> res!1035227 e!1549537)))

(assert (=> b!2438376 (= res!1035227 call!149341)))

(declare-fun b!2438377 () Bool)

(assert (=> b!2438377 (= e!1549541 (nullable!2193 r!13927))))

(declare-fun bm!149336 () Bool)

(assert (=> bm!149336 (= call!149341 (isEmpty!16517 s!9460))))

(declare-fun b!2438378 () Bool)

(assert (=> b!2438378 (= e!1549539 (= (head!5532 s!9460) (c!388988 r!13927)))))

(declare-fun b!2438379 () Bool)

(assert (=> b!2438379 (= e!1549540 (not lt!877910))))

(assert (= (and d!704309 c!389057) b!2438377))

(assert (= (and d!704309 (not c!389057)) b!2438375))

(assert (= (and d!704309 c!389056) b!2438372))

(assert (= (and d!704309 (not c!389056)) b!2438373))

(assert (= (and b!2438373 c!389058) b!2438379))

(assert (= (and b!2438373 (not c!389058)) b!2438369))

(assert (= (and b!2438369 (not res!1035229)) b!2438368))

(assert (= (and b!2438368 res!1035228) b!2438371))

(assert (= (and b!2438371 res!1035223) b!2438366))

(assert (= (and b!2438366 res!1035224) b!2438378))

(assert (= (and b!2438368 (not res!1035225)) b!2438370))

(assert (= (and b!2438370 res!1035222) b!2438376))

(assert (= (and b!2438376 (not res!1035227)) b!2438367))

(assert (= (and b!2438367 (not res!1035226)) b!2438374))

(assert (= (or b!2438372 b!2438371 b!2438376) bm!149336))

(declare-fun m!2817343 () Bool)

(assert (=> b!2438375 m!2817343))

(assert (=> b!2438375 m!2817343))

(declare-fun m!2817345 () Bool)

(assert (=> b!2438375 m!2817345))

(declare-fun m!2817347 () Bool)

(assert (=> b!2438375 m!2817347))

(assert (=> b!2438375 m!2817345))

(assert (=> b!2438375 m!2817347))

(declare-fun m!2817349 () Bool)

(assert (=> b!2438375 m!2817349))

(assert (=> bm!149336 m!2817327))

(assert (=> d!704309 m!2817327))

(declare-fun m!2817351 () Bool)

(assert (=> d!704309 m!2817351))

(assert (=> b!2438367 m!2817347))

(assert (=> b!2438367 m!2817347))

(declare-fun m!2817353 () Bool)

(assert (=> b!2438367 m!2817353))

(assert (=> b!2438378 m!2817343))

(assert (=> b!2438366 m!2817347))

(assert (=> b!2438366 m!2817347))

(assert (=> b!2438366 m!2817353))

(assert (=> b!2438374 m!2817343))

(declare-fun m!2817355 () Bool)

(assert (=> b!2438377 m!2817355))

(assert (=> b!2438030 d!704309))

(declare-fun d!704315 () Bool)

(assert (=> d!704315 (= (matchR!3283 r!13927 s!9460) (matchRSpec!1015 r!13927 s!9460))))

(declare-fun lt!877913 () Unit!41719)

(declare-fun choose!14462 (Regex!7168 List!28572) Unit!41719)

(assert (=> d!704315 (= lt!877913 (choose!14462 r!13927 s!9460))))

(assert (=> d!704315 (validRegex!2880 r!13927)))

(assert (=> d!704315 (= (mainMatchTheorem!1015 r!13927 s!9460) lt!877913)))

(declare-fun bs!464709 () Bool)

(assert (= bs!464709 d!704315))

(assert (=> bs!464709 m!2817143))

(assert (=> bs!464709 m!2817141))

(declare-fun m!2817357 () Bool)

(assert (=> bs!464709 m!2817357))

(assert (=> bs!464709 m!2817351))

(assert (=> b!2438030 d!704315))

(declare-fun b!2438380 () Bool)

(declare-fun res!1035232 () Bool)

(declare-fun e!1549546 () Bool)

(assert (=> b!2438380 (=> (not res!1035232) (not e!1549546))))

(assert (=> b!2438380 (= res!1035232 (isEmpty!16517 (tail!3805 s!9460)))))

(declare-fun d!704317 () Bool)

(declare-fun e!1549543 () Bool)

(assert (=> d!704317 e!1549543))

(declare-fun c!389059 () Bool)

(assert (=> d!704317 (= c!389059 (is-EmptyExpr!7168 lt!877850))))

(declare-fun lt!877914 () Bool)

(declare-fun e!1549548 () Bool)

(assert (=> d!704317 (= lt!877914 e!1549548)))

(declare-fun c!389060 () Bool)

(assert (=> d!704317 (= c!389060 (isEmpty!16517 s!9460))))

(assert (=> d!704317 (validRegex!2880 lt!877850)))

(assert (=> d!704317 (= (matchR!3283 lt!877850 s!9460) lt!877914)))

(declare-fun b!2438381 () Bool)

(declare-fun res!1035234 () Bool)

(declare-fun e!1549544 () Bool)

(assert (=> b!2438381 (=> res!1035234 e!1549544)))

(assert (=> b!2438381 (= res!1035234 (not (isEmpty!16517 (tail!3805 s!9460))))))

(declare-fun b!2438382 () Bool)

(declare-fun res!1035233 () Bool)

(declare-fun e!1549545 () Bool)

(assert (=> b!2438382 (=> res!1035233 e!1549545)))

(assert (=> b!2438382 (= res!1035233 e!1549546)))

(declare-fun res!1035236 () Bool)

(assert (=> b!2438382 (=> (not res!1035236) (not e!1549546))))

(assert (=> b!2438382 (= res!1035236 lt!877914)))

(declare-fun b!2438383 () Bool)

(declare-fun res!1035237 () Bool)

(assert (=> b!2438383 (=> res!1035237 e!1549545)))

(assert (=> b!2438383 (= res!1035237 (not (is-ElementMatch!7168 lt!877850)))))

(declare-fun e!1549547 () Bool)

(assert (=> b!2438383 (= e!1549547 e!1549545)))

(declare-fun b!2438384 () Bool)

(declare-fun e!1549549 () Bool)

(assert (=> b!2438384 (= e!1549545 e!1549549)))

(declare-fun res!1035230 () Bool)

(assert (=> b!2438384 (=> (not res!1035230) (not e!1549549))))

(assert (=> b!2438384 (= res!1035230 (not lt!877914))))

(declare-fun b!2438385 () Bool)

(declare-fun res!1035231 () Bool)

(assert (=> b!2438385 (=> (not res!1035231) (not e!1549546))))

(declare-fun call!149342 () Bool)

(assert (=> b!2438385 (= res!1035231 (not call!149342))))

(declare-fun b!2438386 () Bool)

(assert (=> b!2438386 (= e!1549543 (= lt!877914 call!149342))))

(declare-fun b!2438387 () Bool)

(assert (=> b!2438387 (= e!1549543 e!1549547)))

(declare-fun c!389061 () Bool)

(assert (=> b!2438387 (= c!389061 (is-EmptyLang!7168 lt!877850))))

(declare-fun b!2438388 () Bool)

(assert (=> b!2438388 (= e!1549544 (not (= (head!5532 s!9460) (c!388988 lt!877850))))))

(declare-fun b!2438389 () Bool)

(assert (=> b!2438389 (= e!1549548 (matchR!3283 (derivativeStep!1847 lt!877850 (head!5532 s!9460)) (tail!3805 s!9460)))))

(declare-fun b!2438390 () Bool)

(assert (=> b!2438390 (= e!1549549 e!1549544)))

(declare-fun res!1035235 () Bool)

(assert (=> b!2438390 (=> res!1035235 e!1549544)))

(assert (=> b!2438390 (= res!1035235 call!149342)))

(declare-fun b!2438391 () Bool)

(assert (=> b!2438391 (= e!1549548 (nullable!2193 lt!877850))))

(declare-fun bm!149337 () Bool)

(assert (=> bm!149337 (= call!149342 (isEmpty!16517 s!9460))))

(declare-fun b!2438392 () Bool)

(assert (=> b!2438392 (= e!1549546 (= (head!5532 s!9460) (c!388988 lt!877850)))))

(declare-fun b!2438393 () Bool)

(assert (=> b!2438393 (= e!1549547 (not lt!877914))))

(assert (= (and d!704317 c!389060) b!2438391))

(assert (= (and d!704317 (not c!389060)) b!2438389))

(assert (= (and d!704317 c!389059) b!2438386))

(assert (= (and d!704317 (not c!389059)) b!2438387))

(assert (= (and b!2438387 c!389061) b!2438393))

(assert (= (and b!2438387 (not c!389061)) b!2438383))

(assert (= (and b!2438383 (not res!1035237)) b!2438382))

(assert (= (and b!2438382 res!1035236) b!2438385))

(assert (= (and b!2438385 res!1035231) b!2438380))

(assert (= (and b!2438380 res!1035232) b!2438392))

(assert (= (and b!2438382 (not res!1035233)) b!2438384))

(assert (= (and b!2438384 res!1035230) b!2438390))

(assert (= (and b!2438390 (not res!1035235)) b!2438381))

(assert (= (and b!2438381 (not res!1035234)) b!2438388))

(assert (= (or b!2438386 b!2438385 b!2438390) bm!149337))

(assert (=> b!2438389 m!2817343))

(assert (=> b!2438389 m!2817343))

(declare-fun m!2817359 () Bool)

(assert (=> b!2438389 m!2817359))

(assert (=> b!2438389 m!2817347))

(assert (=> b!2438389 m!2817359))

(assert (=> b!2438389 m!2817347))

(declare-fun m!2817361 () Bool)

(assert (=> b!2438389 m!2817361))

(assert (=> bm!149337 m!2817327))

(assert (=> d!704317 m!2817327))

(assert (=> d!704317 m!2817151))

(assert (=> b!2438381 m!2817347))

(assert (=> b!2438381 m!2817347))

(assert (=> b!2438381 m!2817353))

(assert (=> b!2438392 m!2817343))

(assert (=> b!2438380 m!2817347))

(assert (=> b!2438380 m!2817347))

(assert (=> b!2438380 m!2817353))

(assert (=> b!2438388 m!2817343))

(declare-fun m!2817363 () Bool)

(assert (=> b!2438391 m!2817363))

(assert (=> b!2438025 d!704317))

(declare-fun d!704319 () Bool)

(assert (=> d!704319 (= (head!5530 l!9164) (h!33876 l!9164))))

(assert (=> b!2438025 d!704319))

(declare-fun b!2438398 () Bool)

(declare-fun e!1549552 () Bool)

(declare-fun tp!774246 () Bool)

(assert (=> b!2438398 (= e!1549552 (and tp_is_empty!11749 tp!774246))))

(assert (=> b!2438027 (= tp!774212 e!1549552)))

(assert (= (and b!2438027 (is-Cons!28474 (t!208549 s!9460))) b!2438398))

(declare-fun b!2438410 () Bool)

(declare-fun e!1549555 () Bool)

(declare-fun tp!774259 () Bool)

(declare-fun tp!774260 () Bool)

(assert (=> b!2438410 (= e!1549555 (and tp!774259 tp!774260))))

(assert (=> b!2438026 (= tp!774214 e!1549555)))

(declare-fun b!2438411 () Bool)

(declare-fun tp!774261 () Bool)

(assert (=> b!2438411 (= e!1549555 tp!774261)))

(declare-fun b!2438412 () Bool)

(declare-fun tp!774258 () Bool)

(declare-fun tp!774257 () Bool)

(assert (=> b!2438412 (= e!1549555 (and tp!774258 tp!774257))))

(declare-fun b!2438409 () Bool)

(assert (=> b!2438409 (= e!1549555 tp_is_empty!11749)))

(assert (= (and b!2438026 (is-ElementMatch!7168 (regOne!14848 r!13927))) b!2438409))

(assert (= (and b!2438026 (is-Concat!11804 (regOne!14848 r!13927))) b!2438410))

(assert (= (and b!2438026 (is-Star!7168 (regOne!14848 r!13927))) b!2438411))

(assert (= (and b!2438026 (is-Union!7168 (regOne!14848 r!13927))) b!2438412))

(declare-fun b!2438414 () Bool)

(declare-fun e!1549556 () Bool)

(declare-fun tp!774264 () Bool)

(declare-fun tp!774265 () Bool)

(assert (=> b!2438414 (= e!1549556 (and tp!774264 tp!774265))))

(assert (=> b!2438026 (= tp!774217 e!1549556)))

(declare-fun b!2438415 () Bool)

(declare-fun tp!774266 () Bool)

(assert (=> b!2438415 (= e!1549556 tp!774266)))

(declare-fun b!2438416 () Bool)

(declare-fun tp!774263 () Bool)

(declare-fun tp!774262 () Bool)

(assert (=> b!2438416 (= e!1549556 (and tp!774263 tp!774262))))

(declare-fun b!2438413 () Bool)

(assert (=> b!2438413 (= e!1549556 tp_is_empty!11749)))

(assert (= (and b!2438026 (is-ElementMatch!7168 (regTwo!14848 r!13927))) b!2438413))

(assert (= (and b!2438026 (is-Concat!11804 (regTwo!14848 r!13927))) b!2438414))

(assert (= (and b!2438026 (is-Star!7168 (regTwo!14848 r!13927))) b!2438415))

(assert (= (and b!2438026 (is-Union!7168 (regTwo!14848 r!13927))) b!2438416))

(declare-fun b!2438418 () Bool)

(declare-fun e!1549557 () Bool)

(declare-fun tp!774269 () Bool)

(declare-fun tp!774270 () Bool)

(assert (=> b!2438418 (= e!1549557 (and tp!774269 tp!774270))))

(assert (=> b!2438037 (= tp!774215 e!1549557)))

(declare-fun b!2438419 () Bool)

(declare-fun tp!774271 () Bool)

(assert (=> b!2438419 (= e!1549557 tp!774271)))

(declare-fun b!2438420 () Bool)

(declare-fun tp!774268 () Bool)

(declare-fun tp!774267 () Bool)

(assert (=> b!2438420 (= e!1549557 (and tp!774268 tp!774267))))

(declare-fun b!2438417 () Bool)

(assert (=> b!2438417 (= e!1549557 tp_is_empty!11749)))

(assert (= (and b!2438037 (is-ElementMatch!7168 (regOne!14849 r!13927))) b!2438417))

(assert (= (and b!2438037 (is-Concat!11804 (regOne!14849 r!13927))) b!2438418))

(assert (= (and b!2438037 (is-Star!7168 (regOne!14849 r!13927))) b!2438419))

(assert (= (and b!2438037 (is-Union!7168 (regOne!14849 r!13927))) b!2438420))

(declare-fun b!2438422 () Bool)

(declare-fun e!1549558 () Bool)

(declare-fun tp!774274 () Bool)

(declare-fun tp!774275 () Bool)

(assert (=> b!2438422 (= e!1549558 (and tp!774274 tp!774275))))

(assert (=> b!2438037 (= tp!774219 e!1549558)))

(declare-fun b!2438423 () Bool)

(declare-fun tp!774276 () Bool)

(assert (=> b!2438423 (= e!1549558 tp!774276)))

(declare-fun b!2438424 () Bool)

(declare-fun tp!774273 () Bool)

(declare-fun tp!774272 () Bool)

(assert (=> b!2438424 (= e!1549558 (and tp!774273 tp!774272))))

(declare-fun b!2438421 () Bool)

(assert (=> b!2438421 (= e!1549558 tp_is_empty!11749)))

(assert (= (and b!2438037 (is-ElementMatch!7168 (regTwo!14849 r!13927))) b!2438421))

(assert (= (and b!2438037 (is-Concat!11804 (regTwo!14849 r!13927))) b!2438422))

(assert (= (and b!2438037 (is-Star!7168 (regTwo!14849 r!13927))) b!2438423))

(assert (= (and b!2438037 (is-Union!7168 (regTwo!14849 r!13927))) b!2438424))

(declare-fun b!2438426 () Bool)

(declare-fun e!1549559 () Bool)

(declare-fun tp!774279 () Bool)

(declare-fun tp!774280 () Bool)

(assert (=> b!2438426 (= e!1549559 (and tp!774279 tp!774280))))

(assert (=> b!2438034 (= tp!774213 e!1549559)))

(declare-fun b!2438427 () Bool)

(declare-fun tp!774281 () Bool)

(assert (=> b!2438427 (= e!1549559 tp!774281)))

(declare-fun b!2438428 () Bool)

(declare-fun tp!774278 () Bool)

(declare-fun tp!774277 () Bool)

(assert (=> b!2438428 (= e!1549559 (and tp!774278 tp!774277))))

(declare-fun b!2438425 () Bool)

(assert (=> b!2438425 (= e!1549559 tp_is_empty!11749)))

(assert (= (and b!2438034 (is-ElementMatch!7168 (h!33876 l!9164))) b!2438425))

(assert (= (and b!2438034 (is-Concat!11804 (h!33876 l!9164))) b!2438426))

(assert (= (and b!2438034 (is-Star!7168 (h!33876 l!9164))) b!2438427))

(assert (= (and b!2438034 (is-Union!7168 (h!33876 l!9164))) b!2438428))

(declare-fun b!2438433 () Bool)

(declare-fun e!1549562 () Bool)

(declare-fun tp!774286 () Bool)

(declare-fun tp!774287 () Bool)

(assert (=> b!2438433 (= e!1549562 (and tp!774286 tp!774287))))

(assert (=> b!2438034 (= tp!774216 e!1549562)))

(assert (= (and b!2438034 (is-Cons!28475 (t!208550 l!9164))) b!2438433))

(declare-fun b!2438435 () Bool)

(declare-fun e!1549563 () Bool)

(declare-fun tp!774290 () Bool)

(declare-fun tp!774291 () Bool)

(assert (=> b!2438435 (= e!1549563 (and tp!774290 tp!774291))))

(assert (=> b!2438036 (= tp!774218 e!1549563)))

(declare-fun b!2438436 () Bool)

(declare-fun tp!774292 () Bool)

(assert (=> b!2438436 (= e!1549563 tp!774292)))

(declare-fun b!2438437 () Bool)

(declare-fun tp!774289 () Bool)

(declare-fun tp!774288 () Bool)

(assert (=> b!2438437 (= e!1549563 (and tp!774289 tp!774288))))

(declare-fun b!2438434 () Bool)

(assert (=> b!2438434 (= e!1549563 tp_is_empty!11749)))

(assert (= (and b!2438036 (is-ElementMatch!7168 (reg!7497 r!13927))) b!2438434))

(assert (= (and b!2438036 (is-Concat!11804 (reg!7497 r!13927))) b!2438435))

(assert (= (and b!2438036 (is-Star!7168 (reg!7497 r!13927))) b!2438436))

(assert (= (and b!2438036 (is-Union!7168 (reg!7497 r!13927))) b!2438437))

(declare-fun b_lambda!74905 () Bool)

(assert (= b_lambda!74903 (or start!238628 b_lambda!74905)))

(declare-fun bs!464710 () Bool)

(declare-fun d!704321 () Bool)

(assert (= bs!464710 (and d!704321 start!238628)))

(assert (=> bs!464710 (= (dynLambda!12251 lambda!92182 (h!33876 l!9164)) (validRegex!2880 (h!33876 l!9164)))))

(declare-fun m!2817365 () Bool)

(assert (=> bs!464710 m!2817365))

(assert (=> b!2438169 d!704321))

(push 1)

(assert (not b!2438138))

(assert (not b!2438250))

(assert (not b!2438435))

(assert (not d!704277))

(assert (not b!2438280))

(assert (not b!2438381))

(assert (not b!2438286))

(assert (not b!2438436))

(assert (not bm!149337))

(assert (not b!2438380))

(assert (not b!2438377))

(assert (not b!2438129))

(assert (not d!704315))

(assert (not b!2438284))

(assert (not b!2438135))

(assert (not b!2438141))

(assert (not d!704299))

(assert (not b!2438125))

(assert (not b!2438139))

(assert (not d!704305))

(assert (not b!2438245))

(assert (not b!2438392))

(assert (not bs!464710))

(assert (not b!2438426))

(assert (not b!2438410))

(assert (not b!2438375))

(assert (not b!2438414))

(assert (not b!2438374))

(assert (not b!2438248))

(assert (not b!2438130))

(assert (not d!704295))

(assert (not bm!149336))

(assert (not b!2438144))

(assert (not b!2438285))

(assert (not b!2438416))

(assert (not b!2438391))

(assert (not bm!149332))

(assert (not b!2438201))

(assert (not b!2438331))

(assert (not b!2438140))

(assert (not d!704291))

(assert (not b!2438170))

(assert (not d!704309))

(assert (not b!2438427))

(assert (not b!2438411))

(assert (not b!2438282))

(assert (not d!704287))

(assert (not b!2438367))

(assert (not bm!149317))

(assert (not b!2438419))

(assert (not b!2438366))

(assert (not b!2438389))

(assert (not d!704317))

(assert (not b!2438137))

(assert (not b!2438437))

(assert (not b!2438134))

(assert (not b!2438422))

(assert (not b!2438428))

(assert (not b!2438418))

(assert (not bm!149333))

(assert (not b!2438423))

(assert (not b!2438378))

(assert (not d!704297))

(assert (not b!2438398))

(assert (not d!704275))

(assert (not b!2438415))

(assert (not b!2438420))

(assert (not d!704301))

(assert (not b!2438127))

(assert (not b!2438327))

(assert (not bm!149316))

(assert (not b!2438128))

(assert (not b!2438388))

(assert (not b!2438412))

(assert (not b_lambda!74905))

(assert (not b!2438251))

(assert (not b!2438424))

(assert (not b!2438279))

(assert (not b!2438246))

(assert tp_is_empty!11749)

(assert (not d!704285))

(assert (not b!2438131))

(assert (not b!2438252))

(assert (not b!2438433))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

