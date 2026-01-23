; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!724032 () Bool)

(assert start!724032)

(declare-fun b!7464700 () Bool)

(assert (=> b!7464700 true))

(assert (=> b!7464700 true))

(assert (=> b!7464700 true))

(declare-fun lambda!461939 () Int)

(declare-fun lambda!461938 () Int)

(assert (=> b!7464700 (not (= lambda!461939 lambda!461938))))

(assert (=> b!7464700 true))

(assert (=> b!7464700 true))

(assert (=> b!7464700 true))

(declare-fun bs!1929864 () Bool)

(declare-fun b!7464701 () Bool)

(assert (= bs!1929864 (and b!7464701 b!7464700)))

(declare-fun lambda!461940 () Int)

(declare-datatypes ((C!39370 0))(
  ( (C!39371 (val!30083 Int)) )
))
(declare-datatypes ((Regex!19548 0))(
  ( (ElementMatch!19548 (c!1379735 C!39370)) (Concat!28393 (regOne!39608 Regex!19548) (regTwo!39608 Regex!19548)) (EmptyExpr!19548) (Star!19548 (reg!19877 Regex!19548)) (EmptyLang!19548) (Union!19548 (regOne!39609 Regex!19548) (regTwo!39609 Regex!19548)) )
))
(declare-fun r1!5845 () Regex!19548)

(declare-fun lt!2623496 () Regex!19548)

(assert (=> bs!1929864 (= (= r1!5845 lt!2623496) (= lambda!461940 lambda!461938))))

(assert (=> bs!1929864 (not (= lambda!461940 lambda!461939))))

(assert (=> b!7464701 true))

(assert (=> b!7464701 true))

(assert (=> b!7464701 true))

(declare-fun lambda!461941 () Int)

(assert (=> bs!1929864 (not (= lambda!461941 lambda!461938))))

(assert (=> bs!1929864 (= (= r1!5845 lt!2623496) (= lambda!461941 lambda!461939))))

(assert (=> b!7464701 (not (= lambda!461941 lambda!461940))))

(assert (=> b!7464701 true))

(assert (=> b!7464701 true))

(assert (=> b!7464701 true))

(declare-fun res!2994275 () Bool)

(declare-fun e!4454386 () Bool)

(assert (=> start!724032 (=> (not res!2994275) (not e!4454386))))

(declare-fun validRegex!10062 (Regex!19548) Bool)

(assert (=> start!724032 (= res!2994275 (validRegex!10062 r1!5845))))

(assert (=> start!724032 e!4454386))

(declare-fun e!4454385 () Bool)

(assert (=> start!724032 e!4454385))

(declare-fun e!4454383 () Bool)

(assert (=> start!724032 e!4454383))

(declare-fun e!4454384 () Bool)

(assert (=> start!724032 e!4454384))

(declare-fun e!4454380 () Bool)

(assert (=> start!724032 e!4454380))

(declare-fun b!7464692 () Bool)

(declare-fun e!4454382 () Bool)

(assert (=> b!7464692 (= e!4454386 (not e!4454382))))

(declare-fun res!2994279 () Bool)

(assert (=> b!7464692 (=> res!2994279 e!4454382)))

(declare-fun lt!2623489 () Bool)

(assert (=> b!7464692 (= res!2994279 lt!2623489)))

(declare-fun lt!2623495 () Bool)

(declare-fun lt!2623491 () Regex!19548)

(declare-datatypes ((List!72264 0))(
  ( (Nil!72140) (Cons!72140 (h!78588 C!39370) (t!386833 List!72264)) )
))
(declare-fun s!13591 () List!72264)

(declare-fun matchRSpec!4227 (Regex!19548 List!72264) Bool)

(assert (=> b!7464692 (= lt!2623495 (matchRSpec!4227 lt!2623491 s!13591))))

(declare-fun matchR!9312 (Regex!19548 List!72264) Bool)

(assert (=> b!7464692 (= lt!2623495 (matchR!9312 lt!2623491 s!13591))))

(declare-datatypes ((Unit!165931 0))(
  ( (Unit!165932) )
))
(declare-fun lt!2623490 () Unit!165931)

(declare-fun mainMatchTheorem!4221 (Regex!19548 List!72264) Unit!165931)

(assert (=> b!7464692 (= lt!2623490 (mainMatchTheorem!4221 lt!2623491 s!13591))))

(declare-fun lt!2623498 () Regex!19548)

(assert (=> b!7464692 (= lt!2623489 (matchRSpec!4227 lt!2623498 s!13591))))

(assert (=> b!7464692 (= lt!2623489 (matchR!9312 lt!2623498 s!13591))))

(declare-fun lt!2623499 () Unit!165931)

(assert (=> b!7464692 (= lt!2623499 (mainMatchTheorem!4221 lt!2623498 s!13591))))

(declare-fun lt!2623486 () Regex!19548)

(declare-fun lt!2623492 () Regex!19548)

(assert (=> b!7464692 (= lt!2623491 (Union!19548 lt!2623486 lt!2623492))))

(declare-fun r2!5783 () Regex!19548)

(declare-fun rTail!78 () Regex!19548)

(assert (=> b!7464692 (= lt!2623492 (Concat!28393 r2!5783 rTail!78))))

(assert (=> b!7464692 (= lt!2623486 (Concat!28393 r1!5845 rTail!78))))

(assert (=> b!7464692 (= lt!2623498 (Concat!28393 lt!2623496 rTail!78))))

(assert (=> b!7464692 (= lt!2623496 (Union!19548 r1!5845 r2!5783))))

(declare-fun b!7464693 () Bool)

(declare-fun tp_is_empty!49385 () Bool)

(assert (=> b!7464693 (= e!4454383 tp_is_empty!49385)))

(declare-fun b!7464694 () Bool)

(declare-fun tp!2163902 () Bool)

(declare-fun tp!2163903 () Bool)

(assert (=> b!7464694 (= e!4454385 (and tp!2163902 tp!2163903))))

(declare-fun b!7464695 () Bool)

(assert (=> b!7464695 (= e!4454384 tp_is_empty!49385)))

(declare-fun b!7464696 () Bool)

(declare-fun tp!2163914 () Bool)

(assert (=> b!7464696 (= e!4454385 tp!2163914)))

(declare-fun b!7464697 () Bool)

(declare-fun tp!2163901 () Bool)

(declare-fun tp!2163900 () Bool)

(assert (=> b!7464697 (= e!4454384 (and tp!2163901 tp!2163900))))

(declare-fun b!7464698 () Bool)

(declare-fun tp!2163907 () Bool)

(declare-fun tp!2163915 () Bool)

(assert (=> b!7464698 (= e!4454383 (and tp!2163907 tp!2163915))))

(declare-fun b!7464699 () Bool)

(declare-fun e!4454379 () Bool)

(declare-fun e!4454381 () Bool)

(assert (=> b!7464699 (= e!4454379 e!4454381)))

(declare-fun res!2994278 () Bool)

(assert (=> b!7464699 (=> res!2994278 e!4454381)))

(declare-fun lt!2623493 () Bool)

(declare-fun lt!2623503 () Bool)

(assert (=> b!7464699 (= res!2994278 (or (and (not lt!2623493) (not lt!2623503)) (not lt!2623493)))))

(assert (=> b!7464699 (= lt!2623503 (matchRSpec!4227 lt!2623492 s!13591))))

(assert (=> b!7464699 (= lt!2623503 (matchR!9312 lt!2623492 s!13591))))

(declare-fun lt!2623488 () Unit!165931)

(assert (=> b!7464699 (= lt!2623488 (mainMatchTheorem!4221 lt!2623492 s!13591))))

(assert (=> b!7464699 (= lt!2623493 (matchRSpec!4227 lt!2623486 s!13591))))

(assert (=> b!7464699 (= lt!2623493 (matchR!9312 lt!2623486 s!13591))))

(declare-fun lt!2623502 () Unit!165931)

(assert (=> b!7464699 (= lt!2623502 (mainMatchTheorem!4221 lt!2623486 s!13591))))

(assert (=> b!7464700 (= e!4454382 e!4454379)))

(declare-fun res!2994280 () Bool)

(assert (=> b!7464700 (=> res!2994280 e!4454379)))

(declare-fun lt!2623501 () Bool)

(assert (=> b!7464700 (= res!2994280 (or lt!2623501 (not lt!2623495)))))

(declare-fun Exists!4167 (Int) Bool)

(assert (=> b!7464700 (= (Exists!4167 lambda!461938) (Exists!4167 lambda!461939))))

(declare-fun lt!2623494 () Unit!165931)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2501 (Regex!19548 Regex!19548 List!72264) Unit!165931)

(assert (=> b!7464700 (= lt!2623494 (lemmaExistCutMatchRandMatchRSpecEquivalent!2501 lt!2623496 rTail!78 s!13591))))

(assert (=> b!7464700 (= lt!2623501 (Exists!4167 lambda!461938))))

(declare-datatypes ((tuple2!68546 0))(
  ( (tuple2!68547 (_1!37576 List!72264) (_2!37576 List!72264)) )
))
(declare-datatypes ((Option!17105 0))(
  ( (None!17104) (Some!17104 (v!54233 tuple2!68546)) )
))
(declare-fun isDefined!13794 (Option!17105) Bool)

(declare-fun findConcatSeparation!3227 (Regex!19548 Regex!19548 List!72264 List!72264 List!72264) Option!17105)

(assert (=> b!7464700 (= lt!2623501 (isDefined!13794 (findConcatSeparation!3227 lt!2623496 rTail!78 Nil!72140 s!13591 s!13591)))))

(declare-fun lt!2623487 () Unit!165931)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2985 (Regex!19548 Regex!19548 List!72264) Unit!165931)

(assert (=> b!7464700 (= lt!2623487 (lemmaFindConcatSeparationEquivalentToExists!2985 lt!2623496 rTail!78 s!13591))))

(declare-fun ++!17190 (List!72264 List!72264) List!72264)

(assert (=> b!7464701 (= e!4454381 (= (++!17190 Nil!72140 s!13591) s!13591))))

(assert (=> b!7464701 (= (Exists!4167 lambda!461940) (Exists!4167 lambda!461941))))

(declare-fun lt!2623500 () Unit!165931)

(assert (=> b!7464701 (= lt!2623500 (lemmaExistCutMatchRandMatchRSpecEquivalent!2501 r1!5845 rTail!78 s!13591))))

(assert (=> b!7464701 (= (isDefined!13794 (findConcatSeparation!3227 r1!5845 rTail!78 Nil!72140 s!13591 s!13591)) (Exists!4167 lambda!461940))))

(declare-fun lt!2623497 () Unit!165931)

(assert (=> b!7464701 (= lt!2623497 (lemmaFindConcatSeparationEquivalentToExists!2985 r1!5845 rTail!78 s!13591))))

(declare-fun b!7464702 () Bool)

(declare-fun tp!2163904 () Bool)

(assert (=> b!7464702 (= e!4454384 tp!2163904)))

(declare-fun b!7464703 () Bool)

(declare-fun res!2994277 () Bool)

(assert (=> b!7464703 (=> (not res!2994277) (not e!4454386))))

(assert (=> b!7464703 (= res!2994277 (validRegex!10062 rTail!78))))

(declare-fun b!7464704 () Bool)

(declare-fun tp!2163909 () Bool)

(assert (=> b!7464704 (= e!4454383 tp!2163909)))

(declare-fun b!7464705 () Bool)

(declare-fun tp!2163913 () Bool)

(declare-fun tp!2163906 () Bool)

(assert (=> b!7464705 (= e!4454385 (and tp!2163913 tp!2163906))))

(declare-fun b!7464706 () Bool)

(declare-fun res!2994276 () Bool)

(assert (=> b!7464706 (=> (not res!2994276) (not e!4454386))))

(assert (=> b!7464706 (= res!2994276 (validRegex!10062 r2!5783))))

(declare-fun b!7464707 () Bool)

(assert (=> b!7464707 (= e!4454385 tp_is_empty!49385)))

(declare-fun b!7464708 () Bool)

(declare-fun tp!2163905 () Bool)

(declare-fun tp!2163911 () Bool)

(assert (=> b!7464708 (= e!4454384 (and tp!2163905 tp!2163911))))

(declare-fun b!7464709 () Bool)

(declare-fun tp!2163912 () Bool)

(declare-fun tp!2163908 () Bool)

(assert (=> b!7464709 (= e!4454383 (and tp!2163912 tp!2163908))))

(declare-fun b!7464710 () Bool)

(declare-fun tp!2163910 () Bool)

(assert (=> b!7464710 (= e!4454380 (and tp_is_empty!49385 tp!2163910))))

(assert (= (and start!724032 res!2994275) b!7464706))

(assert (= (and b!7464706 res!2994276) b!7464703))

(assert (= (and b!7464703 res!2994277) b!7464692))

(assert (= (and b!7464692 (not res!2994279)) b!7464700))

(assert (= (and b!7464700 (not res!2994280)) b!7464699))

(assert (= (and b!7464699 (not res!2994278)) b!7464701))

(assert (= (and start!724032 (is-ElementMatch!19548 r1!5845)) b!7464707))

(assert (= (and start!724032 (is-Concat!28393 r1!5845)) b!7464705))

(assert (= (and start!724032 (is-Star!19548 r1!5845)) b!7464696))

(assert (= (and start!724032 (is-Union!19548 r1!5845)) b!7464694))

(assert (= (and start!724032 (is-ElementMatch!19548 r2!5783)) b!7464693))

(assert (= (and start!724032 (is-Concat!28393 r2!5783)) b!7464709))

(assert (= (and start!724032 (is-Star!19548 r2!5783)) b!7464704))

(assert (= (and start!724032 (is-Union!19548 r2!5783)) b!7464698))

(assert (= (and start!724032 (is-ElementMatch!19548 rTail!78)) b!7464695))

(assert (= (and start!724032 (is-Concat!28393 rTail!78)) b!7464697))

(assert (= (and start!724032 (is-Star!19548 rTail!78)) b!7464702))

(assert (= (and start!724032 (is-Union!19548 rTail!78)) b!7464708))

(assert (= (and start!724032 (is-Cons!72140 s!13591)) b!7464710))

(declare-fun m!8064104 () Bool)

(assert (=> b!7464703 m!8064104))

(declare-fun m!8064106 () Bool)

(assert (=> b!7464692 m!8064106))

(declare-fun m!8064108 () Bool)

(assert (=> b!7464692 m!8064108))

(declare-fun m!8064110 () Bool)

(assert (=> b!7464692 m!8064110))

(declare-fun m!8064112 () Bool)

(assert (=> b!7464692 m!8064112))

(declare-fun m!8064114 () Bool)

(assert (=> b!7464692 m!8064114))

(declare-fun m!8064116 () Bool)

(assert (=> b!7464692 m!8064116))

(declare-fun m!8064118 () Bool)

(assert (=> b!7464700 m!8064118))

(declare-fun m!8064120 () Bool)

(assert (=> b!7464700 m!8064120))

(declare-fun m!8064122 () Bool)

(assert (=> b!7464700 m!8064122))

(declare-fun m!8064124 () Bool)

(assert (=> b!7464700 m!8064124))

(declare-fun m!8064126 () Bool)

(assert (=> b!7464700 m!8064126))

(assert (=> b!7464700 m!8064122))

(declare-fun m!8064128 () Bool)

(assert (=> b!7464700 m!8064128))

(assert (=> b!7464700 m!8064124))

(declare-fun m!8064130 () Bool)

(assert (=> b!7464699 m!8064130))

(declare-fun m!8064132 () Bool)

(assert (=> b!7464699 m!8064132))

(declare-fun m!8064134 () Bool)

(assert (=> b!7464699 m!8064134))

(declare-fun m!8064136 () Bool)

(assert (=> b!7464699 m!8064136))

(declare-fun m!8064138 () Bool)

(assert (=> b!7464699 m!8064138))

(declare-fun m!8064140 () Bool)

(assert (=> b!7464699 m!8064140))

(declare-fun m!8064142 () Bool)

(assert (=> b!7464701 m!8064142))

(declare-fun m!8064144 () Bool)

(assert (=> b!7464701 m!8064144))

(declare-fun m!8064146 () Bool)

(assert (=> b!7464701 m!8064146))

(declare-fun m!8064148 () Bool)

(assert (=> b!7464701 m!8064148))

(declare-fun m!8064150 () Bool)

(assert (=> b!7464701 m!8064150))

(assert (=> b!7464701 m!8064144))

(declare-fun m!8064152 () Bool)

(assert (=> b!7464701 m!8064152))

(declare-fun m!8064154 () Bool)

(assert (=> b!7464701 m!8064154))

(assert (=> b!7464701 m!8064150))

(declare-fun m!8064156 () Bool)

(assert (=> start!724032 m!8064156))

(declare-fun m!8064158 () Bool)

(assert (=> b!7464706 m!8064158))

(push 1)

(assert (not b!7464692))

(assert (not b!7464702))

(assert (not start!724032))

(assert (not b!7464700))

(assert (not b!7464698))

(assert (not b!7464710))

(assert (not b!7464697))

(assert (not b!7464709))

(assert (not b!7464696))

(assert (not b!7464703))

(assert (not b!7464704))

(assert (not b!7464701))

(assert tp_is_empty!49385)

(assert (not b!7464694))

(assert (not b!7464708))

(assert (not b!7464699))

(assert (not b!7464706))

(assert (not b!7464705))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2298420 () Bool)

(assert (=> d!2298420 (= (matchR!9312 lt!2623498 s!13591) (matchRSpec!4227 lt!2623498 s!13591))))

(declare-fun lt!2623560 () Unit!165931)

(declare-fun choose!57706 (Regex!19548 List!72264) Unit!165931)

(assert (=> d!2298420 (= lt!2623560 (choose!57706 lt!2623498 s!13591))))

(assert (=> d!2298420 (validRegex!10062 lt!2623498)))

(assert (=> d!2298420 (= (mainMatchTheorem!4221 lt!2623498 s!13591) lt!2623560)))

(declare-fun bs!1929866 () Bool)

(assert (= bs!1929866 d!2298420))

(assert (=> bs!1929866 m!8064112))

(assert (=> bs!1929866 m!8064114))

(declare-fun m!8064216 () Bool)

(assert (=> bs!1929866 m!8064216))

(declare-fun m!8064218 () Bool)

(assert (=> bs!1929866 m!8064218))

(assert (=> b!7464692 d!2298420))

(declare-fun bs!1929867 () Bool)

(declare-fun b!7464836 () Bool)

(assert (= bs!1929867 (and b!7464836 b!7464700)))

(declare-fun lambda!461962 () Int)

(assert (=> bs!1929867 (not (= lambda!461962 lambda!461938))))

(assert (=> bs!1929867 (not (= lambda!461962 lambda!461939))))

(declare-fun bs!1929868 () Bool)

(assert (= bs!1929868 (and b!7464836 b!7464701)))

(assert (=> bs!1929868 (not (= lambda!461962 lambda!461940))))

(assert (=> bs!1929868 (not (= lambda!461962 lambda!461941))))

(assert (=> b!7464836 true))

(assert (=> b!7464836 true))

(declare-fun bs!1929869 () Bool)

(declare-fun b!7464834 () Bool)

(assert (= bs!1929869 (and b!7464834 b!7464701)))

(declare-fun lambda!461963 () Int)

