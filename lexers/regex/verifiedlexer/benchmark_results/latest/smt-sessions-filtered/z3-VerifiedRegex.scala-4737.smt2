; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!244708 () Bool)

(assert start!244708)

(declare-fun res!1060557 () Bool)

(declare-fun e!1590128 () Bool)

(assert (=> start!244708 (=> (not res!1060557) (not e!1590128))))

(declare-datatypes ((C!15056 0))(
  ( (C!15057 (val!9180 Int)) )
))
(declare-datatypes ((Regex!7449 0))(
  ( (ElementMatch!7449 (c!399499 C!15056)) (Concat!12145 (regOne!15410 Regex!7449) (regTwo!15410 Regex!7449)) (EmptyExpr!7449) (Star!7449 (reg!7778 Regex!7449)) (EmptyLang!7449) (Union!7449 (regOne!15411 Regex!7449) (regTwo!15411 Regex!7449)) )
))
(declare-fun r!27340 () Regex!7449)

(declare-fun validRegex!3075 (Regex!7449) Bool)

(assert (=> start!244708 (= res!1060557 (validRegex!3075 r!27340))))

(assert (=> start!244708 e!1590128))

(declare-fun e!1590130 () Bool)

(assert (=> start!244708 e!1590130))

(declare-fun tp_is_empty!12753 () Bool)

(assert (=> start!244708 tp_is_empty!12753))

(declare-fun e!1590129 () Bool)

(assert (=> start!244708 e!1590129))

(declare-fun b!2508550 () Bool)

(declare-fun tp!802431 () Bool)

(assert (=> b!2508550 (= e!1590129 (and tp_is_empty!12753 tp!802431))))

(declare-fun b!2508551 () Bool)

(declare-fun res!1060559 () Bool)

(assert (=> b!2508551 (=> (not res!1060559) (not e!1590128))))

(declare-datatypes ((List!29514 0))(
  ( (Nil!29414) (Cons!29414 (h!34834 C!15056) (t!211213 List!29514)) )
))
(declare-fun tl!4068 () List!29514)

(declare-fun c!14016 () C!15056)

(declare-fun nullable!2366 (Regex!7449) Bool)

(declare-fun derivative!144 (Regex!7449 List!29514) Regex!7449)

(declare-fun derivativeStep!2018 (Regex!7449 C!15056) Regex!7449)

(assert (=> b!2508551 (= res!1060559 (nullable!2366 (derivative!144 (derivativeStep!2018 r!27340 c!14016) tl!4068)))))

(declare-fun b!2508552 () Bool)

(assert (=> b!2508552 (= e!1590128 (not (validRegex!3075 (regOne!15410 r!27340))))))

(declare-fun lt!897262 () Regex!7449)

(declare-fun matchR!3448 (Regex!7449 List!29514) Bool)

(assert (=> b!2508552 (= (matchR!3448 lt!897262 tl!4068) (matchR!3448 (derivative!144 lt!897262 tl!4068) Nil!29414))))

(declare-datatypes ((Unit!43147 0))(
  ( (Unit!43148) )
))
(declare-fun lt!897261 () Unit!43147)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!94 (Regex!7449 List!29514) Unit!43147)

(assert (=> b!2508552 (= lt!897261 (lemmaMatchRIsSameAsWholeDerivativeAndNil!94 lt!897262 tl!4068))))

(assert (=> b!2508552 (= lt!897262 (Union!7449 (Concat!12145 (derivativeStep!2018 (regOne!15410 r!27340) c!14016) (regTwo!15410 r!27340)) EmptyLang!7449))))

(declare-fun b!2508553 () Bool)

(declare-fun tp!802430 () Bool)

(assert (=> b!2508553 (= e!1590130 tp!802430)))

(declare-fun b!2508554 () Bool)

(assert (=> b!2508554 (= e!1590130 tp_is_empty!12753)))

(declare-fun b!2508555 () Bool)

(declare-fun tp!802434 () Bool)

(declare-fun tp!802432 () Bool)

(assert (=> b!2508555 (= e!1590130 (and tp!802434 tp!802432))))

(declare-fun b!2508556 () Bool)

(declare-fun tp!802429 () Bool)

(declare-fun tp!802433 () Bool)

(assert (=> b!2508556 (= e!1590130 (and tp!802429 tp!802433))))

(declare-fun b!2508557 () Bool)

(declare-fun res!1060560 () Bool)

(assert (=> b!2508557 (=> (not res!1060560) (not e!1590128))))

(get-info :version)

(assert (=> b!2508557 (= res!1060560 (and (not ((_ is EmptyExpr!7449) r!27340)) (not ((_ is EmptyLang!7449) r!27340)) (not ((_ is ElementMatch!7449) r!27340)) (not ((_ is Union!7449) r!27340)) (not ((_ is Star!7449) r!27340))))))

(declare-fun b!2508558 () Bool)

(declare-fun res!1060558 () Bool)

(assert (=> b!2508558 (=> (not res!1060558) (not e!1590128))))

(assert (=> b!2508558 (= res!1060558 (not (nullable!2366 (regOne!15410 r!27340))))))

(assert (= (and start!244708 res!1060557) b!2508551))

(assert (= (and b!2508551 res!1060559) b!2508557))

(assert (= (and b!2508557 res!1060560) b!2508558))

(assert (= (and b!2508558 res!1060558) b!2508552))

(assert (= (and start!244708 ((_ is ElementMatch!7449) r!27340)) b!2508554))

(assert (= (and start!244708 ((_ is Concat!12145) r!27340)) b!2508555))

(assert (= (and start!244708 ((_ is Star!7449) r!27340)) b!2508553))

(assert (= (and start!244708 ((_ is Union!7449) r!27340)) b!2508556))

(assert (= (and start!244708 ((_ is Cons!29414) tl!4068)) b!2508550))

(declare-fun m!2868263 () Bool)

(assert (=> start!244708 m!2868263))

(declare-fun m!2868265 () Bool)

(assert (=> b!2508551 m!2868265))

(assert (=> b!2508551 m!2868265))

(declare-fun m!2868267 () Bool)

(assert (=> b!2508551 m!2868267))

(assert (=> b!2508551 m!2868267))

(declare-fun m!2868269 () Bool)

(assert (=> b!2508551 m!2868269))

(declare-fun m!2868271 () Bool)

(assert (=> b!2508552 m!2868271))

(declare-fun m!2868273 () Bool)

(assert (=> b!2508552 m!2868273))

(declare-fun m!2868275 () Bool)

(assert (=> b!2508552 m!2868275))

(declare-fun m!2868277 () Bool)

(assert (=> b!2508552 m!2868277))

(declare-fun m!2868279 () Bool)

(assert (=> b!2508552 m!2868279))

(assert (=> b!2508552 m!2868271))

(declare-fun m!2868281 () Bool)

(assert (=> b!2508552 m!2868281))

(declare-fun m!2868283 () Bool)

