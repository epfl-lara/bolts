; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!81586 () Bool)

(assert start!81586)

(declare-fun b!907137 () Bool)

(assert (=> b!907137 true))

(assert (=> b!907137 true))

(declare-fun lambda!28668 () Int)

(declare-fun lambda!28667 () Int)

(assert (=> b!907137 (not (= lambda!28668 lambda!28667))))

(assert (=> b!907137 true))

(assert (=> b!907137 true))

(declare-fun b!907135 () Bool)

(declare-fun res!412497 () Bool)

(declare-fun e!592268 () Bool)

(assert (=> b!907135 (=> res!412497 e!592268)))

(declare-datatypes ((C!5372 0))(
  ( (C!5373 (val!2934 Int)) )
))
(declare-datatypes ((List!9631 0))(
  ( (Nil!9615) (Cons!9615 (h!15016 C!5372) (t!100677 List!9631)) )
))
(declare-fun isPrefix!1003 (List!9631 List!9631) Bool)

(assert (=> b!907135 (= res!412497 (not (isPrefix!1003 Nil!9615 Nil!9615)))))

(declare-fun b!907136 () Bool)

(declare-fun e!592267 () Bool)

(assert (=> b!907136 (= e!592267 e!592268)))

(declare-fun res!412498 () Bool)

(assert (=> b!907136 (=> res!412498 e!592268)))

(declare-fun lt!335877 () Bool)

(declare-fun lt!335879 () Bool)

(assert (=> b!907136 (= res!412498 (or (not lt!335877) (not lt!335879)))))

(assert (=> b!907136 (= lt!335879 lt!335877)))

(declare-datatypes ((Regex!2401 0))(
  ( (ElementMatch!2401 (c!146970 C!5372)) (Concat!4234 (regOne!5314 Regex!2401) (regTwo!5314 Regex!2401)) (EmptyExpr!2401) (Star!2401 (reg!2730 Regex!2401)) (EmptyLang!2401) (Union!2401 (regOne!5315 Regex!2401) (regTwo!5315 Regex!2401)) )
))
(declare-fun lt!335878 () Regex!2401)

(declare-fun s!10566 () List!9631)

(declare-fun matchR!939 (Regex!2401 List!9631) Bool)

(assert (=> b!907136 (= lt!335877 (matchR!939 lt!335878 s!10566))))

(declare-fun r!15766 () Regex!2401)

(assert (=> b!907136 (= lt!335879 (matchR!939 (regTwo!5314 r!15766) s!10566))))

(declare-fun removeUselessConcat!100 (Regex!2401) Regex!2401)

(assert (=> b!907136 (= lt!335878 (removeUselessConcat!100 (regTwo!5314 r!15766)))))

(declare-datatypes ((Unit!14421 0))(
  ( (Unit!14422) )
))
(declare-fun lt!335875 () Unit!14421)

(declare-fun lemmaRemoveUselessConcatSound!88 (Regex!2401 List!9631) Unit!14421)

(assert (=> b!907136 (= lt!335875 (lemmaRemoveUselessConcatSound!88 (regTwo!5314 r!15766) s!10566))))

(declare-fun e!592271 () Bool)

(assert (=> b!907137 (= e!592271 e!592267)))

(declare-fun res!412491 () Bool)

(assert (=> b!907137 (=> res!412491 e!592267)))

(declare-fun isEmpty!5824 (List!9631) Bool)

(assert (=> b!907137 (= res!412491 (isEmpty!5824 s!10566))))

(declare-fun Exists!176 (Int) Bool)

(assert (=> b!907137 (= (Exists!176 lambda!28667) (Exists!176 lambda!28668))))

(declare-fun lt!335870 () Unit!14421)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!92 (Regex!2401 Regex!2401 List!9631) Unit!14421)

(assert (=> b!907137 (= lt!335870 (lemmaExistCutMatchRandMatchRSpecEquivalent!92 EmptyExpr!2401 (regTwo!5314 r!15766) s!10566))))

