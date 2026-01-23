; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!232084 () Bool)

(assert start!232084)

(declare-fun b!2364681 () Bool)

(assert (=> b!2364681 true))

(assert (=> b!2364681 true))

(declare-fun lambda!87122 () Int)

(declare-fun lambda!87121 () Int)

(assert (=> b!2364681 (not (= lambda!87122 lambda!87121))))

(assert (=> b!2364681 true))

(assert (=> b!2364681 true))

(declare-fun b!2364673 () Bool)

(declare-fun res!1003515 () Bool)

(declare-fun e!1509979 () Bool)

(assert (=> b!2364673 (=> res!1003515 e!1509979)))

(declare-datatypes ((C!14002 0))(
  ( (C!14003 (val!8243 Int)) )
))
(declare-datatypes ((Regex!6922 0))(
  ( (ElementMatch!6922 (c!375844 C!14002)) (Concat!11558 (regOne!14356 Regex!6922) (regTwo!14356 Regex!6922)) (EmptyExpr!6922) (Star!6922 (reg!7251 Regex!6922)) (EmptyLang!6922) (Union!6922 (regOne!14357 Regex!6922) (regTwo!14357 Regex!6922)) )
))
(declare-fun r!13927 () Regex!6922)

(declare-fun validRegex!2652 (Regex!6922) Bool)

(assert (=> b!2364673 (= res!1003515 (not (validRegex!2652 (regTwo!14356 r!13927))))))

(declare-fun b!2364674 () Bool)

(declare-fun res!1003511 () Bool)

(declare-fun e!1509977 () Bool)

(assert (=> b!2364674 (=> (not res!1003511) (not e!1509977))))

(declare-datatypes ((List!28082 0))(
  ( (Nil!27984) (Cons!27984 (h!33385 Regex!6922) (t!208059 List!28082)) )
))
(declare-fun l!9164 () List!28082)

(declare-fun generalisedConcat!23 (List!28082) Regex!6922)

(assert (=> b!2364674 (= res!1003511 (= r!13927 (generalisedConcat!23 l!9164)))))

(declare-fun b!2364675 () Bool)

(declare-datatypes ((List!28083 0))(
  ( (Nil!27985) (Cons!27985 (h!33386 C!14002) (t!208060 List!28083)) )
))
(declare-fun s!9460 () List!28083)

(declare-fun ++!6888 (List!28083 List!28083) List!28083)

(assert (=> b!2364675 (= e!1509979 (= (++!6888 Nil!27985 s!9460) s!9460))))

(declare-fun b!2364676 () Bool)

(declare-fun e!1509980 () Bool)

(declare-fun tp_is_empty!11257 () Bool)

(declare-fun tp!756281 () Bool)

(assert (=> b!2364676 (= e!1509980 (and tp_is_empty!11257 tp!756281))))

(declare-fun b!2364677 () Bool)

(declare-fun e!1509975 () Bool)

(declare-fun tp!756278 () Bool)

(declare-fun tp!756283 () Bool)

(assert (=> b!2364677 (= e!1509975 (and tp!756278 tp!756283))))

(declare-fun b!2364678 () Bool)

(assert (=> b!2364678 (= e!1509975 tp_is_empty!11257)))

(declare-fun b!2364679 () Bool)

(declare-fun e!1509978 () Bool)

(declare-fun tp!756279 () Bool)

(declare-fun tp!756282 () Bool)

(assert (=> b!2364679 (= e!1509978 (and tp!756279 tp!756282))))

(declare-fun res!1003514 () Bool)

(assert (=> start!232084 (=> (not res!1003514) (not e!1509977))))

(declare-fun lambda!87120 () Int)

(declare-fun forall!5556 (List!28082 Int) Bool)

(assert (=> start!232084 (= res!1003514 (forall!5556 l!9164 lambda!87120))))

(assert (=> start!232084 e!1509977))

(assert (=> start!232084 e!1509978))

(assert (=> start!232084 e!1509975))

(assert (=> start!232084 e!1509980))

(declare-fun b!2364680 () Bool)

(declare-fun e!1509976 () Bool)

(assert (=> b!2364680 (= e!1509977 (not e!1509976))))

(declare-fun res!1003513 () Bool)

(assert (=> b!2364680 (=> res!1003513 e!1509976)))

(assert (=> b!2364680 (= res!1003513 (not (is-Concat!11558 r!13927)))))

(declare-fun matchR!3039 (Regex!6922 List!28083) Bool)

(declare-fun matchRSpec!771 (Regex!6922 List!28083) Bool)

(assert (=> b!2364680 (= (matchR!3039 r!13927 s!9460) (matchRSpec!771 r!13927 s!9460))))

(declare-datatypes ((Unit!40879 0))(
  ( (Unit!40880) )
))
(declare-fun lt!864931 () Unit!40879)

(declare-fun mainMatchTheorem!771 (Regex!6922 List!28083) Unit!40879)

(assert (=> b!2364680 (= lt!864931 (mainMatchTheorem!771 r!13927 s!9460))))

(assert (=> b!2364681 (= e!1509976 e!1509979)))

(declare-fun res!1003512 () Bool)

(assert (=> b!2364681 (=> res!1003512 e!1509979)))

(assert (=> b!2364681 (= res!1003512 (not (validRegex!2652 (regOne!14356 r!13927))))))

(declare-fun Exists!984 (Int) Bool)

(assert (=> b!2364681 (= (Exists!984 lambda!87121) (Exists!984 lambda!87122))))

(declare-fun lt!864933 () Unit!40879)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!323 (Regex!6922 Regex!6922 List!28083) Unit!40879)

(assert (=> b!2364681 (= lt!864933 (lemmaExistCutMatchRandMatchRSpecEquivalent!323 (regOne!14356 r!13927) (regTwo!14356 r!13927) s!9460))))

(declare-datatypes ((tuple2!27708 0))(
  ( (tuple2!27709 (_1!16395 List!28083) (_2!16395 List!28083)) )
))
(declare-datatypes ((Option!5465 0))(
  ( (None!5464) (Some!5464 (v!30872 tuple2!27708)) )
))
(declare-fun isDefined!4293 (Option!5465) Bool)

(declare-fun findConcatSeparation!573 (Regex!6922 Regex!6922 List!28083 List!28083 List!28083) Option!5465)

(assert (=> b!2364681 (= (isDefined!4293 (findConcatSeparation!573 (regOne!14356 r!13927) (regTwo!14356 r!13927) Nil!27985 s!9460 s!9460)) (Exists!984 lambda!87121))))

(declare-fun lt!864932 () Unit!40879)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!573 (Regex!6922 Regex!6922 List!28083) Unit!40879)

(assert (=> b!2364681 (= lt!864932 (lemmaFindConcatSeparationEquivalentToExists!573 (regOne!14356 r!13927) (regTwo!14356 r!13927) s!9460))))

(declare-fun b!2364682 () Bool)

(declare-fun tp!756277 () Bool)

(assert (=> b!2364682 (= e!1509975 tp!756277)))

(declare-fun b!2364683 () Bool)

(declare-fun tp!756276 () Bool)

(declare-fun tp!756280 () Bool)

(assert (=> b!2364683 (= e!1509975 (and tp!756276 tp!756280))))

(assert (= (and start!232084 res!1003514) b!2364674))

(assert (= (and b!2364674 res!1003511) b!2364680))

(assert (= (and b!2364680 (not res!1003513)) b!2364681))

(assert (= (and b!2364681 (not res!1003512)) b!2364673))

(assert (= (and b!2364673 (not res!1003515)) b!2364675))

(assert (= (and start!232084 (is-Cons!27984 l!9164)) b!2364679))

(assert (= (and start!232084 (is-ElementMatch!6922 r!13927)) b!2364678))

(assert (= (and start!232084 (is-Concat!11558 r!13927)) b!2364683))

(assert (= (and start!232084 (is-Star!6922 r!13927)) b!2364682))

(assert (= (and start!232084 (is-Union!6922 r!13927)) b!2364677))

(assert (= (and start!232084 (is-Cons!27985 s!9460)) b!2364676))

(declare-fun m!2775507 () Bool)

(assert (=> b!2364681 m!2775507))

(declare-fun m!2775509 () Bool)

(assert (=> b!2364681 m!2775509))

(assert (=> b!2364681 m!2775507))

