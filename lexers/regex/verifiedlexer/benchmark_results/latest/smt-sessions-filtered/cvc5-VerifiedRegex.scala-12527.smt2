; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!696002 () Bool)

(assert start!696002)

(declare-fun b!7140615 () Bool)

(assert (=> b!7140615 true))

(declare-fun b!7140614 () Bool)

(declare-fun e!4291309 () Bool)

(declare-fun tp!1969303 () Bool)

(declare-fun tp!1969304 () Bool)

(assert (=> b!7140614 (= e!4291309 (and tp!1969303 tp!1969304))))

(declare-fun e!4291304 () Bool)

(declare-fun e!4291302 () Bool)

(assert (=> b!7140615 (= e!4291304 e!4291302)))

(declare-fun res!2913511 () Bool)

(assert (=> b!7140615 (=> res!2913511 e!4291302)))

(declare-datatypes ((C!36598 0))(
  ( (C!36599 (val!28247 Int)) )
))
(declare-datatypes ((Regex!18162 0))(
  ( (ElementMatch!18162 (c!1331601 C!36598)) (Concat!27007 (regOne!36836 Regex!18162) (regTwo!36836 Regex!18162)) (EmptyExpr!18162) (Star!18162 (reg!18491 Regex!18162)) (EmptyLang!18162) (Union!18162 (regOne!36837 Regex!18162) (regTwo!36837 Regex!18162)) )
))
(declare-datatypes ((List!69402 0))(
  ( (Nil!69278) (Cons!69278 (h!75726 Regex!18162) (t!383419 List!69402)) )
))
(declare-datatypes ((Context!14312 0))(
  ( (Context!14313 (exprs!7656 List!69402)) )
))
(declare-fun z!3189 () (Set Context!14312))

(declare-fun lambda!434576 () Int)

(declare-fun exists!3942 ((Set Context!14312) Int) Bool)

(assert (=> b!7140615 (= res!2913511 (not (exists!3942 z!3189 lambda!434576)))))

(declare-datatypes ((List!69403 0))(
  ( (Nil!69279) (Cons!69279 (h!75727 Context!14312) (t!383420 List!69403)) )
))
(declare-fun lt!2567180 () List!69403)

(declare-fun exists!3943 (List!69403 Int) Bool)

(assert (=> b!7140615 (exists!3943 lt!2567180 lambda!434576)))

(declare-datatypes ((Unit!163187 0))(
  ( (Unit!163188) )
))
(declare-fun lt!2567179 () Unit!163187)

(declare-fun lt!2567178 () Regex!18162)

(declare-fun lemmaUnfocusZipperListContainsRegexFromContextThenZipperContains!21 (List!69403 Regex!18162) Unit!163187)

(assert (=> b!7140615 (= lt!2567179 (lemmaUnfocusZipperListContainsRegexFromContextThenZipperContains!21 lt!2567180 lt!2567178))))

(declare-fun b!7140616 () Bool)

(declare-fun res!2913513 () Bool)

(declare-fun e!4291305 () Bool)

(assert (=> b!7140616 (=> res!2913513 e!4291305)))

(declare-fun lt!2567176 () Bool)

(assert (=> b!7140616 (= res!2913513 (not lt!2567176))))

(declare-fun b!7140617 () Bool)

(declare-fun e!4291303 () Bool)

(declare-fun lt!2567175 () Context!14312)

(declare-fun generalisedConcat!2346 (List!69402) Regex!18162)

(assert (=> b!7140617 (= e!4291303 (= (generalisedConcat!2346 (exprs!7656 lt!2567175)) lt!2567178))))

(declare-fun b!7140618 () Bool)

(declare-fun tp!1969305 () Bool)

(assert (=> b!7140618 (= e!4291309 tp!1969305)))

(declare-fun b!7140619 () Bool)

(declare-fun e!4291306 () Bool)

(declare-fun e!4291301 () Bool)

(assert (=> b!7140619 (= e!4291306 e!4291301)))

(declare-fun res!2913517 () Bool)

(assert (=> b!7140619 (=> (not res!2913517) (not e!4291301))))

(declare-fun r!11483 () Regex!18162)

(declare-fun lt!2567174 () Regex!18162)

(assert (=> b!7140619 (= res!2913517 (= r!11483 lt!2567174))))

(declare-fun lt!2567173 () List!69402)

(declare-fun generalisedUnion!2667 (List!69402) Regex!18162)

(assert (=> b!7140619 (= lt!2567174 (generalisedUnion!2667 lt!2567173))))

(declare-fun unfocusZipperList!2203 (List!69403) List!69402)

(assert (=> b!7140619 (= lt!2567173 (unfocusZipperList!2203 lt!2567180))))

(declare-fun b!7140620 () Bool)

(assert (=> b!7140620 (= e!4291302 e!4291303)))

(declare-fun res!2913512 () Bool)

(assert (=> b!7140620 (=> res!2913512 e!4291303)))

(assert (=> b!7140620 (= res!2913512 (not (set.member lt!2567175 z!3189)))))

(declare-fun getWitness!1925 ((Set Context!14312) Int) Context!14312)

(assert (=> b!7140620 (= lt!2567175 (getWitness!1925 z!3189 lambda!434576))))

(declare-fun b!7140621 () Bool)

(assert (=> b!7140621 (= e!4291305 e!4291304)))

(declare-fun res!2913515 () Bool)

(assert (=> b!7140621 (=> res!2913515 e!4291304)))

(declare-fun nullable!7681 (Regex!18162) Bool)

(assert (=> b!7140621 (= res!2913515 (not (nullable!7681 lt!2567178)))))

(declare-fun lambda!434575 () Int)

(declare-fun getWitness!1926 (List!69402 Int) Regex!18162)

(assert (=> b!7140621 (= lt!2567178 (getWitness!1926 lt!2567173 lambda!434575))))

(declare-fun b!7140622 () Bool)

(declare-fun res!2913518 () Bool)

(assert (=> b!7140622 (=> res!2913518 e!4291304)))

(declare-fun contains!20602 (List!69402 Regex!18162) Bool)

(assert (=> b!7140622 (= res!2913518 (not (contains!20602 lt!2567173 lt!2567178)))))

(declare-fun b!7140624 () Bool)

(declare-fun e!4291308 () Bool)

(declare-fun tp!1969301 () Bool)

(assert (=> b!7140624 (= e!4291308 tp!1969301)))

(declare-fun setElem!52534 () Context!14312)

(declare-fun setRes!52534 () Bool)

(declare-fun tp!1969300 () Bool)

(declare-fun setNonEmpty!52534 () Bool)

(declare-fun inv!88470 (Context!14312) Bool)

(assert (=> setNonEmpty!52534 (= setRes!52534 (and tp!1969300 (inv!88470 setElem!52534) e!4291308))))

(declare-fun setRest!52534 () (Set Context!14312))

(assert (=> setNonEmpty!52534 (= z!3189 (set.union (set.insert setElem!52534 (as set.empty (Set Context!14312))) setRest!52534))))

(declare-fun b!7140625 () Bool)

(declare-fun e!4291307 () Bool)

(assert (=> b!7140625 (= e!4291307 e!4291306)))

(declare-fun res!2913516 () Bool)

(assert (=> b!7140625 (=> (not res!2913516) (not e!4291306))))

(declare-fun unfocusZipper!2510 (List!69403) Regex!18162)

(assert (=> b!7140625 (= res!2913516 (= r!11483 (unfocusZipper!2510 lt!2567180)))))

(declare-fun toList!11193 ((Set Context!14312)) List!69403)

(assert (=> b!7140625 (= lt!2567180 (toList!11193 z!3189))))

(declare-fun res!2913514 () Bool)

(assert (=> start!696002 (=> (not res!2913514) (not e!4291307))))

(declare-fun validRegex!9329 (Regex!18162) Bool)

(assert (=> start!696002 (= res!2913514 (validRegex!9329 r!11483))))

