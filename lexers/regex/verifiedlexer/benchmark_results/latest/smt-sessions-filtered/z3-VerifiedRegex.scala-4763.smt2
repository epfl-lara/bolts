; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!245524 () Bool)

(assert start!245524)

(declare-fun b!2518718 () Bool)

(declare-fun res!1064256 () Bool)

(declare-fun e!1595343 () Bool)

(assert (=> b!2518718 (=> (not res!1064256) (not e!1595343))))

(declare-datatypes ((C!15160 0))(
  ( (C!15161 (val!9232 Int)) )
))
(declare-datatypes ((Regex!7501 0))(
  ( (ElementMatch!7501 (c!401597 C!15160)) (Concat!12197 (regOne!15514 Regex!7501) (regTwo!15514 Regex!7501)) (EmptyExpr!7501) (Star!7501 (reg!7830 Regex!7501)) (EmptyLang!7501) (Union!7501 (regOne!15515 Regex!7501) (regTwo!15515 Regex!7501)) )
))
(declare-fun lt!899206 () Regex!7501)

(declare-datatypes ((List!29566 0))(
  ( (Nil!29466) (Cons!29466 (h!34886 C!15160) (t!211265 List!29566)) )
))
(declare-fun tl!4068 () List!29566)

(declare-fun nullable!2418 (Regex!7501) Bool)

(declare-fun derivative!196 (Regex!7501 List!29566) Regex!7501)

(assert (=> b!2518718 (= res!1064256 (not (nullable!2418 (derivative!196 lt!899206 tl!4068))))))

(declare-fun b!2518719 () Bool)

(declare-fun e!1595344 () Bool)

(declare-fun tp!805140 () Bool)

(assert (=> b!2518719 (= e!1595344 tp!805140)))

(declare-fun b!2518720 () Bool)

(declare-fun tp_is_empty!12857 () Bool)

(assert (=> b!2518720 (= e!1595344 tp_is_empty!12857)))

(declare-fun b!2518721 () Bool)

(declare-fun e!1595340 () Bool)

(declare-fun e!1595339 () Bool)

(assert (=> b!2518721 (= e!1595340 e!1595339)))

(declare-fun res!1064251 () Bool)

(assert (=> b!2518721 (=> (not res!1064251) (not e!1595339))))

(declare-fun lt!899204 () Regex!7501)

(assert (=> b!2518721 (= res!1064251 (nullable!2418 lt!899204))))

(declare-fun lt!899205 () Regex!7501)

(assert (=> b!2518721 (= lt!899204 (derivative!196 lt!899205 tl!4068))))

(declare-fun r!27340 () Regex!7501)

(declare-fun c!14016 () C!15160)

(declare-fun derivativeStep!2070 (Regex!7501 C!15160) Regex!7501)

(assert (=> b!2518721 (= lt!899205 (derivativeStep!2070 r!27340 c!14016))))

(declare-fun b!2518722 () Bool)

(declare-fun e!1595341 () Bool)

(declare-fun tp!805141 () Bool)

(assert (=> b!2518722 (= e!1595341 (and tp_is_empty!12857 tp!805141))))

(declare-fun b!2518723 () Bool)

(declare-fun e!1595342 () Bool)

(declare-datatypes ((tuple2!29504 0))(
  ( (tuple2!29505 (_1!17294 List!29566) (_2!17294 List!29566)) )
))
(declare-fun lt!899210 () tuple2!29504)

(declare-fun ++!7222 (List!29566 List!29566) List!29566)

(assert (=> b!2518723 (= e!1595342 (= (++!7222 (_1!17294 lt!899210) (_2!17294 lt!899210)) tl!4068))))

(declare-datatypes ((Option!5872 0))(
  ( (None!5871) (Some!5871 (v!31804 tuple2!29504)) )
))
(declare-fun lt!899212 () Option!5872)

(declare-fun get!9201 (Option!5872) tuple2!29504)

(assert (=> b!2518723 (= lt!899210 (get!9201 lt!899212))))

(declare-fun isDefined!4694 (Option!5872) Bool)

(assert (=> b!2518723 (isDefined!4694 lt!899212)))

(declare-fun lt!899209 () Regex!7501)

(declare-fun findConcatSeparation!894 (Regex!7501 Regex!7501 List!29566 List!29566 List!29566) Option!5872)

(assert (=> b!2518723 (= lt!899212 (findConcatSeparation!894 lt!899206 lt!899209 Nil!29466 tl!4068 tl!4068))))

(declare-datatypes ((Unit!43227 0))(
  ( (Unit!43228) )
))
(declare-fun lt!899208 () Unit!43227)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!176 (Regex!7501 Regex!7501 List!29566) Unit!43227)

(assert (=> b!2518723 (= lt!899208 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!176 lt!899206 lt!899209 tl!4068))))

(declare-fun b!2518724 () Bool)

(assert (=> b!2518724 (= e!1595339 e!1595343)))

(declare-fun res!1064252 () Bool)

(assert (=> b!2518724 (=> (not res!1064252) (not e!1595343))))

(assert (=> b!2518724 (= res!1064252 (= lt!899205 (Concat!12197 lt!899206 lt!899209)))))

(assert (=> b!2518724 (= lt!899209 (Star!7501 (reg!7830 r!27340)))))

(assert (=> b!2518724 (= lt!899206 (derivativeStep!2070 (reg!7830 r!27340) c!14016))))

(declare-fun res!1064255 () Bool)

(assert (=> start!245524 (=> (not res!1064255) (not e!1595340))))

(declare-fun validRegex!3127 (Regex!7501) Bool)

(assert (=> start!245524 (= res!1064255 (validRegex!3127 r!27340))))

(assert (=> start!245524 e!1595340))

(assert (=> start!245524 e!1595344))

(assert (=> start!245524 tp_is_empty!12857))

(assert (=> start!245524 e!1595341))

(declare-fun b!2518725 () Bool)

(declare-fun res!1064253 () Bool)

(assert (=> b!2518725 (=> (not res!1064253) (not e!1595339))))

(get-info :version)

(assert (=> b!2518725 (= res!1064253 (and (not ((_ is EmptyExpr!7501) r!27340)) (not ((_ is EmptyLang!7501) r!27340)) (not ((_ is ElementMatch!7501) r!27340)) (not ((_ is Union!7501) r!27340)) ((_ is Star!7501) r!27340)))))

(declare-fun b!2518726 () Bool)

(declare-fun tp!805142 () Bool)

(declare-fun tp!805137 () Bool)

(assert (=> b!2518726 (= e!1595344 (and tp!805142 tp!805137))))

(declare-fun b!2518727 () Bool)

(assert (=> b!2518727 (= e!1595343 (not e!1595342))))

(declare-fun res!1064254 () Bool)

(assert (=> b!2518727 (=> res!1064254 e!1595342)))

(declare-fun lt!899211 () Bool)

(assert (=> b!2518727 (= res!1064254 (not lt!899211))))

(declare-fun matchR!3488 (Regex!7501 List!29566) Bool)

(assert (=> b!2518727 (= lt!899211 (matchR!3488 lt!899204 Nil!29466))))

(assert (=> b!2518727 (= lt!899211 (matchR!3488 lt!899205 tl!4068))))

(declare-fun lt!899207 () Unit!43227)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!134 (Regex!7501 List!29566) Unit!43227)

(assert (=> b!2518727 (= lt!899207 (lemmaMatchRIsSameAsWholeDerivativeAndNil!134 lt!899205 tl!4068))))

(declare-fun b!2518728 () Bool)

(declare-fun tp!805139 () Bool)

(declare-fun tp!805138 () Bool)

(assert (=> b!2518728 (= e!1595344 (and tp!805139 tp!805138))))

(assert (= (and start!245524 res!1064255) b!2518721))

(assert (= (and b!2518721 res!1064251) b!2518725))

(assert (= (and b!2518725 res!1064253) b!2518724))

(assert (= (and b!2518724 res!1064252) b!2518718))

