; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!285924 () Bool)

(assert start!285924)

(declare-fun b!2946390 () Bool)

(declare-fun e!1856178 () Bool)

(declare-fun tp!942410 () Bool)

(assert (=> b!2946390 (= e!1856178 tp!942410)))

(declare-fun b!2946391 () Bool)

(declare-fun e!1856177 () Bool)

(declare-fun tp_is_empty!15833 () Bool)

(declare-fun tp!942413 () Bool)

(assert (=> b!2946391 (= e!1856177 (and tp_is_empty!15833 tp!942413))))

(declare-fun b!2946392 () Bool)

(declare-fun res!1215942 () Bool)

(declare-fun e!1856179 () Bool)

(assert (=> b!2946392 (=> res!1215942 e!1856179)))

(declare-datatypes ((C!18456 0))(
  ( (C!18457 (val!11264 Int)) )
))
(declare-datatypes ((Regex!9135 0))(
  ( (ElementMatch!9135 (c!481997 C!18456)) (Concat!14456 (regOne!18782 Regex!9135) (regTwo!18782 Regex!9135)) (EmptyExpr!9135) (Star!9135 (reg!9464 Regex!9135)) (EmptyLang!9135) (Union!9135 (regOne!18783 Regex!9135) (regTwo!18783 Regex!9135)) )
))
(declare-fun lt!1031279 () Regex!9135)

(declare-fun isEmptyLang!257 (Regex!9135) Bool)

(assert (=> b!2946392 (= res!1215942 (isEmptyLang!257 lt!1031279))))

(declare-fun b!2946393 () Bool)

(declare-fun res!1215940 () Bool)

(declare-fun e!1856181 () Bool)

(assert (=> b!2946393 (=> res!1215940 e!1856181)))

(declare-datatypes ((List!35000 0))(
  ( (Nil!34876) (Cons!34876 (h!40296 C!18456) (t!234065 List!35000)) )
))
(declare-fun s!11993 () List!35000)

(declare-fun isEmpty!19137 (List!35000) Bool)

(assert (=> b!2946393 (= res!1215940 (isEmpty!19137 s!11993))))

(declare-fun b!2946394 () Bool)

(declare-fun tp!942411 () Bool)

(declare-fun tp!942409 () Bool)

(assert (=> b!2946394 (= e!1856178 (and tp!942411 tp!942409))))

(declare-fun b!2946396 () Bool)

(declare-fun e!1856180 () Bool)

(assert (=> b!2946396 (= e!1856180 (not e!1856181))))

(declare-fun res!1215939 () Bool)

(assert (=> b!2946396 (=> res!1215939 e!1856181)))

(declare-fun lt!1031277 () Bool)

(declare-fun r!17423 () Regex!9135)

(get-info :version)

(assert (=> b!2946396 (= res!1215939 (or lt!1031277 (not ((_ is Concat!14456) r!17423))))))

(declare-fun matchRSpec!1272 (Regex!9135 List!35000) Bool)

(assert (=> b!2946396 (= lt!1031277 (matchRSpec!1272 r!17423 s!11993))))

(declare-fun matchR!4017 (Regex!9135 List!35000) Bool)

(assert (=> b!2946396 (= lt!1031277 (matchR!4017 r!17423 s!11993))))

(declare-datatypes ((Unit!48649 0))(
  ( (Unit!48650) )
))
(declare-fun lt!1031278 () Unit!48649)

(declare-fun mainMatchTheorem!1272 (Regex!9135 List!35000) Unit!48649)

(assert (=> b!2946396 (= lt!1031278 (mainMatchTheorem!1272 r!17423 s!11993))))

(declare-fun b!2946397 () Bool)

(assert (=> b!2946397 (= e!1856178 tp_is_empty!15833)))

(declare-fun b!2946398 () Bool)

(assert (=> b!2946398 (= e!1856181 e!1856179)))

(declare-fun res!1215938 () Bool)

(assert (=> b!2946398 (=> res!1215938 e!1856179)))

(declare-fun lt!1031276 () Regex!9135)

(assert (=> b!2946398 (= res!1215938 (isEmptyLang!257 lt!1031276))))

(declare-fun simplify!140 (Regex!9135) Regex!9135)

(assert (=> b!2946398 (= lt!1031279 (simplify!140 (regTwo!18782 r!17423)))))

(assert (=> b!2946398 (= lt!1031276 (simplify!140 (regOne!18782 r!17423)))))

(declare-fun b!2946399 () Bool)

(declare-fun validRegex!3868 (Regex!9135) Bool)

(assert (=> b!2946399 (= e!1856179 (validRegex!3868 (Concat!14456 lt!1031276 lt!1031279)))))

(declare-fun res!1215941 () Bool)

(assert (=> start!285924 (=> (not res!1215941) (not e!1856180))))

(assert (=> start!285924 (= res!1215941 (validRegex!3868 r!17423))))

(assert (=> start!285924 e!1856180))

(assert (=> start!285924 e!1856178))

(assert (=> start!285924 e!1856177))

(declare-fun b!2946395 () Bool)

(declare-fun res!1215944 () Bool)

(assert (=> b!2946395 (=> res!1215944 e!1856179)))

(declare-fun isEmptyExpr!338 (Regex!9135) Bool)

(assert (=> b!2946395 (= res!1215944 (isEmptyExpr!338 lt!1031279))))

(declare-fun b!2946400 () Bool)

(declare-fun tp!942408 () Bool)

(declare-fun tp!942412 () Bool)

(assert (=> b!2946400 (= e!1856178 (and tp!942408 tp!942412))))

(declare-fun b!2946401 () Bool)

(declare-fun res!1215943 () Bool)

(assert (=> b!2946401 (=> res!1215943 e!1856179)))

(assert (=> b!2946401 (= res!1215943 (isEmptyExpr!338 lt!1031276))))

(assert (= (and start!285924 res!1215941) b!2946396))

(assert (= (and b!2946396 (not res!1215939)) b!2946393))

(assert (= (and b!2946393 (not res!1215940)) b!2946398))

(assert (= (and b!2946398 (not res!1215938)) b!2946392))

(assert (= (and b!2946392 (not res!1215942)) b!2946401))

(assert (= (and b!2946401 (not res!1215943)) b!2946395))

(assert (= (and b!2946395 (not res!1215944)) b!2946399))

(assert (= (and start!285924 ((_ is ElementMatch!9135) r!17423)) b!2946397))

(assert (= (and start!285924 ((_ is Concat!14456) r!17423)) b!2946400))

(assert (= (and start!285924 ((_ is Star!9135) r!17423)) b!2946390))

(assert (= (and start!285924 ((_ is Union!9135) r!17423)) b!2946394))

(assert (= (and start!285924 ((_ is Cons!34876) s!11993)) b!2946391))

(declare-fun m!3327937 () Bool)

(assert (=> b!2946392 m!3327937))

(declare-fun m!3327939 () Bool)

(assert (=> b!2946398 m!3327939))

(declare-fun m!3327941 () Bool)

(assert (=> b!2946398 m!3327941))

(declare-fun m!3327943 () Bool)

(assert (=> b!2946398 m!3327943))

(declare-fun m!3327945 () Bool)

(assert (=> b!2946393 m!3327945))

(declare-fun m!3327947 () Bool)

(assert (=> b!2946396 m!3327947))

(declare-fun m!3327949 () Bool)

(assert (=> b!2946396 m!3327949))

(declare-fun m!3327951 () Bool)

(assert (=> b!2946396 m!3327951))

(declare-fun m!3327953 () Bool)

(assert (=> start!285924 m!3327953))

(declare-fun m!3327955 () Bool)

(assert (=> b!2946401 m!3327955))

(declare-fun m!3327957 () Bool)

(assert (=> b!2946395 m!3327957))

(declare-fun m!3327959 () Bool)

(assert (=> b!2946399 m!3327959))

