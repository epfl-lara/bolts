; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!81364 () Bool)

(assert start!81364)

(declare-fun b!904699 () Bool)

(assert (=> b!904699 true))

(assert (=> b!904699 true))

(declare-fun lambda!28460 () Int)

(declare-fun lambda!28459 () Int)

(assert (=> b!904699 (not (= lambda!28460 lambda!28459))))

(assert (=> b!904699 true))

(assert (=> b!904699 true))

(declare-fun b!904694 () Bool)

(declare-fun e!590988 () Bool)

(declare-fun tp!283430 () Bool)

(assert (=> b!904694 (= e!590988 tp!283430)))

(declare-fun b!904695 () Bool)

(declare-fun tp!283431 () Bool)

(declare-fun tp!283434 () Bool)

(assert (=> b!904695 (= e!590988 (and tp!283431 tp!283434))))

(declare-fun b!904696 () Bool)

(declare-fun e!590990 () Bool)

(declare-fun e!590987 () Bool)

(assert (=> b!904696 (= e!590990 (not e!590987))))

(declare-fun res!411365 () Bool)

(assert (=> b!904696 (=> res!411365 e!590987)))

(declare-fun lt!335427 () Bool)

(declare-datatypes ((C!5350 0))(
  ( (C!5351 (val!2923 Int)) )
))
(declare-datatypes ((Regex!2390 0))(
  ( (ElementMatch!2390 (c!146547 C!5350)) (Concat!4223 (regOne!5292 Regex!2390) (regTwo!5292 Regex!2390)) (EmptyExpr!2390) (Star!2390 (reg!2719 Regex!2390)) (EmptyLang!2390) (Union!2390 (regOne!5293 Regex!2390) (regTwo!5293 Regex!2390)) )
))
(declare-fun r!15766 () Regex!2390)

(assert (=> b!904696 (= res!411365 (or lt!335427 (not (is-Concat!4223 r!15766)) (not (is-EmptyExpr!2390 (regOne!5292 r!15766)))))))

(declare-datatypes ((List!9620 0))(
  ( (Nil!9604) (Cons!9604 (h!15005 C!5350) (t!100666 List!9620)) )
))
(declare-fun s!10566 () List!9620)

(declare-fun matchRSpec!191 (Regex!2390 List!9620) Bool)

(assert (=> b!904696 (= lt!335427 (matchRSpec!191 r!15766 s!10566))))

(declare-fun matchR!928 (Regex!2390 List!9620) Bool)

(assert (=> b!904696 (= lt!335427 (matchR!928 r!15766 s!10566))))

(declare-datatypes ((Unit!14399 0))(
  ( (Unit!14400) )
))
(declare-fun lt!335426 () Unit!14399)

(declare-fun mainMatchTheorem!191 (Regex!2390 List!9620) Unit!14399)

(assert (=> b!904696 (= lt!335426 (mainMatchTheorem!191 r!15766 s!10566))))

(declare-fun b!904697 () Bool)

(declare-fun res!411367 () Bool)

(declare-fun e!590989 () Bool)

(assert (=> b!904697 (=> res!411367 e!590989)))

(declare-fun validRegex!859 (Regex!2390) Bool)

(assert (=> b!904697 (= res!411367 (not (validRegex!859 (regTwo!5292 r!15766))))))

(declare-fun b!904698 () Bool)

(declare-fun e!590986 () Bool)

(declare-fun tp_is_empty!4423 () Bool)

(declare-fun tp!283433 () Bool)

(assert (=> b!904698 (= e!590986 (and tp_is_empty!4423 tp!283433))))

(declare-fun res!411366 () Bool)

(assert (=> start!81364 (=> (not res!411366) (not e!590990))))

(assert (=> start!81364 (= res!411366 (validRegex!859 r!15766))))

(assert (=> start!81364 e!590990))

(assert (=> start!81364 e!590988))

(assert (=> start!81364 e!590986))

(assert (=> b!904699 (= e!590987 e!590989)))

(declare-fun res!411363 () Bool)

(assert (=> b!904699 (=> res!411363 e!590989)))

(declare-fun isEmpty!5807 (List!9620) Bool)

(assert (=> b!904699 (= res!411363 (isEmpty!5807 s!10566))))

(declare-fun Exists!165 (Int) Bool)

(assert (=> b!904699 (= (Exists!165 lambda!28459) (Exists!165 lambda!28460))))

(declare-fun lt!335429 () Unit!14399)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!81 (Regex!2390 Regex!2390 List!9620) Unit!14399)

(assert (=> b!904699 (= lt!335429 (lemmaExistCutMatchRandMatchRSpecEquivalent!81 EmptyExpr!2390 (regTwo!5292 r!15766) s!10566))))

(declare-datatypes ((tuple2!10774 0))(
  ( (tuple2!10775 (_1!6213 List!9620) (_2!6213 List!9620)) )
))
(declare-datatypes ((Option!2029 0))(
  ( (None!2028) (Some!2028 (v!19445 tuple2!10774)) )
))
(declare-fun isDefined!1671 (Option!2029) Bool)

(declare-fun findConcatSeparation!135 (Regex!2390 Regex!2390 List!9620 List!9620 List!9620) Option!2029)

(assert (=> b!904699 (= (isDefined!1671 (findConcatSeparation!135 EmptyExpr!2390 (regTwo!5292 r!15766) Nil!9604 s!10566 s!10566)) (Exists!165 lambda!28459))))

(declare-fun lt!335428 () Unit!14399)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!135 (Regex!2390 Regex!2390 List!9620) Unit!14399)

(assert (=> b!904699 (= lt!335428 (lemmaFindConcatSeparationEquivalentToExists!135 EmptyExpr!2390 (regTwo!5292 r!15766) s!10566))))

(declare-fun b!904700 () Bool)

(assert (=> b!904700 (= e!590988 tp_is_empty!4423)))

(declare-fun b!904701 () Bool)

(declare-fun res!411364 () Bool)

(assert (=> b!904701 (=> res!411364 e!590989)))

(assert (=> b!904701 (= res!411364 false)))

(declare-fun b!904702 () Bool)

(declare-fun ++!2517 (List!9620 List!9620) List!9620)

(assert (=> b!904702 (= e!590989 (= (++!2517 Nil!9604 s!10566) s!10566))))

(declare-fun b!904703 () Bool)

(declare-fun tp!283432 () Bool)

(declare-fun tp!283429 () Bool)

(assert (=> b!904703 (= e!590988 (and tp!283432 tp!283429))))

(assert (= (and start!81364 res!411366) b!904696))

(assert (= (and b!904696 (not res!411365)) b!904699))

(assert (= (and b!904699 (not res!411363)) b!904701))

(assert (= (and b!904701 (not res!411364)) b!904697))

