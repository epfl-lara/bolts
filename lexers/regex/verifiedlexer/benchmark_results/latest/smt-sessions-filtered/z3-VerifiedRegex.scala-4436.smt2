; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!236012 () Bool)

(assert start!236012)

(declare-fun b!2407806 () Bool)

(declare-fun e!1533184 () Bool)

(declare-fun tp!766182 () Bool)

(declare-fun tp!766179 () Bool)

(assert (=> b!2407806 (= e!1533184 (and tp!766182 tp!766179))))

(declare-fun b!2407807 () Bool)

(declare-fun res!1022603 () Bool)

(declare-fun e!1533186 () Bool)

(assert (=> b!2407807 (=> res!1022603 e!1533186)))

(assert (=> b!2407807 (= res!1022603 false)))

(declare-fun b!2407808 () Bool)

(declare-fun res!1022601 () Bool)

(declare-fun e!1533182 () Bool)

(assert (=> b!2407808 (=> (not res!1022601) (not e!1533182))))

(declare-datatypes ((C!14288 0))(
  ( (C!14289 (val!8386 Int)) )
))
(declare-datatypes ((Regex!7065 0))(
  ( (ElementMatch!7065 (c!383535 C!14288)) (Concat!11701 (regOne!14642 Regex!7065) (regTwo!14642 Regex!7065)) (EmptyExpr!7065) (Star!7065 (reg!7394 Regex!7065)) (EmptyLang!7065) (Union!7065 (regOne!14643 Regex!7065) (regTwo!14643 Regex!7065)) )
))
(declare-fun r!13927 () Regex!7065)

(declare-datatypes ((List!28368 0))(
  ( (Nil!28270) (Cons!28270 (h!33671 Regex!7065) (t!208345 List!28368)) )
))
(declare-fun l!9164 () List!28368)

(declare-fun generalisedConcat!166 (List!28368) Regex!7065)

(assert (=> b!2407808 (= res!1022601 (= r!13927 (generalisedConcat!166 l!9164)))))

(declare-fun b!2407809 () Bool)

(declare-fun tp!766180 () Bool)

(assert (=> b!2407809 (= e!1533184 tp!766180)))

(declare-fun b!2407810 () Bool)

(assert (=> b!2407810 (= e!1533186 true)))

(declare-fun lt!873124 () Bool)

(declare-datatypes ((List!28369 0))(
  ( (Nil!28271) (Cons!28271 (h!33672 C!14288) (t!208346 List!28369)) )
))
(declare-fun matchR!3182 (Regex!7065 List!28369) Bool)

(assert (=> b!2407810 (= lt!873124 (matchR!3182 EmptyExpr!7065 Nil!28271))))

(declare-fun b!2407811 () Bool)

(declare-fun e!1533181 () Bool)

(declare-fun e!1533180 () Bool)

(assert (=> b!2407811 (= e!1533181 e!1533180)))

(declare-fun res!1022599 () Bool)

(assert (=> b!2407811 (=> res!1022599 e!1533180)))

(declare-fun lt!873123 () List!28368)

(declare-fun isEmpty!16274 (List!28368) Bool)

(assert (=> b!2407811 (= res!1022599 (not (isEmpty!16274 lt!873123)))))

(declare-fun tail!3624 (List!28368) List!28368)

(assert (=> b!2407811 (= lt!873123 (tail!3624 l!9164))))

(declare-fun b!2407812 () Bool)

(declare-fun res!1022598 () Bool)

(assert (=> b!2407812 (=> res!1022598 e!1533181)))

(assert (=> b!2407812 (= res!1022598 (isEmpty!16274 l!9164))))

(declare-fun res!1022606 () Bool)

(assert (=> start!236012 (=> (not res!1022606) (not e!1533182))))

(declare-fun lambda!90607 () Int)

(declare-fun forall!5699 (List!28368 Int) Bool)

(assert (=> start!236012 (= res!1022606 (forall!5699 l!9164 lambda!90607))))

(assert (=> start!236012 e!1533182))

(declare-fun e!1533183 () Bool)

(assert (=> start!236012 e!1533183))

(assert (=> start!236012 e!1533184))

(declare-fun e!1533185 () Bool)

(assert (=> start!236012 e!1533185))

(declare-fun b!2407813 () Bool)

(declare-fun tp!766178 () Bool)

(declare-fun tp!766181 () Bool)

(assert (=> b!2407813 (= e!1533183 (and tp!766178 tp!766181))))

(declare-fun b!2407814 () Bool)

(declare-fun res!1022605 () Bool)

(assert (=> b!2407814 (=> res!1022605 e!1533186)))

(declare-fun lt!873125 () Regex!7065)

(declare-fun validRegex!2789 (Regex!7065) Bool)

(assert (=> b!2407814 (= res!1022605 (not (validRegex!2789 lt!873125)))))

(declare-fun b!2407815 () Bool)

(declare-fun tp!766177 () Bool)

(declare-fun tp!766176 () Bool)

