; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!234824 () Bool)

(assert start!234824)

(declare-fun b!2393144 () Bool)

(assert (=> b!2393144 true))

(assert (=> b!2393144 true))

(declare-fun lambda!89719 () Int)

(declare-fun lambda!89718 () Int)

(assert (=> b!2393144 (not (= lambda!89719 lambda!89718))))

(assert (=> b!2393144 true))

(assert (=> b!2393144 true))

(declare-fun b!2393142 () Bool)

(declare-datatypes ((Unit!41210 0))(
  ( (Unit!41211) )
))
(declare-fun e!1525329 () Unit!41210)

(declare-fun e!1525333 () Unit!41210)

(assert (=> b!2393142 (= e!1525329 e!1525333)))

(declare-datatypes ((C!14188 0))(
  ( (C!14189 (val!8336 Int)) )
))
(declare-datatypes ((Regex!7015 0))(
  ( (ElementMatch!7015 (c!380739 C!14188)) (Concat!11651 (regOne!14542 Regex!7015) (regTwo!14542 Regex!7015)) (EmptyExpr!7015) (Star!7015 (reg!7344 Regex!7015)) (EmptyLang!7015) (Union!7015 (regOne!14543 Regex!7015) (regTwo!14543 Regex!7015)) )
))
(declare-datatypes ((List!28268 0))(
  ( (Nil!28170) (Cons!28170 (h!33571 Regex!7015) (t!208245 List!28268)) )
))
(declare-fun lt!871009 () List!28268)

(declare-fun l!9164 () List!28268)

(declare-fun tail!3531 (List!28268) List!28268)

(assert (=> b!2393142 (= lt!871009 (tail!3531 l!9164))))

(declare-fun c!380737 () Bool)

(declare-fun isEmpty!16152 (List!28268) Bool)

(assert (=> b!2393142 (= c!380737 (isEmpty!16152 lt!871009))))

(declare-fun b!2393143 () Bool)

(declare-fun e!1525330 () Bool)

(declare-fun call!145843 () Bool)

(assert (=> b!2393143 (= e!1525330 call!145843)))

(declare-fun e!1525331 () Bool)

(declare-fun e!1525336 () Bool)

(assert (=> b!2393144 (= e!1525331 e!1525336)))

(declare-fun res!1016731 () Bool)

(assert (=> b!2393144 (=> res!1016731 e!1525336)))

(declare-fun lt!871017 () Bool)

(declare-fun lt!871015 () Bool)

(assert (=> b!2393144 (= res!1016731 (not (= lt!871017 lt!871015)))))

(declare-fun Exists!1077 (Int) Bool)

(assert (=> b!2393144 (= (Exists!1077 lambda!89718) (Exists!1077 lambda!89719))))

(declare-fun lt!871018 () Unit!41210)

(declare-fun r!13927 () Regex!7015)

(declare-datatypes ((List!28269 0))(
  ( (Nil!28171) (Cons!28171 (h!33572 C!14188) (t!208246 List!28269)) )
))
(declare-fun s!9460 () List!28269)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!416 (Regex!7015 Regex!7015 List!28269) Unit!41210)

(assert (=> b!2393144 (= lt!871018 (lemmaExistCutMatchRandMatchRSpecEquivalent!416 (regOne!14542 r!13927) (regTwo!14542 r!13927) s!9460))))

(assert (=> b!2393144 (= lt!871015 (Exists!1077 lambda!89718))))

(declare-datatypes ((tuple2!27894 0))(
  ( (tuple2!27895 (_1!16488 List!28269) (_2!16488 List!28269)) )
))
(declare-datatypes ((Option!5558 0))(
  ( (None!5557) (Some!5557 (v!30965 tuple2!27894)) )
))
(declare-fun isDefined!4386 (Option!5558) Bool)

(declare-fun findConcatSeparation!666 (Regex!7015 Regex!7015 List!28269 List!28269 List!28269) Option!5558)

(assert (=> b!2393144 (= lt!871015 (isDefined!4386 (findConcatSeparation!666 (regOne!14542 r!13927) (regTwo!14542 r!13927) Nil!28171 s!9460 s!9460)))))

(declare-fun lt!871019 () Unit!41210)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!666 (Regex!7015 Regex!7015 List!28269) Unit!41210)

(assert (=> b!2393144 (= lt!871019 (lemmaFindConcatSeparationEquivalentToExists!666 (regOne!14542 r!13927) (regTwo!14542 r!13927) s!9460))))

(declare-fun b!2393145 () Bool)

(declare-fun e!1525326 () Bool)

(assert (=> b!2393145 (= e!1525336 e!1525326)))

(declare-fun res!1016736 () Bool)

(assert (=> b!2393145 (=> res!1016736 e!1525326)))

(get-info :version)

(assert (=> b!2393145 (= res!1016736 ((_ is Cons!28170) l!9164))))

(declare-fun lt!871023 () Unit!41210)

(assert (=> b!2393145 (= lt!871023 e!1525329)))

(declare-fun c!380736 () Bool)

(assert (=> b!2393145 (= c!380736 (isEmpty!16152 l!9164))))

(declare-fun b!2393146 () Bool)

(declare-fun e!1525334 () Bool)

(declare-fun tp_is_empty!11443 () Bool)

(assert (=> b!2393146 (= e!1525334 tp_is_empty!11443)))

(declare-fun bm!145835 () Bool)

(declare-fun call!145847 () Bool)

(declare-fun call!145845 () Bool)

(assert (=> bm!145835 (= call!145847 call!145845)))

(declare-fun bm!145836 () Bool)

(declare-fun call!145850 () Bool)

(declare-fun call!145844 () Option!5558)

(assert (=> bm!145836 (= call!145850 (isDefined!4386 call!145844))))

(declare-fun b!2393147 () Bool)

(declare-fun e!1525335 () Bool)

(declare-fun tp!762533 () Bool)

(declare-fun tp!762532 () Bool)

(assert (=> b!2393147 (= e!1525335 (and tp!762533 tp!762532))))

(declare-fun b!2393149 () Bool)

(declare-fun tp!762531 () Bool)

(declare-fun tp!762530 () Bool)

(assert (=> b!2393149 (= e!1525334 (and tp!762531 tp!762530))))

(declare-fun b!2393150 () Bool)

(declare-fun e!1525332 () Unit!41210)

(declare-fun Unit!41212 () Unit!41210)

(assert (=> b!2393150 (= e!1525332 Unit!41212)))

(declare-fun b!2393151 () Bool)

(declare-fun validRegex!2740 (Regex!7015) Bool)

(assert (=> b!2393151 (= e!1525326 (validRegex!2740 r!13927))))

(declare-fun bm!145837 () Bool)

(declare-fun call!145840 () Option!5558)

(declare-fun call!145842 () Option!5558)

(assert (=> bm!145837 (= call!145840 call!145842)))

(declare-fun call!145841 () Regex!7015)

(declare-fun lt!871016 () Regex!7015)

(declare-fun bm!145838 () Bool)

(declare-fun call!145848 () Regex!7015)

(assert (=> bm!145838 (= call!145842 (findConcatSeparation!666 (ite c!380737 lt!871016 call!145841) (ite c!380737 EmptyExpr!7015 call!145848) Nil!28171 s!9460 s!9460))))

(declare-fun b!2393152 () Bool)

(declare-fun tp!762529 () Bool)

(assert (=> b!2393152 (= e!1525334 tp!762529)))

(declare-fun b!2393153 () Bool)

(declare-fun lt!871014 () Bool)

(assert (=> b!2393153 (= lt!871014 call!145845)))

(declare-fun Unit!41213 () Unit!41210)

(assert (=> b!2393153 (= e!1525333 Unit!41213)))

(declare-fun bm!145839 () Bool)

(declare-fun call!145849 () Regex!7015)

(assert (=> bm!145839 (= call!145849 call!145848)))

(declare-fun bm!145840 () Bool)

(declare-fun head!5261 (List!28268) Regex!7015)

(assert (=> bm!145840 (= call!145841 (head!5261 l!9164))))

(declare-fun b!2393154 () Bool)

(declare-fun e!1525327 () Bool)

(assert (=> b!2393154 (= e!1525327 (not call!145850))))

(declare-fun bm!145841 () Bool)

(assert (=> bm!145841 (= call!145844 (findConcatSeparation!666 lt!871016 call!145849 Nil!28171 s!9460 s!9460))))

(declare-fun b!2393155 () Bool)

(declare-fun Unit!41214 () Unit!41210)

(assert (=> b!2393155 (= e!1525329 Unit!41214)))

(assert (=> b!2393155 false))

(declare-fun call!145846 () List!28269)

(declare-fun lt!871010 () Regex!7015)

(declare-fun c!380738 () Bool)

(declare-fun bm!145842 () Bool)

(declare-fun matchR!3132 (Regex!7015 List!28269) Bool)

(assert (=> bm!145842 (= call!145843 (matchR!3132 (ite c!380738 lt!871010 (Concat!11651 lt!871016 EmptyExpr!7015)) (ite c!380738 s!9460 call!145846)))))

(declare-fun res!1016732 () Bool)

(declare-fun e!1525337 () Bool)

(assert (=> start!234824 (=> (not res!1016732) (not e!1525337))))

(declare-fun lambda!89717 () Int)

(declare-fun forall!5649 (List!28268 Int) Bool)

(assert (=> start!234824 (= res!1016732 (forall!5649 l!9164 lambda!89717))))

(assert (=> start!234824 e!1525337))

(assert (=> start!234824 e!1525335))

(assert (=> start!234824 e!1525334))

(declare-fun e!1525339 () Bool)

(assert (=> start!234824 e!1525339))

(declare-fun b!2393148 () Bool)

(declare-fun e!1525328 () Unit!41210)

(declare-fun Unit!41215 () Unit!41210)

(assert (=> b!2393148 (= e!1525328 Unit!41215)))

(declare-fun lt!871025 () Option!5558)

(assert (=> b!2393148 (= lt!871025 call!145840)))

(declare-fun lt!871020 () Bool)

(assert (=> b!2393148 (= lt!871020 call!145847)))

(declare-fun c!380735 () Bool)

(assert (=> b!2393148 (= c!380735 lt!871020)))

(declare-fun lt!871013 () Unit!41210)

(assert (=> b!2393148 (= lt!871013 e!1525332)))

(declare-fun res!1016735 () Bool)

(assert (=> b!2393148 (= res!1016735 (not lt!871020))))

(assert (=> b!2393148 (=> (not res!1016735) (not e!1525327))))

(assert (=> b!2393148 e!1525327))

(declare-fun b!2393156 () Bool)

(assert (=> b!2393156 (= e!1525337 (not e!1525331))))

(declare-fun res!1016734 () Bool)

(assert (=> b!2393156 (=> res!1016734 e!1525331)))

(assert (=> b!2393156 (= res!1016734 (not ((_ is Concat!11651) r!13927)))))

(assert (=> b!2393156 (= lt!871014 lt!871017)))

(declare-fun matchRSpec!864 (Regex!7015 List!28269) Bool)

(assert (=> b!2393156 (= lt!871017 (matchRSpec!864 r!13927 s!9460))))

(assert (=> b!2393156 (= lt!871014 (matchR!3132 r!13927 s!9460))))

(declare-fun lt!871022 () Unit!41210)

(declare-fun mainMatchTheorem!864 (Regex!7015 List!28269) Unit!41210)

(assert (=> b!2393156 (= lt!871022 (mainMatchTheorem!864 r!13927 s!9460))))

(declare-fun bm!145843 () Bool)

(assert (=> bm!145843 (= call!145845 (isDefined!4386 (ite c!380737 (ite c!380738 call!145840 lt!871025) call!145842)))))

(declare-fun bm!145844 () Bool)

(declare-fun generalisedConcat!116 (List!28268) Regex!7015)

(assert (=> bm!145844 (= call!145848 (generalisedConcat!116 lt!871009))))

(declare-fun b!2393157 () Bool)

(declare-fun Unit!41216 () Unit!41210)

(assert (=> b!2393157 (= e!1525328 Unit!41216)))

(declare-fun lt!871026 () Unit!41210)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!52 (Regex!7015 Regex!7015 List!28269 List!28269) Unit!41210)

(assert (=> b!2393157 (= lt!871026 (lemmaTwoRegexMatchThenConcatMatchesConcatString!52 lt!871016 EmptyExpr!7015 s!9460 Nil!28171))))

(assert (=> b!2393157 (= lt!871010 (Concat!11651 lt!871016 EmptyExpr!7015))))

(declare-fun res!1016737 () Bool)

(assert (=> b!2393157 (= res!1016737 (matchR!3132 lt!871010 call!145846))))

(assert (=> b!2393157 (=> (not res!1016737) (not e!1525330))))

(assert (=> b!2393157 e!1525330))

(declare-fun lt!871021 () Unit!41210)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!34 (Regex!7015 Regex!7015 List!28269) Unit!41210)

(assert (=> b!2393157 (= lt!871021 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!34 lt!871016 EmptyExpr!7015 s!9460))))

(declare-fun res!1016730 () Bool)

(assert (=> b!2393157 (= res!1016730 call!145847)))

(declare-fun e!1525338 () Bool)

(assert (=> b!2393157 (=> (not res!1016730) (not e!1525338))))

(assert (=> b!2393157 e!1525338))

(declare-fun b!2393158 () Bool)

(declare-fun e!1525340 () Bool)

(assert (=> b!2393158 (= e!1525340 false)))

(declare-fun lt!871011 () tuple2!27894)

(declare-fun bm!145845 () Bool)

(declare-fun ++!6969 (List!28269 List!28269) List!28269)

(assert (=> bm!145845 (= call!145846 (++!6969 (ite c!380738 s!9460 (_1!16488 lt!871011)) (ite c!380738 Nil!28171 (_2!16488 lt!871011))))))

(declare-fun b!2393159 () Bool)

(declare-fun tp!762528 () Bool)

(declare-fun tp!762527 () Bool)

(assert (=> b!2393159 (= e!1525334 (and tp!762528 tp!762527))))

(declare-fun b!2393160 () Bool)

(assert (=> b!2393160 (= e!1525338 call!145850)))

(declare-fun b!2393161 () Bool)

(assert (=> b!2393161 (= lt!871014 (isDefined!4386 (findConcatSeparation!666 lt!871016 call!145848 Nil!28171 s!9460 s!9460)))))

(declare-fun lt!871024 () Unit!41210)

(assert (=> b!2393161 (= lt!871024 e!1525328)))

(assert (=> b!2393161 (= c!380738 (matchR!3132 lt!871016 s!9460))))

(assert (=> b!2393161 (= lt!871016 call!145841)))

(declare-fun Unit!41217 () Unit!41210)

(assert (=> b!2393161 (= e!1525333 Unit!41217)))

(declare-fun b!2393162 () Bool)

(declare-fun tp!762526 () Bool)

(assert (=> b!2393162 (= e!1525339 (and tp_is_empty!11443 tp!762526))))

(declare-fun b!2393163 () Bool)

(assert (=> b!2393163 e!1525340))

(declare-fun res!1016738 () Bool)

(assert (=> b!2393163 (=> (not res!1016738) (not e!1525340))))

(assert (=> b!2393163 (= res!1016738 call!145843)))

(declare-fun lt!871012 () Unit!41210)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!34 (Regex!7015 Regex!7015 List!28269 List!28269 List!28269) Unit!41210)

