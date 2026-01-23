; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!91998 () Bool)

(assert start!91998)

(declare-fun b!1081817 () Bool)

(assert (=> b!1081817 true))

(assert (=> b!1081817 true))

(assert (=> b!1081817 true))

(declare-fun lambda!39264 () Int)

(declare-fun lambda!39263 () Int)

(assert (=> b!1081817 (not (= lambda!39264 lambda!39263))))

(assert (=> b!1081817 true))

(assert (=> b!1081817 true))

(assert (=> b!1081817 true))

(declare-fun bs!256257 () Bool)

(declare-fun b!1081819 () Bool)

(assert (= bs!256257 (and b!1081819 b!1081817)))

(declare-fun lambda!39265 () Int)

(declare-datatypes ((C!6480 0))(
  ( (C!6481 (val!3488 Int)) )
))
(declare-datatypes ((Regex!2955 0))(
  ( (ElementMatch!2955 (c!182590 C!6480)) (Concat!4788 (regOne!6422 Regex!2955) (regTwo!6422 Regex!2955)) (EmptyExpr!2955) (Star!2955 (reg!3284 Regex!2955)) (EmptyLang!2955) (Union!2955 (regOne!6423 Regex!2955) (regTwo!6423 Regex!2955)) )
))
(declare-fun r!15766 () Regex!2955)

(declare-fun lt!362273 () Regex!2955)

(declare-fun lt!362280 () Regex!2955)

(declare-fun lt!362288 () Regex!2955)

(assert (=> bs!256257 (= (and (= lt!362280 (reg!3284 r!15766)) (= lt!362288 lt!362273)) (= lambda!39265 lambda!39263))))

(assert (=> bs!256257 (not (= lambda!39265 lambda!39264))))

(assert (=> b!1081819 true))

(assert (=> b!1081819 true))

(assert (=> b!1081819 true))

(declare-fun lambda!39266 () Int)

(assert (=> bs!256257 (not (= lambda!39266 lambda!39263))))

(assert (=> bs!256257 (= (and (= lt!362280 (reg!3284 r!15766)) (= lt!362288 lt!362273)) (= lambda!39266 lambda!39264))))

(assert (=> b!1081819 (not (= lambda!39266 lambda!39265))))

(assert (=> b!1081819 true))

(assert (=> b!1081819 true))

(assert (=> b!1081819 true))

(declare-fun b!1081816 () Bool)

(declare-fun e!684229 () Bool)

(declare-fun tp_is_empty!5553 () Bool)

(declare-fun tp!323579 () Bool)

(assert (=> b!1081816 (= e!684229 (and tp_is_empty!5553 tp!323579))))

(declare-fun e!684228 () Bool)

(declare-fun e!684230 () Bool)

(assert (=> b!1081817 (= e!684228 e!684230)))

(declare-fun res!481381 () Bool)

(assert (=> b!1081817 (=> res!481381 e!684230)))

(declare-datatypes ((List!10185 0))(
  ( (Nil!10169) (Cons!10169 (h!15570 C!6480) (t!101231 List!10185)) )
))
(declare-fun s!10566 () List!10185)

(declare-fun matchR!1491 (Regex!2955 List!10185) Bool)

(assert (=> b!1081817 (= res!481381 (not (matchR!1491 lt!362288 s!10566)))))

(assert (=> b!1081817 (= lt!362288 (Star!2955 lt!362280))))

(declare-fun removeUselessConcat!496 (Regex!2955) Regex!2955)

(assert (=> b!1081817 (= lt!362280 (removeUselessConcat!496 (reg!3284 r!15766)))))

(declare-fun Exists!678 (Int) Bool)

(assert (=> b!1081817 (= (Exists!678 lambda!39263) (Exists!678 lambda!39264))))

(declare-datatypes ((Unit!15595 0))(
  ( (Unit!15596) )
))
(declare-fun lt!362281 () Unit!15595)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!196 (Regex!2955 List!10185) Unit!15595)

(assert (=> b!1081817 (= lt!362281 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!196 (reg!3284 r!15766) s!10566))))

(declare-datatypes ((tuple2!11624 0))(
  ( (tuple2!11625 (_1!6638 List!10185) (_2!6638 List!10185)) )
))
(declare-datatypes ((Option!2454 0))(
  ( (None!2453) (Some!2453 (v!19870 tuple2!11624)) )
))
(declare-fun isDefined!2096 (Option!2454) Bool)

