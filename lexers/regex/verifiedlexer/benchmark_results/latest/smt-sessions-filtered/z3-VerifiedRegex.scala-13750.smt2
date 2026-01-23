; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!733896 () Bool)

(assert start!733896)

(declare-fun b!7618583 () Bool)

(assert (=> b!7618583 true))

(assert (=> b!7618583 true))

(declare-fun b!7618568 () Bool)

(declare-fun e!4530359 () Bool)

(declare-fun tp!2224664 () Bool)

(declare-fun tp!2224667 () Bool)

(assert (=> b!7618568 (= e!4530359 (and tp!2224664 tp!2224667))))

(declare-fun b!7618569 () Bool)

(declare-fun tp!2224662 () Bool)

(declare-fun tp!2224666 () Bool)

(assert (=> b!7618569 (= e!4530359 (and tp!2224662 tp!2224666))))

(declare-fun b!7618570 () Bool)

(declare-fun res!3049996 () Bool)

(declare-fun e!4530360 () Bool)

(assert (=> b!7618570 (=> (not res!3049996) (not e!4530360))))

(declare-datatypes ((C!40916 0))(
  ( (C!40917 (val!30898 Int)) )
))
(declare-datatypes ((Regex!20295 0))(
  ( (ElementMatch!20295 (c!1404184 C!40916)) (Concat!29140 (regOne!41102 Regex!20295) (regTwo!41102 Regex!20295)) (EmptyExpr!20295) (Star!20295 (reg!20624 Regex!20295)) (EmptyLang!20295) (Union!20295 (regOne!41103 Regex!20295) (regTwo!41103 Regex!20295)) )
))
(declare-fun r!14126 () Regex!20295)

(get-info :version)

(assert (=> b!7618570 (= res!3049996 (and (not ((_ is EmptyExpr!20295) r!14126)) (not ((_ is EmptyLang!20295) r!14126)) (not ((_ is ElementMatch!20295) r!14126)) (not ((_ is Union!20295) r!14126)) ((_ is Star!20295) r!14126)))))

(declare-fun res!3049994 () Bool)

(assert (=> start!733896 (=> (not res!3049994) (not e!4530360))))

(declare-fun validRegex!10715 (Regex!20295) Bool)

(assert (=> start!733896 (= res!3049994 (validRegex!10715 r!14126))))

(assert (=> start!733896 e!4530360))

(assert (=> start!733896 e!4530359))

(declare-fun e!4530354 () Bool)

(assert (=> start!733896 e!4530354))

(declare-fun e!4530356 () Bool)

(declare-fun e!4530361 () Bool)

(assert (=> start!733896 (and e!4530356 e!4530361)))

(declare-fun b!7618571 () Bool)

(declare-fun tp_is_empty!50945 () Bool)

(declare-fun tp!2224661 () Bool)

(assert (=> b!7618571 (= e!4530356 (and tp_is_empty!50945 tp!2224661))))

(declare-fun b!7618572 () Bool)

(declare-fun e!4530357 () Bool)

(declare-fun e!4530355 () Bool)

(assert (=> b!7618572 (= e!4530357 e!4530355)))

(declare-fun res!3049991 () Bool)

(assert (=> b!7618572 (=> res!3049991 e!4530355)))

(declare-datatypes ((List!73148 0))(
  ( (Nil!73024) (Cons!73024 (h!79472 C!40916) (t!387883 List!73148)) )
))
(declare-datatypes ((tuple2!69152 0))(
  ( (tuple2!69153 (_1!37879 List!73148) (_2!37879 List!73148)) )
))
(declare-fun cut!5 () tuple2!69152)

(declare-fun s!9605 () List!73148)

(declare-fun ++!17605 (List!73148 List!73148) List!73148)

(assert (=> b!7618572 (= res!3049991 (not (= (++!17605 (_1!37879 cut!5) (_2!37879 cut!5)) s!9605)))))

(declare-datatypes ((Unit!167428 0))(
  ( (Unit!167429) )
))
(declare-fun lt!2656036 () Unit!167428)

(declare-fun e!4530353 () Unit!167428)

(assert (=> b!7618572 (= lt!2656036 e!4530353)))

(declare-fun c!1404183 () Bool)

(declare-fun matchR!9802 (Regex!20295 List!73148) Bool)

(assert (=> b!7618572 (= c!1404183 (not (matchR!9802 r!14126 s!9605)))))

(declare-fun lt!2656035 () tuple2!69152)

(declare-fun matchRSpec!4494 (Regex!20295 List!73148) Bool)

(assert (=> b!7618572 (= (matchR!9802 r!14126 (_2!37879 lt!2656035)) (matchRSpec!4494 r!14126 (_2!37879 lt!2656035)))))