(assert (= (and b!904697 (not res!411367)) b!904702))

(assert (= (and start!81364 (is-ElementMatch!2390 r!15766)) b!904700))

(assert (= (and start!81364 (is-Concat!4223 r!15766)) b!904703))

(assert (= (and start!81364 (is-Star!2390 r!15766)) b!904694))

(assert (= (and start!81364 (is-Union!2390 r!15766)) b!904695))

(assert (= (and start!81364 (is-Cons!9604 s!10566)) b!904698))

(declare-fun m!1140413 () Bool)

(assert (=> b!904699 m!1140413))

(declare-fun m!1140415 () Bool)

(assert (=> b!904699 m!1140415))

(declare-fun m!1140417 () Bool)

(assert (=> b!904699 m!1140417))

(declare-fun m!1140419 () Bool)

(assert (=> b!904699 m!1140419))

(declare-fun m!1140421 () Bool)

(assert (=> b!904699 m!1140421))

(declare-fun m!1140423 () Bool)

(assert (=> b!904699 m!1140423))

(assert (=> b!904699 m!1140413))

(assert (=> b!904699 m!1140423))

(declare-fun m!1140425 () Bool)

(assert (=> b!904699 m!1140425))

(declare-fun m!1140427 () Bool)

(assert (=> b!904697 m!1140427))

(declare-fun m!1140429 () Bool)

(assert (=> start!81364 m!1140429))

(declare-fun m!1140431 () Bool)

(assert (=> b!904702 m!1140431))

(declare-fun m!1140433 () Bool)

(assert (=> b!904696 m!1140433))

(declare-fun m!1140435 () Bool)

(assert (=> b!904696 m!1140435))

(declare-fun m!1140437 () Bool)

(assert (=> b!904696 m!1140437))

(push 1)

(assert (not b!904695))

(assert (not b!904696))

(assert (not b!904694))

(assert (not b!904703))

(assert (not b!904702))

(assert (not b!904698))

(assert (not start!81364))

(assert (not b!904697))

(assert tp_is_empty!4423)

(assert (not b!904699))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!904772 () Bool)

(declare-fun e!591030 () Bool)

(declare-fun e!591031 () Bool)

(assert (=> b!904772 (= e!591030 e!591031)))

(declare-fun c!146554 () Bool)

(assert (=> b!904772 (= c!146554 (is-Star!2390 r!15766))))

(declare-fun b!904773 () Bool)

(declare-fun e!591029 () Bool)

(assert (=> b!904773 (= e!591031 e!591029)))

(declare-fun c!146553 () Bool)

(assert (=> b!904773 (= c!146553 (is-Union!2390 r!15766))))

(declare-fun b!904774 () Bool)

(declare-fun res!411407 () Bool)

(declare-fun e!591027 () Bool)

(assert (=> b!904774 (=> (not res!411407) (not e!591027))))

(declare-fun call!54106 () Bool)

(assert (=> b!904774 (= res!411407 call!54106)))

(assert (=> b!904774 (= e!591029 e!591027)))

(declare-fun b!904775 () Bool)

(declare-fun e!591028 () Bool)

(declare-fun e!591032 () Bool)

(assert (=> b!904775 (= e!591028 e!591032)))

(declare-fun res!411406 () Bool)

(assert (=> b!904775 (=> (not res!411406) (not e!591032))))

(assert (=> b!904775 (= res!411406 call!54106)))

(declare-fun b!904776 () Bool)

(declare-fun e!591026 () Bool)

(assert (=> b!904776 (= e!591031 e!591026)))

(declare-fun res!411408 () Bool)

(declare-fun nullable!640 (Regex!2390) Bool)

(assert (=> b!904776 (= res!411408 (not (nullable!640 (reg!2719 r!15766))))))

(assert (=> b!904776 (=> (not res!411408) (not e!591026))))

(declare-fun b!904777 () Bool)

(declare-fun res!411409 () Bool)

(assert (=> b!904777 (=> res!411409 e!591028)))

(assert (=> b!904777 (= res!411409 (not (is-Concat!4223 r!15766)))))

(assert (=> b!904777 (= e!591029 e!591028)))

(declare-fun call!54107 () Bool)

(declare-fun bm!54101 () Bool)

(assert (=> bm!54101 (= call!54107 (validRegex!859 (ite c!146554 (reg!2719 r!15766) (ite c!146553 (regOne!5293 r!15766) (regOne!5292 r!15766)))))))

(declare-fun b!904778 () Bool)

(declare-fun call!54108 () Bool)

(assert (=> b!904778 (= e!591032 call!54108)))

(declare-fun d!278683 () Bool)

(declare-fun res!411405 () Bool)

(assert (=> d!278683 (=> res!411405 e!591030)))

(assert (=> d!278683 (= res!411405 (is-ElementMatch!2390 r!15766))))

(assert (=> d!278683 (= (validRegex!859 r!15766) e!591030)))

(declare-fun b!904779 () Bool)

(assert (=> b!904779 (= e!591026 call!54107)))

(declare-fun b!904780 () Bool)

(assert (=> b!904780 (= e!591027 call!54108)))

(declare-fun bm!54102 () Bool)

(assert (=> bm!54102 (= call!54108 (validRegex!859 (ite c!146553 (regTwo!5293 r!15766) (regTwo!5292 r!15766))))))

(declare-fun bm!54103 () Bool)

(assert (=> bm!54103 (= call!54106 call!54107)))

(assert (= (and d!278683 (not res!411405)) b!904772))

(assert (= (and b!904772 c!146554) b!904776))

(assert (= (and b!904772 (not c!146554)) b!904773))

(assert (= (and b!904776 res!411408) b!904779))

(assert (= (and b!904773 c!146553) b!904774))

(assert (= (and b!904773 (not c!146553)) b!904777))

(assert (= (and b!904774 res!411407) b!904780))

(assert (= (and b!904777 (not res!411409)) b!904775))

(assert (= (and b!904775 res!411406) b!904778))

(assert (= (or b!904780 b!904778) bm!54102))

(assert (= (or b!904774 b!904775) bm!54103))

(assert (= (or b!904779 bm!54103) bm!54101))

(declare-fun m!1140465 () Bool)

(assert (=> b!904776 m!1140465))

(declare-fun m!1140467 () Bool)

(assert (=> bm!54101 m!1140467))

(declare-fun m!1140469 () Bool)

(assert (=> bm!54102 m!1140469))

(assert (=> start!81364 d!278683))

(declare-fun b!904790 () Bool)

(declare-fun e!591038 () List!9620)

(assert (=> b!904790 (= e!591038 (Cons!9604 (h!15005 Nil!9604) (++!2517 (t!100666 Nil!9604) s!10566)))))

(declare-fun b!904792 () Bool)

