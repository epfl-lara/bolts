; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!90670 () Bool)

(assert start!90670)

(declare-fun b!1052399 () Bool)

(assert (=> b!1052399 true))

(assert (=> b!1052399 true))

(declare-fun lambda!37904 () Int)

(declare-fun lambda!37903 () Int)

(assert (=> b!1052399 (not (= lambda!37904 lambda!37903))))

(assert (=> b!1052399 true))

(assert (=> b!1052399 true))

(declare-fun bs!251189 () Bool)

(declare-fun b!1052404 () Bool)

(assert (= bs!251189 (and b!1052404 b!1052399)))

(declare-datatypes ((C!6356 0))(
  ( (C!6357 (val!3426 Int)) )
))
(declare-datatypes ((Regex!2893 0))(
  ( (ElementMatch!2893 (c!175954 C!6356)) (Concat!4726 (regOne!6298 Regex!2893) (regTwo!6298 Regex!2893)) (EmptyExpr!2893) (Star!2893 (reg!3222 Regex!2893)) (EmptyLang!2893) (Union!2893 (regOne!6299 Regex!2893) (regTwo!6299 Regex!2893)) )
))
(declare-fun r!15766 () Regex!2893)

(declare-fun lt!358369 () Regex!2893)

(declare-fun lt!358367 () Regex!2893)

(declare-fun lambda!37905 () Int)

(assert (=> bs!251189 (= (and (= lt!358369 (regOne!6298 r!15766)) (= lt!358367 (regTwo!6298 r!15766))) (= lambda!37905 lambda!37903))))

(assert (=> bs!251189 (not (= lambda!37905 lambda!37904))))

(assert (=> b!1052404 true))

(assert (=> b!1052404 true))

(assert (=> b!1052404 true))

(declare-fun lambda!37906 () Int)

(assert (=> bs!251189 (not (= lambda!37906 lambda!37903))))

(assert (=> bs!251189 (= (and (= lt!358369 (regOne!6298 r!15766)) (= lt!358367 (regTwo!6298 r!15766))) (= lambda!37906 lambda!37904))))

(assert (=> b!1052404 (not (= lambda!37906 lambda!37905))))

(assert (=> b!1052404 true))

(assert (=> b!1052404 true))

(assert (=> b!1052404 true))

(declare-fun b!1052397 () Bool)

(declare-fun e!668592 () Bool)

(declare-fun tp!317331 () Bool)

(declare-fun tp!317330 () Bool)

(assert (=> b!1052397 (= e!668592 (and tp!317331 tp!317330))))

(declare-fun res!470580 () Bool)

(declare-fun e!668595 () Bool)

(assert (=> start!90670 (=> (not res!470580) (not e!668595))))

(declare-fun validRegex!1362 (Regex!2893) Bool)

(assert (=> start!90670 (= res!470580 (validRegex!1362 r!15766))))

(assert (=> start!90670 e!668595))

(assert (=> start!90670 e!668592))

(declare-fun e!668588 () Bool)

(assert (=> start!90670 e!668588))

(declare-fun b!1052398 () Bool)

(declare-fun tp_is_empty!5429 () Bool)

(assert (=> b!1052398 (= e!668592 tp_is_empty!5429)))

(declare-fun e!668591 () Bool)

(declare-fun e!668594 () Bool)

(assert (=> b!1052399 (= e!668591 e!668594)))

(declare-fun res!470581 () Bool)

(assert (=> b!1052399 (=> res!470581 e!668594)))

(declare-datatypes ((List!10123 0))(
  ( (Nil!10107) (Cons!10107 (h!15508 C!6356) (t!101169 List!10123)) )
))
(declare-fun s!10566 () List!10123)

(declare-fun isEmpty!6515 (List!10123) Bool)

(assert (=> b!1052399 (= res!470581 (isEmpty!6515 s!10566))))

(declare-fun Exists!620 (Int) Bool)

(assert (=> b!1052399 (= (Exists!620 lambda!37903) (Exists!620 lambda!37904))))

(declare-datatypes ((Unit!15461 0))(
  ( (Unit!15462) )
))
(declare-fun lt!358358 () Unit!15461)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!308 (Regex!2893 Regex!2893 List!10123) Unit!15461)

(assert (=> b!1052399 (= lt!358358 (lemmaExistCutMatchRandMatchRSpecEquivalent!308 (regOne!6298 r!15766) (regTwo!6298 r!15766) s!10566))))

(declare-datatypes ((tuple2!11552 0))(
  ( (tuple2!11553 (_1!6602 List!10123) (_2!6602 List!10123)) )
))
(declare-datatypes ((Option!2418 0))(
  ( (None!2417) (Some!2417 (v!19834 tuple2!11552)) )
))
(declare-fun isDefined!2060 (Option!2418) Bool)

(declare-fun findConcatSeparation!524 (Regex!2893 Regex!2893 List!10123 List!10123 List!10123) Option!2418)

(assert (=> b!1052399 (= (isDefined!2060 (findConcatSeparation!524 (regOne!6298 r!15766) (regTwo!6298 r!15766) Nil!10107 s!10566 s!10566)) (Exists!620 lambda!37903))))

(declare-fun lt!358360 () Unit!15461)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!524 (Regex!2893 Regex!2893 List!10123) Unit!15461)

(assert (=> b!1052399 (= lt!358360 (lemmaFindConcatSeparationEquivalentToExists!524 (regOne!6298 r!15766) (regTwo!6298 r!15766) s!10566))))

(declare-fun b!1052400 () Bool)

(declare-fun tp!317327 () Bool)

(declare-fun tp!317332 () Bool)

(assert (=> b!1052400 (= e!668592 (and tp!317327 tp!317332))))

(declare-fun b!1052401 () Bool)

(declare-fun tp!317329 () Bool)

(assert (=> b!1052401 (= e!668588 (and tp_is_empty!5429 tp!317329))))

(declare-fun b!1052402 () Bool)

(assert (=> b!1052402 (= e!668595 (not e!668591))))

(declare-fun res!470583 () Bool)

(assert (=> b!1052402 (=> res!470583 e!668591)))

(declare-fun lt!358366 () Bool)

(get-info :version)

(assert (=> b!1052402 (= res!470583 (or lt!358366 (and ((_ is Concat!4726) r!15766) ((_ is EmptyExpr!2893) (regOne!6298 r!15766))) (and ((_ is Concat!4726) r!15766) ((_ is EmptyExpr!2893) (regTwo!6298 r!15766))) (not ((_ is Concat!4726) r!15766))))))

(declare-fun matchRSpec!692 (Regex!2893 List!10123) Bool)

(assert (=> b!1052402 (= lt!358366 (matchRSpec!692 r!15766 s!10566))))

(declare-fun matchR!1429 (Regex!2893 List!10123) Bool)

(assert (=> b!1052402 (= lt!358366 (matchR!1429 r!15766 s!10566))))

(declare-fun lt!358370 () Unit!15461)

(declare-fun mainMatchTheorem!692 (Regex!2893 List!10123) Unit!15461)

(assert (=> b!1052402 (= lt!358370 (mainMatchTheorem!692 r!15766 s!10566))))

(declare-fun b!1052403 () Bool)

(declare-fun e!668590 () Bool)

(assert (=> b!1052403 (= e!668594 e!668590)))

(declare-fun res!470579 () Bool)

(assert (=> b!1052403 (=> res!470579 e!668590)))

(declare-fun lt!358364 () Regex!2893)

(assert (=> b!1052403 (= res!470579 (not (matchR!1429 lt!358364 s!10566)))))

(assert (=> b!1052403 (= lt!358364 (Concat!4726 lt!358369 lt!358367))))

(declare-fun removeUselessConcat!442 (Regex!2893) Regex!2893)

(assert (=> b!1052403 (= lt!358367 (removeUselessConcat!442 (regTwo!6298 r!15766)))))

(assert (=> b!1052403 (= lt!358369 (removeUselessConcat!442 (regOne!6298 r!15766)))))

(declare-fun e!668589 () Bool)

(assert (=> b!1052404 (= e!668590 e!668589)))

(declare-fun res!470582 () Bool)

(assert (=> b!1052404 (=> res!470582 e!668589)))

(declare-fun lt!358371 () Bool)

(assert (=> b!1052404 (= res!470582 (not lt!358371))))

(assert (=> b!1052404 (= (Exists!620 lambda!37905) (Exists!620 lambda!37906))))

(declare-fun lt!358357 () Unit!15461)

(assert (=> b!1052404 (= lt!358357 (lemmaExistCutMatchRandMatchRSpecEquivalent!308 lt!358369 lt!358367 s!10566))))

(assert (=> b!1052404 (= lt!358371 (Exists!620 lambda!37905))))

(declare-fun lt!358362 () Option!2418)

(assert (=> b!1052404 (= lt!358371 (isDefined!2060 lt!358362))))

(assert (=> b!1052404 (= lt!358362 (findConcatSeparation!524 lt!358369 lt!358367 Nil!10107 s!10566 s!10566))))

(declare-fun lt!358361 () Unit!15461)

(assert (=> b!1052404 (= lt!358361 (lemmaFindConcatSeparationEquivalentToExists!524 lt!358369 lt!358367 s!10566))))

(assert (=> b!1052404 (matchRSpec!692 lt!358364 s!10566)))

(declare-fun lt!358365 () Unit!15461)

(assert (=> b!1052404 (= lt!358365 (mainMatchTheorem!692 lt!358364 s!10566))))

(declare-fun b!1052405 () Bool)

(declare-fun tp!317328 () Bool)

(assert (=> b!1052405 (= e!668592 tp!317328)))

(declare-fun b!1052406 () Bool)

(declare-fun e!668593 () Bool)

(assert (=> b!1052406 (= e!668593 (validRegex!1362 (regTwo!6298 r!15766)))))

(declare-fun b!1052407 () Bool)

(assert (=> b!1052407 (= e!668589 e!668593)))

(declare-fun res!470584 () Bool)

(assert (=> b!1052407 (=> (not res!470584) (not e!668593))))

(assert (=> b!1052407 (= res!470584 (validRegex!1362 (regOne!6298 r!15766)))))

(declare-fun lt!358363 () tuple2!11552)

(assert (=> b!1052407 (= (matchR!1429 (regTwo!6298 r!15766) (_2!6602 lt!358363)) (matchR!1429 lt!358367 (_2!6602 lt!358363)))))

(declare-fun lt!358368 () Unit!15461)

(declare-fun lemmaRemoveUselessConcatSound!266 (Regex!2893 List!10123) Unit!15461)

(assert (=> b!1052407 (= lt!358368 (lemmaRemoveUselessConcatSound!266 (regTwo!6298 r!15766) (_2!6602 lt!358363)))))

(assert (=> b!1052407 (= (matchR!1429 (regOne!6298 r!15766) (_1!6602 lt!358363)) (matchR!1429 lt!358369 (_1!6602 lt!358363)))))

(declare-fun lt!358359 () Unit!15461)

(assert (=> b!1052407 (= lt!358359 (lemmaRemoveUselessConcatSound!266 (regOne!6298 r!15766) (_1!6602 lt!358363)))))

(declare-fun get!3617 (Option!2418) tuple2!11552)

(assert (=> b!1052407 (= lt!358363 (get!3617 lt!358362))))

(assert (= (and start!90670 res!470580) b!1052402))

(assert (= (and b!1052402 (not res!470583)) b!1052399))

(assert (= (and b!1052399 (not res!470581)) b!1052403))

(assert (= (and b!1052403 (not res!470579)) b!1052404))

(assert (= (and b!1052404 (not res!470582)) b!1052407))

(assert (= (and b!1052407 res!470584) b!1052406))

(assert (= (and start!90670 ((_ is ElementMatch!2893) r!15766)) b!1052398))

(assert (= (and start!90670 ((_ is Concat!4726) r!15766)) b!1052397))

(assert (= (and start!90670 ((_ is Star!2893) r!15766)) b!1052405))

(assert (= (and start!90670 ((_ is Union!2893) r!15766)) b!1052400))

(assert (= (and start!90670 ((_ is Cons!10107) s!10566)) b!1052401))

(declare-fun m!1216783 () Bool)

(assert (=> b!1052406 m!1216783))

(declare-fun m!1216785 () Bool)

(assert (=> b!1052402 m!1216785))

(declare-fun m!1216787 () Bool)

(assert (=> b!1052402 m!1216787))

(declare-fun m!1216789 () Bool)

(assert (=> b!1052402 m!1216789))

(declare-fun m!1216791 () Bool)

(assert (=> start!90670 m!1216791))

(declare-fun m!1216793 () Bool)

(assert (=> b!1052399 m!1216793))

(declare-fun m!1216795 () Bool)

(assert (=> b!1052399 m!1216795))

(declare-fun m!1216797 () Bool)

(assert (=> b!1052399 m!1216797))

(declare-fun m!1216799 () Bool)

(assert (=> b!1052399 m!1216799))

(declare-fun m!1216801 () Bool)

(assert (=> b!1052399 m!1216801))

(declare-fun m!1216803 () Bool)

(assert (=> b!1052399 m!1216803))

(assert (=> b!1052399 m!1216803))

(declare-fun m!1216805 () Bool)

(assert (=> b!1052399 m!1216805))

(assert (=> b!1052399 m!1216795))

(declare-fun m!1216807 () Bool)

(assert (=> b!1052404 m!1216807))

(declare-fun m!1216809 () Bool)

(assert (=> b!1052404 m!1216809))

(assert (=> b!1052404 m!1216809))

(declare-fun m!1216811 () Bool)

(assert (=> b!1052404 m!1216811))

(declare-fun m!1216813 () Bool)

(assert (=> b!1052404 m!1216813))

(declare-fun m!1216815 () Bool)

(assert (=> b!1052404 m!1216815))

(declare-fun m!1216817 () Bool)

(assert (=> b!1052404 m!1216817))

(declare-fun m!1216819 () Bool)

(assert (=> b!1052404 m!1216819))

(declare-fun m!1216821 () Bool)

(assert (=> b!1052404 m!1216821))

(declare-fun m!1216823 () Bool)

(assert (=> b!1052403 m!1216823))

(declare-fun m!1216825 () Bool)

(assert (=> b!1052403 m!1216825))

(declare-fun m!1216827 () Bool)

(assert (=> b!1052403 m!1216827))

(declare-fun m!1216829 () Bool)

(assert (=> b!1052407 m!1216829))

(declare-fun m!1216831 () Bool)

(assert (=> b!1052407 m!1216831))

(declare-fun m!1216833 () Bool)

(assert (=> b!1052407 m!1216833))

(declare-fun m!1216835 () Bool)

(assert (=> b!1052407 m!1216835))

(declare-fun m!1216837 () Bool)

(assert (=> b!1052407 m!1216837))

(declare-fun m!1216839 () Bool)

(assert (=> b!1052407 m!1216839))

(declare-fun m!1216841 () Bool)

(assert (=> b!1052407 m!1216841))

(declare-fun m!1216843 () Bool)

(assert (=> b!1052407 m!1216843))

(check-sat (not b!1052400) (not b!1052397) (not b!1052406) (not start!90670) (not b!1052404) (not b!1052405) (not b!1052403) (not b!1052402) tp_is_empty!5429 (not b!1052399) (not b!1052401) (not b!1052407))
(check-sat)
(get-model)

(declare-fun b!1052440 () Bool)

(declare-fun e!668616 () Bool)

(declare-fun head!1939 (List!10123) C!6356)

(assert (=> b!1052440 (= e!668616 (= (head!1939 s!10566) (c!175954 lt!358364)))))

(declare-fun b!1052441 () Bool)

(declare-fun e!668612 () Bool)

(declare-fun lt!358374 () Bool)

(declare-fun call!74938 () Bool)

(assert (=> b!1052441 (= e!668612 (= lt!358374 call!74938))))

(declare-fun b!1052442 () Bool)

(declare-fun e!668610 () Bool)

(assert (=> b!1052442 (= e!668610 (not lt!358374))))

(declare-fun b!1052443 () Bool)

(declare-fun res!470604 () Bool)

(assert (=> b!1052443 (=> (not res!470604) (not e!668616))))

(assert (=> b!1052443 (= res!470604 (not call!74938))))

(declare-fun b!1052444 () Bool)

(assert (=> b!1052444 (= e!668612 e!668610)))

(declare-fun c!175963 () Bool)

(assert (=> b!1052444 (= c!175963 ((_ is EmptyLang!2893) lt!358364))))

(declare-fun d!299658 () Bool)

(assert (=> d!299658 e!668612))

(declare-fun c!175962 () Bool)

(assert (=> d!299658 (= c!175962 ((_ is EmptyExpr!2893) lt!358364))))

(declare-fun e!668613 () Bool)

(assert (=> d!299658 (= lt!358374 e!668613)))

(declare-fun c!175961 () Bool)

(assert (=> d!299658 (= c!175961 (isEmpty!6515 s!10566))))

(assert (=> d!299658 (validRegex!1362 lt!358364)))

(assert (=> d!299658 (= (matchR!1429 lt!358364 s!10566) lt!358374)))

(declare-fun b!1052445 () Bool)

(declare-fun res!470608 () Bool)

(declare-fun e!668614 () Bool)

(assert (=> b!1052445 (=> res!470608 e!668614)))

