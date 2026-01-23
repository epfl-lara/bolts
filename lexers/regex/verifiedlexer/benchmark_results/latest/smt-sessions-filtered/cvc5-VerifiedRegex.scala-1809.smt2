; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!90124 () Bool)

(assert start!90124)

(declare-fun b!1035662 () Bool)

(assert (=> b!1035662 true))

(assert (=> b!1035662 true))

(declare-fun lambda!37260 () Int)

(declare-fun lambda!37259 () Int)

(assert (=> b!1035662 (not (= lambda!37260 lambda!37259))))

(assert (=> b!1035662 true))

(assert (=> b!1035662 true))

(declare-fun e!659674 () Bool)

(declare-fun e!659672 () Bool)

(assert (=> b!1035662 (= e!659674 e!659672)))

(declare-fun res!465197 () Bool)

(assert (=> b!1035662 (=> res!465197 e!659672)))

(declare-datatypes ((C!6322 0))(
  ( (C!6323 (val!3409 Int)) )
))
(declare-datatypes ((List!10106 0))(
  ( (Nil!10090) (Cons!10090 (h!15491 C!6322) (t!101152 List!10106)) )
))
(declare-fun s!10566 () List!10106)

(declare-fun isEmpty!6483 (List!10106) Bool)

(assert (=> b!1035662 (= res!465197 (isEmpty!6483 s!10566))))

(declare-fun Exists!603 (Int) Bool)

(assert (=> b!1035662 (= (Exists!603 lambda!37259) (Exists!603 lambda!37260))))

(declare-datatypes ((Unit!15427 0))(
  ( (Unit!15428) )
))
(declare-fun lt!356711 () Unit!15427)

(declare-datatypes ((Regex!2876 0))(
  ( (ElementMatch!2876 (c!171881 C!6322)) (Concat!4709 (regOne!6264 Regex!2876) (regTwo!6264 Regex!2876)) (EmptyExpr!2876) (Star!2876 (reg!3205 Regex!2876)) (EmptyLang!2876) (Union!2876 (regOne!6265 Regex!2876) (regTwo!6265 Regex!2876)) )
))
(declare-fun r!15766 () Regex!2876)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!291 (Regex!2876 Regex!2876 List!10106) Unit!15427)

(assert (=> b!1035662 (= lt!356711 (lemmaExistCutMatchRandMatchRSpecEquivalent!291 (regOne!6264 r!15766) (regTwo!6264 r!15766) s!10566))))

(declare-datatypes ((tuple2!11518 0))(
  ( (tuple2!11519 (_1!6585 List!10106) (_2!6585 List!10106)) )
))
(declare-datatypes ((Option!2401 0))(
  ( (None!2400) (Some!2400 (v!19817 tuple2!11518)) )
))
(declare-fun isDefined!2043 (Option!2401) Bool)

(declare-fun findConcatSeparation!507 (Regex!2876 Regex!2876 List!10106 List!10106 List!10106) Option!2401)

(assert (=> b!1035662 (= (isDefined!2043 (findConcatSeparation!507 (regOne!6264 r!15766) (regTwo!6264 r!15766) Nil!10090 s!10566 s!10566)) (Exists!603 lambda!37259))))

(declare-fun lt!356714 () Unit!15427)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!507 (Regex!2876 Regex!2876 List!10106) Unit!15427)

(assert (=> b!1035662 (= lt!356714 (lemmaFindConcatSeparationEquivalentToExists!507 (regOne!6264 r!15766) (regTwo!6264 r!15766) s!10566))))

(declare-fun b!1035663 () Bool)

(declare-fun e!659675 () Bool)

(declare-fun tp_is_empty!5395 () Bool)

(declare-fun tp!313405 () Bool)

(assert (=> b!1035663 (= e!659675 (and tp_is_empty!5395 tp!313405))))

(declare-fun res!465198 () Bool)

(declare-fun e!659673 () Bool)

(assert (=> start!90124 (=> (not res!465198) (not e!659673))))

(declare-fun validRegex!1345 (Regex!2876) Bool)

(assert (=> start!90124 (= res!465198 (validRegex!1345 r!15766))))

(assert (=> start!90124 e!659673))

(declare-fun e!659670 () Bool)

(assert (=> start!90124 e!659670))

(assert (=> start!90124 e!659675))

(declare-fun b!1035664 () Bool)

(assert (=> b!1035664 (= e!659670 tp_is_empty!5395)))

(declare-fun b!1035665 () Bool)

(declare-fun e!659671 () Bool)

(assert (=> b!1035665 (= e!659672 e!659671)))

(declare-fun res!465195 () Bool)

(assert (=> b!1035665 (=> res!465195 e!659671)))

(declare-fun lt!356712 () Regex!2876)

(declare-fun matchR!1412 (Regex!2876 List!10106) Bool)

(assert (=> b!1035665 (= res!465195 (not (matchR!1412 lt!356712 s!10566)))))

(declare-fun removeUselessConcat!425 (Regex!2876) Regex!2876)

(assert (=> b!1035665 (= lt!356712 (Concat!4709 (removeUselessConcat!425 (regOne!6264 r!15766)) (removeUselessConcat!425 (regTwo!6264 r!15766))))))

(declare-fun b!1035666 () Bool)

(declare-fun tp!313408 () Bool)

(declare-fun tp!313407 () Bool)

(assert (=> b!1035666 (= e!659670 (and tp!313408 tp!313407))))

(declare-fun b!1035667 () Bool)

(assert (=> b!1035667 (= e!659673 (not e!659674))))

(declare-fun res!465196 () Bool)

(assert (=> b!1035667 (=> res!465196 e!659674)))

(declare-fun lt!356710 () Bool)

(assert (=> b!1035667 (= res!465196 (or lt!356710 (and (is-Concat!4709 r!15766) (is-EmptyExpr!2876 (regOne!6264 r!15766))) (and (is-Concat!4709 r!15766) (is-EmptyExpr!2876 (regTwo!6264 r!15766))) (not (is-Concat!4709 r!15766))))))

(declare-fun matchRSpec!675 (Regex!2876 List!10106) Bool)

(assert (=> b!1035667 (= lt!356710 (matchRSpec!675 r!15766 s!10566))))

(assert (=> b!1035667 (= lt!356710 (matchR!1412 r!15766 s!10566))))

(declare-fun lt!356713 () Unit!15427)

(declare-fun mainMatchTheorem!675 (Regex!2876 List!10106) Unit!15427)

(assert (=> b!1035667 (= lt!356713 (mainMatchTheorem!675 r!15766 s!10566))))

(declare-fun b!1035668 () Bool)

(declare-fun tp!313410 () Bool)

(declare-fun tp!313409 () Bool)

(assert (=> b!1035668 (= e!659670 (and tp!313410 tp!313409))))

(declare-fun b!1035669 () Bool)

(assert (=> b!1035669 (= e!659671 (validRegex!1345 lt!356712))))

(declare-fun b!1035670 () Bool)

(declare-fun tp!313406 () Bool)

(assert (=> b!1035670 (= e!659670 tp!313406)))

(assert (= (and start!90124 res!465198) b!1035667))

(assert (= (and b!1035667 (not res!465196)) b!1035662))

(assert (= (and b!1035662 (not res!465197)) b!1035665))

(assert (= (and b!1035665 (not res!465195)) b!1035669))

(assert (= (and start!90124 (is-ElementMatch!2876 r!15766)) b!1035664))

(assert (= (and start!90124 (is-Concat!4709 r!15766)) b!1035666))

(assert (= (and start!90124 (is-Star!2876 r!15766)) b!1035670))

(assert (= (and start!90124 (is-Union!2876 r!15766)) b!1035668))

(assert (= (and start!90124 (is-Cons!10090 s!10566)) b!1035663))

(declare-fun m!1206673 () Bool)

(assert (=> b!1035667 m!1206673))

(declare-fun m!1206675 () Bool)

(assert (=> b!1035667 m!1206675))

(declare-fun m!1206677 () Bool)

(assert (=> b!1035667 m!1206677))

(declare-fun m!1206679 () Bool)

(assert (=> start!90124 m!1206679))

(declare-fun m!1206681 () Bool)

(assert (=> b!1035665 m!1206681))

(declare-fun m!1206683 () Bool)

(assert (=> b!1035665 m!1206683))

(declare-fun m!1206685 () Bool)

(assert (=> b!1035665 m!1206685))

(declare-fun m!1206687 () Bool)

(assert (=> b!1035669 m!1206687))

(declare-fun m!1206689 () Bool)

(assert (=> b!1035662 m!1206689))

(assert (=> b!1035662 m!1206689))

(declare-fun m!1206691 () Bool)

(assert (=> b!1035662 m!1206691))

(declare-fun m!1206693 () Bool)

(assert (=> b!1035662 m!1206693))

(declare-fun m!1206695 () Bool)

(assert (=> b!1035662 m!1206695))

(declare-fun m!1206697 () Bool)

(assert (=> b!1035662 m!1206697))