(declare-fun e!591037 () Bool)

(declare-fun lt!335444 () List!9620)

(assert (=> b!904792 (= e!591037 (or (not (= s!10566 Nil!9604)) (= lt!335444 Nil!9604)))))

(declare-fun b!904789 () Bool)

(assert (=> b!904789 (= e!591038 s!10566)))

(declare-fun b!904791 () Bool)

(declare-fun res!411415 () Bool)

(assert (=> b!904791 (=> (not res!411415) (not e!591037))))

(declare-fun size!7881 (List!9620) Int)

(assert (=> b!904791 (= res!411415 (= (size!7881 lt!335444) (+ (size!7881 Nil!9604) (size!7881 s!10566))))))

(declare-fun d!278685 () Bool)

(assert (=> d!278685 e!591037))

(declare-fun res!411414 () Bool)

(assert (=> d!278685 (=> (not res!411414) (not e!591037))))

(declare-fun content!1380 (List!9620) (Set C!5350))

(assert (=> d!278685 (= res!411414 (= (content!1380 lt!335444) (set.union (content!1380 Nil!9604) (content!1380 s!10566))))))

(assert (=> d!278685 (= lt!335444 e!591038)))

(declare-fun c!146557 () Bool)

(assert (=> d!278685 (= c!146557 (is-Nil!9604 Nil!9604))))

(assert (=> d!278685 (= (++!2517 Nil!9604 s!10566) lt!335444)))

(assert (= (and d!278685 c!146557) b!904789))

(assert (= (and d!278685 (not c!146557)) b!904790))

(assert (= (and d!278685 res!411414) b!904791))

(assert (= (and b!904791 res!411415) b!904792))

(declare-fun m!1140471 () Bool)

(assert (=> b!904790 m!1140471))

(declare-fun m!1140473 () Bool)

(assert (=> b!904791 m!1140473))

(declare-fun m!1140475 () Bool)

(assert (=> b!904791 m!1140475))

(declare-fun m!1140477 () Bool)

(assert (=> b!904791 m!1140477))

(declare-fun m!1140479 () Bool)

(assert (=> d!278685 m!1140479))

(declare-fun m!1140481 () Bool)

(assert (=> d!278685 m!1140481))

(declare-fun m!1140483 () Bool)

(assert (=> d!278685 m!1140483))

(assert (=> b!904702 d!278685))

(declare-fun bs!235402 () Bool)

(declare-fun b!904852 () Bool)

(assert (= bs!235402 (and b!904852 b!904699)))

(declare-fun lambda!28473 () Int)

(assert (=> bs!235402 (not (= lambda!28473 lambda!28459))))

(assert (=> bs!235402 (not (= lambda!28473 lambda!28460))))

(assert (=> b!904852 true))

(assert (=> b!904852 true))

(declare-fun bs!235403 () Bool)

(declare-fun b!904843 () Bool)

(assert (= bs!235403 (and b!904843 b!904699)))

(declare-fun lambda!28474 () Int)

(assert (=> bs!235403 (not (= lambda!28474 lambda!28459))))

(assert (=> bs!235403 (= (= (regOne!5292 r!15766) EmptyExpr!2390) (= lambda!28474 lambda!28460))))

(declare-fun bs!235404 () Bool)

(assert (= bs!235404 (and b!904843 b!904852)))

(assert (=> bs!235404 (not (= lambda!28474 lambda!28473))))

(assert (=> b!904843 true))

(assert (=> b!904843 true))

(declare-fun e!591075 () Bool)

(declare-fun call!54119 () Bool)

(assert (=> b!904843 (= e!591075 call!54119)))

(declare-fun b!904844 () Bool)

(declare-fun e!591077 () Bool)

(assert (=> b!904844 (= e!591077 (= s!10566 (Cons!9604 (c!146547 r!15766) Nil!9604)))))

(declare-fun b!904845 () Bool)

(declare-fun e!591072 () Bool)

(declare-fun e!591076 () Bool)

(assert (=> b!904845 (= e!591072 e!591076)))

(declare-fun res!411444 () Bool)

(assert (=> b!904845 (= res!411444 (matchRSpec!191 (regOne!5293 r!15766) s!10566))))

(assert (=> b!904845 (=> res!411444 e!591076)))

(declare-fun b!904846 () Bool)

(assert (=> b!904846 (= e!591072 e!591075)))

(declare-fun c!146572 () Bool)

(assert (=> b!904846 (= c!146572 (is-Star!2390 r!15766))))

(declare-fun b!904847 () Bool)

(declare-fun e!591073 () Bool)

(declare-fun e!591074 () Bool)

(assert (=> b!904847 (= e!591073 e!591074)))

(declare-fun res!411442 () Bool)

(assert (=> b!904847 (= res!411442 (not (is-EmptyLang!2390 r!15766)))))

(assert (=> b!904847 (=> (not res!411442) (not e!591074))))

(declare-fun b!904848 () Bool)

(declare-fun c!146571 () Bool)

(assert (=> b!904848 (= c!146571 (is-Union!2390 r!15766))))

(assert (=> b!904848 (= e!591077 e!591072)))

(declare-fun bm!54114 () Bool)

(assert (=> bm!54114 (= call!54119 (Exists!165 (ite c!146572 lambda!28473 lambda!28474)))))

(declare-fun b!904849 () Bool)

(declare-fun c!146570 () Bool)

(assert (=> b!904849 (= c!146570 (is-ElementMatch!2390 r!15766))))

(assert (=> b!904849 (= e!591074 e!591077)))

(declare-fun b!904850 () Bool)

(declare-fun res!411443 () Bool)

(declare-fun e!591071 () Bool)

(assert (=> b!904850 (=> res!411443 e!591071)))

(declare-fun call!54120 () Bool)

(assert (=> b!904850 (= res!411443 call!54120)))

(assert (=> b!904850 (= e!591075 e!591071)))

(declare-fun b!904851 () Bool)

(assert (=> b!904851 (= e!591076 (matchRSpec!191 (regTwo!5293 r!15766) s!10566))))

(declare-fun bm!54115 () Bool)

(assert (=> bm!54115 (= call!54120 (isEmpty!5807 s!10566))))

(assert (=> b!904852 (= e!591071 call!54119)))

(declare-fun d!278687 () Bool)

(declare-fun c!146573 () Bool)

(assert (=> d!278687 (= c!146573 (is-EmptyExpr!2390 r!15766))))

(assert (=> d!278687 (= (matchRSpec!191 r!15766 s!10566) e!591073)))

(declare-fun b!904853 () Bool)

(assert (=> b!904853 (= e!591073 call!54120)))

(assert (= (and d!278687 c!146573) b!904853))

(assert (= (and d!278687 (not c!146573)) b!904847))