(assert (=> b!2508558 m!2868283))

(check-sat (not b!2508552) (not start!244708) (not b!2508553) tp_is_empty!12753 (not b!2508555) (not b!2508550) (not b!2508556) (not b!2508551) (not b!2508558))
(check-sat)
(get-model)

(declare-fun b!2508583 () Bool)

(declare-fun e!1590154 () Bool)

(declare-fun call!155443 () Bool)

(assert (=> b!2508583 (= e!1590154 call!155443)))

(declare-fun bm!155437 () Bool)

(declare-fun call!155442 () Bool)

(declare-fun c!399507 () Bool)

(declare-fun c!399508 () Bool)

(assert (=> bm!155437 (= call!155442 (validRegex!3075 (ite c!399507 (reg!7778 r!27340) (ite c!399508 (regTwo!15411 r!27340) (regOne!15410 r!27340)))))))

(declare-fun b!2508584 () Bool)

(declare-fun res!1060573 () Bool)

(declare-fun e!1590150 () Bool)

(assert (=> b!2508584 (=> res!1060573 e!1590150)))

(assert (=> b!2508584 (= res!1060573 (not ((_ is Concat!12145) r!27340)))))

(declare-fun e!1590152 () Bool)

(assert (=> b!2508584 (= e!1590152 e!1590150)))

(declare-fun bm!155438 () Bool)

(declare-fun call!155444 () Bool)

(assert (=> bm!155438 (= call!155444 (validRegex!3075 (ite c!399508 (regOne!15411 r!27340) (regTwo!15410 r!27340))))))

(declare-fun bm!155439 () Bool)

(assert (=> bm!155439 (= call!155443 call!155442)))

(declare-fun b!2508585 () Bool)

(declare-fun e!1590149 () Bool)

(assert (=> b!2508585 (= e!1590149 e!1590152)))

(assert (=> b!2508585 (= c!399508 ((_ is Union!7449) r!27340))))

(declare-fun b!2508586 () Bool)

(declare-fun e!1590153 () Bool)

(assert (=> b!2508586 (= e!1590149 e!1590153)))

(declare-fun res!1060575 () Bool)

(assert (=> b!2508586 (= res!1060575 (not (nullable!2366 (reg!7778 r!27340))))))

(assert (=> b!2508586 (=> (not res!1060575) (not e!1590153))))

(declare-fun b!2508587 () Bool)

(declare-fun e!1590148 () Bool)

(assert (=> b!2508587 (= e!1590148 call!155444)))

(declare-fun b!2508588 () Bool)

(assert (=> b!2508588 (= e!1590153 call!155442)))

(declare-fun d!716360 () Bool)

(declare-fun res!1060572 () Bool)

(declare-fun e!1590151 () Bool)

(assert (=> d!716360 (=> res!1060572 e!1590151)))

(assert (=> d!716360 (= res!1060572 ((_ is ElementMatch!7449) r!27340))))

(assert (=> d!716360 (= (validRegex!3075 r!27340) e!1590151)))

(declare-fun b!2508589 () Bool)

(declare-fun res!1060574 () Bool)

(assert (=> b!2508589 (=> (not res!1060574) (not e!1590154))))

(assert (=> b!2508589 (= res!1060574 call!155444)))

(assert (=> b!2508589 (= e!1590152 e!1590154)))

(declare-fun b!2508590 () Bool)

(assert (=> b!2508590 (= e!1590151 e!1590149)))

(assert (=> b!2508590 (= c!399507 ((_ is Star!7449) r!27340))))

(declare-fun b!2508591 () Bool)

(assert (=> b!2508591 (= e!1590150 e!1590148)))

(declare-fun res!1060571 () Bool)

(assert (=> b!2508591 (=> (not res!1060571) (not e!1590148))))

(assert (=> b!2508591 (= res!1060571 call!155443)))

(assert (= (and d!716360 (not res!1060572)) b!2508590))

(assert (= (and b!2508590 c!399507) b!2508586))

(assert (= (and b!2508590 (not c!399507)) b!2508585))

(assert (= (and b!2508586 res!1060575) b!2508588))

(assert (= (and b!2508585 c!399508) b!2508589))

(assert (= (and b!2508585 (not c!399508)) b!2508584))

(assert (= (and b!2508589 res!1060574) b!2508583))

(assert (= (and b!2508584 (not res!1060573)) b!2508591))

(assert (= (and b!2508591 res!1060571) b!2508587))

(assert (= (or b!2508589 b!2508587) bm!155438))

(assert (= (or b!2508583 b!2508591) bm!155439))

(assert (= (or b!2508588 bm!155439) bm!155437))

(declare-fun m!2868295 () Bool)

(assert (=> bm!155437 m!2868295))

(declare-fun m!2868297 () Bool)

(assert (=> bm!155438 m!2868297))

(declare-fun m!2868299 () Bool)

(assert (=> b!2508586 m!2868299))

(assert (=> start!244708 d!716360))

(declare-fun d!716366 () Bool)

(declare-fun nullableFct!620 (Regex!7449) Bool)

(assert (=> d!716366 (= (nullable!2366 (regOne!15410 r!27340)) (nullableFct!620 (regOne!15410 r!27340)))))

(declare-fun bs!468721 () Bool)

(assert (= bs!468721 d!716366))

(declare-fun m!2868301 () Bool)

(assert (=> bs!468721 m!2868301))

(assert (=> b!2508558 d!716366))

(declare-fun b!2508652 () Bool)

(declare-fun e!1590189 () Regex!7449)

(declare-fun call!155471 () Regex!7449)

(declare-fun call!155470 () Regex!7449)

(assert (=> b!2508652 (= e!1590189 (Union!7449 call!155471 call!155470))))

(declare-fun b!2508653 () Bool)

(declare-fun e!1590187 () Regex!7449)

(declare-fun e!1590186 () Regex!7449)

(assert (=> b!2508653 (= e!1590187 e!1590186)))

(declare-fun c!399541 () Bool)

(assert (=> b!2508653 (= c!399541 ((_ is ElementMatch!7449) (regOne!15410 r!27340)))))

(declare-fun b!2508654 () Bool)

(declare-fun c!399542 () Bool)

(assert (=> b!2508654 (= c!399542 (nullable!2366 (regOne!15410 (regOne!15410 r!27340))))))

(declare-fun e!1590188 () Regex!7449)

(declare-fun e!1590185 () Regex!7449)

(assert (=> b!2508654 (= e!1590188 e!1590185)))

(declare-fun b!2508655 () Bool)

(assert (=> b!2508655 (= e!1590189 e!1590188)))

(declare-fun c!399540 () Bool)

(assert (=> b!2508655 (= c!399540 ((_ is Star!7449) (regOne!15410 r!27340)))))

(declare-fun b!2508656 () Bool)

(assert (=> b!2508656 (= e!1590187 EmptyLang!7449)))

(declare-fun b!2508657 () Bool)