(declare-fun m!1206699 () Bool)

(assert (=> b!1035662 m!1206699))

(declare-fun m!1206701 () Bool)

(assert (=> b!1035662 m!1206701))

(assert (=> b!1035662 m!1206691))

(push 1)

(assert (not b!1035670))

(assert tp_is_empty!5395)

(assert (not b!1035667))

(assert (not b!1035669))

(assert (not b!1035663))

(assert (not b!1035662))

(assert (not b!1035668))

(assert (not start!90124))

(assert (not b!1035665))

(assert (not b!1035666))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1035736 () Bool)

(declare-fun res!465233 () Bool)

(declare-fun e!659719 () Bool)

(assert (=> b!1035736 (=> res!465233 e!659719)))

(assert (=> b!1035736 (= res!465233 (not (is-Concat!4709 r!15766)))))

(declare-fun e!659720 () Bool)

(assert (=> b!1035736 (= e!659720 e!659719)))

(declare-fun bm!71611 () Bool)

(declare-fun call!71616 () Bool)

(declare-fun c!171887 () Bool)

(assert (=> bm!71611 (= call!71616 (validRegex!1345 (ite c!171887 (regTwo!6265 r!15766) (regTwo!6264 r!15766))))))

(declare-fun d!296246 () Bool)

(declare-fun res!465237 () Bool)

(declare-fun e!659718 () Bool)

(assert (=> d!296246 (=> res!465237 e!659718)))

(assert (=> d!296246 (= res!465237 (is-ElementMatch!2876 r!15766))))

(assert (=> d!296246 (= (validRegex!1345 r!15766) e!659718)))

(declare-fun b!1035737 () Bool)

(declare-fun e!659715 () Bool)

(assert (=> b!1035737 (= e!659715 call!71616)))

(declare-fun b!1035738 () Bool)

(declare-fun e!659717 () Bool)

(declare-fun e!659714 () Bool)

(assert (=> b!1035738 (= e!659717 e!659714)))

(declare-fun res!465235 () Bool)

(declare-fun nullable!968 (Regex!2876) Bool)

(assert (=> b!1035738 (= res!465235 (not (nullable!968 (reg!3205 r!15766))))))

(assert (=> b!1035738 (=> (not res!465235) (not e!659714))))

(declare-fun b!1035739 () Bool)

(declare-fun call!71617 () Bool)

(assert (=> b!1035739 (= e!659714 call!71617)))

(declare-fun b!1035740 () Bool)

(assert (=> b!1035740 (= e!659718 e!659717)))

(declare-fun c!171888 () Bool)

(assert (=> b!1035740 (= c!171888 (is-Star!2876 r!15766))))

(declare-fun b!1035741 () Bool)

(declare-fun e!659716 () Bool)

(assert (=> b!1035741 (= e!659716 call!71616)))

(declare-fun b!1035742 () Bool)

(assert (=> b!1035742 (= e!659719 e!659716)))

(declare-fun res!465234 () Bool)

(assert (=> b!1035742 (=> (not res!465234) (not e!659716))))

(declare-fun call!71618 () Bool)

(assert (=> b!1035742 (= res!465234 call!71618)))

(declare-fun b!1035743 () Bool)

(declare-fun res!465236 () Bool)

(assert (=> b!1035743 (=> (not res!465236) (not e!659715))))

(assert (=> b!1035743 (= res!465236 call!71618)))

(assert (=> b!1035743 (= e!659720 e!659715)))

(declare-fun bm!71612 () Bool)

(assert (=> bm!71612 (= call!71618 call!71617)))

(declare-fun b!1035744 () Bool)

(assert (=> b!1035744 (= e!659717 e!659720)))

(assert (=> b!1035744 (= c!171887 (is-Union!2876 r!15766))))

(declare-fun bm!71613 () Bool)

(assert (=> bm!71613 (= call!71617 (validRegex!1345 (ite c!171888 (reg!3205 r!15766) (ite c!171887 (regOne!6265 r!15766) (regOne!6264 r!15766)))))))

(assert (= (and d!296246 (not res!465237)) b!1035740))

(assert (= (and b!1035740 c!171888) b!1035738))

(assert (= (and b!1035740 (not c!171888)) b!1035744))

(assert (= (and b!1035738 res!465235) b!1035739))

(assert (= (and b!1035744 c!171887) b!1035743))

(assert (= (and b!1035744 (not c!171887)) b!1035736))

(assert (= (and b!1035743 res!465236) b!1035737))

(assert (= (and b!1035736 (not res!465233)) b!1035742))

(assert (= (and b!1035742 res!465234) b!1035741))

(assert (= (or b!1035737 b!1035741) bm!71611))

(assert (= (or b!1035743 b!1035742) bm!71612))

(assert (= (or b!1035739 bm!71612) bm!71613))

(declare-fun m!1206733 () Bool)

(assert (=> bm!71611 m!1206733))

(declare-fun m!1206735 () Bool)

(assert (=> b!1035738 m!1206735))

(declare-fun m!1206737 () Bool)

(assert (=> bm!71613 m!1206737))

(assert (=> start!90124 d!296246))

(declare-fun bs!247606 () Bool)

(declare-fun b!1035782 () Bool)

(assert (= bs!247606 (and b!1035782 b!1035662)))

(declare-fun lambda!37273 () Int)

(assert (=> bs!247606 (not (= lambda!37273 lambda!37259))))

(assert (=> bs!247606 (not (= lambda!37273 lambda!37260))))

(assert (=> b!1035782 true))

(assert (=> b!1035782 true))

(declare-fun bs!247607 () Bool)

(declare-fun b!1035779 () Bool)

(assert (= bs!247607 (and b!1035779 b!1035662)))

(declare-fun lambda!37274 () Int)

(assert (=> bs!247607 (not (= lambda!37274 lambda!37259))))

(assert (=> bs!247607 (= lambda!37274 lambda!37260)))

(declare-fun bs!247608 () Bool)

(assert (= bs!247608 (and b!1035779 b!1035782)))

(assert (=> bs!247608 (not (= lambda!37274 lambda!37273))))

(assert (=> b!1035779 true))

(assert (=> b!1035779 true))

(declare-fun b!1035777 () Bool)

(declare-fun e!659739 () Bool)

(assert (=> b!1035777 (= e!659739 (= s!10566 (Cons!10090 (c!171881 r!15766) Nil!10090)))))

(declare-fun b!1035778 () Bool)

(declare-fun c!171900 () Bool)

(assert (=> b!1035778 (= c!171900 (is-Union!2876 r!15766))))

(declare-fun e!659744 () Bool)

(assert (=> b!1035778 (= e!659739 e!659744)))

(declare-fun d!296248 () Bool)

(declare-fun c!171899 () Bool)

(assert (=> d!296248 (= c!171899 (is-EmptyExpr!2876 r!15766))))

(declare-fun e!659745 () Bool)

(assert (=> d!296248 (= (matchRSpec!675 r!15766 s!10566) e!659745)))

(declare-fun e!659741 () Bool)

(declare-fun call!71624 () Bool)

(assert (=> b!1035779 (= e!659741 call!71624)))

(declare-fun b!1035780 () Bool)

(declare-fun res!465254 () Bool)

(declare-fun e!659740 () Bool)

(assert (=> b!1035780 (=> res!465254 e!659740)))

(declare-fun call!71623 () Bool)

(assert (=> b!1035780 (= res!465254 call!71623)))

(assert (=> b!1035780 (= e!659741 e!659740)))

(declare-fun b!1035781 () Bool)

(declare-fun c!171898 () Bool)

(assert (=> b!1035781 (= c!171898 (is-ElementMatch!2876 r!15766))))

(declare-fun e!659743 () Bool)

(assert (=> b!1035781 (= e!659743 e!659739)))

(assert (=> b!1035782 (= e!659740 call!71624)))

(declare-fun b!1035783 () Bool)

(assert (=> b!1035783 (= e!659745 call!71623)))

(declare-fun b!1035784 () Bool)

(declare-fun e!659742 () Bool)

(assert (=> b!1035784 (= e!659742 (matchRSpec!675 (regTwo!6265 r!15766) s!10566))))

(declare-fun b!1035785 () Bool)

(assert (=> b!1035785 (= e!659744 e!659741)))

(declare-fun c!171897 () Bool)

(assert (=> b!1035785 (= c!171897 (is-Star!2876 r!15766))))

(declare-fun b!1035786 () Bool)

(assert (=> b!1035786 (= e!659744 e!659742)))

(declare-fun res!465256 () Bool)

(assert (=> b!1035786 (= res!465256 (matchRSpec!675 (regOne!6265 r!15766) s!10566))))

(assert (=> b!1035786 (=> res!465256 e!659742)))

(declare-fun bm!71618 () Bool)

(assert (=> bm!71618 (= call!71624 (Exists!603 (ite c!171897 lambda!37273 lambda!37274)))))

(declare-fun bm!71619 () Bool)

(assert (=> bm!71619 (= call!71623 (isEmpty!6483 s!10566))))