(check-sat (not b!2946400) (not b!2946398) (not b!2946396) (not b!2946392) (not b!2946393) (not b!2946399) (not b!2946391) (not b!2946390) (not start!285924) tp_is_empty!15833 (not b!2946401) (not b!2946394) (not b!2946395))
(check-sat)
(get-model)

(declare-fun d!840605 () Bool)

(assert (=> d!840605 (= (isEmptyExpr!338 lt!1031276) ((_ is EmptyExpr!9135) lt!1031276))))

(assert (=> b!2946401 d!840605))

(declare-fun b!2946614 () Bool)

(assert (=> b!2946614 true))

(assert (=> b!2946614 true))

(declare-fun bs!525586 () Bool)

(declare-fun b!2946610 () Bool)

(assert (= bs!525586 (and b!2946610 b!2946614)))

(declare-fun lambda!109640 () Int)

(declare-fun lambda!109639 () Int)

(assert (=> bs!525586 (not (= lambda!109640 lambda!109639))))

(assert (=> b!2946610 true))

(assert (=> b!2946610 true))

(declare-fun b!2946608 () Bool)

(declare-fun e!1856303 () Bool)

(declare-fun e!1856302 () Bool)

(assert (=> b!2946608 (= e!1856303 e!1856302)))

(declare-fun res!1216008 () Bool)

(assert (=> b!2946608 (= res!1216008 (not ((_ is EmptyLang!9135) r!17423)))))

(assert (=> b!2946608 (=> (not res!1216008) (not e!1856302))))

(declare-fun b!2946609 () Bool)

(declare-fun e!1856306 () Bool)

(assert (=> b!2946609 (= e!1856306 (matchRSpec!1272 (regTwo!18783 r!17423) s!11993))))

(declare-fun d!840609 () Bool)

(declare-fun c!482071 () Bool)

(assert (=> d!840609 (= c!482071 ((_ is EmptyExpr!9135) r!17423))))

(assert (=> d!840609 (= (matchRSpec!1272 r!17423 s!11993) e!1856303)))

(declare-fun e!1856305 () Bool)

(declare-fun call!194419 () Bool)

(assert (=> b!2946610 (= e!1856305 call!194419)))

(declare-fun b!2946611 () Bool)

(declare-fun e!1856308 () Bool)

(assert (=> b!2946611 (= e!1856308 e!1856306)))

(declare-fun res!1216009 () Bool)

(assert (=> b!2946611 (= res!1216009 (matchRSpec!1272 (regOne!18783 r!17423) s!11993))))

(assert (=> b!2946611 (=> res!1216009 e!1856306)))

(declare-fun bm!194413 () Bool)

(declare-fun call!194418 () Bool)

(assert (=> bm!194413 (= call!194418 (isEmpty!19137 s!11993))))

(declare-fun b!2946612 () Bool)

(assert (=> b!2946612 (= e!1856303 call!194418)))

(declare-fun b!2946613 () Bool)

(declare-fun res!1216007 () Bool)

(declare-fun e!1856304 () Bool)

(assert (=> b!2946613 (=> res!1216007 e!1856304)))

(assert (=> b!2946613 (= res!1216007 call!194418)))

(assert (=> b!2946613 (= e!1856305 e!1856304)))

(assert (=> b!2946614 (= e!1856304 call!194419)))

(declare-fun b!2946615 () Bool)

(declare-fun c!482068 () Bool)

(assert (=> b!2946615 (= c!482068 ((_ is ElementMatch!9135) r!17423))))

(declare-fun e!1856307 () Bool)

(assert (=> b!2946615 (= e!1856302 e!1856307)))

(declare-fun b!2946616 () Bool)

(declare-fun c!482070 () Bool)

(assert (=> b!2946616 (= c!482070 ((_ is Union!9135) r!17423))))

(assert (=> b!2946616 (= e!1856307 e!1856308)))

(declare-fun b!2946617 () Bool)

(assert (=> b!2946617 (= e!1856307 (= s!11993 (Cons!34876 (c!481997 r!17423) Nil!34876)))))

(declare-fun b!2946618 () Bool)

(assert (=> b!2946618 (= e!1856308 e!1856305)))

(declare-fun c!482069 () Bool)

(assert (=> b!2946618 (= c!482069 ((_ is Star!9135) r!17423))))

(declare-fun bm!194414 () Bool)

(declare-fun Exists!1470 (Int) Bool)

(assert (=> bm!194414 (= call!194419 (Exists!1470 (ite c!482069 lambda!109639 lambda!109640)))))

(assert (= (and d!840609 c!482071) b!2946612))

(assert (= (and d!840609 (not c!482071)) b!2946608))

(assert (= (and b!2946608 res!1216008) b!2946615))

(assert (= (and b!2946615 c!482068) b!2946617))

(assert (= (and b!2946615 (not c!482068)) b!2946616))

(assert (= (and b!2946616 c!482070) b!2946611))

(assert (= (and b!2946616 (not c!482070)) b!2946618))

(assert (= (and b!2946611 (not res!1216009)) b!2946609))

(assert (= (and b!2946618 c!482069) b!2946613))

(assert (= (and b!2946618 (not c!482069)) b!2946610))

(assert (= (and b!2946613 (not res!1216007)) b!2946614))

(assert (= (or b!2946614 b!2946610) bm!194414))

(assert (= (or b!2946612 b!2946613) bm!194413))

(declare-fun m!3328013 () Bool)

(assert (=> b!2946609 m!3328013))

(declare-fun m!3328015 () Bool)

(assert (=> b!2946611 m!3328015))

(assert (=> bm!194413 m!3327945))

(declare-fun m!3328017 () Bool)

(assert (=> bm!194414 m!3328017))

(assert (=> b!2946396 d!840609))

(declare-fun b!2946693 () Bool)

(declare-fun res!1216051 () Bool)

(declare-fun e!1856350 () Bool)

(assert (=> b!2946693 (=> res!1216051 e!1856350)))

(declare-fun e!1856344 () Bool)

(assert (=> b!2946693 (= res!1216051 e!1856344)))

(declare-fun res!1216057 () Bool)

(assert (=> b!2946693 (=> (not res!1216057) (not e!1856344))))

(declare-fun lt!1031309 () Bool)

(assert (=> b!2946693 (= res!1216057 lt!1031309)))

(declare-fun bm!194420 () Bool)

(declare-fun call!194425 () Bool)

(assert (=> bm!194420 (= call!194425 (isEmpty!19137 s!11993))))

(declare-fun b!2946694 () Bool)

(declare-fun e!1856345 () Bool)

(declare-fun e!1856346 () Bool)

(assert (=> b!2946694 (= e!1856345 e!1856346)))

(declare-fun c!482089 () Bool)

(assert (=> b!2946694 (= c!482089 ((_ is EmptyLang!9135) r!17423))))

(declare-fun b!2946695 () Bool)

(declare-fun e!1856349 () Bool)

(declare-fun e!1856348 () Bool)

(assert (=> b!2946695 (= e!1856349 e!1856348)))

(declare-fun res!1216052 () Bool)

(assert (=> b!2946695 (=> res!1216052 e!1856348)))

(assert (=> b!2946695 (= res!1216052 call!194425)))

(declare-fun b!2946696 () Bool)

(declare-fun e!1856347 () Bool)

(declare-fun derivativeStep!2499 (Regex!9135 C!18456) Regex!9135)

(declare-fun head!6558 (List!35000) C!18456)

(declare-fun tail!4784 (List!35000) List!35000)

(assert (=> b!2946696 (= e!1856347 (matchR!4017 (derivativeStep!2499 r!17423 (head!6558 s!11993)) (tail!4784 s!11993)))))

(declare-fun b!2946697 () Bool)

(declare-fun res!1216054 () Bool)

(assert (=> b!2946697 (=> (not res!1216054) (not e!1856344))))

(assert (=> b!2946697 (= res!1216054 (not call!194425))))

(declare-fun b!2946698 () Bool)

(declare-fun res!1216050 () Bool)

