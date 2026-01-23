; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!663080 () Bool)

(assert start!663080)

(declare-fun b!6871663 () Bool)

(assert (=> b!6871663 true))

(declare-fun b!6871676 () Bool)

(assert (=> b!6871676 true))

(declare-fun bs!1837291 () Bool)

(declare-fun b!6871672 () Bool)

(assert (= bs!1837291 (and b!6871672 b!6871663)))

(declare-fun lambda!388799 () Int)

(declare-fun lambda!388797 () Int)

(assert (=> bs!1837291 (not (= lambda!388799 lambda!388797))))

(declare-fun b!6871656 () Bool)

(declare-fun res!2802366 () Bool)

(declare-fun e!4141967 () Bool)

(assert (=> b!6871656 (=> (not res!2802366) (not e!4141967))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!33668 0))(
  ( (C!33669 (val!26536 Int)) )
))
(declare-datatypes ((Regex!16699 0))(
  ( (ElementMatch!16699 (c!1278817 C!33668)) (Concat!25544 (regOne!33910 Regex!16699) (regTwo!33910 Regex!16699)) (EmptyExpr!16699) (Star!16699 (reg!17028 Regex!16699)) (EmptyLang!16699) (Union!16699 (regOne!33911 Regex!16699) (regTwo!33911 Regex!16699)) )
))
(declare-datatypes ((List!66396 0))(
  ( (Nil!66272) (Cons!66272 (h!72720 Regex!16699) (t!380139 List!66396)) )
))
(declare-datatypes ((Context!12166 0))(
  ( (Context!12167 (exprs!6583 List!66396)) )
))
(declare-fun z!1189 () (InoxSet Context!12166))

(declare-datatypes ((List!66397 0))(
  ( (Nil!66273) (Cons!66273 (h!72721 Context!12166) (t!380140 List!66397)) )
))
(declare-fun zl!343 () List!66397)

(declare-fun toList!10483 ((InoxSet Context!12166)) List!66397)

(assert (=> b!6871656 (= res!2802366 (= (toList!10483 z!1189) zl!343))))

(declare-fun b!6871657 () Bool)

(declare-fun e!4141962 () Bool)

(declare-fun lt!2458332 () Int)

(declare-fun lt!2458336 () Int)

(assert (=> b!6871657 (= e!4141962 (< lt!2458332 lt!2458336))))

(declare-fun lt!2458327 () Int)

(declare-datatypes ((List!66398 0))(
  ( (Nil!66274) (Cons!66274 (h!72722 C!33668) (t!380141 List!66398)) )
))
(declare-fun s!2326 () List!66398)

(declare-fun size!40715 (List!66398) Int)

(assert (=> b!6871657 (= lt!2458327 (size!40715 s!2326))))

(declare-fun b!6871658 () Bool)

(declare-fun e!4141969 () Bool)

(assert (=> b!6871658 (= e!4141969 e!4141962)))

(declare-fun res!2802367 () Bool)

(assert (=> b!6871658 (=> res!2802367 e!4141962)))

(declare-fun lt!2458338 () Regex!16699)

(declare-fun validRegex!8435 (Regex!16699) Bool)

(assert (=> b!6871658 (= res!2802367 (not (validRegex!8435 lt!2458338)))))

(declare-fun lt!2458330 () Context!12166)

(declare-fun generalisedConcat!2287 (List!66396) Regex!16699)

(assert (=> b!6871658 (= lt!2458338 (generalisedConcat!2287 (exprs!6583 lt!2458330)))))

(declare-fun b!6871659 () Bool)

(declare-fun e!4141965 () Bool)

(declare-fun isEmpty!38630 (List!66397) Bool)

(assert (=> b!6871659 (= e!4141965 (isEmpty!38630 (t!380140 zl!343)))))

(declare-fun b!6871660 () Bool)

(declare-fun res!2802376 () Bool)

(assert (=> b!6871660 (=> res!2802376 e!4141962)))

(declare-fun lt!2458335 () List!66397)

(assert (=> b!6871660 (= res!2802376 (not (= (toList!10483 (store ((as const (Array Context!12166 Bool)) false) lt!2458330 true)) lt!2458335)))))

