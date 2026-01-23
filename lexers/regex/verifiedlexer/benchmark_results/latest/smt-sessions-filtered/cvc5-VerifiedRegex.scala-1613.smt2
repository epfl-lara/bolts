; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!82888 () Bool)

(assert start!82888)

(declare-fun b!923478 () Bool)

(assert (=> b!923478 true))

(assert (=> b!923478 true))

(declare-fun lambda!30256 () Int)

(declare-fun lambda!30255 () Int)

(assert (=> b!923478 (not (= lambda!30256 lambda!30255))))

(assert (=> b!923478 true))

(assert (=> b!923478 true))

(declare-fun bs!237184 () Bool)

(declare-fun b!923483 () Bool)

(assert (= bs!237184 (and b!923483 b!923478)))

(declare-fun lambda!30257 () Int)

(declare-datatypes ((C!5538 0))(
  ( (C!5539 (val!3017 Int)) )
))
(declare-datatypes ((Regex!2484 0))(
  ( (ElementMatch!2484 (c!149905 C!5538)) (Concat!4317 (regOne!5480 Regex!2484) (regTwo!5480 Regex!2484)) (EmptyExpr!2484) (Star!2484 (reg!2813 Regex!2484)) (EmptyLang!2484) (Union!2484 (regOne!5481 Regex!2484) (regTwo!5481 Regex!2484)) )
))
(declare-fun r!15766 () Regex!2484)

(declare-fun lt!338909 () Regex!2484)

(declare-fun lt!338914 () Regex!2484)

(assert (=> bs!237184 (= (and (= lt!338914 (regOne!5480 r!15766)) (= lt!338909 (regTwo!5480 r!15766))) (= lambda!30257 lambda!30255))))

(assert (=> bs!237184 (not (= lambda!30257 lambda!30256))))

(assert (=> b!923483 true))

(assert (=> b!923483 true))

(assert (=> b!923483 true))

(declare-fun lambda!30258 () Int)

(assert (=> bs!237184 (not (= lambda!30258 lambda!30255))))

(assert (=> bs!237184 (= (and (= lt!338914 (regOne!5480 r!15766)) (= lt!338909 (regTwo!5480 r!15766))) (= lambda!30258 lambda!30256))))

(assert (=> b!923483 (not (= lambda!30258 lambda!30257))))

(assert (=> b!923483 true))

(assert (=> b!923483 true))

(assert (=> b!923483 true))

(declare-fun b!923474 () Bool)

(declare-fun e!601018 () Bool)

(declare-fun tp!287325 () Bool)

(declare-fun tp!287326 () Bool)

(assert (=> b!923474 (= e!601018 (and tp!287325 tp!287326))))

(declare-fun b!923475 () Bool)

(declare-fun e!601016 () Bool)

(declare-fun e!601013 () Bool)

(assert (=> b!923475 (= e!601016 (not e!601013))))

(declare-fun res!419816 () Bool)

(assert (=> b!923475 (=> res!419816 e!601013)))

(declare-fun lt!338915 () Bool)

(assert (=> b!923475 (= res!419816 (or lt!338915 (and (is-Concat!4317 r!15766) (is-EmptyExpr!2484 (regOne!5480 r!15766))) (and (is-Concat!4317 r!15766) (is-EmptyExpr!2484 (regTwo!5480 r!15766))) (not (is-Concat!4317 r!15766))))))

(declare-datatypes ((List!9714 0))(
  ( (Nil!9698) (Cons!9698 (h!15099 C!5538) (t!100760 List!9714)) )
))
(declare-fun s!10566 () List!9714)

(declare-fun matchRSpec!285 (Regex!2484 List!9714) Bool)

(assert (=> b!923475 (= lt!338915 (matchRSpec!285 r!15766 s!10566))))

(declare-fun matchR!1022 (Regex!2484 List!9714) Bool)

(assert (=> b!923475 (= lt!338915 (matchR!1022 r!15766 s!10566))))

(declare-datatypes ((Unit!14587 0))(
  ( (Unit!14588) )
))
(declare-fun lt!338913 () Unit!14587)

(declare-fun mainMatchTheorem!285 (Regex!2484 List!9714) Unit!14587)

(assert (=> b!923475 (= lt!338913 (mainMatchTheorem!285 r!15766 s!10566))))

(declare-fun b!923476 () Bool)

(declare-fun e!601015 () Bool)

(declare-fun tp_is_empty!4611 () Bool)

(declare-fun tp!287328 () Bool)

(assert (=> b!923476 (= e!601015 (and tp_is_empty!4611 tp!287328))))

(declare-fun b!923477 () Bool)

(declare-fun tp!287329 () Bool)

(assert (=> b!923477 (= e!601018 tp!287329)))

(declare-fun e!601017 () Bool)

(assert (=> b!923478 (= e!601013 e!601017)))

(declare-fun res!419818 () Bool)

(assert (=> b!923478 (=> res!419818 e!601017)))

(declare-fun isEmpty!5949 (List!9714) Bool)

(assert (=> b!923478 (= res!419818 (isEmpty!5949 s!10566))))

(declare-fun Exists!255 (Int) Bool)

(assert (=> b!923478 (= (Exists!255 lambda!30255) (Exists!255 lambda!30256))))

(declare-fun lt!338911 () Unit!14587)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!167 (Regex!2484 Regex!2484 List!9714) Unit!14587)

(assert (=> b!923478 (= lt!338911 (lemmaExistCutMatchRandMatchRSpecEquivalent!167 (regOne!5480 r!15766) (regTwo!5480 r!15766) s!10566))))

(declare-datatypes ((tuple2!10954 0))(
  ( (tuple2!10955 (_1!6303 List!9714) (_2!6303 List!9714)) )
))
(declare-datatypes ((Option!2119 0))(
  ( (None!2118) (Some!2118 (v!19535 tuple2!10954)) )
))
(declare-fun isDefined!1761 (Option!2119) Bool)

(declare-fun findConcatSeparation!225 (Regex!2484 Regex!2484 List!9714 List!9714 List!9714) Option!2119)

(assert (=> b!923478 (= (isDefined!1761 (findConcatSeparation!225 (regOne!5480 r!15766) (regTwo!5480 r!15766) Nil!9698 s!10566 s!10566)) (Exists!255 lambda!30255))))

(declare-fun lt!338912 () Unit!14587)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!225 (Regex!2484 Regex!2484 List!9714) Unit!14587)

(assert (=> b!923478 (= lt!338912 (lemmaFindConcatSeparationEquivalentToExists!225 (regOne!5480 r!15766) (regTwo!5480 r!15766) s!10566))))

(declare-fun b!923479 () Bool)

(declare-fun e!601012 () Bool)

(assert (=> b!923479 (= e!601017 e!601012)))

(declare-fun res!419819 () Bool)

(assert (=> b!923479 (=> res!419819 e!601012)))

(declare-fun lt!338918 () Regex!2484)

(assert (=> b!923479 (= res!419819 (not (matchR!1022 lt!338918 s!10566)))))

(assert (=> b!923479 (= lt!338918 (Concat!4317 lt!338914 lt!338909))))

(declare-fun removeUselessConcat!161 (Regex!2484) Regex!2484)

(assert (=> b!923479 (= lt!338909 (removeUselessConcat!161 (regTwo!5480 r!15766)))))

(assert (=> b!923479 (= lt!338914 (removeUselessConcat!161 (regOne!5480 r!15766)))))

(declare-fun res!419815 () Bool)

(assert (=> start!82888 (=> (not res!419815) (not e!601016))))

(declare-fun validRegex!953 (Regex!2484) Bool)

(assert (=> start!82888 (= res!419815 (validRegex!953 r!15766))))

(assert (=> start!82888 e!601016))

(assert (=> start!82888 e!601018))

(assert (=> start!82888 e!601015))

(declare-fun b!923480 () Bool)

(declare-fun e!601014 () Bool)

(assert (=> b!923480 (= e!601014 (validRegex!953 lt!338914))))

(declare-fun b!923481 () Bool)

(assert (=> b!923481 (= e!601018 tp_is_empty!4611)))

(declare-fun b!923482 () Bool)

(declare-fun tp!287327 () Bool)

(declare-fun tp!287330 () Bool)

(assert (=> b!923482 (= e!601018 (and tp!287327 tp!287330))))

(assert (=> b!923483 (= e!601012 e!601014)))

(declare-fun res!419817 () Bool)

(assert (=> b!923483 (=> res!419817 e!601014)))

(declare-fun lt!338908 () Bool)

(assert (=> b!923483 (= res!419817 (not lt!338908))))

(assert (=> b!923483 (= (Exists!255 lambda!30257) (Exists!255 lambda!30258))))

(declare-fun lt!338916 () Unit!14587)

(assert (=> b!923483 (= lt!338916 (lemmaExistCutMatchRandMatchRSpecEquivalent!167 lt!338914 lt!338909 s!10566))))

(assert (=> b!923483 (= lt!338908 (Exists!255 lambda!30257))))

(assert (=> b!923483 (= lt!338908 (isDefined!1761 (findConcatSeparation!225 lt!338914 lt!338909 Nil!9698 s!10566 s!10566)))))

(declare-fun lt!338910 () Unit!14587)

(assert (=> b!923483 (= lt!338910 (lemmaFindConcatSeparationEquivalentToExists!225 lt!338914 lt!338909 s!10566))))

(assert (=> b!923483 (matchRSpec!285 lt!338918 s!10566)))

(declare-fun lt!338917 () Unit!14587)

(assert (=> b!923483 (= lt!338917 (mainMatchTheorem!285 lt!338918 s!10566))))

(assert (= (and start!82888 res!419815) b!923475))

(assert (= (and b!923475 (not res!419816)) b!923478))

(assert (= (and b!923478 (not res!419818)) b!923479))

(assert (= (and b!923479 (not res!419819)) b!923483))

(assert (= (and b!923483 (not res!419817)) b!923480))

(assert (= (and start!82888 (is-ElementMatch!2484 r!15766)) b!923481))

(assert (= (and start!82888 (is-Concat!4317 r!15766)) b!923482))

(assert (= (and start!82888 (is-Star!2484 r!15766)) b!923477))

(assert (= (and start!82888 (is-Union!2484 r!15766)) b!923474))

(assert (= (and start!82888 (is-Cons!9698 s!10566)) b!923476))

(declare-fun m!1149649 () Bool)

(assert (=> b!923475 m!1149649))

(declare-fun m!1149651 () Bool)

(assert (=> b!923475 m!1149651))

(declare-fun m!1149653 () Bool)

(assert (=> b!923475 m!1149653))

(declare-fun m!1149655 () Bool)

(assert (=> b!923479 m!1149655))

(declare-fun m!1149657 () Bool)

(assert (=> b!923479 m!1149657))

(declare-fun m!1149659 () Bool)

(assert (=> b!923479 m!1149659))

(declare-fun m!1149661 () Bool)

(assert (=> b!923480 m!1149661))

(declare-fun m!1149663 () Bool)

(assert (=> start!82888 m!1149663))

(declare-fun m!1149665 () Bool)

(assert (=> b!923478 m!1149665))

(declare-fun m!1149667 () Bool)

(assert (=> b!923478 m!1149667))

(declare-fun m!1149669 () Bool)

(assert (=> b!923478 m!1149669))

(declare-fun m!1149671 () Bool)

(assert (=> b!923478 m!1149671))

(declare-fun m!1149673 () Bool)

(assert (=> b!923478 m!1149673))

(declare-fun m!1149675 () Bool)

(assert (=> b!923478 m!1149675))

(assert (=> b!923478 m!1149665))

(declare-fun m!1149677 () Bool)

(assert (=> b!923478 m!1149677))

(assert (=> b!923478 m!1149675))

(declare-fun m!1149679 () Bool)

(assert (=> b!923483 m!1149679))

(declare-fun m!1149681 () Bool)

(assert (=> b!923483 m!1149681))

(declare-fun m!1149683 () Bool)

(assert (=> b!923483 m!1149683))

(declare-fun m!1149685 () Bool)

(assert (=> b!923483 m!1149685))

(assert (=> b!923483 m!1149679))

(declare-fun m!1149687 () Bool)

(assert (=> b!923483 m!1149687))

(declare-fun m!1149689 () Bool)

(assert (=> b!923483 m!1149689))

(assert (=> b!923483 m!1149687))

(declare-fun m!1149691 () Bool)

(assert (=> b!923483 m!1149691))

