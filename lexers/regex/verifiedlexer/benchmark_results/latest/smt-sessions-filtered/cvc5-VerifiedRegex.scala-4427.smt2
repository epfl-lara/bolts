; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!235686 () Bool)

(assert start!235686)

(declare-fun b!2403461 () Bool)

(declare-fun res!1020983 () Bool)

(declare-fun e!1530937 () Bool)

(assert (=> b!2403461 (=> (not res!1020983) (not e!1530937))))

(declare-datatypes ((C!14250 0))(
  ( (C!14251 (val!8367 Int)) )
))
(declare-datatypes ((Regex!7046 0))(
  ( (ElementMatch!7046 (c!382755 C!14250)) (Concat!11682 (regOne!14604 Regex!7046) (regTwo!14604 Regex!7046)) (EmptyExpr!7046) (Star!7046 (reg!7375 Regex!7046)) (EmptyLang!7046) (Union!7046 (regOne!14605 Regex!7046) (regTwo!14605 Regex!7046)) )
))
(declare-fun r!13927 () Regex!7046)

(declare-datatypes ((List!28330 0))(
  ( (Nil!28232) (Cons!28232 (h!33633 Regex!7046) (t!208307 List!28330)) )
))
(declare-fun l!9164 () List!28330)

(declare-fun generalisedConcat!147 (List!28330) Regex!7046)

(assert (=> b!2403461 (= res!1020983 (= r!13927 (generalisedConcat!147 l!9164)))))

(declare-fun b!2403462 () Bool)

(declare-fun res!1020984 () Bool)

(declare-fun e!1530936 () Bool)

(assert (=> b!2403462 (=> res!1020984 e!1530936)))

(assert (=> b!2403462 (= res!1020984 (not (is-Cons!28232 l!9164)))))

(declare-fun b!2403463 () Bool)

(declare-fun e!1530939 () Bool)

(declare-fun tp!764843 () Bool)

(declare-fun tp!764842 () Bool)

(assert (=> b!2403463 (= e!1530939 (and tp!764843 tp!764842))))

(declare-fun b!2403464 () Bool)

(declare-fun e!1530938 () Bool)

(declare-fun tp!764840 () Bool)

(assert (=> b!2403464 (= e!1530938 tp!764840)))

(declare-fun b!2403465 () Bool)

(declare-fun tp!764841 () Bool)

(declare-fun tp!764844 () Bool)

(assert (=> b!2403465 (= e!1530938 (and tp!764841 tp!764844))))

(declare-fun b!2403466 () Bool)

(declare-fun e!1530940 () Bool)

(declare-fun lt!872766 () Bool)

(declare-datatypes ((List!28331 0))(
  ( (Nil!28233) (Cons!28233 (h!33634 C!14250) (t!208308 List!28331)) )
))
(declare-fun s!9460 () List!28331)

(declare-fun isEmpty!16232 (List!28331) Bool)

(assert (=> b!2403466 (= e!1530940 (not (= lt!872766 (isEmpty!16232 s!9460))))))

(declare-fun b!2403467 () Bool)

(declare-fun tp!764839 () Bool)

(declare-fun tp!764845 () Bool)

(assert (=> b!2403467 (= e!1530938 (and tp!764839 tp!764845))))

(declare-fun b!2403469 () Bool)

(declare-fun tp_is_empty!11505 () Bool)

(assert (=> b!2403469 (= e!1530938 tp_is_empty!11505)))

(declare-fun b!2403470 () Bool)

(declare-datatypes ((tuple2!27932 0))(
  ( (tuple2!27933 (_1!16507 List!28331) (_2!16507 List!28331)) )
))
(declare-datatypes ((Option!5577 0))(
  ( (None!5576) (Some!5576 (v!30984 tuple2!27932)) )
))
(declare-fun isDefined!4405 (Option!5577) Bool)

(declare-fun findConcatSeparation!685 (Regex!7046 Regex!7046 List!28331 List!28331 List!28331) Option!5577)

(assert (=> b!2403470 (= e!1530940 (not (= lt!872766 (isDefined!4405 (findConcatSeparation!685 (h!33633 l!9164) (generalisedConcat!147 (t!208307 l!9164)) Nil!28233 s!9460 s!9460)))))))

(declare-fun b!2403471 () Bool)

(declare-fun e!1530935 () Bool)

(declare-fun tp!764838 () Bool)

(assert (=> b!2403471 (= e!1530935 (and tp_is_empty!11505 tp!764838))))

(declare-fun b!2403472 () Bool)

(assert (=> b!2403472 (= e!1530937 (not e!1530936))))

(declare-fun res!1020985 () Bool)

(assert (=> b!2403472 (=> res!1020985 e!1530936)))

(assert (=> b!2403472 (= res!1020985 (or (is-Concat!11682 r!13927) (not (is-EmptyExpr!7046 r!13927))))))

(declare-fun matchRSpec!895 (Regex!7046 List!28331) Bool)

(assert (=> b!2403472 (= lt!872766 (matchRSpec!895 r!13927 s!9460))))

(declare-fun matchR!3163 (Regex!7046 List!28331) Bool)

(assert (=> b!2403472 (= lt!872766 (matchR!3163 r!13927 s!9460))))

(declare-datatypes ((Unit!41363 0))(
  ( (Unit!41364) )
))
(declare-fun lt!872767 () Unit!41363)

(declare-fun mainMatchTheorem!895 (Regex!7046 List!28331) Unit!41363)

(assert (=> b!2403472 (= lt!872767 (mainMatchTheorem!895 r!13927 s!9460))))

(declare-fun b!2403473 () Bool)

(declare-fun e!1530941 () Bool)

(declare-fun lt!872765 () Regex!7046)

(declare-fun validRegex!2771 (Regex!7046) Bool)

(assert (=> b!2403473 (= e!1530941 (validRegex!2771 lt!872765))))

(declare-fun b!2403474 () Bool)

(declare-fun res!1020988 () Bool)

(assert (=> b!2403474 (=> res!1020988 e!1530936)))

(assert (=> b!2403474 (= res!1020988 e!1530940)))

(declare-fun c!382754 () Bool)

(assert (=> b!2403474 (= c!382754 (is-Cons!28232 l!9164))))

(declare-fun res!1020986 () Bool)

(assert (=> start!235686 (=> (not res!1020986) (not e!1530937))))

(declare-fun lambda!90372 () Int)

(declare-fun forall!5680 (List!28330 Int) Bool)

(assert (=> start!235686 (= res!1020986 (forall!5680 l!9164 lambda!90372))))

(assert (=> start!235686 e!1530937))

(assert (=> start!235686 e!1530939))

(assert (=> start!235686 e!1530938))

(assert (=> start!235686 e!1530935))

(declare-fun b!2403468 () Bool)

(assert (=> b!2403468 (= e!1530936 e!1530941)))

(declare-fun res!1020987 () Bool)

(assert (=> b!2403468 (=> res!1020987 e!1530941)))

(assert (=> b!2403468 (= res!1020987 (not (validRegex!2771 (h!33633 l!9164))))))

(assert (=> b!2403468 (= lt!872765 (generalisedConcat!147 (t!208307 l!9164)))))

(assert (= (and start!235686 res!1020986) b!2403461))

(assert (= (and b!2403461 res!1020983) b!2403472))

(assert (= (and b!2403472 (not res!1020985)) b!2403474))

(assert (= (and b!2403474 c!382754) b!2403470))

(assert (= (and b!2403474 (not c!382754)) b!2403466))

(assert (= (and b!2403474 (not res!1020988)) b!2403462))

(assert (= (and b!2403462 (not res!1020984)) b!2403468))

(assert (= (and b!2403468 (not res!1020987)) b!2403473))

(assert (= (and start!235686 (is-Cons!28232 l!9164)) b!2403463))

(assert (= (and start!235686 (is-ElementMatch!7046 r!13927)) b!2403469))

