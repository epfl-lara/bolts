; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!233128 () Bool)

(assert start!233128)

(declare-fun b!2375647 () Bool)

(assert (=> b!2375647 true))

(assert (=> b!2375647 true))

(declare-fun lambda!88197 () Int)

(declare-fun lambda!88196 () Int)

(assert (=> b!2375647 (not (= lambda!88197 lambda!88196))))

(assert (=> b!2375647 true))

(assert (=> b!2375647 true))

(declare-fun b!2375644 () Bool)

(declare-fun e!1515779 () Bool)

(declare-fun tp!758882 () Bool)

(declare-fun tp!758881 () Bool)

(assert (=> b!2375644 (= e!1515779 (and tp!758882 tp!758881))))

(declare-fun b!2375645 () Bool)

(declare-fun tp!758880 () Bool)

(declare-fun tp!758879 () Bool)

(assert (=> b!2375645 (= e!1515779 (and tp!758880 tp!758879))))

(declare-fun b!2375646 () Bool)

(declare-fun res!1008627 () Bool)

(declare-fun e!1515785 () Bool)

(assert (=> b!2375646 (=> (not res!1008627) (not e!1515785))))

(declare-datatypes ((C!14080 0))(
  ( (C!14081 (val!8282 Int)) )
))
(declare-datatypes ((Regex!6961 0))(
  ( (ElementMatch!6961 (c!377635 C!14080)) (Concat!11597 (regOne!14434 Regex!6961) (regTwo!14434 Regex!6961)) (EmptyExpr!6961) (Star!6961 (reg!7290 Regex!6961)) (EmptyLang!6961) (Union!6961 (regOne!14435 Regex!6961) (regTwo!14435 Regex!6961)) )
))
(declare-fun r!13927 () Regex!6961)

(declare-datatypes ((List!28160 0))(
  ( (Nil!28062) (Cons!28062 (h!33463 Regex!6961) (t!208137 List!28160)) )
))
(declare-fun l!9164 () List!28160)

(declare-fun generalisedConcat!62 (List!28160) Regex!6961)

(assert (=> b!2375646 (= res!1008627 (= r!13927 (generalisedConcat!62 l!9164)))))

(declare-fun res!1008626 () Bool)

(assert (=> start!233128 (=> (not res!1008626) (not e!1515785))))

(declare-fun lambda!88195 () Int)

(declare-fun forall!5595 (List!28160 Int) Bool)

(assert (=> start!233128 (= res!1008626 (forall!5595 l!9164 lambda!88195))))

(assert (=> start!233128 e!1515785))

(declare-fun e!1515784 () Bool)

(assert (=> start!233128 e!1515784))

(assert (=> start!233128 e!1515779))

(declare-fun e!1515786 () Bool)

(assert (=> start!233128 e!1515786))

(declare-fun e!1515783 () Bool)

(declare-fun e!1515781 () Bool)

(assert (=> b!2375647 (= e!1515783 e!1515781)))

(declare-fun res!1008629 () Bool)

(assert (=> b!2375647 (=> res!1008629 e!1515781)))

(declare-fun lt!867003 () Bool)

(declare-fun lt!867006 () Bool)

(assert (=> b!2375647 (= res!1008629 (not (= lt!867003 lt!867006)))))

(declare-fun Exists!1023 (Int) Bool)

(assert (=> b!2375647 (= (Exists!1023 lambda!88196) (Exists!1023 lambda!88197))))

(declare-datatypes ((Unit!40957 0))(
  ( (Unit!40958) )
))
(declare-fun lt!867004 () Unit!40957)

(declare-datatypes ((List!28161 0))(
  ( (Nil!28063) (Cons!28063 (h!33464 C!14080) (t!208138 List!28161)) )
))
(declare-fun s!9460 () List!28161)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!362 (Regex!6961 Regex!6961 List!28161) Unit!40957)

(assert (=> b!2375647 (= lt!867004 (lemmaExistCutMatchRandMatchRSpecEquivalent!362 (regOne!14434 r!13927) (regTwo!14434 r!13927) s!9460))))

(assert (=> b!2375647 (= lt!867006 (Exists!1023 lambda!88196))))

