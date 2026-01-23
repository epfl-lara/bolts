; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80838 () Bool)

(assert start!80838)

(declare-fun b!897743 () Bool)

(assert (=> b!897743 true))

(assert (=> b!897743 true))

(assert (=> b!897743 true))

(declare-fun lambda!27922 () Int)

(declare-fun lambda!27921 () Int)

(assert (=> b!897743 (not (= lambda!27922 lambda!27921))))

(assert (=> b!897743 true))

(assert (=> b!897743 true))

(assert (=> b!897743 true))

(declare-fun b!897741 () Bool)

(declare-fun e!587401 () Bool)

(declare-fun tp!282012 () Bool)

(declare-fun tp!282010 () Bool)

(assert (=> b!897741 (= e!587401 (and tp!282012 tp!282010))))

(declare-fun b!897742 () Bool)

(declare-fun e!587403 () Bool)

(declare-fun tp_is_empty!4341 () Bool)

(declare-fun tp!282009 () Bool)

(assert (=> b!897742 (= e!587403 (and tp_is_empty!4341 tp!282009))))

(declare-fun e!587404 () Bool)

(declare-fun e!587405 () Bool)

(assert (=> b!897743 (= e!587404 e!587405)))

(declare-fun res!408146 () Bool)

(assert (=> b!897743 (=> res!408146 e!587405)))

(declare-datatypes ((C!5268 0))(
  ( (C!5269 (val!2882 Int)) )
))
(declare-datatypes ((List!9579 0))(
  ( (Nil!9563) (Cons!9563 (h!14964 C!5268) (t!100625 List!9579)) )
))
(declare-fun s!10566 () List!9579)

(declare-fun isEmpty!5758 (List!9579) Bool)

(assert (=> b!897743 (= res!408146 (isEmpty!5758 s!10566))))

(declare-fun Exists!126 (Int) Bool)

(assert (=> b!897743 (= (Exists!126 lambda!27921) (Exists!126 lambda!27922))))

(declare-datatypes ((Unit!14277 0))(
  ( (Unit!14278) )
))
(declare-fun lt!333699 () Unit!14277)

(declare-datatypes ((Regex!2349 0))(
  ( (ElementMatch!2349 (c!145338 C!5268)) (Concat!4182 (regOne!5210 Regex!2349) (regTwo!5210 Regex!2349)) (EmptyExpr!2349) (Star!2349 (reg!2678 Regex!2349)) (EmptyLang!2349) (Union!2349 (regOne!5211 Regex!2349) (regTwo!5211 Regex!2349)) )
))
(declare-fun r!15766 () Regex!2349)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!18 (Regex!2349 List!9579) Unit!14277)

(assert (=> b!897743 (= lt!333699 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!18 (reg!2678 r!15766) s!10566))))

(declare-fun lt!333702 () Bool)

(assert (=> b!897743 (= lt!333702 (Exists!126 lambda!27921))))

(declare-datatypes ((tuple2!10700 0))(
  ( (tuple2!10701 (_1!6176 List!9579) (_2!6176 List!9579)) )
))
(declare-datatypes ((Option!1992 0))(
  ( (None!1991) (Some!1991 (v!19408 tuple2!10700)) )
))
(declare-fun lt!333700 () Option!1992)

(declare-fun isDefined!1634 (Option!1992) Bool)

(assert (=> b!897743 (= lt!333702 (isDefined!1634 lt!333700))))

(declare-fun lt!333703 () Regex!2349)

(declare-fun findConcatSeparation!98 (Regex!2349 Regex!2349 List!9579 List!9579 List!9579) Option!1992)

(assert (=> b!897743 (= lt!333700 (findConcatSeparation!98 (reg!2678 r!15766) lt!333703 Nil!9563 s!10566 s!10566))))

(declare-fun lt!333701 () Unit!14277)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!98 (Regex!2349 Regex!2349 List!9579) Unit!14277)

(assert (=> b!897743 (= lt!333701 (lemmaFindConcatSeparationEquivalentToExists!98 (reg!2678 r!15766) lt!333703 s!10566))))

(assert (=> b!897743 (= lt!333703 (Star!2349 (reg!2678 r!15766)))))

(declare-fun b!897744 () Bool)

(declare-fun res!408149 () Bool)

(assert (=> b!897744 (=> res!408149 e!587405)))

(declare-fun matchR!887 (Regex!2349 List!9579) Bool)

(declare-fun get!3022 (Option!1992) tuple2!10700)

(assert (=> b!897744 (= res!408149 (not (matchR!887 (reg!2678 r!15766) (_1!6176 (get!3022 lt!333700)))))))

(declare-fun b!897745 () Bool)

(declare-fun res!408148 () Bool)

(assert (=> b!897745 (=> res!408148 e!587405)))

