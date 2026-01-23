; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!695526 () Bool)

(assert start!695526)

(declare-fun bs!1887697 () Bool)

(declare-fun b!7137453 () Bool)

(declare-fun b!7137448 () Bool)

(assert (= bs!1887697 (and b!7137453 b!7137448)))

(declare-fun lambda!433917 () Int)

(declare-fun lambda!433915 () Int)

(assert (=> bs!1887697 (not (= lambda!433917 lambda!433915))))

(declare-fun setIsEmpty!52408 () Bool)

(declare-fun setRes!52408 () Bool)

(assert (=> setIsEmpty!52408 setRes!52408))

(declare-fun b!7137443 () Bool)

(declare-fun e!4289508 () Bool)

(declare-fun tp!1968004 () Bool)

(declare-fun tp!1968002 () Bool)

(assert (=> b!7137443 (= e!4289508 (and tp!1968004 tp!1968002))))

(declare-fun b!7137444 () Bool)

(declare-fun e!4289506 () Bool)

(declare-fun tp!1968008 () Bool)

(assert (=> b!7137444 (= e!4289506 tp!1968008)))

(declare-fun b!7137445 () Bool)

(declare-fun e!4289509 () Bool)

(declare-fun e!4289507 () Bool)

(assert (=> b!7137445 (= e!4289509 e!4289507)))

(declare-fun res!2912328 () Bool)

(assert (=> b!7137445 (=> (not res!2912328) (not e!4289507))))

(declare-datatypes ((C!36546 0))(
  ( (C!36547 (val!28221 Int)) )
))
(declare-datatypes ((Regex!18136 0))(
  ( (ElementMatch!18136 (c!1331029 C!36546)) (Concat!26981 (regOne!36784 Regex!18136) (regTwo!36784 Regex!18136)) (EmptyExpr!18136) (Star!18136 (reg!18465 Regex!18136)) (EmptyLang!18136) (Union!18136 (regOne!36785 Regex!18136) (regTwo!36785 Regex!18136)) )
))
(declare-fun r!11483 () Regex!18136)

(declare-datatypes ((List!69350 0))(
  ( (Nil!69226) (Cons!69226 (h!75674 Regex!18136) (t!383367 List!69350)) )
))
(declare-datatypes ((Context!14260 0))(
  ( (Context!14261 (exprs!7630 List!69350)) )
))
(declare-datatypes ((List!69351 0))(
  ( (Nil!69227) (Cons!69227 (h!75675 Context!14260) (t!383368 List!69351)) )
))
(declare-fun lt!2566234 () List!69351)

(declare-fun unfocusZipper!2484 (List!69351) Regex!18136)

(assert (=> b!7137445 (= res!2912328 (= r!11483 (unfocusZipper!2484 lt!2566234)))))

(declare-fun z!3189 () (Set Context!14260))

(declare-fun toList!11167 ((Set Context!14260)) List!69351)

(assert (=> b!7137445 (= lt!2566234 (toList!11167 z!3189))))

(declare-fun b!7137446 () Bool)

(declare-fun tp!1968007 () Bool)

(assert (=> b!7137446 (= e!4289508 tp!1968007)))

(declare-fun b!7137447 () Bool)

(declare-fun e!4289504 () Bool)

(declare-fun e!4289503 () Bool)

(assert (=> b!7137447 (= e!4289504 e!4289503)))

(declare-fun res!2912327 () Bool)

(assert (=> b!7137447 (=> res!2912327 e!4289503)))

(declare-fun lt!2566233 () Context!14260)

(assert (=> b!7137447 (= res!2912327 (not (set.member lt!2566233 z!3189)))))

(declare-fun lambda!433916 () Int)

(declare-fun getWitness!1897 ((Set Context!14260) Int) Context!14260)

(assert (=> b!7137447 (= lt!2566233 (getWitness!1897 z!3189 lambda!433916))))

(declare-fun e!4289505 () Bool)

(assert (=> b!7137448 (= e!4289505 (not e!4289504))))

(declare-fun res!2912331 () Bool)

(assert (=> b!7137448 (=> res!2912331 e!4289504)))

(declare-fun lt!2566235 () List!69350)

(declare-fun lt!2566230 () Bool)

(declare-fun exists!3893 (List!69350 Int) Bool)

(assert (=> b!7137448 (= res!2912331 (not (= lt!2566230 (exists!3893 lt!2566235 lambda!433915))))))

(assert (=> b!7137448 (= lt!2566230 (exists!3893 lt!2566235 lambda!433915))))

(declare-fun lt!2566229 () Regex!18136)

(declare-fun nullable!7656 (Regex!18136) Bool)

(assert (=> b!7137448 (= lt!2566230 (nullable!7656 lt!2566229))))

(declare-datatypes ((Unit!163131 0))(
  ( (Unit!163132) )
))
(declare-fun lt!2566231 () Unit!163131)

(declare-fun nullableGenUnionSpec!25 (Regex!18136 List!69350) Unit!163131)

(assert (=> b!7137448 (= lt!2566231 (nullableGenUnionSpec!25 lt!2566229 lt!2566235))))

(declare-fun b!7137449 () Bool)

(declare-fun res!2912325 () Bool)

(assert (=> b!7137449 (=> res!2912325 e!4289503)))

(declare-fun nullableContext!135 (Context!14260) Bool)

(assert (=> b!7137449 (= res!2912325 (not (nullableContext!135 lt!2566233)))))

(declare-fun b!7137450 () Bool)

(declare-fun tp_is_empty!45909 () Bool)

(assert (=> b!7137450 (= e!4289508 tp_is_empty!45909)))

(declare-fun res!2912330 () Bool)

(assert (=> start!695526 (=> (not res!2912330) (not e!4289509))))

(declare-fun validRegex!9303 (Regex!18136) Bool)

(assert (=> start!695526 (= res!2912330 (validRegex!9303 r!11483))))

(assert (=> start!695526 e!4289509))

(assert (=> start!695526 e!4289508))

(declare-fun condSetEmpty!52408 () Bool)

(assert (=> start!695526 (= condSetEmpty!52408 (= z!3189 (as set.empty (Set Context!14260))))))

(assert (=> start!695526 setRes!52408))

(declare-fun b!7137442 () Bool)

(declare-fun res!2912329 () Bool)

(assert (=> b!7137442 (=> res!2912329 e!4289504)))

(assert (=> b!7137442 (= res!2912329 (exists!3893 lt!2566235 lambda!433915))))

(declare-fun b!7137451 () Bool)

(assert (=> b!7137451 (= e!4289507 e!4289505)))

(declare-fun res!2912332 () Bool)

(assert (=> b!7137451 (=> (not res!2912332) (not e!4289505))))

(assert (=> b!7137451 (= res!2912332 (= r!11483 lt!2566229))))

(declare-fun generalisedUnion!2641 (List!69350) Regex!18136)

(assert (=> b!7137451 (= lt!2566229 (generalisedUnion!2641 lt!2566235))))

(declare-fun unfocusZipperList!2177 (List!69351) List!69350)

(assert (=> b!7137451 (= lt!2566235 (unfocusZipperList!2177 lt!2566234))))

(declare-fun b!7137452 () Bool)

(declare-fun res!2912326 () Bool)

(assert (=> b!7137452 (=> res!2912326 e!4289504)))

(assert (=> b!7137452 (= res!2912326 lt!2566230)))

(declare-fun forall!16976 (List!69350 Int) Bool)

(assert (=> b!7137453 (= e!4289503 (forall!16976 (exprs!7630 lt!2566233) lambda!433917))))

(declare-fun contains!20576 (List!69350 Regex!18136) Bool)

(declare-fun generalisedConcat!2327 (List!69350) Regex!18136)

