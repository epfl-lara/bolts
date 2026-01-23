; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!653880 () Bool)

(assert start!653880)

(declare-fun b!6741534 () Bool)

(assert (=> b!6741534 true))

(assert (=> b!6741534 true))

(declare-fun lambda!378743 () Int)

(declare-fun lambda!378742 () Int)

(assert (=> b!6741534 (not (= lambda!378743 lambda!378742))))

(assert (=> b!6741534 true))

(assert (=> b!6741534 true))

(declare-fun lambda!378744 () Int)

(assert (=> b!6741534 (not (= lambda!378744 lambda!378742))))

(assert (=> b!6741534 (not (= lambda!378744 lambda!378743))))

(assert (=> b!6741534 true))

(assert (=> b!6741534 true))

(declare-fun b!6741544 () Bool)

(assert (=> b!6741544 true))

(declare-fun b!6741532 () Bool)

(declare-fun e!4072014 () Bool)

(declare-fun tp!1848165 () Bool)

(assert (=> b!6741532 (= e!4072014 tp!1848165)))

(declare-fun b!6741533 () Bool)

(declare-fun e!4072024 () Bool)

(declare-fun e!4072020 () Bool)

(assert (=> b!6741533 (= e!4072024 e!4072020)))

(declare-fun res!2757580 () Bool)

(assert (=> b!6741533 (=> res!2757580 e!4072020)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!33408 0))(
  ( (C!33409 (val!26406 Int)) )
))
(declare-datatypes ((Regex!16569 0))(
  ( (ElementMatch!16569 (c!1250577 C!33408)) (Concat!25414 (regOne!33650 Regex!16569) (regTwo!33650 Regex!16569)) (EmptyExpr!16569) (Star!16569 (reg!16898 Regex!16569)) (EmptyLang!16569) (Union!16569 (regOne!33651 Regex!16569) (regTwo!33651 Regex!16569)) )
))
(declare-datatypes ((List!66006 0))(
  ( (Nil!65882) (Cons!65882 (h!72330 Regex!16569) (t!379705 List!66006)) )
))
(declare-datatypes ((Context!11906 0))(
  ( (Context!11907 (exprs!6453 List!66006)) )
))
(declare-fun lt!2439205 () (InoxSet Context!11906))

(declare-fun lt!2439190 () (InoxSet Context!11906))

(assert (=> b!6741533 (= res!2757580 (not (= lt!2439205 lt!2439190)))))

(declare-fun r!7292 () Regex!16569)

(declare-datatypes ((List!66007 0))(
  ( (Nil!65883) (Cons!65883 (h!72331 C!33408) (t!379706 List!66007)) )
))
(declare-fun s!2326 () List!66007)

(declare-fun derivationStepZipperDown!1797 (Regex!16569 Context!11906 C!33408) (InoxSet Context!11906))

(assert (=> b!6741533 (= lt!2439190 (derivationStepZipperDown!1797 r!7292 (Context!11907 Nil!65882) (h!72331 s!2326)))))

(declare-fun derivationStepZipperUp!1723 (Context!11906 C!33408) (InoxSet Context!11906))

(assert (=> b!6741533 (= lt!2439205 (derivationStepZipperUp!1723 (Context!11907 (Cons!65882 r!7292 Nil!65882)) (h!72331 s!2326)))))

(declare-fun lt!2439195 () (InoxSet Context!11906))

(declare-fun z!1189 () (InoxSet Context!11906))

(declare-fun derivationStepZipper!2513 ((InoxSet Context!11906) C!33408) (InoxSet Context!11906))

(assert (=> b!6741533 (= lt!2439195 (derivationStepZipper!2513 z!1189 (h!72331 s!2326)))))

(declare-fun e!4072021 () Bool)

(assert (=> b!6741534 (= e!4072021 e!4072024)))

(declare-fun res!2757572 () Bool)

(assert (=> b!6741534 (=> res!2757572 e!4072024)))

(declare-fun lt!2439192 () Bool)

(declare-fun e!4072026 () Bool)

(assert (=> b!6741534 (= res!2757572 (not (= lt!2439192 e!4072026)))))

(declare-fun res!2757583 () Bool)

(assert (=> b!6741534 (=> res!2757583 e!4072026)))

(declare-fun isEmpty!38225 (List!66007) Bool)

(assert (=> b!6741534 (= res!2757583 (isEmpty!38225 s!2326))))

(declare-fun Exists!3637 (Int) Bool)

(assert (=> b!6741534 (= (Exists!3637 lambda!378742) (Exists!3637 lambda!378744))))

(declare-datatypes ((Unit!159829 0))(
  ( (Unit!159830) )
))
(declare-fun lt!2439196 () Unit!159829)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2164 (Regex!16569 Regex!16569 List!66007) Unit!159829)

(assert (=> b!6741534 (= lt!2439196 (lemmaExistCutMatchRandMatchRSpecEquivalent!2164 (reg!16898 r!7292) r!7292 s!2326))))

(assert (=> b!6741534 (= (Exists!3637 lambda!378742) (Exists!3637 lambda!378743))))

(declare-fun lt!2439183 () Unit!159829)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!728 (Regex!16569 List!66007) Unit!159829)

(assert (=> b!6741534 (= lt!2439183 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!728 (reg!16898 r!7292) s!2326))))

(declare-fun lt!2439206 () Bool)

(assert (=> b!6741534 (= lt!2439206 (Exists!3637 lambda!378742))))

(declare-datatypes ((tuple2!67088 0))(
  ( (tuple2!67089 (_1!36847 List!66007) (_2!36847 List!66007)) )
))
(declare-datatypes ((Option!16456 0))(
  ( (None!16455) (Some!16455 (v!52655 tuple2!67088)) )
))
(declare-fun isDefined!13159 (Option!16456) Bool)

(declare-fun findConcatSeparation!2870 (Regex!16569 Regex!16569 List!66007 List!66007 List!66007) Option!16456)

(assert (=> b!6741534 (= lt!2439206 (isDefined!13159 (findConcatSeparation!2870 (reg!16898 r!7292) r!7292 Nil!65883 s!2326 s!2326)))))

(declare-fun lt!2439200 () Unit!159829)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2634 (Regex!16569 Regex!16569 List!66007) Unit!159829)

(assert (=> b!6741534 (= lt!2439200 (lemmaFindConcatSeparationEquivalentToExists!2634 (reg!16898 r!7292) r!7292 s!2326))))

(declare-fun b!6741535 () Bool)

(declare-fun res!2757582 () Bool)

(assert (=> b!6741535 (=> res!2757582 e!4072021)))

(get-info :version)

(assert (=> b!6741535 (= res!2757582 (or ((_ is EmptyExpr!16569) r!7292) ((_ is EmptyLang!16569) r!7292) ((_ is ElementMatch!16569) r!7292) ((_ is Union!16569) r!7292) ((_ is Concat!25414) r!7292)))))

(declare-fun b!6741536 () Bool)

(declare-fun res!2757565 () Bool)

(declare-fun e!4072016 () Bool)

(assert (=> b!6741536 (=> res!2757565 e!4072016)))

(declare-fun lt!2439198 () Context!11906)

(declare-datatypes ((List!66008 0))(
  ( (Nil!65884) (Cons!65884 (h!72332 Context!11906) (t!379707 List!66008)) )
))
(declare-fun unfocusZipper!2311 (List!66008) Regex!16569)

(assert (=> b!6741536 (= res!2757565 (not (= (unfocusZipper!2311 (Cons!65884 lt!2439198 Nil!65884)) (Concat!25414 (reg!16898 r!7292) r!7292))))))

(declare-fun b!6741537 () Bool)

(declare-fun e!4072023 () Bool)

(assert (=> b!6741537 (= e!4072016 e!4072023)))

(declare-fun res!2757571 () Bool)

(assert (=> b!6741537 (=> res!2757571 e!4072023)))

(declare-fun lt!2439203 () (InoxSet Context!11906))

(assert (=> b!6741537 (= res!2757571 (not (= lt!2439195 (derivationStepZipper!2513 lt!2439203 (h!72331 s!2326)))))))

(declare-fun lt!2439184 () Context!11906)

(declare-fun lambda!378745 () Int)

(declare-fun flatMap!2050 ((InoxSet Context!11906) Int) (InoxSet Context!11906))

(assert (=> b!6741537 (= (flatMap!2050 lt!2439203 lambda!378745) (derivationStepZipperUp!1723 lt!2439184 (h!72331 s!2326)))))

(declare-fun lt!2439197 () Unit!159829)

(declare-fun lemmaFlatMapOnSingletonSet!1576 ((InoxSet Context!11906) Context!11906 Int) Unit!159829)

(assert (=> b!6741537 (= lt!2439197 (lemmaFlatMapOnSingletonSet!1576 lt!2439203 lt!2439184 lambda!378745))))

(declare-fun lt!2439201 () (InoxSet Context!11906))

(declare-fun lt!2439204 () Context!11906)

(assert (=> b!6741537 (= (flatMap!2050 lt!2439201 lambda!378745) (derivationStepZipperUp!1723 lt!2439204 (h!72331 s!2326)))))

(declare-fun lt!2439186 () Unit!159829)

(assert (=> b!6741537 (= lt!2439186 (lemmaFlatMapOnSingletonSet!1576 lt!2439201 lt!2439204 lambda!378745))))

(declare-fun lt!2439193 () (InoxSet Context!11906))

(assert (=> b!6741537 (= lt!2439193 (derivationStepZipperUp!1723 lt!2439184 (h!72331 s!2326)))))

(declare-fun lt!2439194 () (InoxSet Context!11906))

(assert (=> b!6741537 (= lt!2439194 (derivationStepZipperUp!1723 lt!2439204 (h!72331 s!2326)))))

(assert (=> b!6741537 (= lt!2439203 (store ((as const (Array Context!11906 Bool)) false) lt!2439184 true))))

(assert (=> b!6741537 (= lt!2439201 (store ((as const (Array Context!11906 Bool)) false) lt!2439204 true))))

(assert (=> b!6741537 (= lt!2439204 (Context!11907 (Cons!65882 (reg!16898 r!7292) Nil!65882)))))

(declare-fun b!6741538 () Bool)

(declare-fun res!2757567 () Bool)

(assert (=> b!6741538 (=> res!2757567 e!4072016)))

(declare-fun lt!2439202 () Regex!16569)

(assert (=> b!6741538 (= res!2757567 (or (not (= lt!2439202 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun b!6741539 () Bool)

(assert (=> b!6741539 (= e!4072026 lt!2439206)))

(declare-fun b!6741541 () Bool)

(declare-fun res!2757577 () Bool)

(assert (=> b!6741541 (=> res!2757577 e!4072021)))

(declare-fun zl!343 () List!66008)

(declare-fun generalisedConcat!2166 (List!66006) Regex!16569)

(assert (=> b!6741541 (= res!2757577 (not (= r!7292 (generalisedConcat!2166 (exprs!6453 (h!72332 zl!343))))))))

(declare-fun b!6741542 () Bool)

(declare-fun e!4072022 () Bool)

(declare-fun tp!1848160 () Bool)

(declare-fun tp!1848163 () Bool)

(assert (=> b!6741542 (= e!4072022 (and tp!1848160 tp!1848163))))

(declare-fun b!6741543 () Bool)

(declare-fun e!4072019 () Bool)

(assert (=> b!6741543 (= e!4072019 (not e!4072021))))

(declare-fun res!2757579 () Bool)

(assert (=> b!6741543 (=> res!2757579 e!4072021)))

(assert (=> b!6741543 (= res!2757579 (not ((_ is Cons!65884) zl!343)))))

(declare-fun matchRSpec!3670 (Regex!16569 List!66007) Bool)

(assert (=> b!6741543 (= lt!2439192 (matchRSpec!3670 r!7292 s!2326))))

(declare-fun matchR!8752 (Regex!16569 List!66007) Bool)

(assert (=> b!6741543 (= lt!2439192 (matchR!8752 r!7292 s!2326))))

(declare-fun lt!2439189 () Unit!159829)

(declare-fun mainMatchTheorem!3670 (Regex!16569 List!66007) Unit!159829)

(assert (=> b!6741543 (= lt!2439189 (mainMatchTheorem!3670 r!7292 s!2326))))

(declare-fun e!4072018 () Bool)

(assert (=> b!6741544 (= e!4072020 e!4072018)))

(declare-fun res!2757569 () Bool)

(assert (=> b!6741544 (=> res!2757569 e!4072018)))

(assert (=> b!6741544 (= res!2757569 (not (= lt!2439195 lt!2439190)))))

(assert (=> b!6741544 (= (flatMap!2050 z!1189 lambda!378745) (derivationStepZipperUp!1723 (h!72332 zl!343) (h!72331 s!2326)))))

(declare-fun lt!2439185 () Unit!159829)

(assert (=> b!6741544 (= lt!2439185 (lemmaFlatMapOnSingletonSet!1576 z!1189 (h!72332 zl!343) lambda!378745))))

(declare-fun b!6741545 () Bool)

(declare-fun res!2757573 () Bool)

(assert (=> b!6741545 (=> res!2757573 e!4072021)))

(declare-fun isEmpty!38226 (List!66008) Bool)

(assert (=> b!6741545 (= res!2757573 (not (isEmpty!38226 (t!379707 zl!343))))))

(declare-fun b!6741546 () Bool)

(declare-fun e!4072013 () Bool)

(declare-fun tp!1848162 () Bool)

(assert (=> b!6741546 (= e!4072013 tp!1848162)))

(declare-fun b!6741547 () Bool)

(declare-fun tp_is_empty!42391 () Bool)

(assert (=> b!6741547 (= e!4072022 tp_is_empty!42391)))

(declare-fun setIsEmpty!46037 () Bool)

(declare-fun setRes!46037 () Bool)

(assert (=> setIsEmpty!46037 setRes!46037))

(declare-fun b!6741548 () Bool)

(declare-fun res!2757575 () Bool)

(assert (=> b!6741548 (=> res!2757575 e!4072023)))

(assert (=> b!6741548 (= res!2757575 (not (= (unfocusZipper!2311 (Cons!65884 lt!2439204 Nil!65884)) (reg!16898 r!7292))))))

(declare-fun b!6741549 () Bool)

(declare-fun res!2757581 () Bool)

(assert (=> b!6741549 (=> res!2757581 e!4072016)))

(declare-fun lt!2439191 () (InoxSet Context!11906))

(declare-fun matchZipper!2555 ((InoxSet Context!11906) List!66007) Bool)

(assert (=> b!6741549 (= res!2757581 (not (= (matchZipper!2555 lt!2439191 s!2326) (matchZipper!2555 (derivationStepZipper!2513 lt!2439191 (h!72331 s!2326)) (t!379706 s!2326)))))))

(declare-fun tp!1848161 () Bool)

(declare-fun setNonEmpty!46037 () Bool)

(declare-fun setElem!46037 () Context!11906)

(declare-fun inv!84669 (Context!11906) Bool)

(assert (=> setNonEmpty!46037 (= setRes!46037 (and tp!1848161 (inv!84669 setElem!46037) e!4072013))))

(declare-fun setRest!46037 () (InoxSet Context!11906))

(assert (=> setNonEmpty!46037 (= z!1189 ((_ map or) (store ((as const (Array Context!11906 Bool)) false) setElem!46037 true) setRest!46037))))

(declare-fun b!6741550 () Bool)

(declare-fun e!4072015 () Bool)

(declare-fun tp!1848164 () Bool)

(assert (=> b!6741550 (= e!4072015 (and tp_is_empty!42391 tp!1848164))))

(declare-fun tp!1848156 () Bool)

(declare-fun b!6741551 () Bool)

(declare-fun e!4072017 () Bool)

(assert (=> b!6741551 (= e!4072017 (and (inv!84669 (h!72332 zl!343)) e!4072014 tp!1848156))))

(declare-fun b!6741552 () Bool)

(declare-fun res!2757566 () Bool)

(assert (=> b!6741552 (=> res!2757566 e!4072021)))

(assert (=> b!6741552 (= res!2757566 (not ((_ is Cons!65882) (exprs!6453 (h!72332 zl!343)))))))

(declare-fun b!6741553 () Bool)

(declare-fun res!2757576 () Bool)

(declare-fun e!4072025 () Bool)

(assert (=> b!6741553 (=> (not res!2757576) (not e!4072025))))

(declare-fun toList!10353 ((InoxSet Context!11906)) List!66008)

(assert (=> b!6741553 (= res!2757576 (= (toList!10353 z!1189) zl!343))))

(declare-fun res!2757570 () Bool)

(assert (=> start!653880 (=> (not res!2757570) (not e!4072025))))

(declare-fun validRegex!8305 (Regex!16569) Bool)

(assert (=> start!653880 (= res!2757570 (validRegex!8305 r!7292))))

(assert (=> start!653880 e!4072025))

(assert (=> start!653880 e!4072022))

(declare-fun condSetEmpty!46037 () Bool)

(assert (=> start!653880 (= condSetEmpty!46037 (= z!1189 ((as const (Array Context!11906 Bool)) false)))))

(assert (=> start!653880 setRes!46037))

(assert (=> start!653880 e!4072017))

(assert (=> start!653880 e!4072015))

(declare-fun b!6741540 () Bool)

(declare-fun res!2757574 () Bool)

(assert (=> b!6741540 (=> res!2757574 e!4072024)))

(assert (=> b!6741540 (= res!2757574 ((_ is Nil!65883) s!2326))))

(declare-fun b!6741554 () Bool)

(assert (=> b!6741554 (= e!4072018 e!4072016)))

(declare-fun res!2757568 () Bool)

(assert (=> b!6741554 (=> res!2757568 e!4072016)))

(assert (=> b!6741554 (= res!2757568 (not (= lt!2439195 (derivationStepZipperDown!1797 (reg!16898 r!7292) lt!2439184 (h!72331 s!2326)))))))

(declare-fun lt!2439188 () List!66006)

(assert (=> b!6741554 (= lt!2439184 (Context!11907 lt!2439188))))

(assert (=> b!6741554 (= (flatMap!2050 lt!2439191 lambda!378745) (derivationStepZipperUp!1723 lt!2439198 (h!72331 s!2326)))))

(declare-fun lt!2439187 () Unit!159829)

(assert (=> b!6741554 (= lt!2439187 (lemmaFlatMapOnSingletonSet!1576 lt!2439191 lt!2439198 lambda!378745))))

(declare-fun lt!2439199 () (InoxSet Context!11906))

(assert (=> b!6741554 (= lt!2439199 (derivationStepZipperUp!1723 lt!2439198 (h!72331 s!2326)))))

(assert (=> b!6741554 (= lt!2439191 (store ((as const (Array Context!11906 Bool)) false) lt!2439198 true))))

(assert (=> b!6741554 (= lt!2439198 (Context!11907 (Cons!65882 (reg!16898 r!7292) lt!2439188)))))

(assert (=> b!6741554 (= lt!2439188 (Cons!65882 r!7292 Nil!65882))))

(declare-fun b!6741555 () Bool)

(declare-fun res!2757578 () Bool)

(assert (=> b!6741555 (=> res!2757578 e!4072021)))

(declare-fun generalisedUnion!2413 (List!66006) Regex!16569)

(declare-fun unfocusZipperList!1990 (List!66008) List!66006)

(assert (=> b!6741555 (= res!2757578 (not (= r!7292 (generalisedUnion!2413 (unfocusZipperList!1990 zl!343)))))))

(declare-fun b!6741556 () Bool)

(declare-fun tp!1848158 () Bool)

(declare-fun tp!1848159 () Bool)

(assert (=> b!6741556 (= e!4072022 (and tp!1848158 tp!1848159))))

(declare-fun b!6741557 () Bool)

(assert (=> b!6741557 (= e!4072025 e!4072019)))

(declare-fun res!2757584 () Bool)

(assert (=> b!6741557 (=> (not res!2757584) (not e!4072019))))

(assert (=> b!6741557 (= res!2757584 (= r!7292 lt!2439202))))

(assert (=> b!6741557 (= lt!2439202 (unfocusZipper!2311 zl!343))))

(declare-fun b!6741558 () Bool)

(assert (=> b!6741558 (= e!4072023 (inv!84669 lt!2439184))))

(declare-fun b!6741559 () Bool)

(declare-fun tp!1848157 () Bool)

(assert (=> b!6741559 (= e!4072022 tp!1848157)))

(assert (= (and start!653880 res!2757570) b!6741553))

(assert (= (and b!6741553 res!2757576) b!6741557))

(assert (= (and b!6741557 res!2757584) b!6741543))

(assert (= (and b!6741543 (not res!2757579)) b!6741545))

(assert (= (and b!6741545 (not res!2757573)) b!6741541))

(assert (= (and b!6741541 (not res!2757577)) b!6741552))

(assert (= (and b!6741552 (not res!2757566)) b!6741555))

(assert (= (and b!6741555 (not res!2757578)) b!6741535))

(assert (= (and b!6741535 (not res!2757582)) b!6741534))

(assert (= (and b!6741534 (not res!2757583)) b!6741539))

(assert (= (and b!6741534 (not res!2757572)) b!6741540))

(assert (= (and b!6741540 (not res!2757574)) b!6741533))

(assert (= (and b!6741533 (not res!2757580)) b!6741544))

(assert (= (and b!6741544 (not res!2757569)) b!6741554))

(assert (= (and b!6741554 (not res!2757568)) b!6741549))

(assert (= (and b!6741549 (not res!2757581)) b!6741538))

(assert (= (and b!6741538 (not res!2757567)) b!6741536))

(assert (= (and b!6741536 (not res!2757565)) b!6741537))

(assert (= (and b!6741537 (not res!2757571)) b!6741548))

(assert (= (and b!6741548 (not res!2757575)) b!6741558))

(assert (= (and start!653880 ((_ is ElementMatch!16569) r!7292)) b!6741547))

(assert (= (and start!653880 ((_ is Concat!25414) r!7292)) b!6741542))

(assert (= (and start!653880 ((_ is Star!16569) r!7292)) b!6741559))

(assert (= (and start!653880 ((_ is Union!16569) r!7292)) b!6741556))

(assert (= (and start!653880 condSetEmpty!46037) setIsEmpty!46037))

(assert (= (and start!653880 (not condSetEmpty!46037)) setNonEmpty!46037))

(assert (= setNonEmpty!46037 b!6741546))

(assert (= b!6741551 b!6741532))

(assert (= (and start!653880 ((_ is Cons!65884) zl!343)) b!6741551))

(assert (= (and start!653880 ((_ is Cons!65883) s!2326)) b!6741550))

(declare-fun m!7497922 () Bool)

(assert (=> b!6741553 m!7497922))

(declare-fun m!7497924 () Bool)

(assert (=> b!6741555 m!7497924))

(assert (=> b!6741555 m!7497924))

(declare-fun m!7497926 () Bool)

(assert (=> b!6741555 m!7497926))

(declare-fun m!7497928 () Bool)

(assert (=> start!653880 m!7497928))

(declare-fun m!7497930 () Bool)

(assert (=> b!6741543 m!7497930))

(declare-fun m!7497932 () Bool)

(assert (=> b!6741543 m!7497932))

(declare-fun m!7497934 () Bool)

(assert (=> b!6741543 m!7497934))

(declare-fun m!7497936 () Bool)

(assert (=> b!6741536 m!7497936))

(declare-fun m!7497938 () Bool)

(assert (=> b!6741541 m!7497938))

(declare-fun m!7497940 () Bool)

(assert (=> setNonEmpty!46037 m!7497940))

(declare-fun m!7497942 () Bool)

(assert (=> b!6741557 m!7497942))

(declare-fun m!7497944 () Bool)

(assert (=> b!6741554 m!7497944))

(declare-fun m!7497946 () Bool)

(assert (=> b!6741554 m!7497946))

(declare-fun m!7497948 () Bool)

(assert (=> b!6741554 m!7497948))

(declare-fun m!7497950 () Bool)

(assert (=> b!6741554 m!7497950))

(declare-fun m!7497952 () Bool)

(assert (=> b!6741554 m!7497952))

(declare-fun m!7497954 () Bool)

(assert (=> b!6741548 m!7497954))

(declare-fun m!7497956 () Bool)

(assert (=> b!6741545 m!7497956))

(declare-fun m!7497958 () Bool)

(assert (=> b!6741544 m!7497958))

(declare-fun m!7497960 () Bool)

(assert (=> b!6741544 m!7497960))

(declare-fun m!7497962 () Bool)

(assert (=> b!6741544 m!7497962))

(declare-fun m!7497964 () Bool)

(assert (=> b!6741551 m!7497964))

(declare-fun m!7497966 () Bool)

(assert (=> b!6741533 m!7497966))

(declare-fun m!7497968 () Bool)

(assert (=> b!6741533 m!7497968))

(declare-fun m!7497970 () Bool)

(assert (=> b!6741533 m!7497970))

(declare-fun m!7497972 () Bool)

(assert (=> b!6741558 m!7497972))

(declare-fun m!7497974 () Bool)

(assert (=> b!6741534 m!7497974))

(declare-fun m!7497976 () Bool)

(assert (=> b!6741534 m!7497976))

(declare-fun m!7497978 () Bool)

(assert (=> b!6741534 m!7497978))

(declare-fun m!7497980 () Bool)

(assert (=> b!6741534 m!7497980))

(declare-fun m!7497982 () Bool)

(assert (=> b!6741534 m!7497982))

(declare-fun m!7497984 () Bool)

(assert (=> b!6741534 m!7497984))

(assert (=> b!6741534 m!7497976))

(assert (=> b!6741534 m!7497984))

(declare-fun m!7497986 () Bool)

(assert (=> b!6741534 m!7497986))

(declare-fun m!7497988 () Bool)

(assert (=> b!6741534 m!7497988))

(assert (=> b!6741534 m!7497976))

(declare-fun m!7497990 () Bool)

(assert (=> b!6741534 m!7497990))

(declare-fun m!7497992 () Bool)

(assert (=> b!6741537 m!7497992))

(declare-fun m!7497994 () Bool)

(assert (=> b!6741537 m!7497994))

(declare-fun m!7497996 () Bool)

(assert (=> b!6741537 m!7497996))

(declare-fun m!7497998 () Bool)

(assert (=> b!6741537 m!7497998))

(declare-fun m!7498000 () Bool)

(assert (=> b!6741537 m!7498000))

(declare-fun m!7498002 () Bool)

(assert (=> b!6741537 m!7498002))

(declare-fun m!7498004 () Bool)

(assert (=> b!6741537 m!7498004))

(declare-fun m!7498006 () Bool)

(assert (=> b!6741537 m!7498006))

(declare-fun m!7498008 () Bool)

(assert (=> b!6741537 m!7498008))

(declare-fun m!7498010 () Bool)

(assert (=> b!6741549 m!7498010))

(declare-fun m!7498012 () Bool)

(assert (=> b!6741549 m!7498012))

(assert (=> b!6741549 m!7498012))

(declare-fun m!7498014 () Bool)

(assert (=> b!6741549 m!7498014))

(check-sat (not b!6741558) (not b!6741542) (not b!6741557) (not b!6741537) (not b!6741543) (not b!6741555) (not start!653880) (not b!6741536) (not b!6741549) (not b!6741546) (not b!6741544) (not b!6741559) (not b!6741533) (not b!6741553) (not setNonEmpty!46037) (not b!6741548) (not b!6741556) (not b!6741534) (not b!6741545) (not b!6741554) (not b!6741532) (not b!6741550) (not b!6741551) (not b!6741541) tp_is_empty!42391)
(check-sat)
(get-model)

(declare-fun d!2118168 () Bool)

(declare-fun choose!50252 (Int) Bool)

(assert (=> d!2118168 (= (Exists!3637 lambda!378744) (choose!50252 lambda!378744))))

(declare-fun bs!1792518 () Bool)

(assert (= bs!1792518 d!2118168))

(declare-fun m!7498020 () Bool)

(assert (=> bs!1792518 m!7498020))

(assert (=> b!6741534 d!2118168))

(declare-fun d!2118170 () Bool)

(declare-fun isEmpty!38227 (Option!16456) Bool)

(assert (=> d!2118170 (= (isDefined!13159 (findConcatSeparation!2870 (reg!16898 r!7292) r!7292 Nil!65883 s!2326 s!2326)) (not (isEmpty!38227 (findConcatSeparation!2870 (reg!16898 r!7292) r!7292 Nil!65883 s!2326 s!2326))))))

(declare-fun bs!1792519 () Bool)

(assert (= bs!1792519 d!2118170))

(assert (=> bs!1792519 m!7497984))

(declare-fun m!7498022 () Bool)

(assert (=> bs!1792519 m!7498022))

(assert (=> b!6741534 d!2118170))

(declare-fun bs!1792522 () Bool)

(declare-fun d!2118172 () Bool)

(assert (= bs!1792522 (and d!2118172 b!6741534)))

(declare-fun lambda!378756 () Int)

(assert (=> bs!1792522 (= lambda!378756 lambda!378742)))

(assert (=> bs!1792522 (not (= lambda!378756 lambda!378743))))

(assert (=> bs!1792522 (not (= lambda!378756 lambda!378744))))

(assert (=> d!2118172 true))

(assert (=> d!2118172 true))

(assert (=> d!2118172 true))

(declare-fun lambda!378757 () Int)

(assert (=> bs!1792522 (not (= lambda!378757 lambda!378742))))

(assert (=> bs!1792522 (not (= lambda!378757 lambda!378743))))

(assert (=> bs!1792522 (= lambda!378757 lambda!378744)))

(declare-fun bs!1792523 () Bool)

(assert (= bs!1792523 d!2118172))

(assert (=> bs!1792523 (not (= lambda!378757 lambda!378756))))

(assert (=> d!2118172 true))

(assert (=> d!2118172 true))

(assert (=> d!2118172 true))

(assert (=> d!2118172 (= (Exists!3637 lambda!378756) (Exists!3637 lambda!378757))))

(declare-fun lt!2439212 () Unit!159829)

(declare-fun choose!50253 (Regex!16569 Regex!16569 List!66007) Unit!159829)

(assert (=> d!2118172 (= lt!2439212 (choose!50253 (reg!16898 r!7292) r!7292 s!2326))))

(assert (=> d!2118172 (validRegex!8305 (reg!16898 r!7292))))

(assert (=> d!2118172 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2164 (reg!16898 r!7292) r!7292 s!2326) lt!2439212)))

(declare-fun m!7498042 () Bool)

(assert (=> bs!1792523 m!7498042))

(declare-fun m!7498044 () Bool)

(assert (=> bs!1792523 m!7498044))

(declare-fun m!7498046 () Bool)

(assert (=> bs!1792523 m!7498046))

(declare-fun m!7498048 () Bool)

(assert (=> bs!1792523 m!7498048))

(assert (=> b!6741534 d!2118172))

(declare-fun bs!1792525 () Bool)

(declare-fun d!2118180 () Bool)

(assert (= bs!1792525 (and d!2118180 d!2118172)))

(declare-fun lambda!378765 () Int)

(assert (=> bs!1792525 (not (= lambda!378765 lambda!378757))))

(declare-fun bs!1792526 () Bool)

(assert (= bs!1792526 (and d!2118180 b!6741534)))

(assert (=> bs!1792526 (not (= lambda!378765 lambda!378744))))

(assert (=> bs!1792526 (not (= lambda!378765 lambda!378743))))

(assert (=> bs!1792525 (= (= (Star!16569 (reg!16898 r!7292)) r!7292) (= lambda!378765 lambda!378756))))

(assert (=> bs!1792526 (= (= (Star!16569 (reg!16898 r!7292)) r!7292) (= lambda!378765 lambda!378742))))

(assert (=> d!2118180 true))

(assert (=> d!2118180 true))

(declare-fun lambda!378767 () Int)

(assert (=> bs!1792525 (not (= lambda!378767 lambda!378757))))

(assert (=> bs!1792526 (not (= lambda!378767 lambda!378744))))

(assert (=> bs!1792526 (= (= (Star!16569 (reg!16898 r!7292)) r!7292) (= lambda!378767 lambda!378743))))

(assert (=> bs!1792525 (not (= lambda!378767 lambda!378756))))

(declare-fun bs!1792530 () Bool)

(assert (= bs!1792530 d!2118180))

(assert (=> bs!1792530 (not (= lambda!378767 lambda!378765))))

(assert (=> bs!1792526 (not (= lambda!378767 lambda!378742))))

(assert (=> d!2118180 true))

(assert (=> d!2118180 true))

(assert (=> d!2118180 (= (Exists!3637 lambda!378765) (Exists!3637 lambda!378767))))

(declare-fun lt!2439218 () Unit!159829)

(declare-fun choose!50254 (Regex!16569 List!66007) Unit!159829)

(assert (=> d!2118180 (= lt!2439218 (choose!50254 (reg!16898 r!7292) s!2326))))

(assert (=> d!2118180 (validRegex!8305 (reg!16898 r!7292))))

(assert (=> d!2118180 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!728 (reg!16898 r!7292) s!2326) lt!2439218)))

(declare-fun m!7498078 () Bool)

(assert (=> bs!1792530 m!7498078))

(declare-fun m!7498080 () Bool)

(assert (=> bs!1792530 m!7498080))

(declare-fun m!7498082 () Bool)

(assert (=> bs!1792530 m!7498082))

(assert (=> bs!1792530 m!7498048))

(assert (=> b!6741534 d!2118180))

(declare-fun d!2118188 () Bool)

(assert (=> d!2118188 (= (Exists!3637 lambda!378743) (choose!50252 lambda!378743))))

(declare-fun bs!1792531 () Bool)

(assert (= bs!1792531 d!2118188))

(declare-fun m!7498084 () Bool)

(assert (=> bs!1792531 m!7498084))

(assert (=> b!6741534 d!2118188))

(declare-fun d!2118190 () Bool)

(assert (=> d!2118190 (= (isEmpty!38225 s!2326) ((_ is Nil!65883) s!2326))))

(assert (=> b!6741534 d!2118190))

(declare-fun d!2118192 () Bool)

(assert (=> d!2118192 (= (Exists!3637 lambda!378742) (choose!50252 lambda!378742))))

(declare-fun bs!1792532 () Bool)

(assert (= bs!1792532 d!2118192))

(declare-fun m!7498086 () Bool)

(assert (=> bs!1792532 m!7498086))

(assert (=> b!6741534 d!2118192))

(declare-fun b!6741752 () Bool)

(declare-fun e!4072138 () Option!16456)

(assert (=> b!6741752 (= e!4072138 (Some!16455 (tuple2!67089 Nil!65883 s!2326)))))

(declare-fun b!6741753 () Bool)

(declare-fun e!4072139 () Bool)

(declare-fun lt!2439225 () Option!16456)

(declare-fun ++!14724 (List!66007 List!66007) List!66007)

(declare-fun get!22924 (Option!16456) tuple2!67088)

(assert (=> b!6741753 (= e!4072139 (= (++!14724 (_1!36847 (get!22924 lt!2439225)) (_2!36847 (get!22924 lt!2439225))) s!2326))))

(declare-fun b!6741754 () Bool)

(declare-fun res!2757659 () Bool)

(assert (=> b!6741754 (=> (not res!2757659) (not e!4072139))))

(assert (=> b!6741754 (= res!2757659 (matchR!8752 r!7292 (_2!36847 (get!22924 lt!2439225))))))

(declare-fun b!6741755 () Bool)

(declare-fun e!4072140 () Bool)

(assert (=> b!6741755 (= e!4072140 (matchR!8752 r!7292 s!2326))))

(declare-fun d!2118194 () Bool)

(declare-fun e!4072136 () Bool)

(assert (=> d!2118194 e!4072136))

(declare-fun res!2757660 () Bool)

(assert (=> d!2118194 (=> res!2757660 e!4072136)))

(assert (=> d!2118194 (= res!2757660 e!4072139)))

(declare-fun res!2757662 () Bool)

(assert (=> d!2118194 (=> (not res!2757662) (not e!4072139))))

(assert (=> d!2118194 (= res!2757662 (isDefined!13159 lt!2439225))))

(assert (=> d!2118194 (= lt!2439225 e!4072138)))

(declare-fun c!1250635 () Bool)

(assert (=> d!2118194 (= c!1250635 e!4072140)))

(declare-fun res!2757661 () Bool)

(assert (=> d!2118194 (=> (not res!2757661) (not e!4072140))))

(assert (=> d!2118194 (= res!2757661 (matchR!8752 (reg!16898 r!7292) Nil!65883))))

(assert (=> d!2118194 (validRegex!8305 (reg!16898 r!7292))))

(assert (=> d!2118194 (= (findConcatSeparation!2870 (reg!16898 r!7292) r!7292 Nil!65883 s!2326 s!2326) lt!2439225)))

(declare-fun b!6741756 () Bool)

(declare-fun lt!2439226 () Unit!159829)

(declare-fun lt!2439227 () Unit!159829)

(assert (=> b!6741756 (= lt!2439226 lt!2439227)))

(assert (=> b!6741756 (= (++!14724 (++!14724 Nil!65883 (Cons!65883 (h!72331 s!2326) Nil!65883)) (t!379706 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2697 (List!66007 C!33408 List!66007 List!66007) Unit!159829)

(assert (=> b!6741756 (= lt!2439227 (lemmaMoveElementToOtherListKeepsConcatEq!2697 Nil!65883 (h!72331 s!2326) (t!379706 s!2326) s!2326))))

(declare-fun e!4072137 () Option!16456)

(assert (=> b!6741756 (= e!4072137 (findConcatSeparation!2870 (reg!16898 r!7292) r!7292 (++!14724 Nil!65883 (Cons!65883 (h!72331 s!2326) Nil!65883)) (t!379706 s!2326) s!2326))))

(declare-fun b!6741757 () Bool)

(declare-fun res!2757663 () Bool)

(assert (=> b!6741757 (=> (not res!2757663) (not e!4072139))))

(assert (=> b!6741757 (= res!2757663 (matchR!8752 (reg!16898 r!7292) (_1!36847 (get!22924 lt!2439225))))))

(declare-fun b!6741758 () Bool)

(assert (=> b!6741758 (= e!4072138 e!4072137)))

(declare-fun c!1250636 () Bool)

(assert (=> b!6741758 (= c!1250636 ((_ is Nil!65883) s!2326))))

(declare-fun b!6741759 () Bool)

(assert (=> b!6741759 (= e!4072136 (not (isDefined!13159 lt!2439225)))))

(declare-fun b!6741760 () Bool)

(assert (=> b!6741760 (= e!4072137 None!16455)))

(assert (= (and d!2118194 res!2757661) b!6741755))

(assert (= (and d!2118194 c!1250635) b!6741752))

(assert (= (and d!2118194 (not c!1250635)) b!6741758))

(assert (= (and b!6741758 c!1250636) b!6741760))

(assert (= (and b!6741758 (not c!1250636)) b!6741756))

(assert (= (and d!2118194 res!2757662) b!6741757))

(assert (= (and b!6741757 res!2757663) b!6741754))

(assert (= (and b!6741754 res!2757659) b!6741753))

(assert (= (and d!2118194 (not res!2757660)) b!6741759))

(declare-fun m!7498094 () Bool)

(assert (=> b!6741759 m!7498094))

(declare-fun m!7498096 () Bool)

(assert (=> b!6741757 m!7498096))

(declare-fun m!7498098 () Bool)

(assert (=> b!6741757 m!7498098))

(assert (=> b!6741753 m!7498096))

(declare-fun m!7498100 () Bool)

(assert (=> b!6741753 m!7498100))

(assert (=> b!6741754 m!7498096))

(declare-fun m!7498102 () Bool)

(assert (=> b!6741754 m!7498102))

(assert (=> b!6741755 m!7497932))

(declare-fun m!7498104 () Bool)

(assert (=> b!6741756 m!7498104))

(assert (=> b!6741756 m!7498104))

(declare-fun m!7498106 () Bool)

(assert (=> b!6741756 m!7498106))

(declare-fun m!7498108 () Bool)

(assert (=> b!6741756 m!7498108))

(assert (=> b!6741756 m!7498104))

(declare-fun m!7498110 () Bool)

(assert (=> b!6741756 m!7498110))

(assert (=> d!2118194 m!7498094))

(declare-fun m!7498112 () Bool)

(assert (=> d!2118194 m!7498112))

(assert (=> d!2118194 m!7498048))

(assert (=> b!6741534 d!2118194))

(declare-fun bs!1792536 () Bool)

(declare-fun d!2118198 () Bool)

(assert (= bs!1792536 (and d!2118198 d!2118172)))

(declare-fun lambda!378776 () Int)

(assert (=> bs!1792536 (not (= lambda!378776 lambda!378757))))

(declare-fun bs!1792537 () Bool)

(assert (= bs!1792537 (and d!2118198 b!6741534)))

(assert (=> bs!1792537 (not (= lambda!378776 lambda!378744))))

(assert (=> bs!1792537 (not (= lambda!378776 lambda!378743))))

(assert (=> bs!1792536 (= lambda!378776 lambda!378756)))

(declare-fun bs!1792538 () Bool)

(assert (= bs!1792538 (and d!2118198 d!2118180)))

(assert (=> bs!1792538 (not (= lambda!378776 lambda!378767))))

(assert (=> bs!1792538 (= (= r!7292 (Star!16569 (reg!16898 r!7292))) (= lambda!378776 lambda!378765))))

(assert (=> bs!1792537 (= lambda!378776 lambda!378742)))

(assert (=> d!2118198 true))

(assert (=> d!2118198 true))

(assert (=> d!2118198 true))

(assert (=> d!2118198 (= (isDefined!13159 (findConcatSeparation!2870 (reg!16898 r!7292) r!7292 Nil!65883 s!2326 s!2326)) (Exists!3637 lambda!378776))))

(declare-fun lt!2439232 () Unit!159829)

(declare-fun choose!50255 (Regex!16569 Regex!16569 List!66007) Unit!159829)

(assert (=> d!2118198 (= lt!2439232 (choose!50255 (reg!16898 r!7292) r!7292 s!2326))))

(assert (=> d!2118198 (validRegex!8305 (reg!16898 r!7292))))

(assert (=> d!2118198 (= (lemmaFindConcatSeparationEquivalentToExists!2634 (reg!16898 r!7292) r!7292 s!2326) lt!2439232)))

(declare-fun bs!1792539 () Bool)

(assert (= bs!1792539 d!2118198))

(assert (=> bs!1792539 m!7498048))

(declare-fun m!7498114 () Bool)

(assert (=> bs!1792539 m!7498114))

(declare-fun m!7498116 () Bool)

(assert (=> bs!1792539 m!7498116))

(assert (=> bs!1792539 m!7497984))

(assert (=> bs!1792539 m!7497986))

(assert (=> bs!1792539 m!7497984))

(assert (=> b!6741534 d!2118198))

(declare-fun d!2118200 () Bool)

(declare-fun e!4072166 () Bool)

(assert (=> d!2118200 e!4072166))

(declare-fun res!2757694 () Bool)

(assert (=> d!2118200 (=> (not res!2757694) (not e!4072166))))

(declare-fun lt!2439236 () List!66008)

(declare-fun noDuplicate!2361 (List!66008) Bool)

(assert (=> d!2118200 (= res!2757694 (noDuplicate!2361 lt!2439236))))

(declare-fun choose!50256 ((InoxSet Context!11906)) List!66008)

(assert (=> d!2118200 (= lt!2439236 (choose!50256 z!1189))))

(assert (=> d!2118200 (= (toList!10353 z!1189) lt!2439236)))

(declare-fun b!6741809 () Bool)

(declare-fun content!12806 (List!66008) (InoxSet Context!11906))

(assert (=> b!6741809 (= e!4072166 (= (content!12806 lt!2439236) z!1189))))

(assert (= (and d!2118200 res!2757694) b!6741809))

(declare-fun m!7498130 () Bool)

(assert (=> d!2118200 m!7498130))

(declare-fun m!7498132 () Bool)

(assert (=> d!2118200 m!7498132))

(declare-fun m!7498134 () Bool)

(assert (=> b!6741809 m!7498134))

(assert (=> b!6741553 d!2118200))

(declare-fun b!6741842 () Bool)

(declare-fun e!4072190 () Bool)

(declare-fun nullable!6556 (Regex!16569) Bool)

(assert (=> b!6741842 (= e!4072190 (nullable!6556 (regOne!33650 (reg!16898 r!7292))))))

(declare-fun b!6741843 () Bool)

(declare-fun e!4072187 () (InoxSet Context!11906))

(declare-fun call!609496 () (InoxSet Context!11906))

(declare-fun call!609492 () (InoxSet Context!11906))

(assert (=> b!6741843 (= e!4072187 ((_ map or) call!609496 call!609492))))

(declare-fun b!6741844 () Bool)

(declare-fun e!4072189 () (InoxSet Context!11906))

(assert (=> b!6741844 (= e!4072189 (store ((as const (Array Context!11906 Bool)) false) lt!2439184 true))))

(declare-fun b!6741845 () Bool)

(declare-fun e!4072188 () (InoxSet Context!11906))

(declare-fun call!609494 () (InoxSet Context!11906))

(assert (=> b!6741845 (= e!4072188 call!609494)))

(declare-fun bm!609486 () Bool)

(declare-fun call!609491 () List!66006)

(declare-fun call!609493 () List!66006)

(assert (=> bm!609486 (= call!609491 call!609493)))

(declare-fun b!6741846 () Bool)

(declare-fun c!1250664 () Bool)

(assert (=> b!6741846 (= c!1250664 e!4072190)))

(declare-fun res!2757699 () Bool)

(assert (=> b!6741846 (=> (not res!2757699) (not e!4072190))))

(assert (=> b!6741846 (= res!2757699 ((_ is Concat!25414) (reg!16898 r!7292)))))

(declare-fun e!4072185 () (InoxSet Context!11906))

(assert (=> b!6741846 (= e!4072185 e!4072187)))

(declare-fun b!6741847 () Bool)

(assert (=> b!6741847 (= e!4072187 e!4072188)))

(declare-fun c!1250660 () Bool)

(assert (=> b!6741847 (= c!1250660 ((_ is Concat!25414) (reg!16898 r!7292)))))

(declare-fun b!6741848 () Bool)

(declare-fun c!1250662 () Bool)

(assert (=> b!6741848 (= c!1250662 ((_ is Star!16569) (reg!16898 r!7292)))))

(declare-fun e!4072186 () (InoxSet Context!11906))

(assert (=> b!6741848 (= e!4072188 e!4072186)))

(declare-fun b!6741849 () Bool)

(assert (=> b!6741849 (= e!4072186 call!609494)))

(declare-fun b!6741850 () Bool)

(assert (=> b!6741850 (= e!4072189 e!4072185)))

(declare-fun c!1250663 () Bool)

(assert (=> b!6741850 (= c!1250663 ((_ is Union!16569) (reg!16898 r!7292)))))

(declare-fun b!6741851 () Bool)

(declare-fun call!609495 () (InoxSet Context!11906))

(assert (=> b!6741851 (= e!4072185 ((_ map or) call!609495 call!609496))))

(declare-fun bm!609487 () Bool)

(assert (=> bm!609487 (= call!609496 (derivationStepZipperDown!1797 (ite c!1250663 (regTwo!33651 (reg!16898 r!7292)) (regOne!33650 (reg!16898 r!7292))) (ite c!1250663 lt!2439184 (Context!11907 call!609493)) (h!72331 s!2326)))))

(declare-fun b!6741852 () Bool)

(assert (=> b!6741852 (= e!4072186 ((as const (Array Context!11906 Bool)) false))))

(declare-fun bm!609488 () Bool)

(assert (=> bm!609488 (= call!609495 (derivationStepZipperDown!1797 (ite c!1250663 (regOne!33651 (reg!16898 r!7292)) (ite c!1250664 (regTwo!33650 (reg!16898 r!7292)) (ite c!1250660 (regOne!33650 (reg!16898 r!7292)) (reg!16898 (reg!16898 r!7292))))) (ite (or c!1250663 c!1250664) lt!2439184 (Context!11907 call!609491)) (h!72331 s!2326)))))

(declare-fun bm!609489 () Bool)

(declare-fun $colon$colon!2386 (List!66006 Regex!16569) List!66006)

(assert (=> bm!609489 (= call!609493 ($colon$colon!2386 (exprs!6453 lt!2439184) (ite (or c!1250664 c!1250660) (regTwo!33650 (reg!16898 r!7292)) (reg!16898 r!7292))))))

(declare-fun bm!609490 () Bool)

(assert (=> bm!609490 (= call!609494 call!609492)))

(declare-fun bm!609491 () Bool)

(assert (=> bm!609491 (= call!609492 call!609495)))

(declare-fun d!2118204 () Bool)

(declare-fun c!1250661 () Bool)

(assert (=> d!2118204 (= c!1250661 (and ((_ is ElementMatch!16569) (reg!16898 r!7292)) (= (c!1250577 (reg!16898 r!7292)) (h!72331 s!2326))))))

(assert (=> d!2118204 (= (derivationStepZipperDown!1797 (reg!16898 r!7292) lt!2439184 (h!72331 s!2326)) e!4072189)))

(assert (= (and d!2118204 c!1250661) b!6741844))

(assert (= (and d!2118204 (not c!1250661)) b!6741850))

(assert (= (and b!6741850 c!1250663) b!6741851))

(assert (= (and b!6741850 (not c!1250663)) b!6741846))

(assert (= (and b!6741846 res!2757699) b!6741842))

(assert (= (and b!6741846 c!1250664) b!6741843))

(assert (= (and b!6741846 (not c!1250664)) b!6741847))

(assert (= (and b!6741847 c!1250660) b!6741845))

(assert (= (and b!6741847 (not c!1250660)) b!6741848))

(assert (= (and b!6741848 c!1250662) b!6741849))

(assert (= (and b!6741848 (not c!1250662)) b!6741852))

(assert (= (or b!6741845 b!6741849) bm!609486))

(assert (= (or b!6741845 b!6741849) bm!609490))

(assert (= (or b!6741843 bm!609486) bm!609489))

(assert (= (or b!6741843 bm!609490) bm!609491))

(assert (= (or b!6741851 b!6741843) bm!609487))

(assert (= (or b!6741851 bm!609491) bm!609488))

(declare-fun m!7498166 () Bool)

(assert (=> b!6741842 m!7498166))

(declare-fun m!7498168 () Bool)

(assert (=> bm!609487 m!7498168))

(declare-fun m!7498170 () Bool)

(assert (=> bm!609488 m!7498170))

(declare-fun m!7498172 () Bool)

(assert (=> bm!609489 m!7498172))

(assert (=> b!6741844 m!7498008))

(assert (=> b!6741554 d!2118204))

(declare-fun d!2118224 () Bool)

(declare-fun choose!50257 ((InoxSet Context!11906) Int) (InoxSet Context!11906))

(assert (=> d!2118224 (= (flatMap!2050 lt!2439191 lambda!378745) (choose!50257 lt!2439191 lambda!378745))))

(declare-fun bs!1792549 () Bool)

(assert (= bs!1792549 d!2118224))

(declare-fun m!7498174 () Bool)

(assert (=> bs!1792549 m!7498174))

(assert (=> b!6741554 d!2118224))

(declare-fun b!6741871 () Bool)

(declare-fun e!4072201 () Bool)

(assert (=> b!6741871 (= e!4072201 (nullable!6556 (h!72330 (exprs!6453 lt!2439198))))))

(declare-fun bm!609494 () Bool)

(declare-fun call!609499 () (InoxSet Context!11906))

(assert (=> bm!609494 (= call!609499 (derivationStepZipperDown!1797 (h!72330 (exprs!6453 lt!2439198)) (Context!11907 (t!379705 (exprs!6453 lt!2439198))) (h!72331 s!2326)))))

(declare-fun e!4072203 () (InoxSet Context!11906))

(declare-fun b!6741872 () Bool)

(assert (=> b!6741872 (= e!4072203 ((_ map or) call!609499 (derivationStepZipperUp!1723 (Context!11907 (t!379705 (exprs!6453 lt!2439198))) (h!72331 s!2326))))))

(declare-fun b!6741873 () Bool)

(declare-fun e!4072202 () (InoxSet Context!11906))

(assert (=> b!6741873 (= e!4072202 ((as const (Array Context!11906 Bool)) false))))

(declare-fun b!6741874 () Bool)

(assert (=> b!6741874 (= e!4072202 call!609499)))

(declare-fun d!2118226 () Bool)

(declare-fun c!1250670 () Bool)

(assert (=> d!2118226 (= c!1250670 e!4072201)))

(declare-fun res!2757710 () Bool)

(assert (=> d!2118226 (=> (not res!2757710) (not e!4072201))))

(assert (=> d!2118226 (= res!2757710 ((_ is Cons!65882) (exprs!6453 lt!2439198)))))

(assert (=> d!2118226 (= (derivationStepZipperUp!1723 lt!2439198 (h!72331 s!2326)) e!4072203)))

(declare-fun b!6741875 () Bool)

(assert (=> b!6741875 (= e!4072203 e!4072202)))

(declare-fun c!1250669 () Bool)

(assert (=> b!6741875 (= c!1250669 ((_ is Cons!65882) (exprs!6453 lt!2439198)))))

(assert (= (and d!2118226 res!2757710) b!6741871))

(assert (= (and d!2118226 c!1250670) b!6741872))

(assert (= (and d!2118226 (not c!1250670)) b!6741875))

(assert (= (and b!6741875 c!1250669) b!6741874))

(assert (= (and b!6741875 (not c!1250669)) b!6741873))

(assert (= (or b!6741872 b!6741874) bm!609494))

(declare-fun m!7498176 () Bool)

(assert (=> b!6741871 m!7498176))

(declare-fun m!7498178 () Bool)

(assert (=> bm!609494 m!7498178))

(declare-fun m!7498180 () Bool)

(assert (=> b!6741872 m!7498180))

(assert (=> b!6741554 d!2118226))

(declare-fun d!2118228 () Bool)

(declare-fun dynLambda!26287 (Int Context!11906) (InoxSet Context!11906))

(assert (=> d!2118228 (= (flatMap!2050 lt!2439191 lambda!378745) (dynLambda!26287 lambda!378745 lt!2439198))))

(declare-fun lt!2439249 () Unit!159829)

(declare-fun choose!50258 ((InoxSet Context!11906) Context!11906 Int) Unit!159829)

(assert (=> d!2118228 (= lt!2439249 (choose!50258 lt!2439191 lt!2439198 lambda!378745))))

(assert (=> d!2118228 (= lt!2439191 (store ((as const (Array Context!11906 Bool)) false) lt!2439198 true))))

(assert (=> d!2118228 (= (lemmaFlatMapOnSingletonSet!1576 lt!2439191 lt!2439198 lambda!378745) lt!2439249)))

(declare-fun b_lambda!253903 () Bool)

(assert (=> (not b_lambda!253903) (not d!2118228)))

(declare-fun bs!1792553 () Bool)

(assert (= bs!1792553 d!2118228))

(assert (=> bs!1792553 m!7497944))

(declare-fun m!7498182 () Bool)

(assert (=> bs!1792553 m!7498182))

(declare-fun m!7498184 () Bool)

(assert (=> bs!1792553 m!7498184))

(assert (=> bs!1792553 m!7497950))

(assert (=> b!6741554 d!2118228))

(declare-fun d!2118230 () Bool)

(assert (=> d!2118230 (= (isEmpty!38226 (t!379707 zl!343)) ((_ is Nil!65884) (t!379707 zl!343)))))

(assert (=> b!6741545 d!2118230))

(declare-fun bs!1792562 () Bool)

(declare-fun b!6741920 () Bool)

(assert (= bs!1792562 (and b!6741920 d!2118198)))

(declare-fun lambda!378794 () Int)

(assert (=> bs!1792562 (not (= lambda!378794 lambda!378776))))

(declare-fun bs!1792564 () Bool)

(assert (= bs!1792564 (and b!6741920 d!2118172)))

(assert (=> bs!1792564 (not (= lambda!378794 lambda!378757))))

(declare-fun bs!1792565 () Bool)

(assert (= bs!1792565 (and b!6741920 b!6741534)))

(assert (=> bs!1792565 (not (= lambda!378794 lambda!378744))))

(assert (=> bs!1792565 (= lambda!378794 lambda!378743)))

(assert (=> bs!1792564 (not (= lambda!378794 lambda!378756))))

(declare-fun bs!1792566 () Bool)

(assert (= bs!1792566 (and b!6741920 d!2118180)))

(assert (=> bs!1792566 (= (= r!7292 (Star!16569 (reg!16898 r!7292))) (= lambda!378794 lambda!378767))))

(assert (=> bs!1792566 (not (= lambda!378794 lambda!378765))))

(assert (=> bs!1792565 (not (= lambda!378794 lambda!378742))))

(assert (=> b!6741920 true))

(assert (=> b!6741920 true))

(declare-fun bs!1792567 () Bool)

(declare-fun b!6741926 () Bool)

(assert (= bs!1792567 (and b!6741926 d!2118198)))

(declare-fun lambda!378795 () Int)

(assert (=> bs!1792567 (not (= lambda!378795 lambda!378776))))

(declare-fun bs!1792568 () Bool)

(assert (= bs!1792568 (and b!6741926 d!2118172)))

(assert (=> bs!1792568 (= (and (= (regOne!33650 r!7292) (reg!16898 r!7292)) (= (regTwo!33650 r!7292) r!7292)) (= lambda!378795 lambda!378757))))

(declare-fun bs!1792569 () Bool)

(assert (= bs!1792569 (and b!6741926 b!6741534)))

(assert (=> bs!1792569 (= (and (= (regOne!33650 r!7292) (reg!16898 r!7292)) (= (regTwo!33650 r!7292) r!7292)) (= lambda!378795 lambda!378744))))

(declare-fun bs!1792570 () Bool)

(assert (= bs!1792570 (and b!6741926 b!6741920)))

(assert (=> bs!1792570 (not (= lambda!378795 lambda!378794))))

(assert (=> bs!1792569 (not (= lambda!378795 lambda!378743))))

(assert (=> bs!1792568 (not (= lambda!378795 lambda!378756))))

(declare-fun bs!1792571 () Bool)

(assert (= bs!1792571 (and b!6741926 d!2118180)))

(assert (=> bs!1792571 (not (= lambda!378795 lambda!378767))))

(assert (=> bs!1792571 (not (= lambda!378795 lambda!378765))))

(assert (=> bs!1792569 (not (= lambda!378795 lambda!378742))))

(assert (=> b!6741926 true))

(assert (=> b!6741926 true))

(declare-fun b!6741918 () Bool)

(declare-fun e!4072232 () Bool)

(declare-fun call!609504 () Bool)

(assert (=> b!6741918 (= e!4072232 call!609504)))

(declare-fun b!6741919 () Bool)

(declare-fun e!4072227 () Bool)

(assert (=> b!6741919 (= e!4072227 (matchRSpec!3670 (regTwo!33651 r!7292) s!2326))))

(declare-fun e!4072228 () Bool)

(declare-fun call!609505 () Bool)

(assert (=> b!6741920 (= e!4072228 call!609505)))

(declare-fun b!6741921 () Bool)

(declare-fun e!4072229 () Bool)

(assert (=> b!6741921 (= e!4072229 (= s!2326 (Cons!65883 (c!1250577 r!7292) Nil!65883)))))

(declare-fun b!6741922 () Bool)

(declare-fun e!4072231 () Bool)

(declare-fun e!4072226 () Bool)

(assert (=> b!6741922 (= e!4072231 e!4072226)))

(declare-fun c!1250679 () Bool)

(assert (=> b!6741922 (= c!1250679 ((_ is Star!16569) r!7292))))

(declare-fun b!6741923 () Bool)

(assert (=> b!6741923 (= e!4072231 e!4072227)))

(declare-fun res!2757738 () Bool)

(assert (=> b!6741923 (= res!2757738 (matchRSpec!3670 (regOne!33651 r!7292) s!2326))))

(assert (=> b!6741923 (=> res!2757738 e!4072227)))

(declare-fun b!6741924 () Bool)

(declare-fun res!2757739 () Bool)

(assert (=> b!6741924 (=> res!2757739 e!4072228)))

(assert (=> b!6741924 (= res!2757739 call!609504)))

(assert (=> b!6741924 (= e!4072226 e!4072228)))

(declare-fun b!6741925 () Bool)

(declare-fun c!1250682 () Bool)

(assert (=> b!6741925 (= c!1250682 ((_ is Union!16569) r!7292))))

(assert (=> b!6741925 (= e!4072229 e!4072231)))

(assert (=> b!6741926 (= e!4072226 call!609505)))

(declare-fun d!2118232 () Bool)

(declare-fun c!1250681 () Bool)

(assert (=> d!2118232 (= c!1250681 ((_ is EmptyExpr!16569) r!7292))))

(assert (=> d!2118232 (= (matchRSpec!3670 r!7292 s!2326) e!4072232)))

(declare-fun bm!609499 () Bool)

(assert (=> bm!609499 (= call!609504 (isEmpty!38225 s!2326))))

(declare-fun b!6741927 () Bool)

(declare-fun c!1250680 () Bool)

(assert (=> b!6741927 (= c!1250680 ((_ is ElementMatch!16569) r!7292))))

(declare-fun e!4072230 () Bool)

(assert (=> b!6741927 (= e!4072230 e!4072229)))

(declare-fun bm!609500 () Bool)

(assert (=> bm!609500 (= call!609505 (Exists!3637 (ite c!1250679 lambda!378794 lambda!378795)))))

(declare-fun b!6741928 () Bool)

(assert (=> b!6741928 (= e!4072232 e!4072230)))

(declare-fun res!2757737 () Bool)

(assert (=> b!6741928 (= res!2757737 (not ((_ is EmptyLang!16569) r!7292)))))

(assert (=> b!6741928 (=> (not res!2757737) (not e!4072230))))

(assert (= (and d!2118232 c!1250681) b!6741918))

(assert (= (and d!2118232 (not c!1250681)) b!6741928))

(assert (= (and b!6741928 res!2757737) b!6741927))

(assert (= (and b!6741927 c!1250680) b!6741921))

(assert (= (and b!6741927 (not c!1250680)) b!6741925))

(assert (= (and b!6741925 c!1250682) b!6741923))

(assert (= (and b!6741925 (not c!1250682)) b!6741922))

(assert (= (and b!6741923 (not res!2757738)) b!6741919))

(assert (= (and b!6741922 c!1250679) b!6741924))

(assert (= (and b!6741922 (not c!1250679)) b!6741926))

(assert (= (and b!6741924 (not res!2757739)) b!6741920))

(assert (= (or b!6741920 b!6741926) bm!609500))

(assert (= (or b!6741918 b!6741924) bm!609499))

(declare-fun m!7498206 () Bool)

(assert (=> b!6741919 m!7498206))

(declare-fun m!7498208 () Bool)

(assert (=> b!6741923 m!7498208))

(assert (=> bm!609499 m!7497990))

(declare-fun m!7498210 () Bool)

(assert (=> bm!609500 m!7498210))

(assert (=> b!6741543 d!2118232))

(declare-fun b!6741985 () Bool)

(declare-fun e!4072262 () Bool)

(declare-fun head!13565 (List!66007) C!33408)

(assert (=> b!6741985 (= e!4072262 (= (head!13565 s!2326) (c!1250577 r!7292)))))

(declare-fun b!6741986 () Bool)

(declare-fun res!2757771 () Bool)

(declare-fun e!4072264 () Bool)

(assert (=> b!6741986 (=> res!2757771 e!4072264)))

(assert (=> b!6741986 (= res!2757771 (not ((_ is ElementMatch!16569) r!7292)))))

(declare-fun e!4072267 () Bool)

(assert (=> b!6741986 (= e!4072267 e!4072264)))

(declare-fun b!6741987 () Bool)

(declare-fun res!2757775 () Bool)

(declare-fun e!4072263 () Bool)

(assert (=> b!6741987 (=> res!2757775 e!4072263)))

(declare-fun tail!12650 (List!66007) List!66007)

(assert (=> b!6741987 (= res!2757775 (not (isEmpty!38225 (tail!12650 s!2326))))))

(declare-fun b!6741988 () Bool)

(declare-fun e!4072266 () Bool)

(assert (=> b!6741988 (= e!4072266 (nullable!6556 r!7292))))

(declare-fun b!6741989 () Bool)

(declare-fun e!4072268 () Bool)

(assert (=> b!6741989 (= e!4072264 e!4072268)))

(declare-fun res!2757772 () Bool)

(assert (=> b!6741989 (=> (not res!2757772) (not e!4072268))))

(declare-fun lt!2439264 () Bool)

(assert (=> b!6741989 (= res!2757772 (not lt!2439264))))

(declare-fun b!6741990 () Bool)

(declare-fun res!2757777 () Bool)

(assert (=> b!6741990 (=> (not res!2757777) (not e!4072262))))

(declare-fun call!609508 () Bool)

(assert (=> b!6741990 (= res!2757777 (not call!609508))))

(declare-fun b!6741991 () Bool)

(declare-fun derivativeStep!5241 (Regex!16569 C!33408) Regex!16569)

(assert (=> b!6741991 (= e!4072266 (matchR!8752 (derivativeStep!5241 r!7292 (head!13565 s!2326)) (tail!12650 s!2326)))))

(declare-fun b!6741992 () Bool)

(assert (=> b!6741992 (= e!4072267 (not lt!2439264))))

(declare-fun d!2118246 () Bool)

(declare-fun e!4072265 () Bool)

(assert (=> d!2118246 e!4072265))

(declare-fun c!1250695 () Bool)

(assert (=> d!2118246 (= c!1250695 ((_ is EmptyExpr!16569) r!7292))))

(assert (=> d!2118246 (= lt!2439264 e!4072266)))

(declare-fun c!1250696 () Bool)

(assert (=> d!2118246 (= c!1250696 (isEmpty!38225 s!2326))))

(assert (=> d!2118246 (validRegex!8305 r!7292)))

(assert (=> d!2118246 (= (matchR!8752 r!7292 s!2326) lt!2439264)))

(declare-fun b!6741984 () Bool)

(assert (=> b!6741984 (= e!4072265 e!4072267)))

(declare-fun c!1250697 () Bool)

(assert (=> b!6741984 (= c!1250697 ((_ is EmptyLang!16569) r!7292))))

(declare-fun b!6741993 () Bool)

(declare-fun res!2757778 () Bool)

(assert (=> b!6741993 (=> res!2757778 e!4072264)))

(assert (=> b!6741993 (= res!2757778 e!4072262)))

(declare-fun res!2757773 () Bool)

(assert (=> b!6741993 (=> (not res!2757773) (not e!4072262))))

(assert (=> b!6741993 (= res!2757773 lt!2439264)))

(declare-fun b!6741994 () Bool)

(assert (=> b!6741994 (= e!4072268 e!4072263)))

(declare-fun res!2757774 () Bool)

(assert (=> b!6741994 (=> res!2757774 e!4072263)))

(assert (=> b!6741994 (= res!2757774 call!609508)))

(declare-fun b!6741995 () Bool)

(assert (=> b!6741995 (= e!4072265 (= lt!2439264 call!609508))))

(declare-fun b!6741996 () Bool)

(assert (=> b!6741996 (= e!4072263 (not (= (head!13565 s!2326) (c!1250577 r!7292))))))

(declare-fun bm!609503 () Bool)

(assert (=> bm!609503 (= call!609508 (isEmpty!38225 s!2326))))

(declare-fun b!6741997 () Bool)

(declare-fun res!2757776 () Bool)

(assert (=> b!6741997 (=> (not res!2757776) (not e!4072262))))

(assert (=> b!6741997 (= res!2757776 (isEmpty!38225 (tail!12650 s!2326)))))

(assert (= (and d!2118246 c!1250696) b!6741988))

(assert (= (and d!2118246 (not c!1250696)) b!6741991))

(assert (= (and d!2118246 c!1250695) b!6741995))

(assert (= (and d!2118246 (not c!1250695)) b!6741984))

(assert (= (and b!6741984 c!1250697) b!6741992))

(assert (= (and b!6741984 (not c!1250697)) b!6741986))

(assert (= (and b!6741986 (not res!2757771)) b!6741993))

(assert (= (and b!6741993 res!2757773) b!6741990))

(assert (= (and b!6741990 res!2757777) b!6741997))

(assert (= (and b!6741997 res!2757776) b!6741985))

(assert (= (and b!6741993 (not res!2757778)) b!6741989))

(assert (= (and b!6741989 res!2757772) b!6741994))

(assert (= (and b!6741994 (not res!2757774)) b!6741987))

(assert (= (and b!6741987 (not res!2757775)) b!6741996))

(assert (= (or b!6741995 b!6741990 b!6741994) bm!609503))

(declare-fun m!7498232 () Bool)

(assert (=> b!6741988 m!7498232))

(assert (=> d!2118246 m!7497990))

(assert (=> d!2118246 m!7497928))

(declare-fun m!7498234 () Bool)

(assert (=> b!6741987 m!7498234))

(assert (=> b!6741987 m!7498234))

(declare-fun m!7498236 () Bool)

(assert (=> b!6741987 m!7498236))

(declare-fun m!7498238 () Bool)

(assert (=> b!6741996 m!7498238))

(assert (=> bm!609503 m!7497990))

(assert (=> b!6741997 m!7498234))

(assert (=> b!6741997 m!7498234))

(assert (=> b!6741997 m!7498236))

(assert (=> b!6741991 m!7498238))

(assert (=> b!6741991 m!7498238))

(declare-fun m!7498240 () Bool)

(assert (=> b!6741991 m!7498240))

(assert (=> b!6741991 m!7498234))

(assert (=> b!6741991 m!7498240))

(assert (=> b!6741991 m!7498234))

(declare-fun m!7498242 () Bool)

(assert (=> b!6741991 m!7498242))

(assert (=> b!6741985 m!7498238))

(assert (=> b!6741543 d!2118246))

(declare-fun d!2118250 () Bool)

(assert (=> d!2118250 (= (matchR!8752 r!7292 s!2326) (matchRSpec!3670 r!7292 s!2326))))

(declare-fun lt!2439270 () Unit!159829)

(declare-fun choose!50263 (Regex!16569 List!66007) Unit!159829)

(assert (=> d!2118250 (= lt!2439270 (choose!50263 r!7292 s!2326))))

(assert (=> d!2118250 (validRegex!8305 r!7292)))

(assert (=> d!2118250 (= (mainMatchTheorem!3670 r!7292 s!2326) lt!2439270)))

(declare-fun bs!1792577 () Bool)

(assert (= bs!1792577 d!2118250))

(assert (=> bs!1792577 m!7497932))

(assert (=> bs!1792577 m!7497930))

(declare-fun m!7498244 () Bool)

(assert (=> bs!1792577 m!7498244))

(assert (=> bs!1792577 m!7497928))

(assert (=> b!6741543 d!2118250))

(declare-fun d!2118252 () Bool)

(assert (=> d!2118252 (= (flatMap!2050 z!1189 lambda!378745) (choose!50257 z!1189 lambda!378745))))

(declare-fun bs!1792578 () Bool)

(assert (= bs!1792578 d!2118252))

(declare-fun m!7498246 () Bool)

(assert (=> bs!1792578 m!7498246))

(assert (=> b!6741544 d!2118252))

(declare-fun b!6742002 () Bool)

(declare-fun e!4072271 () Bool)

(assert (=> b!6742002 (= e!4072271 (nullable!6556 (h!72330 (exprs!6453 (h!72332 zl!343)))))))

(declare-fun bm!609504 () Bool)

(declare-fun call!609509 () (InoxSet Context!11906))

(assert (=> bm!609504 (= call!609509 (derivationStepZipperDown!1797 (h!72330 (exprs!6453 (h!72332 zl!343))) (Context!11907 (t!379705 (exprs!6453 (h!72332 zl!343)))) (h!72331 s!2326)))))

(declare-fun b!6742003 () Bool)

(declare-fun e!4072273 () (InoxSet Context!11906))

(assert (=> b!6742003 (= e!4072273 ((_ map or) call!609509 (derivationStepZipperUp!1723 (Context!11907 (t!379705 (exprs!6453 (h!72332 zl!343)))) (h!72331 s!2326))))))

(declare-fun b!6742004 () Bool)

(declare-fun e!4072272 () (InoxSet Context!11906))

(assert (=> b!6742004 (= e!4072272 ((as const (Array Context!11906 Bool)) false))))

(declare-fun b!6742005 () Bool)

(assert (=> b!6742005 (= e!4072272 call!609509)))

(declare-fun d!2118254 () Bool)

(declare-fun c!1250699 () Bool)

(assert (=> d!2118254 (= c!1250699 e!4072271)))

(declare-fun res!2757783 () Bool)

(assert (=> d!2118254 (=> (not res!2757783) (not e!4072271))))

(assert (=> d!2118254 (= res!2757783 ((_ is Cons!65882) (exprs!6453 (h!72332 zl!343))))))

(assert (=> d!2118254 (= (derivationStepZipperUp!1723 (h!72332 zl!343) (h!72331 s!2326)) e!4072273)))

(declare-fun b!6742006 () Bool)

(assert (=> b!6742006 (= e!4072273 e!4072272)))

(declare-fun c!1250698 () Bool)

(assert (=> b!6742006 (= c!1250698 ((_ is Cons!65882) (exprs!6453 (h!72332 zl!343))))))

(assert (= (and d!2118254 res!2757783) b!6742002))

(assert (= (and d!2118254 c!1250699) b!6742003))

(assert (= (and d!2118254 (not c!1250699)) b!6742006))

(assert (= (and b!6742006 c!1250698) b!6742005))

(assert (= (and b!6742006 (not c!1250698)) b!6742004))

(assert (= (or b!6742003 b!6742005) bm!609504))

(declare-fun m!7498248 () Bool)

(assert (=> b!6742002 m!7498248))

(declare-fun m!7498250 () Bool)

(assert (=> bm!609504 m!7498250))

(declare-fun m!7498254 () Bool)

(assert (=> b!6742003 m!7498254))

(assert (=> b!6741544 d!2118254))

(declare-fun d!2118256 () Bool)

(assert (=> d!2118256 (= (flatMap!2050 z!1189 lambda!378745) (dynLambda!26287 lambda!378745 (h!72332 zl!343)))))

(declare-fun lt!2439271 () Unit!159829)

(assert (=> d!2118256 (= lt!2439271 (choose!50258 z!1189 (h!72332 zl!343) lambda!378745))))

(assert (=> d!2118256 (= z!1189 (store ((as const (Array Context!11906 Bool)) false) (h!72332 zl!343) true))))

(assert (=> d!2118256 (= (lemmaFlatMapOnSingletonSet!1576 z!1189 (h!72332 zl!343) lambda!378745) lt!2439271)))

(declare-fun b_lambda!253905 () Bool)

(assert (=> (not b_lambda!253905) (not d!2118256)))

(declare-fun bs!1792581 () Bool)

(assert (= bs!1792581 d!2118256))

(assert (=> bs!1792581 m!7497958))

(declare-fun m!7498264 () Bool)

(assert (=> bs!1792581 m!7498264))

(declare-fun m!7498266 () Bool)

(assert (=> bs!1792581 m!7498266))

(declare-fun m!7498268 () Bool)

(assert (=> bs!1792581 m!7498268))

(assert (=> b!6741544 d!2118256))

(declare-fun b!6742018 () Bool)

(declare-fun e!4072285 () Bool)

(assert (=> b!6742018 (= e!4072285 (nullable!6556 (regOne!33650 r!7292)))))

(declare-fun b!6742019 () Bool)

(declare-fun e!4072282 () (InoxSet Context!11906))

(declare-fun call!609521 () (InoxSet Context!11906))

(declare-fun call!609517 () (InoxSet Context!11906))

(assert (=> b!6742019 (= e!4072282 ((_ map or) call!609521 call!609517))))

(declare-fun b!6742020 () Bool)

(declare-fun e!4072284 () (InoxSet Context!11906))

(assert (=> b!6742020 (= e!4072284 (store ((as const (Array Context!11906 Bool)) false) (Context!11907 Nil!65882) true))))

(declare-fun b!6742021 () Bool)

(declare-fun e!4072283 () (InoxSet Context!11906))

(declare-fun call!609519 () (InoxSet Context!11906))

(assert (=> b!6742021 (= e!4072283 call!609519)))

(declare-fun bm!609511 () Bool)

(declare-fun call!609516 () List!66006)

(declare-fun call!609518 () List!66006)

(assert (=> bm!609511 (= call!609516 call!609518)))

(declare-fun b!6742022 () Bool)

(declare-fun c!1250709 () Bool)

(assert (=> b!6742022 (= c!1250709 e!4072285)))

(declare-fun res!2757785 () Bool)

(assert (=> b!6742022 (=> (not res!2757785) (not e!4072285))))

(assert (=> b!6742022 (= res!2757785 ((_ is Concat!25414) r!7292))))

(declare-fun e!4072280 () (InoxSet Context!11906))

(assert (=> b!6742022 (= e!4072280 e!4072282)))

(declare-fun b!6742023 () Bool)

(assert (=> b!6742023 (= e!4072282 e!4072283)))

(declare-fun c!1250705 () Bool)

(assert (=> b!6742023 (= c!1250705 ((_ is Concat!25414) r!7292))))

(declare-fun b!6742024 () Bool)

(declare-fun c!1250707 () Bool)

(assert (=> b!6742024 (= c!1250707 ((_ is Star!16569) r!7292))))

(declare-fun e!4072281 () (InoxSet Context!11906))

(assert (=> b!6742024 (= e!4072283 e!4072281)))

(declare-fun b!6742025 () Bool)

(assert (=> b!6742025 (= e!4072281 call!609519)))

(declare-fun b!6742026 () Bool)

(assert (=> b!6742026 (= e!4072284 e!4072280)))

(declare-fun c!1250708 () Bool)

(assert (=> b!6742026 (= c!1250708 ((_ is Union!16569) r!7292))))

(declare-fun b!6742027 () Bool)

(declare-fun call!609520 () (InoxSet Context!11906))

(assert (=> b!6742027 (= e!4072280 ((_ map or) call!609520 call!609521))))

(declare-fun bm!609512 () Bool)

(assert (=> bm!609512 (= call!609521 (derivationStepZipperDown!1797 (ite c!1250708 (regTwo!33651 r!7292) (regOne!33650 r!7292)) (ite c!1250708 (Context!11907 Nil!65882) (Context!11907 call!609518)) (h!72331 s!2326)))))

(declare-fun b!6742028 () Bool)

(assert (=> b!6742028 (= e!4072281 ((as const (Array Context!11906 Bool)) false))))

(declare-fun bm!609513 () Bool)

(assert (=> bm!609513 (= call!609520 (derivationStepZipperDown!1797 (ite c!1250708 (regOne!33651 r!7292) (ite c!1250709 (regTwo!33650 r!7292) (ite c!1250705 (regOne!33650 r!7292) (reg!16898 r!7292)))) (ite (or c!1250708 c!1250709) (Context!11907 Nil!65882) (Context!11907 call!609516)) (h!72331 s!2326)))))

(declare-fun bm!609514 () Bool)

(assert (=> bm!609514 (= call!609518 ($colon$colon!2386 (exprs!6453 (Context!11907 Nil!65882)) (ite (or c!1250709 c!1250705) (regTwo!33650 r!7292) r!7292)))))

(declare-fun bm!609515 () Bool)

(assert (=> bm!609515 (= call!609519 call!609517)))

(declare-fun bm!609516 () Bool)

(assert (=> bm!609516 (= call!609517 call!609520)))

(declare-fun d!2118262 () Bool)

(declare-fun c!1250706 () Bool)

(assert (=> d!2118262 (= c!1250706 (and ((_ is ElementMatch!16569) r!7292) (= (c!1250577 r!7292) (h!72331 s!2326))))))

(assert (=> d!2118262 (= (derivationStepZipperDown!1797 r!7292 (Context!11907 Nil!65882) (h!72331 s!2326)) e!4072284)))

(assert (= (and d!2118262 c!1250706) b!6742020))

(assert (= (and d!2118262 (not c!1250706)) b!6742026))

(assert (= (and b!6742026 c!1250708) b!6742027))

(assert (= (and b!6742026 (not c!1250708)) b!6742022))

(assert (= (and b!6742022 res!2757785) b!6742018))

(assert (= (and b!6742022 c!1250709) b!6742019))

(assert (= (and b!6742022 (not c!1250709)) b!6742023))

(assert (= (and b!6742023 c!1250705) b!6742021))

(assert (= (and b!6742023 (not c!1250705)) b!6742024))

(assert (= (and b!6742024 c!1250707) b!6742025))

(assert (= (and b!6742024 (not c!1250707)) b!6742028))

(assert (= (or b!6742021 b!6742025) bm!609511))

(assert (= (or b!6742021 b!6742025) bm!609515))

(assert (= (or b!6742019 bm!609511) bm!609514))

(assert (= (or b!6742019 bm!609515) bm!609516))

(assert (= (or b!6742027 b!6742019) bm!609512))

(assert (= (or b!6742027 bm!609516) bm!609513))

(declare-fun m!7498280 () Bool)

(assert (=> b!6742018 m!7498280))

(declare-fun m!7498282 () Bool)

(assert (=> bm!609512 m!7498282))

(declare-fun m!7498284 () Bool)

(assert (=> bm!609513 m!7498284))

(declare-fun m!7498290 () Bool)

(assert (=> bm!609514 m!7498290))

(declare-fun m!7498292 () Bool)

(assert (=> b!6742020 m!7498292))

(assert (=> b!6741533 d!2118262))

(declare-fun b!6742034 () Bool)

(declare-fun e!4072289 () Bool)

(assert (=> b!6742034 (= e!4072289 (nullable!6556 (h!72330 (exprs!6453 (Context!11907 (Cons!65882 r!7292 Nil!65882))))))))

(declare-fun bm!609518 () Bool)

(declare-fun call!609523 () (InoxSet Context!11906))

(assert (=> bm!609518 (= call!609523 (derivationStepZipperDown!1797 (h!72330 (exprs!6453 (Context!11907 (Cons!65882 r!7292 Nil!65882)))) (Context!11907 (t!379705 (exprs!6453 (Context!11907 (Cons!65882 r!7292 Nil!65882))))) (h!72331 s!2326)))))

(declare-fun b!6742035 () Bool)

(declare-fun e!4072291 () (InoxSet Context!11906))

(assert (=> b!6742035 (= e!4072291 ((_ map or) call!609523 (derivationStepZipperUp!1723 (Context!11907 (t!379705 (exprs!6453 (Context!11907 (Cons!65882 r!7292 Nil!65882))))) (h!72331 s!2326))))))

(declare-fun b!6742036 () Bool)

(declare-fun e!4072290 () (InoxSet Context!11906))

(assert (=> b!6742036 (= e!4072290 ((as const (Array Context!11906 Bool)) false))))

(declare-fun b!6742037 () Bool)

(assert (=> b!6742037 (= e!4072290 call!609523)))

(declare-fun d!2118270 () Bool)

(declare-fun c!1250713 () Bool)

(assert (=> d!2118270 (= c!1250713 e!4072289)))

(declare-fun res!2757787 () Bool)

(assert (=> d!2118270 (=> (not res!2757787) (not e!4072289))))

(assert (=> d!2118270 (= res!2757787 ((_ is Cons!65882) (exprs!6453 (Context!11907 (Cons!65882 r!7292 Nil!65882)))))))

(assert (=> d!2118270 (= (derivationStepZipperUp!1723 (Context!11907 (Cons!65882 r!7292 Nil!65882)) (h!72331 s!2326)) e!4072291)))

(declare-fun b!6742038 () Bool)

(assert (=> b!6742038 (= e!4072291 e!4072290)))

(declare-fun c!1250712 () Bool)

(assert (=> b!6742038 (= c!1250712 ((_ is Cons!65882) (exprs!6453 (Context!11907 (Cons!65882 r!7292 Nil!65882)))))))

(assert (= (and d!2118270 res!2757787) b!6742034))

(assert (= (and d!2118270 c!1250713) b!6742035))

(assert (= (and d!2118270 (not c!1250713)) b!6742038))

(assert (= (and b!6742038 c!1250712) b!6742037))

(assert (= (and b!6742038 (not c!1250712)) b!6742036))

(assert (= (or b!6742035 b!6742037) bm!609518))

(declare-fun m!7498300 () Bool)

(assert (=> b!6742034 m!7498300))

(declare-fun m!7498302 () Bool)

(assert (=> bm!609518 m!7498302))

(declare-fun m!7498304 () Bool)

(assert (=> b!6742035 m!7498304))

(assert (=> b!6741533 d!2118270))

(declare-fun bs!1792584 () Bool)

(declare-fun d!2118274 () Bool)

(assert (= bs!1792584 (and d!2118274 b!6741544)))

(declare-fun lambda!378801 () Int)

(assert (=> bs!1792584 (= lambda!378801 lambda!378745)))

(assert (=> d!2118274 true))

(assert (=> d!2118274 (= (derivationStepZipper!2513 z!1189 (h!72331 s!2326)) (flatMap!2050 z!1189 lambda!378801))))

(declare-fun bs!1792585 () Bool)

(assert (= bs!1792585 d!2118274))

(declare-fun m!7498306 () Bool)

(assert (=> bs!1792585 m!7498306))

(assert (=> b!6741533 d!2118274))

(declare-fun d!2118278 () Bool)

(declare-fun lambda!378804 () Int)

(declare-fun forall!15769 (List!66006 Int) Bool)

(assert (=> d!2118278 (= (inv!84669 (h!72332 zl!343)) (forall!15769 (exprs!6453 (h!72332 zl!343)) lambda!378804))))

(declare-fun bs!1792586 () Bool)

(assert (= bs!1792586 d!2118278))

(declare-fun m!7498308 () Bool)

(assert (=> bs!1792586 m!7498308))

(assert (=> b!6741551 d!2118278))

(declare-fun bs!1792587 () Bool)

(declare-fun d!2118280 () Bool)

(assert (= bs!1792587 (and d!2118280 d!2118278)))

(declare-fun lambda!378805 () Int)

(assert (=> bs!1792587 (= lambda!378805 lambda!378804)))

(assert (=> d!2118280 (= (inv!84669 setElem!46037) (forall!15769 (exprs!6453 setElem!46037) lambda!378805))))

(declare-fun bs!1792588 () Bool)

(assert (= bs!1792588 d!2118280))

(declare-fun m!7498310 () Bool)

(assert (=> bs!1792588 m!7498310))

(assert (=> setNonEmpty!46037 d!2118280))

(declare-fun b!6742089 () Bool)

(declare-fun e!4072325 () Bool)

(declare-fun call!609530 () Bool)

(assert (=> b!6742089 (= e!4072325 call!609530)))

(declare-fun b!6742090 () Bool)

(declare-fun e!4072327 () Bool)

(declare-fun e!4072330 () Bool)

(assert (=> b!6742090 (= e!4072327 e!4072330)))

(declare-fun c!1250733 () Bool)

(assert (=> b!6742090 (= c!1250733 ((_ is Union!16569) r!7292))))

(declare-fun b!6742091 () Bool)

(declare-fun e!4072329 () Bool)

(assert (=> b!6742091 (= e!4072329 e!4072325)))

(declare-fun res!2757804 () Bool)

(assert (=> b!6742091 (=> (not res!2757804) (not e!4072325))))

(declare-fun call!609532 () Bool)

(assert (=> b!6742091 (= res!2757804 call!609532)))

(declare-fun b!6742092 () Bool)

(declare-fun e!4072326 () Bool)

(declare-fun call!609531 () Bool)

(assert (=> b!6742092 (= e!4072326 call!609531)))

(declare-fun bm!609525 () Bool)

(assert (=> bm!609525 (= call!609532 (validRegex!8305 (ite c!1250733 (regOne!33651 r!7292) (regOne!33650 r!7292))))))

(declare-fun b!6742093 () Bool)

(declare-fun e!4072328 () Bool)

(assert (=> b!6742093 (= e!4072328 call!609530)))

(declare-fun b!6742094 () Bool)

(declare-fun res!2757806 () Bool)

(assert (=> b!6742094 (=> (not res!2757806) (not e!4072328))))

(assert (=> b!6742094 (= res!2757806 call!609532)))

(assert (=> b!6742094 (= e!4072330 e!4072328)))

(declare-fun c!1250732 () Bool)

(declare-fun bm!609526 () Bool)

(assert (=> bm!609526 (= call!609531 (validRegex!8305 (ite c!1250732 (reg!16898 r!7292) (ite c!1250733 (regTwo!33651 r!7292) (regTwo!33650 r!7292)))))))

(declare-fun b!6742096 () Bool)

(assert (=> b!6742096 (= e!4072327 e!4072326)))

(declare-fun res!2757808 () Bool)

(assert (=> b!6742096 (= res!2757808 (not (nullable!6556 (reg!16898 r!7292))))))

(assert (=> b!6742096 (=> (not res!2757808) (not e!4072326))))

(declare-fun b!6742097 () Bool)

(declare-fun res!2757807 () Bool)

(assert (=> b!6742097 (=> res!2757807 e!4072329)))

(assert (=> b!6742097 (= res!2757807 (not ((_ is Concat!25414) r!7292)))))

(assert (=> b!6742097 (= e!4072330 e!4072329)))

(declare-fun bm!609527 () Bool)

(assert (=> bm!609527 (= call!609530 call!609531)))

(declare-fun d!2118282 () Bool)

(declare-fun res!2757805 () Bool)

(declare-fun e!4072324 () Bool)

(assert (=> d!2118282 (=> res!2757805 e!4072324)))

(assert (=> d!2118282 (= res!2757805 ((_ is ElementMatch!16569) r!7292))))

(assert (=> d!2118282 (= (validRegex!8305 r!7292) e!4072324)))

(declare-fun b!6742095 () Bool)

(assert (=> b!6742095 (= e!4072324 e!4072327)))

(assert (=> b!6742095 (= c!1250732 ((_ is Star!16569) r!7292))))

(assert (= (and d!2118282 (not res!2757805)) b!6742095))

(assert (= (and b!6742095 c!1250732) b!6742096))

(assert (= (and b!6742095 (not c!1250732)) b!6742090))

(assert (= (and b!6742096 res!2757808) b!6742092))

(assert (= (and b!6742090 c!1250733) b!6742094))

(assert (= (and b!6742090 (not c!1250733)) b!6742097))

(assert (= (and b!6742094 res!2757806) b!6742093))

(assert (= (and b!6742097 (not res!2757807)) b!6742091))

(assert (= (and b!6742091 res!2757804) b!6742089))

(assert (= (or b!6742093 b!6742089) bm!609527))

(assert (= (or b!6742094 b!6742091) bm!609525))

(assert (= (or b!6742092 bm!609527) bm!609526))

(declare-fun m!7498332 () Bool)

(assert (=> bm!609525 m!7498332))

(declare-fun m!7498334 () Bool)

(assert (=> bm!609526 m!7498334))

(declare-fun m!7498336 () Bool)

(assert (=> b!6742096 m!7498336))

(assert (=> start!653880 d!2118282))

(declare-fun bs!1792600 () Bool)

(declare-fun d!2118286 () Bool)

(assert (= bs!1792600 (and d!2118286 d!2118278)))

(declare-fun lambda!378815 () Int)

(assert (=> bs!1792600 (= lambda!378815 lambda!378804)))

(declare-fun bs!1792602 () Bool)

(assert (= bs!1792602 (and d!2118286 d!2118280)))

(assert (=> bs!1792602 (= lambda!378815 lambda!378805)))

(declare-fun b!6742132 () Bool)

(declare-fun e!4072354 () Bool)

(declare-fun lt!2439282 () Regex!16569)

(declare-fun head!13566 (List!66006) Regex!16569)

(assert (=> b!6742132 (= e!4072354 (= lt!2439282 (head!13566 (exprs!6453 (h!72332 zl!343)))))))

(declare-fun b!6742133 () Bool)

(declare-fun e!4072353 () Bool)

(declare-fun e!4072350 () Bool)

(assert (=> b!6742133 (= e!4072353 e!4072350)))

(declare-fun c!1250750 () Bool)

(declare-fun isEmpty!38230 (List!66006) Bool)

(assert (=> b!6742133 (= c!1250750 (isEmpty!38230 (exprs!6453 (h!72332 zl!343))))))

(declare-fun b!6742134 () Bool)

(declare-fun e!4072352 () Regex!16569)

(assert (=> b!6742134 (= e!4072352 (h!72330 (exprs!6453 (h!72332 zl!343))))))

(declare-fun b!6742135 () Bool)

(assert (=> b!6742135 (= e!4072350 e!4072354)))

(declare-fun c!1250749 () Bool)

(declare-fun tail!12651 (List!66006) List!66006)

(assert (=> b!6742135 (= c!1250749 (isEmpty!38230 (tail!12651 (exprs!6453 (h!72332 zl!343)))))))

(assert (=> d!2118286 e!4072353))

(declare-fun res!2757814 () Bool)

(assert (=> d!2118286 (=> (not res!2757814) (not e!4072353))))

(assert (=> d!2118286 (= res!2757814 (validRegex!8305 lt!2439282))))

(assert (=> d!2118286 (= lt!2439282 e!4072352)))

(declare-fun c!1250752 () Bool)

(declare-fun e!4072355 () Bool)

(assert (=> d!2118286 (= c!1250752 e!4072355)))

(declare-fun res!2757813 () Bool)

(assert (=> d!2118286 (=> (not res!2757813) (not e!4072355))))

(assert (=> d!2118286 (= res!2757813 ((_ is Cons!65882) (exprs!6453 (h!72332 zl!343))))))

(assert (=> d!2118286 (forall!15769 (exprs!6453 (h!72332 zl!343)) lambda!378815)))

(assert (=> d!2118286 (= (generalisedConcat!2166 (exprs!6453 (h!72332 zl!343))) lt!2439282)))

(declare-fun b!6742136 () Bool)

(assert (=> b!6742136 (= e!4072355 (isEmpty!38230 (t!379705 (exprs!6453 (h!72332 zl!343)))))))

(declare-fun b!6742137 () Bool)

(declare-fun e!4072351 () Regex!16569)

(assert (=> b!6742137 (= e!4072351 EmptyExpr!16569)))

(declare-fun b!6742138 () Bool)

(assert (=> b!6742138 (= e!4072351 (Concat!25414 (h!72330 (exprs!6453 (h!72332 zl!343))) (generalisedConcat!2166 (t!379705 (exprs!6453 (h!72332 zl!343))))))))

(declare-fun b!6742139 () Bool)

(assert (=> b!6742139 (= e!4072352 e!4072351)))

(declare-fun c!1250751 () Bool)

(assert (=> b!6742139 (= c!1250751 ((_ is Cons!65882) (exprs!6453 (h!72332 zl!343))))))

(declare-fun b!6742140 () Bool)

(declare-fun isEmptyExpr!1935 (Regex!16569) Bool)

(assert (=> b!6742140 (= e!4072350 (isEmptyExpr!1935 lt!2439282))))

(declare-fun b!6742141 () Bool)

(declare-fun isConcat!1458 (Regex!16569) Bool)

(assert (=> b!6742141 (= e!4072354 (isConcat!1458 lt!2439282))))

(assert (= (and d!2118286 res!2757813) b!6742136))

(assert (= (and d!2118286 c!1250752) b!6742134))

(assert (= (and d!2118286 (not c!1250752)) b!6742139))

(assert (= (and b!6742139 c!1250751) b!6742138))

(assert (= (and b!6742139 (not c!1250751)) b!6742137))

(assert (= (and d!2118286 res!2757814) b!6742133))

(assert (= (and b!6742133 c!1250750) b!6742140))

(assert (= (and b!6742133 (not c!1250750)) b!6742135))

(assert (= (and b!6742135 c!1250749) b!6742132))

(assert (= (and b!6742135 (not c!1250749)) b!6742141))

(declare-fun m!7498364 () Bool)

(assert (=> b!6742133 m!7498364))

(declare-fun m!7498366 () Bool)

(assert (=> b!6742138 m!7498366))

(declare-fun m!7498368 () Bool)

(assert (=> b!6742141 m!7498368))

(declare-fun m!7498370 () Bool)

(assert (=> b!6742132 m!7498370))

(declare-fun m!7498372 () Bool)

(assert (=> b!6742135 m!7498372))

(assert (=> b!6742135 m!7498372))

(declare-fun m!7498374 () Bool)

(assert (=> b!6742135 m!7498374))

(declare-fun m!7498376 () Bool)

(assert (=> b!6742136 m!7498376))

(declare-fun m!7498378 () Bool)

(assert (=> d!2118286 m!7498378))

(declare-fun m!7498380 () Bool)

(assert (=> d!2118286 m!7498380))

(declare-fun m!7498382 () Bool)

(assert (=> b!6742140 m!7498382))

(assert (=> b!6741541 d!2118286))

(declare-fun d!2118298 () Bool)

(declare-fun c!1250757 () Bool)

(assert (=> d!2118298 (= c!1250757 (isEmpty!38225 s!2326))))

(declare-fun e!4072366 () Bool)

(assert (=> d!2118298 (= (matchZipper!2555 lt!2439191 s!2326) e!4072366)))

(declare-fun b!6742158 () Bool)

(declare-fun nullableZipper!2283 ((InoxSet Context!11906)) Bool)

(assert (=> b!6742158 (= e!4072366 (nullableZipper!2283 lt!2439191))))

(declare-fun b!6742159 () Bool)

(assert (=> b!6742159 (= e!4072366 (matchZipper!2555 (derivationStepZipper!2513 lt!2439191 (head!13565 s!2326)) (tail!12650 s!2326)))))

(assert (= (and d!2118298 c!1250757) b!6742158))

(assert (= (and d!2118298 (not c!1250757)) b!6742159))

(assert (=> d!2118298 m!7497990))

(declare-fun m!7498410 () Bool)

(assert (=> b!6742158 m!7498410))

(assert (=> b!6742159 m!7498238))

(assert (=> b!6742159 m!7498238))

(declare-fun m!7498412 () Bool)

(assert (=> b!6742159 m!7498412))

(assert (=> b!6742159 m!7498234))

(assert (=> b!6742159 m!7498412))

(assert (=> b!6742159 m!7498234))

(declare-fun m!7498414 () Bool)

(assert (=> b!6742159 m!7498414))

(assert (=> b!6741549 d!2118298))

(declare-fun d!2118308 () Bool)

(declare-fun c!1250758 () Bool)

(assert (=> d!2118308 (= c!1250758 (isEmpty!38225 (t!379706 s!2326)))))

(declare-fun e!4072368 () Bool)

(assert (=> d!2118308 (= (matchZipper!2555 (derivationStepZipper!2513 lt!2439191 (h!72331 s!2326)) (t!379706 s!2326)) e!4072368)))

(declare-fun b!6742161 () Bool)

(assert (=> b!6742161 (= e!4072368 (nullableZipper!2283 (derivationStepZipper!2513 lt!2439191 (h!72331 s!2326))))))

(declare-fun b!6742162 () Bool)

(assert (=> b!6742162 (= e!4072368 (matchZipper!2555 (derivationStepZipper!2513 (derivationStepZipper!2513 lt!2439191 (h!72331 s!2326)) (head!13565 (t!379706 s!2326))) (tail!12650 (t!379706 s!2326))))))

(assert (= (and d!2118308 c!1250758) b!6742161))

(assert (= (and d!2118308 (not c!1250758)) b!6742162))

(declare-fun m!7498416 () Bool)

(assert (=> d!2118308 m!7498416))

(assert (=> b!6742161 m!7498012))

(declare-fun m!7498418 () Bool)

(assert (=> b!6742161 m!7498418))

(declare-fun m!7498420 () Bool)

(assert (=> b!6742162 m!7498420))

(assert (=> b!6742162 m!7498012))

(assert (=> b!6742162 m!7498420))

(declare-fun m!7498422 () Bool)

(assert (=> b!6742162 m!7498422))

(declare-fun m!7498424 () Bool)

(assert (=> b!6742162 m!7498424))

(assert (=> b!6742162 m!7498422))

(assert (=> b!6742162 m!7498424))

(declare-fun m!7498426 () Bool)

(assert (=> b!6742162 m!7498426))

(assert (=> b!6741549 d!2118308))

(declare-fun bs!1792611 () Bool)

(declare-fun d!2118310 () Bool)

(assert (= bs!1792611 (and d!2118310 b!6741544)))

(declare-fun lambda!378817 () Int)

(assert (=> bs!1792611 (= lambda!378817 lambda!378745)))

(declare-fun bs!1792612 () Bool)

(assert (= bs!1792612 (and d!2118310 d!2118274)))

(assert (=> bs!1792612 (= lambda!378817 lambda!378801)))

(assert (=> d!2118310 true))

(assert (=> d!2118310 (= (derivationStepZipper!2513 lt!2439191 (h!72331 s!2326)) (flatMap!2050 lt!2439191 lambda!378817))))

(declare-fun bs!1792613 () Bool)

(assert (= bs!1792613 d!2118310))

(declare-fun m!7498428 () Bool)

(assert (=> bs!1792613 m!7498428))

(assert (=> b!6741549 d!2118310))

(declare-fun d!2118312 () Bool)

(declare-fun lt!2439290 () Regex!16569)

(assert (=> d!2118312 (validRegex!8305 lt!2439290)))

(assert (=> d!2118312 (= lt!2439290 (generalisedUnion!2413 (unfocusZipperList!1990 zl!343)))))

(assert (=> d!2118312 (= (unfocusZipper!2311 zl!343) lt!2439290)))

(declare-fun bs!1792614 () Bool)

(assert (= bs!1792614 d!2118312))

(declare-fun m!7498432 () Bool)

(assert (=> bs!1792614 m!7498432))

(assert (=> bs!1792614 m!7497924))

(assert (=> bs!1792614 m!7497924))

(assert (=> bs!1792614 m!7497926))

(assert (=> b!6741557 d!2118312))

(declare-fun bs!1792615 () Bool)

(declare-fun d!2118314 () Bool)

(assert (= bs!1792615 (and d!2118314 d!2118278)))

(declare-fun lambda!378818 () Int)

(assert (=> bs!1792615 (= lambda!378818 lambda!378804)))

(declare-fun bs!1792616 () Bool)

(assert (= bs!1792616 (and d!2118314 d!2118280)))

(assert (=> bs!1792616 (= lambda!378818 lambda!378805)))

(declare-fun bs!1792617 () Bool)

(assert (= bs!1792617 (and d!2118314 d!2118286)))

(assert (=> bs!1792617 (= lambda!378818 lambda!378815)))

(assert (=> d!2118314 (= (inv!84669 lt!2439184) (forall!15769 (exprs!6453 lt!2439184) lambda!378818))))

(declare-fun bs!1792618 () Bool)

(assert (= bs!1792618 d!2118314))

(declare-fun m!7498436 () Bool)

(assert (=> bs!1792618 m!7498436))

(assert (=> b!6741558 d!2118314))

(declare-fun d!2118316 () Bool)

(declare-fun lt!2439291 () Regex!16569)

(assert (=> d!2118316 (validRegex!8305 lt!2439291)))

(assert (=> d!2118316 (= lt!2439291 (generalisedUnion!2413 (unfocusZipperList!1990 (Cons!65884 lt!2439204 Nil!65884))))))

(assert (=> d!2118316 (= (unfocusZipper!2311 (Cons!65884 lt!2439204 Nil!65884)) lt!2439291)))

(declare-fun bs!1792619 () Bool)

(assert (= bs!1792619 d!2118316))

(declare-fun m!7498438 () Bool)

(assert (=> bs!1792619 m!7498438))

(declare-fun m!7498440 () Bool)

(assert (=> bs!1792619 m!7498440))

(assert (=> bs!1792619 m!7498440))

(declare-fun m!7498442 () Bool)

(assert (=> bs!1792619 m!7498442))

(assert (=> b!6741548 d!2118316))

(declare-fun bs!1792620 () Bool)

(declare-fun d!2118318 () Bool)

(assert (= bs!1792620 (and d!2118318 b!6741544)))

(declare-fun lambda!378819 () Int)

(assert (=> bs!1792620 (= lambda!378819 lambda!378745)))

(declare-fun bs!1792621 () Bool)

(assert (= bs!1792621 (and d!2118318 d!2118274)))

(assert (=> bs!1792621 (= lambda!378819 lambda!378801)))

(declare-fun bs!1792622 () Bool)

(assert (= bs!1792622 (and d!2118318 d!2118310)))

(assert (=> bs!1792622 (= lambda!378819 lambda!378817)))

(assert (=> d!2118318 true))

(assert (=> d!2118318 (= (derivationStepZipper!2513 lt!2439203 (h!72331 s!2326)) (flatMap!2050 lt!2439203 lambda!378819))))

(declare-fun bs!1792623 () Bool)

(assert (= bs!1792623 d!2118318))

(declare-fun m!7498444 () Bool)

(assert (=> bs!1792623 m!7498444))

(assert (=> b!6741537 d!2118318))

(declare-fun b!6742212 () Bool)

(declare-fun e!4072389 () Bool)

(assert (=> b!6742212 (= e!4072389 (nullable!6556 (h!72330 (exprs!6453 lt!2439204))))))

(declare-fun bm!609529 () Bool)

(declare-fun call!609534 () (InoxSet Context!11906))

(assert (=> bm!609529 (= call!609534 (derivationStepZipperDown!1797 (h!72330 (exprs!6453 lt!2439204)) (Context!11907 (t!379705 (exprs!6453 lt!2439204))) (h!72331 s!2326)))))

(declare-fun e!4072391 () (InoxSet Context!11906))

(declare-fun b!6742213 () Bool)

(assert (=> b!6742213 (= e!4072391 ((_ map or) call!609534 (derivationStepZipperUp!1723 (Context!11907 (t!379705 (exprs!6453 lt!2439204))) (h!72331 s!2326))))))

(declare-fun b!6742214 () Bool)

(declare-fun e!4072390 () (InoxSet Context!11906))

(assert (=> b!6742214 (= e!4072390 ((as const (Array Context!11906 Bool)) false))))

(declare-fun b!6742215 () Bool)

(assert (=> b!6742215 (= e!4072390 call!609534)))

(declare-fun d!2118320 () Bool)

(declare-fun c!1250760 () Bool)

(assert (=> d!2118320 (= c!1250760 e!4072389)))

(declare-fun res!2757819 () Bool)

(assert (=> d!2118320 (=> (not res!2757819) (not e!4072389))))

(assert (=> d!2118320 (= res!2757819 ((_ is Cons!65882) (exprs!6453 lt!2439204)))))

(assert (=> d!2118320 (= (derivationStepZipperUp!1723 lt!2439204 (h!72331 s!2326)) e!4072391)))

(declare-fun b!6742216 () Bool)

(assert (=> b!6742216 (= e!4072391 e!4072390)))

(declare-fun c!1250759 () Bool)

(assert (=> b!6742216 (= c!1250759 ((_ is Cons!65882) (exprs!6453 lt!2439204)))))

(assert (= (and d!2118320 res!2757819) b!6742212))

(assert (= (and d!2118320 c!1250760) b!6742213))

(assert (= (and d!2118320 (not c!1250760)) b!6742216))

(assert (= (and b!6742216 c!1250759) b!6742215))

(assert (= (and b!6742216 (not c!1250759)) b!6742214))

(assert (= (or b!6742213 b!6742215) bm!609529))

(declare-fun m!7498446 () Bool)

(assert (=> b!6742212 m!7498446))

(declare-fun m!7498448 () Bool)

(assert (=> bm!609529 m!7498448))

(declare-fun m!7498450 () Bool)

(assert (=> b!6742213 m!7498450))

(assert (=> b!6741537 d!2118320))

(declare-fun d!2118328 () Bool)

(assert (=> d!2118328 (= (flatMap!2050 lt!2439201 lambda!378745) (dynLambda!26287 lambda!378745 lt!2439204))))

(declare-fun lt!2439292 () Unit!159829)

(assert (=> d!2118328 (= lt!2439292 (choose!50258 lt!2439201 lt!2439204 lambda!378745))))

(assert (=> d!2118328 (= lt!2439201 (store ((as const (Array Context!11906 Bool)) false) lt!2439204 true))))

(assert (=> d!2118328 (= (lemmaFlatMapOnSingletonSet!1576 lt!2439201 lt!2439204 lambda!378745) lt!2439292)))

(declare-fun b_lambda!253919 () Bool)

(assert (=> (not b_lambda!253919) (not d!2118328)))

(declare-fun bs!1792628 () Bool)

(assert (= bs!1792628 d!2118328))

(assert (=> bs!1792628 m!7498006))

(declare-fun m!7498452 () Bool)

(assert (=> bs!1792628 m!7498452))

(declare-fun m!7498454 () Bool)

(assert (=> bs!1792628 m!7498454))

(assert (=> bs!1792628 m!7498000))

(assert (=> b!6741537 d!2118328))

(declare-fun d!2118332 () Bool)

(assert (=> d!2118332 (= (flatMap!2050 lt!2439203 lambda!378745) (dynLambda!26287 lambda!378745 lt!2439184))))

(declare-fun lt!2439293 () Unit!159829)

(assert (=> d!2118332 (= lt!2439293 (choose!50258 lt!2439203 lt!2439184 lambda!378745))))

(assert (=> d!2118332 (= lt!2439203 (store ((as const (Array Context!11906 Bool)) false) lt!2439184 true))))

(assert (=> d!2118332 (= (lemmaFlatMapOnSingletonSet!1576 lt!2439203 lt!2439184 lambda!378745) lt!2439293)))

(declare-fun b_lambda!253921 () Bool)

(assert (=> (not b_lambda!253921) (not d!2118332)))

(declare-fun bs!1792629 () Bool)

(assert (= bs!1792629 d!2118332))

(assert (=> bs!1792629 m!7497992))

(declare-fun m!7498456 () Bool)

(assert (=> bs!1792629 m!7498456))

(declare-fun m!7498458 () Bool)

(assert (=> bs!1792629 m!7498458))

(assert (=> bs!1792629 m!7498008))

(assert (=> b!6741537 d!2118332))

(declare-fun d!2118334 () Bool)

(assert (=> d!2118334 (= (flatMap!2050 lt!2439203 lambda!378745) (choose!50257 lt!2439203 lambda!378745))))

(declare-fun bs!1792630 () Bool)

(assert (= bs!1792630 d!2118334))

(declare-fun m!7498460 () Bool)

(assert (=> bs!1792630 m!7498460))

(assert (=> b!6741537 d!2118334))

(declare-fun b!6742217 () Bool)

(declare-fun e!4072392 () Bool)

(assert (=> b!6742217 (= e!4072392 (nullable!6556 (h!72330 (exprs!6453 lt!2439184))))))

(declare-fun bm!609530 () Bool)

(declare-fun call!609535 () (InoxSet Context!11906))

(assert (=> bm!609530 (= call!609535 (derivationStepZipperDown!1797 (h!72330 (exprs!6453 lt!2439184)) (Context!11907 (t!379705 (exprs!6453 lt!2439184))) (h!72331 s!2326)))))

(declare-fun e!4072394 () (InoxSet Context!11906))

(declare-fun b!6742218 () Bool)

(assert (=> b!6742218 (= e!4072394 ((_ map or) call!609535 (derivationStepZipperUp!1723 (Context!11907 (t!379705 (exprs!6453 lt!2439184))) (h!72331 s!2326))))))

(declare-fun b!6742219 () Bool)

(declare-fun e!4072393 () (InoxSet Context!11906))

(assert (=> b!6742219 (= e!4072393 ((as const (Array Context!11906 Bool)) false))))

(declare-fun b!6742220 () Bool)

(assert (=> b!6742220 (= e!4072393 call!609535)))

(declare-fun d!2118336 () Bool)

(declare-fun c!1250762 () Bool)

(assert (=> d!2118336 (= c!1250762 e!4072392)))

(declare-fun res!2757820 () Bool)

(assert (=> d!2118336 (=> (not res!2757820) (not e!4072392))))

(assert (=> d!2118336 (= res!2757820 ((_ is Cons!65882) (exprs!6453 lt!2439184)))))

(assert (=> d!2118336 (= (derivationStepZipperUp!1723 lt!2439184 (h!72331 s!2326)) e!4072394)))

(declare-fun b!6742221 () Bool)

(assert (=> b!6742221 (= e!4072394 e!4072393)))

(declare-fun c!1250761 () Bool)

(assert (=> b!6742221 (= c!1250761 ((_ is Cons!65882) (exprs!6453 lt!2439184)))))

(assert (= (and d!2118336 res!2757820) b!6742217))

(assert (= (and d!2118336 c!1250762) b!6742218))

(assert (= (and d!2118336 (not c!1250762)) b!6742221))

(assert (= (and b!6742221 c!1250761) b!6742220))

(assert (= (and b!6742221 (not c!1250761)) b!6742219))

(assert (= (or b!6742218 b!6742220) bm!609530))

(declare-fun m!7498462 () Bool)

(assert (=> b!6742217 m!7498462))

(declare-fun m!7498464 () Bool)

(assert (=> bm!609530 m!7498464))

(declare-fun m!7498466 () Bool)

(assert (=> b!6742218 m!7498466))

(assert (=> b!6741537 d!2118336))

(declare-fun d!2118338 () Bool)

(assert (=> d!2118338 (= (flatMap!2050 lt!2439201 lambda!378745) (choose!50257 lt!2439201 lambda!378745))))

(declare-fun bs!1792631 () Bool)

(assert (= bs!1792631 d!2118338))

(declare-fun m!7498468 () Bool)

(assert (=> bs!1792631 m!7498468))

(assert (=> b!6741537 d!2118338))

(declare-fun d!2118340 () Bool)

(declare-fun lt!2439294 () Regex!16569)

(assert (=> d!2118340 (validRegex!8305 lt!2439294)))

(assert (=> d!2118340 (= lt!2439294 (generalisedUnion!2413 (unfocusZipperList!1990 (Cons!65884 lt!2439198 Nil!65884))))))

(assert (=> d!2118340 (= (unfocusZipper!2311 (Cons!65884 lt!2439198 Nil!65884)) lt!2439294)))

(declare-fun bs!1792632 () Bool)

(assert (= bs!1792632 d!2118340))

(declare-fun m!7498470 () Bool)

(assert (=> bs!1792632 m!7498470))

(declare-fun m!7498472 () Bool)

(assert (=> bs!1792632 m!7498472))

(assert (=> bs!1792632 m!7498472))

(declare-fun m!7498474 () Bool)

(assert (=> bs!1792632 m!7498474))

(assert (=> b!6741536 d!2118340))

(declare-fun bs!1792633 () Bool)

(declare-fun d!2118342 () Bool)

(assert (= bs!1792633 (and d!2118342 d!2118278)))

(declare-fun lambda!378822 () Int)

(assert (=> bs!1792633 (= lambda!378822 lambda!378804)))

(declare-fun bs!1792634 () Bool)

(assert (= bs!1792634 (and d!2118342 d!2118280)))

(assert (=> bs!1792634 (= lambda!378822 lambda!378805)))

(declare-fun bs!1792635 () Bool)

(assert (= bs!1792635 (and d!2118342 d!2118286)))

(assert (=> bs!1792635 (= lambda!378822 lambda!378815)))

(declare-fun bs!1792636 () Bool)

(assert (= bs!1792636 (and d!2118342 d!2118314)))

(assert (=> bs!1792636 (= lambda!378822 lambda!378818)))

(declare-fun b!6742242 () Bool)

(declare-fun e!4072409 () Bool)

(declare-fun lt!2439297 () Regex!16569)

(declare-fun isUnion!1373 (Regex!16569) Bool)

(assert (=> b!6742242 (= e!4072409 (isUnion!1373 lt!2439297))))

(declare-fun b!6742243 () Bool)

(declare-fun e!4072412 () Bool)

(assert (=> b!6742243 (= e!4072412 (isEmpty!38230 (t!379705 (unfocusZipperList!1990 zl!343))))))

(declare-fun b!6742245 () Bool)

(declare-fun e!4072407 () Regex!16569)

(assert (=> b!6742245 (= e!4072407 (h!72330 (unfocusZipperList!1990 zl!343)))))

(declare-fun b!6742246 () Bool)

(declare-fun e!4072410 () Bool)

(declare-fun e!4072411 () Bool)

(assert (=> b!6742246 (= e!4072410 e!4072411)))

(declare-fun c!1250772 () Bool)

(assert (=> b!6742246 (= c!1250772 (isEmpty!38230 (unfocusZipperList!1990 zl!343)))))

(declare-fun b!6742247 () Bool)

(assert (=> b!6742247 (= e!4072411 e!4072409)))

(declare-fun c!1250771 () Bool)

(assert (=> b!6742247 (= c!1250771 (isEmpty!38230 (tail!12651 (unfocusZipperList!1990 zl!343))))))

(declare-fun b!6742248 () Bool)

(declare-fun e!4072408 () Regex!16569)

(assert (=> b!6742248 (= e!4072408 (Union!16569 (h!72330 (unfocusZipperList!1990 zl!343)) (generalisedUnion!2413 (t!379705 (unfocusZipperList!1990 zl!343)))))))

(declare-fun b!6742249 () Bool)

(assert (=> b!6742249 (= e!4072407 e!4072408)))

(declare-fun c!1250773 () Bool)

(assert (=> b!6742249 (= c!1250773 ((_ is Cons!65882) (unfocusZipperList!1990 zl!343)))))

(declare-fun b!6742250 () Bool)

(assert (=> b!6742250 (= e!4072408 EmptyLang!16569)))

(declare-fun b!6742251 () Bool)

(assert (=> b!6742251 (= e!4072409 (= lt!2439297 (head!13566 (unfocusZipperList!1990 zl!343))))))

(assert (=> d!2118342 e!4072410))

(declare-fun res!2757825 () Bool)

(assert (=> d!2118342 (=> (not res!2757825) (not e!4072410))))

(assert (=> d!2118342 (= res!2757825 (validRegex!8305 lt!2439297))))

(assert (=> d!2118342 (= lt!2439297 e!4072407)))

(declare-fun c!1250774 () Bool)

(assert (=> d!2118342 (= c!1250774 e!4072412)))

(declare-fun res!2757826 () Bool)

(assert (=> d!2118342 (=> (not res!2757826) (not e!4072412))))

(assert (=> d!2118342 (= res!2757826 ((_ is Cons!65882) (unfocusZipperList!1990 zl!343)))))

(assert (=> d!2118342 (forall!15769 (unfocusZipperList!1990 zl!343) lambda!378822)))

(assert (=> d!2118342 (= (generalisedUnion!2413 (unfocusZipperList!1990 zl!343)) lt!2439297)))

(declare-fun b!6742244 () Bool)

(declare-fun isEmptyLang!1943 (Regex!16569) Bool)

(assert (=> b!6742244 (= e!4072411 (isEmptyLang!1943 lt!2439297))))

(assert (= (and d!2118342 res!2757826) b!6742243))

(assert (= (and d!2118342 c!1250774) b!6742245))

(assert (= (and d!2118342 (not c!1250774)) b!6742249))

(assert (= (and b!6742249 c!1250773) b!6742248))

(assert (= (and b!6742249 (not c!1250773)) b!6742250))

(assert (= (and d!2118342 res!2757825) b!6742246))

(assert (= (and b!6742246 c!1250772) b!6742244))

(assert (= (and b!6742246 (not c!1250772)) b!6742247))

(assert (= (and b!6742247 c!1250771) b!6742251))

(assert (= (and b!6742247 (not c!1250771)) b!6742242))

(declare-fun m!7498476 () Bool)

(assert (=> b!6742244 m!7498476))

(declare-fun m!7498478 () Bool)

(assert (=> b!6742242 m!7498478))

(assert (=> b!6742251 m!7497924))

(declare-fun m!7498480 () Bool)

(assert (=> b!6742251 m!7498480))

(assert (=> b!6742246 m!7497924))

(declare-fun m!7498482 () Bool)

(assert (=> b!6742246 m!7498482))

(declare-fun m!7498484 () Bool)

(assert (=> d!2118342 m!7498484))

(assert (=> d!2118342 m!7497924))

(declare-fun m!7498486 () Bool)

(assert (=> d!2118342 m!7498486))

(assert (=> b!6742247 m!7497924))

(declare-fun m!7498488 () Bool)

(assert (=> b!6742247 m!7498488))

(assert (=> b!6742247 m!7498488))

(declare-fun m!7498490 () Bool)

(assert (=> b!6742247 m!7498490))

(declare-fun m!7498492 () Bool)

(assert (=> b!6742248 m!7498492))

(declare-fun m!7498494 () Bool)

(assert (=> b!6742243 m!7498494))

(assert (=> b!6741555 d!2118342))

(declare-fun bs!1792637 () Bool)

(declare-fun d!2118344 () Bool)

(assert (= bs!1792637 (and d!2118344 d!2118286)))

(declare-fun lambda!378825 () Int)

(assert (=> bs!1792637 (= lambda!378825 lambda!378815)))

(declare-fun bs!1792638 () Bool)

(assert (= bs!1792638 (and d!2118344 d!2118280)))

(assert (=> bs!1792638 (= lambda!378825 lambda!378805)))

(declare-fun bs!1792639 () Bool)

(assert (= bs!1792639 (and d!2118344 d!2118342)))

(assert (=> bs!1792639 (= lambda!378825 lambda!378822)))

(declare-fun bs!1792640 () Bool)

(assert (= bs!1792640 (and d!2118344 d!2118314)))

(assert (=> bs!1792640 (= lambda!378825 lambda!378818)))

(declare-fun bs!1792641 () Bool)

(assert (= bs!1792641 (and d!2118344 d!2118278)))

(assert (=> bs!1792641 (= lambda!378825 lambda!378804)))

(declare-fun lt!2439300 () List!66006)

(assert (=> d!2118344 (forall!15769 lt!2439300 lambda!378825)))

(declare-fun e!4072415 () List!66006)

(assert (=> d!2118344 (= lt!2439300 e!4072415)))

(declare-fun c!1250777 () Bool)

(assert (=> d!2118344 (= c!1250777 ((_ is Cons!65884) zl!343))))

(assert (=> d!2118344 (= (unfocusZipperList!1990 zl!343) lt!2439300)))

(declare-fun b!6742256 () Bool)

(assert (=> b!6742256 (= e!4072415 (Cons!65882 (generalisedConcat!2166 (exprs!6453 (h!72332 zl!343))) (unfocusZipperList!1990 (t!379707 zl!343))))))

(declare-fun b!6742257 () Bool)

(assert (=> b!6742257 (= e!4072415 Nil!65882)))

(assert (= (and d!2118344 c!1250777) b!6742256))

(assert (= (and d!2118344 (not c!1250777)) b!6742257))

(declare-fun m!7498496 () Bool)

(assert (=> d!2118344 m!7498496))

(assert (=> b!6742256 m!7497938))

(declare-fun m!7498498 () Bool)

(assert (=> b!6742256 m!7498498))

(assert (=> b!6741555 d!2118344))

(declare-fun b!6742271 () Bool)

(declare-fun e!4072418 () Bool)

(declare-fun tp!1848237 () Bool)

(declare-fun tp!1848234 () Bool)

(assert (=> b!6742271 (= e!4072418 (and tp!1848237 tp!1848234))))

(declare-fun b!6742268 () Bool)

(assert (=> b!6742268 (= e!4072418 tp_is_empty!42391)))

(declare-fun b!6742269 () Bool)

(declare-fun tp!1848238 () Bool)

(declare-fun tp!1848235 () Bool)

(assert (=> b!6742269 (= e!4072418 (and tp!1848238 tp!1848235))))

(assert (=> b!6741559 (= tp!1848157 e!4072418)))

(declare-fun b!6742270 () Bool)

(declare-fun tp!1848236 () Bool)

(assert (=> b!6742270 (= e!4072418 tp!1848236)))

(assert (= (and b!6741559 ((_ is ElementMatch!16569) (reg!16898 r!7292))) b!6742268))

(assert (= (and b!6741559 ((_ is Concat!25414) (reg!16898 r!7292))) b!6742269))

(assert (= (and b!6741559 ((_ is Star!16569) (reg!16898 r!7292))) b!6742270))

(assert (= (and b!6741559 ((_ is Union!16569) (reg!16898 r!7292))) b!6742271))

(declare-fun b!6742275 () Bool)

(declare-fun e!4072419 () Bool)

(declare-fun tp!1848242 () Bool)

(declare-fun tp!1848239 () Bool)

(assert (=> b!6742275 (= e!4072419 (and tp!1848242 tp!1848239))))

(declare-fun b!6742272 () Bool)

(assert (=> b!6742272 (= e!4072419 tp_is_empty!42391)))

(declare-fun b!6742273 () Bool)

(declare-fun tp!1848243 () Bool)

(declare-fun tp!1848240 () Bool)

(assert (=> b!6742273 (= e!4072419 (and tp!1848243 tp!1848240))))

(assert (=> b!6741542 (= tp!1848160 e!4072419)))

(declare-fun b!6742274 () Bool)

(declare-fun tp!1848241 () Bool)

(assert (=> b!6742274 (= e!4072419 tp!1848241)))

(assert (= (and b!6741542 ((_ is ElementMatch!16569) (regOne!33650 r!7292))) b!6742272))

(assert (= (and b!6741542 ((_ is Concat!25414) (regOne!33650 r!7292))) b!6742273))

(assert (= (and b!6741542 ((_ is Star!16569) (regOne!33650 r!7292))) b!6742274))

(assert (= (and b!6741542 ((_ is Union!16569) (regOne!33650 r!7292))) b!6742275))

(declare-fun b!6742279 () Bool)

(declare-fun e!4072420 () Bool)

(declare-fun tp!1848247 () Bool)

(declare-fun tp!1848244 () Bool)

(assert (=> b!6742279 (= e!4072420 (and tp!1848247 tp!1848244))))

(declare-fun b!6742276 () Bool)

(assert (=> b!6742276 (= e!4072420 tp_is_empty!42391)))

(declare-fun b!6742277 () Bool)

(declare-fun tp!1848248 () Bool)

(declare-fun tp!1848245 () Bool)

(assert (=> b!6742277 (= e!4072420 (and tp!1848248 tp!1848245))))

(assert (=> b!6741542 (= tp!1848163 e!4072420)))

(declare-fun b!6742278 () Bool)

(declare-fun tp!1848246 () Bool)

(assert (=> b!6742278 (= e!4072420 tp!1848246)))

(assert (= (and b!6741542 ((_ is ElementMatch!16569) (regTwo!33650 r!7292))) b!6742276))

(assert (= (and b!6741542 ((_ is Concat!25414) (regTwo!33650 r!7292))) b!6742277))

(assert (= (and b!6741542 ((_ is Star!16569) (regTwo!33650 r!7292))) b!6742278))

(assert (= (and b!6741542 ((_ is Union!16569) (regTwo!33650 r!7292))) b!6742279))

(declare-fun b!6742283 () Bool)

(declare-fun e!4072421 () Bool)

(declare-fun tp!1848252 () Bool)

(declare-fun tp!1848249 () Bool)

(assert (=> b!6742283 (= e!4072421 (and tp!1848252 tp!1848249))))

(declare-fun b!6742280 () Bool)

(assert (=> b!6742280 (= e!4072421 tp_is_empty!42391)))

(declare-fun b!6742281 () Bool)

(declare-fun tp!1848253 () Bool)

(declare-fun tp!1848250 () Bool)

(assert (=> b!6742281 (= e!4072421 (and tp!1848253 tp!1848250))))

(assert (=> b!6741556 (= tp!1848158 e!4072421)))

(declare-fun b!6742282 () Bool)

(declare-fun tp!1848251 () Bool)

(assert (=> b!6742282 (= e!4072421 tp!1848251)))

(assert (= (and b!6741556 ((_ is ElementMatch!16569) (regOne!33651 r!7292))) b!6742280))

(assert (= (and b!6741556 ((_ is Concat!25414) (regOne!33651 r!7292))) b!6742281))

(assert (= (and b!6741556 ((_ is Star!16569) (regOne!33651 r!7292))) b!6742282))

(assert (= (and b!6741556 ((_ is Union!16569) (regOne!33651 r!7292))) b!6742283))

(declare-fun b!6742287 () Bool)

(declare-fun e!4072422 () Bool)

(declare-fun tp!1848257 () Bool)

(declare-fun tp!1848254 () Bool)

(assert (=> b!6742287 (= e!4072422 (and tp!1848257 tp!1848254))))

(declare-fun b!6742284 () Bool)

(assert (=> b!6742284 (= e!4072422 tp_is_empty!42391)))

(declare-fun b!6742285 () Bool)

(declare-fun tp!1848258 () Bool)

(declare-fun tp!1848255 () Bool)

(assert (=> b!6742285 (= e!4072422 (and tp!1848258 tp!1848255))))

(assert (=> b!6741556 (= tp!1848159 e!4072422)))

(declare-fun b!6742286 () Bool)

(declare-fun tp!1848256 () Bool)

(assert (=> b!6742286 (= e!4072422 tp!1848256)))

(assert (= (and b!6741556 ((_ is ElementMatch!16569) (regTwo!33651 r!7292))) b!6742284))

(assert (= (and b!6741556 ((_ is Concat!25414) (regTwo!33651 r!7292))) b!6742285))

(assert (= (and b!6741556 ((_ is Star!16569) (regTwo!33651 r!7292))) b!6742286))

(assert (= (and b!6741556 ((_ is Union!16569) (regTwo!33651 r!7292))) b!6742287))

(declare-fun b!6742292 () Bool)

(declare-fun e!4072425 () Bool)

(declare-fun tp!1848263 () Bool)

(declare-fun tp!1848264 () Bool)

(assert (=> b!6742292 (= e!4072425 (and tp!1848263 tp!1848264))))

(assert (=> b!6741532 (= tp!1848165 e!4072425)))

(assert (= (and b!6741532 ((_ is Cons!65882) (exprs!6453 (h!72332 zl!343)))) b!6742292))

(declare-fun b!6742300 () Bool)

(declare-fun e!4072431 () Bool)

(declare-fun tp!1848269 () Bool)

(assert (=> b!6742300 (= e!4072431 tp!1848269)))

(declare-fun e!4072430 () Bool)

(declare-fun b!6742299 () Bool)

(declare-fun tp!1848270 () Bool)

(assert (=> b!6742299 (= e!4072430 (and (inv!84669 (h!72332 (t!379707 zl!343))) e!4072431 tp!1848270))))

(assert (=> b!6741551 (= tp!1848156 e!4072430)))

(assert (= b!6742299 b!6742300))

(assert (= (and b!6741551 ((_ is Cons!65884) (t!379707 zl!343))) b!6742299))

(declare-fun m!7498500 () Bool)

(assert (=> b!6742299 m!7498500))

(declare-fun b!6742301 () Bool)

(declare-fun e!4072432 () Bool)

(declare-fun tp!1848271 () Bool)

(declare-fun tp!1848272 () Bool)

(assert (=> b!6742301 (= e!4072432 (and tp!1848271 tp!1848272))))

(assert (=> b!6741546 (= tp!1848162 e!4072432)))

(assert (= (and b!6741546 ((_ is Cons!65882) (exprs!6453 setElem!46037))) b!6742301))

(declare-fun condSetEmpty!46043 () Bool)

(assert (=> setNonEmpty!46037 (= condSetEmpty!46043 (= setRest!46037 ((as const (Array Context!11906 Bool)) false)))))

(declare-fun setRes!46043 () Bool)

(assert (=> setNonEmpty!46037 (= tp!1848161 setRes!46043)))

(declare-fun setIsEmpty!46043 () Bool)

(assert (=> setIsEmpty!46043 setRes!46043))

(declare-fun setElem!46043 () Context!11906)

(declare-fun setNonEmpty!46043 () Bool)

(declare-fun tp!1848278 () Bool)

(declare-fun e!4072435 () Bool)

(assert (=> setNonEmpty!46043 (= setRes!46043 (and tp!1848278 (inv!84669 setElem!46043) e!4072435))))

(declare-fun setRest!46043 () (InoxSet Context!11906))

(assert (=> setNonEmpty!46043 (= setRest!46037 ((_ map or) (store ((as const (Array Context!11906 Bool)) false) setElem!46043 true) setRest!46043))))

(declare-fun b!6742306 () Bool)

(declare-fun tp!1848277 () Bool)

(assert (=> b!6742306 (= e!4072435 tp!1848277)))

(assert (= (and setNonEmpty!46037 condSetEmpty!46043) setIsEmpty!46043))

(assert (= (and setNonEmpty!46037 (not condSetEmpty!46043)) setNonEmpty!46043))

(assert (= setNonEmpty!46043 b!6742306))

(declare-fun m!7498502 () Bool)

(assert (=> setNonEmpty!46043 m!7498502))

(declare-fun b!6742311 () Bool)

(declare-fun e!4072438 () Bool)

(declare-fun tp!1848281 () Bool)

(assert (=> b!6742311 (= e!4072438 (and tp_is_empty!42391 tp!1848281))))

(assert (=> b!6741550 (= tp!1848164 e!4072438)))

(assert (= (and b!6741550 ((_ is Cons!65883) (t!379706 s!2326))) b!6742311))

(declare-fun b_lambda!253923 () Bool)

(assert (= b_lambda!253905 (or b!6741544 b_lambda!253923)))

(declare-fun bs!1792642 () Bool)

(declare-fun d!2118346 () Bool)

(assert (= bs!1792642 (and d!2118346 b!6741544)))

(assert (=> bs!1792642 (= (dynLambda!26287 lambda!378745 (h!72332 zl!343)) (derivationStepZipperUp!1723 (h!72332 zl!343) (h!72331 s!2326)))))

(assert (=> bs!1792642 m!7497960))

(assert (=> d!2118256 d!2118346))

(declare-fun b_lambda!253925 () Bool)

(assert (= b_lambda!253921 (or b!6741544 b_lambda!253925)))

(declare-fun bs!1792643 () Bool)

(declare-fun d!2118348 () Bool)

(assert (= bs!1792643 (and d!2118348 b!6741544)))

(assert (=> bs!1792643 (= (dynLambda!26287 lambda!378745 lt!2439184) (derivationStepZipperUp!1723 lt!2439184 (h!72331 s!2326)))))

(assert (=> bs!1792643 m!7498004))

(assert (=> d!2118332 d!2118348))

(declare-fun b_lambda!253927 () Bool)

(assert (= b_lambda!253903 (or b!6741544 b_lambda!253927)))

(declare-fun bs!1792644 () Bool)

(declare-fun d!2118350 () Bool)

(assert (= bs!1792644 (and d!2118350 b!6741544)))

(assert (=> bs!1792644 (= (dynLambda!26287 lambda!378745 lt!2439198) (derivationStepZipperUp!1723 lt!2439198 (h!72331 s!2326)))))

(assert (=> bs!1792644 m!7497948))

(assert (=> d!2118228 d!2118350))

(declare-fun b_lambda!253929 () Bool)

(assert (= b_lambda!253919 (or b!6741544 b_lambda!253929)))

(declare-fun bs!1792645 () Bool)

(declare-fun d!2118352 () Bool)

(assert (= bs!1792645 (and d!2118352 b!6741544)))

(assert (=> bs!1792645 (= (dynLambda!26287 lambda!378745 lt!2439204) (derivationStepZipperUp!1723 lt!2439204 (h!72331 s!2326)))))

(assert (=> bs!1792645 m!7497998))

(assert (=> d!2118328 d!2118352))

(check-sat (not b!6742300) (not b!6742281) (not b!6742162) (not b!6741753) (not b!6742283) (not b!6742138) (not b!6741809) (not bm!609513) (not d!2118278) (not b!6742096) (not bm!609494) (not b!6742278) (not b!6742246) (not b!6741919) (not bm!609487) (not bm!609518) (not b!6742135) (not b!6742299) (not bm!609529) (not setNonEmpty!46043) (not b!6742141) (not d!2118286) (not b!6742247) (not b!6741759) (not b!6742133) (not b!6741757) (not d!2118344) (not b!6742285) (not b!6741988) (not b!6741872) (not d!2118246) (not d!2118338) (not b!6742243) (not bm!609500) (not b!6741871) (not b!6742301) (not bm!609512) (not b!6742161) (not b!6742269) (not d!2118328) (not b!6742256) (not bm!609526) (not d!2118172) (not bs!1792643) (not d!2118316) (not bm!609504) (not b!6742212) (not b!6741991) (not bm!609514) (not d!2118332) (not b!6742279) (not d!2118198) (not d!2118314) (not d!2118334) (not bm!609499) (not b!6741754) (not b_lambda!253923) (not d!2118200) (not b!6742002) (not b!6742287) (not d!2118342) (not b!6742217) (not b!6742271) (not d!2118170) (not bs!1792645) (not bs!1792644) (not d!2118298) (not bm!609503) (not d!2118224) (not d!2118188) (not b!6742282) (not b!6741756) (not b!6742018) (not bm!609489) (not d!2118168) (not b!6741987) (not b_lambda!253927) (not d!2118256) (not b!6742273) (not b!6742270) tp_is_empty!42391 (not d!2118252) (not b!6742274) (not b!6741923) (not b!6741842) (not d!2118192) (not bm!609525) (not b!6742034) (not b!6741755) (not d!2118274) (not d!2118280) (not b!6742311) (not b!6741985) (not d!2118340) (not d!2118318) (not d!2118228) (not b!6742244) (not d!2118308) (not d!2118250) (not b!6742292) (not d!2118180) (not b!6742286) (not b_lambda!253929) (not b!6741997) (not b!6741996) (not b!6742140) (not b!6742035) (not b!6742248) (not b!6742306) (not b!6742275) (not d!2118312) (not d!2118194) (not b!6742003) (not d!2118310) (not bs!1792642) (not b!6742218) (not b!6742159) (not b!6742136) (not b!6742251) (not bm!609530) (not b_lambda!253925) (not b!6742132) (not bm!609488) (not b!6742213) (not b!6742242) (not b!6742277) (not b!6742158))
(check-sat)
(get-model)

(declare-fun d!2118372 () Bool)

(declare-fun nullableFct!2469 (Regex!16569) Bool)

(assert (=> d!2118372 (= (nullable!6556 (h!72330 (exprs!6453 lt!2439204))) (nullableFct!2469 (h!72330 (exprs!6453 lt!2439204))))))

(declare-fun bs!1792666 () Bool)

(assert (= bs!1792666 d!2118372))

(declare-fun m!7498602 () Bool)

(assert (=> bs!1792666 m!7498602))

(assert (=> b!6742212 d!2118372))

(declare-fun b!6742389 () Bool)

(declare-fun e!4072489 () Bool)

(assert (=> b!6742389 (= e!4072489 (nullable!6556 (h!72330 (exprs!6453 (Context!11907 (t!379705 (exprs!6453 (h!72332 zl!343))))))))))

(declare-fun bm!609540 () Bool)

(declare-fun call!609545 () (InoxSet Context!11906))

(assert (=> bm!609540 (= call!609545 (derivationStepZipperDown!1797 (h!72330 (exprs!6453 (Context!11907 (t!379705 (exprs!6453 (h!72332 zl!343)))))) (Context!11907 (t!379705 (exprs!6453 (Context!11907 (t!379705 (exprs!6453 (h!72332 zl!343))))))) (h!72331 s!2326)))))

(declare-fun b!6742390 () Bool)

(declare-fun e!4072491 () (InoxSet Context!11906))

(assert (=> b!6742390 (= e!4072491 ((_ map or) call!609545 (derivationStepZipperUp!1723 (Context!11907 (t!379705 (exprs!6453 (Context!11907 (t!379705 (exprs!6453 (h!72332 zl!343))))))) (h!72331 s!2326))))))

(declare-fun b!6742391 () Bool)

(declare-fun e!4072490 () (InoxSet Context!11906))

(assert (=> b!6742391 (= e!4072490 ((as const (Array Context!11906 Bool)) false))))

(declare-fun b!6742392 () Bool)

(assert (=> b!6742392 (= e!4072490 call!609545)))

(declare-fun d!2118376 () Bool)

(declare-fun c!1250800 () Bool)

(assert (=> d!2118376 (= c!1250800 e!4072489)))

(declare-fun res!2757859 () Bool)

(assert (=> d!2118376 (=> (not res!2757859) (not e!4072489))))

(assert (=> d!2118376 (= res!2757859 ((_ is Cons!65882) (exprs!6453 (Context!11907 (t!379705 (exprs!6453 (h!72332 zl!343)))))))))

(assert (=> d!2118376 (= (derivationStepZipperUp!1723 (Context!11907 (t!379705 (exprs!6453 (h!72332 zl!343)))) (h!72331 s!2326)) e!4072491)))

(declare-fun b!6742393 () Bool)

(assert (=> b!6742393 (= e!4072491 e!4072490)))

(declare-fun c!1250799 () Bool)

(assert (=> b!6742393 (= c!1250799 ((_ is Cons!65882) (exprs!6453 (Context!11907 (t!379705 (exprs!6453 (h!72332 zl!343)))))))))

(assert (= (and d!2118376 res!2757859) b!6742389))

(assert (= (and d!2118376 c!1250800) b!6742390))

(assert (= (and d!2118376 (not c!1250800)) b!6742393))

(assert (= (and b!6742393 c!1250799) b!6742392))

(assert (= (and b!6742393 (not c!1250799)) b!6742391))

(assert (= (or b!6742390 b!6742392) bm!609540))

(declare-fun m!7498610 () Bool)

(assert (=> b!6742389 m!7498610))

(declare-fun m!7498612 () Bool)

(assert (=> bm!609540 m!7498612))

(declare-fun m!7498614 () Bool)

(assert (=> b!6742390 m!7498614))

(assert (=> b!6742003 d!2118376))

(assert (=> d!2118198 d!2118170))

(declare-fun d!2118382 () Bool)

(assert (=> d!2118382 (= (Exists!3637 lambda!378776) (choose!50252 lambda!378776))))

(declare-fun bs!1792667 () Bool)

(assert (= bs!1792667 d!2118382))

(declare-fun m!7498616 () Bool)

(assert (=> bs!1792667 m!7498616))

(assert (=> d!2118198 d!2118382))

(declare-fun bs!1792678 () Bool)

(declare-fun d!2118384 () Bool)

(assert (= bs!1792678 (and d!2118384 d!2118198)))

(declare-fun lambda!378833 () Int)

(assert (=> bs!1792678 (= lambda!378833 lambda!378776)))

(declare-fun bs!1792679 () Bool)

(assert (= bs!1792679 (and d!2118384 d!2118172)))

(assert (=> bs!1792679 (not (= lambda!378833 lambda!378757))))

(declare-fun bs!1792681 () Bool)

(assert (= bs!1792681 (and d!2118384 b!6741534)))

(assert (=> bs!1792681 (not (= lambda!378833 lambda!378744))))

(declare-fun bs!1792682 () Bool)

(assert (= bs!1792682 (and d!2118384 b!6741920)))

(assert (=> bs!1792682 (not (= lambda!378833 lambda!378794))))

(assert (=> bs!1792681 (not (= lambda!378833 lambda!378743))))

(assert (=> bs!1792679 (= lambda!378833 lambda!378756)))

(declare-fun bs!1792685 () Bool)

(assert (= bs!1792685 (and d!2118384 d!2118180)))

(assert (=> bs!1792685 (not (= lambda!378833 lambda!378767))))

(declare-fun bs!1792686 () Bool)

(assert (= bs!1792686 (and d!2118384 b!6741926)))

(assert (=> bs!1792686 (not (= lambda!378833 lambda!378795))))

(assert (=> bs!1792685 (= (= r!7292 (Star!16569 (reg!16898 r!7292))) (= lambda!378833 lambda!378765))))

(assert (=> bs!1792681 (= lambda!378833 lambda!378742)))

(assert (=> d!2118384 true))

(assert (=> d!2118384 true))

(assert (=> d!2118384 true))

(assert (=> d!2118384 (= (isDefined!13159 (findConcatSeparation!2870 (reg!16898 r!7292) r!7292 Nil!65883 s!2326 s!2326)) (Exists!3637 lambda!378833))))

(assert (=> d!2118384 true))

(declare-fun _$89!2983 () Unit!159829)

(assert (=> d!2118384 (= (choose!50255 (reg!16898 r!7292) r!7292 s!2326) _$89!2983)))

(declare-fun bs!1792690 () Bool)

(assert (= bs!1792690 d!2118384))

(assert (=> bs!1792690 m!7497984))

(assert (=> bs!1792690 m!7497984))

(assert (=> bs!1792690 m!7497986))

(declare-fun m!7498618 () Bool)

(assert (=> bs!1792690 m!7498618))

(assert (=> d!2118198 d!2118384))

(assert (=> d!2118198 d!2118194))

(declare-fun b!6742409 () Bool)

(declare-fun e!4072502 () Bool)

(declare-fun call!609548 () Bool)

(assert (=> b!6742409 (= e!4072502 call!609548)))

(declare-fun b!6742410 () Bool)

(declare-fun e!4072504 () Bool)

(declare-fun e!4072507 () Bool)

(assert (=> b!6742410 (= e!4072504 e!4072507)))

(declare-fun c!1250806 () Bool)

(assert (=> b!6742410 (= c!1250806 ((_ is Union!16569) (reg!16898 r!7292)))))

(declare-fun b!6742411 () Bool)

(declare-fun e!4072506 () Bool)

(assert (=> b!6742411 (= e!4072506 e!4072502)))

(declare-fun res!2757867 () Bool)

(assert (=> b!6742411 (=> (not res!2757867) (not e!4072502))))

(declare-fun call!609550 () Bool)

(assert (=> b!6742411 (= res!2757867 call!609550)))

(declare-fun b!6742412 () Bool)

(declare-fun e!4072503 () Bool)

(declare-fun call!609549 () Bool)

(assert (=> b!6742412 (= e!4072503 call!609549)))

(declare-fun bm!609543 () Bool)

(assert (=> bm!609543 (= call!609550 (validRegex!8305 (ite c!1250806 (regOne!33651 (reg!16898 r!7292)) (regOne!33650 (reg!16898 r!7292)))))))

(declare-fun b!6742413 () Bool)

(declare-fun e!4072505 () Bool)

(assert (=> b!6742413 (= e!4072505 call!609548)))

(declare-fun b!6742414 () Bool)

(declare-fun res!2757869 () Bool)

(assert (=> b!6742414 (=> (not res!2757869) (not e!4072505))))

(assert (=> b!6742414 (= res!2757869 call!609550)))

(assert (=> b!6742414 (= e!4072507 e!4072505)))

(declare-fun c!1250805 () Bool)

(declare-fun bm!609544 () Bool)

(assert (=> bm!609544 (= call!609549 (validRegex!8305 (ite c!1250805 (reg!16898 (reg!16898 r!7292)) (ite c!1250806 (regTwo!33651 (reg!16898 r!7292)) (regTwo!33650 (reg!16898 r!7292))))))))

(declare-fun b!6742416 () Bool)

(assert (=> b!6742416 (= e!4072504 e!4072503)))

(declare-fun res!2757871 () Bool)

(assert (=> b!6742416 (= res!2757871 (not (nullable!6556 (reg!16898 (reg!16898 r!7292)))))))

(assert (=> b!6742416 (=> (not res!2757871) (not e!4072503))))

(declare-fun b!6742417 () Bool)

(declare-fun res!2757870 () Bool)

(assert (=> b!6742417 (=> res!2757870 e!4072506)))

(assert (=> b!6742417 (= res!2757870 (not ((_ is Concat!25414) (reg!16898 r!7292))))))

(assert (=> b!6742417 (= e!4072507 e!4072506)))

(declare-fun bm!609545 () Bool)

(assert (=> bm!609545 (= call!609548 call!609549)))

(declare-fun d!2118388 () Bool)

(declare-fun res!2757868 () Bool)

(declare-fun e!4072501 () Bool)

(assert (=> d!2118388 (=> res!2757868 e!4072501)))

(assert (=> d!2118388 (= res!2757868 ((_ is ElementMatch!16569) (reg!16898 r!7292)))))

(assert (=> d!2118388 (= (validRegex!8305 (reg!16898 r!7292)) e!4072501)))

(declare-fun b!6742415 () Bool)

(assert (=> b!6742415 (= e!4072501 e!4072504)))

(assert (=> b!6742415 (= c!1250805 ((_ is Star!16569) (reg!16898 r!7292)))))

(assert (= (and d!2118388 (not res!2757868)) b!6742415))

(assert (= (and b!6742415 c!1250805) b!6742416))

(assert (= (and b!6742415 (not c!1250805)) b!6742410))

(assert (= (and b!6742416 res!2757871) b!6742412))

(assert (= (and b!6742410 c!1250806) b!6742414))

(assert (= (and b!6742410 (not c!1250806)) b!6742417))

(assert (= (and b!6742414 res!2757869) b!6742413))

(assert (= (and b!6742417 (not res!2757870)) b!6742411))

(assert (= (and b!6742411 res!2757867) b!6742409))

(assert (= (or b!6742413 b!6742409) bm!609545))

(assert (= (or b!6742414 b!6742411) bm!609543))

(assert (= (or b!6742412 bm!609545) bm!609544))

(declare-fun m!7498620 () Bool)

(assert (=> bm!609543 m!7498620))

(declare-fun m!7498622 () Bool)

(assert (=> bm!609544 m!7498622))

(declare-fun m!7498624 () Bool)

(assert (=> b!6742416 m!7498624))

(assert (=> d!2118198 d!2118388))

(declare-fun b!6742418 () Bool)

(declare-fun e!4072508 () Bool)

(assert (=> b!6742418 (= e!4072508 (nullable!6556 (h!72330 (exprs!6453 (Context!11907 (t!379705 (exprs!6453 (Context!11907 (Cons!65882 r!7292 Nil!65882)))))))))))

(declare-fun bm!609546 () Bool)

(declare-fun call!609551 () (InoxSet Context!11906))

(assert (=> bm!609546 (= call!609551 (derivationStepZipperDown!1797 (h!72330 (exprs!6453 (Context!11907 (t!379705 (exprs!6453 (Context!11907 (Cons!65882 r!7292 Nil!65882))))))) (Context!11907 (t!379705 (exprs!6453 (Context!11907 (t!379705 (exprs!6453 (Context!11907 (Cons!65882 r!7292 Nil!65882)))))))) (h!72331 s!2326)))))

(declare-fun e!4072510 () (InoxSet Context!11906))

(declare-fun b!6742419 () Bool)

(assert (=> b!6742419 (= e!4072510 ((_ map or) call!609551 (derivationStepZipperUp!1723 (Context!11907 (t!379705 (exprs!6453 (Context!11907 (t!379705 (exprs!6453 (Context!11907 (Cons!65882 r!7292 Nil!65882)))))))) (h!72331 s!2326))))))

(declare-fun b!6742420 () Bool)

(declare-fun e!4072509 () (InoxSet Context!11906))

(assert (=> b!6742420 (= e!4072509 ((as const (Array Context!11906 Bool)) false))))

(declare-fun b!6742421 () Bool)

(assert (=> b!6742421 (= e!4072509 call!609551)))

(declare-fun d!2118390 () Bool)

(declare-fun c!1250808 () Bool)

(assert (=> d!2118390 (= c!1250808 e!4072508)))

(declare-fun res!2757872 () Bool)

(assert (=> d!2118390 (=> (not res!2757872) (not e!4072508))))

(assert (=> d!2118390 (= res!2757872 ((_ is Cons!65882) (exprs!6453 (Context!11907 (t!379705 (exprs!6453 (Context!11907 (Cons!65882 r!7292 Nil!65882))))))))))

(assert (=> d!2118390 (= (derivationStepZipperUp!1723 (Context!11907 (t!379705 (exprs!6453 (Context!11907 (Cons!65882 r!7292 Nil!65882))))) (h!72331 s!2326)) e!4072510)))

(declare-fun b!6742422 () Bool)

(assert (=> b!6742422 (= e!4072510 e!4072509)))

(declare-fun c!1250807 () Bool)

(assert (=> b!6742422 (= c!1250807 ((_ is Cons!65882) (exprs!6453 (Context!11907 (t!379705 (exprs!6453 (Context!11907 (Cons!65882 r!7292 Nil!65882))))))))))

(assert (= (and d!2118390 res!2757872) b!6742418))

(assert (= (and d!2118390 c!1250808) b!6742419))

(assert (= (and d!2118390 (not c!1250808)) b!6742422))

(assert (= (and b!6742422 c!1250807) b!6742421))

(assert (= (and b!6742422 (not c!1250807)) b!6742420))

(assert (= (or b!6742419 b!6742421) bm!609546))

(declare-fun m!7498626 () Bool)

(assert (=> b!6742418 m!7498626))

(declare-fun m!7498628 () Bool)

(assert (=> bm!609546 m!7498628))

(declare-fun m!7498630 () Bool)

(assert (=> b!6742419 m!7498630))

(assert (=> b!6742035 d!2118390))

(declare-fun b!6742423 () Bool)

(declare-fun e!4072512 () Bool)

(declare-fun call!609552 () Bool)

(assert (=> b!6742423 (= e!4072512 call!609552)))

(declare-fun b!6742424 () Bool)

(declare-fun e!4072514 () Bool)

(declare-fun e!4072517 () Bool)

(assert (=> b!6742424 (= e!4072514 e!4072517)))

(declare-fun c!1250810 () Bool)

(assert (=> b!6742424 (= c!1250810 ((_ is Union!16569) (ite c!1250733 (regOne!33651 r!7292) (regOne!33650 r!7292))))))

(declare-fun b!6742425 () Bool)

(declare-fun e!4072516 () Bool)

(assert (=> b!6742425 (= e!4072516 e!4072512)))

(declare-fun res!2757873 () Bool)

(assert (=> b!6742425 (=> (not res!2757873) (not e!4072512))))

(declare-fun call!609554 () Bool)

(assert (=> b!6742425 (= res!2757873 call!609554)))

(declare-fun b!6742426 () Bool)

(declare-fun e!4072513 () Bool)

(declare-fun call!609553 () Bool)

(assert (=> b!6742426 (= e!4072513 call!609553)))

(declare-fun bm!609547 () Bool)

(assert (=> bm!609547 (= call!609554 (validRegex!8305 (ite c!1250810 (regOne!33651 (ite c!1250733 (regOne!33651 r!7292) (regOne!33650 r!7292))) (regOne!33650 (ite c!1250733 (regOne!33651 r!7292) (regOne!33650 r!7292))))))))

(declare-fun b!6742427 () Bool)

(declare-fun e!4072515 () Bool)

(assert (=> b!6742427 (= e!4072515 call!609552)))

(declare-fun b!6742428 () Bool)

(declare-fun res!2757875 () Bool)

(assert (=> b!6742428 (=> (not res!2757875) (not e!4072515))))

(assert (=> b!6742428 (= res!2757875 call!609554)))

(assert (=> b!6742428 (= e!4072517 e!4072515)))

(declare-fun bm!609548 () Bool)

(declare-fun c!1250809 () Bool)

(assert (=> bm!609548 (= call!609553 (validRegex!8305 (ite c!1250809 (reg!16898 (ite c!1250733 (regOne!33651 r!7292) (regOne!33650 r!7292))) (ite c!1250810 (regTwo!33651 (ite c!1250733 (regOne!33651 r!7292) (regOne!33650 r!7292))) (regTwo!33650 (ite c!1250733 (regOne!33651 r!7292) (regOne!33650 r!7292)))))))))

(declare-fun b!6742430 () Bool)

(assert (=> b!6742430 (= e!4072514 e!4072513)))

(declare-fun res!2757877 () Bool)

(assert (=> b!6742430 (= res!2757877 (not (nullable!6556 (reg!16898 (ite c!1250733 (regOne!33651 r!7292) (regOne!33650 r!7292))))))))

(assert (=> b!6742430 (=> (not res!2757877) (not e!4072513))))

(declare-fun b!6742431 () Bool)

(declare-fun res!2757876 () Bool)

(assert (=> b!6742431 (=> res!2757876 e!4072516)))

(assert (=> b!6742431 (= res!2757876 (not ((_ is Concat!25414) (ite c!1250733 (regOne!33651 r!7292) (regOne!33650 r!7292)))))))

(assert (=> b!6742431 (= e!4072517 e!4072516)))

(declare-fun bm!609549 () Bool)

(assert (=> bm!609549 (= call!609552 call!609553)))

(declare-fun d!2118392 () Bool)

(declare-fun res!2757874 () Bool)

(declare-fun e!4072511 () Bool)

(assert (=> d!2118392 (=> res!2757874 e!4072511)))

(assert (=> d!2118392 (= res!2757874 ((_ is ElementMatch!16569) (ite c!1250733 (regOne!33651 r!7292) (regOne!33650 r!7292))))))

(assert (=> d!2118392 (= (validRegex!8305 (ite c!1250733 (regOne!33651 r!7292) (regOne!33650 r!7292))) e!4072511)))

(declare-fun b!6742429 () Bool)

(assert (=> b!6742429 (= e!4072511 e!4072514)))

(assert (=> b!6742429 (= c!1250809 ((_ is Star!16569) (ite c!1250733 (regOne!33651 r!7292) (regOne!33650 r!7292))))))

(assert (= (and d!2118392 (not res!2757874)) b!6742429))

(assert (= (and b!6742429 c!1250809) b!6742430))

(assert (= (and b!6742429 (not c!1250809)) b!6742424))

(assert (= (and b!6742430 res!2757877) b!6742426))

(assert (= (and b!6742424 c!1250810) b!6742428))

(assert (= (and b!6742424 (not c!1250810)) b!6742431))

(assert (= (and b!6742428 res!2757875) b!6742427))

(assert (= (and b!6742431 (not res!2757876)) b!6742425))

(assert (= (and b!6742425 res!2757873) b!6742423))

(assert (= (or b!6742427 b!6742423) bm!609549))

(assert (= (or b!6742428 b!6742425) bm!609547))

(assert (= (or b!6742426 bm!609549) bm!609548))

(declare-fun m!7498638 () Bool)

(assert (=> bm!609547 m!7498638))

(declare-fun m!7498640 () Bool)

(assert (=> bm!609548 m!7498640))

(declare-fun m!7498642 () Bool)

(assert (=> b!6742430 m!7498642))

(assert (=> bm!609525 d!2118392))

(declare-fun d!2118396 () Bool)

(assert (=> d!2118396 (= (Exists!3637 lambda!378756) (choose!50252 lambda!378756))))

(declare-fun bs!1792692 () Bool)

(assert (= bs!1792692 d!2118396))

(declare-fun m!7498644 () Bool)

(assert (=> bs!1792692 m!7498644))

(assert (=> d!2118172 d!2118396))

(declare-fun d!2118398 () Bool)

(assert (=> d!2118398 (= (Exists!3637 lambda!378757) (choose!50252 lambda!378757))))

(declare-fun bs!1792693 () Bool)

(assert (= bs!1792693 d!2118398))

(declare-fun m!7498646 () Bool)

(assert (=> bs!1792693 m!7498646))

(assert (=> d!2118172 d!2118398))

(declare-fun bs!1792702 () Bool)

(declare-fun d!2118400 () Bool)

(assert (= bs!1792702 (and d!2118400 d!2118198)))

(declare-fun lambda!378839 () Int)

(assert (=> bs!1792702 (= lambda!378839 lambda!378776)))

(declare-fun bs!1792703 () Bool)

(assert (= bs!1792703 (and d!2118400 d!2118172)))

(assert (=> bs!1792703 (not (= lambda!378839 lambda!378757))))

(declare-fun bs!1792704 () Bool)

(assert (= bs!1792704 (and d!2118400 b!6741534)))

(assert (=> bs!1792704 (not (= lambda!378839 lambda!378744))))

(declare-fun bs!1792705 () Bool)

(assert (= bs!1792705 (and d!2118400 b!6741920)))

(assert (=> bs!1792705 (not (= lambda!378839 lambda!378794))))

(assert (=> bs!1792704 (not (= lambda!378839 lambda!378743))))

(declare-fun bs!1792706 () Bool)

(assert (= bs!1792706 (and d!2118400 d!2118384)))

(assert (=> bs!1792706 (= lambda!378839 lambda!378833)))

(assert (=> bs!1792703 (= lambda!378839 lambda!378756)))

(declare-fun bs!1792707 () Bool)

(assert (= bs!1792707 (and d!2118400 d!2118180)))

(assert (=> bs!1792707 (not (= lambda!378839 lambda!378767))))

(declare-fun bs!1792708 () Bool)

(assert (= bs!1792708 (and d!2118400 b!6741926)))

(assert (=> bs!1792708 (not (= lambda!378839 lambda!378795))))

(assert (=> bs!1792707 (= (= r!7292 (Star!16569 (reg!16898 r!7292))) (= lambda!378839 lambda!378765))))

(assert (=> bs!1792704 (= lambda!378839 lambda!378742)))

(assert (=> d!2118400 true))

(assert (=> d!2118400 true))

(assert (=> d!2118400 true))

(declare-fun lambda!378840 () Int)

(assert (=> bs!1792702 (not (= lambda!378840 lambda!378776))))

(assert (=> bs!1792703 (= lambda!378840 lambda!378757)))

(assert (=> bs!1792704 (= lambda!378840 lambda!378744)))

(declare-fun bs!1792709 () Bool)

(assert (= bs!1792709 d!2118400))

(assert (=> bs!1792709 (not (= lambda!378840 lambda!378839))))

(assert (=> bs!1792705 (not (= lambda!378840 lambda!378794))))

(assert (=> bs!1792704 (not (= lambda!378840 lambda!378743))))

(assert (=> bs!1792706 (not (= lambda!378840 lambda!378833))))

(assert (=> bs!1792703 (not (= lambda!378840 lambda!378756))))

(assert (=> bs!1792707 (not (= lambda!378840 lambda!378767))))

(assert (=> bs!1792708 (= (and (= (reg!16898 r!7292) (regOne!33650 r!7292)) (= r!7292 (regTwo!33650 r!7292))) (= lambda!378840 lambda!378795))))

(assert (=> bs!1792707 (not (= lambda!378840 lambda!378765))))

(assert (=> bs!1792704 (not (= lambda!378840 lambda!378742))))

(assert (=> d!2118400 true))

(assert (=> d!2118400 true))

(assert (=> d!2118400 true))

(assert (=> d!2118400 (= (Exists!3637 lambda!378839) (Exists!3637 lambda!378840))))

(assert (=> d!2118400 true))

(declare-fun _$90!2605 () Unit!159829)

(assert (=> d!2118400 (= (choose!50253 (reg!16898 r!7292) r!7292 s!2326) _$90!2605)))

(declare-fun m!7498672 () Bool)

(assert (=> bs!1792709 m!7498672))

(declare-fun m!7498674 () Bool)

(assert (=> bs!1792709 m!7498674))

(assert (=> d!2118172 d!2118400))

(assert (=> d!2118172 d!2118388))

(declare-fun d!2118412 () Bool)

(assert (=> d!2118412 (= (isEmpty!38230 (unfocusZipperList!1990 zl!343)) ((_ is Nil!65882) (unfocusZipperList!1990 zl!343)))))

(assert (=> b!6742246 d!2118412))

(declare-fun d!2118414 () Bool)

(assert (=> d!2118414 (= (isEmptyExpr!1935 lt!2439282) ((_ is EmptyExpr!16569) lt!2439282))))

(assert (=> b!6742140 d!2118414))

(declare-fun b!6742469 () Bool)

(declare-fun e!4072547 () Bool)

(assert (=> b!6742469 (= e!4072547 (nullable!6556 (regOne!33650 (h!72330 (exprs!6453 lt!2439184)))))))

(declare-fun b!6742470 () Bool)

(declare-fun e!4072544 () (InoxSet Context!11906))

(declare-fun call!609564 () (InoxSet Context!11906))

(declare-fun call!609560 () (InoxSet Context!11906))

(assert (=> b!6742470 (= e!4072544 ((_ map or) call!609564 call!609560))))

(declare-fun b!6742471 () Bool)

(declare-fun e!4072546 () (InoxSet Context!11906))

(assert (=> b!6742471 (= e!4072546 (store ((as const (Array Context!11906 Bool)) false) (Context!11907 (t!379705 (exprs!6453 lt!2439184))) true))))

(declare-fun b!6742472 () Bool)

(declare-fun e!4072545 () (InoxSet Context!11906))

(declare-fun call!609562 () (InoxSet Context!11906))

(assert (=> b!6742472 (= e!4072545 call!609562)))

(declare-fun bm!609554 () Bool)

(declare-fun call!609559 () List!66006)

(declare-fun call!609561 () List!66006)

(assert (=> bm!609554 (= call!609559 call!609561)))

(declare-fun b!6742473 () Bool)

(declare-fun c!1250820 () Bool)

(assert (=> b!6742473 (= c!1250820 e!4072547)))

(declare-fun res!2757908 () Bool)

(assert (=> b!6742473 (=> (not res!2757908) (not e!4072547))))

(assert (=> b!6742473 (= res!2757908 ((_ is Concat!25414) (h!72330 (exprs!6453 lt!2439184))))))

(declare-fun e!4072542 () (InoxSet Context!11906))

(assert (=> b!6742473 (= e!4072542 e!4072544)))

(declare-fun b!6742474 () Bool)

(assert (=> b!6742474 (= e!4072544 e!4072545)))

(declare-fun c!1250816 () Bool)

(assert (=> b!6742474 (= c!1250816 ((_ is Concat!25414) (h!72330 (exprs!6453 lt!2439184))))))

(declare-fun b!6742475 () Bool)

(declare-fun c!1250818 () Bool)

(assert (=> b!6742475 (= c!1250818 ((_ is Star!16569) (h!72330 (exprs!6453 lt!2439184))))))

(declare-fun e!4072543 () (InoxSet Context!11906))

(assert (=> b!6742475 (= e!4072545 e!4072543)))

(declare-fun b!6742476 () Bool)

(assert (=> b!6742476 (= e!4072543 call!609562)))

(declare-fun b!6742477 () Bool)

(assert (=> b!6742477 (= e!4072546 e!4072542)))

(declare-fun c!1250819 () Bool)

(assert (=> b!6742477 (= c!1250819 ((_ is Union!16569) (h!72330 (exprs!6453 lt!2439184))))))

(declare-fun b!6742478 () Bool)

(declare-fun call!609563 () (InoxSet Context!11906))

(assert (=> b!6742478 (= e!4072542 ((_ map or) call!609563 call!609564))))

(declare-fun bm!609555 () Bool)

(assert (=> bm!609555 (= call!609564 (derivationStepZipperDown!1797 (ite c!1250819 (regTwo!33651 (h!72330 (exprs!6453 lt!2439184))) (regOne!33650 (h!72330 (exprs!6453 lt!2439184)))) (ite c!1250819 (Context!11907 (t!379705 (exprs!6453 lt!2439184))) (Context!11907 call!609561)) (h!72331 s!2326)))))

(declare-fun b!6742479 () Bool)

(assert (=> b!6742479 (= e!4072543 ((as const (Array Context!11906 Bool)) false))))

(declare-fun bm!609556 () Bool)

(assert (=> bm!609556 (= call!609563 (derivationStepZipperDown!1797 (ite c!1250819 (regOne!33651 (h!72330 (exprs!6453 lt!2439184))) (ite c!1250820 (regTwo!33650 (h!72330 (exprs!6453 lt!2439184))) (ite c!1250816 (regOne!33650 (h!72330 (exprs!6453 lt!2439184))) (reg!16898 (h!72330 (exprs!6453 lt!2439184)))))) (ite (or c!1250819 c!1250820) (Context!11907 (t!379705 (exprs!6453 lt!2439184))) (Context!11907 call!609559)) (h!72331 s!2326)))))

(declare-fun bm!609557 () Bool)

(assert (=> bm!609557 (= call!609561 ($colon$colon!2386 (exprs!6453 (Context!11907 (t!379705 (exprs!6453 lt!2439184)))) (ite (or c!1250820 c!1250816) (regTwo!33650 (h!72330 (exprs!6453 lt!2439184))) (h!72330 (exprs!6453 lt!2439184)))))))

(declare-fun bm!609558 () Bool)

(assert (=> bm!609558 (= call!609562 call!609560)))

(declare-fun bm!609559 () Bool)

(assert (=> bm!609559 (= call!609560 call!609563)))

(declare-fun d!2118416 () Bool)

(declare-fun c!1250817 () Bool)

(assert (=> d!2118416 (= c!1250817 (and ((_ is ElementMatch!16569) (h!72330 (exprs!6453 lt!2439184))) (= (c!1250577 (h!72330 (exprs!6453 lt!2439184))) (h!72331 s!2326))))))

(assert (=> d!2118416 (= (derivationStepZipperDown!1797 (h!72330 (exprs!6453 lt!2439184)) (Context!11907 (t!379705 (exprs!6453 lt!2439184))) (h!72331 s!2326)) e!4072546)))

(assert (= (and d!2118416 c!1250817) b!6742471))

(assert (= (and d!2118416 (not c!1250817)) b!6742477))

(assert (= (and b!6742477 c!1250819) b!6742478))

(assert (= (and b!6742477 (not c!1250819)) b!6742473))

(assert (= (and b!6742473 res!2757908) b!6742469))

(assert (= (and b!6742473 c!1250820) b!6742470))

(assert (= (and b!6742473 (not c!1250820)) b!6742474))

(assert (= (and b!6742474 c!1250816) b!6742472))

(assert (= (and b!6742474 (not c!1250816)) b!6742475))

(assert (= (and b!6742475 c!1250818) b!6742476))

(assert (= (and b!6742475 (not c!1250818)) b!6742479))

(assert (= (or b!6742472 b!6742476) bm!609554))

(assert (= (or b!6742472 b!6742476) bm!609558))

(assert (= (or b!6742470 bm!609554) bm!609557))

(assert (= (or b!6742470 bm!609558) bm!609559))

(assert (= (or b!6742478 b!6742470) bm!609555))

(assert (= (or b!6742478 bm!609559) bm!609556))

(declare-fun m!7498676 () Bool)

(assert (=> b!6742469 m!7498676))

(declare-fun m!7498678 () Bool)

(assert (=> bm!609555 m!7498678))

(declare-fun m!7498680 () Bool)

(assert (=> bm!609556 m!7498680))

(declare-fun m!7498682 () Bool)

(assert (=> bm!609557 m!7498682))

(declare-fun m!7498684 () Bool)

(assert (=> b!6742471 m!7498684))

(assert (=> bm!609530 d!2118416))

(declare-fun d!2118420 () Bool)

(assert (=> d!2118420 (= (nullable!6556 (regOne!33650 r!7292)) (nullableFct!2469 (regOne!33650 r!7292)))))

(declare-fun bs!1792710 () Bool)

(assert (= bs!1792710 d!2118420))

(declare-fun m!7498686 () Bool)

(assert (=> bs!1792710 m!7498686))

(assert (=> b!6742018 d!2118420))

(declare-fun d!2118422 () Bool)

(assert (=> d!2118422 (= (head!13566 (exprs!6453 (h!72332 zl!343))) (h!72330 (exprs!6453 (h!72332 zl!343))))))

(assert (=> b!6742132 d!2118422))

(declare-fun b!6742492 () Bool)

(declare-fun e!4072554 () Bool)

(assert (=> b!6742492 (= e!4072554 (= (head!13565 (_1!36847 (get!22924 lt!2439225))) (c!1250577 (reg!16898 r!7292))))))

(declare-fun b!6742493 () Bool)

(declare-fun res!2757910 () Bool)

(declare-fun e!4072556 () Bool)

(assert (=> b!6742493 (=> res!2757910 e!4072556)))

(assert (=> b!6742493 (= res!2757910 (not ((_ is ElementMatch!16569) (reg!16898 r!7292))))))

(declare-fun e!4072559 () Bool)

(assert (=> b!6742493 (= e!4072559 e!4072556)))

(declare-fun b!6742494 () Bool)

(declare-fun res!2757914 () Bool)

(declare-fun e!4072555 () Bool)

(assert (=> b!6742494 (=> res!2757914 e!4072555)))

(assert (=> b!6742494 (= res!2757914 (not (isEmpty!38225 (tail!12650 (_1!36847 (get!22924 lt!2439225))))))))

(declare-fun b!6742495 () Bool)

(declare-fun e!4072558 () Bool)

(assert (=> b!6742495 (= e!4072558 (nullable!6556 (reg!16898 r!7292)))))

(declare-fun b!6742496 () Bool)

(declare-fun e!4072560 () Bool)

(assert (=> b!6742496 (= e!4072556 e!4072560)))

(declare-fun res!2757911 () Bool)

(assert (=> b!6742496 (=> (not res!2757911) (not e!4072560))))

(declare-fun lt!2439313 () Bool)

(assert (=> b!6742496 (= res!2757911 (not lt!2439313))))

(declare-fun b!6742497 () Bool)

(declare-fun res!2757916 () Bool)

(assert (=> b!6742497 (=> (not res!2757916) (not e!4072554))))

(declare-fun call!609571 () Bool)

(assert (=> b!6742497 (= res!2757916 (not call!609571))))

(declare-fun b!6742498 () Bool)

(assert (=> b!6742498 (= e!4072558 (matchR!8752 (derivativeStep!5241 (reg!16898 r!7292) (head!13565 (_1!36847 (get!22924 lt!2439225)))) (tail!12650 (_1!36847 (get!22924 lt!2439225)))))))

(declare-fun b!6742499 () Bool)

(assert (=> b!6742499 (= e!4072559 (not lt!2439313))))

(declare-fun d!2118424 () Bool)

(declare-fun e!4072557 () Bool)

(assert (=> d!2118424 e!4072557))

(declare-fun c!1250826 () Bool)

(assert (=> d!2118424 (= c!1250826 ((_ is EmptyExpr!16569) (reg!16898 r!7292)))))

(assert (=> d!2118424 (= lt!2439313 e!4072558)))

(declare-fun c!1250827 () Bool)

(assert (=> d!2118424 (= c!1250827 (isEmpty!38225 (_1!36847 (get!22924 lt!2439225))))))

(assert (=> d!2118424 (validRegex!8305 (reg!16898 r!7292))))

(assert (=> d!2118424 (= (matchR!8752 (reg!16898 r!7292) (_1!36847 (get!22924 lt!2439225))) lt!2439313)))

(declare-fun b!6742491 () Bool)

(assert (=> b!6742491 (= e!4072557 e!4072559)))

(declare-fun c!1250828 () Bool)

(assert (=> b!6742491 (= c!1250828 ((_ is EmptyLang!16569) (reg!16898 r!7292)))))

(declare-fun b!6742500 () Bool)

(declare-fun res!2757917 () Bool)

(assert (=> b!6742500 (=> res!2757917 e!4072556)))

(assert (=> b!6742500 (= res!2757917 e!4072554)))

(declare-fun res!2757912 () Bool)

(assert (=> b!6742500 (=> (not res!2757912) (not e!4072554))))

(assert (=> b!6742500 (= res!2757912 lt!2439313)))

(declare-fun b!6742501 () Bool)

(assert (=> b!6742501 (= e!4072560 e!4072555)))

(declare-fun res!2757913 () Bool)

(assert (=> b!6742501 (=> res!2757913 e!4072555)))

(assert (=> b!6742501 (= res!2757913 call!609571)))

(declare-fun b!6742502 () Bool)

(assert (=> b!6742502 (= e!4072557 (= lt!2439313 call!609571))))

(declare-fun b!6742503 () Bool)

(assert (=> b!6742503 (= e!4072555 (not (= (head!13565 (_1!36847 (get!22924 lt!2439225))) (c!1250577 (reg!16898 r!7292)))))))

(declare-fun bm!609566 () Bool)

(assert (=> bm!609566 (= call!609571 (isEmpty!38225 (_1!36847 (get!22924 lt!2439225))))))

(declare-fun b!6742504 () Bool)

(declare-fun res!2757915 () Bool)

(assert (=> b!6742504 (=> (not res!2757915) (not e!4072554))))

(assert (=> b!6742504 (= res!2757915 (isEmpty!38225 (tail!12650 (_1!36847 (get!22924 lt!2439225)))))))

(assert (= (and d!2118424 c!1250827) b!6742495))

(assert (= (and d!2118424 (not c!1250827)) b!6742498))

(assert (= (and d!2118424 c!1250826) b!6742502))

(assert (= (and d!2118424 (not c!1250826)) b!6742491))

(assert (= (and b!6742491 c!1250828) b!6742499))

(assert (= (and b!6742491 (not c!1250828)) b!6742493))

(assert (= (and b!6742493 (not res!2757910)) b!6742500))

(assert (= (and b!6742500 res!2757912) b!6742497))

(assert (= (and b!6742497 res!2757916) b!6742504))

(assert (= (and b!6742504 res!2757915) b!6742492))

(assert (= (and b!6742500 (not res!2757917)) b!6742496))

(assert (= (and b!6742496 res!2757911) b!6742501))

(assert (= (and b!6742501 (not res!2757913)) b!6742494))

(assert (= (and b!6742494 (not res!2757914)) b!6742503))

(assert (= (or b!6742502 b!6742497 b!6742501) bm!609566))

(assert (=> b!6742495 m!7498336))

(declare-fun m!7498698 () Bool)

(assert (=> d!2118424 m!7498698))

(assert (=> d!2118424 m!7498048))

(declare-fun m!7498700 () Bool)

(assert (=> b!6742494 m!7498700))

(assert (=> b!6742494 m!7498700))

(declare-fun m!7498702 () Bool)

(assert (=> b!6742494 m!7498702))

(declare-fun m!7498704 () Bool)

(assert (=> b!6742503 m!7498704))

(assert (=> bm!609566 m!7498698))

(assert (=> b!6742504 m!7498700))

(assert (=> b!6742504 m!7498700))

(assert (=> b!6742504 m!7498702))

(assert (=> b!6742498 m!7498704))

(assert (=> b!6742498 m!7498704))

(declare-fun m!7498706 () Bool)

(assert (=> b!6742498 m!7498706))

(assert (=> b!6742498 m!7498700))

(assert (=> b!6742498 m!7498706))

(assert (=> b!6742498 m!7498700))

(declare-fun m!7498708 () Bool)

(assert (=> b!6742498 m!7498708))

(assert (=> b!6742492 m!7498704))

(assert (=> b!6741757 d!2118424))

(declare-fun d!2118428 () Bool)

(assert (=> d!2118428 (= (get!22924 lt!2439225) (v!52655 lt!2439225))))

(assert (=> b!6741757 d!2118428))

(declare-fun bs!1792717 () Bool)

(declare-fun d!2118430 () Bool)

(assert (= bs!1792717 (and d!2118430 d!2118286)))

(declare-fun lambda!378842 () Int)

(assert (=> bs!1792717 (= lambda!378842 lambda!378815)))

(declare-fun bs!1792719 () Bool)

(assert (= bs!1792719 (and d!2118430 d!2118344)))

(assert (=> bs!1792719 (= lambda!378842 lambda!378825)))

(declare-fun bs!1792720 () Bool)

(assert (= bs!1792720 (and d!2118430 d!2118280)))

(assert (=> bs!1792720 (= lambda!378842 lambda!378805)))

(declare-fun bs!1792722 () Bool)

(assert (= bs!1792722 (and d!2118430 d!2118342)))

(assert (=> bs!1792722 (= lambda!378842 lambda!378822)))

(declare-fun bs!1792723 () Bool)

(assert (= bs!1792723 (and d!2118430 d!2118314)))

(assert (=> bs!1792723 (= lambda!378842 lambda!378818)))

(declare-fun bs!1792724 () Bool)

(assert (= bs!1792724 (and d!2118430 d!2118278)))

(assert (=> bs!1792724 (= lambda!378842 lambda!378804)))

(assert (=> d!2118430 (= (inv!84669 (h!72332 (t!379707 zl!343))) (forall!15769 (exprs!6453 (h!72332 (t!379707 zl!343))) lambda!378842))))

(declare-fun bs!1792725 () Bool)

(assert (= bs!1792725 d!2118430))

(declare-fun m!7498710 () Bool)

(assert (=> bs!1792725 m!7498710))

(assert (=> b!6742299 d!2118430))

(assert (=> bm!609499 d!2118190))

(assert (=> d!2118328 d!2118338))

(declare-fun d!2118432 () Bool)

(assert (=> d!2118432 (= (flatMap!2050 lt!2439201 lambda!378745) (dynLambda!26287 lambda!378745 lt!2439204))))

(assert (=> d!2118432 true))

(declare-fun _$13!4088 () Unit!159829)

(assert (=> d!2118432 (= (choose!50258 lt!2439201 lt!2439204 lambda!378745) _$13!4088)))

(declare-fun b_lambda!253933 () Bool)

(assert (=> (not b_lambda!253933) (not d!2118432)))

(declare-fun bs!1792726 () Bool)

(assert (= bs!1792726 d!2118432))

(assert (=> bs!1792726 m!7498006))

(assert (=> bs!1792726 m!7498452))

(assert (=> d!2118328 d!2118432))

(declare-fun d!2118434 () Bool)

(declare-fun lambda!378845 () Int)

(declare-fun exists!2702 ((InoxSet Context!11906) Int) Bool)

(assert (=> d!2118434 (= (nullableZipper!2283 lt!2439191) (exists!2702 lt!2439191 lambda!378845))))

(declare-fun bs!1792728 () Bool)

(assert (= bs!1792728 d!2118434))

(declare-fun m!7498738 () Bool)

(assert (=> bs!1792728 m!7498738))

(assert (=> b!6742158 d!2118434))

(declare-fun b!6742524 () Bool)

(declare-fun e!4072575 () Bool)

(declare-fun call!609575 () Bool)

(assert (=> b!6742524 (= e!4072575 call!609575)))

(declare-fun b!6742525 () Bool)

(declare-fun e!4072577 () Bool)

(declare-fun e!4072580 () Bool)

(assert (=> b!6742525 (= e!4072577 e!4072580)))

(declare-fun c!1250838 () Bool)

(assert (=> b!6742525 (= c!1250838 ((_ is Union!16569) lt!2439290))))

(declare-fun b!6742526 () Bool)

(declare-fun e!4072579 () Bool)

(assert (=> b!6742526 (= e!4072579 e!4072575)))

(declare-fun res!2757926 () Bool)

(assert (=> b!6742526 (=> (not res!2757926) (not e!4072575))))

(declare-fun call!609577 () Bool)

(assert (=> b!6742526 (= res!2757926 call!609577)))

(declare-fun b!6742527 () Bool)

(declare-fun e!4072576 () Bool)

(declare-fun call!609576 () Bool)

(assert (=> b!6742527 (= e!4072576 call!609576)))

(declare-fun bm!609570 () Bool)

(assert (=> bm!609570 (= call!609577 (validRegex!8305 (ite c!1250838 (regOne!33651 lt!2439290) (regOne!33650 lt!2439290))))))

(declare-fun b!6742528 () Bool)

(declare-fun e!4072578 () Bool)

(assert (=> b!6742528 (= e!4072578 call!609575)))

(declare-fun b!6742529 () Bool)

(declare-fun res!2757928 () Bool)

(assert (=> b!6742529 (=> (not res!2757928) (not e!4072578))))

(assert (=> b!6742529 (= res!2757928 call!609577)))

(assert (=> b!6742529 (= e!4072580 e!4072578)))

(declare-fun c!1250837 () Bool)

(declare-fun bm!609571 () Bool)

(assert (=> bm!609571 (= call!609576 (validRegex!8305 (ite c!1250837 (reg!16898 lt!2439290) (ite c!1250838 (regTwo!33651 lt!2439290) (regTwo!33650 lt!2439290)))))))

(declare-fun b!6742531 () Bool)

(assert (=> b!6742531 (= e!4072577 e!4072576)))

(declare-fun res!2757930 () Bool)

(assert (=> b!6742531 (= res!2757930 (not (nullable!6556 (reg!16898 lt!2439290))))))

(assert (=> b!6742531 (=> (not res!2757930) (not e!4072576))))

(declare-fun b!6742532 () Bool)

(declare-fun res!2757929 () Bool)

(assert (=> b!6742532 (=> res!2757929 e!4072579)))

(assert (=> b!6742532 (= res!2757929 (not ((_ is Concat!25414) lt!2439290)))))

(assert (=> b!6742532 (= e!4072580 e!4072579)))

(declare-fun bm!609572 () Bool)

(assert (=> bm!609572 (= call!609575 call!609576)))

(declare-fun d!2118444 () Bool)

(declare-fun res!2757927 () Bool)

(declare-fun e!4072574 () Bool)

(assert (=> d!2118444 (=> res!2757927 e!4072574)))

(assert (=> d!2118444 (= res!2757927 ((_ is ElementMatch!16569) lt!2439290))))

(assert (=> d!2118444 (= (validRegex!8305 lt!2439290) e!4072574)))

(declare-fun b!6742530 () Bool)

(assert (=> b!6742530 (= e!4072574 e!4072577)))

(assert (=> b!6742530 (= c!1250837 ((_ is Star!16569) lt!2439290))))

(assert (= (and d!2118444 (not res!2757927)) b!6742530))

(assert (= (and b!6742530 c!1250837) b!6742531))

(assert (= (and b!6742530 (not c!1250837)) b!6742525))

(assert (= (and b!6742531 res!2757930) b!6742527))

(assert (= (and b!6742525 c!1250838) b!6742529))

(assert (= (and b!6742525 (not c!1250838)) b!6742532))

(assert (= (and b!6742529 res!2757928) b!6742528))

(assert (= (and b!6742532 (not res!2757929)) b!6742526))

(assert (= (and b!6742526 res!2757926) b!6742524))

(assert (= (or b!6742528 b!6742524) bm!609572))

(assert (= (or b!6742529 b!6742526) bm!609570))

(assert (= (or b!6742527 bm!609572) bm!609571))

(declare-fun m!7498740 () Bool)

(assert (=> bm!609570 m!7498740))

(declare-fun m!7498742 () Bool)

(assert (=> bm!609571 m!7498742))

(declare-fun m!7498744 () Bool)

(assert (=> b!6742531 m!7498744))

(assert (=> d!2118312 d!2118444))

(assert (=> d!2118312 d!2118342))

(assert (=> d!2118312 d!2118344))

(declare-fun d!2118448 () Bool)

(assert (=> d!2118448 true))

(declare-fun setRes!46046 () Bool)

(assert (=> d!2118448 setRes!46046))

(declare-fun condSetEmpty!46046 () Bool)

(declare-fun res!2757933 () (InoxSet Context!11906))

(assert (=> d!2118448 (= condSetEmpty!46046 (= res!2757933 ((as const (Array Context!11906 Bool)) false)))))

(assert (=> d!2118448 (= (choose!50257 lt!2439201 lambda!378745) res!2757933)))

(declare-fun setIsEmpty!46046 () Bool)

(assert (=> setIsEmpty!46046 setRes!46046))

(declare-fun e!4072583 () Bool)

(declare-fun tp!1848293 () Bool)

(declare-fun setElem!46046 () Context!11906)

(declare-fun setNonEmpty!46046 () Bool)

(assert (=> setNonEmpty!46046 (= setRes!46046 (and tp!1848293 (inv!84669 setElem!46046) e!4072583))))

(declare-fun setRest!46046 () (InoxSet Context!11906))

(assert (=> setNonEmpty!46046 (= res!2757933 ((_ map or) (store ((as const (Array Context!11906 Bool)) false) setElem!46046 true) setRest!46046))))

(declare-fun b!6742535 () Bool)

(declare-fun tp!1848292 () Bool)

(assert (=> b!6742535 (= e!4072583 tp!1848292)))

(assert (= (and d!2118448 condSetEmpty!46046) setIsEmpty!46046))

(assert (= (and d!2118448 (not condSetEmpty!46046)) setNonEmpty!46046))

(assert (= setNonEmpty!46046 b!6742535))

(declare-fun m!7498746 () Bool)

(assert (=> setNonEmpty!46046 m!7498746))

(assert (=> d!2118338 d!2118448))

(declare-fun d!2118452 () Bool)

(assert (=> d!2118452 (= (isEmpty!38230 (t!379705 (exprs!6453 (h!72332 zl!343)))) ((_ is Nil!65882) (t!379705 (exprs!6453 (h!72332 zl!343)))))))

(assert (=> b!6742136 d!2118452))

(assert (=> bs!1792642 d!2118254))

(declare-fun d!2118454 () Bool)

(assert (=> d!2118454 (= (isUnion!1373 lt!2439297) ((_ is Union!16569) lt!2439297))))

(assert (=> b!6742242 d!2118454))

(declare-fun d!2118456 () Bool)

(assert (=> d!2118456 (= (isDefined!13159 lt!2439225) (not (isEmpty!38227 lt!2439225)))))

(declare-fun bs!1792729 () Bool)

(assert (= bs!1792729 d!2118456))

(declare-fun m!7498748 () Bool)

(assert (=> bs!1792729 m!7498748))

(assert (=> d!2118194 d!2118456))

(declare-fun b!6742537 () Bool)

(declare-fun e!4072584 () Bool)

(assert (=> b!6742537 (= e!4072584 (= (head!13565 Nil!65883) (c!1250577 (reg!16898 r!7292))))))

(declare-fun b!6742538 () Bool)

(declare-fun res!2757934 () Bool)

(declare-fun e!4072586 () Bool)

(assert (=> b!6742538 (=> res!2757934 e!4072586)))

(assert (=> b!6742538 (= res!2757934 (not ((_ is ElementMatch!16569) (reg!16898 r!7292))))))

(declare-fun e!4072589 () Bool)

(assert (=> b!6742538 (= e!4072589 e!4072586)))

(declare-fun b!6742539 () Bool)

(declare-fun res!2757938 () Bool)

(declare-fun e!4072585 () Bool)

(assert (=> b!6742539 (=> res!2757938 e!4072585)))

(assert (=> b!6742539 (= res!2757938 (not (isEmpty!38225 (tail!12650 Nil!65883))))))

(declare-fun b!6742540 () Bool)

(declare-fun e!4072588 () Bool)

(assert (=> b!6742540 (= e!4072588 (nullable!6556 (reg!16898 r!7292)))))

(declare-fun b!6742541 () Bool)

(declare-fun e!4072590 () Bool)

(assert (=> b!6742541 (= e!4072586 e!4072590)))

(declare-fun res!2757935 () Bool)

(assert (=> b!6742541 (=> (not res!2757935) (not e!4072590))))

(declare-fun lt!2439315 () Bool)

(assert (=> b!6742541 (= res!2757935 (not lt!2439315))))

(declare-fun b!6742542 () Bool)

(declare-fun res!2757940 () Bool)

(assert (=> b!6742542 (=> (not res!2757940) (not e!4072584))))

(declare-fun call!609578 () Bool)

(assert (=> b!6742542 (= res!2757940 (not call!609578))))

(declare-fun b!6742543 () Bool)

(assert (=> b!6742543 (= e!4072588 (matchR!8752 (derivativeStep!5241 (reg!16898 r!7292) (head!13565 Nil!65883)) (tail!12650 Nil!65883)))))

(declare-fun b!6742544 () Bool)

(assert (=> b!6742544 (= e!4072589 (not lt!2439315))))

(declare-fun d!2118458 () Bool)

(declare-fun e!4072587 () Bool)

(assert (=> d!2118458 e!4072587))

(declare-fun c!1250839 () Bool)

(assert (=> d!2118458 (= c!1250839 ((_ is EmptyExpr!16569) (reg!16898 r!7292)))))

(assert (=> d!2118458 (= lt!2439315 e!4072588)))

(declare-fun c!1250840 () Bool)

(assert (=> d!2118458 (= c!1250840 (isEmpty!38225 Nil!65883))))

(assert (=> d!2118458 (validRegex!8305 (reg!16898 r!7292))))

(assert (=> d!2118458 (= (matchR!8752 (reg!16898 r!7292) Nil!65883) lt!2439315)))

(declare-fun b!6742536 () Bool)

(assert (=> b!6742536 (= e!4072587 e!4072589)))

(declare-fun c!1250841 () Bool)

(assert (=> b!6742536 (= c!1250841 ((_ is EmptyLang!16569) (reg!16898 r!7292)))))

(declare-fun b!6742545 () Bool)

(declare-fun res!2757941 () Bool)

(assert (=> b!6742545 (=> res!2757941 e!4072586)))

(assert (=> b!6742545 (= res!2757941 e!4072584)))

(declare-fun res!2757936 () Bool)

(assert (=> b!6742545 (=> (not res!2757936) (not e!4072584))))

(assert (=> b!6742545 (= res!2757936 lt!2439315)))

(declare-fun b!6742546 () Bool)

(assert (=> b!6742546 (= e!4072590 e!4072585)))

(declare-fun res!2757937 () Bool)

(assert (=> b!6742546 (=> res!2757937 e!4072585)))

(assert (=> b!6742546 (= res!2757937 call!609578)))

(declare-fun b!6742547 () Bool)

(assert (=> b!6742547 (= e!4072587 (= lt!2439315 call!609578))))

(declare-fun b!6742548 () Bool)

(assert (=> b!6742548 (= e!4072585 (not (= (head!13565 Nil!65883) (c!1250577 (reg!16898 r!7292)))))))

(declare-fun bm!609573 () Bool)

(assert (=> bm!609573 (= call!609578 (isEmpty!38225 Nil!65883))))

(declare-fun b!6742549 () Bool)

(declare-fun res!2757939 () Bool)

(assert (=> b!6742549 (=> (not res!2757939) (not e!4072584))))

(assert (=> b!6742549 (= res!2757939 (isEmpty!38225 (tail!12650 Nil!65883)))))

(assert (= (and d!2118458 c!1250840) b!6742540))

(assert (= (and d!2118458 (not c!1250840)) b!6742543))

(assert (= (and d!2118458 c!1250839) b!6742547))

(assert (= (and d!2118458 (not c!1250839)) b!6742536))

(assert (= (and b!6742536 c!1250841) b!6742544))

(assert (= (and b!6742536 (not c!1250841)) b!6742538))

(assert (= (and b!6742538 (not res!2757934)) b!6742545))

(assert (= (and b!6742545 res!2757936) b!6742542))

(assert (= (and b!6742542 res!2757940) b!6742549))

(assert (= (and b!6742549 res!2757939) b!6742537))

(assert (= (and b!6742545 (not res!2757941)) b!6742541))

(assert (= (and b!6742541 res!2757935) b!6742546))

(assert (= (and b!6742546 (not res!2757937)) b!6742539))

(assert (= (and b!6742539 (not res!2757938)) b!6742548))

(assert (= (or b!6742547 b!6742542 b!6742546) bm!609573))

(assert (=> b!6742540 m!7498336))

(declare-fun m!7498750 () Bool)

(assert (=> d!2118458 m!7498750))

(assert (=> d!2118458 m!7498048))

(declare-fun m!7498752 () Bool)

(assert (=> b!6742539 m!7498752))

(assert (=> b!6742539 m!7498752))

(declare-fun m!7498754 () Bool)

(assert (=> b!6742539 m!7498754))

(declare-fun m!7498756 () Bool)

(assert (=> b!6742548 m!7498756))

(assert (=> bm!609573 m!7498750))

(assert (=> b!6742549 m!7498752))

(assert (=> b!6742549 m!7498752))

(assert (=> b!6742549 m!7498754))

(assert (=> b!6742543 m!7498756))

(assert (=> b!6742543 m!7498756))

(declare-fun m!7498758 () Bool)

(assert (=> b!6742543 m!7498758))

(assert (=> b!6742543 m!7498752))

(assert (=> b!6742543 m!7498758))

(assert (=> b!6742543 m!7498752))

(declare-fun m!7498760 () Bool)

(assert (=> b!6742543 m!7498760))

(assert (=> b!6742537 m!7498756))

(assert (=> d!2118194 d!2118458))

(assert (=> d!2118194 d!2118388))

(assert (=> d!2118332 d!2118334))

(declare-fun d!2118462 () Bool)

(assert (=> d!2118462 (= (flatMap!2050 lt!2439203 lambda!378745) (dynLambda!26287 lambda!378745 lt!2439184))))

(assert (=> d!2118462 true))

(declare-fun _$13!4092 () Unit!159829)

(assert (=> d!2118462 (= (choose!50258 lt!2439203 lt!2439184 lambda!378745) _$13!4092)))

(declare-fun b_lambda!253937 () Bool)

(assert (=> (not b_lambda!253937) (not d!2118462)))

(declare-fun bs!1792732 () Bool)

(assert (= bs!1792732 d!2118462))

(assert (=> bs!1792732 m!7497992))

(assert (=> bs!1792732 m!7498456))

(assert (=> d!2118332 d!2118462))

(declare-fun b!6742550 () Bool)

(declare-fun e!4072592 () Bool)

(declare-fun call!609579 () Bool)

(assert (=> b!6742550 (= e!4072592 call!609579)))

(declare-fun b!6742551 () Bool)

(declare-fun e!4072594 () Bool)

(declare-fun e!4072597 () Bool)

(assert (=> b!6742551 (= e!4072594 e!4072597)))

(declare-fun c!1250843 () Bool)

(assert (=> b!6742551 (= c!1250843 ((_ is Union!16569) lt!2439294))))

(declare-fun b!6742552 () Bool)

(declare-fun e!4072596 () Bool)

(assert (=> b!6742552 (= e!4072596 e!4072592)))

(declare-fun res!2757942 () Bool)

(assert (=> b!6742552 (=> (not res!2757942) (not e!4072592))))

(declare-fun call!609581 () Bool)

(assert (=> b!6742552 (= res!2757942 call!609581)))

(declare-fun b!6742553 () Bool)

(declare-fun e!4072593 () Bool)

(declare-fun call!609580 () Bool)

(assert (=> b!6742553 (= e!4072593 call!609580)))

(declare-fun bm!609574 () Bool)

(assert (=> bm!609574 (= call!609581 (validRegex!8305 (ite c!1250843 (regOne!33651 lt!2439294) (regOne!33650 lt!2439294))))))

(declare-fun b!6742554 () Bool)

(declare-fun e!4072595 () Bool)

(assert (=> b!6742554 (= e!4072595 call!609579)))

(declare-fun b!6742555 () Bool)

(declare-fun res!2757944 () Bool)

(assert (=> b!6742555 (=> (not res!2757944) (not e!4072595))))

(assert (=> b!6742555 (= res!2757944 call!609581)))

(assert (=> b!6742555 (= e!4072597 e!4072595)))

(declare-fun bm!609575 () Bool)

(declare-fun c!1250842 () Bool)

(assert (=> bm!609575 (= call!609580 (validRegex!8305 (ite c!1250842 (reg!16898 lt!2439294) (ite c!1250843 (regTwo!33651 lt!2439294) (regTwo!33650 lt!2439294)))))))

(declare-fun b!6742557 () Bool)

(assert (=> b!6742557 (= e!4072594 e!4072593)))

(declare-fun res!2757946 () Bool)

(assert (=> b!6742557 (= res!2757946 (not (nullable!6556 (reg!16898 lt!2439294))))))

(assert (=> b!6742557 (=> (not res!2757946) (not e!4072593))))

(declare-fun b!6742558 () Bool)

(declare-fun res!2757945 () Bool)

(assert (=> b!6742558 (=> res!2757945 e!4072596)))

(assert (=> b!6742558 (= res!2757945 (not ((_ is Concat!25414) lt!2439294)))))

(assert (=> b!6742558 (= e!4072597 e!4072596)))

(declare-fun bm!609576 () Bool)

(assert (=> bm!609576 (= call!609579 call!609580)))

(declare-fun d!2118466 () Bool)

(declare-fun res!2757943 () Bool)

(declare-fun e!4072591 () Bool)

(assert (=> d!2118466 (=> res!2757943 e!4072591)))

(assert (=> d!2118466 (= res!2757943 ((_ is ElementMatch!16569) lt!2439294))))

(assert (=> d!2118466 (= (validRegex!8305 lt!2439294) e!4072591)))

(declare-fun b!6742556 () Bool)

(assert (=> b!6742556 (= e!4072591 e!4072594)))

(assert (=> b!6742556 (= c!1250842 ((_ is Star!16569) lt!2439294))))

(assert (= (and d!2118466 (not res!2757943)) b!6742556))

(assert (= (and b!6742556 c!1250842) b!6742557))

(assert (= (and b!6742556 (not c!1250842)) b!6742551))

(assert (= (and b!6742557 res!2757946) b!6742553))

(assert (= (and b!6742551 c!1250843) b!6742555))

(assert (= (and b!6742551 (not c!1250843)) b!6742558))

(assert (= (and b!6742555 res!2757944) b!6742554))

(assert (= (and b!6742558 (not res!2757945)) b!6742552))

(assert (= (and b!6742552 res!2757942) b!6742550))

(assert (= (or b!6742554 b!6742550) bm!609576))

(assert (= (or b!6742555 b!6742552) bm!609574))

(assert (= (or b!6742553 bm!609576) bm!609575))

(declare-fun m!7498764 () Bool)

(assert (=> bm!609574 m!7498764))

(declare-fun m!7498766 () Bool)

(assert (=> bm!609575 m!7498766))

(declare-fun m!7498768 () Bool)

(assert (=> b!6742557 m!7498768))

(assert (=> d!2118340 d!2118466))

(declare-fun bs!1792733 () Bool)

(declare-fun d!2118470 () Bool)

(assert (= bs!1792733 (and d!2118470 d!2118286)))

(declare-fun lambda!378846 () Int)

(assert (=> bs!1792733 (= lambda!378846 lambda!378815)))

(declare-fun bs!1792734 () Bool)

(assert (= bs!1792734 (and d!2118470 d!2118344)))

(assert (=> bs!1792734 (= lambda!378846 lambda!378825)))

(declare-fun bs!1792735 () Bool)

(assert (= bs!1792735 (and d!2118470 d!2118430)))

(assert (=> bs!1792735 (= lambda!378846 lambda!378842)))

(declare-fun bs!1792736 () Bool)

(assert (= bs!1792736 (and d!2118470 d!2118280)))

(assert (=> bs!1792736 (= lambda!378846 lambda!378805)))

(declare-fun bs!1792737 () Bool)

(assert (= bs!1792737 (and d!2118470 d!2118342)))

(assert (=> bs!1792737 (= lambda!378846 lambda!378822)))

(declare-fun bs!1792738 () Bool)

(assert (= bs!1792738 (and d!2118470 d!2118314)))

(assert (=> bs!1792738 (= lambda!378846 lambda!378818)))

(declare-fun bs!1792739 () Bool)

(assert (= bs!1792739 (and d!2118470 d!2118278)))

(assert (=> bs!1792739 (= lambda!378846 lambda!378804)))

(declare-fun b!6742570 () Bool)

(declare-fun e!4072606 () Bool)

(declare-fun lt!2439316 () Regex!16569)

(assert (=> b!6742570 (= e!4072606 (isUnion!1373 lt!2439316))))

(declare-fun b!6742571 () Bool)

(declare-fun e!4072609 () Bool)

(assert (=> b!6742571 (= e!4072609 (isEmpty!38230 (t!379705 (unfocusZipperList!1990 (Cons!65884 lt!2439198 Nil!65884)))))))

(declare-fun b!6742573 () Bool)

(declare-fun e!4072604 () Regex!16569)

(assert (=> b!6742573 (= e!4072604 (h!72330 (unfocusZipperList!1990 (Cons!65884 lt!2439198 Nil!65884))))))

(declare-fun b!6742574 () Bool)

(declare-fun e!4072607 () Bool)

(declare-fun e!4072608 () Bool)

(assert (=> b!6742574 (= e!4072607 e!4072608)))

(declare-fun c!1250850 () Bool)

(assert (=> b!6742574 (= c!1250850 (isEmpty!38230 (unfocusZipperList!1990 (Cons!65884 lt!2439198 Nil!65884))))))

(declare-fun b!6742575 () Bool)

(assert (=> b!6742575 (= e!4072608 e!4072606)))

(declare-fun c!1250849 () Bool)

(assert (=> b!6742575 (= c!1250849 (isEmpty!38230 (tail!12651 (unfocusZipperList!1990 (Cons!65884 lt!2439198 Nil!65884)))))))

(declare-fun b!6742576 () Bool)

(declare-fun e!4072605 () Regex!16569)

(assert (=> b!6742576 (= e!4072605 (Union!16569 (h!72330 (unfocusZipperList!1990 (Cons!65884 lt!2439198 Nil!65884))) (generalisedUnion!2413 (t!379705 (unfocusZipperList!1990 (Cons!65884 lt!2439198 Nil!65884))))))))

(declare-fun b!6742577 () Bool)

(assert (=> b!6742577 (= e!4072604 e!4072605)))

(declare-fun c!1250851 () Bool)

(assert (=> b!6742577 (= c!1250851 ((_ is Cons!65882) (unfocusZipperList!1990 (Cons!65884 lt!2439198 Nil!65884))))))

(declare-fun b!6742578 () Bool)

(assert (=> b!6742578 (= e!4072605 EmptyLang!16569)))

(declare-fun b!6742579 () Bool)

(assert (=> b!6742579 (= e!4072606 (= lt!2439316 (head!13566 (unfocusZipperList!1990 (Cons!65884 lt!2439198 Nil!65884)))))))

(assert (=> d!2118470 e!4072607))

(declare-fun res!2757948 () Bool)

(assert (=> d!2118470 (=> (not res!2757948) (not e!4072607))))

(assert (=> d!2118470 (= res!2757948 (validRegex!8305 lt!2439316))))

(assert (=> d!2118470 (= lt!2439316 e!4072604)))

(declare-fun c!1250852 () Bool)

(assert (=> d!2118470 (= c!1250852 e!4072609)))

(declare-fun res!2757949 () Bool)

(assert (=> d!2118470 (=> (not res!2757949) (not e!4072609))))

(assert (=> d!2118470 (= res!2757949 ((_ is Cons!65882) (unfocusZipperList!1990 (Cons!65884 lt!2439198 Nil!65884))))))

(assert (=> d!2118470 (forall!15769 (unfocusZipperList!1990 (Cons!65884 lt!2439198 Nil!65884)) lambda!378846)))

(assert (=> d!2118470 (= (generalisedUnion!2413 (unfocusZipperList!1990 (Cons!65884 lt!2439198 Nil!65884))) lt!2439316)))

(declare-fun b!6742572 () Bool)

(assert (=> b!6742572 (= e!4072608 (isEmptyLang!1943 lt!2439316))))

(assert (= (and d!2118470 res!2757949) b!6742571))

(assert (= (and d!2118470 c!1250852) b!6742573))

(assert (= (and d!2118470 (not c!1250852)) b!6742577))

(assert (= (and b!6742577 c!1250851) b!6742576))

(assert (= (and b!6742577 (not c!1250851)) b!6742578))

(assert (= (and d!2118470 res!2757948) b!6742574))

(assert (= (and b!6742574 c!1250850) b!6742572))

(assert (= (and b!6742574 (not c!1250850)) b!6742575))

(assert (= (and b!6742575 c!1250849) b!6742579))

(assert (= (and b!6742575 (not c!1250849)) b!6742570))

(declare-fun m!7498776 () Bool)

(assert (=> b!6742572 m!7498776))

(declare-fun m!7498780 () Bool)

(assert (=> b!6742570 m!7498780))

(assert (=> b!6742579 m!7498472))

(declare-fun m!7498782 () Bool)

(assert (=> b!6742579 m!7498782))

(assert (=> b!6742574 m!7498472))

(declare-fun m!7498784 () Bool)

(assert (=> b!6742574 m!7498784))

(declare-fun m!7498786 () Bool)

(assert (=> d!2118470 m!7498786))

(assert (=> d!2118470 m!7498472))

(declare-fun m!7498788 () Bool)

(assert (=> d!2118470 m!7498788))

(assert (=> b!6742575 m!7498472))

(declare-fun m!7498790 () Bool)

(assert (=> b!6742575 m!7498790))

(assert (=> b!6742575 m!7498790))

(declare-fun m!7498794 () Bool)

(assert (=> b!6742575 m!7498794))

(declare-fun m!7498796 () Bool)

(assert (=> b!6742576 m!7498796))

(declare-fun m!7498798 () Bool)

(assert (=> b!6742571 m!7498798))

(assert (=> d!2118340 d!2118470))

(declare-fun bs!1792740 () Bool)

(declare-fun d!2118474 () Bool)

(assert (= bs!1792740 (and d!2118474 d!2118286)))

(declare-fun lambda!378847 () Int)

(assert (=> bs!1792740 (= lambda!378847 lambda!378815)))

(declare-fun bs!1792741 () Bool)

(assert (= bs!1792741 (and d!2118474 d!2118344)))

(assert (=> bs!1792741 (= lambda!378847 lambda!378825)))

(declare-fun bs!1792742 () Bool)

(assert (= bs!1792742 (and d!2118474 d!2118430)))

(assert (=> bs!1792742 (= lambda!378847 lambda!378842)))

(declare-fun bs!1792743 () Bool)

(assert (= bs!1792743 (and d!2118474 d!2118280)))

(assert (=> bs!1792743 (= lambda!378847 lambda!378805)))

(declare-fun bs!1792744 () Bool)

(assert (= bs!1792744 (and d!2118474 d!2118470)))

(assert (=> bs!1792744 (= lambda!378847 lambda!378846)))

(declare-fun bs!1792745 () Bool)

(assert (= bs!1792745 (and d!2118474 d!2118342)))

(assert (=> bs!1792745 (= lambda!378847 lambda!378822)))

(declare-fun bs!1792746 () Bool)

(assert (= bs!1792746 (and d!2118474 d!2118314)))

(assert (=> bs!1792746 (= lambda!378847 lambda!378818)))

(declare-fun bs!1792747 () Bool)

(assert (= bs!1792747 (and d!2118474 d!2118278)))

(assert (=> bs!1792747 (= lambda!378847 lambda!378804)))

(declare-fun lt!2439317 () List!66006)

(assert (=> d!2118474 (forall!15769 lt!2439317 lambda!378847)))

(declare-fun e!4072612 () List!66006)

(assert (=> d!2118474 (= lt!2439317 e!4072612)))

(declare-fun c!1250853 () Bool)

(assert (=> d!2118474 (= c!1250853 ((_ is Cons!65884) (Cons!65884 lt!2439198 Nil!65884)))))

(assert (=> d!2118474 (= (unfocusZipperList!1990 (Cons!65884 lt!2439198 Nil!65884)) lt!2439317)))

(declare-fun b!6742581 () Bool)

(assert (=> b!6742581 (= e!4072612 (Cons!65882 (generalisedConcat!2166 (exprs!6453 (h!72332 (Cons!65884 lt!2439198 Nil!65884)))) (unfocusZipperList!1990 (t!379707 (Cons!65884 lt!2439198 Nil!65884)))))))

(declare-fun b!6742583 () Bool)

(assert (=> b!6742583 (= e!4072612 Nil!65882)))

(assert (= (and d!2118474 c!1250853) b!6742581))

(assert (= (and d!2118474 (not c!1250853)) b!6742583))

(declare-fun m!7498804 () Bool)

(assert (=> d!2118474 m!7498804))

(declare-fun m!7498806 () Bool)

(assert (=> b!6742581 m!7498806))

(declare-fun m!7498808 () Bool)

(assert (=> b!6742581 m!7498808))

(assert (=> d!2118340 d!2118474))

(declare-fun bs!1792748 () Bool)

(declare-fun b!6742595 () Bool)

(assert (= bs!1792748 (and b!6742595 d!2118198)))

(declare-fun lambda!378848 () Int)

(assert (=> bs!1792748 (not (= lambda!378848 lambda!378776))))

(declare-fun bs!1792749 () Bool)

(assert (= bs!1792749 (and b!6742595 d!2118172)))

(assert (=> bs!1792749 (not (= lambda!378848 lambda!378757))))

(declare-fun bs!1792750 () Bool)

(assert (= bs!1792750 (and b!6742595 b!6741534)))

(assert (=> bs!1792750 (not (= lambda!378848 lambda!378744))))

(declare-fun bs!1792751 () Bool)

(assert (= bs!1792751 (and b!6742595 d!2118400)))

(assert (=> bs!1792751 (not (= lambda!378848 lambda!378839))))

(declare-fun bs!1792752 () Bool)

(assert (= bs!1792752 (and b!6742595 b!6741920)))

(assert (=> bs!1792752 (= (and (= (reg!16898 (regTwo!33651 r!7292)) (reg!16898 r!7292)) (= (regTwo!33651 r!7292) r!7292)) (= lambda!378848 lambda!378794))))

(assert (=> bs!1792750 (= (and (= (reg!16898 (regTwo!33651 r!7292)) (reg!16898 r!7292)) (= (regTwo!33651 r!7292) r!7292)) (= lambda!378848 lambda!378743))))

(declare-fun bs!1792753 () Bool)

(assert (= bs!1792753 (and b!6742595 d!2118384)))

(assert (=> bs!1792753 (not (= lambda!378848 lambda!378833))))

(assert (=> bs!1792749 (not (= lambda!378848 lambda!378756))))

(declare-fun bs!1792754 () Bool)

(assert (= bs!1792754 (and b!6742595 d!2118180)))

(assert (=> bs!1792754 (= (and (= (reg!16898 (regTwo!33651 r!7292)) (reg!16898 r!7292)) (= (regTwo!33651 r!7292) (Star!16569 (reg!16898 r!7292)))) (= lambda!378848 lambda!378767))))

(assert (=> bs!1792751 (not (= lambda!378848 lambda!378840))))

(declare-fun bs!1792755 () Bool)

(assert (= bs!1792755 (and b!6742595 b!6741926)))

(assert (=> bs!1792755 (not (= lambda!378848 lambda!378795))))

(assert (=> bs!1792754 (not (= lambda!378848 lambda!378765))))

(assert (=> bs!1792750 (not (= lambda!378848 lambda!378742))))

(assert (=> b!6742595 true))

(assert (=> b!6742595 true))

(declare-fun bs!1792756 () Bool)

(declare-fun b!6742601 () Bool)

(assert (= bs!1792756 (and b!6742601 d!2118198)))

(declare-fun lambda!378849 () Int)

(assert (=> bs!1792756 (not (= lambda!378849 lambda!378776))))

(declare-fun bs!1792757 () Bool)

(assert (= bs!1792757 (and b!6742601 d!2118172)))

(assert (=> bs!1792757 (= (and (= (regOne!33650 (regTwo!33651 r!7292)) (reg!16898 r!7292)) (= (regTwo!33650 (regTwo!33651 r!7292)) r!7292)) (= lambda!378849 lambda!378757))))

(declare-fun bs!1792758 () Bool)

(assert (= bs!1792758 (and b!6742601 b!6741534)))

(assert (=> bs!1792758 (= (and (= (regOne!33650 (regTwo!33651 r!7292)) (reg!16898 r!7292)) (= (regTwo!33650 (regTwo!33651 r!7292)) r!7292)) (= lambda!378849 lambda!378744))))

(declare-fun bs!1792759 () Bool)

(assert (= bs!1792759 (and b!6742601 b!6742595)))

(assert (=> bs!1792759 (not (= lambda!378849 lambda!378848))))

(declare-fun bs!1792760 () Bool)

(assert (= bs!1792760 (and b!6742601 d!2118400)))

(assert (=> bs!1792760 (not (= lambda!378849 lambda!378839))))

(declare-fun bs!1792761 () Bool)

(assert (= bs!1792761 (and b!6742601 b!6741920)))

(assert (=> bs!1792761 (not (= lambda!378849 lambda!378794))))

(assert (=> bs!1792758 (not (= lambda!378849 lambda!378743))))

(declare-fun bs!1792762 () Bool)

(assert (= bs!1792762 (and b!6742601 d!2118384)))

(assert (=> bs!1792762 (not (= lambda!378849 lambda!378833))))

(assert (=> bs!1792757 (not (= lambda!378849 lambda!378756))))

(declare-fun bs!1792763 () Bool)

(assert (= bs!1792763 (and b!6742601 d!2118180)))

(assert (=> bs!1792763 (not (= lambda!378849 lambda!378767))))

(assert (=> bs!1792760 (= (and (= (regOne!33650 (regTwo!33651 r!7292)) (reg!16898 r!7292)) (= (regTwo!33650 (regTwo!33651 r!7292)) r!7292)) (= lambda!378849 lambda!378840))))

(declare-fun bs!1792764 () Bool)

(assert (= bs!1792764 (and b!6742601 b!6741926)))

(assert (=> bs!1792764 (= (and (= (regOne!33650 (regTwo!33651 r!7292)) (regOne!33650 r!7292)) (= (regTwo!33650 (regTwo!33651 r!7292)) (regTwo!33650 r!7292))) (= lambda!378849 lambda!378795))))

(assert (=> bs!1792763 (not (= lambda!378849 lambda!378765))))

(assert (=> bs!1792758 (not (= lambda!378849 lambda!378742))))

(assert (=> b!6742601 true))

(assert (=> b!6742601 true))

(declare-fun b!6742593 () Bool)

(declare-fun e!4072626 () Bool)

(declare-fun call!609591 () Bool)

(assert (=> b!6742593 (= e!4072626 call!609591)))

(declare-fun b!6742594 () Bool)

(declare-fun e!4072621 () Bool)

(assert (=> b!6742594 (= e!4072621 (matchRSpec!3670 (regTwo!33651 (regTwo!33651 r!7292)) s!2326))))

(declare-fun e!4072622 () Bool)

(declare-fun call!609592 () Bool)

(assert (=> b!6742595 (= e!4072622 call!609592)))

(declare-fun b!6742596 () Bool)

(declare-fun e!4072623 () Bool)

(assert (=> b!6742596 (= e!4072623 (= s!2326 (Cons!65883 (c!1250577 (regTwo!33651 r!7292)) Nil!65883)))))

(declare-fun b!6742597 () Bool)

(declare-fun e!4072625 () Bool)

(declare-fun e!4072620 () Bool)

(assert (=> b!6742597 (= e!4072625 e!4072620)))

(declare-fun c!1250856 () Bool)

(assert (=> b!6742597 (= c!1250856 ((_ is Star!16569) (regTwo!33651 r!7292)))))

(declare-fun b!6742598 () Bool)

(assert (=> b!6742598 (= e!4072625 e!4072621)))

(declare-fun res!2757958 () Bool)

(assert (=> b!6742598 (= res!2757958 (matchRSpec!3670 (regOne!33651 (regTwo!33651 r!7292)) s!2326))))

(assert (=> b!6742598 (=> res!2757958 e!4072621)))

(declare-fun b!6742599 () Bool)

(declare-fun res!2757959 () Bool)

(assert (=> b!6742599 (=> res!2757959 e!4072622)))

(assert (=> b!6742599 (= res!2757959 call!609591)))

(assert (=> b!6742599 (= e!4072620 e!4072622)))

(declare-fun b!6742600 () Bool)

(declare-fun c!1250859 () Bool)

(assert (=> b!6742600 (= c!1250859 ((_ is Union!16569) (regTwo!33651 r!7292)))))

(assert (=> b!6742600 (= e!4072623 e!4072625)))

(assert (=> b!6742601 (= e!4072620 call!609592)))

(declare-fun d!2118478 () Bool)

(declare-fun c!1250858 () Bool)

(assert (=> d!2118478 (= c!1250858 ((_ is EmptyExpr!16569) (regTwo!33651 r!7292)))))

(assert (=> d!2118478 (= (matchRSpec!3670 (regTwo!33651 r!7292) s!2326) e!4072626)))

(declare-fun bm!609586 () Bool)

(assert (=> bm!609586 (= call!609591 (isEmpty!38225 s!2326))))

(declare-fun b!6742602 () Bool)

(declare-fun c!1250857 () Bool)

(assert (=> b!6742602 (= c!1250857 ((_ is ElementMatch!16569) (regTwo!33651 r!7292)))))

(declare-fun e!4072624 () Bool)

(assert (=> b!6742602 (= e!4072624 e!4072623)))

(declare-fun bm!609587 () Bool)

(assert (=> bm!609587 (= call!609592 (Exists!3637 (ite c!1250856 lambda!378848 lambda!378849)))))

(declare-fun b!6742603 () Bool)

(assert (=> b!6742603 (= e!4072626 e!4072624)))

(declare-fun res!2757957 () Bool)

(assert (=> b!6742603 (= res!2757957 (not ((_ is EmptyLang!16569) (regTwo!33651 r!7292))))))

(assert (=> b!6742603 (=> (not res!2757957) (not e!4072624))))

(assert (= (and d!2118478 c!1250858) b!6742593))

(assert (= (and d!2118478 (not c!1250858)) b!6742603))

(assert (= (and b!6742603 res!2757957) b!6742602))

(assert (= (and b!6742602 c!1250857) b!6742596))

(assert (= (and b!6742602 (not c!1250857)) b!6742600))

(assert (= (and b!6742600 c!1250859) b!6742598))

(assert (= (and b!6742600 (not c!1250859)) b!6742597))

(assert (= (and b!6742598 (not res!2757958)) b!6742594))

(assert (= (and b!6742597 c!1250856) b!6742599))

(assert (= (and b!6742597 (not c!1250856)) b!6742601))

(assert (= (and b!6742599 (not res!2757959)) b!6742595))

(assert (= (or b!6742595 b!6742601) bm!609587))

(assert (= (or b!6742593 b!6742599) bm!609586))

(declare-fun m!7498842 () Bool)

(assert (=> b!6742594 m!7498842))

(declare-fun m!7498844 () Bool)

(assert (=> b!6742598 m!7498844))

(assert (=> bm!609586 m!7497990))

(declare-fun m!7498846 () Bool)

(assert (=> bm!609587 m!7498846))

(assert (=> b!6741919 d!2118478))

(declare-fun d!2118490 () Bool)

(assert (=> d!2118490 (= (isEmpty!38225 (tail!12650 s!2326)) ((_ is Nil!65883) (tail!12650 s!2326)))))

(assert (=> b!6741987 d!2118490))

(declare-fun d!2118492 () Bool)

(assert (=> d!2118492 (= (tail!12650 s!2326) (t!379706 s!2326))))

(assert (=> b!6741987 d!2118492))

(declare-fun d!2118494 () Bool)

(declare-fun res!2757987 () Bool)

(declare-fun e!4072662 () Bool)

(assert (=> d!2118494 (=> res!2757987 e!4072662)))

(assert (=> d!2118494 (= res!2757987 ((_ is Nil!65882) (exprs!6453 setElem!46037)))))

(assert (=> d!2118494 (= (forall!15769 (exprs!6453 setElem!46037) lambda!378805) e!4072662)))

(declare-fun b!6742657 () Bool)

(declare-fun e!4072663 () Bool)

(assert (=> b!6742657 (= e!4072662 e!4072663)))

(declare-fun res!2757988 () Bool)

(assert (=> b!6742657 (=> (not res!2757988) (not e!4072663))))

(declare-fun dynLambda!26290 (Int Regex!16569) Bool)

(assert (=> b!6742657 (= res!2757988 (dynLambda!26290 lambda!378805 (h!72330 (exprs!6453 setElem!46037))))))

(declare-fun b!6742658 () Bool)

(assert (=> b!6742658 (= e!4072663 (forall!15769 (t!379705 (exprs!6453 setElem!46037)) lambda!378805))))

(assert (= (and d!2118494 (not res!2757987)) b!6742657))

(assert (= (and b!6742657 res!2757988) b!6742658))

(declare-fun b_lambda!253943 () Bool)

(assert (=> (not b_lambda!253943) (not b!6742657)))

(declare-fun m!7498876 () Bool)

(assert (=> b!6742657 m!7498876))

(declare-fun m!7498878 () Bool)

(assert (=> b!6742658 m!7498878))

(assert (=> d!2118280 d!2118494))

(declare-fun b!6742659 () Bool)

(declare-fun e!4072669 () Bool)

(assert (=> b!6742659 (= e!4072669 (nullable!6556 (regOne!33650 (h!72330 (exprs!6453 lt!2439204)))))))

(declare-fun b!6742660 () Bool)

(declare-fun e!4072666 () (InoxSet Context!11906))

(declare-fun call!609611 () (InoxSet Context!11906))

(declare-fun call!609607 () (InoxSet Context!11906))

(assert (=> b!6742660 (= e!4072666 ((_ map or) call!609611 call!609607))))

(declare-fun b!6742661 () Bool)

(declare-fun e!4072668 () (InoxSet Context!11906))

(assert (=> b!6742661 (= e!4072668 (store ((as const (Array Context!11906 Bool)) false) (Context!11907 (t!379705 (exprs!6453 lt!2439204))) true))))

(declare-fun b!6742662 () Bool)

(declare-fun e!4072667 () (InoxSet Context!11906))

(declare-fun call!609609 () (InoxSet Context!11906))

(assert (=> b!6742662 (= e!4072667 call!609609)))

(declare-fun bm!609601 () Bool)

(declare-fun call!609606 () List!66006)

(declare-fun call!609608 () List!66006)

(assert (=> bm!609601 (= call!609606 call!609608)))

(declare-fun b!6742663 () Bool)

(declare-fun c!1250877 () Bool)

(assert (=> b!6742663 (= c!1250877 e!4072669)))

(declare-fun res!2757989 () Bool)

(assert (=> b!6742663 (=> (not res!2757989) (not e!4072669))))

(assert (=> b!6742663 (= res!2757989 ((_ is Concat!25414) (h!72330 (exprs!6453 lt!2439204))))))

(declare-fun e!4072664 () (InoxSet Context!11906))

(assert (=> b!6742663 (= e!4072664 e!4072666)))

(declare-fun b!6742664 () Bool)

(assert (=> b!6742664 (= e!4072666 e!4072667)))

(declare-fun c!1250873 () Bool)

(assert (=> b!6742664 (= c!1250873 ((_ is Concat!25414) (h!72330 (exprs!6453 lt!2439204))))))

(declare-fun b!6742665 () Bool)

(declare-fun c!1250875 () Bool)

(assert (=> b!6742665 (= c!1250875 ((_ is Star!16569) (h!72330 (exprs!6453 lt!2439204))))))

(declare-fun e!4072665 () (InoxSet Context!11906))

(assert (=> b!6742665 (= e!4072667 e!4072665)))

(declare-fun b!6742666 () Bool)

(assert (=> b!6742666 (= e!4072665 call!609609)))

(declare-fun b!6742667 () Bool)

(assert (=> b!6742667 (= e!4072668 e!4072664)))

(declare-fun c!1250876 () Bool)

(assert (=> b!6742667 (= c!1250876 ((_ is Union!16569) (h!72330 (exprs!6453 lt!2439204))))))

(declare-fun b!6742668 () Bool)

(declare-fun call!609610 () (InoxSet Context!11906))

(assert (=> b!6742668 (= e!4072664 ((_ map or) call!609610 call!609611))))

(declare-fun bm!609602 () Bool)

(assert (=> bm!609602 (= call!609611 (derivationStepZipperDown!1797 (ite c!1250876 (regTwo!33651 (h!72330 (exprs!6453 lt!2439204))) (regOne!33650 (h!72330 (exprs!6453 lt!2439204)))) (ite c!1250876 (Context!11907 (t!379705 (exprs!6453 lt!2439204))) (Context!11907 call!609608)) (h!72331 s!2326)))))

(declare-fun b!6742669 () Bool)

(assert (=> b!6742669 (= e!4072665 ((as const (Array Context!11906 Bool)) false))))

(declare-fun bm!609603 () Bool)

(assert (=> bm!609603 (= call!609610 (derivationStepZipperDown!1797 (ite c!1250876 (regOne!33651 (h!72330 (exprs!6453 lt!2439204))) (ite c!1250877 (regTwo!33650 (h!72330 (exprs!6453 lt!2439204))) (ite c!1250873 (regOne!33650 (h!72330 (exprs!6453 lt!2439204))) (reg!16898 (h!72330 (exprs!6453 lt!2439204)))))) (ite (or c!1250876 c!1250877) (Context!11907 (t!379705 (exprs!6453 lt!2439204))) (Context!11907 call!609606)) (h!72331 s!2326)))))

(declare-fun bm!609604 () Bool)

(assert (=> bm!609604 (= call!609608 ($colon$colon!2386 (exprs!6453 (Context!11907 (t!379705 (exprs!6453 lt!2439204)))) (ite (or c!1250877 c!1250873) (regTwo!33650 (h!72330 (exprs!6453 lt!2439204))) (h!72330 (exprs!6453 lt!2439204)))))))

(declare-fun bm!609605 () Bool)

(assert (=> bm!609605 (= call!609609 call!609607)))

(declare-fun bm!609606 () Bool)

(assert (=> bm!609606 (= call!609607 call!609610)))

(declare-fun d!2118506 () Bool)

(declare-fun c!1250874 () Bool)

(assert (=> d!2118506 (= c!1250874 (and ((_ is ElementMatch!16569) (h!72330 (exprs!6453 lt!2439204))) (= (c!1250577 (h!72330 (exprs!6453 lt!2439204))) (h!72331 s!2326))))))

(assert (=> d!2118506 (= (derivationStepZipperDown!1797 (h!72330 (exprs!6453 lt!2439204)) (Context!11907 (t!379705 (exprs!6453 lt!2439204))) (h!72331 s!2326)) e!4072668)))

(assert (= (and d!2118506 c!1250874) b!6742661))

(assert (= (and d!2118506 (not c!1250874)) b!6742667))

(assert (= (and b!6742667 c!1250876) b!6742668))

(assert (= (and b!6742667 (not c!1250876)) b!6742663))

(assert (= (and b!6742663 res!2757989) b!6742659))

(assert (= (and b!6742663 c!1250877) b!6742660))

(assert (= (and b!6742663 (not c!1250877)) b!6742664))

(assert (= (and b!6742664 c!1250873) b!6742662))

(assert (= (and b!6742664 (not c!1250873)) b!6742665))

(assert (= (and b!6742665 c!1250875) b!6742666))

(assert (= (and b!6742665 (not c!1250875)) b!6742669))

(assert (= (or b!6742662 b!6742666) bm!609601))

(assert (= (or b!6742662 b!6742666) bm!609605))

(assert (= (or b!6742660 bm!609601) bm!609604))

(assert (= (or b!6742660 bm!609605) bm!609606))

(assert (= (or b!6742668 b!6742660) bm!609602))

(assert (= (or b!6742668 bm!609606) bm!609603))

(declare-fun m!7498880 () Bool)

(assert (=> b!6742659 m!7498880))

(declare-fun m!7498882 () Bool)

(assert (=> bm!609602 m!7498882))

(declare-fun m!7498884 () Bool)

(assert (=> bm!609603 m!7498884))

(declare-fun m!7498886 () Bool)

(assert (=> bm!609604 m!7498886))

(declare-fun m!7498888 () Bool)

(assert (=> b!6742661 m!7498888))

(assert (=> bm!609529 d!2118506))

(declare-fun d!2118514 () Bool)

(assert (=> d!2118514 (= (isConcat!1458 lt!2439282) ((_ is Concat!25414) lt!2439282))))

(assert (=> b!6742141 d!2118514))

(assert (=> d!2118298 d!2118190))

(declare-fun d!2118518 () Bool)

(assert (=> d!2118518 (= (isEmpty!38230 (tail!12651 (unfocusZipperList!1990 zl!343))) ((_ is Nil!65882) (tail!12651 (unfocusZipperList!1990 zl!343))))))

(assert (=> b!6742247 d!2118518))

(declare-fun d!2118522 () Bool)

(assert (=> d!2118522 (= (tail!12651 (unfocusZipperList!1990 zl!343)) (t!379705 (unfocusZipperList!1990 zl!343)))))

(assert (=> b!6742247 d!2118522))

(declare-fun d!2118526 () Bool)

(assert (=> d!2118526 (= (nullable!6556 (reg!16898 r!7292)) (nullableFct!2469 (reg!16898 r!7292)))))

(declare-fun bs!1792769 () Bool)

(assert (= bs!1792769 d!2118526))

(declare-fun m!7498898 () Bool)

(assert (=> bs!1792769 m!7498898))

(assert (=> b!6742096 d!2118526))

(declare-fun bs!1792770 () Bool)

(declare-fun b!6742677 () Bool)

(assert (= bs!1792770 (and b!6742677 d!2118198)))

(declare-fun lambda!378850 () Int)

(assert (=> bs!1792770 (not (= lambda!378850 lambda!378776))))

(declare-fun bs!1792771 () Bool)

(assert (= bs!1792771 (and b!6742677 d!2118172)))

(assert (=> bs!1792771 (not (= lambda!378850 lambda!378757))))

(declare-fun bs!1792772 () Bool)

(assert (= bs!1792772 (and b!6742677 b!6741534)))

(assert (=> bs!1792772 (not (= lambda!378850 lambda!378744))))

(declare-fun bs!1792773 () Bool)

(assert (= bs!1792773 (and b!6742677 b!6742595)))

(assert (=> bs!1792773 (= (and (= (reg!16898 (regOne!33651 r!7292)) (reg!16898 (regTwo!33651 r!7292))) (= (regOne!33651 r!7292) (regTwo!33651 r!7292))) (= lambda!378850 lambda!378848))))

(declare-fun bs!1792774 () Bool)

(assert (= bs!1792774 (and b!6742677 d!2118400)))

(assert (=> bs!1792774 (not (= lambda!378850 lambda!378839))))

(declare-fun bs!1792775 () Bool)

(assert (= bs!1792775 (and b!6742677 b!6742601)))

(assert (=> bs!1792775 (not (= lambda!378850 lambda!378849))))

(declare-fun bs!1792776 () Bool)

(assert (= bs!1792776 (and b!6742677 b!6741920)))

(assert (=> bs!1792776 (= (and (= (reg!16898 (regOne!33651 r!7292)) (reg!16898 r!7292)) (= (regOne!33651 r!7292) r!7292)) (= lambda!378850 lambda!378794))))

(assert (=> bs!1792772 (= (and (= (reg!16898 (regOne!33651 r!7292)) (reg!16898 r!7292)) (= (regOne!33651 r!7292) r!7292)) (= lambda!378850 lambda!378743))))

(declare-fun bs!1792777 () Bool)

(assert (= bs!1792777 (and b!6742677 d!2118384)))

(assert (=> bs!1792777 (not (= lambda!378850 lambda!378833))))

(assert (=> bs!1792771 (not (= lambda!378850 lambda!378756))))

(declare-fun bs!1792778 () Bool)

(assert (= bs!1792778 (and b!6742677 d!2118180)))

(assert (=> bs!1792778 (= (and (= (reg!16898 (regOne!33651 r!7292)) (reg!16898 r!7292)) (= (regOne!33651 r!7292) (Star!16569 (reg!16898 r!7292)))) (= lambda!378850 lambda!378767))))

(assert (=> bs!1792774 (not (= lambda!378850 lambda!378840))))

(declare-fun bs!1792779 () Bool)

(assert (= bs!1792779 (and b!6742677 b!6741926)))

(assert (=> bs!1792779 (not (= lambda!378850 lambda!378795))))

(assert (=> bs!1792778 (not (= lambda!378850 lambda!378765))))

(assert (=> bs!1792772 (not (= lambda!378850 lambda!378742))))

(assert (=> b!6742677 true))

(assert (=> b!6742677 true))

(declare-fun bs!1792780 () Bool)

(declare-fun b!6742683 () Bool)

(assert (= bs!1792780 (and b!6742683 d!2118198)))

(declare-fun lambda!378851 () Int)

(assert (=> bs!1792780 (not (= lambda!378851 lambda!378776))))

(declare-fun bs!1792781 () Bool)

(assert (= bs!1792781 (and b!6742683 d!2118172)))

(assert (=> bs!1792781 (= (and (= (regOne!33650 (regOne!33651 r!7292)) (reg!16898 r!7292)) (= (regTwo!33650 (regOne!33651 r!7292)) r!7292)) (= lambda!378851 lambda!378757))))

(declare-fun bs!1792782 () Bool)

(assert (= bs!1792782 (and b!6742683 b!6741534)))

(assert (=> bs!1792782 (= (and (= (regOne!33650 (regOne!33651 r!7292)) (reg!16898 r!7292)) (= (regTwo!33650 (regOne!33651 r!7292)) r!7292)) (= lambda!378851 lambda!378744))))

(declare-fun bs!1792783 () Bool)

(assert (= bs!1792783 (and b!6742683 b!6742677)))

(assert (=> bs!1792783 (not (= lambda!378851 lambda!378850))))

(declare-fun bs!1792784 () Bool)

(assert (= bs!1792784 (and b!6742683 b!6742595)))

(assert (=> bs!1792784 (not (= lambda!378851 lambda!378848))))

(declare-fun bs!1792785 () Bool)

(assert (= bs!1792785 (and b!6742683 d!2118400)))

(assert (=> bs!1792785 (not (= lambda!378851 lambda!378839))))

(declare-fun bs!1792786 () Bool)

(assert (= bs!1792786 (and b!6742683 b!6742601)))

(assert (=> bs!1792786 (= (and (= (regOne!33650 (regOne!33651 r!7292)) (regOne!33650 (regTwo!33651 r!7292))) (= (regTwo!33650 (regOne!33651 r!7292)) (regTwo!33650 (regTwo!33651 r!7292)))) (= lambda!378851 lambda!378849))))

(declare-fun bs!1792787 () Bool)

(assert (= bs!1792787 (and b!6742683 b!6741920)))

(assert (=> bs!1792787 (not (= lambda!378851 lambda!378794))))

(assert (=> bs!1792782 (not (= lambda!378851 lambda!378743))))

(declare-fun bs!1792788 () Bool)

(assert (= bs!1792788 (and b!6742683 d!2118384)))

(assert (=> bs!1792788 (not (= lambda!378851 lambda!378833))))

(assert (=> bs!1792781 (not (= lambda!378851 lambda!378756))))

(declare-fun bs!1792789 () Bool)

(assert (= bs!1792789 (and b!6742683 d!2118180)))

(assert (=> bs!1792789 (not (= lambda!378851 lambda!378767))))

(assert (=> bs!1792785 (= (and (= (regOne!33650 (regOne!33651 r!7292)) (reg!16898 r!7292)) (= (regTwo!33650 (regOne!33651 r!7292)) r!7292)) (= lambda!378851 lambda!378840))))

(declare-fun bs!1792790 () Bool)

(assert (= bs!1792790 (and b!6742683 b!6741926)))

(assert (=> bs!1792790 (= (and (= (regOne!33650 (regOne!33651 r!7292)) (regOne!33650 r!7292)) (= (regTwo!33650 (regOne!33651 r!7292)) (regTwo!33650 r!7292))) (= lambda!378851 lambda!378795))))

(assert (=> bs!1792789 (not (= lambda!378851 lambda!378765))))

(assert (=> bs!1792782 (not (= lambda!378851 lambda!378742))))

(assert (=> b!6742683 true))

(assert (=> b!6742683 true))

(declare-fun b!6742675 () Bool)

(declare-fun e!4072679 () Bool)

(declare-fun call!609613 () Bool)

(assert (=> b!6742675 (= e!4072679 call!609613)))

(declare-fun b!6742676 () Bool)

(declare-fun e!4072674 () Bool)

(assert (=> b!6742676 (= e!4072674 (matchRSpec!3670 (regTwo!33651 (regOne!33651 r!7292)) s!2326))))

(declare-fun e!4072675 () Bool)

(declare-fun call!609614 () Bool)

(assert (=> b!6742677 (= e!4072675 call!609614)))

(declare-fun b!6742678 () Bool)

(declare-fun e!4072676 () Bool)

(assert (=> b!6742678 (= e!4072676 (= s!2326 (Cons!65883 (c!1250577 (regOne!33651 r!7292)) Nil!65883)))))

(declare-fun b!6742679 () Bool)

(declare-fun e!4072678 () Bool)

(declare-fun e!4072673 () Bool)

(assert (=> b!6742679 (= e!4072678 e!4072673)))

(declare-fun c!1250880 () Bool)

(assert (=> b!6742679 (= c!1250880 ((_ is Star!16569) (regOne!33651 r!7292)))))

(declare-fun b!6742680 () Bool)

(assert (=> b!6742680 (= e!4072678 e!4072674)))

(declare-fun res!2757992 () Bool)

(assert (=> b!6742680 (= res!2757992 (matchRSpec!3670 (regOne!33651 (regOne!33651 r!7292)) s!2326))))

(assert (=> b!6742680 (=> res!2757992 e!4072674)))

(declare-fun b!6742681 () Bool)

(declare-fun res!2757993 () Bool)

(assert (=> b!6742681 (=> res!2757993 e!4072675)))

(assert (=> b!6742681 (= res!2757993 call!609613)))

(assert (=> b!6742681 (= e!4072673 e!4072675)))

(declare-fun b!6742682 () Bool)

(declare-fun c!1250883 () Bool)

(assert (=> b!6742682 (= c!1250883 ((_ is Union!16569) (regOne!33651 r!7292)))))

(assert (=> b!6742682 (= e!4072676 e!4072678)))

(assert (=> b!6742683 (= e!4072673 call!609614)))

(declare-fun d!2118528 () Bool)

(declare-fun c!1250882 () Bool)

(assert (=> d!2118528 (= c!1250882 ((_ is EmptyExpr!16569) (regOne!33651 r!7292)))))

(assert (=> d!2118528 (= (matchRSpec!3670 (regOne!33651 r!7292) s!2326) e!4072679)))

(declare-fun bm!609608 () Bool)

(assert (=> bm!609608 (= call!609613 (isEmpty!38225 s!2326))))

(declare-fun b!6742684 () Bool)

(declare-fun c!1250881 () Bool)

(assert (=> b!6742684 (= c!1250881 ((_ is ElementMatch!16569) (regOne!33651 r!7292)))))

(declare-fun e!4072677 () Bool)

(assert (=> b!6742684 (= e!4072677 e!4072676)))

(declare-fun bm!609609 () Bool)

(assert (=> bm!609609 (= call!609614 (Exists!3637 (ite c!1250880 lambda!378850 lambda!378851)))))

(declare-fun b!6742685 () Bool)

(assert (=> b!6742685 (= e!4072679 e!4072677)))

(declare-fun res!2757991 () Bool)

(assert (=> b!6742685 (= res!2757991 (not ((_ is EmptyLang!16569) (regOne!33651 r!7292))))))

(assert (=> b!6742685 (=> (not res!2757991) (not e!4072677))))

(assert (= (and d!2118528 c!1250882) b!6742675))

(assert (= (and d!2118528 (not c!1250882)) b!6742685))

(assert (= (and b!6742685 res!2757991) b!6742684))

(assert (= (and b!6742684 c!1250881) b!6742678))

(assert (= (and b!6742684 (not c!1250881)) b!6742682))

(assert (= (and b!6742682 c!1250883) b!6742680))

(assert (= (and b!6742682 (not c!1250883)) b!6742679))

(assert (= (and b!6742680 (not res!2757992)) b!6742676))

(assert (= (and b!6742679 c!1250880) b!6742681))

(assert (= (and b!6742679 (not c!1250880)) b!6742683))

(assert (= (and b!6742681 (not res!2757993)) b!6742677))

(assert (= (or b!6742677 b!6742683) bm!609609))

(assert (= (or b!6742675 b!6742681) bm!609608))

(declare-fun m!7498916 () Bool)

(assert (=> b!6742676 m!7498916))

(declare-fun m!7498920 () Bool)

(assert (=> b!6742680 m!7498920))

(assert (=> bm!609608 m!7497990))

(declare-fun m!7498922 () Bool)

(assert (=> bm!609609 m!7498922))

(assert (=> b!6741923 d!2118528))

(declare-fun b!6742712 () Bool)

(declare-fun e!4072695 () Bool)

(assert (=> b!6742712 (= e!4072695 (= (head!13565 (tail!12650 s!2326)) (c!1250577 (derivativeStep!5241 r!7292 (head!13565 s!2326)))))))

(declare-fun b!6742713 () Bool)

(declare-fun res!2757999 () Bool)

(declare-fun e!4072697 () Bool)

(assert (=> b!6742713 (=> res!2757999 e!4072697)))

(assert (=> b!6742713 (= res!2757999 (not ((_ is ElementMatch!16569) (derivativeStep!5241 r!7292 (head!13565 s!2326)))))))

(declare-fun e!4072700 () Bool)

(assert (=> b!6742713 (= e!4072700 e!4072697)))

(declare-fun b!6742714 () Bool)

(declare-fun res!2758003 () Bool)

(declare-fun e!4072696 () Bool)

(assert (=> b!6742714 (=> res!2758003 e!4072696)))

(assert (=> b!6742714 (= res!2758003 (not (isEmpty!38225 (tail!12650 (tail!12650 s!2326)))))))

(declare-fun b!6742715 () Bool)

(declare-fun e!4072699 () Bool)

(assert (=> b!6742715 (= e!4072699 (nullable!6556 (derivativeStep!5241 r!7292 (head!13565 s!2326))))))

(declare-fun b!6742716 () Bool)

(declare-fun e!4072701 () Bool)

(assert (=> b!6742716 (= e!4072697 e!4072701)))

(declare-fun res!2758000 () Bool)

(assert (=> b!6742716 (=> (not res!2758000) (not e!4072701))))

(declare-fun lt!2439320 () Bool)

(assert (=> b!6742716 (= res!2758000 (not lt!2439320))))

(declare-fun b!6742717 () Bool)

(declare-fun res!2758005 () Bool)

(assert (=> b!6742717 (=> (not res!2758005) (not e!4072695))))

(declare-fun call!609627 () Bool)

(assert (=> b!6742717 (= res!2758005 (not call!609627))))

(declare-fun b!6742718 () Bool)

(assert (=> b!6742718 (= e!4072699 (matchR!8752 (derivativeStep!5241 (derivativeStep!5241 r!7292 (head!13565 s!2326)) (head!13565 (tail!12650 s!2326))) (tail!12650 (tail!12650 s!2326))))))

(declare-fun b!6742719 () Bool)

(assert (=> b!6742719 (= e!4072700 (not lt!2439320))))

(declare-fun d!2118540 () Bool)

(declare-fun e!4072698 () Bool)

(assert (=> d!2118540 e!4072698))

(declare-fun c!1250894 () Bool)

(assert (=> d!2118540 (= c!1250894 ((_ is EmptyExpr!16569) (derivativeStep!5241 r!7292 (head!13565 s!2326))))))

(assert (=> d!2118540 (= lt!2439320 e!4072699)))

(declare-fun c!1250895 () Bool)

(assert (=> d!2118540 (= c!1250895 (isEmpty!38225 (tail!12650 s!2326)))))

(assert (=> d!2118540 (validRegex!8305 (derivativeStep!5241 r!7292 (head!13565 s!2326)))))

(assert (=> d!2118540 (= (matchR!8752 (derivativeStep!5241 r!7292 (head!13565 s!2326)) (tail!12650 s!2326)) lt!2439320)))

(declare-fun b!6742711 () Bool)

(assert (=> b!6742711 (= e!4072698 e!4072700)))

(declare-fun c!1250896 () Bool)

(assert (=> b!6742711 (= c!1250896 ((_ is EmptyLang!16569) (derivativeStep!5241 r!7292 (head!13565 s!2326))))))

(declare-fun b!6742720 () Bool)

(declare-fun res!2758006 () Bool)

(assert (=> b!6742720 (=> res!2758006 e!4072697)))

(assert (=> b!6742720 (= res!2758006 e!4072695)))

(declare-fun res!2758001 () Bool)

(assert (=> b!6742720 (=> (not res!2758001) (not e!4072695))))

(assert (=> b!6742720 (= res!2758001 lt!2439320)))

(declare-fun b!6742721 () Bool)

(assert (=> b!6742721 (= e!4072701 e!4072696)))

(declare-fun res!2758002 () Bool)

(assert (=> b!6742721 (=> res!2758002 e!4072696)))

(assert (=> b!6742721 (= res!2758002 call!609627)))

(declare-fun b!6742722 () Bool)

(assert (=> b!6742722 (= e!4072698 (= lt!2439320 call!609627))))

(declare-fun b!6742723 () Bool)

(assert (=> b!6742723 (= e!4072696 (not (= (head!13565 (tail!12650 s!2326)) (c!1250577 (derivativeStep!5241 r!7292 (head!13565 s!2326))))))))

(declare-fun bm!609622 () Bool)

(assert (=> bm!609622 (= call!609627 (isEmpty!38225 (tail!12650 s!2326)))))

(declare-fun b!6742724 () Bool)

(declare-fun res!2758004 () Bool)

(assert (=> b!6742724 (=> (not res!2758004) (not e!4072695))))

(assert (=> b!6742724 (= res!2758004 (isEmpty!38225 (tail!12650 (tail!12650 s!2326))))))

(assert (= (and d!2118540 c!1250895) b!6742715))

(assert (= (and d!2118540 (not c!1250895)) b!6742718))

(assert (= (and d!2118540 c!1250894) b!6742722))

(assert (= (and d!2118540 (not c!1250894)) b!6742711))

(assert (= (and b!6742711 c!1250896) b!6742719))

(assert (= (and b!6742711 (not c!1250896)) b!6742713))

(assert (= (and b!6742713 (not res!2757999)) b!6742720))

(assert (= (and b!6742720 res!2758001) b!6742717))

(assert (= (and b!6742717 res!2758005) b!6742724))

(assert (= (and b!6742724 res!2758004) b!6742712))

(assert (= (and b!6742720 (not res!2758006)) b!6742716))

(assert (= (and b!6742716 res!2758000) b!6742721))

(assert (= (and b!6742721 (not res!2758002)) b!6742714))

(assert (= (and b!6742714 (not res!2758003)) b!6742723))

(assert (= (or b!6742722 b!6742717 b!6742721) bm!609622))

(assert (=> b!6742715 m!7498240))

(declare-fun m!7498936 () Bool)

(assert (=> b!6742715 m!7498936))

(assert (=> d!2118540 m!7498234))

(assert (=> d!2118540 m!7498236))

(assert (=> d!2118540 m!7498240))

(declare-fun m!7498938 () Bool)

(assert (=> d!2118540 m!7498938))

(assert (=> b!6742714 m!7498234))

(declare-fun m!7498940 () Bool)

(assert (=> b!6742714 m!7498940))

(assert (=> b!6742714 m!7498940))

(declare-fun m!7498942 () Bool)

(assert (=> b!6742714 m!7498942))

(assert (=> b!6742723 m!7498234))

(declare-fun m!7498944 () Bool)

(assert (=> b!6742723 m!7498944))

(assert (=> bm!609622 m!7498234))

(assert (=> bm!609622 m!7498236))

(assert (=> b!6742724 m!7498234))

(assert (=> b!6742724 m!7498940))

(assert (=> b!6742724 m!7498940))

(assert (=> b!6742724 m!7498942))

(assert (=> b!6742718 m!7498234))

(assert (=> b!6742718 m!7498944))

(assert (=> b!6742718 m!7498240))

(assert (=> b!6742718 m!7498944))

(declare-fun m!7498946 () Bool)

(assert (=> b!6742718 m!7498946))

(assert (=> b!6742718 m!7498234))

(assert (=> b!6742718 m!7498940))

(assert (=> b!6742718 m!7498946))

(assert (=> b!6742718 m!7498940))

(declare-fun m!7498948 () Bool)

(assert (=> b!6742718 m!7498948))

(assert (=> b!6742712 m!7498234))

(assert (=> b!6742712 m!7498944))

(assert (=> b!6741991 d!2118540))

(declare-fun bm!609637 () Bool)

(declare-fun call!609644 () Regex!16569)

(declare-fun call!609642 () Regex!16569)

(assert (=> bm!609637 (= call!609644 call!609642)))

(declare-fun bm!609638 () Bool)

(declare-fun c!1250924 () Bool)

(declare-fun c!1250925 () Bool)

(declare-fun call!609645 () Regex!16569)

(assert (=> bm!609638 (= call!609645 (derivativeStep!5241 (ite c!1250925 (regOne!33651 r!7292) (ite c!1250924 (regTwo!33650 r!7292) (regOne!33650 r!7292))) (head!13565 s!2326)))))

(declare-fun e!4072744 () Regex!16569)

(declare-fun call!609643 () Regex!16569)

(declare-fun b!6742793 () Bool)

(assert (=> b!6742793 (= e!4072744 (Union!16569 (Concat!25414 call!609644 (regTwo!33650 r!7292)) call!609643))))

(declare-fun b!6742794 () Bool)

(declare-fun e!4072743 () Regex!16569)

(assert (=> b!6742794 (= e!4072743 (ite (= (head!13565 s!2326) (c!1250577 r!7292)) EmptyExpr!16569 EmptyLang!16569))))

(declare-fun b!6742795 () Bool)

(assert (=> b!6742795 (= c!1250925 ((_ is Union!16569) r!7292))))

(declare-fun e!4072745 () Regex!16569)

(assert (=> b!6742795 (= e!4072743 e!4072745)))

(declare-fun b!6742796 () Bool)

(assert (=> b!6742796 (= e!4072745 (Union!16569 call!609645 call!609642))))

(declare-fun bm!609639 () Bool)

(assert (=> bm!609639 (= call!609643 call!609645)))

(declare-fun bm!609640 () Bool)

(declare-fun c!1250923 () Bool)

(assert (=> bm!609640 (= call!609642 (derivativeStep!5241 (ite c!1250925 (regTwo!33651 r!7292) (ite c!1250923 (reg!16898 r!7292) (regOne!33650 r!7292))) (head!13565 s!2326)))))

(declare-fun b!6742797 () Bool)

(declare-fun e!4072746 () Regex!16569)

(assert (=> b!6742797 (= e!4072746 e!4072743)))

(declare-fun c!1250926 () Bool)

(assert (=> b!6742797 (= c!1250926 ((_ is ElementMatch!16569) r!7292))))

(declare-fun b!6742798 () Bool)

(assert (=> b!6742798 (= e!4072746 EmptyLang!16569)))

(declare-fun b!6742799 () Bool)

(declare-fun e!4072742 () Regex!16569)

(assert (=> b!6742799 (= e!4072742 (Concat!25414 call!609644 r!7292))))

(declare-fun d!2118552 () Bool)

(declare-fun lt!2439326 () Regex!16569)

(assert (=> d!2118552 (validRegex!8305 lt!2439326)))

(assert (=> d!2118552 (= lt!2439326 e!4072746)))

(declare-fun c!1250927 () Bool)

(assert (=> d!2118552 (= c!1250927 (or ((_ is EmptyExpr!16569) r!7292) ((_ is EmptyLang!16569) r!7292)))))

(assert (=> d!2118552 (validRegex!8305 r!7292)))

(assert (=> d!2118552 (= (derivativeStep!5241 r!7292 (head!13565 s!2326)) lt!2439326)))

(declare-fun b!6742800 () Bool)

(assert (=> b!6742800 (= c!1250924 (nullable!6556 (regOne!33650 r!7292)))))

(assert (=> b!6742800 (= e!4072742 e!4072744)))

(declare-fun b!6742801 () Bool)

(assert (=> b!6742801 (= e!4072745 e!4072742)))

(assert (=> b!6742801 (= c!1250923 ((_ is Star!16569) r!7292))))

(declare-fun b!6742802 () Bool)

(assert (=> b!6742802 (= e!4072744 (Union!16569 (Concat!25414 call!609643 (regTwo!33650 r!7292)) EmptyLang!16569))))

(assert (= (and d!2118552 c!1250927) b!6742798))

(assert (= (and d!2118552 (not c!1250927)) b!6742797))

(assert (= (and b!6742797 c!1250926) b!6742794))

(assert (= (and b!6742797 (not c!1250926)) b!6742795))

(assert (= (and b!6742795 c!1250925) b!6742796))

(assert (= (and b!6742795 (not c!1250925)) b!6742801))

(assert (= (and b!6742801 c!1250923) b!6742799))

(assert (= (and b!6742801 (not c!1250923)) b!6742800))

(assert (= (and b!6742800 c!1250924) b!6742793))

(assert (= (and b!6742800 (not c!1250924)) b!6742802))

(assert (= (or b!6742793 b!6742802) bm!609639))

(assert (= (or b!6742799 b!6742793) bm!609637))

(assert (= (or b!6742796 bm!609637) bm!609640))

(assert (= (or b!6742796 bm!609639) bm!609638))

(assert (=> bm!609638 m!7498238))

(declare-fun m!7499014 () Bool)

(assert (=> bm!609638 m!7499014))

(assert (=> bm!609640 m!7498238))

(declare-fun m!7499016 () Bool)

(assert (=> bm!609640 m!7499016))

(declare-fun m!7499018 () Bool)

(assert (=> d!2118552 m!7499018))

(assert (=> d!2118552 m!7497928))

(assert (=> b!6742800 m!7498280))

(assert (=> b!6741991 d!2118552))

(declare-fun d!2118572 () Bool)

(assert (=> d!2118572 (= (head!13565 s!2326) (h!72331 s!2326))))

(assert (=> b!6741991 d!2118572))

(assert (=> b!6741991 d!2118492))

(declare-fun d!2118574 () Bool)

(declare-fun res!2758027 () Bool)

(declare-fun e!4072747 () Bool)

(assert (=> d!2118574 (=> res!2758027 e!4072747)))

(assert (=> d!2118574 (= res!2758027 ((_ is Nil!65882) (exprs!6453 (h!72332 zl!343))))))

(assert (=> d!2118574 (= (forall!15769 (exprs!6453 (h!72332 zl!343)) lambda!378804) e!4072747)))

(declare-fun b!6742803 () Bool)

(declare-fun e!4072748 () Bool)

(assert (=> b!6742803 (= e!4072747 e!4072748)))

(declare-fun res!2758028 () Bool)

(assert (=> b!6742803 (=> (not res!2758028) (not e!4072748))))

(assert (=> b!6742803 (= res!2758028 (dynLambda!26290 lambda!378804 (h!72330 (exprs!6453 (h!72332 zl!343)))))))

(declare-fun b!6742804 () Bool)

(assert (=> b!6742804 (= e!4072748 (forall!15769 (t!379705 (exprs!6453 (h!72332 zl!343))) lambda!378804))))

(assert (= (and d!2118574 (not res!2758027)) b!6742803))

(assert (= (and b!6742803 res!2758028) b!6742804))

(declare-fun b_lambda!253951 () Bool)

(assert (=> (not b_lambda!253951) (not b!6742803)))

(declare-fun m!7499020 () Bool)

(assert (=> b!6742803 m!7499020))

(declare-fun m!7499022 () Bool)

(assert (=> b!6742804 m!7499022))

(assert (=> d!2118278 d!2118574))

(declare-fun bs!1792815 () Bool)

(declare-fun d!2118576 () Bool)

(assert (= bs!1792815 (and d!2118576 d!2118286)))

(declare-fun lambda!378857 () Int)

(assert (=> bs!1792815 (= lambda!378857 lambda!378815)))

(declare-fun bs!1792816 () Bool)

(assert (= bs!1792816 (and d!2118576 d!2118344)))

(assert (=> bs!1792816 (= lambda!378857 lambda!378825)))

(declare-fun bs!1792817 () Bool)

(assert (= bs!1792817 (and d!2118576 d!2118430)))

(assert (=> bs!1792817 (= lambda!378857 lambda!378842)))

(declare-fun bs!1792818 () Bool)

(assert (= bs!1792818 (and d!2118576 d!2118280)))

(assert (=> bs!1792818 (= lambda!378857 lambda!378805)))

(declare-fun bs!1792819 () Bool)

(assert (= bs!1792819 (and d!2118576 d!2118474)))

(assert (=> bs!1792819 (= lambda!378857 lambda!378847)))

(declare-fun bs!1792820 () Bool)

(assert (= bs!1792820 (and d!2118576 d!2118470)))

(assert (=> bs!1792820 (= lambda!378857 lambda!378846)))

(declare-fun bs!1792821 () Bool)

(assert (= bs!1792821 (and d!2118576 d!2118342)))

(assert (=> bs!1792821 (= lambda!378857 lambda!378822)))

(declare-fun bs!1792822 () Bool)

(assert (= bs!1792822 (and d!2118576 d!2118314)))

(assert (=> bs!1792822 (= lambda!378857 lambda!378818)))

(declare-fun bs!1792823 () Bool)

(assert (= bs!1792823 (and d!2118576 d!2118278)))

(assert (=> bs!1792823 (= lambda!378857 lambda!378804)))

(assert (=> d!2118576 (= (inv!84669 setElem!46043) (forall!15769 (exprs!6453 setElem!46043) lambda!378857))))

(declare-fun bs!1792824 () Bool)

(assert (= bs!1792824 d!2118576))

(declare-fun m!7499024 () Bool)

(assert (=> bs!1792824 m!7499024))

(assert (=> setNonEmpty!46043 d!2118576))

(declare-fun d!2118578 () Bool)

(declare-fun e!4072763 () Bool)

(assert (=> d!2118578 e!4072763))

(declare-fun res!2758033 () Bool)

(assert (=> d!2118578 (=> (not res!2758033) (not e!4072763))))

(declare-fun lt!2439331 () List!66007)

(declare-fun content!12809 (List!66007) (InoxSet C!33408))

(assert (=> d!2118578 (= res!2758033 (= (content!12809 lt!2439331) ((_ map or) (content!12809 (_1!36847 (get!22924 lt!2439225))) (content!12809 (_2!36847 (get!22924 lt!2439225))))))))

(declare-fun e!4072764 () List!66007)

(assert (=> d!2118578 (= lt!2439331 e!4072764)))

(declare-fun c!1250940 () Bool)

(assert (=> d!2118578 (= c!1250940 ((_ is Nil!65883) (_1!36847 (get!22924 lt!2439225))))))

(assert (=> d!2118578 (= (++!14724 (_1!36847 (get!22924 lt!2439225)) (_2!36847 (get!22924 lt!2439225))) lt!2439331)))

(declare-fun b!6742834 () Bool)

(assert (=> b!6742834 (= e!4072764 (Cons!65883 (h!72331 (_1!36847 (get!22924 lt!2439225))) (++!14724 (t!379706 (_1!36847 (get!22924 lt!2439225))) (_2!36847 (get!22924 lt!2439225)))))))

(declare-fun b!6742833 () Bool)

(assert (=> b!6742833 (= e!4072764 (_2!36847 (get!22924 lt!2439225)))))

(declare-fun b!6742835 () Bool)

(declare-fun res!2758034 () Bool)

(assert (=> b!6742835 (=> (not res!2758034) (not e!4072763))))

(declare-fun size!40619 (List!66007) Int)

(assert (=> b!6742835 (= res!2758034 (= (size!40619 lt!2439331) (+ (size!40619 (_1!36847 (get!22924 lt!2439225))) (size!40619 (_2!36847 (get!22924 lt!2439225))))))))

(declare-fun b!6742836 () Bool)

(assert (=> b!6742836 (= e!4072763 (or (not (= (_2!36847 (get!22924 lt!2439225)) Nil!65883)) (= lt!2439331 (_1!36847 (get!22924 lt!2439225)))))))

(assert (= (and d!2118578 c!1250940) b!6742833))

(assert (= (and d!2118578 (not c!1250940)) b!6742834))

(assert (= (and d!2118578 res!2758033) b!6742835))

(assert (= (and b!6742835 res!2758034) b!6742836))

(declare-fun m!7499026 () Bool)

(assert (=> d!2118578 m!7499026))

(declare-fun m!7499028 () Bool)

(assert (=> d!2118578 m!7499028))

(declare-fun m!7499030 () Bool)

(assert (=> d!2118578 m!7499030))

(declare-fun m!7499032 () Bool)

(assert (=> b!6742834 m!7499032))

(declare-fun m!7499034 () Bool)

(assert (=> b!6742835 m!7499034))

(declare-fun m!7499036 () Bool)

(assert (=> b!6742835 m!7499036))

(declare-fun m!7499038 () Bool)

(assert (=> b!6742835 m!7499038))

(assert (=> b!6741753 d!2118578))

(assert (=> b!6741753 d!2118428))

(declare-fun d!2118580 () Bool)

(declare-fun res!2758039 () Bool)

(declare-fun e!4072769 () Bool)

(assert (=> d!2118580 (=> res!2758039 e!4072769)))

(assert (=> d!2118580 (= res!2758039 ((_ is Nil!65884) lt!2439236))))

(assert (=> d!2118580 (= (noDuplicate!2361 lt!2439236) e!4072769)))

(declare-fun b!6742841 () Bool)

(declare-fun e!4072770 () Bool)

(assert (=> b!6742841 (= e!4072769 e!4072770)))

(declare-fun res!2758040 () Bool)

(assert (=> b!6742841 (=> (not res!2758040) (not e!4072770))))

(declare-fun contains!20267 (List!66008 Context!11906) Bool)

(assert (=> b!6742841 (= res!2758040 (not (contains!20267 (t!379707 lt!2439236) (h!72332 lt!2439236))))))

(declare-fun b!6742842 () Bool)

(assert (=> b!6742842 (= e!4072770 (noDuplicate!2361 (t!379707 lt!2439236)))))

(assert (= (and d!2118580 (not res!2758039)) b!6742841))

(assert (= (and b!6742841 res!2758040) b!6742842))

(declare-fun m!7499040 () Bool)

(assert (=> b!6742841 m!7499040))

(declare-fun m!7499042 () Bool)

(assert (=> b!6742842 m!7499042))

(assert (=> d!2118200 d!2118580))

(declare-fun d!2118582 () Bool)

(declare-fun e!4072783 () Bool)

(assert (=> d!2118582 e!4072783))

(declare-fun res!2758046 () Bool)

(assert (=> d!2118582 (=> (not res!2758046) (not e!4072783))))

(declare-fun res!2758045 () List!66008)

(assert (=> d!2118582 (= res!2758046 (noDuplicate!2361 res!2758045))))

(declare-fun e!4072782 () Bool)

(assert (=> d!2118582 e!4072782))

(assert (=> d!2118582 (= (choose!50256 z!1189) res!2758045)))

(declare-fun b!6742860 () Bool)

(declare-fun e!4072784 () Bool)

(declare-fun tp!1848306 () Bool)

(assert (=> b!6742860 (= e!4072784 tp!1848306)))

(declare-fun b!6742859 () Bool)

(declare-fun tp!1848307 () Bool)

(assert (=> b!6742859 (= e!4072782 (and (inv!84669 (h!72332 res!2758045)) e!4072784 tp!1848307))))

(declare-fun b!6742861 () Bool)

(assert (=> b!6742861 (= e!4072783 (= (content!12806 res!2758045) z!1189))))

(assert (= b!6742859 b!6742860))

(assert (= (and d!2118582 ((_ is Cons!65884) res!2758045)) b!6742859))

(assert (= (and d!2118582 res!2758046) b!6742861))

(declare-fun m!7499054 () Bool)

(assert (=> d!2118582 m!7499054))

(declare-fun m!7499056 () Bool)

(assert (=> b!6742859 m!7499056))

(declare-fun m!7499058 () Bool)

(assert (=> b!6742861 m!7499058))

(assert (=> d!2118200 d!2118582))

(declare-fun b!6742873 () Bool)

(declare-fun e!4072796 () Bool)

(assert (=> b!6742873 (= e!4072796 (nullable!6556 (regOne!33650 (ite c!1250708 (regOne!33651 r!7292) (ite c!1250709 (regTwo!33650 r!7292) (ite c!1250705 (regOne!33650 r!7292) (reg!16898 r!7292)))))))))

(declare-fun b!6742874 () Bool)

(declare-fun e!4072793 () (InoxSet Context!11906))

(declare-fun call!609669 () (InoxSet Context!11906))

(declare-fun call!609665 () (InoxSet Context!11906))

(assert (=> b!6742874 (= e!4072793 ((_ map or) call!609669 call!609665))))

(declare-fun e!4072795 () (InoxSet Context!11906))

(declare-fun b!6742875 () Bool)

(assert (=> b!6742875 (= e!4072795 (store ((as const (Array Context!11906 Bool)) false) (ite (or c!1250708 c!1250709) (Context!11907 Nil!65882) (Context!11907 call!609516)) true))))

(declare-fun b!6742876 () Bool)

(declare-fun e!4072794 () (InoxSet Context!11906))

(declare-fun call!609667 () (InoxSet Context!11906))

(assert (=> b!6742876 (= e!4072794 call!609667)))

(declare-fun bm!609659 () Bool)

(declare-fun call!609664 () List!66006)

(declare-fun call!609666 () List!66006)

(assert (=> bm!609659 (= call!609664 call!609666)))

(declare-fun b!6742877 () Bool)

(declare-fun c!1250955 () Bool)

(assert (=> b!6742877 (= c!1250955 e!4072796)))

(declare-fun res!2758048 () Bool)

(assert (=> b!6742877 (=> (not res!2758048) (not e!4072796))))

(assert (=> b!6742877 (= res!2758048 ((_ is Concat!25414) (ite c!1250708 (regOne!33651 r!7292) (ite c!1250709 (regTwo!33650 r!7292) (ite c!1250705 (regOne!33650 r!7292) (reg!16898 r!7292))))))))

(declare-fun e!4072791 () (InoxSet Context!11906))

(assert (=> b!6742877 (= e!4072791 e!4072793)))

(declare-fun b!6742878 () Bool)

(assert (=> b!6742878 (= e!4072793 e!4072794)))

(declare-fun c!1250951 () Bool)

(assert (=> b!6742878 (= c!1250951 ((_ is Concat!25414) (ite c!1250708 (regOne!33651 r!7292) (ite c!1250709 (regTwo!33650 r!7292) (ite c!1250705 (regOne!33650 r!7292) (reg!16898 r!7292))))))))

(declare-fun c!1250953 () Bool)

(declare-fun b!6742879 () Bool)

(assert (=> b!6742879 (= c!1250953 ((_ is Star!16569) (ite c!1250708 (regOne!33651 r!7292) (ite c!1250709 (regTwo!33650 r!7292) (ite c!1250705 (regOne!33650 r!7292) (reg!16898 r!7292))))))))

(declare-fun e!4072792 () (InoxSet Context!11906))

(assert (=> b!6742879 (= e!4072794 e!4072792)))

(declare-fun b!6742880 () Bool)

(assert (=> b!6742880 (= e!4072792 call!609667)))

(declare-fun b!6742881 () Bool)

(assert (=> b!6742881 (= e!4072795 e!4072791)))

(declare-fun c!1250954 () Bool)

(assert (=> b!6742881 (= c!1250954 ((_ is Union!16569) (ite c!1250708 (regOne!33651 r!7292) (ite c!1250709 (regTwo!33650 r!7292) (ite c!1250705 (regOne!33650 r!7292) (reg!16898 r!7292))))))))

(declare-fun b!6742882 () Bool)

(declare-fun call!609668 () (InoxSet Context!11906))

(assert (=> b!6742882 (= e!4072791 ((_ map or) call!609668 call!609669))))

(declare-fun bm!609660 () Bool)

(assert (=> bm!609660 (= call!609669 (derivationStepZipperDown!1797 (ite c!1250954 (regTwo!33651 (ite c!1250708 (regOne!33651 r!7292) (ite c!1250709 (regTwo!33650 r!7292) (ite c!1250705 (regOne!33650 r!7292) (reg!16898 r!7292))))) (regOne!33650 (ite c!1250708 (regOne!33651 r!7292) (ite c!1250709 (regTwo!33650 r!7292) (ite c!1250705 (regOne!33650 r!7292) (reg!16898 r!7292)))))) (ite c!1250954 (ite (or c!1250708 c!1250709) (Context!11907 Nil!65882) (Context!11907 call!609516)) (Context!11907 call!609666)) (h!72331 s!2326)))))

(declare-fun b!6742883 () Bool)

(assert (=> b!6742883 (= e!4072792 ((as const (Array Context!11906 Bool)) false))))

(declare-fun bm!609661 () Bool)

(assert (=> bm!609661 (= call!609668 (derivationStepZipperDown!1797 (ite c!1250954 (regOne!33651 (ite c!1250708 (regOne!33651 r!7292) (ite c!1250709 (regTwo!33650 r!7292) (ite c!1250705 (regOne!33650 r!7292) (reg!16898 r!7292))))) (ite c!1250955 (regTwo!33650 (ite c!1250708 (regOne!33651 r!7292) (ite c!1250709 (regTwo!33650 r!7292) (ite c!1250705 (regOne!33650 r!7292) (reg!16898 r!7292))))) (ite c!1250951 (regOne!33650 (ite c!1250708 (regOne!33651 r!7292) (ite c!1250709 (regTwo!33650 r!7292) (ite c!1250705 (regOne!33650 r!7292) (reg!16898 r!7292))))) (reg!16898 (ite c!1250708 (regOne!33651 r!7292) (ite c!1250709 (regTwo!33650 r!7292) (ite c!1250705 (regOne!33650 r!7292) (reg!16898 r!7292)))))))) (ite (or c!1250954 c!1250955) (ite (or c!1250708 c!1250709) (Context!11907 Nil!65882) (Context!11907 call!609516)) (Context!11907 call!609664)) (h!72331 s!2326)))))

(declare-fun bm!609662 () Bool)

(assert (=> bm!609662 (= call!609666 ($colon$colon!2386 (exprs!6453 (ite (or c!1250708 c!1250709) (Context!11907 Nil!65882) (Context!11907 call!609516))) (ite (or c!1250955 c!1250951) (regTwo!33650 (ite c!1250708 (regOne!33651 r!7292) (ite c!1250709 (regTwo!33650 r!7292) (ite c!1250705 (regOne!33650 r!7292) (reg!16898 r!7292))))) (ite c!1250708 (regOne!33651 r!7292) (ite c!1250709 (regTwo!33650 r!7292) (ite c!1250705 (regOne!33650 r!7292) (reg!16898 r!7292)))))))))

(declare-fun bm!609663 () Bool)

(assert (=> bm!609663 (= call!609667 call!609665)))

(declare-fun bm!609664 () Bool)

(assert (=> bm!609664 (= call!609665 call!609668)))

(declare-fun c!1250952 () Bool)

(declare-fun d!2118590 () Bool)

(assert (=> d!2118590 (= c!1250952 (and ((_ is ElementMatch!16569) (ite c!1250708 (regOne!33651 r!7292) (ite c!1250709 (regTwo!33650 r!7292) (ite c!1250705 (regOne!33650 r!7292) (reg!16898 r!7292))))) (= (c!1250577 (ite c!1250708 (regOne!33651 r!7292) (ite c!1250709 (regTwo!33650 r!7292) (ite c!1250705 (regOne!33650 r!7292) (reg!16898 r!7292))))) (h!72331 s!2326))))))

(assert (=> d!2118590 (= (derivationStepZipperDown!1797 (ite c!1250708 (regOne!33651 r!7292) (ite c!1250709 (regTwo!33650 r!7292) (ite c!1250705 (regOne!33650 r!7292) (reg!16898 r!7292)))) (ite (or c!1250708 c!1250709) (Context!11907 Nil!65882) (Context!11907 call!609516)) (h!72331 s!2326)) e!4072795)))

(assert (= (and d!2118590 c!1250952) b!6742875))

(assert (= (and d!2118590 (not c!1250952)) b!6742881))

(assert (= (and b!6742881 c!1250954) b!6742882))

(assert (= (and b!6742881 (not c!1250954)) b!6742877))

(assert (= (and b!6742877 res!2758048) b!6742873))

(assert (= (and b!6742877 c!1250955) b!6742874))

(assert (= (and b!6742877 (not c!1250955)) b!6742878))

(assert (= (and b!6742878 c!1250951) b!6742876))

(assert (= (and b!6742878 (not c!1250951)) b!6742879))

(assert (= (and b!6742879 c!1250953) b!6742880))

(assert (= (and b!6742879 (not c!1250953)) b!6742883))

(assert (= (or b!6742876 b!6742880) bm!609659))

(assert (= (or b!6742876 b!6742880) bm!609663))

(assert (= (or b!6742874 bm!609659) bm!609662))

(assert (= (or b!6742874 bm!609663) bm!609664))

(assert (= (or b!6742882 b!6742874) bm!609660))

(assert (= (or b!6742882 bm!609664) bm!609661))

(declare-fun m!7499070 () Bool)

(assert (=> b!6742873 m!7499070))

(declare-fun m!7499072 () Bool)

(assert (=> bm!609660 m!7499072))

(declare-fun m!7499074 () Bool)

(assert (=> bm!609661 m!7499074))

(declare-fun m!7499076 () Bool)

(assert (=> bm!609662 m!7499076))

(declare-fun m!7499078 () Bool)

(assert (=> b!6742875 m!7499078))

(assert (=> bm!609513 d!2118590))

(assert (=> bs!1792645 d!2118320))

(declare-fun d!2118594 () Bool)

(declare-fun res!2758054 () Bool)

(declare-fun e!4072804 () Bool)

(assert (=> d!2118594 (=> res!2758054 e!4072804)))

(assert (=> d!2118594 (= res!2758054 ((_ is Nil!65882) (exprs!6453 lt!2439184)))))

(assert (=> d!2118594 (= (forall!15769 (exprs!6453 lt!2439184) lambda!378818) e!4072804)))

(declare-fun b!6742893 () Bool)

(declare-fun e!4072805 () Bool)

(assert (=> b!6742893 (= e!4072804 e!4072805)))

(declare-fun res!2758055 () Bool)

(assert (=> b!6742893 (=> (not res!2758055) (not e!4072805))))

(assert (=> b!6742893 (= res!2758055 (dynLambda!26290 lambda!378818 (h!72330 (exprs!6453 lt!2439184))))))

(declare-fun b!6742894 () Bool)

(assert (=> b!6742894 (= e!4072805 (forall!15769 (t!379705 (exprs!6453 lt!2439184)) lambda!378818))))

(assert (= (and d!2118594 (not res!2758054)) b!6742893))

(assert (= (and b!6742893 res!2758055) b!6742894))

(declare-fun b_lambda!253953 () Bool)

(assert (=> (not b_lambda!253953) (not b!6742893)))

(declare-fun m!7499086 () Bool)

(assert (=> b!6742893 m!7499086))

(declare-fun m!7499088 () Bool)

(assert (=> b!6742894 m!7499088))

(assert (=> d!2118314 d!2118594))

(declare-fun d!2118598 () Bool)

(assert (=> d!2118598 (= (head!13566 (unfocusZipperList!1990 zl!343)) (h!72330 (unfocusZipperList!1990 zl!343)))))

(assert (=> b!6742251 d!2118598))

(declare-fun b!6742905 () Bool)

(declare-fun e!4072812 () Bool)

(assert (=> b!6742905 (= e!4072812 (nullable!6556 (h!72330 (exprs!6453 (Context!11907 (t!379705 (exprs!6453 lt!2439184)))))))))

(declare-fun bm!609668 () Bool)

(declare-fun call!609673 () (InoxSet Context!11906))

(assert (=> bm!609668 (= call!609673 (derivationStepZipperDown!1797 (h!72330 (exprs!6453 (Context!11907 (t!379705 (exprs!6453 lt!2439184))))) (Context!11907 (t!379705 (exprs!6453 (Context!11907 (t!379705 (exprs!6453 lt!2439184)))))) (h!72331 s!2326)))))

(declare-fun b!6742906 () Bool)

(declare-fun e!4072814 () (InoxSet Context!11906))

(assert (=> b!6742906 (= e!4072814 ((_ map or) call!609673 (derivationStepZipperUp!1723 (Context!11907 (t!379705 (exprs!6453 (Context!11907 (t!379705 (exprs!6453 lt!2439184)))))) (h!72331 s!2326))))))

(declare-fun b!6742907 () Bool)

(declare-fun e!4072813 () (InoxSet Context!11906))

(assert (=> b!6742907 (= e!4072813 ((as const (Array Context!11906 Bool)) false))))

(declare-fun b!6742908 () Bool)

(assert (=> b!6742908 (= e!4072813 call!609673)))

(declare-fun d!2118600 () Bool)

(declare-fun c!1250963 () Bool)

(assert (=> d!2118600 (= c!1250963 e!4072812)))

(declare-fun res!2758058 () Bool)

(assert (=> d!2118600 (=> (not res!2758058) (not e!4072812))))

(assert (=> d!2118600 (= res!2758058 ((_ is Cons!65882) (exprs!6453 (Context!11907 (t!379705 (exprs!6453 lt!2439184))))))))

(assert (=> d!2118600 (= (derivationStepZipperUp!1723 (Context!11907 (t!379705 (exprs!6453 lt!2439184))) (h!72331 s!2326)) e!4072814)))

(declare-fun b!6742909 () Bool)

(assert (=> b!6742909 (= e!4072814 e!4072813)))

(declare-fun c!1250962 () Bool)

(assert (=> b!6742909 (= c!1250962 ((_ is Cons!65882) (exprs!6453 (Context!11907 (t!379705 (exprs!6453 lt!2439184))))))))

(assert (= (and d!2118600 res!2758058) b!6742905))

(assert (= (and d!2118600 c!1250963) b!6742906))

(assert (= (and d!2118600 (not c!1250963)) b!6742909))

(assert (= (and b!6742909 c!1250962) b!6742908))

(assert (= (and b!6742909 (not c!1250962)) b!6742907))

(assert (= (or b!6742906 b!6742908) bm!609668))

(declare-fun m!7499090 () Bool)

(assert (=> b!6742905 m!7499090))

(declare-fun m!7499092 () Bool)

(assert (=> bm!609668 m!7499092))

(declare-fun m!7499094 () Bool)

(assert (=> b!6742906 m!7499094))

(assert (=> b!6742218 d!2118600))

(declare-fun d!2118602 () Bool)

(assert (=> d!2118602 (= (nullable!6556 (regOne!33650 (reg!16898 r!7292))) (nullableFct!2469 (regOne!33650 (reg!16898 r!7292))))))

(declare-fun bs!1792837 () Bool)

(assert (= bs!1792837 d!2118602))

(declare-fun m!7499096 () Bool)

(assert (=> bs!1792837 m!7499096))

(assert (=> b!6741842 d!2118602))

(assert (=> b!6741996 d!2118572))

(declare-fun d!2118604 () Bool)

(declare-fun c!1250964 () Bool)

(assert (=> d!2118604 (= c!1250964 (isEmpty!38225 (tail!12650 s!2326)))))

(declare-fun e!4072815 () Bool)

(assert (=> d!2118604 (= (matchZipper!2555 (derivationStepZipper!2513 lt!2439191 (head!13565 s!2326)) (tail!12650 s!2326)) e!4072815)))

(declare-fun b!6742910 () Bool)

(assert (=> b!6742910 (= e!4072815 (nullableZipper!2283 (derivationStepZipper!2513 lt!2439191 (head!13565 s!2326))))))

(declare-fun b!6742911 () Bool)

(assert (=> b!6742911 (= e!4072815 (matchZipper!2555 (derivationStepZipper!2513 (derivationStepZipper!2513 lt!2439191 (head!13565 s!2326)) (head!13565 (tail!12650 s!2326))) (tail!12650 (tail!12650 s!2326))))))

(assert (= (and d!2118604 c!1250964) b!6742910))

(assert (= (and d!2118604 (not c!1250964)) b!6742911))

(assert (=> d!2118604 m!7498234))

(assert (=> d!2118604 m!7498236))

(assert (=> b!6742910 m!7498412))

(declare-fun m!7499098 () Bool)

(assert (=> b!6742910 m!7499098))

(assert (=> b!6742911 m!7498234))

(assert (=> b!6742911 m!7498944))

(assert (=> b!6742911 m!7498412))

(assert (=> b!6742911 m!7498944))

(declare-fun m!7499100 () Bool)

(assert (=> b!6742911 m!7499100))

(assert (=> b!6742911 m!7498234))

(assert (=> b!6742911 m!7498940))

(assert (=> b!6742911 m!7499100))

(assert (=> b!6742911 m!7498940))

(declare-fun m!7499102 () Bool)

(assert (=> b!6742911 m!7499102))

(assert (=> b!6742159 d!2118604))

(declare-fun bs!1792840 () Bool)

(declare-fun d!2118606 () Bool)

(assert (= bs!1792840 (and d!2118606 b!6741544)))

(declare-fun lambda!378860 () Int)

(assert (=> bs!1792840 (= (= (head!13565 s!2326) (h!72331 s!2326)) (= lambda!378860 lambda!378745))))

(declare-fun bs!1792841 () Bool)

(assert (= bs!1792841 (and d!2118606 d!2118274)))

(assert (=> bs!1792841 (= (= (head!13565 s!2326) (h!72331 s!2326)) (= lambda!378860 lambda!378801))))

(declare-fun bs!1792842 () Bool)

(assert (= bs!1792842 (and d!2118606 d!2118310)))

(assert (=> bs!1792842 (= (= (head!13565 s!2326) (h!72331 s!2326)) (= lambda!378860 lambda!378817))))

(declare-fun bs!1792844 () Bool)

(assert (= bs!1792844 (and d!2118606 d!2118318)))

(assert (=> bs!1792844 (= (= (head!13565 s!2326) (h!72331 s!2326)) (= lambda!378860 lambda!378819))))

(assert (=> d!2118606 true))

(assert (=> d!2118606 (= (derivationStepZipper!2513 lt!2439191 (head!13565 s!2326)) (flatMap!2050 lt!2439191 lambda!378860))))

(declare-fun bs!1792847 () Bool)

(assert (= bs!1792847 d!2118606))

(declare-fun m!7499124 () Bool)

(assert (=> bs!1792847 m!7499124))

(assert (=> b!6742159 d!2118606))

(assert (=> b!6742159 d!2118572))

(assert (=> b!6742159 d!2118492))

(declare-fun d!2118610 () Bool)

(assert (=> d!2118610 (= (isEmpty!38230 (exprs!6453 (h!72332 zl!343))) ((_ is Nil!65882) (exprs!6453 (h!72332 zl!343))))))

(assert (=> b!6742133 d!2118610))

(declare-fun d!2118612 () Bool)

(assert (=> d!2118612 (= (nullable!6556 (h!72330 (exprs!6453 lt!2439198))) (nullableFct!2469 (h!72330 (exprs!6453 lt!2439198))))))

(declare-fun bs!1792851 () Bool)

(assert (= bs!1792851 d!2118612))

(declare-fun m!7499126 () Bool)

(assert (=> bs!1792851 m!7499126))

(assert (=> b!6741871 d!2118612))

(declare-fun d!2118614 () Bool)

(assert (=> d!2118614 true))

(declare-fun setRes!46051 () Bool)

(assert (=> d!2118614 setRes!46051))

(declare-fun condSetEmpty!46051 () Bool)

(declare-fun res!2758059 () (InoxSet Context!11906))

(assert (=> d!2118614 (= condSetEmpty!46051 (= res!2758059 ((as const (Array Context!11906 Bool)) false)))))

(assert (=> d!2118614 (= (choose!50257 lt!2439191 lambda!378745) res!2758059)))

(declare-fun setIsEmpty!46051 () Bool)

(assert (=> setIsEmpty!46051 setRes!46051))

(declare-fun setNonEmpty!46051 () Bool)

(declare-fun e!4072817 () Bool)

(declare-fun tp!1848309 () Bool)

(declare-fun setElem!46051 () Context!11906)

(assert (=> setNonEmpty!46051 (= setRes!46051 (and tp!1848309 (inv!84669 setElem!46051) e!4072817))))

(declare-fun setRest!46051 () (InoxSet Context!11906))

(assert (=> setNonEmpty!46051 (= res!2758059 ((_ map or) (store ((as const (Array Context!11906 Bool)) false) setElem!46051 true) setRest!46051))))

(declare-fun b!6742914 () Bool)

(declare-fun tp!1848308 () Bool)

(assert (=> b!6742914 (= e!4072817 tp!1848308)))

(assert (= (and d!2118614 condSetEmpty!46051) setIsEmpty!46051))

(assert (= (and d!2118614 (not condSetEmpty!46051)) setNonEmpty!46051))

(assert (= setNonEmpty!46051 b!6742914))

(declare-fun m!7499128 () Bool)

(assert (=> setNonEmpty!46051 m!7499128))

(assert (=> d!2118224 d!2118614))

(declare-fun d!2118616 () Bool)

(assert (=> d!2118616 (= (isEmpty!38230 (t!379705 (unfocusZipperList!1990 zl!343))) ((_ is Nil!65882) (t!379705 (unfocusZipperList!1990 zl!343))))))

(assert (=> b!6742243 d!2118616))

(declare-fun e!4072823 () Bool)

(declare-fun b!6742915 () Bool)

(assert (=> b!6742915 (= e!4072823 (nullable!6556 (regOne!33650 (ite c!1250663 (regOne!33651 (reg!16898 r!7292)) (ite c!1250664 (regTwo!33650 (reg!16898 r!7292)) (ite c!1250660 (regOne!33650 (reg!16898 r!7292)) (reg!16898 (reg!16898 r!7292))))))))))

(declare-fun b!6742916 () Bool)

(declare-fun e!4072820 () (InoxSet Context!11906))

(declare-fun call!609679 () (InoxSet Context!11906))

(declare-fun call!609675 () (InoxSet Context!11906))

(assert (=> b!6742916 (= e!4072820 ((_ map or) call!609679 call!609675))))

(declare-fun b!6742917 () Bool)

(declare-fun e!4072822 () (InoxSet Context!11906))

(assert (=> b!6742917 (= e!4072822 (store ((as const (Array Context!11906 Bool)) false) (ite (or c!1250663 c!1250664) lt!2439184 (Context!11907 call!609491)) true))))

(declare-fun b!6742918 () Bool)

(declare-fun e!4072821 () (InoxSet Context!11906))

(declare-fun call!609677 () (InoxSet Context!11906))

(assert (=> b!6742918 (= e!4072821 call!609677)))

(declare-fun bm!609669 () Bool)

(declare-fun call!609674 () List!66006)

(declare-fun call!609676 () List!66006)

(assert (=> bm!609669 (= call!609674 call!609676)))

(declare-fun b!6742919 () Bool)

(declare-fun c!1250970 () Bool)

(assert (=> b!6742919 (= c!1250970 e!4072823)))

(declare-fun res!2758060 () Bool)

(assert (=> b!6742919 (=> (not res!2758060) (not e!4072823))))

(assert (=> b!6742919 (= res!2758060 ((_ is Concat!25414) (ite c!1250663 (regOne!33651 (reg!16898 r!7292)) (ite c!1250664 (regTwo!33650 (reg!16898 r!7292)) (ite c!1250660 (regOne!33650 (reg!16898 r!7292)) (reg!16898 (reg!16898 r!7292)))))))))

(declare-fun e!4072818 () (InoxSet Context!11906))

(assert (=> b!6742919 (= e!4072818 e!4072820)))

(declare-fun b!6742920 () Bool)

(assert (=> b!6742920 (= e!4072820 e!4072821)))

(declare-fun c!1250966 () Bool)

(assert (=> b!6742920 (= c!1250966 ((_ is Concat!25414) (ite c!1250663 (regOne!33651 (reg!16898 r!7292)) (ite c!1250664 (regTwo!33650 (reg!16898 r!7292)) (ite c!1250660 (regOne!33650 (reg!16898 r!7292)) (reg!16898 (reg!16898 r!7292)))))))))

(declare-fun b!6742921 () Bool)

(declare-fun c!1250968 () Bool)

(assert (=> b!6742921 (= c!1250968 ((_ is Star!16569) (ite c!1250663 (regOne!33651 (reg!16898 r!7292)) (ite c!1250664 (regTwo!33650 (reg!16898 r!7292)) (ite c!1250660 (regOne!33650 (reg!16898 r!7292)) (reg!16898 (reg!16898 r!7292)))))))))

(declare-fun e!4072819 () (InoxSet Context!11906))

(assert (=> b!6742921 (= e!4072821 e!4072819)))

(declare-fun b!6742922 () Bool)

(assert (=> b!6742922 (= e!4072819 call!609677)))

(declare-fun b!6742923 () Bool)

(assert (=> b!6742923 (= e!4072822 e!4072818)))

(declare-fun c!1250969 () Bool)

(assert (=> b!6742923 (= c!1250969 ((_ is Union!16569) (ite c!1250663 (regOne!33651 (reg!16898 r!7292)) (ite c!1250664 (regTwo!33650 (reg!16898 r!7292)) (ite c!1250660 (regOne!33650 (reg!16898 r!7292)) (reg!16898 (reg!16898 r!7292)))))))))

(declare-fun b!6742924 () Bool)

(declare-fun call!609678 () (InoxSet Context!11906))

(assert (=> b!6742924 (= e!4072818 ((_ map or) call!609678 call!609679))))

(declare-fun bm!609670 () Bool)

(assert (=> bm!609670 (= call!609679 (derivationStepZipperDown!1797 (ite c!1250969 (regTwo!33651 (ite c!1250663 (regOne!33651 (reg!16898 r!7292)) (ite c!1250664 (regTwo!33650 (reg!16898 r!7292)) (ite c!1250660 (regOne!33650 (reg!16898 r!7292)) (reg!16898 (reg!16898 r!7292)))))) (regOne!33650 (ite c!1250663 (regOne!33651 (reg!16898 r!7292)) (ite c!1250664 (regTwo!33650 (reg!16898 r!7292)) (ite c!1250660 (regOne!33650 (reg!16898 r!7292)) (reg!16898 (reg!16898 r!7292))))))) (ite c!1250969 (ite (or c!1250663 c!1250664) lt!2439184 (Context!11907 call!609491)) (Context!11907 call!609676)) (h!72331 s!2326)))))

(declare-fun b!6742925 () Bool)

(assert (=> b!6742925 (= e!4072819 ((as const (Array Context!11906 Bool)) false))))

(declare-fun bm!609671 () Bool)

(assert (=> bm!609671 (= call!609678 (derivationStepZipperDown!1797 (ite c!1250969 (regOne!33651 (ite c!1250663 (regOne!33651 (reg!16898 r!7292)) (ite c!1250664 (regTwo!33650 (reg!16898 r!7292)) (ite c!1250660 (regOne!33650 (reg!16898 r!7292)) (reg!16898 (reg!16898 r!7292)))))) (ite c!1250970 (regTwo!33650 (ite c!1250663 (regOne!33651 (reg!16898 r!7292)) (ite c!1250664 (regTwo!33650 (reg!16898 r!7292)) (ite c!1250660 (regOne!33650 (reg!16898 r!7292)) (reg!16898 (reg!16898 r!7292)))))) (ite c!1250966 (regOne!33650 (ite c!1250663 (regOne!33651 (reg!16898 r!7292)) (ite c!1250664 (regTwo!33650 (reg!16898 r!7292)) (ite c!1250660 (regOne!33650 (reg!16898 r!7292)) (reg!16898 (reg!16898 r!7292)))))) (reg!16898 (ite c!1250663 (regOne!33651 (reg!16898 r!7292)) (ite c!1250664 (regTwo!33650 (reg!16898 r!7292)) (ite c!1250660 (regOne!33650 (reg!16898 r!7292)) (reg!16898 (reg!16898 r!7292))))))))) (ite (or c!1250969 c!1250970) (ite (or c!1250663 c!1250664) lt!2439184 (Context!11907 call!609491)) (Context!11907 call!609674)) (h!72331 s!2326)))))

(declare-fun bm!609672 () Bool)

(assert (=> bm!609672 (= call!609676 ($colon$colon!2386 (exprs!6453 (ite (or c!1250663 c!1250664) lt!2439184 (Context!11907 call!609491))) (ite (or c!1250970 c!1250966) (regTwo!33650 (ite c!1250663 (regOne!33651 (reg!16898 r!7292)) (ite c!1250664 (regTwo!33650 (reg!16898 r!7292)) (ite c!1250660 (regOne!33650 (reg!16898 r!7292)) (reg!16898 (reg!16898 r!7292)))))) (ite c!1250663 (regOne!33651 (reg!16898 r!7292)) (ite c!1250664 (regTwo!33650 (reg!16898 r!7292)) (ite c!1250660 (regOne!33650 (reg!16898 r!7292)) (reg!16898 (reg!16898 r!7292))))))))))

(declare-fun bm!609673 () Bool)

(assert (=> bm!609673 (= call!609677 call!609675)))

(declare-fun bm!609674 () Bool)

(assert (=> bm!609674 (= call!609675 call!609678)))

(declare-fun d!2118618 () Bool)

(declare-fun c!1250967 () Bool)

(assert (=> d!2118618 (= c!1250967 (and ((_ is ElementMatch!16569) (ite c!1250663 (regOne!33651 (reg!16898 r!7292)) (ite c!1250664 (regTwo!33650 (reg!16898 r!7292)) (ite c!1250660 (regOne!33650 (reg!16898 r!7292)) (reg!16898 (reg!16898 r!7292)))))) (= (c!1250577 (ite c!1250663 (regOne!33651 (reg!16898 r!7292)) (ite c!1250664 (regTwo!33650 (reg!16898 r!7292)) (ite c!1250660 (regOne!33650 (reg!16898 r!7292)) (reg!16898 (reg!16898 r!7292)))))) (h!72331 s!2326))))))

(assert (=> d!2118618 (= (derivationStepZipperDown!1797 (ite c!1250663 (regOne!33651 (reg!16898 r!7292)) (ite c!1250664 (regTwo!33650 (reg!16898 r!7292)) (ite c!1250660 (regOne!33650 (reg!16898 r!7292)) (reg!16898 (reg!16898 r!7292))))) (ite (or c!1250663 c!1250664) lt!2439184 (Context!11907 call!609491)) (h!72331 s!2326)) e!4072822)))

(assert (= (and d!2118618 c!1250967) b!6742917))

(assert (= (and d!2118618 (not c!1250967)) b!6742923))

(assert (= (and b!6742923 c!1250969) b!6742924))

(assert (= (and b!6742923 (not c!1250969)) b!6742919))

(assert (= (and b!6742919 res!2758060) b!6742915))

(assert (= (and b!6742919 c!1250970) b!6742916))

(assert (= (and b!6742919 (not c!1250970)) b!6742920))

(assert (= (and b!6742920 c!1250966) b!6742918))

(assert (= (and b!6742920 (not c!1250966)) b!6742921))

(assert (= (and b!6742921 c!1250968) b!6742922))

(assert (= (and b!6742921 (not c!1250968)) b!6742925))

(assert (= (or b!6742918 b!6742922) bm!609669))

(assert (= (or b!6742918 b!6742922) bm!609673))

(assert (= (or b!6742916 bm!609669) bm!609672))

(assert (= (or b!6742916 bm!609673) bm!609674))

(assert (= (or b!6742924 b!6742916) bm!609670))

(assert (= (or b!6742924 bm!609674) bm!609671))

(declare-fun m!7499136 () Bool)

(assert (=> b!6742915 m!7499136))

(declare-fun m!7499138 () Bool)

(assert (=> bm!609670 m!7499138))

(declare-fun m!7499140 () Bool)

(assert (=> bm!609671 m!7499140))

(declare-fun m!7499142 () Bool)

(assert (=> bm!609672 m!7499142))

(declare-fun m!7499144 () Bool)

(assert (=> b!6742917 m!7499144))

(assert (=> bm!609488 d!2118618))

(assert (=> d!2118256 d!2118252))

(declare-fun d!2118622 () Bool)

(assert (=> d!2118622 (= (flatMap!2050 z!1189 lambda!378745) (dynLambda!26287 lambda!378745 (h!72332 zl!343)))))

(assert (=> d!2118622 true))

(declare-fun _$13!4095 () Unit!159829)

(assert (=> d!2118622 (= (choose!50258 z!1189 (h!72332 zl!343) lambda!378745) _$13!4095)))

(declare-fun b_lambda!253955 () Bool)

(assert (=> (not b_lambda!253955) (not d!2118622)))

(declare-fun bs!1792858 () Bool)

(assert (= bs!1792858 d!2118622))

(assert (=> bs!1792858 m!7497958))

(assert (=> bs!1792858 m!7498264))

(assert (=> d!2118256 d!2118622))

(assert (=> d!2118250 d!2118246))

(assert (=> d!2118250 d!2118232))

(declare-fun d!2118624 () Bool)

(assert (=> d!2118624 (= (matchR!8752 r!7292 s!2326) (matchRSpec!3670 r!7292 s!2326))))

(assert (=> d!2118624 true))

(declare-fun _$88!5510 () Unit!159829)

(assert (=> d!2118624 (= (choose!50263 r!7292 s!2326) _$88!5510)))

(declare-fun bs!1792859 () Bool)

(assert (= bs!1792859 d!2118624))

(assert (=> bs!1792859 m!7497932))

(assert (=> bs!1792859 m!7497930))

(assert (=> d!2118250 d!2118624))

(assert (=> d!2118250 d!2118282))

(assert (=> bs!1792644 d!2118226))

(declare-fun bs!1792860 () Bool)

(declare-fun d!2118626 () Bool)

(assert (= bs!1792860 (and d!2118626 d!2118286)))

(declare-fun lambda!378864 () Int)

(assert (=> bs!1792860 (= lambda!378864 lambda!378815)))

(declare-fun bs!1792861 () Bool)

(assert (= bs!1792861 (and d!2118626 d!2118344)))

(assert (=> bs!1792861 (= lambda!378864 lambda!378825)))

(declare-fun bs!1792862 () Bool)

(assert (= bs!1792862 (and d!2118626 d!2118576)))

(assert (=> bs!1792862 (= lambda!378864 lambda!378857)))

(declare-fun bs!1792863 () Bool)

(assert (= bs!1792863 (and d!2118626 d!2118430)))

(assert (=> bs!1792863 (= lambda!378864 lambda!378842)))

(declare-fun bs!1792864 () Bool)

(assert (= bs!1792864 (and d!2118626 d!2118280)))

(assert (=> bs!1792864 (= lambda!378864 lambda!378805)))

(declare-fun bs!1792865 () Bool)

(assert (= bs!1792865 (and d!2118626 d!2118474)))

(assert (=> bs!1792865 (= lambda!378864 lambda!378847)))

(declare-fun bs!1792866 () Bool)

(assert (= bs!1792866 (and d!2118626 d!2118470)))

(assert (=> bs!1792866 (= lambda!378864 lambda!378846)))

(declare-fun bs!1792867 () Bool)

(assert (= bs!1792867 (and d!2118626 d!2118342)))

(assert (=> bs!1792867 (= lambda!378864 lambda!378822)))

(declare-fun bs!1792868 () Bool)

(assert (= bs!1792868 (and d!2118626 d!2118314)))

(assert (=> bs!1792868 (= lambda!378864 lambda!378818)))

(declare-fun bs!1792869 () Bool)

(assert (= bs!1792869 (and d!2118626 d!2118278)))

(assert (=> bs!1792869 (= lambda!378864 lambda!378804)))

(declare-fun b!6742926 () Bool)

(declare-fun e!4072826 () Bool)

(declare-fun lt!2439335 () Regex!16569)

(assert (=> b!6742926 (= e!4072826 (isUnion!1373 lt!2439335))))

(declare-fun b!6742927 () Bool)

(declare-fun e!4072829 () Bool)

(assert (=> b!6742927 (= e!4072829 (isEmpty!38230 (t!379705 (t!379705 (unfocusZipperList!1990 zl!343)))))))

(declare-fun b!6742929 () Bool)

(declare-fun e!4072824 () Regex!16569)

(assert (=> b!6742929 (= e!4072824 (h!72330 (t!379705 (unfocusZipperList!1990 zl!343))))))

(declare-fun b!6742930 () Bool)

(declare-fun e!4072827 () Bool)

(declare-fun e!4072828 () Bool)

(assert (=> b!6742930 (= e!4072827 e!4072828)))

(declare-fun c!1250972 () Bool)

(assert (=> b!6742930 (= c!1250972 (isEmpty!38230 (t!379705 (unfocusZipperList!1990 zl!343))))))

(declare-fun b!6742931 () Bool)

(assert (=> b!6742931 (= e!4072828 e!4072826)))

(declare-fun c!1250971 () Bool)

(assert (=> b!6742931 (= c!1250971 (isEmpty!38230 (tail!12651 (t!379705 (unfocusZipperList!1990 zl!343)))))))

(declare-fun b!6742932 () Bool)

(declare-fun e!4072825 () Regex!16569)

(assert (=> b!6742932 (= e!4072825 (Union!16569 (h!72330 (t!379705 (unfocusZipperList!1990 zl!343))) (generalisedUnion!2413 (t!379705 (t!379705 (unfocusZipperList!1990 zl!343))))))))

(declare-fun b!6742933 () Bool)

(assert (=> b!6742933 (= e!4072824 e!4072825)))

(declare-fun c!1250973 () Bool)

(assert (=> b!6742933 (= c!1250973 ((_ is Cons!65882) (t!379705 (unfocusZipperList!1990 zl!343))))))

(declare-fun b!6742934 () Bool)

(assert (=> b!6742934 (= e!4072825 EmptyLang!16569)))

(declare-fun b!6742935 () Bool)

(assert (=> b!6742935 (= e!4072826 (= lt!2439335 (head!13566 (t!379705 (unfocusZipperList!1990 zl!343)))))))

(assert (=> d!2118626 e!4072827))

(declare-fun res!2758061 () Bool)

(assert (=> d!2118626 (=> (not res!2758061) (not e!4072827))))

(assert (=> d!2118626 (= res!2758061 (validRegex!8305 lt!2439335))))

(assert (=> d!2118626 (= lt!2439335 e!4072824)))

(declare-fun c!1250974 () Bool)

(assert (=> d!2118626 (= c!1250974 e!4072829)))

(declare-fun res!2758062 () Bool)

(assert (=> d!2118626 (=> (not res!2758062) (not e!4072829))))

(assert (=> d!2118626 (= res!2758062 ((_ is Cons!65882) (t!379705 (unfocusZipperList!1990 zl!343))))))

(assert (=> d!2118626 (forall!15769 (t!379705 (unfocusZipperList!1990 zl!343)) lambda!378864)))

(assert (=> d!2118626 (= (generalisedUnion!2413 (t!379705 (unfocusZipperList!1990 zl!343))) lt!2439335)))

(declare-fun b!6742928 () Bool)

(assert (=> b!6742928 (= e!4072828 (isEmptyLang!1943 lt!2439335))))

(assert (= (and d!2118626 res!2758062) b!6742927))

(assert (= (and d!2118626 c!1250974) b!6742929))

(assert (= (and d!2118626 (not c!1250974)) b!6742933))

(assert (= (and b!6742933 c!1250973) b!6742932))

(assert (= (and b!6742933 (not c!1250973)) b!6742934))

(assert (= (and d!2118626 res!2758061) b!6742930))

(assert (= (and b!6742930 c!1250972) b!6742928))

(assert (= (and b!6742930 (not c!1250972)) b!6742931))

(assert (= (and b!6742931 c!1250971) b!6742935))

(assert (= (and b!6742931 (not c!1250971)) b!6742926))

(declare-fun m!7499146 () Bool)

(assert (=> b!6742928 m!7499146))

(declare-fun m!7499148 () Bool)

(assert (=> b!6742926 m!7499148))

(declare-fun m!7499150 () Bool)

(assert (=> b!6742935 m!7499150))

(assert (=> b!6742930 m!7498494))

(declare-fun m!7499152 () Bool)

(assert (=> d!2118626 m!7499152))

(declare-fun m!7499154 () Bool)

(assert (=> d!2118626 m!7499154))

(declare-fun m!7499156 () Bool)

(assert (=> b!6742931 m!7499156))

(assert (=> b!6742931 m!7499156))

(declare-fun m!7499158 () Bool)

(assert (=> b!6742931 m!7499158))

(declare-fun m!7499160 () Bool)

(assert (=> b!6742932 m!7499160))

(declare-fun m!7499162 () Bool)

(assert (=> b!6742927 m!7499162))

(assert (=> b!6742248 d!2118626))

(declare-fun d!2118628 () Bool)

(assert (=> d!2118628 true))

(assert (=> d!2118628 true))

(declare-fun res!2758069 () Bool)

(assert (=> d!2118628 (= (choose!50252 lambda!378743) res!2758069)))

(assert (=> d!2118188 d!2118628))

(declare-fun d!2118630 () Bool)

(assert (=> d!2118630 (= (nullable!6556 (h!72330 (exprs!6453 (h!72332 zl!343)))) (nullableFct!2469 (h!72330 (exprs!6453 (h!72332 zl!343)))))))

(declare-fun bs!1792873 () Bool)

(assert (= bs!1792873 d!2118630))

(declare-fun m!7499164 () Bool)

(assert (=> bs!1792873 m!7499164))

(assert (=> b!6742002 d!2118630))

(declare-fun d!2118632 () Bool)

(assert (=> d!2118632 (= (nullable!6556 (h!72330 (exprs!6453 (Context!11907 (Cons!65882 r!7292 Nil!65882))))) (nullableFct!2469 (h!72330 (exprs!6453 (Context!11907 (Cons!65882 r!7292 Nil!65882))))))))

(declare-fun bs!1792875 () Bool)

(assert (= bs!1792875 d!2118632))

(declare-fun m!7499166 () Bool)

(assert (=> bs!1792875 m!7499166))

(assert (=> b!6742034 d!2118632))

(declare-fun d!2118634 () Bool)

(assert (=> d!2118634 true))

(declare-fun setRes!46052 () Bool)

(assert (=> d!2118634 setRes!46052))

(declare-fun condSetEmpty!46052 () Bool)

(declare-fun res!2758070 () (InoxSet Context!11906))

(assert (=> d!2118634 (= condSetEmpty!46052 (= res!2758070 ((as const (Array Context!11906 Bool)) false)))))

(assert (=> d!2118634 (= (choose!50257 z!1189 lambda!378745) res!2758070)))

(declare-fun setIsEmpty!46052 () Bool)

(assert (=> setIsEmpty!46052 setRes!46052))

(declare-fun setNonEmpty!46052 () Bool)

(declare-fun e!4072832 () Bool)

(declare-fun setElem!46052 () Context!11906)

(declare-fun tp!1848311 () Bool)

(assert (=> setNonEmpty!46052 (= setRes!46052 (and tp!1848311 (inv!84669 setElem!46052) e!4072832))))

(declare-fun setRest!46052 () (InoxSet Context!11906))

(assert (=> setNonEmpty!46052 (= res!2758070 ((_ map or) (store ((as const (Array Context!11906 Bool)) false) setElem!46052 true) setRest!46052))))

(declare-fun b!6742940 () Bool)

(declare-fun tp!1848310 () Bool)

(assert (=> b!6742940 (= e!4072832 tp!1848310)))

(assert (= (and d!2118634 condSetEmpty!46052) setIsEmpty!46052))

(assert (= (and d!2118634 (not condSetEmpty!46052)) setNonEmpty!46052))

(assert (= setNonEmpty!46052 b!6742940))

(declare-fun m!7499168 () Bool)

(assert (=> setNonEmpty!46052 m!7499168))

(assert (=> d!2118252 d!2118634))

(declare-fun bs!1792881 () Bool)

(declare-fun d!2118636 () Bool)

(assert (= bs!1792881 (and d!2118636 d!2118434)))

(declare-fun lambda!378866 () Int)

(assert (=> bs!1792881 (= lambda!378866 lambda!378845)))

(assert (=> d!2118636 (= (nullableZipper!2283 (derivationStepZipper!2513 lt!2439191 (h!72331 s!2326))) (exists!2702 (derivationStepZipper!2513 lt!2439191 (h!72331 s!2326)) lambda!378866))))

(declare-fun bs!1792883 () Bool)

(assert (= bs!1792883 d!2118636))

(assert (=> bs!1792883 m!7498012))

(declare-fun m!7499170 () Bool)

(assert (=> bs!1792883 m!7499170))

(assert (=> b!6742161 d!2118636))

(declare-fun b!6742942 () Bool)

(declare-fun e!4072833 () Bool)

(assert (=> b!6742942 (= e!4072833 (= (head!13565 (_2!36847 (get!22924 lt!2439225))) (c!1250577 r!7292)))))

(declare-fun b!6742943 () Bool)

(declare-fun res!2758071 () Bool)

(declare-fun e!4072835 () Bool)

(assert (=> b!6742943 (=> res!2758071 e!4072835)))

(assert (=> b!6742943 (= res!2758071 (not ((_ is ElementMatch!16569) r!7292)))))

(declare-fun e!4072838 () Bool)

(assert (=> b!6742943 (= e!4072838 e!4072835)))

(declare-fun b!6742944 () Bool)

(declare-fun res!2758075 () Bool)

(declare-fun e!4072834 () Bool)

(assert (=> b!6742944 (=> res!2758075 e!4072834)))

(assert (=> b!6742944 (= res!2758075 (not (isEmpty!38225 (tail!12650 (_2!36847 (get!22924 lt!2439225))))))))

(declare-fun b!6742945 () Bool)

(declare-fun e!4072837 () Bool)

(assert (=> b!6742945 (= e!4072837 (nullable!6556 r!7292))))

(declare-fun b!6742946 () Bool)

(declare-fun e!4072839 () Bool)

(assert (=> b!6742946 (= e!4072835 e!4072839)))

(declare-fun res!2758072 () Bool)

(assert (=> b!6742946 (=> (not res!2758072) (not e!4072839))))

(declare-fun lt!2439336 () Bool)

(assert (=> b!6742946 (= res!2758072 (not lt!2439336))))

(declare-fun b!6742947 () Bool)

(declare-fun res!2758077 () Bool)

(assert (=> b!6742947 (=> (not res!2758077) (not e!4072833))))

(declare-fun call!609680 () Bool)

(assert (=> b!6742947 (= res!2758077 (not call!609680))))

(declare-fun b!6742948 () Bool)

(assert (=> b!6742948 (= e!4072837 (matchR!8752 (derivativeStep!5241 r!7292 (head!13565 (_2!36847 (get!22924 lt!2439225)))) (tail!12650 (_2!36847 (get!22924 lt!2439225)))))))

(declare-fun b!6742949 () Bool)

(assert (=> b!6742949 (= e!4072838 (not lt!2439336))))

(declare-fun d!2118638 () Bool)

(declare-fun e!4072836 () Bool)

(assert (=> d!2118638 e!4072836))

(declare-fun c!1250975 () Bool)

(assert (=> d!2118638 (= c!1250975 ((_ is EmptyExpr!16569) r!7292))))

(assert (=> d!2118638 (= lt!2439336 e!4072837)))

(declare-fun c!1250976 () Bool)

(assert (=> d!2118638 (= c!1250976 (isEmpty!38225 (_2!36847 (get!22924 lt!2439225))))))

(assert (=> d!2118638 (validRegex!8305 r!7292)))

(assert (=> d!2118638 (= (matchR!8752 r!7292 (_2!36847 (get!22924 lt!2439225))) lt!2439336)))

(declare-fun b!6742941 () Bool)

(assert (=> b!6742941 (= e!4072836 e!4072838)))

(declare-fun c!1250977 () Bool)

(assert (=> b!6742941 (= c!1250977 ((_ is EmptyLang!16569) r!7292))))

(declare-fun b!6742950 () Bool)

(declare-fun res!2758078 () Bool)

(assert (=> b!6742950 (=> res!2758078 e!4072835)))

(assert (=> b!6742950 (= res!2758078 e!4072833)))

(declare-fun res!2758073 () Bool)

(assert (=> b!6742950 (=> (not res!2758073) (not e!4072833))))

(assert (=> b!6742950 (= res!2758073 lt!2439336)))

(declare-fun b!6742951 () Bool)

(assert (=> b!6742951 (= e!4072839 e!4072834)))

(declare-fun res!2758074 () Bool)

(assert (=> b!6742951 (=> res!2758074 e!4072834)))

(assert (=> b!6742951 (= res!2758074 call!609680)))

(declare-fun b!6742952 () Bool)

(assert (=> b!6742952 (= e!4072836 (= lt!2439336 call!609680))))

(declare-fun b!6742953 () Bool)

(assert (=> b!6742953 (= e!4072834 (not (= (head!13565 (_2!36847 (get!22924 lt!2439225))) (c!1250577 r!7292))))))

(declare-fun bm!609675 () Bool)

(assert (=> bm!609675 (= call!609680 (isEmpty!38225 (_2!36847 (get!22924 lt!2439225))))))

(declare-fun b!6742954 () Bool)

(declare-fun res!2758076 () Bool)

(assert (=> b!6742954 (=> (not res!2758076) (not e!4072833))))

(assert (=> b!6742954 (= res!2758076 (isEmpty!38225 (tail!12650 (_2!36847 (get!22924 lt!2439225)))))))

(assert (= (and d!2118638 c!1250976) b!6742945))

(assert (= (and d!2118638 (not c!1250976)) b!6742948))

(assert (= (and d!2118638 c!1250975) b!6742952))

(assert (= (and d!2118638 (not c!1250975)) b!6742941))

(assert (= (and b!6742941 c!1250977) b!6742949))

(assert (= (and b!6742941 (not c!1250977)) b!6742943))

(assert (= (and b!6742943 (not res!2758071)) b!6742950))

(assert (= (and b!6742950 res!2758073) b!6742947))

(assert (= (and b!6742947 res!2758077) b!6742954))

(assert (= (and b!6742954 res!2758076) b!6742942))

(assert (= (and b!6742950 (not res!2758078)) b!6742946))

(assert (= (and b!6742946 res!2758072) b!6742951))

(assert (= (and b!6742951 (not res!2758074)) b!6742944))

(assert (= (and b!6742944 (not res!2758075)) b!6742953))

(assert (= (or b!6742952 b!6742947 b!6742951) bm!609675))

(assert (=> b!6742945 m!7498232))

(declare-fun m!7499176 () Bool)

(assert (=> d!2118638 m!7499176))

(assert (=> d!2118638 m!7497928))

(declare-fun m!7499178 () Bool)

(assert (=> b!6742944 m!7499178))

(assert (=> b!6742944 m!7499178))

(declare-fun m!7499180 () Bool)

(assert (=> b!6742944 m!7499180))

(declare-fun m!7499182 () Bool)

(assert (=> b!6742953 m!7499182))

(assert (=> bm!609675 m!7499176))

(assert (=> b!6742954 m!7499178))

(assert (=> b!6742954 m!7499178))

(assert (=> b!6742954 m!7499180))

(assert (=> b!6742948 m!7499182))

(assert (=> b!6742948 m!7499182))

(declare-fun m!7499184 () Bool)

(assert (=> b!6742948 m!7499184))

(assert (=> b!6742948 m!7499178))

(assert (=> b!6742948 m!7499184))

(assert (=> b!6742948 m!7499178))

(declare-fun m!7499186 () Bool)

(assert (=> b!6742948 m!7499186))

(assert (=> b!6742942 m!7499182))

(assert (=> b!6741754 d!2118638))

(assert (=> b!6741754 d!2118428))

(declare-fun d!2118644 () Bool)

(declare-fun c!1250984 () Bool)

(assert (=> d!2118644 (= c!1250984 ((_ is Nil!65884) lt!2439236))))

(declare-fun e!4072850 () (InoxSet Context!11906))

(assert (=> d!2118644 (= (content!12806 lt!2439236) e!4072850)))

(declare-fun b!6742975 () Bool)

(assert (=> b!6742975 (= e!4072850 ((as const (Array Context!11906 Bool)) false))))

(declare-fun b!6742976 () Bool)

(assert (=> b!6742976 (= e!4072850 ((_ map or) (store ((as const (Array Context!11906 Bool)) false) (h!72332 lt!2439236) true) (content!12806 (t!379707 lt!2439236))))))

(assert (= (and d!2118644 c!1250984) b!6742975))

(assert (= (and d!2118644 (not c!1250984)) b!6742976))

(declare-fun m!7499194 () Bool)

(assert (=> b!6742976 m!7499194))

(declare-fun m!7499196 () Bool)

(assert (=> b!6742976 m!7499196))

(assert (=> b!6741809 d!2118644))

(declare-fun d!2118648 () Bool)

(assert (=> d!2118648 (= (flatMap!2050 lt!2439203 lambda!378819) (choose!50257 lt!2439203 lambda!378819))))

(declare-fun bs!1792899 () Bool)

(assert (= bs!1792899 d!2118648))

(declare-fun m!7499198 () Bool)

(assert (=> bs!1792899 m!7499198))

(assert (=> d!2118318 d!2118648))

(declare-fun d!2118650 () Bool)

(assert (=> d!2118650 (= (nullable!6556 r!7292) (nullableFct!2469 r!7292))))

(declare-fun bs!1792900 () Bool)

(assert (= bs!1792900 d!2118650))

(declare-fun m!7499204 () Bool)

(assert (=> bs!1792900 m!7499204))

(assert (=> b!6741988 d!2118650))

(declare-fun b!6742977 () Bool)

(declare-fun e!4072851 () Bool)

(assert (=> b!6742977 (= e!4072851 (nullable!6556 (h!72330 (exprs!6453 (Context!11907 (t!379705 (exprs!6453 lt!2439204)))))))))

(declare-fun bm!609677 () Bool)

(declare-fun call!609682 () (InoxSet Context!11906))

(assert (=> bm!609677 (= call!609682 (derivationStepZipperDown!1797 (h!72330 (exprs!6453 (Context!11907 (t!379705 (exprs!6453 lt!2439204))))) (Context!11907 (t!379705 (exprs!6453 (Context!11907 (t!379705 (exprs!6453 lt!2439204)))))) (h!72331 s!2326)))))

(declare-fun b!6742978 () Bool)

(declare-fun e!4072853 () (InoxSet Context!11906))

(assert (=> b!6742978 (= e!4072853 ((_ map or) call!609682 (derivationStepZipperUp!1723 (Context!11907 (t!379705 (exprs!6453 (Context!11907 (t!379705 (exprs!6453 lt!2439204)))))) (h!72331 s!2326))))))

(declare-fun b!6742979 () Bool)

(declare-fun e!4072852 () (InoxSet Context!11906))

(assert (=> b!6742979 (= e!4072852 ((as const (Array Context!11906 Bool)) false))))

(declare-fun b!6742980 () Bool)

(assert (=> b!6742980 (= e!4072852 call!609682)))

(declare-fun d!2118652 () Bool)

(declare-fun c!1250986 () Bool)

(assert (=> d!2118652 (= c!1250986 e!4072851)))

(declare-fun res!2758087 () Bool)

(assert (=> d!2118652 (=> (not res!2758087) (not e!4072851))))

(assert (=> d!2118652 (= res!2758087 ((_ is Cons!65882) (exprs!6453 (Context!11907 (t!379705 (exprs!6453 lt!2439204))))))))

(assert (=> d!2118652 (= (derivationStepZipperUp!1723 (Context!11907 (t!379705 (exprs!6453 lt!2439204))) (h!72331 s!2326)) e!4072853)))

(declare-fun b!6742981 () Bool)

(assert (=> b!6742981 (= e!4072853 e!4072852)))

(declare-fun c!1250985 () Bool)

(assert (=> b!6742981 (= c!1250985 ((_ is Cons!65882) (exprs!6453 (Context!11907 (t!379705 (exprs!6453 lt!2439204))))))))

(assert (= (and d!2118652 res!2758087) b!6742977))

(assert (= (and d!2118652 c!1250986) b!6742978))

(assert (= (and d!2118652 (not c!1250986)) b!6742981))

(assert (= (and b!6742981 c!1250985) b!6742980))

(assert (= (and b!6742981 (not c!1250985)) b!6742979))

(assert (= (or b!6742978 b!6742980) bm!609677))

(declare-fun m!7499214 () Bool)

(assert (=> b!6742977 m!7499214))

(declare-fun m!7499218 () Bool)

(assert (=> bm!609677 m!7499218))

(declare-fun m!7499220 () Bool)

(assert (=> b!6742978 m!7499220))

(assert (=> b!6742213 d!2118652))

(assert (=> d!2118228 d!2118224))

(declare-fun d!2118658 () Bool)

(assert (=> d!2118658 (= (flatMap!2050 lt!2439191 lambda!378745) (dynLambda!26287 lambda!378745 lt!2439198))))

(assert (=> d!2118658 true))

(declare-fun _$13!4096 () Unit!159829)

(assert (=> d!2118658 (= (choose!50258 lt!2439191 lt!2439198 lambda!378745) _$13!4096)))

(declare-fun b_lambda!253957 () Bool)

(assert (=> (not b_lambda!253957) (not d!2118658)))

(declare-fun bs!1792902 () Bool)

(assert (= bs!1792902 d!2118658))

(assert (=> bs!1792902 m!7497944))

(assert (=> bs!1792902 m!7498182))

(assert (=> d!2118228 d!2118658))

(declare-fun d!2118660 () Bool)

(assert (=> d!2118660 (= ($colon$colon!2386 (exprs!6453 (Context!11907 Nil!65882)) (ite (or c!1250709 c!1250705) (regTwo!33650 r!7292) r!7292)) (Cons!65882 (ite (or c!1250709 c!1250705) (regTwo!33650 r!7292) r!7292) (exprs!6453 (Context!11907 Nil!65882))))))

(assert (=> bm!609514 d!2118660))

(declare-fun b!6742994 () Bool)

(declare-fun e!4072869 () Bool)

(assert (=> b!6742994 (= e!4072869 (nullable!6556 (regOne!33650 (h!72330 (exprs!6453 lt!2439198)))))))

(declare-fun b!6742995 () Bool)

(declare-fun e!4072866 () (InoxSet Context!11906))

(declare-fun call!609691 () (InoxSet Context!11906))

(declare-fun call!609687 () (InoxSet Context!11906))

(assert (=> b!6742995 (= e!4072866 ((_ map or) call!609691 call!609687))))

(declare-fun b!6742996 () Bool)

(declare-fun e!4072868 () (InoxSet Context!11906))

(assert (=> b!6742996 (= e!4072868 (store ((as const (Array Context!11906 Bool)) false) (Context!11907 (t!379705 (exprs!6453 lt!2439198))) true))))

(declare-fun b!6742997 () Bool)

(declare-fun e!4072867 () (InoxSet Context!11906))

(declare-fun call!609689 () (InoxSet Context!11906))

(assert (=> b!6742997 (= e!4072867 call!609689)))

(declare-fun bm!609681 () Bool)

(declare-fun call!609686 () List!66006)

(declare-fun call!609688 () List!66006)

(assert (=> bm!609681 (= call!609686 call!609688)))

(declare-fun b!6742998 () Bool)

(declare-fun c!1250993 () Bool)

(assert (=> b!6742998 (= c!1250993 e!4072869)))

(declare-fun res!2758096 () Bool)

(assert (=> b!6742998 (=> (not res!2758096) (not e!4072869))))

(assert (=> b!6742998 (= res!2758096 ((_ is Concat!25414) (h!72330 (exprs!6453 lt!2439198))))))

(declare-fun e!4072864 () (InoxSet Context!11906))

(assert (=> b!6742998 (= e!4072864 e!4072866)))

(declare-fun b!6742999 () Bool)

(assert (=> b!6742999 (= e!4072866 e!4072867)))

(declare-fun c!1250989 () Bool)

(assert (=> b!6742999 (= c!1250989 ((_ is Concat!25414) (h!72330 (exprs!6453 lt!2439198))))))

(declare-fun b!6743000 () Bool)

(declare-fun c!1250991 () Bool)

(assert (=> b!6743000 (= c!1250991 ((_ is Star!16569) (h!72330 (exprs!6453 lt!2439198))))))

(declare-fun e!4072865 () (InoxSet Context!11906))

(assert (=> b!6743000 (= e!4072867 e!4072865)))

(declare-fun b!6743001 () Bool)

(assert (=> b!6743001 (= e!4072865 call!609689)))

(declare-fun b!6743002 () Bool)

(assert (=> b!6743002 (= e!4072868 e!4072864)))

(declare-fun c!1250992 () Bool)

(assert (=> b!6743002 (= c!1250992 ((_ is Union!16569) (h!72330 (exprs!6453 lt!2439198))))))

(declare-fun b!6743003 () Bool)

(declare-fun call!609690 () (InoxSet Context!11906))

(assert (=> b!6743003 (= e!4072864 ((_ map or) call!609690 call!609691))))

(declare-fun bm!609682 () Bool)

(assert (=> bm!609682 (= call!609691 (derivationStepZipperDown!1797 (ite c!1250992 (regTwo!33651 (h!72330 (exprs!6453 lt!2439198))) (regOne!33650 (h!72330 (exprs!6453 lt!2439198)))) (ite c!1250992 (Context!11907 (t!379705 (exprs!6453 lt!2439198))) (Context!11907 call!609688)) (h!72331 s!2326)))))

(declare-fun b!6743004 () Bool)

(assert (=> b!6743004 (= e!4072865 ((as const (Array Context!11906 Bool)) false))))

(declare-fun bm!609683 () Bool)

(assert (=> bm!609683 (= call!609690 (derivationStepZipperDown!1797 (ite c!1250992 (regOne!33651 (h!72330 (exprs!6453 lt!2439198))) (ite c!1250993 (regTwo!33650 (h!72330 (exprs!6453 lt!2439198))) (ite c!1250989 (regOne!33650 (h!72330 (exprs!6453 lt!2439198))) (reg!16898 (h!72330 (exprs!6453 lt!2439198)))))) (ite (or c!1250992 c!1250993) (Context!11907 (t!379705 (exprs!6453 lt!2439198))) (Context!11907 call!609686)) (h!72331 s!2326)))))

(declare-fun bm!609684 () Bool)

(assert (=> bm!609684 (= call!609688 ($colon$colon!2386 (exprs!6453 (Context!11907 (t!379705 (exprs!6453 lt!2439198)))) (ite (or c!1250993 c!1250989) (regTwo!33650 (h!72330 (exprs!6453 lt!2439198))) (h!72330 (exprs!6453 lt!2439198)))))))

(declare-fun bm!609685 () Bool)

(assert (=> bm!609685 (= call!609689 call!609687)))

(declare-fun bm!609686 () Bool)

(assert (=> bm!609686 (= call!609687 call!609690)))

(declare-fun d!2118672 () Bool)

(declare-fun c!1250990 () Bool)

(assert (=> d!2118672 (= c!1250990 (and ((_ is ElementMatch!16569) (h!72330 (exprs!6453 lt!2439198))) (= (c!1250577 (h!72330 (exprs!6453 lt!2439198))) (h!72331 s!2326))))))

(assert (=> d!2118672 (= (derivationStepZipperDown!1797 (h!72330 (exprs!6453 lt!2439198)) (Context!11907 (t!379705 (exprs!6453 lt!2439198))) (h!72331 s!2326)) e!4072868)))

(assert (= (and d!2118672 c!1250990) b!6742996))

(assert (= (and d!2118672 (not c!1250990)) b!6743002))

(assert (= (and b!6743002 c!1250992) b!6743003))

(assert (= (and b!6743002 (not c!1250992)) b!6742998))

(assert (= (and b!6742998 res!2758096) b!6742994))

(assert (= (and b!6742998 c!1250993) b!6742995))

(assert (= (and b!6742998 (not c!1250993)) b!6742999))

(assert (= (and b!6742999 c!1250989) b!6742997))

(assert (= (and b!6742999 (not c!1250989)) b!6743000))

(assert (= (and b!6743000 c!1250991) b!6743001))

(assert (= (and b!6743000 (not c!1250991)) b!6743004))

(assert (= (or b!6742997 b!6743001) bm!609681))

(assert (= (or b!6742997 b!6743001) bm!609685))

(assert (= (or b!6742995 bm!609681) bm!609684))

(assert (= (or b!6742995 bm!609685) bm!609686))

(assert (= (or b!6743003 b!6742995) bm!609682))

(assert (= (or b!6743003 bm!609686) bm!609683))

(declare-fun m!7499238 () Bool)

(assert (=> b!6742994 m!7499238))

(declare-fun m!7499240 () Bool)

(assert (=> bm!609682 m!7499240))

(declare-fun m!7499242 () Bool)

(assert (=> bm!609683 m!7499242))

(declare-fun m!7499244 () Bool)

(assert (=> bm!609684 m!7499244))

(declare-fun m!7499246 () Bool)

(assert (=> b!6742996 m!7499246))

(assert (=> bm!609494 d!2118672))

(assert (=> b!6741759 d!2118456))

(declare-fun d!2118678 () Bool)

(assert (=> d!2118678 true))

(declare-fun setRes!46055 () Bool)

(assert (=> d!2118678 setRes!46055))

(declare-fun condSetEmpty!46055 () Bool)

(declare-fun res!2758099 () (InoxSet Context!11906))

(assert (=> d!2118678 (= condSetEmpty!46055 (= res!2758099 ((as const (Array Context!11906 Bool)) false)))))

(assert (=> d!2118678 (= (choose!50257 lt!2439203 lambda!378745) res!2758099)))

(declare-fun setIsEmpty!46055 () Bool)

(assert (=> setIsEmpty!46055 setRes!46055))

(declare-fun e!4072877 () Bool)

(declare-fun setElem!46055 () Context!11906)

(declare-fun tp!1848317 () Bool)

(declare-fun setNonEmpty!46055 () Bool)

(assert (=> setNonEmpty!46055 (= setRes!46055 (and tp!1848317 (inv!84669 setElem!46055) e!4072877))))

(declare-fun setRest!46055 () (InoxSet Context!11906))

(assert (=> setNonEmpty!46055 (= res!2758099 ((_ map or) (store ((as const (Array Context!11906 Bool)) false) setElem!46055 true) setRest!46055))))

(declare-fun b!6743017 () Bool)

(declare-fun tp!1848316 () Bool)

(assert (=> b!6743017 (= e!4072877 tp!1848316)))

(assert (= (and d!2118678 condSetEmpty!46055) setIsEmpty!46055))

(assert (= (and d!2118678 (not condSetEmpty!46055)) setNonEmpty!46055))

(assert (= setNonEmpty!46055 b!6743017))

(declare-fun m!7499254 () Bool)

(assert (=> setNonEmpty!46055 m!7499254))

(assert (=> d!2118334 d!2118678))

(declare-fun b!6743018 () Bool)

(declare-fun e!4072879 () Bool)

(declare-fun call!609698 () Bool)

(assert (=> b!6743018 (= e!4072879 call!609698)))

(declare-fun b!6743019 () Bool)

(declare-fun e!4072881 () Bool)

(declare-fun e!4072884 () Bool)

(assert (=> b!6743019 (= e!4072881 e!4072884)))

(declare-fun c!1251000 () Bool)

(assert (=> b!6743019 (= c!1251000 ((_ is Union!16569) lt!2439291))))

(declare-fun b!6743020 () Bool)

(declare-fun e!4072883 () Bool)

(assert (=> b!6743020 (= e!4072883 e!4072879)))

(declare-fun res!2758100 () Bool)

(assert (=> b!6743020 (=> (not res!2758100) (not e!4072879))))

(declare-fun call!609700 () Bool)

(assert (=> b!6743020 (= res!2758100 call!609700)))

(declare-fun b!6743021 () Bool)

(declare-fun e!4072880 () Bool)

(declare-fun call!609699 () Bool)

(assert (=> b!6743021 (= e!4072880 call!609699)))

(declare-fun bm!609693 () Bool)

(assert (=> bm!609693 (= call!609700 (validRegex!8305 (ite c!1251000 (regOne!33651 lt!2439291) (regOne!33650 lt!2439291))))))

(declare-fun b!6743022 () Bool)

(declare-fun e!4072882 () Bool)

(assert (=> b!6743022 (= e!4072882 call!609698)))

(declare-fun b!6743023 () Bool)

(declare-fun res!2758102 () Bool)

(assert (=> b!6743023 (=> (not res!2758102) (not e!4072882))))

(assert (=> b!6743023 (= res!2758102 call!609700)))

(assert (=> b!6743023 (= e!4072884 e!4072882)))

(declare-fun c!1250999 () Bool)

(declare-fun bm!609694 () Bool)

(assert (=> bm!609694 (= call!609699 (validRegex!8305 (ite c!1250999 (reg!16898 lt!2439291) (ite c!1251000 (regTwo!33651 lt!2439291) (regTwo!33650 lt!2439291)))))))

(declare-fun b!6743025 () Bool)

(assert (=> b!6743025 (= e!4072881 e!4072880)))

(declare-fun res!2758104 () Bool)

(assert (=> b!6743025 (= res!2758104 (not (nullable!6556 (reg!16898 lt!2439291))))))

(assert (=> b!6743025 (=> (not res!2758104) (not e!4072880))))

(declare-fun b!6743026 () Bool)

(declare-fun res!2758103 () Bool)

(assert (=> b!6743026 (=> res!2758103 e!4072883)))

(assert (=> b!6743026 (= res!2758103 (not ((_ is Concat!25414) lt!2439291)))))

(assert (=> b!6743026 (= e!4072884 e!4072883)))

(declare-fun bm!609695 () Bool)

(assert (=> bm!609695 (= call!609698 call!609699)))

(declare-fun d!2118680 () Bool)

(declare-fun res!2758101 () Bool)

(declare-fun e!4072878 () Bool)

(assert (=> d!2118680 (=> res!2758101 e!4072878)))

(assert (=> d!2118680 (= res!2758101 ((_ is ElementMatch!16569) lt!2439291))))

(assert (=> d!2118680 (= (validRegex!8305 lt!2439291) e!4072878)))

(declare-fun b!6743024 () Bool)

(assert (=> b!6743024 (= e!4072878 e!4072881)))

(assert (=> b!6743024 (= c!1250999 ((_ is Star!16569) lt!2439291))))

(assert (= (and d!2118680 (not res!2758101)) b!6743024))

(assert (= (and b!6743024 c!1250999) b!6743025))

(assert (= (and b!6743024 (not c!1250999)) b!6743019))

(assert (= (and b!6743025 res!2758104) b!6743021))

(assert (= (and b!6743019 c!1251000) b!6743023))

(assert (= (and b!6743019 (not c!1251000)) b!6743026))

(assert (= (and b!6743023 res!2758102) b!6743022))

(assert (= (and b!6743026 (not res!2758103)) b!6743020))

(assert (= (and b!6743020 res!2758100) b!6743018))

(assert (= (or b!6743022 b!6743018) bm!609695))

(assert (= (or b!6743023 b!6743020) bm!609693))

(assert (= (or b!6743021 bm!609695) bm!609694))

(declare-fun m!7499262 () Bool)

(assert (=> bm!609693 m!7499262))

(declare-fun m!7499266 () Bool)

(assert (=> bm!609694 m!7499266))

(declare-fun m!7499268 () Bool)

(assert (=> b!6743025 m!7499268))

(assert (=> d!2118316 d!2118680))

(declare-fun bs!1792904 () Bool)

(declare-fun d!2118684 () Bool)

(assert (= bs!1792904 (and d!2118684 d!2118286)))

(declare-fun lambda!378868 () Int)

(assert (=> bs!1792904 (= lambda!378868 lambda!378815)))

(declare-fun bs!1792905 () Bool)

(assert (= bs!1792905 (and d!2118684 d!2118344)))

(assert (=> bs!1792905 (= lambda!378868 lambda!378825)))

(declare-fun bs!1792907 () Bool)

(assert (= bs!1792907 (and d!2118684 d!2118576)))

(assert (=> bs!1792907 (= lambda!378868 lambda!378857)))

(declare-fun bs!1792908 () Bool)

(assert (= bs!1792908 (and d!2118684 d!2118280)))

(assert (=> bs!1792908 (= lambda!378868 lambda!378805)))

(declare-fun bs!1792910 () Bool)

(assert (= bs!1792910 (and d!2118684 d!2118474)))

(assert (=> bs!1792910 (= lambda!378868 lambda!378847)))

(declare-fun bs!1792912 () Bool)

(assert (= bs!1792912 (and d!2118684 d!2118470)))

(assert (=> bs!1792912 (= lambda!378868 lambda!378846)))

(declare-fun bs!1792914 () Bool)

(assert (= bs!1792914 (and d!2118684 d!2118342)))

(assert (=> bs!1792914 (= lambda!378868 lambda!378822)))

(declare-fun bs!1792915 () Bool)

(assert (= bs!1792915 (and d!2118684 d!2118430)))

(assert (=> bs!1792915 (= lambda!378868 lambda!378842)))

(declare-fun bs!1792917 () Bool)

(assert (= bs!1792917 (and d!2118684 d!2118626)))

(assert (=> bs!1792917 (= lambda!378868 lambda!378864)))

(declare-fun bs!1792918 () Bool)

(assert (= bs!1792918 (and d!2118684 d!2118314)))

(assert (=> bs!1792918 (= lambda!378868 lambda!378818)))

(declare-fun bs!1792919 () Bool)

(assert (= bs!1792919 (and d!2118684 d!2118278)))

(assert (=> bs!1792919 (= lambda!378868 lambda!378804)))

(declare-fun b!6743029 () Bool)

(declare-fun e!4072888 () Bool)

(declare-fun lt!2439339 () Regex!16569)

(assert (=> b!6743029 (= e!4072888 (isUnion!1373 lt!2439339))))

(declare-fun b!6743030 () Bool)

(declare-fun e!4072891 () Bool)

(assert (=> b!6743030 (= e!4072891 (isEmpty!38230 (t!379705 (unfocusZipperList!1990 (Cons!65884 lt!2439204 Nil!65884)))))))

(declare-fun b!6743032 () Bool)

(declare-fun e!4072886 () Regex!16569)

(assert (=> b!6743032 (= e!4072886 (h!72330 (unfocusZipperList!1990 (Cons!65884 lt!2439204 Nil!65884))))))

(declare-fun b!6743033 () Bool)

(declare-fun e!4072889 () Bool)

(declare-fun e!4072890 () Bool)

(assert (=> b!6743033 (= e!4072889 e!4072890)))

(declare-fun c!1251003 () Bool)

(assert (=> b!6743033 (= c!1251003 (isEmpty!38230 (unfocusZipperList!1990 (Cons!65884 lt!2439204 Nil!65884))))))

(declare-fun b!6743034 () Bool)

(assert (=> b!6743034 (= e!4072890 e!4072888)))

(declare-fun c!1251002 () Bool)

(assert (=> b!6743034 (= c!1251002 (isEmpty!38230 (tail!12651 (unfocusZipperList!1990 (Cons!65884 lt!2439204 Nil!65884)))))))

(declare-fun b!6743035 () Bool)

(declare-fun e!4072887 () Regex!16569)

(assert (=> b!6743035 (= e!4072887 (Union!16569 (h!72330 (unfocusZipperList!1990 (Cons!65884 lt!2439204 Nil!65884))) (generalisedUnion!2413 (t!379705 (unfocusZipperList!1990 (Cons!65884 lt!2439204 Nil!65884))))))))

(declare-fun b!6743036 () Bool)

(assert (=> b!6743036 (= e!4072886 e!4072887)))

(declare-fun c!1251004 () Bool)

(assert (=> b!6743036 (= c!1251004 ((_ is Cons!65882) (unfocusZipperList!1990 (Cons!65884 lt!2439204 Nil!65884))))))

(declare-fun b!6743037 () Bool)

(assert (=> b!6743037 (= e!4072887 EmptyLang!16569)))

(declare-fun b!6743038 () Bool)

(assert (=> b!6743038 (= e!4072888 (= lt!2439339 (head!13566 (unfocusZipperList!1990 (Cons!65884 lt!2439204 Nil!65884)))))))

(assert (=> d!2118684 e!4072889))

(declare-fun res!2758105 () Bool)

(assert (=> d!2118684 (=> (not res!2758105) (not e!4072889))))

(assert (=> d!2118684 (= res!2758105 (validRegex!8305 lt!2439339))))

(assert (=> d!2118684 (= lt!2439339 e!4072886)))

(declare-fun c!1251005 () Bool)

(assert (=> d!2118684 (= c!1251005 e!4072891)))

(declare-fun res!2758106 () Bool)

(assert (=> d!2118684 (=> (not res!2758106) (not e!4072891))))

(assert (=> d!2118684 (= res!2758106 ((_ is Cons!65882) (unfocusZipperList!1990 (Cons!65884 lt!2439204 Nil!65884))))))

(assert (=> d!2118684 (forall!15769 (unfocusZipperList!1990 (Cons!65884 lt!2439204 Nil!65884)) lambda!378868)))

(assert (=> d!2118684 (= (generalisedUnion!2413 (unfocusZipperList!1990 (Cons!65884 lt!2439204 Nil!65884))) lt!2439339)))

(declare-fun b!6743031 () Bool)

(assert (=> b!6743031 (= e!4072890 (isEmptyLang!1943 lt!2439339))))

(assert (= (and d!2118684 res!2758106) b!6743030))

(assert (= (and d!2118684 c!1251005) b!6743032))

(assert (= (and d!2118684 (not c!1251005)) b!6743036))

(assert (= (and b!6743036 c!1251004) b!6743035))

(assert (= (and b!6743036 (not c!1251004)) b!6743037))

(assert (= (and d!2118684 res!2758105) b!6743033))

(assert (= (and b!6743033 c!1251003) b!6743031))

(assert (= (and b!6743033 (not c!1251003)) b!6743034))

(assert (= (and b!6743034 c!1251002) b!6743038))

(assert (= (and b!6743034 (not c!1251002)) b!6743029))

(declare-fun m!7499288 () Bool)

(assert (=> b!6743031 m!7499288))

(declare-fun m!7499290 () Bool)

(assert (=> b!6743029 m!7499290))

(assert (=> b!6743038 m!7498440))

(declare-fun m!7499292 () Bool)

(assert (=> b!6743038 m!7499292))

(assert (=> b!6743033 m!7498440))

(declare-fun m!7499294 () Bool)

(assert (=> b!6743033 m!7499294))

(declare-fun m!7499296 () Bool)

(assert (=> d!2118684 m!7499296))

(assert (=> d!2118684 m!7498440))

(declare-fun m!7499298 () Bool)

(assert (=> d!2118684 m!7499298))

(assert (=> b!6743034 m!7498440))

(declare-fun m!7499300 () Bool)

(assert (=> b!6743034 m!7499300))

(assert (=> b!6743034 m!7499300))

(declare-fun m!7499302 () Bool)

(assert (=> b!6743034 m!7499302))

(declare-fun m!7499304 () Bool)

(assert (=> b!6743035 m!7499304))

(declare-fun m!7499306 () Bool)

(assert (=> b!6743030 m!7499306))

(assert (=> d!2118316 d!2118684))

(declare-fun bs!1792924 () Bool)

(declare-fun d!2118706 () Bool)

(assert (= bs!1792924 (and d!2118706 d!2118286)))

(declare-fun lambda!378870 () Int)

(assert (=> bs!1792924 (= lambda!378870 lambda!378815)))

(declare-fun bs!1792925 () Bool)

(assert (= bs!1792925 (and d!2118706 d!2118684)))

(assert (=> bs!1792925 (= lambda!378870 lambda!378868)))

(declare-fun bs!1792926 () Bool)

(assert (= bs!1792926 (and d!2118706 d!2118344)))

(assert (=> bs!1792926 (= lambda!378870 lambda!378825)))

(declare-fun bs!1792927 () Bool)

(assert (= bs!1792927 (and d!2118706 d!2118576)))

(assert (=> bs!1792927 (= lambda!378870 lambda!378857)))

(declare-fun bs!1792928 () Bool)

(assert (= bs!1792928 (and d!2118706 d!2118280)))

(assert (=> bs!1792928 (= lambda!378870 lambda!378805)))

(declare-fun bs!1792929 () Bool)

(assert (= bs!1792929 (and d!2118706 d!2118474)))

(assert (=> bs!1792929 (= lambda!378870 lambda!378847)))

(declare-fun bs!1792930 () Bool)

(assert (= bs!1792930 (and d!2118706 d!2118470)))

(assert (=> bs!1792930 (= lambda!378870 lambda!378846)))

(declare-fun bs!1792931 () Bool)

(assert (= bs!1792931 (and d!2118706 d!2118342)))

(assert (=> bs!1792931 (= lambda!378870 lambda!378822)))

(declare-fun bs!1792932 () Bool)

(assert (= bs!1792932 (and d!2118706 d!2118430)))

(assert (=> bs!1792932 (= lambda!378870 lambda!378842)))

(declare-fun bs!1792933 () Bool)

(assert (= bs!1792933 (and d!2118706 d!2118626)))

(assert (=> bs!1792933 (= lambda!378870 lambda!378864)))

(declare-fun bs!1792934 () Bool)

(assert (= bs!1792934 (and d!2118706 d!2118314)))

(assert (=> bs!1792934 (= lambda!378870 lambda!378818)))

(declare-fun bs!1792935 () Bool)

(assert (= bs!1792935 (and d!2118706 d!2118278)))

(assert (=> bs!1792935 (= lambda!378870 lambda!378804)))

(declare-fun lt!2439340 () List!66006)

(assert (=> d!2118706 (forall!15769 lt!2439340 lambda!378870)))

(declare-fun e!4072892 () List!66006)

(assert (=> d!2118706 (= lt!2439340 e!4072892)))

(declare-fun c!1251006 () Bool)

(assert (=> d!2118706 (= c!1251006 ((_ is Cons!65884) (Cons!65884 lt!2439204 Nil!65884)))))

(assert (=> d!2118706 (= (unfocusZipperList!1990 (Cons!65884 lt!2439204 Nil!65884)) lt!2439340)))

(declare-fun b!6743039 () Bool)

(assert (=> b!6743039 (= e!4072892 (Cons!65882 (generalisedConcat!2166 (exprs!6453 (h!72332 (Cons!65884 lt!2439204 Nil!65884)))) (unfocusZipperList!1990 (t!379707 (Cons!65884 lt!2439204 Nil!65884)))))))

(declare-fun b!6743040 () Bool)

(assert (=> b!6743040 (= e!4072892 Nil!65882)))

(assert (= (and d!2118706 c!1251006) b!6743039))

(assert (= (and d!2118706 (not c!1251006)) b!6743040))

(declare-fun m!7499308 () Bool)

(assert (=> d!2118706 m!7499308))

(declare-fun m!7499310 () Bool)

(assert (=> b!6743039 m!7499310))

(declare-fun m!7499312 () Bool)

(assert (=> b!6743039 m!7499312))

(assert (=> d!2118316 d!2118706))

(declare-fun d!2118708 () Bool)

(assert (=> d!2118708 (= (Exists!3637 (ite c!1250679 lambda!378794 lambda!378795)) (choose!50252 (ite c!1250679 lambda!378794 lambda!378795)))))

(declare-fun bs!1792936 () Bool)

(assert (= bs!1792936 d!2118708))

(declare-fun m!7499314 () Bool)

(assert (=> bs!1792936 m!7499314))

(assert (=> bm!609500 d!2118708))

(assert (=> bm!609503 d!2118190))

(declare-fun d!2118710 () Bool)

(declare-fun res!2758107 () Bool)

(declare-fun e!4072893 () Bool)

(assert (=> d!2118710 (=> res!2758107 e!4072893)))

(assert (=> d!2118710 (= res!2758107 ((_ is Nil!65882) lt!2439300))))

(assert (=> d!2118710 (= (forall!15769 lt!2439300 lambda!378825) e!4072893)))

(declare-fun b!6743041 () Bool)

(declare-fun e!4072894 () Bool)

(assert (=> b!6743041 (= e!4072893 e!4072894)))

(declare-fun res!2758108 () Bool)

(assert (=> b!6743041 (=> (not res!2758108) (not e!4072894))))

(assert (=> b!6743041 (= res!2758108 (dynLambda!26290 lambda!378825 (h!72330 lt!2439300)))))

(declare-fun b!6743042 () Bool)

(assert (=> b!6743042 (= e!4072894 (forall!15769 (t!379705 lt!2439300) lambda!378825))))

(assert (= (and d!2118710 (not res!2758107)) b!6743041))

(assert (= (and b!6743041 res!2758108) b!6743042))

(declare-fun b_lambda!253961 () Bool)

(assert (=> (not b_lambda!253961) (not b!6743041)))

(declare-fun m!7499316 () Bool)

(assert (=> b!6743041 m!7499316))

(declare-fun m!7499318 () Bool)

(assert (=> b!6743042 m!7499318))

(assert (=> d!2118344 d!2118710))

(assert (=> b!6742256 d!2118286))

(declare-fun bs!1792937 () Bool)

(declare-fun d!2118712 () Bool)

(assert (= bs!1792937 (and d!2118712 d!2118286)))

(declare-fun lambda!378871 () Int)

(assert (=> bs!1792937 (= lambda!378871 lambda!378815)))

(declare-fun bs!1792938 () Bool)

(assert (= bs!1792938 (and d!2118712 d!2118684)))

(assert (=> bs!1792938 (= lambda!378871 lambda!378868)))

(declare-fun bs!1792939 () Bool)

(assert (= bs!1792939 (and d!2118712 d!2118344)))

(assert (=> bs!1792939 (= lambda!378871 lambda!378825)))

(declare-fun bs!1792940 () Bool)

(assert (= bs!1792940 (and d!2118712 d!2118706)))

(assert (=> bs!1792940 (= lambda!378871 lambda!378870)))

(declare-fun bs!1792941 () Bool)

(assert (= bs!1792941 (and d!2118712 d!2118576)))

(assert (=> bs!1792941 (= lambda!378871 lambda!378857)))

(declare-fun bs!1792942 () Bool)

(assert (= bs!1792942 (and d!2118712 d!2118280)))

(assert (=> bs!1792942 (= lambda!378871 lambda!378805)))

(declare-fun bs!1792943 () Bool)

(assert (= bs!1792943 (and d!2118712 d!2118474)))

(assert (=> bs!1792943 (= lambda!378871 lambda!378847)))

(declare-fun bs!1792944 () Bool)

(assert (= bs!1792944 (and d!2118712 d!2118470)))

(assert (=> bs!1792944 (= lambda!378871 lambda!378846)))

(declare-fun bs!1792945 () Bool)

(assert (= bs!1792945 (and d!2118712 d!2118342)))

(assert (=> bs!1792945 (= lambda!378871 lambda!378822)))

(declare-fun bs!1792946 () Bool)

(assert (= bs!1792946 (and d!2118712 d!2118430)))

(assert (=> bs!1792946 (= lambda!378871 lambda!378842)))

(declare-fun bs!1792947 () Bool)

(assert (= bs!1792947 (and d!2118712 d!2118626)))

(assert (=> bs!1792947 (= lambda!378871 lambda!378864)))

(declare-fun bs!1792948 () Bool)

(assert (= bs!1792948 (and d!2118712 d!2118314)))

(assert (=> bs!1792948 (= lambda!378871 lambda!378818)))

(declare-fun bs!1792949 () Bool)

(assert (= bs!1792949 (and d!2118712 d!2118278)))

(assert (=> bs!1792949 (= lambda!378871 lambda!378804)))

(declare-fun lt!2439341 () List!66006)

(assert (=> d!2118712 (forall!15769 lt!2439341 lambda!378871)))

(declare-fun e!4072895 () List!66006)

(assert (=> d!2118712 (= lt!2439341 e!4072895)))

(declare-fun c!1251007 () Bool)

(assert (=> d!2118712 (= c!1251007 ((_ is Cons!65884) (t!379707 zl!343)))))

(assert (=> d!2118712 (= (unfocusZipperList!1990 (t!379707 zl!343)) lt!2439341)))

(declare-fun b!6743043 () Bool)

(assert (=> b!6743043 (= e!4072895 (Cons!65882 (generalisedConcat!2166 (exprs!6453 (h!72332 (t!379707 zl!343)))) (unfocusZipperList!1990 (t!379707 (t!379707 zl!343)))))))

(declare-fun b!6743044 () Bool)

(assert (=> b!6743044 (= e!4072895 Nil!65882)))

(assert (= (and d!2118712 c!1251007) b!6743043))

(assert (= (and d!2118712 (not c!1251007)) b!6743044))

(declare-fun m!7499320 () Bool)

(assert (=> d!2118712 m!7499320))

(declare-fun m!7499322 () Bool)

(assert (=> b!6743043 m!7499322))

(declare-fun m!7499324 () Bool)

(assert (=> b!6743043 m!7499324))

(assert (=> b!6742256 d!2118712))

(assert (=> b!6741755 d!2118246))

(declare-fun b!6743045 () Bool)

(declare-fun e!4072897 () Bool)

(declare-fun call!609701 () Bool)

(assert (=> b!6743045 (= e!4072897 call!609701)))

(declare-fun b!6743046 () Bool)

(declare-fun e!4072899 () Bool)

(declare-fun e!4072902 () Bool)

(assert (=> b!6743046 (= e!4072899 e!4072902)))

(declare-fun c!1251009 () Bool)

(assert (=> b!6743046 (= c!1251009 ((_ is Union!16569) lt!2439297))))

(declare-fun b!6743047 () Bool)

(declare-fun e!4072901 () Bool)

(assert (=> b!6743047 (= e!4072901 e!4072897)))

(declare-fun res!2758109 () Bool)

(assert (=> b!6743047 (=> (not res!2758109) (not e!4072897))))

(declare-fun call!609703 () Bool)

(assert (=> b!6743047 (= res!2758109 call!609703)))

(declare-fun b!6743048 () Bool)

(declare-fun e!4072898 () Bool)

(declare-fun call!609702 () Bool)

(assert (=> b!6743048 (= e!4072898 call!609702)))

(declare-fun bm!609696 () Bool)

(assert (=> bm!609696 (= call!609703 (validRegex!8305 (ite c!1251009 (regOne!33651 lt!2439297) (regOne!33650 lt!2439297))))))

(declare-fun b!6743049 () Bool)

(declare-fun e!4072900 () Bool)

(assert (=> b!6743049 (= e!4072900 call!609701)))

(declare-fun b!6743050 () Bool)

(declare-fun res!2758111 () Bool)

(assert (=> b!6743050 (=> (not res!2758111) (not e!4072900))))

(assert (=> b!6743050 (= res!2758111 call!609703)))

(assert (=> b!6743050 (= e!4072902 e!4072900)))

(declare-fun bm!609697 () Bool)

(declare-fun c!1251008 () Bool)

(assert (=> bm!609697 (= call!609702 (validRegex!8305 (ite c!1251008 (reg!16898 lt!2439297) (ite c!1251009 (regTwo!33651 lt!2439297) (regTwo!33650 lt!2439297)))))))

(declare-fun b!6743052 () Bool)

(assert (=> b!6743052 (= e!4072899 e!4072898)))

(declare-fun res!2758113 () Bool)

(assert (=> b!6743052 (= res!2758113 (not (nullable!6556 (reg!16898 lt!2439297))))))

(assert (=> b!6743052 (=> (not res!2758113) (not e!4072898))))

(declare-fun b!6743053 () Bool)

(declare-fun res!2758112 () Bool)

(assert (=> b!6743053 (=> res!2758112 e!4072901)))

(assert (=> b!6743053 (= res!2758112 (not ((_ is Concat!25414) lt!2439297)))))

(assert (=> b!6743053 (= e!4072902 e!4072901)))

(declare-fun bm!609698 () Bool)

(assert (=> bm!609698 (= call!609701 call!609702)))

(declare-fun d!2118714 () Bool)

(declare-fun res!2758110 () Bool)

(declare-fun e!4072896 () Bool)

(assert (=> d!2118714 (=> res!2758110 e!4072896)))

(assert (=> d!2118714 (= res!2758110 ((_ is ElementMatch!16569) lt!2439297))))

(assert (=> d!2118714 (= (validRegex!8305 lt!2439297) e!4072896)))

(declare-fun b!6743051 () Bool)

(assert (=> b!6743051 (= e!4072896 e!4072899)))

(assert (=> b!6743051 (= c!1251008 ((_ is Star!16569) lt!2439297))))

(assert (= (and d!2118714 (not res!2758110)) b!6743051))

(assert (= (and b!6743051 c!1251008) b!6743052))

(assert (= (and b!6743051 (not c!1251008)) b!6743046))

(assert (= (and b!6743052 res!2758113) b!6743048))

(assert (= (and b!6743046 c!1251009) b!6743050))

(assert (= (and b!6743046 (not c!1251009)) b!6743053))

(assert (= (and b!6743050 res!2758111) b!6743049))

(assert (= (and b!6743053 (not res!2758112)) b!6743047))

(assert (= (and b!6743047 res!2758109) b!6743045))

(assert (= (or b!6743049 b!6743045) bm!609698))

(assert (= (or b!6743050 b!6743047) bm!609696))

(assert (= (or b!6743048 bm!609698) bm!609697))

(declare-fun m!7499326 () Bool)

(assert (=> bm!609696 m!7499326))

(declare-fun m!7499328 () Bool)

(assert (=> bm!609697 m!7499328))

(declare-fun m!7499330 () Bool)

(assert (=> b!6743052 m!7499330))

(assert (=> d!2118342 d!2118714))

(declare-fun d!2118716 () Bool)

(declare-fun res!2758114 () Bool)

(declare-fun e!4072903 () Bool)

(assert (=> d!2118716 (=> res!2758114 e!4072903)))

(assert (=> d!2118716 (= res!2758114 ((_ is Nil!65882) (unfocusZipperList!1990 zl!343)))))

(assert (=> d!2118716 (= (forall!15769 (unfocusZipperList!1990 zl!343) lambda!378822) e!4072903)))

(declare-fun b!6743054 () Bool)

(declare-fun e!4072904 () Bool)

(assert (=> b!6743054 (= e!4072903 e!4072904)))

(declare-fun res!2758115 () Bool)

(assert (=> b!6743054 (=> (not res!2758115) (not e!4072904))))

(assert (=> b!6743054 (= res!2758115 (dynLambda!26290 lambda!378822 (h!72330 (unfocusZipperList!1990 zl!343))))))

(declare-fun b!6743055 () Bool)

(assert (=> b!6743055 (= e!4072904 (forall!15769 (t!379705 (unfocusZipperList!1990 zl!343)) lambda!378822))))

(assert (= (and d!2118716 (not res!2758114)) b!6743054))

(assert (= (and b!6743054 res!2758115) b!6743055))

(declare-fun b_lambda!253963 () Bool)

(assert (=> (not b_lambda!253963) (not b!6743054)))

(declare-fun m!7499332 () Bool)

(assert (=> b!6743054 m!7499332))

(declare-fun m!7499334 () Bool)

(assert (=> b!6743055 m!7499334))

(assert (=> d!2118342 d!2118716))

(declare-fun d!2118718 () Bool)

(assert (=> d!2118718 (= ($colon$colon!2386 (exprs!6453 lt!2439184) (ite (or c!1250664 c!1250660) (regTwo!33650 (reg!16898 r!7292)) (reg!16898 r!7292))) (Cons!65882 (ite (or c!1250664 c!1250660) (regTwo!33650 (reg!16898 r!7292)) (reg!16898 r!7292)) (exprs!6453 lt!2439184)))))

(assert (=> bm!609489 d!2118718))

(declare-fun b!6743060 () Bool)

(declare-fun e!4072908 () Bool)

(declare-fun call!609704 () Bool)

(assert (=> b!6743060 (= e!4072908 call!609704)))

(declare-fun b!6743061 () Bool)

(declare-fun e!4072910 () Bool)

(declare-fun e!4072913 () Bool)

(assert (=> b!6743061 (= e!4072910 e!4072913)))

(declare-fun c!1251011 () Bool)

(assert (=> b!6743061 (= c!1251011 ((_ is Union!16569) lt!2439282))))

(declare-fun b!6743062 () Bool)

(declare-fun e!4072912 () Bool)

(assert (=> b!6743062 (= e!4072912 e!4072908)))

(declare-fun res!2758120 () Bool)

(assert (=> b!6743062 (=> (not res!2758120) (not e!4072908))))

(declare-fun call!609706 () Bool)

(assert (=> b!6743062 (= res!2758120 call!609706)))

(declare-fun b!6743063 () Bool)

(declare-fun e!4072909 () Bool)

(declare-fun call!609705 () Bool)

(assert (=> b!6743063 (= e!4072909 call!609705)))

(declare-fun bm!609699 () Bool)

(assert (=> bm!609699 (= call!609706 (validRegex!8305 (ite c!1251011 (regOne!33651 lt!2439282) (regOne!33650 lt!2439282))))))

(declare-fun b!6743064 () Bool)

(declare-fun e!4072911 () Bool)

(assert (=> b!6743064 (= e!4072911 call!609704)))

(declare-fun b!6743065 () Bool)

(declare-fun res!2758122 () Bool)

(assert (=> b!6743065 (=> (not res!2758122) (not e!4072911))))

(assert (=> b!6743065 (= res!2758122 call!609706)))

(assert (=> b!6743065 (= e!4072913 e!4072911)))

(declare-fun bm!609700 () Bool)

(declare-fun c!1251010 () Bool)

(assert (=> bm!609700 (= call!609705 (validRegex!8305 (ite c!1251010 (reg!16898 lt!2439282) (ite c!1251011 (regTwo!33651 lt!2439282) (regTwo!33650 lt!2439282)))))))

(declare-fun b!6743067 () Bool)

(assert (=> b!6743067 (= e!4072910 e!4072909)))

(declare-fun res!2758124 () Bool)

(assert (=> b!6743067 (= res!2758124 (not (nullable!6556 (reg!16898 lt!2439282))))))

(assert (=> b!6743067 (=> (not res!2758124) (not e!4072909))))

(declare-fun b!6743068 () Bool)

(declare-fun res!2758123 () Bool)

(assert (=> b!6743068 (=> res!2758123 e!4072912)))

(assert (=> b!6743068 (= res!2758123 (not ((_ is Concat!25414) lt!2439282)))))

(assert (=> b!6743068 (= e!4072913 e!4072912)))

(declare-fun bm!609701 () Bool)

(assert (=> bm!609701 (= call!609704 call!609705)))

(declare-fun d!2118720 () Bool)

(declare-fun res!2758121 () Bool)

(declare-fun e!4072907 () Bool)

(assert (=> d!2118720 (=> res!2758121 e!4072907)))

(assert (=> d!2118720 (= res!2758121 ((_ is ElementMatch!16569) lt!2439282))))

(assert (=> d!2118720 (= (validRegex!8305 lt!2439282) e!4072907)))

(declare-fun b!6743066 () Bool)

(assert (=> b!6743066 (= e!4072907 e!4072910)))

(assert (=> b!6743066 (= c!1251010 ((_ is Star!16569) lt!2439282))))

(assert (= (and d!2118720 (not res!2758121)) b!6743066))

(assert (= (and b!6743066 c!1251010) b!6743067))

(assert (= (and b!6743066 (not c!1251010)) b!6743061))

(assert (= (and b!6743067 res!2758124) b!6743063))

(assert (= (and b!6743061 c!1251011) b!6743065))

(assert (= (and b!6743061 (not c!1251011)) b!6743068))

(assert (= (and b!6743065 res!2758122) b!6743064))

(assert (= (and b!6743068 (not res!2758123)) b!6743062))

(assert (= (and b!6743062 res!2758120) b!6743060))

(assert (= (or b!6743064 b!6743060) bm!609701))

(assert (= (or b!6743065 b!6743062) bm!609699))

(assert (= (or b!6743063 bm!609701) bm!609700))

(declare-fun m!7499336 () Bool)

(assert (=> bm!609699 m!7499336))

(declare-fun m!7499338 () Bool)

(assert (=> bm!609700 m!7499338))

(declare-fun m!7499340 () Bool)

(assert (=> b!6743067 m!7499340))

(assert (=> d!2118286 d!2118720))

(declare-fun d!2118722 () Bool)

(declare-fun res!2758125 () Bool)

(declare-fun e!4072914 () Bool)

(assert (=> d!2118722 (=> res!2758125 e!4072914)))

(assert (=> d!2118722 (= res!2758125 ((_ is Nil!65882) (exprs!6453 (h!72332 zl!343))))))

(assert (=> d!2118722 (= (forall!15769 (exprs!6453 (h!72332 zl!343)) lambda!378815) e!4072914)))

(declare-fun b!6743069 () Bool)

(declare-fun e!4072915 () Bool)

(assert (=> b!6743069 (= e!4072914 e!4072915)))

(declare-fun res!2758126 () Bool)

(assert (=> b!6743069 (=> (not res!2758126) (not e!4072915))))

(assert (=> b!6743069 (= res!2758126 (dynLambda!26290 lambda!378815 (h!72330 (exprs!6453 (h!72332 zl!343)))))))

(declare-fun b!6743070 () Bool)

(assert (=> b!6743070 (= e!4072915 (forall!15769 (t!379705 (exprs!6453 (h!72332 zl!343))) lambda!378815))))

(assert (= (and d!2118722 (not res!2758125)) b!6743069))

(assert (= (and b!6743069 res!2758126) b!6743070))

(declare-fun b_lambda!253965 () Bool)

(assert (=> (not b_lambda!253965) (not b!6743069)))

(declare-fun m!7499342 () Bool)

(assert (=> b!6743069 m!7499342))

(declare-fun m!7499344 () Bool)

(assert (=> b!6743070 m!7499344))

(assert (=> d!2118286 d!2118722))

(declare-fun bs!1792950 () Bool)

(declare-fun d!2118724 () Bool)

(assert (= bs!1792950 (and d!2118724 d!2118286)))

(declare-fun lambda!378874 () Int)

(assert (=> bs!1792950 (= lambda!378874 lambda!378815)))

(declare-fun bs!1792951 () Bool)

(assert (= bs!1792951 (and d!2118724 d!2118684)))

(assert (=> bs!1792951 (= lambda!378874 lambda!378868)))

(declare-fun bs!1792952 () Bool)

(assert (= bs!1792952 (and d!2118724 d!2118344)))

(assert (=> bs!1792952 (= lambda!378874 lambda!378825)))

(declare-fun bs!1792953 () Bool)

(assert (= bs!1792953 (and d!2118724 d!2118706)))

(assert (=> bs!1792953 (= lambda!378874 lambda!378870)))

(declare-fun bs!1792954 () Bool)

(assert (= bs!1792954 (and d!2118724 d!2118576)))

(assert (=> bs!1792954 (= lambda!378874 lambda!378857)))

(declare-fun bs!1792955 () Bool)

(assert (= bs!1792955 (and d!2118724 d!2118280)))

(assert (=> bs!1792955 (= lambda!378874 lambda!378805)))

(declare-fun bs!1792956 () Bool)

(assert (= bs!1792956 (and d!2118724 d!2118474)))

(assert (=> bs!1792956 (= lambda!378874 lambda!378847)))

(declare-fun bs!1792957 () Bool)

(assert (= bs!1792957 (and d!2118724 d!2118470)))

(assert (=> bs!1792957 (= lambda!378874 lambda!378846)))

(declare-fun bs!1792958 () Bool)

(assert (= bs!1792958 (and d!2118724 d!2118342)))

(assert (=> bs!1792958 (= lambda!378874 lambda!378822)))

(declare-fun bs!1792959 () Bool)

(assert (= bs!1792959 (and d!2118724 d!2118430)))

(assert (=> bs!1792959 (= lambda!378874 lambda!378842)))

(declare-fun bs!1792960 () Bool)

(assert (= bs!1792960 (and d!2118724 d!2118626)))

(assert (=> bs!1792960 (= lambda!378874 lambda!378864)))

(declare-fun bs!1792961 () Bool)

(assert (= bs!1792961 (and d!2118724 d!2118712)))

(assert (=> bs!1792961 (= lambda!378874 lambda!378871)))

(declare-fun bs!1792962 () Bool)

(assert (= bs!1792962 (and d!2118724 d!2118314)))

(assert (=> bs!1792962 (= lambda!378874 lambda!378818)))

(declare-fun bs!1792963 () Bool)

(assert (= bs!1792963 (and d!2118724 d!2118278)))

(assert (=> bs!1792963 (= lambda!378874 lambda!378804)))

(declare-fun b!6743071 () Bool)

(declare-fun e!4072920 () Bool)

(declare-fun lt!2439342 () Regex!16569)

(assert (=> b!6743071 (= e!4072920 (= lt!2439342 (head!13566 (t!379705 (exprs!6453 (h!72332 zl!343))))))))

(declare-fun b!6743072 () Bool)

(declare-fun e!4072919 () Bool)

(declare-fun e!4072916 () Bool)

(assert (=> b!6743072 (= e!4072919 e!4072916)))

(declare-fun c!1251013 () Bool)

(assert (=> b!6743072 (= c!1251013 (isEmpty!38230 (t!379705 (exprs!6453 (h!72332 zl!343)))))))

(declare-fun b!6743073 () Bool)

(declare-fun e!4072918 () Regex!16569)

(assert (=> b!6743073 (= e!4072918 (h!72330 (t!379705 (exprs!6453 (h!72332 zl!343)))))))

(declare-fun b!6743074 () Bool)

(assert (=> b!6743074 (= e!4072916 e!4072920)))

(declare-fun c!1251012 () Bool)

(assert (=> b!6743074 (= c!1251012 (isEmpty!38230 (tail!12651 (t!379705 (exprs!6453 (h!72332 zl!343))))))))

(assert (=> d!2118724 e!4072919))

(declare-fun res!2758128 () Bool)

(assert (=> d!2118724 (=> (not res!2758128) (not e!4072919))))

(assert (=> d!2118724 (= res!2758128 (validRegex!8305 lt!2439342))))

(assert (=> d!2118724 (= lt!2439342 e!4072918)))

(declare-fun c!1251015 () Bool)

(declare-fun e!4072921 () Bool)

(assert (=> d!2118724 (= c!1251015 e!4072921)))

(declare-fun res!2758127 () Bool)

(assert (=> d!2118724 (=> (not res!2758127) (not e!4072921))))

(assert (=> d!2118724 (= res!2758127 ((_ is Cons!65882) (t!379705 (exprs!6453 (h!72332 zl!343)))))))

(assert (=> d!2118724 (forall!15769 (t!379705 (exprs!6453 (h!72332 zl!343))) lambda!378874)))

(assert (=> d!2118724 (= (generalisedConcat!2166 (t!379705 (exprs!6453 (h!72332 zl!343)))) lt!2439342)))

(declare-fun b!6743075 () Bool)

(assert (=> b!6743075 (= e!4072921 (isEmpty!38230 (t!379705 (t!379705 (exprs!6453 (h!72332 zl!343))))))))

(declare-fun b!6743076 () Bool)

(declare-fun e!4072917 () Regex!16569)

(assert (=> b!6743076 (= e!4072917 EmptyExpr!16569)))

(declare-fun b!6743077 () Bool)

(assert (=> b!6743077 (= e!4072917 (Concat!25414 (h!72330 (t!379705 (exprs!6453 (h!72332 zl!343)))) (generalisedConcat!2166 (t!379705 (t!379705 (exprs!6453 (h!72332 zl!343)))))))))

(declare-fun b!6743078 () Bool)

(assert (=> b!6743078 (= e!4072918 e!4072917)))

(declare-fun c!1251014 () Bool)

(assert (=> b!6743078 (= c!1251014 ((_ is Cons!65882) (t!379705 (exprs!6453 (h!72332 zl!343)))))))

(declare-fun b!6743079 () Bool)

(assert (=> b!6743079 (= e!4072916 (isEmptyExpr!1935 lt!2439342))))

(declare-fun b!6743080 () Bool)

(assert (=> b!6743080 (= e!4072920 (isConcat!1458 lt!2439342))))

(assert (= (and d!2118724 res!2758127) b!6743075))

(assert (= (and d!2118724 c!1251015) b!6743073))

(assert (= (and d!2118724 (not c!1251015)) b!6743078))

(assert (= (and b!6743078 c!1251014) b!6743077))

(assert (= (and b!6743078 (not c!1251014)) b!6743076))

(assert (= (and d!2118724 res!2758128) b!6743072))

(assert (= (and b!6743072 c!1251013) b!6743079))

(assert (= (and b!6743072 (not c!1251013)) b!6743074))

(assert (= (and b!6743074 c!1251012) b!6743071))

(assert (= (and b!6743074 (not c!1251012)) b!6743080))

(assert (=> b!6743072 m!7498376))

(declare-fun m!7499346 () Bool)

(assert (=> b!6743077 m!7499346))

(declare-fun m!7499348 () Bool)

(assert (=> b!6743080 m!7499348))

(declare-fun m!7499350 () Bool)

(assert (=> b!6743071 m!7499350))

(declare-fun m!7499352 () Bool)

(assert (=> b!6743074 m!7499352))

(assert (=> b!6743074 m!7499352))

(declare-fun m!7499354 () Bool)

(assert (=> b!6743074 m!7499354))

(declare-fun m!7499356 () Bool)

(assert (=> b!6743075 m!7499356))

(declare-fun m!7499358 () Bool)

(assert (=> d!2118724 m!7499358))

(declare-fun m!7499360 () Bool)

(assert (=> d!2118724 m!7499360))

(declare-fun m!7499362 () Bool)

(assert (=> b!6743079 m!7499362))

(assert (=> b!6742138 d!2118724))

(declare-fun d!2118726 () Bool)

(assert (=> d!2118726 (= (isEmptyLang!1943 lt!2439297) ((_ is EmptyLang!16569) lt!2439297))))

(assert (=> b!6742244 d!2118726))

(declare-fun b!6743087 () Bool)

(declare-fun e!4072929 () Bool)

(assert (=> b!6743087 (= e!4072929 (nullable!6556 (regOne!33650 (h!72330 (exprs!6453 (Context!11907 (Cons!65882 r!7292 Nil!65882)))))))))

(declare-fun b!6743088 () Bool)

(declare-fun e!4072926 () (InoxSet Context!11906))

(declare-fun call!609712 () (InoxSet Context!11906))

(declare-fun call!609708 () (InoxSet Context!11906))

(assert (=> b!6743088 (= e!4072926 ((_ map or) call!609712 call!609708))))

(declare-fun b!6743089 () Bool)

(declare-fun e!4072928 () (InoxSet Context!11906))

(assert (=> b!6743089 (= e!4072928 (store ((as const (Array Context!11906 Bool)) false) (Context!11907 (t!379705 (exprs!6453 (Context!11907 (Cons!65882 r!7292 Nil!65882))))) true))))

(declare-fun b!6743090 () Bool)

(declare-fun e!4072927 () (InoxSet Context!11906))

(declare-fun call!609710 () (InoxSet Context!11906))

(assert (=> b!6743090 (= e!4072927 call!609710)))

(declare-fun bm!609702 () Bool)

(declare-fun call!609707 () List!66006)

(declare-fun call!609709 () List!66006)

(assert (=> bm!609702 (= call!609707 call!609709)))

(declare-fun b!6743091 () Bool)

(declare-fun c!1251020 () Bool)

(assert (=> b!6743091 (= c!1251020 e!4072929)))

(declare-fun res!2758135 () Bool)

(assert (=> b!6743091 (=> (not res!2758135) (not e!4072929))))

(assert (=> b!6743091 (= res!2758135 ((_ is Concat!25414) (h!72330 (exprs!6453 (Context!11907 (Cons!65882 r!7292 Nil!65882))))))))

(declare-fun e!4072924 () (InoxSet Context!11906))

(assert (=> b!6743091 (= e!4072924 e!4072926)))

(declare-fun b!6743092 () Bool)

(assert (=> b!6743092 (= e!4072926 e!4072927)))

(declare-fun c!1251016 () Bool)

(assert (=> b!6743092 (= c!1251016 ((_ is Concat!25414) (h!72330 (exprs!6453 (Context!11907 (Cons!65882 r!7292 Nil!65882))))))))

(declare-fun b!6743093 () Bool)

(declare-fun c!1251018 () Bool)

(assert (=> b!6743093 (= c!1251018 ((_ is Star!16569) (h!72330 (exprs!6453 (Context!11907 (Cons!65882 r!7292 Nil!65882))))))))

(declare-fun e!4072925 () (InoxSet Context!11906))

(assert (=> b!6743093 (= e!4072927 e!4072925)))

(declare-fun b!6743094 () Bool)

(assert (=> b!6743094 (= e!4072925 call!609710)))

(declare-fun b!6743095 () Bool)

(assert (=> b!6743095 (= e!4072928 e!4072924)))

(declare-fun c!1251019 () Bool)

(assert (=> b!6743095 (= c!1251019 ((_ is Union!16569) (h!72330 (exprs!6453 (Context!11907 (Cons!65882 r!7292 Nil!65882))))))))

(declare-fun b!6743096 () Bool)

(declare-fun call!609711 () (InoxSet Context!11906))

(assert (=> b!6743096 (= e!4072924 ((_ map or) call!609711 call!609712))))

(declare-fun bm!609703 () Bool)

(assert (=> bm!609703 (= call!609712 (derivationStepZipperDown!1797 (ite c!1251019 (regTwo!33651 (h!72330 (exprs!6453 (Context!11907 (Cons!65882 r!7292 Nil!65882))))) (regOne!33650 (h!72330 (exprs!6453 (Context!11907 (Cons!65882 r!7292 Nil!65882)))))) (ite c!1251019 (Context!11907 (t!379705 (exprs!6453 (Context!11907 (Cons!65882 r!7292 Nil!65882))))) (Context!11907 call!609709)) (h!72331 s!2326)))))

(declare-fun b!6743097 () Bool)

(assert (=> b!6743097 (= e!4072925 ((as const (Array Context!11906 Bool)) false))))

(declare-fun bm!609704 () Bool)

(assert (=> bm!609704 (= call!609711 (derivationStepZipperDown!1797 (ite c!1251019 (regOne!33651 (h!72330 (exprs!6453 (Context!11907 (Cons!65882 r!7292 Nil!65882))))) (ite c!1251020 (regTwo!33650 (h!72330 (exprs!6453 (Context!11907 (Cons!65882 r!7292 Nil!65882))))) (ite c!1251016 (regOne!33650 (h!72330 (exprs!6453 (Context!11907 (Cons!65882 r!7292 Nil!65882))))) (reg!16898 (h!72330 (exprs!6453 (Context!11907 (Cons!65882 r!7292 Nil!65882)))))))) (ite (or c!1251019 c!1251020) (Context!11907 (t!379705 (exprs!6453 (Context!11907 (Cons!65882 r!7292 Nil!65882))))) (Context!11907 call!609707)) (h!72331 s!2326)))))

(declare-fun bm!609705 () Bool)

(assert (=> bm!609705 (= call!609709 ($colon$colon!2386 (exprs!6453 (Context!11907 (t!379705 (exprs!6453 (Context!11907 (Cons!65882 r!7292 Nil!65882)))))) (ite (or c!1251020 c!1251016) (regTwo!33650 (h!72330 (exprs!6453 (Context!11907 (Cons!65882 r!7292 Nil!65882))))) (h!72330 (exprs!6453 (Context!11907 (Cons!65882 r!7292 Nil!65882)))))))))

(declare-fun bm!609706 () Bool)

(assert (=> bm!609706 (= call!609710 call!609708)))

(declare-fun bm!609707 () Bool)

(assert (=> bm!609707 (= call!609708 call!609711)))

(declare-fun d!2118728 () Bool)

(declare-fun c!1251017 () Bool)

(assert (=> d!2118728 (= c!1251017 (and ((_ is ElementMatch!16569) (h!72330 (exprs!6453 (Context!11907 (Cons!65882 r!7292 Nil!65882))))) (= (c!1250577 (h!72330 (exprs!6453 (Context!11907 (Cons!65882 r!7292 Nil!65882))))) (h!72331 s!2326))))))

(assert (=> d!2118728 (= (derivationStepZipperDown!1797 (h!72330 (exprs!6453 (Context!11907 (Cons!65882 r!7292 Nil!65882)))) (Context!11907 (t!379705 (exprs!6453 (Context!11907 (Cons!65882 r!7292 Nil!65882))))) (h!72331 s!2326)) e!4072928)))

(assert (= (and d!2118728 c!1251017) b!6743089))

(assert (= (and d!2118728 (not c!1251017)) b!6743095))

(assert (= (and b!6743095 c!1251019) b!6743096))

(assert (= (and b!6743095 (not c!1251019)) b!6743091))

(assert (= (and b!6743091 res!2758135) b!6743087))

(assert (= (and b!6743091 c!1251020) b!6743088))

(assert (= (and b!6743091 (not c!1251020)) b!6743092))

(assert (= (and b!6743092 c!1251016) b!6743090))

(assert (= (and b!6743092 (not c!1251016)) b!6743093))

(assert (= (and b!6743093 c!1251018) b!6743094))

(assert (= (and b!6743093 (not c!1251018)) b!6743097))

(assert (= (or b!6743090 b!6743094) bm!609702))

(assert (= (or b!6743090 b!6743094) bm!609706))

(assert (= (or b!6743088 bm!609702) bm!609705))

(assert (= (or b!6743088 bm!609706) bm!609707))

(assert (= (or b!6743096 b!6743088) bm!609703))

(assert (= (or b!6743096 bm!609707) bm!609704))

(declare-fun m!7499364 () Bool)

(assert (=> b!6743087 m!7499364))

(declare-fun m!7499366 () Bool)

(assert (=> bm!609703 m!7499366))

(declare-fun m!7499368 () Bool)

(assert (=> bm!609704 m!7499368))

(declare-fun m!7499370 () Bool)

(assert (=> bm!609705 m!7499370))

(declare-fun m!7499372 () Bool)

(assert (=> b!6743089 m!7499372))

(assert (=> bm!609518 d!2118728))

(assert (=> b!6741985 d!2118572))

(declare-fun d!2118730 () Bool)

(assert (=> d!2118730 (= (flatMap!2050 z!1189 lambda!378801) (choose!50257 z!1189 lambda!378801))))

(declare-fun bs!1792975 () Bool)

(assert (= bs!1792975 d!2118730))

(declare-fun m!7499374 () Bool)

(assert (=> bs!1792975 m!7499374))

(assert (=> d!2118274 d!2118730))

(declare-fun b!6743098 () Bool)

(declare-fun e!4072935 () Bool)

(assert (=> b!6743098 (= e!4072935 (nullable!6556 (regOne!33650 (ite c!1250708 (regTwo!33651 r!7292) (regOne!33650 r!7292)))))))

(declare-fun b!6743099 () Bool)

(declare-fun e!4072932 () (InoxSet Context!11906))

(declare-fun call!609718 () (InoxSet Context!11906))

(declare-fun call!609714 () (InoxSet Context!11906))

(assert (=> b!6743099 (= e!4072932 ((_ map or) call!609718 call!609714))))

(declare-fun b!6743100 () Bool)

(declare-fun e!4072934 () (InoxSet Context!11906))

(assert (=> b!6743100 (= e!4072934 (store ((as const (Array Context!11906 Bool)) false) (ite c!1250708 (Context!11907 Nil!65882) (Context!11907 call!609518)) true))))

(declare-fun b!6743101 () Bool)

(declare-fun e!4072933 () (InoxSet Context!11906))

(declare-fun call!609716 () (InoxSet Context!11906))

(assert (=> b!6743101 (= e!4072933 call!609716)))

(declare-fun bm!609708 () Bool)

(declare-fun call!609713 () List!66006)

(declare-fun call!609715 () List!66006)

(assert (=> bm!609708 (= call!609713 call!609715)))

(declare-fun b!6743102 () Bool)

(declare-fun c!1251025 () Bool)

(assert (=> b!6743102 (= c!1251025 e!4072935)))

(declare-fun res!2758136 () Bool)

(assert (=> b!6743102 (=> (not res!2758136) (not e!4072935))))

(assert (=> b!6743102 (= res!2758136 ((_ is Concat!25414) (ite c!1250708 (regTwo!33651 r!7292) (regOne!33650 r!7292))))))

(declare-fun e!4072930 () (InoxSet Context!11906))

(assert (=> b!6743102 (= e!4072930 e!4072932)))

(declare-fun b!6743103 () Bool)

(assert (=> b!6743103 (= e!4072932 e!4072933)))

(declare-fun c!1251021 () Bool)

(assert (=> b!6743103 (= c!1251021 ((_ is Concat!25414) (ite c!1250708 (regTwo!33651 r!7292) (regOne!33650 r!7292))))))

(declare-fun b!6743104 () Bool)

(declare-fun c!1251023 () Bool)

(assert (=> b!6743104 (= c!1251023 ((_ is Star!16569) (ite c!1250708 (regTwo!33651 r!7292) (regOne!33650 r!7292))))))

(declare-fun e!4072931 () (InoxSet Context!11906))

(assert (=> b!6743104 (= e!4072933 e!4072931)))

(declare-fun b!6743105 () Bool)

(assert (=> b!6743105 (= e!4072931 call!609716)))

(declare-fun b!6743106 () Bool)

(assert (=> b!6743106 (= e!4072934 e!4072930)))

(declare-fun c!1251024 () Bool)

(assert (=> b!6743106 (= c!1251024 ((_ is Union!16569) (ite c!1250708 (regTwo!33651 r!7292) (regOne!33650 r!7292))))))

(declare-fun b!6743107 () Bool)

(declare-fun call!609717 () (InoxSet Context!11906))

(assert (=> b!6743107 (= e!4072930 ((_ map or) call!609717 call!609718))))

(declare-fun bm!609709 () Bool)

(assert (=> bm!609709 (= call!609718 (derivationStepZipperDown!1797 (ite c!1251024 (regTwo!33651 (ite c!1250708 (regTwo!33651 r!7292) (regOne!33650 r!7292))) (regOne!33650 (ite c!1250708 (regTwo!33651 r!7292) (regOne!33650 r!7292)))) (ite c!1251024 (ite c!1250708 (Context!11907 Nil!65882) (Context!11907 call!609518)) (Context!11907 call!609715)) (h!72331 s!2326)))))

(declare-fun b!6743108 () Bool)

(assert (=> b!6743108 (= e!4072931 ((as const (Array Context!11906 Bool)) false))))

(declare-fun bm!609710 () Bool)

(assert (=> bm!609710 (= call!609717 (derivationStepZipperDown!1797 (ite c!1251024 (regOne!33651 (ite c!1250708 (regTwo!33651 r!7292) (regOne!33650 r!7292))) (ite c!1251025 (regTwo!33650 (ite c!1250708 (regTwo!33651 r!7292) (regOne!33650 r!7292))) (ite c!1251021 (regOne!33650 (ite c!1250708 (regTwo!33651 r!7292) (regOne!33650 r!7292))) (reg!16898 (ite c!1250708 (regTwo!33651 r!7292) (regOne!33650 r!7292)))))) (ite (or c!1251024 c!1251025) (ite c!1250708 (Context!11907 Nil!65882) (Context!11907 call!609518)) (Context!11907 call!609713)) (h!72331 s!2326)))))

(declare-fun bm!609711 () Bool)

(assert (=> bm!609711 (= call!609715 ($colon$colon!2386 (exprs!6453 (ite c!1250708 (Context!11907 Nil!65882) (Context!11907 call!609518))) (ite (or c!1251025 c!1251021) (regTwo!33650 (ite c!1250708 (regTwo!33651 r!7292) (regOne!33650 r!7292))) (ite c!1250708 (regTwo!33651 r!7292) (regOne!33650 r!7292)))))))

(declare-fun bm!609712 () Bool)

(assert (=> bm!609712 (= call!609716 call!609714)))

(declare-fun bm!609713 () Bool)

(assert (=> bm!609713 (= call!609714 call!609717)))

(declare-fun d!2118732 () Bool)

(declare-fun c!1251022 () Bool)

(assert (=> d!2118732 (= c!1251022 (and ((_ is ElementMatch!16569) (ite c!1250708 (regTwo!33651 r!7292) (regOne!33650 r!7292))) (= (c!1250577 (ite c!1250708 (regTwo!33651 r!7292) (regOne!33650 r!7292))) (h!72331 s!2326))))))

(assert (=> d!2118732 (= (derivationStepZipperDown!1797 (ite c!1250708 (regTwo!33651 r!7292) (regOne!33650 r!7292)) (ite c!1250708 (Context!11907 Nil!65882) (Context!11907 call!609518)) (h!72331 s!2326)) e!4072934)))

(assert (= (and d!2118732 c!1251022) b!6743100))

(assert (= (and d!2118732 (not c!1251022)) b!6743106))

(assert (= (and b!6743106 c!1251024) b!6743107))

(assert (= (and b!6743106 (not c!1251024)) b!6743102))

(assert (= (and b!6743102 res!2758136) b!6743098))

(assert (= (and b!6743102 c!1251025) b!6743099))

(assert (= (and b!6743102 (not c!1251025)) b!6743103))

(assert (= (and b!6743103 c!1251021) b!6743101))

(assert (= (and b!6743103 (not c!1251021)) b!6743104))

(assert (= (and b!6743104 c!1251023) b!6743105))

(assert (= (and b!6743104 (not c!1251023)) b!6743108))

(assert (= (or b!6743101 b!6743105) bm!609708))

(assert (= (or b!6743101 b!6743105) bm!609712))

(assert (= (or b!6743099 bm!609708) bm!609711))

(assert (= (or b!6743099 bm!609712) bm!609713))

(assert (= (or b!6743107 b!6743099) bm!609709))

(assert (= (or b!6743107 bm!609713) bm!609710))

(declare-fun m!7499376 () Bool)

(assert (=> b!6743098 m!7499376))

(declare-fun m!7499378 () Bool)

(assert (=> bm!609709 m!7499378))

(declare-fun m!7499380 () Bool)

(assert (=> bm!609710 m!7499380))

(declare-fun m!7499382 () Bool)

(assert (=> bm!609711 m!7499382))

(declare-fun m!7499384 () Bool)

(assert (=> b!6743100 m!7499384))

(assert (=> bm!609512 d!2118732))

(declare-fun d!2118734 () Bool)

(assert (=> d!2118734 (= (isEmpty!38227 (findConcatSeparation!2870 (reg!16898 r!7292) r!7292 Nil!65883 s!2326 s!2326)) (not ((_ is Some!16455) (findConcatSeparation!2870 (reg!16898 r!7292) r!7292 Nil!65883 s!2326 s!2326))))))

(assert (=> d!2118170 d!2118734))

(declare-fun b!6743109 () Bool)

(declare-fun e!4072941 () Bool)

(assert (=> b!6743109 (= e!4072941 (nullable!6556 (regOne!33650 (h!72330 (exprs!6453 (h!72332 zl!343))))))))

(declare-fun b!6743110 () Bool)

(declare-fun e!4072938 () (InoxSet Context!11906))

(declare-fun call!609724 () (InoxSet Context!11906))

(declare-fun call!609720 () (InoxSet Context!11906))

(assert (=> b!6743110 (= e!4072938 ((_ map or) call!609724 call!609720))))

(declare-fun b!6743111 () Bool)

(declare-fun e!4072940 () (InoxSet Context!11906))

(assert (=> b!6743111 (= e!4072940 (store ((as const (Array Context!11906 Bool)) false) (Context!11907 (t!379705 (exprs!6453 (h!72332 zl!343)))) true))))

(declare-fun b!6743112 () Bool)

(declare-fun e!4072939 () (InoxSet Context!11906))

(declare-fun call!609722 () (InoxSet Context!11906))

(assert (=> b!6743112 (= e!4072939 call!609722)))

(declare-fun bm!609714 () Bool)

(declare-fun call!609719 () List!66006)

(declare-fun call!609721 () List!66006)

(assert (=> bm!609714 (= call!609719 call!609721)))

(declare-fun b!6743113 () Bool)

(declare-fun c!1251030 () Bool)

(assert (=> b!6743113 (= c!1251030 e!4072941)))

(declare-fun res!2758137 () Bool)

(assert (=> b!6743113 (=> (not res!2758137) (not e!4072941))))

(assert (=> b!6743113 (= res!2758137 ((_ is Concat!25414) (h!72330 (exprs!6453 (h!72332 zl!343)))))))

(declare-fun e!4072936 () (InoxSet Context!11906))

(assert (=> b!6743113 (= e!4072936 e!4072938)))

(declare-fun b!6743114 () Bool)

(assert (=> b!6743114 (= e!4072938 e!4072939)))

(declare-fun c!1251026 () Bool)

(assert (=> b!6743114 (= c!1251026 ((_ is Concat!25414) (h!72330 (exprs!6453 (h!72332 zl!343)))))))

(declare-fun b!6743115 () Bool)

(declare-fun c!1251028 () Bool)

(assert (=> b!6743115 (= c!1251028 ((_ is Star!16569) (h!72330 (exprs!6453 (h!72332 zl!343)))))))

(declare-fun e!4072937 () (InoxSet Context!11906))

(assert (=> b!6743115 (= e!4072939 e!4072937)))

(declare-fun b!6743116 () Bool)

(assert (=> b!6743116 (= e!4072937 call!609722)))

(declare-fun b!6743117 () Bool)

(assert (=> b!6743117 (= e!4072940 e!4072936)))

(declare-fun c!1251029 () Bool)

(assert (=> b!6743117 (= c!1251029 ((_ is Union!16569) (h!72330 (exprs!6453 (h!72332 zl!343)))))))

(declare-fun b!6743118 () Bool)

(declare-fun call!609723 () (InoxSet Context!11906))

(assert (=> b!6743118 (= e!4072936 ((_ map or) call!609723 call!609724))))

(declare-fun bm!609715 () Bool)

(assert (=> bm!609715 (= call!609724 (derivationStepZipperDown!1797 (ite c!1251029 (regTwo!33651 (h!72330 (exprs!6453 (h!72332 zl!343)))) (regOne!33650 (h!72330 (exprs!6453 (h!72332 zl!343))))) (ite c!1251029 (Context!11907 (t!379705 (exprs!6453 (h!72332 zl!343)))) (Context!11907 call!609721)) (h!72331 s!2326)))))

(declare-fun b!6743119 () Bool)

(assert (=> b!6743119 (= e!4072937 ((as const (Array Context!11906 Bool)) false))))

(declare-fun bm!609716 () Bool)

(assert (=> bm!609716 (= call!609723 (derivationStepZipperDown!1797 (ite c!1251029 (regOne!33651 (h!72330 (exprs!6453 (h!72332 zl!343)))) (ite c!1251030 (regTwo!33650 (h!72330 (exprs!6453 (h!72332 zl!343)))) (ite c!1251026 (regOne!33650 (h!72330 (exprs!6453 (h!72332 zl!343)))) (reg!16898 (h!72330 (exprs!6453 (h!72332 zl!343))))))) (ite (or c!1251029 c!1251030) (Context!11907 (t!379705 (exprs!6453 (h!72332 zl!343)))) (Context!11907 call!609719)) (h!72331 s!2326)))))

(declare-fun bm!609717 () Bool)

(assert (=> bm!609717 (= call!609721 ($colon$colon!2386 (exprs!6453 (Context!11907 (t!379705 (exprs!6453 (h!72332 zl!343))))) (ite (or c!1251030 c!1251026) (regTwo!33650 (h!72330 (exprs!6453 (h!72332 zl!343)))) (h!72330 (exprs!6453 (h!72332 zl!343))))))))

(declare-fun bm!609718 () Bool)

(assert (=> bm!609718 (= call!609722 call!609720)))

(declare-fun bm!609719 () Bool)

(assert (=> bm!609719 (= call!609720 call!609723)))

(declare-fun d!2118736 () Bool)

(declare-fun c!1251027 () Bool)

(assert (=> d!2118736 (= c!1251027 (and ((_ is ElementMatch!16569) (h!72330 (exprs!6453 (h!72332 zl!343)))) (= (c!1250577 (h!72330 (exprs!6453 (h!72332 zl!343)))) (h!72331 s!2326))))))

(assert (=> d!2118736 (= (derivationStepZipperDown!1797 (h!72330 (exprs!6453 (h!72332 zl!343))) (Context!11907 (t!379705 (exprs!6453 (h!72332 zl!343)))) (h!72331 s!2326)) e!4072940)))

(assert (= (and d!2118736 c!1251027) b!6743111))

(assert (= (and d!2118736 (not c!1251027)) b!6743117))

(assert (= (and b!6743117 c!1251029) b!6743118))

(assert (= (and b!6743117 (not c!1251029)) b!6743113))

(assert (= (and b!6743113 res!2758137) b!6743109))

(assert (= (and b!6743113 c!1251030) b!6743110))

(assert (= (and b!6743113 (not c!1251030)) b!6743114))

(assert (= (and b!6743114 c!1251026) b!6743112))

(assert (= (and b!6743114 (not c!1251026)) b!6743115))

(assert (= (and b!6743115 c!1251028) b!6743116))

(assert (= (and b!6743115 (not c!1251028)) b!6743119))

(assert (= (or b!6743112 b!6743116) bm!609714))

(assert (= (or b!6743112 b!6743116) bm!609718))

(assert (= (or b!6743110 bm!609714) bm!609717))

(assert (= (or b!6743110 bm!609718) bm!609719))

(assert (= (or b!6743118 b!6743110) bm!609715))

(assert (= (or b!6743118 bm!609719) bm!609716))

(declare-fun m!7499386 () Bool)

(assert (=> b!6743109 m!7499386))

(declare-fun m!7499388 () Bool)

(assert (=> bm!609715 m!7499388))

(declare-fun m!7499394 () Bool)

(assert (=> bm!609716 m!7499394))

(declare-fun m!7499396 () Bool)

(assert (=> bm!609717 m!7499396))

(declare-fun m!7499398 () Bool)

(assert (=> b!6743111 m!7499398))

(assert (=> bm!609504 d!2118736))

(declare-fun d!2118740 () Bool)

(declare-fun c!1251031 () Bool)

(assert (=> d!2118740 (= c!1251031 (isEmpty!38225 (tail!12650 (t!379706 s!2326))))))

(declare-fun e!4072942 () Bool)

(assert (=> d!2118740 (= (matchZipper!2555 (derivationStepZipper!2513 (derivationStepZipper!2513 lt!2439191 (h!72331 s!2326)) (head!13565 (t!379706 s!2326))) (tail!12650 (t!379706 s!2326))) e!4072942)))

(declare-fun b!6743120 () Bool)

(assert (=> b!6743120 (= e!4072942 (nullableZipper!2283 (derivationStepZipper!2513 (derivationStepZipper!2513 lt!2439191 (h!72331 s!2326)) (head!13565 (t!379706 s!2326)))))))

(declare-fun b!6743121 () Bool)

(assert (=> b!6743121 (= e!4072942 (matchZipper!2555 (derivationStepZipper!2513 (derivationStepZipper!2513 (derivationStepZipper!2513 lt!2439191 (h!72331 s!2326)) (head!13565 (t!379706 s!2326))) (head!13565 (tail!12650 (t!379706 s!2326)))) (tail!12650 (tail!12650 (t!379706 s!2326)))))))

(assert (= (and d!2118740 c!1251031) b!6743120))

(assert (= (and d!2118740 (not c!1251031)) b!6743121))

(assert (=> d!2118740 m!7498424))

(declare-fun m!7499400 () Bool)

(assert (=> d!2118740 m!7499400))

(assert (=> b!6743120 m!7498422))

(declare-fun m!7499402 () Bool)

(assert (=> b!6743120 m!7499402))

(assert (=> b!6743121 m!7498424))

(declare-fun m!7499404 () Bool)

(assert (=> b!6743121 m!7499404))

(assert (=> b!6743121 m!7498422))

(assert (=> b!6743121 m!7499404))

(declare-fun m!7499406 () Bool)

(assert (=> b!6743121 m!7499406))

(assert (=> b!6743121 m!7498424))

(declare-fun m!7499408 () Bool)

(assert (=> b!6743121 m!7499408))

(assert (=> b!6743121 m!7499406))

(assert (=> b!6743121 m!7499408))

(declare-fun m!7499410 () Bool)

(assert (=> b!6743121 m!7499410))

(assert (=> b!6742162 d!2118740))

(declare-fun bs!1792977 () Bool)

(declare-fun d!2118744 () Bool)

(assert (= bs!1792977 (and d!2118744 d!2118274)))

(declare-fun lambda!378879 () Int)

(assert (=> bs!1792977 (= (= (head!13565 (t!379706 s!2326)) (h!72331 s!2326)) (= lambda!378879 lambda!378801))))

(declare-fun bs!1792978 () Bool)

(assert (= bs!1792978 (and d!2118744 d!2118606)))

(assert (=> bs!1792978 (= (= (head!13565 (t!379706 s!2326)) (head!13565 s!2326)) (= lambda!378879 lambda!378860))))

(declare-fun bs!1792981 () Bool)

(assert (= bs!1792981 (and d!2118744 b!6741544)))

(assert (=> bs!1792981 (= (= (head!13565 (t!379706 s!2326)) (h!72331 s!2326)) (= lambda!378879 lambda!378745))))

(declare-fun bs!1792982 () Bool)

(assert (= bs!1792982 (and d!2118744 d!2118310)))

(assert (=> bs!1792982 (= (= (head!13565 (t!379706 s!2326)) (h!72331 s!2326)) (= lambda!378879 lambda!378817))))

(declare-fun bs!1792983 () Bool)

(assert (= bs!1792983 (and d!2118744 d!2118318)))

(assert (=> bs!1792983 (= (= (head!13565 (t!379706 s!2326)) (h!72331 s!2326)) (= lambda!378879 lambda!378819))))

(assert (=> d!2118744 true))

(assert (=> d!2118744 (= (derivationStepZipper!2513 (derivationStepZipper!2513 lt!2439191 (h!72331 s!2326)) (head!13565 (t!379706 s!2326))) (flatMap!2050 (derivationStepZipper!2513 lt!2439191 (h!72331 s!2326)) lambda!378879))))

(declare-fun bs!1792984 () Bool)

(assert (= bs!1792984 d!2118744))

(assert (=> bs!1792984 m!7498012))

(declare-fun m!7499420 () Bool)

(assert (=> bs!1792984 m!7499420))

(assert (=> b!6742162 d!2118744))

(declare-fun d!2118752 () Bool)

(assert (=> d!2118752 (= (head!13565 (t!379706 s!2326)) (h!72331 (t!379706 s!2326)))))

(assert (=> b!6742162 d!2118752))

(declare-fun d!2118754 () Bool)

(assert (=> d!2118754 (= (tail!12650 (t!379706 s!2326)) (t!379706 (t!379706 s!2326)))))

(assert (=> b!6742162 d!2118754))

(declare-fun d!2118756 () Bool)

(assert (=> d!2118756 (= (flatMap!2050 lt!2439191 lambda!378817) (choose!50257 lt!2439191 lambda!378817))))

(declare-fun bs!1792985 () Bool)

(assert (= bs!1792985 d!2118756))

(declare-fun m!7499422 () Bool)

(assert (=> bs!1792985 m!7499422))

(assert (=> d!2118310 d!2118756))

(declare-fun d!2118758 () Bool)

(assert (=> d!2118758 (= (isEmpty!38225 (t!379706 s!2326)) ((_ is Nil!65883) (t!379706 s!2326)))))

(assert (=> d!2118308 d!2118758))

(declare-fun d!2118760 () Bool)

(assert (=> d!2118760 (= (nullable!6556 (h!72330 (exprs!6453 lt!2439184))) (nullableFct!2469 (h!72330 (exprs!6453 lt!2439184))))))

(declare-fun bs!1792986 () Bool)

(assert (= bs!1792986 d!2118760))

(declare-fun m!7499424 () Bool)

(assert (=> bs!1792986 m!7499424))

(assert (=> b!6742217 d!2118760))

(declare-fun b!6743124 () Bool)

(declare-fun e!4072946 () Bool)

(declare-fun call!609725 () Bool)

(assert (=> b!6743124 (= e!4072946 call!609725)))

(declare-fun b!6743125 () Bool)

(declare-fun e!4072948 () Bool)

(declare-fun e!4072951 () Bool)

(assert (=> b!6743125 (= e!4072948 e!4072951)))

(declare-fun c!1251033 () Bool)

(assert (=> b!6743125 (= c!1251033 ((_ is Union!16569) (ite c!1250732 (reg!16898 r!7292) (ite c!1250733 (regTwo!33651 r!7292) (regTwo!33650 r!7292)))))))

(declare-fun b!6743126 () Bool)

(declare-fun e!4072950 () Bool)

(assert (=> b!6743126 (= e!4072950 e!4072946)))

(declare-fun res!2758140 () Bool)

(assert (=> b!6743126 (=> (not res!2758140) (not e!4072946))))

(declare-fun call!609727 () Bool)

(assert (=> b!6743126 (= res!2758140 call!609727)))

(declare-fun b!6743127 () Bool)

(declare-fun e!4072947 () Bool)

(declare-fun call!609726 () Bool)

(assert (=> b!6743127 (= e!4072947 call!609726)))

(declare-fun bm!609720 () Bool)

(assert (=> bm!609720 (= call!609727 (validRegex!8305 (ite c!1251033 (regOne!33651 (ite c!1250732 (reg!16898 r!7292) (ite c!1250733 (regTwo!33651 r!7292) (regTwo!33650 r!7292)))) (regOne!33650 (ite c!1250732 (reg!16898 r!7292) (ite c!1250733 (regTwo!33651 r!7292) (regTwo!33650 r!7292)))))))))

(declare-fun b!6743128 () Bool)

(declare-fun e!4072949 () Bool)

(assert (=> b!6743128 (= e!4072949 call!609725)))

(declare-fun b!6743129 () Bool)

(declare-fun res!2758142 () Bool)

(assert (=> b!6743129 (=> (not res!2758142) (not e!4072949))))

(assert (=> b!6743129 (= res!2758142 call!609727)))

(assert (=> b!6743129 (= e!4072951 e!4072949)))

(declare-fun bm!609721 () Bool)

(declare-fun c!1251032 () Bool)

(assert (=> bm!609721 (= call!609726 (validRegex!8305 (ite c!1251032 (reg!16898 (ite c!1250732 (reg!16898 r!7292) (ite c!1250733 (regTwo!33651 r!7292) (regTwo!33650 r!7292)))) (ite c!1251033 (regTwo!33651 (ite c!1250732 (reg!16898 r!7292) (ite c!1250733 (regTwo!33651 r!7292) (regTwo!33650 r!7292)))) (regTwo!33650 (ite c!1250732 (reg!16898 r!7292) (ite c!1250733 (regTwo!33651 r!7292) (regTwo!33650 r!7292))))))))))

(declare-fun b!6743131 () Bool)

(assert (=> b!6743131 (= e!4072948 e!4072947)))

(declare-fun res!2758144 () Bool)

(assert (=> b!6743131 (= res!2758144 (not (nullable!6556 (reg!16898 (ite c!1250732 (reg!16898 r!7292) (ite c!1250733 (regTwo!33651 r!7292) (regTwo!33650 r!7292)))))))))

(assert (=> b!6743131 (=> (not res!2758144) (not e!4072947))))

(declare-fun b!6743132 () Bool)

(declare-fun res!2758143 () Bool)

(assert (=> b!6743132 (=> res!2758143 e!4072950)))

(assert (=> b!6743132 (= res!2758143 (not ((_ is Concat!25414) (ite c!1250732 (reg!16898 r!7292) (ite c!1250733 (regTwo!33651 r!7292) (regTwo!33650 r!7292))))))))

(assert (=> b!6743132 (= e!4072951 e!4072950)))

(declare-fun bm!609722 () Bool)

(assert (=> bm!609722 (= call!609725 call!609726)))

(declare-fun d!2118762 () Bool)

(declare-fun res!2758141 () Bool)

(declare-fun e!4072945 () Bool)

(assert (=> d!2118762 (=> res!2758141 e!4072945)))

(assert (=> d!2118762 (= res!2758141 ((_ is ElementMatch!16569) (ite c!1250732 (reg!16898 r!7292) (ite c!1250733 (regTwo!33651 r!7292) (regTwo!33650 r!7292)))))))

(assert (=> d!2118762 (= (validRegex!8305 (ite c!1250732 (reg!16898 r!7292) (ite c!1250733 (regTwo!33651 r!7292) (regTwo!33650 r!7292)))) e!4072945)))

(declare-fun b!6743130 () Bool)

(assert (=> b!6743130 (= e!4072945 e!4072948)))

(assert (=> b!6743130 (= c!1251032 ((_ is Star!16569) (ite c!1250732 (reg!16898 r!7292) (ite c!1250733 (regTwo!33651 r!7292) (regTwo!33650 r!7292)))))))

(assert (= (and d!2118762 (not res!2758141)) b!6743130))

(assert (= (and b!6743130 c!1251032) b!6743131))

(assert (= (and b!6743130 (not c!1251032)) b!6743125))

(assert (= (and b!6743131 res!2758144) b!6743127))

(assert (= (and b!6743125 c!1251033) b!6743129))

(assert (= (and b!6743125 (not c!1251033)) b!6743132))

(assert (= (and b!6743129 res!2758142) b!6743128))

(assert (= (and b!6743132 (not res!2758143)) b!6743126))

(assert (= (and b!6743126 res!2758140) b!6743124))

(assert (= (or b!6743128 b!6743124) bm!609722))

(assert (= (or b!6743129 b!6743126) bm!609720))

(assert (= (or b!6743127 bm!609722) bm!609721))

(declare-fun m!7499426 () Bool)

(assert (=> bm!609720 m!7499426))

(declare-fun m!7499428 () Bool)

(assert (=> bm!609721 m!7499428))

(declare-fun m!7499430 () Bool)

(assert (=> b!6743131 m!7499430))

(assert (=> bm!609526 d!2118762))

(declare-fun d!2118764 () Bool)

(assert (=> d!2118764 true))

(assert (=> d!2118764 true))

(declare-fun res!2758149 () Bool)

(assert (=> d!2118764 (= (choose!50252 lambda!378744) res!2758149)))

(assert (=> d!2118168 d!2118764))

(declare-fun b!6743137 () Bool)

(declare-fun e!4072954 () Bool)

(assert (=> b!6743137 (= e!4072954 (nullable!6556 (h!72330 (exprs!6453 (Context!11907 (t!379705 (exprs!6453 lt!2439198)))))))))

(declare-fun bm!609723 () Bool)

(declare-fun call!609728 () (InoxSet Context!11906))

(assert (=> bm!609723 (= call!609728 (derivationStepZipperDown!1797 (h!72330 (exprs!6453 (Context!11907 (t!379705 (exprs!6453 lt!2439198))))) (Context!11907 (t!379705 (exprs!6453 (Context!11907 (t!379705 (exprs!6453 lt!2439198)))))) (h!72331 s!2326)))))

(declare-fun e!4072956 () (InoxSet Context!11906))

(declare-fun b!6743138 () Bool)

(assert (=> b!6743138 (= e!4072956 ((_ map or) call!609728 (derivationStepZipperUp!1723 (Context!11907 (t!379705 (exprs!6453 (Context!11907 (t!379705 (exprs!6453 lt!2439198)))))) (h!72331 s!2326))))))

(declare-fun b!6743139 () Bool)

(declare-fun e!4072955 () (InoxSet Context!11906))

(assert (=> b!6743139 (= e!4072955 ((as const (Array Context!11906 Bool)) false))))

(declare-fun b!6743140 () Bool)

(assert (=> b!6743140 (= e!4072955 call!609728)))

(declare-fun d!2118766 () Bool)

(declare-fun c!1251035 () Bool)

(assert (=> d!2118766 (= c!1251035 e!4072954)))

(declare-fun res!2758150 () Bool)

(assert (=> d!2118766 (=> (not res!2758150) (not e!4072954))))

(assert (=> d!2118766 (= res!2758150 ((_ is Cons!65882) (exprs!6453 (Context!11907 (t!379705 (exprs!6453 lt!2439198))))))))

(assert (=> d!2118766 (= (derivationStepZipperUp!1723 (Context!11907 (t!379705 (exprs!6453 lt!2439198))) (h!72331 s!2326)) e!4072956)))

(declare-fun b!6743141 () Bool)

(assert (=> b!6743141 (= e!4072956 e!4072955)))

(declare-fun c!1251034 () Bool)

(assert (=> b!6743141 (= c!1251034 ((_ is Cons!65882) (exprs!6453 (Context!11907 (t!379705 (exprs!6453 lt!2439198))))))))

(assert (= (and d!2118766 res!2758150) b!6743137))

(assert (= (and d!2118766 c!1251035) b!6743138))

(assert (= (and d!2118766 (not c!1251035)) b!6743141))

(assert (= (and b!6743141 c!1251034) b!6743140))

(assert (= (and b!6743141 (not c!1251034)) b!6743139))

(assert (= (or b!6743138 b!6743140) bm!609723))

(declare-fun m!7499432 () Bool)

(assert (=> b!6743137 m!7499432))

(declare-fun m!7499434 () Bool)

(assert (=> bm!609723 m!7499434))

(declare-fun m!7499436 () Bool)

(assert (=> b!6743138 m!7499436))

(assert (=> b!6741872 d!2118766))

(declare-fun d!2118768 () Bool)

(declare-fun e!4072957 () Bool)

(assert (=> d!2118768 e!4072957))

(declare-fun res!2758151 () Bool)

(assert (=> d!2118768 (=> (not res!2758151) (not e!4072957))))

(declare-fun lt!2439343 () List!66007)

(assert (=> d!2118768 (= res!2758151 (= (content!12809 lt!2439343) ((_ map or) (content!12809 (++!14724 Nil!65883 (Cons!65883 (h!72331 s!2326) Nil!65883))) (content!12809 (t!379706 s!2326)))))))

(declare-fun e!4072958 () List!66007)

(assert (=> d!2118768 (= lt!2439343 e!4072958)))

(declare-fun c!1251036 () Bool)

(assert (=> d!2118768 (= c!1251036 ((_ is Nil!65883) (++!14724 Nil!65883 (Cons!65883 (h!72331 s!2326) Nil!65883))))))

(assert (=> d!2118768 (= (++!14724 (++!14724 Nil!65883 (Cons!65883 (h!72331 s!2326) Nil!65883)) (t!379706 s!2326)) lt!2439343)))

(declare-fun b!6743143 () Bool)

(assert (=> b!6743143 (= e!4072958 (Cons!65883 (h!72331 (++!14724 Nil!65883 (Cons!65883 (h!72331 s!2326) Nil!65883))) (++!14724 (t!379706 (++!14724 Nil!65883 (Cons!65883 (h!72331 s!2326) Nil!65883))) (t!379706 s!2326))))))

(declare-fun b!6743142 () Bool)

(assert (=> b!6743142 (= e!4072958 (t!379706 s!2326))))

(declare-fun b!6743144 () Bool)

(declare-fun res!2758152 () Bool)

(assert (=> b!6743144 (=> (not res!2758152) (not e!4072957))))

(assert (=> b!6743144 (= res!2758152 (= (size!40619 lt!2439343) (+ (size!40619 (++!14724 Nil!65883 (Cons!65883 (h!72331 s!2326) Nil!65883))) (size!40619 (t!379706 s!2326)))))))

(declare-fun b!6743145 () Bool)

(assert (=> b!6743145 (= e!4072957 (or (not (= (t!379706 s!2326) Nil!65883)) (= lt!2439343 (++!14724 Nil!65883 (Cons!65883 (h!72331 s!2326) Nil!65883)))))))

(assert (= (and d!2118768 c!1251036) b!6743142))

(assert (= (and d!2118768 (not c!1251036)) b!6743143))

(assert (= (and d!2118768 res!2758151) b!6743144))

(assert (= (and b!6743144 res!2758152) b!6743145))

(declare-fun m!7499438 () Bool)

(assert (=> d!2118768 m!7499438))

(assert (=> d!2118768 m!7498104))

(declare-fun m!7499440 () Bool)

(assert (=> d!2118768 m!7499440))

(declare-fun m!7499442 () Bool)

(assert (=> d!2118768 m!7499442))

(declare-fun m!7499444 () Bool)

(assert (=> b!6743143 m!7499444))

(declare-fun m!7499446 () Bool)

(assert (=> b!6743144 m!7499446))

(assert (=> b!6743144 m!7498104))

(declare-fun m!7499448 () Bool)

(assert (=> b!6743144 m!7499448))

(declare-fun m!7499450 () Bool)

(assert (=> b!6743144 m!7499450))

(assert (=> b!6741756 d!2118768))

(declare-fun d!2118770 () Bool)

(declare-fun e!4072961 () Bool)

(assert (=> d!2118770 e!4072961))

(declare-fun res!2758157 () Bool)

(assert (=> d!2118770 (=> (not res!2758157) (not e!4072961))))

(declare-fun lt!2439344 () List!66007)

(assert (=> d!2118770 (= res!2758157 (= (content!12809 lt!2439344) ((_ map or) (content!12809 Nil!65883) (content!12809 (Cons!65883 (h!72331 s!2326) Nil!65883)))))))

(declare-fun e!4072962 () List!66007)

(assert (=> d!2118770 (= lt!2439344 e!4072962)))

(declare-fun c!1251037 () Bool)

(assert (=> d!2118770 (= c!1251037 ((_ is Nil!65883) Nil!65883))))

(assert (=> d!2118770 (= (++!14724 Nil!65883 (Cons!65883 (h!72331 s!2326) Nil!65883)) lt!2439344)))

(declare-fun b!6743151 () Bool)

(assert (=> b!6743151 (= e!4072962 (Cons!65883 (h!72331 Nil!65883) (++!14724 (t!379706 Nil!65883) (Cons!65883 (h!72331 s!2326) Nil!65883))))))

(declare-fun b!6743150 () Bool)

(assert (=> b!6743150 (= e!4072962 (Cons!65883 (h!72331 s!2326) Nil!65883))))

(declare-fun b!6743152 () Bool)

(declare-fun res!2758158 () Bool)

(assert (=> b!6743152 (=> (not res!2758158) (not e!4072961))))

(assert (=> b!6743152 (= res!2758158 (= (size!40619 lt!2439344) (+ (size!40619 Nil!65883) (size!40619 (Cons!65883 (h!72331 s!2326) Nil!65883)))))))

(declare-fun b!6743153 () Bool)

(assert (=> b!6743153 (= e!4072961 (or (not (= (Cons!65883 (h!72331 s!2326) Nil!65883) Nil!65883)) (= lt!2439344 Nil!65883)))))

(assert (= (and d!2118770 c!1251037) b!6743150))

(assert (= (and d!2118770 (not c!1251037)) b!6743151))

(assert (= (and d!2118770 res!2758157) b!6743152))

(assert (= (and b!6743152 res!2758158) b!6743153))

(declare-fun m!7499452 () Bool)

(assert (=> d!2118770 m!7499452))

(declare-fun m!7499454 () Bool)

(assert (=> d!2118770 m!7499454))

(declare-fun m!7499456 () Bool)

(assert (=> d!2118770 m!7499456))

(declare-fun m!7499458 () Bool)

(assert (=> b!6743151 m!7499458))

(declare-fun m!7499460 () Bool)

(assert (=> b!6743152 m!7499460))

(declare-fun m!7499462 () Bool)

(assert (=> b!6743152 m!7499462))

(declare-fun m!7499464 () Bool)

(assert (=> b!6743152 m!7499464))

(assert (=> b!6741756 d!2118770))

(declare-fun d!2118772 () Bool)

(assert (=> d!2118772 (= (++!14724 (++!14724 Nil!65883 (Cons!65883 (h!72331 s!2326) Nil!65883)) (t!379706 s!2326)) s!2326)))

(declare-fun lt!2439347 () Unit!159829)

(declare-fun choose!50269 (List!66007 C!33408 List!66007 List!66007) Unit!159829)

(assert (=> d!2118772 (= lt!2439347 (choose!50269 Nil!65883 (h!72331 s!2326) (t!379706 s!2326) s!2326))))

(assert (=> d!2118772 (= (++!14724 Nil!65883 (Cons!65883 (h!72331 s!2326) (t!379706 s!2326))) s!2326)))

(assert (=> d!2118772 (= (lemmaMoveElementToOtherListKeepsConcatEq!2697 Nil!65883 (h!72331 s!2326) (t!379706 s!2326) s!2326) lt!2439347)))

(declare-fun bs!1792999 () Bool)

(assert (= bs!1792999 d!2118772))

(assert (=> bs!1792999 m!7498104))

(assert (=> bs!1792999 m!7498104))

(assert (=> bs!1792999 m!7498106))

(declare-fun m!7499466 () Bool)

(assert (=> bs!1792999 m!7499466))

(declare-fun m!7499468 () Bool)

(assert (=> bs!1792999 m!7499468))

(assert (=> b!6741756 d!2118772))

(declare-fun b!6743154 () Bool)

(declare-fun e!4072965 () Option!16456)

(assert (=> b!6743154 (= e!4072965 (Some!16455 (tuple2!67089 (++!14724 Nil!65883 (Cons!65883 (h!72331 s!2326) Nil!65883)) (t!379706 s!2326))))))

(declare-fun b!6743155 () Bool)

(declare-fun e!4072966 () Bool)

(declare-fun lt!2439348 () Option!16456)

(assert (=> b!6743155 (= e!4072966 (= (++!14724 (_1!36847 (get!22924 lt!2439348)) (_2!36847 (get!22924 lt!2439348))) s!2326))))

(declare-fun b!6743156 () Bool)

(declare-fun res!2758159 () Bool)

(assert (=> b!6743156 (=> (not res!2758159) (not e!4072966))))

(assert (=> b!6743156 (= res!2758159 (matchR!8752 r!7292 (_2!36847 (get!22924 lt!2439348))))))

(declare-fun b!6743157 () Bool)

(declare-fun e!4072967 () Bool)

(assert (=> b!6743157 (= e!4072967 (matchR!8752 r!7292 (t!379706 s!2326)))))

(declare-fun d!2118774 () Bool)

(declare-fun e!4072963 () Bool)

(assert (=> d!2118774 e!4072963))

(declare-fun res!2758160 () Bool)

(assert (=> d!2118774 (=> res!2758160 e!4072963)))

(assert (=> d!2118774 (= res!2758160 e!4072966)))

(declare-fun res!2758162 () Bool)

(assert (=> d!2118774 (=> (not res!2758162) (not e!4072966))))

(assert (=> d!2118774 (= res!2758162 (isDefined!13159 lt!2439348))))

(assert (=> d!2118774 (= lt!2439348 e!4072965)))

(declare-fun c!1251038 () Bool)

(assert (=> d!2118774 (= c!1251038 e!4072967)))

(declare-fun res!2758161 () Bool)

(assert (=> d!2118774 (=> (not res!2758161) (not e!4072967))))

(assert (=> d!2118774 (= res!2758161 (matchR!8752 (reg!16898 r!7292) (++!14724 Nil!65883 (Cons!65883 (h!72331 s!2326) Nil!65883))))))

(assert (=> d!2118774 (validRegex!8305 (reg!16898 r!7292))))

(assert (=> d!2118774 (= (findConcatSeparation!2870 (reg!16898 r!7292) r!7292 (++!14724 Nil!65883 (Cons!65883 (h!72331 s!2326) Nil!65883)) (t!379706 s!2326) s!2326) lt!2439348)))

(declare-fun b!6743158 () Bool)

(declare-fun lt!2439349 () Unit!159829)

(declare-fun lt!2439350 () Unit!159829)

(assert (=> b!6743158 (= lt!2439349 lt!2439350)))

(assert (=> b!6743158 (= (++!14724 (++!14724 (++!14724 Nil!65883 (Cons!65883 (h!72331 s!2326) Nil!65883)) (Cons!65883 (h!72331 (t!379706 s!2326)) Nil!65883)) (t!379706 (t!379706 s!2326))) s!2326)))

(assert (=> b!6743158 (= lt!2439350 (lemmaMoveElementToOtherListKeepsConcatEq!2697 (++!14724 Nil!65883 (Cons!65883 (h!72331 s!2326) Nil!65883)) (h!72331 (t!379706 s!2326)) (t!379706 (t!379706 s!2326)) s!2326))))

(declare-fun e!4072964 () Option!16456)

(assert (=> b!6743158 (= e!4072964 (findConcatSeparation!2870 (reg!16898 r!7292) r!7292 (++!14724 (++!14724 Nil!65883 (Cons!65883 (h!72331 s!2326) Nil!65883)) (Cons!65883 (h!72331 (t!379706 s!2326)) Nil!65883)) (t!379706 (t!379706 s!2326)) s!2326))))

(declare-fun b!6743159 () Bool)

(declare-fun res!2758163 () Bool)

(assert (=> b!6743159 (=> (not res!2758163) (not e!4072966))))

(assert (=> b!6743159 (= res!2758163 (matchR!8752 (reg!16898 r!7292) (_1!36847 (get!22924 lt!2439348))))))

(declare-fun b!6743160 () Bool)

(assert (=> b!6743160 (= e!4072965 e!4072964)))

(declare-fun c!1251039 () Bool)

(assert (=> b!6743160 (= c!1251039 ((_ is Nil!65883) (t!379706 s!2326)))))

(declare-fun b!6743161 () Bool)

(assert (=> b!6743161 (= e!4072963 (not (isDefined!13159 lt!2439348)))))

(declare-fun b!6743162 () Bool)

(assert (=> b!6743162 (= e!4072964 None!16455)))

(assert (= (and d!2118774 res!2758161) b!6743157))

(assert (= (and d!2118774 c!1251038) b!6743154))

(assert (= (and d!2118774 (not c!1251038)) b!6743160))

(assert (= (and b!6743160 c!1251039) b!6743162))

(assert (= (and b!6743160 (not c!1251039)) b!6743158))

(assert (= (and d!2118774 res!2758162) b!6743159))

(assert (= (and b!6743159 res!2758163) b!6743156))

(assert (= (and b!6743156 res!2758159) b!6743155))

(assert (= (and d!2118774 (not res!2758160)) b!6743161))

(declare-fun m!7499474 () Bool)

(assert (=> b!6743161 m!7499474))

(declare-fun m!7499476 () Bool)

(assert (=> b!6743159 m!7499476))

(declare-fun m!7499478 () Bool)

(assert (=> b!6743159 m!7499478))

(assert (=> b!6743155 m!7499476))

(declare-fun m!7499480 () Bool)

(assert (=> b!6743155 m!7499480))

(assert (=> b!6743156 m!7499476))

(declare-fun m!7499482 () Bool)

(assert (=> b!6743156 m!7499482))

(declare-fun m!7499484 () Bool)

(assert (=> b!6743157 m!7499484))

(assert (=> b!6743158 m!7498104))

(declare-fun m!7499486 () Bool)

(assert (=> b!6743158 m!7499486))

(assert (=> b!6743158 m!7499486))

(declare-fun m!7499488 () Bool)

(assert (=> b!6743158 m!7499488))

(assert (=> b!6743158 m!7498104))

(declare-fun m!7499490 () Bool)

(assert (=> b!6743158 m!7499490))

(assert (=> b!6743158 m!7499486))

(declare-fun m!7499492 () Bool)

(assert (=> b!6743158 m!7499492))

(assert (=> d!2118774 m!7499474))

(assert (=> d!2118774 m!7498104))

(declare-fun m!7499494 () Bool)

(assert (=> d!2118774 m!7499494))

(assert (=> d!2118774 m!7498048))

(assert (=> b!6741756 d!2118774))

(declare-fun d!2118778 () Bool)

(assert (=> d!2118778 true))

(assert (=> d!2118778 true))

(declare-fun res!2758165 () Bool)

(assert (=> d!2118778 (= (choose!50252 lambda!378742) res!2758165)))

(assert (=> d!2118192 d!2118778))

(assert (=> d!2118246 d!2118190))

(assert (=> d!2118246 d!2118282))

(assert (=> bs!1792643 d!2118336))

(declare-fun d!2118780 () Bool)

(assert (=> d!2118780 (= (Exists!3637 lambda!378765) (choose!50252 lambda!378765))))

(declare-fun bs!1793001 () Bool)

(assert (= bs!1793001 d!2118780))

(declare-fun m!7499496 () Bool)

(assert (=> bs!1793001 m!7499496))

(assert (=> d!2118180 d!2118780))

(declare-fun d!2118782 () Bool)

(assert (=> d!2118782 (= (Exists!3637 lambda!378767) (choose!50252 lambda!378767))))

(declare-fun bs!1793002 () Bool)

(assert (= bs!1793002 d!2118782))

(declare-fun m!7499508 () Bool)

(assert (=> bs!1793002 m!7499508))

(assert (=> d!2118180 d!2118782))

(declare-fun bs!1793027 () Bool)

(declare-fun d!2118786 () Bool)

(assert (= bs!1793027 (and d!2118786 d!2118198)))

(declare-fun lambda!378892 () Int)

(assert (=> bs!1793027 (= (= (Star!16569 (reg!16898 r!7292)) r!7292) (= lambda!378892 lambda!378776))))

(declare-fun bs!1793028 () Bool)

(assert (= bs!1793028 (and d!2118786 d!2118172)))

(assert (=> bs!1793028 (not (= lambda!378892 lambda!378757))))

(declare-fun bs!1793029 () Bool)

(assert (= bs!1793029 (and d!2118786 b!6741534)))

(assert (=> bs!1793029 (not (= lambda!378892 lambda!378744))))

(declare-fun bs!1793030 () Bool)

(assert (= bs!1793030 (and d!2118786 b!6742595)))

(assert (=> bs!1793030 (not (= lambda!378892 lambda!378848))))

(declare-fun bs!1793031 () Bool)

(assert (= bs!1793031 (and d!2118786 d!2118400)))

(assert (=> bs!1793031 (= (= (Star!16569 (reg!16898 r!7292)) r!7292) (= lambda!378892 lambda!378839))))

(declare-fun bs!1793032 () Bool)

(assert (= bs!1793032 (and d!2118786 b!6742601)))

(assert (=> bs!1793032 (not (= lambda!378892 lambda!378849))))

(declare-fun bs!1793033 () Bool)

(assert (= bs!1793033 (and d!2118786 b!6741920)))

(assert (=> bs!1793033 (not (= lambda!378892 lambda!378794))))

(assert (=> bs!1793029 (not (= lambda!378892 lambda!378743))))

(declare-fun bs!1793034 () Bool)

(assert (= bs!1793034 (and d!2118786 d!2118384)))

(assert (=> bs!1793034 (= (= (Star!16569 (reg!16898 r!7292)) r!7292) (= lambda!378892 lambda!378833))))

(assert (=> bs!1793028 (= (= (Star!16569 (reg!16898 r!7292)) r!7292) (= lambda!378892 lambda!378756))))

(declare-fun bs!1793035 () Bool)

(assert (= bs!1793035 (and d!2118786 d!2118180)))

(assert (=> bs!1793035 (not (= lambda!378892 lambda!378767))))

(assert (=> bs!1793031 (not (= lambda!378892 lambda!378840))))

(declare-fun bs!1793036 () Bool)

(assert (= bs!1793036 (and d!2118786 b!6741926)))

(assert (=> bs!1793036 (not (= lambda!378892 lambda!378795))))

(assert (=> bs!1793035 (= lambda!378892 lambda!378765)))

(assert (=> bs!1793029 (= (= (Star!16569 (reg!16898 r!7292)) r!7292) (= lambda!378892 lambda!378742))))

(declare-fun bs!1793037 () Bool)

(assert (= bs!1793037 (and d!2118786 b!6742677)))

(assert (=> bs!1793037 (not (= lambda!378892 lambda!378850))))

(declare-fun bs!1793038 () Bool)

(assert (= bs!1793038 (and d!2118786 b!6742683)))

(assert (=> bs!1793038 (not (= lambda!378892 lambda!378851))))

(assert (=> d!2118786 true))

(assert (=> d!2118786 true))

(declare-fun lambda!378893 () Int)

(assert (=> bs!1793027 (not (= lambda!378893 lambda!378776))))

(assert (=> bs!1793028 (not (= lambda!378893 lambda!378757))))

(assert (=> bs!1793029 (not (= lambda!378893 lambda!378744))))

(assert (=> bs!1793030 (= (and (= (reg!16898 r!7292) (reg!16898 (regTwo!33651 r!7292))) (= (Star!16569 (reg!16898 r!7292)) (regTwo!33651 r!7292))) (= lambda!378893 lambda!378848))))

(assert (=> bs!1793032 (not (= lambda!378893 lambda!378849))))

(assert (=> bs!1793033 (= (= (Star!16569 (reg!16898 r!7292)) r!7292) (= lambda!378893 lambda!378794))))

(assert (=> bs!1793029 (= (= (Star!16569 (reg!16898 r!7292)) r!7292) (= lambda!378893 lambda!378743))))

(assert (=> bs!1793034 (not (= lambda!378893 lambda!378833))))

(assert (=> bs!1793028 (not (= lambda!378893 lambda!378756))))

(assert (=> bs!1793035 (= lambda!378893 lambda!378767)))

(assert (=> bs!1793031 (not (= lambda!378893 lambda!378840))))

(assert (=> bs!1793036 (not (= lambda!378893 lambda!378795))))

(assert (=> bs!1793035 (not (= lambda!378893 lambda!378765))))

(assert (=> bs!1793029 (not (= lambda!378893 lambda!378742))))

(assert (=> bs!1793037 (= (and (= (reg!16898 r!7292) (reg!16898 (regOne!33651 r!7292))) (= (Star!16569 (reg!16898 r!7292)) (regOne!33651 r!7292))) (= lambda!378893 lambda!378850))))

(assert (=> bs!1793038 (not (= lambda!378893 lambda!378851))))

(declare-fun bs!1793043 () Bool)

(assert (= bs!1793043 d!2118786))

(assert (=> bs!1793043 (not (= lambda!378893 lambda!378892))))

(assert (=> bs!1793031 (not (= lambda!378893 lambda!378839))))

(assert (=> d!2118786 true))

(assert (=> d!2118786 true))

(assert (=> d!2118786 (= (Exists!3637 lambda!378892) (Exists!3637 lambda!378893))))

(assert (=> d!2118786 true))

(declare-fun _$91!728 () Unit!159829)

(assert (=> d!2118786 (= (choose!50254 (reg!16898 r!7292) s!2326) _$91!728)))

(declare-fun m!7499548 () Bool)

(assert (=> bs!1793043 m!7499548))

(declare-fun m!7499550 () Bool)

(assert (=> bs!1793043 m!7499550))

(assert (=> d!2118180 d!2118786))

(assert (=> d!2118180 d!2118388))

(declare-fun b!6743313 () Bool)

(declare-fun e!4073025 () Bool)

(assert (=> b!6743313 (= e!4073025 (nullable!6556 (regOne!33650 (ite c!1250663 (regTwo!33651 (reg!16898 r!7292)) (regOne!33650 (reg!16898 r!7292))))))))

(declare-fun b!6743314 () Bool)

(declare-fun e!4073022 () (InoxSet Context!11906))

(declare-fun call!609741 () (InoxSet Context!11906))

(declare-fun call!609737 () (InoxSet Context!11906))

(assert (=> b!6743314 (= e!4073022 ((_ map or) call!609741 call!609737))))

(declare-fun e!4073024 () (InoxSet Context!11906))

(declare-fun b!6743315 () Bool)

(assert (=> b!6743315 (= e!4073024 (store ((as const (Array Context!11906 Bool)) false) (ite c!1250663 lt!2439184 (Context!11907 call!609493)) true))))

(declare-fun b!6743316 () Bool)

(declare-fun e!4073023 () (InoxSet Context!11906))

(declare-fun call!609739 () (InoxSet Context!11906))

(assert (=> b!6743316 (= e!4073023 call!609739)))

(declare-fun bm!609731 () Bool)

(declare-fun call!609736 () List!66006)

(declare-fun call!609738 () List!66006)

(assert (=> bm!609731 (= call!609736 call!609738)))

(declare-fun b!6743317 () Bool)

(declare-fun c!1251055 () Bool)

(assert (=> b!6743317 (= c!1251055 e!4073025)))

(declare-fun res!2758178 () Bool)

(assert (=> b!6743317 (=> (not res!2758178) (not e!4073025))))

(assert (=> b!6743317 (= res!2758178 ((_ is Concat!25414) (ite c!1250663 (regTwo!33651 (reg!16898 r!7292)) (regOne!33650 (reg!16898 r!7292)))))))

(declare-fun e!4073020 () (InoxSet Context!11906))

(assert (=> b!6743317 (= e!4073020 e!4073022)))

(declare-fun b!6743318 () Bool)

(assert (=> b!6743318 (= e!4073022 e!4073023)))

(declare-fun c!1251051 () Bool)

(assert (=> b!6743318 (= c!1251051 ((_ is Concat!25414) (ite c!1250663 (regTwo!33651 (reg!16898 r!7292)) (regOne!33650 (reg!16898 r!7292)))))))

(declare-fun b!6743319 () Bool)

(declare-fun c!1251053 () Bool)

(assert (=> b!6743319 (= c!1251053 ((_ is Star!16569) (ite c!1250663 (regTwo!33651 (reg!16898 r!7292)) (regOne!33650 (reg!16898 r!7292)))))))

(declare-fun e!4073021 () (InoxSet Context!11906))

(assert (=> b!6743319 (= e!4073023 e!4073021)))

(declare-fun b!6743320 () Bool)

(assert (=> b!6743320 (= e!4073021 call!609739)))

(declare-fun b!6743321 () Bool)

(assert (=> b!6743321 (= e!4073024 e!4073020)))

(declare-fun c!1251054 () Bool)

(assert (=> b!6743321 (= c!1251054 ((_ is Union!16569) (ite c!1250663 (regTwo!33651 (reg!16898 r!7292)) (regOne!33650 (reg!16898 r!7292)))))))

(declare-fun b!6743322 () Bool)

(declare-fun call!609740 () (InoxSet Context!11906))

(assert (=> b!6743322 (= e!4073020 ((_ map or) call!609740 call!609741))))

(declare-fun bm!609732 () Bool)

(assert (=> bm!609732 (= call!609741 (derivationStepZipperDown!1797 (ite c!1251054 (regTwo!33651 (ite c!1250663 (regTwo!33651 (reg!16898 r!7292)) (regOne!33650 (reg!16898 r!7292)))) (regOne!33650 (ite c!1250663 (regTwo!33651 (reg!16898 r!7292)) (regOne!33650 (reg!16898 r!7292))))) (ite c!1251054 (ite c!1250663 lt!2439184 (Context!11907 call!609493)) (Context!11907 call!609738)) (h!72331 s!2326)))))

(declare-fun b!6743323 () Bool)

(assert (=> b!6743323 (= e!4073021 ((as const (Array Context!11906 Bool)) false))))

(declare-fun bm!609733 () Bool)

(assert (=> bm!609733 (= call!609740 (derivationStepZipperDown!1797 (ite c!1251054 (regOne!33651 (ite c!1250663 (regTwo!33651 (reg!16898 r!7292)) (regOne!33650 (reg!16898 r!7292)))) (ite c!1251055 (regTwo!33650 (ite c!1250663 (regTwo!33651 (reg!16898 r!7292)) (regOne!33650 (reg!16898 r!7292)))) (ite c!1251051 (regOne!33650 (ite c!1250663 (regTwo!33651 (reg!16898 r!7292)) (regOne!33650 (reg!16898 r!7292)))) (reg!16898 (ite c!1250663 (regTwo!33651 (reg!16898 r!7292)) (regOne!33650 (reg!16898 r!7292))))))) (ite (or c!1251054 c!1251055) (ite c!1250663 lt!2439184 (Context!11907 call!609493)) (Context!11907 call!609736)) (h!72331 s!2326)))))

(declare-fun bm!609734 () Bool)

(assert (=> bm!609734 (= call!609738 ($colon$colon!2386 (exprs!6453 (ite c!1250663 lt!2439184 (Context!11907 call!609493))) (ite (or c!1251055 c!1251051) (regTwo!33650 (ite c!1250663 (regTwo!33651 (reg!16898 r!7292)) (regOne!33650 (reg!16898 r!7292)))) (ite c!1250663 (regTwo!33651 (reg!16898 r!7292)) (regOne!33650 (reg!16898 r!7292))))))))

(declare-fun bm!609735 () Bool)

(assert (=> bm!609735 (= call!609739 call!609737)))

(declare-fun bm!609736 () Bool)

(assert (=> bm!609736 (= call!609737 call!609740)))

(declare-fun c!1251052 () Bool)

(declare-fun d!2118824 () Bool)

(assert (=> d!2118824 (= c!1251052 (and ((_ is ElementMatch!16569) (ite c!1250663 (regTwo!33651 (reg!16898 r!7292)) (regOne!33650 (reg!16898 r!7292)))) (= (c!1250577 (ite c!1250663 (regTwo!33651 (reg!16898 r!7292)) (regOne!33650 (reg!16898 r!7292)))) (h!72331 s!2326))))))

(assert (=> d!2118824 (= (derivationStepZipperDown!1797 (ite c!1250663 (regTwo!33651 (reg!16898 r!7292)) (regOne!33650 (reg!16898 r!7292))) (ite c!1250663 lt!2439184 (Context!11907 call!609493)) (h!72331 s!2326)) e!4073024)))

(assert (= (and d!2118824 c!1251052) b!6743315))

(assert (= (and d!2118824 (not c!1251052)) b!6743321))

(assert (= (and b!6743321 c!1251054) b!6743322))

(assert (= (and b!6743321 (not c!1251054)) b!6743317))

(assert (= (and b!6743317 res!2758178) b!6743313))

(assert (= (and b!6743317 c!1251055) b!6743314))

(assert (= (and b!6743317 (not c!1251055)) b!6743318))

(assert (= (and b!6743318 c!1251051) b!6743316))

(assert (= (and b!6743318 (not c!1251051)) b!6743319))

(assert (= (and b!6743319 c!1251053) b!6743320))

(assert (= (and b!6743319 (not c!1251053)) b!6743323))

(assert (= (or b!6743316 b!6743320) bm!609731))

(assert (= (or b!6743316 b!6743320) bm!609735))

(assert (= (or b!6743314 bm!609731) bm!609734))

(assert (= (or b!6743314 bm!609735) bm!609736))

(assert (= (or b!6743322 b!6743314) bm!609732))

(assert (= (or b!6743322 bm!609736) bm!609733))

(declare-fun m!7499552 () Bool)

(assert (=> b!6743313 m!7499552))

(declare-fun m!7499554 () Bool)

(assert (=> bm!609732 m!7499554))

(declare-fun m!7499556 () Bool)

(assert (=> bm!609733 m!7499556))

(declare-fun m!7499558 () Bool)

(assert (=> bm!609734 m!7499558))

(declare-fun m!7499560 () Bool)

(assert (=> b!6743315 m!7499560))

(assert (=> bm!609487 d!2118824))

(assert (=> b!6741997 d!2118490))

(assert (=> b!6741997 d!2118492))

(declare-fun d!2118826 () Bool)

(assert (=> d!2118826 (= (isEmpty!38230 (tail!12651 (exprs!6453 (h!72332 zl!343)))) ((_ is Nil!65882) (tail!12651 (exprs!6453 (h!72332 zl!343)))))))

(assert (=> b!6742135 d!2118826))

(declare-fun d!2118828 () Bool)

(assert (=> d!2118828 (= (tail!12651 (exprs!6453 (h!72332 zl!343))) (t!379705 (exprs!6453 (h!72332 zl!343))))))

(assert (=> b!6742135 d!2118828))

(declare-fun b!6743327 () Bool)

(declare-fun e!4073026 () Bool)

(declare-fun tp!1848469 () Bool)

(declare-fun tp!1848466 () Bool)

(assert (=> b!6743327 (= e!4073026 (and tp!1848469 tp!1848466))))

(declare-fun b!6743324 () Bool)

(assert (=> b!6743324 (= e!4073026 tp_is_empty!42391)))

(declare-fun b!6743325 () Bool)

(declare-fun tp!1848470 () Bool)

(declare-fun tp!1848467 () Bool)

(assert (=> b!6743325 (= e!4073026 (and tp!1848470 tp!1848467))))

(assert (=> b!6742283 (= tp!1848252 e!4073026)))

(declare-fun b!6743326 () Bool)

(declare-fun tp!1848468 () Bool)

(assert (=> b!6743326 (= e!4073026 tp!1848468)))

(assert (= (and b!6742283 ((_ is ElementMatch!16569) (regOne!33651 (regOne!33651 r!7292)))) b!6743324))

(assert (= (and b!6742283 ((_ is Concat!25414) (regOne!33651 (regOne!33651 r!7292)))) b!6743325))

(assert (= (and b!6742283 ((_ is Star!16569) (regOne!33651 (regOne!33651 r!7292)))) b!6743326))

(assert (= (and b!6742283 ((_ is Union!16569) (regOne!33651 (regOne!33651 r!7292)))) b!6743327))

(declare-fun b!6743331 () Bool)

(declare-fun e!4073027 () Bool)

(declare-fun tp!1848474 () Bool)

(declare-fun tp!1848471 () Bool)

(assert (=> b!6743331 (= e!4073027 (and tp!1848474 tp!1848471))))

(declare-fun b!6743328 () Bool)

(assert (=> b!6743328 (= e!4073027 tp_is_empty!42391)))

(declare-fun b!6743329 () Bool)

(declare-fun tp!1848475 () Bool)

(declare-fun tp!1848472 () Bool)

(assert (=> b!6743329 (= e!4073027 (and tp!1848475 tp!1848472))))

(assert (=> b!6742283 (= tp!1848249 e!4073027)))

(declare-fun b!6743330 () Bool)

(declare-fun tp!1848473 () Bool)

(assert (=> b!6743330 (= e!4073027 tp!1848473)))

(assert (= (and b!6742283 ((_ is ElementMatch!16569) (regTwo!33651 (regOne!33651 r!7292)))) b!6743328))

(assert (= (and b!6742283 ((_ is Concat!25414) (regTwo!33651 (regOne!33651 r!7292)))) b!6743329))

(assert (= (and b!6742283 ((_ is Star!16569) (regTwo!33651 (regOne!33651 r!7292)))) b!6743330))

(assert (= (and b!6742283 ((_ is Union!16569) (regTwo!33651 (regOne!33651 r!7292)))) b!6743331))

(declare-fun b!6743335 () Bool)

(declare-fun e!4073028 () Bool)

(declare-fun tp!1848479 () Bool)

(declare-fun tp!1848476 () Bool)

(assert (=> b!6743335 (= e!4073028 (and tp!1848479 tp!1848476))))

(declare-fun b!6743332 () Bool)

(assert (=> b!6743332 (= e!4073028 tp_is_empty!42391)))

(declare-fun b!6743333 () Bool)

(declare-fun tp!1848480 () Bool)

(declare-fun tp!1848477 () Bool)

(assert (=> b!6743333 (= e!4073028 (and tp!1848480 tp!1848477))))

(assert (=> b!6742274 (= tp!1848241 e!4073028)))

(declare-fun b!6743334 () Bool)

(declare-fun tp!1848478 () Bool)

(assert (=> b!6743334 (= e!4073028 tp!1848478)))

(assert (= (and b!6742274 ((_ is ElementMatch!16569) (reg!16898 (regOne!33650 r!7292)))) b!6743332))

(assert (= (and b!6742274 ((_ is Concat!25414) (reg!16898 (regOne!33650 r!7292)))) b!6743333))

(assert (= (and b!6742274 ((_ is Star!16569) (reg!16898 (regOne!33650 r!7292)))) b!6743334))

(assert (= (and b!6742274 ((_ is Union!16569) (reg!16898 (regOne!33650 r!7292)))) b!6743335))

(declare-fun b!6743339 () Bool)

(declare-fun e!4073029 () Bool)

(declare-fun tp!1848484 () Bool)

(declare-fun tp!1848481 () Bool)

(assert (=> b!6743339 (= e!4073029 (and tp!1848484 tp!1848481))))

(declare-fun b!6743336 () Bool)

(assert (=> b!6743336 (= e!4073029 tp_is_empty!42391)))

(declare-fun b!6743337 () Bool)

(declare-fun tp!1848485 () Bool)

(declare-fun tp!1848482 () Bool)

(assert (=> b!6743337 (= e!4073029 (and tp!1848485 tp!1848482))))

(assert (=> b!6742275 (= tp!1848242 e!4073029)))

(declare-fun b!6743338 () Bool)

(declare-fun tp!1848483 () Bool)

(assert (=> b!6743338 (= e!4073029 tp!1848483)))

(assert (= (and b!6742275 ((_ is ElementMatch!16569) (regOne!33651 (regOne!33650 r!7292)))) b!6743336))

(assert (= (and b!6742275 ((_ is Concat!25414) (regOne!33651 (regOne!33650 r!7292)))) b!6743337))

(assert (= (and b!6742275 ((_ is Star!16569) (regOne!33651 (regOne!33650 r!7292)))) b!6743338))

(assert (= (and b!6742275 ((_ is Union!16569) (regOne!33651 (regOne!33650 r!7292)))) b!6743339))

(declare-fun b!6743343 () Bool)

(declare-fun e!4073030 () Bool)

(declare-fun tp!1848489 () Bool)

(declare-fun tp!1848486 () Bool)

(assert (=> b!6743343 (= e!4073030 (and tp!1848489 tp!1848486))))

(declare-fun b!6743340 () Bool)

(assert (=> b!6743340 (= e!4073030 tp_is_empty!42391)))

(declare-fun b!6743341 () Bool)

(declare-fun tp!1848490 () Bool)

(declare-fun tp!1848487 () Bool)

(assert (=> b!6743341 (= e!4073030 (and tp!1848490 tp!1848487))))

(assert (=> b!6742275 (= tp!1848239 e!4073030)))

(declare-fun b!6743342 () Bool)

(declare-fun tp!1848488 () Bool)

(assert (=> b!6743342 (= e!4073030 tp!1848488)))

(assert (= (and b!6742275 ((_ is ElementMatch!16569) (regTwo!33651 (regOne!33650 r!7292)))) b!6743340))

(assert (= (and b!6742275 ((_ is Concat!25414) (regTwo!33651 (regOne!33650 r!7292)))) b!6743341))

(assert (= (and b!6742275 ((_ is Star!16569) (regTwo!33651 (regOne!33650 r!7292)))) b!6743342))

(assert (= (and b!6742275 ((_ is Union!16569) (regTwo!33651 (regOne!33650 r!7292)))) b!6743343))

(declare-fun b!6743347 () Bool)

(declare-fun e!4073031 () Bool)

(declare-fun tp!1848494 () Bool)

(declare-fun tp!1848491 () Bool)

(assert (=> b!6743347 (= e!4073031 (and tp!1848494 tp!1848491))))

(declare-fun b!6743344 () Bool)

(assert (=> b!6743344 (= e!4073031 tp_is_empty!42391)))

(declare-fun b!6743345 () Bool)

(declare-fun tp!1848495 () Bool)

(declare-fun tp!1848492 () Bool)

(assert (=> b!6743345 (= e!4073031 (and tp!1848495 tp!1848492))))

(assert (=> b!6742281 (= tp!1848253 e!4073031)))

(declare-fun b!6743346 () Bool)

(declare-fun tp!1848493 () Bool)

(assert (=> b!6743346 (= e!4073031 tp!1848493)))

(assert (= (and b!6742281 ((_ is ElementMatch!16569) (regOne!33650 (regOne!33651 r!7292)))) b!6743344))

(assert (= (and b!6742281 ((_ is Concat!25414) (regOne!33650 (regOne!33651 r!7292)))) b!6743345))

(assert (= (and b!6742281 ((_ is Star!16569) (regOne!33650 (regOne!33651 r!7292)))) b!6743346))

(assert (= (and b!6742281 ((_ is Union!16569) (regOne!33650 (regOne!33651 r!7292)))) b!6743347))

(declare-fun b!6743351 () Bool)

(declare-fun e!4073032 () Bool)

(declare-fun tp!1848499 () Bool)

(declare-fun tp!1848496 () Bool)

(assert (=> b!6743351 (= e!4073032 (and tp!1848499 tp!1848496))))

(declare-fun b!6743348 () Bool)

(assert (=> b!6743348 (= e!4073032 tp_is_empty!42391)))

(declare-fun b!6743349 () Bool)

(declare-fun tp!1848500 () Bool)

(declare-fun tp!1848497 () Bool)

(assert (=> b!6743349 (= e!4073032 (and tp!1848500 tp!1848497))))

(assert (=> b!6742281 (= tp!1848250 e!4073032)))

(declare-fun b!6743350 () Bool)

(declare-fun tp!1848498 () Bool)

(assert (=> b!6743350 (= e!4073032 tp!1848498)))

(assert (= (and b!6742281 ((_ is ElementMatch!16569) (regTwo!33650 (regOne!33651 r!7292)))) b!6743348))

(assert (= (and b!6742281 ((_ is Concat!25414) (regTwo!33650 (regOne!33651 r!7292)))) b!6743349))

(assert (= (and b!6742281 ((_ is Star!16569) (regTwo!33650 (regOne!33651 r!7292)))) b!6743350))

(assert (= (and b!6742281 ((_ is Union!16569) (regTwo!33650 (regOne!33651 r!7292)))) b!6743351))

(declare-fun b!6743355 () Bool)

(declare-fun e!4073033 () Bool)

(declare-fun tp!1848504 () Bool)

(declare-fun tp!1848501 () Bool)

(assert (=> b!6743355 (= e!4073033 (and tp!1848504 tp!1848501))))

(declare-fun b!6743352 () Bool)

(assert (=> b!6743352 (= e!4073033 tp_is_empty!42391)))

(declare-fun b!6743353 () Bool)

(declare-fun tp!1848505 () Bool)

(declare-fun tp!1848502 () Bool)

(assert (=> b!6743353 (= e!4073033 (and tp!1848505 tp!1848502))))

(assert (=> b!6742273 (= tp!1848243 e!4073033)))

(declare-fun b!6743354 () Bool)

(declare-fun tp!1848503 () Bool)

(assert (=> b!6743354 (= e!4073033 tp!1848503)))

(assert (= (and b!6742273 ((_ is ElementMatch!16569) (regOne!33650 (regOne!33650 r!7292)))) b!6743352))

(assert (= (and b!6742273 ((_ is Concat!25414) (regOne!33650 (regOne!33650 r!7292)))) b!6743353))

(assert (= (and b!6742273 ((_ is Star!16569) (regOne!33650 (regOne!33650 r!7292)))) b!6743354))

(assert (= (and b!6742273 ((_ is Union!16569) (regOne!33650 (regOne!33650 r!7292)))) b!6743355))

(declare-fun b!6743359 () Bool)

(declare-fun e!4073034 () Bool)

(declare-fun tp!1848509 () Bool)

(declare-fun tp!1848506 () Bool)

(assert (=> b!6743359 (= e!4073034 (and tp!1848509 tp!1848506))))

(declare-fun b!6743356 () Bool)

(assert (=> b!6743356 (= e!4073034 tp_is_empty!42391)))

(declare-fun b!6743357 () Bool)

(declare-fun tp!1848510 () Bool)

(declare-fun tp!1848507 () Bool)

(assert (=> b!6743357 (= e!4073034 (and tp!1848510 tp!1848507))))

(assert (=> b!6742273 (= tp!1848240 e!4073034)))

(declare-fun b!6743358 () Bool)

(declare-fun tp!1848508 () Bool)

(assert (=> b!6743358 (= e!4073034 tp!1848508)))

(assert (= (and b!6742273 ((_ is ElementMatch!16569) (regTwo!33650 (regOne!33650 r!7292)))) b!6743356))

(assert (= (and b!6742273 ((_ is Concat!25414) (regTwo!33650 (regOne!33650 r!7292)))) b!6743357))

(assert (= (and b!6742273 ((_ is Star!16569) (regTwo!33650 (regOne!33650 r!7292)))) b!6743358))

(assert (= (and b!6742273 ((_ is Union!16569) (regTwo!33650 (regOne!33650 r!7292)))) b!6743359))

(declare-fun b!6743363 () Bool)

(declare-fun e!4073035 () Bool)

(declare-fun tp!1848514 () Bool)

(declare-fun tp!1848511 () Bool)

(assert (=> b!6743363 (= e!4073035 (and tp!1848514 tp!1848511))))

(declare-fun b!6743360 () Bool)

(assert (=> b!6743360 (= e!4073035 tp_is_empty!42391)))

(declare-fun b!6743361 () Bool)

(declare-fun tp!1848515 () Bool)

(declare-fun tp!1848512 () Bool)

(assert (=> b!6743361 (= e!4073035 (and tp!1848515 tp!1848512))))

(assert (=> b!6742282 (= tp!1848251 e!4073035)))

(declare-fun b!6743362 () Bool)

(declare-fun tp!1848513 () Bool)

(assert (=> b!6743362 (= e!4073035 tp!1848513)))

(assert (= (and b!6742282 ((_ is ElementMatch!16569) (reg!16898 (regOne!33651 r!7292)))) b!6743360))

(assert (= (and b!6742282 ((_ is Concat!25414) (reg!16898 (regOne!33651 r!7292)))) b!6743361))

(assert (= (and b!6742282 ((_ is Star!16569) (reg!16898 (regOne!33651 r!7292)))) b!6743362))

(assert (= (and b!6742282 ((_ is Union!16569) (reg!16898 (regOne!33651 r!7292)))) b!6743363))

(declare-fun condSetEmpty!46057 () Bool)

(assert (=> setNonEmpty!46043 (= condSetEmpty!46057 (= setRest!46043 ((as const (Array Context!11906 Bool)) false)))))

(declare-fun setRes!46057 () Bool)

(assert (=> setNonEmpty!46043 (= tp!1848278 setRes!46057)))

(declare-fun setIsEmpty!46057 () Bool)

(assert (=> setIsEmpty!46057 setRes!46057))

(declare-fun e!4073036 () Bool)

(declare-fun setNonEmpty!46057 () Bool)

(declare-fun setElem!46057 () Context!11906)

(declare-fun tp!1848517 () Bool)

(assert (=> setNonEmpty!46057 (= setRes!46057 (and tp!1848517 (inv!84669 setElem!46057) e!4073036))))

(declare-fun setRest!46057 () (InoxSet Context!11906))

(assert (=> setNonEmpty!46057 (= setRest!46043 ((_ map or) (store ((as const (Array Context!11906 Bool)) false) setElem!46057 true) setRest!46057))))

(declare-fun b!6743364 () Bool)

(declare-fun tp!1848516 () Bool)

(assert (=> b!6743364 (= e!4073036 tp!1848516)))

(assert (= (and setNonEmpty!46043 condSetEmpty!46057) setIsEmpty!46057))

(assert (= (and setNonEmpty!46043 (not condSetEmpty!46057)) setNonEmpty!46057))

(assert (= setNonEmpty!46057 b!6743364))

(declare-fun m!7499562 () Bool)

(assert (=> setNonEmpty!46057 m!7499562))

(declare-fun b!6743368 () Bool)

(declare-fun e!4073037 () Bool)

(declare-fun tp!1848521 () Bool)

(declare-fun tp!1848518 () Bool)

(assert (=> b!6743368 (= e!4073037 (and tp!1848521 tp!1848518))))

(declare-fun b!6743365 () Bool)

(assert (=> b!6743365 (= e!4073037 tp_is_empty!42391)))

(declare-fun b!6743366 () Bool)

(declare-fun tp!1848522 () Bool)

(declare-fun tp!1848519 () Bool)

(assert (=> b!6743366 (= e!4073037 (and tp!1848522 tp!1848519))))

(assert (=> b!6742292 (= tp!1848263 e!4073037)))

(declare-fun b!6743367 () Bool)

(declare-fun tp!1848520 () Bool)

(assert (=> b!6743367 (= e!4073037 tp!1848520)))

(assert (= (and b!6742292 ((_ is ElementMatch!16569) (h!72330 (exprs!6453 (h!72332 zl!343))))) b!6743365))

(assert (= (and b!6742292 ((_ is Concat!25414) (h!72330 (exprs!6453 (h!72332 zl!343))))) b!6743366))

(assert (= (and b!6742292 ((_ is Star!16569) (h!72330 (exprs!6453 (h!72332 zl!343))))) b!6743367))

(assert (= (and b!6742292 ((_ is Union!16569) (h!72330 (exprs!6453 (h!72332 zl!343))))) b!6743368))

(declare-fun b!6743369 () Bool)

(declare-fun e!4073038 () Bool)

(declare-fun tp!1848523 () Bool)

(declare-fun tp!1848524 () Bool)

(assert (=> b!6743369 (= e!4073038 (and tp!1848523 tp!1848524))))

(assert (=> b!6742292 (= tp!1848264 e!4073038)))

(assert (= (and b!6742292 ((_ is Cons!65882) (t!379705 (exprs!6453 (h!72332 zl!343))))) b!6743369))

(declare-fun b!6743370 () Bool)

(declare-fun e!4073039 () Bool)

(declare-fun tp!1848525 () Bool)

(assert (=> b!6743370 (= e!4073039 (and tp_is_empty!42391 tp!1848525))))

(assert (=> b!6742311 (= tp!1848281 e!4073039)))

(assert (= (and b!6742311 ((_ is Cons!65883) (t!379706 (t!379706 s!2326)))) b!6743370))

(declare-fun b!6743374 () Bool)

(declare-fun e!4073040 () Bool)

(declare-fun tp!1848529 () Bool)

(declare-fun tp!1848526 () Bool)

(assert (=> b!6743374 (= e!4073040 (and tp!1848529 tp!1848526))))

(declare-fun b!6743371 () Bool)

(assert (=> b!6743371 (= e!4073040 tp_is_empty!42391)))

(declare-fun b!6743372 () Bool)

(declare-fun tp!1848530 () Bool)

(declare-fun tp!1848527 () Bool)

(assert (=> b!6743372 (= e!4073040 (and tp!1848530 tp!1848527))))

(assert (=> b!6742279 (= tp!1848247 e!4073040)))

(declare-fun b!6743373 () Bool)

(declare-fun tp!1848528 () Bool)

(assert (=> b!6743373 (= e!4073040 tp!1848528)))

(assert (= (and b!6742279 ((_ is ElementMatch!16569) (regOne!33651 (regTwo!33650 r!7292)))) b!6743371))

(assert (= (and b!6742279 ((_ is Concat!25414) (regOne!33651 (regTwo!33650 r!7292)))) b!6743372))

(assert (= (and b!6742279 ((_ is Star!16569) (regOne!33651 (regTwo!33650 r!7292)))) b!6743373))

(assert (= (and b!6742279 ((_ is Union!16569) (regOne!33651 (regTwo!33650 r!7292)))) b!6743374))

(declare-fun b!6743378 () Bool)

(declare-fun e!4073041 () Bool)

(declare-fun tp!1848534 () Bool)

(declare-fun tp!1848531 () Bool)

(assert (=> b!6743378 (= e!4073041 (and tp!1848534 tp!1848531))))

(declare-fun b!6743375 () Bool)

(assert (=> b!6743375 (= e!4073041 tp_is_empty!42391)))

(declare-fun b!6743376 () Bool)

(declare-fun tp!1848535 () Bool)

(declare-fun tp!1848532 () Bool)

(assert (=> b!6743376 (= e!4073041 (and tp!1848535 tp!1848532))))

(assert (=> b!6742279 (= tp!1848244 e!4073041)))

(declare-fun b!6743377 () Bool)

(declare-fun tp!1848533 () Bool)

(assert (=> b!6743377 (= e!4073041 tp!1848533)))

(assert (= (and b!6742279 ((_ is ElementMatch!16569) (regTwo!33651 (regTwo!33650 r!7292)))) b!6743375))

(assert (= (and b!6742279 ((_ is Concat!25414) (regTwo!33651 (regTwo!33650 r!7292)))) b!6743376))

(assert (= (and b!6742279 ((_ is Star!16569) (regTwo!33651 (regTwo!33650 r!7292)))) b!6743377))

(assert (= (and b!6742279 ((_ is Union!16569) (regTwo!33651 (regTwo!33650 r!7292)))) b!6743378))

(declare-fun b!6743382 () Bool)

(declare-fun e!4073042 () Bool)

(declare-fun tp!1848539 () Bool)

(declare-fun tp!1848536 () Bool)

(assert (=> b!6743382 (= e!4073042 (and tp!1848539 tp!1848536))))

(declare-fun b!6743379 () Bool)

(assert (=> b!6743379 (= e!4073042 tp_is_empty!42391)))

(declare-fun b!6743380 () Bool)

(declare-fun tp!1848540 () Bool)

(declare-fun tp!1848537 () Bool)

(assert (=> b!6743380 (= e!4073042 (and tp!1848540 tp!1848537))))

(assert (=> b!6742270 (= tp!1848236 e!4073042)))

(declare-fun b!6743381 () Bool)

(declare-fun tp!1848538 () Bool)

(assert (=> b!6743381 (= e!4073042 tp!1848538)))

(assert (= (and b!6742270 ((_ is ElementMatch!16569) (reg!16898 (reg!16898 r!7292)))) b!6743379))

(assert (= (and b!6742270 ((_ is Concat!25414) (reg!16898 (reg!16898 r!7292)))) b!6743380))

(assert (= (and b!6742270 ((_ is Star!16569) (reg!16898 (reg!16898 r!7292)))) b!6743381))

(assert (= (and b!6742270 ((_ is Union!16569) (reg!16898 (reg!16898 r!7292)))) b!6743382))

(declare-fun b!6743386 () Bool)

(declare-fun e!4073043 () Bool)

(declare-fun tp!1848544 () Bool)

(declare-fun tp!1848541 () Bool)

(assert (=> b!6743386 (= e!4073043 (and tp!1848544 tp!1848541))))

(declare-fun b!6743383 () Bool)

(assert (=> b!6743383 (= e!4073043 tp_is_empty!42391)))

(declare-fun b!6743384 () Bool)

(declare-fun tp!1848545 () Bool)

(declare-fun tp!1848542 () Bool)

(assert (=> b!6743384 (= e!4073043 (and tp!1848545 tp!1848542))))

(assert (=> b!6742269 (= tp!1848238 e!4073043)))

(declare-fun b!6743385 () Bool)

(declare-fun tp!1848543 () Bool)

(assert (=> b!6743385 (= e!4073043 tp!1848543)))

(assert (= (and b!6742269 ((_ is ElementMatch!16569) (regOne!33650 (reg!16898 r!7292)))) b!6743383))

(assert (= (and b!6742269 ((_ is Concat!25414) (regOne!33650 (reg!16898 r!7292)))) b!6743384))

(assert (= (and b!6742269 ((_ is Star!16569) (regOne!33650 (reg!16898 r!7292)))) b!6743385))

(assert (= (and b!6742269 ((_ is Union!16569) (regOne!33650 (reg!16898 r!7292)))) b!6743386))

(declare-fun b!6743390 () Bool)

(declare-fun e!4073044 () Bool)

(declare-fun tp!1848549 () Bool)

(declare-fun tp!1848546 () Bool)

(assert (=> b!6743390 (= e!4073044 (and tp!1848549 tp!1848546))))

(declare-fun b!6743387 () Bool)

(assert (=> b!6743387 (= e!4073044 tp_is_empty!42391)))

(declare-fun b!6743388 () Bool)

(declare-fun tp!1848550 () Bool)

(declare-fun tp!1848547 () Bool)

(assert (=> b!6743388 (= e!4073044 (and tp!1848550 tp!1848547))))

(assert (=> b!6742269 (= tp!1848235 e!4073044)))

(declare-fun b!6743389 () Bool)

(declare-fun tp!1848548 () Bool)

(assert (=> b!6743389 (= e!4073044 tp!1848548)))

(assert (= (and b!6742269 ((_ is ElementMatch!16569) (regTwo!33650 (reg!16898 r!7292)))) b!6743387))

(assert (= (and b!6742269 ((_ is Concat!25414) (regTwo!33650 (reg!16898 r!7292)))) b!6743388))

(assert (= (and b!6742269 ((_ is Star!16569) (regTwo!33650 (reg!16898 r!7292)))) b!6743389))

(assert (= (and b!6742269 ((_ is Union!16569) (regTwo!33650 (reg!16898 r!7292)))) b!6743390))

(declare-fun b!6743394 () Bool)

(declare-fun e!4073045 () Bool)

(declare-fun tp!1848554 () Bool)

(declare-fun tp!1848551 () Bool)

(assert (=> b!6743394 (= e!4073045 (and tp!1848554 tp!1848551))))

(declare-fun b!6743391 () Bool)

(assert (=> b!6743391 (= e!4073045 tp_is_empty!42391)))

(declare-fun b!6743392 () Bool)

(declare-fun tp!1848555 () Bool)

(declare-fun tp!1848552 () Bool)

(assert (=> b!6743392 (= e!4073045 (and tp!1848555 tp!1848552))))

(assert (=> b!6742271 (= tp!1848237 e!4073045)))

(declare-fun b!6743393 () Bool)

(declare-fun tp!1848553 () Bool)

(assert (=> b!6743393 (= e!4073045 tp!1848553)))

(assert (= (and b!6742271 ((_ is ElementMatch!16569) (regOne!33651 (reg!16898 r!7292)))) b!6743391))

(assert (= (and b!6742271 ((_ is Concat!25414) (regOne!33651 (reg!16898 r!7292)))) b!6743392))

(assert (= (and b!6742271 ((_ is Star!16569) (regOne!33651 (reg!16898 r!7292)))) b!6743393))

(assert (= (and b!6742271 ((_ is Union!16569) (regOne!33651 (reg!16898 r!7292)))) b!6743394))

(declare-fun b!6743398 () Bool)

(declare-fun e!4073046 () Bool)

(declare-fun tp!1848559 () Bool)

(declare-fun tp!1848556 () Bool)

(assert (=> b!6743398 (= e!4073046 (and tp!1848559 tp!1848556))))

(declare-fun b!6743395 () Bool)

(assert (=> b!6743395 (= e!4073046 tp_is_empty!42391)))

(declare-fun b!6743396 () Bool)

(declare-fun tp!1848560 () Bool)

(declare-fun tp!1848557 () Bool)

(assert (=> b!6743396 (= e!4073046 (and tp!1848560 tp!1848557))))

(assert (=> b!6742271 (= tp!1848234 e!4073046)))

(declare-fun b!6743397 () Bool)

(declare-fun tp!1848558 () Bool)

(assert (=> b!6743397 (= e!4073046 tp!1848558)))

(assert (= (and b!6742271 ((_ is ElementMatch!16569) (regTwo!33651 (reg!16898 r!7292)))) b!6743395))

(assert (= (and b!6742271 ((_ is Concat!25414) (regTwo!33651 (reg!16898 r!7292)))) b!6743396))

(assert (= (and b!6742271 ((_ is Star!16569) (regTwo!33651 (reg!16898 r!7292)))) b!6743397))

(assert (= (and b!6742271 ((_ is Union!16569) (regTwo!33651 (reg!16898 r!7292)))) b!6743398))

(declare-fun b!6743399 () Bool)

(declare-fun e!4073047 () Bool)

(declare-fun tp!1848561 () Bool)

(declare-fun tp!1848562 () Bool)

(assert (=> b!6743399 (= e!4073047 (and tp!1848561 tp!1848562))))

(assert (=> b!6742306 (= tp!1848277 e!4073047)))

(assert (= (and b!6742306 ((_ is Cons!65882) (exprs!6453 setElem!46043))) b!6743399))

(declare-fun b!6743403 () Bool)

(declare-fun e!4073048 () Bool)

(declare-fun tp!1848566 () Bool)

(declare-fun tp!1848563 () Bool)

(assert (=> b!6743403 (= e!4073048 (and tp!1848566 tp!1848563))))

(declare-fun b!6743400 () Bool)

(assert (=> b!6743400 (= e!4073048 tp_is_empty!42391)))

(declare-fun b!6743401 () Bool)

(declare-fun tp!1848567 () Bool)

(declare-fun tp!1848564 () Bool)

(assert (=> b!6743401 (= e!4073048 (and tp!1848567 tp!1848564))))

(assert (=> b!6742286 (= tp!1848256 e!4073048)))

(declare-fun b!6743402 () Bool)

(declare-fun tp!1848565 () Bool)

(assert (=> b!6743402 (= e!4073048 tp!1848565)))

(assert (= (and b!6742286 ((_ is ElementMatch!16569) (reg!16898 (regTwo!33651 r!7292)))) b!6743400))

(assert (= (and b!6742286 ((_ is Concat!25414) (reg!16898 (regTwo!33651 r!7292)))) b!6743401))

(assert (= (and b!6742286 ((_ is Star!16569) (reg!16898 (regTwo!33651 r!7292)))) b!6743402))

(assert (= (and b!6742286 ((_ is Union!16569) (reg!16898 (regTwo!33651 r!7292)))) b!6743403))

(declare-fun b!6743407 () Bool)

(declare-fun e!4073049 () Bool)

(declare-fun tp!1848571 () Bool)

(declare-fun tp!1848568 () Bool)

(assert (=> b!6743407 (= e!4073049 (and tp!1848571 tp!1848568))))

(declare-fun b!6743404 () Bool)

(assert (=> b!6743404 (= e!4073049 tp_is_empty!42391)))

(declare-fun b!6743405 () Bool)

(declare-fun tp!1848572 () Bool)

(declare-fun tp!1848569 () Bool)

(assert (=> b!6743405 (= e!4073049 (and tp!1848572 tp!1848569))))

(assert (=> b!6742285 (= tp!1848258 e!4073049)))

(declare-fun b!6743406 () Bool)

(declare-fun tp!1848570 () Bool)

(assert (=> b!6743406 (= e!4073049 tp!1848570)))

(assert (= (and b!6742285 ((_ is ElementMatch!16569) (regOne!33650 (regTwo!33651 r!7292)))) b!6743404))

(assert (= (and b!6742285 ((_ is Concat!25414) (regOne!33650 (regTwo!33651 r!7292)))) b!6743405))

(assert (= (and b!6742285 ((_ is Star!16569) (regOne!33650 (regTwo!33651 r!7292)))) b!6743406))

(assert (= (and b!6742285 ((_ is Union!16569) (regOne!33650 (regTwo!33651 r!7292)))) b!6743407))

(declare-fun b!6743411 () Bool)

(declare-fun e!4073050 () Bool)

(declare-fun tp!1848576 () Bool)

(declare-fun tp!1848573 () Bool)

(assert (=> b!6743411 (= e!4073050 (and tp!1848576 tp!1848573))))

(declare-fun b!6743408 () Bool)

(assert (=> b!6743408 (= e!4073050 tp_is_empty!42391)))

(declare-fun b!6743409 () Bool)

(declare-fun tp!1848577 () Bool)

(declare-fun tp!1848574 () Bool)

(assert (=> b!6743409 (= e!4073050 (and tp!1848577 tp!1848574))))

(assert (=> b!6742285 (= tp!1848255 e!4073050)))

(declare-fun b!6743410 () Bool)

(declare-fun tp!1848575 () Bool)

(assert (=> b!6743410 (= e!4073050 tp!1848575)))

(assert (= (and b!6742285 ((_ is ElementMatch!16569) (regTwo!33650 (regTwo!33651 r!7292)))) b!6743408))

(assert (= (and b!6742285 ((_ is Concat!25414) (regTwo!33650 (regTwo!33651 r!7292)))) b!6743409))

(assert (= (and b!6742285 ((_ is Star!16569) (regTwo!33650 (regTwo!33651 r!7292)))) b!6743410))

(assert (= (and b!6742285 ((_ is Union!16569) (regTwo!33650 (regTwo!33651 r!7292)))) b!6743411))

(declare-fun b!6743413 () Bool)

(declare-fun e!4073052 () Bool)

(declare-fun tp!1848578 () Bool)

(assert (=> b!6743413 (= e!4073052 tp!1848578)))

(declare-fun e!4073051 () Bool)

(declare-fun b!6743412 () Bool)

(declare-fun tp!1848579 () Bool)

(assert (=> b!6743412 (= e!4073051 (and (inv!84669 (h!72332 (t!379707 (t!379707 zl!343)))) e!4073052 tp!1848579))))

(assert (=> b!6742299 (= tp!1848270 e!4073051)))

(assert (= b!6743412 b!6743413))

(assert (= (and b!6742299 ((_ is Cons!65884) (t!379707 (t!379707 zl!343)))) b!6743412))

(declare-fun m!7499564 () Bool)

(assert (=> b!6743412 m!7499564))

(declare-fun b!6743417 () Bool)

(declare-fun e!4073053 () Bool)

(declare-fun tp!1848583 () Bool)

(declare-fun tp!1848580 () Bool)

(assert (=> b!6743417 (= e!4073053 (and tp!1848583 tp!1848580))))

(declare-fun b!6743414 () Bool)

(assert (=> b!6743414 (= e!4073053 tp_is_empty!42391)))

(declare-fun b!6743415 () Bool)

(declare-fun tp!1848584 () Bool)

(declare-fun tp!1848581 () Bool)

(assert (=> b!6743415 (= e!4073053 (and tp!1848584 tp!1848581))))

(assert (=> b!6742287 (= tp!1848257 e!4073053)))

(declare-fun b!6743416 () Bool)

(declare-fun tp!1848582 () Bool)

(assert (=> b!6743416 (= e!4073053 tp!1848582)))

(assert (= (and b!6742287 ((_ is ElementMatch!16569) (regOne!33651 (regTwo!33651 r!7292)))) b!6743414))

(assert (= (and b!6742287 ((_ is Concat!25414) (regOne!33651 (regTwo!33651 r!7292)))) b!6743415))

(assert (= (and b!6742287 ((_ is Star!16569) (regOne!33651 (regTwo!33651 r!7292)))) b!6743416))

(assert (= (and b!6742287 ((_ is Union!16569) (regOne!33651 (regTwo!33651 r!7292)))) b!6743417))

(declare-fun b!6743421 () Bool)

(declare-fun e!4073054 () Bool)

(declare-fun tp!1848588 () Bool)

(declare-fun tp!1848585 () Bool)

(assert (=> b!6743421 (= e!4073054 (and tp!1848588 tp!1848585))))

(declare-fun b!6743418 () Bool)

(assert (=> b!6743418 (= e!4073054 tp_is_empty!42391)))

(declare-fun b!6743419 () Bool)

(declare-fun tp!1848589 () Bool)

(declare-fun tp!1848586 () Bool)

(assert (=> b!6743419 (= e!4073054 (and tp!1848589 tp!1848586))))

(assert (=> b!6742287 (= tp!1848254 e!4073054)))

(declare-fun b!6743420 () Bool)

(declare-fun tp!1848587 () Bool)

(assert (=> b!6743420 (= e!4073054 tp!1848587)))

(assert (= (and b!6742287 ((_ is ElementMatch!16569) (regTwo!33651 (regTwo!33651 r!7292)))) b!6743418))

(assert (= (and b!6742287 ((_ is Concat!25414) (regTwo!33651 (regTwo!33651 r!7292)))) b!6743419))

(assert (= (and b!6742287 ((_ is Star!16569) (regTwo!33651 (regTwo!33651 r!7292)))) b!6743420))

(assert (= (and b!6742287 ((_ is Union!16569) (regTwo!33651 (regTwo!33651 r!7292)))) b!6743421))

(declare-fun b!6743425 () Bool)

(declare-fun e!4073055 () Bool)

(declare-fun tp!1848593 () Bool)

(declare-fun tp!1848590 () Bool)

(assert (=> b!6743425 (= e!4073055 (and tp!1848593 tp!1848590))))

(declare-fun b!6743422 () Bool)

(assert (=> b!6743422 (= e!4073055 tp_is_empty!42391)))

(declare-fun b!6743423 () Bool)

(declare-fun tp!1848594 () Bool)

(declare-fun tp!1848591 () Bool)

(assert (=> b!6743423 (= e!4073055 (and tp!1848594 tp!1848591))))

(assert (=> b!6742278 (= tp!1848246 e!4073055)))

(declare-fun b!6743424 () Bool)

(declare-fun tp!1848592 () Bool)

(assert (=> b!6743424 (= e!4073055 tp!1848592)))

(assert (= (and b!6742278 ((_ is ElementMatch!16569) (reg!16898 (regTwo!33650 r!7292)))) b!6743422))

(assert (= (and b!6742278 ((_ is Concat!25414) (reg!16898 (regTwo!33650 r!7292)))) b!6743423))

(assert (= (and b!6742278 ((_ is Star!16569) (reg!16898 (regTwo!33650 r!7292)))) b!6743424))

(assert (= (and b!6742278 ((_ is Union!16569) (reg!16898 (regTwo!33650 r!7292)))) b!6743425))

(declare-fun b!6743429 () Bool)

(declare-fun e!4073056 () Bool)

(declare-fun tp!1848598 () Bool)

(declare-fun tp!1848595 () Bool)

(assert (=> b!6743429 (= e!4073056 (and tp!1848598 tp!1848595))))

(declare-fun b!6743426 () Bool)

(assert (=> b!6743426 (= e!4073056 tp_is_empty!42391)))

(declare-fun b!6743427 () Bool)

(declare-fun tp!1848599 () Bool)

(declare-fun tp!1848596 () Bool)

(assert (=> b!6743427 (= e!4073056 (and tp!1848599 tp!1848596))))

(assert (=> b!6742277 (= tp!1848248 e!4073056)))

(declare-fun b!6743428 () Bool)

(declare-fun tp!1848597 () Bool)

(assert (=> b!6743428 (= e!4073056 tp!1848597)))

(assert (= (and b!6742277 ((_ is ElementMatch!16569) (regOne!33650 (regTwo!33650 r!7292)))) b!6743426))

(assert (= (and b!6742277 ((_ is Concat!25414) (regOne!33650 (regTwo!33650 r!7292)))) b!6743427))

(assert (= (and b!6742277 ((_ is Star!16569) (regOne!33650 (regTwo!33650 r!7292)))) b!6743428))

(assert (= (and b!6742277 ((_ is Union!16569) (regOne!33650 (regTwo!33650 r!7292)))) b!6743429))

(declare-fun b!6743433 () Bool)

(declare-fun e!4073057 () Bool)

(declare-fun tp!1848603 () Bool)

(declare-fun tp!1848600 () Bool)

(assert (=> b!6743433 (= e!4073057 (and tp!1848603 tp!1848600))))

(declare-fun b!6743430 () Bool)

(assert (=> b!6743430 (= e!4073057 tp_is_empty!42391)))

(declare-fun b!6743431 () Bool)

(declare-fun tp!1848604 () Bool)

(declare-fun tp!1848601 () Bool)

(assert (=> b!6743431 (= e!4073057 (and tp!1848604 tp!1848601))))

(assert (=> b!6742277 (= tp!1848245 e!4073057)))

(declare-fun b!6743432 () Bool)

(declare-fun tp!1848602 () Bool)

(assert (=> b!6743432 (= e!4073057 tp!1848602)))

(assert (= (and b!6742277 ((_ is ElementMatch!16569) (regTwo!33650 (regTwo!33650 r!7292)))) b!6743430))

(assert (= (and b!6742277 ((_ is Concat!25414) (regTwo!33650 (regTwo!33650 r!7292)))) b!6743431))

(assert (= (and b!6742277 ((_ is Star!16569) (regTwo!33650 (regTwo!33650 r!7292)))) b!6743432))

(assert (= (and b!6742277 ((_ is Union!16569) (regTwo!33650 (regTwo!33650 r!7292)))) b!6743433))

(declare-fun b!6743434 () Bool)

(declare-fun e!4073058 () Bool)

(declare-fun tp!1848605 () Bool)

(declare-fun tp!1848606 () Bool)

(assert (=> b!6743434 (= e!4073058 (and tp!1848605 tp!1848606))))

(assert (=> b!6742300 (= tp!1848269 e!4073058)))

(assert (= (and b!6742300 ((_ is Cons!65882) (exprs!6453 (h!72332 (t!379707 zl!343))))) b!6743434))

(declare-fun b!6743438 () Bool)

(declare-fun e!4073059 () Bool)

(declare-fun tp!1848610 () Bool)

(declare-fun tp!1848607 () Bool)

(assert (=> b!6743438 (= e!4073059 (and tp!1848610 tp!1848607))))

(declare-fun b!6743435 () Bool)

(assert (=> b!6743435 (= e!4073059 tp_is_empty!42391)))

(declare-fun b!6743436 () Bool)

(declare-fun tp!1848611 () Bool)

(declare-fun tp!1848608 () Bool)

(assert (=> b!6743436 (= e!4073059 (and tp!1848611 tp!1848608))))

(assert (=> b!6742301 (= tp!1848271 e!4073059)))

(declare-fun b!6743437 () Bool)

(declare-fun tp!1848609 () Bool)

(assert (=> b!6743437 (= e!4073059 tp!1848609)))

(assert (= (and b!6742301 ((_ is ElementMatch!16569) (h!72330 (exprs!6453 setElem!46037)))) b!6743435))

(assert (= (and b!6742301 ((_ is Concat!25414) (h!72330 (exprs!6453 setElem!46037)))) b!6743436))

(assert (= (and b!6742301 ((_ is Star!16569) (h!72330 (exprs!6453 setElem!46037)))) b!6743437))

(assert (= (and b!6742301 ((_ is Union!16569) (h!72330 (exprs!6453 setElem!46037)))) b!6743438))

(declare-fun b!6743439 () Bool)

(declare-fun e!4073060 () Bool)

(declare-fun tp!1848612 () Bool)

(declare-fun tp!1848613 () Bool)

(assert (=> b!6743439 (= e!4073060 (and tp!1848612 tp!1848613))))

(assert (=> b!6742301 (= tp!1848272 e!4073060)))

(assert (= (and b!6742301 ((_ is Cons!65882) (t!379705 (exprs!6453 setElem!46037)))) b!6743439))

(declare-fun b_lambda!253991 () Bool)

(assert (= b_lambda!253951 (or d!2118278 b_lambda!253991)))

(declare-fun bs!1793046 () Bool)

(declare-fun d!2118830 () Bool)

(assert (= bs!1793046 (and d!2118830 d!2118278)))

(assert (=> bs!1793046 (= (dynLambda!26290 lambda!378804 (h!72330 (exprs!6453 (h!72332 zl!343)))) (validRegex!8305 (h!72330 (exprs!6453 (h!72332 zl!343)))))))

(declare-fun m!7499566 () Bool)

(assert (=> bs!1793046 m!7499566))

(assert (=> b!6742803 d!2118830))

(declare-fun b_lambda!253993 () Bool)

(assert (= b_lambda!253963 (or d!2118342 b_lambda!253993)))

(declare-fun bs!1793047 () Bool)

(declare-fun d!2118832 () Bool)

(assert (= bs!1793047 (and d!2118832 d!2118342)))

(assert (=> bs!1793047 (= (dynLambda!26290 lambda!378822 (h!72330 (unfocusZipperList!1990 zl!343))) (validRegex!8305 (h!72330 (unfocusZipperList!1990 zl!343))))))

(declare-fun m!7499568 () Bool)

(assert (=> bs!1793047 m!7499568))

(assert (=> b!6743054 d!2118832))

(declare-fun b_lambda!253995 () Bool)

(assert (= b_lambda!253933 (or b!6741544 b_lambda!253995)))

(assert (=> d!2118432 d!2118352))

(declare-fun b_lambda!253997 () Bool)

(assert (= b_lambda!253961 (or d!2118344 b_lambda!253997)))

(declare-fun bs!1793048 () Bool)

(declare-fun d!2118834 () Bool)

(assert (= bs!1793048 (and d!2118834 d!2118344)))

(assert (=> bs!1793048 (= (dynLambda!26290 lambda!378825 (h!72330 lt!2439300)) (validRegex!8305 (h!72330 lt!2439300)))))

(declare-fun m!7499570 () Bool)

(assert (=> bs!1793048 m!7499570))

(assert (=> b!6743041 d!2118834))

(declare-fun b_lambda!253999 () Bool)

(assert (= b_lambda!253955 (or b!6741544 b_lambda!253999)))

(assert (=> d!2118622 d!2118346))

(declare-fun b_lambda!254001 () Bool)

(assert (= b_lambda!253957 (or b!6741544 b_lambda!254001)))

(assert (=> d!2118658 d!2118350))

(declare-fun b_lambda!254003 () Bool)

(assert (= b_lambda!253937 (or b!6741544 b_lambda!254003)))

(assert (=> d!2118462 d!2118348))

(declare-fun b_lambda!254005 () Bool)

(assert (= b_lambda!253953 (or d!2118314 b_lambda!254005)))

(declare-fun bs!1793049 () Bool)

(declare-fun d!2118836 () Bool)

(assert (= bs!1793049 (and d!2118836 d!2118314)))

(assert (=> bs!1793049 (= (dynLambda!26290 lambda!378818 (h!72330 (exprs!6453 lt!2439184))) (validRegex!8305 (h!72330 (exprs!6453 lt!2439184))))))

(declare-fun m!7499572 () Bool)

(assert (=> bs!1793049 m!7499572))

(assert (=> b!6742893 d!2118836))

(declare-fun b_lambda!254007 () Bool)

(assert (= b_lambda!253943 (or d!2118280 b_lambda!254007)))

(declare-fun bs!1793050 () Bool)

(declare-fun d!2118838 () Bool)

(assert (= bs!1793050 (and d!2118838 d!2118280)))

(assert (=> bs!1793050 (= (dynLambda!26290 lambda!378805 (h!72330 (exprs!6453 setElem!46037))) (validRegex!8305 (h!72330 (exprs!6453 setElem!46037))))))

(declare-fun m!7499574 () Bool)

(assert (=> bs!1793050 m!7499574))

(assert (=> b!6742657 d!2118838))

(declare-fun b_lambda!254009 () Bool)

(assert (= b_lambda!253965 (or d!2118286 b_lambda!254009)))

(declare-fun bs!1793051 () Bool)

(declare-fun d!2118840 () Bool)

(assert (= bs!1793051 (and d!2118840 d!2118286)))

(assert (=> bs!1793051 (= (dynLambda!26290 lambda!378815 (h!72330 (exprs!6453 (h!72332 zl!343)))) (validRegex!8305 (h!72330 (exprs!6453 (h!72332 zl!343)))))))

(assert (=> bs!1793051 m!7499566))

(assert (=> b!6743069 d!2118840))

(check-sat (not bm!609587) (not bm!609717) (not d!2118658) (not d!2118772) (not b!6742548) (not bm!609670) (not b_lambda!254005) (not d!2118458) (not b_lambda!254007) (not b!6743358) (not b!6742540) (not b!6743033) (not bm!609640) (not bm!609675) (not b!6742942) (not bm!609715) (not d!2118770) (not d!2118622) (not d!2118396) (not b!6743419) (not b!6743031) (not b!6742430) (not b!6742906) (not b!6742914) (not d!2118382) (not d!2118606) (not b!6743337) (not bm!609677) (not b!6743434) (not b!6743333) (not b!6743029) (not b!6742931) (not d!2118648) (not bm!609694) (not b!6742718) (not setNonEmpty!46046) (not setNonEmpty!46055) (not b!6742494) (not bm!609602) (not b!6742905) (not b!6743156) (not b!6742570) (not b!6743355) (not bm!609697) (not bm!609543) (not bs!1793049) (not b!6742598) (not bm!609682) (not b!6742935) (not b!6743035) (not b!6743143) (not b!6742503) (not b!6742861) (not b!6743152) (not d!2118768) (not bm!609609) (not b!6742835) (not b!6742940) (not b!6743416) (not b!6743409) (not b!6742841) (not b!6743394) (not bm!609661) (not b!6742572) (not b!6742537) (not b!6742930) (not b!6743055) (not b!6743039) (not b!6743396) (not b!6742954) (not b!6743087) (not b!6742676) (not b!6742714) (not bm!609705) (not b!6743347) (not b!6742834) (not b!6742594) (not d!2118398) (not b!6742390) (not d!2118462) (not bm!609703) (not b!6743367) (not d!2118760) (not b_lambda!253991) (not bm!609570) (not bm!609573) (not d!2118456) (not d!2118604) (not d!2118372) (not b!6743155) (not d!2118434) (not d!2118432) (not b!6743417) (not b!6742543) (not b!6743412) (not b!6742724) (not b!6742976) (not bs!1793047) (not b!6742859) (not b!6743436) (not bm!609638) (not b!6743361) (not bm!609711) (not b!6743052) (not setNonEmpty!46051) (not b!6742800) (not b!6743043) (not bm!609586) (not b!6742910) (not bm!609555) (not b!6743017) (not b!6743353) (not b!6742945) (not b!6743382) (not bm!609710) (not bm!609622) (not b!6742495) (not b!6743397) (not b!6743120) (not bm!609693) (not d!2118602) (not b!6743362) (not b!6743067) (not bm!609571) (not d!2118526) (not d!2118424) (not b!6743349) (not b!6743438) (not b!6743410) (not d!2118650) (not b!6743398) (not setNonEmpty!46052) (not bm!609732) (not b!6743380) (not b!6743346) (not b!6743137) (not d!2118576) (not b!6743034) (not b!6743372) (not b!6743439) (not d!2118706) (not d!2118626) (not b!6742873) (not d!2118744) (not d!2118730) (not b!6743131) (not b!6743330) (not b!6743071) (not d!2118632) (not d!2118582) (not bm!609671) (not b!6742575) (not b!6742539) (not b_lambda!253923) (not b!6742804) (not b!6742469) (not b!6743366) (not bm!609604) (not d!2118774) (not b!6743390) (not b!6743343) (not bm!609704) (not b_lambda!253997) (not d!2118400) (not b!6743403) (not bm!609548) (not b!6742715) (not bm!609662) (not d!2118578) (not b!6742492) (not d!2118612) (not bm!609723) (not b!6743428) (not d!2118636) (not b!6743399) (not b!6743354) (not b!6743429) (not d!2118782) (not b!6742531) (not d!2118384) (not bm!609668) (not b!6743327) (not b!6743079) (not b!6743357) (not b!6742571) (not b_lambda!253927) (not b!6743157) (not bm!609733) (not b!6743325) (not d!2118756) (not b_lambda!253999) (not b!6743369) (not b!6743389) (not b!6743025) (not bm!609566) (not bm!609574) (not b!6742932) (not b_lambda!254001) (not d!2118684) (not b!6743406) (not d!2118786) (not b!6743405) (not b!6743070) (not b!6743386) (not bm!609556) (not d!2118780) (not b!6743413) (not b!6743402) (not d!2118470) (not b!6742535) (not b!6743080) (not b!6743368) (not d!2118740) (not b!6743098) (not b!6743042) tp_is_empty!42391 (not b!6742977) (not b!6742842) (not bm!609699) (not b!6743401) (not b!6743350) (not b!6743407) (not b!6742860) (not bs!1793046) (not b!6743432) (not b!6743424) (not b!6743433) (not b!6742549) (not bm!609709) (not b!6743421) (not bs!1793051) (not b!6742418) (not d!2118712) (not b!6743334) (not b!6743378) (not b!6743376) (not b!6743345) (not b!6742574) (not b_lambda!253993) (not d!2118430) (not b!6743381) (not b!6742978) (not b!6742504) (not b!6743030) (not bm!609683) (not b!6743420) (not b!6743038) (not d!2118540) (not b!6743374) (not b!6743077) (not b!6743121) (not bm!609603) (not b_lambda!254009) (not bm!609540) (not d!2118552) (not b!6743384) (not bm!609684) (not b!6743359) (not b!6743158) (not bm!609716) (not bm!609721) (not b!6743341) (not b!6743074) (not b!6743427) (not b!6743377) (not b!6742926) (not b!6743159) (not d!2118708) (not b!6742416) (not b!6743392) (not b!6742953) (not b_lambda!254003) (not b!6742581) (not bm!609696) (not b_lambda!253929) (not b!6743385) (not b!6742680) (not b!6743342) (not b!6743144) (not bm!609608) (not b!6743363) (not d!2118474) (not b!6743373) (not b!6742948) (not b!6742712) (not b!6743072) (not d!2118420) (not b!6742579) (not b!6743138) (not bm!609575) (not b!6742419) (not b!6743329) (not b!6743415) (not b!6742723) (not bs!1793048) (not bm!609672) (not bm!609546) (not b!6743393) (not d!2118624) (not b!6743437) (not b!6742389) (not b!6743161) (not bm!609547) (not b!6743370) (not bm!609557) (not b!6742915) (not b!6742994) (not b!6743331) (not b!6743075) (not b!6743326) (not b_lambda!253995) (not b!6742576) (not b!6742927) (not b!6742894) (not setNonEmpty!46057) (not b!6743425) (not b!6742557) (not b!6742658) (not d!2118724) (not b!6743351) (not b!6742659) (not b!6743411) (not b!6743364) (not b!6743339) (not bm!609720) (not b!6743431) (not b!6742944) (not bm!609660) (not b!6743338) (not b!6743388) (not b!6742928) (not b!6743335) (not b!6743423) (not b!6742498) (not bm!609544) (not bm!609734) (not b_lambda!253925) (not b!6743109) (not b!6743151) (not b!6742911) (not b!6743313) (not d!2118638) (not d!2118630) (not bs!1793050) (not bm!609700))
(check-sat)
