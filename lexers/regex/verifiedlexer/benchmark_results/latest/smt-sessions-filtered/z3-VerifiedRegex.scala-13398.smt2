; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!725674 () Bool)

(assert start!725674)

(declare-fun b!7501061 () Bool)

(assert (=> b!7501061 true))

(assert (=> b!7501061 true))

(assert (=> b!7501061 true))

(declare-fun lambda!464915 () Int)

(declare-fun lambda!464914 () Int)

(assert (=> b!7501061 (not (= lambda!464915 lambda!464914))))

(assert (=> b!7501061 true))

(assert (=> b!7501061 true))

(assert (=> b!7501061 true))

(declare-fun b!7501057 () Bool)

(declare-fun e!4472033 () Bool)

(declare-fun tp!2177407 () Bool)

(declare-fun tp!2177415 () Bool)

(assert (=> b!7501057 (= e!4472033 (and tp!2177407 tp!2177415))))

(declare-fun b!7501058 () Bool)

(declare-fun e!4472035 () Bool)

(declare-fun tp_is_empty!49607 () Bool)

(assert (=> b!7501058 (= e!4472035 tp_is_empty!49607)))

(declare-fun b!7501059 () Bool)

(declare-fun e!4472038 () Bool)

(declare-fun tp!2177409 () Bool)

(declare-fun tp!2177412 () Bool)

(assert (=> b!7501059 (= e!4472038 (and tp!2177409 tp!2177412))))

(declare-fun res!3009144 () Bool)

(declare-fun e!4472036 () Bool)

(assert (=> start!725674 (=> (not res!3009144) (not e!4472036))))

(declare-datatypes ((C!39592 0))(
  ( (C!39593 (val!30194 Int)) )
))
(declare-datatypes ((Regex!19659 0))(
  ( (ElementMatch!19659 (c!1384770 C!39592)) (Concat!28504 (regOne!39830 Regex!19659) (regTwo!39830 Regex!19659)) (EmptyExpr!19659) (Star!19659 (reg!19988 Regex!19659)) (EmptyLang!19659) (Union!19659 (regOne!39831 Regex!19659) (regTwo!39831 Regex!19659)) )
))
(declare-fun r1!5845 () Regex!19659)

(declare-fun validRegex!10173 (Regex!19659) Bool)

(assert (=> start!725674 (= res!3009144 (validRegex!10173 r1!5845))))

(assert (=> start!725674 e!4472036))

(assert (=> start!725674 e!4472033))

(assert (=> start!725674 e!4472038))

(assert (=> start!725674 e!4472035))

(declare-fun e!4472037 () Bool)

(assert (=> start!725674 e!4472037))

(declare-fun b!7501060 () Bool)

(declare-fun res!3009143 () Bool)

(assert (=> b!7501060 (=> (not res!3009143) (not e!4472036))))

(declare-fun r2!5783 () Regex!19659)

(assert (=> b!7501060 (= res!3009143 (validRegex!10173 r2!5783))))

(declare-fun e!4472034 () Bool)

(assert (=> b!7501061 (= e!4472034 true)))

(declare-fun Exists!4276 (Int) Bool)

(assert (=> b!7501061 (= (Exists!4276 lambda!464914) (Exists!4276 lambda!464915))))

(declare-fun lt!2631609 () Regex!19659)

(declare-fun rTail!78 () Regex!19659)

(declare-datatypes ((Unit!166149 0))(
  ( (Unit!166150) )
))
(declare-fun lt!2631613 () Unit!166149)

(declare-datatypes ((List!72373 0))(
  ( (Nil!72249) (Cons!72249 (h!78697 C!39592) (t!386942 List!72373)) )
))
(declare-fun s!13591 () List!72373)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2600 (Regex!19659 Regex!19659 List!72373) Unit!166149)

(assert (=> b!7501061 (= lt!2631613 (lemmaExistCutMatchRandMatchRSpecEquivalent!2600 lt!2631609 rTail!78 s!13591))))