(assert (=> b!2393163 (= lt!871012 (lemmaFindSeparationIsDefinedThenConcatMatches!34 lt!871016 EmptyExpr!7015 (_1!16488 lt!871011) (_2!16488 lt!871011) s!9460))))

(declare-fun get!8620 (Option!5558) tuple2!27894)

(assert (=> b!2393163 (= lt!871011 (get!8620 lt!871025))))

(declare-fun Unit!41218 () Unit!41210)

(assert (=> b!2393163 (= e!1525332 Unit!41218)))

(declare-fun b!2393164 () Bool)

(declare-fun res!1016733 () Bool)

(assert (=> b!2393164 (=> (not res!1016733) (not e!1525337))))

(assert (=> b!2393164 (= res!1016733 (= r!13927 (generalisedConcat!116 l!9164)))))

(assert (= (and start!234824 res!1016732) b!2393164))

(assert (= (and b!2393164 res!1016733) b!2393156))

(assert (= (and b!2393156 (not res!1016734)) b!2393144))

(assert (= (and b!2393144 (not res!1016731)) b!2393145))

(assert (= (and b!2393145 c!380736) b!2393155))

(assert (= (and b!2393145 (not c!380736)) b!2393142))

(assert (= (and b!2393142 c!380737) b!2393161))

(assert (= (and b!2393142 (not c!380737)) b!2393153))

(assert (= (and b!2393161 c!380738) b!2393157))

(assert (= (and b!2393161 (not c!380738)) b!2393148))

(assert (= (and b!2393157 res!1016737) b!2393143))

(assert (= (and b!2393157 res!1016730) b!2393160))

(assert (= (and b!2393148 c!380735) b!2393163))

(assert (= (and b!2393148 (not c!380735)) b!2393150))

(assert (= (and b!2393163 res!1016738) b!2393158))

(assert (= (and b!2393148 res!1016735) b!2393154))

(assert (= (or b!2393157 b!2393148) bm!145837))

(assert (= (or b!2393157 b!2393163) bm!145845))

(assert (= (or b!2393160 b!2393154) bm!145839))

(assert (= (or b!2393143 b!2393163) bm!145842))

(assert (= (or b!2393157 b!2393148) bm!145835))

(assert (= (or b!2393160 b!2393154) bm!145841))

(assert (= (or b!2393160 b!2393154) bm!145836))

(assert (= (or b!2393161 b!2393153) bm!145840))

(assert (= (or bm!145839 b!2393161 b!2393153) bm!145844))

(assert (= (or bm!145837 b!2393153) bm!145838))

(assert (= (or bm!145835 b!2393153) bm!145843))

(assert (= (and b!2393145 (not res!1016736)) b!2393151))

(assert (= (and start!234824 ((_ is Cons!28170) l!9164)) b!2393147))

(assert (= (and start!234824 ((_ is ElementMatch!7015) r!13927)) b!2393146))

(assert (= (and start!234824 ((_ is Concat!11651) r!13927)) b!2393159))

(assert (= (and start!234824 ((_ is Star!7015) r!13927)) b!2393152))

(assert (= (and start!234824 ((_ is Union!7015) r!13927)) b!2393149))

(assert (= (and start!234824 ((_ is Cons!28171) s!9460)) b!2393162))

(declare-fun m!2792659 () Bool)

(assert (=> b!2393156 m!2792659))

(declare-fun m!2792661 () Bool)

(assert (=> b!2393156 m!2792661))

(declare-fun m!2792663 () Bool)

(assert (=> b!2393156 m!2792663))

(declare-fun m!2792665 () Bool)

(assert (=> b!2393145 m!2792665))

(declare-fun m!2792667 () Bool)

(assert (=> start!234824 m!2792667))

(declare-fun m!2792669 () Bool)

(assert (=> bm!145836 m!2792669))

(declare-fun m!2792671 () Bool)

(assert (=> bm!145840 m!2792671))

(declare-fun m!2792673 () Bool)

(assert (=> b!2393142 m!2792673))

(declare-fun m!2792675 () Bool)

(assert (=> b!2393142 m!2792675))

(declare-fun m!2792677 () Bool)

(assert (=> bm!145842 m!2792677))

(declare-fun m!2792679 () Bool)

(assert (=> bm!145841 m!2792679))

(declare-fun m!2792681 () Bool)

(assert (=> b!2393161 m!2792681))

(assert (=> b!2393161 m!2792681))

(declare-fun m!2792683 () Bool)

(assert (=> b!2393161 m!2792683))

(declare-fun m!2792685 () Bool)

(assert (=> b!2393161 m!2792685))

(declare-fun m!2792687 () Bool)

(assert (=> b!2393151 m!2792687))

(declare-fun m!2792689 () Bool)

(assert (=> b!2393164 m!2792689))

(declare-fun m!2792691 () Bool)

(assert (=> bm!145845 m!2792691))

(declare-fun m!2792693 () Bool)

(assert (=> b!2393144 m!2792693))

(declare-fun m!2792695 () Bool)

(assert (=> b!2393144 m!2792695))

(declare-fun m!2792697 () Bool)

(assert (=> b!2393144 m!2792697))

(assert (=> b!2393144 m!2792697))

(declare-fun m!2792699 () Bool)

(assert (=> b!2393144 m!2792699))

(assert (=> b!2393144 m!2792693))

(declare-fun m!2792701 () Bool)

(assert (=> b!2393144 m!2792701))

(declare-fun m!2792703 () Bool)

(assert (=> b!2393144 m!2792703))

(declare-fun m!2792705 () Bool)

(assert (=> bm!145844 m!2792705))

(declare-fun m!2792707 () Bool)

(assert (=> bm!145843 m!2792707))

(declare-fun m!2792709 () Bool)

(assert (=> b!2393157 m!2792709))

(declare-fun m!2792711 () Bool)

(assert (=> b!2393157 m!2792711))

(declare-fun m!2792713 () Bool)

(assert (=> b!2393157 m!2792713))

(declare-fun m!2792715 () Bool)

(assert (=> b!2393163 m!2792715))

(declare-fun m!2792717 () Bool)

(assert (=> b!2393163 m!2792717))

(declare-fun m!2792719 () Bool)

(assert (=> bm!145838 m!2792719))

(check-sat (not b!2393151) (not bm!145836) (not b!2393164) (not b!2393156) (not b!2393149) (not bm!145841) (not bm!145845) (not bm!145838) (not b!2393162) (not start!234824) (not b!2393161) (not b!2393152) (not b!2393144) (not b!2393142) (not bm!145842) (not b!2393147) (not b!2393145) (not b!2393157) (not bm!145840) (not b!2393159) (not bm!145844) (not bm!145843) tp_is_empty!11443 (not b!2393163))
(check-sat)
(get-model)

(declare-fun d!698508 () Bool)

(declare-fun isEmpty!16153 (Option!5558) Bool)

(assert (=> d!698508 (= (isDefined!4386 call!145844) (not (isEmpty!16153 call!145844)))))

(declare-fun bs!462687 () Bool)

(assert (= bs!462687 d!698508))

(declare-fun m!2792721 () Bool)

(assert (=> bs!462687 m!2792721))

(assert (=> bm!145836 d!698508))

(declare-fun d!698510 () Bool)

(assert (=> d!698510 (= (head!5261 l!9164) (h!33571 l!9164))))

(assert (=> bm!145840 d!698510))

(declare-fun b!2393187 () Bool)

(declare-fun e!1525355 () Option!5558)

(declare-fun e!1525354 () Option!5558)

(assert (=> b!2393187 (= e!1525355 e!1525354)))

(declare-fun c!380745 () Bool)

(assert (=> b!2393187 (= c!380745 ((_ is Nil!28171) s!9460))))

(declare-fun b!2393188 () Bool)

(assert (=> b!2393188 (= e!1525354 None!5557)))

(declare-fun b!2393189 () Bool)

(declare-fun e!1525351 () Bool)

(declare-fun lt!871034 () Option!5558)

(assert (=> b!2393189 (= e!1525351 (= (++!6969 (_1!16488 (get!8620 lt!871034)) (_2!16488 (get!8620 lt!871034))) s!9460))))

(declare-fun d!698512 () Bool)

(declare-fun e!1525353 () Bool)

(assert (=> d!698512 e!1525353))

(declare-fun res!1016753 () Bool)

(assert (=> d!698512 (=> res!1016753 e!1525353)))

(assert (=> d!698512 (= res!1016753 e!1525351)))

(declare-fun res!1016751 () Bool)

(assert (=> d!698512 (=> (not res!1016751) (not e!1525351))))

(assert (=> d!698512 (= res!1016751 (isDefined!4386 lt!871034))))

(assert (=> d!698512 (= lt!871034 e!1525355)))

(declare-fun c!380744 () Bool)

(declare-fun e!1525352 () Bool)

(assert (=> d!698512 (= c!380744 e!1525352)))

(declare-fun res!1016749 () Bool)

(assert (=> d!698512 (=> (not res!1016749) (not e!1525352))))

(assert (=> d!698512 (= res!1016749 (matchR!3132 lt!871016 Nil!28171))))

(assert (=> d!698512 (validRegex!2740 lt!871016)))

(assert (=> d!698512 (= (findConcatSeparation!666 lt!871016 call!145849 Nil!28171 s!9460 s!9460) lt!871034)))

(declare-fun b!2393190 () Bool)

(assert (=> b!2393190 (= e!1525355 (Some!5557 (tuple2!27895 Nil!28171 s!9460)))))

(declare-fun b!2393191 () Bool)

(assert (=> b!2393191 (= e!1525353 (not (isDefined!4386 lt!871034)))))

(declare-fun b!2393192 () Bool)

(declare-fun lt!871035 () Unit!41210)

(declare-fun lt!871033 () Unit!41210)

(assert (=> b!2393192 (= lt!871035 lt!871033)))

