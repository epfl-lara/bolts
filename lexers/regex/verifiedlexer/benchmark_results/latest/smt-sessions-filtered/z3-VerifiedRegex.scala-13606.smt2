; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!731104 () Bool)

(assert start!731104)

(declare-fun b!7570206 () Bool)

(declare-fun e!4506917 () Bool)

(declare-fun tp_is_empty!50369 () Bool)

(declare-fun tp!2205373 () Bool)

(assert (=> b!7570206 (= e!4506917 (and tp_is_empty!50369 tp!2205373))))

(declare-fun b!7570207 () Bool)

(declare-fun e!4506919 () Bool)

(declare-fun e!4506921 () Bool)

(assert (=> b!7570207 (= e!4506919 (not e!4506921))))

(declare-fun res!3032688 () Bool)

(assert (=> b!7570207 (=> res!3032688 e!4506921)))

(declare-datatypes ((C!40340 0))(
  ( (C!40341 (val!30610 Int)) )
))
(declare-datatypes ((Regex!20007 0))(
  ( (ElementMatch!20007 (c!1396774 C!40340)) (Concat!28852 (regOne!40526 Regex!20007) (regTwo!40526 Regex!20007)) (EmptyExpr!20007) (Star!20007 (reg!20336 Regex!20007)) (EmptyLang!20007) (Union!20007 (regOne!40527 Regex!20007) (regTwo!40527 Regex!20007)) )
))
(declare-fun r!24129 () Regex!20007)

(declare-datatypes ((List!72890 0))(
  ( (Nil!72766) (Cons!72766 (h!79214 C!40340) (t!387625 List!72890)) )
))
(declare-fun matchR!9607 (Regex!20007 List!72890) Bool)

(assert (=> b!7570207 (= res!3032688 (not (matchR!9607 r!24129 Nil!72766)))))

(declare-fun lt!2651139 () Regex!20007)

(assert (=> b!7570207 (matchR!9607 lt!2651139 Nil!72766)))

(declare-datatypes ((Unit!166966 0))(
  ( (Unit!166967) )
))
(declare-fun lt!2651138 () Unit!166966)

(declare-fun baseR!100 () Regex!20007)

(declare-fun testedP!418 () List!72890)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!276 (Regex!20007 List!72890) Unit!166966)

(assert (=> b!7570207 (= lt!2651138 (lemmaMatchRIsSameAsWholeDerivativeAndNil!276 baseR!100 testedP!418))))

(declare-fun b!7570208 () Bool)

(declare-fun e!4506918 () Bool)

(assert (=> b!7570208 (= e!4506918 tp_is_empty!50369)))

(declare-fun b!7570209 () Bool)

(declare-fun e!4506915 () Bool)

(assert (=> b!7570209 (= e!4506915 tp_is_empty!50369)))

(declare-fun b!7570210 () Bool)

(declare-fun tp!2205367 () Bool)

(declare-fun tp!2205370 () Bool)

(assert (=> b!7570210 (= e!4506915 (and tp!2205367 tp!2205370))))

(declare-fun b!7570211 () Bool)

(declare-fun e!4506920 () Bool)

(assert (=> b!7570211 (= e!4506920 e!4506919)))

(declare-fun res!3032693 () Bool)

(assert (=> b!7570211 (=> (not res!3032693) (not e!4506919))))

(assert (=> b!7570211 (= res!3032693 (= lt!2651139 r!24129))))

(declare-fun derivative!533 (Regex!20007 List!72890) Regex!20007)

(assert (=> b!7570211 (= lt!2651139 (derivative!533 baseR!100 testedP!418))))

(declare-fun b!7570212 () Bool)

(declare-fun tp!2205365 () Bool)

(declare-fun tp!2205368 () Bool)

(assert (=> b!7570212 (= e!4506918 (and tp!2205365 tp!2205368))))

(declare-fun b!7570213 () Bool)

(declare-fun res!3032694 () Bool)

(assert (=> b!7570213 (=> (not res!3032694) (not e!4506920))))

(declare-fun input!7855 () List!72890)

(declare-fun isPrefix!6213 (List!72890 List!72890) Bool)

(assert (=> b!7570213 (= res!3032694 (isPrefix!6213 testedP!418 input!7855))))

(declare-fun b!7570214 () Bool)

(declare-fun tp!2205364 () Bool)

(declare-fun tp!2205363 () Bool)

(assert (=> b!7570214 (= e!4506918 (and tp!2205364 tp!2205363))))

(declare-fun b!7570215 () Bool)

(assert (=> b!7570215 (= e!4506921 true)))

(declare-fun lt!2651141 () List!72890)

(declare-fun lt!2651140 () List!72890)

(declare-fun ++!17493 (List!72890 List!72890) List!72890)

(assert (=> b!7570215 (= lt!2651141 (++!17493 testedP!418 lt!2651140))))

(declare-fun lt!2651142 () Int)

(declare-fun size!42491 (List!72890) Int)

(assert (=> b!7570215 (= lt!2651142 (size!42491 input!7855))))

(declare-fun getSuffix!3675 (List!72890 List!72890) List!72890)

(assert (=> b!7570215 (= lt!2651140 (getSuffix!3675 input!7855 testedP!418))))

(declare-fun lt!2651137 () Int)

(assert (=> b!7570215 (= lt!2651137 (size!42491 testedP!418))))

(declare-fun res!3032692 () Bool)

(assert (=> start!731104 (=> (not res!3032692) (not e!4506920))))

(declare-fun validRegex!10435 (Regex!20007) Bool)

