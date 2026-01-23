; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!248188 () Bool)

(assert start!248188)

(declare-fun b!2566567 () Bool)

(declare-fun e!1620326 () Bool)

(declare-fun tp!816958 () Bool)

(declare-fun tp!816957 () Bool)

(assert (=> b!2566567 (= e!1620326 (and tp!816958 tp!816957))))

(declare-fun b!2566568 () Bool)

(declare-fun res!1079959 () Bool)

(declare-fun e!1620328 () Bool)

(assert (=> b!2566568 (=> (not res!1079959) (not e!1620328))))

(declare-datatypes ((C!15412 0))(
  ( (C!15413 (val!9358 Int)) )
))
(declare-datatypes ((List!29692 0))(
  ( (Nil!29592) (Cons!29592 (h!35012 C!15412) (t!211391 List!29692)) )
))
(declare-fun tl!4068 () List!29692)

(declare-datatypes ((Regex!7627 0))(
  ( (ElementMatch!7627 (c!412789 C!15412)) (Concat!12323 (regOne!15766 Regex!7627) (regTwo!15766 Regex!7627)) (EmptyExpr!7627) (Star!7627 (reg!7956 Regex!7627)) (EmptyLang!7627) (Union!7627 (regOne!15767 Regex!7627) (regTwo!15767 Regex!7627)) )
))
(declare-fun r!27340 () Regex!7627)

(declare-fun c!14016 () C!15412)

(declare-fun nullable!2544 (Regex!7627) Bool)

(declare-fun derivative!322 (Regex!7627 List!29692) Regex!7627)

(declare-fun derivativeStep!2196 (Regex!7627 C!15412) Regex!7627)

(assert (=> b!2566568 (= res!1079959 (nullable!2544 (derivative!322 (derivativeStep!2196 r!27340 c!14016) tl!4068)))))

(declare-fun b!2566569 () Bool)

(declare-fun tp!816956 () Bool)

(assert (=> b!2566569 (= e!1620326 tp!816956)))

(declare-fun b!2566570 () Bool)

(declare-fun e!1620327 () Bool)

(assert (=> b!2566570 (= e!1620328 (not e!1620327))))

(declare-fun res!1079956 () Bool)

(assert (=> b!2566570 (=> (not res!1079956) (not e!1620327))))

(declare-fun lt!905264 () Regex!7627)

(declare-fun validRegex!3253 (Regex!7627) Bool)

(assert (=> b!2566570 (= res!1079956 (validRegex!3253 lt!905264))))

(declare-fun lt!905266 () Regex!7627)

(declare-fun matchR!3570 (Regex!7627 List!29692) Bool)

(assert (=> b!2566570 (= (matchR!3570 lt!905266 tl!4068) (matchR!3570 (derivative!322 lt!905266 tl!4068) Nil!29592))))

(declare-datatypes ((Unit!43435 0))(
  ( (Unit!43436) )
))
(declare-fun lt!905265 () Unit!43435)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!216 (Regex!7627 List!29692) Unit!43435)

(assert (=> b!2566570 (= lt!905265 (lemmaMatchRIsSameAsWholeDerivativeAndNil!216 lt!905266 tl!4068))))

(assert (=> b!2566570 (= lt!905266 (Union!7627 lt!905264 EmptyLang!7627))))

(assert (=> b!2566570 (= lt!905264 (Concat!12323 (derivativeStep!2196 (regOne!15766 r!27340) c!14016) (regTwo!15766 r!27340)))))

(declare-fun b!2566571 () Bool)

(declare-fun e!1620325 () Bool)

(declare-fun tp_is_empty!13109 () Bool)

(declare-fun tp!816953 () Bool)

(assert (=> b!2566571 (= e!1620325 (and tp_is_empty!13109 tp!816953))))

(declare-fun b!2566572 () Bool)

(assert (=> b!2566572 (= e!1620326 tp_is_empty!13109)))

(declare-fun b!2566573 () Bool)

(declare-fun res!1079960 () Bool)

(assert (=> b!2566573 (=> (not res!1079960) (not e!1620328))))

(get-info :version)

(assert (=> b!2566573 (= res!1079960 (and (not ((_ is EmptyExpr!7627) r!27340)) (not ((_ is EmptyLang!7627) r!27340)) (not ((_ is ElementMatch!7627) r!27340)) (not ((_ is Union!7627) r!27340)) (not ((_ is Star!7627) r!27340))))))

(declare-fun res!1079957 () Bool)

(assert (=> start!248188 (=> (not res!1079957) (not e!1620328))))

(assert (=> start!248188 (= res!1079957 (validRegex!3253 r!27340))))

(assert (=> start!248188 e!1620328))

(assert (=> start!248188 e!1620326))

(assert (=> start!248188 tp_is_empty!13109))

(assert (=> start!248188 e!1620325))

(declare-fun b!2566574 () Bool)

(declare-fun tp!816955 () Bool)

(declare-fun tp!816954 () Bool)

(assert (=> b!2566574 (= e!1620326 (and tp!816955 tp!816954))))

(declare-fun b!2566575 () Bool)

(declare-fun res!1079958 () Bool)

(assert (=> b!2566575 (=> (not res!1079958) (not e!1620328))))

(assert (=> b!2566575 (= res!1079958 (not (nullable!2544 (regOne!15766 r!27340))))))

(declare-fun b!2566576 () Bool)

(assert (=> b!2566576 (= e!1620327 true)))

(assert (= (and start!248188 res!1079957) b!2566568))

(assert (= (and b!2566568 res!1079959) b!2566573))

(assert (= (and b!2566573 res!1079960) b!2566575))

(assert (= (and b!2566575 res!1079958) b!2566570))

(assert (= (and b!2566570 res!1079956) b!2566576))

(assert (= (and start!248188 ((_ is ElementMatch!7627) r!27340)) b!2566572))

(assert (= (and start!248188 ((_ is Concat!12323) r!27340)) b!2566567))

(assert (= (and start!248188 ((_ is Star!7627) r!27340)) b!2566569))

(assert (= (and start!248188 ((_ is Union!7627) r!27340)) b!2566574))

(assert (= (and start!248188 ((_ is Cons!29592) tl!4068)) b!2566571))

(declare-fun m!2904519 () Bool)

(assert (=> b!2566568 m!2904519))

(assert (=> b!2566568 m!2904519))

(declare-fun m!2904521 () Bool)

(assert (=> b!2566568 m!2904521))

(assert (=> b!2566568 m!2904521))

(declare-fun m!2904523 () Bool)

(assert (=> b!2566568 m!2904523))

(declare-fun m!2904525 () Bool)

(assert (=> b!2566570 m!2904525))

(declare-fun m!2904527 () Bool)

(assert (=> b!2566570 m!2904527))

(declare-fun m!2904529 () Bool)

(assert (=> b!2566570 m!2904529))

(declare-fun m!2904531 () Bool)

(assert (=> b!2566570 m!2904531))

