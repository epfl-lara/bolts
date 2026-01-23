; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!286614 () Bool)

(assert start!286614)

(declare-fun b!2956543 () Bool)

(assert (=> b!2956543 true))

(assert (=> b!2956543 true))

(assert (=> b!2956543 true))

(declare-fun lambda!110116 () Int)

(declare-fun lambda!110115 () Int)

(assert (=> b!2956543 (not (= lambda!110116 lambda!110115))))

(assert (=> b!2956543 true))

(assert (=> b!2956543 true))

(assert (=> b!2956543 true))

(declare-fun b!2956536 () Bool)

(declare-fun e!1861542 () Bool)

(declare-fun tp!944071 () Bool)

(declare-fun tp!944069 () Bool)

(assert (=> b!2956536 (= e!1861542 (and tp!944071 tp!944069))))

(declare-fun b!2956537 () Bool)

(declare-fun res!1219826 () Bool)

(declare-fun e!1861540 () Bool)

(assert (=> b!2956537 (=> res!1219826 e!1861540)))

(declare-datatypes ((C!18522 0))(
  ( (C!18523 (val!11297 Int)) )
))
(declare-datatypes ((Regex!9168 0))(
  ( (ElementMatch!9168 (c!484362 C!18522)) (Concat!14489 (regOne!18848 Regex!9168) (regTwo!18848 Regex!9168)) (EmptyExpr!9168) (Star!9168 (reg!9497 Regex!9168)) (EmptyLang!9168) (Union!9168 (regOne!18849 Regex!9168) (regTwo!18849 Regex!9168)) )
))
(declare-fun lt!1033108 () Regex!9168)

(declare-fun isEmptyExpr!371 (Regex!9168) Bool)

(assert (=> b!2956537 (= res!1219826 (isEmptyExpr!371 lt!1033108))))

(declare-fun b!2956538 () Bool)

(declare-fun tp!944066 () Bool)

(assert (=> b!2956538 (= e!1861542 tp!944066)))

(declare-fun b!2956539 () Bool)

(declare-fun e!1861538 () Bool)

(declare-fun e!1861541 () Bool)

(assert (=> b!2956539 (= e!1861538 (not e!1861541))))

(declare-fun res!1219827 () Bool)

(assert (=> b!2956539 (=> res!1219827 e!1861541)))

(declare-fun lt!1033106 () Bool)

(declare-fun r!17423 () Regex!9168)

(assert (=> b!2956539 (= res!1219827 (or lt!1033106 (not (is-Concat!14489 r!17423))))))

(declare-datatypes ((List!35033 0))(
  ( (Nil!34909) (Cons!34909 (h!40329 C!18522) (t!234098 List!35033)) )
))
(declare-fun s!11993 () List!35033)

(declare-fun matchRSpec!1305 (Regex!9168 List!35033) Bool)

(assert (=> b!2956539 (= lt!1033106 (matchRSpec!1305 r!17423 s!11993))))

(declare-fun matchR!4050 (Regex!9168 List!35033) Bool)

(assert (=> b!2956539 (= lt!1033106 (matchR!4050 r!17423 s!11993))))

(declare-datatypes ((Unit!48715 0))(
  ( (Unit!48716) )
))
(declare-fun lt!1033107 () Unit!48715)

(declare-fun mainMatchTheorem!1305 (Regex!9168 List!35033) Unit!48715)

(assert (=> b!2956539 (= lt!1033107 (mainMatchTheorem!1305 r!17423 s!11993))))

(declare-fun res!1219831 () Bool)

(assert (=> start!286614 (=> (not res!1219831) (not e!1861538))))

(declare-fun validRegex!3901 (Regex!9168) Bool)

(assert (=> start!286614 (= res!1219831 (validRegex!3901 r!17423))))

(assert (=> start!286614 e!1861538))

(assert (=> start!286614 e!1861542))

(declare-fun e!1861543 () Bool)

(assert (=> start!286614 e!1861543))

(declare-fun b!2956540 () Bool)

(declare-fun tp!944068 () Bool)

(declare-fun tp!944070 () Bool)

(assert (=> b!2956540 (= e!1861542 (and tp!944068 tp!944070))))

(declare-fun b!2956541 () Bool)

(declare-fun res!1219828 () Bool)

(assert (=> b!2956541 (=> res!1219828 e!1861540)))

(declare-fun lt!1033105 () Regex!9168)

(assert (=> b!2956541 (= res!1219828 (isEmptyExpr!371 lt!1033105))))

(declare-fun b!2956542 () Bool)

(declare-fun res!1219825 () Bool)

(assert (=> b!2956542 (=> res!1219825 e!1861540)))

(declare-fun isEmptyLang!290 (Regex!9168) Bool)

(assert (=> b!2956542 (= res!1219825 (isEmptyLang!290 lt!1033105))))

(declare-fun e!1861539 () Bool)

(declare-fun e!1861544 () Bool)

(assert (=> b!2956543 (= e!1861539 e!1861544)))

(declare-fun res!1219832 () Bool)

(assert (=> b!2956543 (=> res!1219832 e!1861544)))

(declare-fun lt!1033109 () Bool)

(assert (=> b!2956543 (= res!1219832 (not lt!1033109))))

(declare-fun Exists!1500 (Int) Bool)

(assert (=> b!2956543 (= (Exists!1500 lambda!110115) (Exists!1500 lambda!110116))))

(declare-fun lt!1033112 () Unit!48715)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!521 (Regex!9168 Regex!9168 List!35033) Unit!48715)

(assert (=> b!2956543 (= lt!1033112 (lemmaExistCutMatchRandMatchRSpecEquivalent!521 lt!1033108 lt!1033105 s!11993))))

(assert (=> b!2956543 (= lt!1033109 (Exists!1500 lambda!110115))))

(declare-datatypes ((tuple2!33854 0))(
  ( (tuple2!33855 (_1!20059 List!35033) (_2!20059 List!35033)) )
))
(declare-datatypes ((Option!6659 0))(
  ( (None!6658) (Some!6658 (v!34792 tuple2!33854)) )
))
(declare-fun isDefined!5210 (Option!6659) Bool)

(declare-fun findConcatSeparation!1053 (Regex!9168 Regex!9168 List!35033 List!35033 List!35033) Option!6659)

(assert (=> b!2956543 (= lt!1033109 (isDefined!5210 (findConcatSeparation!1053 lt!1033108 lt!1033105 Nil!34909 s!11993 s!11993)))))

(declare-fun lt!1033104 () Unit!48715)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!831 (Regex!9168 Regex!9168 List!35033) Unit!48715)

(assert (=> b!2956543 (= lt!1033104 (lemmaFindConcatSeparationEquivalentToExists!831 lt!1033108 lt!1033105 s!11993))))

(declare-fun lt!1033111 () Regex!9168)

(assert (=> b!2956543 (matchRSpec!1305 lt!1033111 s!11993)))

(declare-fun lt!1033110 () Unit!48715)

(assert (=> b!2956543 (= lt!1033110 (mainMatchTheorem!1305 lt!1033111 s!11993))))

(declare-fun b!2956544 () Bool)

(declare-fun res!1219833 () Bool)

(assert (=> b!2956544 (=> res!1219833 e!1861541)))

(declare-fun isEmpty!19187 (List!35033) Bool)

(assert (=> b!2956544 (= res!1219833 (isEmpty!19187 s!11993))))

(declare-fun b!2956545 () Bool)

(declare-fun tp_is_empty!15899 () Bool)

(declare-fun tp!944067 () Bool)

(assert (=> b!2956545 (= e!1861543 (and tp_is_empty!15899 tp!944067))))

(declare-fun b!2956546 () Bool)

(assert (=> b!2956546 (= e!1861542 tp_is_empty!15899)))

(declare-fun b!2956547 () Bool)

(assert (=> b!2956547 (= e!1861544 (validRegex!3901 lt!1033108))))

(declare-fun b!2956548 () Bool)

(assert (=> b!2956548 (= e!1861540 e!1861539)))

(declare-fun res!1219830 () Bool)

(assert (=> b!2956548 (=> res!1219830 e!1861539)))

(assert (=> b!2956548 (= res!1219830 (not (matchR!4050 lt!1033111 s!11993)))))

(assert (=> b!2956548 (= lt!1033111 (Concat!14489 lt!1033108 lt!1033105))))

(declare-fun b!2956549 () Bool)

(assert (=> b!2956549 (= e!1861541 e!1861540)))

(declare-fun res!1219829 () Bool)

(assert (=> b!2956549 (=> res!1219829 e!1861540)))

(assert (=> b!2956549 (= res!1219829 (isEmptyLang!290 lt!1033108))))

(declare-fun simplify!173 (Regex!9168) Regex!9168)

(assert (=> b!2956549 (= lt!1033105 (simplify!173 (regTwo!18848 r!17423)))))

(assert (=> b!2956549 (= lt!1033108 (simplify!173 (regOne!18848 r!17423)))))

(assert (= (and start!286614 res!1219831) b!2956539))

(assert (= (and b!2956539 (not res!1219827)) b!2956544))

(assert (= (and b!2956544 (not res!1219833)) b!2956549))

(assert (= (and b!2956549 (not res!1219829)) b!2956542))

(assert (= (and b!2956542 (not res!1219825)) b!2956537))

(assert (= (and b!2956537 (not res!1219826)) b!2956541))

(assert (= (and b!2956541 (not res!1219828)) b!2956548))

(assert (= (and b!2956548 (not res!1219830)) b!2956543))

(assert (= (and b!2956543 (not res!1219832)) b!2956547))

(assert (= (and start!286614 (is-ElementMatch!9168 r!17423)) b!2956546))

(assert (= (and start!286614 (is-Concat!14489 r!17423)) b!2956540))

(assert (= (and start!286614 (is-Star!9168 r!17423)) b!2956538))

(assert (= (and start!286614 (is-Union!9168 r!17423)) b!2956536))

(assert (= (and start!286614 (is-Cons!34909 s!11993)) b!2956545))

(declare-fun m!3332201 () Bool)

(assert (=> b!2956548 m!3332201))

(declare-fun m!3332203 () Bool)

(assert (=> b!2956537 m!3332203))

(declare-fun m!3332205 () Bool)

(assert (=> b!2956549 m!3332205))

(declare-fun m!3332207 () Bool)

(assert (=> b!2956549 m!3332207))

(declare-fun m!3332209 () Bool)

(assert (=> b!2956549 m!3332209))

(declare-fun m!3332211 () Bool)

(assert (=> b!2956547 m!3332211))

(declare-fun m!3332213 () Bool)

(assert (=> b!2956544 m!3332213))

(declare-fun m!3332215 () Bool)

(assert (=> b!2956541 m!3332215))

(declare-fun m!3332217 () Bool)

(assert (=> b!2956543 m!3332217))

(declare-fun m!3332219 () Bool)

(assert (=> b!2956543 m!3332219))

(declare-fun m!3332221 () Bool)

(assert (=> b!2956543 m!3332221))

(declare-fun m!3332223 () Bool)

(assert (=> b!2956543 m!3332223))

(declare-fun m!3332225 () Bool)

(assert (=> b!2956543 m!3332225))

(assert (=> b!2956543 m!3332225))

(declare-fun m!3332227 () Bool)

(assert (=> b!2956543 m!3332227))

(assert (=> b!2956543 m!3332223))

(declare-fun m!3332229 () Bool)

(assert (=> b!2956543 m!3332229))

(declare-fun m!3332231 () Bool)

(assert (=> b!2956543 m!3332231))

(declare-fun m!3332233 () Bool)

(assert (=> b!2956539 m!3332233))

(declare-fun m!3332235 () Bool)

(assert (=> b!2956539 m!3332235))

(declare-fun m!3332237 () Bool)

(assert (=> b!2956539 m!3332237))

(declare-fun m!3332239 () Bool)

(assert (=> b!2956542 m!3332239))

(declare-fun m!3332241 () Bool)

(assert (=> start!286614 m!3332241))

(push 1)

(assert (not b!2956539))

