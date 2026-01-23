; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!549026 () Bool)

(assert start!549026)

(declare-fun b!5184158 () Bool)

(declare-fun res!2202124 () Bool)

(declare-fun e!3229792 () Bool)

(assert (=> b!5184158 (=> res!2202124 e!3229792)))

(declare-datatypes ((C!29652 0))(
  ( (C!29653 (val!24528 Int)) )
))
(declare-datatypes ((Regex!14691 0))(
  ( (ElementMatch!14691 (c!893476 C!29652)) (Concat!23536 (regOne!29894 Regex!14691) (regTwo!29894 Regex!14691)) (EmptyExpr!14691) (Star!14691 (reg!15020 Regex!14691)) (EmptyLang!14691) (Union!14691 (regOne!29895 Regex!14691) (regTwo!29895 Regex!14691)) )
))
(declare-datatypes ((List!60372 0))(
  ( (Nil!60248) (Cons!60248 (h!66696 Regex!14691) (t!373525 List!60372)) )
))
(declare-datatypes ((Context!8150 0))(
  ( (Context!8151 (exprs!4575 List!60372)) )
))
(declare-datatypes ((List!60373 0))(
  ( (Nil!60249) (Cons!60249 (h!66697 Context!8150) (t!373526 List!60373)) )
))
(declare-fun zl!343 () List!60373)

(declare-fun isEmpty!32245 (List!60373) Bool)

(assert (=> b!5184158 (= res!2202124 (not (isEmpty!32245 (t!373526 zl!343))))))

(declare-fun setIsEmpty!32620 () Bool)

(declare-fun setRes!32620 () Bool)

(assert (=> setIsEmpty!32620 setRes!32620))

(declare-fun b!5184159 () Bool)

(declare-fun e!3229790 () Bool)

(declare-fun tp!1454336 () Bool)

(assert (=> b!5184159 (= e!3229790 tp!1454336)))

(declare-fun b!5184160 () Bool)

(declare-fun res!2202126 () Bool)

(declare-fun e!3229791 () Bool)

(assert (=> b!5184160 (=> (not res!2202126) (not e!3229791))))

(declare-fun r!7292 () Regex!14691)

(declare-fun unfocusZipper!433 (List!60373) Regex!14691)

(assert (=> b!5184160 (= res!2202126 (= r!7292 (unfocusZipper!433 zl!343)))))

(declare-fun b!5184161 () Bool)

(declare-fun res!2202118 () Bool)

(assert (=> b!5184161 (=> (not res!2202118) (not e!3229791))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!8150))

(declare-fun toList!8475 ((InoxSet Context!8150)) List!60373)

(assert (=> b!5184161 (= res!2202118 (= (toList!8475 z!1189) zl!343))))

(declare-fun b!5184162 () Bool)

(declare-fun res!2202117 () Bool)

(assert (=> b!5184162 (=> res!2202117 e!3229792)))

(get-info :version)

(assert (=> b!5184162 (= res!2202117 (or ((_ is EmptyExpr!14691) r!7292) (not ((_ is EmptyLang!14691) r!7292))))))

(declare-fun b!5184163 () Bool)

(declare-fun tp!1454341 () Bool)

(declare-fun tp!1454345 () Bool)

(assert (=> b!5184163 (= e!3229790 (and tp!1454341 tp!1454345))))

(declare-fun b!5184164 () Bool)

(declare-fun e!3229797 () Bool)

(declare-fun tp!1454342 () Bool)

(assert (=> b!5184164 (= e!3229797 tp!1454342)))

(declare-fun b!5184165 () Bool)

(declare-fun res!2202116 () Bool)

(declare-fun e!3229795 () Bool)

(assert (=> b!5184165 (=> res!2202116 e!3229795)))

(declare-fun lt!2136244 () List!60372)

(declare-fun head!11090 (List!60372) Regex!14691)

(assert (=> b!5184165 (= res!2202116 (not (= (head!11090 lt!2136244) EmptyLang!14691)))))

(declare-fun b!5184166 () Bool)

(declare-fun tp_is_empty!38635 () Bool)

(assert (=> b!5184166 (= e!3229790 tp_is_empty!38635)))

(declare-fun b!5184167 () Bool)

(assert (=> b!5184167 (= e!3229795 true)))

(declare-datatypes ((List!60374 0))(
  ( (Nil!60250) (Cons!60250 (h!66698 C!29652) (t!373527 List!60374)) )
))
(declare-fun s!2326 () List!60374)

(declare-fun matchZipper!997 ((InoxSet Context!8150) List!60374) Bool)

(assert (=> b!5184167 (not (matchZipper!997 z!1189 s!2326))))

(declare-datatypes ((Unit!152216 0))(
  ( (Unit!152217) )
))
(declare-fun lt!2136246 () Unit!152216)