(assert (=> b!2393192 (= (++!6969 (++!6969 Nil!28171 (Cons!28171 (h!33572 s!9460) Nil!28171)) (t!208246 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!610 (List!28269 C!14188 List!28269 List!28269) Unit!41210)

(assert (=> b!2393192 (= lt!871033 (lemmaMoveElementToOtherListKeepsConcatEq!610 Nil!28171 (h!33572 s!9460) (t!208246 s!9460) s!9460))))

(assert (=> b!2393192 (= e!1525354 (findConcatSeparation!666 lt!871016 call!145849 (++!6969 Nil!28171 (Cons!28171 (h!33572 s!9460) Nil!28171)) (t!208246 s!9460) s!9460))))

(declare-fun b!2393193 () Bool)

(declare-fun res!1016750 () Bool)

(assert (=> b!2393193 (=> (not res!1016750) (not e!1525351))))

(assert (=> b!2393193 (= res!1016750 (matchR!3132 lt!871016 (_1!16488 (get!8620 lt!871034))))))

(declare-fun b!2393194 () Bool)

(assert (=> b!2393194 (= e!1525352 (matchR!3132 call!145849 s!9460))))

(declare-fun b!2393195 () Bool)

(declare-fun res!1016752 () Bool)

(assert (=> b!2393195 (=> (not res!1016752) (not e!1525351))))

(assert (=> b!2393195 (= res!1016752 (matchR!3132 call!145849 (_2!16488 (get!8620 lt!871034))))))

(assert (= (and d!698512 res!1016749) b!2393194))

(assert (= (and d!698512 c!380744) b!2393190))

(assert (= (and d!698512 (not c!380744)) b!2393187))

(assert (= (and b!2393187 c!380745) b!2393188))

(assert (= (and b!2393187 (not c!380745)) b!2393192))

(assert (= (and d!698512 res!1016751) b!2393193))

(assert (= (and b!2393193 res!1016750) b!2393195))

(assert (= (and b!2393195 res!1016752) b!2393189))

(assert (= (and d!698512 (not res!1016753)) b!2393191))

(declare-fun m!2792723 () Bool)

(assert (=> b!2393191 m!2792723))

(declare-fun m!2792725 () Bool)

(assert (=> b!2393194 m!2792725))

(assert (=> d!698512 m!2792723))

(declare-fun m!2792727 () Bool)

(assert (=> d!698512 m!2792727))

(declare-fun m!2792729 () Bool)

(assert (=> d!698512 m!2792729))

(declare-fun m!2792731 () Bool)

(assert (=> b!2393189 m!2792731))

(declare-fun m!2792733 () Bool)

(assert (=> b!2393189 m!2792733))

(assert (=> b!2393195 m!2792731))

(declare-fun m!2792735 () Bool)

(assert (=> b!2393195 m!2792735))

(declare-fun m!2792737 () Bool)

(assert (=> b!2393192 m!2792737))

(assert (=> b!2393192 m!2792737))

(declare-fun m!2792739 () Bool)

(assert (=> b!2393192 m!2792739))

(declare-fun m!2792741 () Bool)

(assert (=> b!2393192 m!2792741))

(assert (=> b!2393192 m!2792737))

(declare-fun m!2792743 () Bool)

(assert (=> b!2393192 m!2792743))

(assert (=> b!2393193 m!2792731))

(declare-fun m!2792745 () Bool)

(assert (=> b!2393193 m!2792745))

(assert (=> bm!145841 d!698512))

(declare-fun d!698514 () Bool)

(assert (=> d!698514 (= (isDefined!4386 (findConcatSeparation!666 lt!871016 call!145848 Nil!28171 s!9460 s!9460)) (not (isEmpty!16153 (findConcatSeparation!666 lt!871016 call!145848 Nil!28171 s!9460 s!9460))))))

(declare-fun bs!462688 () Bool)

(assert (= bs!462688 d!698514))

(assert (=> bs!462688 m!2792681))

(declare-fun m!2792747 () Bool)

(assert (=> bs!462688 m!2792747))

(assert (=> b!2393161 d!698514))

(declare-fun b!2393196 () Bool)

(declare-fun e!1525360 () Option!5558)

(declare-fun e!1525359 () Option!5558)

(assert (=> b!2393196 (= e!1525360 e!1525359)))

(declare-fun c!380747 () Bool)

(assert (=> b!2393196 (= c!380747 ((_ is Nil!28171) s!9460))))

(declare-fun b!2393197 () Bool)

(assert (=> b!2393197 (= e!1525359 None!5557)))

(declare-fun b!2393198 () Bool)

(declare-fun e!1525356 () Bool)

(declare-fun lt!871037 () Option!5558)

(assert (=> b!2393198 (= e!1525356 (= (++!6969 (_1!16488 (get!8620 lt!871037)) (_2!16488 (get!8620 lt!871037))) s!9460))))

(declare-fun d!698516 () Bool)

(declare-fun e!1525358 () Bool)

(assert (=> d!698516 e!1525358))

(declare-fun res!1016758 () Bool)

(assert (=> d!698516 (=> res!1016758 e!1525358)))

(assert (=> d!698516 (= res!1016758 e!1525356)))

(declare-fun res!1016756 () Bool)

(assert (=> d!698516 (=> (not res!1016756) (not e!1525356))))

(assert (=> d!698516 (= res!1016756 (isDefined!4386 lt!871037))))

(assert (=> d!698516 (= lt!871037 e!1525360)))

(declare-fun c!380746 () Bool)

(declare-fun e!1525357 () Bool)

(assert (=> d!698516 (= c!380746 e!1525357)))

(declare-fun res!1016754 () Bool)

(assert (=> d!698516 (=> (not res!1016754) (not e!1525357))))

(assert (=> d!698516 (= res!1016754 (matchR!3132 lt!871016 Nil!28171))))

(assert (=> d!698516 (validRegex!2740 lt!871016)))

(assert (=> d!698516 (= (findConcatSeparation!666 lt!871016 call!145848 Nil!28171 s!9460 s!9460) lt!871037)))

(declare-fun b!2393199 () Bool)

(assert (=> b!2393199 (= e!1525360 (Some!5557 (tuple2!27895 Nil!28171 s!9460)))))

(declare-fun b!2393200 () Bool)

(assert (=> b!2393200 (= e!1525358 (not (isDefined!4386 lt!871037)))))

(declare-fun b!2393201 () Bool)

(declare-fun lt!871038 () Unit!41210)

(declare-fun lt!871036 () Unit!41210)

(assert (=> b!2393201 (= lt!871038 lt!871036)))

(assert (=> b!2393201 (= (++!6969 (++!6969 Nil!28171 (Cons!28171 (h!33572 s!9460) Nil!28171)) (t!208246 s!9460)) s!9460)))

(assert (=> b!2393201 (= lt!871036 (lemmaMoveElementToOtherListKeepsConcatEq!610 Nil!28171 (h!33572 s!9460) (t!208246 s!9460) s!9460))))

(assert (=> b!2393201 (= e!1525359 (findConcatSeparation!666 lt!871016 call!145848 (++!6969 Nil!28171 (Cons!28171 (h!33572 s!9460) Nil!28171)) (t!208246 s!9460) s!9460))))

(declare-fun b!2393202 () Bool)

(declare-fun res!1016755 () Bool)

(assert (=> b!2393202 (=> (not res!1016755) (not e!1525356))))

(assert (=> b!2393202 (= res!1016755 (matchR!3132 lt!871016 (_1!16488 (get!8620 lt!871037))))))

(declare-fun b!2393203 () Bool)

(assert (=> b!2393203 (= e!1525357 (matchR!3132 call!145848 s!9460))))

(declare-fun b!2393204 () Bool)

(declare-fun res!1016757 () Bool)

(assert (=> b!2393204 (=> (not res!1016757) (not e!1525356))))

(assert (=> b!2393204 (= res!1016757 (matchR!3132 call!145848 (_2!16488 (get!8620 lt!871037))))))

(assert (= (and d!698516 res!1016754) b!2393203))

(assert (= (and d!698516 c!380746) b!2393199))

(assert (= (and d!698516 (not c!380746)) b!2393196))

(assert (= (and b!2393196 c!380747) b!2393197))

(assert (= (and b!2393196 (not c!380747)) b!2393201))

(assert (= (and d!698516 res!1016756) b!2393202))

(assert (= (and b!2393202 res!1016755) b!2393204))

(assert (= (and b!2393204 res!1016757) b!2393198))

(assert (= (and d!698516 (not res!1016758)) b!2393200))

(declare-fun m!2792749 () Bool)

(assert (=> b!2393200 m!2792749))

(declare-fun m!2792751 () Bool)

(assert (=> b!2393203 m!2792751))

(assert (=> d!698516 m!2792749))

(assert (=> d!698516 m!2792727))

(assert (=> d!698516 m!2792729))

(declare-fun m!2792753 () Bool)

(assert (=> b!2393198 m!2792753))

(declare-fun m!2792755 () Bool)

(assert (=> b!2393198 m!2792755))

(assert (=> b!2393204 m!2792753))

(declare-fun m!2792757 () Bool)

(assert (=> b!2393204 m!2792757))

(assert (=> b!2393201 m!2792737))

(assert (=> b!2393201 m!2792737))

(assert (=> b!2393201 m!2792739))

(assert (=> b!2393201 m!2792741))

(assert (=> b!2393201 m!2792737))

(declare-fun m!2792759 () Bool)

(assert (=> b!2393201 m!2792759))

(assert (=> b!2393202 m!2792753))

(declare-fun m!2792761 () Bool)

(assert (=> b!2393202 m!2792761))

(assert (=> b!2393161 d!698516))

(declare-fun b!2393249 () Bool)

(declare-fun res!1016792 () Bool)

(declare-fun e!1525389 () Bool)

(assert (=> b!2393249 (=> (not res!1016792) (not e!1525389))))

(declare-fun isEmpty!16154 (List!28269) Bool)

(declare-fun tail!3532 (List!28269) List!28269)

(assert (=> b!2393249 (= res!1016792 (isEmpty!16154 (tail!3532 s!9460)))))

(declare-fun b!2393250 () Bool)

(declare-fun e!1525391 () Bool)

(declare-fun e!1525390 () Bool)

(assert (=> b!2393250 (= e!1525391 e!1525390)))

(declare-fun res!1016789 () Bool)

(assert (=> b!2393250 (=> (not res!1016789) (not e!1525390))))

(declare-fun lt!871044 () Bool)

(assert (=> b!2393250 (= res!1016789 (not lt!871044))))

(declare-fun b!2393251 () Bool)

(declare-fun res!1016790 () Bool)

(assert (=> b!2393251 (=> (not res!1016790) (not e!1525389))))

(declare-fun call!145853 () Bool)

(assert (=> b!2393251 (= res!1016790 (not call!145853))))

(declare-fun b!2393252 () Bool)

(declare-fun head!5262 (List!28269) C!14188)

(assert (=> b!2393252 (= e!1525389 (= (head!5262 s!9460) (c!380739 lt!871016)))))

(declare-fun b!2393253 () Bool)

(declare-fun res!1016787 () Bool)

(assert (=> b!2393253 (=> res!1016787 e!1525391)))

(assert (=> b!2393253 (= res!1016787 e!1525389)))

(declare-fun res!1016786 () Bool)

(assert (=> b!2393253 (=> (not res!1016786) (not e!1525389))))

(assert (=> b!2393253 (= res!1016786 lt!871044)))

(declare-fun b!2393254 () Bool)

(declare-fun e!1525388 () Bool)

(declare-fun e!1525386 () Bool)

(assert (=> b!2393254 (= e!1525388 e!1525386)))

(declare-fun c!380758 () Bool)

(assert (=> b!2393254 (= c!380758 ((_ is EmptyLang!7015) lt!871016))))

(declare-fun b!2393255 () Bool)

(declare-fun e!1525387 () Bool)

(assert (=> b!2393255 (= e!1525390 e!1525387)))

(declare-fun res!1016791 () Bool)

(assert (=> b!2393255 (=> res!1016791 e!1525387)))

(assert (=> b!2393255 (= res!1016791 call!145853)))

(declare-fun b!2393256 () Bool)

(declare-fun e!1525385 () Bool)

(declare-fun derivativeStep!1721 (Regex!7015 C!14188) Regex!7015)

(assert (=> b!2393256 (= e!1525385 (matchR!3132 (derivativeStep!1721 lt!871016 (head!5262 s!9460)) (tail!3532 s!9460)))))

(declare-fun b!2393257 () Bool)

(assert (=> b!2393257 (= e!1525387 (not (= (head!5262 s!9460) (c!380739 lt!871016))))))

(declare-fun b!2393258 () Bool)

(assert (=> b!2393258 (= e!1525388 (= lt!871044 call!145853))))

(declare-fun bm!145848 () Bool)

(assert (=> bm!145848 (= call!145853 (isEmpty!16154 s!9460))))

(declare-fun d!698518 () Bool)

(assert (=> d!698518 e!1525388))

(declare-fun c!380757 () Bool)

(assert (=> d!698518 (= c!380757 ((_ is EmptyExpr!7015) lt!871016))))

(assert (=> d!698518 (= lt!871044 e!1525385)))

(declare-fun c!380759 () Bool)

(assert (=> d!698518 (= c!380759 (isEmpty!16154 s!9460))))

(assert (=> d!698518 (validRegex!2740 lt!871016)))

(assert (=> d!698518 (= (matchR!3132 lt!871016 s!9460) lt!871044)))

(declare-fun b!2393259 () Bool)

(declare-fun res!1016785 () Bool)

(assert (=> b!2393259 (=> res!1016785 e!1525387)))

(assert (=> b!2393259 (= res!1016785 (not (isEmpty!16154 (tail!3532 s!9460))))))

(declare-fun b!2393260 () Bool)

(assert (=> b!2393260 (= e!1525386 (not lt!871044))))

(declare-fun b!2393261 () Bool)

(declare-fun res!1016788 () Bool)

(assert (=> b!2393261 (=> res!1016788 e!1525391)))

(assert (=> b!2393261 (= res!1016788 (not ((_ is ElementMatch!7015) lt!871016)))))

(assert (=> b!2393261 (= e!1525386 e!1525391)))

(declare-fun b!2393262 () Bool)

(declare-fun nullable!2063 (Regex!7015) Bool)

(assert (=> b!2393262 (= e!1525385 (nullable!2063 lt!871016))))

(assert (= (and d!698518 c!380759) b!2393262))

(assert (= (and d!698518 (not c!380759)) b!2393256))

(assert (= (and d!698518 c!380757) b!2393258))

(assert (= (and d!698518 (not c!380757)) b!2393254))

(assert (= (and b!2393254 c!380758) b!2393260))

(assert (= (and b!2393254 (not c!380758)) b!2393261))

(assert (= (and b!2393261 (not res!1016788)) b!2393253))

(assert (= (and b!2393253 res!1016786) b!2393251))

(assert (= (and b!2393251 res!1016790) b!2393249))

(assert (= (and b!2393249 res!1016792) b!2393252))

(assert (= (and b!2393253 (not res!1016787)) b!2393250))

(assert (= (and b!2393250 res!1016789) b!2393255))

(assert (= (and b!2393255 (not res!1016791)) b!2393259))

(assert (= (and b!2393259 (not res!1016785)) b!2393257))

(assert (= (or b!2393258 b!2393251 b!2393255) bm!145848))

(declare-fun m!2792777 () Bool)

(assert (=> b!2393259 m!2792777))

(assert (=> b!2393259 m!2792777))

(declare-fun m!2792779 () Bool)

(assert (=> b!2393259 m!2792779))

(declare-fun m!2792781 () Bool)

(assert (=> b!2393252 m!2792781))

(declare-fun m!2792783 () Bool)

(assert (=> b!2393262 m!2792783))

(declare-fun m!2792785 () Bool)

(assert (=> bm!145848 m!2792785))

(assert (=> b!2393257 m!2792781))

(assert (=> d!698518 m!2792785))

(assert (=> d!698518 m!2792729))

(assert (=> b!2393256 m!2792781))

(assert (=> b!2393256 m!2792781))

(declare-fun m!2792791 () Bool)

(assert (=> b!2393256 m!2792791))

(assert (=> b!2393256 m!2792777))

(assert (=> b!2393256 m!2792791))

(assert (=> b!2393256 m!2792777))

(declare-fun m!2792793 () Bool)

(assert (=> b!2393256 m!2792793))

(assert (=> b!2393249 m!2792777))

(assert (=> b!2393249 m!2792777))

(assert (=> b!2393249 m!2792779))

(assert (=> b!2393161 d!698518))

(declare-fun b!2393265 () Bool)

(declare-fun res!1016802 () Bool)

(declare-fun e!1525398 () Bool)

(assert (=> b!2393265 (=> (not res!1016802) (not e!1525398))))

(assert (=> b!2393265 (= res!1016802 (isEmpty!16154 (tail!3532 (ite c!380738 s!9460 call!145846))))))

(declare-fun b!2393266 () Bool)

(declare-fun e!1525400 () Bool)

(declare-fun e!1525399 () Bool)

(assert (=> b!2393266 (= e!1525400 e!1525399)))

(declare-fun res!1016799 () Bool)

(assert (=> b!2393266 (=> (not res!1016799) (not e!1525399))))

(declare-fun lt!871045 () Bool)

(assert (=> b!2393266 (= res!1016799 (not lt!871045))))

(declare-fun b!2393267 () Bool)

(declare-fun res!1016800 () Bool)

(assert (=> b!2393267 (=> (not res!1016800) (not e!1525398))))

(declare-fun call!145854 () Bool)

(assert (=> b!2393267 (= res!1016800 (not call!145854))))

(declare-fun b!2393268 () Bool)

(assert (=> b!2393268 (= e!1525398 (= (head!5262 (ite c!380738 s!9460 call!145846)) (c!380739 (ite c!380738 lt!871010 (Concat!11651 lt!871016 EmptyExpr!7015)))))))

(declare-fun b!2393269 () Bool)

(declare-fun res!1016797 () Bool)

(assert (=> b!2393269 (=> res!1016797 e!1525400)))

(assert (=> b!2393269 (= res!1016797 e!1525398)))

(declare-fun res!1016796 () Bool)

(assert (=> b!2393269 (=> (not res!1016796) (not e!1525398))))

(assert (=> b!2393269 (= res!1016796 lt!871045)))

(declare-fun b!2393270 () Bool)

(declare-fun e!1525397 () Bool)

(declare-fun e!1525395 () Bool)

(assert (=> b!2393270 (= e!1525397 e!1525395)))

(declare-fun c!380761 () Bool)

(assert (=> b!2393270 (= c!380761 ((_ is EmptyLang!7015) (ite c!380738 lt!871010 (Concat!11651 lt!871016 EmptyExpr!7015))))))

(declare-fun b!2393271 () Bool)

(declare-fun e!1525396 () Bool)

(assert (=> b!2393271 (= e!1525399 e!1525396)))

(declare-fun res!1016801 () Bool)

(assert (=> b!2393271 (=> res!1016801 e!1525396)))

(assert (=> b!2393271 (= res!1016801 call!145854)))

(declare-fun e!1525394 () Bool)

(declare-fun b!2393272 () Bool)

(assert (=> b!2393272 (= e!1525394 (matchR!3132 (derivativeStep!1721 (ite c!380738 lt!871010 (Concat!11651 lt!871016 EmptyExpr!7015)) (head!5262 (ite c!380738 s!9460 call!145846))) (tail!3532 (ite c!380738 s!9460 call!145846))))))

(declare-fun b!2393273 () Bool)

(assert (=> b!2393273 (= e!1525396 (not (= (head!5262 (ite c!380738 s!9460 call!145846)) (c!380739 (ite c!380738 lt!871010 (Concat!11651 lt!871016 EmptyExpr!7015))))))))

(declare-fun b!2393274 () Bool)

(assert (=> b!2393274 (= e!1525397 (= lt!871045 call!145854))))

(declare-fun bm!145849 () Bool)

(assert (=> bm!145849 (= call!145854 (isEmpty!16154 (ite c!380738 s!9460 call!145846)))))

(declare-fun d!698530 () Bool)

(assert (=> d!698530 e!1525397))

(declare-fun c!380760 () Bool)

(assert (=> d!698530 (= c!380760 ((_ is EmptyExpr!7015) (ite c!380738 lt!871010 (Concat!11651 lt!871016 EmptyExpr!7015))))))

(assert (=> d!698530 (= lt!871045 e!1525394)))

(declare-fun c!380762 () Bool)

(assert (=> d!698530 (= c!380762 (isEmpty!16154 (ite c!380738 s!9460 call!145846)))))

(assert (=> d!698530 (validRegex!2740 (ite c!380738 lt!871010 (Concat!11651 lt!871016 EmptyExpr!7015)))))

(assert (=> d!698530 (= (matchR!3132 (ite c!380738 lt!871010 (Concat!11651 lt!871016 EmptyExpr!7015)) (ite c!380738 s!9460 call!145846)) lt!871045)))

(declare-fun b!2393275 () Bool)

(declare-fun res!1016795 () Bool)

(assert (=> b!2393275 (=> res!1016795 e!1525396)))

(assert (=> b!2393275 (= res!1016795 (not (isEmpty!16154 (tail!3532 (ite c!380738 s!9460 call!145846)))))))

(declare-fun b!2393276 () Bool)

(assert (=> b!2393276 (= e!1525395 (not lt!871045))))

(declare-fun b!2393277 () Bool)

(declare-fun res!1016798 () Bool)

(assert (=> b!2393277 (=> res!1016798 e!1525400)))

(assert (=> b!2393277 (= res!1016798 (not ((_ is ElementMatch!7015) (ite c!380738 lt!871010 (Concat!11651 lt!871016 EmptyExpr!7015)))))))

(assert (=> b!2393277 (= e!1525395 e!1525400)))

(declare-fun b!2393278 () Bool)

(assert (=> b!2393278 (= e!1525394 (nullable!2063 (ite c!380738 lt!871010 (Concat!11651 lt!871016 EmptyExpr!7015))))))

(assert (= (and d!698530 c!380762) b!2393278))

(assert (= (and d!698530 (not c!380762)) b!2393272))

(assert (= (and d!698530 c!380760) b!2393274))

(assert (= (and d!698530 (not c!380760)) b!2393270))

(assert (= (and b!2393270 c!380761) b!2393276))

(assert (= (and b!2393270 (not c!380761)) b!2393277))

(assert (= (and b!2393277 (not res!1016798)) b!2393269))

(assert (= (and b!2393269 res!1016796) b!2393267))

(assert (= (and b!2393267 res!1016800) b!2393265))

(assert (= (and b!2393265 res!1016802) b!2393268))

(assert (= (and b!2393269 (not res!1016797)) b!2393266))

(assert (= (and b!2393266 res!1016799) b!2393271))

(assert (= (and b!2393271 (not res!1016801)) b!2393275))

(assert (= (and b!2393275 (not res!1016795)) b!2393273))

(assert (= (or b!2393274 b!2393267 b!2393271) bm!145849))

(declare-fun m!2792795 () Bool)

(assert (=> b!2393275 m!2792795))

(assert (=> b!2393275 m!2792795))

(declare-fun m!2792797 () Bool)

(assert (=> b!2393275 m!2792797))

(declare-fun m!2792799 () Bool)

(assert (=> b!2393268 m!2792799))

(declare-fun m!2792801 () Bool)

(assert (=> b!2393278 m!2792801))

(declare-fun m!2792803 () Bool)

(assert (=> bm!145849 m!2792803))

(assert (=> b!2393273 m!2792799))

(assert (=> d!698530 m!2792803))

(declare-fun m!2792805 () Bool)

(assert (=> d!698530 m!2792805))

(assert (=> b!2393272 m!2792799))

(assert (=> b!2393272 m!2792799))

(declare-fun m!2792807 () Bool)

(assert (=> b!2393272 m!2792807))

(assert (=> b!2393272 m!2792795))

(assert (=> b!2393272 m!2792807))

(assert (=> b!2393272 m!2792795))

(declare-fun m!2792809 () Bool)

(assert (=> b!2393272 m!2792809))

(assert (=> b!2393265 m!2792795))

(assert (=> b!2393265 m!2792795))

(assert (=> b!2393265 m!2792797))

(assert (=> bm!145842 d!698530))

(declare-fun d!698532 () Bool)

(assert (=> d!698532 (matchR!3132 (Concat!11651 lt!871016 EmptyExpr!7015) (++!6969 (_1!16488 lt!871011) (_2!16488 lt!871011)))))

(declare-fun lt!871048 () Unit!41210)

(declare-fun choose!14111 (Regex!7015 Regex!7015 List!28269 List!28269 List!28269) Unit!41210)

(assert (=> d!698532 (= lt!871048 (choose!14111 lt!871016 EmptyExpr!7015 (_1!16488 lt!871011) (_2!16488 lt!871011) s!9460))))

(assert (=> d!698532 (validRegex!2740 lt!871016)))

(assert (=> d!698532 (= (lemmaFindSeparationIsDefinedThenConcatMatches!34 lt!871016 EmptyExpr!7015 (_1!16488 lt!871011) (_2!16488 lt!871011) s!9460) lt!871048)))

(declare-fun bs!462689 () Bool)

(assert (= bs!462689 d!698532))

(declare-fun m!2792811 () Bool)

(assert (=> bs!462689 m!2792811))

(assert (=> bs!462689 m!2792811))

(declare-fun m!2792813 () Bool)

(assert (=> bs!462689 m!2792813))

(declare-fun m!2792815 () Bool)

(assert (=> bs!462689 m!2792815))

(assert (=> bs!462689 m!2792729))

(assert (=> b!2393163 d!698532))

(declare-fun d!698534 () Bool)

(assert (=> d!698534 (= (get!8620 lt!871025) (v!30965 lt!871025))))

(assert (=> b!2393163 d!698534))

(declare-fun d!698536 () Bool)

(assert (=> d!698536 (= (tail!3531 l!9164) (t!208245 l!9164))))

(assert (=> b!2393142 d!698536))

(declare-fun d!698538 () Bool)

(assert (=> d!698538 (= (isEmpty!16152 lt!871009) ((_ is Nil!28170) lt!871009))))

(assert (=> b!2393142 d!698538))

(declare-fun b!2393315 () Bool)

(declare-fun e!1525425 () Bool)

(declare-fun e!1525427 () Bool)

(assert (=> b!2393315 (= e!1525425 e!1525427)))

(declare-fun res!1016824 () Bool)

(assert (=> b!2393315 (=> (not res!1016824) (not e!1525427))))

(declare-fun call!145863 () Bool)

(assert (=> b!2393315 (= res!1016824 call!145863)))

(declare-fun bm!145856 () Bool)

(declare-fun call!145861 () Bool)

(declare-fun c!380772 () Bool)

(assert (=> bm!145856 (= call!145861 (validRegex!2740 (ite c!380772 (regOne!14543 r!13927) (regTwo!14542 r!13927))))))

(declare-fun b!2393316 () Bool)

(declare-fun res!1016827 () Bool)

(declare-fun e!1525428 () Bool)

(assert (=> b!2393316 (=> (not res!1016827) (not e!1525428))))

(assert (=> b!2393316 (= res!1016827 call!145861)))

(declare-fun e!1525431 () Bool)

(assert (=> b!2393316 (= e!1525431 e!1525428)))

(declare-fun d!698540 () Bool)

(declare-fun res!1016823 () Bool)

(declare-fun e!1525426 () Bool)

(assert (=> d!698540 (=> res!1016823 e!1525426)))

(assert (=> d!698540 (= res!1016823 ((_ is ElementMatch!7015) r!13927))))

(assert (=> d!698540 (= (validRegex!2740 r!13927) e!1525426)))

(declare-fun bm!145857 () Bool)

(declare-fun call!145862 () Bool)

(assert (=> bm!145857 (= call!145863 call!145862)))

(declare-fun bm!145858 () Bool)

(declare-fun c!380771 () Bool)

(assert (=> bm!145858 (= call!145862 (validRegex!2740 (ite c!380771 (reg!7344 r!13927) (ite c!380772 (regTwo!14543 r!13927) (regOne!14542 r!13927)))))))

(declare-fun b!2393317 () Bool)

(declare-fun e!1525430 () Bool)

(assert (=> b!2393317 (= e!1525430 e!1525431)))

(assert (=> b!2393317 (= c!380772 ((_ is Union!7015) r!13927))))

(declare-fun b!2393318 () Bool)

(declare-fun e!1525429 () Bool)

(assert (=> b!2393318 (= e!1525429 call!145862)))

(declare-fun b!2393319 () Bool)

(assert (=> b!2393319 (= e!1525426 e!1525430)))

(assert (=> b!2393319 (= c!380771 ((_ is Star!7015) r!13927))))

(declare-fun b!2393320 () Bool)

(assert (=> b!2393320 (= e!1525427 call!145861)))

(declare-fun b!2393321 () Bool)

(assert (=> b!2393321 (= e!1525430 e!1525429)))

(declare-fun res!1016825 () Bool)

(assert (=> b!2393321 (= res!1016825 (not (nullable!2063 (reg!7344 r!13927))))))

(assert (=> b!2393321 (=> (not res!1016825) (not e!1525429))))

(declare-fun b!2393322 () Bool)

(declare-fun res!1016826 () Bool)

(assert (=> b!2393322 (=> res!1016826 e!1525425)))

(assert (=> b!2393322 (= res!1016826 (not ((_ is Concat!11651) r!13927)))))

(assert (=> b!2393322 (= e!1525431 e!1525425)))

(declare-fun b!2393323 () Bool)

(assert (=> b!2393323 (= e!1525428 call!145863)))

(assert (= (and d!698540 (not res!1016823)) b!2393319))

(assert (= (and b!2393319 c!380771) b!2393321))

(assert (= (and b!2393319 (not c!380771)) b!2393317))

(assert (= (and b!2393321 res!1016825) b!2393318))

(assert (= (and b!2393317 c!380772) b!2393316))

(assert (= (and b!2393317 (not c!380772)) b!2393322))

(assert (= (and b!2393316 res!1016827) b!2393323))

(assert (= (and b!2393322 (not res!1016826)) b!2393315))

(assert (= (and b!2393315 res!1016824) b!2393320))

(assert (= (or b!2393316 b!2393320) bm!145856))

(assert (= (or b!2393323 b!2393315) bm!145857))

(assert (= (or b!2393318 bm!145857) bm!145858))

(declare-fun m!2792817 () Bool)

(assert (=> bm!145856 m!2792817))

(declare-fun m!2792819 () Bool)

(assert (=> bm!145858 m!2792819))

(declare-fun m!2792821 () Bool)

(assert (=> b!2393321 m!2792821))

(assert (=> b!2393151 d!698540))

(declare-fun bs!462690 () Bool)

(declare-fun b!2393391 () Bool)

(assert (= bs!462690 (and b!2393391 b!2393144)))

(declare-fun lambda!89724 () Int)

(assert (=> bs!462690 (not (= lambda!89724 lambda!89718))))

(assert (=> bs!462690 (not (= lambda!89724 lambda!89719))))

(assert (=> b!2393391 true))

(assert (=> b!2393391 true))

(declare-fun bs!462691 () Bool)

(declare-fun b!2393401 () Bool)

(assert (= bs!462691 (and b!2393401 b!2393144)))

(declare-fun lambda!89725 () Int)

(assert (=> bs!462691 (not (= lambda!89725 lambda!89718))))

(assert (=> bs!462691 (= lambda!89725 lambda!89719)))

(declare-fun bs!462692 () Bool)

(assert (= bs!462692 (and b!2393401 b!2393391)))

(assert (=> bs!462692 (not (= lambda!89725 lambda!89724))))

(assert (=> b!2393401 true))

(assert (=> b!2393401 true))

(declare-fun e!1525474 () Bool)

(declare-fun call!145868 () Bool)

(assert (=> b!2393391 (= e!1525474 call!145868)))

(declare-fun b!2393394 () Bool)

(declare-fun c!380792 () Bool)

(assert (=> b!2393394 (= c!380792 ((_ is ElementMatch!7015) r!13927))))

(declare-fun e!1525472 () Bool)

(declare-fun e!1525473 () Bool)

(assert (=> b!2393394 (= e!1525472 e!1525473)))

(declare-fun b!2393395 () Bool)

(declare-fun e!1525479 () Bool)

(assert (=> b!2393395 (= e!1525479 e!1525472)))

(declare-fun res!1016864 () Bool)

(assert (=> b!2393395 (= res!1016864 (not ((_ is EmptyLang!7015) r!13927)))))

(assert (=> b!2393395 (=> (not res!1016864) (not e!1525472))))

(declare-fun b!2393396 () Bool)

(declare-fun e!1525471 () Bool)

(declare-fun e!1525475 () Bool)

(assert (=> b!2393396 (= e!1525471 e!1525475)))

(declare-fun c!380793 () Bool)

(assert (=> b!2393396 (= c!380793 ((_ is Star!7015) r!13927))))

(declare-fun bm!145863 () Bool)

(declare-fun call!145869 () Bool)

(assert (=> bm!145863 (= call!145869 (isEmpty!16154 s!9460))))

(declare-fun b!2393397 () Bool)

(assert (=> b!2393397 (= e!1525473 (= s!9460 (Cons!28171 (c!380739 r!13927) Nil!28171)))))

(declare-fun b!2393398 () Bool)

(assert (=> b!2393398 (= e!1525479 call!145869)))

(declare-fun b!2393399 () Bool)

(declare-fun e!1525476 () Bool)

(assert (=> b!2393399 (= e!1525471 e!1525476)))

(declare-fun res!1016862 () Bool)

(assert (=> b!2393399 (= res!1016862 (matchRSpec!864 (regOne!14543 r!13927) s!9460))))

(assert (=> b!2393399 (=> res!1016862 e!1525476)))

(declare-fun b!2393400 () Bool)

(assert (=> b!2393400 (= e!1525476 (matchRSpec!864 (regTwo!14543 r!13927) s!9460))))

(assert (=> b!2393401 (= e!1525475 call!145868)))

(declare-fun b!2393402 () Bool)

(declare-fun res!1016861 () Bool)

(assert (=> b!2393402 (=> res!1016861 e!1525474)))

(assert (=> b!2393402 (= res!1016861 call!145869)))

(assert (=> b!2393402 (= e!1525475 e!1525474)))

(declare-fun d!698542 () Bool)

(declare-fun c!380791 () Bool)

(assert (=> d!698542 (= c!380791 ((_ is EmptyExpr!7015) r!13927))))

(assert (=> d!698542 (= (matchRSpec!864 r!13927 s!9460) e!1525479)))

(declare-fun bm!145864 () Bool)

(assert (=> bm!145864 (= call!145868 (Exists!1077 (ite c!380793 lambda!89724 lambda!89725)))))

(declare-fun b!2393405 () Bool)

(declare-fun c!380794 () Bool)

(assert (=> b!2393405 (= c!380794 ((_ is Union!7015) r!13927))))

(assert (=> b!2393405 (= e!1525473 e!1525471)))

(assert (= (and d!698542 c!380791) b!2393398))

(assert (= (and d!698542 (not c!380791)) b!2393395))

(assert (= (and b!2393395 res!1016864) b!2393394))

(assert (= (and b!2393394 c!380792) b!2393397))

(assert (= (and b!2393394 (not c!380792)) b!2393405))

(assert (= (and b!2393405 c!380794) b!2393399))

(assert (= (and b!2393405 (not c!380794)) b!2393396))

(assert (= (and b!2393399 (not res!1016862)) b!2393400))

(assert (= (and b!2393396 c!380793) b!2393402))

(assert (= (and b!2393396 (not c!380793)) b!2393401))

(assert (= (and b!2393402 (not res!1016861)) b!2393391))

(assert (= (or b!2393391 b!2393401) bm!145864))

(assert (= (or b!2393398 b!2393402) bm!145863))

(assert (=> bm!145863 m!2792785))

(declare-fun m!2792873 () Bool)

(assert (=> b!2393399 m!2792873))

(declare-fun m!2792875 () Bool)

(assert (=> b!2393400 m!2792875))

(declare-fun m!2792877 () Bool)

(assert (=> bm!145864 m!2792877))

(assert (=> b!2393156 d!698542))

(declare-fun b!2393416 () Bool)

(declare-fun res!1016883 () Bool)

(declare-fun e!1525488 () Bool)

(assert (=> b!2393416 (=> (not res!1016883) (not e!1525488))))

(assert (=> b!2393416 (= res!1016883 (isEmpty!16154 (tail!3532 s!9460)))))

(declare-fun b!2393417 () Bool)

(declare-fun e!1525490 () Bool)

(declare-fun e!1525489 () Bool)

(assert (=> b!2393417 (= e!1525490 e!1525489)))

(declare-fun res!1016880 () Bool)

(assert (=> b!2393417 (=> (not res!1016880) (not e!1525489))))

(declare-fun lt!871066 () Bool)

(assert (=> b!2393417 (= res!1016880 (not lt!871066))))

(declare-fun b!2393418 () Bool)

(declare-fun res!1016881 () Bool)

(assert (=> b!2393418 (=> (not res!1016881) (not e!1525488))))

(declare-fun call!145872 () Bool)

(assert (=> b!2393418 (= res!1016881 (not call!145872))))

(declare-fun b!2393419 () Bool)

(assert (=> b!2393419 (= e!1525488 (= (head!5262 s!9460) (c!380739 r!13927)))))

(declare-fun b!2393420 () Bool)

(declare-fun res!1016878 () Bool)

(assert (=> b!2393420 (=> res!1016878 e!1525490)))

(assert (=> b!2393420 (= res!1016878 e!1525488)))

(declare-fun res!1016877 () Bool)

(assert (=> b!2393420 (=> (not res!1016877) (not e!1525488))))

(assert (=> b!2393420 (= res!1016877 lt!871066)))

(declare-fun b!2393421 () Bool)

(declare-fun e!1525487 () Bool)

(declare-fun e!1525485 () Bool)

(assert (=> b!2393421 (= e!1525487 e!1525485)))

(declare-fun c!380796 () Bool)

(assert (=> b!2393421 (= c!380796 ((_ is EmptyLang!7015) r!13927))))

(declare-fun b!2393422 () Bool)

(declare-fun e!1525486 () Bool)

(assert (=> b!2393422 (= e!1525489 e!1525486)))

(declare-fun res!1016882 () Bool)

(assert (=> b!2393422 (=> res!1016882 e!1525486)))

(assert (=> b!2393422 (= res!1016882 call!145872)))

(declare-fun b!2393423 () Bool)

(declare-fun e!1525484 () Bool)

(assert (=> b!2393423 (= e!1525484 (matchR!3132 (derivativeStep!1721 r!13927 (head!5262 s!9460)) (tail!3532 s!9460)))))

(declare-fun b!2393424 () Bool)

(assert (=> b!2393424 (= e!1525486 (not (= (head!5262 s!9460) (c!380739 r!13927))))))

(declare-fun b!2393425 () Bool)

(assert (=> b!2393425 (= e!1525487 (= lt!871066 call!145872))))

(declare-fun bm!145867 () Bool)

(assert (=> bm!145867 (= call!145872 (isEmpty!16154 s!9460))))

(declare-fun d!698552 () Bool)

(assert (=> d!698552 e!1525487))

(declare-fun c!380795 () Bool)

(assert (=> d!698552 (= c!380795 ((_ is EmptyExpr!7015) r!13927))))

(assert (=> d!698552 (= lt!871066 e!1525484)))

(declare-fun c!380797 () Bool)

(assert (=> d!698552 (= c!380797 (isEmpty!16154 s!9460))))

(assert (=> d!698552 (validRegex!2740 r!13927)))

(assert (=> d!698552 (= (matchR!3132 r!13927 s!9460) lt!871066)))

(declare-fun b!2393426 () Bool)

(declare-fun res!1016876 () Bool)

(assert (=> b!2393426 (=> res!1016876 e!1525486)))

(assert (=> b!2393426 (= res!1016876 (not (isEmpty!16154 (tail!3532 s!9460))))))

(declare-fun b!2393427 () Bool)

(assert (=> b!2393427 (= e!1525485 (not lt!871066))))

(declare-fun b!2393428 () Bool)

(declare-fun res!1016879 () Bool)

(assert (=> b!2393428 (=> res!1016879 e!1525490)))

(assert (=> b!2393428 (= res!1016879 (not ((_ is ElementMatch!7015) r!13927)))))

(assert (=> b!2393428 (= e!1525485 e!1525490)))

(declare-fun b!2393429 () Bool)

(assert (=> b!2393429 (= e!1525484 (nullable!2063 r!13927))))

(assert (= (and d!698552 c!380797) b!2393429))

(assert (= (and d!698552 (not c!380797)) b!2393423))

(assert (= (and d!698552 c!380795) b!2393425))

(assert (= (and d!698552 (not c!380795)) b!2393421))

(assert (= (and b!2393421 c!380796) b!2393427))

(assert (= (and b!2393421 (not c!380796)) b!2393428))

(assert (= (and b!2393428 (not res!1016879)) b!2393420))

(assert (= (and b!2393420 res!1016877) b!2393418))

(assert (= (and b!2393418 res!1016881) b!2393416))

(assert (= (and b!2393416 res!1016883) b!2393419))

(assert (= (and b!2393420 (not res!1016878)) b!2393417))

(assert (= (and b!2393417 res!1016880) b!2393422))

(assert (= (and b!2393422 (not res!1016882)) b!2393426))

(assert (= (and b!2393426 (not res!1016876)) b!2393424))

(assert (= (or b!2393425 b!2393418 b!2393422) bm!145867))

(assert (=> b!2393426 m!2792777))

(assert (=> b!2393426 m!2792777))

(assert (=> b!2393426 m!2792779))

(assert (=> b!2393419 m!2792781))

(declare-fun m!2792879 () Bool)

(assert (=> b!2393429 m!2792879))

(assert (=> bm!145867 m!2792785))

(assert (=> b!2393424 m!2792781))

(assert (=> d!698552 m!2792785))

(assert (=> d!698552 m!2792687))

(assert (=> b!2393423 m!2792781))

(assert (=> b!2393423 m!2792781))

(declare-fun m!2792881 () Bool)

(assert (=> b!2393423 m!2792881))

(assert (=> b!2393423 m!2792777))

(assert (=> b!2393423 m!2792881))

(assert (=> b!2393423 m!2792777))

(declare-fun m!2792883 () Bool)

(assert (=> b!2393423 m!2792883))

(assert (=> b!2393416 m!2792777))

(assert (=> b!2393416 m!2792777))

(assert (=> b!2393416 m!2792779))

(assert (=> b!2393156 d!698552))

(declare-fun d!698554 () Bool)

(assert (=> d!698554 (= (matchR!3132 r!13927 s!9460) (matchRSpec!864 r!13927 s!9460))))

(declare-fun lt!871070 () Unit!41210)

(declare-fun choose!14114 (Regex!7015 List!28269) Unit!41210)

(assert (=> d!698554 (= lt!871070 (choose!14114 r!13927 s!9460))))

(assert (=> d!698554 (validRegex!2740 r!13927)))

(assert (=> d!698554 (= (mainMatchTheorem!864 r!13927 s!9460) lt!871070)))

(declare-fun bs!462693 () Bool)

(assert (= bs!462693 d!698554))

(assert (=> bs!462693 m!2792661))

(assert (=> bs!462693 m!2792659))

(declare-fun m!2792901 () Bool)

(assert (=> bs!462693 m!2792901))

(assert (=> bs!462693 m!2792687))

(assert (=> b!2393156 d!698554))

(declare-fun bs!462697 () Bool)

(declare-fun d!698558 () Bool)

(assert (= bs!462697 (and d!698558 start!234824)))

(declare-fun lambda!89728 () Int)

(assert (=> bs!462697 (= lambda!89728 lambda!89717)))

(declare-fun e!1525523 () Bool)

(assert (=> d!698558 e!1525523))

(declare-fun res!1016910 () Bool)

(assert (=> d!698558 (=> (not res!1016910) (not e!1525523))))

(declare-fun lt!871080 () Regex!7015)

(assert (=> d!698558 (= res!1016910 (validRegex!2740 lt!871080))))

(declare-fun e!1525526 () Regex!7015)

(assert (=> d!698558 (= lt!871080 e!1525526)))

(declare-fun c!380814 () Bool)

(declare-fun e!1525527 () Bool)

(assert (=> d!698558 (= c!380814 e!1525527)))

(declare-fun res!1016909 () Bool)

(assert (=> d!698558 (=> (not res!1016909) (not e!1525527))))

(assert (=> d!698558 (= res!1016909 ((_ is Cons!28170) l!9164))))

(assert (=> d!698558 (forall!5649 l!9164 lambda!89728)))

(assert (=> d!698558 (= (generalisedConcat!116 l!9164) lt!871080)))

(declare-fun b!2393487 () Bool)

(declare-fun e!1525525 () Bool)

(declare-fun isConcat!84 (Regex!7015) Bool)

(assert (=> b!2393487 (= e!1525525 (isConcat!84 lt!871080))))

(declare-fun b!2393488 () Bool)

(assert (=> b!2393488 (= e!1525525 (= lt!871080 (head!5261 l!9164)))))

(declare-fun b!2393489 () Bool)

(declare-fun e!1525524 () Regex!7015)

(assert (=> b!2393489 (= e!1525524 (Concat!11651 (h!33571 l!9164) (generalisedConcat!116 (t!208245 l!9164))))))

(declare-fun b!2393490 () Bool)

(assert (=> b!2393490 (= e!1525527 (isEmpty!16152 (t!208245 l!9164)))))

(declare-fun b!2393491 () Bool)

(declare-fun e!1525522 () Bool)

(assert (=> b!2393491 (= e!1525523 e!1525522)))

(declare-fun c!380815 () Bool)

(assert (=> b!2393491 (= c!380815 (isEmpty!16152 l!9164))))

(declare-fun b!2393492 () Bool)

(assert (=> b!2393492 (= e!1525522 e!1525525)))

(declare-fun c!380816 () Bool)

(assert (=> b!2393492 (= c!380816 (isEmpty!16152 (tail!3531 l!9164)))))

(declare-fun b!2393493 () Bool)

(assert (=> b!2393493 (= e!1525524 EmptyExpr!7015)))

(declare-fun b!2393494 () Bool)

(assert (=> b!2393494 (= e!1525526 e!1525524)))

(declare-fun c!380817 () Bool)

(assert (=> b!2393494 (= c!380817 ((_ is Cons!28170) l!9164))))

(declare-fun b!2393495 () Bool)

(assert (=> b!2393495 (= e!1525526 (h!33571 l!9164))))

(declare-fun b!2393496 () Bool)

(declare-fun isEmptyExpr!84 (Regex!7015) Bool)

(assert (=> b!2393496 (= e!1525522 (isEmptyExpr!84 lt!871080))))

(assert (= (and d!698558 res!1016909) b!2393490))

(assert (= (and d!698558 c!380814) b!2393495))

(assert (= (and d!698558 (not c!380814)) b!2393494))

(assert (= (and b!2393494 c!380817) b!2393489))

(assert (= (and b!2393494 (not c!380817)) b!2393493))

(assert (= (and d!698558 res!1016910) b!2393491))

(assert (= (and b!2393491 c!380815) b!2393496))

(assert (= (and b!2393491 (not c!380815)) b!2393492))

(assert (= (and b!2393492 c!380816) b!2393488))

(assert (= (and b!2393492 (not c!380816)) b!2393487))

(declare-fun m!2792941 () Bool)

(assert (=> b!2393490 m!2792941))

(assert (=> b!2393488 m!2792671))

(assert (=> b!2393491 m!2792665))

(declare-fun m!2792943 () Bool)

(assert (=> d!698558 m!2792943))

(declare-fun m!2792945 () Bool)

(assert (=> d!698558 m!2792945))

(declare-fun m!2792947 () Bool)

(assert (=> b!2393489 m!2792947))

(declare-fun m!2792949 () Bool)

(assert (=> b!2393487 m!2792949))

(assert (=> b!2393492 m!2792673))

(assert (=> b!2393492 m!2792673))

(declare-fun m!2792951 () Bool)

(assert (=> b!2393492 m!2792951))

(declare-fun m!2792953 () Bool)

(assert (=> b!2393496 m!2792953))

(assert (=> b!2393164 d!698558))

(declare-fun d!698570 () Bool)

(declare-fun res!1016921 () Bool)

(declare-fun e!1525546 () Bool)

(assert (=> d!698570 (=> res!1016921 e!1525546)))

(assert (=> d!698570 (= res!1016921 ((_ is Nil!28170) l!9164))))

(assert (=> d!698570 (= (forall!5649 l!9164 lambda!89717) e!1525546)))

(declare-fun b!2393523 () Bool)

(declare-fun e!1525547 () Bool)

(assert (=> b!2393523 (= e!1525546 e!1525547)))

(declare-fun res!1016922 () Bool)

(assert (=> b!2393523 (=> (not res!1016922) (not e!1525547))))

(declare-fun dynLambda!12130 (Int Regex!7015) Bool)

(assert (=> b!2393523 (= res!1016922 (dynLambda!12130 lambda!89717 (h!33571 l!9164)))))

(declare-fun b!2393524 () Bool)

(assert (=> b!2393524 (= e!1525547 (forall!5649 (t!208245 l!9164) lambda!89717))))

(assert (= (and d!698570 (not res!1016921)) b!2393523))

(assert (= (and b!2393523 res!1016922) b!2393524))

(declare-fun b_lambda!74221 () Bool)

(assert (=> (not b_lambda!74221) (not b!2393523)))

(declare-fun m!2792955 () Bool)

(assert (=> b!2393523 m!2792955))

(declare-fun m!2792957 () Bool)

(assert (=> b!2393524 m!2792957))

(assert (=> start!234824 d!698570))

(declare-fun d!698572 () Bool)

(assert (=> d!698572 (= (isDefined!4386 (ite c!380737 (ite c!380738 call!145840 lt!871025) call!145842)) (not (isEmpty!16153 (ite c!380737 (ite c!380738 call!145840 lt!871025) call!145842))))))

(declare-fun bs!462698 () Bool)

(assert (= bs!462698 d!698572))

(declare-fun m!2792959 () Bool)

(assert (=> bs!462698 m!2792959))

(assert (=> bm!145843 d!698572))

(declare-fun d!698574 () Bool)

(assert (=> d!698574 (= (isDefined!4386 (findConcatSeparation!666 (regOne!14542 r!13927) (regTwo!14542 r!13927) Nil!28171 s!9460 s!9460)) (not (isEmpty!16153 (findConcatSeparation!666 (regOne!14542 r!13927) (regTwo!14542 r!13927) Nil!28171 s!9460 s!9460))))))

(declare-fun bs!462699 () Bool)

(assert (= bs!462699 d!698574))

(assert (=> bs!462699 m!2792693))

(declare-fun m!2792961 () Bool)

(assert (=> bs!462699 m!2792961))

(assert (=> b!2393144 d!698574))

(declare-fun bs!462700 () Bool)

(declare-fun d!698576 () Bool)

(assert (= bs!462700 (and d!698576 b!2393144)))

(declare-fun lambda!89735 () Int)

(assert (=> bs!462700 (= lambda!89735 lambda!89718)))

(assert (=> bs!462700 (not (= lambda!89735 lambda!89719))))

(declare-fun bs!462701 () Bool)

(assert (= bs!462701 (and d!698576 b!2393391)))

(assert (=> bs!462701 (not (= lambda!89735 lambda!89724))))

(declare-fun bs!462702 () Bool)

(assert (= bs!462702 (and d!698576 b!2393401)))

(assert (=> bs!462702 (not (= lambda!89735 lambda!89725))))

(assert (=> d!698576 true))

(assert (=> d!698576 true))

(assert (=> d!698576 true))

(assert (=> d!698576 (= (isDefined!4386 (findConcatSeparation!666 (regOne!14542 r!13927) (regTwo!14542 r!13927) Nil!28171 s!9460 s!9460)) (Exists!1077 lambda!89735))))

(declare-fun lt!871083 () Unit!41210)

(declare-fun choose!14115 (Regex!7015 Regex!7015 List!28269) Unit!41210)

(assert (=> d!698576 (= lt!871083 (choose!14115 (regOne!14542 r!13927) (regTwo!14542 r!13927) s!9460))))

(assert (=> d!698576 (validRegex!2740 (regOne!14542 r!13927))))

(assert (=> d!698576 (= (lemmaFindConcatSeparationEquivalentToExists!666 (regOne!14542 r!13927) (regTwo!14542 r!13927) s!9460) lt!871083)))

(declare-fun bs!462704 () Bool)

(assert (= bs!462704 d!698576))

(declare-fun m!2792963 () Bool)

(assert (=> bs!462704 m!2792963))

(declare-fun m!2792965 () Bool)

(assert (=> bs!462704 m!2792965))

(assert (=> bs!462704 m!2792693))

(assert (=> bs!462704 m!2792693))

(assert (=> bs!462704 m!2792695))

(declare-fun m!2792967 () Bool)

(assert (=> bs!462704 m!2792967))

(assert (=> b!2393144 d!698576))

(declare-fun d!698578 () Bool)

(declare-fun choose!14116 (Int) Bool)

(assert (=> d!698578 (= (Exists!1077 lambda!89718) (choose!14116 lambda!89718))))

(declare-fun bs!462705 () Bool)

(assert (= bs!462705 d!698578))

(declare-fun m!2792969 () Bool)

(assert (=> bs!462705 m!2792969))

(assert (=> b!2393144 d!698578))

(declare-fun bs!462709 () Bool)

(declare-fun d!698580 () Bool)

(assert (= bs!462709 (and d!698580 b!2393401)))

(declare-fun lambda!89742 () Int)

(assert (=> bs!462709 (not (= lambda!89742 lambda!89725))))

(declare-fun bs!462710 () Bool)

(assert (= bs!462710 (and d!698580 d!698576)))

(assert (=> bs!462710 (= lambda!89742 lambda!89735)))

(declare-fun bs!462711 () Bool)

(assert (= bs!462711 (and d!698580 b!2393144)))

(assert (=> bs!462711 (= lambda!89742 lambda!89718)))

(declare-fun bs!462712 () Bool)

(assert (= bs!462712 (and d!698580 b!2393391)))

(assert (=> bs!462712 (not (= lambda!89742 lambda!89724))))

(assert (=> bs!462711 (not (= lambda!89742 lambda!89719))))

(assert (=> d!698580 true))

(assert (=> d!698580 true))

(assert (=> d!698580 true))

(declare-fun bs!462713 () Bool)

(assert (= bs!462713 d!698580))

(declare-fun lambda!89743 () Int)

(assert (=> bs!462713 (not (= lambda!89743 lambda!89742))))

(assert (=> bs!462709 (= lambda!89743 lambda!89725)))

(assert (=> bs!462710 (not (= lambda!89743 lambda!89735))))

(assert (=> bs!462711 (not (= lambda!89743 lambda!89718))))

(assert (=> bs!462712 (not (= lambda!89743 lambda!89724))))

(assert (=> bs!462711 (= lambda!89743 lambda!89719)))

(assert (=> d!698580 true))

(assert (=> d!698580 true))

(assert (=> d!698580 true))

(assert (=> d!698580 (= (Exists!1077 lambda!89742) (Exists!1077 lambda!89743))))

(declare-fun lt!871090 () Unit!41210)

(declare-fun choose!14117 (Regex!7015 Regex!7015 List!28269) Unit!41210)

(assert (=> d!698580 (= lt!871090 (choose!14117 (regOne!14542 r!13927) (regTwo!14542 r!13927) s!9460))))

(assert (=> d!698580 (validRegex!2740 (regOne!14542 r!13927))))

(assert (=> d!698580 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!416 (regOne!14542 r!13927) (regTwo!14542 r!13927) s!9460) lt!871090)))

(declare-fun m!2792985 () Bool)

(assert (=> bs!462713 m!2792985))

(declare-fun m!2792987 () Bool)

(assert (=> bs!462713 m!2792987))

(declare-fun m!2792989 () Bool)

(assert (=> bs!462713 m!2792989))

(assert (=> bs!462713 m!2792967))

(assert (=> b!2393144 d!698580))

(declare-fun d!698590 () Bool)

(assert (=> d!698590 (= (Exists!1077 lambda!89719) (choose!14116 lambda!89719))))

(declare-fun bs!462714 () Bool)

(assert (= bs!462714 d!698590))

(declare-fun m!2792991 () Bool)

(assert (=> bs!462714 m!2792991))

(assert (=> b!2393144 d!698590))

(declare-fun b!2393599 () Bool)

(declare-fun e!1525597 () Option!5558)

(declare-fun e!1525596 () Option!5558)

(assert (=> b!2393599 (= e!1525597 e!1525596)))

(declare-fun c!380840 () Bool)

(assert (=> b!2393599 (= c!380840 ((_ is Nil!28171) s!9460))))

(declare-fun b!2393600 () Bool)

(assert (=> b!2393600 (= e!1525596 None!5557)))

(declare-fun b!2393601 () Bool)

(declare-fun e!1525593 () Bool)

(declare-fun lt!871092 () Option!5558)

(assert (=> b!2393601 (= e!1525593 (= (++!6969 (_1!16488 (get!8620 lt!871092)) (_2!16488 (get!8620 lt!871092))) s!9460))))

(declare-fun d!698592 () Bool)

(declare-fun e!1525595 () Bool)

(assert (=> d!698592 e!1525595))

(declare-fun res!1016975 () Bool)

(assert (=> d!698592 (=> res!1016975 e!1525595)))

(assert (=> d!698592 (= res!1016975 e!1525593)))

(declare-fun res!1016973 () Bool)

(assert (=> d!698592 (=> (not res!1016973) (not e!1525593))))

(assert (=> d!698592 (= res!1016973 (isDefined!4386 lt!871092))))

(assert (=> d!698592 (= lt!871092 e!1525597)))

(declare-fun c!380839 () Bool)

(declare-fun e!1525594 () Bool)

(assert (=> d!698592 (= c!380839 e!1525594)))

(declare-fun res!1016971 () Bool)

(assert (=> d!698592 (=> (not res!1016971) (not e!1525594))))

(assert (=> d!698592 (= res!1016971 (matchR!3132 (regOne!14542 r!13927) Nil!28171))))

(assert (=> d!698592 (validRegex!2740 (regOne!14542 r!13927))))

(assert (=> d!698592 (= (findConcatSeparation!666 (regOne!14542 r!13927) (regTwo!14542 r!13927) Nil!28171 s!9460 s!9460) lt!871092)))

(declare-fun b!2393602 () Bool)

(assert (=> b!2393602 (= e!1525597 (Some!5557 (tuple2!27895 Nil!28171 s!9460)))))

(declare-fun b!2393603 () Bool)

(assert (=> b!2393603 (= e!1525595 (not (isDefined!4386 lt!871092)))))

(declare-fun b!2393604 () Bool)

(declare-fun lt!871093 () Unit!41210)

(declare-fun lt!871091 () Unit!41210)

(assert (=> b!2393604 (= lt!871093 lt!871091)))

(assert (=> b!2393604 (= (++!6969 (++!6969 Nil!28171 (Cons!28171 (h!33572 s!9460) Nil!28171)) (t!208246 s!9460)) s!9460)))

(assert (=> b!2393604 (= lt!871091 (lemmaMoveElementToOtherListKeepsConcatEq!610 Nil!28171 (h!33572 s!9460) (t!208246 s!9460) s!9460))))

(assert (=> b!2393604 (= e!1525596 (findConcatSeparation!666 (regOne!14542 r!13927) (regTwo!14542 r!13927) (++!6969 Nil!28171 (Cons!28171 (h!33572 s!9460) Nil!28171)) (t!208246 s!9460) s!9460))))

(declare-fun b!2393605 () Bool)

(declare-fun res!1016972 () Bool)

(assert (=> b!2393605 (=> (not res!1016972) (not e!1525593))))

(assert (=> b!2393605 (= res!1016972 (matchR!3132 (regOne!14542 r!13927) (_1!16488 (get!8620 lt!871092))))))

(declare-fun b!2393606 () Bool)

(assert (=> b!2393606 (= e!1525594 (matchR!3132 (regTwo!14542 r!13927) s!9460))))

(declare-fun b!2393607 () Bool)

(declare-fun res!1016974 () Bool)

(assert (=> b!2393607 (=> (not res!1016974) (not e!1525593))))

(assert (=> b!2393607 (= res!1016974 (matchR!3132 (regTwo!14542 r!13927) (_2!16488 (get!8620 lt!871092))))))

(assert (= (and d!698592 res!1016971) b!2393606))

(assert (= (and d!698592 c!380839) b!2393602))

(assert (= (and d!698592 (not c!380839)) b!2393599))

(assert (= (and b!2393599 c!380840) b!2393600))

(assert (= (and b!2393599 (not c!380840)) b!2393604))

(assert (= (and d!698592 res!1016973) b!2393605))

(assert (= (and b!2393605 res!1016972) b!2393607))

(assert (= (and b!2393607 res!1016974) b!2393601))

(assert (= (and d!698592 (not res!1016975)) b!2393603))

(declare-fun m!2793007 () Bool)

(assert (=> b!2393603 m!2793007))

(declare-fun m!2793009 () Bool)

(assert (=> b!2393606 m!2793009))

(assert (=> d!698592 m!2793007))

(declare-fun m!2793011 () Bool)

(assert (=> d!698592 m!2793011))

(assert (=> d!698592 m!2792967))

(declare-fun m!2793015 () Bool)

(assert (=> b!2393601 m!2793015))

(declare-fun m!2793021 () Bool)

(assert (=> b!2393601 m!2793021))

(assert (=> b!2393607 m!2793015))

(declare-fun m!2793025 () Bool)

(assert (=> b!2393607 m!2793025))

(assert (=> b!2393604 m!2792737))

(assert (=> b!2393604 m!2792737))

(assert (=> b!2393604 m!2792739))

(assert (=> b!2393604 m!2792741))

(assert (=> b!2393604 m!2792737))

(declare-fun m!2793027 () Bool)

(assert (=> b!2393604 m!2793027))

(assert (=> b!2393605 m!2793015))

(declare-fun m!2793029 () Bool)

(assert (=> b!2393605 m!2793029))

(assert (=> b!2393144 d!698592))

(declare-fun b!2393622 () Bool)

(declare-fun e!1525609 () Option!5558)

(declare-fun e!1525608 () Option!5558)

(assert (=> b!2393622 (= e!1525609 e!1525608)))

(declare-fun c!380845 () Bool)

(assert (=> b!2393622 (= c!380845 ((_ is Nil!28171) s!9460))))

(declare-fun b!2393623 () Bool)

(assert (=> b!2393623 (= e!1525608 None!5557)))

(declare-fun b!2393624 () Bool)

(declare-fun e!1525605 () Bool)

(declare-fun lt!871096 () Option!5558)

(assert (=> b!2393624 (= e!1525605 (= (++!6969 (_1!16488 (get!8620 lt!871096)) (_2!16488 (get!8620 lt!871096))) s!9460))))

(declare-fun d!698598 () Bool)

(declare-fun e!1525607 () Bool)

(assert (=> d!698598 e!1525607))

(declare-fun res!1016988 () Bool)

(assert (=> d!698598 (=> res!1016988 e!1525607)))

(assert (=> d!698598 (= res!1016988 e!1525605)))

(declare-fun res!1016986 () Bool)

(assert (=> d!698598 (=> (not res!1016986) (not e!1525605))))

(assert (=> d!698598 (= res!1016986 (isDefined!4386 lt!871096))))

(assert (=> d!698598 (= lt!871096 e!1525609)))

(declare-fun c!380844 () Bool)

(declare-fun e!1525606 () Bool)

(assert (=> d!698598 (= c!380844 e!1525606)))

(declare-fun res!1016984 () Bool)

(assert (=> d!698598 (=> (not res!1016984) (not e!1525606))))

(assert (=> d!698598 (= res!1016984 (matchR!3132 (ite c!380737 lt!871016 call!145841) Nil!28171))))

(assert (=> d!698598 (validRegex!2740 (ite c!380737 lt!871016 call!145841))))

(assert (=> d!698598 (= (findConcatSeparation!666 (ite c!380737 lt!871016 call!145841) (ite c!380737 EmptyExpr!7015 call!145848) Nil!28171 s!9460 s!9460) lt!871096)))

(declare-fun b!2393625 () Bool)

(assert (=> b!2393625 (= e!1525609 (Some!5557 (tuple2!27895 Nil!28171 s!9460)))))

(declare-fun b!2393626 () Bool)

(assert (=> b!2393626 (= e!1525607 (not (isDefined!4386 lt!871096)))))

(declare-fun b!2393627 () Bool)

(declare-fun lt!871097 () Unit!41210)

(declare-fun lt!871095 () Unit!41210)

(assert (=> b!2393627 (= lt!871097 lt!871095)))

(assert (=> b!2393627 (= (++!6969 (++!6969 Nil!28171 (Cons!28171 (h!33572 s!9460) Nil!28171)) (t!208246 s!9460)) s!9460)))

(assert (=> b!2393627 (= lt!871095 (lemmaMoveElementToOtherListKeepsConcatEq!610 Nil!28171 (h!33572 s!9460) (t!208246 s!9460) s!9460))))

(assert (=> b!2393627 (= e!1525608 (findConcatSeparation!666 (ite c!380737 lt!871016 call!145841) (ite c!380737 EmptyExpr!7015 call!145848) (++!6969 Nil!28171 (Cons!28171 (h!33572 s!9460) Nil!28171)) (t!208246 s!9460) s!9460))))

(declare-fun b!2393628 () Bool)

(declare-fun res!1016985 () Bool)

(assert (=> b!2393628 (=> (not res!1016985) (not e!1525605))))

(assert (=> b!2393628 (= res!1016985 (matchR!3132 (ite c!380737 lt!871016 call!145841) (_1!16488 (get!8620 lt!871096))))))

(declare-fun b!2393629 () Bool)

(assert (=> b!2393629 (= e!1525606 (matchR!3132 (ite c!380737 EmptyExpr!7015 call!145848) s!9460))))

(declare-fun b!2393630 () Bool)

(declare-fun res!1016987 () Bool)

(assert (=> b!2393630 (=> (not res!1016987) (not e!1525605))))

(assert (=> b!2393630 (= res!1016987 (matchR!3132 (ite c!380737 EmptyExpr!7015 call!145848) (_2!16488 (get!8620 lt!871096))))))

(assert (= (and d!698598 res!1016984) b!2393629))

(assert (= (and d!698598 c!380844) b!2393625))

(assert (= (and d!698598 (not c!380844)) b!2393622))

(assert (= (and b!2393622 c!380845) b!2393623))

(assert (= (and b!2393622 (not c!380845)) b!2393627))

(assert (= (and d!698598 res!1016986) b!2393628))

(assert (= (and b!2393628 res!1016985) b!2393630))

(assert (= (and b!2393630 res!1016987) b!2393624))

(assert (= (and d!698598 (not res!1016988)) b!2393626))

(declare-fun m!2793031 () Bool)

(assert (=> b!2393626 m!2793031))

(declare-fun m!2793033 () Bool)

(assert (=> b!2393629 m!2793033))

(assert (=> d!698598 m!2793031))

(declare-fun m!2793035 () Bool)

(assert (=> d!698598 m!2793035))

(declare-fun m!2793037 () Bool)

(assert (=> d!698598 m!2793037))

(declare-fun m!2793039 () Bool)

(assert (=> b!2393624 m!2793039))

(declare-fun m!2793041 () Bool)

(assert (=> b!2393624 m!2793041))

(assert (=> b!2393630 m!2793039))

(declare-fun m!2793043 () Bool)

(assert (=> b!2393630 m!2793043))

(assert (=> b!2393627 m!2792737))

(assert (=> b!2393627 m!2792737))

(assert (=> b!2393627 m!2792739))

(assert (=> b!2393627 m!2792741))

(assert (=> b!2393627 m!2792737))

(declare-fun m!2793045 () Bool)

(assert (=> b!2393627 m!2793045))

(assert (=> b!2393628 m!2793039))

(declare-fun m!2793047 () Bool)

(assert (=> b!2393628 m!2793047))

(assert (=> bm!145838 d!698598))

(declare-fun bs!462715 () Bool)

(declare-fun d!698600 () Bool)

(assert (= bs!462715 (and d!698600 start!234824)))

(declare-fun lambda!89744 () Int)

(assert (=> bs!462715 (= lambda!89744 lambda!89717)))

(declare-fun bs!462716 () Bool)

(assert (= bs!462716 (and d!698600 d!698558)))

(assert (=> bs!462716 (= lambda!89744 lambda!89728)))

(declare-fun e!1525611 () Bool)

(assert (=> d!698600 e!1525611))

(declare-fun res!1016990 () Bool)

(assert (=> d!698600 (=> (not res!1016990) (not e!1525611))))

(declare-fun lt!871098 () Regex!7015)

(assert (=> d!698600 (= res!1016990 (validRegex!2740 lt!871098))))

(declare-fun e!1525614 () Regex!7015)

(assert (=> d!698600 (= lt!871098 e!1525614)))

(declare-fun c!380846 () Bool)

(declare-fun e!1525615 () Bool)

(assert (=> d!698600 (= c!380846 e!1525615)))

(declare-fun res!1016989 () Bool)

(assert (=> d!698600 (=> (not res!1016989) (not e!1525615))))

(assert (=> d!698600 (= res!1016989 ((_ is Cons!28170) lt!871009))))

(assert (=> d!698600 (forall!5649 lt!871009 lambda!89744)))

(assert (=> d!698600 (= (generalisedConcat!116 lt!871009) lt!871098)))

(declare-fun b!2393631 () Bool)

(declare-fun e!1525613 () Bool)

(assert (=> b!2393631 (= e!1525613 (isConcat!84 lt!871098))))

(declare-fun b!2393632 () Bool)

(assert (=> b!2393632 (= e!1525613 (= lt!871098 (head!5261 lt!871009)))))

(declare-fun b!2393633 () Bool)

(declare-fun e!1525612 () Regex!7015)

(assert (=> b!2393633 (= e!1525612 (Concat!11651 (h!33571 lt!871009) (generalisedConcat!116 (t!208245 lt!871009))))))

(declare-fun b!2393634 () Bool)

(assert (=> b!2393634 (= e!1525615 (isEmpty!16152 (t!208245 lt!871009)))))

(declare-fun b!2393635 () Bool)

(declare-fun e!1525610 () Bool)

(assert (=> b!2393635 (= e!1525611 e!1525610)))

(declare-fun c!380847 () Bool)

(assert (=> b!2393635 (= c!380847 (isEmpty!16152 lt!871009))))

(declare-fun b!2393636 () Bool)

(assert (=> b!2393636 (= e!1525610 e!1525613)))

(declare-fun c!380848 () Bool)

(assert (=> b!2393636 (= c!380848 (isEmpty!16152 (tail!3531 lt!871009)))))

(declare-fun b!2393637 () Bool)

(assert (=> b!2393637 (= e!1525612 EmptyExpr!7015)))

(declare-fun b!2393638 () Bool)

(assert (=> b!2393638 (= e!1525614 e!1525612)))

(declare-fun c!380849 () Bool)

(assert (=> b!2393638 (= c!380849 ((_ is Cons!28170) lt!871009))))

(declare-fun b!2393639 () Bool)

(assert (=> b!2393639 (= e!1525614 (h!33571 lt!871009))))

(declare-fun b!2393640 () Bool)

(assert (=> b!2393640 (= e!1525610 (isEmptyExpr!84 lt!871098))))

(assert (= (and d!698600 res!1016989) b!2393634))

(assert (= (and d!698600 c!380846) b!2393639))

(assert (= (and d!698600 (not c!380846)) b!2393638))

(assert (= (and b!2393638 c!380849) b!2393633))

(assert (= (and b!2393638 (not c!380849)) b!2393637))

(assert (= (and d!698600 res!1016990) b!2393635))

(assert (= (and b!2393635 c!380847) b!2393640))

(assert (= (and b!2393635 (not c!380847)) b!2393636))

(assert (= (and b!2393636 c!380848) b!2393632))

(assert (= (and b!2393636 (not c!380848)) b!2393631))

(declare-fun m!2793049 () Bool)

(assert (=> b!2393634 m!2793049))

(declare-fun m!2793051 () Bool)

(assert (=> b!2393632 m!2793051))

(assert (=> b!2393635 m!2792675))

(declare-fun m!2793053 () Bool)

(assert (=> d!698600 m!2793053))

(declare-fun m!2793055 () Bool)

(assert (=> d!698600 m!2793055))

(declare-fun m!2793057 () Bool)

(assert (=> b!2393633 m!2793057))

(declare-fun m!2793059 () Bool)

(assert (=> b!2393631 m!2793059))

(declare-fun m!2793061 () Bool)

(assert (=> b!2393636 m!2793061))

(assert (=> b!2393636 m!2793061))

(declare-fun m!2793063 () Bool)

(assert (=> b!2393636 m!2793063))

(declare-fun m!2793065 () Bool)

(assert (=> b!2393640 m!2793065))

(assert (=> bm!145844 d!698600))

(declare-fun d!698602 () Bool)

(assert (=> d!698602 (= (isEmpty!16152 l!9164) ((_ is Nil!28170) l!9164))))

(assert (=> b!2393145 d!698602))

(declare-fun d!698604 () Bool)

(assert (=> d!698604 (matchR!3132 (Concat!11651 lt!871016 EmptyExpr!7015) (++!6969 s!9460 Nil!28171))))

(declare-fun lt!871103 () Unit!41210)

(declare-fun choose!14119 (Regex!7015 Regex!7015 List!28269 List!28269) Unit!41210)

(assert (=> d!698604 (= lt!871103 (choose!14119 lt!871016 EmptyExpr!7015 s!9460 Nil!28171))))

(declare-fun e!1525630 () Bool)

(assert (=> d!698604 e!1525630))

(declare-fun res!1016997 () Bool)

(assert (=> d!698604 (=> (not res!1016997) (not e!1525630))))

(assert (=> d!698604 (= res!1016997 (validRegex!2740 lt!871016))))

(assert (=> d!698604 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!52 lt!871016 EmptyExpr!7015 s!9460 Nil!28171) lt!871103)))

