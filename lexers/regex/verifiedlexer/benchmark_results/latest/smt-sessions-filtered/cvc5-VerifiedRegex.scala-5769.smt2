; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!285518 () Bool)

(assert start!285518)

(declare-fun b!2939228 () Bool)

(declare-fun e!1852526 () Bool)

(declare-fun e!1852527 () Bool)

(assert (=> b!2939228 (= e!1852526 e!1852527)))

(declare-fun res!1213191 () Bool)

(assert (=> b!2939228 (=> res!1213191 e!1852527)))

(declare-datatypes ((C!18362 0))(
  ( (C!18363 (val!11217 Int)) )
))
(declare-datatypes ((Regex!9088 0))(
  ( (ElementMatch!9088 (c!480462 C!18362)) (Concat!14409 (regOne!18688 Regex!9088) (regTwo!18688 Regex!9088)) (EmptyExpr!9088) (Star!9088 (reg!9417 Regex!9088)) (EmptyLang!9088) (Union!9088 (regOne!18689 Regex!9088) (regTwo!18689 Regex!9088)) )
))
(declare-fun lt!1029747 () Regex!9088)

(declare-fun isEmptyLang!214 (Regex!9088) Bool)

(assert (=> b!2939228 (= res!1213191 (isEmptyLang!214 lt!1029747))))

(declare-fun lt!1029744 () Regex!9088)

(declare-fun r!17423 () Regex!9088)

(declare-fun simplify!93 (Regex!9088) Regex!9088)

(assert (=> b!2939228 (= lt!1029744 (simplify!93 (regTwo!18688 r!17423)))))

(assert (=> b!2939228 (= lt!1029747 (simplify!93 (regOne!18688 r!17423)))))

(declare-fun b!2939230 () Bool)

(declare-fun e!1852525 () Bool)

(declare-fun tp_is_empty!15739 () Bool)

(declare-fun tp!940878 () Bool)

(assert (=> b!2939230 (= e!1852525 (and tp_is_empty!15739 tp!940878))))

(declare-fun b!2939231 () Bool)

(declare-fun validRegex!3821 (Regex!9088) Bool)

(assert (=> b!2939231 (= e!1852527 (validRegex!3821 (regTwo!18688 r!17423)))))

(declare-datatypes ((List!34953 0))(
  ( (Nil!34829) (Cons!34829 (h!40249 C!18362) (t!234018 List!34953)) )
))
(declare-fun s!11993 () List!34953)

(declare-fun matchR!3970 (Regex!9088 List!34953) Bool)

(assert (=> b!2939231 (= (matchR!3970 (regTwo!18688 r!17423) s!11993) (matchR!3970 lt!1029744 s!11993))))

(declare-datatypes ((Unit!48555 0))(
  ( (Unit!48556) )
))
(declare-fun lt!1029745 () Unit!48555)

(declare-fun lemmaSimplifySound!79 (Regex!9088 List!34953) Unit!48555)

(assert (=> b!2939231 (= lt!1029745 (lemmaSimplifySound!79 (regTwo!18688 r!17423) s!11993))))

(declare-fun b!2939232 () Bool)

(declare-fun e!1852528 () Bool)

(declare-fun tp!940883 () Bool)

(assert (=> b!2939232 (= e!1852528 tp!940883)))

(declare-fun b!2939233 () Bool)

(assert (=> b!2939233 (= e!1852528 tp_is_empty!15739)))

(declare-fun b!2939234 () Bool)

(declare-fun tp!940882 () Bool)

(declare-fun tp!940880 () Bool)

(assert (=> b!2939234 (= e!1852528 (and tp!940882 tp!940880))))

(declare-fun b!2939235 () Bool)

(declare-fun tp!940881 () Bool)

(declare-fun tp!940879 () Bool)

(assert (=> b!2939235 (= e!1852528 (and tp!940881 tp!940879))))

(declare-fun b!2939229 () Bool)

(declare-fun e!1852524 () Bool)

(assert (=> b!2939229 (= e!1852524 (not e!1852526))))

(declare-fun res!1213192 () Bool)

(assert (=> b!2939229 (=> res!1213192 e!1852526)))

(declare-fun lt!1029748 () Bool)

(assert (=> b!2939229 (= res!1213192 (or lt!1029748 (not (is-Concat!14409 r!17423))))))

(declare-fun matchRSpec!1225 (Regex!9088 List!34953) Bool)

(assert (=> b!2939229 (= lt!1029748 (matchRSpec!1225 r!17423 s!11993))))

(assert (=> b!2939229 (= lt!1029748 (matchR!3970 r!17423 s!11993))))

(declare-fun lt!1029746 () Unit!48555)

(declare-fun mainMatchTheorem!1225 (Regex!9088 List!34953) Unit!48555)

(assert (=> b!2939229 (= lt!1029746 (mainMatchTheorem!1225 r!17423 s!11993))))

(declare-fun res!1213194 () Bool)

(assert (=> start!285518 (=> (not res!1213194) (not e!1852524))))

(assert (=> start!285518 (= res!1213194 (validRegex!3821 r!17423))))

(assert (=> start!285518 e!1852524))

(assert (=> start!285518 e!1852528))

(assert (=> start!285518 e!1852525))

(declare-fun b!2939236 () Bool)

(declare-fun res!1213193 () Bool)

(assert (=> b!2939236 (=> res!1213193 e!1852526)))

(declare-fun isEmpty!19090 (List!34953) Bool)

(assert (=> b!2939236 (= res!1213193 (isEmpty!19090 s!11993))))

(declare-fun b!2939237 () Bool)

(declare-fun res!1213195 () Bool)

(assert (=> b!2939237 (=> res!1213195 e!1852527)))

(assert (=> b!2939237 (= res!1213195 (not (isEmptyLang!214 lt!1029744)))))

(assert (= (and start!285518 res!1213194) b!2939229))

(assert (= (and b!2939229 (not res!1213192)) b!2939236))

(assert (= (and b!2939236 (not res!1213193)) b!2939228))

(assert (= (and b!2939228 (not res!1213191)) b!2939237))

(assert (= (and b!2939237 (not res!1213195)) b!2939231))

(assert (= (and start!285518 (is-ElementMatch!9088 r!17423)) b!2939233))

(assert (= (and start!285518 (is-Concat!14409 r!17423)) b!2939234))

(assert (= (and start!285518 (is-Star!9088 r!17423)) b!2939232))

(assert (= (and start!285518 (is-Union!9088 r!17423)) b!2939235))

(assert (= (and start!285518 (is-Cons!34829 s!11993)) b!2939230))

(declare-fun m!3324749 () Bool)

(assert (=> b!2939231 m!3324749))

(declare-fun m!3324751 () Bool)

(assert (=> b!2939231 m!3324751))

(declare-fun m!3324753 () Bool)

(assert (=> b!2939231 m!3324753))

(declare-fun m!3324755 () Bool)

(assert (=> b!2939231 m!3324755))

(declare-fun m!3324757 () Bool)

(assert (=> b!2939228 m!3324757))

(declare-fun m!3324759 () Bool)

(assert (=> b!2939228 m!3324759))

(declare-fun m!3324761 () Bool)

(assert (=> b!2939228 m!3324761))

(declare-fun m!3324763 () Bool)

(assert (=> b!2939236 m!3324763))

(declare-fun m!3324765 () Bool)

(assert (=> b!2939237 m!3324765))

(declare-fun m!3324767 () Bool)

(assert (=> start!285518 m!3324767))

(declare-fun m!3324769 () Bool)

(assert (=> b!2939229 m!3324769))

(declare-fun m!3324771 () Bool)

(assert (=> b!2939229 m!3324771))

(declare-fun m!3324773 () Bool)

(assert (=> b!2939229 m!3324773))

(push 1)

(assert (not b!2939232))

(assert (not b!2939235))

(assert (not b!2939236))

(assert (not b!2939237))

(assert (not b!2939234))

(assert (not b!2939230))

(assert (not b!2939228))

(assert (not b!2939231))

(assert tp_is_empty!15739)

(assert (not start!285518))

(assert (not b!2939229))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2939422 () Bool)

(assert (=> b!2939422 true))

(assert (=> b!2939422 true))

(declare-fun bs!525483 () Bool)

(declare-fun b!2939430 () Bool)

(assert (= bs!525483 (and b!2939430 b!2939422)))

(declare-fun lambda!109482 () Int)

(declare-fun lambda!109481 () Int)

(assert (=> bs!525483 (not (= lambda!109482 lambda!109481))))

(assert (=> b!2939430 true))

(assert (=> b!2939430 true))

(declare-fun d!840054 () Bool)

(declare-fun c!480524 () Bool)

(assert (=> d!840054 (= c!480524 (is-EmptyExpr!9088 r!17423))))

(declare-fun e!1852636 () Bool)

(assert (=> d!840054 (= (matchRSpec!1225 r!17423 s!11993) e!1852636)))

(declare-fun e!1852637 () Bool)

(declare-fun call!193444 () Bool)

(assert (=> b!2939422 (= e!1852637 call!193444)))

(declare-fun b!2939423 () Bool)

(declare-fun c!480527 () Bool)

(assert (=> b!2939423 (= c!480527 (is-ElementMatch!9088 r!17423))))

(declare-fun e!1852638 () Bool)

(declare-fun e!1852633 () Bool)

(assert (=> b!2939423 (= e!1852638 e!1852633)))

(declare-fun b!2939424 () Bool)

(declare-fun e!1852635 () Bool)

(declare-fun e!1852632 () Bool)

(assert (=> b!2939424 (= e!1852635 e!1852632)))

(declare-fun c!480525 () Bool)

(assert (=> b!2939424 (= c!480525 (is-Star!9088 r!17423))))

(declare-fun b!2939425 () Bool)

