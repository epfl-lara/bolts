; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!81226 () Bool)

(assert start!81226)

(declare-fun b!902826 () Bool)

(assert (=> b!902826 true))

(assert (=> b!902826 true))

(assert (=> b!902826 true))

(declare-fun lambda!28294 () Int)

(declare-fun lambda!28293 () Int)

(assert (=> b!902826 (not (= lambda!28294 lambda!28293))))

(assert (=> b!902826 true))

(assert (=> b!902826 true))

(assert (=> b!902826 true))

(declare-fun b!902822 () Bool)

(declare-fun e!590014 () Bool)

(declare-fun e!590012 () Bool)

(assert (=> b!902822 (= e!590014 e!590012)))

(declare-fun res!410552 () Bool)

(assert (=> b!902822 (=> res!410552 e!590012)))

(declare-datatypes ((C!5316 0))(
  ( (C!5317 (val!2906 Int)) )
))
(declare-datatypes ((Regex!2373 0))(
  ( (ElementMatch!2373 (c!146266 C!5316)) (Concat!4206 (regOne!5258 Regex!2373) (regTwo!5258 Regex!2373)) (EmptyExpr!2373) (Star!2373 (reg!2702 Regex!2373)) (EmptyLang!2373) (Union!2373 (regOne!5259 Regex!2373) (regTwo!5259 Regex!2373)) )
))
(declare-fun r!15766 () Regex!2373)

(declare-datatypes ((List!9603 0))(
  ( (Nil!9587) (Cons!9587 (h!14988 C!5316) (t!100649 List!9603)) )
))
(declare-datatypes ((tuple2!10748 0))(
  ( (tuple2!10749 (_1!6200 List!9603) (_2!6200 List!9603)) )
))
(declare-fun lt!335081 () tuple2!10748)

(declare-fun matchR!911 (Regex!2373 List!9603) Bool)

(assert (=> b!902822 (= res!410552 (not (matchR!911 (reg!2702 r!15766) (_1!6200 lt!335081))))))

(declare-datatypes ((Option!2016 0))(
  ( (None!2015) (Some!2015 (v!19432 tuple2!10748)) )
))
(declare-fun lt!335077 () Option!2016)

(declare-fun get!3058 (Option!2016) tuple2!10748)

(assert (=> b!902822 (= lt!335081 (get!3058 lt!335077))))

(declare-fun b!902823 () Bool)

(declare-fun e!590017 () Bool)

(declare-fun tp_is_empty!4389 () Bool)

(declare-fun tp!282900 () Bool)

(assert (=> b!902823 (= e!590017 (and tp_is_empty!4389 tp!282900))))

(declare-fun b!902824 () Bool)

(declare-fun e!590016 () Bool)

(declare-fun tp!282896 () Bool)

(assert (=> b!902824 (= e!590016 tp!282896)))

(declare-fun b!902825 () Bool)

(declare-fun e!590015 () Bool)

(assert (=> b!902825 (= e!590012 e!590015)))

(declare-fun res!410554 () Bool)

(assert (=> b!902825 (=> res!410554 e!590015)))

(declare-fun lt!335066 () Regex!2373)

(declare-fun lt!335072 () Regex!2373)

(assert (=> b!902825 (= res!410554 (not (= lt!335066 lt!335072)))))

(declare-fun lt!335076 () Regex!2373)

(assert (=> b!902825 (= lt!335072 (Star!2373 lt!335076))))

(assert (=> b!902825 (matchR!911 lt!335066 (_2!6200 lt!335081))))

(declare-fun lt!335075 () Regex!2373)

(declare-fun removeUselessConcat!86 (Regex!2373) Regex!2373)

(assert (=> b!902825 (= lt!335066 (removeUselessConcat!86 lt!335075))))

(declare-datatypes ((Unit!14359 0))(
  ( (Unit!14360) )
))
(declare-fun lt!335079 () Unit!14359)

(declare-fun lemmaRemoveUselessConcatSound!78 (Regex!2373 List!9603) Unit!14359)

(assert (=> b!902825 (= lt!335079 (lemmaRemoveUselessConcatSound!78 lt!335075 (_2!6200 lt!335081)))))

(declare-fun lt!335080 () Unit!14359)

(declare-fun e!590010 () Unit!14359)

(assert (=> b!902825 (= lt!335080 e!590010)))

(declare-fun c!146265 () Bool)

(declare-fun s!10566 () List!9603)

(declare-fun size!7878 (List!9603) Int)

(assert (=> b!902825 (= c!146265 (= (size!7878 (_2!6200 lt!335081)) (size!7878 s!10566)))))

(assert (=> b!902825 (matchR!911 lt!335076 (_1!6200 lt!335081))))

(assert (=> b!902825 (= lt!335076 (removeUselessConcat!86 (reg!2702 r!15766)))))

(declare-fun lt!335069 () Unit!14359)

(assert (=> b!902825 (= lt!335069 (lemmaRemoveUselessConcatSound!78 (reg!2702 r!15766) (_1!6200 lt!335081)))))

(declare-fun e!590013 () Bool)

(assert (=> b!902826 (= e!590013 e!590014)))