(declare-fun m!2904533 () Bool)

(assert (=> b!2566570 m!2904533))

(assert (=> b!2566570 m!2904531))

(declare-fun m!2904535 () Bool)

(assert (=> b!2566570 m!2904535))

(declare-fun m!2904537 () Bool)

(assert (=> start!248188 m!2904537))

(declare-fun m!2904539 () Bool)

(assert (=> b!2566575 m!2904539))

(check-sat (not start!248188) (not b!2566569) tp_is_empty!13109 (not b!2566571) (not b!2566567) (not b!2566570) (not b!2566568) (not b!2566575) (not b!2566574))
(check-sat)
(get-model)

(declare-fun d!726631 () Bool)

(declare-fun nullableFct!768 (Regex!7627) Bool)

(assert (=> d!726631 (= (nullable!2544 (derivative!322 (derivativeStep!2196 r!27340 c!14016) tl!4068)) (nullableFct!768 (derivative!322 (derivativeStep!2196 r!27340 c!14016) tl!4068)))))

(declare-fun bs!469941 () Bool)

(assert (= bs!469941 d!726631))

(assert (=> bs!469941 m!2904521))

(declare-fun m!2904555 () Bool)

(assert (=> bs!469941 m!2904555))

(assert (=> b!2566568 d!726631))

(declare-fun d!726639 () Bool)

(declare-fun lt!905275 () Regex!7627)

(assert (=> d!726639 (validRegex!3253 lt!905275)))

(declare-fun e!1620346 () Regex!7627)

(assert (=> d!726639 (= lt!905275 e!1620346)))

(declare-fun c!412807 () Bool)

(assert (=> d!726639 (= c!412807 ((_ is Cons!29592) tl!4068))))

(assert (=> d!726639 (validRegex!3253 (derivativeStep!2196 r!27340 c!14016))))

(assert (=> d!726639 (= (derivative!322 (derivativeStep!2196 r!27340 c!14016) tl!4068) lt!905275)))

(declare-fun b!2566611 () Bool)

(assert (=> b!2566611 (= e!1620346 (derivative!322 (derivativeStep!2196 (derivativeStep!2196 r!27340 c!14016) (h!35012 tl!4068)) (t!211391 tl!4068)))))

(declare-fun b!2566612 () Bool)

(assert (=> b!2566612 (= e!1620346 (derivativeStep!2196 r!27340 c!14016))))

(assert (= (and d!726639 c!412807) b!2566611))

(assert (= (and d!726639 (not c!412807)) b!2566612))

(declare-fun m!2904557 () Bool)

(assert (=> d!726639 m!2904557))

(assert (=> d!726639 m!2904519))

(declare-fun m!2904559 () Bool)

(assert (=> d!726639 m!2904559))

(assert (=> b!2566611 m!2904519))

(declare-fun m!2904561 () Bool)

(assert (=> b!2566611 m!2904561))

(assert (=> b!2566611 m!2904561))

(declare-fun m!2904563 () Bool)

(assert (=> b!2566611 m!2904563))

(assert (=> b!2566568 d!726639))

(declare-fun e!1620387 () Regex!7627)

(declare-fun call!165235 () Regex!7627)

(declare-fun b!2566689 () Bool)

(declare-fun call!165234 () Regex!7627)

(assert (=> b!2566689 (= e!1620387 (Union!7627 (Concat!12323 call!165235 (regTwo!15766 r!27340)) call!165234))))

(declare-fun d!726641 () Bool)

(declare-fun lt!905282 () Regex!7627)

(assert (=> d!726641 (validRegex!3253 lt!905282)))

(declare-fun e!1620385 () Regex!7627)

(assert (=> d!726641 (= lt!905282 e!1620385)))

(declare-fun c!412833 () Bool)

(assert (=> d!726641 (= c!412833 (or ((_ is EmptyExpr!7627) r!27340) ((_ is EmptyLang!7627) r!27340)))))

(assert (=> d!726641 (validRegex!3253 r!27340)))

(assert (=> d!726641 (= (derivativeStep!2196 r!27340 c!14016) lt!905282)))

(declare-fun bm!165229 () Bool)

(declare-fun call!165236 () Regex!7627)

(declare-fun call!165237 () Regex!7627)

(assert (=> bm!165229 (= call!165236 call!165237)))

(declare-fun b!2566690 () Bool)

(assert (=> b!2566690 (= e!1620385 EmptyLang!7627)))

(declare-fun b!2566691 () Bool)

(declare-fun c!412830 () Bool)

(assert (=> b!2566691 (= c!412830 (nullable!2544 (regOne!15766 r!27340)))))

(declare-fun e!1620389 () Regex!7627)

(assert (=> b!2566691 (= e!1620389 e!1620387)))

(declare-fun b!2566692 () Bool)

(declare-fun e!1620388 () Regex!7627)

(assert (=> b!2566692 (= e!1620388 (ite (= c!14016 (c!412789 r!27340)) EmptyExpr!7627 EmptyLang!7627))))

(declare-fun b!2566693 () Bool)

(assert (=> b!2566693 (= e!1620387 (Union!7627 (Concat!12323 call!165235 (regTwo!15766 r!27340)) EmptyLang!7627))))

(declare-fun bm!165230 () Bool)

(declare-fun c!412834 () Bool)

(assert (=> bm!165230 (= call!165234 (derivativeStep!2196 (ite c!412834 (regTwo!15767 r!27340) (regTwo!15766 r!27340)) c!14016))))

(declare-fun bm!165231 () Bool)

(assert (=> bm!165231 (= call!165235 call!165236)))

(declare-fun b!2566694 () Bool)

(assert (=> b!2566694 (= e!1620389 (Concat!12323 call!165236 r!27340))))

(declare-fun bm!165232 () Bool)

(declare-fun c!412832 () Bool)

(assert (=> bm!165232 (= call!165237 (derivativeStep!2196 (ite c!412834 (regOne!15767 r!27340) (ite c!412832 (reg!7956 r!27340) (regOne!15766 r!27340))) c!14016))))

(declare-fun b!2566695 () Bool)

(declare-fun e!1620386 () Regex!7627)

(assert (=> b!2566695 (= e!1620386 e!1620389)))

(assert (=> b!2566695 (= c!412832 ((_ is Star!7627) r!27340))))

(declare-fun b!2566696 () Bool)

(assert (=> b!2566696 (= e!1620385 e!1620388)))

(declare-fun c!412831 () Bool)

(assert (=> b!2566696 (= c!412831 ((_ is ElementMatch!7627) r!27340))))

(declare-fun b!2566697 () Bool)

(assert (=> b!2566697 (= c!412834 ((_ is Union!7627) r!27340))))

(assert (=> b!2566697 (= e!1620388 e!1620386)))

(declare-fun b!2566698 () Bool)

(assert (=> b!2566698 (= e!1620386 (Union!7627 call!165237 call!165234))))

(assert (= (and d!726641 c!412833) b!2566690))

