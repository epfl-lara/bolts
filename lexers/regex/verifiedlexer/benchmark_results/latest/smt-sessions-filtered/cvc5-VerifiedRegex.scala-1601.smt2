; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!82396 () Bool)

(assert start!82396)

(declare-fun b!916710 () Bool)

(assert (=> b!916710 true))

(assert (=> b!916710 true))

(declare-fun lambda!29542 () Int)

(declare-fun lambda!29541 () Int)

(assert (=> b!916710 (not (= lambda!29542 lambda!29541))))

(assert (=> b!916710 true))

(assert (=> b!916710 true))

(declare-fun res!416782 () Bool)

(declare-fun e!597322 () Bool)

(assert (=> start!82396 (=> (not res!416782) (not e!597322))))

(declare-datatypes ((C!5490 0))(
  ( (C!5491 (val!2993 Int)) )
))
(declare-datatypes ((Regex!2460 0))(
  ( (ElementMatch!2460 (c!148591 C!5490)) (Concat!4293 (regOne!5432 Regex!2460) (regTwo!5432 Regex!2460)) (EmptyExpr!2460) (Star!2460 (reg!2789 Regex!2460)) (EmptyLang!2460) (Union!2460 (regOne!5433 Regex!2460) (regTwo!5433 Regex!2460)) )
))
(declare-fun r!15766 () Regex!2460)

(declare-fun validRegex!929 (Regex!2460) Bool)

(assert (=> start!82396 (= res!416782 (validRegex!929 r!15766))))

(assert (=> start!82396 e!597322))

(declare-fun e!597323 () Bool)

(assert (=> start!82396 e!597323))

(declare-fun e!597319 () Bool)

(assert (=> start!82396 e!597319))

(declare-fun b!916704 () Bool)

(declare-fun e!597320 () Bool)

(assert (=> b!916704 (= e!597322 (not e!597320))))

(declare-fun res!416784 () Bool)

(assert (=> b!916704 (=> res!416784 e!597320)))

(declare-fun lt!337603 () Bool)

(assert (=> b!916704 (= res!416784 (or lt!337603 (and (is-Concat!4293 r!15766) (is-EmptyExpr!2460 (regOne!5432 r!15766))) (and (is-Concat!4293 r!15766) (is-EmptyExpr!2460 (regTwo!5432 r!15766))) (not (is-Concat!4293 r!15766))))))

(declare-datatypes ((List!9690 0))(
  ( (Nil!9674) (Cons!9674 (h!15075 C!5490) (t!100736 List!9690)) )
))
(declare-fun s!10566 () List!9690)

(declare-fun matchRSpec!261 (Regex!2460 List!9690) Bool)

(assert (=> b!916704 (= lt!337603 (matchRSpec!261 r!15766 s!10566))))

(declare-fun matchR!998 (Regex!2460 List!9690) Bool)

(assert (=> b!916704 (= lt!337603 (matchR!998 r!15766 s!10566))))

(declare-datatypes ((Unit!14539 0))(
  ( (Unit!14540) )
))
(declare-fun lt!337605 () Unit!14539)

(declare-fun mainMatchTheorem!261 (Regex!2460 List!9690) Unit!14539)

(assert (=> b!916704 (= lt!337605 (mainMatchTheorem!261 r!15766 s!10566))))

(declare-fun b!916705 () Bool)

(declare-fun tp!286138 () Bool)

(declare-fun tp!286135 () Bool)

(assert (=> b!916705 (= e!597323 (and tp!286138 tp!286135))))

(declare-fun b!916706 () Bool)

(declare-fun tp_is_empty!4563 () Bool)

(assert (=> b!916706 (= e!597323 tp_is_empty!4563)))

(declare-fun b!916707 () Bool)

(declare-fun tp!286136 () Bool)

(declare-fun tp!286133 () Bool)

(assert (=> b!916707 (= e!597323 (and tp!286136 tp!286133))))

(declare-fun b!916708 () Bool)

(declare-fun e!597321 () Bool)

(assert (=> b!916708 (= e!597321 (validRegex!929 (regTwo!5432 r!15766)))))

(declare-fun lt!337602 () Regex!2460)

(assert (=> b!916708 (matchRSpec!261 lt!337602 s!10566)))

(declare-fun lt!337600 () Unit!14539)

(assert (=> b!916708 (= lt!337600 (mainMatchTheorem!261 lt!337602 s!10566))))

(declare-fun b!916709 () Bool)

(declare-fun tp!286134 () Bool)

(assert (=> b!916709 (= e!597323 tp!286134)))

(declare-fun e!597318 () Bool)

(assert (=> b!916710 (= e!597320 e!597318)))

(declare-fun res!416783 () Bool)

(assert (=> b!916710 (=> res!416783 e!597318)))

(declare-fun isEmpty!5906 (List!9690) Bool)

(assert (=> b!916710 (= res!416783 (isEmpty!5906 s!10566))))

(declare-fun Exists!231 (Int) Bool)

(assert (=> b!916710 (= (Exists!231 lambda!29541) (Exists!231 lambda!29542))))

(declare-fun lt!337604 () Unit!14539)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!143 (Regex!2460 Regex!2460 List!9690) Unit!14539)

(assert (=> b!916710 (= lt!337604 (lemmaExistCutMatchRandMatchRSpecEquivalent!143 (regOne!5432 r!15766) (regTwo!5432 r!15766) s!10566))))

(declare-datatypes ((tuple2!10906 0))(
  ( (tuple2!10907 (_1!6279 List!9690) (_2!6279 List!9690)) )
))
(declare-datatypes ((Option!2095 0))(
  ( (None!2094) (Some!2094 (v!19511 tuple2!10906)) )
))
(declare-fun isDefined!1737 (Option!2095) Bool)

(declare-fun findConcatSeparation!201 (Regex!2460 Regex!2460 List!9690 List!9690 List!9690) Option!2095)

(assert (=> b!916710 (= (isDefined!1737 (findConcatSeparation!201 (regOne!5432 r!15766) (regTwo!5432 r!15766) Nil!9674 s!10566 s!10566)) (Exists!231 lambda!29541))))

(declare-fun lt!337601 () Unit!14539)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!201 (Regex!2460 Regex!2460 List!9690) Unit!14539)

(assert (=> b!916710 (= lt!337601 (lemmaFindConcatSeparationEquivalentToExists!201 (regOne!5432 r!15766) (regTwo!5432 r!15766) s!10566))))

(declare-fun b!916711 () Bool)

(assert (=> b!916711 (= e!597318 e!597321)))

(declare-fun res!416781 () Bool)

(assert (=> b!916711 (=> res!416781 e!597321)))

(assert (=> b!916711 (= res!416781 (not (matchR!998 lt!337602 s!10566)))))

(declare-fun removeUselessConcat!137 (Regex!2460) Regex!2460)

(assert (=> b!916711 (= lt!337602 (Concat!4293 (removeUselessConcat!137 (regOne!5432 r!15766)) (removeUselessConcat!137 (regTwo!5432 r!15766))))))

(declare-fun b!916712 () Bool)

(declare-fun tp!286137 () Bool)

(assert (=> b!916712 (= e!597319 (and tp_is_empty!4563 tp!286137))))

(assert (= (and start!82396 res!416782) b!916704))

(assert (= (and b!916704 (not res!416784)) b!916710))

(assert (= (and b!916710 (not res!416783)) b!916711))

(assert (= (and b!916711 (not res!416781)) b!916708))

(assert (= (and start!82396 (is-ElementMatch!2460 r!15766)) b!916706))

(assert (= (and start!82396 (is-Concat!4293 r!15766)) b!916707))

(assert (= (and start!82396 (is-Star!2460 r!15766)) b!916709))

(assert (= (and start!82396 (is-Union!2460 r!15766)) b!916705))

(assert (= (and start!82396 (is-Cons!9674 s!10566)) b!916712))

(declare-fun m!1145821 () Bool)

(assert (=> b!916704 m!1145821))

(declare-fun m!1145823 () Bool)

(assert (=> b!916704 m!1145823))

(declare-fun m!1145825 () Bool)

(assert (=> b!916704 m!1145825))

(declare-fun m!1145827 () Bool)

(assert (=> b!916710 m!1145827))

(declare-fun m!1145829 () Bool)

(assert (=> b!916710 m!1145829))

(declare-fun m!1145831 () Bool)

(assert (=> b!916710 m!1145831))

(declare-fun m!1145833 () Bool)

(assert (=> b!916710 m!1145833))

(declare-fun m!1145835 () Bool)

(assert (=> b!916710 m!1145835))

(declare-fun m!1145837 () Bool)

(assert (=> b!916710 m!1145837))

(assert (=> b!916710 m!1145827))

(assert (=> b!916710 m!1145835))

(declare-fun m!1145839 () Bool)

(assert (=> b!916710 m!1145839))

(declare-fun m!1145841 () Bool)

(assert (=> b!916708 m!1145841))

(declare-fun m!1145843 () Bool)

(assert (=> b!916708 m!1145843))

(declare-fun m!1145845 () Bool)

(assert (=> b!916708 m!1145845))

(declare-fun m!1145847 () Bool)

(assert (=> b!916711 m!1145847))

(declare-fun m!1145849 () Bool)

(assert (=> b!916711 m!1145849))

(declare-fun m!1145851 () Bool)

(assert (=> b!916711 m!1145851))

(declare-fun m!1145853 () Bool)

(assert (=> start!82396 m!1145853))

(push 1)

(assert (not b!916711))

(assert (not b!916705))

(assert tp_is_empty!4563)

(assert (not b!916708))

(assert (not b!916710))

(assert (not start!82396))

(assert (not b!916712))

(assert (not b!916704))

(assert (not b!916709))

(assert (not b!916707))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!236120 () Bool)

(declare-fun b!916797 () Bool)

(assert (= bs!236120 (and b!916797 b!916710)))