(declare-fun b!2393663 () Bool)

(assert (=> b!2393663 (= e!1525630 (validRegex!2740 EmptyExpr!7015))))

(assert (= (and d!698604 res!1016997) b!2393663))

(declare-fun m!2793067 () Bool)

(assert (=> d!698604 m!2793067))

(assert (=> d!698604 m!2793067))

(declare-fun m!2793069 () Bool)

(assert (=> d!698604 m!2793069))

(declare-fun m!2793071 () Bool)

(assert (=> d!698604 m!2793071))

(assert (=> d!698604 m!2792729))

(declare-fun m!2793073 () Bool)

(assert (=> b!2393663 m!2793073))

(assert (=> b!2393157 d!698604))

(declare-fun b!2393664 () Bool)

(declare-fun res!1017005 () Bool)

(declare-fun e!1525635 () Bool)

(assert (=> b!2393664 (=> (not res!1017005) (not e!1525635))))

(assert (=> b!2393664 (= res!1017005 (isEmpty!16154 (tail!3532 call!145846)))))

(declare-fun b!2393665 () Bool)

(declare-fun e!1525637 () Bool)

(declare-fun e!1525636 () Bool)

(assert (=> b!2393665 (= e!1525637 e!1525636)))

(declare-fun res!1017002 () Bool)

