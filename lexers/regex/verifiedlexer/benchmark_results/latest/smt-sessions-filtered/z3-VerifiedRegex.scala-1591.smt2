; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82054 () Bool)

(assert start!82054)

(declare-fun b!912610 () Bool)

(assert (=> b!912610 true))

(assert (=> b!912610 true))

(declare-fun b!912605 () Bool)

(declare-fun e!595128 () Bool)

(declare-fun tp_is_empty!4525 () Bool)

(assert (=> b!912605 (= e!595128 tp_is_empty!4525)))

(declare-fun b!912606 () Bool)

(declare-fun tp!285259 () Bool)

(assert (=> b!912606 (= e!595128 tp!285259)))

(declare-fun b!912607 () Bool)

(declare-fun e!595130 () Bool)

(declare-fun tp!285261 () Bool)

(assert (=> b!912607 (= e!595130 (and tp_is_empty!4525 tp!285261))))

(declare-fun b!912608 () Bool)

(declare-fun e!595129 () Bool)

(declare-fun e!595131 () Bool)

(assert (=> b!912608 (= e!595129 (not e!595131))))

(declare-fun res!415005 () Bool)

(assert (=> b!912608 (=> res!415005 e!595131)))

(declare-fun lt!337006 () Bool)

(declare-datatypes ((C!5452 0))(
  ( (C!5453 (val!2974 Int)) )
))
(declare-datatypes ((Regex!2441 0))(
  ( (ElementMatch!2441 (c!147836 C!5452)) (Concat!4274 (regOne!5394 Regex!2441) (regTwo!5394 Regex!2441)) (EmptyExpr!2441) (Star!2441 (reg!2770 Regex!2441)) (EmptyLang!2441) (Union!2441 (regOne!5395 Regex!2441) (regTwo!5395 Regex!2441)) )
))
(declare-fun r!15766 () Regex!2441)

(get-info :version)

(assert (=> b!912608 (= res!415005 (or lt!337006 (and ((_ is Concat!4274) r!15766) ((_ is EmptyExpr!2441) (regOne!5394 r!15766))) (and ((_ is Concat!4274) r!15766) ((_ is EmptyExpr!2441) (regTwo!5394 r!15766))) (not ((_ is Concat!4274) r!15766))))))

(declare-datatypes ((List!9671 0))(
  ( (Nil!9655) (Cons!9655 (h!15056 C!5452) (t!100717 List!9671)) )
))
(declare-fun s!10566 () List!9671)

(declare-fun matchRSpec!242 (Regex!2441 List!9671) Bool)

(assert (=> b!912608 (= lt!337006 (matchRSpec!242 r!15766 s!10566))))

(declare-fun matchR!979 (Regex!2441 List!9671) Bool)

(assert (=> b!912608 (= lt!337006 (matchR!979 r!15766 s!10566))))

(declare-datatypes ((Unit!14501 0))(
  ( (Unit!14502) )
))
(declare-fun lt!337005 () Unit!14501)

(declare-fun mainMatchTheorem!242 (Regex!2441 List!9671) Unit!14501)

(assert (=> b!912608 (= lt!337005 (mainMatchTheorem!242 r!15766 s!10566))))

(declare-fun b!912609 () Bool)

(declare-fun tp!285260 () Bool)

(declare-fun tp!285262 () Bool)

(assert (=> b!912609 (= e!595128 (and tp!285260 tp!285262))))

(assert (=> b!912610 (= e!595131 true)))

(declare-fun lambda!29176 () Int)

(declare-datatypes ((tuple2!10868 0))(
  ( (tuple2!10869 (_1!6260 List!9671) (_2!6260 List!9671)) )
))
(declare-datatypes ((Option!2076 0))(
  ( (None!2075) (Some!2075 (v!19492 tuple2!10868)) )
))
(declare-fun isDefined!1718 (Option!2076) Bool)

(declare-fun findConcatSeparation!182 (Regex!2441 Regex!2441 List!9671 List!9671 List!9671) Option!2076)

(declare-fun Exists!212 (Int) Bool)

(assert (=> b!912610 (= (isDefined!1718 (findConcatSeparation!182 (regOne!5394 r!15766) (regTwo!5394 r!15766) Nil!9655 s!10566 s!10566)) (Exists!212 lambda!29176))))

(declare-fun lt!337007 () Unit!14501)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!182 (Regex!2441 Regex!2441 List!9671) Unit!14501)

(assert (=> b!912610 (= lt!337007 (lemmaFindConcatSeparationEquivalentToExists!182 (regOne!5394 r!15766) (regTwo!5394 r!15766) s!10566))))

(declare-fun b!912611 () Bool)

(declare-fun tp!285263 () Bool)

(declare-fun tp!285264 () Bool)

(assert (=> b!912611 (= e!595128 (and tp!285263 tp!285264))))

(declare-fun res!415006 () Bool)

(assert (=> start!82054 (=> (not res!415006) (not e!595129))))

(declare-fun validRegex!910 (Regex!2441) Bool)

(assert (=> start!82054 (= res!415006 (validRegex!910 r!15766))))

(assert (=> start!82054 e!595129))

(assert (=> start!82054 e!595128))

(assert (=> start!82054 e!595130))

(assert (= (and start!82054 res!415006) b!912608))

(assert (= (and b!912608 (not res!415005)) b!912610))

(assert (= (and start!82054 ((_ is ElementMatch!2441) r!15766)) b!912605))

(assert (= (and start!82054 ((_ is Concat!4274) r!15766)) b!912609))

(assert (= (and start!82054 ((_ is Star!2441) r!15766)) b!912606))

(assert (= (and start!82054 ((_ is Union!2441) r!15766)) b!912611))

(assert (= (and start!82054 ((_ is Cons!9655) s!10566)) b!912607))

(declare-fun m!1144045 () Bool)

(assert (=> b!912608 m!1144045))

(declare-fun m!1144047 () Bool)

(assert (=> b!912608 m!1144047))

(declare-fun m!1144049 () Bool)

(assert (=> b!912608 m!1144049))

(declare-fun m!1144051 () Bool)

(assert (=> b!912610 m!1144051))

(assert (=> b!912610 m!1144051))

(declare-fun m!1144053 () Bool)

(assert (=> b!912610 m!1144053))

(declare-fun m!1144055 () Bool)

(assert (=> b!912610 m!1144055))

(declare-fun m!1144057 () Bool)

(assert (=> b!912610 m!1144057))

(declare-fun m!1144059 () Bool)

(assert (=> start!82054 m!1144059))

(check-sat tp_is_empty!4525 (not b!912611) (not b!912608) (not b!912609) (not b!912606) (not b!912607) (not start!82054) (not b!912610))
(check-sat)