(assert (=> b!7137453 (contains!20576 lt!2566235 (generalisedConcat!2327 (exprs!7630 lt!2566233)))))

(declare-fun lt!2566232 () Unit!163131)

(declare-fun lemmaZipperContainsContextThenUnfocusZipperListContains!1 (List!69351 Context!14260) Unit!163131)

(assert (=> b!7137453 (= lt!2566232 (lemmaZipperContainsContextThenUnfocusZipperListContains!1 lt!2566234 lt!2566233))))

(declare-fun setElem!52408 () Context!14260)

(declare-fun tp!1968003 () Bool)

(declare-fun setNonEmpty!52408 () Bool)

(declare-fun inv!88405 (Context!14260) Bool)

(assert (=> setNonEmpty!52408 (= setRes!52408 (and tp!1968003 (inv!88405 setElem!52408) e!4289506))))

(declare-fun setRest!52408 () (Set Context!14260))

(assert (=> setNonEmpty!52408 (= z!3189 (set.union (set.insert setElem!52408 (as set.empty (Set Context!14260))) setRest!52408))))

(declare-fun b!7137454 () Bool)

(declare-fun tp!1968006 () Bool)

(declare-fun tp!1968005 () Bool)

(assert (=> b!7137454 (= e!4289508 (and tp!1968006 tp!1968005))))

(declare-fun b!7137455 () Bool)

(declare-fun res!2912324 () Bool)

(assert (=> b!7137455 (=> res!2912324 e!4289504)))

(declare-fun exists!3894 ((Set Context!14260) Int) Bool)

(assert (=> b!7137455 (= res!2912324 (not (exists!3894 z!3189 lambda!433916)))))

(assert (= (and start!695526 res!2912330) b!7137445))

(assert (= (and b!7137445 res!2912328) b!7137451))

(assert (= (and b!7137451 res!2912332) b!7137448))

(assert (= (and b!7137448 (not res!2912331)) b!7137452))

(assert (= (and b!7137452 (not res!2912326)) b!7137442))

(assert (= (and b!7137442 (not res!2912329)) b!7137455))

(assert (= (and b!7137455 (not res!2912324)) b!7137447))

(assert (= (and b!7137447 (not res!2912327)) b!7137449))

(assert (= (and b!7137449 (not res!2912325)) b!7137453))

(assert (= (and start!695526 (is-ElementMatch!18136 r!11483)) b!7137450))

(assert (= (and start!695526 (is-Concat!26981 r!11483)) b!7137443))

(assert (= (and start!695526 (is-Star!18136 r!11483)) b!7137446))

(assert (= (and start!695526 (is-Union!18136 r!11483)) b!7137454))

(assert (= (and start!695526 condSetEmpty!52408) setIsEmpty!52408))

(assert (= (and start!695526 (not condSetEmpty!52408)) setNonEmpty!52408))

(assert (= setNonEmpty!52408 b!7137444))

(declare-fun m!7853222 () Bool)

(assert (=> b!7137448 m!7853222))

(assert (=> b!7137448 m!7853222))

(declare-fun m!7853224 () Bool)

(assert (=> b!7137448 m!7853224))

(declare-fun m!7853226 () Bool)

(assert (=> b!7137448 m!7853226))

(declare-fun m!7853228 () Bool)

(assert (=> b!7137453 m!7853228))

(declare-fun m!7853230 () Bool)

(assert (=> b!7137453 m!7853230))

(assert (=> b!7137453 m!7853230))

(declare-fun m!7853232 () Bool)

(assert (=> b!7137453 m!7853232))

(declare-fun m!7853234 () Bool)

(assert (=> b!7137453 m!7853234))

(declare-fun m!7853236 () Bool)

(assert (=> b!7137449 m!7853236))

(declare-fun m!7853238 () Bool)

(assert (=> b!7137445 m!7853238))

(declare-fun m!7853240 () Bool)

(assert (=> b!7137445 m!7853240))

(declare-fun m!7853242 () Bool)

(assert (=> start!695526 m!7853242))

(declare-fun m!7853244 () Bool)

(assert (=> b!7137455 m!7853244))

(declare-fun m!7853246 () Bool)

(assert (=> b!7137447 m!7853246))

(declare-fun m!7853248 () Bool)

(assert (=> b!7137447 m!7853248))

(assert (=> b!7137442 m!7853222))

(declare-fun m!7853250 () Bool)

(assert (=> setNonEmpty!52408 m!7853250))

(declare-fun m!7853252 () Bool)

(assert (=> b!7137451 m!7853252))

(declare-fun m!7853254 () Bool)

(assert (=> b!7137451 m!7853254))

(push 1)

(assert (not b!7137451))

(assert (not b!7137444))

(assert (not b!7137449))

(assert (not b!7137454))

(assert tp_is_empty!45909)

(assert (not b!7137445))

(assert (not b!7137448))

(assert (not b!7137447))

(assert (not b!7137442))

(assert (not b!7137455))

(assert (not start!695526))

(assert (not b!7137446))

(assert (not setNonEmpty!52408))

(assert (not b!7137443))

(assert (not b!7137453))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2226723 () Bool)

(declare-fun e!4289533 () Bool)

(assert (=> d!2226723 e!4289533))

(declare-fun res!2912362 () Bool)

(assert (=> d!2226723 (=> (not res!2912362) (not e!4289533))))

(declare-fun lt!2566259 () Context!14260)

(declare-fun dynLambda!28157 (Int Context!14260) Bool)

(assert (=> d!2226723 (= res!2912362 (dynLambda!28157 lambda!433916 lt!2566259))))

(declare-fun getWitness!1899 (List!69351 Int) Context!14260)

(assert (=> d!2226723 (= lt!2566259 (getWitness!1899 (toList!11167 z!3189) lambda!433916))))

(assert (=> d!2226723 (exists!3894 z!3189 lambda!433916)))

(assert (=> d!2226723 (= (getWitness!1897 z!3189 lambda!433916) lt!2566259)))

(declare-fun b!7137500 () Bool)

(assert (=> b!7137500 (= e!4289533 (set.member lt!2566259 z!3189))))

(assert (= (and d!2226723 res!2912362) b!7137500))

(declare-fun b_lambda!272413 () Bool)

(assert (=> (not b_lambda!272413) (not d!2226723)))

(declare-fun m!7853290 () Bool)

(assert (=> d!2226723 m!7853290))

(assert (=> d!2226723 m!7853240))

(assert (=> d!2226723 m!7853240))

(declare-fun m!7853292 () Bool)

(assert (=> d!2226723 m!7853292))

(assert (=> d!2226723 m!7853244))

(declare-fun m!7853294 () Bool)

(assert (=> b!7137500 m!7853294))

(assert (=> b!7137447 d!2226723))

(declare-fun bs!1887699 () Bool)

(declare-fun d!2226725 () Bool)

(assert (= bs!1887699 (and d!2226725 b!7137448)))

(declare-fun lambda!433935 () Int)

(assert (=> bs!1887699 (not (= lambda!433935 lambda!433915))))

(declare-fun bs!1887700 () Bool)

(assert (= bs!1887700 (and d!2226725 b!7137453)))

(assert (=> bs!1887700 (not (= lambda!433935 lambda!433917))))

(assert (=> d!2226725 true))

(declare-fun order!28519 () Int)

(declare-fun dynLambda!28158 (Int Int) Int)

(assert (=> d!2226725 (< (dynLambda!28158 order!28519 lambda!433915) (dynLambda!28158 order!28519 lambda!433935))))

(assert (=> d!2226725 (= (exists!3893 lt!2566235 lambda!433915) (not (forall!16976 lt!2566235 lambda!433935)))))

(declare-fun bs!1887701 () Bool)

(assert (= bs!1887701 d!2226725))