(declare-datatypes ((tuple2!10796 0))(
  ( (tuple2!10797 (_1!6224 List!9631) (_2!6224 List!9631)) )
))
(declare-datatypes ((Option!2040 0))(
  ( (None!2039) (Some!2039 (v!19456 tuple2!10796)) )
))
(declare-fun lt!335872 () Option!2040)

(declare-fun isDefined!1682 (Option!2040) Bool)

(assert (=> b!907137 (= (isDefined!1682 lt!335872) (Exists!176 lambda!28667))))

(declare-fun findConcatSeparation!146 (Regex!2401 Regex!2401 List!9631 List!9631 List!9631) Option!2040)

(assert (=> b!907137 (= lt!335872 (findConcatSeparation!146 EmptyExpr!2401 (regTwo!5314 r!15766) Nil!9615 s!10566 s!10566))))

(declare-fun lt!335873 () Unit!14421)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!146 (Regex!2401 Regex!2401 List!9631) Unit!14421)

(assert (=> b!907137 (= lt!335873 (lemmaFindConcatSeparationEquivalentToExists!146 EmptyExpr!2401 (regTwo!5314 r!15766) s!10566))))

(declare-fun b!907138 () Bool)

(declare-fun res!412496 () Bool)

(assert (=> b!907138 (=> res!412496 e!592268)))

(declare-fun validRegex!870 (Regex!2401) Bool)

(assert (=> b!907138 (= res!412496 (not (validRegex!870 (regTwo!5314 r!15766))))))

(declare-fun b!907139 () Bool)

(declare-fun e!592270 () Bool)

(declare-fun tp_is_empty!4445 () Bool)

(declare-fun tp!283934 () Bool)

(assert (=> b!907139 (= e!592270 (and tp_is_empty!4445 tp!283934))))

(declare-fun b!907140 () Bool)

(declare-fun e!592266 () Bool)

(declare-fun tp!283932 () Bool)

(declare-fun tp!283931 () Bool)

(assert (=> b!907140 (= e!592266 (and tp!283932 tp!283931))))

(declare-fun b!907142 () Bool)

(declare-fun e!592269 () Bool)

(assert (=> b!907142 (= e!592269 (not e!592271))))

(declare-fun res!412495 () Bool)

(assert (=> b!907142 (=> res!412495 e!592271)))

(declare-fun lt!335871 () Bool)

(get-info :version)

(assert (=> b!907142 (= res!412495 (or lt!335871 (not ((_ is Concat!4234) r!15766)) (not ((_ is EmptyExpr!2401) (regOne!5314 r!15766)))))))

(declare-fun matchRSpec!202 (Regex!2401 List!9631) Bool)

(assert (=> b!907142 (= lt!335871 (matchRSpec!202 r!15766 s!10566))))

(assert (=> b!907142 (= lt!335871 (matchR!939 r!15766 s!10566))))

(declare-fun lt!335874 () Unit!14421)

(declare-fun mainMatchTheorem!202 (Regex!2401 List!9631) Unit!14421)

(assert (=> b!907142 (= lt!335874 (mainMatchTheorem!202 r!15766 s!10566))))

(declare-fun b!907143 () Bool)

(declare-fun res!412494 () Bool)

(assert (=> b!907143 (=> res!412494 e!592268)))

(declare-fun ++!2526 (List!9631 List!9631) List!9631)

(assert (=> b!907143 (= res!412494 (not (= (++!2526 Nil!9615 s!10566) s!10566)))))

(declare-fun b!907144 () Bool)

(declare-fun tp!283935 () Bool)

(declare-fun tp!283936 () Bool)

(assert (=> b!907144 (= e!592266 (and tp!283935 tp!283936))))

(declare-fun b!907145 () Bool)

(declare-fun tp!283933 () Bool)

(assert (=> b!907145 (= e!592266 tp!283933)))

(declare-fun b!907146 () Bool)

(assert (=> b!907146 (= e!592268 true)))

(declare-fun lt!335876 () Bool)

