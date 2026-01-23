; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!83544 () Bool)

(assert start!83544)

(declare-fun b!934509 () Bool)

(assert (=> b!934509 true))

(assert (=> b!934509 true))

(assert (=> b!934509 true))

(declare-fun lambda!30954 () Int)

(declare-fun lambda!30953 () Int)

(assert (=> b!934509 (not (= lambda!30954 lambda!30953))))

(assert (=> b!934509 true))

(assert (=> b!934509 true))

(assert (=> b!934509 true))

(declare-fun b!934502 () Bool)

(declare-fun e!607015 () Bool)

(declare-fun tp_is_empty!4751 () Bool)

(assert (=> b!934502 (= e!607015 tp_is_empty!4751)))

(declare-fun b!934503 () Bool)

(declare-fun e!607017 () Bool)

(declare-datatypes ((C!5678 0))(
  ( (C!5679 (val!3087 Int)) )
))
(declare-datatypes ((Regex!2554 0))(
  ( (ElementMatch!2554 (c!151973 C!5678)) (Concat!4387 (regOne!5620 Regex!2554) (regTwo!5620 Regex!2554)) (EmptyExpr!2554) (Star!2554 (reg!2883 Regex!2554)) (EmptyLang!2554) (Union!2554 (regOne!5621 Regex!2554) (regTwo!5621 Regex!2554)) )
))
(declare-fun r!15766 () Regex!2554)

(declare-fun validRegex!1023 (Regex!2554) Bool)

(assert (=> b!934503 (= e!607017 (validRegex!1023 (reg!2883 r!15766)))))

(declare-fun b!934505 () Bool)

(declare-fun tp!289954 () Bool)

(assert (=> b!934505 (= e!607015 tp!289954)))

(declare-fun b!934506 () Bool)

(declare-fun tp!289958 () Bool)

(declare-fun tp!289953 () Bool)

(assert (=> b!934506 (= e!607015 (and tp!289958 tp!289953))))

(declare-fun b!934507 () Bool)

(declare-fun e!607016 () Bool)

(declare-fun e!607018 () Bool)

(assert (=> b!934507 (= e!607016 (not e!607018))))

(declare-fun res!424339 () Bool)

(assert (=> b!934507 (=> res!424339 e!607018)))

(declare-fun lt!341006 () Bool)

(assert (=> b!934507 (= res!424339 (or lt!341006 (and (is-Concat!4387 r!15766) (is-EmptyExpr!2554 (regOne!5620 r!15766))) (and (is-Concat!4387 r!15766) (is-EmptyExpr!2554 (regTwo!5620 r!15766))) (is-Concat!4387 r!15766) (is-Union!2554 r!15766) (not (is-Star!2554 r!15766))))))

(declare-datatypes ((List!9784 0))(
  ( (Nil!9768) (Cons!9768 (h!15169 C!5678) (t!100830 List!9784)) )
))
(declare-fun s!10566 () List!9784)

(declare-fun matchRSpec!355 (Regex!2554 List!9784) Bool)

(assert (=> b!934507 (= lt!341006 (matchRSpec!355 r!15766 s!10566))))

(declare-fun matchR!1092 (Regex!2554 List!9784) Bool)

(assert (=> b!934507 (= lt!341006 (matchR!1092 r!15766 s!10566))))

(declare-datatypes ((Unit!14727 0))(
  ( (Unit!14728) )
))
(declare-fun lt!341005 () Unit!14727)

(declare-fun mainMatchTheorem!355 (Regex!2554 List!9784) Unit!14727)

(assert (=> b!934507 (= lt!341005 (mainMatchTheorem!355 r!15766 s!10566))))

(declare-fun b!934504 () Bool)

(declare-fun tp!289957 () Bool)

(declare-fun tp!289955 () Bool)

(assert (=> b!934504 (= e!607015 (and tp!289957 tp!289955))))

(declare-fun res!424337 () Bool)

(assert (=> start!83544 (=> (not res!424337) (not e!607016))))

(assert (=> start!83544 (= res!424337 (validRegex!1023 r!15766))))

(assert (=> start!83544 e!607016))

(assert (=> start!83544 e!607015))

(declare-fun e!607014 () Bool)

(assert (=> start!83544 e!607014))

(declare-fun b!934508 () Bool)

(declare-fun tp!289956 () Bool)

(assert (=> b!934508 (= e!607014 (and tp_is_empty!4751 tp!289956))))

(assert (=> b!934509 (= e!607018 e!607017)))

(declare-fun res!424338 () Bool)

(assert (=> b!934509 (=> res!424338 e!607017)))

(declare-fun removeUselessConcat!223 (Regex!2554) Regex!2554)

(assert (=> b!934509 (= res!424338 (not (matchR!1092 (Star!2554 (removeUselessConcat!223 (reg!2883 r!15766))) s!10566)))))

(declare-fun Exists!305 (Int) Bool)

(assert (=> b!934509 (= (Exists!305 lambda!30953) (Exists!305 lambda!30954))))

(declare-fun lt!341004 () Unit!14727)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!49 (Regex!2554 List!9784) Unit!14727)

(assert (=> b!934509 (= lt!341004 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!49 (reg!2883 r!15766) s!10566))))

(declare-fun lt!341003 () Regex!2554)

(declare-datatypes ((tuple2!11006 0))(
  ( (tuple2!11007 (_1!6329 List!9784) (_2!6329 List!9784)) )
))
(declare-datatypes ((Option!2145 0))(
  ( (None!2144) (Some!2144 (v!19561 tuple2!11006)) )
))
(declare-fun isDefined!1787 (Option!2145) Bool)

(declare-fun findConcatSeparation!251 (Regex!2554 Regex!2554 List!9784 List!9784 List!9784) Option!2145)

(assert (=> b!934509 (= (isDefined!1787 (findConcatSeparation!251 (reg!2883 r!15766) lt!341003 Nil!9768 s!10566 s!10566)) (Exists!305 lambda!30953))))

(declare-fun lt!341002 () Unit!14727)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!251 (Regex!2554 Regex!2554 List!9784) Unit!14727)

(assert (=> b!934509 (= lt!341002 (lemmaFindConcatSeparationEquivalentToExists!251 (reg!2883 r!15766) lt!341003 s!10566))))

(assert (=> b!934509 (= lt!341003 (Star!2554 (reg!2883 r!15766)))))

(assert (= (and start!83544 res!424337) b!934507))

(assert (= (and b!934507 (not res!424339)) b!934509))

(assert (= (and b!934509 (not res!424338)) b!934503))

(assert (= (and start!83544 (is-ElementMatch!2554 r!15766)) b!934502))

(assert (= (and start!83544 (is-Concat!4387 r!15766)) b!934504))

(assert (= (and start!83544 (is-Star!2554 r!15766)) b!934505))

(assert (= (and start!83544 (is-Union!2554 r!15766)) b!934506))

(assert (= (and start!83544 (is-Cons!9768 s!10566)) b!934508))

(declare-fun m!1154789 () Bool)

(assert (=> b!934503 m!1154789))

(declare-fun m!1154791 () Bool)

(assert (=> b!934507 m!1154791))

(declare-fun m!1154793 () Bool)

(assert (=> b!934507 m!1154793))

(declare-fun m!1154795 () Bool)

(assert (=> b!934507 m!1154795))

(declare-fun m!1154797 () Bool)

(assert (=> start!83544 m!1154797))

(declare-fun m!1154799 () Bool)

(assert (=> b!934509 m!1154799))

(declare-fun m!1154801 () Bool)

(assert (=> b!934509 m!1154801))

(declare-fun m!1154803 () Bool)

(assert (=> b!934509 m!1154803))

(declare-fun m!1154805 () Bool)

(assert (=> b!934509 m!1154805))

(declare-fun m!1154807 () Bool)

(assert (=> b!934509 m!1154807))

(declare-fun m!1154809 () Bool)

(assert (=> b!934509 m!1154809))

(assert (=> b!934509 m!1154799))

