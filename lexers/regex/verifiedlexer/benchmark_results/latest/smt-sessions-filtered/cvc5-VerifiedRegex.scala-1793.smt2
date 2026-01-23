; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!89376 () Bool)

(assert start!89376)

(declare-fun b!1026784 () Bool)

(assert (=> b!1026784 true))

(assert (=> b!1026784 true))

(declare-fun lambda!36670 () Int)

(declare-fun lambda!36669 () Int)

(assert (=> b!1026784 (not (= lambda!36670 lambda!36669))))

(assert (=> b!1026784 true))

(assert (=> b!1026784 true))

(declare-fun b!1026782 () Bool)

(declare-fun e!655034 () Bool)

(declare-fun tp_is_empty!5331 () Bool)

(declare-fun tp!311517 () Bool)

(assert (=> b!1026782 (= e!655034 (and tp_is_empty!5331 tp!311517))))

(declare-fun b!1026783 () Bool)

(declare-fun e!655032 () Bool)

(assert (=> b!1026783 (= e!655032 tp_is_empty!5331)))

(declare-fun e!655033 () Bool)

(declare-fun e!655030 () Bool)

(assert (=> b!1026784 (= e!655033 e!655030)))

(declare-fun res!461269 () Bool)

(assert (=> b!1026784 (=> res!461269 e!655030)))

(declare-datatypes ((C!6258 0))(
  ( (C!6259 (val!3377 Int)) )
))
(declare-datatypes ((List!10074 0))(
  ( (Nil!10058) (Cons!10058 (h!15459 C!6258) (t!101120 List!10074)) )
))
(declare-fun s!10566 () List!10074)

(declare-fun isEmpty!6425 (List!10074) Bool)

(assert (=> b!1026784 (= res!461269 (isEmpty!6425 s!10566))))

(declare-fun Exists!571 (Int) Bool)

(assert (=> b!1026784 (= (Exists!571 lambda!36669) (Exists!571 lambda!36670))))

(declare-datatypes ((Unit!15363 0))(
  ( (Unit!15364) )
))
(declare-fun lt!355280 () Unit!15363)

(declare-datatypes ((Regex!2844 0))(
  ( (ElementMatch!2844 (c!170263 C!6258)) (Concat!4677 (regOne!6200 Regex!2844) (regTwo!6200 Regex!2844)) (EmptyExpr!2844) (Star!2844 (reg!3173 Regex!2844)) (EmptyLang!2844) (Union!2844 (regOne!6201 Regex!2844) (regTwo!6201 Regex!2844)) )
))
(declare-fun r!15766 () Regex!2844)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!267 (Regex!2844 Regex!2844 List!10074) Unit!15363)

(assert (=> b!1026784 (= lt!355280 (lemmaExistCutMatchRandMatchRSpecEquivalent!267 (regOne!6200 r!15766) EmptyExpr!2844 s!10566))))

(declare-datatypes ((tuple2!11462 0))(
  ( (tuple2!11463 (_1!6557 List!10074) (_2!6557 List!10074)) )
))
(declare-datatypes ((Option!2373 0))(
  ( (None!2372) (Some!2372 (v!19789 tuple2!11462)) )
))
(declare-fun lt!355281 () Option!2373)

(declare-fun isDefined!2015 (Option!2373) Bool)

(assert (=> b!1026784 (= (isDefined!2015 lt!355281) (Exists!571 lambda!36669))))

(declare-fun findConcatSeparation!479 (Regex!2844 Regex!2844 List!10074 List!10074 List!10074) Option!2373)

(assert (=> b!1026784 (= lt!355281 (findConcatSeparation!479 (regOne!6200 r!15766) EmptyExpr!2844 Nil!10058 s!10566 s!10566))))

(declare-fun lt!355283 () Unit!15363)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!479 (Regex!2844 Regex!2844 List!10074) Unit!15363)

(assert (=> b!1026784 (= lt!355283 (lemmaFindConcatSeparationEquivalentToExists!479 (regOne!6200 r!15766) EmptyExpr!2844 s!10566))))

(declare-fun res!461270 () Bool)

(declare-fun e!655031 () Bool)

(assert (=> start!89376 (=> (not res!461270) (not e!655031))))

(declare-fun validRegex!1313 (Regex!2844) Bool)

(assert (=> start!89376 (= res!461270 (validRegex!1313 r!15766))))

(assert (=> start!89376 e!655031))

(assert (=> start!89376 e!655032))

(assert (=> start!89376 e!655034))

(declare-fun b!1026785 () Bool)

(declare-fun tp!311515 () Bool)

(declare-fun tp!311513 () Bool)

(assert (=> b!1026785 (= e!655032 (and tp!311515 tp!311513))))

(declare-fun b!1026786 () Bool)

(declare-fun tp!311516 () Bool)

(declare-fun tp!311514 () Bool)

(assert (=> b!1026786 (= e!655032 (and tp!311516 tp!311514))))

(declare-fun b!1026787 () Bool)

(assert (=> b!1026787 (= e!655031 (not e!655033))))

(declare-fun res!461272 () Bool)

(assert (=> b!1026787 (=> res!461272 e!655033)))

(declare-fun lt!355284 () Bool)

(assert (=> b!1026787 (= res!461272 (or lt!355284 (and (is-Concat!4677 r!15766) (is-EmptyExpr!2844 (regOne!6200 r!15766))) (not (is-Concat!4677 r!15766)) (not (is-EmptyExpr!2844 (regTwo!6200 r!15766)))))))

(declare-fun matchRSpec!643 (Regex!2844 List!10074) Bool)

(assert (=> b!1026787 (= lt!355284 (matchRSpec!643 r!15766 s!10566))))

(declare-fun matchR!1380 (Regex!2844 List!10074) Bool)

(assert (=> b!1026787 (= lt!355284 (matchR!1380 r!15766 s!10566))))

(declare-fun lt!355282 () Unit!15363)

(declare-fun mainMatchTheorem!643 (Regex!2844 List!10074) Unit!15363)

(assert (=> b!1026787 (= lt!355282 (mainMatchTheorem!643 r!15766 s!10566))))

(declare-fun b!1026788 () Bool)

(assert (=> b!1026788 (= e!655030 (validRegex!1313 (regOne!6200 r!15766)))))

(declare-fun b!1026789 () Bool)

(declare-fun res!461271 () Bool)

(assert (=> b!1026789 (=> res!461271 e!655030)))

(declare-fun isEmpty!6426 (Option!2373) Bool)

(assert (=> b!1026789 (= res!461271 (not (isEmpty!6426 lt!355281)))))

