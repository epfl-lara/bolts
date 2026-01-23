; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!233842 () Bool)

(assert start!233842)

(declare-fun b!2383027 () Bool)

(assert (=> b!2383027 true))

(assert (=> b!2383027 true))

(declare-fun lambda!88860 () Int)

(declare-fun lambda!88859 () Int)

(assert (=> b!2383027 (not (= lambda!88860 lambda!88859))))

(assert (=> b!2383027 true))

(assert (=> b!2383027 true))

(declare-fun b!2383019 () Bool)

(declare-fun e!1519766 () Bool)

(declare-fun e!1519768 () Bool)

(assert (=> b!2383019 (= e!1519766 (not e!1519768))))

(declare-fun res!1012115 () Bool)

(assert (=> b!2383019 (=> res!1012115 e!1519768)))

(declare-datatypes ((C!14130 0))(
  ( (C!14131 (val!8307 Int)) )
))
(declare-datatypes ((Regex!6986 0))(
  ( (ElementMatch!6986 (c!378890 C!14130)) (Concat!11622 (regOne!14484 Regex!6986) (regTwo!14484 Regex!6986)) (EmptyExpr!6986) (Star!6986 (reg!7315 Regex!6986)) (EmptyLang!6986) (Union!6986 (regOne!14485 Regex!6986) (regTwo!14485 Regex!6986)) )
))
(declare-fun r!13927 () Regex!6986)

(assert (=> b!2383019 (= res!1012115 (not (is-Concat!11622 r!13927)))))

(declare-fun lt!868744 () Bool)

(declare-fun lt!868750 () Bool)

(assert (=> b!2383019 (= lt!868744 lt!868750)))

(declare-datatypes ((List!28210 0))(
  ( (Nil!28112) (Cons!28112 (h!33513 C!14130) (t!208187 List!28210)) )
))
(declare-fun s!9460 () List!28210)

(declare-fun matchRSpec!835 (Regex!6986 List!28210) Bool)

(assert (=> b!2383019 (= lt!868750 (matchRSpec!835 r!13927 s!9460))))

(declare-fun matchR!3103 (Regex!6986 List!28210) Bool)

(assert (=> b!2383019 (= lt!868744 (matchR!3103 r!13927 s!9460))))

(declare-datatypes ((Unit!41051 0))(
  ( (Unit!41052) )
))
(declare-fun lt!868748 () Unit!41051)

(declare-fun mainMatchTheorem!835 (Regex!6986 List!28210) Unit!41051)

(assert (=> b!2383019 (= lt!868748 (mainMatchTheorem!835 r!13927 s!9460))))

(declare-fun b!2383020 () Bool)

(declare-fun e!1519763 () Bool)

(declare-fun tp!760458 () Bool)

(declare-fun tp!760461 () Bool)

(assert (=> b!2383020 (= e!1519763 (and tp!760458 tp!760461))))

(declare-fun b!2383021 () Bool)

(declare-fun e!1519756 () Bool)

(assert (=> b!2383021 e!1519756))

(declare-fun res!1012119 () Bool)

(assert (=> b!2383021 (=> (not res!1012119) (not e!1519756))))

(declare-fun call!144827 () Bool)

(assert (=> b!2383021 (= res!1012119 call!144827)))

(declare-datatypes ((tuple2!27836 0))(
  ( (tuple2!27837 (_1!16459 List!28210) (_2!16459 List!28210)) )
))
(declare-fun lt!868739 () tuple2!27836)

(declare-fun lt!868749 () Unit!41051)

(declare-fun lt!868753 () Regex!6986)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!17 (Regex!6986 Regex!6986 List!28210 List!28210 List!28210) Unit!41051)

(assert (=> b!2383021 (= lt!868749 (lemmaFindSeparationIsDefinedThenConcatMatches!17 lt!868753 EmptyExpr!6986 (_1!16459 lt!868739) (_2!16459 lt!868739) s!9460))))

(declare-datatypes ((Option!5529 0))(
  ( (None!5528) (Some!5528 (v!30936 tuple2!27836)) )
))
(declare-fun lt!868755 () Option!5529)

(declare-fun get!8578 (Option!5529) tuple2!27836)

(assert (=> b!2383021 (= lt!868739 (get!8578 lt!868755))))

(declare-fun e!1519755 () Unit!41051)

(declare-fun Unit!41053 () Unit!41051)

(assert (=> b!2383021 (= e!1519755 Unit!41053)))

(declare-fun b!2383022 () Bool)

(assert (=> b!2383022 (= e!1519756 false)))

(declare-fun c!378888 () Bool)

(declare-fun call!144825 () List!28210)

(declare-fun bm!144820 () Bool)

(declare-fun ++!6941 (List!28210 List!28210) List!28210)

(assert (=> bm!144820 (= call!144825 (++!6941 (ite c!378888 s!9460 (_1!16459 lt!868739)) (ite c!378888 Nil!28112 (_2!16459 lt!868739))))))

(declare-fun b!2383023 () Bool)

(declare-fun res!1012113 () Bool)

(assert (=> b!2383023 (=> (not res!1012113) (not e!1519766))))

(declare-datatypes ((List!28211 0))(
  ( (Nil!28113) (Cons!28113 (h!33514 Regex!6986) (t!208188 List!28211)) )
))
(declare-fun l!9164 () List!28211)

(declare-fun generalisedConcat!87 (List!28211) Regex!6986)

(assert (=> b!2383023 (= res!1012113 (= r!13927 (generalisedConcat!87 l!9164)))))

(declare-fun lt!868740 () Regex!6986)

(declare-fun bm!144821 () Bool)

(assert (=> bm!144821 (= call!144827 (matchR!3103 (ite c!378888 lt!868740 (Concat!11622 lt!868753 EmptyExpr!6986)) (ite c!378888 s!9460 call!144825)))))

(declare-fun b!2383024 () Bool)

(declare-fun e!1519764 () Unit!41051)

(declare-fun Unit!41054 () Unit!41051)

(assert (=> b!2383024 (= e!1519764 Unit!41054)))

(declare-fun call!144830 () Option!5529)

(assert (=> b!2383024 (= lt!868755 call!144830)))

(declare-fun lt!868754 () Bool)

(declare-fun call!144828 () Bool)

(assert (=> b!2383024 (= lt!868754 call!144828)))

(declare-fun c!378889 () Bool)

(assert (=> b!2383024 (= c!378889 lt!868754)))

(declare-fun lt!868746 () Unit!41051)

(assert (=> b!2383024 (= lt!868746 e!1519755)))

(declare-fun res!1012120 () Bool)

(assert (=> b!2383024 (= res!1012120 (not lt!868754))))

(declare-fun e!1519760 () Bool)

(assert (=> b!2383024 (=> (not res!1012120) (not e!1519760))))

(assert (=> b!2383024 e!1519760))

(declare-fun call!144826 () Option!5529)

(declare-fun bm!144822 () Bool)

(declare-fun isDefined!4357 (Option!5529) Bool)

(assert (=> bm!144822 (= call!144828 (isDefined!4357 (ite c!378888 call!144826 lt!868755)))))

(declare-fun b!2383025 () Bool)

(declare-fun Unit!41055 () Unit!41051)

(assert (=> b!2383025 (= e!1519764 Unit!41055)))

(declare-fun lt!868756 () Unit!41051)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!35 (Regex!6986 Regex!6986 List!28210 List!28210) Unit!41051)

(assert (=> b!2383025 (= lt!868756 (lemmaTwoRegexMatchThenConcatMatchesConcatString!35 lt!868753 EmptyExpr!6986 s!9460 Nil!28112))))

(assert (=> b!2383025 (= lt!868740 (Concat!11622 lt!868753 EmptyExpr!6986))))

(declare-fun res!1012114 () Bool)

(assert (=> b!2383025 (= res!1012114 (matchR!3103 lt!868740 call!144825))))

(declare-fun e!1519757 () Bool)

(assert (=> b!2383025 (=> (not res!1012114) (not e!1519757))))

(assert (=> b!2383025 e!1519757))

(declare-fun lt!868743 () Unit!41051)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!17 (Regex!6986 Regex!6986 List!28210) Unit!41051)

(assert (=> b!2383025 (= lt!868743 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!17 lt!868753 EmptyExpr!6986 s!9460))))

(declare-fun res!1012123 () Bool)

(declare-fun call!144829 () Bool)

(assert (=> b!2383025 (= res!1012123 call!144829)))

(declare-fun e!1519759 () Bool)

(assert (=> b!2383025 (=> (not res!1012123) (not e!1519759))))

(assert (=> b!2383025 e!1519759))

(declare-fun b!2383026 () Bool)

(declare-fun e!1519758 () Bool)

(declare-fun tp!760463 () Bool)

(declare-fun tp!760460 () Bool)

(assert (=> b!2383026 (= e!1519758 (and tp!760463 tp!760460))))

(declare-fun res!1012121 () Bool)

(assert (=> start!233842 (=> (not res!1012121) (not e!1519766))))

(declare-fun lambda!88858 () Int)

(declare-fun forall!5620 (List!28211 Int) Bool)

(assert (=> start!233842 (= res!1012121 (forall!5620 l!9164 lambda!88858))))

(assert (=> start!233842 e!1519766))

(assert (=> start!233842 e!1519758))

(assert (=> start!233842 e!1519763))

(declare-fun e!1519765 () Bool)

(assert (=> start!233842 e!1519765))

(declare-fun e!1519762 () Bool)

(assert (=> b!2383027 (= e!1519768 e!1519762)))

(declare-fun res!1012117 () Bool)

(assert (=> b!2383027 (=> res!1012117 e!1519762)))

(declare-fun lt!868742 () Bool)

(assert (=> b!2383027 (= res!1012117 (not (= lt!868750 lt!868742)))))

(declare-fun Exists!1048 (Int) Bool)

(assert (=> b!2383027 (= (Exists!1048 lambda!88859) (Exists!1048 lambda!88860))))

(declare-fun lt!868751 () Unit!41051)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!387 (Regex!6986 Regex!6986 List!28210) Unit!41051)

(assert (=> b!2383027 (= lt!868751 (lemmaExistCutMatchRandMatchRSpecEquivalent!387 (regOne!14484 r!13927) (regTwo!14484 r!13927) s!9460))))

(assert (=> b!2383027 (= lt!868742 (Exists!1048 lambda!88859))))

(declare-fun findConcatSeparation!637 (Regex!6986 Regex!6986 List!28210 List!28210 List!28210) Option!5529)

(assert (=> b!2383027 (= lt!868742 (isDefined!4357 (findConcatSeparation!637 (regOne!14484 r!13927) (regTwo!14484 r!13927) Nil!28112 s!9460 s!9460)))))

(declare-fun lt!868747 () Unit!41051)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!637 (Regex!6986 Regex!6986 List!28210) Unit!41051)

(assert (=> b!2383027 (= lt!868747 (lemmaFindConcatSeparationEquivalentToExists!637 (regOne!14484 r!13927) (regTwo!14484 r!13927) s!9460))))

(declare-fun b!2383028 () Bool)

(declare-fun tp!760459 () Bool)

(declare-fun tp!760464 () Bool)

(assert (=> b!2383028 (= e!1519763 (and tp!760459 tp!760464))))

(declare-fun b!2383029 () Bool)

(assert (=> b!2383029 (= e!1519760 (not call!144829))))

(declare-fun b!2383030 () Bool)

(declare-fun e!1519761 () Bool)

(declare-fun validRegex!2711 (Regex!6986) Bool)

(assert (=> b!2383030 (= e!1519761 (validRegex!2711 lt!868753))))

(declare-fun lt!868752 () Unit!41051)

(assert (=> b!2383030 (= lt!868752 e!1519764)))

(assert (=> b!2383030 (= c!378888 (matchR!3103 lt!868753 s!9460))))

(declare-fun head!5205 (List!28211) Regex!6986)

(assert (=> b!2383030 (= lt!868753 (head!5205 l!9164))))

(declare-fun bm!144823 () Bool)

(declare-fun lt!868741 () Regex!6986)

(assert (=> bm!144823 (= call!144826 (findConcatSeparation!637 lt!868753 lt!868741 Nil!28112 s!9460 s!9460))))

(declare-fun b!2383031 () Bool)

(declare-fun tp_is_empty!11385 () Bool)

(assert (=> b!2383031 (= e!1519763 tp_is_empty!11385)))

(declare-fun b!2383032 () Bool)

(declare-fun tp!760462 () Bool)

(assert (=> b!2383032 (= e!1519763 tp!760462)))

(declare-fun bm!144824 () Bool)

(assert (=> bm!144824 (= call!144830 (findConcatSeparation!637 lt!868753 EmptyExpr!6986 Nil!28112 s!9460 s!9460))))

(declare-fun b!2383033 () Bool)

(assert (=> b!2383033 (= e!1519759 call!144828)))

(declare-fun b!2383034 () Bool)

(declare-fun tp!760465 () Bool)

(assert (=> b!2383034 (= e!1519765 (and tp_is_empty!11385 tp!760465))))

(declare-fun b!2383035 () Bool)

(declare-fun e!1519767 () Bool)

(assert (=> b!2383035 (= e!1519767 e!1519761)))

(declare-fun res!1012116 () Bool)

(assert (=> b!2383035 (=> res!1012116 e!1519761)))

(assert (=> b!2383035 (= res!1012116 (not (= lt!868741 EmptyExpr!6986)))))

(declare-fun lt!868745 () List!28211)

(assert (=> b!2383035 (= lt!868741 (generalisedConcat!87 lt!868745))))

(declare-fun bm!144825 () Bool)

(assert (=> bm!144825 (= call!144829 (isDefined!4357 (ite c!378888 call!144830 call!144826)))))

(declare-fun b!2383036 () Bool)

(declare-fun Unit!41056 () Unit!41051)

(assert (=> b!2383036 (= e!1519755 Unit!41056)))

(declare-fun b!2383037 () Bool)

(assert (=> b!2383037 (= e!1519762 e!1519767)))

(declare-fun res!1012122 () Bool)

(assert (=> b!2383037 (=> res!1012122 e!1519767)))

(declare-fun isEmpty!16068 (List!28211) Bool)

(assert (=> b!2383037 (= res!1012122 (not (isEmpty!16068 lt!868745)))))

(declare-fun tail!3475 (List!28211) List!28211)

(assert (=> b!2383037 (= lt!868745 (tail!3475 l!9164))))

(declare-fun b!2383038 () Bool)

(declare-fun res!1012118 () Bool)