(assert (not b!2956544))

(assert (not b!2956543))

(assert (not b!2956537))

(assert (not b!2956540))

(assert (not b!2956548))

(assert (not b!2956541))

(assert (not b!2956538))

(assert (not b!2956536))

(assert (not b!2956542))

(assert (not b!2956549))

(assert (not b!2956545))

(assert (not start!286614))

(assert tp_is_empty!15899)

(assert (not b!2956547))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!526135 () Bool)

(declare-fun b!2956650 () Bool)

(assert (= bs!526135 (and b!2956650 b!2956543)))

(declare-fun lambda!110129 () Int)

(assert (=> bs!526135 (not (= lambda!110129 lambda!110115))))

(assert (=> bs!526135 (not (= lambda!110129 lambda!110116))))

(assert (=> b!2956650 true))

(assert (=> b!2956650 true))

(declare-fun bs!526136 () Bool)

(declare-fun b!2956648 () Bool)

(assert (= bs!526136 (and b!2956648 b!2956543)))

(declare-fun lambda!110130 () Int)

(assert (=> bs!526136 (not (= lambda!110130 lambda!110115))))

(assert (=> bs!526136 (= (and (= (regOne!18848 r!17423) lt!1033108) (= (regTwo!18848 r!17423) lt!1033105)) (= lambda!110130 lambda!110116))))

(declare-fun bs!526137 () Bool)

(assert (= bs!526137 (and b!2956648 b!2956650)))

(assert (=> bs!526137 (not (= lambda!110130 lambda!110129))))

(assert (=> b!2956648 true))

(assert (=> b!2956648 true))

(declare-fun call!195830 () Bool)

(declare-fun bm!195824 () Bool)

(declare-fun c!484372 () Bool)

(assert (=> bm!195824 (= call!195830 (Exists!1500 (ite c!484372 lambda!110129 lambda!110130)))))

(declare-fun b!2956644 () Bool)

(declare-fun e!1861595 () Bool)

(declare-fun e!1861593 () Bool)

(assert (=> b!2956644 (= e!1861595 e!1861593)))

(assert (=> b!2956644 (= c!484372 (is-Star!9168 r!17423))))

(declare-fun d!841646 () Bool)

(declare-fun c!484373 () Bool)

(assert (=> d!841646 (= c!484373 (is-EmptyExpr!9168 r!17423))))

(declare-fun e!1861596 () Bool)

(assert (=> d!841646 (= (matchRSpec!1305 r!17423 s!11993) e!1861596)))

(declare-fun b!2956645 () Bool)

(declare-fun e!1861594 () Bool)

(assert (=> b!2956645 (= e!1861595 e!1861594)))

(declare-fun res!1219890 () Bool)

(assert (=> b!2956645 (= res!1219890 (matchRSpec!1305 (regOne!18849 r!17423) s!11993))))

(assert (=> b!2956645 (=> res!1219890 e!1861594)))

(declare-fun b!2956646 () Bool)

(declare-fun c!484375 () Bool)

(assert (=> b!2956646 (= c!484375 (is-ElementMatch!9168 r!17423))))

(declare-fun e!1861590 () Bool)

(declare-fun e!1861591 () Bool)

(assert (=> b!2956646 (= e!1861590 e!1861591)))

(declare-fun b!2956647 () Bool)

(declare-fun res!1219889 () Bool)

(declare-fun e!1861592 () Bool)

(assert (=> b!2956647 (=> res!1219889 e!1861592)))

(declare-fun call!195829 () Bool)

(assert (=> b!2956647 (= res!1219889 call!195829)))

(assert (=> b!2956647 (= e!1861593 e!1861592)))

(assert (=> b!2956648 (= e!1861593 call!195830)))

(declare-fun b!2956649 () Bool)

(assert (=> b!2956649 (= e!1861596 e!1861590)))

(declare-fun res!1219891 () Bool)

(assert (=> b!2956649 (= res!1219891 (not (is-EmptyLang!9168 r!17423)))))

(assert (=> b!2956649 (=> (not res!1219891) (not e!1861590))))

(assert (=> b!2956650 (= e!1861592 call!195830)))

(declare-fun b!2956651 () Bool)

(assert (=> b!2956651 (= e!1861594 (matchRSpec!1305 (regTwo!18849 r!17423) s!11993))))

(declare-fun bm!195825 () Bool)

(assert (=> bm!195825 (= call!195829 (isEmpty!19187 s!11993))))

(declare-fun b!2956652 () Bool)

(assert (=> b!2956652 (= e!1861591 (= s!11993 (Cons!34909 (c!484362 r!17423) Nil!34909)))))

(declare-fun b!2956653 () Bool)

(assert (=> b!2956653 (= e!1861596 call!195829)))

(declare-fun b!2956654 () Bool)

(declare-fun c!484374 () Bool)

(assert (=> b!2956654 (= c!484374 (is-Union!9168 r!17423))))

(assert (=> b!2956654 (= e!1861591 e!1861595)))

(assert (= (and d!841646 c!484373) b!2956653))

(assert (= (and d!841646 (not c!484373)) b!2956649))

(assert (= (and b!2956649 res!1219891) b!2956646))

(assert (= (and b!2956646 c!484375) b!2956652))

(assert (= (and b!2956646 (not c!484375)) b!2956654))

(assert (= (and b!2956654 c!484374) b!2956645))

(assert (= (and b!2956654 (not c!484374)) b!2956644))

(assert (= (and b!2956645 (not res!1219890)) b!2956651))

(assert (= (and b!2956644 c!484372) b!2956647))

(assert (= (and b!2956644 (not c!484372)) b!2956648))

(assert (= (and b!2956647 (not res!1219889)) b!2956650))

(assert (= (or b!2956650 b!2956648) bm!195824))

(assert (= (or b!2956653 b!2956647) bm!195825))

(declare-fun m!3332285 () Bool)

(assert (=> bm!195824 m!3332285))

(declare-fun m!3332287 () Bool)

(assert (=> b!2956645 m!3332287))

(declare-fun m!3332289 () Bool)

(assert (=> b!2956651 m!3332289))

(assert (=> bm!195825 m!3332213))

(assert (=> b!2956539 d!841646))

(declare-fun b!2956711 () Bool)

(declare-fun res!1219930 () Bool)

(declare-fun e!1861630 () Bool)

(assert (=> b!2956711 (=> (not res!1219930) (not e!1861630))))

(declare-fun tail!4811 (List!35033) List!35033)

(assert (=> b!2956711 (= res!1219930 (isEmpty!19187 (tail!4811 s!11993)))))

(declare-fun bm!195830 () Bool)

(declare-fun call!195835 () Bool)

(assert (=> bm!195830 (= call!195835 (isEmpty!19187 s!11993))))

(declare-fun b!2956712 () Bool)

(declare-fun res!1219925 () Bool)

(declare-fun e!1861629 () Bool)

(assert (=> b!2956712 (=> res!1219925 e!1861629)))

(assert (=> b!2956712 (= res!1219925 (not (is-ElementMatch!9168 r!17423)))))

(declare-fun e!1861626 () Bool)

(assert (=> b!2956712 (= e!1861626 e!1861629)))

(declare-fun b!2956713 () Bool)

(declare-fun e!1861627 () Bool)

(assert (=> b!2956713 (= e!1861627 e!1861626)))

(declare-fun c!484388 () Bool)

(assert (=> b!2956713 (= c!484388 (is-EmptyLang!9168 r!17423))))

(declare-fun b!2956714 () Bool)

(declare-fun res!1219931 () Bool)

(assert (=> b!2956714 (=> res!1219931 e!1861629)))

(assert (=> b!2956714 (= res!1219931 e!1861630)))

(declare-fun res!1219926 () Bool)

(assert (=> b!2956714 (=> (not res!1219926) (not e!1861630))))

(declare-fun lt!1033144 () Bool)

(assert (=> b!2956714 (= res!1219926 lt!1033144)))

(declare-fun b!2956715 () Bool)

(declare-fun e!1861631 () Bool)

(declare-fun nullable!2924 (Regex!9168) Bool)

(assert (=> b!2956715 (= e!1861631 (nullable!2924 r!17423))))

(declare-fun b!2956716 () Bool)

(declare-fun head!6585 (List!35033) C!18522)

(assert (=> b!2956716 (= e!1861630 (= (head!6585 s!11993) (c!484362 r!17423)))))

(declare-fun d!841652 () Bool)

(assert (=> d!841652 e!1861627))

(declare-fun c!484390 () Bool)

(assert (=> d!841652 (= c!484390 (is-EmptyExpr!9168 r!17423))))

(assert (=> d!841652 (= lt!1033144 e!1861631)))

(declare-fun c!484389 () Bool)

(assert (=> d!841652 (= c!484389 (isEmpty!19187 s!11993))))

(assert (=> d!841652 (validRegex!3901 r!17423)))

(assert (=> d!841652 (= (matchR!4050 r!17423 s!11993) lt!1033144)))

(declare-fun b!2956717 () Bool)

(declare-fun e!1861628 () Bool)

(assert (=> b!2956717 (= e!1861629 e!1861628)))

(declare-fun res!1219929 () Bool)

(assert (=> b!2956717 (=> (not res!1219929) (not e!1861628))))

(assert (=> b!2956717 (= res!1219929 (not lt!1033144))))

(declare-fun b!2956718 () Bool)

(declare-fun e!1861625 () Bool)

(assert (=> b!2956718 (= e!1861625 (not (= (head!6585 s!11993) (c!484362 r!17423))))))

(declare-fun b!2956719 () Bool)

(declare-fun derivativeStep!2526 (Regex!9168 C!18522) Regex!9168)

(assert (=> b!2956719 (= e!1861631 (matchR!4050 (derivativeStep!2526 r!17423 (head!6585 s!11993)) (tail!4811 s!11993)))))

(declare-fun b!2956720 () Bool)

(declare-fun res!1219924 () Bool)

(assert (=> b!2956720 (=> (not res!1219924) (not e!1861630))))

(assert (=> b!2956720 (= res!1219924 (not call!195835))))

(declare-fun b!2956721 () Bool)

(declare-fun res!1219928 () Bool)

(assert (=> b!2956721 (=> res!1219928 e!1861625)))

(assert (=> b!2956721 (= res!1219928 (not (isEmpty!19187 (tail!4811 s!11993))))))

(declare-fun b!2956722 () Bool)

(assert (=> b!2956722 (= e!1861626 (not lt!1033144))))

(declare-fun b!2956723 () Bool)

(assert (=> b!2956723 (= e!1861627 (= lt!1033144 call!195835))))

(declare-fun b!2956724 () Bool)

(assert (=> b!2956724 (= e!1861628 e!1861625)))

(declare-fun res!1219927 () Bool)

(assert (=> b!2956724 (=> res!1219927 e!1861625)))

(assert (=> b!2956724 (= res!1219927 call!195835)))

(assert (= (and d!841652 c!484389) b!2956715))

(assert (= (and d!841652 (not c!484389)) b!2956719))

(assert (= (and d!841652 c!484390) b!2956723))

(assert (= (and d!841652 (not c!484390)) b!2956713))

(assert (= (and b!2956713 c!484388) b!2956722))

(assert (= (and b!2956713 (not c!484388)) b!2956712))

(assert (= (and b!2956712 (not res!1219925)) b!2956714))

(assert (= (and b!2956714 res!1219926) b!2956720))

(assert (= (and b!2956720 res!1219924) b!2956711))

(assert (= (and b!2956711 res!1219930) b!2956716))

(assert (= (and b!2956714 (not res!1219931)) b!2956717))

(assert (= (and b!2956717 res!1219929) b!2956724))

(assert (= (and b!2956724 (not res!1219927)) b!2956721))

(assert (= (and b!2956721 (not res!1219928)) b!2956718))

(assert (= (or b!2956723 b!2956720 b!2956724) bm!195830))

(assert (=> d!841652 m!3332213))

(assert (=> d!841652 m!3332241))

(declare-fun m!3332291 () Bool)

(assert (=> b!2956718 m!3332291))

