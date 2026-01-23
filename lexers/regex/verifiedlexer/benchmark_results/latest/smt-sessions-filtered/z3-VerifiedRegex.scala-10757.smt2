; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!549802 () Bool)

(assert start!549802)

(declare-fun b!5196170 () Bool)

(assert (=> b!5196170 true))

(assert (=> b!5196170 true))

(declare-fun lambda!260026 () Int)

(declare-fun lambda!260025 () Int)

(assert (=> b!5196170 (not (= lambda!260026 lambda!260025))))

(assert (=> b!5196170 true))

(assert (=> b!5196170 true))

(declare-fun b!5196166 () Bool)

(assert (=> b!5196166 true))

(declare-fun b!5196155 () Bool)

(declare-fun e!3236098 () Bool)

(declare-fun tp!1457713 () Bool)

(declare-fun tp!1457716 () Bool)

(assert (=> b!5196155 (= e!3236098 (and tp!1457713 tp!1457716))))

(declare-fun b!5196156 () Bool)

(declare-fun e!3236095 () Bool)

(declare-fun tp!1457721 () Bool)

(assert (=> b!5196156 (= e!3236095 tp!1457721)))

(declare-fun b!5196157 () Bool)

(declare-fun res!2207282 () Bool)

(declare-fun e!3236101 () Bool)

(assert (=> b!5196157 (=> (not res!2207282) (not e!3236101))))

(declare-datatypes ((C!29792 0))(
  ( (C!29793 (val!24598 Int)) )
))
(declare-datatypes ((Regex!14761 0))(
  ( (ElementMatch!14761 (c!895542 C!29792)) (Concat!23606 (regOne!30034 Regex!14761) (regTwo!30034 Regex!14761)) (EmptyExpr!14761) (Star!14761 (reg!15090 Regex!14761)) (EmptyLang!14761) (Union!14761 (regOne!30035 Regex!14761) (regTwo!30035 Regex!14761)) )
))
(declare-fun r!7292 () Regex!14761)

(declare-datatypes ((List!60582 0))(
  ( (Nil!60458) (Cons!60458 (h!66906 Regex!14761) (t!373735 List!60582)) )
))
(declare-datatypes ((Context!8290 0))(
  ( (Context!8291 (exprs!4645 List!60582)) )
))
(declare-datatypes ((List!60583 0))(
  ( (Nil!60459) (Cons!60459 (h!66907 Context!8290) (t!373736 List!60583)) )
))
(declare-fun zl!343 () List!60583)

(declare-fun unfocusZipper!503 (List!60583) Regex!14761)

(assert (=> b!5196157 (= res!2207282 (= r!7292 (unfocusZipper!503 zl!343)))))

(declare-fun b!5196158 () Bool)

(declare-fun res!2207286 () Bool)

(declare-fun e!3236092 () Bool)

(assert (=> b!5196158 (=> res!2207286 e!3236092)))

(declare-fun isEmpty!32374 (List!60583) Bool)

(assert (=> b!5196158 (= res!2207286 (not (isEmpty!32374 (t!373736 zl!343))))))

(declare-fun b!5196159 () Bool)

(declare-fun e!3236094 () Bool)

(declare-fun tp_is_empty!38775 () Bool)

(declare-fun tp!1457720 () Bool)

(assert (=> b!5196159 (= e!3236094 (and tp_is_empty!38775 tp!1457720))))

(declare-fun b!5196160 () Bool)

(declare-fun e!3236100 () Bool)

(declare-fun e!3236096 () Bool)

(assert (=> b!5196160 (= e!3236100 e!3236096)))

(declare-fun res!2207277 () Bool)

