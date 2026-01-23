; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!549390 () Bool)

(assert start!549390)

(declare-fun b!5190158 () Bool)

(assert (=> b!5190158 true))

(declare-fun b!5190152 () Bool)

(declare-fun e!3232947 () Bool)

(declare-fun tp!1456057 () Bool)

(declare-fun tp!1456061 () Bool)

(assert (=> b!5190152 (= e!3232947 (and tp!1456057 tp!1456061))))

(declare-datatypes ((C!29720 0))(
  ( (C!29721 (val!24562 Int)) )
))
(declare-datatypes ((Regex!14725 0))(
  ( (ElementMatch!14725 (c!894574 C!29720)) (Concat!23570 (regOne!29962 Regex!14725) (regTwo!29962 Regex!14725)) (EmptyExpr!14725) (Star!14725 (reg!15054 Regex!14725)) (EmptyLang!14725) (Union!14725 (regOne!29963 Regex!14725) (regTwo!29963 Regex!14725)) )
))
(declare-datatypes ((List!60474 0))(
  ( (Nil!60350) (Cons!60350 (h!66798 Regex!14725) (t!373627 List!60474)) )
))
(declare-datatypes ((Context!8218 0))(
  ( (Context!8219 (exprs!4609 List!60474)) )
))
(declare-fun setElem!32758 () Context!8218)

(declare-fun e!3232950 () Bool)

(declare-fun setRes!32758 () Bool)

(declare-fun setNonEmpty!32758 () Bool)

(declare-fun tp!1456056 () Bool)

(declare-fun inv!80059 (Context!8218) Bool)

(assert (=> setNonEmpty!32758 (= setRes!32758 (and tp!1456056 (inv!80059 setElem!32758) e!3232950))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!8218))

(declare-fun setRest!32758 () (InoxSet Context!8218))

(assert (=> setNonEmpty!32758 (= z!1189 ((_ map or) (store ((as const (Array Context!8218 Bool)) false) setElem!32758 true) setRest!32758))))

(declare-fun b!5190153 () Bool)

(declare-fun e!3232946 () Bool)

(declare-fun e!3232957 () Bool)

(assert (=> b!5190153 (= e!3232946 e!3232957)))

(declare-fun res!2204502 () Bool)

(assert (=> b!5190153 (=> res!2204502 e!3232957)))

(declare-fun lt!2137320 () (InoxSet Context!8218))

(declare-fun lt!2137308 () (InoxSet Context!8218))

(assert (=> b!5190153 (= res!2204502 (not (= lt!2137320 lt!2137308)))))

(declare-fun r!7292 () Regex!14725)

(declare-datatypes ((List!60475 0))(
  ( (Nil!60351) (Cons!60351 (h!66799 C!29720) (t!373628 List!60475)) )
))
(declare-fun s!2326 () List!60475)

(declare-fun lt!2137309 () Context!8218)

(declare-fun derivationStepZipperDown!194 (Regex!14725 Context!8218 C!29720) (InoxSet Context!8218))

(assert (=> b!5190153 (= lt!2137308 (derivationStepZipperDown!194 r!7292 lt!2137309 (h!66799 s!2326)))))

(assert (=> b!5190153 (= lt!2137309 (Context!8219 Nil!60350))))

(declare-fun derivationStepZipperUp!115 (Context!8218 C!29720) (InoxSet Context!8218))

(assert (=> b!5190153 (= lt!2137320 (derivationStepZipperUp!115 (Context!8219 (Cons!60350 r!7292 Nil!60350)) (h!66799 s!2326)))))

(declare-fun b!5190154 () Bool)

(declare-fun tp!1456053 () Bool)

(assert (=> b!5190154 (= e!3232947 tp!1456053)))

(declare-fun b!5190155 () Bool)

(declare-fun e!3232955 () Bool)

(assert (=> b!5190155 (= e!3232955 true)))

