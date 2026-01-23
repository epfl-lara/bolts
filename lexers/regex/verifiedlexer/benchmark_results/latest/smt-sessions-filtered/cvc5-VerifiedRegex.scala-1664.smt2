; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!84132 () Bool)

(assert start!84132)

(declare-fun b!942704 () Bool)

(assert (=> b!942704 true))

(assert (=> b!942704 true))

(assert (=> b!942704 true))

(declare-fun lambda!31848 () Int)

(declare-fun lambda!31847 () Int)

(assert (=> b!942704 (not (= lambda!31848 lambda!31847))))

(assert (=> b!942704 true))

(assert (=> b!942704 true))

(assert (=> b!942704 true))

(declare-fun bs!239068 () Bool)

(declare-fun b!942697 () Bool)

(assert (= bs!239068 (and b!942697 b!942704)))

(declare-datatypes ((C!5742 0))(
  ( (C!5743 (val!3119 Int)) )
))
(declare-datatypes ((Regex!2586 0))(
  ( (ElementMatch!2586 (c!153443 C!5742)) (Concat!4419 (regOne!5684 Regex!2586) (regTwo!5684 Regex!2586)) (EmptyExpr!2586) (Star!2586 (reg!2915 Regex!2586)) (EmptyLang!2586) (Union!2586 (regOne!5685 Regex!2586) (regTwo!5685 Regex!2586)) )
))
(declare-fun lt!342628 () Regex!2586)

(declare-fun r!15766 () Regex!2586)

(declare-fun lt!342637 () Regex!2586)

(declare-fun lambda!31849 () Int)

(declare-fun lt!342626 () Regex!2586)

(assert (=> bs!239068 (= (and (= lt!342637 (reg!2915 r!15766)) (= lt!342628 lt!342626)) (= lambda!31849 lambda!31847))))

(assert (=> bs!239068 (not (= lambda!31849 lambda!31848))))

(assert (=> b!942697 true))

(assert (=> b!942697 true))

(assert (=> b!942697 true))

(declare-fun lambda!31850 () Int)

(assert (=> bs!239068 (not (= lambda!31850 lambda!31847))))

(assert (=> bs!239068 (= (and (= lt!342637 (reg!2915 r!15766)) (= lt!342628 lt!342626)) (= lambda!31850 lambda!31848))))

(assert (=> b!942697 (not (= lambda!31850 lambda!31849))))

(assert (=> b!942697 true))

(assert (=> b!942697 true))

(assert (=> b!942697 true))

(declare-fun e!611344 () Bool)

(declare-fun e!611343 () Bool)

(assert (=> b!942697 (= e!611344 e!611343)))

(declare-fun res!428210 () Bool)

(assert (=> b!942697 (=> res!428210 e!611343)))

(declare-datatypes ((List!9816 0))(
  ( (Nil!9800) (Cons!9800 (h!15201 C!5742) (t!100862 List!9816)) )
))
(declare-fun s!10566 () List!9816)

(declare-fun isEmpty!6053 (List!9816) Bool)

(assert (=> b!942697 (= res!428210 (isEmpty!6053 s!10566))))

(declare-fun Exists!337 (Int) Bool)

(assert (=> b!942697 (= (Exists!337 lambda!31849) (Exists!337 lambda!31850))))

(declare-datatypes ((Unit!14791 0))(
  ( (Unit!14792) )
))
(declare-fun lt!342627 () Unit!14791)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!81 (Regex!2586 List!9816) Unit!14791)

(assert (=> b!942697 (= lt!342627 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!81 lt!342637 s!10566))))

(declare-fun lt!342634 () Bool)

(assert (=> b!942697 (= lt!342634 (Exists!337 lambda!31849))))

(declare-datatypes ((tuple2!11070 0))(
  ( (tuple2!11071 (_1!6361 List!9816) (_2!6361 List!9816)) )
))
(declare-datatypes ((Option!2177 0))(
  ( (None!2176) (Some!2176 (v!19593 tuple2!11070)) )
))
(declare-fun lt!342636 () Option!2177)

(declare-fun isDefined!1819 (Option!2177) Bool)

(assert (=> b!942697 (= lt!342634 (isDefined!1819 lt!342636))))

(declare-fun findConcatSeparation!283 (Regex!2586 Regex!2586 List!9816 List!9816 List!9816) Option!2177)

(assert (=> b!942697 (= lt!342636 (findConcatSeparation!283 lt!342637 lt!342628 Nil!9800 s!10566 s!10566))))

(declare-fun lt!342631 () Unit!14791)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!283 (Regex!2586 Regex!2586 List!9816) Unit!14791)

(assert (=> b!942697 (= lt!342631 (lemmaFindConcatSeparationEquivalentToExists!283 lt!342637 lt!342628 s!10566))))

(declare-fun matchRSpec!387 (Regex!2586 List!9816) Bool)

(assert (=> b!942697 (matchRSpec!387 lt!342628 s!10566)))

(declare-fun lt!342635 () Unit!14791)

(declare-fun mainMatchTheorem!387 (Regex!2586 List!9816) Unit!14791)

(assert (=> b!942697 (= lt!342635 (mainMatchTheorem!387 lt!342628 s!10566))))

(declare-fun b!942698 () Bool)

(declare-fun e!611347 () Bool)

(declare-fun e!611346 () Bool)

(assert (=> b!942698 (= e!611347 (not e!611346))))

(declare-fun res!428211 () Bool)

(assert (=> b!942698 (=> res!428211 e!611346)))

(declare-fun lt!342632 () Bool)

(assert (=> b!942698 (= res!428211 (or lt!342632 (and (is-Concat!4419 r!15766) (is-EmptyExpr!2586 (regOne!5684 r!15766))) (and (is-Concat!4419 r!15766) (is-EmptyExpr!2586 (regTwo!5684 r!15766))) (is-Concat!4419 r!15766) (is-Union!2586 r!15766) (not (is-Star!2586 r!15766))))))

(assert (=> b!942698 (= lt!342632 (matchRSpec!387 r!15766 s!10566))))

(declare-fun matchR!1124 (Regex!2586 List!9816) Bool)

(assert (=> b!942698 (= lt!342632 (matchR!1124 r!15766 s!10566))))

(declare-fun lt!342629 () Unit!14791)

(assert (=> b!942698 (= lt!342629 (mainMatchTheorem!387 r!15766 s!10566))))

(declare-fun b!942699 () Bool)

(declare-fun e!611342 () Bool)

(declare-fun tp!291443 () Bool)

(assert (=> b!942699 (= e!611342 tp!291443)))

(declare-fun b!942700 () Bool)

(declare-fun tp!291444 () Bool)

(declare-fun tp!291445 () Bool)

(assert (=> b!942700 (= e!611342 (and tp!291444 tp!291445))))

(declare-fun b!942701 () Bool)

(declare-fun tp_is_empty!4815 () Bool)

(assert (=> b!942701 (= e!611342 tp_is_empty!4815)))

(declare-fun b!942702 () Bool)

(declare-fun res!428212 () Bool)

(assert (=> b!942702 (=> res!428212 e!611343)))

(assert (=> b!942702 (= res!428212 (not lt!342634))))

(declare-fun b!942696 () Bool)

(declare-fun e!611345 () Bool)

(declare-fun tp!291441 () Bool)

(assert (=> b!942696 (= e!611345 (and tp_is_empty!4815 tp!291441))))

(declare-fun res!428208 () Bool)

(assert (=> start!84132 (=> (not res!428208) (not e!611347))))

(declare-fun validRegex!1055 (Regex!2586) Bool)

(assert (=> start!84132 (= res!428208 (validRegex!1055 r!15766))))

(assert (=> start!84132 e!611347))

(assert (=> start!84132 e!611342))

(assert (=> start!84132 e!611345))

(declare-fun b!942703 () Bool)

(assert (=> b!942703 (= e!611343 (validRegex!1055 (reg!2915 r!15766)))))

(assert (=> b!942704 (= e!611346 e!611344)))

(declare-fun res!428207 () Bool)

(assert (=> b!942704 (=> res!428207 e!611344)))

(assert (=> b!942704 (= res!428207 (not (matchR!1124 lt!342628 s!10566)))))

(assert (=> b!942704 (= lt!342628 (Star!2586 lt!342637))))

(declare-fun removeUselessConcat!255 (Regex!2586) Regex!2586)

(assert (=> b!942704 (= lt!342637 (removeUselessConcat!255 (reg!2915 r!15766)))))

(assert (=> b!942704 (= (Exists!337 lambda!31847) (Exists!337 lambda!31848))))

(declare-fun lt!342630 () Unit!14791)

(assert (=> b!942704 (= lt!342630 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!81 (reg!2915 r!15766) s!10566))))

(assert (=> b!942704 (= (isDefined!1819 (findConcatSeparation!283 (reg!2915 r!15766) lt!342626 Nil!9800 s!10566 s!10566)) (Exists!337 lambda!31847))))

(declare-fun lt!342633 () Unit!14791)

(assert (=> b!942704 (= lt!342633 (lemmaFindConcatSeparationEquivalentToExists!283 (reg!2915 r!15766) lt!342626 s!10566))))

(assert (=> b!942704 (= lt!342626 (Star!2586 (reg!2915 r!15766)))))

(declare-fun b!942705 () Bool)

(declare-fun res!428209 () Bool)

(assert (=> b!942705 (=> res!428209 e!611343)))

(declare-fun get!3261 (Option!2177) tuple2!11070)

(assert (=> b!942705 (= res!428209 (not (matchR!1124 lt!342637 (_1!6361 (get!3261 lt!342636)))))))

(declare-fun b!942706 () Bool)

(declare-fun tp!291446 () Bool)

(declare-fun tp!291442 () Bool)

(assert (=> b!942706 (= e!611342 (and tp!291446 tp!291442))))

(assert (= (and start!84132 res!428208) b!942698))

(assert (= (and b!942698 (not res!428211)) b!942704))

(assert (= (and b!942704 (not res!428207)) b!942697))

(assert (= (and b!942697 (not res!428210)) b!942702))

(assert (= (and b!942702 (not res!428212)) b!942705))

(assert (= (and b!942705 (not res!428209)) b!942703))

(assert (= (and start!84132 (is-ElementMatch!2586 r!15766)) b!942701))

(assert (= (and start!84132 (is-Concat!4419 r!15766)) b!942706))

(assert (= (and start!84132 (is-Star!2586 r!15766)) b!942699))

(assert (= (and start!84132 (is-Union!2586 r!15766)) b!942700))

(assert (= (and start!84132 (is-Cons!9800 s!10566)) b!942696))

(declare-fun m!1159037 () Bool)

(assert (=> b!942703 m!1159037))

(declare-fun m!1159039 () Bool)

(assert (=> start!84132 m!1159039))

(declare-fun m!1159041 () Bool)

(assert (=> b!942704 m!1159041))

(declare-fun m!1159043 () Bool)

(assert (=> b!942704 m!1159043))

(assert (=> b!942704 m!1159041))

(declare-fun m!1159045 () Bool)

(assert (=> b!942704 m!1159045))

(declare-fun m!1159047 () Bool)

(assert (=> b!942704 m!1159047))

(declare-fun m!1159049 () Bool)

(assert (=> b!942704 m!1159049))

(assert (=> b!942704 m!1159047))

(declare-fun m!1159051 () Bool)

(assert (=> b!942704 m!1159051))

(declare-fun m!1159053 () Bool)

(assert (=> b!942704 m!1159053))

(declare-fun m!1159055 () Bool)

(assert (=> b!942704 m!1159055))

(declare-fun m!1159057 () Bool)

(assert (=> b!942705 m!1159057))

(declare-fun m!1159059 () Bool)

(assert (=> b!942705 m!1159059))

(declare-fun m!1159061 () Bool)

(assert (=> b!942697 m!1159061))

(declare-fun m!1159063 () Bool)

(assert (=> b!942697 m!1159063))

(declare-fun m!1159065 () Bool)

(assert (=> b!942697 m!1159065))

(declare-fun m!1159067 () Bool)

(assert (=> b!942697 m!1159067))

(declare-fun m!1159069 () Bool)

(assert (=> b!942697 m!1159069))

(declare-fun m!1159071 () Bool)

(assert (=> b!942697 m!1159071))

(declare-fun m!1159073 () Bool)

(assert (=> b!942697 m!1159073))

(declare-fun m!1159075 () Bool)

(assert (=> b!942697 m!1159075))

(assert (=> b!942697 m!1159071))

(declare-fun m!1159077 () Bool)

(assert (=> b!942697 m!1159077))