(declare-fun m!2775511 () Bool)

(assert (=> b!2364681 m!2775511))

(declare-fun m!2775513 () Bool)

(assert (=> b!2364681 m!2775513))

(declare-fun m!2775515 () Bool)

(assert (=> b!2364681 m!2775515))

(declare-fun m!2775517 () Bool)

(assert (=> b!2364681 m!2775517))

(declare-fun m!2775519 () Bool)

(assert (=> b!2364681 m!2775519))

(assert (=> b!2364681 m!2775515))

(declare-fun m!2775521 () Bool)

(assert (=> start!232084 m!2775521))

(declare-fun m!2775523 () Bool)

(assert (=> b!2364680 m!2775523))

(declare-fun m!2775525 () Bool)

(assert (=> b!2364680 m!2775525))

(declare-fun m!2775527 () Bool)

(assert (=> b!2364680 m!2775527))

(declare-fun m!2775529 () Bool)

(assert (=> b!2364674 m!2775529))

(declare-fun m!2775531 () Bool)

(assert (=> b!2364675 m!2775531))

(declare-fun m!2775533 () Bool)

(assert (=> b!2364673 m!2775533))

(push 1)

(assert (not b!2364679))

(assert (not b!2364676))

(assert (not b!2364680))

(assert tp_is_empty!11257)

(assert (not b!2364677))

(assert (not b!2364681))

(assert (not b!2364673))

(assert (not b!2364682))

(assert (not b!2364675))

(assert (not b!2364674))

(assert (not start!232084))

(assert (not b!2364683))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2364755 () Bool)

(declare-fun res!1003556 () Bool)

(declare-fun e!1510022 () Bool)

(assert (=> b!2364755 (=> (not res!1003556) (not e!1510022))))

(declare-fun call!143889 () Bool)

(assert (=> b!2364755 (= res!1003556 call!143889)))

(declare-fun e!1510021 () Bool)

(assert (=> b!2364755 (= e!1510021 e!1510022)))

(declare-fun d!694588 () Bool)

(declare-fun res!1003554 () Bool)

(declare-fun e!1510023 () Bool)

(assert (=> d!694588 (=> res!1003554 e!1510023)))

(assert (=> d!694588 (= res!1003554 (is-ElementMatch!6922 (regTwo!14356 r!13927)))))

(assert (=> d!694588 (= (validRegex!2652 (regTwo!14356 r!13927)) e!1510023)))

(declare-fun bm!143882 () Bool)

(declare-fun c!375851 () Bool)

(assert (=> bm!143882 (= call!143889 (validRegex!2652 (ite c!375851 (regOne!14357 (regTwo!14356 r!13927)) (regTwo!14356 (regTwo!14356 r!13927)))))))

(declare-fun c!375850 () Bool)

(declare-fun bm!143883 () Bool)

(declare-fun call!143888 () Bool)

(assert (=> bm!143883 (= call!143888 (validRegex!2652 (ite c!375850 (reg!7251 (regTwo!14356 r!13927)) (ite c!375851 (regTwo!14357 (regTwo!14356 r!13927)) (regOne!14356 (regTwo!14356 r!13927))))))))

(declare-fun b!2364756 () Bool)

(declare-fun e!1510024 () Bool)

(assert (=> b!2364756 (= e!1510023 e!1510024)))

(assert (=> b!2364756 (= c!375850 (is-Star!6922 (regTwo!14356 r!13927)))))

(declare-fun b!2364757 () Bool)

(assert (=> b!2364757 (= e!1510024 e!1510021)))

(assert (=> b!2364757 (= c!375851 (is-Union!6922 (regTwo!14356 r!13927)))))

(declare-fun bm!143884 () Bool)

(declare-fun call!143887 () Bool)

(assert (=> bm!143884 (= call!143887 call!143888)))

(declare-fun b!2364758 () Bool)

(declare-fun e!1510020 () Bool)

(assert (=> b!2364758 (= e!1510024 e!1510020)))

(declare-fun res!1003555 () Bool)

(declare-fun nullable!1986 (Regex!6922) Bool)

(assert (=> b!2364758 (= res!1003555 (not (nullable!1986 (reg!7251 (regTwo!14356 r!13927)))))))

(assert (=> b!2364758 (=> (not res!1003555) (not e!1510020))))

(declare-fun b!2364759 () Bool)

(declare-fun e!1510019 () Bool)

(assert (=> b!2364759 (= e!1510019 call!143889)))

(declare-fun b!2364760 () Bool)

(declare-fun e!1510025 () Bool)

(assert (=> b!2364760 (= e!1510025 e!1510019)))

(declare-fun res!1003557 () Bool)

(assert (=> b!2364760 (=> (not res!1003557) (not e!1510019))))

(assert (=> b!2364760 (= res!1003557 call!143887)))

(declare-fun b!2364761 () Bool)

(declare-fun res!1003553 () Bool)

(assert (=> b!2364761 (=> res!1003553 e!1510025)))

(assert (=> b!2364761 (= res!1003553 (not (is-Concat!11558 (regTwo!14356 r!13927))))))

(assert (=> b!2364761 (= e!1510021 e!1510025)))

(declare-fun b!2364762 () Bool)

(assert (=> b!2364762 (= e!1510022 call!143887)))

(declare-fun b!2364763 () Bool)

(assert (=> b!2364763 (= e!1510020 call!143888)))

(assert (= (and d!694588 (not res!1003554)) b!2364756))

(assert (= (and b!2364756 c!375850) b!2364758))

(assert (= (and b!2364756 (not c!375850)) b!2364757))

(assert (= (and b!2364758 res!1003555) b!2364763))

(assert (= (and b!2364757 c!375851) b!2364755))

(assert (= (and b!2364757 (not c!375851)) b!2364761))

(assert (= (and b!2364755 res!1003556) b!2364762))

(assert (= (and b!2364761 (not res!1003553)) b!2364760))

(assert (= (and b!2364760 res!1003557) b!2364759))

(assert (= (or b!2364755 b!2364759) bm!143882))

(assert (= (or b!2364762 b!2364760) bm!143884))

(assert (= (or b!2364763 bm!143884) bm!143883))

(declare-fun m!2775563 () Bool)

(assert (=> bm!143882 m!2775563))

(declare-fun m!2775565 () Bool)

(assert (=> bm!143883 m!2775565))

(declare-fun m!2775567 () Bool)

(assert (=> b!2364758 m!2775567))

(assert (=> b!2364673 d!694588))

(declare-fun d!694590 () Bool)

(declare-fun isEmpty!15903 (Option!5465) Bool)

(assert (=> d!694590 (= (isDefined!4293 (findConcatSeparation!573 (regOne!14356 r!13927) (regTwo!14356 r!13927) Nil!27985 s!9460 s!9460)) (not (isEmpty!15903 (findConcatSeparation!573 (regOne!14356 r!13927) (regTwo!14356 r!13927) Nil!27985 s!9460 s!9460))))))

(declare-fun bs!460814 () Bool)

(assert (= bs!460814 d!694590))

(assert (=> bs!460814 m!2775507))

(declare-fun m!2775569 () Bool)

(assert (=> bs!460814 m!2775569))

(assert (=> b!2364681 d!694590))

(declare-fun bs!460815 () Bool)

(declare-fun d!694594 () Bool)

(assert (= bs!460815 (and d!694594 b!2364681)))

(declare-fun lambda!87136 () Int)

(assert (=> bs!460815 (= lambda!87136 lambda!87121)))

(assert (=> bs!460815 (not (= lambda!87136 lambda!87122))))

(assert (=> d!694594 true))

(assert (=> d!694594 true))

(assert (=> d!694594 true))

(assert (=> d!694594 (= (isDefined!4293 (findConcatSeparation!573 (regOne!14356 r!13927) (regTwo!14356 r!13927) Nil!27985 s!9460 s!9460)) (Exists!984 lambda!87136))))

(declare-fun lt!864947 () Unit!40879)

(declare-fun choose!13721 (Regex!6922 Regex!6922 List!28083) Unit!40879)

(assert (=> d!694594 (= lt!864947 (choose!13721 (regOne!14356 r!13927) (regTwo!14356 r!13927) s!9460))))

(assert (=> d!694594 (validRegex!2652 (regOne!14356 r!13927))))