(assert (=> start!696002 e!4291307))

(assert (=> start!696002 e!4291309))

(declare-fun condSetEmpty!52534 () Bool)

(assert (=> start!696002 (= condSetEmpty!52534 (= z!3189 (as set.empty (Set Context!14312))))))

(assert (=> start!696002 setRes!52534))

(declare-fun b!7140623 () Bool)

(declare-fun res!2913519 () Bool)

(assert (=> b!7140623 (=> res!2913519 e!4291305)))

(declare-fun exists!3944 (List!69402 Int) Bool)

(assert (=> b!7140623 (= res!2913519 (not (exists!3944 lt!2567173 lambda!434575)))))

(declare-fun b!7140626 () Bool)

(assert (=> b!7140626 (= e!4291301 (not e!4291305))))

(declare-fun res!2913510 () Bool)

(assert (=> b!7140626 (=> res!2913510 e!4291305)))

(assert (=> b!7140626 (= res!2913510 (not (= lt!2567176 (exists!3944 lt!2567173 lambda!434575))))))

(assert (=> b!7140626 (= lt!2567176 (exists!3944 lt!2567173 lambda!434575))))

(assert (=> b!7140626 (= lt!2567176 (nullable!7681 lt!2567174))))

(declare-fun lt!2567177 () Unit!163187)

(declare-fun nullableGenUnionSpec!49 (Regex!18162 List!69402) Unit!163187)

(assert (=> b!7140626 (= lt!2567177 (nullableGenUnionSpec!49 lt!2567174 lt!2567173))))

(declare-fun setIsEmpty!52534 () Bool)

(assert (=> setIsEmpty!52534 setRes!52534))

(declare-fun b!7140627 () Bool)

(declare-fun tp!1969302 () Bool)

(declare-fun tp!1969306 () Bool)

(assert (=> b!7140627 (= e!4291309 (and tp!1969302 tp!1969306))))

(declare-fun b!7140628 () Bool)

(declare-fun tp_is_empty!45961 () Bool)

(assert (=> b!7140628 (= e!4291309 tp_is_empty!45961)))

(assert (= (and start!696002 res!2913514) b!7140625))

(assert (= (and b!7140625 res!2913516) b!7140619))

(assert (= (and b!7140619 res!2913517) b!7140626))

(assert (= (and b!7140626 (not res!2913510)) b!7140616))

(assert (= (and b!7140616 (not res!2913513)) b!7140623))

(assert (= (and b!7140623 (not res!2913519)) b!7140621))

(assert (= (and b!7140621 (not res!2913515)) b!7140622))

(assert (= (and b!7140622 (not res!2913518)) b!7140615))

(assert (= (and b!7140615 (not res!2913511)) b!7140620))

(assert (= (and b!7140620 (not res!2913512)) b!7140617))

(assert (= (and start!696002 (is-ElementMatch!18162 r!11483)) b!7140628))

(assert (= (and start!696002 (is-Concat!27007 r!11483)) b!7140614))

(assert (= (and start!696002 (is-Star!18162 r!11483)) b!7140618))

(assert (= (and start!696002 (is-Union!18162 r!11483)) b!7140627))

(assert (= (and start!696002 condSetEmpty!52534) setIsEmpty!52534))

(assert (= (and start!696002 (not condSetEmpty!52534)) setNonEmpty!52534))

(assert (= setNonEmpty!52534 b!7140624))

(declare-fun m!7855426 () Bool)

(assert (=> b!7140619 m!7855426))

(declare-fun m!7855428 () Bool)

(assert (=> b!7140619 m!7855428))

(declare-fun m!7855430 () Bool)

(assert (=> b!7140617 m!7855430))

(declare-fun m!7855432 () Bool)

(assert (=> start!696002 m!7855432))

(declare-fun m!7855434 () Bool)

(assert (=> b!7140621 m!7855434))

(declare-fun m!7855436 () Bool)

(assert (=> b!7140621 m!7855436))

(declare-fun m!7855438 () Bool)

(assert (=> b!7140620 m!7855438))

(declare-fun m!7855440 () Bool)

(assert (=> b!7140620 m!7855440))

(declare-fun m!7855442 () Bool)

(assert (=> b!7140623 m!7855442))

(declare-fun m!7855444 () Bool)

(assert (=> setNonEmpty!52534 m!7855444))

(declare-fun m!7855446 () Bool)

(assert (=> b!7140625 m!7855446))

(declare-fun m!7855448 () Bool)

(assert (=> b!7140625 m!7855448))

(declare-fun m!7855450 () Bool)

(assert (=> b!7140615 m!7855450))

(declare-fun m!7855452 () Bool)

(assert (=> b!7140615 m!7855452))

(declare-fun m!7855454 () Bool)

(assert (=> b!7140615 m!7855454))

(declare-fun m!7855456 () Bool)

(assert (=> b!7140622 m!7855456))

(assert (=> b!7140626 m!7855442))

(assert (=> b!7140626 m!7855442))

(declare-fun m!7855458 () Bool)

(assert (=> b!7140626 m!7855458))

(declare-fun m!7855460 () Bool)

(assert (=> b!7140626 m!7855460))

(push 1)

(assert (not b!7140623))

(assert (not b!7140622))

(assert (not b!7140624))

(assert (not b!7140620))

(assert (not start!696002))

(assert (not b!7140614))

(assert (not b!7140625))

(assert (not b!7140627))

(assert (not b!7140617))

(assert (not setNonEmpty!52534))

(assert (not b!7140621))

(assert (not b!7140615))

(assert (not b!7140618))

(assert (not b!7140626))

(assert tp_is_empty!45961)

(assert (not b!7140619))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1888270 () Bool)

(declare-fun d!2227260 () Bool)

(assert (= bs!1888270 (and d!2227260 b!7140626)))

(declare-fun lambda!434597 () Int)

(assert (=> bs!1888270 (not (= lambda!434597 lambda!434575))))

(declare-fun e!4291351 () Bool)

(assert (=> d!2227260 e!4291351))

(declare-fun res!2913555 () Bool)

(assert (=> d!2227260 (=> (not res!2913555) (not e!4291351))))

(declare-fun lt!2567210 () Regex!18162)

(assert (=> d!2227260 (= res!2913555 (validRegex!9329 lt!2567210))))

(declare-fun e!4291352 () Regex!18162)

(assert (=> d!2227260 (= lt!2567210 e!4291352)))

(declare-fun c!1331618 () Bool)

(declare-fun e!4291353 () Bool)

(assert (=> d!2227260 (= c!1331618 e!4291353)))

(declare-fun res!2913554 () Bool)

(assert (=> d!2227260 (=> (not res!2913554) (not e!4291353))))

(assert (=> d!2227260 (= res!2913554 (is-Cons!69278 lt!2567173))))

(declare-fun forall!17000 (List!69402 Int) Bool)

(assert (=> d!2227260 (forall!17000 lt!2567173 lambda!434597)))

(assert (=> d!2227260 (= (generalisedUnion!2667 lt!2567173) lt!2567210)))

(declare-fun b!7140698 () Bool)

(declare-fun isEmpty!40065 (List!69402) Bool)

(assert (=> b!7140698 (= e!4291353 (isEmpty!40065 (t!383419 lt!2567173)))))

(declare-fun b!7140699 () Bool)

(assert (=> b!7140699 (= e!4291352 (h!75726 lt!2567173))))

(declare-fun b!7140700 () Bool)

(declare-fun e!4291350 () Regex!18162)

(assert (=> b!7140700 (= e!4291350 EmptyLang!18162)))

(declare-fun b!7140701 () Bool)

(assert (=> b!7140701 (= e!4291350 (Union!18162 (h!75726 lt!2567173) (generalisedUnion!2667 (t!383419 lt!2567173))))))

(declare-fun b!7140702 () Bool)

(declare-fun e!4291349 () Bool)

(declare-fun isUnion!1524 (Regex!18162) Bool)

