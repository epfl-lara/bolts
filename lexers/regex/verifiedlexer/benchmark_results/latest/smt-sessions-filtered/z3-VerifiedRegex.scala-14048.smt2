; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!741630 () Bool)

(assert start!741630)

(declare-fun b!7808192 () Bool)

(declare-fun e!4621787 () Bool)

(declare-fun tp_is_empty!52137 () Bool)

(assert (=> b!7808192 (= e!4621787 tp_is_empty!52137)))

(declare-fun b!7808193 () Bool)

(declare-fun res!3109576 () Bool)

(declare-fun e!4621790 () Bool)

(assert (=> b!7808193 (=> res!3109576 e!4621790)))

(declare-datatypes ((C!42108 0))(
  ( (C!42109 (val!31494 Int)) )
))
(declare-datatypes ((Regex!20891 0))(
  ( (ElementMatch!20891 (c!1437876 C!42108)) (Concat!29736 (regOne!42294 Regex!20891) (regTwo!42294 Regex!20891)) (EmptyExpr!20891) (Star!20891 (reg!21220 Regex!20891)) (EmptyLang!20891) (Union!20891 (regOne!42295 Regex!20891) (regTwo!42295 Regex!20891)) )
))
(declare-fun r1!6279 () Regex!20891)

(declare-datatypes ((List!73730 0))(
  ( (Nil!73606) (Cons!73606 (h!80054 C!42108) (t!388465 List!73730)) )
))
(declare-fun lt!2675606 () List!73730)

(declare-fun matchR!10351 (Regex!20891 List!73730) Bool)

(assert (=> b!7808193 (= res!3109576 (not (matchR!10351 r1!6279 lt!2675606)))))

(declare-fun res!3109571 () Bool)

(declare-fun e!4621791 () Bool)

(assert (=> start!741630 (=> (not res!3109571) (not e!4621791))))

(declare-fun validRegex!11305 (Regex!20891) Bool)

(assert (=> start!741630 (= res!3109571 (validRegex!11305 r1!6279))))

(assert (=> start!741630 e!4621791))

(assert (=> start!741630 e!4621787))

(declare-fun e!4621794 () Bool)

(assert (=> start!741630 e!4621794))

(declare-fun e!4621795 () Bool)

(assert (=> start!741630 e!4621795))

(declare-fun b!7808194 () Bool)

(declare-fun r2!6217 () Regex!20891)

(declare-datatypes ((tuple2!69968 0))(
  ( (tuple2!69969 (_1!38287 List!73730) (_2!38287 List!73730)) )
))
(declare-fun lt!2675608 () tuple2!69968)

(assert (=> b!7808194 (= e!4621790 (matchR!10351 r2!6217 (_2!38287 lt!2675608)))))

(declare-fun b!7808195 () Bool)

(declare-fun tp!2300441 () Bool)

(declare-fun tp!2300435 () Bool)

(assert (=> b!7808195 (= e!4621794 (and tp!2300441 tp!2300435))))

(declare-fun b!7808196 () Bool)

(declare-fun res!3109573 () Bool)

(declare-fun e!4621788 () Bool)

(assert (=> b!7808196 (=> (not res!3109573) (not e!4621788))))

(declare-fun s!14292 () List!73730)

(get-info :version)

(assert (=> b!7808196 (= res!3109573 ((_ is Cons!73606) s!14292))))

(declare-fun b!7808197 () Bool)

(assert (=> b!7808197 (= e!4621791 e!4621788)))

(declare-fun res!3109578 () Bool)

(assert (=> b!7808197 (=> (not res!3109578) (not e!4621788))))

(declare-fun lt!2675613 () Regex!20891)

(assert (=> b!7808197 (= res!3109578 (matchR!10351 lt!2675613 s!14292))))

(assert (=> b!7808197 (= lt!2675613 (Concat!29736 r1!6279 r2!6217))))

(declare-fun b!7808198 () Bool)

(declare-fun res!3109579 () Bool)

(assert (=> b!7808198 (=> res!3109579 e!4621790)))

(declare-fun isPrefix!6269 (List!73730 List!73730) Bool)

(assert (=> b!7808198 (= res!3109579 (not (isPrefix!6269 Nil!73606 lt!2675606)))))

(declare-fun b!7808199 () Bool)

(declare-fun e!4621789 () Bool)

(declare-fun e!4621793 () Bool)

(assert (=> b!7808199 (= e!4621789 e!4621793)))

(declare-fun res!3109572 () Bool)

(assert (=> b!7808199 (=> (not res!3109572) (not e!4621793))))

(declare-fun lt!2675609 () Regex!20891)

(declare-fun lt!2675614 () Regex!20891)

(assert (=> b!7808199 (= res!3109572 (= lt!2675609 (Union!20891 lt!2675614 EmptyLang!20891)))))

(declare-fun lt!2675611 () Regex!20891)

(assert (=> b!7808199 (= lt!2675614 (Concat!29736 lt!2675611 r2!6217))))

(declare-fun derivativeStep!6228 (Regex!20891 C!42108) Regex!20891)

(assert (=> b!7808199 (= lt!2675611 (derivativeStep!6228 r1!6279 (h!80054 s!14292)))))

(declare-fun b!7808200 () Bool)

(declare-fun tp!2300436 () Bool)

(declare-fun tp!2300434 () Bool)

(assert (=> b!7808200 (= e!4621787 (and tp!2300436 tp!2300434))))

(declare-fun b!7808201 () Bool)

(declare-fun tp!2300438 () Bool)

(assert (=> b!7808201 (= e!4621794 tp!2300438)))

(declare-fun b!7808202 () Bool)

(declare-fun tp!2300440 () Bool)

(declare-fun tp!2300431 () Bool)

(assert (=> b!7808202 (= e!4621787 (and tp!2300440 tp!2300431))))

(declare-fun b!7808203 () Bool)

(declare-fun res!3109581 () Bool)

(assert (=> b!7808203 (=> (not res!3109581) (not e!4621791))))

(assert (=> b!7808203 (= res!3109581 (validRegex!11305 r2!6217))))

(declare-fun b!7808204 () Bool)

(declare-fun e!4621792 () Bool)

(assert (=> b!7808204 (= e!4621793 (not e!4621792))))

(declare-fun res!3109570 () Bool)

(assert (=> b!7808204 (=> res!3109570 e!4621792)))

(declare-fun lt!2675610 () Bool)

(assert (=> b!7808204 (= res!3109570 (not lt!2675610))))

(declare-fun derivative!573 (Regex!20891 List!73730) Regex!20891)

(assert (=> b!7808204 (= (derivative!573 EmptyLang!20891 (t!388465 s!14292)) EmptyLang!20891)))

(declare-datatypes ((Unit!168620 0))(
  ( (Unit!168621) )
))
(declare-fun lt!2675605 () Unit!168620)

(declare-fun lemmaEmptyLangDerivativeIsAFixPoint!108 (Regex!20891 List!73730) Unit!168620)

(assert (=> b!7808204 (= lt!2675605 (lemmaEmptyLangDerivativeIsAFixPoint!108 EmptyLang!20891 (t!388465 s!14292)))))

(declare-fun e!4621786 () Bool)

(assert (=> b!7808204 e!4621786))

(declare-fun res!3109582 () Bool)

(assert (=> b!7808204 (=> res!3109582 e!4621786)))

(assert (=> b!7808204 (= res!3109582 lt!2675610)))

(assert (=> b!7808204 (= lt!2675610 (matchR!10351 lt!2675614 (t!388465 s!14292)))))

(declare-fun lt!2675612 () Unit!168620)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!430 (Regex!20891 Regex!20891 List!73730) Unit!168620)

(assert (=> b!7808204 (= lt!2675612 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!430 lt!2675614 EmptyLang!20891 (t!388465 s!14292)))))

(declare-fun b!7808205 () Bool)

(assert (=> b!7808205 (= e!4621788 e!4621789)))

(declare-fun res!3109580 () Bool)

(assert (=> b!7808205 (=> (not res!3109580) (not e!4621789))))

(assert (=> b!7808205 (= res!3109580 (matchR!10351 lt!2675609 (t!388465 s!14292)))))

(assert (=> b!7808205 (= lt!2675609 (derivativeStep!6228 lt!2675613 (h!80054 s!14292)))))

(declare-fun b!7808206 () Bool)

(assert (=> b!7808206 (= e!4621792 e!4621790)))

(declare-fun res!3109575 () Bool)

(assert (=> b!7808206 (=> res!3109575 e!4621790)))

(declare-fun ++!17951 (List!73730 List!73730) List!73730)

(assert (=> b!7808206 (= res!3109575 (not (= (++!17951 lt!2675606 (_2!38287 lt!2675608)) s!14292)))))

(assert (=> b!7808206 (= lt!2675606 (Cons!73606 (h!80054 s!14292) (_1!38287 lt!2675608)))))

(declare-datatypes ((Option!17778 0))(
  ( (None!17777) (Some!17777 (v!54912 tuple2!69968)) )
))
(declare-fun lt!2675607 () Option!17778)

(declare-fun get!26348 (Option!17778) tuple2!69968)

(assert (=> b!7808206 (= lt!2675608 (get!26348 lt!2675607))))

(declare-fun isDefined!14388 (Option!17778) Bool)

(assert (=> b!7808206 (isDefined!14388 lt!2675607)))

(declare-fun findConcatSeparation!3808 (Regex!20891 Regex!20891 List!73730 List!73730 List!73730) Option!17778)

(assert (=> b!7808206 (= lt!2675607 (findConcatSeparation!3808 lt!2675611 r2!6217 Nil!73606 (t!388465 s!14292) (t!388465 s!14292)))))

(declare-fun lt!2675604 () Unit!168620)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!390 (Regex!20891 Regex!20891 List!73730) Unit!168620)

(assert (=> b!7808206 (= lt!2675604 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!390 lt!2675611 r2!6217 (t!388465 s!14292)))))

(declare-fun b!7808207 () Bool)

(declare-fun tp!2300439 () Bool)

(assert (=> b!7808207 (= e!4621795 (and tp_is_empty!52137 tp!2300439))))

(declare-fun b!7808208 () Bool)

(declare-fun res!3109577 () Bool)

(assert (=> b!7808208 (=> (not res!3109577) (not e!4621789))))

(declare-fun nullable!9275 (Regex!20891) Bool)

(assert (=> b!7808208 (= res!3109577 (not (nullable!9275 r1!6279)))))

(declare-fun b!7808209 () Bool)

(declare-fun res!3109574 () Bool)

(assert (=> b!7808209 (=> res!3109574 e!4621790)))

(assert (=> b!7808209 (= res!3109574 (not (= (++!17951 Nil!73606 s!14292) s!14292)))))

(declare-fun b!7808210 () Bool)

(declare-fun tp!2300433 () Bool)

(declare-fun tp!2300432 () Bool)

(assert (=> b!7808210 (= e!4621794 (and tp!2300433 tp!2300432))))

(declare-fun b!7808211 () Bool)

(assert (=> b!7808211 (= e!4621786 (matchR!10351 EmptyLang!20891 (t!388465 s!14292)))))

(declare-fun b!7808212 () Bool)

(declare-fun tp!2300437 () Bool)

(assert (=> b!7808212 (= e!4621787 tp!2300437)))

(declare-fun b!7808213 () Bool)

(assert (=> b!7808213 (= e!4621794 tp_is_empty!52137)))

(assert (= (and start!741630 res!3109571) b!7808203))

(assert (= (and b!7808203 res!3109581) b!7808197))

(assert (= (and b!7808197 res!3109578) b!7808196))

(assert (= (and b!7808196 res!3109573) b!7808205))

(assert (= (and b!7808205 res!3109580) b!7808208))

(assert (= (and b!7808208 res!3109577) b!7808199))

(assert (= (and b!7808199 res!3109572) b!7808204))

(assert (= (and b!7808204 (not res!3109582)) b!7808211))

(assert (= (and b!7808204 (not res!3109570)) b!7808206))

(assert (= (and b!7808206 (not res!3109575)) b!7808198))

(assert (= (and b!7808198 (not res!3109579)) b!7808209))

(assert (= (and b!7808209 (not res!3109574)) b!7808193))

(assert (= (and b!7808193 (not res!3109576)) b!7808194))

(assert (= (and start!741630 ((_ is ElementMatch!20891) r1!6279)) b!7808192))

(assert (= (and start!741630 ((_ is Concat!29736) r1!6279)) b!7808200))

(assert (= (and start!741630 ((_ is Star!20891) r1!6279)) b!7808212))

(assert (= (and start!741630 ((_ is Union!20891) r1!6279)) b!7808202))

(assert (= (and start!741630 ((_ is ElementMatch!20891) r2!6217)) b!7808213))

(assert (= (and start!741630 ((_ is Concat!29736) r2!6217)) b!7808210))

(assert (= (and start!741630 ((_ is Star!20891) r2!6217)) b!7808201))

(assert (= (and start!741630 ((_ is Union!20891) r2!6217)) b!7808195))

(assert (= (and start!741630 ((_ is Cons!73606) s!14292)) b!7808207))

(declare-fun m!8240700 () Bool)

(assert (=> b!7808209 m!8240700))

(declare-fun m!8240702 () Bool)

(assert (=> b!7808199 m!8240702))

(declare-fun m!8240704 () Bool)

(assert (=> b!7808193 m!8240704))

(declare-fun m!8240706 () Bool)

(assert (=> b!7808205 m!8240706))

(declare-fun m!8240708 () Bool)

(assert (=> b!7808205 m!8240708))

(declare-fun m!8240710 () Bool)

(assert (=> b!7808211 m!8240710))

(declare-fun m!8240712 () Bool)

(assert (=> b!7808203 m!8240712))

(declare-fun m!8240714 () Bool)

(assert (=> b!7808208 m!8240714))

(declare-fun m!8240716 () Bool)

(assert (=> b!7808198 m!8240716))

(declare-fun m!8240718 () Bool)

(assert (=> b!7808204 m!8240718))

(declare-fun m!8240720 () Bool)

(assert (=> b!7808204 m!8240720))

(declare-fun m!8240722 () Bool)

(assert (=> b!7808204 m!8240722))

(declare-fun m!8240724 () Bool)

(assert (=> b!7808204 m!8240724))

(declare-fun m!8240726 () Bool)

(assert (=> b!7808206 m!8240726))