(assert (=> d!694594 (= (lemmaFindConcatSeparationEquivalentToExists!573 (regOne!14356 r!13927) (regTwo!14356 r!13927) s!9460) lt!864947)))

(declare-fun bs!460816 () Bool)

(assert (= bs!460816 d!694594))

(assert (=> bs!460816 m!2775507))

(declare-fun m!2775571 () Bool)

(assert (=> bs!460816 m!2775571))

(declare-fun m!2775573 () Bool)

(assert (=> bs!460816 m!2775573))

(assert (=> bs!460816 m!2775507))

(assert (=> bs!460816 m!2775509))

(assert (=> bs!460816 m!2775511))

(assert (=> b!2364681 d!694594))

(declare-fun d!694596 () Bool)

(declare-fun choose!13722 (Int) Bool)

(assert (=> d!694596 (= (Exists!984 lambda!87121) (choose!13722 lambda!87121))))

(declare-fun bs!460817 () Bool)

(assert (= bs!460817 d!694596))

(declare-fun m!2775575 () Bool)

(assert (=> bs!460817 m!2775575))

(assert (=> b!2364681 d!694596))

(declare-fun bs!460818 () Bool)

(declare-fun d!694598 () Bool)

(assert (= bs!460818 (and d!694598 b!2364681)))

(declare-fun lambda!87141 () Int)

(assert (=> bs!460818 (= lambda!87141 lambda!87121)))

(assert (=> bs!460818 (not (= lambda!87141 lambda!87122))))

(declare-fun bs!460819 () Bool)

(assert (= bs!460819 (and d!694598 d!694594)))

(assert (=> bs!460819 (= lambda!87141 lambda!87136)))

(assert (=> d!694598 true))

(assert (=> d!694598 true))

(assert (=> d!694598 true))

(declare-fun lambda!87142 () Int)

(assert (=> bs!460818 (not (= lambda!87142 lambda!87121))))

(assert (=> bs!460818 (= lambda!87142 lambda!87122)))

(assert (=> bs!460819 (not (= lambda!87142 lambda!87136))))

(declare-fun bs!460820 () Bool)

(assert (= bs!460820 d!694598))

(assert (=> bs!460820 (not (= lambda!87142 lambda!87141))))

(assert (=> d!694598 true))

(assert (=> d!694598 true))

(assert (=> d!694598 true))

(assert (=> d!694598 (= (Exists!984 lambda!87141) (Exists!984 lambda!87142))))

(declare-fun lt!864951 () Unit!40879)

(declare-fun choose!13723 (Regex!6922 Regex!6922 List!28083) Unit!40879)

(assert (=> d!694598 (= lt!864951 (choose!13723 (regOne!14356 r!13927) (regTwo!14356 r!13927) s!9460))))

(assert (=> d!694598 (validRegex!2652 (regOne!14356 r!13927))))

(assert (=> d!694598 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!323 (regOne!14356 r!13927) (regTwo!14356 r!13927) s!9460) lt!864951)))

(declare-fun m!2775591 () Bool)

(assert (=> bs!460820 m!2775591))

(declare-fun m!2775593 () Bool)

(assert (=> bs!460820 m!2775593))

(declare-fun m!2775595 () Bool)

(assert (=> bs!460820 m!2775595))

(assert (=> bs!460820 m!2775511))

(assert (=> b!2364681 d!694598))

(declare-fun b!2364788 () Bool)

(declare-fun res!1003579 () Bool)

(declare-fun e!1510041 () Bool)

(assert (=> b!2364788 (=> (not res!1003579) (not e!1510041))))

(declare-fun call!143892 () Bool)

(assert (=> b!2364788 (= res!1003579 call!143892)))

(declare-fun e!1510040 () Bool)

(assert (=> b!2364788 (= e!1510040 e!1510041)))

(declare-fun d!694602 () Bool)

(declare-fun res!1003577 () Bool)

(declare-fun e!1510042 () Bool)

(assert (=> d!694602 (=> res!1003577 e!1510042)))

(assert (=> d!694602 (= res!1003577 (is-ElementMatch!6922 (regOne!14356 r!13927)))))

(assert (=> d!694602 (= (validRegex!2652 (regOne!14356 r!13927)) e!1510042)))

(declare-fun bm!143885 () Bool)

(declare-fun c!375856 () Bool)

(assert (=> bm!143885 (= call!143892 (validRegex!2652 (ite c!375856 (regOne!14357 (regOne!14356 r!13927)) (regTwo!14356 (regOne!14356 r!13927)))))))

(declare-fun bm!143886 () Bool)

(declare-fun c!375855 () Bool)

(declare-fun call!143891 () Bool)

(assert (=> bm!143886 (= call!143891 (validRegex!2652 (ite c!375855 (reg!7251 (regOne!14356 r!13927)) (ite c!375856 (regTwo!14357 (regOne!14356 r!13927)) (regOne!14356 (regOne!14356 r!13927))))))))

(declare-fun b!2364789 () Bool)

(declare-fun e!1510043 () Bool)

(assert (=> b!2364789 (= e!1510042 e!1510043)))

(assert (=> b!2364789 (= c!375855 (is-Star!6922 (regOne!14356 r!13927)))))

(declare-fun b!2364790 () Bool)

(assert (=> b!2364790 (= e!1510043 e!1510040)))

(assert (=> b!2364790 (= c!375856 (is-Union!6922 (regOne!14356 r!13927)))))

(declare-fun bm!143887 () Bool)

(declare-fun call!143890 () Bool)

(assert (=> bm!143887 (= call!143890 call!143891)))

(declare-fun b!2364791 () Bool)

(declare-fun e!1510039 () Bool)

(assert (=> b!2364791 (= e!1510043 e!1510039)))

(declare-fun res!1003578 () Bool)

(assert (=> b!2364791 (= res!1003578 (not (nullable!1986 (reg!7251 (regOne!14356 r!13927)))))))

(assert (=> b!2364791 (=> (not res!1003578) (not e!1510039))))

(declare-fun b!2364792 () Bool)

(declare-fun e!1510038 () Bool)

(assert (=> b!2364792 (= e!1510038 call!143892)))

(declare-fun b!2364793 () Bool)

(declare-fun e!1510044 () Bool)

(assert (=> b!2364793 (= e!1510044 e!1510038)))

(declare-fun res!1003580 () Bool)

(assert (=> b!2364793 (=> (not res!1003580) (not e!1510038))))

(assert (=> b!2364793 (= res!1003580 call!143890)))

(declare-fun b!2364794 () Bool)

(declare-fun res!1003576 () Bool)

(assert (=> b!2364794 (=> res!1003576 e!1510044)))

(assert (=> b!2364794 (= res!1003576 (not (is-Concat!11558 (regOne!14356 r!13927))))))

(assert (=> b!2364794 (= e!1510040 e!1510044)))

(declare-fun b!2364795 () Bool)

(assert (=> b!2364795 (= e!1510041 call!143890)))

(declare-fun b!2364796 () Bool)

(assert (=> b!2364796 (= e!1510039 call!143891)))

(assert (= (and d!694602 (not res!1003577)) b!2364789))

(assert (= (and b!2364789 c!375855) b!2364791))

(assert (= (and b!2364789 (not c!375855)) b!2364790))

(assert (= (and b!2364791 res!1003578) b!2364796))

(assert (= (and b!2364790 c!375856) b!2364788))

(assert (= (and b!2364790 (not c!375856)) b!2364794))

(assert (= (and b!2364788 res!1003579) b!2364795))

(assert (= (and b!2364794 (not res!1003576)) b!2364793))

(assert (= (and b!2364793 res!1003580) b!2364792))

(assert (= (or b!2364788 b!2364792) bm!143885))

(assert (= (or b!2364795 b!2364793) bm!143887))

(assert (= (or b!2364796 bm!143887) bm!143886))

(declare-fun m!2775597 () Bool)

(assert (=> bm!143885 m!2775597))

(declare-fun m!2775599 () Bool)

(assert (=> bm!143886 m!2775599))

(declare-fun m!2775601 () Bool)

(assert (=> b!2364791 m!2775601))

(assert (=> b!2364681 d!694602))

(declare-fun b!2364843 () Bool)

(declare-fun res!1003609 () Bool)

(declare-fun e!1510073 () Bool)