(assert (=> bs!1929869 (not (= lambda!461963 lambda!461940))))

(declare-fun bs!1929870 () Bool)

(assert (= bs!1929870 (and b!7464834 b!7464700)))

(assert (=> bs!1929870 (= (and (= (regOne!39608 lt!2623491) lt!2623496) (= (regTwo!39608 lt!2623491) rTail!78)) (= lambda!461963 lambda!461939))))

(declare-fun bs!1929871 () Bool)

(assert (= bs!1929871 (and b!7464834 b!7464836)))

(assert (=> bs!1929871 (not (= lambda!461963 lambda!461962))))

(assert (=> bs!1929870 (not (= lambda!461963 lambda!461938))))

(assert (=> bs!1929869 (= (and (= (regOne!39608 lt!2623491) r1!5845) (= (regTwo!39608 lt!2623491) rTail!78)) (= lambda!461963 lambda!461941))))

(assert (=> b!7464834 true))

(assert (=> b!7464834 true))

(declare-fun b!7464832 () Bool)

(declare-fun e!4454446 () Bool)

(declare-fun e!4454441 () Bool)

(assert (=> b!7464832 (= e!4454446 e!4454441)))

(declare-fun res!2994340 () Bool)

(assert (=> b!7464832 (= res!2994340 (matchRSpec!4227 (regOne!39609 lt!2623491) s!13591))))

(assert (=> b!7464832 (=> res!2994340 e!4454441)))

(declare-fun b!7464833 () Bool)

(declare-fun e!4454444 () Bool)

(declare-fun call!685665 () Bool)

(assert (=> b!7464833 (= e!4454444 call!685665)))

(declare-fun e!4454447 () Bool)

(declare-fun call!685666 () Bool)

(assert (=> b!7464834 (= e!4454447 call!685666)))

(declare-fun b!7464835 () Bool)

(assert (=> b!7464835 (= e!4454441 (matchRSpec!4227 (regTwo!39609 lt!2623491) s!13591))))

(declare-fun e!4454442 () Bool)

(assert (=> b!7464836 (= e!4454442 call!685666)))

(declare-fun b!7464837 () Bool)

(declare-fun e!4454443 () Bool)

(assert (=> b!7464837 (= e!4454443 (= s!13591 (Cons!72140 (c!1379735 lt!2623491) Nil!72140)))))

(declare-fun b!7464838 () Bool)

(declare-fun e!4454445 () Bool)

(assert (=> b!7464838 (= e!4454444 e!4454445)))

(declare-fun res!2994341 () Bool)

(assert (=> b!7464838 (= res!2994341 (not (is-EmptyLang!19548 lt!2623491)))))

(assert (=> b!7464838 (=> (not res!2994341) (not e!4454445))))

(declare-fun b!7464839 () Bool)

(declare-fun c!1379745 () Bool)

(assert (=> b!7464839 (= c!1379745 (is-ElementMatch!19548 lt!2623491))))

(assert (=> b!7464839 (= e!4454445 e!4454443)))

(declare-fun b!7464840 () Bool)

(declare-fun c!1379748 () Bool)

(assert (=> b!7464840 (= c!1379748 (is-Union!19548 lt!2623491))))

(assert (=> b!7464840 (= e!4454443 e!4454446)))

(declare-fun bm!685661 () Bool)

(declare-fun c!1379747 () Bool)

(assert (=> bm!685661 (= call!685666 (Exists!4167 (ite c!1379747 lambda!461962 lambda!461963)))))

(declare-fun b!7464841 () Bool)

(declare-fun res!2994339 () Bool)

(assert (=> b!7464841 (=> res!2994339 e!4454442)))

(assert (=> b!7464841 (= res!2994339 call!685665)))

(assert (=> b!7464841 (= e!4454447 e!4454442)))

(declare-fun b!7464842 () Bool)

(assert (=> b!7464842 (= e!4454446 e!4454447)))

(assert (=> b!7464842 (= c!1379747 (is-Star!19548 lt!2623491))))

(declare-fun bm!685660 () Bool)

(declare-fun isEmpty!41151 (List!72264) Bool)

(assert (=> bm!685660 (= call!685665 (isEmpty!41151 s!13591))))

(declare-fun d!2298422 () Bool)

(declare-fun c!1379746 () Bool)

(assert (=> d!2298422 (= c!1379746 (is-EmptyExpr!19548 lt!2623491))))

(assert (=> d!2298422 (= (matchRSpec!4227 lt!2623491 s!13591) e!4454444)))

(assert (= (and d!2298422 c!1379746) b!7464833))

(assert (= (and d!2298422 (not c!1379746)) b!7464838))

(assert (= (and b!7464838 res!2994341) b!7464839))

(assert (= (and b!7464839 c!1379745) b!7464837))

(assert (= (and b!7464839 (not c!1379745)) b!7464840))

(assert (= (and b!7464840 c!1379748) b!7464832))

(assert (= (and b!7464840 (not c!1379748)) b!7464842))

(assert (= (and b!7464832 (not res!2994340)) b!7464835))

(assert (= (and b!7464842 c!1379747) b!7464841))

(assert (= (and b!7464842 (not c!1379747)) b!7464834))

(assert (= (and b!7464841 (not res!2994339)) b!7464836))

(assert (= (or b!7464836 b!7464834) bm!685661))

(assert (= (or b!7464833 b!7464841) bm!685660))

(declare-fun m!8064220 () Bool)

(assert (=> b!7464832 m!8064220))

(declare-fun m!8064222 () Bool)

(assert (=> b!7464835 m!8064222))

(declare-fun m!8064224 () Bool)

(assert (=> bm!685661 m!8064224))

(declare-fun m!8064226 () Bool)

(assert (=> bm!685660 m!8064226))

(assert (=> b!7464692 d!2298422))

(declare-fun d!2298426 () Bool)

(declare-fun e!4454466 () Bool)

(assert (=> d!2298426 e!4454466))

(declare-fun c!1379756 () Bool)

(assert (=> d!2298426 (= c!1379756 (is-EmptyExpr!19548 lt!2623491))))

(declare-fun lt!2623563 () Bool)

(declare-fun e!4454467 () Bool)

(assert (=> d!2298426 (= lt!2623563 e!4454467)))

(declare-fun c!1379757 () Bool)

(assert (=> d!2298426 (= c!1379757 (isEmpty!41151 s!13591))))

(assert (=> d!2298426 (validRegex!10062 lt!2623491)))

(assert (=> d!2298426 (= (matchR!9312 lt!2623491 s!13591) lt!2623563)))

(declare-fun b!7464871 () Bool)

(declare-fun e!4454463 () Bool)

(assert (=> b!7464871 (= e!4454463 (not lt!2623563))))

(declare-fun b!7464872 () Bool)

(declare-fun res!2994362 () Bool)

(declare-fun e!4454462 () Bool)

(assert (=> b!7464872 (=> res!2994362 e!4454462)))

(declare-fun tail!14886 (List!72264) List!72264)

(assert (=> b!7464872 (= res!2994362 (not (isEmpty!41151 (tail!14886 s!13591))))))

(declare-fun b!7464873 () Bool)

(declare-fun derivativeStep!5577 (Regex!19548 C!39370) Regex!19548)

(declare-fun head!15317 (List!72264) C!39370)

(assert (=> b!7464873 (= e!4454467 (matchR!9312 (derivativeStep!5577 lt!2623491 (head!15317 s!13591)) (tail!14886 s!13591)))))

(declare-fun b!7464874 () Bool)

(declare-fun res!2994359 () Bool)

(declare-fun e!4454465 () Bool)

(assert (=> b!7464874 (=> res!2994359 e!4454465)))

(assert (=> b!7464874 (= res!2994359 (not (is-ElementMatch!19548 lt!2623491)))))

(assert (=> b!7464874 (= e!4454463 e!4454465)))

(declare-fun b!7464875 () Bool)

(declare-fun res!2994361 () Bool)

(declare-fun e!4454468 () Bool)

(assert (=> b!7464875 (=> (not res!2994361) (not e!4454468))))

(declare-fun call!685669 () Bool)

(assert (=> b!7464875 (= res!2994361 (not call!685669))))

(declare-fun b!7464876 () Bool)

(declare-fun res!2994364 () Bool)

(assert (=> b!7464876 (=> res!2994364 e!4454465)))

(assert (=> b!7464876 (= res!2994364 e!4454468)))

(declare-fun res!2994365 () Bool)

(assert (=> b!7464876 (=> (not res!2994365) (not e!4454468))))

(assert (=> b!7464876 (= res!2994365 lt!2623563)))

(declare-fun b!7464877 () Bool)

(assert (=> b!7464877 (= e!4454462 (not (= (head!15317 s!13591) (c!1379735 lt!2623491))))))

(declare-fun b!7464878 () Bool)

(assert (=> b!7464878 (= e!4454468 (= (head!15317 s!13591) (c!1379735 lt!2623491)))))

(declare-fun b!7464879 () Bool)

(declare-fun e!4454464 () Bool)

(assert (=> b!7464879 (= e!4454465 e!4454464)))

(declare-fun res!2994360 () Bool)

(assert (=> b!7464879 (=> (not res!2994360) (not e!4454464))))

(assert (=> b!7464879 (= res!2994360 (not lt!2623563))))

(declare-fun b!7464880 () Bool)

(assert (=> b!7464880 (= e!4454464 e!4454462)))

(declare-fun res!2994363 () Bool)

(assert (=> b!7464880 (=> res!2994363 e!4454462)))

(assert (=> b!7464880 (= res!2994363 call!685669)))

(declare-fun b!7464881 () Bool)

(assert (=> b!7464881 (= e!4454466 e!4454463)))

(declare-fun c!1379755 () Bool)

(assert (=> b!7464881 (= c!1379755 (is-EmptyLang!19548 lt!2623491))))

(declare-fun b!7464882 () Bool)

(declare-fun res!2994358 () Bool)

(assert (=> b!7464882 (=> (not res!2994358) (not e!4454468))))

(assert (=> b!7464882 (= res!2994358 (isEmpty!41151 (tail!14886 s!13591)))))

(declare-fun b!7464883 () Bool)

(assert (=> b!7464883 (= e!4454466 (= lt!2623563 call!685669))))

(declare-fun b!7464884 () Bool)

(declare-fun nullable!8518 (Regex!19548) Bool)

(assert (=> b!7464884 (= e!4454467 (nullable!8518 lt!2623491))))

(declare-fun bm!685664 () Bool)

(assert (=> bm!685664 (= call!685669 (isEmpty!41151 s!13591))))

(assert (= (and d!2298426 c!1379757) b!7464884))

(assert (= (and d!2298426 (not c!1379757)) b!7464873))

(assert (= (and d!2298426 c!1379756) b!7464883))

(assert (= (and d!2298426 (not c!1379756)) b!7464881))

(assert (= (and b!7464881 c!1379755) b!7464871))

(assert (= (and b!7464881 (not c!1379755)) b!7464874))

(assert (= (and b!7464874 (not res!2994359)) b!7464876))

(assert (= (and b!7464876 res!2994365) b!7464875))

(assert (= (and b!7464875 res!2994361) b!7464882))

(assert (= (and b!7464882 res!2994358) b!7464878))

(assert (= (and b!7464876 (not res!2994364)) b!7464879))

(assert (= (and b!7464879 res!2994360) b!7464880))

(assert (= (and b!7464880 (not res!2994363)) b!7464872))

(assert (= (and b!7464872 (not res!2994362)) b!7464877))

(assert (= (or b!7464883 b!7464875 b!7464880) bm!685664))

(declare-fun m!8064228 () Bool)

(assert (=> b!7464882 m!8064228))

(assert (=> b!7464882 m!8064228))

(declare-fun m!8064230 () Bool)

(assert (=> b!7464882 m!8064230))

(assert (=> bm!685664 m!8064226))

(assert (=> d!2298426 m!8064226))

(declare-fun m!8064232 () Bool)

(assert (=> d!2298426 m!8064232))

(declare-fun m!8064234 () Bool)

(assert (=> b!7464873 m!8064234))

(assert (=> b!7464873 m!8064234))

(declare-fun m!8064236 () Bool)

(assert (=> b!7464873 m!8064236))

(assert (=> b!7464873 m!8064228))

(assert (=> b!7464873 m!8064236))

(assert (=> b!7464873 m!8064228))

(declare-fun m!8064238 () Bool)

(assert (=> b!7464873 m!8064238))

(declare-fun m!8064240 () Bool)

(assert (=> b!7464884 m!8064240))

(assert (=> b!7464877 m!8064234))

(assert (=> b!7464872 m!8064228))

(assert (=> b!7464872 m!8064228))

(assert (=> b!7464872 m!8064230))

(assert (=> b!7464878 m!8064234))

(assert (=> b!7464692 d!2298426))

(declare-fun d!2298428 () Bool)

(declare-fun e!4454473 () Bool)

(assert (=> d!2298428 e!4454473))

(declare-fun c!1379759 () Bool)

(assert (=> d!2298428 (= c!1379759 (is-EmptyExpr!19548 lt!2623498))))

(declare-fun lt!2623564 () Bool)

(declare-fun e!4454474 () Bool)

(assert (=> d!2298428 (= lt!2623564 e!4454474)))

(declare-fun c!1379760 () Bool)

(assert (=> d!2298428 (= c!1379760 (isEmpty!41151 s!13591))))

(assert (=> d!2298428 (validRegex!10062 lt!2623498)))

(assert (=> d!2298428 (= (matchR!9312 lt!2623498 s!13591) lt!2623564)))

(declare-fun b!7464885 () Bool)

(declare-fun e!4454470 () Bool)

(assert (=> b!7464885 (= e!4454470 (not lt!2623564))))

(declare-fun b!7464886 () Bool)

(declare-fun res!2994370 () Bool)

(declare-fun e!4454469 () Bool)

(assert (=> b!7464886 (=> res!2994370 e!4454469)))

(assert (=> b!7464886 (= res!2994370 (not (isEmpty!41151 (tail!14886 s!13591))))))

(declare-fun b!7464887 () Bool)

(assert (=> b!7464887 (= e!4454474 (matchR!9312 (derivativeStep!5577 lt!2623498 (head!15317 s!13591)) (tail!14886 s!13591)))))

(declare-fun b!7464888 () Bool)

(declare-fun res!2994367 () Bool)

(declare-fun e!4454472 () Bool)

(assert (=> b!7464888 (=> res!2994367 e!4454472)))

(assert (=> b!7464888 (= res!2994367 (not (is-ElementMatch!19548 lt!2623498)))))

(assert (=> b!7464888 (= e!4454470 e!4454472)))

(declare-fun b!7464889 () Bool)

(declare-fun res!2994369 () Bool)

(declare-fun e!4454475 () Bool)

(assert (=> b!7464889 (=> (not res!2994369) (not e!4454475))))

(declare-fun call!685670 () Bool)

(assert (=> b!7464889 (= res!2994369 (not call!685670))))

(declare-fun b!7464890 () Bool)

(declare-fun res!2994372 () Bool)

(assert (=> b!7464890 (=> res!2994372 e!4454472)))

(assert (=> b!7464890 (= res!2994372 e!4454475)))

(declare-fun res!2994373 () Bool)

(assert (=> b!7464890 (=> (not res!2994373) (not e!4454475))))

(assert (=> b!7464890 (= res!2994373 lt!2623564)))

(declare-fun b!7464891 () Bool)

(assert (=> b!7464891 (= e!4454469 (not (= (head!15317 s!13591) (c!1379735 lt!2623498))))))

(declare-fun b!7464892 () Bool)

(assert (=> b!7464892 (= e!4454475 (= (head!15317 s!13591) (c!1379735 lt!2623498)))))

(declare-fun b!7464893 () Bool)

(declare-fun e!4454471 () Bool)

(assert (=> b!7464893 (= e!4454472 e!4454471)))

(declare-fun res!2994368 () Bool)

(assert (=> b!7464893 (=> (not res!2994368) (not e!4454471))))

(assert (=> b!7464893 (= res!2994368 (not lt!2623564))))

(declare-fun b!7464894 () Bool)

(assert (=> b!7464894 (= e!4454471 e!4454469)))

(declare-fun res!2994371 () Bool)

(assert (=> b!7464894 (=> res!2994371 e!4454469)))

(assert (=> b!7464894 (= res!2994371 call!685670)))

(declare-fun b!7464895 () Bool)

(assert (=> b!7464895 (= e!4454473 e!4454470)))

(declare-fun c!1379758 () Bool)

(assert (=> b!7464895 (= c!1379758 (is-EmptyLang!19548 lt!2623498))))

(declare-fun b!7464896 () Bool)

(declare-fun res!2994366 () Bool)

(assert (=> b!7464896 (=> (not res!2994366) (not e!4454475))))

(assert (=> b!7464896 (= res!2994366 (isEmpty!41151 (tail!14886 s!13591)))))

(declare-fun b!7464897 () Bool)

(assert (=> b!7464897 (= e!4454473 (= lt!2623564 call!685670))))

(declare-fun b!7464898 () Bool)

(assert (=> b!7464898 (= e!4454474 (nullable!8518 lt!2623498))))

(declare-fun bm!685665 () Bool)

(assert (=> bm!685665 (= call!685670 (isEmpty!41151 s!13591))))

(assert (= (and d!2298428 c!1379760) b!7464898))

(assert (= (and d!2298428 (not c!1379760)) b!7464887))

(assert (= (and d!2298428 c!1379759) b!7464897))

(assert (= (and d!2298428 (not c!1379759)) b!7464895))

(assert (= (and b!7464895 c!1379758) b!7464885))

(assert (= (and b!7464895 (not c!1379758)) b!7464888))

(assert (= (and b!7464888 (not res!2994367)) b!7464890))

(assert (= (and b!7464890 res!2994373) b!7464889))

(assert (= (and b!7464889 res!2994369) b!7464896))

(assert (= (and b!7464896 res!2994366) b!7464892))

(assert (= (and b!7464890 (not res!2994372)) b!7464893))

(assert (= (and b!7464893 res!2994368) b!7464894))

(assert (= (and b!7464894 (not res!2994371)) b!7464886))

(assert (= (and b!7464886 (not res!2994370)) b!7464891))

(assert (= (or b!7464897 b!7464889 b!7464894) bm!685665))

(assert (=> b!7464896 m!8064228))

(assert (=> b!7464896 m!8064228))

(assert (=> b!7464896 m!8064230))

(assert (=> bm!685665 m!8064226))

(assert (=> d!2298428 m!8064226))

(assert (=> d!2298428 m!8064218))

(assert (=> b!7464887 m!8064234))

(assert (=> b!7464887 m!8064234))

(declare-fun m!8064242 () Bool)

(assert (=> b!7464887 m!8064242))

(assert (=> b!7464887 m!8064228))

(assert (=> b!7464887 m!8064242))

(assert (=> b!7464887 m!8064228))

(declare-fun m!8064244 () Bool)

(assert (=> b!7464887 m!8064244))

(declare-fun m!8064246 () Bool)

(assert (=> b!7464898 m!8064246))

(assert (=> b!7464891 m!8064234))

(assert (=> b!7464886 m!8064228))

(assert (=> b!7464886 m!8064228))

(assert (=> b!7464886 m!8064230))

(assert (=> b!7464892 m!8064234))

(assert (=> b!7464692 d!2298428))

(declare-fun bs!1929872 () Bool)

(declare-fun b!7464907 () Bool)