(declare-fun call!193443 () Bool)

(assert (=> b!2939425 (= e!1852636 call!193443)))

(declare-fun b!2939426 () Bool)

(assert (=> b!2939426 (= e!1852636 e!1852638)))

(declare-fun res!1213247 () Bool)

(assert (=> b!2939426 (= res!1213247 (not (is-EmptyLang!9088 r!17423)))))

(assert (=> b!2939426 (=> (not res!1213247) (not e!1852638))))

(declare-fun bm!193438 () Bool)

(declare-fun Exists!1444 (Int) Bool)

(assert (=> bm!193438 (= call!193444 (Exists!1444 (ite c!480525 lambda!109481 lambda!109482)))))

(declare-fun b!2939427 () Bool)

(declare-fun e!1852634 () Bool)

(assert (=> b!2939427 (= e!1852635 e!1852634)))

(declare-fun res!1213245 () Bool)

(assert (=> b!2939427 (= res!1213245 (matchRSpec!1225 (regOne!18689 r!17423) s!11993))))

(assert (=> b!2939427 (=> res!1213245 e!1852634)))

(declare-fun b!2939428 () Bool)

(assert (=> b!2939428 (= e!1852633 (= s!11993 (Cons!34829 (c!480462 r!17423) Nil!34829)))))

(declare-fun b!2939429 () Bool)

(declare-fun res!1213246 () Bool)

(assert (=> b!2939429 (=> res!1213246 e!1852637)))

(assert (=> b!2939429 (= res!1213246 call!193443)))

(assert (=> b!2939429 (= e!1852632 e!1852637)))

(declare-fun bm!193439 () Bool)

(assert (=> bm!193439 (= call!193443 (isEmpty!19090 s!11993))))

(assert (=> b!2939430 (= e!1852632 call!193444)))

(declare-fun b!2939431 () Bool)

(assert (=> b!2939431 (= e!1852634 (matchRSpec!1225 (regTwo!18689 r!17423) s!11993))))

(declare-fun b!2939432 () Bool)

(declare-fun c!480526 () Bool)

(assert (=> b!2939432 (= c!480526 (is-Union!9088 r!17423))))

(assert (=> b!2939432 (= e!1852633 e!1852635)))

(assert (= (and d!840054 c!480524) b!2939425))

(assert (= (and d!840054 (not c!480524)) b!2939426))

(assert (= (and b!2939426 res!1213247) b!2939423))

(assert (= (and b!2939423 c!480527) b!2939428))

(assert (= (and b!2939423 (not c!480527)) b!2939432))

(assert (= (and b!2939432 c!480526) b!2939427))

(assert (= (and b!2939432 (not c!480526)) b!2939424))

(assert (= (and b!2939427 (not res!1213245)) b!2939431))

(assert (= (and b!2939424 c!480525) b!2939429))

(assert (= (and b!2939424 (not c!480525)) b!2939430))

(assert (= (and b!2939429 (not res!1213246)) b!2939422))

(assert (= (or b!2939422 b!2939430) bm!193438))

(assert (= (or b!2939425 b!2939429) bm!193439))

(declare-fun m!3324839 () Bool)

(assert (=> bm!193438 m!3324839))

(declare-fun m!3324841 () Bool)

(assert (=> b!2939427 m!3324841))

(assert (=> bm!193439 m!3324763))

(declare-fun m!3324843 () Bool)

(assert (=> b!2939431 m!3324843))

(assert (=> b!2939229 d!840054))

(declare-fun b!2939465 () Bool)

(declare-fun res!1213271 () Bool)

(declare-fun e!1852657 () Bool)

(assert (=> b!2939465 (=> (not res!1213271) (not e!1852657))))

(declare-fun tail!4766 (List!34953) List!34953)

(assert (=> b!2939465 (= res!1213271 (isEmpty!19090 (tail!4766 s!11993)))))

(declare-fun b!2939466 () Bool)

(declare-fun res!1213270 () Bool)

(declare-fun e!1852654 () Bool)

(assert (=> b!2939466 (=> res!1213270 e!1852654)))

(assert (=> b!2939466 (= res!1213270 e!1852657)))

(declare-fun res!1213266 () Bool)

(assert (=> b!2939466 (=> (not res!1213266) (not e!1852657))))

(declare-fun lt!1029790 () Bool)

(assert (=> b!2939466 (= res!1213266 lt!1029790)))

(declare-fun d!840064 () Bool)

(declare-fun e!1852655 () Bool)

(assert (=> d!840064 e!1852655))

(declare-fun c!480534 () Bool)

(assert (=> d!840064 (= c!480534 (is-EmptyExpr!9088 r!17423))))

(declare-fun e!1852656 () Bool)

(assert (=> d!840064 (= lt!1029790 e!1852656)))

(declare-fun c!480535 () Bool)

(assert (=> d!840064 (= c!480535 (isEmpty!19090 s!11993))))

(assert (=> d!840064 (validRegex!3821 r!17423)))

(assert (=> d!840064 (= (matchR!3970 r!17423 s!11993) lt!1029790)))

(declare-fun b!2939467 () Bool)

(declare-fun derivativeStep!2481 (Regex!9088 C!18362) Regex!9088)

(declare-fun head!6540 (List!34953) C!18362)

(assert (=> b!2939467 (= e!1852656 (matchR!3970 (derivativeStep!2481 r!17423 (head!6540 s!11993)) (tail!4766 s!11993)))))

(declare-fun b!2939468 () Bool)

(declare-fun e!1852659 () Bool)

(declare-fun e!1852653 () Bool)

(assert (=> b!2939468 (= e!1852659 e!1852653)))

(declare-fun res!1213269 () Bool)

(assert (=> b!2939468 (=> res!1213269 e!1852653)))

(declare-fun call!193447 () Bool)

(assert (=> b!2939468 (= res!1213269 call!193447)))

(declare-fun b!2939469 () Bool)

(assert (=> b!2939469 (= e!1852653 (not (= (head!6540 s!11993) (c!480462 r!17423))))))

(declare-fun b!2939470 () Bool)

(declare-fun res!1213267 () Bool)

(assert (=> b!2939470 (=> (not res!1213267) (not e!1852657))))

(assert (=> b!2939470 (= res!1213267 (not call!193447))))

(declare-fun b!2939471 () Bool)

(declare-fun res!1213264 () Bool)

(assert (=> b!2939471 (=> res!1213264 e!1852654)))

(assert (=> b!2939471 (= res!1213264 (not (is-ElementMatch!9088 r!17423)))))

(declare-fun e!1852658 () Bool)

(assert (=> b!2939471 (= e!1852658 e!1852654)))

(declare-fun b!2939472 () Bool)

(assert (=> b!2939472 (= e!1852658 (not lt!1029790))))

(declare-fun b!2939473 () Bool)

(declare-fun nullable!2870 (Regex!9088) Bool)

(assert (=> b!2939473 (= e!1852656 (nullable!2870 r!17423))))

(declare-fun b!2939474 () Bool)

(assert (=> b!2939474 (= e!1852655 (= lt!1029790 call!193447))))

(declare-fun bm!193442 () Bool)

(assert (=> bm!193442 (= call!193447 (isEmpty!19090 s!11993))))

(declare-fun b!2939475 () Bool)

(assert (=> b!2939475 (= e!1852657 (= (head!6540 s!11993) (c!480462 r!17423)))))

(declare-fun b!2939476 () Bool)

(declare-fun res!1213268 () Bool)

(assert (=> b!2939476 (=> res!1213268 e!1852653)))

(assert (=> b!2939476 (= res!1213268 (not (isEmpty!19090 (tail!4766 s!11993))))))

(declare-fun b!2939477 () Bool)

(assert (=> b!2939477 (= e!1852654 e!1852659)))

(declare-fun res!1213265 () Bool)

(assert (=> b!2939477 (=> (not res!1213265) (not e!1852659))))

(assert (=> b!2939477 (= res!1213265 (not lt!1029790))))

(declare-fun b!2939478 () Bool)

(assert (=> b!2939478 (= e!1852655 e!1852658)))

(declare-fun c!480536 () Bool)

(assert (=> b!2939478 (= c!480536 (is-EmptyLang!9088 r!17423))))

(assert (= (and d!840064 c!480535) b!2939473))

(assert (= (and d!840064 (not c!480535)) b!2939467))

(assert (= (and d!840064 c!480534) b!2939474))

(assert (= (and d!840064 (not c!480534)) b!2939478))

(assert (= (and b!2939478 c!480536) b!2939472))

(assert (= (and b!2939478 (not c!480536)) b!2939471))

(assert (= (and b!2939471 (not res!1213264)) b!2939466))

(assert (= (and b!2939466 res!1213266) b!2939470))

(assert (= (and b!2939470 res!1213267) b!2939465))

(assert (= (and b!2939465 res!1213271) b!2939475))

(assert (= (and b!2939466 (not res!1213270)) b!2939477))

(assert (= (and b!2939477 res!1213265) b!2939468))

(assert (= (and b!2939468 (not res!1213269)) b!2939476))

(assert (= (and b!2939476 (not res!1213268)) b!2939469))

(assert (= (or b!2939474 b!2939468 b!2939470) bm!193442))

(declare-fun m!3324845 () Bool)

(assert (=> b!2939476 m!3324845))

(assert (=> b!2939476 m!3324845))

(declare-fun m!3324847 () Bool)

(assert (=> b!2939476 m!3324847))

(assert (=> b!2939465 m!3324845))

(assert (=> b!2939465 m!3324845))

(assert (=> b!2939465 m!3324847))

(declare-fun m!3324849 () Bool)

(assert (=> b!2939473 m!3324849))

(declare-fun m!3324851 () Bool)

(assert (=> b!2939469 m!3324851))