(declare-fun m!1159079 () Bool)

(assert (=> b!942698 m!1159079))

(declare-fun m!1159081 () Bool)

(assert (=> b!942698 m!1159081))

(declare-fun m!1159083 () Bool)

(assert (=> b!942698 m!1159083))

(push 1)

(assert (not b!942699))

(assert (not b!942703))

(assert (not start!84132))

(assert (not b!942697))

(assert (not b!942706))

(assert tp_is_empty!4815)

(assert (not b!942696))

(assert (not b!942700))

(assert (not b!942698))

(assert (not b!942705))

(assert (not b!942704))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!239070 () Bool)

(declare-fun b!942818 () Bool)

(assert (= bs!239070 (and b!942818 b!942704)))

(declare-fun lambda!31871 () Int)

(assert (=> bs!239070 (not (= lambda!31871 lambda!31847))))

(assert (=> bs!239070 (= (= r!15766 lt!342626) (= lambda!31871 lambda!31848))))

(declare-fun bs!239071 () Bool)

(assert (= bs!239071 (and b!942818 b!942697)))

(assert (=> bs!239071 (not (= lambda!31871 lambda!31849))))

(assert (=> bs!239071 (= (and (= (reg!2915 r!15766) lt!342637) (= r!15766 lt!342628)) (= lambda!31871 lambda!31850))))

(assert (=> b!942818 true))

(assert (=> b!942818 true))

(declare-fun bs!239072 () Bool)

(declare-fun b!942816 () Bool)

(assert (= bs!239072 (and b!942816 b!942697)))

(declare-fun lambda!31872 () Int)

(assert (=> bs!239072 (not (= lambda!31872 lambda!31849))))

(declare-fun bs!239073 () Bool)

(assert (= bs!239073 (and b!942816 b!942704)))

(assert (=> bs!239073 (not (= lambda!31872 lambda!31847))))

(declare-fun bs!239074 () Bool)

(assert (= bs!239074 (and b!942816 b!942818)))

(assert (=> bs!239074 (not (= lambda!31872 lambda!31871))))

(assert (=> bs!239072 (not (= lambda!31872 lambda!31850))))

(assert (=> bs!239073 (not (= lambda!31872 lambda!31848))))

(assert (=> b!942816 true))

(assert (=> b!942816 true))

(declare-fun bm!58821 () Bool)

(declare-fun call!58827 () Bool)

(declare-fun c!153456 () Bool)

(assert (=> bm!58821 (= call!58827 (Exists!337 (ite c!153456 lambda!31871 lambda!31872)))))

(declare-fun b!942808 () Bool)

(declare-fun c!153454 () Bool)

(assert (=> b!942808 (= c!153454 (is-ElementMatch!2586 r!15766))))

(declare-fun e!611399 () Bool)

(declare-fun e!611396 () Bool)

(assert (=> b!942808 (= e!611399 e!611396)))

(declare-fun b!942809 () Bool)

(assert (=> b!942809 (= e!611396 (= s!10566 (Cons!9800 (c!153443 r!15766) Nil!9800)))))

(declare-fun b!942810 () Bool)

(declare-fun e!611397 () Bool)

(assert (=> b!942810 (= e!611397 e!611399)))

(declare-fun res!428275 () Bool)

(assert (=> b!942810 (= res!428275 (not (is-EmptyLang!2586 r!15766)))))

(assert (=> b!942810 (=> (not res!428275) (not e!611399))))

(declare-fun b!942811 () Bool)

(declare-fun call!58826 () Bool)

(assert (=> b!942811 (= e!611397 call!58826)))

(declare-fun b!942812 () Bool)

(declare-fun c!153453 () Bool)

(assert (=> b!942812 (= c!153453 (is-Union!2586 r!15766))))

(declare-fun e!611398 () Bool)

(assert (=> b!942812 (= e!611396 e!611398)))

(declare-fun b!942813 () Bool)

(declare-fun e!611402 () Bool)

(assert (=> b!942813 (= e!611402 (matchRSpec!387 (regTwo!5685 r!15766) s!10566))))

(declare-fun b!942814 () Bool)

(declare-fun e!611400 () Bool)

(assert (=> b!942814 (= e!611398 e!611400)))

(assert (=> b!942814 (= c!153456 (is-Star!2586 r!15766))))

(declare-fun b!942815 () Bool)

(declare-fun res!428276 () Bool)

(declare-fun e!611401 () Bool)

(assert (=> b!942815 (=> res!428276 e!611401)))

(assert (=> b!942815 (= res!428276 call!58826)))

(assert (=> b!942815 (= e!611400 e!611401)))

(assert (=> b!942816 (= e!611400 call!58827)))

(declare-fun d!282753 () Bool)

(declare-fun c!153455 () Bool)

(assert (=> d!282753 (= c!153455 (is-EmptyExpr!2586 r!15766))))

(assert (=> d!282753 (= (matchRSpec!387 r!15766 s!10566) e!611397)))

(declare-fun bm!58822 () Bool)

(assert (=> bm!58822 (= call!58826 (isEmpty!6053 s!10566))))

(declare-fun b!942817 () Bool)

(assert (=> b!942817 (= e!611398 e!611402)))

(declare-fun res!428277 () Bool)

(assert (=> b!942817 (= res!428277 (matchRSpec!387 (regOne!5685 r!15766) s!10566))))

(assert (=> b!942817 (=> res!428277 e!611402)))

(assert (=> b!942818 (= e!611401 call!58827)))

(assert (= (and d!282753 c!153455) b!942811))

(assert (= (and d!282753 (not c!153455)) b!942810))

(assert (= (and b!942810 res!428275) b!942808))

(assert (= (and b!942808 c!153454) b!942809))

(assert (= (and b!942808 (not c!153454)) b!942812))

(assert (= (and b!942812 c!153453) b!942817))

(assert (= (and b!942812 (not c!153453)) b!942814))

(assert (= (and b!942817 (not res!428277)) b!942813))

(assert (= (and b!942814 c!153456) b!942815))

(assert (= (and b!942814 (not c!153456)) b!942816))

(assert (= (and b!942815 (not res!428276)) b!942818))

(assert (= (or b!942818 b!942816) bm!58821))

(assert (= (or b!942811 b!942815) bm!58822))

(declare-fun m!1159133 () Bool)

(assert (=> bm!58821 m!1159133))

(declare-fun m!1159135 () Bool)

(assert (=> b!942813 m!1159135))

(assert (=> bm!58822 m!1159069))

(declare-fun m!1159137 () Bool)

(assert (=> b!942817 m!1159137))

(assert (=> b!942698 d!282753))

(declare-fun b!942875 () Bool)

(declare-fun res!428312 () Bool)

(declare-fun e!611434 () Bool)

(assert (=> b!942875 (=> res!428312 e!611434)))

(declare-fun e!611435 () Bool)

(assert (=> b!942875 (= res!428312 e!611435)))

(declare-fun res!428310 () Bool)

(assert (=> b!942875 (=> (not res!428310) (not e!611435))))

(declare-fun lt!342676 () Bool)

(assert (=> b!942875 (= res!428310 lt!342676)))

(declare-fun b!942876 () Bool)

(declare-fun e!611437 () Bool)

(declare-fun derivativeStep!565 (Regex!2586 C!5742) Regex!2586)

(declare-fun head!1718 (List!9816) C!5742)

(declare-fun tail!1280 (List!9816) List!9816)

(assert (=> b!942876 (= e!611437 (matchR!1124 (derivativeStep!565 r!15766 (head!1718 s!10566)) (tail!1280 s!10566)))))

(declare-fun b!942877 () Bool)

(declare-fun res!428313 () Bool)

(assert (=> b!942877 (=> (not res!428313) (not e!611435))))

(assert (=> b!942877 (= res!428313 (isEmpty!6053 (tail!1280 s!10566)))))

(declare-fun b!942878 () Bool)

(declare-fun e!611436 () Bool)

(declare-fun e!611438 () Bool)

(assert (=> b!942878 (= e!611436 e!611438)))

(declare-fun res!428307 () Bool)

(assert (=> b!942878 (=> res!428307 e!611438)))

(declare-fun call!58830 () Bool)

(assert (=> b!942878 (= res!428307 call!58830)))

(declare-fun b!942879 () Bool)

(assert (=> b!942879 (= e!611434 e!611436)))

(declare-fun res!428306 () Bool)

(assert (=> b!942879 (=> (not res!428306) (not e!611436))))

(assert (=> b!942879 (= res!428306 (not lt!342676))))

(declare-fun b!942880 () Bool)

(declare-fun res!428308 () Bool)

(assert (=> b!942880 (=> res!428308 e!611438)))

(assert (=> b!942880 (= res!428308 (not (isEmpty!6053 (tail!1280 s!10566))))))

(declare-fun bm!58825 () Bool)

(assert (=> bm!58825 (= call!58830 (isEmpty!6053 s!10566))))

(declare-fun b!942881 () Bool)

(declare-fun e!611439 () Bool)

(assert (=> b!942881 (= e!611439 (not lt!342676))))

(declare-fun d!282757 () Bool)

(declare-fun e!611433 () Bool)

(assert (=> d!282757 e!611433))

(declare-fun c!153473 () Bool)

(assert (=> d!282757 (= c!153473 (is-EmptyExpr!2586 r!15766))))

(assert (=> d!282757 (= lt!342676 e!611437)))

(declare-fun c!153472 () Bool)

(assert (=> d!282757 (= c!153472 (isEmpty!6053 s!10566))))

(assert (=> d!282757 (validRegex!1055 r!15766)))

(assert (=> d!282757 (= (matchR!1124 r!15766 s!10566) lt!342676)))

(declare-fun b!942882 () Bool)

(declare-fun res!428309 () Bool)

(assert (=> b!942882 (=> (not res!428309) (not e!611435))))

(assert (=> b!942882 (= res!428309 (not call!58830))))

(declare-fun b!942883 () Bool)

(assert (=> b!942883 (= e!611433 (= lt!342676 call!58830))))

(declare-fun b!942884 () Bool)

(declare-fun res!428311 () Bool)

(assert (=> b!942884 (=> res!428311 e!611434)))

(assert (=> b!942884 (= res!428311 (not (is-ElementMatch!2586 r!15766)))))

(assert (=> b!942884 (= e!611439 e!611434)))

(declare-fun b!942885 () Bool)

(declare-fun nullable!756 (Regex!2586) Bool)

(assert (=> b!942885 (= e!611437 (nullable!756 r!15766))))

(declare-fun b!942886 () Bool)

(assert (=> b!942886 (= e!611433 e!611439)))

(declare-fun c!153471 () Bool)

(assert (=> b!942886 (= c!153471 (is-EmptyLang!2586 r!15766))))

(declare-fun b!942887 () Bool)

(assert (=> b!942887 (= e!611438 (not (= (head!1718 s!10566) (c!153443 r!15766))))))

(declare-fun b!942888 () Bool)

(assert (=> b!942888 (= e!611435 (= (head!1718 s!10566) (c!153443 r!15766)))))

(assert (= (and d!282757 c!153472) b!942885))

(assert (= (and d!282757 (not c!153472)) b!942876))

(assert (= (and d!282757 c!153473) b!942883))

(assert (= (and d!282757 (not c!153473)) b!942886))

(assert (= (and b!942886 c!153471) b!942881))

(assert (= (and b!942886 (not c!153471)) b!942884))

(assert (= (and b!942884 (not res!428311)) b!942875))

(assert (= (and b!942875 res!428310) b!942882))

(assert (= (and b!942882 res!428309) b!942877))

(assert (= (and b!942877 res!428313) b!942888))

(assert (= (and b!942875 (not res!428312)) b!942879))

(assert (= (and b!942879 res!428306) b!942878))

(assert (= (and b!942878 (not res!428307)) b!942880))

(assert (= (and b!942880 (not res!428308)) b!942887))

(assert (= (or b!942883 b!942882 b!942878) bm!58825))

(declare-fun m!1159139 () Bool)

(assert (=> b!942888 m!1159139))

(declare-fun m!1159141 () Bool)

(assert (=> b!942877 m!1159141))

(assert (=> b!942877 m!1159141))

(declare-fun m!1159143 () Bool)

(assert (=> b!942877 m!1159143))

(assert (=> bm!58825 m!1159069))

(assert (=> b!942887 m!1159139))

(assert (=> d!282757 m!1159069))

(assert (=> d!282757 m!1159039))

(assert (=> b!942880 m!1159141))

(assert (=> b!942880 m!1159141))

(assert (=> b!942880 m!1159143))