(assert (=> b!7140702 (= e!4291349 (isUnion!1524 lt!2567210))))

(declare-fun b!7140703 () Bool)

(assert (=> b!7140703 (= e!4291352 e!4291350)))

(declare-fun c!1331619 () Bool)

(assert (=> b!7140703 (= c!1331619 (is-Cons!69278 lt!2567173))))

(declare-fun b!7140704 () Bool)

(declare-fun head!14506 (List!69402) Regex!18162)

(assert (=> b!7140704 (= e!4291349 (= lt!2567210 (head!14506 lt!2567173)))))

(declare-fun b!7140705 () Bool)

(declare-fun e!4291354 () Bool)

(assert (=> b!7140705 (= e!4291354 e!4291349)))

(declare-fun c!1331620 () Bool)

(declare-fun tail!13976 (List!69402) List!69402)

(assert (=> b!7140705 (= c!1331620 (isEmpty!40065 (tail!13976 lt!2567173)))))

(declare-fun b!7140706 () Bool)

(assert (=> b!7140706 (= e!4291351 e!4291354)))

(declare-fun c!1331617 () Bool)

(assert (=> b!7140706 (= c!1331617 (isEmpty!40065 lt!2567173))))

(declare-fun b!7140707 () Bool)

(declare-fun isEmptyLang!2097 (Regex!18162) Bool)

(assert (=> b!7140707 (= e!4291354 (isEmptyLang!2097 lt!2567210))))

(assert (= (and d!2227260 res!2913554) b!7140698))

(assert (= (and d!2227260 c!1331618) b!7140699))

(assert (= (and d!2227260 (not c!1331618)) b!7140703))

(assert (= (and b!7140703 c!1331619) b!7140701))

(assert (= (and b!7140703 (not c!1331619)) b!7140700))

(assert (= (and d!2227260 res!2913555) b!7140706))

(assert (= (and b!7140706 c!1331617) b!7140707))

(assert (= (and b!7140706 (not c!1331617)) b!7140705))

(assert (= (and b!7140705 c!1331620) b!7140704))

(assert (= (and b!7140705 (not c!1331620)) b!7140702))

(declare-fun m!7855502 () Bool)

(assert (=> b!7140705 m!7855502))

(assert (=> b!7140705 m!7855502))

(declare-fun m!7855504 () Bool)

(assert (=> b!7140705 m!7855504))

(declare-fun m!7855506 () Bool)

(assert (=> b!7140706 m!7855506))

(declare-fun m!7855508 () Bool)

(assert (=> b!7140701 m!7855508))

(declare-fun m!7855510 () Bool)

(assert (=> b!7140707 m!7855510))

(declare-fun m!7855512 () Bool)

(assert (=> b!7140704 m!7855512))

(declare-fun m!7855514 () Bool)

(assert (=> b!7140698 m!7855514))

(declare-fun m!7855516 () Bool)

(assert (=> d!2227260 m!7855516))

(declare-fun m!7855518 () Bool)

(assert (=> d!2227260 m!7855518))

(declare-fun m!7855520 () Bool)

(assert (=> b!7140702 m!7855520))

(assert (=> b!7140619 d!2227260))

(declare-fun bs!1888273 () Bool)

(declare-fun d!2227266 () Bool)

(assert (= bs!1888273 (and d!2227266 b!7140626)))

(declare-fun lambda!434601 () Int)

(assert (=> bs!1888273 (not (= lambda!434601 lambda!434575))))

(declare-fun bs!1888274 () Bool)

(assert (= bs!1888274 (and d!2227266 d!2227260)))

(assert (=> bs!1888274 (= lambda!434601 lambda!434597)))

(declare-fun lt!2567213 () List!69402)

(assert (=> d!2227266 (forall!17000 lt!2567213 lambda!434601)))

(declare-fun e!4291357 () List!69402)

(assert (=> d!2227266 (= lt!2567213 e!4291357)))

(declare-fun c!1331623 () Bool)

(assert (=> d!2227266 (= c!1331623 (is-Cons!69279 lt!2567180))))

(assert (=> d!2227266 (= (unfocusZipperList!2203 lt!2567180) lt!2567213)))

(declare-fun b!7140714 () Bool)

(assert (=> b!7140714 (= e!4291357 (Cons!69278 (generalisedConcat!2346 (exprs!7656 (h!75727 lt!2567180))) (unfocusZipperList!2203 (t!383420 lt!2567180))))))

(declare-fun b!7140715 () Bool)

(assert (=> b!7140715 (= e!4291357 Nil!69278)))

(assert (= (and d!2227266 c!1331623) b!7140714))

(assert (= (and d!2227266 (not c!1331623)) b!7140715))

(declare-fun m!7855524 () Bool)

(assert (=> d!2227266 m!7855524))

(declare-fun m!7855526 () Bool)

(assert (=> b!7140714 m!7855526))

(declare-fun m!7855528 () Bool)

(assert (=> b!7140714 m!7855528))

(assert (=> b!7140619 d!2227266))

(declare-fun bs!1888275 () Bool)

(declare-fun d!2227270 () Bool)

(assert (= bs!1888275 (and d!2227270 b!7140626)))

(declare-fun lambda!434604 () Int)

(assert (=> bs!1888275 (not (= lambda!434604 lambda!434575))))

(declare-fun bs!1888276 () Bool)

(assert (= bs!1888276 (and d!2227270 d!2227260)))

(assert (=> bs!1888276 (= lambda!434604 lambda!434597)))

(declare-fun bs!1888277 () Bool)

(assert (= bs!1888277 (and d!2227270 d!2227266)))

(assert (=> bs!1888277 (= lambda!434604 lambda!434601)))

(assert (=> d!2227270 (= (inv!88470 setElem!52534) (forall!17000 (exprs!7656 setElem!52534) lambda!434604))))

(declare-fun bs!1888278 () Bool)

(assert (= bs!1888278 d!2227270))

(declare-fun m!7855530 () Bool)

(assert (=> bs!1888278 m!7855530))

(assert (=> setNonEmpty!52534 d!2227270))

(declare-fun d!2227272 () Bool)

(declare-fun e!4291360 () Bool)

(assert (=> d!2227272 e!4291360))

(declare-fun res!2913558 () Bool)

(assert (=> d!2227272 (=> (not res!2913558) (not e!4291360))))

(declare-fun lt!2567218 () Context!14312)

(declare-fun dynLambda!28194 (Int Context!14312) Bool)

(assert (=> d!2227272 (= res!2913558 (dynLambda!28194 lambda!434576 lt!2567218))))

(declare-fun getWitness!1929 (List!69403 Int) Context!14312)

(assert (=> d!2227272 (= lt!2567218 (getWitness!1929 (toList!11193 z!3189) lambda!434576))))

(assert (=> d!2227272 (exists!3942 z!3189 lambda!434576)))

(assert (=> d!2227272 (= (getWitness!1925 z!3189 lambda!434576) lt!2567218)))

(declare-fun b!7140718 () Bool)

(assert (=> b!7140718 (= e!4291360 (set.member lt!2567218 z!3189))))

(assert (= (and d!2227272 res!2913558) b!7140718))

(declare-fun b_lambda!272549 () Bool)

(assert (=> (not b_lambda!272549) (not d!2227272)))

(declare-fun m!7855532 () Bool)

(assert (=> d!2227272 m!7855532))

(assert (=> d!2227272 m!7855448))

(assert (=> d!2227272 m!7855448))

(declare-fun m!7855534 () Bool)

(assert (=> d!2227272 m!7855534))

(assert (=> d!2227272 m!7855450))

(declare-fun m!7855536 () Bool)

(assert (=> b!7140718 m!7855536))

(assert (=> b!7140620 d!2227272))

(declare-fun d!2227274 () Bool)

(declare-fun lt!2567222 () Bool)

(assert (=> d!2227274 (= lt!2567222 (exists!3943 (toList!11193 z!3189) lambda!434576))))

(declare-fun choose!55220 ((Set Context!14312) Int) Bool)