(assert (=> b!1052445 (= res!470608 (not ((_ is ElementMatch!2893) lt!358364)))))

(assert (=> b!1052445 (= e!668610 e!668614)))

(declare-fun b!1052446 () Bool)

(declare-fun e!668611 () Bool)

(assert (=> b!1052446 (= e!668611 (not (= (head!1939 s!10566) (c!175954 lt!358364))))))

(declare-fun b!1052447 () Bool)

(declare-fun e!668615 () Bool)

(assert (=> b!1052447 (= e!668614 e!668615)))

(declare-fun res!470603 () Bool)

(assert (=> b!1052447 (=> (not res!470603) (not e!668615))))

(assert (=> b!1052447 (= res!470603 (not lt!358374))))

(declare-fun b!1052448 () Bool)

(declare-fun res!470607 () Bool)

(assert (=> b!1052448 (=> res!470607 e!668611)))

(declare-fun tail!1501 (List!10123) List!10123)

(assert (=> b!1052448 (= res!470607 (not (isEmpty!6515 (tail!1501 s!10566))))))

(declare-fun bm!74933 () Bool)

(assert (=> bm!74933 (= call!74938 (isEmpty!6515 s!10566))))

(declare-fun b!1052449 () Bool)

(declare-fun res!470602 () Bool)

(assert (=> b!1052449 (=> (not res!470602) (not e!668616))))

(assert (=> b!1052449 (= res!470602 (isEmpty!6515 (tail!1501 s!10566)))))

(declare-fun b!1052450 () Bool)

(declare-fun res!470605 () Bool)

(assert (=> b!1052450 (=> res!470605 e!668614)))

(assert (=> b!1052450 (= res!470605 e!668616)))

(declare-fun res!470606 () Bool)

(assert (=> b!1052450 (=> (not res!470606) (not e!668616))))

(assert (=> b!1052450 (= res!470606 lt!358374)))

(declare-fun b!1052451 () Bool)

(declare-fun derivativeStep!784 (Regex!2893 C!6356) Regex!2893)

(assert (=> b!1052451 (= e!668613 (matchR!1429 (derivativeStep!784 lt!358364 (head!1939 s!10566)) (tail!1501 s!10566)))))

(declare-fun b!1052452 () Bool)

(declare-fun nullable!984 (Regex!2893) Bool)

(assert (=> b!1052452 (= e!668613 (nullable!984 lt!358364))))

(declare-fun b!1052453 () Bool)

(assert (=> b!1052453 (= e!668615 e!668611)))

(declare-fun res!470601 () Bool)

(assert (=> b!1052453 (=> res!470601 e!668611)))

(assert (=> b!1052453 (= res!470601 call!74938)))

(assert (= (and d!299658 c!175961) b!1052452))

(assert (= (and d!299658 (not c!175961)) b!1052451))

(assert (= (and d!299658 c!175962) b!1052441))

(assert (= (and d!299658 (not c!175962)) b!1052444))

(assert (= (and b!1052444 c!175963) b!1052442))

(assert (= (and b!1052444 (not c!175963)) b!1052445))

(assert (= (and b!1052445 (not res!470608)) b!1052450))

(assert (= (and b!1052450 res!470606) b!1052443))

(assert (= (and b!1052443 res!470604) b!1052449))

(assert (= (and b!1052449 res!470602) b!1052440))

(assert (= (and b!1052450 (not res!470605)) b!1052447))

(assert (= (and b!1052447 res!470603) b!1052453))

(assert (= (and b!1052453 (not res!470601)) b!1052448))

(assert (= (and b!1052448 (not res!470607)) b!1052446))

(assert (= (or b!1052441 b!1052443 b!1052453) bm!74933))

(declare-fun m!1216845 () Bool)

(assert (=> b!1052446 m!1216845))

(declare-fun m!1216847 () Bool)

(assert (=> b!1052448 m!1216847))

(assert (=> b!1052448 m!1216847))

(declare-fun m!1216849 () Bool)

(assert (=> b!1052448 m!1216849))

(assert (=> b!1052451 m!1216845))

(assert (=> b!1052451 m!1216845))

(declare-fun m!1216851 () Bool)

(assert (=> b!1052451 m!1216851))

(assert (=> b!1052451 m!1216847))

(assert (=> b!1052451 m!1216851))

(assert (=> b!1052451 m!1216847))

(declare-fun m!1216853 () Bool)

(assert (=> b!1052451 m!1216853))

(assert (=> b!1052449 m!1216847))

(assert (=> b!1052449 m!1216847))

(assert (=> b!1052449 m!1216849))

(declare-fun m!1216855 () Bool)

(assert (=> b!1052452 m!1216855))

(assert (=> d!299658 m!1216801))

(declare-fun m!1216857 () Bool)

(assert (=> d!299658 m!1216857))

(assert (=> b!1052440 m!1216845))

(assert (=> bm!74933 m!1216801))

(assert (=> b!1052403 d!299658))

(declare-fun bm!74953 () Bool)

(declare-fun call!74962 () Regex!2893)

(declare-fun call!74960 () Regex!2893)

(assert (=> bm!74953 (= call!74962 call!74960)))

(declare-fun d!299660 () Bool)

(declare-fun e!668654 () Bool)

(assert (=> d!299660 e!668654))

(declare-fun res!470626 () Bool)

(assert (=> d!299660 (=> (not res!470626) (not e!668654))))

(declare-fun lt!358377 () Regex!2893)

(assert (=> d!299660 (= res!470626 (validRegex!1362 lt!358377))))

(declare-fun e!668651 () Regex!2893)

(assert (=> d!299660 (= lt!358377 e!668651)))

(declare-fun c!175982 () Bool)

(assert (=> d!299660 (= c!175982 (and ((_ is Concat!4726) (regTwo!6298 r!15766)) ((_ is EmptyExpr!2893) (regOne!6298 (regTwo!6298 r!15766)))))))

(assert (=> d!299660 (validRegex!1362 (regTwo!6298 r!15766))))

(assert (=> d!299660 (= (removeUselessConcat!442 (regTwo!6298 r!15766)) lt!358377)))

(declare-fun bm!74954 () Bool)

(declare-fun call!74959 () Regex!2893)

(declare-fun c!175984 () Bool)

(assert (=> bm!74954 (= call!74959 (removeUselessConcat!442 (ite c!175984 (regOne!6298 (regTwo!6298 r!15766)) (regOne!6299 (regTwo!6298 r!15766)))))))

(declare-fun c!175981 () Bool)

(declare-fun bm!74955 () Bool)

(declare-fun call!74961 () Regex!2893)

(declare-fun c!175980 () Bool)

(assert (=> bm!74955 (= call!74961 (removeUselessConcat!442 (ite c!175982 (regTwo!6298 (regTwo!6298 r!15766)) (ite c!175980 (regOne!6298 (regTwo!6298 r!15766)) (ite c!175984 (regTwo!6298 (regTwo!6298 r!15766)) (ite c!175981 (regTwo!6299 (regTwo!6298 r!15766)) (reg!3222 (regTwo!6298 r!15766))))))))))

(declare-fun bm!74956 () Bool)

(declare-fun call!74958 () Regex!2893)

(assert (=> bm!74956 (= call!74958 call!74962)))

(declare-fun b!1052503 () Bool)

(assert (=> b!1052503 (= c!175984 ((_ is Concat!4726) (regTwo!6298 r!15766)))))

(declare-fun e!668653 () Regex!2893)

(declare-fun e!668652 () Regex!2893)

(assert (=> b!1052503 (= e!668653 e!668652)))

(declare-fun b!1052504 () Bool)

(assert (=> b!1052504 (= e!668654 (= (nullable!984 lt!358377) (nullable!984 (regTwo!6298 r!15766))))))

(declare-fun b!1052505 () Bool)

(declare-fun e!668655 () Regex!2893)

(assert (=> b!1052505 (= e!668655 (Union!2893 call!74959 call!74958))))

(declare-fun b!1052506 () Bool)

(assert (=> b!1052506 (= e!668652 (Concat!4726 call!74959 call!74962))))

(declare-fun b!1052507 () Bool)

(declare-fun c!175983 () Bool)

(assert (=> b!1052507 (= c!175983 ((_ is Star!2893) (regTwo!6298 r!15766)))))

(declare-fun e!668650 () Regex!2893)

(assert (=> b!1052507 (= e!668655 e!668650)))

(declare-fun b!1052508 () Bool)

(assert (=> b!1052508 (= e!668653 call!74960)))

(declare-fun b!1052509 () Bool)

(assert (=> b!1052509 (= e!668650 (Star!2893 call!74958))))

(declare-fun b!1052510 () Bool)

(assert (=> b!1052510 (= e!668650 (regTwo!6298 r!15766))))

(declare-fun b!1052511 () Bool)

(assert (=> b!1052511 (= e!668651 e!668653)))

(assert (=> b!1052511 (= c!175980 (and ((_ is Concat!4726) (regTwo!6298 r!15766)) ((_ is EmptyExpr!2893) (regTwo!6298 (regTwo!6298 r!15766)))))))

(declare-fun b!1052512 () Bool)

(assert (=> b!1052512 (= e!668652 e!668655)))

(assert (=> b!1052512 (= c!175981 ((_ is Union!2893) (regTwo!6298 r!15766)))))

(declare-fun bm!74957 () Bool)

(assert (=> bm!74957 (= call!74960 call!74961)))

(declare-fun b!1052513 () Bool)

(assert (=> b!1052513 (= e!668651 call!74961)))

(assert (= (and d!299660 c!175982) b!1052513))

(assert (= (and d!299660 (not c!175982)) b!1052511))

(assert (= (and b!1052511 c!175980) b!1052508))

(assert (= (and b!1052511 (not c!175980)) b!1052503))

(assert (= (and b!1052503 c!175984) b!1052506))

(assert (= (and b!1052503 (not c!175984)) b!1052512))

(assert (= (and b!1052512 c!175981) b!1052505))

(assert (= (and b!1052512 (not c!175981)) b!1052507))

(assert (= (and b!1052507 c!175983) b!1052509))

(assert (= (and b!1052507 (not c!175983)) b!1052510))

(assert (= (or b!1052505 b!1052509) bm!74956))

(assert (= (or b!1052506 bm!74956) bm!74953))

(assert (= (or b!1052506 b!1052505) bm!74954))

(assert (= (or b!1052508 bm!74953) bm!74957))

(assert (= (or b!1052513 bm!74957) bm!74955))

(assert (= (and d!299660 res!470626) b!1052504))

(declare-fun m!1216865 () Bool)

(assert (=> d!299660 m!1216865))

(assert (=> d!299660 m!1216783))

(declare-fun m!1216867 () Bool)

(assert (=> bm!74954 m!1216867))

(declare-fun m!1216869 () Bool)

(assert (=> bm!74955 m!1216869))

(declare-fun m!1216871 () Bool)

(assert (=> b!1052504 m!1216871))

(declare-fun m!1216873 () Bool)

(assert (=> b!1052504 m!1216873))

(assert (=> b!1052403 d!299660))

(declare-fun bm!74958 () Bool)

(declare-fun call!74967 () Regex!2893)

(declare-fun call!74965 () Regex!2893)

(assert (=> bm!74958 (= call!74967 call!74965)))

(declare-fun d!299666 () Bool)

(declare-fun e!668660 () Bool)

(assert (=> d!299666 e!668660))

(declare-fun res!470627 () Bool)

(assert (=> d!299666 (=> (not res!470627) (not e!668660))))

(declare-fun lt!358378 () Regex!2893)

(assert (=> d!299666 (= res!470627 (validRegex!1362 lt!358378))))

(declare-fun e!668657 () Regex!2893)

(assert (=> d!299666 (= lt!358378 e!668657)))

(declare-fun c!175987 () Bool)

(assert (=> d!299666 (= c!175987 (and ((_ is Concat!4726) (regOne!6298 r!15766)) ((_ is EmptyExpr!2893) (regOne!6298 (regOne!6298 r!15766)))))))

(assert (=> d!299666 (validRegex!1362 (regOne!6298 r!15766))))

(assert (=> d!299666 (= (removeUselessConcat!442 (regOne!6298 r!15766)) lt!358378)))

(declare-fun bm!74959 () Bool)

(declare-fun call!74964 () Regex!2893)

(declare-fun c!175989 () Bool)

(assert (=> bm!74959 (= call!74964 (removeUselessConcat!442 (ite c!175989 (regOne!6298 (regOne!6298 r!15766)) (regOne!6299 (regOne!6298 r!15766)))))))

(declare-fun c!175986 () Bool)

(declare-fun call!74966 () Regex!2893)

(declare-fun bm!74960 () Bool)

(declare-fun c!175985 () Bool)

(assert (=> bm!74960 (= call!74966 (removeUselessConcat!442 (ite c!175987 (regTwo!6298 (regOne!6298 r!15766)) (ite c!175985 (regOne!6298 (regOne!6298 r!15766)) (ite c!175989 (regTwo!6298 (regOne!6298 r!15766)) (ite c!175986 (regTwo!6299 (regOne!6298 r!15766)) (reg!3222 (regOne!6298 r!15766))))))))))

(declare-fun bm!74961 () Bool)

(declare-fun call!74963 () Regex!2893)

(assert (=> bm!74961 (= call!74963 call!74967)))

(declare-fun b!1052514 () Bool)

(assert (=> b!1052514 (= c!175989 ((_ is Concat!4726) (regOne!6298 r!15766)))))

(declare-fun e!668659 () Regex!2893)

(declare-fun e!668658 () Regex!2893)

(assert (=> b!1052514 (= e!668659 e!668658)))

(declare-fun b!1052515 () Bool)

(assert (=> b!1052515 (= e!668660 (= (nullable!984 lt!358378) (nullable!984 (regOne!6298 r!15766))))))

(declare-fun b!1052516 () Bool)

(declare-fun e!668661 () Regex!2893)

(assert (=> b!1052516 (= e!668661 (Union!2893 call!74964 call!74963))))

(declare-fun b!1052517 () Bool)

(assert (=> b!1052517 (= e!668658 (Concat!4726 call!74964 call!74967))))

(declare-fun b!1052518 () Bool)

(declare-fun c!175988 () Bool)

(assert (=> b!1052518 (= c!175988 ((_ is Star!2893) (regOne!6298 r!15766)))))

(declare-fun e!668656 () Regex!2893)

(assert (=> b!1052518 (= e!668661 e!668656)))

(declare-fun b!1052519 () Bool)

(assert (=> b!1052519 (= e!668659 call!74965)))

(declare-fun b!1052520 () Bool)

(assert (=> b!1052520 (= e!668656 (Star!2893 call!74963))))

(declare-fun b!1052521 () Bool)

(assert (=> b!1052521 (= e!668656 (regOne!6298 r!15766))))

(declare-fun b!1052522 () Bool)

(assert (=> b!1052522 (= e!668657 e!668659)))

(assert (=> b!1052522 (= c!175985 (and ((_ is Concat!4726) (regOne!6298 r!15766)) ((_ is EmptyExpr!2893) (regTwo!6298 (regOne!6298 r!15766)))))))

(declare-fun b!1052523 () Bool)

(assert (=> b!1052523 (= e!668658 e!668661)))

(assert (=> b!1052523 (= c!175986 ((_ is Union!2893) (regOne!6298 r!15766)))))

(declare-fun bm!74962 () Bool)

(assert (=> bm!74962 (= call!74965 call!74966)))

(declare-fun b!1052524 () Bool)

(assert (=> b!1052524 (= e!668657 call!74966)))

(assert (= (and d!299666 c!175987) b!1052524))

(assert (= (and d!299666 (not c!175987)) b!1052522))

(assert (= (and b!1052522 c!175985) b!1052519))

(assert (= (and b!1052522 (not c!175985)) b!1052514))

(assert (= (and b!1052514 c!175989) b!1052517))

(assert (= (and b!1052514 (not c!175989)) b!1052523))

(assert (= (and b!1052523 c!175986) b!1052516))

(assert (= (and b!1052523 (not c!175986)) b!1052518))

(assert (= (and b!1052518 c!175988) b!1052520))

(assert (= (and b!1052518 (not c!175988)) b!1052521))

(assert (= (or b!1052516 b!1052520) bm!74961))

(assert (= (or b!1052517 bm!74961) bm!74958))

(assert (= (or b!1052517 b!1052516) bm!74959))

(assert (= (or b!1052519 bm!74958) bm!74962))

(assert (= (or b!1052524 bm!74962) bm!74960))

(assert (= (and d!299666 res!470627) b!1052515))

(declare-fun m!1216875 () Bool)

(assert (=> d!299666 m!1216875))

(assert (=> d!299666 m!1216837))

(declare-fun m!1216877 () Bool)

(assert (=> bm!74959 m!1216877))

(declare-fun m!1216879 () Bool)

(assert (=> bm!74960 m!1216879))

(declare-fun m!1216881 () Bool)

(assert (=> b!1052515 m!1216881))

(declare-fun m!1216883 () Bool)

(assert (=> b!1052515 m!1216883))

(assert (=> b!1052403 d!299666))

(declare-fun d!299668 () Bool)

(declare-fun choose!6677 (Int) Bool)

(assert (=> d!299668 (= (Exists!620 lambda!37903) (choose!6677 lambda!37903))))