(declare-fun res!410548 () Bool)

(assert (=> b!902826 (=> res!410548 e!590014)))

(declare-fun isEmpty!5794 (List!9603) Bool)

(assert (=> b!902826 (= res!410548 (isEmpty!5794 s!10566))))

(declare-fun Exists!150 (Int) Bool)

(assert (=> b!902826 (= (Exists!150 lambda!28293) (Exists!150 lambda!28294))))

(declare-fun lt!335071 () Unit!14359)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!42 (Regex!2373 List!9603) Unit!14359)

(assert (=> b!902826 (= lt!335071 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!42 (reg!2702 r!15766) s!10566))))

(declare-fun lt!335070 () Bool)

(assert (=> b!902826 (= lt!335070 (Exists!150 lambda!28293))))

(declare-fun isDefined!1658 (Option!2016) Bool)

(assert (=> b!902826 (= lt!335070 (isDefined!1658 lt!335077))))

(declare-fun findConcatSeparation!122 (Regex!2373 Regex!2373 List!9603 List!9603 List!9603) Option!2016)

(assert (=> b!902826 (= lt!335077 (findConcatSeparation!122 (reg!2702 r!15766) lt!335075 Nil!9587 s!10566 s!10566))))

(declare-fun lt!335074 () Unit!14359)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!122 (Regex!2373 Regex!2373 List!9603) Unit!14359)

(assert (=> b!902826 (= lt!335074 (lemmaFindConcatSeparationEquivalentToExists!122 (reg!2702 r!15766) lt!335075 s!10566))))

(assert (=> b!902826 (= lt!335075 (Star!2373 (reg!2702 r!15766)))))

(declare-fun b!902827 () Bool)

(declare-fun res!410553 () Bool)

(assert (=> b!902827 (=> res!410553 e!590015)))

(declare-fun validRegex!842 (Regex!2373) Bool)

(assert (=> b!902827 (= res!410553 (not (validRegex!842 lt!335072)))))

(declare-fun b!902828 () Bool)

(declare-fun res!410550 () Bool)

(assert (=> b!902828 (=> res!410550 e!590014)))

(assert (=> b!902828 (= res!410550 (not lt!335070))))

(declare-fun res!410546 () Bool)

(declare-fun e!590011 () Bool)

(assert (=> start!81226 (=> (not res!410546) (not e!590011))))

(assert (=> start!81226 (= res!410546 (validRegex!842 r!15766))))

(assert (=> start!81226 e!590011))

(assert (=> start!81226 e!590016))

(assert (=> start!81226 e!590017))

(declare-fun b!902829 () Bool)

(declare-fun Unit!14361 () Unit!14359)

(assert (=> b!902829 (= e!590010 Unit!14361)))

(declare-fun b!902830 () Bool)

(declare-fun Unit!14362 () Unit!14359)

(assert (=> b!902830 (= e!590010 Unit!14362)))

(declare-fun lt!335073 () Unit!14359)

(declare-fun mainMatchTheorem!174 (Regex!2373 List!9603) Unit!14359)

(assert (=> b!902830 (= lt!335073 (mainMatchTheorem!174 (reg!2702 r!15766) (_1!6200 lt!335081)))))

(assert (=> b!902830 false))

(declare-fun b!902831 () Bool)

(assert (=> b!902831 (= e!590015 true)))

(declare-fun ++!2511 (List!9603 List!9603) List!9603)

(assert (=> b!902831 (matchR!911 lt!335072 (++!2511 (_1!6200 lt!335081) (_2!6200 lt!335081)))))

(declare-fun lt!335067 () Unit!14359)

(declare-fun lemmaStarApp!2 (Regex!2373 List!9603 List!9603) Unit!14359)

(assert (=> b!902831 (= lt!335067 (lemmaStarApp!2 lt!335076 (_1!6200 lt!335081) (_2!6200 lt!335081)))))

(declare-fun b!902832 () Bool)

(declare-fun tp!282899 () Bool)

(declare-fun tp!282897 () Bool)

(assert (=> b!902832 (= e!590016 (and tp!282899 tp!282897))))

(declare-fun b!902833 () Bool)

(declare-fun res!410551 () Bool)

(assert (=> b!902833 (=> res!410551 e!590012)))

(assert (=> b!902833 (= res!410551 (not (matchR!911 lt!335075 (_2!6200 lt!335081))))))

(declare-fun b!902834 () Bool)

(declare-fun res!410549 () Bool)

(assert (=> b!902834 (=> res!410549 e!590015)))

(assert (=> b!902834 (= res!410549 (not (matchR!911 lt!335072 (_2!6200 lt!335081))))))

(declare-fun b!902835 () Bool)

(assert (=> b!902835 (= e!590011 (not e!590013))))

(declare-fun res!410547 () Bool)

(assert (=> b!902835 (=> res!410547 e!590013)))

(declare-fun lt!335068 () Bool)

(get-info :version)