(declare-fun lambda!29555 () Int)

(assert (=> bs!236120 (not (= lambda!29555 lambda!29541))))

(assert (=> bs!236120 (not (= lambda!29555 lambda!29542))))

(assert (=> b!916797 true))

(assert (=> b!916797 true))

(declare-fun bs!236121 () Bool)

(declare-fun b!916795 () Bool)

(assert (= bs!236121 (and b!916795 b!916710)))

(declare-fun lambda!29556 () Int)

(assert (=> bs!236121 (not (= lambda!29556 lambda!29541))))

(assert (=> bs!236121 (= lambda!29556 lambda!29542)))

(declare-fun bs!236122 () Bool)

(assert (= bs!236122 (and b!916795 b!916797)))

(assert (=> bs!236122 (not (= lambda!29556 lambda!29555))))

(assert (=> b!916795 true))

(assert (=> b!916795 true))

(declare-fun b!916792 () Bool)

(declare-fun e!597367 () Bool)

(declare-fun e!597366 () Bool)

(assert (=> b!916792 (= e!597367 e!597366)))

(declare-fun res!416825 () Bool)

(assert (=> b!916792 (= res!416825 (matchRSpec!261 (regOne!5433 r!15766) s!10566))))

(assert (=> b!916792 (=> res!416825 e!597366)))

(declare-fun b!916793 () Bool)

(declare-fun res!416827 () Bool)

(declare-fun e!597368 () Bool)

(assert (=> b!916793 (=> res!416827 e!597368)))

(declare-fun call!55454 () Bool)

(assert (=> b!916793 (= res!416827 call!55454)))

(declare-fun e!597370 () Bool)

(assert (=> b!916793 (= e!597370 e!597368)))

(declare-fun b!916794 () Bool)

(declare-fun c!148604 () Bool)

(assert (=> b!916794 (= c!148604 (is-Union!2460 r!15766))))

(declare-fun e!597372 () Bool)

(assert (=> b!916794 (= e!597372 e!597367)))

(declare-fun call!55455 () Bool)

(assert (=> b!916795 (= e!597370 call!55455)))

(declare-fun b!916796 () Bool)

(declare-fun c!148602 () Bool)

(assert (=> b!916796 (= c!148602 (is-ElementMatch!2460 r!15766))))

(declare-fun e!597371 () Bool)

(assert (=> b!916796 (= e!597371 e!597372)))

(assert (=> b!916797 (= e!597368 call!55455)))

(declare-fun b!916798 () Bool)

(declare-fun e!597369 () Bool)

(assert (=> b!916798 (= e!597369 call!55454)))

(declare-fun b!916799 () Bool)

(assert (=> b!916799 (= e!597366 (matchRSpec!261 (regTwo!5433 r!15766) s!10566))))

(declare-fun d!279870 () Bool)

(declare-fun c!148603 () Bool)

(assert (=> d!279870 (= c!148603 (is-EmptyExpr!2460 r!15766))))

(assert (=> d!279870 (= (matchRSpec!261 r!15766 s!10566) e!597369)))

(declare-fun bm!55449 () Bool)

(assert (=> bm!55449 (= call!55454 (isEmpty!5906 s!10566))))

(declare-fun b!916800 () Bool)

(assert (=> b!916800 (= e!597372 (= s!10566 (Cons!9674 (c!148591 r!15766) Nil!9674)))))

(declare-fun b!916801 () Bool)

(assert (=> b!916801 (= e!597367 e!597370)))

(declare-fun c!148601 () Bool)

(assert (=> b!916801 (= c!148601 (is-Star!2460 r!15766))))

(declare-fun bm!55450 () Bool)

(assert (=> bm!55450 (= call!55455 (Exists!231 (ite c!148601 lambda!29555 lambda!29556)))))

(declare-fun b!916802 () Bool)

(assert (=> b!916802 (= e!597369 e!597371)))

(declare-fun res!416826 () Bool)

(assert (=> b!916802 (= res!416826 (not (is-EmptyLang!2460 r!15766)))))

(assert (=> b!916802 (=> (not res!416826) (not e!597371))))

(assert (= (and d!279870 c!148603) b!916798))

(assert (= (and d!279870 (not c!148603)) b!916802))

(assert (= (and b!916802 res!416826) b!916796))

(assert (= (and b!916796 c!148602) b!916800))

(assert (= (and b!916796 (not c!148602)) b!916794))

(assert (= (and b!916794 c!148604) b!916792))

(assert (= (and b!916794 (not c!148604)) b!916801))

(assert (= (and b!916792 (not res!416825)) b!916799))

(assert (= (and b!916801 c!148601) b!916793))

(assert (= (and b!916801 (not c!148601)) b!916795))

(assert (= (and b!916793 (not res!416827)) b!916797))

(assert (= (or b!916797 b!916795) bm!55450))

(assert (= (or b!916798 b!916793) bm!55449))

(declare-fun m!1145889 () Bool)

(assert (=> b!916792 m!1145889))

(declare-fun m!1145891 () Bool)

(assert (=> b!916799 m!1145891))

(assert (=> bm!55449 m!1145839))

(declare-fun m!1145893 () Bool)

(assert (=> bm!55450 m!1145893))

(assert (=> b!916704 d!279870))

(declare-fun b!916849 () Bool)

(declare-fun e!597406 () Bool)

(declare-fun head!1639 (List!9690) C!5490)

(assert (=> b!916849 (= e!597406 (not (= (head!1639 s!10566) (c!148591 r!15766))))))

(declare-fun b!916850 () Bool)

(declare-fun res!416858 () Bool)

(declare-fun e!597403 () Bool)

(assert (=> b!916850 (=> (not res!416858) (not e!597403))))

(declare-fun call!55462 () Bool)

(assert (=> b!916850 (= res!416858 (not call!55462))))

(declare-fun b!916851 () Bool)

(declare-fun e!597404 () Bool)

(declare-fun nullable!676 (Regex!2460) Bool)

(assert (=> b!916851 (= e!597404 (nullable!676 r!15766))))

(declare-fun bm!55457 () Bool)

(assert (=> bm!55457 (= call!55462 (isEmpty!5906 s!10566))))

(declare-fun b!916852 () Bool)

(declare-fun res!416854 () Bool)

(declare-fun e!597401 () Bool)

(assert (=> b!916852 (=> res!416854 e!597401)))

(assert (=> b!916852 (= res!416854 e!597403)))

(declare-fun res!416861 () Bool)

(assert (=> b!916852 (=> (not res!416861) (not e!597403))))

(declare-fun lt!337626 () Bool)

(assert (=> b!916852 (= res!416861 lt!337626)))

(declare-fun d!279872 () Bool)

(declare-fun e!597407 () Bool)

(assert (=> d!279872 e!597407))

(declare-fun c!148616 () Bool)

(assert (=> d!279872 (= c!148616 (is-EmptyExpr!2460 r!15766))))

(assert (=> d!279872 (= lt!337626 e!597404)))

(declare-fun c!148617 () Bool)

(assert (=> d!279872 (= c!148617 (isEmpty!5906 s!10566))))

(assert (=> d!279872 (validRegex!929 r!15766)))

(assert (=> d!279872 (= (matchR!998 r!15766 s!10566) lt!337626)))

(declare-fun b!916853 () Bool)

(declare-fun e!597402 () Bool)

(assert (=> b!916853 (= e!597407 e!597402)))

(declare-fun c!148615 () Bool)

(assert (=> b!916853 (= c!148615 (is-EmptyLang!2460 r!15766))))

(declare-fun b!916854 () Bool)

(declare-fun res!416860 () Bool)

(assert (=> b!916854 (=> (not res!416860) (not e!597403))))

(declare-fun tail!1201 (List!9690) List!9690)

(assert (=> b!916854 (= res!416860 (isEmpty!5906 (tail!1201 s!10566)))))

(declare-fun b!916855 () Bool)

(declare-fun res!416856 () Bool)

(assert (=> b!916855 (=> res!416856 e!597401)))

(assert (=> b!916855 (= res!416856 (not (is-ElementMatch!2460 r!15766)))))

(assert (=> b!916855 (= e!597402 e!597401)))

(declare-fun b!916856 () Bool)

(assert (=> b!916856 (= e!597407 (= lt!337626 call!55462))))

(declare-fun b!916857 () Bool)

(declare-fun e!597405 () Bool)

(assert (=> b!916857 (= e!597401 e!597405)))

(declare-fun res!416857 () Bool)

(assert (=> b!916857 (=> (not res!416857) (not e!597405))))

(assert (=> b!916857 (= res!416857 (not lt!337626))))

(declare-fun b!916858 () Bool)

(assert (=> b!916858 (= e!597405 e!597406)))

(declare-fun res!416855 () Bool)

(assert (=> b!916858 (=> res!416855 e!597406)))

(assert (=> b!916858 (= res!416855 call!55462)))

(declare-fun b!916859 () Bool)

(assert (=> b!916859 (= e!597403 (= (head!1639 s!10566) (c!148591 r!15766)))))

(declare-fun b!916860 () Bool)

(assert (=> b!916860 (= e!597402 (not lt!337626))))

(declare-fun b!916861 () Bool)

(declare-fun res!416859 () Bool)

(assert (=> b!916861 (=> res!416859 e!597406)))

(assert (=> b!916861 (= res!416859 (not (isEmpty!5906 (tail!1201 s!10566))))))

(declare-fun b!916862 () Bool)

(declare-fun derivativeStep!486 (Regex!2460 C!5490) Regex!2460)

(assert (=> b!916862 (= e!597404 (matchR!998 (derivativeStep!486 r!15766 (head!1639 s!10566)) (tail!1201 s!10566)))))

(assert (= (and d!279872 c!148617) b!916851))

(assert (= (and d!279872 (not c!148617)) b!916862))

(assert (= (and d!279872 c!148616) b!916856))

(assert (= (and d!279872 (not c!148616)) b!916853))