(assert (=> b!2364843 (=> (not res!1003609) (not e!1510073))))

(declare-fun lt!864962 () Option!5465)

(declare-fun get!8496 (Option!5465) tuple2!27708)

(assert (=> b!2364843 (= res!1003609 (matchR!3039 (regOne!14356 r!13927) (_1!16395 (get!8496 lt!864962))))))

(declare-fun b!2364844 () Bool)

(declare-fun e!1510071 () Option!5465)

(assert (=> b!2364844 (= e!1510071 None!5464)))

(declare-fun b!2364845 () Bool)

(declare-fun res!1003607 () Bool)

(assert (=> b!2364845 (=> (not res!1003607) (not e!1510073))))

(assert (=> b!2364845 (= res!1003607 (matchR!3039 (regTwo!14356 r!13927) (_2!16395 (get!8496 lt!864962))))))

(declare-fun b!2364846 () Bool)

(declare-fun e!1510069 () Bool)

(assert (=> b!2364846 (= e!1510069 (matchR!3039 (regTwo!14356 r!13927) s!9460))))

(declare-fun d!694604 () Bool)

(declare-fun e!1510070 () Bool)

(assert (=> d!694604 e!1510070))

(declare-fun res!1003611 () Bool)

(assert (=> d!694604 (=> res!1003611 e!1510070)))

(assert (=> d!694604 (= res!1003611 e!1510073)))

(declare-fun res!1003610 () Bool)

(assert (=> d!694604 (=> (not res!1003610) (not e!1510073))))

(assert (=> d!694604 (= res!1003610 (isDefined!4293 lt!864962))))

(declare-fun e!1510072 () Option!5465)

(assert (=> d!694604 (= lt!864962 e!1510072)))

(declare-fun c!375868 () Bool)

(assert (=> d!694604 (= c!375868 e!1510069)))

(declare-fun res!1003608 () Bool)

(assert (=> d!694604 (=> (not res!1003608) (not e!1510069))))

(assert (=> d!694604 (= res!1003608 (matchR!3039 (regOne!14356 r!13927) Nil!27985))))

(assert (=> d!694604 (validRegex!2652 (regOne!14356 r!13927))))

(assert (=> d!694604 (= (findConcatSeparation!573 (regOne!14356 r!13927) (regTwo!14356 r!13927) Nil!27985 s!9460 s!9460) lt!864962)))

(declare-fun b!2364847 () Bool)

(declare-fun lt!864960 () Unit!40879)

(declare-fun lt!864961 () Unit!40879)

(assert (=> b!2364847 (= lt!864960 lt!864961)))