(assert (=> b!2946698 (=> (not res!1216050) (not e!1856344))))

(assert (=> b!2946698 (= res!1216050 (isEmpty!19137 (tail!4784 s!11993)))))

(declare-fun b!2946699 () Bool)

(declare-fun nullable!2897 (Regex!9135) Bool)

(assert (=> b!2946699 (= e!1856347 (nullable!2897 r!17423))))

(declare-fun b!2946700 () Bool)

(assert (=> b!2946700 (= e!1856346 (not lt!1031309))))

(declare-fun b!2946701 () Bool)

(declare-fun res!1216055 () Bool)

(assert (=> b!2946701 (=> res!1216055 e!1856350)))

(assert (=> b!2946701 (= res!1216055 (not ((_ is ElementMatch!9135) r!17423)))))

(assert (=> b!2946701 (= e!1856346 e!1856350)))

(declare-fun d!840627 () Bool)

(assert (=> d!840627 e!1856345))

(declare-fun c!482088 () Bool)

(assert (=> d!840627 (= c!482088 ((_ is EmptyExpr!9135) r!17423))))

(assert (=> d!840627 (= lt!1031309 e!1856347)))

(declare-fun c!482087 () Bool)

(assert (=> d!840627 (= c!482087 (isEmpty!19137 s!11993))))

(assert (=> d!840627 (validRegex!3868 r!17423)))

(assert (=> d!840627 (= (matchR!4017 r!17423 s!11993) lt!1031309)))

(declare-fun b!2946702 () Bool)

(assert (=> b!2946702 (= e!1856350 e!1856349)))

(declare-fun res!1216053 () Bool)

(assert (=> b!2946702 (=> (not res!1216053) (not e!1856349))))

(assert (=> b!2946702 (= res!1216053 (not lt!1031309))))

(declare-fun b!2946703 () Bool)

(assert (=> b!2946703 (= e!1856348 (not (= (head!6558 s!11993) (c!481997 r!17423))))))

(declare-fun b!2946704 () Bool)

(assert (=> b!2946704 (= e!1856344 (= (head!6558 s!11993) (c!481997 r!17423)))))

(declare-fun b!2946705 () Bool)

(declare-fun res!1216056 () Bool)

(assert (=> b!2946705 (=> res!1216056 e!1856348)))

(assert (=> b!2946705 (= res!1216056 (not (isEmpty!19137 (tail!4784 s!11993))))))

(declare-fun b!2946706 () Bool)

(assert (=> b!2946706 (= e!1856345 (= lt!1031309 call!194425))))

(assert (= (and d!840627 c!482087) b!2946699))

(assert (= (and d!840627 (not c!482087)) b!2946696))

(assert (= (and d!840627 c!482088) b!2946706))

(assert (= (and d!840627 (not c!482088)) b!2946694))

(assert (= (and b!2946694 c!482089) b!2946700))

(assert (= (and b!2946694 (not c!482089)) b!2946701))

(assert (= (and b!2946701 (not res!1216055)) b!2946693))

(assert (= (and b!2946693 res!1216057) b!2946697))

(assert (= (and b!2946697 res!1216054) b!2946698))

(assert (= (and b!2946698 res!1216050) b!2946704))

(assert (= (and b!2946693 (not res!1216051)) b!2946702))

(assert (= (and b!2946702 res!1216053) b!2946695))

(assert (= (and b!2946695 (not res!1216052)) b!2946705))

(assert (= (and b!2946705 (not res!1216056)) b!2946703))

(assert (= (or b!2946706 b!2946695 b!2946697) bm!194420))

(declare-fun m!3328031 () Bool)

(assert (=> b!2946703 m!3328031))

(declare-fun m!3328033 () Bool)

(assert (=> b!2946705 m!3328033))

(assert (=> b!2946705 m!3328033))

(declare-fun m!3328035 () Bool)

(assert (=> b!2946705 m!3328035))

(assert (=> b!2946696 m!3328031))

(assert (=> b!2946696 m!3328031))

(declare-fun m!3328037 () Bool)

(assert (=> b!2946696 m!3328037))

(assert (=> b!2946696 m!3328033))

(assert (=> b!2946696 m!3328037))

(assert (=> b!2946696 m!3328033))

(declare-fun m!3328039 () Bool)

(assert (=> b!2946696 m!3328039))

(declare-fun m!3328041 () Bool)

(assert (=> b!2946699 m!3328041))

(assert (=> d!840627 m!3327945))

(assert (=> d!840627 m!3327953))

(assert (=> b!2946704 m!3328031))

(assert (=> bm!194420 m!3327945))

(assert (=> b!2946698 m!3328033))

(assert (=> b!2946698 m!3328033))

(assert (=> b!2946698 m!3328035))

(assert (=> b!2946396 d!840627))

(declare-fun d!840631 () Bool)

(assert (=> d!840631 (= (matchR!4017 r!17423 s!11993) (matchRSpec!1272 r!17423 s!11993))))

(declare-fun lt!1031315 () Unit!48649)

(declare-fun choose!17414 (Regex!9135 List!35000) Unit!48649)

(assert (=> d!840631 (= lt!1031315 (choose!17414 r!17423 s!11993))))

(assert (=> d!840631 (validRegex!3868 r!17423)))

(assert (=> d!840631 (= (mainMatchTheorem!1272 r!17423 s!11993) lt!1031315)))

(declare-fun bs!525588 () Bool)

(assert (= bs!525588 d!840631))

(assert (=> bs!525588 m!3327949))

(assert (=> bs!525588 m!3327947))

(declare-fun m!3328051 () Bool)

(assert (=> bs!525588 m!3328051))

(assert (=> bs!525588 m!3327953))

(assert (=> b!2946396 d!840631))

(declare-fun d!840637 () Bool)

(assert (=> d!840637 (= (isEmptyExpr!338 lt!1031279) ((_ is EmptyExpr!9135) lt!1031279))))

(assert (=> b!2946395 d!840637))

(declare-fun b!2946769 () Bool)

(declare-fun e!1856382 () Bool)

(declare-fun e!1856387 () Bool)

(assert (=> b!2946769 (= e!1856382 e!1856387)))

(declare-fun res!1216074 () Bool)

(assert (=> b!2946769 (=> (not res!1216074) (not e!1856387))))

(declare-fun call!194435 () Bool)

(assert (=> b!2946769 (= res!1216074 call!194435)))

(declare-fun call!194436 () Bool)

(declare-fun c!482097 () Bool)

(declare-fun bm!194430 () Bool)

(declare-fun c!482096 () Bool)

(assert (=> bm!194430 (= call!194436 (validRegex!3868 (ite c!482097 (reg!9464 (Concat!14456 lt!1031276 lt!1031279)) (ite c!482096 (regOne!18783 (Concat!14456 lt!1031276 lt!1031279)) (regTwo!18782 (Concat!14456 lt!1031276 lt!1031279))))))))

(declare-fun b!2946770 () Bool)

(declare-fun e!1856383 () Bool)

(declare-fun e!1856384 () Bool)

(assert (=> b!2946770 (= e!1856383 e!1856384)))

(declare-fun res!1216076 () Bool)

(assert (=> b!2946770 (= res!1216076 (not (nullable!2897 (reg!9464 (Concat!14456 lt!1031276 lt!1031279)))))))

(assert (=> b!2946770 (=> (not res!1216076) (not e!1856384))))

(declare-fun b!2946771 () Bool)

(assert (=> b!2946771 (= e!1856384 call!194436)))

(declare-fun bm!194431 () Bool)

(assert (=> bm!194431 (= call!194435 (validRegex!3868 (ite c!482096 (regTwo!18783 (Concat!14456 lt!1031276 lt!1031279)) (regOne!18782 (Concat!14456 lt!1031276 lt!1031279)))))))

(declare-fun b!2946772 () Bool)

(declare-fun call!194437 () Bool)

(assert (=> b!2946772 (= e!1856387 call!194437)))

(declare-fun d!840639 () Bool)