(declare-fun m!3332293 () Bool)

(assert (=> b!2956711 m!3332293))

(assert (=> b!2956711 m!3332293))

(declare-fun m!3332295 () Bool)

(assert (=> b!2956711 m!3332295))

(assert (=> bm!195830 m!3332213))

(declare-fun m!3332297 () Bool)

(assert (=> b!2956715 m!3332297))

(assert (=> b!2956721 m!3332293))

(assert (=> b!2956721 m!3332293))

(assert (=> b!2956721 m!3332295))

(assert (=> b!2956719 m!3332291))

(assert (=> b!2956719 m!3332291))

(declare-fun m!3332299 () Bool)

(assert (=> b!2956719 m!3332299))

(assert (=> b!2956719 m!3332293))

(assert (=> b!2956719 m!3332299))

(assert (=> b!2956719 m!3332293))

(declare-fun m!3332301 () Bool)

(assert (=> b!2956719 m!3332301))

(assert (=> b!2956716 m!3332291))

(assert (=> b!2956539 d!841652))

(declare-fun d!841654 () Bool)

(assert (=> d!841654 (= (matchR!4050 r!17423 s!11993) (matchRSpec!1305 r!17423 s!11993))))

(declare-fun lt!1033148 () Unit!48715)

(declare-fun choose!17489 (Regex!9168 List!35033) Unit!48715)

(assert (=> d!841654 (= lt!1033148 (choose!17489 r!17423 s!11993))))

(assert (=> d!841654 (validRegex!3901 r!17423)))

(assert (=> d!841654 (= (mainMatchTheorem!1305 r!17423 s!11993) lt!1033148)))

(declare-fun bs!526138 () Bool)

(assert (= bs!526138 d!841654))

(assert (=> bs!526138 m!3332235))

(assert (=> bs!526138 m!3332233))

(declare-fun m!3332303 () Bool)

(assert (=> bs!526138 m!3332303))

(assert (=> bs!526138 m!3332241))

(assert (=> b!2956539 d!841654))

(declare-fun d!841656 () Bool)

(assert (=> d!841656 (= (isEmptyExpr!371 lt!1033105) (is-EmptyExpr!9168 lt!1033105))))

(assert (=> b!2956541 d!841656))

(declare-fun b!2956757 () Bool)

(declare-fun e!1861658 () Bool)

(declare-fun e!1861659 () Bool)

(assert (=> b!2956757 (= e!1861658 e!1861659)))

(declare-fun c!484398 () Bool)

(assert (=> b!2956757 (= c!484398 (is-Union!9168 lt!1033108))))

(declare-fun b!2956758 () Bool)

(declare-fun e!1861653 () Bool)

(declare-fun call!195844 () Bool)

(assert (=> b!2956758 (= e!1861653 call!195844)))

(declare-fun bm!195838 () Bool)

(declare-fun c!484399 () Bool)

(declare-fun call!195845 () Bool)

(assert (=> bm!195838 (= call!195845 (validRegex!3901 (ite c!484399 (reg!9497 lt!1033108) (ite c!484398 (regOne!18849 lt!1033108) (regTwo!18848 lt!1033108)))))))

(declare-fun b!2956759 () Bool)

(declare-fun e!1861654 () Bool)

(assert (=> b!2956759 (= e!1861654 call!195845)))

(declare-fun b!2956760 () Bool)

(declare-fun e!1861655 () Bool)

(assert (=> b!2956760 (= e!1861655 e!1861653)))

(declare-fun res!1219952 () Bool)

(assert (=> b!2956760 (=> (not res!1219952) (not e!1861653))))

(declare-fun call!195843 () Bool)

(assert (=> b!2956760 (= res!1219952 call!195843)))

(declare-fun bm!195839 () Bool)

(assert (=> bm!195839 (= call!195843 (validRegex!3901 (ite c!484398 (regTwo!18849 lt!1033108) (regOne!18848 lt!1033108))))))

(declare-fun d!841658 () Bool)

(declare-fun res!1219950 () Bool)

(declare-fun e!1861656 () Bool)

(assert (=> d!841658 (=> res!1219950 e!1861656)))

(assert (=> d!841658 (= res!1219950 (is-ElementMatch!9168 lt!1033108))))

(assert (=> d!841658 (= (validRegex!3901 lt!1033108) e!1861656)))

(declare-fun b!2956761 () Bool)

(declare-fun res!1219951 () Bool)

(assert (=> b!2956761 (=> res!1219951 e!1861655)))

(assert (=> b!2956761 (= res!1219951 (not (is-Concat!14489 lt!1033108)))))

(assert (=> b!2956761 (= e!1861659 e!1861655)))

(declare-fun b!2956762 () Bool)

(assert (=> b!2956762 (= e!1861658 e!1861654)))

(declare-fun res!1219954 () Bool)

(assert (=> b!2956762 (= res!1219954 (not (nullable!2924 (reg!9497 lt!1033108))))))

(assert (=> b!2956762 (=> (not res!1219954) (not e!1861654))))

(declare-fun b!2956763 () Bool)

(declare-fun e!1861657 () Bool)

(assert (=> b!2956763 (= e!1861657 call!195843)))

(declare-fun b!2956764 () Bool)

(assert (=> b!2956764 (= e!1861656 e!1861658)))

(assert (=> b!2956764 (= c!484399 (is-Star!9168 lt!1033108))))

(declare-fun bm!195840 () Bool)

(assert (=> bm!195840 (= call!195844 call!195845)))

(declare-fun b!2956765 () Bool)

(declare-fun res!1219953 () Bool)

(assert (=> b!2956765 (=> (not res!1219953) (not e!1861657))))

(assert (=> b!2956765 (= res!1219953 call!195844)))

(assert (=> b!2956765 (= e!1861659 e!1861657)))

(assert (= (and d!841658 (not res!1219950)) b!2956764))

(assert (= (and b!2956764 c!484399) b!2956762))

(assert (= (and b!2956764 (not c!484399)) b!2956757))

(assert (= (and b!2956762 res!1219954) b!2956759))

(assert (= (and b!2956757 c!484398) b!2956765))

(assert (= (and b!2956757 (not c!484398)) b!2956761))

(assert (= (and b!2956765 res!1219953) b!2956763))

(assert (= (and b!2956761 (not res!1219951)) b!2956760))

(assert (= (and b!2956760 res!1219952) b!2956758))

(assert (= (or b!2956765 b!2956758) bm!195840))

(assert (= (or b!2956763 b!2956760) bm!195839))

(assert (= (or b!2956759 bm!195840) bm!195838))

(declare-fun m!3332319 () Bool)

(assert (=> bm!195838 m!3332319))

(declare-fun m!3332321 () Bool)

(assert (=> bm!195839 m!3332321))

(declare-fun m!3332323 () Bool)

(assert (=> b!2956762 m!3332323))

(assert (=> b!2956547 d!841658))

(declare-fun d!841664 () Bool)

(assert (=> d!841664 (= (isEmptyLang!290 lt!1033105) (is-EmptyLang!9168 lt!1033105))))

(assert (=> b!2956542 d!841664))

(declare-fun d!841666 () Bool)

(assert (=> d!841666 (= (isEmptyExpr!371 lt!1033108) (is-EmptyExpr!9168 lt!1033108))))

(assert (=> b!2956537 d!841666))

(declare-fun b!2956766 () Bool)

(declare-fun res!1219961 () Bool)

(declare-fun e!1861665 () Bool)

(assert (=> b!2956766 (=> (not res!1219961) (not e!1861665))))

(assert (=> b!2956766 (= res!1219961 (isEmpty!19187 (tail!4811 s!11993)))))

(declare-fun bm!195841 () Bool)

(declare-fun call!195846 () Bool)

(assert (=> bm!195841 (= call!195846 (isEmpty!19187 s!11993))))

(declare-fun b!2956767 () Bool)

(declare-fun res!1219956 () Bool)

(declare-fun e!1861664 () Bool)

(assert (=> b!2956767 (=> res!1219956 e!1861664)))

(assert (=> b!2956767 (= res!1219956 (not (is-ElementMatch!9168 lt!1033111)))))

(declare-fun e!1861661 () Bool)

(assert (=> b!2956767 (= e!1861661 e!1861664)))

(declare-fun b!2956768 () Bool)

(declare-fun e!1861662 () Bool)

(assert (=> b!2956768 (= e!1861662 e!1861661)))

(declare-fun c!484400 () Bool)

(assert (=> b!2956768 (= c!484400 (is-EmptyLang!9168 lt!1033111))))

(declare-fun b!2956769 () Bool)

(declare-fun res!1219962 () Bool)

(assert (=> b!2956769 (=> res!1219962 e!1861664)))

(assert (=> b!2956769 (= res!1219962 e!1861665)))

(declare-fun res!1219957 () Bool)

(assert (=> b!2956769 (=> (not res!1219957) (not e!1861665))))

(declare-fun lt!1033149 () Bool)

(assert (=> b!2956769 (= res!1219957 lt!1033149)))

(declare-fun b!2956770 () Bool)

(declare-fun e!1861666 () Bool)

(assert (=> b!2956770 (= e!1861666 (nullable!2924 lt!1033111))))

(declare-fun b!2956771 () Bool)

(assert (=> b!2956771 (= e!1861665 (= (head!6585 s!11993) (c!484362 lt!1033111)))))

(declare-fun d!841668 () Bool)

(assert (=> d!841668 e!1861662))

(declare-fun c!484402 () Bool)

(assert (=> d!841668 (= c!484402 (is-EmptyExpr!9168 lt!1033111))))

(assert (=> d!841668 (= lt!1033149 e!1861666)))

(declare-fun c!484401 () Bool)

(assert (=> d!841668 (= c!484401 (isEmpty!19187 s!11993))))

(assert (=> d!841668 (validRegex!3901 lt!1033111)))

(assert (=> d!841668 (= (matchR!4050 lt!1033111 s!11993) lt!1033149)))

(declare-fun b!2956772 () Bool)

(declare-fun e!1861663 () Bool)

(assert (=> b!2956772 (= e!1861664 e!1861663)))

(declare-fun res!1219960 () Bool)

(assert (=> b!2956772 (=> (not res!1219960) (not e!1861663))))

(assert (=> b!2956772 (= res!1219960 (not lt!1033149))))

(declare-fun b!2956773 () Bool)

(declare-fun e!1861660 () Bool)

(assert (=> b!2956773 (= e!1861660 (not (= (head!6585 s!11993) (c!484362 lt!1033111))))))

(declare-fun b!2956774 () Bool)

(assert (=> b!2956774 (= e!1861666 (matchR!4050 (derivativeStep!2526 lt!1033111 (head!6585 s!11993)) (tail!4811 s!11993)))))

(declare-fun b!2956775 () Bool)

(declare-fun res!1219955 () Bool)

(assert (=> b!2956775 (=> (not res!1219955) (not e!1861665))))

(assert (=> b!2956775 (= res!1219955 (not call!195846))))

(declare-fun b!2956776 () Bool)

(declare-fun res!1219959 () Bool)

(assert (=> b!2956776 (=> res!1219959 e!1861660)))

(assert (=> b!2956776 (= res!1219959 (not (isEmpty!19187 (tail!4811 s!11993))))))

(declare-fun b!2956777 () Bool)

(assert (=> b!2956777 (= e!1861661 (not lt!1033149))))

(declare-fun b!2956778 () Bool)

(assert (=> b!2956778 (= e!1861662 (= lt!1033149 call!195846))))

(declare-fun b!2956779 () Bool)

(assert (=> b!2956779 (= e!1861663 e!1861660)))

(declare-fun res!1219958 () Bool)

(assert (=> b!2956779 (=> res!1219958 e!1861660)))

(assert (=> b!2956779 (= res!1219958 call!195846)))

(assert (= (and d!841668 c!484401) b!2956770))

(assert (= (and d!841668 (not c!484401)) b!2956774))

(assert (= (and d!841668 c!484402) b!2956778))

(assert (= (and d!841668 (not c!484402)) b!2956768))