(assert (=> b!897745 (= res!408148 (not lt!333702))))

(declare-fun b!897740 () Bool)

(declare-fun tp!282007 () Bool)

(assert (=> b!897740 (= e!587401 tp!282007)))

(declare-fun res!408147 () Bool)

(declare-fun e!587402 () Bool)

(assert (=> start!80838 (=> (not res!408147) (not e!587402))))

(declare-fun validRegex!818 (Regex!2349) Bool)

(assert (=> start!80838 (= res!408147 (validRegex!818 r!15766))))

(assert (=> start!80838 e!587402))

(assert (=> start!80838 e!587401))

(assert (=> start!80838 e!587403))

(declare-fun b!897746 () Bool)

(assert (=> b!897746 (= e!587402 (not e!587404))))

(declare-fun res!408150 () Bool)

(assert (=> b!897746 (=> res!408150 e!587404)))

(declare-fun lt!333705 () Bool)

(get-info :version)

(assert (=> b!897746 (= res!408150 (or (not lt!333705) (and ((_ is Concat!4182) r!15766) ((_ is EmptyExpr!2349) (regOne!5210 r!15766))) (and ((_ is Concat!4182) r!15766) ((_ is EmptyExpr!2349) (regTwo!5210 r!15766))) ((_ is Concat!4182) r!15766) ((_ is Union!2349) r!15766) (not ((_ is Star!2349) r!15766))))))

(declare-fun matchRSpec!150 (Regex!2349 List!9579) Bool)

(assert (=> b!897746 (= lt!333705 (matchRSpec!150 r!15766 s!10566))))

(assert (=> b!897746 (= lt!333705 (matchR!887 r!15766 s!10566))))

(declare-fun lt!333704 () Unit!14277)

(declare-fun mainMatchTheorem!150 (Regex!2349 List!9579) Unit!14277)

(assert (=> b!897746 (= lt!333704 (mainMatchTheorem!150 r!15766 s!10566))))

(declare-fun b!897747 () Bool)

(assert (=> b!897747 (= e!587405 (validRegex!818 lt!333703))))

(declare-fun b!897748 () Bool)

(assert (=> b!897748 (= e!587401 tp_is_empty!4341)))

(declare-fun b!897749 () Bool)

(declare-fun tp!282011 () Bool)

(declare-fun tp!282008 () Bool)

(assert (=> b!897749 (= e!587401 (and tp!282011 tp!282008))))

(assert (= (and start!80838 res!408147) b!897746))

(assert (= (and b!897746 (not res!408150)) b!897743))

(assert (= (and b!897743 (not res!408146)) b!897745))

(assert (= (and b!897745 (not res!408148)) b!897744))

(assert (= (and b!897744 (not res!408149)) b!897747))

(assert (= (and start!80838 ((_ is ElementMatch!2349) r!15766)) b!897748))

(assert (= (and start!80838 ((_ is Concat!4182) r!15766)) b!897749))

(assert (= (and start!80838 ((_ is Star!2349) r!15766)) b!897740))

(assert (= (and start!80838 ((_ is Union!2349) r!15766)) b!897741))

(assert (= (and start!80838 ((_ is Cons!9563) s!10566)) b!897742))

(declare-fun m!1136769 () Bool)

(assert (=> b!897747 m!1136769))

(declare-fun m!1136771 () Bool)

(assert (=> b!897744 m!1136771))

(declare-fun m!1136773 () Bool)

(assert (=> b!897744 m!1136773))

(declare-fun m!1136775 () Bool)

(assert (=> start!80838 m!1136775))

(declare-fun m!1136777 () Bool)

(assert (=> b!897743 m!1136777))

(declare-fun m!1136779 () Bool)

(assert (=> b!897743 m!1136779))

(declare-fun m!1136781 () Bool)

(assert (=> b!897743 m!1136781))

(declare-fun m!1136783 () Bool)

(assert (=> b!897743 m!1136783))

(declare-fun m!1136785 () Bool)

(assert (=> b!897743 m!1136785))

(declare-fun m!1136787 () Bool)

(assert (=> b!897743 m!1136787))

(declare-fun m!1136789 () Bool)

(assert (=> b!897743 m!1136789))

(assert (=> b!897743 m!1136777))

(declare-fun m!1136791 () Bool)

(assert (=> b!897746 m!1136791))

(declare-fun m!1136793 () Bool)

(assert (=> b!897746 m!1136793))

(declare-fun m!1136795 () Bool)

(assert (=> b!897746 m!1136795))

(check-sat (not start!80838) (not b!897746) (not b!897742) (not b!897744) (not b!897747) (not b!897740) (not b!897741) (not b!897749) tp_is_empty!4341 (not b!897743))
(check-sat)