(declare-fun m!7853296 () Bool)

(assert (=> bs!1887701 m!7853296))

(assert (=> b!7137442 d!2226725))

(declare-fun b!7137521 () Bool)

(declare-fun e!4289554 () Bool)

(declare-fun call!651035 () Bool)

(assert (=> b!7137521 (= e!4289554 call!651035)))

(declare-fun c!1331039 () Bool)

(declare-fun call!651036 () Bool)

(declare-fun bm!651030 () Bool)

(declare-fun c!1331040 () Bool)

(assert (=> bm!651030 (= call!651036 (validRegex!9303 (ite c!1331039 (reg!18465 r!11483) (ite c!1331040 (regOne!36785 r!11483) (regOne!36784 r!11483)))))))

(declare-fun b!7137522 () Bool)

(declare-fun e!4289553 () Bool)

(declare-fun e!4289550 () Bool)

(assert (=> b!7137522 (= e!4289553 e!4289550)))

(declare-fun res!2912377 () Bool)

(assert (=> b!7137522 (= res!2912377 (not (nullable!7656 (reg!18465 r!11483))))))

(assert (=> b!7137522 (=> (not res!2912377) (not e!4289550))))

(declare-fun b!7137524 () Bool)

(declare-fun e!4289548 () Bool)

(assert (=> b!7137524 (= e!4289553 e!4289548)))

(assert (=> b!7137524 (= c!1331040 (is-Union!18136 r!11483))))

(declare-fun b!7137525 () Bool)

(declare-fun e!4289549 () Bool)

(assert (=> b!7137525 (= e!4289549 e!4289553)))

(assert (=> b!7137525 (= c!1331039 (is-Star!18136 r!11483))))

(declare-fun b!7137526 () Bool)

(declare-fun res!2912376 () Bool)

(assert (=> b!7137526 (=> (not res!2912376) (not e!4289554))))

(declare-fun call!651037 () Bool)

(assert (=> b!7137526 (= res!2912376 call!651037)))

(assert (=> b!7137526 (= e!4289548 e!4289554)))

(declare-fun bm!651031 () Bool)

(assert (=> bm!651031 (= call!651035 (validRegex!9303 (ite c!1331040 (regTwo!36785 r!11483) (regTwo!36784 r!11483))))))

(declare-fun bm!651032 () Bool)

(assert (=> bm!651032 (= call!651037 call!651036)))

(declare-fun b!7137527 () Bool)

(declare-fun e!4289552 () Bool)

(assert (=> b!7137527 (= e!4289552 call!651035)))

(declare-fun b!7137528 () Bool)

(declare-fun res!2912373 () Bool)

(declare-fun e!4289551 () Bool)

(assert (=> b!7137528 (=> res!2912373 e!4289551)))

(assert (=> b!7137528 (= res!2912373 (not (is-Concat!26981 r!11483)))))

(assert (=> b!7137528 (= e!4289548 e!4289551)))

(declare-fun b!7137529 () Bool)

(assert (=> b!7137529 (= e!4289550 call!651036)))

(declare-fun d!2226727 () Bool)

(declare-fun res!2912375 () Bool)

(assert (=> d!2226727 (=> res!2912375 e!4289549)))

(assert (=> d!2226727 (= res!2912375 (is-ElementMatch!18136 r!11483))))

(assert (=> d!2226727 (= (validRegex!9303 r!11483) e!4289549)))

(declare-fun b!7137523 () Bool)

(assert (=> b!7137523 (= e!4289551 e!4289552)))

(declare-fun res!2912374 () Bool)

(assert (=> b!7137523 (=> (not res!2912374) (not e!4289552))))

(assert (=> b!7137523 (= res!2912374 call!651037)))

(assert (= (and d!2226727 (not res!2912375)) b!7137525))

(assert (= (and b!7137525 c!1331039) b!7137522))

(assert (= (and b!7137525 (not c!1331039)) b!7137524))

(assert (= (and b!7137522 res!2912377) b!7137529))

(assert (= (and b!7137524 c!1331040) b!7137526))

(assert (= (and b!7137524 (not c!1331040)) b!7137528))

(assert (= (and b!7137526 res!2912376) b!7137521))

(assert (= (and b!7137528 (not res!2912373)) b!7137523))

(assert (= (and b!7137523 res!2912374) b!7137527))

(assert (= (or b!7137521 b!7137527) bm!651031))

(assert (= (or b!7137526 b!7137523) bm!651032))

(assert (= (or b!7137529 bm!651032) bm!651030))

(declare-fun m!7853298 () Bool)

(assert (=> bm!651030 m!7853298))

(declare-fun m!7853300 () Bool)

(assert (=> b!7137522 m!7853300))

(declare-fun m!7853302 () Bool)

(assert (=> bm!651031 m!7853302))

(assert (=> start!695526 d!2226727))

(assert (=> b!7137448 d!2226725))

(declare-fun d!2226729 () Bool)

(declare-fun nullableFct!2974 (Regex!18136) Bool)

(assert (=> d!2226729 (= (nullable!7656 lt!2566229) (nullableFct!2974 lt!2566229))))

(declare-fun bs!1887702 () Bool)

(assert (= bs!1887702 d!2226729))

(declare-fun m!7853304 () Bool)

(assert (=> bs!1887702 m!7853304))

(assert (=> b!7137448 d!2226729))

(declare-fun bs!1887703 () Bool)

(declare-fun d!2226731 () Bool)

(assert (= bs!1887703 (and d!2226731 b!7137448)))

(declare-fun lambda!433940 () Int)

(assert (=> bs!1887703 (not (= lambda!433940 lambda!433915))))

(declare-fun bs!1887704 () Bool)

(assert (= bs!1887704 (and d!2226731 b!7137453)))

(assert (=> bs!1887704 (= lambda!433940 lambda!433917)))

(declare-fun bs!1887705 () Bool)

(assert (= bs!1887705 (and d!2226731 d!2226725)))

(assert (=> bs!1887705 (not (= lambda!433940 lambda!433935))))

(declare-fun lambda!433941 () Int)

(assert (=> bs!1887703 (= lambda!433941 lambda!433915)))

(assert (=> bs!1887704 (not (= lambda!433941 lambda!433917))))

(assert (=> bs!1887705 (not (= lambda!433941 lambda!433935))))

(declare-fun bs!1887706 () Bool)

(assert (= bs!1887706 d!2226731))

(assert (=> bs!1887706 (not (= lambda!433941 lambda!433940))))

(assert (=> d!2226731 (= (nullable!7656 lt!2566229) (exists!3893 lt!2566235 lambda!433941))))

(declare-fun lt!2566262 () Unit!163131)

(declare-fun choose!55169 (Regex!18136 List!69350) Unit!163131)

(assert (=> d!2226731 (= lt!2566262 (choose!55169 lt!2566229 lt!2566235))))

(assert (=> d!2226731 (forall!16976 lt!2566235 lambda!433940)))

(assert (=> d!2226731 (= (nullableGenUnionSpec!25 lt!2566229 lt!2566235) lt!2566262)))

(assert (=> bs!1887706 m!7853224))

(declare-fun m!7853306 () Bool)

(assert (=> bs!1887706 m!7853306))

(declare-fun m!7853308 () Bool)

(assert (=> bs!1887706 m!7853308))

(declare-fun m!7853310 () Bool)

(assert (=> bs!1887706 m!7853310))

(assert (=> b!7137448 d!2226731))

(declare-fun d!2226735 () Bool)

(declare-fun res!2912386 () Bool)

(declare-fun e!4289567 () Bool)

(assert (=> d!2226735 (=> res!2912386 e!4289567)))

(assert (=> d!2226735 (= res!2912386 (is-Nil!69226 (exprs!7630 lt!2566233)))))