(declare-fun m!1149693 () Bool)

(assert (=> b!923483 m!1149693))

(push 1)

(assert (not b!923478))

(assert (not start!82888))

(assert (not b!923476))

(assert (not b!923483))

(assert (not b!923474))

(assert (not b!923475))

(assert (not b!923479))

(assert (not b!923480))

(assert (not b!923477))

(assert tp_is_empty!4611)

(assert (not b!923482))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!56343 () Bool)

(declare-fun call!56348 () Bool)

(declare-fun c!149911 () Bool)

(assert (=> bm!56343 (= call!56348 (validRegex!953 (ite c!149911 (regTwo!5481 lt!338914) (regTwo!5480 lt!338914))))))

(declare-fun b!923564 () Bool)

(declare-fun e!601066 () Bool)

(assert (=> b!923564 (= e!601066 call!56348)))

(declare-fun b!923565 () Bool)

(declare-fun e!601069 () Bool)

(assert (=> b!923565 (= e!601069 call!56348)))

(declare-fun b!923566 () Bool)

(declare-fun res!419870 () Bool)

(assert (=> b!923566 (=> (not res!419870) (not e!601069))))

(declare-fun call!56350 () Bool)

(assert (=> b!923566 (= res!419870 call!56350)))

(declare-fun e!601070 () Bool)

(assert (=> b!923566 (= e!601070 e!601069)))

(declare-fun b!923567 () Bool)

(declare-fun e!601071 () Bool)

(assert (=> b!923567 (= e!601071 e!601066)))

(declare-fun res!419871 () Bool)

(assert (=> b!923567 (=> (not res!419871) (not e!601066))))

(assert (=> b!923567 (= res!419871 call!56350)))

(declare-fun b!923568 () Bool)

(declare-fun e!601072 () Bool)

(declare-fun call!56349 () Bool)

(assert (=> b!923568 (= e!601072 call!56349)))

(declare-fun b!923569 () Bool)

(declare-fun e!601067 () Bool)

(assert (=> b!923569 (= e!601067 e!601072)))

(declare-fun res!419872 () Bool)

(declare-fun nullable!696 (Regex!2484) Bool)

(assert (=> b!923569 (= res!419872 (not (nullable!696 (reg!2813 lt!338914))))))

(assert (=> b!923569 (=> (not res!419872) (not e!601072))))

(declare-fun bm!56344 () Bool)

(assert (=> bm!56344 (= call!56350 call!56349)))

(declare-fun b!923571 () Bool)

(assert (=> b!923571 (= e!601067 e!601070)))

(assert (=> b!923571 (= c!149911 (is-Union!2484 lt!338914))))

(declare-fun b!923572 () Bool)

(declare-fun e!601068 () Bool)

(assert (=> b!923572 (= e!601068 e!601067)))

(declare-fun c!149912 () Bool)

(assert (=> b!923572 (= c!149912 (is-Star!2484 lt!338914))))

(declare-fun bm!56345 () Bool)

(assert (=> bm!56345 (= call!56349 (validRegex!953 (ite c!149912 (reg!2813 lt!338914) (ite c!149911 (regOne!5481 lt!338914) (regOne!5480 lt!338914)))))))

(declare-fun b!923570 () Bool)

(declare-fun res!419873 () Bool)

(assert (=> b!923570 (=> res!419873 e!601071)))

(assert (=> b!923570 (= res!419873 (not (is-Concat!4317 lt!338914)))))

(assert (=> b!923570 (= e!601070 e!601071)))

(declare-fun d!280774 () Bool)

(declare-fun res!419869 () Bool)

(assert (=> d!280774 (=> res!419869 e!601068)))

(assert (=> d!280774 (= res!419869 (is-ElementMatch!2484 lt!338914))))

(assert (=> d!280774 (= (validRegex!953 lt!338914) e!601068)))

(assert (= (and d!280774 (not res!419869)) b!923572))

(assert (= (and b!923572 c!149912) b!923569))

(assert (= (and b!923572 (not c!149912)) b!923571))

(assert (= (and b!923569 res!419872) b!923568))

(assert (= (and b!923571 c!149911) b!923566))

(assert (= (and b!923571 (not c!149911)) b!923570))

(assert (= (and b!923566 res!419870) b!923565))

(assert (= (and b!923570 (not res!419873)) b!923567))

(assert (= (and b!923567 res!419871) b!923564))

(assert (= (or b!923565 b!923564) bm!56343))

(assert (= (or b!923566 b!923567) bm!56344))

(assert (= (or b!923568 bm!56344) bm!56345))

(declare-fun m!1149741 () Bool)

(assert (=> bm!56343 m!1149741))

(declare-fun m!1149743 () Bool)

(assert (=> b!923569 m!1149743))

(declare-fun m!1149745 () Bool)

(assert (=> bm!56345 m!1149745))

(assert (=> b!923480 d!280774))

(declare-fun bs!237186 () Bool)

(declare-fun b!923638 () Bool)

(assert (= bs!237186 (and b!923638 b!923478)))

(declare-fun lambda!30281 () Int)

(assert (=> bs!237186 (not (= lambda!30281 lambda!30255))))

(assert (=> bs!237186 (not (= lambda!30281 lambda!30256))))

(declare-fun bs!237187 () Bool)

(assert (= bs!237187 (and b!923638 b!923483)))

(assert (=> bs!237187 (not (= lambda!30281 lambda!30257))))

(assert (=> bs!237187 (not (= lambda!30281 lambda!30258))))

(assert (=> b!923638 true))

(assert (=> b!923638 true))

(declare-fun bs!237188 () Bool)

(declare-fun b!923636 () Bool)

(assert (= bs!237188 (and b!923636 b!923638)))

(declare-fun lambda!30282 () Int)

(assert (=> bs!237188 (not (= lambda!30282 lambda!30281))))

(declare-fun bs!237189 () Bool)

(assert (= bs!237189 (and b!923636 b!923478)))

(assert (=> bs!237189 (not (= lambda!30282 lambda!30255))))

(declare-fun bs!237190 () Bool)

(assert (= bs!237190 (and b!923636 b!923483)))

(assert (=> bs!237190 (= (and (= (regOne!5480 r!15766) lt!338914) (= (regTwo!5480 r!15766) lt!338909)) (= lambda!30282 lambda!30258))))

(assert (=> bs!237189 (= lambda!30282 lambda!30256)))

(assert (=> bs!237190 (not (= lambda!30282 lambda!30257))))

(assert (=> b!923636 true))

(assert (=> b!923636 true))

(declare-fun b!923633 () Bool)

(declare-fun c!149929 () Bool)

(assert (=> b!923633 (= c!149929 (is-Union!2484 r!15766))))

(declare-fun e!601113 () Bool)

(declare-fun e!601109 () Bool)

(assert (=> b!923633 (= e!601113 e!601109)))

(declare-fun b!923634 () Bool)

(assert (=> b!923634 (= e!601113 (= s!10566 (Cons!9698 (c!149905 r!15766) Nil!9698)))))

(declare-fun b!923635 () Bool)

(declare-fun e!601111 () Bool)

(assert (=> b!923635 (= e!601109 e!601111)))

(declare-fun c!149930 () Bool)

(assert (=> b!923635 (= c!149930 (is-Star!2484 r!15766))))

(declare-fun call!56355 () Bool)

(assert (=> b!923636 (= e!601111 call!56355)))

(declare-fun b!923637 () Bool)

(declare-fun e!601110 () Bool)

(declare-fun call!56356 () Bool)

(assert (=> b!923637 (= e!601110 call!56356)))

(declare-fun d!280778 () Bool)

(declare-fun c!149932 () Bool)

(assert (=> d!280778 (= c!149932 (is-EmptyExpr!2484 r!15766))))

(assert (=> d!280778 (= (matchRSpec!285 r!15766 s!10566) e!601110)))

(declare-fun e!601112 () Bool)

(assert (=> b!923638 (= e!601112 call!56355)))

(declare-fun b!923639 () Bool)

(declare-fun e!601108 () Bool)

(assert (=> b!923639 (= e!601109 e!601108)))

(declare-fun res!419904 () Bool)

(assert (=> b!923639 (= res!419904 (matchRSpec!285 (regOne!5481 r!15766) s!10566))))

(assert (=> b!923639 (=> res!419904 e!601108)))

(declare-fun bm!56350 () Bool)

(assert (=> bm!56350 (= call!56355 (Exists!255 (ite c!149930 lambda!30281 lambda!30282)))))

(declare-fun b!923640 () Bool)

(declare-fun e!601107 () Bool)

(assert (=> b!923640 (= e!601110 e!601107)))

(declare-fun res!419903 () Bool)

(assert (=> b!923640 (= res!419903 (not (is-EmptyLang!2484 r!15766)))))

(assert (=> b!923640 (=> (not res!419903) (not e!601107))))

(declare-fun bm!56351 () Bool)

(assert (=> bm!56351 (= call!56356 (isEmpty!5949 s!10566))))

(declare-fun b!923641 () Bool)

(assert (=> b!923641 (= e!601108 (matchRSpec!285 (regTwo!5481 r!15766) s!10566))))

(declare-fun b!923642 () Bool)

(declare-fun c!149931 () Bool)

(assert (=> b!923642 (= c!149931 (is-ElementMatch!2484 r!15766))))

(assert (=> b!923642 (= e!601107 e!601113)))

(declare-fun b!923643 () Bool)

(declare-fun res!419902 () Bool)

(assert (=> b!923643 (=> res!419902 e!601112)))

(assert (=> b!923643 (= res!419902 call!56356)))

(assert (=> b!923643 (= e!601111 e!601112)))

(assert (= (and d!280778 c!149932) b!923637))

(assert (= (and d!280778 (not c!149932)) b!923640))

(assert (= (and b!923640 res!419903) b!923642))

(assert (= (and b!923642 c!149931) b!923634))

(assert (= (and b!923642 (not c!149931)) b!923633))

(assert (= (and b!923633 c!149929) b!923639))

(assert (= (and b!923633 (not c!149929)) b!923635))

(assert (= (and b!923639 (not res!419904)) b!923641))

(assert (= (and b!923635 c!149930) b!923643))

(assert (= (and b!923635 (not c!149930)) b!923636))

(assert (= (and b!923643 (not res!419902)) b!923638))

(assert (= (or b!923638 b!923636) bm!56350))

(assert (= (or b!923637 b!923643) bm!56351))

(declare-fun m!1149747 () Bool)

(assert (=> b!923639 m!1149747))

(declare-fun m!1149749 () Bool)

(assert (=> bm!56350 m!1149749))

(assert (=> bm!56351 m!1149677))

(declare-fun m!1149751 () Bool)

(assert (=> b!923641 m!1149751))

(assert (=> b!923475 d!280778))

(declare-fun d!280780 () Bool)

(declare-fun e!601135 () Bool)

(assert (=> d!280780 e!601135))

(declare-fun c!149941 () Bool)

(assert (=> d!280780 (= c!149941 (is-EmptyExpr!2484 r!15766))))

(declare-fun lt!338954 () Bool)

(declare-fun e!601132 () Bool)

(assert (=> d!280780 (= lt!338954 e!601132)))

(declare-fun c!149940 () Bool)

(assert (=> d!280780 (= c!149940 (isEmpty!5949 s!10566))))

(assert (=> d!280780 (validRegex!953 r!15766)))

(assert (=> d!280780 (= (matchR!1022 r!15766 s!10566) lt!338954)))

(declare-fun b!923676 () Bool)

(assert (=> b!923676 (= e!601132 (nullable!696 r!15766))))

(declare-fun b!923677 () Bool)

(declare-fun e!601136 () Bool)

(declare-fun e!601133 () Bool)

(assert (=> b!923677 (= e!601136 e!601133)))

(declare-fun res!419926 () Bool)

(assert (=> b!923677 (=> res!419926 e!601133)))

(declare-fun call!56363 () Bool)

(assert (=> b!923677 (= res!419926 call!56363)))

(declare-fun b!923678 () Bool)

(declare-fun head!1659 (List!9714) C!5538)

(assert (=> b!923678 (= e!601133 (not (= (head!1659 s!10566) (c!149905 r!15766))))))

(declare-fun b!923679 () Bool)

(declare-fun derivativeStep!506 (Regex!2484 C!5538) Regex!2484)

(declare-fun tail!1221 (List!9714) List!9714)