(declare-fun bs!251190 () Bool)

(assert (= bs!251190 d!299668))

(declare-fun m!1216885 () Bool)

(assert (=> bs!251190 m!1216885))

(assert (=> b!1052399 d!299668))

(declare-fun d!299670 () Bool)

(assert (=> d!299670 (= (isEmpty!6515 s!10566) ((_ is Nil!10107) s!10566))))

(assert (=> b!1052399 d!299670))

(declare-fun bs!251191 () Bool)

(declare-fun d!299672 () Bool)

(assert (= bs!251191 (and d!299672 b!1052399)))

(declare-fun lambda!37913 () Int)

(assert (=> bs!251191 (= lambda!37913 lambda!37903)))

(assert (=> bs!251191 (not (= lambda!37913 lambda!37904))))

(declare-fun bs!251192 () Bool)

(assert (= bs!251192 (and d!299672 b!1052404)))

(assert (=> bs!251192 (= (and (= (regOne!6298 r!15766) lt!358369) (= (regTwo!6298 r!15766) lt!358367)) (= lambda!37913 lambda!37905))))

(assert (=> bs!251192 (not (= lambda!37913 lambda!37906))))

(assert (=> d!299672 true))

(assert (=> d!299672 true))

(assert (=> d!299672 true))

(assert (=> d!299672 (= (isDefined!2060 (findConcatSeparation!524 (regOne!6298 r!15766) (regTwo!6298 r!15766) Nil!10107 s!10566 s!10566)) (Exists!620 lambda!37913))))

(declare-fun lt!358381 () Unit!15461)

(declare-fun choose!6678 (Regex!2893 Regex!2893 List!10123) Unit!15461)

(assert (=> d!299672 (= lt!358381 (choose!6678 (regOne!6298 r!15766) (regTwo!6298 r!15766) s!10566))))

(assert (=> d!299672 (validRegex!1362 (regOne!6298 r!15766))))

(assert (=> d!299672 (= (lemmaFindConcatSeparationEquivalentToExists!524 (regOne!6298 r!15766) (regTwo!6298 r!15766) s!10566) lt!358381)))

(declare-fun bs!251193 () Bool)

(assert (= bs!251193 d!299672))

(declare-fun m!1216887 () Bool)

(assert (=> bs!251193 m!1216887))

(assert (=> bs!251193 m!1216837))

(declare-fun m!1216889 () Bool)

(assert (=> bs!251193 m!1216889))

(assert (=> bs!251193 m!1216795))

(assert (=> bs!251193 m!1216797))

(assert (=> bs!251193 m!1216795))

(assert (=> b!1052399 d!299672))

(declare-fun b!1052618 () Bool)

(declare-fun e!668717 () Option!2418)

(assert (=> b!1052618 (= e!668717 (Some!2417 (tuple2!11553 Nil!10107 s!10566)))))

(declare-fun b!1052619 () Bool)

(declare-fun e!668715 () Bool)

(assert (=> b!1052619 (= e!668715 (matchR!1429 (regTwo!6298 r!15766) s!10566))))

(declare-fun b!1052620 () Bool)

(declare-fun res!470679 () Bool)

(declare-fun e!668714 () Bool)

(assert (=> b!1052620 (=> (not res!470679) (not e!668714))))

(declare-fun lt!358392 () Option!2418)

(assert (=> b!1052620 (= res!470679 (matchR!1429 (regTwo!6298 r!15766) (_2!6602 (get!3617 lt!358392))))))

(declare-fun b!1052622 () Bool)

(declare-fun e!668716 () Bool)

(assert (=> b!1052622 (= e!668716 (not (isDefined!2060 lt!358392)))))

(declare-fun b!1052623 () Bool)

(declare-fun ++!2792 (List!10123 List!10123) List!10123)

(assert (=> b!1052623 (= e!668714 (= (++!2792 (_1!6602 (get!3617 lt!358392)) (_2!6602 (get!3617 lt!358392))) s!10566))))

(declare-fun b!1052624 () Bool)

(declare-fun e!668713 () Option!2418)

(assert (=> b!1052624 (= e!668713 None!2417)))

(declare-fun b!1052625 () Bool)

(assert (=> b!1052625 (= e!668717 e!668713)))

(declare-fun c!176013 () Bool)

(assert (=> b!1052625 (= c!176013 ((_ is Nil!10107) s!10566))))

(declare-fun b!1052626 () Bool)

(declare-fun lt!358390 () Unit!15461)

(declare-fun lt!358391 () Unit!15461)

(assert (=> b!1052626 (= lt!358390 lt!358391)))

(assert (=> b!1052626 (= (++!2792 (++!2792 Nil!10107 (Cons!10107 (h!15508 s!10566) Nil!10107)) (t!101169 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!385 (List!10123 C!6356 List!10123 List!10123) Unit!15461)

(assert (=> b!1052626 (= lt!358391 (lemmaMoveElementToOtherListKeepsConcatEq!385 Nil!10107 (h!15508 s!10566) (t!101169 s!10566) s!10566))))

(assert (=> b!1052626 (= e!668713 (findConcatSeparation!524 (regOne!6298 r!15766) (regTwo!6298 r!15766) (++!2792 Nil!10107 (Cons!10107 (h!15508 s!10566) Nil!10107)) (t!101169 s!10566) s!10566))))

(declare-fun b!1052621 () Bool)

(declare-fun res!470677 () Bool)

(assert (=> b!1052621 (=> (not res!470677) (not e!668714))))

(assert (=> b!1052621 (= res!470677 (matchR!1429 (regOne!6298 r!15766) (_1!6602 (get!3617 lt!358392))))))

(declare-fun d!299674 () Bool)

(assert (=> d!299674 e!668716))

(declare-fun res!470681 () Bool)

(assert (=> d!299674 (=> res!470681 e!668716)))

(assert (=> d!299674 (= res!470681 e!668714)))

(declare-fun res!470678 () Bool)

(assert (=> d!299674 (=> (not res!470678) (not e!668714))))

(assert (=> d!299674 (= res!470678 (isDefined!2060 lt!358392))))

(assert (=> d!299674 (= lt!358392 e!668717)))

(declare-fun c!176012 () Bool)

(assert (=> d!299674 (= c!176012 e!668715)))

(declare-fun res!470680 () Bool)

(assert (=> d!299674 (=> (not res!470680) (not e!668715))))

(assert (=> d!299674 (= res!470680 (matchR!1429 (regOne!6298 r!15766) Nil!10107))))

(assert (=> d!299674 (validRegex!1362 (regOne!6298 r!15766))))

(assert (=> d!299674 (= (findConcatSeparation!524 (regOne!6298 r!15766) (regTwo!6298 r!15766) Nil!10107 s!10566 s!10566) lt!358392)))

(assert (= (and d!299674 res!470680) b!1052619))

(assert (= (and d!299674 c!176012) b!1052618))

(assert (= (and d!299674 (not c!176012)) b!1052625))

(assert (= (and b!1052625 c!176013) b!1052624))

(assert (= (and b!1052625 (not c!176013)) b!1052626))

(assert (= (and d!299674 res!470678) b!1052621))

(assert (= (and b!1052621 res!470677) b!1052620))

(assert (= (and b!1052620 res!470679) b!1052623))

(assert (= (and d!299674 (not res!470681)) b!1052622))

(declare-fun m!1216897 () Bool)

(assert (=> b!1052626 m!1216897))

(assert (=> b!1052626 m!1216897))

(declare-fun m!1216903 () Bool)

(assert (=> b!1052626 m!1216903))

(declare-fun m!1216907 () Bool)

(assert (=> b!1052626 m!1216907))

(assert (=> b!1052626 m!1216897))

(declare-fun m!1216913 () Bool)

(assert (=> b!1052626 m!1216913))

(declare-fun m!1216915 () Bool)

(assert (=> d!299674 m!1216915))

(declare-fun m!1216917 () Bool)

(assert (=> d!299674 m!1216917))

(assert (=> d!299674 m!1216837))

(declare-fun m!1216921 () Bool)

(assert (=> b!1052621 m!1216921))

(declare-fun m!1216923 () Bool)

(assert (=> b!1052621 m!1216923))

(assert (=> b!1052620 m!1216921))

(declare-fun m!1216925 () Bool)

(assert (=> b!1052620 m!1216925))

(declare-fun m!1216927 () Bool)

(assert (=> b!1052619 m!1216927))

(assert (=> b!1052623 m!1216921))

(declare-fun m!1216929 () Bool)

(assert (=> b!1052623 m!1216929))

(assert (=> b!1052622 m!1216915))

(assert (=> b!1052399 d!299674))

(declare-fun bs!251201 () Bool)

(declare-fun d!299680 () Bool)

(assert (= bs!251201 (and d!299680 b!1052404)))

(declare-fun lambda!37920 () Int)

(assert (=> bs!251201 (not (= lambda!37920 lambda!37906))))

(declare-fun bs!251202 () Bool)

(assert (= bs!251202 (and d!299680 b!1052399)))

(assert (=> bs!251202 (not (= lambda!37920 lambda!37904))))

(assert (=> bs!251202 (= lambda!37920 lambda!37903)))

(declare-fun bs!251203 () Bool)

(assert (= bs!251203 (and d!299680 d!299672)))

(assert (=> bs!251203 (= lambda!37920 lambda!37913)))

(assert (=> bs!251201 (= (and (= (regOne!6298 r!15766) lt!358369) (= (regTwo!6298 r!15766) lt!358367)) (= lambda!37920 lambda!37905))))

(assert (=> d!299680 true))

(assert (=> d!299680 true))

(assert (=> d!299680 true))

(declare-fun lambda!37921 () Int)

(assert (=> bs!251201 (= (and (= (regOne!6298 r!15766) lt!358369) (= (regTwo!6298 r!15766) lt!358367)) (= lambda!37921 lambda!37906))))

(declare-fun bs!251204 () Bool)

(assert (= bs!251204 d!299680))

(assert (=> bs!251204 (not (= lambda!37921 lambda!37920))))

(assert (=> bs!251202 (= lambda!37921 lambda!37904)))

(assert (=> bs!251202 (not (= lambda!37921 lambda!37903))))

(assert (=> bs!251203 (not (= lambda!37921 lambda!37913))))

(assert (=> bs!251201 (not (= lambda!37921 lambda!37905))))

(assert (=> d!299680 true))

(assert (=> d!299680 true))

(assert (=> d!299680 true))

(assert (=> d!299680 (= (Exists!620 lambda!37920) (Exists!620 lambda!37921))))

(declare-fun lt!358399 () Unit!15461)

(declare-fun choose!6681 (Regex!2893 Regex!2893 List!10123) Unit!15461)

(assert (=> d!299680 (= lt!358399 (choose!6681 (regOne!6298 r!15766) (regTwo!6298 r!15766) s!10566))))

(assert (=> d!299680 (validRegex!1362 (regOne!6298 r!15766))))

(assert (=> d!299680 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!308 (regOne!6298 r!15766) (regTwo!6298 r!15766) s!10566) lt!358399)))

(declare-fun m!1216935 () Bool)

(assert (=> bs!251204 m!1216935))

(declare-fun m!1216937 () Bool)

(assert (=> bs!251204 m!1216937))

(declare-fun m!1216939 () Bool)

(assert (=> bs!251204 m!1216939))

(assert (=> bs!251204 m!1216837))

(assert (=> b!1052399 d!299680))

(declare-fun d!299686 () Bool)

(declare-fun isEmpty!6516 (Option!2418) Bool)

(assert (=> d!299686 (= (isDefined!2060 (findConcatSeparation!524 (regOne!6298 r!15766) (regTwo!6298 r!15766) Nil!10107 s!10566 s!10566)) (not (isEmpty!6516 (findConcatSeparation!524 (regOne!6298 r!15766) (regTwo!6298 r!15766) Nil!10107 s!10566 s!10566))))))

(declare-fun bs!251205 () Bool)

(assert (= bs!251205 d!299686))

(assert (=> bs!251205 m!1216795))

(declare-fun m!1216941 () Bool)

(assert (=> bs!251205 m!1216941))

(assert (=> b!1052399 d!299686))

(declare-fun d!299688 () Bool)

(assert (=> d!299688 (= (Exists!620 lambda!37904) (choose!6677 lambda!37904))))

(declare-fun bs!251206 () Bool)

(assert (= bs!251206 d!299688))

(declare-fun m!1216943 () Bool)

(assert (=> bs!251206 m!1216943))

(assert (=> b!1052399 d!299688))

(declare-fun d!299690 () Bool)

(assert (=> d!299690 (= (Exists!620 lambda!37906) (choose!6677 lambda!37906))))

(declare-fun bs!251207 () Bool)

(assert (= bs!251207 d!299690))

(declare-fun m!1216945 () Bool)

(assert (=> bs!251207 m!1216945))

(assert (=> b!1052404 d!299690))

(declare-fun d!299692 () Bool)

(assert (=> d!299692 (= (isDefined!2060 lt!358362) (not (isEmpty!6516 lt!358362)))))

(declare-fun bs!251208 () Bool)

(assert (= bs!251208 d!299692))

(declare-fun m!1216947 () Bool)

(assert (=> bs!251208 m!1216947))

(assert (=> b!1052404 d!299692))

(declare-fun b!1052659 () Bool)

(declare-fun e!668739 () Option!2418)

(assert (=> b!1052659 (= e!668739 (Some!2417 (tuple2!11553 Nil!10107 s!10566)))))

(declare-fun b!1052660 () Bool)

(declare-fun e!668737 () Bool)

(assert (=> b!1052660 (= e!668737 (matchR!1429 lt!358367 s!10566))))

(declare-fun b!1052661 () Bool)

(declare-fun res!470702 () Bool)

(declare-fun e!668736 () Bool)

(assert (=> b!1052661 (=> (not res!470702) (not e!668736))))

(declare-fun lt!358408 () Option!2418)

(assert (=> b!1052661 (= res!470702 (matchR!1429 lt!358367 (_2!6602 (get!3617 lt!358408))))))

(declare-fun b!1052663 () Bool)

(declare-fun e!668738 () Bool)

(assert (=> b!1052663 (= e!668738 (not (isDefined!2060 lt!358408)))))

(declare-fun b!1052664 () Bool)

(assert (=> b!1052664 (= e!668736 (= (++!2792 (_1!6602 (get!3617 lt!358408)) (_2!6602 (get!3617 lt!358408))) s!10566))))

(declare-fun b!1052665 () Bool)

(declare-fun e!668735 () Option!2418)

(assert (=> b!1052665 (= e!668735 None!2417)))

(declare-fun b!1052666 () Bool)

(assert (=> b!1052666 (= e!668739 e!668735)))

(declare-fun c!176022 () Bool)

(assert (=> b!1052666 (= c!176022 ((_ is Nil!10107) s!10566))))

(declare-fun b!1052667 () Bool)

(declare-fun lt!358406 () Unit!15461)

(declare-fun lt!358407 () Unit!15461)

(assert (=> b!1052667 (= lt!358406 lt!358407)))

(assert (=> b!1052667 (= (++!2792 (++!2792 Nil!10107 (Cons!10107 (h!15508 s!10566) Nil!10107)) (t!101169 s!10566)) s!10566)))

(assert (=> b!1052667 (= lt!358407 (lemmaMoveElementToOtherListKeepsConcatEq!385 Nil!10107 (h!15508 s!10566) (t!101169 s!10566) s!10566))))

(assert (=> b!1052667 (= e!668735 (findConcatSeparation!524 lt!358369 lt!358367 (++!2792 Nil!10107 (Cons!10107 (h!15508 s!10566) Nil!10107)) (t!101169 s!10566) s!10566))))

(declare-fun b!1052662 () Bool)

(declare-fun res!470700 () Bool)

(assert (=> b!1052662 (=> (not res!470700) (not e!668736))))

(assert (=> b!1052662 (= res!470700 (matchR!1429 lt!358369 (_1!6602 (get!3617 lt!358408))))))

(declare-fun d!299694 () Bool)

(assert (=> d!299694 e!668738))

(declare-fun res!470704 () Bool)

(assert (=> d!299694 (=> res!470704 e!668738)))

(assert (=> d!299694 (= res!470704 e!668736)))

(declare-fun res!470701 () Bool)

(assert (=> d!299694 (=> (not res!470701) (not e!668736))))

(assert (=> d!299694 (= res!470701 (isDefined!2060 lt!358408))))

(assert (=> d!299694 (= lt!358408 e!668739)))

(declare-fun c!176021 () Bool)

(assert (=> d!299694 (= c!176021 e!668737)))

(declare-fun res!470703 () Bool)

(assert (=> d!299694 (=> (not res!470703) (not e!668737))))

(assert (=> d!299694 (= res!470703 (matchR!1429 lt!358369 Nil!10107))))

(assert (=> d!299694 (validRegex!1362 lt!358369)))

(assert (=> d!299694 (= (findConcatSeparation!524 lt!358369 lt!358367 Nil!10107 s!10566 s!10566) lt!358408)))

(assert (= (and d!299694 res!470703) b!1052660))

(assert (= (and d!299694 c!176021) b!1052659))

(assert (= (and d!299694 (not c!176021)) b!1052666))

(assert (= (and b!1052666 c!176022) b!1052665))

(assert (= (and b!1052666 (not c!176022)) b!1052667))

(assert (= (and d!299694 res!470701) b!1052662))

(assert (= (and b!1052662 res!470700) b!1052661))

(assert (= (and b!1052661 res!470702) b!1052664))

(assert (= (and d!299694 (not res!470704)) b!1052663))

(assert (=> b!1052667 m!1216897))

(assert (=> b!1052667 m!1216897))

(assert (=> b!1052667 m!1216903))

(assert (=> b!1052667 m!1216907))

(assert (=> b!1052667 m!1216897))

(declare-fun m!1216949 () Bool)

(assert (=> b!1052667 m!1216949))

(declare-fun m!1216951 () Bool)

(assert (=> d!299694 m!1216951))

(declare-fun m!1216953 () Bool)

(assert (=> d!299694 m!1216953))

(declare-fun m!1216955 () Bool)

(assert (=> d!299694 m!1216955))

(declare-fun m!1216957 () Bool)

(assert (=> b!1052662 m!1216957))

(declare-fun m!1216959 () Bool)

(assert (=> b!1052662 m!1216959))

(assert (=> b!1052661 m!1216957))

(declare-fun m!1216961 () Bool)

(assert (=> b!1052661 m!1216961))

(declare-fun m!1216963 () Bool)

(assert (=> b!1052660 m!1216963))

(assert (=> b!1052664 m!1216957))

(declare-fun m!1216965 () Bool)

(assert (=> b!1052664 m!1216965))

(assert (=> b!1052663 m!1216951))

(assert (=> b!1052404 d!299694))

(declare-fun d!299696 () Bool)

(assert (=> d!299696 (= (Exists!620 lambda!37905) (choose!6677 lambda!37905))))

(declare-fun bs!251209 () Bool)

(assert (= bs!251209 d!299696))

(declare-fun m!1216967 () Bool)

(assert (=> bs!251209 m!1216967))

(assert (=> b!1052404 d!299696))

(declare-fun bs!251210 () Bool)

(declare-fun d!299698 () Bool)

(assert (= bs!251210 (and d!299698 b!1052404)))

(declare-fun lambda!37922 () Int)

(assert (=> bs!251210 (not (= lambda!37922 lambda!37906))))

(declare-fun bs!251211 () Bool)

(assert (= bs!251211 (and d!299698 d!299680)))

(assert (=> bs!251211 (= (and (= lt!358369 (regOne!6298 r!15766)) (= lt!358367 (regTwo!6298 r!15766))) (= lambda!37922 lambda!37920))))

(declare-fun bs!251212 () Bool)

(assert (= bs!251212 (and d!299698 b!1052399)))

(assert (=> bs!251212 (not (= lambda!37922 lambda!37904))))

(assert (=> bs!251212 (= (and (= lt!358369 (regOne!6298 r!15766)) (= lt!358367 (regTwo!6298 r!15766))) (= lambda!37922 lambda!37903))))

(assert (=> bs!251211 (not (= lambda!37922 lambda!37921))))

(declare-fun bs!251213 () Bool)

(assert (= bs!251213 (and d!299698 d!299672)))

(assert (=> bs!251213 (= (and (= lt!358369 (regOne!6298 r!15766)) (= lt!358367 (regTwo!6298 r!15766))) (= lambda!37922 lambda!37913))))

(assert (=> bs!251210 (= lambda!37922 lambda!37905)))

(assert (=> d!299698 true))

(assert (=> d!299698 true))

(assert (=> d!299698 true))

(declare-fun lambda!37923 () Int)

(assert (=> bs!251210 (= lambda!37923 lambda!37906)))

(assert (=> bs!251212 (= (and (= lt!358369 (regOne!6298 r!15766)) (= lt!358367 (regTwo!6298 r!15766))) (= lambda!37923 lambda!37904))))

(assert (=> bs!251212 (not (= lambda!37923 lambda!37903))))

(assert (=> bs!251211 (= (and (= lt!358369 (regOne!6298 r!15766)) (= lt!358367 (regTwo!6298 r!15766))) (= lambda!37923 lambda!37921))))

(assert (=> bs!251213 (not (= lambda!37923 lambda!37913))))

(assert (=> bs!251210 (not (= lambda!37923 lambda!37905))))

(declare-fun bs!251214 () Bool)

(assert (= bs!251214 d!299698))

(assert (=> bs!251214 (not (= lambda!37923 lambda!37922))))

(assert (=> bs!251211 (not (= lambda!37923 lambda!37920))))

(assert (=> d!299698 true))

(assert (=> d!299698 true))

(assert (=> d!299698 true))

(assert (=> d!299698 (= (Exists!620 lambda!37922) (Exists!620 lambda!37923))))

(declare-fun lt!358409 () Unit!15461)

(assert (=> d!299698 (= lt!358409 (choose!6681 lt!358369 lt!358367 s!10566))))

(assert (=> d!299698 (validRegex!1362 lt!358369)))

(assert (=> d!299698 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!308 lt!358369 lt!358367 s!10566) lt!358409)))