(assert (= (and b!2518718 res!1064256) b!2518727))

(assert (= (and b!2518727 (not res!1064254)) b!2518723))

(assert (= (and start!245524 ((_ is ElementMatch!7501) r!27340)) b!2518720))

(assert (= (and start!245524 ((_ is Concat!12197) r!27340)) b!2518728))

(assert (= (and start!245524 ((_ is Star!7501) r!27340)) b!2518719))

(assert (= (and start!245524 ((_ is Union!7501) r!27340)) b!2518726))

(assert (= (and start!245524 ((_ is Cons!29466) tl!4068)) b!2518722))

(declare-fun m!2874219 () Bool)

(assert (=> b!2518721 m!2874219))

(declare-fun m!2874221 () Bool)

(assert (=> b!2518721 m!2874221))

(declare-fun m!2874223 () Bool)

(assert (=> b!2518721 m!2874223))

(declare-fun m!2874225 () Bool)

(assert (=> b!2518723 m!2874225))

(declare-fun m!2874227 () Bool)

(assert (=> b!2518723 m!2874227))

(declare-fun m!2874229 () Bool)

(assert (=> b!2518723 m!2874229))

(declare-fun m!2874231 () Bool)

(assert (=> b!2518723 m!2874231))

(declare-fun m!2874233 () Bool)

(assert (=> b!2518723 m!2874233))

(declare-fun m!2874235 () Bool)

(assert (=> b!2518724 m!2874235))

(declare-fun m!2874237 () Bool)

(assert (=> start!245524 m!2874237))

(declare-fun m!2874239 () Bool)

(assert (=> b!2518718 m!2874239))

(assert (=> b!2518718 m!2874239))

(declare-fun m!2874241 () Bool)

(assert (=> b!2518718 m!2874241))

(declare-fun m!2874243 () Bool)

(assert (=> b!2518727 m!2874243))

(declare-fun m!2874245 () Bool)

(assert (=> b!2518727 m!2874245))

(declare-fun m!2874247 () Bool)

(assert (=> b!2518727 m!2874247))

(check-sat (not b!2518722) (not b!2518718) (not b!2518721) (not b!2518724) tp_is_empty!12857 (not b!2518728) (not b!2518726) (not b!2518723) (not start!245524) (not b!2518719) (not b!2518727))
(check-sat)
(get-model)

(declare-fun d!717684 () Bool)

(declare-fun nullableFct!659 (Regex!7501) Bool)

(assert (=> d!717684 (= (nullable!2418 lt!899204) (nullableFct!659 lt!899204))))

(declare-fun bs!468938 () Bool)

(assert (= bs!468938 d!717684))

(declare-fun m!2874249 () Bool)

(assert (=> bs!468938 m!2874249))

(assert (=> b!2518721 d!717684))

(declare-fun d!717686 () Bool)

(declare-fun lt!899215 () Regex!7501)

(assert (=> d!717686 (validRegex!3127 lt!899215)))

(declare-fun e!1595357 () Regex!7501)

(assert (=> d!717686 (= lt!899215 e!1595357)))

(declare-fun c!401604 () Bool)

(assert (=> d!717686 (= c!401604 ((_ is Cons!29466) tl!4068))))

(assert (=> d!717686 (validRegex!3127 lt!899205)))

(assert (=> d!717686 (= (derivative!196 lt!899205 tl!4068) lt!899215)))

(declare-fun b!2518747 () Bool)

(assert (=> b!2518747 (= e!1595357 (derivative!196 (derivativeStep!2070 lt!899205 (h!34886 tl!4068)) (t!211265 tl!4068)))))

(declare-fun b!2518748 () Bool)

(assert (=> b!2518748 (= e!1595357 lt!899205)))

(assert (= (and d!717686 c!401604) b!2518747))

(assert (= (and d!717686 (not c!401604)) b!2518748))

(declare-fun m!2874251 () Bool)

(assert (=> d!717686 m!2874251))

(declare-fun m!2874253 () Bool)

(assert (=> d!717686 m!2874253))

(declare-fun m!2874255 () Bool)

(assert (=> b!2518747 m!2874255))

(assert (=> b!2518747 m!2874255))

(declare-fun m!2874257 () Bool)

(assert (=> b!2518747 m!2874257))

(assert (=> b!2518721 d!717686))

(declare-fun b!2518794 () Bool)

(declare-fun e!1595388 () Regex!7501)

(declare-fun e!1595386 () Regex!7501)

(assert (=> b!2518794 (= e!1595388 e!1595386)))

(declare-fun c!401622 () Bool)

(assert (=> b!2518794 (= c!401622 ((_ is ElementMatch!7501) r!27340))))

(declare-fun c!401624 () Bool)

(declare-fun call!156844 () Regex!7501)

(declare-fun bm!156836 () Bool)

(assert (=> bm!156836 (= call!156844 (derivativeStep!2070 (ite c!401624 (regOne!15515 r!27340) (regTwo!15514 r!27340)) c!14016))))

(declare-fun b!2518795 () Bool)

(declare-fun e!1595389 () Regex!7501)

(declare-fun call!156842 () Regex!7501)

(assert (=> b!2518795 (= e!1595389 (Union!7501 call!156844 call!156842))))

(declare-fun b!2518796 () Bool)

(assert (=> b!2518796 (= e!1595386 (ite (= c!14016 (c!401597 r!27340)) EmptyExpr!7501 EmptyLang!7501))))

(declare-fun b!2518797 () Bool)

(assert (=> b!2518797 (= c!401624 ((_ is Union!7501) r!27340))))

(assert (=> b!2518797 (= e!1595386 e!1595389)))

(declare-fun b!2518798 () Bool)

(declare-fun c!401621 () Bool)

(assert (=> b!2518798 (= c!401621 (nullable!2418 (regOne!15514 r!27340)))))

(declare-fun e!1595385 () Regex!7501)

(declare-fun e!1595387 () Regex!7501)

(assert (=> b!2518798 (= e!1595385 e!1595387)))

(declare-fun d!717690 () Bool)

(declare-fun lt!899221 () Regex!7501)

(assert (=> d!717690 (validRegex!3127 lt!899221)))

(assert (=> d!717690 (= lt!899221 e!1595388)))

(declare-fun c!401620 () Bool)

(assert (=> d!717690 (= c!401620 (or ((_ is EmptyExpr!7501) r!27340) ((_ is EmptyLang!7501) r!27340)))))

(assert (=> d!717690 (validRegex!3127 r!27340)))

(assert (=> d!717690 (= (derivativeStep!2070 r!27340 c!14016) lt!899221)))

(declare-fun bm!156837 () Bool)

(declare-fun c!401623 () Bool)

(assert (=> bm!156837 (= call!156842 (derivativeStep!2070 (ite c!401624 (regTwo!15515 r!27340) (ite c!401623 (reg!7830 r!27340) (regOne!15514 r!27340))) c!14016))))

(declare-fun b!2518799 () Bool)

(declare-fun call!156843 () Regex!7501)

(assert (=> b!2518799 (= e!1595387 (Union!7501 (Concat!12197 call!156843 (regTwo!15514 r!27340)) EmptyLang!7501))))

(declare-fun b!2518800 () Bool)

(assert (=> b!2518800 (= e!1595388 EmptyLang!7501)))

(declare-fun b!2518801 () Bool)

(assert (=> b!2518801 (= e!1595389 e!1595385)))

(assert (=> b!2518801 (= c!401623 ((_ is Star!7501) r!27340))))

(declare-fun bm!156838 () Bool)

(declare-fun call!156841 () Regex!7501)

(assert (=> bm!156838 (= call!156841 call!156842)))

(declare-fun b!2518802 () Bool)

(assert (=> b!2518802 (= e!1595387 (Union!7501 (Concat!12197 call!156843 (regTwo!15514 r!27340)) call!156844))))

(declare-fun b!2518803 () Bool)