(assert (=> b!2383038 (=> res!1012118 e!1519762)))

(assert (=> b!2383038 (= res!1012118 (isEmpty!16068 l!9164))))

(declare-fun b!2383039 () Bool)

(assert (=> b!2383039 (= e!1519757 call!144827)))

(assert (= (and start!233842 res!1012121) b!2383023))

(assert (= (and b!2383023 res!1012113) b!2383019))

(assert (= (and b!2383019 (not res!1012115)) b!2383027))

(assert (= (and b!2383027 (not res!1012117)) b!2383038))

(assert (= (and b!2383038 (not res!1012118)) b!2383037))

(assert (= (and b!2383037 (not res!1012122)) b!2383035))

(assert (= (and b!2383035 (not res!1012116)) b!2383030))

(assert (= (and b!2383030 c!378888) b!2383025))

(assert (= (and b!2383030 (not c!378888)) b!2383024))

(assert (= (and b!2383025 res!1012114) b!2383039))

(assert (= (and b!2383025 res!1012123) b!2383033))

(assert (= (and b!2383024 c!378889) b!2383021))

(assert (= (and b!2383024 (not c!378889)) b!2383036))

(assert (= (and b!2383021 res!1012119) b!2383022))

(assert (= (and b!2383024 res!1012120) b!2383029))

(assert (= (or b!2383033 b!2383029) bm!144823))

(assert (= (or b!2383025 b!2383024) bm!144824))

(assert (= (or b!2383025 b!2383021) bm!144820))

(assert (= (or b!2383039 b!2383021) bm!144821))

(assert (= (or b!2383033 b!2383024) bm!144822))

(assert (= (or b!2383025 b!2383029) bm!144825))

(assert (= (and start!233842 (is-Cons!28113 l!9164)) b!2383026))

(assert (= (and start!233842 (is-ElementMatch!6986 r!13927)) b!2383031))

(assert (= (and start!233842 (is-Concat!11622 r!13927)) b!2383028))

(assert (= (and start!233842 (is-Star!6986 r!13927)) b!2383032))

(assert (= (and start!233842 (is-Union!6986 r!13927)) b!2383020))

(assert (= (and start!233842 (is-Cons!28112 s!9460)) b!2383034))

(declare-fun m!2786165 () Bool)

(assert (=> bm!144822 m!2786165))

(declare-fun m!2786167 () Bool)

(assert (=> b!2383023 m!2786167))

(declare-fun m!2786169 () Bool)

(assert (=> b!2383019 m!2786169))

(declare-fun m!2786171 () Bool)

(assert (=> b!2383019 m!2786171))

(declare-fun m!2786173 () Bool)

(assert (=> b!2383019 m!2786173))

(declare-fun m!2786175 () Bool)

(assert (=> b!2383027 m!2786175))

(declare-fun m!2786177 () Bool)

(assert (=> b!2383027 m!2786177))

(declare-fun m!2786179 () Bool)

(assert (=> b!2383027 m!2786179))

(declare-fun m!2786181 () Bool)

(assert (=> b!2383027 m!2786181))

(assert (=> b!2383027 m!2786179))

(assert (=> b!2383027 m!2786177))

(declare-fun m!2786183 () Bool)

(assert (=> b!2383027 m!2786183))

(declare-fun m!2786185 () Bool)

(assert (=> b!2383027 m!2786185))

(declare-fun m!2786187 () Bool)

(assert (=> bm!144821 m!2786187))

(declare-fun m!2786189 () Bool)

(assert (=> b!2383035 m!2786189))

(declare-fun m!2786191 () Bool)

(assert (=> b!2383037 m!2786191))

(declare-fun m!2786193 () Bool)

(assert (=> b!2383037 m!2786193))

(declare-fun m!2786195 () Bool)

(assert (=> start!233842 m!2786195))

(declare-fun m!2786197 () Bool)

(assert (=> bm!144825 m!2786197))

(declare-fun m!2786199 () Bool)

(assert (=> b!2383021 m!2786199))

(declare-fun m!2786201 () Bool)

(assert (=> b!2383021 m!2786201))

(declare-fun m!2786203 () Bool)

(assert (=> bm!144824 m!2786203))

(declare-fun m!2786205 () Bool)

(assert (=> b!2383038 m!2786205))

(declare-fun m!2786207 () Bool)

(assert (=> b!2383025 m!2786207))

(declare-fun m!2786209 () Bool)

(assert (=> b!2383025 m!2786209))

(declare-fun m!2786211 () Bool)

(assert (=> b!2383025 m!2786211))

(declare-fun m!2786213 () Bool)

(assert (=> b!2383030 m!2786213))

(declare-fun m!2786215 () Bool)

(assert (=> b!2383030 m!2786215))

(declare-fun m!2786217 () Bool)

(assert (=> b!2383030 m!2786217))

(declare-fun m!2786219 () Bool)

(assert (=> bm!144820 m!2786219))

(declare-fun m!2786221 () Bool)

(assert (=> bm!144823 m!2786221))

(push 1)

(assert (not start!233842))

(assert (not bm!144820))

(assert (not b!2383025))

(assert (not b!2383032))

(assert tp_is_empty!11385)

(assert (not bm!144821))

(assert (not bm!144824))

(assert (not b!2383020))

(assert (not b!2383026))

(assert (not bm!144822))

(assert (not b!2383027))

(assert (not bm!144823))

(assert (not b!2383034))

(assert (not b!2383030))

(assert (not b!2383023))

(assert (not bm!144825))

(assert (not b!2383038))

(assert (not b!2383028))

(assert (not b!2383019))

(assert (not b!2383035))

(assert (not b!2383021))

(assert (not b!2383037))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!697034 () Bool)

(assert (=> d!697034 (matchR!3103 (Concat!11622 lt!868753 EmptyExpr!6986) (++!6941 s!9460 Nil!28112))))

(declare-fun lt!868813 () Unit!41051)

(declare-fun choose!13960 (Regex!6986 Regex!6986 List!28210 List!28210) Unit!41051)

(assert (=> d!697034 (= lt!868813 (choose!13960 lt!868753 EmptyExpr!6986 s!9460 Nil!28112))))

(declare-fun e!1519819 () Bool)

(assert (=> d!697034 e!1519819))

(declare-fun res!1012171 () Bool)

(assert (=> d!697034 (=> (not res!1012171) (not e!1519819))))

(assert (=> d!697034 (= res!1012171 (validRegex!2711 lt!868753))))

(assert (=> d!697034 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!35 lt!868753 EmptyExpr!6986 s!9460 Nil!28112) lt!868813)))

(declare-fun b!2383125 () Bool)

(assert (=> b!2383125 (= e!1519819 (validRegex!2711 EmptyExpr!6986))))

(assert (= (and d!697034 res!1012171) b!2383125))

(declare-fun m!2786281 () Bool)

(assert (=> d!697034 m!2786281))

(assert (=> d!697034 m!2786281))

(declare-fun m!2786283 () Bool)

(assert (=> d!697034 m!2786283))

(declare-fun m!2786285 () Bool)

(assert (=> d!697034 m!2786285))

(assert (=> d!697034 m!2786213))

(declare-fun m!2786287 () Bool)

(assert (=> b!2383125 m!2786287))

(assert (=> b!2383025 d!697034))

(declare-fun b!2383160 () Bool)

(declare-fun e!1519842 () Bool)

(declare-fun lt!868818 () Bool)

(assert (=> b!2383160 (= e!1519842 (not lt!868818))))

(declare-fun b!2383161 () Bool)

(declare-fun e!1519838 () Bool)

(declare-fun e!1519844 () Bool)

(assert (=> b!2383161 (= e!1519838 e!1519844)))

(declare-fun res!1012190 () Bool)

(assert (=> b!2383161 (=> (not res!1012190) (not e!1519844))))

(assert (=> b!2383161 (= res!1012190 (not lt!868818))))

(declare-fun b!2383162 () Bool)

(declare-fun e!1519839 () Bool)

(assert (=> b!2383162 (= e!1519844 e!1519839)))

(declare-fun res!1012197 () Bool)

(assert (=> b!2383162 (=> res!1012197 e!1519839)))

(declare-fun call!144851 () Bool)

(assert (=> b!2383162 (= res!1012197 call!144851)))

(declare-fun b!2383163 () Bool)

(declare-fun e!1519841 () Bool)

(declare-fun derivativeStep!1694 (Regex!6986 C!14130) Regex!6986)

(declare-fun head!5207 (List!28210) C!14130)

(declare-fun tail!3477 (List!28210) List!28210)

(assert (=> b!2383163 (= e!1519841 (matchR!3103 (derivativeStep!1694 lt!868740 (head!5207 call!144825)) (tail!3477 call!144825)))))

(declare-fun b!2383164 () Bool)

(declare-fun res!1012195 () Bool)

(declare-fun e!1519843 () Bool)

(assert (=> b!2383164 (=> (not res!1012195) (not e!1519843))))

(declare-fun isEmpty!16070 (List!28210) Bool)

(assert (=> b!2383164 (= res!1012195 (isEmpty!16070 (tail!3477 call!144825)))))

(declare-fun b!2383165 () Bool)

(declare-fun res!1012194 () Bool)

(assert (=> b!2383165 (=> res!1012194 e!1519839)))

(assert (=> b!2383165 (= res!1012194 (not (isEmpty!16070 (tail!3477 call!144825))))))

(declare-fun b!2383166 () Bool)

(declare-fun res!1012192 () Bool)

(assert (=> b!2383166 (=> res!1012192 e!1519838)))

(assert (=> b!2383166 (= res!1012192 (not (is-ElementMatch!6986 lt!868740)))))

(assert (=> b!2383166 (= e!1519842 e!1519838)))

(declare-fun b!2383168 () Bool)

(declare-fun res!1012196 () Bool)

(assert (=> b!2383168 (=> (not res!1012196) (not e!1519843))))

(assert (=> b!2383168 (= res!1012196 (not call!144851))))

(declare-fun b!2383169 () Bool)

(declare-fun nullable!2036 (Regex!6986) Bool)

(assert (=> b!2383169 (= e!1519841 (nullable!2036 lt!868740))))

(declare-fun b!2383170 () Bool)

(declare-fun e!1519840 () Bool)

(assert (=> b!2383170 (= e!1519840 (= lt!868818 call!144851))))

(declare-fun bm!144846 () Bool)

(assert (=> bm!144846 (= call!144851 (isEmpty!16070 call!144825))))

(declare-fun b!2383171 () Bool)

(assert (=> b!2383171 (= e!1519840 e!1519842)))

(declare-fun c!378907 () Bool)

(assert (=> b!2383171 (= c!378907 (is-EmptyLang!6986 lt!868740))))

(declare-fun b!2383172 () Bool)

(assert (=> b!2383172 (= e!1519839 (not (= (head!5207 call!144825) (c!378890 lt!868740))))))

(declare-fun b!2383173 () Bool)

(assert (=> b!2383173 (= e!1519843 (= (head!5207 call!144825) (c!378890 lt!868740)))))

(declare-fun d!697038 () Bool)

(assert (=> d!697038 e!1519840))

(declare-fun c!378906 () Bool)

(assert (=> d!697038 (= c!378906 (is-EmptyExpr!6986 lt!868740))))

(assert (=> d!697038 (= lt!868818 e!1519841)))

(declare-fun c!378908 () Bool)

(assert (=> d!697038 (= c!378908 (isEmpty!16070 call!144825))))

(assert (=> d!697038 (validRegex!2711 lt!868740)))

(assert (=> d!697038 (= (matchR!3103 lt!868740 call!144825) lt!868818)))

(declare-fun b!2383167 () Bool)

(declare-fun res!1012191 () Bool)

(assert (=> b!2383167 (=> res!1012191 e!1519838)))

(assert (=> b!2383167 (= res!1012191 e!1519843)))

(declare-fun res!1012193 () Bool)

(assert (=> b!2383167 (=> (not res!1012193) (not e!1519843))))

(assert (=> b!2383167 (= res!1012193 lt!868818)))

(assert (= (and d!697038 c!378908) b!2383169))

(assert (= (and d!697038 (not c!378908)) b!2383163))

(assert (= (and d!697038 c!378906) b!2383170))

(assert (= (and d!697038 (not c!378906)) b!2383171))

(assert (= (and b!2383171 c!378907) b!2383160))

(assert (= (and b!2383171 (not c!378907)) b!2383166))

(assert (= (and b!2383166 (not res!1012192)) b!2383167))

(assert (= (and b!2383167 res!1012193) b!2383168))

(assert (= (and b!2383168 res!1012196) b!2383164))

(assert (= (and b!2383164 res!1012195) b!2383173))

(assert (= (and b!2383167 (not res!1012191)) b!2383161))

(assert (= (and b!2383161 res!1012190) b!2383162))

(assert (= (and b!2383162 (not res!1012197)) b!2383165))

(assert (= (and b!2383165 (not res!1012194)) b!2383172))

(assert (= (or b!2383170 b!2383162 b!2383168) bm!144846))

(declare-fun m!2786289 () Bool)

(assert (=> b!2383169 m!2786289))

(declare-fun m!2786291 () Bool)

(assert (=> b!2383165 m!2786291))

(assert (=> b!2383165 m!2786291))

(declare-fun m!2786293 () Bool)

(assert (=> b!2383165 m!2786293))

(declare-fun m!2786295 () Bool)

(assert (=> b!2383173 m!2786295))

(assert (=> b!2383163 m!2786295))

(assert (=> b!2383163 m!2786295))

(declare-fun m!2786297 () Bool)

(assert (=> b!2383163 m!2786297))

(assert (=> b!2383163 m!2786291))

(assert (=> b!2383163 m!2786297))

(assert (=> b!2383163 m!2786291))

(declare-fun m!2786299 () Bool)

(assert (=> b!2383163 m!2786299))

(declare-fun m!2786301 () Bool)

(assert (=> d!697038 m!2786301))

(declare-fun m!2786303 () Bool)

(assert (=> d!697038 m!2786303))

(assert (=> bm!144846 m!2786301))

(assert (=> b!2383164 m!2786291))

(assert (=> b!2383164 m!2786291))

(assert (=> b!2383164 m!2786293))

(assert (=> b!2383172 m!2786295))

(assert (=> b!2383025 d!697038))

(declare-fun d!697040 () Bool)

(assert (=> d!697040 (isDefined!4357 (findConcatSeparation!637 lt!868753 EmptyExpr!6986 Nil!28112 s!9460 s!9460))))

(declare-fun lt!868821 () Unit!41051)

