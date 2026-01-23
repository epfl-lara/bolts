; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!723446 () Bool)

(assert start!723446)

(declare-fun b!7451992 () Bool)

(assert (=> b!7451992 true))

(assert (=> b!7451992 true))

(assert (=> b!7451992 true))

(declare-fun lambda!460953 () Int)

(declare-fun lambda!460952 () Int)

(assert (=> b!7451992 (not (= lambda!460953 lambda!460952))))

(assert (=> b!7451992 true))

(assert (=> b!7451992 true))

(assert (=> b!7451992 true))

(declare-fun b!7451979 () Bool)

(declare-fun res!2989054 () Bool)

(declare-fun e!4448195 () Bool)

(assert (=> b!7451979 (=> (not res!2989054) (not e!4448195))))

(declare-datatypes ((C!39268 0))(
  ( (C!39269 (val!30032 Int)) )
))
(declare-datatypes ((Regex!19497 0))(
  ( (ElementMatch!19497 (c!1377932 C!39268)) (Concat!28342 (regOne!39506 Regex!19497) (regTwo!39506 Regex!19497)) (EmptyExpr!19497) (Star!19497 (reg!19826 Regex!19497)) (EmptyLang!19497) (Union!19497 (regOne!39507 Regex!19497) (regTwo!39507 Regex!19497)) )
))
(declare-fun r2!5783 () Regex!19497)

(declare-fun validRegex!10011 (Regex!19497) Bool)

(assert (=> b!7451979 (= res!2989054 (validRegex!10011 r2!5783))))

(declare-fun b!7451980 () Bool)

(declare-fun e!4448192 () Bool)

(declare-fun tp!2159343 () Bool)

(declare-fun tp!2159355 () Bool)

(assert (=> b!7451980 (= e!4448192 (and tp!2159343 tp!2159355))))

(declare-fun b!7451981 () Bool)

(declare-fun e!4448198 () Bool)

(declare-fun tp_is_empty!49283 () Bool)

(assert (=> b!7451981 (= e!4448198 tp_is_empty!49283)))

(declare-fun b!7451982 () Bool)

(assert (=> b!7451982 (= e!4448192 tp_is_empty!49283)))

(declare-fun b!7451983 () Bool)

(declare-fun tp!2159350 () Bool)

(assert (=> b!7451983 (= e!4448198 tp!2159350)))

(declare-fun b!7451984 () Bool)

(declare-fun res!2989056 () Bool)

(declare-fun e!4448194 () Bool)

(assert (=> b!7451984 (=> res!2989056 e!4448194)))

(declare-fun rTail!78 () Regex!19497)

(declare-datatypes ((List!72213 0))(
  ( (Nil!72089) (Cons!72089 (h!78537 C!39268) (t!386782 List!72213)) )
))
(declare-datatypes ((tuple2!68448 0))(
  ( (tuple2!68449 (_1!37527 List!72213) (_2!37527 List!72213)) )
))
(declare-fun lt!2620414 () tuple2!68448)

(declare-fun matchR!9261 (Regex!19497 List!72213) Bool)

(assert (=> b!7451984 (= res!2989056 (not (matchR!9261 rTail!78 (_2!37527 lt!2620414))))))

(declare-fun b!7451985 () Bool)

(declare-fun e!4448197 () Bool)

(assert (=> b!7451985 (= e!4448195 (not e!4448197))))

(declare-fun res!2989053 () Bool)

(assert (=> b!7451985 (=> res!2989053 e!4448197)))

(declare-fun lt!2620425 () Bool)

(assert (=> b!7451985 (= res!2989053 (not lt!2620425))))

(declare-fun lt!2620422 () Regex!19497)

(declare-fun s!13591 () List!72213)

(declare-fun matchRSpec!4176 (Regex!19497 List!72213) Bool)

(assert (=> b!7451985 (= (matchR!9261 lt!2620422 s!13591) (matchRSpec!4176 lt!2620422 s!13591))))

(declare-datatypes ((Unit!165829 0))(
  ( (Unit!165830) )
))
(declare-fun lt!2620416 () Unit!165829)

(declare-fun mainMatchTheorem!4170 (Regex!19497 List!72213) Unit!165829)

(assert (=> b!7451985 (= lt!2620416 (mainMatchTheorem!4170 lt!2620422 s!13591))))

(declare-fun lt!2620424 () Regex!19497)

(assert (=> b!7451985 (= lt!2620425 (matchRSpec!4176 lt!2620424 s!13591))))

(assert (=> b!7451985 (= lt!2620425 (matchR!9261 lt!2620424 s!13591))))

(declare-fun lt!2620418 () Unit!165829)

(assert (=> b!7451985 (= lt!2620418 (mainMatchTheorem!4170 lt!2620424 s!13591))))

(declare-fun r1!5845 () Regex!19497)

(assert (=> b!7451985 (= lt!2620422 (Union!19497 (Concat!28342 r1!5845 rTail!78) (Concat!28342 r2!5783 rTail!78)))))