(assert (=> d!2226735 (= (forall!16976 (exprs!7630 lt!2566233) lambda!433917) e!4289567)))

(declare-fun b!7137546 () Bool)

(declare-fun e!4289568 () Bool)

(assert (=> b!7137546 (= e!4289567 e!4289568)))

(declare-fun res!2912387 () Bool)

(assert (=> b!7137546 (=> (not res!2912387) (not e!4289568))))

(declare-fun dynLambda!28159 (Int Regex!18136) Bool)

(assert (=> b!7137546 (= res!2912387 (dynLambda!28159 lambda!433917 (h!75674 (exprs!7630 lt!2566233))))))

(declare-fun b!7137547 () Bool)

(assert (=> b!7137547 (= e!4289568 (forall!16976 (t!383367 (exprs!7630 lt!2566233)) lambda!433917))))

(assert (= (and d!2226735 (not res!2912386)) b!7137546))

(assert (= (and b!7137546 res!2912387) b!7137547))

(declare-fun b_lambda!272415 () Bool)

(assert (=> (not b_lambda!272415) (not b!7137546)))

(declare-fun m!7853312 () Bool)

(assert (=> b!7137546 m!7853312))

(declare-fun m!7853314 () Bool)

(assert (=> b!7137547 m!7853314))

(assert (=> b!7137453 d!2226735))

(declare-fun d!2226737 () Bool)

(declare-fun lt!2566265 () Bool)

(declare-fun content!14170 (List!69350) (Set Regex!18136))

(assert (=> d!2226737 (= lt!2566265 (set.member (generalisedConcat!2327 (exprs!7630 lt!2566233)) (content!14170 lt!2566235)))))

(declare-fun e!4289580 () Bool)

(assert (=> d!2226737 (= lt!2566265 e!4289580)))

(declare-fun res!2912398 () Bool)

(assert (=> d!2226737 (=> (not res!2912398) (not e!4289580))))

(assert (=> d!2226737 (= res!2912398 (is-Cons!69226 lt!2566235))))

(assert (=> d!2226737 (= (contains!20576 lt!2566235 (generalisedConcat!2327 (exprs!7630 lt!2566233))) lt!2566265)))

(declare-fun b!7137558 () Bool)

(declare-fun e!4289579 () Bool)

(assert (=> b!7137558 (= e!4289580 e!4289579)))

(declare-fun res!2912399 () Bool)

(assert (=> b!7137558 (=> res!2912399 e!4289579)))

(assert (=> b!7137558 (= res!2912399 (= (h!75674 lt!2566235) (generalisedConcat!2327 (exprs!7630 lt!2566233))))))

(declare-fun b!7137559 () Bool)

(assert (=> b!7137559 (= e!4289579 (contains!20576 (t!383367 lt!2566235) (generalisedConcat!2327 (exprs!7630 lt!2566233))))))

(assert (= (and d!2226737 res!2912398) b!7137558))

(assert (= (and b!7137558 (not res!2912399)) b!7137559))

(declare-fun m!7853316 () Bool)

(assert (=> d!2226737 m!7853316))

(assert (=> d!2226737 m!7853230))

(declare-fun m!7853318 () Bool)

(assert (=> d!2226737 m!7853318))

(assert (=> b!7137559 m!7853230))

(declare-fun m!7853320 () Bool)

(assert (=> b!7137559 m!7853320))

(assert (=> b!7137453 d!2226737))

(declare-fun bs!1887707 () Bool)

(declare-fun d!2226739 () Bool)

(assert (= bs!1887707 (and d!2226739 d!2226731)))

(declare-fun lambda!433944 () Int)

(assert (=> bs!1887707 (not (= lambda!433944 lambda!433941))))

(declare-fun bs!1887708 () Bool)

(assert (= bs!1887708 (and d!2226739 d!2226725)))

(assert (=> bs!1887708 (not (= lambda!433944 lambda!433935))))

(declare-fun bs!1887709 () Bool)

(assert (= bs!1887709 (and d!2226739 b!7137453)))

(assert (=> bs!1887709 (= lambda!433944 lambda!433917)))

(assert (=> bs!1887707 (= lambda!433944 lambda!433940)))

(declare-fun bs!1887710 () Bool)

(assert (= bs!1887710 (and d!2226739 b!7137448)))

(assert (=> bs!1887710 (not (= lambda!433944 lambda!433915))))

(declare-fun b!7137589 () Bool)

(declare-fun e!4289600 () Bool)

(declare-fun isEmpty!40050 (List!69350) Bool)

(assert (=> b!7137589 (= e!4289600 (isEmpty!40050 (t!383367 (exprs!7630 lt!2566233))))))

(declare-fun e!4289603 () Bool)

(assert (=> d!2226739 e!4289603))

(declare-fun res!2912410 () Bool)

(assert (=> d!2226739 (=> (not res!2912410) (not e!4289603))))

(declare-fun lt!2566268 () Regex!18136)

(assert (=> d!2226739 (= res!2912410 (validRegex!9303 lt!2566268))))

(declare-fun e!4289605 () Regex!18136)

(assert (=> d!2226739 (= lt!2566268 e!4289605)))

(declare-fun c!1331058 () Bool)

(assert (=> d!2226739 (= c!1331058 e!4289600)))

(declare-fun res!2912409 () Bool)

(assert (=> d!2226739 (=> (not res!2912409) (not e!4289600))))

(assert (=> d!2226739 (= res!2912409 (is-Cons!69226 (exprs!7630 lt!2566233)))))

(assert (=> d!2226739 (forall!16976 (exprs!7630 lt!2566233) lambda!433944)))

(assert (=> d!2226739 (= (generalisedConcat!2327 (exprs!7630 lt!2566233)) lt!2566268)))

(declare-fun b!7137590 () Bool)

(declare-fun e!4289604 () Bool)

(assert (=> b!7137590 (= e!4289603 e!4289604)))

(declare-fun c!1331055 () Bool)

(assert (=> b!7137590 (= c!1331055 (isEmpty!40050 (exprs!7630 lt!2566233)))))

(declare-fun b!7137591 () Bool)

(declare-fun isEmptyExpr!2028 (Regex!18136) Bool)

(assert (=> b!7137591 (= e!4289604 (isEmptyExpr!2028 lt!2566268))))

(declare-fun b!7137592 () Bool)

(declare-fun e!4289601 () Bool)

(declare-fun isConcat!1551 (Regex!18136) Bool)

(assert (=> b!7137592 (= e!4289601 (isConcat!1551 lt!2566268))))

(declare-fun b!7137593 () Bool)

(assert (=> b!7137593 (= e!4289604 e!4289601)))

(declare-fun c!1331057 () Bool)

(declare-fun tail!13961 (List!69350) List!69350)

(assert (=> b!7137593 (= c!1331057 (isEmpty!40050 (tail!13961 (exprs!7630 lt!2566233))))))

(declare-fun b!7137594 () Bool)

(assert (=> b!7137594 (= e!4289605 (h!75674 (exprs!7630 lt!2566233)))))

(declare-fun b!7137595 () Bool)

(declare-fun e!4289602 () Regex!18136)

(assert (=> b!7137595 (= e!4289605 e!4289602)))

(declare-fun c!1331056 () Bool)

(assert (=> b!7137595 (= c!1331056 (is-Cons!69226 (exprs!7630 lt!2566233)))))

(declare-fun b!7137596 () Bool)

(assert (=> b!7137596 (= e!4289602 EmptyExpr!18136)))

(declare-fun b!7137597 () Bool)

(declare-fun head!14491 (List!69350) Regex!18136)

(assert (=> b!7137597 (= e!4289601 (= lt!2566268 (head!14491 (exprs!7630 lt!2566233))))))

(declare-fun b!7137598 () Bool)