(assert (=> b!5196160 (=> res!2207277 e!3236096)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2138983 () (InoxSet Context!8290))

(declare-fun lt!2138979 () (InoxSet Context!8290))

(assert (=> b!5196160 (= res!2207277 (not (= lt!2138983 lt!2138979)))))

(declare-datatypes ((List!60584 0))(
  ( (Nil!60460) (Cons!60460 (h!66908 C!29792) (t!373737 List!60584)) )
))
(declare-fun s!2326 () List!60584)

(declare-fun derivationStepZipperDown!210 (Regex!14761 Context!8290 C!29792) (InoxSet Context!8290))

(assert (=> b!5196160 (= lt!2138979 (derivationStepZipperDown!210 r!7292 (Context!8291 Nil!60458) (h!66908 s!2326)))))

(declare-fun derivationStepZipperUp!133 (Context!8290 C!29792) (InoxSet Context!8290))

(assert (=> b!5196160 (= lt!2138983 (derivationStepZipperUp!133 (Context!8291 (Cons!60458 r!7292 Nil!60458)) (h!66908 s!2326)))))

(declare-fun b!5196161 () Bool)

(declare-fun e!3236099 () Bool)

(declare-fun tp!1457714 () Bool)

(assert (=> b!5196161 (= e!3236099 tp!1457714)))

(declare-fun b!5196162 () Bool)

(assert (=> b!5196162 (= e!3236101 (not e!3236092))))

(declare-fun res!2207284 () Bool)

(assert (=> b!5196162 (=> res!2207284 e!3236092)))

(get-info :version)

(assert (=> b!5196162 (= res!2207284 (not ((_ is Cons!60459) zl!343)))))

(declare-fun lt!2138978 () Bool)

(declare-fun matchRSpec!1864 (Regex!14761 List!60584) Bool)

(assert (=> b!5196162 (= lt!2138978 (matchRSpec!1864 r!7292 s!2326))))

(declare-fun matchR!6946 (Regex!14761 List!60584) Bool)

(assert (=> b!5196162 (= lt!2138978 (matchR!6946 r!7292 s!2326))))

(declare-datatypes ((Unit!152356 0))(
  ( (Unit!152357) )
))
(declare-fun lt!2138980 () Unit!152356)

(declare-fun mainMatchTheorem!1864 (Regex!14761 List!60584) Unit!152356)

(assert (=> b!5196162 (= lt!2138980 (mainMatchTheorem!1864 r!7292 s!2326))))

(declare-fun b!5196163 () Bool)

(declare-fun res!2207276 () Bool)

(assert (=> b!5196163 (=> res!2207276 e!3236092)))

(assert (=> b!5196163 (= res!2207276 (not ((_ is Cons!60458) (exprs!4645 (h!66907 zl!343)))))))

(declare-fun b!5196164 () Bool)

(declare-fun res!2207280 () Bool)

(assert (=> b!5196164 (=> res!2207280 e!3236100)))

(declare-fun isEmpty!32375 (List!60582) Bool)

(assert (=> b!5196164 (= res!2207280 (not (isEmpty!32375 (t!373735 (exprs!4645 (h!66907 zl!343))))))))

(declare-fun b!5196165 () Bool)

(declare-fun res!2207275 () Bool)

(assert (=> b!5196165 (=> (not res!2207275) (not e!3236101))))

(declare-fun z!1189 () (InoxSet Context!8290))

(declare-fun toList!8545 ((InoxSet Context!8290)) List!60583)

(assert (=> b!5196165 (= res!2207275 (= (toList!8545 z!1189) zl!343))))

(declare-fun e!3236093 () Bool)

(assert (=> b!5196166 (= e!3236096 e!3236093)))

(declare-fun res!2207283 () Bool)

(assert (=> b!5196166 (=> res!2207283 e!3236093)))

(declare-fun derivationStepZipper!1041 ((InoxSet Context!8290) C!29792) (InoxSet Context!8290))

(assert (=> b!5196166 (= res!2207283 (not (= (derivationStepZipper!1041 z!1189 (h!66908 s!2326)) lt!2138979)))))

(declare-fun lambda!260027 () Int)

(declare-fun flatMap!492 ((InoxSet Context!8290) Int) (InoxSet Context!8290))

(assert (=> b!5196166 (= (flatMap!492 z!1189 lambda!260027) (derivationStepZipperUp!133 (h!66907 zl!343) (h!66908 s!2326)))))

(declare-fun lt!2138981 () Unit!152356)

(declare-fun lemmaFlatMapOnSingletonSet!24 ((InoxSet Context!8290) Context!8290 Int) Unit!152356)

(assert (=> b!5196166 (= lt!2138981 (lemmaFlatMapOnSingletonSet!24 z!1189 (h!66907 zl!343) lambda!260027))))

(declare-fun b!5196167 () Bool)

(assert (=> b!5196167 (= e!3236098 tp_is_empty!38775)))

(declare-fun b!5196169 () Bool)

(declare-fun tp!1457717 () Bool)

(declare-fun tp!1457715 () Bool)

(assert (=> b!5196169 (= e!3236098 (and tp!1457717 tp!1457715))))

(assert (=> b!5196170 (= e!3236092 e!3236100)))

(declare-fun res!2207274 () Bool)

(assert (=> b!5196170 (=> res!2207274 e!3236100)))

(declare-fun lt!2138973 () Bool)

(assert (=> b!5196170 (= res!2207274 (or (not (= lt!2138978 lt!2138973)) ((_ is Nil!60460) s!2326)))))

(declare-fun Exists!1942 (Int) Bool)

(assert (=> b!5196170 (= (Exists!1942 lambda!260025) (Exists!1942 lambda!260026))))

(declare-fun lt!2138972 () Unit!152356)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!596 (Regex!14761 Regex!14761 List!60584) Unit!152356)