(declare-fun b!6871661 () Bool)

(declare-fun res!2802372 () Bool)

(assert (=> b!6871661 (=> res!2802372 e!4141962)))

(declare-fun unfocusZipper!2441 (List!66397) Regex!16699)

(assert (=> b!6871661 (= res!2802372 (not (= lt!2458338 (unfocusZipper!2441 lt!2458335))))))

(declare-fun b!6871662 () Bool)

(declare-fun res!2802370 () Bool)

(declare-fun e!4141961 () Bool)

(assert (=> b!6871662 (=> res!2802370 e!4141961)))

(get-info :version)

(assert (=> b!6871662 (= res!2802370 (or (not ((_ is Cons!66273) zl!343)) ((_ is Nil!66274) s!2326) (not (= zl!343 (Cons!66273 (h!72721 zl!343) (t!380140 zl!343))))))))

(declare-fun b!6871664 () Bool)

(declare-fun e!4141963 () Bool)

(declare-fun tp_is_empty!42651 () Bool)

(assert (=> b!6871664 (= e!4141963 tp_is_empty!42651)))

(declare-fun b!6871665 () Bool)

(assert (=> b!6871665 (= e!4141967 (not e!4141961))))

(declare-fun res!2802374 () Bool)

(assert (=> b!6871665 (=> res!2802374 e!4141961)))

(assert (=> b!6871665 (= res!2802374 e!4141965)))

(declare-fun res!2802373 () Bool)

(assert (=> b!6871665 (=> (not res!2802373) (not e!4141965))))

(assert (=> b!6871665 (= res!2802373 ((_ is Cons!66273) zl!343))))

(declare-fun lt!2458329 () Bool)

(declare-fun r!7292 () Regex!16699)

(declare-fun matchRSpec!3800 (Regex!16699 List!66398) Bool)

(assert (=> b!6871665 (= lt!2458329 (matchRSpec!3800 r!7292 s!2326))))

(declare-fun matchR!8882 (Regex!16699 List!66398) Bool)

(assert (=> b!6871665 (= lt!2458329 (matchR!8882 r!7292 s!2326))))

(declare-datatypes ((Unit!160175 0))(
  ( (Unit!160176) )
))
(declare-fun lt!2458333 () Unit!160175)

(declare-fun mainMatchTheorem!3800 (Regex!16699 List!66398) Unit!160175)

(assert (=> b!6871665 (= lt!2458333 (mainMatchTheorem!3800 r!7292 s!2326))))

(declare-fun b!6871666 () Bool)

(declare-fun res!2802368 () Bool)

(assert (=> b!6871666 (=> (not res!2802368) (not e!4141967))))

(assert (=> b!6871666 (= res!2802368 (= r!7292 (unfocusZipper!2441 zl!343)))))

(declare-fun b!6871667 () Bool)

(declare-fun res!2802369 () Bool)

(declare-fun e!4141972 () Bool)

(assert (=> b!6871667 (=> res!2802369 e!4141972)))

(declare-fun matchZipper!2665 ((InoxSet Context!12166) List!66398) Bool)

(assert (=> b!6871667 (= res!2802369 (not (matchZipper!2665 z!1189 s!2326)))))

(declare-fun b!6871668 () Bool)

(declare-fun e!4141968 () Bool)

(assert (=> b!6871668 (= e!4141968 e!4141969)))

(declare-fun res!2802375 () Bool)

(assert (=> b!6871668 (=> res!2802375 e!4141969)))

(assert (=> b!6871668 (= res!2802375 (<= lt!2458336 lt!2458332))))

(declare-fun zipperDepthTotal!448 (List!66397) Int)

(assert (=> b!6871668 (= lt!2458332 (zipperDepthTotal!448 lt!2458335))))

(assert (=> b!6871668 (= lt!2458335 (Cons!66273 lt!2458330 Nil!66273))))

(declare-fun lt!2458339 () Int)

(assert (=> b!6871668 (< lt!2458339 lt!2458336)))

