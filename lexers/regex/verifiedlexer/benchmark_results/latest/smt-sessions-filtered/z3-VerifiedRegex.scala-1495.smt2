; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79506 () Bool)

(assert start!79506)

(declare-fun b!879750 () Bool)

(assert (=> b!879750 true))

(assert (=> b!879750 true))

(declare-fun lambda!26836 () Int)

(declare-fun lambda!26835 () Int)

(assert (=> b!879750 (not (= lambda!26836 lambda!26835))))

(assert (=> b!879750 true))

(assert (=> b!879750 true))

(declare-fun b!879749 () Bool)

(declare-fun e!577694 () Bool)

(declare-fun tp!278006 () Bool)

(assert (=> b!879749 (= e!577694 tp!278006)))

(declare-fun e!577690 () Bool)

(declare-fun e!577693 () Bool)

(assert (=> b!879750 (= e!577690 e!577693)))

(declare-fun res!400094 () Bool)

(assert (=> b!879750 (=> res!400094 e!577693)))

(declare-datatypes ((C!5068 0))(
  ( (C!5069 (val!2782 Int)) )
))
(declare-datatypes ((List!9479 0))(
  ( (Nil!9463) (Cons!9463 (h!14864 C!5068) (t!100525 List!9479)) )
))
(declare-datatypes ((tuple2!10588 0))(
  ( (tuple2!10589 (_1!6120 List!9479) (_2!6120 List!9479)) )
))
(declare-fun lt!330454 () tuple2!10588)

(declare-fun isEmpty!5659 (List!9479) Bool)

(assert (=> b!879750 (= res!400094 (not (isEmpty!5659 (_2!6120 lt!330454))))))

(declare-datatypes ((Option!1936 0))(
  ( (None!1935) (Some!1935 (v!19352 tuple2!10588)) )
))
(declare-fun lt!330460 () Option!1936)

(declare-fun get!2931 (Option!1936) tuple2!10588)

(assert (=> b!879750 (= lt!330454 (get!2931 lt!330460))))

(declare-fun Exists!46 (Int) Bool)

(assert (=> b!879750 (= (Exists!46 lambda!26835) (Exists!46 lambda!26836))))

(declare-datatypes ((Unit!14077 0))(
  ( (Unit!14078) )
))
(declare-fun lt!330459 () Unit!14077)

(declare-datatypes ((Regex!2249 0))(
  ( (ElementMatch!2249 (c!142196 C!5068)) (Concat!4082 (regOne!5010 Regex!2249) (regTwo!5010 Regex!2249)) (EmptyExpr!2249) (Star!2249 (reg!2578 Regex!2249)) (EmptyLang!2249) (Union!2249 (regOne!5011 Regex!2249) (regTwo!5011 Regex!2249)) )
))
(declare-fun r!15766 () Regex!2249)

(declare-fun s!10566 () List!9479)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!38 (Regex!2249 Regex!2249 List!9479) Unit!14077)

(assert (=> b!879750 (= lt!330459 (lemmaExistCutMatchRandMatchRSpecEquivalent!38 (regOne!5010 r!15766) EmptyExpr!2249 s!10566))))

(declare-fun isDefined!1578 (Option!1936) Bool)

(assert (=> b!879750 (= (isDefined!1578 lt!330460) (Exists!46 lambda!26835))))

(declare-fun findConcatSeparation!42 (Regex!2249 Regex!2249 List!9479 List!9479 List!9479) Option!1936)

(assert (=> b!879750 (= lt!330460 (findConcatSeparation!42 (regOne!5010 r!15766) EmptyExpr!2249 Nil!9463 s!10566 s!10566))))

(declare-fun lt!330461 () Unit!14077)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!42 (Regex!2249 Regex!2249 List!9479) Unit!14077)

(assert (=> b!879750 (= lt!330461 (lemmaFindConcatSeparationEquivalentToExists!42 (regOne!5010 r!15766) EmptyExpr!2249 s!10566))))

(declare-fun b!879751 () Bool)

(declare-fun tp_is_empty!4141 () Bool)

(assert (=> b!879751 (= e!577694 tp_is_empty!4141)))

(declare-fun b!879752 () Bool)

(declare-fun e!577691 () Bool)

(declare-fun tp!278003 () Bool)

(assert (=> b!879752 (= e!577691 (and tp_is_empty!4141 tp!278003))))

(declare-fun b!879753 () Bool)

(declare-fun res!400090 () Bool)

(assert (=> b!879753 (=> res!400090 e!577690)))

(assert (=> b!879753 (= res!400090 (isEmpty!5659 s!10566))))

(declare-fun b!879754 () Bool)

(declare-fun e!577692 () Bool)

(assert (=> b!879754 (= e!577692 (not e!577690))))

(declare-fun res!400091 () Bool)

(assert (=> b!879754 (=> res!400091 e!577690)))

(declare-fun lt!330456 () Bool)

(get-info :version)

(assert (=> b!879754 (= res!400091 (or (not lt!330456) (and ((_ is Concat!4082) r!15766) ((_ is EmptyExpr!2249) (regOne!5010 r!15766))) (not ((_ is Concat!4082) r!15766)) (not ((_ is EmptyExpr!2249) (regTwo!5010 r!15766)))))))

(declare-fun matchRSpec!50 (Regex!2249 List!9479) Bool)

(assert (=> b!879754 (= lt!330456 (matchRSpec!50 r!15766 s!10566))))

(declare-fun matchR!787 (Regex!2249 List!9479) Bool)

(assert (=> b!879754 (= lt!330456 (matchR!787 r!15766 s!10566))))

(declare-fun lt!330455 () Unit!14077)