(assert (=> b!2364847 (= (++!6888 (++!6888 Nil!27985 (Cons!27985 (h!33386 s!9460) Nil!27985)) (t!208060 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!535 (List!28083 C!14002 List!28083 List!28083) Unit!40879)

(assert (=> b!2364847 (= lt!864961 (lemmaMoveElementToOtherListKeepsConcatEq!535 Nil!27985 (h!33386 s!9460) (t!208060 s!9460) s!9460))))

(assert (=> b!2364847 (= e!1510071 (findConcatSeparation!573 (regOne!14356 r!13927) (regTwo!14356 r!13927) (++!6888 Nil!27985 (Cons!27985 (h!33386 s!9460) Nil!27985)) (t!208060 s!9460) s!9460))))

(declare-fun b!2364848 () Bool)

(assert (=> b!2364848 (= e!1510073 (= (++!6888 (_1!16395 (get!8496 lt!864962)) (_2!16395 (get!8496 lt!864962))) s!9460))))

(declare-fun b!2364849 () Bool)

(assert (=> b!2364849 (= e!1510072 (Some!5464 (tuple2!27709 Nil!27985 s!9460)))))

(declare-fun b!2364850 () Bool)

(assert (=> b!2364850 (= e!1510070 (not (isDefined!4293 lt!864962)))))

(declare-fun b!2364851 () Bool)

(assert (=> b!2364851 (= e!1510072 e!1510071)))

(declare-fun c!375867 () Bool)

(assert (=> b!2364851 (= c!375867 (is-Nil!27985 s!9460))))

(assert (= (and d!694604 res!1003608) b!2364846))

(assert (= (and d!694604 c!375868) b!2364849))

(assert (= (and d!694604 (not c!375868)) b!2364851))

(assert (= (and b!2364851 c!375867) b!2364844))

(assert (= (and b!2364851 (not c!375867)) b!2364847))

(assert (= (and d!694604 res!1003610) b!2364843))

(assert (= (and b!2364843 res!1003609) b!2364845))

(assert (= (and b!2364845 res!1003607) b!2364848))

(assert (= (and d!694604 (not res!1003611)) b!2364850))

(declare-fun m!2775603 () Bool)

(assert (=> b!2364847 m!2775603))

(assert (=> b!2364847 m!2775603))

(declare-fun m!2775605 () Bool)

(assert (=> b!2364847 m!2775605))

(declare-fun m!2775607 () Bool)

(assert (=> b!2364847 m!2775607))

(assert (=> b!2364847 m!2775603))

(declare-fun m!2775609 () Bool)

(assert (=> b!2364847 m!2775609))

(declare-fun m!2775611 () Bool)

(assert (=> b!2364846 m!2775611))

(declare-fun m!2775613 () Bool)

(assert (=> d!694604 m!2775613))

(declare-fun m!2775615 () Bool)

(assert (=> d!694604 m!2775615))

(assert (=> d!694604 m!2775511))

(declare-fun m!2775617 () Bool)

(assert (=> b!2364843 m!2775617))

(declare-fun m!2775619 () Bool)

(assert (=> b!2364843 m!2775619))

(assert (=> b!2364848 m!2775617))

(declare-fun m!2775621 () Bool)

(assert (=> b!2364848 m!2775621))

(assert (=> b!2364850 m!2775613))

(assert (=> b!2364845 m!2775617))

(declare-fun m!2775623 () Bool)

(assert (=> b!2364845 m!2775623))

(assert (=> b!2364681 d!694604))

(declare-fun d!694606 () Bool)

(assert (=> d!694606 (= (Exists!984 lambda!87122) (choose!13722 lambda!87122))))

(declare-fun bs!460821 () Bool)

(assert (= bs!460821 d!694606))

(declare-fun m!2775625 () Bool)

(assert (=> bs!460821 m!2775625))

(assert (=> b!2364681 d!694606))

(declare-fun b!2364876 () Bool)

(declare-fun res!1003624 () Bool)

(declare-fun e!1510086 () Bool)

(assert (=> b!2364876 (=> (not res!1003624) (not e!1510086))))

(declare-fun lt!864966 () List!28083)

(declare-fun size!22140 (List!28083) Int)

(assert (=> b!2364876 (= res!1003624 (= (size!22140 lt!864966) (+ (size!22140 Nil!27985) (size!22140 s!9460))))))

(declare-fun b!2364874 () Bool)

(declare-fun e!1510085 () List!28083)

(assert (=> b!2364874 (= e!1510085 s!9460)))

(declare-fun b!2364877 () Bool)

(assert (=> b!2364877 (= e!1510086 (or (not (= s!9460 Nil!27985)) (= lt!864966 Nil!27985)))))

(declare-fun d!694608 () Bool)

(assert (=> d!694608 e!1510086))

(declare-fun res!1003625 () Bool)

(assert (=> d!694608 (=> (not res!1003625) (not e!1510086))))

(declare-fun content!3802 (List!28083) (Set C!14002))

(assert (=> d!694608 (= res!1003625 (= (content!3802 lt!864966) (set.union (content!3802 Nil!27985) (content!3802 s!9460))))))

(assert (=> d!694608 (= lt!864966 e!1510085)))

(declare-fun c!375874 () Bool)

(assert (=> d!694608 (= c!375874 (is-Nil!27985 Nil!27985))))

(assert (=> d!694608 (= (++!6888 Nil!27985 s!9460) lt!864966)))

(declare-fun b!2364875 () Bool)

(assert (=> b!2364875 (= e!1510085 (Cons!27985 (h!33386 Nil!27985) (++!6888 (t!208060 Nil!27985) s!9460)))))

(assert (= (and d!694608 c!375874) b!2364874))

(assert (= (and d!694608 (not c!375874)) b!2364875))

(assert (= (and d!694608 res!1003625) b!2364876))

(assert (= (and b!2364876 res!1003624) b!2364877))

(declare-fun m!2775627 () Bool)

(assert (=> b!2364876 m!2775627))

(declare-fun m!2775629 () Bool)

(assert (=> b!2364876 m!2775629))

(declare-fun m!2775631 () Bool)

(assert (=> b!2364876 m!2775631))

(declare-fun m!2775633 () Bool)

(assert (=> d!694608 m!2775633))

(declare-fun m!2775635 () Bool)

(assert (=> d!694608 m!2775635))

(declare-fun m!2775637 () Bool)

(assert (=> d!694608 m!2775637))

(declare-fun m!2775639 () Bool)

(assert (=> b!2364875 m!2775639))

(assert (=> b!2364675 d!694608))

(declare-fun b!2364906 () Bool)

(declare-fun res!1003645 () Bool)

(declare-fun e!1510105 () Bool)

(assert (=> b!2364906 (=> (not res!1003645) (not e!1510105))))

(declare-fun isEmpty!15904 (List!28083) Bool)

(declare-fun tail!3361 (List!28083) List!28083)

(assert (=> b!2364906 (= res!1003645 (isEmpty!15904 (tail!3361 s!9460)))))

(declare-fun b!2364907 () Bool)

(declare-fun res!1003642 () Bool)

(declare-fun e!1510101 () Bool)

(assert (=> b!2364907 (=> res!1003642 e!1510101)))

(assert (=> b!2364907 (= res!1003642 e!1510105)))

(declare-fun res!1003644 () Bool)

(assert (=> b!2364907 (=> (not res!1003644) (not e!1510105))))

(declare-fun lt!864969 () Bool)

(assert (=> b!2364907 (= res!1003644 lt!864969)))

(declare-fun b!2364908 () Bool)

(declare-fun e!1510102 () Bool)

(declare-fun e!1510104 () Bool)

(assert (=> b!2364908 (= e!1510102 e!1510104)))

(declare-fun res!1003647 () Bool)

(assert (=> b!2364908 (=> res!1003647 e!1510104)))

(declare-fun call!143898 () Bool)

(assert (=> b!2364908 (= res!1003647 call!143898)))

(declare-fun b!2364909 () Bool)

(declare-fun res!1003643 () Bool)

(assert (=> b!2364909 (=> (not res!1003643) (not e!1510105))))

(assert (=> b!2364909 (= res!1003643 (not call!143898))))

(declare-fun b!2364910 () Bool)

(declare-fun res!1003648 () Bool)

(assert (=> b!2364910 (=> res!1003648 e!1510104)))

(assert (=> b!2364910 (= res!1003648 (not (isEmpty!15904 (tail!3361 s!9460))))))

(declare-fun b!2364911 () Bool)

(declare-fun e!1510106 () Bool)

(assert (=> b!2364911 (= e!1510106 (not lt!864969))))

(declare-fun b!2364912 () Bool)

(declare-fun e!1510107 () Bool)

(declare-fun derivativeStep!1645 (Regex!6922 C!14002) Regex!6922)

(declare-fun head!5092 (List!28083) C!14002)

(assert (=> b!2364912 (= e!1510107 (matchR!3039 (derivativeStep!1645 r!13927 (head!5092 s!9460)) (tail!3361 s!9460)))))

(declare-fun b!2364914 () Bool)

(declare-fun e!1510103 () Bool)

(assert (=> b!2364914 (= e!1510103 (= lt!864969 call!143898))))

(declare-fun b!2364915 () Bool)

(assert (=> b!2364915 (= e!1510103 e!1510106)))

(declare-fun c!375882 () Bool)

(assert (=> b!2364915 (= c!375882 (is-EmptyLang!6922 r!13927))))

(declare-fun b!2364916 () Bool)

(declare-fun res!1003646 () Bool)

(assert (=> b!2364916 (=> res!1003646 e!1510101)))

(assert (=> b!2364916 (= res!1003646 (not (is-ElementMatch!6922 r!13927)))))

(assert (=> b!2364916 (= e!1510106 e!1510101)))

(declare-fun b!2364917 () Bool)

(assert (=> b!2364917 (= e!1510105 (= (head!5092 s!9460) (c!375844 r!13927)))))

(declare-fun bm!143893 () Bool)

(assert (=> bm!143893 (= call!143898 (isEmpty!15904 s!9460))))

(declare-fun d!694610 () Bool)

(assert (=> d!694610 e!1510103))

(declare-fun c!375883 () Bool)

(assert (=> d!694610 (= c!375883 (is-EmptyExpr!6922 r!13927))))

(assert (=> d!694610 (= lt!864969 e!1510107)))

(declare-fun c!375881 () Bool)

(assert (=> d!694610 (= c!375881 (isEmpty!15904 s!9460))))

(assert (=> d!694610 (validRegex!2652 r!13927)))

(assert (=> d!694610 (= (matchR!3039 r!13927 s!9460) lt!864969)))

(declare-fun b!2364913 () Bool)

(assert (=> b!2364913 (= e!1510101 e!1510102)))

(declare-fun res!1003649 () Bool)

(assert (=> b!2364913 (=> (not res!1003649) (not e!1510102))))

(assert (=> b!2364913 (= res!1003649 (not lt!864969))))

(declare-fun b!2364918 () Bool)

(assert (=> b!2364918 (= e!1510104 (not (= (head!5092 s!9460) (c!375844 r!13927))))))

(declare-fun b!2364919 () Bool)

(assert (=> b!2364919 (= e!1510107 (nullable!1986 r!13927))))

(assert (= (and d!694610 c!375881) b!2364919))

(assert (= (and d!694610 (not c!375881)) b!2364912))

(assert (= (and d!694610 c!375883) b!2364914))

(assert (= (and d!694610 (not c!375883)) b!2364915))

(assert (= (and b!2364915 c!375882) b!2364911))

(assert (= (and b!2364915 (not c!375882)) b!2364916))

(assert (= (and b!2364916 (not res!1003646)) b!2364907))

(assert (= (and b!2364907 res!1003644) b!2364909))

(assert (= (and b!2364909 res!1003643) b!2364906))

(assert (= (and b!2364906 res!1003645) b!2364917))

(assert (= (and b!2364907 (not res!1003642)) b!2364913))

(assert (= (and b!2364913 res!1003649) b!2364908))

(assert (= (and b!2364908 (not res!1003647)) b!2364910))

(assert (= (and b!2364910 (not res!1003648)) b!2364918))

(assert (= (or b!2364914 b!2364908 b!2364909) bm!143893))

(declare-fun m!2775657 () Bool)

(assert (=> d!694610 m!2775657))

(declare-fun m!2775659 () Bool)

(assert (=> d!694610 m!2775659))

(declare-fun m!2775661 () Bool)

(assert (=> b!2364917 m!2775661))

(assert (=> b!2364912 m!2775661))

(assert (=> b!2364912 m!2775661))

(declare-fun m!2775663 () Bool)

(assert (=> b!2364912 m!2775663))

(declare-fun m!2775665 () Bool)

(assert (=> b!2364912 m!2775665))

(assert (=> b!2364912 m!2775663))

(assert (=> b!2364912 m!2775665))

(declare-fun m!2775667 () Bool)

(assert (=> b!2364912 m!2775667))

(assert (=> b!2364918 m!2775661))

(declare-fun m!2775669 () Bool)

(assert (=> b!2364919 m!2775669))

(assert (=> b!2364910 m!2775665))

(assert (=> b!2364910 m!2775665))

(declare-fun m!2775671 () Bool)

(assert (=> b!2364910 m!2775671))

(assert (=> b!2364906 m!2775665))

(assert (=> b!2364906 m!2775665))

(assert (=> b!2364906 m!2775671))

(assert (=> bm!143893 m!2775657))

(assert (=> b!2364680 d!694610))

(declare-fun bs!460822 () Bool)

(declare-fun b!2364989 () Bool)

(assert (= bs!460822 (and b!2364989 d!694598)))

(declare-fun lambda!87151 () Int)

(assert (=> bs!460822 (not (= lambda!87151 lambda!87141))))

(assert (=> bs!460822 (not (= lambda!87151 lambda!87142))))

(declare-fun bs!460823 () Bool)

(assert (= bs!460823 (and b!2364989 b!2364681)))

(assert (=> bs!460823 (not (= lambda!87151 lambda!87121))))

(declare-fun bs!460824 () Bool)

(assert (= bs!460824 (and b!2364989 d!694594)))

(assert (=> bs!460824 (not (= lambda!87151 lambda!87136))))

(assert (=> bs!460823 (not (= lambda!87151 lambda!87122))))

(assert (=> b!2364989 true))

(assert (=> b!2364989 true))

(declare-fun bs!460825 () Bool)

(declare-fun b!2364993 () Bool)

(assert (= bs!460825 (and b!2364993 d!694598)))

(declare-fun lambda!87152 () Int)

(assert (=> bs!460825 (not (= lambda!87152 lambda!87141))))

(declare-fun bs!460826 () Bool)

(assert (= bs!460826 (and b!2364993 b!2364989)))

(assert (=> bs!460826 (not (= lambda!87152 lambda!87151))))

(assert (=> bs!460825 (= lambda!87152 lambda!87142)))

(declare-fun bs!460827 () Bool)

(assert (= bs!460827 (and b!2364993 b!2364681)))

(assert (=> bs!460827 (not (= lambda!87152 lambda!87121))))

(declare-fun bs!460828 () Bool)

(assert (= bs!460828 (and b!2364993 d!694594)))

(assert (=> bs!460828 (not (= lambda!87152 lambda!87136))))

(assert (=> bs!460827 (= lambda!87152 lambda!87122)))

(assert (=> b!2364993 true))

(assert (=> b!2364993 true))

(declare-fun bm!143898 () Bool)

(declare-fun call!143904 () Bool)

(assert (=> bm!143898 (= call!143904 (isEmpty!15904 s!9460))))

(declare-fun b!2364984 () Bool)

(declare-fun c!375902 () Bool)

(assert (=> b!2364984 (= c!375902 (is-Union!6922 r!13927))))

(declare-fun e!1510145 () Bool)

(declare-fun e!1510148 () Bool)

(assert (=> b!2364984 (= e!1510145 e!1510148)))

(declare-fun b!2364985 () Bool)

(declare-fun c!375900 () Bool)

(assert (=> b!2364985 (= c!375900 (is-ElementMatch!6922 r!13927))))

(declare-fun e!1510144 () Bool)

(assert (=> b!2364985 (= e!1510144 e!1510145)))

(declare-fun b!2364986 () Bool)

(declare-fun res!1003684 () Bool)

(declare-fun e!1510147 () Bool)

(assert (=> b!2364986 (=> res!1003684 e!1510147)))

(assert (=> b!2364986 (= res!1003684 call!143904)))

(declare-fun e!1510150 () Bool)

(assert (=> b!2364986 (= e!1510150 e!1510147)))

(declare-fun b!2364987 () Bool)

(declare-fun e!1510146 () Bool)

(assert (=> b!2364987 (= e!1510146 call!143904)))

(declare-fun b!2364988 () Bool)

(assert (=> b!2364988 (= e!1510148 e!1510150)))

(declare-fun c!375903 () Bool)

(assert (=> b!2364988 (= c!375903 (is-Star!6922 r!13927))))

(declare-fun call!143903 () Bool)

(assert (=> b!2364989 (= e!1510147 call!143903)))

(declare-fun b!2364990 () Bool)

(assert (=> b!2364990 (= e!1510145 (= s!9460 (Cons!27985 (c!375844 r!13927) Nil!27985)))))

(declare-fun b!2364991 () Bool)

(declare-fun e!1510149 () Bool)

(assert (=> b!2364991 (= e!1510148 e!1510149)))

(declare-fun res!1003683 () Bool)

(assert (=> b!2364991 (= res!1003683 (matchRSpec!771 (regOne!14357 r!13927) s!9460))))

(assert (=> b!2364991 (=> res!1003683 e!1510149)))

(declare-fun d!694614 () Bool)

(declare-fun c!375901 () Bool)

(assert (=> d!694614 (= c!375901 (is-EmptyExpr!6922 r!13927))))

(assert (=> d!694614 (= (matchRSpec!771 r!13927 s!9460) e!1510146)))

(declare-fun b!2364992 () Bool)

(assert (=> b!2364992 (= e!1510149 (matchRSpec!771 (regTwo!14357 r!13927) s!9460))))

(assert (=> b!2364993 (= e!1510150 call!143903)))

(declare-fun b!2364994 () Bool)

(assert (=> b!2364994 (= e!1510146 e!1510144)))

(declare-fun res!1003682 () Bool)

(assert (=> b!2364994 (= res!1003682 (not (is-EmptyLang!6922 r!13927)))))

(assert (=> b!2364994 (=> (not res!1003682) (not e!1510144))))

(declare-fun bm!143899 () Bool)

(assert (=> bm!143899 (= call!143903 (Exists!984 (ite c!375903 lambda!87151 lambda!87152)))))

(assert (= (and d!694614 c!375901) b!2364987))

(assert (= (and d!694614 (not c!375901)) b!2364994))

(assert (= (and b!2364994 res!1003682) b!2364985))

(assert (= (and b!2364985 c!375900) b!2364990))

(assert (= (and b!2364985 (not c!375900)) b!2364984))

(assert (= (and b!2364984 c!375902) b!2364991))

(assert (= (and b!2364984 (not c!375902)) b!2364988))

(assert (= (and b!2364991 (not res!1003683)) b!2364992))

(assert (= (and b!2364988 c!375903) b!2364986))

(assert (= (and b!2364988 (not c!375903)) b!2364993))

(assert (= (and b!2364986 (not res!1003684)) b!2364989))

(assert (= (or b!2364989 b!2364993) bm!143899))

(assert (= (or b!2364987 b!2364986) bm!143898))

(assert (=> bm!143898 m!2775657))

(declare-fun m!2775673 () Bool)

(assert (=> b!2364991 m!2775673))

(declare-fun m!2775675 () Bool)

(assert (=> b!2364992 m!2775675))

(declare-fun m!2775677 () Bool)

(assert (=> bm!143899 m!2775677))

(assert (=> b!2364680 d!694614))

(declare-fun d!694616 () Bool)

(assert (=> d!694616 (= (matchR!3039 r!13927 s!9460) (matchRSpec!771 r!13927 s!9460))))

(declare-fun lt!864972 () Unit!40879)

(declare-fun choose!13724 (Regex!6922 List!28083) Unit!40879)

(assert (=> d!694616 (= lt!864972 (choose!13724 r!13927 s!9460))))

(assert (=> d!694616 (validRegex!2652 r!13927)))

(assert (=> d!694616 (= (mainMatchTheorem!771 r!13927 s!9460) lt!864972)))

(declare-fun bs!460829 () Bool)

(assert (= bs!460829 d!694616))

(assert (=> bs!460829 m!2775523))

(assert (=> bs!460829 m!2775525))

(declare-fun m!2775679 () Bool)

(assert (=> bs!460829 m!2775679))

(assert (=> bs!460829 m!2775659))

(assert (=> b!2364680 d!694616))

(declare-fun bs!460831 () Bool)

(declare-fun d!694618 () Bool)

(assert (= bs!460831 (and d!694618 start!232084)))

(declare-fun lambda!87156 () Int)

(assert (=> bs!460831 (= lambda!87156 lambda!87120)))

(declare-fun b!2365026 () Bool)

(declare-fun e!1510173 () Bool)

(declare-fun lt!864975 () Regex!6922)

(declare-fun isEmptyExpr!9 (Regex!6922) Bool)

(assert (=> b!2365026 (= e!1510173 (isEmptyExpr!9 lt!864975))))

(declare-fun e!1510174 () Bool)

(assert (=> d!694618 e!1510174))

(declare-fun res!1003693 () Bool)

(assert (=> d!694618 (=> (not res!1003693) (not e!1510174))))

(assert (=> d!694618 (= res!1003693 (validRegex!2652 lt!864975))))

(declare-fun e!1510171 () Regex!6922)

(assert (=> d!694618 (= lt!864975 e!1510171)))

(declare-fun c!375919 () Bool)

(declare-fun e!1510172 () Bool)

(assert (=> d!694618 (= c!375919 e!1510172)))

(declare-fun res!1003692 () Bool)

(assert (=> d!694618 (=> (not res!1003692) (not e!1510172))))

(assert (=> d!694618 (= res!1003692 (is-Cons!27984 l!9164))))

(assert (=> d!694618 (forall!5556 l!9164 lambda!87156)))

(assert (=> d!694618 (= (generalisedConcat!23 l!9164) lt!864975)))

(declare-fun b!2365027 () Bool)

(declare-fun e!1510175 () Bool)

(declare-fun head!5093 (List!28082) Regex!6922)

(assert (=> b!2365027 (= e!1510175 (= lt!864975 (head!5093 l!9164)))))

(declare-fun b!2365028 () Bool)

(declare-fun e!1510170 () Regex!6922)

(assert (=> b!2365028 (= e!1510170 (Concat!11558 (h!33385 l!9164) (generalisedConcat!23 (t!208059 l!9164))))))

(declare-fun b!2365029 () Bool)

(assert (=> b!2365029 (= e!1510174 e!1510173)))

(declare-fun c!375918 () Bool)

(declare-fun isEmpty!15905 (List!28082) Bool)

(assert (=> b!2365029 (= c!375918 (isEmpty!15905 l!9164))))

(declare-fun b!2365030 () Bool)

(assert (=> b!2365030 (= e!1510171 (h!33385 l!9164))))

(declare-fun b!2365031 () Bool)

(declare-fun isConcat!9 (Regex!6922) Bool)

(assert (=> b!2365031 (= e!1510175 (isConcat!9 lt!864975))))

(declare-fun b!2365032 () Bool)

(assert (=> b!2365032 (= e!1510170 EmptyExpr!6922)))

(declare-fun b!2365033 () Bool)

(assert (=> b!2365033 (= e!1510172 (isEmpty!15905 (t!208059 l!9164)))))

(declare-fun b!2365034 () Bool)

(assert (=> b!2365034 (= e!1510171 e!1510170)))

(declare-fun c!375917 () Bool)

(assert (=> b!2365034 (= c!375917 (is-Cons!27984 l!9164))))

(declare-fun b!2365035 () Bool)

(assert (=> b!2365035 (= e!1510173 e!1510175)))

(declare-fun c!375916 () Bool)

(declare-fun tail!3362 (List!28082) List!28082)

(assert (=> b!2365035 (= c!375916 (isEmpty!15905 (tail!3362 l!9164)))))

(assert (= (and d!694618 res!1003692) b!2365033))

(assert (= (and d!694618 c!375919) b!2365030))

(assert (= (and d!694618 (not c!375919)) b!2365034))

(assert (= (and b!2365034 c!375917) b!2365028))

(assert (= (and b!2365034 (not c!375917)) b!2365032))

(assert (= (and d!694618 res!1003693) b!2365029))

(assert (= (and b!2365029 c!375918) b!2365026))

(assert (= (and b!2365029 (not c!375918)) b!2365035))

(assert (= (and b!2365035 c!375916) b!2365027))

(assert (= (and b!2365035 (not c!375916)) b!2365031))

(declare-fun m!2775681 () Bool)

(assert (=> b!2365027 m!2775681))

(declare-fun m!2775683 () Bool)

(assert (=> d!694618 m!2775683))

(declare-fun m!2775685 () Bool)

(assert (=> d!694618 m!2775685))

(declare-fun m!2775687 () Bool)

(assert (=> b!2365028 m!2775687))

(declare-fun m!2775689 () Bool)

(assert (=> b!2365029 m!2775689))

(declare-fun m!2775691 () Bool)

(assert (=> b!2365026 m!2775691))

(declare-fun m!2775693 () Bool)

(assert (=> b!2365033 m!2775693))

(declare-fun m!2775695 () Bool)

(assert (=> b!2365035 m!2775695))

(assert (=> b!2365035 m!2775695))

(declare-fun m!2775697 () Bool)

(assert (=> b!2365035 m!2775697))

(declare-fun m!2775699 () Bool)

(assert (=> b!2365031 m!2775699))

(assert (=> b!2364674 d!694618))

(declare-fun d!694620 () Bool)

(declare-fun res!1003698 () Bool)

(declare-fun e!1510180 () Bool)

(assert (=> d!694620 (=> res!1003698 e!1510180)))

(assert (=> d!694620 (= res!1003698 (is-Nil!27984 l!9164))))

(assert (=> d!694620 (= (forall!5556 l!9164 lambda!87120) e!1510180)))

(declare-fun b!2365040 () Bool)

(declare-fun e!1510181 () Bool)

(assert (=> b!2365040 (= e!1510180 e!1510181)))

(declare-fun res!1003699 () Bool)

(assert (=> b!2365040 (=> (not res!1003699) (not e!1510181))))

(declare-fun dynLambda!12057 (Int Regex!6922) Bool)

(assert (=> b!2365040 (= res!1003699 (dynLambda!12057 lambda!87120 (h!33385 l!9164)))))

(declare-fun b!2365041 () Bool)

(assert (=> b!2365041 (= e!1510181 (forall!5556 (t!208059 l!9164) lambda!87120))))

(assert (= (and d!694620 (not res!1003698)) b!2365040))

(assert (= (and b!2365040 res!1003699) b!2365041))

(declare-fun b_lambda!73843 () Bool)

(assert (=> (not b_lambda!73843) (not b!2365040)))

(declare-fun m!2775701 () Bool)

(assert (=> b!2365040 m!2775701))

(declare-fun m!2775703 () Bool)

(assert (=> b!2365041 m!2775703))

(assert (=> start!232084 d!694620))

(declare-fun b!2365053 () Bool)

(declare-fun e!1510184 () Bool)

(declare-fun tp!756318 () Bool)

(declare-fun tp!756322 () Bool)

(assert (=> b!2365053 (= e!1510184 (and tp!756318 tp!756322))))

(declare-fun b!2365054 () Bool)

(declare-fun tp!756321 () Bool)

(assert (=> b!2365054 (= e!1510184 tp!756321)))

(assert (=> b!2364683 (= tp!756276 e!1510184)))

(declare-fun b!2365052 () Bool)

(assert (=> b!2365052 (= e!1510184 tp_is_empty!11257)))

(declare-fun b!2365055 () Bool)

(declare-fun tp!756320 () Bool)

(declare-fun tp!756319 () Bool)

(assert (=> b!2365055 (= e!1510184 (and tp!756320 tp!756319))))

(assert (= (and b!2364683 (is-ElementMatch!6922 (regOne!14356 r!13927))) b!2365052))

(assert (= (and b!2364683 (is-Concat!11558 (regOne!14356 r!13927))) b!2365053))

(assert (= (and b!2364683 (is-Star!6922 (regOne!14356 r!13927))) b!2365054))

(assert (= (and b!2364683 (is-Union!6922 (regOne!14356 r!13927))) b!2365055))

(declare-fun b!2365057 () Bool)

(declare-fun e!1510185 () Bool)

(declare-fun tp!756323 () Bool)

(declare-fun tp!756327 () Bool)

(assert (=> b!2365057 (= e!1510185 (and tp!756323 tp!756327))))

(declare-fun b!2365058 () Bool)

(declare-fun tp!756326 () Bool)

(assert (=> b!2365058 (= e!1510185 tp!756326)))

(assert (=> b!2364683 (= tp!756280 e!1510185)))

(declare-fun b!2365056 () Bool)

(assert (=> b!2365056 (= e!1510185 tp_is_empty!11257)))

(declare-fun b!2365059 () Bool)

(declare-fun tp!756325 () Bool)

(declare-fun tp!756324 () Bool)

(assert (=> b!2365059 (= e!1510185 (and tp!756325 tp!756324))))

(assert (= (and b!2364683 (is-ElementMatch!6922 (regTwo!14356 r!13927))) b!2365056))

(assert (= (and b!2364683 (is-Concat!11558 (regTwo!14356 r!13927))) b!2365057))

(assert (= (and b!2364683 (is-Star!6922 (regTwo!14356 r!13927))) b!2365058))

(assert (= (and b!2364683 (is-Union!6922 (regTwo!14356 r!13927))) b!2365059))

(declare-fun b!2365061 () Bool)

(declare-fun e!1510186 () Bool)

(declare-fun tp!756328 () Bool)

(declare-fun tp!756332 () Bool)

(assert (=> b!2365061 (= e!1510186 (and tp!756328 tp!756332))))

(declare-fun b!2365062 () Bool)

(declare-fun tp!756331 () Bool)

(assert (=> b!2365062 (= e!1510186 tp!756331)))

(assert (=> b!2364677 (= tp!756278 e!1510186)))

(declare-fun b!2365060 () Bool)

(assert (=> b!2365060 (= e!1510186 tp_is_empty!11257)))

(declare-fun b!2365063 () Bool)

(declare-fun tp!756330 () Bool)

(declare-fun tp!756329 () Bool)

(assert (=> b!2365063 (= e!1510186 (and tp!756330 tp!756329))))

(assert (= (and b!2364677 (is-ElementMatch!6922 (regOne!14357 r!13927))) b!2365060))

(assert (= (and b!2364677 (is-Concat!11558 (regOne!14357 r!13927))) b!2365061))

(assert (= (and b!2364677 (is-Star!6922 (regOne!14357 r!13927))) b!2365062))

(assert (= (and b!2364677 (is-Union!6922 (regOne!14357 r!13927))) b!2365063))

(declare-fun b!2365065 () Bool)

(declare-fun e!1510187 () Bool)

(declare-fun tp!756333 () Bool)

(declare-fun tp!756337 () Bool)

(assert (=> b!2365065 (= e!1510187 (and tp!756333 tp!756337))))

(declare-fun b!2365066 () Bool)

(declare-fun tp!756336 () Bool)

(assert (=> b!2365066 (= e!1510187 tp!756336)))

(assert (=> b!2364677 (= tp!756283 e!1510187)))

(declare-fun b!2365064 () Bool)

(assert (=> b!2365064 (= e!1510187 tp_is_empty!11257)))

(declare-fun b!2365067 () Bool)

(declare-fun tp!756335 () Bool)

(declare-fun tp!756334 () Bool)

(assert (=> b!2365067 (= e!1510187 (and tp!756335 tp!756334))))

(assert (= (and b!2364677 (is-ElementMatch!6922 (regTwo!14357 r!13927))) b!2365064))

(assert (= (and b!2364677 (is-Concat!11558 (regTwo!14357 r!13927))) b!2365065))

(assert (= (and b!2364677 (is-Star!6922 (regTwo!14357 r!13927))) b!2365066))

(assert (= (and b!2364677 (is-Union!6922 (regTwo!14357 r!13927))) b!2365067))

(declare-fun b!2365069 () Bool)

(declare-fun e!1510188 () Bool)

(declare-fun tp!756338 () Bool)

(declare-fun tp!756342 () Bool)

(assert (=> b!2365069 (= e!1510188 (and tp!756338 tp!756342))))

(declare-fun b!2365070 () Bool)

(declare-fun tp!756341 () Bool)

(assert (=> b!2365070 (= e!1510188 tp!756341)))

(assert (=> b!2364682 (= tp!756277 e!1510188)))

(declare-fun b!2365068 () Bool)

(assert (=> b!2365068 (= e!1510188 tp_is_empty!11257)))

(declare-fun b!2365071 () Bool)

(declare-fun tp!756340 () Bool)

(declare-fun tp!756339 () Bool)

(assert (=> b!2365071 (= e!1510188 (and tp!756340 tp!756339))))

(assert (= (and b!2364682 (is-ElementMatch!6922 (reg!7251 r!13927))) b!2365068))

(assert (= (and b!2364682 (is-Concat!11558 (reg!7251 r!13927))) b!2365069))

(assert (= (and b!2364682 (is-Star!6922 (reg!7251 r!13927))) b!2365070))

(assert (= (and b!2364682 (is-Union!6922 (reg!7251 r!13927))) b!2365071))

(declare-fun b!2365076 () Bool)

(declare-fun e!1510191 () Bool)

(declare-fun tp!756345 () Bool)

(assert (=> b!2365076 (= e!1510191 (and tp_is_empty!11257 tp!756345))))

(assert (=> b!2364676 (= tp!756281 e!1510191)))

(assert (= (and b!2364676 (is-Cons!27985 (t!208060 s!9460))) b!2365076))

(declare-fun b!2365078 () Bool)

(declare-fun e!1510192 () Bool)

(declare-fun tp!756346 () Bool)

(declare-fun tp!756350 () Bool)

(assert (=> b!2365078 (= e!1510192 (and tp!756346 tp!756350))))

(declare-fun b!2365079 () Bool)

(declare-fun tp!756349 () Bool)

(assert (=> b!2365079 (= e!1510192 tp!756349)))

(assert (=> b!2364679 (= tp!756279 e!1510192)))

(declare-fun b!2365077 () Bool)

(assert (=> b!2365077 (= e!1510192 tp_is_empty!11257)))

(declare-fun b!2365080 () Bool)

(declare-fun tp!756348 () Bool)

(declare-fun tp!756347 () Bool)

(assert (=> b!2365080 (= e!1510192 (and tp!756348 tp!756347))))

(assert (= (and b!2364679 (is-ElementMatch!6922 (h!33385 l!9164))) b!2365077))

(assert (= (and b!2364679 (is-Concat!11558 (h!33385 l!9164))) b!2365078))

(assert (= (and b!2364679 (is-Star!6922 (h!33385 l!9164))) b!2365079))

(assert (= (and b!2364679 (is-Union!6922 (h!33385 l!9164))) b!2365080))

(declare-fun b!2365085 () Bool)

(declare-fun e!1510195 () Bool)

(declare-fun tp!756355 () Bool)

(declare-fun tp!756356 () Bool)

(assert (=> b!2365085 (= e!1510195 (and tp!756355 tp!756356))))

(assert (=> b!2364679 (= tp!756282 e!1510195)))

(assert (= (and b!2364679 (is-Cons!27984 (t!208059 l!9164))) b!2365085))

(declare-fun b_lambda!73845 () Bool)

(assert (= b_lambda!73843 (or start!232084 b_lambda!73845)))

(declare-fun bs!460834 () Bool)

(declare-fun d!694624 () Bool)

(assert (= bs!460834 (and d!694624 start!232084)))

(assert (=> bs!460834 (= (dynLambda!12057 lambda!87120 (h!33385 l!9164)) (validRegex!2652 (h!33385 l!9164)))))

(declare-fun m!2775711 () Bool)

(assert (=> bs!460834 m!2775711))

(assert (=> b!2365040 d!694624))

(push 1)

(assert (not b!2365071))

(assert (not b!2365085))

(assert (not b!2364919))

(assert (not b!2364845))

(assert (not b!2364850))

(assert (not b!2364876))

(assert (not b!2365026))

(assert (not b!2365062))

(assert (not b!2364847))

(assert (not d!694606))

(assert (not b!2365079))

(assert (not bm!143883))

(assert (not b!2365078))

(assert (not b!2364906))

(assert (not d!694590))

(assert (not b!2365035))

(assert (not bm!143893))

(assert (not b!2365059))

(assert (not b!2364918))

(assert (not d!694610))

(assert (not bm!143899))

(assert (not b!2364848))

(assert (not b!2365033))

(assert (not d!694596))

(assert (not b_lambda!73845))

(assert (not b!2364910))

(assert (not b!2365054))

(assert (not bm!143886))

(assert (not b!2364843))

(assert (not bs!460834))

(assert tp_is_empty!11257)

(assert (not b!2365070))

(assert (not d!694618))

(assert (not b!2365031))

(assert (not d!694594))

(assert (not b!2365057))

(assert (not b!2365053))

(assert (not b!2364758))

(assert (not b!2365066))

(assert (not b!2365061))

(assert (not b!2365027))

(assert (not b!2365041))

(assert (not b!2364991))

(assert (not b!2365069))

(assert (not b!2364992))

(assert (not b!2365076))

(assert (not b!2365029))

(assert (not bm!143885))

(assert (not d!694604))

(assert (not b!2365067))

(assert (not b!2365055))

(assert (not d!694598))

(assert (not b!2365028))

(assert (not d!694608))

(assert (not b!2365080))

(assert (not b!2365058))

(assert (not bm!143898))

(assert (not b!2365065))

(assert (not b!2364912))

(assert (not b!2365063))

(assert (not b!2364917))

(assert (not d!694616))

(assert (not b!2364846))

(assert (not bm!143882))

(assert (not b!2364875))

(assert (not b!2364791))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