(declare-fun call!155469 () Regex!7449)

(assert (=> b!2508657 (= e!1590185 (Union!7449 (Concat!12145 call!155469 (regTwo!15410 (regOne!15410 r!27340))) EmptyLang!7449))))

(declare-fun b!2508658 () Bool)

(declare-fun call!155472 () Regex!7449)

(assert (=> b!2508658 (= e!1590188 (Concat!12145 call!155472 (regOne!15410 r!27340)))))

(declare-fun b!2508659 () Bool)

(declare-fun c!399543 () Bool)

(assert (=> b!2508659 (= c!399543 ((_ is Union!7449) (regOne!15410 r!27340)))))

(assert (=> b!2508659 (= e!1590186 e!1590189)))

(declare-fun bm!155464 () Bool)

(assert (=> bm!155464 (= call!155471 (derivativeStep!2018 (ite c!399543 (regOne!15411 (regOne!15410 r!27340)) (ite c!399540 (reg!7778 (regOne!15410 r!27340)) (regOne!15410 (regOne!15410 r!27340)))) c!14016))))

(declare-fun d!716368 () Bool)

(declare-fun lt!897272 () Regex!7449)

(assert (=> d!716368 (validRegex!3075 lt!897272)))

(assert (=> d!716368 (= lt!897272 e!1590187)))

(declare-fun c!399539 () Bool)

(assert (=> d!716368 (= c!399539 (or ((_ is EmptyExpr!7449) (regOne!15410 r!27340)) ((_ is EmptyLang!7449) (regOne!15410 r!27340))))))

(assert (=> d!716368 (validRegex!3075 (regOne!15410 r!27340))))

(assert (=> d!716368 (= (derivativeStep!2018 (regOne!15410 r!27340) c!14016) lt!897272)))

(declare-fun bm!155465 () Bool)

(assert (=> bm!155465 (= call!155469 call!155472)))

(declare-fun bm!155466 () Bool)

(assert (=> bm!155466 (= call!155472 call!155471)))

(declare-fun bm!155467 () Bool)

(assert (=> bm!155467 (= call!155470 (derivativeStep!2018 (ite c!399543 (regTwo!15411 (regOne!15410 r!27340)) (regTwo!15410 (regOne!15410 r!27340))) c!14016))))

(declare-fun b!2508660 () Bool)

(assert (=> b!2508660 (= e!1590186 (ite (= c!14016 (c!399499 (regOne!15410 r!27340))) EmptyExpr!7449 EmptyLang!7449))))

(declare-fun b!2508661 () Bool)

(assert (=> b!2508661 (= e!1590185 (Union!7449 (Concat!12145 call!155469 (regTwo!15410 (regOne!15410 r!27340))) call!155470))))

(assert (= (and d!716368 c!399539) b!2508656))

(assert (= (and d!716368 (not c!399539)) b!2508653))

(assert (= (and b!2508653 c!399541) b!2508660))

(assert (= (and b!2508653 (not c!399541)) b!2508659))

(assert (= (and b!2508659 c!399543) b!2508652))

(assert (= (and b!2508659 (not c!399543)) b!2508655))

(assert (= (and b!2508655 c!399540) b!2508658))

(assert (= (and b!2508655 (not c!399540)) b!2508654))

(assert (= (and b!2508654 c!399542) b!2508661))

(assert (= (and b!2508654 (not c!399542)) b!2508657))

(assert (= (or b!2508661 b!2508657) bm!155465))

(assert (= (or b!2508658 bm!155465) bm!155466))

(assert (= (or b!2508652 b!2508661) bm!155467))

(assert (= (or b!2508652 bm!155466) bm!155464))

(declare-fun m!2868319 () Bool)

(assert (=> b!2508654 m!2868319))

(declare-fun m!2868321 () Bool)

(assert (=> bm!155464 m!2868321))

(declare-fun m!2868323 () Bool)

(assert (=> d!716368 m!2868323))

(assert (=> d!716368 m!2868275))

(declare-fun m!2868325 () Bool)

(assert (=> bm!155467 m!2868325))

(assert (=> b!2508552 d!716368))

(declare-fun b!2508734 () Bool)

(declare-fun e!1590230 () Bool)

(declare-fun e!1590226 () Bool)

(assert (=> b!2508734 (= e!1590230 e!1590226)))

(declare-fun res!1060616 () Bool)

(assert (=> b!2508734 (=> res!1060616 e!1590226)))

(declare-fun call!155478 () Bool)

(assert (=> b!2508734 (= res!1060616 call!155478)))

(declare-fun d!716376 () Bool)

(declare-fun e!1590231 () Bool)

(assert (=> d!716376 e!1590231))

(declare-fun c!399562 () Bool)

(assert (=> d!716376 (= c!399562 ((_ is EmptyExpr!7449) lt!897262))))

(declare-fun lt!897279 () Bool)

(declare-fun e!1590229 () Bool)

(assert (=> d!716376 (= lt!897279 e!1590229)))

(declare-fun c!399561 () Bool)

(declare-fun isEmpty!16876 (List!29514) Bool)

(assert (=> d!716376 (= c!399561 (isEmpty!16876 tl!4068))))

(assert (=> d!716376 (validRegex!3075 lt!897262)))

(assert (=> d!716376 (= (matchR!3448 lt!897262 tl!4068) lt!897279)))

(declare-fun b!2508735 () Bool)

(declare-fun e!1590228 () Bool)

(declare-fun head!5722 (List!29514) C!15056)

(assert (=> b!2508735 (= e!1590228 (= (head!5722 tl!4068) (c!399499 lt!897262)))))

(declare-fun b!2508736 () Bool)

(assert (=> b!2508736 (= e!1590229 (nullable!2366 lt!897262))))

(declare-fun b!2508737 () Bool)

(assert (=> b!2508737 (= e!1590231 (= lt!897279 call!155478))))

(declare-fun b!2508738 () Bool)

(declare-fun res!1060621 () Bool)

(assert (=> b!2508738 (=> res!1060621 e!1590226)))

(declare-fun tail!3999 (List!29514) List!29514)

(assert (=> b!2508738 (= res!1060621 (not (isEmpty!16876 (tail!3999 tl!4068))))))

(declare-fun b!2508739 () Bool)

(assert (=> b!2508739 (= e!1590229 (matchR!3448 (derivativeStep!2018 lt!897262 (head!5722 tl!4068)) (tail!3999 tl!4068)))))

(declare-fun bm!155473 () Bool)

(assert (=> bm!155473 (= call!155478 (isEmpty!16876 tl!4068))))

(declare-fun b!2508740 () Bool)

(declare-fun e!1590232 () Bool)

(assert (=> b!2508740 (= e!1590231 e!1590232)))

(declare-fun c!399560 () Bool)

(assert (=> b!2508740 (= c!399560 ((_ is EmptyLang!7449) lt!897262))))

(declare-fun b!2508741 () Bool)