(declare-fun m!8240728 () Bool)

(assert (=> b!7808206 m!8240728))

(declare-fun m!8240730 () Bool)

(assert (=> b!7808206 m!8240730))

(declare-fun m!8240732 () Bool)

(assert (=> b!7808206 m!8240732))

(declare-fun m!8240734 () Bool)

(assert (=> b!7808206 m!8240734))

(declare-fun m!8240736 () Bool)

(assert (=> b!7808197 m!8240736))

(declare-fun m!8240738 () Bool)

(assert (=> b!7808194 m!8240738))

(declare-fun m!8240740 () Bool)

(assert (=> start!741630 m!8240740))

(check-sat (not b!7808203) (not b!7808202) (not b!7808201) (not b!7808195) (not b!7808199) (not b!7808209) (not b!7808193) (not b!7808200) (not b!7808205) (not b!7808198) (not b!7808210) (not b!7808206) (not b!7808194) (not b!7808208) (not b!7808211) (not b!7808204) (not b!7808212) (not b!7808197) (not b!7808207) tp_is_empty!52137 (not start!741630))
(check-sat)
(get-model)

(declare-fun d!2348441 () Bool)

(declare-fun nullableFct!3653 (Regex!20891) Bool)

(assert (=> d!2348441 (= (nullable!9275 r1!6279) (nullableFct!3653 r1!6279))))

(declare-fun bs!1966584 () Bool)

(assert (= bs!1966584 d!2348441))

(declare-fun m!8240742 () Bool)

(assert (=> bs!1966584 m!8240742))

(assert (=> b!7808208 d!2348441))

(declare-fun b!7808254 () Bool)

(declare-fun res!3109607 () Bool)

(declare-fun e!4621819 () Bool)

(assert (=> b!7808254 (=> res!3109607 e!4621819)))

(assert (=> b!7808254 (= res!3109607 (not ((_ is ElementMatch!20891) lt!2675613)))))

(declare-fun e!4621821 () Bool)

(assert (=> b!7808254 (= e!4621821 e!4621819)))

(declare-fun b!7808255 () Bool)

(declare-fun res!3109608 () Bool)

(declare-fun e!4621816 () Bool)

(assert (=> b!7808255 (=> res!3109608 e!4621816)))

(declare-fun isEmpty!42260 (List!73730) Bool)

(declare-fun tail!15506 (List!73730) List!73730)

(assert (=> b!7808255 (= res!3109608 (not (isEmpty!42260 (tail!15506 s!14292))))))

(declare-fun b!7808256 () Bool)

(declare-fun e!4621818 () Bool)

(assert (=> b!7808256 (= e!4621818 e!4621821)))

(declare-fun c!1437888 () Bool)

(assert (=> b!7808256 (= c!1437888 ((_ is EmptyLang!20891) lt!2675613))))

(declare-fun bm!724274 () Bool)

(declare-fun call!724279 () Bool)

(assert (=> bm!724274 (= call!724279 (isEmpty!42260 s!14292))))

(declare-fun b!7808257 () Bool)

(declare-fun lt!2675620 () Bool)

(assert (=> b!7808257 (= e!4621821 (not lt!2675620))))

(declare-fun b!7808258 () Bool)

(declare-fun e!4621822 () Bool)

(assert (=> b!7808258 (= e!4621822 e!4621816)))

(declare-fun res!3109606 () Bool)

(assert (=> b!7808258 (=> res!3109606 e!4621816)))

(assert (=> b!7808258 (= res!3109606 call!724279)))

(declare-fun b!7808259 () Bool)

(declare-fun res!3109609 () Bool)

(assert (=> b!7808259 (=> res!3109609 e!4621819)))

(declare-fun e!4621817 () Bool)

(assert (=> b!7808259 (= res!3109609 e!4621817)))

(declare-fun res!3109612 () Bool)

(assert (=> b!7808259 (=> (not res!3109612) (not e!4621817))))

(assert (=> b!7808259 (= res!3109612 lt!2675620)))

(declare-fun b!7808260 () Bool)

(declare-fun head!15965 (List!73730) C!42108)

(assert (=> b!7808260 (= e!4621817 (= (head!15965 s!14292) (c!1437876 lt!2675613)))))

(declare-fun b!7808261 () Bool)

(declare-fun e!4621820 () Bool)

(assert (=> b!7808261 (= e!4621820 (nullable!9275 lt!2675613))))

(declare-fun b!7808262 () Bool)

(assert (=> b!7808262 (= e!4621816 (not (= (head!15965 s!14292) (c!1437876 lt!2675613))))))

(declare-fun b!7808263 () Bool)

(declare-fun res!3109605 () Bool)

(assert (=> b!7808263 (=> (not res!3109605) (not e!4621817))))

(assert (=> b!7808263 (= res!3109605 (isEmpty!42260 (tail!15506 s!14292)))))

(declare-fun b!7808264 () Bool)

(assert (=> b!7808264 (= e!4621819 e!4621822)))

(declare-fun res!3109610 () Bool)

(assert (=> b!7808264 (=> (not res!3109610) (not e!4621822))))

(assert (=> b!7808264 (= res!3109610 (not lt!2675620))))

(declare-fun d!2348443 () Bool)

(assert (=> d!2348443 e!4621818))

(declare-fun c!1437887 () Bool)

(assert (=> d!2348443 (= c!1437887 ((_ is EmptyExpr!20891) lt!2675613))))

(assert (=> d!2348443 (= lt!2675620 e!4621820)))

(declare-fun c!1437886 () Bool)

(assert (=> d!2348443 (= c!1437886 (isEmpty!42260 s!14292))))

(assert (=> d!2348443 (validRegex!11305 lt!2675613)))

(assert (=> d!2348443 (= (matchR!10351 lt!2675613 s!14292) lt!2675620)))

(declare-fun b!7808265 () Bool)

(assert (=> b!7808265 (= e!4621820 (matchR!10351 (derivativeStep!6228 lt!2675613 (head!15965 s!14292)) (tail!15506 s!14292)))))

(declare-fun b!7808266 () Bool)

(assert (=> b!7808266 (= e!4621818 (= lt!2675620 call!724279))))

(declare-fun b!7808267 () Bool)

(declare-fun res!3109611 () Bool)

(assert (=> b!7808267 (=> (not res!3109611) (not e!4621817))))

(assert (=> b!7808267 (= res!3109611 (not call!724279))))

(assert (= (and d!2348443 c!1437886) b!7808261))

(assert (= (and d!2348443 (not c!1437886)) b!7808265))

(assert (= (and d!2348443 c!1437887) b!7808266))

(assert (= (and d!2348443 (not c!1437887)) b!7808256))

(assert (= (and b!7808256 c!1437888) b!7808257))

(assert (= (and b!7808256 (not c!1437888)) b!7808254))

(assert (= (and b!7808254 (not res!3109607)) b!7808259))

(assert (= (and b!7808259 res!3109612) b!7808267))

(assert (= (and b!7808267 res!3109611) b!7808263))

(assert (= (and b!7808263 res!3109605) b!7808260))

(assert (= (and b!7808259 (not res!3109609)) b!7808264))

(assert (= (and b!7808264 res!3109610) b!7808258))

(assert (= (and b!7808258 (not res!3109606)) b!7808255))

(assert (= (and b!7808255 (not res!3109608)) b!7808262))

(assert (= (or b!7808266 b!7808258 b!7808267) bm!724274))

(declare-fun m!8240758 () Bool)

(assert (=> b!7808255 m!8240758))

(assert (=> b!7808255 m!8240758))

(declare-fun m!8240760 () Bool)

(assert (=> b!7808255 m!8240760))

(declare-fun m!8240762 () Bool)

(assert (=> d!2348443 m!8240762))

(declare-fun m!8240764 () Bool)

(assert (=> d!2348443 m!8240764))

(assert (=> b!7808263 m!8240758))

(assert (=> b!7808263 m!8240758))

(assert (=> b!7808263 m!8240760))

(assert (=> bm!724274 m!8240762))

(declare-fun m!8240766 () Bool)

(assert (=> b!7808262 m!8240766))

(assert (=> b!7808265 m!8240766))

(assert (=> b!7808265 m!8240766))

(declare-fun m!8240768 () Bool)

(assert (=> b!7808265 m!8240768))

(assert (=> b!7808265 m!8240758))

(assert (=> b!7808265 m!8240768))

(assert (=> b!7808265 m!8240758))

(declare-fun m!8240770 () Bool)

(assert (=> b!7808265 m!8240770))

(assert (=> b!7808260 m!8240766))

(declare-fun m!8240772 () Bool)

(assert (=> b!7808261 m!8240772))

(assert (=> b!7808197 d!2348443))

(declare-fun d!2348449 () Bool)

(declare-fun isEmpty!42261 (Option!17778) Bool)

(assert (=> d!2348449 (= (isDefined!14388 lt!2675607) (not (isEmpty!42261 lt!2675607)))))

(declare-fun bs!1966585 () Bool)

(assert (= bs!1966585 d!2348449))

(declare-fun m!8240774 () Bool)

(assert (=> bs!1966585 m!8240774))

(assert (=> b!7808206 d!2348449))

(declare-fun d!2348451 () Bool)

(assert (=> d!2348451 (isDefined!14388 (findConcatSeparation!3808 lt!2675611 r2!6217 Nil!73606 (t!388465 s!14292) (t!388465 s!14292)))))

(declare-fun lt!2675625 () Unit!168620)

(declare-fun choose!59576 (Regex!20891 Regex!20891 List!73730) Unit!168620)

(assert (=> d!2348451 (= lt!2675625 (choose!59576 lt!2675611 r2!6217 (t!388465 s!14292)))))

(assert (=> d!2348451 (validRegex!11305 lt!2675611)))

(assert (=> d!2348451 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!390 lt!2675611 r2!6217 (t!388465 s!14292)) lt!2675625)))

(declare-fun bs!1966586 () Bool)

(assert (= bs!1966586 d!2348451))

(assert (=> bs!1966586 m!8240728))

(assert (=> bs!1966586 m!8240728))

(declare-fun m!8240776 () Bool)

(assert (=> bs!1966586 m!8240776))

(declare-fun m!8240778 () Bool)

(assert (=> bs!1966586 m!8240778))

(declare-fun m!8240780 () Bool)

(assert (=> bs!1966586 m!8240780))

(assert (=> b!7808206 d!2348451))

(declare-fun b!7808308 () Bool)

(declare-fun res!3109618 () Bool)

(declare-fun e!4621843 () Bool)

(assert (=> b!7808308 (=> (not res!3109618) (not e!4621843))))

(declare-fun lt!2675629 () List!73730)

(declare-fun size!42733 (List!73730) Int)

(assert (=> b!7808308 (= res!3109618 (= (size!42733 lt!2675629) (+ (size!42733 lt!2675606) (size!42733 (_2!38287 lt!2675608)))))))

(declare-fun b!7808309 () Bool)

(assert (=> b!7808309 (= e!4621843 (or (not (= (_2!38287 lt!2675608) Nil!73606)) (= lt!2675629 lt!2675606)))))

(declare-fun b!7808306 () Bool)

(declare-fun e!4621842 () List!73730)

(assert (=> b!7808306 (= e!4621842 (_2!38287 lt!2675608))))

(declare-fun b!7808307 () Bool)

(assert (=> b!7808307 (= e!4621842 (Cons!73606 (h!80054 lt!2675606) (++!17951 (t!388465 lt!2675606) (_2!38287 lt!2675608))))))

(declare-fun d!2348453 () Bool)

(assert (=> d!2348453 e!4621843))

(declare-fun res!3109617 () Bool)