(declare-fun m!1216969 () Bool)

(assert (=> bs!251214 m!1216969))

(declare-fun m!1216971 () Bool)

(assert (=> bs!251214 m!1216971))

(declare-fun m!1216973 () Bool)

(assert (=> bs!251214 m!1216973))

(assert (=> bs!251214 m!1216955))

(assert (=> b!1052404 d!299698))

(declare-fun d!299700 () Bool)

(assert (=> d!299700 (= (matchR!1429 lt!358364 s!10566) (matchRSpec!692 lt!358364 s!10566))))

(declare-fun lt!358415 () Unit!15461)

(declare-fun choose!6683 (Regex!2893 List!10123) Unit!15461)

(assert (=> d!299700 (= lt!358415 (choose!6683 lt!358364 s!10566))))

(assert (=> d!299700 (validRegex!1362 lt!358364)))

(assert (=> d!299700 (= (mainMatchTheorem!692 lt!358364 s!10566) lt!358415)))

(declare-fun bs!251215 () Bool)

(assert (= bs!251215 d!299700))

(assert (=> bs!251215 m!1216823))

(assert (=> bs!251215 m!1216807))

(declare-fun m!1216999 () Bool)

(assert (=> bs!251215 m!1216999))

(assert (=> bs!251215 m!1216857))

(assert (=> b!1052404 d!299700))

(declare-fun bs!251234 () Bool)

(declare-fun b!1052738 () Bool)

(assert (= bs!251234 (and b!1052738 d!299698)))

(declare-fun lambda!37933 () Int)

(assert (=> bs!251234 (not (= lambda!37933 lambda!37923))))

(declare-fun bs!251235 () Bool)

(assert (= bs!251235 (and b!1052738 b!1052404)))

(assert (=> bs!251235 (not (= lambda!37933 lambda!37906))))

(declare-fun bs!251236 () Bool)

(assert (= bs!251236 (and b!1052738 b!1052399)))

(assert (=> bs!251236 (not (= lambda!37933 lambda!37904))))

(assert (=> bs!251236 (not (= lambda!37933 lambda!37903))))

(declare-fun bs!251237 () Bool)

(assert (= bs!251237 (and b!1052738 d!299680)))

(assert (=> bs!251237 (not (= lambda!37933 lambda!37921))))

(declare-fun bs!251238 () Bool)

(assert (= bs!251238 (and b!1052738 d!299672)))

(assert (=> bs!251238 (not (= lambda!37933 lambda!37913))))

(assert (=> bs!251235 (not (= lambda!37933 lambda!37905))))

(assert (=> bs!251234 (not (= lambda!37933 lambda!37922))))

(assert (=> bs!251237 (not (= lambda!37933 lambda!37920))))

(assert (=> b!1052738 true))

(assert (=> b!1052738 true))

(declare-fun bs!251239 () Bool)

(declare-fun b!1052732 () Bool)

(assert (= bs!251239 (and b!1052732 d!299698)))

(declare-fun lambda!37934 () Int)

(assert (=> bs!251239 (= (and (= (regOne!6298 lt!358364) lt!358369) (= (regTwo!6298 lt!358364) lt!358367)) (= lambda!37934 lambda!37923))))

(declare-fun bs!251240 () Bool)

(assert (= bs!251240 (and b!1052732 b!1052738)))

(assert (=> bs!251240 (not (= lambda!37934 lambda!37933))))

(declare-fun bs!251241 () Bool)

(assert (= bs!251241 (and b!1052732 b!1052404)))

(assert (=> bs!251241 (= (and (= (regOne!6298 lt!358364) lt!358369) (= (regTwo!6298 lt!358364) lt!358367)) (= lambda!37934 lambda!37906))))

(declare-fun bs!251242 () Bool)

(assert (= bs!251242 (and b!1052732 b!1052399)))

(assert (=> bs!251242 (= (and (= (regOne!6298 lt!358364) (regOne!6298 r!15766)) (= (regTwo!6298 lt!358364) (regTwo!6298 r!15766))) (= lambda!37934 lambda!37904))))

(assert (=> bs!251242 (not (= lambda!37934 lambda!37903))))

(declare-fun bs!251243 () Bool)

(assert (= bs!251243 (and b!1052732 d!299680)))

(assert (=> bs!251243 (= (and (= (regOne!6298 lt!358364) (regOne!6298 r!15766)) (= (regTwo!6298 lt!358364) (regTwo!6298 r!15766))) (= lambda!37934 lambda!37921))))

(declare-fun bs!251244 () Bool)

(assert (= bs!251244 (and b!1052732 d!299672)))

(assert (=> bs!251244 (not (= lambda!37934 lambda!37913))))

(assert (=> bs!251241 (not (= lambda!37934 lambda!37905))))

(assert (=> bs!251239 (not (= lambda!37934 lambda!37922))))

(assert (=> bs!251243 (not (= lambda!37934 lambda!37920))))

(assert (=> b!1052732 true))

(assert (=> b!1052732 true))

(declare-fun e!668776 () Bool)

(declare-fun call!74983 () Bool)

(assert (=> b!1052732 (= e!668776 call!74983)))

(declare-fun b!1052733 () Bool)

(declare-fun e!668782 () Bool)

(declare-fun e!668779 () Bool)

(assert (=> b!1052733 (= e!668782 e!668779)))

(declare-fun res!470743 () Bool)

(assert (=> b!1052733 (= res!470743 (not ((_ is EmptyLang!2893) lt!358364)))))

(assert (=> b!1052733 (=> (not res!470743) (not e!668779))))

(declare-fun b!1052734 () Bool)

(declare-fun e!668778 () Bool)

(assert (=> b!1052734 (= e!668778 (matchRSpec!692 (regTwo!6299 lt!358364) s!10566))))

(declare-fun b!1052735 () Bool)

(declare-fun c!176037 () Bool)

(assert (=> b!1052735 (= c!176037 ((_ is Union!2893) lt!358364))))

(declare-fun e!668777 () Bool)

(declare-fun e!668780 () Bool)

(assert (=> b!1052735 (= e!668777 e!668780)))

(declare-fun b!1052736 () Bool)

(assert (=> b!1052736 (= e!668780 e!668776)))

(declare-fun c!176039 () Bool)

(assert (=> b!1052736 (= c!176039 ((_ is Star!2893) lt!358364))))

(declare-fun b!1052737 () Bool)

(declare-fun call!74984 () Bool)

(assert (=> b!1052737 (= e!668782 call!74984)))

(declare-fun e!668781 () Bool)

(assert (=> b!1052738 (= e!668781 call!74983)))

(declare-fun b!1052740 () Bool)

(assert (=> b!1052740 (= e!668780 e!668778)))

(declare-fun res!470741 () Bool)

(assert (=> b!1052740 (= res!470741 (matchRSpec!692 (regOne!6299 lt!358364) s!10566))))

(assert (=> b!1052740 (=> res!470741 e!668778)))

(declare-fun b!1052741 () Bool)

(declare-fun c!176040 () Bool)

(assert (=> b!1052741 (= c!176040 ((_ is ElementMatch!2893) lt!358364))))

(assert (=> b!1052741 (= e!668779 e!668777)))

(declare-fun bm!74978 () Bool)

(assert (=> bm!74978 (= call!74984 (isEmpty!6515 s!10566))))

(declare-fun bm!74979 () Bool)

(assert (=> bm!74979 (= call!74983 (Exists!620 (ite c!176039 lambda!37933 lambda!37934)))))

(declare-fun b!1052742 () Bool)

(assert (=> b!1052742 (= e!668777 (= s!10566 (Cons!10107 (c!175954 lt!358364) Nil!10107)))))

(declare-fun d!299704 () Bool)

(declare-fun c!176038 () Bool)

(assert (=> d!299704 (= c!176038 ((_ is EmptyExpr!2893) lt!358364))))

(assert (=> d!299704 (= (matchRSpec!692 lt!358364 s!10566) e!668782)))

(declare-fun b!1052739 () Bool)

(declare-fun res!470742 () Bool)

(assert (=> b!1052739 (=> res!470742 e!668781)))

(assert (=> b!1052739 (= res!470742 call!74984)))

(assert (=> b!1052739 (= e!668776 e!668781)))

(assert (= (and d!299704 c!176038) b!1052737))

(assert (= (and d!299704 (not c!176038)) b!1052733))

(assert (= (and b!1052733 res!470743) b!1052741))

(assert (= (and b!1052741 c!176040) b!1052742))

(assert (= (and b!1052741 (not c!176040)) b!1052735))

(assert (= (and b!1052735 c!176037) b!1052740))

(assert (= (and b!1052735 (not c!176037)) b!1052736))

(assert (= (and b!1052740 (not res!470741)) b!1052734))

(assert (= (and b!1052736 c!176039) b!1052739))

(assert (= (and b!1052736 (not c!176039)) b!1052732))

(assert (= (and b!1052739 (not res!470742)) b!1052738))

(assert (= (or b!1052738 b!1052732) bm!74979))

(assert (= (or b!1052737 b!1052739) bm!74978))

(declare-fun m!1217019 () Bool)

(assert (=> b!1052734 m!1217019))

(declare-fun m!1217021 () Bool)

(assert (=> b!1052740 m!1217021))

(assert (=> bm!74978 m!1216801))

(declare-fun m!1217023 () Bool)

(assert (=> bm!74979 m!1217023))

(assert (=> b!1052404 d!299704))

(declare-fun bs!251245 () Bool)

(declare-fun d!299714 () Bool)

(assert (= bs!251245 (and d!299714 d!299698)))

(declare-fun lambda!37937 () Int)

(assert (=> bs!251245 (not (= lambda!37937 lambda!37923))))

(declare-fun bs!251246 () Bool)

(assert (= bs!251246 (and d!299714 b!1052738)))

(assert (=> bs!251246 (not (= lambda!37937 lambda!37933))))

(declare-fun bs!251247 () Bool)

(assert (= bs!251247 (and d!299714 b!1052404)))

(assert (=> bs!251247 (not (= lambda!37937 lambda!37906))))

(declare-fun bs!251248 () Bool)

(assert (= bs!251248 (and d!299714 b!1052399)))

(assert (=> bs!251248 (not (= lambda!37937 lambda!37904))))

(assert (=> bs!251248 (= (and (= lt!358369 (regOne!6298 r!15766)) (= lt!358367 (regTwo!6298 r!15766))) (= lambda!37937 lambda!37903))))

(declare-fun bs!251249 () Bool)

(assert (= bs!251249 (and d!299714 b!1052732)))

(assert (=> bs!251249 (not (= lambda!37937 lambda!37934))))

(declare-fun bs!251250 () Bool)

(assert (= bs!251250 (and d!299714 d!299680)))

(assert (=> bs!251250 (not (= lambda!37937 lambda!37921))))

(declare-fun bs!251251 () Bool)

(assert (= bs!251251 (and d!299714 d!299672)))

(assert (=> bs!251251 (= (and (= lt!358369 (regOne!6298 r!15766)) (= lt!358367 (regTwo!6298 r!15766))) (= lambda!37937 lambda!37913))))

(assert (=> bs!251247 (= lambda!37937 lambda!37905)))

(assert (=> bs!251245 (= lambda!37937 lambda!37922)))

(assert (=> bs!251250 (= (and (= lt!358369 (regOne!6298 r!15766)) (= lt!358367 (regTwo!6298 r!15766))) (= lambda!37937 lambda!37920))))

(assert (=> d!299714 true))

(assert (=> d!299714 true))

(assert (=> d!299714 true))

(assert (=> d!299714 (= (isDefined!2060 (findConcatSeparation!524 lt!358369 lt!358367 Nil!10107 s!10566 s!10566)) (Exists!620 lambda!37937))))

(declare-fun lt!358422 () Unit!15461)

(assert (=> d!299714 (= lt!358422 (choose!6678 lt!358369 lt!358367 s!10566))))

(assert (=> d!299714 (validRegex!1362 lt!358369)))

(assert (=> d!299714 (= (lemmaFindConcatSeparationEquivalentToExists!524 lt!358369 lt!358367 s!10566) lt!358422)))

(declare-fun bs!251252 () Bool)

(assert (= bs!251252 d!299714))

(declare-fun m!1217025 () Bool)

(assert (=> bs!251252 m!1217025))

(assert (=> bs!251252 m!1216955))

(declare-fun m!1217027 () Bool)