(assert (= (and b!916853 c!148615) b!916860))

(assert (= (and b!916853 (not c!148615)) b!916855))

(assert (= (and b!916855 (not res!416856)) b!916852))

(assert (= (and b!916852 res!416861) b!916850))

(assert (= (and b!916850 res!416858) b!916854))

(assert (= (and b!916854 res!416860) b!916859))

(assert (= (and b!916852 (not res!416854)) b!916857))

(assert (= (and b!916857 res!416857) b!916858))

(assert (= (and b!916858 (not res!416855)) b!916861))

(assert (= (and b!916861 (not res!416859)) b!916849))

(assert (= (or b!916856 b!916850 b!916858) bm!55457))

(declare-fun m!1145895 () Bool)

(assert (=> b!916859 m!1145895))

(assert (=> b!916862 m!1145895))

(assert (=> b!916862 m!1145895))

(declare-fun m!1145897 () Bool)

(assert (=> b!916862 m!1145897))

(declare-fun m!1145899 () Bool)

(assert (=> b!916862 m!1145899))

(assert (=> b!916862 m!1145897))

(assert (=> b!916862 m!1145899))

(declare-fun m!1145901 () Bool)

(assert (=> b!916862 m!1145901))

(declare-fun m!1145903 () Bool)

(assert (=> b!916851 m!1145903))

(assert (=> b!916854 m!1145899))

(assert (=> b!916854 m!1145899))

(declare-fun m!1145905 () Bool)

(assert (=> b!916854 m!1145905))

(assert (=> b!916849 m!1145895))

(assert (=> bm!55457 m!1145839))

(assert (=> b!916861 m!1145899))

(assert (=> b!916861 m!1145899))

(assert (=> b!916861 m!1145905))

(assert (=> d!279872 m!1145839))

(assert (=> d!279872 m!1145853))

(assert (=> b!916704 d!279872))

(declare-fun d!279876 () Bool)

(assert (=> d!279876 (= (matchR!998 r!15766 s!10566) (matchRSpec!261 r!15766 s!10566))))

(declare-fun lt!337629 () Unit!14539)

(declare-fun choose!5596 (Regex!2460 List!9690) Unit!14539)

(assert (=> d!279876 (= lt!337629 (choose!5596 r!15766 s!10566))))

(assert (=> d!279876 (validRegex!929 r!15766)))

(assert (=> d!279876 (= (mainMatchTheorem!261 r!15766 s!10566) lt!337629)))

(declare-fun bs!236123 () Bool)

(assert (= bs!236123 d!279876))

(assert (=> bs!236123 m!1145823))

(assert (=> bs!236123 m!1145821))

(declare-fun m!1145907 () Bool)

(assert (=> bs!236123 m!1145907))

(assert (=> bs!236123 m!1145853))

(assert (=> b!916704 d!279876))

(declare-fun d!279878 () Bool)

(assert (=> d!279878 (= (isEmpty!5906 s!10566) (is-Nil!9674 s!10566))))

(assert (=> b!916710 d!279878))

(declare-fun d!279880 () Bool)

(declare-fun isEmpty!5908 (Option!2095) Bool)

(assert (=> d!279880 (= (isDefined!1737 (findConcatSeparation!201 (regOne!5432 r!15766) (regTwo!5432 r!15766) Nil!9674 s!10566 s!10566)) (not (isEmpty!5908 (findConcatSeparation!201 (regOne!5432 r!15766) (regTwo!5432 r!15766) Nil!9674 s!10566 s!10566))))))

(declare-fun bs!236124 () Bool)

(assert (= bs!236124 d!279880))

(assert (=> bs!236124 m!1145827))

(declare-fun m!1145909 () Bool)

(assert (=> bs!236124 m!1145909))

(assert (=> b!916710 d!279880))

(declare-fun bs!236125 () Bool)

(declare-fun d!279882 () Bool)

(assert (= bs!236125 (and d!279882 b!916710)))

(declare-fun lambda!29559 () Int)

(assert (=> bs!236125 (= lambda!29559 lambda!29541)))

(assert (=> bs!236125 (not (= lambda!29559 lambda!29542))))

(declare-fun bs!236126 () Bool)

(assert (= bs!236126 (and d!279882 b!916797)))

(assert (=> bs!236126 (not (= lambda!29559 lambda!29555))))

(declare-fun bs!236127 () Bool)

(assert (= bs!236127 (and d!279882 b!916795)))

(assert (=> bs!236127 (not (= lambda!29559 lambda!29556))))

(assert (=> d!279882 true))

(assert (=> d!279882 true))

(assert (=> d!279882 true))

(assert (=> d!279882 (= (isDefined!1737 (findConcatSeparation!201 (regOne!5432 r!15766) (regTwo!5432 r!15766) Nil!9674 s!10566 s!10566)) (Exists!231 lambda!29559))))

(declare-fun lt!337632 () Unit!14539)

(declare-fun choose!5597 (Regex!2460 Regex!2460 List!9690) Unit!14539)

(assert (=> d!279882 (= lt!337632 (choose!5597 (regOne!5432 r!15766) (regTwo!5432 r!15766) s!10566))))

(assert (=> d!279882 (validRegex!929 (regOne!5432 r!15766))))

(assert (=> d!279882 (= (lemmaFindConcatSeparationEquivalentToExists!201 (regOne!5432 r!15766) (regTwo!5432 r!15766) s!10566) lt!337632)))

(declare-fun bs!236128 () Bool)

(assert (= bs!236128 d!279882))

(declare-fun m!1145917 () Bool)

(assert (=> bs!236128 m!1145917))

(assert (=> bs!236128 m!1145827))

(assert (=> bs!236128 m!1145829))

(declare-fun m!1145919 () Bool)

(assert (=> bs!236128 m!1145919))

(assert (=> bs!236128 m!1145827))

(declare-fun m!1145921 () Bool)

(assert (=> bs!236128 m!1145921))

(assert (=> b!916710 d!279882))

(declare-fun b!916922 () Bool)

(declare-fun lt!337640 () Unit!14539)

(declare-fun lt!337639 () Unit!14539)

(assert (=> b!916922 (= lt!337640 lt!337639)))

(declare-fun ++!2553 (List!9690 List!9690) List!9690)

