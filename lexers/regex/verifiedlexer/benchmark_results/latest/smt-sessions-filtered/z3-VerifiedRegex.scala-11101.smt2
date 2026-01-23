; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!573822 () Bool)

(assert start!573822)

(declare-fun b!5490044 () Bool)

(assert (=> b!5490044 true))

(declare-fun b!5490047 () Bool)

(assert (=> b!5490047 true))

(declare-fun bs!1267182 () Bool)

(declare-fun b!5490052 () Bool)

(assert (= bs!1267182 (and b!5490052 b!5490044)))

(declare-fun lambda!293983 () Int)

(declare-fun lambda!293981 () Int)

(assert (=> bs!1267182 (not (= lambda!293983 lambda!293981))))

(declare-fun b!5490036 () Bool)

(declare-fun res!2341633 () Bool)

(declare-fun e!3397011 () Bool)

(assert (=> b!5490036 (=> res!2341633 e!3397011)))

(declare-datatypes ((C!31168 0))(
  ( (C!31169 (val!25286 Int)) )
))
(declare-datatypes ((Regex!15449 0))(
  ( (ElementMatch!15449 (c!958653 C!31168)) (Concat!24294 (regOne!31410 Regex!15449) (regTwo!31410 Regex!15449)) (EmptyExpr!15449) (Star!15449 (reg!15778 Regex!15449)) (EmptyLang!15449) (Union!15449 (regOne!31411 Regex!15449) (regTwo!31411 Regex!15449)) )
))
(declare-datatypes ((List!62646 0))(
  ( (Nil!62522) (Cons!62522 (h!68970 Regex!15449) (t!375877 List!62646)) )
))
(declare-datatypes ((Context!9666 0))(
  ( (Context!9667 (exprs!5333 List!62646)) )
))
(declare-datatypes ((List!62647 0))(
  ( (Nil!62523) (Cons!62523 (h!68971 Context!9666) (t!375878 List!62647)) )
))
(declare-fun zl!343 () List!62647)

(declare-fun isEmpty!34339 (List!62647) Bool)

(assert (=> b!5490036 (= res!2341633 (isEmpty!34339 (t!375878 zl!343)))))

(declare-fun setIsEmpty!36315 () Bool)

(declare-fun setRes!36315 () Bool)

(assert (=> setIsEmpty!36315 setRes!36315))

(declare-fun b!5490037 () Bool)

(declare-fun e!3397009 () Bool)

(declare-fun tp!1509339 () Bool)

(assert (=> b!5490037 (= e!3397009 tp!1509339)))

(declare-fun e!3397002 () Bool)

(declare-fun tp!1509335 () Bool)

(declare-fun b!5490038 () Bool)

(declare-fun inv!81869 (Context!9666) Bool)

(assert (=> b!5490038 (= e!3397002 (and (inv!81869 (h!68971 zl!343)) e!3397009 tp!1509335))))

(declare-fun b!5490039 () Bool)

(declare-fun e!3397008 () Bool)

(assert (=> b!5490039 (= e!3397008 (isEmpty!34339 (t!375878 zl!343)))))

(declare-fun b!5490040 () Bool)

(declare-fun e!3397001 () Bool)

(declare-fun tp!1509332 () Bool)

(declare-fun tp!1509333 () Bool)

(assert (=> b!5490040 (= e!3397001 (and tp!1509332 tp!1509333))))

(declare-fun res!2341636 () Bool)

(declare-fun e!3397007 () Bool)

(assert (=> start!573822 (=> (not res!2341636) (not e!3397007))))

(declare-fun r!7292 () Regex!15449)

(declare-fun validRegex!7185 (Regex!15449) Bool)

(assert (=> start!573822 (= res!2341636 (validRegex!7185 r!7292))))

(assert (=> start!573822 e!3397007))

(assert (=> start!573822 e!3397001))

(declare-fun condSetEmpty!36315 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!9666))

(assert (=> start!573822 (= condSetEmpty!36315 (= z!1189 ((as const (Array Context!9666 Bool)) false)))))