(assert (= (and d!726641 (not c!412833)) b!2566696))

(assert (= (and b!2566696 c!412831) b!2566692))

(assert (= (and b!2566696 (not c!412831)) b!2566697))

(assert (= (and b!2566697 c!412834) b!2566698))

(assert (= (and b!2566697 (not c!412834)) b!2566695))

(assert (= (and b!2566695 c!412832) b!2566694))

(assert (= (and b!2566695 (not c!412832)) b!2566691))

(assert (= (and b!2566691 c!412830) b!2566689))

(assert (= (and b!2566691 (not c!412830)) b!2566693))

(assert (= (or b!2566689 b!2566693) bm!165231))

(assert (= (or b!2566694 bm!165231) bm!165229))

(assert (= (or b!2566698 b!2566689) bm!165230))

(assert (= (or b!2566698 bm!165229) bm!165232))

(declare-fun m!2904595 () Bool)

(assert (=> d!726641 m!2904595))

(assert (=> d!726641 m!2904537))

(assert (=> b!2566691 m!2904539))

(declare-fun m!2904597 () Bool)

(assert (=> bm!165230 m!2904597))

(declare-fun m!2904599 () Bool)

(assert (=> bm!165232 m!2904599))

(assert (=> b!2566568 d!726641))

(declare-fun d!726647 () Bool)

(assert (=> d!726647 (= (nullable!2544 (regOne!15766 r!27340)) (nullableFct!768 (regOne!15766 r!27340)))))

(declare-fun bs!469942 () Bool)

(assert (= bs!469942 d!726647))

(declare-fun m!2904601 () Bool)

(assert (=> bs!469942 m!2904601))

(assert (=> b!2566575 d!726647))

(declare-fun b!2566748 () Bool)

(declare-fun e!1620429 () Bool)

(declare-fun e!1620432 () Bool)

(assert (=> b!2566748 (= e!1620429 e!1620432)))

(declare-fun res!1080021 () Bool)

(assert (=> b!2566748 (=> (not res!1080021) (not e!1620432))))

(declare-fun call!165255 () Bool)

(assert (=> b!2566748 (= res!1080021 call!165255)))

(declare-fun c!412847 () Bool)

(declare-fun call!165254 () Bool)

(declare-fun bm!165248 () Bool)

(declare-fun c!412848 () Bool)

(assert (=> bm!165248 (= call!165254 (validRegex!3253 (ite c!412848 (reg!7956 r!27340) (ite c!412847 (regOne!15767 r!27340) (regTwo!15766 r!27340)))))))

(declare-fun b!2566749 () Bool)

(declare-fun e!1620428 () Bool)

(assert (=> b!2566749 (= e!1620428 call!165255)))

(declare-fun d!726649 () Bool)

(declare-fun res!1080022 () Bool)

(declare-fun e!1620433 () Bool)

(assert (=> d!726649 (=> res!1080022 e!1620433)))

(assert (=> d!726649 (= res!1080022 ((_ is ElementMatch!7627) r!27340))))

(assert (=> d!726649 (= (validRegex!3253 r!27340) e!1620433)))

(declare-fun b!2566750 () Bool)

(declare-fun e!1620427 () Bool)

(declare-fun e!1620431 () Bool)

(assert (=> b!2566750 (= e!1620427 e!1620431)))

(declare-fun res!1080018 () Bool)

(assert (=> b!2566750 (= res!1080018 (not (nullable!2544 (reg!7956 r!27340))))))

(assert (=> b!2566750 (=> (not res!1080018) (not e!1620431))))

(declare-fun b!2566751 () Bool)

(assert (=> b!2566751 (= e!1620431 call!165254)))

(declare-fun bm!165249 () Bool)

(declare-fun call!165253 () Bool)

(assert (=> bm!165249 (= call!165253 call!165254)))

(declare-fun b!2566752 () Bool)

(assert (=> b!2566752 (= e!1620432 call!165253)))

(declare-fun b!2566753 () Bool)

(declare-fun e!1620430 () Bool)

(assert (=> b!2566753 (= e!1620427 e!1620430)))

(assert (=> b!2566753 (= c!412847 ((_ is Union!7627) r!27340))))

(declare-fun b!2566754 () Bool)

(declare-fun res!1080019 () Bool)

(assert (=> b!2566754 (=> res!1080019 e!1620429)))

(assert (=> b!2566754 (= res!1080019 (not ((_ is Concat!12323) r!27340)))))

(assert (=> b!2566754 (= e!1620430 e!1620429)))

(declare-fun b!2566755 () Bool)

(assert (=> b!2566755 (= e!1620433 e!1620427)))

(assert (=> b!2566755 (= c!412848 ((_ is Star!7627) r!27340))))

(declare-fun bm!165250 () Bool)

(assert (=> bm!165250 (= call!165255 (validRegex!3253 (ite c!412847 (regTwo!15767 r!27340) (regOne!15766 r!27340))))))

(declare-fun b!2566756 () Bool)

(declare-fun res!1080020 () Bool)

(assert (=> b!2566756 (=> (not res!1080020) (not e!1620428))))

(assert (=> b!2566756 (= res!1080020 call!165253)))

(assert (=> b!2566756 (= e!1620430 e!1620428)))

(assert (= (and d!726649 (not res!1080022)) b!2566755))

(assert (= (and b!2566755 c!412848) b!2566750))

(assert (= (and b!2566755 (not c!412848)) b!2566753))

(assert (= (and b!2566750 res!1080018) b!2566751))

(assert (= (and b!2566753 c!412847) b!2566756))

(assert (= (and b!2566753 (not c!412847)) b!2566754))

(assert (= (and b!2566756 res!1080020) b!2566749))

(assert (= (and b!2566754 (not res!1080019)) b!2566748))

(assert (= (and b!2566748 res!1080021) b!2566752))

(assert (= (or b!2566756 b!2566752) bm!165249))

(assert (= (or b!2566749 b!2566748) bm!165250))

(assert (= (or b!2566751 bm!165249) bm!165248))

(declare-fun m!2904609 () Bool)

(assert (=> bm!165248 m!2904609))

(declare-fun m!2904611 () Bool)

(assert (=> b!2566750 m!2904611))

(declare-fun m!2904613 () Bool)

(assert (=> bm!165250 m!2904613))

(assert (=> start!248188 d!726649))

(declare-fun call!165256 () Regex!7627)

(declare-fun call!165257 () Regex!7627)

(declare-fun e!1620436 () Regex!7627)

(declare-fun b!2566757 () Bool)

(assert (=> b!2566757 (= e!1620436 (Union!7627 (Concat!12323 call!165257 (regTwo!15766 (regOne!15766 r!27340))) call!165256))))

(declare-fun d!726653 () Bool)

(declare-fun lt!905285 () Regex!7627)

(assert (=> d!726653 (validRegex!3253 lt!905285)))

(declare-fun e!1620434 () Regex!7627)

(assert (=> d!726653 (= lt!905285 e!1620434)))