(declare-fun choose!13961 (Regex!6986 Regex!6986 List!28210) Unit!41051)

(assert (=> d!697040 (= lt!868821 (choose!13961 lt!868753 EmptyExpr!6986 s!9460))))

(assert (=> d!697040 (validRegex!2711 lt!868753)))

(assert (=> d!697040 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!17 lt!868753 EmptyExpr!6986 s!9460) lt!868821)))

(declare-fun bs!462015 () Bool)

(assert (= bs!462015 d!697040))

(assert (=> bs!462015 m!2786203))

(assert (=> bs!462015 m!2786203))

(declare-fun m!2786305 () Bool)

(assert (=> bs!462015 m!2786305))

(declare-fun m!2786307 () Bool)

(assert (=> bs!462015 m!2786307))

(assert (=> bs!462015 m!2786213))

(assert (=> b!2383025 d!697040))

(declare-fun d!697042 () Bool)

(declare-fun isEmpty!16071 (Option!5529) Bool)

(assert (=> d!697042 (= (isDefined!4357 (ite c!378888 call!144826 lt!868755)) (not (isEmpty!16071 (ite c!378888 call!144826 lt!868755))))))

(declare-fun bs!462016 () Bool)

(assert (= bs!462016 d!697042))

(declare-fun m!2786309 () Bool)

(assert (=> bs!462016 m!2786309))

(assert (=> bm!144822 d!697042))

(declare-fun bs!462018 () Bool)

(declare-fun d!697044 () Bool)

(assert (= bs!462018 (and d!697044 start!233842)))

(declare-fun lambda!88877 () Int)

(assert (=> bs!462018 (= lambda!88877 lambda!88858)))

(declare-fun b!2383218 () Bool)

(declare-fun e!1519873 () Bool)

(assert (=> b!2383218 (= e!1519873 (isEmpty!16068 (t!208188 lt!868745)))))

(declare-fun b!2383219 () Bool)

(declare-fun e!1519876 () Bool)

(declare-fun lt!868825 () Regex!6986)

(assert (=> b!2383219 (= e!1519876 (= lt!868825 (head!5205 lt!868745)))))

(declare-fun e!1519871 () Bool)

(assert (=> d!697044 e!1519871))

(declare-fun res!1012207 () Bool)

(assert (=> d!697044 (=> (not res!1012207) (not e!1519871))))

(assert (=> d!697044 (= res!1012207 (validRegex!2711 lt!868825))))

(declare-fun e!1519875 () Regex!6986)

(assert (=> d!697044 (= lt!868825 e!1519875)))

(declare-fun c!378927 () Bool)

(assert (=> d!697044 (= c!378927 e!1519873)))

(declare-fun res!1012206 () Bool)

(assert (=> d!697044 (=> (not res!1012206) (not e!1519873))))

(assert (=> d!697044 (= res!1012206 (is-Cons!28113 lt!868745))))

(assert (=> d!697044 (forall!5620 lt!868745 lambda!88877)))

(assert (=> d!697044 (= (generalisedConcat!87 lt!868745) lt!868825)))

(declare-fun b!2383220 () Bool)

(declare-fun e!1519872 () Regex!6986)

(assert (=> b!2383220 (= e!1519872 EmptyExpr!6986)))

(declare-fun b!2383221 () Bool)

(assert (=> b!2383221 (= e!1519872 (Concat!11622 (h!33514 lt!868745) (generalisedConcat!87 (t!208188 lt!868745))))))

(declare-fun b!2383222 () Bool)

(declare-fun e!1519874 () Bool)

(assert (=> b!2383222 (= e!1519874 e!1519876)))

(declare-fun c!378930 () Bool)

(assert (=> b!2383222 (= c!378930 (isEmpty!16068 (tail!3475 lt!868745)))))

(declare-fun b!2383223 () Bool)

(assert (=> b!2383223 (= e!1519871 e!1519874)))

(declare-fun c!378929 () Bool)

(assert (=> b!2383223 (= c!378929 (isEmpty!16068 lt!868745))))

(declare-fun b!2383224 () Bool)

(assert (=> b!2383224 (= e!1519875 (h!33514 lt!868745))))

(declare-fun b!2383225 () Bool)

(declare-fun isConcat!56 (Regex!6986) Bool)

(assert (=> b!2383225 (= e!1519876 (isConcat!56 lt!868825))))

(declare-fun b!2383226 () Bool)

(declare-fun isEmptyExpr!56 (Regex!6986) Bool)

(assert (=> b!2383226 (= e!1519874 (isEmptyExpr!56 lt!868825))))

(declare-fun b!2383227 () Bool)

(assert (=> b!2383227 (= e!1519875 e!1519872)))

(declare-fun c!378928 () Bool)

(assert (=> b!2383227 (= c!378928 (is-Cons!28113 lt!868745))))

(assert (= (and d!697044 res!1012206) b!2383218))

(assert (= (and d!697044 c!378927) b!2383224))

(assert (= (and d!697044 (not c!378927)) b!2383227))

(assert (= (and b!2383227 c!378928) b!2383221))

(assert (= (and b!2383227 (not c!378928)) b!2383220))

(assert (= (and d!697044 res!1012207) b!2383223))

(assert (= (and b!2383223 c!378929) b!2383226))

(assert (= (and b!2383223 (not c!378929)) b!2383222))

(assert (= (and b!2383222 c!378930) b!2383219))

(assert (= (and b!2383222 (not c!378930)) b!2383225))

(declare-fun m!2786325 () Bool)

(assert (=> b!2383226 m!2786325))

(declare-fun m!2786327 () Bool)

(assert (=> b!2383222 m!2786327))

(assert (=> b!2383222 m!2786327))

(declare-fun m!2786329 () Bool)

(assert (=> b!2383222 m!2786329))

(assert (=> b!2383223 m!2786191))

(declare-fun m!2786331 () Bool)

(assert (=> b!2383219 m!2786331))

(declare-fun m!2786333 () Bool)

(assert (=> b!2383225 m!2786333))

(declare-fun m!2786335 () Bool)

(assert (=> d!697044 m!2786335))

(declare-fun m!2786337 () Bool)

(assert (=> d!697044 m!2786337))

(declare-fun m!2786339 () Bool)

(assert (=> b!2383218 m!2786339))

(declare-fun m!2786341 () Bool)

(assert (=> b!2383221 m!2786341))

(assert (=> b!2383035 d!697044))

(declare-fun b!2383228 () Bool)

(declare-fun e!1519881 () Bool)

(declare-fun lt!868826 () Bool)

(assert (=> b!2383228 (= e!1519881 (not lt!868826))))

(declare-fun b!2383229 () Bool)

(declare-fun e!1519877 () Bool)

(declare-fun e!1519883 () Bool)

(assert (=> b!2383229 (= e!1519877 e!1519883)))

(declare-fun res!1012208 () Bool)

(assert (=> b!2383229 (=> (not res!1012208) (not e!1519883))))

(assert (=> b!2383229 (= res!1012208 (not lt!868826))))

(declare-fun b!2383230 () Bool)

(declare-fun e!1519878 () Bool)

(assert (=> b!2383230 (= e!1519883 e!1519878)))

(declare-fun res!1012215 () Bool)

(assert (=> b!2383230 (=> res!1012215 e!1519878)))

(declare-fun call!144852 () Bool)

(assert (=> b!2383230 (= res!1012215 call!144852)))

(declare-fun e!1519880 () Bool)

(declare-fun b!2383231 () Bool)

(assert (=> b!2383231 (= e!1519880 (matchR!3103 (derivativeStep!1694 (ite c!378888 lt!868740 (Concat!11622 lt!868753 EmptyExpr!6986)) (head!5207 (ite c!378888 s!9460 call!144825))) (tail!3477 (ite c!378888 s!9460 call!144825))))))

(declare-fun b!2383232 () Bool)

(declare-fun res!1012213 () Bool)

(declare-fun e!1519882 () Bool)

(assert (=> b!2383232 (=> (not res!1012213) (not e!1519882))))

(assert (=> b!2383232 (= res!1012213 (isEmpty!16070 (tail!3477 (ite c!378888 s!9460 call!144825))))))

(declare-fun b!2383233 () Bool)

(declare-fun res!1012212 () Bool)

(assert (=> b!2383233 (=> res!1012212 e!1519878)))

(assert (=> b!2383233 (= res!1012212 (not (isEmpty!16070 (tail!3477 (ite c!378888 s!9460 call!144825)))))))

(declare-fun b!2383234 () Bool)

(declare-fun res!1012210 () Bool)

(assert (=> b!2383234 (=> res!1012210 e!1519877)))

(assert (=> b!2383234 (= res!1012210 (not (is-ElementMatch!6986 (ite c!378888 lt!868740 (Concat!11622 lt!868753 EmptyExpr!6986)))))))

(assert (=> b!2383234 (= e!1519881 e!1519877)))

(declare-fun b!2383236 () Bool)

(declare-fun res!1012214 () Bool)

(assert (=> b!2383236 (=> (not res!1012214) (not e!1519882))))

(assert (=> b!2383236 (= res!1012214 (not call!144852))))

(declare-fun b!2383237 () Bool)

(assert (=> b!2383237 (= e!1519880 (nullable!2036 (ite c!378888 lt!868740 (Concat!11622 lt!868753 EmptyExpr!6986))))))

(declare-fun b!2383238 () Bool)

(declare-fun e!1519879 () Bool)

(assert (=> b!2383238 (= e!1519879 (= lt!868826 call!144852))))

(declare-fun bm!144847 () Bool)

(assert (=> bm!144847 (= call!144852 (isEmpty!16070 (ite c!378888 s!9460 call!144825)))))

(declare-fun b!2383239 () Bool)

(assert (=> b!2383239 (= e!1519879 e!1519881)))

(declare-fun c!378932 () Bool)

(assert (=> b!2383239 (= c!378932 (is-EmptyLang!6986 (ite c!378888 lt!868740 (Concat!11622 lt!868753 EmptyExpr!6986))))))

(declare-fun b!2383240 () Bool)

(assert (=> b!2383240 (= e!1519878 (not (= (head!5207 (ite c!378888 s!9460 call!144825)) (c!378890 (ite c!378888 lt!868740 (Concat!11622 lt!868753 EmptyExpr!6986))))))))

(declare-fun b!2383241 () Bool)

(assert (=> b!2383241 (= e!1519882 (= (head!5207 (ite c!378888 s!9460 call!144825)) (c!378890 (ite c!378888 lt!868740 (Concat!11622 lt!868753 EmptyExpr!6986)))))))

(declare-fun d!697048 () Bool)

(assert (=> d!697048 e!1519879))

(declare-fun c!378931 () Bool)

(assert (=> d!697048 (= c!378931 (is-EmptyExpr!6986 (ite c!378888 lt!868740 (Concat!11622 lt!868753 EmptyExpr!6986))))))

(assert (=> d!697048 (= lt!868826 e!1519880)))

(declare-fun c!378933 () Bool)

(assert (=> d!697048 (= c!378933 (isEmpty!16070 (ite c!378888 s!9460 call!144825)))))

(assert (=> d!697048 (validRegex!2711 (ite c!378888 lt!868740 (Concat!11622 lt!868753 EmptyExpr!6986)))))

(assert (=> d!697048 (= (matchR!3103 (ite c!378888 lt!868740 (Concat!11622 lt!868753 EmptyExpr!6986)) (ite c!378888 s!9460 call!144825)) lt!868826)))

(declare-fun b!2383235 () Bool)

(declare-fun res!1012209 () Bool)

(assert (=> b!2383235 (=> res!1012209 e!1519877)))

(assert (=> b!2383235 (= res!1012209 e!1519882)))

(declare-fun res!1012211 () Bool)

(assert (=> b!2383235 (=> (not res!1012211) (not e!1519882))))

(assert (=> b!2383235 (= res!1012211 lt!868826)))

(assert (= (and d!697048 c!378933) b!2383237))

(assert (= (and d!697048 (not c!378933)) b!2383231))

(assert (= (and d!697048 c!378931) b!2383238))

(assert (= (and d!697048 (not c!378931)) b!2383239))

(assert (= (and b!2383239 c!378932) b!2383228))

(assert (= (and b!2383239 (not c!378932)) b!2383234))

(assert (= (and b!2383234 (not res!1012210)) b!2383235))

(assert (= (and b!2383235 res!1012211) b!2383236))

(assert (= (and b!2383236 res!1012214) b!2383232))

(assert (= (and b!2383232 res!1012213) b!2383241))

(assert (= (and b!2383235 (not res!1012209)) b!2383229))

(assert (= (and b!2383229 res!1012208) b!2383230))

(assert (= (and b!2383230 (not res!1012215)) b!2383233))

(assert (= (and b!2383233 (not res!1012212)) b!2383240))

(assert (= (or b!2383238 b!2383230 b!2383236) bm!144847))

(declare-fun m!2786343 () Bool)

(assert (=> b!2383237 m!2786343))

(declare-fun m!2786345 () Bool)

(assert (=> b!2383233 m!2786345))

(assert (=> b!2383233 m!2786345))

(declare-fun m!2786347 () Bool)

(assert (=> b!2383233 m!2786347))

(declare-fun m!2786349 () Bool)

(assert (=> b!2383241 m!2786349))

(assert (=> b!2383231 m!2786349))

(assert (=> b!2383231 m!2786349))

(declare-fun m!2786351 () Bool)

(assert (=> b!2383231 m!2786351))

(assert (=> b!2383231 m!2786345))

(assert (=> b!2383231 m!2786351))

(assert (=> b!2383231 m!2786345))

(declare-fun m!2786353 () Bool)

(assert (=> b!2383231 m!2786353))

(declare-fun m!2786355 () Bool)

(assert (=> d!697048 m!2786355))

(declare-fun m!2786357 () Bool)

(assert (=> d!697048 m!2786357))

(assert (=> bm!144847 m!2786355))

(assert (=> b!2383232 m!2786345))

(assert (=> b!2383232 m!2786345))

(assert (=> b!2383232 m!2786347))

(assert (=> b!2383240 m!2786349))

(assert (=> bm!144821 d!697048))

(declare-fun b!2383263 () Bool)

(declare-fun lt!868837 () Unit!41051)

(declare-fun lt!868838 () Unit!41051)

(assert (=> b!2383263 (= lt!868837 lt!868838)))