(declare-fun m!1159145 () Bool)

(assert (=> b!942885 m!1159145))

(assert (=> b!942876 m!1159139))

(assert (=> b!942876 m!1159139))

(declare-fun m!1159147 () Bool)

(assert (=> b!942876 m!1159147))

(assert (=> b!942876 m!1159141))

(assert (=> b!942876 m!1159147))

(assert (=> b!942876 m!1159141))

(declare-fun m!1159149 () Bool)

(assert (=> b!942876 m!1159149))

(assert (=> b!942698 d!282757))

(declare-fun d!282759 () Bool)

(assert (=> d!282759 (= (matchR!1124 r!15766 s!10566) (matchRSpec!387 r!15766 s!10566))))

(declare-fun lt!342679 () Unit!14791)

(declare-fun choose!5845 (Regex!2586 List!9816) Unit!14791)

(assert (=> d!282759 (= lt!342679 (choose!5845 r!15766 s!10566))))

(assert (=> d!282759 (validRegex!1055 r!15766)))

(assert (=> d!282759 (= (mainMatchTheorem!387 r!15766 s!10566) lt!342679)))

(declare-fun bs!239075 () Bool)

(assert (= bs!239075 d!282759))

(assert (=> bs!239075 m!1159081))

(assert (=> bs!239075 m!1159079))

(declare-fun m!1159151 () Bool)

(assert (=> bs!239075 m!1159151))

(assert (=> bs!239075 m!1159039))

(assert (=> b!942698 d!282759))

(declare-fun d!282761 () Bool)

(declare-fun isEmpty!6055 (Option!2177) Bool)

(assert (=> d!282761 (= (isDefined!1819 (findConcatSeparation!283 (reg!2915 r!15766) lt!342626 Nil!9800 s!10566 s!10566)) (not (isEmpty!6055 (findConcatSeparation!283 (reg!2915 r!15766) lt!342626 Nil!9800 s!10566 s!10566))))))

(declare-fun bs!239076 () Bool)

(assert (= bs!239076 d!282761))

(assert (=> bs!239076 m!1159047))

(declare-fun m!1159153 () Bool)

(assert (=> bs!239076 m!1159153))

(assert (=> b!942704 d!282761))

(declare-fun d!282763 () Bool)

(declare-fun choose!5846 (Int) Bool)

(assert (=> d!282763 (= (Exists!337 lambda!31847) (choose!5846 lambda!31847))))

(declare-fun bs!239077 () Bool)

(assert (= bs!239077 d!282763))

(declare-fun m!1159155 () Bool)

(assert (=> bs!239077 m!1159155))

(assert (=> b!942704 d!282763))

(declare-fun bs!239079 () Bool)

(declare-fun d!282765 () Bool)

(assert (= bs!239079 (and d!282765 b!942697)))

(declare-fun lambda!31882 () Int)

(assert (=> bs!239079 (= (and (= (reg!2915 r!15766) lt!342637) (= (Star!2586 (reg!2915 r!15766)) lt!342628)) (= lambda!31882 lambda!31849))))

(declare-fun bs!239081 () Bool)

(assert (= bs!239081 (and d!282765 b!942704)))

(assert (=> bs!239081 (= (= (Star!2586 (reg!2915 r!15766)) lt!342626) (= lambda!31882 lambda!31847))))

(declare-fun bs!239082 () Bool)

(assert (= bs!239082 (and d!282765 b!942818)))

(assert (=> bs!239082 (not (= lambda!31882 lambda!31871))))

(declare-fun bs!239083 () Bool)

(assert (= bs!239083 (and d!282765 b!942816)))

(assert (=> bs!239083 (not (= lambda!31882 lambda!31872))))

(assert (=> bs!239079 (not (= lambda!31882 lambda!31850))))

(assert (=> bs!239081 (not (= lambda!31882 lambda!31848))))

(assert (=> d!282765 true))

(assert (=> d!282765 true))

(declare-fun lambda!31883 () Int)

(assert (=> bs!239079 (not (= lambda!31883 lambda!31849))))

(assert (=> bs!239081 (not (= lambda!31883 lambda!31847))))

(assert (=> bs!239082 (= (= (Star!2586 (reg!2915 r!15766)) r!15766) (= lambda!31883 lambda!31871))))

(assert (=> bs!239083 (not (= lambda!31883 lambda!31872))))

(assert (=> bs!239079 (= (and (= (reg!2915 r!15766) lt!342637) (= (Star!2586 (reg!2915 r!15766)) lt!342628)) (= lambda!31883 lambda!31850))))

(assert (=> bs!239081 (= (= (Star!2586 (reg!2915 r!15766)) lt!342626) (= lambda!31883 lambda!31848))))

(declare-fun bs!239085 () Bool)

(assert (= bs!239085 d!282765))

(assert (=> bs!239085 (not (= lambda!31883 lambda!31882))))

(assert (=> d!282765 true))

(assert (=> d!282765 true))

(assert (=> d!282765 (= (Exists!337 lambda!31882) (Exists!337 lambda!31883))))

(declare-fun lt!342682 () Unit!14791)

(declare-fun choose!5847 (Regex!2586 List!9816) Unit!14791)

(assert (=> d!282765 (= lt!342682 (choose!5847 (reg!2915 r!15766) s!10566))))

(assert (=> d!282765 (validRegex!1055 (reg!2915 r!15766))))

(assert (=> d!282765 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!81 (reg!2915 r!15766) s!10566) lt!342682)))

(declare-fun m!1159157 () Bool)

(assert (=> bs!239085 m!1159157))

(declare-fun m!1159159 () Bool)

(assert (=> bs!239085 m!1159159))

(declare-fun m!1159161 () Bool)

(assert (=> bs!239085 m!1159161))

(assert (=> bs!239085 m!1159037))

(assert (=> b!942704 d!282765))

(declare-fun b!942936 () Bool)

(declare-fun e!611466 () Bool)

(declare-fun lt!342685 () Regex!2586)

(assert (=> b!942936 (= e!611466 (= (nullable!756 lt!342685) (nullable!756 (reg!2915 r!15766))))))

(declare-fun b!942937 () Bool)

(declare-fun c!153492 () Bool)

(assert (=> b!942937 (= c!153492 (is-Star!2586 (reg!2915 r!15766)))))

(declare-fun e!611468 () Regex!2586)

(declare-fun e!611470 () Regex!2586)

(assert (=> b!942937 (= e!611468 e!611470)))

(declare-fun bm!58842 () Bool)

(declare-fun call!58850 () Regex!2586)

(declare-fun c!153488 () Bool)

(assert (=> bm!58842 (= call!58850 (removeUselessConcat!255 (ite c!153488 (regOne!5684 (reg!2915 r!15766)) (regOne!5685 (reg!2915 r!15766)))))))

(declare-fun bm!58843 () Bool)

(declare-fun call!58847 () Regex!2586)

(declare-fun call!58848 () Regex!2586)

(assert (=> bm!58843 (= call!58847 call!58848)))

(declare-fun bm!58844 () Bool)

(declare-fun call!58851 () Regex!2586)

(assert (=> bm!58844 (= call!58851 call!58847)))

(declare-fun d!282767 () Bool)

(assert (=> d!282767 e!611466))

(declare-fun res!428333 () Bool)

(assert (=> d!282767 (=> (not res!428333) (not e!611466))))

(assert (=> d!282767 (= res!428333 (validRegex!1055 lt!342685))))

(declare-fun e!611467 () Regex!2586)

(assert (=> d!282767 (= lt!342685 e!611467)))

(declare-fun c!153491 () Bool)

(assert (=> d!282767 (= c!153491 (and (is-Concat!4419 (reg!2915 r!15766)) (is-EmptyExpr!2586 (regOne!5684 (reg!2915 r!15766)))))))

(assert (=> d!282767 (validRegex!1055 (reg!2915 r!15766))))

(assert (=> d!282767 (= (removeUselessConcat!255 (reg!2915 r!15766)) lt!342685)))

(declare-fun b!942938 () Bool)

(assert (=> b!942938 (= c!153488 (is-Concat!4419 (reg!2915 r!15766)))))

(declare-fun e!611469 () Regex!2586)

(declare-fun e!611465 () Regex!2586)

(assert (=> b!942938 (= e!611469 e!611465)))

(declare-fun b!942939 () Bool)

(assert (=> b!942939 (= e!611465 (Concat!4419 call!58850 call!58847))))

(declare-fun b!942940 () Bool)

(assert (=> b!942940 (= e!611467 e!611469)))

(declare-fun c!153489 () Bool)

(assert (=> b!942940 (= c!153489 (and (is-Concat!4419 (reg!2915 r!15766)) (is-EmptyExpr!2586 (regTwo!5684 (reg!2915 r!15766)))))))

(declare-fun b!942941 () Bool)

(assert (=> b!942941 (= e!611470 (Star!2586 call!58851))))

(declare-fun b!942942 () Bool)

(assert (=> b!942942 (= e!611470 (reg!2915 r!15766))))

(declare-fun b!942943 () Bool)

(assert (=> b!942943 (= e!611469 call!58848)))

(declare-fun c!153490 () Bool)

(declare-fun bm!58845 () Bool)

(declare-fun call!58849 () Regex!2586)

(assert (=> bm!58845 (= call!58849 (removeUselessConcat!255 (ite c!153491 (regTwo!5684 (reg!2915 r!15766)) (ite c!153489 (regOne!5684 (reg!2915 r!15766)) (ite c!153488 (regTwo!5684 (reg!2915 r!15766)) (ite c!153490 (regTwo!5685 (reg!2915 r!15766)) (reg!2915 (reg!2915 r!15766))))))))))

(declare-fun b!942944 () Bool)

(assert (=> b!942944 (= e!611468 (Union!2586 call!58850 call!58851))))

(declare-fun b!942945 () Bool)

(assert (=> b!942945 (= e!611467 call!58849)))

(declare-fun bm!58846 () Bool)

(assert (=> bm!58846 (= call!58848 call!58849)))

(declare-fun b!942946 () Bool)

(assert (=> b!942946 (= e!611465 e!611468)))

(assert (=> b!942946 (= c!153490 (is-Union!2586 (reg!2915 r!15766)))))

(assert (= (and d!282767 c!153491) b!942945))

(assert (= (and d!282767 (not c!153491)) b!942940))

(assert (= (and b!942940 c!153489) b!942943))

(assert (= (and b!942940 (not c!153489)) b!942938))

(assert (= (and b!942938 c!153488) b!942939))

(assert (= (and b!942938 (not c!153488)) b!942946))

(assert (= (and b!942946 c!153490) b!942944))

(assert (= (and b!942946 (not c!153490)) b!942937))

(assert (= (and b!942937 c!153492) b!942941))

(assert (= (and b!942937 (not c!153492)) b!942942))

(assert (= (or b!942944 b!942941) bm!58844))

(assert (= (or b!942939 bm!58844) bm!58843))

(assert (= (or b!942939 b!942944) bm!58842))

(assert (= (or b!942943 bm!58843) bm!58846))

(assert (= (or b!942945 bm!58846) bm!58845))

(assert (= (and d!282767 res!428333) b!942936))

(declare-fun m!1159171 () Bool)

(assert (=> b!942936 m!1159171))

(declare-fun m!1159173 () Bool)

(assert (=> b!942936 m!1159173))

(declare-fun m!1159175 () Bool)

(assert (=> bm!58842 m!1159175))

(declare-fun m!1159177 () Bool)

(assert (=> d!282767 m!1159177))

(assert (=> d!282767 m!1159037))

(declare-fun m!1159179 () Bool)

(assert (=> bm!58845 m!1159179))

(assert (=> b!942704 d!282767))

(declare-fun b!942947 () Bool)

(declare-fun res!428340 () Bool)

(declare-fun e!611472 () Bool)

(assert (=> b!942947 (=> res!428340 e!611472)))

(declare-fun e!611473 () Bool)

(assert (=> b!942947 (= res!428340 e!611473)))

(declare-fun res!428338 () Bool)

(assert (=> b!942947 (=> (not res!428338) (not e!611473))))

(declare-fun lt!342686 () Bool)

(assert (=> b!942947 (= res!428338 lt!342686)))

(declare-fun b!942948 () Bool)

(declare-fun e!611475 () Bool)

(assert (=> b!942948 (= e!611475 (matchR!1124 (derivativeStep!565 lt!342628 (head!1718 s!10566)) (tail!1280 s!10566)))))

(declare-fun b!942949 () Bool)

(declare-fun res!428341 () Bool)

(assert (=> b!942949 (=> (not res!428341) (not e!611473))))