(assert (=> b!2939475 m!3324851))

(assert (=> d!840064 m!3324763))

(assert (=> d!840064 m!3324767))

(assert (=> bm!193442 m!3324763))

(assert (=> b!2939467 m!3324851))

(assert (=> b!2939467 m!3324851))

(declare-fun m!3324853 () Bool)

(assert (=> b!2939467 m!3324853))

(assert (=> b!2939467 m!3324845))

(assert (=> b!2939467 m!3324853))

(assert (=> b!2939467 m!3324845))

(declare-fun m!3324855 () Bool)

(assert (=> b!2939467 m!3324855))

(assert (=> b!2939229 d!840064))

(declare-fun d!840066 () Bool)

(assert (=> d!840066 (= (matchR!3970 r!17423 s!11993) (matchRSpec!1225 r!17423 s!11993))))

(declare-fun lt!1029793 () Unit!48555)

(declare-fun choose!17384 (Regex!9088 List!34953) Unit!48555)

(assert (=> d!840066 (= lt!1029793 (choose!17384 r!17423 s!11993))))

(assert (=> d!840066 (validRegex!3821 r!17423)))

(assert (=> d!840066 (= (mainMatchTheorem!1225 r!17423 s!11993) lt!1029793)))

(declare-fun bs!525484 () Bool)

(assert (= bs!525484 d!840066))

(assert (=> bs!525484 m!3324771))

(assert (=> bs!525484 m!3324769))

(declare-fun m!3324857 () Bool)

(assert (=> bs!525484 m!3324857))

(assert (=> bs!525484 m!3324767))

(assert (=> b!2939229 d!840066))

(declare-fun c!480542 () Bool)

(declare-fun bm!193449 () Bool)

(declare-fun c!480541 () Bool)

(declare-fun call!193454 () Bool)

(assert (=> bm!193449 (= call!193454 (validRegex!3821 (ite c!480542 (reg!9417 (regTwo!18688 r!17423)) (ite c!480541 (regTwo!18689 (regTwo!18688 r!17423)) (regOne!18688 (regTwo!18688 r!17423))))))))

(declare-fun b!2939497 () Bool)

(declare-fun e!1852678 () Bool)

(declare-fun e!1852674 () Bool)

(assert (=> b!2939497 (= e!1852678 e!1852674)))

(declare-fun res!1213286 () Bool)

(assert (=> b!2939497 (= res!1213286 (not (nullable!2870 (reg!9417 (regTwo!18688 r!17423)))))))

(assert (=> b!2939497 (=> (not res!1213286) (not e!1852674))))

(declare-fun b!2939498 () Bool)

(declare-fun res!1213284 () Bool)

(declare-fun e!1852677 () Bool)

(assert (=> b!2939498 (=> res!1213284 e!1852677)))

(assert (=> b!2939498 (= res!1213284 (not (is-Concat!14409 (regTwo!18688 r!17423))))))

(declare-fun e!1852675 () Bool)

(assert (=> b!2939498 (= e!1852675 e!1852677)))

(declare-fun b!2939499 () Bool)

(declare-fun e!1852676 () Bool)

(declare-fun call!193455 () Bool)

(assert (=> b!2939499 (= e!1852676 call!193455)))

(declare-fun b!2939500 () Bool)

(assert (=> b!2939500 (= e!1852674 call!193454)))

(declare-fun bm!193450 () Bool)

(declare-fun call!193456 () Bool)

(assert (=> bm!193450 (= call!193456 call!193454)))

(declare-fun d!840068 () Bool)

(declare-fun res!1213282 () Bool)

(declare-fun e!1852680 () Bool)

(assert (=> d!840068 (=> res!1213282 e!1852680)))

(assert (=> d!840068 (= res!1213282 (is-ElementMatch!9088 (regTwo!18688 r!17423)))))

(assert (=> d!840068 (= (validRegex!3821 (regTwo!18688 r!17423)) e!1852680)))

(declare-fun b!2939501 () Bool)

(declare-fun e!1852679 () Bool)

(assert (=> b!2939501 (= e!1852679 call!193456)))

(declare-fun b!2939502 () Bool)

(assert (=> b!2939502 (= e!1852680 e!1852678)))

(assert (=> b!2939502 (= c!480542 (is-Star!9088 (regTwo!18688 r!17423)))))

(declare-fun b!2939503 () Bool)

(assert (=> b!2939503 (= e!1852678 e!1852675)))

(assert (=> b!2939503 (= c!480541 (is-Union!9088 (regTwo!18688 r!17423)))))

(declare-fun bm!193451 () Bool)

(assert (=> bm!193451 (= call!193455 (validRegex!3821 (ite c!480541 (regOne!18689 (regTwo!18688 r!17423)) (regTwo!18688 (regTwo!18688 r!17423)))))))

(declare-fun b!2939504 () Bool)

(assert (=> b!2939504 (= e!1852677 e!1852676)))

(declare-fun res!1213283 () Bool)

(assert (=> b!2939504 (=> (not res!1213283) (not e!1852676))))

(assert (=> b!2939504 (= res!1213283 call!193456)))

(declare-fun b!2939505 () Bool)

(declare-fun res!1213285 () Bool)

(assert (=> b!2939505 (=> (not res!1213285) (not e!1852679))))

(assert (=> b!2939505 (= res!1213285 call!193455)))

(assert (=> b!2939505 (= e!1852675 e!1852679)))

(assert (= (and d!840068 (not res!1213282)) b!2939502))

(assert (= (and b!2939502 c!480542) b!2939497))

(assert (= (and b!2939502 (not c!480542)) b!2939503))

(assert (= (and b!2939497 res!1213286) b!2939500))

(assert (= (and b!2939503 c!480541) b!2939505))

(assert (= (and b!2939503 (not c!480541)) b!2939498))

(assert (= (and b!2939505 res!1213285) b!2939501))

(assert (= (and b!2939498 (not res!1213284)) b!2939504))

(assert (= (and b!2939504 res!1213283) b!2939499))

(assert (= (or b!2939505 b!2939499) bm!193451))

(assert (= (or b!2939501 b!2939504) bm!193450))

(assert (= (or b!2939500 bm!193450) bm!193449))

(declare-fun m!3324859 () Bool)

(assert (=> bm!193449 m!3324859))

(declare-fun m!3324861 () Bool)

(assert (=> b!2939497 m!3324861))

(declare-fun m!3324863 () Bool)

(assert (=> bm!193451 m!3324863))

(assert (=> b!2939231 d!840068))

(declare-fun b!2939506 () Bool)

(declare-fun res!1213294 () Bool)

(declare-fun e!1852685 () Bool)

(assert (=> b!2939506 (=> (not res!1213294) (not e!1852685))))

(assert (=> b!2939506 (= res!1213294 (isEmpty!19090 (tail!4766 s!11993)))))

(declare-fun b!2939507 () Bool)

(declare-fun res!1213293 () Bool)

(declare-fun e!1852682 () Bool)

(assert (=> b!2939507 (=> res!1213293 e!1852682)))

(assert (=> b!2939507 (= res!1213293 e!1852685)))

(declare-fun res!1213289 () Bool)

(assert (=> b!2939507 (=> (not res!1213289) (not e!1852685))))

(declare-fun lt!1029794 () Bool)

(assert (=> b!2939507 (= res!1213289 lt!1029794)))

(declare-fun d!840070 () Bool)

(declare-fun e!1852683 () Bool)

(assert (=> d!840070 e!1852683))

(declare-fun c!480543 () Bool)

(assert (=> d!840070 (= c!480543 (is-EmptyExpr!9088 (regTwo!18688 r!17423)))))

(declare-fun e!1852684 () Bool)

(assert (=> d!840070 (= lt!1029794 e!1852684)))

(declare-fun c!480544 () Bool)

(assert (=> d!840070 (= c!480544 (isEmpty!19090 s!11993))))

(assert (=> d!840070 (validRegex!3821 (regTwo!18688 r!17423))))

(assert (=> d!840070 (= (matchR!3970 (regTwo!18688 r!17423) s!11993) lt!1029794)))

(declare-fun b!2939508 () Bool)

(assert (=> b!2939508 (= e!1852684 (matchR!3970 (derivativeStep!2481 (regTwo!18688 r!17423) (head!6540 s!11993)) (tail!4766 s!11993)))))

(declare-fun b!2939509 () Bool)

(declare-fun e!1852687 () Bool)

(declare-fun e!1852681 () Bool)

(assert (=> b!2939509 (= e!1852687 e!1852681)))

(declare-fun res!1213292 () Bool)

(assert (=> b!2939509 (=> res!1213292 e!1852681)))

(declare-fun call!193457 () Bool)

(assert (=> b!2939509 (= res!1213292 call!193457)))

(declare-fun b!2939510 () Bool)

(assert (=> b!2939510 (= e!1852681 (not (= (head!6540 s!11993) (c!480462 (regTwo!18688 r!17423)))))))

(declare-fun b!2939511 () Bool)

(declare-fun res!1213290 () Bool)

(assert (=> b!2939511 (=> (not res!1213290) (not e!1852685))))

(assert (=> b!2939511 (= res!1213290 (not call!193457))))

(declare-fun b!2939512 () Bool)

(declare-fun res!1213287 () Bool)

(assert (=> b!2939512 (=> res!1213287 e!1852682)))

(assert (=> b!2939512 (= res!1213287 (not (is-ElementMatch!9088 (regTwo!18688 r!17423))))))

(declare-fun e!1852686 () Bool)

(assert (=> b!2939512 (= e!1852686 e!1852682)))

(declare-fun b!2939513 () Bool)

(assert (=> b!2939513 (= e!1852686 (not lt!1029794))))

(declare-fun b!2939514 () Bool)