(assert (=> b!7137598 (= e!4289602 (Concat!26981 (h!75674 (exprs!7630 lt!2566233)) (generalisedConcat!2327 (t!383367 (exprs!7630 lt!2566233)))))))

(assert (= (and d!2226739 res!2912409) b!7137589))

(assert (= (and d!2226739 c!1331058) b!7137594))

(assert (= (and d!2226739 (not c!1331058)) b!7137595))

(assert (= (and b!7137595 c!1331056) b!7137598))

(assert (= (and b!7137595 (not c!1331056)) b!7137596))

(assert (= (and d!2226739 res!2912410) b!7137590))

(assert (= (and b!7137590 c!1331055) b!7137591))

(assert (= (and b!7137590 (not c!1331055)) b!7137593))

(assert (= (and b!7137593 c!1331057) b!7137597))

(assert (= (and b!7137593 (not c!1331057)) b!7137592))

(declare-fun m!7853328 () Bool)

(assert (=> b!7137592 m!7853328))

(declare-fun m!7853330 () Bool)

(assert (=> b!7137597 m!7853330))

(declare-fun m!7853332 () Bool)

(assert (=> b!7137598 m!7853332))

(declare-fun m!7853334 () Bool)

(assert (=> b!7137591 m!7853334))

(declare-fun m!7853336 () Bool)

(assert (=> b!7137590 m!7853336))

(declare-fun m!7853338 () Bool)

(assert (=> b!7137589 m!7853338))

(declare-fun m!7853340 () Bool)

(assert (=> d!2226739 m!7853340))

(declare-fun m!7853342 () Bool)

(assert (=> d!2226739 m!7853342))

(declare-fun m!7853344 () Bool)

(assert (=> b!7137593 m!7853344))

(assert (=> b!7137593 m!7853344))

(declare-fun m!7853346 () Bool)

(assert (=> b!7137593 m!7853346))

(assert (=> b!7137453 d!2226739))

(declare-fun d!2226743 () Bool)

(assert (=> d!2226743 (contains!20576 (unfocusZipperList!2177 lt!2566234) (generalisedConcat!2327 (exprs!7630 lt!2566233)))))

(declare-fun lt!2566273 () Unit!163131)

(declare-fun choose!55170 (List!69351 Context!14260) Unit!163131)

(assert (=> d!2226743 (= lt!2566273 (choose!55170 lt!2566234 lt!2566233))))

(declare-fun contains!20578 (List!69351 Context!14260) Bool)

(assert (=> d!2226743 (contains!20578 lt!2566234 lt!2566233)))

(assert (=> d!2226743 (= (lemmaZipperContainsContextThenUnfocusZipperListContains!1 lt!2566234 lt!2566233) lt!2566273)))

(declare-fun bs!1887711 () Bool)

(assert (= bs!1887711 d!2226743))

(assert (=> bs!1887711 m!7853254))

(assert (=> bs!1887711 m!7853230))

(declare-fun m!7853348 () Bool)

(assert (=> bs!1887711 m!7853348))

(declare-fun m!7853350 () Bool)

(assert (=> bs!1887711 m!7853350))

(declare-fun m!7853352 () Bool)

(assert (=> bs!1887711 m!7853352))

(assert (=> bs!1887711 m!7853254))

(assert (=> bs!1887711 m!7853230))

(assert (=> b!7137453 d!2226743))

(declare-fun bs!1887712 () Bool)

(declare-fun d!2226745 () Bool)

(assert (= bs!1887712 (and d!2226745 d!2226731)))

(declare-fun lambda!433947 () Int)

(assert (=> bs!1887712 (not (= lambda!433947 lambda!433941))))

(declare-fun bs!1887713 () Bool)

(assert (= bs!1887713 (and d!2226745 d!2226725)))

(assert (=> bs!1887713 (not (= lambda!433947 lambda!433935))))

(declare-fun bs!1887714 () Bool)

(assert (= bs!1887714 (and d!2226745 b!7137453)))

(assert (=> bs!1887714 (= lambda!433947 lambda!433917)))

(assert (=> bs!1887712 (= lambda!433947 lambda!433940)))

(declare-fun bs!1887715 () Bool)

(assert (= bs!1887715 (and d!2226745 d!2226739)))

(assert (=> bs!1887715 (= lambda!433947 lambda!433944)))

(declare-fun bs!1887716 () Bool)

(assert (= bs!1887716 (and d!2226745 b!7137448)))

(assert (=> bs!1887716 (not (= lambda!433947 lambda!433915))))

(assert (=> d!2226745 (= (inv!88405 setElem!52408) (forall!16976 (exprs!7630 setElem!52408) lambda!433947))))

(declare-fun bs!1887717 () Bool)

(assert (= bs!1887717 d!2226745))

(declare-fun m!7853360 () Bool)

(assert (=> bs!1887717 m!7853360))

(assert (=> setNonEmpty!52408 d!2226745))

(declare-fun bs!1887718 () Bool)

(declare-fun d!2226749 () Bool)

(assert (= bs!1887718 (and d!2226749 d!2226745)))

(declare-fun lambda!433950 () Int)

(assert (=> bs!1887718 (not (= lambda!433950 lambda!433947))))

(declare-fun bs!1887719 () Bool)

(assert (= bs!1887719 (and d!2226749 d!2226731)))

(assert (=> bs!1887719 (= lambda!433950 lambda!433941)))

(declare-fun bs!1887720 () Bool)

(assert (= bs!1887720 (and d!2226749 d!2226725)))

(assert (=> bs!1887720 (not (= lambda!433950 lambda!433935))))

(declare-fun bs!1887721 () Bool)

(assert (= bs!1887721 (and d!2226749 b!7137453)))

(assert (=> bs!1887721 (not (= lambda!433950 lambda!433917))))

(assert (=> bs!1887719 (not (= lambda!433950 lambda!433940))))

(declare-fun bs!1887722 () Bool)

(assert (= bs!1887722 (and d!2226749 d!2226739)))

(assert (=> bs!1887722 (not (= lambda!433950 lambda!433944))))

(declare-fun bs!1887723 () Bool)

(assert (= bs!1887723 (and d!2226749 b!7137448)))

(assert (=> bs!1887723 (= lambda!433950 lambda!433915)))

(assert (=> d!2226749 (= (nullableContext!135 lt!2566233) (forall!16976 (exprs!7630 lt!2566233) lambda!433950))))

(declare-fun bs!1887724 () Bool)

(assert (= bs!1887724 d!2226749))

(declare-fun m!7853362 () Bool)

(assert (=> bs!1887724 m!7853362))

(assert (=> b!7137449 d!2226749))

(declare-fun d!2226751 () Bool)

(declare-fun lt!2566277 () Bool)

(declare-fun exists!3897 (List!69351 Int) Bool)

(assert (=> d!2226751 (= lt!2566277 (exists!3897 (toList!11167 z!3189) lambda!433916))))

(declare-fun choose!55171 ((Set Context!14260) Int) Bool)

(assert (=> d!2226751 (= lt!2566277 (choose!55171 z!3189 lambda!433916))))

(assert (=> d!2226751 (= (exists!3894 z!3189 lambda!433916) lt!2566277)))

(declare-fun bs!1887725 () Bool)

(assert (= bs!1887725 d!2226751))

(assert (=> bs!1887725 m!7853240))

(assert (=> bs!1887725 m!7853240))

(declare-fun m!7853368 () Bool)

(assert (=> bs!1887725 m!7853368))

(declare-fun m!7853370 () Bool)

(assert (=> bs!1887725 m!7853370))

(assert (=> b!7137455 d!2226751))

(declare-fun bs!1887726 () Bool)

(declare-fun d!2226755 () Bool)

(assert (= bs!1887726 (and d!2226755 d!2226745)))