(assert (=> bs!251252 m!1217027))

(assert (=> bs!251252 m!1216817))

(declare-fun m!1217029 () Bool)

(assert (=> bs!251252 m!1217029))

(assert (=> bs!251252 m!1216817))

(assert (=> b!1052404 d!299714))

(declare-fun b!1052769 () Bool)

(declare-fun e!668803 () Bool)

(declare-fun e!668802 () Bool)

(assert (=> b!1052769 (= e!668803 e!668802)))

(declare-fun c!176045 () Bool)

(assert (=> b!1052769 (= c!176045 ((_ is Star!2893) r!15766))))

(declare-fun d!299716 () Bool)

(declare-fun res!470765 () Bool)

(assert (=> d!299716 (=> res!470765 e!668803)))

(assert (=> d!299716 (= res!470765 ((_ is ElementMatch!2893) r!15766))))

(assert (=> d!299716 (= (validRegex!1362 r!15766) e!668803)))

(declare-fun c!176046 () Bool)

(declare-fun bm!74986 () Bool)

(declare-fun call!74993 () Bool)

(assert (=> bm!74986 (= call!74993 (validRegex!1362 (ite c!176045 (reg!3222 r!15766) (ite c!176046 (regTwo!6299 r!15766) (regTwo!6298 r!15766)))))))

(declare-fun b!1052770 () Bool)

(declare-fun e!668806 () Bool)

(declare-fun call!74991 () Bool)

(assert (=> b!1052770 (= e!668806 call!74991)))

(declare-fun bm!74987 () Bool)

(declare-fun call!74992 () Bool)

(assert (=> bm!74987 (= call!74992 (validRegex!1362 (ite c!176046 (regOne!6299 r!15766) (regOne!6298 r!15766))))))

(declare-fun b!1052771 () Bool)

(declare-fun e!668801 () Bool)

(assert (=> b!1052771 (= e!668801 e!668806)))

(declare-fun res!470766 () Bool)

(assert (=> b!1052771 (=> (not res!470766) (not e!668806))))

(assert (=> b!1052771 (= res!470766 call!74992)))

(declare-fun bm!74988 () Bool)

(assert (=> bm!74988 (= call!74991 call!74993)))

(declare-fun b!1052772 () Bool)

(declare-fun e!668805 () Bool)

(assert (=> b!1052772 (= e!668802 e!668805)))

(declare-fun res!470762 () Bool)

(assert (=> b!1052772 (= res!470762 (not (nullable!984 (reg!3222 r!15766))))))

(assert (=> b!1052772 (=> (not res!470762) (not e!668805))))

(declare-fun b!1052773 () Bool)

(declare-fun e!668804 () Bool)

(assert (=> b!1052773 (= e!668802 e!668804)))

(assert (=> b!1052773 (= c!176046 ((_ is Union!2893) r!15766))))

(declare-fun b!1052774 () Bool)

(declare-fun res!470763 () Bool)

(declare-fun e!668807 () Bool)

(assert (=> b!1052774 (=> (not res!470763) (not e!668807))))

(assert (=> b!1052774 (= res!470763 call!74992)))

(assert (=> b!1052774 (= e!668804 e!668807)))

(declare-fun b!1052775 () Bool)

(assert (=> b!1052775 (= e!668807 call!74991)))

(declare-fun b!1052776 () Bool)

(assert (=> b!1052776 (= e!668805 call!74993)))

(declare-fun b!1052777 () Bool)

(declare-fun res!470764 () Bool)

(assert (=> b!1052777 (=> res!470764 e!668801)))

(assert (=> b!1052777 (= res!470764 (not ((_ is Concat!4726) r!15766)))))

(assert (=> b!1052777 (= e!668804 e!668801)))

(assert (= (and d!299716 (not res!470765)) b!1052769))

(assert (= (and b!1052769 c!176045) b!1052772))

(assert (= (and b!1052769 (not c!176045)) b!1052773))

(assert (= (and b!1052772 res!470762) b!1052776))

(assert (= (and b!1052773 c!176046) b!1052774))

(assert (= (and b!1052773 (not c!176046)) b!1052777))

(assert (= (and b!1052774 res!470763) b!1052775))

(assert (= (and b!1052777 (not res!470764)) b!1052771))

(assert (= (and b!1052771 res!470766) b!1052770))

(assert (= (or b!1052775 b!1052770) bm!74988))

(assert (= (or b!1052774 b!1052771) bm!74987))

(assert (= (or b!1052776 bm!74988) bm!74986))

(declare-fun m!1217041 () Bool)

(assert (=> bm!74986 m!1217041))

(declare-fun m!1217043 () Bool)

(assert (=> bm!74987 m!1217043))

(declare-fun m!1217045 () Bool)

(assert (=> b!1052772 m!1217045))

(assert (=> start!90670 d!299716))

(declare-fun b!1052778 () Bool)

(declare-fun e!668810 () Bool)

(declare-fun e!668809 () Bool)

(assert (=> b!1052778 (= e!668810 e!668809)))

(declare-fun c!176047 () Bool)

(assert (=> b!1052778 (= c!176047 ((_ is Star!2893) (regTwo!6298 r!15766)))))

(declare-fun d!299726 () Bool)

(declare-fun res!470770 () Bool)

(assert (=> d!299726 (=> res!470770 e!668810)))

(assert (=> d!299726 (= res!470770 ((_ is ElementMatch!2893) (regTwo!6298 r!15766)))))

(assert (=> d!299726 (= (validRegex!1362 (regTwo!6298 r!15766)) e!668810)))

(declare-fun call!74996 () Bool)

(declare-fun bm!74989 () Bool)

(declare-fun c!176048 () Bool)

(assert (=> bm!74989 (= call!74996 (validRegex!1362 (ite c!176047 (reg!3222 (regTwo!6298 r!15766)) (ite c!176048 (regTwo!6299 (regTwo!6298 r!15766)) (regTwo!6298 (regTwo!6298 r!15766))))))))

(declare-fun b!1052779 () Bool)

(declare-fun e!668813 () Bool)

(declare-fun call!74994 () Bool)

(assert (=> b!1052779 (= e!668813 call!74994)))

(declare-fun bm!74990 () Bool)

(declare-fun call!74995 () Bool)

(assert (=> bm!74990 (= call!74995 (validRegex!1362 (ite c!176048 (regOne!6299 (regTwo!6298 r!15766)) (regOne!6298 (regTwo!6298 r!15766)))))))

(declare-fun b!1052780 () Bool)

(declare-fun e!668808 () Bool)

(assert (=> b!1052780 (= e!668808 e!668813)))

(declare-fun res!470771 () Bool)

(assert (=> b!1052780 (=> (not res!470771) (not e!668813))))

(assert (=> b!1052780 (= res!470771 call!74995)))

(declare-fun bm!74991 () Bool)

(assert (=> bm!74991 (= call!74994 call!74996)))

(declare-fun b!1052781 () Bool)

(declare-fun e!668812 () Bool)

(assert (=> b!1052781 (= e!668809 e!668812)))

(declare-fun res!470767 () Bool)

(assert (=> b!1052781 (= res!470767 (not (nullable!984 (reg!3222 (regTwo!6298 r!15766)))))))

(assert (=> b!1052781 (=> (not res!470767) (not e!668812))))

(declare-fun b!1052782 () Bool)

(declare-fun e!668811 () Bool)

(assert (=> b!1052782 (= e!668809 e!668811)))

(assert (=> b!1052782 (= c!176048 ((_ is Union!2893) (regTwo!6298 r!15766)))))

(declare-fun b!1052783 () Bool)

(declare-fun res!470768 () Bool)

(declare-fun e!668814 () Bool)

(assert (=> b!1052783 (=> (not res!470768) (not e!668814))))

(assert (=> b!1052783 (= res!470768 call!74995)))

(assert (=> b!1052783 (= e!668811 e!668814)))

(declare-fun b!1052784 () Bool)

(assert (=> b!1052784 (= e!668814 call!74994)))

(declare-fun b!1052785 () Bool)

(assert (=> b!1052785 (= e!668812 call!74996)))

(declare-fun b!1052786 () Bool)

(declare-fun res!470769 () Bool)

(assert (=> b!1052786 (=> res!470769 e!668808)))

(assert (=> b!1052786 (= res!470769 (not ((_ is Concat!4726) (regTwo!6298 r!15766))))))

(assert (=> b!1052786 (= e!668811 e!668808)))

(assert (= (and d!299726 (not res!470770)) b!1052778))

(assert (= (and b!1052778 c!176047) b!1052781))

(assert (= (and b!1052778 (not c!176047)) b!1052782))

(assert (= (and b!1052781 res!470767) b!1052785))

(assert (= (and b!1052782 c!176048) b!1052783))

(assert (= (and b!1052782 (not c!176048)) b!1052786))

(assert (= (and b!1052783 res!470768) b!1052784))

(assert (= (and b!1052786 (not res!470769)) b!1052780))

(assert (= (and b!1052780 res!470771) b!1052779))

(assert (= (or b!1052784 b!1052779) bm!74991))

(assert (= (or b!1052783 b!1052780) bm!74990))

(assert (= (or b!1052785 bm!74991) bm!74989))

(declare-fun m!1217047 () Bool)

(assert (=> bm!74989 m!1217047))

(declare-fun m!1217049 () Bool)

(assert (=> bm!74990 m!1217049))

(declare-fun m!1217051 () Bool)

(assert (=> b!1052781 m!1217051))

(assert (=> b!1052406 d!299726))

(declare-fun bs!251272 () Bool)

(declare-fun b!1052793 () Bool)

(assert (= bs!251272 (and b!1052793 d!299698)))

(declare-fun lambda!37943 () Int)

(assert (=> bs!251272 (not (= lambda!37943 lambda!37923))))

(declare-fun bs!251273 () Bool)

(assert (= bs!251273 (and b!1052793 b!1052738)))

(assert (=> bs!251273 (= (and (= (reg!3222 r!15766) (reg!3222 lt!358364)) (= r!15766 lt!358364)) (= lambda!37943 lambda!37933))))

(declare-fun bs!251274 () Bool)

(assert (= bs!251274 (and b!1052793 d!299714)))

(assert (=> bs!251274 (not (= lambda!37943 lambda!37937))))

(declare-fun bs!251275 () Bool)

(assert (= bs!251275 (and b!1052793 b!1052404)))

(assert (=> bs!251275 (not (= lambda!37943 lambda!37906))))

(declare-fun bs!251276 () Bool)

(assert (= bs!251276 (and b!1052793 b!1052399)))

(assert (=> bs!251276 (not (= lambda!37943 lambda!37904))))

(assert (=> bs!251276 (not (= lambda!37943 lambda!37903))))

(declare-fun bs!251277 () Bool)

(assert (= bs!251277 (and b!1052793 b!1052732)))

(assert (=> bs!251277 (not (= lambda!37943 lambda!37934))))

(declare-fun bs!251278 () Bool)

(assert (= bs!251278 (and b!1052793 d!299680)))

(assert (=> bs!251278 (not (= lambda!37943 lambda!37921))))

(declare-fun bs!251279 () Bool)

(assert (= bs!251279 (and b!1052793 d!299672)))

(assert (=> bs!251279 (not (= lambda!37943 lambda!37913))))

(assert (=> bs!251275 (not (= lambda!37943 lambda!37905))))

(assert (=> bs!251272 (not (= lambda!37943 lambda!37922))))

(assert (=> bs!251278 (not (= lambda!37943 lambda!37920))))

(assert (=> b!1052793 true))

(assert (=> b!1052793 true))

(declare-fun bs!251282 () Bool)

(declare-fun b!1052787 () Bool)

(assert (= bs!251282 (and b!1052787 d!299698)))

(declare-fun lambda!37944 () Int)

(assert (=> bs!251282 (= (and (= (regOne!6298 r!15766) lt!358369) (= (regTwo!6298 r!15766) lt!358367)) (= lambda!37944 lambda!37923))))

(declare-fun bs!251283 () Bool)

(assert (= bs!251283 (and b!1052787 d!299714)))

(assert (=> bs!251283 (not (= lambda!37944 lambda!37937))))

(declare-fun bs!251284 () Bool)

(assert (= bs!251284 (and b!1052787 b!1052404)))

(assert (=> bs!251284 (= (and (= (regOne!6298 r!15766) lt!358369) (= (regTwo!6298 r!15766) lt!358367)) (= lambda!37944 lambda!37906))))

(declare-fun bs!251285 () Bool)

(assert (= bs!251285 (and b!1052787 b!1052399)))

(assert (=> bs!251285 (= lambda!37944 lambda!37904)))

(assert (=> bs!251285 (not (= lambda!37944 lambda!37903))))

(declare-fun bs!251288 () Bool)

(assert (= bs!251288 (and b!1052787 b!1052732)))

(assert (=> bs!251288 (= (and (= (regOne!6298 r!15766) (regOne!6298 lt!358364)) (= (regTwo!6298 r!15766) (regTwo!6298 lt!358364))) (= lambda!37944 lambda!37934))))

(declare-fun bs!251289 () Bool)

(assert (= bs!251289 (and b!1052787 d!299680)))

(assert (=> bs!251289 (= lambda!37944 lambda!37921)))

(declare-fun bs!251291 () Bool)

(assert (= bs!251291 (and b!1052787 b!1052738)))

(assert (=> bs!251291 (not (= lambda!37944 lambda!37933))))

(declare-fun bs!251293 () Bool)

(assert (= bs!251293 (and b!1052787 b!1052793)))

(assert (=> bs!251293 (not (= lambda!37944 lambda!37943))))

(declare-fun bs!251295 () Bool)

(assert (= bs!251295 (and b!1052787 d!299672)))

(assert (=> bs!251295 (not (= lambda!37944 lambda!37913))))

(assert (=> bs!251284 (not (= lambda!37944 lambda!37905))))

(assert (=> bs!251282 (not (= lambda!37944 lambda!37922))))

(assert (=> bs!251289 (not (= lambda!37944 lambda!37920))))

(assert (=> b!1052787 true))

(assert (=> b!1052787 true))

(declare-fun e!668815 () Bool)

(declare-fun call!74997 () Bool)

(assert (=> b!1052787 (= e!668815 call!74997)))

(declare-fun b!1052788 () Bool)

(declare-fun e!668821 () Bool)

(declare-fun e!668818 () Bool)

(assert (=> b!1052788 (= e!668821 e!668818)))

(declare-fun res!470774 () Bool)

(assert (=> b!1052788 (= res!470774 (not ((_ is EmptyLang!2893) r!15766)))))

(assert (=> b!1052788 (=> (not res!470774) (not e!668818))))

(declare-fun b!1052789 () Bool)

(declare-fun e!668817 () Bool)

(assert (=> b!1052789 (= e!668817 (matchRSpec!692 (regTwo!6299 r!15766) s!10566))))

(declare-fun b!1052790 () Bool)

(declare-fun c!176049 () Bool)

(assert (=> b!1052790 (= c!176049 ((_ is Union!2893) r!15766))))

(declare-fun e!668816 () Bool)

(declare-fun e!668819 () Bool)

(assert (=> b!1052790 (= e!668816 e!668819)))

(declare-fun b!1052791 () Bool)

(assert (=> b!1052791 (= e!668819 e!668815)))

(declare-fun c!176051 () Bool)

(assert (=> b!1052791 (= c!176051 ((_ is Star!2893) r!15766))))

(declare-fun b!1052792 () Bool)

(declare-fun call!74998 () Bool)

(assert (=> b!1052792 (= e!668821 call!74998)))

(declare-fun e!668820 () Bool)

(assert (=> b!1052793 (= e!668820 call!74997)))

(declare-fun b!1052795 () Bool)

(assert (=> b!1052795 (= e!668819 e!668817)))

(declare-fun res!470772 () Bool)

(assert (=> b!1052795 (= res!470772 (matchRSpec!692 (regOne!6299 r!15766) s!10566))))

(assert (=> b!1052795 (=> res!470772 e!668817)))

(declare-fun b!1052796 () Bool)

(declare-fun c!176052 () Bool)

(assert (=> b!1052796 (= c!176052 ((_ is ElementMatch!2893) r!15766))))

(assert (=> b!1052796 (= e!668818 e!668816)))

(declare-fun bm!74992 () Bool)

(assert (=> bm!74992 (= call!74998 (isEmpty!6515 s!10566))))

(declare-fun bm!74993 () Bool)

(assert (=> bm!74993 (= call!74997 (Exists!620 (ite c!176051 lambda!37943 lambda!37944)))))

(declare-fun b!1052797 () Bool)

(assert (=> b!1052797 (= e!668816 (= s!10566 (Cons!10107 (c!175954 r!15766) Nil!10107)))))

(declare-fun d!299728 () Bool)

(declare-fun c!176050 () Bool)

(assert (=> d!299728 (= c!176050 ((_ is EmptyExpr!2893) r!15766))))

(assert (=> d!299728 (= (matchRSpec!692 r!15766 s!10566) e!668821)))

(declare-fun b!1052794 () Bool)

(declare-fun res!470773 () Bool)

(assert (=> b!1052794 (=> res!470773 e!668820)))

(assert (=> b!1052794 (= res!470773 call!74998)))

(assert (=> b!1052794 (= e!668815 e!668820)))