(declare-datatypes ((tuple2!27786 0))(
  ( (tuple2!27787 (_1!16434 List!28161) (_2!16434 List!28161)) )
))
(declare-datatypes ((Option!5504 0))(
  ( (None!5503) (Some!5503 (v!30911 tuple2!27786)) )
))
(declare-fun isDefined!4332 (Option!5504) Bool)

(declare-fun findConcatSeparation!612 (Regex!6961 Regex!6961 List!28161 List!28161 List!28161) Option!5504)

(assert (=> b!2375647 (= lt!867006 (isDefined!4332 (findConcatSeparation!612 (regOne!14434 r!13927) (regTwo!14434 r!13927) Nil!28063 s!9460 s!9460)))))

(declare-fun lt!867005 () Unit!40957)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!612 (Regex!6961 Regex!6961 List!28161) Unit!40957)

(assert (=> b!2375647 (= lt!867005 (lemmaFindConcatSeparationEquivalentToExists!612 (regOne!14434 r!13927) (regTwo!14434 r!13927) s!9460))))

(declare-fun b!2375648 () Bool)

(declare-fun e!1515782 () Bool)

(assert (=> b!2375648 (= e!1515781 e!1515782)))

(declare-fun res!1008628 () Bool)

(assert (=> b!2375648 (=> res!1008628 e!1515782)))

(declare-fun lt!867001 () List!28160)

(declare-fun isEmpty!16003 (List!28160) Bool)

(assert (=> b!2375648 (= res!1008628 (not (isEmpty!16003 lt!867001)))))

(declare-fun tail!3430 (List!28160) List!28160)

(assert (=> b!2375648 (= lt!867001 (tail!3430 l!9164))))

(declare-fun b!2375649 () Bool)

(declare-fun e!1515780 () Bool)

(assert (=> b!2375649 (= e!1515782 e!1515780)))

(declare-fun res!1008624 () Bool)

(assert (=> b!2375649 (=> res!1008624 e!1515780)))

(declare-fun lt!867000 () Regex!6961)

(declare-fun matchR!3078 (Regex!6961 List!28161) Bool)

(assert (=> b!2375649 (= res!1008624 (matchR!3078 lt!867000 s!9460))))

(declare-fun head!5160 (List!28160) Regex!6961)

(assert (=> b!2375649 (= lt!867000 (head!5160 l!9164))))

(declare-fun b!2375650 () Bool)

(declare-fun res!1008631 () Bool)

(assert (=> b!2375650 (=> res!1008631 e!1515782)))

(assert (=> b!2375650 (= res!1008631 (not (= (generalisedConcat!62 lt!867001) EmptyExpr!6961)))))

(declare-fun b!2375651 () Bool)

(assert (=> b!2375651 (= e!1515785 (not e!1515783))))

(declare-fun res!1008630 () Bool)

(assert (=> b!2375651 (=> res!1008630 e!1515783)))

(get-info :version)

(assert (=> b!2375651 (= res!1008630 (not ((_ is Concat!11597) r!13927)))))

(declare-fun lt!867002 () Bool)

(assert (=> b!2375651 (= lt!867002 lt!867003)))

(declare-fun matchRSpec!810 (Regex!6961 List!28161) Bool)

(assert (=> b!2375651 (= lt!867003 (matchRSpec!810 r!13927 s!9460))))

(assert (=> b!2375651 (= lt!867002 (matchR!3078 r!13927 s!9460))))

(declare-fun lt!866999 () Unit!40957)

(declare-fun mainMatchTheorem!810 (Regex!6961 List!28161) Unit!40957)

(assert (=> b!2375651 (= lt!866999 (mainMatchTheorem!810 r!13927 s!9460))))

(declare-fun b!2375652 () Bool)

(declare-fun tp!758885 () Bool)

(assert (=> b!2375652 (= e!1515779 tp!758885)))

(declare-fun b!2375653 () Bool)

(declare-fun res!1008632 () Bool)

(assert (=> b!2375653 (=> res!1008632 e!1515781)))

(assert (=> b!2375653 (= res!1008632 (isEmpty!16003 l!9164))))

(declare-fun b!2375654 () Bool)

(declare-fun tp_is_empty!11335 () Bool)

(declare-fun tp!758884 () Bool)