(assert (=> b!923679 (= e!601132 (matchR!1022 (derivativeStep!506 r!15766 (head!1659 s!10566)) (tail!1221 s!10566)))))

(declare-fun b!923680 () Bool)

(declare-fun e!601130 () Bool)

(assert (=> b!923680 (= e!601130 (not lt!338954))))

(declare-fun bm!56358 () Bool)

(assert (=> bm!56358 (= call!56363 (isEmpty!5949 s!10566))))

(declare-fun b!923681 () Bool)

(declare-fun res!419927 () Bool)

(declare-fun e!601131 () Bool)

(assert (=> b!923681 (=> (not res!419927) (not e!601131))))

(assert (=> b!923681 (= res!419927 (not call!56363))))

(declare-fun b!923682 () Bool)

(assert (=> b!923682 (= e!601135 (= lt!338954 call!56363))))

(declare-fun b!923683 () Bool)

(assert (=> b!923683 (= e!601131 (= (head!1659 s!10566) (c!149905 r!15766)))))

(declare-fun b!923684 () Bool)

(declare-fun e!601134 () Bool)

(assert (=> b!923684 (= e!601134 e!601136)))

(declare-fun res!419930 () Bool)

(assert (=> b!923684 (=> (not res!419930) (not e!601136))))

(assert (=> b!923684 (= res!419930 (not lt!338954))))

(declare-fun b!923685 () Bool)

(declare-fun res!419931 () Bool)

(assert (=> b!923685 (=> res!419931 e!601134)))

(assert (=> b!923685 (= res!419931 (not (is-ElementMatch!2484 r!15766)))))

(assert (=> b!923685 (= e!601130 e!601134)))

(declare-fun b!923686 () Bool)

(assert (=> b!923686 (= e!601135 e!601130)))

(declare-fun c!149939 () Bool)

(assert (=> b!923686 (= c!149939 (is-EmptyLang!2484 r!15766))))

(declare-fun b!923687 () Bool)

(declare-fun res!419929 () Bool)

(assert (=> b!923687 (=> res!419929 e!601133)))

(assert (=> b!923687 (= res!419929 (not (isEmpty!5949 (tail!1221 s!10566))))))

(declare-fun b!923688 () Bool)

(declare-fun res!419925 () Bool)

(assert (=> b!923688 (=> res!419925 e!601134)))

(assert (=> b!923688 (= res!419925 e!601131)))

(declare-fun res!419928 () Bool)

(assert (=> b!923688 (=> (not res!419928) (not e!601131))))

(assert (=> b!923688 (= res!419928 lt!338954)))

(declare-fun b!923689 () Bool)

(declare-fun res!419932 () Bool)

(assert (=> b!923689 (=> (not res!419932) (not e!601131))))

(assert (=> b!923689 (= res!419932 (isEmpty!5949 (tail!1221 s!10566)))))

(assert (= (and d!280780 c!149940) b!923676))

(assert (= (and d!280780 (not c!149940)) b!923679))

(assert (= (and d!280780 c!149941) b!923682))

(assert (= (and d!280780 (not c!149941)) b!923686))

(assert (= (and b!923686 c!149939) b!923680))

(assert (= (and b!923686 (not c!149939)) b!923685))

(assert (= (and b!923685 (not res!419931)) b!923688))

(assert (= (and b!923688 res!419928) b!923681))

(assert (= (and b!923681 res!419927) b!923689))

(assert (= (and b!923689 res!419932) b!923683))

(assert (= (and b!923688 (not res!419925)) b!923684))

(assert (= (and b!923684 res!419930) b!923677))

(assert (= (and b!923677 (not res!419926)) b!923687))

(assert (= (and b!923687 (not res!419929)) b!923678))

(assert (= (or b!923682 b!923677 b!923681) bm!56358))

(declare-fun m!1149753 () Bool)

(assert (=> b!923679 m!1149753))

(assert (=> b!923679 m!1149753))

(declare-fun m!1149755 () Bool)

(assert (=> b!923679 m!1149755))

(declare-fun m!1149757 () Bool)

(assert (=> b!923679 m!1149757))

(assert (=> b!923679 m!1149755))

(assert (=> b!923679 m!1149757))

(declare-fun m!1149759 () Bool)

(assert (=> b!923679 m!1149759))

(assert (=> bm!56358 m!1149677))

(assert (=> b!923689 m!1149757))

(assert (=> b!923689 m!1149757))

(declare-fun m!1149761 () Bool)

(assert (=> b!923689 m!1149761))

(assert (=> b!923687 m!1149757))

(assert (=> b!923687 m!1149757))

(assert (=> b!923687 m!1149761))

(declare-fun m!1149763 () Bool)

(assert (=> b!923676 m!1149763))

(assert (=> d!280780 m!1149677))

(assert (=> d!280780 m!1149663))

(assert (=> b!923683 m!1149753))

(assert (=> b!923678 m!1149753))

(assert (=> b!923475 d!280780))

(declare-fun d!280782 () Bool)

(assert (=> d!280782 (= (matchR!1022 r!15766 s!10566) (matchRSpec!285 r!15766 s!10566))))

(declare-fun lt!338957 () Unit!14587)

(declare-fun choose!5672 (Regex!2484 List!9714) Unit!14587)

(assert (=> d!280782 (= lt!338957 (choose!5672 r!15766 s!10566))))

(assert (=> d!280782 (validRegex!953 r!15766)))

(assert (=> d!280782 (= (mainMatchTheorem!285 r!15766 s!10566) lt!338957)))

(declare-fun bs!237193 () Bool)

(assert (= bs!237193 d!280782))

(assert (=> bs!237193 m!1149651))

(assert (=> bs!237193 m!1149649))

(declare-fun m!1149765 () Bool)

(assert (=> bs!237193 m!1149765))

(assert (=> bs!237193 m!1149663))

(assert (=> b!923475 d!280782))

(declare-fun d!280784 () Bool)

(declare-fun choose!5673 (Int) Bool)

(assert (=> d!280784 (= (Exists!255 lambda!30255) (choose!5673 lambda!30255))))

(declare-fun bs!237194 () Bool)

(assert (= bs!237194 d!280784))

(declare-fun m!1149767 () Bool)

(assert (=> bs!237194 m!1149767))

(assert (=> b!923478 d!280784))

(declare-fun d!280786 () Bool)

(assert (=> d!280786 (= (isEmpty!5949 s!10566) (is-Nil!9698 s!10566))))

(assert (=> b!923478 d!280786))

(declare-fun d!280788 () Bool)

(declare-fun isEmpty!5951 (Option!2119) Bool)

(assert (=> d!280788 (= (isDefined!1761 (findConcatSeparation!225 (regOne!5480 r!15766) (regTwo!5480 r!15766) Nil!9698 s!10566 s!10566)) (not (isEmpty!5951 (findConcatSeparation!225 (regOne!5480 r!15766) (regTwo!5480 r!15766) Nil!9698 s!10566 s!10566))))))

(declare-fun bs!237195 () Bool)

(assert (= bs!237195 d!280788))

(assert (=> bs!237195 m!1149665))

(declare-fun m!1149769 () Bool)

(assert (=> bs!237195 m!1149769))

(assert (=> b!923478 d!280788))

(declare-fun d!280790 () Bool)

(assert (=> d!280790 (= (Exists!255 lambda!30256) (choose!5673 lambda!30256))))

(declare-fun bs!237196 () Bool)

(assert (= bs!237196 d!280790))

(declare-fun m!1149771 () Bool)

(assert (=> bs!237196 m!1149771))

(assert (=> b!923478 d!280790))

(declare-fun bs!237200 () Bool)

(declare-fun d!280792 () Bool)

(assert (= bs!237200 (and d!280792 b!923638)))

(declare-fun lambda!30289 () Int)

(assert (=> bs!237200 (not (= lambda!30289 lambda!30281))))

(declare-fun bs!237201 () Bool)

(assert (= bs!237201 (and d!280792 b!923636)))

(assert (=> bs!237201 (not (= lambda!30289 lambda!30282))))

(declare-fun bs!237202 () Bool)

(assert (= bs!237202 (and d!280792 b!923478)))

(assert (=> bs!237202 (= lambda!30289 lambda!30255)))

(declare-fun bs!237203 () Bool)

(assert (= bs!237203 (and d!280792 b!923483)))

(assert (=> bs!237203 (not (= lambda!30289 lambda!30258))))

(assert (=> bs!237202 (not (= lambda!30289 lambda!30256))))

(assert (=> bs!237203 (= (and (= (regOne!5480 r!15766) lt!338914) (= (regTwo!5480 r!15766) lt!338909)) (= lambda!30289 lambda!30257))))

(assert (=> d!280792 true))

(assert (=> d!280792 true))

(assert (=> d!280792 true))

(assert (=> d!280792 (= (isDefined!1761 (findConcatSeparation!225 (regOne!5480 r!15766) (regTwo!5480 r!15766) Nil!9698 s!10566 s!10566)) (Exists!255 lambda!30289))))

(declare-fun lt!338960 () Unit!14587)

(declare-fun choose!5674 (Regex!2484 Regex!2484 List!9714) Unit!14587)

(assert (=> d!280792 (= lt!338960 (choose!5674 (regOne!5480 r!15766) (regTwo!5480 r!15766) s!10566))))

(assert (=> d!280792 (validRegex!953 (regOne!5480 r!15766))))

(assert (=> d!280792 (= (lemmaFindConcatSeparationEquivalentToExists!225 (regOne!5480 r!15766) (regTwo!5480 r!15766) s!10566) lt!338960)))

(declare-fun bs!237204 () Bool)

(assert (= bs!237204 d!280792))

(declare-fun m!1149779 () Bool)

(assert (=> bs!237204 m!1149779))

(assert (=> bs!237204 m!1149665))

(declare-fun m!1149781 () Bool)

(assert (=> bs!237204 m!1149781))

(declare-fun m!1149783 () Bool)

(assert (=> bs!237204 m!1149783))

(assert (=> bs!237204 m!1149665))

(assert (=> bs!237204 m!1149667))

(assert (=> b!923478 d!280792))

(declare-fun d!280796 () Bool)

(declare-fun e!601171 () Bool)

(assert (=> d!280796 e!601171))

(declare-fun res!419966 () Bool)

(assert (=> d!280796 (=> res!419966 e!601171)))

(declare-fun e!601173 () Bool)

(assert (=> d!280796 (= res!419966 e!601173)))

(declare-fun res!419970 () Bool)

(assert (=> d!280796 (=> (not res!419970) (not e!601173))))

(declare-fun lt!338969 () Option!2119)

(assert (=> d!280796 (= res!419970 (isDefined!1761 lt!338969))))

(declare-fun e!601174 () Option!2119)

(assert (=> d!280796 (= lt!338969 e!601174)))

(declare-fun c!149957 () Bool)

(declare-fun e!601172 () Bool)

(assert (=> d!280796 (= c!149957 e!601172)))

(declare-fun res!419968 () Bool)

(assert (=> d!280796 (=> (not res!419968) (not e!601172))))

(assert (=> d!280796 (= res!419968 (matchR!1022 (regOne!5480 r!15766) Nil!9698))))

(assert (=> d!280796 (validRegex!953 (regOne!5480 r!15766))))

(assert (=> d!280796 (= (findConcatSeparation!225 (regOne!5480 r!15766) (regTwo!5480 r!15766) Nil!9698 s!10566 s!10566) lt!338969)))

(declare-fun b!923751 () Bool)

(declare-fun res!419969 () Bool)

(assert (=> b!923751 (=> (not res!419969) (not e!601173))))

(declare-fun get!3170 (Option!2119) tuple2!10954)

(assert (=> b!923751 (= res!419969 (matchR!1022 (regTwo!5480 r!15766) (_2!6303 (get!3170 lt!338969))))))

(declare-fun b!923752 () Bool)

(assert (=> b!923752 (= e!601174 (Some!2118 (tuple2!10955 Nil!9698 s!10566)))))

(declare-fun b!923753 () Bool)

(assert (=> b!923753 (= e!601172 (matchR!1022 (regTwo!5480 r!15766) s!10566))))

(declare-fun b!923754 () Bool)

(declare-fun lt!338970 () Unit!14587)

(declare-fun lt!338971 () Unit!14587)

(assert (=> b!923754 (= lt!338970 lt!338971)))

(declare-fun ++!2572 (List!9714 List!9714) List!9714)