(assert (=> d!2348453 (=> (not res!3109617) (not e!4621843))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15630 (List!73730) (InoxSet C!42108))

(assert (=> d!2348453 (= res!3109617 (= (content!15630 lt!2675629) ((_ map or) (content!15630 lt!2675606) (content!15630 (_2!38287 lt!2675608)))))))

(assert (=> d!2348453 (= lt!2675629 e!4621842)))

(declare-fun c!1437906 () Bool)

(assert (=> d!2348453 (= c!1437906 ((_ is Nil!73606) lt!2675606))))

(assert (=> d!2348453 (= (++!17951 lt!2675606 (_2!38287 lt!2675608)) lt!2675629)))

(assert (= (and d!2348453 c!1437906) b!7808306))

(assert (= (and d!2348453 (not c!1437906)) b!7808307))

(assert (= (and d!2348453 res!3109617) b!7808308))

(assert (= (and b!7808308 res!3109618) b!7808309))

(declare-fun m!8240790 () Bool)

(assert (=> b!7808308 m!8240790))

(declare-fun m!8240792 () Bool)

(assert (=> b!7808308 m!8240792))

(declare-fun m!8240794 () Bool)

(assert (=> b!7808308 m!8240794))

(declare-fun m!8240796 () Bool)

(assert (=> b!7808307 m!8240796))

(declare-fun m!8240798 () Bool)

(assert (=> d!2348453 m!8240798))

(declare-fun m!8240800 () Bool)

(assert (=> d!2348453 m!8240800))

(declare-fun m!8240802 () Bool)

(assert (=> d!2348453 m!8240802))

(assert (=> b!7808206 d!2348453))

(declare-fun b!7808374 () Bool)

(declare-fun res!3109657 () Bool)

(declare-fun e!4621877 () Bool)

(assert (=> b!7808374 (=> (not res!3109657) (not e!4621877))))

(declare-fun lt!2675642 () Option!17778)

(assert (=> b!7808374 (= res!3109657 (matchR!10351 r2!6217 (_2!38287 (get!26348 lt!2675642))))))

(declare-fun b!7808375 () Bool)

(declare-fun lt!2675640 () Unit!168620)

(declare-fun lt!2675641 () Unit!168620)

(assert (=> b!7808375 (= lt!2675640 lt!2675641)))

(assert (=> b!7808375 (= (++!17951 (++!17951 Nil!73606 (Cons!73606 (h!80054 (t!388465 s!14292)) Nil!73606)) (t!388465 (t!388465 s!14292))) (t!388465 s!14292))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3421 (List!73730 C!42108 List!73730 List!73730) Unit!168620)

(assert (=> b!7808375 (= lt!2675641 (lemmaMoveElementToOtherListKeepsConcatEq!3421 Nil!73606 (h!80054 (t!388465 s!14292)) (t!388465 (t!388465 s!14292)) (t!388465 s!14292)))))

(declare-fun e!4621881 () Option!17778)

(assert (=> b!7808375 (= e!4621881 (findConcatSeparation!3808 lt!2675611 r2!6217 (++!17951 Nil!73606 (Cons!73606 (h!80054 (t!388465 s!14292)) Nil!73606)) (t!388465 (t!388465 s!14292)) (t!388465 s!14292)))))

(declare-fun b!7808376 () Bool)

(declare-fun e!4621878 () Bool)

(assert (=> b!7808376 (= e!4621878 (matchR!10351 r2!6217 (t!388465 s!14292)))))

(declare-fun b!7808377 () Bool)

(declare-fun res!3109659 () Bool)

(assert (=> b!7808377 (=> (not res!3109659) (not e!4621877))))

(assert (=> b!7808377 (= res!3109659 (matchR!10351 lt!2675611 (_1!38287 (get!26348 lt!2675642))))))

(declare-fun b!7808378 () Bool)

(declare-fun e!4621879 () Option!17778)

(assert (=> b!7808378 (= e!4621879 e!4621881)))

(declare-fun c!1437922 () Bool)

(assert (=> b!7808378 (= c!1437922 ((_ is Nil!73606) (t!388465 s!14292)))))

(declare-fun d!2348457 () Bool)

(declare-fun e!4621880 () Bool)

(assert (=> d!2348457 e!4621880))

(declare-fun res!3109655 () Bool)

(assert (=> d!2348457 (=> res!3109655 e!4621880)))

(assert (=> d!2348457 (= res!3109655 e!4621877)))

(declare-fun res!3109656 () Bool)

(assert (=> d!2348457 (=> (not res!3109656) (not e!4621877))))

(assert (=> d!2348457 (= res!3109656 (isDefined!14388 lt!2675642))))

(assert (=> d!2348457 (= lt!2675642 e!4621879)))

(declare-fun c!1437921 () Bool)

(assert (=> d!2348457 (= c!1437921 e!4621878)))

(declare-fun res!3109658 () Bool)

(assert (=> d!2348457 (=> (not res!3109658) (not e!4621878))))

(assert (=> d!2348457 (= res!3109658 (matchR!10351 lt!2675611 Nil!73606))))

(assert (=> d!2348457 (validRegex!11305 lt!2675611)))

(assert (=> d!2348457 (= (findConcatSeparation!3808 lt!2675611 r2!6217 Nil!73606 (t!388465 s!14292) (t!388465 s!14292)) lt!2675642)))

(declare-fun b!7808379 () Bool)

(assert (=> b!7808379 (= e!4621880 (not (isDefined!14388 lt!2675642)))))

(declare-fun b!7808380 () Bool)

(assert (=> b!7808380 (= e!4621881 None!17777)))

(declare-fun b!7808381 () Bool)

(assert (=> b!7808381 (= e!4621879 (Some!17777 (tuple2!69969 Nil!73606 (t!388465 s!14292))))))

(declare-fun b!7808382 () Bool)

(assert (=> b!7808382 (= e!4621877 (= (++!17951 (_1!38287 (get!26348 lt!2675642)) (_2!38287 (get!26348 lt!2675642))) (t!388465 s!14292)))))

(assert (= (and d!2348457 res!3109658) b!7808376))

(assert (= (and d!2348457 c!1437921) b!7808381))

(assert (= (and d!2348457 (not c!1437921)) b!7808378))

(assert (= (and b!7808378 c!1437922) b!7808380))

(assert (= (and b!7808378 (not c!1437922)) b!7808375))

(assert (= (and d!2348457 res!3109656) b!7808377))

(assert (= (and b!7808377 res!3109659) b!7808374))

(assert (= (and b!7808374 res!3109657) b!7808382))

(assert (= (and d!2348457 (not res!3109655)) b!7808379))

(declare-fun m!8240836 () Bool)

(assert (=> b!7808375 m!8240836))

(assert (=> b!7808375 m!8240836))

(declare-fun m!8240838 () Bool)

(assert (=> b!7808375 m!8240838))

(declare-fun m!8240840 () Bool)

(assert (=> b!7808375 m!8240840))

(assert (=> b!7808375 m!8240836))

(declare-fun m!8240842 () Bool)

(assert (=> b!7808375 m!8240842))

(declare-fun m!8240844 () Bool)

(assert (=> b!7808376 m!8240844))

(declare-fun m!8240846 () Bool)

(assert (=> b!7808374 m!8240846))

(declare-fun m!8240848 () Bool)

(assert (=> b!7808374 m!8240848))

(assert (=> b!7808382 m!8240846))

(declare-fun m!8240850 () Bool)

(assert (=> b!7808382 m!8240850))

(assert (=> b!7808377 m!8240846))

(declare-fun m!8240852 () Bool)

(assert (=> b!7808377 m!8240852))

(declare-fun m!8240854 () Bool)

(assert (=> d!2348457 m!8240854))

(declare-fun m!8240856 () Bool)

(assert (=> d!2348457 m!8240856))

(assert (=> d!2348457 m!8240780))

(assert (=> b!7808379 m!8240854))

(assert (=> b!7808206 d!2348457))

(declare-fun d!2348467 () Bool)

(assert (=> d!2348467 (= (get!26348 lt!2675607) (v!54912 lt!2675607))))

(assert (=> b!7808206 d!2348467))

(declare-fun bm!724298 () Bool)

(declare-fun c!1437943 () Bool)

(declare-fun call!724304 () Regex!20891)

(assert (=> bm!724298 (= call!724304 (derivativeStep!6228 (ite c!1437943 (regOne!42295 r1!6279) (regOne!42294 r1!6279)) (h!80054 s!14292)))))

(declare-fun b!7808430 () Bool)

(declare-fun c!1437941 () Bool)

(assert (=> b!7808430 (= c!1437941 (nullable!9275 (regOne!42294 r1!6279)))))

(declare-fun e!4621908 () Regex!20891)

(declare-fun e!4621910 () Regex!20891)

(assert (=> b!7808430 (= e!4621908 e!4621910)))

(declare-fun d!2348469 () Bool)

(declare-fun lt!2675654 () Regex!20891)

(assert (=> d!2348469 (validRegex!11305 lt!2675654)))

(declare-fun e!4621909 () Regex!20891)

(assert (=> d!2348469 (= lt!2675654 e!4621909)))

(declare-fun c!1437942 () Bool)

(assert (=> d!2348469 (= c!1437942 (or ((_ is EmptyExpr!20891) r1!6279) ((_ is EmptyLang!20891) r1!6279)))))

(assert (=> d!2348469 (validRegex!11305 r1!6279)))

(assert (=> d!2348469 (= (derivativeStep!6228 r1!6279 (h!80054 s!14292)) lt!2675654)))

(declare-fun b!7808431 () Bool)

(assert (=> b!7808431 (= c!1437943 ((_ is Union!20891) r1!6279))))

(declare-fun e!4621911 () Regex!20891)

(declare-fun e!4621907 () Regex!20891)

(assert (=> b!7808431 (= e!4621911 e!4621907)))

(declare-fun call!724306 () Regex!20891)

(declare-fun b!7808432 () Bool)

(assert (=> b!7808432 (= e!4621910 (Union!20891 (Concat!29736 call!724304 (regTwo!42294 r1!6279)) call!724306))))

(declare-fun b!7808433 () Bool)

(declare-fun call!724303 () Regex!20891)

(assert (=> b!7808433 (= e!4621907 (Union!20891 call!724304 call!724303))))

(declare-fun bm!724299 () Bool)

(declare-fun call!724305 () Regex!20891)

(assert (=> bm!724299 (= call!724306 call!724305)))

(declare-fun b!7808434 () Bool)

(assert (=> b!7808434 (= e!4621908 (Concat!29736 call!724305 r1!6279))))

(declare-fun b!7808435 () Bool)

(assert (=> b!7808435 (= e!4621909 e!4621911)))

(declare-fun c!1437940 () Bool)

(assert (=> b!7808435 (= c!1437940 ((_ is ElementMatch!20891) r1!6279))))

(declare-fun b!7808436 () Bool)

(assert (=> b!7808436 (= e!4621910 (Union!20891 (Concat!29736 call!724306 (regTwo!42294 r1!6279)) EmptyLang!20891))))

(declare-fun bm!724300 () Bool)

(assert (=> bm!724300 (= call!724305 call!724303)))

(declare-fun b!7808437 () Bool)

(assert (=> b!7808437 (= e!4621909 EmptyLang!20891)))

(declare-fun b!7808438 () Bool)

(assert (=> b!7808438 (= e!4621911 (ite (= (h!80054 s!14292) (c!1437876 r1!6279)) EmptyExpr!20891 EmptyLang!20891))))

(declare-fun b!7808439 () Bool)

(assert (=> b!7808439 (= e!4621907 e!4621908)))

(declare-fun c!1437939 () Bool)

(assert (=> b!7808439 (= c!1437939 ((_ is Star!20891) r1!6279))))

(declare-fun bm!724301 () Bool)

(assert (=> bm!724301 (= call!724303 (derivativeStep!6228 (ite c!1437943 (regTwo!42295 r1!6279) (ite c!1437939 (reg!21220 r1!6279) (ite c!1437941 (regTwo!42294 r1!6279) (regOne!42294 r1!6279)))) (h!80054 s!14292)))))

(assert (= (and d!2348469 c!1437942) b!7808437))

(assert (= (and d!2348469 (not c!1437942)) b!7808435))

(assert (= (and b!7808435 c!1437940) b!7808438))

(assert (= (and b!7808435 (not c!1437940)) b!7808431))

(assert (= (and b!7808431 c!1437943) b!7808433))

(assert (= (and b!7808431 (not c!1437943)) b!7808439))

(assert (= (and b!7808439 c!1437939) b!7808434))

(assert (= (and b!7808439 (not c!1437939)) b!7808430))

(assert (= (and b!7808430 c!1437941) b!7808432))

(assert (= (and b!7808430 (not c!1437941)) b!7808436))

(assert (= (or b!7808432 b!7808436) bm!724299))

(assert (= (or b!7808434 bm!724299) bm!724300))

(assert (= (or b!7808433 bm!724300) bm!724301))

(assert (= (or b!7808433 b!7808432) bm!724298))

(declare-fun m!8240882 () Bool)

(assert (=> bm!724298 m!8240882))

(declare-fun m!8240884 () Bool)

(assert (=> b!7808430 m!8240884))

(declare-fun m!8240886 () Bool)

(assert (=> d!2348469 m!8240886))

(assert (=> d!2348469 m!8240740))

(declare-fun m!8240888 () Bool)

(assert (=> bm!724301 m!8240888))

(assert (=> b!7808199 d!2348469))

(declare-fun b!7808442 () Bool)

(declare-fun res!3109676 () Bool)

(declare-fun e!4621913 () Bool)

(assert (=> b!7808442 (=> (not res!3109676) (not e!4621913))))

(declare-fun lt!2675655 () List!73730)

(assert (=> b!7808442 (= res!3109676 (= (size!42733 lt!2675655) (+ (size!42733 Nil!73606) (size!42733 s!14292))))))

(declare-fun b!7808443 () Bool)

(assert (=> b!7808443 (= e!4621913 (or (not (= s!14292 Nil!73606)) (= lt!2675655 Nil!73606)))))

(declare-fun b!7808440 () Bool)

(declare-fun e!4621912 () List!73730)

(assert (=> b!7808440 (= e!4621912 s!14292)))

(declare-fun b!7808441 () Bool)

(assert (=> b!7808441 (= e!4621912 (Cons!73606 (h!80054 Nil!73606) (++!17951 (t!388465 Nil!73606) s!14292)))))

(declare-fun d!2348473 () Bool)

(assert (=> d!2348473 e!4621913))

(declare-fun res!3109675 () Bool)

(assert (=> d!2348473 (=> (not res!3109675) (not e!4621913))))

(assert (=> d!2348473 (= res!3109675 (= (content!15630 lt!2675655) ((_ map or) (content!15630 Nil!73606) (content!15630 s!14292))))))

(assert (=> d!2348473 (= lt!2675655 e!4621912)))

(declare-fun c!1437944 () Bool)

(assert (=> d!2348473 (= c!1437944 ((_ is Nil!73606) Nil!73606))))

(assert (=> d!2348473 (= (++!17951 Nil!73606 s!14292) lt!2675655)))

(assert (= (and d!2348473 c!1437944) b!7808440))

(assert (= (and d!2348473 (not c!1437944)) b!7808441))

(assert (= (and d!2348473 res!3109675) b!7808442))

(assert (= (and b!7808442 res!3109676) b!7808443))

(declare-fun m!8240890 () Bool)

(assert (=> b!7808442 m!8240890))

(declare-fun m!8240892 () Bool)

(assert (=> b!7808442 m!8240892))

(declare-fun m!8240894 () Bool)

(assert (=> b!7808442 m!8240894))

(declare-fun m!8240896 () Bool)

(assert (=> b!7808441 m!8240896))

(declare-fun m!8240898 () Bool)

(assert (=> d!2348473 m!8240898))

(declare-fun m!8240900 () Bool)

(assert (=> d!2348473 m!8240900))

(declare-fun m!8240902 () Bool)

(assert (=> d!2348473 m!8240902))

(assert (=> b!7808209 d!2348473))

(declare-fun b!7808454 () Bool)

(declare-fun e!4621921 () Bool)

(assert (=> b!7808454 (= e!4621921 (isPrefix!6269 (tail!15506 Nil!73606) (tail!15506 lt!2675606)))))

(declare-fun d!2348475 () Bool)

(declare-fun e!4621920 () Bool)

(assert (=> d!2348475 e!4621920))

(declare-fun res!3109685 () Bool)

(assert (=> d!2348475 (=> res!3109685 e!4621920)))

(declare-fun lt!2675661 () Bool)

(assert (=> d!2348475 (= res!3109685 (not lt!2675661))))

(declare-fun e!4621922 () Bool)

(assert (=> d!2348475 (= lt!2675661 e!4621922)))

(declare-fun res!3109686 () Bool)

(assert (=> d!2348475 (=> res!3109686 e!4621922)))

(assert (=> d!2348475 (= res!3109686 ((_ is Nil!73606) Nil!73606))))

(assert (=> d!2348475 (= (isPrefix!6269 Nil!73606 lt!2675606) lt!2675661)))

(declare-fun b!7808453 () Bool)

(declare-fun res!3109687 () Bool)

(assert (=> b!7808453 (=> (not res!3109687) (not e!4621921))))

(assert (=> b!7808453 (= res!3109687 (= (head!15965 Nil!73606) (head!15965 lt!2675606)))))

(declare-fun b!7808452 () Bool)

(assert (=> b!7808452 (= e!4621922 e!4621921)))

(declare-fun res!3109688 () Bool)

(assert (=> b!7808452 (=> (not res!3109688) (not e!4621921))))

(assert (=> b!7808452 (= res!3109688 (not ((_ is Nil!73606) lt!2675606)))))

(declare-fun b!7808455 () Bool)

(assert (=> b!7808455 (= e!4621920 (>= (size!42733 lt!2675606) (size!42733 Nil!73606)))))

(assert (= (and d!2348475 (not res!3109686)) b!7808452))

(assert (= (and b!7808452 res!3109688) b!7808453))

(assert (= (and b!7808453 res!3109687) b!7808454))

(assert (= (and d!2348475 (not res!3109685)) b!7808455))

(declare-fun m!8240908 () Bool)

(assert (=> b!7808454 m!8240908))

(declare-fun m!8240910 () Bool)

(assert (=> b!7808454 m!8240910))

(assert (=> b!7808454 m!8240908))

(assert (=> b!7808454 m!8240910))

(declare-fun m!8240912 () Bool)

(assert (=> b!7808454 m!8240912))

(declare-fun m!8240914 () Bool)

(assert (=> b!7808453 m!8240914))

(declare-fun m!8240916 () Bool)

(assert (=> b!7808453 m!8240916))

(assert (=> b!7808455 m!8240792))

(assert (=> b!7808455 m!8240892))

(assert (=> b!7808198 d!2348475))

(declare-fun c!1437954 () Bool)

(declare-fun c!1437953 () Bool)

(declare-fun bm!724314 () Bool)

(declare-fun call!724321 () Bool)

(assert (=> bm!724314 (= call!724321 (validRegex!11305 (ite c!1437953 (reg!21220 r1!6279) (ite c!1437954 (regOne!42295 r1!6279) (regOne!42294 r1!6279)))))))

(declare-fun bm!724315 () Bool)

(declare-fun call!724320 () Bool)

(assert (=> bm!724315 (= call!724320 (validRegex!11305 (ite c!1437954 (regTwo!42295 r1!6279) (regTwo!42294 r1!6279))))))

(declare-fun b!7808504 () Bool)

(declare-fun e!4621963 () Bool)

(declare-fun e!4621962 () Bool)

(assert (=> b!7808504 (= e!4621963 e!4621962)))

(declare-fun res!3109723 () Bool)

(assert (=> b!7808504 (=> (not res!3109723) (not e!4621962))))

(declare-fun call!724319 () Bool)

(assert (=> b!7808504 (= res!3109723 call!724319)))

(declare-fun b!7808505 () Bool)

(declare-fun res!3109722 () Bool)

(declare-fun e!4621960 () Bool)

(assert (=> b!7808505 (=> (not res!3109722) (not e!4621960))))

(assert (=> b!7808505 (= res!3109722 call!724319)))

(declare-fun e!4621964 () Bool)

(assert (=> b!7808505 (= e!4621964 e!4621960)))

(declare-fun b!7808506 () Bool)

(declare-fun res!3109725 () Bool)

(assert (=> b!7808506 (=> res!3109725 e!4621963)))

(assert (=> b!7808506 (= res!3109725 (not ((_ is Concat!29736) r1!6279)))))

(assert (=> b!7808506 (= e!4621964 e!4621963)))

(declare-fun b!7808507 () Bool)

(declare-fun e!4621965 () Bool)

(declare-fun e!4621966 () Bool)

(assert (=> b!7808507 (= e!4621965 e!4621966)))

(assert (=> b!7808507 (= c!1437953 ((_ is Star!20891) r1!6279))))

(declare-fun d!2348479 () Bool)

(declare-fun res!3109721 () Bool)

(assert (=> d!2348479 (=> res!3109721 e!4621965)))

(assert (=> d!2348479 (= res!3109721 ((_ is ElementMatch!20891) r1!6279))))

(assert (=> d!2348479 (= (validRegex!11305 r1!6279) e!4621965)))

(declare-fun b!7808508 () Bool)

(assert (=> b!7808508 (= e!4621962 call!724320)))

(declare-fun b!7808509 () Bool)

(declare-fun e!4621961 () Bool)

(assert (=> b!7808509 (= e!4621966 e!4621961)))

(declare-fun res!3109724 () Bool)

(assert (=> b!7808509 (= res!3109724 (not (nullable!9275 (reg!21220 r1!6279))))))

(assert (=> b!7808509 (=> (not res!3109724) (not e!4621961))))

(declare-fun b!7808510 () Bool)

(assert (=> b!7808510 (= e!4621961 call!724321)))

(declare-fun b!7808511 () Bool)

(assert (=> b!7808511 (= e!4621966 e!4621964)))

(assert (=> b!7808511 (= c!1437954 ((_ is Union!20891) r1!6279))))

(declare-fun b!7808512 () Bool)

(assert (=> b!7808512 (= e!4621960 call!724320)))

(declare-fun bm!724316 () Bool)

(assert (=> bm!724316 (= call!724319 call!724321)))

(assert (= (and d!2348479 (not res!3109721)) b!7808507))

(assert (= (and b!7808507 c!1437953) b!7808509))

(assert (= (and b!7808507 (not c!1437953)) b!7808511))

(assert (= (and b!7808509 res!3109724) b!7808510))

(assert (= (and b!7808511 c!1437954) b!7808505))

(assert (= (and b!7808511 (not c!1437954)) b!7808506))

(assert (= (and b!7808505 res!3109722) b!7808512))

(assert (= (and b!7808506 (not res!3109725)) b!7808504))

(assert (= (and b!7808504 res!3109723) b!7808508))

(assert (= (or b!7808505 b!7808504) bm!724316))

(assert (= (or b!7808512 b!7808508) bm!724315))

(assert (= (or b!7808510 bm!724316) bm!724314))

(declare-fun m!8240928 () Bool)

(assert (=> bm!724314 m!8240928))

(declare-fun m!8240930 () Bool)

(assert (=> bm!724315 m!8240930))

(declare-fun m!8240932 () Bool)

(assert (=> b!7808509 m!8240932))

(assert (=> start!741630 d!2348479))

(declare-fun b!7808513 () Bool)

(declare-fun res!3109728 () Bool)

(declare-fun e!4621970 () Bool)

(assert (=> b!7808513 (=> res!3109728 e!4621970)))

(assert (=> b!7808513 (= res!3109728 (not ((_ is ElementMatch!20891) EmptyLang!20891)))))

(declare-fun e!4621972 () Bool)

(assert (=> b!7808513 (= e!4621972 e!4621970)))

(declare-fun b!7808514 () Bool)

(declare-fun res!3109729 () Bool)

(declare-fun e!4621967 () Bool)

(assert (=> b!7808514 (=> res!3109729 e!4621967)))

(assert (=> b!7808514 (= res!3109729 (not (isEmpty!42260 (tail!15506 (t!388465 s!14292)))))))

(declare-fun b!7808515 () Bool)

(declare-fun e!4621969 () Bool)

(assert (=> b!7808515 (= e!4621969 e!4621972)))

(declare-fun c!1437957 () Bool)

(assert (=> b!7808515 (= c!1437957 ((_ is EmptyLang!20891) EmptyLang!20891))))

(declare-fun bm!724317 () Bool)

(declare-fun call!724322 () Bool)

(assert (=> bm!724317 (= call!724322 (isEmpty!42260 (t!388465 s!14292)))))

(declare-fun b!7808516 () Bool)

(declare-fun lt!2675665 () Bool)

(assert (=> b!7808516 (= e!4621972 (not lt!2675665))))

(declare-fun b!7808517 () Bool)

(declare-fun e!4621973 () Bool)

(assert (=> b!7808517 (= e!4621973 e!4621967)))

(declare-fun res!3109727 () Bool)

(assert (=> b!7808517 (=> res!3109727 e!4621967)))

(assert (=> b!7808517 (= res!3109727 call!724322)))

(declare-fun b!7808518 () Bool)

(declare-fun res!3109730 () Bool)

(assert (=> b!7808518 (=> res!3109730 e!4621970)))

(declare-fun e!4621968 () Bool)

(assert (=> b!7808518 (= res!3109730 e!4621968)))

(declare-fun res!3109733 () Bool)

(assert (=> b!7808518 (=> (not res!3109733) (not e!4621968))))

(assert (=> b!7808518 (= res!3109733 lt!2675665)))

(declare-fun b!7808519 () Bool)

(assert (=> b!7808519 (= e!4621968 (= (head!15965 (t!388465 s!14292)) (c!1437876 EmptyLang!20891)))))

(declare-fun b!7808520 () Bool)

(declare-fun e!4621971 () Bool)

(assert (=> b!7808520 (= e!4621971 (nullable!9275 EmptyLang!20891))))

(declare-fun b!7808521 () Bool)

(assert (=> b!7808521 (= e!4621967 (not (= (head!15965 (t!388465 s!14292)) (c!1437876 EmptyLang!20891))))))

(declare-fun b!7808522 () Bool)

(declare-fun res!3109726 () Bool)

(assert (=> b!7808522 (=> (not res!3109726) (not e!4621968))))

(assert (=> b!7808522 (= res!3109726 (isEmpty!42260 (tail!15506 (t!388465 s!14292))))))

(declare-fun b!7808523 () Bool)

(assert (=> b!7808523 (= e!4621970 e!4621973)))

(declare-fun res!3109731 () Bool)

(assert (=> b!7808523 (=> (not res!3109731) (not e!4621973))))

(assert (=> b!7808523 (= res!3109731 (not lt!2675665))))

(declare-fun d!2348483 () Bool)

(assert (=> d!2348483 e!4621969))

(declare-fun c!1437956 () Bool)

(assert (=> d!2348483 (= c!1437956 ((_ is EmptyExpr!20891) EmptyLang!20891))))

(assert (=> d!2348483 (= lt!2675665 e!4621971)))

(declare-fun c!1437955 () Bool)

(assert (=> d!2348483 (= c!1437955 (isEmpty!42260 (t!388465 s!14292)))))

(assert (=> d!2348483 (validRegex!11305 EmptyLang!20891)))

(assert (=> d!2348483 (= (matchR!10351 EmptyLang!20891 (t!388465 s!14292)) lt!2675665)))

(declare-fun b!7808524 () Bool)

(assert (=> b!7808524 (= e!4621971 (matchR!10351 (derivativeStep!6228 EmptyLang!20891 (head!15965 (t!388465 s!14292))) (tail!15506 (t!388465 s!14292))))))

(declare-fun b!7808525 () Bool)

(assert (=> b!7808525 (= e!4621969 (= lt!2675665 call!724322))))

(declare-fun b!7808526 () Bool)

(declare-fun res!3109732 () Bool)

(assert (=> b!7808526 (=> (not res!3109732) (not e!4621968))))

(assert (=> b!7808526 (= res!3109732 (not call!724322))))

(assert (= (and d!2348483 c!1437955) b!7808520))

(assert (= (and d!2348483 (not c!1437955)) b!7808524))

(assert (= (and d!2348483 c!1437956) b!7808525))

(assert (= (and d!2348483 (not c!1437956)) b!7808515))

(assert (= (and b!7808515 c!1437957) b!7808516))

(assert (= (and b!7808515 (not c!1437957)) b!7808513))

(assert (= (and b!7808513 (not res!3109728)) b!7808518))

(assert (= (and b!7808518 res!3109733) b!7808526))

(assert (= (and b!7808526 res!3109732) b!7808522))

(assert (= (and b!7808522 res!3109726) b!7808519))

(assert (= (and b!7808518 (not res!3109730)) b!7808523))

(assert (= (and b!7808523 res!3109731) b!7808517))

(assert (= (and b!7808517 (not res!3109727)) b!7808514))

(assert (= (and b!7808514 (not res!3109729)) b!7808521))

(assert (= (or b!7808525 b!7808517 b!7808526) bm!724317))

(declare-fun m!8240934 () Bool)

(assert (=> b!7808514 m!8240934))

(assert (=> b!7808514 m!8240934))

(declare-fun m!8240936 () Bool)

(assert (=> b!7808514 m!8240936))

(declare-fun m!8240938 () Bool)

(assert (=> d!2348483 m!8240938))

(declare-fun m!8240940 () Bool)

(assert (=> d!2348483 m!8240940))

(assert (=> b!7808522 m!8240934))

(assert (=> b!7808522 m!8240934))

(assert (=> b!7808522 m!8240936))

(assert (=> bm!724317 m!8240938))

(declare-fun m!8240942 () Bool)

(assert (=> b!7808521 m!8240942))

(assert (=> b!7808524 m!8240942))

(assert (=> b!7808524 m!8240942))

(declare-fun m!8240944 () Bool)

(assert (=> b!7808524 m!8240944))

(assert (=> b!7808524 m!8240934))

(assert (=> b!7808524 m!8240944))

(assert (=> b!7808524 m!8240934))

(declare-fun m!8240946 () Bool)

(assert (=> b!7808524 m!8240946))

(assert (=> b!7808519 m!8240942))

(declare-fun m!8240948 () Bool)

(assert (=> b!7808520 m!8240948))

(assert (=> b!7808211 d!2348483))

(declare-fun b!7808536 () Bool)

(declare-fun res!3109741 () Bool)

(declare-fun e!4621984 () Bool)

(assert (=> b!7808536 (=> res!3109741 e!4621984)))

(assert (=> b!7808536 (= res!3109741 (not ((_ is ElementMatch!20891) lt!2675609)))))

(declare-fun e!4621986 () Bool)

(assert (=> b!7808536 (= e!4621986 e!4621984)))

(declare-fun b!7808537 () Bool)

(declare-fun res!3109742 () Bool)

(declare-fun e!4621981 () Bool)

(assert (=> b!7808537 (=> res!3109742 e!4621981)))

(assert (=> b!7808537 (= res!3109742 (not (isEmpty!42260 (tail!15506 (t!388465 s!14292)))))))

(declare-fun b!7808538 () Bool)

(declare-fun e!4621983 () Bool)

(assert (=> b!7808538 (= e!4621983 e!4621986)))

(declare-fun c!1437962 () Bool)

(assert (=> b!7808538 (= c!1437962 ((_ is EmptyLang!20891) lt!2675609))))

(declare-fun bm!724321 () Bool)

(declare-fun call!724326 () Bool)

(assert (=> bm!724321 (= call!724326 (isEmpty!42260 (t!388465 s!14292)))))

(declare-fun b!7808539 () Bool)

(declare-fun lt!2675666 () Bool)

(assert (=> b!7808539 (= e!4621986 (not lt!2675666))))

(declare-fun b!7808540 () Bool)

(declare-fun e!4621987 () Bool)

(assert (=> b!7808540 (= e!4621987 e!4621981)))

(declare-fun res!3109740 () Bool)

(assert (=> b!7808540 (=> res!3109740 e!4621981)))

(assert (=> b!7808540 (= res!3109740 call!724326)))

(declare-fun b!7808541 () Bool)

(declare-fun res!3109743 () Bool)

(assert (=> b!7808541 (=> res!3109743 e!4621984)))

(declare-fun e!4621982 () Bool)

(assert (=> b!7808541 (= res!3109743 e!4621982)))

(declare-fun res!3109746 () Bool)

(assert (=> b!7808541 (=> (not res!3109746) (not e!4621982))))

(assert (=> b!7808541 (= res!3109746 lt!2675666)))

(declare-fun b!7808542 () Bool)

(assert (=> b!7808542 (= e!4621982 (= (head!15965 (t!388465 s!14292)) (c!1437876 lt!2675609)))))

(declare-fun b!7808543 () Bool)

(declare-fun e!4621985 () Bool)

(assert (=> b!7808543 (= e!4621985 (nullable!9275 lt!2675609))))

(declare-fun b!7808544 () Bool)

(assert (=> b!7808544 (= e!4621981 (not (= (head!15965 (t!388465 s!14292)) (c!1437876 lt!2675609))))))

(declare-fun b!7808545 () Bool)

(declare-fun res!3109739 () Bool)

(assert (=> b!7808545 (=> (not res!3109739) (not e!4621982))))

(assert (=> b!7808545 (= res!3109739 (isEmpty!42260 (tail!15506 (t!388465 s!14292))))))

(declare-fun b!7808546 () Bool)

(assert (=> b!7808546 (= e!4621984 e!4621987)))

(declare-fun res!3109744 () Bool)

(assert (=> b!7808546 (=> (not res!3109744) (not e!4621987))))

(assert (=> b!7808546 (= res!3109744 (not lt!2675666))))

(declare-fun d!2348485 () Bool)

(assert (=> d!2348485 e!4621983))

(declare-fun c!1437961 () Bool)

(assert (=> d!2348485 (= c!1437961 ((_ is EmptyExpr!20891) lt!2675609))))

(assert (=> d!2348485 (= lt!2675666 e!4621985)))

(declare-fun c!1437960 () Bool)

(assert (=> d!2348485 (= c!1437960 (isEmpty!42260 (t!388465 s!14292)))))

(assert (=> d!2348485 (validRegex!11305 lt!2675609)))

(assert (=> d!2348485 (= (matchR!10351 lt!2675609 (t!388465 s!14292)) lt!2675666)))

(declare-fun b!7808547 () Bool)

(assert (=> b!7808547 (= e!4621985 (matchR!10351 (derivativeStep!6228 lt!2675609 (head!15965 (t!388465 s!14292))) (tail!15506 (t!388465 s!14292))))))

(declare-fun b!7808548 () Bool)

(assert (=> b!7808548 (= e!4621983 (= lt!2675666 call!724326))))

(declare-fun b!7808549 () Bool)

(declare-fun res!3109745 () Bool)

(assert (=> b!7808549 (=> (not res!3109745) (not e!4621982))))

(assert (=> b!7808549 (= res!3109745 (not call!724326))))

(assert (= (and d!2348485 c!1437960) b!7808543))

(assert (= (and d!2348485 (not c!1437960)) b!7808547))

(assert (= (and d!2348485 c!1437961) b!7808548))

(assert (= (and d!2348485 (not c!1437961)) b!7808538))

(assert (= (and b!7808538 c!1437962) b!7808539))

(assert (= (and b!7808538 (not c!1437962)) b!7808536))

(assert (= (and b!7808536 (not res!3109741)) b!7808541))

(assert (= (and b!7808541 res!3109746) b!7808549))

(assert (= (and b!7808549 res!3109745) b!7808545))

(assert (= (and b!7808545 res!3109739) b!7808542))

(assert (= (and b!7808541 (not res!3109743)) b!7808546))

(assert (= (and b!7808546 res!3109744) b!7808540))

(assert (= (and b!7808540 (not res!3109740)) b!7808537))

(assert (= (and b!7808537 (not res!3109742)) b!7808544))

(assert (= (or b!7808548 b!7808540 b!7808549) bm!724321))

(assert (=> b!7808537 m!8240934))

(assert (=> b!7808537 m!8240934))

(assert (=> b!7808537 m!8240936))

(assert (=> d!2348485 m!8240938))

(declare-fun m!8240956 () Bool)

(assert (=> d!2348485 m!8240956))

(assert (=> b!7808545 m!8240934))

(assert (=> b!7808545 m!8240934))

(assert (=> b!7808545 m!8240936))

(assert (=> bm!724321 m!8240938))

(assert (=> b!7808544 m!8240942))

(assert (=> b!7808547 m!8240942))

(assert (=> b!7808547 m!8240942))

(declare-fun m!8240958 () Bool)

(assert (=> b!7808547 m!8240958))

(assert (=> b!7808547 m!8240934))

(assert (=> b!7808547 m!8240958))

(assert (=> b!7808547 m!8240934))

(declare-fun m!8240960 () Bool)

(assert (=> b!7808547 m!8240960))

(assert (=> b!7808542 m!8240942))

(declare-fun m!8240962 () Bool)

(assert (=> b!7808543 m!8240962))

(assert (=> b!7808205 d!2348485))

(declare-fun call!724331 () Regex!20891)

(declare-fun bm!724325 () Bool)

(declare-fun c!1437969 () Bool)

(assert (=> bm!724325 (= call!724331 (derivativeStep!6228 (ite c!1437969 (regOne!42295 lt!2675613) (regOne!42294 lt!2675613)) (h!80054 s!14292)))))

(declare-fun b!7808559 () Bool)

(declare-fun c!1437967 () Bool)

(assert (=> b!7808559 (= c!1437967 (nullable!9275 (regOne!42294 lt!2675613)))))

(declare-fun e!4621996 () Regex!20891)

(declare-fun e!4621998 () Regex!20891)

(assert (=> b!7808559 (= e!4621996 e!4621998)))

(declare-fun d!2348489 () Bool)

(declare-fun lt!2675667 () Regex!20891)

(assert (=> d!2348489 (validRegex!11305 lt!2675667)))

(declare-fun e!4621997 () Regex!20891)

(assert (=> d!2348489 (= lt!2675667 e!4621997)))

(declare-fun c!1437968 () Bool)

(assert (=> d!2348489 (= c!1437968 (or ((_ is EmptyExpr!20891) lt!2675613) ((_ is EmptyLang!20891) lt!2675613)))))

(assert (=> d!2348489 (validRegex!11305 lt!2675613)))

(assert (=> d!2348489 (= (derivativeStep!6228 lt!2675613 (h!80054 s!14292)) lt!2675667)))

(declare-fun b!7808560 () Bool)

(assert (=> b!7808560 (= c!1437969 ((_ is Union!20891) lt!2675613))))

(declare-fun e!4621999 () Regex!20891)

(declare-fun e!4621995 () Regex!20891)

(assert (=> b!7808560 (= e!4621999 e!4621995)))

(declare-fun call!724333 () Regex!20891)

(declare-fun b!7808561 () Bool)

(assert (=> b!7808561 (= e!4621998 (Union!20891 (Concat!29736 call!724331 (regTwo!42294 lt!2675613)) call!724333))))

(declare-fun b!7808562 () Bool)

(declare-fun call!724330 () Regex!20891)

(assert (=> b!7808562 (= e!4621995 (Union!20891 call!724331 call!724330))))

(declare-fun bm!724326 () Bool)

(declare-fun call!724332 () Regex!20891)

(assert (=> bm!724326 (= call!724333 call!724332)))

(declare-fun b!7808563 () Bool)

(assert (=> b!7808563 (= e!4621996 (Concat!29736 call!724332 lt!2675613))))

(declare-fun b!7808564 () Bool)

(assert (=> b!7808564 (= e!4621997 e!4621999)))

(declare-fun c!1437966 () Bool)

(assert (=> b!7808564 (= c!1437966 ((_ is ElementMatch!20891) lt!2675613))))

(declare-fun b!7808565 () Bool)

(assert (=> b!7808565 (= e!4621998 (Union!20891 (Concat!29736 call!724333 (regTwo!42294 lt!2675613)) EmptyLang!20891))))

(declare-fun bm!724327 () Bool)

(assert (=> bm!724327 (= call!724332 call!724330)))

(declare-fun b!7808566 () Bool)

(assert (=> b!7808566 (= e!4621997 EmptyLang!20891)))

(declare-fun b!7808567 () Bool)

(assert (=> b!7808567 (= e!4621999 (ite (= (h!80054 s!14292) (c!1437876 lt!2675613)) EmptyExpr!20891 EmptyLang!20891))))

(declare-fun b!7808568 () Bool)

(assert (=> b!7808568 (= e!4621995 e!4621996)))

(declare-fun c!1437965 () Bool)

(assert (=> b!7808568 (= c!1437965 ((_ is Star!20891) lt!2675613))))

(declare-fun bm!724328 () Bool)

(assert (=> bm!724328 (= call!724330 (derivativeStep!6228 (ite c!1437969 (regTwo!42295 lt!2675613) (ite c!1437965 (reg!21220 lt!2675613) (ite c!1437967 (regTwo!42294 lt!2675613) (regOne!42294 lt!2675613)))) (h!80054 s!14292)))))

(assert (= (and d!2348489 c!1437968) b!7808566))

(assert (= (and d!2348489 (not c!1437968)) b!7808564))

(assert (= (and b!7808564 c!1437966) b!7808567))

(assert (= (and b!7808564 (not c!1437966)) b!7808560))

(assert (= (and b!7808560 c!1437969) b!7808562))

(assert (= (and b!7808560 (not c!1437969)) b!7808568))

(assert (= (and b!7808568 c!1437965) b!7808563))

(assert (= (and b!7808568 (not c!1437965)) b!7808559))

(assert (= (and b!7808559 c!1437967) b!7808561))

(assert (= (and b!7808559 (not c!1437967)) b!7808565))

(assert (= (or b!7808561 b!7808565) bm!724326))

(assert (= (or b!7808563 bm!724326) bm!724327))

(assert (= (or b!7808562 bm!724327) bm!724328))

(assert (= (or b!7808562 b!7808561) bm!724325))

(declare-fun m!8240970 () Bool)

(assert (=> bm!724325 m!8240970))

(declare-fun m!8240972 () Bool)

(assert (=> b!7808559 m!8240972))

(declare-fun m!8240974 () Bool)

(assert (=> d!2348489 m!8240974))

(assert (=> d!2348489 m!8240764))

(declare-fun m!8240976 () Bool)

(assert (=> bm!724328 m!8240976))

(assert (=> b!7808205 d!2348489))

(declare-fun b!7808583 () Bool)

(declare-fun res!3109762 () Bool)

(declare-fun e!4622010 () Bool)

(assert (=> b!7808583 (=> res!3109762 e!4622010)))

(assert (=> b!7808583 (= res!3109762 (not ((_ is ElementMatch!20891) r2!6217)))))

(declare-fun e!4622012 () Bool)

(assert (=> b!7808583 (= e!4622012 e!4622010)))

(declare-fun b!7808584 () Bool)

(declare-fun res!3109763 () Bool)

(declare-fun e!4622007 () Bool)

(assert (=> b!7808584 (=> res!3109763 e!4622007)))

(assert (=> b!7808584 (= res!3109763 (not (isEmpty!42260 (tail!15506 (_2!38287 lt!2675608)))))))

(declare-fun b!7808585 () Bool)

(declare-fun e!4622009 () Bool)

(assert (=> b!7808585 (= e!4622009 e!4622012)))

(declare-fun c!1437975 () Bool)

(assert (=> b!7808585 (= c!1437975 ((_ is EmptyLang!20891) r2!6217))))

(declare-fun bm!724330 () Bool)

(declare-fun call!724335 () Bool)

(assert (=> bm!724330 (= call!724335 (isEmpty!42260 (_2!38287 lt!2675608)))))

(declare-fun b!7808586 () Bool)

(declare-fun lt!2675669 () Bool)

(assert (=> b!7808586 (= e!4622012 (not lt!2675669))))

(declare-fun b!7808587 () Bool)

(declare-fun e!4622013 () Bool)

(assert (=> b!7808587 (= e!4622013 e!4622007)))

(declare-fun res!3109761 () Bool)

(assert (=> b!7808587 (=> res!3109761 e!4622007)))

(assert (=> b!7808587 (= res!3109761 call!724335)))

(declare-fun b!7808588 () Bool)

(declare-fun res!3109764 () Bool)

(assert (=> b!7808588 (=> res!3109764 e!4622010)))

(declare-fun e!4622008 () Bool)

(assert (=> b!7808588 (= res!3109764 e!4622008)))

(declare-fun res!3109767 () Bool)

(assert (=> b!7808588 (=> (not res!3109767) (not e!4622008))))

(assert (=> b!7808588 (= res!3109767 lt!2675669)))

(declare-fun b!7808589 () Bool)

(assert (=> b!7808589 (= e!4622008 (= (head!15965 (_2!38287 lt!2675608)) (c!1437876 r2!6217)))))

(declare-fun b!7808590 () Bool)

(declare-fun e!4622011 () Bool)

(assert (=> b!7808590 (= e!4622011 (nullable!9275 r2!6217))))

(declare-fun b!7808591 () Bool)

(assert (=> b!7808591 (= e!4622007 (not (= (head!15965 (_2!38287 lt!2675608)) (c!1437876 r2!6217))))))

(declare-fun b!7808592 () Bool)

(declare-fun res!3109760 () Bool)

(assert (=> b!7808592 (=> (not res!3109760) (not e!4622008))))

(assert (=> b!7808592 (= res!3109760 (isEmpty!42260 (tail!15506 (_2!38287 lt!2675608))))))

(declare-fun b!7808593 () Bool)

(assert (=> b!7808593 (= e!4622010 e!4622013)))

(declare-fun res!3109765 () Bool)

(assert (=> b!7808593 (=> (not res!3109765) (not e!4622013))))

(assert (=> b!7808593 (= res!3109765 (not lt!2675669))))

(declare-fun d!2348493 () Bool)

(assert (=> d!2348493 e!4622009))

(declare-fun c!1437974 () Bool)

(assert (=> d!2348493 (= c!1437974 ((_ is EmptyExpr!20891) r2!6217))))

(assert (=> d!2348493 (= lt!2675669 e!4622011)))

(declare-fun c!1437973 () Bool)

(assert (=> d!2348493 (= c!1437973 (isEmpty!42260 (_2!38287 lt!2675608)))))

(assert (=> d!2348493 (validRegex!11305 r2!6217)))

(assert (=> d!2348493 (= (matchR!10351 r2!6217 (_2!38287 lt!2675608)) lt!2675669)))

(declare-fun b!7808594 () Bool)

(assert (=> b!7808594 (= e!4622011 (matchR!10351 (derivativeStep!6228 r2!6217 (head!15965 (_2!38287 lt!2675608))) (tail!15506 (_2!38287 lt!2675608))))))

(declare-fun b!7808595 () Bool)

(assert (=> b!7808595 (= e!4622009 (= lt!2675669 call!724335))))

(declare-fun b!7808596 () Bool)

(declare-fun res!3109766 () Bool)

(assert (=> b!7808596 (=> (not res!3109766) (not e!4622008))))

(assert (=> b!7808596 (= res!3109766 (not call!724335))))

(assert (= (and d!2348493 c!1437973) b!7808590))

(assert (= (and d!2348493 (not c!1437973)) b!7808594))

(assert (= (and d!2348493 c!1437974) b!7808595))

(assert (= (and d!2348493 (not c!1437974)) b!7808585))

(assert (= (and b!7808585 c!1437975) b!7808586))

(assert (= (and b!7808585 (not c!1437975)) b!7808583))

(assert (= (and b!7808583 (not res!3109762)) b!7808588))

(assert (= (and b!7808588 res!3109767) b!7808596))

(assert (= (and b!7808596 res!3109766) b!7808592))

(assert (= (and b!7808592 res!3109760) b!7808589))

(assert (= (and b!7808588 (not res!3109764)) b!7808593))

(assert (= (and b!7808593 res!3109765) b!7808587))

(assert (= (and b!7808587 (not res!3109761)) b!7808584))

(assert (= (and b!7808584 (not res!3109763)) b!7808591))

(assert (= (or b!7808595 b!7808587 b!7808596) bm!724330))

(declare-fun m!8240994 () Bool)

(assert (=> b!7808584 m!8240994))

(assert (=> b!7808584 m!8240994))

(declare-fun m!8240996 () Bool)

(assert (=> b!7808584 m!8240996))

(declare-fun m!8240998 () Bool)

(assert (=> d!2348493 m!8240998))

(assert (=> d!2348493 m!8240712))

(assert (=> b!7808592 m!8240994))

(assert (=> b!7808592 m!8240994))

(assert (=> b!7808592 m!8240996))

(assert (=> bm!724330 m!8240998))

(declare-fun m!8241000 () Bool)

(assert (=> b!7808591 m!8241000))

(assert (=> b!7808594 m!8241000))

(assert (=> b!7808594 m!8241000))

(declare-fun m!8241002 () Bool)

(assert (=> b!7808594 m!8241002))

(assert (=> b!7808594 m!8240994))

(assert (=> b!7808594 m!8241002))

(assert (=> b!7808594 m!8240994))

(declare-fun m!8241004 () Bool)

(assert (=> b!7808594 m!8241004))

(assert (=> b!7808589 m!8241000))

(declare-fun m!8241006 () Bool)

(assert (=> b!7808590 m!8241006))

(assert (=> b!7808194 d!2348493))

(declare-fun d!2348497 () Bool)

(declare-fun lt!2675674 () Regex!20891)

(assert (=> d!2348497 (validRegex!11305 lt!2675674)))

(declare-fun e!4622028 () Regex!20891)

(assert (=> d!2348497 (= lt!2675674 e!4622028)))

(declare-fun c!1437986 () Bool)

(assert (=> d!2348497 (= c!1437986 ((_ is Cons!73606) (t!388465 s!14292)))))

(assert (=> d!2348497 (validRegex!11305 EmptyLang!20891)))

(assert (=> d!2348497 (= (derivative!573 EmptyLang!20891 (t!388465 s!14292)) lt!2675674)))

(declare-fun b!7808625 () Bool)

(assert (=> b!7808625 (= e!4622028 (derivative!573 (derivativeStep!6228 EmptyLang!20891 (h!80054 (t!388465 s!14292))) (t!388465 (t!388465 s!14292))))))

(declare-fun b!7808626 () Bool)

(assert (=> b!7808626 (= e!4622028 EmptyLang!20891)))

(assert (= (and d!2348497 c!1437986) b!7808625))

(assert (= (and d!2348497 (not c!1437986)) b!7808626))

(declare-fun m!8241026 () Bool)

(assert (=> d!2348497 m!8241026))

(assert (=> d!2348497 m!8240940))

(declare-fun m!8241028 () Bool)

(assert (=> b!7808625 m!8241028))

(assert (=> b!7808625 m!8241028))

(declare-fun m!8241030 () Bool)

(assert (=> b!7808625 m!8241030))

(assert (=> b!7808204 d!2348497))

(declare-fun d!2348505 () Bool)

(assert (=> d!2348505 (= (derivative!573 EmptyLang!20891 (t!388465 s!14292)) EmptyLang!20891)))

(declare-fun lt!2675680 () Unit!168620)

(declare-fun choose!59580 (Regex!20891 List!73730) Unit!168620)

(assert (=> d!2348505 (= lt!2675680 (choose!59580 EmptyLang!20891 (t!388465 s!14292)))))

(assert (=> d!2348505 (= EmptyLang!20891 EmptyLang!20891)))

(assert (=> d!2348505 (= (lemmaEmptyLangDerivativeIsAFixPoint!108 EmptyLang!20891 (t!388465 s!14292)) lt!2675680)))

(declare-fun bs!1966590 () Bool)

(assert (= bs!1966590 d!2348505))

(assert (=> bs!1966590 m!8240718))

(declare-fun m!8241038 () Bool)

(assert (=> bs!1966590 m!8241038))

(assert (=> b!7808204 d!2348505))

(declare-fun b!7808633 () Bool)

(declare-fun res!3109778 () Bool)

(declare-fun e!4622035 () Bool)

(assert (=> b!7808633 (=> res!3109778 e!4622035)))

(assert (=> b!7808633 (= res!3109778 (not ((_ is ElementMatch!20891) lt!2675614)))))

(declare-fun e!4622037 () Bool)

(assert (=> b!7808633 (= e!4622037 e!4622035)))

(declare-fun b!7808634 () Bool)

(declare-fun res!3109779 () Bool)

(declare-fun e!4622032 () Bool)

(assert (=> b!7808634 (=> res!3109779 e!4622032)))

(assert (=> b!7808634 (= res!3109779 (not (isEmpty!42260 (tail!15506 (t!388465 s!14292)))))))

(declare-fun b!7808635 () Bool)

(declare-fun e!4622034 () Bool)

(assert (=> b!7808635 (= e!4622034 e!4622037)))

(declare-fun c!1437992 () Bool)

(assert (=> b!7808635 (= c!1437992 ((_ is EmptyLang!20891) lt!2675614))))

(declare-fun bm!724336 () Bool)

(declare-fun call!724341 () Bool)

(assert (=> bm!724336 (= call!724341 (isEmpty!42260 (t!388465 s!14292)))))

(declare-fun b!7808636 () Bool)

(declare-fun lt!2675681 () Bool)

(assert (=> b!7808636 (= e!4622037 (not lt!2675681))))

(declare-fun b!7808637 () Bool)

(declare-fun e!4622038 () Bool)

(assert (=> b!7808637 (= e!4622038 e!4622032)))

(declare-fun res!3109777 () Bool)

(assert (=> b!7808637 (=> res!3109777 e!4622032)))

(assert (=> b!7808637 (= res!3109777 call!724341)))

(declare-fun b!7808638 () Bool)

(declare-fun res!3109780 () Bool)

(assert (=> b!7808638 (=> res!3109780 e!4622035)))

(declare-fun e!4622033 () Bool)

(assert (=> b!7808638 (= res!3109780 e!4622033)))

(declare-fun res!3109783 () Bool)

(assert (=> b!7808638 (=> (not res!3109783) (not e!4622033))))

(assert (=> b!7808638 (= res!3109783 lt!2675681)))

(declare-fun b!7808639 () Bool)

(assert (=> b!7808639 (= e!4622033 (= (head!15965 (t!388465 s!14292)) (c!1437876 lt!2675614)))))

(declare-fun b!7808640 () Bool)

(declare-fun e!4622036 () Bool)

(assert (=> b!7808640 (= e!4622036 (nullable!9275 lt!2675614))))

(declare-fun b!7808641 () Bool)

(assert (=> b!7808641 (= e!4622032 (not (= (head!15965 (t!388465 s!14292)) (c!1437876 lt!2675614))))))

(declare-fun b!7808642 () Bool)

(declare-fun res!3109776 () Bool)

(assert (=> b!7808642 (=> (not res!3109776) (not e!4622033))))

(assert (=> b!7808642 (= res!3109776 (isEmpty!42260 (tail!15506 (t!388465 s!14292))))))

(declare-fun b!7808643 () Bool)

(assert (=> b!7808643 (= e!4622035 e!4622038)))

(declare-fun res!3109781 () Bool)

(assert (=> b!7808643 (=> (not res!3109781) (not e!4622038))))

(assert (=> b!7808643 (= res!3109781 (not lt!2675681))))

(declare-fun d!2348509 () Bool)

(assert (=> d!2348509 e!4622034))

(declare-fun c!1437991 () Bool)

(assert (=> d!2348509 (= c!1437991 ((_ is EmptyExpr!20891) lt!2675614))))

(assert (=> d!2348509 (= lt!2675681 e!4622036)))

(declare-fun c!1437990 () Bool)

(assert (=> d!2348509 (= c!1437990 (isEmpty!42260 (t!388465 s!14292)))))

(assert (=> d!2348509 (validRegex!11305 lt!2675614)))

(assert (=> d!2348509 (= (matchR!10351 lt!2675614 (t!388465 s!14292)) lt!2675681)))

(declare-fun b!7808644 () Bool)

(assert (=> b!7808644 (= e!4622036 (matchR!10351 (derivativeStep!6228 lt!2675614 (head!15965 (t!388465 s!14292))) (tail!15506 (t!388465 s!14292))))))

(declare-fun b!7808645 () Bool)

(assert (=> b!7808645 (= e!4622034 (= lt!2675681 call!724341))))

(declare-fun b!7808646 () Bool)

(declare-fun res!3109782 () Bool)

(assert (=> b!7808646 (=> (not res!3109782) (not e!4622033))))

(assert (=> b!7808646 (= res!3109782 (not call!724341))))

(assert (= (and d!2348509 c!1437990) b!7808640))

(assert (= (and d!2348509 (not c!1437990)) b!7808644))

(assert (= (and d!2348509 c!1437991) b!7808645))

(assert (= (and d!2348509 (not c!1437991)) b!7808635))

(assert (= (and b!7808635 c!1437992) b!7808636))

(assert (= (and b!7808635 (not c!1437992)) b!7808633))

(assert (= (and b!7808633 (not res!3109778)) b!7808638))

(assert (= (and b!7808638 res!3109783) b!7808646))

(assert (= (and b!7808646 res!3109782) b!7808642))

(assert (= (and b!7808642 res!3109776) b!7808639))

(assert (= (and b!7808638 (not res!3109780)) b!7808643))

(assert (= (and b!7808643 res!3109781) b!7808637))

(assert (= (and b!7808637 (not res!3109777)) b!7808634))

(assert (= (and b!7808634 (not res!3109779)) b!7808641))

(assert (= (or b!7808645 b!7808637 b!7808646) bm!724336))

(assert (=> b!7808634 m!8240934))

(assert (=> b!7808634 m!8240934))

(assert (=> b!7808634 m!8240936))

(assert (=> d!2348509 m!8240938))

(declare-fun m!8241040 () Bool)

(assert (=> d!2348509 m!8241040))

(assert (=> b!7808642 m!8240934))

(assert (=> b!7808642 m!8240934))

(assert (=> b!7808642 m!8240936))

(assert (=> bm!724336 m!8240938))

(assert (=> b!7808641 m!8240942))

(assert (=> b!7808644 m!8240942))

(assert (=> b!7808644 m!8240942))

(declare-fun m!8241042 () Bool)

(assert (=> b!7808644 m!8241042))

(assert (=> b!7808644 m!8240934))

(assert (=> b!7808644 m!8241042))

(assert (=> b!7808644 m!8240934))

(declare-fun m!8241044 () Bool)

(assert (=> b!7808644 m!8241044))

(assert (=> b!7808639 m!8240942))

(declare-fun m!8241046 () Bool)

(assert (=> b!7808640 m!8241046))

(assert (=> b!7808204 d!2348509))

(declare-fun d!2348511 () Bool)

(declare-fun e!4622050 () Bool)

(assert (=> d!2348511 e!4622050))

(declare-fun res!3109797 () Bool)

(assert (=> d!2348511 (=> res!3109797 e!4622050)))

(assert (=> d!2348511 (= res!3109797 (matchR!10351 lt!2675614 (t!388465 s!14292)))))

(declare-fun lt!2675688 () Unit!168620)

(declare-fun choose!59581 (Regex!20891 Regex!20891 List!73730) Unit!168620)

(assert (=> d!2348511 (= lt!2675688 (choose!59581 lt!2675614 EmptyLang!20891 (t!388465 s!14292)))))

(declare-fun e!4622051 () Bool)

(assert (=> d!2348511 e!4622051))

(declare-fun res!3109796 () Bool)

(assert (=> d!2348511 (=> (not res!3109796) (not e!4622051))))

(assert (=> d!2348511 (= res!3109796 (validRegex!11305 lt!2675614))))

(assert (=> d!2348511 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!430 lt!2675614 EmptyLang!20891 (t!388465 s!14292)) lt!2675688)))