(declare-fun b!1035787 () Bool)

(assert (=> b!1035787 (= e!659745 e!659743)))

(declare-fun res!465255 () Bool)

(assert (=> b!1035787 (= res!465255 (not (is-EmptyLang!2876 r!15766)))))

(assert (=> b!1035787 (=> (not res!465255) (not e!659743))))

(assert (= (and d!296248 c!171899) b!1035783))

(assert (= (and d!296248 (not c!171899)) b!1035787))

(assert (= (and b!1035787 res!465255) b!1035781))

(assert (= (and b!1035781 c!171898) b!1035777))

(assert (= (and b!1035781 (not c!171898)) b!1035778))

(assert (= (and b!1035778 c!171900) b!1035786))

(assert (= (and b!1035778 (not c!171900)) b!1035785))

(assert (= (and b!1035786 (not res!465256)) b!1035784))

(assert (= (and b!1035785 c!171897) b!1035780))

(assert (= (and b!1035785 (not c!171897)) b!1035779))

(assert (= (and b!1035780 (not res!465254)) b!1035782))

(assert (= (or b!1035782 b!1035779) bm!71618))

(assert (= (or b!1035783 b!1035780) bm!71619))

(declare-fun m!1206739 () Bool)

(assert (=> b!1035784 m!1206739))

(declare-fun m!1206741 () Bool)

(assert (=> b!1035786 m!1206741))

(declare-fun m!1206743 () Bool)

(assert (=> bm!71618 m!1206743))

(assert (=> bm!71619 m!1206697))

(assert (=> b!1035667 d!296248))

(declare-fun b!1035844 () Bool)

(declare-fun res!465291 () Bool)

(declare-fun e!659780 () Bool)

(assert (=> b!1035844 (=> res!465291 e!659780)))

(assert (=> b!1035844 (= res!465291 (not (is-ElementMatch!2876 r!15766)))))

(declare-fun e!659775 () Bool)

(assert (=> b!1035844 (= e!659775 e!659780)))

(declare-fun bm!71624 () Bool)

(declare-fun call!71629 () Bool)

(assert (=> bm!71624 (= call!71629 (isEmpty!6483 s!10566))))

(declare-fun b!1035845 () Bool)

(declare-fun e!659779 () Bool)

(declare-fun e!659774 () Bool)

(assert (=> b!1035845 (= e!659779 e!659774)))

(declare-fun res!465289 () Bool)

(assert (=> b!1035845 (=> res!465289 e!659774)))

(assert (=> b!1035845 (= res!465289 call!71629)))

(declare-fun b!1035846 () Bool)

(declare-fun head!1923 (List!10106) C!6322)

(assert (=> b!1035846 (= e!659774 (not (= (head!1923 s!10566) (c!171881 r!15766))))))

(declare-fun b!1035847 () Bool)

(declare-fun res!465294 () Bool)

(declare-fun e!659778 () Bool)

(assert (=> b!1035847 (=> (not res!465294) (not e!659778))))

(assert (=> b!1035847 (= res!465294 (not call!71629))))

(declare-fun b!1035848 () Bool)

(declare-fun res!465290 () Bool)

(assert (=> b!1035848 (=> (not res!465290) (not e!659778))))

(declare-fun tail!1485 (List!10106) List!10106)

(assert (=> b!1035848 (= res!465290 (isEmpty!6483 (tail!1485 s!10566)))))

(declare-fun b!1035849 () Bool)

(declare-fun e!659777 () Bool)

(assert (=> b!1035849 (= e!659777 e!659775)))

(declare-fun c!171913 () Bool)

(assert (=> b!1035849 (= c!171913 (is-EmptyLang!2876 r!15766))))

(declare-fun b!1035850 () Bool)

(declare-fun e!659776 () Bool)

(declare-fun derivativeStep!768 (Regex!2876 C!6322) Regex!2876)

(assert (=> b!1035850 (= e!659776 (matchR!1412 (derivativeStep!768 r!15766 (head!1923 s!10566)) (tail!1485 s!10566)))))

(declare-fun b!1035851 () Bool)

(declare-fun res!465292 () Bool)

(assert (=> b!1035851 (=> res!465292 e!659780)))

(assert (=> b!1035851 (= res!465292 e!659778)))

(declare-fun res!465296 () Bool)

(assert (=> b!1035851 (=> (not res!465296) (not e!659778))))

(declare-fun lt!356734 () Bool)

(assert (=> b!1035851 (= res!465296 lt!356734)))

(declare-fun b!1035852 () Bool)

(assert (=> b!1035852 (= e!659775 (not lt!356734))))

(declare-fun b!1035854 () Bool)

(assert (=> b!1035854 (= e!659780 e!659779)))

(declare-fun res!465295 () Bool)

(assert (=> b!1035854 (=> (not res!465295) (not e!659779))))

(assert (=> b!1035854 (= res!465295 (not lt!356734))))

(declare-fun b!1035855 () Bool)

(declare-fun res!465293 () Bool)

(assert (=> b!1035855 (=> res!465293 e!659774)))

(assert (=> b!1035855 (= res!465293 (not (isEmpty!6483 (tail!1485 s!10566))))))

(declare-fun b!1035856 () Bool)

(assert (=> b!1035856 (= e!659778 (= (head!1923 s!10566) (c!171881 r!15766)))))

(declare-fun b!1035857 () Bool)

(assert (=> b!1035857 (= e!659777 (= lt!356734 call!71629))))

(declare-fun b!1035853 () Bool)

(assert (=> b!1035853 (= e!659776 (nullable!968 r!15766))))

(declare-fun d!296252 () Bool)

(assert (=> d!296252 e!659777))

(declare-fun c!171914 () Bool)

(assert (=> d!296252 (= c!171914 (is-EmptyExpr!2876 r!15766))))

(assert (=> d!296252 (= lt!356734 e!659776)))

(declare-fun c!171915 () Bool)

(assert (=> d!296252 (= c!171915 (isEmpty!6483 s!10566))))

(assert (=> d!296252 (validRegex!1345 r!15766)))

(assert (=> d!296252 (= (matchR!1412 r!15766 s!10566) lt!356734)))

(assert (= (and d!296252 c!171915) b!1035853))

(assert (= (and d!296252 (not c!171915)) b!1035850))

(assert (= (and d!296252 c!171914) b!1035857))

(assert (= (and d!296252 (not c!171914)) b!1035849))

(assert (= (and b!1035849 c!171913) b!1035852))

(assert (= (and b!1035849 (not c!171913)) b!1035844))

(assert (= (and b!1035844 (not res!465291)) b!1035851))

(assert (= (and b!1035851 res!465296) b!1035847))

(assert (= (and b!1035847 res!465294) b!1035848))

(assert (= (and b!1035848 res!465290) b!1035856))

(assert (= (and b!1035851 (not res!465292)) b!1035854))

(assert (= (and b!1035854 res!465295) b!1035845))

(assert (= (and b!1035845 (not res!465289)) b!1035855))

(assert (= (and b!1035855 (not res!465293)) b!1035846))

(assert (= (or b!1035857 b!1035845 b!1035847) bm!71624))

(declare-fun m!1206745 () Bool)

(assert (=> b!1035853 m!1206745))

(declare-fun m!1206747 () Bool)

(assert (=> b!1035856 m!1206747))

(assert (=> d!296252 m!1206697))

(assert (=> d!296252 m!1206679))

(assert (=> b!1035846 m!1206747))

(assert (=> bm!71624 m!1206697))

(declare-fun m!1206749 () Bool)

(assert (=> b!1035855 m!1206749))

(assert (=> b!1035855 m!1206749))

(declare-fun m!1206751 () Bool)

(assert (=> b!1035855 m!1206751))

(assert (=> b!1035850 m!1206747))

(assert (=> b!1035850 m!1206747))

(declare-fun m!1206753 () Bool)

(assert (=> b!1035850 m!1206753))

(assert (=> b!1035850 m!1206749))

(assert (=> b!1035850 m!1206753))

(assert (=> b!1035850 m!1206749))

(declare-fun m!1206755 () Bool)

(assert (=> b!1035850 m!1206755))

(assert (=> b!1035848 m!1206749))

(assert (=> b!1035848 m!1206749))

(assert (=> b!1035848 m!1206751))

(assert (=> b!1035667 d!296252))

(declare-fun d!296254 () Bool)

(assert (=> d!296254 (= (matchR!1412 r!15766 s!10566) (matchRSpec!675 r!15766 s!10566))))

(declare-fun lt!356737 () Unit!15427)

(declare-fun choose!6609 (Regex!2876 List!10106) Unit!15427)

(assert (=> d!296254 (= lt!356737 (choose!6609 r!15766 s!10566))))

(assert (=> d!296254 (validRegex!1345 r!15766)))

(assert (=> d!296254 (= (mainMatchTheorem!675 r!15766 s!10566) lt!356737)))

(declare-fun bs!247609 () Bool)

(assert (= bs!247609 d!296254))

