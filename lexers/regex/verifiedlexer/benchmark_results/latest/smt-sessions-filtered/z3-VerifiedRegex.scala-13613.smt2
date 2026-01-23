; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!731224 () Bool)

(assert start!731224)

(declare-fun b!7572272 () Bool)

(declare-fun e!4507858 () Bool)

(declare-fun tp!2206490 () Bool)

(declare-fun tp!2206488 () Bool)

(assert (=> b!7572272 (= e!4507858 (and tp!2206490 tp!2206488))))

(declare-fun b!7572273 () Bool)

(declare-fun tp!2206491 () Bool)

(assert (=> b!7572273 (= e!4507858 tp!2206491)))

(declare-fun b!7572274 () Bool)

(declare-fun res!3033314 () Bool)

(declare-fun e!4507861 () Bool)

(assert (=> b!7572274 (=> res!3033314 e!4507861)))

(declare-datatypes ((C!40368 0))(
  ( (C!40369 (val!30624 Int)) )
))
(declare-datatypes ((Regex!20021 0))(
  ( (ElementMatch!20021 (c!1397042 C!40368)) (Concat!28866 (regOne!40554 Regex!20021) (regTwo!40554 Regex!20021)) (EmptyExpr!20021) (Star!20021 (reg!20350 Regex!20021)) (EmptyLang!20021) (Union!20021 (regOne!40555 Regex!20021) (regTwo!40555 Regex!20021)) )
))
(declare-fun r!22341 () Regex!20021)

(declare-fun validRegex!10449 (Regex!20021) Bool)

(assert (=> b!7572274 (= res!3033314 (not (validRegex!10449 (regOne!40555 r!22341))))))

(declare-fun b!7572275 () Bool)

(declare-fun tp_is_empty!50397 () Bool)

(assert (=> b!7572275 (= e!4507858 tp_is_empty!50397)))

(declare-fun b!7572276 () Bool)

(declare-fun res!3033313 () Bool)

(declare-fun e!4507859 () Bool)

(assert (=> b!7572276 (=> (not res!3033313) (not e!4507859))))

(declare-datatypes ((List!72904 0))(
  ( (Nil!72780) (Cons!72780 (h!79228 C!40368) (t!387639 List!72904)) )
))
(declare-fun s!13436 () List!72904)

(declare-fun isEmpty!41439 (List!72904) Bool)

(assert (=> b!7572276 (= res!3033313 (not (isEmpty!41439 s!13436)))))

(declare-fun b!7572278 () Bool)

(declare-fun res!3033315 () Bool)

(assert (=> b!7572278 (=> (not res!3033315) (not e!4507859))))

(declare-fun lostCause!1797 (Regex!20021) Bool)

(assert (=> b!7572278 (= res!3033315 (lostCause!1797 r!22341))))

(declare-fun b!7572279 () Bool)

(declare-fun tp!2206492 () Bool)

(declare-fun tp!2206493 () Bool)

(assert (=> b!7572279 (= e!4507858 (and tp!2206492 tp!2206493))))

(declare-fun b!7572280 () Bool)

(assert (=> b!7572280 (= e!4507859 (not e!4507861))))

(declare-fun res!3033316 () Bool)

(assert (=> b!7572280 (=> res!3033316 e!4507861)))

(get-info :version)

(assert (=> b!7572280 (= res!3033316 (or ((_ is EmptyLang!20021) r!22341) ((_ is EmptyExpr!20021) r!22341) ((_ is ElementMatch!20021) r!22341) (not ((_ is Union!20021) r!22341))))))

(declare-fun matchR!9617 (Regex!20021 List!72904) Bool)

(declare-fun matchRSpec!4340 (Regex!20021 List!72904) Bool)

(assert (=> b!7572280 (= (matchR!9617 r!22341 s!13436) (matchRSpec!4340 r!22341 s!13436))))

(declare-datatypes ((Unit!166998 0))(
  ( (Unit!166999) )
))
(declare-fun lt!2651478 () Unit!166998)

(declare-fun mainMatchTheorem!4334 (Regex!20021 List!72904) Unit!166998)

(assert (=> b!7572280 (= lt!2651478 (mainMatchTheorem!4334 r!22341 s!13436))))

(declare-fun b!7572281 () Bool)

(assert (=> b!7572281 (= e!4507861 true)))

(declare-fun lt!2651477 () Bool)

(assert (=> b!7572281 (= lt!2651477 (lostCause!1797 (regOne!40555 r!22341)))))

(declare-fun res!3033312 () Bool)

(assert (=> start!731224 (=> (not res!3033312) (not e!4507859))))

(assert (=> start!731224 (= res!3033312 (validRegex!10449 r!22341))))

(assert (=> start!731224 e!4507859))

(assert (=> start!731224 e!4507858))

(declare-fun e!4507860 () Bool)

(assert (=> start!731224 e!4507860))

(declare-fun b!7572277 () Bool)

(declare-fun tp!2206489 () Bool)

(assert (=> b!7572277 (= e!4507860 (and tp_is_empty!50397 tp!2206489))))

(assert (= (and start!731224 res!3033312) b!7572278))

(assert (= (and b!7572278 res!3033315) b!7572276))

(assert (= (and b!7572276 res!3033313) b!7572280))

(assert (= (and b!7572280 (not res!3033316)) b!7572274))

(assert (= (and b!7572274 (not res!3033314)) b!7572281))

(assert (= (and start!731224 ((_ is ElementMatch!20021) r!22341)) b!7572275))

(assert (= (and start!731224 ((_ is Concat!28866) r!22341)) b!7572272))

(assert (= (and start!731224 ((_ is Star!20021) r!22341)) b!7572273))

(assert (= (and start!731224 ((_ is Union!20021) r!22341)) b!7572279))

(assert (= (and start!731224 ((_ is Cons!72780) s!13436)) b!7572277))

(declare-fun m!8132410 () Bool)

(assert (=> b!7572280 m!8132410))

(declare-fun m!8132412 () Bool)

(assert (=> b!7572280 m!8132412))

(declare-fun m!8132414 () Bool)

(assert (=> b!7572280 m!8132414))

(declare-fun m!8132416 () Bool)

(assert (=> b!7572276 m!8132416))

(declare-fun m!8132418 () Bool)

(assert (=> b!7572274 m!8132418))

(declare-fun m!8132420 () Bool)

(assert (=> b!7572281 m!8132420))

(declare-fun m!8132422 () Bool)

(assert (=> b!7572278 m!8132422))

(declare-fun m!8132424 () Bool)

(assert (=> start!731224 m!8132424))

(check-sat (not b!7572273) (not b!7572277) (not b!7572274) (not b!7572281) (not b!7572272) (not b!7572276) (not b!7572278) tp_is_empty!50397 (not start!731224) (not b!7572280) (not b!7572279))
(check-sat)