(declare-fun b!7808665 () Bool)

(assert (=> b!7808665 (= e!4622051 (validRegex!11305 EmptyLang!20891))))

(declare-fun b!7808666 () Bool)

(assert (=> b!7808666 (= e!4622050 (matchR!10351 EmptyLang!20891 (t!388465 s!14292)))))

(assert (= (and d!2348511 res!3109796) b!7808665))

(assert (= (and d!2348511 (not res!3109797)) b!7808666))

(assert (=> d!2348511 m!8240722))

(declare-fun m!8241058 () Bool)

(assert (=> d!2348511 m!8241058))

(assert (=> d!2348511 m!8241040))

(assert (=> b!7808665 m!8240940))

(assert (=> b!7808666 m!8240710))

(assert (=> b!7808204 d!2348511))

(declare-fun b!7808667 () Bool)

(declare-fun res!3109800 () Bool)

(declare-fun e!4622055 () Bool)

(assert (=> b!7808667 (=> res!3109800 e!4622055)))

(assert (=> b!7808667 (= res!3109800 (not ((_ is ElementMatch!20891) r1!6279)))))

(declare-fun e!4622057 () Bool)

(assert (=> b!7808667 (= e!4622057 e!4622055)))

(declare-fun b!7808668 () Bool)

(declare-fun res!3109801 () Bool)

