; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79502 () Bool)

(assert start!79502)

(declare-fun b!879656 () Bool)

(assert (=> b!879656 true))

(assert (=> b!879656 true))

(declare-fun lambda!26820 () Int)

(declare-fun lambda!26819 () Int)

(assert (=> b!879656 (not (= lambda!26820 lambda!26819))))

(assert (=> b!879656 true))

(assert (=> b!879656 true))

(declare-fun b!879652 () Bool)

(declare-fun e!577646 () Bool)

(declare-fun e!577647 () Bool)

(assert (=> b!879652 (= e!577646 (not e!577647))))

(declare-fun res!400032 () Bool)

(assert (=> b!879652 (=> res!400032 e!577647)))

(declare-fun lt!330410 () Bool)

(declare-datatypes ((C!5064 0))(
  ( (C!5065 (val!2780 Int)) )
))
(declare-datatypes ((Regex!2247 0))(
  ( (ElementMatch!2247 (c!142194 C!5064)) (Concat!4080 (regOne!5006 Regex!2247) (regTwo!5006 Regex!2247)) (EmptyExpr!2247) (Star!2247 (reg!2576 Regex!2247)) (EmptyLang!2247) (Union!2247 (regOne!5007 Regex!2247) (regTwo!5007 Regex!2247)) )
))
(declare-fun r!15766 () Regex!2247)

(get-info :version)

(assert (=> b!879652 (= res!400032 (or (not lt!330410) (and ((_ is Concat!4080) r!15766) ((_ is EmptyExpr!2247) (regOne!5006 r!15766))) (not ((_ is Concat!4080) r!15766)) (not ((_ is EmptyExpr!2247) (regTwo!5006 r!15766)))))))

(declare-datatypes ((List!9477 0))(
  ( (Nil!9461) (Cons!9461 (h!14862 C!5064) (t!100523 List!9477)) )
))
(declare-fun s!10566 () List!9477)

(declare-fun matchRSpec!48 (Regex!2247 List!9477) Bool)

(assert (=> b!879652 (= lt!330410 (matchRSpec!48 r!15766 s!10566))))

(declare-fun matchR!785 (Regex!2247 List!9477) Bool)

(assert (=> b!879652 (= lt!330410 (matchR!785 r!15766 s!10566))))

(declare-datatypes ((Unit!14073 0))(
  ( (Unit!14074) )
))
(declare-fun lt!330407 () Unit!14073)

(declare-fun mainMatchTheorem!48 (Regex!2247 List!9477) Unit!14073)

(assert (=> b!879652 (= lt!330407 (mainMatchTheorem!48 r!15766 s!10566))))

(declare-fun b!879653 () Bool)

(declare-fun res!400031 () Bool)

(declare-fun e!577645 () Bool)

(assert (=> b!879653 (=> res!400031 e!577645)))

(declare-datatypes ((tuple2!10584 0))(
  ( (tuple2!10585 (_1!6118 List!9477) (_2!6118 List!9477)) )
))
(declare-fun lt!330413 () tuple2!10584)

(assert (=> b!879653 (= res!400031 (not (matchR!785 (regOne!5006 r!15766) (_1!6118 lt!330413))))))

(declare-fun b!879654 () Bool)

(declare-fun e!577644 () Bool)

(declare-fun tp_is_empty!4137 () Bool)

(assert (=> b!879654 (= e!577644 tp_is_empty!4137)))

(declare-fun b!879655 () Bool)

(assert (=> b!879655 (= e!577645 true)))

(assert (=> b!879655 (matchRSpec!48 (regOne!5006 r!15766) (_1!6118 lt!330413))))

(declare-fun lt!330412 () Unit!14073)

(assert (=> b!879655 (= lt!330412 (mainMatchTheorem!48 (regOne!5006 r!15766) (_1!6118 lt!330413)))))

(assert (=> b!879656 (= e!577647 e!577645)))

(declare-fun res!400034 () Bool)

(assert (=> b!879656 (=> res!400034 e!577645)))

(declare-fun isEmpty!5657 (List!9477) Bool)

(assert (=> b!879656 (= res!400034 (not (isEmpty!5657 (_2!6118 lt!330413))))))

(declare-datatypes ((Option!1934 0))(
  ( (None!1933) (Some!1933 (v!19350 tuple2!10584)) )
))
(declare-fun lt!330409 () Option!1934)

(declare-fun get!2928 (Option!1934) tuple2!10584)

(assert (=> b!879656 (= lt!330413 (get!2928 lt!330409))))

(declare-fun Exists!44 (Int) Bool)

(assert (=> b!879656 (= (Exists!44 lambda!26819) (Exists!44 lambda!26820))))

(declare-fun lt!330408 () Unit!14073)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!36 (Regex!2247 Regex!2247 List!9477) Unit!14073)