(assert (=> b!2383263 (= (++!6941 (++!6941 Nil!28112 (Cons!28112 (h!33513 s!9460) Nil!28112)) (t!208187 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!583 (List!28210 C!14130 List!28210 List!28210) Unit!41051)

(assert (=> b!2383263 (= lt!868838 (lemmaMoveElementToOtherListKeepsConcatEq!583 Nil!28112 (h!33513 s!9460) (t!208187 s!9460) s!9460))))

(declare-fun e!1519897 () Option!5529)

(assert (=> b!2383263 (= e!1519897 (findConcatSeparation!637 lt!868753 EmptyExpr!6986 (++!6941 Nil!28112 (Cons!28112 (h!33513 s!9460) Nil!28112)) (t!208187 s!9460) s!9460))))

(declare-fun d!697050 () Bool)

(declare-fun e!1519901 () Bool)

(assert (=> d!697050 e!1519901))

(declare-fun res!1012232 () Bool)

(assert (=> d!697050 (=> res!1012232 e!1519901)))

(declare-fun e!1519899 () Bool)

(assert (=> d!697050 (= res!1012232 e!1519899)))

(declare-fun res!1012230 () Bool)

(assert (=> d!697050 (=> (not res!1012230) (not e!1519899))))

(declare-fun lt!868836 () Option!5529)

(assert (=> d!697050 (= res!1012230 (isDefined!4357 lt!868836))))

(declare-fun e!1519898 () Option!5529)

(assert (=> d!697050 (= lt!868836 e!1519898)))

(declare-fun c!378938 () Bool)

(declare-fun e!1519900 () Bool)

(assert (=> d!697050 (= c!378938 e!1519900)))

(declare-fun res!1012229 () Bool)

(assert (=> d!697050 (=> (not res!1012229) (not e!1519900))))

(assert (=> d!697050 (= res!1012229 (matchR!3103 lt!868753 Nil!28112))))

(assert (=> d!697050 (validRegex!2711 lt!868753)))

(assert (=> d!697050 (= (findConcatSeparation!637 lt!868753 EmptyExpr!6986 Nil!28112 s!9460 s!9460) lt!868836)))

(declare-fun b!2383264 () Bool)

(assert (=> b!2383264 (= e!1519901 (not (isDefined!4357 lt!868836)))))

(declare-fun b!2383265 () Bool)

(assert (=> b!2383265 (= e!1519898 (Some!5528 (tuple2!27837 Nil!28112 s!9460)))))

(declare-fun b!2383266 () Bool)

(declare-fun res!1012231 () Bool)

(assert (=> b!2383266 (=> (not res!1012231) (not e!1519899))))

(assert (=> b!2383266 (= res!1012231 (matchR!3103 EmptyExpr!6986 (_2!16459 (get!8578 lt!868836))))))

(declare-fun b!2383267 () Bool)

(assert (=> b!2383267 (= e!1519899 (= (++!6941 (_1!16459 (get!8578 lt!868836)) (_2!16459 (get!8578 lt!868836))) s!9460))))

(declare-fun b!2383268 () Bool)

(assert (=> b!2383268 (= e!1519900 (matchR!3103 EmptyExpr!6986 s!9460))))

(declare-fun b!2383269 () Bool)

(declare-fun res!1012233 () Bool)

(assert (=> b!2383269 (=> (not res!1012233) (not e!1519899))))

(assert (=> b!2383269 (= res!1012233 (matchR!3103 lt!868753 (_1!16459 (get!8578 lt!868836))))))

(declare-fun b!2383270 () Bool)

(assert (=> b!2383270 (= e!1519898 e!1519897)))

(declare-fun c!378939 () Bool)

(assert (=> b!2383270 (= c!378939 (is-Nil!28112 s!9460))))

(declare-fun b!2383271 () Bool)

(assert (=> b!2383271 (= e!1519897 None!5528)))

(assert (= (and d!697050 res!1012229) b!2383268))

(assert (= (and d!697050 c!378938) b!2383265))

(assert (= (and d!697050 (not c!378938)) b!2383270))

(assert (= (and b!2383270 c!378939) b!2383271))

(assert (= (and b!2383270 (not c!378939)) b!2383263))

(assert (= (and d!697050 res!1012230) b!2383269))

(assert (= (and b!2383269 res!1012233) b!2383266))

(assert (= (and b!2383266 res!1012231) b!2383267))

(assert (= (and d!697050 (not res!1012232)) b!2383264))

(declare-fun m!2786367 () Bool)

(assert (=> b!2383268 m!2786367))

(declare-fun m!2786369 () Bool)

(assert (=> b!2383267 m!2786369))

(declare-fun m!2786371 () Bool)

(assert (=> b!2383267 m!2786371))

(declare-fun m!2786373 () Bool)

(assert (=> d!697050 m!2786373))

(declare-fun m!2786375 () Bool)

(assert (=> d!697050 m!2786375))

(assert (=> d!697050 m!2786213))

(declare-fun m!2786377 () Bool)

(assert (=> b!2383263 m!2786377))

(assert (=> b!2383263 m!2786377))

(declare-fun m!2786379 () Bool)

(assert (=> b!2383263 m!2786379))

(declare-fun m!2786381 () Bool)

(assert (=> b!2383263 m!2786381))

(assert (=> b!2383263 m!2786377))

(declare-fun m!2786383 () Bool)

(assert (=> b!2383263 m!2786383))

(assert (=> b!2383264 m!2786373))

(assert (=> b!2383269 m!2786369))

(declare-fun m!2786385 () Bool)

(assert (=> b!2383269 m!2786385))

(assert (=> b!2383266 m!2786369))

(declare-fun m!2786387 () Bool)

(assert (=> b!2383266 m!2786387))

(assert (=> bm!144824 d!697050))

(declare-fun d!697054 () Bool)

(assert (=> d!697054 (= (isEmpty!16068 l!9164) (is-Nil!28113 l!9164))))

(assert (=> b!2383038 d!697054))

(declare-fun b!2383299 () Bool)

(declare-fun res!1012244 () Bool)

(declare-fun e!1519920 () Bool)

(assert (=> b!2383299 (=> (not res!1012244) (not e!1519920))))

(declare-fun call!144860 () Bool)

(assert (=> b!2383299 (= res!1012244 call!144860)))

(declare-fun e!1519926 () Bool)

(assert (=> b!2383299 (= e!1519926 e!1519920)))

(declare-fun b!2383300 () Bool)

(declare-fun e!1519923 () Bool)

(assert (=> b!2383300 (= e!1519923 call!144860)))

(declare-fun bm!144854 () Bool)

(declare-fun call!144861 () Bool)

(declare-fun c!378948 () Bool)

(assert (=> bm!144854 (= call!144861 (validRegex!2711 (ite c!378948 (regTwo!14485 lt!868753) (regOne!14484 lt!868753))))))

(declare-fun call!144859 () Bool)

(declare-fun c!378949 () Bool)

(declare-fun bm!144855 () Bool)

(assert (=> bm!144855 (= call!144859 (validRegex!2711 (ite c!378949 (reg!7315 lt!868753) (ite c!378948 (regOne!14485 lt!868753) (regTwo!14484 lt!868753)))))))

(declare-fun b!2383298 () Bool)

(declare-fun e!1519924 () Bool)

(assert (=> b!2383298 (= e!1519924 call!144859)))

(declare-fun d!697056 () Bool)

(declare-fun res!1012245 () Bool)

(declare-fun e!1519922 () Bool)

(assert (=> d!697056 (=> res!1012245 e!1519922)))

(assert (=> d!697056 (= res!1012245 (is-ElementMatch!6986 lt!868753))))

(assert (=> d!697056 (= (validRegex!2711 lt!868753) e!1519922)))

(declare-fun b!2383301 () Bool)

(assert (=> b!2383301 (= e!1519920 call!144861)))

(declare-fun b!2383302 () Bool)

(declare-fun e!1519921 () Bool)

(assert (=> b!2383302 (= e!1519922 e!1519921)))

(assert (=> b!2383302 (= c!378949 (is-Star!6986 lt!868753))))

(declare-fun b!2383303 () Bool)

(declare-fun res!1012248 () Bool)

(declare-fun e!1519925 () Bool)

(assert (=> b!2383303 (=> res!1012248 e!1519925)))

(assert (=> b!2383303 (= res!1012248 (not (is-Concat!11622 lt!868753)))))

(assert (=> b!2383303 (= e!1519926 e!1519925)))

(declare-fun b!2383304 () Bool)

(assert (=> b!2383304 (= e!1519925 e!1519923)))

(declare-fun res!1012247 () Bool)

(assert (=> b!2383304 (=> (not res!1012247) (not e!1519923))))

(assert (=> b!2383304 (= res!1012247 call!144861)))

(declare-fun b!2383305 () Bool)

(assert (=> b!2383305 (= e!1519921 e!1519926)))

(assert (=> b!2383305 (= c!378948 (is-Union!6986 lt!868753))))

(declare-fun bm!144856 () Bool)

(assert (=> bm!144856 (= call!144860 call!144859)))

(declare-fun b!2383306 () Bool)

(assert (=> b!2383306 (= e!1519921 e!1519924)))

(declare-fun res!1012246 () Bool)

(assert (=> b!2383306 (= res!1012246 (not (nullable!2036 (reg!7315 lt!868753))))))

(assert (=> b!2383306 (=> (not res!1012246) (not e!1519924))))

(assert (= (and d!697056 (not res!1012245)) b!2383302))

(assert (= (and b!2383302 c!378949) b!2383306))

(assert (= (and b!2383302 (not c!378949)) b!2383305))

(assert (= (and b!2383306 res!1012246) b!2383298))

(assert (= (and b!2383305 c!378948) b!2383299))

(assert (= (and b!2383305 (not c!378948)) b!2383303))

(assert (= (and b!2383299 res!1012244) b!2383301))

(assert (= (and b!2383303 (not res!1012248)) b!2383304))

(assert (= (and b!2383304 res!1012247) b!2383300))

(assert (= (or b!2383299 b!2383300) bm!144856))

(assert (= (or b!2383301 b!2383304) bm!144854))

(assert (= (or b!2383298 bm!144856) bm!144855))

(declare-fun m!2786389 () Bool)

(assert (=> bm!144854 m!2786389))

(declare-fun m!2786391 () Bool)

(assert (=> bm!144855 m!2786391))

(declare-fun m!2786393 () Bool)

(assert (=> b!2383306 m!2786393))

(assert (=> b!2383030 d!697056))

(declare-fun b!2383321 () Bool)

(declare-fun e!1519937 () Bool)

(declare-fun lt!868841 () Bool)

(assert (=> b!2383321 (= e!1519937 (not lt!868841))))

(declare-fun b!2383322 () Bool)

(declare-fun e!1519933 () Bool)

(declare-fun e!1519939 () Bool)

(assert (=> b!2383322 (= e!1519933 e!1519939)))

(declare-fun res!1012259 () Bool)

(assert (=> b!2383322 (=> (not res!1012259) (not e!1519939))))

(assert (=> b!2383322 (= res!1012259 (not lt!868841))))

(declare-fun b!2383323 () Bool)

(declare-fun e!1519934 () Bool)

(assert (=> b!2383323 (= e!1519939 e!1519934)))

(declare-fun res!1012266 () Bool)

(assert (=> b!2383323 (=> res!1012266 e!1519934)))

(declare-fun call!144862 () Bool)

(assert (=> b!2383323 (= res!1012266 call!144862)))

(declare-fun b!2383324 () Bool)

(declare-fun e!1519936 () Bool)

(assert (=> b!2383324 (= e!1519936 (matchR!3103 (derivativeStep!1694 lt!868753 (head!5207 s!9460)) (tail!3477 s!9460)))))

(declare-fun b!2383325 () Bool)

(declare-fun res!1012264 () Bool)

(declare-fun e!1519938 () Bool)

(assert (=> b!2383325 (=> (not res!1012264) (not e!1519938))))

(assert (=> b!2383325 (= res!1012264 (isEmpty!16070 (tail!3477 s!9460)))))

(declare-fun b!2383326 () Bool)

(declare-fun res!1012263 () Bool)

(assert (=> b!2383326 (=> res!1012263 e!1519934)))

(assert (=> b!2383326 (= res!1012263 (not (isEmpty!16070 (tail!3477 s!9460))))))

(declare-fun b!2383327 () Bool)

(declare-fun res!1012261 () Bool)

(assert (=> b!2383327 (=> res!1012261 e!1519933)))

(assert (=> b!2383327 (= res!1012261 (not (is-ElementMatch!6986 lt!868753)))))

(assert (=> b!2383327 (= e!1519937 e!1519933)))

(declare-fun b!2383329 () Bool)

(declare-fun res!1012265 () Bool)

(assert (=> b!2383329 (=> (not res!1012265) (not e!1519938))))

(assert (=> b!2383329 (= res!1012265 (not call!144862))))

(declare-fun b!2383330 () Bool)

(assert (=> b!2383330 (= e!1519936 (nullable!2036 lt!868753))))

(declare-fun b!2383331 () Bool)

(declare-fun e!1519935 () Bool)

(assert (=> b!2383331 (= e!1519935 (= lt!868841 call!144862))))

(declare-fun bm!144857 () Bool)

(assert (=> bm!144857 (= call!144862 (isEmpty!16070 s!9460))))

(declare-fun b!2383332 () Bool)

(assert (=> b!2383332 (= e!1519935 e!1519937)))

(declare-fun c!378953 () Bool)

(assert (=> b!2383332 (= c!378953 (is-EmptyLang!6986 lt!868753))))

(declare-fun b!2383333 () Bool)

(assert (=> b!2383333 (= e!1519934 (not (= (head!5207 s!9460) (c!378890 lt!868753))))))

(declare-fun b!2383334 () Bool)

(assert (=> b!2383334 (= e!1519938 (= (head!5207 s!9460) (c!378890 lt!868753)))))

(declare-fun d!697058 () Bool)

(assert (=> d!697058 e!1519935))

(declare-fun c!378952 () Bool)

(assert (=> d!697058 (= c!378952 (is-EmptyExpr!6986 lt!868753))))

(assert (=> d!697058 (= lt!868841 e!1519936)))

(declare-fun c!378954 () Bool)

(assert (=> d!697058 (= c!378954 (isEmpty!16070 s!9460))))

(assert (=> d!697058 (validRegex!2711 lt!868753)))

(assert (=> d!697058 (= (matchR!3103 lt!868753 s!9460) lt!868841)))

(declare-fun b!2383328 () Bool)

(declare-fun res!1012260 () Bool)

(assert (=> b!2383328 (=> res!1012260 e!1519933)))

(assert (=> b!2383328 (= res!1012260 e!1519938)))

(declare-fun res!1012262 () Bool)

(assert (=> b!2383328 (=> (not res!1012262) (not e!1519938))))

(assert (=> b!2383328 (= res!1012262 lt!868841)))

(assert (= (and d!697058 c!378954) b!2383330))

(assert (= (and d!697058 (not c!378954)) b!2383324))

(assert (= (and d!697058 c!378952) b!2383331))

(assert (= (and d!697058 (not c!378952)) b!2383332))

(assert (= (and b!2383332 c!378953) b!2383321))

(assert (= (and b!2383332 (not c!378953)) b!2383327))

(assert (= (and b!2383327 (not res!1012261)) b!2383328))

(assert (= (and b!2383328 res!1012262) b!2383329))

(assert (= (and b!2383329 res!1012265) b!2383325))

(assert (= (and b!2383325 res!1012264) b!2383334))

(assert (= (and b!2383328 (not res!1012260)) b!2383322))

(assert (= (and b!2383322 res!1012259) b!2383323))

(assert (= (and b!2383323 (not res!1012266)) b!2383326))

(assert (= (and b!2383326 (not res!1012263)) b!2383333))

(assert (= (or b!2383331 b!2383323 b!2383329) bm!144857))

(declare-fun m!2786395 () Bool)

(assert (=> b!2383330 m!2786395))

(declare-fun m!2786397 () Bool)

(assert (=> b!2383326 m!2786397))

(assert (=> b!2383326 m!2786397))

(declare-fun m!2786399 () Bool)

(assert (=> b!2383326 m!2786399))

(declare-fun m!2786401 () Bool)

(assert (=> b!2383334 m!2786401))

(assert (=> b!2383324 m!2786401))

(assert (=> b!2383324 m!2786401))

(declare-fun m!2786403 () Bool)

(assert (=> b!2383324 m!2786403))

(assert (=> b!2383324 m!2786397))

(assert (=> b!2383324 m!2786403))

(assert (=> b!2383324 m!2786397))

(declare-fun m!2786405 () Bool)

(assert (=> b!2383324 m!2786405))

(declare-fun m!2786407 () Bool)

(assert (=> d!697058 m!2786407))

(assert (=> d!697058 m!2786213))

(assert (=> bm!144857 m!2786407))

(assert (=> b!2383325 m!2786397))

(assert (=> b!2383325 m!2786397))

(assert (=> b!2383325 m!2786399))

(assert (=> b!2383333 m!2786401))

(assert (=> b!2383030 d!697058))

(declare-fun d!697060 () Bool)

(assert (=> d!697060 (= (head!5205 l!9164) (h!33514 l!9164))))

(assert (=> b!2383030 d!697060))

(declare-fun d!697062 () Bool)

(assert (=> d!697062 (= (isEmpty!16068 lt!868745) (is-Nil!28113 lt!868745))))

(assert (=> b!2383037 d!697062))

(declare-fun d!697064 () Bool)

(assert (=> d!697064 (= (tail!3475 l!9164) (t!208188 l!9164))))

(assert (=> b!2383037 d!697064))

(declare-fun bs!462019 () Bool)

(declare-fun d!697066 () Bool)

(assert (= bs!462019 (and d!697066 start!233842)))

(declare-fun lambda!88878 () Int)

(assert (=> bs!462019 (= lambda!88878 lambda!88858)))

(declare-fun bs!462020 () Bool)

(assert (= bs!462020 (and d!697066 d!697044)))

(assert (=> bs!462020 (= lambda!88878 lambda!88877)))

(declare-fun b!2383341 () Bool)

(declare-fun e!1519946 () Bool)

(assert (=> b!2383341 (= e!1519946 (isEmpty!16068 (t!208188 l!9164)))))

(declare-fun b!2383342 () Bool)

(declare-fun e!1519949 () Bool)

(declare-fun lt!868842 () Regex!6986)

(assert (=> b!2383342 (= e!1519949 (= lt!868842 (head!5205 l!9164)))))

(declare-fun e!1519944 () Bool)

(assert (=> d!697066 e!1519944))

(declare-fun res!1012274 () Bool)

(assert (=> d!697066 (=> (not res!1012274) (not e!1519944))))

(assert (=> d!697066 (= res!1012274 (validRegex!2711 lt!868842))))

(declare-fun e!1519948 () Regex!6986)

(assert (=> d!697066 (= lt!868842 e!1519948)))

(declare-fun c!378955 () Bool)

(assert (=> d!697066 (= c!378955 e!1519946)))

(declare-fun res!1012273 () Bool)

(assert (=> d!697066 (=> (not res!1012273) (not e!1519946))))

(assert (=> d!697066 (= res!1012273 (is-Cons!28113 l!9164))))

(assert (=> d!697066 (forall!5620 l!9164 lambda!88878)))

(assert (=> d!697066 (= (generalisedConcat!87 l!9164) lt!868842)))

(declare-fun b!2383343 () Bool)

(declare-fun e!1519945 () Regex!6986)

(assert (=> b!2383343 (= e!1519945 EmptyExpr!6986)))

(declare-fun b!2383344 () Bool)

(assert (=> b!2383344 (= e!1519945 (Concat!11622 (h!33514 l!9164) (generalisedConcat!87 (t!208188 l!9164))))))

(declare-fun b!2383345 () Bool)

(declare-fun e!1519947 () Bool)

(assert (=> b!2383345 (= e!1519947 e!1519949)))

(declare-fun c!378958 () Bool)

(assert (=> b!2383345 (= c!378958 (isEmpty!16068 (tail!3475 l!9164)))))

(declare-fun b!2383346 () Bool)

(assert (=> b!2383346 (= e!1519944 e!1519947)))

(declare-fun c!378957 () Bool)

(assert (=> b!2383346 (= c!378957 (isEmpty!16068 l!9164))))

(declare-fun b!2383347 () Bool)

(assert (=> b!2383347 (= e!1519948 (h!33514 l!9164))))

(declare-fun b!2383348 () Bool)

(assert (=> b!2383348 (= e!1519949 (isConcat!56 lt!868842))))

(declare-fun b!2383349 () Bool)

(assert (=> b!2383349 (= e!1519947 (isEmptyExpr!56 lt!868842))))

(declare-fun b!2383350 () Bool)

(assert (=> b!2383350 (= e!1519948 e!1519945)))

(declare-fun c!378956 () Bool)

(assert (=> b!2383350 (= c!378956 (is-Cons!28113 l!9164))))

(assert (= (and d!697066 res!1012273) b!2383341))

(assert (= (and d!697066 c!378955) b!2383347))

(assert (= (and d!697066 (not c!378955)) b!2383350))

(assert (= (and b!2383350 c!378956) b!2383344))

(assert (= (and b!2383350 (not c!378956)) b!2383343))

(assert (= (and d!697066 res!1012274) b!2383346))

(assert (= (and b!2383346 c!378957) b!2383349))

(assert (= (and b!2383346 (not c!378957)) b!2383345))

(assert (= (and b!2383345 c!378958) b!2383342))

(assert (= (and b!2383345 (not c!378958)) b!2383348))

(declare-fun m!2786409 () Bool)

(assert (=> b!2383349 m!2786409))

(assert (=> b!2383345 m!2786193))

(assert (=> b!2383345 m!2786193))

(declare-fun m!2786411 () Bool)

(assert (=> b!2383345 m!2786411))

(assert (=> b!2383346 m!2786205))

(assert (=> b!2383342 m!2786217))

(declare-fun m!2786413 () Bool)

(assert (=> b!2383348 m!2786413))

(declare-fun m!2786415 () Bool)

(assert (=> d!697066 m!2786415))

(declare-fun m!2786417 () Bool)

(assert (=> d!697066 m!2786417))

(declare-fun m!2786419 () Bool)

(assert (=> b!2383341 m!2786419))

(declare-fun m!2786421 () Bool)

(assert (=> b!2383344 m!2786421))

(assert (=> b!2383023 d!697066))

(declare-fun b!2383351 () Bool)

(declare-fun lt!868844 () Unit!41051)

(declare-fun lt!868845 () Unit!41051)

(assert (=> b!2383351 (= lt!868844 lt!868845)))

(assert (=> b!2383351 (= (++!6941 (++!6941 Nil!28112 (Cons!28112 (h!33513 s!9460) Nil!28112)) (t!208187 s!9460)) s!9460)))

(assert (=> b!2383351 (= lt!868845 (lemmaMoveElementToOtherListKeepsConcatEq!583 Nil!28112 (h!33513 s!9460) (t!208187 s!9460) s!9460))))

(declare-fun e!1519950 () Option!5529)

(assert (=> b!2383351 (= e!1519950 (findConcatSeparation!637 lt!868753 lt!868741 (++!6941 Nil!28112 (Cons!28112 (h!33513 s!9460) Nil!28112)) (t!208187 s!9460) s!9460))))

(declare-fun d!697068 () Bool)

(declare-fun e!1519954 () Bool)

(assert (=> d!697068 e!1519954))

(declare-fun res!1012278 () Bool)

(assert (=> d!697068 (=> res!1012278 e!1519954)))

(declare-fun e!1519952 () Bool)

(assert (=> d!697068 (= res!1012278 e!1519952)))

(declare-fun res!1012276 () Bool)

(assert (=> d!697068 (=> (not res!1012276) (not e!1519952))))

(declare-fun lt!868843 () Option!5529)

(assert (=> d!697068 (= res!1012276 (isDefined!4357 lt!868843))))

(declare-fun e!1519951 () Option!5529)

(assert (=> d!697068 (= lt!868843 e!1519951)))

(declare-fun c!378959 () Bool)

(declare-fun e!1519953 () Bool)

(assert (=> d!697068 (= c!378959 e!1519953)))

(declare-fun res!1012275 () Bool)

(assert (=> d!697068 (=> (not res!1012275) (not e!1519953))))

(assert (=> d!697068 (= res!1012275 (matchR!3103 lt!868753 Nil!28112))))

(assert (=> d!697068 (validRegex!2711 lt!868753)))

(assert (=> d!697068 (= (findConcatSeparation!637 lt!868753 lt!868741 Nil!28112 s!9460 s!9460) lt!868843)))

(declare-fun b!2383352 () Bool)

(assert (=> b!2383352 (= e!1519954 (not (isDefined!4357 lt!868843)))))

(declare-fun b!2383353 () Bool)

(assert (=> b!2383353 (= e!1519951 (Some!5528 (tuple2!27837 Nil!28112 s!9460)))))

(declare-fun b!2383354 () Bool)

(declare-fun res!1012277 () Bool)

(assert (=> b!2383354 (=> (not res!1012277) (not e!1519952))))

(assert (=> b!2383354 (= res!1012277 (matchR!3103 lt!868741 (_2!16459 (get!8578 lt!868843))))))

(declare-fun b!2383355 () Bool)

(assert (=> b!2383355 (= e!1519952 (= (++!6941 (_1!16459 (get!8578 lt!868843)) (_2!16459 (get!8578 lt!868843))) s!9460))))

(declare-fun b!2383356 () Bool)

(assert (=> b!2383356 (= e!1519953 (matchR!3103 lt!868741 s!9460))))

(declare-fun b!2383357 () Bool)

(declare-fun res!1012279 () Bool)

(assert (=> b!2383357 (=> (not res!1012279) (not e!1519952))))

(assert (=> b!2383357 (= res!1012279 (matchR!3103 lt!868753 (_1!16459 (get!8578 lt!868843))))))

(declare-fun b!2383358 () Bool)

(assert (=> b!2383358 (= e!1519951 e!1519950)))

(declare-fun c!378960 () Bool)

(assert (=> b!2383358 (= c!378960 (is-Nil!28112 s!9460))))

(declare-fun b!2383359 () Bool)

(assert (=> b!2383359 (= e!1519950 None!5528)))

(assert (= (and d!697068 res!1012275) b!2383356))

(assert (= (and d!697068 c!378959) b!2383353))

(assert (= (and d!697068 (not c!378959)) b!2383358))

(assert (= (and b!2383358 c!378960) b!2383359))

(assert (= (and b!2383358 (not c!378960)) b!2383351))

(assert (= (and d!697068 res!1012276) b!2383357))

(assert (= (and b!2383357 res!1012279) b!2383354))

(assert (= (and b!2383354 res!1012277) b!2383355))

(assert (= (and d!697068 (not res!1012278)) b!2383352))

(declare-fun m!2786423 () Bool)

(assert (=> b!2383356 m!2786423))

(declare-fun m!2786425 () Bool)

(assert (=> b!2383355 m!2786425))

(declare-fun m!2786427 () Bool)

(assert (=> b!2383355 m!2786427))

(declare-fun m!2786429 () Bool)

(assert (=> d!697068 m!2786429))

(assert (=> d!697068 m!2786375))

(assert (=> d!697068 m!2786213))

(assert (=> b!2383351 m!2786377))

(assert (=> b!2383351 m!2786377))

(assert (=> b!2383351 m!2786379))

(assert (=> b!2383351 m!2786381))

(assert (=> b!2383351 m!2786377))

(declare-fun m!2786431 () Bool)

(assert (=> b!2383351 m!2786431))

(assert (=> b!2383352 m!2786429))

(assert (=> b!2383357 m!2786425))

(declare-fun m!2786433 () Bool)

(assert (=> b!2383357 m!2786433))

(assert (=> b!2383354 m!2786425))

(declare-fun m!2786435 () Bool)

(assert (=> b!2383354 m!2786435))

(assert (=> bm!144823 d!697068))

(declare-fun b!2383369 () Bool)

(declare-fun e!1519959 () List!28210)

(assert (=> b!2383369 (= e!1519959 (Cons!28112 (h!33513 (ite c!378888 s!9460 (_1!16459 lt!868739))) (++!6941 (t!208187 (ite c!378888 s!9460 (_1!16459 lt!868739))) (ite c!378888 Nil!28112 (_2!16459 lt!868739)))))))

(declare-fun b!2383370 () Bool)

(declare-fun res!1012284 () Bool)

(declare-fun e!1519960 () Bool)

(assert (=> b!2383370 (=> (not res!1012284) (not e!1519960))))

(declare-fun lt!868848 () List!28210)

(declare-fun size!22173 (List!28210) Int)

(assert (=> b!2383370 (= res!1012284 (= (size!22173 lt!868848) (+ (size!22173 (ite c!378888 s!9460 (_1!16459 lt!868739))) (size!22173 (ite c!378888 Nil!28112 (_2!16459 lt!868739))))))))

(declare-fun b!2383368 () Bool)

(assert (=> b!2383368 (= e!1519959 (ite c!378888 Nil!28112 (_2!16459 lt!868739)))))

(declare-fun d!697070 () Bool)

(assert (=> d!697070 e!1519960))

(declare-fun res!1012285 () Bool)

(assert (=> d!697070 (=> (not res!1012285) (not e!1519960))))

(declare-fun content!3835 (List!28210) (Set C!14130))

(assert (=> d!697070 (= res!1012285 (= (content!3835 lt!868848) (set.union (content!3835 (ite c!378888 s!9460 (_1!16459 lt!868739))) (content!3835 (ite c!378888 Nil!28112 (_2!16459 lt!868739))))))))

(assert (=> d!697070 (= lt!868848 e!1519959)))

(declare-fun c!378963 () Bool)

(assert (=> d!697070 (= c!378963 (is-Nil!28112 (ite c!378888 s!9460 (_1!16459 lt!868739))))))

(assert (=> d!697070 (= (++!6941 (ite c!378888 s!9460 (_1!16459 lt!868739)) (ite c!378888 Nil!28112 (_2!16459 lt!868739))) lt!868848)))

(declare-fun b!2383371 () Bool)

(assert (=> b!2383371 (= e!1519960 (or (not (= (ite c!378888 Nil!28112 (_2!16459 lt!868739)) Nil!28112)) (= lt!868848 (ite c!378888 s!9460 (_1!16459 lt!868739)))))))

(assert (= (and d!697070 c!378963) b!2383368))

(assert (= (and d!697070 (not c!378963)) b!2383369))

(assert (= (and d!697070 res!1012285) b!2383370))

(assert (= (and b!2383370 res!1012284) b!2383371))

(declare-fun m!2786437 () Bool)

(assert (=> b!2383369 m!2786437))

(declare-fun m!2786439 () Bool)

(assert (=> b!2383370 m!2786439))

(declare-fun m!2786441 () Bool)

(assert (=> b!2383370 m!2786441))

(declare-fun m!2786443 () Bool)

(assert (=> b!2383370 m!2786443))

(declare-fun m!2786445 () Bool)

(assert (=> d!697070 m!2786445))

(declare-fun m!2786447 () Bool)

(assert (=> d!697070 m!2786447))

(declare-fun m!2786449 () Bool)

(assert (=> d!697070 m!2786449))

(assert (=> bm!144820 d!697070))

(declare-fun d!697072 () Bool)

(assert (=> d!697072 (= (isDefined!4357 (ite c!378888 call!144830 call!144826)) (not (isEmpty!16071 (ite c!378888 call!144830 call!144826))))))

(declare-fun bs!462021 () Bool)

(assert (= bs!462021 d!697072))

(declare-fun m!2786451 () Bool)

(assert (=> bs!462021 m!2786451))

(assert (=> bm!144825 d!697072))

(declare-fun d!697074 () Bool)

(assert (=> d!697074 (= (isDefined!4357 (findConcatSeparation!637 (regOne!14484 r!13927) (regTwo!14484 r!13927) Nil!28112 s!9460 s!9460)) (not (isEmpty!16071 (findConcatSeparation!637 (regOne!14484 r!13927) (regTwo!14484 r!13927) Nil!28112 s!9460 s!9460))))))

(declare-fun bs!462022 () Bool)

(assert (= bs!462022 d!697074))

(assert (=> bs!462022 m!2786177))

(declare-fun m!2786453 () Bool)

(assert (=> bs!462022 m!2786453))

(assert (=> b!2383027 d!697074))

(declare-fun d!697076 () Bool)

(declare-fun choose!13963 (Int) Bool)

(assert (=> d!697076 (= (Exists!1048 lambda!88860) (choose!13963 lambda!88860))))

(declare-fun bs!462023 () Bool)

(assert (= bs!462023 d!697076))

(declare-fun m!2786455 () Bool)

(assert (=> bs!462023 m!2786455))

(assert (=> b!2383027 d!697076))

(declare-fun bs!462024 () Bool)

(declare-fun d!697078 () Bool)

(assert (= bs!462024 (and d!697078 b!2383027)))

(declare-fun lambda!88881 () Int)

(assert (=> bs!462024 (= lambda!88881 lambda!88859)))

(assert (=> bs!462024 (not (= lambda!88881 lambda!88860))))

(assert (=> d!697078 true))

(assert (=> d!697078 true))

(assert (=> d!697078 true))

(assert (=> d!697078 (= (isDefined!4357 (findConcatSeparation!637 (regOne!14484 r!13927) (regTwo!14484 r!13927) Nil!28112 s!9460 s!9460)) (Exists!1048 lambda!88881))))

(declare-fun lt!868852 () Unit!41051)

(declare-fun choose!13964 (Regex!6986 Regex!6986 List!28210) Unit!41051)

(assert (=> d!697078 (= lt!868852 (choose!13964 (regOne!14484 r!13927) (regTwo!14484 r!13927) s!9460))))

(assert (=> d!697078 (validRegex!2711 (regOne!14484 r!13927))))

(assert (=> d!697078 (= (lemmaFindConcatSeparationEquivalentToExists!637 (regOne!14484 r!13927) (regTwo!14484 r!13927) s!9460) lt!868852)))

(declare-fun bs!462025 () Bool)

(assert (= bs!462025 d!697078))

(declare-fun m!2786473 () Bool)

(assert (=> bs!462025 m!2786473))

(declare-fun m!2786475 () Bool)

(assert (=> bs!462025 m!2786475))

(assert (=> bs!462025 m!2786177))

(assert (=> bs!462025 m!2786183))

(declare-fun m!2786477 () Bool)

(assert (=> bs!462025 m!2786477))

(assert (=> bs!462025 m!2786177))

(assert (=> b!2383027 d!697078))

(declare-fun bs!462027 () Bool)

(declare-fun d!697082 () Bool)

(assert (= bs!462027 (and d!697082 b!2383027)))

(declare-fun lambda!88886 () Int)

(assert (=> bs!462027 (= lambda!88886 lambda!88859)))

(assert (=> bs!462027 (not (= lambda!88886 lambda!88860))))

(declare-fun bs!462028 () Bool)

(assert (= bs!462028 (and d!697082 d!697078)))

(assert (=> bs!462028 (= lambda!88886 lambda!88881)))

(assert (=> d!697082 true))

(assert (=> d!697082 true))

(assert (=> d!697082 true))

(declare-fun lambda!88887 () Int)

(assert (=> bs!462027 (not (= lambda!88887 lambda!88859))))

(assert (=> bs!462027 (= lambda!88887 lambda!88860)))

(assert (=> bs!462028 (not (= lambda!88887 lambda!88881))))

(declare-fun bs!462029 () Bool)

(assert (= bs!462029 d!697082))

(assert (=> bs!462029 (not (= lambda!88887 lambda!88886))))

(assert (=> d!697082 true))

(assert (=> d!697082 true))

(assert (=> d!697082 true))

(assert (=> d!697082 (= (Exists!1048 lambda!88886) (Exists!1048 lambda!88887))))

(declare-fun lt!868858 () Unit!41051)

(declare-fun choose!13965 (Regex!6986 Regex!6986 List!28210) Unit!41051)

(assert (=> d!697082 (= lt!868858 (choose!13965 (regOne!14484 r!13927) (regTwo!14484 r!13927) s!9460))))

(assert (=> d!697082 (validRegex!2711 (regOne!14484 r!13927))))

(assert (=> d!697082 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!387 (regOne!14484 r!13927) (regTwo!14484 r!13927) s!9460) lt!868858)))

(declare-fun m!2786485 () Bool)

(assert (=> bs!462029 m!2786485))

(declare-fun m!2786487 () Bool)

(assert (=> bs!462029 m!2786487))

(declare-fun m!2786489 () Bool)

(assert (=> bs!462029 m!2786489))

(assert (=> bs!462029 m!2786473))

(assert (=> b!2383027 d!697082))

(declare-fun d!697086 () Bool)

(assert (=> d!697086 (= (Exists!1048 lambda!88859) (choose!13963 lambda!88859))))

(declare-fun bs!462030 () Bool)

(assert (= bs!462030 d!697086))

(declare-fun m!2786491 () Bool)

(assert (=> bs!462030 m!2786491))

(assert (=> b!2383027 d!697086))

(declare-fun b!2383398 () Bool)

(declare-fun lt!868860 () Unit!41051)

(declare-fun lt!868861 () Unit!41051)

(assert (=> b!2383398 (= lt!868860 lt!868861)))

(assert (=> b!2383398 (= (++!6941 (++!6941 Nil!28112 (Cons!28112 (h!33513 s!9460) Nil!28112)) (t!208187 s!9460)) s!9460)))

(assert (=> b!2383398 (= lt!868861 (lemmaMoveElementToOtherListKeepsConcatEq!583 Nil!28112 (h!33513 s!9460) (t!208187 s!9460) s!9460))))

(declare-fun e!1519974 () Option!5529)

(assert (=> b!2383398 (= e!1519974 (findConcatSeparation!637 (regOne!14484 r!13927) (regTwo!14484 r!13927) (++!6941 Nil!28112 (Cons!28112 (h!33513 s!9460) Nil!28112)) (t!208187 s!9460) s!9460))))

(declare-fun d!697088 () Bool)

(declare-fun e!1519978 () Bool)

(assert (=> d!697088 e!1519978))

(declare-fun res!1012309 () Bool)

(assert (=> d!697088 (=> res!1012309 e!1519978)))

(declare-fun e!1519976 () Bool)

(assert (=> d!697088 (= res!1012309 e!1519976)))

(declare-fun res!1012307 () Bool)

(assert (=> d!697088 (=> (not res!1012307) (not e!1519976))))

(declare-fun lt!868859 () Option!5529)

(assert (=> d!697088 (= res!1012307 (isDefined!4357 lt!868859))))

(declare-fun e!1519975 () Option!5529)

(assert (=> d!697088 (= lt!868859 e!1519975)))

(declare-fun c!378967 () Bool)

(declare-fun e!1519977 () Bool)

(assert (=> d!697088 (= c!378967 e!1519977)))

(declare-fun res!1012306 () Bool)

(assert (=> d!697088 (=> (not res!1012306) (not e!1519977))))

(assert (=> d!697088 (= res!1012306 (matchR!3103 (regOne!14484 r!13927) Nil!28112))))

(assert (=> d!697088 (validRegex!2711 (regOne!14484 r!13927))))

(assert (=> d!697088 (= (findConcatSeparation!637 (regOne!14484 r!13927) (regTwo!14484 r!13927) Nil!28112 s!9460 s!9460) lt!868859)))

(declare-fun b!2383399 () Bool)

(assert (=> b!2383399 (= e!1519978 (not (isDefined!4357 lt!868859)))))

(declare-fun b!2383400 () Bool)

(assert (=> b!2383400 (= e!1519975 (Some!5528 (tuple2!27837 Nil!28112 s!9460)))))

(declare-fun b!2383401 () Bool)

(declare-fun res!1012308 () Bool)

(assert (=> b!2383401 (=> (not res!1012308) (not e!1519976))))

(assert (=> b!2383401 (= res!1012308 (matchR!3103 (regTwo!14484 r!13927) (_2!16459 (get!8578 lt!868859))))))

(declare-fun b!2383402 () Bool)

(assert (=> b!2383402 (= e!1519976 (= (++!6941 (_1!16459 (get!8578 lt!868859)) (_2!16459 (get!8578 lt!868859))) s!9460))))

(declare-fun b!2383403 () Bool)

(assert (=> b!2383403 (= e!1519977 (matchR!3103 (regTwo!14484 r!13927) s!9460))))

(declare-fun b!2383404 () Bool)

(declare-fun res!1012310 () Bool)

(assert (=> b!2383404 (=> (not res!1012310) (not e!1519976))))

(assert (=> b!2383404 (= res!1012310 (matchR!3103 (regOne!14484 r!13927) (_1!16459 (get!8578 lt!868859))))))

(declare-fun b!2383405 () Bool)

(assert (=> b!2383405 (= e!1519975 e!1519974)))

(declare-fun c!378968 () Bool)

(assert (=> b!2383405 (= c!378968 (is-Nil!28112 s!9460))))

(declare-fun b!2383406 () Bool)

(assert (=> b!2383406 (= e!1519974 None!5528)))

(assert (= (and d!697088 res!1012306) b!2383403))

(assert (= (and d!697088 c!378967) b!2383400))

(assert (= (and d!697088 (not c!378967)) b!2383405))

(assert (= (and b!2383405 c!378968) b!2383406))

(assert (= (and b!2383405 (not c!378968)) b!2383398))

(assert (= (and d!697088 res!1012307) b!2383404))

(assert (= (and b!2383404 res!1012310) b!2383401))

(assert (= (and b!2383401 res!1012308) b!2383402))

(assert (= (and d!697088 (not res!1012309)) b!2383399))

(declare-fun m!2786493 () Bool)

(assert (=> b!2383403 m!2786493))

(declare-fun m!2786495 () Bool)

(assert (=> b!2383402 m!2786495))

(declare-fun m!2786497 () Bool)

(assert (=> b!2383402 m!2786497))

(declare-fun m!2786499 () Bool)

(assert (=> d!697088 m!2786499))

(declare-fun m!2786501 () Bool)

(assert (=> d!697088 m!2786501))

(assert (=> d!697088 m!2786473))

(assert (=> b!2383398 m!2786377))

(assert (=> b!2383398 m!2786377))

(assert (=> b!2383398 m!2786379))

(assert (=> b!2383398 m!2786381))

(assert (=> b!2383398 m!2786377))

(declare-fun m!2786503 () Bool)

(assert (=> b!2383398 m!2786503))

(assert (=> b!2383399 m!2786499))

(assert (=> b!2383404 m!2786495))

(declare-fun m!2786505 () Bool)

(assert (=> b!2383404 m!2786505))

(assert (=> b!2383401 m!2786495))

(declare-fun m!2786507 () Bool)

(assert (=> b!2383401 m!2786507))

(assert (=> b!2383027 d!697088))

(declare-fun bs!462031 () Bool)

(declare-fun b!2383470 () Bool)

(assert (= bs!462031 (and b!2383470 b!2383027)))

(declare-fun lambda!88894 () Int)

(assert (=> bs!462031 (not (= lambda!88894 lambda!88859))))

(declare-fun bs!462032 () Bool)

(assert (= bs!462032 (and b!2383470 d!697082)))

(assert (=> bs!462032 (not (= lambda!88894 lambda!88887))))

(assert (=> bs!462032 (not (= lambda!88894 lambda!88886))))

(assert (=> bs!462031 (not (= lambda!88894 lambda!88860))))

(declare-fun bs!462033 () Bool)

(assert (= bs!462033 (and b!2383470 d!697078)))

(assert (=> bs!462033 (not (= lambda!88894 lambda!88881))))

(assert (=> b!2383470 true))

(assert (=> b!2383470 true))

(declare-fun bs!462034 () Bool)

(declare-fun b!2383473 () Bool)

(assert (= bs!462034 (and b!2383473 b!2383470)))

(declare-fun lambda!88895 () Int)

(assert (=> bs!462034 (not (= lambda!88895 lambda!88894))))

(declare-fun bs!462035 () Bool)

(assert (= bs!462035 (and b!2383473 b!2383027)))

(assert (=> bs!462035 (not (= lambda!88895 lambda!88859))))

(declare-fun bs!462036 () Bool)

(assert (= bs!462036 (and b!2383473 d!697082)))

(assert (=> bs!462036 (= lambda!88895 lambda!88887)))

(assert (=> bs!462036 (not (= lambda!88895 lambda!88886))))

(assert (=> bs!462035 (= lambda!88895 lambda!88860)))

(declare-fun bs!462037 () Bool)

(assert (= bs!462037 (and b!2383473 d!697078)))

(assert (=> bs!462037 (not (= lambda!88895 lambda!88881))))

(assert (=> b!2383473 true))

(assert (=> b!2383473 true))

(declare-fun b!2383467 () Bool)

(declare-fun c!378988 () Bool)

(assert (=> b!2383467 (= c!378988 (is-Union!6986 r!13927))))

(declare-fun e!1520015 () Bool)

(declare-fun e!1520016 () Bool)

(assert (=> b!2383467 (= e!1520015 e!1520016)))

(declare-fun b!2383468 () Bool)

(assert (=> b!2383468 (= e!1520015 (= s!9460 (Cons!28112 (c!378890 r!13927) Nil!28112)))))

(declare-fun b!2383469 () Bool)

(declare-fun res!1012341 () Bool)

(declare-fun e!1520017 () Bool)

(assert (=> b!2383469 (=> res!1012341 e!1520017)))

(declare-fun call!144871 () Bool)

(assert (=> b!2383469 (= res!1012341 call!144871)))

(declare-fun e!1520014 () Bool)

(assert (=> b!2383469 (= e!1520014 e!1520017)))

(declare-fun d!697090 () Bool)

(declare-fun c!378987 () Bool)

(assert (=> d!697090 (= c!378987 (is-EmptyExpr!6986 r!13927))))

(declare-fun e!1520018 () Bool)

(assert (=> d!697090 (= (matchRSpec!835 r!13927 s!9460) e!1520018)))

(declare-fun call!144870 () Bool)

(assert (=> b!2383470 (= e!1520017 call!144870)))

(declare-fun b!2383471 () Bool)

(declare-fun e!1520019 () Bool)

(assert (=> b!2383471 (= e!1520019 (matchRSpec!835 (regTwo!14485 r!13927) s!9460))))

(declare-fun bm!144865 () Bool)

(assert (=> bm!144865 (= call!144871 (isEmpty!16070 s!9460))))

(declare-fun b!2383472 () Bool)

(assert (=> b!2383472 (= e!1520016 e!1520014)))

(declare-fun c!378986 () Bool)

(assert (=> b!2383472 (= c!378986 (is-Star!6986 r!13927))))

(assert (=> b!2383473 (= e!1520014 call!144870)))

(declare-fun b!2383474 () Bool)

(declare-fun c!378985 () Bool)

(assert (=> b!2383474 (= c!378985 (is-ElementMatch!6986 r!13927))))

(declare-fun e!1520013 () Bool)

(assert (=> b!2383474 (= e!1520013 e!1520015)))

(declare-fun b!2383475 () Bool)

(assert (=> b!2383475 (= e!1520016 e!1520019)))

(declare-fun res!1012340 () Bool)

(assert (=> b!2383475 (= res!1012340 (matchRSpec!835 (regOne!14485 r!13927) s!9460))))

(assert (=> b!2383475 (=> res!1012340 e!1520019)))

(declare-fun b!2383476 () Bool)

(assert (=> b!2383476 (= e!1520018 e!1520013)))

(declare-fun res!1012339 () Bool)

(assert (=> b!2383476 (= res!1012339 (not (is-EmptyLang!6986 r!13927)))))

(assert (=> b!2383476 (=> (not res!1012339) (not e!1520013))))

(declare-fun bm!144866 () Bool)

(assert (=> bm!144866 (= call!144870 (Exists!1048 (ite c!378986 lambda!88894 lambda!88895)))))

(declare-fun b!2383477 () Bool)

(assert (=> b!2383477 (= e!1520018 call!144871)))

(assert (= (and d!697090 c!378987) b!2383477))

(assert (= (and d!697090 (not c!378987)) b!2383476))

(assert (= (and b!2383476 res!1012339) b!2383474))

(assert (= (and b!2383474 c!378985) b!2383468))

(assert (= (and b!2383474 (not c!378985)) b!2383467))

(assert (= (and b!2383467 c!378988) b!2383475))

(assert (= (and b!2383467 (not c!378988)) b!2383472))

(assert (= (and b!2383475 (not res!1012340)) b!2383471))

(assert (= (and b!2383472 c!378986) b!2383469))

(assert (= (and b!2383472 (not c!378986)) b!2383473))

(assert (= (and b!2383469 (not res!1012341)) b!2383470))

(assert (= (or b!2383470 b!2383473) bm!144866))

(assert (= (or b!2383477 b!2383469) bm!144865))

(declare-fun m!2786509 () Bool)

(assert (=> b!2383471 m!2786509))

(assert (=> bm!144865 m!2786407))

(declare-fun m!2786511 () Bool)

(assert (=> b!2383475 m!2786511))

(declare-fun m!2786513 () Bool)

(assert (=> bm!144866 m!2786513))

(assert (=> b!2383019 d!697090))

(declare-fun b!2383482 () Bool)

(declare-fun e!1520026 () Bool)

(declare-fun lt!868862 () Bool)

(assert (=> b!2383482 (= e!1520026 (not lt!868862))))

(declare-fun b!2383483 () Bool)

(declare-fun e!1520022 () Bool)

(declare-fun e!1520028 () Bool)

(assert (=> b!2383483 (= e!1520022 e!1520028)))

(declare-fun res!1012346 () Bool)

(assert (=> b!2383483 (=> (not res!1012346) (not e!1520028))))

(assert (=> b!2383483 (= res!1012346 (not lt!868862))))

(declare-fun b!2383484 () Bool)

(declare-fun e!1520023 () Bool)

(assert (=> b!2383484 (= e!1520028 e!1520023)))

(declare-fun res!1012353 () Bool)

(assert (=> b!2383484 (=> res!1012353 e!1520023)))

(declare-fun call!144872 () Bool)

(assert (=> b!2383484 (= res!1012353 call!144872)))

(declare-fun b!2383485 () Bool)

(declare-fun e!1520025 () Bool)

(assert (=> b!2383485 (= e!1520025 (matchR!3103 (derivativeStep!1694 r!13927 (head!5207 s!9460)) (tail!3477 s!9460)))))

(declare-fun b!2383486 () Bool)

(declare-fun res!1012351 () Bool)

(declare-fun e!1520027 () Bool)

(assert (=> b!2383486 (=> (not res!1012351) (not e!1520027))))

(assert (=> b!2383486 (= res!1012351 (isEmpty!16070 (tail!3477 s!9460)))))

(declare-fun b!2383487 () Bool)

(declare-fun res!1012350 () Bool)

(assert (=> b!2383487 (=> res!1012350 e!1520023)))

(assert (=> b!2383487 (= res!1012350 (not (isEmpty!16070 (tail!3477 s!9460))))))

(declare-fun b!2383488 () Bool)

(declare-fun res!1012348 () Bool)

(assert (=> b!2383488 (=> res!1012348 e!1520022)))

(assert (=> b!2383488 (= res!1012348 (not (is-ElementMatch!6986 r!13927)))))

(assert (=> b!2383488 (= e!1520026 e!1520022)))

(declare-fun b!2383490 () Bool)

(declare-fun res!1012352 () Bool)

(assert (=> b!2383490 (=> (not res!1012352) (not e!1520027))))

(assert (=> b!2383490 (= res!1012352 (not call!144872))))

(declare-fun b!2383491 () Bool)

(assert (=> b!2383491 (= e!1520025 (nullable!2036 r!13927))))

(declare-fun b!2383492 () Bool)

(declare-fun e!1520024 () Bool)

(assert (=> b!2383492 (= e!1520024 (= lt!868862 call!144872))))

(declare-fun bm!144867 () Bool)

(assert (=> bm!144867 (= call!144872 (isEmpty!16070 s!9460))))

(declare-fun b!2383493 () Bool)

(assert (=> b!2383493 (= e!1520024 e!1520026)))

(declare-fun c!378990 () Bool)

(assert (=> b!2383493 (= c!378990 (is-EmptyLang!6986 r!13927))))

(declare-fun b!2383494 () Bool)

(assert (=> b!2383494 (= e!1520023 (not (= (head!5207 s!9460) (c!378890 r!13927))))))

(declare-fun b!2383495 () Bool)

(assert (=> b!2383495 (= e!1520027 (= (head!5207 s!9460) (c!378890 r!13927)))))

(declare-fun d!697092 () Bool)

(assert (=> d!697092 e!1520024))

(declare-fun c!378989 () Bool)

(assert (=> d!697092 (= c!378989 (is-EmptyExpr!6986 r!13927))))

(assert (=> d!697092 (= lt!868862 e!1520025)))

(declare-fun c!378991 () Bool)

(assert (=> d!697092 (= c!378991 (isEmpty!16070 s!9460))))

(assert (=> d!697092 (validRegex!2711 r!13927)))

(assert (=> d!697092 (= (matchR!3103 r!13927 s!9460) lt!868862)))

(declare-fun b!2383489 () Bool)

(declare-fun res!1012347 () Bool)

(assert (=> b!2383489 (=> res!1012347 e!1520022)))

(assert (=> b!2383489 (= res!1012347 e!1520027)))

(declare-fun res!1012349 () Bool)

(assert (=> b!2383489 (=> (not res!1012349) (not e!1520027))))

(assert (=> b!2383489 (= res!1012349 lt!868862)))

(assert (= (and d!697092 c!378991) b!2383491))

(assert (= (and d!697092 (not c!378991)) b!2383485))

(assert (= (and d!697092 c!378989) b!2383492))

(assert (= (and d!697092 (not c!378989)) b!2383493))

(assert (= (and b!2383493 c!378990) b!2383482))

(assert (= (and b!2383493 (not c!378990)) b!2383488))

(assert (= (and b!2383488 (not res!1012348)) b!2383489))

(assert (= (and b!2383489 res!1012349) b!2383490))

(assert (= (and b!2383490 res!1012352) b!2383486))

(assert (= (and b!2383486 res!1012351) b!2383495))

(assert (= (and b!2383489 (not res!1012347)) b!2383483))

(assert (= (and b!2383483 res!1012346) b!2383484))

(assert (= (and b!2383484 (not res!1012353)) b!2383487))

(assert (= (and b!2383487 (not res!1012350)) b!2383494))

(assert (= (or b!2383492 b!2383484 b!2383490) bm!144867))

(declare-fun m!2786515 () Bool)

(assert (=> b!2383491 m!2786515))

(assert (=> b!2383487 m!2786397))

(assert (=> b!2383487 m!2786397))

(assert (=> b!2383487 m!2786399))

(assert (=> b!2383495 m!2786401))

(assert (=> b!2383485 m!2786401))

(assert (=> b!2383485 m!2786401))

(declare-fun m!2786517 () Bool)

(assert (=> b!2383485 m!2786517))

(assert (=> b!2383485 m!2786397))

(assert (=> b!2383485 m!2786517))

(assert (=> b!2383485 m!2786397))

(declare-fun m!2786519 () Bool)

(assert (=> b!2383485 m!2786519))

(assert (=> d!697092 m!2786407))

(declare-fun m!2786521 () Bool)

(assert (=> d!697092 m!2786521))

(assert (=> bm!144867 m!2786407))

(assert (=> b!2383486 m!2786397))

(assert (=> b!2383486 m!2786397))

(assert (=> b!2383486 m!2786399))

(assert (=> b!2383494 m!2786401))

(assert (=> b!2383019 d!697092))

(declare-fun d!697094 () Bool)

(assert (=> d!697094 (= (matchR!3103 r!13927 s!9460) (matchRSpec!835 r!13927 s!9460))))

(declare-fun lt!868865 () Unit!41051)

(declare-fun choose!13967 (Regex!6986 List!28210) Unit!41051)

(assert (=> d!697094 (= lt!868865 (choose!13967 r!13927 s!9460))))

(assert (=> d!697094 (validRegex!2711 r!13927)))

(assert (=> d!697094 (= (mainMatchTheorem!835 r!13927 s!9460) lt!868865)))

(declare-fun bs!462038 () Bool)

(assert (= bs!462038 d!697094))

(assert (=> bs!462038 m!2786171))

(assert (=> bs!462038 m!2786169))

(declare-fun m!2786523 () Bool)

(assert (=> bs!462038 m!2786523))

(assert (=> bs!462038 m!2786521))

(assert (=> b!2383019 d!697094))

(declare-fun d!697096 () Bool)

(assert (=> d!697096 (matchR!3103 (Concat!11622 lt!868753 EmptyExpr!6986) (++!6941 (_1!16459 lt!868739) (_2!16459 lt!868739)))))

(declare-fun lt!868868 () Unit!41051)

(declare-fun choose!13968 (Regex!6986 Regex!6986 List!28210 List!28210 List!28210) Unit!41051)

(assert (=> d!697096 (= lt!868868 (choose!13968 lt!868753 EmptyExpr!6986 (_1!16459 lt!868739) (_2!16459 lt!868739) s!9460))))

(assert (=> d!697096 (validRegex!2711 lt!868753)))

(assert (=> d!697096 (= (lemmaFindSeparationIsDefinedThenConcatMatches!17 lt!868753 EmptyExpr!6986 (_1!16459 lt!868739) (_2!16459 lt!868739) s!9460) lt!868868)))

(declare-fun bs!462039 () Bool)

(assert (= bs!462039 d!697096))

(declare-fun m!2786525 () Bool)

(assert (=> bs!462039 m!2786525))

(assert (=> bs!462039 m!2786525))

(declare-fun m!2786527 () Bool)

(assert (=> bs!462039 m!2786527))

(declare-fun m!2786529 () Bool)

(assert (=> bs!462039 m!2786529))

(assert (=> bs!462039 m!2786213))

(assert (=> b!2383021 d!697096))

(declare-fun d!697098 () Bool)

(assert (=> d!697098 (= (get!8578 lt!868755) (v!30936 lt!868755))))

(assert (=> b!2383021 d!697098))

(declare-fun d!697100 () Bool)

(declare-fun res!1012358 () Bool)

(declare-fun e!1520033 () Bool)

(assert (=> d!697100 (=> res!1012358 e!1520033)))

(assert (=> d!697100 (= res!1012358 (is-Nil!28113 l!9164))))

(assert (=> d!697100 (= (forall!5620 l!9164 lambda!88858) e!1520033)))

(declare-fun b!2383500 () Bool)

(declare-fun e!1520034 () Bool)

(assert (=> b!2383500 (= e!1520033 e!1520034)))

(declare-fun res!1012359 () Bool)

(assert (=> b!2383500 (=> (not res!1012359) (not e!1520034))))

(declare-fun dynLambda!12103 (Int Regex!6986) Bool)

(assert (=> b!2383500 (= res!1012359 (dynLambda!12103 lambda!88858 (h!33514 l!9164)))))

(declare-fun b!2383501 () Bool)

(assert (=> b!2383501 (= e!1520034 (forall!5620 (t!208188 l!9164) lambda!88858))))

(assert (= (and d!697100 (not res!1012358)) b!2383500))

(assert (= (and b!2383500 res!1012359) b!2383501))

(declare-fun b_lambda!74091 () Bool)

(assert (=> (not b_lambda!74091) (not b!2383500)))

(declare-fun m!2786531 () Bool)

(assert (=> b!2383500 m!2786531))

(declare-fun m!2786533 () Bool)

(assert (=> b!2383501 m!2786533))

(assert (=> start!233842 d!697100))

(declare-fun b!2383514 () Bool)

(declare-fun e!1520037 () Bool)

(declare-fun tp!760504 () Bool)

(assert (=> b!2383514 (= e!1520037 tp!760504)))

(assert (=> b!2383026 (= tp!760463 e!1520037)))

(declare-fun b!2383515 () Bool)

(declare-fun tp!760503 () Bool)

(declare-fun tp!760500 () Bool)

(assert (=> b!2383515 (= e!1520037 (and tp!760503 tp!760500))))

(declare-fun b!2383512 () Bool)

(assert (=> b!2383512 (= e!1520037 tp_is_empty!11385)))

(declare-fun b!2383513 () Bool)

(declare-fun tp!760502 () Bool)

(declare-fun tp!760501 () Bool)

(assert (=> b!2383513 (= e!1520037 (and tp!760502 tp!760501))))

(assert (= (and b!2383026 (is-ElementMatch!6986 (h!33514 l!9164))) b!2383512))

(assert (= (and b!2383026 (is-Concat!11622 (h!33514 l!9164))) b!2383513))

(assert (= (and b!2383026 (is-Star!6986 (h!33514 l!9164))) b!2383514))

(assert (= (and b!2383026 (is-Union!6986 (h!33514 l!9164))) b!2383515))

(declare-fun b!2383531 () Bool)

(declare-fun e!1520047 () Bool)

(declare-fun tp!760509 () Bool)

(declare-fun tp!760510 () Bool)

(assert (=> b!2383531 (= e!1520047 (and tp!760509 tp!760510))))

(assert (=> b!2383026 (= tp!760460 e!1520047)))

(assert (= (and b!2383026 (is-Cons!28113 (t!208188 l!9164))) b!2383531))

(declare-fun b!2383536 () Bool)

(declare-fun e!1520050 () Bool)

(declare-fun tp!760513 () Bool)

(assert (=> b!2383536 (= e!1520050 (and tp_is_empty!11385 tp!760513))))

(assert (=> b!2383034 (= tp!760465 e!1520050)))

(assert (= (and b!2383034 (is-Cons!28112 (t!208187 s!9460))) b!2383536))

(declare-fun b!2383539 () Bool)

(declare-fun e!1520051 () Bool)

(declare-fun tp!760518 () Bool)

(assert (=> b!2383539 (= e!1520051 tp!760518)))

(assert (=> b!2383020 (= tp!760458 e!1520051)))

(declare-fun b!2383540 () Bool)

(declare-fun tp!760517 () Bool)

(declare-fun tp!760514 () Bool)

(assert (=> b!2383540 (= e!1520051 (and tp!760517 tp!760514))))

(declare-fun b!2383537 () Bool)

(assert (=> b!2383537 (= e!1520051 tp_is_empty!11385)))

(declare-fun b!2383538 () Bool)

(declare-fun tp!760516 () Bool)

(declare-fun tp!760515 () Bool)

(assert (=> b!2383538 (= e!1520051 (and tp!760516 tp!760515))))

(assert (= (and b!2383020 (is-ElementMatch!6986 (regOne!14485 r!13927))) b!2383537))

(assert (= (and b!2383020 (is-Concat!11622 (regOne!14485 r!13927))) b!2383538))

(assert (= (and b!2383020 (is-Star!6986 (regOne!14485 r!13927))) b!2383539))

(assert (= (and b!2383020 (is-Union!6986 (regOne!14485 r!13927))) b!2383540))

(declare-fun b!2383543 () Bool)

(declare-fun e!1520052 () Bool)

(declare-fun tp!760523 () Bool)

(assert (=> b!2383543 (= e!1520052 tp!760523)))

(assert (=> b!2383020 (= tp!760461 e!1520052)))

(declare-fun b!2383544 () Bool)

(declare-fun tp!760522 () Bool)

(declare-fun tp!760519 () Bool)

(assert (=> b!2383544 (= e!1520052 (and tp!760522 tp!760519))))

(declare-fun b!2383541 () Bool)

(assert (=> b!2383541 (= e!1520052 tp_is_empty!11385)))

(declare-fun b!2383542 () Bool)

(declare-fun tp!760521 () Bool)

(declare-fun tp!760520 () Bool)

(assert (=> b!2383542 (= e!1520052 (and tp!760521 tp!760520))))

(assert (= (and b!2383020 (is-ElementMatch!6986 (regTwo!14485 r!13927))) b!2383541))

(assert (= (and b!2383020 (is-Concat!11622 (regTwo!14485 r!13927))) b!2383542))

(assert (= (and b!2383020 (is-Star!6986 (regTwo!14485 r!13927))) b!2383543))

(assert (= (and b!2383020 (is-Union!6986 (regTwo!14485 r!13927))) b!2383544))

(declare-fun b!2383547 () Bool)

(declare-fun e!1520053 () Bool)

(declare-fun tp!760528 () Bool)

(assert (=> b!2383547 (= e!1520053 tp!760528)))

(assert (=> b!2383032 (= tp!760462 e!1520053)))

(declare-fun b!2383548 () Bool)

(declare-fun tp!760527 () Bool)

(declare-fun tp!760524 () Bool)

(assert (=> b!2383548 (= e!1520053 (and tp!760527 tp!760524))))

(declare-fun b!2383545 () Bool)

(assert (=> b!2383545 (= e!1520053 tp_is_empty!11385)))

(declare-fun b!2383546 () Bool)

(declare-fun tp!760526 () Bool)

(declare-fun tp!760525 () Bool)

(assert (=> b!2383546 (= e!1520053 (and tp!760526 tp!760525))))

(assert (= (and b!2383032 (is-ElementMatch!6986 (reg!7315 r!13927))) b!2383545))

(assert (= (and b!2383032 (is-Concat!11622 (reg!7315 r!13927))) b!2383546))

(assert (= (and b!2383032 (is-Star!6986 (reg!7315 r!13927))) b!2383547))

(assert (= (and b!2383032 (is-Union!6986 (reg!7315 r!13927))) b!2383548))

(declare-fun b!2383551 () Bool)

(declare-fun e!1520054 () Bool)

(declare-fun tp!760533 () Bool)

(assert (=> b!2383551 (= e!1520054 tp!760533)))

(assert (=> b!2383028 (= tp!760459 e!1520054)))

(declare-fun b!2383552 () Bool)

(declare-fun tp!760532 () Bool)

(declare-fun tp!760529 () Bool)

(assert (=> b!2383552 (= e!1520054 (and tp!760532 tp!760529))))

(declare-fun b!2383549 () Bool)

(assert (=> b!2383549 (= e!1520054 tp_is_empty!11385)))

(declare-fun b!2383550 () Bool)

(declare-fun tp!760531 () Bool)

(declare-fun tp!760530 () Bool)

(assert (=> b!2383550 (= e!1520054 (and tp!760531 tp!760530))))

(assert (= (and b!2383028 (is-ElementMatch!6986 (regOne!14484 r!13927))) b!2383549))

(assert (= (and b!2383028 (is-Concat!11622 (regOne!14484 r!13927))) b!2383550))

(assert (= (and b!2383028 (is-Star!6986 (regOne!14484 r!13927))) b!2383551))

(assert (= (and b!2383028 (is-Union!6986 (regOne!14484 r!13927))) b!2383552))

(declare-fun b!2383555 () Bool)

(declare-fun e!1520055 () Bool)

(declare-fun tp!760538 () Bool)

(assert (=> b!2383555 (= e!1520055 tp!760538)))

(assert (=> b!2383028 (= tp!760464 e!1520055)))

(declare-fun b!2383556 () Bool)

(declare-fun tp!760537 () Bool)

(declare-fun tp!760534 () Bool)

(assert (=> b!2383556 (= e!1520055 (and tp!760537 tp!760534))))

(declare-fun b!2383553 () Bool)

(assert (=> b!2383553 (= e!1520055 tp_is_empty!11385)))

(declare-fun b!2383554 () Bool)

(declare-fun tp!760536 () Bool)

(declare-fun tp!760535 () Bool)

(assert (=> b!2383554 (= e!1520055 (and tp!760536 tp!760535))))

(assert (= (and b!2383028 (is-ElementMatch!6986 (regTwo!14484 r!13927))) b!2383553))

(assert (= (and b!2383028 (is-Concat!11622 (regTwo!14484 r!13927))) b!2383554))

(assert (= (and b!2383028 (is-Star!6986 (regTwo!14484 r!13927))) b!2383555))

(assert (= (and b!2383028 (is-Union!6986 (regTwo!14484 r!13927))) b!2383556))

(declare-fun b_lambda!74093 () Bool)

(assert (= b_lambda!74091 (or start!233842 b_lambda!74093)))

(declare-fun bs!462040 () Bool)

(declare-fun d!697102 () Bool)

(assert (= bs!462040 (and d!697102 start!233842)))

(assert (=> bs!462040 (= (dynLambda!12103 lambda!88858 (h!33514 l!9164)) (validRegex!2711 (h!33514 l!9164)))))

(declare-fun m!2786535 () Bool)

(assert (=> bs!462040 m!2786535))

(assert (=> b!2383500 d!697102))

(push 1)

(assert (not b!2383352))

(assert (not b!2383222))

(assert (not b!2383399))

(assert (not b!2383369))

(assert (not d!697068))

(assert (not b!2383514))

(assert (not b!2383543))

(assert (not b!2383501))

(assert (not b!2383233))

(assert (not bm!144866))

(assert (not b!2383540))

(assert (not b!2383554))

(assert (not bs!462040))

(assert (not b!2383344))

(assert (not bm!144847))

(assert (not d!697070))

(assert (not b!2383231))

(assert (not b!2383556))

(assert (not b!2383345))

(assert (not b!2383342))

(assert (not d!697076))

(assert (not bm!144855))

(assert (not b!2383226))

(assert (not b!2383330))

(assert (not b!2383402))

(assert (not b!2383475))

(assert (not b!2383542))

(assert (not bm!144867))

(assert (not b!2383263))

(assert (not d!697074))

(assert (not b!2383325))

(assert (not b!2383125))

(assert (not d!697038))

(assert (not d!697078))

(assert (not b!2383225))

(assert (not d!697058))

(assert (not b!2383346))

(assert (not b!2383326))

(assert (not b!2383266))

(assert (not d!697092))

(assert (not b!2383349))

(assert (not d!697082))

(assert (not b!2383494))

(assert (not b!2383341))

(assert (not d!697040))

(assert (not b!2383219))

(assert (not b!2383351))

(assert (not d!697096))

(assert (not b!2383495))

(assert (not b!2383172))

(assert (not b!2383334))

(assert (not b!2383237))

(assert (not b!2383404))

(assert (not b!2383169))

(assert (not d!697044))

(assert (not bm!144846))

(assert (not d!697086))

(assert (not d!697050))

(assert (not b!2383173))

(assert (not b!2383403))

(assert (not b!2383333))

(assert (not b!2383221))

(assert (not bm!144857))

(assert (not b!2383267))

(assert (not b!2383491))

(assert (not b!2383551))

(assert (not d!697066))

(assert (not b!2383269))

(assert (not b!2383398))

(assert (not b!2383515))

(assert (not b!2383536))

(assert (not b!2383241))

(assert (not b_lambda!74093))

(assert tp_is_empty!11385)

(assert (not b!2383486))

(assert (not d!697034))

(assert (not b!2383240))

(assert (not b!2383471))

(assert (not b!2383164))

(assert (not b!2383546))

(assert (not b!2383544))

(assert (not d!697042))

(assert (not b!2383401))

(assert (not b!2383487))

(assert (not b!2383513))

(assert (not b!2383355))

(assert (not d!697048))

(assert (not b!2383232))

(assert (not b!2383539))

(assert (not bm!144854))

(assert (not b!2383370))

(assert (not b!2383356))

(assert (not d!697094))

(assert (not b!2383485))

(assert (not b!2383268))

(assert (not b!2383531))

(assert (not b!2383223))

(assert (not b!2383552))

(assert (not d!697088))

(assert (not b!2383548))

(assert (not b!2383555))

(assert (not b!2383538))

(assert (not b!2383163))

(assert (not b!2383348))

(assert (not b!2383547))

(assert (not b!2383218))

(assert (not b!2383354))

(assert (not d!697072))

(assert (not b!2383306))

(assert (not b!2383324))

(assert (not b!2383550))

(assert (not bm!144865))

(assert (not b!2383165))

(assert (not b!2383264))

(assert (not b!2383357))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