(assert (=> b!2375654 (= e!1515786 (and tp_is_empty!11335 tp!758884))))

(declare-fun b!2375655 () Bool)

(declare-fun res!1008625 () Bool)

(assert (=> b!2375655 (=> res!1008625 e!1515780)))

(declare-fun validRegex!2688 (Regex!6961) Bool)

(assert (=> b!2375655 (= res!1008625 (not (validRegex!2688 lt!867000)))))

(declare-fun b!2375656 () Bool)

(declare-fun tp!758883 () Bool)

(declare-fun tp!758878 () Bool)

(assert (=> b!2375656 (= e!1515784 (and tp!758883 tp!758878))))

(declare-fun b!2375657 () Bool)

(assert (=> b!2375657 (= e!1515779 tp_is_empty!11335)))

(declare-fun b!2375658 () Bool)

(assert (=> b!2375658 (= e!1515780 true)))

(assert (= (and start!233128 res!1008626) b!2375646))

(assert (= (and b!2375646 res!1008627) b!2375651))

(assert (= (and b!2375651 (not res!1008630)) b!2375647))

(assert (= (and b!2375647 (not res!1008629)) b!2375653))

(assert (= (and b!2375653 (not res!1008632)) b!2375648))

(assert (= (and b!2375648 (not res!1008628)) b!2375650))

(assert (= (and b!2375650 (not res!1008631)) b!2375649))

(assert (= (and b!2375649 (not res!1008624)) b!2375655))

(assert (= (and b!2375655 (not res!1008625)) b!2375658))

(assert (= (and start!233128 ((_ is Cons!28062) l!9164)) b!2375656))

(assert (= (and start!233128 ((_ is ElementMatch!6961) r!13927)) b!2375657))

(assert (= (and start!233128 ((_ is Concat!11597) r!13927)) b!2375644))

(assert (= (and start!233128 ((_ is Star!6961) r!13927)) b!2375652))

(assert (= (and start!233128 ((_ is Union!6961) r!13927)) b!2375645))

(assert (= (and start!233128 ((_ is Cons!28063) s!9460)) b!2375654))

(declare-fun m!2781515 () Bool)

(assert (=> b!2375648 m!2781515))

(declare-fun m!2781517 () Bool)

(assert (=> b!2375648 m!2781517))

(declare-fun m!2781519 () Bool)

(assert (=> start!233128 m!2781519))

(declare-fun m!2781521 () Bool)

(assert (=> b!2375655 m!2781521))

(declare-fun m!2781523 () Bool)

(assert (=> b!2375649 m!2781523))

(declare-fun m!2781525 () Bool)

(assert (=> b!2375649 m!2781525))

(declare-fun m!2781527 () Bool)

(assert (=> b!2375651 m!2781527))

(declare-fun m!2781529 () Bool)

(assert (=> b!2375651 m!2781529))

(declare-fun m!2781531 () Bool)

(assert (=> b!2375651 m!2781531))

(declare-fun m!2781533 () Bool)

(assert (=> b!2375647 m!2781533))

(declare-fun m!2781535 () Bool)

(assert (=> b!2375647 m!2781535))

(declare-fun m!2781537 () Bool)

(assert (=> b!2375647 m!2781537))

(assert (=> b!2375647 m!2781533))

(declare-fun m!2781539 () Bool)

(assert (=> b!2375647 m!2781539))

(declare-fun m!2781541 () Bool)

(assert (=> b!2375647 m!2781541))

(declare-fun m!2781543 () Bool)

(assert (=> b!2375647 m!2781543))

(assert (=> b!2375647 m!2781539))

(declare-fun m!2781545 () Bool)

(assert (=> b!2375653 m!2781545))

(declare-fun m!2781547 () Bool)

(assert (=> b!2375646 m!2781547))

(declare-fun m!2781549 () Bool)

(assert (=> b!2375650 m!2781549))

(check-sat (not b!2375652) (not b!2375654) (not b!2375645) (not b!2375647) (not b!2375644) (not b!2375656) (not b!2375646) tp_is_empty!11335 (not b!2375655) (not b!2375648) (not b!2375649) (not b!2375653) (not b!2375650) (not start!233128) (not b!2375651))
(check-sat)