(assert (= bs!1929872 (and b!7464907 b!7464701)))

(declare-fun lambda!461964 () Int)

(assert (=> bs!1929872 (not (= lambda!461964 lambda!461940))))

(declare-fun bs!1929873 () Bool)

(assert (= bs!1929873 (and b!7464907 b!7464700)))

(assert (=> bs!1929873 (not (= lambda!461964 lambda!461939))))

(declare-fun bs!1929874 () Bool)

(assert (= bs!1929874 (and b!7464907 b!7464834)))

(assert (=> bs!1929874 (not (= lambda!461964 lambda!461963))))

(declare-fun bs!1929875 () Bool)

(assert (= bs!1929875 (and b!7464907 b!7464836)))

(assert (=> bs!1929875 (= (and (= (reg!19877 lt!2623498) (reg!19877 lt!2623491)) (= lt!2623498 lt!2623491)) (= lambda!461964 lambda!461962))))

(assert (=> bs!1929873 (not (= lambda!461964 lambda!461938))))

(assert (=> bs!1929872 (not (= lambda!461964 lambda!461941))))

(assert (=> b!7464907 true))

(assert (=> b!7464907 true))

(declare-fun bs!1929876 () Bool)

(declare-fun b!7464905 () Bool)

(assert (= bs!1929876 (and b!7464905 b!7464907)))

(declare-fun lambda!461965 () Int)

(assert (=> bs!1929876 (not (= lambda!461965 lambda!461964))))

(declare-fun bs!1929877 () Bool)

(assert (= bs!1929877 (and b!7464905 b!7464701)))

(assert (=> bs!1929877 (not (= lambda!461965 lambda!461940))))

(declare-fun bs!1929878 () Bool)

(assert (= bs!1929878 (and b!7464905 b!7464700)))

(assert (=> bs!1929878 (= (and (= (regOne!39608 lt!2623498) lt!2623496) (= (regTwo!39608 lt!2623498) rTail!78)) (= lambda!461965 lambda!461939))))

(declare-fun bs!1929879 () Bool)

(assert (= bs!1929879 (and b!7464905 b!7464834)))

(assert (=> bs!1929879 (= (and (= (regOne!39608 lt!2623498) (regOne!39608 lt!2623491)) (= (regTwo!39608 lt!2623498) (regTwo!39608 lt!2623491))) (= lambda!461965 lambda!461963))))

(declare-fun bs!1929880 () Bool)

(assert (= bs!1929880 (and b!7464905 b!7464836)))

(assert (=> bs!1929880 (not (= lambda!461965 lambda!461962))))

(assert (=> bs!1929878 (not (= lambda!461965 lambda!461938))))

(assert (=> bs!1929877 (= (and (= (regOne!39608 lt!2623498) r1!5845) (= (regTwo!39608 lt!2623498) rTail!78)) (= lambda!461965 lambda!461941))))

(assert (=> b!7464905 true))

(assert (=> b!7464905 true))

(declare-fun b!7464903 () Bool)

(declare-fun e!4454483 () Bool)

(declare-fun e!4454478 () Bool)

(assert (=> b!7464903 (= e!4454483 e!4454478)))

(declare-fun res!2994375 () Bool)

(assert (=> b!7464903 (= res!2994375 (matchRSpec!4227 (regOne!39609 lt!2623498) s!13591))))

(assert (=> b!7464903 (=> res!2994375 e!4454478)))

(declare-fun b!7464904 () Bool)

(declare-fun e!4454481 () Bool)

(declare-fun call!685671 () Bool)

(assert (=> b!7464904 (= e!4454481 call!685671)))

(declare-fun e!4454484 () Bool)

(declare-fun call!685672 () Bool)

(assert (=> b!7464905 (= e!4454484 call!685672)))

(declare-fun b!7464906 () Bool)

(assert (=> b!7464906 (= e!4454478 (matchRSpec!4227 (regTwo!39609 lt!2623498) s!13591))))

(declare-fun e!4454479 () Bool)

(assert (=> b!7464907 (= e!4454479 call!685672)))

(declare-fun b!7464908 () Bool)

(declare-fun e!4454480 () Bool)

(assert (=> b!7464908 (= e!4454480 (= s!13591 (Cons!72140 (c!1379735 lt!2623498) Nil!72140)))))

(declare-fun b!7464909 () Bool)

(declare-fun e!4454482 () Bool)

(assert (=> b!7464909 (= e!4454481 e!4454482)))

(declare-fun res!2994376 () Bool)

(assert (=> b!7464909 (= res!2994376 (not (is-EmptyLang!19548 lt!2623498)))))

(assert (=> b!7464909 (=> (not res!2994376) (not e!4454482))))

(declare-fun b!7464910 () Bool)

(declare-fun c!1379763 () Bool)

(assert (=> b!7464910 (= c!1379763 (is-ElementMatch!19548 lt!2623498))))

(assert (=> b!7464910 (= e!4454482 e!4454480)))

(declare-fun b!7464911 () Bool)

(declare-fun c!1379766 () Bool)

(assert (=> b!7464911 (= c!1379766 (is-Union!19548 lt!2623498))))

(assert (=> b!7464911 (= e!4454480 e!4454483)))

(declare-fun bm!685667 () Bool)

(declare-fun c!1379765 () Bool)

(assert (=> bm!685667 (= call!685672 (Exists!4167 (ite c!1379765 lambda!461964 lambda!461965)))))

(declare-fun b!7464912 () Bool)

(declare-fun res!2994374 () Bool)

(assert (=> b!7464912 (=> res!2994374 e!4454479)))

(assert (=> b!7464912 (= res!2994374 call!685671)))

(assert (=> b!7464912 (= e!4454484 e!4454479)))

(declare-fun b!7464913 () Bool)

(assert (=> b!7464913 (= e!4454483 e!4454484)))

(assert (=> b!7464913 (= c!1379765 (is-Star!19548 lt!2623498))))

(declare-fun bm!685666 () Bool)

(assert (=> bm!685666 (= call!685671 (isEmpty!41151 s!13591))))

(declare-fun d!2298430 () Bool)

(declare-fun c!1379764 () Bool)

(assert (=> d!2298430 (= c!1379764 (is-EmptyExpr!19548 lt!2623498))))

(assert (=> d!2298430 (= (matchRSpec!4227 lt!2623498 s!13591) e!4454481)))

(assert (= (and d!2298430 c!1379764) b!7464904))

(assert (= (and d!2298430 (not c!1379764)) b!7464909))

(assert (= (and b!7464909 res!2994376) b!7464910))

(assert (= (and b!7464910 c!1379763) b!7464908))

(assert (= (and b!7464910 (not c!1379763)) b!7464911))

(assert (= (and b!7464911 c!1379766) b!7464903))

(assert (= (and b!7464911 (not c!1379766)) b!7464913))

(assert (= (and b!7464903 (not res!2994375)) b!7464906))

(assert (= (and b!7464913 c!1379765) b!7464912))

(assert (= (and b!7464913 (not c!1379765)) b!7464905))

(assert (= (and b!7464912 (not res!2994374)) b!7464907))

(assert (= (or b!7464907 b!7464905) bm!685667))

(assert (= (or b!7464904 b!7464912) bm!685666))

(declare-fun m!8064248 () Bool)

(assert (=> b!7464903 m!8064248))

(declare-fun m!8064250 () Bool)

(assert (=> b!7464906 m!8064250))

(declare-fun m!8064252 () Bool)

(assert (=> bm!685667 m!8064252))

(assert (=> bm!685666 m!8064226))

(assert (=> b!7464692 d!2298430))

(declare-fun d!2298432 () Bool)

(assert (=> d!2298432 (= (matchR!9312 lt!2623491 s!13591) (matchRSpec!4227 lt!2623491 s!13591))))

(declare-fun lt!2623567 () Unit!165931)

(assert (=> d!2298432 (= lt!2623567 (choose!57706 lt!2623491 s!13591))))

(assert (=> d!2298432 (validRegex!10062 lt!2623491)))

(assert (=> d!2298432 (= (mainMatchTheorem!4221 lt!2623491 s!13591) lt!2623567)))

(declare-fun bs!1929881 () Bool)

(assert (= bs!1929881 d!2298432))

(assert (=> bs!1929881 m!8064106))

(assert (=> bs!1929881 m!8064110))

(declare-fun m!8064254 () Bool)

(assert (=> bs!1929881 m!8064254))

(assert (=> bs!1929881 m!8064232))

(assert (=> b!7464692 d!2298432))

(declare-fun b!7464956 () Bool)

(declare-fun e!4454514 () Bool)

(declare-fun e!4454515 () Bool)

(assert (=> b!7464956 (= e!4454514 e!4454515)))

(declare-fun c!1379776 () Bool)

(assert (=> b!7464956 (= c!1379776 (is-Star!19548 rTail!78))))

(declare-fun b!7464957 () Bool)

(declare-fun res!2994403 () Bool)

(declare-fun e!4454512 () Bool)

(assert (=> b!7464957 (=> (not res!2994403) (not e!4454512))))

(declare-fun call!685681 () Bool)

(assert (=> b!7464957 (= res!2994403 call!685681)))

(declare-fun e!4454513 () Bool)

(assert (=> b!7464957 (= e!4454513 e!4454512)))

(declare-fun d!2298434 () Bool)

(declare-fun res!2994405 () Bool)

(assert (=> d!2298434 (=> res!2994405 e!4454514)))

(assert (=> d!2298434 (= res!2994405 (is-ElementMatch!19548 rTail!78))))

(assert (=> d!2298434 (= (validRegex!10062 rTail!78) e!4454514)))

(declare-fun b!7464958 () Bool)

(declare-fun res!2994406 () Bool)

(declare-fun e!4454517 () Bool)

(assert (=> b!7464958 (=> res!2994406 e!4454517)))

(assert (=> b!7464958 (= res!2994406 (not (is-Concat!28393 rTail!78)))))

(assert (=> b!7464958 (= e!4454513 e!4454517)))

(declare-fun b!7464959 () Bool)

(declare-fun call!685683 () Bool)

(assert (=> b!7464959 (= e!4454512 call!685683)))

(declare-fun bm!685676 () Bool)

(declare-fun c!1379775 () Bool)

(assert (=> bm!685676 (= call!685681 (validRegex!10062 (ite c!1379775 (regOne!39609 rTail!78) (regOne!39608 rTail!78))))))

(declare-fun bm!685677 () Bool)

(declare-fun call!685682 () Bool)

(assert (=> bm!685677 (= call!685682 (validRegex!10062 (ite c!1379776 (reg!19877 rTail!78) (ite c!1379775 (regTwo!39609 rTail!78) (regTwo!39608 rTail!78)))))))

(declare-fun b!7464960 () Bool)

(declare-fun e!4454516 () Bool)

(assert (=> b!7464960 (= e!4454516 call!685683)))

(declare-fun b!7464961 () Bool)

(declare-fun e!4454511 () Bool)

(assert (=> b!7464961 (= e!4454515 e!4454511)))

(declare-fun res!2994407 () Bool)

(assert (=> b!7464961 (= res!2994407 (not (nullable!8518 (reg!19877 rTail!78))))))

(assert (=> b!7464961 (=> (not res!2994407) (not e!4454511))))

(declare-fun b!7464962 () Bool)

(assert (=> b!7464962 (= e!4454511 call!685682)))

(declare-fun b!7464963 () Bool)

(assert (=> b!7464963 (= e!4454515 e!4454513)))

(assert (=> b!7464963 (= c!1379775 (is-Union!19548 rTail!78))))

(declare-fun bm!685678 () Bool)

(assert (=> bm!685678 (= call!685683 call!685682)))

(declare-fun b!7464964 () Bool)

(assert (=> b!7464964 (= e!4454517 e!4454516)))

(declare-fun res!2994404 () Bool)

(assert (=> b!7464964 (=> (not res!2994404) (not e!4454516))))

(assert (=> b!7464964 (= res!2994404 call!685681)))

(assert (= (and d!2298434 (not res!2994405)) b!7464956))

(assert (= (and b!7464956 c!1379776) b!7464961))

(assert (= (and b!7464956 (not c!1379776)) b!7464963))

(assert (= (and b!7464961 res!2994407) b!7464962))

(assert (= (and b!7464963 c!1379775) b!7464957))

(assert (= (and b!7464963 (not c!1379775)) b!7464958))

(assert (= (and b!7464957 res!2994403) b!7464959))

(assert (= (and b!7464958 (not res!2994406)) b!7464964))

(assert (= (and b!7464964 res!2994404) b!7464960))

(assert (= (or b!7464959 b!7464960) bm!685678))

(assert (= (or b!7464957 b!7464964) bm!685676))

(assert (= (or b!7464962 bm!685678) bm!685677))

(declare-fun m!8064256 () Bool)

(assert (=> bm!685676 m!8064256))

(declare-fun m!8064258 () Bool)

(assert (=> bm!685677 m!8064258))

(declare-fun m!8064260 () Bool)

(assert (=> b!7464961 m!8064260))

(assert (=> b!7464703 d!2298434))

(declare-fun d!2298436 () Bool)

(declare-fun choose!57707 (Int) Bool)

(assert (=> d!2298436 (= (Exists!4167 lambda!461939) (choose!57707 lambda!461939))))

(declare-fun bs!1929882 () Bool)

(assert (= bs!1929882 d!2298436))

(declare-fun m!8064262 () Bool)

(assert (=> bs!1929882 m!8064262))

(assert (=> b!7464700 d!2298436))

(declare-fun d!2298438 () Bool)

(assert (=> d!2298438 (= (Exists!4167 lambda!461938) (choose!57707 lambda!461938))))

(declare-fun bs!1929883 () Bool)

(assert (= bs!1929883 d!2298438))

(declare-fun m!8064264 () Bool)

(assert (=> bs!1929883 m!8064264))

(assert (=> b!7464700 d!2298438))

(declare-fun d!2298440 () Bool)

(declare-fun isEmpty!41152 (Option!17105) Bool)

(assert (=> d!2298440 (= (isDefined!13794 (findConcatSeparation!3227 lt!2623496 rTail!78 Nil!72140 s!13591 s!13591)) (not (isEmpty!41152 (findConcatSeparation!3227 lt!2623496 rTail!78 Nil!72140 s!13591 s!13591))))))

(declare-fun bs!1929884 () Bool)

(assert (= bs!1929884 d!2298440))

(assert (=> bs!1929884 m!8064122))

(declare-fun m!8064266 () Bool)

(assert (=> bs!1929884 m!8064266))

(assert (=> b!7464700 d!2298440))

(declare-fun b!7464998 () Bool)

(declare-fun e!4454537 () Option!17105)

(assert (=> b!7464998 (= e!4454537 None!17104)))

(declare-fun b!7464999 () Bool)

(declare-fun e!4454536 () Bool)

(declare-fun lt!2623579 () Option!17105)

(assert (=> b!7464999 (= e!4454536 (not (isDefined!13794 lt!2623579)))))

(declare-fun b!7465000 () Bool)

(declare-fun e!4454535 () Option!17105)

(assert (=> b!7465000 (= e!4454535 (Some!17104 (tuple2!68547 Nil!72140 s!13591)))))

(declare-fun b!7465001 () Bool)

(assert (=> b!7465001 (= e!4454535 e!4454537)))

(declare-fun c!1379784 () Bool)

(assert (=> b!7465001 (= c!1379784 (is-Nil!72140 s!13591))))

(declare-fun b!7465002 () Bool)

(declare-fun lt!2623578 () Unit!165931)

(declare-fun lt!2623580 () Unit!165931)

(assert (=> b!7465002 (= lt!2623578 lt!2623580)))