(assert (=> b!2393665 (=> (not res!1017002) (not e!1525636))))

(declare-fun lt!871104 () Bool)

(assert (=> b!2393665 (= res!1017002 (not lt!871104))))

(declare-fun b!2393666 () Bool)

(declare-fun res!1017003 () Bool)

(assert (=> b!2393666 (=> (not res!1017003) (not e!1525635))))

(declare-fun call!145892 () Bool)

(assert (=> b!2393666 (= res!1017003 (not call!145892))))

(declare-fun b!2393667 () Bool)

(assert (=> b!2393667 (= e!1525635 (= (head!5262 call!145846) (c!380739 lt!871010)))))

(declare-fun b!2393668 () Bool)

(declare-fun res!1017000 () Bool)

(assert (=> b!2393668 (=> res!1017000 e!1525637)))

(assert (=> b!2393668 (= res!1017000 e!1525635)))

(declare-fun res!1016999 () Bool)

(assert (=> b!2393668 (=> (not res!1016999) (not e!1525635))))

(assert (=> b!2393668 (= res!1016999 lt!871104)))

(declare-fun b!2393669 () Bool)

(declare-fun e!1525634 () Bool)

(declare-fun e!1525632 () Bool)

(assert (=> b!2393669 (= e!1525634 e!1525632)))