(assert (=> b!5196170 (= lt!2138972 (lemmaExistCutMatchRandMatchRSpecEquivalent!596 (regOne!30034 r!7292) (regTwo!30034 r!7292) s!2326))))

(assert (=> b!5196170 (= lt!2138973 (Exists!1942 lambda!260025))))

(declare-datatypes ((tuple2!63920 0))(
  ( (tuple2!63921 (_1!35263 List!60584) (_2!35263 List!60584)) )
))
(declare-datatypes ((Option!14872 0))(
  ( (None!14871) (Some!14871 (v!50900 tuple2!63920)) )
))
(declare-fun isDefined!11575 (Option!14872) Bool)

(declare-fun findConcatSeparation!1286 (Regex!14761 Regex!14761 List!60584 List!60584 List!60584) Option!14872)

(assert (=> b!5196170 (= lt!2138973 (isDefined!11575 (findConcatSeparation!1286 (regOne!30034 r!7292) (regTwo!30034 r!7292) Nil!60460 s!2326 s!2326)))))

(declare-fun lt!2138974 () Unit!152356)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1050 (Regex!14761 Regex!14761 List!60584) Unit!152356)

(assert (=> b!5196170 (= lt!2138974 (lemmaFindConcatSeparationEquivalentToExists!1050 (regOne!30034 r!7292) (regTwo!30034 r!7292) s!2326))))

(declare-fun b!5196171 () Bool)

(declare-fun res!2207281 () Bool)

(assert (=> b!5196171 (=> res!2207281 e!3236092)))

(declare-fun generalisedUnion!690 (List!60582) Regex!14761)

(declare-fun unfocusZipperList!203 (List!60583) List!60582)

(assert (=> b!5196171 (= res!2207281 (not (= r!7292 (generalisedUnion!690 (unfocusZipperList!203 zl!343)))))))

(declare-fun tp!1457719 () Bool)

(declare-fun setNonEmpty!32896 () Bool)

(declare-fun setElem!32896 () Context!8290)

(declare-fun setRes!32896 () Bool)

(declare-fun inv!80149 (Context!8290) Bool)

(assert (=> setNonEmpty!32896 (= setRes!32896 (and tp!1457719 (inv!80149 setElem!32896) e!3236095))))

(declare-fun setRest!32896 () (InoxSet Context!8290))

(assert (=> setNonEmpty!32896 (= z!1189 ((_ map or) (store ((as const (Array Context!8290 Bool)) false) setElem!32896 true) setRest!32896))))

(declare-fun setIsEmpty!32896 () Bool)

(assert (=> setIsEmpty!32896 setRes!32896))

(declare-fun b!5196172 () Bool)

(assert (=> b!5196172 (= e!3236093 true)))

(declare-fun lt!2138976 () Context!8290)

(declare-fun lt!2138977 () (InoxSet Context!8290))

(assert (=> b!5196172 (= (flatMap!492 lt!2138977 lambda!260027) (derivationStepZipperUp!133 lt!2138976 (h!66908 s!2326)))))