(assert (= (and d!299728 c!176050) b!1052792))

(assert (= (and d!299728 (not c!176050)) b!1052788))

(assert (= (and b!1052788 res!470774) b!1052796))

(assert (= (and b!1052796 c!176052) b!1052797))

(assert (= (and b!1052796 (not c!176052)) b!1052790))

(assert (= (and b!1052790 c!176049) b!1052795))

(assert (= (and b!1052790 (not c!176049)) b!1052791))

(assert (= (and b!1052795 (not res!470772)) b!1052789))

(assert (= (and b!1052791 c!176051) b!1052794))

(assert (= (and b!1052791 (not c!176051)) b!1052787))

(assert (= (and b!1052794 (not res!470773)) b!1052793))

(assert (= (or b!1052793 b!1052787) bm!74993))

(assert (= (or b!1052792 b!1052794) bm!74992))

(declare-fun m!1217077 () Bool)

(assert (=> b!1052789 m!1217077))

(declare-fun m!1217079 () Bool)

(assert (=> b!1052795 m!1217079))

(assert (=> bm!74992 m!1216801))

(declare-fun m!1217081 () Bool)

(assert (=> bm!74993 m!1217081))

(assert (=> b!1052402 d!299728))

(declare-fun b!1052807 () Bool)

(declare-fun e!668833 () Bool)

(assert (=> b!1052807 (= e!668833 (= (head!1939 s!10566) (c!175954 r!15766)))))

(declare-fun b!1052808 () Bool)

(declare-fun e!668829 () Bool)

(declare-fun lt!358429 () Bool)

(declare-fun call!74999 () Bool)

(assert (=> b!1052808 (= e!668829 (= lt!358429 call!74999))))

(declare-fun b!1052809 () Bool)

(declare-fun e!668827 () Bool)

(assert (=> b!1052809 (= e!668827 (not lt!358429))))

(declare-fun b!1052810 () Bool)

(declare-fun res!470783 () Bool)

(assert (=> b!1052810 (=> (not res!470783) (not e!668833))))

(assert (=> b!1052810 (= res!470783 (not call!74999))))

(declare-fun b!1052811 () Bool)

(assert (=> b!1052811 (= e!668829 e!668827)))

(declare-fun c!176057 () Bool)

(assert (=> b!1052811 (= c!176057 ((_ is EmptyLang!2893) r!15766))))

(declare-fun d!299738 () Bool)

(assert (=> d!299738 e!668829))

(declare-fun c!176056 () Bool)

(assert (=> d!299738 (= c!176056 ((_ is EmptyExpr!2893) r!15766))))

(declare-fun e!668830 () Bool)

(assert (=> d!299738 (= lt!358429 e!668830)))

(declare-fun c!176055 () Bool)

(assert (=> d!299738 (= c!176055 (isEmpty!6515 s!10566))))

(assert (=> d!299738 (validRegex!1362 r!15766)))

(assert (=> d!299738 (= (matchR!1429 r!15766 s!10566) lt!358429)))

(declare-fun b!1052812 () Bool)

(declare-fun res!470787 () Bool)

(declare-fun e!668831 () Bool)

(assert (=> b!1052812 (=> res!470787 e!668831)))

(assert (=> b!1052812 (= res!470787 (not ((_ is ElementMatch!2893) r!15766)))))

(assert (=> b!1052812 (= e!668827 e!668831)))

(declare-fun b!1052813 () Bool)

(declare-fun e!668828 () Bool)

(assert (=> b!1052813 (= e!668828 (not (= (head!1939 s!10566) (c!175954 r!15766))))))

(declare-fun b!1052814 () Bool)

(declare-fun e!668832 () Bool)

(assert (=> b!1052814 (= e!668831 e!668832)))

(declare-fun res!470782 () Bool)

(assert (=> b!1052814 (=> (not res!470782) (not e!668832))))

(assert (=> b!1052814 (= res!470782 (not lt!358429))))

(declare-fun b!1052815 () Bool)

(declare-fun res!470786 () Bool)

(assert (=> b!1052815 (=> res!470786 e!668828)))

(assert (=> b!1052815 (= res!470786 (not (isEmpty!6515 (tail!1501 s!10566))))))

(declare-fun bm!74994 () Bool)

(assert (=> bm!74994 (= call!74999 (isEmpty!6515 s!10566))))

(declare-fun b!1052816 () Bool)

(declare-fun res!470781 () Bool)

(assert (=> b!1052816 (=> (not res!470781) (not e!668833))))

(assert (=> b!1052816 (= res!470781 (isEmpty!6515 (tail!1501 s!10566)))))

(declare-fun b!1052817 () Bool)

(declare-fun res!470784 () Bool)

(assert (=> b!1052817 (=> res!470784 e!668831)))

(assert (=> b!1052817 (= res!470784 e!668833)))

(declare-fun res!470785 () Bool)

(assert (=> b!1052817 (=> (not res!470785) (not e!668833))))

(assert (=> b!1052817 (= res!470785 lt!358429)))

(declare-fun b!1052818 () Bool)

(assert (=> b!1052818 (= e!668830 (matchR!1429 (derivativeStep!784 r!15766 (head!1939 s!10566)) (tail!1501 s!10566)))))

(declare-fun b!1052819 () Bool)

(assert (=> b!1052819 (= e!668830 (nullable!984 r!15766))))

(declare-fun b!1052820 () Bool)

(assert (=> b!1052820 (= e!668832 e!668828)))

(declare-fun res!470780 () Bool)

(assert (=> b!1052820 (=> res!470780 e!668828)))

(assert (=> b!1052820 (= res!470780 call!74999)))

(assert (= (and d!299738 c!176055) b!1052819))

(assert (= (and d!299738 (not c!176055)) b!1052818))

(assert (= (and d!299738 c!176056) b!1052808))

(assert (= (and d!299738 (not c!176056)) b!1052811))

(assert (= (and b!1052811 c!176057) b!1052809))

(assert (= (and b!1052811 (not c!176057)) b!1052812))

(assert (= (and b!1052812 (not res!470787)) b!1052817))

(assert (= (and b!1052817 res!470785) b!1052810))

(assert (= (and b!1052810 res!470783) b!1052816))

(assert (= (and b!1052816 res!470781) b!1052807))

(assert (= (and b!1052817 (not res!470784)) b!1052814))

(assert (= (and b!1052814 res!470782) b!1052820))

(assert (= (and b!1052820 (not res!470780)) b!1052815))

(assert (= (and b!1052815 (not res!470786)) b!1052813))

(assert (= (or b!1052808 b!1052810 b!1052820) bm!74994))

(assert (=> b!1052813 m!1216845))

(assert (=> b!1052815 m!1216847))

(assert (=> b!1052815 m!1216847))

(assert (=> b!1052815 m!1216849))

(assert (=> b!1052818 m!1216845))

(assert (=> b!1052818 m!1216845))

(declare-fun m!1217083 () Bool)

(assert (=> b!1052818 m!1217083))

(assert (=> b!1052818 m!1216847))

(assert (=> b!1052818 m!1217083))

(assert (=> b!1052818 m!1216847))

(declare-fun m!1217085 () Bool)

(assert (=> b!1052818 m!1217085))

(assert (=> b!1052816 m!1216847))

(assert (=> b!1052816 m!1216847))

(assert (=> b!1052816 m!1216849))

(declare-fun m!1217087 () Bool)

(assert (=> b!1052819 m!1217087))

(assert (=> d!299738 m!1216801))

(assert (=> d!299738 m!1216791))

(assert (=> b!1052807 m!1216845))

(assert (=> bm!74994 m!1216801))

(assert (=> b!1052402 d!299738))

(declare-fun d!299740 () Bool)

(assert (=> d!299740 (= (matchR!1429 r!15766 s!10566) (matchRSpec!692 r!15766 s!10566))))

(declare-fun lt!358430 () Unit!15461)

(assert (=> d!299740 (= lt!358430 (choose!6683 r!15766 s!10566))))

(assert (=> d!299740 (validRegex!1362 r!15766)))

(assert (=> d!299740 (= (mainMatchTheorem!692 r!15766 s!10566) lt!358430)))

(declare-fun bs!251301 () Bool)

(assert (= bs!251301 d!299740))

(assert (=> bs!251301 m!1216787))

(assert (=> bs!251301 m!1216785))

(declare-fun m!1217089 () Bool)

(assert (=> bs!251301 m!1217089))

(assert (=> bs!251301 m!1216791))

(assert (=> b!1052402 d!299740))

(declare-fun b!1052821 () Bool)

(declare-fun e!668840 () Bool)

(assert (=> b!1052821 (= e!668840 (= (head!1939 (_1!6602 lt!358363)) (c!175954 lt!358369)))))

(declare-fun b!1052822 () Bool)

(declare-fun e!668836 () Bool)

(declare-fun lt!358431 () Bool)

(declare-fun call!75000 () Bool)

(assert (=> b!1052822 (= e!668836 (= lt!358431 call!75000))))

(declare-fun b!1052823 () Bool)

(declare-fun e!668834 () Bool)

(assert (=> b!1052823 (= e!668834 (not lt!358431))))

(declare-fun b!1052824 () Bool)

(declare-fun res!470791 () Bool)

(assert (=> b!1052824 (=> (not res!470791) (not e!668840))))

(assert (=> b!1052824 (= res!470791 (not call!75000))))

(declare-fun b!1052825 () Bool)

(assert (=> b!1052825 (= e!668836 e!668834)))

(declare-fun c!176060 () Bool)

(assert (=> b!1052825 (= c!176060 ((_ is EmptyLang!2893) lt!358369))))

(declare-fun d!299742 () Bool)

(assert (=> d!299742 e!668836))

(declare-fun c!176059 () Bool)

(assert (=> d!299742 (= c!176059 ((_ is EmptyExpr!2893) lt!358369))))

(declare-fun e!668837 () Bool)

(assert (=> d!299742 (= lt!358431 e!668837)))

(declare-fun c!176058 () Bool)

(assert (=> d!299742 (= c!176058 (isEmpty!6515 (_1!6602 lt!358363)))))

(assert (=> d!299742 (validRegex!1362 lt!358369)))

(assert (=> d!299742 (= (matchR!1429 lt!358369 (_1!6602 lt!358363)) lt!358431)))

(declare-fun b!1052826 () Bool)

(declare-fun res!470795 () Bool)

(declare-fun e!668838 () Bool)

(assert (=> b!1052826 (=> res!470795 e!668838)))

(assert (=> b!1052826 (= res!470795 (not ((_ is ElementMatch!2893) lt!358369)))))

(assert (=> b!1052826 (= e!668834 e!668838)))

(declare-fun b!1052827 () Bool)

(declare-fun e!668835 () Bool)

(assert (=> b!1052827 (= e!668835 (not (= (head!1939 (_1!6602 lt!358363)) (c!175954 lt!358369))))))

(declare-fun b!1052828 () Bool)

(declare-fun e!668839 () Bool)

(assert (=> b!1052828 (= e!668838 e!668839)))

(declare-fun res!470790 () Bool)

(assert (=> b!1052828 (=> (not res!470790) (not e!668839))))

(assert (=> b!1052828 (= res!470790 (not lt!358431))))

(declare-fun b!1052829 () Bool)

(declare-fun res!470794 () Bool)

(assert (=> b!1052829 (=> res!470794 e!668835)))

(assert (=> b!1052829 (= res!470794 (not (isEmpty!6515 (tail!1501 (_1!6602 lt!358363)))))))

(declare-fun bm!74995 () Bool)

(assert (=> bm!74995 (= call!75000 (isEmpty!6515 (_1!6602 lt!358363)))))

(declare-fun b!1052830 () Bool)

(declare-fun res!470789 () Bool)

(assert (=> b!1052830 (=> (not res!470789) (not e!668840))))

(assert (=> b!1052830 (= res!470789 (isEmpty!6515 (tail!1501 (_1!6602 lt!358363))))))

(declare-fun b!1052831 () Bool)

(declare-fun res!470792 () Bool)

(assert (=> b!1052831 (=> res!470792 e!668838)))

(assert (=> b!1052831 (= res!470792 e!668840)))

(declare-fun res!470793 () Bool)

(assert (=> b!1052831 (=> (not res!470793) (not e!668840))))

(assert (=> b!1052831 (= res!470793 lt!358431)))

(declare-fun b!1052832 () Bool)

(assert (=> b!1052832 (= e!668837 (matchR!1429 (derivativeStep!784 lt!358369 (head!1939 (_1!6602 lt!358363))) (tail!1501 (_1!6602 lt!358363))))))

(declare-fun b!1052833 () Bool)

(assert (=> b!1052833 (= e!668837 (nullable!984 lt!358369))))

(declare-fun b!1052834 () Bool)

(assert (=> b!1052834 (= e!668839 e!668835)))

(declare-fun res!470788 () Bool)

(assert (=> b!1052834 (=> res!470788 e!668835)))

(assert (=> b!1052834 (= res!470788 call!75000)))

(assert (= (and d!299742 c!176058) b!1052833))

(assert (= (and d!299742 (not c!176058)) b!1052832))

(assert (= (and d!299742 c!176059) b!1052822))

(assert (= (and d!299742 (not c!176059)) b!1052825))

(assert (= (and b!1052825 c!176060) b!1052823))

(assert (= (and b!1052825 (not c!176060)) b!1052826))

(assert (= (and b!1052826 (not res!470795)) b!1052831))

(assert (= (and b!1052831 res!470793) b!1052824))

(assert (= (and b!1052824 res!470791) b!1052830))

(assert (= (and b!1052830 res!470789) b!1052821))

(assert (= (and b!1052831 (not res!470792)) b!1052828))

(assert (= (and b!1052828 res!470790) b!1052834))

(assert (= (and b!1052834 (not res!470788)) b!1052829))

(assert (= (and b!1052829 (not res!470794)) b!1052827))

(assert (= (or b!1052822 b!1052824 b!1052834) bm!74995))

(declare-fun m!1217097 () Bool)

(assert (=> b!1052827 m!1217097))

(declare-fun m!1217099 () Bool)

(assert (=> b!1052829 m!1217099))

(assert (=> b!1052829 m!1217099))

(declare-fun m!1217101 () Bool)

(assert (=> b!1052829 m!1217101))

(assert (=> b!1052832 m!1217097))

(assert (=> b!1052832 m!1217097))

(declare-fun m!1217103 () Bool)

(assert (=> b!1052832 m!1217103))

(assert (=> b!1052832 m!1217099))

(assert (=> b!1052832 m!1217103))

(assert (=> b!1052832 m!1217099))

(declare-fun m!1217105 () Bool)

(assert (=> b!1052832 m!1217105))

(assert (=> b!1052830 m!1217099))

(assert (=> b!1052830 m!1217099))

(assert (=> b!1052830 m!1217101))

(declare-fun m!1217107 () Bool)

(assert (=> b!1052833 m!1217107))

(declare-fun m!1217109 () Bool)

(assert (=> d!299742 m!1217109))

(assert (=> d!299742 m!1216955))

(assert (=> b!1052821 m!1217097))

(assert (=> bm!74995 m!1217109))

(assert (=> b!1052407 d!299742))

(declare-fun b!1052849 () Bool)

(declare-fun e!668854 () Bool)

(assert (=> b!1052849 (= e!668854 (= (head!1939 (_2!6602 lt!358363)) (c!175954 lt!358367)))))

(declare-fun b!1052850 () Bool)

(declare-fun e!668850 () Bool)

(declare-fun lt!358433 () Bool)

(declare-fun call!75002 () Bool)

(assert (=> b!1052850 (= e!668850 (= lt!358433 call!75002))))

(declare-fun b!1052851 () Bool)

(declare-fun e!668848 () Bool)

(assert (=> b!1052851 (= e!668848 (not lt!358433))))

(declare-fun b!1052852 () Bool)

(declare-fun res!470807 () Bool)

(assert (=> b!1052852 (=> (not res!470807) (not e!668854))))

(assert (=> b!1052852 (= res!470807 (not call!75002))))

(declare-fun b!1052853 () Bool)

(assert (=> b!1052853 (= e!668850 e!668848)))

(declare-fun c!176066 () Bool)

(assert (=> b!1052853 (= c!176066 ((_ is EmptyLang!2893) lt!358367))))

(declare-fun d!299746 () Bool)

(assert (=> d!299746 e!668850))

(declare-fun c!176065 () Bool)

(assert (=> d!299746 (= c!176065 ((_ is EmptyExpr!2893) lt!358367))))

(declare-fun e!668851 () Bool)

(assert (=> d!299746 (= lt!358433 e!668851)))

(declare-fun c!176064 () Bool)

(assert (=> d!299746 (= c!176064 (isEmpty!6515 (_2!6602 lt!358363)))))

(assert (=> d!299746 (validRegex!1362 lt!358367)))

(assert (=> d!299746 (= (matchR!1429 lt!358367 (_2!6602 lt!358363)) lt!358433)))

(declare-fun b!1052854 () Bool)

(declare-fun res!470811 () Bool)

(declare-fun e!668852 () Bool)

(assert (=> b!1052854 (=> res!470811 e!668852)))

(assert (=> b!1052854 (= res!470811 (not ((_ is ElementMatch!2893) lt!358367)))))