(assert (=> b!6871668 (= lt!2458336 (zipperDepthTotal!448 zl!343))))

(declare-fun contextDepthTotal!420 (Context!12166) Int)

(assert (=> b!6871668 (= lt!2458339 (contextDepthTotal!420 lt!2458330))))

(declare-fun lt!2458340 () Unit!160175)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne!52 (List!66397 Context!12166) Unit!160175)

(assert (=> b!6871668 (= lt!2458340 (lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne!52 zl!343 lt!2458330))))

(declare-fun setIsEmpty!47241 () Bool)

(declare-fun setRes!47241 () Bool)

(assert (=> setIsEmpty!47241 setRes!47241))

(declare-fun b!6871669 () Bool)

(declare-fun e!4141970 () Bool)

(declare-fun tp!1887224 () Bool)

(assert (=> b!6871669 (= e!4141970 tp!1887224)))

(declare-fun e!4141966 () Bool)

(declare-fun tp!1887231 () Bool)

(declare-fun setElem!47241 () Context!12166)

(declare-fun setNonEmpty!47241 () Bool)

(declare-fun inv!84994 (Context!12166) Bool)

(assert (=> setNonEmpty!47241 (= setRes!47241 (and tp!1887231 (inv!84994 setElem!47241) e!4141966))))

(declare-fun setRest!47241 () (InoxSet Context!12166))

(assert (=> setNonEmpty!47241 (= z!1189 ((_ map or) (store ((as const (Array Context!12166 Bool)) false) setElem!47241 true) setRest!47241))))

(declare-fun b!6871670 () Bool)

(declare-fun tp!1887223 () Bool)

(declare-fun tp!1887225 () Bool)

(assert (=> b!6871670 (= e!4141963 (and tp!1887223 tp!1887225))))

(declare-fun b!6871671 () Bool)

(declare-fun e!4141960 () Bool)

(declare-fun tp!1887227 () Bool)

(assert (=> b!6871671 (= e!4141960 (and tp_is_empty!42651 tp!1887227))))

(declare-fun e!4141971 () Bool)

(assert (=> b!6871672 (= e!4141971 e!4141968)))

(declare-fun res!2802365 () Bool)

(assert (=> b!6871672 (=> res!2802365 e!4141968)))

(declare-fun forall!15894 (List!66396 Int) Bool)

(assert (=> b!6871672 (= res!2802365 (not (forall!15894 (exprs!6583 lt!2458330) lambda!388799)))))

(assert (=> b!6871672 (forall!15894 (exprs!6583 lt!2458330) lambda!388799)))

(declare-fun lt!2458337 () Unit!160175)

(declare-fun lemmaContextForallValidExprs!74 (Context!12166 List!66396) Unit!160175)

(assert (=> b!6871672 (= lt!2458337 (lemmaContextForallValidExprs!74 lt!2458330 (exprs!6583 lt!2458330)))))

(declare-fun lambda!388798 () Int)

(declare-fun getWitness!978 (List!66397 Int) Context!12166)

(assert (=> b!6871672 (= lt!2458330 (getWitness!978 zl!343 lambda!388798))))

(declare-fun b!6871673 () Bool)

(declare-fun tp!1887230 () Bool)

(assert (=> b!6871673 (= e!4141966 tp!1887230)))

(declare-fun b!6871674 () Bool)

(declare-fun res!2802363 () Bool)

(assert (=> b!6871674 (=> res!2802363 e!4141961)))

(assert (=> b!6871674 (= res!2802363 (isEmpty!38630 (t!380140 zl!343)))))

(declare-fun b!6871675 () Bool)

(declare-fun res!2802371 () Bool)

(assert (=> b!6871675 (=> res!2802371 e!4141972)))

(declare-fun lt!2458331 () List!66396)

(declare-fun exists!2834 (List!66396 Int) Bool)

(assert (=> b!6871675 (= res!2802371 (exists!2834 lt!2458331 lambda!388797))))

(assert (=> b!6871676 (= e!4141972 e!4141971)))

(declare-fun res!2802364 () Bool)

(assert (=> b!6871676 (=> res!2802364 e!4141971)))