(assert (= (and start!235686 (is-Concat!11682 r!13927)) b!2403467))

(assert (= (and start!235686 (is-Star!7046 r!13927)) b!2403464))

(assert (= (and start!235686 (is-Union!7046 r!13927)) b!2403465))

(assert (= (and start!235686 (is-Cons!28233 s!9460)) b!2403471))

(declare-fun m!2798911 () Bool)

(assert (=> b!2403473 m!2798911))

(declare-fun m!2798913 () Bool)

(assert (=> start!235686 m!2798913))

(declare-fun m!2798915 () Bool)

(assert (=> b!2403461 m!2798915))

(declare-fun m!2798917 () Bool)

(assert (=> b!2403468 m!2798917))

(declare-fun m!2798919 () Bool)

(assert (=> b!2403468 m!2798919))

(assert (=> b!2403470 m!2798919))

(assert (=> b!2403470 m!2798919))

(declare-fun m!2798921 () Bool)

(assert (=> b!2403470 m!2798921))

(assert (=> b!2403470 m!2798921))

(declare-fun m!2798923 () Bool)

(assert (=> b!2403470 m!2798923))

(declare-fun m!2798925 () Bool)

(assert (=> b!2403466 m!2798925))

(declare-fun m!2798927 () Bool)

(assert (=> b!2403472 m!2798927))

(declare-fun m!2798929 () Bool)

(assert (=> b!2403472 m!2798929))

(declare-fun m!2798931 () Bool)

(assert (=> b!2403472 m!2798931))

(push 1)

(assert tp_is_empty!11505)

(assert (not b!2403465))

(assert (not b!2403461))

(assert (not b!2403466))

(assert (not start!235686))

(assert (not b!2403467))

(assert (not b!2403470))

(assert (not b!2403463))

(assert (not b!2403473))

(assert (not b!2403468))

(assert (not b!2403471))

(assert (not b!2403472))

(assert (not b!2403464))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2403600 () Bool)

(assert (=> b!2403600 true))

(assert (=> b!2403600 true))

(declare-fun bs!463225 () Bool)

(declare-fun b!2403596 () Bool)

(assert (= bs!463225 (and b!2403596 b!2403600)))

(declare-fun lambda!90383 () Int)

(declare-fun lambda!90382 () Int)

(assert (=> bs!463225 (not (= lambda!90383 lambda!90382))))

(assert (=> b!2403596 true))

(assert (=> b!2403596 true))

(declare-fun e!1531018 () Bool)

(declare-fun call!146849 () Bool)

(assert (=> b!2403596 (= e!1531018 call!146849)))

(declare-fun b!2403598 () Bool)

(declare-fun res!1021042 () Bool)

(declare-fun e!1531017 () Bool)

(assert (=> b!2403598 (=> res!1021042 e!1531017)))

(declare-fun call!146848 () Bool)

(assert (=> b!2403598 (= res!1021042 call!146848)))

(assert (=> b!2403598 (= e!1531018 e!1531017)))

(declare-fun b!2403599 () Bool)

(declare-fun c!382782 () Bool)

(assert (=> b!2403599 (= c!382782 (is-ElementMatch!7046 r!13927))))

(declare-fun e!1531020 () Bool)

(declare-fun e!1531016 () Bool)

(assert (=> b!2403599 (= e!1531020 e!1531016)))

(declare-fun bm!146843 () Bool)

(assert (=> bm!146843 (= call!146848 (isEmpty!16232 s!9460))))

(assert (=> b!2403600 (= e!1531017 call!146849)))

(declare-fun b!2403601 () Bool)

(declare-fun e!1531015 () Bool)

(assert (=> b!2403601 (= e!1531015 call!146848)))

(declare-fun b!2403597 () Bool)

(declare-fun e!1531019 () Bool)

(assert (=> b!2403597 (= e!1531019 (matchRSpec!895 (regTwo!14605 r!13927) s!9460))))

(declare-fun d!699864 () Bool)

(declare-fun c!382785 () Bool)

(assert (=> d!699864 (= c!382785 (is-EmptyExpr!7046 r!13927))))

(assert (=> d!699864 (= (matchRSpec!895 r!13927 s!9460) e!1531015)))

(declare-fun b!2403602 () Bool)

(declare-fun c!382783 () Bool)

(assert (=> b!2403602 (= c!382783 (is-Union!7046 r!13927))))

(declare-fun e!1531014 () Bool)

(assert (=> b!2403602 (= e!1531016 e!1531014)))

(declare-fun b!2403603 () Bool)

(assert (=> b!2403603 (= e!1531014 e!1531019)))

(declare-fun res!1021043 () Bool)

(assert (=> b!2403603 (= res!1021043 (matchRSpec!895 (regOne!14605 r!13927) s!9460))))

(assert (=> b!2403603 (=> res!1021043 e!1531019)))

(declare-fun c!382784 () Bool)

(declare-fun bm!146844 () Bool)

(declare-fun Exists!1104 (Int) Bool)

(assert (=> bm!146844 (= call!146849 (Exists!1104 (ite c!382784 lambda!90382 lambda!90383)))))

(declare-fun b!2403604 () Bool)

(assert (=> b!2403604 (= e!1531016 (= s!9460 (Cons!28233 (c!382755 r!13927) Nil!28233)))))

(declare-fun b!2403605 () Bool)

(assert (=> b!2403605 (= e!1531015 e!1531020)))

(declare-fun res!1021044 () Bool)

(assert (=> b!2403605 (= res!1021044 (not (is-EmptyLang!7046 r!13927)))))

(assert (=> b!2403605 (=> (not res!1021044) (not e!1531020))))

(declare-fun b!2403606 () Bool)

(assert (=> b!2403606 (= e!1531014 e!1531018)))

(assert (=> b!2403606 (= c!382784 (is-Star!7046 r!13927))))

(assert (= (and d!699864 c!382785) b!2403601))

(assert (= (and d!699864 (not c!382785)) b!2403605))

(assert (= (and b!2403605 res!1021044) b!2403599))

(assert (= (and b!2403599 c!382782) b!2403604))

(assert (= (and b!2403599 (not c!382782)) b!2403602))

(assert (= (and b!2403602 c!382783) b!2403603))

(assert (= (and b!2403602 (not c!382783)) b!2403606))

(assert (= (and b!2403603 (not res!1021043)) b!2403597))

(assert (= (and b!2403606 c!382784) b!2403598))

(assert (= (and b!2403606 (not c!382784)) b!2403596))

(assert (= (and b!2403598 (not res!1021042)) b!2403600))

(assert (= (or b!2403600 b!2403596) bm!146844))

(assert (= (or b!2403601 b!2403598) bm!146843))

(assert (=> bm!146843 m!2798925))

(declare-fun m!2798961 () Bool)

(assert (=> b!2403597 m!2798961))

(declare-fun m!2798963 () Bool)

(assert (=> b!2403603 m!2798963))

(declare-fun m!2798965 () Bool)

(assert (=> bm!146844 m!2798965))

(assert (=> b!2403472 d!699864))

(declare-fun b!2403658 () Bool)

(declare-fun e!1531052 () Bool)

(declare-fun head!5320 (List!28331) C!14250)

(assert (=> b!2403658 (= e!1531052 (not (= (head!5320 s!9460) (c!382755 r!13927))))))

(declare-fun d!699872 () Bool)

(declare-fun e!1531049 () Bool)

(assert (=> d!699872 e!1531049))

(declare-fun c!382799 () Bool)

(assert (=> d!699872 (= c!382799 (is-EmptyExpr!7046 r!13927))))

(declare-fun lt!872782 () Bool)

(declare-fun e!1531054 () Bool)

(assert (=> d!699872 (= lt!872782 e!1531054)))

(declare-fun c!382798 () Bool)