(assert (=> b!2518803 (= e!1595385 (Concat!12197 call!156841 r!27340))))

(declare-fun bm!156839 () Bool)

(assert (=> bm!156839 (= call!156843 call!156841)))

(assert (= (and d!717690 c!401620) b!2518800))

(assert (= (and d!717690 (not c!401620)) b!2518794))

(assert (= (and b!2518794 c!401622) b!2518796))

(assert (= (and b!2518794 (not c!401622)) b!2518797))

(assert (= (and b!2518797 c!401624) b!2518795))

(assert (= (and b!2518797 (not c!401624)) b!2518801))

(assert (= (and b!2518801 c!401623) b!2518803))

(assert (= (and b!2518801 (not c!401623)) b!2518798))

(assert (= (and b!2518798 c!401621) b!2518802))

(assert (= (and b!2518798 (not c!401621)) b!2518799))

(assert (= (or b!2518802 b!2518799) bm!156839))

(assert (= (or b!2518803 bm!156839) bm!156838))

(assert (= (or b!2518795 bm!156838) bm!156837))

(assert (= (or b!2518795 b!2518802) bm!156836))

(declare-fun m!2874279 () Bool)

(assert (=> bm!156836 m!2874279))

(declare-fun m!2874281 () Bool)

(assert (=> b!2518798 m!2874281))

(declare-fun m!2874283 () Bool)

(assert (=> d!717690 m!2874283))

(assert (=> d!717690 m!2874237))

(declare-fun m!2874285 () Bool)

(assert (=> bm!156837 m!2874285))

(assert (=> b!2518721 d!717690))

(declare-fun b!2518850 () Bool)

(declare-fun e!1595416 () Bool)

(declare-fun e!1595420 () Bool)

(assert (=> b!2518850 (= e!1595416 e!1595420)))

(declare-fun c!401636 () Bool)

(assert (=> b!2518850 (= c!401636 ((_ is EmptyLang!7501) lt!899204))))

(declare-fun d!717696 () Bool)

(assert (=> d!717696 e!1595416))

(declare-fun c!401635 () Bool)

(assert (=> d!717696 (= c!401635 ((_ is EmptyExpr!7501) lt!899204))))

(declare-fun lt!899230 () Bool)

(declare-fun e!1595414 () Bool)

(assert (=> d!717696 (= lt!899230 e!1595414)))

(declare-fun c!401637 () Bool)

(declare-fun isEmpty!16924 (List!29566) Bool)

(assert (=> d!717696 (= c!401637 (isEmpty!16924 Nil!29466))))

(assert (=> d!717696 (validRegex!3127 lt!899204)))

(assert (=> d!717696 (= (matchR!3488 lt!899204 Nil!29466) lt!899230)))

(declare-fun b!2518851 () Bool)

(declare-fun res!1064306 () Bool)

(declare-fun e!1595415 () Bool)

(assert (=> b!2518851 (=> (not res!1064306) (not e!1595415))))

(declare-fun call!156847 () Bool)

(assert (=> b!2518851 (= res!1064306 (not call!156847))))

(declare-fun b!2518852 () Bool)

(declare-fun res!1064310 () Bool)

(declare-fun e!1595417 () Bool)

(assert (=> b!2518852 (=> res!1064310 e!1595417)))

(assert (=> b!2518852 (= res!1064310 e!1595415)))

(declare-fun res!1064309 () Bool)

(assert (=> b!2518852 (=> (not res!1064309) (not e!1595415))))

(assert (=> b!2518852 (= res!1064309 lt!899230)))

(declare-fun b!2518853 () Bool)

(assert (=> b!2518853 (= e!1595414 (nullable!2418 lt!899204))))

(declare-fun bm!156842 () Bool)

(assert (=> bm!156842 (= call!156847 (isEmpty!16924 Nil!29466))))

(declare-fun b!2518854 () Bool)

(declare-fun head!5749 (List!29566) C!15160)

(declare-fun tail!4026 (List!29566) List!29566)

(assert (=> b!2518854 (= e!1595414 (matchR!3488 (derivativeStep!2070 lt!899204 (head!5749 Nil!29466)) (tail!4026 Nil!29466)))))

(declare-fun b!2518855 () Bool)

(declare-fun e!1595419 () Bool)

(assert (=> b!2518855 (= e!1595419 (not (= (head!5749 Nil!29466) (c!401597 lt!899204))))))

(declare-fun b!2518856 () Bool)

(declare-fun res!1064308 () Bool)

(assert (=> b!2518856 (=> res!1064308 e!1595417)))

(assert (=> b!2518856 (= res!1064308 (not ((_ is ElementMatch!7501) lt!899204)))))

(assert (=> b!2518856 (= e!1595420 e!1595417)))

(declare-fun b!2518857 () Bool)

(declare-fun res!1064307 () Bool)

(assert (=> b!2518857 (=> res!1064307 e!1595419)))

(assert (=> b!2518857 (= res!1064307 (not (isEmpty!16924 (tail!4026 Nil!29466))))))

(declare-fun b!2518858 () Bool)

(declare-fun e!1595418 () Bool)

(assert (=> b!2518858 (= e!1595417 e!1595418)))

(declare-fun res!1064311 () Bool)

(assert (=> b!2518858 (=> (not res!1064311) (not e!1595418))))

(assert (=> b!2518858 (= res!1064311 (not lt!899230))))

(declare-fun b!2518859 () Bool)

(assert (=> b!2518859 (= e!1595420 (not lt!899230))))

(declare-fun b!2518860 () Bool)

(declare-fun res!1064305 () Bool)

(assert (=> b!2518860 (=> (not res!1064305) (not e!1595415))))

(assert (=> b!2518860 (= res!1064305 (isEmpty!16924 (tail!4026 Nil!29466)))))

(declare-fun b!2518861 () Bool)

(assert (=> b!2518861 (= e!1595418 e!1595419)))

(declare-fun res!1064304 () Bool)

(assert (=> b!2518861 (=> res!1064304 e!1595419)))

(assert (=> b!2518861 (= res!1064304 call!156847)))

(declare-fun b!2518862 () Bool)

(assert (=> b!2518862 (= e!1595416 (= lt!899230 call!156847))))

(declare-fun b!2518863 () Bool)

(assert (=> b!2518863 (= e!1595415 (= (head!5749 Nil!29466) (c!401597 lt!899204)))))

(assert (= (and d!717696 c!401637) b!2518853))

(assert (= (and d!717696 (not c!401637)) b!2518854))

(assert (= (and d!717696 c!401635) b!2518862))

(assert (= (and d!717696 (not c!401635)) b!2518850))

(assert (= (and b!2518850 c!401636) b!2518859))

(assert (= (and b!2518850 (not c!401636)) b!2518856))

(assert (= (and b!2518856 (not res!1064308)) b!2518852))

(assert (= (and b!2518852 res!1064309) b!2518851))

(assert (= (and b!2518851 res!1064306) b!2518860))

(assert (= (and b!2518860 res!1064305) b!2518863))

(assert (= (and b!2518852 (not res!1064310)) b!2518858))

(assert (= (and b!2518858 res!1064311) b!2518861))

(assert (= (and b!2518861 (not res!1064304)) b!2518857))

(assert (= (and b!2518857 (not res!1064307)) b!2518855))

(assert (= (or b!2518862 b!2518851 b!2518861) bm!156842))

(assert (=> b!2518853 m!2874219))

(declare-fun m!2874287 () Bool)

(assert (=> b!2518857 m!2874287))

(assert (=> b!2518857 m!2874287))

(declare-fun m!2874289 () Bool)

(assert (=> b!2518857 m!2874289))

(declare-fun m!2874291 () Bool)

(assert (=> d!717696 m!2874291))

(declare-fun m!2874293 () Bool)

(assert (=> d!717696 m!2874293))

(declare-fun m!2874295 () Bool)

(assert (=> b!2518863 m!2874295))

(assert (=> b!2518860 m!2874287))