(declare-fun lt!2137319 () Context!8218)

(declare-fun lambda!259487 () Int)

(declare-fun lt!2137307 () (InoxSet Context!8218))

(declare-fun flatMap!478 ((InoxSet Context!8218) Int) (InoxSet Context!8218))

(assert (=> b!5190155 (= (flatMap!478 lt!2137307 lambda!259487) (derivationStepZipperUp!115 lt!2137319 (h!66799 s!2326)))))

(declare-datatypes ((Unit!152284 0))(
  ( (Unit!152285) )
))
(declare-fun lt!2137318 () Unit!152284)

(declare-fun lemmaFlatMapOnSingletonSet!10 ((InoxSet Context!8218) Context!8218 Int) Unit!152284)

(assert (=> b!5190155 (= lt!2137318 (lemmaFlatMapOnSingletonSet!10 lt!2137307 lt!2137319 lambda!259487))))

(declare-fun lt!2137322 () (InoxSet Context!8218))

(assert (=> b!5190155 (= lt!2137322 (derivationStepZipperUp!115 (Context!8219 (Cons!60350 (regTwo!29963 r!7292) Nil!60350)) (h!66799 s!2326)))))

(declare-fun lt!2137324 () (InoxSet Context!8218))

(assert (=> b!5190155 (= lt!2137324 (derivationStepZipperUp!115 lt!2137319 (h!66799 s!2326)))))

(assert (=> b!5190155 (= lt!2137307 (store ((as const (Array Context!8218 Bool)) false) lt!2137319 true))))

(assert (=> b!5190155 (= lt!2137319 (Context!8219 (Cons!60350 (regOne!29963 r!7292) Nil!60350)))))

(declare-fun b!5190156 () Bool)

(declare-fun res!2204507 () Bool)

(declare-fun e!3232958 () Bool)

(assert (=> b!5190156 (=> (not res!2204507) (not e!3232958))))

(declare-datatypes ((List!60476 0))(
  ( (Nil!60352) (Cons!60352 (h!66800 Context!8218) (t!373629 List!60476)) )
))
(declare-fun zl!343 () List!60476)

(declare-fun unfocusZipper!467 (List!60476) Regex!14725)

(assert (=> b!5190156 (= res!2204507 (= r!7292 (unfocusZipper!467 zl!343)))))

(declare-fun b!5190157 () Bool)

(declare-fun e!3232951 () Bool)

(declare-fun tp_is_empty!38703 () Bool)

(declare-fun tp!1456055 () Bool)

(assert (=> b!5190157 (= e!3232951 (and tp_is_empty!38703 tp!1456055))))

(declare-fun e!3232952 () Bool)

(declare-fun e!3232954 () Bool)

(assert (=> b!5190158 (= e!3232952 e!3232954)))

(declare-fun res!2204510 () Bool)

(assert (=> b!5190158 (=> res!2204510 e!3232954)))

(declare-fun lt!2137321 () (InoxSet Context!8218))

(declare-fun derivationStepZipper!1027 ((InoxSet Context!8218) C!29720) (InoxSet Context!8218))

(assert (=> b!5190158 (= res!2204510 (not (= (derivationStepZipper!1027 z!1189 (h!66799 s!2326)) lt!2137321)))))

(assert (=> b!5190158 (= (flatMap!478 z!1189 lambda!259487) (derivationStepZipperUp!115 (h!66800 zl!343) (h!66799 s!2326)))))

(declare-fun lt!2137317 () Unit!152284)

(assert (=> b!5190158 (= lt!2137317 (lemmaFlatMapOnSingletonSet!10 z!1189 (h!66800 zl!343) lambda!259487))))

(declare-fun b!5190159 () Bool)

(declare-fun res!2204500 () Bool)

(declare-fun e!3232959 () Bool)

(assert (=> b!5190159 (=> res!2204500 e!3232959)))

(get-info :version)