(assert (=> b!902835 (= res!410547 (or (not lt!335068) (and ((_ is Concat!4206) r!15766) ((_ is EmptyExpr!2373) (regOne!5258 r!15766))) (and ((_ is Concat!4206) r!15766) ((_ is EmptyExpr!2373) (regTwo!5258 r!15766))) ((_ is Concat!4206) r!15766) ((_ is Union!2373) r!15766) (not ((_ is Star!2373) r!15766))))))

(declare-fun matchRSpec!174 (Regex!2373 List!9603) Bool)

(assert (=> b!902835 (= lt!335068 (matchRSpec!174 r!15766 s!10566))))

(assert (=> b!902835 (= lt!335068 (matchR!911 r!15766 s!10566))))

(declare-fun lt!335078 () Unit!14359)

(assert (=> b!902835 (= lt!335078 (mainMatchTheorem!174 r!15766 s!10566))))

(declare-fun b!902836 () Bool)

(assert (=> b!902836 (= e!590016 tp_is_empty!4389)))

(declare-fun b!902837 () Bool)

(declare-fun tp!282898 () Bool)

(declare-fun tp!282895 () Bool)

(assert (=> b!902837 (= e!590016 (and tp!282898 tp!282895))))

(assert (= (and start!81226 res!410546) b!902835))

(assert (= (and b!902835 (not res!410547)) b!902826))

(assert (= (and b!902826 (not res!410548)) b!902828))

(assert (= (and b!902828 (not res!410550)) b!902822))

(assert (= (and b!902822 (not res!410552)) b!902833))

(assert (= (and b!902833 (not res!410551)) b!902825))

(assert (= (and b!902825 c!146265) b!902830))

(assert (= (and b!902825 (not c!146265)) b!902829))

(assert (= (and b!902825 (not res!410554)) b!902834))

(assert (= (and b!902834 (not res!410549)) b!902827))

(assert (= (and b!902827 (not res!410553)) b!902831))

(assert (= (and start!81226 ((_ is ElementMatch!2373) r!15766)) b!902836))

(assert (= (and start!81226 ((_ is Concat!4206) r!15766)) b!902837))

(assert (= (and start!81226 ((_ is Star!2373) r!15766)) b!902824))

(assert (= (and start!81226 ((_ is Union!2373) r!15766)) b!902832))

(assert (= (and start!81226 ((_ is Cons!9587) s!10566)) b!902823))

(declare-fun m!1139593 () Bool)

(assert (=> b!902826 m!1139593))

(declare-fun m!1139595 () Bool)

(assert (=> b!902826 m!1139595))

(declare-fun m!1139597 () Bool)

(assert (=> b!902826 m!1139597))

(declare-fun m!1139599 () Bool)

(assert (=> b!902826 m!1139599))

(declare-fun m!1139601 () Bool)

(assert (=> b!902826 m!1139601))

(declare-fun m!1139603 () Bool)

(assert (=> b!902826 m!1139603))

(declare-fun m!1139605 () Bool)

(assert (=> b!902826 m!1139605))

(assert (=> b!902826 m!1139601))

(declare-fun m!1139607 () Bool)

(assert (=> b!902834 m!1139607))

(declare-fun m!1139609 () Bool)

(assert (=> b!902835 m!1139609))

(declare-fun m!1139611 () Bool)

(assert (=> b!902835 m!1139611))

(declare-fun m!1139613 () Bool)

(assert (=> b!902835 m!1139613))

(declare-fun m!1139615 () Bool)

(assert (=> b!902831 m!1139615))

(assert (=> b!902831 m!1139615))

(declare-fun m!1139617 () Bool)

(assert (=> b!902831 m!1139617))

(declare-fun m!1139619 () Bool)

(assert (=> b!902831 m!1139619))

(declare-fun m!1139621 () Bool)

(assert (=> b!902833 m!1139621))

(declare-fun m!1139623 () Bool)

(assert (=> b!902830 m!1139623))

(declare-fun m!1139625 () Bool)

(assert (=> start!81226 m!1139625))

(declare-fun m!1139627 () Bool)

(assert (=> b!902822 m!1139627))

(declare-fun m!1139629 () Bool)

(assert (=> b!902822 m!1139629))

(declare-fun m!1139631 () Bool)

(assert (=> b!902827 m!1139631))

(declare-fun m!1139633 () Bool)

(assert (=> b!902825 m!1139633))

(declare-fun m!1139635 () Bool)

(assert (=> b!902825 m!1139635))

(declare-fun m!1139637 () Bool)

(assert (=> b!902825 m!1139637))

(declare-fun m!1139639 () Bool)

(assert (=> b!902825 m!1139639))

(declare-fun m!1139641 () Bool)

(assert (=> b!902825 m!1139641))

(declare-fun m!1139643 () Bool)

(assert (=> b!902825 m!1139643))

(declare-fun m!1139645 () Bool)

(assert (=> b!902825 m!1139645))

(declare-fun m!1139647 () Bool)

(assert (=> b!902825 m!1139647))

(check-sat (not b!902832) (not start!81226) tp_is_empty!4389 (not b!902825) (not b!902837) (not b!902835) (not b!902831) (not b!902834) (not b!902833) (not b!902830) (not b!902822) (not b!902826) (not b!902827) (not b!902824) (not b!902823))
(check-sat)