(assert (=> b!7465002 (= (++!17190 (++!17190 Nil!72140 (Cons!72140 (h!78588 s!13591) Nil!72140)) (t!386833 s!13591)) s!13591)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3070 (List!72264 C!39370 List!72264 List!72264) Unit!165931)

(assert (=> b!7465002 (= lt!2623580 (lemmaMoveElementToOtherListKeepsConcatEq!3070 Nil!72140 (h!78588 s!13591) (t!386833 s!13591) s!13591))))

(assert (=> b!7465002 (= e!4454537 (findConcatSeparation!3227 lt!2623496 rTail!78 (++!17190 Nil!72140 (Cons!72140 (h!78588 s!13591) Nil!72140)) (t!386833 s!13591) s!13591))))

(declare-fun b!7465003 () Bool)

(declare-fun res!2994426 () Bool)

(declare-fun e!4454538 () Bool)

(assert (=> b!7465003 (=> (not res!2994426) (not e!4454538))))

(declare-fun get!25190 (Option!17105) tuple2!68546)

(assert (=> b!7465003 (= res!2994426 (matchR!9312 rTail!78 (_2!37576 (get!25190 lt!2623579))))))

(declare-fun d!2298442 () Bool)

(assert (=> d!2298442 e!4454536))

(declare-fun res!2994427 () Bool)

(assert (=> d!2298442 (=> res!2994427 e!4454536)))

(assert (=> d!2298442 (= res!2994427 e!4454538)))

(declare-fun res!2994428 () Bool)

(assert (=> d!2298442 (=> (not res!2994428) (not e!4454538))))

(assert (=> d!2298442 (= res!2994428 (isDefined!13794 lt!2623579))))

(assert (=> d!2298442 (= lt!2623579 e!4454535)))

(declare-fun c!1379785 () Bool)

(declare-fun e!4454539 () Bool)

(assert (=> d!2298442 (= c!1379785 e!4454539)))

(declare-fun res!2994430 () Bool)

(assert (=> d!2298442 (=> (not res!2994430) (not e!4454539))))

(assert (=> d!2298442 (= res!2994430 (matchR!9312 lt!2623496 Nil!72140))))

(assert (=> d!2298442 (validRegex!10062 lt!2623496)))

(assert (=> d!2298442 (= (findConcatSeparation!3227 lt!2623496 rTail!78 Nil!72140 s!13591 s!13591) lt!2623579)))

(declare-fun b!7464997 () Bool)

(assert (=> b!7464997 (= e!4454539 (matchR!9312 rTail!78 s!13591))))

(declare-fun b!7465004 () Bool)

(assert (=> b!7465004 (= e!4454538 (= (++!17190 (_1!37576 (get!25190 lt!2623579)) (_2!37576 (get!25190 lt!2623579))) s!13591))))

(declare-fun b!7465005 () Bool)

(declare-fun res!2994429 () Bool)

(assert (=> b!7465005 (=> (not res!2994429) (not e!4454538))))

(assert (=> b!7465005 (= res!2994429 (matchR!9312 lt!2623496 (_1!37576 (get!25190 lt!2623579))))))

(assert (= (and d!2298442 res!2994430) b!7464997))

(assert (= (and d!2298442 c!1379785) b!7465000))

(assert (= (and d!2298442 (not c!1379785)) b!7465001))

(assert (= (and b!7465001 c!1379784) b!7464998))

(assert (= (and b!7465001 (not c!1379784)) b!7465002))

(assert (= (and d!2298442 res!2994428) b!7465005))

(assert (= (and b!7465005 res!2994429) b!7465003))

(assert (= (and b!7465003 res!2994426) b!7465004))

(assert (= (and d!2298442 (not res!2994427)) b!7464999))

(declare-fun m!8064286 () Bool)

(assert (=> b!7465005 m!8064286))

(declare-fun m!8064288 () Bool)

(assert (=> b!7465005 m!8064288))

(assert (=> b!7465003 m!8064286))

(declare-fun m!8064290 () Bool)

(assert (=> b!7465003 m!8064290))

(declare-fun m!8064292 () Bool)

(assert (=> b!7464999 m!8064292))

(declare-fun m!8064294 () Bool)

(assert (=> b!7464997 m!8064294))

(assert (=> d!2298442 m!8064292))

(declare-fun m!8064296 () Bool)

(assert (=> d!2298442 m!8064296))

(declare-fun m!8064298 () Bool)

(assert (=> d!2298442 m!8064298))

(declare-fun m!8064300 () Bool)

(assert (=> b!7465002 m!8064300))

(assert (=> b!7465002 m!8064300))

(declare-fun m!8064302 () Bool)

(assert (=> b!7465002 m!8064302))

(declare-fun m!8064304 () Bool)

(assert (=> b!7465002 m!8064304))

(assert (=> b!7465002 m!8064300))

(declare-fun m!8064306 () Bool)

(assert (=> b!7465002 m!8064306))

(assert (=> b!7465004 m!8064286))

(declare-fun m!8064308 () Bool)

(assert (=> b!7465004 m!8064308))

(assert (=> b!7464700 d!2298442))

(declare-fun bs!1929886 () Bool)

(declare-fun d!2298448 () Bool)

(assert (= bs!1929886 (and d!2298448 b!7464907)))

(declare-fun lambda!461968 () Int)

(assert (=> bs!1929886 (not (= lambda!461968 lambda!461964))))

(declare-fun bs!1929887 () Bool)

(assert (= bs!1929887 (and d!2298448 b!7464701)))

(assert (=> bs!1929887 (= (= lt!2623496 r1!5845) (= lambda!461968 lambda!461940))))

(declare-fun bs!1929888 () Bool)

(assert (= bs!1929888 (and d!2298448 b!7464700)))

(assert (=> bs!1929888 (not (= lambda!461968 lambda!461939))))

(declare-fun bs!1929889 () Bool)

(assert (= bs!1929889 (and d!2298448 b!7464905)))

(assert (=> bs!1929889 (not (= lambda!461968 lambda!461965))))

(declare-fun bs!1929890 () Bool)

(assert (= bs!1929890 (and d!2298448 b!7464834)))

(assert (=> bs!1929890 (not (= lambda!461968 lambda!461963))))

(declare-fun bs!1929891 () Bool)

(assert (= bs!1929891 (and d!2298448 b!7464836)))

(assert (=> bs!1929891 (not (= lambda!461968 lambda!461962))))

(assert (=> bs!1929888 (= lambda!461968 lambda!461938)))

(assert (=> bs!1929887 (not (= lambda!461968 lambda!461941))))

(assert (=> d!2298448 true))

(assert (=> d!2298448 true))

(assert (=> d!2298448 true))

(assert (=> d!2298448 (= (isDefined!13794 (findConcatSeparation!3227 lt!2623496 rTail!78 Nil!72140 s!13591 s!13591)) (Exists!4167 lambda!461968))))

(declare-fun lt!2623583 () Unit!165931)

(declare-fun choose!57708 (Regex!19548 Regex!19548 List!72264) Unit!165931)

(assert (=> d!2298448 (= lt!2623583 (choose!57708 lt!2623496 rTail!78 s!13591))))

(assert (=> d!2298448 (validRegex!10062 lt!2623496)))

(assert (=> d!2298448 (= (lemmaFindConcatSeparationEquivalentToExists!2985 lt!2623496 rTail!78 s!13591) lt!2623583)))

(declare-fun bs!1929892 () Bool)

(assert (= bs!1929892 d!2298448))

(assert (=> bs!1929892 m!8064122))

(assert (=> bs!1929892 m!8064122))

(assert (=> bs!1929892 m!8064128))

(declare-fun m!8064310 () Bool)

(assert (=> bs!1929892 m!8064310))

(declare-fun m!8064312 () Bool)

(assert (=> bs!1929892 m!8064312))

(assert (=> bs!1929892 m!8064298))

(assert (=> b!7464700 d!2298448))

(declare-fun bs!1929893 () Bool)

(declare-fun d!2298450 () Bool)

(assert (= bs!1929893 (and d!2298450 b!7464907)))

(declare-fun lambda!461977 () Int)

(assert (=> bs!1929893 (not (= lambda!461977 lambda!461964))))

(declare-fun bs!1929894 () Bool)

(assert (= bs!1929894 (and d!2298450 d!2298448)))

(assert (=> bs!1929894 (= lambda!461977 lambda!461968)))

(declare-fun bs!1929895 () Bool)

(assert (= bs!1929895 (and d!2298450 b!7464701)))

(assert (=> bs!1929895 (= (= lt!2623496 r1!5845) (= lambda!461977 lambda!461940))))

(declare-fun bs!1929896 () Bool)

(assert (= bs!1929896 (and d!2298450 b!7464700)))

(assert (=> bs!1929896 (not (= lambda!461977 lambda!461939))))

(declare-fun bs!1929897 () Bool)

(assert (= bs!1929897 (and d!2298450 b!7464905)))

(assert (=> bs!1929897 (not (= lambda!461977 lambda!461965))))

(declare-fun bs!1929898 () Bool)

(assert (= bs!1929898 (and d!2298450 b!7464834)))

(assert (=> bs!1929898 (not (= lambda!461977 lambda!461963))))

(declare-fun bs!1929899 () Bool)

(assert (= bs!1929899 (and d!2298450 b!7464836)))

(assert (=> bs!1929899 (not (= lambda!461977 lambda!461962))))

(assert (=> bs!1929896 (= lambda!461977 lambda!461938)))

(assert (=> bs!1929895 (not (= lambda!461977 lambda!461941))))

(assert (=> d!2298450 true))

(assert (=> d!2298450 true))

(assert (=> d!2298450 true))

(declare-fun lambda!461978 () Int)

(assert (=> bs!1929893 (not (= lambda!461978 lambda!461964))))

(assert (=> bs!1929894 (not (= lambda!461978 lambda!461968))))

(assert (=> bs!1929895 (not (= lambda!461978 lambda!461940))))

(assert (=> bs!1929896 (= lambda!461978 lambda!461939)))

(declare-fun bs!1929900 () Bool)

(assert (= bs!1929900 d!2298450))

(assert (=> bs!1929900 (not (= lambda!461978 lambda!461977))))

(assert (=> bs!1929897 (= (and (= lt!2623496 (regOne!39608 lt!2623498)) (= rTail!78 (regTwo!39608 lt!2623498))) (= lambda!461978 lambda!461965))))

(assert (=> bs!1929898 (= (and (= lt!2623496 (regOne!39608 lt!2623491)) (= rTail!78 (regTwo!39608 lt!2623491))) (= lambda!461978 lambda!461963))))

(assert (=> bs!1929899 (not (= lambda!461978 lambda!461962))))

(assert (=> bs!1929896 (not (= lambda!461978 lambda!461938))))

(assert (=> bs!1929895 (= (= lt!2623496 r1!5845) (= lambda!461978 lambda!461941))))

(assert (=> d!2298450 true))

(assert (=> d!2298450 true))

(assert (=> d!2298450 true))

(assert (=> d!2298450 (= (Exists!4167 lambda!461977) (Exists!4167 lambda!461978))))

(declare-fun lt!2623586 () Unit!165931)

(declare-fun choose!57709 (Regex!19548 Regex!19548 List!72264) Unit!165931)

(assert (=> d!2298450 (= lt!2623586 (choose!57709 lt!2623496 rTail!78 s!13591))))

(assert (=> d!2298450 (validRegex!10062 lt!2623496)))

(assert (=> d!2298450 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2501 lt!2623496 rTail!78 s!13591) lt!2623586)))

(declare-fun m!8064314 () Bool)

(assert (=> bs!1929900 m!8064314))

(declare-fun m!8064316 () Bool)

(assert (=> bs!1929900 m!8064316))

(declare-fun m!8064318 () Bool)

(assert (=> bs!1929900 m!8064318))

(assert (=> bs!1929900 m!8064298))

(assert (=> b!7464700 d!2298450))

(declare-fun d!2298452 () Bool)

(declare-fun e!4454568 () Bool)

(assert (=> d!2298452 e!4454568))

(declare-fun c!1379795 () Bool)

(assert (=> d!2298452 (= c!1379795 (is-EmptyExpr!19548 lt!2623492))))

(declare-fun lt!2623587 () Bool)

(declare-fun e!4454569 () Bool)

(assert (=> d!2298452 (= lt!2623587 e!4454569)))

(declare-fun c!1379796 () Bool)

(assert (=> d!2298452 (= c!1379796 (isEmpty!41151 s!13591))))

(assert (=> d!2298452 (validRegex!10062 lt!2623492)))

(assert (=> d!2298452 (= (matchR!9312 lt!2623492 s!13591) lt!2623587)))

(declare-fun b!7465050 () Bool)

(declare-fun e!4454565 () Bool)

(assert (=> b!7465050 (= e!4454565 (not lt!2623587))))

(declare-fun b!7465051 () Bool)

(declare-fun res!2994463 () Bool)

(declare-fun e!4454564 () Bool)

(assert (=> b!7465051 (=> res!2994463 e!4454564)))

(assert (=> b!7465051 (= res!2994463 (not (isEmpty!41151 (tail!14886 s!13591))))))

(declare-fun b!7465052 () Bool)

(assert (=> b!7465052 (= e!4454569 (matchR!9312 (derivativeStep!5577 lt!2623492 (head!15317 s!13591)) (tail!14886 s!13591)))))

(declare-fun b!7465053 () Bool)

(declare-fun res!2994460 () Bool)

(declare-fun e!4454567 () Bool)

(assert (=> b!7465053 (=> res!2994460 e!4454567)))

(assert (=> b!7465053 (= res!2994460 (not (is-ElementMatch!19548 lt!2623492)))))

(assert (=> b!7465053 (= e!4454565 e!4454567)))

(declare-fun b!7465054 () Bool)

(declare-fun res!2994462 () Bool)

(declare-fun e!4454570 () Bool)

(assert (=> b!7465054 (=> (not res!2994462) (not e!4454570))))

(declare-fun call!685687 () Bool)

(assert (=> b!7465054 (= res!2994462 (not call!685687))))

(declare-fun b!7465055 () Bool)

(declare-fun res!2994465 () Bool)

(assert (=> b!7465055 (=> res!2994465 e!4454567)))

(assert (=> b!7465055 (= res!2994465 e!4454570)))

(declare-fun res!2994466 () Bool)

(assert (=> b!7465055 (=> (not res!2994466) (not e!4454570))))

(assert (=> b!7465055 (= res!2994466 lt!2623587)))

(declare-fun b!7465056 () Bool)

(assert (=> b!7465056 (= e!4454564 (not (= (head!15317 s!13591) (c!1379735 lt!2623492))))))

(declare-fun b!7465057 () Bool)

(assert (=> b!7465057 (= e!4454570 (= (head!15317 s!13591) (c!1379735 lt!2623492)))))

(declare-fun b!7465058 () Bool)

(declare-fun e!4454566 () Bool)

(assert (=> b!7465058 (= e!4454567 e!4454566)))

(declare-fun res!2994461 () Bool)

(assert (=> b!7465058 (=> (not res!2994461) (not e!4454566))))

(assert (=> b!7465058 (= res!2994461 (not lt!2623587))))

(declare-fun b!7465059 () Bool)

(assert (=> b!7465059 (= e!4454566 e!4454564)))

(declare-fun res!2994464 () Bool)

(assert (=> b!7465059 (=> res!2994464 e!4454564)))

(assert (=> b!7465059 (= res!2994464 call!685687)))

(declare-fun b!7465060 () Bool)

(assert (=> b!7465060 (= e!4454568 e!4454565)))

(declare-fun c!1379794 () Bool)

(assert (=> b!7465060 (= c!1379794 (is-EmptyLang!19548 lt!2623492))))

(declare-fun b!7465061 () Bool)

(declare-fun res!2994459 () Bool)

(assert (=> b!7465061 (=> (not res!2994459) (not e!4454570))))

(assert (=> b!7465061 (= res!2994459 (isEmpty!41151 (tail!14886 s!13591)))))

(declare-fun b!7465062 () Bool)

(assert (=> b!7465062 (= e!4454568 (= lt!2623587 call!685687))))

(declare-fun b!7465063 () Bool)

(assert (=> b!7465063 (= e!4454569 (nullable!8518 lt!2623492))))

(declare-fun bm!685682 () Bool)

(assert (=> bm!685682 (= call!685687 (isEmpty!41151 s!13591))))

(assert (= (and d!2298452 c!1379796) b!7465063))

(assert (= (and d!2298452 (not c!1379796)) b!7465052))

(assert (= (and d!2298452 c!1379795) b!7465062))

(assert (= (and d!2298452 (not c!1379795)) b!7465060))

(assert (= (and b!7465060 c!1379794) b!7465050))

(assert (= (and b!7465060 (not c!1379794)) b!7465053))

(assert (= (and b!7465053 (not res!2994460)) b!7465055))

(assert (= (and b!7465055 res!2994466) b!7465054))

(assert (= (and b!7465054 res!2994462) b!7465061))

(assert (= (and b!7465061 res!2994459) b!7465057))

(assert (= (and b!7465055 (not res!2994465)) b!7465058))

(assert (= (and b!7465058 res!2994461) b!7465059))

(assert (= (and b!7465059 (not res!2994464)) b!7465051))

(assert (= (and b!7465051 (not res!2994463)) b!7465056))

(assert (= (or b!7465062 b!7465054 b!7465059) bm!685682))

(assert (=> b!7465061 m!8064228))

(assert (=> b!7465061 m!8064228))

(assert (=> b!7465061 m!8064230))

(assert (=> bm!685682 m!8064226))

(assert (=> d!2298452 m!8064226))

(declare-fun m!8064320 () Bool)

(assert (=> d!2298452 m!8064320))

(assert (=> b!7465052 m!8064234))

(assert (=> b!7465052 m!8064234))

(declare-fun m!8064322 () Bool)

(assert (=> b!7465052 m!8064322))

(assert (=> b!7465052 m!8064228))

(assert (=> b!7465052 m!8064322))

(assert (=> b!7465052 m!8064228))

(declare-fun m!8064324 () Bool)

(assert (=> b!7465052 m!8064324))

(declare-fun m!8064326 () Bool)

(assert (=> b!7465063 m!8064326))

(assert (=> b!7465056 m!8064234))

(assert (=> b!7465051 m!8064228))

(assert (=> b!7465051 m!8064228))

(assert (=> b!7465051 m!8064230))

(assert (=> b!7465057 m!8064234))

(assert (=> b!7464699 d!2298452))

(declare-fun d!2298454 () Bool)

(assert (=> d!2298454 (= (matchR!9312 lt!2623486 s!13591) (matchRSpec!4227 lt!2623486 s!13591))))

(declare-fun lt!2623588 () Unit!165931)

(assert (=> d!2298454 (= lt!2623588 (choose!57706 lt!2623486 s!13591))))

(assert (=> d!2298454 (validRegex!10062 lt!2623486)))

(assert (=> d!2298454 (= (mainMatchTheorem!4221 lt!2623486 s!13591) lt!2623588)))

(declare-fun bs!1929901 () Bool)

(assert (= bs!1929901 d!2298454))

(assert (=> bs!1929901 m!8064140))

(assert (=> bs!1929901 m!8064134))

(declare-fun m!8064328 () Bool)

(assert (=> bs!1929901 m!8064328))

(declare-fun m!8064330 () Bool)

(assert (=> bs!1929901 m!8064330))

(assert (=> b!7464699 d!2298454))

(declare-fun d!2298456 () Bool)

(declare-fun e!4454575 () Bool)

(assert (=> d!2298456 e!4454575))

(declare-fun c!1379798 () Bool)

(assert (=> d!2298456 (= c!1379798 (is-EmptyExpr!19548 lt!2623486))))

(declare-fun lt!2623589 () Bool)

(declare-fun e!4454576 () Bool)

(assert (=> d!2298456 (= lt!2623589 e!4454576)))

(declare-fun c!1379799 () Bool)

(assert (=> d!2298456 (= c!1379799 (isEmpty!41151 s!13591))))

(assert (=> d!2298456 (validRegex!10062 lt!2623486)))

(assert (=> d!2298456 (= (matchR!9312 lt!2623486 s!13591) lt!2623589)))

(declare-fun b!7465064 () Bool)

(declare-fun e!4454572 () Bool)

(assert (=> b!7465064 (= e!4454572 (not lt!2623589))))

(declare-fun b!7465065 () Bool)

(declare-fun res!2994471 () Bool)

(declare-fun e!4454571 () Bool)

(assert (=> b!7465065 (=> res!2994471 e!4454571)))

(assert (=> b!7465065 (= res!2994471 (not (isEmpty!41151 (tail!14886 s!13591))))))

(declare-fun b!7465066 () Bool)

(assert (=> b!7465066 (= e!4454576 (matchR!9312 (derivativeStep!5577 lt!2623486 (head!15317 s!13591)) (tail!14886 s!13591)))))

(declare-fun b!7465067 () Bool)

(declare-fun res!2994468 () Bool)

(declare-fun e!4454574 () Bool)

(assert (=> b!7465067 (=> res!2994468 e!4454574)))

(assert (=> b!7465067 (= res!2994468 (not (is-ElementMatch!19548 lt!2623486)))))

(assert (=> b!7465067 (= e!4454572 e!4454574)))

(declare-fun b!7465068 () Bool)

(declare-fun res!2994470 () Bool)

(declare-fun e!4454577 () Bool)

(assert (=> b!7465068 (=> (not res!2994470) (not e!4454577))))

(declare-fun call!685690 () Bool)

(assert (=> b!7465068 (= res!2994470 (not call!685690))))

(declare-fun b!7465069 () Bool)

(declare-fun res!2994473 () Bool)

(assert (=> b!7465069 (=> res!2994473 e!4454574)))

(assert (=> b!7465069 (= res!2994473 e!4454577)))

(declare-fun res!2994474 () Bool)

(assert (=> b!7465069 (=> (not res!2994474) (not e!4454577))))

(assert (=> b!7465069 (= res!2994474 lt!2623589)))

(declare-fun b!7465070 () Bool)

(assert (=> b!7465070 (= e!4454571 (not (= (head!15317 s!13591) (c!1379735 lt!2623486))))))

(declare-fun b!7465071 () Bool)

(assert (=> b!7465071 (= e!4454577 (= (head!15317 s!13591) (c!1379735 lt!2623486)))))

(declare-fun b!7465072 () Bool)

(declare-fun e!4454573 () Bool)

(assert (=> b!7465072 (= e!4454574 e!4454573)))

(declare-fun res!2994469 () Bool)

(assert (=> b!7465072 (=> (not res!2994469) (not e!4454573))))

(assert (=> b!7465072 (= res!2994469 (not lt!2623589))))

(declare-fun b!7465073 () Bool)

(assert (=> b!7465073 (= e!4454573 e!4454571)))

(declare-fun res!2994472 () Bool)

(assert (=> b!7465073 (=> res!2994472 e!4454571)))

(assert (=> b!7465073 (= res!2994472 call!685690)))

(declare-fun b!7465074 () Bool)

(assert (=> b!7465074 (= e!4454575 e!4454572)))