(assert (=> d!2227274 (= lt!2567222 (choose!55220 z!3189 lambda!434576))))

(assert (=> d!2227274 (= (exists!3942 z!3189 lambda!434576) lt!2567222)))

(declare-fun bs!1888281 () Bool)

(assert (= bs!1888281 d!2227274))

(assert (=> bs!1888281 m!7855448))

(assert (=> bs!1888281 m!7855448))

(declare-fun m!7855538 () Bool)

(assert (=> bs!1888281 m!7855538))

(declare-fun m!7855540 () Bool)

(assert (=> bs!1888281 m!7855540))

(assert (=> b!7140615 d!2227274))

(declare-fun bs!1888283 () Bool)

(declare-fun d!2227276 () Bool)

(assert (= bs!1888283 (and d!2227276 b!7140615)))

(declare-fun lambda!434610 () Int)

(assert (=> bs!1888283 (not (= lambda!434610 lambda!434576))))

(assert (=> d!2227276 true))

(declare-fun order!28557 () Int)

(declare-fun dynLambda!28195 (Int Int) Int)

(assert (=> d!2227276 (< (dynLambda!28195 order!28557 lambda!434576) (dynLambda!28195 order!28557 lambda!434610))))

(declare-fun forall!17001 (List!69403 Int) Bool)

(assert (=> d!2227276 (= (exists!3943 lt!2567180 lambda!434576) (not (forall!17001 lt!2567180 lambda!434610)))))

(declare-fun bs!1888284 () Bool)

(assert (= bs!1888284 d!2227276))

(declare-fun m!7855548 () Bool)

(assert (=> bs!1888284 m!7855548))

(assert (=> b!7140615 d!2227276))

(declare-fun bs!1888285 () Bool)

(declare-fun d!2227280 () Bool)

(assert (= bs!1888285 (and d!2227280 b!7140615)))

(declare-fun lambda!434613 () Int)

(assert (=> bs!1888285 (= lambda!434613 lambda!434576)))

(declare-fun bs!1888286 () Bool)

(assert (= bs!1888286 (and d!2227280 d!2227276)))

(assert (=> bs!1888286 (not (= lambda!434613 lambda!434610))))

(assert (=> d!2227280 true))

(assert (=> d!2227280 (exists!3943 lt!2567180 lambda!434613)))

(declare-fun lt!2567225 () Unit!163187)

(declare-fun choose!55221 (List!69403 Regex!18162) Unit!163187)

(assert (=> d!2227280 (= lt!2567225 (choose!55221 lt!2567180 lt!2567178))))

(assert (=> d!2227280 (contains!20602 (unfocusZipperList!2203 lt!2567180) lt!2567178)))

(assert (=> d!2227280 (= (lemmaUnfocusZipperListContainsRegexFromContextThenZipperContains!21 lt!2567180 lt!2567178) lt!2567225)))

(declare-fun bs!1888287 () Bool)

(assert (= bs!1888287 d!2227280))

(declare-fun m!7855550 () Bool)

(assert (=> bs!1888287 m!7855550))

(declare-fun m!7855552 () Bool)

(assert (=> bs!1888287 m!7855552))

(assert (=> bs!1888287 m!7855428))

(assert (=> bs!1888287 m!7855428))

(declare-fun m!7855554 () Bool)

(assert (=> bs!1888287 m!7855554))

(assert (=> b!7140615 d!2227280))

(declare-fun d!2227282 () Bool)

(declare-fun lt!2567228 () Regex!18162)

(assert (=> d!2227282 (validRegex!9329 lt!2567228)))

(assert (=> d!2227282 (= lt!2567228 (generalisedUnion!2667 (unfocusZipperList!2203 lt!2567180)))))

(assert (=> d!2227282 (= (unfocusZipper!2510 lt!2567180) lt!2567228)))

(declare-fun bs!1888288 () Bool)

(assert (= bs!1888288 d!2227282))

(declare-fun m!7855556 () Bool)

(assert (=> bs!1888288 m!7855556))

(assert (=> bs!1888288 m!7855428))

(assert (=> bs!1888288 m!7855428))

(declare-fun m!7855558 () Bool)

(assert (=> bs!1888288 m!7855558))

(assert (=> b!7140625 d!2227282))

(declare-fun d!2227284 () Bool)

(declare-fun e!4291377 () Bool)

(assert (=> d!2227284 e!4291377))

(declare-fun res!2913571 () Bool)

(assert (=> d!2227284 (=> (not res!2913571) (not e!4291377))))

(declare-fun lt!2567231 () List!69403)

(declare-fun noDuplicate!2827 (List!69403) Bool)

(assert (=> d!2227284 (= res!2913571 (noDuplicate!2827 lt!2567231))))

(declare-fun choose!55222 ((Set Context!14312)) List!69403)

(assert (=> d!2227284 (= lt!2567231 (choose!55222 z!3189))))

(assert (=> d!2227284 (= (toList!11193 z!3189) lt!2567231)))

(declare-fun b!7140741 () Bool)

(declare-fun content!14197 (List!69403) (Set Context!14312))

(assert (=> b!7140741 (= e!4291377 (= (content!14197 lt!2567231) z!3189))))

(assert (= (and d!2227284 res!2913571) b!7140741))

(declare-fun m!7855560 () Bool)

(assert (=> d!2227284 m!7855560))

(declare-fun m!7855562 () Bool)

(assert (=> d!2227284 m!7855562))

(declare-fun m!7855564 () Bool)

(assert (=> b!7140741 m!7855564))

(assert (=> b!7140625 d!2227284))

(declare-fun b!7140769 () Bool)

(declare-fun e!4291403 () Bool)

(declare-fun e!4291399 () Bool)

(assert (=> b!7140769 (= e!4291403 e!4291399)))

(declare-fun c!1331639 () Bool)

(assert (=> b!7140769 (= c!1331639 (is-Union!18162 r!11483))))

(declare-fun b!7140770 () Bool)

(declare-fun e!4291404 () Bool)

(declare-fun call!651189 () Bool)

(assert (=> b!7140770 (= e!4291404 call!651189)))

(declare-fun b!7140771 () Bool)

(declare-fun e!4291400 () Bool)

(assert (=> b!7140771 (= e!4291400 e!4291403)))

(declare-fun c!1331638 () Bool)

(assert (=> b!7140771 (= c!1331638 (is-Star!18162 r!11483))))

(declare-fun b!7140772 () Bool)

(declare-fun e!4291402 () Bool)

(declare-fun e!4291401 () Bool)

(assert (=> b!7140772 (= e!4291402 e!4291401)))

(declare-fun res!2913590 () Bool)

(assert (=> b!7140772 (=> (not res!2913590) (not e!4291401))))

(declare-fun call!651190 () Bool)

(assert (=> b!7140772 (= res!2913590 call!651190)))

(declare-fun bm!651183 () Bool)

(assert (=> bm!651183 (= call!651190 (validRegex!9329 (ite c!1331639 (regOne!36837 r!11483) (regOne!36836 r!11483))))))

(declare-fun b!7140773 () Bool)

(declare-fun e!4291405 () Bool)

(declare-fun call!651188 () Bool)

(assert (=> b!7140773 (= e!4291405 call!651188)))

(declare-fun d!2227286 () Bool)

(declare-fun res!2913591 () Bool)

(assert (=> d!2227286 (=> res!2913591 e!4291400)))

(assert (=> d!2227286 (= res!2913591 (is-ElementMatch!18162 r!11483))))

(assert (=> d!2227286 (= (validRegex!9329 r!11483) e!4291400)))

(declare-fun b!7140774 () Bool)

(assert (=> b!7140774 (= e!4291403 e!4291404)))

(declare-fun res!2913588 () Bool)

(assert (=> b!7140774 (= res!2913588 (not (nullable!7681 (reg!18491 r!11483))))))

(assert (=> b!7140774 (=> (not res!2913588) (not e!4291404))))