(declare-fun e!4622052 () Bool)

(assert (=> b!7808668 (=> res!3109801 e!4622052)))

(assert (=> b!7808668 (= res!3109801 (not (isEmpty!42260 (tail!15506 lt!2675606))))))

(declare-fun b!7808669 () Bool)

(declare-fun e!4622054 () Bool)

(assert (=> b!7808669 (= e!4622054 e!4622057)))

(declare-fun c!1437998 () Bool)

(assert (=> b!7808669 (= c!1437998 ((_ is EmptyLang!20891) r1!6279))))

(declare-fun bm!724338 () Bool)

(declare-fun call!724343 () Bool)

(assert (=> bm!724338 (= call!724343 (isEmpty!42260 lt!2675606))))

(declare-fun b!7808670 () Bool)

(declare-fun lt!2675689 () Bool)

(assert (=> b!7808670 (= e!4622057 (not lt!2675689))))

(declare-fun b!7808671 () Bool)

(declare-fun e!4622058 () Bool)

(assert (=> b!7808671 (= e!4622058 e!4622052)))

(declare-fun res!3109799 () Bool)

(assert (=> b!7808671 (=> res!3109799 e!4622052)))

(assert (=> b!7808671 (= res!3109799 call!724343)))

(declare-fun b!7808672 () Bool)