(declare-fun res!1060623 () Bool)

(declare-fun e!1590227 () Bool)

(assert (=> b!2508741 (=> res!1060623 e!1590227)))

(assert (=> b!2508741 (= res!1060623 e!1590228)))

(declare-fun res!1060619 () Bool)

(assert (=> b!2508741 (=> (not res!1060619) (not e!1590228))))

(assert (=> b!2508741 (= res!1060619 lt!897279)))

(declare-fun b!2508742 () Bool)

(assert (=> b!2508742 (= e!1590232 (not lt!897279))))

(declare-fun b!2508743 () Bool)

(declare-fun res!1060618 () Bool)

(assert (=> b!2508743 (=> (not res!1060618) (not e!1590228))))

(assert (=> b!2508743 (= res!1060618 (not call!155478))))

(declare-fun b!2508744 () Bool)

(assert (=> b!2508744 (= e!1590227 e!1590230)))

(declare-fun res!1060617 () Bool)

(assert (=> b!2508744 (=> (not res!1060617) (not e!1590230))))

(assert (=> b!2508744 (= res!1060617 (not lt!897279))))

(declare-fun b!2508745 () Bool)

(assert (=> b!2508745 (= e!1590226 (not (= (head!5722 tl!4068) (c!399499 lt!897262))))))

(declare-fun b!2508746 () Bool)

(declare-fun res!1060622 () Bool)

(assert (=> b!2508746 (=> res!1060622 e!1590227)))

(assert (=> b!2508746 (= res!1060622 (not ((_ is ElementMatch!7449) lt!897262)))))

(assert (=> b!2508746 (= e!1590232 e!1590227)))

(declare-fun b!2508747 () Bool)

(declare-fun res!1060620 () Bool)

(assert (=> b!2508747 (=> (not res!1060620) (not e!1590228))))

(assert (=> b!2508747 (= res!1060620 (isEmpty!16876 (tail!3999 tl!4068)))))

(assert (= (and d!716376 c!399561) b!2508736))

(assert (= (and d!716376 (not c!399561)) b!2508739))

(assert (= (and d!716376 c!399562) b!2508737))

(assert (= (and d!716376 (not c!399562)) b!2508740))

(assert (= (and b!2508740 c!399560) b!2508742))

(assert (= (and b!2508740 (not c!399560)) b!2508746))

(assert (= (and b!2508746 (not res!1060622)) b!2508741))

(assert (= (and b!2508741 res!1060619) b!2508743))

(assert (= (and b!2508743 res!1060618) b!2508747))

(assert (= (and b!2508747 res!1060620) b!2508735))

(assert (= (and b!2508741 (not res!1060623)) b!2508744))

(assert (= (and b!2508744 res!1060617) b!2508734))

(assert (= (and b!2508734 (not res!1060616)) b!2508738))

(assert (= (and b!2508738 (not res!1060621)) b!2508745))

(assert (= (or b!2508737 b!2508734 b!2508743) bm!155473))

(declare-fun m!2868351 () Bool)

(assert (=> d!716376 m!2868351))

(declare-fun m!2868353 () Bool)

(assert (=> d!716376 m!2868353))

(declare-fun m!2868355 () Bool)

(assert (=> b!2508745 m!2868355))

(declare-fun m!2868357 () Bool)

(assert (=> b!2508747 m!2868357))

(assert (=> b!2508747 m!2868357))

(declare-fun m!2868359 () Bool)

(assert (=> b!2508747 m!2868359))

(assert (=> b!2508735 m!2868355))

(assert (=> b!2508738 m!2868357))

(assert (=> b!2508738 m!2868357))

(assert (=> b!2508738 m!2868359))

(assert (=> bm!155473 m!2868351))

(assert (=> b!2508739 m!2868355))

(assert (=> b!2508739 m!2868355))

(declare-fun m!2868361 () Bool)

(assert (=> b!2508739 m!2868361))

(assert (=> b!2508739 m!2868357))

(assert (=> b!2508739 m!2868361))

(assert (=> b!2508739 m!2868357))

(declare-fun m!2868363 () Bool)

(assert (=> b!2508739 m!2868363))

(declare-fun m!2868365 () Bool)

(assert (=> b!2508736 m!2868365))

(assert (=> b!2508552 d!716376))

(declare-fun d!716382 () Bool)

(declare-fun lt!897285 () Regex!7449)

(assert (=> d!716382 (validRegex!3075 lt!897285)))

(declare-fun e!1590249 () Regex!7449)

(assert (=> d!716382 (= lt!897285 e!1590249)))

(declare-fun c!399569 () Bool)

(assert (=> d!716382 (= c!399569 ((_ is Cons!29414) tl!4068))))

(assert (=> d!716382 (validRegex!3075 lt!897262)))

(assert (=> d!716382 (= (derivative!144 lt!897262 tl!4068) lt!897285)))

(declare-fun b!2508770 () Bool)

(assert (=> b!2508770 (= e!1590249 (derivative!144 (derivativeStep!2018 lt!897262 (h!34834 tl!4068)) (t!211213 tl!4068)))))

(declare-fun b!2508771 () Bool)

(assert (=> b!2508771 (= e!1590249 lt!897262)))

(assert (= (and d!716382 c!399569) b!2508770))

(assert (= (and d!716382 (not c!399569)) b!2508771))

(declare-fun m!2868369 () Bool)

(assert (=> d!716382 m!2868369))

(assert (=> d!716382 m!2868353))

(declare-fun m!2868371 () Bool)

(assert (=> b!2508770 m!2868371))

(assert (=> b!2508770 m!2868371))

(declare-fun m!2868373 () Bool)

(assert (=> b!2508770 m!2868373))

(assert (=> b!2508552 d!716382))

(declare-fun b!2508772 () Bool)

(declare-fun e!1590256 () Bool)

(declare-fun call!155486 () Bool)

(assert (=> b!2508772 (= e!1590256 call!155486)))

(declare-fun bm!155480 () Bool)

(declare-fun call!155485 () Bool)

(declare-fun c!399570 () Bool)

(declare-fun c!399571 () Bool)

(assert (=> bm!155480 (= call!155485 (validRegex!3075 (ite c!399570 (reg!7778 (regOne!15410 r!27340)) (ite c!399571 (regTwo!15411 (regOne!15410 r!27340)) (regOne!15410 (regOne!15410 r!27340))))))))

(declare-fun b!2508773 () Bool)

(declare-fun res!1060636 () Bool)

(declare-fun e!1590252 () Bool)

(assert (=> b!2508773 (=> res!1060636 e!1590252)))

(assert (=> b!2508773 (= res!1060636 (not ((_ is Concat!12145) (regOne!15410 r!27340))))))

(declare-fun e!1590254 () Bool)

(assert (=> b!2508773 (= e!1590254 e!1590252)))

(declare-fun bm!155481 () Bool)

(declare-fun call!155487 () Bool)