(assert (=> start!731104 (= res!3032692 (validRegex!10435 baseR!100))))

(assert (=> start!731104 e!4506920))

(assert (=> start!731104 e!4506915))

(assert (=> start!731104 e!4506918))

(assert (=> start!731104 e!4506917))

(declare-fun e!4506916 () Bool)

(assert (=> start!731104 e!4506916))

(declare-fun b!7570216 () Bool)

(declare-fun res!3032690 () Bool)

(assert (=> b!7570216 (=> res!3032690 e!4506921)))

(declare-fun nullable!8733 (Regex!20007) Bool)

(assert (=> b!7570216 (= res!3032690 (not (nullable!8733 r!24129)))))

(declare-fun b!7570217 () Bool)

(declare-fun res!3032687 () Bool)

(assert (=> b!7570217 (=> res!3032687 e!4506921)))

(declare-fun lostCause!1787 (Regex!20007) Bool)

(assert (=> b!7570217 (= res!3032687 (lostCause!1787 r!24129))))

(declare-fun b!7570218 () Bool)

(declare-fun tp!2205371 () Bool)

(assert (=> b!7570218 (= e!4506915 tp!2205371)))

(declare-fun b!7570219 () Bool)

(declare-fun res!3032691 () Bool)

(assert (=> b!7570219 (=> (not res!3032691) (not e!4506920))))

(assert (=> b!7570219 (= res!3032691 (validRegex!10435 r!24129))))

(declare-fun b!7570220 () Bool)

(declare-fun tp!2205362 () Bool)

(assert (=> b!7570220 (= e!4506918 tp!2205362)))

(declare-fun b!7570221 () Bool)

(declare-fun res!3032689 () Bool)

(assert (=> b!7570221 (=> (not res!3032689) (not e!4506920))))

(assert (=> b!7570221 (= res!3032689 (matchR!9607 baseR!100 testedP!418))))

(declare-fun b!7570222 () Bool)

(declare-fun tp!2205369 () Bool)

(declare-fun tp!2205366 () Bool)

(assert (=> b!7570222 (= e!4506915 (and tp!2205369 tp!2205366))))

(declare-fun b!7570223 () Bool)

(declare-fun tp!2205372 () Bool)

(assert (=> b!7570223 (= e!4506916 (and tp_is_empty!50369 tp!2205372))))

(assert (= (and start!731104 res!3032692) b!7570219))

(assert (= (and b!7570219 res!3032691) b!7570213))

(assert (= (and b!7570213 res!3032694) b!7570221))

(assert (= (and b!7570221 res!3032689) b!7570211))

(assert (= (and b!7570211 res!3032693) b!7570207))

(assert (= (and b!7570207 (not res!3032688)) b!7570216))

(assert (= (and b!7570216 (not res!3032690)) b!7570217))

(assert (= (and b!7570217 (not res!3032687)) b!7570215))

(get-info :version)

(assert (= (and start!731104 ((_ is ElementMatch!20007) baseR!100)) b!7570209))

(assert (= (and start!731104 ((_ is Concat!28852) baseR!100)) b!7570210))

(assert (= (and start!731104 ((_ is Star!20007) baseR!100)) b!7570218))

(assert (= (and start!731104 ((_ is Union!20007) baseR!100)) b!7570222))

(assert (= (and start!731104 ((_ is ElementMatch!20007) r!24129)) b!7570208))

(assert (= (and start!731104 ((_ is Concat!28852) r!24129)) b!7570212))

(assert (= (and start!731104 ((_ is Star!20007) r!24129)) b!7570220))

(assert (= (and start!731104 ((_ is Union!20007) r!24129)) b!7570214))

(assert (= (and start!731104 ((_ is Cons!72766) testedP!418)) b!7570206))

(assert (= (and start!731104 ((_ is Cons!72766) input!7855)) b!7570223))

(declare-fun m!8131598 () Bool)

(assert (=> b!7570217 m!8131598))

(declare-fun m!8131600 () Bool)

(assert (=> start!731104 m!8131600))

(declare-fun m!8131602 () Bool)

(assert (=> b!7570207 m!8131602))

(declare-fun m!8131604 () Bool)

(assert (=> b!7570207 m!8131604))

(declare-fun m!8131606 () Bool)

(assert (=> b!7570207 m!8131606))

(declare-fun m!8131608 () Bool)

(assert (=> b!7570211 m!8131608))

(declare-fun m!8131610 () Bool)

(assert (=> b!7570216 m!8131610))

(declare-fun m!8131612 () Bool)

(assert (=> b!7570221 m!8131612))

(declare-fun m!8131614 () Bool)

(assert (=> b!7570219 m!8131614))

(declare-fun m!8131616 () Bool)

(assert (=> b!7570215 m!8131616))

(declare-fun m!8131618 () Bool)

(assert (=> b!7570215 m!8131618))

(declare-fun m!8131620 () Bool)

(assert (=> b!7570215 m!8131620))

(declare-fun m!8131622 () Bool)

(assert (=> b!7570215 m!8131622))

(declare-fun m!8131624 () Bool)

(assert (=> b!7570213 m!8131624))

(check-sat (not b!7570216) (not b!7570218) (not b!7570222) (not b!7570219) (not b!7570213) (not b!7570212) (not b!7570220) (not b!7570214) (not b!7570221) (not b!7570211) (not b!7570223) (not b!7570210) (not b!7570206) (not start!731104) (not b!7570207) (not b!7570215) tp_is_empty!50369 (not b!7570217))
(check-sat)