(declare-fun c!380859 () Bool)

(assert (=> b!2393669 (= c!380859 ((_ is EmptyLang!7015) lt!871010))))

(declare-fun b!2393670 () Bool)

(declare-fun e!1525633 () Bool)

(assert (=> b!2393670 (= e!1525636 e!1525633)))

(declare-fun res!1017004 () Bool)

(assert (=> b!2393670 (=> res!1017004 e!1525633)))

(assert (=> b!2393670 (= res!1017004 call!145892)))

(declare-fun b!2393671 () Bool)

(declare-fun e!1525631 () Bool)

(assert (=> b!2393671 (= e!1525631 (matchR!3132 (derivativeStep!1721 lt!871010 (head!5262 call!145846)) (tail!3532 call!145846)))))

(declare-fun b!2393672 () Bool)

(assert (=> b!2393672 (= e!1525633 (not (= (head!5262 call!145846) (c!380739 lt!871010))))))

(declare-fun b!2393673 () Bool)

(assert (=> b!2393673 (= e!1525634 (= lt!871104 call!145892))))

(declare-fun bm!145887 () Bool)

(assert (=> bm!145887 (= call!145892 (isEmpty!16154 call!145846))))

(declare-fun d!698606 () Bool)

(assert (=> d!698606 e!1525634))