(declare-fun c!1379797 () Bool)

(assert (=> b!7465074 (= c!1379797 (is-EmptyLang!19548 lt!2623486))))

(declare-fun b!7465075 () Bool)

(declare-fun res!2994467 () Bool)

(assert (=> b!7465075 (=> (not res!2994467) (not e!4454577))))

(assert (=> b!7465075 (= res!2994467 (isEmpty!41151 (tail!14886 s!13591)))))

(declare-fun b!7465076 () Bool)

(assert (=> b!7465076 (= e!4454575 (= lt!2623589 call!685690))))

(declare-fun b!7465077 () Bool)

(assert (=> b!7465077 (= e!4454576 (nullable!8518 lt!2623486))))

(declare-fun bm!685683 () Bool)

(assert (=> bm!685683 (= call!685690 (isEmpty!41151 s!13591))))

(assert (= (and d!2298456 c!1379799) b!7465077))

(assert (= (and d!2298456 (not c!1379799)) b!7465066))

(assert (= (and d!2298456 c!1379798) b!7465076))

(assert (= (and d!2298456 (not c!1379798)) b!7465074))

(assert (= (and b!7465074 c!1379797) b!7465064))

(assert (= (and b!7465074 (not c!1379797)) b!7465067))

(assert (= (and b!7465067 (not res!2994468)) b!7465069))

(assert (= (and b!7465069 res!2994474) b!7465068))

(assert (= (and b!7465068 res!2994470) b!7465075))

(assert (= (and b!7465075 res!2994467) b!7465071))

(assert (= (and b!7465069 (not res!2994473)) b!7465072))

(assert (= (and b!7465072 res!2994469) b!7465073))

(assert (= (and b!7465073 (not res!2994472)) b!7465065))

(assert (= (and b!7465065 (not res!2994471)) b!7465070))

(assert (= (or b!7465076 b!7465068 b!7465073) bm!685683))

(assert (=> b!7465075 m!8064228))

(assert (=> b!7465075 m!8064228))

(assert (=> b!7465075 m!8064230))

(assert (=> bm!685683 m!8064226))

(assert (=> d!2298456 m!8064226))

(assert (=> d!2298456 m!8064330))

(assert (=> b!7465066 m!8064234))

(assert (=> b!7465066 m!8064234))

(declare-fun m!8064332 () Bool)

(assert (=> b!7465066 m!8064332))

(assert (=> b!7465066 m!8064228))

(assert (=> b!7465066 m!8064332))

(assert (=> b!7465066 m!8064228))

(declare-fun m!8064334 () Bool)

(assert (=> b!7465066 m!8064334))

(declare-fun m!8064336 () Bool)

(assert (=> b!7465077 m!8064336))

(assert (=> b!7465070 m!8064234))

(assert (=> b!7465065 m!8064228))

(assert (=> b!7465065 m!8064228))

(assert (=> b!7465065 m!8064230))

(assert (=> b!7465071 m!8064234))

(assert (=> b!7464699 d!2298456))

(declare-fun bs!1929902 () Bool)

(declare-fun b!7465082 () Bool)

(assert (= bs!1929902 (and b!7465082 b!7464907)))

(declare-fun lambda!461979 () Int)

(assert (=> bs!1929902 (= (and (= (reg!19877 lt!2623492) (reg!19877 lt!2623498)) (= lt!2623492 lt!2623498)) (= lambda!461979 lambda!461964))))

(declare-fun bs!1929903 () Bool)

(assert (= bs!1929903 (and b!7465082 b!7464701)))

(assert (=> bs!1929903 (not (= lambda!461979 lambda!461940))))

(declare-fun bs!1929904 () Bool)

(assert (= bs!1929904 (and b!7465082 b!7464700)))

(assert (=> bs!1929904 (not (= lambda!461979 lambda!461939))))

(declare-fun bs!1929905 () Bool)

(assert (= bs!1929905 (and b!7465082 d!2298450)))

(assert (=> bs!1929905 (not (= lambda!461979 lambda!461977))))

(declare-fun bs!1929906 () Bool)

(assert (= bs!1929906 (and b!7465082 b!7464905)))

(assert (=> bs!1929906 (not (= lambda!461979 lambda!461965))))

(declare-fun bs!1929907 () Bool)

(assert (= bs!1929907 (and b!7465082 b!7464834)))

(assert (=> bs!1929907 (not (= lambda!461979 lambda!461963))))

(declare-fun bs!1929908 () Bool)

(assert (= bs!1929908 (and b!7465082 b!7464836)))

(assert (=> bs!1929908 (= (and (= (reg!19877 lt!2623492) (reg!19877 lt!2623491)) (= lt!2623492 lt!2623491)) (= lambda!461979 lambda!461962))))

(assert (=> bs!1929904 (not (= lambda!461979 lambda!461938))))

(assert (=> bs!1929903 (not (= lambda!461979 lambda!461941))))

(declare-fun bs!1929909 () Bool)

(assert (= bs!1929909 (and b!7465082 d!2298448)))

(assert (=> bs!1929909 (not (= lambda!461979 lambda!461968))))

(assert (=> bs!1929905 (not (= lambda!461979 lambda!461978))))

(assert (=> b!7465082 true))

(assert (=> b!7465082 true))

(declare-fun bs!1929910 () Bool)

(declare-fun b!7465080 () Bool)

(assert (= bs!1929910 (and b!7465080 b!7464907)))

(declare-fun lambda!461980 () Int)

(assert (=> bs!1929910 (not (= lambda!461980 lambda!461964))))

(declare-fun bs!1929911 () Bool)

(assert (= bs!1929911 (and b!7465080 b!7464701)))

(assert (=> bs!1929911 (not (= lambda!461980 lambda!461940))))

(declare-fun bs!1929912 () Bool)

(assert (= bs!1929912 (and b!7465080 b!7465082)))

(assert (=> bs!1929912 (not (= lambda!461980 lambda!461979))))

(declare-fun bs!1929913 () Bool)

(assert (= bs!1929913 (and b!7465080 b!7464700)))

(assert (=> bs!1929913 (= (and (= (regOne!39608 lt!2623492) lt!2623496) (= (regTwo!39608 lt!2623492) rTail!78)) (= lambda!461980 lambda!461939))))

(declare-fun bs!1929914 () Bool)

(assert (= bs!1929914 (and b!7465080 d!2298450)))

(assert (=> bs!1929914 (not (= lambda!461980 lambda!461977))))

(declare-fun bs!1929915 () Bool)

(assert (= bs!1929915 (and b!7465080 b!7464905)))

(assert (=> bs!1929915 (= (and (= (regOne!39608 lt!2623492) (regOne!39608 lt!2623498)) (= (regTwo!39608 lt!2623492) (regTwo!39608 lt!2623498))) (= lambda!461980 lambda!461965))))

(declare-fun bs!1929916 () Bool)

(assert (= bs!1929916 (and b!7465080 b!7464834)))

(assert (=> bs!1929916 (= (and (= (regOne!39608 lt!2623492) (regOne!39608 lt!2623491)) (= (regTwo!39608 lt!2623492) (regTwo!39608 lt!2623491))) (= lambda!461980 lambda!461963))))

(declare-fun bs!1929917 () Bool)

(assert (= bs!1929917 (and b!7465080 b!7464836)))

(assert (=> bs!1929917 (not (= lambda!461980 lambda!461962))))

(assert (=> bs!1929913 (not (= lambda!461980 lambda!461938))))

(assert (=> bs!1929911 (= (and (= (regOne!39608 lt!2623492) r1!5845) (= (regTwo!39608 lt!2623492) rTail!78)) (= lambda!461980 lambda!461941))))

(declare-fun bs!1929918 () Bool)

(assert (= bs!1929918 (and b!7465080 d!2298448)))

(assert (=> bs!1929918 (not (= lambda!461980 lambda!461968))))

(assert (=> bs!1929914 (= (and (= (regOne!39608 lt!2623492) lt!2623496) (= (regTwo!39608 lt!2623492) rTail!78)) (= lambda!461980 lambda!461978))))

(assert (=> b!7465080 true))

(assert (=> b!7465080 true))

(declare-fun b!7465078 () Bool)

(declare-fun e!4454583 () Bool)

(declare-fun e!4454578 () Bool)

(assert (=> b!7465078 (= e!4454583 e!4454578)))

(declare-fun res!2994476 () Bool)

(assert (=> b!7465078 (= res!2994476 (matchRSpec!4227 (regOne!39609 lt!2623492) s!13591))))

(assert (=> b!7465078 (=> res!2994476 e!4454578)))

(declare-fun b!7465079 () Bool)

(declare-fun e!4454581 () Bool)

(declare-fun call!685691 () Bool)

(assert (=> b!7465079 (= e!4454581 call!685691)))

(declare-fun e!4454584 () Bool)

(declare-fun call!685692 () Bool)

(assert (=> b!7465080 (= e!4454584 call!685692)))

(declare-fun b!7465081 () Bool)

(assert (=> b!7465081 (= e!4454578 (matchRSpec!4227 (regTwo!39609 lt!2623492) s!13591))))

(declare-fun e!4454579 () Bool)

(assert (=> b!7465082 (= e!4454579 call!685692)))

(declare-fun b!7465083 () Bool)

(declare-fun e!4454580 () Bool)

(assert (=> b!7465083 (= e!4454580 (= s!13591 (Cons!72140 (c!1379735 lt!2623492) Nil!72140)))))

(declare-fun b!7465084 () Bool)

(declare-fun e!4454582 () Bool)

(assert (=> b!7465084 (= e!4454581 e!4454582)))

(declare-fun res!2994477 () Bool)

(assert (=> b!7465084 (= res!2994477 (not (is-EmptyLang!19548 lt!2623492)))))

(assert (=> b!7465084 (=> (not res!2994477) (not e!4454582))))

(declare-fun b!7465085 () Bool)

(declare-fun c!1379800 () Bool)

(assert (=> b!7465085 (= c!1379800 (is-ElementMatch!19548 lt!2623492))))

(assert (=> b!7465085 (= e!4454582 e!4454580)))

(declare-fun b!7465086 () Bool)

(declare-fun c!1379803 () Bool)

(assert (=> b!7465086 (= c!1379803 (is-Union!19548 lt!2623492))))

(assert (=> b!7465086 (= e!4454580 e!4454583)))

(declare-fun bm!685687 () Bool)

(declare-fun c!1379802 () Bool)

(assert (=> bm!685687 (= call!685692 (Exists!4167 (ite c!1379802 lambda!461979 lambda!461980)))))

(declare-fun b!7465087 () Bool)

(declare-fun res!2994475 () Bool)

(assert (=> b!7465087 (=> res!2994475 e!4454579)))

(assert (=> b!7465087 (= res!2994475 call!685691)))

(assert (=> b!7465087 (= e!4454584 e!4454579)))

(declare-fun b!7465088 () Bool)

(assert (=> b!7465088 (= e!4454583 e!4454584)))

(assert (=> b!7465088 (= c!1379802 (is-Star!19548 lt!2623492))))

(declare-fun bm!685686 () Bool)

(assert (=> bm!685686 (= call!685691 (isEmpty!41151 s!13591))))

(declare-fun d!2298458 () Bool)

(declare-fun c!1379801 () Bool)

(assert (=> d!2298458 (= c!1379801 (is-EmptyExpr!19548 lt!2623492))))

(assert (=> d!2298458 (= (matchRSpec!4227 lt!2623492 s!13591) e!4454581)))

(assert (= (and d!2298458 c!1379801) b!7465079))

(assert (= (and d!2298458 (not c!1379801)) b!7465084))

(assert (= (and b!7465084 res!2994477) b!7465085))

(assert (= (and b!7465085 c!1379800) b!7465083))

(assert (= (and b!7465085 (not c!1379800)) b!7465086))

(assert (= (and b!7465086 c!1379803) b!7465078))

(assert (= (and b!7465086 (not c!1379803)) b!7465088))

(assert (= (and b!7465078 (not res!2994476)) b!7465081))

(assert (= (and b!7465088 c!1379802) b!7465087))

(assert (= (and b!7465088 (not c!1379802)) b!7465080))

(assert (= (and b!7465087 (not res!2994475)) b!7465082))

(assert (= (or b!7465082 b!7465080) bm!685687))

(assert (= (or b!7465079 b!7465087) bm!685686))

(declare-fun m!8064338 () Bool)

(assert (=> b!7465078 m!8064338))

(declare-fun m!8064340 () Bool)

(assert (=> b!7465081 m!8064340))

(declare-fun m!8064342 () Bool)

(assert (=> bm!685687 m!8064342))

(assert (=> bm!685686 m!8064226))

(assert (=> b!7464699 d!2298458))

(declare-fun d!2298460 () Bool)

(assert (=> d!2298460 (= (matchR!9312 lt!2623492 s!13591) (matchRSpec!4227 lt!2623492 s!13591))))

(declare-fun lt!2623590 () Unit!165931)

(assert (=> d!2298460 (= lt!2623590 (choose!57706 lt!2623492 s!13591))))

(assert (=> d!2298460 (validRegex!10062 lt!2623492)))

(assert (=> d!2298460 (= (mainMatchTheorem!4221 lt!2623492 s!13591) lt!2623590)))

(declare-fun bs!1929919 () Bool)

(assert (= bs!1929919 d!2298460))

(assert (=> bs!1929919 m!8064138))

(assert (=> bs!1929919 m!8064132))

(declare-fun m!8064344 () Bool)

(assert (=> bs!1929919 m!8064344))

(assert (=> bs!1929919 m!8064320))

(assert (=> b!7464699 d!2298460))

(declare-fun bs!1929920 () Bool)

(declare-fun b!7465093 () Bool)

(assert (= bs!1929920 (and b!7465093 b!7464907)))

(declare-fun lambda!461981 () Int)

(assert (=> bs!1929920 (= (and (= (reg!19877 lt!2623486) (reg!19877 lt!2623498)) (= lt!2623486 lt!2623498)) (= lambda!461981 lambda!461964))))

(declare-fun bs!1929921 () Bool)

(assert (= bs!1929921 (and b!7465093 b!7464701)))

(assert (=> bs!1929921 (not (= lambda!461981 lambda!461940))))

(declare-fun bs!1929922 () Bool)

(assert (= bs!1929922 (and b!7465093 b!7465082)))

(assert (=> bs!1929922 (= (and (= (reg!19877 lt!2623486) (reg!19877 lt!2623492)) (= lt!2623486 lt!2623492)) (= lambda!461981 lambda!461979))))

(declare-fun bs!1929923 () Bool)

(assert (= bs!1929923 (and b!7465093 b!7464700)))

(assert (=> bs!1929923 (not (= lambda!461981 lambda!461939))))

(declare-fun bs!1929924 () Bool)

(assert (= bs!1929924 (and b!7465093 d!2298450)))

(assert (=> bs!1929924 (not (= lambda!461981 lambda!461977))))

(declare-fun bs!1929925 () Bool)

(assert (= bs!1929925 (and b!7465093 b!7464905)))

(assert (=> bs!1929925 (not (= lambda!461981 lambda!461965))))

(declare-fun bs!1929926 () Bool)

(assert (= bs!1929926 (and b!7465093 b!7464836)))

(assert (=> bs!1929926 (= (and (= (reg!19877 lt!2623486) (reg!19877 lt!2623491)) (= lt!2623486 lt!2623491)) (= lambda!461981 lambda!461962))))

(assert (=> bs!1929923 (not (= lambda!461981 lambda!461938))))

(assert (=> bs!1929921 (not (= lambda!461981 lambda!461941))))

(declare-fun bs!1929927 () Bool)

(assert (= bs!1929927 (and b!7465093 d!2298448)))

(assert (=> bs!1929927 (not (= lambda!461981 lambda!461968))))

(assert (=> bs!1929924 (not (= lambda!461981 lambda!461978))))

(declare-fun bs!1929928 () Bool)

(assert (= bs!1929928 (and b!7465093 b!7464834)))

(assert (=> bs!1929928 (not (= lambda!461981 lambda!461963))))

(declare-fun bs!1929929 () Bool)

(assert (= bs!1929929 (and b!7465093 b!7465080)))

(assert (=> bs!1929929 (not (= lambda!461981 lambda!461980))))

(assert (=> b!7465093 true))

(assert (=> b!7465093 true))

(declare-fun bs!1929931 () Bool)

(declare-fun b!7465091 () Bool)

(assert (= bs!1929931 (and b!7465091 b!7464907)))

(declare-fun lambda!461983 () Int)

(assert (=> bs!1929931 (not (= lambda!461983 lambda!461964))))

(declare-fun bs!1929932 () Bool)

(assert (= bs!1929932 (and b!7465091 b!7464701)))

(assert (=> bs!1929932 (not (= lambda!461983 lambda!461940))))

(declare-fun bs!1929934 () Bool)

(assert (= bs!1929934 (and b!7465091 b!7465082)))

(assert (=> bs!1929934 (not (= lambda!461983 lambda!461979))))

(declare-fun bs!1929935 () Bool)

(assert (= bs!1929935 (and b!7465091 b!7464700)))

(assert (=> bs!1929935 (= (and (= (regOne!39608 lt!2623486) lt!2623496) (= (regTwo!39608 lt!2623486) rTail!78)) (= lambda!461983 lambda!461939))))

(declare-fun bs!1929936 () Bool)

(assert (= bs!1929936 (and b!7465091 b!7465093)))

(assert (=> bs!1929936 (not (= lambda!461983 lambda!461981))))

(declare-fun bs!1929937 () Bool)

(assert (= bs!1929937 (and b!7465091 d!2298450)))

(assert (=> bs!1929937 (not (= lambda!461983 lambda!461977))))

(declare-fun bs!1929938 () Bool)

(assert (= bs!1929938 (and b!7465091 b!7464905)))

(assert (=> bs!1929938 (= (and (= (regOne!39608 lt!2623486) (regOne!39608 lt!2623498)) (= (regTwo!39608 lt!2623486) (regTwo!39608 lt!2623498))) (= lambda!461983 lambda!461965))))

(declare-fun bs!1929939 () Bool)

(assert (= bs!1929939 (and b!7465091 b!7464836)))

(assert (=> bs!1929939 (not (= lambda!461983 lambda!461962))))

(assert (=> bs!1929935 (not (= lambda!461983 lambda!461938))))

(assert (=> bs!1929932 (= (and (= (regOne!39608 lt!2623486) r1!5845) (= (regTwo!39608 lt!2623486) rTail!78)) (= lambda!461983 lambda!461941))))

(declare-fun bs!1929940 () Bool)

(assert (= bs!1929940 (and b!7465091 d!2298448)))

(assert (=> bs!1929940 (not (= lambda!461983 lambda!461968))))

(assert (=> bs!1929937 (= (and (= (regOne!39608 lt!2623486) lt!2623496) (= (regTwo!39608 lt!2623486) rTail!78)) (= lambda!461983 lambda!461978))))

(declare-fun bs!1929941 () Bool)

(assert (= bs!1929941 (and b!7465091 b!7464834)))

(assert (=> bs!1929941 (= (and (= (regOne!39608 lt!2623486) (regOne!39608 lt!2623491)) (= (regTwo!39608 lt!2623486) (regTwo!39608 lt!2623491))) (= lambda!461983 lambda!461963))))

(declare-fun bs!1929942 () Bool)

(assert (= bs!1929942 (and b!7465091 b!7465080)))