(declare-fun m!1154811 () Bool)

(assert (=> b!934509 m!1154811))

(assert (=> b!934509 m!1154807))

(declare-fun m!1154813 () Bool)

(assert (=> b!934509 m!1154813))

(push 1)

(assert (not b!934508))

(assert (not b!934503))

(assert (not b!934506))

(assert (not b!934504))

(assert tp_is_empty!4751)

(assert (not b!934507))

(assert (not start!83544))

(assert (not b!934505))

(assert (not b!934509))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!57857 () Bool)

(declare-fun call!57862 () Bool)

(declare-fun c!151980 () Bool)

(assert (=> bm!57857 (= call!57862 (validRegex!1023 (ite c!151980 (regOne!5621 r!15766) (regOne!5620 r!15766))))))

(declare-fun b!934574 () Bool)

(declare-fun e!607059 () Bool)

(declare-fun e!607055 () Bool)

(assert (=> b!934574 (= e!607059 e!607055)))

(assert (=> b!934574 (= c!151980 (is-Union!2554 r!15766))))

(declare-fun b!934575 () Bool)

(declare-fun e!607054 () Bool)

(declare-fun call!57863 () Bool)

(assert (=> b!934575 (= e!607054 call!57863)))

(declare-fun c!151979 () Bool)

(declare-fun bm!57858 () Bool)

(declare-fun call!57864 () Bool)

(assert (=> bm!57858 (= call!57864 (validRegex!1023 (ite c!151979 (reg!2883 r!15766) (ite c!151980 (regTwo!5621 r!15766) (regTwo!5620 r!15766)))))))

(declare-fun b!934577 () Bool)

(declare-fun e!607060 () Bool)

(assert (=> b!934577 (= e!607059 e!607060)))

(declare-fun res!424374 () Bool)

(declare-fun nullable!732 (Regex!2554) Bool)

(assert (=> b!934577 (= res!424374 (not (nullable!732 (reg!2883 r!15766))))))

(assert (=> b!934577 (=> (not res!424374) (not e!607060))))

(declare-fun b!934578 () Bool)

(declare-fun res!424376 () Bool)

(declare-fun e!607058 () Bool)

(assert (=> b!934578 (=> res!424376 e!607058)))

(assert (=> b!934578 (= res!424376 (not (is-Concat!4387 r!15766)))))

(assert (=> b!934578 (= e!607055 e!607058)))

(declare-fun bm!57859 () Bool)

(assert (=> bm!57859 (= call!57863 call!57864)))

(declare-fun d!281729 () Bool)

(declare-fun res!424377 () Bool)

(declare-fun e!607057 () Bool)

(assert (=> d!281729 (=> res!424377 e!607057)))

(assert (=> d!281729 (= res!424377 (is-ElementMatch!2554 r!15766))))

(assert (=> d!281729 (= (validRegex!1023 r!15766) e!607057)))

(declare-fun b!934576 () Bool)

(assert (=> b!934576 (= e!607058 e!607054)))

(declare-fun res!424373 () Bool)

(assert (=> b!934576 (=> (not res!424373) (not e!607054))))

(assert (=> b!934576 (= res!424373 call!57862)))

(declare-fun b!934579 () Bool)

(assert (=> b!934579 (= e!607057 e!607059)))

(assert (=> b!934579 (= c!151979 (is-Star!2554 r!15766))))

(declare-fun b!934580 () Bool)

(declare-fun e!607056 () Bool)

(assert (=> b!934580 (= e!607056 call!57863)))

(declare-fun b!934581 () Bool)

(declare-fun res!424375 () Bool)

(assert (=> b!934581 (=> (not res!424375) (not e!607056))))

(assert (=> b!934581 (= res!424375 call!57862)))

(assert (=> b!934581 (= e!607055 e!607056)))

(declare-fun b!934582 () Bool)

(assert (=> b!934582 (= e!607060 call!57864)))

(assert (= (and d!281729 (not res!424377)) b!934579))

(assert (= (and b!934579 c!151979) b!934577))

(assert (= (and b!934579 (not c!151979)) b!934574))

(assert (= (and b!934577 res!424374) b!934582))

(assert (= (and b!934574 c!151980) b!934581))

(assert (= (and b!934574 (not c!151980)) b!934578))

(assert (= (and b!934581 res!424375) b!934580))

(assert (= (and b!934578 (not res!424376)) b!934576))

(assert (= (and b!934576 res!424373) b!934575))

(assert (= (or b!934580 b!934575) bm!57859))

(assert (= (or b!934581 b!934576) bm!57857))

(assert (= (or b!934582 bm!57859) bm!57858))

(declare-fun m!1154841 () Bool)

(assert (=> bm!57857 m!1154841))

(declare-fun m!1154843 () Bool)

(assert (=> bm!57858 m!1154843))

(declare-fun m!1154845 () Bool)

(assert (=> b!934577 m!1154845))

(assert (=> start!83544 d!281729))

(declare-fun bs!237826 () Bool)

(declare-fun b!934637 () Bool)

(assert (= bs!237826 (and b!934637 b!934509)))

(declare-fun lambda!30967 () Int)

(assert (=> bs!237826 (not (= lambda!30967 lambda!30953))))

(assert (=> bs!237826 (= (= r!15766 lt!341003) (= lambda!30967 lambda!30954))))

(assert (=> b!934637 true))

(assert (=> b!934637 true))

(declare-fun bs!237827 () Bool)

(declare-fun b!934642 () Bool)

(assert (= bs!237827 (and b!934642 b!934509)))

(declare-fun lambda!30968 () Int)

(assert (=> bs!237827 (not (= lambda!30968 lambda!30953))))

(assert (=> bs!237827 (not (= lambda!30968 lambda!30954))))

(declare-fun bs!237828 () Bool)

(assert (= bs!237828 (and b!934642 b!934637)))

(assert (=> bs!237828 (not (= lambda!30968 lambda!30967))))

(assert (=> b!934642 true))

(assert (=> b!934642 true))

(declare-fun b!934633 () Bool)

(declare-fun e!607096 () Bool)

(declare-fun call!57876 () Bool)

(assert (=> b!934633 (= e!607096 call!57876)))

(declare-fun b!934634 () Bool)

(declare-fun e!607095 () Bool)

(declare-fun e!607099 () Bool)

(assert (=> b!934634 (= e!607095 e!607099)))

(declare-fun res!424404 () Bool)

(assert (=> b!934634 (= res!424404 (matchRSpec!355 (regOne!5621 r!15766) s!10566))))

(assert (=> b!934634 (=> res!424404 e!607099)))

(declare-fun bm!57870 () Bool)

(declare-fun isEmpty!6007 (List!9784) Bool)

(assert (=> bm!57870 (= call!57876 (isEmpty!6007 s!10566))))

(declare-fun b!934635 () Bool)

(declare-fun e!607094 () Bool)

(assert (=> b!934635 (= e!607096 e!607094)))

(declare-fun res!424406 () Bool)

(assert (=> b!934635 (= res!424406 (not (is-EmptyLang!2554 r!15766)))))

(assert (=> b!934635 (=> (not res!424406) (not e!607094))))

(declare-fun b!934636 () Bool)

(declare-fun e!607098 () Bool)

(assert (=> b!934636 (= e!607098 (= s!10566 (Cons!9768 (c!151973 r!15766) Nil!9768)))))

(declare-fun e!607093 () Bool)

(declare-fun call!57875 () Bool)

(assert (=> b!934637 (= e!607093 call!57875)))

(declare-fun c!151993 () Bool)

(declare-fun bm!57871 () Bool)

(assert (=> bm!57871 (= call!57875 (Exists!305 (ite c!151993 lambda!30967 lambda!30968)))))

(declare-fun b!934638 () Bool)

(declare-fun res!424405 () Bool)

(assert (=> b!934638 (=> res!424405 e!607093)))

(assert (=> b!934638 (= res!424405 call!57876)))

(declare-fun e!607097 () Bool)