(declare-datatypes ((tuple2!68752 0))(
  ( (tuple2!68753 (_1!37679 List!72373) (_2!37679 List!72373)) )
))
(declare-datatypes ((Option!17208 0))(
  ( (None!17207) (Some!17207 (v!54336 tuple2!68752)) )
))
(declare-fun isDefined!13897 (Option!17208) Bool)

(declare-fun findConcatSeparation!3330 (Regex!19659 Regex!19659 List!72373 List!72373 List!72373) Option!17208)

(assert (=> b!7501061 (= (isDefined!13897 (findConcatSeparation!3330 lt!2631609 rTail!78 Nil!72249 s!13591 s!13591)) (Exists!4276 lambda!464914))))

(declare-fun lt!2631612 () Unit!166149)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3088 (Regex!19659 Regex!19659 List!72373) Unit!166149)

(assert (=> b!7501061 (= lt!2631612 (lemmaFindConcatSeparationEquivalentToExists!3088 lt!2631609 rTail!78 s!13591))))

(declare-fun b!7501062 () Bool)

(declare-fun tp!2177413 () Bool)

(declare-fun tp!2177418 () Bool)

(assert (=> b!7501062 (= e!4472035 (and tp!2177413 tp!2177418))))

(declare-fun b!7501063 () Bool)

(declare-fun tp!2177419 () Bool)

(assert (=> b!7501063 (= e!4472033 tp!2177419)))

(declare-fun b!7501064 () Bool)

(declare-fun tp!2177406 () Bool)

(declare-fun tp!2177420 () Bool)

(assert (=> b!7501064 (= e!4472035 (and tp!2177406 tp!2177420))))

(declare-fun b!7501065 () Bool)

(assert (=> b!7501065 (= e!4472036 (not e!4472034))))

(declare-fun res!3009141 () Bool)

(assert (=> b!7501065 (=> res!3009141 e!4472034)))

(declare-fun lt!2631606 () Bool)

(assert (=> b!7501065 (= res!3009141 lt!2631606)))

(declare-fun lt!2631608 () Regex!19659)

(declare-fun matchR!9421 (Regex!19659 List!72373) Bool)

(declare-fun matchRSpec!4336 (Regex!19659 List!72373) Bool)

(assert (=> b!7501065 (= (matchR!9421 lt!2631608 s!13591) (matchRSpec!4336 lt!2631608 s!13591))))

(declare-fun lt!2631611 () Unit!166149)

(declare-fun mainMatchTheorem!4330 (Regex!19659 List!72373) Unit!166149)

(assert (=> b!7501065 (= lt!2631611 (mainMatchTheorem!4330 lt!2631608 s!13591))))

(declare-fun lt!2631610 () Regex!19659)

(assert (=> b!7501065 (= lt!2631606 (matchRSpec!4336 lt!2631610 s!13591))))

(assert (=> b!7501065 (= lt!2631606 (matchR!9421 lt!2631610 s!13591))))

(declare-fun lt!2631607 () Unit!166149)

(assert (=> b!7501065 (= lt!2631607 (mainMatchTheorem!4330 lt!2631610 s!13591))))

(assert (=> b!7501065 (= lt!2631608 (Union!19659 (Concat!28504 r1!5845 rTail!78) (Concat!28504 r2!5783 rTail!78)))))

(assert (=> b!7501065 (= lt!2631610 (Concat!28504 lt!2631609 rTail!78))))

(assert (=> b!7501065 (= lt!2631609 (Union!19659 r1!5845 r2!5783))))

(declare-fun b!7501066 () Bool)

(assert (=> b!7501066 (= e!4472038 tp_is_empty!49607)))

(declare-fun b!7501067 () Bool)

(declare-fun tp!2177414 () Bool)

(assert (=> b!7501067 (= e!4472037 (and tp_is_empty!49607 tp!2177414))))

(declare-fun b!7501068 () Bool)

(declare-fun tp!2177410 () Bool)

(assert (=> b!7501068 (= e!4472038 tp!2177410)))

(declare-fun b!7501069 () Bool)

(declare-fun tp!2177417 () Bool)

(assert (=> b!7501069 (= e!4472035 tp!2177417)))

(declare-fun b!7501070 () Bool)

(assert (=> b!7501070 (= e!4472033 tp_is_empty!49607)))