(declare-fun res!3109802 () Bool)

(assert (=> b!7808672 (=> res!3109802 e!4622055)))

(declare-fun e!4622053 () Bool)

(assert (=> b!7808672 (= res!3109802 e!4622053)))

(declare-fun res!3109805 () Bool)

(assert (=> b!7808672 (=> (not res!3109805) (not e!4622053))))

(assert (=> b!7808672 (= res!3109805 lt!2675689)))

(declare-fun b!7808673 () Bool)

(assert (=> b!7808673 (= e!4622053 (= (head!15965 lt!2675606) (c!1437876 r1!6279)))))

(declare-fun b!7808674 () Bool)

(declare-fun e!4622056 () Bool)

(assert (=> b!7808674 (= e!4622056 (nullable!9275 r1!6279))))

(declare-fun b!7808675 () Bool)

(assert (=> b!7808675 (= e!4622052 (not (= (head!15965 lt!2675606) (c!1437876 r1!6279))))))

(declare-fun b!7808676 () Bool)

(declare-fun res!3109798 () Bool)

(assert (=> b!7808676 (=> (not res!3109798) (not e!4622053))))

(assert (=> b!7808676 (= res!3109798 (isEmpty!42260 (tail!15506 lt!2675606)))))

(declare-fun b!7808677 () Bool)