(assert (=> b!934638 (= e!607097 e!607093)))

(declare-fun b!934639 () Bool)

(declare-fun c!151996 () Bool)

(assert (=> b!934639 (= c!151996 (is-Union!2554 r!15766))))

(assert (=> b!934639 (= e!607098 e!607095)))

(declare-fun b!934640 () Bool)

(assert (=> b!934640 (= e!607099 (matchRSpec!355 (regTwo!5621 r!15766) s!10566))))

(declare-fun b!934641 () Bool)

(declare-fun c!151994 () Bool)

(assert (=> b!934641 (= c!151994 (is-ElementMatch!2554 r!15766))))

(assert (=> b!934641 (= e!607094 e!607098)))

(declare-fun d!281731 () Bool)

(declare-fun c!151995 () Bool)

(assert (=> d!281731 (= c!151995 (is-EmptyExpr!2554 r!15766))))

(assert (=> d!281731 (= (matchRSpec!355 r!15766 s!10566) e!607096)))

(assert (=> b!934642 (= e!607097 call!57875)))

(declare-fun b!934643 () Bool)

(assert (=> b!934643 (= e!607095 e!607097)))

(assert (=> b!934643 (= c!151993 (is-Star!2554 r!15766))))

(assert (= (and d!281731 c!151995) b!934633))

(assert (= (and d!281731 (not c!151995)) b!934635))

(assert (= (and b!934635 res!424406) b!934641))

(assert (= (and b!934641 c!151994) b!934636))

(assert (= (and b!934641 (not c!151994)) b!934639))

(assert (= (and b!934639 c!151996) b!934634))

(assert (= (and b!934639 (not c!151996)) b!934643))

(assert (= (and b!934634 (not res!424404)) b!934640))

(assert (= (and b!934643 c!151993) b!934638))

(assert (= (and b!934643 (not c!151993)) b!934642))

(assert (= (and b!934638 (not res!424405)) b!934637))

(assert (= (or b!934637 b!934642) bm!57871))

(assert (= (or b!934633 b!934638) bm!57870))

(declare-fun m!1154847 () Bool)

(assert (=> b!934634 m!1154847))

(declare-fun m!1154849 () Bool)

(assert (=> bm!57870 m!1154849))

(declare-fun m!1154851 () Bool)

(assert (=> bm!57871 m!1154851))

(declare-fun m!1154853 () Bool)

(assert (=> b!934640 m!1154853))

(assert (=> b!934507 d!281731))

(declare-fun b!934681 () Bool)

(declare-fun e!607124 () Bool)

(declare-fun head!1695 (List!9784) C!5678)

(assert (=> b!934681 (= e!607124 (not (= (head!1695 s!10566) (c!151973 r!15766))))))

(declare-fun b!934682 () Bool)

(declare-fun e!607123 () Bool)

(declare-fun derivativeStep!542 (Regex!2554 C!5678) Regex!2554)

(declare-fun tail!1257 (List!9784) List!9784)

(assert (=> b!934682 (= e!607123 (matchR!1092 (derivativeStep!542 r!15766 (head!1695 s!10566)) (tail!1257 s!10566)))))

(declare-fun d!281735 () Bool)

(declare-fun e!607127 () Bool)

(assert (=> d!281735 e!607127))

(declare-fun c!152007 () Bool)

(assert (=> d!281735 (= c!152007 (is-EmptyExpr!2554 r!15766))))

(declare-fun lt!341024 () Bool)

(assert (=> d!281735 (= lt!341024 e!607123)))

(declare-fun c!152005 () Bool)

(assert (=> d!281735 (= c!152005 (isEmpty!6007 s!10566))))

(assert (=> d!281735 (validRegex!1023 r!15766)))

(assert (=> d!281735 (= (matchR!1092 r!15766 s!10566) lt!341024)))

(declare-fun b!934683 () Bool)

(declare-fun res!424428 () Bool)

(declare-fun e!607125 () Bool)

(assert (=> b!934683 (=> res!424428 e!607125)))

(assert (=> b!934683 (= res!424428 (not (is-ElementMatch!2554 r!15766)))))

(declare-fun e!607121 () Bool)

(assert (=> b!934683 (= e!607121 e!607125)))

(declare-fun b!934684 () Bool)

(assert (=> b!934684 (= e!607127 e!607121)))

(declare-fun c!152006 () Bool)

(assert (=> b!934684 (= c!152006 (is-EmptyLang!2554 r!15766))))

(declare-fun b!934685 () Bool)

(assert (=> b!934685 (= e!607123 (nullable!732 r!15766))))

(declare-fun b!934686 () Bool)

(declare-fun res!424429 () Bool)

(declare-fun e!607126 () Bool)

(assert (=> b!934686 (=> (not res!424429) (not e!607126))))

(assert (=> b!934686 (= res!424429 (isEmpty!6007 (tail!1257 s!10566)))))

(declare-fun b!934687 () Bool)

(declare-fun res!424432 () Bool)

(assert (=> b!934687 (=> res!424432 e!607125)))

(assert (=> b!934687 (= res!424432 e!607126)))

(declare-fun res!424435 () Bool)

(assert (=> b!934687 (=> (not res!424435) (not e!607126))))

(assert (=> b!934687 (= res!424435 lt!341024)))

(declare-fun b!934688 () Bool)

(declare-fun res!424430 () Bool)

(assert (=> b!934688 (=> res!424430 e!607124)))

(assert (=> b!934688 (= res!424430 (not (isEmpty!6007 (tail!1257 s!10566))))))

(declare-fun b!934689 () Bool)

(declare-fun res!424431 () Bool)

(assert (=> b!934689 (=> (not res!424431) (not e!607126))))

(declare-fun call!57882 () Bool)

(assert (=> b!934689 (= res!424431 (not call!57882))))

(declare-fun b!934690 () Bool)

(assert (=> b!934690 (= e!607126 (= (head!1695 s!10566) (c!151973 r!15766)))))

(declare-fun bm!57877 () Bool)

(assert (=> bm!57877 (= call!57882 (isEmpty!6007 s!10566))))

(declare-fun b!934691 () Bool)

(declare-fun e!607122 () Bool)

(assert (=> b!934691 (= e!607125 e!607122)))

(declare-fun res!424433 () Bool)

(assert (=> b!934691 (=> (not res!424433) (not e!607122))))

(assert (=> b!934691 (= res!424433 (not lt!341024))))

(declare-fun b!934692 () Bool)

(assert (=> b!934692 (= e!607127 (= lt!341024 call!57882))))

(declare-fun b!934693 () Bool)

(assert (=> b!934693 (= e!607121 (not lt!341024))))

(declare-fun b!934694 () Bool)

(assert (=> b!934694 (= e!607122 e!607124)))

(declare-fun res!424434 () Bool)

(assert (=> b!934694 (=> res!424434 e!607124)))

(assert (=> b!934694 (= res!424434 call!57882)))

(assert (= (and d!281735 c!152005) b!934685))

(assert (= (and d!281735 (not c!152005)) b!934682))

(assert (= (and d!281735 c!152007) b!934692))

(assert (= (and d!281735 (not c!152007)) b!934684))

(assert (= (and b!934684 c!152006) b!934693))

(assert (= (and b!934684 (not c!152006)) b!934683))

(assert (= (and b!934683 (not res!424428)) b!934687))

(assert (= (and b!934687 res!424435) b!934689))

(assert (= (and b!934689 res!424431) b!934686))

(assert (= (and b!934686 res!424429) b!934690))

(assert (= (and b!934687 (not res!424432)) b!934691))

(assert (= (and b!934691 res!424433) b!934694))

(assert (= (and b!934694 (not res!424434)) b!934688))

(assert (= (and b!934688 (not res!424430)) b!934681))

(assert (= (or b!934692 b!934689 b!934694) bm!57877))

(declare-fun m!1154865 () Bool)

(assert (=> b!934688 m!1154865))

(assert (=> b!934688 m!1154865))