(declare-fun lt!2138982 () Unit!152356)

(assert (=> b!5196172 (= lt!2138982 (lemmaFlatMapOnSingletonSet!24 lt!2138977 lt!2138976 lambda!260027))))

(declare-fun lt!2138971 () (InoxSet Context!8290))

(declare-fun lt!2138970 () List!60582)

(assert (=> b!5196172 (= lt!2138971 (derivationStepZipperUp!133 (Context!8291 lt!2138970) (h!66908 s!2326)))))

(declare-fun lt!2138975 () (InoxSet Context!8290))

(assert (=> b!5196172 (= lt!2138975 (derivationStepZipperUp!133 lt!2138976 (h!66908 s!2326)))))

(assert (=> b!5196172 (= lt!2138977 (store ((as const (Array Context!8290 Bool)) false) lt!2138976 true))))

(assert (=> b!5196172 (= lt!2138976 (Context!8291 (Cons!60458 (regOne!30034 r!7292) lt!2138970)))))

(assert (=> b!5196172 (= lt!2138970 (Cons!60458 (regTwo!30034 r!7292) Nil!60458))))

(declare-fun b!5196173 () Bool)

(declare-fun res!2207279 () Bool)

(assert (=> b!5196173 (=> res!2207279 e!3236092)))

(assert (=> b!5196173 (= res!2207279 (or ((_ is EmptyExpr!14761) r!7292) ((_ is EmptyLang!14761) r!7292) ((_ is ElementMatch!14761) r!7292) ((_ is Union!14761) r!7292) (not ((_ is Concat!23606) r!7292))))))

(declare-fun b!5196168 () Bool)

(declare-fun res!2207278 () Bool)

(assert (=> b!5196168 (=> res!2207278 e!3236092)))

(declare-fun generalisedConcat!430 (List!60582) Regex!14761)

(assert (=> b!5196168 (= res!2207278 (not (= r!7292 (generalisedConcat!430 (exprs!4645 (h!66907 zl!343))))))))

(declare-fun res!2207285 () Bool)

(assert (=> start!549802 (=> (not res!2207285) (not e!3236101))))

(declare-fun validRegex!6497 (Regex!14761) Bool)

(assert (=> start!549802 (= res!2207285 (validRegex!6497 r!7292))))

(assert (=> start!549802 e!3236101))

(assert (=> start!549802 e!3236098))

(declare-fun condSetEmpty!32896 () Bool)

(assert (=> start!549802 (= condSetEmpty!32896 (= z!1189 ((as const (Array Context!8290 Bool)) false)))))

(assert (=> start!549802 setRes!32896))

(declare-fun e!3236097 () Bool)

(assert (=> start!549802 e!3236097))

(assert (=> start!549802 e!3236094))

(declare-fun b!5196174 () Bool)

(declare-fun tp!1457718 () Bool)

(assert (=> b!5196174 (= e!3236098 tp!1457718)))

(declare-fun b!5196175 () Bool)

(declare-fun tp!1457712 () Bool)

(assert (=> b!5196175 (= e!3236097 (and (inv!80149 (h!66907 zl!343)) e!3236099 tp!1457712))))

(assert (= (and start!549802 res!2207285) b!5196165))

(assert (= (and b!5196165 res!2207275) b!5196157))

(assert (= (and b!5196157 res!2207282) b!5196162))

(assert (= (and b!5196162 (not res!2207284)) b!5196158))

(assert (= (and b!5196158 (not res!2207286)) b!5196168))

(assert (= (and b!5196168 (not res!2207278)) b!5196163))

(assert (= (and b!5196163 (not res!2207276)) b!5196171))

(assert (= (and b!5196171 (not res!2207281)) b!5196173))

(assert (= (and b!5196173 (not res!2207279)) b!5196170))

(assert (= (and b!5196170 (not res!2207274)) b!5196164))

(assert (= (and b!5196164 (not res!2207280)) b!5196160))

(assert (= (and b!5196160 (not res!2207277)) b!5196166))

(assert (= (and b!5196166 (not res!2207283)) b!5196172))

(assert (= (and start!549802 ((_ is ElementMatch!14761) r!7292)) b!5196167))