(assert (=> b!2939514 (= e!1852684 (nullable!2870 (regTwo!18688 r!17423)))))

(declare-fun b!2939515 () Bool)

(assert (=> b!2939515 (= e!1852683 (= lt!1029794 call!193457))))

(declare-fun bm!193452 () Bool)

(assert (=> bm!193452 (= call!193457 (isEmpty!19090 s!11993))))

(declare-fun b!2939516 () Bool)

(assert (=> b!2939516 (= e!1852685 (= (head!6540 s!11993) (c!480462 (regTwo!18688 r!17423))))))

(declare-fun b!2939517 () Bool)

(declare-fun res!1213291 () Bool)

(assert (=> b!2939517 (=> res!1213291 e!1852681)))

(assert (=> b!2939517 (= res!1213291 (not (isEmpty!19090 (tail!4766 s!11993))))))

(declare-fun b!2939518 () Bool)

(assert (=> b!2939518 (= e!1852682 e!1852687)))

(declare-fun res!1213288 () Bool)

(assert (=> b!2939518 (=> (not res!1213288) (not e!1852687))))

(assert (=> b!2939518 (= res!1213288 (not lt!1029794))))

(declare-fun b!2939519 () Bool)

(assert (=> b!2939519 (= e!1852683 e!1852686)))

(declare-fun c!480545 () Bool)

(assert (=> b!2939519 (= c!480545 (is-EmptyLang!9088 (regTwo!18688 r!17423)))))

(assert (= (and d!840070 c!480544) b!2939514))

(assert (= (and d!840070 (not c!480544)) b!2939508))

(assert (= (and d!840070 c!480543) b!2939515))

(assert (= (and d!840070 (not c!480543)) b!2939519))

(assert (= (and b!2939519 c!480545) b!2939513))

(assert (= (and b!2939519 (not c!480545)) b!2939512))

(assert (= (and b!2939512 (not res!1213287)) b!2939507))

(assert (= (and b!2939507 res!1213289) b!2939511))

(assert (= (and b!2939511 res!1213290) b!2939506))

(assert (= (and b!2939506 res!1213294) b!2939516))

(assert (= (and b!2939507 (not res!1213293)) b!2939518))

(assert (= (and b!2939518 res!1213288) b!2939509))

(assert (= (and b!2939509 (not res!1213292)) b!2939517))

(assert (= (and b!2939517 (not res!1213291)) b!2939510))

(assert (= (or b!2939515 b!2939509 b!2939511) bm!193452))

(assert (=> b!2939517 m!3324845))

(assert (=> b!2939517 m!3324845))

(assert (=> b!2939517 m!3324847))

(assert (=> b!2939506 m!3324845))

(assert (=> b!2939506 m!3324845))

(assert (=> b!2939506 m!3324847))

(declare-fun m!3324865 () Bool)

(assert (=> b!2939514 m!3324865))

(assert (=> b!2939510 m!3324851))

(assert (=> b!2939516 m!3324851))

(assert (=> d!840070 m!3324763))

(assert (=> d!840070 m!3324749))

(assert (=> bm!193452 m!3324763))

(assert (=> b!2939508 m!3324851))

(assert (=> b!2939508 m!3324851))

(declare-fun m!3324867 () Bool)

(assert (=> b!2939508 m!3324867))

(assert (=> b!2939508 m!3324845))

(assert (=> b!2939508 m!3324867))

(assert (=> b!2939508 m!3324845))

(declare-fun m!3324869 () Bool)

(assert (=> b!2939508 m!3324869))

(assert (=> b!2939231 d!840070))

(declare-fun b!2939520 () Bool)

(declare-fun res!1213302 () Bool)

(declare-fun e!1852692 () Bool)

(assert (=> b!2939520 (=> (not res!1213302) (not e!1852692))))

(assert (=> b!2939520 (= res!1213302 (isEmpty!19090 (tail!4766 s!11993)))))

(declare-fun b!2939521 () Bool)

(declare-fun res!1213301 () Bool)

(declare-fun e!1852689 () Bool)

(assert (=> b!2939521 (=> res!1213301 e!1852689)))

(assert (=> b!2939521 (= res!1213301 e!1852692)))

(declare-fun res!1213297 () Bool)

(assert (=> b!2939521 (=> (not res!1213297) (not e!1852692))))

(declare-fun lt!1029795 () Bool)

(assert (=> b!2939521 (= res!1213297 lt!1029795)))

(declare-fun d!840072 () Bool)

(declare-fun e!1852690 () Bool)

(assert (=> d!840072 e!1852690))

(declare-fun c!480546 () Bool)

(assert (=> d!840072 (= c!480546 (is-EmptyExpr!9088 lt!1029744))))

(declare-fun e!1852691 () Bool)

(assert (=> d!840072 (= lt!1029795 e!1852691)))

(declare-fun c!480547 () Bool)

(assert (=> d!840072 (= c!480547 (isEmpty!19090 s!11993))))

(assert (=> d!840072 (validRegex!3821 lt!1029744)))

(assert (=> d!840072 (= (matchR!3970 lt!1029744 s!11993) lt!1029795)))

(declare-fun b!2939522 () Bool)

(assert (=> b!2939522 (= e!1852691 (matchR!3970 (derivativeStep!2481 lt!1029744 (head!6540 s!11993)) (tail!4766 s!11993)))))

(declare-fun b!2939523 () Bool)

(declare-fun e!1852694 () Bool)

(declare-fun e!1852688 () Bool)

(assert (=> b!2939523 (= e!1852694 e!1852688)))

(declare-fun res!1213300 () Bool)

(assert (=> b!2939523 (=> res!1213300 e!1852688)))

(declare-fun call!193458 () Bool)

(assert (=> b!2939523 (= res!1213300 call!193458)))

(declare-fun b!2939524 () Bool)

(assert (=> b!2939524 (= e!1852688 (not (= (head!6540 s!11993) (c!480462 lt!1029744))))))

(declare-fun b!2939525 () Bool)

(declare-fun res!1213298 () Bool)

(assert (=> b!2939525 (=> (not res!1213298) (not e!1852692))))

(assert (=> b!2939525 (= res!1213298 (not call!193458))))

(declare-fun b!2939526 () Bool)

(declare-fun res!1213295 () Bool)

(assert (=> b!2939526 (=> res!1213295 e!1852689)))

(assert (=> b!2939526 (= res!1213295 (not (is-ElementMatch!9088 lt!1029744)))))

(declare-fun e!1852693 () Bool)

(assert (=> b!2939526 (= e!1852693 e!1852689)))

(declare-fun b!2939527 () Bool)

(assert (=> b!2939527 (= e!1852693 (not lt!1029795))))

(declare-fun b!2939528 () Bool)

(assert (=> b!2939528 (= e!1852691 (nullable!2870 lt!1029744))))

(declare-fun b!2939529 () Bool)

(assert (=> b!2939529 (= e!1852690 (= lt!1029795 call!193458))))

(declare-fun bm!193453 () Bool)

(assert (=> bm!193453 (= call!193458 (isEmpty!19090 s!11993))))

(declare-fun b!2939530 () Bool)

(assert (=> b!2939530 (= e!1852692 (= (head!6540 s!11993) (c!480462 lt!1029744)))))

(declare-fun b!2939531 () Bool)

(declare-fun res!1213299 () Bool)

(assert (=> b!2939531 (=> res!1213299 e!1852688)))

(assert (=> b!2939531 (= res!1213299 (not (isEmpty!19090 (tail!4766 s!11993))))))

(declare-fun b!2939532 () Bool)

(assert (=> b!2939532 (= e!1852689 e!1852694)))

(declare-fun res!1213296 () Bool)

(assert (=> b!2939532 (=> (not res!1213296) (not e!1852694))))

(assert (=> b!2939532 (= res!1213296 (not lt!1029795))))

(declare-fun b!2939533 () Bool)

(assert (=> b!2939533 (= e!1852690 e!1852693)))

(declare-fun c!480548 () Bool)

(assert (=> b!2939533 (= c!480548 (is-EmptyLang!9088 lt!1029744))))

(assert (= (and d!840072 c!480547) b!2939528))

(assert (= (and d!840072 (not c!480547)) b!2939522))

(assert (= (and d!840072 c!480546) b!2939529))

(assert (= (and d!840072 (not c!480546)) b!2939533))

(assert (= (and b!2939533 c!480548) b!2939527))

(assert (= (and b!2939533 (not c!480548)) b!2939526))

(assert (= (and b!2939526 (not res!1213295)) b!2939521))

(assert (= (and b!2939521 res!1213297) b!2939525))

(assert (= (and b!2939525 res!1213298) b!2939520))

(assert (= (and b!2939520 res!1213302) b!2939530))

(assert (= (and b!2939521 (not res!1213301)) b!2939532))

(assert (= (and b!2939532 res!1213296) b!2939523))

(assert (= (and b!2939523 (not res!1213300)) b!2939531))

(assert (= (and b!2939531 (not res!1213299)) b!2939524))

(assert (= (or b!2939529 b!2939523 b!2939525) bm!193453))

(assert (=> b!2939531 m!3324845))

(assert (=> b!2939531 m!3324845))

(assert (=> b!2939531 m!3324847))

(assert (=> b!2939520 m!3324845))

(assert (=> b!2939520 m!3324845))

(assert (=> b!2939520 m!3324847))

(declare-fun m!3324871 () Bool)

(assert (=> b!2939528 m!3324871))

(assert (=> b!2939524 m!3324851))

(assert (=> b!2939530 m!3324851))

(assert (=> d!840072 m!3324763))

(declare-fun m!3324873 () Bool)

(assert (=> d!840072 m!3324873))

(assert (=> bm!193453 m!3324763))

(assert (=> b!2939522 m!3324851))