(declare-fun b!1026790 () Bool)

(declare-fun tp!311518 () Bool)

(assert (=> b!1026790 (= e!655032 tp!311518)))

(assert (= (and start!89376 res!461270) b!1026787))

(assert (= (and b!1026787 (not res!461272)) b!1026784))

(assert (= (and b!1026784 (not res!461269)) b!1026789))

(assert (= (and b!1026789 (not res!461271)) b!1026788))

(assert (= (and start!89376 (is-ElementMatch!2844 r!15766)) b!1026783))

(assert (= (and start!89376 (is-Concat!4677 r!15766)) b!1026786))

(assert (= (and start!89376 (is-Star!2844 r!15766)) b!1026790))

(assert (= (and start!89376 (is-Union!2844 r!15766)) b!1026785))

(assert (= (and start!89376 (is-Cons!10058 s!10566)) b!1026782))

(declare-fun m!1202693 () Bool)

(assert (=> b!1026788 m!1202693))

(declare-fun m!1202695 () Bool)

(assert (=> b!1026784 m!1202695))

(declare-fun m!1202697 () Bool)

(assert (=> b!1026784 m!1202697))

(declare-fun m!1202699 () Bool)

(assert (=> b!1026784 m!1202699))

(declare-fun m!1202701 () Bool)

(assert (=> b!1026784 m!1202701))

(assert (=> b!1026784 m!1202701))

(declare-fun m!1202703 () Bool)

(assert (=> b!1026784 m!1202703))

(declare-fun m!1202705 () Bool)

(assert (=> b!1026784 m!1202705))

(declare-fun m!1202707 () Bool)

(assert (=> b!1026784 m!1202707))

(declare-fun m!1202709 () Bool)

(assert (=> b!1026789 m!1202709))

(declare-fun m!1202711 () Bool)

(assert (=> start!89376 m!1202711))

(declare-fun m!1202713 () Bool)

(assert (=> b!1026787 m!1202713))

(declare-fun m!1202715 () Bool)

(assert (=> b!1026787 m!1202715))

(declare-fun m!1202717 () Bool)

(assert (=> b!1026787 m!1202717))

(push 1)

(assert (not b!1026787))

(assert (not b!1026789))

(assert (not b!1026786))

(assert tp_is_empty!5331)

(assert (not b!1026784))

(assert (not start!89376))

(assert (not b!1026782))

(assert (not b!1026790))

(assert (not b!1026785))

(assert (not b!1026788))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1026856 () Bool)

(declare-fun res!461310 () Bool)

(declare-fun e!655076 () Bool)

(assert (=> b!1026856 (=> res!461310 e!655076)))

(assert (=> b!1026856 (= res!461310 (not (is-Concat!4677 r!15766)))))

(declare-fun e!655073 () Bool)

(assert (=> b!1026856 (= e!655073 e!655076)))

(declare-fun b!1026857 () Bool)

(declare-fun e!655071 () Bool)

(declare-fun call!70576 () Bool)

(assert (=> b!1026857 (= e!655071 call!70576)))

(declare-fun bm!70569 () Bool)

(declare-fun call!70575 () Bool)

(declare-fun call!70574 () Bool)

(assert (=> bm!70569 (= call!70575 call!70574)))

(declare-fun b!1026858 () Bool)

(declare-fun e!655070 () Bool)

(assert (=> b!1026858 (= e!655070 call!70574)))

(declare-fun d!295154 () Bool)

(declare-fun res!461308 () Bool)

(declare-fun e!655075 () Bool)

(assert (=> d!295154 (=> res!461308 e!655075)))

(assert (=> d!295154 (= res!461308 (is-ElementMatch!2844 r!15766))))

(assert (=> d!295154 (= (validRegex!1313 r!15766) e!655075)))

(declare-fun b!1026859 () Bool)

(declare-fun res!461309 () Bool)

(declare-fun e!655072 () Bool)

(assert (=> b!1026859 (=> (not res!461309) (not e!655072))))

(assert (=> b!1026859 (= res!461309 call!70575)))

(assert (=> b!1026859 (= e!655073 e!655072)))

(declare-fun bm!70570 () Bool)

(declare-fun c!170270 () Bool)

(assert (=> bm!70570 (= call!70576 (validRegex!1313 (ite c!170270 (regTwo!6201 r!15766) (regTwo!6200 r!15766))))))

(declare-fun b!1026860 () Bool)

(assert (=> b!1026860 (= e!655076 e!655071)))

(declare-fun res!461307 () Bool)

(assert (=> b!1026860 (=> (not res!461307) (not e!655071))))

(assert (=> b!1026860 (= res!461307 call!70575)))

(declare-fun b!1026861 () Bool)

(assert (=> b!1026861 (= e!655072 call!70576)))

(declare-fun bm!70571 () Bool)

(declare-fun c!170269 () Bool)

(assert (=> bm!70571 (= call!70574 (validRegex!1313 (ite c!170269 (reg!3173 r!15766) (ite c!170270 (regOne!6201 r!15766) (regOne!6200 r!15766)))))))

(declare-fun b!1026862 () Bool)

(declare-fun e!655074 () Bool)

(assert (=> b!1026862 (= e!655074 e!655070)))

(declare-fun res!461311 () Bool)

(declare-fun nullable!941 (Regex!2844) Bool)

(assert (=> b!1026862 (= res!461311 (not (nullable!941 (reg!3173 r!15766))))))

(assert (=> b!1026862 (=> (not res!461311) (not e!655070))))

(declare-fun b!1026863 () Bool)

(assert (=> b!1026863 (= e!655074 e!655073)))

(assert (=> b!1026863 (= c!170270 (is-Union!2844 r!15766))))

(declare-fun b!1026864 () Bool)

(assert (=> b!1026864 (= e!655075 e!655074)))

(assert (=> b!1026864 (= c!170269 (is-Star!2844 r!15766))))

(assert (= (and d!295154 (not res!461308)) b!1026864))

(assert (= (and b!1026864 c!170269) b!1026862))

(assert (= (and b!1026864 (not c!170269)) b!1026863))

(assert (= (and b!1026862 res!461311) b!1026858))

(assert (= (and b!1026863 c!170270) b!1026859))

(assert (= (and b!1026863 (not c!170270)) b!1026856))

(assert (= (and b!1026859 res!461309) b!1026861))

(assert (= (and b!1026856 (not res!461310)) b!1026860))

(assert (= (and b!1026860 res!461307) b!1026857))

(assert (= (or b!1026861 b!1026857) bm!70570))