(declare-fun res!1216075 () Bool)

(declare-fun e!1856386 () Bool)

(assert (=> d!840639 (=> res!1216075 e!1856386)))

(assert (=> d!840639 (= res!1216075 ((_ is ElementMatch!9135) (Concat!14456 lt!1031276 lt!1031279)))))

(assert (=> d!840639 (= (validRegex!3868 (Concat!14456 lt!1031276 lt!1031279)) e!1856386)))

(declare-fun b!2946773 () Bool)

(declare-fun e!1856385 () Bool)

(assert (=> b!2946773 (= e!1856383 e!1856385)))

(assert (=> b!2946773 (= c!482096 ((_ is Union!9135) (Concat!14456 lt!1031276 lt!1031279)))))

(declare-fun bm!194432 () Bool)

(assert (=> bm!194432 (= call!194437 call!194436)))

(declare-fun b!2946774 () Bool)

(declare-fun res!1216077 () Bool)

(assert (=> b!2946774 (=> res!1216077 e!1856382)))

(assert (=> b!2946774 (= res!1216077 (not ((_ is Concat!14456) (Concat!14456 lt!1031276 lt!1031279))))))

(assert (=> b!2946774 (= e!1856385 e!1856382)))

(declare-fun b!2946775 () Bool)

(declare-fun e!1856388 () Bool)

(assert (=> b!2946775 (= e!1856388 call!194435)))

(declare-fun b!2946776 () Bool)

(assert (=> b!2946776 (= e!1856386 e!1856383)))

(assert (=> b!2946776 (= c!482097 ((_ is Star!9135) (Concat!14456 lt!1031276 lt!1031279)))))

(declare-fun b!2946777 () Bool)

(declare-fun res!1216073 () Bool)

(assert (=> b!2946777 (=> (not res!1216073) (not e!1856388))))

(assert (=> b!2946777 (= res!1216073 call!194437)))

(assert (=> b!2946777 (= e!1856385 e!1856388)))

(assert (= (and d!840639 (not res!1216075)) b!2946776))

(assert (= (and b!2946776 c!482097) b!2946770))

(assert (= (and b!2946776 (not c!482097)) b!2946773))

(assert (= (and b!2946770 res!1216076) b!2946771))

(assert (= (and b!2946773 c!482096) b!2946777))

(assert (= (and b!2946773 (not c!482096)) b!2946774))

(assert (= (and b!2946777 res!1216073) b!2946775))

(assert (= (and b!2946774 (not res!1216077)) b!2946769))

(assert (= (and b!2946769 res!1216074) b!2946772))

(assert (= (or b!2946777 b!2946772) bm!194432))

(assert (= (or b!2946775 b!2946769) bm!194431))

(assert (= (or b!2946771 bm!194432) bm!194430))

(declare-fun m!3328053 () Bool)

(assert (=> bm!194430 m!3328053))

(declare-fun m!3328055 () Bool)

(assert (=> b!2946770 m!3328055))

(declare-fun m!3328057 () Bool)

(assert (=> bm!194431 m!3328057))

(assert (=> b!2946399 d!840639))

(declare-fun b!2946778 () Bool)

(declare-fun e!1856389 () Bool)

(declare-fun e!1856394 () Bool)

(assert (=> b!2946778 (= e!1856389 e!1856394)))

(declare-fun res!1216079 () Bool)

(assert (=> b!2946778 (=> (not res!1216079) (not e!1856394))))

(declare-fun call!194438 () Bool)

(assert (=> b!2946778 (= res!1216079 call!194438)))

(declare-fun call!194439 () Bool)

(declare-fun c!482099 () Bool)

(declare-fun c!482098 () Bool)

(declare-fun bm!194433 () Bool)

(assert (=> bm!194433 (= call!194439 (validRegex!3868 (ite c!482099 (reg!9464 r!17423) (ite c!482098 (regOne!18783 r!17423) (regTwo!18782 r!17423)))))))

(declare-fun b!2946779 () Bool)

(declare-fun e!1856390 () Bool)

(declare-fun e!1856391 () Bool)

(assert (=> b!2946779 (= e!1856390 e!1856391)))

(declare-fun res!1216081 () Bool)

(assert (=> b!2946779 (= res!1216081 (not (nullable!2897 (reg!9464 r!17423))))))

(assert (=> b!2946779 (=> (not res!1216081) (not e!1856391))))

(declare-fun b!2946780 () Bool)

(assert (=> b!2946780 (= e!1856391 call!194439)))

(declare-fun bm!194434 () Bool)

(assert (=> bm!194434 (= call!194438 (validRegex!3868 (ite c!482098 (regTwo!18783 r!17423) (regOne!18782 r!17423))))))

(declare-fun b!2946781 () Bool)

(declare-fun call!194440 () Bool)

(assert (=> b!2946781 (= e!1856394 call!194440)))

(declare-fun d!840641 () Bool)

(declare-fun res!1216080 () Bool)

(declare-fun e!1856393 () Bool)

(assert (=> d!840641 (=> res!1216080 e!1856393)))

(assert (=> d!840641 (= res!1216080 ((_ is ElementMatch!9135) r!17423))))

(assert (=> d!840641 (= (validRegex!3868 r!17423) e!1856393)))

(declare-fun b!2946782 () Bool)

(declare-fun e!1856392 () Bool)

(assert (=> b!2946782 (= e!1856390 e!1856392)))

(assert (=> b!2946782 (= c!482098 ((_ is Union!9135) r!17423))))

(declare-fun bm!194435 () Bool)

(assert (=> bm!194435 (= call!194440 call!194439)))

(declare-fun b!2946783 () Bool)

(declare-fun res!1216082 () Bool)

(assert (=> b!2946783 (=> res!1216082 e!1856389)))

(assert (=> b!2946783 (= res!1216082 (not ((_ is Concat!14456) r!17423)))))

(assert (=> b!2946783 (= e!1856392 e!1856389)))

(declare-fun b!2946784 () Bool)

(declare-fun e!1856395 () Bool)

(assert (=> b!2946784 (= e!1856395 call!194438)))

(declare-fun b!2946785 () Bool)

(assert (=> b!2946785 (= e!1856393 e!1856390)))

(assert (=> b!2946785 (= c!482099 ((_ is Star!9135) r!17423))))

(declare-fun b!2946786 () Bool)

(declare-fun res!1216078 () Bool)

(assert (=> b!2946786 (=> (not res!1216078) (not e!1856395))))

(assert (=> b!2946786 (= res!1216078 call!194440)))

(assert (=> b!2946786 (= e!1856392 e!1856395)))

(assert (= (and d!840641 (not res!1216080)) b!2946785))

(assert (= (and b!2946785 c!482099) b!2946779))

(assert (= (and b!2946785 (not c!482099)) b!2946782))

(assert (= (and b!2946779 res!1216081) b!2946780))

(assert (= (and b!2946782 c!482098) b!2946786))

(assert (= (and b!2946782 (not c!482098)) b!2946783))

(assert (= (and b!2946786 res!1216078) b!2946784))

(assert (= (and b!2946783 (not res!1216082)) b!2946778))

(assert (= (and b!2946778 res!1216079) b!2946781))

(assert (= (or b!2946786 b!2946781) bm!194435))

(assert (= (or b!2946784 b!2946778) bm!194434))

(assert (= (or b!2946780 bm!194435) bm!194433))

(declare-fun m!3328059 () Bool)

(assert (=> bm!194433 m!3328059))

(declare-fun m!3328061 () Bool)

(assert (=> b!2946779 m!3328061))

(declare-fun m!3328063 () Bool)

(assert (=> bm!194434 m!3328063))

(assert (=> start!285924 d!840641))

(declare-fun d!840643 () Bool)

(assert (=> d!840643 (= (isEmpty!19137 s!11993) ((_ is Nil!34876) s!11993))))

(assert (=> b!2946393 d!840643))

(declare-fun d!840645 () Bool)