(assert (=> b!5190159 (= res!2204500 (not ((_ is Cons!60350) (exprs!4609 (h!66800 zl!343)))))))

(declare-fun tp!1456059 () Bool)

(declare-fun e!3232956 () Bool)

(declare-fun b!5190160 () Bool)

(declare-fun e!3232948 () Bool)

(assert (=> b!5190160 (= e!3232948 (and (inv!80059 (h!66800 zl!343)) e!3232956 tp!1456059))))

(declare-fun b!5190161 () Bool)

(declare-fun tp!1456052 () Bool)

(assert (=> b!5190161 (= e!3232950 tp!1456052)))

(declare-fun setIsEmpty!32758 () Bool)

(assert (=> setIsEmpty!32758 setRes!32758))

(declare-fun b!5190163 () Bool)

(assert (=> b!5190163 (= e!3232958 (not e!3232959))))

(declare-fun res!2204498 () Bool)

(assert (=> b!5190163 (=> res!2204498 e!3232959)))

(assert (=> b!5190163 (= res!2204498 (not ((_ is Cons!60352) zl!343)))))

(declare-fun lt!2137312 () Bool)

(declare-fun matchRSpec!1828 (Regex!14725 List!60475) Bool)

(assert (=> b!5190163 (= lt!2137312 (matchRSpec!1828 r!7292 s!2326))))

(declare-fun matchR!6910 (Regex!14725 List!60475) Bool)

(assert (=> b!5190163 (= lt!2137312 (matchR!6910 r!7292 s!2326))))

(declare-fun lt!2137310 () Unit!152284)

(declare-fun mainMatchTheorem!1828 (Regex!14725 List!60475) Unit!152284)

(assert (=> b!5190163 (= lt!2137310 (mainMatchTheorem!1828 r!7292 s!2326))))

(declare-fun b!5190164 () Bool)

(assert (=> b!5190164 (= e!3232959 e!3232946)))

(declare-fun res!2204496 () Bool)

(assert (=> b!5190164 (=> res!2204496 e!3232946)))

(declare-fun lt!2137311 () Bool)

(declare-fun lt!2137325 () Bool)

(assert (=> b!5190164 (= res!2204496 (or (not (= lt!2137312 (or lt!2137325 lt!2137311))) ((_ is Nil!60351) s!2326)))))

(assert (=> b!5190164 (= lt!2137311 (matchRSpec!1828 (regTwo!29963 r!7292) s!2326))))

(assert (=> b!5190164 (= lt!2137311 (matchR!6910 (regTwo!29963 r!7292) s!2326))))

(declare-fun lt!2137316 () Unit!152284)

(assert (=> b!5190164 (= lt!2137316 (mainMatchTheorem!1828 (regTwo!29963 r!7292) s!2326))))

(assert (=> b!5190164 (= lt!2137325 (matchRSpec!1828 (regOne!29963 r!7292) s!2326))))

(assert (=> b!5190164 (= lt!2137325 (matchR!6910 (regOne!29963 r!7292) s!2326))))

(declare-fun lt!2137327 () Unit!152284)

(assert (=> b!5190164 (= lt!2137327 (mainMatchTheorem!1828 (regOne!29963 r!7292) s!2326))))

(declare-fun b!5190165 () Bool)

(declare-fun res!2204506 () Bool)

(assert (=> b!5190165 (=> res!2204506 e!3232959)))

(assert (=> b!5190165 (= res!2204506 (or ((_ is EmptyExpr!14725) r!7292) ((_ is EmptyLang!14725) r!7292) ((_ is ElementMatch!14725) r!7292) (not ((_ is Union!14725) r!7292))))))

(declare-fun b!5190166 () Bool)

(assert (=> b!5190166 (= e!3232957 e!3232952)))

(declare-fun res!2204505 () Bool)

(assert (=> b!5190166 (=> res!2204505 e!3232952)))