(declare-fun c!412852 () Bool)

(assert (=> d!726653 (= c!412852 (or ((_ is EmptyExpr!7627) (regOne!15766 r!27340)) ((_ is EmptyLang!7627) (regOne!15766 r!27340))))))

(assert (=> d!726653 (validRegex!3253 (regOne!15766 r!27340))))

(assert (=> d!726653 (= (derivativeStep!2196 (regOne!15766 r!27340) c!14016) lt!905285)))

(declare-fun bm!165251 () Bool)

(declare-fun call!165258 () Regex!7627)

(declare-fun call!165259 () Regex!7627)

(assert (=> bm!165251 (= call!165258 call!165259)))

(declare-fun b!2566758 () Bool)

(assert (=> b!2566758 (= e!1620434 EmptyLang!7627)))

(declare-fun b!2566759 () Bool)

(declare-fun c!412849 () Bool)

(assert (=> b!2566759 (= c!412849 (nullable!2544 (regOne!15766 (regOne!15766 r!27340))))))

(declare-fun e!1620438 () Regex!7627)

(assert (=> b!2566759 (= e!1620438 e!1620436)))

(declare-fun b!2566760 () Bool)

(declare-fun e!1620437 () Regex!7627)

(assert (=> b!2566760 (= e!1620437 (ite (= c!14016 (c!412789 (regOne!15766 r!27340))) EmptyExpr!7627 EmptyLang!7627))))

(declare-fun b!2566762 () Bool)

(assert (=> b!2566762 (= e!1620436 (Union!7627 (Concat!12323 call!165257 (regTwo!15766 (regOne!15766 r!27340))) EmptyLang!7627))))

(declare-fun bm!165252 () Bool)

(declare-fun c!412853 () Bool)

(assert (=> bm!165252 (= call!165256 (derivativeStep!2196 (ite c!412853 (regTwo!15767 (regOne!15766 r!27340)) (regTwo!15766 (regOne!15766 r!27340))) c!14016))))

(declare-fun bm!165253 () Bool)

(assert (=> bm!165253 (= call!165257 call!165258)))

(declare-fun b!2566764 () Bool)

(assert (=> b!2566764 (= e!1620438 (Concat!12323 call!165258 (regOne!15766 r!27340)))))

(declare-fun c!412851 () Bool)

(declare-fun bm!165254 () Bool)

(assert (=> bm!165254 (= call!165259 (derivativeStep!2196 (ite c!412853 (regOne!15767 (regOne!15766 r!27340)) (ite c!412851 (reg!7956 (regOne!15766 r!27340)) (regOne!15766 (regOne!15766 r!27340)))) c!14016))))

(declare-fun b!2566765 () Bool)

(declare-fun e!1620435 () Regex!7627)

(assert (=> b!2566765 (= e!1620435 e!1620438)))

(assert (=> b!2566765 (= c!412851 ((_ is Star!7627) (regOne!15766 r!27340)))))

(declare-fun b!2566766 () Bool)

(assert (=> b!2566766 (= e!1620434 e!1620437)))

(declare-fun c!412850 () Bool)

(assert (=> b!2566766 (= c!412850 ((_ is ElementMatch!7627) (regOne!15766 r!27340)))))

(declare-fun b!2566767 () Bool)

(assert (=> b!2566767 (= c!412853 ((_ is Union!7627) (regOne!15766 r!27340)))))

(assert (=> b!2566767 (= e!1620437 e!1620435)))

(declare-fun b!2566768 () Bool)

(assert (=> b!2566768 (= e!1620435 (Union!7627 call!165259 call!165256))))

(assert (= (and d!726653 c!412852) b!2566758))

(assert (= (and d!726653 (not c!412852)) b!2566766))

(assert (= (and b!2566766 c!412850) b!2566760))

(assert (= (and b!2566766 (not c!412850)) b!2566767))

(assert (= (and b!2566767 c!412853) b!2566768))

(assert (= (and b!2566767 (not c!412853)) b!2566765))

(assert (= (and b!2566765 c!412851) b!2566764))

(assert (= (and b!2566765 (not c!412851)) b!2566759))

(assert (= (and b!2566759 c!412849) b!2566757))

(assert (= (and b!2566759 (not c!412849)) b!2566762))

(assert (= (or b!2566757 b!2566762) bm!165253))

(assert (= (or b!2566764 bm!165253) bm!165251))

(assert (= (or b!2566768 b!2566757) bm!165252))

(assert (= (or b!2566768 bm!165251) bm!165254))

(declare-fun m!2904621 () Bool)

(assert (=> d!726653 m!2904621))

(declare-fun m!2904623 () Bool)

(assert (=> d!726653 m!2904623))

(declare-fun m!2904625 () Bool)

(assert (=> b!2566759 m!2904625))

(declare-fun m!2904627 () Bool)

(assert (=> bm!165252 m!2904627))

(declare-fun m!2904629 () Bool)

(assert (=> bm!165254 m!2904629))

(assert (=> b!2566570 d!726653))

(declare-fun b!2566853 () Bool)

(declare-fun res!1080048 () Bool)

(declare-fun e!1620482 () Bool)

(assert (=> b!2566853 (=> res!1080048 e!1620482)))

(declare-fun e!1620479 () Bool)

(assert (=> b!2566853 (= res!1080048 e!1620479)))

(declare-fun res!1080046 () Bool)

(assert (=> b!2566853 (=> (not res!1080046) (not e!1620479))))

(declare-fun lt!905291 () Bool)

(assert (=> b!2566853 (= res!1080046 lt!905291)))

(declare-fun b!2566854 () Bool)

(declare-fun e!1620481 () Bool)

(declare-fun e!1620477 () Bool)

(assert (=> b!2566854 (= e!1620481 e!1620477)))

(declare-fun res!1080044 () Bool)

(assert (=> b!2566854 (=> res!1080044 e!1620477)))

(declare-fun call!165269 () Bool)

(assert (=> b!2566854 (= res!1080044 call!165269)))

(declare-fun b!2566855 () Bool)

(declare-fun e!1620480 () Bool)

(declare-fun e!1620483 () Bool)

(assert (=> b!2566855 (= e!1620480 e!1620483)))

(declare-fun c!412870 () Bool)

(assert (=> b!2566855 (= c!412870 ((_ is EmptyLang!7627) (derivative!322 lt!905266 tl!4068)))))

(declare-fun b!2566856 () Bool)

(declare-fun res!1080051 () Bool)

(assert (=> b!2566856 (=> (not res!1080051) (not e!1620479))))

(declare-fun isEmpty!17048 (List!29692) Bool)

(declare-fun tail!4107 (List!29692) List!29692)

(assert (=> b!2566856 (= res!1080051 (isEmpty!17048 (tail!4107 Nil!29592)))))

(declare-fun b!2566857 () Bool)

(assert (=> b!2566857 (= e!1620480 (= lt!905291 call!165269))))

