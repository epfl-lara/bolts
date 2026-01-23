; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!239490 () Bool)

(assert start!239490)

(declare-fun b!2453707 () Bool)

(declare-fun res!1040460 () Bool)

(declare-fun e!1557105 () Bool)

(assert (=> b!2453707 (=> (not res!1040460) (not e!1557105))))

(declare-datatypes ((C!14588 0))(
  ( (C!14589 (val!8536 Int)) )
))
(declare-datatypes ((Regex!7215 0))(
  ( (ElementMatch!7215 (c!391573 C!14588)) (Concat!11851 (regOne!14942 Regex!7215) (regTwo!14942 Regex!7215)) (EmptyExpr!7215) (Star!7215 (reg!7544 Regex!7215)) (EmptyLang!7215) (Union!7215 (regOne!14943 Regex!7215) (regTwo!14943 Regex!7215)) )
))
(declare-fun r!13927 () Regex!7215)

(declare-datatypes ((List!28666 0))(
  ( (Nil!28568) (Cons!28568 (h!33969 Regex!7215) (t!208643 List!28666)) )
))
(declare-fun l!9164 () List!28666)

(declare-fun generalisedConcat!316 (List!28666) Regex!7215)

(assert (=> b!2453707 (= res!1040460 (= r!13927 (generalisedConcat!316 l!9164)))))

(declare-fun b!2453708 () Bool)

(declare-fun e!1557107 () Bool)

(declare-fun lt!880029 () Regex!7215)

(declare-datatypes ((List!28667 0))(
  ( (Nil!28569) (Cons!28569 (h!33970 C!14588) (t!208644 List!28667)) )
))
(declare-fun s!9460 () List!28667)

(declare-fun matchR!3330 (Regex!7215 List!28667) Bool)

(assert (=> b!2453708 (= e!1557107 (matchR!3330 lt!880029 s!9460))))

(declare-fun b!2453709 () Bool)

(declare-fun e!1557110 () Bool)

(declare-fun tp_is_empty!11843 () Bool)

(assert (=> b!2453709 (= e!1557110 tp_is_empty!11843)))

(declare-fun b!2453710 () Bool)

(declare-fun e!1557102 () Bool)

(declare-fun e!1557106 () Bool)

(assert (=> b!2453710 (= e!1557102 e!1557106)))

(declare-fun res!1040456 () Bool)

(assert (=> b!2453710 (=> res!1040456 e!1557106)))

(declare-fun lt!880028 () Regex!7215)

(assert (=> b!2453710 (= res!1040456 (not (matchR!3330 lt!880028 s!9460)))))

(declare-fun head!5591 (List!28666) Regex!7215)

(assert (=> b!2453710 (= lt!880028 (head!5591 l!9164))))

(declare-fun b!2453711 () Bool)

(declare-fun tp!780505 () Bool)

(assert (=> b!2453711 (= e!1557110 tp!780505)))

(declare-fun b!2453712 () Bool)

(declare-fun tp!780500 () Bool)

(declare-fun tp!780501 () Bool)

(assert (=> b!2453712 (= e!1557110 (and tp!780500 tp!780501))))

(declare-fun b!2453713 () Bool)

(declare-fun tp!780502 () Bool)

(declare-fun tp!780504 () Bool)

(assert (=> b!2453713 (= e!1557110 (and tp!780502 tp!780504))))

(declare-fun b!2453714 () Bool)

(declare-fun res!1040455 () Bool)

(declare-fun e!1557103 () Bool)

(assert (=> b!2453714 (=> res!1040455 e!1557103)))

(declare-fun isEmpty!16598 (List!28666) Bool)

(assert (=> b!2453714 (= res!1040455 (isEmpty!16598 l!9164))))

(declare-fun b!2453716 () Bool)

(declare-fun e!1557109 () Bool)

(declare-fun tp!780499 () Bool)

(declare-fun tp!780503 () Bool)

(assert (=> b!2453716 (= e!1557109 (and tp!780499 tp!780503))))

(declare-fun b!2453717 () Bool)

(declare-fun e!1557108 () Bool)