(assert (=> b!2518860 m!2874287))

(assert (=> b!2518860 m!2874289))

(assert (=> b!2518854 m!2874295))

(assert (=> b!2518854 m!2874295))

(declare-fun m!2874297 () Bool)

(assert (=> b!2518854 m!2874297))

(assert (=> b!2518854 m!2874287))

(assert (=> b!2518854 m!2874297))

(assert (=> b!2518854 m!2874287))

(declare-fun m!2874299 () Bool)

(assert (=> b!2518854 m!2874299))

(assert (=> b!2518855 m!2874295))

(assert (=> bm!156842 m!2874291))

(assert (=> b!2518727 d!717696))

(declare-fun b!2518873 () Bool)

(declare-fun e!1595428 () Bool)

(declare-fun e!1595432 () Bool)

(assert (=> b!2518873 (= e!1595428 e!1595432)))

(declare-fun c!401641 () Bool)

(assert (=> b!2518873 (= c!401641 ((_ is EmptyLang!7501) lt!899205))))

(declare-fun d!717698 () Bool)

(assert (=> d!717698 e!1595428))

(declare-fun c!401640 () Bool)

(assert (=> d!717698 (= c!401640 ((_ is EmptyExpr!7501) lt!899205))))

(declare-fun lt!899234 () Bool)

(declare-fun e!1595426 () Bool)

(assert (=> d!717698 (= lt!899234 e!1595426)))

(declare-fun c!401642 () Bool)

(assert (=> d!717698 (= c!401642 (isEmpty!16924 tl!4068))))

(assert (=> d!717698 (validRegex!3127 lt!899205)))

(assert (=> d!717698 (= (matchR!3488 lt!899205 tl!4068) lt!899234)))

(declare-fun b!2518874 () Bool)

(declare-fun res!1064319 () Bool)

(declare-fun e!1595427 () Bool)

(assert (=> b!2518874 (=> (not res!1064319) (not e!1595427))))

(declare-fun call!156848 () Bool)

(assert (=> b!2518874 (= res!1064319 (not call!156848))))

(declare-fun b!2518875 () Bool)

(declare-fun res!1064323 () Bool)

(declare-fun e!1595429 () Bool)

(assert (=> b!2518875 (=> res!1064323 e!1595429)))

(assert (=> b!2518875 (= res!1064323 e!1595427)))

(declare-fun res!1064322 () Bool)

(assert (=> b!2518875 (=> (not res!1064322) (not e!1595427))))

(assert (=> b!2518875 (= res!1064322 lt!899234)))

(declare-fun b!2518876 () Bool)

(assert (=> b!2518876 (= e!1595426 (nullable!2418 lt!899205))))

(declare-fun bm!156843 () Bool)

(assert (=> bm!156843 (= call!156848 (isEmpty!16924 tl!4068))))

(declare-fun b!2518877 () Bool)

(assert (=> b!2518877 (= e!1595426 (matchR!3488 (derivativeStep!2070 lt!899205 (head!5749 tl!4068)) (tail!4026 tl!4068)))))

(declare-fun b!2518878 () Bool)

(declare-fun e!1595431 () Bool)

(assert (=> b!2518878 (= e!1595431 (not (= (head!5749 tl!4068) (c!401597 lt!899205))))))

(declare-fun b!2518879 () Bool)

(declare-fun res!1064321 () Bool)

(assert (=> b!2518879 (=> res!1064321 e!1595429)))

(assert (=> b!2518879 (= res!1064321 (not ((_ is ElementMatch!7501) lt!899205)))))

(assert (=> b!2518879 (= e!1595432 e!1595429)))

(declare-fun b!2518880 () Bool)

(declare-fun res!1064320 () Bool)

(assert (=> b!2518880 (=> res!1064320 e!1595431)))

(assert (=> b!2518880 (= res!1064320 (not (isEmpty!16924 (tail!4026 tl!4068))))))

(declare-fun b!2518881 () Bool)

(declare-fun e!1595430 () Bool)

(assert (=> b!2518881 (= e!1595429 e!1595430)))

(declare-fun res!1064324 () Bool)

(assert (=> b!2518881 (=> (not res!1064324) (not e!1595430))))

(assert (=> b!2518881 (= res!1064324 (not lt!899234))))

(declare-fun b!2518882 () Bool)

(assert (=> b!2518882 (= e!1595432 (not lt!899234))))

(declare-fun b!2518883 () Bool)

(declare-fun res!1064318 () Bool)

(assert (=> b!2518883 (=> (not res!1064318) (not e!1595427))))

(assert (=> b!2518883 (= res!1064318 (isEmpty!16924 (tail!4026 tl!4068)))))

(declare-fun b!2518884 () Bool)

(assert (=> b!2518884 (= e!1595430 e!1595431)))

(declare-fun res!1064317 () Bool)

(assert (=> b!2518884 (=> res!1064317 e!1595431)))

(assert (=> b!2518884 (= res!1064317 call!156848)))

(declare-fun b!2518885 () Bool)

(assert (=> b!2518885 (= e!1595428 (= lt!899234 call!156848))))

(declare-fun b!2518886 () Bool)

(assert (=> b!2518886 (= e!1595427 (= (head!5749 tl!4068) (c!401597 lt!899205)))))

(assert (= (and d!717698 c!401642) b!2518876))

(assert (= (and d!717698 (not c!401642)) b!2518877))

(assert (= (and d!717698 c!401640) b!2518885))

(assert (= (and d!717698 (not c!401640)) b!2518873))

(assert (= (and b!2518873 c!401641) b!2518882))

(assert (= (and b!2518873 (not c!401641)) b!2518879))

(assert (= (and b!2518879 (not res!1064321)) b!2518875))

(assert (= (and b!2518875 res!1064322) b!2518874))

(assert (= (and b!2518874 res!1064319) b!2518883))

(assert (= (and b!2518883 res!1064318) b!2518886))

(assert (= (and b!2518875 (not res!1064323)) b!2518881))

(assert (= (and b!2518881 res!1064324) b!2518884))

(assert (= (and b!2518884 (not res!1064317)) b!2518880))

(assert (= (and b!2518880 (not res!1064320)) b!2518878))

(assert (= (or b!2518885 b!2518874 b!2518884) bm!156843))

(declare-fun m!2874325 () Bool)

(assert (=> b!2518876 m!2874325))

(declare-fun m!2874327 () Bool)

(assert (=> b!2518880 m!2874327))

(assert (=> b!2518880 m!2874327))

(declare-fun m!2874329 () Bool)

(assert (=> b!2518880 m!2874329))

(declare-fun m!2874331 () Bool)

(assert (=> d!717698 m!2874331))

(assert (=> d!717698 m!2874253))

(declare-fun m!2874333 () Bool)

(assert (=> b!2518886 m!2874333))

(assert (=> b!2518883 m!2874327))

(assert (=> b!2518883 m!2874327))

(assert (=> b!2518883 m!2874329))

(assert (=> b!2518877 m!2874333))

(assert (=> b!2518877 m!2874333))

(declare-fun m!2874335 () Bool)

(assert (=> b!2518877 m!2874335))

(assert (=> b!2518877 m!2874327))

(assert (=> b!2518877 m!2874335))

(assert (=> b!2518877 m!2874327))

(declare-fun m!2874337 () Bool)

(assert (=> b!2518877 m!2874337))

(assert (=> b!2518878 m!2874333))

(assert (=> bm!156843 m!2874331))

(assert (=> b!2518727 d!717698))

(declare-fun d!717704 () Bool)

(assert (=> d!717704 (= (matchR!3488 lt!899205 tl!4068) (matchR!3488 (derivative!196 lt!899205 tl!4068) Nil!29466))))

(declare-fun lt!899240 () Unit!43227)

(declare-fun choose!14926 (Regex!7501 List!29566) Unit!43227)

(assert (=> d!717704 (= lt!899240 (choose!14926 lt!899205 tl!4068))))