(assert (= (and start!549802 ((_ is Concat!23606) r!7292)) b!5196155))

(assert (= (and start!549802 ((_ is Star!14761) r!7292)) b!5196174))

(assert (= (and start!549802 ((_ is Union!14761) r!7292)) b!5196169))

(assert (= (and start!549802 condSetEmpty!32896) setIsEmpty!32896))

(assert (= (and start!549802 (not condSetEmpty!32896)) setNonEmpty!32896))

(assert (= setNonEmpty!32896 b!5196156))

(assert (= b!5196175 b!5196161))

(assert (= (and start!549802 ((_ is Cons!60459) zl!343)) b!5196175))

(assert (= (and start!549802 ((_ is Cons!60460) s!2326)) b!5196159))

(declare-fun m!6250202 () Bool)

(assert (=> b!5196157 m!6250202))

(declare-fun m!6250204 () Bool)

(assert (=> start!549802 m!6250204))

(declare-fun m!6250206 () Bool)

(assert (=> b!5196170 m!6250206))

(declare-fun m!6250208 () Bool)

(assert (=> b!5196170 m!6250208))

(declare-fun m!6250210 () Bool)

(assert (=> b!5196170 m!6250210))

(assert (=> b!5196170 m!6250210))

(assert (=> b!5196170 m!6250206))

(declare-fun m!6250212 () Bool)

(assert (=> b!5196170 m!6250212))

(declare-fun m!6250214 () Bool)

(assert (=> b!5196170 m!6250214))

(declare-fun m!6250216 () Bool)

(assert (=> b!5196170 m!6250216))

(declare-fun m!6250218 () Bool)

(assert (=> b!5196158 m!6250218))

(declare-fun m!6250220 () Bool)

(assert (=> b!5196166 m!6250220))

(declare-fun m!6250222 () Bool)

(assert (=> b!5196166 m!6250222))

(declare-fun m!6250224 () Bool)

(assert (=> b!5196166 m!6250224))

(declare-fun m!6250226 () Bool)

(assert (=> b!5196166 m!6250226))

(declare-fun m!6250228 () Bool)

(assert (=> b!5196172 m!6250228))

(declare-fun m!6250230 () Bool)

(assert (=> b!5196172 m!6250230))

(declare-fun m!6250232 () Bool)

(assert (=> b!5196172 m!6250232))

(declare-fun m!6250234 () Bool)

(assert (=> b!5196172 m!6250234))

(declare-fun m!6250236 () Bool)

(assert (=> b!5196172 m!6250236))

(declare-fun m!6250238 () Bool)

(assert (=> setNonEmpty!32896 m!6250238))

(declare-fun m!6250240 () Bool)

(assert (=> b!5196160 m!6250240))

(declare-fun m!6250242 () Bool)

(assert (=> b!5196160 m!6250242))

(declare-fun m!6250244 () Bool)

(assert (=> b!5196164 m!6250244))

(declare-fun m!6250246 () Bool)

(assert (=> b!5196162 m!6250246))

(declare-fun m!6250248 () Bool)

(assert (=> b!5196162 m!6250248))

(declare-fun m!6250250 () Bool)

(assert (=> b!5196162 m!6250250))

(declare-fun m!6250252 () Bool)

(assert (=> b!5196171 m!6250252))

(assert (=> b!5196171 m!6250252))

(declare-fun m!6250254 () Bool)

(assert (=> b!5196171 m!6250254))

(declare-fun m!6250256 () Bool)

(assert (=> b!5196175 m!6250256))

(declare-fun m!6250258 () Bool)

(assert (=> b!5196168 m!6250258))

(declare-fun m!6250260 () Bool)

(assert (=> b!5196165 m!6250260))

(check-sat (not b!5196164) (not b!5196159) (not b!5196169) (not b!5196174) (not b!5196170) (not setNonEmpty!32896) (not b!5196160) (not b!5196171) (not b!5196175) (not b!5196165) tp_is_empty!38775 (not b!5196168) (not b!5196172) (not b!5196155) (not b!5196161) (not b!5196166) (not b!5196156) (not b!5196158) (not start!549802) (not b!5196162) (not b!5196157))
(check-sat)