(assert (=> b!923754 (= (++!2572 (++!2572 Nil!9698 (Cons!9698 (h!15099 s!10566) Nil!9698)) (t!100760 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!187 (List!9714 C!5538 List!9714 List!9714) Unit!14587)

(assert (=> b!923754 (= lt!338971 (lemmaMoveElementToOtherListKeepsConcatEq!187 Nil!9698 (h!15099 s!10566) (t!100760 s!10566) s!10566))))

(declare-fun e!601170 () Option!2119)

(assert (=> b!923754 (= e!601170 (findConcatSeparation!225 (regOne!5480 r!15766) (regTwo!5480 r!15766) (++!2572 Nil!9698 (Cons!9698 (h!15099 s!10566) Nil!9698)) (t!100760 s!10566) s!10566))))

(declare-fun b!923755 () Bool)

(declare-fun res!419967 () Bool)

(assert (=> b!923755 (=> (not res!419967) (not e!601173))))

(assert (=> b!923755 (= res!419967 (matchR!1022 (regOne!5480 r!15766) (_1!6303 (get!3170 lt!338969))))))

(declare-fun b!923756 () Bool)

(assert (=> b!923756 (= e!601173 (= (++!2572 (_1!6303 (get!3170 lt!338969)) (_2!6303 (get!3170 lt!338969))) s!10566))))

(declare-fun b!923757 () Bool)

(assert (=> b!923757 (= e!601171 (not (isDefined!1761 lt!338969)))))

(declare-fun b!923758 () Bool)

(assert (=> b!923758 (= e!601174 e!601170)))

(declare-fun c!149956 () Bool)

(assert (=> b!923758 (= c!149956 (is-Nil!9698 s!10566))))

(declare-fun b!923759 () Bool)

(assert (=> b!923759 (= e!601170 None!2118)))

(assert (= (and d!280796 res!419968) b!923753))

(assert (= (and d!280796 c!149957) b!923752))

(assert (= (and d!280796 (not c!149957)) b!923758))

(assert (= (and b!923758 c!149956) b!923759))

(assert (= (and b!923758 (not c!149956)) b!923754))

(assert (= (and d!280796 res!419970) b!923755))

(assert (= (and b!923755 res!419967) b!923751))

(assert (= (and b!923751 res!419969) b!923756))

(assert (= (and d!280796 (not res!419966)) b!923757))

(declare-fun m!1149785 () Bool)

(assert (=> b!923751 m!1149785))

(declare-fun m!1149787 () Bool)

(assert (=> b!923751 m!1149787))

(assert (=> b!923755 m!1149785))

(declare-fun m!1149789 () Bool)

(assert (=> b!923755 m!1149789))

(assert (=> b!923756 m!1149785))

(declare-fun m!1149791 () Bool)

(assert (=> b!923756 m!1149791))

(declare-fun m!1149793 () Bool)

(assert (=> d!280796 m!1149793))

(declare-fun m!1149795 () Bool)

(assert (=> d!280796 m!1149795))

(assert (=> d!280796 m!1149781))

(assert (=> b!923757 m!1149793))

(declare-fun m!1149797 () Bool)

(assert (=> b!923753 m!1149797))

(declare-fun m!1149799 () Bool)

(assert (=> b!923754 m!1149799))

(assert (=> b!923754 m!1149799))

(declare-fun m!1149801 () Bool)

(assert (=> b!923754 m!1149801))

(declare-fun m!1149803 () Bool)

(assert (=> b!923754 m!1149803))

(assert (=> b!923754 m!1149799))

(declare-fun m!1149805 () Bool)

(assert (=> b!923754 m!1149805))

(assert (=> b!923478 d!280796))

(declare-fun bs!237205 () Bool)

(declare-fun d!280798 () Bool)

(assert (= bs!237205 (and d!280798 b!923638)))

(declare-fun lambda!30294 () Int)

(assert (=> bs!237205 (not (= lambda!30294 lambda!30281))))

(declare-fun bs!237206 () Bool)

(assert (= bs!237206 (and d!280798 b!923636)))

(assert (=> bs!237206 (not (= lambda!30294 lambda!30282))))

(declare-fun bs!237207 () Bool)

(assert (= bs!237207 (and d!280798 b!923478)))

(assert (=> bs!237207 (= lambda!30294 lambda!30255)))

(declare-fun bs!237208 () Bool)

(assert (= bs!237208 (and d!280798 b!923483)))

(assert (=> bs!237208 (not (= lambda!30294 lambda!30258))))

(declare-fun bs!237209 () Bool)

(assert (= bs!237209 (and d!280798 d!280792)))

(assert (=> bs!237209 (= lambda!30294 lambda!30289)))

(assert (=> bs!237207 (not (= lambda!30294 lambda!30256))))

(assert (=> bs!237208 (= (and (= (regOne!5480 r!15766) lt!338914) (= (regTwo!5480 r!15766) lt!338909)) (= lambda!30294 lambda!30257))))

(assert (=> d!280798 true))

(assert (=> d!280798 true))

(assert (=> d!280798 true))

(declare-fun lambda!30295 () Int)

(assert (=> bs!237205 (not (= lambda!30295 lambda!30281))))

(assert (=> bs!237206 (= lambda!30295 lambda!30282)))

(assert (=> bs!237207 (not (= lambda!30295 lambda!30255))))

(assert (=> bs!237209 (not (= lambda!30295 lambda!30289))))

(assert (=> bs!237207 (= lambda!30295 lambda!30256)))

(assert (=> bs!237208 (not (= lambda!30295 lambda!30257))))

(declare-fun bs!237210 () Bool)

(assert (= bs!237210 d!280798))

(assert (=> bs!237210 (not (= lambda!30295 lambda!30294))))

(assert (=> bs!237208 (= (and (= (regOne!5480 r!15766) lt!338914) (= (regTwo!5480 r!15766) lt!338909)) (= lambda!30295 lambda!30258))))

(assert (=> d!280798 true))

(assert (=> d!280798 true))

(assert (=> d!280798 true))

(assert (=> d!280798 (= (Exists!255 lambda!30294) (Exists!255 lambda!30295))))

(declare-fun lt!338975 () Unit!14587)

(declare-fun choose!5675 (Regex!2484 Regex!2484 List!9714) Unit!14587)

(assert (=> d!280798 (= lt!338975 (choose!5675 (regOne!5480 r!15766) (regTwo!5480 r!15766) s!10566))))

(assert (=> d!280798 (validRegex!953 (regOne!5480 r!15766))))

(assert (=> d!280798 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!167 (regOne!5480 r!15766) (regTwo!5480 r!15766) s!10566) lt!338975)))

(declare-fun m!1149819 () Bool)

(assert (=> bs!237210 m!1149819))

(declare-fun m!1149821 () Bool)

(assert (=> bs!237210 m!1149821))

(declare-fun m!1149823 () Bool)

(assert (=> bs!237210 m!1149823))

(assert (=> bs!237210 m!1149781))

(assert (=> b!923478 d!280798))

(declare-fun d!280802 () Bool)

(declare-fun e!601191 () Bool)

(assert (=> d!280802 e!601191))

(declare-fun c!149963 () Bool)

(assert (=> d!280802 (= c!149963 (is-EmptyExpr!2484 lt!338918))))

(declare-fun lt!338979 () Bool)

(declare-fun e!601188 () Bool)

(assert (=> d!280802 (= lt!338979 e!601188)))

(declare-fun c!149962 () Bool)

(assert (=> d!280802 (= c!149962 (isEmpty!5949 s!10566))))

(assert (=> d!280802 (validRegex!953 lt!338918)))

(assert (=> d!280802 (= (matchR!1022 lt!338918 s!10566) lt!338979)))

(declare-fun b!923782 () Bool)

(assert (=> b!923782 (= e!601188 (nullable!696 lt!338918))))

(declare-fun b!923783 () Bool)

(declare-fun e!601192 () Bool)

(declare-fun e!601189 () Bool)

(assert (=> b!923783 (= e!601192 e!601189)))

(declare-fun res!419988 () Bool)

(assert (=> b!923783 (=> res!419988 e!601189)))

(declare-fun call!56369 () Bool)

(assert (=> b!923783 (= res!419988 call!56369)))

(declare-fun b!923784 () Bool)

(assert (=> b!923784 (= e!601189 (not (= (head!1659 s!10566) (c!149905 lt!338918))))))

(declare-fun b!923785 () Bool)

(assert (=> b!923785 (= e!601188 (matchR!1022 (derivativeStep!506 lt!338918 (head!1659 s!10566)) (tail!1221 s!10566)))))

(declare-fun b!923786 () Bool)

(declare-fun e!601186 () Bool)

(assert (=> b!923786 (= e!601186 (not lt!338979))))

(declare-fun bm!56364 () Bool)

(assert (=> bm!56364 (= call!56369 (isEmpty!5949 s!10566))))

(declare-fun b!923787 () Bool)

(declare-fun res!419989 () Bool)

(declare-fun e!601187 () Bool)

(assert (=> b!923787 (=> (not res!419989) (not e!601187))))

(assert (=> b!923787 (= res!419989 (not call!56369))))

(declare-fun b!923788 () Bool)

(assert (=> b!923788 (= e!601191 (= lt!338979 call!56369))))

(declare-fun b!923789 () Bool)

(assert (=> b!923789 (= e!601187 (= (head!1659 s!10566) (c!149905 lt!338918)))))

(declare-fun b!923790 () Bool)

(declare-fun e!601190 () Bool)

(assert (=> b!923790 (= e!601190 e!601192)))

(declare-fun res!419992 () Bool)

(assert (=> b!923790 (=> (not res!419992) (not e!601192))))

(assert (=> b!923790 (= res!419992 (not lt!338979))))

(declare-fun b!923791 () Bool)

(declare-fun res!419993 () Bool)

(assert (=> b!923791 (=> res!419993 e!601190)))

(assert (=> b!923791 (= res!419993 (not (is-ElementMatch!2484 lt!338918)))))

(assert (=> b!923791 (= e!601186 e!601190)))

(declare-fun b!923792 () Bool)

(assert (=> b!923792 (= e!601191 e!601186)))

(declare-fun c!149961 () Bool)

(assert (=> b!923792 (= c!149961 (is-EmptyLang!2484 lt!338918))))

(declare-fun b!923793 () Bool)

(declare-fun res!419991 () Bool)

(assert (=> b!923793 (=> res!419991 e!601189)))

(assert (=> b!923793 (= res!419991 (not (isEmpty!5949 (tail!1221 s!10566))))))

(declare-fun b!923794 () Bool)

(declare-fun res!419987 () Bool)

(assert (=> b!923794 (=> res!419987 e!601190)))

(assert (=> b!923794 (= res!419987 e!601187)))

(declare-fun res!419990 () Bool)

(assert (=> b!923794 (=> (not res!419990) (not e!601187))))

(assert (=> b!923794 (= res!419990 lt!338979)))

(declare-fun b!923795 () Bool)

(declare-fun res!419994 () Bool)

(assert (=> b!923795 (=> (not res!419994) (not e!601187))))

(assert (=> b!923795 (= res!419994 (isEmpty!5949 (tail!1221 s!10566)))))

(assert (= (and d!280802 c!149962) b!923782))

(assert (= (and d!280802 (not c!149962)) b!923785))

(assert (= (and d!280802 c!149963) b!923788))

(assert (= (and d!280802 (not c!149963)) b!923792))

(assert (= (and b!923792 c!149961) b!923786))

(assert (= (and b!923792 (not c!149961)) b!923791))

(assert (= (and b!923791 (not res!419993)) b!923794))

(assert (= (and b!923794 res!419990) b!923787))

(assert (= (and b!923787 res!419989) b!923795))

(assert (= (and b!923795 res!419994) b!923789))

(assert (= (and b!923794 (not res!419987)) b!923790))

(assert (= (and b!923790 res!419992) b!923783))

(assert (= (and b!923783 (not res!419988)) b!923793))

(assert (= (and b!923793 (not res!419991)) b!923784))

(assert (= (or b!923788 b!923783 b!923787) bm!56364))

(assert (=> b!923785 m!1149753))

(assert (=> b!923785 m!1149753))

(declare-fun m!1149827 () Bool)

(assert (=> b!923785 m!1149827))

(assert (=> b!923785 m!1149757))

(assert (=> b!923785 m!1149827))

(assert (=> b!923785 m!1149757))

(declare-fun m!1149829 () Bool)

(assert (=> b!923785 m!1149829))

(assert (=> bm!56364 m!1149677))

(assert (=> b!923795 m!1149757))

(assert (=> b!923795 m!1149757))

(assert (=> b!923795 m!1149761))

(assert (=> b!923793 m!1149757))

(assert (=> b!923793 m!1149757))

(assert (=> b!923793 m!1149761))

(declare-fun m!1149831 () Bool)

(assert (=> b!923782 m!1149831))

(assert (=> d!280802 m!1149677))

(declare-fun m!1149833 () Bool)

(assert (=> d!280802 m!1149833))

(assert (=> b!923789 m!1149753))

(assert (=> b!923784 m!1149753))

(assert (=> b!923479 d!280802))

(declare-fun b!923818 () Bool)

(declare-fun e!601207 () Regex!2484)

(declare-fun call!56382 () Regex!2484)

(declare-fun call!56383 () Regex!2484)

(assert (=> b!923818 (= e!601207 (Concat!4317 call!56382 call!56383))))

(declare-fun b!923819 () Bool)

(declare-fun e!601210 () Regex!2484)

(assert (=> b!923819 (= e!601210 (regTwo!5480 r!15766))))

(declare-fun b!923820 () Bool)

(declare-fun e!601205 () Regex!2484)

(declare-fun e!601206 () Regex!2484)

(assert (=> b!923820 (= e!601205 e!601206)))

(declare-fun c!149976 () Bool)

(assert (=> b!923820 (= c!149976 (and (is-Concat!4317 (regTwo!5480 r!15766)) (is-EmptyExpr!2484 (regTwo!5480 (regTwo!5480 r!15766)))))))

(declare-fun b!923821 () Bool)

(declare-fun call!56380 () Regex!2484)

(assert (=> b!923821 (= e!601206 call!56380)))

(declare-fun b!923822 () Bool)

(declare-fun c!149974 () Bool)

(assert (=> b!923822 (= c!149974 (is-Concat!4317 (regTwo!5480 r!15766)))))

(assert (=> b!923822 (= e!601206 e!601207)))

(declare-fun b!923823 () Bool)

(declare-fun call!56384 () Regex!2484)

(assert (=> b!923823 (= e!601210 (Star!2484 call!56384))))

(declare-fun b!923824 () Bool)

(declare-fun call!56381 () Regex!2484)

(assert (=> b!923824 (= e!601205 call!56381)))

(declare-fun bm!56375 () Bool)

(assert (=> bm!56375 (= call!56384 call!56383)))

(declare-fun b!923825 () Bool)

(declare-fun e!601208 () Regex!2484)

(assert (=> b!923825 (= e!601208 (Union!2484 call!56382 call!56384))))

(declare-fun b!923826 () Bool)

(declare-fun c!149978 () Bool)

(assert (=> b!923826 (= c!149978 (is-Star!2484 (regTwo!5480 r!15766)))))

(assert (=> b!923826 (= e!601208 e!601210)))

(declare-fun d!280806 () Bool)

(declare-fun e!601209 () Bool)

(assert (=> d!280806 e!601209))

(declare-fun res!419997 () Bool)

(assert (=> d!280806 (=> (not res!419997) (not e!601209))))

(declare-fun lt!338982 () Regex!2484)

(assert (=> d!280806 (= res!419997 (validRegex!953 lt!338982))))

(assert (=> d!280806 (= lt!338982 e!601205)))

(declare-fun c!149975 () Bool)

(assert (=> d!280806 (= c!149975 (and (is-Concat!4317 (regTwo!5480 r!15766)) (is-EmptyExpr!2484 (regOne!5480 (regTwo!5480 r!15766)))))))

(assert (=> d!280806 (validRegex!953 (regTwo!5480 r!15766))))

(assert (=> d!280806 (= (removeUselessConcat!161 (regTwo!5480 r!15766)) lt!338982)))

(declare-fun bm!56376 () Bool)

(assert (=> bm!56376 (= call!56382 call!56380)))

(declare-fun bm!56377 () Bool)

(assert (=> bm!56377 (= call!56380 call!56381)))

(declare-fun bm!56378 () Bool)

(declare-fun c!149977 () Bool)

(assert (=> bm!56378 (= call!56383 (removeUselessConcat!161 (ite c!149974 (regTwo!5480 (regTwo!5480 r!15766)) (ite c!149977 (regTwo!5481 (regTwo!5480 r!15766)) (reg!2813 (regTwo!5480 r!15766))))))))

(declare-fun bm!56379 () Bool)

(assert (=> bm!56379 (= call!56381 (removeUselessConcat!161 (ite c!149975 (regTwo!5480 (regTwo!5480 r!15766)) (ite (or c!149976 c!149974) (regOne!5480 (regTwo!5480 r!15766)) (regOne!5481 (regTwo!5480 r!15766))))))))

(declare-fun b!923827 () Bool)

(assert (=> b!923827 (= e!601207 e!601208)))

(assert (=> b!923827 (= c!149977 (is-Union!2484 (regTwo!5480 r!15766)))))

(declare-fun b!923828 () Bool)

(assert (=> b!923828 (= e!601209 (= (nullable!696 lt!338982) (nullable!696 (regTwo!5480 r!15766))))))

(assert (= (and d!280806 c!149975) b!923824))

(assert (= (and d!280806 (not c!149975)) b!923820))

(assert (= (and b!923820 c!149976) b!923821))

(assert (= (and b!923820 (not c!149976)) b!923822))

(assert (= (and b!923822 c!149974) b!923818))

(assert (= (and b!923822 (not c!149974)) b!923827))

(assert (= (and b!923827 c!149977) b!923825))

(assert (= (and b!923827 (not c!149977)) b!923826))

(assert (= (and b!923826 c!149978) b!923823))

(assert (= (and b!923826 (not c!149978)) b!923819))

(assert (= (or b!923825 b!923823) bm!56375))

(assert (= (or b!923818 bm!56375) bm!56378))

(assert (= (or b!923818 b!923825) bm!56376))

(assert (= (or b!923821 bm!56376) bm!56377))

(assert (= (or b!923824 bm!56377) bm!56379))

(assert (= (and d!280806 res!419997) b!923828))

(declare-fun m!1149837 () Bool)

(assert (=> d!280806 m!1149837))

(declare-fun m!1149839 () Bool)

(assert (=> d!280806 m!1149839))

(declare-fun m!1149841 () Bool)

(assert (=> bm!56378 m!1149841))

(declare-fun m!1149843 () Bool)

(assert (=> bm!56379 m!1149843))

(declare-fun m!1149845 () Bool)

(assert (=> b!923828 m!1149845))

(declare-fun m!1149847 () Bool)

(assert (=> b!923828 m!1149847))

(assert (=> b!923479 d!280806))

(declare-fun b!923829 () Bool)

(declare-fun e!601213 () Regex!2484)

(declare-fun call!56387 () Regex!2484)

(declare-fun call!56388 () Regex!2484)

(assert (=> b!923829 (= e!601213 (Concat!4317 call!56387 call!56388))))

(declare-fun b!923830 () Bool)

(declare-fun e!601216 () Regex!2484)

(assert (=> b!923830 (= e!601216 (regOne!5480 r!15766))))

(declare-fun b!923831 () Bool)

(declare-fun e!601211 () Regex!2484)

(declare-fun e!601212 () Regex!2484)

(assert (=> b!923831 (= e!601211 e!601212)))

(declare-fun c!149981 () Bool)

(assert (=> b!923831 (= c!149981 (and (is-Concat!4317 (regOne!5480 r!15766)) (is-EmptyExpr!2484 (regTwo!5480 (regOne!5480 r!15766)))))))

(declare-fun b!923832 () Bool)

(declare-fun call!56385 () Regex!2484)

(assert (=> b!923832 (= e!601212 call!56385)))

(declare-fun b!923833 () Bool)

(declare-fun c!149979 () Bool)

(assert (=> b!923833 (= c!149979 (is-Concat!4317 (regOne!5480 r!15766)))))

(assert (=> b!923833 (= e!601212 e!601213)))

(declare-fun b!923834 () Bool)

(declare-fun call!56389 () Regex!2484)

(assert (=> b!923834 (= e!601216 (Star!2484 call!56389))))

(declare-fun b!923835 () Bool)

(declare-fun call!56386 () Regex!2484)

(assert (=> b!923835 (= e!601211 call!56386)))

(declare-fun bm!56380 () Bool)

(assert (=> bm!56380 (= call!56389 call!56388)))

(declare-fun b!923836 () Bool)

(declare-fun e!601214 () Regex!2484)

(assert (=> b!923836 (= e!601214 (Union!2484 call!56387 call!56389))))

(declare-fun b!923837 () Bool)

(declare-fun c!149983 () Bool)

(assert (=> b!923837 (= c!149983 (is-Star!2484 (regOne!5480 r!15766)))))

(assert (=> b!923837 (= e!601214 e!601216)))

(declare-fun d!280812 () Bool)

(declare-fun e!601215 () Bool)

(assert (=> d!280812 e!601215))

(declare-fun res!419998 () Bool)

(assert (=> d!280812 (=> (not res!419998) (not e!601215))))

(declare-fun lt!338983 () Regex!2484)

(assert (=> d!280812 (= res!419998 (validRegex!953 lt!338983))))

(assert (=> d!280812 (= lt!338983 e!601211)))

(declare-fun c!149980 () Bool)

(assert (=> d!280812 (= c!149980 (and (is-Concat!4317 (regOne!5480 r!15766)) (is-EmptyExpr!2484 (regOne!5480 (regOne!5480 r!15766)))))))

(assert (=> d!280812 (validRegex!953 (regOne!5480 r!15766))))

(assert (=> d!280812 (= (removeUselessConcat!161 (regOne!5480 r!15766)) lt!338983)))

(declare-fun bm!56381 () Bool)

(assert (=> bm!56381 (= call!56387 call!56385)))

(declare-fun bm!56382 () Bool)

(assert (=> bm!56382 (= call!56385 call!56386)))

(declare-fun bm!56383 () Bool)

(declare-fun c!149982 () Bool)

(assert (=> bm!56383 (= call!56388 (removeUselessConcat!161 (ite c!149979 (regTwo!5480 (regOne!5480 r!15766)) (ite c!149982 (regTwo!5481 (regOne!5480 r!15766)) (reg!2813 (regOne!5480 r!15766))))))))

(declare-fun bm!56384 () Bool)

(assert (=> bm!56384 (= call!56386 (removeUselessConcat!161 (ite c!149980 (regTwo!5480 (regOne!5480 r!15766)) (ite (or c!149981 c!149979) (regOne!5480 (regOne!5480 r!15766)) (regOne!5481 (regOne!5480 r!15766))))))))

(declare-fun b!923838 () Bool)

(assert (=> b!923838 (= e!601213 e!601214)))

(assert (=> b!923838 (= c!149982 (is-Union!2484 (regOne!5480 r!15766)))))

(declare-fun b!923839 () Bool)

(assert (=> b!923839 (= e!601215 (= (nullable!696 lt!338983) (nullable!696 (regOne!5480 r!15766))))))

(assert (= (and d!280812 c!149980) b!923835))

(assert (= (and d!280812 (not c!149980)) b!923831))

(assert (= (and b!923831 c!149981) b!923832))

(assert (= (and b!923831 (not c!149981)) b!923833))

(assert (= (and b!923833 c!149979) b!923829))

(assert (= (and b!923833 (not c!149979)) b!923838))

(assert (= (and b!923838 c!149982) b!923836))

(assert (= (and b!923838 (not c!149982)) b!923837))

(assert (= (and b!923837 c!149983) b!923834))

(assert (= (and b!923837 (not c!149983)) b!923830))

(assert (= (or b!923836 b!923834) bm!56380))

(assert (= (or b!923829 bm!56380) bm!56383))

(assert (= (or b!923829 b!923836) bm!56381))

(assert (= (or b!923832 bm!56381) bm!56382))

(assert (= (or b!923835 bm!56382) bm!56384))

(assert (= (and d!280812 res!419998) b!923839))

(declare-fun m!1149849 () Bool)

(assert (=> d!280812 m!1149849))

(assert (=> d!280812 m!1149781))

(declare-fun m!1149851 () Bool)

(assert (=> bm!56383 m!1149851))

(declare-fun m!1149853 () Bool)

(assert (=> bm!56384 m!1149853))

(declare-fun m!1149855 () Bool)

(assert (=> b!923839 m!1149855))

(declare-fun m!1149857 () Bool)

(assert (=> b!923839 m!1149857))

(assert (=> b!923479 d!280812))

(declare-fun bm!56385 () Bool)

(declare-fun call!56390 () Bool)

(declare-fun c!149984 () Bool)

(assert (=> bm!56385 (= call!56390 (validRegex!953 (ite c!149984 (regTwo!5481 r!15766) (regTwo!5480 r!15766))))))

(declare-fun b!923840 () Bool)

(declare-fun e!601217 () Bool)

(assert (=> b!923840 (= e!601217 call!56390)))

(declare-fun b!923841 () Bool)

(declare-fun e!601220 () Bool)

(assert (=> b!923841 (= e!601220 call!56390)))

(declare-fun b!923842 () Bool)

(declare-fun res!420000 () Bool)

(assert (=> b!923842 (=> (not res!420000) (not e!601220))))

(declare-fun call!56392 () Bool)

(assert (=> b!923842 (= res!420000 call!56392)))

(declare-fun e!601221 () Bool)

(assert (=> b!923842 (= e!601221 e!601220)))

(declare-fun b!923843 () Bool)

(declare-fun e!601222 () Bool)

(assert (=> b!923843 (= e!601222 e!601217)))

(declare-fun res!420001 () Bool)

(assert (=> b!923843 (=> (not res!420001) (not e!601217))))

(assert (=> b!923843 (= res!420001 call!56392)))

(declare-fun b!923844 () Bool)

(declare-fun e!601223 () Bool)

(declare-fun call!56391 () Bool)

(assert (=> b!923844 (= e!601223 call!56391)))

(declare-fun b!923845 () Bool)

(declare-fun e!601218 () Bool)

(assert (=> b!923845 (= e!601218 e!601223)))

(declare-fun res!420002 () Bool)

(assert (=> b!923845 (= res!420002 (not (nullable!696 (reg!2813 r!15766))))))

(assert (=> b!923845 (=> (not res!420002) (not e!601223))))

(declare-fun bm!56386 () Bool)

(assert (=> bm!56386 (= call!56392 call!56391)))

(declare-fun b!923847 () Bool)

(assert (=> b!923847 (= e!601218 e!601221)))

(assert (=> b!923847 (= c!149984 (is-Union!2484 r!15766))))

(declare-fun b!923848 () Bool)

(declare-fun e!601219 () Bool)

(assert (=> b!923848 (= e!601219 e!601218)))

(declare-fun c!149985 () Bool)

(assert (=> b!923848 (= c!149985 (is-Star!2484 r!15766))))

(declare-fun bm!56387 () Bool)

(assert (=> bm!56387 (= call!56391 (validRegex!953 (ite c!149985 (reg!2813 r!15766) (ite c!149984 (regOne!5481 r!15766) (regOne!5480 r!15766)))))))

(declare-fun b!923846 () Bool)

(declare-fun res!420003 () Bool)

(assert (=> b!923846 (=> res!420003 e!601222)))

(assert (=> b!923846 (= res!420003 (not (is-Concat!4317 r!15766)))))

(assert (=> b!923846 (= e!601221 e!601222)))

(declare-fun d!280814 () Bool)

(declare-fun res!419999 () Bool)

(assert (=> d!280814 (=> res!419999 e!601219)))

(assert (=> d!280814 (= res!419999 (is-ElementMatch!2484 r!15766))))

(assert (=> d!280814 (= (validRegex!953 r!15766) e!601219)))

(assert (= (and d!280814 (not res!419999)) b!923848))

(assert (= (and b!923848 c!149985) b!923845))

(assert (= (and b!923848 (not c!149985)) b!923847))

(assert (= (and b!923845 res!420002) b!923844))

(assert (= (and b!923847 c!149984) b!923842))

(assert (= (and b!923847 (not c!149984)) b!923846))

(assert (= (and b!923842 res!420000) b!923841))

(assert (= (and b!923846 (not res!420003)) b!923843))

(assert (= (and b!923843 res!420001) b!923840))

(assert (= (or b!923841 b!923840) bm!56385))

(assert (= (or b!923842 b!923843) bm!56386))

(assert (= (or b!923844 bm!56386) bm!56387))

(declare-fun m!1149859 () Bool)

(assert (=> bm!56385 m!1149859))

(declare-fun m!1149861 () Bool)

(assert (=> b!923845 m!1149861))

(declare-fun m!1149863 () Bool)

(assert (=> bm!56387 m!1149863))

(assert (=> start!82888 d!280814))

(declare-fun d!280816 () Bool)

(assert (=> d!280816 (= (Exists!255 lambda!30258) (choose!5673 lambda!30258))))

(declare-fun bs!237213 () Bool)

(assert (= bs!237213 d!280816))

(declare-fun m!1149865 () Bool)

(assert (=> bs!237213 m!1149865))

(assert (=> b!923483 d!280816))

(declare-fun d!280818 () Bool)

(declare-fun e!601225 () Bool)

(assert (=> d!280818 e!601225))

(declare-fun res!420004 () Bool)

(assert (=> d!280818 (=> res!420004 e!601225)))

(declare-fun e!601227 () Bool)

(assert (=> d!280818 (= res!420004 e!601227)))

(declare-fun res!420008 () Bool)

(assert (=> d!280818 (=> (not res!420008) (not e!601227))))

(declare-fun lt!338986 () Option!2119)

(assert (=> d!280818 (= res!420008 (isDefined!1761 lt!338986))))

(declare-fun e!601228 () Option!2119)

(assert (=> d!280818 (= lt!338986 e!601228)))

(declare-fun c!149987 () Bool)

(declare-fun e!601226 () Bool)

(assert (=> d!280818 (= c!149987 e!601226)))

(declare-fun res!420006 () Bool)

(assert (=> d!280818 (=> (not res!420006) (not e!601226))))

(assert (=> d!280818 (= res!420006 (matchR!1022 lt!338914 Nil!9698))))

(assert (=> d!280818 (validRegex!953 lt!338914)))

(assert (=> d!280818 (= (findConcatSeparation!225 lt!338914 lt!338909 Nil!9698 s!10566 s!10566) lt!338986)))

(declare-fun b!923849 () Bool)

(declare-fun res!420007 () Bool)

(assert (=> b!923849 (=> (not res!420007) (not e!601227))))

(assert (=> b!923849 (= res!420007 (matchR!1022 lt!338909 (_2!6303 (get!3170 lt!338986))))))

(declare-fun b!923850 () Bool)

(assert (=> b!923850 (= e!601228 (Some!2118 (tuple2!10955 Nil!9698 s!10566)))))

(declare-fun b!923851 () Bool)

(assert (=> b!923851 (= e!601226 (matchR!1022 lt!338909 s!10566))))

(declare-fun b!923852 () Bool)

(declare-fun lt!338987 () Unit!14587)

(declare-fun lt!338988 () Unit!14587)

(assert (=> b!923852 (= lt!338987 lt!338988)))

(assert (=> b!923852 (= (++!2572 (++!2572 Nil!9698 (Cons!9698 (h!15099 s!10566) Nil!9698)) (t!100760 s!10566)) s!10566)))

(assert (=> b!923852 (= lt!338988 (lemmaMoveElementToOtherListKeepsConcatEq!187 Nil!9698 (h!15099 s!10566) (t!100760 s!10566) s!10566))))

(declare-fun e!601224 () Option!2119)

(assert (=> b!923852 (= e!601224 (findConcatSeparation!225 lt!338914 lt!338909 (++!2572 Nil!9698 (Cons!9698 (h!15099 s!10566) Nil!9698)) (t!100760 s!10566) s!10566))))

(declare-fun b!923853 () Bool)

(declare-fun res!420005 () Bool)

(assert (=> b!923853 (=> (not res!420005) (not e!601227))))

(assert (=> b!923853 (= res!420005 (matchR!1022 lt!338914 (_1!6303 (get!3170 lt!338986))))))

(declare-fun b!923854 () Bool)

(assert (=> b!923854 (= e!601227 (= (++!2572 (_1!6303 (get!3170 lt!338986)) (_2!6303 (get!3170 lt!338986))) s!10566))))

(declare-fun b!923855 () Bool)

(assert (=> b!923855 (= e!601225 (not (isDefined!1761 lt!338986)))))

(declare-fun b!923856 () Bool)

(assert (=> b!923856 (= e!601228 e!601224)))

(declare-fun c!149986 () Bool)

(assert (=> b!923856 (= c!149986 (is-Nil!9698 s!10566))))

(declare-fun b!923857 () Bool)

(assert (=> b!923857 (= e!601224 None!2118)))

(assert (= (and d!280818 res!420006) b!923851))

(assert (= (and d!280818 c!149987) b!923850))

(assert (= (and d!280818 (not c!149987)) b!923856))

(assert (= (and b!923856 c!149986) b!923857))

(assert (= (and b!923856 (not c!149986)) b!923852))

(assert (= (and d!280818 res!420008) b!923853))

(assert (= (and b!923853 res!420005) b!923849))

(assert (= (and b!923849 res!420007) b!923854))

(assert (= (and d!280818 (not res!420004)) b!923855))

(declare-fun m!1149867 () Bool)

(assert (=> b!923849 m!1149867))

(declare-fun m!1149869 () Bool)

(assert (=> b!923849 m!1149869))

(assert (=> b!923853 m!1149867))

(declare-fun m!1149871 () Bool)

(assert (=> b!923853 m!1149871))

(assert (=> b!923854 m!1149867))

(declare-fun m!1149873 () Bool)

(assert (=> b!923854 m!1149873))

(declare-fun m!1149875 () Bool)

(assert (=> d!280818 m!1149875))

(declare-fun m!1149877 () Bool)

(assert (=> d!280818 m!1149877))

(assert (=> d!280818 m!1149661))

(assert (=> b!923855 m!1149875))

(declare-fun m!1149879 () Bool)

(assert (=> b!923851 m!1149879))

(assert (=> b!923852 m!1149799))

(assert (=> b!923852 m!1149799))

(assert (=> b!923852 m!1149801))

(assert (=> b!923852 m!1149803))

(assert (=> b!923852 m!1149799))

(declare-fun m!1149881 () Bool)

(assert (=> b!923852 m!1149881))

(assert (=> b!923483 d!280818))

(declare-fun d!280820 () Bool)

(assert (=> d!280820 (= (matchR!1022 lt!338918 s!10566) (matchRSpec!285 lt!338918 s!10566))))

(declare-fun lt!338989 () Unit!14587)

(assert (=> d!280820 (= lt!338989 (choose!5672 lt!338918 s!10566))))

(assert (=> d!280820 (validRegex!953 lt!338918)))

(assert (=> d!280820 (= (mainMatchTheorem!285 lt!338918 s!10566) lt!338989)))

(declare-fun bs!237214 () Bool)

(assert (= bs!237214 d!280820))

(assert (=> bs!237214 m!1149655))

(assert (=> bs!237214 m!1149691))

(declare-fun m!1149883 () Bool)

(assert (=> bs!237214 m!1149883))

(assert (=> bs!237214 m!1149833))

(assert (=> b!923483 d!280820))

(declare-fun d!280822 () Bool)

(assert (=> d!280822 (= (isDefined!1761 (findConcatSeparation!225 lt!338914 lt!338909 Nil!9698 s!10566 s!10566)) (not (isEmpty!5951 (findConcatSeparation!225 lt!338914 lt!338909 Nil!9698 s!10566 s!10566))))))

(declare-fun bs!237215 () Bool)

(assert (= bs!237215 d!280822))

(assert (=> bs!237215 m!1149679))

(declare-fun m!1149885 () Bool)

(assert (=> bs!237215 m!1149885))

(assert (=> b!923483 d!280822))

(declare-fun d!280824 () Bool)

(assert (=> d!280824 (= (Exists!255 lambda!30257) (choose!5673 lambda!30257))))

(declare-fun bs!237216 () Bool)

(assert (= bs!237216 d!280824))

(declare-fun m!1149887 () Bool)

(assert (=> bs!237216 m!1149887))

(assert (=> b!923483 d!280824))

(declare-fun bs!237217 () Bool)

(declare-fun d!280826 () Bool)

(assert (= bs!237217 (and d!280826 b!923638)))

(declare-fun lambda!30298 () Int)

(assert (=> bs!237217 (not (= lambda!30298 lambda!30281))))

(declare-fun bs!237218 () Bool)

(assert (= bs!237218 (and d!280826 b!923636)))

(assert (=> bs!237218 (not (= lambda!30298 lambda!30282))))

(declare-fun bs!237219 () Bool)

(assert (= bs!237219 (and d!280826 b!923478)))

(assert (=> bs!237219 (= (and (= lt!338914 (regOne!5480 r!15766)) (= lt!338909 (regTwo!5480 r!15766))) (= lambda!30298 lambda!30255))))

(declare-fun bs!237220 () Bool)

(assert (= bs!237220 (and d!280826 d!280792)))

(assert (=> bs!237220 (= (and (= lt!338914 (regOne!5480 r!15766)) (= lt!338909 (regTwo!5480 r!15766))) (= lambda!30298 lambda!30289))))

(declare-fun bs!237221 () Bool)

(assert (= bs!237221 (and d!280826 d!280798)))

(assert (=> bs!237221 (not (= lambda!30298 lambda!30295))))

(assert (=> bs!237219 (not (= lambda!30298 lambda!30256))))

(declare-fun bs!237222 () Bool)

(assert (= bs!237222 (and d!280826 b!923483)))

(assert (=> bs!237222 (= lambda!30298 lambda!30257)))

(assert (=> bs!237221 (= (and (= lt!338914 (regOne!5480 r!15766)) (= lt!338909 (regTwo!5480 r!15766))) (= lambda!30298 lambda!30294))))

(assert (=> bs!237222 (not (= lambda!30298 lambda!30258))))

(assert (=> d!280826 true))

(assert (=> d!280826 true))

(assert (=> d!280826 true))

(declare-fun lambda!30299 () Int)

(assert (=> bs!237217 (not (= lambda!30299 lambda!30281))))

(assert (=> bs!237218 (= (and (= lt!338914 (regOne!5480 r!15766)) (= lt!338909 (regTwo!5480 r!15766))) (= lambda!30299 lambda!30282))))

(assert (=> bs!237219 (not (= lambda!30299 lambda!30255))))

(declare-fun bs!237223 () Bool)

(assert (= bs!237223 d!280826))

(assert (=> bs!237223 (not (= lambda!30299 lambda!30298))))

(assert (=> bs!237220 (not (= lambda!30299 lambda!30289))))

(assert (=> bs!237221 (= (and (= lt!338914 (regOne!5480 r!15766)) (= lt!338909 (regTwo!5480 r!15766))) (= lambda!30299 lambda!30295))))

(assert (=> bs!237219 (= (and (= lt!338914 (regOne!5480 r!15766)) (= lt!338909 (regTwo!5480 r!15766))) (= lambda!30299 lambda!30256))))

(assert (=> bs!237222 (not (= lambda!30299 lambda!30257))))

(assert (=> bs!237221 (not (= lambda!30299 lambda!30294))))

(assert (=> bs!237222 (= lambda!30299 lambda!30258)))

(assert (=> d!280826 true))

(assert (=> d!280826 true))

(assert (=> d!280826 true))

(assert (=> d!280826 (= (Exists!255 lambda!30298) (Exists!255 lambda!30299))))

(declare-fun lt!338990 () Unit!14587)

(assert (=> d!280826 (= lt!338990 (choose!5675 lt!338914 lt!338909 s!10566))))

(assert (=> d!280826 (validRegex!953 lt!338914)))

(assert (=> d!280826 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!167 lt!338914 lt!338909 s!10566) lt!338990)))