(assert (=> bs!1929942 (= (and (= (regOne!39608 lt!2623486) (regOne!39608 lt!2623492)) (= (regTwo!39608 lt!2623486) (regTwo!39608 lt!2623492))) (= lambda!461983 lambda!461980))))

(assert (=> b!7465091 true))

(assert (=> b!7465091 true))

(declare-fun b!7465089 () Bool)

(declare-fun e!4454590 () Bool)

(declare-fun e!4454585 () Bool)

(assert (=> b!7465089 (= e!4454590 e!4454585)))

(declare-fun res!2994479 () Bool)

(assert (=> b!7465089 (= res!2994479 (matchRSpec!4227 (regOne!39609 lt!2623486) s!13591))))

(assert (=> b!7465089 (=> res!2994479 e!4454585)))

(declare-fun b!7465090 () Bool)

(declare-fun e!4454588 () Bool)

(declare-fun call!685693 () Bool)

(assert (=> b!7465090 (= e!4454588 call!685693)))

(declare-fun e!4454591 () Bool)

(declare-fun call!685694 () Bool)

(assert (=> b!7465091 (= e!4454591 call!685694)))

(declare-fun b!7465092 () Bool)

(assert (=> b!7465092 (= e!4454585 (matchRSpec!4227 (regTwo!39609 lt!2623486) s!13591))))

(declare-fun e!4454586 () Bool)

(assert (=> b!7465093 (= e!4454586 call!685694)))

(declare-fun b!7465094 () Bool)

(declare-fun e!4454587 () Bool)

(assert (=> b!7465094 (= e!4454587 (= s!13591 (Cons!72140 (c!1379735 lt!2623486) Nil!72140)))))

(declare-fun b!7465095 () Bool)

(declare-fun e!4454589 () Bool)

(assert (=> b!7465095 (= e!4454588 e!4454589)))

(declare-fun res!2994480 () Bool)

(assert (=> b!7465095 (= res!2994480 (not (is-EmptyLang!19548 lt!2623486)))))

(assert (=> b!7465095 (=> (not res!2994480) (not e!4454589))))

(declare-fun b!7465096 () Bool)

(declare-fun c!1379804 () Bool)

(assert (=> b!7465096 (= c!1379804 (is-ElementMatch!19548 lt!2623486))))

(assert (=> b!7465096 (= e!4454589 e!4454587)))

(declare-fun b!7465097 () Bool)

(declare-fun c!1379807 () Bool)

(assert (=> b!7465097 (= c!1379807 (is-Union!19548 lt!2623486))))

(assert (=> b!7465097 (= e!4454587 e!4454590)))

(declare-fun c!1379806 () Bool)

(declare-fun bm!685689 () Bool)

(assert (=> bm!685689 (= call!685694 (Exists!4167 (ite c!1379806 lambda!461981 lambda!461983)))))

(declare-fun b!7465098 () Bool)

(declare-fun res!2994478 () Bool)

(assert (=> b!7465098 (=> res!2994478 e!4454586)))

(assert (=> b!7465098 (= res!2994478 call!685693)))

(assert (=> b!7465098 (= e!4454591 e!4454586)))

(declare-fun b!7465099 () Bool)

(assert (=> b!7465099 (= e!4454590 e!4454591)))

(assert (=> b!7465099 (= c!1379806 (is-Star!19548 lt!2623486))))

(declare-fun bm!685688 () Bool)

(assert (=> bm!685688 (= call!685693 (isEmpty!41151 s!13591))))

(declare-fun d!2298462 () Bool)

(declare-fun c!1379805 () Bool)

(assert (=> d!2298462 (= c!1379805 (is-EmptyExpr!19548 lt!2623486))))

(assert (=> d!2298462 (= (matchRSpec!4227 lt!2623486 s!13591) e!4454588)))

(assert (= (and d!2298462 c!1379805) b!7465090))

(assert (= (and d!2298462 (not c!1379805)) b!7465095))

(assert (= (and b!7465095 res!2994480) b!7465096))

(assert (= (and b!7465096 c!1379804) b!7465094))

(assert (= (and b!7465096 (not c!1379804)) b!7465097))

(assert (= (and b!7465097 c!1379807) b!7465089))

(assert (= (and b!7465097 (not c!1379807)) b!7465099))

(assert (= (and b!7465089 (not res!2994479)) b!7465092))

(assert (= (and b!7465099 c!1379806) b!7465098))

(assert (= (and b!7465099 (not c!1379806)) b!7465091))

(assert (= (and b!7465098 (not res!2994478)) b!7465093))

(assert (= (or b!7465093 b!7465091) bm!685689))

(assert (= (or b!7465090 b!7465098) bm!685688))

(declare-fun m!8064346 () Bool)

(assert (=> b!7465089 m!8064346))

(declare-fun m!8064348 () Bool)

(assert (=> b!7465092 m!8064348))

(declare-fun m!8064350 () Bool)

(assert (=> bm!685689 m!8064350))

(assert (=> bm!685688 m!8064226))

(assert (=> b!7464699 d!2298462))

(declare-fun b!7465112 () Bool)

(declare-fun e!4454601 () Option!17105)

(assert (=> b!7465112 (= e!4454601 None!17104)))

(declare-fun b!7465113 () Bool)

(declare-fun e!4454600 () Bool)

(declare-fun lt!2623592 () Option!17105)

(assert (=> b!7465113 (= e!4454600 (not (isDefined!13794 lt!2623592)))))

(declare-fun b!7465114 () Bool)

(declare-fun e!4454599 () Option!17105)

(assert (=> b!7465114 (= e!4454599 (Some!17104 (tuple2!68547 Nil!72140 s!13591)))))

(declare-fun b!7465115 () Bool)

(assert (=> b!7465115 (= e!4454599 e!4454601)))

(declare-fun c!1379812 () Bool)

(assert (=> b!7465115 (= c!1379812 (is-Nil!72140 s!13591))))

(declare-fun b!7465116 () Bool)

(declare-fun lt!2623591 () Unit!165931)

(declare-fun lt!2623593 () Unit!165931)

(assert (=> b!7465116 (= lt!2623591 lt!2623593)))

(assert (=> b!7465116 (= (++!17190 (++!17190 Nil!72140 (Cons!72140 (h!78588 s!13591) Nil!72140)) (t!386833 s!13591)) s!13591)))

(assert (=> b!7465116 (= lt!2623593 (lemmaMoveElementToOtherListKeepsConcatEq!3070 Nil!72140 (h!78588 s!13591) (t!386833 s!13591) s!13591))))

(assert (=> b!7465116 (= e!4454601 (findConcatSeparation!3227 r1!5845 rTail!78 (++!17190 Nil!72140 (Cons!72140 (h!78588 s!13591) Nil!72140)) (t!386833 s!13591) s!13591))))

(declare-fun b!7465117 () Bool)

(declare-fun res!2994484 () Bool)

(declare-fun e!4454602 () Bool)

(assert (=> b!7465117 (=> (not res!2994484) (not e!4454602))))

(assert (=> b!7465117 (= res!2994484 (matchR!9312 rTail!78 (_2!37576 (get!25190 lt!2623592))))))

(declare-fun d!2298464 () Bool)

(assert (=> d!2298464 e!4454600))

(declare-fun res!2994485 () Bool)

(assert (=> d!2298464 (=> res!2994485 e!4454600)))

(assert (=> d!2298464 (= res!2994485 e!4454602)))

(declare-fun res!2994486 () Bool)

(assert (=> d!2298464 (=> (not res!2994486) (not e!4454602))))

(assert (=> d!2298464 (= res!2994486 (isDefined!13794 lt!2623592))))

(assert (=> d!2298464 (= lt!2623592 e!4454599)))

(declare-fun c!1379813 () Bool)

(declare-fun e!4454603 () Bool)

(assert (=> d!2298464 (= c!1379813 e!4454603)))

(declare-fun res!2994488 () Bool)

(assert (=> d!2298464 (=> (not res!2994488) (not e!4454603))))

(assert (=> d!2298464 (= res!2994488 (matchR!9312 r1!5845 Nil!72140))))

(assert (=> d!2298464 (validRegex!10062 r1!5845)))

(assert (=> d!2298464 (= (findConcatSeparation!3227 r1!5845 rTail!78 Nil!72140 s!13591 s!13591) lt!2623592)))

(declare-fun b!7465111 () Bool)

(assert (=> b!7465111 (= e!4454603 (matchR!9312 rTail!78 s!13591))))

(declare-fun b!7465118 () Bool)

(assert (=> b!7465118 (= e!4454602 (= (++!17190 (_1!37576 (get!25190 lt!2623592)) (_2!37576 (get!25190 lt!2623592))) s!13591))))

(declare-fun b!7465119 () Bool)

(declare-fun res!2994487 () Bool)

(assert (=> b!7465119 (=> (not res!2994487) (not e!4454602))))

(assert (=> b!7465119 (= res!2994487 (matchR!9312 r1!5845 (_1!37576 (get!25190 lt!2623592))))))

(assert (= (and d!2298464 res!2994488) b!7465111))

(assert (= (and d!2298464 c!1379813) b!7465114))

(assert (= (and d!2298464 (not c!1379813)) b!7465115))

(assert (= (and b!7465115 c!1379812) b!7465112))

(assert (= (and b!7465115 (not c!1379812)) b!7465116))

(assert (= (and d!2298464 res!2994486) b!7465119))

(assert (= (and b!7465119 res!2994487) b!7465117))

(assert (= (and b!7465117 res!2994484) b!7465118))

(assert (= (and d!2298464 (not res!2994485)) b!7465113))

(declare-fun m!8064352 () Bool)

(assert (=> b!7465119 m!8064352))

(declare-fun m!8064354 () Bool)

(assert (=> b!7465119 m!8064354))

(assert (=> b!7465117 m!8064352))

(declare-fun m!8064356 () Bool)

(assert (=> b!7465117 m!8064356))

(declare-fun m!8064358 () Bool)

(assert (=> b!7465113 m!8064358))

(assert (=> b!7465111 m!8064294))

(assert (=> d!2298464 m!8064358))

(declare-fun m!8064360 () Bool)

(assert (=> d!2298464 m!8064360))

(assert (=> d!2298464 m!8064156))

(assert (=> b!7465116 m!8064300))

(assert (=> b!7465116 m!8064300))

(assert (=> b!7465116 m!8064302))

(assert (=> b!7465116 m!8064304))

(assert (=> b!7465116 m!8064300))

(declare-fun m!8064362 () Bool)

(assert (=> b!7465116 m!8064362))

(assert (=> b!7465118 m!8064352))

(declare-fun m!8064364 () Bool)

(assert (=> b!7465118 m!8064364))

(assert (=> b!7464701 d!2298464))

(declare-fun bs!1929946 () Bool)

(declare-fun d!2298466 () Bool)

(assert (= bs!1929946 (and d!2298466 b!7464907)))

(declare-fun lambda!461985 () Int)

(assert (=> bs!1929946 (not (= lambda!461985 lambda!461964))))

(declare-fun bs!1929947 () Bool)

(assert (= bs!1929947 (and d!2298466 b!7464701)))

(assert (=> bs!1929947 (= lambda!461985 lambda!461940)))

(declare-fun bs!1929948 () Bool)

(assert (= bs!1929948 (and d!2298466 b!7465082)))

(assert (=> bs!1929948 (not (= lambda!461985 lambda!461979))))

(declare-fun bs!1929949 () Bool)

(assert (= bs!1929949 (and d!2298466 b!7464700)))

(assert (=> bs!1929949 (not (= lambda!461985 lambda!461939))))

(declare-fun bs!1929950 () Bool)

(assert (= bs!1929950 (and d!2298466 b!7465093)))

(assert (=> bs!1929950 (not (= lambda!461985 lambda!461981))))

(declare-fun bs!1929951 () Bool)

(assert (= bs!1929951 (and d!2298466 b!7464905)))

(assert (=> bs!1929951 (not (= lambda!461985 lambda!461965))))

(declare-fun bs!1929952 () Bool)

(assert (= bs!1929952 (and d!2298466 b!7464836)))

(assert (=> bs!1929952 (not (= lambda!461985 lambda!461962))))

(assert (=> bs!1929949 (= (= r1!5845 lt!2623496) (= lambda!461985 lambda!461938))))

(assert (=> bs!1929947 (not (= lambda!461985 lambda!461941))))

(declare-fun bs!1929953 () Bool)

(assert (= bs!1929953 (and d!2298466 d!2298448)))

(assert (=> bs!1929953 (= (= r1!5845 lt!2623496) (= lambda!461985 lambda!461968))))

(declare-fun bs!1929954 () Bool)

(assert (= bs!1929954 (and d!2298466 d!2298450)))

(assert (=> bs!1929954 (not (= lambda!461985 lambda!461978))))

(assert (=> bs!1929954 (= (= r1!5845 lt!2623496) (= lambda!461985 lambda!461977))))

(declare-fun bs!1929955 () Bool)

(assert (= bs!1929955 (and d!2298466 b!7465091)))

(assert (=> bs!1929955 (not (= lambda!461985 lambda!461983))))

(declare-fun bs!1929956 () Bool)

(assert (= bs!1929956 (and d!2298466 b!7464834)))

(assert (=> bs!1929956 (not (= lambda!461985 lambda!461963))))

(declare-fun bs!1929957 () Bool)

(assert (= bs!1929957 (and d!2298466 b!7465080)))

(assert (=> bs!1929957 (not (= lambda!461985 lambda!461980))))

(assert (=> d!2298466 true))

(assert (=> d!2298466 true))

(assert (=> d!2298466 true))

(assert (=> d!2298466 (= (isDefined!13794 (findConcatSeparation!3227 r1!5845 rTail!78 Nil!72140 s!13591 s!13591)) (Exists!4167 lambda!461985))))

(declare-fun lt!2623594 () Unit!165931)

(assert (=> d!2298466 (= lt!2623594 (choose!57708 r1!5845 rTail!78 s!13591))))

(assert (=> d!2298466 (validRegex!10062 r1!5845)))

(assert (=> d!2298466 (= (lemmaFindConcatSeparationEquivalentToExists!2985 r1!5845 rTail!78 s!13591) lt!2623594)))

(declare-fun bs!1929958 () Bool)

(assert (= bs!1929958 d!2298466))

(assert (=> bs!1929958 m!8064144))

(assert (=> bs!1929958 m!8064144))

(assert (=> bs!1929958 m!8064146))

(declare-fun m!8064372 () Bool)

(assert (=> bs!1929958 m!8064372))

(declare-fun m!8064374 () Bool)

(assert (=> bs!1929958 m!8064374))

(assert (=> bs!1929958 m!8064156))

(assert (=> b!7464701 d!2298466))

(declare-fun d!2298470 () Bool)

(assert (=> d!2298470 (= (Exists!4167 lambda!461941) (choose!57707 lambda!461941))))

(declare-fun bs!1929959 () Bool)

(assert (= bs!1929959 d!2298470))

(declare-fun m!8064376 () Bool)

(assert (=> bs!1929959 m!8064376))

(assert (=> b!7464701 d!2298470))

(declare-fun d!2298472 () Bool)

(assert (=> d!2298472 (= (Exists!4167 lambda!461940) (choose!57707 lambda!461940))))

(declare-fun bs!1929960 () Bool)

(assert (= bs!1929960 d!2298472))

(declare-fun m!8064378 () Bool)

(assert (=> bs!1929960 m!8064378))

(assert (=> b!7464701 d!2298472))

(declare-fun d!2298474 () Bool)

(assert (=> d!2298474 (= (isDefined!13794 (findConcatSeparation!3227 r1!5845 rTail!78 Nil!72140 s!13591 s!13591)) (not (isEmpty!41152 (findConcatSeparation!3227 r1!5845 rTail!78 Nil!72140 s!13591 s!13591))))))

(declare-fun bs!1929961 () Bool)

(assert (= bs!1929961 d!2298474))

(assert (=> bs!1929961 m!8064144))

(declare-fun m!8064380 () Bool)

(assert (=> bs!1929961 m!8064380))

(assert (=> b!7464701 d!2298474))

(declare-fun bs!1929962 () Bool)

(declare-fun d!2298476 () Bool)

(assert (= bs!1929962 (and d!2298476 b!7464907)))

(declare-fun lambda!461986 () Int)

(assert (=> bs!1929962 (not (= lambda!461986 lambda!461964))))

(declare-fun bs!1929963 () Bool)

(assert (= bs!1929963 (and d!2298476 b!7465082)))

(assert (=> bs!1929963 (not (= lambda!461986 lambda!461979))))

(declare-fun bs!1929964 () Bool)

(assert (= bs!1929964 (and d!2298476 b!7464700)))

(assert (=> bs!1929964 (not (= lambda!461986 lambda!461939))))

(declare-fun bs!1929965 () Bool)

(assert (= bs!1929965 (and d!2298476 b!7465093)))

(assert (=> bs!1929965 (not (= lambda!461986 lambda!461981))))

(declare-fun bs!1929966 () Bool)

(assert (= bs!1929966 (and d!2298476 b!7464905)))

(assert (=> bs!1929966 (not (= lambda!461986 lambda!461965))))

(declare-fun bs!1929967 () Bool)

(assert (= bs!1929967 (and d!2298476 b!7464836)))

(assert (=> bs!1929967 (not (= lambda!461986 lambda!461962))))

(assert (=> bs!1929964 (= (= r1!5845 lt!2623496) (= lambda!461986 lambda!461938))))

(declare-fun bs!1929968 () Bool)

(assert (= bs!1929968 (and d!2298476 b!7464701)))

(assert (=> bs!1929968 (not (= lambda!461986 lambda!461941))))

(declare-fun bs!1929970 () Bool)

(assert (= bs!1929970 (and d!2298476 d!2298448)))

(assert (=> bs!1929970 (= (= r1!5845 lt!2623496) (= lambda!461986 lambda!461968))))

(declare-fun bs!1929971 () Bool)

(assert (= bs!1929971 (and d!2298476 d!2298450)))

(assert (=> bs!1929971 (not (= lambda!461986 lambda!461978))))

(assert (=> bs!1929968 (= lambda!461986 lambda!461940)))

(declare-fun bs!1929972 () Bool)

(assert (= bs!1929972 (and d!2298476 d!2298466)))

(assert (=> bs!1929972 (= lambda!461986 lambda!461985)))

(assert (=> bs!1929971 (= (= r1!5845 lt!2623496) (= lambda!461986 lambda!461977))))

(declare-fun bs!1929973 () Bool)

(assert (= bs!1929973 (and d!2298476 b!7465091)))

(assert (=> bs!1929973 (not (= lambda!461986 lambda!461983))))

(declare-fun bs!1929974 () Bool)

(assert (= bs!1929974 (and d!2298476 b!7464834)))

(assert (=> bs!1929974 (not (= lambda!461986 lambda!461963))))

(declare-fun bs!1929975 () Bool)

(assert (= bs!1929975 (and d!2298476 b!7465080)))

(assert (=> bs!1929975 (not (= lambda!461986 lambda!461980))))

(assert (=> d!2298476 true))

(assert (=> d!2298476 true))

(assert (=> d!2298476 true))

(declare-fun lambda!461987 () Int)

(assert (=> bs!1929962 (not (= lambda!461987 lambda!461964))))

(declare-fun bs!1929976 () Bool)

(assert (= bs!1929976 d!2298476))