(assert (= (and b!2956768 c!484400) b!2956777))

(assert (= (and b!2956768 (not c!484400)) b!2956767))

(assert (= (and b!2956767 (not res!1219956)) b!2956769))

(assert (= (and b!2956769 res!1219957) b!2956775))

(assert (= (and b!2956775 res!1219955) b!2956766))

(assert (= (and b!2956766 res!1219961) b!2956771))

(assert (= (and b!2956769 (not res!1219962)) b!2956772))

(assert (= (and b!2956772 res!1219960) b!2956779))

(assert (= (and b!2956779 (not res!1219958)) b!2956776))

(assert (= (and b!2956776 (not res!1219959)) b!2956773))

(assert (= (or b!2956778 b!2956775 b!2956779) bm!195841))

(assert (=> d!841668 m!3332213))

(declare-fun m!3332325 () Bool)

(assert (=> d!841668 m!3332325))

(assert (=> b!2956773 m!3332291))

(assert (=> b!2956766 m!3332293))

(assert (=> b!2956766 m!3332293))

(assert (=> b!2956766 m!3332295))

(assert (=> bm!195841 m!3332213))

(declare-fun m!3332327 () Bool)

(assert (=> b!2956770 m!3332327))

(assert (=> b!2956776 m!3332293))

(assert (=> b!2956776 m!3332293))

(assert (=> b!2956776 m!3332295))

(assert (=> b!2956774 m!3332291))

(assert (=> b!2956774 m!3332291))

(declare-fun m!3332329 () Bool)

(assert (=> b!2956774 m!3332329))

(assert (=> b!2956774 m!3332293))

(assert (=> b!2956774 m!3332329))

(assert (=> b!2956774 m!3332293))

(declare-fun m!3332331 () Bool)

(assert (=> b!2956774 m!3332331))

(assert (=> b!2956771 m!3332291))

(assert (=> b!2956548 d!841668))

(declare-fun bs!526139 () Bool)

(declare-fun d!841670 () Bool)

(assert (= bs!526139 (and d!841670 b!2956543)))

(declare-fun lambda!110136 () Int)

(assert (=> bs!526139 (= lambda!110136 lambda!110115)))

(assert (=> bs!526139 (not (= lambda!110136 lambda!110116))))

(declare-fun bs!526140 () Bool)

(assert (= bs!526140 (and d!841670 b!2956650)))

(assert (=> bs!526140 (not (= lambda!110136 lambda!110129))))

(declare-fun bs!526141 () Bool)

(assert (= bs!526141 (and d!841670 b!2956648)))

(assert (=> bs!526141 (not (= lambda!110136 lambda!110130))))

(assert (=> d!841670 true))

(assert (=> d!841670 true))

(assert (=> d!841670 true))

(declare-fun lambda!110138 () Int)

(assert (=> bs!526139 (not (= lambda!110138 lambda!110115))))

(assert (=> bs!526139 (= lambda!110138 lambda!110116)))

(assert (=> bs!526141 (= (and (= lt!1033108 (regOne!18848 r!17423)) (= lt!1033105 (regTwo!18848 r!17423))) (= lambda!110138 lambda!110130))))

(declare-fun bs!526142 () Bool)

(assert (= bs!526142 d!841670))

(assert (=> bs!526142 (not (= lambda!110138 lambda!110136))))

(assert (=> bs!526140 (not (= lambda!110138 lambda!110129))))

(assert (=> d!841670 true))

(assert (=> d!841670 true))

(assert (=> d!841670 true))

(assert (=> d!841670 (= (Exists!1500 lambda!110136) (Exists!1500 lambda!110138))))

(declare-fun lt!1033154 () Unit!48715)

(declare-fun choose!17490 (Regex!9168 Regex!9168 List!35033) Unit!48715)

(assert (=> d!841670 (= lt!1033154 (choose!17490 lt!1033108 lt!1033105 s!11993))))

(assert (=> d!841670 (validRegex!3901 lt!1033108)))

(assert (=> d!841670 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!521 lt!1033108 lt!1033105 s!11993) lt!1033154)))

(declare-fun m!3332333 () Bool)

(assert (=> bs!526142 m!3332333))

(declare-fun m!3332335 () Bool)

(assert (=> bs!526142 m!3332335))

(declare-fun m!3332337 () Bool)

(assert (=> bs!526142 m!3332337))

(assert (=> bs!526142 m!3332211))

(assert (=> b!2956543 d!841670))

(declare-fun d!841672 () Bool)

(declare-fun isEmpty!19189 (Option!6659) Bool)

(assert (=> d!841672 (= (isDefined!5210 (findConcatSeparation!1053 lt!1033108 lt!1033105 Nil!34909 s!11993 s!11993)) (not (isEmpty!19189 (findConcatSeparation!1053 lt!1033108 lt!1033105 Nil!34909 s!11993 s!11993))))))

(declare-fun bs!526143 () Bool)

(assert (= bs!526143 d!841672))

(assert (=> bs!526143 m!3332223))

(declare-fun m!3332339 () Bool)

(assert (=> bs!526143 m!3332339))

(assert (=> b!2956543 d!841672))

(declare-fun d!841674 () Bool)

(declare-fun choose!17491 (Int) Bool)

(assert (=> d!841674 (= (Exists!1500 lambda!110115) (choose!17491 lambda!110115))))

(declare-fun bs!526144 () Bool)

(assert (= bs!526144 d!841674))

(declare-fun m!3332341 () Bool)

(assert (=> bs!526144 m!3332341))

(assert (=> b!2956543 d!841674))

(declare-fun bs!526146 () Bool)

(declare-fun d!841676 () Bool)

(assert (= bs!526146 (and d!841676 d!841670)))

(declare-fun lambda!110144 () Int)

(assert (=> bs!526146 (not (= lambda!110144 lambda!110138))))

(declare-fun bs!526147 () Bool)

(assert (= bs!526147 (and d!841676 b!2956543)))

(assert (=> bs!526147 (= lambda!110144 lambda!110115)))

(assert (=> bs!526147 (not (= lambda!110144 lambda!110116))))

(declare-fun bs!526148 () Bool)

(assert (= bs!526148 (and d!841676 b!2956648)))

(assert (=> bs!526148 (not (= lambda!110144 lambda!110130))))

(assert (=> bs!526146 (= lambda!110144 lambda!110136)))

(declare-fun bs!526149 () Bool)

(assert (= bs!526149 (and d!841676 b!2956650)))

(assert (=> bs!526149 (not (= lambda!110144 lambda!110129))))

(assert (=> d!841676 true))

(assert (=> d!841676 true))

(assert (=> d!841676 true))

(assert (=> d!841676 (= (isDefined!5210 (findConcatSeparation!1053 lt!1033108 lt!1033105 Nil!34909 s!11993 s!11993)) (Exists!1500 lambda!110144))))

(declare-fun lt!1033158 () Unit!48715)

(declare-fun choose!17492 (Regex!9168 Regex!9168 List!35033) Unit!48715)

(assert (=> d!841676 (= lt!1033158 (choose!17492 lt!1033108 lt!1033105 s!11993))))

(assert (=> d!841676 (validRegex!3901 lt!1033108)))

(assert (=> d!841676 (= (lemmaFindConcatSeparationEquivalentToExists!831 lt!1033108 lt!1033105 s!11993) lt!1033158)))

(declare-fun bs!526150 () Bool)

(assert (= bs!526150 d!841676))

(assert (=> bs!526150 m!3332223))

(assert (=> bs!526150 m!3332229))

(assert (=> bs!526150 m!3332211))

(declare-fun m!3332343 () Bool)

(assert (=> bs!526150 m!3332343))

(assert (=> bs!526150 m!3332223))

(declare-fun m!3332345 () Bool)

(assert (=> bs!526150 m!3332345))

(assert (=> b!2956543 d!841676))

(declare-fun d!841678 () Bool)

(assert (=> d!841678 (= (matchR!4050 lt!1033111 s!11993) (matchRSpec!1305 lt!1033111 s!11993))))

(declare-fun lt!1033159 () Unit!48715)

(assert (=> d!841678 (= lt!1033159 (choose!17489 lt!1033111 s!11993))))

(assert (=> d!841678 (validRegex!3901 lt!1033111)))

(assert (=> d!841678 (= (mainMatchTheorem!1305 lt!1033111 s!11993) lt!1033159)))

(declare-fun bs!526151 () Bool)

(assert (= bs!526151 d!841678))

(assert (=> bs!526151 m!3332201))

(assert (=> bs!526151 m!3332231))

(declare-fun m!3332347 () Bool)

(assert (=> bs!526151 m!3332347))

(assert (=> bs!526151 m!3332325))

(assert (=> b!2956543 d!841678))

(declare-fun b!2956818 () Bool)

(declare-fun res!1219994 () Bool)

(declare-fun e!1861690 () Bool)

(assert (=> b!2956818 (=> (not res!1219994) (not e!1861690))))

(declare-fun lt!1033168 () Option!6659)

(declare-fun get!10720 (Option!6659) tuple2!33854)

(assert (=> b!2956818 (= res!1219994 (matchR!4050 lt!1033108 (_1!20059 (get!10720 lt!1033168))))))

(declare-fun d!841680 () Bool)

(declare-fun e!1861689 () Bool)

(assert (=> d!841680 e!1861689))

(declare-fun res!1219996 () Bool)

(assert (=> d!841680 (=> res!1219996 e!1861689)))

(assert (=> d!841680 (= res!1219996 e!1861690)))

(declare-fun res!1219993 () Bool)

(assert (=> d!841680 (=> (not res!1219993) (not e!1861690))))

(assert (=> d!841680 (= res!1219993 (isDefined!5210 lt!1033168))))

(declare-fun e!1861687 () Option!6659)

(assert (=> d!841680 (= lt!1033168 e!1861687)))

(declare-fun c!484407 () Bool)

(declare-fun e!1861688 () Bool)

(assert (=> d!841680 (= c!484407 e!1861688)))

(declare-fun res!1219997 () Bool)

(assert (=> d!841680 (=> (not res!1219997) (not e!1861688))))

(assert (=> d!841680 (= res!1219997 (matchR!4050 lt!1033108 Nil!34909))))

(assert (=> d!841680 (validRegex!3901 lt!1033108)))

(assert (=> d!841680 (= (findConcatSeparation!1053 lt!1033108 lt!1033105 Nil!34909 s!11993 s!11993) lt!1033168)))

(declare-fun b!2956819 () Bool)

(declare-fun e!1861691 () Option!6659)

(assert (=> b!2956819 (= e!1861687 e!1861691)))

(declare-fun c!484408 () Bool)

(assert (=> b!2956819 (= c!484408 (is-Nil!34909 s!11993))))

(declare-fun b!2956820 () Bool)

(declare-fun res!1219995 () Bool)

(assert (=> b!2956820 (=> (not res!1219995) (not e!1861690))))

(assert (=> b!2956820 (= res!1219995 (matchR!4050 lt!1033105 (_2!20059 (get!10720 lt!1033168))))))

(declare-fun b!2956821 () Bool)

(assert (=> b!2956821 (= e!1861688 (matchR!4050 lt!1033105 s!11993))))

(declare-fun b!2956822 () Bool)

(assert (=> b!2956822 (= e!1861687 (Some!6658 (tuple2!33855 Nil!34909 s!11993)))))

(declare-fun b!2956823 () Bool)

(assert (=> b!2956823 (= e!1861691 None!6658)))

(declare-fun b!2956824 () Bool)

(declare-fun ++!8335 (List!35033 List!35033) List!35033)

(assert (=> b!2956824 (= e!1861690 (= (++!8335 (_1!20059 (get!10720 lt!1033168)) (_2!20059 (get!10720 lt!1033168))) s!11993))))

(declare-fun b!2956825 () Bool)

(assert (=> b!2956825 (= e!1861689 (not (isDefined!5210 lt!1033168)))))

(declare-fun b!2956826 () Bool)

(declare-fun lt!1033166 () Unit!48715)

(declare-fun lt!1033167 () Unit!48715)