(assert (=> b!916922 (= (++!2553 (++!2553 Nil!9674 (Cons!9674 (h!15075 s!10566) Nil!9674)) (t!100736 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!168 (List!9690 C!5490 List!9690 List!9690) Unit!14539)

(assert (=> b!916922 (= lt!337639 (lemmaMoveElementToOtherListKeepsConcatEq!168 Nil!9674 (h!15075 s!10566) (t!100736 s!10566) s!10566))))

(declare-fun e!597447 () Option!2095)

(assert (=> b!916922 (= e!597447 (findConcatSeparation!201 (regOne!5432 r!15766) (regTwo!5432 r!15766) (++!2553 Nil!9674 (Cons!9674 (h!15075 s!10566) Nil!9674)) (t!100736 s!10566) s!10566))))

(declare-fun b!916923 () Bool)

(declare-fun e!597443 () Option!2095)

(assert (=> b!916923 (= e!597443 (Some!2094 (tuple2!10907 Nil!9674 s!10566)))))

(declare-fun b!916924 () Bool)

(declare-fun e!597444 () Bool)

(assert (=> b!916924 (= e!597444 (matchR!998 (regTwo!5432 r!15766) s!10566))))

(declare-fun b!916925 () Bool)

(assert (=> b!916925 (= e!597447 None!2094)))

(declare-fun b!916926 () Bool)

(assert (=> b!916926 (= e!597443 e!597447)))

(declare-fun c!148633 () Bool)

(assert (=> b!916926 (= c!148633 (is-Nil!9674 s!10566))))

(declare-fun b!916927 () Bool)

(declare-fun res!416897 () Bool)

(declare-fun e!597445 () Bool)

(assert (=> b!916927 (=> (not res!416897) (not e!597445))))

(declare-fun lt!337641 () Option!2095)

(declare-fun get!3139 (Option!2095) tuple2!10906)

(assert (=> b!916927 (= res!416897 (matchR!998 (regTwo!5432 r!15766) (_2!6279 (get!3139 lt!337641))))))

(declare-fun b!916928 () Bool)

(assert (=> b!916928 (= e!597445 (= (++!2553 (_1!6279 (get!3139 lt!337641)) (_2!6279 (get!3139 lt!337641))) s!10566))))

(declare-fun b!916929 () Bool)

(declare-fun res!416895 () Bool)

(assert (=> b!916929 (=> (not res!416895) (not e!597445))))

(assert (=> b!916929 (= res!416895 (matchR!998 (regOne!5432 r!15766) (_1!6279 (get!3139 lt!337641))))))

(declare-fun b!916930 () Bool)

(declare-fun e!597446 () Bool)

(assert (=> b!916930 (= e!597446 (not (isDefined!1737 lt!337641)))))

(declare-fun d!279886 () Bool)

(assert (=> d!279886 e!597446))

(declare-fun res!416894 () Bool)

(assert (=> d!279886 (=> res!416894 e!597446)))

(assert (=> d!279886 (= res!416894 e!597445)))

(declare-fun res!416893 () Bool)

(assert (=> d!279886 (=> (not res!416893) (not e!597445))))

(assert (=> d!279886 (= res!416893 (isDefined!1737 lt!337641))))

(assert (=> d!279886 (= lt!337641 e!597443)))

(declare-fun c!148632 () Bool)

(assert (=> d!279886 (= c!148632 e!597444)))

(declare-fun res!416896 () Bool)

(assert (=> d!279886 (=> (not res!416896) (not e!597444))))

(assert (=> d!279886 (= res!416896 (matchR!998 (regOne!5432 r!15766) Nil!9674))))

(assert (=> d!279886 (validRegex!929 (regOne!5432 r!15766))))

(assert (=> d!279886 (= (findConcatSeparation!201 (regOne!5432 r!15766) (regTwo!5432 r!15766) Nil!9674 s!10566 s!10566) lt!337641)))

(assert (= (and d!279886 res!416896) b!916924))

(assert (= (and d!279886 c!148632) b!916923))

(assert (= (and d!279886 (not c!148632)) b!916926))

(assert (= (and b!916926 c!148633) b!916925))

(assert (= (and b!916926 (not c!148633)) b!916922))

(assert (= (and d!279886 res!416893) b!916929))

(assert (= (and b!916929 res!416895) b!916927))

(assert (= (and b!916927 res!416897) b!916928))

(assert (= (and d!279886 (not res!416894)) b!916930))

(declare-fun m!1145923 () Bool)

(assert (=> b!916922 m!1145923))

(assert (=> b!916922 m!1145923))

(declare-fun m!1145925 () Bool)

(assert (=> b!916922 m!1145925))

(declare-fun m!1145927 () Bool)

(assert (=> b!916922 m!1145927))

(assert (=> b!916922 m!1145923))

(declare-fun m!1145929 () Bool)

(assert (=> b!916922 m!1145929))

(declare-fun m!1145931 () Bool)

(assert (=> b!916924 m!1145931))

(declare-fun m!1145933 () Bool)

(assert (=> b!916930 m!1145933))

(assert (=> d!279886 m!1145933))

(declare-fun m!1145935 () Bool)

(assert (=> d!279886 m!1145935))

(assert (=> d!279886 m!1145919))

(declare-fun m!1145937 () Bool)

(assert (=> b!916928 m!1145937))

(declare-fun m!1145939 () Bool)

(assert (=> b!916928 m!1145939))

(assert (=> b!916927 m!1145937))

(declare-fun m!1145941 () Bool)

(assert (=> b!916927 m!1145941))

(assert (=> b!916929 m!1145937))

(declare-fun m!1145943 () Bool)

(assert (=> b!916929 m!1145943))

(assert (=> b!916710 d!279886))

(declare-fun d!279888 () Bool)

(declare-fun choose!5598 (Int) Bool)

(assert (=> d!279888 (= (Exists!231 lambda!29541) (choose!5598 lambda!29541))))

(declare-fun bs!236129 () Bool)

(assert (= bs!236129 d!279888))

(declare-fun m!1145945 () Bool)

(assert (=> bs!236129 m!1145945))

(assert (=> b!916710 d!279888))

(declare-fun d!279890 () Bool)

(assert (=> d!279890 (= (Exists!231 lambda!29542) (choose!5598 lambda!29542))))

(declare-fun bs!236130 () Bool)

(assert (= bs!236130 d!279890))

(declare-fun m!1145947 () Bool)

(assert (=> bs!236130 m!1145947))

(assert (=> b!916710 d!279890))

(declare-fun bs!236131 () Bool)

(declare-fun d!279892 () Bool)

(assert (= bs!236131 (and d!279892 b!916710)))

(declare-fun lambda!29568 () Int)

(assert (=> bs!236131 (not (= lambda!29568 lambda!29542))))

(declare-fun bs!236132 () Bool)

(assert (= bs!236132 (and d!279892 b!916797)))

(assert (=> bs!236132 (not (= lambda!29568 lambda!29555))))

(assert (=> bs!236131 (= lambda!29568 lambda!29541)))

(declare-fun bs!236133 () Bool)

(assert (= bs!236133 (and d!279892 b!916795)))

(assert (=> bs!236133 (not (= lambda!29568 lambda!29556))))

(declare-fun bs!236134 () Bool)

(assert (= bs!236134 (and d!279892 d!279882)))

(assert (=> bs!236134 (= lambda!29568 lambda!29559)))

(assert (=> d!279892 true))

(assert (=> d!279892 true))

(assert (=> d!279892 true))

(declare-fun lambda!29569 () Int)

(assert (=> bs!236131 (= lambda!29569 lambda!29542)))

(assert (=> bs!236132 (not (= lambda!29569 lambda!29555))))

(declare-fun bs!236135 () Bool)

(assert (= bs!236135 d!279892))

(assert (=> bs!236135 (not (= lambda!29569 lambda!29568))))

(assert (=> bs!236131 (not (= lambda!29569 lambda!29541))))

(assert (=> bs!236133 (= lambda!29569 lambda!29556)))

(assert (=> bs!236134 (not (= lambda!29569 lambda!29559))))

(assert (=> d!279892 true))

(assert (=> d!279892 true))

(assert (=> d!279892 true))

(assert (=> d!279892 (= (Exists!231 lambda!29568) (Exists!231 lambda!29569))))

(declare-fun lt!337644 () Unit!14539)

(declare-fun choose!5599 (Regex!2460 Regex!2460 List!9690) Unit!14539)

(assert (=> d!279892 (= lt!337644 (choose!5599 (regOne!5432 r!15766) (regTwo!5432 r!15766) s!10566))))

(assert (=> d!279892 (validRegex!929 (regOne!5432 r!15766))))

(assert (=> d!279892 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!143 (regOne!5432 r!15766) (regTwo!5432 r!15766) s!10566) lt!337644)))

(declare-fun m!1145949 () Bool)

(assert (=> bs!236135 m!1145949))

(declare-fun m!1145951 () Bool)

(assert (=> bs!236135 m!1145951))

(declare-fun m!1145953 () Bool)

(assert (=> bs!236135 m!1145953))

(assert (=> bs!236135 m!1145919))

(assert (=> b!916710 d!279892))

(declare-fun b!916972 () Bool)

(declare-fun e!597477 () Bool)

(declare-fun e!597480 () Bool)

(assert (=> b!916972 (= e!597477 e!597480)))

(declare-fun res!416926 () Bool)

(assert (=> b!916972 (= res!416926 (not (nullable!676 (reg!2789 r!15766))))))

(assert (=> b!916972 (=> (not res!416926) (not e!597480))))

(declare-fun b!916973 () Bool)

(declare-fun res!416927 () Bool)

(declare-fun e!597479 () Bool)

(assert (=> b!916973 (=> res!416927 e!597479)))

(assert (=> b!916973 (= res!416927 (not (is-Concat!4293 r!15766)))))

(declare-fun e!597475 () Bool)

(assert (=> b!916973 (= e!597475 e!597479)))

(declare-fun bm!55475 () Bool)

(declare-fun call!55481 () Bool)

(declare-fun c!148643 () Bool)

(assert (=> bm!55475 (= call!55481 (validRegex!929 (ite c!148643 (regOne!5433 r!15766) (regOne!5432 r!15766))))))

(declare-fun b!916974 () Bool)

(declare-fun e!597481 () Bool)

(assert (=> b!916974 (= e!597481 e!597477)))

(declare-fun c!148642 () Bool)

(assert (=> b!916974 (= c!148642 (is-Star!2460 r!15766))))

(declare-fun b!916975 () Bool)

(declare-fun res!416924 () Bool)

(declare-fun e!597478 () Bool)

(assert (=> b!916975 (=> (not res!416924) (not e!597478))))

(assert (=> b!916975 (= res!416924 call!55481)))

(assert (=> b!916975 (= e!597475 e!597478)))

(declare-fun b!916976 () Bool)

(declare-fun call!55482 () Bool)

(assert (=> b!916976 (= e!597480 call!55482)))

(declare-fun bm!55476 () Bool)

(assert (=> bm!55476 (= call!55482 (validRegex!929 (ite c!148642 (reg!2789 r!15766) (ite c!148643 (regTwo!5433 r!15766) (regTwo!5432 r!15766)))))))

(declare-fun b!916977 () Bool)

(declare-fun e!597476 () Bool)

(assert (=> b!916977 (= e!597479 e!597476)))

(declare-fun res!416925 () Bool)

(assert (=> b!916977 (=> (not res!416925) (not e!597476))))

(assert (=> b!916977 (= res!416925 call!55481)))

(declare-fun d!279894 () Bool)

(declare-fun res!416923 () Bool)

(assert (=> d!279894 (=> res!416923 e!597481)))

(assert (=> d!279894 (= res!416923 (is-ElementMatch!2460 r!15766))))

(assert (=> d!279894 (= (validRegex!929 r!15766) e!597481)))

(declare-fun b!916978 () Bool)

(declare-fun call!55480 () Bool)

(assert (=> b!916978 (= e!597476 call!55480)))

(declare-fun b!916979 () Bool)

(assert (=> b!916979 (= e!597477 e!597475)))

(assert (=> b!916979 (= c!148643 (is-Union!2460 r!15766))))

(declare-fun b!916980 () Bool)

(assert (=> b!916980 (= e!597478 call!55480)))

(declare-fun bm!55477 () Bool)

(assert (=> bm!55477 (= call!55480 call!55482)))

(assert (= (and d!279894 (not res!416923)) b!916974))

(assert (= (and b!916974 c!148642) b!916972))

(assert (= (and b!916974 (not c!148642)) b!916979))

(assert (= (and b!916972 res!416926) b!916976))

(assert (= (and b!916979 c!148643) b!916975))

(assert (= (and b!916979 (not c!148643)) b!916973))

(assert (= (and b!916975 res!416924) b!916980))

(assert (= (and b!916973 (not res!416927)) b!916977))

(assert (= (and b!916977 res!416925) b!916978))

(assert (= (or b!916980 b!916978) bm!55477))

(assert (= (or b!916975 b!916977) bm!55475))

(assert (= (or b!916976 bm!55477) bm!55476))

(declare-fun m!1145955 () Bool)

(assert (=> b!916972 m!1145955))

(declare-fun m!1145957 () Bool)

(assert (=> bm!55475 m!1145957))

(declare-fun m!1145959 () Bool)

(assert (=> bm!55476 m!1145959))

(assert (=> start!82396 d!279894))

(declare-fun b!916981 () Bool)

(declare-fun e!597487 () Bool)

(assert (=> b!916981 (= e!597487 (not (= (head!1639 s!10566) (c!148591 lt!337602))))))

(declare-fun b!916982 () Bool)

(declare-fun res!416932 () Bool)

(declare-fun e!597484 () Bool)

(assert (=> b!916982 (=> (not res!416932) (not e!597484))))

(declare-fun call!55483 () Bool)

(assert (=> b!916982 (= res!416932 (not call!55483))))

(declare-fun b!916983 () Bool)

(declare-fun e!597485 () Bool)

(assert (=> b!916983 (= e!597485 (nullable!676 lt!337602))))

(declare-fun bm!55478 () Bool)

(assert (=> bm!55478 (= call!55483 (isEmpty!5906 s!10566))))

(declare-fun b!916984 () Bool)

(declare-fun res!416928 () Bool)

(declare-fun e!597482 () Bool)

(assert (=> b!916984 (=> res!416928 e!597482)))

(assert (=> b!916984 (= res!416928 e!597484)))

(declare-fun res!416935 () Bool)

(assert (=> b!916984 (=> (not res!416935) (not e!597484))))

(declare-fun lt!337645 () Bool)

(assert (=> b!916984 (= res!416935 lt!337645)))

(declare-fun d!279896 () Bool)

(declare-fun e!597488 () Bool)

(assert (=> d!279896 e!597488))

(declare-fun c!148645 () Bool)

(assert (=> d!279896 (= c!148645 (is-EmptyExpr!2460 lt!337602))))

(assert (=> d!279896 (= lt!337645 e!597485)))

(declare-fun c!148646 () Bool)

(assert (=> d!279896 (= c!148646 (isEmpty!5906 s!10566))))

(assert (=> d!279896 (validRegex!929 lt!337602)))

(assert (=> d!279896 (= (matchR!998 lt!337602 s!10566) lt!337645)))

(declare-fun b!916985 () Bool)

(declare-fun e!597483 () Bool)

(assert (=> b!916985 (= e!597488 e!597483)))

(declare-fun c!148644 () Bool)

(assert (=> b!916985 (= c!148644 (is-EmptyLang!2460 lt!337602))))

(declare-fun b!916986 () Bool)

(declare-fun res!416934 () Bool)

(assert (=> b!916986 (=> (not res!416934) (not e!597484))))

(assert (=> b!916986 (= res!416934 (isEmpty!5906 (tail!1201 s!10566)))))

(declare-fun b!916987 () Bool)

(declare-fun res!416930 () Bool)

(assert (=> b!916987 (=> res!416930 e!597482)))

(assert (=> b!916987 (= res!416930 (not (is-ElementMatch!2460 lt!337602)))))

(assert (=> b!916987 (= e!597483 e!597482)))

(declare-fun b!916988 () Bool)

(assert (=> b!916988 (= e!597488 (= lt!337645 call!55483))))

(declare-fun b!916989 () Bool)

(declare-fun e!597486 () Bool)

(assert (=> b!916989 (= e!597482 e!597486)))

(declare-fun res!416931 () Bool)

(assert (=> b!916989 (=> (not res!416931) (not e!597486))))

(assert (=> b!916989 (= res!416931 (not lt!337645))))

(declare-fun b!916990 () Bool)

(assert (=> b!916990 (= e!597486 e!597487)))

(declare-fun res!416929 () Bool)

(assert (=> b!916990 (=> res!416929 e!597487)))

(assert (=> b!916990 (= res!416929 call!55483)))

(declare-fun b!916991 () Bool)

(assert (=> b!916991 (= e!597484 (= (head!1639 s!10566) (c!148591 lt!337602)))))

(declare-fun b!916992 () Bool)

(assert (=> b!916992 (= e!597483 (not lt!337645))))

(declare-fun b!916993 () Bool)

(declare-fun res!416933 () Bool)

(assert (=> b!916993 (=> res!416933 e!597487)))

(assert (=> b!916993 (= res!416933 (not (isEmpty!5906 (tail!1201 s!10566))))))

(declare-fun b!916994 () Bool)

(assert (=> b!916994 (= e!597485 (matchR!998 (derivativeStep!486 lt!337602 (head!1639 s!10566)) (tail!1201 s!10566)))))

(assert (= (and d!279896 c!148646) b!916983))

(assert (= (and d!279896 (not c!148646)) b!916994))

(assert (= (and d!279896 c!148645) b!916988))

(assert (= (and d!279896 (not c!148645)) b!916985))

(assert (= (and b!916985 c!148644) b!916992))

(assert (= (and b!916985 (not c!148644)) b!916987))

(assert (= (and b!916987 (not res!416930)) b!916984))

(assert (= (and b!916984 res!416935) b!916982))

(assert (= (and b!916982 res!416932) b!916986))

(assert (= (and b!916986 res!416934) b!916991))

(assert (= (and b!916984 (not res!416928)) b!916989))

(assert (= (and b!916989 res!416931) b!916990))

(assert (= (and b!916990 (not res!416929)) b!916993))

(assert (= (and b!916993 (not res!416933)) b!916981))

(assert (= (or b!916988 b!916982 b!916990) bm!55478))

(assert (=> b!916991 m!1145895))

(assert (=> b!916994 m!1145895))

(assert (=> b!916994 m!1145895))

(declare-fun m!1145961 () Bool)

(assert (=> b!916994 m!1145961))

(assert (=> b!916994 m!1145899))

(assert (=> b!916994 m!1145961))

(assert (=> b!916994 m!1145899))

(declare-fun m!1145963 () Bool)

(assert (=> b!916994 m!1145963))

(declare-fun m!1145965 () Bool)

(assert (=> b!916983 m!1145965))

(assert (=> b!916986 m!1145899))

(assert (=> b!916986 m!1145899))

(assert (=> b!916986 m!1145905))

(assert (=> b!916981 m!1145895))

(assert (=> bm!55478 m!1145839))

(assert (=> b!916993 m!1145899))

(assert (=> b!916993 m!1145899))

(assert (=> b!916993 m!1145905))

(assert (=> d!279896 m!1145839))

(declare-fun m!1145967 () Bool)

(assert (=> d!279896 m!1145967))

(assert (=> b!916711 d!279896))

(declare-fun bm!55489 () Bool)

(declare-fun call!55494 () Regex!2460)

(declare-fun call!55498 () Regex!2460)

(assert (=> bm!55489 (= call!55494 call!55498)))

(declare-fun b!917017 () Bool)

(declare-fun c!148658 () Bool)

(assert (=> b!917017 (= c!148658 (is-Star!2460 (regOne!5432 r!15766)))))

(declare-fun e!597503 () Regex!2460)

(declare-fun e!597502 () Regex!2460)

(assert (=> b!917017 (= e!597503 e!597502)))

(declare-fun b!917019 () Bool)

(declare-fun c!148661 () Bool)

(assert (=> b!917019 (= c!148661 (is-Concat!4293 (regOne!5432 r!15766)))))

(declare-fun e!597504 () Regex!2460)

(declare-fun e!597505 () Regex!2460)

(assert (=> b!917019 (= e!597504 e!597505)))

(declare-fun bm!55490 () Bool)

(declare-fun call!55496 () Regex!2460)

(assert (=> bm!55490 (= call!55496 (removeUselessConcat!137 (ite c!148661 (regTwo!5432 (regOne!5432 r!15766)) (regOne!5433 (regOne!5432 r!15766)))))))

(declare-fun b!917020 () Bool)

(assert (=> b!917020 (= e!597502 (Star!2460 call!55494))))

(declare-fun b!917021 () Bool)

(assert (=> b!917021 (= e!597503 (Union!2460 call!55496 call!55494))))

(declare-fun c!148660 () Bool)

(declare-fun c!148657 () Bool)

(declare-fun call!55495 () Regex!2460)

(declare-fun c!148659 () Bool)

(declare-fun bm!55491 () Bool)

(assert (=> bm!55491 (= call!55495 (removeUselessConcat!137 (ite c!148657 (regTwo!5432 (regOne!5432 r!15766)) (ite (or c!148660 c!148661) (regOne!5432 (regOne!5432 r!15766)) (ite c!148659 (regTwo!5433 (regOne!5432 r!15766)) (reg!2789 (regOne!5432 r!15766)))))))))

(declare-fun bm!55492 () Bool)

(declare-fun call!55497 () Regex!2460)

(assert (=> bm!55492 (= call!55497 call!55495)))

(declare-fun b!917018 () Bool)

(declare-fun e!597506 () Bool)

(declare-fun lt!337648 () Regex!2460)

(assert (=> b!917018 (= e!597506 (= (nullable!676 lt!337648) (nullable!676 (regOne!5432 r!15766))))))

(declare-fun d!279898 () Bool)

(assert (=> d!279898 e!597506))

(declare-fun res!416938 () Bool)

(assert (=> d!279898 (=> (not res!416938) (not e!597506))))

(assert (=> d!279898 (= res!416938 (validRegex!929 lt!337648))))

(declare-fun e!597501 () Regex!2460)

(assert (=> d!279898 (= lt!337648 e!597501)))

(assert (=> d!279898 (= c!148657 (and (is-Concat!4293 (regOne!5432 r!15766)) (is-EmptyExpr!2460 (regOne!5432 (regOne!5432 r!15766)))))))

(assert (=> d!279898 (validRegex!929 (regOne!5432 r!15766))))

(assert (=> d!279898 (= (removeUselessConcat!137 (regOne!5432 r!15766)) lt!337648)))

(declare-fun b!917022 () Bool)

(assert (=> b!917022 (= e!597501 call!55495)))

(declare-fun b!917023 () Bool)

(assert (=> b!917023 (= e!597504 call!55497)))

(declare-fun b!917024 () Bool)

(assert (=> b!917024 (= e!597502 (regOne!5432 r!15766))))

(declare-fun b!917025 () Bool)

(assert (=> b!917025 (= e!597501 e!597504)))

(assert (=> b!917025 (= c!148660 (and (is-Concat!4293 (regOne!5432 r!15766)) (is-EmptyExpr!2460 (regTwo!5432 (regOne!5432 r!15766)))))))

(declare-fun bm!55493 () Bool)

(assert (=> bm!55493 (= call!55498 call!55497)))

(declare-fun b!917026 () Bool)

(assert (=> b!917026 (= e!597505 (Concat!4293 call!55498 call!55496))))

(declare-fun b!917027 () Bool)

(assert (=> b!917027 (= e!597505 e!597503)))

(assert (=> b!917027 (= c!148659 (is-Union!2460 (regOne!5432 r!15766)))))

(assert (= (and d!279898 c!148657) b!917022))

(assert (= (and d!279898 (not c!148657)) b!917025))

(assert (= (and b!917025 c!148660) b!917023))

(assert (= (and b!917025 (not c!148660)) b!917019))

(assert (= (and b!917019 c!148661) b!917026))

(assert (= (and b!917019 (not c!148661)) b!917027))

(assert (= (and b!917027 c!148659) b!917021))

(assert (= (and b!917027 (not c!148659)) b!917017))

(assert (= (and b!917017 c!148658) b!917020))

(assert (= (and b!917017 (not c!148658)) b!917024))

(assert (= (or b!917021 b!917020) bm!55489))

(assert (= (or b!917026 b!917021) bm!55490))

(assert (= (or b!917026 bm!55489) bm!55493))

(assert (= (or b!917023 bm!55493) bm!55492))

(assert (= (or b!917022 bm!55492) bm!55491))

(assert (= (and d!279898 res!416938) b!917018))

(declare-fun m!1145975 () Bool)

(assert (=> bm!55490 m!1145975))

(declare-fun m!1145977 () Bool)

(assert (=> bm!55491 m!1145977))

(declare-fun m!1145979 () Bool)

(assert (=> b!917018 m!1145979))

(declare-fun m!1145981 () Bool)

(assert (=> b!917018 m!1145981))

(declare-fun m!1145983 () Bool)

(assert (=> d!279898 m!1145983))

(assert (=> d!279898 m!1145919))

(assert (=> b!916711 d!279898))

(declare-fun bm!55494 () Bool)

(declare-fun call!55499 () Regex!2460)

(declare-fun call!55503 () Regex!2460)

(assert (=> bm!55494 (= call!55499 call!55503)))

(declare-fun b!917028 () Bool)

(declare-fun c!148663 () Bool)

(assert (=> b!917028 (= c!148663 (is-Star!2460 (regTwo!5432 r!15766)))))

(declare-fun e!597509 () Regex!2460)

(declare-fun e!597508 () Regex!2460)

(assert (=> b!917028 (= e!597509 e!597508)))

(declare-fun b!917030 () Bool)

(declare-fun c!148666 () Bool)

(assert (=> b!917030 (= c!148666 (is-Concat!4293 (regTwo!5432 r!15766)))))

(declare-fun e!597510 () Regex!2460)

(declare-fun e!597511 () Regex!2460)

(assert (=> b!917030 (= e!597510 e!597511)))

(declare-fun bm!55495 () Bool)

(declare-fun call!55501 () Regex!2460)

(assert (=> bm!55495 (= call!55501 (removeUselessConcat!137 (ite c!148666 (regTwo!5432 (regTwo!5432 r!15766)) (regOne!5433 (regTwo!5432 r!15766)))))))

(declare-fun b!917031 () Bool)

(assert (=> b!917031 (= e!597508 (Star!2460 call!55499))))

(declare-fun b!917032 () Bool)

(assert (=> b!917032 (= e!597509 (Union!2460 call!55501 call!55499))))

(declare-fun call!55500 () Regex!2460)

(declare-fun c!148662 () Bool)

(declare-fun c!148665 () Bool)

(declare-fun bm!55496 () Bool)

(declare-fun c!148664 () Bool)

(assert (=> bm!55496 (= call!55500 (removeUselessConcat!137 (ite c!148662 (regTwo!5432 (regTwo!5432 r!15766)) (ite (or c!148665 c!148666) (regOne!5432 (regTwo!5432 r!15766)) (ite c!148664 (regTwo!5433 (regTwo!5432 r!15766)) (reg!2789 (regTwo!5432 r!15766)))))))))

(declare-fun bm!55497 () Bool)

(declare-fun call!55502 () Regex!2460)

(assert (=> bm!55497 (= call!55502 call!55500)))

(declare-fun b!917029 () Bool)

(declare-fun e!597512 () Bool)

(declare-fun lt!337649 () Regex!2460)

(assert (=> b!917029 (= e!597512 (= (nullable!676 lt!337649) (nullable!676 (regTwo!5432 r!15766))))))

(declare-fun d!279902 () Bool)

(assert (=> d!279902 e!597512))

(declare-fun res!416939 () Bool)

(assert (=> d!279902 (=> (not res!416939) (not e!597512))))

(assert (=> d!279902 (= res!416939 (validRegex!929 lt!337649))))

(declare-fun e!597507 () Regex!2460)

(assert (=> d!279902 (= lt!337649 e!597507)))

(assert (=> d!279902 (= c!148662 (and (is-Concat!4293 (regTwo!5432 r!15766)) (is-EmptyExpr!2460 (regOne!5432 (regTwo!5432 r!15766)))))))

(assert (=> d!279902 (validRegex!929 (regTwo!5432 r!15766))))

(assert (=> d!279902 (= (removeUselessConcat!137 (regTwo!5432 r!15766)) lt!337649)))

(declare-fun b!917033 () Bool)

(assert (=> b!917033 (= e!597507 call!55500)))

(declare-fun b!917034 () Bool)

(assert (=> b!917034 (= e!597510 call!55502)))

(declare-fun b!917035 () Bool)

(assert (=> b!917035 (= e!597508 (regTwo!5432 r!15766))))

(declare-fun b!917036 () Bool)

(assert (=> b!917036 (= e!597507 e!597510)))

(assert (=> b!917036 (= c!148665 (and (is-Concat!4293 (regTwo!5432 r!15766)) (is-EmptyExpr!2460 (regTwo!5432 (regTwo!5432 r!15766)))))))

(declare-fun bm!55498 () Bool)

(assert (=> bm!55498 (= call!55503 call!55502)))

(declare-fun b!917037 () Bool)

(assert (=> b!917037 (= e!597511 (Concat!4293 call!55503 call!55501))))

(declare-fun b!917038 () Bool)

(assert (=> b!917038 (= e!597511 e!597509)))

(assert (=> b!917038 (= c!148664 (is-Union!2460 (regTwo!5432 r!15766)))))

(assert (= (and d!279902 c!148662) b!917033))

(assert (= (and d!279902 (not c!148662)) b!917036))

(assert (= (and b!917036 c!148665) b!917034))

(assert (= (and b!917036 (not c!148665)) b!917030))

(assert (= (and b!917030 c!148666) b!917037))

(assert (= (and b!917030 (not c!148666)) b!917038))

(assert (= (and b!917038 c!148664) b!917032))

(assert (= (and b!917038 (not c!148664)) b!917028))

(assert (= (and b!917028 c!148663) b!917031))

(assert (= (and b!917028 (not c!148663)) b!917035))

(assert (= (or b!917032 b!917031) bm!55494))

(assert (= (or b!917037 b!917032) bm!55495))

(assert (= (or b!917037 bm!55494) bm!55498))

(assert (= (or b!917034 bm!55498) bm!55497))

(assert (= (or b!917033 bm!55497) bm!55496))

(assert (= (and d!279902 res!416939) b!917029))

(declare-fun m!1145985 () Bool)

(assert (=> bm!55495 m!1145985))

(declare-fun m!1145987 () Bool)

(assert (=> bm!55496 m!1145987))

(declare-fun m!1145989 () Bool)

(assert (=> b!917029 m!1145989))

(declare-fun m!1145991 () Bool)

(assert (=> b!917029 m!1145991))

(declare-fun m!1145993 () Bool)

(assert (=> d!279902 m!1145993))

(assert (=> d!279902 m!1145841))

(assert (=> b!916711 d!279902))

(declare-fun b!917039 () Bool)

(declare-fun e!597515 () Bool)

(declare-fun e!597518 () Bool)

(assert (=> b!917039 (= e!597515 e!597518)))

(declare-fun res!416943 () Bool)

(assert (=> b!917039 (= res!416943 (not (nullable!676 (reg!2789 (regTwo!5432 r!15766)))))))

(assert (=> b!917039 (=> (not res!416943) (not e!597518))))

(declare-fun b!917040 () Bool)

(declare-fun res!416944 () Bool)

(declare-fun e!597517 () Bool)

(assert (=> b!917040 (=> res!416944 e!597517)))

(assert (=> b!917040 (= res!416944 (not (is-Concat!4293 (regTwo!5432 r!15766))))))

(declare-fun e!597513 () Bool)

(assert (=> b!917040 (= e!597513 e!597517)))

(declare-fun bm!55499 () Bool)

(declare-fun call!55505 () Bool)

(declare-fun c!148668 () Bool)

(assert (=> bm!55499 (= call!55505 (validRegex!929 (ite c!148668 (regOne!5433 (regTwo!5432 r!15766)) (regOne!5432 (regTwo!5432 r!15766)))))))

(declare-fun b!917041 () Bool)

(declare-fun e!597519 () Bool)

(assert (=> b!917041 (= e!597519 e!597515)))

(declare-fun c!148667 () Bool)

(assert (=> b!917041 (= c!148667 (is-Star!2460 (regTwo!5432 r!15766)))))

(declare-fun b!917042 () Bool)

(declare-fun res!416941 () Bool)

(declare-fun e!597516 () Bool)

(assert (=> b!917042 (=> (not res!416941) (not e!597516))))

(assert (=> b!917042 (= res!416941 call!55505)))

(assert (=> b!917042 (= e!597513 e!597516)))

(declare-fun b!917043 () Bool)

(declare-fun call!55506 () Bool)

(assert (=> b!917043 (= e!597518 call!55506)))

(declare-fun bm!55500 () Bool)

(assert (=> bm!55500 (= call!55506 (validRegex!929 (ite c!148667 (reg!2789 (regTwo!5432 r!15766)) (ite c!148668 (regTwo!5433 (regTwo!5432 r!15766)) (regTwo!5432 (regTwo!5432 r!15766))))))))

(declare-fun b!917044 () Bool)

(declare-fun e!597514 () Bool)

(assert (=> b!917044 (= e!597517 e!597514)))

(declare-fun res!416942 () Bool)

(assert (=> b!917044 (=> (not res!416942) (not e!597514))))

(assert (=> b!917044 (= res!416942 call!55505)))

(declare-fun d!279904 () Bool)

(declare-fun res!416940 () Bool)

(assert (=> d!279904 (=> res!416940 e!597519)))

(assert (=> d!279904 (= res!416940 (is-ElementMatch!2460 (regTwo!5432 r!15766)))))

(assert (=> d!279904 (= (validRegex!929 (regTwo!5432 r!15766)) e!597519)))

(declare-fun b!917045 () Bool)

(declare-fun call!55504 () Bool)

(assert (=> b!917045 (= e!597514 call!55504)))

(declare-fun b!917046 () Bool)

(assert (=> b!917046 (= e!597515 e!597513)))

(assert (=> b!917046 (= c!148668 (is-Union!2460 (regTwo!5432 r!15766)))))

(declare-fun b!917047 () Bool)

(assert (=> b!917047 (= e!597516 call!55504)))

(declare-fun bm!55501 () Bool)

(assert (=> bm!55501 (= call!55504 call!55506)))

(assert (= (and d!279904 (not res!416940)) b!917041))

(assert (= (and b!917041 c!148667) b!917039))

(assert (= (and b!917041 (not c!148667)) b!917046))

(assert (= (and b!917039 res!416943) b!917043))

(assert (= (and b!917046 c!148668) b!917042))

(assert (= (and b!917046 (not c!148668)) b!917040))

(assert (= (and b!917042 res!416941) b!917047))

(assert (= (and b!917040 (not res!416944)) b!917044))

(assert (= (and b!917044 res!416942) b!917045))

(assert (= (or b!917047 b!917045) bm!55501))

(assert (= (or b!917042 b!917044) bm!55499))

(assert (= (or b!917043 bm!55501) bm!55500))

(declare-fun m!1145995 () Bool)

(assert (=> b!917039 m!1145995))

(declare-fun m!1145997 () Bool)

(assert (=> bm!55499 m!1145997))

(declare-fun m!1145999 () Bool)

(assert (=> bm!55500 m!1145999))

(assert (=> b!916708 d!279904))

(declare-fun bs!236140 () Bool)

(declare-fun b!917053 () Bool)

(assert (= bs!236140 (and b!917053 b!916710)))

(declare-fun lambda!29572 () Int)

(assert (=> bs!236140 (not (= lambda!29572 lambda!29542))))

(declare-fun bs!236141 () Bool)

(assert (= bs!236141 (and b!917053 b!916797)))

(assert (=> bs!236141 (= (and (= (reg!2789 lt!337602) (reg!2789 r!15766)) (= lt!337602 r!15766)) (= lambda!29572 lambda!29555))))

(declare-fun bs!236142 () Bool)

(assert (= bs!236142 (and b!917053 d!279892)))

(assert (=> bs!236142 (not (= lambda!29572 lambda!29568))))

(assert (=> bs!236140 (not (= lambda!29572 lambda!29541))))

(declare-fun bs!236143 () Bool)

(assert (= bs!236143 (and b!917053 b!916795)))

(assert (=> bs!236143 (not (= lambda!29572 lambda!29556))))

(declare-fun bs!236144 () Bool)

(assert (= bs!236144 (and b!917053 d!279882)))

(assert (=> bs!236144 (not (= lambda!29572 lambda!29559))))

(assert (=> bs!236142 (not (= lambda!29572 lambda!29569))))

(assert (=> b!917053 true))

(assert (=> b!917053 true))

(declare-fun bs!236145 () Bool)

(declare-fun b!917051 () Bool)

(assert (= bs!236145 (and b!917051 b!916710)))

(declare-fun lambda!29573 () Int)

(assert (=> bs!236145 (= (and (= (regOne!5432 lt!337602) (regOne!5432 r!15766)) (= (regTwo!5432 lt!337602) (regTwo!5432 r!15766))) (= lambda!29573 lambda!29542))))

(declare-fun bs!236146 () Bool)

(assert (= bs!236146 (and b!917051 b!917053)))

(assert (=> bs!236146 (not (= lambda!29573 lambda!29572))))

(declare-fun bs!236147 () Bool)

(assert (= bs!236147 (and b!917051 b!916797)))

(assert (=> bs!236147 (not (= lambda!29573 lambda!29555))))

(declare-fun bs!236148 () Bool)

(assert (= bs!236148 (and b!917051 d!279892)))

(assert (=> bs!236148 (not (= lambda!29573 lambda!29568))))

(assert (=> bs!236145 (not (= lambda!29573 lambda!29541))))

(declare-fun bs!236149 () Bool)

(assert (= bs!236149 (and b!917051 b!916795)))

(assert (=> bs!236149 (= (and (= (regOne!5432 lt!337602) (regOne!5432 r!15766)) (= (regTwo!5432 lt!337602) (regTwo!5432 r!15766))) (= lambda!29573 lambda!29556))))

(declare-fun bs!236150 () Bool)

(assert (= bs!236150 (and b!917051 d!279882)))

(assert (=> bs!236150 (not (= lambda!29573 lambda!29559))))

(assert (=> bs!236148 (= (and (= (regOne!5432 lt!337602) (regOne!5432 r!15766)) (= (regTwo!5432 lt!337602) (regTwo!5432 r!15766))) (= lambda!29573 lambda!29569))))

(assert (=> b!917051 true))

(assert (=> b!917051 true))

(declare-fun b!917048 () Bool)

(declare-fun e!597521 () Bool)

(declare-fun e!597520 () Bool)

(assert (=> b!917048 (= e!597521 e!597520)))

(declare-fun res!416945 () Bool)

(assert (=> b!917048 (= res!416945 (matchRSpec!261 (regOne!5433 lt!337602) s!10566))))

(assert (=> b!917048 (=> res!416945 e!597520)))

(declare-fun b!917049 () Bool)

(declare-fun res!416947 () Bool)

(declare-fun e!597522 () Bool)

(assert (=> b!917049 (=> res!416947 e!597522)))

(declare-fun call!55507 () Bool)

(assert (=> b!917049 (= res!416947 call!55507)))

(declare-fun e!597524 () Bool)

(assert (=> b!917049 (= e!597524 e!597522)))

(declare-fun b!917050 () Bool)

(declare-fun c!148672 () Bool)

(assert (=> b!917050 (= c!148672 (is-Union!2460 lt!337602))))

(declare-fun e!597526 () Bool)

(assert (=> b!917050 (= e!597526 e!597521)))

(declare-fun call!55508 () Bool)

(assert (=> b!917051 (= e!597524 call!55508)))

(declare-fun b!917052 () Bool)

(declare-fun c!148670 () Bool)

(assert (=> b!917052 (= c!148670 (is-ElementMatch!2460 lt!337602))))

(declare-fun e!597525 () Bool)

(assert (=> b!917052 (= e!597525 e!597526)))

(assert (=> b!917053 (= e!597522 call!55508)))

(declare-fun b!917054 () Bool)

(declare-fun e!597523 () Bool)

(assert (=> b!917054 (= e!597523 call!55507)))

(declare-fun b!917055 () Bool)

(assert (=> b!917055 (= e!597520 (matchRSpec!261 (regTwo!5433 lt!337602) s!10566))))

(declare-fun d!279906 () Bool)

(declare-fun c!148671 () Bool)

(assert (=> d!279906 (= c!148671 (is-EmptyExpr!2460 lt!337602))))

(assert (=> d!279906 (= (matchRSpec!261 lt!337602 s!10566) e!597523)))

(declare-fun bm!55502 () Bool)

(assert (=> bm!55502 (= call!55507 (isEmpty!5906 s!10566))))

(declare-fun b!917056 () Bool)

(assert (=> b!917056 (= e!597526 (= s!10566 (Cons!9674 (c!148591 lt!337602) Nil!9674)))))

(declare-fun b!917057 () Bool)

(assert (=> b!917057 (= e!597521 e!597524)))

(declare-fun c!148669 () Bool)

(assert (=> b!917057 (= c!148669 (is-Star!2460 lt!337602))))

(declare-fun bm!55503 () Bool)

(assert (=> bm!55503 (= call!55508 (Exists!231 (ite c!148669 lambda!29572 lambda!29573)))))

(declare-fun b!917058 () Bool)

(assert (=> b!917058 (= e!597523 e!597525)))

(declare-fun res!416946 () Bool)

(assert (=> b!917058 (= res!416946 (not (is-EmptyLang!2460 lt!337602)))))

(assert (=> b!917058 (=> (not res!416946) (not e!597525))))

(assert (= (and d!279906 c!148671) b!917054))

(assert (= (and d!279906 (not c!148671)) b!917058))

(assert (= (and b!917058 res!416946) b!917052))

(assert (= (and b!917052 c!148670) b!917056))

(assert (= (and b!917052 (not c!148670)) b!917050))

(assert (= (and b!917050 c!148672) b!917048))

(assert (= (and b!917050 (not c!148672)) b!917057))

(assert (= (and b!917048 (not res!416945)) b!917055))

(assert (= (and b!917057 c!148669) b!917049))

(assert (= (and b!917057 (not c!148669)) b!917051))

(assert (= (and b!917049 (not res!416947)) b!917053))

(assert (= (or b!917053 b!917051) bm!55503))

(assert (= (or b!917054 b!917049) bm!55502))

(declare-fun m!1146005 () Bool)

(assert (=> b!917048 m!1146005))

(declare-fun m!1146007 () Bool)

(assert (=> b!917055 m!1146007))

(assert (=> bm!55502 m!1145839))

(declare-fun m!1146009 () Bool)

(assert (=> bm!55503 m!1146009))

(assert (=> b!916708 d!279906))

(declare-fun d!279910 () Bool)

(assert (=> d!279910 (= (matchR!998 lt!337602 s!10566) (matchRSpec!261 lt!337602 s!10566))))

(declare-fun lt!337653 () Unit!14539)

(assert (=> d!279910 (= lt!337653 (choose!5596 lt!337602 s!10566))))

(assert (=> d!279910 (validRegex!929 lt!337602)))

(assert (=> d!279910 (= (mainMatchTheorem!261 lt!337602 s!10566) lt!337653)))

(declare-fun bs!236151 () Bool)

(assert (= bs!236151 d!279910))

(assert (=> bs!236151 m!1145847))

(assert (=> bs!236151 m!1145843))

(declare-fun m!1146011 () Bool)

(assert (=> bs!236151 m!1146011))

(assert (=> bs!236151 m!1145967))

(assert (=> b!916708 d!279910))

(declare-fun b!917070 () Bool)

(declare-fun e!597529 () Bool)

(declare-fun tp!286170 () Bool)

(declare-fun tp!286168 () Bool)

(assert (=> b!917070 (= e!597529 (and tp!286170 tp!286168))))

(declare-fun b!917069 () Bool)

(assert (=> b!917069 (= e!597529 tp_is_empty!4563)))

(assert (=> b!916709 (= tp!286134 e!597529)))

(declare-fun b!917071 () Bool)

(declare-fun tp!286171 () Bool)

(assert (=> b!917071 (= e!597529 tp!286171)))

(declare-fun b!917072 () Bool)

(declare-fun tp!286169 () Bool)

(declare-fun tp!286167 () Bool)

(assert (=> b!917072 (= e!597529 (and tp!286169 tp!286167))))

(assert (= (and b!916709 (is-ElementMatch!2460 (reg!2789 r!15766))) b!917069))

(assert (= (and b!916709 (is-Concat!4293 (reg!2789 r!15766))) b!917070))

(assert (= (and b!916709 (is-Star!2460 (reg!2789 r!15766))) b!917071))

(assert (= (and b!916709 (is-Union!2460 (reg!2789 r!15766))) b!917072))

(declare-fun b!917074 () Bool)

(declare-fun e!597530 () Bool)

(declare-fun tp!286175 () Bool)

(declare-fun tp!286173 () Bool)

(assert (=> b!917074 (= e!597530 (and tp!286175 tp!286173))))

(declare-fun b!917073 () Bool)

(assert (=> b!917073 (= e!597530 tp_is_empty!4563)))

(assert (=> b!916705 (= tp!286138 e!597530)))

(declare-fun b!917075 () Bool)

(declare-fun tp!286176 () Bool)

(assert (=> b!917075 (= e!597530 tp!286176)))

(declare-fun b!917076 () Bool)

(declare-fun tp!286174 () Bool)

(declare-fun tp!286172 () Bool)

(assert (=> b!917076 (= e!597530 (and tp!286174 tp!286172))))

(assert (= (and b!916705 (is-ElementMatch!2460 (regOne!5433 r!15766))) b!917073))

(assert (= (and b!916705 (is-Concat!4293 (regOne!5433 r!15766))) b!917074))

(assert (= (and b!916705 (is-Star!2460 (regOne!5433 r!15766))) b!917075))

(assert (= (and b!916705 (is-Union!2460 (regOne!5433 r!15766))) b!917076))

(declare-fun b!917078 () Bool)

(declare-fun e!597531 () Bool)

(declare-fun tp!286180 () Bool)

(declare-fun tp!286178 () Bool)

(assert (=> b!917078 (= e!597531 (and tp!286180 tp!286178))))

(declare-fun b!917077 () Bool)

(assert (=> b!917077 (= e!597531 tp_is_empty!4563)))

(assert (=> b!916705 (= tp!286135 e!597531)))

(declare-fun b!917079 () Bool)

(declare-fun tp!286181 () Bool)

(assert (=> b!917079 (= e!597531 tp!286181)))

(declare-fun b!917080 () Bool)

(declare-fun tp!286179 () Bool)

(declare-fun tp!286177 () Bool)

(assert (=> b!917080 (= e!597531 (and tp!286179 tp!286177))))

(assert (= (and b!916705 (is-ElementMatch!2460 (regTwo!5433 r!15766))) b!917077))

(assert (= (and b!916705 (is-Concat!4293 (regTwo!5433 r!15766))) b!917078))

(assert (= (and b!916705 (is-Star!2460 (regTwo!5433 r!15766))) b!917079))

(assert (= (and b!916705 (is-Union!2460 (regTwo!5433 r!15766))) b!917080))

(declare-fun b!917085 () Bool)

(declare-fun e!597534 () Bool)

(declare-fun tp!286184 () Bool)

(assert (=> b!917085 (= e!597534 (and tp_is_empty!4563 tp!286184))))

(assert (=> b!916712 (= tp!286137 e!597534)))

(assert (= (and b!916712 (is-Cons!9674 (t!100736 s!10566))) b!917085))

(declare-fun b!917087 () Bool)

(declare-fun e!597535 () Bool)

(declare-fun tp!286188 () Bool)

(declare-fun tp!286186 () Bool)

(assert (=> b!917087 (= e!597535 (and tp!286188 tp!286186))))

(declare-fun b!917086 () Bool)

(assert (=> b!917086 (= e!597535 tp_is_empty!4563)))

(assert (=> b!916707 (= tp!286136 e!597535)))

(declare-fun b!917088 () Bool)

(declare-fun tp!286189 () Bool)

(assert (=> b!917088 (= e!597535 tp!286189)))

(declare-fun b!917089 () Bool)

(declare-fun tp!286187 () Bool)

(declare-fun tp!286185 () Bool)

(assert (=> b!917089 (= e!597535 (and tp!286187 tp!286185))))

(assert (= (and b!916707 (is-ElementMatch!2460 (regOne!5432 r!15766))) b!917086))

(assert (= (and b!916707 (is-Concat!4293 (regOne!5432 r!15766))) b!917087))

(assert (= (and b!916707 (is-Star!2460 (regOne!5432 r!15766))) b!917088))

(assert (= (and b!916707 (is-Union!2460 (regOne!5432 r!15766))) b!917089))

(declare-fun b!917091 () Bool)

(declare-fun e!597536 () Bool)

(declare-fun tp!286193 () Bool)

(declare-fun tp!286191 () Bool)

(assert (=> b!917091 (= e!597536 (and tp!286193 tp!286191))))

(declare-fun b!917090 () Bool)

(assert (=> b!917090 (= e!597536 tp_is_empty!4563)))

(assert (=> b!916707 (= tp!286133 e!597536)))

(declare-fun b!917092 () Bool)

(declare-fun tp!286194 () Bool)

(assert (=> b!917092 (= e!597536 tp!286194)))

(declare-fun b!917093 () Bool)

(declare-fun tp!286192 () Bool)

(declare-fun tp!286190 () Bool)

(assert (=> b!917093 (= e!597536 (and tp!286192 tp!286190))))

(assert (= (and b!916707 (is-ElementMatch!2460 (regTwo!5432 r!15766))) b!917090))

(assert (= (and b!916707 (is-Concat!4293 (regTwo!5432 r!15766))) b!917091))

(assert (= (and b!916707 (is-Star!2460 (regTwo!5432 r!15766))) b!917092))

(assert (= (and b!916707 (is-Union!2460 (regTwo!5432 r!15766))) b!917093))

(push 1)

(assert (not b!916994))

(assert (not d!279898))

(assert (not b!916930))

(assert (not b!917078))

(assert (not bm!55500))

(assert (not b!917018))

(assert (not bm!55496))

(assert (not bm!55457))

(assert (not d!279882))

(assert (not b!917071))

(assert (not b!917079))

(assert (not b!916854))

(assert (not b!917085))

(assert (not b!916972))

(assert (not bm!55478))

(assert (not b!916928))

(assert (not b!916986))

(assert (not b!917039))

(assert (not b!916924))

(assert (not bm!55502))

(assert (not d!279910))

(assert (not b!916929))

(assert (not b!916849))

(assert (not b!916983))

(assert (not bm!55449))

(assert (not b!916927))

(assert (not b!917080))

(assert (not b!917055))

(assert (not d!279902))

(assert (not d!279890))

(assert (not bm!55476))

(assert (not d!279872))

(assert (not b!916993))

(assert (not d!279880))

(assert tp_is_empty!4563)

(assert (not d!279888))

(assert (not b!916851))

(assert (not bm!55499))

(assert (not bm!55491))

(assert (not b!916862))

(assert (not b!917074))

(assert (not b!916861))

(assert (not b!917072))

(assert (not b!917089))

(assert (not b!917093))

(assert (not b!917075))

(assert (not b!916859))

(assert (not b!917088))

(assert (not bm!55503))

(assert (not d!279892))

(assert (not b!917092))

(assert (not b!916981))

(assert (not b!916799))

(assert (not bm!55475))

(assert (not b!917091))

(assert (not b!916792))

(assert (not bm!55495))

(assert (not bm!55450))

(assert (not b!917076))

(assert (not b!916991))

(assert (not b!916922))

(assert (not b!917087))

(assert (not b!917048))

(assert (not b!917070))

(assert (not bm!55490))

(assert (not d!279876))

(assert (not d!279896))

(assert (not b!917029))

(assert (not d!279886))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