(assert (=> bs!1929976 (not (= lambda!461987 lambda!461986))))

(assert (=> bs!1929963 (not (= lambda!461987 lambda!461979))))

(assert (=> bs!1929964 (= (= r1!5845 lt!2623496) (= lambda!461987 lambda!461939))))

(assert (=> bs!1929965 (not (= lambda!461987 lambda!461981))))

(assert (=> bs!1929966 (= (and (= r1!5845 (regOne!39608 lt!2623498)) (= rTail!78 (regTwo!39608 lt!2623498))) (= lambda!461987 lambda!461965))))

(assert (=> bs!1929967 (not (= lambda!461987 lambda!461962))))

(assert (=> bs!1929964 (not (= lambda!461987 lambda!461938))))

(assert (=> bs!1929968 (= lambda!461987 lambda!461941)))

(assert (=> bs!1929970 (not (= lambda!461987 lambda!461968))))

(assert (=> bs!1929971 (= (= r1!5845 lt!2623496) (= lambda!461987 lambda!461978))))

(assert (=> bs!1929968 (not (= lambda!461987 lambda!461940))))

(assert (=> bs!1929972 (not (= lambda!461987 lambda!461985))))

(assert (=> bs!1929971 (not (= lambda!461987 lambda!461977))))

(assert (=> bs!1929973 (= (and (= r1!5845 (regOne!39608 lt!2623486)) (= rTail!78 (regTwo!39608 lt!2623486))) (= lambda!461987 lambda!461983))))

(assert (=> bs!1929974 (= (and (= r1!5845 (regOne!39608 lt!2623491)) (= rTail!78 (regTwo!39608 lt!2623491))) (= lambda!461987 lambda!461963))))

(assert (=> bs!1929975 (= (and (= r1!5845 (regOne!39608 lt!2623492)) (= rTail!78 (regTwo!39608 lt!2623492))) (= lambda!461987 lambda!461980))))

(assert (=> d!2298476 true))

(assert (=> d!2298476 true))

(assert (=> d!2298476 true))

(assert (=> d!2298476 (= (Exists!4167 lambda!461986) (Exists!4167 lambda!461987))))

(declare-fun lt!2623596 () Unit!165931)

(assert (=> d!2298476 (= lt!2623596 (choose!57709 r1!5845 rTail!78 s!13591))))

(assert (=> d!2298476 (validRegex!10062 r1!5845)))

(assert (=> d!2298476 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2501 r1!5845 rTail!78 s!13591) lt!2623596)))

(declare-fun m!8064392 () Bool)

(assert (=> bs!1929976 m!8064392))

(declare-fun m!8064394 () Bool)

(assert (=> bs!1929976 m!8064394))

(declare-fun m!8064396 () Bool)

(assert (=> bs!1929976 m!8064396))

(assert (=> bs!1929976 m!8064156))

(assert (=> b!7464701 d!2298476))

(declare-fun b!7465153 () Bool)

(declare-fun e!4454622 () List!72264)

(assert (=> b!7465153 (= e!4454622 s!13591)))

(declare-fun b!7465154 () Bool)

(assert (=> b!7465154 (= e!4454622 (Cons!72140 (h!78588 Nil!72140) (++!17190 (t!386833 Nil!72140) s!13591)))))

(declare-fun b!7465156 () Bool)

(declare-fun e!4454623 () Bool)

(declare-fun lt!2623600 () List!72264)

(assert (=> b!7465156 (= e!4454623 (or (not (= s!13591 Nil!72140)) (= lt!2623600 Nil!72140)))))

(declare-fun b!7465155 () Bool)

(declare-fun res!2994505 () Bool)

(assert (=> b!7465155 (=> (not res!2994505) (not e!4454623))))

(declare-fun size!42195 (List!72264) Int)

(assert (=> b!7465155 (= res!2994505 (= (size!42195 lt!2623600) (+ (size!42195 Nil!72140) (size!42195 s!13591))))))

(declare-fun d!2298482 () Bool)

(assert (=> d!2298482 e!4454623))

(declare-fun res!2994504 () Bool)

(assert (=> d!2298482 (=> (not res!2994504) (not e!4454623))))

(declare-fun content!15259 (List!72264) (Set C!39370))

(assert (=> d!2298482 (= res!2994504 (= (content!15259 lt!2623600) (set.union (content!15259 Nil!72140) (content!15259 s!13591))))))

(assert (=> d!2298482 (= lt!2623600 e!4454622)))

(declare-fun c!1379823 () Bool)

(assert (=> d!2298482 (= c!1379823 (is-Nil!72140 Nil!72140))))

(assert (=> d!2298482 (= (++!17190 Nil!72140 s!13591) lt!2623600)))

(assert (= (and d!2298482 c!1379823) b!7465153))

(assert (= (and d!2298482 (not c!1379823)) b!7465154))

(assert (= (and d!2298482 res!2994504) b!7465155))

(assert (= (and b!7465155 res!2994505) b!7465156))

(declare-fun m!8064398 () Bool)

(assert (=> b!7465154 m!8064398))

(declare-fun m!8064400 () Bool)

(assert (=> b!7465155 m!8064400))

(declare-fun m!8064402 () Bool)

(assert (=> b!7465155 m!8064402))

(declare-fun m!8064404 () Bool)

(assert (=> b!7465155 m!8064404))

(declare-fun m!8064406 () Bool)

(assert (=> d!2298482 m!8064406))

(declare-fun m!8064408 () Bool)

(assert (=> d!2298482 m!8064408))

(declare-fun m!8064410 () Bool)

(assert (=> d!2298482 m!8064410))

(assert (=> b!7464701 d!2298482))

(declare-fun b!7465157 () Bool)

(declare-fun e!4454627 () Bool)

(declare-fun e!4454628 () Bool)

(assert (=> b!7465157 (= e!4454627 e!4454628)))

(declare-fun c!1379825 () Bool)

(assert (=> b!7465157 (= c!1379825 (is-Star!19548 r1!5845))))

(declare-fun b!7465158 () Bool)

(declare-fun res!2994506 () Bool)

(declare-fun e!4454625 () Bool)

(assert (=> b!7465158 (=> (not res!2994506) (not e!4454625))))

(declare-fun call!685700 () Bool)

(assert (=> b!7465158 (= res!2994506 call!685700)))

(declare-fun e!4454626 () Bool)

(assert (=> b!7465158 (= e!4454626 e!4454625)))

(declare-fun d!2298484 () Bool)

(declare-fun res!2994508 () Bool)

(assert (=> d!2298484 (=> res!2994508 e!4454627)))

(assert (=> d!2298484 (= res!2994508 (is-ElementMatch!19548 r1!5845))))

(assert (=> d!2298484 (= (validRegex!10062 r1!5845) e!4454627)))

(declare-fun b!7465159 () Bool)

(declare-fun res!2994509 () Bool)

(declare-fun e!4454630 () Bool)

(assert (=> b!7465159 (=> res!2994509 e!4454630)))

(assert (=> b!7465159 (= res!2994509 (not (is-Concat!28393 r1!5845)))))

(assert (=> b!7465159 (= e!4454626 e!4454630)))

(declare-fun b!7465160 () Bool)

(declare-fun call!685702 () Bool)

(assert (=> b!7465160 (= e!4454625 call!685702)))

(declare-fun bm!685695 () Bool)

(declare-fun c!1379824 () Bool)

(assert (=> bm!685695 (= call!685700 (validRegex!10062 (ite c!1379824 (regOne!39609 r1!5845) (regOne!39608 r1!5845))))))

(declare-fun call!685701 () Bool)

(declare-fun bm!685696 () Bool)

(assert (=> bm!685696 (= call!685701 (validRegex!10062 (ite c!1379825 (reg!19877 r1!5845) (ite c!1379824 (regTwo!39609 r1!5845) (regTwo!39608 r1!5845)))))))

(declare-fun b!7465161 () Bool)

(declare-fun e!4454629 () Bool)

(assert (=> b!7465161 (= e!4454629 call!685702)))

(declare-fun b!7465162 () Bool)

(declare-fun e!4454624 () Bool)

(assert (=> b!7465162 (= e!4454628 e!4454624)))

(declare-fun res!2994510 () Bool)

(assert (=> b!7465162 (= res!2994510 (not (nullable!8518 (reg!19877 r1!5845))))))

(assert (=> b!7465162 (=> (not res!2994510) (not e!4454624))))

(declare-fun b!7465163 () Bool)

(assert (=> b!7465163 (= e!4454624 call!685701)))

(declare-fun b!7465164 () Bool)

(assert (=> b!7465164 (= e!4454628 e!4454626)))

(assert (=> b!7465164 (= c!1379824 (is-Union!19548 r1!5845))))

(declare-fun bm!685697 () Bool)

(assert (=> bm!685697 (= call!685702 call!685701)))

(declare-fun b!7465165 () Bool)

(assert (=> b!7465165 (= e!4454630 e!4454629)))

(declare-fun res!2994507 () Bool)

(assert (=> b!7465165 (=> (not res!2994507) (not e!4454629))))

(assert (=> b!7465165 (= res!2994507 call!685700)))

(assert (= (and d!2298484 (not res!2994508)) b!7465157))

(assert (= (and b!7465157 c!1379825) b!7465162))

(assert (= (and b!7465157 (not c!1379825)) b!7465164))

(assert (= (and b!7465162 res!2994510) b!7465163))

(assert (= (and b!7465164 c!1379824) b!7465158))

(assert (= (and b!7465164 (not c!1379824)) b!7465159))

(assert (= (and b!7465158 res!2994506) b!7465160))

(assert (= (and b!7465159 (not res!2994509)) b!7465165))

(assert (= (and b!7465165 res!2994507) b!7465161))

(assert (= (or b!7465160 b!7465161) bm!685697))

(assert (= (or b!7465158 b!7465165) bm!685695))

(assert (= (or b!7465163 bm!685697) bm!685696))

(declare-fun m!8064418 () Bool)

(assert (=> bm!685695 m!8064418))

(declare-fun m!8064420 () Bool)

(assert (=> bm!685696 m!8064420))

(declare-fun m!8064422 () Bool)

(assert (=> b!7465162 m!8064422))

(assert (=> start!724032 d!2298484))

(declare-fun b!7465166 () Bool)

(declare-fun e!4454634 () Bool)

(declare-fun e!4454635 () Bool)

(assert (=> b!7465166 (= e!4454634 e!4454635)))

(declare-fun c!1379827 () Bool)

(assert (=> b!7465166 (= c!1379827 (is-Star!19548 r2!5783))))

(declare-fun b!7465167 () Bool)

(declare-fun res!2994511 () Bool)

(declare-fun e!4454632 () Bool)

(assert (=> b!7465167 (=> (not res!2994511) (not e!4454632))))

(declare-fun call!685703 () Bool)

(assert (=> b!7465167 (= res!2994511 call!685703)))

(declare-fun e!4454633 () Bool)

(assert (=> b!7465167 (= e!4454633 e!4454632)))

(declare-fun d!2298488 () Bool)

(declare-fun res!2994513 () Bool)

(assert (=> d!2298488 (=> res!2994513 e!4454634)))

(assert (=> d!2298488 (= res!2994513 (is-ElementMatch!19548 r2!5783))))

(assert (=> d!2298488 (= (validRegex!10062 r2!5783) e!4454634)))

(declare-fun b!7465168 () Bool)

(declare-fun res!2994514 () Bool)

(declare-fun e!4454637 () Bool)

(assert (=> b!7465168 (=> res!2994514 e!4454637)))

(assert (=> b!7465168 (= res!2994514 (not (is-Concat!28393 r2!5783)))))

(assert (=> b!7465168 (= e!4454633 e!4454637)))

(declare-fun b!7465169 () Bool)

(declare-fun call!685705 () Bool)

(assert (=> b!7465169 (= e!4454632 call!685705)))

(declare-fun bm!685698 () Bool)

(declare-fun c!1379826 () Bool)

(assert (=> bm!685698 (= call!685703 (validRegex!10062 (ite c!1379826 (regOne!39609 r2!5783) (regOne!39608 r2!5783))))))

(declare-fun bm!685699 () Bool)

(declare-fun call!685704 () Bool)

(assert (=> bm!685699 (= call!685704 (validRegex!10062 (ite c!1379827 (reg!19877 r2!5783) (ite c!1379826 (regTwo!39609 r2!5783) (regTwo!39608 r2!5783)))))))

(declare-fun b!7465170 () Bool)

(declare-fun e!4454636 () Bool)

(assert (=> b!7465170 (= e!4454636 call!685705)))

(declare-fun b!7465171 () Bool)

(declare-fun e!4454631 () Bool)

(assert (=> b!7465171 (= e!4454635 e!4454631)))

(declare-fun res!2994515 () Bool)

(assert (=> b!7465171 (= res!2994515 (not (nullable!8518 (reg!19877 r2!5783))))))

(assert (=> b!7465171 (=> (not res!2994515) (not e!4454631))))

(declare-fun b!7465172 () Bool)

(assert (=> b!7465172 (= e!4454631 call!685704)))

(declare-fun b!7465173 () Bool)

(assert (=> b!7465173 (= e!4454635 e!4454633)))

(assert (=> b!7465173 (= c!1379826 (is-Union!19548 r2!5783))))

(declare-fun bm!685700 () Bool)

(assert (=> bm!685700 (= call!685705 call!685704)))

(declare-fun b!7465174 () Bool)

(assert (=> b!7465174 (= e!4454637 e!4454636)))

(declare-fun res!2994512 () Bool)

(assert (=> b!7465174 (=> (not res!2994512) (not e!4454636))))

(assert (=> b!7465174 (= res!2994512 call!685703)))

(assert (= (and d!2298488 (not res!2994513)) b!7465166))

(assert (= (and b!7465166 c!1379827) b!7465171))

(assert (= (and b!7465166 (not c!1379827)) b!7465173))

(assert (= (and b!7465171 res!2994515) b!7465172))

(assert (= (and b!7465173 c!1379826) b!7465167))

(assert (= (and b!7465173 (not c!1379826)) b!7465168))

(assert (= (and b!7465167 res!2994511) b!7465169))

(assert (= (and b!7465168 (not res!2994514)) b!7465174))

(assert (= (and b!7465174 res!2994512) b!7465170))

(assert (= (or b!7465169 b!7465170) bm!685700))

(assert (= (or b!7465167 b!7465174) bm!685698))

(assert (= (or b!7465172 bm!685700) bm!685699))

(declare-fun m!8064424 () Bool)

(assert (=> bm!685698 m!8064424))

(declare-fun m!8064426 () Bool)

(assert (=> bm!685699 m!8064426))

(declare-fun m!8064428 () Bool)

(assert (=> b!7465171 m!8064428))

(assert (=> b!7464706 d!2298488))

(declare-fun e!4454640 () Bool)

(assert (=> b!7464708 (= tp!2163905 e!4454640)))

(declare-fun b!7465186 () Bool)

(declare-fun tp!2163974 () Bool)

(declare-fun tp!2163977 () Bool)

(assert (=> b!7465186 (= e!4454640 (and tp!2163974 tp!2163977))))

(declare-fun b!7465187 () Bool)

(declare-fun tp!2163975 () Bool)

(assert (=> b!7465187 (= e!4454640 tp!2163975)))

(declare-fun b!7465188 () Bool)

(declare-fun tp!2163978 () Bool)

(declare-fun tp!2163976 () Bool)

(assert (=> b!7465188 (= e!4454640 (and tp!2163978 tp!2163976))))

(declare-fun b!7465185 () Bool)

(assert (=> b!7465185 (= e!4454640 tp_is_empty!49385)))

(assert (= (and b!7464708 (is-ElementMatch!19548 (regOne!39609 rTail!78))) b!7465185))

(assert (= (and b!7464708 (is-Concat!28393 (regOne!39609 rTail!78))) b!7465186))

(assert (= (and b!7464708 (is-Star!19548 (regOne!39609 rTail!78))) b!7465187))

(assert (= (and b!7464708 (is-Union!19548 (regOne!39609 rTail!78))) b!7465188))

(declare-fun e!4454641 () Bool)

(assert (=> b!7464708 (= tp!2163911 e!4454641)))

(declare-fun b!7465190 () Bool)

(declare-fun tp!2163979 () Bool)

(declare-fun tp!2163982 () Bool)

(assert (=> b!7465190 (= e!4454641 (and tp!2163979 tp!2163982))))

(declare-fun b!7465191 () Bool)

(declare-fun tp!2163980 () Bool)

(assert (=> b!7465191 (= e!4454641 tp!2163980)))

(declare-fun b!7465192 () Bool)

(declare-fun tp!2163983 () Bool)

(declare-fun tp!2163981 () Bool)

(assert (=> b!7465192 (= e!4454641 (and tp!2163983 tp!2163981))))

(declare-fun b!7465189 () Bool)

(assert (=> b!7465189 (= e!4454641 tp_is_empty!49385)))

(assert (= (and b!7464708 (is-ElementMatch!19548 (regTwo!39609 rTail!78))) b!7465189))

(assert (= (and b!7464708 (is-Concat!28393 (regTwo!39609 rTail!78))) b!7465190))

(assert (= (and b!7464708 (is-Star!19548 (regTwo!39609 rTail!78))) b!7465191))

(assert (= (and b!7464708 (is-Union!19548 (regTwo!39609 rTail!78))) b!7465192))

(declare-fun e!4454642 () Bool)

(assert (=> b!7464697 (= tp!2163901 e!4454642)))

(declare-fun b!7465194 () Bool)

(declare-fun tp!2163984 () Bool)

(declare-fun tp!2163987 () Bool)

(assert (=> b!7465194 (= e!4454642 (and tp!2163984 tp!2163987))))

(declare-fun b!7465195 () Bool)

(declare-fun tp!2163985 () Bool)

(assert (=> b!7465195 (= e!4454642 tp!2163985)))

(declare-fun b!7465196 () Bool)

(declare-fun tp!2163988 () Bool)

(declare-fun tp!2163986 () Bool)

(assert (=> b!7465196 (= e!4454642 (and tp!2163988 tp!2163986))))

(declare-fun b!7465193 () Bool)

(assert (=> b!7465193 (= e!4454642 tp_is_empty!49385)))

(assert (= (and b!7464697 (is-ElementMatch!19548 (regOne!39608 rTail!78))) b!7465193))

(assert (= (and b!7464697 (is-Concat!28393 (regOne!39608 rTail!78))) b!7465194))

(assert (= (and b!7464697 (is-Star!19548 (regOne!39608 rTail!78))) b!7465195))

(assert (= (and b!7464697 (is-Union!19548 (regOne!39608 rTail!78))) b!7465196))

(declare-fun e!4454643 () Bool)

(assert (=> b!7464697 (= tp!2163900 e!4454643)))

(declare-fun b!7465198 () Bool)

(declare-fun tp!2163989 () Bool)

(declare-fun tp!2163992 () Bool)

(assert (=> b!7465198 (= e!4454643 (and tp!2163989 tp!2163992))))

(declare-fun b!7465199 () Bool)

(declare-fun tp!2163990 () Bool)

(assert (=> b!7465199 (= e!4454643 tp!2163990)))

(declare-fun b!7465200 () Bool)

(declare-fun tp!2163993 () Bool)

(declare-fun tp!2163991 () Bool)

(assert (=> b!7465200 (= e!4454643 (and tp!2163993 tp!2163991))))