(assert (=> bm!155481 (= call!155487 (validRegex!3075 (ite c!399571 (regOne!15411 (regOne!15410 r!27340)) (regTwo!15410 (regOne!15410 r!27340)))))))

(declare-fun bm!155482 () Bool)

(assert (=> bm!155482 (= call!155486 call!155485)))

(declare-fun b!2508774 () Bool)

(declare-fun e!1590251 () Bool)

(assert (=> b!2508774 (= e!1590251 e!1590254)))

(assert (=> b!2508774 (= c!399571 ((_ is Union!7449) (regOne!15410 r!27340)))))

(declare-fun b!2508775 () Bool)

(declare-fun e!1590255 () Bool)

(assert (=> b!2508775 (= e!1590251 e!1590255)))

(declare-fun res!1060638 () Bool)

(assert (=> b!2508775 (= res!1060638 (not (nullable!2366 (reg!7778 (regOne!15410 r!27340)))))))

(assert (=> b!2508775 (=> (not res!1060638) (not e!1590255))))

(declare-fun b!2508776 () Bool)

(declare-fun e!1590250 () Bool)

(assert (=> b!2508776 (= e!1590250 call!155487)))

(declare-fun b!2508777 () Bool)

(assert (=> b!2508777 (= e!1590255 call!155485)))

(declare-fun d!716386 () Bool)

(declare-fun res!1060635 () Bool)

(declare-fun e!1590253 () Bool)

(assert (=> d!716386 (=> res!1060635 e!1590253)))

(assert (=> d!716386 (= res!1060635 ((_ is ElementMatch!7449) (regOne!15410 r!27340)))))

(assert (=> d!716386 (= (validRegex!3075 (regOne!15410 r!27340)) e!1590253)))

(declare-fun b!2508778 () Bool)

(declare-fun res!1060637 () Bool)

(assert (=> b!2508778 (=> (not res!1060637) (not e!1590256))))

(assert (=> b!2508778 (= res!1060637 call!155487)))

(assert (=> b!2508778 (= e!1590254 e!1590256)))

(declare-fun b!2508779 () Bool)

(assert (=> b!2508779 (= e!1590253 e!1590251)))

(assert (=> b!2508779 (= c!399570 ((_ is Star!7449) (regOne!15410 r!27340)))))

(declare-fun b!2508780 () Bool)

(assert (=> b!2508780 (= e!1590252 e!1590250)))

(declare-fun res!1060634 () Bool)

(assert (=> b!2508780 (=> (not res!1060634) (not e!1590250))))

(assert (=> b!2508780 (= res!1060634 call!155486)))

(assert (= (and d!716386 (not res!1060635)) b!2508779))

(assert (= (and b!2508779 c!399570) b!2508775))

(assert (= (and b!2508779 (not c!399570)) b!2508774))

(assert (= (and b!2508775 res!1060638) b!2508777))

(assert (= (and b!2508774 c!399571) b!2508778))

(assert (= (and b!2508774 (not c!399571)) b!2508773))

(assert (= (and b!2508778 res!1060637) b!2508772))

(assert (= (and b!2508773 (not res!1060636)) b!2508780))

(assert (= (and b!2508780 res!1060634) b!2508776))

(assert (= (or b!2508778 b!2508776) bm!155481))

(assert (= (or b!2508772 b!2508780) bm!155482))

(assert (= (or b!2508777 bm!155482) bm!155480))

(declare-fun m!2868375 () Bool)

(assert (=> bm!155480 m!2868375))

(declare-fun m!2868377 () Bool)

(assert (=> bm!155481 m!2868377))

(declare-fun m!2868379 () Bool)

(assert (=> b!2508775 m!2868379))

(assert (=> b!2508552 d!716386))

(declare-fun d!716388 () Bool)

(assert (=> d!716388 (= (matchR!3448 lt!897262 tl!4068) (matchR!3448 (derivative!144 lt!897262 tl!4068) Nil!29414))))

(declare-fun lt!897289 () Unit!43147)

(declare-fun choose!14832 (Regex!7449 List!29514) Unit!43147)

(assert (=> d!716388 (= lt!897289 (choose!14832 lt!897262 tl!4068))))

(assert (=> d!716388 (validRegex!3075 lt!897262)))

(assert (=> d!716388 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!94 lt!897262 tl!4068) lt!897289)))

(declare-fun bs!468724 () Bool)

(assert (= bs!468724 d!716388))

(assert (=> bs!468724 m!2868271))

(assert (=> bs!468724 m!2868273))

(assert (=> bs!468724 m!2868271))

(assert (=> bs!468724 m!2868353))

(assert (=> bs!468724 m!2868277))

(declare-fun m!2868407 () Bool)

(assert (=> bs!468724 m!2868407))

(assert (=> b!2508552 d!716388))

(declare-fun b!2508818 () Bool)

(declare-fun e!1590285 () Bool)

(declare-fun e!1590280 () Bool)

(assert (=> b!2508818 (= e!1590285 e!1590280)))

(declare-fun res!1060657 () Bool)

(assert (=> b!2508818 (=> res!1060657 e!1590280)))

(declare-fun call!155495 () Bool)

(assert (=> b!2508818 (= res!1060657 call!155495)))

(declare-fun d!716394 () Bool)

(declare-fun e!1590286 () Bool)

(assert (=> d!716394 e!1590286))

(declare-fun c!399581 () Bool)

(assert (=> d!716394 (= c!399581 ((_ is EmptyExpr!7449) (derivative!144 lt!897262 tl!4068)))))

(declare-fun lt!897290 () Bool)

(declare-fun e!1590284 () Bool)

(assert (=> d!716394 (= lt!897290 e!1590284)))

(declare-fun c!399580 () Bool)

(assert (=> d!716394 (= c!399580 (isEmpty!16876 Nil!29414))))

(assert (=> d!716394 (validRegex!3075 (derivative!144 lt!897262 tl!4068))))

(assert (=> d!716394 (= (matchR!3448 (derivative!144 lt!897262 tl!4068) Nil!29414) lt!897290)))

(declare-fun b!2508819 () Bool)

(declare-fun e!1590282 () Bool)

(assert (=> b!2508819 (= e!1590282 (= (head!5722 Nil!29414) (c!399499 (derivative!144 lt!897262 tl!4068))))))

(declare-fun b!2508820 () Bool)

(assert (=> b!2508820 (= e!1590284 (nullable!2366 (derivative!144 lt!897262 tl!4068)))))

(declare-fun b!2508821 () Bool)

(assert (=> b!2508821 (= e!1590286 (= lt!897290 call!155495))))

(declare-fun b!2508822 () Bool)

(declare-fun res!1060662 () Bool)

(assert (=> b!2508822 (=> res!1060662 e!1590280)))

(assert (=> b!2508822 (= res!1060662 (not (isEmpty!16876 (tail!3999 Nil!29414))))))

(declare-fun b!2508823 () Bool)