(assert (=> b!907146 (= lt!335876 (matchR!939 EmptyExpr!2401 Nil!9615))))

(declare-fun b!907147 () Bool)

(assert (=> b!907147 (= e!592266 tp_is_empty!4445)))

(declare-fun b!907141 () Bool)

(declare-fun res!412492 () Bool)

(assert (=> b!907141 (=> res!412492 e!592267)))

(declare-fun isEmpty!5825 (Option!2040) Bool)

(assert (=> b!907141 (= res!412492 (not (isEmpty!5825 lt!335872)))))

(declare-fun res!412493 () Bool)

(assert (=> start!81586 (=> (not res!412493) (not e!592269))))

(assert (=> start!81586 (= res!412493 (validRegex!870 r!15766))))

(assert (=> start!81586 e!592269))

(assert (=> start!81586 e!592266))

(assert (=> start!81586 e!592270))

(assert (= (and start!81586 res!412493) b!907142))

(assert (= (and b!907142 (not res!412495)) b!907137))

(assert (= (and b!907137 (not res!412491)) b!907141))

(assert (= (and b!907141 (not res!412492)) b!907136))

(assert (= (and b!907136 (not res!412498)) b!907138))

(assert (= (and b!907138 (not res!412496)) b!907143))

(assert (= (and b!907143 (not res!412494)) b!907135))

(assert (= (and b!907135 (not res!412497)) b!907146))

(assert (= (and start!81586 ((_ is ElementMatch!2401) r!15766)) b!907147))

(assert (= (and start!81586 ((_ is Concat!4234) r!15766)) b!907144))

(assert (= (and start!81586 ((_ is Star!2401) r!15766)) b!907145))

(assert (= (and start!81586 ((_ is Union!2401) r!15766)) b!907140))

(assert (= (and start!81586 ((_ is Cons!9615) s!10566)) b!907139))

(declare-fun m!1141493 () Bool)

(assert (=> b!907136 m!1141493))

(declare-fun m!1141495 () Bool)

(assert (=> b!907136 m!1141495))

(declare-fun m!1141497 () Bool)

(assert (=> b!907136 m!1141497))

(declare-fun m!1141499 () Bool)

(assert (=> b!907136 m!1141499))

(declare-fun m!1141501 () Bool)

(assert (=> b!907141 m!1141501))

(declare-fun m!1141503 () Bool)

(assert (=> b!907146 m!1141503))

(declare-fun m!1141505 () Bool)

(assert (=> b!907137 m!1141505))

(declare-fun m!1141507 () Bool)

(assert (=> b!907137 m!1141507))

(declare-fun m!1141509 () Bool)

(assert (=> b!907137 m!1141509))

(declare-fun m!1141511 () Bool)

(assert (=> b!907137 m!1141511))

(declare-fun m!1141513 () Bool)

(assert (=> b!907137 m!1141513))

(declare-fun m!1141515 () Bool)

(assert (=> b!907137 m!1141515))

(assert (=> b!907137 m!1141505))

(declare-fun m!1141517 () Bool)

(assert (=> b!907137 m!1141517))

(declare-fun m!1141519 () Bool)

(assert (=> b!907135 m!1141519))

(declare-fun m!1141521 () Bool)

(assert (=> b!907143 m!1141521))

(declare-fun m!1141523 () Bool)

(assert (=> b!907142 m!1141523))

(declare-fun m!1141525 () Bool)

(assert (=> b!907142 m!1141525))

(declare-fun m!1141527 () Bool)

(assert (=> b!907142 m!1141527))

(declare-fun m!1141529 () Bool)

(assert (=> start!81586 m!1141529))

(declare-fun m!1141531 () Bool)

(assert (=> b!907138 m!1141531))

(check-sat tp_is_empty!4445 (not b!907136) (not b!907146) (not b!907145) (not b!907138) (not b!907139) (not b!907140) (not start!81586) (not b!907141) (not b!907135) (not b!907143) (not b!907137) (not b!907144) (not b!907142))
(check-sat)