(declare-fun lt!2656027 () Unit!167428)

(declare-fun mainMatchTheorem!4488 (Regex!20295 List!73148) Unit!167428)

(assert (=> b!7618572 (= lt!2656027 (mainMatchTheorem!4488 r!14126 (_2!37879 lt!2656035)))))

(assert (=> b!7618572 (= (matchR!9802 (reg!20624 r!14126) (_1!37879 lt!2656035)) (matchRSpec!4494 (reg!20624 r!14126) (_1!37879 lt!2656035)))))

(declare-fun lt!2656032 () Unit!167428)

(assert (=> b!7618572 (= lt!2656032 (mainMatchTheorem!4488 (reg!20624 r!14126) (_1!37879 lt!2656035)))))

(declare-datatypes ((Option!17370 0))(
  ( (None!17369) (Some!17369 (v!54504 tuple2!69152)) )
))
(declare-fun lt!2656033 () Option!17370)

(declare-fun get!25754 (Option!17370) tuple2!69152)

(assert (=> b!7618572 (= lt!2656035 (get!25754 lt!2656033))))

(declare-fun b!7618573 () Bool)

(declare-fun Unit!167430 () Unit!167428)

(assert (=> b!7618573 (= e!4530353 Unit!167430)))

(declare-fun lt!2656031 () Unit!167428)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!122 (Regex!20295 Regex!20295 List!73148 List!73148 List!73148) Unit!167428)

(assert (=> b!7618573 (= lt!2656031 (lemmaFindSeparationIsDefinedThenConcatMatches!122 (reg!20624 r!14126) r!14126 (_1!37879 lt!2656035) (_2!37879 lt!2656035) s!9605))))

(declare-fun lt!2656034 () List!73148)

(assert (=> b!7618573 (= lt!2656034 (++!17605 (_1!37879 lt!2656035) (_2!37879 lt!2656035)))))

(assert (=> b!7618573 (matchR!9802 (Concat!29140 (reg!20624 r!14126) r!14126) lt!2656034)))

(declare-fun lt!2656030 () Unit!167428)

(declare-fun lemmaStarApp!176 (Regex!20295 List!73148 List!73148) Unit!167428)

(assert (=> b!7618573 (= lt!2656030 (lemmaStarApp!176 (reg!20624 r!14126) (_1!37879 lt!2656035) (_2!37879 lt!2656035)))))

(declare-fun res!3049993 () Bool)

(assert (=> b!7618573 (= res!3049993 (matchR!9802 r!14126 lt!2656034))))

(declare-fun e!4530358 () Bool)

(assert (=> b!7618573 (=> (not res!3049993) (not e!4530358))))

(assert (=> b!7618573 e!4530358))

(declare-fun b!7618574 () Bool)

(declare-fun tp!2224665 () Bool)

(assert (=> b!7618574 (= e!4530354 (and tp_is_empty!50945 tp!2224665))))

(declare-fun b!7618575 () Bool)

(declare-fun res!3049992 () Bool)

(assert (=> b!7618575 (=> (not res!3049992) (not e!4530360))))

(declare-fun isEmpty!41638 (List!73148) Bool)

(assert (=> b!7618575 (= res!3049992 (not (isEmpty!41638 s!9605)))))

(declare-fun b!7618576 () Bool)

(assert (=> b!7618576 (= e!4530358 false)))

(declare-fun b!7618577 () Bool)

(declare-fun Unit!167431 () Unit!167428)

(assert (=> b!7618577 (= e!4530353 Unit!167431)))

(declare-fun b!7618578 () Bool)

(declare-fun tp!2224660 () Bool)

(assert (=> b!7618578 (= e!4530361 (and tp_is_empty!50945 tp!2224660))))

(declare-fun b!7618579 () Bool)

(declare-fun tp!2224663 () Bool)

(assert (=> b!7618579 (= e!4530359 tp!2224663)))

(declare-fun b!7618580 () Bool)

(declare-fun res!3049995 () Bool)

(assert (=> b!7618580 (=> res!3049995 e!4530355)))

(assert (=> b!7618580 (= res!3049995 (not (matchR!9802 (reg!20624 r!14126) (_1!37879 cut!5))))))

(declare-fun b!7618581 () Bool)

(assert (=> b!7618581 (= e!4530359 tp_is_empty!50945)))

(declare-fun b!7618582 () Bool)

(assert (=> b!7618582 (= e!4530355 (validRegex!10715 r!14126))))

(assert (=> b!7618583 (= e!4530360 (not e!4530357))))

(declare-fun res!3049990 () Bool)

(assert (=> b!7618583 (=> res!3049990 e!4530357)))

(declare-fun lt!2656029 () Bool)