(assert (=> b!2508823 (= e!1590284 (matchR!3448 (derivativeStep!2018 (derivative!144 lt!897262 tl!4068) (head!5722 Nil!29414)) (tail!3999 Nil!29414)))))

(declare-fun bm!155490 () Bool)

(assert (=> bm!155490 (= call!155495 (isEmpty!16876 Nil!29414))))

(declare-fun b!2508824 () Bool)

(declare-fun e!1590287 () Bool)

(assert (=> b!2508824 (= e!1590286 e!1590287)))

(declare-fun c!399579 () Bool)

(assert (=> b!2508824 (= c!399579 ((_ is EmptyLang!7449) (derivative!144 lt!897262 tl!4068)))))

(declare-fun b!2508825 () Bool)

(declare-fun res!1060664 () Bool)

(declare-fun e!1590281 () Bool)

(assert (=> b!2508825 (=> res!1060664 e!1590281)))

(assert (=> b!2508825 (= res!1060664 e!1590282)))

(declare-fun res!1060660 () Bool)

(assert (=> b!2508825 (=> (not res!1060660) (not e!1590282))))

(assert (=> b!2508825 (= res!1060660 lt!897290)))

(declare-fun b!2508826 () Bool)

(assert (=> b!2508826 (= e!1590287 (not lt!897290))))

(declare-fun b!2508827 () Bool)

(declare-fun res!1060659 () Bool)

(assert (=> b!2508827 (=> (not res!1060659) (not e!1590282))))

(assert (=> b!2508827 (= res!1060659 (not call!155495))))

(declare-fun b!2508828 () Bool)

(assert (=> b!2508828 (= e!1590281 e!1590285)))

(declare-fun res!1060658 () Bool)

(assert (=> b!2508828 (=> (not res!1060658) (not e!1590285))))

(assert (=> b!2508828 (= res!1060658 (not lt!897290))))

(declare-fun b!2508829 () Bool)

(assert (=> b!2508829 (= e!1590280 (not (= (head!5722 Nil!29414) (c!399499 (derivative!144 lt!897262 tl!4068)))))))

(declare-fun b!2508830 () Bool)

(declare-fun res!1060663 () Bool)

(assert (=> b!2508830 (=> res!1060663 e!1590281)))

(assert (=> b!2508830 (= res!1060663 (not ((_ is ElementMatch!7449) (derivative!144 lt!897262 tl!4068))))))

(assert (=> b!2508830 (= e!1590287 e!1590281)))

(declare-fun b!2508831 () Bool)

(declare-fun res!1060661 () Bool)

(assert (=> b!2508831 (=> (not res!1060661) (not e!1590282))))

(assert (=> b!2508831 (= res!1060661 (isEmpty!16876 (tail!3999 Nil!29414)))))

(assert (= (and d!716394 c!399580) b!2508820))

(assert (= (and d!716394 (not c!399580)) b!2508823))

(assert (= (and d!716394 c!399581) b!2508821))

(assert (= (and d!716394 (not c!399581)) b!2508824))

(assert (= (and b!2508824 c!399579) b!2508826))

(assert (= (and b!2508824 (not c!399579)) b!2508830))

(assert (= (and b!2508830 (not res!1060663)) b!2508825))

(assert (= (and b!2508825 res!1060660) b!2508827))

(assert (= (and b!2508827 res!1060659) b!2508831))

(assert (= (and b!2508831 res!1060661) b!2508819))

(assert (= (and b!2508825 (not res!1060664)) b!2508828))

(assert (= (and b!2508828 res!1060658) b!2508818))

(assert (= (and b!2508818 (not res!1060657)) b!2508822))

(assert (= (and b!2508822 (not res!1060662)) b!2508829))

(assert (= (or b!2508821 b!2508818 b!2508827) bm!155490))

(declare-fun m!2868409 () Bool)

(assert (=> d!716394 m!2868409))

(assert (=> d!716394 m!2868271))

(declare-fun m!2868411 () Bool)

(assert (=> d!716394 m!2868411))

(declare-fun m!2868413 () Bool)

(assert (=> b!2508829 m!2868413))

(declare-fun m!2868415 () Bool)

(assert (=> b!2508831 m!2868415))

(assert (=> b!2508831 m!2868415))

(declare-fun m!2868417 () Bool)

(assert (=> b!2508831 m!2868417))

(assert (=> b!2508819 m!2868413))

(assert (=> b!2508822 m!2868415))

(assert (=> b!2508822 m!2868415))

(assert (=> b!2508822 m!2868417))

(assert (=> bm!155490 m!2868409))

(assert (=> b!2508823 m!2868413))

(assert (=> b!2508823 m!2868271))

(assert (=> b!2508823 m!2868413))

(declare-fun m!2868419 () Bool)

(assert (=> b!2508823 m!2868419))

(assert (=> b!2508823 m!2868415))

(assert (=> b!2508823 m!2868419))

(assert (=> b!2508823 m!2868415))

(declare-fun m!2868421 () Bool)

(assert (=> b!2508823 m!2868421))

(assert (=> b!2508820 m!2868271))

(declare-fun m!2868423 () Bool)

(assert (=> b!2508820 m!2868423))

(assert (=> b!2508552 d!716394))

(declare-fun d!716396 () Bool)

(assert (=> d!716396 (= (nullable!2366 (derivative!144 (derivativeStep!2018 r!27340 c!14016) tl!4068)) (nullableFct!620 (derivative!144 (derivativeStep!2018 r!27340 c!14016) tl!4068)))))

(declare-fun bs!468725 () Bool)

(assert (= bs!468725 d!716396))

(assert (=> bs!468725 m!2868267))

(declare-fun m!2868425 () Bool)

(assert (=> bs!468725 m!2868425))

(assert (=> b!2508551 d!716396))

(declare-fun d!716398 () Bool)

(declare-fun lt!897291 () Regex!7449)

(assert (=> d!716398 (validRegex!3075 lt!897291)))

(declare-fun e!1590294 () Regex!7449)

(assert (=> d!716398 (= lt!897291 e!1590294)))

(declare-fun c!399582 () Bool)

(assert (=> d!716398 (= c!399582 ((_ is Cons!29414) tl!4068))))

(assert (=> d!716398 (validRegex!3075 (derivativeStep!2018 r!27340 c!14016))))

(assert (=> d!716398 (= (derivative!144 (derivativeStep!2018 r!27340 c!14016) tl!4068) lt!897291)))

(declare-fun b!2508858 () Bool)

(assert (=> b!2508858 (= e!1590294 (derivative!144 (derivativeStep!2018 (derivativeStep!2018 r!27340 c!14016) (h!34834 tl!4068)) (t!211213 tl!4068)))))

(declare-fun b!2508859 () Bool)

(assert (=> b!2508859 (= e!1590294 (derivativeStep!2018 r!27340 c!14016))))

(assert (= (and d!716398 c!399582) b!2508858))

(assert (= (and d!716398 (not c!399582)) b!2508859))