(declare-fun c!380858 () Bool)

(assert (=> d!698606 (= c!380858 ((_ is EmptyExpr!7015) lt!871010))))

(assert (=> d!698606 (= lt!871104 e!1525631)))

(declare-fun c!380860 () Bool)

(assert (=> d!698606 (= c!380860 (isEmpty!16154 call!145846))))

(assert (=> d!698606 (validRegex!2740 lt!871010)))

(assert (=> d!698606 (= (matchR!3132 lt!871010 call!145846) lt!871104)))

(declare-fun b!2393674 () Bool)

(declare-fun res!1016998 () Bool)

(assert (=> b!2393674 (=> res!1016998 e!1525633)))

(assert (=> b!2393674 (= res!1016998 (not (isEmpty!16154 (tail!3532 call!145846))))))

(declare-fun b!2393675 () Bool)

(assert (=> b!2393675 (= e!1525632 (not lt!871104))))

(declare-fun b!2393676 () Bool)

(declare-fun res!1017001 () Bool)

(assert (=> b!2393676 (=> res!1017001 e!1525637)))

(assert (=> b!2393676 (= res!1017001 (not ((_ is ElementMatch!7015) lt!871010)))))

(assert (=> b!2393676 (= e!1525632 e!1525637)))

(declare-fun b!2393677 () Bool)

(assert (=> b!2393677 (= e!1525631 (nullable!2063 lt!871010))))

(assert (= (and d!698606 c!380860) b!2393677))

(assert (= (and d!698606 (not c!380860)) b!2393671))

(assert (= (and d!698606 c!380858) b!2393673))

(assert (= (and d!698606 (not c!380858)) b!2393669))

(assert (= (and b!2393669 c!380859) b!2393675))

(assert (= (and b!2393669 (not c!380859)) b!2393676))

(assert (= (and b!2393676 (not res!1017001)) b!2393668))

(assert (= (and b!2393668 res!1016999) b!2393666))

(assert (= (and b!2393666 res!1017003) b!2393664))

(assert (= (and b!2393664 res!1017005) b!2393667))

(assert (= (and b!2393668 (not res!1017000)) b!2393665))

(assert (= (and b!2393665 res!1017002) b!2393670))

(assert (= (and b!2393670 (not res!1017004)) b!2393674))

(assert (= (and b!2393674 (not res!1016998)) b!2393672))

(assert (= (or b!2393673 b!2393666 b!2393670) bm!145887))

(declare-fun m!2793075 () Bool)

(assert (=> b!2393674 m!2793075))

(assert (=> b!2393674 m!2793075))

(declare-fun m!2793077 () Bool)

(assert (=> b!2393674 m!2793077))

(declare-fun m!2793079 () Bool)

(assert (=> b!2393667 m!2793079))

(declare-fun m!2793081 () Bool)

(assert (=> b!2393677 m!2793081))

(declare-fun m!2793083 () Bool)

(assert (=> bm!145887 m!2793083))

(assert (=> b!2393672 m!2793079))

(assert (=> d!698606 m!2793083))

(declare-fun m!2793085 () Bool)

(assert (=> d!698606 m!2793085))

(assert (=> b!2393671 m!2793079))

(assert (=> b!2393671 m!2793079))

(declare-fun m!2793087 () Bool)

(assert (=> b!2393671 m!2793087))

(assert (=> b!2393671 m!2793075))

(assert (=> b!2393671 m!2793087))

(assert (=> b!2393671 m!2793075))

(declare-fun m!2793089 () Bool)

(assert (=> b!2393671 m!2793089))

(assert (=> b!2393664 m!2793075))

(assert (=> b!2393664 m!2793075))

(assert (=> b!2393664 m!2793077))

(assert (=> b!2393157 d!698606))

(declare-fun d!698608 () Bool)

(assert (=> d!698608 (isDefined!4386 (findConcatSeparation!666 lt!871016 EmptyExpr!7015 Nil!28171 s!9460 s!9460))))

(declare-fun lt!871110 () Unit!41210)

(declare-fun choose!14120 (Regex!7015 Regex!7015 List!28269) Unit!41210)

(assert (=> d!698608 (= lt!871110 (choose!14120 lt!871016 EmptyExpr!7015 s!9460))))

(assert (=> d!698608 (validRegex!2740 lt!871016)))

(assert (=> d!698608 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!34 lt!871016 EmptyExpr!7015 s!9460) lt!871110)))