(declare-fun lambda!433953 () Int)

(assert (=> bs!1887726 (= lambda!433953 lambda!433947)))

(declare-fun bs!1887727 () Bool)

(assert (= bs!1887727 (and d!2226755 d!2226731)))

(assert (=> bs!1887727 (not (= lambda!433953 lambda!433941))))

(declare-fun bs!1887728 () Bool)

(assert (= bs!1887728 (and d!2226755 d!2226725)))

(assert (=> bs!1887728 (not (= lambda!433953 lambda!433935))))

(declare-fun bs!1887729 () Bool)

(assert (= bs!1887729 (and d!2226755 b!7137453)))

(assert (=> bs!1887729 (= lambda!433953 lambda!433917)))

(assert (=> bs!1887727 (= lambda!433953 lambda!433940)))

(declare-fun bs!1887730 () Bool)

(assert (= bs!1887730 (and d!2226755 d!2226739)))

(assert (=> bs!1887730 (= lambda!433953 lambda!433944)))

(declare-fun bs!1887731 () Bool)

(assert (= bs!1887731 (and d!2226755 d!2226749)))

(assert (=> bs!1887731 (not (= lambda!433953 lambda!433950))))

(declare-fun bs!1887732 () Bool)

(assert (= bs!1887732 (and d!2226755 b!7137448)))

(assert (=> bs!1887732 (not (= lambda!433953 lambda!433915))))

(declare-fun b!7137634 () Bool)

(declare-fun e!4289638 () Bool)

(assert (=> b!7137634 (= e!4289638 (isEmpty!40050 (t!383367 lt!2566235)))))

(declare-fun b!7137635 () Bool)

(declare-fun e!4289634 () Bool)

(declare-fun e!4289637 () Bool)

(assert (=> b!7137635 (= e!4289634 e!4289637)))

(declare-fun c!1331071 () Bool)

(assert (=> b!7137635 (= c!1331071 (isEmpty!40050 (tail!13961 lt!2566235)))))

(declare-fun b!7137636 () Bool)

(declare-fun e!4289636 () Regex!18136)

(assert (=> b!7137636 (= e!4289636 (Union!18136 (h!75674 lt!2566235) (generalisedUnion!2641 (t!383367 lt!2566235))))))

(declare-fun b!7137637 () Bool)

(declare-fun lt!2566283 () Regex!18136)

(declare-fun isUnion!1510 (Regex!18136) Bool)

(assert (=> b!7137637 (= e!4289637 (isUnion!1510 lt!2566283))))

(declare-fun b!7137638 () Bool)

(declare-fun e!4289635 () Regex!18136)

(assert (=> b!7137638 (= e!4289635 e!4289636)))

(declare-fun c!1331072 () Bool)

(assert (=> b!7137638 (= c!1331072 (is-Cons!69226 lt!2566235))))

(declare-fun b!7137639 () Bool)

(declare-fun isEmptyLang!2082 (Regex!18136) Bool)

(assert (=> b!7137639 (= e!4289634 (isEmptyLang!2082 lt!2566283))))

(declare-fun b!7137640 () Bool)

(declare-fun e!4289633 () Bool)

(assert (=> b!7137640 (= e!4289633 e!4289634)))

(declare-fun c!1331070 () Bool)

(assert (=> b!7137640 (= c!1331070 (isEmpty!40050 lt!2566235))))

(declare-fun b!7137641 () Bool)

(assert (=> b!7137641 (= e!4289636 EmptyLang!18136)))

(declare-fun b!7137642 () Bool)

(assert (=> b!7137642 (= e!4289635 (h!75674 lt!2566235))))

(declare-fun b!7137643 () Bool)

(assert (=> b!7137643 (= e!4289637 (= lt!2566283 (head!14491 lt!2566235)))))

(assert (=> d!2226755 e!4289633))

(declare-fun res!2912430 () Bool)

(assert (=> d!2226755 (=> (not res!2912430) (not e!4289633))))

(assert (=> d!2226755 (= res!2912430 (validRegex!9303 lt!2566283))))

(assert (=> d!2226755 (= lt!2566283 e!4289635)))

(declare-fun c!1331069 () Bool)

(assert (=> d!2226755 (= c!1331069 e!4289638)))

(declare-fun res!2912431 () Bool)

(assert (=> d!2226755 (=> (not res!2912431) (not e!4289638))))

(assert (=> d!2226755 (= res!2912431 (is-Cons!69226 lt!2566235))))

(assert (=> d!2226755 (forall!16976 lt!2566235 lambda!433953)))

(assert (=> d!2226755 (= (generalisedUnion!2641 lt!2566235) lt!2566283)))

(assert (= (and d!2226755 res!2912431) b!7137634))

(assert (= (and d!2226755 c!1331069) b!7137642))

(assert (= (and d!2226755 (not c!1331069)) b!7137638))

(assert (= (and b!7137638 c!1331072) b!7137636))

(assert (= (and b!7137638 (not c!1331072)) b!7137641))

(assert (= (and d!2226755 res!2912430) b!7137640))

(assert (= (and b!7137640 c!1331070) b!7137639))

(assert (= (and b!7137640 (not c!1331070)) b!7137635))

(assert (= (and b!7137635 c!1331071) b!7137643))

(assert (= (and b!7137635 (not c!1331071)) b!7137637))

(declare-fun m!7853378 () Bool)

(assert (=> b!7137639 m!7853378))

(declare-fun m!7853380 () Bool)

(assert (=> b!7137636 m!7853380))

(declare-fun m!7853382 () Bool)

(assert (=> b!7137643 m!7853382))

(declare-fun m!7853384 () Bool)

(assert (=> d!2226755 m!7853384))

(declare-fun m!7853386 () Bool)

(assert (=> d!2226755 m!7853386))

(declare-fun m!7853388 () Bool)

(assert (=> b!7137640 m!7853388))

(declare-fun m!7853390 () Bool)

(assert (=> b!7137637 m!7853390))

(declare-fun m!7853392 () Bool)

(assert (=> b!7137635 m!7853392))

(assert (=> b!7137635 m!7853392))

(declare-fun m!7853394 () Bool)

(assert (=> b!7137635 m!7853394))

(declare-fun m!7853396 () Bool)

(assert (=> b!7137634 m!7853396))

(assert (=> b!7137451 d!2226755))

(declare-fun bs!1887733 () Bool)

(declare-fun d!2226759 () Bool)

(assert (= bs!1887733 (and d!2226759 d!2226745)))

(declare-fun lambda!433956 () Int)

(assert (=> bs!1887733 (= lambda!433956 lambda!433947)))

(declare-fun bs!1887734 () Bool)

(assert (= bs!1887734 (and d!2226759 d!2226731)))

(assert (=> bs!1887734 (not (= lambda!433956 lambda!433941))))

(declare-fun bs!1887735 () Bool)

(assert (= bs!1887735 (and d!2226759 d!2226725)))

(assert (=> bs!1887735 (not (= lambda!433956 lambda!433935))))

(declare-fun bs!1887736 () Bool)

(assert (= bs!1887736 (and d!2226759 b!7137453)))

(assert (=> bs!1887736 (= lambda!433956 lambda!433917)))

(assert (=> bs!1887734 (= lambda!433956 lambda!433940)))

(declare-fun bs!1887737 () Bool)

(assert (= bs!1887737 (and d!2226759 d!2226739)))

(assert (=> bs!1887737 (= lambda!433956 lambda!433944)))

(declare-fun bs!1887738 () Bool)

(assert (= bs!1887738 (and d!2226759 d!2226749)))

(assert (=> bs!1887738 (not (= lambda!433956 lambda!433950))))

(declare-fun bs!1887739 () Bool)

(assert (= bs!1887739 (and d!2226759 b!7137448)))