(declare-fun b!2566858 () Bool)

(declare-fun e!1620478 () Bool)

(assert (=> b!2566858 (= e!1620478 (nullable!2544 (derivative!322 lt!905266 tl!4068)))))

(declare-fun b!2566859 () Bool)

(declare-fun res!1080047 () Bool)

(assert (=> b!2566859 (=> res!1080047 e!1620477)))

(assert (=> b!2566859 (= res!1080047 (not (isEmpty!17048 (tail!4107 Nil!29592))))))

(declare-fun b!2566860 () Bool)

(declare-fun head!5832 (List!29692) C!15412)

(assert (=> b!2566860 (= e!1620478 (matchR!3570 (derivativeStep!2196 (derivative!322 lt!905266 tl!4068) (head!5832 Nil!29592)) (tail!4107 Nil!29592)))))

(declare-fun bm!165264 () Bool)

(assert (=> bm!165264 (= call!165269 (isEmpty!17048 Nil!29592))))

(declare-fun b!2566861 () Bool)

(declare-fun res!1080045 () Bool)

(assert (=> b!2566861 (=> (not res!1080045) (not e!1620479))))

(assert (=> b!2566861 (= res!1080045 (not call!165269))))

(declare-fun b!2566862 () Bool)

(assert (=> b!2566862 (= e!1620479 (= (head!5832 Nil!29592) (c!412789 (derivative!322 lt!905266 tl!4068))))))

(declare-fun b!2566863 () Bool)

(assert (=> b!2566863 (= e!1620477 (not (= (head!5832 Nil!29592) (c!412789 (derivative!322 lt!905266 tl!4068)))))))

(declare-fun b!2566864 () Bool)

(declare-fun res!1080049 () Bool)

(assert (=> b!2566864 (=> res!1080049 e!1620482)))

(assert (=> b!2566864 (= res!1080049 (not ((_ is ElementMatch!7627) (derivative!322 lt!905266 tl!4068))))))

(assert (=> b!2566864 (= e!1620483 e!1620482)))

(declare-fun d!726657 () Bool)

(assert (=> d!726657 e!1620480))

(declare-fun c!412869 () Bool)

(assert (=> d!726657 (= c!412869 ((_ is EmptyExpr!7627) (derivative!322 lt!905266 tl!4068)))))

(assert (=> d!726657 (= lt!905291 e!1620478)))

(declare-fun c!412871 () Bool)

(assert (=> d!726657 (= c!412871 (isEmpty!17048 Nil!29592))))

(assert (=> d!726657 (validRegex!3253 (derivative!322 lt!905266 tl!4068))))

(assert (=> d!726657 (= (matchR!3570 (derivative!322 lt!905266 tl!4068) Nil!29592) lt!905291)))

(declare-fun b!2566865 () Bool)

(assert (=> b!2566865 (= e!1620482 e!1620481)))

(declare-fun res!1080050 () Bool)

(assert (=> b!2566865 (=> (not res!1080050) (not e!1620481))))

(assert (=> b!2566865 (= res!1080050 (not lt!905291))))

(declare-fun b!2566866 () Bool)

(assert (=> b!2566866 (= e!1620483 (not lt!905291))))

(assert (= (and d!726657 c!412871) b!2566858))

(assert (= (and d!726657 (not c!412871)) b!2566860))

(assert (= (and d!726657 c!412869) b!2566857))

(assert (= (and d!726657 (not c!412869)) b!2566855))

(assert (= (and b!2566855 c!412870) b!2566866))

(assert (= (and b!2566855 (not c!412870)) b!2566864))

(assert (= (and b!2566864 (not res!1080049)) b!2566853))

(assert (= (and b!2566853 res!1080046) b!2566861))

(assert (= (and b!2566861 res!1080045) b!2566856))

(assert (= (and b!2566856 res!1080051) b!2566862))

(assert (= (and b!2566853 (not res!1080048)) b!2566865))

(assert (= (and b!2566865 res!1080050) b!2566854))

(assert (= (and b!2566854 (not res!1080044)) b!2566859))

(assert (= (and b!2566859 (not res!1080047)) b!2566863))

(assert (= (or b!2566857 b!2566854 b!2566861) bm!165264))

(assert (=> b!2566858 m!2904531))

(declare-fun m!2904655 () Bool)

(assert (=> b!2566858 m!2904655))

(declare-fun m!2904657 () Bool)

(assert (=> d!726657 m!2904657))

(assert (=> d!726657 m!2904531))

(declare-fun m!2904659 () Bool)

(assert (=> d!726657 m!2904659))

(declare-fun m!2904661 () Bool)

(assert (=> b!2566863 m!2904661))

(declare-fun m!2904663 () Bool)

(assert (=> b!2566856 m!2904663))

(assert (=> b!2566856 m!2904663))

(declare-fun m!2904665 () Bool)

(assert (=> b!2566856 m!2904665))

(assert (=> b!2566860 m!2904661))

(assert (=> b!2566860 m!2904531))

(assert (=> b!2566860 m!2904661))

(declare-fun m!2904667 () Bool)

(assert (=> b!2566860 m!2904667))

(assert (=> b!2566860 m!2904663))

(assert (=> b!2566860 m!2904667))

(assert (=> b!2566860 m!2904663))

(declare-fun m!2904669 () Bool)

(assert (=> b!2566860 m!2904669))

(assert (=> b!2566862 m!2904661))

(assert (=> b!2566859 m!2904663))

(assert (=> b!2566859 m!2904663))

(assert (=> b!2566859 m!2904665))

(assert (=> bm!165264 m!2904657))

(assert (=> b!2566570 d!726657))

(declare-fun b!2566867 () Bool)

(declare-fun e!1620486 () Bool)

(declare-fun e!1620489 () Bool)

(assert (=> b!2566867 (= e!1620486 e!1620489)))

(declare-fun res!1080055 () Bool)

(assert (=> b!2566867 (=> (not res!1080055) (not e!1620489))))

(declare-fun call!165272 () Bool)

(assert (=> b!2566867 (= res!1080055 call!165272)))

(declare-fun c!412873 () Bool)

(declare-fun bm!165265 () Bool)

(declare-fun call!165271 () Bool)

(declare-fun c!412872 () Bool)

(assert (=> bm!165265 (= call!165271 (validRegex!3253 (ite c!412873 (reg!7956 lt!905264) (ite c!412872 (regOne!15767 lt!905264) (regTwo!15766 lt!905264)))))))

(declare-fun b!2566868 () Bool)

(declare-fun e!1620485 () Bool)

(assert (=> b!2566868 (= e!1620485 call!165272)))

(declare-fun d!726667 () Bool)

(declare-fun res!1080056 () Bool)

(declare-fun e!1620490 () Bool)

(assert (=> d!726667 (=> res!1080056 e!1620490)))

(assert (=> d!726667 (= res!1080056 ((_ is ElementMatch!7627) lt!905264))))

(assert (=> d!726667 (= (validRegex!3253 lt!905264) e!1620490)))