(assert (=> b!942949 (= res!428341 (isEmpty!6053 (tail!1280 s!10566)))))

(declare-fun b!942950 () Bool)

(declare-fun e!611474 () Bool)

(declare-fun e!611476 () Bool)

(assert (=> b!942950 (= e!611474 e!611476)))

(declare-fun res!428335 () Bool)

(assert (=> b!942950 (=> res!428335 e!611476)))

(declare-fun call!58852 () Bool)

(assert (=> b!942950 (= res!428335 call!58852)))

(declare-fun b!942951 () Bool)

(assert (=> b!942951 (= e!611472 e!611474)))

(declare-fun res!428334 () Bool)

(assert (=> b!942951 (=> (not res!428334) (not e!611474))))

(assert (=> b!942951 (= res!428334 (not lt!342686))))

(declare-fun b!942952 () Bool)

(declare-fun res!428336 () Bool)

(assert (=> b!942952 (=> res!428336 e!611476)))

(assert (=> b!942952 (= res!428336 (not (isEmpty!6053 (tail!1280 s!10566))))))

(declare-fun bm!58847 () Bool)

(assert (=> bm!58847 (= call!58852 (isEmpty!6053 s!10566))))

(declare-fun b!942953 () Bool)

(declare-fun e!611477 () Bool)

(assert (=> b!942953 (= e!611477 (not lt!342686))))

(declare-fun d!282773 () Bool)

(declare-fun e!611471 () Bool)

(assert (=> d!282773 e!611471))

(declare-fun c!153495 () Bool)

(assert (=> d!282773 (= c!153495 (is-EmptyExpr!2586 lt!342628))))

(assert (=> d!282773 (= lt!342686 e!611475)))

(declare-fun c!153494 () Bool)

(assert (=> d!282773 (= c!153494 (isEmpty!6053 s!10566))))

(assert (=> d!282773 (validRegex!1055 lt!342628)))

(assert (=> d!282773 (= (matchR!1124 lt!342628 s!10566) lt!342686)))

(declare-fun b!942954 () Bool)

(declare-fun res!428337 () Bool)

(assert (=> b!942954 (=> (not res!428337) (not e!611473))))

(assert (=> b!942954 (= res!428337 (not call!58852))))

(declare-fun b!942955 () Bool)

(assert (=> b!942955 (= e!611471 (= lt!342686 call!58852))))

(declare-fun b!942956 () Bool)

(declare-fun res!428339 () Bool)

(assert (=> b!942956 (=> res!428339 e!611472)))

(assert (=> b!942956 (= res!428339 (not (is-ElementMatch!2586 lt!342628)))))

(assert (=> b!942956 (= e!611477 e!611472)))

(declare-fun b!942957 () Bool)

(assert (=> b!942957 (= e!611475 (nullable!756 lt!342628))))

(declare-fun b!942958 () Bool)

(assert (=> b!942958 (= e!611471 e!611477)))

(declare-fun c!153493 () Bool)

(assert (=> b!942958 (= c!153493 (is-EmptyLang!2586 lt!342628))))

(declare-fun b!942959 () Bool)

(assert (=> b!942959 (= e!611476 (not (= (head!1718 s!10566) (c!153443 lt!342628))))))

(declare-fun b!942960 () Bool)

(assert (=> b!942960 (= e!611473 (= (head!1718 s!10566) (c!153443 lt!342628)))))

(assert (= (and d!282773 c!153494) b!942957))

(assert (= (and d!282773 (not c!153494)) b!942948))

(assert (= (and d!282773 c!153495) b!942955))

(assert (= (and d!282773 (not c!153495)) b!942958))

(assert (= (and b!942958 c!153493) b!942953))

(assert (= (and b!942958 (not c!153493)) b!942956))

(assert (= (and b!942956 (not res!428339)) b!942947))

(assert (= (and b!942947 res!428338) b!942954))

(assert (= (and b!942954 res!428337) b!942949))

(assert (= (and b!942949 res!428341) b!942960))

(assert (= (and b!942947 (not res!428340)) b!942951))

(assert (= (and b!942951 res!428334) b!942950))

(assert (= (and b!942950 (not res!428335)) b!942952))

(assert (= (and b!942952 (not res!428336)) b!942959))

(assert (= (or b!942955 b!942954 b!942950) bm!58847))

(assert (=> b!942960 m!1159139))

(assert (=> b!942949 m!1159141))

(assert (=> b!942949 m!1159141))

(assert (=> b!942949 m!1159143))

(assert (=> bm!58847 m!1159069))

(assert (=> b!942959 m!1159139))

(assert (=> d!282773 m!1159069))

(declare-fun m!1159181 () Bool)

(assert (=> d!282773 m!1159181))

(assert (=> b!942952 m!1159141))

(assert (=> b!942952 m!1159141))

(assert (=> b!942952 m!1159143))

(declare-fun m!1159183 () Bool)

(assert (=> b!942957 m!1159183))

(assert (=> b!942948 m!1159139))

(assert (=> b!942948 m!1159139))

(declare-fun m!1159185 () Bool)

(assert (=> b!942948 m!1159185))

(assert (=> b!942948 m!1159141))

(assert (=> b!942948 m!1159185))

(assert (=> b!942948 m!1159141))

(declare-fun m!1159187 () Bool)

(assert (=> b!942948 m!1159187))

(assert (=> b!942704 d!282773))

(declare-fun bs!239089 () Bool)

(declare-fun d!282775 () Bool)

(assert (= bs!239089 (and d!282775 b!942697)))

(declare-fun lambda!31888 () Int)

(assert (=> bs!239089 (= (and (= (reg!2915 r!15766) lt!342637) (= lt!342626 lt!342628)) (= lambda!31888 lambda!31849))))

(declare-fun bs!239090 () Bool)

(assert (= bs!239090 (and d!282775 b!942704)))

(assert (=> bs!239090 (= lambda!31888 lambda!31847)))

(declare-fun bs!239091 () Bool)

(assert (= bs!239091 (and d!282775 b!942818)))

(assert (=> bs!239091 (not (= lambda!31888 lambda!31871))))

(declare-fun bs!239092 () Bool)

(assert (= bs!239092 (and d!282775 b!942816)))

(assert (=> bs!239092 (not (= lambda!31888 lambda!31872))))

(assert (=> bs!239089 (not (= lambda!31888 lambda!31850))))

(declare-fun bs!239093 () Bool)

(assert (= bs!239093 (and d!282775 d!282765)))

(assert (=> bs!239093 (not (= lambda!31888 lambda!31883))))

(assert (=> bs!239090 (not (= lambda!31888 lambda!31848))))

(assert (=> bs!239093 (= (= lt!342626 (Star!2586 (reg!2915 r!15766))) (= lambda!31888 lambda!31882))))

(assert (=> d!282775 true))

(assert (=> d!282775 true))

(assert (=> d!282775 true))

(assert (=> d!282775 (= (isDefined!1819 (findConcatSeparation!283 (reg!2915 r!15766) lt!342626 Nil!9800 s!10566 s!10566)) (Exists!337 lambda!31888))))

(declare-fun lt!342691 () Unit!14791)

(declare-fun choose!5848 (Regex!2586 Regex!2586 List!9816) Unit!14791)

(assert (=> d!282775 (= lt!342691 (choose!5848 (reg!2915 r!15766) lt!342626 s!10566))))

(assert (=> d!282775 (validRegex!1055 (reg!2915 r!15766))))

(assert (=> d!282775 (= (lemmaFindConcatSeparationEquivalentToExists!283 (reg!2915 r!15766) lt!342626 s!10566) lt!342691)))

(declare-fun bs!239094 () Bool)

(assert (= bs!239094 d!282775))

(assert (=> bs!239094 m!1159047))

(assert (=> bs!239094 m!1159051))

(assert (=> bs!239094 m!1159047))

(declare-fun m!1159189 () Bool)

(assert (=> bs!239094 m!1159189))

(declare-fun m!1159191 () Bool)

(assert (=> bs!239094 m!1159191))

(assert (=> bs!239094 m!1159037))

(assert (=> b!942704 d!282775))

(declare-fun d!282777 () Bool)

(assert (=> d!282777 (= (Exists!337 lambda!31848) (choose!5846 lambda!31848))))

(declare-fun bs!239095 () Bool)

(assert (= bs!239095 d!282777))

(declare-fun m!1159193 () Bool)

(assert (=> bs!239095 m!1159193))

(assert (=> b!942704 d!282777))

(declare-fun b!942993 () Bool)

(declare-fun res!428370 () Bool)

(declare-fun e!611498 () Bool)

(assert (=> b!942993 (=> (not res!428370) (not e!611498))))

(declare-fun lt!342701 () Option!2177)

(assert (=> b!942993 (= res!428370 (matchR!1124 lt!342626 (_2!6361 (get!3261 lt!342701))))))

(declare-fun b!942994 () Bool)

(declare-fun e!611497 () Bool)

(assert (=> b!942994 (= e!611497 (not (isDefined!1819 lt!342701)))))

(declare-fun b!942995 () Bool)

(declare-fun e!611495 () Bool)

(assert (=> b!942995 (= e!611495 (matchR!1124 lt!342626 s!10566))))

(declare-fun b!942996 () Bool)

(declare-fun e!611494 () Option!2177)

(assert (=> b!942996 (= e!611494 (Some!2176 (tuple2!11071 Nil!9800 s!10566)))))

(declare-fun b!942997 () Bool)

(declare-fun ++!2608 (List!9816 List!9816) List!9816)

(assert (=> b!942997 (= e!611498 (= (++!2608 (_1!6361 (get!3261 lt!342701)) (_2!6361 (get!3261 lt!342701))) s!10566))))

(declare-fun b!942998 () Bool)

(declare-fun res!428366 () Bool)

(assert (=> b!942998 (=> (not res!428366) (not e!611498))))

(assert (=> b!942998 (= res!428366 (matchR!1124 (reg!2915 r!15766) (_1!6361 (get!3261 lt!342701))))))

(declare-fun b!942999 () Bool)

(declare-fun e!611496 () Option!2177)

(assert (=> b!942999 (= e!611496 None!2176)))

(declare-fun b!943000 () Bool)

(declare-fun lt!342700 () Unit!14791)

(declare-fun lt!342699 () Unit!14791)

(assert (=> b!943000 (= lt!342700 lt!342699)))