(assert (=> bs!1887739 (not (= lambda!433956 lambda!433915))))

(declare-fun bs!1887740 () Bool)

(assert (= bs!1887740 (and d!2226759 d!2226755)))

(assert (=> bs!1887740 (= lambda!433956 lambda!433953)))

(declare-fun lt!2566286 () List!69350)

(assert (=> d!2226759 (forall!16976 lt!2566286 lambda!433956)))

(declare-fun e!4289641 () List!69350)

(assert (=> d!2226759 (= lt!2566286 e!4289641)))

(declare-fun c!1331075 () Bool)

(assert (=> d!2226759 (= c!1331075 (is-Cons!69227 lt!2566234))))

(assert (=> d!2226759 (= (unfocusZipperList!2177 lt!2566234) lt!2566286)))

(declare-fun b!7137648 () Bool)

(assert (=> b!7137648 (= e!4289641 (Cons!69226 (generalisedConcat!2327 (exprs!7630 (h!75675 lt!2566234))) (unfocusZipperList!2177 (t!383368 lt!2566234))))))

(declare-fun b!7137649 () Bool)

(assert (=> b!7137649 (= e!4289641 Nil!69226)))

(assert (= (and d!2226759 c!1331075) b!7137648))

(assert (= (and d!2226759 (not c!1331075)) b!7137649))

(declare-fun m!7853398 () Bool)

(assert (=> d!2226759 m!7853398))

(declare-fun m!7853400 () Bool)

(assert (=> b!7137648 m!7853400))

(declare-fun m!7853402 () Bool)

(assert (=> b!7137648 m!7853402))

(assert (=> b!7137451 d!2226759))

(declare-fun d!2226761 () Bool)

(declare-fun lt!2566291 () Regex!18136)

(assert (=> d!2226761 (validRegex!9303 lt!2566291)))

(assert (=> d!2226761 (= lt!2566291 (generalisedUnion!2641 (unfocusZipperList!2177 lt!2566234)))))

(assert (=> d!2226761 (= (unfocusZipper!2484 lt!2566234) lt!2566291)))

(declare-fun bs!1887741 () Bool)

(assert (= bs!1887741 d!2226761))

(declare-fun m!7853404 () Bool)

(assert (=> bs!1887741 m!7853404))

(assert (=> bs!1887741 m!7853254))

(assert (=> bs!1887741 m!7853254))

(declare-fun m!7853406 () Bool)

(assert (=> bs!1887741 m!7853406))

(assert (=> b!7137445 d!2226761))

(declare-fun d!2226763 () Bool)

(declare-fun e!4289656 () Bool)

(assert (=> d!2226763 e!4289656))

(declare-fun res!2912438 () Bool)

(assert (=> d!2226763 (=> (not res!2912438) (not e!4289656))))

(declare-fun lt!2566294 () List!69351)

(declare-fun noDuplicate!2812 (List!69351) Bool)

(assert (=> d!2226763 (= res!2912438 (noDuplicate!2812 lt!2566294))))

(declare-fun choose!55172 ((Set Context!14260)) List!69351)

(assert (=> d!2226763 (= lt!2566294 (choose!55172 z!3189))))

(assert (=> d!2226763 (= (toList!11167 z!3189) lt!2566294)))

(declare-fun b!7137672 () Bool)

(declare-fun content!14171 (List!69351) (Set Context!14260))

(assert (=> b!7137672 (= e!4289656 (= (content!14171 lt!2566294) z!3189))))

(assert (= (and d!2226763 res!2912438) b!7137672))

(declare-fun m!7853408 () Bool)

(assert (=> d!2226763 m!7853408))

(declare-fun m!7853410 () Bool)

(assert (=> d!2226763 m!7853410))

(declare-fun m!7853412 () Bool)

(assert (=> b!7137672 m!7853412))

(assert (=> b!7137445 d!2226763))

(declare-fun b!7137686 () Bool)

(declare-fun e!4289659 () Bool)

(declare-fun tp!1968042 () Bool)

(declare-fun tp!1968043 () Bool)

(assert (=> b!7137686 (= e!4289659 (and tp!1968042 tp!1968043))))

(declare-fun b!7137685 () Bool)

(declare-fun tp!1968041 () Bool)

(assert (=> b!7137685 (= e!4289659 tp!1968041)))

(declare-fun b!7137683 () Bool)

(assert (=> b!7137683 (= e!4289659 tp_is_empty!45909)))

(declare-fun b!7137684 () Bool)

(declare-fun tp!1968044 () Bool)

(declare-fun tp!1968040 () Bool)

(assert (=> b!7137684 (= e!4289659 (and tp!1968044 tp!1968040))))

(assert (=> b!7137446 (= tp!1968007 e!4289659)))

(assert (= (and b!7137446 (is-ElementMatch!18136 (reg!18465 r!11483))) b!7137683))

(assert (= (and b!7137446 (is-Concat!26981 (reg!18465 r!11483))) b!7137684))

(assert (= (and b!7137446 (is-Star!18136 (reg!18465 r!11483))) b!7137685))

(assert (= (and b!7137446 (is-Union!18136 (reg!18465 r!11483))) b!7137686))

(declare-fun b!7137690 () Bool)

(declare-fun e!4289660 () Bool)

(declare-fun tp!1968047 () Bool)

(declare-fun tp!1968048 () Bool)

(assert (=> b!7137690 (= e!4289660 (and tp!1968047 tp!1968048))))

(declare-fun b!7137689 () Bool)

(declare-fun tp!1968046 () Bool)

(assert (=> b!7137689 (= e!4289660 tp!1968046)))

(declare-fun b!7137687 () Bool)

(assert (=> b!7137687 (= e!4289660 tp_is_empty!45909)))

(declare-fun b!7137688 () Bool)

(declare-fun tp!1968049 () Bool)

(declare-fun tp!1968045 () Bool)

(assert (=> b!7137688 (= e!4289660 (and tp!1968049 tp!1968045))))

(assert (=> b!7137443 (= tp!1968004 e!4289660)))

(assert (= (and b!7137443 (is-ElementMatch!18136 (regOne!36784 r!11483))) b!7137687))

(assert (= (and b!7137443 (is-Concat!26981 (regOne!36784 r!11483))) b!7137688))

(assert (= (and b!7137443 (is-Star!18136 (regOne!36784 r!11483))) b!7137689))

(assert (= (and b!7137443 (is-Union!18136 (regOne!36784 r!11483))) b!7137690))

(declare-fun b!7137694 () Bool)

(declare-fun e!4289661 () Bool)

(declare-fun tp!1968052 () Bool)

(declare-fun tp!1968053 () Bool)

(assert (=> b!7137694 (= e!4289661 (and tp!1968052 tp!1968053))))

(declare-fun b!7137693 () Bool)

(declare-fun tp!1968051 () Bool)

(assert (=> b!7137693 (= e!4289661 tp!1968051)))

(declare-fun b!7137691 () Bool)

(assert (=> b!7137691 (= e!4289661 tp_is_empty!45909)))

(declare-fun b!7137692 () Bool)

(declare-fun tp!1968054 () Bool)

(declare-fun tp!1968050 () Bool)

(assert (=> b!7137692 (= e!4289661 (and tp!1968054 tp!1968050))))

(assert (=> b!7137443 (= tp!1968002 e!4289661)))

(assert (= (and b!7137443 (is-ElementMatch!18136 (regTwo!36784 r!11483))) b!7137691))

(assert (= (and b!7137443 (is-Concat!26981 (regTwo!36784 r!11483))) b!7137692))

(assert (= (and b!7137443 (is-Star!18136 (regTwo!36784 r!11483))) b!7137693))

(assert (= (and b!7137443 (is-Union!18136 (regTwo!36784 r!11483))) b!7137694))