(declare-fun m!2868427 () Bool)

(assert (=> d!716398 m!2868427))

(assert (=> d!716398 m!2868265))

(declare-fun m!2868429 () Bool)

(assert (=> d!716398 m!2868429))

(assert (=> b!2508858 m!2868265))

(declare-fun m!2868431 () Bool)

(assert (=> b!2508858 m!2868431))

(assert (=> b!2508858 m!2868431))

(declare-fun m!2868433 () Bool)

(assert (=> b!2508858 m!2868433))

(assert (=> b!2508551 d!716398))

(declare-fun b!2508864 () Bool)

(declare-fun e!1590300 () Regex!7449)

(declare-fun call!155498 () Regex!7449)

(declare-fun call!155497 () Regex!7449)

(assert (=> b!2508864 (= e!1590300 (Union!7449 call!155498 call!155497))))

(declare-fun b!2508865 () Bool)

(declare-fun e!1590298 () Regex!7449)

(declare-fun e!1590297 () Regex!7449)

(assert (=> b!2508865 (= e!1590298 e!1590297)))

(declare-fun c!399585 () Bool)

(assert (=> b!2508865 (= c!399585 ((_ is ElementMatch!7449) r!27340))))

(declare-fun b!2508866 () Bool)

(declare-fun c!399586 () Bool)

(assert (=> b!2508866 (= c!399586 (nullable!2366 (regOne!15410 r!27340)))))

(declare-fun e!1590299 () Regex!7449)

(declare-fun e!1590296 () Regex!7449)

(assert (=> b!2508866 (= e!1590299 e!1590296)))

(declare-fun b!2508867 () Bool)

(assert (=> b!2508867 (= e!1590300 e!1590299)))

(declare-fun c!399584 () Bool)

(assert (=> b!2508867 (= c!399584 ((_ is Star!7449) r!27340))))

(declare-fun b!2508868 () Bool)

(assert (=> b!2508868 (= e!1590298 EmptyLang!7449)))

(declare-fun b!2508869 () Bool)

(declare-fun call!155496 () Regex!7449)

(assert (=> b!2508869 (= e!1590296 (Union!7449 (Concat!12145 call!155496 (regTwo!15410 r!27340)) EmptyLang!7449))))

(declare-fun b!2508870 () Bool)

(declare-fun call!155499 () Regex!7449)

(assert (=> b!2508870 (= e!1590299 (Concat!12145 call!155499 r!27340))))

(declare-fun b!2508871 () Bool)

(declare-fun c!399587 () Bool)

(assert (=> b!2508871 (= c!399587 ((_ is Union!7449) r!27340))))

(assert (=> b!2508871 (= e!1590297 e!1590300)))

(declare-fun bm!155491 () Bool)

(assert (=> bm!155491 (= call!155498 (derivativeStep!2018 (ite c!399587 (regOne!15411 r!27340) (ite c!399584 (reg!7778 r!27340) (regOne!15410 r!27340))) c!14016))))

(declare-fun d!716400 () Bool)

(declare-fun lt!897292 () Regex!7449)

(assert (=> d!716400 (validRegex!3075 lt!897292)))

(assert (=> d!716400 (= lt!897292 e!1590298)))

(declare-fun c!399583 () Bool)

(assert (=> d!716400 (= c!399583 (or ((_ is EmptyExpr!7449) r!27340) ((_ is EmptyLang!7449) r!27340)))))

(assert (=> d!716400 (validRegex!3075 r!27340)))

(assert (=> d!716400 (= (derivativeStep!2018 r!27340 c!14016) lt!897292)))

(declare-fun bm!155492 () Bool)

(assert (=> bm!155492 (= call!155496 call!155499)))

(declare-fun bm!155493 () Bool)

(assert (=> bm!155493 (= call!155499 call!155498)))

(declare-fun bm!155494 () Bool)

(assert (=> bm!155494 (= call!155497 (derivativeStep!2018 (ite c!399587 (regTwo!15411 r!27340) (regTwo!15410 r!27340)) c!14016))))

(declare-fun b!2508872 () Bool)

(assert (=> b!2508872 (= e!1590297 (ite (= c!14016 (c!399499 r!27340)) EmptyExpr!7449 EmptyLang!7449))))

(declare-fun b!2508873 () Bool)

(assert (=> b!2508873 (= e!1590296 (Union!7449 (Concat!12145 call!155496 (regTwo!15410 r!27340)) call!155497))))

(assert (= (and d!716400 c!399583) b!2508868))

(assert (= (and d!716400 (not c!399583)) b!2508865))

(assert (= (and b!2508865 c!399585) b!2508872))

(assert (= (and b!2508865 (not c!399585)) b!2508871))

(assert (= (and b!2508871 c!399587) b!2508864))

(assert (= (and b!2508871 (not c!399587)) b!2508867))

(assert (= (and b!2508867 c!399584) b!2508870))

(assert (= (and b!2508867 (not c!399584)) b!2508866))

(assert (= (and b!2508866 c!399586) b!2508873))

(assert (= (and b!2508866 (not c!399586)) b!2508869))

(assert (= (or b!2508873 b!2508869) bm!155492))

(assert (= (or b!2508870 bm!155492) bm!155493))

(assert (= (or b!2508864 b!2508873) bm!155494))

(assert (= (or b!2508864 bm!155493) bm!155491))

(assert (=> b!2508866 m!2868283))

(declare-fun m!2868435 () Bool)

(assert (=> bm!155491 m!2868435))

(declare-fun m!2868437 () Bool)

(assert (=> d!716400 m!2868437))

(assert (=> d!716400 m!2868263))

(declare-fun m!2868439 () Bool)

(assert (=> bm!155494 m!2868439))

(assert (=> b!2508551 d!716400))

(declare-fun b!2508887 () Bool)

(declare-fun e!1590303 () Bool)

(declare-fun tp!802487 () Bool)

(declare-fun tp!802486 () Bool)

(assert (=> b!2508887 (= e!1590303 (and tp!802487 tp!802486))))

(assert (=> b!2508553 (= tp!802430 e!1590303)))

(declare-fun b!2508885 () Bool)

(declare-fun tp!802485 () Bool)

(declare-fun tp!802483 () Bool)

(assert (=> b!2508885 (= e!1590303 (and tp!802485 tp!802483))))

(declare-fun b!2508886 () Bool)

(declare-fun tp!802484 () Bool)

(assert (=> b!2508886 (= e!1590303 tp!802484)))

(declare-fun b!2508884 () Bool)

(assert (=> b!2508884 (= e!1590303 tp_is_empty!12753)))

(assert (= (and b!2508553 ((_ is ElementMatch!7449) (reg!7778 r!27340))) b!2508884))

(assert (= (and b!2508553 ((_ is Concat!12145) (reg!7778 r!27340))) b!2508885))

(assert (= (and b!2508553 ((_ is Star!7449) (reg!7778 r!27340))) b!2508886))