(declare-fun exists!2835 (List!66397 Int) Bool)

(assert (=> b!6871676 (= res!2802364 (not (exists!2835 zl!343 lambda!388798)))))

(assert (=> b!6871676 (exists!2835 zl!343 lambda!388798)))

(declare-fun lt!2458334 () Unit!160175)

(declare-fun lemmaZipperMatchesExistsMatchingContext!98 (List!66397 List!66398) Unit!160175)

(assert (=> b!6871676 (= lt!2458334 (lemmaZipperMatchesExistsMatchingContext!98 zl!343 s!2326))))

(declare-fun b!6871677 () Bool)

(declare-fun tp!1887226 () Bool)

(assert (=> b!6871677 (= e!4141963 tp!1887226)))

(declare-fun tp!1887228 () Bool)

(declare-fun e!4141964 () Bool)

(declare-fun b!6871678 () Bool)

(assert (=> b!6871678 (= e!4141964 (and (inv!84994 (h!72721 zl!343)) e!4141970 tp!1887228))))

(declare-fun b!6871679 () Bool)

(declare-fun tp!1887222 () Bool)

(declare-fun tp!1887229 () Bool)

(assert (=> b!6871679 (= e!4141963 (and tp!1887222 tp!1887229))))

(assert (=> b!6871663 (= e!4141961 e!4141972)))

(declare-fun res!2802378 () Bool)

(assert (=> b!6871663 (=> res!2802378 e!4141972)))

(assert (=> b!6871663 (= res!2802378 lt!2458329)))

(assert (=> b!6871663 (= lt!2458329 (exists!2834 lt!2458331 lambda!388797))))

(declare-fun lt!2458328 () Unit!160175)

(declare-fun matchRGenUnionSpec!338 (Regex!16699 List!66396 List!66398) Unit!160175)

(assert (=> b!6871663 (= lt!2458328 (matchRGenUnionSpec!338 r!7292 lt!2458331 s!2326))))

(declare-fun unfocusZipperList!2116 (List!66397) List!66396)

(assert (=> b!6871663 (= lt!2458331 (unfocusZipperList!2116 zl!343))))

(declare-fun res!2802377 () Bool)

(assert (=> start!663080 (=> (not res!2802377) (not e!4141967))))

(assert (=> start!663080 (= res!2802377 (validRegex!8435 r!7292))))

(assert (=> start!663080 e!4141967))

(assert (=> start!663080 e!4141963))

(declare-fun condSetEmpty!47241 () Bool)

(assert (=> start!663080 (= condSetEmpty!47241 (= z!1189 ((as const (Array Context!12166 Bool)) false)))))

(assert (=> start!663080 setRes!47241))

(assert (=> start!663080 e!4141964))

(assert (=> start!663080 e!4141960))

(assert (= (and start!663080 res!2802377) b!6871656))

(assert (= (and b!6871656 res!2802366) b!6871666))

(assert (= (and b!6871666 res!2802368) b!6871665))

(assert (= (and b!6871665 res!2802373) b!6871659))

(assert (= (and b!6871665 (not res!2802374)) b!6871662))

(assert (= (and b!6871662 (not res!2802370)) b!6871674))

(assert (= (and b!6871674 (not res!2802363)) b!6871663))

(assert (= (and b!6871663 (not res!2802378)) b!6871675))

(assert (= (and b!6871675 (not res!2802371)) b!6871667))

(assert (= (and b!6871667 (not res!2802369)) b!6871676))

(assert (= (and b!6871676 (not res!2802364)) b!6871672))

(assert (= (and b!6871672 (not res!2802365)) b!6871668))

(assert (= (and b!6871668 (not res!2802375)) b!6871658))

(assert (= (and b!6871658 (not res!2802367)) b!6871660))

(assert (= (and b!6871660 (not res!2802376)) b!6871661))

(assert (= (and b!6871661 (not res!2802372)) b!6871657))

(assert (= (and start!663080 ((_ is ElementMatch!16699) r!7292)) b!6871664))

(assert (= (and start!663080 ((_ is Concat!25544) r!7292)) b!6871670))