(assert (=> b!2939522 m!3324851))

(declare-fun m!3324875 () Bool)

(assert (=> b!2939522 m!3324875))

(assert (=> b!2939522 m!3324845))

(assert (=> b!2939522 m!3324875))

(assert (=> b!2939522 m!3324845))

(declare-fun m!3324877 () Bool)

(assert (=> b!2939522 m!3324877))

(assert (=> b!2939231 d!840072))

(declare-fun d!840074 () Bool)

(assert (=> d!840074 (= (matchR!3970 (regTwo!18688 r!17423) s!11993) (matchR!3970 (simplify!93 (regTwo!18688 r!17423)) s!11993))))

(declare-fun lt!1029798 () Unit!48555)

(declare-fun choose!17385 (Regex!9088 List!34953) Unit!48555)

(assert (=> d!840074 (= lt!1029798 (choose!17385 (regTwo!18688 r!17423) s!11993))))

(assert (=> d!840074 (validRegex!3821 (regTwo!18688 r!17423))))

(assert (=> d!840074 (= (lemmaSimplifySound!79 (regTwo!18688 r!17423) s!11993) lt!1029798)))

(declare-fun bs!525485 () Bool)

(assert (= bs!525485 d!840074))

(assert (=> bs!525485 m!3324749))

(assert (=> bs!525485 m!3324759))

(assert (=> bs!525485 m!3324759))

(declare-fun m!3324879 () Bool)

(assert (=> bs!525485 m!3324879))

(declare-fun m!3324881 () Bool)

(assert (=> bs!525485 m!3324881))

(assert (=> bs!525485 m!3324751))

(assert (=> b!2939231 d!840074))

(declare-fun d!840076 () Bool)

(assert (=> d!840076 (= (isEmpty!19090 s!11993) (is-Nil!34829 s!11993))))

(assert (=> b!2939236 d!840076))

(declare-fun d!840078 () Bool)

(assert (=> d!840078 (= (isEmptyLang!214 lt!1029744) (is-EmptyLang!9088 lt!1029744))))

(assert (=> b!2939237 d!840078))

(declare-fun c!480550 () Bool)

(declare-fun call!193459 () Bool)

(declare-fun c!480549 () Bool)

(declare-fun bm!193454 () Bool)

(assert (=> bm!193454 (= call!193459 (validRegex!3821 (ite c!480550 (reg!9417 r!17423) (ite c!480549 (regTwo!18689 r!17423) (regOne!18688 r!17423)))))))

(declare-fun b!2939534 () Bool)

(declare-fun e!1852699 () Bool)

(declare-fun e!1852695 () Bool)

(assert (=> b!2939534 (= e!1852699 e!1852695)))

(declare-fun res!1213307 () Bool)

(assert (=> b!2939534 (= res!1213307 (not (nullable!2870 (reg!9417 r!17423))))))

(assert (=> b!2939534 (=> (not res!1213307) (not e!1852695))))

(declare-fun b!2939535 () Bool)

(declare-fun res!1213305 () Bool)

(declare-fun e!1852698 () Bool)

(assert (=> b!2939535 (=> res!1213305 e!1852698)))

(assert (=> b!2939535 (= res!1213305 (not (is-Concat!14409 r!17423)))))

(declare-fun e!1852696 () Bool)

(assert (=> b!2939535 (= e!1852696 e!1852698)))

(declare-fun b!2939536 () Bool)

(declare-fun e!1852697 () Bool)

(declare-fun call!193460 () Bool)

(assert (=> b!2939536 (= e!1852697 call!193460)))

(declare-fun b!2939537 () Bool)

(assert (=> b!2939537 (= e!1852695 call!193459)))

(declare-fun bm!193455 () Bool)

(declare-fun call!193461 () Bool)

(assert (=> bm!193455 (= call!193461 call!193459)))

(declare-fun d!840080 () Bool)

(declare-fun res!1213303 () Bool)

(declare-fun e!1852701 () Bool)

(assert (=> d!840080 (=> res!1213303 e!1852701)))

(assert (=> d!840080 (= res!1213303 (is-ElementMatch!9088 r!17423))))

(assert (=> d!840080 (= (validRegex!3821 r!17423) e!1852701)))

(declare-fun b!2939538 () Bool)

(declare-fun e!1852700 () Bool)

(assert (=> b!2939538 (= e!1852700 call!193461)))

(declare-fun b!2939539 () Bool)

(assert (=> b!2939539 (= e!1852701 e!1852699)))

(assert (=> b!2939539 (= c!480550 (is-Star!9088 r!17423))))

(declare-fun b!2939540 () Bool)

(assert (=> b!2939540 (= e!1852699 e!1852696)))

(assert (=> b!2939540 (= c!480549 (is-Union!9088 r!17423))))

(declare-fun bm!193456 () Bool)

(assert (=> bm!193456 (= call!193460 (validRegex!3821 (ite c!480549 (regOne!18689 r!17423) (regTwo!18688 r!17423))))))

(declare-fun b!2939541 () Bool)

(assert (=> b!2939541 (= e!1852698 e!1852697)))

(declare-fun res!1213304 () Bool)

(assert (=> b!2939541 (=> (not res!1213304) (not e!1852697))))

(assert (=> b!2939541 (= res!1213304 call!193461)))

(declare-fun b!2939542 () Bool)

(declare-fun res!1213306 () Bool)

(assert (=> b!2939542 (=> (not res!1213306) (not e!1852700))))

(assert (=> b!2939542 (= res!1213306 call!193460)))

(assert (=> b!2939542 (= e!1852696 e!1852700)))

(assert (= (and d!840080 (not res!1213303)) b!2939539))

(assert (= (and b!2939539 c!480550) b!2939534))

(assert (= (and b!2939539 (not c!480550)) b!2939540))

(assert (= (and b!2939534 res!1213307) b!2939537))

(assert (= (and b!2939540 c!480549) b!2939542))

(assert (= (and b!2939540 (not c!480549)) b!2939535))

(assert (= (and b!2939542 res!1213306) b!2939538))

(assert (= (and b!2939535 (not res!1213305)) b!2939541))

(assert (= (and b!2939541 res!1213304) b!2939536))

(assert (= (or b!2939542 b!2939536) bm!193456))

(assert (= (or b!2939538 b!2939541) bm!193455))

(assert (= (or b!2939537 bm!193455) bm!193454))

(declare-fun m!3324883 () Bool)

(assert (=> bm!193454 m!3324883))

(declare-fun m!3324885 () Bool)

(assert (=> b!2939534 m!3324885))

(declare-fun m!3324887 () Bool)

(assert (=> bm!193456 m!3324887))

(assert (=> start!285518 d!840080))

(declare-fun d!840082 () Bool)

(assert (=> d!840082 (= (isEmptyLang!214 lt!1029747) (is-EmptyLang!9088 lt!1029747))))

(assert (=> b!2939228 d!840082))

(declare-fun b!2939593 () Bool)

(declare-fun e!1852730 () Regex!9088)

(declare-fun e!1852734 () Regex!9088)

(assert (=> b!2939593 (= e!1852730 e!1852734)))

(declare-fun c!480577 () Bool)

(assert (=> b!2939593 (= c!480577 (is-ElementMatch!9088 (regTwo!18688 r!17423)))))

(declare-fun b!2939594 () Bool)

(declare-fun e!1852739 () Regex!9088)

(declare-fun lt!1029811 () Regex!9088)

(assert (=> b!2939594 (= e!1852739 lt!1029811)))

(declare-fun b!2939595 () Bool)

(declare-fun e!1852735 () Regex!9088)

(declare-fun lt!1029816 () Regex!9088)

(assert (=> b!2939595 (= e!1852735 (Concat!14409 lt!1029816 lt!1029811))))

(declare-fun b!2939596 () Bool)

(declare-fun e!1852736 () Bool)

(declare-fun call!193476 () Bool)

(assert (=> b!2939596 (= e!1852736 call!193476)))

(declare-fun call!193480 () Regex!9088)

(declare-fun c!480578 () Bool)

(declare-fun bm!193471 () Bool)

(declare-fun c!480574 () Bool)

(assert (=> bm!193471 (= call!193480 (simplify!93 (ite c!480574 (reg!9417 (regTwo!18688 r!17423)) (ite c!480578 (regTwo!18689 (regTwo!18688 r!17423)) (regOne!18688 (regTwo!18688 r!17423))))))))

(declare-fun bm!193472 () Bool)

(declare-fun call!193481 () Bool)

(declare-fun call!193478 () Bool)

(assert (=> bm!193472 (= call!193481 call!193478)))

(declare-fun b!2939597 () Bool)

(declare-fun e!1852732 () Regex!9088)

(declare-fun lt!1029813 () Regex!9088)

(assert (=> b!2939597 (= e!1852732 lt!1029813)))

(declare-fun d!840084 () Bool)

(declare-fun e!1852737 () Bool)

(assert (=> d!840084 e!1852737))

(declare-fun res!1213315 () Bool)

(assert (=> d!840084 (=> (not res!1213315) (not e!1852737))))

(declare-fun lt!1029815 () Regex!9088)

(assert (=> d!840084 (= res!1213315 (validRegex!3821 lt!1029815))))

(assert (=> d!840084 (= lt!1029815 e!1852730)))

(declare-fun c!480573 () Bool)

(assert (=> d!840084 (= c!480573 (is-EmptyLang!9088 (regTwo!18688 r!17423)))))

(assert (=> d!840084 (validRegex!3821 (regTwo!18688 r!17423))))

(assert (=> d!840084 (= (simplify!93 (regTwo!18688 r!17423)) lt!1029815)))

(declare-fun bm!193473 () Bool)

(declare-fun lt!1029812 () Regex!9088)