(assert (=> b!5190166 (= res!2204505 (not (= lt!2137308 lt!2137321)))))

(declare-fun lt!2137315 () (InoxSet Context!8218))

(declare-fun lt!2137323 () (InoxSet Context!8218))

(assert (=> b!5190166 (= lt!2137321 ((_ map or) lt!2137315 lt!2137323))))

(assert (=> b!5190166 (= lt!2137323 (derivationStepZipperDown!194 (regTwo!29963 r!7292) lt!2137309 (h!66799 s!2326)))))

(assert (=> b!5190166 (= lt!2137315 (derivationStepZipperDown!194 (regOne!29963 r!7292) lt!2137309 (h!66799 s!2326)))))

(declare-fun b!5190167 () Bool)

(declare-fun res!2204495 () Bool)

(assert (=> b!5190167 (=> res!2204495 e!3232959)))

(declare-fun generalisedUnion!654 (List!60474) Regex!14725)

(declare-fun unfocusZipperList!167 (List!60476) List!60474)

(assert (=> b!5190167 (= res!2204495 (not (= r!7292 (generalisedUnion!654 (unfocusZipperList!167 zl!343)))))))

(declare-fun b!5190168 () Bool)

(declare-fun e!3232953 () Bool)

(assert (=> b!5190168 (= e!3232953 e!3232955)))

(declare-fun res!2204503 () Bool)

(assert (=> b!5190168 (=> res!2204503 e!3232955)))

(declare-fun lt!2137313 () Bool)

(declare-fun lt!2137326 () Bool)

(declare-fun lt!2137306 () Bool)

(assert (=> b!5190168 (= res!2204503 (or (not (= lt!2137306 lt!2137326)) (not (= lt!2137306 lt!2137313))))))

(assert (=> b!5190168 (= lt!2137326 lt!2137306)))

(declare-fun e!3232949 () Bool)

(assert (=> b!5190168 (= lt!2137306 e!3232949)))

(declare-fun res!2204497 () Bool)

(assert (=> b!5190168 (=> res!2204497 e!3232949)))

(declare-fun matchZipper!1005 ((InoxSet Context!8218) List!60475) Bool)

(assert (=> b!5190168 (= res!2204497 (matchZipper!1005 lt!2137315 (t!373628 s!2326)))))

(declare-fun lt!2137314 () Unit!152284)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!4 ((InoxSet Context!8218) (InoxSet Context!8218) List!60475) Unit!152284)

(assert (=> b!5190168 (= lt!2137314 (lemmaZipperConcatMatchesSameAsBothZippers!4 lt!2137315 lt!2137323 (t!373628 s!2326)))))

(declare-fun b!5190169 () Bool)

(declare-fun res!2204508 () Bool)

(assert (=> b!5190169 (=> (not res!2204508) (not e!3232958))))

(declare-fun toList!8509 ((InoxSet Context!8218)) List!60476)

(assert (=> b!5190169 (= res!2204508 (= (toList!8509 z!1189) zl!343))))

(declare-fun b!5190170 () Bool)

(assert (=> b!5190170 (= e!3232954 e!3232953)))

(declare-fun res!2204509 () Bool)

(assert (=> b!5190170 (=> res!2204509 e!3232953)))

(assert (=> b!5190170 (= res!2204509 (not (= lt!2137326 lt!2137313)))))

(assert (=> b!5190170 (= lt!2137313 (matchZipper!1005 z!1189 s!2326))))

(assert (=> b!5190170 (= lt!2137326 (matchZipper!1005 lt!2137321 (t!373628 s!2326)))))

(declare-fun b!5190162 () Bool)

(assert (=> b!5190162 (= e!3232949 (matchZipper!1005 lt!2137323 (t!373628 s!2326)))))

(declare-fun res!2204504 () Bool)

(assert (=> start!549390 (=> (not res!2204504) (not e!3232958))))

(declare-fun validRegex!6461 (Regex!14725) Bool)