(declare-fun b!7501071 () Bool)

(declare-fun tp!2177421 () Bool)

(declare-fun tp!2177416 () Bool)

(assert (=> b!7501071 (= e!4472038 (and tp!2177421 tp!2177416))))

(declare-fun b!7501072 () Bool)

(declare-fun tp!2177408 () Bool)

(declare-fun tp!2177411 () Bool)

(assert (=> b!7501072 (= e!4472033 (and tp!2177408 tp!2177411))))

(declare-fun b!7501073 () Bool)

(declare-fun res!3009142 () Bool)

(assert (=> b!7501073 (=> (not res!3009142) (not e!4472036))))

(assert (=> b!7501073 (= res!3009142 (validRegex!10173 rTail!78))))

(assert (= (and start!725674 res!3009144) b!7501060))

(assert (= (and b!7501060 res!3009143) b!7501073))

(assert (= (and b!7501073 res!3009142) b!7501065))

(assert (= (and b!7501065 (not res!3009141)) b!7501061))

(get-info :version)

(assert (= (and start!725674 ((_ is ElementMatch!19659) r1!5845)) b!7501070))

(assert (= (and start!725674 ((_ is Concat!28504) r1!5845)) b!7501057))

(assert (= (and start!725674 ((_ is Star!19659) r1!5845)) b!7501063))

(assert (= (and start!725674 ((_ is Union!19659) r1!5845)) b!7501072))

(assert (= (and start!725674 ((_ is ElementMatch!19659) r2!5783)) b!7501066))

(assert (= (and start!725674 ((_ is Concat!28504) r2!5783)) b!7501071))

(assert (= (and start!725674 ((_ is Star!19659) r2!5783)) b!7501068))

(assert (= (and start!725674 ((_ is Union!19659) r2!5783)) b!7501059))

(assert (= (and start!725674 ((_ is ElementMatch!19659) rTail!78)) b!7501058))

(assert (= (and start!725674 ((_ is Concat!28504) rTail!78)) b!7501064))

(assert (= (and start!725674 ((_ is Star!19659) rTail!78)) b!7501069))

(assert (= (and start!725674 ((_ is Union!19659) rTail!78)) b!7501062))

(assert (= (and start!725674 ((_ is Cons!72249) s!13591)) b!7501067))

(declare-fun m!8082834 () Bool)

(assert (=> b!7501061 m!8082834))

(declare-fun m!8082836 () Bool)

(assert (=> b!7501061 m!8082836))

(declare-fun m!8082838 () Bool)

(assert (=> b!7501061 m!8082838))

(declare-fun m!8082840 () Bool)

(assert (=> b!7501061 m!8082840))

(assert (=> b!7501061 m!8082840))

(declare-fun m!8082842 () Bool)

(assert (=> b!7501061 m!8082842))

(declare-fun m!8082844 () Bool)

(assert (=> b!7501061 m!8082844))

(assert (=> b!7501061 m!8082834))

(declare-fun m!8082846 () Bool)

(assert (=> b!7501060 m!8082846))

(declare-fun m!8082848 () Bool)

(assert (=> b!7501073 m!8082848))

(declare-fun m!8082850 () Bool)

(assert (=> b!7501065 m!8082850))

(declare-fun m!8082852 () Bool)

(assert (=> b!7501065 m!8082852))

(declare-fun m!8082854 () Bool)

(assert (=> b!7501065 m!8082854))

(declare-fun m!8082856 () Bool)

(assert (=> b!7501065 m!8082856))

(declare-fun m!8082858 () Bool)

(assert (=> b!7501065 m!8082858))

(declare-fun m!8082860 () Bool)

(assert (=> b!7501065 m!8082860))

(declare-fun m!8082862 () Bool)

(assert (=> start!725674 m!8082862))

(check-sat (not b!7501062) (not b!7501067) (not b!7501064) (not b!7501073) (not b!7501069) (not b!7501063) (not b!7501071) (not b!7501060) (not b!7501068) (not b!7501072) (not b!7501057) tp_is_empty!49607 (not start!725674) (not b!7501061) (not b!7501059) (not b!7501065))
(check-sat)