(declare-fun lt!2136245 () Context!8150)

(declare-fun lemmaZipperStartingWithEmptyLangMatchesNothing!2 ((InoxSet Context!8150) Context!8150 List!60374) Unit!152216)

(assert (=> b!5184167 (= lt!2136246 (lemmaZipperStartingWithEmptyLangMatchesNothing!2 z!1189 lt!2136245 s!2326))))

(declare-fun b!5184168 () Bool)

(assert (=> b!5184168 (= e!3229791 (not e!3229792))))

(declare-fun res!2202121 () Bool)

(assert (=> b!5184168 (=> res!2202121 e!3229792)))

(assert (=> b!5184168 (= res!2202121 (not ((_ is Cons!60249) zl!343)))))

(declare-fun matchR!6876 (Regex!14691 List!60374) Bool)

(declare-fun matchRSpec!1794 (Regex!14691 List!60374) Bool)

(assert (=> b!5184168 (= (matchR!6876 r!7292 s!2326) (matchRSpec!1794 r!7292 s!2326))))

(declare-fun lt!2136247 () Unit!152216)

(declare-fun mainMatchTheorem!1794 (Regex!14691 List!60374) Unit!152216)

(assert (=> b!5184168 (= lt!2136247 (mainMatchTheorem!1794 r!7292 s!2326))))

(declare-fun b!5184169 () Bool)

(declare-fun res!2202123 () Bool)

(assert (=> b!5184169 (=> res!2202123 e!3229792)))

(declare-fun generalisedUnion!620 (List!60372) Regex!14691)

(declare-fun unfocusZipperList!133 (List!60373) List!60372)

(assert (=> b!5184169 (= res!2202123 (not (= r!7292 (generalisedUnion!620 (unfocusZipperList!133 zl!343)))))))

(declare-fun e!3229793 () Bool)

(declare-fun tp!1454340 () Bool)

(declare-fun setElem!32620 () Context!8150)

(declare-fun setNonEmpty!32620 () Bool)

(declare-fun inv!79974 (Context!8150) Bool)

(assert (=> setNonEmpty!32620 (= setRes!32620 (and tp!1454340 (inv!79974 setElem!32620) e!3229793))))

(declare-fun setRest!32620 () (InoxSet Context!8150))

(assert (=> setNonEmpty!32620 (= z!1189 ((_ map or) (store ((as const (Array Context!8150 Bool)) false) setElem!32620 true) setRest!32620))))

(declare-fun e!3229794 () Bool)

(declare-fun b!5184170 () Bool)

(declare-fun tp!1454337 () Bool)

(assert (=> b!5184170 (= e!3229794 (and (inv!79974 (h!66697 zl!343)) e!3229797 tp!1454337))))

(declare-fun b!5184171 () Bool)

(declare-fun tp!1454344 () Bool)

(assert (=> b!5184171 (= e!3229793 tp!1454344)))

(declare-fun b!5184172 () Bool)

(declare-fun res!2202115 () Bool)

(assert (=> b!5184172 (=> res!2202115 e!3229792)))

(assert (=> b!5184172 (= res!2202115 (not ((_ is Cons!60248) (exprs!4575 (h!66697 zl!343)))))))

(declare-fun res!2202119 () Bool)

(assert (=> start!549026 (=> (not res!2202119) (not e!3229791))))

(declare-fun validRegex!6427 (Regex!14691) Bool)

(assert (=> start!549026 (= res!2202119 (validRegex!6427 r!7292))))

(assert (=> start!549026 e!3229791))

(assert (=> start!549026 e!3229790))

(declare-fun condSetEmpty!32620 () Bool)

(assert (=> start!549026 (= condSetEmpty!32620 (= z!1189 ((as const (Array Context!8150 Bool)) false)))))

(assert (=> start!549026 setRes!32620))

(assert (=> start!549026 e!3229794))

(declare-fun e!3229796 () Bool)

(assert (=> start!549026 e!3229796))

(declare-fun b!5184173 () Bool)

(declare-fun tp!1454338 () Bool)

(declare-fun tp!1454339 () Bool)

(assert (=> b!5184173 (= e!3229790 (and tp!1454338 tp!1454339))))

(declare-fun b!5184174 () Bool)

(declare-fun tp!1454343 () Bool)

(assert (=> b!5184174 (= e!3229796 (and tp_is_empty!38635 tp!1454343))))

(declare-fun b!5184175 () Bool)

(declare-fun res!2202125 () Bool)

(assert (=> b!5184175 (=> res!2202125 e!3229792)))

(declare-fun generalisedConcat!360 (List!60372) Regex!14691)

(assert (=> b!5184175 (= res!2202125 (not (= r!7292 (generalisedConcat!360 (exprs!4575 (h!66697 zl!343))))))))