(declare-fun m!1154867 () Bool)

(assert (=> b!934688 m!1154867))

(declare-fun m!1154869 () Bool)

(assert (=> b!934681 m!1154869))

(declare-fun m!1154871 () Bool)

(assert (=> b!934685 m!1154871))

(assert (=> d!281735 m!1154849))

(assert (=> d!281735 m!1154797))

(assert (=> b!934690 m!1154869))

(assert (=> b!934682 m!1154869))

(assert (=> b!934682 m!1154869))

(declare-fun m!1154873 () Bool)

(assert (=> b!934682 m!1154873))

(assert (=> b!934682 m!1154865))

(assert (=> b!934682 m!1154873))

(assert (=> b!934682 m!1154865))

(declare-fun m!1154875 () Bool)

(assert (=> b!934682 m!1154875))

(assert (=> bm!57877 m!1154849))

(assert (=> b!934686 m!1154865))

(assert (=> b!934686 m!1154865))

(assert (=> b!934686 m!1154867))

(assert (=> b!934507 d!281735))

(declare-fun d!281743 () Bool)

(assert (=> d!281743 (= (matchR!1092 r!15766 s!10566) (matchRSpec!355 r!15766 s!10566))))

(declare-fun lt!341027 () Unit!14727)

(declare-fun choose!5753 (Regex!2554 List!9784) Unit!14727)

(assert (=> d!281743 (= lt!341027 (choose!5753 r!15766 s!10566))))

(assert (=> d!281743 (validRegex!1023 r!15766)))

(assert (=> d!281743 (= (mainMatchTheorem!355 r!15766 s!10566) lt!341027)))

(declare-fun bs!237831 () Bool)

(assert (= bs!237831 d!281743))

(assert (=> bs!237831 m!1154793))

(assert (=> bs!237831 m!1154791))

(declare-fun m!1154877 () Bool)

(assert (=> bs!237831 m!1154877))

(assert (=> bs!237831 m!1154797))

(assert (=> b!934507 d!281743))

(declare-fun bm!57878 () Bool)

(declare-fun call!57883 () Bool)

(declare-fun c!152009 () Bool)

(assert (=> bm!57878 (= call!57883 (validRegex!1023 (ite c!152009 (regOne!5621 (reg!2883 r!15766)) (regOne!5620 (reg!2883 r!15766)))))))

(declare-fun b!934695 () Bool)

(declare-fun e!607133 () Bool)

(declare-fun e!607129 () Bool)

(assert (=> b!934695 (= e!607133 e!607129)))

(assert (=> b!934695 (= c!152009 (is-Union!2554 (reg!2883 r!15766)))))

(declare-fun b!934696 () Bool)

(declare-fun e!607128 () Bool)

(declare-fun call!57884 () Bool)

(assert (=> b!934696 (= e!607128 call!57884)))

(declare-fun c!152008 () Bool)

(declare-fun bm!57879 () Bool)

(declare-fun call!57885 () Bool)

(assert (=> bm!57879 (= call!57885 (validRegex!1023 (ite c!152008 (reg!2883 (reg!2883 r!15766)) (ite c!152009 (regTwo!5621 (reg!2883 r!15766)) (regTwo!5620 (reg!2883 r!15766))))))))

(declare-fun b!934698 () Bool)

(declare-fun e!607134 () Bool)

(assert (=> b!934698 (= e!607133 e!607134)))

(declare-fun res!424437 () Bool)

(assert (=> b!934698 (= res!424437 (not (nullable!732 (reg!2883 (reg!2883 r!15766)))))))

(assert (=> b!934698 (=> (not res!424437) (not e!607134))))

(declare-fun b!934699 () Bool)

(declare-fun res!424439 () Bool)

(declare-fun e!607132 () Bool)

(assert (=> b!934699 (=> res!424439 e!607132)))

(assert (=> b!934699 (= res!424439 (not (is-Concat!4387 (reg!2883 r!15766))))))

(assert (=> b!934699 (= e!607129 e!607132)))

(declare-fun bm!57880 () Bool)

(assert (=> bm!57880 (= call!57884 call!57885)))

(declare-fun d!281745 () Bool)

(declare-fun res!424440 () Bool)

(declare-fun e!607131 () Bool)

(assert (=> d!281745 (=> res!424440 e!607131)))

(assert (=> d!281745 (= res!424440 (is-ElementMatch!2554 (reg!2883 r!15766)))))

(assert (=> d!281745 (= (validRegex!1023 (reg!2883 r!15766)) e!607131)))

(declare-fun b!934697 () Bool)

(assert (=> b!934697 (= e!607132 e!607128)))

(declare-fun res!424436 () Bool)

(assert (=> b!934697 (=> (not res!424436) (not e!607128))))

(assert (=> b!934697 (= res!424436 call!57883)))

(declare-fun b!934700 () Bool)

(assert (=> b!934700 (= e!607131 e!607133)))

(assert (=> b!934700 (= c!152008 (is-Star!2554 (reg!2883 r!15766)))))

(declare-fun b!934701 () Bool)

(declare-fun e!607130 () Bool)

(assert (=> b!934701 (= e!607130 call!57884)))

(declare-fun b!934702 () Bool)

(declare-fun res!424438 () Bool)

(assert (=> b!934702 (=> (not res!424438) (not e!607130))))

(assert (=> b!934702 (= res!424438 call!57883)))

(assert (=> b!934702 (= e!607129 e!607130)))

(declare-fun b!934703 () Bool)

(assert (=> b!934703 (= e!607134 call!57885)))

(assert (= (and d!281745 (not res!424440)) b!934700))

(assert (= (and b!934700 c!152008) b!934698))

(assert (= (and b!934700 (not c!152008)) b!934695))

(assert (= (and b!934698 res!424437) b!934703))

(assert (= (and b!934695 c!152009) b!934702))

(assert (= (and b!934695 (not c!152009)) b!934699))

(assert (= (and b!934702 res!424438) b!934701))

(assert (= (and b!934699 (not res!424439)) b!934697))

(assert (= (and b!934697 res!424436) b!934696))

(assert (= (or b!934701 b!934696) bm!57880))

(assert (= (or b!934702 b!934697) bm!57878))

(assert (= (or b!934703 bm!57880) bm!57879))

(declare-fun m!1154879 () Bool)

(assert (=> bm!57878 m!1154879))

(declare-fun m!1154881 () Bool)

(assert (=> bm!57879 m!1154881))

(declare-fun m!1154883 () Bool)

(assert (=> b!934698 m!1154883))

(assert (=> b!934503 d!281745))

(declare-fun d!281747 () Bool)

(declare-fun isEmpty!6008 (Option!2145) Bool)

(assert (=> d!281747 (= (isDefined!1787 (findConcatSeparation!251 (reg!2883 r!15766) lt!341003 Nil!9768 s!10566 s!10566)) (not (isEmpty!6008 (findConcatSeparation!251 (reg!2883 r!15766) lt!341003 Nil!9768 s!10566 s!10566))))))

(declare-fun bs!237832 () Bool)

(assert (= bs!237832 d!281747))

(assert (=> bs!237832 m!1154799))

(declare-fun m!1154885 () Bool)

(assert (=> bs!237832 m!1154885))

(assert (=> b!934509 d!281747))

(declare-fun bs!237833 () Bool)

(declare-fun d!281749 () Bool)

(assert (= bs!237833 (and d!281749 b!934509)))

(declare-fun lambda!30973 () Int)

(assert (=> bs!237833 (= lambda!30973 lambda!30953)))

(assert (=> bs!237833 (not (= lambda!30973 lambda!30954))))

(declare-fun bs!237834 () Bool)

(assert (= bs!237834 (and d!281749 b!934637)))

(assert (=> bs!237834 (not (= lambda!30973 lambda!30967))))

(declare-fun bs!237835 () Bool)

(assert (= bs!237835 (and d!281749 b!934642)))

(assert (=> bs!237835 (not (= lambda!30973 lambda!30968))))