(assert (=> bs!247609 m!1206675))

(assert (=> bs!247609 m!1206673))

(declare-fun m!1206757 () Bool)

(assert (=> bs!247609 m!1206757))

(assert (=> bs!247609 m!1206679))

(assert (=> b!1035667 d!296254))

(declare-fun d!296256 () Bool)

(assert (=> d!296256 (= (isEmpty!6483 s!10566) (is-Nil!10090 s!10566))))

(assert (=> b!1035662 d!296256))

(declare-fun d!296258 () Bool)

(declare-fun isEmpty!6485 (Option!2401) Bool)

(assert (=> d!296258 (= (isDefined!2043 (findConcatSeparation!507 (regOne!6264 r!15766) (regTwo!6264 r!15766) Nil!10090 s!10566 s!10566)) (not (isEmpty!6485 (findConcatSeparation!507 (regOne!6264 r!15766) (regTwo!6264 r!15766) Nil!10090 s!10566 s!10566))))))

(declare-fun bs!247610 () Bool)

(assert (= bs!247610 d!296258))

(assert (=> bs!247610 m!1206691))

(declare-fun m!1206759 () Bool)

(assert (=> bs!247610 m!1206759))

(assert (=> b!1035662 d!296258))

(declare-fun bs!247611 () Bool)

(declare-fun d!296260 () Bool)

(assert (= bs!247611 (and d!296260 b!1035662)))

(declare-fun lambda!37277 () Int)

(assert (=> bs!247611 (= lambda!37277 lambda!37259)))

(assert (=> bs!247611 (not (= lambda!37277 lambda!37260))))

(declare-fun bs!247612 () Bool)

(assert (= bs!247612 (and d!296260 b!1035782)))

(assert (=> bs!247612 (not (= lambda!37277 lambda!37273))))

(declare-fun bs!247613 () Bool)

(assert (= bs!247613 (and d!296260 b!1035779)))

(assert (=> bs!247613 (not (= lambda!37277 lambda!37274))))

(assert (=> d!296260 true))

(assert (=> d!296260 true))

(assert (=> d!296260 true))

(assert (=> d!296260 (= (isDefined!2043 (findConcatSeparation!507 (regOne!6264 r!15766) (regTwo!6264 r!15766) Nil!10090 s!10566 s!10566)) (Exists!603 lambda!37277))))

(declare-fun lt!356741 () Unit!15427)

(declare-fun choose!6610 (Regex!2876 Regex!2876 List!10106) Unit!15427)

(assert (=> d!296260 (= lt!356741 (choose!6610 (regOne!6264 r!15766) (regTwo!6264 r!15766) s!10566))))

(assert (=> d!296260 (validRegex!1345 (regOne!6264 r!15766))))

(assert (=> d!296260 (= (lemmaFindConcatSeparationEquivalentToExists!507 (regOne!6264 r!15766) (regTwo!6264 r!15766) s!10566) lt!356741)))

(declare-fun bs!247614 () Bool)

(assert (= bs!247614 d!296260))

(declare-fun m!1206773 () Bool)

(assert (=> bs!247614 m!1206773))

(assert (=> bs!247614 m!1206691))

(assert (=> bs!247614 m!1206691))

(assert (=> bs!247614 m!1206693))

(declare-fun m!1206775 () Bool)

(assert (=> bs!247614 m!1206775))

(declare-fun m!1206777 () Bool)

(assert (=> bs!247614 m!1206777))

(assert (=> b!1035662 d!296260))

(declare-fun b!1035916 () Bool)

(declare-fun e!659814 () Bool)

(assert (=> b!1035916 (= e!659814 (matchR!1412 (regTwo!6264 r!15766) s!10566))))

(declare-fun b!1035917 () Bool)

(declare-fun lt!356751 () Unit!15427)

(declare-fun lt!356750 () Unit!15427)

(assert (=> b!1035917 (= lt!356751 lt!356750)))

(declare-fun ++!2777 (List!10106 List!10106) List!10106)