(assert (= (and b!904847 res!411442) b!904849))

(assert (= (and b!904849 c!146570) b!904844))

(assert (= (and b!904849 (not c!146570)) b!904848))

(assert (= (and b!904848 c!146571) b!904845))

(assert (= (and b!904848 (not c!146571)) b!904846))

(assert (= (and b!904845 (not res!411444)) b!904851))

(assert (= (and b!904846 c!146572) b!904850))

(assert (= (and b!904846 (not c!146572)) b!904843))

(assert (= (and b!904850 (not res!411443)) b!904852))

(assert (= (or b!904852 b!904843) bm!54114))

(assert (= (or b!904853 b!904850) bm!54115))

(declare-fun m!1140485 () Bool)

(assert (=> b!904845 m!1140485))

(declare-fun m!1140487 () Bool)

(assert (=> bm!54114 m!1140487))

(declare-fun m!1140489 () Bool)

(assert (=> b!904851 m!1140489))

(assert (=> bm!54115 m!1140421))

(assert (=> b!904696 d!278687))

(declare-fun b!904899 () Bool)

(declare-fun e!591108 () Bool)

(declare-fun lt!335449 () Bool)

(declare-fun call!54126 () Bool)

(assert (=> b!904899 (= e!591108 (= lt!335449 call!54126))))

(declare-fun b!904900 () Bool)

(declare-fun e!591106 () Bool)

(declare-fun head!1605 (List!9620) C!5350)

(assert (=> b!904900 (= e!591106 (= (head!1605 s!10566) (c!146547 r!15766)))))

(declare-fun b!904901 () Bool)

(declare-fun res!411477 () Bool)

(declare-fun e!591103 () Bool)

(assert (=> b!904901 (=> res!411477 e!591103)))

(declare-fun tail!1167 (List!9620) List!9620)

(assert (=> b!904901 (= res!411477 (not (isEmpty!5807 (tail!1167 s!10566))))))

(declare-fun b!904902 () Bool)

(declare-fun res!411476 () Bool)

(declare-fun e!591105 () Bool)

(assert (=> b!904902 (=> res!411476 e!591105)))

(assert (=> b!904902 (= res!411476 e!591106)))

(declare-fun res!411473 () Bool)

(assert (=> b!904902 (=> (not res!411473) (not e!591106))))

(assert (=> b!904902 (= res!411473 lt!335449)))

(declare-fun bm!54121 () Bool)

(assert (=> bm!54121 (= call!54126 (isEmpty!5807 s!10566))))

(declare-fun b!904903 () Bool)

(declare-fun e!591104 () Bool)

(assert (=> b!904903 (= e!591104 (nullable!640 r!15766))))

(declare-fun b!904904 () Bool)

(declare-fun e!591109 () Bool)

(assert (=> b!904904 (= e!591109 (not lt!335449))))

(declare-fun b!904905 () Bool)

(declare-fun res!411475 () Bool)

(assert (=> b!904905 (=> (not res!411475) (not e!591106))))

(assert (=> b!904905 (= res!411475 (not call!54126))))

(declare-fun d!278691 () Bool)

(assert (=> d!278691 e!591108))

(declare-fun c!146584 () Bool)

(assert (=> d!278691 (= c!146584 (is-EmptyExpr!2390 r!15766))))

(assert (=> d!278691 (= lt!335449 e!591104)))

(declare-fun c!146585 () Bool)

(assert (=> d!278691 (= c!146585 (isEmpty!5807 s!10566))))

(assert (=> d!278691 (validRegex!859 r!15766)))

(assert (=> d!278691 (= (matchR!928 r!15766 s!10566) lt!335449)))

(declare-fun b!904906 () Bool)

(declare-fun res!411472 () Bool)

(assert (=> b!904906 (=> (not res!411472) (not e!591106))))

(assert (=> b!904906 (= res!411472 (isEmpty!5807 (tail!1167 s!10566)))))

(declare-fun b!904907 () Bool)

(assert (=> b!904907 (= e!591103 (not (= (head!1605 s!10566) (c!146547 r!15766))))))

(declare-fun b!904908 () Bool)

(declare-fun res!411470 () Bool)

(assert (=> b!904908 (=> res!411470 e!591105)))

(assert (=> b!904908 (= res!411470 (not (is-ElementMatch!2390 r!15766)))))

(assert (=> b!904908 (= e!591109 e!591105)))

(declare-fun b!904909 () Bool)

(declare-fun e!591107 () Bool)

(assert (=> b!904909 (= e!591105 e!591107)))

(declare-fun res!411474 () Bool)

(assert (=> b!904909 (=> (not res!411474) (not e!591107))))

(assert (=> b!904909 (= res!411474 (not lt!335449))))

(declare-fun b!904910 () Bool)

(declare-fun derivativeStep!452 (Regex!2390 C!5350) Regex!2390)

(assert (=> b!904910 (= e!591104 (matchR!928 (derivativeStep!452 r!15766 (head!1605 s!10566)) (tail!1167 s!10566)))))

(declare-fun b!904911 () Bool)

(assert (=> b!904911 (= e!591107 e!591103)))

(declare-fun res!411471 () Bool)

(assert (=> b!904911 (=> res!411471 e!591103)))

(assert (=> b!904911 (= res!411471 call!54126)))

(declare-fun b!904912 () Bool)

(assert (=> b!904912 (= e!591108 e!591109)))

(declare-fun c!146586 () Bool)

(assert (=> b!904912 (= c!146586 (is-EmptyLang!2390 r!15766))))

(assert (= (and d!278691 c!146585) b!904903))

(assert (= (and d!278691 (not c!146585)) b!904910))

(assert (= (and d!278691 c!146584) b!904899))

(assert (= (and d!278691 (not c!146584)) b!904912))

(assert (= (and b!904912 c!146586) b!904904))

(assert (= (and b!904912 (not c!146586)) b!904908))

(assert (= (and b!904908 (not res!411470)) b!904902))

(assert (= (and b!904902 res!411473) b!904905))

(assert (= (and b!904905 res!411475) b!904906))

(assert (= (and b!904906 res!411472) b!904900))

(assert (= (and b!904902 (not res!411476)) b!904909))

(assert (= (and b!904909 res!411474) b!904911))

(assert (= (and b!904911 (not res!411471)) b!904901))

(assert (= (and b!904901 (not res!411477)) b!904907))

(assert (= (or b!904899 b!904905 b!904911) bm!54121))

(declare-fun m!1140497 () Bool)

(assert (=> b!904906 m!1140497))

(assert (=> b!904906 m!1140497))

(declare-fun m!1140499 () Bool)

(assert (=> b!904906 m!1140499))

(declare-fun m!1140501 () Bool)

(assert (=> b!904903 m!1140501))

(declare-fun m!1140503 () Bool)