(assert (=> d!281749 true))

(assert (=> d!281749 true))

(assert (=> d!281749 true))

(assert (=> d!281749 (= (isDefined!1787 (findConcatSeparation!251 (reg!2883 r!15766) lt!341003 Nil!9768 s!10566 s!10566)) (Exists!305 lambda!30973))))

(declare-fun lt!341032 () Unit!14727)

(declare-fun choose!5754 (Regex!2554 Regex!2554 List!9784) Unit!14727)

(assert (=> d!281749 (= lt!341032 (choose!5754 (reg!2883 r!15766) lt!341003 s!10566))))

(assert (=> d!281749 (validRegex!1023 (reg!2883 r!15766))))

(assert (=> d!281749 (= (lemmaFindConcatSeparationEquivalentToExists!251 (reg!2883 r!15766) lt!341003 s!10566) lt!341032)))

(declare-fun bs!237836 () Bool)

(assert (= bs!237836 d!281749))

(assert (=> bs!237836 m!1154799))

(declare-fun m!1154887 () Bool)

(assert (=> bs!237836 m!1154887))

(assert (=> bs!237836 m!1154789))

(assert (=> bs!237836 m!1154799))

(assert (=> bs!237836 m!1154811))

(declare-fun m!1154889 () Bool)

(assert (=> bs!237836 m!1154889))

(assert (=> b!934509 d!281749))

(declare-fun bs!237838 () Bool)

(declare-fun d!281751 () Bool)

(assert (= bs!237838 (and d!281751 b!934637)))

(declare-fun lambda!30981 () Int)

(assert (=> bs!237838 (not (= lambda!30981 lambda!30967))))

(declare-fun bs!237839 () Bool)

(assert (= bs!237839 (and d!281751 b!934642)))

(assert (=> bs!237839 (not (= lambda!30981 lambda!30968))))

(declare-fun bs!237840 () Bool)

(assert (= bs!237840 (and d!281751 b!934509)))

(assert (=> bs!237840 (= (= (Star!2554 (reg!2883 r!15766)) lt!341003) (= lambda!30981 lambda!30953))))

(declare-fun bs!237841 () Bool)

(assert (= bs!237841 (and d!281751 d!281749)))

(assert (=> bs!237841 (= (= (Star!2554 (reg!2883 r!15766)) lt!341003) (= lambda!30981 lambda!30973))))

(assert (=> bs!237840 (not (= lambda!30981 lambda!30954))))

(assert (=> d!281751 true))

(assert (=> d!281751 true))

(declare-fun lambda!30983 () Int)

(assert (=> bs!237838 (= (= (Star!2554 (reg!2883 r!15766)) r!15766) (= lambda!30983 lambda!30967))))

(assert (=> bs!237839 (not (= lambda!30983 lambda!30968))))

(assert (=> bs!237840 (not (= lambda!30983 lambda!30953))))

(assert (=> bs!237840 (= (= (Star!2554 (reg!2883 r!15766)) lt!341003) (= lambda!30983 lambda!30954))))

(assert (=> bs!237841 (not (= lambda!30983 lambda!30973))))

(declare-fun bs!237842 () Bool)

(assert (= bs!237842 d!281751))

(assert (=> bs!237842 (not (= lambda!30983 lambda!30981))))

(assert (=> d!281751 true))

(assert (=> d!281751 true))

(assert (=> d!281751 (= (Exists!305 lambda!30981) (Exists!305 lambda!30983))))

(declare-fun lt!341036 () Unit!14727)

(declare-fun choose!5755 (Regex!2554 List!9784) Unit!14727)

(assert (=> d!281751 (= lt!341036 (choose!5755 (reg!2883 r!15766) s!10566))))

(assert (=> d!281751 (validRegex!1023 (reg!2883 r!15766))))

(assert (=> d!281751 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!49 (reg!2883 r!15766) s!10566) lt!341036)))

(declare-fun m!1154891 () Bool)

(assert (=> bs!237842 m!1154891))

(declare-fun m!1154893 () Bool)

(assert (=> bs!237842 m!1154893))

(declare-fun m!1154895 () Bool)

(assert (=> bs!237842 m!1154895))

(assert (=> bs!237842 m!1154789))

(assert (=> b!934509 d!281751))

(declare-fun b!934746 () Bool)

(declare-fun res!424478 () Bool)

(declare-fun e!607157 () Bool)

(assert (=> b!934746 (=> (not res!424478) (not e!607157))))

(declare-fun lt!341044 () Option!2145)

(declare-fun get!3222 (Option!2145) tuple2!11006)

(assert (=> b!934746 (= res!424478 (matchR!1092 (reg!2883 r!15766) (_1!6329 (get!3222 lt!341044))))))

(declare-fun b!934747 () Bool)

(declare-fun e!607158 () Option!2145)

(assert (=> b!934747 (= e!607158 (Some!2144 (tuple2!11007 Nil!9768 s!10566)))))

(declare-fun b!934748 () Bool)

(declare-fun e!607155 () Option!2145)

(assert (=> b!934748 (= e!607155 None!2144)))

(declare-fun b!934749 () Bool)

(declare-fun e!607159 () Bool)

(assert (=> b!934749 (= e!607159 (matchR!1092 lt!341003 s!10566))))

(declare-fun b!934750 () Bool)

(declare-fun e!607156 () Bool)

(assert (=> b!934750 (= e!607156 (not (isDefined!1787 lt!341044)))))

(declare-fun b!934751 () Bool)

(declare-fun ++!2585 (List!9784 List!9784) List!9784)

(assert (=> b!934751 (= e!607157 (= (++!2585 (_1!6329 (get!3222 lt!341044)) (_2!6329 (get!3222 lt!341044))) s!10566))))

(declare-fun b!934752 () Bool)

(declare-fun res!424477 () Bool)

(assert (=> b!934752 (=> (not res!424477) (not e!607157))))

(assert (=> b!934752 (= res!424477 (matchR!1092 lt!341003 (_2!6329 (get!3222 lt!341044))))))

(declare-fun d!281753 () Bool)

(assert (=> d!281753 e!607156))

(declare-fun res!424476 () Bool)

(assert (=> d!281753 (=> res!424476 e!607156)))

(assert (=> d!281753 (= res!424476 e!607157)))

(declare-fun res!424475 () Bool)

(assert (=> d!281753 (=> (not res!424475) (not e!607157))))

(assert (=> d!281753 (= res!424475 (isDefined!1787 lt!341044))))

(assert (=> d!281753 (= lt!341044 e!607158)))

(declare-fun c!152015 () Bool)

(assert (=> d!281753 (= c!152015 e!607159)))

(declare-fun res!424479 () Bool)

(assert (=> d!281753 (=> (not res!424479) (not e!607159))))

(assert (=> d!281753 (= res!424479 (matchR!1092 (reg!2883 r!15766) Nil!9768))))

(assert (=> d!281753 (validRegex!1023 (reg!2883 r!15766))))

(assert (=> d!281753 (= (findConcatSeparation!251 (reg!2883 r!15766) lt!341003 Nil!9768 s!10566 s!10566) lt!341044)))

(declare-fun b!934753 () Bool)

(declare-fun lt!341045 () Unit!14727)

(declare-fun lt!341043 () Unit!14727)

(assert (=> b!934753 (= lt!341045 lt!341043)))