(declare-fun bs!462718 () Bool)

(assert (= bs!462718 d!698608))

(declare-fun m!2793109 () Bool)

(assert (=> bs!462718 m!2793109))

(assert (=> bs!462718 m!2793109))

(declare-fun m!2793111 () Bool)

(assert (=> bs!462718 m!2793111))

(declare-fun m!2793113 () Bool)

(assert (=> bs!462718 m!2793113))

(assert (=> bs!462718 m!2792729))

(assert (=> b!2393157 d!698608))

(declare-fun b!2393708 () Bool)

(declare-fun res!1017014 () Bool)

(declare-fun e!1525655 () Bool)

(assert (=> b!2393708 (=> (not res!1017014) (not e!1525655))))

(declare-fun lt!871115 () List!28269)

(declare-fun size!22190 (List!28269) Int)

(assert (=> b!2393708 (= res!1017014 (= (size!22190 lt!871115) (+ (size!22190 (ite c!380738 s!9460 (_1!16488 lt!871011))) (size!22190 (ite c!380738 Nil!28171 (_2!16488 lt!871011))))))))

(declare-fun b!2393709 () Bool)

(assert (=> b!2393709 (= e!1525655 (or (not (= (ite c!380738 Nil!28171 (_2!16488 lt!871011)) Nil!28171)) (= lt!871115 (ite c!380738 s!9460 (_1!16488 lt!871011)))))))

(declare-fun b!2393706 () Bool)

(declare-fun e!1525654 () List!28269)

(assert (=> b!2393706 (= e!1525654 (ite c!380738 Nil!28171 (_2!16488 lt!871011)))))

(declare-fun d!698612 () Bool)

(assert (=> d!698612 e!1525655))

(declare-fun res!1017015 () Bool)

(assert (=> d!698612 (=> (not res!1017015) (not e!1525655))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3852 (List!28269) (InoxSet C!14188))

(assert (=> d!698612 (= res!1017015 (= (content!3852 lt!871115) ((_ map or) (content!3852 (ite c!380738 s!9460 (_1!16488 lt!871011))) (content!3852 (ite c!380738 Nil!28171 (_2!16488 lt!871011))))))))

(assert (=> d!698612 (= lt!871115 e!1525654)))

(declare-fun c!380871 () Bool)

(assert (=> d!698612 (= c!380871 ((_ is Nil!28171) (ite c!380738 s!9460 (_1!16488 lt!871011))))))

(assert (=> d!698612 (= (++!6969 (ite c!380738 s!9460 (_1!16488 lt!871011)) (ite c!380738 Nil!28171 (_2!16488 lt!871011))) lt!871115)))

(declare-fun b!2393707 () Bool)

(assert (=> b!2393707 (= e!1525654 (Cons!28171 (h!33572 (ite c!380738 s!9460 (_1!16488 lt!871011))) (++!6969 (t!208246 (ite c!380738 s!9460 (_1!16488 lt!871011))) (ite c!380738 Nil!28171 (_2!16488 lt!871011)))))))

(assert (= (and d!698612 c!380871) b!2393706))

(assert (= (and d!698612 (not c!380871)) b!2393707))

(assert (= (and d!698612 res!1017015) b!2393708))

(assert (= (and b!2393708 res!1017014) b!2393709))

(declare-fun m!2793139 () Bool)

(assert (=> b!2393708 m!2793139))

(declare-fun m!2793141 () Bool)

(assert (=> b!2393708 m!2793141))

(declare-fun m!2793143 () Bool)

(assert (=> b!2393708 m!2793143))

(declare-fun m!2793145 () Bool)

(assert (=> d!698612 m!2793145))

(declare-fun m!2793147 () Bool)

(assert (=> d!698612 m!2793147))

(declare-fun m!2793149 () Bool)

(assert (=> d!698612 m!2793149))

(declare-fun m!2793151 () Bool)

(assert (=> b!2393707 m!2793151))

(assert (=> bm!145845 d!698612))

(declare-fun b!2393722 () Bool)

(declare-fun e!1525658 () Bool)

(declare-fun tp!762545 () Bool)

(assert (=> b!2393722 (= e!1525658 tp!762545)))

(declare-fun b!2393720 () Bool)

(assert (=> b!2393720 (= e!1525658 tp_is_empty!11443)))

(assert (=> b!2393159 (= tp!762528 e!1525658)))

(declare-fun b!2393723 () Bool)

(declare-fun tp!762544 () Bool)

(declare-fun tp!762547 () Bool)

(assert (=> b!2393723 (= e!1525658 (and tp!762544 tp!762547))))

(declare-fun b!2393721 () Bool)

(declare-fun tp!762548 () Bool)

(declare-fun tp!762546 () Bool)

(assert (=> b!2393721 (= e!1525658 (and tp!762548 tp!762546))))

(assert (= (and b!2393159 ((_ is ElementMatch!7015) (regOne!14542 r!13927))) b!2393720))

(assert (= (and b!2393159 ((_ is Concat!11651) (regOne!14542 r!13927))) b!2393721))

(assert (= (and b!2393159 ((_ is Star!7015) (regOne!14542 r!13927))) b!2393722))

(assert (= (and b!2393159 ((_ is Union!7015) (regOne!14542 r!13927))) b!2393723))

(declare-fun b!2393726 () Bool)

(declare-fun e!1525659 () Bool)

(declare-fun tp!762550 () Bool)

(assert (=> b!2393726 (= e!1525659 tp!762550)))

(declare-fun b!2393724 () Bool)

(assert (=> b!2393724 (= e!1525659 tp_is_empty!11443)))

(assert (=> b!2393159 (= tp!762527 e!1525659)))

(declare-fun b!2393727 () Bool)

(declare-fun tp!762549 () Bool)

(declare-fun tp!762552 () Bool)

(assert (=> b!2393727 (= e!1525659 (and tp!762549 tp!762552))))

(declare-fun b!2393725 () Bool)

(declare-fun tp!762553 () Bool)

(declare-fun tp!762551 () Bool)

(assert (=> b!2393725 (= e!1525659 (and tp!762553 tp!762551))))

(assert (= (and b!2393159 ((_ is ElementMatch!7015) (regTwo!14542 r!13927))) b!2393724))

(assert (= (and b!2393159 ((_ is Concat!11651) (regTwo!14542 r!13927))) b!2393725))

(assert (= (and b!2393159 ((_ is Star!7015) (regTwo!14542 r!13927))) b!2393726))

(assert (= (and b!2393159 ((_ is Union!7015) (regTwo!14542 r!13927))) b!2393727))

(declare-fun b!2393730 () Bool)

(declare-fun e!1525660 () Bool)

(declare-fun tp!762555 () Bool)

(assert (=> b!2393730 (= e!1525660 tp!762555)))

(declare-fun b!2393728 () Bool)

(assert (=> b!2393728 (= e!1525660 tp_is_empty!11443)))

(assert (=> b!2393147 (= tp!762533 e!1525660)))

(declare-fun b!2393731 () Bool)

(declare-fun tp!762554 () Bool)

(declare-fun tp!762557 () Bool)

(assert (=> b!2393731 (= e!1525660 (and tp!762554 tp!762557))))

(declare-fun b!2393729 () Bool)

(declare-fun tp!762558 () Bool)

(declare-fun tp!762556 () Bool)

(assert (=> b!2393729 (= e!1525660 (and tp!762558 tp!762556))))

(assert (= (and b!2393147 ((_ is ElementMatch!7015) (h!33571 l!9164))) b!2393728))

(assert (= (and b!2393147 ((_ is Concat!11651) (h!33571 l!9164))) b!2393729))

(assert (= (and b!2393147 ((_ is Star!7015) (h!33571 l!9164))) b!2393730))

(assert (= (and b!2393147 ((_ is Union!7015) (h!33571 l!9164))) b!2393731))

(declare-fun b!2393736 () Bool)

(declare-fun e!1525663 () Bool)

(declare-fun tp!762563 () Bool)

(declare-fun tp!762564 () Bool)

(assert (=> b!2393736 (= e!1525663 (and tp!762563 tp!762564))))

(assert (=> b!2393147 (= tp!762532 e!1525663)))

(assert (= (and b!2393147 ((_ is Cons!28170) (t!208245 l!9164))) b!2393736))

(declare-fun b!2393739 () Bool)

(declare-fun e!1525664 () Bool)

(declare-fun tp!762566 () Bool)

(assert (=> b!2393739 (= e!1525664 tp!762566)))

(declare-fun b!2393737 () Bool)

(assert (=> b!2393737 (= e!1525664 tp_is_empty!11443)))

(assert (=> b!2393152 (= tp!762529 e!1525664)))

(declare-fun b!2393740 () Bool)

(declare-fun tp!762565 () Bool)

(declare-fun tp!762568 () Bool)

(assert (=> b!2393740 (= e!1525664 (and tp!762565 tp!762568))))

(declare-fun b!2393738 () Bool)

(declare-fun tp!762569 () Bool)

(declare-fun tp!762567 () Bool)

(assert (=> b!2393738 (= e!1525664 (and tp!762569 tp!762567))))

(assert (= (and b!2393152 ((_ is ElementMatch!7015) (reg!7344 r!13927))) b!2393737))

(assert (= (and b!2393152 ((_ is Concat!11651) (reg!7344 r!13927))) b!2393738))

(assert (= (and b!2393152 ((_ is Star!7015) (reg!7344 r!13927))) b!2393739))

(assert (= (and b!2393152 ((_ is Union!7015) (reg!7344 r!13927))) b!2393740))

(declare-fun b!2393743 () Bool)

(declare-fun e!1525665 () Bool)

(declare-fun tp!762571 () Bool)

(assert (=> b!2393743 (= e!1525665 tp!762571)))

(declare-fun b!2393741 () Bool)

(assert (=> b!2393741 (= e!1525665 tp_is_empty!11443)))

(assert (=> b!2393149 (= tp!762531 e!1525665)))

(declare-fun b!2393744 () Bool)

(declare-fun tp!762570 () Bool)

(declare-fun tp!762573 () Bool)

(assert (=> b!2393744 (= e!1525665 (and tp!762570 tp!762573))))

(declare-fun b!2393742 () Bool)

(declare-fun tp!762574 () Bool)

(declare-fun tp!762572 () Bool)

(assert (=> b!2393742 (= e!1525665 (and tp!762574 tp!762572))))

(assert (= (and b!2393149 ((_ is ElementMatch!7015) (regOne!14543 r!13927))) b!2393741))

(assert (= (and b!2393149 ((_ is Concat!11651) (regOne!14543 r!13927))) b!2393742))

(assert (= (and b!2393149 ((_ is Star!7015) (regOne!14543 r!13927))) b!2393743))

(assert (= (and b!2393149 ((_ is Union!7015) (regOne!14543 r!13927))) b!2393744))

(declare-fun b!2393747 () Bool)

(declare-fun e!1525666 () Bool)

(declare-fun tp!762576 () Bool)

(assert (=> b!2393747 (= e!1525666 tp!762576)))

(declare-fun b!2393745 () Bool)

(assert (=> b!2393745 (= e!1525666 tp_is_empty!11443)))

(assert (=> b!2393149 (= tp!762530 e!1525666)))

(declare-fun b!2393748 () Bool)

(declare-fun tp!762575 () Bool)

(declare-fun tp!762578 () Bool)

(assert (=> b!2393748 (= e!1525666 (and tp!762575 tp!762578))))

(declare-fun b!2393746 () Bool)

(declare-fun tp!762579 () Bool)

(declare-fun tp!762577 () Bool)

(assert (=> b!2393746 (= e!1525666 (and tp!762579 tp!762577))))

(assert (= (and b!2393149 ((_ is ElementMatch!7015) (regTwo!14543 r!13927))) b!2393745))

(assert (= (and b!2393149 ((_ is Concat!11651) (regTwo!14543 r!13927))) b!2393746))

(assert (= (and b!2393149 ((_ is Star!7015) (regTwo!14543 r!13927))) b!2393747))

(assert (= (and b!2393149 ((_ is Union!7015) (regTwo!14543 r!13927))) b!2393748))

(declare-fun b!2393753 () Bool)

(declare-fun e!1525669 () Bool)

(declare-fun tp!762582 () Bool)

(assert (=> b!2393753 (= e!1525669 (and tp_is_empty!11443 tp!762582))))

(assert (=> b!2393162 (= tp!762526 e!1525669)))

(assert (= (and b!2393162 ((_ is Cons!28171) (t!208246 s!9460))) b!2393753))

(declare-fun b_lambda!74223 () Bool)

(assert (= b_lambda!74221 (or start!234824 b_lambda!74223)))

(declare-fun bs!462724 () Bool)

(declare-fun d!698624 () Bool)

(assert (= bs!462724 (and d!698624 start!234824)))

(assert (=> bs!462724 (= (dynLambda!12130 lambda!89717 (h!33571 l!9164)) (validRegex!2740 (h!33571 l!9164)))))

(declare-fun m!2793153 () Bool)

(assert (=> bs!462724 m!2793153))

(assert (=> b!2393523 d!698624))

(check-sat (not d!698598) (not b!2393631) (not b!2393272) (not b!2393626) (not b!2393321) (not d!698512) (not b!2393259) (not b!2393488) (not bm!145863) (not b!2393640) (not b!2393722) (not b!2393429) (not b!2393202) (not d!698590) (not d!698532) (not b!2393723) (not b!2393636) (not b!2393630) (not b!2393195) (not d!698530) (not b!2393635) (not b!2393607) (not b!2393634) (not b!2393399) (not b!2393744) (not d!698600) (not d!698508) (not b!2393204) (not b!2393667) (not d!698552) (not b!2393707) (not b!2393200) (not b!2393663) (not b!2393727) (not b!2393742) (not d!698592) (not b!2393740) (not b!2393629) (not b!2393424) (not b!2393672) (not bm!145887) (not d!698606) (not b!2393191) (not b!2393490) (not b!2393632) (not b!2393524) (not b!2393257) (not b!2393739) (not d!698580) (not b!2393275) (not bm!145864) (not b!2393491) (not b!2393633) (not b!2393198) (not d!698576) (not b!2393194) (not b!2393268) (not b!2393677) (not b!2393606) (not d!698518) (not b!2393627) (not b!2393273) (not b!2393738) (not b!2393400) (not b!2393419) (not bm!145856) (not b!2393747) (not d!698554) (not b!2393664) (not b!2393748) (not b!2393743) (not d!698558) (not b!2393671) (not b!2393203) (not b!2393628) (not b!2393736) (not b!2393721) (not b!2393624) (not b!2393423) (not bm!145849) (not b!2393262) (not b!2393674) (not b!2393252) (not d!698574) (not d!698572) (not b!2393730) (not d!698612) (not b!2393278) (not b!2393729) (not b!2393489) (not b!2393492) (not b!2393192) (not b!2393731) (not b!2393496) (not d!698608) (not bm!145867) (not bs!462724) (not b!2393708) (not b!2393256) (not d!698604) (not b_lambda!74223) (not b!2393426) (not b!2393604) (not b!2393603) (not b!2393746) (not b!2393601) (not b!2393605) (not b!2393249) (not b!2393725) (not b!2393753) (not bm!145858) (not d!698514) (not b!2393265) (not b!2393193) tp_is_empty!11443 (not b!2393726) (not b!2393189) (not bm!145848) (not b!2393416) (not b!2393201) (not d!698516) (not b!2393487) (not d!698578))
(check-sat)