(assert (=> b!2956826 (= lt!1033166 lt!1033167)))

(assert (=> b!2956826 (= (++!8335 (++!8335 Nil!34909 (Cons!34909 (h!40329 s!11993) Nil!34909)) (t!234098 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!958 (List!35033 C!18522 List!35033 List!35033) Unit!48715)

(assert (=> b!2956826 (= lt!1033167 (lemmaMoveElementToOtherListKeepsConcatEq!958 Nil!34909 (h!40329 s!11993) (t!234098 s!11993) s!11993))))

(assert (=> b!2956826 (= e!1861691 (findConcatSeparation!1053 lt!1033108 lt!1033105 (++!8335 Nil!34909 (Cons!34909 (h!40329 s!11993) Nil!34909)) (t!234098 s!11993) s!11993))))

(assert (= (and d!841680 res!1219997) b!2956821))

(assert (= (and d!841680 c!484407) b!2956822))

(assert (= (and d!841680 (not c!484407)) b!2956819))

(assert (= (and b!2956819 c!484408) b!2956823))

(assert (= (and b!2956819 (not c!484408)) b!2956826))

(assert (= (and d!841680 res!1219993) b!2956818))

(assert (= (and b!2956818 res!1219994) b!2956820))

(assert (= (and b!2956820 res!1219995) b!2956824))

(assert (= (and d!841680 (not res!1219996)) b!2956825))

(declare-fun m!3332357 () Bool)

(assert (=> d!841680 m!3332357))

(declare-fun m!3332359 () Bool)

(assert (=> d!841680 m!3332359))

(assert (=> d!841680 m!3332211))

(declare-fun m!3332361 () Bool)

(assert (=> b!2956818 m!3332361))

(declare-fun m!3332363 () Bool)

(assert (=> b!2956818 m!3332363))

(declare-fun m!3332365 () Bool)

(assert (=> b!2956826 m!3332365))

(assert (=> b!2956826 m!3332365))

(declare-fun m!3332367 () Bool)

(assert (=> b!2956826 m!3332367))

(declare-fun m!3332369 () Bool)

(assert (=> b!2956826 m!3332369))

(assert (=> b!2956826 m!3332365))

(declare-fun m!3332371 () Bool)

(assert (=> b!2956826 m!3332371))

(declare-fun m!3332373 () Bool)

(assert (=> b!2956821 m!3332373))

(assert (=> b!2956824 m!3332361))

(declare-fun m!3332375 () Bool)

(assert (=> b!2956824 m!3332375))

(assert (=> b!2956820 m!3332361))

(declare-fun m!3332377 () Bool)

(assert (=> b!2956820 m!3332377))

(assert (=> b!2956825 m!3332357))

(assert (=> b!2956543 d!841680))

(declare-fun d!841686 () Bool)

(assert (=> d!841686 (= (Exists!1500 lambda!110116) (choose!17491 lambda!110116))))

(declare-fun bs!526154 () Bool)

(assert (= bs!526154 d!841686))

(declare-fun m!3332379 () Bool)

(assert (=> bs!526154 m!3332379))

(assert (=> b!2956543 d!841686))

(declare-fun bs!526155 () Bool)

(declare-fun b!2956849 () Bool)

(assert (= bs!526155 (and b!2956849 d!841670)))

(declare-fun lambda!110146 () Int)

(assert (=> bs!526155 (not (= lambda!110146 lambda!110138))))

(declare-fun bs!526156 () Bool)

(assert (= bs!526156 (and b!2956849 b!2956543)))

(assert (=> bs!526156 (not (= lambda!110146 lambda!110116))))

(declare-fun bs!526157 () Bool)

(assert (= bs!526157 (and b!2956849 b!2956648)))

(assert (=> bs!526157 (not (= lambda!110146 lambda!110130))))

(assert (=> bs!526155 (not (= lambda!110146 lambda!110136))))

(declare-fun bs!526158 () Bool)

(assert (= bs!526158 (and b!2956849 b!2956650)))

(assert (=> bs!526158 (= (and (= (reg!9497 lt!1033111) (reg!9497 r!17423)) (= lt!1033111 r!17423)) (= lambda!110146 lambda!110129))))

(assert (=> bs!526156 (not (= lambda!110146 lambda!110115))))

(declare-fun bs!526159 () Bool)

(assert (= bs!526159 (and b!2956849 d!841676)))

(assert (=> bs!526159 (not (= lambda!110146 lambda!110144))))

(assert (=> b!2956849 true))

(assert (=> b!2956849 true))

(declare-fun bs!526160 () Bool)

(declare-fun b!2956847 () Bool)

(assert (= bs!526160 (and b!2956847 d!841670)))

(declare-fun lambda!110147 () Int)

(assert (=> bs!526160 (= (and (= (regOne!18848 lt!1033111) lt!1033108) (= (regTwo!18848 lt!1033111) lt!1033105)) (= lambda!110147 lambda!110138))))

(declare-fun bs!526161 () Bool)

(assert (= bs!526161 (and b!2956847 b!2956648)))

(assert (=> bs!526161 (= (and (= (regOne!18848 lt!1033111) (regOne!18848 r!17423)) (= (regTwo!18848 lt!1033111) (regTwo!18848 r!17423))) (= lambda!110147 lambda!110130))))

(assert (=> bs!526160 (not (= lambda!110147 lambda!110136))))

(declare-fun bs!526162 () Bool)

(assert (= bs!526162 (and b!2956847 b!2956650)))

(assert (=> bs!526162 (not (= lambda!110147 lambda!110129))))

(declare-fun bs!526163 () Bool)

(assert (= bs!526163 (and b!2956847 b!2956543)))

(assert (=> bs!526163 (not (= lambda!110147 lambda!110115))))

(declare-fun bs!526164 () Bool)

(assert (= bs!526164 (and b!2956847 d!841676)))

(assert (=> bs!526164 (not (= lambda!110147 lambda!110144))))

(assert (=> bs!526163 (= (and (= (regOne!18848 lt!1033111) lt!1033108) (= (regTwo!18848 lt!1033111) lt!1033105)) (= lambda!110147 lambda!110116))))

(declare-fun bs!526165 () Bool)

(assert (= bs!526165 (and b!2956847 b!2956849)))

(assert (=> bs!526165 (not (= lambda!110147 lambda!110146))))

(assert (=> b!2956847 true))

(assert (=> b!2956847 true))

(declare-fun c!484415 () Bool)

(declare-fun bm!195842 () Bool)

(declare-fun call!195848 () Bool)

(assert (=> bm!195842 (= call!195848 (Exists!1500 (ite c!484415 lambda!110146 lambda!110147)))))

(declare-fun b!2956843 () Bool)

(declare-fun e!1861707 () Bool)

(declare-fun e!1861705 () Bool)

(assert (=> b!2956843 (= e!1861707 e!1861705)))

(assert (=> b!2956843 (= c!484415 (is-Star!9168 lt!1033111))))

(declare-fun d!841688 () Bool)

(declare-fun c!484416 () Bool)

(assert (=> d!841688 (= c!484416 (is-EmptyExpr!9168 lt!1033111))))

(declare-fun e!1861708 () Bool)

(assert (=> d!841688 (= (matchRSpec!1305 lt!1033111 s!11993) e!1861708)))

(declare-fun b!2956844 () Bool)

(declare-fun e!1861706 () Bool)

(assert (=> b!2956844 (= e!1861707 e!1861706)))

(declare-fun res!1220003 () Bool)

(assert (=> b!2956844 (= res!1220003 (matchRSpec!1305 (regOne!18849 lt!1033111) s!11993))))

(assert (=> b!2956844 (=> res!1220003 e!1861706)))

(declare-fun b!2956845 () Bool)

(declare-fun c!484418 () Bool)

(assert (=> b!2956845 (= c!484418 (is-ElementMatch!9168 lt!1033111))))

(declare-fun e!1861702 () Bool)

(declare-fun e!1861703 () Bool)

(assert (=> b!2956845 (= e!1861702 e!1861703)))

(declare-fun b!2956846 () Bool)

(declare-fun res!1220002 () Bool)

(declare-fun e!1861704 () Bool)

(assert (=> b!2956846 (=> res!1220002 e!1861704)))

(declare-fun call!195847 () Bool)

(assert (=> b!2956846 (= res!1220002 call!195847)))

(assert (=> b!2956846 (= e!1861705 e!1861704)))

(assert (=> b!2956847 (= e!1861705 call!195848)))

(declare-fun b!2956848 () Bool)

(assert (=> b!2956848 (= e!1861708 e!1861702)))

(declare-fun res!1220004 () Bool)

(assert (=> b!2956848 (= res!1220004 (not (is-EmptyLang!9168 lt!1033111)))))

(assert (=> b!2956848 (=> (not res!1220004) (not e!1861702))))

(assert (=> b!2956849 (= e!1861704 call!195848)))

(declare-fun b!2956850 () Bool)

(assert (=> b!2956850 (= e!1861706 (matchRSpec!1305 (regTwo!18849 lt!1033111) s!11993))))

(declare-fun bm!195843 () Bool)

(assert (=> bm!195843 (= call!195847 (isEmpty!19187 s!11993))))

(declare-fun b!2956851 () Bool)

(assert (=> b!2956851 (= e!1861703 (= s!11993 (Cons!34909 (c!484362 lt!1033111) Nil!34909)))))

(declare-fun b!2956852 () Bool)

(assert (=> b!2956852 (= e!1861708 call!195847)))

(declare-fun b!2956853 () Bool)

(declare-fun c!484417 () Bool)

(assert (=> b!2956853 (= c!484417 (is-Union!9168 lt!1033111))))

(assert (=> b!2956853 (= e!1861703 e!1861707)))

(assert (= (and d!841688 c!484416) b!2956852))

(assert (= (and d!841688 (not c!484416)) b!2956848))

(assert (= (and b!2956848 res!1220004) b!2956845))

(assert (= (and b!2956845 c!484418) b!2956851))

(assert (= (and b!2956845 (not c!484418)) b!2956853))

(assert (= (and b!2956853 c!484417) b!2956844))

(assert (= (and b!2956853 (not c!484417)) b!2956843))

(assert (= (and b!2956844 (not res!1220003)) b!2956850))

(assert (= (and b!2956843 c!484415) b!2956846))

(assert (= (and b!2956843 (not c!484415)) b!2956847))

(assert (= (and b!2956846 (not res!1220002)) b!2956849))

(assert (= (or b!2956849 b!2956847) bm!195842))

(assert (= (or b!2956852 b!2956846) bm!195843))

(declare-fun m!3332381 () Bool)

(assert (=> bm!195842 m!3332381))

(declare-fun m!3332383 () Bool)

(assert (=> b!2956844 m!3332383))

(declare-fun m!3332385 () Bool)

(assert (=> b!2956850 m!3332385))

(assert (=> bm!195843 m!3332213))

(assert (=> b!2956543 d!841688))

(declare-fun d!841690 () Bool)

(assert (=> d!841690 (= (isEmptyLang!290 lt!1033108) (is-EmptyLang!9168 lt!1033108))))

(assert (=> b!2956549 d!841690))

(declare-fun b!2956931 () Bool)

(declare-fun e!1861754 () Regex!9168)

(declare-fun lt!1033183 () Regex!9168)

(assert (=> b!2956931 (= e!1861754 lt!1033183)))

(declare-fun b!2956932 () Bool)

(declare-fun c!484449 () Bool)

(declare-fun e!1861765 () Bool)

(assert (=> b!2956932 (= c!484449 e!1861765)))

(declare-fun res!1220026 () Bool)

(assert (=> b!2956932 (=> res!1220026 e!1861765)))

(declare-fun call!195871 () Bool)

(assert (=> b!2956932 (= res!1220026 call!195871)))

(declare-fun lt!1033184 () Regex!9168)

(declare-fun call!195874 () Regex!9168)

(assert (=> b!2956932 (= lt!1033184 call!195874)))

(declare-fun e!1861763 () Regex!9168)

(declare-fun e!1861753 () Regex!9168)

(assert (=> b!2956932 (= e!1861763 e!1861753)))

(declare-fun b!2956933 () Bool)

(declare-fun e!1861764 () Regex!9168)

(declare-fun lt!1033182 () Regex!9168)

(assert (=> b!2956933 (= e!1861764 lt!1033182)))

(declare-fun b!2956934 () Bool)

(declare-fun e!1861758 () Regex!9168)

(declare-fun lt!1033185 () Regex!9168)

(assert (=> b!2956934 (= e!1861758 lt!1033185)))

(declare-fun b!2956935 () Bool)

(declare-fun e!1861757 () Bool)

(declare-fun lt!1033181 () Regex!9168)

(assert (=> b!2956935 (= e!1861757 (= (nullable!2924 lt!1033181) (nullable!2924 (regTwo!18848 r!17423))))))

(declare-fun b!2956936 () Bool)

(declare-fun e!1861756 () Regex!9168)

(declare-fun e!1861761 () Regex!9168)

(assert (=> b!2956936 (= e!1861756 e!1861761)))

(declare-fun c!484457 () Bool)

(assert (=> b!2956936 (= c!484457 (is-ElementMatch!9168 (regTwo!18848 r!17423)))))

(declare-fun b!2956937 () Bool)

(assert (=> b!2956937 (= e!1861761 (regTwo!18848 r!17423))))

(declare-fun b!2956938 () Bool)

(declare-fun e!1861762 () Regex!9168)

(assert (=> b!2956938 (= e!1861762 e!1861754)))

(declare-fun call!195873 () Regex!9168)

(assert (=> b!2956938 (= lt!1033185 call!195873)))

(declare-fun call!195869 () Regex!9168)

(assert (=> b!2956938 (= lt!1033183 call!195869)))

(declare-fun c!484452 () Bool)

(declare-fun call!195872 () Bool)

(assert (=> b!2956938 (= c!484452 call!195872)))

(declare-fun b!2956939 () Bool)

(assert (=> b!2956939 (= e!1861758 (Union!9168 lt!1033185 lt!1033183))))

(declare-fun bm!195864 () Bool)

(assert (=> bm!195864 (= call!195869 call!195874)))

(declare-fun b!2956940 () Bool)

(declare-fun e!1861760 () Regex!9168)

(assert (=> b!2956940 (= e!1861762 e!1861760)))

(declare-fun lt!1033186 () Regex!9168)

(assert (=> b!2956940 (= lt!1033186 call!195869)))

(assert (=> b!2956940 (= lt!1033182 call!195873)))

(declare-fun res!1220028 () Bool)

(assert (=> b!2956940 (= res!1220028 call!195872)))

(declare-fun e!1861755 () Bool)

(assert (=> b!2956940 (=> res!1220028 e!1861755)))

(declare-fun c!484450 () Bool)

(assert (=> b!2956940 (= c!484450 e!1861755)))

(declare-fun bm!195865 () Bool)

(declare-fun c!484448 () Bool)

(assert (=> bm!195865 (= call!195873 (simplify!173 (ite c!484448 (regOne!18849 (regTwo!18848 r!17423)) (regTwo!18848 (regTwo!18848 r!17423)))))))

(declare-fun bm!195866 () Bool)

(declare-fun c!484447 () Bool)

(assert (=> bm!195866 (= call!195874 (simplify!173 (ite c!484447 (reg!9497 (regTwo!18848 r!17423)) (ite c!484448 (regTwo!18849 (regTwo!18848 r!17423)) (regOne!18848 (regTwo!18848 r!17423))))))))

(declare-fun b!2956941 () Bool)

(declare-fun e!1861759 () Regex!9168)

(assert (=> b!2956941 (= e!1861764 e!1861759)))

(declare-fun c!484453 () Bool)

(declare-fun call!195870 () Bool)

(assert (=> b!2956941 (= c!484453 call!195870)))

(declare-fun b!2956942 () Bool)

(assert (=> b!2956942 (= e!1861756 EmptyLang!9168)))

(declare-fun b!2956943 () Bool)

(declare-fun e!1861752 () Regex!9168)

(assert (=> b!2956943 (= e!1861752 EmptyExpr!9168)))

(declare-fun bm!195867 () Bool)

(assert (=> bm!195867 (= call!195871 (isEmptyLang!290 (ite c!484447 lt!1033184 (ite c!484448 lt!1033183 lt!1033182))))))

(declare-fun b!2956944 () Bool)

(declare-fun c!484456 () Bool)

(assert (=> b!2956944 (= c!484456 (is-EmptyExpr!9168 (regTwo!18848 r!17423)))))

(assert (=> b!2956944 (= e!1861761 e!1861752)))

(declare-fun b!2956945 () Bool)

(assert (=> b!2956945 (= e!1861760 EmptyLang!9168)))

(declare-fun b!2956946 () Bool)

(declare-fun c!484451 () Bool)

(declare-fun call!195875 () Bool)

(assert (=> b!2956946 (= c!484451 call!195875)))

(assert (=> b!2956946 (= e!1861754 e!1861758)))

(declare-fun b!2956947 () Bool)

(assert (=> b!2956947 (= e!1861759 lt!1033186)))

(declare-fun b!2956948 () Bool)

(assert (=> b!2956948 (= e!1861765 call!195870)))

(declare-fun b!2956949 () Bool)

(assert (=> b!2956949 (= e!1861759 (Concat!14489 lt!1033186 lt!1033182))))

(declare-fun b!2956950 () Bool)

(assert (=> b!2956950 (= e!1861753 (Star!9168 lt!1033184))))

(declare-fun b!2956951 () Bool)

(assert (=> b!2956951 (= e!1861753 EmptyExpr!9168)))

(declare-fun d!841692 () Bool)

(assert (=> d!841692 e!1861757))

(declare-fun res!1220027 () Bool)

(assert (=> d!841692 (=> (not res!1220027) (not e!1861757))))

(assert (=> d!841692 (= res!1220027 (validRegex!3901 lt!1033181))))

(assert (=> d!841692 (= lt!1033181 e!1861756)))

(declare-fun c!484454 () Bool)

(assert (=> d!841692 (= c!484454 (is-EmptyLang!9168 (regTwo!18848 r!17423)))))

(assert (=> d!841692 (validRegex!3901 (regTwo!18848 r!17423))))

(assert (=> d!841692 (= (simplify!173 (regTwo!18848 r!17423)) lt!1033181)))

(declare-fun bm!195868 () Bool)

(assert (=> bm!195868 (= call!195872 (isEmptyLang!290 (ite c!484448 lt!1033185 lt!1033186)))))

(declare-fun b!2956952 () Bool)

(declare-fun c!484455 () Bool)

(assert (=> b!2956952 (= c!484455 (isEmptyExpr!371 lt!1033186))))

(assert (=> b!2956952 (= e!1861760 e!1861764)))

(declare-fun bm!195869 () Bool)

(assert (=> bm!195869 (= call!195870 (isEmptyExpr!371 (ite c!484447 lt!1033184 lt!1033182)))))

(declare-fun b!2956953 () Bool)

(assert (=> b!2956953 (= e!1861755 call!195875)))

(declare-fun b!2956954 () Bool)

(assert (=> b!2956954 (= e!1861752 e!1861763)))

(assert (=> b!2956954 (= c!484447 (is-Star!9168 (regTwo!18848 r!17423)))))

(declare-fun bm!195870 () Bool)

(assert (=> bm!195870 (= call!195875 call!195871)))

(declare-fun b!2956955 () Bool)

(assert (=> b!2956955 (= c!484448 (is-Union!9168 (regTwo!18848 r!17423)))))

(assert (=> b!2956955 (= e!1861763 e!1861762)))

(assert (= (and d!841692 c!484454) b!2956942))

(assert (= (and d!841692 (not c!484454)) b!2956936))

(assert (= (and b!2956936 c!484457) b!2956937))

(assert (= (and b!2956936 (not c!484457)) b!2956944))

(assert (= (and b!2956944 c!484456) b!2956943))

(assert (= (and b!2956944 (not c!484456)) b!2956954))

(assert (= (and b!2956954 c!484447) b!2956932))

(assert (= (and b!2956954 (not c!484447)) b!2956955))

(assert (= (and b!2956932 (not res!1220026)) b!2956948))

(assert (= (and b!2956932 c!484449) b!2956951))

(assert (= (and b!2956932 (not c!484449)) b!2956950))

(assert (= (and b!2956955 c!484448) b!2956938))

(assert (= (and b!2956955 (not c!484448)) b!2956940))

(assert (= (and b!2956938 c!484452) b!2956931))

(assert (= (and b!2956938 (not c!484452)) b!2956946))

(assert (= (and b!2956946 c!484451) b!2956934))

(assert (= (and b!2956946 (not c!484451)) b!2956939))

(assert (= (and b!2956940 (not res!1220028)) b!2956953))

(assert (= (and b!2956940 c!484450) b!2956945))

(assert (= (and b!2956940 (not c!484450)) b!2956952))

(assert (= (and b!2956952 c!484455) b!2956933))

(assert (= (and b!2956952 (not c!484455)) b!2956941))

(assert (= (and b!2956941 c!484453) b!2956947))

(assert (= (and b!2956941 (not c!484453)) b!2956949))

(assert (= (or b!2956938 b!2956940) bm!195865))

(assert (= (or b!2956938 b!2956940) bm!195864))

(assert (= (or b!2956946 b!2956953) bm!195870))

(assert (= (or b!2956938 b!2956940) bm!195868))

(assert (= (or b!2956948 b!2956941) bm!195869))

(assert (= (or b!2956932 bm!195864) bm!195866))

(assert (= (or b!2956932 bm!195870) bm!195867))

(assert (= (and d!841692 res!1220027) b!2956935))

(declare-fun m!3332387 () Bool)

(assert (=> bm!195869 m!3332387))

(declare-fun m!3332389 () Bool)

(assert (=> bm!195865 m!3332389))

(declare-fun m!3332391 () Bool)

(assert (=> b!2956952 m!3332391))

(declare-fun m!3332393 () Bool)

(assert (=> d!841692 m!3332393))

(declare-fun m!3332395 () Bool)

(assert (=> d!841692 m!3332395))

(declare-fun m!3332397 () Bool)

(assert (=> bm!195867 m!3332397))

(declare-fun m!3332399 () Bool)

(assert (=> b!2956935 m!3332399))

(declare-fun m!3332401 () Bool)

(assert (=> b!2956935 m!3332401))

(declare-fun m!3332403 () Bool)

(assert (=> bm!195866 m!3332403))

(declare-fun m!3332405 () Bool)

(assert (=> bm!195868 m!3332405))

(assert (=> b!2956549 d!841692))

(declare-fun b!2956956 () Bool)

(declare-fun e!1861768 () Regex!9168)

(declare-fun lt!1033189 () Regex!9168)

(assert (=> b!2956956 (= e!1861768 lt!1033189)))

(declare-fun b!2956957 () Bool)

(declare-fun c!484460 () Bool)

(declare-fun e!1861779 () Bool)

(assert (=> b!2956957 (= c!484460 e!1861779)))

(declare-fun res!1220029 () Bool)

(assert (=> b!2956957 (=> res!1220029 e!1861779)))

(declare-fun call!195878 () Bool)

(assert (=> b!2956957 (= res!1220029 call!195878)))

(declare-fun lt!1033190 () Regex!9168)

(declare-fun call!195881 () Regex!9168)

(assert (=> b!2956957 (= lt!1033190 call!195881)))

(declare-fun e!1861777 () Regex!9168)

(declare-fun e!1861767 () Regex!9168)

(assert (=> b!2956957 (= e!1861777 e!1861767)))

(declare-fun b!2956958 () Bool)

(declare-fun e!1861778 () Regex!9168)

(declare-fun lt!1033188 () Regex!9168)

(assert (=> b!2956958 (= e!1861778 lt!1033188)))

(declare-fun b!2956959 () Bool)

(declare-fun e!1861772 () Regex!9168)

(declare-fun lt!1033191 () Regex!9168)

(assert (=> b!2956959 (= e!1861772 lt!1033191)))

(declare-fun b!2956960 () Bool)

(declare-fun e!1861771 () Bool)

(declare-fun lt!1033187 () Regex!9168)

(assert (=> b!2956960 (= e!1861771 (= (nullable!2924 lt!1033187) (nullable!2924 (regOne!18848 r!17423))))))

(declare-fun b!2956961 () Bool)

(declare-fun e!1861770 () Regex!9168)

(declare-fun e!1861775 () Regex!9168)

(assert (=> b!2956961 (= e!1861770 e!1861775)))

(declare-fun c!484468 () Bool)

(assert (=> b!2956961 (= c!484468 (is-ElementMatch!9168 (regOne!18848 r!17423)))))

(declare-fun b!2956962 () Bool)

(assert (=> b!2956962 (= e!1861775 (regOne!18848 r!17423))))

(declare-fun b!2956963 () Bool)

(declare-fun e!1861776 () Regex!9168)

(assert (=> b!2956963 (= e!1861776 e!1861768)))

(declare-fun call!195880 () Regex!9168)

(assert (=> b!2956963 (= lt!1033191 call!195880)))

(declare-fun call!195876 () Regex!9168)

(assert (=> b!2956963 (= lt!1033189 call!195876)))

(declare-fun c!484463 () Bool)

(declare-fun call!195879 () Bool)

(assert (=> b!2956963 (= c!484463 call!195879)))

(declare-fun b!2956964 () Bool)

(assert (=> b!2956964 (= e!1861772 (Union!9168 lt!1033191 lt!1033189))))

(declare-fun bm!195871 () Bool)

(assert (=> bm!195871 (= call!195876 call!195881)))

(declare-fun b!2956965 () Bool)

(declare-fun e!1861774 () Regex!9168)

(assert (=> b!2956965 (= e!1861776 e!1861774)))

(declare-fun lt!1033192 () Regex!9168)

(assert (=> b!2956965 (= lt!1033192 call!195876)))

(assert (=> b!2956965 (= lt!1033188 call!195880)))

(declare-fun res!1220031 () Bool)

(assert (=> b!2956965 (= res!1220031 call!195879)))

(declare-fun e!1861769 () Bool)

(assert (=> b!2956965 (=> res!1220031 e!1861769)))

(declare-fun c!484461 () Bool)

(assert (=> b!2956965 (= c!484461 e!1861769)))

(declare-fun bm!195872 () Bool)

(declare-fun c!484459 () Bool)

(assert (=> bm!195872 (= call!195880 (simplify!173 (ite c!484459 (regOne!18849 (regOne!18848 r!17423)) (regTwo!18848 (regOne!18848 r!17423)))))))

(declare-fun bm!195873 () Bool)

(declare-fun c!484458 () Bool)

(assert (=> bm!195873 (= call!195881 (simplify!173 (ite c!484458 (reg!9497 (regOne!18848 r!17423)) (ite c!484459 (regTwo!18849 (regOne!18848 r!17423)) (regOne!18848 (regOne!18848 r!17423))))))))

(declare-fun b!2956966 () Bool)

(declare-fun e!1861773 () Regex!9168)

(assert (=> b!2956966 (= e!1861778 e!1861773)))

(declare-fun c!484464 () Bool)

(declare-fun call!195877 () Bool)

(assert (=> b!2956966 (= c!484464 call!195877)))

(declare-fun b!2956967 () Bool)

(assert (=> b!2956967 (= e!1861770 EmptyLang!9168)))

(declare-fun b!2956968 () Bool)

(declare-fun e!1861766 () Regex!9168)

(assert (=> b!2956968 (= e!1861766 EmptyExpr!9168)))

(declare-fun bm!195874 () Bool)

(assert (=> bm!195874 (= call!195878 (isEmptyLang!290 (ite c!484458 lt!1033190 (ite c!484459 lt!1033189 lt!1033188))))))

(declare-fun b!2956969 () Bool)

(declare-fun c!484467 () Bool)

(assert (=> b!2956969 (= c!484467 (is-EmptyExpr!9168 (regOne!18848 r!17423)))))

(assert (=> b!2956969 (= e!1861775 e!1861766)))

(declare-fun b!2956970 () Bool)

(assert (=> b!2956970 (= e!1861774 EmptyLang!9168)))

(declare-fun b!2956971 () Bool)

(declare-fun c!484462 () Bool)

(declare-fun call!195882 () Bool)

(assert (=> b!2956971 (= c!484462 call!195882)))

(assert (=> b!2956971 (= e!1861768 e!1861772)))

(declare-fun b!2956972 () Bool)

(assert (=> b!2956972 (= e!1861773 lt!1033192)))

(declare-fun b!2956973 () Bool)

(assert (=> b!2956973 (= e!1861779 call!195877)))

(declare-fun b!2956974 () Bool)

(assert (=> b!2956974 (= e!1861773 (Concat!14489 lt!1033192 lt!1033188))))

(declare-fun b!2956975 () Bool)

(assert (=> b!2956975 (= e!1861767 (Star!9168 lt!1033190))))

(declare-fun b!2956976 () Bool)

(assert (=> b!2956976 (= e!1861767 EmptyExpr!9168)))

(declare-fun d!841694 () Bool)

(assert (=> d!841694 e!1861771))

(declare-fun res!1220030 () Bool)

(assert (=> d!841694 (=> (not res!1220030) (not e!1861771))))

(assert (=> d!841694 (= res!1220030 (validRegex!3901 lt!1033187))))

(assert (=> d!841694 (= lt!1033187 e!1861770)))

(declare-fun c!484465 () Bool)

(assert (=> d!841694 (= c!484465 (is-EmptyLang!9168 (regOne!18848 r!17423)))))

(assert (=> d!841694 (validRegex!3901 (regOne!18848 r!17423))))

(assert (=> d!841694 (= (simplify!173 (regOne!18848 r!17423)) lt!1033187)))

(declare-fun bm!195875 () Bool)

(assert (=> bm!195875 (= call!195879 (isEmptyLang!290 (ite c!484459 lt!1033191 lt!1033192)))))

(declare-fun b!2956977 () Bool)

(declare-fun c!484466 () Bool)

(assert (=> b!2956977 (= c!484466 (isEmptyExpr!371 lt!1033192))))

(assert (=> b!2956977 (= e!1861774 e!1861778)))

(declare-fun bm!195876 () Bool)

(assert (=> bm!195876 (= call!195877 (isEmptyExpr!371 (ite c!484458 lt!1033190 lt!1033188)))))

(declare-fun b!2956978 () Bool)

(assert (=> b!2956978 (= e!1861769 call!195882)))

(declare-fun b!2956979 () Bool)

(assert (=> b!2956979 (= e!1861766 e!1861777)))

(assert (=> b!2956979 (= c!484458 (is-Star!9168 (regOne!18848 r!17423)))))

(declare-fun bm!195877 () Bool)

(assert (=> bm!195877 (= call!195882 call!195878)))

(declare-fun b!2956980 () Bool)

(assert (=> b!2956980 (= c!484459 (is-Union!9168 (regOne!18848 r!17423)))))

(assert (=> b!2956980 (= e!1861777 e!1861776)))

(assert (= (and d!841694 c!484465) b!2956967))

(assert (= (and d!841694 (not c!484465)) b!2956961))

(assert (= (and b!2956961 c!484468) b!2956962))

(assert (= (and b!2956961 (not c!484468)) b!2956969))

(assert (= (and b!2956969 c!484467) b!2956968))

(assert (= (and b!2956969 (not c!484467)) b!2956979))

(assert (= (and b!2956979 c!484458) b!2956957))

(assert (= (and b!2956979 (not c!484458)) b!2956980))

(assert (= (and b!2956957 (not res!1220029)) b!2956973))

(assert (= (and b!2956957 c!484460) b!2956976))

(assert (= (and b!2956957 (not c!484460)) b!2956975))

(assert (= (and b!2956980 c!484459) b!2956963))

(assert (= (and b!2956980 (not c!484459)) b!2956965))

(assert (= (and b!2956963 c!484463) b!2956956))

(assert (= (and b!2956963 (not c!484463)) b!2956971))

(assert (= (and b!2956971 c!484462) b!2956959))

(assert (= (and b!2956971 (not c!484462)) b!2956964))

(assert (= (and b!2956965 (not res!1220031)) b!2956978))

(assert (= (and b!2956965 c!484461) b!2956970))

(assert (= (and b!2956965 (not c!484461)) b!2956977))

(assert (= (and b!2956977 c!484466) b!2956958))

(assert (= (and b!2956977 (not c!484466)) b!2956966))

(assert (= (and b!2956966 c!484464) b!2956972))

(assert (= (and b!2956966 (not c!484464)) b!2956974))

(assert (= (or b!2956963 b!2956965) bm!195872))

(assert (= (or b!2956963 b!2956965) bm!195871))

(assert (= (or b!2956971 b!2956978) bm!195877))

(assert (= (or b!2956963 b!2956965) bm!195875))

(assert (= (or b!2956973 b!2956966) bm!195876))

(assert (= (or b!2956957 bm!195871) bm!195873))

(assert (= (or b!2956957 bm!195877) bm!195874))

(assert (= (and d!841694 res!1220030) b!2956960))

(declare-fun m!3332407 () Bool)

(assert (=> bm!195876 m!3332407))

(declare-fun m!3332409 () Bool)

(assert (=> bm!195872 m!3332409))

(declare-fun m!3332411 () Bool)

(assert (=> b!2956977 m!3332411))

(declare-fun m!3332413 () Bool)

(assert (=> d!841694 m!3332413))

(declare-fun m!3332415 () Bool)

(assert (=> d!841694 m!3332415))

(declare-fun m!3332417 () Bool)

(assert (=> bm!195874 m!3332417))

(declare-fun m!3332419 () Bool)

(assert (=> b!2956960 m!3332419))

(declare-fun m!3332421 () Bool)

(assert (=> b!2956960 m!3332421))

(declare-fun m!3332423 () Bool)

(assert (=> bm!195873 m!3332423))

(declare-fun m!3332425 () Bool)

(assert (=> bm!195875 m!3332425))

(assert (=> b!2956549 d!841694))

(declare-fun b!2956981 () Bool)

(declare-fun e!1861785 () Bool)

(declare-fun e!1861786 () Bool)

(assert (=> b!2956981 (= e!1861785 e!1861786)))

(declare-fun c!484469 () Bool)

(assert (=> b!2956981 (= c!484469 (is-Union!9168 r!17423))))

(declare-fun b!2956982 () Bool)

(declare-fun e!1861780 () Bool)

(declare-fun call!195884 () Bool)

(assert (=> b!2956982 (= e!1861780 call!195884)))

(declare-fun bm!195878 () Bool)

(declare-fun call!195885 () Bool)

(declare-fun c!484470 () Bool)

(assert (=> bm!195878 (= call!195885 (validRegex!3901 (ite c!484470 (reg!9497 r!17423) (ite c!484469 (regOne!18849 r!17423) (regTwo!18848 r!17423)))))))

(declare-fun b!2956983 () Bool)

(declare-fun e!1861781 () Bool)

(assert (=> b!2956983 (= e!1861781 call!195885)))

(declare-fun b!2956984 () Bool)

(declare-fun e!1861782 () Bool)

(assert (=> b!2956984 (= e!1861782 e!1861780)))

(declare-fun res!1220034 () Bool)

(assert (=> b!2956984 (=> (not res!1220034) (not e!1861780))))

(declare-fun call!195883 () Bool)

(assert (=> b!2956984 (= res!1220034 call!195883)))

(declare-fun bm!195879 () Bool)

(assert (=> bm!195879 (= call!195883 (validRegex!3901 (ite c!484469 (regTwo!18849 r!17423) (regOne!18848 r!17423))))))

(declare-fun d!841696 () Bool)

(declare-fun res!1220032 () Bool)

(declare-fun e!1861783 () Bool)

(assert (=> d!841696 (=> res!1220032 e!1861783)))

(assert (=> d!841696 (= res!1220032 (is-ElementMatch!9168 r!17423))))

(assert (=> d!841696 (= (validRegex!3901 r!17423) e!1861783)))

(declare-fun b!2956985 () Bool)

(declare-fun res!1220033 () Bool)

(assert (=> b!2956985 (=> res!1220033 e!1861782)))

(assert (=> b!2956985 (= res!1220033 (not (is-Concat!14489 r!17423)))))

(assert (=> b!2956985 (= e!1861786 e!1861782)))

(declare-fun b!2956986 () Bool)

(assert (=> b!2956986 (= e!1861785 e!1861781)))

(declare-fun res!1220036 () Bool)

(assert (=> b!2956986 (= res!1220036 (not (nullable!2924 (reg!9497 r!17423))))))

(assert (=> b!2956986 (=> (not res!1220036) (not e!1861781))))

(declare-fun b!2956987 () Bool)

(declare-fun e!1861784 () Bool)

(assert (=> b!2956987 (= e!1861784 call!195883)))

(declare-fun b!2956988 () Bool)

(assert (=> b!2956988 (= e!1861783 e!1861785)))

(assert (=> b!2956988 (= c!484470 (is-Star!9168 r!17423))))

(declare-fun bm!195880 () Bool)

(assert (=> bm!195880 (= call!195884 call!195885)))

(declare-fun b!2956989 () Bool)

(declare-fun res!1220035 () Bool)

(assert (=> b!2956989 (=> (not res!1220035) (not e!1861784))))

(assert (=> b!2956989 (= res!1220035 call!195884)))

(assert (=> b!2956989 (= e!1861786 e!1861784)))

(assert (= (and d!841696 (not res!1220032)) b!2956988))

(assert (= (and b!2956988 c!484470) b!2956986))

(assert (= (and b!2956988 (not c!484470)) b!2956981))

(assert (= (and b!2956986 res!1220036) b!2956983))

(assert (= (and b!2956981 c!484469) b!2956989))

(assert (= (and b!2956981 (not c!484469)) b!2956985))

(assert (= (and b!2956989 res!1220035) b!2956987))

(assert (= (and b!2956985 (not res!1220033)) b!2956984))

(assert (= (and b!2956984 res!1220034) b!2956982))

(assert (= (or b!2956989 b!2956982) bm!195880))

(assert (= (or b!2956987 b!2956984) bm!195879))

(assert (= (or b!2956983 bm!195880) bm!195878))

(declare-fun m!3332427 () Bool)

(assert (=> bm!195878 m!3332427))

(declare-fun m!3332429 () Bool)

(assert (=> bm!195879 m!3332429))

(declare-fun m!3332431 () Bool)

(assert (=> b!2956986 m!3332431))

(assert (=> start!286614 d!841696))

(declare-fun d!841698 () Bool)

(assert (=> d!841698 (= (isEmpty!19187 s!11993) (is-Nil!34909 s!11993))))

(assert (=> b!2956544 d!841698))

(declare-fun b!2956994 () Bool)

(declare-fun e!1861789 () Bool)

(declare-fun tp!944092 () Bool)

(assert (=> b!2956994 (= e!1861789 (and tp_is_empty!15899 tp!944092))))

(assert (=> b!2956545 (= tp!944067 e!1861789)))

(assert (= (and b!2956545 (is-Cons!34909 (t!234098 s!11993))) b!2956994))

(declare-fun e!1861792 () Bool)

(assert (=> b!2956540 (= tp!944068 e!1861792)))

(declare-fun b!2957006 () Bool)

(declare-fun tp!944106 () Bool)

(declare-fun tp!944103 () Bool)

(assert (=> b!2957006 (= e!1861792 (and tp!944106 tp!944103))))

(declare-fun b!2957008 () Bool)

(declare-fun tp!944104 () Bool)

(declare-fun tp!944105 () Bool)

(assert (=> b!2957008 (= e!1861792 (and tp!944104 tp!944105))))

(declare-fun b!2957005 () Bool)

(assert (=> b!2957005 (= e!1861792 tp_is_empty!15899)))

(declare-fun b!2957007 () Bool)

(declare-fun tp!944107 () Bool)

(assert (=> b!2957007 (= e!1861792 tp!944107)))

(assert (= (and b!2956540 (is-ElementMatch!9168 (regOne!18848 r!17423))) b!2957005))

(assert (= (and b!2956540 (is-Concat!14489 (regOne!18848 r!17423))) b!2957006))

(assert (= (and b!2956540 (is-Star!9168 (regOne!18848 r!17423))) b!2957007))

(assert (= (and b!2956540 (is-Union!9168 (regOne!18848 r!17423))) b!2957008))

(declare-fun e!1861793 () Bool)

(assert (=> b!2956540 (= tp!944070 e!1861793)))

(declare-fun b!2957010 () Bool)

(declare-fun tp!944111 () Bool)

(declare-fun tp!944108 () Bool)

(assert (=> b!2957010 (= e!1861793 (and tp!944111 tp!944108))))

(declare-fun b!2957012 () Bool)

(declare-fun tp!944109 () Bool)

(declare-fun tp!944110 () Bool)

(assert (=> b!2957012 (= e!1861793 (and tp!944109 tp!944110))))

(declare-fun b!2957009 () Bool)

(assert (=> b!2957009 (= e!1861793 tp_is_empty!15899)))

(declare-fun b!2957011 () Bool)

(declare-fun tp!944112 () Bool)

(assert (=> b!2957011 (= e!1861793 tp!944112)))

(assert (= (and b!2956540 (is-ElementMatch!9168 (regTwo!18848 r!17423))) b!2957009))

(assert (= (and b!2956540 (is-Concat!14489 (regTwo!18848 r!17423))) b!2957010))

(assert (= (and b!2956540 (is-Star!9168 (regTwo!18848 r!17423))) b!2957011))

(assert (= (and b!2956540 (is-Union!9168 (regTwo!18848 r!17423))) b!2957012))

(declare-fun e!1861794 () Bool)

(assert (=> b!2956536 (= tp!944071 e!1861794)))

(declare-fun b!2957014 () Bool)

(declare-fun tp!944116 () Bool)

(declare-fun tp!944113 () Bool)

(assert (=> b!2957014 (= e!1861794 (and tp!944116 tp!944113))))

(declare-fun b!2957016 () Bool)

(declare-fun tp!944114 () Bool)

(declare-fun tp!944115 () Bool)

(assert (=> b!2957016 (= e!1861794 (and tp!944114 tp!944115))))

(declare-fun b!2957013 () Bool)

(assert (=> b!2957013 (= e!1861794 tp_is_empty!15899)))

(declare-fun b!2957015 () Bool)

(declare-fun tp!944117 () Bool)

(assert (=> b!2957015 (= e!1861794 tp!944117)))

(assert (= (and b!2956536 (is-ElementMatch!9168 (regOne!18849 r!17423))) b!2957013))

(assert (= (and b!2956536 (is-Concat!14489 (regOne!18849 r!17423))) b!2957014))

(assert (= (and b!2956536 (is-Star!9168 (regOne!18849 r!17423))) b!2957015))

(assert (= (and b!2956536 (is-Union!9168 (regOne!18849 r!17423))) b!2957016))

(declare-fun e!1861795 () Bool)

(assert (=> b!2956536 (= tp!944069 e!1861795)))

(declare-fun b!2957018 () Bool)

(declare-fun tp!944121 () Bool)

(declare-fun tp!944118 () Bool)

(assert (=> b!2957018 (= e!1861795 (and tp!944121 tp!944118))))

(declare-fun b!2957020 () Bool)

(declare-fun tp!944119 () Bool)

(declare-fun tp!944120 () Bool)

(assert (=> b!2957020 (= e!1861795 (and tp!944119 tp!944120))))

(declare-fun b!2957017 () Bool)

(assert (=> b!2957017 (= e!1861795 tp_is_empty!15899)))

(declare-fun b!2957019 () Bool)

(declare-fun tp!944122 () Bool)

(assert (=> b!2957019 (= e!1861795 tp!944122)))

(assert (= (and b!2956536 (is-ElementMatch!9168 (regTwo!18849 r!17423))) b!2957017))

(assert (= (and b!2956536 (is-Concat!14489 (regTwo!18849 r!17423))) b!2957018))

(assert (= (and b!2956536 (is-Star!9168 (regTwo!18849 r!17423))) b!2957019))

(assert (= (and b!2956536 (is-Union!9168 (regTwo!18849 r!17423))) b!2957020))

(declare-fun e!1861796 () Bool)

(assert (=> b!2956538 (= tp!944066 e!1861796)))

(declare-fun b!2957022 () Bool)

(declare-fun tp!944126 () Bool)

(declare-fun tp!944123 () Bool)

(assert (=> b!2957022 (= e!1861796 (and tp!944126 tp!944123))))

(declare-fun b!2957024 () Bool)

(declare-fun tp!944124 () Bool)

(declare-fun tp!944125 () Bool)

(assert (=> b!2957024 (= e!1861796 (and tp!944124 tp!944125))))

(declare-fun b!2957021 () Bool)

(assert (=> b!2957021 (= e!1861796 tp_is_empty!15899)))

(declare-fun b!2957023 () Bool)

(declare-fun tp!944127 () Bool)

(assert (=> b!2957023 (= e!1861796 tp!944127)))

(assert (= (and b!2956538 (is-ElementMatch!9168 (reg!9497 r!17423))) b!2957021))

(assert (= (and b!2956538 (is-Concat!14489 (reg!9497 r!17423))) b!2957022))

(assert (= (and b!2956538 (is-Star!9168 (reg!9497 r!17423))) b!2957023))

(assert (= (and b!2956538 (is-Union!9168 (reg!9497 r!17423))) b!2957024))

(push 1)

(assert (not bm!195875))

(assert (not bm!195843))

(assert (not bm!195830))

(assert (not bm!195869))

(assert (not b!2957011))

(assert (not bm!195873))

(assert (not d!841680))

(assert (not bm!195866))

(assert (not b!2957015))

(assert (not b!2956774))

(assert (not bm!195878))

(assert (not b!2957010))

(assert (not b!2956715))

(assert (not b!2956719))

(assert (not b!2957024))

(assert (not b!2956986))

(assert (not b!2957008))

(assert (not b!2956960))

(assert (not bm!195876))

(assert (not bm!195841))

(assert (not b!2956994))

(assert (not bm!195838))

(assert (not b!2956762))

(assert (not b!2956824))

(assert (not b!2957022))

(assert (not b!2956952))

(assert (not b!2956773))

(assert (not b!2957012))

(assert (not d!841678))

(assert (not b!2956825))

(assert (not b!2956850))

(assert (not b!2956645))

(assert (not bm!195867))

(assert (not bm!195865))

(assert (not d!841652))

(assert (not b!2956770))

(assert (not d!841668))

(assert tp_is_empty!15899)

(assert (not bm!195879))

(assert (not b!2956651))

(assert (not b!2957007))

(assert (not bm!195825))

(assert (not b!2956711))

(assert (not b!2956818))

(assert (not d!841694))

(assert (not b!2956844))

(assert (not b!2956821))

(assert (not b!2957023))

(assert (not b!2956820))

(assert (not bm!195868))

(assert (not bm!195874))

(assert (not d!841676))

(assert (not d!841686))

(assert (not b!2956977))

(assert (not bm!195842))

(assert (not b!2956826))

(assert (not d!841692))

(assert (not b!2957016))

(assert (not b!2957006))

(assert (not b!2956766))

(assert (not b!2956935))

(assert (not bm!195872))

(assert (not b!2956771))

(assert (not b!2957018))

(assert (not d!841654))

(assert (not b!2957019))

(assert (not b!2957014))

(assert (not b!2956721))

(assert (not d!841674))

(assert (not b!2957020))

(assert (not bm!195839))

(assert (not bm!195824))

(assert (not d!841670))

(assert (not b!2956718))

(assert (not b!2956776))

(assert (not d!841672))

(assert (not b!2956716))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