(declare-fun isEmptyExpr!297 (Regex!9088) Bool)

(assert (=> bm!193473 (= call!193476 (isEmptyExpr!297 (ite c!480574 lt!1029812 lt!1029811)))))

(declare-fun b!2939598 () Bool)

(declare-fun e!1852741 () Regex!9088)

(declare-fun lt!1029814 () Regex!9088)

(assert (=> b!2939598 (= e!1852741 lt!1029814)))

(declare-fun b!2939599 () Bool)

(declare-fun c!480576 () Bool)

(assert (=> b!2939599 (= c!480576 (isEmptyExpr!297 lt!1029816))))

(declare-fun e!1852743 () Regex!9088)

(assert (=> b!2939599 (= e!1852743 e!1852739)))

(declare-fun bm!193474 () Bool)

(assert (=> bm!193474 (= call!193478 (isEmptyLang!214 (ite c!480574 lt!1029812 (ite c!480578 lt!1029814 lt!1029816))))))

(declare-fun b!2939600 () Bool)

(assert (=> b!2939600 (= e!1852739 e!1852735)))

(declare-fun c!480575 () Bool)

(assert (=> b!2939600 (= c!480575 call!193476)))

(declare-fun b!2939601 () Bool)

(declare-fun e!1852740 () Regex!9088)

(assert (=> b!2939601 (= e!1852740 EmptyExpr!9088)))

(declare-fun bm!193475 () Bool)

(declare-fun call!193482 () Regex!9088)

(assert (=> bm!193475 (= call!193482 (simplify!93 (ite c!480578 (regOne!18689 (regTwo!18688 r!17423)) (regTwo!18688 (regTwo!18688 r!17423)))))))

(declare-fun b!2939602 () Bool)

(declare-fun e!1852733 () Regex!9088)

(assert (=> b!2939602 (= e!1852733 EmptyExpr!9088)))

(declare-fun b!2939603 () Bool)

(assert (=> b!2939603 (= e!1852741 (Union!9088 lt!1029814 lt!1029813))))

(declare-fun b!2939604 () Bool)

(assert (=> b!2939604 (= c!480578 (is-Union!9088 (regTwo!18688 r!17423)))))

(declare-fun e!1852738 () Regex!9088)

(declare-fun e!1852742 () Regex!9088)

(assert (=> b!2939604 (= e!1852738 e!1852742)))

(declare-fun bm!193476 () Bool)

(declare-fun call!193479 () Bool)

(assert (=> bm!193476 (= call!193479 (isEmptyLang!214 (ite c!480578 lt!1029813 lt!1029811)))))

(declare-fun b!2939605 () Bool)

(assert (=> b!2939605 (= e!1852743 EmptyLang!9088)))

(declare-fun b!2939606 () Bool)

(declare-fun e!1852731 () Bool)

(assert (=> b!2939606 (= e!1852731 call!193479)))

(declare-fun b!2939607 () Bool)

(assert (=> b!2939607 (= e!1852742 e!1852743)))

(declare-fun call!193477 () Regex!9088)

(assert (=> b!2939607 (= lt!1029816 call!193477)))

(assert (=> b!2939607 (= lt!1029811 call!193482)))

(declare-fun res!1213314 () Bool)

(assert (=> b!2939607 (= res!1213314 call!193481)))

(assert (=> b!2939607 (=> res!1213314 e!1852731)))

(declare-fun c!480581 () Bool)

(assert (=> b!2939607 (= c!480581 e!1852731)))

(declare-fun bm!193477 () Bool)

(assert (=> bm!193477 (= call!193477 call!193480)))

(declare-fun b!2939608 () Bool)

(declare-fun c!480579 () Bool)

(assert (=> b!2939608 (= c!480579 call!193479)))

(assert (=> b!2939608 (= e!1852732 e!1852741)))

(declare-fun b!2939609 () Bool)

(assert (=> b!2939609 (= e!1852742 e!1852732)))

(assert (=> b!2939609 (= lt!1029814 call!193482)))

(assert (=> b!2939609 (= lt!1029813 call!193477)))

(declare-fun c!480583 () Bool)

(assert (=> b!2939609 (= c!480583 call!193481)))

(declare-fun b!2939610 () Bool)

(assert (=> b!2939610 (= e!1852737 (= (nullable!2870 lt!1029815) (nullable!2870 (regTwo!18688 r!17423))))))

(declare-fun b!2939611 () Bool)

(assert (=> b!2939611 (= e!1852730 EmptyLang!9088)))

(declare-fun b!2939612 () Bool)

(assert (=> b!2939612 (= e!1852733 e!1852738)))

(assert (=> b!2939612 (= c!480574 (is-Star!9088 (regTwo!18688 r!17423)))))

(declare-fun b!2939613 () Bool)

(assert (=> b!2939613 (= e!1852735 lt!1029816)))

(declare-fun b!2939614 () Bool)

(declare-fun c!480580 () Bool)

(assert (=> b!2939614 (= c!480580 (is-EmptyExpr!9088 (regTwo!18688 r!17423)))))

(assert (=> b!2939614 (= e!1852734 e!1852733)))

(declare-fun b!2939615 () Bool)

(assert (=> b!2939615 (= e!1852740 (Star!9088 lt!1029812))))

(declare-fun b!2939616 () Bool)

(assert (=> b!2939616 (= e!1852734 (regTwo!18688 r!17423))))

(declare-fun b!2939617 () Bool)

(declare-fun c!480582 () Bool)

(assert (=> b!2939617 (= c!480582 e!1852736)))

(declare-fun res!1213316 () Bool)

(assert (=> b!2939617 (=> res!1213316 e!1852736)))

(assert (=> b!2939617 (= res!1213316 call!193478)))

(assert (=> b!2939617 (= lt!1029812 call!193480)))

(assert (=> b!2939617 (= e!1852738 e!1852740)))

(assert (= (and d!840084 c!480573) b!2939611))

(assert (= (and d!840084 (not c!480573)) b!2939593))

(assert (= (and b!2939593 c!480577) b!2939616))

(assert (= (and b!2939593 (not c!480577)) b!2939614))

(assert (= (and b!2939614 c!480580) b!2939602))

(assert (= (and b!2939614 (not c!480580)) b!2939612))

(assert (= (and b!2939612 c!480574) b!2939617))

(assert (= (and b!2939612 (not c!480574)) b!2939604))

(assert (= (and b!2939617 (not res!1213316)) b!2939596))

(assert (= (and b!2939617 c!480582) b!2939601))

(assert (= (and b!2939617 (not c!480582)) b!2939615))

(assert (= (and b!2939604 c!480578) b!2939609))

(assert (= (and b!2939604 (not c!480578)) b!2939607))

(assert (= (and b!2939609 c!480583) b!2939597))

(assert (= (and b!2939609 (not c!480583)) b!2939608))

(assert (= (and b!2939608 c!480579) b!2939598))

(assert (= (and b!2939608 (not c!480579)) b!2939603))

(assert (= (and b!2939607 (not res!1213314)) b!2939606))

(assert (= (and b!2939607 c!480581) b!2939605))

(assert (= (and b!2939607 (not c!480581)) b!2939599))

(assert (= (and b!2939599 c!480576) b!2939594))

(assert (= (and b!2939599 (not c!480576)) b!2939600))

(assert (= (and b!2939600 c!480575) b!2939613))

(assert (= (and b!2939600 (not c!480575)) b!2939595))

(assert (= (or b!2939609 b!2939607) bm!193475))

(assert (= (or b!2939609 b!2939607) bm!193477))

(assert (= (or b!2939609 b!2939607) bm!193472))

(assert (= (or b!2939608 b!2939606) bm!193476))

(assert (= (or b!2939596 b!2939600) bm!193473))

(assert (= (or b!2939617 bm!193477) bm!193471))

(assert (= (or b!2939617 bm!193472) bm!193474))

(assert (= (and d!840084 res!1213315) b!2939610))

(declare-fun m!3324889 () Bool)

(assert (=> bm!193476 m!3324889))

(declare-fun m!3324891 () Bool)

(assert (=> bm!193473 m!3324891))

(declare-fun m!3324893 () Bool)

(assert (=> b!2939599 m!3324893))

(declare-fun m!3324895 () Bool)

(assert (=> d!840084 m!3324895))

(assert (=> d!840084 m!3324749))

(declare-fun m!3324897 () Bool)

(assert (=> bm!193474 m!3324897))

(declare-fun m!3324899 () Bool)

(assert (=> bm!193475 m!3324899))

(declare-fun m!3324901 () Bool)

(assert (=> b!2939610 m!3324901))

(assert (=> b!2939610 m!3324865))

(declare-fun m!3324903 () Bool)

(assert (=> bm!193471 m!3324903))

(assert (=> b!2939228 d!840084))

(declare-fun b!2939618 () Bool)

(declare-fun e!1852744 () Regex!9088)

(declare-fun e!1852748 () Regex!9088)

(assert (=> b!2939618 (= e!1852744 e!1852748)))

(declare-fun c!480588 () Bool)

(assert (=> b!2939618 (= c!480588 (is-ElementMatch!9088 (regOne!18688 r!17423)))))

(declare-fun b!2939619 () Bool)

(declare-fun e!1852753 () Regex!9088)

(declare-fun lt!1029817 () Regex!9088)

(assert (=> b!2939619 (= e!1852753 lt!1029817)))

(declare-fun b!2939620 () Bool)

(declare-fun e!1852749 () Regex!9088)

(declare-fun lt!1029822 () Regex!9088)

(assert (=> b!2939620 (= e!1852749 (Concat!14409 lt!1029822 lt!1029817))))

(declare-fun b!2939621 () Bool)

(declare-fun e!1852750 () Bool)

(declare-fun call!193483 () Bool)