(assert (=> b!879656 (= lt!330408 (lemmaExistCutMatchRandMatchRSpecEquivalent!36 (regOne!5006 r!15766) EmptyExpr!2247 s!10566))))

(declare-fun isDefined!1576 (Option!1934) Bool)

(assert (=> b!879656 (= (isDefined!1576 lt!330409) (Exists!44 lambda!26819))))

(declare-fun findConcatSeparation!40 (Regex!2247 Regex!2247 List!9477 List!9477 List!9477) Option!1934)

(assert (=> b!879656 (= lt!330409 (findConcatSeparation!40 (regOne!5006 r!15766) EmptyExpr!2247 Nil!9461 s!10566 s!10566))))

(declare-fun lt!330411 () Unit!14073)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!40 (Regex!2247 Regex!2247 List!9477) Unit!14073)

(assert (=> b!879656 (= lt!330411 (lemmaFindConcatSeparationEquivalentToExists!40 (regOne!5006 r!15766) EmptyExpr!2247 s!10566))))

(declare-fun b!879657 () Bool)

(declare-fun tp!277969 () Bool)

(declare-fun tp!277971 () Bool)

(assert (=> b!879657 (= e!577644 (and tp!277969 tp!277971))))

(declare-fun res!400033 () Bool)

(assert (=> start!79502 (=> (not res!400033) (not e!577646))))

(declare-fun validRegex!716 (Regex!2247) Bool)

(assert (=> start!79502 (= res!400033 (validRegex!716 r!15766))))

(assert (=> start!79502 e!577646))

(assert (=> start!79502 e!577644))

(declare-fun e!577643 () Bool)

(assert (=> start!79502 e!577643))

(declare-fun b!879658 () Bool)

(declare-fun tp!277972 () Bool)

(assert (=> b!879658 (= e!577643 (and tp_is_empty!4137 tp!277972))))

(declare-fun b!879659 () Bool)

(declare-fun tp!277968 () Bool)

(declare-fun tp!277970 () Bool)

(assert (=> b!879659 (= e!577644 (and tp!277968 tp!277970))))

(declare-fun b!879660 () Bool)

(declare-fun tp!277967 () Bool)

(assert (=> b!879660 (= e!577644 tp!277967)))

(declare-fun b!879661 () Bool)

(declare-fun res!400030 () Bool)

(assert (=> b!879661 (=> res!400030 e!577647)))

(assert (=> b!879661 (= res!400030 (isEmpty!5657 s!10566))))

(assert (= (and start!79502 res!400033) b!879652))

(assert (= (and b!879652 (not res!400032)) b!879661))

(assert (= (and b!879661 (not res!400030)) b!879656))

(assert (= (and b!879656 (not res!400034)) b!879653))

(assert (= (and b!879653 (not res!400031)) b!879655))

(assert (= (and start!79502 ((_ is ElementMatch!2247) r!15766)) b!879654))

(assert (= (and start!79502 ((_ is Concat!4080) r!15766)) b!879657))

(assert (= (and start!79502 ((_ is Star!2247) r!15766)) b!879660))

(assert (= (and start!79502 ((_ is Union!2247) r!15766)) b!879659))

(assert (= (and start!79502 ((_ is Cons!9461) s!10566)) b!879658))

(declare-fun m!1128639 () Bool)

(assert (=> b!879655 m!1128639))

(declare-fun m!1128641 () Bool)

(assert (=> b!879655 m!1128641))

(declare-fun m!1128643 () Bool)

(assert (=> b!879653 m!1128643))

(declare-fun m!1128645 () Bool)

(assert (=> b!879661 m!1128645))

(declare-fun m!1128647 () Bool)

(assert (=> start!79502 m!1128647))

(declare-fun m!1128649 () Bool)

(assert (=> b!879652 m!1128649))

(declare-fun m!1128651 () Bool)

(assert (=> b!879652 m!1128651))

(declare-fun m!1128653 () Bool)

(assert (=> b!879652 m!1128653))

(declare-fun m!1128655 () Bool)

(assert (=> b!879656 m!1128655))

(declare-fun m!1128657 () Bool)

(assert (=> b!879656 m!1128657))

(declare-fun m!1128659 () Bool)

(assert (=> b!879656 m!1128659))

(declare-fun m!1128661 () Bool)

(assert (=> b!879656 m!1128661))

(declare-fun m!1128663 () Bool)

(assert (=> b!879656 m!1128663))

(assert (=> b!879656 m!1128655))

(declare-fun m!1128665 () Bool)

(assert (=> b!879656 m!1128665))

(declare-fun m!1128667 () Bool)

(assert (=> b!879656 m!1128667))

(declare-fun m!1128669 () Bool)

(assert (=> b!879656 m!1128669))

(check-sat (not b!879659) (not b!879658) (not b!879656) tp_is_empty!4137 (not b!879657) (not b!879653) (not start!79502) (not b!879655) (not b!879660) (not b!879652) (not b!879661))
(check-sat)