(assert (=> d!840645 (= (isEmptyLang!257 lt!1031276) ((_ is EmptyLang!9135) lt!1031276))))

(assert (=> b!2946398 d!840645))

(declare-fun b!2946837 () Bool)

(declare-fun c!482122 () Bool)

(declare-fun call!194457 () Bool)

(assert (=> b!2946837 (= c!482122 call!194457)))

(declare-fun e!1856432 () Regex!9135)

(declare-fun e!1856426 () Regex!9135)

(assert (=> b!2946837 (= e!1856432 e!1856426)))

(declare-fun b!2946838 () Bool)

(declare-fun e!1856424 () Bool)

(declare-fun call!194455 () Bool)

(assert (=> b!2946838 (= e!1856424 call!194455)))

(declare-fun bm!194450 () Bool)

(declare-fun call!194456 () Regex!9135)

(declare-fun call!194459 () Regex!9135)

(assert (=> bm!194450 (= call!194456 call!194459)))

(declare-fun b!2946839 () Bool)

(declare-fun e!1856435 () Bool)

(declare-fun lt!1031333 () Regex!9135)

(assert (=> b!2946839 (= e!1856435 (= (nullable!2897 lt!1031333) (nullable!2897 (regTwo!18782 r!17423))))))

(declare-fun b!2946840 () Bool)

(declare-fun e!1856429 () Regex!9135)

(declare-fun lt!1031330 () Regex!9135)

(assert (=> b!2946840 (= e!1856429 (Star!9135 lt!1031330))))

(declare-fun call!194460 () Bool)

(declare-fun lt!1031329 () Regex!9135)

(declare-fun c!482126 () Bool)

(declare-fun lt!1031331 () Regex!9135)

(declare-fun c!482125 () Bool)

(declare-fun bm!194451 () Bool)

(assert (=> bm!194451 (= call!194460 (isEmptyLang!257 (ite c!482126 lt!1031330 (ite c!482125 lt!1031331 lt!1031329))))))

(declare-fun b!2946841 () Bool)

(declare-fun e!1856425 () Regex!9135)

(declare-fun e!1856430 () Regex!9135)

(assert (=> b!2946841 (= e!1856425 e!1856430)))

(declare-fun c!482123 () Bool)

(assert (=> b!2946841 (= c!482123 call!194455)))

(declare-fun d!840647 () Bool)

(assert (=> d!840647 e!1856435))

(declare-fun res!1216089 () Bool)

(assert (=> d!840647 (=> (not res!1216089) (not e!1856435))))

(assert (=> d!840647 (= res!1216089 (validRegex!3868 lt!1031333))))

(declare-fun e!1856436 () Regex!9135)

(assert (=> d!840647 (= lt!1031333 e!1856436)))

(declare-fun c!482124 () Bool)

(assert (=> d!840647 (= c!482124 ((_ is EmptyLang!9135) (regTwo!18782 r!17423)))))

(assert (=> d!840647 (validRegex!3868 (regTwo!18782 r!17423))))

(assert (=> d!840647 (= (simplify!140 (regTwo!18782 r!17423)) lt!1031333)))

(declare-fun bm!194452 () Bool)

(assert (=> bm!194452 (= call!194455 (isEmptyExpr!338 (ite c!482126 lt!1031330 lt!1031329)))))

(declare-fun bm!194453 () Bool)

(assert (=> bm!194453 (= call!194459 (simplify!140 (ite c!482126 (reg!9464 (regTwo!18782 r!17423)) (ite c!482125 (regOne!18783 (regTwo!18782 r!17423)) (regTwo!18782 (regTwo!18782 r!17423))))))))

(declare-fun b!2946842 () Bool)

(declare-fun lt!1031332 () Regex!9135)

(assert (=> b!2946842 (= e!1856426 (Union!9135 lt!1031331 lt!1031332))))

(declare-fun b!2946843 () Bool)

(assert (=> b!2946843 (= e!1856436 EmptyLang!9135)))

(declare-fun b!2946844 () Bool)

(declare-fun e!1856434 () Regex!9135)

(declare-fun e!1856431 () Regex!9135)

(assert (=> b!2946844 (= e!1856434 e!1856431)))

(declare-fun lt!1031328 () Regex!9135)

(declare-fun call!194458 () Regex!9135)

(assert (=> b!2946844 (= lt!1031328 call!194458)))

(assert (=> b!2946844 (= lt!1031329 call!194456)))

(declare-fun res!1216090 () Bool)

(assert (=> b!2946844 (= res!1216090 call!194457)))

(declare-fun e!1856427 () Bool)

(assert (=> b!2946844 (=> res!1216090 e!1856427)))

(declare-fun c!482129 () Bool)

(assert (=> b!2946844 (= c!482129 e!1856427)))

(declare-fun b!2946845 () Bool)

(assert (=> b!2946845 (= e!1856434 e!1856432)))

(assert (=> b!2946845 (= lt!1031331 call!194456)))

(assert (=> b!2946845 (= lt!1031332 call!194458)))

(declare-fun c!482130 () Bool)

(declare-fun call!194461 () Bool)

(assert (=> b!2946845 (= c!482130 call!194461)))

(declare-fun bm!194454 () Bool)

(assert (=> bm!194454 (= call!194461 call!194460)))

(declare-fun b!2946846 () Bool)

(assert (=> b!2946846 (= e!1856432 lt!1031332)))

(declare-fun b!2946847 () Bool)

(declare-fun c!482127 () Bool)

(assert (=> b!2946847 (= c!482127 ((_ is EmptyExpr!9135) (regTwo!18782 r!17423)))))

(declare-fun e!1856437 () Regex!9135)

(declare-fun e!1856433 () Regex!9135)

(assert (=> b!2946847 (= e!1856437 e!1856433)))

(declare-fun b!2946848 () Bool)

(assert (=> b!2946848 (= e!1856425 lt!1031329)))

(declare-fun b!2946849 () Bool)

(assert (=> b!2946849 (= e!1856430 (Concat!14456 lt!1031328 lt!1031329))))

(declare-fun bm!194455 () Bool)

(assert (=> bm!194455 (= call!194457 (isEmptyLang!257 (ite c!482125 lt!1031332 lt!1031328)))))

(declare-fun b!2946850 () Bool)

(assert (=> b!2946850 (= e!1856431 EmptyLang!9135)))

(declare-fun b!2946851 () Bool)

(declare-fun c!482128 () Bool)

(assert (=> b!2946851 (= c!482128 e!1856424)))

(declare-fun res!1216091 () Bool)

(assert (=> b!2946851 (=> res!1216091 e!1856424)))

(assert (=> b!2946851 (= res!1216091 call!194460)))

(assert (=> b!2946851 (= lt!1031330 call!194459)))

(declare-fun e!1856428 () Regex!9135)

(assert (=> b!2946851 (= e!1856428 e!1856429)))

(declare-fun b!2946852 () Bool)

(assert (=> b!2946852 (= e!1856433 e!1856428)))

(assert (=> b!2946852 (= c!482126 ((_ is Star!9135) (regTwo!18782 r!17423)))))

(declare-fun b!2946853 () Bool)

(assert (=> b!2946853 (= e!1856436 e!1856437)))

(declare-fun c!482131 () Bool)

(assert (=> b!2946853 (= c!482131 ((_ is ElementMatch!9135) (regTwo!18782 r!17423)))))

(declare-fun b!2946854 () Bool)

(assert (=> b!2946854 (= e!1856430 lt!1031328)))

(declare-fun b!2946855 () Bool)

(assert (=> b!2946855 (= e!1856427 call!194461)))

(declare-fun b!2946856 () Bool)

(assert (=> b!2946856 (= e!1856429 EmptyExpr!9135)))

(declare-fun bm!194456 () Bool)

(assert (=> bm!194456 (= call!194458 (simplify!140 (ite c!482125 (regTwo!18783 (regTwo!18782 r!17423)) (regOne!18782 (regTwo!18782 r!17423)))))))

(declare-fun b!2946857 () Bool)