(declare-fun b!7465197 () Bool)

(assert (=> b!7465197 (= e!4454643 tp_is_empty!49385)))

(assert (= (and b!7464697 (is-ElementMatch!19548 (regTwo!39608 rTail!78))) b!7465197))

(assert (= (and b!7464697 (is-Concat!28393 (regTwo!39608 rTail!78))) b!7465198))

(assert (= (and b!7464697 (is-Star!19548 (regTwo!39608 rTail!78))) b!7465199))

(assert (= (and b!7464697 (is-Union!19548 (regTwo!39608 rTail!78))) b!7465200))

(declare-fun e!4454644 () Bool)

(assert (=> b!7464702 (= tp!2163904 e!4454644)))

(declare-fun b!7465202 () Bool)

(declare-fun tp!2163994 () Bool)

(declare-fun tp!2163997 () Bool)

(assert (=> b!7465202 (= e!4454644 (and tp!2163994 tp!2163997))))

(declare-fun b!7465203 () Bool)

(declare-fun tp!2163995 () Bool)

(assert (=> b!7465203 (= e!4454644 tp!2163995)))

(declare-fun b!7465204 () Bool)

(declare-fun tp!2163998 () Bool)

(declare-fun tp!2163996 () Bool)

(assert (=> b!7465204 (= e!4454644 (and tp!2163998 tp!2163996))))

(declare-fun b!7465201 () Bool)

(assert (=> b!7465201 (= e!4454644 tp_is_empty!49385)))

(assert (= (and b!7464702 (is-ElementMatch!19548 (reg!19877 rTail!78))) b!7465201))

(assert (= (and b!7464702 (is-Concat!28393 (reg!19877 rTail!78))) b!7465202))

(assert (= (and b!7464702 (is-Star!19548 (reg!19877 rTail!78))) b!7465203))

(assert (= (and b!7464702 (is-Union!19548 (reg!19877 rTail!78))) b!7465204))

(declare-fun e!4454645 () Bool)

(assert (=> b!7464704 (= tp!2163909 e!4454645)))

(declare-fun b!7465206 () Bool)

(declare-fun tp!2163999 () Bool)

(declare-fun tp!2164002 () Bool)

(assert (=> b!7465206 (= e!4454645 (and tp!2163999 tp!2164002))))

(declare-fun b!7465207 () Bool)

(declare-fun tp!2164000 () Bool)

(assert (=> b!7465207 (= e!4454645 tp!2164000)))

(declare-fun b!7465208 () Bool)

(declare-fun tp!2164003 () Bool)

(declare-fun tp!2164001 () Bool)

(assert (=> b!7465208 (= e!4454645 (and tp!2164003 tp!2164001))))

(declare-fun b!7465205 () Bool)

(assert (=> b!7465205 (= e!4454645 tp_is_empty!49385)))

(assert (= (and b!7464704 (is-ElementMatch!19548 (reg!19877 r2!5783))) b!7465205))

(assert (= (and b!7464704 (is-Concat!28393 (reg!19877 r2!5783))) b!7465206))

(assert (= (and b!7464704 (is-Star!19548 (reg!19877 r2!5783))) b!7465207))

(assert (= (and b!7464704 (is-Union!19548 (reg!19877 r2!5783))) b!7465208))

(declare-fun e!4454646 () Bool)

(assert (=> b!7464709 (= tp!2163912 e!4454646)))

(declare-fun b!7465210 () Bool)

(declare-fun tp!2164004 () Bool)

(declare-fun tp!2164007 () Bool)

(assert (=> b!7465210 (= e!4454646 (and tp!2164004 tp!2164007))))

(declare-fun b!7465211 () Bool)

(declare-fun tp!2164005 () Bool)

(assert (=> b!7465211 (= e!4454646 tp!2164005)))

(declare-fun b!7465212 () Bool)

(declare-fun tp!2164008 () Bool)

(declare-fun tp!2164006 () Bool)

(assert (=> b!7465212 (= e!4454646 (and tp!2164008 tp!2164006))))

(declare-fun b!7465209 () Bool)

(assert (=> b!7465209 (= e!4454646 tp_is_empty!49385)))

(assert (= (and b!7464709 (is-ElementMatch!19548 (regOne!39608 r2!5783))) b!7465209))

(assert (= (and b!7464709 (is-Concat!28393 (regOne!39608 r2!5783))) b!7465210))

(assert (= (and b!7464709 (is-Star!19548 (regOne!39608 r2!5783))) b!7465211))

(assert (= (and b!7464709 (is-Union!19548 (regOne!39608 r2!5783))) b!7465212))

(declare-fun e!4454647 () Bool)

(assert (=> b!7464709 (= tp!2163908 e!4454647)))

(declare-fun b!7465214 () Bool)

(declare-fun tp!2164009 () Bool)

(declare-fun tp!2164012 () Bool)

(assert (=> b!7465214 (= e!4454647 (and tp!2164009 tp!2164012))))

(declare-fun b!7465215 () Bool)

(declare-fun tp!2164010 () Bool)

(assert (=> b!7465215 (= e!4454647 tp!2164010)))

(declare-fun b!7465216 () Bool)

(declare-fun tp!2164013 () Bool)

(declare-fun tp!2164011 () Bool)

(assert (=> b!7465216 (= e!4454647 (and tp!2164013 tp!2164011))))

(declare-fun b!7465213 () Bool)

(assert (=> b!7465213 (= e!4454647 tp_is_empty!49385)))

(assert (= (and b!7464709 (is-ElementMatch!19548 (regTwo!39608 r2!5783))) b!7465213))

(assert (= (and b!7464709 (is-Concat!28393 (regTwo!39608 r2!5783))) b!7465214))

(assert (= (and b!7464709 (is-Star!19548 (regTwo!39608 r2!5783))) b!7465215))

(assert (= (and b!7464709 (is-Union!19548 (regTwo!39608 r2!5783))) b!7465216))

(declare-fun e!4454648 () Bool)

(assert (=> b!7464698 (= tp!2163907 e!4454648)))

(declare-fun b!7465218 () Bool)

(declare-fun tp!2164014 () Bool)

(declare-fun tp!2164017 () Bool)

(assert (=> b!7465218 (= e!4454648 (and tp!2164014 tp!2164017))))

(declare-fun b!7465219 () Bool)

(declare-fun tp!2164015 () Bool)

(assert (=> b!7465219 (= e!4454648 tp!2164015)))

(declare-fun b!7465220 () Bool)

(declare-fun tp!2164018 () Bool)

(declare-fun tp!2164016 () Bool)

(assert (=> b!7465220 (= e!4454648 (and tp!2164018 tp!2164016))))

(declare-fun b!7465217 () Bool)

(assert (=> b!7465217 (= e!4454648 tp_is_empty!49385)))

(assert (= (and b!7464698 (is-ElementMatch!19548 (regOne!39609 r2!5783))) b!7465217))

(assert (= (and b!7464698 (is-Concat!28393 (regOne!39609 r2!5783))) b!7465218))

(assert (= (and b!7464698 (is-Star!19548 (regOne!39609 r2!5783))) b!7465219))

(assert (= (and b!7464698 (is-Union!19548 (regOne!39609 r2!5783))) b!7465220))

(declare-fun e!4454649 () Bool)

(assert (=> b!7464698 (= tp!2163915 e!4454649)))

(declare-fun b!7465222 () Bool)

(declare-fun tp!2164019 () Bool)

(declare-fun tp!2164022 () Bool)

(assert (=> b!7465222 (= e!4454649 (and tp!2164019 tp!2164022))))

(declare-fun b!7465223 () Bool)

(declare-fun tp!2164020 () Bool)

(assert (=> b!7465223 (= e!4454649 tp!2164020)))

(declare-fun b!7465224 () Bool)

(declare-fun tp!2164023 () Bool)

(declare-fun tp!2164021 () Bool)

(assert (=> b!7465224 (= e!4454649 (and tp!2164023 tp!2164021))))

(declare-fun b!7465221 () Bool)

(assert (=> b!7465221 (= e!4454649 tp_is_empty!49385)))

(assert (= (and b!7464698 (is-ElementMatch!19548 (regTwo!39609 r2!5783))) b!7465221))

(assert (= (and b!7464698 (is-Concat!28393 (regTwo!39609 r2!5783))) b!7465222))

(assert (= (and b!7464698 (is-Star!19548 (regTwo!39609 r2!5783))) b!7465223))

(assert (= (and b!7464698 (is-Union!19548 (regTwo!39609 r2!5783))) b!7465224))

(declare-fun e!4454650 () Bool)

(assert (=> b!7464705 (= tp!2163913 e!4454650)))

(declare-fun b!7465226 () Bool)

(declare-fun tp!2164024 () Bool)

(declare-fun tp!2164027 () Bool)

(assert (=> b!7465226 (= e!4454650 (and tp!2164024 tp!2164027))))

(declare-fun b!7465227 () Bool)

(declare-fun tp!2164025 () Bool)

(assert (=> b!7465227 (= e!4454650 tp!2164025)))

(declare-fun b!7465228 () Bool)

(declare-fun tp!2164028 () Bool)

(declare-fun tp!2164026 () Bool)

(assert (=> b!7465228 (= e!4454650 (and tp!2164028 tp!2164026))))

(declare-fun b!7465225 () Bool)

(assert (=> b!7465225 (= e!4454650 tp_is_empty!49385)))

(assert (= (and b!7464705 (is-ElementMatch!19548 (regOne!39608 r1!5845))) b!7465225))

(assert (= (and b!7464705 (is-Concat!28393 (regOne!39608 r1!5845))) b!7465226))

(assert (= (and b!7464705 (is-Star!19548 (regOne!39608 r1!5845))) b!7465227))

(assert (= (and b!7464705 (is-Union!19548 (regOne!39608 r1!5845))) b!7465228))

(declare-fun e!4454651 () Bool)

(assert (=> b!7464705 (= tp!2163906 e!4454651)))

(declare-fun b!7465230 () Bool)

(declare-fun tp!2164029 () Bool)

(declare-fun tp!2164032 () Bool)

(assert (=> b!7465230 (= e!4454651 (and tp!2164029 tp!2164032))))

(declare-fun b!7465231 () Bool)

(declare-fun tp!2164030 () Bool)

(assert (=> b!7465231 (= e!4454651 tp!2164030)))

(declare-fun b!7465232 () Bool)

(declare-fun tp!2164033 () Bool)

(declare-fun tp!2164031 () Bool)

(assert (=> b!7465232 (= e!4454651 (and tp!2164033 tp!2164031))))

(declare-fun b!7465229 () Bool)

(assert (=> b!7465229 (= e!4454651 tp_is_empty!49385)))

(assert (= (and b!7464705 (is-ElementMatch!19548 (regTwo!39608 r1!5845))) b!7465229))

(assert (= (and b!7464705 (is-Concat!28393 (regTwo!39608 r1!5845))) b!7465230))

(assert (= (and b!7464705 (is-Star!19548 (regTwo!39608 r1!5845))) b!7465231))

(assert (= (and b!7464705 (is-Union!19548 (regTwo!39608 r1!5845))) b!7465232))

(declare-fun b!7465237 () Bool)

(declare-fun e!4454654 () Bool)

(declare-fun tp!2164036 () Bool)

(assert (=> b!7465237 (= e!4454654 (and tp_is_empty!49385 tp!2164036))))

(assert (=> b!7464710 (= tp!2163910 e!4454654)))

(assert (= (and b!7464710 (is-Cons!72140 (t!386833 s!13591))) b!7465237))

(declare-fun e!4454655 () Bool)

(assert (=> b!7464694 (= tp!2163902 e!4454655)))

(declare-fun b!7465239 () Bool)

(declare-fun tp!2164037 () Bool)

(declare-fun tp!2164040 () Bool)

(assert (=> b!7465239 (= e!4454655 (and tp!2164037 tp!2164040))))

(declare-fun b!7465240 () Bool)

(declare-fun tp!2164038 () Bool)

(assert (=> b!7465240 (= e!4454655 tp!2164038)))

(declare-fun b!7465241 () Bool)

(declare-fun tp!2164041 () Bool)

(declare-fun tp!2164039 () Bool)

(assert (=> b!7465241 (= e!4454655 (and tp!2164041 tp!2164039))))

(declare-fun b!7465238 () Bool)

(assert (=> b!7465238 (= e!4454655 tp_is_empty!49385)))

(assert (= (and b!7464694 (is-ElementMatch!19548 (regOne!39609 r1!5845))) b!7465238))

(assert (= (and b!7464694 (is-Concat!28393 (regOne!39609 r1!5845))) b!7465239))

(assert (= (and b!7464694 (is-Star!19548 (regOne!39609 r1!5845))) b!7465240))

(assert (= (and b!7464694 (is-Union!19548 (regOne!39609 r1!5845))) b!7465241))

(declare-fun e!4454656 () Bool)

(assert (=> b!7464694 (= tp!2163903 e!4454656)))

(declare-fun b!7465243 () Bool)

(declare-fun tp!2164042 () Bool)

(declare-fun tp!2164045 () Bool)

(assert (=> b!7465243 (= e!4454656 (and tp!2164042 tp!2164045))))

(declare-fun b!7465244 () Bool)

(declare-fun tp!2164043 () Bool)

(assert (=> b!7465244 (= e!4454656 tp!2164043)))

(declare-fun b!7465245 () Bool)

(declare-fun tp!2164046 () Bool)

(declare-fun tp!2164044 () Bool)

(assert (=> b!7465245 (= e!4454656 (and tp!2164046 tp!2164044))))

(declare-fun b!7465242 () Bool)

(assert (=> b!7465242 (= e!4454656 tp_is_empty!49385)))

(assert (= (and b!7464694 (is-ElementMatch!19548 (regTwo!39609 r1!5845))) b!7465242))

(assert (= (and b!7464694 (is-Concat!28393 (regTwo!39609 r1!5845))) b!7465243))

(assert (= (and b!7464694 (is-Star!19548 (regTwo!39609 r1!5845))) b!7465244))

(assert (= (and b!7464694 (is-Union!19548 (regTwo!39609 r1!5845))) b!7465245))

(declare-fun e!4454657 () Bool)

(assert (=> b!7464696 (= tp!2163914 e!4454657)))

(declare-fun b!7465247 () Bool)

(declare-fun tp!2164047 () Bool)

(declare-fun tp!2164050 () Bool)

(assert (=> b!7465247 (= e!4454657 (and tp!2164047 tp!2164050))))

(declare-fun b!7465248 () Bool)

(declare-fun tp!2164048 () Bool)

(assert (=> b!7465248 (= e!4454657 tp!2164048)))

(declare-fun b!7465249 () Bool)

(declare-fun tp!2164051 () Bool)

(declare-fun tp!2164049 () Bool)

(assert (=> b!7465249 (= e!4454657 (and tp!2164051 tp!2164049))))

(declare-fun b!7465246 () Bool)

(assert (=> b!7465246 (= e!4454657 tp_is_empty!49385)))

(assert (= (and b!7464696 (is-ElementMatch!19548 (reg!19877 r1!5845))) b!7465246))

(assert (= (and b!7464696 (is-Concat!28393 (reg!19877 r1!5845))) b!7465247))

(assert (= (and b!7464696 (is-Star!19548 (reg!19877 r1!5845))) b!7465248))

(assert (= (and b!7464696 (is-Union!19548 (reg!19877 r1!5845))) b!7465249))

(push 1)

(assert (not b!7465196))

(assert (not b!7465003))

(assert (not b!7465202))

(assert (not b!7465231))

(assert (not b!7465111))

(assert (not bm!685695))

(assert (not d!2298440))

(assert (not b!7465218))

(assert (not b!7465066))

(assert (not b!7465075))

(assert (not b!7465216))

(assert (not b!7465207))

(assert (not d!2298464))

(assert (not bm!685665))

(assert (not d!2298428))

(assert (not b!7465078))

(assert (not d!2298426))

(assert (not d!2298466))

(assert (not b!7465227))

(assert (not b!7465248))

(assert (not d!2298456))

(assert (not bm!685687))

(assert (not b!7464997))

(assert (not b!7465222))

(assert (not b!7464884))

(assert (not b!7465171))

(assert (not b!7465204))

(assert (not b!7465214))

(assert (not b!7465119))

(assert (not d!2298420))

(assert (not b!7464882))

(assert (not bm!685698))

(assert (not b!7465215))

(assert (not b!7465228))

(assert (not b!7464832))

(assert (not b!7465249))

(assert (not bm!685688))

(assert (not b!7464898))

(assert (not b!7465206))

(assert (not b!7465065))

(assert (not b!7464835))

(assert (not b!7465243))

(assert (not b!7465188))

(assert (not b!7465220))

(assert (not d!2298438))

(assert (not b!7465226))

(assert (not b!7465198))

(assert (not b!7465002))

(assert (not d!2298474))

(assert (not b!7465005))

(assert (not b!7465244))

(assert (not d!2298442))

(assert (not d!2298482))

(assert (not b!7464961))

(assert (not d!2298470))

(assert (not bm!685677))

(assert (not b!7464872))

(assert (not bm!685666))

(assert (not d!2298472))

(assert (not b!7464906))

(assert (not b!7464873))

(assert (not b!7465077))

(assert (not b!7465191))

(assert (not b!7465194))

(assert (not b!7465092))

(assert (not b!7465187))

(assert (not b!7465057))

(assert (not bm!685686))

(assert (not b!7464999))

(assert (not b!7464887))

(assert (not b!7464877))

(assert (not b!7465071))

(assert (not b!7465061))

(assert (not d!2298460))

(assert (not d!2298452))

(assert tp_is_empty!49385)

(assert (not b!7465190))

(assert (not d!2298432))

(assert (not d!2298454))

(assert (not b!7465200))

(assert (not d!2298448))

(assert (not bm!685660))

(assert (not b!7464892))

(assert (not b!7464878))

(assert (not b!7464896))

(assert (not b!7465237))

(assert (not b!7464886))

(assert (not b!7465052))

(assert (not b!7465056))

(assert (not b!7464891))

(assert (not bm!685664))

(assert (not b!7465240))

(assert (not b!7464903))

(assert (not b!7465154))

(assert (not b!7465245))

(assert (not b!7465195))

(assert (not bm!685667))

(assert (not b!7465212))

(assert (not b!7465199))

(assert (not d!2298450))

(assert (not bm!685676))

(assert (not bm!685683))

(assert (not b!7465192))

(assert (not b!7465113))

(assert (not b!7465203))

(assert (not b!7465224))

(assert (not b!7465232))

(assert (not b!7465219))

(assert (not b!7465223))

(assert (not d!2298476))

(assert (not b!7465247))

(assert (not bm!685661))

(assert (not b!7465239))

(assert (not bm!685682))

(assert (not b!7465241))

(assert (not b!7465155))

(assert (not b!7465208))

(assert (not b!7465063))

(assert (not b!7465186))

(assert (not b!7465118))

(assert (not bm!685699))

(assert (not b!7465051))

(assert (not b!7465081))

(assert (not bm!685689))

(assert (not b!7465162))

(assert (not bm!685696))

(assert (not b!7465230))

(assert (not d!2298436))

(assert (not b!7465070))

(assert (not b!7465117))

(assert (not b!7465210))

(assert (not b!7465116))

(assert (not b!7465004))

(assert (not b!7465089))

(assert (not b!7465211))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