(assert (=> b!904900 m!1140503))

(assert (=> bm!54121 m!1140421))

(assert (=> b!904907 m!1140503))

(assert (=> b!904910 m!1140503))

(assert (=> b!904910 m!1140503))

(declare-fun m!1140505 () Bool)

(assert (=> b!904910 m!1140505))

(assert (=> b!904910 m!1140497))

(assert (=> b!904910 m!1140505))

(assert (=> b!904910 m!1140497))

(declare-fun m!1140507 () Bool)

(assert (=> b!904910 m!1140507))

(assert (=> b!904901 m!1140497))

(assert (=> b!904901 m!1140497))

(assert (=> b!904901 m!1140499))

(assert (=> d!278691 m!1140421))

(assert (=> d!278691 m!1140429))

(assert (=> b!904696 d!278691))

(declare-fun d!278695 () Bool)

(assert (=> d!278695 (= (matchR!928 r!15766 s!10566) (matchRSpec!191 r!15766 s!10566))))

(declare-fun lt!335453 () Unit!14399)

(declare-fun choose!5470 (Regex!2390 List!9620) Unit!14399)

(assert (=> d!278695 (= lt!335453 (choose!5470 r!15766 s!10566))))

(assert (=> d!278695 (validRegex!859 r!15766)))

(assert (=> d!278695 (= (mainMatchTheorem!191 r!15766 s!10566) lt!335453)))

(declare-fun bs!235405 () Bool)

(assert (= bs!235405 d!278695))

(assert (=> bs!235405 m!1140435))

(assert (=> bs!235405 m!1140433))

(declare-fun m!1140523 () Bool)

(assert (=> bs!235405 m!1140523))

(assert (=> bs!235405 m!1140429))

(assert (=> b!904696 d!278695))

(declare-fun b!904926 () Bool)

(declare-fun e!591123 () Bool)

(declare-fun e!591124 () Bool)

(assert (=> b!904926 (= e!591123 e!591124)))

(declare-fun c!146591 () Bool)

(assert (=> b!904926 (= c!146591 (is-Star!2390 (regTwo!5292 r!15766)))))

(declare-fun b!904927 () Bool)

(declare-fun e!591122 () Bool)

(assert (=> b!904927 (= e!591124 e!591122)))

(declare-fun c!146590 () Bool)

(assert (=> b!904927 (= c!146590 (is-Union!2390 (regTwo!5292 r!15766)))))

(declare-fun b!904928 () Bool)

(declare-fun res!411487 () Bool)

(declare-fun e!591120 () Bool)

(assert (=> b!904928 (=> (not res!411487) (not e!591120))))

(declare-fun call!54130 () Bool)

(assert (=> b!904928 (= res!411487 call!54130)))

(assert (=> b!904928 (= e!591122 e!591120)))

(declare-fun b!904929 () Bool)

(declare-fun e!591121 () Bool)

(declare-fun e!591125 () Bool)

(assert (=> b!904929 (= e!591121 e!591125)))

(declare-fun res!411486 () Bool)

(assert (=> b!904929 (=> (not res!411486) (not e!591125))))

(assert (=> b!904929 (= res!411486 call!54130)))

(declare-fun b!904930 () Bool)

(declare-fun e!591119 () Bool)

(assert (=> b!904930 (= e!591124 e!591119)))

(declare-fun res!411488 () Bool)

(assert (=> b!904930 (= res!411488 (not (nullable!640 (reg!2719 (regTwo!5292 r!15766)))))))

(assert (=> b!904930 (=> (not res!411488) (not e!591119))))

(declare-fun b!904931 () Bool)

(declare-fun res!411489 () Bool)

(assert (=> b!904931 (=> res!411489 e!591121)))

(assert (=> b!904931 (= res!411489 (not (is-Concat!4223 (regTwo!5292 r!15766))))))

(assert (=> b!904931 (= e!591122 e!591121)))

(declare-fun bm!54125 () Bool)

(declare-fun call!54131 () Bool)

(assert (=> bm!54125 (= call!54131 (validRegex!859 (ite c!146591 (reg!2719 (regTwo!5292 r!15766)) (ite c!146590 (regOne!5293 (regTwo!5292 r!15766)) (regOne!5292 (regTwo!5292 r!15766))))))))

(declare-fun b!904932 () Bool)

(declare-fun call!54132 () Bool)

(assert (=> b!904932 (= e!591125 call!54132)))

(declare-fun d!278699 () Bool)

(declare-fun res!411485 () Bool)

(assert (=> d!278699 (=> res!411485 e!591123)))

(assert (=> d!278699 (= res!411485 (is-ElementMatch!2390 (regTwo!5292 r!15766)))))

(assert (=> d!278699 (= (validRegex!859 (regTwo!5292 r!15766)) e!591123)))

(declare-fun b!904933 () Bool)

(assert (=> b!904933 (= e!591119 call!54131)))

(declare-fun b!904934 () Bool)

(assert (=> b!904934 (= e!591120 call!54132)))

(declare-fun bm!54126 () Bool)

(assert (=> bm!54126 (= call!54132 (validRegex!859 (ite c!146590 (regTwo!5293 (regTwo!5292 r!15766)) (regTwo!5292 (regTwo!5292 r!15766)))))))

(declare-fun bm!54127 () Bool)

(assert (=> bm!54127 (= call!54130 call!54131)))

(assert (= (and d!278699 (not res!411485)) b!904926))

(assert (= (and b!904926 c!146591) b!904930))

(assert (= (and b!904926 (not c!146591)) b!904927))

(assert (= (and b!904930 res!411488) b!904933))

(assert (= (and b!904927 c!146590) b!904928))

(assert (= (and b!904927 (not c!146590)) b!904931))

(assert (= (and b!904928 res!411487) b!904934))

(assert (= (and b!904931 (not res!411489)) b!904929))

(assert (= (and b!904929 res!411486) b!904932))

(assert (= (or b!904934 b!904932) bm!54126))

(assert (= (or b!904928 b!904929) bm!54127))

(assert (= (or b!904933 bm!54127) bm!54125))

(declare-fun m!1140531 () Bool)

(assert (=> b!904930 m!1140531))

(declare-fun m!1140533 () Bool)

(assert (=> bm!54125 m!1140533))

(declare-fun m!1140535 () Bool)

(assert (=> bm!54126 m!1140535))

(assert (=> b!904697 d!278699))

(declare-fun d!278703 () Bool)

(assert (=> d!278703 (= (isEmpty!5807 s!10566) (is-Nil!9604 s!10566))))

(assert (=> b!904699 d!278703))

(declare-fun b!904975 () Bool)

(declare-fun lt!335460 () Unit!14399)

(declare-fun lt!335461 () Unit!14399)