(declare-fun bm!651184 () Bool)

(assert (=> bm!651184 (= call!651188 call!651189)))

(declare-fun b!7140775 () Bool)

(assert (=> b!7140775 (= e!4291401 call!651188)))

(declare-fun b!7140776 () Bool)

(declare-fun res!2913589 () Bool)

(assert (=> b!7140776 (=> (not res!2913589) (not e!4291405))))

(assert (=> b!7140776 (= res!2913589 call!651190)))

(assert (=> b!7140776 (= e!4291399 e!4291405)))

(declare-fun bm!651185 () Bool)

(assert (=> bm!651185 (= call!651189 (validRegex!9329 (ite c!1331638 (reg!18491 r!11483) (ite c!1331639 (regTwo!36837 r!11483) (regTwo!36836 r!11483)))))))

(declare-fun b!7140777 () Bool)

(declare-fun res!2913587 () Bool)

(assert (=> b!7140777 (=> res!2913587 e!4291402)))

(assert (=> b!7140777 (= res!2913587 (not (is-Concat!27007 r!11483)))))

(assert (=> b!7140777 (= e!4291399 e!4291402)))

(assert (= (and d!2227286 (not res!2913591)) b!7140771))

(assert (= (and b!7140771 c!1331638) b!7140774))

(assert (= (and b!7140771 (not c!1331638)) b!7140769))

(assert (= (and b!7140774 res!2913588) b!7140770))

(assert (= (and b!7140769 c!1331639) b!7140776))

(assert (= (and b!7140769 (not c!1331639)) b!7140777))

(assert (= (and b!7140776 res!2913589) b!7140773))

(assert (= (and b!7140777 (not res!2913587)) b!7140772))

(assert (= (and b!7140772 res!2913590) b!7140775))

(assert (= (or b!7140773 b!7140775) bm!651184))

(assert (= (or b!7140776 b!7140772) bm!651183))

(assert (= (or b!7140770 bm!651184) bm!651185))

(declare-fun m!7855572 () Bool)

(assert (=> bm!651183 m!7855572))

(declare-fun m!7855574 () Bool)

(assert (=> b!7140774 m!7855574))

(declare-fun m!7855576 () Bool)

(assert (=> bm!651185 m!7855576))

(assert (=> start!696002 d!2227286))

(declare-fun d!2227290 () Bool)

(declare-fun nullableFct!2987 (Regex!18162) Bool)

(assert (=> d!2227290 (= (nullable!7681 lt!2567178) (nullableFct!2987 lt!2567178))))

(declare-fun bs!1888289 () Bool)

(assert (= bs!1888289 d!2227290))

(declare-fun m!7855578 () Bool)

(assert (=> bs!1888289 m!7855578))

(assert (=> b!7140621 d!2227290))

(declare-fun d!2227292 () Bool)

(declare-fun e!4291417 () Bool)

(assert (=> d!2227292 e!4291417))

(declare-fun res!2913596 () Bool)

(assert (=> d!2227292 (=> (not res!2913596) (not e!4291417))))

(declare-fun lt!2567237 () Regex!18162)

(declare-fun dynLambda!28196 (Int Regex!18162) Bool)

(assert (=> d!2227292 (= res!2913596 (dynLambda!28196 lambda!434575 lt!2567237))))

(declare-fun e!4291414 () Regex!18162)

(assert (=> d!2227292 (= lt!2567237 e!4291414)))

(declare-fun c!1331644 () Bool)

(declare-fun e!4291415 () Bool)

(assert (=> d!2227292 (= c!1331644 e!4291415)))

(declare-fun res!2913597 () Bool)

(assert (=> d!2227292 (=> (not res!2913597) (not e!4291415))))

(assert (=> d!2227292 (= res!2913597 (is-Cons!69278 lt!2567173))))

(assert (=> d!2227292 (exists!3944 lt!2567173 lambda!434575)))

(assert (=> d!2227292 (= (getWitness!1926 lt!2567173 lambda!434575) lt!2567237)))

(declare-fun b!7140792 () Bool)

(assert (=> b!7140792 (= e!4291414 (h!75726 lt!2567173))))

(declare-fun b!7140793 () Bool)

(declare-fun lt!2567236 () Unit!163187)

(declare-fun Unit!163191 () Unit!163187)

(assert (=> b!7140793 (= lt!2567236 Unit!163191)))

(assert (=> b!7140793 false))

(declare-fun e!4291416 () Regex!18162)

(assert (=> b!7140793 (= e!4291416 (head!14506 lt!2567173))))

(declare-fun b!7140794 () Bool)

(assert (=> b!7140794 (= e!4291415 (dynLambda!28196 lambda!434575 (h!75726 lt!2567173)))))

(declare-fun b!7140795 () Bool)

(assert (=> b!7140795 (= e!4291416 (getWitness!1926 (t!383419 lt!2567173) lambda!434575))))

(declare-fun b!7140796 () Bool)

(assert (=> b!7140796 (= e!4291414 e!4291416)))

(declare-fun c!1331645 () Bool)

(assert (=> b!7140796 (= c!1331645 (is-Cons!69278 lt!2567173))))

(declare-fun b!7140797 () Bool)

(assert (=> b!7140797 (= e!4291417 (contains!20602 lt!2567173 lt!2567237))))

(assert (= (and d!2227292 res!2913597) b!7140794))

(assert (= (and d!2227292 c!1331644) b!7140792))

(assert (= (and d!2227292 (not c!1331644)) b!7140796))

(assert (= (and b!7140796 c!1331645) b!7140795))

(assert (= (and b!7140796 (not c!1331645)) b!7140793))

(assert (= (and d!2227292 res!2913596) b!7140797))

(declare-fun b_lambda!272551 () Bool)

(assert (=> (not b_lambda!272551) (not d!2227292)))

(declare-fun b_lambda!272553 () Bool)

(assert (=> (not b_lambda!272553) (not b!7140794)))

(declare-fun m!7855584 () Bool)

(assert (=> b!7140797 m!7855584))

(declare-fun m!7855586 () Bool)

(assert (=> b!7140795 m!7855586))

(declare-fun m!7855588 () Bool)

(assert (=> d!2227292 m!7855588))

(assert (=> d!2227292 m!7855442))

(declare-fun m!7855590 () Bool)

(assert (=> b!7140794 m!7855590))

(assert (=> b!7140793 m!7855512))

(assert (=> b!7140621 d!2227292))

(declare-fun bs!1888293 () Bool)

(declare-fun d!2227298 () Bool)

(assert (= bs!1888293 (and d!2227298 b!7140626)))

(declare-fun lambda!434619 () Int)

(assert (=> bs!1888293 (not (= lambda!434619 lambda!434575))))

(declare-fun bs!1888294 () Bool)

(assert (= bs!1888294 (and d!2227298 d!2227260)))

(assert (=> bs!1888294 (not (= lambda!434619 lambda!434597))))

(declare-fun bs!1888295 () Bool)

(assert (= bs!1888295 (and d!2227298 d!2227266)))

(assert (=> bs!1888295 (not (= lambda!434619 lambda!434601))))

(declare-fun bs!1888296 () Bool)

(assert (= bs!1888296 (and d!2227298 d!2227270)))

(assert (=> bs!1888296 (not (= lambda!434619 lambda!434604))))

(assert (=> d!2227298 true))

(declare-fun order!28561 () Int)

(declare-fun dynLambda!28197 (Int Int) Int)

(assert (=> d!2227298 (< (dynLambda!28197 order!28561 lambda!434575) (dynLambda!28197 order!28561 lambda!434619))))

(assert (=> d!2227298 (= (exists!3944 lt!2567173 lambda!434575) (not (forall!17000 lt!2567173 lambda!434619)))))

(declare-fun bs!1888297 () Bool)

(assert (= bs!1888297 d!2227298))

(declare-fun m!7855592 () Bool)

(assert (=> bs!1888297 m!7855592))