(assert (=> b!7808677 (= e!4622055 e!4622058)))

(declare-fun res!3109803 () Bool)

(assert (=> b!7808677 (=> (not res!3109803) (not e!4622058))))

(assert (=> b!7808677 (= res!3109803 (not lt!2675689))))

(declare-fun d!2348517 () Bool)

(assert (=> d!2348517 e!4622054))

(declare-fun c!1437997 () Bool)

(assert (=> d!2348517 (= c!1437997 ((_ is EmptyExpr!20891) r1!6279))))

(assert (=> d!2348517 (= lt!2675689 e!4622056)))

(declare-fun c!1437996 () Bool)

(assert (=> d!2348517 (= c!1437996 (isEmpty!42260 lt!2675606))))

(assert (=> d!2348517 (validRegex!11305 r1!6279)))

(assert (=> d!2348517 (= (matchR!10351 r1!6279 lt!2675606) lt!2675689)))

(declare-fun b!7808678 () Bool)

(assert (=> b!7808678 (= e!4622056 (matchR!10351 (derivativeStep!6228 r1!6279 (head!15965 lt!2675606)) (tail!15506 lt!2675606)))))

(declare-fun b!7808679 () Bool)

(assert (=> b!7808679 (= e!4622054 (= lt!2675689 call!724343))))

(declare-fun b!7808680 () Bool)

(declare-fun res!3109804 () Bool)

(assert (=> b!7808680 (=> (not res!3109804) (not e!4622053))))

(assert (=> b!7808680 (= res!3109804 (not call!724343))))

(assert (= (and d!2348517 c!1437996) b!7808674))

(assert (= (and d!2348517 (not c!1437996)) b!7808678))

(assert (= (and d!2348517 c!1437997) b!7808679))

(assert (= (and d!2348517 (not c!1437997)) b!7808669))

(assert (= (and b!7808669 c!1437998) b!7808670))

(assert (= (and b!7808669 (not c!1437998)) b!7808667))

(assert (= (and b!7808667 (not res!3109800)) b!7808672))

(assert (= (and b!7808672 res!3109805) b!7808680))

(assert (= (and b!7808680 res!3109804) b!7808676))

(assert (= (and b!7808676 res!3109798) b!7808673))

(assert (= (and b!7808672 (not res!3109802)) b!7808677))

(assert (= (and b!7808677 res!3109803) b!7808671))

(assert (= (and b!7808671 (not res!3109799)) b!7808668))

(assert (= (and b!7808668 (not res!3109801)) b!7808675))

(assert (= (or b!7808679 b!7808671 b!7808680) bm!724338))

(assert (=> b!7808668 m!8240910))

(assert (=> b!7808668 m!8240910))

(declare-fun m!8241060 () Bool)

(assert (=> b!7808668 m!8241060))

(declare-fun m!8241062 () Bool)

(assert (=> d!2348517 m!8241062))

(assert (=> d!2348517 m!8240740))

(assert (=> b!7808676 m!8240910))

(assert (=> b!7808676 m!8240910))

(assert (=> b!7808676 m!8241060))

(assert (=> bm!724338 m!8241062))

(assert (=> b!7808675 m!8240916))

(assert (=> b!7808678 m!8240916))

(assert (=> b!7808678 m!8240916))

(declare-fun m!8241064 () Bool)

(assert (=> b!7808678 m!8241064))

(assert (=> b!7808678 m!8240910))

(assert (=> b!7808678 m!8241064))

(assert (=> b!7808678 m!8240910))

(declare-fun m!8241066 () Bool)

(assert (=> b!7808678 m!8241066))

(assert (=> b!7808673 m!8240916))

(assert (=> b!7808674 m!8240714))

(assert (=> b!7808193 d!2348517))

(declare-fun call!724346 () Bool)

(declare-fun c!1437999 () Bool)

(declare-fun c!1438000 () Bool)

(declare-fun bm!724339 () Bool)

(assert (=> bm!724339 (= call!724346 (validRegex!11305 (ite c!1437999 (reg!21220 r2!6217) (ite c!1438000 (regOne!42295 r2!6217) (regOne!42294 r2!6217)))))))

(declare-fun bm!724340 () Bool)

(declare-fun call!724345 () Bool)

(assert (=> bm!724340 (= call!724345 (validRegex!11305 (ite c!1438000 (regTwo!42295 r2!6217) (regTwo!42294 r2!6217))))))

(declare-fun b!7808685 () Bool)

(declare-fun e!4622066 () Bool)

(declare-fun e!4622065 () Bool)

(assert (=> b!7808685 (= e!4622066 e!4622065)))

(declare-fun res!3109812 () Bool)

(assert (=> b!7808685 (=> (not res!3109812) (not e!4622065))))

(declare-fun call!724344 () Bool)

(assert (=> b!7808685 (= res!3109812 call!724344)))

(declare-fun b!7808686 () Bool)

(declare-fun res!3109811 () Bool)

(declare-fun e!4622063 () Bool)

(assert (=> b!7808686 (=> (not res!3109811) (not e!4622063))))

(assert (=> b!7808686 (= res!3109811 call!724344)))

(declare-fun e!4622067 () Bool)

(assert (=> b!7808686 (= e!4622067 e!4622063)))

(declare-fun b!7808687 () Bool)

(declare-fun res!3109814 () Bool)

(assert (=> b!7808687 (=> res!3109814 e!4622066)))

(assert (=> b!7808687 (= res!3109814 (not ((_ is Concat!29736) r2!6217)))))

(assert (=> b!7808687 (= e!4622067 e!4622066)))

(declare-fun b!7808688 () Bool)

(declare-fun e!4622068 () Bool)

(declare-fun e!4622069 () Bool)

(assert (=> b!7808688 (= e!4622068 e!4622069)))

(assert (=> b!7808688 (= c!1437999 ((_ is Star!20891) r2!6217))))

(declare-fun d!2348519 () Bool)

(declare-fun res!3109810 () Bool)

(assert (=> d!2348519 (=> res!3109810 e!4622068)))

(assert (=> d!2348519 (= res!3109810 ((_ is ElementMatch!20891) r2!6217))))

(assert (=> d!2348519 (= (validRegex!11305 r2!6217) e!4622068)))

(declare-fun b!7808689 () Bool)

(assert (=> b!7808689 (= e!4622065 call!724345)))

(declare-fun b!7808690 () Bool)

(declare-fun e!4622064 () Bool)

(assert (=> b!7808690 (= e!4622069 e!4622064)))

(declare-fun res!3109813 () Bool)

(assert (=> b!7808690 (= res!3109813 (not (nullable!9275 (reg!21220 r2!6217))))))

(assert (=> b!7808690 (=> (not res!3109813) (not e!4622064))))

(declare-fun b!7808691 () Bool)

(assert (=> b!7808691 (= e!4622064 call!724346)))

(declare-fun b!7808692 () Bool)

(assert (=> b!7808692 (= e!4622069 e!4622067)))

(assert (=> b!7808692 (= c!1438000 ((_ is Union!20891) r2!6217))))

(declare-fun b!7808693 () Bool)

(assert (=> b!7808693 (= e!4622063 call!724345)))

(declare-fun bm!724341 () Bool)

(assert (=> bm!724341 (= call!724344 call!724346)))

(assert (= (and d!2348519 (not res!3109810)) b!7808688))

(assert (= (and b!7808688 c!1437999) b!7808690))

(assert (= (and b!7808688 (not c!1437999)) b!7808692))

(assert (= (and b!7808690 res!3109813) b!7808691))

(assert (= (and b!7808692 c!1438000) b!7808686))

(assert (= (and b!7808692 (not c!1438000)) b!7808687))

(assert (= (and b!7808686 res!3109811) b!7808693))

(assert (= (and b!7808687 (not res!3109814)) b!7808685))

(assert (= (and b!7808685 res!3109812) b!7808689))

(assert (= (or b!7808686 b!7808685) bm!724341))

(assert (= (or b!7808693 b!7808689) bm!724340))

(assert (= (or b!7808691 bm!724341) bm!724339))

(declare-fun m!8241068 () Bool)

(assert (=> bm!724339 m!8241068))

(declare-fun m!8241070 () Bool)

(assert (=> bm!724340 m!8241070))

(declare-fun m!8241072 () Bool)

(assert (=> b!7808690 m!8241072))

(assert (=> b!7808203 d!2348519))

(declare-fun e!4622081 () Bool)

(assert (=> b!7808202 (= tp!2300440 e!4622081)))

(declare-fun b!7808723 () Bool)

(declare-fun tp!2300452 () Bool)

(declare-fun tp!2300453 () Bool)

(assert (=> b!7808723 (= e!4622081 (and tp!2300452 tp!2300453))))

(declare-fun b!7808722 () Bool)

(declare-fun tp!2300454 () Bool)

(assert (=> b!7808722 (= e!4622081 tp!2300454)))

(declare-fun b!7808720 () Bool)

(assert (=> b!7808720 (= e!4622081 tp_is_empty!52137)))

(declare-fun b!7808721 () Bool)

(declare-fun tp!2300455 () Bool)

(declare-fun tp!2300456 () Bool)

(assert (=> b!7808721 (= e!4622081 (and tp!2300455 tp!2300456))))

(assert (= (and b!7808202 ((_ is ElementMatch!20891) (regOne!42295 r1!6279))) b!7808720))

(assert (= (and b!7808202 ((_ is Concat!29736) (regOne!42295 r1!6279))) b!7808721))

(assert (= (and b!7808202 ((_ is Star!20891) (regOne!42295 r1!6279))) b!7808722))

(assert (= (and b!7808202 ((_ is Union!20891) (regOne!42295 r1!6279))) b!7808723))

(declare-fun e!4622083 () Bool)

(assert (=> b!7808202 (= tp!2300431 e!4622083)))

(declare-fun b!7808727 () Bool)

(declare-fun tp!2300457 () Bool)

(declare-fun tp!2300458 () Bool)

(assert (=> b!7808727 (= e!4622083 (and tp!2300457 tp!2300458))))

(declare-fun b!7808726 () Bool)

(declare-fun tp!2300459 () Bool)