(declare-fun m!1149889 () Bool)

(assert (=> bs!237223 m!1149889))

(declare-fun m!1149891 () Bool)

(assert (=> bs!237223 m!1149891))

(declare-fun m!1149893 () Bool)

(assert (=> bs!237223 m!1149893))

(assert (=> bs!237223 m!1149661))

(assert (=> b!923483 d!280826))

(declare-fun bs!237224 () Bool)

(declare-fun b!923867 () Bool)

(assert (= bs!237224 (and b!923867 b!923638)))

(declare-fun lambda!30300 () Int)

(assert (=> bs!237224 (= (and (= (reg!2813 lt!338918) (reg!2813 r!15766)) (= lt!338918 r!15766)) (= lambda!30300 lambda!30281))))

(declare-fun bs!237225 () Bool)

(assert (= bs!237225 (and b!923867 b!923478)))

(assert (=> bs!237225 (not (= lambda!30300 lambda!30255))))

(declare-fun bs!237226 () Bool)

(assert (= bs!237226 (and b!923867 d!280826)))

(assert (=> bs!237226 (not (= lambda!30300 lambda!30298))))

(declare-fun bs!237227 () Bool)

(assert (= bs!237227 (and b!923867 d!280792)))

(assert (=> bs!237227 (not (= lambda!30300 lambda!30289))))