(assert (= (or b!1026859 b!1026860) bm!70569))

(assert (= (or b!1026858 bm!70569) bm!70571))

(declare-fun m!1202745 () Bool)

(assert (=> bm!70570 m!1202745))

(declare-fun m!1202747 () Bool)

(assert (=> bm!70571 m!1202747))

(declare-fun m!1202749 () Bool)

(assert (=> b!1026862 m!1202749))

(assert (=> start!89376 d!295154))

(declare-fun b!1026905 () Bool)

(declare-fun e!655101 () Bool)

(assert (=> b!1026905 (= e!655101 (matchR!1380 EmptyExpr!2844 s!10566))))

(declare-fun d!295158 () Bool)

(declare-fun e!655103 () Bool)

(assert (=> d!295158 e!655103))

(declare-fun res!461330 () Bool)

(assert (=> d!295158 (=> res!461330 e!655103)))

(declare-fun e!655105 () Bool)

(assert (=> d!295158 (= res!461330 e!655105)))

(declare-fun res!461328 () Bool)

(assert (=> d!295158 (=> (not res!461328) (not e!655105))))

(declare-fun lt!355308 () Option!2373)

(assert (=> d!295158 (= res!461328 (isDefined!2015 lt!355308))))

(declare-fun e!655102 () Option!2373)

(assert (=> d!295158 (= lt!355308 e!655102)))

(declare-fun c!170283 () Bool)

(assert (=> d!295158 (= c!170283 e!655101)))

(declare-fun res!461332 () Bool)

(assert (=> d!295158 (=> (not res!461332) (not e!655101))))

(assert (=> d!295158 (= res!461332 (matchR!1380 (regOne!6200 r!15766) Nil!10058))))

(assert (=> d!295158 (validRegex!1313 (regOne!6200 r!15766))))

(assert (=> d!295158 (= (findConcatSeparation!479 (regOne!6200 r!15766) EmptyExpr!2844 Nil!10058 s!10566 s!10566) lt!355308)))

(declare-fun b!1026906 () Bool)

(declare-fun res!461331 () Bool)

(assert (=> b!1026906 (=> (not res!461331) (not e!655105))))

(declare-fun get!3559 (Option!2373) tuple2!11462)

(assert (=> b!1026906 (= res!461331 (matchR!1380 (regOne!6200 r!15766) (_1!6557 (get!3559 lt!355308))))))

(declare-fun b!1026907 () Bool)

(declare-fun e!655104 () Option!2373)

(assert (=> b!1026907 (= e!655104 None!2372)))

(declare-fun b!1026908 () Bool)

(declare-fun ++!2755 (List!10074 List!10074) List!10074)

(assert (=> b!1026908 (= e!655105 (= (++!2755 (_1!6557 (get!3559 lt!355308)) (_2!6557 (get!3559 lt!355308))) s!10566))))

(declare-fun b!1026909 () Bool)

(assert (=> b!1026909 (= e!655103 (not (isDefined!2015 lt!355308)))))

(declare-fun b!1026910 () Bool)

(declare-fun res!461329 () Bool)

(assert (=> b!1026910 (=> (not res!461329) (not e!655105))))

(assert (=> b!1026910 (= res!461329 (matchR!1380 EmptyExpr!2844 (_2!6557 (get!3559 lt!355308))))))

(declare-fun b!1026911 () Bool)

(assert (=> b!1026911 (= e!655102 e!655104)))

(declare-fun c!170284 () Bool)

(assert (=> b!1026911 (= c!170284 (is-Nil!10058 s!10566))))

(declare-fun b!1026912 () Bool)

(declare-fun lt!355306 () Unit!15363)

(declare-fun lt!355307 () Unit!15363)

(assert (=> b!1026912 (= lt!355306 lt!355307)))