(assert (=> b!2453717 (= e!1557103 e!1557108)))

(declare-fun res!1040458 () Bool)

(assert (=> b!2453717 (=> res!1040458 e!1557108)))

(declare-fun lt!880024 () List!28666)

(assert (=> b!2453717 (= res!1040458 (not (isEmpty!16598 lt!880024)))))

(declare-fun tail!3864 (List!28666) List!28666)

(assert (=> b!2453717 (= lt!880024 (tail!3864 l!9164))))

(declare-fun lt!880027 () Regex!7215)

(declare-fun b!2453718 () Bool)

(declare-datatypes ((tuple2!28158 0))(
  ( (tuple2!28159 (_1!16620 List!28667) (_2!16620 List!28667)) )
))
(declare-datatypes ((Option!5690 0))(
  ( (None!5689) (Some!5689 (v!31097 tuple2!28158)) )
))
(declare-fun isDefined!4516 (Option!5690) Bool)

(declare-fun findConcatSeparation!798 (Regex!7215 Regex!7215 List!28667 List!28667 List!28667) Option!5690)

(assert (=> b!2453718 (= e!1557106 (isDefined!4516 (findConcatSeparation!798 lt!880028 lt!880027 Nil!28569 s!9460 s!9460)))))

(assert (=> b!2453718 (isDefined!4516 (findConcatSeparation!798 lt!880028 EmptyExpr!7215 Nil!28569 s!9460 s!9460))))

(declare-datatypes ((Unit!41885 0))(
  ( (Unit!41886) )
))
(declare-fun lt!880026 () Unit!41885)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!94 (Regex!7215 Regex!7215 List!28667) Unit!41885)

(assert (=> b!2453718 (= lt!880026 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!94 lt!880028 EmptyExpr!7215 s!9460))))

(assert (=> b!2453718 e!1557107))

(declare-fun res!1040459 () Bool)

(assert (=> b!2453718 (=> (not res!1040459) (not e!1557107))))

(declare-fun ++!7106 (List!28667 List!28667) List!28667)

(assert (=> b!2453718 (= res!1040459 (matchR!3330 lt!880029 (++!7106 s!9460 Nil!28569)))))

(assert (=> b!2453718 (= lt!880029 (Concat!11851 lt!880028 EmptyExpr!7215))))

(declare-fun lt!880025 () Unit!41885)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!132 (Regex!7215 Regex!7215 List!28667 List!28667) Unit!41885)

(assert (=> b!2453718 (= lt!880025 (lemmaTwoRegexMatchThenConcatMatchesConcatString!132 lt!880028 EmptyExpr!7215 s!9460 Nil!28569))))

(declare-fun b!2453719 () Bool)

(assert (=> b!2453719 (= e!1557108 e!1557102)))

(declare-fun res!1040461 () Bool)

(assert (=> b!2453719 (=> res!1040461 e!1557102)))

(assert (=> b!2453719 (= res!1040461 (not (= lt!880027 EmptyExpr!7215)))))

(assert (=> b!2453719 (= lt!880027 (generalisedConcat!316 lt!880024))))

(declare-fun b!2453720 () Bool)

(assert (=> b!2453720 (= e!1557105 (not e!1557103))))

(declare-fun res!1040462 () Bool)

(assert (=> b!2453720 (=> res!1040462 e!1557103)))

(get-info :version)

(assert (=> b!2453720 (= res!1040462 (or ((_ is Concat!11851) r!13927) ((_ is EmptyExpr!7215) r!13927)))))

(declare-fun matchRSpec!1062 (Regex!7215 List!28667) Bool)

(assert (=> b!2453720 (= (matchR!3330 r!13927 s!9460) (matchRSpec!1062 r!13927 s!9460))))

(declare-fun lt!880030 () Unit!41885)

(declare-fun mainMatchTheorem!1062 (Regex!7215 List!28667) Unit!41885)

(assert (=> b!2453720 (= lt!880030 (mainMatchTheorem!1062 r!13927 s!9460))))

(declare-fun b!2453715 () Bool)

(declare-fun e!1557104 () Bool)

(declare-fun tp!780498 () Bool)