(assert (=> b!2939621 (= e!1852750 call!193483)))

(declare-fun bm!193478 () Bool)

(declare-fun c!480585 () Bool)

(declare-fun c!480589 () Bool)

(declare-fun call!193487 () Regex!9088)

(assert (=> bm!193478 (= call!193487 (simplify!93 (ite c!480585 (reg!9417 (regOne!18688 r!17423)) (ite c!480589 (regTwo!18689 (regOne!18688 r!17423)) (regOne!18688 (regOne!18688 r!17423))))))))

(declare-fun bm!193479 () Bool)

(declare-fun call!193488 () Bool)

(declare-fun call!193485 () Bool)

(assert (=> bm!193479 (= call!193488 call!193485)))

(declare-fun b!2939622 () Bool)

(declare-fun e!1852746 () Regex!9088)

(declare-fun lt!1029819 () Regex!9088)

(assert (=> b!2939622 (= e!1852746 lt!1029819)))

(declare-fun d!840086 () Bool)

(declare-fun e!1852751 () Bool)

(assert (=> d!840086 e!1852751))

(declare-fun res!1213318 () Bool)

(assert (=> d!840086 (=> (not res!1213318) (not e!1852751))))

(declare-fun lt!1029821 () Regex!9088)

(assert (=> d!840086 (= res!1213318 (validRegex!3821 lt!1029821))))

(assert (=> d!840086 (= lt!1029821 e!1852744)))

(declare-fun c!480584 () Bool)

(assert (=> d!840086 (= c!480584 (is-EmptyLang!9088 (regOne!18688 r!17423)))))

(assert (=> d!840086 (validRegex!3821 (regOne!18688 r!17423))))

(assert (=> d!840086 (= (simplify!93 (regOne!18688 r!17423)) lt!1029821)))

(declare-fun lt!1029818 () Regex!9088)

(declare-fun bm!193480 () Bool)

(assert (=> bm!193480 (= call!193483 (isEmptyExpr!297 (ite c!480585 lt!1029818 lt!1029817)))))

(declare-fun b!2939623 () Bool)

(declare-fun e!1852755 () Regex!9088)

(declare-fun lt!1029820 () Regex!9088)

(assert (=> b!2939623 (= e!1852755 lt!1029820)))

(declare-fun b!2939624 () Bool)

(declare-fun c!480587 () Bool)

(assert (=> b!2939624 (= c!480587 (isEmptyExpr!297 lt!1029822))))

(declare-fun e!1852757 () Regex!9088)

(assert (=> b!2939624 (= e!1852757 e!1852753)))

(declare-fun bm!193481 () Bool)

(assert (=> bm!193481 (= call!193485 (isEmptyLang!214 (ite c!480585 lt!1029818 (ite c!480589 lt!1029820 lt!1029822))))))

(declare-fun b!2939625 () Bool)

(assert (=> b!2939625 (= e!1852753 e!1852749)))

(declare-fun c!480586 () Bool)

(assert (=> b!2939625 (= c!480586 call!193483)))

(declare-fun b!2939626 () Bool)

(declare-fun e!1852754 () Regex!9088)

(assert (=> b!2939626 (= e!1852754 EmptyExpr!9088)))

(declare-fun bm!193482 () Bool)

(declare-fun call!193489 () Regex!9088)

(assert (=> bm!193482 (= call!193489 (simplify!93 (ite c!480589 (regOne!18689 (regOne!18688 r!17423)) (regTwo!18688 (regOne!18688 r!17423)))))))

(declare-fun b!2939627 () Bool)

(declare-fun e!1852747 () Regex!9088)

(assert (=> b!2939627 (= e!1852747 EmptyExpr!9088)))

(declare-fun b!2939628 () Bool)

(assert (=> b!2939628 (= e!1852755 (Union!9088 lt!1029820 lt!1029819))))

(declare-fun b!2939629 () Bool)

(assert (=> b!2939629 (= c!480589 (is-Union!9088 (regOne!18688 r!17423)))))

(declare-fun e!1852752 () Regex!9088)

(declare-fun e!1852756 () Regex!9088)

(assert (=> b!2939629 (= e!1852752 e!1852756)))

(declare-fun bm!193483 () Bool)

(declare-fun call!193486 () Bool)

(assert (=> bm!193483 (= call!193486 (isEmptyLang!214 (ite c!480589 lt!1029819 lt!1029817)))))

(declare-fun b!2939630 () Bool)

(assert (=> b!2939630 (= e!1852757 EmptyLang!9088)))

(declare-fun b!2939631 () Bool)

(declare-fun e!1852745 () Bool)

(assert (=> b!2939631 (= e!1852745 call!193486)))

(declare-fun b!2939632 () Bool)

(assert (=> b!2939632 (= e!1852756 e!1852757)))

(declare-fun call!193484 () Regex!9088)

(assert (=> b!2939632 (= lt!1029822 call!193484)))

(assert (=> b!2939632 (= lt!1029817 call!193489)))

(declare-fun res!1213317 () Bool)

(assert (=> b!2939632 (= res!1213317 call!193488)))

(assert (=> b!2939632 (=> res!1213317 e!1852745)))

(declare-fun c!480592 () Bool)

(assert (=> b!2939632 (= c!480592 e!1852745)))

(declare-fun bm!193484 () Bool)

(assert (=> bm!193484 (= call!193484 call!193487)))

(declare-fun b!2939633 () Bool)

(declare-fun c!480590 () Bool)

(assert (=> b!2939633 (= c!480590 call!193486)))

(assert (=> b!2939633 (= e!1852746 e!1852755)))

(declare-fun b!2939634 () Bool)

(assert (=> b!2939634 (= e!1852756 e!1852746)))

(assert (=> b!2939634 (= lt!1029820 call!193489)))

(assert (=> b!2939634 (= lt!1029819 call!193484)))

(declare-fun c!480594 () Bool)

(assert (=> b!2939634 (= c!480594 call!193488)))

(declare-fun b!2939635 () Bool)

(assert (=> b!2939635 (= e!1852751 (= (nullable!2870 lt!1029821) (nullable!2870 (regOne!18688 r!17423))))))

(declare-fun b!2939636 () Bool)

(assert (=> b!2939636 (= e!1852744 EmptyLang!9088)))

(declare-fun b!2939637 () Bool)

(assert (=> b!2939637 (= e!1852747 e!1852752)))

(assert (=> b!2939637 (= c!480585 (is-Star!9088 (regOne!18688 r!17423)))))

(declare-fun b!2939638 () Bool)

(assert (=> b!2939638 (= e!1852749 lt!1029822)))

(declare-fun b!2939639 () Bool)

(declare-fun c!480591 () Bool)

(assert (=> b!2939639 (= c!480591 (is-EmptyExpr!9088 (regOne!18688 r!17423)))))

(assert (=> b!2939639 (= e!1852748 e!1852747)))

(declare-fun b!2939640 () Bool)

(assert (=> b!2939640 (= e!1852754 (Star!9088 lt!1029818))))

(declare-fun b!2939641 () Bool)

(assert (=> b!2939641 (= e!1852748 (regOne!18688 r!17423))))

(declare-fun b!2939642 () Bool)

(declare-fun c!480593 () Bool)

(assert (=> b!2939642 (= c!480593 e!1852750)))

(declare-fun res!1213319 () Bool)

(assert (=> b!2939642 (=> res!1213319 e!1852750)))

(assert (=> b!2939642 (= res!1213319 call!193485)))

(assert (=> b!2939642 (= lt!1029818 call!193487)))

(assert (=> b!2939642 (= e!1852752 e!1852754)))

(assert (= (and d!840086 c!480584) b!2939636))

(assert (= (and d!840086 (not c!480584)) b!2939618))

(assert (= (and b!2939618 c!480588) b!2939641))

(assert (= (and b!2939618 (not c!480588)) b!2939639))

(assert (= (and b!2939639 c!480591) b!2939627))

(assert (= (and b!2939639 (not c!480591)) b!2939637))

(assert (= (and b!2939637 c!480585) b!2939642))

(assert (= (and b!2939637 (not c!480585)) b!2939629))

(assert (= (and b!2939642 (not res!1213319)) b!2939621))

(assert (= (and b!2939642 c!480593) b!2939626))

(assert (= (and b!2939642 (not c!480593)) b!2939640))

(assert (= (and b!2939629 c!480589) b!2939634))

(assert (= (and b!2939629 (not c!480589)) b!2939632))

(assert (= (and b!2939634 c!480594) b!2939622))

(assert (= (and b!2939634 (not c!480594)) b!2939633))

(assert (= (and b!2939633 c!480590) b!2939623))

(assert (= (and b!2939633 (not c!480590)) b!2939628))

(assert (= (and b!2939632 (not res!1213317)) b!2939631))

(assert (= (and b!2939632 c!480592) b!2939630))

(assert (= (and b!2939632 (not c!480592)) b!2939624))

(assert (= (and b!2939624 c!480587) b!2939619))

(assert (= (and b!2939624 (not c!480587)) b!2939625))

(assert (= (and b!2939625 c!480586) b!2939638))

(assert (= (and b!2939625 (not c!480586)) b!2939620))

(assert (= (or b!2939634 b!2939632) bm!193482))

(assert (= (or b!2939634 b!2939632) bm!193484))

(assert (= (or b!2939634 b!2939632) bm!193479))

(assert (= (or b!2939633 b!2939631) bm!193483))

(assert (= (or b!2939621 b!2939625) bm!193480))

(assert (= (or b!2939642 bm!193484) bm!193478))

(assert (= (or b!2939642 bm!193479) bm!193481))

(assert (= (and d!840086 res!1213318) b!2939635))

(declare-fun m!3324905 () Bool)

(assert (=> bm!193483 m!3324905))