(assert (=> d!699872 (= c!382798 (isEmpty!16232 s!9460))))

(assert (=> d!699872 (validRegex!2771 r!13927)))

(assert (=> d!699872 (= (matchR!3163 r!13927 s!9460) lt!872782)))

(declare-fun b!2403659 () Bool)

(declare-fun res!1021074 () Bool)

(declare-fun e!1531048 () Bool)

(assert (=> b!2403659 (=> res!1021074 e!1531048)))

(assert (=> b!2403659 (= res!1021074 (not (is-ElementMatch!7046 r!13927)))))

(declare-fun e!1531053 () Bool)

(assert (=> b!2403659 (= e!1531053 e!1531048)))

(declare-fun b!2403660 () Bool)

(assert (=> b!2403660 (= e!1531053 (not lt!872782))))

(declare-fun b!2403661 () Bool)

(declare-fun res!1021072 () Bool)

(declare-fun e!1531050 () Bool)

(assert (=> b!2403661 (=> (not res!1021072) (not e!1531050))))

(declare-fun call!146855 () Bool)

(assert (=> b!2403661 (= res!1021072 (not call!146855))))

(declare-fun b!2403662 () Bool)

(declare-fun derivativeStep!1751 (Regex!7046 C!14250) Regex!7046)

(declare-fun tail!3590 (List!28331) List!28331)

(assert (=> b!2403662 (= e!1531054 (matchR!3163 (derivativeStep!1751 r!13927 (head!5320 s!9460)) (tail!3590 s!9460)))))

(declare-fun b!2403663 () Bool)

(declare-fun res!1021069 () Bool)

(assert (=> b!2403663 (=> res!1021069 e!1531052)))

(assert (=> b!2403663 (= res!1021069 (not (isEmpty!16232 (tail!3590 s!9460))))))

(declare-fun b!2403664 () Bool)

(assert (=> b!2403664 (= e!1531050 (= (head!5320 s!9460) (c!382755 r!13927)))))

(declare-fun b!2403665 () Bool)

(declare-fun nullable!2094 (Regex!7046) Bool)

(assert (=> b!2403665 (= e!1531054 (nullable!2094 r!13927))))

(declare-fun b!2403666 () Bool)

(declare-fun res!1021073 () Bool)

(assert (=> b!2403666 (=> res!1021073 e!1531048)))

(assert (=> b!2403666 (= res!1021073 e!1531050)))

(declare-fun res!1021075 () Bool)

(assert (=> b!2403666 (=> (not res!1021075) (not e!1531050))))

(assert (=> b!2403666 (= res!1021075 lt!872782)))

(declare-fun b!2403667 () Bool)

(declare-fun e!1531051 () Bool)

(assert (=> b!2403667 (= e!1531051 e!1531052)))

(declare-fun res!1021071 () Bool)

(assert (=> b!2403667 (=> res!1021071 e!1531052)))

(assert (=> b!2403667 (= res!1021071 call!146855)))

(declare-fun b!2403668 () Bool)

(assert (=> b!2403668 (= e!1531048 e!1531051)))

(declare-fun res!1021070 () Bool)

(assert (=> b!2403668 (=> (not res!1021070) (not e!1531051))))

(assert (=> b!2403668 (= res!1021070 (not lt!872782))))

(declare-fun bm!146850 () Bool)

(assert (=> bm!146850 (= call!146855 (isEmpty!16232 s!9460))))

(declare-fun b!2403669 () Bool)

(assert (=> b!2403669 (= e!1531049 e!1531053)))

(declare-fun c!382800 () Bool)

(assert (=> b!2403669 (= c!382800 (is-EmptyLang!7046 r!13927))))

(declare-fun b!2403670 () Bool)

(declare-fun res!1021068 () Bool)

(assert (=> b!2403670 (=> (not res!1021068) (not e!1531050))))

(assert (=> b!2403670 (= res!1021068 (isEmpty!16232 (tail!3590 s!9460)))))

(declare-fun b!2403671 () Bool)

(assert (=> b!2403671 (= e!1531049 (= lt!872782 call!146855))))

(assert (= (and d!699872 c!382798) b!2403665))

(assert (= (and d!699872 (not c!382798)) b!2403662))

(assert (= (and d!699872 c!382799) b!2403671))

(assert (= (and d!699872 (not c!382799)) b!2403669))

(assert (= (and b!2403669 c!382800) b!2403660))

(assert (= (and b!2403669 (not c!382800)) b!2403659))

(assert (= (and b!2403659 (not res!1021074)) b!2403666))

(assert (= (and b!2403666 res!1021075) b!2403661))

(assert (= (and b!2403661 res!1021072) b!2403670))

(assert (= (and b!2403670 res!1021068) b!2403664))

(assert (= (and b!2403666 (not res!1021073)) b!2403668))

(assert (= (and b!2403668 res!1021070) b!2403667))

(assert (= (and b!2403667 (not res!1021071)) b!2403663))

(assert (= (and b!2403663 (not res!1021069)) b!2403658))

(assert (= (or b!2403671 b!2403661 b!2403667) bm!146850))

(declare-fun m!2798995 () Bool)

(assert (=> b!2403664 m!2798995))

(declare-fun m!2798997 () Bool)

(assert (=> b!2403670 m!2798997))

(assert (=> b!2403670 m!2798997))

(declare-fun m!2798999 () Bool)

(assert (=> b!2403670 m!2798999))

(declare-fun m!2799001 () Bool)

(assert (=> b!2403665 m!2799001))

(assert (=> b!2403662 m!2798995))

(assert (=> b!2403662 m!2798995))

(declare-fun m!2799003 () Bool)

(assert (=> b!2403662 m!2799003))

(assert (=> b!2403662 m!2798997))

(assert (=> b!2403662 m!2799003))

(assert (=> b!2403662 m!2798997))

(declare-fun m!2799005 () Bool)

(assert (=> b!2403662 m!2799005))

(assert (=> b!2403663 m!2798997))

(assert (=> b!2403663 m!2798997))

(assert (=> b!2403663 m!2798999))

(assert (=> b!2403658 m!2798995))

(assert (=> bm!146850 m!2798925))

(assert (=> d!699872 m!2798925))

(declare-fun m!2799007 () Bool)

(assert (=> d!699872 m!2799007))

(assert (=> b!2403472 d!699872))

(declare-fun d!699880 () Bool)

(assert (=> d!699880 (= (matchR!3163 r!13927 s!9460) (matchRSpec!895 r!13927 s!9460))))

(declare-fun lt!872785 () Unit!41363)

(declare-fun choose!14221 (Regex!7046 List!28331) Unit!41363)

(assert (=> d!699880 (= lt!872785 (choose!14221 r!13927 s!9460))))

(assert (=> d!699880 (validRegex!2771 r!13927)))

(assert (=> d!699880 (= (mainMatchTheorem!895 r!13927 s!9460) lt!872785)))

(declare-fun bs!463228 () Bool)

(assert (= bs!463228 d!699880))

(assert (=> bs!463228 m!2798929))

(assert (=> bs!463228 m!2798927))

(declare-fun m!2799009 () Bool)

(assert (=> bs!463228 m!2799009))

(assert (=> bs!463228 m!2799007))

(assert (=> b!2403472 d!699880))

(declare-fun bs!463229 () Bool)

(declare-fun d!699882 () Bool)

(assert (= bs!463229 (and d!699882 start!235686)))

(declare-fun lambda!90387 () Int)

(assert (=> bs!463229 (= lambda!90387 lambda!90372)))

(declare-fun b!2403692 () Bool)

(declare-fun e!1531069 () Regex!7046)

(assert (=> b!2403692 (= e!1531069 (Concat!11682 (h!33633 l!9164) (generalisedConcat!147 (t!208307 l!9164))))))

(declare-fun b!2403693 () Bool)

(declare-fun e!1531068 () Bool)

(declare-fun lt!872788 () Regex!7046)