(declare-fun lt!2620423 () Regex!19497)

(assert (=> b!7451985 (= lt!2620424 (Concat!28342 lt!2620423 rTail!78))))

(assert (=> b!7451985 (= lt!2620423 (Union!19497 r1!5845 r2!5783))))

(declare-fun b!7451986 () Bool)

(declare-fun tp!2159346 () Bool)

(declare-fun tp!2159348 () Bool)

(assert (=> b!7451986 (= e!4448198 (and tp!2159346 tp!2159348))))

(declare-fun b!7451987 () Bool)

(declare-fun tp!2159347 () Bool)

(assert (=> b!7451987 (= e!4448192 tp!2159347)))

(declare-fun b!7451988 () Bool)

(assert (=> b!7451988 (= e!4448194 true)))

(assert (=> b!7451988 (matchRSpec!4176 rTail!78 (_2!37527 lt!2620414))))

(declare-fun lt!2620421 () Unit!165829)

(assert (=> b!7451988 (= lt!2620421 (mainMatchTheorem!4170 rTail!78 (_2!37527 lt!2620414)))))

(assert (=> b!7451988 (matchRSpec!4176 lt!2620423 (_1!37527 lt!2620414))))

(declare-fun lt!2620420 () Unit!165829)

(assert (=> b!7451988 (= lt!2620420 (mainMatchTheorem!4170 lt!2620423 (_1!37527 lt!2620414)))))

(declare-fun b!7451989 () Bool)

(declare-fun e!4448193 () Bool)

(declare-fun tp!2159344 () Bool)

(assert (=> b!7451989 (= e!4448193 (and tp_is_empty!49283 tp!2159344))))

(declare-fun b!7451990 () Bool)

(declare-fun res!2989051 () Bool)

(assert (=> b!7451990 (=> (not res!2989051) (not e!4448195))))

(assert (=> b!7451990 (= res!2989051 (validRegex!10011 rTail!78))))

(declare-fun b!7451991 () Bool)

(declare-fun e!4448196 () Bool)

(declare-fun tp!2159342 () Bool)

(assert (=> b!7451991 (= e!4448196 tp!2159342)))

(assert (=> b!7451992 (= e!4448197 e!4448194)))

(declare-fun res!2989052 () Bool)

(assert (=> b!7451992 (=> res!2989052 e!4448194)))

(assert (=> b!7451992 (= res!2989052 (not (matchR!9261 lt!2620423 (_1!37527 lt!2620414))))))

(declare-datatypes ((Option!17056 0))(
  ( (None!17055) (Some!17055 (v!54184 tuple2!68448)) )
))
(declare-fun lt!2620419 () Option!17056)

(declare-fun get!25129 (Option!17056) tuple2!68448)

(assert (=> b!7451992 (= lt!2620414 (get!25129 lt!2620419))))

(declare-fun Exists!4118 (Int) Bool)

(assert (=> b!7451992 (= (Exists!4118 lambda!460952) (Exists!4118 lambda!460953))))

(declare-fun lt!2620417 () Unit!165829)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2454 (Regex!19497 Regex!19497 List!72213) Unit!165829)

(assert (=> b!7451992 (= lt!2620417 (lemmaExistCutMatchRandMatchRSpecEquivalent!2454 lt!2620423 rTail!78 s!13591))))

(declare-fun isDefined!13745 (Option!17056) Bool)

(assert (=> b!7451992 (= (isDefined!13745 lt!2620419) (Exists!4118 lambda!460952))))

(declare-fun findConcatSeparation!3178 (Regex!19497 Regex!19497 List!72213 List!72213 List!72213) Option!17056)

(assert (=> b!7451992 (= lt!2620419 (findConcatSeparation!3178 lt!2620423 rTail!78 Nil!72089 s!13591 s!13591))))

(declare-fun lt!2620415 () Unit!165829)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2936 (Regex!19497 Regex!19497 List!72213) Unit!165829)

(assert (=> b!7451992 (= lt!2620415 (lemmaFindConcatSeparationEquivalentToExists!2936 lt!2620423 rTail!78 s!13591))))

(declare-fun res!2989055 () Bool)

(assert (=> start!723446 (=> (not res!2989055) (not e!4448195))))

(assert (=> start!723446 (= res!2989055 (validRegex!10011 r1!5845))))

(assert (=> start!723446 e!4448195))

(assert (=> start!723446 e!4448198))

(assert (=> start!723446 e!4448196))

(assert (=> start!723446 e!4448192))

(assert (=> start!723446 e!4448193))

(declare-fun b!7451993 () Bool)

(declare-fun tp!2159345 () Bool)

(declare-fun tp!2159351 () Bool)

(assert (=> b!7451993 (= e!4448196 (and tp!2159345 tp!2159351))))

(declare-fun b!7451994 () Bool)

(declare-fun tp!2159349 () Bool)