(assert (=> d!717704 (validRegex!3127 lt!899205)))

(assert (=> d!717704 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!134 lt!899205 tl!4068) lt!899240)))

(declare-fun bs!468940 () Bool)

(assert (= bs!468940 d!717704))

(assert (=> bs!468940 m!2874221))

(declare-fun m!2874343 () Bool)

(assert (=> bs!468940 m!2874343))

(assert (=> bs!468940 m!2874253))

(assert (=> bs!468940 m!2874245))

(assert (=> bs!468940 m!2874221))

(declare-fun m!2874345 () Bool)

(assert (=> bs!468940 m!2874345))

(assert (=> b!2518727 d!717704))

(declare-fun d!717708 () Bool)

(assert (=> d!717708 (isDefined!4694 (findConcatSeparation!894 lt!899206 lt!899209 Nil!29466 tl!4068 tl!4068))))

(declare-fun lt!899246 () Unit!43227)

(declare-fun choose!14927 (Regex!7501 Regex!7501 List!29566) Unit!43227)

(assert (=> d!717708 (= lt!899246 (choose!14927 lt!899206 lt!899209 tl!4068))))

(assert (=> d!717708 (validRegex!3127 lt!899206)))

(assert (=> d!717708 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!176 lt!899206 lt!899209 tl!4068) lt!899246)))

(declare-fun bs!468943 () Bool)

(assert (= bs!468943 d!717708))

(assert (=> bs!468943 m!2874227))

(assert (=> bs!468943 m!2874227))

(declare-fun m!2874359 () Bool)

(assert (=> bs!468943 m!2874359))

(declare-fun m!2874361 () Bool)

(assert (=> bs!468943 m!2874361))

(declare-fun m!2874363 () Bool)

(assert (=> bs!468943 m!2874363))

(assert (=> b!2518723 d!717708))

(declare-fun b!2518971 () Bool)

(declare-fun e!1595480 () Bool)

(assert (=> b!2518971 (= e!1595480 (matchR!3488 lt!899209 tl!4068))))

(declare-fun b!2518972 () Bool)

(declare-fun e!1595479 () Bool)

(declare-fun lt!899261 () Option!5872)

(assert (=> b!2518972 (= e!1595479 (not (isDefined!4694 lt!899261)))))

(declare-fun b!2518973 () Bool)

(declare-fun e!1595478 () Bool)

(assert (=> b!2518973 (= e!1595478 (= (++!7222 (_1!17294 (get!9201 lt!899261)) (_2!17294 (get!9201 lt!899261))) tl!4068))))

(declare-fun b!2518974 () Bool)

(declare-fun e!1595476 () Option!5872)

(declare-fun e!1595477 () Option!5872)

(assert (=> b!2518974 (= e!1595476 e!1595477)))

(declare-fun c!401672 () Bool)

(assert (=> b!2518974 (= c!401672 ((_ is Nil!29466) tl!4068))))

(declare-fun d!717716 () Bool)

(assert (=> d!717716 e!1595479))

(declare-fun res!1064355 () Bool)

(assert (=> d!717716 (=> res!1064355 e!1595479)))

(assert (=> d!717716 (= res!1064355 e!1595478)))

(declare-fun res!1064354 () Bool)

(assert (=> d!717716 (=> (not res!1064354) (not e!1595478))))

(assert (=> d!717716 (= res!1064354 (isDefined!4694 lt!899261))))

(assert (=> d!717716 (= lt!899261 e!1595476)))

(declare-fun c!401673 () Bool)

(assert (=> d!717716 (= c!401673 e!1595480)))

(declare-fun res!1064352 () Bool)

(assert (=> d!717716 (=> (not res!1064352) (not e!1595480))))

(assert (=> d!717716 (= res!1064352 (matchR!3488 lt!899206 Nil!29466))))

(assert (=> d!717716 (validRegex!3127 lt!899206)))

(assert (=> d!717716 (= (findConcatSeparation!894 lt!899206 lt!899209 Nil!29466 tl!4068 tl!4068) lt!899261)))

(declare-fun b!2518975 () Bool)

(assert (=> b!2518975 (= e!1595476 (Some!5871 (tuple2!29505 Nil!29466 tl!4068)))))

(declare-fun b!2518976 () Bool)

(declare-fun lt!899259 () Unit!43227)

(declare-fun lt!899260 () Unit!43227)

(assert (=> b!2518976 (= lt!899259 lt!899260)))