(assert (=> start!549390 (= res!2204504 (validRegex!6461 r!7292))))

(assert (=> start!549390 e!3232958))

(assert (=> start!549390 e!3232947))

(declare-fun condSetEmpty!32758 () Bool)

(assert (=> start!549390 (= condSetEmpty!32758 (= z!1189 ((as const (Array Context!8218 Bool)) false)))))

(assert (=> start!549390 setRes!32758))

(assert (=> start!549390 e!3232948))

(assert (=> start!549390 e!3232951))

(declare-fun b!5190171 () Bool)

(declare-fun res!2204501 () Bool)

(assert (=> b!5190171 (=> res!2204501 e!3232959)))

(declare-fun generalisedConcat!394 (List!60474) Regex!14725)

(assert (=> b!5190171 (= res!2204501 (not (= r!7292 (generalisedConcat!394 (exprs!4609 (h!66800 zl!343))))))))

(declare-fun b!5190172 () Bool)

(declare-fun tp!1456060 () Bool)

(assert (=> b!5190172 (= e!3232956 tp!1456060)))

(declare-fun b!5190173 () Bool)

(declare-fun tp!1456054 () Bool)

(declare-fun tp!1456058 () Bool)

(assert (=> b!5190173 (= e!3232947 (and tp!1456054 tp!1456058))))

(declare-fun b!5190174 () Bool)

(declare-fun res!2204499 () Bool)

(assert (=> b!5190174 (=> res!2204499 e!3232959)))

(declare-fun isEmpty!32306 (List!60476) Bool)

(assert (=> b!5190174 (= res!2204499 (not (isEmpty!32306 (t!373629 zl!343))))))

(declare-fun b!5190175 () Bool)

(assert (=> b!5190175 (= e!3232947 tp_is_empty!38703)))

(assert (= (and start!549390 res!2204504) b!5190169))

(assert (= (and b!5190169 res!2204508) b!5190156))

(assert (= (and b!5190156 res!2204507) b!5190163))

(assert (= (and b!5190163 (not res!2204498)) b!5190174))

(assert (= (and b!5190174 (not res!2204499)) b!5190171))

(assert (= (and b!5190171 (not res!2204501)) b!5190159))

(assert (= (and b!5190159 (not res!2204500)) b!5190167))

(assert (= (and b!5190167 (not res!2204495)) b!5190165))

(assert (= (and b!5190165 (not res!2204506)) b!5190164))

(assert (= (and b!5190164 (not res!2204496)) b!5190153))

(assert (= (and b!5190153 (not res!2204502)) b!5190166))

(assert (= (and b!5190166 (not res!2204505)) b!5190158))

(assert (= (and b!5190158 (not res!2204510)) b!5190170))

(assert (= (and b!5190170 (not res!2204509)) b!5190168))

(assert (= (and b!5190168 (not res!2204497)) b!5190162))

(assert (= (and b!5190168 (not res!2204503)) b!5190155))

(assert (= (and start!549390 ((_ is ElementMatch!14725) r!7292)) b!5190175))

(assert (= (and start!549390 ((_ is Concat!23570) r!7292)) b!5190152))

(assert (= (and start!549390 ((_ is Star!14725) r!7292)) b!5190154))

(assert (= (and start!549390 ((_ is Union!14725) r!7292)) b!5190173))

(assert (= (and start!549390 condSetEmpty!32758) setIsEmpty!32758))

(assert (= (and start!549390 (not condSetEmpty!32758)) setNonEmpty!32758))

(assert (= setNonEmpty!32758 b!5190161))

(assert (= b!5190160 b!5190172))

(assert (= (and start!549390 ((_ is Cons!60352) zl!343)) b!5190160))

(assert (= (and start!549390 ((_ is Cons!60351) s!2326)) b!5190157))

(declare-fun m!6246518 () Bool)