(declare-fun bs!237228 () Bool)

(assert (= bs!237228 (and b!923867 d!280798)))

(assert (=> bs!237228 (not (= lambda!30300 lambda!30295))))

(assert (=> bs!237225 (not (= lambda!30300 lambda!30256))))

(declare-fun bs!237229 () Bool)

(assert (= bs!237229 (and b!923867 b!923483)))

(assert (=> bs!237229 (not (= lambda!30300 lambda!30257))))

(declare-fun bs!237230 () Bool)

(assert (= bs!237230 (and b!923867 b!923636)))

(assert (=> bs!237230 (not (= lambda!30300 lambda!30282))))

(assert (=> bs!237226 (not (= lambda!30300 lambda!30299))))

(assert (=> bs!237228 (not (= lambda!30300 lambda!30294))))

(assert (=> bs!237229 (not (= lambda!30300 lambda!30258))))

(assert (=> b!923867 true))

(assert (=> b!923867 true))

(declare-fun bs!237234 () Bool)

(declare-fun b!923865 () Bool)

(assert (= bs!237234 (and b!923865 b!923867)))

(declare-fun lambda!30302 () Int)

(assert (=> bs!237234 (not (= lambda!30302 lambda!30300))))

(declare-fun bs!237235 () Bool)

(assert (= bs!237235 (and b!923865 b!923638)))