(declare-fun b!2566869 () Bool)

(declare-fun e!1620484 () Bool)

(declare-fun e!1620488 () Bool)

(assert (=> b!2566869 (= e!1620484 e!1620488)))

(declare-fun res!1080052 () Bool)

(assert (=> b!2566869 (= res!1080052 (not (nullable!2544 (reg!7956 lt!905264))))))

(assert (=> b!2566869 (=> (not res!1080052) (not e!1620488))))

(declare-fun b!2566870 () Bool)

(assert (=> b!2566870 (= e!1620488 call!165271)))

(declare-fun bm!165266 () Bool)

(declare-fun call!165270 () Bool)

(assert (=> bm!165266 (= call!165270 call!165271)))

(declare-fun b!2566871 () Bool)

(assert (=> b!2566871 (= e!1620489 call!165270)))

(declare-fun b!2566872 () Bool)

(declare-fun e!1620487 () Bool)

(assert (=> b!2566872 (= e!1620484 e!1620487)))

(assert (=> b!2566872 (= c!412872 ((_ is Union!7627) lt!905264))))

(declare-fun b!2566873 () Bool)

(declare-fun res!1080053 () Bool)

(assert (=> b!2566873 (=> res!1080053 e!1620486)))

(assert (=> b!2566873 (= res!1080053 (not ((_ is Concat!12323) lt!905264)))))

(assert (=> b!2566873 (= e!1620487 e!1620486)))

(declare-fun b!2566874 () Bool)

(assert (=> b!2566874 (= e!1620490 e!1620484)))

(assert (=> b!2566874 (= c!412873 ((_ is Star!7627) lt!905264))))

(declare-fun bm!165267 () Bool)

(assert (=> bm!165267 (= call!165272 (validRegex!3253 (ite c!412872 (regTwo!15767 lt!905264) (regOne!15766 lt!905264))))))

(declare-fun b!2566875 () Bool)

(declare-fun res!1080054 () Bool)

(assert (=> b!2566875 (=> (not res!1080054) (not e!1620485))))

(assert (=> b!2566875 (= res!1080054 call!165270)))

(assert (=> b!2566875 (= e!1620487 e!1620485)))

(assert (= (and d!726667 (not res!1080056)) b!2566874))

(assert (= (and b!2566874 c!412873) b!2566869))

(assert (= (and b!2566874 (not c!412873)) b!2566872))

(assert (= (and b!2566869 res!1080052) b!2566870))

(assert (= (and b!2566872 c!412872) b!2566875))

(assert (= (and b!2566872 (not c!412872)) b!2566873))

(assert (= (and b!2566875 res!1080054) b!2566868))

(assert (= (and b!2566873 (not res!1080053)) b!2566867))

(assert (= (and b!2566867 res!1080055) b!2566871))

(assert (= (or b!2566875 b!2566871) bm!165266))

(assert (= (or b!2566868 b!2566867) bm!165267))

(assert (= (or b!2566870 bm!165266) bm!165265))

(declare-fun m!2904671 () Bool)

(assert (=> bm!165265 m!2904671))

(declare-fun m!2904673 () Bool)

(assert (=> b!2566869 m!2904673))

(declare-fun m!2904675 () Bool)

(assert (=> bm!165267 m!2904675))

(assert (=> b!2566570 d!726667))

(declare-fun d!726669 () Bool)

(assert (=> d!726669 (= (matchR!3570 lt!905266 tl!4068) (matchR!3570 (derivative!322 lt!905266 tl!4068) Nil!29592))))

(declare-fun lt!905294 () Unit!43435)

(declare-fun choose!15129 (Regex!7627 List!29692) Unit!43435)

(assert (=> d!726669 (= lt!905294 (choose!15129 lt!905266 tl!4068))))

(assert (=> d!726669 (validRegex!3253 lt!905266)))

(assert (=> d!726669 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!216 lt!905266 tl!4068) lt!905294)))

(declare-fun bs!469945 () Bool)

(assert (= bs!469945 d!726669))

(assert (=> bs!469945 m!2904531))

(assert (=> bs!469945 m!2904531))

(assert (=> bs!469945 m!2904535))

(declare-fun m!2904677 () Bool)

(assert (=> bs!469945 m!2904677))

(assert (=> bs!469945 m!2904527))

(declare-fun m!2904679 () Bool)

(assert (=> bs!469945 m!2904679))

(assert (=> b!2566570 d!726669))

(declare-fun d!726671 () Bool)

(declare-fun lt!905295 () Regex!7627)

(assert (=> d!726671 (validRegex!3253 lt!905295)))

(declare-fun e!1620491 () Regex!7627)

(assert (=> d!726671 (= lt!905295 e!1620491)))

(declare-fun c!412874 () Bool)

(assert (=> d!726671 (= c!412874 ((_ is Cons!29592) tl!4068))))

(assert (=> d!726671 (validRegex!3253 lt!905266)))

(assert (=> d!726671 (= (derivative!322 lt!905266 tl!4068) lt!905295)))

(declare-fun b!2566876 () Bool)

(assert (=> b!2566876 (= e!1620491 (derivative!322 (derivativeStep!2196 lt!905266 (h!35012 tl!4068)) (t!211391 tl!4068)))))

(declare-fun b!2566877 () Bool)

(assert (=> b!2566877 (= e!1620491 lt!905266)))

(assert (= (and d!726671 c!412874) b!2566876))

(assert (= (and d!726671 (not c!412874)) b!2566877))

(declare-fun m!2904681 () Bool)

(assert (=> d!726671 m!2904681))

(assert (=> d!726671 m!2904677))

(declare-fun m!2904683 () Bool)

(assert (=> b!2566876 m!2904683))

(assert (=> b!2566876 m!2904683))

(declare-fun m!2904685 () Bool)

(assert (=> b!2566876 m!2904685))

(assert (=> b!2566570 d!726671))

(declare-fun b!2566878 () Bool)

(declare-fun res!1080061 () Bool)

(declare-fun e!1620497 () Bool)

(assert (=> b!2566878 (=> res!1080061 e!1620497)))

(declare-fun e!1620494 () Bool)

(assert (=> b!2566878 (= res!1080061 e!1620494)))

(declare-fun res!1080059 () Bool)

(assert (=> b!2566878 (=> (not res!1080059) (not e!1620494))))

(declare-fun lt!905296 () Bool)

(assert (=> b!2566878 (= res!1080059 lt!905296)))

(declare-fun b!2566879 () Bool)

(declare-fun e!1620496 () Bool)

(declare-fun e!1620492 () Bool)

(assert (=> b!2566879 (= e!1620496 e!1620492)))

(declare-fun res!1080057 () Bool)

(assert (=> b!2566879 (=> res!1080057 e!1620492)))

(declare-fun call!165273 () Bool)

(assert (=> b!2566879 (= res!1080057 call!165273)))

(declare-fun b!2566880 () Bool)