(assert (=> b!2946857 (= e!1856437 (regTwo!18782 r!17423))))

(declare-fun b!2946858 () Bool)

(assert (=> b!2946858 (= c!482125 ((_ is Union!9135) (regTwo!18782 r!17423)))))

(assert (=> b!2946858 (= e!1856428 e!1856434)))

(declare-fun b!2946859 () Bool)

(assert (=> b!2946859 (= e!1856426 lt!1031331)))

(declare-fun b!2946860 () Bool)

(assert (=> b!2946860 (= e!1856433 EmptyExpr!9135)))

(declare-fun b!2946861 () Bool)

(declare-fun c!482132 () Bool)

(assert (=> b!2946861 (= c!482132 (isEmptyExpr!338 lt!1031328))))

(assert (=> b!2946861 (= e!1856431 e!1856425)))

(assert (= (and d!840647 c!482124) b!2946843))

(assert (= (and d!840647 (not c!482124)) b!2946853))

(assert (= (and b!2946853 c!482131) b!2946857))

(assert (= (and b!2946853 (not c!482131)) b!2946847))

(assert (= (and b!2946847 c!482127) b!2946860))

(assert (= (and b!2946847 (not c!482127)) b!2946852))

(assert (= (and b!2946852 c!482126) b!2946851))

(assert (= (and b!2946852 (not c!482126)) b!2946858))

(assert (= (and b!2946851 (not res!1216091)) b!2946838))

(assert (= (and b!2946851 c!482128) b!2946856))

(assert (= (and b!2946851 (not c!482128)) b!2946840))

(assert (= (and b!2946858 c!482125) b!2946845))

(assert (= (and b!2946858 (not c!482125)) b!2946844))

(assert (= (and b!2946845 c!482130) b!2946846))

(assert (= (and b!2946845 (not c!482130)) b!2946837))

(assert (= (and b!2946837 c!482122) b!2946859))

(assert (= (and b!2946837 (not c!482122)) b!2946842))

(assert (= (and b!2946844 (not res!1216090)) b!2946855))

(assert (= (and b!2946844 c!482129) b!2946850))

(assert (= (and b!2946844 (not c!482129)) b!2946861))

(assert (= (and b!2946861 c!482132) b!2946848))

(assert (= (and b!2946861 (not c!482132)) b!2946841))

(assert (= (and b!2946841 c!482123) b!2946854))

(assert (= (and b!2946841 (not c!482123)) b!2946849))

(assert (= (or b!2946845 b!2946844) bm!194450))

(assert (= (or b!2946845 b!2946844) bm!194456))

(assert (= (or b!2946845 b!2946855) bm!194454))

(assert (= (or b!2946837 b!2946844) bm!194455))

(assert (= (or b!2946838 b!2946841) bm!194452))

(assert (= (or b!2946851 bm!194450) bm!194453))

(assert (= (or b!2946851 bm!194454) bm!194451))

(assert (= (and d!840647 res!1216089) b!2946839))

(declare-fun m!3328065 () Bool)

(assert (=> bm!194451 m!3328065))

(declare-fun m!3328067 () Bool)

(assert (=> bm!194455 m!3328067))

(declare-fun m!3328069 () Bool)

(assert (=> d!840647 m!3328069))

(declare-fun m!3328071 () Bool)

(assert (=> d!840647 m!3328071))

(declare-fun m!3328073 () Bool)

(assert (=> bm!194453 m!3328073))

(declare-fun m!3328075 () Bool)

(assert (=> b!2946839 m!3328075))

(declare-fun m!3328077 () Bool)

(assert (=> b!2946839 m!3328077))

(declare-fun m!3328079 () Bool)

(assert (=> b!2946861 m!3328079))

(declare-fun m!3328081 () Bool)

(assert (=> bm!194456 m!3328081))

(declare-fun m!3328083 () Bool)

(assert (=> bm!194452 m!3328083))

(assert (=> b!2946398 d!840647))

(declare-fun b!2946862 () Bool)

(declare-fun c!482133 () Bool)

(declare-fun call!194464 () Bool)

(assert (=> b!2946862 (= c!482133 call!194464)))

(declare-fun e!1856446 () Regex!9135)

(declare-fun e!1856440 () Regex!9135)

(assert (=> b!2946862 (= e!1856446 e!1856440)))

(declare-fun b!2946863 () Bool)

(declare-fun e!1856438 () Bool)

(declare-fun call!194462 () Bool)

(assert (=> b!2946863 (= e!1856438 call!194462)))

(declare-fun bm!194457 () Bool)

(declare-fun call!194463 () Regex!9135)

(declare-fun call!194466 () Regex!9135)

(assert (=> bm!194457 (= call!194463 call!194466)))

(declare-fun b!2946864 () Bool)

(declare-fun e!1856449 () Bool)

(declare-fun lt!1031339 () Regex!9135)

(assert (=> b!2946864 (= e!1856449 (= (nullable!2897 lt!1031339) (nullable!2897 (regOne!18782 r!17423))))))

(declare-fun b!2946865 () Bool)

(declare-fun e!1856443 () Regex!9135)

(declare-fun lt!1031336 () Regex!9135)

(assert (=> b!2946865 (= e!1856443 (Star!9135 lt!1031336))))

(declare-fun c!482137 () Bool)

(declare-fun call!194467 () Bool)

(declare-fun bm!194458 () Bool)

(declare-fun c!482136 () Bool)

(declare-fun lt!1031335 () Regex!9135)

(declare-fun lt!1031337 () Regex!9135)

(assert (=> bm!194458 (= call!194467 (isEmptyLang!257 (ite c!482137 lt!1031336 (ite c!482136 lt!1031337 lt!1031335))))))

(declare-fun b!2946866 () Bool)

(declare-fun e!1856439 () Regex!9135)

(declare-fun e!1856444 () Regex!9135)

(assert (=> b!2946866 (= e!1856439 e!1856444)))

(declare-fun c!482134 () Bool)

(assert (=> b!2946866 (= c!482134 call!194462)))

(declare-fun d!840649 () Bool)

(assert (=> d!840649 e!1856449))

(declare-fun res!1216092 () Bool)

(assert (=> d!840649 (=> (not res!1216092) (not e!1856449))))

(assert (=> d!840649 (= res!1216092 (validRegex!3868 lt!1031339))))

(declare-fun e!1856450 () Regex!9135)

(assert (=> d!840649 (= lt!1031339 e!1856450)))

(declare-fun c!482135 () Bool)

(assert (=> d!840649 (= c!482135 ((_ is EmptyLang!9135) (regOne!18782 r!17423)))))

(assert (=> d!840649 (validRegex!3868 (regOne!18782 r!17423))))

(assert (=> d!840649 (= (simplify!140 (regOne!18782 r!17423)) lt!1031339)))

(declare-fun bm!194459 () Bool)

(assert (=> bm!194459 (= call!194462 (isEmptyExpr!338 (ite c!482137 lt!1031336 lt!1031335)))))

(declare-fun bm!194460 () Bool)

(assert (=> bm!194460 (= call!194466 (simplify!140 (ite c!482137 (reg!9464 (regOne!18782 r!17423)) (ite c!482136 (regOne!18783 (regOne!18782 r!17423)) (regTwo!18782 (regOne!18782 r!17423))))))))

(declare-fun b!2946867 () Bool)

(declare-fun lt!1031338 () Regex!9135)

(assert (=> b!2946867 (= e!1856440 (Union!9135 lt!1031337 lt!1031338))))

(declare-fun b!2946868 () Bool)

(assert (=> b!2946868 (= e!1856450 EmptyLang!9135)))

(declare-fun b!2946869 () Bool)

(declare-fun e!1856448 () Regex!9135)

(declare-fun e!1856445 () Regex!9135)

(assert (=> b!2946869 (= e!1856448 e!1856445)))

(declare-fun lt!1031334 () Regex!9135)

(declare-fun call!194465 () Regex!9135)