(assert (=> b!7140626 d!2227298))

(declare-fun d!2227300 () Bool)

(assert (=> d!2227300 (= (nullable!7681 lt!2567174) (nullableFct!2987 lt!2567174))))

(declare-fun bs!1888298 () Bool)

(assert (= bs!1888298 d!2227300))

(declare-fun m!7855594 () Bool)

(assert (=> bs!1888298 m!7855594))

(assert (=> b!7140626 d!2227300))

(declare-fun bs!1888299 () Bool)

(declare-fun d!2227302 () Bool)

(assert (= bs!1888299 (and d!2227302 d!2227266)))

(declare-fun lambda!434628 () Int)

(assert (=> bs!1888299 (= lambda!434628 lambda!434601)))

(declare-fun bs!1888300 () Bool)

(assert (= bs!1888300 (and d!2227302 d!2227260)))

(assert (=> bs!1888300 (= lambda!434628 lambda!434597)))

(declare-fun bs!1888302 () Bool)

(assert (= bs!1888302 (and d!2227302 d!2227298)))

(assert (=> bs!1888302 (not (= lambda!434628 lambda!434619))))

(declare-fun bs!1888303 () Bool)

(assert (= bs!1888303 (and d!2227302 d!2227270)))

(assert (=> bs!1888303 (= lambda!434628 lambda!434604)))

(declare-fun bs!1888304 () Bool)

(assert (= bs!1888304 (and d!2227302 b!7140626)))

(assert (=> bs!1888304 (not (= lambda!434628 lambda!434575))))

(declare-fun lambda!434630 () Int)

(assert (=> bs!1888299 (not (= lambda!434630 lambda!434601))))

(assert (=> bs!1888300 (not (= lambda!434630 lambda!434597))))

(assert (=> bs!1888302 (not (= lambda!434630 lambda!434619))))

(declare-fun bs!1888306 () Bool)

(assert (= bs!1888306 d!2227302))

(assert (=> bs!1888306 (not (= lambda!434630 lambda!434628))))

(assert (=> bs!1888303 (not (= lambda!434630 lambda!434604))))

(assert (=> bs!1888304 (= lambda!434630 lambda!434575)))

(assert (=> d!2227302 (= (nullable!7681 lt!2567174) (exists!3944 lt!2567173 lambda!434630))))

(declare-fun lt!2567243 () Unit!163187)

(declare-fun choose!55223 (Regex!18162 List!69402) Unit!163187)

(assert (=> d!2227302 (= lt!2567243 (choose!55223 lt!2567174 lt!2567173))))

(assert (=> d!2227302 (forall!17000 lt!2567173 lambda!434628)))

(assert (=> d!2227302 (= (nullableGenUnionSpec!49 lt!2567174 lt!2567173) lt!2567243)))

(assert (=> bs!1888306 m!7855458))

(declare-fun m!7855596 () Bool)

(assert (=> bs!1888306 m!7855596))

(declare-fun m!7855598 () Bool)

(assert (=> bs!1888306 m!7855598))

(declare-fun m!7855600 () Bool)

(assert (=> bs!1888306 m!7855600))

(assert (=> b!7140626 d!2227302))

(declare-fun d!2227304 () Bool)

(declare-fun lt!2567246 () Bool)

(declare-fun content!14198 (List!69402) (Set Regex!18162))

(assert (=> d!2227304 (= lt!2567246 (set.member lt!2567178 (content!14198 lt!2567173)))))

(declare-fun e!4291423 () Bool)

(assert (=> d!2227304 (= lt!2567246 e!4291423)))

(declare-fun res!2913603 () Bool)

(assert (=> d!2227304 (=> (not res!2913603) (not e!4291423))))

(assert (=> d!2227304 (= res!2913603 (is-Cons!69278 lt!2567173))))

(assert (=> d!2227304 (= (contains!20602 lt!2567173 lt!2567178) lt!2567246)))

(declare-fun b!7140804 () Bool)

(declare-fun e!4291422 () Bool)

(assert (=> b!7140804 (= e!4291423 e!4291422)))

(declare-fun res!2913602 () Bool)

(assert (=> b!7140804 (=> res!2913602 e!4291422)))

(assert (=> b!7140804 (= res!2913602 (= (h!75726 lt!2567173) lt!2567178))))

(declare-fun b!7140805 () Bool)

(assert (=> b!7140805 (= e!4291422 (contains!20602 (t!383419 lt!2567173) lt!2567178))))

(assert (= (and d!2227304 res!2913603) b!7140804))

(assert (= (and b!7140804 (not res!2913602)) b!7140805))

(declare-fun m!7855608 () Bool)

(assert (=> d!2227304 m!7855608))

(declare-fun m!7855610 () Bool)

(assert (=> d!2227304 m!7855610))

(declare-fun m!7855612 () Bool)

(assert (=> b!7140805 m!7855612))

(assert (=> b!7140622 d!2227304))

(declare-fun bs!1888308 () Bool)

(declare-fun d!2227308 () Bool)

(assert (= bs!1888308 (and d!2227308 d!2227266)))

(declare-fun lambda!434636 () Int)

(assert (=> bs!1888308 (= lambda!434636 lambda!434601)))

(declare-fun bs!1888309 () Bool)

(assert (= bs!1888309 (and d!2227308 d!2227260)))

(assert (=> bs!1888309 (= lambda!434636 lambda!434597)))

(declare-fun bs!1888310 () Bool)

(assert (= bs!1888310 (and d!2227308 d!2227298)))

(assert (=> bs!1888310 (not (= lambda!434636 lambda!434619))))

(declare-fun bs!1888311 () Bool)

(assert (= bs!1888311 (and d!2227308 d!2227302)))

(assert (=> bs!1888311 (not (= lambda!434636 lambda!434630))))

(assert (=> bs!1888311 (= lambda!434636 lambda!434628)))

(declare-fun bs!1888312 () Bool)

(assert (= bs!1888312 (and d!2227308 d!2227270)))

(assert (=> bs!1888312 (= lambda!434636 lambda!434604)))

(declare-fun bs!1888313 () Bool)

(assert (= bs!1888313 (and d!2227308 b!7140626)))

(assert (=> bs!1888313 (not (= lambda!434636 lambda!434575))))

(declare-fun b!7140826 () Bool)

(declare-fun e!4291437 () Regex!18162)

(assert (=> b!7140826 (= e!4291437 EmptyExpr!18162)))

(declare-fun b!7140827 () Bool)

(declare-fun e!4291441 () Regex!18162)

(assert (=> b!7140827 (= e!4291441 (h!75726 (exprs!7656 lt!2567175)))))

(declare-fun b!7140828 () Bool)

(declare-fun e!4291440 () Bool)

(declare-fun lt!2567249 () Regex!18162)

(declare-fun isConcat!1557 (Regex!18162) Bool)

(assert (=> b!7140828 (= e!4291440 (isConcat!1557 lt!2567249))))

(declare-fun b!7140829 () Bool)

(declare-fun e!4291436 () Bool)

(declare-fun isEmptyExpr!2034 (Regex!18162) Bool)

(assert (=> b!7140829 (= e!4291436 (isEmptyExpr!2034 lt!2567249))))

(declare-fun b!7140830 () Bool)

(assert (=> b!7140830 (= e!4291437 (Concat!27007 (h!75726 (exprs!7656 lt!2567175)) (generalisedConcat!2346 (t!383419 (exprs!7656 lt!2567175)))))))

(declare-fun b!7140831 () Bool)

(assert (=> b!7140831 (= e!4291441 e!4291437)))

(declare-fun c!1331657 () Bool)

(assert (=> b!7140831 (= c!1331657 (is-Cons!69278 (exprs!7656 lt!2567175)))))

(declare-fun b!7140832 () Bool)

(declare-fun e!4291438 () Bool)

(assert (=> b!7140832 (= e!4291438 e!4291436)))

(declare-fun c!1331655 () Bool)