(assert (=> b!2453715 (= e!1557104 (and tp_is_empty!11843 tp!780498))))

(declare-fun res!1040457 () Bool)

(assert (=> start!239490 (=> (not res!1040457) (not e!1557105))))

(declare-fun lambda!92945 () Int)

(declare-fun forall!5849 (List!28666 Int) Bool)

(assert (=> start!239490 (= res!1040457 (forall!5849 l!9164 lambda!92945))))

(assert (=> start!239490 e!1557105))

(assert (=> start!239490 e!1557109))

(assert (=> start!239490 e!1557110))

(assert (=> start!239490 e!1557104))

(assert (= (and start!239490 res!1040457) b!2453707))

(assert (= (and b!2453707 res!1040460) b!2453720))

(assert (= (and b!2453720 (not res!1040462)) b!2453714))

(assert (= (and b!2453714 (not res!1040455)) b!2453717))

(assert (= (and b!2453717 (not res!1040458)) b!2453719))

(assert (= (and b!2453719 (not res!1040461)) b!2453710))

(assert (= (and b!2453710 (not res!1040456)) b!2453718))

(assert (= (and b!2453718 res!1040459) b!2453708))

(assert (= (and start!239490 ((_ is Cons!28568) l!9164)) b!2453716))

(assert (= (and start!239490 ((_ is ElementMatch!7215) r!13927)) b!2453709))

(assert (= (and start!239490 ((_ is Concat!11851) r!13927)) b!2453713))

(assert (= (and start!239490 ((_ is Star!7215) r!13927)) b!2453711))

(assert (= (and start!239490 ((_ is Union!7215) r!13927)) b!2453712))

(assert (= (and start!239490 ((_ is Cons!28569) s!9460)) b!2453715))

(declare-fun m!2825991 () Bool)

(assert (=> b!2453718 m!2825991))

(declare-fun m!2825993 () Bool)

(assert (=> b!2453718 m!2825993))

(declare-fun m!2825995 () Bool)

(assert (=> b!2453718 m!2825995))

(declare-fun m!2825997 () Bool)

(assert (=> b!2453718 m!2825997))

(assert (=> b!2453718 m!2825991))

(declare-fun m!2825999 () Bool)

(assert (=> b!2453718 m!2825999))

(assert (=> b!2453718 m!2825999))

(declare-fun m!2826001 () Bool)

(assert (=> b!2453718 m!2826001))

(declare-fun m!2826003 () Bool)

(assert (=> b!2453718 m!2826003))

(declare-fun m!2826005 () Bool)

(assert (=> b!2453718 m!2826005))

(assert (=> b!2453718 m!2825995))

(declare-fun m!2826007 () Bool)

(assert (=> b!2453717 m!2826007))

(declare-fun m!2826009 () Bool)

(assert (=> b!2453717 m!2826009))

(declare-fun m!2826011 () Bool)

(assert (=> b!2453719 m!2826011))

(declare-fun m!2826013 () Bool)

(assert (=> b!2453720 m!2826013))

(declare-fun m!2826015 () Bool)

(assert (=> b!2453720 m!2826015))

(declare-fun m!2826017 () Bool)

(assert (=> b!2453720 m!2826017))

(declare-fun m!2826019 () Bool)

(assert (=> b!2453708 m!2826019))

(declare-fun m!2826021 () Bool)

(assert (=> b!2453710 m!2826021))

(declare-fun m!2826023 () Bool)

(assert (=> b!2453710 m!2826023))

(declare-fun m!2826025 () Bool)

(assert (=> b!2453714 m!2826025))

(declare-fun m!2826027 () Bool)

(assert (=> start!239490 m!2826027))

(declare-fun m!2826029 () Bool)

(assert (=> b!2453707 m!2826029))

(check-sat (not b!2453713) (not b!2453716) (not b!2453711) (not b!2453717) (not b!2453718) (not b!2453714) (not b!2453710) (not b!2453720) (not b!2453719) (not b!2453715) tp_is_empty!11843 (not b!2453707) (not start!239490) (not b!2453712) (not b!2453708))
(check-sat)