(assert (=> bs!237235 (not (= lambda!30302 lambda!30281))))

(declare-fun bs!237237 () Bool)

(assert (= bs!237237 (and b!923865 b!923478)))

(assert (=> bs!237237 (not (= lambda!30302 lambda!30255))))

(declare-fun bs!237238 () Bool)

(assert (= bs!237238 (and b!923865 d!280826)))

(assert (=> bs!237238 (not (= lambda!30302 lambda!30298))))

(declare-fun bs!237239 () Bool)

(assert (= bs!237239 (and b!923865 d!280792)))

(assert (=> bs!237239 (not (= lambda!30302 lambda!30289))))

(declare-fun bs!237240 () Bool)

(assert (= bs!237240 (and b!923865 d!280798)))

(assert (=> bs!237240 (= (and (= (regOne!5480 lt!338918) (regOne!5480 r!15766)) (= (regTwo!5480 lt!338918) (regTwo!5480 r!15766))) (= lambda!30302 lambda!30295))))

(assert (=> bs!237237 (= (and (= (regOne!5480 lt!338918) (regOne!5480 r!15766)) (= (regTwo!5480 lt!338918) (regTwo!5480 r!15766))) (= lambda!30302 lambda!30256))))

(declare-fun bs!237241 () Bool)

(assert (= bs!237241 (and b!923865 b!923483)))

(assert (=> bs!237241 (not (= lambda!30302 lambda!30257))))

(declare-fun bs!237242 () Bool)

(assert (= bs!237242 (and b!923865 b!923636)))

(assert (=> bs!237242 (= (and (= (regOne!5480 lt!338918) (regOne!5480 r!15766)) (= (regTwo!5480 lt!338918) (regTwo!5480 r!15766))) (= lambda!30302 lambda!30282))))

(assert (=> bs!237238 (= (and (= (regOne!5480 lt!338918) lt!338914) (= (regTwo!5480 lt!338918) lt!338909)) (= lambda!30302 lambda!30299))))

(assert (=> bs!237240 (not (= lambda!30302 lambda!30294))))

(assert (=> bs!237241 (= (and (= (regOne!5480 lt!338918) lt!338914) (= (regTwo!5480 lt!338918) lt!338909)) (= lambda!30302 lambda!30258))))

(assert (=> b!923865 true))

(assert (=> b!923865 true))

(declare-fun b!923862 () Bool)

(declare-fun c!149988 () Bool)

(assert (=> b!923862 (= c!149988 (is-Union!2484 lt!338918))))

(declare-fun e!601237 () Bool)

(declare-fun e!601233 () Bool)

(assert (=> b!923862 (= e!601237 e!601233)))

(declare-fun b!923863 () Bool)

(assert (=> b!923863 (= e!601237 (= s!10566 (Cons!9698 (c!149905 lt!338918) Nil!9698)))))

(declare-fun b!923864 () Bool)

(declare-fun e!601235 () Bool)

(assert (=> b!923864 (= e!601233 e!601235)))

(declare-fun c!149989 () Bool)

(assert (=> b!923864 (= c!149989 (is-Star!2484 lt!338918))))

(declare-fun call!56393 () Bool)

(assert (=> b!923865 (= e!601235 call!56393)))

(declare-fun b!923866 () Bool)

(declare-fun e!601234 () Bool)

(declare-fun call!56394 () Bool)

(assert (=> b!923866 (= e!601234 call!56394)))

(declare-fun d!280828 () Bool)

(declare-fun c!149991 () Bool)

(assert (=> d!280828 (= c!149991 (is-EmptyExpr!2484 lt!338918))))

(assert (=> d!280828 (= (matchRSpec!285 lt!338918 s!10566) e!601234)))

(declare-fun e!601236 () Bool)

(assert (=> b!923867 (= e!601236 call!56393)))

(declare-fun b!923868 () Bool)

(declare-fun e!601232 () Bool)

(assert (=> b!923868 (= e!601233 e!601232)))

(declare-fun res!420015 () Bool)

(assert (=> b!923868 (= res!420015 (matchRSpec!285 (regOne!5481 lt!338918) s!10566))))

(assert (=> b!923868 (=> res!420015 e!601232)))

(declare-fun bm!56388 () Bool)

(assert (=> bm!56388 (= call!56393 (Exists!255 (ite c!149989 lambda!30300 lambda!30302)))))

(declare-fun b!923869 () Bool)

(declare-fun e!601231 () Bool)

(assert (=> b!923869 (= e!601234 e!601231)))

(declare-fun res!420014 () Bool)

(assert (=> b!923869 (= res!420014 (not (is-EmptyLang!2484 lt!338918)))))

(assert (=> b!923869 (=> (not res!420014) (not e!601231))))

(declare-fun bm!56389 () Bool)

(assert (=> bm!56389 (= call!56394 (isEmpty!5949 s!10566))))

(declare-fun b!923870 () Bool)

(assert (=> b!923870 (= e!601232 (matchRSpec!285 (regTwo!5481 lt!338918) s!10566))))

(declare-fun b!923871 () Bool)

(declare-fun c!149990 () Bool)

(assert (=> b!923871 (= c!149990 (is-ElementMatch!2484 lt!338918))))

(assert (=> b!923871 (= e!601231 e!601237)))

(declare-fun b!923872 () Bool)

(declare-fun res!420013 () Bool)

(assert (=> b!923872 (=> res!420013 e!601236)))

(assert (=> b!923872 (= res!420013 call!56394)))

(assert (=> b!923872 (= e!601235 e!601236)))

(assert (= (and d!280828 c!149991) b!923866))

(assert (= (and d!280828 (not c!149991)) b!923869))

(assert (= (and b!923869 res!420014) b!923871))

(assert (= (and b!923871 c!149990) b!923863))

(assert (= (and b!923871 (not c!149990)) b!923862))

(assert (= (and b!923862 c!149988) b!923868))

(assert (= (and b!923862 (not c!149988)) b!923864))

(assert (= (and b!923868 (not res!420015)) b!923870))

(assert (= (and b!923864 c!149989) b!923872))

(assert (= (and b!923864 (not c!149989)) b!923865))

(assert (= (and b!923872 (not res!420013)) b!923867))

(assert (= (or b!923867 b!923865) bm!56388))

(assert (= (or b!923866 b!923872) bm!56389))

(declare-fun m!1149901 () Bool)

(assert (=> b!923868 m!1149901))

(declare-fun m!1149903 () Bool)

(assert (=> bm!56388 m!1149903))

(assert (=> bm!56389 m!1149677))

(declare-fun m!1149905 () Bool)