(assert (=> b!7140832 (= c!1331655 (isEmpty!40065 (exprs!7656 lt!2567175)))))

(declare-fun b!7140833 () Bool)

(assert (=> b!7140833 (= e!4291440 (= lt!2567249 (head!14506 (exprs!7656 lt!2567175))))))

(assert (=> d!2227308 e!4291438))

(declare-fun res!2913609 () Bool)

(assert (=> d!2227308 (=> (not res!2913609) (not e!4291438))))

(assert (=> d!2227308 (= res!2913609 (validRegex!9329 lt!2567249))))

(assert (=> d!2227308 (= lt!2567249 e!4291441)))

(declare-fun c!1331656 () Bool)

(declare-fun e!4291439 () Bool)

(assert (=> d!2227308 (= c!1331656 e!4291439)))

(declare-fun res!2913608 () Bool)

(assert (=> d!2227308 (=> (not res!2913608) (not e!4291439))))

(assert (=> d!2227308 (= res!2913608 (is-Cons!69278 (exprs!7656 lt!2567175)))))

(assert (=> d!2227308 (forall!17000 (exprs!7656 lt!2567175) lambda!434636)))

(assert (=> d!2227308 (= (generalisedConcat!2346 (exprs!7656 lt!2567175)) lt!2567249)))

(declare-fun b!7140834 () Bool)

(assert (=> b!7140834 (= e!4291439 (isEmpty!40065 (t!383419 (exprs!7656 lt!2567175))))))

(declare-fun b!7140835 () Bool)

(assert (=> b!7140835 (= e!4291436 e!4291440)))

(declare-fun c!1331654 () Bool)

(assert (=> b!7140835 (= c!1331654 (isEmpty!40065 (tail!13976 (exprs!7656 lt!2567175))))))

(assert (= (and d!2227308 res!2913608) b!7140834))

(assert (= (and d!2227308 c!1331656) b!7140827))

(assert (= (and d!2227308 (not c!1331656)) b!7140831))

(assert (= (and b!7140831 c!1331657) b!7140830))

(assert (= (and b!7140831 (not c!1331657)) b!7140826))

(assert (= (and d!2227308 res!2913609) b!7140832))

(assert (= (and b!7140832 c!1331655) b!7140829))

(assert (= (and b!7140832 (not c!1331655)) b!7140835))

(assert (= (and b!7140835 c!1331654) b!7140833))

(assert (= (and b!7140835 (not c!1331654)) b!7140828))

(declare-fun m!7855614 () Bool)

(assert (=> b!7140830 m!7855614))

(declare-fun m!7855616 () Bool)

(assert (=> b!7140829 m!7855616))

(declare-fun m!7855618 () Bool)

(assert (=> b!7140828 m!7855618))

(declare-fun m!7855620 () Bool)

(assert (=> b!7140834 m!7855620))

(declare-fun m!7855622 () Bool)

(assert (=> b!7140833 m!7855622))

(declare-fun m!7855624 () Bool)

(assert (=> b!7140835 m!7855624))

(assert (=> b!7140835 m!7855624))

(declare-fun m!7855626 () Bool)

(assert (=> b!7140835 m!7855626))

(declare-fun m!7855628 () Bool)

(assert (=> d!2227308 m!7855628))

(declare-fun m!7855630 () Bool)

(assert (=> d!2227308 m!7855630))

(declare-fun m!7855632 () Bool)

(assert (=> b!7140832 m!7855632))

(assert (=> b!7140617 d!2227308))

(assert (=> b!7140623 d!2227298))

(declare-fun b!7140867 () Bool)

(declare-fun e!4291456 () Bool)

(declare-fun tp!1969340 () Bool)

(declare-fun tp!1969342 () Bool)

(assert (=> b!7140867 (= e!4291456 (and tp!1969340 tp!1969342))))

(declare-fun b!7140866 () Bool)

(assert (=> b!7140866 (= e!4291456 tp_is_empty!45961)))

(declare-fun b!7140868 () Bool)

(declare-fun tp!1969338 () Bool)

(assert (=> b!7140868 (= e!4291456 tp!1969338)))

(declare-fun b!7140869 () Bool)

(declare-fun tp!1969341 () Bool)

(declare-fun tp!1969339 () Bool)

(assert (=> b!7140869 (= e!4291456 (and tp!1969341 tp!1969339))))

(assert (=> b!7140627 (= tp!1969302 e!4291456)))

(assert (= (and b!7140627 (is-ElementMatch!18162 (regOne!36837 r!11483))) b!7140866))

(assert (= (and b!7140627 (is-Concat!27007 (regOne!36837 r!11483))) b!7140867))

(assert (= (and b!7140627 (is-Star!18162 (regOne!36837 r!11483))) b!7140868))

(assert (= (and b!7140627 (is-Union!18162 (regOne!36837 r!11483))) b!7140869))

(declare-fun b!7140871 () Bool)

(declare-fun e!4291457 () Bool)

(declare-fun tp!1969345 () Bool)

(declare-fun tp!1969347 () Bool)

(assert (=> b!7140871 (= e!4291457 (and tp!1969345 tp!1969347))))

(declare-fun b!7140870 () Bool)

(assert (=> b!7140870 (= e!4291457 tp_is_empty!45961)))

(declare-fun b!7140872 () Bool)

(declare-fun tp!1969343 () Bool)

(assert (=> b!7140872 (= e!4291457 tp!1969343)))

(declare-fun b!7140873 () Bool)

(declare-fun tp!1969346 () Bool)

(declare-fun tp!1969344 () Bool)

(assert (=> b!7140873 (= e!4291457 (and tp!1969346 tp!1969344))))

(assert (=> b!7140627 (= tp!1969306 e!4291457)))

(assert (= (and b!7140627 (is-ElementMatch!18162 (regTwo!36837 r!11483))) b!7140870))

(assert (= (and b!7140627 (is-Concat!27007 (regTwo!36837 r!11483))) b!7140871))

(assert (= (and b!7140627 (is-Star!18162 (regTwo!36837 r!11483))) b!7140872))

(assert (= (and b!7140627 (is-Union!18162 (regTwo!36837 r!11483))) b!7140873))

(declare-fun b!7140878 () Bool)

(declare-fun e!4291460 () Bool)

(declare-fun tp!1969352 () Bool)

(declare-fun tp!1969353 () Bool)

(assert (=> b!7140878 (= e!4291460 (and tp!1969352 tp!1969353))))

(assert (=> b!7140624 (= tp!1969301 e!4291460)))

(assert (= (and b!7140624 (is-Cons!69278 (exprs!7656 setElem!52534))) b!7140878))

(declare-fun b!7140880 () Bool)

(declare-fun e!4291461 () Bool)

(declare-fun tp!1969356 () Bool)

(declare-fun tp!1969358 () Bool)

(assert (=> b!7140880 (= e!4291461 (and tp!1969356 tp!1969358))))

(declare-fun b!7140879 () Bool)

(assert (=> b!7140879 (= e!4291461 tp_is_empty!45961)))

(declare-fun b!7140881 () Bool)

(declare-fun tp!1969354 () Bool)

(assert (=> b!7140881 (= e!4291461 tp!1969354)))

(declare-fun b!7140882 () Bool)

(declare-fun tp!1969357 () Bool)

(declare-fun tp!1969355 () Bool)

(assert (=> b!7140882 (= e!4291461 (and tp!1969357 tp!1969355))))

(assert (=> b!7140614 (= tp!1969303 e!4291461)))

(assert (= (and b!7140614 (is-ElementMatch!18162 (regOne!36836 r!11483))) b!7140879))

(assert (= (and b!7140614 (is-Concat!27007 (regOne!36836 r!11483))) b!7140880))

(assert (= (and b!7140614 (is-Star!18162 (regOne!36836 r!11483))) b!7140881))

(assert (= (and b!7140614 (is-Union!18162 (regOne!36836 r!11483))) b!7140882))

(declare-fun b!7140884 () Bool)