(assert (=> b!943000 (= (++!2608 (++!2608 Nil!9800 (Cons!9800 (h!15201 s!10566) Nil!9800)) (t!100862 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!221 (List!9816 C!5742 List!9816 List!9816) Unit!14791)

(assert (=> b!943000 (= lt!342699 (lemmaMoveElementToOtherListKeepsConcatEq!221 Nil!9800 (h!15201 s!10566) (t!100862 s!10566) s!10566))))

(assert (=> b!943000 (= e!611496 (findConcatSeparation!283 (reg!2915 r!15766) lt!342626 (++!2608 Nil!9800 (Cons!9800 (h!15201 s!10566) Nil!9800)) (t!100862 s!10566) s!10566))))

(declare-fun d!282779 () Bool)

(assert (=> d!282779 e!611497))

(declare-fun res!428369 () Bool)

(assert (=> d!282779 (=> res!428369 e!611497)))

(assert (=> d!282779 (= res!428369 e!611498)))

(declare-fun res!428368 () Bool)

(assert (=> d!282779 (=> (not res!428368) (not e!611498))))

(assert (=> d!282779 (= res!428368 (isDefined!1819 lt!342701))))

(assert (=> d!282779 (= lt!342701 e!611494)))

(declare-fun c!153500 () Bool)

(assert (=> d!282779 (= c!153500 e!611495)))

(declare-fun res!428367 () Bool)

(assert (=> d!282779 (=> (not res!428367) (not e!611495))))

(assert (=> d!282779 (= res!428367 (matchR!1124 (reg!2915 r!15766) Nil!9800))))

(assert (=> d!282779 (validRegex!1055 (reg!2915 r!15766))))

(assert (=> d!282779 (= (findConcatSeparation!283 (reg!2915 r!15766) lt!342626 Nil!9800 s!10566 s!10566) lt!342701)))

(declare-fun b!943001 () Bool)

(assert (=> b!943001 (= e!611494 e!611496)))

(declare-fun c!153501 () Bool)

(assert (=> b!943001 (= c!153501 (is-Nil!9800 s!10566))))

(assert (= (and d!282779 res!428367) b!942995))

(assert (= (and d!282779 c!153500) b!942996))

(assert (= (and d!282779 (not c!153500)) b!943001))

(assert (= (and b!943001 c!153501) b!942999))

(assert (= (and b!943001 (not c!153501)) b!943000))

(assert (= (and d!282779 res!428368) b!942998))

(assert (= (and b!942998 res!428366) b!942993))

(assert (= (and b!942993 res!428370) b!942997))

(assert (= (and d!282779 (not res!428369)) b!942994))

(declare-fun m!1159203 () Bool)

(assert (=> d!282779 m!1159203))

(declare-fun m!1159205 () Bool)

(assert (=> d!282779 m!1159205))

(assert (=> d!282779 m!1159037))

(declare-fun m!1159207 () Bool)

(assert (=> b!943000 m!1159207))

(assert (=> b!943000 m!1159207))

(declare-fun m!1159209 () Bool)

(assert (=> b!943000 m!1159209))

(declare-fun m!1159211 () Bool)

(assert (=> b!943000 m!1159211))

(assert (=> b!943000 m!1159207))

(declare-fun m!1159213 () Bool)

(assert (=> b!943000 m!1159213))

(declare-fun m!1159215 () Bool)

(assert (=> b!942997 m!1159215))

(declare-fun m!1159217 () Bool)

(assert (=> b!942997 m!1159217))

(assert (=> b!942994 m!1159203))

(declare-fun m!1159219 () Bool)

(assert (=> b!942995 m!1159219))

(assert (=> b!942998 m!1159215))

(declare-fun m!1159221 () Bool)

(assert (=> b!942998 m!1159221))

(assert (=> b!942993 m!1159215))

(declare-fun m!1159223 () Bool)

(assert (=> b!942993 m!1159223))

(assert (=> b!942704 d!282779))

(declare-fun d!282783 () Bool)

(assert (=> d!282783 (= (Exists!337 lambda!31850) (choose!5846 lambda!31850))))

(declare-fun bs!239101 () Bool)

(assert (= bs!239101 d!282783))

(declare-fun m!1159225 () Bool)

(assert (=> bs!239101 m!1159225))

(assert (=> b!942697 d!282783))

(declare-fun d!282785 () Bool)

(assert (=> d!282785 (= (matchR!1124 lt!342628 s!10566) (matchRSpec!387 lt!342628 s!10566))))

(declare-fun lt!342702 () Unit!14791)

(assert (=> d!282785 (= lt!342702 (choose!5845 lt!342628 s!10566))))

(assert (=> d!282785 (validRegex!1055 lt!342628)))

(assert (=> d!282785 (= (mainMatchTheorem!387 lt!342628 s!10566) lt!342702)))

(declare-fun bs!239102 () Bool)

(assert (= bs!239102 d!282785))

(assert (=> bs!239102 m!1159049))

(assert (=> bs!239102 m!1159067))

(declare-fun m!1159227 () Bool)

(assert (=> bs!239102 m!1159227))

(assert (=> bs!239102 m!1159181))

(assert (=> b!942697 d!282785))

(declare-fun bs!239104 () Bool)

(declare-fun d!282789 () Bool)

(assert (= bs!239104 (and d!282789 b!942697)))

(declare-fun lambda!31894 () Int)

(assert (=> bs!239104 (= (= (Star!2586 lt!342637) lt!342628) (= lambda!31894 lambda!31849))))

(declare-fun bs!239105 () Bool)

(assert (= bs!239105 (and d!282789 b!942704)))

(assert (=> bs!239105 (= (and (= lt!342637 (reg!2915 r!15766)) (= (Star!2586 lt!342637) lt!342626)) (= lambda!31894 lambda!31847))))

(declare-fun bs!239106 () Bool)

(assert (= bs!239106 (and d!282789 b!942818)))

(assert (=> bs!239106 (not (= lambda!31894 lambda!31871))))

(declare-fun bs!239107 () Bool)

(assert (= bs!239107 (and d!282789 b!942816)))

(assert (=> bs!239107 (not (= lambda!31894 lambda!31872))))

(declare-fun bs!239108 () Bool)

(assert (= bs!239108 (and d!282789 d!282775)))

(assert (=> bs!239108 (= (and (= lt!342637 (reg!2915 r!15766)) (= (Star!2586 lt!342637) lt!342626)) (= lambda!31894 lambda!31888))))

(assert (=> bs!239104 (not (= lambda!31894 lambda!31850))))

(declare-fun bs!239109 () Bool)

(assert (= bs!239109 (and d!282789 d!282765)))

(assert (=> bs!239109 (not (= lambda!31894 lambda!31883))))

(assert (=> bs!239105 (not (= lambda!31894 lambda!31848))))

(assert (=> bs!239109 (= (and (= lt!342637 (reg!2915 r!15766)) (= (Star!2586 lt!342637) (Star!2586 (reg!2915 r!15766)))) (= lambda!31894 lambda!31882))))

(assert (=> d!282789 true))

(assert (=> d!282789 true))

(declare-fun lambda!31895 () Int)

(assert (=> bs!239104 (not (= lambda!31895 lambda!31849))))

(assert (=> bs!239105 (not (= lambda!31895 lambda!31847))))

(assert (=> bs!239106 (= (and (= lt!342637 (reg!2915 r!15766)) (= (Star!2586 lt!342637) r!15766)) (= lambda!31895 lambda!31871))))

(assert (=> bs!239107 (not (= lambda!31895 lambda!31872))))

(assert (=> bs!239108 (not (= lambda!31895 lambda!31888))))

(assert (=> bs!239104 (= (= (Star!2586 lt!342637) lt!342628) (= lambda!31895 lambda!31850))))

(assert (=> bs!239109 (= (and (= lt!342637 (reg!2915 r!15766)) (= (Star!2586 lt!342637) (Star!2586 (reg!2915 r!15766)))) (= lambda!31895 lambda!31883))))

(declare-fun bs!239110 () Bool)

(assert (= bs!239110 d!282789))

(assert (=> bs!239110 (not (= lambda!31895 lambda!31894))))

(assert (=> bs!239105 (= (and (= lt!342637 (reg!2915 r!15766)) (= (Star!2586 lt!342637) lt!342626)) (= lambda!31895 lambda!31848))))

(assert (=> bs!239109 (not (= lambda!31895 lambda!31882))))

(assert (=> d!282789 true))

(assert (=> d!282789 true))

(assert (=> d!282789 (= (Exists!337 lambda!31894) (Exists!337 lambda!31895))))

(declare-fun lt!342703 () Unit!14791)

(assert (=> d!282789 (= lt!342703 (choose!5847 lt!342637 s!10566))))

(assert (=> d!282789 (validRegex!1055 lt!342637)))

(assert (=> d!282789 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!81 lt!342637 s!10566) lt!342703)))

(declare-fun m!1159231 () Bool)

(assert (=> bs!239110 m!1159231))

(declare-fun m!1159233 () Bool)

(assert (=> bs!239110 m!1159233))

(declare-fun m!1159235 () Bool)

(assert (=> bs!239110 m!1159235))

(declare-fun m!1159237 () Bool)

(assert (=> bs!239110 m!1159237))

(assert (=> b!942697 d!282789))

(declare-fun b!943002 () Bool)

(declare-fun res!428375 () Bool)

(declare-fun e!611503 () Bool)

(assert (=> b!943002 (=> (not res!428375) (not e!611503))))

(declare-fun lt!342706 () Option!2177)

(assert (=> b!943002 (= res!428375 (matchR!1124 lt!342628 (_2!6361 (get!3261 lt!342706))))))

(declare-fun b!943003 () Bool)

(declare-fun e!611502 () Bool)

(assert (=> b!943003 (= e!611502 (not (isDefined!1819 lt!342706)))))

(declare-fun b!943004 () Bool)

(declare-fun e!611500 () Bool)

(assert (=> b!943004 (= e!611500 (matchR!1124 lt!342628 s!10566))))

(declare-fun b!943005 () Bool)

(declare-fun e!611499 () Option!2177)

(assert (=> b!943005 (= e!611499 (Some!2176 (tuple2!11071 Nil!9800 s!10566)))))

(declare-fun b!943006 () Bool)

(assert (=> b!943006 (= e!611503 (= (++!2608 (_1!6361 (get!3261 lt!342706)) (_2!6361 (get!3261 lt!342706))) s!10566))))

(declare-fun b!943007 () Bool)

(declare-fun res!428371 () Bool)

(assert (=> b!943007 (=> (not res!428371) (not e!611503))))

(assert (=> b!943007 (= res!428371 (matchR!1124 lt!342637 (_1!6361 (get!3261 lt!342706))))))

(declare-fun b!943008 () Bool)

(declare-fun e!611501 () Option!2177)

(assert (=> b!943008 (= e!611501 None!2176)))

(declare-fun b!943009 () Bool)

(declare-fun lt!342705 () Unit!14791)

(declare-fun lt!342704 () Unit!14791)

(assert (=> b!943009 (= lt!342705 lt!342704)))

(assert (=> b!943009 (= (++!2608 (++!2608 Nil!9800 (Cons!9800 (h!15201 s!10566) Nil!9800)) (t!100862 s!10566)) s!10566)))

(assert (=> b!943009 (= lt!342704 (lemmaMoveElementToOtherListKeepsConcatEq!221 Nil!9800 (h!15201 s!10566) (t!100862 s!10566) s!10566))))

(assert (=> b!943009 (= e!611501 (findConcatSeparation!283 lt!342637 lt!342628 (++!2608 Nil!9800 (Cons!9800 (h!15201 s!10566) Nil!9800)) (t!100862 s!10566) s!10566))))

(declare-fun d!282793 () Bool)

(assert (=> d!282793 e!611502))

(declare-fun res!428374 () Bool)

(assert (=> d!282793 (=> res!428374 e!611502)))

(assert (=> d!282793 (= res!428374 e!611503)))

(declare-fun res!428373 () Bool)

(assert (=> d!282793 (=> (not res!428373) (not e!611503))))

(assert (=> d!282793 (= res!428373 (isDefined!1819 lt!342706))))

(assert (=> d!282793 (= lt!342706 e!611499)))

(declare-fun c!153502 () Bool)

(assert (=> d!282793 (= c!153502 e!611500)))

(declare-fun res!428372 () Bool)

(assert (=> d!282793 (=> (not res!428372) (not e!611500))))

(assert (=> d!282793 (= res!428372 (matchR!1124 lt!342637 Nil!9800))))

(assert (=> d!282793 (validRegex!1055 lt!342637)))

(assert (=> d!282793 (= (findConcatSeparation!283 lt!342637 lt!342628 Nil!9800 s!10566 s!10566) lt!342706)))

(declare-fun b!943010 () Bool)

(assert (=> b!943010 (= e!611499 e!611501)))

(declare-fun c!153503 () Bool)

(assert (=> b!943010 (= c!153503 (is-Nil!9800 s!10566))))

(assert (= (and d!282793 res!428372) b!943004))

(assert (= (and d!282793 c!153502) b!943005))

(assert (= (and d!282793 (not c!153502)) b!943010))

(assert (= (and b!943010 c!153503) b!943008))

(assert (= (and b!943010 (not c!153503)) b!943009))

(assert (= (and d!282793 res!428373) b!943007))

(assert (= (and b!943007 res!428371) b!943002))

(assert (= (and b!943002 res!428375) b!943006))

(assert (= (and d!282793 (not res!428374)) b!943003))

(declare-fun m!1159239 () Bool)

(assert (=> d!282793 m!1159239))

(declare-fun m!1159241 () Bool)

(assert (=> d!282793 m!1159241))

(assert (=> d!282793 m!1159237))

(assert (=> b!943009 m!1159207))

(assert (=> b!943009 m!1159207))

(assert (=> b!943009 m!1159209))

(assert (=> b!943009 m!1159211))

(assert (=> b!943009 m!1159207))

(declare-fun m!1159243 () Bool)

(assert (=> b!943009 m!1159243))

(declare-fun m!1159245 () Bool)

(assert (=> b!943006 m!1159245))

(declare-fun m!1159247 () Bool)

(assert (=> b!943006 m!1159247))

(assert (=> b!943003 m!1159239))

(assert (=> b!943004 m!1159049))

(assert (=> b!943007 m!1159245))

(declare-fun m!1159249 () Bool)

(assert (=> b!943007 m!1159249))

(assert (=> b!943002 m!1159245))

(declare-fun m!1159251 () Bool)

(assert (=> b!943002 m!1159251))

(assert (=> b!942697 d!282793))

(declare-fun d!282795 () Bool)

(assert (=> d!282795 (= (isDefined!1819 lt!342636) (not (isEmpty!6055 lt!342636)))))

(declare-fun bs!239111 () Bool)

(assert (= bs!239111 d!282795))

(declare-fun m!1159253 () Bool)

(assert (=> bs!239111 m!1159253))

(assert (=> b!942697 d!282795))

(declare-fun d!282797 () Bool)

(assert (=> d!282797 (= (isEmpty!6053 s!10566) (is-Nil!9800 s!10566))))

(assert (=> b!942697 d!282797))

(declare-fun bs!239112 () Bool)

(declare-fun d!282799 () Bool)

(assert (= bs!239112 (and d!282799 b!942697)))

(declare-fun lambda!31896 () Int)

(assert (=> bs!239112 (= lambda!31896 lambda!31849)))

(declare-fun bs!239113 () Bool)

(assert (= bs!239113 (and d!282799 b!942704)))

(assert (=> bs!239113 (= (and (= lt!342637 (reg!2915 r!15766)) (= lt!342628 lt!342626)) (= lambda!31896 lambda!31847))))

(declare-fun bs!239114 () Bool)

(assert (= bs!239114 (and d!282799 b!942818)))

(assert (=> bs!239114 (not (= lambda!31896 lambda!31871))))

(declare-fun bs!239115 () Bool)

(assert (= bs!239115 (and d!282799 d!282789)))

(assert (=> bs!239115 (not (= lambda!31896 lambda!31895))))

(declare-fun bs!239116 () Bool)

(assert (= bs!239116 (and d!282799 b!942816)))

(assert (=> bs!239116 (not (= lambda!31896 lambda!31872))))

(declare-fun bs!239117 () Bool)

(assert (= bs!239117 (and d!282799 d!282775)))

(assert (=> bs!239117 (= (and (= lt!342637 (reg!2915 r!15766)) (= lt!342628 lt!342626)) (= lambda!31896 lambda!31888))))

(assert (=> bs!239112 (not (= lambda!31896 lambda!31850))))

(declare-fun bs!239118 () Bool)

(assert (= bs!239118 (and d!282799 d!282765)))

(assert (=> bs!239118 (not (= lambda!31896 lambda!31883))))

(assert (=> bs!239115 (= (= lt!342628 (Star!2586 lt!342637)) (= lambda!31896 lambda!31894))))

(assert (=> bs!239113 (not (= lambda!31896 lambda!31848))))

(assert (=> bs!239118 (= (and (= lt!342637 (reg!2915 r!15766)) (= lt!342628 (Star!2586 (reg!2915 r!15766)))) (= lambda!31896 lambda!31882))))

(assert (=> d!282799 true))

(assert (=> d!282799 true))

(assert (=> d!282799 true))

(assert (=> d!282799 (= (isDefined!1819 (findConcatSeparation!283 lt!342637 lt!342628 Nil!9800 s!10566 s!10566)) (Exists!337 lambda!31896))))

(declare-fun lt!342707 () Unit!14791)

(assert (=> d!282799 (= lt!342707 (choose!5848 lt!342637 lt!342628 s!10566))))

(assert (=> d!282799 (validRegex!1055 lt!342637)))

(assert (=> d!282799 (= (lemmaFindConcatSeparationEquivalentToExists!283 lt!342637 lt!342628 s!10566) lt!342707)))

(declare-fun bs!239119 () Bool)

(assert (= bs!239119 d!282799))

(assert (=> bs!239119 m!1159065))

(declare-fun m!1159255 () Bool)

(assert (=> bs!239119 m!1159255))

(assert (=> bs!239119 m!1159065))

(declare-fun m!1159257 () Bool)

(assert (=> bs!239119 m!1159257))

(declare-fun m!1159259 () Bool)

(assert (=> bs!239119 m!1159259))

(assert (=> bs!239119 m!1159237))

(assert (=> b!942697 d!282799))

(declare-fun bs!239120 () Bool)

(declare-fun b!943021 () Bool)

(assert (= bs!239120 (and b!943021 b!942697)))

(declare-fun lambda!31897 () Int)

(assert (=> bs!239120 (not (= lambda!31897 lambda!31849))))

(declare-fun bs!239121 () Bool)

(assert (= bs!239121 (and b!943021 b!942704)))

(assert (=> bs!239121 (not (= lambda!31897 lambda!31847))))

(declare-fun bs!239122 () Bool)

(assert (= bs!239122 (and b!943021 b!942818)))

(assert (=> bs!239122 (= (and (= (reg!2915 lt!342628) (reg!2915 r!15766)) (= lt!342628 r!15766)) (= lambda!31897 lambda!31871))))

(declare-fun bs!239123 () Bool)

(assert (= bs!239123 (and b!943021 d!282789)))

(assert (=> bs!239123 (= (and (= (reg!2915 lt!342628) lt!342637) (= lt!342628 (Star!2586 lt!342637))) (= lambda!31897 lambda!31895))))

(declare-fun bs!239124 () Bool)

(assert (= bs!239124 (and b!943021 d!282775)))

(assert (=> bs!239124 (not (= lambda!31897 lambda!31888))))

(assert (=> bs!239120 (= (= (reg!2915 lt!342628) lt!342637) (= lambda!31897 lambda!31850))))

(declare-fun bs!239125 () Bool)

(assert (= bs!239125 (and b!943021 d!282765)))

(assert (=> bs!239125 (= (and (= (reg!2915 lt!342628) (reg!2915 r!15766)) (= lt!342628 (Star!2586 (reg!2915 r!15766)))) (= lambda!31897 lambda!31883))))

(assert (=> bs!239123 (not (= lambda!31897 lambda!31894))))

(assert (=> bs!239121 (= (and (= (reg!2915 lt!342628) (reg!2915 r!15766)) (= lt!342628 lt!342626)) (= lambda!31897 lambda!31848))))

(assert (=> bs!239125 (not (= lambda!31897 lambda!31882))))

(declare-fun bs!239126 () Bool)

(assert (= bs!239126 (and b!943021 b!942816)))

(assert (=> bs!239126 (not (= lambda!31897 lambda!31872))))

(declare-fun bs!239127 () Bool)

(assert (= bs!239127 (and b!943021 d!282799)))

(assert (=> bs!239127 (not (= lambda!31897 lambda!31896))))

(assert (=> b!943021 true))

(assert (=> b!943021 true))

(declare-fun bs!239128 () Bool)

(declare-fun b!943019 () Bool)

(assert (= bs!239128 (and b!943019 b!942697)))

(declare-fun lambda!31898 () Int)

(assert (=> bs!239128 (not (= lambda!31898 lambda!31849))))

(declare-fun bs!239129 () Bool)

(assert (= bs!239129 (and b!943019 b!942704)))

(assert (=> bs!239129 (not (= lambda!31898 lambda!31847))))

(declare-fun bs!239130 () Bool)

(assert (= bs!239130 (and b!943019 b!942818)))

(assert (=> bs!239130 (not (= lambda!31898 lambda!31871))))

(declare-fun bs!239131 () Bool)

(assert (= bs!239131 (and b!943019 d!282789)))

(assert (=> bs!239131 (not (= lambda!31898 lambda!31895))))

(declare-fun bs!239132 () Bool)

(assert (= bs!239132 (and b!943019 b!943021)))

(assert (=> bs!239132 (not (= lambda!31898 lambda!31897))))

(declare-fun bs!239133 () Bool)

(assert (= bs!239133 (and b!943019 d!282775)))

(assert (=> bs!239133 (not (= lambda!31898 lambda!31888))))

(assert (=> bs!239128 (not (= lambda!31898 lambda!31850))))

(declare-fun bs!239134 () Bool)

(assert (= bs!239134 (and b!943019 d!282765)))

(assert (=> bs!239134 (not (= lambda!31898 lambda!31883))))

(assert (=> bs!239131 (not (= lambda!31898 lambda!31894))))

(assert (=> bs!239129 (not (= lambda!31898 lambda!31848))))

(assert (=> bs!239134 (not (= lambda!31898 lambda!31882))))

(declare-fun bs!239135 () Bool)

(assert (= bs!239135 (and b!943019 b!942816)))

(assert (=> bs!239135 (= (and (= (regOne!5684 lt!342628) (regOne!5684 r!15766)) (= (regTwo!5684 lt!342628) (regTwo!5684 r!15766))) (= lambda!31898 lambda!31872))))

(declare-fun bs!239136 () Bool)

(assert (= bs!239136 (and b!943019 d!282799)))

(assert (=> bs!239136 (not (= lambda!31898 lambda!31896))))

(assert (=> b!943019 true))

(assert (=> b!943019 true))

(declare-fun call!58854 () Bool)

(declare-fun bm!58848 () Bool)

(declare-fun c!153507 () Bool)

(assert (=> bm!58848 (= call!58854 (Exists!337 (ite c!153507 lambda!31897 lambda!31898)))))

(declare-fun b!943011 () Bool)

(declare-fun c!153505 () Bool)

(assert (=> b!943011 (= c!153505 (is-ElementMatch!2586 lt!342628))))

(declare-fun e!611507 () Bool)

(declare-fun e!611504 () Bool)

(assert (=> b!943011 (= e!611507 e!611504)))

(declare-fun b!943012 () Bool)

(assert (=> b!943012 (= e!611504 (= s!10566 (Cons!9800 (c!153443 lt!342628) Nil!9800)))))

(declare-fun b!943013 () Bool)

(declare-fun e!611505 () Bool)

(assert (=> b!943013 (= e!611505 e!611507)))

(declare-fun res!428376 () Bool)

(assert (=> b!943013 (= res!428376 (not (is-EmptyLang!2586 lt!342628)))))

(assert (=> b!943013 (=> (not res!428376) (not e!611507))))

(declare-fun b!943014 () Bool)

(declare-fun call!58853 () Bool)

(assert (=> b!943014 (= e!611505 call!58853)))

(declare-fun b!943015 () Bool)

(declare-fun c!153504 () Bool)

(assert (=> b!943015 (= c!153504 (is-Union!2586 lt!342628))))

(declare-fun e!611506 () Bool)

(assert (=> b!943015 (= e!611504 e!611506)))

(declare-fun b!943016 () Bool)

(declare-fun e!611510 () Bool)

(assert (=> b!943016 (= e!611510 (matchRSpec!387 (regTwo!5685 lt!342628) s!10566))))

(declare-fun b!943017 () Bool)

(declare-fun e!611508 () Bool)

(assert (=> b!943017 (= e!611506 e!611508)))

(assert (=> b!943017 (= c!153507 (is-Star!2586 lt!342628))))

(declare-fun b!943018 () Bool)

(declare-fun res!428377 () Bool)

(declare-fun e!611509 () Bool)

(assert (=> b!943018 (=> res!428377 e!611509)))

(assert (=> b!943018 (= res!428377 call!58853)))

(assert (=> b!943018 (= e!611508 e!611509)))

(assert (=> b!943019 (= e!611508 call!58854)))

(declare-fun d!282801 () Bool)

(declare-fun c!153506 () Bool)

(assert (=> d!282801 (= c!153506 (is-EmptyExpr!2586 lt!342628))))

(assert (=> d!282801 (= (matchRSpec!387 lt!342628 s!10566) e!611505)))

(declare-fun bm!58849 () Bool)

(assert (=> bm!58849 (= call!58853 (isEmpty!6053 s!10566))))

(declare-fun b!943020 () Bool)

(assert (=> b!943020 (= e!611506 e!611510)))

(declare-fun res!428378 () Bool)

(assert (=> b!943020 (= res!428378 (matchRSpec!387 (regOne!5685 lt!342628) s!10566))))

(assert (=> b!943020 (=> res!428378 e!611510)))

(assert (=> b!943021 (= e!611509 call!58854)))

(assert (= (and d!282801 c!153506) b!943014))

(assert (= (and d!282801 (not c!153506)) b!943013))

(assert (= (and b!943013 res!428376) b!943011))

(assert (= (and b!943011 c!153505) b!943012))

(assert (= (and b!943011 (not c!153505)) b!943015))

(assert (= (and b!943015 c!153504) b!943020))

(assert (= (and b!943015 (not c!153504)) b!943017))

(assert (= (and b!943020 (not res!428378)) b!943016))

(assert (= (and b!943017 c!153507) b!943018))

(assert (= (and b!943017 (not c!153507)) b!943019))

(assert (= (and b!943018 (not res!428377)) b!943021))

(assert (= (or b!943021 b!943019) bm!58848))

(assert (= (or b!943014 b!943018) bm!58849))

(declare-fun m!1159261 () Bool)

(assert (=> bm!58848 m!1159261))

(declare-fun m!1159263 () Bool)

(assert (=> b!943016 m!1159263))

(assert (=> bm!58849 m!1159069))

(declare-fun m!1159265 () Bool)

(assert (=> b!943020 m!1159265))

(assert (=> b!942697 d!282801))

(declare-fun d!282803 () Bool)

(assert (=> d!282803 (= (Exists!337 lambda!31849) (choose!5846 lambda!31849))))

(declare-fun bs!239137 () Bool)

(assert (= bs!239137 d!282803))

(declare-fun m!1159267 () Bool)

(assert (=> bs!239137 m!1159267))

(assert (=> b!942697 d!282803))

(declare-fun b!943040 () Bool)

(declare-fun e!611528 () Bool)

(declare-fun e!611529 () Bool)

(assert (=> b!943040 (= e!611528 e!611529)))

(declare-fun c!153512 () Bool)

(assert (=> b!943040 (= c!153512 (is-Star!2586 (reg!2915 r!15766)))))

(declare-fun b!943041 () Bool)

(declare-fun e!611526 () Bool)

(declare-fun call!58862 () Bool)

(assert (=> b!943041 (= e!611526 call!58862)))

(declare-fun b!943042 () Bool)

(declare-fun e!611525 () Bool)

(declare-fun e!611527 () Bool)

(assert (=> b!943042 (= e!611525 e!611527)))

(declare-fun res!428389 () Bool)

(assert (=> b!943042 (=> (not res!428389) (not e!611527))))

(declare-fun call!58863 () Bool)

(assert (=> b!943042 (= res!428389 call!58863)))

(declare-fun d!282805 () Bool)

(declare-fun res!428392 () Bool)

(assert (=> d!282805 (=> res!428392 e!611528)))

(assert (=> d!282805 (= res!428392 (is-ElementMatch!2586 (reg!2915 r!15766)))))

(assert (=> d!282805 (= (validRegex!1055 (reg!2915 r!15766)) e!611528)))

(declare-fun b!943043 () Bool)

(assert (=> b!943043 (= e!611527 call!58862)))

(declare-fun b!943044 () Bool)

(declare-fun e!611531 () Bool)

(assert (=> b!943044 (= e!611529 e!611531)))

(declare-fun res!428390 () Bool)

(assert (=> b!943044 (= res!428390 (not (nullable!756 (reg!2915 (reg!2915 r!15766)))))))

(assert (=> b!943044 (=> (not res!428390) (not e!611531))))

(declare-fun b!943045 () Bool)

(declare-fun res!428391 () Bool)

(assert (=> b!943045 (=> (not res!428391) (not e!611526))))

(assert (=> b!943045 (= res!428391 call!58863)))

(declare-fun e!611530 () Bool)

(assert (=> b!943045 (= e!611530 e!611526)))

(declare-fun bm!58856 () Bool)

(declare-fun call!58861 () Bool)

(assert (=> bm!58856 (= call!58862 call!58861)))

(declare-fun c!153513 () Bool)

(declare-fun bm!58857 () Bool)

(assert (=> bm!58857 (= call!58861 (validRegex!1055 (ite c!153512 (reg!2915 (reg!2915 r!15766)) (ite c!153513 (regTwo!5685 (reg!2915 r!15766)) (regTwo!5684 (reg!2915 r!15766))))))))

(declare-fun bm!58858 () Bool)

(assert (=> bm!58858 (= call!58863 (validRegex!1055 (ite c!153513 (regOne!5685 (reg!2915 r!15766)) (regOne!5684 (reg!2915 r!15766)))))))

(declare-fun b!943046 () Bool)

(assert (=> b!943046 (= e!611531 call!58861)))

(declare-fun b!943047 () Bool)

(assert (=> b!943047 (= e!611529 e!611530)))

(assert (=> b!943047 (= c!153513 (is-Union!2586 (reg!2915 r!15766)))))

(declare-fun b!943048 () Bool)

(declare-fun res!428393 () Bool)

(assert (=> b!943048 (=> res!428393 e!611525)))

(assert (=> b!943048 (= res!428393 (not (is-Concat!4419 (reg!2915 r!15766))))))

(assert (=> b!943048 (= e!611530 e!611525)))

(assert (= (and d!282805 (not res!428392)) b!943040))

(assert (= (and b!943040 c!153512) b!943044))

(assert (= (and b!943040 (not c!153512)) b!943047))

(assert (= (and b!943044 res!428390) b!943046))

(assert (= (and b!943047 c!153513) b!943045))

(assert (= (and b!943047 (not c!153513)) b!943048))

(assert (= (and b!943045 res!428391) b!943041))

(assert (= (and b!943048 (not res!428393)) b!943042))

(assert (= (and b!943042 res!428389) b!943043))

(assert (= (or b!943041 b!943043) bm!58856))

(assert (= (or b!943045 b!943042) bm!58858))

(assert (= (or b!943046 bm!58856) bm!58857))

(declare-fun m!1159269 () Bool)

(assert (=> b!943044 m!1159269))

(declare-fun m!1159271 () Bool)

(assert (=> bm!58857 m!1159271))

(declare-fun m!1159273 () Bool)

(assert (=> bm!58858 m!1159273))

(assert (=> b!942703 d!282805))

(declare-fun b!943049 () Bool)

(declare-fun e!611535 () Bool)

(declare-fun e!611536 () Bool)

(assert (=> b!943049 (= e!611535 e!611536)))

(declare-fun c!153514 () Bool)

(assert (=> b!943049 (= c!153514 (is-Star!2586 r!15766))))

(declare-fun b!943050 () Bool)

(declare-fun e!611533 () Bool)

(declare-fun call!58865 () Bool)

(assert (=> b!943050 (= e!611533 call!58865)))

(declare-fun b!943051 () Bool)

(declare-fun e!611532 () Bool)

(declare-fun e!611534 () Bool)

(assert (=> b!943051 (= e!611532 e!611534)))

(declare-fun res!428394 () Bool)

(assert (=> b!943051 (=> (not res!428394) (not e!611534))))

(declare-fun call!58866 () Bool)

(assert (=> b!943051 (= res!428394 call!58866)))

(declare-fun d!282807 () Bool)

(declare-fun res!428397 () Bool)

(assert (=> d!282807 (=> res!428397 e!611535)))

(assert (=> d!282807 (= res!428397 (is-ElementMatch!2586 r!15766))))

(assert (=> d!282807 (= (validRegex!1055 r!15766) e!611535)))

(declare-fun b!943052 () Bool)

(assert (=> b!943052 (= e!611534 call!58865)))

(declare-fun b!943053 () Bool)

(declare-fun e!611538 () Bool)

(assert (=> b!943053 (= e!611536 e!611538)))

(declare-fun res!428395 () Bool)

(assert (=> b!943053 (= res!428395 (not (nullable!756 (reg!2915 r!15766))))))

(assert (=> b!943053 (=> (not res!428395) (not e!611538))))

(declare-fun b!943054 () Bool)

(declare-fun res!428396 () Bool)

(assert (=> b!943054 (=> (not res!428396) (not e!611533))))

(assert (=> b!943054 (= res!428396 call!58866)))

(declare-fun e!611537 () Bool)

(assert (=> b!943054 (= e!611537 e!611533)))

(declare-fun bm!58859 () Bool)

(declare-fun call!58864 () Bool)

(assert (=> bm!58859 (= call!58865 call!58864)))

(declare-fun c!153515 () Bool)

(declare-fun bm!58860 () Bool)

(assert (=> bm!58860 (= call!58864 (validRegex!1055 (ite c!153514 (reg!2915 r!15766) (ite c!153515 (regTwo!5685 r!15766) (regTwo!5684 r!15766)))))))

(declare-fun bm!58861 () Bool)

(assert (=> bm!58861 (= call!58866 (validRegex!1055 (ite c!153515 (regOne!5685 r!15766) (regOne!5684 r!15766))))))

(declare-fun b!943055 () Bool)

(assert (=> b!943055 (= e!611538 call!58864)))

(declare-fun b!943056 () Bool)

(assert (=> b!943056 (= e!611536 e!611537)))

(assert (=> b!943056 (= c!153515 (is-Union!2586 r!15766))))

(declare-fun b!943057 () Bool)

(declare-fun res!428398 () Bool)

(assert (=> b!943057 (=> res!428398 e!611532)))

(assert (=> b!943057 (= res!428398 (not (is-Concat!4419 r!15766)))))

(assert (=> b!943057 (= e!611537 e!611532)))

(assert (= (and d!282807 (not res!428397)) b!943049))

(assert (= (and b!943049 c!153514) b!943053))

(assert (= (and b!943049 (not c!153514)) b!943056))

(assert (= (and b!943053 res!428395) b!943055))

(assert (= (and b!943056 c!153515) b!943054))

(assert (= (and b!943056 (not c!153515)) b!943057))

(assert (= (and b!943054 res!428396) b!943050))

(assert (= (and b!943057 (not res!428398)) b!943051))

(assert (= (and b!943051 res!428394) b!943052))

(assert (= (or b!943050 b!943052) bm!58859))

(assert (= (or b!943054 b!943051) bm!58861))

(assert (= (or b!943055 bm!58859) bm!58860))

(assert (=> b!943053 m!1159173))

(declare-fun m!1159275 () Bool)

(assert (=> bm!58860 m!1159275))

(declare-fun m!1159277 () Bool)

(assert (=> bm!58861 m!1159277))

(assert (=> start!84132 d!282807))

(declare-fun b!943058 () Bool)

(declare-fun res!428405 () Bool)

(declare-fun e!611540 () Bool)

(assert (=> b!943058 (=> res!428405 e!611540)))

(declare-fun e!611541 () Bool)

(assert (=> b!943058 (= res!428405 e!611541)))

(declare-fun res!428403 () Bool)

(assert (=> b!943058 (=> (not res!428403) (not e!611541))))

(declare-fun lt!342708 () Bool)

(assert (=> b!943058 (= res!428403 lt!342708)))

(declare-fun b!943059 () Bool)

(declare-fun e!611543 () Bool)

(assert (=> b!943059 (= e!611543 (matchR!1124 (derivativeStep!565 lt!342637 (head!1718 (_1!6361 (get!3261 lt!342636)))) (tail!1280 (_1!6361 (get!3261 lt!342636)))))))

(declare-fun b!943060 () Bool)

(declare-fun res!428406 () Bool)

(assert (=> b!943060 (=> (not res!428406) (not e!611541))))

(assert (=> b!943060 (= res!428406 (isEmpty!6053 (tail!1280 (_1!6361 (get!3261 lt!342636)))))))

(declare-fun b!943061 () Bool)

(declare-fun e!611542 () Bool)

(declare-fun e!611544 () Bool)

(assert (=> b!943061 (= e!611542 e!611544)))

(declare-fun res!428400 () Bool)

(assert (=> b!943061 (=> res!428400 e!611544)))

(declare-fun call!58867 () Bool)

(assert (=> b!943061 (= res!428400 call!58867)))

(declare-fun b!943062 () Bool)

(assert (=> b!943062 (= e!611540 e!611542)))

(declare-fun res!428399 () Bool)

(assert (=> b!943062 (=> (not res!428399) (not e!611542))))

(assert (=> b!943062 (= res!428399 (not lt!342708))))

(declare-fun b!943063 () Bool)

(declare-fun res!428401 () Bool)

(assert (=> b!943063 (=> res!428401 e!611544)))

(assert (=> b!943063 (= res!428401 (not (isEmpty!6053 (tail!1280 (_1!6361 (get!3261 lt!342636))))))))

(declare-fun bm!58862 () Bool)

(assert (=> bm!58862 (= call!58867 (isEmpty!6053 (_1!6361 (get!3261 lt!342636))))))

(declare-fun b!943064 () Bool)

(declare-fun e!611545 () Bool)

(assert (=> b!943064 (= e!611545 (not lt!342708))))

(declare-fun d!282809 () Bool)

(declare-fun e!611539 () Bool)

(assert (=> d!282809 e!611539))

(declare-fun c!153518 () Bool)

(assert (=> d!282809 (= c!153518 (is-EmptyExpr!2586 lt!342637))))

(assert (=> d!282809 (= lt!342708 e!611543)))

(declare-fun c!153517 () Bool)

(assert (=> d!282809 (= c!153517 (isEmpty!6053 (_1!6361 (get!3261 lt!342636))))))

(assert (=> d!282809 (validRegex!1055 lt!342637)))

(assert (=> d!282809 (= (matchR!1124 lt!342637 (_1!6361 (get!3261 lt!342636))) lt!342708)))

(declare-fun b!943065 () Bool)

(declare-fun res!428402 () Bool)

(assert (=> b!943065 (=> (not res!428402) (not e!611541))))

(assert (=> b!943065 (= res!428402 (not call!58867))))

(declare-fun b!943066 () Bool)

(assert (=> b!943066 (= e!611539 (= lt!342708 call!58867))))

(declare-fun b!943067 () Bool)

(declare-fun res!428404 () Bool)

(assert (=> b!943067 (=> res!428404 e!611540)))

(assert (=> b!943067 (= res!428404 (not (is-ElementMatch!2586 lt!342637)))))

(assert (=> b!943067 (= e!611545 e!611540)))

(declare-fun b!943068 () Bool)

(assert (=> b!943068 (= e!611543 (nullable!756 lt!342637))))

(declare-fun b!943069 () Bool)

(assert (=> b!943069 (= e!611539 e!611545)))

(declare-fun c!153516 () Bool)

(assert (=> b!943069 (= c!153516 (is-EmptyLang!2586 lt!342637))))

(declare-fun b!943070 () Bool)

(assert (=> b!943070 (= e!611544 (not (= (head!1718 (_1!6361 (get!3261 lt!342636))) (c!153443 lt!342637))))))

(declare-fun b!943071 () Bool)

(assert (=> b!943071 (= e!611541 (= (head!1718 (_1!6361 (get!3261 lt!342636))) (c!153443 lt!342637)))))

(assert (= (and d!282809 c!153517) b!943068))

(assert (= (and d!282809 (not c!153517)) b!943059))

(assert (= (and d!282809 c!153518) b!943066))

(assert (= (and d!282809 (not c!153518)) b!943069))

(assert (= (and b!943069 c!153516) b!943064))

(assert (= (and b!943069 (not c!153516)) b!943067))

(assert (= (and b!943067 (not res!428404)) b!943058))

(assert (= (and b!943058 res!428403) b!943065))

(assert (= (and b!943065 res!428402) b!943060))

(assert (= (and b!943060 res!428406) b!943071))

(assert (= (and b!943058 (not res!428405)) b!943062))

(assert (= (and b!943062 res!428399) b!943061))

(assert (= (and b!943061 (not res!428400)) b!943063))

(assert (= (and b!943063 (not res!428401)) b!943070))

(assert (= (or b!943066 b!943065 b!943061) bm!58862))

(declare-fun m!1159279 () Bool)

(assert (=> b!943071 m!1159279))

(declare-fun m!1159281 () Bool)

(assert (=> b!943060 m!1159281))

(assert (=> b!943060 m!1159281))

(declare-fun m!1159283 () Bool)

(assert (=> b!943060 m!1159283))

(declare-fun m!1159285 () Bool)

(assert (=> bm!58862 m!1159285))

(assert (=> b!943070 m!1159279))

(assert (=> d!282809 m!1159285))

(assert (=> d!282809 m!1159237))

(assert (=> b!943063 m!1159281))

(assert (=> b!943063 m!1159281))

(assert (=> b!943063 m!1159283))

(declare-fun m!1159287 () Bool)

(assert (=> b!943068 m!1159287))

(assert (=> b!943059 m!1159279))

(assert (=> b!943059 m!1159279))

(declare-fun m!1159289 () Bool)

(assert (=> b!943059 m!1159289))

(assert (=> b!943059 m!1159281))

(assert (=> b!943059 m!1159289))

(assert (=> b!943059 m!1159281))

(declare-fun m!1159291 () Bool)

(assert (=> b!943059 m!1159291))

(assert (=> b!942705 d!282809))

(declare-fun d!282811 () Bool)

(assert (=> d!282811 (= (get!3261 lt!342636) (v!19593 lt!342636))))

(assert (=> b!942705 d!282811))

(declare-fun b!943094 () Bool)

(declare-fun e!611558 () Bool)

(assert (=> b!943094 (= e!611558 tp_is_empty!4815)))

(assert (=> b!942699 (= tp!291443 e!611558)))

(declare-fun b!943096 () Bool)

(declare-fun tp!291477 () Bool)

(assert (=> b!943096 (= e!611558 tp!291477)))

(declare-fun b!943095 () Bool)

(declare-fun tp!291478 () Bool)

(declare-fun tp!291475 () Bool)

(assert (=> b!943095 (= e!611558 (and tp!291478 tp!291475))))

(declare-fun b!943097 () Bool)

(declare-fun tp!291479 () Bool)

(declare-fun tp!291476 () Bool)

(assert (=> b!943097 (= e!611558 (and tp!291479 tp!291476))))

(assert (= (and b!942699 (is-ElementMatch!2586 (reg!2915 r!15766))) b!943094))

(assert (= (and b!942699 (is-Concat!4419 (reg!2915 r!15766))) b!943095))

(assert (= (and b!942699 (is-Star!2586 (reg!2915 r!15766))) b!943096))

(assert (= (and b!942699 (is-Union!2586 (reg!2915 r!15766))) b!943097))

(declare-fun b!943102 () Bool)

(declare-fun e!611559 () Bool)

(assert (=> b!943102 (= e!611559 tp_is_empty!4815)))

(assert (=> b!942706 (= tp!291446 e!611559)))

(declare-fun b!943104 () Bool)

(declare-fun tp!291482 () Bool)

(assert (=> b!943104 (= e!611559 tp!291482)))

(declare-fun b!943103 () Bool)

(declare-fun tp!291483 () Bool)

(declare-fun tp!291480 () Bool)

(assert (=> b!943103 (= e!611559 (and tp!291483 tp!291480))))

(declare-fun b!943105 () Bool)

(declare-fun tp!291484 () Bool)

(declare-fun tp!291481 () Bool)

(assert (=> b!943105 (= e!611559 (and tp!291484 tp!291481))))

(assert (= (and b!942706 (is-ElementMatch!2586 (regOne!5684 r!15766))) b!943102))

(assert (= (and b!942706 (is-Concat!4419 (regOne!5684 r!15766))) b!943103))

(assert (= (and b!942706 (is-Star!2586 (regOne!5684 r!15766))) b!943104))

(assert (= (and b!942706 (is-Union!2586 (regOne!5684 r!15766))) b!943105))

(declare-fun b!943108 () Bool)

(declare-fun e!611560 () Bool)

(assert (=> b!943108 (= e!611560 tp_is_empty!4815)))

(assert (=> b!942706 (= tp!291442 e!611560)))

(declare-fun b!943110 () Bool)

(declare-fun tp!291487 () Bool)

(assert (=> b!943110 (= e!611560 tp!291487)))

(declare-fun b!943109 () Bool)

(declare-fun tp!291488 () Bool)

(declare-fun tp!291485 () Bool)

(assert (=> b!943109 (= e!611560 (and tp!291488 tp!291485))))

(declare-fun b!943111 () Bool)

(declare-fun tp!291489 () Bool)

(declare-fun tp!291486 () Bool)

(assert (=> b!943111 (= e!611560 (and tp!291489 tp!291486))))

(assert (= (and b!942706 (is-ElementMatch!2586 (regTwo!5684 r!15766))) b!943108))

(assert (= (and b!942706 (is-Concat!4419 (regTwo!5684 r!15766))) b!943109))

(assert (= (and b!942706 (is-Star!2586 (regTwo!5684 r!15766))) b!943110))

(assert (= (and b!942706 (is-Union!2586 (regTwo!5684 r!15766))) b!943111))

(declare-fun b!943116 () Bool)

(declare-fun e!611563 () Bool)

(declare-fun tp!291492 () Bool)

(assert (=> b!943116 (= e!611563 (and tp_is_empty!4815 tp!291492))))

(assert (=> b!942696 (= tp!291441 e!611563)))

(assert (= (and b!942696 (is-Cons!9800 (t!100862 s!10566))) b!943116))

(declare-fun b!943117 () Bool)

(declare-fun e!611564 () Bool)

(assert (=> b!943117 (= e!611564 tp_is_empty!4815)))

(assert (=> b!942700 (= tp!291444 e!611564)))

(declare-fun b!943119 () Bool)

(declare-fun tp!291495 () Bool)

(assert (=> b!943119 (= e!611564 tp!291495)))

(declare-fun b!943118 () Bool)

(declare-fun tp!291496 () Bool)

(declare-fun tp!291493 () Bool)

(assert (=> b!943118 (= e!611564 (and tp!291496 tp!291493))))

(declare-fun b!943120 () Bool)

(declare-fun tp!291497 () Bool)

(declare-fun tp!291494 () Bool)

(assert (=> b!943120 (= e!611564 (and tp!291497 tp!291494))))

(assert (= (and b!942700 (is-ElementMatch!2586 (regOne!5685 r!15766))) b!943117))

(assert (= (and b!942700 (is-Concat!4419 (regOne!5685 r!15766))) b!943118))

(assert (= (and b!942700 (is-Star!2586 (regOne!5685 r!15766))) b!943119))

(assert (= (and b!942700 (is-Union!2586 (regOne!5685 r!15766))) b!943120))

(declare-fun b!943121 () Bool)

(declare-fun e!611565 () Bool)

(assert (=> b!943121 (= e!611565 tp_is_empty!4815)))

(assert (=> b!942700 (= tp!291445 e!611565)))

(declare-fun b!943123 () Bool)

(declare-fun tp!291500 () Bool)

(assert (=> b!943123 (= e!611565 tp!291500)))

(declare-fun b!943122 () Bool)

(declare-fun tp!291501 () Bool)

(declare-fun tp!291498 () Bool)

(assert (=> b!943122 (= e!611565 (and tp!291501 tp!291498))))

(declare-fun b!943124 () Bool)

(declare-fun tp!291502 () Bool)

(declare-fun tp!291499 () Bool)

(assert (=> b!943124 (= e!611565 (and tp!291502 tp!291499))))

(assert (= (and b!942700 (is-ElementMatch!2586 (regTwo!5685 r!15766))) b!943121))

(assert (= (and b!942700 (is-Concat!4419 (regTwo!5685 r!15766))) b!943122))

(assert (= (and b!942700 (is-Star!2586 (regTwo!5685 r!15766))) b!943123))

(assert (= (and b!942700 (is-Union!2586 (regTwo!5685 r!15766))) b!943124))

(push 1)

(assert (not b!942888))

(assert (not b!943016))

(assert (not b!943105))

(assert (not b!943063))

(assert (not bm!58845))

(assert (not b!943119))

(assert (not d!282763))

(assert (not b!943097))

(assert (not bm!58842))

(assert (not b!942959))

(assert (not b!943059))

(assert (not b!943103))

(assert (not d!282809))

(assert (not bm!58825))

(assert (not b!942936))

(assert (not b!943070))

(assert (not bm!58862))

(assert (not d!282775))

(assert (not b!943122))

(assert (not b!943004))

(assert (not b!943020))

(assert (not d!282777))

(assert (not b!943060))

(assert (not b!943124))

(assert (not b!942997))

(assert (not b!942952))

(assert (not b!942994))

(assert (not bm!58849))

(assert (not bm!58861))

(assert (not d!282757))

(assert (not d!282773))

(assert (not b!942877))

(assert (not b!942885))

(assert (not b!943095))

(assert (not bm!58847))

(assert (not d!282759))

(assert (not b!943000))

(assert (not d!282765))

(assert (not b!942817))

(assert (not b!943110))

(assert (not b!943006))

(assert (not b!942993))

(assert tp_is_empty!4815)

(assert (not b!942957))

(assert (not b!942876))

(assert (not bm!58860))

(assert (not b!943002))

(assert (not b!943044))

(assert (not b!942960))

(assert (not b!942948))

(assert (not bm!58858))

(assert (not d!282783))

(assert (not b!943104))

(assert (not d!282785))

(assert (not b!942998))

(assert (not d!282779))

(assert (not b!942887))

(assert (not d!282789))

(assert (not b!943009))

(assert (not b!942813))

(assert (not b!942880))

(assert (not d!282799))

(assert (not bm!58822))

(assert (not bm!58848))

(assert (not b!943071))

(assert (not b!943118))

(assert (not b!943068))

(assert (not d!282761))

(assert (not b!943096))

(assert (not d!282793))

(assert (not bm!58821))

(assert (not b!943120))

(assert (not b!943111))

(assert (not b!943116))

(assert (not b!943007))

(assert (not b!943109))

(assert (not d!282803))

(assert (not b!943053))

(assert (not b!942995))

(assert (not bm!58857))

(assert (not b!943123))

(assert (not d!282767))

(assert (not d!282795))

(assert (not b!943003))

(assert (not b!942949))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