(declare-fun findConcatSeparation!560 (Regex!2955 Regex!2955 List!10185 List!10185 List!10185) Option!2454)

(assert (=> b!1081817 (= (isDefined!2096 (findConcatSeparation!560 (reg!3284 r!15766) lt!362273 Nil!10169 s!10566 s!10566)) (Exists!678 lambda!39263))))

(declare-fun lt!362289 () Unit!15595)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!560 (Regex!2955 Regex!2955 List!10185) Unit!15595)

(assert (=> b!1081817 (= lt!362289 (lemmaFindConcatSeparationEquivalentToExists!560 (reg!3284 r!15766) lt!362273 s!10566))))

(assert (=> b!1081817 (= lt!362273 (Star!2955 (reg!3284 r!15766)))))

(declare-fun b!1081818 () Bool)

(declare-fun e!684233 () Bool)

(assert (=> b!1081818 (= e!684233 tp_is_empty!5553)))

(declare-fun e!684234 () Bool)

(assert (=> b!1081819 (= e!684230 e!684234)))

(declare-fun res!481380 () Bool)

(assert (=> b!1081819 (=> res!481380 e!684234)))

(declare-fun isEmpty!6602 (List!10185) Bool)

(assert (=> b!1081819 (= res!481380 (isEmpty!6602 s!10566))))

(assert (=> b!1081819 (= (Exists!678 lambda!39265) (Exists!678 lambda!39266))))

(declare-fun lt!362279 () Unit!15595)

(assert (=> b!1081819 (= lt!362279 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!196 lt!362280 s!10566))))

(declare-fun lt!362287 () Bool)

(assert (=> b!1081819 (= lt!362287 (Exists!678 lambda!39265))))

(declare-fun lt!362285 () Option!2454)

(assert (=> b!1081819 (= lt!362287 (isDefined!2096 lt!362285))))

(assert (=> b!1081819 (= lt!362285 (findConcatSeparation!560 lt!362280 lt!362288 Nil!10169 s!10566 s!10566))))

(declare-fun lt!362277 () Unit!15595)

(assert (=> b!1081819 (= lt!362277 (lemmaFindConcatSeparationEquivalentToExists!560 lt!362280 lt!362288 s!10566))))

(declare-fun matchRSpec!754 (Regex!2955 List!10185) Bool)

(assert (=> b!1081819 (matchRSpec!754 lt!362288 s!10566)))

(declare-fun lt!362284 () Unit!15595)

(declare-fun mainMatchTheorem!754 (Regex!2955 List!10185) Unit!15595)

(assert (=> b!1081819 (= lt!362284 (mainMatchTheorem!754 lt!362288 s!10566))))

(declare-fun b!1081820 () Bool)

(declare-fun e!684226 () Bool)

(assert (=> b!1081820 (= e!684234 e!684226)))

(declare-fun res!481375 () Bool)

(assert (=> b!1081820 (=> res!481375 e!684226)))

(declare-fun lt!362286 () tuple2!11624)

(assert (=> b!1081820 (= res!481375 (not (matchR!1491 lt!362280 (_1!6638 lt!362286))))))

(declare-fun get!3681 (Option!2454) tuple2!11624)

(assert (=> b!1081820 (= lt!362286 (get!3681 lt!362285))))

(declare-fun b!1081821 () Bool)

(declare-fun tp!323582 () Bool)

(assert (=> b!1081821 (= e!684233 tp!323582)))

(declare-fun b!1081822 () Bool)

(declare-fun tp!323580 () Bool)

(declare-fun tp!323584 () Bool)

(assert (=> b!1081822 (= e!684233 (and tp!323580 tp!323584))))

(declare-fun b!1081823 () Bool)

(declare-fun e!684232 () Bool)

(declare-fun validRegex!1424 (Regex!2955) Bool)

(assert (=> b!1081823 (= e!684232 (validRegex!1424 lt!362273))))

(declare-fun b!1081824 () Bool)

(declare-fun tp!323581 () Bool)

(declare-fun tp!323583 () Bool)

(assert (=> b!1081824 (= e!684233 (and tp!323581 tp!323583))))

(declare-fun b!1081826 () Bool)

(declare-fun res!481374 () Bool)

(assert (=> b!1081826 (=> res!481374 e!684234)))

(assert (=> b!1081826 (= res!481374 (not lt!362287))))

(declare-fun b!1081827 () Bool)

(declare-fun res!481379 () Bool)