(assert (=> start!573822 setRes!36315))

(assert (=> start!573822 e!3397002))

(declare-fun e!3397012 () Bool)

(assert (=> start!573822 e!3397012))

(declare-fun b!5490041 () Bool)

(declare-fun res!2341635 () Bool)

(assert (=> b!5490041 (=> (not res!2341635) (not e!3397007))))

(declare-fun toList!9233 ((InoxSet Context!9666)) List!62647)

(assert (=> b!5490041 (= res!2341635 (= (toList!9233 z!1189) zl!343))))

(declare-fun b!5490042 () Bool)

(assert (=> b!5490042 (= e!3397007 (not e!3397011))))

(declare-fun res!2341638 () Bool)

(assert (=> b!5490042 (=> res!2341638 e!3397011)))

(assert (=> b!5490042 (= res!2341638 e!3397008)))

(declare-fun res!2341641 () Bool)

(assert (=> b!5490042 (=> (not res!2341641) (not e!3397008))))

(get-info :version)

(assert (=> b!5490042 (= res!2341641 ((_ is Cons!62523) zl!343))))

(declare-fun lt!2242298 () Bool)

(declare-datatypes ((List!62648 0))(
  ( (Nil!62524) (Cons!62524 (h!68972 C!31168) (t!375879 List!62648)) )
))
(declare-fun s!2326 () List!62648)

(declare-fun matchRSpec!2552 (Regex!15449 List!62648) Bool)

(assert (=> b!5490042 (= lt!2242298 (matchRSpec!2552 r!7292 s!2326))))

(declare-fun matchR!7634 (Regex!15449 List!62648) Bool)

(assert (=> b!5490042 (= lt!2242298 (matchR!7634 r!7292 s!2326))))

(declare-datatypes ((Unit!155354 0))(
  ( (Unit!155355) )
))
(declare-fun lt!2242294 () Unit!155354)

(declare-fun mainMatchTheorem!2552 (Regex!15449 List!62648) Unit!155354)

(assert (=> b!5490042 (= lt!2242294 (mainMatchTheorem!2552 r!7292 s!2326))))

(declare-fun b!5490043 () Bool)

(declare-fun res!2341632 () Bool)

(declare-fun e!3397004 () Bool)

(assert (=> b!5490043 (=> res!2341632 e!3397004)))

(declare-fun lt!2242300 () List!62646)

(declare-fun exists!2122 (List!62646 Int) Bool)

(assert (=> b!5490043 (= res!2341632 (exists!2122 lt!2242300 lambda!293981))))

(assert (=> b!5490044 (= e!3397011 e!3397004)))

(declare-fun res!2341639 () Bool)

(assert (=> b!5490044 (=> res!2341639 e!3397004)))

(assert (=> b!5490044 (= res!2341639 lt!2242298)))

(assert (=> b!5490044 (= lt!2242298 (exists!2122 lt!2242300 lambda!293981))))

(declare-fun lt!2242304 () Unit!155354)

(declare-fun matchRGenUnionSpec!282 (Regex!15449 List!62646 List!62648) Unit!155354)

(assert (=> b!5490044 (= lt!2242304 (matchRGenUnionSpec!282 r!7292 lt!2242300 s!2326))))

(declare-fun unfocusZipperList!881 (List!62647) List!62646)

(assert (=> b!5490044 (= lt!2242300 (unfocusZipperList!881 zl!343))))

(declare-fun b!5490045 () Bool)

(declare-fun tp_is_empty!40151 () Bool)

(assert (=> b!5490045 (= e!3397001 tp_is_empty!40151)))

(declare-fun b!5490046 () Bool)

(declare-fun res!2341642 () Bool)

(assert (=> b!5490046 (=> (not res!2341642) (not e!3397007))))

(declare-fun unfocusZipper!1191 (List!62647) Regex!15449)

(assert (=> b!5490046 (= res!2341642 (= r!7292 (unfocusZipper!1191 zl!343)))))

(declare-fun e!3397005 () Bool)

(assert (=> b!5490047 (= e!3397004 e!3397005)))