(assert (= (and start!663080 ((_ is Star!16699) r!7292)) b!6871677))

(assert (= (and start!663080 ((_ is Union!16699) r!7292)) b!6871679))

(assert (= (and start!663080 condSetEmpty!47241) setIsEmpty!47241))

(assert (= (and start!663080 (not condSetEmpty!47241)) setNonEmpty!47241))

(assert (= setNonEmpty!47241 b!6871673))

(assert (= b!6871678 b!6871669))

(assert (= (and start!663080 ((_ is Cons!66273) zl!343)) b!6871678))

(assert (= (and start!663080 ((_ is Cons!66274) s!2326)) b!6871671))

(declare-fun m!7601952 () Bool)

(assert (=> b!6871663 m!7601952))

(declare-fun m!7601954 () Bool)

(assert (=> b!6871663 m!7601954))

(declare-fun m!7601956 () Bool)

(assert (=> b!6871663 m!7601956))

(declare-fun m!7601958 () Bool)

(assert (=> setNonEmpty!47241 m!7601958))

(declare-fun m!7601960 () Bool)

(assert (=> b!6871678 m!7601960))

(declare-fun m!7601962 () Bool)

(assert (=> b!6871674 m!7601962))

(declare-fun m!7601964 () Bool)

(assert (=> b!6871657 m!7601964))

(declare-fun m!7601966 () Bool)

(assert (=> b!6871672 m!7601966))

(assert (=> b!6871672 m!7601966))

(declare-fun m!7601968 () Bool)

(assert (=> b!6871672 m!7601968))

(declare-fun m!7601970 () Bool)

(assert (=> b!6871672 m!7601970))

(declare-fun m!7601972 () Bool)

(assert (=> b!6871658 m!7601972))

(declare-fun m!7601974 () Bool)

(assert (=> b!6871658 m!7601974))

(declare-fun m!7601976 () Bool)

(assert (=> start!663080 m!7601976))

(declare-fun m!7601978 () Bool)

(assert (=> b!6871666 m!7601978))

(declare-fun m!7601980 () Bool)

(assert (=> b!6871660 m!7601980))

(assert (=> b!6871660 m!7601980))

(declare-fun m!7601982 () Bool)

(assert (=> b!6871660 m!7601982))

(assert (=> b!6871675 m!7601952))

(declare-fun m!7601984 () Bool)

(assert (=> b!6871667 m!7601984))

(declare-fun m!7601986 () Bool)

(assert (=> b!6871668 m!7601986))

(declare-fun m!7601988 () Bool)

(assert (=> b!6871668 m!7601988))

(declare-fun m!7601990 () Bool)

(assert (=> b!6871668 m!7601990))

(declare-fun m!7601992 () Bool)

(assert (=> b!6871668 m!7601992))

(assert (=> b!6871659 m!7601962))

(declare-fun m!7601994 () Bool)

(assert (=> b!6871656 m!7601994))

(declare-fun m!7601996 () Bool)

(assert (=> b!6871676 m!7601996))

(assert (=> b!6871676 m!7601996))

(declare-fun m!7601998 () Bool)

(assert (=> b!6871676 m!7601998))

(declare-fun m!7602000 () Bool)

(assert (=> b!6871661 m!7602000))

(declare-fun m!7602002 () Bool)

(assert (=> b!6871665 m!7602002))

(declare-fun m!7602004 () Bool)

(assert (=> b!6871665 m!7602004))

(declare-fun m!7602006 () Bool)

(assert (=> b!6871665 m!7602006))

(check-sat (not b!6871661) (not b!6871667) (not b!6871677) tp_is_empty!42651 (not b!6871663) (not b!6871670) (not b!6871669) (not b!6871674) (not b!6871676) (not b!6871672) (not b!6871671) (not b!6871665) (not b!6871679) (not b!6871656) (not b!6871675) (not setNonEmpty!47241) (not b!6871660) (not b!6871657) (not b!6871668) (not start!663080) (not b!6871658) (not b!6871659) (not b!6871673) (not b!6871678) (not b!6871666))
(check-sat)