(assert (=> b!923870 m!1149905))

(assert (=> b!923483 d!280828))

(declare-fun bs!237244 () Bool)

(declare-fun d!280832 () Bool)

(assert (= bs!237244 (and d!280832 b!923867)))

(declare-fun lambda!30303 () Int)

(assert (=> bs!237244 (not (= lambda!30303 lambda!30300))))

(declare-fun bs!237245 () Bool)

(assert (= bs!237245 (and d!280832 b!923638)))

(assert (=> bs!237245 (not (= lambda!30303 lambda!30281))))

(declare-fun bs!237246 () Bool)

(assert (= bs!237246 (and d!280832 b!923478)))

(assert (=> bs!237246 (= (and (= lt!338914 (regOne!5480 r!15766)) (= lt!338909 (regTwo!5480 r!15766))) (= lambda!30303 lambda!30255))))

(declare-fun bs!237247 () Bool)

(assert (= bs!237247 (and d!280832 d!280826)))

(assert (=> bs!237247 (= lambda!30303 lambda!30298)))

(declare-fun bs!237248 () Bool)

(assert (= bs!237248 (and d!280832 d!280792)))

(assert (=> bs!237248 (= (and (= lt!338914 (regOne!5480 r!15766)) (= lt!338909 (regTwo!5480 r!15766))) (= lambda!30303 lambda!30289))))

(assert (=> bs!237246 (not (= lambda!30303 lambda!30256))))

(declare-fun bs!237249 () Bool)

(assert (= bs!237249 (and d!280832 b!923483)))

(assert (=> bs!237249 (= lambda!30303 lambda!30257)))

(declare-fun bs!237250 () Bool)

(assert (= bs!237250 (and d!280832 b!923636)))

(assert (=> bs!237250 (not (= lambda!30303 lambda!30282))))

(assert (=> bs!237247 (not (= lambda!30303 lambda!30299))))

(declare-fun bs!237251 () Bool)

(assert (= bs!237251 (and d!280832 d!280798)))

(assert (=> bs!237251 (= (and (= lt!338914 (regOne!5480 r!15766)) (= lt!338909 (regTwo!5480 r!15766))) (= lambda!30303 lambda!30294))))

(assert (=> bs!237249 (not (= lambda!30303 lambda!30258))))

(declare-fun bs!237252 () Bool)

(assert (= bs!237252 (and d!280832 b!923865)))

(assert (=> bs!237252 (not (= lambda!30303 lambda!30302))))

(assert (=> bs!237251 (not (= lambda!30303 lambda!30295))))

(assert (=> d!280832 true))

(assert (=> d!280832 true))

(assert (=> d!280832 true))

(assert (=> d!280832 (= (isDefined!1761 (findConcatSeparation!225 lt!338914 lt!338909 Nil!9698 s!10566 s!10566)) (Exists!255 lambda!30303))))

(declare-fun lt!338992 () Unit!14587)

(assert (=> d!280832 (= lt!338992 (choose!5674 lt!338914 lt!338909 s!10566))))

(assert (=> d!280832 (validRegex!953 lt!338914)))

(assert (=> d!280832 (= (lemmaFindConcatSeparationEquivalentToExists!225 lt!338914 lt!338909 s!10566) lt!338992)))

(declare-fun bs!237253 () Bool)

(assert (= bs!237253 d!280832))

(declare-fun m!1149907 () Bool)

(assert (=> bs!237253 m!1149907))

(assert (=> bs!237253 m!1149679))

(assert (=> bs!237253 m!1149661))

(declare-fun m!1149909 () Bool)

(assert (=> bs!237253 m!1149909))

(assert (=> bs!237253 m!1149679))

(assert (=> bs!237253 m!1149681))

(assert (=> b!923483 d!280832))

(declare-fun b!923886 () Bool)

(declare-fun e!601240 () Bool)

(declare-fun tp!287359 () Bool)

(declare-fun tp!287362 () Bool)

(assert (=> b!923886 (= e!601240 (and tp!287359 tp!287362))))

(declare-fun b!923884 () Bool)

(declare-fun tp!287361 () Bool)

(declare-fun tp!287363 () Bool)

(assert (=> b!923884 (= e!601240 (and tp!287361 tp!287363))))

(declare-fun b!923885 () Bool)

(declare-fun tp!287360 () Bool)

(assert (=> b!923885 (= e!601240 tp!287360)))

(declare-fun b!923883 () Bool)

(assert (=> b!923883 (= e!601240 tp_is_empty!4611)))

(assert (=> b!923474 (= tp!287325 e!601240)))

(assert (= (and b!923474 (is-ElementMatch!2484 (regOne!5481 r!15766))) b!923883))

(assert (= (and b!923474 (is-Concat!4317 (regOne!5481 r!15766))) b!923884))

(assert (= (and b!923474 (is-Star!2484 (regOne!5481 r!15766))) b!923885))

(assert (= (and b!923474 (is-Union!2484 (regOne!5481 r!15766))) b!923886))

(declare-fun b!923890 () Bool)

(declare-fun e!601241 () Bool)

(declare-fun tp!287364 () Bool)

(declare-fun tp!287367 () Bool)

(assert (=> b!923890 (= e!601241 (and tp!287364 tp!287367))))

(declare-fun b!923888 () Bool)

(declare-fun tp!287366 () Bool)

(declare-fun tp!287368 () Bool)

(assert (=> b!923888 (= e!601241 (and tp!287366 tp!287368))))

(declare-fun b!923889 () Bool)

(declare-fun tp!287365 () Bool)

(assert (=> b!923889 (= e!601241 tp!287365)))

(declare-fun b!923887 () Bool)

(assert (=> b!923887 (= e!601241 tp_is_empty!4611)))

(assert (=> b!923474 (= tp!287326 e!601241)))

(assert (= (and b!923474 (is-ElementMatch!2484 (regTwo!5481 r!15766))) b!923887))

(assert (= (and b!923474 (is-Concat!4317 (regTwo!5481 r!15766))) b!923888))

(assert (= (and b!923474 (is-Star!2484 (regTwo!5481 r!15766))) b!923889))

(assert (= (and b!923474 (is-Union!2484 (regTwo!5481 r!15766))) b!923890))

(declare-fun b!923894 () Bool)

(declare-fun e!601242 () Bool)

(declare-fun tp!287369 () Bool)

(declare-fun tp!287372 () Bool)

(assert (=> b!923894 (= e!601242 (and tp!287369 tp!287372))))

(declare-fun b!923892 () Bool)

(declare-fun tp!287371 () Bool)

(declare-fun tp!287373 () Bool)

(assert (=> b!923892 (= e!601242 (and tp!287371 tp!287373))))

(declare-fun b!923893 () Bool)

(declare-fun tp!287370 () Bool)

(assert (=> b!923893 (= e!601242 tp!287370)))

(declare-fun b!923891 () Bool)

(assert (=> b!923891 (= e!601242 tp_is_empty!4611)))

(assert (=> b!923482 (= tp!287327 e!601242)))

(assert (= (and b!923482 (is-ElementMatch!2484 (regOne!5480 r!15766))) b!923891))

(assert (= (and b!923482 (is-Concat!4317 (regOne!5480 r!15766))) b!923892))

(assert (= (and b!923482 (is-Star!2484 (regOne!5480 r!15766))) b!923893))

(assert (= (and b!923482 (is-Union!2484 (regOne!5480 r!15766))) b!923894))

(declare-fun b!923898 () Bool)

(declare-fun e!601243 () Bool)

(declare-fun tp!287374 () Bool)

(declare-fun tp!287377 () Bool)

(assert (=> b!923898 (= e!601243 (and tp!287374 tp!287377))))

(declare-fun b!923896 () Bool)

(declare-fun tp!287376 () Bool)

(declare-fun tp!287378 () Bool)

(assert (=> b!923896 (= e!601243 (and tp!287376 tp!287378))))

(declare-fun b!923897 () Bool)

(declare-fun tp!287375 () Bool)

(assert (=> b!923897 (= e!601243 tp!287375)))

(declare-fun b!923895 () Bool)

(assert (=> b!923895 (= e!601243 tp_is_empty!4611)))

(assert (=> b!923482 (= tp!287330 e!601243)))

(assert (= (and b!923482 (is-ElementMatch!2484 (regTwo!5480 r!15766))) b!923895))

(assert (= (and b!923482 (is-Concat!4317 (regTwo!5480 r!15766))) b!923896))

(assert (= (and b!923482 (is-Star!2484 (regTwo!5480 r!15766))) b!923897))

(assert (= (and b!923482 (is-Union!2484 (regTwo!5480 r!15766))) b!923898))

(declare-fun b!923902 () Bool)

(declare-fun e!601244 () Bool)

(declare-fun tp!287379 () Bool)

(declare-fun tp!287382 () Bool)

(assert (=> b!923902 (= e!601244 (and tp!287379 tp!287382))))

(declare-fun b!923900 () Bool)

(declare-fun tp!287381 () Bool)

(declare-fun tp!287383 () Bool)

(assert (=> b!923900 (= e!601244 (and tp!287381 tp!287383))))

(declare-fun b!923901 () Bool)

(declare-fun tp!287380 () Bool)

(assert (=> b!923901 (= e!601244 tp!287380)))

(declare-fun b!923899 () Bool)

(assert (=> b!923899 (= e!601244 tp_is_empty!4611)))

(assert (=> b!923477 (= tp!287329 e!601244)))

(assert (= (and b!923477 (is-ElementMatch!2484 (reg!2813 r!15766))) b!923899))

(assert (= (and b!923477 (is-Concat!4317 (reg!2813 r!15766))) b!923900))

(assert (= (and b!923477 (is-Star!2484 (reg!2813 r!15766))) b!923901))

(assert (= (and b!923477 (is-Union!2484 (reg!2813 r!15766))) b!923902))

(declare-fun b!923907 () Bool)

(declare-fun e!601247 () Bool)

(declare-fun tp!287386 () Bool)

(assert (=> b!923907 (= e!601247 (and tp_is_empty!4611 tp!287386))))

(assert (=> b!923476 (= tp!287328 e!601247)))

(assert (= (and b!923476 (is-Cons!9698 (t!100760 s!10566))) b!923907))

(push 1)

(assert (not d!280784))

(assert (not b!923751))

(assert (not b!923851))

(assert (not b!923884))

(assert (not b!923900))

(assert (not b!923785))

(assert (not d!280796))

(assert (not d!280818))

(assert (not b!923890))

(assert (not b!923784))

(assert (not bm!56385))

(assert (not bm!56389))

(assert (not b!923845))

(assert (not b!923795))

(assert (not b!923852))

(assert (not b!923868))

(assert (not b!923907))

(assert (not b!923641))

(assert (not b!923893))

(assert (not b!923892))

(assert (not b!923753))

(assert (not d!280782))

(assert (not b!923897))

(assert (not d!280802))

(assert (not d!280822))

(assert (not d!280790))

(assert (not d!280820))

(assert (not b!923756))

(assert (not d!280824))

(assert (not b!923854))

(assert (not d!280832))

(assert (not b!923687))

(assert (not b!923894))

(assert (not b!923853))

(assert (not b!923886))

(assert (not b!923782))

(assert (not b!923839))

(assert (not b!923676))

(assert (not b!923902))

(assert (not b!923789))

(assert (not d!280780))

(assert (not b!923639))

(assert (not bm!56351))

(assert (not b!923828))

(assert (not b!923689))

(assert (not d!280792))

(assert (not bm!56387))

(assert (not d!280806))

(assert (not bm!56383))

(assert (not b!923896))

(assert (not d!280816))

(assert (not bm!56378))

(assert (not bm!56350))

(assert (not b!923888))

(assert (not b!923793))

(assert (not bm!56384))

(assert (not bm!56364))

(assert (not bm!56379))

(assert (not bm!56343))

(assert (not b!923889))

(assert (not b!923849))

(assert (not d!280798))

(assert (not d!280788))

(assert (not b!923855))

(assert (not b!923885))

(assert tp_is_empty!4611)

(assert (not b!923898))

(assert (not b!923901))

(assert (not bm!56345))

(assert (not d!280812))

(assert (not b!923755))

(assert (not d!280826))

(assert (not b!923683))

(assert (not b!923678))

(assert (not bm!56358))

(assert (not b!923679))

(assert (not b!923870))

(assert (not b!923757))

(assert (not bm!56388))

(assert (not b!923754))

(assert (not b!923569))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