(declare-fun head!5321 (List!28330) Regex!7046)

(assert (=> b!2403693 (= e!1531068 (= lt!872788 (head!5321 l!9164)))))

(declare-fun e!1531072 () Bool)

(assert (=> d!699882 e!1531072))

(declare-fun res!1021081 () Bool)

(assert (=> d!699882 (=> (not res!1021081) (not e!1531072))))

(assert (=> d!699882 (= res!1021081 (validRegex!2771 lt!872788))))

(declare-fun e!1531071 () Regex!7046)

(assert (=> d!699882 (= lt!872788 e!1531071)))

(declare-fun c!382812 () Bool)

(declare-fun e!1531067 () Bool)

(assert (=> d!699882 (= c!382812 e!1531067)))

(declare-fun res!1021080 () Bool)

(assert (=> d!699882 (=> (not res!1021080) (not e!1531067))))

(assert (=> d!699882 (= res!1021080 (is-Cons!28232 l!9164))))

(assert (=> d!699882 (forall!5680 l!9164 lambda!90387)))

(assert (=> d!699882 (= (generalisedConcat!147 l!9164) lt!872788)))

(declare-fun b!2403694 () Bool)

(assert (=> b!2403694 (= e!1531071 e!1531069)))

(declare-fun c!382810 () Bool)

(assert (=> b!2403694 (= c!382810 (is-Cons!28232 l!9164))))

(declare-fun b!2403695 () Bool)

(declare-fun e!1531070 () Bool)

(assert (=> b!2403695 (= e!1531070 e!1531068)))

(declare-fun c!382811 () Bool)

(declare-fun isEmpty!16234 (List!28330) Bool)

(declare-fun tail!3591 (List!28330) List!28330)

(assert (=> b!2403695 (= c!382811 (isEmpty!16234 (tail!3591 l!9164)))))

(declare-fun b!2403696 () Bool)

(assert (=> b!2403696 (= e!1531072 e!1531070)))

(declare-fun c!382809 () Bool)

(assert (=> b!2403696 (= c!382809 (isEmpty!16234 l!9164))))

(declare-fun b!2403697 () Bool)

(declare-fun isEmptyExpr!114 (Regex!7046) Bool)

(assert (=> b!2403697 (= e!1531070 (isEmptyExpr!114 lt!872788))))

(declare-fun b!2403698 () Bool)

(assert (=> b!2403698 (= e!1531071 (h!33633 l!9164))))

(declare-fun b!2403699 () Bool)

(assert (=> b!2403699 (= e!1531069 EmptyExpr!7046)))

(declare-fun b!2403700 () Bool)

(declare-fun isConcat!114 (Regex!7046) Bool)

(assert (=> b!2403700 (= e!1531068 (isConcat!114 lt!872788))))

(declare-fun b!2403701 () Bool)

(assert (=> b!2403701 (= e!1531067 (isEmpty!16234 (t!208307 l!9164)))))

(assert (= (and d!699882 res!1021080) b!2403701))

(assert (= (and d!699882 c!382812) b!2403698))

(assert (= (and d!699882 (not c!382812)) b!2403694))

(assert (= (and b!2403694 c!382810) b!2403692))

(assert (= (and b!2403694 (not c!382810)) b!2403699))

(assert (= (and d!699882 res!1021081) b!2403696))

(assert (= (and b!2403696 c!382809) b!2403697))

(assert (= (and b!2403696 (not c!382809)) b!2403695))

(assert (= (and b!2403695 c!382811) b!2403693))

(assert (= (and b!2403695 (not c!382811)) b!2403700))

(declare-fun m!2799011 () Bool)

(assert (=> b!2403700 m!2799011))

(declare-fun m!2799013 () Bool)

(assert (=> b!2403693 m!2799013))

(declare-fun m!2799015 () Bool)

(assert (=> d!699882 m!2799015))

(declare-fun m!2799017 () Bool)

(assert (=> d!699882 m!2799017))

(declare-fun m!2799019 () Bool)

(assert (=> b!2403697 m!2799019))

(declare-fun m!2799021 () Bool)

(assert (=> b!2403696 m!2799021))

(declare-fun m!2799023 () Bool)

(assert (=> b!2403695 m!2799023))

(assert (=> b!2403695 m!2799023))

(declare-fun m!2799025 () Bool)

(assert (=> b!2403695 m!2799025))

(declare-fun m!2799027 () Bool)

(assert (=> b!2403701 m!2799027))

(assert (=> b!2403692 m!2798919))

(assert (=> b!2403461 d!699882))

(declare-fun d!699884 () Bool)

(assert (=> d!699884 (= (isEmpty!16232 s!9460) (is-Nil!28233 s!9460))))

(assert (=> b!2403466 d!699884))

(declare-fun d!699886 () Bool)

(declare-fun isEmpty!16235 (Option!5577) Bool)

(assert (=> d!699886 (= (isDefined!4405 (findConcatSeparation!685 (h!33633 l!9164) (generalisedConcat!147 (t!208307 l!9164)) Nil!28233 s!9460 s!9460)) (not (isEmpty!16235 (findConcatSeparation!685 (h!33633 l!9164) (generalisedConcat!147 (t!208307 l!9164)) Nil!28233 s!9460 s!9460))))))

(declare-fun bs!463230 () Bool)

(assert (= bs!463230 d!699886))

(assert (=> bs!463230 m!2798921))

(declare-fun m!2799029 () Bool)

(assert (=> bs!463230 m!2799029))

(assert (=> b!2403470 d!699886))

(declare-fun b!2403751 () Bool)

(declare-fun e!1531105 () Bool)

(declare-fun lt!872806 () Option!5577)

(assert (=> b!2403751 (= e!1531105 (not (isDefined!4405 lt!872806)))))

(declare-fun b!2403752 () Bool)

(declare-fun res!1021114 () Bool)

(declare-fun e!1531103 () Bool)

(assert (=> b!2403752 (=> (not res!1021114) (not e!1531103))))

(declare-fun get!8654 (Option!5577) tuple2!27932)

(assert (=> b!2403752 (= res!1021114 (matchR!3163 (generalisedConcat!147 (t!208307 l!9164)) (_2!16507 (get!8654 lt!872806))))))

(declare-fun b!2403753 () Bool)

(declare-fun e!1531106 () Option!5577)

(declare-fun e!1531102 () Option!5577)

(assert (=> b!2403753 (= e!1531106 e!1531102)))

(declare-fun c!382824 () Bool)

(assert (=> b!2403753 (= c!382824 (is-Nil!28233 s!9460))))

(declare-fun b!2403754 () Bool)

(declare-fun lt!872805 () Unit!41363)

(declare-fun lt!872804 () Unit!41363)

(assert (=> b!2403754 (= lt!872805 lt!872804)))

(declare-fun ++!6989 (List!28331 List!28331) List!28331)