(declare-fun e!4291462 () Bool)

(declare-fun tp!1969361 () Bool)

(declare-fun tp!1969363 () Bool)

(assert (=> b!7140884 (= e!4291462 (and tp!1969361 tp!1969363))))

(declare-fun b!7140883 () Bool)

(assert (=> b!7140883 (= e!4291462 tp_is_empty!45961)))

(declare-fun b!7140885 () Bool)

(declare-fun tp!1969359 () Bool)

(assert (=> b!7140885 (= e!4291462 tp!1969359)))

(declare-fun b!7140886 () Bool)

(declare-fun tp!1969362 () Bool)

(declare-fun tp!1969360 () Bool)

(assert (=> b!7140886 (= e!4291462 (and tp!1969362 tp!1969360))))

(assert (=> b!7140614 (= tp!1969304 e!4291462)))

(assert (= (and b!7140614 (is-ElementMatch!18162 (regTwo!36836 r!11483))) b!7140883))

(assert (= (and b!7140614 (is-Concat!27007 (regTwo!36836 r!11483))) b!7140884))

(assert (= (and b!7140614 (is-Star!18162 (regTwo!36836 r!11483))) b!7140885))

(assert (= (and b!7140614 (is-Union!18162 (regTwo!36836 r!11483))) b!7140886))

(declare-fun condSetEmpty!52540 () Bool)

(assert (=> setNonEmpty!52534 (= condSetEmpty!52540 (= setRest!52534 (as set.empty (Set Context!14312))))))

(declare-fun setRes!52540 () Bool)

(assert (=> setNonEmpty!52534 (= tp!1969300 setRes!52540)))

(declare-fun setIsEmpty!52540 () Bool)

(assert (=> setIsEmpty!52540 setRes!52540))

(declare-fun setNonEmpty!52540 () Bool)

(declare-fun setElem!52540 () Context!14312)

(declare-fun tp!1969368 () Bool)

(declare-fun e!4291465 () Bool)

(assert (=> setNonEmpty!52540 (= setRes!52540 (and tp!1969368 (inv!88470 setElem!52540) e!4291465))))

(declare-fun setRest!52540 () (Set Context!14312))

(assert (=> setNonEmpty!52540 (= setRest!52534 (set.union (set.insert setElem!52540 (as set.empty (Set Context!14312))) setRest!52540))))

(declare-fun b!7140891 () Bool)

(declare-fun tp!1969369 () Bool)

(assert (=> b!7140891 (= e!4291465 tp!1969369)))

(assert (= (and setNonEmpty!52534 condSetEmpty!52540) setIsEmpty!52540))

(assert (= (and setNonEmpty!52534 (not condSetEmpty!52540)) setNonEmpty!52540))

(assert (= setNonEmpty!52540 b!7140891))

(declare-fun m!7855634 () Bool)

(assert (=> setNonEmpty!52540 m!7855634))

(declare-fun b!7140893 () Bool)

(declare-fun e!4291466 () Bool)

(declare-fun tp!1969372 () Bool)

(declare-fun tp!1969374 () Bool)

(assert (=> b!7140893 (= e!4291466 (and tp!1969372 tp!1969374))))

(declare-fun b!7140892 () Bool)

(assert (=> b!7140892 (= e!4291466 tp_is_empty!45961)))

(declare-fun b!7140894 () Bool)

(declare-fun tp!1969370 () Bool)

(assert (=> b!7140894 (= e!4291466 tp!1969370)))

(declare-fun b!7140895 () Bool)

(declare-fun tp!1969373 () Bool)

(declare-fun tp!1969371 () Bool)

(assert (=> b!7140895 (= e!4291466 (and tp!1969373 tp!1969371))))

(assert (=> b!7140618 (= tp!1969305 e!4291466)))

(assert (= (and b!7140618 (is-ElementMatch!18162 (reg!18491 r!11483))) b!7140892))

(assert (= (and b!7140618 (is-Concat!27007 (reg!18491 r!11483))) b!7140893))

(assert (= (and b!7140618 (is-Star!18162 (reg!18491 r!11483))) b!7140894))

(assert (= (and b!7140618 (is-Union!18162 (reg!18491 r!11483))) b!7140895))

(declare-fun b_lambda!272555 () Bool)

(assert (= b_lambda!272551 (or b!7140626 b_lambda!272555)))

(declare-fun bs!1888314 () Bool)

(declare-fun d!2227310 () Bool)

(assert (= bs!1888314 (and d!2227310 b!7140626)))

(assert (=> bs!1888314 (= (dynLambda!28196 lambda!434575 lt!2567237) (nullable!7681 lt!2567237))))

(declare-fun m!7855636 () Bool)

(assert (=> bs!1888314 m!7855636))

(assert (=> d!2227292 d!2227310))

(declare-fun b_lambda!272557 () Bool)

(assert (= b_lambda!272553 (or b!7140626 b_lambda!272557)))

(declare-fun bs!1888315 () Bool)

(declare-fun d!2227312 () Bool)

(assert (= bs!1888315 (and d!2227312 b!7140626)))

(assert (=> bs!1888315 (= (dynLambda!28196 lambda!434575 (h!75726 lt!2567173)) (nullable!7681 (h!75726 lt!2567173)))))

(declare-fun m!7855638 () Bool)

(assert (=> bs!1888315 m!7855638))

(assert (=> b!7140794 d!2227312))

(declare-fun b_lambda!272559 () Bool)

(assert (= b_lambda!272549 (or b!7140615 b_lambda!272559)))

(declare-fun bs!1888316 () Bool)

(declare-fun d!2227314 () Bool)

(assert (= bs!1888316 (and d!2227314 b!7140615)))

(assert (=> bs!1888316 (= (dynLambda!28194 lambda!434576 lt!2567218) (= (generalisedConcat!2346 (exprs!7656 lt!2567218)) lt!2567178))))

(declare-fun m!7855640 () Bool)

(assert (=> bs!1888316 m!7855640))

(assert (=> d!2227272 d!2227314))

(push 1)

(assert (not b!7140795))

(assert (not b_lambda!272559))

(assert (not b_lambda!272557))

(assert (not d!2227270))

(assert (not b!7140701))

(assert tp_is_empty!45961)

(assert (not b!7140707))

(assert (not b!7140869))

(assert (not b!7140830))

(assert (not d!2227282))

(assert (not d!2227260))

(assert (not b!7140878))

(assert (not bm!651183))

(assert (not b!7140868))

(assert (not b!7140832))

(assert (not bs!1888314))

(assert (not d!2227290))

(assert (not b!7140793))

(assert (not b!7140891))

(assert (not b!7140833))

(assert (not d!2227298))

(assert (not b!7140704))

(assert (not b!7140835))

(assert (not b_lambda!272555))

(assert (not b!7140880))

(assert (not b!7140698))

(assert (not b!7140828))

(assert (not b!7140829))

(assert (not d!2227272))

(assert (not b!7140706))

(assert (not b!7140872))

(assert (not d!2227304))

(assert (not b!7140705))

(assert (not d!2227276))

(assert (not d!2227292))

(assert (not d!2227300))

(assert (not b!7140774))

(assert (not b!7140867))

(assert (not b!7140714))

(assert (not b!7140741))

(assert (not b!7140797))

(assert (not b!7140871))

(assert (not b!7140884))

(assert (not bm!651185))

(assert (not b!7140873))

(assert (not setNonEmpty!52540))

(assert (not b!7140834))

(assert (not b!7140895))

(assert (not bs!1888316))

(assert (not b!7140881))

(assert (not d!2227284))

(assert (not d!2227280))

(assert (not b!7140894))

(assert (not d!2227302))

(assert (not b!7140885))

(assert (not b!7140886))

(assert (not b!7140702))

(assert (not b!7140805))

(assert (not d!2227266))

(assert (not d!2227274))

(assert (not bs!1888315))

(assert (not d!2227308))

(assert (not b!7140893))

(assert (not b!7140882))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