(assert (=> b!1052854 (= e!668848 e!668852)))

(declare-fun b!1052855 () Bool)

(declare-fun e!668849 () Bool)

(assert (=> b!1052855 (= e!668849 (not (= (head!1939 (_2!6602 lt!358363)) (c!175954 lt!358367))))))

(declare-fun b!1052856 () Bool)

(declare-fun e!668853 () Bool)

(assert (=> b!1052856 (= e!668852 e!668853)))

(declare-fun res!470806 () Bool)

(assert (=> b!1052856 (=> (not res!470806) (not e!668853))))

(assert (=> b!1052856 (= res!470806 (not lt!358433))))

(declare-fun b!1052857 () Bool)

(declare-fun res!470810 () Bool)

(assert (=> b!1052857 (=> res!470810 e!668849)))

(assert (=> b!1052857 (= res!470810 (not (isEmpty!6515 (tail!1501 (_2!6602 lt!358363)))))))

(declare-fun bm!74997 () Bool)

(assert (=> bm!74997 (= call!75002 (isEmpty!6515 (_2!6602 lt!358363)))))

(declare-fun b!1052858 () Bool)

(declare-fun res!470805 () Bool)

(assert (=> b!1052858 (=> (not res!470805) (not e!668854))))

(assert (=> b!1052858 (= res!470805 (isEmpty!6515 (tail!1501 (_2!6602 lt!358363))))))

(declare-fun b!1052859 () Bool)

(declare-fun res!470808 () Bool)

(assert (=> b!1052859 (=> res!470808 e!668852)))

(assert (=> b!1052859 (= res!470808 e!668854)))

(declare-fun res!470809 () Bool)

(assert (=> b!1052859 (=> (not res!470809) (not e!668854))))

(assert (=> b!1052859 (= res!470809 lt!358433)))

(declare-fun b!1052860 () Bool)

(assert (=> b!1052860 (= e!668851 (matchR!1429 (derivativeStep!784 lt!358367 (head!1939 (_2!6602 lt!358363))) (tail!1501 (_2!6602 lt!358363))))))

(declare-fun b!1052861 () Bool)

(assert (=> b!1052861 (= e!668851 (nullable!984 lt!358367))))

(declare-fun b!1052862 () Bool)

(assert (=> b!1052862 (= e!668853 e!668849)))

(declare-fun res!470804 () Bool)

(assert (=> b!1052862 (=> res!470804 e!668849)))

(assert (=> b!1052862 (= res!470804 call!75002)))

(assert (= (and d!299746 c!176064) b!1052861))

(assert (= (and d!299746 (not c!176064)) b!1052860))

(assert (= (and d!299746 c!176065) b!1052850))

(assert (= (and d!299746 (not c!176065)) b!1052853))

(assert (= (and b!1052853 c!176066) b!1052851))

(assert (= (and b!1052853 (not c!176066)) b!1052854))

(assert (= (and b!1052854 (not res!470811)) b!1052859))

(assert (= (and b!1052859 res!470809) b!1052852))

(assert (= (and b!1052852 res!470807) b!1052858))

(assert (= (and b!1052858 res!470805) b!1052849))

(assert (= (and b!1052859 (not res!470808)) b!1052856))

(assert (= (and b!1052856 res!470806) b!1052862))

(assert (= (and b!1052862 (not res!470804)) b!1052857))

(assert (= (and b!1052857 (not res!470810)) b!1052855))

(assert (= (or b!1052850 b!1052852 b!1052862) bm!74997))

(declare-fun m!1217117 () Bool)

(assert (=> b!1052855 m!1217117))

(declare-fun m!1217119 () Bool)

(assert (=> b!1052857 m!1217119))

(assert (=> b!1052857 m!1217119))

(declare-fun m!1217121 () Bool)

(assert (=> b!1052857 m!1217121))

(assert (=> b!1052860 m!1217117))

(assert (=> b!1052860 m!1217117))

(declare-fun m!1217123 () Bool)

(assert (=> b!1052860 m!1217123))

(assert (=> b!1052860 m!1217119))

(assert (=> b!1052860 m!1217123))

(assert (=> b!1052860 m!1217119))

(declare-fun m!1217125 () Bool)

(assert (=> b!1052860 m!1217125))

(assert (=> b!1052858 m!1217119))

(assert (=> b!1052858 m!1217119))

(assert (=> b!1052858 m!1217121))

(declare-fun m!1217127 () Bool)

(assert (=> b!1052861 m!1217127))

(declare-fun m!1217129 () Bool)

(assert (=> d!299746 m!1217129))

(declare-fun m!1217131 () Bool)

(assert (=> d!299746 m!1217131))

(assert (=> b!1052849 m!1217117))

(assert (=> bm!74997 m!1217129))

(assert (=> b!1052407 d!299746))

(declare-fun d!299750 () Bool)

(assert (=> d!299750 (= (matchR!1429 (regOne!6298 r!15766) (_1!6602 lt!358363)) (matchR!1429 (removeUselessConcat!442 (regOne!6298 r!15766)) (_1!6602 lt!358363)))))

(declare-fun lt!358436 () Unit!15461)

(declare-fun choose!6686 (Regex!2893 List!10123) Unit!15461)

(assert (=> d!299750 (= lt!358436 (choose!6686 (regOne!6298 r!15766) (_1!6602 lt!358363)))))

(assert (=> d!299750 (validRegex!1362 (regOne!6298 r!15766))))

(assert (=> d!299750 (= (lemmaRemoveUselessConcatSound!266 (regOne!6298 r!15766) (_1!6602 lt!358363)) lt!358436)))

(declare-fun bs!251302 () Bool)

(assert (= bs!251302 d!299750))

(assert (=> bs!251302 m!1216837))

(declare-fun m!1217133 () Bool)

(assert (=> bs!251302 m!1217133))

(assert (=> bs!251302 m!1216827))

(assert (=> bs!251302 m!1216843))

(assert (=> bs!251302 m!1216827))

(declare-fun m!1217135 () Bool)

(assert (=> bs!251302 m!1217135))

(assert (=> b!1052407 d!299750))

(declare-fun b!1052867 () Bool)

(declare-fun e!668863 () Bool)

(assert (=> b!1052867 (= e!668863 (= (head!1939 (_2!6602 lt!358363)) (c!175954 (regTwo!6298 r!15766))))))

(declare-fun b!1052868 () Bool)

(declare-fun e!668859 () Bool)

(declare-fun lt!358439 () Bool)

(declare-fun call!75003 () Bool)

(assert (=> b!1052868 (= e!668859 (= lt!358439 call!75003))))

(declare-fun b!1052869 () Bool)

(declare-fun e!668857 () Bool)

(assert (=> b!1052869 (= e!668857 (not lt!358439))))

(declare-fun b!1052870 () Bool)

(declare-fun res!470815 () Bool)

(assert (=> b!1052870 (=> (not res!470815) (not e!668863))))

(assert (=> b!1052870 (= res!470815 (not call!75003))))

(declare-fun b!1052871 () Bool)

(assert (=> b!1052871 (= e!668859 e!668857)))

(declare-fun c!176071 () Bool)

(assert (=> b!1052871 (= c!176071 ((_ is EmptyLang!2893) (regTwo!6298 r!15766)))))

(declare-fun d!299752 () Bool)

(assert (=> d!299752 e!668859))

(declare-fun c!176070 () Bool)

(assert (=> d!299752 (= c!176070 ((_ is EmptyExpr!2893) (regTwo!6298 r!15766)))))

(declare-fun e!668860 () Bool)

(assert (=> d!299752 (= lt!358439 e!668860)))

(declare-fun c!176069 () Bool)

(assert (=> d!299752 (= c!176069 (isEmpty!6515 (_2!6602 lt!358363)))))

(assert (=> d!299752 (validRegex!1362 (regTwo!6298 r!15766))))

(assert (=> d!299752 (= (matchR!1429 (regTwo!6298 r!15766) (_2!6602 lt!358363)) lt!358439)))

(declare-fun b!1052872 () Bool)

(declare-fun res!470819 () Bool)

(declare-fun e!668861 () Bool)

(assert (=> b!1052872 (=> res!470819 e!668861)))

(assert (=> b!1052872 (= res!470819 (not ((_ is ElementMatch!2893) (regTwo!6298 r!15766))))))

(assert (=> b!1052872 (= e!668857 e!668861)))

(declare-fun b!1052873 () Bool)

(declare-fun e!668858 () Bool)

(assert (=> b!1052873 (= e!668858 (not (= (head!1939 (_2!6602 lt!358363)) (c!175954 (regTwo!6298 r!15766)))))))

(declare-fun b!1052874 () Bool)

(declare-fun e!668862 () Bool)

(assert (=> b!1052874 (= e!668861 e!668862)))

(declare-fun res!470814 () Bool)

(assert (=> b!1052874 (=> (not res!470814) (not e!668862))))

(assert (=> b!1052874 (= res!470814 (not lt!358439))))

(declare-fun b!1052875 () Bool)

(declare-fun res!470818 () Bool)

(assert (=> b!1052875 (=> res!470818 e!668858)))

(assert (=> b!1052875 (= res!470818 (not (isEmpty!6515 (tail!1501 (_2!6602 lt!358363)))))))

(declare-fun bm!74998 () Bool)

(assert (=> bm!74998 (= call!75003 (isEmpty!6515 (_2!6602 lt!358363)))))

(declare-fun b!1052876 () Bool)

(declare-fun res!470813 () Bool)

(assert (=> b!1052876 (=> (not res!470813) (not e!668863))))

(assert (=> b!1052876 (= res!470813 (isEmpty!6515 (tail!1501 (_2!6602 lt!358363))))))

(declare-fun b!1052877 () Bool)

(declare-fun res!470816 () Bool)

(assert (=> b!1052877 (=> res!470816 e!668861)))

(assert (=> b!1052877 (= res!470816 e!668863)))

(declare-fun res!470817 () Bool)

(assert (=> b!1052877 (=> (not res!470817) (not e!668863))))

(assert (=> b!1052877 (= res!470817 lt!358439)))

(declare-fun b!1052878 () Bool)

(assert (=> b!1052878 (= e!668860 (matchR!1429 (derivativeStep!784 (regTwo!6298 r!15766) (head!1939 (_2!6602 lt!358363))) (tail!1501 (_2!6602 lt!358363))))))

(declare-fun b!1052879 () Bool)

(assert (=> b!1052879 (= e!668860 (nullable!984 (regTwo!6298 r!15766)))))

(declare-fun b!1052880 () Bool)

(assert (=> b!1052880 (= e!668862 e!668858)))

(declare-fun res!470812 () Bool)

(assert (=> b!1052880 (=> res!470812 e!668858)))

(assert (=> b!1052880 (= res!470812 call!75003)))

(assert (= (and d!299752 c!176069) b!1052879))

(assert (= (and d!299752 (not c!176069)) b!1052878))

(assert (= (and d!299752 c!176070) b!1052868))

(assert (= (and d!299752 (not c!176070)) b!1052871))

(assert (= (and b!1052871 c!176071) b!1052869))

(assert (= (and b!1052871 (not c!176071)) b!1052872))

(assert (= (and b!1052872 (not res!470819)) b!1052877))

(assert (= (and b!1052877 res!470817) b!1052870))

(assert (= (and b!1052870 res!470815) b!1052876))

(assert (= (and b!1052876 res!470813) b!1052867))

(assert (= (and b!1052877 (not res!470816)) b!1052874))

(assert (= (and b!1052874 res!470814) b!1052880))

(assert (= (and b!1052880 (not res!470812)) b!1052875))

(assert (= (and b!1052875 (not res!470818)) b!1052873))

(assert (= (or b!1052868 b!1052870 b!1052880) bm!74998))

(assert (=> b!1052873 m!1217117))

(assert (=> b!1052875 m!1217119))

(assert (=> b!1052875 m!1217119))

(assert (=> b!1052875 m!1217121))

(assert (=> b!1052878 m!1217117))

(assert (=> b!1052878 m!1217117))

(declare-fun m!1217137 () Bool)

(assert (=> b!1052878 m!1217137))

(assert (=> b!1052878 m!1217119))

(assert (=> b!1052878 m!1217137))

(assert (=> b!1052878 m!1217119))

(declare-fun m!1217139 () Bool)

(assert (=> b!1052878 m!1217139))

(assert (=> b!1052876 m!1217119))

(assert (=> b!1052876 m!1217119))

(assert (=> b!1052876 m!1217121))

(assert (=> b!1052879 m!1216873))

(assert (=> d!299752 m!1217129))

(assert (=> d!299752 m!1216783))

(assert (=> b!1052867 m!1217117))

(assert (=> bm!74998 m!1217129))

(assert (=> b!1052407 d!299752))

(declare-fun d!299754 () Bool)

(assert (=> d!299754 (= (get!3617 lt!358362) (v!19834 lt!358362))))

(assert (=> b!1052407 d!299754))

(declare-fun d!299756 () Bool)

(assert (=> d!299756 (= (matchR!1429 (regTwo!6298 r!15766) (_2!6602 lt!358363)) (matchR!1429 (removeUselessConcat!442 (regTwo!6298 r!15766)) (_2!6602 lt!358363)))))

(declare-fun lt!358440 () Unit!15461)

(assert (=> d!299756 (= lt!358440 (choose!6686 (regTwo!6298 r!15766) (_2!6602 lt!358363)))))

(assert (=> d!299756 (validRegex!1362 (regTwo!6298 r!15766))))

(assert (=> d!299756 (= (lemmaRemoveUselessConcatSound!266 (regTwo!6298 r!15766) (_2!6602 lt!358363)) lt!358440)))

(declare-fun bs!251303 () Bool)

(assert (= bs!251303 d!299756))

(assert (=> bs!251303 m!1216783))

(declare-fun m!1217141 () Bool)

(assert (=> bs!251303 m!1217141))

(assert (=> bs!251303 m!1216825))

(assert (=> bs!251303 m!1216835))

(assert (=> bs!251303 m!1216825))

(declare-fun m!1217143 () Bool)

(assert (=> bs!251303 m!1217143))

(assert (=> b!1052407 d!299756))

(declare-fun b!1052897 () Bool)

(declare-fun e!668878 () Bool)

(assert (=> b!1052897 (= e!668878 (= (head!1939 (_1!6602 lt!358363)) (c!175954 (regOne!6298 r!15766))))))

(declare-fun b!1052898 () Bool)

(declare-fun e!668874 () Bool)

(declare-fun lt!358441 () Bool)

(declare-fun call!75012 () Bool)

(assert (=> b!1052898 (= e!668874 (= lt!358441 call!75012))))

(declare-fun b!1052899 () Bool)

(declare-fun e!668872 () Bool)

(assert (=> b!1052899 (= e!668872 (not lt!358441))))

(declare-fun b!1052900 () Bool)

(declare-fun res!470823 () Bool)

(assert (=> b!1052900 (=> (not res!470823) (not e!668878))))

(assert (=> b!1052900 (= res!470823 (not call!75012))))

(declare-fun b!1052901 () Bool)

(assert (=> b!1052901 (= e!668874 e!668872)))

(declare-fun c!176082 () Bool)

(assert (=> b!1052901 (= c!176082 ((_ is EmptyLang!2893) (regOne!6298 r!15766)))))

(declare-fun d!299758 () Bool)

(assert (=> d!299758 e!668874))

(declare-fun c!176081 () Bool)

(assert (=> d!299758 (= c!176081 ((_ is EmptyExpr!2893) (regOne!6298 r!15766)))))

(declare-fun e!668875 () Bool)

(assert (=> d!299758 (= lt!358441 e!668875)))

(declare-fun c!176080 () Bool)

(assert (=> d!299758 (= c!176080 (isEmpty!6515 (_1!6602 lt!358363)))))

(assert (=> d!299758 (validRegex!1362 (regOne!6298 r!15766))))

(assert (=> d!299758 (= (matchR!1429 (regOne!6298 r!15766) (_1!6602 lt!358363)) lt!358441)))

(declare-fun b!1052902 () Bool)

(declare-fun res!470827 () Bool)

(declare-fun e!668876 () Bool)

(assert (=> b!1052902 (=> res!470827 e!668876)))

(assert (=> b!1052902 (= res!470827 (not ((_ is ElementMatch!2893) (regOne!6298 r!15766))))))

(assert (=> b!1052902 (= e!668872 e!668876)))

(declare-fun b!1052903 () Bool)

(declare-fun e!668873 () Bool)

(assert (=> b!1052903 (= e!668873 (not (= (head!1939 (_1!6602 lt!358363)) (c!175954 (regOne!6298 r!15766)))))))

(declare-fun b!1052904 () Bool)

(declare-fun e!668877 () Bool)

(assert (=> b!1052904 (= e!668876 e!668877)))

(declare-fun res!470822 () Bool)

(assert (=> b!1052904 (=> (not res!470822) (not e!668877))))

(assert (=> b!1052904 (= res!470822 (not lt!358441))))

(declare-fun b!1052905 () Bool)

(declare-fun res!470826 () Bool)

(assert (=> b!1052905 (=> res!470826 e!668873)))

(assert (=> b!1052905 (= res!470826 (not (isEmpty!6515 (tail!1501 (_1!6602 lt!358363)))))))

(declare-fun bm!75007 () Bool)