(declare-fun b!5184176 () Bool)

(declare-fun res!2202120 () Bool)

(assert (=> b!5184176 (=> res!2202120 e!3229795)))

(declare-fun isEmpty!32246 (List!60372) Bool)

(assert (=> b!5184176 (= res!2202120 (isEmpty!32246 lt!2136244))))

(declare-fun b!5184177 () Bool)

(assert (=> b!5184177 (= e!3229792 e!3229795)))

(declare-fun res!2202122 () Bool)

(assert (=> b!5184177 (=> res!2202122 e!3229795)))

(assert (=> b!5184177 (= res!2202122 (not (= z!1189 (store ((as const (Array Context!8150 Bool)) false) lt!2136245 true))))))

(assert (=> b!5184177 (= lt!2136245 (Context!8151 lt!2136244))))

(assert (=> b!5184177 (= lt!2136244 (Cons!60248 r!7292 Nil!60248))))

(assert (= (and start!549026 res!2202119) b!5184161))

(assert (= (and b!5184161 res!2202118) b!5184160))

(assert (= (and b!5184160 res!2202126) b!5184168))

(assert (= (and b!5184168 (not res!2202121)) b!5184158))

(assert (= (and b!5184158 (not res!2202124)) b!5184175))

(assert (= (and b!5184175 (not res!2202125)) b!5184172))

(assert (= (and b!5184172 (not res!2202115)) b!5184169))

(assert (= (and b!5184169 (not res!2202123)) b!5184162))

(assert (= (and b!5184162 (not res!2202117)) b!5184177))

(assert (= (and b!5184177 (not res!2202122)) b!5184176))

(assert (= (and b!5184176 (not res!2202120)) b!5184165))

(assert (= (and b!5184165 (not res!2202116)) b!5184167))

(assert (= (and start!549026 ((_ is ElementMatch!14691) r!7292)) b!5184166))

(assert (= (and start!549026 ((_ is Concat!23536) r!7292)) b!5184163))

(assert (= (and start!549026 ((_ is Star!14691) r!7292)) b!5184159))

(assert (= (and start!549026 ((_ is Union!14691) r!7292)) b!5184173))

(assert (= (and start!549026 condSetEmpty!32620) setIsEmpty!32620))

(assert (= (and start!549026 (not condSetEmpty!32620)) setNonEmpty!32620))

(assert (= setNonEmpty!32620 b!5184171))

(assert (= b!5184170 b!5184164))

(assert (= (and start!549026 ((_ is Cons!60249) zl!343)) b!5184170))

(assert (= (and start!549026 ((_ is Cons!60250) s!2326)) b!5184174))

(declare-fun m!6243476 () Bool)

(assert (=> start!549026 m!6243476))

(declare-fun m!6243478 () Bool)

(assert (=> b!5184168 m!6243478))

(declare-fun m!6243480 () Bool)

(assert (=> b!5184168 m!6243480))

(declare-fun m!6243482 () Bool)

(assert (=> b!5184168 m!6243482))

(declare-fun m!6243484 () Bool)

(assert (=> b!5184158 m!6243484))

(declare-fun m!6243486 () Bool)

(assert (=> b!5184160 m!6243486))

(declare-fun m!6243488 () Bool)

(assert (=> b!5184165 m!6243488))

(declare-fun m!6243490 () Bool)

(assert (=> setNonEmpty!32620 m!6243490))

(declare-fun m!6243492 () Bool)

(assert (=> b!5184176 m!6243492))

(declare-fun m!6243494 () Bool)

(assert (=> b!5184177 m!6243494))

(declare-fun m!6243496 () Bool)

(assert (=> b!5184175 m!6243496))

(declare-fun m!6243498 () Bool)

(assert (=> b!5184161 m!6243498))

(declare-fun m!6243500 () Bool)

(assert (=> b!5184170 m!6243500))

(declare-fun m!6243502 () Bool)

(assert (=> b!5184167 m!6243502))

(declare-fun m!6243504 () Bool)

(assert (=> b!5184167 m!6243504))

(declare-fun m!6243506 () Bool)

(assert (=> b!5184169 m!6243506))

(assert (=> b!5184169 m!6243506))

(declare-fun m!6243508 () Bool)

(assert (=> b!5184169 m!6243508))

(check-sat (not b!5184175) (not b!5184168) (not b!5184174) (not b!5184158) (not b!5184163) (not b!5184161) (not b!5184164) (not b!5184160) (not b!5184170) (not b!5184159) (not b!5184176) (not b!5184165) (not b!5184169) (not start!549026) (not b!5184167) (not b!5184171) (not b!5184173) tp_is_empty!38635 (not setNonEmpty!32620))
(check-sat)