(assert (=> b!2518976 (= (++!7222 (++!7222 Nil!29466 (Cons!29466 (h!34886 tl!4068) Nil!29466)) (t!211265 tl!4068)) tl!4068)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!763 (List!29566 C!15160 List!29566 List!29566) Unit!43227)

(assert (=> b!2518976 (= lt!899260 (lemmaMoveElementToOtherListKeepsConcatEq!763 Nil!29466 (h!34886 tl!4068) (t!211265 tl!4068) tl!4068))))

(assert (=> b!2518976 (= e!1595477 (findConcatSeparation!894 lt!899206 lt!899209 (++!7222 Nil!29466 (Cons!29466 (h!34886 tl!4068) Nil!29466)) (t!211265 tl!4068) tl!4068))))

(declare-fun b!2518977 () Bool)

(declare-fun res!1064351 () Bool)

(assert (=> b!2518977 (=> (not res!1064351) (not e!1595478))))

(assert (=> b!2518977 (= res!1064351 (matchR!3488 lt!899209 (_2!17294 (get!9201 lt!899261))))))

(declare-fun b!2518978 () Bool)

(assert (=> b!2518978 (= e!1595477 None!5871)))

(declare-fun b!2518979 () Bool)

(declare-fun res!1064353 () Bool)

(assert (=> b!2518979 (=> (not res!1064353) (not e!1595478))))

(assert (=> b!2518979 (= res!1064353 (matchR!3488 lt!899206 (_1!17294 (get!9201 lt!899261))))))

(assert (= (and d!717716 res!1064352) b!2518971))

(assert (= (and d!717716 c!401673) b!2518975))

(assert (= (and d!717716 (not c!401673)) b!2518974))

(assert (= (and b!2518974 c!401672) b!2518978))

(assert (= (and b!2518974 (not c!401672)) b!2518976))

(assert (= (and d!717716 res!1064354) b!2518979))

(assert (= (and b!2518979 res!1064353) b!2518977))

(assert (= (and b!2518977 res!1064351) b!2518973))

(assert (= (and d!717716 (not res!1064355)) b!2518972))

(declare-fun m!2874381 () Bool)

(assert (=> b!2518976 m!2874381))

(assert (=> b!2518976 m!2874381))

(declare-fun m!2874383 () Bool)

(assert (=> b!2518976 m!2874383))

(declare-fun m!2874385 () Bool)

(assert (=> b!2518976 m!2874385))

(assert (=> b!2518976 m!2874381))

(declare-fun m!2874387 () Bool)

(assert (=> b!2518976 m!2874387))

(declare-fun m!2874389 () Bool)

(assert (=> d!717716 m!2874389))

(declare-fun m!2874391 () Bool)

(assert (=> d!717716 m!2874391))

(assert (=> d!717716 m!2874363))

(declare-fun m!2874393 () Bool)

(assert (=> b!2518977 m!2874393))

(declare-fun m!2874395 () Bool)

(assert (=> b!2518977 m!2874395))

(assert (=> b!2518972 m!2874389))

(assert (=> b!2518979 m!2874393))

(declare-fun m!2874397 () Bool)

(assert (=> b!2518979 m!2874397))

(declare-fun m!2874399 () Bool)

(assert (=> b!2518971 m!2874399))

(assert (=> b!2518973 m!2874393))

(declare-fun m!2874401 () Bool)

(assert (=> b!2518973 m!2874401))

(assert (=> b!2518723 d!717716))

(declare-fun b!2519034 () Bool)

(declare-fun res!1064376 () Bool)

(declare-fun e!1595507 () Bool)

(assert (=> b!2519034 (=> (not res!1064376) (not e!1595507))))

(declare-fun lt!899270 () List!29566)

(declare-fun size!22912 (List!29566) Int)

(assert (=> b!2519034 (= res!1064376 (= (size!22912 lt!899270) (+ (size!22912 (_1!17294 lt!899210)) (size!22912 (_2!17294 lt!899210)))))))

(declare-fun b!2519035 () Bool)

(assert (=> b!2519035 (= e!1595507 (or (not (= (_2!17294 lt!899210) Nil!29466)) (= lt!899270 (_1!17294 lt!899210))))))

(declare-fun b!2519032 () Bool)

(declare-fun e!1595506 () List!29566)

(assert (=> b!2519032 (= e!1595506 (_2!17294 lt!899210))))

(declare-fun d!717724 () Bool)

(assert (=> d!717724 e!1595507))

(declare-fun res!1064377 () Bool)

(assert (=> d!717724 (=> (not res!1064377) (not e!1595507))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4030 (List!29566) (InoxSet C!15160))

(assert (=> d!717724 (= res!1064377 (= (content!4030 lt!899270) ((_ map or) (content!4030 (_1!17294 lt!899210)) (content!4030 (_2!17294 lt!899210)))))))

(assert (=> d!717724 (= lt!899270 e!1595506)))

(declare-fun c!401687 () Bool)

(assert (=> d!717724 (= c!401687 ((_ is Nil!29466) (_1!17294 lt!899210)))))

(assert (=> d!717724 (= (++!7222 (_1!17294 lt!899210) (_2!17294 lt!899210)) lt!899270)))

(declare-fun b!2519033 () Bool)

(assert (=> b!2519033 (= e!1595506 (Cons!29466 (h!34886 (_1!17294 lt!899210)) (++!7222 (t!211265 (_1!17294 lt!899210)) (_2!17294 lt!899210))))))

(assert (= (and d!717724 c!401687) b!2519032))

(assert (= (and d!717724 (not c!401687)) b!2519033))

(assert (= (and d!717724 res!1064377) b!2519034))

(assert (= (and b!2519034 res!1064376) b!2519035))

(declare-fun m!2874445 () Bool)

(assert (=> b!2519034 m!2874445))

(declare-fun m!2874447 () Bool)

(assert (=> b!2519034 m!2874447))

(declare-fun m!2874449 () Bool)

(assert (=> b!2519034 m!2874449))

(declare-fun m!2874451 () Bool)

(assert (=> d!717724 m!2874451))

(declare-fun m!2874453 () Bool)

(assert (=> d!717724 m!2874453))

(declare-fun m!2874455 () Bool)

(assert (=> d!717724 m!2874455))

(declare-fun m!2874457 () Bool)

(assert (=> b!2519033 m!2874457))

(assert (=> b!2518723 d!717724))

(declare-fun d!717732 () Bool)

(declare-fun isEmpty!16926 (Option!5872) Bool)

(assert (=> d!717732 (= (isDefined!4694 lt!899212) (not (isEmpty!16926 lt!899212)))))

(declare-fun bs!468946 () Bool)

(assert (= bs!468946 d!717732))

(declare-fun m!2874459 () Bool)

(assert (=> bs!468946 m!2874459))

(assert (=> b!2518723 d!717732))

(declare-fun d!717734 () Bool)

(assert (=> d!717734 (= (get!9201 lt!899212) (v!31804 lt!899212))))

(assert (=> b!2518723 d!717734))

(declare-fun d!717736 () Bool)

(assert (=> d!717736 (= (nullable!2418 (derivative!196 lt!899206 tl!4068)) (nullableFct!659 (derivative!196 lt!899206 tl!4068)))))

(declare-fun bs!468947 () Bool)

(assert (= bs!468947 d!717736))

(assert (=> bs!468947 m!2874239))

(declare-fun m!2874461 () Bool)

(assert (=> bs!468947 m!2874461))

(assert (=> b!2518718 d!717736))

(declare-fun d!717738 () Bool)

(declare-fun lt!899271 () Regex!7501)

(assert (=> d!717738 (validRegex!3127 lt!899271)))

(declare-fun e!1595516 () Regex!7501)

(assert (=> d!717738 (= lt!899271 e!1595516)))

(declare-fun c!401688 () Bool)

(assert (=> d!717738 (= c!401688 ((_ is Cons!29466) tl!4068))))

(assert (=> d!717738 (validRegex!3127 lt!899206)))

(assert (=> d!717738 (= (derivative!196 lt!899206 tl!4068) lt!899271)))

(declare-fun b!2519065 () Bool)

(assert (=> b!2519065 (= e!1595516 (derivative!196 (derivativeStep!2070 lt!899206 (h!34886 tl!4068)) (t!211265 tl!4068)))))

(declare-fun b!2519066 () Bool)

(assert (=> b!2519066 (= e!1595516 lt!899206)))

(assert (= (and d!717738 c!401688) b!2519065))

(assert (= (and d!717738 (not c!401688)) b!2519066))

(declare-fun m!2874463 () Bool)

(assert (=> d!717738 m!2874463))

(assert (=> d!717738 m!2874363))

(declare-fun m!2874465 () Bool)

(assert (=> b!2519065 m!2874465))

(assert (=> b!2519065 m!2874465))

(declare-fun m!2874467 () Bool)

(assert (=> b!2519065 m!2874467))

(assert (=> b!2518718 d!717738))

(declare-fun b!2519067 () Bool)

(declare-fun e!1595520 () Regex!7501)

(declare-fun e!1595518 () Regex!7501)

(assert (=> b!2519067 (= e!1595520 e!1595518)))

(declare-fun c!401691 () Bool)

(assert (=> b!2519067 (= c!401691 ((_ is ElementMatch!7501) (reg!7830 r!27340)))))

(declare-fun bm!156864 () Bool)

(declare-fun call!156872 () Regex!7501)

(declare-fun c!401693 () Bool)

(assert (=> bm!156864 (= call!156872 (derivativeStep!2070 (ite c!401693 (regOne!15515 (reg!7830 r!27340)) (regTwo!15514 (reg!7830 r!27340))) c!14016))))

(declare-fun b!2519068 () Bool)

(declare-fun e!1595521 () Regex!7501)

(declare-fun call!156870 () Regex!7501)

(assert (=> b!2519068 (= e!1595521 (Union!7501 call!156872 call!156870))))

(declare-fun b!2519069 () Bool)

(assert (=> b!2519069 (= e!1595518 (ite (= c!14016 (c!401597 (reg!7830 r!27340))) EmptyExpr!7501 EmptyLang!7501))))

(declare-fun b!2519070 () Bool)

(assert (=> b!2519070 (= c!401693 ((_ is Union!7501) (reg!7830 r!27340)))))

(assert (=> b!2519070 (= e!1595518 e!1595521)))

(declare-fun b!2519071 () Bool)

(declare-fun c!401690 () Bool)

(assert (=> b!2519071 (= c!401690 (nullable!2418 (regOne!15514 (reg!7830 r!27340))))))

(declare-fun e!1595517 () Regex!7501)

(declare-fun e!1595519 () Regex!7501)

(assert (=> b!2519071 (= e!1595517 e!1595519)))

(declare-fun d!717740 () Bool)

(declare-fun lt!899272 () Regex!7501)

(assert (=> d!717740 (validRegex!3127 lt!899272)))

(assert (=> d!717740 (= lt!899272 e!1595520)))

(declare-fun c!401689 () Bool)

(assert (=> d!717740 (= c!401689 (or ((_ is EmptyExpr!7501) (reg!7830 r!27340)) ((_ is EmptyLang!7501) (reg!7830 r!27340))))))

(assert (=> d!717740 (validRegex!3127 (reg!7830 r!27340))))

(assert (=> d!717740 (= (derivativeStep!2070 (reg!7830 r!27340) c!14016) lt!899272)))

(declare-fun bm!156865 () Bool)

(declare-fun c!401692 () Bool)

(assert (=> bm!156865 (= call!156870 (derivativeStep!2070 (ite c!401693 (regTwo!15515 (reg!7830 r!27340)) (ite c!401692 (reg!7830 (reg!7830 r!27340)) (regOne!15514 (reg!7830 r!27340)))) c!14016))))

(declare-fun b!2519072 () Bool)

(declare-fun call!156871 () Regex!7501)

(assert (=> b!2519072 (= e!1595519 (Union!7501 (Concat!12197 call!156871 (regTwo!15514 (reg!7830 r!27340))) EmptyLang!7501))))

(declare-fun b!2519073 () Bool)

(assert (=> b!2519073 (= e!1595520 EmptyLang!7501)))

(declare-fun b!2519074 () Bool)

(assert (=> b!2519074 (= e!1595521 e!1595517)))

(assert (=> b!2519074 (= c!401692 ((_ is Star!7501) (reg!7830 r!27340)))))

(declare-fun bm!156866 () Bool)

(declare-fun call!156869 () Regex!7501)

(assert (=> bm!156866 (= call!156869 call!156870)))

(declare-fun b!2519075 () Bool)

(assert (=> b!2519075 (= e!1595519 (Union!7501 (Concat!12197 call!156871 (regTwo!15514 (reg!7830 r!27340))) call!156872))))

(declare-fun b!2519076 () Bool)

(assert (=> b!2519076 (= e!1595517 (Concat!12197 call!156869 (reg!7830 r!27340)))))

(declare-fun bm!156867 () Bool)

(assert (=> bm!156867 (= call!156871 call!156869)))

(assert (= (and d!717740 c!401689) b!2519073))

(assert (= (and d!717740 (not c!401689)) b!2519067))

(assert (= (and b!2519067 c!401691) b!2519069))

(assert (= (and b!2519067 (not c!401691)) b!2519070))

(assert (= (and b!2519070 c!401693) b!2519068))

(assert (= (and b!2519070 (not c!401693)) b!2519074))

(assert (= (and b!2519074 c!401692) b!2519076))

(assert (= (and b!2519074 (not c!401692)) b!2519071))

(assert (= (and b!2519071 c!401690) b!2519075))

(assert (= (and b!2519071 (not c!401690)) b!2519072))

(assert (= (or b!2519075 b!2519072) bm!156867))

(assert (= (or b!2519076 bm!156867) bm!156866))

(assert (= (or b!2519068 bm!156866) bm!156865))

(assert (= (or b!2519068 b!2519075) bm!156864))

(declare-fun m!2874469 () Bool)

(assert (=> bm!156864 m!2874469))

(declare-fun m!2874471 () Bool)

(assert (=> b!2519071 m!2874471))

(declare-fun m!2874473 () Bool)

(assert (=> d!717740 m!2874473))

(declare-fun m!2874475 () Bool)

(assert (=> d!717740 m!2874475))

(declare-fun m!2874477 () Bool)

(assert (=> bm!156865 m!2874477))

(assert (=> b!2518724 d!717740))

(declare-fun b!2519095 () Bool)

(declare-fun e!1595536 () Bool)

(declare-fun call!156881 () Bool)

(assert (=> b!2519095 (= e!1595536 call!156881)))

(declare-fun b!2519096 () Bool)

(declare-fun e!1595539 () Bool)

(declare-fun e!1595537 () Bool)

(assert (=> b!2519096 (= e!1595539 e!1595537)))

(declare-fun res!1064391 () Bool)

(assert (=> b!2519096 (=> (not res!1064391) (not e!1595537))))

(assert (=> b!2519096 (= res!1064391 call!156881)))

(declare-fun b!2519097 () Bool)

(declare-fun e!1595540 () Bool)

(declare-fun e!1595541 () Bool)

(assert (=> b!2519097 (= e!1595540 e!1595541)))

(declare-fun c!401698 () Bool)

(assert (=> b!2519097 (= c!401698 ((_ is Union!7501) r!27340))))

(declare-fun call!156879 () Bool)

(declare-fun c!401699 () Bool)

(declare-fun bm!156874 () Bool)

(assert (=> bm!156874 (= call!156879 (validRegex!3127 (ite c!401699 (reg!7830 r!27340) (ite c!401698 (regOne!15515 r!27340) (regTwo!15514 r!27340)))))))

(declare-fun b!2519098 () Bool)

(declare-fun e!1595542 () Bool)

(assert (=> b!2519098 (= e!1595542 e!1595540)))

(assert (=> b!2519098 (= c!401699 ((_ is Star!7501) r!27340))))

(declare-fun b!2519099 () Bool)

(declare-fun res!1064388 () Bool)

(assert (=> b!2519099 (=> (not res!1064388) (not e!1595536))))

(declare-fun call!156880 () Bool)

(assert (=> b!2519099 (= res!1064388 call!156880)))

(assert (=> b!2519099 (= e!1595541 e!1595536)))

(declare-fun bm!156875 () Bool)

(assert (=> bm!156875 (= call!156880 call!156879)))

(declare-fun d!717742 () Bool)

(declare-fun res!1064389 () Bool)

(assert (=> d!717742 (=> res!1064389 e!1595542)))

(assert (=> d!717742 (= res!1064389 ((_ is ElementMatch!7501) r!27340))))

(assert (=> d!717742 (= (validRegex!3127 r!27340) e!1595542)))

(declare-fun b!2519100 () Bool)

(declare-fun e!1595538 () Bool)

(assert (=> b!2519100 (= e!1595540 e!1595538)))

(declare-fun res!1064392 () Bool)

(assert (=> b!2519100 (= res!1064392 (not (nullable!2418 (reg!7830 r!27340))))))

(assert (=> b!2519100 (=> (not res!1064392) (not e!1595538))))

(declare-fun b!2519101 () Bool)

(assert (=> b!2519101 (= e!1595538 call!156879)))

(declare-fun bm!156876 () Bool)

(assert (=> bm!156876 (= call!156881 (validRegex!3127 (ite c!401698 (regTwo!15515 r!27340) (regOne!15514 r!27340))))))

(declare-fun b!2519102 () Bool)

(assert (=> b!2519102 (= e!1595537 call!156880)))

(declare-fun b!2519103 () Bool)

(declare-fun res!1064390 () Bool)

(assert (=> b!2519103 (=> res!1064390 e!1595539)))

(assert (=> b!2519103 (= res!1064390 (not ((_ is Concat!12197) r!27340)))))

(assert (=> b!2519103 (= e!1595541 e!1595539)))

(assert (= (and d!717742 (not res!1064389)) b!2519098))

(assert (= (and b!2519098 c!401699) b!2519100))

(assert (= (and b!2519098 (not c!401699)) b!2519097))

(assert (= (and b!2519100 res!1064392) b!2519101))

(assert (= (and b!2519097 c!401698) b!2519099))

(assert (= (and b!2519097 (not c!401698)) b!2519103))

(assert (= (and b!2519099 res!1064388) b!2519095))

(assert (= (and b!2519103 (not res!1064390)) b!2519096))

(assert (= (and b!2519096 res!1064391) b!2519102))

(assert (= (or b!2519099 b!2519102) bm!156875))

(assert (= (or b!2519095 b!2519096) bm!156876))

(assert (= (or b!2519101 bm!156875) bm!156874))

(declare-fun m!2874479 () Bool)

(assert (=> bm!156874 m!2874479))

(declare-fun m!2874481 () Bool)

(assert (=> b!2519100 m!2874481))

(declare-fun m!2874483 () Bool)

(assert (=> bm!156876 m!2874483))

(assert (=> start!245524 d!717742))

(declare-fun b!2519114 () Bool)

(declare-fun e!1595545 () Bool)

(assert (=> b!2519114 (= e!1595545 tp_is_empty!12857)))

(assert (=> b!2518726 (= tp!805142 e!1595545)))

(declare-fun b!2519115 () Bool)

(declare-fun tp!805193 () Bool)

(declare-fun tp!805194 () Bool)

(assert (=> b!2519115 (= e!1595545 (and tp!805193 tp!805194))))

(declare-fun b!2519117 () Bool)

(declare-fun tp!805195 () Bool)

(declare-fun tp!805191 () Bool)

(assert (=> b!2519117 (= e!1595545 (and tp!805195 tp!805191))))

(declare-fun b!2519116 () Bool)

(declare-fun tp!805192 () Bool)

(assert (=> b!2519116 (= e!1595545 tp!805192)))

(assert (= (and b!2518726 ((_ is ElementMatch!7501) (regOne!15515 r!27340))) b!2519114))

(assert (= (and b!2518726 ((_ is Concat!12197) (regOne!15515 r!27340))) b!2519115))

(assert (= (and b!2518726 ((_ is Star!7501) (regOne!15515 r!27340))) b!2519116))

(assert (= (and b!2518726 ((_ is Union!7501) (regOne!15515 r!27340))) b!2519117))

(declare-fun b!2519118 () Bool)

(declare-fun e!1595546 () Bool)

(assert (=> b!2519118 (= e!1595546 tp_is_empty!12857)))

(assert (=> b!2518726 (= tp!805137 e!1595546)))

(declare-fun b!2519119 () Bool)

(declare-fun tp!805198 () Bool)

(declare-fun tp!805199 () Bool)

(assert (=> b!2519119 (= e!1595546 (and tp!805198 tp!805199))))

(declare-fun b!2519121 () Bool)

(declare-fun tp!805200 () Bool)

(declare-fun tp!805196 () Bool)

(assert (=> b!2519121 (= e!1595546 (and tp!805200 tp!805196))))

(declare-fun b!2519120 () Bool)

(declare-fun tp!805197 () Bool)

(assert (=> b!2519120 (= e!1595546 tp!805197)))

(assert (= (and b!2518726 ((_ is ElementMatch!7501) (regTwo!15515 r!27340))) b!2519118))

(assert (= (and b!2518726 ((_ is Concat!12197) (regTwo!15515 r!27340))) b!2519119))

(assert (= (and b!2518726 ((_ is Star!7501) (regTwo!15515 r!27340))) b!2519120))

(assert (= (and b!2518726 ((_ is Union!7501) (regTwo!15515 r!27340))) b!2519121))

(declare-fun b!2519126 () Bool)

(declare-fun e!1595549 () Bool)

(declare-fun tp!805203 () Bool)

(assert (=> b!2519126 (= e!1595549 (and tp_is_empty!12857 tp!805203))))

(assert (=> b!2518722 (= tp!805141 e!1595549)))

(assert (= (and b!2518722 ((_ is Cons!29466) (t!211265 tl!4068))) b!2519126))

(declare-fun b!2519127 () Bool)

(declare-fun e!1595550 () Bool)

(assert (=> b!2519127 (= e!1595550 tp_is_empty!12857)))

(assert (=> b!2518728 (= tp!805139 e!1595550)))

(declare-fun b!2519128 () Bool)

(declare-fun tp!805206 () Bool)

(declare-fun tp!805207 () Bool)

(assert (=> b!2519128 (= e!1595550 (and tp!805206 tp!805207))))

(declare-fun b!2519130 () Bool)

(declare-fun tp!805208 () Bool)

(declare-fun tp!805204 () Bool)

(assert (=> b!2519130 (= e!1595550 (and tp!805208 tp!805204))))

(declare-fun b!2519129 () Bool)

(declare-fun tp!805205 () Bool)

(assert (=> b!2519129 (= e!1595550 tp!805205)))

(assert (= (and b!2518728 ((_ is ElementMatch!7501) (regOne!15514 r!27340))) b!2519127))

(assert (= (and b!2518728 ((_ is Concat!12197) (regOne!15514 r!27340))) b!2519128))

(assert (= (and b!2518728 ((_ is Star!7501) (regOne!15514 r!27340))) b!2519129))

(assert (= (and b!2518728 ((_ is Union!7501) (regOne!15514 r!27340))) b!2519130))

(declare-fun b!2519131 () Bool)

(declare-fun e!1595551 () Bool)

(assert (=> b!2519131 (= e!1595551 tp_is_empty!12857)))

(assert (=> b!2518728 (= tp!805138 e!1595551)))

(declare-fun b!2519132 () Bool)

(declare-fun tp!805211 () Bool)

(declare-fun tp!805212 () Bool)

(assert (=> b!2519132 (= e!1595551 (and tp!805211 tp!805212))))

(declare-fun b!2519134 () Bool)

(declare-fun tp!805213 () Bool)

(declare-fun tp!805209 () Bool)

(assert (=> b!2519134 (= e!1595551 (and tp!805213 tp!805209))))

(declare-fun b!2519133 () Bool)

(declare-fun tp!805210 () Bool)

(assert (=> b!2519133 (= e!1595551 tp!805210)))

(assert (= (and b!2518728 ((_ is ElementMatch!7501) (regTwo!15514 r!27340))) b!2519131))

(assert (= (and b!2518728 ((_ is Concat!12197) (regTwo!15514 r!27340))) b!2519132))

(assert (= (and b!2518728 ((_ is Star!7501) (regTwo!15514 r!27340))) b!2519133))

(assert (= (and b!2518728 ((_ is Union!7501) (regTwo!15514 r!27340))) b!2519134))

(declare-fun b!2519135 () Bool)

(declare-fun e!1595552 () Bool)

(assert (=> b!2519135 (= e!1595552 tp_is_empty!12857)))

(assert (=> b!2518719 (= tp!805140 e!1595552)))

(declare-fun b!2519136 () Bool)

(declare-fun tp!805216 () Bool)

(declare-fun tp!805217 () Bool)

(assert (=> b!2519136 (= e!1595552 (and tp!805216 tp!805217))))

(declare-fun b!2519138 () Bool)

(declare-fun tp!805218 () Bool)

(declare-fun tp!805214 () Bool)

(assert (=> b!2519138 (= e!1595552 (and tp!805218 tp!805214))))

(declare-fun b!2519137 () Bool)

(declare-fun tp!805215 () Bool)

(assert (=> b!2519137 (= e!1595552 tp!805215)))

(assert (= (and b!2518719 ((_ is ElementMatch!7501) (reg!7830 r!27340))) b!2519135))

(assert (= (and b!2518719 ((_ is Concat!12197) (reg!7830 r!27340))) b!2519136))

(assert (= (and b!2518719 ((_ is Star!7501) (reg!7830 r!27340))) b!2519137))

(assert (= (and b!2518719 ((_ is Union!7501) (reg!7830 r!27340))) b!2519138))

(check-sat (not bm!156837) (not b!2518886) (not b!2519132) (not d!717684) (not b!2519121) (not b!2518877) (not b!2518863) (not b!2519120) (not b!2518971) (not d!717716) (not d!717690) (not b!2518798) (not b!2518876) (not d!717708) (not b!2518860) (not b!2518972) (not d!717686) (not b!2518853) (not b!2519119) (not b!2519034) tp_is_empty!12857 (not b!2519129) (not bm!156864) (not b!2519033) (not d!717738) (not b!2519115) (not b!2518979) (not b!2518880) (not d!717696) (not b!2518976) (not b!2519134) (not bm!156836) (not b!2518855) (not d!717698) (not d!717724) (not b!2519100) (not b!2519116) (not b!2519117) (not b!2518857) (not b!2519138) (not bm!156843) (not b!2518977) (not b!2518973) (not bm!156842) (not b!2519071) (not bm!156876) (not b!2519065) (not b!2518747) (not b!2519128) (not b!2519137) (not b!2519130) (not b!2518854) (not b!2519136) (not d!717740) (not d!717732) (not d!717736) (not b!2518878) (not bm!156865) (not b!2518883) (not bm!156874) (not b!2519126) (not d!717704) (not b!2519133))
(check-sat)