(assert (=> b!2403754 (= (++!6989 (++!6989 Nil!28233 (Cons!28233 (h!33634 s!9460) Nil!28233)) (t!208308 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!629 (List!28331 C!14250 List!28331 List!28331) Unit!41363)

(assert (=> b!2403754 (= lt!872804 (lemmaMoveElementToOtherListKeepsConcatEq!629 Nil!28233 (h!33634 s!9460) (t!208308 s!9460) s!9460))))

(assert (=> b!2403754 (= e!1531102 (findConcatSeparation!685 (h!33633 l!9164) (generalisedConcat!147 (t!208307 l!9164)) (++!6989 Nil!28233 (Cons!28233 (h!33634 s!9460) Nil!28233)) (t!208308 s!9460) s!9460))))

(declare-fun b!2403755 () Bool)

(assert (=> b!2403755 (= e!1531106 (Some!5576 (tuple2!27933 Nil!28233 s!9460)))))

(declare-fun b!2403756 () Bool)

(assert (=> b!2403756 (= e!1531102 None!5576)))

(declare-fun b!2403757 () Bool)

(declare-fun e!1531104 () Bool)

(assert (=> b!2403757 (= e!1531104 (matchR!3163 (generalisedConcat!147 (t!208307 l!9164)) s!9460))))

(declare-fun b!2403758 () Bool)

(assert (=> b!2403758 (= e!1531103 (= (++!6989 (_1!16507 (get!8654 lt!872806)) (_2!16507 (get!8654 lt!872806))) s!9460))))

(declare-fun d!699888 () Bool)

(assert (=> d!699888 e!1531105))

(declare-fun res!1021111 () Bool)

(assert (=> d!699888 (=> res!1021111 e!1531105)))

(assert (=> d!699888 (= res!1021111 e!1531103)))

(declare-fun res!1021113 () Bool)

(assert (=> d!699888 (=> (not res!1021113) (not e!1531103))))

(assert (=> d!699888 (= res!1021113 (isDefined!4405 lt!872806))))

(assert (=> d!699888 (= lt!872806 e!1531106)))

(declare-fun c!382823 () Bool)

(assert (=> d!699888 (= c!382823 e!1531104)))

(declare-fun res!1021115 () Bool)

(assert (=> d!699888 (=> (not res!1021115) (not e!1531104))))

(assert (=> d!699888 (= res!1021115 (matchR!3163 (h!33633 l!9164) Nil!28233))))

(assert (=> d!699888 (validRegex!2771 (h!33633 l!9164))))

(assert (=> d!699888 (= (findConcatSeparation!685 (h!33633 l!9164) (generalisedConcat!147 (t!208307 l!9164)) Nil!28233 s!9460 s!9460) lt!872806)))

(declare-fun b!2403759 () Bool)

(declare-fun res!1021112 () Bool)

(assert (=> b!2403759 (=> (not res!1021112) (not e!1531103))))

(assert (=> b!2403759 (= res!1021112 (matchR!3163 (h!33633 l!9164) (_1!16507 (get!8654 lt!872806))))))

(assert (= (and d!699888 res!1021115) b!2403757))

(assert (= (and d!699888 c!382823) b!2403755))

(assert (= (and d!699888 (not c!382823)) b!2403753))

(assert (= (and b!2403753 c!382824) b!2403756))

(assert (= (and b!2403753 (not c!382824)) b!2403754))

(assert (= (and d!699888 res!1021113) b!2403759))

(assert (= (and b!2403759 res!1021112) b!2403752))

(assert (= (and b!2403752 res!1021114) b!2403758))

(assert (= (and d!699888 (not res!1021111)) b!2403751))

(declare-fun m!2799053 () Bool)

(assert (=> b!2403758 m!2799053))

(declare-fun m!2799055 () Bool)

(assert (=> b!2403758 m!2799055))

(assert (=> b!2403759 m!2799053))

(declare-fun m!2799057 () Bool)

(assert (=> b!2403759 m!2799057))

(declare-fun m!2799059 () Bool)

(assert (=> d!699888 m!2799059))

(declare-fun m!2799061 () Bool)

(assert (=> d!699888 m!2799061))

(assert (=> d!699888 m!2798917))

(assert (=> b!2403752 m!2799053))

(assert (=> b!2403752 m!2798919))

(declare-fun m!2799065 () Bool)

(assert (=> b!2403752 m!2799065))

(declare-fun m!2799067 () Bool)

(assert (=> b!2403754 m!2799067))

(assert (=> b!2403754 m!2799067))

(declare-fun m!2799071 () Bool)

(assert (=> b!2403754 m!2799071))

(declare-fun m!2799073 () Bool)

(assert (=> b!2403754 m!2799073))

(assert (=> b!2403754 m!2798919))

(assert (=> b!2403754 m!2799067))

(declare-fun m!2799075 () Bool)

(assert (=> b!2403754 m!2799075))

(assert (=> b!2403757 m!2798919))

(declare-fun m!2799077 () Bool)

(assert (=> b!2403757 m!2799077))

(assert (=> b!2403751 m!2799059))

(assert (=> b!2403470 d!699888))

(declare-fun bs!463231 () Bool)

(declare-fun d!699894 () Bool)

(assert (= bs!463231 (and d!699894 start!235686)))

(declare-fun lambda!90388 () Int)

(assert (=> bs!463231 (= lambda!90388 lambda!90372)))

(declare-fun bs!463232 () Bool)

(assert (= bs!463232 (and d!699894 d!699882)))

(assert (=> bs!463232 (= lambda!90388 lambda!90387)))

(declare-fun b!2403762 () Bool)

(declare-fun e!1531111 () Regex!7046)

(assert (=> b!2403762 (= e!1531111 (Concat!11682 (h!33633 (t!208307 l!9164)) (generalisedConcat!147 (t!208307 (t!208307 l!9164)))))))

(declare-fun b!2403763 () Bool)

(declare-fun e!1531110 () Bool)

(declare-fun lt!872807 () Regex!7046)

(assert (=> b!2403763 (= e!1531110 (= lt!872807 (head!5321 (t!208307 l!9164))))))

(declare-fun e!1531114 () Bool)

(assert (=> d!699894 e!1531114))

(declare-fun res!1021119 () Bool)

(assert (=> d!699894 (=> (not res!1021119) (not e!1531114))))

(assert (=> d!699894 (= res!1021119 (validRegex!2771 lt!872807))))

(declare-fun e!1531113 () Regex!7046)

(assert (=> d!699894 (= lt!872807 e!1531113)))

(declare-fun c!382828 () Bool)

(declare-fun e!1531109 () Bool)

(assert (=> d!699894 (= c!382828 e!1531109)))

(declare-fun res!1021118 () Bool)

(assert (=> d!699894 (=> (not res!1021118) (not e!1531109))))

(assert (=> d!699894 (= res!1021118 (is-Cons!28232 (t!208307 l!9164)))))

(assert (=> d!699894 (forall!5680 (t!208307 l!9164) lambda!90388)))

(assert (=> d!699894 (= (generalisedConcat!147 (t!208307 l!9164)) lt!872807)))

(declare-fun b!2403764 () Bool)

(assert (=> b!2403764 (= e!1531113 e!1531111)))

(declare-fun c!382826 () Bool)

(assert (=> b!2403764 (= c!382826 (is-Cons!28232 (t!208307 l!9164)))))

(declare-fun b!2403765 () Bool)

(declare-fun e!1531112 () Bool)

(assert (=> b!2403765 (= e!1531112 e!1531110)))

(declare-fun c!382827 () Bool)

(assert (=> b!2403765 (= c!382827 (isEmpty!16234 (tail!3591 (t!208307 l!9164))))))

(declare-fun b!2403766 () Bool)

(assert (=> b!2403766 (= e!1531114 e!1531112)))

(declare-fun c!382825 () Bool)

(assert (=> b!2403766 (= c!382825 (isEmpty!16234 (t!208307 l!9164)))))

(declare-fun b!2403767 () Bool)

(assert (=> b!2403767 (= e!1531112 (isEmptyExpr!114 lt!872807))))

(declare-fun b!2403768 () Bool)

(assert (=> b!2403768 (= e!1531113 (h!33633 (t!208307 l!9164)))))

(declare-fun b!2403769 () Bool)

(assert (=> b!2403769 (= e!1531111 EmptyExpr!7046)))

(declare-fun b!2403770 () Bool)

(assert (=> b!2403770 (= e!1531110 (isConcat!114 lt!872807))))

(declare-fun b!2403771 () Bool)

(assert (=> b!2403771 (= e!1531109 (isEmpty!16234 (t!208307 (t!208307 l!9164))))))

(assert (= (and d!699894 res!1021118) b!2403771))

(assert (= (and d!699894 c!382828) b!2403768))

(assert (= (and d!699894 (not c!382828)) b!2403764))

(assert (= (and b!2403764 c!382826) b!2403762))

(assert (= (and b!2403764 (not c!382826)) b!2403769))

(assert (= (and d!699894 res!1021119) b!2403766))

(assert (= (and b!2403766 c!382825) b!2403767))

(assert (= (and b!2403766 (not c!382825)) b!2403765))

(assert (= (and b!2403765 c!382827) b!2403763))

(assert (= (and b!2403765 (not c!382827)) b!2403770))

(declare-fun m!2799079 () Bool)

(assert (=> b!2403770 m!2799079))

(declare-fun m!2799081 () Bool)

(assert (=> b!2403763 m!2799081))

(declare-fun m!2799083 () Bool)

(assert (=> d!699894 m!2799083))

(declare-fun m!2799085 () Bool)

(assert (=> d!699894 m!2799085))

(declare-fun m!2799087 () Bool)

(assert (=> b!2403767 m!2799087))

(assert (=> b!2403766 m!2799027))

(declare-fun m!2799089 () Bool)

(assert (=> b!2403765 m!2799089))

(assert (=> b!2403765 m!2799089))

(declare-fun m!2799091 () Bool)

(assert (=> b!2403765 m!2799091))

(declare-fun m!2799093 () Bool)

(assert (=> b!2403771 m!2799093))

(declare-fun m!2799095 () Bool)

(assert (=> b!2403762 m!2799095))

(assert (=> b!2403470 d!699894))

(declare-fun d!699896 () Bool)

(declare-fun res!1021124 () Bool)

(declare-fun e!1531119 () Bool)

(assert (=> d!699896 (=> res!1021124 e!1531119)))

(assert (=> d!699896 (= res!1021124 (is-Nil!28232 l!9164))))

(assert (=> d!699896 (= (forall!5680 l!9164 lambda!90372) e!1531119)))

(declare-fun b!2403776 () Bool)

(declare-fun e!1531120 () Bool)

(assert (=> b!2403776 (= e!1531119 e!1531120)))

(declare-fun res!1021125 () Bool)

(assert (=> b!2403776 (=> (not res!1021125) (not e!1531120))))

(declare-fun dynLambda!12158 (Int Regex!7046) Bool)

(assert (=> b!2403776 (= res!1021125 (dynLambda!12158 lambda!90372 (h!33633 l!9164)))))

(declare-fun b!2403777 () Bool)

(assert (=> b!2403777 (= e!1531120 (forall!5680 (t!208307 l!9164) lambda!90372))))

(assert (= (and d!699896 (not res!1021124)) b!2403776))

(assert (= (and b!2403776 res!1021125) b!2403777))

(declare-fun b_lambda!74373 () Bool)

(assert (=> (not b_lambda!74373) (not b!2403776)))

(declare-fun m!2799097 () Bool)

(assert (=> b!2403776 m!2799097))

(declare-fun m!2799099 () Bool)

(assert (=> b!2403777 m!2799099))

(assert (=> start!235686 d!699896))

(declare-fun b!2403798 () Bool)

(declare-fun e!1531137 () Bool)

(declare-fun e!1531141 () Bool)

(assert (=> b!2403798 (= e!1531137 e!1531141)))

(declare-fun res!1021139 () Bool)

(assert (=> b!2403798 (= res!1021139 (not (nullable!2094 (reg!7375 (h!33633 l!9164)))))))

(assert (=> b!2403798 (=> (not res!1021139) (not e!1531141))))

(declare-fun bm!146857 () Bool)

(declare-fun c!382833 () Bool)

(declare-fun c!382834 () Bool)

(declare-fun call!146864 () Bool)

(assert (=> bm!146857 (= call!146864 (validRegex!2771 (ite c!382833 (reg!7375 (h!33633 l!9164)) (ite c!382834 (regTwo!14605 (h!33633 l!9164)) (regOne!14604 (h!33633 l!9164))))))))

(declare-fun b!2403799 () Bool)

(declare-fun res!1021136 () Bool)

(declare-fun e!1531135 () Bool)

(assert (=> b!2403799 (=> (not res!1021136) (not e!1531135))))

(declare-fun call!146863 () Bool)

(assert (=> b!2403799 (= res!1021136 call!146863)))

(declare-fun e!1531140 () Bool)

(assert (=> b!2403799 (= e!1531140 e!1531135)))

(declare-fun bm!146858 () Bool)

(assert (=> bm!146858 (= call!146863 (validRegex!2771 (ite c!382834 (regOne!14605 (h!33633 l!9164)) (regTwo!14604 (h!33633 l!9164)))))))

(declare-fun b!2403800 () Bool)

(declare-fun e!1531136 () Bool)

(declare-fun e!1531138 () Bool)

(assert (=> b!2403800 (= e!1531136 e!1531138)))

(declare-fun res!1021140 () Bool)

(assert (=> b!2403800 (=> (not res!1021140) (not e!1531138))))

(declare-fun call!146862 () Bool)

(assert (=> b!2403800 (= res!1021140 call!146862)))

(declare-fun b!2403802 () Bool)

(assert (=> b!2403802 (= e!1531137 e!1531140)))

(assert (=> b!2403802 (= c!382834 (is-Union!7046 (h!33633 l!9164)))))

(declare-fun b!2403803 () Bool)

(declare-fun e!1531139 () Bool)

(assert (=> b!2403803 (= e!1531139 e!1531137)))

(assert (=> b!2403803 (= c!382833 (is-Star!7046 (h!33633 l!9164)))))

(declare-fun b!2403804 () Bool)

(assert (=> b!2403804 (= e!1531135 call!146862)))

(declare-fun b!2403805 () Bool)

(declare-fun res!1021137 () Bool)

(assert (=> b!2403805 (=> res!1021137 e!1531136)))

(assert (=> b!2403805 (= res!1021137 (not (is-Concat!11682 (h!33633 l!9164))))))

(assert (=> b!2403805 (= e!1531140 e!1531136)))

(declare-fun bm!146859 () Bool)

(assert (=> bm!146859 (= call!146862 call!146864)))

(declare-fun b!2403806 () Bool)

(assert (=> b!2403806 (= e!1531138 call!146863)))

(declare-fun d!699898 () Bool)

(declare-fun res!1021138 () Bool)

(assert (=> d!699898 (=> res!1021138 e!1531139)))

(assert (=> d!699898 (= res!1021138 (is-ElementMatch!7046 (h!33633 l!9164)))))

(assert (=> d!699898 (= (validRegex!2771 (h!33633 l!9164)) e!1531139)))

(declare-fun b!2403801 () Bool)

(assert (=> b!2403801 (= e!1531141 call!146864)))

(assert (= (and d!699898 (not res!1021138)) b!2403803))

(assert (= (and b!2403803 c!382833) b!2403798))

(assert (= (and b!2403803 (not c!382833)) b!2403802))

(assert (= (and b!2403798 res!1021139) b!2403801))

(assert (= (and b!2403802 c!382834) b!2403799))

(assert (= (and b!2403802 (not c!382834)) b!2403805))

(assert (= (and b!2403799 res!1021136) b!2403804))

(assert (= (and b!2403805 (not res!1021137)) b!2403800))

(assert (= (and b!2403800 res!1021140) b!2403806))

(assert (= (or b!2403799 b!2403806) bm!146858))

(assert (= (or b!2403804 b!2403800) bm!146859))

(assert (= (or b!2403801 bm!146859) bm!146857))

(declare-fun m!2799101 () Bool)

(assert (=> b!2403798 m!2799101))

(declare-fun m!2799103 () Bool)

(assert (=> bm!146857 m!2799103))

(declare-fun m!2799105 () Bool)

(assert (=> bm!146858 m!2799105))

(assert (=> b!2403468 d!699898))

(assert (=> b!2403468 d!699894))

(declare-fun b!2403819 () Bool)

(declare-fun e!1531152 () Bool)

(declare-fun e!1531156 () Bool)

(assert (=> b!2403819 (= e!1531152 e!1531156)))

(declare-fun res!1021146 () Bool)

(assert (=> b!2403819 (= res!1021146 (not (nullable!2094 (reg!7375 lt!872765))))))

(assert (=> b!2403819 (=> (not res!1021146) (not e!1531156))))

(declare-fun call!146867 () Bool)

(declare-fun c!382842 () Bool)

(declare-fun bm!146860 () Bool)

(declare-fun c!382841 () Bool)

(assert (=> bm!146860 (= call!146867 (validRegex!2771 (ite c!382841 (reg!7375 lt!872765) (ite c!382842 (regTwo!14605 lt!872765) (regOne!14604 lt!872765)))))))

(declare-fun b!2403820 () Bool)

(declare-fun res!1021143 () Bool)

(declare-fun e!1531150 () Bool)

(assert (=> b!2403820 (=> (not res!1021143) (not e!1531150))))

(declare-fun call!146866 () Bool)

(assert (=> b!2403820 (= res!1021143 call!146866)))

(declare-fun e!1531155 () Bool)

(assert (=> b!2403820 (= e!1531155 e!1531150)))

(declare-fun bm!146861 () Bool)

(assert (=> bm!146861 (= call!146866 (validRegex!2771 (ite c!382842 (regOne!14605 lt!872765) (regTwo!14604 lt!872765))))))

(declare-fun b!2403821 () Bool)

(declare-fun e!1531151 () Bool)

(declare-fun e!1531153 () Bool)

(assert (=> b!2403821 (= e!1531151 e!1531153)))

(declare-fun res!1021147 () Bool)

(assert (=> b!2403821 (=> (not res!1021147) (not e!1531153))))

(declare-fun call!146865 () Bool)

(assert (=> b!2403821 (= res!1021147 call!146865)))

(declare-fun b!2403823 () Bool)

(assert (=> b!2403823 (= e!1531152 e!1531155)))

(assert (=> b!2403823 (= c!382842 (is-Union!7046 lt!872765))))

(declare-fun b!2403824 () Bool)

(declare-fun e!1531154 () Bool)

(assert (=> b!2403824 (= e!1531154 e!1531152)))

(assert (=> b!2403824 (= c!382841 (is-Star!7046 lt!872765))))

(declare-fun b!2403825 () Bool)

(assert (=> b!2403825 (= e!1531150 call!146865)))

(declare-fun b!2403826 () Bool)

(declare-fun res!1021144 () Bool)

(assert (=> b!2403826 (=> res!1021144 e!1531151)))

(assert (=> b!2403826 (= res!1021144 (not (is-Concat!11682 lt!872765)))))

(assert (=> b!2403826 (= e!1531155 e!1531151)))

(declare-fun bm!146862 () Bool)

(assert (=> bm!146862 (= call!146865 call!146867)))

(declare-fun b!2403827 () Bool)

(assert (=> b!2403827 (= e!1531153 call!146866)))

(declare-fun d!699900 () Bool)

(declare-fun res!1021145 () Bool)

(assert (=> d!699900 (=> res!1021145 e!1531154)))

(assert (=> d!699900 (= res!1021145 (is-ElementMatch!7046 lt!872765))))

(assert (=> d!699900 (= (validRegex!2771 lt!872765) e!1531154)))

(declare-fun b!2403822 () Bool)

(assert (=> b!2403822 (= e!1531156 call!146867)))

(assert (= (and d!699900 (not res!1021145)) b!2403824))

(assert (= (and b!2403824 c!382841) b!2403819))

(assert (= (and b!2403824 (not c!382841)) b!2403823))

(assert (= (and b!2403819 res!1021146) b!2403822))

(assert (= (and b!2403823 c!382842) b!2403820))

(assert (= (and b!2403823 (not c!382842)) b!2403826))

(assert (= (and b!2403820 res!1021143) b!2403825))

(assert (= (and b!2403826 (not res!1021144)) b!2403821))

(assert (= (and b!2403821 res!1021147) b!2403827))

(assert (= (or b!2403820 b!2403827) bm!146861))

(assert (= (or b!2403825 b!2403821) bm!146862))

(assert (= (or b!2403822 bm!146862) bm!146860))

(declare-fun m!2799107 () Bool)

(assert (=> b!2403819 m!2799107))

(declare-fun m!2799109 () Bool)

(assert (=> bm!146860 m!2799109))

(declare-fun m!2799111 () Bool)

(assert (=> bm!146861 m!2799111))

(assert (=> b!2403473 d!699900))

(declare-fun b!2403847 () Bool)

(declare-fun e!1531165 () Bool)

(declare-fun tp!764884 () Bool)

(declare-fun tp!764883 () Bool)

(assert (=> b!2403847 (= e!1531165 (and tp!764884 tp!764883))))

(assert (=> b!2403467 (= tp!764839 e!1531165)))

(declare-fun b!2403846 () Bool)

(assert (=> b!2403846 (= e!1531165 tp_is_empty!11505)))

(declare-fun b!2403848 () Bool)

(declare-fun tp!764882 () Bool)

(assert (=> b!2403848 (= e!1531165 tp!764882)))

(declare-fun b!2403849 () Bool)

(declare-fun tp!764880 () Bool)

(declare-fun tp!764881 () Bool)

(assert (=> b!2403849 (= e!1531165 (and tp!764880 tp!764881))))

(assert (= (and b!2403467 (is-ElementMatch!7046 (regOne!14604 r!13927))) b!2403846))

(assert (= (and b!2403467 (is-Concat!11682 (regOne!14604 r!13927))) b!2403847))

(assert (= (and b!2403467 (is-Star!7046 (regOne!14604 r!13927))) b!2403848))

(assert (= (and b!2403467 (is-Union!7046 (regOne!14604 r!13927))) b!2403849))

(declare-fun b!2403851 () Bool)

(declare-fun e!1531166 () Bool)

(declare-fun tp!764889 () Bool)

(declare-fun tp!764888 () Bool)

(assert (=> b!2403851 (= e!1531166 (and tp!764889 tp!764888))))

(assert (=> b!2403467 (= tp!764845 e!1531166)))

(declare-fun b!2403850 () Bool)

(assert (=> b!2403850 (= e!1531166 tp_is_empty!11505)))

(declare-fun b!2403852 () Bool)

(declare-fun tp!764887 () Bool)

(assert (=> b!2403852 (= e!1531166 tp!764887)))

(declare-fun b!2403853 () Bool)

(declare-fun tp!764885 () Bool)

(declare-fun tp!764886 () Bool)

(assert (=> b!2403853 (= e!1531166 (and tp!764885 tp!764886))))

(assert (= (and b!2403467 (is-ElementMatch!7046 (regTwo!14604 r!13927))) b!2403850))

(assert (= (and b!2403467 (is-Concat!11682 (regTwo!14604 r!13927))) b!2403851))

(assert (= (and b!2403467 (is-Star!7046 (regTwo!14604 r!13927))) b!2403852))

(assert (= (and b!2403467 (is-Union!7046 (regTwo!14604 r!13927))) b!2403853))

(declare-fun b!2403858 () Bool)

(declare-fun e!1531169 () Bool)

(declare-fun tp!764892 () Bool)

(assert (=> b!2403858 (= e!1531169 (and tp_is_empty!11505 tp!764892))))

(assert (=> b!2403471 (= tp!764838 e!1531169)))

(assert (= (and b!2403471 (is-Cons!28233 (t!208308 s!9460))) b!2403858))

(declare-fun b!2403860 () Bool)

(declare-fun e!1531170 () Bool)

(declare-fun tp!764897 () Bool)

(declare-fun tp!764896 () Bool)

(assert (=> b!2403860 (= e!1531170 (and tp!764897 tp!764896))))

(assert (=> b!2403465 (= tp!764841 e!1531170)))

(declare-fun b!2403859 () Bool)

(assert (=> b!2403859 (= e!1531170 tp_is_empty!11505)))

(declare-fun b!2403861 () Bool)

(declare-fun tp!764895 () Bool)

(assert (=> b!2403861 (= e!1531170 tp!764895)))

(declare-fun b!2403862 () Bool)

(declare-fun tp!764893 () Bool)

(declare-fun tp!764894 () Bool)

(assert (=> b!2403862 (= e!1531170 (and tp!764893 tp!764894))))

(assert (= (and b!2403465 (is-ElementMatch!7046 (regOne!14605 r!13927))) b!2403859))

(assert (= (and b!2403465 (is-Concat!11682 (regOne!14605 r!13927))) b!2403860))

(assert (= (and b!2403465 (is-Star!7046 (regOne!14605 r!13927))) b!2403861))

(assert (= (and b!2403465 (is-Union!7046 (regOne!14605 r!13927))) b!2403862))

(declare-fun b!2403864 () Bool)

(declare-fun e!1531171 () Bool)

(declare-fun tp!764902 () Bool)

(declare-fun tp!764901 () Bool)

(assert (=> b!2403864 (= e!1531171 (and tp!764902 tp!764901))))

(assert (=> b!2403465 (= tp!764844 e!1531171)))

(declare-fun b!2403863 () Bool)

(assert (=> b!2403863 (= e!1531171 tp_is_empty!11505)))

(declare-fun b!2403865 () Bool)

(declare-fun tp!764900 () Bool)

(assert (=> b!2403865 (= e!1531171 tp!764900)))

(declare-fun b!2403866 () Bool)

(declare-fun tp!764898 () Bool)

(declare-fun tp!764899 () Bool)

(assert (=> b!2403866 (= e!1531171 (and tp!764898 tp!764899))))

(assert (= (and b!2403465 (is-ElementMatch!7046 (regTwo!14605 r!13927))) b!2403863))

(assert (= (and b!2403465 (is-Concat!11682 (regTwo!14605 r!13927))) b!2403864))

(assert (= (and b!2403465 (is-Star!7046 (regTwo!14605 r!13927))) b!2403865))

(assert (= (and b!2403465 (is-Union!7046 (regTwo!14605 r!13927))) b!2403866))

(declare-fun b!2403870 () Bool)

(declare-fun e!1531174 () Bool)

(declare-fun tp!764907 () Bool)

(declare-fun tp!764906 () Bool)

(assert (=> b!2403870 (= e!1531174 (and tp!764907 tp!764906))))

(assert (=> b!2403464 (= tp!764840 e!1531174)))

(declare-fun b!2403869 () Bool)

(assert (=> b!2403869 (= e!1531174 tp_is_empty!11505)))

(declare-fun b!2403871 () Bool)

(declare-fun tp!764905 () Bool)

(assert (=> b!2403871 (= e!1531174 tp!764905)))

(declare-fun b!2403872 () Bool)

(declare-fun tp!764903 () Bool)

(declare-fun tp!764904 () Bool)

(assert (=> b!2403872 (= e!1531174 (and tp!764903 tp!764904))))

(assert (= (and b!2403464 (is-ElementMatch!7046 (reg!7375 r!13927))) b!2403869))

(assert (= (and b!2403464 (is-Concat!11682 (reg!7375 r!13927))) b!2403870))

(assert (= (and b!2403464 (is-Star!7046 (reg!7375 r!13927))) b!2403871))

(assert (= (and b!2403464 (is-Union!7046 (reg!7375 r!13927))) b!2403872))

(declare-fun b!2403878 () Bool)

(declare-fun e!1531175 () Bool)

(declare-fun tp!764912 () Bool)

(declare-fun tp!764911 () Bool)

(assert (=> b!2403878 (= e!1531175 (and tp!764912 tp!764911))))

(assert (=> b!2403463 (= tp!764843 e!1531175)))

(declare-fun b!2403877 () Bool)

(assert (=> b!2403877 (= e!1531175 tp_is_empty!11505)))

(declare-fun b!2403879 () Bool)

(declare-fun tp!764910 () Bool)

(assert (=> b!2403879 (= e!1531175 tp!764910)))

(declare-fun b!2403880 () Bool)

(declare-fun tp!764908 () Bool)

(declare-fun tp!764909 () Bool)

(assert (=> b!2403880 (= e!1531175 (and tp!764908 tp!764909))))

(assert (= (and b!2403463 (is-ElementMatch!7046 (h!33633 l!9164))) b!2403877))

(assert (= (and b!2403463 (is-Concat!11682 (h!33633 l!9164))) b!2403878))

(assert (= (and b!2403463 (is-Star!7046 (h!33633 l!9164))) b!2403879))

(assert (= (and b!2403463 (is-Union!7046 (h!33633 l!9164))) b!2403880))

(declare-fun b!2403885 () Bool)

(declare-fun e!1531178 () Bool)

(declare-fun tp!764917 () Bool)

(declare-fun tp!764918 () Bool)

(assert (=> b!2403885 (= e!1531178 (and tp!764917 tp!764918))))

(assert (=> b!2403463 (= tp!764842 e!1531178)))

(assert (= (and b!2403463 (is-Cons!28232 (t!208307 l!9164))) b!2403885))

(declare-fun b_lambda!74375 () Bool)

(assert (= b_lambda!74373 (or start!235686 b_lambda!74375)))

(declare-fun bs!463233 () Bool)

(declare-fun d!699902 () Bool)

(assert (= bs!463233 (and d!699902 start!235686)))

(assert (=> bs!463233 (= (dynLambda!12158 lambda!90372 (h!33633 l!9164)) (validRegex!2771 (h!33633 l!9164)))))

(assert (=> bs!463233 m!2798917))

(assert (=> b!2403776 d!699902))

(push 1)

(assert (not b!2403700))

(assert (not b!2403701))

(assert (not bs!463233))

(assert (not b!2403879))

(assert (not b!2403771))

(assert (not d!699894))

(assert (not b!2403658))

(assert (not b!2403872))

(assert (not b!2403757))

(assert (not b!2403693))

(assert tp_is_empty!11505)

(assert (not b!2403851))

(assert (not bm!146861))

(assert (not b!2403766))

(assert (not b!2403762))

(assert (not b!2403885))

(assert (not b!2403862))

(assert (not b!2403670))

(assert (not b!2403754))

(assert (not b!2403848))

(assert (not b!2403849))

(assert (not b!2403697))

(assert (not bm!146844))

(assert (not d!699880))

(assert (not bm!146843))

(assert (not b!2403880))

(assert (not b!2403860))

(assert (not b!2403852))

(assert (not b!2403665))

(assert (not b!2403758))

(assert (not b!2403864))

(assert (not d!699872))

(assert (not bm!146850))

(assert (not b!2403777))

(assert (not b!2403763))

(assert (not b!2403770))

(assert (not b!2403696))

(assert (not b!2403663))

(assert (not b!2403597))

(assert (not d!699882))

(assert (not b!2403695))

(assert (not b!2403819))

(assert (not d!699886))

(assert (not b_lambda!74375))

(assert (not b!2403751))

(assert (not b!2403692))

(assert (not d!699888))

(assert (not b!2403798))

(assert (not bm!146860))

(assert (not b!2403664))

(assert (not b!2403603))

(assert (not bm!146858))

(assert (not b!2403865))

(assert (not bm!146857))

(assert (not b!2403853))

(assert (not b!2403866))

(assert (not b!2403765))

(assert (not b!2403662))

(assert (not b!2403767))

(assert (not b!2403861))

(assert (not b!2403847))

(assert (not b!2403858))

(assert (not b!2403871))

(assert (not b!2403759))

(assert (not b!2403878))

(assert (not b!2403752))

(assert (not b!2403870))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