(assert (=> bm!75007 (= call!75012 (isEmpty!6515 (_1!6602 lt!358363)))))

(declare-fun b!1052906 () Bool)

(declare-fun res!470821 () Bool)

(assert (=> b!1052906 (=> (not res!470821) (not e!668878))))

(assert (=> b!1052906 (= res!470821 (isEmpty!6515 (tail!1501 (_1!6602 lt!358363))))))

(declare-fun b!1052907 () Bool)

(declare-fun res!470824 () Bool)

(assert (=> b!1052907 (=> res!470824 e!668876)))

(assert (=> b!1052907 (= res!470824 e!668878)))

(declare-fun res!470825 () Bool)

(assert (=> b!1052907 (=> (not res!470825) (not e!668878))))

(assert (=> b!1052907 (= res!470825 lt!358441)))

(declare-fun b!1052908 () Bool)

(assert (=> b!1052908 (= e!668875 (matchR!1429 (derivativeStep!784 (regOne!6298 r!15766) (head!1939 (_1!6602 lt!358363))) (tail!1501 (_1!6602 lt!358363))))))

(declare-fun b!1052909 () Bool)

(assert (=> b!1052909 (= e!668875 (nullable!984 (regOne!6298 r!15766)))))

(declare-fun b!1052910 () Bool)

(assert (=> b!1052910 (= e!668877 e!668873)))

(declare-fun res!470820 () Bool)

(assert (=> b!1052910 (=> res!470820 e!668873)))

(assert (=> b!1052910 (= res!470820 call!75012)))

(assert (= (and d!299758 c!176080) b!1052909))

(assert (= (and d!299758 (not c!176080)) b!1052908))

(assert (= (and d!299758 c!176081) b!1052898))

(assert (= (and d!299758 (not c!176081)) b!1052901))

(assert (= (and b!1052901 c!176082) b!1052899))

(assert (= (and b!1052901 (not c!176082)) b!1052902))

(assert (= (and b!1052902 (not res!470827)) b!1052907))

(assert (= (and b!1052907 res!470825) b!1052900))

(assert (= (and b!1052900 res!470823) b!1052906))

(assert (= (and b!1052906 res!470821) b!1052897))

(assert (= (and b!1052907 (not res!470824)) b!1052904))

(assert (= (and b!1052904 res!470822) b!1052910))

(assert (= (and b!1052910 (not res!470820)) b!1052905))

(assert (= (and b!1052905 (not res!470826)) b!1052903))

(assert (= (or b!1052898 b!1052900 b!1052910) bm!75007))

(assert (=> b!1052903 m!1217097))

(assert (=> b!1052905 m!1217099))

(assert (=> b!1052905 m!1217099))

(assert (=> b!1052905 m!1217101))

(assert (=> b!1052908 m!1217097))

(assert (=> b!1052908 m!1217097))

(declare-fun m!1217145 () Bool)

(assert (=> b!1052908 m!1217145))

(assert (=> b!1052908 m!1217099))

(assert (=> b!1052908 m!1217145))

(assert (=> b!1052908 m!1217099))

(declare-fun m!1217147 () Bool)

(assert (=> b!1052908 m!1217147))

(assert (=> b!1052906 m!1217099))

(assert (=> b!1052906 m!1217099))

(assert (=> b!1052906 m!1217101))

(assert (=> b!1052909 m!1216883))

(assert (=> d!299758 m!1217109))

(assert (=> d!299758 m!1216837))

(assert (=> b!1052897 m!1217097))

(assert (=> bm!75007 m!1217109))

(assert (=> b!1052407 d!299758))

(declare-fun b!1052913 () Bool)

(declare-fun e!668883 () Bool)

(declare-fun e!668882 () Bool)

(assert (=> b!1052913 (= e!668883 e!668882)))

(declare-fun c!176083 () Bool)

(assert (=> b!1052913 (= c!176083 ((_ is Star!2893) (regOne!6298 r!15766)))))

(declare-fun d!299760 () Bool)

(declare-fun res!470833 () Bool)

(assert (=> d!299760 (=> res!470833 e!668883)))

(assert (=> d!299760 (= res!470833 ((_ is ElementMatch!2893) (regOne!6298 r!15766)))))

(assert (=> d!299760 (= (validRegex!1362 (regOne!6298 r!15766)) e!668883)))

(declare-fun call!75017 () Bool)

(declare-fun c!176084 () Bool)

(declare-fun bm!75010 () Bool)

(assert (=> bm!75010 (= call!75017 (validRegex!1362 (ite c!176083 (reg!3222 (regOne!6298 r!15766)) (ite c!176084 (regTwo!6299 (regOne!6298 r!15766)) (regTwo!6298 (regOne!6298 r!15766))))))))

(declare-fun b!1052914 () Bool)

(declare-fun e!668886 () Bool)

(declare-fun call!75015 () Bool)

(assert (=> b!1052914 (= e!668886 call!75015)))

(declare-fun bm!75011 () Bool)

(declare-fun call!75016 () Bool)

(assert (=> bm!75011 (= call!75016 (validRegex!1362 (ite c!176084 (regOne!6299 (regOne!6298 r!15766)) (regOne!6298 (regOne!6298 r!15766)))))))

(declare-fun b!1052915 () Bool)

(declare-fun e!668881 () Bool)

(assert (=> b!1052915 (= e!668881 e!668886)))

(declare-fun res!470834 () Bool)

(assert (=> b!1052915 (=> (not res!470834) (not e!668886))))

(assert (=> b!1052915 (= res!470834 call!75016)))

(declare-fun bm!75012 () Bool)

(assert (=> bm!75012 (= call!75015 call!75017)))

(declare-fun b!1052916 () Bool)

(declare-fun e!668885 () Bool)

(assert (=> b!1052916 (= e!668882 e!668885)))

(declare-fun res!470830 () Bool)

(assert (=> b!1052916 (= res!470830 (not (nullable!984 (reg!3222 (regOne!6298 r!15766)))))))

(assert (=> b!1052916 (=> (not res!470830) (not e!668885))))

(declare-fun b!1052917 () Bool)

(declare-fun e!668884 () Bool)

(assert (=> b!1052917 (= e!668882 e!668884)))

(assert (=> b!1052917 (= c!176084 ((_ is Union!2893) (regOne!6298 r!15766)))))

(declare-fun b!1052918 () Bool)

(declare-fun res!470831 () Bool)

(declare-fun e!668887 () Bool)

(assert (=> b!1052918 (=> (not res!470831) (not e!668887))))

(assert (=> b!1052918 (= res!470831 call!75016)))

(assert (=> b!1052918 (= e!668884 e!668887)))

(declare-fun b!1052919 () Bool)

(assert (=> b!1052919 (= e!668887 call!75015)))

(declare-fun b!1052920 () Bool)

(assert (=> b!1052920 (= e!668885 call!75017)))

(declare-fun b!1052921 () Bool)

(declare-fun res!470832 () Bool)

(assert (=> b!1052921 (=> res!470832 e!668881)))

(assert (=> b!1052921 (= res!470832 (not ((_ is Concat!4726) (regOne!6298 r!15766))))))

(assert (=> b!1052921 (= e!668884 e!668881)))

(assert (= (and d!299760 (not res!470833)) b!1052913))

(assert (= (and b!1052913 c!176083) b!1052916))

(assert (= (and b!1052913 (not c!176083)) b!1052917))

(assert (= (and b!1052916 res!470830) b!1052920))

(assert (= (and b!1052917 c!176084) b!1052918))

(assert (= (and b!1052917 (not c!176084)) b!1052921))

(assert (= (and b!1052918 res!470831) b!1052919))

(assert (= (and b!1052921 (not res!470832)) b!1052915))

(assert (= (and b!1052915 res!470834) b!1052914))

(assert (= (or b!1052919 b!1052914) bm!75012))

(assert (= (or b!1052918 b!1052915) bm!75011))

(assert (= (or b!1052920 bm!75012) bm!75010))

(declare-fun m!1217149 () Bool)

(assert (=> bm!75010 m!1217149))

(declare-fun m!1217151 () Bool)

(assert (=> bm!75011 m!1217151))

(declare-fun m!1217153 () Bool)

(assert (=> b!1052916 m!1217153))

(assert (=> b!1052407 d!299760))

(declare-fun b!1052933 () Bool)

(declare-fun e!668890 () Bool)

(declare-fun tp!317345 () Bool)

(declare-fun tp!317347 () Bool)

(assert (=> b!1052933 (= e!668890 (and tp!317345 tp!317347))))

(declare-fun b!1052935 () Bool)

(declare-fun tp!317343 () Bool)

(declare-fun tp!317346 () Bool)

(assert (=> b!1052935 (= e!668890 (and tp!317343 tp!317346))))

(declare-fun b!1052932 () Bool)

(assert (=> b!1052932 (= e!668890 tp_is_empty!5429)))

(declare-fun b!1052934 () Bool)

(declare-fun tp!317344 () Bool)

(assert (=> b!1052934 (= e!668890 tp!317344)))

(assert (=> b!1052405 (= tp!317328 e!668890)))

(assert (= (and b!1052405 ((_ is ElementMatch!2893) (reg!3222 r!15766))) b!1052932))

(assert (= (and b!1052405 ((_ is Concat!4726) (reg!3222 r!15766))) b!1052933))

(assert (= (and b!1052405 ((_ is Star!2893) (reg!3222 r!15766))) b!1052934))

(assert (= (and b!1052405 ((_ is Union!2893) (reg!3222 r!15766))) b!1052935))

(declare-fun b!1052951 () Bool)

(declare-fun e!668899 () Bool)

(declare-fun tp!317350 () Bool)

(assert (=> b!1052951 (= e!668899 (and tp_is_empty!5429 tp!317350))))

(assert (=> b!1052401 (= tp!317329 e!668899)))

(assert (= (and b!1052401 ((_ is Cons!10107) (t!101169 s!10566))) b!1052951))

(declare-fun b!1052953 () Bool)

(declare-fun e!668900 () Bool)

(declare-fun tp!317353 () Bool)

(declare-fun tp!317355 () Bool)

(assert (=> b!1052953 (= e!668900 (and tp!317353 tp!317355))))

(declare-fun b!1052955 () Bool)

(declare-fun tp!317351 () Bool)

(declare-fun tp!317354 () Bool)

(assert (=> b!1052955 (= e!668900 (and tp!317351 tp!317354))))

(declare-fun b!1052952 () Bool)

(assert (=> b!1052952 (= e!668900 tp_is_empty!5429)))

(declare-fun b!1052954 () Bool)

(declare-fun tp!317352 () Bool)

(assert (=> b!1052954 (= e!668900 tp!317352)))

(assert (=> b!1052400 (= tp!317327 e!668900)))

(assert (= (and b!1052400 ((_ is ElementMatch!2893) (regOne!6299 r!15766))) b!1052952))

(assert (= (and b!1052400 ((_ is Concat!4726) (regOne!6299 r!15766))) b!1052953))

(assert (= (and b!1052400 ((_ is Star!2893) (regOne!6299 r!15766))) b!1052954))

(assert (= (and b!1052400 ((_ is Union!2893) (regOne!6299 r!15766))) b!1052955))

(declare-fun b!1052957 () Bool)

(declare-fun e!668901 () Bool)

(declare-fun tp!317358 () Bool)

(declare-fun tp!317360 () Bool)

(assert (=> b!1052957 (= e!668901 (and tp!317358 tp!317360))))

(declare-fun b!1052959 () Bool)

(declare-fun tp!317356 () Bool)

(declare-fun tp!317359 () Bool)

(assert (=> b!1052959 (= e!668901 (and tp!317356 tp!317359))))

(declare-fun b!1052956 () Bool)

(assert (=> b!1052956 (= e!668901 tp_is_empty!5429)))

(declare-fun b!1052958 () Bool)

(declare-fun tp!317357 () Bool)

(assert (=> b!1052958 (= e!668901 tp!317357)))

(assert (=> b!1052400 (= tp!317332 e!668901)))

(assert (= (and b!1052400 ((_ is ElementMatch!2893) (regTwo!6299 r!15766))) b!1052956))

(assert (= (and b!1052400 ((_ is Concat!4726) (regTwo!6299 r!15766))) b!1052957))

(assert (= (and b!1052400 ((_ is Star!2893) (regTwo!6299 r!15766))) b!1052958))

(assert (= (and b!1052400 ((_ is Union!2893) (regTwo!6299 r!15766))) b!1052959))

(declare-fun b!1052961 () Bool)

(declare-fun e!668902 () Bool)

(declare-fun tp!317363 () Bool)

(declare-fun tp!317365 () Bool)

(assert (=> b!1052961 (= e!668902 (and tp!317363 tp!317365))))

(declare-fun b!1052963 () Bool)

(declare-fun tp!317361 () Bool)

(declare-fun tp!317364 () Bool)

(assert (=> b!1052963 (= e!668902 (and tp!317361 tp!317364))))

(declare-fun b!1052960 () Bool)

(assert (=> b!1052960 (= e!668902 tp_is_empty!5429)))

(declare-fun b!1052962 () Bool)

(declare-fun tp!317362 () Bool)

(assert (=> b!1052962 (= e!668902 tp!317362)))

(assert (=> b!1052397 (= tp!317331 e!668902)))

(assert (= (and b!1052397 ((_ is ElementMatch!2893) (regOne!6298 r!15766))) b!1052960))

(assert (= (and b!1052397 ((_ is Concat!4726) (regOne!6298 r!15766))) b!1052961))

(assert (= (and b!1052397 ((_ is Star!2893) (regOne!6298 r!15766))) b!1052962))

(assert (= (and b!1052397 ((_ is Union!2893) (regOne!6298 r!15766))) b!1052963))

(declare-fun b!1052965 () Bool)

(declare-fun e!668903 () Bool)

(declare-fun tp!317368 () Bool)

(declare-fun tp!317370 () Bool)

(assert (=> b!1052965 (= e!668903 (and tp!317368 tp!317370))))

(declare-fun b!1052967 () Bool)

(declare-fun tp!317366 () Bool)

(declare-fun tp!317369 () Bool)

(assert (=> b!1052967 (= e!668903 (and tp!317366 tp!317369))))

(declare-fun b!1052964 () Bool)

(assert (=> b!1052964 (= e!668903 tp_is_empty!5429)))

(declare-fun b!1052966 () Bool)

(declare-fun tp!317367 () Bool)

(assert (=> b!1052966 (= e!668903 tp!317367)))

(assert (=> b!1052397 (= tp!317330 e!668903)))

(assert (= (and b!1052397 ((_ is ElementMatch!2893) (regTwo!6298 r!15766))) b!1052964))

(assert (= (and b!1052397 ((_ is Concat!4726) (regTwo!6298 r!15766))) b!1052965))

(assert (= (and b!1052397 ((_ is Star!2893) (regTwo!6298 r!15766))) b!1052966))

(assert (= (and b!1052397 ((_ is Union!2893) (regTwo!6298 r!15766))) b!1052967))

(check-sat (not b!1052452) (not bm!74993) (not b!1052906) (not b!1052740) (not b!1052626) (not b!1052451) (not b!1052963) (not b!1052819) (not d!299658) (not bm!74992) (not d!299714) (not bm!74933) (not b!1052772) (not bm!74978) (not d!299688) (not bm!74979) (not b!1052855) (not b!1052816) (not d!299738) (not d!299750) (not b!1052933) (not b!1052667) (not b!1052897) (not bm!74959) (not b!1052867) (not d!299668) (not b!1052832) (not b!1052951) (not b!1052861) (not bm!74989) (not bm!74960) (not b!1052813) (not b!1052958) (not d!299674) (not d!299680) (not b!1052953) (not b!1052515) (not b!1052916) (not b!1052961) (not b!1052878) (not b!1052935) (not b!1052829) (not b!1052663) (not d!299740) (not d!299696) (not b!1052858) (not b!1052621) (not b!1052875) (not b!1052446) (not b!1052966) (not b!1052873) (not b!1052807) (not d!299694) (not bm!74987) (not b!1052821) (not b!1052957) (not b!1052781) (not b!1052795) (not b!1052789) (not d!299758) (not b!1052622) (not b!1052815) (not b!1052662) (not b!1052934) (not d!299692) (not b!1052908) (not b!1052818) (not b!1052664) (not b!1052827) (not bm!74986) (not b!1052504) (not d!299746) (not d!299752) (not d!299660) (not bm!75010) (not b!1052962) (not bm!74954) (not bm!74998) (not bm!75007) (not b!1052876) (not b!1052903) (not b!1052660) (not d!299690) (not b!1052967) (not b!1052905) (not d!299756) (not bm!74955) (not bm!74990) (not d!299742) (not b!1052959) (not b!1052448) (not b!1052734) (not b!1052965) (not b!1052849) (not d!299672) (not d!299700) (not b!1052909) (not b!1052833) (not b!1052440) (not b!1052857) (not bm!74994) (not b!1052955) (not bm!75011) (not b!1052830) (not b!1052954) (not b!1052860) (not d!299666) (not b!1052879) (not b!1052620) (not b!1052449) tp_is_empty!5429 (not b!1052661) (not bm!74995) (not d!299686) (not d!299698) (not b!1052623) (not b!1052619) (not bm!74997))
(check-sat)