(assert (= (and b!2508553 ((_ is Union!7449) (reg!7778 r!27340))) b!2508887))

(declare-fun b!2508891 () Bool)

(declare-fun e!1590304 () Bool)

(declare-fun tp!802492 () Bool)

(declare-fun tp!802491 () Bool)

(assert (=> b!2508891 (= e!1590304 (and tp!802492 tp!802491))))

(assert (=> b!2508556 (= tp!802429 e!1590304)))

(declare-fun b!2508889 () Bool)

(declare-fun tp!802490 () Bool)

(declare-fun tp!802488 () Bool)

(assert (=> b!2508889 (= e!1590304 (and tp!802490 tp!802488))))

(declare-fun b!2508890 () Bool)

(declare-fun tp!802489 () Bool)

(assert (=> b!2508890 (= e!1590304 tp!802489)))

(declare-fun b!2508888 () Bool)

(assert (=> b!2508888 (= e!1590304 tp_is_empty!12753)))

(assert (= (and b!2508556 ((_ is ElementMatch!7449) (regOne!15411 r!27340))) b!2508888))

(assert (= (and b!2508556 ((_ is Concat!12145) (regOne!15411 r!27340))) b!2508889))

(assert (= (and b!2508556 ((_ is Star!7449) (regOne!15411 r!27340))) b!2508890))

(assert (= (and b!2508556 ((_ is Union!7449) (regOne!15411 r!27340))) b!2508891))

(declare-fun b!2508895 () Bool)

(declare-fun e!1590305 () Bool)

(declare-fun tp!802497 () Bool)

(declare-fun tp!802496 () Bool)

(assert (=> b!2508895 (= e!1590305 (and tp!802497 tp!802496))))

(assert (=> b!2508556 (= tp!802433 e!1590305)))

(declare-fun b!2508893 () Bool)

(declare-fun tp!802495 () Bool)

(declare-fun tp!802493 () Bool)

(assert (=> b!2508893 (= e!1590305 (and tp!802495 tp!802493))))

(declare-fun b!2508894 () Bool)

(declare-fun tp!802494 () Bool)

(assert (=> b!2508894 (= e!1590305 tp!802494)))

(declare-fun b!2508892 () Bool)

(assert (=> b!2508892 (= e!1590305 tp_is_empty!12753)))

(assert (= (and b!2508556 ((_ is ElementMatch!7449) (regTwo!15411 r!27340))) b!2508892))

(assert (= (and b!2508556 ((_ is Concat!12145) (regTwo!15411 r!27340))) b!2508893))

(assert (= (and b!2508556 ((_ is Star!7449) (regTwo!15411 r!27340))) b!2508894))

(assert (= (and b!2508556 ((_ is Union!7449) (regTwo!15411 r!27340))) b!2508895))

(declare-fun b!2508900 () Bool)

(declare-fun e!1590308 () Bool)

(declare-fun tp!802500 () Bool)

(assert (=> b!2508900 (= e!1590308 (and tp_is_empty!12753 tp!802500))))

(assert (=> b!2508550 (= tp!802431 e!1590308)))

(assert (= (and b!2508550 ((_ is Cons!29414) (t!211213 tl!4068))) b!2508900))

(declare-fun b!2508904 () Bool)

(declare-fun e!1590309 () Bool)

(declare-fun tp!802505 () Bool)

(declare-fun tp!802504 () Bool)

(assert (=> b!2508904 (= e!1590309 (and tp!802505 tp!802504))))

(assert (=> b!2508555 (= tp!802434 e!1590309)))

(declare-fun b!2508902 () Bool)

(declare-fun tp!802503 () Bool)

(declare-fun tp!802501 () Bool)

(assert (=> b!2508902 (= e!1590309 (and tp!802503 tp!802501))))

(declare-fun b!2508903 () Bool)

(declare-fun tp!802502 () Bool)

(assert (=> b!2508903 (= e!1590309 tp!802502)))

(declare-fun b!2508901 () Bool)

(assert (=> b!2508901 (= e!1590309 tp_is_empty!12753)))

(assert (= (and b!2508555 ((_ is ElementMatch!7449) (regOne!15410 r!27340))) b!2508901))

(assert (= (and b!2508555 ((_ is Concat!12145) (regOne!15410 r!27340))) b!2508902))

(assert (= (and b!2508555 ((_ is Star!7449) (regOne!15410 r!27340))) b!2508903))

(assert (= (and b!2508555 ((_ is Union!7449) (regOne!15410 r!27340))) b!2508904))

(declare-fun b!2508908 () Bool)

(declare-fun e!1590310 () Bool)

(declare-fun tp!802510 () Bool)

(declare-fun tp!802509 () Bool)

(assert (=> b!2508908 (= e!1590310 (and tp!802510 tp!802509))))

(assert (=> b!2508555 (= tp!802432 e!1590310)))

(declare-fun b!2508906 () Bool)

(declare-fun tp!802508 () Bool)

(declare-fun tp!802506 () Bool)

(assert (=> b!2508906 (= e!1590310 (and tp!802508 tp!802506))))

(declare-fun b!2508907 () Bool)

(declare-fun tp!802507 () Bool)

(assert (=> b!2508907 (= e!1590310 tp!802507)))

(declare-fun b!2508905 () Bool)

(assert (=> b!2508905 (= e!1590310 tp_is_empty!12753)))

(assert (= (and b!2508555 ((_ is ElementMatch!7449) (regTwo!15410 r!27340))) b!2508905))

(assert (= (and b!2508555 ((_ is Concat!12145) (regTwo!15410 r!27340))) b!2508906))

(assert (= (and b!2508555 ((_ is Star!7449) (regTwo!15410 r!27340))) b!2508907))

(assert (= (and b!2508555 ((_ is Union!7449) (regTwo!15410 r!27340))) b!2508908))

(check-sat (not b!2508823) (not d!716394) (not b!2508887) (not b!2508770) (not b!2508885) (not bm!155467) (not b!2508908) (not d!716398) (not b!2508904) (not b!2508886) (not b!2508893) (not b!2508895) (not b!2508775) (not b!2508739) (not bm!155438) (not b!2508822) (not b!2508654) (not d!716376) (not b!2508738) (not d!716382) (not b!2508866) (not bm!155481) (not bm!155480) (not d!716368) (not b!2508586) (not d!716400) (not b!2508745) (not b!2508890) (not b!2508747) tp_is_empty!12753 (not b!2508829) (not b!2508736) (not b!2508858) (not bm!155464) (not b!2508894) (not b!2508891) (not b!2508902) (not b!2508900) (not d!716396) (not bm!155494) (not b!2508831) (not bm!155491) (not bm!155490) (not b!2508889) (not b!2508819) (not b!2508906) (not b!2508820) (not d!716388) (not b!2508907) (not bm!155473) (not b!2508735) (not d!716366) (not bm!155437) (not b!2508903))
(check-sat)