(assert (=> b!1035917 (= (++!2777 (++!2777 Nil!10090 (Cons!10090 (h!15491 s!10566) Nil!10090)) (t!101152 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!370 (List!10106 C!6322 List!10106 List!10106) Unit!15427)

(assert (=> b!1035917 (= lt!356750 (lemmaMoveElementToOtherListKeepsConcatEq!370 Nil!10090 (h!15491 s!10566) (t!101152 s!10566) s!10566))))

(declare-fun e!659816 () Option!2401)

(assert (=> b!1035917 (= e!659816 (findConcatSeparation!507 (regOne!6264 r!15766) (regTwo!6264 r!15766) (++!2777 Nil!10090 (Cons!10090 (h!15491 s!10566) Nil!10090)) (t!101152 s!10566) s!10566))))

(declare-fun b!1035918 () Bool)

(declare-fun res!465323 () Bool)

(declare-fun e!659812 () Bool)

(assert (=> b!1035918 (=> (not res!465323) (not e!659812))))

(declare-fun lt!356752 () Option!2401)

(declare-fun get!3593 (Option!2401) tuple2!11518)

(assert (=> b!1035918 (= res!465323 (matchR!1412 (regOne!6264 r!15766) (_1!6585 (get!3593 lt!356752))))))

(declare-fun b!1035919 () Bool)

(declare-fun e!659815 () Option!2401)

(assert (=> b!1035919 (= e!659815 (Some!2400 (tuple2!11519 Nil!10090 s!10566)))))

(declare-fun d!296264 () Bool)

(declare-fun e!659813 () Bool)

(assert (=> d!296264 e!659813))

(declare-fun res!465322 () Bool)

(assert (=> d!296264 (=> res!465322 e!659813)))

(assert (=> d!296264 (= res!465322 e!659812)))

(declare-fun res!465321 () Bool)

(assert (=> d!296264 (=> (not res!465321) (not e!659812))))

(assert (=> d!296264 (= res!465321 (isDefined!2043 lt!356752))))

(assert (=> d!296264 (= lt!356752 e!659815)))

(declare-fun c!171934 () Bool)

(assert (=> d!296264 (= c!171934 e!659814)))

(declare-fun res!465324 () Bool)

(assert (=> d!296264 (=> (not res!465324) (not e!659814))))

(assert (=> d!296264 (= res!465324 (matchR!1412 (regOne!6264 r!15766) Nil!10090))))

(assert (=> d!296264 (validRegex!1345 (regOne!6264 r!15766))))

(assert (=> d!296264 (= (findConcatSeparation!507 (regOne!6264 r!15766) (regTwo!6264 r!15766) Nil!10090 s!10566 s!10566) lt!356752)))

(declare-fun b!1035920 () Bool)

(assert (=> b!1035920 (= e!659816 None!2400)))

(declare-fun b!1035921 () Bool)

(declare-fun res!465325 () Bool)

(assert (=> b!1035921 (=> (not res!465325) (not e!659812))))

(assert (=> b!1035921 (= res!465325 (matchR!1412 (regTwo!6264 r!15766) (_2!6585 (get!3593 lt!356752))))))

(declare-fun b!1035922 () Bool)

(assert (=> b!1035922 (= e!659813 (not (isDefined!2043 lt!356752)))))

(declare-fun b!1035923 () Bool)

(assert (=> b!1035923 (= e!659815 e!659816)))

(declare-fun c!171933 () Bool)

(assert (=> b!1035923 (= c!171933 (is-Nil!10090 s!10566))))

(declare-fun b!1035924 () Bool)

(assert (=> b!1035924 (= e!659812 (= (++!2777 (_1!6585 (get!3593 lt!356752)) (_2!6585 (get!3593 lt!356752))) s!10566))))

(assert (= (and d!296264 res!465324) b!1035916))

(assert (= (and d!296264 c!171934) b!1035919))

(assert (= (and d!296264 (not c!171934)) b!1035923))

(assert (= (and b!1035923 c!171933) b!1035920))

(assert (= (and b!1035923 (not c!171933)) b!1035917))

(assert (= (and d!296264 res!465321) b!1035918))

(assert (= (and b!1035918 res!465323) b!1035921))

(assert (= (and b!1035921 res!465325) b!1035924))

(assert (= (and d!296264 (not res!465322)) b!1035922))

(declare-fun m!1206779 () Bool)

(assert (=> b!1035922 m!1206779))

(declare-fun m!1206781 () Bool)

(assert (=> b!1035924 m!1206781))

(declare-fun m!1206783 () Bool)

(assert (=> b!1035924 m!1206783))

(declare-fun m!1206785 () Bool)

(assert (=> b!1035916 m!1206785))

(declare-fun m!1206787 () Bool)

(assert (=> b!1035917 m!1206787))

(assert (=> b!1035917 m!1206787))

(declare-fun m!1206789 () Bool)

(assert (=> b!1035917 m!1206789))

(declare-fun m!1206791 () Bool)

(assert (=> b!1035917 m!1206791))

(assert (=> b!1035917 m!1206787))

(declare-fun m!1206793 () Bool)

(assert (=> b!1035917 m!1206793))

(assert (=> b!1035921 m!1206781))

(declare-fun m!1206795 () Bool)

(assert (=> b!1035921 m!1206795))

(assert (=> d!296264 m!1206779))

(declare-fun m!1206797 () Bool)

(assert (=> d!296264 m!1206797))

(assert (=> d!296264 m!1206777))

(assert (=> b!1035918 m!1206781))

(declare-fun m!1206799 () Bool)

(assert (=> b!1035918 m!1206799))

(assert (=> b!1035662 d!296264))

(declare-fun bs!247615 () Bool)

(declare-fun d!296266 () Bool)

(assert (= bs!247615 (and d!296266 b!1035662)))

(declare-fun lambda!37282 () Int)

(assert (=> bs!247615 (= lambda!37282 lambda!37259)))

(assert (=> bs!247615 (not (= lambda!37282 lambda!37260))))

(declare-fun bs!247616 () Bool)

(assert (= bs!247616 (and d!296266 b!1035782)))

(assert (=> bs!247616 (not (= lambda!37282 lambda!37273))))

(declare-fun bs!247617 () Bool)

(assert (= bs!247617 (and d!296266 b!1035779)))

(assert (=> bs!247617 (not (= lambda!37282 lambda!37274))))

(declare-fun bs!247618 () Bool)

(assert (= bs!247618 (and d!296266 d!296260)))

(assert (=> bs!247618 (= lambda!37282 lambda!37277)))

(assert (=> d!296266 true))

(assert (=> d!296266 true))

(assert (=> d!296266 true))

(declare-fun bs!247619 () Bool)

(assert (= bs!247619 d!296266))

(declare-fun lambda!37283 () Int)

(assert (=> bs!247619 (not (= lambda!37283 lambda!37282))))

(assert (=> bs!247615 (not (= lambda!37283 lambda!37259))))

(assert (=> bs!247615 (= lambda!37283 lambda!37260)))

(assert (=> bs!247616 (not (= lambda!37283 lambda!37273))))

(assert (=> bs!247617 (= lambda!37283 lambda!37274)))

(assert (=> bs!247618 (not (= lambda!37283 lambda!37277))))

(assert (=> d!296266 true))

(assert (=> d!296266 true))

(assert (=> d!296266 true))

(assert (=> d!296266 (= (Exists!603 lambda!37282) (Exists!603 lambda!37283))))

(declare-fun lt!356757 () Unit!15427)

(declare-fun choose!6611 (Regex!2876 Regex!2876 List!10106) Unit!15427)

(assert (=> d!296266 (= lt!356757 (choose!6611 (regOne!6264 r!15766) (regTwo!6264 r!15766) s!10566))))

(assert (=> d!296266 (validRegex!1345 (regOne!6264 r!15766))))

(assert (=> d!296266 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!291 (regOne!6264 r!15766) (regTwo!6264 r!15766) s!10566) lt!356757)))

(declare-fun m!1206825 () Bool)

(assert (=> bs!247619 m!1206825))

(declare-fun m!1206827 () Bool)

(assert (=> bs!247619 m!1206827))

(declare-fun m!1206829 () Bool)

(assert (=> bs!247619 m!1206829))

(assert (=> bs!247619 m!1206777))

(assert (=> b!1035662 d!296266))

(declare-fun d!296272 () Bool)

(declare-fun choose!6612 (Int) Bool)

(assert (=> d!296272 (= (Exists!603 lambda!37260) (choose!6612 lambda!37260))))

(declare-fun bs!247620 () Bool)

(assert (= bs!247620 d!296272))

(declare-fun m!1206831 () Bool)

(assert (=> bs!247620 m!1206831))

(assert (=> b!1035662 d!296272))

(declare-fun d!296274 () Bool)

(assert (=> d!296274 (= (Exists!603 lambda!37259) (choose!6612 lambda!37259))))

(declare-fun bs!247621 () Bool)

(assert (= bs!247621 d!296274))

(declare-fun m!1206833 () Bool)

(assert (=> bs!247621 m!1206833))

(assert (=> b!1035662 d!296274))

(declare-fun b!1035973 () Bool)

(declare-fun res!465348 () Bool)

(declare-fun e!659853 () Bool)

(assert (=> b!1035973 (=> res!465348 e!659853)))

(assert (=> b!1035973 (= res!465348 (not (is-ElementMatch!2876 lt!356712)))))

(declare-fun e!659848 () Bool)

(assert (=> b!1035973 (= e!659848 e!659853)))

(declare-fun bm!71650 () Bool)

(declare-fun call!71655 () Bool)

(assert (=> bm!71650 (= call!71655 (isEmpty!6483 s!10566))))

(declare-fun b!1035974 () Bool)

(declare-fun e!659852 () Bool)

(declare-fun e!659847 () Bool)

(assert (=> b!1035974 (= e!659852 e!659847)))

(declare-fun res!465346 () Bool)

(assert (=> b!1035974 (=> res!465346 e!659847)))

(assert (=> b!1035974 (= res!465346 call!71655)))

(declare-fun b!1035975 () Bool)

(assert (=> b!1035975 (= e!659847 (not (= (head!1923 s!10566) (c!171881 lt!356712))))))

(declare-fun b!1035976 () Bool)

(declare-fun res!465351 () Bool)

(declare-fun e!659851 () Bool)

(assert (=> b!1035976 (=> (not res!465351) (not e!659851))))

(assert (=> b!1035976 (= res!465351 (not call!71655))))

(declare-fun b!1035977 () Bool)

(declare-fun res!465347 () Bool)

(assert (=> b!1035977 (=> (not res!465347) (not e!659851))))

(assert (=> b!1035977 (= res!465347 (isEmpty!6483 (tail!1485 s!10566)))))

(declare-fun b!1035978 () Bool)

(declare-fun e!659850 () Bool)

(assert (=> b!1035978 (= e!659850 e!659848)))

(declare-fun c!171949 () Bool)

(assert (=> b!1035978 (= c!171949 (is-EmptyLang!2876 lt!356712))))

(declare-fun b!1035979 () Bool)

(declare-fun e!659849 () Bool)

(assert (=> b!1035979 (= e!659849 (matchR!1412 (derivativeStep!768 lt!356712 (head!1923 s!10566)) (tail!1485 s!10566)))))

(declare-fun b!1035980 () Bool)

(declare-fun res!465349 () Bool)

(assert (=> b!1035980 (=> res!465349 e!659853)))

(assert (=> b!1035980 (= res!465349 e!659851)))

(declare-fun res!465353 () Bool)

(assert (=> b!1035980 (=> (not res!465353) (not e!659851))))

(declare-fun lt!356758 () Bool)

(assert (=> b!1035980 (= res!465353 lt!356758)))

(declare-fun b!1035981 () Bool)

(assert (=> b!1035981 (= e!659848 (not lt!356758))))

(declare-fun b!1035983 () Bool)

(assert (=> b!1035983 (= e!659853 e!659852)))

(declare-fun res!465352 () Bool)

(assert (=> b!1035983 (=> (not res!465352) (not e!659852))))

(assert (=> b!1035983 (= res!465352 (not lt!356758))))

(declare-fun b!1035984 () Bool)

(declare-fun res!465350 () Bool)

(assert (=> b!1035984 (=> res!465350 e!659847)))

(assert (=> b!1035984 (= res!465350 (not (isEmpty!6483 (tail!1485 s!10566))))))

(declare-fun b!1035985 () Bool)

(assert (=> b!1035985 (= e!659851 (= (head!1923 s!10566) (c!171881 lt!356712)))))

(declare-fun b!1035986 () Bool)

(assert (=> b!1035986 (= e!659850 (= lt!356758 call!71655))))

(declare-fun b!1035982 () Bool)

(assert (=> b!1035982 (= e!659849 (nullable!968 lt!356712))))

(declare-fun d!296276 () Bool)

(assert (=> d!296276 e!659850))

(declare-fun c!171950 () Bool)

(assert (=> d!296276 (= c!171950 (is-EmptyExpr!2876 lt!356712))))

(assert (=> d!296276 (= lt!356758 e!659849)))

(declare-fun c!171951 () Bool)

(assert (=> d!296276 (= c!171951 (isEmpty!6483 s!10566))))

(assert (=> d!296276 (validRegex!1345 lt!356712)))

(assert (=> d!296276 (= (matchR!1412 lt!356712 s!10566) lt!356758)))

(assert (= (and d!296276 c!171951) b!1035982))

(assert (= (and d!296276 (not c!171951)) b!1035979))

(assert (= (and d!296276 c!171950) b!1035986))

(assert (= (and d!296276 (not c!171950)) b!1035978))

(assert (= (and b!1035978 c!171949) b!1035981))

(assert (= (and b!1035978 (not c!171949)) b!1035973))

(assert (= (and b!1035973 (not res!465348)) b!1035980))

(assert (= (and b!1035980 res!465353) b!1035976))

(assert (= (and b!1035976 res!465351) b!1035977))

(assert (= (and b!1035977 res!465347) b!1035985))

(assert (= (and b!1035980 (not res!465349)) b!1035983))

(assert (= (and b!1035983 res!465352) b!1035974))

(assert (= (and b!1035974 (not res!465346)) b!1035984))

(assert (= (and b!1035984 (not res!465350)) b!1035975))

(assert (= (or b!1035986 b!1035974 b!1035976) bm!71650))

(declare-fun m!1206835 () Bool)

(assert (=> b!1035982 m!1206835))

(assert (=> b!1035985 m!1206747))

(assert (=> d!296276 m!1206697))

(assert (=> d!296276 m!1206687))

(assert (=> b!1035975 m!1206747))

(assert (=> bm!71650 m!1206697))

(assert (=> b!1035984 m!1206749))

(assert (=> b!1035984 m!1206749))

(assert (=> b!1035984 m!1206751))

(assert (=> b!1035979 m!1206747))

(assert (=> b!1035979 m!1206747))

(declare-fun m!1206837 () Bool)

(assert (=> b!1035979 m!1206837))

(assert (=> b!1035979 m!1206749))

(assert (=> b!1035979 m!1206837))

(assert (=> b!1035979 m!1206749))

(declare-fun m!1206839 () Bool)

(assert (=> b!1035979 m!1206839))

(assert (=> b!1035977 m!1206749))

(assert (=> b!1035977 m!1206749))

(assert (=> b!1035977 m!1206751))

(assert (=> b!1035665 d!296276))

(declare-fun b!1036018 () Bool)

(declare-fun e!659876 () Regex!2876)

(declare-fun call!71674 () Regex!2876)

(assert (=> b!1036018 (= e!659876 call!71674)))

(declare-fun b!1036019 () Bool)

(declare-fun e!659875 () Bool)

(declare-fun lt!356761 () Regex!2876)

(assert (=> b!1036019 (= e!659875 (= (nullable!968 lt!356761) (nullable!968 (regOne!6264 r!15766))))))

(declare-fun c!171968 () Bool)

(declare-fun c!171964 () Bool)

(declare-fun c!171967 () Bool)

(declare-fun bm!71666 () Bool)

(assert (=> bm!71666 (= call!71674 (removeUselessConcat!425 (ite c!171964 (regTwo!6264 (regOne!6264 r!15766)) (ite (or c!171967 c!171968) (regOne!6264 (regOne!6264 r!15766)) (regOne!6265 (regOne!6264 r!15766))))))))

(declare-fun b!1036020 () Bool)

(declare-fun e!659874 () Regex!2876)

(declare-fun call!71671 () Regex!2876)

(assert (=> b!1036020 (= e!659874 (Star!2876 call!71671))))

(declare-fun bm!71667 () Bool)

(declare-fun call!71675 () Regex!2876)

(assert (=> bm!71667 (= call!71675 call!71674)))

(declare-fun c!171966 () Bool)

(declare-fun bm!71668 () Bool)

(declare-fun call!71673 () Regex!2876)

(assert (=> bm!71668 (= call!71673 (removeUselessConcat!425 (ite c!171968 (regTwo!6264 (regOne!6264 r!15766)) (ite c!171966 (regTwo!6265 (regOne!6264 r!15766)) (reg!3205 (regOne!6264 r!15766))))))))

(declare-fun b!1036021 () Bool)

(declare-fun e!659877 () Regex!2876)

(declare-fun call!71672 () Regex!2876)

(assert (=> b!1036021 (= e!659877 (Concat!4709 call!71672 call!71673))))

(declare-fun d!296278 () Bool)

(assert (=> d!296278 e!659875))

(declare-fun res!465361 () Bool)

(assert (=> d!296278 (=> (not res!465361) (not e!659875))))

(assert (=> d!296278 (= res!465361 (validRegex!1345 lt!356761))))

(assert (=> d!296278 (= lt!356761 e!659876)))

(assert (=> d!296278 (= c!171964 (and (is-Concat!4709 (regOne!6264 r!15766)) (is-EmptyExpr!2876 (regOne!6264 (regOne!6264 r!15766)))))))

(assert (=> d!296278 (validRegex!1345 (regOne!6264 r!15766))))

(assert (=> d!296278 (= (removeUselessConcat!425 (regOne!6264 r!15766)) lt!356761)))

(declare-fun bm!71669 () Bool)

(assert (=> bm!71669 (= call!71672 call!71675)))

(declare-fun b!1036022 () Bool)

(declare-fun e!659878 () Regex!2876)

(assert (=> b!1036022 (= e!659877 e!659878)))

(assert (=> b!1036022 (= c!171966 (is-Union!2876 (regOne!6264 r!15766)))))

(declare-fun b!1036023 () Bool)

(declare-fun e!659873 () Regex!2876)

(assert (=> b!1036023 (= e!659876 e!659873)))

(assert (=> b!1036023 (= c!171967 (and (is-Concat!4709 (regOne!6264 r!15766)) (is-EmptyExpr!2876 (regTwo!6264 (regOne!6264 r!15766)))))))

(declare-fun b!1036024 () Bool)

(assert (=> b!1036024 (= e!659878 (Union!2876 call!71672 call!71671))))

(declare-fun b!1036025 () Bool)

(assert (=> b!1036025 (= c!171968 (is-Concat!4709 (regOne!6264 r!15766)))))

(assert (=> b!1036025 (= e!659873 e!659877)))

(declare-fun b!1036026 () Bool)

(declare-fun c!171965 () Bool)

(assert (=> b!1036026 (= c!171965 (is-Star!2876 (regOne!6264 r!15766)))))

(assert (=> b!1036026 (= e!659878 e!659874)))

(declare-fun b!1036027 () Bool)

(assert (=> b!1036027 (= e!659873 call!71675)))

(declare-fun bm!71670 () Bool)

(assert (=> bm!71670 (= call!71671 call!71673)))

(declare-fun b!1036028 () Bool)

(assert (=> b!1036028 (= e!659874 (regOne!6264 r!15766))))

(assert (= (and d!296278 c!171964) b!1036018))

(assert (= (and d!296278 (not c!171964)) b!1036023))

(assert (= (and b!1036023 c!171967) b!1036027))

(assert (= (and b!1036023 (not c!171967)) b!1036025))

(assert (= (and b!1036025 c!171968) b!1036021))

(assert (= (and b!1036025 (not c!171968)) b!1036022))

(assert (= (and b!1036022 c!171966) b!1036024))

(assert (= (and b!1036022 (not c!171966)) b!1036026))

(assert (= (and b!1036026 c!171965) b!1036020))

(assert (= (and b!1036026 (not c!171965)) b!1036028))

(assert (= (or b!1036024 b!1036020) bm!71670))

(assert (= (or b!1036021 bm!71670) bm!71668))

(assert (= (or b!1036021 b!1036024) bm!71669))

(assert (= (or b!1036027 bm!71669) bm!71667))

(assert (= (or b!1036018 bm!71667) bm!71666))

(assert (= (and d!296278 res!465361) b!1036019))

(declare-fun m!1206847 () Bool)

(assert (=> b!1036019 m!1206847))

(declare-fun m!1206849 () Bool)

(assert (=> b!1036019 m!1206849))

(declare-fun m!1206851 () Bool)

(assert (=> bm!71666 m!1206851))

(declare-fun m!1206853 () Bool)

(assert (=> bm!71668 m!1206853))

(declare-fun m!1206855 () Bool)

(assert (=> d!296278 m!1206855))

(assert (=> d!296278 m!1206777))

(assert (=> b!1035665 d!296278))

(declare-fun b!1036029 () Bool)

(declare-fun e!659882 () Regex!2876)

(declare-fun call!71679 () Regex!2876)

(assert (=> b!1036029 (= e!659882 call!71679)))

(declare-fun b!1036030 () Bool)

(declare-fun e!659881 () Bool)

(declare-fun lt!356762 () Regex!2876)

(assert (=> b!1036030 (= e!659881 (= (nullable!968 lt!356762) (nullable!968 (regTwo!6264 r!15766))))))

(declare-fun bm!71671 () Bool)

(declare-fun c!171969 () Bool)

(declare-fun c!171973 () Bool)

(declare-fun c!171972 () Bool)

(assert (=> bm!71671 (= call!71679 (removeUselessConcat!425 (ite c!171969 (regTwo!6264 (regTwo!6264 r!15766)) (ite (or c!171972 c!171973) (regOne!6264 (regTwo!6264 r!15766)) (regOne!6265 (regTwo!6264 r!15766))))))))

(declare-fun b!1036031 () Bool)

(declare-fun e!659880 () Regex!2876)

(declare-fun call!71676 () Regex!2876)

(assert (=> b!1036031 (= e!659880 (Star!2876 call!71676))))

(declare-fun bm!71672 () Bool)

(declare-fun call!71680 () Regex!2876)

(assert (=> bm!71672 (= call!71680 call!71679)))

(declare-fun c!171971 () Bool)

(declare-fun bm!71673 () Bool)

(declare-fun call!71678 () Regex!2876)

(assert (=> bm!71673 (= call!71678 (removeUselessConcat!425 (ite c!171973 (regTwo!6264 (regTwo!6264 r!15766)) (ite c!171971 (regTwo!6265 (regTwo!6264 r!15766)) (reg!3205 (regTwo!6264 r!15766))))))))

(declare-fun b!1036032 () Bool)

(declare-fun e!659883 () Regex!2876)

(declare-fun call!71677 () Regex!2876)

(assert (=> b!1036032 (= e!659883 (Concat!4709 call!71677 call!71678))))

(declare-fun d!296282 () Bool)

(assert (=> d!296282 e!659881))

(declare-fun res!465362 () Bool)

(assert (=> d!296282 (=> (not res!465362) (not e!659881))))

(assert (=> d!296282 (= res!465362 (validRegex!1345 lt!356762))))

(assert (=> d!296282 (= lt!356762 e!659882)))

(assert (=> d!296282 (= c!171969 (and (is-Concat!4709 (regTwo!6264 r!15766)) (is-EmptyExpr!2876 (regOne!6264 (regTwo!6264 r!15766)))))))

(assert (=> d!296282 (validRegex!1345 (regTwo!6264 r!15766))))

(assert (=> d!296282 (= (removeUselessConcat!425 (regTwo!6264 r!15766)) lt!356762)))

(declare-fun bm!71674 () Bool)

(assert (=> bm!71674 (= call!71677 call!71680)))

(declare-fun b!1036033 () Bool)

(declare-fun e!659884 () Regex!2876)

(assert (=> b!1036033 (= e!659883 e!659884)))

(assert (=> b!1036033 (= c!171971 (is-Union!2876 (regTwo!6264 r!15766)))))

(declare-fun b!1036034 () Bool)

(declare-fun e!659879 () Regex!2876)

(assert (=> b!1036034 (= e!659882 e!659879)))

(assert (=> b!1036034 (= c!171972 (and (is-Concat!4709 (regTwo!6264 r!15766)) (is-EmptyExpr!2876 (regTwo!6264 (regTwo!6264 r!15766)))))))

(declare-fun b!1036035 () Bool)

(assert (=> b!1036035 (= e!659884 (Union!2876 call!71677 call!71676))))

(declare-fun b!1036036 () Bool)

(assert (=> b!1036036 (= c!171973 (is-Concat!4709 (regTwo!6264 r!15766)))))

(assert (=> b!1036036 (= e!659879 e!659883)))

(declare-fun b!1036037 () Bool)

(declare-fun c!171970 () Bool)

(assert (=> b!1036037 (= c!171970 (is-Star!2876 (regTwo!6264 r!15766)))))

(assert (=> b!1036037 (= e!659884 e!659880)))

(declare-fun b!1036038 () Bool)

(assert (=> b!1036038 (= e!659879 call!71680)))

(declare-fun bm!71675 () Bool)

(assert (=> bm!71675 (= call!71676 call!71678)))

(declare-fun b!1036039 () Bool)

(assert (=> b!1036039 (= e!659880 (regTwo!6264 r!15766))))

(assert (= (and d!296282 c!171969) b!1036029))

(assert (= (and d!296282 (not c!171969)) b!1036034))

(assert (= (and b!1036034 c!171972) b!1036038))

(assert (= (and b!1036034 (not c!171972)) b!1036036))

(assert (= (and b!1036036 c!171973) b!1036032))

(assert (= (and b!1036036 (not c!171973)) b!1036033))

(assert (= (and b!1036033 c!171971) b!1036035))

(assert (= (and b!1036033 (not c!171971)) b!1036037))

(assert (= (and b!1036037 c!171970) b!1036031))

(assert (= (and b!1036037 (not c!171970)) b!1036039))

(assert (= (or b!1036035 b!1036031) bm!71675))

(assert (= (or b!1036032 bm!71675) bm!71673))

(assert (= (or b!1036032 b!1036035) bm!71674))

(assert (= (or b!1036038 bm!71674) bm!71672))

(assert (= (or b!1036029 bm!71672) bm!71671))

(assert (= (and d!296282 res!465362) b!1036030))

(declare-fun m!1206857 () Bool)

(assert (=> b!1036030 m!1206857))

(declare-fun m!1206859 () Bool)

(assert (=> b!1036030 m!1206859))

(declare-fun m!1206861 () Bool)

(assert (=> bm!71671 m!1206861))

(declare-fun m!1206863 () Bool)

(assert (=> bm!71673 m!1206863))

(declare-fun m!1206865 () Bool)

(assert (=> d!296282 m!1206865))

(declare-fun m!1206867 () Bool)

(assert (=> d!296282 m!1206867))

(assert (=> b!1035665 d!296282))

(declare-fun b!1036040 () Bool)

(declare-fun res!465363 () Bool)

(declare-fun e!659890 () Bool)

(assert (=> b!1036040 (=> res!465363 e!659890)))

(assert (=> b!1036040 (= res!465363 (not (is-Concat!4709 lt!356712)))))

(declare-fun e!659891 () Bool)

(assert (=> b!1036040 (= e!659891 e!659890)))

(declare-fun bm!71676 () Bool)

(declare-fun call!71681 () Bool)

(declare-fun c!171974 () Bool)

(assert (=> bm!71676 (= call!71681 (validRegex!1345 (ite c!171974 (regTwo!6265 lt!356712) (regTwo!6264 lt!356712))))))

(declare-fun d!296284 () Bool)

(declare-fun res!465367 () Bool)

(declare-fun e!659889 () Bool)

(assert (=> d!296284 (=> res!465367 e!659889)))

(assert (=> d!296284 (= res!465367 (is-ElementMatch!2876 lt!356712))))

(assert (=> d!296284 (= (validRegex!1345 lt!356712) e!659889)))

(declare-fun b!1036041 () Bool)

(declare-fun e!659886 () Bool)

(assert (=> b!1036041 (= e!659886 call!71681)))

(declare-fun b!1036042 () Bool)

(declare-fun e!659888 () Bool)

(declare-fun e!659885 () Bool)

(assert (=> b!1036042 (= e!659888 e!659885)))

(declare-fun res!465365 () Bool)

(assert (=> b!1036042 (= res!465365 (not (nullable!968 (reg!3205 lt!356712))))))

(assert (=> b!1036042 (=> (not res!465365) (not e!659885))))

(declare-fun b!1036043 () Bool)

(declare-fun call!71682 () Bool)

(assert (=> b!1036043 (= e!659885 call!71682)))

(declare-fun b!1036044 () Bool)

(assert (=> b!1036044 (= e!659889 e!659888)))

(declare-fun c!171975 () Bool)

(assert (=> b!1036044 (= c!171975 (is-Star!2876 lt!356712))))

(declare-fun b!1036045 () Bool)

(declare-fun e!659887 () Bool)

(assert (=> b!1036045 (= e!659887 call!71681)))

(declare-fun b!1036046 () Bool)

(assert (=> b!1036046 (= e!659890 e!659887)))

(declare-fun res!465364 () Bool)

(assert (=> b!1036046 (=> (not res!465364) (not e!659887))))

(declare-fun call!71683 () Bool)

(assert (=> b!1036046 (= res!465364 call!71683)))

(declare-fun b!1036047 () Bool)

(declare-fun res!465366 () Bool)

(assert (=> b!1036047 (=> (not res!465366) (not e!659886))))

(assert (=> b!1036047 (= res!465366 call!71683)))

(assert (=> b!1036047 (= e!659891 e!659886)))

(declare-fun bm!71677 () Bool)

(assert (=> bm!71677 (= call!71683 call!71682)))

(declare-fun b!1036048 () Bool)

(assert (=> b!1036048 (= e!659888 e!659891)))

(assert (=> b!1036048 (= c!171974 (is-Union!2876 lt!356712))))

(declare-fun bm!71678 () Bool)

(assert (=> bm!71678 (= call!71682 (validRegex!1345 (ite c!171975 (reg!3205 lt!356712) (ite c!171974 (regOne!6265 lt!356712) (regOne!6264 lt!356712)))))))

(assert (= (and d!296284 (not res!465367)) b!1036044))

(assert (= (and b!1036044 c!171975) b!1036042))

(assert (= (and b!1036044 (not c!171975)) b!1036048))

(assert (= (and b!1036042 res!465365) b!1036043))

(assert (= (and b!1036048 c!171974) b!1036047))

(assert (= (and b!1036048 (not c!171974)) b!1036040))

(assert (= (and b!1036047 res!465366) b!1036041))

(assert (= (and b!1036040 (not res!465363)) b!1036046))

(assert (= (and b!1036046 res!465364) b!1036045))

(assert (= (or b!1036041 b!1036045) bm!71676))

(assert (= (or b!1036047 b!1036046) bm!71677))

(assert (= (or b!1036043 bm!71677) bm!71678))

(declare-fun m!1206869 () Bool)

(assert (=> bm!71676 m!1206869))

(declare-fun m!1206871 () Bool)

(assert (=> b!1036042 m!1206871))

(declare-fun m!1206873 () Bool)

(assert (=> bm!71678 m!1206873))

(assert (=> b!1035669 d!296284))

(declare-fun b!1036059 () Bool)

(declare-fun e!659894 () Bool)

(assert (=> b!1036059 (= e!659894 tp_is_empty!5395)))

(assert (=> b!1035668 (= tp!313410 e!659894)))

(declare-fun b!1036060 () Bool)

(declare-fun tp!313441 () Bool)

(declare-fun tp!313439 () Bool)

(assert (=> b!1036060 (= e!659894 (and tp!313441 tp!313439))))

(declare-fun b!1036062 () Bool)

(declare-fun tp!313440 () Bool)

(declare-fun tp!313443 () Bool)

(assert (=> b!1036062 (= e!659894 (and tp!313440 tp!313443))))

(declare-fun b!1036061 () Bool)

(declare-fun tp!313442 () Bool)

(assert (=> b!1036061 (= e!659894 tp!313442)))

(assert (= (and b!1035668 (is-ElementMatch!2876 (regOne!6265 r!15766))) b!1036059))

(assert (= (and b!1035668 (is-Concat!4709 (regOne!6265 r!15766))) b!1036060))

(assert (= (and b!1035668 (is-Star!2876 (regOne!6265 r!15766))) b!1036061))

(assert (= (and b!1035668 (is-Union!2876 (regOne!6265 r!15766))) b!1036062))

(declare-fun b!1036063 () Bool)

(declare-fun e!659895 () Bool)

(assert (=> b!1036063 (= e!659895 tp_is_empty!5395)))

(assert (=> b!1035668 (= tp!313409 e!659895)))

(declare-fun b!1036064 () Bool)

(declare-fun tp!313446 () Bool)

(declare-fun tp!313444 () Bool)

(assert (=> b!1036064 (= e!659895 (and tp!313446 tp!313444))))

(declare-fun b!1036066 () Bool)

(declare-fun tp!313445 () Bool)

(declare-fun tp!313448 () Bool)

(assert (=> b!1036066 (= e!659895 (and tp!313445 tp!313448))))

(declare-fun b!1036065 () Bool)

(declare-fun tp!313447 () Bool)

(assert (=> b!1036065 (= e!659895 tp!313447)))

(assert (= (and b!1035668 (is-ElementMatch!2876 (regTwo!6265 r!15766))) b!1036063))

(assert (= (and b!1035668 (is-Concat!4709 (regTwo!6265 r!15766))) b!1036064))

(assert (= (and b!1035668 (is-Star!2876 (regTwo!6265 r!15766))) b!1036065))

(assert (= (and b!1035668 (is-Union!2876 (regTwo!6265 r!15766))) b!1036066))

(declare-fun b!1036071 () Bool)

(declare-fun e!659898 () Bool)

(declare-fun tp!313451 () Bool)

(assert (=> b!1036071 (= e!659898 (and tp_is_empty!5395 tp!313451))))

(assert (=> b!1035663 (= tp!313405 e!659898)))

(assert (= (and b!1035663 (is-Cons!10090 (t!101152 s!10566))) b!1036071))

(declare-fun b!1036072 () Bool)

(declare-fun e!659899 () Bool)

(assert (=> b!1036072 (= e!659899 tp_is_empty!5395)))

(assert (=> b!1035666 (= tp!313408 e!659899)))

(declare-fun b!1036073 () Bool)

(declare-fun tp!313454 () Bool)

(declare-fun tp!313452 () Bool)

(assert (=> b!1036073 (= e!659899 (and tp!313454 tp!313452))))

(declare-fun b!1036075 () Bool)

(declare-fun tp!313453 () Bool)

(declare-fun tp!313456 () Bool)

(assert (=> b!1036075 (= e!659899 (and tp!313453 tp!313456))))

(declare-fun b!1036074 () Bool)

(declare-fun tp!313455 () Bool)

(assert (=> b!1036074 (= e!659899 tp!313455)))

(assert (= (and b!1035666 (is-ElementMatch!2876 (regOne!6264 r!15766))) b!1036072))

(assert (= (and b!1035666 (is-Concat!4709 (regOne!6264 r!15766))) b!1036073))

(assert (= (and b!1035666 (is-Star!2876 (regOne!6264 r!15766))) b!1036074))

(assert (= (and b!1035666 (is-Union!2876 (regOne!6264 r!15766))) b!1036075))

(declare-fun b!1036076 () Bool)

(declare-fun e!659900 () Bool)

(assert (=> b!1036076 (= e!659900 tp_is_empty!5395)))

(assert (=> b!1035666 (= tp!313407 e!659900)))

(declare-fun b!1036077 () Bool)

(declare-fun tp!313459 () Bool)

(declare-fun tp!313457 () Bool)

(assert (=> b!1036077 (= e!659900 (and tp!313459 tp!313457))))

(declare-fun b!1036079 () Bool)

(declare-fun tp!313458 () Bool)

(declare-fun tp!313461 () Bool)

(assert (=> b!1036079 (= e!659900 (and tp!313458 tp!313461))))

(declare-fun b!1036078 () Bool)

(declare-fun tp!313460 () Bool)

(assert (=> b!1036078 (= e!659900 tp!313460)))

(assert (= (and b!1035666 (is-ElementMatch!2876 (regTwo!6264 r!15766))) b!1036076))

(assert (= (and b!1035666 (is-Concat!4709 (regTwo!6264 r!15766))) b!1036077))

(assert (= (and b!1035666 (is-Star!2876 (regTwo!6264 r!15766))) b!1036078))

(assert (= (and b!1035666 (is-Union!2876 (regTwo!6264 r!15766))) b!1036079))

(declare-fun b!1036080 () Bool)

(declare-fun e!659901 () Bool)

(assert (=> b!1036080 (= e!659901 tp_is_empty!5395)))

(assert (=> b!1035670 (= tp!313406 e!659901)))

(declare-fun b!1036081 () Bool)

(declare-fun tp!313464 () Bool)

(declare-fun tp!313462 () Bool)

(assert (=> b!1036081 (= e!659901 (and tp!313464 tp!313462))))

(declare-fun b!1036083 () Bool)

(declare-fun tp!313463 () Bool)

(declare-fun tp!313466 () Bool)

(assert (=> b!1036083 (= e!659901 (and tp!313463 tp!313466))))

(declare-fun b!1036082 () Bool)

(declare-fun tp!313465 () Bool)

(assert (=> b!1036082 (= e!659901 tp!313465)))

(assert (= (and b!1035670 (is-ElementMatch!2876 (reg!3205 r!15766))) b!1036080))

(assert (= (and b!1035670 (is-Concat!4709 (reg!3205 r!15766))) b!1036081))

(assert (= (and b!1035670 (is-Star!2876 (reg!3205 r!15766))) b!1036082))

(assert (= (and b!1035670 (is-Union!2876 (reg!3205 r!15766))) b!1036083))

(push 1)

(assert (not b!1035738))

(assert (not b!1035977))

(assert (not d!296282))

(assert (not b!1036071))

(assert (not b!1036073))

(assert (not b!1035784))

(assert (not b!1036066))

(assert (not bm!71613))

(assert (not bm!71673))

(assert (not b!1035916))

(assert (not b!1036077))

(assert (not b!1036060))

(assert (not d!296252))

(assert tp_is_empty!5395)

(assert (not d!296272))

(assert (not b!1035853))

(assert (not b!1035855))

(assert (not b!1035979))

(assert (not b!1035918))

(assert (not bm!71666))

(assert (not b!1036079))

(assert (not b!1036074))

(assert (not d!296274))

(assert (not b!1035848))

(assert (not bm!71678))

(assert (not b!1035975))

(assert (not bm!71618))

(assert (not b!1035982))

(assert (not b!1035856))

(assert (not b!1036062))

(assert (not bm!71624))

(assert (not d!296266))

(assert (not b!1035917))

(assert (not b!1035985))

(assert (not b!1036030))

(assert (not b!1036081))

(assert (not bm!71676))

(assert (not bm!71668))

(assert (not d!296276))

(assert (not d!296260))

(assert (not d!296264))

(assert (not b!1035921))

(assert (not b!1036078))

(assert (not b!1036042))

(assert (not bm!71619))

(assert (not b!1035924))

(assert (not b!1036082))

(assert (not b!1036083))

(assert (not b!1035984))

(assert (not b!1036061))

(assert (not b!1036065))

(assert (not b!1036019))

(assert (not bm!71611))

(assert (not b!1035922))

(assert (not d!296278))

(assert (not b!1035786))

(assert (not b!1036075))

(assert (not b!1035846))

(assert (not bm!71671))

(assert (not b!1036064))

(assert (not b!1035850))

(assert (not bm!71650))

(assert (not d!296258))

(assert (not d!296254))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