(assert (=> b!1026912 (= (++!2755 (++!2755 Nil!10058 (Cons!10058 (h!15459 s!10566) Nil!10058)) (t!101120 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!352 (List!10074 C!6258 List!10074 List!10074) Unit!15363)

(assert (=> b!1026912 (= lt!355307 (lemmaMoveElementToOtherListKeepsConcatEq!352 Nil!10058 (h!15459 s!10566) (t!101120 s!10566) s!10566))))

(assert (=> b!1026912 (= e!655104 (findConcatSeparation!479 (regOne!6200 r!15766) EmptyExpr!2844 (++!2755 Nil!10058 (Cons!10058 (h!15459 s!10566) Nil!10058)) (t!101120 s!10566) s!10566))))

(declare-fun b!1026913 () Bool)

(assert (=> b!1026913 (= e!655102 (Some!2372 (tuple2!11463 Nil!10058 s!10566)))))

(assert (= (and d!295158 res!461332) b!1026905))

(assert (= (and d!295158 c!170283) b!1026913))

(assert (= (and d!295158 (not c!170283)) b!1026911))

(assert (= (and b!1026911 c!170284) b!1026907))

(assert (= (and b!1026911 (not c!170284)) b!1026912))

(assert (= (and d!295158 res!461328) b!1026906))

(assert (= (and b!1026906 res!461331) b!1026910))

(assert (= (and b!1026910 res!461329) b!1026908))

(assert (= (and d!295158 (not res!461330)) b!1026909))

(declare-fun m!1202751 () Bool)

(assert (=> b!1026912 m!1202751))

(assert (=> b!1026912 m!1202751))

(declare-fun m!1202753 () Bool)

(assert (=> b!1026912 m!1202753))

(declare-fun m!1202755 () Bool)

(assert (=> b!1026912 m!1202755))

(assert (=> b!1026912 m!1202751))

(declare-fun m!1202757 () Bool)

(assert (=> b!1026912 m!1202757))

(declare-fun m!1202759 () Bool)

(assert (=> b!1026905 m!1202759))

(declare-fun m!1202761 () Bool)

(assert (=> d!295158 m!1202761))

(declare-fun m!1202763 () Bool)

(assert (=> d!295158 m!1202763))

(assert (=> d!295158 m!1202693))

(declare-fun m!1202765 () Bool)

(assert (=> b!1026910 m!1202765))

(declare-fun m!1202767 () Bool)

(assert (=> b!1026910 m!1202767))

(assert (=> b!1026906 m!1202765))

(declare-fun m!1202769 () Bool)

(assert (=> b!1026906 m!1202769))

(assert (=> b!1026908 m!1202765))

(declare-fun m!1202771 () Bool)

(assert (=> b!1026908 m!1202771))

(assert (=> b!1026909 m!1202761))

(assert (=> b!1026784 d!295158))

(declare-fun d!295160 () Bool)

(assert (=> d!295160 (= (isEmpty!6425 s!10566) (is-Nil!10058 s!10566))))

(assert (=> b!1026784 d!295160))

(declare-fun d!295162 () Bool)

(declare-fun choose!6522 (Int) Bool)

(assert (=> d!295162 (= (Exists!571 lambda!36669) (choose!6522 lambda!36669))))

(declare-fun bs!247066 () Bool)

(assert (= bs!247066 d!295162))

(declare-fun m!1202773 () Bool)

(assert (=> bs!247066 m!1202773))

(assert (=> b!1026784 d!295162))

(declare-fun bs!247067 () Bool)

(declare-fun d!295164 () Bool)

(assert (= bs!247067 (and d!295164 b!1026784)))

(declare-fun lambda!36685 () Int)

(assert (=> bs!247067 (= lambda!36685 lambda!36669)))

(assert (=> bs!247067 (not (= lambda!36685 lambda!36670))))

(assert (=> d!295164 true))

(assert (=> d!295164 true))

(assert (=> d!295164 true))

(assert (=> d!295164 (= (isDefined!2015 (findConcatSeparation!479 (regOne!6200 r!15766) EmptyExpr!2844 Nil!10058 s!10566 s!10566)) (Exists!571 lambda!36685))))

(declare-fun lt!355311 () Unit!15363)

(declare-fun choose!6523 (Regex!2844 Regex!2844 List!10074) Unit!15363)

(assert (=> d!295164 (= lt!355311 (choose!6523 (regOne!6200 r!15766) EmptyExpr!2844 s!10566))))

(assert (=> d!295164 (validRegex!1313 (regOne!6200 r!15766))))

(assert (=> d!295164 (= (lemmaFindConcatSeparationEquivalentToExists!479 (regOne!6200 r!15766) EmptyExpr!2844 s!10566) lt!355311)))

(declare-fun bs!247068 () Bool)

(assert (= bs!247068 d!295164))

(assert (=> bs!247068 m!1202703))

(declare-fun m!1202775 () Bool)

(assert (=> bs!247068 m!1202775))

(declare-fun m!1202777 () Bool)

(assert (=> bs!247068 m!1202777))

(assert (=> bs!247068 m!1202703))

(declare-fun m!1202779 () Bool)

(assert (=> bs!247068 m!1202779))

(assert (=> bs!247068 m!1202693))

(assert (=> b!1026784 d!295164))

(declare-fun d!295166 () Bool)

(assert (=> d!295166 (= (Exists!571 lambda!36670) (choose!6522 lambda!36670))))

(declare-fun bs!247069 () Bool)

(assert (= bs!247069 d!295166))

(declare-fun m!1202781 () Bool)

(assert (=> bs!247069 m!1202781))

(assert (=> b!1026784 d!295166))

(declare-fun d!295168 () Bool)

(assert (=> d!295168 (= (isDefined!2015 lt!355281) (not (isEmpty!6426 lt!355281)))))

(declare-fun bs!247070 () Bool)

(assert (= bs!247070 d!295168))

(assert (=> bs!247070 m!1202709))

(assert (=> b!1026784 d!295168))

(declare-fun bs!247072 () Bool)

(declare-fun d!295170 () Bool)

(assert (= bs!247072 (and d!295170 b!1026784)))

(declare-fun lambda!36691 () Int)

(assert (=> bs!247072 (= lambda!36691 lambda!36669)))

(assert (=> bs!247072 (not (= lambda!36691 lambda!36670))))

(declare-fun bs!247073 () Bool)

(assert (= bs!247073 (and d!295170 d!295164)))

(assert (=> bs!247073 (= lambda!36691 lambda!36685)))

(assert (=> d!295170 true))

(assert (=> d!295170 true))

(assert (=> d!295170 true))

(declare-fun lambda!36693 () Int)

(assert (=> bs!247072 (not (= lambda!36693 lambda!36669))))

(assert (=> bs!247072 (= lambda!36693 lambda!36670)))

(assert (=> bs!247073 (not (= lambda!36693 lambda!36685))))

(declare-fun bs!247076 () Bool)

(assert (= bs!247076 d!295170))

(assert (=> bs!247076 (not (= lambda!36693 lambda!36691))))

(assert (=> d!295170 true))

(assert (=> d!295170 true))

(assert (=> d!295170 true))

(assert (=> d!295170 (= (Exists!571 lambda!36691) (Exists!571 lambda!36693))))

(declare-fun lt!355314 () Unit!15363)

(declare-fun choose!6524 (Regex!2844 Regex!2844 List!10074) Unit!15363)

(assert (=> d!295170 (= lt!355314 (choose!6524 (regOne!6200 r!15766) EmptyExpr!2844 s!10566))))

(assert (=> d!295170 (validRegex!1313 (regOne!6200 r!15766))))

(assert (=> d!295170 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!267 (regOne!6200 r!15766) EmptyExpr!2844 s!10566) lt!355314)))

(declare-fun m!1202783 () Bool)

(assert (=> bs!247076 m!1202783))

(declare-fun m!1202785 () Bool)

(assert (=> bs!247076 m!1202785))

(declare-fun m!1202787 () Bool)

(assert (=> bs!247076 m!1202787))

(assert (=> bs!247076 m!1202693))

(assert (=> b!1026784 d!295170))

(declare-fun d!295172 () Bool)

(assert (=> d!295172 (= (isEmpty!6426 lt!355281) (not (is-Some!2372 lt!355281)))))

(assert (=> b!1026789 d!295172))

(declare-fun b!1026947 () Bool)

(declare-fun res!461361 () Bool)

(declare-fun e!655129 () Bool)

(assert (=> b!1026947 (=> res!461361 e!655129)))

(assert (=> b!1026947 (= res!461361 (not (is-Concat!4677 (regOne!6200 r!15766))))))

(declare-fun e!655126 () Bool)

(assert (=> b!1026947 (= e!655126 e!655129)))

(declare-fun b!1026948 () Bool)

(declare-fun e!655124 () Bool)

(declare-fun call!70585 () Bool)

(assert (=> b!1026948 (= e!655124 call!70585)))

(declare-fun bm!70578 () Bool)

(declare-fun call!70584 () Bool)

(declare-fun call!70583 () Bool)

(assert (=> bm!70578 (= call!70584 call!70583)))

(declare-fun b!1026949 () Bool)

(declare-fun e!655123 () Bool)

(assert (=> b!1026949 (= e!655123 call!70583)))

(declare-fun d!295174 () Bool)

(declare-fun res!461359 () Bool)

(declare-fun e!655128 () Bool)

(assert (=> d!295174 (=> res!461359 e!655128)))

(assert (=> d!295174 (= res!461359 (is-ElementMatch!2844 (regOne!6200 r!15766)))))

(assert (=> d!295174 (= (validRegex!1313 (regOne!6200 r!15766)) e!655128)))

(declare-fun b!1026950 () Bool)

(declare-fun res!461360 () Bool)

(declare-fun e!655125 () Bool)

(assert (=> b!1026950 (=> (not res!461360) (not e!655125))))

(assert (=> b!1026950 (= res!461360 call!70584)))

(assert (=> b!1026950 (= e!655126 e!655125)))

(declare-fun bm!70579 () Bool)

(declare-fun c!170290 () Bool)

(assert (=> bm!70579 (= call!70585 (validRegex!1313 (ite c!170290 (regTwo!6201 (regOne!6200 r!15766)) (regTwo!6200 (regOne!6200 r!15766)))))))

(declare-fun b!1026951 () Bool)

(assert (=> b!1026951 (= e!655129 e!655124)))

(declare-fun res!461358 () Bool)

(assert (=> b!1026951 (=> (not res!461358) (not e!655124))))

(assert (=> b!1026951 (= res!461358 call!70584)))

(declare-fun b!1026952 () Bool)

(assert (=> b!1026952 (= e!655125 call!70585)))

(declare-fun bm!70580 () Bool)

(declare-fun c!170289 () Bool)

(assert (=> bm!70580 (= call!70583 (validRegex!1313 (ite c!170289 (reg!3173 (regOne!6200 r!15766)) (ite c!170290 (regOne!6201 (regOne!6200 r!15766)) (regOne!6200 (regOne!6200 r!15766))))))))

(declare-fun b!1026953 () Bool)

(declare-fun e!655127 () Bool)

(assert (=> b!1026953 (= e!655127 e!655123)))

(declare-fun res!461362 () Bool)

(assert (=> b!1026953 (= res!461362 (not (nullable!941 (reg!3173 (regOne!6200 r!15766)))))))

(assert (=> b!1026953 (=> (not res!461362) (not e!655123))))

(declare-fun b!1026954 () Bool)

(assert (=> b!1026954 (= e!655127 e!655126)))

(assert (=> b!1026954 (= c!170290 (is-Union!2844 (regOne!6200 r!15766)))))

(declare-fun b!1026955 () Bool)

(assert (=> b!1026955 (= e!655128 e!655127)))

(assert (=> b!1026955 (= c!170289 (is-Star!2844 (regOne!6200 r!15766)))))

(assert (= (and d!295174 (not res!461359)) b!1026955))

(assert (= (and b!1026955 c!170289) b!1026953))

(assert (= (and b!1026955 (not c!170289)) b!1026954))

(assert (= (and b!1026953 res!461362) b!1026949))

(assert (= (and b!1026954 c!170290) b!1026950))

(assert (= (and b!1026954 (not c!170290)) b!1026947))

(assert (= (and b!1026950 res!461360) b!1026952))

(assert (= (and b!1026947 (not res!461361)) b!1026951))

(assert (= (and b!1026951 res!461358) b!1026948))

(assert (= (or b!1026952 b!1026948) bm!70579))

(assert (= (or b!1026950 b!1026951) bm!70578))

(assert (= (or b!1026949 bm!70578) bm!70580))

(declare-fun m!1202795 () Bool)

(assert (=> bm!70579 m!1202795))

(declare-fun m!1202797 () Bool)

(assert (=> bm!70580 m!1202797))

(declare-fun m!1202799 () Bool)

(assert (=> b!1026953 m!1202799))

(assert (=> b!1026788 d!295174))

(declare-fun bs!247077 () Bool)

(declare-fun b!1027019 () Bool)

(assert (= bs!247077 (and b!1027019 b!1026784)))

(declare-fun lambda!36698 () Int)

(assert (=> bs!247077 (not (= lambda!36698 lambda!36670))))

(assert (=> bs!247077 (not (= lambda!36698 lambda!36669))))

(declare-fun bs!247078 () Bool)

(assert (= bs!247078 (and b!1027019 d!295170)))

(assert (=> bs!247078 (not (= lambda!36698 lambda!36691))))

(assert (=> bs!247078 (not (= lambda!36698 lambda!36693))))

(declare-fun bs!247079 () Bool)

(assert (= bs!247079 (and b!1027019 d!295164)))

(assert (=> bs!247079 (not (= lambda!36698 lambda!36685))))

(assert (=> b!1027019 true))

(assert (=> b!1027019 true))

(declare-fun bs!247080 () Bool)

(declare-fun b!1027014 () Bool)

(assert (= bs!247080 (and b!1027014 b!1026784)))

(declare-fun lambda!36699 () Int)

(assert (=> bs!247080 (= (= (regTwo!6200 r!15766) EmptyExpr!2844) (= lambda!36699 lambda!36670))))

(assert (=> bs!247080 (not (= lambda!36699 lambda!36669))))

(declare-fun bs!247081 () Bool)

(assert (= bs!247081 (and b!1027014 d!295170)))

(assert (=> bs!247081 (not (= lambda!36699 lambda!36691))))

(assert (=> bs!247081 (= (= (regTwo!6200 r!15766) EmptyExpr!2844) (= lambda!36699 lambda!36693))))

(declare-fun bs!247082 () Bool)

(assert (= bs!247082 (and b!1027014 b!1027019)))

(assert (=> bs!247082 (not (= lambda!36699 lambda!36698))))

(declare-fun bs!247083 () Bool)

(assert (= bs!247083 (and b!1027014 d!295164)))

(assert (=> bs!247083 (not (= lambda!36699 lambda!36685))))

(assert (=> b!1027014 true))

(assert (=> b!1027014 true))

(declare-fun b!1027012 () Bool)

(declare-fun res!461391 () Bool)

(declare-fun e!655164 () Bool)

(assert (=> b!1027012 (=> res!461391 e!655164)))

(declare-fun call!70590 () Bool)

(assert (=> b!1027012 (= res!461391 call!70590)))

(declare-fun e!655160 () Bool)

(assert (=> b!1027012 (= e!655160 e!655164)))

(declare-fun b!1027013 () Bool)

(declare-fun e!655166 () Bool)

(assert (=> b!1027013 (= e!655166 (matchRSpec!643 (regTwo!6201 r!15766) s!10566))))

(declare-fun call!70591 () Bool)

(assert (=> b!1027014 (= e!655160 call!70591)))

(declare-fun bm!70585 () Bool)

(declare-fun c!170307 () Bool)

(assert (=> bm!70585 (= call!70591 (Exists!571 (ite c!170307 lambda!36698 lambda!36699)))))

(declare-fun b!1027015 () Bool)

(declare-fun e!655162 () Bool)

(assert (=> b!1027015 (= e!655162 (= s!10566 (Cons!10058 (c!170263 r!15766) Nil!10058)))))

(declare-fun b!1027016 () Bool)

(declare-fun e!655165 () Bool)

(assert (=> b!1027016 (= e!655165 call!70590)))

(declare-fun bm!70586 () Bool)

(assert (=> bm!70586 (= call!70590 (isEmpty!6425 s!10566))))

(declare-fun b!1027017 () Bool)

(declare-fun e!655163 () Bool)

(assert (=> b!1027017 (= e!655163 e!655160)))

(assert (=> b!1027017 (= c!170307 (is-Star!2844 r!15766))))

(declare-fun b!1027018 () Bool)

(assert (=> b!1027018 (= e!655163 e!655166)))

(declare-fun res!461392 () Bool)

(assert (=> b!1027018 (= res!461392 (matchRSpec!643 (regOne!6201 r!15766) s!10566))))

(assert (=> b!1027018 (=> res!461392 e!655166)))

(declare-fun d!295178 () Bool)

(declare-fun c!170308 () Bool)

(assert (=> d!295178 (= c!170308 (is-EmptyExpr!2844 r!15766))))

(assert (=> d!295178 (= (matchRSpec!643 r!15766 s!10566) e!655165)))

(assert (=> b!1027019 (= e!655164 call!70591)))

(declare-fun b!1027020 () Bool)

(declare-fun e!655161 () Bool)

(assert (=> b!1027020 (= e!655165 e!655161)))

(declare-fun res!461393 () Bool)

(assert (=> b!1027020 (= res!461393 (not (is-EmptyLang!2844 r!15766)))))

(assert (=> b!1027020 (=> (not res!461393) (not e!655161))))

(declare-fun b!1027021 () Bool)

(declare-fun c!170306 () Bool)

(assert (=> b!1027021 (= c!170306 (is-ElementMatch!2844 r!15766))))

(assert (=> b!1027021 (= e!655161 e!655162)))

(declare-fun b!1027022 () Bool)

(declare-fun c!170305 () Bool)

(assert (=> b!1027022 (= c!170305 (is-Union!2844 r!15766))))

(assert (=> b!1027022 (= e!655162 e!655163)))

(assert (= (and d!295178 c!170308) b!1027016))

(assert (= (and d!295178 (not c!170308)) b!1027020))

(assert (= (and b!1027020 res!461393) b!1027021))

(assert (= (and b!1027021 c!170306) b!1027015))

(assert (= (and b!1027021 (not c!170306)) b!1027022))

(assert (= (and b!1027022 c!170305) b!1027018))

(assert (= (and b!1027022 (not c!170305)) b!1027017))

(assert (= (and b!1027018 (not res!461392)) b!1027013))

(assert (= (and b!1027017 c!170307) b!1027012))

(assert (= (and b!1027017 (not c!170307)) b!1027014))

(assert (= (and b!1027012 (not res!461391)) b!1027019))

(assert (= (or b!1027019 b!1027014) bm!70585))

(assert (= (or b!1027016 b!1027012) bm!70586))

(declare-fun m!1202801 () Bool)

(assert (=> b!1027013 m!1202801))

(declare-fun m!1202803 () Bool)

(assert (=> bm!70585 m!1202803))

(assert (=> bm!70586 m!1202705))

(declare-fun m!1202805 () Bool)

(assert (=> b!1027018 m!1202805))

(assert (=> b!1026787 d!295178))

(declare-fun b!1027069 () Bool)

(declare-fun e!655195 () Bool)

(declare-fun head!1896 (List!10074) C!6258)

(assert (=> b!1027069 (= e!655195 (= (head!1896 s!10566) (c!170263 r!15766)))))

(declare-fun b!1027070 () Bool)

(declare-fun e!655193 () Bool)

(declare-fun lt!355320 () Bool)

(declare-fun call!70597 () Bool)

(assert (=> b!1027070 (= e!655193 (= lt!355320 call!70597))))

(declare-fun bm!70592 () Bool)

(assert (=> bm!70592 (= call!70597 (isEmpty!6425 s!10566))))

(declare-fun b!1027071 () Bool)

(declare-fun e!655192 () Bool)

(assert (=> b!1027071 (= e!655192 (not lt!355320))))

(declare-fun d!295180 () Bool)

(assert (=> d!295180 e!655193))

(declare-fun c!170320 () Bool)

(assert (=> d!295180 (= c!170320 (is-EmptyExpr!2844 r!15766))))

(declare-fun e!655194 () Bool)

(assert (=> d!295180 (= lt!355320 e!655194)))

(declare-fun c!170318 () Bool)

(assert (=> d!295180 (= c!170318 (isEmpty!6425 s!10566))))

(assert (=> d!295180 (validRegex!1313 r!15766)))

(assert (=> d!295180 (= (matchR!1380 r!15766 s!10566) lt!355320)))

(declare-fun b!1027072 () Bool)

(declare-fun res!461427 () Bool)

(declare-fun e!655191 () Bool)

(assert (=> b!1027072 (=> res!461427 e!655191)))

(assert (=> b!1027072 (= res!461427 (not (is-ElementMatch!2844 r!15766)))))

(assert (=> b!1027072 (= e!655192 e!655191)))

(declare-fun b!1027073 () Bool)

(declare-fun res!461424 () Bool)

(declare-fun e!655190 () Bool)

(assert (=> b!1027073 (=> res!461424 e!655190)))

(declare-fun tail!1458 (List!10074) List!10074)

(assert (=> b!1027073 (= res!461424 (not (isEmpty!6425 (tail!1458 s!10566))))))

(declare-fun b!1027074 () Bool)

(declare-fun derivativeStep!742 (Regex!2844 C!6258) Regex!2844)

(assert (=> b!1027074 (= e!655194 (matchR!1380 (derivativeStep!742 r!15766 (head!1896 s!10566)) (tail!1458 s!10566)))))

(declare-fun b!1027075 () Bool)

(assert (=> b!1027075 (= e!655193 e!655192)))

(declare-fun c!170319 () Bool)

(assert (=> b!1027075 (= c!170319 (is-EmptyLang!2844 r!15766))))

(declare-fun b!1027076 () Bool)

(declare-fun res!461428 () Bool)

(assert (=> b!1027076 (=> (not res!461428) (not e!655195))))

(assert (=> b!1027076 (= res!461428 (not call!70597))))

(declare-fun b!1027077 () Bool)

(declare-fun e!655196 () Bool)

(assert (=> b!1027077 (= e!655191 e!655196)))

(declare-fun res!461426 () Bool)

(assert (=> b!1027077 (=> (not res!461426) (not e!655196))))

(assert (=> b!1027077 (= res!461426 (not lt!355320))))

(declare-fun b!1027078 () Bool)

(declare-fun res!461425 () Bool)

(assert (=> b!1027078 (=> res!461425 e!655191)))

(assert (=> b!1027078 (= res!461425 e!655195)))

(declare-fun res!461429 () Bool)

(assert (=> b!1027078 (=> (not res!461429) (not e!655195))))

(assert (=> b!1027078 (= res!461429 lt!355320)))

(declare-fun b!1027079 () Bool)

(assert (=> b!1027079 (= e!655190 (not (= (head!1896 s!10566) (c!170263 r!15766))))))

(declare-fun b!1027080 () Bool)

(assert (=> b!1027080 (= e!655194 (nullable!941 r!15766))))

(declare-fun b!1027081 () Bool)

(assert (=> b!1027081 (= e!655196 e!655190)))

(declare-fun res!461422 () Bool)

(assert (=> b!1027081 (=> res!461422 e!655190)))

(assert (=> b!1027081 (= res!461422 call!70597)))

(declare-fun b!1027082 () Bool)

(declare-fun res!461423 () Bool)

(assert (=> b!1027082 (=> (not res!461423) (not e!655195))))

(assert (=> b!1027082 (= res!461423 (isEmpty!6425 (tail!1458 s!10566)))))

(assert (= (and d!295180 c!170318) b!1027080))

(assert (= (and d!295180 (not c!170318)) b!1027074))

(assert (= (and d!295180 c!170320) b!1027070))

(assert (= (and d!295180 (not c!170320)) b!1027075))

(assert (= (and b!1027075 c!170319) b!1027071))

(assert (= (and b!1027075 (not c!170319)) b!1027072))

(assert (= (and b!1027072 (not res!461427)) b!1027078))

(assert (= (and b!1027078 res!461429) b!1027076))

(assert (= (and b!1027076 res!461428) b!1027082))

(assert (= (and b!1027082 res!461423) b!1027069))

(assert (= (and b!1027078 (not res!461425)) b!1027077))

(assert (= (and b!1027077 res!461426) b!1027081))

(assert (= (and b!1027081 (not res!461422)) b!1027073))

(assert (= (and b!1027073 (not res!461424)) b!1027079))

(assert (= (or b!1027070 b!1027076 b!1027081) bm!70592))

(declare-fun m!1202819 () Bool)

(assert (=> b!1027082 m!1202819))

(assert (=> b!1027082 m!1202819))

(declare-fun m!1202821 () Bool)

(assert (=> b!1027082 m!1202821))

(assert (=> bm!70592 m!1202705))

(assert (=> b!1027073 m!1202819))

(assert (=> b!1027073 m!1202819))

(assert (=> b!1027073 m!1202821))

(declare-fun m!1202823 () Bool)

(assert (=> b!1027080 m!1202823))

(declare-fun m!1202825 () Bool)

(assert (=> b!1027069 m!1202825))

(assert (=> b!1027074 m!1202825))

(assert (=> b!1027074 m!1202825))

(declare-fun m!1202827 () Bool)

(assert (=> b!1027074 m!1202827))

(assert (=> b!1027074 m!1202819))

(assert (=> b!1027074 m!1202827))

(assert (=> b!1027074 m!1202819))

(declare-fun m!1202829 () Bool)

(assert (=> b!1027074 m!1202829))

(assert (=> d!295180 m!1202705))

(assert (=> d!295180 m!1202711))

(assert (=> b!1027079 m!1202825))

(assert (=> b!1026787 d!295180))

(declare-fun d!295184 () Bool)

(assert (=> d!295184 (= (matchR!1380 r!15766 s!10566) (matchRSpec!643 r!15766 s!10566))))

(declare-fun lt!355323 () Unit!15363)

(declare-fun choose!6525 (Regex!2844 List!10074) Unit!15363)

(assert (=> d!295184 (= lt!355323 (choose!6525 r!15766 s!10566))))

(assert (=> d!295184 (validRegex!1313 r!15766)))

(assert (=> d!295184 (= (mainMatchTheorem!643 r!15766 s!10566) lt!355323)))

(declare-fun bs!247084 () Bool)

(assert (= bs!247084 d!295184))

(assert (=> bs!247084 m!1202715))

(assert (=> bs!247084 m!1202713))

(declare-fun m!1202831 () Bool)

(assert (=> bs!247084 m!1202831))

(assert (=> bs!247084 m!1202711))

(assert (=> b!1026787 d!295184))

(declare-fun b!1027093 () Bool)

(declare-fun e!655199 () Bool)

(assert (=> b!1027093 (= e!655199 tp_is_empty!5331)))

(declare-fun b!1027095 () Bool)

(declare-fun tp!311551 () Bool)

(assert (=> b!1027095 (= e!655199 tp!311551)))

(declare-fun b!1027096 () Bool)

(declare-fun tp!311549 () Bool)

(declare-fun tp!311550 () Bool)

(assert (=> b!1027096 (= e!655199 (and tp!311549 tp!311550))))

(assert (=> b!1026786 (= tp!311516 e!655199)))

(declare-fun b!1027094 () Bool)

(declare-fun tp!311547 () Bool)

(declare-fun tp!311548 () Bool)

(assert (=> b!1027094 (= e!655199 (and tp!311547 tp!311548))))

(assert (= (and b!1026786 (is-ElementMatch!2844 (regOne!6200 r!15766))) b!1027093))

(assert (= (and b!1026786 (is-Concat!4677 (regOne!6200 r!15766))) b!1027094))

(assert (= (and b!1026786 (is-Star!2844 (regOne!6200 r!15766))) b!1027095))

(assert (= (and b!1026786 (is-Union!2844 (regOne!6200 r!15766))) b!1027096))

(declare-fun b!1027097 () Bool)

(declare-fun e!655200 () Bool)

(assert (=> b!1027097 (= e!655200 tp_is_empty!5331)))

(declare-fun b!1027099 () Bool)

(declare-fun tp!311556 () Bool)

(assert (=> b!1027099 (= e!655200 tp!311556)))

(declare-fun b!1027100 () Bool)

(declare-fun tp!311554 () Bool)

(declare-fun tp!311555 () Bool)

(assert (=> b!1027100 (= e!655200 (and tp!311554 tp!311555))))

(assert (=> b!1026786 (= tp!311514 e!655200)))

(declare-fun b!1027098 () Bool)

(declare-fun tp!311552 () Bool)

(declare-fun tp!311553 () Bool)

(assert (=> b!1027098 (= e!655200 (and tp!311552 tp!311553))))

(assert (= (and b!1026786 (is-ElementMatch!2844 (regTwo!6200 r!15766))) b!1027097))

(assert (= (and b!1026786 (is-Concat!4677 (regTwo!6200 r!15766))) b!1027098))

(assert (= (and b!1026786 (is-Star!2844 (regTwo!6200 r!15766))) b!1027099))

(assert (= (and b!1026786 (is-Union!2844 (regTwo!6200 r!15766))) b!1027100))

(declare-fun b!1027101 () Bool)

(declare-fun e!655201 () Bool)

(assert (=> b!1027101 (= e!655201 tp_is_empty!5331)))

(declare-fun b!1027103 () Bool)

(declare-fun tp!311561 () Bool)

(assert (=> b!1027103 (= e!655201 tp!311561)))

(declare-fun b!1027104 () Bool)

(declare-fun tp!311559 () Bool)

(declare-fun tp!311560 () Bool)

(assert (=> b!1027104 (= e!655201 (and tp!311559 tp!311560))))

(assert (=> b!1026790 (= tp!311518 e!655201)))

(declare-fun b!1027102 () Bool)

(declare-fun tp!311557 () Bool)

(declare-fun tp!311558 () Bool)

(assert (=> b!1027102 (= e!655201 (and tp!311557 tp!311558))))

(assert (= (and b!1026790 (is-ElementMatch!2844 (reg!3173 r!15766))) b!1027101))

(assert (= (and b!1026790 (is-Concat!4677 (reg!3173 r!15766))) b!1027102))

(assert (= (and b!1026790 (is-Star!2844 (reg!3173 r!15766))) b!1027103))

(assert (= (and b!1026790 (is-Union!2844 (reg!3173 r!15766))) b!1027104))

(declare-fun b!1027105 () Bool)

(declare-fun e!655202 () Bool)

(assert (=> b!1027105 (= e!655202 tp_is_empty!5331)))

(declare-fun b!1027107 () Bool)

(declare-fun tp!311566 () Bool)

(assert (=> b!1027107 (= e!655202 tp!311566)))

(declare-fun b!1027108 () Bool)

(declare-fun tp!311564 () Bool)

(declare-fun tp!311565 () Bool)

(assert (=> b!1027108 (= e!655202 (and tp!311564 tp!311565))))

(assert (=> b!1026785 (= tp!311515 e!655202)))

(declare-fun b!1027106 () Bool)

(declare-fun tp!311562 () Bool)

(declare-fun tp!311563 () Bool)

(assert (=> b!1027106 (= e!655202 (and tp!311562 tp!311563))))

(assert (= (and b!1026785 (is-ElementMatch!2844 (regOne!6201 r!15766))) b!1027105))

(assert (= (and b!1026785 (is-Concat!4677 (regOne!6201 r!15766))) b!1027106))

(assert (= (and b!1026785 (is-Star!2844 (regOne!6201 r!15766))) b!1027107))

(assert (= (and b!1026785 (is-Union!2844 (regOne!6201 r!15766))) b!1027108))

(declare-fun b!1027109 () Bool)

(declare-fun e!655203 () Bool)

(assert (=> b!1027109 (= e!655203 tp_is_empty!5331)))

(declare-fun b!1027111 () Bool)

(declare-fun tp!311571 () Bool)

(assert (=> b!1027111 (= e!655203 tp!311571)))

(declare-fun b!1027112 () Bool)

(declare-fun tp!311569 () Bool)

(declare-fun tp!311570 () Bool)

(assert (=> b!1027112 (= e!655203 (and tp!311569 tp!311570))))

(assert (=> b!1026785 (= tp!311513 e!655203)))

(declare-fun b!1027110 () Bool)

(declare-fun tp!311567 () Bool)

(declare-fun tp!311568 () Bool)

(assert (=> b!1027110 (= e!655203 (and tp!311567 tp!311568))))

(assert (= (and b!1026785 (is-ElementMatch!2844 (regTwo!6201 r!15766))) b!1027109))

(assert (= (and b!1026785 (is-Concat!4677 (regTwo!6201 r!15766))) b!1027110))

(assert (= (and b!1026785 (is-Star!2844 (regTwo!6201 r!15766))) b!1027111))

(assert (= (and b!1026785 (is-Union!2844 (regTwo!6201 r!15766))) b!1027112))

(declare-fun b!1027117 () Bool)

(declare-fun e!655206 () Bool)

(declare-fun tp!311574 () Bool)

(assert (=> b!1027117 (= e!655206 (and tp_is_empty!5331 tp!311574))))

(assert (=> b!1026782 (= tp!311517 e!655206)))

(assert (= (and b!1026782 (is-Cons!10058 (t!101120 s!10566))) b!1027117))

(push 1)

(assert (not b!1027100))

(assert (not b!1027074))

(assert (not d!295158))

(assert (not b!1027112))

(assert (not bm!70571))

(assert (not bm!70592))

(assert (not d!295168))

(assert (not b!1027096))

(assert (not b!1027099))

(assert (not b!1026910))

(assert (not b!1026906))

(assert (not d!295180))

(assert (not d!295162))

(assert (not b!1026912))

(assert (not b!1027108))

(assert (not b!1027111))

(assert (not b!1026953))

(assert (not b!1026909))

(assert (not d!295164))

(assert (not b!1027107))

(assert (not b!1026908))

(assert (not b!1027094))

(assert (not b!1026905))

(assert (not d!295184))

(assert (not b!1027106))

(assert (not b!1027103))

(assert (not b!1027095))

(assert (not b!1027013))

(assert (not bm!70570))

(assert tp_is_empty!5331)

(assert (not b!1027079))

(assert (not b!1027080))

(assert (not b!1026862))

(assert (not d!295166))

(assert (not b!1027069))

(assert (not b!1027104))

(assert (not d!295170))

(assert (not b!1027102))

(assert (not b!1027073))

(assert (not bm!70580))

(assert (not bm!70586))

(assert (not b!1027117))

(assert (not b!1027018))

(assert (not bm!70579))

(assert (not b!1027110))

(assert (not b!1027082))

(assert (not bm!70585))

(assert (not b!1027098))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