(declare-fun m!3324907 () Bool)

(assert (=> bm!193480 m!3324907))

(declare-fun m!3324909 () Bool)

(assert (=> b!2939624 m!3324909))

(declare-fun m!3324911 () Bool)

(assert (=> d!840086 m!3324911))

(declare-fun m!3324913 () Bool)

(assert (=> d!840086 m!3324913))

(declare-fun m!3324915 () Bool)

(assert (=> bm!193481 m!3324915))

(declare-fun m!3324917 () Bool)

(assert (=> bm!193482 m!3324917))

(declare-fun m!3324919 () Bool)

(assert (=> b!2939635 m!3324919))

(declare-fun m!3324921 () Bool)

(assert (=> b!2939635 m!3324921))

(declare-fun m!3324923 () Bool)

(assert (=> bm!193478 m!3324923))

(assert (=> b!2939228 d!840086))

(declare-fun b!2939654 () Bool)

(declare-fun e!1852760 () Bool)

(declare-fun tp!940913 () Bool)

(declare-fun tp!940916 () Bool)

(assert (=> b!2939654 (= e!1852760 (and tp!940913 tp!940916))))

(declare-fun b!2939655 () Bool)

(declare-fun tp!940914 () Bool)

(assert (=> b!2939655 (= e!1852760 tp!940914)))

(declare-fun b!2939656 () Bool)

(declare-fun tp!940912 () Bool)

(declare-fun tp!940915 () Bool)

(assert (=> b!2939656 (= e!1852760 (and tp!940912 tp!940915))))

(declare-fun b!2939653 () Bool)

(assert (=> b!2939653 (= e!1852760 tp_is_empty!15739)))

(assert (=> b!2939234 (= tp!940882 e!1852760)))

(assert (= (and b!2939234 (is-ElementMatch!9088 (regOne!18688 r!17423))) b!2939653))

(assert (= (and b!2939234 (is-Concat!14409 (regOne!18688 r!17423))) b!2939654))

(assert (= (and b!2939234 (is-Star!9088 (regOne!18688 r!17423))) b!2939655))

(assert (= (and b!2939234 (is-Union!9088 (regOne!18688 r!17423))) b!2939656))

(declare-fun b!2939658 () Bool)

(declare-fun e!1852761 () Bool)

(declare-fun tp!940918 () Bool)

(declare-fun tp!940921 () Bool)

(assert (=> b!2939658 (= e!1852761 (and tp!940918 tp!940921))))

(declare-fun b!2939659 () Bool)

(declare-fun tp!940919 () Bool)

(assert (=> b!2939659 (= e!1852761 tp!940919)))

(declare-fun b!2939660 () Bool)

(declare-fun tp!940917 () Bool)

(declare-fun tp!940920 () Bool)

(assert (=> b!2939660 (= e!1852761 (and tp!940917 tp!940920))))

(declare-fun b!2939657 () Bool)

(assert (=> b!2939657 (= e!1852761 tp_is_empty!15739)))

(assert (=> b!2939234 (= tp!940880 e!1852761)))

(assert (= (and b!2939234 (is-ElementMatch!9088 (regTwo!18688 r!17423))) b!2939657))

(assert (= (and b!2939234 (is-Concat!14409 (regTwo!18688 r!17423))) b!2939658))

(assert (= (and b!2939234 (is-Star!9088 (regTwo!18688 r!17423))) b!2939659))

(assert (= (and b!2939234 (is-Union!9088 (regTwo!18688 r!17423))) b!2939660))

(declare-fun b!2939662 () Bool)

(declare-fun e!1852762 () Bool)

(declare-fun tp!940923 () Bool)

(declare-fun tp!940926 () Bool)

(assert (=> b!2939662 (= e!1852762 (and tp!940923 tp!940926))))

(declare-fun b!2939663 () Bool)

(declare-fun tp!940924 () Bool)

(assert (=> b!2939663 (= e!1852762 tp!940924)))

(declare-fun b!2939664 () Bool)

(declare-fun tp!940922 () Bool)

(declare-fun tp!940925 () Bool)

(assert (=> b!2939664 (= e!1852762 (and tp!940922 tp!940925))))

(declare-fun b!2939661 () Bool)

(assert (=> b!2939661 (= e!1852762 tp_is_empty!15739)))

(assert (=> b!2939235 (= tp!940881 e!1852762)))

(assert (= (and b!2939235 (is-ElementMatch!9088 (regOne!18689 r!17423))) b!2939661))

(assert (= (and b!2939235 (is-Concat!14409 (regOne!18689 r!17423))) b!2939662))

(assert (= (and b!2939235 (is-Star!9088 (regOne!18689 r!17423))) b!2939663))

(assert (= (and b!2939235 (is-Union!9088 (regOne!18689 r!17423))) b!2939664))

(declare-fun b!2939666 () Bool)

(declare-fun e!1852763 () Bool)

(declare-fun tp!940928 () Bool)

(declare-fun tp!940931 () Bool)

(assert (=> b!2939666 (= e!1852763 (and tp!940928 tp!940931))))

(declare-fun b!2939667 () Bool)

(declare-fun tp!940929 () Bool)

(assert (=> b!2939667 (= e!1852763 tp!940929)))

(declare-fun b!2939668 () Bool)

(declare-fun tp!940927 () Bool)

(declare-fun tp!940930 () Bool)

(assert (=> b!2939668 (= e!1852763 (and tp!940927 tp!940930))))

(declare-fun b!2939665 () Bool)

(assert (=> b!2939665 (= e!1852763 tp_is_empty!15739)))

(assert (=> b!2939235 (= tp!940879 e!1852763)))

(assert (= (and b!2939235 (is-ElementMatch!9088 (regTwo!18689 r!17423))) b!2939665))

(assert (= (and b!2939235 (is-Concat!14409 (regTwo!18689 r!17423))) b!2939666))

(assert (= (and b!2939235 (is-Star!9088 (regTwo!18689 r!17423))) b!2939667))

(assert (= (and b!2939235 (is-Union!9088 (regTwo!18689 r!17423))) b!2939668))

(declare-fun b!2939673 () Bool)

(declare-fun e!1852766 () Bool)

(declare-fun tp!940934 () Bool)

(assert (=> b!2939673 (= e!1852766 (and tp_is_empty!15739 tp!940934))))

(assert (=> b!2939230 (= tp!940878 e!1852766)))

(assert (= (and b!2939230 (is-Cons!34829 (t!234018 s!11993))) b!2939673))

(declare-fun b!2939675 () Bool)

(declare-fun e!1852767 () Bool)

(declare-fun tp!940936 () Bool)

(declare-fun tp!940939 () Bool)

(assert (=> b!2939675 (= e!1852767 (and tp!940936 tp!940939))))

(declare-fun b!2939676 () Bool)

(declare-fun tp!940937 () Bool)

(assert (=> b!2939676 (= e!1852767 tp!940937)))

(declare-fun b!2939677 () Bool)

(declare-fun tp!940935 () Bool)

(declare-fun tp!940938 () Bool)

(assert (=> b!2939677 (= e!1852767 (and tp!940935 tp!940938))))

(declare-fun b!2939674 () Bool)

(assert (=> b!2939674 (= e!1852767 tp_is_empty!15739)))

(assert (=> b!2939232 (= tp!940883 e!1852767)))

(assert (= (and b!2939232 (is-ElementMatch!9088 (reg!9417 r!17423))) b!2939674))

(assert (= (and b!2939232 (is-Concat!14409 (reg!9417 r!17423))) b!2939675))

(assert (= (and b!2939232 (is-Star!9088 (reg!9417 r!17423))) b!2939676))

(assert (= (and b!2939232 (is-Union!9088 (reg!9417 r!17423))) b!2939677))

(push 1)

(assert (not b!2939524))

(assert (not b!2939658))

(assert (not b!2939531))

(assert (not b!2939668))

(assert (not b!2939431))

(assert (not bm!193475))

(assert (not d!840072))

(assert (not d!840084))

(assert (not b!2939655))

(assert (not b!2939469))

(assert (not b!2939530))

(assert (not b!2939465))

(assert (not b!2939663))

(assert (not bm!193480))

(assert (not bm!193456))

(assert (not bm!193453))

(assert (not b!2939514))

(assert (not bm!193482))

(assert (not bm!193438))

(assert (not d!840086))

(assert (not b!2939599))

(assert (not d!840066))

(assert (not b!2939664))

(assert (not b!2939635))

(assert (not bm!193481))

(assert (not b!2939517))

(assert (not bm!193449))

(assert (not b!2939520))

(assert (not b!2939516))

(assert (not b!2939473))

(assert (not b!2939476))

(assert (not b!2939656))

(assert (not b!2939624))

(assert (not b!2939654))

(assert (not b!2939510))

(assert (not b!2939610))

(assert (not b!2939673))

(assert (not b!2939666))

(assert (not bm!193471))

(assert (not b!2939677))

(assert (not b!2939676))

(assert (not b!2939667))

(assert (not b!2939497))

(assert (not bm!193474))

(assert (not b!2939528))

(assert (not bm!193452))

(assert (not b!2939675))

(assert (not d!840074))

(assert (not bm!193473))

(assert (not d!840064))

(assert (not bm!193451))

(assert (not b!2939467))

(assert (not b!2939662))

(assert (not b!2939522))

(assert (not b!2939660))

(assert (not bm!193478))

(assert (not b!2939659))

(assert (not bm!193442))

(assert (not b!2939508))

(assert (not bm!193454))

(assert (not d!840070))

(assert (not bm!193476))

(assert (not b!2939506))

(assert (not bm!193483))

(assert (not b!2939534))

(assert (not bm!193439))

(assert tp_is_empty!15739)

(assert (not b!2939475))

(assert (not b!2939427))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