(declare-fun res!2341640 () Bool)

(assert (=> b!5490047 (=> res!2341640 e!3397005)))

(declare-fun lambda!293982 () Int)

(declare-fun exists!2123 (List!62647 Int) Bool)

(assert (=> b!5490047 (= res!2341640 (not (exists!2123 zl!343 lambda!293982)))))

(assert (=> b!5490047 (exists!2123 zl!343 lambda!293982)))

(declare-fun lt!2242295 () Unit!155354)

(declare-fun lemmaZipperMatchesExistsMatchingContext!76 (List!62647 List!62648) Unit!155354)

(assert (=> b!5490047 (= lt!2242295 (lemmaZipperMatchesExistsMatchingContext!76 zl!343 s!2326))))

(declare-fun b!5490048 () Bool)

(declare-fun tp!1509338 () Bool)

(assert (=> b!5490048 (= e!3397001 tp!1509338)))

(declare-fun b!5490049 () Bool)

(declare-fun res!2341634 () Bool)

(assert (=> b!5490049 (=> res!2341634 e!3397004)))

(declare-fun matchZipper!1633 ((InoxSet Context!9666) List!62648) Bool)

(assert (=> b!5490049 (= res!2341634 (not (matchZipper!1633 z!1189 s!2326)))))

(declare-fun b!5490050 () Bool)

(declare-fun e!3397003 () Bool)

(declare-fun e!3397010 () Bool)

(assert (=> b!5490050 (= e!3397003 e!3397010)))

(declare-fun res!2341630 () Bool)

(assert (=> b!5490050 (=> res!2341630 e!3397010)))

(declare-fun lt!2242296 () Int)

(declare-fun lt!2242299 () List!62647)

(declare-fun zipperDepthTotal!214 (List!62647) Int)

(assert (=> b!5490050 (= res!2341630 (<= lt!2242296 (zipperDepthTotal!214 lt!2242299)))))

(declare-fun lt!2242297 () Context!9666)

(assert (=> b!5490050 (= lt!2242299 (Cons!62523 lt!2242297 Nil!62523))))

(declare-fun lt!2242291 () Int)

(assert (=> b!5490050 (< lt!2242291 lt!2242296)))

(assert (=> b!5490050 (= lt!2242296 (zipperDepthTotal!214 zl!343))))

(declare-fun contextDepthTotal!194 (Context!9666) Int)

(assert (=> b!5490050 (= lt!2242291 (contextDepthTotal!194 lt!2242297))))

(declare-fun lt!2242303 () Unit!155354)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne!22 (List!62647 Context!9666) Unit!155354)

(assert (=> b!5490050 (= lt!2242303 (lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne!22 zl!343 lt!2242297))))

(declare-fun setNonEmpty!36315 () Bool)

(declare-fun tp!1509336 () Bool)

(declare-fun setElem!36315 () Context!9666)

(declare-fun e!3397006 () Bool)

(assert (=> setNonEmpty!36315 (= setRes!36315 (and tp!1509336 (inv!81869 setElem!36315) e!3397006))))

(declare-fun setRest!36315 () (InoxSet Context!9666))

(assert (=> setNonEmpty!36315 (= z!1189 ((_ map or) (store ((as const (Array Context!9666 Bool)) false) setElem!36315 true) setRest!36315))))

(declare-fun b!5490051 () Bool)

(assert (=> b!5490051 (= e!3397010 true)))

(declare-fun lt!2242305 () Regex!15449)

(declare-fun contains!19761 (List!62646 Regex!15449) Bool)

(assert (=> b!5490051 (contains!19761 lt!2242300 lt!2242305)))

(declare-fun lt!2242292 () Unit!155354)

(declare-fun lemmaZipperContainsContextUnfocusListContainsConcat!6 (List!62647 Context!9666) Unit!155354)

(assert (=> b!5490051 (= lt!2242292 (lemmaZipperContainsContextUnfocusListContainsConcat!6 zl!343 lt!2242297))))

(declare-fun lt!2242302 () (InoxSet Context!9666))