(assert (=> b!7618583 (= res!3049990 (not lt!2656029))))

(declare-fun lambda!468263 () Int)

(declare-fun Exists!4451 (Int) Bool)

(assert (=> b!7618583 (= lt!2656029 (Exists!4451 lambda!468263))))

(declare-fun isDefined!13986 (Option!17370) Bool)

(assert (=> b!7618583 (= lt!2656029 (isDefined!13986 lt!2656033))))

(declare-fun findConcatSeparation!3400 (Regex!20295 Regex!20295 List!73148 List!73148 List!73148) Option!17370)

(assert (=> b!7618583 (= lt!2656033 (findConcatSeparation!3400 (reg!20624 r!14126) r!14126 Nil!73024 s!9605 s!9605))))

(declare-fun lt!2656028 () Unit!167428)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3158 (Regex!20295 Regex!20295 List!73148) Unit!167428)

(assert (=> b!7618583 (= lt!2656028 (lemmaFindConcatSeparationEquivalentToExists!3158 (reg!20624 r!14126) r!14126 s!9605))))

(assert (= (and start!733896 res!3049994) b!7618570))

(assert (= (and b!7618570 res!3049996) b!7618575))

(assert (= (and b!7618575 res!3049992) b!7618583))

(assert (= (and b!7618583 (not res!3049990)) b!7618572))

(assert (= (and b!7618572 c!1404183) b!7618573))

(assert (= (and b!7618572 (not c!1404183)) b!7618577))

(assert (= (and b!7618573 res!3049993) b!7618576))

(assert (= (and b!7618572 (not res!3049991)) b!7618580))

(assert (= (and b!7618580 (not res!3049995)) b!7618582))

(assert (= (and start!733896 ((_ is ElementMatch!20295) r!14126)) b!7618581))

(assert (= (and start!733896 ((_ is Concat!29140) r!14126)) b!7618568))

(assert (= (and start!733896 ((_ is Star!20295) r!14126)) b!7618579))

(assert (= (and start!733896 ((_ is Union!20295) r!14126)) b!7618569))

(assert (= (and start!733896 ((_ is Cons!73024) s!9605)) b!7618574))

(assert (= (and start!733896 ((_ is Cons!73024) (_1!37879 cut!5))) b!7618571))

(assert (= (and start!733896 ((_ is Cons!73024) (_2!37879 cut!5))) b!7618578))

(declare-fun m!8151136 () Bool)

(assert (=> b!7618582 m!8151136))

(declare-fun m!8151138 () Bool)

(assert (=> b!7618575 m!8151138))

(declare-fun m!8151140 () Bool)

(assert (=> b!7618583 m!8151140))

(declare-fun m!8151142 () Bool)

(assert (=> b!7618583 m!8151142))

(declare-fun m!8151144 () Bool)

(assert (=> b!7618583 m!8151144))

(declare-fun m!8151146 () Bool)

(assert (=> b!7618583 m!8151146))

(declare-fun m!8151148 () Bool)

(assert (=> b!7618580 m!8151148))

(assert (=> start!733896 m!8151136))

(declare-fun m!8151150 () Bool)

(assert (=> b!7618572 m!8151150))

(declare-fun m!8151152 () Bool)

(assert (=> b!7618572 m!8151152))

(declare-fun m!8151154 () Bool)

(assert (=> b!7618572 m!8151154))

(declare-fun m!8151156 () Bool)

(assert (=> b!7618572 m!8151156))

(declare-fun m!8151158 () Bool)

(assert (=> b!7618572 m!8151158))

(declare-fun m!8151160 () Bool)

(assert (=> b!7618572 m!8151160))

(declare-fun m!8151162 () Bool)

(assert (=> b!7618572 m!8151162))

(declare-fun m!8151164 () Bool)

(assert (=> b!7618572 m!8151164))

(declare-fun m!8151166 () Bool)

(assert (=> b!7618572 m!8151166))

(declare-fun m!8151168 () Bool)

(assert (=> b!7618573 m!8151168))

(declare-fun m!8151170 () Bool)

(assert (=> b!7618573 m!8151170))

(declare-fun m!8151172 () Bool)

(assert (=> b!7618573 m!8151172))

(declare-fun m!8151174 () Bool)

(assert (=> b!7618573 m!8151174))

(declare-fun m!8151176 () Bool)

(assert (=> b!7618573 m!8151176))

(check-sat (not b!7618578) (not b!7618579) (not b!7618583) tp_is_empty!50945 (not b!7618569) (not b!7618573) (not b!7618580) (not b!7618572) (not b!7618568) (not b!7618574) (not b!7618582) (not start!733896) (not b!7618575) (not b!7618571))
(check-sat)