(declare-fun b!7137699 () Bool)

(declare-fun e!4289664 () Bool)

(declare-fun tp!1968059 () Bool)

(declare-fun tp!1968060 () Bool)

(assert (=> b!7137699 (= e!4289664 (and tp!1968059 tp!1968060))))

(assert (=> b!7137444 (= tp!1968008 e!4289664)))

(assert (= (and b!7137444 (is-Cons!69226 (exprs!7630 setElem!52408))) b!7137699))

(declare-fun b!7137703 () Bool)

(declare-fun e!4289665 () Bool)

(declare-fun tp!1968063 () Bool)

(declare-fun tp!1968064 () Bool)

(assert (=> b!7137703 (= e!4289665 (and tp!1968063 tp!1968064))))

(declare-fun b!7137702 () Bool)

(declare-fun tp!1968062 () Bool)

(assert (=> b!7137702 (= e!4289665 tp!1968062)))

(declare-fun b!7137700 () Bool)

(assert (=> b!7137700 (= e!4289665 tp_is_empty!45909)))

(declare-fun b!7137701 () Bool)

(declare-fun tp!1968065 () Bool)

(declare-fun tp!1968061 () Bool)

(assert (=> b!7137701 (= e!4289665 (and tp!1968065 tp!1968061))))

(assert (=> b!7137454 (= tp!1968006 e!4289665)))

(assert (= (and b!7137454 (is-ElementMatch!18136 (regOne!36785 r!11483))) b!7137700))

(assert (= (and b!7137454 (is-Concat!26981 (regOne!36785 r!11483))) b!7137701))

(assert (= (and b!7137454 (is-Star!18136 (regOne!36785 r!11483))) b!7137702))

(assert (= (and b!7137454 (is-Union!18136 (regOne!36785 r!11483))) b!7137703))

(declare-fun b!7137707 () Bool)

(declare-fun e!4289666 () Bool)

(declare-fun tp!1968068 () Bool)

(declare-fun tp!1968069 () Bool)

(assert (=> b!7137707 (= e!4289666 (and tp!1968068 tp!1968069))))

(declare-fun b!7137706 () Bool)

(declare-fun tp!1968067 () Bool)

(assert (=> b!7137706 (= e!4289666 tp!1968067)))

(declare-fun b!7137704 () Bool)

(assert (=> b!7137704 (= e!4289666 tp_is_empty!45909)))

(declare-fun b!7137705 () Bool)

(declare-fun tp!1968070 () Bool)

(declare-fun tp!1968066 () Bool)

(assert (=> b!7137705 (= e!4289666 (and tp!1968070 tp!1968066))))

(assert (=> b!7137454 (= tp!1968005 e!4289666)))

(assert (= (and b!7137454 (is-ElementMatch!18136 (regTwo!36785 r!11483))) b!7137704))

(assert (= (and b!7137454 (is-Concat!26981 (regTwo!36785 r!11483))) b!7137705))

(assert (= (and b!7137454 (is-Star!18136 (regTwo!36785 r!11483))) b!7137706))

(assert (= (and b!7137454 (is-Union!18136 (regTwo!36785 r!11483))) b!7137707))

(declare-fun condSetEmpty!52414 () Bool)

(assert (=> setNonEmpty!52408 (= condSetEmpty!52414 (= setRest!52408 (as set.empty (Set Context!14260))))))

(declare-fun setRes!52414 () Bool)

(assert (=> setNonEmpty!52408 (= tp!1968003 setRes!52414)))

(declare-fun setIsEmpty!52414 () Bool)

(assert (=> setIsEmpty!52414 setRes!52414))

(declare-fun tp!1968075 () Bool)

(declare-fun setElem!52414 () Context!14260)

(declare-fun e!4289669 () Bool)

(declare-fun setNonEmpty!52414 () Bool)

(assert (=> setNonEmpty!52414 (= setRes!52414 (and tp!1968075 (inv!88405 setElem!52414) e!4289669))))

(declare-fun setRest!52414 () (Set Context!14260))

(assert (=> setNonEmpty!52414 (= setRest!52408 (set.union (set.insert setElem!52414 (as set.empty (Set Context!14260))) setRest!52414))))

(declare-fun b!7137712 () Bool)

(declare-fun tp!1968076 () Bool)

(assert (=> b!7137712 (= e!4289669 tp!1968076)))

(assert (= (and setNonEmpty!52408 condSetEmpty!52414) setIsEmpty!52414))

(assert (= (and setNonEmpty!52408 (not condSetEmpty!52414)) setNonEmpty!52414))

(assert (= setNonEmpty!52414 b!7137712))

(declare-fun m!7853414 () Bool)

(assert (=> setNonEmpty!52414 m!7853414))

(declare-fun b_lambda!272421 () Bool)

(assert (= b_lambda!272413 (or b!7137455 b_lambda!272421)))

(declare-fun bs!1887742 () Bool)

(declare-fun d!2226765 () Bool)

(assert (= bs!1887742 (and d!2226765 b!7137455)))

(assert (=> bs!1887742 (= (dynLambda!28157 lambda!433916 lt!2566259) (nullableContext!135 lt!2566259))))

(declare-fun m!7853416 () Bool)

(assert (=> bs!1887742 m!7853416))

(assert (=> d!2226723 d!2226765))

(declare-fun b_lambda!272423 () Bool)

(assert (= b_lambda!272415 (or b!7137453 b_lambda!272423)))

(declare-fun bs!1887743 () Bool)

(declare-fun d!2226767 () Bool)

(assert (= bs!1887743 (and d!2226767 b!7137453)))

(assert (=> bs!1887743 (= (dynLambda!28159 lambda!433917 (h!75674 (exprs!7630 lt!2566233))) (validRegex!9303 (h!75674 (exprs!7630 lt!2566233))))))

(declare-fun m!7853418 () Bool)

(assert (=> bs!1887743 m!7853418))

(assert (=> b!7137546 d!2226767))

(push 1)

(assert (not b!7137705))

(assert (not b!7137703))

(assert (not b!7137699))

(assert (not b!7137693))

(assert (not b!7137637))

(assert (not b!7137643))

(assert (not b_lambda!272423))

(assert (not d!2226761))

(assert (not b!7137590))

(assert (not b!7137547))

(assert (not b!7137684))

(assert (not bs!1887743))

(assert (not b_lambda!272421))

(assert (not b!7137686))

(assert (not b!7137598))

(assert (not d!2226755))

(assert (not b!7137706))

(assert (not b!7137672))

(assert (not b!7137597))

(assert (not d!2226763))

(assert (not d!2226749))

(assert (not b!7137694))

(assert (not setNonEmpty!52414))

(assert (not b!7137692))

(assert (not b!7137639))

(assert (not d!2226759))

(assert (not d!2226739))

(assert tp_is_empty!45909)

(assert (not b!7137522))

(assert (not d!2226731))

(assert (not b!7137712))

(assert (not b!7137593))

(assert (not b!7137707))

(assert (not b!7137685))

(assert (not d!2226745))

(assert (not b!7137634))

(assert (not b!7137689))

(assert (not b!7137648))

(assert (not b!7137690))

(assert (not d!2226729))

(assert (not d!2226725))

(assert (not bm!651031))

(assert (not b!7137592))

(assert (not b!7137591))

(assert (not bs!1887742))

(assert (not b!7137635))

(assert (not b!7137688))

(assert (not d!2226743))

(assert (not d!2226751))

(assert (not d!2226723))

(assert (not b!7137559))

(assert (not b!7137589))

(assert (not b!7137636))

(assert (not d!2226737))

(assert (not b!7137640))

(assert (not b!7137701))

(assert (not bm!651030))

(assert (not b!7137702))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