(assert (=> b!1081827 (=> res!481379 e!684226)))

(assert (=> b!1081827 (= res!481379 (not (matchR!1491 lt!362288 (_2!6638 lt!362286))))))

(declare-fun b!1081828 () Bool)

(declare-fun e!684231 () Unit!15595)

(declare-fun Unit!15597 () Unit!15595)

(assert (=> b!1081828 (= e!684231 Unit!15597)))

(declare-fun b!1081829 () Bool)

(assert (=> b!1081829 (= e!684226 e!684232)))

(declare-fun res!481378 () Bool)

(assert (=> b!1081829 (=> res!481378 e!684232)))

(declare-fun lt!362274 () Bool)

(assert (=> b!1081829 (= res!481378 (not lt!362274))))

(declare-fun lt!362291 () Regex!2955)

(assert (=> b!1081829 (= lt!362274 (matchR!1491 lt!362291 (_2!6638 lt!362286)))))

(assert (=> b!1081829 (= lt!362274 (matchR!1491 lt!362273 (_2!6638 lt!362286)))))

(assert (=> b!1081829 (= lt!362291 (removeUselessConcat!496 lt!362273))))

(declare-fun lt!362276 () Unit!15595)

(declare-fun lemmaRemoveUselessConcatSound!288 (Regex!2955 List!10185) Unit!15595)

(assert (=> b!1081829 (= lt!362276 (lemmaRemoveUselessConcatSound!288 lt!362273 (_2!6638 lt!362286)))))

(declare-fun lt!362282 () Unit!15595)

(assert (=> b!1081829 (= lt!362282 e!684231)))

(declare-fun c!182589 () Bool)

(declare-fun size!8014 (List!10185) Int)

(assert (=> b!1081829 (= c!182589 (= (size!8014 (_2!6638 lt!362286)) (size!8014 s!10566)))))

(assert (=> b!1081829 (matchR!1491 (reg!3284 r!15766) (_1!6638 lt!362286))))

(declare-fun lt!362290 () Unit!15595)

(assert (=> b!1081829 (= lt!362290 (lemmaRemoveUselessConcatSound!288 (reg!3284 r!15766) (_1!6638 lt!362286)))))

(declare-fun b!1081830 () Bool)

(declare-fun e!684227 () Bool)

(assert (=> b!1081830 (= e!684227 (not e!684228))))

(declare-fun res!481377 () Bool)

(assert (=> b!1081830 (=> res!481377 e!684228)))

(declare-fun lt!362283 () Bool)

(get-info :version)

(assert (=> b!1081830 (= res!481377 (or lt!362283 (and ((_ is Concat!4788) r!15766) ((_ is EmptyExpr!2955) (regOne!6422 r!15766))) (and ((_ is Concat!4788) r!15766) ((_ is EmptyExpr!2955) (regTwo!6422 r!15766))) ((_ is Concat!4788) r!15766) ((_ is Union!2955) r!15766) (not ((_ is Star!2955) r!15766))))))

(assert (=> b!1081830 (= lt!362283 (matchRSpec!754 r!15766 s!10566))))

(assert (=> b!1081830 (= lt!362283 (matchR!1491 r!15766 s!10566))))

(declare-fun lt!362275 () Unit!15595)

(assert (=> b!1081830 (= lt!362275 (mainMatchTheorem!754 r!15766 s!10566))))

(declare-fun b!1081825 () Bool)

(declare-fun Unit!15598 () Unit!15595)

(assert (=> b!1081825 (= e!684231 Unit!15598)))

(declare-fun lt!362278 () Unit!15595)

(assert (=> b!1081825 (= lt!362278 (mainMatchTheorem!754 (reg!3284 r!15766) (_1!6638 lt!362286)))))

(assert (=> b!1081825 false))

(declare-fun res!481376 () Bool)

(assert (=> start!91998 (=> (not res!481376) (not e!684227))))

(assert (=> start!91998 (= res!481376 (validRegex!1424 r!15766))))

(assert (=> start!91998 e!684227))

(assert (=> start!91998 e!684233))

(assert (=> start!91998 e!684229))

(assert (= (and start!91998 res!481376) b!1081830))

(assert (= (and b!1081830 (not res!481377)) b!1081817))

(assert (= (and b!1081817 (not res!481381)) b!1081819))

(assert (= (and b!1081819 (not res!481380)) b!1081826))

(assert (= (and b!1081826 (not res!481374)) b!1081820))