(assert (=> b!7808726 (= e!4622083 tp!2300459)))

(declare-fun b!7808724 () Bool)

(assert (=> b!7808724 (= e!4622083 tp_is_empty!52137)))

(declare-fun b!7808725 () Bool)

(declare-fun tp!2300460 () Bool)

(declare-fun tp!2300461 () Bool)

(assert (=> b!7808725 (= e!4622083 (and tp!2300460 tp!2300461))))

(assert (= (and b!7808202 ((_ is ElementMatch!20891) (regTwo!42295 r1!6279))) b!7808724))

(assert (= (and b!7808202 ((_ is Concat!29736) (regTwo!42295 r1!6279))) b!7808725))

(assert (= (and b!7808202 ((_ is Star!20891) (regTwo!42295 r1!6279))) b!7808726))

(assert (= (and b!7808202 ((_ is Union!20891) (regTwo!42295 r1!6279))) b!7808727))

(declare-fun b!7808746 () Bool)

(declare-fun e!4622092 () Bool)

(declare-fun tp!2300464 () Bool)

(assert (=> b!7808746 (= e!4622092 (and tp_is_empty!52137 tp!2300464))))

(assert (=> b!7808207 (= tp!2300439 e!4622092)))

(assert (= (and b!7808207 ((_ is Cons!73606) (t!388465 s!14292))) b!7808746))

(declare-fun e!4622093 () Bool)

(assert (=> b!7808212 (= tp!2300437 e!4622093)))

(declare-fun b!7808750 () Bool)

(declare-fun tp!2300465 () Bool)

(declare-fun tp!2300466 () Bool)

(assert (=> b!7808750 (= e!4622093 (and tp!2300465 tp!2300466))))

(declare-fun b!7808749 () Bool)

(declare-fun tp!2300467 () Bool)

(assert (=> b!7808749 (= e!4622093 tp!2300467)))

(declare-fun b!7808747 () Bool)

(assert (=> b!7808747 (= e!4622093 tp_is_empty!52137)))

(declare-fun b!7808748 () Bool)

(declare-fun tp!2300468 () Bool)

(declare-fun tp!2300469 () Bool)

(assert (=> b!7808748 (= e!4622093 (and tp!2300468 tp!2300469))))

(assert (= (and b!7808212 ((_ is ElementMatch!20891) (reg!21220 r1!6279))) b!7808747))

(assert (= (and b!7808212 ((_ is Concat!29736) (reg!21220 r1!6279))) b!7808748))

(assert (= (and b!7808212 ((_ is Star!20891) (reg!21220 r1!6279))) b!7808749))

(assert (= (and b!7808212 ((_ is Union!20891) (reg!21220 r1!6279))) b!7808750))

(declare-fun e!4622094 () Bool)

(assert (=> b!7808201 (= tp!2300438 e!4622094)))

(declare-fun b!7808754 () Bool)

(declare-fun tp!2300470 () Bool)

(declare-fun tp!2300471 () Bool)

(assert (=> b!7808754 (= e!4622094 (and tp!2300470 tp!2300471))))

(declare-fun b!7808753 () Bool)

(declare-fun tp!2300472 () Bool)

(assert (=> b!7808753 (= e!4622094 tp!2300472)))

(declare-fun b!7808751 () Bool)

(assert (=> b!7808751 (= e!4622094 tp_is_empty!52137)))

(declare-fun b!7808752 () Bool)

(declare-fun tp!2300473 () Bool)

(declare-fun tp!2300474 () Bool)

(assert (=> b!7808752 (= e!4622094 (and tp!2300473 tp!2300474))))

(assert (= (and b!7808201 ((_ is ElementMatch!20891) (reg!21220 r2!6217))) b!7808751))

(assert (= (and b!7808201 ((_ is Concat!29736) (reg!21220 r2!6217))) b!7808752))

(assert (= (and b!7808201 ((_ is Star!20891) (reg!21220 r2!6217))) b!7808753))

(assert (= (and b!7808201 ((_ is Union!20891) (reg!21220 r2!6217))) b!7808754))

(declare-fun e!4622095 () Bool)

(assert (=> b!7808195 (= tp!2300441 e!4622095)))

(declare-fun b!7808758 () Bool)

(declare-fun tp!2300475 () Bool)

(declare-fun tp!2300476 () Bool)

(assert (=> b!7808758 (= e!4622095 (and tp!2300475 tp!2300476))))

(declare-fun b!7808757 () Bool)

(declare-fun tp!2300477 () Bool)

(assert (=> b!7808757 (= e!4622095 tp!2300477)))

(declare-fun b!7808755 () Bool)

(assert (=> b!7808755 (= e!4622095 tp_is_empty!52137)))

(declare-fun b!7808756 () Bool)

(declare-fun tp!2300478 () Bool)

(declare-fun tp!2300479 () Bool)

(assert (=> b!7808756 (= e!4622095 (and tp!2300478 tp!2300479))))

(assert (= (and b!7808195 ((_ is ElementMatch!20891) (regOne!42295 r2!6217))) b!7808755))

(assert (= (and b!7808195 ((_ is Concat!29736) (regOne!42295 r2!6217))) b!7808756))

(assert (= (and b!7808195 ((_ is Star!20891) (regOne!42295 r2!6217))) b!7808757))

(assert (= (and b!7808195 ((_ is Union!20891) (regOne!42295 r2!6217))) b!7808758))

(declare-fun e!4622098 () Bool)

(assert (=> b!7808195 (= tp!2300435 e!4622098)))

(declare-fun b!7808766 () Bool)

(declare-fun tp!2300480 () Bool)

(declare-fun tp!2300481 () Bool)

(assert (=> b!7808766 (= e!4622098 (and tp!2300480 tp!2300481))))

(declare-fun b!7808765 () Bool)

(declare-fun tp!2300482 () Bool)

(assert (=> b!7808765 (= e!4622098 tp!2300482)))

(declare-fun b!7808763 () Bool)

(assert (=> b!7808763 (= e!4622098 tp_is_empty!52137)))

(declare-fun b!7808764 () Bool)

(declare-fun tp!2300483 () Bool)

(declare-fun tp!2300484 () Bool)

(assert (=> b!7808764 (= e!4622098 (and tp!2300483 tp!2300484))))

(assert (= (and b!7808195 ((_ is ElementMatch!20891) (regTwo!42295 r2!6217))) b!7808763))

(assert (= (and b!7808195 ((_ is Concat!29736) (regTwo!42295 r2!6217))) b!7808764))

(assert (= (and b!7808195 ((_ is Star!20891) (regTwo!42295 r2!6217))) b!7808765))

(assert (= (and b!7808195 ((_ is Union!20891) (regTwo!42295 r2!6217))) b!7808766))

(declare-fun e!4622099 () Bool)

(assert (=> b!7808200 (= tp!2300436 e!4622099)))

(declare-fun b!7808772 () Bool)

(declare-fun tp!2300489 () Bool)

(declare-fun tp!2300490 () Bool)

(assert (=> b!7808772 (= e!4622099 (and tp!2300489 tp!2300490))))

(declare-fun b!7808771 () Bool)

(declare-fun tp!2300491 () Bool)

(assert (=> b!7808771 (= e!4622099 tp!2300491)))

(declare-fun b!7808769 () Bool)

(assert (=> b!7808769 (= e!4622099 tp_is_empty!52137)))

(declare-fun b!7808770 () Bool)

(declare-fun tp!2300492 () Bool)

(declare-fun tp!2300493 () Bool)

(assert (=> b!7808770 (= e!4622099 (and tp!2300492 tp!2300493))))

(assert (= (and b!7808200 ((_ is ElementMatch!20891) (regOne!42294 r1!6279))) b!7808769))

(assert (= (and b!7808200 ((_ is Concat!29736) (regOne!42294 r1!6279))) b!7808770))

(assert (= (and b!7808200 ((_ is Star!20891) (regOne!42294 r1!6279))) b!7808771))

(assert (= (and b!7808200 ((_ is Union!20891) (regOne!42294 r1!6279))) b!7808772))

(declare-fun e!4622100 () Bool)

(assert (=> b!7808200 (= tp!2300434 e!4622100)))

(declare-fun b!7808780 () Bool)

(declare-fun tp!2300500 () Bool)

(declare-fun tp!2300501 () Bool)

(assert (=> b!7808780 (= e!4622100 (and tp!2300500 tp!2300501))))

(declare-fun b!7808779 () Bool)

(declare-fun tp!2300502 () Bool)

(assert (=> b!7808779 (= e!4622100 tp!2300502)))

(declare-fun b!7808777 () Bool)

(assert (=> b!7808777 (= e!4622100 tp_is_empty!52137)))

(declare-fun b!7808778 () Bool)

(declare-fun tp!2300503 () Bool)

(declare-fun tp!2300504 () Bool)

(assert (=> b!7808778 (= e!4622100 (and tp!2300503 tp!2300504))))

(assert (= (and b!7808200 ((_ is ElementMatch!20891) (regTwo!42294 r1!6279))) b!7808777))

(assert (= (and b!7808200 ((_ is Concat!29736) (regTwo!42294 r1!6279))) b!7808778))

(assert (= (and b!7808200 ((_ is Star!20891) (regTwo!42294 r1!6279))) b!7808779))

(assert (= (and b!7808200 ((_ is Union!20891) (regTwo!42294 r1!6279))) b!7808780))

(declare-fun e!4622101 () Bool)

(assert (=> b!7808210 (= tp!2300433 e!4622101)))

(declare-fun b!7808784 () Bool)

(declare-fun tp!2300505 () Bool)

(declare-fun tp!2300506 () Bool)

(assert (=> b!7808784 (= e!4622101 (and tp!2300505 tp!2300506))))

(declare-fun b!7808783 () Bool)

(declare-fun tp!2300507 () Bool)

(assert (=> b!7808783 (= e!4622101 tp!2300507)))

(declare-fun b!7808781 () Bool)

(assert (=> b!7808781 (= e!4622101 tp_is_empty!52137)))

(declare-fun b!7808782 () Bool)

(declare-fun tp!2300508 () Bool)

(declare-fun tp!2300509 () Bool)

(assert (=> b!7808782 (= e!4622101 (and tp!2300508 tp!2300509))))

(assert (= (and b!7808210 ((_ is ElementMatch!20891) (regOne!42294 r2!6217))) b!7808781))

(assert (= (and b!7808210 ((_ is Concat!29736) (regOne!42294 r2!6217))) b!7808782))

(assert (= (and b!7808210 ((_ is Star!20891) (regOne!42294 r2!6217))) b!7808783))

(assert (= (and b!7808210 ((_ is Union!20891) (regOne!42294 r2!6217))) b!7808784))

(declare-fun e!4622102 () Bool)

(assert (=> b!7808210 (= tp!2300432 e!4622102)))

(declare-fun b!7808788 () Bool)

(declare-fun tp!2300510 () Bool)

(declare-fun tp!2300511 () Bool)

(assert (=> b!7808788 (= e!4622102 (and tp!2300510 tp!2300511))))

(declare-fun b!7808787 () Bool)

(declare-fun tp!2300512 () Bool)

(assert (=> b!7808787 (= e!4622102 tp!2300512)))

(declare-fun b!7808785 () Bool)

(assert (=> b!7808785 (= e!4622102 tp_is_empty!52137)))

(declare-fun b!7808786 () Bool)

(declare-fun tp!2300513 () Bool)

(declare-fun tp!2300514 () Bool)

(assert (=> b!7808786 (= e!4622102 (and tp!2300513 tp!2300514))))

(assert (= (and b!7808210 ((_ is ElementMatch!20891) (regTwo!42294 r2!6217))) b!7808785))

(assert (= (and b!7808210 ((_ is Concat!29736) (regTwo!42294 r2!6217))) b!7808786))

(assert (= (and b!7808210 ((_ is Star!20891) (regTwo!42294 r2!6217))) b!7808787))

(assert (= (and b!7808210 ((_ is Union!20891) (regTwo!42294 r2!6217))) b!7808788))

(check-sat (not b!7808771) (not b!7808753) (not b!7808641) (not bm!724301) (not b!7808779) (not d!2348449) (not b!7808764) (not b!7808255) (not d!2348517) (not d!2348451) (not b!7808727) (not b!7808786) (not bm!724321) (not bm!724339) (not b!7808758) (not b!7808594) (not b!7808668) (not b!7808722) (not b!7808524) (not d!2348497) (not b!7808376) (not d!2348443) (not b!7808782) (not b!7808537) (not b!7808522) (not b!7808748) (not b!7808754) (not b!7808746) (not b!7808374) (not b!7808455) (not b!7808263) (not b!7808749) (not b!7808454) (not bm!724325) (not b!7808634) (not bm!724338) (not b!7808544) (not bm!724315) (not b!7808307) (not b!7808441) (not b!7808674) (not bm!724328) (not b!7808382) (not b!7808625) (not b!7808778) (not d!2348509) (not b!7808772) (not b!7808514) (not b!7808642) (not b!7808308) (not b!7808375) (not b!7808788) (not b!7808766) (not d!2348511) (not b!7808676) (not b!7808752) (not b!7808784) (not d!2348483) (not b!7808665) (not b!7808559) (not b!7808453) (not d!2348453) (not bm!724336) (not b!7808260) (not b!7808721) (not d!2348441) (not b!7808591) (not b!7808543) (not b!7808640) (not b!7808590) (not d!2348469) (not b!7808261) (not bm!724274) (not b!7808675) (not b!7808750) (not d!2348493) (not b!7808442) (not b!7808589) (not d!2348505) (not bm!724298) (not b!7808770) (not b!7808756) (not b!7808509) (not bm!724317) (not d!2348485) (not b!7808262) (not b!7808726) (not b!7808430) (not b!7808725) (not b!7808787) (not bm!724330) (not b!7808757) (not d!2348457) (not b!7808584) (not b!7808545) (not b!7808379) (not b!7808521) (not b!7808639) (not bm!724340) (not b!7808644) (not b!7808690) (not d!2348489) (not bm!724314) (not b!7808592) (not b!7808678) (not b!7808520) (not b!7808783) (not b!7808519) (not b!7808547) (not b!7808723) (not b!7808673) tp_is_empty!52137 (not b!7808765) (not b!7808265) (not d!2348473) (not b!7808780) (not b!7808542) (not b!7808377) (not b!7808666))
(check-sat)