(assert (=> b!2946869 (= lt!1031334 call!194465)))

(assert (=> b!2946869 (= lt!1031335 call!194463)))

(declare-fun res!1216093 () Bool)

(assert (=> b!2946869 (= res!1216093 call!194464)))

(declare-fun e!1856441 () Bool)

(assert (=> b!2946869 (=> res!1216093 e!1856441)))

(declare-fun c!482140 () Bool)

(assert (=> b!2946869 (= c!482140 e!1856441)))

(declare-fun b!2946870 () Bool)

(assert (=> b!2946870 (= e!1856448 e!1856446)))

(assert (=> b!2946870 (= lt!1031337 call!194463)))

(assert (=> b!2946870 (= lt!1031338 call!194465)))

(declare-fun c!482141 () Bool)

(declare-fun call!194468 () Bool)

(assert (=> b!2946870 (= c!482141 call!194468)))

(declare-fun bm!194461 () Bool)

(assert (=> bm!194461 (= call!194468 call!194467)))

(declare-fun b!2946871 () Bool)

(assert (=> b!2946871 (= e!1856446 lt!1031338)))

(declare-fun b!2946872 () Bool)

(declare-fun c!482138 () Bool)

(assert (=> b!2946872 (= c!482138 ((_ is EmptyExpr!9135) (regOne!18782 r!17423)))))

(declare-fun e!1856451 () Regex!9135)

(declare-fun e!1856447 () Regex!9135)

(assert (=> b!2946872 (= e!1856451 e!1856447)))

(declare-fun b!2946873 () Bool)

(assert (=> b!2946873 (= e!1856439 lt!1031335)))

(declare-fun b!2946874 () Bool)

(assert (=> b!2946874 (= e!1856444 (Concat!14456 lt!1031334 lt!1031335))))

(declare-fun bm!194462 () Bool)

(assert (=> bm!194462 (= call!194464 (isEmptyLang!257 (ite c!482136 lt!1031338 lt!1031334)))))

(declare-fun b!2946875 () Bool)

(assert (=> b!2946875 (= e!1856445 EmptyLang!9135)))

(declare-fun b!2946876 () Bool)

(declare-fun c!482139 () Bool)

(assert (=> b!2946876 (= c!482139 e!1856438)))

(declare-fun res!1216094 () Bool)

(assert (=> b!2946876 (=> res!1216094 e!1856438)))

(assert (=> b!2946876 (= res!1216094 call!194467)))

(assert (=> b!2946876 (= lt!1031336 call!194466)))

(declare-fun e!1856442 () Regex!9135)

(assert (=> b!2946876 (= e!1856442 e!1856443)))

(declare-fun b!2946877 () Bool)

(assert (=> b!2946877 (= e!1856447 e!1856442)))

(assert (=> b!2946877 (= c!482137 ((_ is Star!9135) (regOne!18782 r!17423)))))

(declare-fun b!2946878 () Bool)

(assert (=> b!2946878 (= e!1856450 e!1856451)))

(declare-fun c!482142 () Bool)

(assert (=> b!2946878 (= c!482142 ((_ is ElementMatch!9135) (regOne!18782 r!17423)))))

(declare-fun b!2946879 () Bool)

(assert (=> b!2946879 (= e!1856444 lt!1031334)))

(declare-fun b!2946880 () Bool)

(assert (=> b!2946880 (= e!1856441 call!194468)))

(declare-fun b!2946881 () Bool)

(assert (=> b!2946881 (= e!1856443 EmptyExpr!9135)))

(declare-fun bm!194463 () Bool)

(assert (=> bm!194463 (= call!194465 (simplify!140 (ite c!482136 (regTwo!18783 (regOne!18782 r!17423)) (regOne!18782 (regOne!18782 r!17423)))))))

(declare-fun b!2946882 () Bool)

(assert (=> b!2946882 (= e!1856451 (regOne!18782 r!17423))))

(declare-fun b!2946883 () Bool)

(assert (=> b!2946883 (= c!482136 ((_ is Union!9135) (regOne!18782 r!17423)))))

(assert (=> b!2946883 (= e!1856442 e!1856448)))

(declare-fun b!2946884 () Bool)

(assert (=> b!2946884 (= e!1856440 lt!1031337)))

(declare-fun b!2946885 () Bool)

(assert (=> b!2946885 (= e!1856447 EmptyExpr!9135)))

(declare-fun b!2946886 () Bool)

(declare-fun c!482143 () Bool)

(assert (=> b!2946886 (= c!482143 (isEmptyExpr!338 lt!1031334))))

(assert (=> b!2946886 (= e!1856445 e!1856439)))

(assert (= (and d!840649 c!482135) b!2946868))

(assert (= (and d!840649 (not c!482135)) b!2946878))

(assert (= (and b!2946878 c!482142) b!2946882))

(assert (= (and b!2946878 (not c!482142)) b!2946872))

(assert (= (and b!2946872 c!482138) b!2946885))

(assert (= (and b!2946872 (not c!482138)) b!2946877))

(assert (= (and b!2946877 c!482137) b!2946876))

(assert (= (and b!2946877 (not c!482137)) b!2946883))

(assert (= (and b!2946876 (not res!1216094)) b!2946863))

(assert (= (and b!2946876 c!482139) b!2946881))

(assert (= (and b!2946876 (not c!482139)) b!2946865))

(assert (= (and b!2946883 c!482136) b!2946870))

(assert (= (and b!2946883 (not c!482136)) b!2946869))

(assert (= (and b!2946870 c!482141) b!2946871))

(assert (= (and b!2946870 (not c!482141)) b!2946862))

(assert (= (and b!2946862 c!482133) b!2946884))

(assert (= (and b!2946862 (not c!482133)) b!2946867))

(assert (= (and b!2946869 (not res!1216093)) b!2946880))

(assert (= (and b!2946869 c!482140) b!2946875))

(assert (= (and b!2946869 (not c!482140)) b!2946886))

(assert (= (and b!2946886 c!482143) b!2946873))

(assert (= (and b!2946886 (not c!482143)) b!2946866))

(assert (= (and b!2946866 c!482134) b!2946879))

(assert (= (and b!2946866 (not c!482134)) b!2946874))

(assert (= (or b!2946870 b!2946869) bm!194457))

(assert (= (or b!2946870 b!2946869) bm!194463))

(assert (= (or b!2946870 b!2946880) bm!194461))

(assert (= (or b!2946862 b!2946869) bm!194462))

(assert (= (or b!2946863 b!2946866) bm!194459))

(assert (= (or b!2946876 bm!194457) bm!194460))

(assert (= (or b!2946876 bm!194461) bm!194458))

(assert (= (and d!840649 res!1216092) b!2946864))

(declare-fun m!3328085 () Bool)

(assert (=> bm!194458 m!3328085))

(declare-fun m!3328087 () Bool)

(assert (=> bm!194462 m!3328087))

(declare-fun m!3328089 () Bool)

(assert (=> d!840649 m!3328089))

(declare-fun m!3328091 () Bool)

(assert (=> d!840649 m!3328091))

(declare-fun m!3328093 () Bool)

(assert (=> bm!194460 m!3328093))

(declare-fun m!3328095 () Bool)

(assert (=> b!2946864 m!3328095))

(declare-fun m!3328097 () Bool)

(assert (=> b!2946864 m!3328097))

(declare-fun m!3328099 () Bool)

(assert (=> b!2946886 m!3328099))

(declare-fun m!3328101 () Bool)

(assert (=> bm!194463 m!3328101))

(declare-fun m!3328103 () Bool)

(assert (=> bm!194459 m!3328103))

(assert (=> b!2946398 d!840649))

(declare-fun d!840651 () Bool)

(assert (=> d!840651 (= (isEmptyLang!257 lt!1031279) ((_ is EmptyLang!9135) lt!1031279))))

(assert (=> b!2946392 d!840651))

(declare-fun e!1856454 () Bool)

(assert (=> b!2946390 (= tp!942410 e!1856454)))