(assert (= (and b!1081820 (not res!481375)) b!1081827))

(assert (= (and b!1081827 (not res!481379)) b!1081829))

(assert (= (and b!1081829 c!182589) b!1081825))

(assert (= (and b!1081829 (not c!182589)) b!1081828))

(assert (= (and b!1081829 (not res!481378)) b!1081823))

(assert (= (and start!91998 ((_ is ElementMatch!2955) r!15766)) b!1081818))

(assert (= (and start!91998 ((_ is Concat!4788) r!15766)) b!1081822))

(assert (= (and start!91998 ((_ is Star!2955) r!15766)) b!1081821))

(assert (= (and start!91998 ((_ is Union!2955) r!15766)) b!1081824))

(assert (= (and start!91998 ((_ is Cons!10169) s!10566)) b!1081816))

(declare-fun m!1232777 () Bool)

(assert (=> b!1081827 m!1232777))

(declare-fun m!1232779 () Bool)

(assert (=> b!1081823 m!1232779))

(declare-fun m!1232781 () Bool)

(assert (=> b!1081820 m!1232781))

(declare-fun m!1232783 () Bool)

(assert (=> b!1081820 m!1232783))

(declare-fun m!1232785 () Bool)

(assert (=> b!1081830 m!1232785))

(declare-fun m!1232787 () Bool)

(assert (=> b!1081830 m!1232787))

(declare-fun m!1232789 () Bool)

(assert (=> b!1081830 m!1232789))

(declare-fun m!1232791 () Bool)

(assert (=> start!91998 m!1232791))

(declare-fun m!1232793 () Bool)

(assert (=> b!1081829 m!1232793))

(declare-fun m!1232795 () Bool)

(assert (=> b!1081829 m!1232795))

(declare-fun m!1232797 () Bool)

(assert (=> b!1081829 m!1232797))

(declare-fun m!1232799 () Bool)

(assert (=> b!1081829 m!1232799))

(declare-fun m!1232801 () Bool)

(assert (=> b!1081829 m!1232801))

(declare-fun m!1232803 () Bool)

(assert (=> b!1081829 m!1232803))

(declare-fun m!1232805 () Bool)

(assert (=> b!1081829 m!1232805))

(declare-fun m!1232807 () Bool)

(assert (=> b!1081829 m!1232807))

(declare-fun m!1232809 () Bool)

(assert (=> b!1081819 m!1232809))

(declare-fun m!1232811 () Bool)

(assert (=> b!1081819 m!1232811))

(declare-fun m!1232813 () Bool)

(assert (=> b!1081819 m!1232813))

(declare-fun m!1232815 () Bool)

(assert (=> b!1081819 m!1232815))

(declare-fun m!1232817 () Bool)

(assert (=> b!1081819 m!1232817))

(declare-fun m!1232819 () Bool)

(assert (=> b!1081819 m!1232819))

(declare-fun m!1232821 () Bool)

(assert (=> b!1081819 m!1232821))

(declare-fun m!1232823 () Bool)

(assert (=> b!1081819 m!1232823))

(declare-fun m!1232825 () Bool)

(assert (=> b!1081819 m!1232825))

(assert (=> b!1081819 m!1232815))

(declare-fun m!1232827 () Bool)

(assert (=> b!1081817 m!1232827))

(declare-fun m!1232829 () Bool)

(assert (=> b!1081817 m!1232829))

(declare-fun m!1232831 () Bool)

(assert (=> b!1081817 m!1232831))

(declare-fun m!1232833 () Bool)

(assert (=> b!1081817 m!1232833))

(declare-fun m!1232835 () Bool)

(assert (=> b!1081817 m!1232835))

(declare-fun m!1232837 () Bool)

(assert (=> b!1081817 m!1232837))

(assert (=> b!1081817 m!1232833))

(declare-fun m!1232839 () Bool)

(assert (=> b!1081817 m!1232839))

(declare-fun m!1232841 () Bool)

(assert (=> b!1081817 m!1232841))

(assert (=> b!1081817 m!1232835))

(declare-fun m!1232843 () Bool)

(assert (=> b!1081825 m!1232843))

(check-sat (not b!1081829) (not start!91998) (not b!1081819) tp_is_empty!5553 (not b!1081820) (not b!1081822) (not b!1081824) (not b!1081821) (not b!1081825) (not b!1081823) (not b!1081827) (not b!1081816) (not b!1081817) (not b!1081830))
(check-sat)