(declare-fun tp!2159353 () Bool)

(assert (=> b!7451994 (= e!4448198 (and tp!2159349 tp!2159353))))

(declare-fun b!7451995 () Bool)

(declare-fun tp!2159352 () Bool)

(declare-fun tp!2159354 () Bool)

(assert (=> b!7451995 (= e!4448192 (and tp!2159352 tp!2159354))))

(declare-fun b!7451996 () Bool)

(assert (=> b!7451996 (= e!4448196 tp_is_empty!49283)))

(declare-fun b!7451997 () Bool)

(declare-fun tp!2159341 () Bool)

(declare-fun tp!2159340 () Bool)

(assert (=> b!7451997 (= e!4448196 (and tp!2159341 tp!2159340))))

(assert (= (and start!723446 res!2989055) b!7451979))

(assert (= (and b!7451979 res!2989054) b!7451990))

(assert (= (and b!7451990 res!2989051) b!7451985))

(assert (= (and b!7451985 (not res!2989053)) b!7451992))

(assert (= (and b!7451992 (not res!2989052)) b!7451984))

(assert (= (and b!7451984 (not res!2989056)) b!7451988))

(get-info :version)

(assert (= (and start!723446 ((_ is ElementMatch!19497) r1!5845)) b!7451981))

(assert (= (and start!723446 ((_ is Concat!28342) r1!5845)) b!7451986))

(assert (= (and start!723446 ((_ is Star!19497) r1!5845)) b!7451983))

(assert (= (and start!723446 ((_ is Union!19497) r1!5845)) b!7451994))

(assert (= (and start!723446 ((_ is ElementMatch!19497) r2!5783)) b!7451996))

(assert (= (and start!723446 ((_ is Concat!28342) r2!5783)) b!7451993))

(assert (= (and start!723446 ((_ is Star!19497) r2!5783)) b!7451991))

(assert (= (and start!723446 ((_ is Union!19497) r2!5783)) b!7451997))

(assert (= (and start!723446 ((_ is ElementMatch!19497) rTail!78)) b!7451982))

(assert (= (and start!723446 ((_ is Concat!28342) rTail!78)) b!7451980))

(assert (= (and start!723446 ((_ is Star!19497) rTail!78)) b!7451987))

(assert (= (and start!723446 ((_ is Union!19497) rTail!78)) b!7451995))

(assert (= (and start!723446 ((_ is Cons!72089) s!13591)) b!7451989))

(declare-fun m!8057412 () Bool)

(assert (=> b!7451985 m!8057412))

(declare-fun m!8057414 () Bool)

(assert (=> b!7451985 m!8057414))

(declare-fun m!8057416 () Bool)

(assert (=> b!7451985 m!8057416))

(declare-fun m!8057418 () Bool)

(assert (=> b!7451985 m!8057418))

(declare-fun m!8057420 () Bool)

(assert (=> b!7451985 m!8057420))

(declare-fun m!8057422 () Bool)

(assert (=> b!7451985 m!8057422))

(declare-fun m!8057424 () Bool)

(assert (=> b!7451979 m!8057424))

(declare-fun m!8057426 () Bool)

(assert (=> b!7451992 m!8057426))

(declare-fun m!8057428 () Bool)

(assert (=> b!7451992 m!8057428))

(declare-fun m!8057430 () Bool)

(assert (=> b!7451992 m!8057430))

(declare-fun m!8057432 () Bool)

(assert (=> b!7451992 m!8057432))

(assert (=> b!7451992 m!8057428))

(declare-fun m!8057434 () Bool)

(assert (=> b!7451992 m!8057434))

(declare-fun m!8057436 () Bool)

(assert (=> b!7451992 m!8057436))

(declare-fun m!8057438 () Bool)

(assert (=> b!7451992 m!8057438))

(declare-fun m!8057440 () Bool)

(assert (=> b!7451992 m!8057440))

(declare-fun m!8057442 () Bool)

(assert (=> b!7451990 m!8057442))

(declare-fun m!8057444 () Bool)

(assert (=> b!7451988 m!8057444))

(declare-fun m!8057446 () Bool)

(assert (=> b!7451988 m!8057446))

(declare-fun m!8057448 () Bool)

(assert (=> b!7451988 m!8057448))

(declare-fun m!8057450 () Bool)

(assert (=> b!7451988 m!8057450))

(declare-fun m!8057452 () Bool)

(assert (=> b!7451984 m!8057452))

(declare-fun m!8057454 () Bool)

(assert (=> start!723446 m!8057454))

(check-sat (not b!7451993) (not start!723446) tp_is_empty!49283 (not b!7451991) (not b!7451979) (not b!7451995) (not b!7451985) (not b!7451984) (not b!7451988) (not b!7451992) (not b!7451980) (not b!7451990) (not b!7451994) (not b!7451989) (not b!7451997) (not b!7451986) (not b!7451983) (not b!7451987))
(check-sat)