(declare-fun b!2946897 () Bool)

(assert (=> b!2946897 (= e!1856454 tp_is_empty!15833)))

(declare-fun b!2946898 () Bool)

(declare-fun tp!942465 () Bool)

(declare-fun tp!942466 () Bool)

(assert (=> b!2946898 (= e!1856454 (and tp!942465 tp!942466))))

(declare-fun b!2946899 () Bool)

(declare-fun tp!942462 () Bool)

(assert (=> b!2946899 (= e!1856454 tp!942462)))

(declare-fun b!2946900 () Bool)

(declare-fun tp!942464 () Bool)

(declare-fun tp!942463 () Bool)

(assert (=> b!2946900 (= e!1856454 (and tp!942464 tp!942463))))

(assert (= (and b!2946390 ((_ is ElementMatch!9135) (reg!9464 r!17423))) b!2946897))

(assert (= (and b!2946390 ((_ is Concat!14456) (reg!9464 r!17423))) b!2946898))

(assert (= (and b!2946390 ((_ is Star!9135) (reg!9464 r!17423))) b!2946899))

(assert (= (and b!2946390 ((_ is Union!9135) (reg!9464 r!17423))) b!2946900))

(declare-fun e!1856455 () Bool)

(assert (=> b!2946400 (= tp!942408 e!1856455)))

(declare-fun b!2946901 () Bool)

(assert (=> b!2946901 (= e!1856455 tp_is_empty!15833)))

(declare-fun b!2946902 () Bool)

(declare-fun tp!942470 () Bool)

(declare-fun tp!942471 () Bool)

(assert (=> b!2946902 (= e!1856455 (and tp!942470 tp!942471))))

(declare-fun b!2946903 () Bool)

(declare-fun tp!942467 () Bool)

(assert (=> b!2946903 (= e!1856455 tp!942467)))

(declare-fun b!2946904 () Bool)

(declare-fun tp!942469 () Bool)

(declare-fun tp!942468 () Bool)

(assert (=> b!2946904 (= e!1856455 (and tp!942469 tp!942468))))

(assert (= (and b!2946400 ((_ is ElementMatch!9135) (regOne!18782 r!17423))) b!2946901))

(assert (= (and b!2946400 ((_ is Concat!14456) (regOne!18782 r!17423))) b!2946902))

(assert (= (and b!2946400 ((_ is Star!9135) (regOne!18782 r!17423))) b!2946903))

(assert (= (and b!2946400 ((_ is Union!9135) (regOne!18782 r!17423))) b!2946904))

(declare-fun e!1856456 () Bool)

(assert (=> b!2946400 (= tp!942412 e!1856456)))

(declare-fun b!2946905 () Bool)

(assert (=> b!2946905 (= e!1856456 tp_is_empty!15833)))

(declare-fun b!2946906 () Bool)

(declare-fun tp!942475 () Bool)

(declare-fun tp!942476 () Bool)

(assert (=> b!2946906 (= e!1856456 (and tp!942475 tp!942476))))

(declare-fun b!2946907 () Bool)

(declare-fun tp!942472 () Bool)

(assert (=> b!2946907 (= e!1856456 tp!942472)))

(declare-fun b!2946908 () Bool)

(declare-fun tp!942474 () Bool)

(declare-fun tp!942473 () Bool)

(assert (=> b!2946908 (= e!1856456 (and tp!942474 tp!942473))))

(assert (= (and b!2946400 ((_ is ElementMatch!9135) (regTwo!18782 r!17423))) b!2946905))

(assert (= (and b!2946400 ((_ is Concat!14456) (regTwo!18782 r!17423))) b!2946906))

(assert (= (and b!2946400 ((_ is Star!9135) (regTwo!18782 r!17423))) b!2946907))

(assert (= (and b!2946400 ((_ is Union!9135) (regTwo!18782 r!17423))) b!2946908))

(declare-fun e!1856457 () Bool)

(assert (=> b!2946394 (= tp!942411 e!1856457)))

(declare-fun b!2946909 () Bool)

(assert (=> b!2946909 (= e!1856457 tp_is_empty!15833)))

(declare-fun b!2946910 () Bool)

(declare-fun tp!942480 () Bool)

(declare-fun tp!942481 () Bool)

(assert (=> b!2946910 (= e!1856457 (and tp!942480 tp!942481))))

(declare-fun b!2946911 () Bool)

(declare-fun tp!942477 () Bool)

(assert (=> b!2946911 (= e!1856457 tp!942477)))

(declare-fun b!2946912 () Bool)

(declare-fun tp!942479 () Bool)

(declare-fun tp!942478 () Bool)

(assert (=> b!2946912 (= e!1856457 (and tp!942479 tp!942478))))

(assert (= (and b!2946394 ((_ is ElementMatch!9135) (regOne!18783 r!17423))) b!2946909))

(assert (= (and b!2946394 ((_ is Concat!14456) (regOne!18783 r!17423))) b!2946910))

(assert (= (and b!2946394 ((_ is Star!9135) (regOne!18783 r!17423))) b!2946911))

(assert (= (and b!2946394 ((_ is Union!9135) (regOne!18783 r!17423))) b!2946912))

(declare-fun e!1856458 () Bool)

(assert (=> b!2946394 (= tp!942409 e!1856458)))

(declare-fun b!2946913 () Bool)

(assert (=> b!2946913 (= e!1856458 tp_is_empty!15833)))

(declare-fun b!2946914 () Bool)

(declare-fun tp!942485 () Bool)

(declare-fun tp!942486 () Bool)

(assert (=> b!2946914 (= e!1856458 (and tp!942485 tp!942486))))

(declare-fun b!2946915 () Bool)

(declare-fun tp!942482 () Bool)

(assert (=> b!2946915 (= e!1856458 tp!942482)))

(declare-fun b!2946916 () Bool)

(declare-fun tp!942484 () Bool)

(declare-fun tp!942483 () Bool)

(assert (=> b!2946916 (= e!1856458 (and tp!942484 tp!942483))))

(assert (= (and b!2946394 ((_ is ElementMatch!9135) (regTwo!18783 r!17423))) b!2946913))

(assert (= (and b!2946394 ((_ is Concat!14456) (regTwo!18783 r!17423))) b!2946914))

(assert (= (and b!2946394 ((_ is Star!9135) (regTwo!18783 r!17423))) b!2946915))

(assert (= (and b!2946394 ((_ is Union!9135) (regTwo!18783 r!17423))) b!2946916))

(declare-fun b!2946921 () Bool)

(declare-fun e!1856461 () Bool)

(declare-fun tp!942489 () Bool)

(assert (=> b!2946921 (= e!1856461 (and tp_is_empty!15833 tp!942489))))

(assert (=> b!2946391 (= tp!942413 e!1856461)))

(assert (= (and b!2946391 ((_ is Cons!34876) (t!234065 s!11993))) b!2946921))

(check-sat (not b!2946916) (not b!2946914) (not b!2946839) (not b!2946704) (not bm!194414) (not b!2946861) (not bm!194460) (not b!2946921) (not bm!194456) (not d!840647) (not bm!194434) (not b!2946611) (not bm!194462) (not bm!194453) (not bm!194451) (not b!2946910) (not b!2946898) (not b!2946864) (not bm!194459) (not bm!194455) (not bm!194458) (not b!2946912) (not b!2946902) (not d!840649) (not b!2946703) (not b!2946911) (not b!2946779) (not bm!194433) (not b!2946904) (not d!840627) (not b!2946906) (not b!2946900) (not bm!194431) (not b!2946609) tp_is_empty!15833 (not b!2946698) (not b!2946903) (not bm!194420) (not bm!194430) (not bm!194413) (not b!2946699) (not b!2946915) (not b!2946770) (not b!2946886) (not bm!194452) (not b!2946908) (not b!2946907) (not bm!194463) (not d!840631) (not b!2946899) (not b!2946696) (not b!2946705))
(check-sat)