(assert (=> b!904975 (= lt!335460 lt!335461)))

(assert (=> b!904975 (= (++!2517 (++!2517 Nil!9604 (Cons!9604 (h!15005 s!10566) Nil!9604)) (t!100666 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!137 (List!9620 C!5350 List!9620 List!9620) Unit!14399)

(assert (=> b!904975 (= lt!335461 (lemmaMoveElementToOtherListKeepsConcatEq!137 Nil!9604 (h!15005 s!10566) (t!100666 s!10566) s!10566))))

(declare-fun e!591150 () Option!2029)

(assert (=> b!904975 (= e!591150 (findConcatSeparation!135 EmptyExpr!2390 (regTwo!5292 r!15766) (++!2517 Nil!9604 (Cons!9604 (h!15005 s!10566) Nil!9604)) (t!100666 s!10566) s!10566))))

(declare-fun b!904976 () Bool)

(declare-fun e!591153 () Option!2029)

(assert (=> b!904976 (= e!591153 (Some!2028 (tuple2!10775 Nil!9604 s!10566)))))

(declare-fun b!904977 () Bool)

(declare-fun res!411508 () Bool)

(declare-fun e!591151 () Bool)

(assert (=> b!904977 (=> (not res!411508) (not e!591151))))

(declare-fun lt!335462 () Option!2029)

(declare-fun get!3073 (Option!2029) tuple2!10774)

(assert (=> b!904977 (= res!411508 (matchR!928 (regTwo!5292 r!15766) (_2!6213 (get!3073 lt!335462))))))

(declare-fun b!904978 () Bool)

(declare-fun res!411510 () Bool)

(assert (=> b!904978 (=> (not res!411510) (not e!591151))))

(assert (=> b!904978 (= res!411510 (matchR!928 EmptyExpr!2390 (_1!6213 (get!3073 lt!335462))))))

(declare-fun b!904979 () Bool)

(declare-fun e!591152 () Bool)

(assert (=> b!904979 (= e!591152 (not (isDefined!1671 lt!335462)))))

(declare-fun b!904980 () Bool)

(declare-fun e!591154 () Bool)

(assert (=> b!904980 (= e!591154 (matchR!928 (regTwo!5292 r!15766) s!10566))))

(declare-fun d!278705 () Bool)

(assert (=> d!278705 e!591152))

(declare-fun res!411506 () Bool)

(assert (=> d!278705 (=> res!411506 e!591152)))

(assert (=> d!278705 (= res!411506 e!591151)))

(declare-fun res!411509 () Bool)

(assert (=> d!278705 (=> (not res!411509) (not e!591151))))

(assert (=> d!278705 (= res!411509 (isDefined!1671 lt!335462))))

(assert (=> d!278705 (= lt!335462 e!591153)))

(declare-fun c!146604 () Bool)

(assert (=> d!278705 (= c!146604 e!591154)))

(declare-fun res!411507 () Bool)

(assert (=> d!278705 (=> (not res!411507) (not e!591154))))

(assert (=> d!278705 (= res!411507 (matchR!928 EmptyExpr!2390 Nil!9604))))

(assert (=> d!278705 (validRegex!859 EmptyExpr!2390)))

(assert (=> d!278705 (= (findConcatSeparation!135 EmptyExpr!2390 (regTwo!5292 r!15766) Nil!9604 s!10566 s!10566) lt!335462)))

(declare-fun b!904981 () Bool)

(assert (=> b!904981 (= e!591151 (= (++!2517 (_1!6213 (get!3073 lt!335462)) (_2!6213 (get!3073 lt!335462))) s!10566))))

(declare-fun b!904982 () Bool)

(assert (=> b!904982 (= e!591150 None!2028)))

(declare-fun b!904983 () Bool)

(assert (=> b!904983 (= e!591153 e!591150)))

(declare-fun c!146605 () Bool)

(assert (=> b!904983 (= c!146605 (is-Nil!9604 s!10566))))

(assert (= (and d!278705 res!411507) b!904980))

(assert (= (and d!278705 c!146604) b!904976))

(assert (= (and d!278705 (not c!146604)) b!904983))

(assert (= (and b!904983 c!146605) b!904982))

(assert (= (and b!904983 (not c!146605)) b!904975))

(assert (= (and d!278705 res!411509) b!904978))

(assert (= (and b!904978 res!411510) b!904977))

(assert (= (and b!904977 res!411508) b!904981))

(assert (= (and d!278705 (not res!411506)) b!904979))

(declare-fun m!1140537 () Bool)

(assert (=> b!904977 m!1140537))

(declare-fun m!1140539 () Bool)

(assert (=> b!904977 m!1140539))

(declare-fun m!1140541 () Bool)

(assert (=> b!904975 m!1140541))

(assert (=> b!904975 m!1140541))

(declare-fun m!1140543 () Bool)

(assert (=> b!904975 m!1140543))

(declare-fun m!1140545 () Bool)

(assert (=> b!904975 m!1140545))

(assert (=> b!904975 m!1140541))

(declare-fun m!1140547 () Bool)

(assert (=> b!904975 m!1140547))

(assert (=> b!904978 m!1140537))

(declare-fun m!1140549 () Bool)

(assert (=> b!904978 m!1140549))

(declare-fun m!1140551 () Bool)

(assert (=> b!904980 m!1140551))

(assert (=> b!904981 m!1140537))

(declare-fun m!1140553 () Bool)

(assert (=> b!904981 m!1140553))

(declare-fun m!1140555 () Bool)

(assert (=> d!278705 m!1140555))

(declare-fun m!1140557 () Bool)

(assert (=> d!278705 m!1140557))

(declare-fun m!1140559 () Bool)

(assert (=> d!278705 m!1140559))

(assert (=> b!904979 m!1140555))

(assert (=> b!904699 d!278705))

(declare-fun bs!235406 () Bool)

(declare-fun d!278707 () Bool)

(assert (= bs!235406 (and d!278707 b!904699)))

(declare-fun lambda!28481 () Int)

(assert (=> bs!235406 (= lambda!28481 lambda!28459)))

(assert (=> bs!235406 (not (= lambda!28481 lambda!28460))))

(declare-fun bs!235407 () Bool)

(assert (= bs!235407 (and d!278707 b!904852)))

(assert (=> bs!235407 (not (= lambda!28481 lambda!28473))))

(declare-fun bs!235408 () Bool)

(assert (= bs!235408 (and d!278707 b!904843)))

(assert (=> bs!235408 (not (= lambda!28481 lambda!28474))))

(assert (=> d!278707 true))

(assert (=> d!278707 true))

(assert (=> d!278707 true))

(assert (=> d!278707 (= (isDefined!1671 (findConcatSeparation!135 EmptyExpr!2390 (regTwo!5292 r!15766) Nil!9604 s!10566 s!10566)) (Exists!165 lambda!28481))))

(declare-fun lt!335465 () Unit!14399)

(declare-fun choose!5471 (Regex!2390 Regex!2390 List!9620) Unit!14399)

(assert (=> d!278707 (= lt!335465 (choose!5471 EmptyExpr!2390 (regTwo!5292 r!15766) s!10566))))

(assert (=> d!278707 (validRegex!859 EmptyExpr!2390)))

(assert (=> d!278707 (= (lemmaFindConcatSeparationEquivalentToExists!135 EmptyExpr!2390 (regTwo!5292 r!15766) s!10566) lt!335465)))

(declare-fun bs!235409 () Bool)

(assert (= bs!235409 d!278707))

(assert (=> bs!235409 m!1140423))

(assert (=> bs!235409 m!1140425))

(declare-fun m!1140561 () Bool)

(assert (=> bs!235409 m!1140561))

(declare-fun m!1140563 () Bool)

(assert (=> bs!235409 m!1140563))

(assert (=> bs!235409 m!1140559))

(assert (=> bs!235409 m!1140423))

(assert (=> b!904699 d!278707))

(declare-fun bs!235411 () Bool)

(declare-fun d!278709 () Bool)

(assert (= bs!235411 (and d!278709 b!904699)))

(declare-fun lambda!28487 () Int)

(assert (=> bs!235411 (= lambda!28487 lambda!28459)))

(declare-fun bs!235412 () Bool)

(assert (= bs!235412 (and d!278709 d!278707)))

(assert (=> bs!235412 (= lambda!28487 lambda!28481)))

(assert (=> bs!235411 (not (= lambda!28487 lambda!28460))))

(declare-fun bs!235413 () Bool)

(assert (= bs!235413 (and d!278709 b!904843)))

(assert (=> bs!235413 (not (= lambda!28487 lambda!28474))))

(declare-fun bs!235414 () Bool)

(assert (= bs!235414 (and d!278709 b!904852)))

(assert (=> bs!235414 (not (= lambda!28487 lambda!28473))))

(assert (=> d!278709 true))

(assert (=> d!278709 true))

(assert (=> d!278709 true))

(declare-fun lambda!28489 () Int)

(assert (=> bs!235411 (not (= lambda!28489 lambda!28459))))

(assert (=> bs!235412 (not (= lambda!28489 lambda!28481))))

(assert (=> bs!235411 (= lambda!28489 lambda!28460)))

(assert (=> bs!235413 (= (= EmptyExpr!2390 (regOne!5292 r!15766)) (= lambda!28489 lambda!28474))))

(assert (=> bs!235414 (not (= lambda!28489 lambda!28473))))

(declare-fun bs!235416 () Bool)

(assert (= bs!235416 d!278709))

(assert (=> bs!235416 (not (= lambda!28489 lambda!28487))))

(assert (=> d!278709 true))

(assert (=> d!278709 true))

(assert (=> d!278709 true))

(assert (=> d!278709 (= (Exists!165 lambda!28487) (Exists!165 lambda!28489))))

(declare-fun lt!335468 () Unit!14399)

(declare-fun choose!5472 (Regex!2390 Regex!2390 List!9620) Unit!14399)

(assert (=> d!278709 (= lt!335468 (choose!5472 EmptyExpr!2390 (regTwo!5292 r!15766) s!10566))))

(assert (=> d!278709 (validRegex!859 EmptyExpr!2390)))

(assert (=> d!278709 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!81 EmptyExpr!2390 (regTwo!5292 r!15766) s!10566) lt!335468)))

(declare-fun m!1140565 () Bool)

(assert (=> bs!235416 m!1140565))

(declare-fun m!1140567 () Bool)

(assert (=> bs!235416 m!1140567))

(declare-fun m!1140569 () Bool)

(assert (=> bs!235416 m!1140569))

(assert (=> bs!235416 m!1140559))

(assert (=> b!904699 d!278709))

(declare-fun d!278711 () Bool)

(declare-fun isEmpty!5809 (Option!2029) Bool)

(assert (=> d!278711 (= (isDefined!1671 (findConcatSeparation!135 EmptyExpr!2390 (regTwo!5292 r!15766) Nil!9604 s!10566 s!10566)) (not (isEmpty!5809 (findConcatSeparation!135 EmptyExpr!2390 (regTwo!5292 r!15766) Nil!9604 s!10566 s!10566))))))

(declare-fun bs!235418 () Bool)

(assert (= bs!235418 d!278711))

(assert (=> bs!235418 m!1140423))

(declare-fun m!1140571 () Bool)

(assert (=> bs!235418 m!1140571))

(assert (=> b!904699 d!278711))

(declare-fun d!278713 () Bool)

(declare-fun choose!5473 (Int) Bool)

(assert (=> d!278713 (= (Exists!165 lambda!28460) (choose!5473 lambda!28460))))

(declare-fun bs!235419 () Bool)

(assert (= bs!235419 d!278713))

(declare-fun m!1140573 () Bool)

(assert (=> bs!235419 m!1140573))

(assert (=> b!904699 d!278713))

(declare-fun d!278715 () Bool)

(assert (=> d!278715 (= (Exists!165 lambda!28459) (choose!5473 lambda!28459))))

(declare-fun bs!235420 () Bool)

(assert (= bs!235420 d!278715))

(declare-fun m!1140575 () Bool)

(assert (=> bs!235420 m!1140575))

(assert (=> b!904699 d!278715))

(declare-fun b!905027 () Bool)

(declare-fun e!591174 () Bool)

(assert (=> b!905027 (= e!591174 tp_is_empty!4423)))

(declare-fun b!905030 () Bool)

(declare-fun tp!283464 () Bool)

(declare-fun tp!283467 () Bool)

(assert (=> b!905030 (= e!591174 (and tp!283464 tp!283467))))

(declare-fun b!905028 () Bool)

(declare-fun tp!283463 () Bool)

(declare-fun tp!283466 () Bool)

(assert (=> b!905028 (= e!591174 (and tp!283463 tp!283466))))

(assert (=> b!904695 (= tp!283431 e!591174)))

(declare-fun b!905029 () Bool)

(declare-fun tp!283465 () Bool)

(assert (=> b!905029 (= e!591174 tp!283465)))

(assert (= (and b!904695 (is-ElementMatch!2390 (regOne!5293 r!15766))) b!905027))

(assert (= (and b!904695 (is-Concat!4223 (regOne!5293 r!15766))) b!905028))

(assert (= (and b!904695 (is-Star!2390 (regOne!5293 r!15766))) b!905029))

(assert (= (and b!904695 (is-Union!2390 (regOne!5293 r!15766))) b!905030))

(declare-fun b!905031 () Bool)

(declare-fun e!591175 () Bool)

(assert (=> b!905031 (= e!591175 tp_is_empty!4423)))

(declare-fun b!905034 () Bool)

(declare-fun tp!283469 () Bool)

(declare-fun tp!283472 () Bool)

(assert (=> b!905034 (= e!591175 (and tp!283469 tp!283472))))

(declare-fun b!905032 () Bool)

(declare-fun tp!283468 () Bool)

(declare-fun tp!283471 () Bool)

(assert (=> b!905032 (= e!591175 (and tp!283468 tp!283471))))

(assert (=> b!904695 (= tp!283434 e!591175)))

(declare-fun b!905033 () Bool)

(declare-fun tp!283470 () Bool)

(assert (=> b!905033 (= e!591175 tp!283470)))

(assert (= (and b!904695 (is-ElementMatch!2390 (regTwo!5293 r!15766))) b!905031))

(assert (= (and b!904695 (is-Concat!4223 (regTwo!5293 r!15766))) b!905032))

(assert (= (and b!904695 (is-Star!2390 (regTwo!5293 r!15766))) b!905033))

(assert (= (and b!904695 (is-Union!2390 (regTwo!5293 r!15766))) b!905034))

(declare-fun b!905039 () Bool)

(declare-fun e!591178 () Bool)

(declare-fun tp!283475 () Bool)

(assert (=> b!905039 (= e!591178 (and tp_is_empty!4423 tp!283475))))

(assert (=> b!904698 (= tp!283433 e!591178)))

(assert (= (and b!904698 (is-Cons!9604 (t!100666 s!10566))) b!905039))

(declare-fun b!905040 () Bool)

(declare-fun e!591179 () Bool)

(assert (=> b!905040 (= e!591179 tp_is_empty!4423)))

(declare-fun b!905043 () Bool)

(declare-fun tp!283477 () Bool)

(declare-fun tp!283480 () Bool)

(assert (=> b!905043 (= e!591179 (and tp!283477 tp!283480))))

(declare-fun b!905041 () Bool)

(declare-fun tp!283476 () Bool)

(declare-fun tp!283479 () Bool)

(assert (=> b!905041 (= e!591179 (and tp!283476 tp!283479))))

(assert (=> b!904703 (= tp!283432 e!591179)))

(declare-fun b!905042 () Bool)

(declare-fun tp!283478 () Bool)

(assert (=> b!905042 (= e!591179 tp!283478)))

(assert (= (and b!904703 (is-ElementMatch!2390 (regOne!5292 r!15766))) b!905040))

(assert (= (and b!904703 (is-Concat!4223 (regOne!5292 r!15766))) b!905041))

(assert (= (and b!904703 (is-Star!2390 (regOne!5292 r!15766))) b!905042))

(assert (= (and b!904703 (is-Union!2390 (regOne!5292 r!15766))) b!905043))

(declare-fun b!905044 () Bool)

(declare-fun e!591180 () Bool)

(assert (=> b!905044 (= e!591180 tp_is_empty!4423)))

(declare-fun b!905047 () Bool)

(declare-fun tp!283482 () Bool)

(declare-fun tp!283485 () Bool)

(assert (=> b!905047 (= e!591180 (and tp!283482 tp!283485))))

(declare-fun b!905045 () Bool)

(declare-fun tp!283481 () Bool)

(declare-fun tp!283484 () Bool)

(assert (=> b!905045 (= e!591180 (and tp!283481 tp!283484))))

(assert (=> b!904703 (= tp!283429 e!591180)))

(declare-fun b!905046 () Bool)

(declare-fun tp!283483 () Bool)

(assert (=> b!905046 (= e!591180 tp!283483)))

(assert (= (and b!904703 (is-ElementMatch!2390 (regTwo!5292 r!15766))) b!905044))

(assert (= (and b!904703 (is-Concat!4223 (regTwo!5292 r!15766))) b!905045))

(assert (= (and b!904703 (is-Star!2390 (regTwo!5292 r!15766))) b!905046))

(assert (= (and b!904703 (is-Union!2390 (regTwo!5292 r!15766))) b!905047))

(declare-fun b!905048 () Bool)

(declare-fun e!591181 () Bool)

(assert (=> b!905048 (= e!591181 tp_is_empty!4423)))

(declare-fun b!905051 () Bool)

(declare-fun tp!283487 () Bool)

(declare-fun tp!283490 () Bool)

(assert (=> b!905051 (= e!591181 (and tp!283487 tp!283490))))

(declare-fun b!905049 () Bool)

(declare-fun tp!283486 () Bool)

(declare-fun tp!283489 () Bool)

(assert (=> b!905049 (= e!591181 (and tp!283486 tp!283489))))

(assert (=> b!904694 (= tp!283430 e!591181)))

(declare-fun b!905050 () Bool)

(declare-fun tp!283488 () Bool)

(assert (=> b!905050 (= e!591181 tp!283488)))

(assert (= (and b!904694 (is-ElementMatch!2390 (reg!2719 r!15766))) b!905048))

(assert (= (and b!904694 (is-Concat!4223 (reg!2719 r!15766))) b!905049))

(assert (= (and b!904694 (is-Star!2390 (reg!2719 r!15766))) b!905050))

(assert (= (and b!904694 (is-Union!2390 (reg!2719 r!15766))) b!905051))

(push 1)

(assert (not bm!54114))

(assert (not b!905050))

(assert (not b!905028))

(assert (not b!905046))

(assert (not b!905047))

(assert (not b!904977))

(assert (not b!905029))

(assert (not b!905033))

(assert (not b!905039))

(assert (not b!904900))

(assert (not b!904980))

(assert (not b!905049))

(assert (not bm!54121))

(assert (not b!904910))

(assert (not b!904901))

(assert (not d!278695))

(assert (not b!905045))

(assert (not d!278713))

(assert (not b!904907))

(assert (not b!904845))

(assert (not b!904851))

(assert (not b!904979))

(assert (not b!905043))

(assert (not bm!54126))

(assert (not b!904975))

(assert (not b!904978))

(assert (not b!905051))

(assert (not b!905034))

(assert (not b!904903))

(assert (not d!278709))

(assert (not b!905042))

(assert (not d!278711))

(assert (not b!904981))

(assert (not d!278685))

(assert (not d!278707))

(assert (not b!904906))

(assert (not bm!54101))

(assert (not d!278715))

(assert (not b!904790))

(assert tp_is_empty!4423)

(assert (not b!904776))

(assert (not d!278691))

(assert (not bm!54115))

(assert (not b!904791))

(assert (not b!905041))

(assert (not b!905030))

(assert (not bm!54102))

(assert (not b!905032))

(assert (not d!278705))

(assert (not b!904930))

(assert (not bm!54125))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