(assert (=> b!5490051 (= (matchR!7634 lt!2242305 s!2326) (matchZipper!1633 lt!2242302 s!2326))))

(declare-fun lt!2242301 () Unit!155354)

(declare-fun theoremZipperRegexEquiv!607 ((InoxSet Context!9666) List!62647 Regex!15449 List!62648) Unit!155354)

(assert (=> b!5490051 (= lt!2242301 (theoremZipperRegexEquiv!607 lt!2242302 lt!2242299 lt!2242305 s!2326))))

(declare-fun generalisedConcat!1068 (List!62646) Regex!15449)

(assert (=> b!5490051 (= lt!2242305 (generalisedConcat!1068 (exprs!5333 lt!2242297)))))

(assert (=> b!5490051 (= lt!2242302 (store ((as const (Array Context!9666 Bool)) false) lt!2242297 true))))

(assert (=> b!5490052 (= e!3397005 e!3397003)))

(declare-fun res!2341631 () Bool)

(assert (=> b!5490052 (=> res!2341631 e!3397003)))

(declare-fun forall!14646 (List!62646 Int) Bool)

(assert (=> b!5490052 (= res!2341631 (not (forall!14646 (exprs!5333 lt!2242297) lambda!293983)))))

(assert (=> b!5490052 (forall!14646 (exprs!5333 lt!2242297) lambda!293983)))

(declare-fun lt!2242293 () Unit!155354)

(declare-fun lemmaContextForallValidExprs!54 (Context!9666 List!62646) Unit!155354)

(assert (=> b!5490052 (= lt!2242293 (lemmaContextForallValidExprs!54 lt!2242297 (exprs!5333 lt!2242297)))))

(declare-fun getWitness!910 (List!62647 Int) Context!9666)

(assert (=> b!5490052 (= lt!2242297 (getWitness!910 zl!343 lambda!293982))))

(declare-fun b!5490053 () Bool)

(declare-fun tp!1509330 () Bool)

(assert (=> b!5490053 (= e!3397006 tp!1509330)))

(declare-fun b!5490054 () Bool)

(declare-fun res!2341637 () Bool)

(assert (=> b!5490054 (=> res!2341637 e!3397011)))

(assert (=> b!5490054 (= res!2341637 (or (not ((_ is Cons!62523) zl!343)) ((_ is Nil!62524) s!2326) (not (= zl!343 (Cons!62523 (h!68971 zl!343) (t!375878 zl!343))))))))

(declare-fun b!5490055 () Bool)

(declare-fun tp!1509334 () Bool)

(declare-fun tp!1509337 () Bool)

(assert (=> b!5490055 (= e!3397001 (and tp!1509334 tp!1509337))))

(declare-fun b!5490056 () Bool)

(declare-fun tp!1509331 () Bool)

(assert (=> b!5490056 (= e!3397012 (and tp_is_empty!40151 tp!1509331))))

(assert (= (and start!573822 res!2341636) b!5490041))

(assert (= (and b!5490041 res!2341635) b!5490046))

(assert (= (and b!5490046 res!2341642) b!5490042))

(assert (= (and b!5490042 res!2341641) b!5490039))

(assert (= (and b!5490042 (not res!2341638)) b!5490054))

(assert (= (and b!5490054 (not res!2341637)) b!5490036))

(assert (= (and b!5490036 (not res!2341633)) b!5490044))

(assert (= (and b!5490044 (not res!2341639)) b!5490043))

(assert (= (and b!5490043 (not res!2341632)) b!5490049))

(assert (= (and b!5490049 (not res!2341634)) b!5490047))

(assert (= (and b!5490047 (not res!2341640)) b!5490052))

(assert (= (and b!5490052 (not res!2341631)) b!5490050))

(assert (= (and b!5490050 (not res!2341630)) b!5490051))

(assert (= (and start!573822 ((_ is ElementMatch!15449) r!7292)) b!5490045))

(assert (= (and start!573822 ((_ is Concat!24294) r!7292)) b!5490055))