(assert (=> b!2407815 (= e!1533184 (and tp!766177 tp!766176))))

(declare-fun b!2407816 () Bool)

(assert (=> b!2407816 (= e!1533182 (not e!1533181))))

(declare-fun res!1022604 () Bool)

(assert (=> b!2407816 (=> res!1022604 e!1533181)))

(get-info :version)

(assert (=> b!2407816 (= res!1022604 (or ((_ is Concat!11701) r!13927) ((_ is EmptyExpr!7065) r!13927)))))

(declare-fun s!9460 () List!28369)

(declare-fun matchRSpec!914 (Regex!7065 List!28369) Bool)

(assert (=> b!2407816 (= (matchR!3182 r!13927 s!9460) (matchRSpec!914 r!13927 s!9460))))

(declare-datatypes ((Unit!41401 0))(
  ( (Unit!41402) )
))
(declare-fun lt!873126 () Unit!41401)

(declare-fun mainMatchTheorem!914 (Regex!7065 List!28369) Unit!41401)

(assert (=> b!2407816 (= lt!873126 (mainMatchTheorem!914 r!13927 s!9460))))

(declare-fun b!2407817 () Bool)

(declare-fun tp_is_empty!11543 () Bool)

(declare-fun tp!766183 () Bool)

(assert (=> b!2407817 (= e!1533185 (and tp_is_empty!11543 tp!766183))))

(declare-fun b!2407818 () Bool)

(declare-fun res!1022600 () Bool)

(assert (=> b!2407818 (=> res!1022600 e!1533180)))

(assert (=> b!2407818 (= res!1022600 (not (= (generalisedConcat!166 lt!873123) EmptyExpr!7065)))))

(declare-fun b!2407819 () Bool)

(assert (=> b!2407819 (= e!1533180 e!1533186)))

(declare-fun res!1022602 () Bool)

(assert (=> b!2407819 (=> res!1022602 e!1533186)))

(assert (=> b!2407819 (= res!1022602 (not (matchR!3182 lt!873125 s!9460)))))

(declare-fun head!5352 (List!28368) Regex!7065)

(assert (=> b!2407819 (= lt!873125 (head!5352 l!9164))))

(declare-fun b!2407820 () Bool)

(assert (=> b!2407820 (= e!1533184 tp_is_empty!11543)))

(assert (= (and start!236012 res!1022606) b!2407808))

(assert (= (and b!2407808 res!1022601) b!2407816))

(assert (= (and b!2407816 (not res!1022604)) b!2407812))

(assert (= (and b!2407812 (not res!1022598)) b!2407811))

(assert (= (and b!2407811 (not res!1022599)) b!2407818))

(assert (= (and b!2407818 (not res!1022600)) b!2407819))

(assert (= (and b!2407819 (not res!1022602)) b!2407814))

(assert (= (and b!2407814 (not res!1022605)) b!2407807))

(assert (= (and b!2407807 (not res!1022603)) b!2407810))

(assert (= (and start!236012 ((_ is Cons!28270) l!9164)) b!2407813))

(assert (= (and start!236012 ((_ is ElementMatch!7065) r!13927)) b!2407820))

(assert (= (and start!236012 ((_ is Concat!11701) r!13927)) b!2407806))

(assert (= (and start!236012 ((_ is Star!7065) r!13927)) b!2407809))

(assert (= (and start!236012 ((_ is Union!7065) r!13927)) b!2407815))

(assert (= (and start!236012 ((_ is Cons!28271) s!9460)) b!2407817))

(declare-fun m!2800577 () Bool)

(assert (=> b!2407814 m!2800577))

(declare-fun m!2800579 () Bool)

(assert (=> b!2407819 m!2800579))

(declare-fun m!2800581 () Bool)

(assert (=> b!2407819 m!2800581))

(declare-fun m!2800583 () Bool)

(assert (=> b!2407816 m!2800583))

(declare-fun m!2800585 () Bool)

(assert (=> b!2407816 m!2800585))

(declare-fun m!2800587 () Bool)

(assert (=> b!2407816 m!2800587))

(declare-fun m!2800589 () Bool)

(assert (=> b!2407810 m!2800589))

(declare-fun m!2800591 () Bool)

(assert (=> b!2407808 m!2800591))

(declare-fun m!2800593 () Bool)

(assert (=> b!2407812 m!2800593))

(declare-fun m!2800595 () Bool)

(assert (=> start!236012 m!2800595))

(declare-fun m!2800597 () Bool)

(assert (=> b!2407818 m!2800597))

(declare-fun m!2800599 () Bool)

(assert (=> b!2407811 m!2800599))

(declare-fun m!2800601 () Bool)

(assert (=> b!2407811 m!2800601))

(check-sat (not b!2407813) (not b!2407811) (not b!2407815) (not start!236012) (not b!2407817) (not b!2407814) (not b!2407809) (not b!2407810) (not b!2407816) (not b!2407806) (not b!2407808) (not b!2407818) tp_is_empty!11543 (not b!2407819) (not b!2407812))
(check-sat)