(assert (=> b!5190170 m!6246518))

(declare-fun m!6246520 () Bool)

(assert (=> b!5190170 m!6246520))

(declare-fun m!6246522 () Bool)

(assert (=> b!5190174 m!6246522))

(declare-fun m!6246524 () Bool)

(assert (=> b!5190153 m!6246524))

(declare-fun m!6246526 () Bool)

(assert (=> b!5190153 m!6246526))

(declare-fun m!6246528 () Bool)

(assert (=> b!5190156 m!6246528))

(declare-fun m!6246530 () Bool)

(assert (=> b!5190162 m!6246530))

(declare-fun m!6246532 () Bool)

(assert (=> b!5190160 m!6246532))

(declare-fun m!6246534 () Bool)

(assert (=> b!5190155 m!6246534))

(declare-fun m!6246536 () Bool)

(assert (=> b!5190155 m!6246536))

(declare-fun m!6246538 () Bool)

(assert (=> b!5190155 m!6246538))

(declare-fun m!6246540 () Bool)

(assert (=> b!5190155 m!6246540))

(declare-fun m!6246542 () Bool)

(assert (=> b!5190155 m!6246542))

(declare-fun m!6246544 () Bool)

(assert (=> b!5190166 m!6246544))

(declare-fun m!6246546 () Bool)

(assert (=> b!5190166 m!6246546))

(declare-fun m!6246548 () Bool)

(assert (=> b!5190171 m!6246548))

(declare-fun m!6246550 () Bool)

(assert (=> b!5190158 m!6246550))

(declare-fun m!6246552 () Bool)

(assert (=> b!5190158 m!6246552))

(declare-fun m!6246554 () Bool)

(assert (=> b!5190158 m!6246554))

(declare-fun m!6246556 () Bool)

(assert (=> b!5190158 m!6246556))

(declare-fun m!6246558 () Bool)

(assert (=> b!5190169 m!6246558))

(declare-fun m!6246560 () Bool)

(assert (=> b!5190163 m!6246560))

(declare-fun m!6246562 () Bool)

(assert (=> b!5190163 m!6246562))

(declare-fun m!6246564 () Bool)

(assert (=> b!5190163 m!6246564))

(declare-fun m!6246566 () Bool)

(assert (=> start!549390 m!6246566))

(declare-fun m!6246568 () Bool)

(assert (=> b!5190167 m!6246568))

(assert (=> b!5190167 m!6246568))

(declare-fun m!6246570 () Bool)

(assert (=> b!5190167 m!6246570))

(declare-fun m!6246572 () Bool)

(assert (=> b!5190168 m!6246572))

(declare-fun m!6246574 () Bool)

(assert (=> b!5190168 m!6246574))

(declare-fun m!6246576 () Bool)

(assert (=> setNonEmpty!32758 m!6246576))

(declare-fun m!6246578 () Bool)

(assert (=> b!5190164 m!6246578))

(declare-fun m!6246580 () Bool)

(assert (=> b!5190164 m!6246580))

(declare-fun m!6246582 () Bool)

(assert (=> b!5190164 m!6246582))

(declare-fun m!6246584 () Bool)

(assert (=> b!5190164 m!6246584))

(declare-fun m!6246586 () Bool)

(assert (=> b!5190164 m!6246586))

(declare-fun m!6246588 () Bool)

(assert (=> b!5190164 m!6246588))

(check-sat (not b!5190156) (not b!5190167) (not b!5190174) (not setNonEmpty!32758) (not start!549390) (not b!5190164) (not b!5190163) (not b!5190154) (not b!5190166) (not b!5190171) (not b!5190157) (not b!5190169) (not b!5190160) (not b!5190153) (not b!5190162) (not b!5190155) (not b!5190161) (not b!5190170) (not b!5190158) (not b!5190172) (not b!5190168) tp_is_empty!38703 (not b!5190152) (not b!5190173))
(check-sat)