(assert (= (and start!573822 ((_ is Star!15449) r!7292)) b!5490048))

(assert (= (and start!573822 ((_ is Union!15449) r!7292)) b!5490040))

(assert (= (and start!573822 condSetEmpty!36315) setIsEmpty!36315))

(assert (= (and start!573822 (not condSetEmpty!36315)) setNonEmpty!36315))

(assert (= setNonEmpty!36315 b!5490053))

(assert (= b!5490038 b!5490037))

(assert (= (and start!573822 ((_ is Cons!62523) zl!343)) b!5490038))

(assert (= (and start!573822 ((_ is Cons!62524) s!2326)) b!5490056))

(declare-fun m!6503338 () Bool)

(assert (=> b!5490044 m!6503338))

(declare-fun m!6503340 () Bool)

(assert (=> b!5490044 m!6503340))

(declare-fun m!6503342 () Bool)

(assert (=> b!5490044 m!6503342))

(declare-fun m!6503344 () Bool)

(assert (=> b!5490039 m!6503344))

(assert (=> b!5490036 m!6503344))

(declare-fun m!6503346 () Bool)

(assert (=> b!5490050 m!6503346))

(declare-fun m!6503348 () Bool)

(assert (=> b!5490050 m!6503348))

(declare-fun m!6503350 () Bool)

(assert (=> b!5490050 m!6503350))

(declare-fun m!6503352 () Bool)

(assert (=> b!5490050 m!6503352))

(declare-fun m!6503354 () Bool)

(assert (=> b!5490042 m!6503354))

(declare-fun m!6503356 () Bool)

(assert (=> b!5490042 m!6503356))

(declare-fun m!6503358 () Bool)

(assert (=> b!5490042 m!6503358))

(declare-fun m!6503360 () Bool)

(assert (=> b!5490049 m!6503360))

(declare-fun m!6503362 () Bool)

(assert (=> b!5490046 m!6503362))

(declare-fun m!6503364 () Bool)

(assert (=> setNonEmpty!36315 m!6503364))

(declare-fun m!6503366 () Bool)

(assert (=> b!5490051 m!6503366))

(declare-fun m!6503368 () Bool)

(assert (=> b!5490051 m!6503368))

(declare-fun m!6503370 () Bool)

(assert (=> b!5490051 m!6503370))

(declare-fun m!6503372 () Bool)

(assert (=> b!5490051 m!6503372))

(declare-fun m!6503374 () Bool)

(assert (=> b!5490051 m!6503374))

(declare-fun m!6503376 () Bool)

(assert (=> b!5490051 m!6503376))

(declare-fun m!6503378 () Bool)

(assert (=> b!5490051 m!6503378))

(assert (=> b!5490043 m!6503338))

(declare-fun m!6503380 () Bool)

(assert (=> b!5490052 m!6503380))

(assert (=> b!5490052 m!6503380))

(declare-fun m!6503382 () Bool)

(assert (=> b!5490052 m!6503382))

(declare-fun m!6503384 () Bool)

(assert (=> b!5490052 m!6503384))

(declare-fun m!6503386 () Bool)

(assert (=> start!573822 m!6503386))

(declare-fun m!6503388 () Bool)

(assert (=> b!5490041 m!6503388))

(declare-fun m!6503390 () Bool)

(assert (=> b!5490038 m!6503390))

(declare-fun m!6503392 () Bool)

(assert (=> b!5490047 m!6503392))

(assert (=> b!5490047 m!6503392))

(declare-fun m!6503394 () Bool)

(assert (=> b!5490047 m!6503394))

(check-sat (not b!5490053) (not b!5490044) (not b!5490041) (not b!5490038) (not b!5490040) (not b!5490039) (not b!5490048) (not b!5490049) (not b!5490051) (not b!5490046) (not setNonEmpty!36315) (not start!573822) (not b!5490037) (not b!5490052) tp_is_empty!40151 (not b!5490056) (not b!5490042) (not b!5490043) (not b!5490050) (not b!5490055) (not b!5490047) (not b!5490036))
(check-sat)