(declare-fun e!1620495 () Bool)

(declare-fun e!1620498 () Bool)

(assert (=> b!2566880 (= e!1620495 e!1620498)))

(declare-fun c!412876 () Bool)

(assert (=> b!2566880 (= c!412876 ((_ is EmptyLang!7627) lt!905266))))

(declare-fun b!2566881 () Bool)

(declare-fun res!1080064 () Bool)

(assert (=> b!2566881 (=> (not res!1080064) (not e!1620494))))

(assert (=> b!2566881 (= res!1080064 (isEmpty!17048 (tail!4107 tl!4068)))))

(declare-fun b!2566882 () Bool)

(assert (=> b!2566882 (= e!1620495 (= lt!905296 call!165273))))

(declare-fun b!2566883 () Bool)

(declare-fun e!1620493 () Bool)

(assert (=> b!2566883 (= e!1620493 (nullable!2544 lt!905266))))

(declare-fun b!2566884 () Bool)

(declare-fun res!1080060 () Bool)

(assert (=> b!2566884 (=> res!1080060 e!1620492)))

(assert (=> b!2566884 (= res!1080060 (not (isEmpty!17048 (tail!4107 tl!4068))))))

(declare-fun b!2566885 () Bool)

(assert (=> b!2566885 (= e!1620493 (matchR!3570 (derivativeStep!2196 lt!905266 (head!5832 tl!4068)) (tail!4107 tl!4068)))))

(declare-fun bm!165268 () Bool)

(assert (=> bm!165268 (= call!165273 (isEmpty!17048 tl!4068))))

(declare-fun b!2566886 () Bool)

(declare-fun res!1080058 () Bool)

(assert (=> b!2566886 (=> (not res!1080058) (not e!1620494))))

(assert (=> b!2566886 (= res!1080058 (not call!165273))))

(declare-fun b!2566887 () Bool)

(assert (=> b!2566887 (= e!1620494 (= (head!5832 tl!4068) (c!412789 lt!905266)))))

(declare-fun b!2566888 () Bool)

(assert (=> b!2566888 (= e!1620492 (not (= (head!5832 tl!4068) (c!412789 lt!905266))))))

(declare-fun b!2566889 () Bool)

(declare-fun res!1080062 () Bool)

(assert (=> b!2566889 (=> res!1080062 e!1620497)))

(assert (=> b!2566889 (= res!1080062 (not ((_ is ElementMatch!7627) lt!905266)))))

(assert (=> b!2566889 (= e!1620498 e!1620497)))

(declare-fun d!726673 () Bool)

(assert (=> d!726673 e!1620495))

(declare-fun c!412875 () Bool)

(assert (=> d!726673 (= c!412875 ((_ is EmptyExpr!7627) lt!905266))))

(assert (=> d!726673 (= lt!905296 e!1620493)))

(declare-fun c!412877 () Bool)

(assert (=> d!726673 (= c!412877 (isEmpty!17048 tl!4068))))

(assert (=> d!726673 (validRegex!3253 lt!905266)))

(assert (=> d!726673 (= (matchR!3570 lt!905266 tl!4068) lt!905296)))

(declare-fun b!2566890 () Bool)

(assert (=> b!2566890 (= e!1620497 e!1620496)))

(declare-fun res!1080063 () Bool)

(assert (=> b!2566890 (=> (not res!1080063) (not e!1620496))))

(assert (=> b!2566890 (= res!1080063 (not lt!905296))))

(declare-fun b!2566891 () Bool)

(assert (=> b!2566891 (= e!1620498 (not lt!905296))))

(assert (= (and d!726673 c!412877) b!2566883))

(assert (= (and d!726673 (not c!412877)) b!2566885))

(assert (= (and d!726673 c!412875) b!2566882))

(assert (= (and d!726673 (not c!412875)) b!2566880))

(assert (= (and b!2566880 c!412876) b!2566891))

(assert (= (and b!2566880 (not c!412876)) b!2566889))

(assert (= (and b!2566889 (not res!1080062)) b!2566878))

(assert (= (and b!2566878 res!1080059) b!2566886))

(assert (= (and b!2566886 res!1080058) b!2566881))

(assert (= (and b!2566881 res!1080064) b!2566887))

(assert (= (and b!2566878 (not res!1080061)) b!2566890))

(assert (= (and b!2566890 res!1080063) b!2566879))

(assert (= (and b!2566879 (not res!1080057)) b!2566884))

(assert (= (and b!2566884 (not res!1080060)) b!2566888))

(assert (= (or b!2566882 b!2566879 b!2566886) bm!165268))

(declare-fun m!2904687 () Bool)

(assert (=> b!2566883 m!2904687))

(declare-fun m!2904689 () Bool)

(assert (=> d!726673 m!2904689))

(assert (=> d!726673 m!2904677))

(declare-fun m!2904691 () Bool)

(assert (=> b!2566888 m!2904691))

(declare-fun m!2904693 () Bool)

(assert (=> b!2566881 m!2904693))

(assert (=> b!2566881 m!2904693))

(declare-fun m!2904695 () Bool)

(assert (=> b!2566881 m!2904695))

(assert (=> b!2566885 m!2904691))

(assert (=> b!2566885 m!2904691))

(declare-fun m!2904697 () Bool)

(assert (=> b!2566885 m!2904697))

(assert (=> b!2566885 m!2904693))

(assert (=> b!2566885 m!2904697))

(assert (=> b!2566885 m!2904693))

(declare-fun m!2904699 () Bool)

(assert (=> b!2566885 m!2904699))

(assert (=> b!2566887 m!2904691))

(assert (=> b!2566884 m!2904693))

(assert (=> b!2566884 m!2904693))

(assert (=> b!2566884 m!2904695))

(assert (=> bm!165268 m!2904689))

(assert (=> b!2566570 d!726673))

(declare-fun b!2566905 () Bool)

(declare-fun e!1620501 () Bool)

(declare-fun tp!817011 () Bool)

(declare-fun tp!817007 () Bool)

(assert (=> b!2566905 (= e!1620501 (and tp!817011 tp!817007))))

(declare-fun b!2566903 () Bool)

(declare-fun tp!817010 () Bool)

(declare-fun tp!817008 () Bool)

(assert (=> b!2566903 (= e!1620501 (and tp!817010 tp!817008))))

(assert (=> b!2566574 (= tp!816955 e!1620501)))

(declare-fun b!2566902 () Bool)

(assert (=> b!2566902 (= e!1620501 tp_is_empty!13109)))

(declare-fun b!2566904 () Bool)

(declare-fun tp!817009 () Bool)

(assert (=> b!2566904 (= e!1620501 tp!817009)))

(assert (= (and b!2566574 ((_ is ElementMatch!7627) (regOne!15767 r!27340))) b!2566902))

(assert (= (and b!2566574 ((_ is Concat!12323) (regOne!15767 r!27340))) b!2566903))

(assert (= (and b!2566574 ((_ is Star!7627) (regOne!15767 r!27340))) b!2566904))