(declare-fun mainMatchTheorem!50 (Regex!2249 List!9479) Unit!14077)

(assert (=> b!879754 (= lt!330455 (mainMatchTheorem!50 r!15766 s!10566))))

(declare-fun b!879755 () Bool)

(declare-fun tp!278004 () Bool)

(declare-fun tp!278007 () Bool)

(assert (=> b!879755 (= e!577694 (and tp!278004 tp!278007))))

(declare-fun b!879756 () Bool)

(declare-fun e!577695 () Bool)

(assert (=> b!879756 (= e!577695 true)))

(declare-fun removeUselessConcat!10 (Regex!2249) Regex!2249)

(assert (=> b!879756 (matchR!787 (removeUselessConcat!10 (regOne!5010 r!15766)) (_1!6120 lt!330454))))

(declare-fun lt!330457 () Unit!14077)

(declare-fun lemmaRemoveUselessConcatSound!6 (Regex!2249 List!9479) Unit!14077)

(assert (=> b!879756 (= lt!330457 (lemmaRemoveUselessConcatSound!6 (regOne!5010 r!15766) (_1!6120 lt!330454)))))

(declare-fun b!879757 () Bool)

(declare-fun res!400089 () Bool)

(assert (=> b!879757 (=> res!400089 e!577693)))

(assert (=> b!879757 (= res!400089 (not (matchR!787 (regOne!5010 r!15766) (_1!6120 lt!330454))))))

(declare-fun res!400093 () Bool)

(assert (=> start!79506 (=> (not res!400093) (not e!577692))))

(declare-fun validRegex!718 (Regex!2249) Bool)

(assert (=> start!79506 (= res!400093 (validRegex!718 r!15766))))

(assert (=> start!79506 e!577692))

(assert (=> start!79506 e!577694))

(assert (=> start!79506 e!577691))

(declare-fun b!879758 () Bool)

(assert (=> b!879758 (= e!577693 e!577695)))

(declare-fun res!400092 () Bool)

(assert (=> b!879758 (=> res!400092 e!577695)))

(assert (=> b!879758 (= res!400092 (not (validRegex!718 (regOne!5010 r!15766))))))

(assert (=> b!879758 (matchRSpec!50 (regOne!5010 r!15766) (_1!6120 lt!330454))))

(declare-fun lt!330458 () Unit!14077)

(assert (=> b!879758 (= lt!330458 (mainMatchTheorem!50 (regOne!5010 r!15766) (_1!6120 lt!330454)))))

(declare-fun b!879759 () Bool)

(declare-fun tp!278008 () Bool)

(declare-fun tp!278005 () Bool)

(assert (=> b!879759 (= e!577694 (and tp!278008 tp!278005))))

(assert (= (and start!79506 res!400093) b!879754))

(assert (= (and b!879754 (not res!400091)) b!879753))

(assert (= (and b!879753 (not res!400090)) b!879750))

(assert (= (and b!879750 (not res!400094)) b!879757))

(assert (= (and b!879757 (not res!400089)) b!879758))

(assert (= (and b!879758 (not res!400092)) b!879756))

(assert (= (and start!79506 ((_ is ElementMatch!2249) r!15766)) b!879751))

(assert (= (and start!79506 ((_ is Concat!4082) r!15766)) b!879755))

(assert (= (and start!79506 ((_ is Star!2249) r!15766)) b!879749))

(assert (= (and start!79506 ((_ is Union!2249) r!15766)) b!879759))

(assert (= (and start!79506 ((_ is Cons!9463) s!10566)) b!879752))

(declare-fun m!1128711 () Bool)

(assert (=> b!879757 m!1128711))

(declare-fun m!1128713 () Bool)

(assert (=> b!879750 m!1128713))

(declare-fun m!1128715 () Bool)

(assert (=> b!879750 m!1128715))

(declare-fun m!1128717 () Bool)

(assert (=> b!879750 m!1128717))

(declare-fun m!1128719 () Bool)

(assert (=> b!879750 m!1128719))

(declare-fun m!1128721 () Bool)

(assert (=> b!879750 m!1128721))

(declare-fun m!1128723 () Bool)

(assert (=> b!879750 m!1128723))

(assert (=> b!879750 m!1128713))

(declare-fun m!1128725 () Bool)

(assert (=> b!879750 m!1128725))

(declare-fun m!1128727 () Bool)

(assert (=> b!879750 m!1128727))

(declare-fun m!1128729 () Bool)

(assert (=> b!879754 m!1128729))

(declare-fun m!1128731 () Bool)

(assert (=> b!879754 m!1128731))

(declare-fun m!1128733 () Bool)

(assert (=> b!879754 m!1128733))

(declare-fun m!1128735 () Bool)

(assert (=> b!879758 m!1128735))

(declare-fun m!1128737 () Bool)

(assert (=> b!879758 m!1128737))

(declare-fun m!1128739 () Bool)

(assert (=> b!879758 m!1128739))

(declare-fun m!1128741 () Bool)

(assert (=> b!879756 m!1128741))

(assert (=> b!879756 m!1128741))

(declare-fun m!1128743 () Bool)

(assert (=> b!879756 m!1128743))

(declare-fun m!1128745 () Bool)

(assert (=> b!879756 m!1128745))

(declare-fun m!1128747 () Bool)

(assert (=> start!79506 m!1128747))

(declare-fun m!1128749 () Bool)

(assert (=> b!879753 m!1128749))

(check-sat tp_is_empty!4141 (not b!879753) (not b!879754) (not b!879749) (not b!879752) (not start!79506) (not b!879759) (not b!879756) (not b!879758) (not b!879750) (not b!879757) (not b!879755))
(check-sat)