(assert (=> b!934753 (= (++!2585 (++!2585 Nil!9768 (Cons!9768 (h!15169 s!10566) Nil!9768)) (t!100830 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!198 (List!9784 C!5678 List!9784 List!9784) Unit!14727)

(assert (=> b!934753 (= lt!341043 (lemmaMoveElementToOtherListKeepsConcatEq!198 Nil!9768 (h!15169 s!10566) (t!100830 s!10566) s!10566))))

(assert (=> b!934753 (= e!607155 (findConcatSeparation!251 (reg!2883 r!15766) lt!341003 (++!2585 Nil!9768 (Cons!9768 (h!15169 s!10566) Nil!9768)) (t!100830 s!10566) s!10566))))

(declare-fun b!934754 () Bool)

(assert (=> b!934754 (= e!607158 e!607155)))

(declare-fun c!152014 () Bool)

(assert (=> b!934754 (= c!152014 (is-Nil!9768 s!10566))))

(assert (= (and d!281753 res!424479) b!934749))

(assert (= (and d!281753 c!152015) b!934747))

(assert (= (and d!281753 (not c!152015)) b!934754))

(assert (= (and b!934754 c!152014) b!934748))

(assert (= (and b!934754 (not c!152014)) b!934753))

(assert (= (and d!281753 res!424475) b!934746))

(assert (= (and b!934746 res!424478) b!934752))

(assert (= (and b!934752 res!424477) b!934751))

(assert (= (and d!281753 (not res!424476)) b!934750))

(declare-fun m!1154903 () Bool)

(assert (=> b!934749 m!1154903))

(declare-fun m!1154905 () Bool)

(assert (=> b!934753 m!1154905))

(assert (=> b!934753 m!1154905))

(declare-fun m!1154907 () Bool)

(assert (=> b!934753 m!1154907))

(declare-fun m!1154909 () Bool)

(assert (=> b!934753 m!1154909))

(assert (=> b!934753 m!1154905))

(declare-fun m!1154911 () Bool)

(assert (=> b!934753 m!1154911))

(declare-fun m!1154913 () Bool)

(assert (=> d!281753 m!1154913))

(declare-fun m!1154915 () Bool)

(assert (=> d!281753 m!1154915))

(assert (=> d!281753 m!1154789))

(assert (=> b!934750 m!1154913))

(declare-fun m!1154917 () Bool)

(assert (=> b!934752 m!1154917))

(declare-fun m!1154919 () Bool)

(assert (=> b!934752 m!1154919))

(assert (=> b!934751 m!1154917))

(declare-fun m!1154921 () Bool)

(assert (=> b!934751 m!1154921))

(assert (=> b!934746 m!1154917))

(declare-fun m!1154923 () Bool)

(assert (=> b!934746 m!1154923))

(assert (=> b!934509 d!281753))

(declare-fun d!281757 () Bool)

(declare-fun choose!5756 (Int) Bool)

(assert (=> d!281757 (= (Exists!305 lambda!30953) (choose!5756 lambda!30953))))

(declare-fun bs!237844 () Bool)

(assert (= bs!237844 d!281757))

(declare-fun m!1154925 () Bool)

(assert (=> bs!237844 m!1154925))

(assert (=> b!934509 d!281757))

(declare-fun b!934787 () Bool)

(declare-fun e!607182 () Regex!2554)

(assert (=> b!934787 (= e!607182 (reg!2883 r!15766))))

(declare-fun b!934788 () Bool)

(declare-fun e!607183 () Regex!2554)

(declare-fun call!57896 () Regex!2554)

(declare-fun call!57899 () Regex!2554)

(assert (=> b!934788 (= e!607183 (Concat!4387 call!57896 call!57899))))

(declare-fun bm!57891 () Bool)

(declare-fun c!152030 () Bool)

(declare-fun call!57900 () Regex!2554)

(declare-fun c!152033 () Bool)

(assert (=> bm!57891 (= call!57900 (removeUselessConcat!223 (ite (or c!152033 c!152030) (regOne!5620 (reg!2883 r!15766)) (regOne!5621 (reg!2883 r!15766)))))))

(declare-fun b!934789 () Bool)

(declare-fun e!607178 () Regex!2554)

(assert (=> b!934789 (= e!607183 e!607178)))

(declare-fun c!152032 () Bool)

(assert (=> b!934789 (= c!152032 (is-Union!2554 (reg!2883 r!15766)))))

(declare-fun b!934790 () Bool)

(declare-fun call!57898 () Regex!2554)

(assert (=> b!934790 (= e!607182 (Star!2554 call!57898))))

(declare-fun b!934791 () Bool)

(assert (=> b!934791 (= e!607178 (Union!2554 call!57896 call!57898))))

(declare-fun d!281759 () Bool)

(declare-fun e!607181 () Bool)

(assert (=> d!281759 e!607181))

(declare-fun res!424484 () Bool)

(assert (=> d!281759 (=> (not res!424484) (not e!607181))))

(declare-fun lt!341054 () Regex!2554)

(assert (=> d!281759 (= res!424484 (validRegex!1023 lt!341054))))

(declare-fun e!607180 () Regex!2554)

(assert (=> d!281759 (= lt!341054 e!607180)))

(declare-fun c!152034 () Bool)

(assert (=> d!281759 (= c!152034 (and (is-Concat!4387 (reg!2883 r!15766)) (is-EmptyExpr!2554 (regOne!5620 (reg!2883 r!15766)))))))

(assert (=> d!281759 (validRegex!1023 (reg!2883 r!15766))))

(assert (=> d!281759 (= (removeUselessConcat!223 (reg!2883 r!15766)) lt!341054)))

(declare-fun bm!57892 () Bool)

(assert (=> bm!57892 (= call!57898 call!57899)))

(declare-fun bm!57893 () Bool)

(declare-fun call!57897 () Regex!2554)

(assert (=> bm!57893 (= call!57899 call!57897)))

(declare-fun b!934792 () Bool)

(assert (=> b!934792 (= c!152030 (is-Concat!4387 (reg!2883 r!15766)))))

(declare-fun e!607179 () Regex!2554)

(assert (=> b!934792 (= e!607179 e!607183)))

(declare-fun b!934793 () Bool)

(declare-fun c!152031 () Bool)

(assert (=> b!934793 (= c!152031 (is-Star!2554 (reg!2883 r!15766)))))

(assert (=> b!934793 (= e!607178 e!607182)))

(declare-fun b!934794 () Bool)

(assert (=> b!934794 (= e!607180 call!57897)))

(declare-fun b!934795 () Bool)

(assert (=> b!934795 (= e!607180 e!607179)))

(assert (=> b!934795 (= c!152033 (and (is-Concat!4387 (reg!2883 r!15766)) (is-EmptyExpr!2554 (regTwo!5620 (reg!2883 r!15766)))))))

(declare-fun bm!57894 () Bool)

(assert (=> bm!57894 (= call!57897 (removeUselessConcat!223 (ite (or c!152034 c!152030) (regTwo!5620 (reg!2883 r!15766)) (ite c!152032 (regTwo!5621 (reg!2883 r!15766)) (reg!2883 (reg!2883 r!15766))))))))

(declare-fun b!934796 () Bool)

(assert (=> b!934796 (= e!607179 call!57900)))

(declare-fun b!934797 () Bool)

(assert (=> b!934797 (= e!607181 (= (nullable!732 lt!341054) (nullable!732 (reg!2883 r!15766))))))

(declare-fun bm!57895 () Bool)

(assert (=> bm!57895 (= call!57896 call!57900)))

(assert (= (and d!281759 c!152034) b!934794))

(assert (= (and d!281759 (not c!152034)) b!934795))

(assert (= (and b!934795 c!152033) b!934796))

(assert (= (and b!934795 (not c!152033)) b!934792))

(assert (= (and b!934792 c!152030) b!934788))

(assert (= (and b!934792 (not c!152030)) b!934789))

(assert (= (and b!934789 c!152032) b!934791))

(assert (= (and b!934789 (not c!152032)) b!934793))

(assert (= (and b!934793 c!152031) b!934790))

(assert (= (and b!934793 (not c!152031)) b!934787))

(assert (= (or b!934791 b!934790) bm!57892))

(assert (= (or b!934788 bm!57892) bm!57893))

(assert (= (or b!934788 b!934791) bm!57895))

(assert (= (or b!934796 bm!57895) bm!57891))

(assert (= (or b!934794 bm!57893) bm!57894))

(assert (= (and d!281759 res!424484) b!934797))

(declare-fun m!1154927 () Bool)

(assert (=> bm!57891 m!1154927))

(declare-fun m!1154929 () Bool)

(assert (=> d!281759 m!1154929))

(assert (=> d!281759 m!1154789))

(declare-fun m!1154931 () Bool)

(assert (=> bm!57894 m!1154931))

(declare-fun m!1154933 () Bool)

(assert (=> b!934797 m!1154933))

(assert (=> b!934797 m!1154845))

(assert (=> b!934509 d!281759))

(declare-fun d!281761 () Bool)

(assert (=> d!281761 (= (Exists!305 lambda!30954) (choose!5756 lambda!30954))))

(declare-fun bs!237845 () Bool)

(assert (= bs!237845 d!281761))

(declare-fun m!1154935 () Bool)

(assert (=> bs!237845 m!1154935))

(assert (=> b!934509 d!281761))

(declare-fun b!934804 () Bool)

(declare-fun e!607191 () Bool)

(assert (=> b!934804 (= e!607191 (not (= (head!1695 s!10566) (c!151973 (Star!2554 (removeUselessConcat!223 (reg!2883 r!15766)))))))))

(declare-fun b!934805 () Bool)

(declare-fun e!607190 () Bool)

(assert (=> b!934805 (= e!607190 (matchR!1092 (derivativeStep!542 (Star!2554 (removeUselessConcat!223 (reg!2883 r!15766))) (head!1695 s!10566)) (tail!1257 s!10566)))))

(declare-fun d!281763 () Bool)

(declare-fun e!607194 () Bool)

(assert (=> d!281763 e!607194))

(declare-fun c!152037 () Bool)

(assert (=> d!281763 (= c!152037 (is-EmptyExpr!2554 (Star!2554 (removeUselessConcat!223 (reg!2883 r!15766)))))))

(declare-fun lt!341055 () Bool)

(assert (=> d!281763 (= lt!341055 e!607190)))

(declare-fun c!152035 () Bool)

(assert (=> d!281763 (= c!152035 (isEmpty!6007 s!10566))))

(assert (=> d!281763 (validRegex!1023 (Star!2554 (removeUselessConcat!223 (reg!2883 r!15766))))))

(assert (=> d!281763 (= (matchR!1092 (Star!2554 (removeUselessConcat!223 (reg!2883 r!15766))) s!10566) lt!341055)))

(declare-fun b!934806 () Bool)

(declare-fun res!424493 () Bool)

(declare-fun e!607192 () Bool)

(assert (=> b!934806 (=> res!424493 e!607192)))

(assert (=> b!934806 (= res!424493 (not (is-ElementMatch!2554 (Star!2554 (removeUselessConcat!223 (reg!2883 r!15766))))))))

(declare-fun e!607188 () Bool)

(assert (=> b!934806 (= e!607188 e!607192)))

(declare-fun b!934807 () Bool)

(assert (=> b!934807 (= e!607194 e!607188)))

(declare-fun c!152036 () Bool)

(assert (=> b!934807 (= c!152036 (is-EmptyLang!2554 (Star!2554 (removeUselessConcat!223 (reg!2883 r!15766)))))))

(declare-fun b!934808 () Bool)

(assert (=> b!934808 (= e!607190 (nullable!732 (Star!2554 (removeUselessConcat!223 (reg!2883 r!15766)))))))

(declare-fun b!934809 () Bool)

(declare-fun res!424494 () Bool)

(declare-fun e!607193 () Bool)

(assert (=> b!934809 (=> (not res!424494) (not e!607193))))

(assert (=> b!934809 (= res!424494 (isEmpty!6007 (tail!1257 s!10566)))))

(declare-fun b!934810 () Bool)

(declare-fun res!424497 () Bool)

(assert (=> b!934810 (=> res!424497 e!607192)))

(assert (=> b!934810 (= res!424497 e!607193)))

(declare-fun res!424500 () Bool)

(assert (=> b!934810 (=> (not res!424500) (not e!607193))))

(assert (=> b!934810 (= res!424500 lt!341055)))

(declare-fun b!934811 () Bool)

(declare-fun res!424495 () Bool)

(assert (=> b!934811 (=> res!424495 e!607191)))

(assert (=> b!934811 (= res!424495 (not (isEmpty!6007 (tail!1257 s!10566))))))

(declare-fun b!934812 () Bool)

(declare-fun res!424496 () Bool)

(assert (=> b!934812 (=> (not res!424496) (not e!607193))))

(declare-fun call!57901 () Bool)

(assert (=> b!934812 (= res!424496 (not call!57901))))

(declare-fun b!934813 () Bool)

(assert (=> b!934813 (= e!607193 (= (head!1695 s!10566) (c!151973 (Star!2554 (removeUselessConcat!223 (reg!2883 r!15766))))))))

(declare-fun bm!57896 () Bool)

(assert (=> bm!57896 (= call!57901 (isEmpty!6007 s!10566))))

(declare-fun b!934814 () Bool)

(declare-fun e!607189 () Bool)

(assert (=> b!934814 (= e!607192 e!607189)))

(declare-fun res!424498 () Bool)

(assert (=> b!934814 (=> (not res!424498) (not e!607189))))

(assert (=> b!934814 (= res!424498 (not lt!341055))))

(declare-fun b!934815 () Bool)

(assert (=> b!934815 (= e!607194 (= lt!341055 call!57901))))

(declare-fun b!934816 () Bool)

(assert (=> b!934816 (= e!607188 (not lt!341055))))

(declare-fun b!934817 () Bool)

(assert (=> b!934817 (= e!607189 e!607191)))

(declare-fun res!424499 () Bool)

(assert (=> b!934817 (=> res!424499 e!607191)))

(assert (=> b!934817 (= res!424499 call!57901)))

(assert (= (and d!281763 c!152035) b!934808))

(assert (= (and d!281763 (not c!152035)) b!934805))

(assert (= (and d!281763 c!152037) b!934815))

(assert (= (and d!281763 (not c!152037)) b!934807))

(assert (= (and b!934807 c!152036) b!934816))

(assert (= (and b!934807 (not c!152036)) b!934806))

(assert (= (and b!934806 (not res!424493)) b!934810))

(assert (= (and b!934810 res!424500) b!934812))

(assert (= (and b!934812 res!424496) b!934809))

(assert (= (and b!934809 res!424494) b!934813))

(assert (= (and b!934810 (not res!424497)) b!934814))

(assert (= (and b!934814 res!424498) b!934817))

(assert (= (and b!934817 (not res!424499)) b!934811))

(assert (= (and b!934811 (not res!424495)) b!934804))

(assert (= (or b!934815 b!934812 b!934817) bm!57896))

(assert (=> b!934811 m!1154865))

(assert (=> b!934811 m!1154865))

(assert (=> b!934811 m!1154867))

(assert (=> b!934804 m!1154869))

(declare-fun m!1154937 () Bool)

(assert (=> b!934808 m!1154937))

(assert (=> d!281763 m!1154849))

(declare-fun m!1154939 () Bool)

(assert (=> d!281763 m!1154939))

(assert (=> b!934813 m!1154869))

(assert (=> b!934805 m!1154869))

(assert (=> b!934805 m!1154869))

(declare-fun m!1154941 () Bool)

(assert (=> b!934805 m!1154941))

(assert (=> b!934805 m!1154865))

(assert (=> b!934805 m!1154941))

(assert (=> b!934805 m!1154865))

(declare-fun m!1154943 () Bool)

(assert (=> b!934805 m!1154943))

(assert (=> bm!57896 m!1154849))

(assert (=> b!934809 m!1154865))

(assert (=> b!934809 m!1154865))

(assert (=> b!934809 m!1154867))

(assert (=> b!934509 d!281763))

(declare-fun e!607197 () Bool)

(assert (=> b!934506 (= tp!289958 e!607197)))

(declare-fun b!934830 () Bool)

(assert (=> b!934830 (= e!607197 tp_is_empty!4751)))

(declare-fun b!934833 () Bool)

(declare-fun tp!289987 () Bool)

(declare-fun tp!289991 () Bool)

(assert (=> b!934833 (= e!607197 (and tp!289987 tp!289991))))

(declare-fun b!934831 () Bool)

(declare-fun tp!289990 () Bool)

(declare-fun tp!289989 () Bool)

(assert (=> b!934831 (= e!607197 (and tp!289990 tp!289989))))

(declare-fun b!934832 () Bool)

(declare-fun tp!289988 () Bool)

(assert (=> b!934832 (= e!607197 tp!289988)))

(assert (= (and b!934506 (is-ElementMatch!2554 (regOne!5621 r!15766))) b!934830))

(assert (= (and b!934506 (is-Concat!4387 (regOne!5621 r!15766))) b!934831))

(assert (= (and b!934506 (is-Star!2554 (regOne!5621 r!15766))) b!934832))

(assert (= (and b!934506 (is-Union!2554 (regOne!5621 r!15766))) b!934833))

(declare-fun e!607198 () Bool)

(assert (=> b!934506 (= tp!289953 e!607198)))

(declare-fun b!934834 () Bool)

(assert (=> b!934834 (= e!607198 tp_is_empty!4751)))

(declare-fun b!934837 () Bool)

(declare-fun tp!289992 () Bool)

(declare-fun tp!289996 () Bool)

(assert (=> b!934837 (= e!607198 (and tp!289992 tp!289996))))

(declare-fun b!934835 () Bool)

(declare-fun tp!289995 () Bool)

(declare-fun tp!289994 () Bool)

(assert (=> b!934835 (= e!607198 (and tp!289995 tp!289994))))

(declare-fun b!934836 () Bool)

(declare-fun tp!289993 () Bool)

(assert (=> b!934836 (= e!607198 tp!289993)))

(assert (= (and b!934506 (is-ElementMatch!2554 (regTwo!5621 r!15766))) b!934834))

(assert (= (and b!934506 (is-Concat!4387 (regTwo!5621 r!15766))) b!934835))

(assert (= (and b!934506 (is-Star!2554 (regTwo!5621 r!15766))) b!934836))

(assert (= (and b!934506 (is-Union!2554 (regTwo!5621 r!15766))) b!934837))

(declare-fun b!934842 () Bool)

(declare-fun e!607201 () Bool)

(declare-fun tp!289999 () Bool)

(assert (=> b!934842 (= e!607201 (and tp_is_empty!4751 tp!289999))))

(assert (=> b!934508 (= tp!289956 e!607201)))

(assert (= (and b!934508 (is-Cons!9768 (t!100830 s!10566))) b!934842))

(declare-fun e!607202 () Bool)

(assert (=> b!934504 (= tp!289957 e!607202)))

(declare-fun b!934843 () Bool)

(assert (=> b!934843 (= e!607202 tp_is_empty!4751)))

(declare-fun b!934846 () Bool)

(declare-fun tp!290000 () Bool)

(declare-fun tp!290004 () Bool)

(assert (=> b!934846 (= e!607202 (and tp!290000 tp!290004))))

(declare-fun b!934844 () Bool)

(declare-fun tp!290003 () Bool)

(declare-fun tp!290002 () Bool)

(assert (=> b!934844 (= e!607202 (and tp!290003 tp!290002))))

(declare-fun b!934845 () Bool)

(declare-fun tp!290001 () Bool)

(assert (=> b!934845 (= e!607202 tp!290001)))

(assert (= (and b!934504 (is-ElementMatch!2554 (regOne!5620 r!15766))) b!934843))

(assert (= (and b!934504 (is-Concat!4387 (regOne!5620 r!15766))) b!934844))

(assert (= (and b!934504 (is-Star!2554 (regOne!5620 r!15766))) b!934845))

(assert (= (and b!934504 (is-Union!2554 (regOne!5620 r!15766))) b!934846))

(declare-fun e!607203 () Bool)

(assert (=> b!934504 (= tp!289955 e!607203)))

(declare-fun b!934847 () Bool)

(assert (=> b!934847 (= e!607203 tp_is_empty!4751)))

(declare-fun b!934850 () Bool)

(declare-fun tp!290005 () Bool)

(declare-fun tp!290009 () Bool)

(assert (=> b!934850 (= e!607203 (and tp!290005 tp!290009))))

(declare-fun b!934848 () Bool)

(declare-fun tp!290008 () Bool)

(declare-fun tp!290007 () Bool)

(assert (=> b!934848 (= e!607203 (and tp!290008 tp!290007))))

(declare-fun b!934849 () Bool)

(declare-fun tp!290006 () Bool)

(assert (=> b!934849 (= e!607203 tp!290006)))

(assert (= (and b!934504 (is-ElementMatch!2554 (regTwo!5620 r!15766))) b!934847))

(assert (= (and b!934504 (is-Concat!4387 (regTwo!5620 r!15766))) b!934848))

(assert (= (and b!934504 (is-Star!2554 (regTwo!5620 r!15766))) b!934849))

(assert (= (and b!934504 (is-Union!2554 (regTwo!5620 r!15766))) b!934850))

(declare-fun e!607204 () Bool)

(assert (=> b!934505 (= tp!289954 e!607204)))

(declare-fun b!934851 () Bool)

(assert (=> b!934851 (= e!607204 tp_is_empty!4751)))

(declare-fun b!934854 () Bool)

(declare-fun tp!290010 () Bool)

(declare-fun tp!290014 () Bool)

(assert (=> b!934854 (= e!607204 (and tp!290010 tp!290014))))

(declare-fun b!934852 () Bool)

(declare-fun tp!290013 () Bool)

(declare-fun tp!290012 () Bool)

(assert (=> b!934852 (= e!607204 (and tp!290013 tp!290012))))

(declare-fun b!934853 () Bool)

(declare-fun tp!290011 () Bool)

(assert (=> b!934853 (= e!607204 tp!290011)))

(assert (= (and b!934505 (is-ElementMatch!2554 (reg!2883 r!15766))) b!934851))

(assert (= (and b!934505 (is-Concat!4387 (reg!2883 r!15766))) b!934852))

(assert (= (and b!934505 (is-Star!2554 (reg!2883 r!15766))) b!934853))

(assert (= (and b!934505 (is-Union!2554 (reg!2883 r!15766))) b!934854))

(push 1)

(assert (not d!281735))

(assert (not b!934685))

(assert (not b!934850))

(assert (not b!934833))

(assert (not b!934750))

(assert (not bm!57857))

(assert (not d!281759))

(assert (not b!934797))

(assert (not d!281763))

(assert (not b!934809))

(assert (not d!281749))

(assert (not bm!57891))

(assert (not b!934853))

(assert (not b!934577))

(assert (not b!934849))

(assert (not b!934804))

(assert (not b!934831))

(assert (not bm!57858))

(assert (not b!934844))

(assert (not b!934854))

(assert (not b!934845))

(assert (not b!934846))

(assert (not bm!57871))

(assert (not b!934681))

(assert (not b!934805))

(assert (not b!934842))

(assert (not d!281753))

(assert (not b!934837))

(assert (not d!281761))

(assert (not b!934848))

(assert (not d!281743))

(assert (not b!934688))

(assert (not b!934835))

(assert (not d!281757))

(assert (not b!934682))

(assert (not d!281747))

(assert (not b!934686))

(assert (not b!934808))

(assert (not bm!57896))

(assert (not bm!57877))

(assert (not b!934634))

(assert (not b!934690))

(assert tp_is_empty!4751)

(assert (not b!934751))

(assert (not b!934746))

(assert (not b!934698))

(assert (not b!934852))

(assert (not b!934752))

(assert (not bm!57870))

(assert (not bm!57894))

(assert (not b!934753))

(assert (not b!934811))

(assert (not b!934640))

(assert (not b!934836))

(assert (not b!934832))

(assert (not bm!57878))

(assert (not bm!57879))

(assert (not b!934749))

(assert (not b!934813))

(assert (not d!281751))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