(assert (= (and b!2566574 ((_ is Union!7627) (regOne!15767 r!27340))) b!2566905))

(declare-fun b!2566909 () Bool)

(declare-fun e!1620502 () Bool)

(declare-fun tp!817016 () Bool)

(declare-fun tp!817012 () Bool)

(assert (=> b!2566909 (= e!1620502 (and tp!817016 tp!817012))))

(declare-fun b!2566907 () Bool)

(declare-fun tp!817015 () Bool)

(declare-fun tp!817013 () Bool)

(assert (=> b!2566907 (= e!1620502 (and tp!817015 tp!817013))))

(assert (=> b!2566574 (= tp!816954 e!1620502)))

(declare-fun b!2566906 () Bool)

(assert (=> b!2566906 (= e!1620502 tp_is_empty!13109)))

(declare-fun b!2566908 () Bool)

(declare-fun tp!817014 () Bool)

(assert (=> b!2566908 (= e!1620502 tp!817014)))

(assert (= (and b!2566574 ((_ is ElementMatch!7627) (regTwo!15767 r!27340))) b!2566906))

(assert (= (and b!2566574 ((_ is Concat!12323) (regTwo!15767 r!27340))) b!2566907))

(assert (= (and b!2566574 ((_ is Star!7627) (regTwo!15767 r!27340))) b!2566908))

(assert (= (and b!2566574 ((_ is Union!7627) (regTwo!15767 r!27340))) b!2566909))

(declare-fun b!2566913 () Bool)

(declare-fun e!1620503 () Bool)

(declare-fun tp!817021 () Bool)

(declare-fun tp!817017 () Bool)

(assert (=> b!2566913 (= e!1620503 (and tp!817021 tp!817017))))

(declare-fun b!2566911 () Bool)

(declare-fun tp!817020 () Bool)

(declare-fun tp!817018 () Bool)

(assert (=> b!2566911 (= e!1620503 (and tp!817020 tp!817018))))

(assert (=> b!2566567 (= tp!816958 e!1620503)))

(declare-fun b!2566910 () Bool)

(assert (=> b!2566910 (= e!1620503 tp_is_empty!13109)))

(declare-fun b!2566912 () Bool)

(declare-fun tp!817019 () Bool)

(assert (=> b!2566912 (= e!1620503 tp!817019)))

(assert (= (and b!2566567 ((_ is ElementMatch!7627) (regOne!15766 r!27340))) b!2566910))

(assert (= (and b!2566567 ((_ is Concat!12323) (regOne!15766 r!27340))) b!2566911))

(assert (= (and b!2566567 ((_ is Star!7627) (regOne!15766 r!27340))) b!2566912))

(assert (= (and b!2566567 ((_ is Union!7627) (regOne!15766 r!27340))) b!2566913))

(declare-fun b!2566917 () Bool)

(declare-fun e!1620504 () Bool)

(declare-fun tp!817026 () Bool)

(declare-fun tp!817022 () Bool)

(assert (=> b!2566917 (= e!1620504 (and tp!817026 tp!817022))))

(declare-fun b!2566915 () Bool)

(declare-fun tp!817025 () Bool)

(declare-fun tp!817023 () Bool)

(assert (=> b!2566915 (= e!1620504 (and tp!817025 tp!817023))))

(assert (=> b!2566567 (= tp!816957 e!1620504)))

(declare-fun b!2566914 () Bool)

(assert (=> b!2566914 (= e!1620504 tp_is_empty!13109)))

(declare-fun b!2566916 () Bool)

(declare-fun tp!817024 () Bool)

(assert (=> b!2566916 (= e!1620504 tp!817024)))

(assert (= (and b!2566567 ((_ is ElementMatch!7627) (regTwo!15766 r!27340))) b!2566914))

(assert (= (and b!2566567 ((_ is Concat!12323) (regTwo!15766 r!27340))) b!2566915))

(assert (= (and b!2566567 ((_ is Star!7627) (regTwo!15766 r!27340))) b!2566916))

(assert (= (and b!2566567 ((_ is Union!7627) (regTwo!15766 r!27340))) b!2566917))

(declare-fun b!2566922 () Bool)

(declare-fun e!1620507 () Bool)

(declare-fun tp!817029 () Bool)

(assert (=> b!2566922 (= e!1620507 (and tp_is_empty!13109 tp!817029))))

(assert (=> b!2566571 (= tp!816953 e!1620507)))

(assert (= (and b!2566571 ((_ is Cons!29592) (t!211391 tl!4068))) b!2566922))

(declare-fun b!2566926 () Bool)

(declare-fun e!1620508 () Bool)

(declare-fun tp!817034 () Bool)

(declare-fun tp!817030 () Bool)

(assert (=> b!2566926 (= e!1620508 (and tp!817034 tp!817030))))

(declare-fun b!2566924 () Bool)

(declare-fun tp!817033 () Bool)

(declare-fun tp!817031 () Bool)

(assert (=> b!2566924 (= e!1620508 (and tp!817033 tp!817031))))

(assert (=> b!2566569 (= tp!816956 e!1620508)))

(declare-fun b!2566923 () Bool)

(assert (=> b!2566923 (= e!1620508 tp_is_empty!13109)))

(declare-fun b!2566925 () Bool)

(declare-fun tp!817032 () Bool)

(assert (=> b!2566925 (= e!1620508 tp!817032)))

(assert (= (and b!2566569 ((_ is ElementMatch!7627) (reg!7956 r!27340))) b!2566923))

(assert (= (and b!2566569 ((_ is Concat!12323) (reg!7956 r!27340))) b!2566924))

(assert (= (and b!2566569 ((_ is Star!7627) (reg!7956 r!27340))) b!2566925))

(assert (= (and b!2566569 ((_ is Union!7627) (reg!7956 r!27340))) b!2566926))

(check-sat (not b!2566750) (not b!2566859) (not b!2566916) (not d!726671) (not b!2566913) (not bm!165267) (not bm!165248) (not b!2566862) (not b!2566922) (not b!2566911) (not d!726669) (not b!2566915) (not b!2566611) (not d!726653) (not b!2566883) (not b!2566876) (not b!2566869) (not b!2566863) (not b!2566860) (not b!2566691) (not b!2566908) (not b!2566907) (not b!2566858) (not bm!165265) tp_is_empty!13109 (not d!726641) (not bm!165232) (not b!2566856) (not b!2566881) (not d!726631) (not b!2566917) (not bm!165264) (not d!726647) (not d!726657) (not bm!165230) (not b!2566909) (not b!2566884) (not b!2566759) (not bm!165252) (not b!2566925) (not d!726639) (not bm!165254) (not b!2566903) (not b!2566905) (not b!2566885) (not bm!165268) (not b!2566888) (not b!2566924) (not b!2566887) (not b!2566912) (not b!2566904) (not b!2566926) (not d!726673) (not bm!165250))
(check-sat)
