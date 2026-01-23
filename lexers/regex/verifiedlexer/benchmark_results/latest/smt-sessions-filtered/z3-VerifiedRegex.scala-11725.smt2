; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!662864 () Bool)

(assert start!662864)

(declare-fun b!6867798 () Bool)

(assert (=> b!6867798 true))

(declare-fun b!6867794 () Bool)

(assert (=> b!6867794 true))

(declare-fun bs!1835715 () Bool)

(declare-fun b!6867793 () Bool)

(assert (= bs!1835715 (and b!6867793 b!6867798)))

(declare-fun lambda!388573 () Int)

(declare-fun lambda!388571 () Int)

(assert (=> bs!1835715 (not (= lambda!388573 lambda!388571))))

(declare-fun b!6867785 () Bool)

(declare-fun e!4139940 () Bool)

(declare-fun tp_is_empty!42647 () Bool)

(declare-fun tp!1885302 () Bool)

(assert (=> b!6867785 (= e!4139940 (and tp_is_empty!42647 tp!1885302))))

(declare-fun b!6867786 () Bool)

(declare-fun e!4139936 () Bool)

(declare-fun e!4139943 () Bool)

(assert (=> b!6867786 (= e!4139936 (not e!4139943))))

(declare-fun res!2801338 () Bool)

(assert (=> b!6867786 (=> res!2801338 e!4139943)))

(declare-fun e!4139938 () Bool)

(assert (=> b!6867786 (= res!2801338 e!4139938)))

(declare-fun res!2801331 () Bool)

(assert (=> b!6867786 (=> (not res!2801331) (not e!4139938))))

(declare-datatypes ((C!33664 0))(
  ( (C!33665 (val!26534 Int)) )
))
(declare-datatypes ((Regex!16697 0))(
  ( (ElementMatch!16697 (c!1278149 C!33664)) (Concat!25542 (regOne!33906 Regex!16697) (regTwo!33906 Regex!16697)) (EmptyExpr!16697) (Star!16697 (reg!17026 Regex!16697)) (EmptyLang!16697) (Union!16697 (regOne!33907 Regex!16697) (regTwo!33907 Regex!16697)) )
))
(declare-datatypes ((List!66390 0))(
  ( (Nil!66266) (Cons!66266 (h!72714 Regex!16697) (t!380133 List!66390)) )
))
(declare-datatypes ((Context!12162 0))(
  ( (Context!12163 (exprs!6581 List!66390)) )
))
(declare-datatypes ((List!66391 0))(
  ( (Nil!66267) (Cons!66267 (h!72715 Context!12162) (t!380134 List!66391)) )
))
(declare-fun zl!343 () List!66391)

(get-info :version)

(assert (=> b!6867786 (= res!2801331 ((_ is Cons!66267) zl!343))))

(declare-fun lt!2458037 () Bool)

(declare-fun r!7292 () Regex!16697)

(declare-datatypes ((List!66392 0))(
  ( (Nil!66268) (Cons!66268 (h!72716 C!33664) (t!380135 List!66392)) )
))
(declare-fun s!2326 () List!66392)

(declare-fun matchRSpec!3798 (Regex!16697 List!66392) Bool)

(assert (=> b!6867786 (= lt!2458037 (matchRSpec!3798 r!7292 s!2326))))

(declare-fun matchR!8880 (Regex!16697 List!66392) Bool)

(assert (=> b!6867786 (= lt!2458037 (matchR!8880 r!7292 s!2326))))

(declare-datatypes ((Unit!160165 0))(
  ( (Unit!160166) )
))
(declare-fun lt!2458036 () Unit!160165)

(declare-fun mainMatchTheorem!3798 (Regex!16697 List!66392) Unit!160165)

(assert (=> b!6867786 (= lt!2458036 (mainMatchTheorem!3798 r!7292 s!2326))))

(declare-fun b!6867787 () Bool)

(declare-fun e!4139946 () Bool)

(declare-fun lt!2458034 () Regex!16697)

(declare-fun lt!2458043 () List!66391)

(declare-fun unfocusZipper!2439 (List!66391) Regex!16697)

(assert (=> b!6867787 (= e!4139946 (= lt!2458034 (unfocusZipper!2439 lt!2458043)))))

(declare-fun b!6867788 () Bool)

(declare-fun res!2801328 () Bool)

(assert (=> b!6867788 (=> res!2801328 e!4139946)))

(declare-fun lt!2458040 () Context!12162)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun toList!10481 ((InoxSet Context!12162)) List!66391)

(assert (=> b!6867788 (= res!2801328 (not (= (toList!10481 (store ((as const (Array Context!12162 Bool)) false) lt!2458040 true)) lt!2458043)))))

(declare-fun setIsEmpty!47225 () Bool)

(declare-fun setRes!47225 () Bool)

(assert (=> setIsEmpty!47225 setRes!47225))

(declare-fun b!6867789 () Bool)

(declare-fun tp!1885300 () Bool)

(declare-fun e!4139947 () Bool)

(declare-fun e!4139945 () Bool)

(declare-fun inv!84989 (Context!12162) Bool)

(assert (=> b!6867789 (= e!4139945 (and (inv!84989 (h!72715 zl!343)) e!4139947 tp!1885300))))

(declare-fun b!6867790 () Bool)

(declare-fun e!4139937 () Bool)

(assert (=> b!6867790 (= e!4139937 tp_is_empty!42647)))

(declare-fun res!2801330 () Bool)

(assert (=> start!662864 (=> (not res!2801330) (not e!4139936))))

(declare-fun validRegex!8433 (Regex!16697) Bool)

(assert (=> start!662864 (= res!2801330 (validRegex!8433 r!7292))))

(assert (=> start!662864 e!4139936))

(assert (=> start!662864 e!4139937))

(declare-fun condSetEmpty!47225 () Bool)

(declare-fun z!1189 () (InoxSet Context!12162))

(assert (=> start!662864 (= condSetEmpty!47225 (= z!1189 ((as const (Array Context!12162 Bool)) false)))))

(assert (=> start!662864 setRes!47225))

(assert (=> start!662864 e!4139945))

(assert (=> start!662864 e!4139940))

(declare-fun b!6867791 () Bool)

(declare-fun e!4139942 () Bool)

(declare-fun e!4139944 () Bool)

(assert (=> b!6867791 (= e!4139942 e!4139944)))

(declare-fun res!2801340 () Bool)

(assert (=> b!6867791 (=> res!2801340 e!4139944)))

(declare-fun lt!2458039 () Int)

(declare-fun zipperDepthTotal!446 (List!66391) Int)

(assert (=> b!6867791 (= res!2801340 (<= lt!2458039 (zipperDepthTotal!446 lt!2458043)))))

(assert (=> b!6867791 (= lt!2458043 (Cons!66267 lt!2458040 Nil!66267))))

(declare-fun lt!2458044 () Int)

(assert (=> b!6867791 (< lt!2458044 lt!2458039)))

(assert (=> b!6867791 (= lt!2458039 (zipperDepthTotal!446 zl!343))))

(declare-fun contextDepthTotal!418 (Context!12162) Int)

(assert (=> b!6867791 (= lt!2458044 (contextDepthTotal!418 lt!2458040))))

(declare-fun lt!2458033 () Unit!160165)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne!50 (List!66391 Context!12162) Unit!160165)

(assert (=> b!6867791 (= lt!2458033 (lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne!50 zl!343 lt!2458040))))

(declare-fun b!6867792 () Bool)

(declare-fun res!2801335 () Bool)

(assert (=> b!6867792 (=> res!2801335 e!4139943)))

(declare-fun isEmpty!38624 (List!66391) Bool)

(assert (=> b!6867792 (= res!2801335 (isEmpty!38624 (t!380134 zl!343)))))

(declare-fun e!4139939 () Bool)

(assert (=> b!6867793 (= e!4139939 e!4139942)))

(declare-fun res!2801326 () Bool)

(assert (=> b!6867793 (=> res!2801326 e!4139942)))

(declare-fun forall!15890 (List!66390 Int) Bool)

(assert (=> b!6867793 (= res!2801326 (not (forall!15890 (exprs!6581 lt!2458040) lambda!388573)))))

(assert (=> b!6867793 (forall!15890 (exprs!6581 lt!2458040) lambda!388573)))

(declare-fun lt!2458038 () Unit!160165)

(declare-fun lemmaContextForallValidExprs!72 (Context!12162 List!66390) Unit!160165)

(assert (=> b!6867793 (= lt!2458038 (lemmaContextForallValidExprs!72 lt!2458040 (exprs!6581 lt!2458040)))))

(declare-fun lambda!388572 () Int)

(declare-fun getWitness!976 (List!66391 Int) Context!12162)

(assert (=> b!6867793 (= lt!2458040 (getWitness!976 zl!343 lambda!388572))))

(declare-fun e!4139948 () Bool)

(assert (=> b!6867794 (= e!4139948 e!4139939)))

(declare-fun res!2801329 () Bool)

(assert (=> b!6867794 (=> res!2801329 e!4139939)))

(declare-fun exists!2828 (List!66391 Int) Bool)

(assert (=> b!6867794 (= res!2801329 (not (exists!2828 zl!343 lambda!388572)))))

(assert (=> b!6867794 (exists!2828 zl!343 lambda!388572)))

(declare-fun lt!2458042 () Unit!160165)

(declare-fun lemmaZipperMatchesExistsMatchingContext!96 (List!66391 List!66392) Unit!160165)

(assert (=> b!6867794 (= lt!2458042 (lemmaZipperMatchesExistsMatchingContext!96 zl!343 s!2326))))

(declare-fun b!6867795 () Bool)

(declare-fun tp!1885303 () Bool)

(assert (=> b!6867795 (= e!4139937 tp!1885303)))

(declare-fun b!6867796 () Bool)

(assert (=> b!6867796 (= e!4139938 (isEmpty!38624 (t!380134 zl!343)))))

(declare-fun setElem!47225 () Context!12162)

(declare-fun tp!1885299 () Bool)

(declare-fun setNonEmpty!47225 () Bool)

(declare-fun e!4139941 () Bool)

(assert (=> setNonEmpty!47225 (= setRes!47225 (and tp!1885299 (inv!84989 setElem!47225) e!4139941))))

(declare-fun setRest!47225 () (InoxSet Context!12162))

(assert (=> setNonEmpty!47225 (= z!1189 ((_ map or) (store ((as const (Array Context!12162 Bool)) false) setElem!47225 true) setRest!47225))))

(declare-fun b!6867797 () Bool)

(declare-fun tp!1885297 () Bool)

(declare-fun tp!1885294 () Bool)

(assert (=> b!6867797 (= e!4139937 (and tp!1885297 tp!1885294))))

(assert (=> b!6867798 (= e!4139943 e!4139948)))

(declare-fun res!2801337 () Bool)

(assert (=> b!6867798 (=> res!2801337 e!4139948)))

(assert (=> b!6867798 (= res!2801337 lt!2458037)))

(declare-fun lt!2458035 () List!66390)

(declare-fun exists!2829 (List!66390 Int) Bool)

(assert (=> b!6867798 (= lt!2458037 (exists!2829 lt!2458035 lambda!388571))))

(declare-fun lt!2458041 () Unit!160165)

(declare-fun matchRGenUnionSpec!336 (Regex!16697 List!66390 List!66392) Unit!160165)

(assert (=> b!6867798 (= lt!2458041 (matchRGenUnionSpec!336 r!7292 lt!2458035 s!2326))))

(declare-fun unfocusZipperList!2114 (List!66391) List!66390)

(assert (=> b!6867798 (= lt!2458035 (unfocusZipperList!2114 zl!343))))

(declare-fun b!6867799 () Bool)

(declare-fun tp!1885298 () Bool)

(assert (=> b!6867799 (= e!4139947 tp!1885298)))

(declare-fun b!6867800 () Bool)

(assert (=> b!6867800 (= e!4139944 e!4139946)))

(declare-fun res!2801334 () Bool)

(assert (=> b!6867800 (=> res!2801334 e!4139946)))

(assert (=> b!6867800 (= res!2801334 (not (validRegex!8433 lt!2458034)))))

(declare-fun generalisedConcat!2285 (List!66390) Regex!16697)

(assert (=> b!6867800 (= lt!2458034 (generalisedConcat!2285 (exprs!6581 lt!2458040)))))

(declare-fun b!6867801 () Bool)

(declare-fun res!2801333 () Bool)

(assert (=> b!6867801 (=> res!2801333 e!4139948)))

(declare-fun matchZipper!2663 ((InoxSet Context!12162) List!66392) Bool)

(assert (=> b!6867801 (= res!2801333 (not (matchZipper!2663 z!1189 s!2326)))))

(declare-fun b!6867802 () Bool)

(declare-fun res!2801332 () Bool)

(assert (=> b!6867802 (=> res!2801332 e!4139948)))

(assert (=> b!6867802 (= res!2801332 (exists!2829 lt!2458035 lambda!388571))))

(declare-fun b!6867803 () Bool)

(declare-fun res!2801339 () Bool)

(assert (=> b!6867803 (=> (not res!2801339) (not e!4139936))))

(assert (=> b!6867803 (= res!2801339 (= r!7292 (unfocusZipper!2439 zl!343)))))

(declare-fun b!6867804 () Bool)

(declare-fun tp!1885296 () Bool)

(assert (=> b!6867804 (= e!4139941 tp!1885296)))

(declare-fun b!6867805 () Bool)

(declare-fun res!2801336 () Bool)

(assert (=> b!6867805 (=> res!2801336 e!4139943)))

(assert (=> b!6867805 (= res!2801336 (or (not ((_ is Cons!66267) zl!343)) ((_ is Nil!66268) s!2326) (not (= zl!343 (Cons!66267 (h!72715 zl!343) (t!380134 zl!343))))))))

(declare-fun b!6867806 () Bool)

(declare-fun res!2801327 () Bool)

(assert (=> b!6867806 (=> (not res!2801327) (not e!4139936))))

(assert (=> b!6867806 (= res!2801327 (= (toList!10481 z!1189) zl!343))))

(declare-fun b!6867807 () Bool)

(declare-fun tp!1885301 () Bool)

(declare-fun tp!1885295 () Bool)

(assert (=> b!6867807 (= e!4139937 (and tp!1885301 tp!1885295))))

(assert (= (and start!662864 res!2801330) b!6867806))

(assert (= (and b!6867806 res!2801327) b!6867803))

(assert (= (and b!6867803 res!2801339) b!6867786))

(assert (= (and b!6867786 res!2801331) b!6867796))

(assert (= (and b!6867786 (not res!2801338)) b!6867805))

(assert (= (and b!6867805 (not res!2801336)) b!6867792))

(assert (= (and b!6867792 (not res!2801335)) b!6867798))

(assert (= (and b!6867798 (not res!2801337)) b!6867802))

(assert (= (and b!6867802 (not res!2801332)) b!6867801))

(assert (= (and b!6867801 (not res!2801333)) b!6867794))

(assert (= (and b!6867794 (not res!2801329)) b!6867793))

(assert (= (and b!6867793 (not res!2801326)) b!6867791))

(assert (= (and b!6867791 (not res!2801340)) b!6867800))

(assert (= (and b!6867800 (not res!2801334)) b!6867788))

(assert (= (and b!6867788 (not res!2801328)) b!6867787))

(assert (= (and start!662864 ((_ is ElementMatch!16697) r!7292)) b!6867790))

(assert (= (and start!662864 ((_ is Concat!25542) r!7292)) b!6867797))

(assert (= (and start!662864 ((_ is Star!16697) r!7292)) b!6867795))

(assert (= (and start!662864 ((_ is Union!16697) r!7292)) b!6867807))

(assert (= (and start!662864 condSetEmpty!47225) setIsEmpty!47225))

(assert (= (and start!662864 (not condSetEmpty!47225)) setNonEmpty!47225))

(assert (= setNonEmpty!47225 b!6867804))

(assert (= b!6867789 b!6867799))

(assert (= (and start!662864 ((_ is Cons!66267) zl!343)) b!6867789))

(assert (= (and start!662864 ((_ is Cons!66268) s!2326)) b!6867785))

(declare-fun m!7599402 () Bool)

(assert (=> b!6867802 m!7599402))

(declare-fun m!7599404 () Bool)

(assert (=> start!662864 m!7599404))

(declare-fun m!7599406 () Bool)

(assert (=> b!6867793 m!7599406))

(assert (=> b!6867793 m!7599406))

(declare-fun m!7599408 () Bool)

(assert (=> b!6867793 m!7599408))

(declare-fun m!7599410 () Bool)

(assert (=> b!6867793 m!7599410))

(declare-fun m!7599412 () Bool)

(assert (=> b!6867800 m!7599412))

(declare-fun m!7599414 () Bool)

(assert (=> b!6867800 m!7599414))

(declare-fun m!7599416 () Bool)

(assert (=> b!6867787 m!7599416))

(assert (=> b!6867798 m!7599402))

(declare-fun m!7599418 () Bool)

(assert (=> b!6867798 m!7599418))

(declare-fun m!7599420 () Bool)

(assert (=> b!6867798 m!7599420))

(declare-fun m!7599422 () Bool)

(assert (=> b!6867796 m!7599422))

(declare-fun m!7599424 () Bool)

(assert (=> b!6867806 m!7599424))

(assert (=> b!6867792 m!7599422))

(declare-fun m!7599426 () Bool)

(assert (=> setNonEmpty!47225 m!7599426))

(declare-fun m!7599428 () Bool)

(assert (=> b!6867794 m!7599428))

(assert (=> b!6867794 m!7599428))

(declare-fun m!7599430 () Bool)

(assert (=> b!6867794 m!7599430))

(declare-fun m!7599432 () Bool)

(assert (=> b!6867788 m!7599432))

(assert (=> b!6867788 m!7599432))

(declare-fun m!7599434 () Bool)

(assert (=> b!6867788 m!7599434))

(declare-fun m!7599436 () Bool)

(assert (=> b!6867786 m!7599436))

(declare-fun m!7599438 () Bool)

(assert (=> b!6867786 m!7599438))

(declare-fun m!7599440 () Bool)

(assert (=> b!6867786 m!7599440))

(declare-fun m!7599442 () Bool)

(assert (=> b!6867789 m!7599442))

(declare-fun m!7599444 () Bool)

(assert (=> b!6867803 m!7599444))

(declare-fun m!7599446 () Bool)

(assert (=> b!6867791 m!7599446))

(declare-fun m!7599448 () Bool)

(assert (=> b!6867791 m!7599448))

(declare-fun m!7599450 () Bool)

(assert (=> b!6867791 m!7599450))

(declare-fun m!7599452 () Bool)

(assert (=> b!6867791 m!7599452))

(declare-fun m!7599454 () Bool)

(assert (=> b!6867801 m!7599454))

(check-sat tp_is_empty!42647 (not b!6867789) (not b!6867787) (not b!6867785) (not b!6867793) (not b!6867804) (not b!6867807) (not start!662864) (not b!6867806) (not b!6867801) (not b!6867799) (not b!6867794) (not b!6867798) (not b!6867803) (not b!6867788) (not b!6867800) (not setNonEmpty!47225) (not b!6867792) (not b!6867797) (not b!6867795) (not b!6867786) (not b!6867802) (not b!6867791) (not b!6867796))
(check-sat)
(get-model)

(declare-fun b!6867923 () Bool)

(assert (=> b!6867923 true))

(assert (=> b!6867923 true))

(declare-fun bs!1835757 () Bool)

(declare-fun b!6867924 () Bool)

(assert (= bs!1835757 (and b!6867924 b!6867923)))

(declare-fun lambda!388601 () Int)

(declare-fun lambda!388599 () Int)

(assert (=> bs!1835757 (not (= lambda!388601 lambda!388599))))

(assert (=> b!6867924 true))

(assert (=> b!6867924 true))

(declare-fun call!625525 () Bool)

(declare-fun bm!625520 () Bool)

(declare-fun c!1278182 () Bool)

(declare-fun Exists!3757 (Int) Bool)

(assert (=> bm!625520 (= call!625525 (Exists!3757 (ite c!1278182 lambda!388599 lambda!388601)))))

(declare-fun b!6867920 () Bool)

(declare-fun c!1278179 () Bool)

(assert (=> b!6867920 (= c!1278179 ((_ is ElementMatch!16697) r!7292))))

(declare-fun e!4140023 () Bool)

(declare-fun e!4140022 () Bool)

(assert (=> b!6867920 (= e!4140023 e!4140022)))

(declare-fun b!6867921 () Bool)

(assert (=> b!6867921 (= e!4140022 (= s!2326 (Cons!66268 (c!1278149 r!7292) Nil!66268)))))

(declare-fun b!6867922 () Bool)

(declare-fun e!4140021 () Bool)

(declare-fun e!4140024 () Bool)

(assert (=> b!6867922 (= e!4140021 e!4140024)))

(assert (=> b!6867922 (= c!1278182 ((_ is Star!16697) r!7292))))

(declare-fun e!4140025 () Bool)

(assert (=> b!6867923 (= e!4140025 call!625525)))

(declare-fun bm!625521 () Bool)

(declare-fun call!625526 () Bool)

(declare-fun isEmpty!38627 (List!66392) Bool)

(assert (=> bm!625521 (= call!625526 (isEmpty!38627 s!2326))))

(declare-fun b!6867925 () Bool)

(declare-fun e!4140026 () Bool)

(assert (=> b!6867925 (= e!4140021 e!4140026)))

(declare-fun res!2801389 () Bool)

(assert (=> b!6867925 (= res!2801389 (matchRSpec!3798 (regOne!33907 r!7292) s!2326))))

(assert (=> b!6867925 (=> res!2801389 e!4140026)))

(declare-fun b!6867926 () Bool)

(declare-fun e!4140020 () Bool)

(assert (=> b!6867926 (= e!4140020 e!4140023)))

(declare-fun res!2801391 () Bool)

(assert (=> b!6867926 (= res!2801391 (not ((_ is EmptyLang!16697) r!7292)))))

(assert (=> b!6867926 (=> (not res!2801391) (not e!4140023))))

(declare-fun b!6867927 () Bool)

(assert (=> b!6867927 (= e!4140020 call!625526)))

(declare-fun b!6867928 () Bool)

(assert (=> b!6867928 (= e!4140026 (matchRSpec!3798 (regTwo!33907 r!7292) s!2326))))

(declare-fun d!2157476 () Bool)

(declare-fun c!1278180 () Bool)

(assert (=> d!2157476 (= c!1278180 ((_ is EmptyExpr!16697) r!7292))))

(assert (=> d!2157476 (= (matchRSpec!3798 r!7292 s!2326) e!4140020)))

(assert (=> b!6867924 (= e!4140024 call!625525)))

(declare-fun b!6867929 () Bool)

(declare-fun res!2801390 () Bool)

(assert (=> b!6867929 (=> res!2801390 e!4140025)))

(assert (=> b!6867929 (= res!2801390 call!625526)))

(assert (=> b!6867929 (= e!4140024 e!4140025)))

(declare-fun b!6867930 () Bool)

(declare-fun c!1278181 () Bool)

(assert (=> b!6867930 (= c!1278181 ((_ is Union!16697) r!7292))))

(assert (=> b!6867930 (= e!4140022 e!4140021)))

(assert (= (and d!2157476 c!1278180) b!6867927))

(assert (= (and d!2157476 (not c!1278180)) b!6867926))

(assert (= (and b!6867926 res!2801391) b!6867920))

(assert (= (and b!6867920 c!1278179) b!6867921))

(assert (= (and b!6867920 (not c!1278179)) b!6867930))

(assert (= (and b!6867930 c!1278181) b!6867925))

(assert (= (and b!6867930 (not c!1278181)) b!6867922))

(assert (= (and b!6867925 (not res!2801389)) b!6867928))

(assert (= (and b!6867922 c!1278182) b!6867929))

(assert (= (and b!6867922 (not c!1278182)) b!6867924))

(assert (= (and b!6867929 (not res!2801390)) b!6867923))

(assert (= (or b!6867923 b!6867924) bm!625520))

(assert (= (or b!6867927 b!6867929) bm!625521))

(declare-fun m!7599518 () Bool)

(assert (=> bm!625520 m!7599518))

(declare-fun m!7599520 () Bool)

(assert (=> bm!625521 m!7599520))

(declare-fun m!7599522 () Bool)

(assert (=> b!6867925 m!7599522))

(declare-fun m!7599524 () Bool)

(assert (=> b!6867928 m!7599524))

(assert (=> b!6867786 d!2157476))

(declare-fun b!6868003 () Bool)

(declare-fun e!4140068 () Bool)

(declare-fun lt!2458085 () Bool)

(assert (=> b!6868003 (= e!4140068 (not lt!2458085))))

(declare-fun b!6868004 () Bool)

(declare-fun res!2801419 () Bool)

(declare-fun e!4140066 () Bool)

(assert (=> b!6868004 (=> res!2801419 e!4140066)))

(declare-fun e!4140063 () Bool)

(assert (=> b!6868004 (= res!2801419 e!4140063)))

(declare-fun res!2801416 () Bool)

(assert (=> b!6868004 (=> (not res!2801416) (not e!4140063))))

(assert (=> b!6868004 (= res!2801416 lt!2458085)))

(declare-fun b!6868005 () Bool)

(declare-fun e!4140064 () Bool)

(assert (=> b!6868005 (= e!4140064 e!4140068)))

(declare-fun c!1278210 () Bool)

(assert (=> b!6868005 (= c!1278210 ((_ is EmptyLang!16697) r!7292))))

(declare-fun b!6868006 () Bool)

(declare-fun res!2801414 () Bool)

(declare-fun e!4140067 () Bool)

(assert (=> b!6868006 (=> res!2801414 e!4140067)))

(declare-fun tail!12835 (List!66392) List!66392)

(assert (=> b!6868006 (= res!2801414 (not (isEmpty!38627 (tail!12835 s!2326))))))

(declare-fun b!6868007 () Bool)

(declare-fun e!4140069 () Bool)

(assert (=> b!6868007 (= e!4140066 e!4140069)))

(declare-fun res!2801420 () Bool)

(assert (=> b!6868007 (=> (not res!2801420) (not e!4140069))))

(assert (=> b!6868007 (= res!2801420 (not lt!2458085))))

(declare-fun b!6868008 () Bool)

(declare-fun res!2801421 () Bool)

(assert (=> b!6868008 (=> (not res!2801421) (not e!4140063))))

(declare-fun call!625529 () Bool)

(assert (=> b!6868008 (= res!2801421 (not call!625529))))

(declare-fun b!6868009 () Bool)

(declare-fun e!4140065 () Bool)

(declare-fun nullable!6658 (Regex!16697) Bool)

(assert (=> b!6868009 (= e!4140065 (nullable!6658 r!7292))))

(declare-fun d!2157502 () Bool)

(assert (=> d!2157502 e!4140064))

(declare-fun c!1278212 () Bool)

(assert (=> d!2157502 (= c!1278212 ((_ is EmptyExpr!16697) r!7292))))

(assert (=> d!2157502 (= lt!2458085 e!4140065)))

(declare-fun c!1278211 () Bool)

(assert (=> d!2157502 (= c!1278211 (isEmpty!38627 s!2326))))

(assert (=> d!2157502 (validRegex!8433 r!7292)))

(assert (=> d!2157502 (= (matchR!8880 r!7292 s!2326) lt!2458085)))

(declare-fun b!6868010 () Bool)

(assert (=> b!6868010 (= e!4140064 (= lt!2458085 call!625529))))

(declare-fun b!6868011 () Bool)

(assert (=> b!6868011 (= e!4140069 e!4140067)))

(declare-fun res!2801418 () Bool)

(assert (=> b!6868011 (=> res!2801418 e!4140067)))

(assert (=> b!6868011 (= res!2801418 call!625529)))

(declare-fun b!6868012 () Bool)

(declare-fun head!13779 (List!66392) C!33664)

(assert (=> b!6868012 (= e!4140063 (= (head!13779 s!2326) (c!1278149 r!7292)))))

(declare-fun b!6868013 () Bool)

(declare-fun derivativeStep!5340 (Regex!16697 C!33664) Regex!16697)

(assert (=> b!6868013 (= e!4140065 (matchR!8880 (derivativeStep!5340 r!7292 (head!13779 s!2326)) (tail!12835 s!2326)))))

(declare-fun b!6868014 () Bool)

(declare-fun res!2801415 () Bool)

(assert (=> b!6868014 (=> (not res!2801415) (not e!4140063))))

(assert (=> b!6868014 (= res!2801415 (isEmpty!38627 (tail!12835 s!2326)))))

(declare-fun b!6868015 () Bool)

(assert (=> b!6868015 (= e!4140067 (not (= (head!13779 s!2326) (c!1278149 r!7292))))))

(declare-fun b!6868016 () Bool)

(declare-fun res!2801417 () Bool)

(assert (=> b!6868016 (=> res!2801417 e!4140066)))

(assert (=> b!6868016 (= res!2801417 (not ((_ is ElementMatch!16697) r!7292)))))

(assert (=> b!6868016 (= e!4140068 e!4140066)))

(declare-fun bm!625524 () Bool)

(assert (=> bm!625524 (= call!625529 (isEmpty!38627 s!2326))))

(assert (= (and d!2157502 c!1278211) b!6868009))

(assert (= (and d!2157502 (not c!1278211)) b!6868013))

(assert (= (and d!2157502 c!1278212) b!6868010))

(assert (= (and d!2157502 (not c!1278212)) b!6868005))

(assert (= (and b!6868005 c!1278210) b!6868003))

(assert (= (and b!6868005 (not c!1278210)) b!6868016))

(assert (= (and b!6868016 (not res!2801417)) b!6868004))

(assert (= (and b!6868004 res!2801416) b!6868008))

(assert (= (and b!6868008 res!2801421) b!6868014))

(assert (= (and b!6868014 res!2801415) b!6868012))

(assert (= (and b!6868004 (not res!2801419)) b!6868007))

(assert (= (and b!6868007 res!2801420) b!6868011))

(assert (= (and b!6868011 (not res!2801418)) b!6868006))

(assert (= (and b!6868006 (not res!2801414)) b!6868015))

(assert (= (or b!6868010 b!6868008 b!6868011) bm!625524))

(declare-fun m!7599580 () Bool)

(assert (=> b!6868014 m!7599580))

(assert (=> b!6868014 m!7599580))

(declare-fun m!7599582 () Bool)

(assert (=> b!6868014 m!7599582))

(assert (=> bm!625524 m!7599520))

(assert (=> b!6868006 m!7599580))

(assert (=> b!6868006 m!7599580))

(assert (=> b!6868006 m!7599582))

(declare-fun m!7599584 () Bool)

(assert (=> b!6868009 m!7599584))

(declare-fun m!7599586 () Bool)

(assert (=> b!6868013 m!7599586))

(assert (=> b!6868013 m!7599586))

(declare-fun m!7599588 () Bool)

(assert (=> b!6868013 m!7599588))

(assert (=> b!6868013 m!7599580))

(assert (=> b!6868013 m!7599588))

(assert (=> b!6868013 m!7599580))

(declare-fun m!7599590 () Bool)

(assert (=> b!6868013 m!7599590))

(assert (=> d!2157502 m!7599520))

(assert (=> d!2157502 m!7599404))

(assert (=> b!6868015 m!7599586))

(assert (=> b!6868012 m!7599586))

(assert (=> b!6867786 d!2157502))

(declare-fun d!2157522 () Bool)

(assert (=> d!2157522 (= (matchR!8880 r!7292 s!2326) (matchRSpec!3798 r!7292 s!2326))))

(declare-fun lt!2458088 () Unit!160165)

(declare-fun choose!51180 (Regex!16697 List!66392) Unit!160165)

(assert (=> d!2157522 (= lt!2458088 (choose!51180 r!7292 s!2326))))

(assert (=> d!2157522 (validRegex!8433 r!7292)))

(assert (=> d!2157522 (= (mainMatchTheorem!3798 r!7292 s!2326) lt!2458088)))

(declare-fun bs!1835766 () Bool)

(assert (= bs!1835766 d!2157522))

(assert (=> bs!1835766 m!7599438))

(assert (=> bs!1835766 m!7599436))

(declare-fun m!7599592 () Bool)

(assert (=> bs!1835766 m!7599592))

(assert (=> bs!1835766 m!7599404))

(assert (=> b!6867786 d!2157522))

(declare-fun d!2157524 () Bool)

(assert (=> d!2157524 (= (isEmpty!38624 (t!380134 zl!343)) ((_ is Nil!66267) (t!380134 zl!343)))))

(assert (=> b!6867796 d!2157524))

(declare-fun d!2157528 () Bool)

(declare-fun e!4140107 () Bool)

(assert (=> d!2157528 e!4140107))

(declare-fun res!2801453 () Bool)

(assert (=> d!2157528 (=> (not res!2801453) (not e!4140107))))

(declare-fun lt!2458093 () List!66391)

(declare-fun noDuplicate!2461 (List!66391) Bool)

(assert (=> d!2157528 (= res!2801453 (noDuplicate!2461 lt!2458093))))

(declare-fun choose!51181 ((InoxSet Context!12162)) List!66391)

(assert (=> d!2157528 (= lt!2458093 (choose!51181 z!1189))))

(assert (=> d!2157528 (= (toList!10481 z!1189) lt!2458093)))

(declare-fun b!6868088 () Bool)

(declare-fun content!13010 (List!66391) (InoxSet Context!12162))

(assert (=> b!6868088 (= e!4140107 (= (content!13010 lt!2458093) z!1189))))

(assert (= (and d!2157528 res!2801453) b!6868088))

(declare-fun m!7599600 () Bool)

(assert (=> d!2157528 m!7599600))

(declare-fun m!7599602 () Bool)

(assert (=> d!2157528 m!7599602))

(declare-fun m!7599604 () Bool)

(assert (=> b!6868088 m!7599604))

(assert (=> b!6867806 d!2157528))

(declare-fun d!2157530 () Bool)

(declare-fun lt!2458097 () Regex!16697)

(assert (=> d!2157530 (validRegex!8433 lt!2458097)))

(declare-fun generalisedUnion!2532 (List!66390) Regex!16697)

(assert (=> d!2157530 (= lt!2458097 (generalisedUnion!2532 (unfocusZipperList!2114 lt!2458043)))))

(assert (=> d!2157530 (= (unfocusZipper!2439 lt!2458043) lt!2458097)))

(declare-fun bs!1835767 () Bool)

(assert (= bs!1835767 d!2157530))

(declare-fun m!7599614 () Bool)

(assert (=> bs!1835767 m!7599614))

(declare-fun m!7599616 () Bool)

(assert (=> bs!1835767 m!7599616))

(assert (=> bs!1835767 m!7599616))

(declare-fun m!7599618 () Bool)

(assert (=> bs!1835767 m!7599618))

(assert (=> b!6867787 d!2157530))

(declare-fun bs!1835769 () Bool)

(declare-fun d!2157534 () Bool)

(assert (= bs!1835769 (and d!2157534 b!6867798)))

(declare-fun lambda!388616 () Int)

(assert (=> bs!1835769 (not (= lambda!388616 lambda!388571))))

(declare-fun bs!1835770 () Bool)

(assert (= bs!1835770 (and d!2157534 b!6867793)))

(assert (=> bs!1835770 (= lambda!388616 lambda!388573)))

(assert (=> d!2157534 (= (inv!84989 setElem!47225) (forall!15890 (exprs!6581 setElem!47225) lambda!388616))))

(declare-fun bs!1835771 () Bool)

(assert (= bs!1835771 d!2157534))

(declare-fun m!7599634 () Bool)

(assert (=> bs!1835771 m!7599634))

(assert (=> setNonEmpty!47225 d!2157534))

(declare-fun d!2157540 () Bool)

(declare-fun e!4140132 () Bool)

(assert (=> d!2157540 e!4140132))

(declare-fun res!2801474 () Bool)

(assert (=> d!2157540 (=> (not res!2801474) (not e!4140132))))

(declare-fun lt!2458102 () List!66391)

(assert (=> d!2157540 (= res!2801474 (noDuplicate!2461 lt!2458102))))

(assert (=> d!2157540 (= lt!2458102 (choose!51181 (store ((as const (Array Context!12162 Bool)) false) lt!2458040 true)))))

(assert (=> d!2157540 (= (toList!10481 (store ((as const (Array Context!12162 Bool)) false) lt!2458040 true)) lt!2458102)))

(declare-fun b!6868128 () Bool)

(assert (=> b!6868128 (= e!4140132 (= (content!13010 lt!2458102) (store ((as const (Array Context!12162 Bool)) false) lt!2458040 true)))))

(assert (= (and d!2157540 res!2801474) b!6868128))

(declare-fun m!7599636 () Bool)

(assert (=> d!2157540 m!7599636))

(assert (=> d!2157540 m!7599432))

(declare-fun m!7599638 () Bool)

(assert (=> d!2157540 m!7599638))

(declare-fun m!7599640 () Bool)

(assert (=> b!6868128 m!7599640))

(assert (=> b!6867788 d!2157540))

(declare-fun d!2157542 () Bool)

(declare-fun res!2801479 () Bool)

(declare-fun e!4140155 () Bool)

(assert (=> d!2157542 (=> res!2801479 e!4140155)))

(assert (=> d!2157542 (= res!2801479 ((_ is Nil!66266) (exprs!6581 lt!2458040)))))

(assert (=> d!2157542 (= (forall!15890 (exprs!6581 lt!2458040) lambda!388573) e!4140155)))

(declare-fun b!6868178 () Bool)

(declare-fun e!4140156 () Bool)

(assert (=> b!6868178 (= e!4140155 e!4140156)))

(declare-fun res!2801480 () Bool)

(assert (=> b!6868178 (=> (not res!2801480) (not e!4140156))))

(declare-fun dynLambda!26529 (Int Regex!16697) Bool)

(assert (=> b!6868178 (= res!2801480 (dynLambda!26529 lambda!388573 (h!72714 (exprs!6581 lt!2458040))))))

(declare-fun b!6868179 () Bool)

(assert (=> b!6868179 (= e!4140156 (forall!15890 (t!380133 (exprs!6581 lt!2458040)) lambda!388573))))

(assert (= (and d!2157542 (not res!2801479)) b!6868178))

(assert (= (and b!6868178 res!2801480) b!6868179))

(declare-fun b_lambda!259783 () Bool)

(assert (=> (not b_lambda!259783) (not b!6868178)))

(declare-fun m!7599656 () Bool)

(assert (=> b!6868178 m!7599656))

(declare-fun m!7599658 () Bool)

(assert (=> b!6868179 m!7599658))

(assert (=> b!6867793 d!2157542))

(declare-fun bs!1835775 () Bool)

(declare-fun d!2157550 () Bool)

(assert (= bs!1835775 (and d!2157550 b!6867798)))

(declare-fun lambda!388619 () Int)

(assert (=> bs!1835775 (not (= lambda!388619 lambda!388571))))

(declare-fun bs!1835776 () Bool)

(assert (= bs!1835776 (and d!2157550 b!6867793)))

(assert (=> bs!1835776 (= lambda!388619 lambda!388573)))

(declare-fun bs!1835777 () Bool)

(assert (= bs!1835777 (and d!2157550 d!2157534)))

(assert (=> bs!1835777 (= lambda!388619 lambda!388616)))

(assert (=> d!2157550 (forall!15890 (exprs!6581 lt!2458040) lambda!388619)))

(declare-fun lt!2458105 () Unit!160165)

(declare-fun choose!51182 (Context!12162 List!66390) Unit!160165)

(assert (=> d!2157550 (= lt!2458105 (choose!51182 lt!2458040 (exprs!6581 lt!2458040)))))

(assert (=> d!2157550 (= (exprs!6581 lt!2458040) (exprs!6581 lt!2458040))))

(assert (=> d!2157550 (= (lemmaContextForallValidExprs!72 lt!2458040 (exprs!6581 lt!2458040)) lt!2458105)))

(declare-fun bs!1835778 () Bool)

(assert (= bs!1835778 d!2157550))

(declare-fun m!7599660 () Bool)

(assert (=> bs!1835778 m!7599660))

(declare-fun m!7599662 () Bool)

(assert (=> bs!1835778 m!7599662))

(assert (=> b!6867793 d!2157550))

(declare-fun b!6868192 () Bool)

(declare-fun e!4140167 () Bool)

(declare-fun dynLambda!26530 (Int Context!12162) Bool)

(assert (=> b!6868192 (= e!4140167 (dynLambda!26530 lambda!388572 (h!72715 zl!343)))))

(declare-fun d!2157552 () Bool)

(declare-fun e!4140165 () Bool)

(assert (=> d!2157552 e!4140165))

(declare-fun res!2801486 () Bool)

(assert (=> d!2157552 (=> (not res!2801486) (not e!4140165))))

(declare-fun lt!2458110 () Context!12162)

(assert (=> d!2157552 (= res!2801486 (dynLambda!26530 lambda!388572 lt!2458110))))

(declare-fun e!4140166 () Context!12162)

(assert (=> d!2157552 (= lt!2458110 e!4140166)))

(declare-fun c!1278242 () Bool)

(assert (=> d!2157552 (= c!1278242 e!4140167)))

(declare-fun res!2801485 () Bool)

(assert (=> d!2157552 (=> (not res!2801485) (not e!4140167))))

(assert (=> d!2157552 (= res!2801485 ((_ is Cons!66267) zl!343))))

(assert (=> d!2157552 (exists!2828 zl!343 lambda!388572)))

(assert (=> d!2157552 (= (getWitness!976 zl!343 lambda!388572) lt!2458110)))

(declare-fun b!6868193 () Bool)

(declare-fun lt!2458111 () Unit!160165)

(declare-fun Unit!160168 () Unit!160165)

(assert (=> b!6868193 (= lt!2458111 Unit!160168)))

(assert (=> b!6868193 false))

(declare-fun e!4140168 () Context!12162)

(declare-fun head!13780 (List!66391) Context!12162)

(assert (=> b!6868193 (= e!4140168 (head!13780 zl!343))))

(declare-fun b!6868194 () Bool)

(declare-fun contains!20355 (List!66391 Context!12162) Bool)

(assert (=> b!6868194 (= e!4140165 (contains!20355 zl!343 lt!2458110))))

(declare-fun b!6868195 () Bool)

(assert (=> b!6868195 (= e!4140166 (h!72715 zl!343))))

(declare-fun b!6868196 () Bool)

(assert (=> b!6868196 (= e!4140168 (getWitness!976 (t!380134 zl!343) lambda!388572))))

(declare-fun b!6868197 () Bool)

(assert (=> b!6868197 (= e!4140166 e!4140168)))

(declare-fun c!1278241 () Bool)

(assert (=> b!6868197 (= c!1278241 ((_ is Cons!66267) zl!343))))

(assert (= (and d!2157552 res!2801485) b!6868192))

(assert (= (and d!2157552 c!1278242) b!6868195))

(assert (= (and d!2157552 (not c!1278242)) b!6868197))

(assert (= (and b!6868197 c!1278241) b!6868196))

(assert (= (and b!6868197 (not c!1278241)) b!6868193))

(assert (= (and d!2157552 res!2801486) b!6868194))

(declare-fun b_lambda!259785 () Bool)

(assert (=> (not b_lambda!259785) (not b!6868192)))

(declare-fun b_lambda!259787 () Bool)

(assert (=> (not b_lambda!259787) (not d!2157552)))

(declare-fun m!7599664 () Bool)

(assert (=> b!6868196 m!7599664))

(declare-fun m!7599666 () Bool)

(assert (=> b!6868192 m!7599666))

(declare-fun m!7599668 () Bool)

(assert (=> d!2157552 m!7599668))

(assert (=> d!2157552 m!7599428))

(declare-fun m!7599670 () Bool)

(assert (=> b!6868193 m!7599670))

(declare-fun m!7599672 () Bool)

(assert (=> b!6868194 m!7599672))

(assert (=> b!6867793 d!2157552))

(declare-fun d!2157554 () Bool)

(declare-fun lt!2458112 () Regex!16697)

(assert (=> d!2157554 (validRegex!8433 lt!2458112)))

(assert (=> d!2157554 (= lt!2458112 (generalisedUnion!2532 (unfocusZipperList!2114 zl!343)))))

(assert (=> d!2157554 (= (unfocusZipper!2439 zl!343) lt!2458112)))

(declare-fun bs!1835779 () Bool)

(assert (= bs!1835779 d!2157554))

(declare-fun m!7599674 () Bool)

(assert (=> bs!1835779 m!7599674))

(assert (=> bs!1835779 m!7599420))

(assert (=> bs!1835779 m!7599420))

(declare-fun m!7599676 () Bool)

(assert (=> bs!1835779 m!7599676))

(assert (=> b!6867803 d!2157554))

(declare-fun bs!1835780 () Bool)

(declare-fun d!2157556 () Bool)

(assert (= bs!1835780 (and d!2157556 b!6867794)))

(declare-fun lambda!388622 () Int)

(assert (=> bs!1835780 (not (= lambda!388622 lambda!388572))))

(assert (=> d!2157556 true))

(declare-fun order!27729 () Int)

(declare-fun dynLambda!26531 (Int Int) Int)

(assert (=> d!2157556 (< (dynLambda!26531 order!27729 lambda!388572) (dynLambda!26531 order!27729 lambda!388622))))

(declare-fun forall!15892 (List!66391 Int) Bool)

(assert (=> d!2157556 (= (exists!2828 zl!343 lambda!388572) (not (forall!15892 zl!343 lambda!388622)))))

(declare-fun bs!1835781 () Bool)

(assert (= bs!1835781 d!2157556))

(declare-fun m!7599678 () Bool)

(assert (=> bs!1835781 m!7599678))

(assert (=> b!6867794 d!2157556))

(declare-fun bs!1835782 () Bool)

(declare-fun d!2157558 () Bool)

(assert (= bs!1835782 (and d!2157558 b!6867794)))

(declare-fun lambda!388625 () Int)

(assert (=> bs!1835782 (= lambda!388625 lambda!388572)))

(declare-fun bs!1835783 () Bool)

(assert (= bs!1835783 (and d!2157558 d!2157556)))

(assert (=> bs!1835783 (not (= lambda!388625 lambda!388622))))

(assert (=> d!2157558 true))

(assert (=> d!2157558 (exists!2828 zl!343 lambda!388625)))

(declare-fun lt!2458115 () Unit!160165)

(declare-fun choose!51183 (List!66391 List!66392) Unit!160165)

(assert (=> d!2157558 (= lt!2458115 (choose!51183 zl!343 s!2326))))

(assert (=> d!2157558 (matchZipper!2663 (content!13010 zl!343) s!2326)))

(assert (=> d!2157558 (= (lemmaZipperMatchesExistsMatchingContext!96 zl!343 s!2326) lt!2458115)))

(declare-fun bs!1835784 () Bool)

(assert (= bs!1835784 d!2157558))

(declare-fun m!7599680 () Bool)

(assert (=> bs!1835784 m!7599680))

(declare-fun m!7599682 () Bool)

(assert (=> bs!1835784 m!7599682))

(declare-fun m!7599684 () Bool)

(assert (=> bs!1835784 m!7599684))

(assert (=> bs!1835784 m!7599684))

(declare-fun m!7599686 () Bool)

(assert (=> bs!1835784 m!7599686))

(assert (=> b!6867794 d!2157558))

(declare-fun b!6868218 () Bool)

(declare-fun e!4140183 () Bool)

(declare-fun call!625549 () Bool)

(assert (=> b!6868218 (= e!4140183 call!625549)))

(declare-fun call!625548 () Bool)

(declare-fun c!1278249 () Bool)

(declare-fun bm!625543 () Bool)

(declare-fun c!1278250 () Bool)

(assert (=> bm!625543 (= call!625548 (validRegex!8433 (ite c!1278249 (reg!17026 r!7292) (ite c!1278250 (regOne!33907 r!7292) (regOne!33906 r!7292)))))))

(declare-fun bm!625544 () Bool)

(declare-fun call!625550 () Bool)

(assert (=> bm!625544 (= call!625550 call!625548)))

(declare-fun b!6868219 () Bool)

(declare-fun e!4140185 () Bool)

(assert (=> b!6868219 (= e!4140185 call!625548)))

(declare-fun bm!625545 () Bool)

(assert (=> bm!625545 (= call!625549 (validRegex!8433 (ite c!1278250 (regTwo!33907 r!7292) (regTwo!33906 r!7292))))))

(declare-fun b!6868220 () Bool)

(declare-fun e!4140189 () Bool)

(assert (=> b!6868220 (= e!4140189 e!4140183)))

(declare-fun res!2801499 () Bool)

(assert (=> b!6868220 (=> (not res!2801499) (not e!4140183))))

(assert (=> b!6868220 (= res!2801499 call!625550)))

(declare-fun d!2157560 () Bool)

(declare-fun res!2801498 () Bool)

(declare-fun e!4140187 () Bool)

(assert (=> d!2157560 (=> res!2801498 e!4140187)))

(assert (=> d!2157560 (= res!2801498 ((_ is ElementMatch!16697) r!7292))))

(assert (=> d!2157560 (= (validRegex!8433 r!7292) e!4140187)))

(declare-fun b!6868221 () Bool)

(declare-fun res!2801497 () Bool)

(declare-fun e!4140186 () Bool)

(assert (=> b!6868221 (=> (not res!2801497) (not e!4140186))))

(assert (=> b!6868221 (= res!2801497 call!625550)))

(declare-fun e!4140188 () Bool)

(assert (=> b!6868221 (= e!4140188 e!4140186)))

(declare-fun b!6868222 () Bool)

(assert (=> b!6868222 (= e!4140186 call!625549)))

(declare-fun b!6868223 () Bool)

(declare-fun res!2801500 () Bool)

(assert (=> b!6868223 (=> res!2801500 e!4140189)))

(assert (=> b!6868223 (= res!2801500 (not ((_ is Concat!25542) r!7292)))))

(assert (=> b!6868223 (= e!4140188 e!4140189)))

(declare-fun b!6868224 () Bool)

(declare-fun e!4140184 () Bool)

(assert (=> b!6868224 (= e!4140184 e!4140188)))

(assert (=> b!6868224 (= c!1278250 ((_ is Union!16697) r!7292))))

(declare-fun b!6868225 () Bool)

(assert (=> b!6868225 (= e!4140187 e!4140184)))

(assert (=> b!6868225 (= c!1278249 ((_ is Star!16697) r!7292))))

(declare-fun b!6868226 () Bool)

(assert (=> b!6868226 (= e!4140184 e!4140185)))

(declare-fun res!2801501 () Bool)

(assert (=> b!6868226 (= res!2801501 (not (nullable!6658 (reg!17026 r!7292))))))

(assert (=> b!6868226 (=> (not res!2801501) (not e!4140185))))

(assert (= (and d!2157560 (not res!2801498)) b!6868225))

(assert (= (and b!6868225 c!1278249) b!6868226))

(assert (= (and b!6868225 (not c!1278249)) b!6868224))

(assert (= (and b!6868226 res!2801501) b!6868219))

(assert (= (and b!6868224 c!1278250) b!6868221))

(assert (= (and b!6868224 (not c!1278250)) b!6868223))

(assert (= (and b!6868221 res!2801497) b!6868222))

(assert (= (and b!6868223 (not res!2801500)) b!6868220))

(assert (= (and b!6868220 res!2801499) b!6868218))

(assert (= (or b!6868222 b!6868218) bm!625545))

(assert (= (or b!6868221 b!6868220) bm!625544))

(assert (= (or b!6868219 bm!625544) bm!625543))

(declare-fun m!7599688 () Bool)

(assert (=> bm!625543 m!7599688))

(declare-fun m!7599690 () Bool)

(assert (=> bm!625545 m!7599690))

(declare-fun m!7599692 () Bool)

(assert (=> b!6868226 m!7599692))

(assert (=> start!662864 d!2157560))

(declare-fun b!6868227 () Bool)

(declare-fun e!4140190 () Bool)

(declare-fun call!625552 () Bool)

(assert (=> b!6868227 (= e!4140190 call!625552)))

(declare-fun bm!625546 () Bool)

(declare-fun call!625551 () Bool)

(declare-fun c!1278252 () Bool)

(declare-fun c!1278251 () Bool)

(assert (=> bm!625546 (= call!625551 (validRegex!8433 (ite c!1278251 (reg!17026 lt!2458034) (ite c!1278252 (regOne!33907 lt!2458034) (regOne!33906 lt!2458034)))))))

(declare-fun bm!625547 () Bool)

(declare-fun call!625553 () Bool)

(assert (=> bm!625547 (= call!625553 call!625551)))

(declare-fun b!6868228 () Bool)

(declare-fun e!4140192 () Bool)

(assert (=> b!6868228 (= e!4140192 call!625551)))

(declare-fun bm!625548 () Bool)

(assert (=> bm!625548 (= call!625552 (validRegex!8433 (ite c!1278252 (regTwo!33907 lt!2458034) (regTwo!33906 lt!2458034))))))

(declare-fun b!6868229 () Bool)

(declare-fun e!4140196 () Bool)

(assert (=> b!6868229 (= e!4140196 e!4140190)))

(declare-fun res!2801504 () Bool)

(assert (=> b!6868229 (=> (not res!2801504) (not e!4140190))))

(assert (=> b!6868229 (= res!2801504 call!625553)))

(declare-fun d!2157562 () Bool)

(declare-fun res!2801503 () Bool)

(declare-fun e!4140194 () Bool)

(assert (=> d!2157562 (=> res!2801503 e!4140194)))

(assert (=> d!2157562 (= res!2801503 ((_ is ElementMatch!16697) lt!2458034))))

(assert (=> d!2157562 (= (validRegex!8433 lt!2458034) e!4140194)))

(declare-fun b!6868230 () Bool)

(declare-fun res!2801502 () Bool)

(declare-fun e!4140193 () Bool)

(assert (=> b!6868230 (=> (not res!2801502) (not e!4140193))))

(assert (=> b!6868230 (= res!2801502 call!625553)))

(declare-fun e!4140195 () Bool)

(assert (=> b!6868230 (= e!4140195 e!4140193)))

(declare-fun b!6868231 () Bool)

(assert (=> b!6868231 (= e!4140193 call!625552)))

(declare-fun b!6868232 () Bool)

(declare-fun res!2801505 () Bool)

(assert (=> b!6868232 (=> res!2801505 e!4140196)))

(assert (=> b!6868232 (= res!2801505 (not ((_ is Concat!25542) lt!2458034)))))

(assert (=> b!6868232 (= e!4140195 e!4140196)))

(declare-fun b!6868233 () Bool)

(declare-fun e!4140191 () Bool)

(assert (=> b!6868233 (= e!4140191 e!4140195)))

(assert (=> b!6868233 (= c!1278252 ((_ is Union!16697) lt!2458034))))

(declare-fun b!6868234 () Bool)

(assert (=> b!6868234 (= e!4140194 e!4140191)))

(assert (=> b!6868234 (= c!1278251 ((_ is Star!16697) lt!2458034))))

(declare-fun b!6868235 () Bool)

(assert (=> b!6868235 (= e!4140191 e!4140192)))

(declare-fun res!2801506 () Bool)

(assert (=> b!6868235 (= res!2801506 (not (nullable!6658 (reg!17026 lt!2458034))))))

(assert (=> b!6868235 (=> (not res!2801506) (not e!4140192))))

(assert (= (and d!2157562 (not res!2801503)) b!6868234))

(assert (= (and b!6868234 c!1278251) b!6868235))

(assert (= (and b!6868234 (not c!1278251)) b!6868233))

(assert (= (and b!6868235 res!2801506) b!6868228))

(assert (= (and b!6868233 c!1278252) b!6868230))

(assert (= (and b!6868233 (not c!1278252)) b!6868232))

(assert (= (and b!6868230 res!2801502) b!6868231))

(assert (= (and b!6868232 (not res!2801505)) b!6868229))

(assert (= (and b!6868229 res!2801504) b!6868227))

(assert (= (or b!6868231 b!6868227) bm!625548))

(assert (= (or b!6868230 b!6868229) bm!625547))

(assert (= (or b!6868228 bm!625547) bm!625546))

(declare-fun m!7599694 () Bool)

(assert (=> bm!625546 m!7599694))

(declare-fun m!7599696 () Bool)

(assert (=> bm!625548 m!7599696))

(declare-fun m!7599698 () Bool)

(assert (=> b!6868235 m!7599698))

(assert (=> b!6867800 d!2157562))

(declare-fun bs!1835785 () Bool)

(declare-fun d!2157564 () Bool)

(assert (= bs!1835785 (and d!2157564 b!6867798)))

(declare-fun lambda!388628 () Int)

(assert (=> bs!1835785 (not (= lambda!388628 lambda!388571))))

(declare-fun bs!1835786 () Bool)

(assert (= bs!1835786 (and d!2157564 b!6867793)))

(assert (=> bs!1835786 (= lambda!388628 lambda!388573)))

(declare-fun bs!1835787 () Bool)

(assert (= bs!1835787 (and d!2157564 d!2157534)))

(assert (=> bs!1835787 (= lambda!388628 lambda!388616)))

(declare-fun bs!1835788 () Bool)

(assert (= bs!1835788 (and d!2157564 d!2157550)))

(assert (=> bs!1835788 (= lambda!388628 lambda!388619)))

(declare-fun e!4140214 () Bool)

(assert (=> d!2157564 e!4140214))

(declare-fun res!2801511 () Bool)

(assert (=> d!2157564 (=> (not res!2801511) (not e!4140214))))

(declare-fun lt!2458118 () Regex!16697)

(assert (=> d!2157564 (= res!2801511 (validRegex!8433 lt!2458118))))

(declare-fun e!4140213 () Regex!16697)

(assert (=> d!2157564 (= lt!2458118 e!4140213)))

(declare-fun c!1278263 () Bool)

(declare-fun e!4140211 () Bool)

(assert (=> d!2157564 (= c!1278263 e!4140211)))

(declare-fun res!2801512 () Bool)

(assert (=> d!2157564 (=> (not res!2801512) (not e!4140211))))

(assert (=> d!2157564 (= res!2801512 ((_ is Cons!66266) (exprs!6581 lt!2458040)))))

(assert (=> d!2157564 (forall!15890 (exprs!6581 lt!2458040) lambda!388628)))

(assert (=> d!2157564 (= (generalisedConcat!2285 (exprs!6581 lt!2458040)) lt!2458118)))

(declare-fun b!6868256 () Bool)

(declare-fun isEmpty!38628 (List!66390) Bool)

(assert (=> b!6868256 (= e!4140211 (isEmpty!38628 (t!380133 (exprs!6581 lt!2458040))))))

(declare-fun b!6868257 () Bool)

(declare-fun e!4140210 () Regex!16697)

(assert (=> b!6868257 (= e!4140213 e!4140210)))

(declare-fun c!1278261 () Bool)

(assert (=> b!6868257 (= c!1278261 ((_ is Cons!66266) (exprs!6581 lt!2458040)))))

(declare-fun b!6868258 () Bool)

(declare-fun e!4140209 () Bool)

(assert (=> b!6868258 (= e!4140214 e!4140209)))

(declare-fun c!1278264 () Bool)

(assert (=> b!6868258 (= c!1278264 (isEmpty!38628 (exprs!6581 lt!2458040)))))

(declare-fun b!6868259 () Bool)

(declare-fun e!4140212 () Bool)

(assert (=> b!6868259 (= e!4140209 e!4140212)))

(declare-fun c!1278262 () Bool)

(declare-fun tail!12836 (List!66390) List!66390)

(assert (=> b!6868259 (= c!1278262 (isEmpty!38628 (tail!12836 (exprs!6581 lt!2458040))))))

(declare-fun b!6868260 () Bool)

(declare-fun isConcat!1540 (Regex!16697) Bool)

(assert (=> b!6868260 (= e!4140212 (isConcat!1540 lt!2458118))))

(declare-fun b!6868261 () Bool)

(declare-fun isEmptyExpr!2017 (Regex!16697) Bool)

(assert (=> b!6868261 (= e!4140209 (isEmptyExpr!2017 lt!2458118))))

(declare-fun b!6868262 () Bool)

(assert (=> b!6868262 (= e!4140210 EmptyExpr!16697)))

(declare-fun b!6868263 () Bool)

(assert (=> b!6868263 (= e!4140213 (h!72714 (exprs!6581 lt!2458040)))))

(declare-fun b!6868264 () Bool)

(declare-fun head!13781 (List!66390) Regex!16697)

(assert (=> b!6868264 (= e!4140212 (= lt!2458118 (head!13781 (exprs!6581 lt!2458040))))))

(declare-fun b!6868265 () Bool)

(assert (=> b!6868265 (= e!4140210 (Concat!25542 (h!72714 (exprs!6581 lt!2458040)) (generalisedConcat!2285 (t!380133 (exprs!6581 lt!2458040)))))))

(assert (= (and d!2157564 res!2801512) b!6868256))

(assert (= (and d!2157564 c!1278263) b!6868263))

(assert (= (and d!2157564 (not c!1278263)) b!6868257))

(assert (= (and b!6868257 c!1278261) b!6868265))

(assert (= (and b!6868257 (not c!1278261)) b!6868262))

(assert (= (and d!2157564 res!2801511) b!6868258))

(assert (= (and b!6868258 c!1278264) b!6868261))

(assert (= (and b!6868258 (not c!1278264)) b!6868259))

(assert (= (and b!6868259 c!1278262) b!6868264))

(assert (= (and b!6868259 (not c!1278262)) b!6868260))

(declare-fun m!7599700 () Bool)

(assert (=> b!6868260 m!7599700))

(declare-fun m!7599702 () Bool)

(assert (=> b!6868265 m!7599702))

(declare-fun m!7599704 () Bool)

(assert (=> b!6868258 m!7599704))

(declare-fun m!7599706 () Bool)

(assert (=> b!6868261 m!7599706))

(declare-fun m!7599708 () Bool)

(assert (=> b!6868256 m!7599708))

(declare-fun m!7599710 () Bool)

(assert (=> b!6868264 m!7599710))

(declare-fun m!7599712 () Bool)

(assert (=> d!2157564 m!7599712))

(declare-fun m!7599714 () Bool)

(assert (=> d!2157564 m!7599714))

(declare-fun m!7599716 () Bool)

(assert (=> b!6868259 m!7599716))

(assert (=> b!6868259 m!7599716))

(declare-fun m!7599718 () Bool)

(assert (=> b!6868259 m!7599718))

(assert (=> b!6867800 d!2157564))

(declare-fun d!2157566 () Bool)

(declare-fun lt!2458121 () Int)

(assert (=> d!2157566 (>= lt!2458121 0)))

(declare-fun e!4140217 () Int)

(assert (=> d!2157566 (= lt!2458121 e!4140217)))

(declare-fun c!1278267 () Bool)

(assert (=> d!2157566 (= c!1278267 ((_ is Cons!66267) lt!2458043))))

(assert (=> d!2157566 (= (zipperDepthTotal!446 lt!2458043) lt!2458121)))

(declare-fun b!6868270 () Bool)

(assert (=> b!6868270 (= e!4140217 (+ (contextDepthTotal!418 (h!72715 lt!2458043)) (zipperDepthTotal!446 (t!380134 lt!2458043))))))

(declare-fun b!6868271 () Bool)

(assert (=> b!6868271 (= e!4140217 0)))

(assert (= (and d!2157566 c!1278267) b!6868270))

(assert (= (and d!2157566 (not c!1278267)) b!6868271))

(declare-fun m!7599720 () Bool)

(assert (=> b!6868270 m!7599720))

(declare-fun m!7599722 () Bool)

(assert (=> b!6868270 m!7599722))

(assert (=> b!6867791 d!2157566))

(declare-fun d!2157568 () Bool)

(declare-fun lt!2458122 () Int)

(assert (=> d!2157568 (>= lt!2458122 0)))

(declare-fun e!4140218 () Int)

(assert (=> d!2157568 (= lt!2458122 e!4140218)))

(declare-fun c!1278268 () Bool)

(assert (=> d!2157568 (= c!1278268 ((_ is Cons!66267) zl!343))))

(assert (=> d!2157568 (= (zipperDepthTotal!446 zl!343) lt!2458122)))

(declare-fun b!6868272 () Bool)

(assert (=> b!6868272 (= e!4140218 (+ (contextDepthTotal!418 (h!72715 zl!343)) (zipperDepthTotal!446 (t!380134 zl!343))))))

(declare-fun b!6868273 () Bool)

(assert (=> b!6868273 (= e!4140218 0)))

(assert (= (and d!2157568 c!1278268) b!6868272))

(assert (= (and d!2157568 (not c!1278268)) b!6868273))

(declare-fun m!7599724 () Bool)

(assert (=> b!6868272 m!7599724))

(declare-fun m!7599726 () Bool)

(assert (=> b!6868272 m!7599726))

(assert (=> b!6867791 d!2157568))

(declare-fun d!2157570 () Bool)

(declare-fun lt!2458125 () Int)

(assert (=> d!2157570 (>= lt!2458125 0)))

(declare-fun e!4140221 () Int)

(assert (=> d!2157570 (= lt!2458125 e!4140221)))

(declare-fun c!1278272 () Bool)

(assert (=> d!2157570 (= c!1278272 ((_ is Cons!66266) (exprs!6581 lt!2458040)))))

(assert (=> d!2157570 (= (contextDepthTotal!418 lt!2458040) lt!2458125)))

(declare-fun b!6868278 () Bool)

(declare-fun regexDepthTotal!263 (Regex!16697) Int)

(assert (=> b!6868278 (= e!4140221 (+ (regexDepthTotal!263 (h!72714 (exprs!6581 lt!2458040))) (contextDepthTotal!418 (Context!12163 (t!380133 (exprs!6581 lt!2458040))))))))

(declare-fun b!6868279 () Bool)

(assert (=> b!6868279 (= e!4140221 1)))

(assert (= (and d!2157570 c!1278272) b!6868278))

(assert (= (and d!2157570 (not c!1278272)) b!6868279))

(declare-fun m!7599728 () Bool)

(assert (=> b!6868278 m!7599728))

(declare-fun m!7599730 () Bool)

(assert (=> b!6868278 m!7599730))

(assert (=> b!6867791 d!2157570))

(declare-fun d!2157572 () Bool)

(assert (=> d!2157572 (< (contextDepthTotal!418 lt!2458040) (zipperDepthTotal!446 zl!343))))

(declare-fun lt!2458128 () Unit!160165)

(declare-fun choose!51184 (List!66391 Context!12162) Unit!160165)

(assert (=> d!2157572 (= lt!2458128 (choose!51184 zl!343 lt!2458040))))

(assert (=> d!2157572 (contains!20355 zl!343 lt!2458040)))

(assert (=> d!2157572 (= (lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne!50 zl!343 lt!2458040) lt!2458128)))

(declare-fun bs!1835789 () Bool)

(assert (= bs!1835789 d!2157572))

(assert (=> bs!1835789 m!7599450))

(assert (=> bs!1835789 m!7599448))

(declare-fun m!7599732 () Bool)

(assert (=> bs!1835789 m!7599732))

(declare-fun m!7599734 () Bool)

(assert (=> bs!1835789 m!7599734))

(assert (=> b!6867791 d!2157572))

(declare-fun d!2157574 () Bool)

(declare-fun c!1278276 () Bool)

(assert (=> d!2157574 (= c!1278276 (isEmpty!38627 s!2326))))

(declare-fun e!4140224 () Bool)

(assert (=> d!2157574 (= (matchZipper!2663 z!1189 s!2326) e!4140224)))

(declare-fun b!6868284 () Bool)

(declare-fun nullableZipper!2370 ((InoxSet Context!12162)) Bool)

(assert (=> b!6868284 (= e!4140224 (nullableZipper!2370 z!1189))))

(declare-fun b!6868285 () Bool)

(declare-fun derivationStepZipper!2617 ((InoxSet Context!12162) C!33664) (InoxSet Context!12162))

(assert (=> b!6868285 (= e!4140224 (matchZipper!2663 (derivationStepZipper!2617 z!1189 (head!13779 s!2326)) (tail!12835 s!2326)))))

(assert (= (and d!2157574 c!1278276) b!6868284))

(assert (= (and d!2157574 (not c!1278276)) b!6868285))

(assert (=> d!2157574 m!7599520))

(declare-fun m!7599736 () Bool)

(assert (=> b!6868284 m!7599736))

(assert (=> b!6868285 m!7599586))

(assert (=> b!6868285 m!7599586))

(declare-fun m!7599738 () Bool)

(assert (=> b!6868285 m!7599738))

(assert (=> b!6868285 m!7599580))

(assert (=> b!6868285 m!7599738))

(assert (=> b!6868285 m!7599580))

(declare-fun m!7599740 () Bool)

(assert (=> b!6868285 m!7599740))

(assert (=> b!6867801 d!2157574))

(assert (=> b!6867792 d!2157524))

(declare-fun bs!1835790 () Bool)

(declare-fun d!2157576 () Bool)

(assert (= bs!1835790 (and d!2157576 d!2157564)))

(declare-fun lambda!388631 () Int)

(assert (=> bs!1835790 (not (= lambda!388631 lambda!388628))))

(declare-fun bs!1835791 () Bool)

(assert (= bs!1835791 (and d!2157576 b!6867798)))

(assert (=> bs!1835791 (not (= lambda!388631 lambda!388571))))

(declare-fun bs!1835792 () Bool)

(assert (= bs!1835792 (and d!2157576 d!2157550)))

(assert (=> bs!1835792 (not (= lambda!388631 lambda!388619))))

(declare-fun bs!1835793 () Bool)

(assert (= bs!1835793 (and d!2157576 b!6867793)))

(assert (=> bs!1835793 (not (= lambda!388631 lambda!388573))))

(declare-fun bs!1835794 () Bool)

(assert (= bs!1835794 (and d!2157576 d!2157534)))

(assert (=> bs!1835794 (not (= lambda!388631 lambda!388616))))

(assert (=> d!2157576 true))

(declare-fun order!27731 () Int)

(declare-fun dynLambda!26532 (Int Int) Int)

(assert (=> d!2157576 (< (dynLambda!26532 order!27731 lambda!388571) (dynLambda!26532 order!27731 lambda!388631))))

(assert (=> d!2157576 (= (exists!2829 lt!2458035 lambda!388571) (not (forall!15890 lt!2458035 lambda!388631)))))

(declare-fun bs!1835795 () Bool)

(assert (= bs!1835795 d!2157576))

(declare-fun m!7599742 () Bool)

(assert (=> bs!1835795 m!7599742))

(assert (=> b!6867802 d!2157576))

(assert (=> b!6867798 d!2157576))

(declare-fun bs!1835796 () Bool)

(declare-fun d!2157578 () Bool)

(assert (= bs!1835796 (and d!2157578 d!2157564)))

(declare-fun lambda!388636 () Int)

(assert (=> bs!1835796 (= lambda!388636 lambda!388628)))

(declare-fun bs!1835797 () Bool)

(assert (= bs!1835797 (and d!2157578 b!6867798)))

(assert (=> bs!1835797 (not (= lambda!388636 lambda!388571))))

(declare-fun bs!1835798 () Bool)

(assert (= bs!1835798 (and d!2157578 d!2157550)))

(assert (=> bs!1835798 (= lambda!388636 lambda!388619)))

(declare-fun bs!1835799 () Bool)

(assert (= bs!1835799 (and d!2157578 b!6867793)))

(assert (=> bs!1835799 (= lambda!388636 lambda!388573)))

(declare-fun bs!1835800 () Bool)

(assert (= bs!1835800 (and d!2157578 d!2157534)))

(assert (=> bs!1835800 (= lambda!388636 lambda!388616)))

(declare-fun bs!1835801 () Bool)

(assert (= bs!1835801 (and d!2157578 d!2157576)))

(assert (=> bs!1835801 (not (= lambda!388636 lambda!388631))))

(declare-fun lambda!388637 () Int)

(assert (=> bs!1835796 (not (= lambda!388637 lambda!388628))))

(assert (=> bs!1835797 (= lambda!388637 lambda!388571)))

(assert (=> bs!1835798 (not (= lambda!388637 lambda!388619))))

(assert (=> bs!1835799 (not (= lambda!388637 lambda!388573))))

(declare-fun bs!1835802 () Bool)

(assert (= bs!1835802 d!2157578))

(assert (=> bs!1835802 (not (= lambda!388637 lambda!388636))))

(assert (=> bs!1835800 (not (= lambda!388637 lambda!388616))))

(assert (=> bs!1835801 (not (= lambda!388637 lambda!388631))))

(assert (=> d!2157578 true))

(assert (=> d!2157578 (= (matchR!8880 r!7292 s!2326) (exists!2829 lt!2458035 lambda!388637))))

(declare-fun lt!2458131 () Unit!160165)

(declare-fun choose!51185 (Regex!16697 List!66390 List!66392) Unit!160165)

(assert (=> d!2157578 (= lt!2458131 (choose!51185 r!7292 lt!2458035 s!2326))))

(assert (=> d!2157578 (forall!15890 lt!2458035 lambda!388636)))

(assert (=> d!2157578 (= (matchRGenUnionSpec!336 r!7292 lt!2458035 s!2326) lt!2458131)))

(assert (=> bs!1835802 m!7599438))

(declare-fun m!7599744 () Bool)

(assert (=> bs!1835802 m!7599744))

(declare-fun m!7599746 () Bool)

(assert (=> bs!1835802 m!7599746))

(declare-fun m!7599748 () Bool)

(assert (=> bs!1835802 m!7599748))

(assert (=> b!6867798 d!2157578))

(declare-fun bs!1835803 () Bool)

(declare-fun d!2157580 () Bool)

(assert (= bs!1835803 (and d!2157580 d!2157564)))

(declare-fun lambda!388640 () Int)

(assert (=> bs!1835803 (= lambda!388640 lambda!388628)))

(declare-fun bs!1835804 () Bool)

(assert (= bs!1835804 (and d!2157580 b!6867798)))

(assert (=> bs!1835804 (not (= lambda!388640 lambda!388571))))

(declare-fun bs!1835805 () Bool)

(assert (= bs!1835805 (and d!2157580 d!2157550)))

(assert (=> bs!1835805 (= lambda!388640 lambda!388619)))

(declare-fun bs!1835806 () Bool)

(assert (= bs!1835806 (and d!2157580 b!6867793)))

(assert (=> bs!1835806 (= lambda!388640 lambda!388573)))

(declare-fun bs!1835807 () Bool)

(assert (= bs!1835807 (and d!2157580 d!2157578)))

(assert (=> bs!1835807 (= lambda!388640 lambda!388636)))

(assert (=> bs!1835807 (not (= lambda!388640 lambda!388637))))

(declare-fun bs!1835808 () Bool)

(assert (= bs!1835808 (and d!2157580 d!2157534)))

(assert (=> bs!1835808 (= lambda!388640 lambda!388616)))

(declare-fun bs!1835809 () Bool)

(assert (= bs!1835809 (and d!2157580 d!2157576)))

(assert (=> bs!1835809 (not (= lambda!388640 lambda!388631))))

(declare-fun lt!2458134 () List!66390)

(assert (=> d!2157580 (forall!15890 lt!2458134 lambda!388640)))

(declare-fun e!4140229 () List!66390)

(assert (=> d!2157580 (= lt!2458134 e!4140229)))

(declare-fun c!1278279 () Bool)

(assert (=> d!2157580 (= c!1278279 ((_ is Cons!66267) zl!343))))

(assert (=> d!2157580 (= (unfocusZipperList!2114 zl!343) lt!2458134)))

(declare-fun b!6868294 () Bool)

(assert (=> b!6868294 (= e!4140229 (Cons!66266 (generalisedConcat!2285 (exprs!6581 (h!72715 zl!343))) (unfocusZipperList!2114 (t!380134 zl!343))))))

(declare-fun b!6868295 () Bool)

(assert (=> b!6868295 (= e!4140229 Nil!66266)))

(assert (= (and d!2157580 c!1278279) b!6868294))

(assert (= (and d!2157580 (not c!1278279)) b!6868295))

(declare-fun m!7599750 () Bool)

(assert (=> d!2157580 m!7599750))

(declare-fun m!7599752 () Bool)

(assert (=> b!6868294 m!7599752))

(declare-fun m!7599754 () Bool)

(assert (=> b!6868294 m!7599754))

(assert (=> b!6867798 d!2157580))

(declare-fun bs!1835810 () Bool)

(declare-fun d!2157582 () Bool)

(assert (= bs!1835810 (and d!2157582 d!2157564)))

(declare-fun lambda!388641 () Int)

(assert (=> bs!1835810 (= lambda!388641 lambda!388628)))

(declare-fun bs!1835811 () Bool)

(assert (= bs!1835811 (and d!2157582 d!2157550)))

(assert (=> bs!1835811 (= lambda!388641 lambda!388619)))

(declare-fun bs!1835812 () Bool)

(assert (= bs!1835812 (and d!2157582 b!6867793)))

(assert (=> bs!1835812 (= lambda!388641 lambda!388573)))

(declare-fun bs!1835813 () Bool)

(assert (= bs!1835813 (and d!2157582 d!2157578)))

(assert (=> bs!1835813 (= lambda!388641 lambda!388636)))

(assert (=> bs!1835813 (not (= lambda!388641 lambda!388637))))

(declare-fun bs!1835814 () Bool)

(assert (= bs!1835814 (and d!2157582 d!2157534)))

(assert (=> bs!1835814 (= lambda!388641 lambda!388616)))

(declare-fun bs!1835815 () Bool)

(assert (= bs!1835815 (and d!2157582 d!2157576)))

(assert (=> bs!1835815 (not (= lambda!388641 lambda!388631))))

(declare-fun bs!1835816 () Bool)

(assert (= bs!1835816 (and d!2157582 b!6867798)))

(assert (=> bs!1835816 (not (= lambda!388641 lambda!388571))))

(declare-fun bs!1835817 () Bool)

(assert (= bs!1835817 (and d!2157582 d!2157580)))

(assert (=> bs!1835817 (= lambda!388641 lambda!388640)))

(assert (=> d!2157582 (= (inv!84989 (h!72715 zl!343)) (forall!15890 (exprs!6581 (h!72715 zl!343)) lambda!388641))))

(declare-fun bs!1835818 () Bool)

(assert (= bs!1835818 d!2157582))

(declare-fun m!7599756 () Bool)

(assert (=> bs!1835818 m!7599756))

(assert (=> b!6867789 d!2157582))

(declare-fun condSetEmpty!47231 () Bool)

(assert (=> setNonEmpty!47225 (= condSetEmpty!47231 (= setRest!47225 ((as const (Array Context!12162 Bool)) false)))))

(declare-fun setRes!47231 () Bool)

(assert (=> setNonEmpty!47225 (= tp!1885299 setRes!47231)))

(declare-fun setIsEmpty!47231 () Bool)

(assert (=> setIsEmpty!47231 setRes!47231))

(declare-fun setNonEmpty!47231 () Bool)

(declare-fun e!4140232 () Bool)

(declare-fun tp!1885366 () Bool)

(declare-fun setElem!47231 () Context!12162)

(assert (=> setNonEmpty!47231 (= setRes!47231 (and tp!1885366 (inv!84989 setElem!47231) e!4140232))))

(declare-fun setRest!47231 () (InoxSet Context!12162))

(assert (=> setNonEmpty!47231 (= setRest!47225 ((_ map or) (store ((as const (Array Context!12162 Bool)) false) setElem!47231 true) setRest!47231))))

(declare-fun b!6868300 () Bool)

(declare-fun tp!1885367 () Bool)

(assert (=> b!6868300 (= e!4140232 tp!1885367)))

(assert (= (and setNonEmpty!47225 condSetEmpty!47231) setIsEmpty!47231))

(assert (= (and setNonEmpty!47225 (not condSetEmpty!47231)) setNonEmpty!47231))

(assert (= setNonEmpty!47231 b!6868300))

(declare-fun m!7599758 () Bool)

(assert (=> setNonEmpty!47231 m!7599758))

(declare-fun b!6868313 () Bool)

(declare-fun e!4140235 () Bool)

(declare-fun tp!1885382 () Bool)

(assert (=> b!6868313 (= e!4140235 tp!1885382)))

(declare-fun b!6868314 () Bool)

(declare-fun tp!1885380 () Bool)

(declare-fun tp!1885381 () Bool)

(assert (=> b!6868314 (= e!4140235 (and tp!1885380 tp!1885381))))

(assert (=> b!6867807 (= tp!1885301 e!4140235)))

(declare-fun b!6868312 () Bool)

(declare-fun tp!1885378 () Bool)

(declare-fun tp!1885379 () Bool)

(assert (=> b!6868312 (= e!4140235 (and tp!1885378 tp!1885379))))

(declare-fun b!6868311 () Bool)

(assert (=> b!6868311 (= e!4140235 tp_is_empty!42647)))

(assert (= (and b!6867807 ((_ is ElementMatch!16697) (regOne!33907 r!7292))) b!6868311))

(assert (= (and b!6867807 ((_ is Concat!25542) (regOne!33907 r!7292))) b!6868312))

(assert (= (and b!6867807 ((_ is Star!16697) (regOne!33907 r!7292))) b!6868313))

(assert (= (and b!6867807 ((_ is Union!16697) (regOne!33907 r!7292))) b!6868314))

(declare-fun b!6868317 () Bool)

(declare-fun e!4140236 () Bool)

(declare-fun tp!1885387 () Bool)

(assert (=> b!6868317 (= e!4140236 tp!1885387)))

(declare-fun b!6868318 () Bool)

(declare-fun tp!1885385 () Bool)

(declare-fun tp!1885386 () Bool)

(assert (=> b!6868318 (= e!4140236 (and tp!1885385 tp!1885386))))

(assert (=> b!6867807 (= tp!1885295 e!4140236)))

(declare-fun b!6868316 () Bool)

(declare-fun tp!1885383 () Bool)

(declare-fun tp!1885384 () Bool)

(assert (=> b!6868316 (= e!4140236 (and tp!1885383 tp!1885384))))

(declare-fun b!6868315 () Bool)

(assert (=> b!6868315 (= e!4140236 tp_is_empty!42647)))

(assert (= (and b!6867807 ((_ is ElementMatch!16697) (regTwo!33907 r!7292))) b!6868315))

(assert (= (and b!6867807 ((_ is Concat!25542) (regTwo!33907 r!7292))) b!6868316))

(assert (= (and b!6867807 ((_ is Star!16697) (regTwo!33907 r!7292))) b!6868317))

(assert (= (and b!6867807 ((_ is Union!16697) (regTwo!33907 r!7292))) b!6868318))

(declare-fun b!6868321 () Bool)

(declare-fun e!4140237 () Bool)

(declare-fun tp!1885392 () Bool)

(assert (=> b!6868321 (= e!4140237 tp!1885392)))

(declare-fun b!6868322 () Bool)

(declare-fun tp!1885390 () Bool)

(declare-fun tp!1885391 () Bool)

(assert (=> b!6868322 (= e!4140237 (and tp!1885390 tp!1885391))))

(assert (=> b!6867797 (= tp!1885297 e!4140237)))

(declare-fun b!6868320 () Bool)

(declare-fun tp!1885388 () Bool)

(declare-fun tp!1885389 () Bool)

(assert (=> b!6868320 (= e!4140237 (and tp!1885388 tp!1885389))))

(declare-fun b!6868319 () Bool)

(assert (=> b!6868319 (= e!4140237 tp_is_empty!42647)))

(assert (= (and b!6867797 ((_ is ElementMatch!16697) (regOne!33906 r!7292))) b!6868319))

(assert (= (and b!6867797 ((_ is Concat!25542) (regOne!33906 r!7292))) b!6868320))

(assert (= (and b!6867797 ((_ is Star!16697) (regOne!33906 r!7292))) b!6868321))

(assert (= (and b!6867797 ((_ is Union!16697) (regOne!33906 r!7292))) b!6868322))

(declare-fun b!6868325 () Bool)

(declare-fun e!4140238 () Bool)

(declare-fun tp!1885397 () Bool)

(assert (=> b!6868325 (= e!4140238 tp!1885397)))

(declare-fun b!6868326 () Bool)

(declare-fun tp!1885395 () Bool)

(declare-fun tp!1885396 () Bool)

(assert (=> b!6868326 (= e!4140238 (and tp!1885395 tp!1885396))))

(assert (=> b!6867797 (= tp!1885294 e!4140238)))

(declare-fun b!6868324 () Bool)

(declare-fun tp!1885393 () Bool)

(declare-fun tp!1885394 () Bool)

(assert (=> b!6868324 (= e!4140238 (and tp!1885393 tp!1885394))))

(declare-fun b!6868323 () Bool)

(assert (=> b!6868323 (= e!4140238 tp_is_empty!42647)))

(assert (= (and b!6867797 ((_ is ElementMatch!16697) (regTwo!33906 r!7292))) b!6868323))

(assert (= (and b!6867797 ((_ is Concat!25542) (regTwo!33906 r!7292))) b!6868324))

(assert (= (and b!6867797 ((_ is Star!16697) (regTwo!33906 r!7292))) b!6868325))

(assert (= (and b!6867797 ((_ is Union!16697) (regTwo!33906 r!7292))) b!6868326))

(declare-fun b!6868334 () Bool)

(declare-fun e!4140244 () Bool)

(declare-fun tp!1885402 () Bool)

(assert (=> b!6868334 (= e!4140244 tp!1885402)))

(declare-fun b!6868333 () Bool)

(declare-fun tp!1885403 () Bool)

(declare-fun e!4140243 () Bool)

(assert (=> b!6868333 (= e!4140243 (and (inv!84989 (h!72715 (t!380134 zl!343))) e!4140244 tp!1885403))))

(assert (=> b!6867789 (= tp!1885300 e!4140243)))

(assert (= b!6868333 b!6868334))

(assert (= (and b!6867789 ((_ is Cons!66267) (t!380134 zl!343))) b!6868333))

(declare-fun m!7599760 () Bool)

(assert (=> b!6868333 m!7599760))

(declare-fun b!6868339 () Bool)

(declare-fun e!4140247 () Bool)

(declare-fun tp!1885408 () Bool)

(declare-fun tp!1885409 () Bool)

(assert (=> b!6868339 (= e!4140247 (and tp!1885408 tp!1885409))))

(assert (=> b!6867804 (= tp!1885296 e!4140247)))

(assert (= (and b!6867804 ((_ is Cons!66266) (exprs!6581 setElem!47225))) b!6868339))

(declare-fun b!6868344 () Bool)

(declare-fun e!4140250 () Bool)

(declare-fun tp!1885412 () Bool)

(assert (=> b!6868344 (= e!4140250 (and tp_is_empty!42647 tp!1885412))))

(assert (=> b!6867785 (= tp!1885302 e!4140250)))

(assert (= (and b!6867785 ((_ is Cons!66268) (t!380135 s!2326))) b!6868344))

(declare-fun b!6868345 () Bool)

(declare-fun e!4140251 () Bool)

(declare-fun tp!1885413 () Bool)

(declare-fun tp!1885414 () Bool)

(assert (=> b!6868345 (= e!4140251 (and tp!1885413 tp!1885414))))

(assert (=> b!6867799 (= tp!1885298 e!4140251)))

(assert (= (and b!6867799 ((_ is Cons!66266) (exprs!6581 (h!72715 zl!343)))) b!6868345))

(declare-fun b!6868348 () Bool)

(declare-fun e!4140252 () Bool)

(declare-fun tp!1885419 () Bool)

(assert (=> b!6868348 (= e!4140252 tp!1885419)))

(declare-fun b!6868349 () Bool)

(declare-fun tp!1885417 () Bool)

(declare-fun tp!1885418 () Bool)

(assert (=> b!6868349 (= e!4140252 (and tp!1885417 tp!1885418))))

(assert (=> b!6867795 (= tp!1885303 e!4140252)))

(declare-fun b!6868347 () Bool)

(declare-fun tp!1885415 () Bool)

(declare-fun tp!1885416 () Bool)

(assert (=> b!6868347 (= e!4140252 (and tp!1885415 tp!1885416))))

(declare-fun b!6868346 () Bool)

(assert (=> b!6868346 (= e!4140252 tp_is_empty!42647)))

(assert (= (and b!6867795 ((_ is ElementMatch!16697) (reg!17026 r!7292))) b!6868346))

(assert (= (and b!6867795 ((_ is Concat!25542) (reg!17026 r!7292))) b!6868347))

(assert (= (and b!6867795 ((_ is Star!16697) (reg!17026 r!7292))) b!6868348))

(assert (= (and b!6867795 ((_ is Union!16697) (reg!17026 r!7292))) b!6868349))

(declare-fun b_lambda!259789 () Bool)

(assert (= b_lambda!259787 (or b!6867794 b_lambda!259789)))

(declare-fun bs!1835819 () Bool)

(declare-fun d!2157584 () Bool)

(assert (= bs!1835819 (and d!2157584 b!6867794)))

(assert (=> bs!1835819 (= (dynLambda!26530 lambda!388572 lt!2458110) (matchZipper!2663 (store ((as const (Array Context!12162 Bool)) false) lt!2458110 true) s!2326))))

(declare-fun m!7599762 () Bool)

(assert (=> bs!1835819 m!7599762))

(assert (=> bs!1835819 m!7599762))

(declare-fun m!7599764 () Bool)

(assert (=> bs!1835819 m!7599764))

(assert (=> d!2157552 d!2157584))

(declare-fun b_lambda!259791 () Bool)

(assert (= b_lambda!259785 (or b!6867794 b_lambda!259791)))

(declare-fun bs!1835820 () Bool)

(declare-fun d!2157586 () Bool)

(assert (= bs!1835820 (and d!2157586 b!6867794)))

(assert (=> bs!1835820 (= (dynLambda!26530 lambda!388572 (h!72715 zl!343)) (matchZipper!2663 (store ((as const (Array Context!12162 Bool)) false) (h!72715 zl!343) true) s!2326))))

(declare-fun m!7599766 () Bool)

(assert (=> bs!1835820 m!7599766))

(assert (=> bs!1835820 m!7599766))

(declare-fun m!7599768 () Bool)

(assert (=> bs!1835820 m!7599768))

(assert (=> b!6868192 d!2157586))

(declare-fun b_lambda!259793 () Bool)

(assert (= b_lambda!259783 (or b!6867793 b_lambda!259793)))

(declare-fun bs!1835821 () Bool)

(declare-fun d!2157588 () Bool)

(assert (= bs!1835821 (and d!2157588 b!6867793)))

(assert (=> bs!1835821 (= (dynLambda!26529 lambda!388573 (h!72714 (exprs!6581 lt!2458040))) (validRegex!8433 (h!72714 (exprs!6581 lt!2458040))))))

(declare-fun m!7599770 () Bool)

(assert (=> bs!1835821 m!7599770))

(assert (=> b!6868178 d!2157588))

(check-sat (not b!6868325) (not b!6867928) (not b!6868235) (not b!6868265) (not b_lambda!259789) (not d!2157578) (not b!6868300) (not b!6868285) (not bm!625543) (not b!6868256) (not bs!1835821) (not bm!625520) (not b!6868009) (not b!6868316) (not b!6868334) (not b!6868326) (not b!6868264) (not b!6868345) (not bm!625545) tp_is_empty!42647 (not bs!1835819) (not b!6868347) (not b!6868348) (not d!2157550) (not b!6868272) (not d!2157564) (not d!2157530) (not b!6868258) (not b!6868318) (not bm!625524) (not b!6868349) (not b!6868006) (not d!2157576) (not d!2157572) (not b!6868270) (not d!2157540) (not b_lambda!259793) (not b!6868014) (not d!2157582) (not d!2157580) (not bm!625521) (not b!6868324) (not b!6868333) (not bm!625548) (not b!6868226) (not b!6868260) (not d!2157534) (not d!2157556) (not b!6868261) (not b!6868314) (not b!6868179) (not d!2157528) (not b!6868312) (not b!6868196) (not b!6867925) (not b!6868088) (not b!6868321) (not setNonEmpty!47231) (not b_lambda!259791) (not bs!1835820) (not d!2157574) (not b!6868317) (not b!6868313) (not b!6868193) (not b!6868128) (not d!2157554) (not b!6868322) (not b!6868294) (not b!6868339) (not d!2157552) (not b!6868259) (not bm!625546) (not b!6868013) (not b!6868320) (not d!2157522) (not b!6868344) (not b!6868278) (not b!6868012) (not d!2157502) (not b!6868194) (not d!2157558) (not b!6868015) (not b!6868284))
(check-sat)
(get-model)

(declare-fun d!2157760 () Bool)

(assert (=> d!2157760 (= (head!13780 zl!343) (h!72715 zl!343))))

(assert (=> b!6868193 d!2157760))

(declare-fun b!6868796 () Bool)

(declare-fun c!1278394 () Bool)

(assert (=> b!6868796 (= c!1278394 ((_ is Union!16697) (h!72714 (exprs!6581 lt!2458040))))))

(declare-fun e!4140509 () Int)

(declare-fun e!4140511 () Int)

(assert (=> b!6868796 (= e!4140509 e!4140511)))

(declare-fun b!6868797 () Bool)

(declare-fun e!4140510 () Int)

(assert (=> b!6868797 (= e!4140510 e!4140509)))

(declare-fun c!1278395 () Bool)

(assert (=> b!6868797 (= c!1278395 ((_ is Star!16697) (h!72714 (exprs!6581 lt!2458040))))))

(declare-fun d!2157762 () Bool)

(declare-fun lt!2458163 () Int)

(assert (=> d!2157762 (> lt!2458163 0)))

(assert (=> d!2157762 (= lt!2458163 e!4140510)))

(declare-fun c!1278393 () Bool)

(assert (=> d!2157762 (= c!1278393 ((_ is ElementMatch!16697) (h!72714 (exprs!6581 lt!2458040))))))

(assert (=> d!2157762 (= (regexDepthTotal!263 (h!72714 (exprs!6581 lt!2458040))) lt!2458163)))

(declare-fun b!6868798 () Bool)

(assert (=> b!6868798 (= e!4140510 1)))

(declare-fun b!6868799 () Bool)

(declare-fun e!4140508 () Int)

(assert (=> b!6868799 (= e!4140511 e!4140508)))

(declare-fun c!1278392 () Bool)

(assert (=> b!6868799 (= c!1278392 ((_ is Concat!25542) (h!72714 (exprs!6581 lt!2458040))))))

(declare-fun b!6868800 () Bool)

(declare-fun call!625611 () Int)

(assert (=> b!6868800 (= e!4140509 (+ 1 call!625611))))

(declare-fun bm!625605 () Bool)

(declare-fun call!625612 () Int)

(assert (=> bm!625605 (= call!625612 (regexDepthTotal!263 (ite c!1278394 (regOne!33907 (h!72714 (exprs!6581 lt!2458040))) (regOne!33906 (h!72714 (exprs!6581 lt!2458040))))))))

(declare-fun b!6868801 () Bool)

(declare-fun call!625610 () Int)

(assert (=> b!6868801 (= e!4140511 (+ 1 call!625612 call!625610))))

(declare-fun b!6868802 () Bool)

(assert (=> b!6868802 (= e!4140508 (+ 1 call!625612 call!625610))))

(declare-fun b!6868803 () Bool)

(assert (=> b!6868803 (= e!4140508 1)))

(declare-fun bm!625606 () Bool)

(assert (=> bm!625606 (= call!625610 call!625611)))

(declare-fun bm!625607 () Bool)

(assert (=> bm!625607 (= call!625611 (regexDepthTotal!263 (ite c!1278395 (reg!17026 (h!72714 (exprs!6581 lt!2458040))) (ite c!1278394 (regTwo!33907 (h!72714 (exprs!6581 lt!2458040))) (regTwo!33906 (h!72714 (exprs!6581 lt!2458040)))))))))

(assert (= (and d!2157762 c!1278393) b!6868798))

(assert (= (and d!2157762 (not c!1278393)) b!6868797))

(assert (= (and b!6868797 c!1278395) b!6868800))

(assert (= (and b!6868797 (not c!1278395)) b!6868796))

(assert (= (and b!6868796 c!1278394) b!6868801))

(assert (= (and b!6868796 (not c!1278394)) b!6868799))

(assert (= (and b!6868799 c!1278392) b!6868802))

(assert (= (and b!6868799 (not c!1278392)) b!6868803))

(assert (= (or b!6868801 b!6868802) bm!625606))

(assert (= (or b!6868801 b!6868802) bm!625605))

(assert (= (or b!6868800 bm!625606) bm!625607))

(declare-fun m!7600128 () Bool)

(assert (=> bm!625605 m!7600128))

(declare-fun m!7600130 () Bool)

(assert (=> bm!625607 m!7600130))

(assert (=> b!6868278 d!2157762))

(declare-fun d!2157764 () Bool)

(declare-fun lt!2458164 () Int)

(assert (=> d!2157764 (>= lt!2458164 0)))

(declare-fun e!4140512 () Int)

(assert (=> d!2157764 (= lt!2458164 e!4140512)))

(declare-fun c!1278396 () Bool)

(assert (=> d!2157764 (= c!1278396 ((_ is Cons!66266) (exprs!6581 (Context!12163 (t!380133 (exprs!6581 lt!2458040))))))))

(assert (=> d!2157764 (= (contextDepthTotal!418 (Context!12163 (t!380133 (exprs!6581 lt!2458040)))) lt!2458164)))

(declare-fun b!6868804 () Bool)

(assert (=> b!6868804 (= e!4140512 (+ (regexDepthTotal!263 (h!72714 (exprs!6581 (Context!12163 (t!380133 (exprs!6581 lt!2458040)))))) (contextDepthTotal!418 (Context!12163 (t!380133 (exprs!6581 (Context!12163 (t!380133 (exprs!6581 lt!2458040)))))))))))

(declare-fun b!6868805 () Bool)

(assert (=> b!6868805 (= e!4140512 1)))

(assert (= (and d!2157764 c!1278396) b!6868804))

(assert (= (and d!2157764 (not c!1278396)) b!6868805))

(declare-fun m!7600132 () Bool)

(assert (=> b!6868804 m!7600132))

(declare-fun m!7600134 () Bool)

(assert (=> b!6868804 m!7600134))

(assert (=> b!6868278 d!2157764))

(declare-fun d!2157766 () Bool)

(declare-fun nullableFct!2532 (Regex!16697) Bool)

(assert (=> d!2157766 (= (nullable!6658 r!7292) (nullableFct!2532 r!7292))))

(declare-fun bs!1836028 () Bool)

(assert (= bs!1836028 d!2157766))

(declare-fun m!7600136 () Bool)

(assert (=> bs!1836028 m!7600136))

(assert (=> b!6868009 d!2157766))

(declare-fun d!2157768 () Bool)

(assert (=> d!2157768 (= (isConcat!1540 lt!2458118) ((_ is Concat!25542) lt!2458118))))

(assert (=> b!6868260 d!2157768))

(declare-fun b!6868806 () Bool)

(declare-fun e!4140513 () Bool)

(declare-fun call!625614 () Bool)

(assert (=> b!6868806 (= e!4140513 call!625614)))

(declare-fun c!1278397 () Bool)

(declare-fun c!1278398 () Bool)

(declare-fun call!625613 () Bool)

(declare-fun bm!625608 () Bool)

(assert (=> bm!625608 (= call!625613 (validRegex!8433 (ite c!1278397 (reg!17026 lt!2458112) (ite c!1278398 (regOne!33907 lt!2458112) (regOne!33906 lt!2458112)))))))

(declare-fun bm!625609 () Bool)

(declare-fun call!625615 () Bool)

(assert (=> bm!625609 (= call!625615 call!625613)))

(declare-fun b!6868807 () Bool)

(declare-fun e!4140515 () Bool)

(assert (=> b!6868807 (= e!4140515 call!625613)))

(declare-fun bm!625610 () Bool)

(assert (=> bm!625610 (= call!625614 (validRegex!8433 (ite c!1278398 (regTwo!33907 lt!2458112) (regTwo!33906 lt!2458112))))))

(declare-fun b!6868808 () Bool)

(declare-fun e!4140519 () Bool)

(assert (=> b!6868808 (= e!4140519 e!4140513)))

(declare-fun res!2801633 () Bool)

(assert (=> b!6868808 (=> (not res!2801633) (not e!4140513))))

(assert (=> b!6868808 (= res!2801633 call!625615)))

(declare-fun d!2157770 () Bool)

(declare-fun res!2801632 () Bool)

(declare-fun e!4140517 () Bool)

(assert (=> d!2157770 (=> res!2801632 e!4140517)))

(assert (=> d!2157770 (= res!2801632 ((_ is ElementMatch!16697) lt!2458112))))

(assert (=> d!2157770 (= (validRegex!8433 lt!2458112) e!4140517)))

(declare-fun b!6868809 () Bool)

(declare-fun res!2801631 () Bool)

(declare-fun e!4140516 () Bool)

(assert (=> b!6868809 (=> (not res!2801631) (not e!4140516))))

(assert (=> b!6868809 (= res!2801631 call!625615)))

(declare-fun e!4140518 () Bool)

(assert (=> b!6868809 (= e!4140518 e!4140516)))

(declare-fun b!6868810 () Bool)

(assert (=> b!6868810 (= e!4140516 call!625614)))

(declare-fun b!6868811 () Bool)

(declare-fun res!2801634 () Bool)

(assert (=> b!6868811 (=> res!2801634 e!4140519)))

(assert (=> b!6868811 (= res!2801634 (not ((_ is Concat!25542) lt!2458112)))))

(assert (=> b!6868811 (= e!4140518 e!4140519)))

(declare-fun b!6868812 () Bool)

(declare-fun e!4140514 () Bool)

(assert (=> b!6868812 (= e!4140514 e!4140518)))

(assert (=> b!6868812 (= c!1278398 ((_ is Union!16697) lt!2458112))))

(declare-fun b!6868813 () Bool)

(assert (=> b!6868813 (= e!4140517 e!4140514)))

(assert (=> b!6868813 (= c!1278397 ((_ is Star!16697) lt!2458112))))

(declare-fun b!6868814 () Bool)

(assert (=> b!6868814 (= e!4140514 e!4140515)))

(declare-fun res!2801635 () Bool)

(assert (=> b!6868814 (= res!2801635 (not (nullable!6658 (reg!17026 lt!2458112))))))

(assert (=> b!6868814 (=> (not res!2801635) (not e!4140515))))

(assert (= (and d!2157770 (not res!2801632)) b!6868813))

(assert (= (and b!6868813 c!1278397) b!6868814))

(assert (= (and b!6868813 (not c!1278397)) b!6868812))

(assert (= (and b!6868814 res!2801635) b!6868807))

(assert (= (and b!6868812 c!1278398) b!6868809))

(assert (= (and b!6868812 (not c!1278398)) b!6868811))

(assert (= (and b!6868809 res!2801631) b!6868810))

(assert (= (and b!6868811 (not res!2801634)) b!6868808))

(assert (= (and b!6868808 res!2801633) b!6868806))

(assert (= (or b!6868810 b!6868806) bm!625610))

(assert (= (or b!6868809 b!6868808) bm!625609))

(assert (= (or b!6868807 bm!625609) bm!625608))

(declare-fun m!7600138 () Bool)

(assert (=> bm!625608 m!7600138))

(declare-fun m!7600140 () Bool)

(assert (=> bm!625610 m!7600140))

(declare-fun m!7600142 () Bool)

(assert (=> b!6868814 m!7600142))

(assert (=> d!2157554 d!2157770))

(declare-fun bs!1836029 () Bool)

(declare-fun d!2157772 () Bool)

(assert (= bs!1836029 (and d!2157772 d!2157564)))

(declare-fun lambda!388675 () Int)

(assert (=> bs!1836029 (= lambda!388675 lambda!388628)))

(declare-fun bs!1836030 () Bool)

(assert (= bs!1836030 (and d!2157772 d!2157550)))

(assert (=> bs!1836030 (= lambda!388675 lambda!388619)))

(declare-fun bs!1836031 () Bool)

(assert (= bs!1836031 (and d!2157772 b!6867793)))

(assert (=> bs!1836031 (= lambda!388675 lambda!388573)))

(declare-fun bs!1836032 () Bool)

(assert (= bs!1836032 (and d!2157772 d!2157578)))

(assert (=> bs!1836032 (= lambda!388675 lambda!388636)))

(assert (=> bs!1836032 (not (= lambda!388675 lambda!388637))))

(declare-fun bs!1836033 () Bool)

(assert (= bs!1836033 (and d!2157772 d!2157534)))

(assert (=> bs!1836033 (= lambda!388675 lambda!388616)))

(declare-fun bs!1836034 () Bool)

(assert (= bs!1836034 (and d!2157772 d!2157582)))

(assert (=> bs!1836034 (= lambda!388675 lambda!388641)))

(declare-fun bs!1836035 () Bool)

(assert (= bs!1836035 (and d!2157772 d!2157576)))

(assert (=> bs!1836035 (not (= lambda!388675 lambda!388631))))

(declare-fun bs!1836036 () Bool)

(assert (= bs!1836036 (and d!2157772 b!6867798)))

(assert (=> bs!1836036 (not (= lambda!388675 lambda!388571))))

(declare-fun bs!1836037 () Bool)

(assert (= bs!1836037 (and d!2157772 d!2157580)))

(assert (=> bs!1836037 (= lambda!388675 lambda!388640)))

(declare-fun b!6868835 () Bool)

(declare-fun e!4140536 () Bool)

(declare-fun lt!2458167 () Regex!16697)

(assert (=> b!6868835 (= e!4140536 (= lt!2458167 (head!13781 (unfocusZipperList!2114 zl!343))))))

(declare-fun b!6868836 () Bool)

(declare-fun e!4140537 () Regex!16697)

(declare-fun e!4140532 () Regex!16697)

(assert (=> b!6868836 (= e!4140537 e!4140532)))

(declare-fun c!1278407 () Bool)

(assert (=> b!6868836 (= c!1278407 ((_ is Cons!66266) (unfocusZipperList!2114 zl!343)))))

(declare-fun e!4140534 () Bool)

(assert (=> d!2157772 e!4140534))

(declare-fun res!2801641 () Bool)

(assert (=> d!2157772 (=> (not res!2801641) (not e!4140534))))

(assert (=> d!2157772 (= res!2801641 (validRegex!8433 lt!2458167))))

(assert (=> d!2157772 (= lt!2458167 e!4140537)))

(declare-fun c!1278408 () Bool)

(declare-fun e!4140535 () Bool)

(assert (=> d!2157772 (= c!1278408 e!4140535)))

(declare-fun res!2801640 () Bool)

(assert (=> d!2157772 (=> (not res!2801640) (not e!4140535))))

(assert (=> d!2157772 (= res!2801640 ((_ is Cons!66266) (unfocusZipperList!2114 zl!343)))))

(assert (=> d!2157772 (forall!15890 (unfocusZipperList!2114 zl!343) lambda!388675)))

(assert (=> d!2157772 (= (generalisedUnion!2532 (unfocusZipperList!2114 zl!343)) lt!2458167)))

(declare-fun b!6868837 () Bool)

(assert (=> b!6868837 (= e!4140532 EmptyLang!16697)))

(declare-fun b!6868838 () Bool)

(declare-fun e!4140533 () Bool)

(declare-fun isEmptyLang!2026 (Regex!16697) Bool)

(assert (=> b!6868838 (= e!4140533 (isEmptyLang!2026 lt!2458167))))

(declare-fun b!6868839 () Bool)

(assert (=> b!6868839 (= e!4140532 (Union!16697 (h!72714 (unfocusZipperList!2114 zl!343)) (generalisedUnion!2532 (t!380133 (unfocusZipperList!2114 zl!343)))))))

(declare-fun b!6868840 () Bool)

(assert (=> b!6868840 (= e!4140535 (isEmpty!38628 (t!380133 (unfocusZipperList!2114 zl!343))))))

(declare-fun b!6868841 () Bool)

(assert (=> b!6868841 (= e!4140534 e!4140533)))

(declare-fun c!1278410 () Bool)

(assert (=> b!6868841 (= c!1278410 (isEmpty!38628 (unfocusZipperList!2114 zl!343)))))

(declare-fun b!6868842 () Bool)

(assert (=> b!6868842 (= e!4140533 e!4140536)))

(declare-fun c!1278409 () Bool)

(assert (=> b!6868842 (= c!1278409 (isEmpty!38628 (tail!12836 (unfocusZipperList!2114 zl!343))))))

(declare-fun b!6868843 () Bool)

(declare-fun isUnion!1456 (Regex!16697) Bool)

(assert (=> b!6868843 (= e!4140536 (isUnion!1456 lt!2458167))))

(declare-fun b!6868844 () Bool)

(assert (=> b!6868844 (= e!4140537 (h!72714 (unfocusZipperList!2114 zl!343)))))

(assert (= (and d!2157772 res!2801640) b!6868840))

(assert (= (and d!2157772 c!1278408) b!6868844))

(assert (= (and d!2157772 (not c!1278408)) b!6868836))

(assert (= (and b!6868836 c!1278407) b!6868839))

(assert (= (and b!6868836 (not c!1278407)) b!6868837))

(assert (= (and d!2157772 res!2801641) b!6868841))

(assert (= (and b!6868841 c!1278410) b!6868838))

(assert (= (and b!6868841 (not c!1278410)) b!6868842))

(assert (= (and b!6868842 c!1278409) b!6868835))

(assert (= (and b!6868842 (not c!1278409)) b!6868843))

(declare-fun m!7600144 () Bool)

(assert (=> d!2157772 m!7600144))

(assert (=> d!2157772 m!7599420))

(declare-fun m!7600146 () Bool)

(assert (=> d!2157772 m!7600146))

(declare-fun m!7600148 () Bool)

(assert (=> b!6868838 m!7600148))

(assert (=> b!6868841 m!7599420))

(declare-fun m!7600150 () Bool)

(assert (=> b!6868841 m!7600150))

(assert (=> b!6868835 m!7599420))

(declare-fun m!7600152 () Bool)

(assert (=> b!6868835 m!7600152))

(assert (=> b!6868842 m!7599420))

(declare-fun m!7600154 () Bool)

(assert (=> b!6868842 m!7600154))

(assert (=> b!6868842 m!7600154))

(declare-fun m!7600156 () Bool)

(assert (=> b!6868842 m!7600156))

(declare-fun m!7600158 () Bool)

(assert (=> b!6868843 m!7600158))

(declare-fun m!7600160 () Bool)

(assert (=> b!6868839 m!7600160))

(declare-fun m!7600162 () Bool)

(assert (=> b!6868840 m!7600162))

(assert (=> d!2157554 d!2157772))

(assert (=> d!2157554 d!2157580))

(declare-fun b!6868845 () Bool)

(declare-fun e!4140543 () Bool)

(declare-fun lt!2458168 () Bool)

(assert (=> b!6868845 (= e!4140543 (not lt!2458168))))

(declare-fun b!6868846 () Bool)

(declare-fun res!2801647 () Bool)

(declare-fun e!4140541 () Bool)

(assert (=> b!6868846 (=> res!2801647 e!4140541)))

(declare-fun e!4140538 () Bool)

(assert (=> b!6868846 (= res!2801647 e!4140538)))

(declare-fun res!2801644 () Bool)

(assert (=> b!6868846 (=> (not res!2801644) (not e!4140538))))

(assert (=> b!6868846 (= res!2801644 lt!2458168)))

(declare-fun b!6868847 () Bool)

(declare-fun e!4140539 () Bool)

(assert (=> b!6868847 (= e!4140539 e!4140543)))

(declare-fun c!1278411 () Bool)

(assert (=> b!6868847 (= c!1278411 ((_ is EmptyLang!16697) (derivativeStep!5340 r!7292 (head!13779 s!2326))))))

(declare-fun b!6868848 () Bool)

(declare-fun res!2801642 () Bool)

(declare-fun e!4140542 () Bool)

(assert (=> b!6868848 (=> res!2801642 e!4140542)))

(assert (=> b!6868848 (= res!2801642 (not (isEmpty!38627 (tail!12835 (tail!12835 s!2326)))))))

(declare-fun b!6868849 () Bool)

(declare-fun e!4140544 () Bool)

(assert (=> b!6868849 (= e!4140541 e!4140544)))

(declare-fun res!2801648 () Bool)

(assert (=> b!6868849 (=> (not res!2801648) (not e!4140544))))

(assert (=> b!6868849 (= res!2801648 (not lt!2458168))))

(declare-fun b!6868850 () Bool)

(declare-fun res!2801649 () Bool)

(assert (=> b!6868850 (=> (not res!2801649) (not e!4140538))))

(declare-fun call!625616 () Bool)

(assert (=> b!6868850 (= res!2801649 (not call!625616))))

(declare-fun b!6868851 () Bool)

(declare-fun e!4140540 () Bool)

(assert (=> b!6868851 (= e!4140540 (nullable!6658 (derivativeStep!5340 r!7292 (head!13779 s!2326))))))

(declare-fun d!2157774 () Bool)

(assert (=> d!2157774 e!4140539))

(declare-fun c!1278413 () Bool)

(assert (=> d!2157774 (= c!1278413 ((_ is EmptyExpr!16697) (derivativeStep!5340 r!7292 (head!13779 s!2326))))))

(assert (=> d!2157774 (= lt!2458168 e!4140540)))

(declare-fun c!1278412 () Bool)

(assert (=> d!2157774 (= c!1278412 (isEmpty!38627 (tail!12835 s!2326)))))

(assert (=> d!2157774 (validRegex!8433 (derivativeStep!5340 r!7292 (head!13779 s!2326)))))

(assert (=> d!2157774 (= (matchR!8880 (derivativeStep!5340 r!7292 (head!13779 s!2326)) (tail!12835 s!2326)) lt!2458168)))

(declare-fun b!6868852 () Bool)

(assert (=> b!6868852 (= e!4140539 (= lt!2458168 call!625616))))

(declare-fun b!6868853 () Bool)

(assert (=> b!6868853 (= e!4140544 e!4140542)))

(declare-fun res!2801646 () Bool)

(assert (=> b!6868853 (=> res!2801646 e!4140542)))

(assert (=> b!6868853 (= res!2801646 call!625616)))

(declare-fun b!6868854 () Bool)

(assert (=> b!6868854 (= e!4140538 (= (head!13779 (tail!12835 s!2326)) (c!1278149 (derivativeStep!5340 r!7292 (head!13779 s!2326)))))))

(declare-fun b!6868855 () Bool)

(assert (=> b!6868855 (= e!4140540 (matchR!8880 (derivativeStep!5340 (derivativeStep!5340 r!7292 (head!13779 s!2326)) (head!13779 (tail!12835 s!2326))) (tail!12835 (tail!12835 s!2326))))))

(declare-fun b!6868856 () Bool)

(declare-fun res!2801643 () Bool)

(assert (=> b!6868856 (=> (not res!2801643) (not e!4140538))))

(assert (=> b!6868856 (= res!2801643 (isEmpty!38627 (tail!12835 (tail!12835 s!2326))))))

(declare-fun b!6868857 () Bool)

(assert (=> b!6868857 (= e!4140542 (not (= (head!13779 (tail!12835 s!2326)) (c!1278149 (derivativeStep!5340 r!7292 (head!13779 s!2326))))))))

(declare-fun b!6868858 () Bool)

(declare-fun res!2801645 () Bool)

(assert (=> b!6868858 (=> res!2801645 e!4140541)))

(assert (=> b!6868858 (= res!2801645 (not ((_ is ElementMatch!16697) (derivativeStep!5340 r!7292 (head!13779 s!2326)))))))

(assert (=> b!6868858 (= e!4140543 e!4140541)))

(declare-fun bm!625611 () Bool)

(assert (=> bm!625611 (= call!625616 (isEmpty!38627 (tail!12835 s!2326)))))

(assert (= (and d!2157774 c!1278412) b!6868851))

(assert (= (and d!2157774 (not c!1278412)) b!6868855))

(assert (= (and d!2157774 c!1278413) b!6868852))

(assert (= (and d!2157774 (not c!1278413)) b!6868847))

(assert (= (and b!6868847 c!1278411) b!6868845))

(assert (= (and b!6868847 (not c!1278411)) b!6868858))

(assert (= (and b!6868858 (not res!2801645)) b!6868846))

(assert (= (and b!6868846 res!2801644) b!6868850))

(assert (= (and b!6868850 res!2801649) b!6868856))

(assert (= (and b!6868856 res!2801643) b!6868854))

(assert (= (and b!6868846 (not res!2801647)) b!6868849))

(assert (= (and b!6868849 res!2801648) b!6868853))

(assert (= (and b!6868853 (not res!2801646)) b!6868848))

(assert (= (and b!6868848 (not res!2801642)) b!6868857))

(assert (= (or b!6868852 b!6868850 b!6868853) bm!625611))

(assert (=> b!6868856 m!7599580))

(declare-fun m!7600164 () Bool)

(assert (=> b!6868856 m!7600164))

(assert (=> b!6868856 m!7600164))

(declare-fun m!7600166 () Bool)

(assert (=> b!6868856 m!7600166))

(assert (=> bm!625611 m!7599580))

(assert (=> bm!625611 m!7599582))

(assert (=> b!6868848 m!7599580))

(assert (=> b!6868848 m!7600164))

(assert (=> b!6868848 m!7600164))

(assert (=> b!6868848 m!7600166))

(assert (=> b!6868851 m!7599588))

(declare-fun m!7600168 () Bool)

(assert (=> b!6868851 m!7600168))

(assert (=> b!6868855 m!7599580))

(declare-fun m!7600170 () Bool)

(assert (=> b!6868855 m!7600170))

(assert (=> b!6868855 m!7599588))

(assert (=> b!6868855 m!7600170))

(declare-fun m!7600172 () Bool)

(assert (=> b!6868855 m!7600172))

(assert (=> b!6868855 m!7599580))

(assert (=> b!6868855 m!7600164))

(assert (=> b!6868855 m!7600172))

(assert (=> b!6868855 m!7600164))

(declare-fun m!7600174 () Bool)

(assert (=> b!6868855 m!7600174))

(assert (=> d!2157774 m!7599580))

(assert (=> d!2157774 m!7599582))

(assert (=> d!2157774 m!7599588))

(declare-fun m!7600176 () Bool)

(assert (=> d!2157774 m!7600176))

(assert (=> b!6868857 m!7599580))

(assert (=> b!6868857 m!7600170))

(assert (=> b!6868854 m!7599580))

(assert (=> b!6868854 m!7600170))

(assert (=> b!6868013 d!2157774))

(declare-fun b!6868879 () Bool)

(declare-fun e!4140559 () Regex!16697)

(declare-fun e!4140556 () Regex!16697)

(assert (=> b!6868879 (= e!4140559 e!4140556)))

(declare-fun c!1278428 () Bool)

(assert (=> b!6868879 (= c!1278428 ((_ is Star!16697) r!7292))))

(declare-fun b!6868880 () Bool)

(declare-fun call!625626 () Regex!16697)

(declare-fun call!625628 () Regex!16697)

(assert (=> b!6868880 (= e!4140559 (Union!16697 call!625626 call!625628))))

(declare-fun bm!625620 () Bool)

(declare-fun call!625625 () Regex!16697)

(assert (=> bm!625620 (= call!625625 call!625628)))

(declare-fun b!6868881 () Bool)

(declare-fun e!4140555 () Regex!16697)

(assert (=> b!6868881 (= e!4140555 (Union!16697 (Concat!25542 call!625625 (regTwo!33906 r!7292)) EmptyLang!16697))))

(declare-fun b!6868882 () Bool)

(declare-fun e!4140558 () Regex!16697)

(assert (=> b!6868882 (= e!4140558 EmptyLang!16697)))

(declare-fun bm!625621 () Bool)

(declare-fun c!1278426 () Bool)

(assert (=> bm!625621 (= call!625626 (derivativeStep!5340 (ite c!1278426 (regOne!33907 r!7292) (ite c!1278428 (reg!17026 r!7292) (regOne!33906 r!7292))) (head!13779 s!2326)))))

(declare-fun call!625627 () Regex!16697)

(declare-fun b!6868883 () Bool)

(assert (=> b!6868883 (= e!4140555 (Union!16697 (Concat!25542 call!625627 (regTwo!33906 r!7292)) call!625625))))

(declare-fun bm!625622 () Bool)

(assert (=> bm!625622 (= call!625627 call!625626)))

(declare-fun c!1278425 () Bool)

(declare-fun bm!625623 () Bool)

(assert (=> bm!625623 (= call!625628 (derivativeStep!5340 (ite c!1278426 (regTwo!33907 r!7292) (ite c!1278425 (regTwo!33906 r!7292) (regOne!33906 r!7292))) (head!13779 s!2326)))))

(declare-fun b!6868884 () Bool)

(assert (=> b!6868884 (= c!1278426 ((_ is Union!16697) r!7292))))

(declare-fun e!4140557 () Regex!16697)

(assert (=> b!6868884 (= e!4140557 e!4140559)))

(declare-fun b!6868885 () Bool)

(assert (=> b!6868885 (= c!1278425 (nullable!6658 (regOne!33906 r!7292)))))

(assert (=> b!6868885 (= e!4140556 e!4140555)))

(declare-fun b!6868887 () Bool)

(assert (=> b!6868887 (= e!4140558 e!4140557)))

(declare-fun c!1278424 () Bool)

(assert (=> b!6868887 (= c!1278424 ((_ is ElementMatch!16697) r!7292))))

(declare-fun b!6868888 () Bool)

(assert (=> b!6868888 (= e!4140557 (ite (= (head!13779 s!2326) (c!1278149 r!7292)) EmptyExpr!16697 EmptyLang!16697))))

(declare-fun b!6868886 () Bool)

(assert (=> b!6868886 (= e!4140556 (Concat!25542 call!625627 r!7292))))

(declare-fun d!2157776 () Bool)

(declare-fun lt!2458171 () Regex!16697)

(assert (=> d!2157776 (validRegex!8433 lt!2458171)))

(assert (=> d!2157776 (= lt!2458171 e!4140558)))

(declare-fun c!1278427 () Bool)

(assert (=> d!2157776 (= c!1278427 (or ((_ is EmptyExpr!16697) r!7292) ((_ is EmptyLang!16697) r!7292)))))

(assert (=> d!2157776 (validRegex!8433 r!7292)))

(assert (=> d!2157776 (= (derivativeStep!5340 r!7292 (head!13779 s!2326)) lt!2458171)))

(assert (= (and d!2157776 c!1278427) b!6868882))

(assert (= (and d!2157776 (not c!1278427)) b!6868887))

(assert (= (and b!6868887 c!1278424) b!6868888))

(assert (= (and b!6868887 (not c!1278424)) b!6868884))

(assert (= (and b!6868884 c!1278426) b!6868880))

(assert (= (and b!6868884 (not c!1278426)) b!6868879))

(assert (= (and b!6868879 c!1278428) b!6868886))

(assert (= (and b!6868879 (not c!1278428)) b!6868885))

(assert (= (and b!6868885 c!1278425) b!6868883))

(assert (= (and b!6868885 (not c!1278425)) b!6868881))

(assert (= (or b!6868883 b!6868881) bm!625620))

(assert (= (or b!6868886 b!6868883) bm!625622))

(assert (= (or b!6868880 bm!625620) bm!625623))

(assert (= (or b!6868880 bm!625622) bm!625621))

(assert (=> bm!625621 m!7599586))

(declare-fun m!7600178 () Bool)

(assert (=> bm!625621 m!7600178))

(assert (=> bm!625623 m!7599586))

(declare-fun m!7600180 () Bool)

(assert (=> bm!625623 m!7600180))

(declare-fun m!7600182 () Bool)

(assert (=> b!6868885 m!7600182))

(declare-fun m!7600184 () Bool)

(assert (=> d!2157776 m!7600184))

(assert (=> d!2157776 m!7599404))

(assert (=> b!6868013 d!2157776))

(declare-fun d!2157778 () Bool)

(assert (=> d!2157778 (= (head!13779 s!2326) (h!72716 s!2326))))

(assert (=> b!6868013 d!2157778))

(declare-fun d!2157780 () Bool)

(assert (=> d!2157780 (= (tail!12835 s!2326) (t!380135 s!2326))))

(assert (=> b!6868013 d!2157780))

(declare-fun d!2157782 () Bool)

(assert (=> d!2157782 (= (head!13781 (exprs!6581 lt!2458040)) (h!72714 (exprs!6581 lt!2458040)))))

(assert (=> b!6868264 d!2157782))

(declare-fun d!2157784 () Bool)

(declare-fun res!2801654 () Bool)

(declare-fun e!4140564 () Bool)

(assert (=> d!2157784 (=> res!2801654 e!4140564)))

(assert (=> d!2157784 (= res!2801654 ((_ is Nil!66267) lt!2458093))))

(assert (=> d!2157784 (= (noDuplicate!2461 lt!2458093) e!4140564)))

(declare-fun b!6868893 () Bool)

(declare-fun e!4140565 () Bool)

(assert (=> b!6868893 (= e!4140564 e!4140565)))

(declare-fun res!2801655 () Bool)

(assert (=> b!6868893 (=> (not res!2801655) (not e!4140565))))

(assert (=> b!6868893 (= res!2801655 (not (contains!20355 (t!380134 lt!2458093) (h!72715 lt!2458093))))))

(declare-fun b!6868894 () Bool)

(assert (=> b!6868894 (= e!4140565 (noDuplicate!2461 (t!380134 lt!2458093)))))

(assert (= (and d!2157784 (not res!2801654)) b!6868893))

(assert (= (and b!6868893 res!2801655) b!6868894))

(declare-fun m!7600186 () Bool)

(assert (=> b!6868893 m!7600186))

(declare-fun m!7600188 () Bool)

(assert (=> b!6868894 m!7600188))

(assert (=> d!2157528 d!2157784))

(declare-fun d!2157786 () Bool)

(declare-fun e!4140572 () Bool)

(assert (=> d!2157786 e!4140572))

(declare-fun res!2801661 () Bool)

(assert (=> d!2157786 (=> (not res!2801661) (not e!4140572))))

(declare-fun res!2801660 () List!66391)

(assert (=> d!2157786 (= res!2801661 (noDuplicate!2461 res!2801660))))

(declare-fun e!4140573 () Bool)

(assert (=> d!2157786 e!4140573))

(assert (=> d!2157786 (= (choose!51181 z!1189) res!2801660)))

(declare-fun b!6868902 () Bool)

(declare-fun e!4140574 () Bool)

(declare-fun tp!1885580 () Bool)

(assert (=> b!6868902 (= e!4140574 tp!1885580)))

(declare-fun b!6868901 () Bool)

(declare-fun tp!1885581 () Bool)

(assert (=> b!6868901 (= e!4140573 (and (inv!84989 (h!72715 res!2801660)) e!4140574 tp!1885581))))

(declare-fun b!6868903 () Bool)

(assert (=> b!6868903 (= e!4140572 (= (content!13010 res!2801660) z!1189))))

(assert (= b!6868901 b!6868902))

(assert (= (and d!2157786 ((_ is Cons!66267) res!2801660)) b!6868901))

(assert (= (and d!2157786 res!2801661) b!6868903))

(declare-fun m!7600190 () Bool)

(assert (=> d!2157786 m!7600190))

(declare-fun m!7600192 () Bool)

(assert (=> b!6868901 m!7600192))

(declare-fun m!7600194 () Bool)

(assert (=> b!6868903 m!7600194))

(assert (=> d!2157528 d!2157786))

(declare-fun bs!1836038 () Bool)

(declare-fun d!2157788 () Bool)

(assert (= bs!1836038 (and d!2157788 b!6867794)))

(declare-fun lambda!388678 () Int)

(assert (=> bs!1836038 (not (= lambda!388678 lambda!388572))))

(declare-fun bs!1836039 () Bool)

(assert (= bs!1836039 (and d!2157788 d!2157556)))

(assert (=> bs!1836039 (not (= lambda!388678 lambda!388622))))

(declare-fun bs!1836040 () Bool)

(assert (= bs!1836040 (and d!2157788 d!2157558)))

(assert (=> bs!1836040 (not (= lambda!388678 lambda!388625))))

(declare-fun exists!2831 ((InoxSet Context!12162) Int) Bool)

(assert (=> d!2157788 (= (nullableZipper!2370 z!1189) (exists!2831 z!1189 lambda!388678))))

(declare-fun bs!1836041 () Bool)

(assert (= bs!1836041 d!2157788))

(declare-fun m!7600196 () Bool)

(assert (=> bs!1836041 m!7600196))

(assert (=> b!6868284 d!2157788))

(declare-fun d!2157790 () Bool)

(assert (=> d!2157790 (= (isEmpty!38627 s!2326) ((_ is Nil!66268) s!2326))))

(assert (=> d!2157574 d!2157790))

(declare-fun d!2157792 () Bool)

(declare-fun choose!51187 (Int) Bool)

(assert (=> d!2157792 (= (Exists!3757 (ite c!1278182 lambda!388599 lambda!388601)) (choose!51187 (ite c!1278182 lambda!388599 lambda!388601)))))

(declare-fun bs!1836042 () Bool)

(assert (= bs!1836042 d!2157792))

(declare-fun m!7600198 () Bool)

(assert (=> bs!1836042 m!7600198))

(assert (=> bm!625520 d!2157792))

(assert (=> b!6868015 d!2157778))

(declare-fun d!2157794 () Bool)

(assert (=> d!2157794 (= (nullable!6658 (reg!17026 r!7292)) (nullableFct!2532 (reg!17026 r!7292)))))

(declare-fun bs!1836043 () Bool)

(assert (= bs!1836043 d!2157794))

(declare-fun m!7600200 () Bool)

(assert (=> bs!1836043 m!7600200))

(assert (=> b!6868226 d!2157794))

(declare-fun d!2157796 () Bool)

(declare-fun c!1278431 () Bool)

(assert (=> d!2157796 (= c!1278431 (isEmpty!38627 s!2326))))

(declare-fun e!4140575 () Bool)

(assert (=> d!2157796 (= (matchZipper!2663 (store ((as const (Array Context!12162 Bool)) false) (h!72715 zl!343) true) s!2326) e!4140575)))

(declare-fun b!6868904 () Bool)

(assert (=> b!6868904 (= e!4140575 (nullableZipper!2370 (store ((as const (Array Context!12162 Bool)) false) (h!72715 zl!343) true)))))

(declare-fun b!6868905 () Bool)

(assert (=> b!6868905 (= e!4140575 (matchZipper!2663 (derivationStepZipper!2617 (store ((as const (Array Context!12162 Bool)) false) (h!72715 zl!343) true) (head!13779 s!2326)) (tail!12835 s!2326)))))

(assert (= (and d!2157796 c!1278431) b!6868904))

(assert (= (and d!2157796 (not c!1278431)) b!6868905))

(assert (=> d!2157796 m!7599520))

(assert (=> b!6868904 m!7599766))

(declare-fun m!7600202 () Bool)

(assert (=> b!6868904 m!7600202))

(assert (=> b!6868905 m!7599586))

(assert (=> b!6868905 m!7599766))

(assert (=> b!6868905 m!7599586))

(declare-fun m!7600204 () Bool)

(assert (=> b!6868905 m!7600204))

(assert (=> b!6868905 m!7599580))

(assert (=> b!6868905 m!7600204))

(assert (=> b!6868905 m!7599580))

(declare-fun m!7600206 () Bool)

(assert (=> b!6868905 m!7600206))

(assert (=> bs!1835820 d!2157796))

(declare-fun d!2157798 () Bool)

(declare-fun c!1278434 () Bool)

(assert (=> d!2157798 (= c!1278434 ((_ is Nil!66267) lt!2458102))))

(declare-fun e!4140578 () (InoxSet Context!12162))

(assert (=> d!2157798 (= (content!13010 lt!2458102) e!4140578)))

(declare-fun b!6868910 () Bool)

(assert (=> b!6868910 (= e!4140578 ((as const (Array Context!12162 Bool)) false))))

(declare-fun b!6868911 () Bool)

(assert (=> b!6868911 (= e!4140578 ((_ map or) (store ((as const (Array Context!12162 Bool)) false) (h!72715 lt!2458102) true) (content!13010 (t!380134 lt!2458102))))))

(assert (= (and d!2157798 c!1278434) b!6868910))

(assert (= (and d!2157798 (not c!1278434)) b!6868911))

(declare-fun m!7600208 () Bool)

(assert (=> b!6868911 m!7600208))

(declare-fun m!7600210 () Bool)

(assert (=> b!6868911 m!7600210))

(assert (=> b!6868128 d!2157798))

(declare-fun d!2157800 () Bool)

(declare-fun c!1278435 () Bool)

(assert (=> d!2157800 (= c!1278435 ((_ is Nil!66267) lt!2458093))))

(declare-fun e!4140579 () (InoxSet Context!12162))

(assert (=> d!2157800 (= (content!13010 lt!2458093) e!4140579)))

(declare-fun b!6868912 () Bool)

(assert (=> b!6868912 (= e!4140579 ((as const (Array Context!12162 Bool)) false))))

(declare-fun b!6868913 () Bool)

(assert (=> b!6868913 (= e!4140579 ((_ map or) (store ((as const (Array Context!12162 Bool)) false) (h!72715 lt!2458093) true) (content!13010 (t!380134 lt!2458093))))))

(assert (= (and d!2157800 c!1278435) b!6868912))

(assert (= (and d!2157800 (not c!1278435)) b!6868913))

(declare-fun m!7600212 () Bool)

(assert (=> b!6868913 m!7600212))

(declare-fun m!7600214 () Bool)

(assert (=> b!6868913 m!7600214))

(assert (=> b!6868088 d!2157800))

(assert (=> bm!625524 d!2157790))

(declare-fun b!6868914 () Bool)

(declare-fun e!4140580 () Bool)

(declare-fun call!625630 () Bool)

(assert (=> b!6868914 (= e!4140580 call!625630)))

(declare-fun call!625629 () Bool)

(declare-fun c!1278436 () Bool)

(declare-fun bm!625624 () Bool)

(declare-fun c!1278437 () Bool)

(assert (=> bm!625624 (= call!625629 (validRegex!8433 (ite c!1278436 (reg!17026 (h!72714 (exprs!6581 lt!2458040))) (ite c!1278437 (regOne!33907 (h!72714 (exprs!6581 lt!2458040))) (regOne!33906 (h!72714 (exprs!6581 lt!2458040)))))))))

(declare-fun bm!625625 () Bool)

(declare-fun call!625631 () Bool)

(assert (=> bm!625625 (= call!625631 call!625629)))

(declare-fun b!6868915 () Bool)

(declare-fun e!4140582 () Bool)

(assert (=> b!6868915 (= e!4140582 call!625629)))

(declare-fun bm!625626 () Bool)

(assert (=> bm!625626 (= call!625630 (validRegex!8433 (ite c!1278437 (regTwo!33907 (h!72714 (exprs!6581 lt!2458040))) (regTwo!33906 (h!72714 (exprs!6581 lt!2458040))))))))

(declare-fun b!6868916 () Bool)

(declare-fun e!4140586 () Bool)

(assert (=> b!6868916 (= e!4140586 e!4140580)))

(declare-fun res!2801664 () Bool)

(assert (=> b!6868916 (=> (not res!2801664) (not e!4140580))))

(assert (=> b!6868916 (= res!2801664 call!625631)))

(declare-fun d!2157802 () Bool)

(declare-fun res!2801663 () Bool)

(declare-fun e!4140584 () Bool)

(assert (=> d!2157802 (=> res!2801663 e!4140584)))

(assert (=> d!2157802 (= res!2801663 ((_ is ElementMatch!16697) (h!72714 (exprs!6581 lt!2458040))))))

(assert (=> d!2157802 (= (validRegex!8433 (h!72714 (exprs!6581 lt!2458040))) e!4140584)))

(declare-fun b!6868917 () Bool)

(declare-fun res!2801662 () Bool)

(declare-fun e!4140583 () Bool)

(assert (=> b!6868917 (=> (not res!2801662) (not e!4140583))))

(assert (=> b!6868917 (= res!2801662 call!625631)))

(declare-fun e!4140585 () Bool)

(assert (=> b!6868917 (= e!4140585 e!4140583)))

(declare-fun b!6868918 () Bool)

(assert (=> b!6868918 (= e!4140583 call!625630)))

(declare-fun b!6868919 () Bool)

(declare-fun res!2801665 () Bool)

(assert (=> b!6868919 (=> res!2801665 e!4140586)))

(assert (=> b!6868919 (= res!2801665 (not ((_ is Concat!25542) (h!72714 (exprs!6581 lt!2458040)))))))

(assert (=> b!6868919 (= e!4140585 e!4140586)))

(declare-fun b!6868920 () Bool)

(declare-fun e!4140581 () Bool)

(assert (=> b!6868920 (= e!4140581 e!4140585)))

(assert (=> b!6868920 (= c!1278437 ((_ is Union!16697) (h!72714 (exprs!6581 lt!2458040))))))

(declare-fun b!6868921 () Bool)

(assert (=> b!6868921 (= e!4140584 e!4140581)))

(assert (=> b!6868921 (= c!1278436 ((_ is Star!16697) (h!72714 (exprs!6581 lt!2458040))))))

(declare-fun b!6868922 () Bool)

(assert (=> b!6868922 (= e!4140581 e!4140582)))

(declare-fun res!2801666 () Bool)

(assert (=> b!6868922 (= res!2801666 (not (nullable!6658 (reg!17026 (h!72714 (exprs!6581 lt!2458040))))))))

(assert (=> b!6868922 (=> (not res!2801666) (not e!4140582))))

(assert (= (and d!2157802 (not res!2801663)) b!6868921))

(assert (= (and b!6868921 c!1278436) b!6868922))

(assert (= (and b!6868921 (not c!1278436)) b!6868920))

(assert (= (and b!6868922 res!2801666) b!6868915))

(assert (= (and b!6868920 c!1278437) b!6868917))

(assert (= (and b!6868920 (not c!1278437)) b!6868919))

(assert (= (and b!6868917 res!2801662) b!6868918))

(assert (= (and b!6868919 (not res!2801665)) b!6868916))

(assert (= (and b!6868916 res!2801664) b!6868914))

(assert (= (or b!6868918 b!6868914) bm!625626))

(assert (= (or b!6868917 b!6868916) bm!625625))

(assert (= (or b!6868915 bm!625625) bm!625624))

(declare-fun m!7600216 () Bool)

(assert (=> bm!625624 m!7600216))

(declare-fun m!7600218 () Bool)

(assert (=> bm!625626 m!7600218))

(declare-fun m!7600220 () Bool)

(assert (=> b!6868922 m!7600220))

(assert (=> bs!1835821 d!2157802))

(assert (=> bm!625521 d!2157790))

(declare-fun b!6868923 () Bool)

(declare-fun e!4140587 () Bool)

(declare-fun call!625633 () Bool)

(assert (=> b!6868923 (= e!4140587 call!625633)))

(declare-fun c!1278438 () Bool)

(declare-fun bm!625627 () Bool)

(declare-fun call!625632 () Bool)

(declare-fun c!1278439 () Bool)

(assert (=> bm!625627 (= call!625632 (validRegex!8433 (ite c!1278438 (reg!17026 lt!2458097) (ite c!1278439 (regOne!33907 lt!2458097) (regOne!33906 lt!2458097)))))))

(declare-fun bm!625628 () Bool)

(declare-fun call!625634 () Bool)

(assert (=> bm!625628 (= call!625634 call!625632)))

(declare-fun b!6868924 () Bool)

(declare-fun e!4140589 () Bool)

(assert (=> b!6868924 (= e!4140589 call!625632)))

(declare-fun bm!625629 () Bool)

(assert (=> bm!625629 (= call!625633 (validRegex!8433 (ite c!1278439 (regTwo!33907 lt!2458097) (regTwo!33906 lt!2458097))))))

(declare-fun b!6868925 () Bool)

(declare-fun e!4140593 () Bool)

(assert (=> b!6868925 (= e!4140593 e!4140587)))

(declare-fun res!2801669 () Bool)

(assert (=> b!6868925 (=> (not res!2801669) (not e!4140587))))

(assert (=> b!6868925 (= res!2801669 call!625634)))

(declare-fun d!2157804 () Bool)

(declare-fun res!2801668 () Bool)

(declare-fun e!4140591 () Bool)

(assert (=> d!2157804 (=> res!2801668 e!4140591)))

(assert (=> d!2157804 (= res!2801668 ((_ is ElementMatch!16697) lt!2458097))))

(assert (=> d!2157804 (= (validRegex!8433 lt!2458097) e!4140591)))

(declare-fun b!6868926 () Bool)

(declare-fun res!2801667 () Bool)

(declare-fun e!4140590 () Bool)

(assert (=> b!6868926 (=> (not res!2801667) (not e!4140590))))

(assert (=> b!6868926 (= res!2801667 call!625634)))

(declare-fun e!4140592 () Bool)

(assert (=> b!6868926 (= e!4140592 e!4140590)))

(declare-fun b!6868927 () Bool)

(assert (=> b!6868927 (= e!4140590 call!625633)))

(declare-fun b!6868928 () Bool)

(declare-fun res!2801670 () Bool)

(assert (=> b!6868928 (=> res!2801670 e!4140593)))

(assert (=> b!6868928 (= res!2801670 (not ((_ is Concat!25542) lt!2458097)))))

(assert (=> b!6868928 (= e!4140592 e!4140593)))

(declare-fun b!6868929 () Bool)

(declare-fun e!4140588 () Bool)

(assert (=> b!6868929 (= e!4140588 e!4140592)))

(assert (=> b!6868929 (= c!1278439 ((_ is Union!16697) lt!2458097))))

(declare-fun b!6868930 () Bool)

(assert (=> b!6868930 (= e!4140591 e!4140588)))

(assert (=> b!6868930 (= c!1278438 ((_ is Star!16697) lt!2458097))))

(declare-fun b!6868931 () Bool)

(assert (=> b!6868931 (= e!4140588 e!4140589)))

(declare-fun res!2801671 () Bool)

(assert (=> b!6868931 (= res!2801671 (not (nullable!6658 (reg!17026 lt!2458097))))))

(assert (=> b!6868931 (=> (not res!2801671) (not e!4140589))))

(assert (= (and d!2157804 (not res!2801668)) b!6868930))

(assert (= (and b!6868930 c!1278438) b!6868931))

(assert (= (and b!6868930 (not c!1278438)) b!6868929))

(assert (= (and b!6868931 res!2801671) b!6868924))

(assert (= (and b!6868929 c!1278439) b!6868926))

(assert (= (and b!6868929 (not c!1278439)) b!6868928))

(assert (= (and b!6868926 res!2801667) b!6868927))

(assert (= (and b!6868928 (not res!2801670)) b!6868925))

(assert (= (and b!6868925 res!2801669) b!6868923))

(assert (= (or b!6868927 b!6868923) bm!625629))

(assert (= (or b!6868926 b!6868925) bm!625628))

(assert (= (or b!6868924 bm!625628) bm!625627))

(declare-fun m!7600222 () Bool)

(assert (=> bm!625627 m!7600222))

(declare-fun m!7600224 () Bool)

(assert (=> bm!625629 m!7600224))

(declare-fun m!7600226 () Bool)

(assert (=> b!6868931 m!7600226))

(assert (=> d!2157530 d!2157804))

(declare-fun bs!1836044 () Bool)

(declare-fun d!2157806 () Bool)

(assert (= bs!1836044 (and d!2157806 d!2157564)))

(declare-fun lambda!388679 () Int)

(assert (=> bs!1836044 (= lambda!388679 lambda!388628)))

(declare-fun bs!1836045 () Bool)

(assert (= bs!1836045 (and d!2157806 d!2157550)))

(assert (=> bs!1836045 (= lambda!388679 lambda!388619)))

(declare-fun bs!1836046 () Bool)

(assert (= bs!1836046 (and d!2157806 b!6867793)))

(assert (=> bs!1836046 (= lambda!388679 lambda!388573)))

(declare-fun bs!1836047 () Bool)

(assert (= bs!1836047 (and d!2157806 d!2157578)))

(assert (=> bs!1836047 (= lambda!388679 lambda!388636)))

(assert (=> bs!1836047 (not (= lambda!388679 lambda!388637))))

(declare-fun bs!1836048 () Bool)

(assert (= bs!1836048 (and d!2157806 d!2157534)))

(assert (=> bs!1836048 (= lambda!388679 lambda!388616)))

(declare-fun bs!1836049 () Bool)

(assert (= bs!1836049 (and d!2157806 d!2157582)))

(assert (=> bs!1836049 (= lambda!388679 lambda!388641)))

(declare-fun bs!1836050 () Bool)

(assert (= bs!1836050 (and d!2157806 d!2157576)))

(assert (=> bs!1836050 (not (= lambda!388679 lambda!388631))))

(declare-fun bs!1836051 () Bool)

(assert (= bs!1836051 (and d!2157806 b!6867798)))

(assert (=> bs!1836051 (not (= lambda!388679 lambda!388571))))

(declare-fun bs!1836052 () Bool)

(assert (= bs!1836052 (and d!2157806 d!2157580)))

(assert (=> bs!1836052 (= lambda!388679 lambda!388640)))

(declare-fun bs!1836053 () Bool)

(assert (= bs!1836053 (and d!2157806 d!2157772)))

(assert (=> bs!1836053 (= lambda!388679 lambda!388675)))

(declare-fun b!6868932 () Bool)

(declare-fun e!4140598 () Bool)

(declare-fun lt!2458172 () Regex!16697)

(assert (=> b!6868932 (= e!4140598 (= lt!2458172 (head!13781 (unfocusZipperList!2114 lt!2458043))))))

(declare-fun b!6868933 () Bool)

(declare-fun e!4140599 () Regex!16697)

(declare-fun e!4140594 () Regex!16697)

(assert (=> b!6868933 (= e!4140599 e!4140594)))

(declare-fun c!1278440 () Bool)

(assert (=> b!6868933 (= c!1278440 ((_ is Cons!66266) (unfocusZipperList!2114 lt!2458043)))))

(declare-fun e!4140596 () Bool)

(assert (=> d!2157806 e!4140596))

(declare-fun res!2801673 () Bool)

(assert (=> d!2157806 (=> (not res!2801673) (not e!4140596))))

(assert (=> d!2157806 (= res!2801673 (validRegex!8433 lt!2458172))))

(assert (=> d!2157806 (= lt!2458172 e!4140599)))

(declare-fun c!1278441 () Bool)

(declare-fun e!4140597 () Bool)

(assert (=> d!2157806 (= c!1278441 e!4140597)))

(declare-fun res!2801672 () Bool)

(assert (=> d!2157806 (=> (not res!2801672) (not e!4140597))))

(assert (=> d!2157806 (= res!2801672 ((_ is Cons!66266) (unfocusZipperList!2114 lt!2458043)))))

(assert (=> d!2157806 (forall!15890 (unfocusZipperList!2114 lt!2458043) lambda!388679)))

(assert (=> d!2157806 (= (generalisedUnion!2532 (unfocusZipperList!2114 lt!2458043)) lt!2458172)))

(declare-fun b!6868934 () Bool)

(assert (=> b!6868934 (= e!4140594 EmptyLang!16697)))

(declare-fun b!6868935 () Bool)

(declare-fun e!4140595 () Bool)

(assert (=> b!6868935 (= e!4140595 (isEmptyLang!2026 lt!2458172))))

(declare-fun b!6868936 () Bool)

(assert (=> b!6868936 (= e!4140594 (Union!16697 (h!72714 (unfocusZipperList!2114 lt!2458043)) (generalisedUnion!2532 (t!380133 (unfocusZipperList!2114 lt!2458043)))))))

(declare-fun b!6868937 () Bool)

(assert (=> b!6868937 (= e!4140597 (isEmpty!38628 (t!380133 (unfocusZipperList!2114 lt!2458043))))))

(declare-fun b!6868938 () Bool)

(assert (=> b!6868938 (= e!4140596 e!4140595)))

(declare-fun c!1278443 () Bool)

(assert (=> b!6868938 (= c!1278443 (isEmpty!38628 (unfocusZipperList!2114 lt!2458043)))))

(declare-fun b!6868939 () Bool)

(assert (=> b!6868939 (= e!4140595 e!4140598)))

(declare-fun c!1278442 () Bool)

(assert (=> b!6868939 (= c!1278442 (isEmpty!38628 (tail!12836 (unfocusZipperList!2114 lt!2458043))))))

(declare-fun b!6868940 () Bool)

(assert (=> b!6868940 (= e!4140598 (isUnion!1456 lt!2458172))))

(declare-fun b!6868941 () Bool)

(assert (=> b!6868941 (= e!4140599 (h!72714 (unfocusZipperList!2114 lt!2458043)))))

(assert (= (and d!2157806 res!2801672) b!6868937))

(assert (= (and d!2157806 c!1278441) b!6868941))

(assert (= (and d!2157806 (not c!1278441)) b!6868933))

(assert (= (and b!6868933 c!1278440) b!6868936))

(assert (= (and b!6868933 (not c!1278440)) b!6868934))

(assert (= (and d!2157806 res!2801673) b!6868938))

(assert (= (and b!6868938 c!1278443) b!6868935))

(assert (= (and b!6868938 (not c!1278443)) b!6868939))

(assert (= (and b!6868939 c!1278442) b!6868932))

(assert (= (and b!6868939 (not c!1278442)) b!6868940))

(declare-fun m!7600228 () Bool)

(assert (=> d!2157806 m!7600228))

(assert (=> d!2157806 m!7599616))

(declare-fun m!7600230 () Bool)

(assert (=> d!2157806 m!7600230))

(declare-fun m!7600232 () Bool)

(assert (=> b!6868935 m!7600232))

(assert (=> b!6868938 m!7599616))

(declare-fun m!7600234 () Bool)

(assert (=> b!6868938 m!7600234))

(assert (=> b!6868932 m!7599616))

(declare-fun m!7600236 () Bool)

(assert (=> b!6868932 m!7600236))

(assert (=> b!6868939 m!7599616))

(declare-fun m!7600238 () Bool)

(assert (=> b!6868939 m!7600238))

(assert (=> b!6868939 m!7600238))

(declare-fun m!7600240 () Bool)

(assert (=> b!6868939 m!7600240))

(declare-fun m!7600242 () Bool)

(assert (=> b!6868940 m!7600242))

(declare-fun m!7600244 () Bool)

(assert (=> b!6868936 m!7600244))

(declare-fun m!7600246 () Bool)

(assert (=> b!6868937 m!7600246))

(assert (=> d!2157530 d!2157806))

(declare-fun bs!1836054 () Bool)

(declare-fun d!2157808 () Bool)

(assert (= bs!1836054 (and d!2157808 d!2157564)))

(declare-fun lambda!388680 () Int)

(assert (=> bs!1836054 (= lambda!388680 lambda!388628)))

(declare-fun bs!1836055 () Bool)

(assert (= bs!1836055 (and d!2157808 d!2157550)))

(assert (=> bs!1836055 (= lambda!388680 lambda!388619)))

(declare-fun bs!1836056 () Bool)

(assert (= bs!1836056 (and d!2157808 b!6867793)))

(assert (=> bs!1836056 (= lambda!388680 lambda!388573)))

(declare-fun bs!1836057 () Bool)

(assert (= bs!1836057 (and d!2157808 d!2157578)))

(assert (=> bs!1836057 (not (= lambda!388680 lambda!388637))))

(declare-fun bs!1836058 () Bool)

(assert (= bs!1836058 (and d!2157808 d!2157534)))

(assert (=> bs!1836058 (= lambda!388680 lambda!388616)))

(declare-fun bs!1836059 () Bool)

(assert (= bs!1836059 (and d!2157808 d!2157582)))

(assert (=> bs!1836059 (= lambda!388680 lambda!388641)))

(declare-fun bs!1836060 () Bool)

(assert (= bs!1836060 (and d!2157808 d!2157576)))

(assert (=> bs!1836060 (not (= lambda!388680 lambda!388631))))

(declare-fun bs!1836061 () Bool)

(assert (= bs!1836061 (and d!2157808 b!6867798)))

(assert (=> bs!1836061 (not (= lambda!388680 lambda!388571))))

(declare-fun bs!1836062 () Bool)

(assert (= bs!1836062 (and d!2157808 d!2157580)))

(assert (=> bs!1836062 (= lambda!388680 lambda!388640)))

(declare-fun bs!1836063 () Bool)

(assert (= bs!1836063 (and d!2157808 d!2157772)))

(assert (=> bs!1836063 (= lambda!388680 lambda!388675)))

(assert (=> bs!1836057 (= lambda!388680 lambda!388636)))

(declare-fun bs!1836064 () Bool)

(assert (= bs!1836064 (and d!2157808 d!2157806)))

(assert (=> bs!1836064 (= lambda!388680 lambda!388679)))

(declare-fun lt!2458173 () List!66390)

(assert (=> d!2157808 (forall!15890 lt!2458173 lambda!388680)))

(declare-fun e!4140600 () List!66390)

(assert (=> d!2157808 (= lt!2458173 e!4140600)))

(declare-fun c!1278444 () Bool)

(assert (=> d!2157808 (= c!1278444 ((_ is Cons!66267) lt!2458043))))

(assert (=> d!2157808 (= (unfocusZipperList!2114 lt!2458043) lt!2458173)))

(declare-fun b!6868942 () Bool)

(assert (=> b!6868942 (= e!4140600 (Cons!66266 (generalisedConcat!2285 (exprs!6581 (h!72715 lt!2458043))) (unfocusZipperList!2114 (t!380134 lt!2458043))))))

(declare-fun b!6868943 () Bool)

(assert (=> b!6868943 (= e!4140600 Nil!66266)))

(assert (= (and d!2157808 c!1278444) b!6868942))

(assert (= (and d!2157808 (not c!1278444)) b!6868943))

(declare-fun m!7600248 () Bool)

(assert (=> d!2157808 m!7600248))

(declare-fun m!7600250 () Bool)

(assert (=> b!6868942 m!7600250))

(declare-fun m!7600252 () Bool)

(assert (=> b!6868942 m!7600252))

(assert (=> d!2157530 d!2157808))

(declare-fun d!2157810 () Bool)

(declare-fun res!2801674 () Bool)

(declare-fun e!4140601 () Bool)

(assert (=> d!2157810 (=> res!2801674 e!4140601)))

(assert (=> d!2157810 (= res!2801674 ((_ is Nil!66266) lt!2458035))))

(assert (=> d!2157810 (= (forall!15890 lt!2458035 lambda!388631) e!4140601)))

(declare-fun b!6868944 () Bool)

(declare-fun e!4140602 () Bool)

(assert (=> b!6868944 (= e!4140601 e!4140602)))

(declare-fun res!2801675 () Bool)

(assert (=> b!6868944 (=> (not res!2801675) (not e!4140602))))

(assert (=> b!6868944 (= res!2801675 (dynLambda!26529 lambda!388631 (h!72714 lt!2458035)))))

(declare-fun b!6868945 () Bool)

(assert (=> b!6868945 (= e!4140602 (forall!15890 (t!380133 lt!2458035) lambda!388631))))

(assert (= (and d!2157810 (not res!2801674)) b!6868944))

(assert (= (and b!6868944 res!2801675) b!6868945))

(declare-fun b_lambda!259843 () Bool)

(assert (=> (not b_lambda!259843) (not b!6868944)))

(declare-fun m!7600254 () Bool)

(assert (=> b!6868944 m!7600254))

(declare-fun m!7600256 () Bool)

(assert (=> b!6868945 m!7600256))

(assert (=> d!2157576 d!2157810))

(declare-fun b!6868946 () Bool)

(declare-fun e!4140603 () Bool)

(declare-fun call!625636 () Bool)

(assert (=> b!6868946 (= e!4140603 call!625636)))

(declare-fun c!1278445 () Bool)

(declare-fun bm!625630 () Bool)

(declare-fun c!1278446 () Bool)

(declare-fun call!625635 () Bool)

(assert (=> bm!625630 (= call!625635 (validRegex!8433 (ite c!1278445 (reg!17026 (ite c!1278252 (regTwo!33907 lt!2458034) (regTwo!33906 lt!2458034))) (ite c!1278446 (regOne!33907 (ite c!1278252 (regTwo!33907 lt!2458034) (regTwo!33906 lt!2458034))) (regOne!33906 (ite c!1278252 (regTwo!33907 lt!2458034) (regTwo!33906 lt!2458034)))))))))

(declare-fun bm!625631 () Bool)

(declare-fun call!625637 () Bool)

(assert (=> bm!625631 (= call!625637 call!625635)))

(declare-fun b!6868947 () Bool)

(declare-fun e!4140605 () Bool)

(assert (=> b!6868947 (= e!4140605 call!625635)))

(declare-fun bm!625632 () Bool)

(assert (=> bm!625632 (= call!625636 (validRegex!8433 (ite c!1278446 (regTwo!33907 (ite c!1278252 (regTwo!33907 lt!2458034) (regTwo!33906 lt!2458034))) (regTwo!33906 (ite c!1278252 (regTwo!33907 lt!2458034) (regTwo!33906 lt!2458034))))))))

(declare-fun b!6868948 () Bool)

(declare-fun e!4140609 () Bool)

(assert (=> b!6868948 (= e!4140609 e!4140603)))

(declare-fun res!2801678 () Bool)

(assert (=> b!6868948 (=> (not res!2801678) (not e!4140603))))

(assert (=> b!6868948 (= res!2801678 call!625637)))

(declare-fun d!2157812 () Bool)

(declare-fun res!2801677 () Bool)

(declare-fun e!4140607 () Bool)

(assert (=> d!2157812 (=> res!2801677 e!4140607)))

(assert (=> d!2157812 (= res!2801677 ((_ is ElementMatch!16697) (ite c!1278252 (regTwo!33907 lt!2458034) (regTwo!33906 lt!2458034))))))

(assert (=> d!2157812 (= (validRegex!8433 (ite c!1278252 (regTwo!33907 lt!2458034) (regTwo!33906 lt!2458034))) e!4140607)))

(declare-fun b!6868949 () Bool)

(declare-fun res!2801676 () Bool)

(declare-fun e!4140606 () Bool)

(assert (=> b!6868949 (=> (not res!2801676) (not e!4140606))))

(assert (=> b!6868949 (= res!2801676 call!625637)))

(declare-fun e!4140608 () Bool)

(assert (=> b!6868949 (= e!4140608 e!4140606)))

(declare-fun b!6868950 () Bool)

(assert (=> b!6868950 (= e!4140606 call!625636)))

(declare-fun b!6868951 () Bool)

(declare-fun res!2801679 () Bool)

(assert (=> b!6868951 (=> res!2801679 e!4140609)))

(assert (=> b!6868951 (= res!2801679 (not ((_ is Concat!25542) (ite c!1278252 (regTwo!33907 lt!2458034) (regTwo!33906 lt!2458034)))))))

(assert (=> b!6868951 (= e!4140608 e!4140609)))

(declare-fun b!6868952 () Bool)

(declare-fun e!4140604 () Bool)

(assert (=> b!6868952 (= e!4140604 e!4140608)))

(assert (=> b!6868952 (= c!1278446 ((_ is Union!16697) (ite c!1278252 (regTwo!33907 lt!2458034) (regTwo!33906 lt!2458034))))))

(declare-fun b!6868953 () Bool)

(assert (=> b!6868953 (= e!4140607 e!4140604)))

(assert (=> b!6868953 (= c!1278445 ((_ is Star!16697) (ite c!1278252 (regTwo!33907 lt!2458034) (regTwo!33906 lt!2458034))))))

(declare-fun b!6868954 () Bool)

(assert (=> b!6868954 (= e!4140604 e!4140605)))

(declare-fun res!2801680 () Bool)

(assert (=> b!6868954 (= res!2801680 (not (nullable!6658 (reg!17026 (ite c!1278252 (regTwo!33907 lt!2458034) (regTwo!33906 lt!2458034))))))))

(assert (=> b!6868954 (=> (not res!2801680) (not e!4140605))))

(assert (= (and d!2157812 (not res!2801677)) b!6868953))

(assert (= (and b!6868953 c!1278445) b!6868954))

(assert (= (and b!6868953 (not c!1278445)) b!6868952))

(assert (= (and b!6868954 res!2801680) b!6868947))

(assert (= (and b!6868952 c!1278446) b!6868949))

(assert (= (and b!6868952 (not c!1278446)) b!6868951))

(assert (= (and b!6868949 res!2801676) b!6868950))

(assert (= (and b!6868951 (not res!2801679)) b!6868948))

(assert (= (and b!6868948 res!2801678) b!6868946))

(assert (= (or b!6868950 b!6868946) bm!625632))

(assert (= (or b!6868949 b!6868948) bm!625631))

(assert (= (or b!6868947 bm!625631) bm!625630))

(declare-fun m!7600258 () Bool)

(assert (=> bm!625630 m!7600258))

(declare-fun m!7600260 () Bool)

(assert (=> bm!625632 m!7600260))

(declare-fun m!7600262 () Bool)

(assert (=> b!6868954 m!7600262))

(assert (=> bm!625548 d!2157812))

(declare-fun d!2157814 () Bool)

(declare-fun res!2801681 () Bool)

(declare-fun e!4140610 () Bool)

(assert (=> d!2157814 (=> res!2801681 e!4140610)))

(assert (=> d!2157814 (= res!2801681 ((_ is Nil!66267) lt!2458102))))

(assert (=> d!2157814 (= (noDuplicate!2461 lt!2458102) e!4140610)))

(declare-fun b!6868955 () Bool)

(declare-fun e!4140611 () Bool)

(assert (=> b!6868955 (= e!4140610 e!4140611)))

(declare-fun res!2801682 () Bool)

(assert (=> b!6868955 (=> (not res!2801682) (not e!4140611))))

(assert (=> b!6868955 (= res!2801682 (not (contains!20355 (t!380134 lt!2458102) (h!72715 lt!2458102))))))

(declare-fun b!6868956 () Bool)

(assert (=> b!6868956 (= e!4140611 (noDuplicate!2461 (t!380134 lt!2458102)))))

(assert (= (and d!2157814 (not res!2801681)) b!6868955))

(assert (= (and b!6868955 res!2801682) b!6868956))

(declare-fun m!7600264 () Bool)

(assert (=> b!6868955 m!7600264))

(declare-fun m!7600266 () Bool)

(assert (=> b!6868956 m!7600266))

(assert (=> d!2157540 d!2157814))

(declare-fun d!2157816 () Bool)

(declare-fun e!4140612 () Bool)

(assert (=> d!2157816 e!4140612))

(declare-fun res!2801684 () Bool)

(assert (=> d!2157816 (=> (not res!2801684) (not e!4140612))))

(declare-fun res!2801683 () List!66391)

(assert (=> d!2157816 (= res!2801684 (noDuplicate!2461 res!2801683))))

(declare-fun e!4140613 () Bool)

(assert (=> d!2157816 e!4140613))

(assert (=> d!2157816 (= (choose!51181 (store ((as const (Array Context!12162 Bool)) false) lt!2458040 true)) res!2801683)))

(declare-fun b!6868958 () Bool)

(declare-fun e!4140614 () Bool)

(declare-fun tp!1885582 () Bool)

(assert (=> b!6868958 (= e!4140614 tp!1885582)))

(declare-fun b!6868957 () Bool)

(declare-fun tp!1885583 () Bool)

(assert (=> b!6868957 (= e!4140613 (and (inv!84989 (h!72715 res!2801683)) e!4140614 tp!1885583))))

(declare-fun b!6868959 () Bool)

(assert (=> b!6868959 (= e!4140612 (= (content!13010 res!2801683) (store ((as const (Array Context!12162 Bool)) false) lt!2458040 true)))))

(assert (= b!6868957 b!6868958))

(assert (= (and d!2157816 ((_ is Cons!66267) res!2801683)) b!6868957))

(assert (= (and d!2157816 res!2801684) b!6868959))

(declare-fun m!7600268 () Bool)

(assert (=> d!2157816 m!7600268))

(declare-fun m!7600270 () Bool)

(assert (=> b!6868957 m!7600270))

(declare-fun m!7600272 () Bool)

(assert (=> b!6868959 m!7600272))

(assert (=> d!2157540 d!2157816))

(declare-fun bs!1836065 () Bool)

(declare-fun d!2157818 () Bool)

(assert (= bs!1836065 (and d!2157818 b!6867794)))

(declare-fun lambda!388681 () Int)

(assert (=> bs!1836065 (not (= lambda!388681 lambda!388572))))

(declare-fun bs!1836066 () Bool)

(assert (= bs!1836066 (and d!2157818 d!2157556)))

(assert (=> bs!1836066 (= (= lambda!388625 lambda!388572) (= lambda!388681 lambda!388622))))

(declare-fun bs!1836067 () Bool)

(assert (= bs!1836067 (and d!2157818 d!2157558)))

(assert (=> bs!1836067 (not (= lambda!388681 lambda!388625))))

(declare-fun bs!1836068 () Bool)

(assert (= bs!1836068 (and d!2157818 d!2157788)))

(assert (=> bs!1836068 (not (= lambda!388681 lambda!388678))))

(assert (=> d!2157818 true))

(assert (=> d!2157818 (< (dynLambda!26531 order!27729 lambda!388625) (dynLambda!26531 order!27729 lambda!388681))))

(assert (=> d!2157818 (= (exists!2828 zl!343 lambda!388625) (not (forall!15892 zl!343 lambda!388681)))))

(declare-fun bs!1836069 () Bool)

(assert (= bs!1836069 d!2157818))

(declare-fun m!7600274 () Bool)

(assert (=> bs!1836069 m!7600274))

(assert (=> d!2157558 d!2157818))

(declare-fun bs!1836070 () Bool)

(declare-fun d!2157820 () Bool)

(assert (= bs!1836070 (and d!2157820 b!6867794)))

(declare-fun lambda!388684 () Int)

(assert (=> bs!1836070 (= lambda!388684 lambda!388572)))

(declare-fun bs!1836071 () Bool)

(assert (= bs!1836071 (and d!2157820 d!2157558)))

(assert (=> bs!1836071 (= lambda!388684 lambda!388625)))

(declare-fun bs!1836072 () Bool)

(assert (= bs!1836072 (and d!2157820 d!2157556)))

(assert (=> bs!1836072 (not (= lambda!388684 lambda!388622))))

(declare-fun bs!1836073 () Bool)

(assert (= bs!1836073 (and d!2157820 d!2157788)))

(assert (=> bs!1836073 (not (= lambda!388684 lambda!388678))))

(declare-fun bs!1836074 () Bool)

(assert (= bs!1836074 (and d!2157820 d!2157818)))

(assert (=> bs!1836074 (not (= lambda!388684 lambda!388681))))

(assert (=> d!2157820 true))

(assert (=> d!2157820 (exists!2828 zl!343 lambda!388684)))

(assert (=> d!2157820 true))

(declare-fun _$60!1027 () Unit!160165)

(assert (=> d!2157820 (= (choose!51183 zl!343 s!2326) _$60!1027)))

(declare-fun bs!1836075 () Bool)

(assert (= bs!1836075 d!2157820))

(declare-fun m!7600276 () Bool)

(assert (=> bs!1836075 m!7600276))

(assert (=> d!2157558 d!2157820))

(declare-fun d!2157822 () Bool)

(declare-fun c!1278449 () Bool)

(assert (=> d!2157822 (= c!1278449 (isEmpty!38627 s!2326))))

(declare-fun e!4140615 () Bool)

(assert (=> d!2157822 (= (matchZipper!2663 (content!13010 zl!343) s!2326) e!4140615)))

(declare-fun b!6868960 () Bool)

(assert (=> b!6868960 (= e!4140615 (nullableZipper!2370 (content!13010 zl!343)))))

(declare-fun b!6868961 () Bool)

(assert (=> b!6868961 (= e!4140615 (matchZipper!2663 (derivationStepZipper!2617 (content!13010 zl!343) (head!13779 s!2326)) (tail!12835 s!2326)))))

(assert (= (and d!2157822 c!1278449) b!6868960))

(assert (= (and d!2157822 (not c!1278449)) b!6868961))

(assert (=> d!2157822 m!7599520))

(assert (=> b!6868960 m!7599684))

(declare-fun m!7600278 () Bool)

(assert (=> b!6868960 m!7600278))

(assert (=> b!6868961 m!7599586))

(assert (=> b!6868961 m!7599684))

(assert (=> b!6868961 m!7599586))

(declare-fun m!7600280 () Bool)

(assert (=> b!6868961 m!7600280))

(assert (=> b!6868961 m!7599580))

(assert (=> b!6868961 m!7600280))

(assert (=> b!6868961 m!7599580))

(declare-fun m!7600282 () Bool)

(assert (=> b!6868961 m!7600282))

(assert (=> d!2157558 d!2157822))

(declare-fun d!2157824 () Bool)

(declare-fun c!1278450 () Bool)

(assert (=> d!2157824 (= c!1278450 ((_ is Nil!66267) zl!343))))

(declare-fun e!4140616 () (InoxSet Context!12162))

(assert (=> d!2157824 (= (content!13010 zl!343) e!4140616)))

(declare-fun b!6868962 () Bool)

(assert (=> b!6868962 (= e!4140616 ((as const (Array Context!12162 Bool)) false))))

(declare-fun b!6868963 () Bool)

(assert (=> b!6868963 (= e!4140616 ((_ map or) (store ((as const (Array Context!12162 Bool)) false) (h!72715 zl!343) true) (content!13010 (t!380134 zl!343))))))

(assert (= (and d!2157824 c!1278450) b!6868962))

(assert (= (and d!2157824 (not c!1278450)) b!6868963))

(assert (=> b!6868963 m!7599766))

(declare-fun m!7600284 () Bool)

(assert (=> b!6868963 m!7600284))

(assert (=> d!2157558 d!2157824))

(declare-fun bs!1836076 () Bool)

(declare-fun b!6868967 () Bool)

(assert (= bs!1836076 (and b!6868967 b!6867923)))

(declare-fun lambda!388685 () Int)

(assert (=> bs!1836076 (= (and (= (reg!17026 (regOne!33907 r!7292)) (reg!17026 r!7292)) (= (regOne!33907 r!7292) r!7292)) (= lambda!388685 lambda!388599))))

(declare-fun bs!1836077 () Bool)

(assert (= bs!1836077 (and b!6868967 b!6867924)))

(assert (=> bs!1836077 (not (= lambda!388685 lambda!388601))))

(assert (=> b!6868967 true))

(assert (=> b!6868967 true))

(declare-fun bs!1836078 () Bool)

(declare-fun b!6868968 () Bool)

(assert (= bs!1836078 (and b!6868968 b!6867923)))

(declare-fun lambda!388686 () Int)

(assert (=> bs!1836078 (not (= lambda!388686 lambda!388599))))

(declare-fun bs!1836079 () Bool)

(assert (= bs!1836079 (and b!6868968 b!6867924)))

(assert (=> bs!1836079 (= (and (= (regOne!33906 (regOne!33907 r!7292)) (regOne!33906 r!7292)) (= (regTwo!33906 (regOne!33907 r!7292)) (regTwo!33906 r!7292))) (= lambda!388686 lambda!388601))))

(declare-fun bs!1836080 () Bool)

(assert (= bs!1836080 (and b!6868968 b!6868967)))

(assert (=> bs!1836080 (not (= lambda!388686 lambda!388685))))

(assert (=> b!6868968 true))

(assert (=> b!6868968 true))

(declare-fun bm!625633 () Bool)

(declare-fun call!625638 () Bool)

(declare-fun c!1278454 () Bool)

(assert (=> bm!625633 (= call!625638 (Exists!3757 (ite c!1278454 lambda!388685 lambda!388686)))))

(declare-fun b!6868964 () Bool)

(declare-fun c!1278451 () Bool)

(assert (=> b!6868964 (= c!1278451 ((_ is ElementMatch!16697) (regOne!33907 r!7292)))))

(declare-fun e!4140620 () Bool)

(declare-fun e!4140619 () Bool)

(assert (=> b!6868964 (= e!4140620 e!4140619)))

(declare-fun b!6868965 () Bool)

(assert (=> b!6868965 (= e!4140619 (= s!2326 (Cons!66268 (c!1278149 (regOne!33907 r!7292)) Nil!66268)))))

(declare-fun b!6868966 () Bool)

(declare-fun e!4140618 () Bool)

(declare-fun e!4140621 () Bool)

(assert (=> b!6868966 (= e!4140618 e!4140621)))

(assert (=> b!6868966 (= c!1278454 ((_ is Star!16697) (regOne!33907 r!7292)))))

(declare-fun e!4140622 () Bool)

(assert (=> b!6868967 (= e!4140622 call!625638)))

(declare-fun bm!625634 () Bool)

(declare-fun call!625639 () Bool)

(assert (=> bm!625634 (= call!625639 (isEmpty!38627 s!2326))))

(declare-fun b!6868969 () Bool)

(declare-fun e!4140623 () Bool)

(assert (=> b!6868969 (= e!4140618 e!4140623)))

(declare-fun res!2801685 () Bool)

(assert (=> b!6868969 (= res!2801685 (matchRSpec!3798 (regOne!33907 (regOne!33907 r!7292)) s!2326))))

(assert (=> b!6868969 (=> res!2801685 e!4140623)))

(declare-fun b!6868970 () Bool)

(declare-fun e!4140617 () Bool)

(assert (=> b!6868970 (= e!4140617 e!4140620)))

(declare-fun res!2801687 () Bool)

(assert (=> b!6868970 (= res!2801687 (not ((_ is EmptyLang!16697) (regOne!33907 r!7292))))))

(assert (=> b!6868970 (=> (not res!2801687) (not e!4140620))))

(declare-fun b!6868971 () Bool)

(assert (=> b!6868971 (= e!4140617 call!625639)))

(declare-fun b!6868972 () Bool)

(assert (=> b!6868972 (= e!4140623 (matchRSpec!3798 (regTwo!33907 (regOne!33907 r!7292)) s!2326))))

(declare-fun d!2157826 () Bool)

(declare-fun c!1278452 () Bool)

(assert (=> d!2157826 (= c!1278452 ((_ is EmptyExpr!16697) (regOne!33907 r!7292)))))

(assert (=> d!2157826 (= (matchRSpec!3798 (regOne!33907 r!7292) s!2326) e!4140617)))

(assert (=> b!6868968 (= e!4140621 call!625638)))

(declare-fun b!6868973 () Bool)

(declare-fun res!2801686 () Bool)

(assert (=> b!6868973 (=> res!2801686 e!4140622)))

(assert (=> b!6868973 (= res!2801686 call!625639)))

(assert (=> b!6868973 (= e!4140621 e!4140622)))

(declare-fun b!6868974 () Bool)

(declare-fun c!1278453 () Bool)

(assert (=> b!6868974 (= c!1278453 ((_ is Union!16697) (regOne!33907 r!7292)))))

(assert (=> b!6868974 (= e!4140619 e!4140618)))

(assert (= (and d!2157826 c!1278452) b!6868971))

(assert (= (and d!2157826 (not c!1278452)) b!6868970))

(assert (= (and b!6868970 res!2801687) b!6868964))

(assert (= (and b!6868964 c!1278451) b!6868965))

(assert (= (and b!6868964 (not c!1278451)) b!6868974))

(assert (= (and b!6868974 c!1278453) b!6868969))

(assert (= (and b!6868974 (not c!1278453)) b!6868966))

(assert (= (and b!6868969 (not res!2801685)) b!6868972))

(assert (= (and b!6868966 c!1278454) b!6868973))

(assert (= (and b!6868966 (not c!1278454)) b!6868968))

(assert (= (and b!6868973 (not res!2801686)) b!6868967))

(assert (= (or b!6868967 b!6868968) bm!625633))

(assert (= (or b!6868971 b!6868973) bm!625634))

(declare-fun m!7600286 () Bool)

(assert (=> bm!625633 m!7600286))

(assert (=> bm!625634 m!7599520))

(declare-fun m!7600288 () Bool)

(assert (=> b!6868969 m!7600288))

(declare-fun m!7600290 () Bool)

(assert (=> b!6868972 m!7600290))

(assert (=> b!6867925 d!2157826))

(declare-fun d!2157828 () Bool)

(declare-fun res!2801688 () Bool)

(declare-fun e!4140624 () Bool)

(assert (=> d!2157828 (=> res!2801688 e!4140624)))

(assert (=> d!2157828 (= res!2801688 ((_ is Nil!66266) (exprs!6581 (h!72715 zl!343))))))

(assert (=> d!2157828 (= (forall!15890 (exprs!6581 (h!72715 zl!343)) lambda!388641) e!4140624)))

(declare-fun b!6868975 () Bool)

(declare-fun e!4140625 () Bool)

(assert (=> b!6868975 (= e!4140624 e!4140625)))

(declare-fun res!2801689 () Bool)

(assert (=> b!6868975 (=> (not res!2801689) (not e!4140625))))

(assert (=> b!6868975 (= res!2801689 (dynLambda!26529 lambda!388641 (h!72714 (exprs!6581 (h!72715 zl!343)))))))

(declare-fun b!6868976 () Bool)

(assert (=> b!6868976 (= e!4140625 (forall!15890 (t!380133 (exprs!6581 (h!72715 zl!343))) lambda!388641))))

(assert (= (and d!2157828 (not res!2801688)) b!6868975))

(assert (= (and b!6868975 res!2801689) b!6868976))

(declare-fun b_lambda!259845 () Bool)

(assert (=> (not b_lambda!259845) (not b!6868975)))

(declare-fun m!7600292 () Bool)

(assert (=> b!6868975 m!7600292))

(declare-fun m!7600294 () Bool)

(assert (=> b!6868976 m!7600294))

(assert (=> d!2157582 d!2157828))

(declare-fun b!6868977 () Bool)

(declare-fun e!4140626 () Bool)

(declare-fun call!625641 () Bool)

(assert (=> b!6868977 (= e!4140626 call!625641)))

(declare-fun call!625640 () Bool)

(declare-fun c!1278455 () Bool)

(declare-fun c!1278456 () Bool)

(declare-fun bm!625635 () Bool)

(assert (=> bm!625635 (= call!625640 (validRegex!8433 (ite c!1278455 (reg!17026 (ite c!1278249 (reg!17026 r!7292) (ite c!1278250 (regOne!33907 r!7292) (regOne!33906 r!7292)))) (ite c!1278456 (regOne!33907 (ite c!1278249 (reg!17026 r!7292) (ite c!1278250 (regOne!33907 r!7292) (regOne!33906 r!7292)))) (regOne!33906 (ite c!1278249 (reg!17026 r!7292) (ite c!1278250 (regOne!33907 r!7292) (regOne!33906 r!7292))))))))))

(declare-fun bm!625636 () Bool)

(declare-fun call!625642 () Bool)

(assert (=> bm!625636 (= call!625642 call!625640)))

(declare-fun b!6868978 () Bool)

(declare-fun e!4140628 () Bool)

(assert (=> b!6868978 (= e!4140628 call!625640)))

(declare-fun bm!625637 () Bool)

(assert (=> bm!625637 (= call!625641 (validRegex!8433 (ite c!1278456 (regTwo!33907 (ite c!1278249 (reg!17026 r!7292) (ite c!1278250 (regOne!33907 r!7292) (regOne!33906 r!7292)))) (regTwo!33906 (ite c!1278249 (reg!17026 r!7292) (ite c!1278250 (regOne!33907 r!7292) (regOne!33906 r!7292)))))))))

(declare-fun b!6868979 () Bool)

(declare-fun e!4140632 () Bool)

(assert (=> b!6868979 (= e!4140632 e!4140626)))

(declare-fun res!2801692 () Bool)

(assert (=> b!6868979 (=> (not res!2801692) (not e!4140626))))

(assert (=> b!6868979 (= res!2801692 call!625642)))

(declare-fun d!2157830 () Bool)

(declare-fun res!2801691 () Bool)

(declare-fun e!4140630 () Bool)

(assert (=> d!2157830 (=> res!2801691 e!4140630)))

(assert (=> d!2157830 (= res!2801691 ((_ is ElementMatch!16697) (ite c!1278249 (reg!17026 r!7292) (ite c!1278250 (regOne!33907 r!7292) (regOne!33906 r!7292)))))))

(assert (=> d!2157830 (= (validRegex!8433 (ite c!1278249 (reg!17026 r!7292) (ite c!1278250 (regOne!33907 r!7292) (regOne!33906 r!7292)))) e!4140630)))

(declare-fun b!6868980 () Bool)

(declare-fun res!2801690 () Bool)

(declare-fun e!4140629 () Bool)

(assert (=> b!6868980 (=> (not res!2801690) (not e!4140629))))

(assert (=> b!6868980 (= res!2801690 call!625642)))

(declare-fun e!4140631 () Bool)

(assert (=> b!6868980 (= e!4140631 e!4140629)))

(declare-fun b!6868981 () Bool)

(assert (=> b!6868981 (= e!4140629 call!625641)))

(declare-fun b!6868982 () Bool)

(declare-fun res!2801693 () Bool)

(assert (=> b!6868982 (=> res!2801693 e!4140632)))

(assert (=> b!6868982 (= res!2801693 (not ((_ is Concat!25542) (ite c!1278249 (reg!17026 r!7292) (ite c!1278250 (regOne!33907 r!7292) (regOne!33906 r!7292))))))))

(assert (=> b!6868982 (= e!4140631 e!4140632)))

(declare-fun b!6868983 () Bool)

(declare-fun e!4140627 () Bool)

(assert (=> b!6868983 (= e!4140627 e!4140631)))

(assert (=> b!6868983 (= c!1278456 ((_ is Union!16697) (ite c!1278249 (reg!17026 r!7292) (ite c!1278250 (regOne!33907 r!7292) (regOne!33906 r!7292)))))))

(declare-fun b!6868984 () Bool)

(assert (=> b!6868984 (= e!4140630 e!4140627)))

(assert (=> b!6868984 (= c!1278455 ((_ is Star!16697) (ite c!1278249 (reg!17026 r!7292) (ite c!1278250 (regOne!33907 r!7292) (regOne!33906 r!7292)))))))

(declare-fun b!6868985 () Bool)

(assert (=> b!6868985 (= e!4140627 e!4140628)))

(declare-fun res!2801694 () Bool)

(assert (=> b!6868985 (= res!2801694 (not (nullable!6658 (reg!17026 (ite c!1278249 (reg!17026 r!7292) (ite c!1278250 (regOne!33907 r!7292) (regOne!33906 r!7292)))))))))

(assert (=> b!6868985 (=> (not res!2801694) (not e!4140628))))

(assert (= (and d!2157830 (not res!2801691)) b!6868984))

(assert (= (and b!6868984 c!1278455) b!6868985))

(assert (= (and b!6868984 (not c!1278455)) b!6868983))

(assert (= (and b!6868985 res!2801694) b!6868978))

(assert (= (and b!6868983 c!1278456) b!6868980))

(assert (= (and b!6868983 (not c!1278456)) b!6868982))

(assert (= (and b!6868980 res!2801690) b!6868981))

(assert (= (and b!6868982 (not res!2801693)) b!6868979))

(assert (= (and b!6868979 res!2801692) b!6868977))

(assert (= (or b!6868981 b!6868977) bm!625637))

(assert (= (or b!6868980 b!6868979) bm!625636))

(assert (= (or b!6868978 bm!625636) bm!625635))

(declare-fun m!7600296 () Bool)

(assert (=> bm!625635 m!7600296))

(declare-fun m!7600298 () Bool)

(assert (=> bm!625637 m!7600298))

(declare-fun m!7600300 () Bool)

(assert (=> b!6868985 m!7600300))

(assert (=> bm!625543 d!2157830))

(declare-fun d!2157832 () Bool)

(assert (=> d!2157832 (= (isEmpty!38628 (t!380133 (exprs!6581 lt!2458040))) ((_ is Nil!66266) (t!380133 (exprs!6581 lt!2458040))))))

(assert (=> b!6868256 d!2157832))

(declare-fun bs!1836081 () Bool)

(declare-fun d!2157834 () Bool)

(assert (= bs!1836081 (and d!2157834 d!2157564)))

(declare-fun lambda!388687 () Int)

(assert (=> bs!1836081 (= lambda!388687 lambda!388628)))

(declare-fun bs!1836082 () Bool)

(assert (= bs!1836082 (and d!2157834 d!2157550)))

(assert (=> bs!1836082 (= lambda!388687 lambda!388619)))

(declare-fun bs!1836083 () Bool)

(assert (= bs!1836083 (and d!2157834 d!2157808)))

(assert (=> bs!1836083 (= lambda!388687 lambda!388680)))

(declare-fun bs!1836084 () Bool)

(assert (= bs!1836084 (and d!2157834 b!6867793)))

(assert (=> bs!1836084 (= lambda!388687 lambda!388573)))

(declare-fun bs!1836085 () Bool)

(assert (= bs!1836085 (and d!2157834 d!2157578)))

(assert (=> bs!1836085 (not (= lambda!388687 lambda!388637))))

(declare-fun bs!1836086 () Bool)

(assert (= bs!1836086 (and d!2157834 d!2157534)))

(assert (=> bs!1836086 (= lambda!388687 lambda!388616)))

(declare-fun bs!1836087 () Bool)

(assert (= bs!1836087 (and d!2157834 d!2157582)))

(assert (=> bs!1836087 (= lambda!388687 lambda!388641)))

(declare-fun bs!1836088 () Bool)

(assert (= bs!1836088 (and d!2157834 d!2157576)))

(assert (=> bs!1836088 (not (= lambda!388687 lambda!388631))))

(declare-fun bs!1836089 () Bool)

(assert (= bs!1836089 (and d!2157834 b!6867798)))

(assert (=> bs!1836089 (not (= lambda!388687 lambda!388571))))

(declare-fun bs!1836090 () Bool)

(assert (= bs!1836090 (and d!2157834 d!2157580)))

(assert (=> bs!1836090 (= lambda!388687 lambda!388640)))

(declare-fun bs!1836091 () Bool)

(assert (= bs!1836091 (and d!2157834 d!2157772)))

(assert (=> bs!1836091 (= lambda!388687 lambda!388675)))

(assert (=> bs!1836085 (= lambda!388687 lambda!388636)))

(declare-fun bs!1836092 () Bool)

(assert (= bs!1836092 (and d!2157834 d!2157806)))

(assert (=> bs!1836092 (= lambda!388687 lambda!388679)))

(declare-fun e!4140638 () Bool)

(assert (=> d!2157834 e!4140638))

(declare-fun res!2801695 () Bool)

(assert (=> d!2157834 (=> (not res!2801695) (not e!4140638))))

(declare-fun lt!2458174 () Regex!16697)

(assert (=> d!2157834 (= res!2801695 (validRegex!8433 lt!2458174))))

(declare-fun e!4140637 () Regex!16697)

(assert (=> d!2157834 (= lt!2458174 e!4140637)))

(declare-fun c!1278459 () Bool)

(declare-fun e!4140635 () Bool)

(assert (=> d!2157834 (= c!1278459 e!4140635)))

(declare-fun res!2801696 () Bool)

(assert (=> d!2157834 (=> (not res!2801696) (not e!4140635))))

(assert (=> d!2157834 (= res!2801696 ((_ is Cons!66266) (exprs!6581 (h!72715 zl!343))))))

(assert (=> d!2157834 (forall!15890 (exprs!6581 (h!72715 zl!343)) lambda!388687)))

(assert (=> d!2157834 (= (generalisedConcat!2285 (exprs!6581 (h!72715 zl!343))) lt!2458174)))

(declare-fun b!6868986 () Bool)

(assert (=> b!6868986 (= e!4140635 (isEmpty!38628 (t!380133 (exprs!6581 (h!72715 zl!343)))))))

(declare-fun b!6868987 () Bool)

(declare-fun e!4140634 () Regex!16697)

(assert (=> b!6868987 (= e!4140637 e!4140634)))

(declare-fun c!1278457 () Bool)

(assert (=> b!6868987 (= c!1278457 ((_ is Cons!66266) (exprs!6581 (h!72715 zl!343))))))

(declare-fun b!6868988 () Bool)

(declare-fun e!4140633 () Bool)

(assert (=> b!6868988 (= e!4140638 e!4140633)))

(declare-fun c!1278460 () Bool)

(assert (=> b!6868988 (= c!1278460 (isEmpty!38628 (exprs!6581 (h!72715 zl!343))))))

(declare-fun b!6868989 () Bool)

(declare-fun e!4140636 () Bool)

(assert (=> b!6868989 (= e!4140633 e!4140636)))

(declare-fun c!1278458 () Bool)

(assert (=> b!6868989 (= c!1278458 (isEmpty!38628 (tail!12836 (exprs!6581 (h!72715 zl!343)))))))

(declare-fun b!6868990 () Bool)

(assert (=> b!6868990 (= e!4140636 (isConcat!1540 lt!2458174))))

(declare-fun b!6868991 () Bool)

(assert (=> b!6868991 (= e!4140633 (isEmptyExpr!2017 lt!2458174))))

(declare-fun b!6868992 () Bool)

(assert (=> b!6868992 (= e!4140634 EmptyExpr!16697)))

(declare-fun b!6868993 () Bool)

(assert (=> b!6868993 (= e!4140637 (h!72714 (exprs!6581 (h!72715 zl!343))))))

(declare-fun b!6868994 () Bool)

(assert (=> b!6868994 (= e!4140636 (= lt!2458174 (head!13781 (exprs!6581 (h!72715 zl!343)))))))

(declare-fun b!6868995 () Bool)

(assert (=> b!6868995 (= e!4140634 (Concat!25542 (h!72714 (exprs!6581 (h!72715 zl!343))) (generalisedConcat!2285 (t!380133 (exprs!6581 (h!72715 zl!343))))))))

(assert (= (and d!2157834 res!2801696) b!6868986))

(assert (= (and d!2157834 c!1278459) b!6868993))

(assert (= (and d!2157834 (not c!1278459)) b!6868987))

(assert (= (and b!6868987 c!1278457) b!6868995))

(assert (= (and b!6868987 (not c!1278457)) b!6868992))

(assert (= (and d!2157834 res!2801695) b!6868988))

(assert (= (and b!6868988 c!1278460) b!6868991))

(assert (= (and b!6868988 (not c!1278460)) b!6868989))

(assert (= (and b!6868989 c!1278458) b!6868994))

(assert (= (and b!6868989 (not c!1278458)) b!6868990))

(declare-fun m!7600302 () Bool)

(assert (=> b!6868990 m!7600302))

(declare-fun m!7600304 () Bool)

(assert (=> b!6868995 m!7600304))

(declare-fun m!7600306 () Bool)

(assert (=> b!6868988 m!7600306))

(declare-fun m!7600308 () Bool)

(assert (=> b!6868991 m!7600308))

(declare-fun m!7600310 () Bool)

(assert (=> b!6868986 m!7600310))

(declare-fun m!7600312 () Bool)

(assert (=> b!6868994 m!7600312))

(declare-fun m!7600314 () Bool)

(assert (=> d!2157834 m!7600314))

(declare-fun m!7600316 () Bool)

(assert (=> d!2157834 m!7600316))

(declare-fun m!7600318 () Bool)

(assert (=> b!6868989 m!7600318))

(assert (=> b!6868989 m!7600318))

(declare-fun m!7600320 () Bool)

(assert (=> b!6868989 m!7600320))

(assert (=> b!6868294 d!2157834))

(declare-fun bs!1836093 () Bool)

(declare-fun d!2157836 () Bool)

(assert (= bs!1836093 (and d!2157836 d!2157564)))

(declare-fun lambda!388688 () Int)

(assert (=> bs!1836093 (= lambda!388688 lambda!388628)))

(declare-fun bs!1836094 () Bool)

(assert (= bs!1836094 (and d!2157836 d!2157550)))

(assert (=> bs!1836094 (= lambda!388688 lambda!388619)))

(declare-fun bs!1836095 () Bool)

(assert (= bs!1836095 (and d!2157836 d!2157808)))

(assert (=> bs!1836095 (= lambda!388688 lambda!388680)))

(declare-fun bs!1836096 () Bool)

(assert (= bs!1836096 (and d!2157836 b!6867793)))

(assert (=> bs!1836096 (= lambda!388688 lambda!388573)))

(declare-fun bs!1836097 () Bool)

(assert (= bs!1836097 (and d!2157836 d!2157578)))

(assert (=> bs!1836097 (not (= lambda!388688 lambda!388637))))

(declare-fun bs!1836098 () Bool)

(assert (= bs!1836098 (and d!2157836 d!2157534)))

(assert (=> bs!1836098 (= lambda!388688 lambda!388616)))

(declare-fun bs!1836099 () Bool)

(assert (= bs!1836099 (and d!2157836 d!2157576)))

(assert (=> bs!1836099 (not (= lambda!388688 lambda!388631))))

(declare-fun bs!1836100 () Bool)

(assert (= bs!1836100 (and d!2157836 b!6867798)))

(assert (=> bs!1836100 (not (= lambda!388688 lambda!388571))))

(declare-fun bs!1836101 () Bool)

(assert (= bs!1836101 (and d!2157836 d!2157580)))

(assert (=> bs!1836101 (= lambda!388688 lambda!388640)))

(declare-fun bs!1836102 () Bool)

(assert (= bs!1836102 (and d!2157836 d!2157772)))

(assert (=> bs!1836102 (= lambda!388688 lambda!388675)))

(assert (=> bs!1836097 (= lambda!388688 lambda!388636)))

(declare-fun bs!1836103 () Bool)

(assert (= bs!1836103 (and d!2157836 d!2157806)))

(assert (=> bs!1836103 (= lambda!388688 lambda!388679)))

(declare-fun bs!1836104 () Bool)

(assert (= bs!1836104 (and d!2157836 d!2157582)))

(assert (=> bs!1836104 (= lambda!388688 lambda!388641)))

(declare-fun bs!1836105 () Bool)

(assert (= bs!1836105 (and d!2157836 d!2157834)))

(assert (=> bs!1836105 (= lambda!388688 lambda!388687)))

(declare-fun lt!2458175 () List!66390)

(assert (=> d!2157836 (forall!15890 lt!2458175 lambda!388688)))

(declare-fun e!4140639 () List!66390)

(assert (=> d!2157836 (= lt!2458175 e!4140639)))

(declare-fun c!1278461 () Bool)

(assert (=> d!2157836 (= c!1278461 ((_ is Cons!66267) (t!380134 zl!343)))))

(assert (=> d!2157836 (= (unfocusZipperList!2114 (t!380134 zl!343)) lt!2458175)))

(declare-fun b!6868996 () Bool)

(assert (=> b!6868996 (= e!4140639 (Cons!66266 (generalisedConcat!2285 (exprs!6581 (h!72715 (t!380134 zl!343)))) (unfocusZipperList!2114 (t!380134 (t!380134 zl!343)))))))

(declare-fun b!6868997 () Bool)

(assert (=> b!6868997 (= e!4140639 Nil!66266)))

(assert (= (and d!2157836 c!1278461) b!6868996))

(assert (= (and d!2157836 (not c!1278461)) b!6868997))

(declare-fun m!7600322 () Bool)

(assert (=> d!2157836 m!7600322))

(declare-fun m!7600324 () Bool)

(assert (=> b!6868996 m!7600324))

(declare-fun m!7600326 () Bool)

(assert (=> b!6868996 m!7600326))

(assert (=> b!6868294 d!2157836))

(assert (=> d!2157522 d!2157502))

(assert (=> d!2157522 d!2157476))

(declare-fun d!2157838 () Bool)

(assert (=> d!2157838 (= (matchR!8880 r!7292 s!2326) (matchRSpec!3798 r!7292 s!2326))))

(assert (=> d!2157838 true))

(declare-fun _$88!5732 () Unit!160165)

(assert (=> d!2157838 (= (choose!51180 r!7292 s!2326) _$88!5732)))

(declare-fun bs!1836106 () Bool)

(assert (= bs!1836106 d!2157838))

(assert (=> bs!1836106 m!7599438))

(assert (=> bs!1836106 m!7599436))

(assert (=> d!2157522 d!2157838))

(assert (=> d!2157522 d!2157560))

(declare-fun d!2157840 () Bool)

(assert (=> d!2157840 (= (isEmpty!38628 (exprs!6581 lt!2458040)) ((_ is Nil!66266) (exprs!6581 lt!2458040)))))

(assert (=> b!6868258 d!2157840))

(declare-fun d!2157842 () Bool)

(declare-fun res!2801697 () Bool)

(declare-fun e!4140640 () Bool)

(assert (=> d!2157842 (=> res!2801697 e!4140640)))

(assert (=> d!2157842 (= res!2801697 ((_ is Nil!66266) lt!2458134))))

(assert (=> d!2157842 (= (forall!15890 lt!2458134 lambda!388640) e!4140640)))

(declare-fun b!6868998 () Bool)

(declare-fun e!4140641 () Bool)

(assert (=> b!6868998 (= e!4140640 e!4140641)))

(declare-fun res!2801698 () Bool)

(assert (=> b!6868998 (=> (not res!2801698) (not e!4140641))))

(assert (=> b!6868998 (= res!2801698 (dynLambda!26529 lambda!388640 (h!72714 lt!2458134)))))

(declare-fun b!6868999 () Bool)

(assert (=> b!6868999 (= e!4140641 (forall!15890 (t!380133 lt!2458134) lambda!388640))))

(assert (= (and d!2157842 (not res!2801697)) b!6868998))

(assert (= (and b!6868998 res!2801698) b!6868999))

(declare-fun b_lambda!259847 () Bool)

(assert (=> (not b_lambda!259847) (not b!6868998)))

(declare-fun m!7600328 () Bool)

(assert (=> b!6868998 m!7600328))

(declare-fun m!7600330 () Bool)

(assert (=> b!6868999 m!7600330))

(assert (=> d!2157580 d!2157842))

(declare-fun d!2157844 () Bool)

(declare-fun lt!2458178 () Bool)

(assert (=> d!2157844 (= lt!2458178 (select (content!13010 zl!343) lt!2458110))))

(declare-fun e!4140647 () Bool)

(assert (=> d!2157844 (= lt!2458178 e!4140647)))

(declare-fun res!2801703 () Bool)

(assert (=> d!2157844 (=> (not res!2801703) (not e!4140647))))

(assert (=> d!2157844 (= res!2801703 ((_ is Cons!66267) zl!343))))

(assert (=> d!2157844 (= (contains!20355 zl!343 lt!2458110) lt!2458178)))

(declare-fun b!6869004 () Bool)

(declare-fun e!4140646 () Bool)

(assert (=> b!6869004 (= e!4140647 e!4140646)))

(declare-fun res!2801704 () Bool)

(assert (=> b!6869004 (=> res!2801704 e!4140646)))

(assert (=> b!6869004 (= res!2801704 (= (h!72715 zl!343) lt!2458110))))

(declare-fun b!6869005 () Bool)

(assert (=> b!6869005 (= e!4140646 (contains!20355 (t!380134 zl!343) lt!2458110))))

(assert (= (and d!2157844 res!2801703) b!6869004))

(assert (= (and b!6869004 (not res!2801704)) b!6869005))

(assert (=> d!2157844 m!7599684))

(declare-fun m!7600332 () Bool)

(assert (=> d!2157844 m!7600332))

(declare-fun m!7600334 () Bool)

(assert (=> b!6869005 m!7600334))

(assert (=> b!6868194 d!2157844))

(declare-fun d!2157846 () Bool)

(declare-fun res!2801705 () Bool)

(declare-fun e!4140648 () Bool)

(assert (=> d!2157846 (=> res!2801705 e!4140648)))

(assert (=> d!2157846 (= res!2801705 ((_ is Nil!66266) (t!380133 (exprs!6581 lt!2458040))))))

(assert (=> d!2157846 (= (forall!15890 (t!380133 (exprs!6581 lt!2458040)) lambda!388573) e!4140648)))

(declare-fun b!6869006 () Bool)

(declare-fun e!4140649 () Bool)

(assert (=> b!6869006 (= e!4140648 e!4140649)))

(declare-fun res!2801706 () Bool)

(assert (=> b!6869006 (=> (not res!2801706) (not e!4140649))))

(assert (=> b!6869006 (= res!2801706 (dynLambda!26529 lambda!388573 (h!72714 (t!380133 (exprs!6581 lt!2458040)))))))

(declare-fun b!6869007 () Bool)

(assert (=> b!6869007 (= e!4140649 (forall!15890 (t!380133 (t!380133 (exprs!6581 lt!2458040))) lambda!388573))))

(assert (= (and d!2157846 (not res!2801705)) b!6869006))

(assert (= (and b!6869006 res!2801706) b!6869007))

(declare-fun b_lambda!259849 () Bool)

(assert (=> (not b_lambda!259849) (not b!6869006)))

(declare-fun m!7600336 () Bool)

(assert (=> b!6869006 m!7600336))

(declare-fun m!7600338 () Bool)

(assert (=> b!6869007 m!7600338))

(assert (=> b!6868179 d!2157846))

(declare-fun d!2157848 () Bool)

(assert (=> d!2157848 (= (isEmptyExpr!2017 lt!2458118) ((_ is EmptyExpr!16697) lt!2458118))))

(assert (=> b!6868261 d!2157848))

(declare-fun d!2157850 () Bool)

(assert (=> d!2157850 (= (nullable!6658 (reg!17026 lt!2458034)) (nullableFct!2532 (reg!17026 lt!2458034)))))

(declare-fun bs!1836107 () Bool)

(assert (= bs!1836107 d!2157850))

(declare-fun m!7600340 () Bool)

(assert (=> bs!1836107 m!7600340))

(assert (=> b!6868235 d!2157850))

(assert (=> b!6868012 d!2157778))

(declare-fun b!6869008 () Bool)

(declare-fun e!4140652 () Bool)

(assert (=> b!6869008 (= e!4140652 (dynLambda!26530 lambda!388572 (h!72715 (t!380134 zl!343))))))

(declare-fun d!2157852 () Bool)

(declare-fun e!4140650 () Bool)

(assert (=> d!2157852 e!4140650))

(declare-fun res!2801708 () Bool)

(assert (=> d!2157852 (=> (not res!2801708) (not e!4140650))))

(declare-fun lt!2458179 () Context!12162)

(assert (=> d!2157852 (= res!2801708 (dynLambda!26530 lambda!388572 lt!2458179))))

(declare-fun e!4140651 () Context!12162)

(assert (=> d!2157852 (= lt!2458179 e!4140651)))

(declare-fun c!1278463 () Bool)

(assert (=> d!2157852 (= c!1278463 e!4140652)))

(declare-fun res!2801707 () Bool)

(assert (=> d!2157852 (=> (not res!2801707) (not e!4140652))))

(assert (=> d!2157852 (= res!2801707 ((_ is Cons!66267) (t!380134 zl!343)))))

(assert (=> d!2157852 (exists!2828 (t!380134 zl!343) lambda!388572)))

(assert (=> d!2157852 (= (getWitness!976 (t!380134 zl!343) lambda!388572) lt!2458179)))

(declare-fun b!6869009 () Bool)

(declare-fun lt!2458180 () Unit!160165)

(declare-fun Unit!160170 () Unit!160165)

(assert (=> b!6869009 (= lt!2458180 Unit!160170)))

(assert (=> b!6869009 false))

(declare-fun e!4140653 () Context!12162)

(assert (=> b!6869009 (= e!4140653 (head!13780 (t!380134 zl!343)))))

(declare-fun b!6869010 () Bool)

(assert (=> b!6869010 (= e!4140650 (contains!20355 (t!380134 zl!343) lt!2458179))))

(declare-fun b!6869011 () Bool)

(assert (=> b!6869011 (= e!4140651 (h!72715 (t!380134 zl!343)))))

(declare-fun b!6869012 () Bool)

(assert (=> b!6869012 (= e!4140653 (getWitness!976 (t!380134 (t!380134 zl!343)) lambda!388572))))

(declare-fun b!6869013 () Bool)

(assert (=> b!6869013 (= e!4140651 e!4140653)))

(declare-fun c!1278462 () Bool)

(assert (=> b!6869013 (= c!1278462 ((_ is Cons!66267) (t!380134 zl!343)))))

(assert (= (and d!2157852 res!2801707) b!6869008))

(assert (= (and d!2157852 c!1278463) b!6869011))

(assert (= (and d!2157852 (not c!1278463)) b!6869013))

(assert (= (and b!6869013 c!1278462) b!6869012))

(assert (= (and b!6869013 (not c!1278462)) b!6869009))

(assert (= (and d!2157852 res!2801708) b!6869010))

(declare-fun b_lambda!259851 () Bool)

(assert (=> (not b_lambda!259851) (not b!6869008)))

(declare-fun b_lambda!259853 () Bool)

(assert (=> (not b_lambda!259853) (not d!2157852)))

(declare-fun m!7600342 () Bool)

(assert (=> b!6869012 m!7600342))

(declare-fun m!7600344 () Bool)

(assert (=> b!6869008 m!7600344))

(declare-fun m!7600346 () Bool)

(assert (=> d!2157852 m!7600346))

(declare-fun m!7600348 () Bool)

(assert (=> d!2157852 m!7600348))

(declare-fun m!7600350 () Bool)

(assert (=> b!6869009 m!7600350))

(declare-fun m!7600352 () Bool)

(assert (=> b!6869010 m!7600352))

(assert (=> b!6868196 d!2157852))

(declare-fun bs!1836108 () Bool)

(declare-fun d!2157854 () Bool)

(assert (= bs!1836108 (and d!2157854 d!2157564)))

(declare-fun lambda!388689 () Int)

(assert (=> bs!1836108 (= lambda!388689 lambda!388628)))

(declare-fun bs!1836109 () Bool)

(assert (= bs!1836109 (and d!2157854 d!2157550)))

(assert (=> bs!1836109 (= lambda!388689 lambda!388619)))

(declare-fun bs!1836110 () Bool)

(assert (= bs!1836110 (and d!2157854 d!2157808)))

(assert (=> bs!1836110 (= lambda!388689 lambda!388680)))

(declare-fun bs!1836111 () Bool)

(assert (= bs!1836111 (and d!2157854 b!6867793)))

(assert (=> bs!1836111 (= lambda!388689 lambda!388573)))

(declare-fun bs!1836112 () Bool)

(assert (= bs!1836112 (and d!2157854 d!2157578)))

(assert (=> bs!1836112 (not (= lambda!388689 lambda!388637))))

(declare-fun bs!1836113 () Bool)

(assert (= bs!1836113 (and d!2157854 d!2157534)))

(assert (=> bs!1836113 (= lambda!388689 lambda!388616)))

(declare-fun bs!1836114 () Bool)

(assert (= bs!1836114 (and d!2157854 d!2157576)))

(assert (=> bs!1836114 (not (= lambda!388689 lambda!388631))))

(declare-fun bs!1836115 () Bool)

(assert (= bs!1836115 (and d!2157854 b!6867798)))

(assert (=> bs!1836115 (not (= lambda!388689 lambda!388571))))

(declare-fun bs!1836116 () Bool)

(assert (= bs!1836116 (and d!2157854 d!2157836)))

(assert (=> bs!1836116 (= lambda!388689 lambda!388688)))

(declare-fun bs!1836117 () Bool)

(assert (= bs!1836117 (and d!2157854 d!2157580)))

(assert (=> bs!1836117 (= lambda!388689 lambda!388640)))

(declare-fun bs!1836118 () Bool)

(assert (= bs!1836118 (and d!2157854 d!2157772)))

(assert (=> bs!1836118 (= lambda!388689 lambda!388675)))

(assert (=> bs!1836112 (= lambda!388689 lambda!388636)))

(declare-fun bs!1836119 () Bool)

(assert (= bs!1836119 (and d!2157854 d!2157806)))

(assert (=> bs!1836119 (= lambda!388689 lambda!388679)))

(declare-fun bs!1836120 () Bool)

(assert (= bs!1836120 (and d!2157854 d!2157582)))

(assert (=> bs!1836120 (= lambda!388689 lambda!388641)))

(declare-fun bs!1836121 () Bool)

(assert (= bs!1836121 (and d!2157854 d!2157834)))

(assert (=> bs!1836121 (= lambda!388689 lambda!388687)))

(assert (=> d!2157854 (= (inv!84989 (h!72715 (t!380134 zl!343))) (forall!15890 (exprs!6581 (h!72715 (t!380134 zl!343))) lambda!388689))))

(declare-fun bs!1836122 () Bool)

(assert (= bs!1836122 d!2157854))

(declare-fun m!7600354 () Bool)

(assert (=> bs!1836122 m!7600354))

(assert (=> b!6868333 d!2157854))

(declare-fun d!2157856 () Bool)

(declare-fun c!1278464 () Bool)

(assert (=> d!2157856 (= c!1278464 (isEmpty!38627 (tail!12835 s!2326)))))

(declare-fun e!4140654 () Bool)

(assert (=> d!2157856 (= (matchZipper!2663 (derivationStepZipper!2617 z!1189 (head!13779 s!2326)) (tail!12835 s!2326)) e!4140654)))

(declare-fun b!6869014 () Bool)

(assert (=> b!6869014 (= e!4140654 (nullableZipper!2370 (derivationStepZipper!2617 z!1189 (head!13779 s!2326))))))

(declare-fun b!6869015 () Bool)

(assert (=> b!6869015 (= e!4140654 (matchZipper!2663 (derivationStepZipper!2617 (derivationStepZipper!2617 z!1189 (head!13779 s!2326)) (head!13779 (tail!12835 s!2326))) (tail!12835 (tail!12835 s!2326))))))

(assert (= (and d!2157856 c!1278464) b!6869014))

(assert (= (and d!2157856 (not c!1278464)) b!6869015))

(assert (=> d!2157856 m!7599580))

(assert (=> d!2157856 m!7599582))

(assert (=> b!6869014 m!7599738))

(declare-fun m!7600356 () Bool)

(assert (=> b!6869014 m!7600356))

(assert (=> b!6869015 m!7599580))

(assert (=> b!6869015 m!7600170))

(assert (=> b!6869015 m!7599738))

(assert (=> b!6869015 m!7600170))

(declare-fun m!7600358 () Bool)

(assert (=> b!6869015 m!7600358))

(assert (=> b!6869015 m!7599580))

(assert (=> b!6869015 m!7600164))

(assert (=> b!6869015 m!7600358))

(assert (=> b!6869015 m!7600164))

(declare-fun m!7600360 () Bool)

(assert (=> b!6869015 m!7600360))

(assert (=> b!6868285 d!2157856))

(declare-fun d!2157858 () Bool)

(assert (=> d!2157858 true))

(declare-fun lambda!388692 () Int)

(declare-fun flatMap!2144 ((InoxSet Context!12162) Int) (InoxSet Context!12162))

(assert (=> d!2157858 (= (derivationStepZipper!2617 z!1189 (head!13779 s!2326)) (flatMap!2144 z!1189 lambda!388692))))

(declare-fun bs!1836123 () Bool)

(assert (= bs!1836123 d!2157858))

(declare-fun m!7600362 () Bool)

(assert (=> bs!1836123 m!7600362))

(assert (=> b!6868285 d!2157858))

(assert (=> b!6868285 d!2157778))

(assert (=> b!6868285 d!2157780))

(declare-fun d!2157860 () Bool)

(declare-fun lt!2458181 () Int)

(assert (=> d!2157860 (>= lt!2458181 0)))

(declare-fun e!4140655 () Int)

(assert (=> d!2157860 (= lt!2458181 e!4140655)))

(declare-fun c!1278467 () Bool)

(assert (=> d!2157860 (= c!1278467 ((_ is Cons!66266) (exprs!6581 (h!72715 lt!2458043))))))

(assert (=> d!2157860 (= (contextDepthTotal!418 (h!72715 lt!2458043)) lt!2458181)))

(declare-fun b!6869018 () Bool)

(assert (=> b!6869018 (= e!4140655 (+ (regexDepthTotal!263 (h!72714 (exprs!6581 (h!72715 lt!2458043)))) (contextDepthTotal!418 (Context!12163 (t!380133 (exprs!6581 (h!72715 lt!2458043)))))))))

(declare-fun b!6869019 () Bool)

(assert (=> b!6869019 (= e!4140655 1)))

(assert (= (and d!2157860 c!1278467) b!6869018))

(assert (= (and d!2157860 (not c!1278467)) b!6869019))

(declare-fun m!7600364 () Bool)

(assert (=> b!6869018 m!7600364))

(declare-fun m!7600366 () Bool)

(assert (=> b!6869018 m!7600366))

(assert (=> b!6868270 d!2157860))

(declare-fun d!2157862 () Bool)

(declare-fun lt!2458182 () Int)

(assert (=> d!2157862 (>= lt!2458182 0)))

(declare-fun e!4140656 () Int)

(assert (=> d!2157862 (= lt!2458182 e!4140656)))

(declare-fun c!1278468 () Bool)

(assert (=> d!2157862 (= c!1278468 ((_ is Cons!66267) (t!380134 lt!2458043)))))

(assert (=> d!2157862 (= (zipperDepthTotal!446 (t!380134 lt!2458043)) lt!2458182)))

(declare-fun b!6869020 () Bool)

(assert (=> b!6869020 (= e!4140656 (+ (contextDepthTotal!418 (h!72715 (t!380134 lt!2458043))) (zipperDepthTotal!446 (t!380134 (t!380134 lt!2458043)))))))

(declare-fun b!6869021 () Bool)

(assert (=> b!6869021 (= e!4140656 0)))

(assert (= (and d!2157862 c!1278468) b!6869020))

(assert (= (and d!2157862 (not c!1278468)) b!6869021))

(declare-fun m!7600368 () Bool)

(assert (=> b!6869020 m!7600368))

(declare-fun m!7600370 () Bool)

(assert (=> b!6869020 m!7600370))

(assert (=> b!6868270 d!2157862))

(declare-fun d!2157864 () Bool)

(assert (=> d!2157864 (= (isEmpty!38627 (tail!12835 s!2326)) ((_ is Nil!66268) (tail!12835 s!2326)))))

(assert (=> b!6868014 d!2157864))

(assert (=> b!6868014 d!2157780))

(declare-fun bs!1836124 () Bool)

(declare-fun d!2157866 () Bool)

(assert (= bs!1836124 (and d!2157866 d!2157564)))

(declare-fun lambda!388693 () Int)

(assert (=> bs!1836124 (= lambda!388693 lambda!388628)))

(declare-fun bs!1836125 () Bool)

(assert (= bs!1836125 (and d!2157866 d!2157550)))

(assert (=> bs!1836125 (= lambda!388693 lambda!388619)))

(declare-fun bs!1836126 () Bool)

(assert (= bs!1836126 (and d!2157866 d!2157808)))

(assert (=> bs!1836126 (= lambda!388693 lambda!388680)))

(declare-fun bs!1836127 () Bool)

(assert (= bs!1836127 (and d!2157866 b!6867793)))

(assert (=> bs!1836127 (= lambda!388693 lambda!388573)))

(declare-fun bs!1836128 () Bool)

(assert (= bs!1836128 (and d!2157866 d!2157578)))

(assert (=> bs!1836128 (not (= lambda!388693 lambda!388637))))

(declare-fun bs!1836129 () Bool)

(assert (= bs!1836129 (and d!2157866 d!2157576)))

(assert (=> bs!1836129 (not (= lambda!388693 lambda!388631))))

(declare-fun bs!1836130 () Bool)

(assert (= bs!1836130 (and d!2157866 b!6867798)))

(assert (=> bs!1836130 (not (= lambda!388693 lambda!388571))))

(declare-fun bs!1836131 () Bool)

(assert (= bs!1836131 (and d!2157866 d!2157836)))

(assert (=> bs!1836131 (= lambda!388693 lambda!388688)))

(declare-fun bs!1836132 () Bool)

(assert (= bs!1836132 (and d!2157866 d!2157580)))

(assert (=> bs!1836132 (= lambda!388693 lambda!388640)))

(declare-fun bs!1836133 () Bool)

(assert (= bs!1836133 (and d!2157866 d!2157772)))

(assert (=> bs!1836133 (= lambda!388693 lambda!388675)))

(assert (=> bs!1836128 (= lambda!388693 lambda!388636)))

(declare-fun bs!1836134 () Bool)

(assert (= bs!1836134 (and d!2157866 d!2157806)))

(assert (=> bs!1836134 (= lambda!388693 lambda!388679)))

(declare-fun bs!1836135 () Bool)

(assert (= bs!1836135 (and d!2157866 d!2157854)))

(assert (=> bs!1836135 (= lambda!388693 lambda!388689)))

(declare-fun bs!1836136 () Bool)

(assert (= bs!1836136 (and d!2157866 d!2157534)))

(assert (=> bs!1836136 (= lambda!388693 lambda!388616)))

(declare-fun bs!1836137 () Bool)

(assert (= bs!1836137 (and d!2157866 d!2157582)))

(assert (=> bs!1836137 (= lambda!388693 lambda!388641)))

(declare-fun bs!1836138 () Bool)

(assert (= bs!1836138 (and d!2157866 d!2157834)))

(assert (=> bs!1836138 (= lambda!388693 lambda!388687)))

(declare-fun e!4140662 () Bool)

(assert (=> d!2157866 e!4140662))

(declare-fun res!2801709 () Bool)

(assert (=> d!2157866 (=> (not res!2801709) (not e!4140662))))

(declare-fun lt!2458183 () Regex!16697)

(assert (=> d!2157866 (= res!2801709 (validRegex!8433 lt!2458183))))

(declare-fun e!4140661 () Regex!16697)

(assert (=> d!2157866 (= lt!2458183 e!4140661)))

(declare-fun c!1278471 () Bool)

(declare-fun e!4140659 () Bool)

(assert (=> d!2157866 (= c!1278471 e!4140659)))

(declare-fun res!2801710 () Bool)

(assert (=> d!2157866 (=> (not res!2801710) (not e!4140659))))

(assert (=> d!2157866 (= res!2801710 ((_ is Cons!66266) (t!380133 (exprs!6581 lt!2458040))))))

(assert (=> d!2157866 (forall!15890 (t!380133 (exprs!6581 lt!2458040)) lambda!388693)))

(assert (=> d!2157866 (= (generalisedConcat!2285 (t!380133 (exprs!6581 lt!2458040))) lt!2458183)))

(declare-fun b!6869022 () Bool)

(assert (=> b!6869022 (= e!4140659 (isEmpty!38628 (t!380133 (t!380133 (exprs!6581 lt!2458040)))))))

(declare-fun b!6869023 () Bool)

(declare-fun e!4140658 () Regex!16697)

(assert (=> b!6869023 (= e!4140661 e!4140658)))

(declare-fun c!1278469 () Bool)

(assert (=> b!6869023 (= c!1278469 ((_ is Cons!66266) (t!380133 (exprs!6581 lt!2458040))))))

(declare-fun b!6869024 () Bool)

(declare-fun e!4140657 () Bool)

(assert (=> b!6869024 (= e!4140662 e!4140657)))

(declare-fun c!1278472 () Bool)

(assert (=> b!6869024 (= c!1278472 (isEmpty!38628 (t!380133 (exprs!6581 lt!2458040))))))

(declare-fun b!6869025 () Bool)

(declare-fun e!4140660 () Bool)

(assert (=> b!6869025 (= e!4140657 e!4140660)))

(declare-fun c!1278470 () Bool)

(assert (=> b!6869025 (= c!1278470 (isEmpty!38628 (tail!12836 (t!380133 (exprs!6581 lt!2458040)))))))

(declare-fun b!6869026 () Bool)

(assert (=> b!6869026 (= e!4140660 (isConcat!1540 lt!2458183))))

(declare-fun b!6869027 () Bool)

(assert (=> b!6869027 (= e!4140657 (isEmptyExpr!2017 lt!2458183))))

(declare-fun b!6869028 () Bool)

(assert (=> b!6869028 (= e!4140658 EmptyExpr!16697)))

(declare-fun b!6869029 () Bool)

(assert (=> b!6869029 (= e!4140661 (h!72714 (t!380133 (exprs!6581 lt!2458040))))))

(declare-fun b!6869030 () Bool)

(assert (=> b!6869030 (= e!4140660 (= lt!2458183 (head!13781 (t!380133 (exprs!6581 lt!2458040)))))))

(declare-fun b!6869031 () Bool)

(assert (=> b!6869031 (= e!4140658 (Concat!25542 (h!72714 (t!380133 (exprs!6581 lt!2458040))) (generalisedConcat!2285 (t!380133 (t!380133 (exprs!6581 lt!2458040))))))))

(assert (= (and d!2157866 res!2801710) b!6869022))

(assert (= (and d!2157866 c!1278471) b!6869029))

(assert (= (and d!2157866 (not c!1278471)) b!6869023))

(assert (= (and b!6869023 c!1278469) b!6869031))

(assert (= (and b!6869023 (not c!1278469)) b!6869028))

(assert (= (and d!2157866 res!2801709) b!6869024))

(assert (= (and b!6869024 c!1278472) b!6869027))

(assert (= (and b!6869024 (not c!1278472)) b!6869025))

(assert (= (and b!6869025 c!1278470) b!6869030))

(assert (= (and b!6869025 (not c!1278470)) b!6869026))

(declare-fun m!7600372 () Bool)

(assert (=> b!6869026 m!7600372))

(declare-fun m!7600374 () Bool)

(assert (=> b!6869031 m!7600374))

(assert (=> b!6869024 m!7599708))

(declare-fun m!7600376 () Bool)

(assert (=> b!6869027 m!7600376))

(declare-fun m!7600378 () Bool)

(assert (=> b!6869022 m!7600378))

(declare-fun m!7600380 () Bool)

(assert (=> b!6869030 m!7600380))

(declare-fun m!7600382 () Bool)

(assert (=> d!2157866 m!7600382))

(declare-fun m!7600384 () Bool)

(assert (=> d!2157866 m!7600384))

(declare-fun m!7600386 () Bool)

(assert (=> b!6869025 m!7600386))

(assert (=> b!6869025 m!7600386))

(declare-fun m!7600388 () Bool)

(assert (=> b!6869025 m!7600388))

(assert (=> b!6868265 d!2157866))

(declare-fun d!2157868 () Bool)

(declare-fun res!2801715 () Bool)

(declare-fun e!4140667 () Bool)

(assert (=> d!2157868 (=> res!2801715 e!4140667)))

(assert (=> d!2157868 (= res!2801715 ((_ is Nil!66267) zl!343))))

(assert (=> d!2157868 (= (forall!15892 zl!343 lambda!388622) e!4140667)))

(declare-fun b!6869036 () Bool)

(declare-fun e!4140668 () Bool)

(assert (=> b!6869036 (= e!4140667 e!4140668)))

(declare-fun res!2801716 () Bool)

(assert (=> b!6869036 (=> (not res!2801716) (not e!4140668))))

(assert (=> b!6869036 (= res!2801716 (dynLambda!26530 lambda!388622 (h!72715 zl!343)))))

(declare-fun b!6869037 () Bool)

(assert (=> b!6869037 (= e!4140668 (forall!15892 (t!380134 zl!343) lambda!388622))))

(assert (= (and d!2157868 (not res!2801715)) b!6869036))

(assert (= (and b!6869036 res!2801716) b!6869037))

(declare-fun b_lambda!259855 () Bool)

(assert (=> (not b_lambda!259855) (not b!6869036)))

(declare-fun m!7600390 () Bool)

(assert (=> b!6869036 m!7600390))

(declare-fun m!7600392 () Bool)

(assert (=> b!6869037 m!7600392))

(assert (=> d!2157556 d!2157868))

(declare-fun d!2157870 () Bool)

(declare-fun res!2801717 () Bool)

(declare-fun e!4140669 () Bool)

(assert (=> d!2157870 (=> res!2801717 e!4140669)))

(assert (=> d!2157870 (= res!2801717 ((_ is Nil!66266) (exprs!6581 lt!2458040)))))

(assert (=> d!2157870 (= (forall!15890 (exprs!6581 lt!2458040) lambda!388619) e!4140669)))

(declare-fun b!6869038 () Bool)

(declare-fun e!4140670 () Bool)

(assert (=> b!6869038 (= e!4140669 e!4140670)))

(declare-fun res!2801718 () Bool)

(assert (=> b!6869038 (=> (not res!2801718) (not e!4140670))))

(assert (=> b!6869038 (= res!2801718 (dynLambda!26529 lambda!388619 (h!72714 (exprs!6581 lt!2458040))))))

(declare-fun b!6869039 () Bool)

(assert (=> b!6869039 (= e!4140670 (forall!15890 (t!380133 (exprs!6581 lt!2458040)) lambda!388619))))

(assert (= (and d!2157870 (not res!2801717)) b!6869038))

(assert (= (and b!6869038 res!2801718) b!6869039))

(declare-fun b_lambda!259857 () Bool)

(assert (=> (not b_lambda!259857) (not b!6869038)))

(declare-fun m!7600394 () Bool)

(assert (=> b!6869038 m!7600394))

(declare-fun m!7600396 () Bool)

(assert (=> b!6869039 m!7600396))

(assert (=> d!2157550 d!2157870))

(declare-fun bs!1836139 () Bool)

(declare-fun d!2157872 () Bool)

(assert (= bs!1836139 (and d!2157872 d!2157564)))

(declare-fun lambda!388696 () Int)

(assert (=> bs!1836139 (= lambda!388696 lambda!388628)))

(declare-fun bs!1836140 () Bool)

(assert (= bs!1836140 (and d!2157872 d!2157550)))

(assert (=> bs!1836140 (= lambda!388696 lambda!388619)))

(declare-fun bs!1836141 () Bool)

(assert (= bs!1836141 (and d!2157872 d!2157808)))

(assert (=> bs!1836141 (= lambda!388696 lambda!388680)))

(declare-fun bs!1836142 () Bool)

(assert (= bs!1836142 (and d!2157872 b!6867793)))

(assert (=> bs!1836142 (= lambda!388696 lambda!388573)))

(declare-fun bs!1836143 () Bool)

(assert (= bs!1836143 (and d!2157872 d!2157578)))

(assert (=> bs!1836143 (not (= lambda!388696 lambda!388637))))

(declare-fun bs!1836144 () Bool)

(assert (= bs!1836144 (and d!2157872 d!2157576)))

(assert (=> bs!1836144 (not (= lambda!388696 lambda!388631))))

(declare-fun bs!1836145 () Bool)

(assert (= bs!1836145 (and d!2157872 b!6867798)))

(assert (=> bs!1836145 (not (= lambda!388696 lambda!388571))))

(declare-fun bs!1836146 () Bool)

(assert (= bs!1836146 (and d!2157872 d!2157836)))

(assert (=> bs!1836146 (= lambda!388696 lambda!388688)))

(declare-fun bs!1836147 () Bool)

(assert (= bs!1836147 (and d!2157872 d!2157580)))

(assert (=> bs!1836147 (= lambda!388696 lambda!388640)))

(declare-fun bs!1836148 () Bool)

(assert (= bs!1836148 (and d!2157872 d!2157772)))

(assert (=> bs!1836148 (= lambda!388696 lambda!388675)))

(assert (=> bs!1836143 (= lambda!388696 lambda!388636)))

(declare-fun bs!1836149 () Bool)

(assert (= bs!1836149 (and d!2157872 d!2157806)))

(assert (=> bs!1836149 (= lambda!388696 lambda!388679)))

(declare-fun bs!1836150 () Bool)

(assert (= bs!1836150 (and d!2157872 d!2157854)))

(assert (=> bs!1836150 (= lambda!388696 lambda!388689)))

(declare-fun bs!1836151 () Bool)

(assert (= bs!1836151 (and d!2157872 d!2157534)))

(assert (=> bs!1836151 (= lambda!388696 lambda!388616)))

(declare-fun bs!1836152 () Bool)

(assert (= bs!1836152 (and d!2157872 d!2157866)))

(assert (=> bs!1836152 (= lambda!388696 lambda!388693)))

(declare-fun bs!1836153 () Bool)

(assert (= bs!1836153 (and d!2157872 d!2157582)))

(assert (=> bs!1836153 (= lambda!388696 lambda!388641)))

(declare-fun bs!1836154 () Bool)

(assert (= bs!1836154 (and d!2157872 d!2157834)))

(assert (=> bs!1836154 (= lambda!388696 lambda!388687)))

(assert (=> d!2157872 (forall!15890 (exprs!6581 lt!2458040) lambda!388696)))

(assert (=> d!2157872 true))

(declare-fun _$47!970 () Unit!160165)

(assert (=> d!2157872 (= (choose!51182 lt!2458040 (exprs!6581 lt!2458040)) _$47!970)))

(declare-fun bs!1836155 () Bool)

(assert (= bs!1836155 d!2157872))

(declare-fun m!7600398 () Bool)

(assert (=> bs!1836155 m!7600398))

(assert (=> d!2157550 d!2157872))

(declare-fun b!6869040 () Bool)

(declare-fun e!4140671 () Bool)

(declare-fun call!625644 () Bool)

(assert (=> b!6869040 (= e!4140671 call!625644)))

(declare-fun call!625643 () Bool)

(declare-fun c!1278475 () Bool)

(declare-fun bm!625638 () Bool)

(declare-fun c!1278474 () Bool)

(assert (=> bm!625638 (= call!625643 (validRegex!8433 (ite c!1278474 (reg!17026 lt!2458118) (ite c!1278475 (regOne!33907 lt!2458118) (regOne!33906 lt!2458118)))))))

(declare-fun bm!625639 () Bool)

(declare-fun call!625645 () Bool)

(assert (=> bm!625639 (= call!625645 call!625643)))

(declare-fun b!6869041 () Bool)

(declare-fun e!4140673 () Bool)

(assert (=> b!6869041 (= e!4140673 call!625643)))

(declare-fun bm!625640 () Bool)

(assert (=> bm!625640 (= call!625644 (validRegex!8433 (ite c!1278475 (regTwo!33907 lt!2458118) (regTwo!33906 lt!2458118))))))

(declare-fun b!6869042 () Bool)

(declare-fun e!4140677 () Bool)

(assert (=> b!6869042 (= e!4140677 e!4140671)))

(declare-fun res!2801721 () Bool)

(assert (=> b!6869042 (=> (not res!2801721) (not e!4140671))))

(assert (=> b!6869042 (= res!2801721 call!625645)))

(declare-fun d!2157874 () Bool)

(declare-fun res!2801720 () Bool)

(declare-fun e!4140675 () Bool)

(assert (=> d!2157874 (=> res!2801720 e!4140675)))

(assert (=> d!2157874 (= res!2801720 ((_ is ElementMatch!16697) lt!2458118))))

(assert (=> d!2157874 (= (validRegex!8433 lt!2458118) e!4140675)))

(declare-fun b!6869043 () Bool)

(declare-fun res!2801719 () Bool)

(declare-fun e!4140674 () Bool)

(assert (=> b!6869043 (=> (not res!2801719) (not e!4140674))))

(assert (=> b!6869043 (= res!2801719 call!625645)))

(declare-fun e!4140676 () Bool)

(assert (=> b!6869043 (= e!4140676 e!4140674)))

(declare-fun b!6869044 () Bool)

(assert (=> b!6869044 (= e!4140674 call!625644)))

(declare-fun b!6869045 () Bool)

(declare-fun res!2801722 () Bool)

(assert (=> b!6869045 (=> res!2801722 e!4140677)))

(assert (=> b!6869045 (= res!2801722 (not ((_ is Concat!25542) lt!2458118)))))

(assert (=> b!6869045 (= e!4140676 e!4140677)))

(declare-fun b!6869046 () Bool)

(declare-fun e!4140672 () Bool)

(assert (=> b!6869046 (= e!4140672 e!4140676)))

(assert (=> b!6869046 (= c!1278475 ((_ is Union!16697) lt!2458118))))

(declare-fun b!6869047 () Bool)

(assert (=> b!6869047 (= e!4140675 e!4140672)))

(assert (=> b!6869047 (= c!1278474 ((_ is Star!16697) lt!2458118))))

(declare-fun b!6869048 () Bool)

(assert (=> b!6869048 (= e!4140672 e!4140673)))

(declare-fun res!2801723 () Bool)

(assert (=> b!6869048 (= res!2801723 (not (nullable!6658 (reg!17026 lt!2458118))))))

(assert (=> b!6869048 (=> (not res!2801723) (not e!4140673))))

(assert (= (and d!2157874 (not res!2801720)) b!6869047))

(assert (= (and b!6869047 c!1278474) b!6869048))

(assert (= (and b!6869047 (not c!1278474)) b!6869046))

(assert (= (and b!6869048 res!2801723) b!6869041))

(assert (= (and b!6869046 c!1278475) b!6869043))

(assert (= (and b!6869046 (not c!1278475)) b!6869045))

(assert (= (and b!6869043 res!2801719) b!6869044))

(assert (= (and b!6869045 (not res!2801722)) b!6869042))

(assert (= (and b!6869042 res!2801721) b!6869040))

(assert (= (or b!6869044 b!6869040) bm!625640))

(assert (= (or b!6869043 b!6869042) bm!625639))

(assert (= (or b!6869041 bm!625639) bm!625638))

(declare-fun m!7600400 () Bool)

(assert (=> bm!625638 m!7600400))

(declare-fun m!7600402 () Bool)

(assert (=> bm!625640 m!7600402))

(declare-fun m!7600404 () Bool)

(assert (=> b!6869048 m!7600404))

(assert (=> d!2157564 d!2157874))

(declare-fun d!2157876 () Bool)

(declare-fun res!2801724 () Bool)

(declare-fun e!4140678 () Bool)

(assert (=> d!2157876 (=> res!2801724 e!4140678)))

(assert (=> d!2157876 (= res!2801724 ((_ is Nil!66266) (exprs!6581 lt!2458040)))))

(assert (=> d!2157876 (= (forall!15890 (exprs!6581 lt!2458040) lambda!388628) e!4140678)))

(declare-fun b!6869049 () Bool)

(declare-fun e!4140679 () Bool)

(assert (=> b!6869049 (= e!4140678 e!4140679)))

(declare-fun res!2801725 () Bool)

(assert (=> b!6869049 (=> (not res!2801725) (not e!4140679))))

(assert (=> b!6869049 (= res!2801725 (dynLambda!26529 lambda!388628 (h!72714 (exprs!6581 lt!2458040))))))

(declare-fun b!6869050 () Bool)

(assert (=> b!6869050 (= e!4140679 (forall!15890 (t!380133 (exprs!6581 lt!2458040)) lambda!388628))))

(assert (= (and d!2157876 (not res!2801724)) b!6869049))

(assert (= (and b!6869049 res!2801725) b!6869050))

(declare-fun b_lambda!259859 () Bool)

(assert (=> (not b_lambda!259859) (not b!6869049)))

(declare-fun m!7600406 () Bool)

(assert (=> b!6869049 m!7600406))

(declare-fun m!7600408 () Bool)

(assert (=> b!6869050 m!7600408))

(assert (=> d!2157564 d!2157876))

(assert (=> d!2157572 d!2157570))

(assert (=> d!2157572 d!2157568))

(declare-fun d!2157878 () Bool)

(assert (=> d!2157878 (< (contextDepthTotal!418 lt!2458040) (zipperDepthTotal!446 zl!343))))

(assert (=> d!2157878 true))

(declare-fun _$54!222 () Unit!160165)

(assert (=> d!2157878 (= (choose!51184 zl!343 lt!2458040) _$54!222)))

(declare-fun bs!1836156 () Bool)

(assert (= bs!1836156 d!2157878))

(assert (=> bs!1836156 m!7599450))

(assert (=> bs!1836156 m!7599448))

(assert (=> d!2157572 d!2157878))

(declare-fun d!2157880 () Bool)

(declare-fun lt!2458184 () Bool)

(assert (=> d!2157880 (= lt!2458184 (select (content!13010 zl!343) lt!2458040))))

(declare-fun e!4140681 () Bool)

(assert (=> d!2157880 (= lt!2458184 e!4140681)))

(declare-fun res!2801726 () Bool)

(assert (=> d!2157880 (=> (not res!2801726) (not e!4140681))))

(assert (=> d!2157880 (= res!2801726 ((_ is Cons!66267) zl!343))))

(assert (=> d!2157880 (= (contains!20355 zl!343 lt!2458040) lt!2458184)))

(declare-fun b!6869051 () Bool)

(declare-fun e!4140680 () Bool)

(assert (=> b!6869051 (= e!4140681 e!4140680)))

(declare-fun res!2801727 () Bool)

(assert (=> b!6869051 (=> res!2801727 e!4140680)))

(assert (=> b!6869051 (= res!2801727 (= (h!72715 zl!343) lt!2458040))))

(declare-fun b!6869052 () Bool)

(assert (=> b!6869052 (= e!4140680 (contains!20355 (t!380134 zl!343) lt!2458040))))

(assert (= (and d!2157880 res!2801726) b!6869051))

(assert (= (and b!6869051 (not res!2801727)) b!6869052))

(assert (=> d!2157880 m!7599684))

(declare-fun m!7600410 () Bool)

(assert (=> d!2157880 m!7600410))

(declare-fun m!7600412 () Bool)

(assert (=> b!6869052 m!7600412))

(assert (=> d!2157572 d!2157880))

(declare-fun b!6869053 () Bool)

(declare-fun e!4140682 () Bool)

(declare-fun call!625647 () Bool)

(assert (=> b!6869053 (= e!4140682 call!625647)))

(declare-fun call!625646 () Bool)

(declare-fun c!1278477 () Bool)

(declare-fun bm!625641 () Bool)

(declare-fun c!1278478 () Bool)

(assert (=> bm!625641 (= call!625646 (validRegex!8433 (ite c!1278477 (reg!17026 (ite c!1278251 (reg!17026 lt!2458034) (ite c!1278252 (regOne!33907 lt!2458034) (regOne!33906 lt!2458034)))) (ite c!1278478 (regOne!33907 (ite c!1278251 (reg!17026 lt!2458034) (ite c!1278252 (regOne!33907 lt!2458034) (regOne!33906 lt!2458034)))) (regOne!33906 (ite c!1278251 (reg!17026 lt!2458034) (ite c!1278252 (regOne!33907 lt!2458034) (regOne!33906 lt!2458034))))))))))

(declare-fun bm!625642 () Bool)

(declare-fun call!625648 () Bool)

(assert (=> bm!625642 (= call!625648 call!625646)))

(declare-fun b!6869054 () Bool)

(declare-fun e!4140684 () Bool)

(assert (=> b!6869054 (= e!4140684 call!625646)))

(declare-fun bm!625643 () Bool)

(assert (=> bm!625643 (= call!625647 (validRegex!8433 (ite c!1278478 (regTwo!33907 (ite c!1278251 (reg!17026 lt!2458034) (ite c!1278252 (regOne!33907 lt!2458034) (regOne!33906 lt!2458034)))) (regTwo!33906 (ite c!1278251 (reg!17026 lt!2458034) (ite c!1278252 (regOne!33907 lt!2458034) (regOne!33906 lt!2458034)))))))))

(declare-fun b!6869055 () Bool)

(declare-fun e!4140688 () Bool)

(assert (=> b!6869055 (= e!4140688 e!4140682)))

(declare-fun res!2801730 () Bool)

(assert (=> b!6869055 (=> (not res!2801730) (not e!4140682))))

(assert (=> b!6869055 (= res!2801730 call!625648)))

(declare-fun d!2157882 () Bool)

(declare-fun res!2801729 () Bool)

(declare-fun e!4140686 () Bool)

(assert (=> d!2157882 (=> res!2801729 e!4140686)))

(assert (=> d!2157882 (= res!2801729 ((_ is ElementMatch!16697) (ite c!1278251 (reg!17026 lt!2458034) (ite c!1278252 (regOne!33907 lt!2458034) (regOne!33906 lt!2458034)))))))

(assert (=> d!2157882 (= (validRegex!8433 (ite c!1278251 (reg!17026 lt!2458034) (ite c!1278252 (regOne!33907 lt!2458034) (regOne!33906 lt!2458034)))) e!4140686)))

(declare-fun b!6869056 () Bool)

(declare-fun res!2801728 () Bool)

(declare-fun e!4140685 () Bool)

(assert (=> b!6869056 (=> (not res!2801728) (not e!4140685))))

(assert (=> b!6869056 (= res!2801728 call!625648)))

(declare-fun e!4140687 () Bool)

(assert (=> b!6869056 (= e!4140687 e!4140685)))

(declare-fun b!6869057 () Bool)

(assert (=> b!6869057 (= e!4140685 call!625647)))

(declare-fun b!6869058 () Bool)

(declare-fun res!2801731 () Bool)

(assert (=> b!6869058 (=> res!2801731 e!4140688)))

(assert (=> b!6869058 (= res!2801731 (not ((_ is Concat!25542) (ite c!1278251 (reg!17026 lt!2458034) (ite c!1278252 (regOne!33907 lt!2458034) (regOne!33906 lt!2458034))))))))

(assert (=> b!6869058 (= e!4140687 e!4140688)))

(declare-fun b!6869059 () Bool)

(declare-fun e!4140683 () Bool)

(assert (=> b!6869059 (= e!4140683 e!4140687)))

(assert (=> b!6869059 (= c!1278478 ((_ is Union!16697) (ite c!1278251 (reg!17026 lt!2458034) (ite c!1278252 (regOne!33907 lt!2458034) (regOne!33906 lt!2458034)))))))

(declare-fun b!6869060 () Bool)

(assert (=> b!6869060 (= e!4140686 e!4140683)))

(assert (=> b!6869060 (= c!1278477 ((_ is Star!16697) (ite c!1278251 (reg!17026 lt!2458034) (ite c!1278252 (regOne!33907 lt!2458034) (regOne!33906 lt!2458034)))))))

(declare-fun b!6869061 () Bool)

(assert (=> b!6869061 (= e!4140683 e!4140684)))

(declare-fun res!2801732 () Bool)

(assert (=> b!6869061 (= res!2801732 (not (nullable!6658 (reg!17026 (ite c!1278251 (reg!17026 lt!2458034) (ite c!1278252 (regOne!33907 lt!2458034) (regOne!33906 lt!2458034)))))))))

(assert (=> b!6869061 (=> (not res!2801732) (not e!4140684))))

(assert (= (and d!2157882 (not res!2801729)) b!6869060))

(assert (= (and b!6869060 c!1278477) b!6869061))

(assert (= (and b!6869060 (not c!1278477)) b!6869059))

(assert (= (and b!6869061 res!2801732) b!6869054))

(assert (= (and b!6869059 c!1278478) b!6869056))

(assert (= (and b!6869059 (not c!1278478)) b!6869058))

(assert (= (and b!6869056 res!2801728) b!6869057))

(assert (= (and b!6869058 (not res!2801731)) b!6869055))

(assert (= (and b!6869055 res!2801730) b!6869053))

(assert (= (or b!6869057 b!6869053) bm!625643))

(assert (= (or b!6869056 b!6869055) bm!625642))

(assert (= (or b!6869054 bm!625642) bm!625641))

(declare-fun m!7600414 () Bool)

(assert (=> bm!625641 m!7600414))

(declare-fun m!7600416 () Bool)

(assert (=> bm!625643 m!7600416))

(declare-fun m!7600418 () Bool)

(assert (=> b!6869061 m!7600418))

(assert (=> bm!625546 d!2157882))

(declare-fun d!2157884 () Bool)

(declare-fun res!2801733 () Bool)

(declare-fun e!4140689 () Bool)

(assert (=> d!2157884 (=> res!2801733 e!4140689)))

(assert (=> d!2157884 (= res!2801733 ((_ is Nil!66266) (exprs!6581 setElem!47225)))))

(assert (=> d!2157884 (= (forall!15890 (exprs!6581 setElem!47225) lambda!388616) e!4140689)))

(declare-fun b!6869062 () Bool)

(declare-fun e!4140690 () Bool)

(assert (=> b!6869062 (= e!4140689 e!4140690)))

(declare-fun res!2801734 () Bool)

(assert (=> b!6869062 (=> (not res!2801734) (not e!4140690))))

(assert (=> b!6869062 (= res!2801734 (dynLambda!26529 lambda!388616 (h!72714 (exprs!6581 setElem!47225))))))

(declare-fun b!6869063 () Bool)

(assert (=> b!6869063 (= e!4140690 (forall!15890 (t!380133 (exprs!6581 setElem!47225)) lambda!388616))))

(assert (= (and d!2157884 (not res!2801733)) b!6869062))

(assert (= (and b!6869062 res!2801734) b!6869063))

(declare-fun b_lambda!259861 () Bool)

(assert (=> (not b_lambda!259861) (not b!6869062)))

(declare-fun m!7600420 () Bool)

(assert (=> b!6869062 m!7600420))

(declare-fun m!7600422 () Bool)

(assert (=> b!6869063 m!7600422))

(assert (=> d!2157534 d!2157884))

(assert (=> d!2157552 d!2157556))

(declare-fun d!2157886 () Bool)

(declare-fun lt!2458185 () Int)

(assert (=> d!2157886 (>= lt!2458185 0)))

(declare-fun e!4140691 () Int)

(assert (=> d!2157886 (= lt!2458185 e!4140691)))

(declare-fun c!1278479 () Bool)

(assert (=> d!2157886 (= c!1278479 ((_ is Cons!66266) (exprs!6581 (h!72715 zl!343))))))

(assert (=> d!2157886 (= (contextDepthTotal!418 (h!72715 zl!343)) lt!2458185)))

(declare-fun b!6869064 () Bool)

(assert (=> b!6869064 (= e!4140691 (+ (regexDepthTotal!263 (h!72714 (exprs!6581 (h!72715 zl!343)))) (contextDepthTotal!418 (Context!12163 (t!380133 (exprs!6581 (h!72715 zl!343)))))))))

(declare-fun b!6869065 () Bool)

(assert (=> b!6869065 (= e!4140691 1)))

(assert (= (and d!2157886 c!1278479) b!6869064))

(assert (= (and d!2157886 (not c!1278479)) b!6869065))

(declare-fun m!7600424 () Bool)

(assert (=> b!6869064 m!7600424))

(declare-fun m!7600426 () Bool)

(assert (=> b!6869064 m!7600426))

(assert (=> b!6868272 d!2157886))

(declare-fun d!2157888 () Bool)

(declare-fun lt!2458186 () Int)

(assert (=> d!2157888 (>= lt!2458186 0)))

(declare-fun e!4140692 () Int)

(assert (=> d!2157888 (= lt!2458186 e!4140692)))

(declare-fun c!1278480 () Bool)

(assert (=> d!2157888 (= c!1278480 ((_ is Cons!66267) (t!380134 zl!343)))))

(assert (=> d!2157888 (= (zipperDepthTotal!446 (t!380134 zl!343)) lt!2458186)))

(declare-fun b!6869066 () Bool)

(assert (=> b!6869066 (= e!4140692 (+ (contextDepthTotal!418 (h!72715 (t!380134 zl!343))) (zipperDepthTotal!446 (t!380134 (t!380134 zl!343)))))))

(declare-fun b!6869067 () Bool)

(assert (=> b!6869067 (= e!4140692 0)))

(assert (= (and d!2157888 c!1278480) b!6869066))

(assert (= (and d!2157888 (not c!1278480)) b!6869067))

(declare-fun m!7600428 () Bool)

(assert (=> b!6869066 m!7600428))

(declare-fun m!7600430 () Bool)

(assert (=> b!6869066 m!7600430))

(assert (=> b!6868272 d!2157888))

(declare-fun bs!1836157 () Bool)

(declare-fun d!2157890 () Bool)

(assert (= bs!1836157 (and d!2157890 d!2157564)))

(declare-fun lambda!388697 () Int)

(assert (=> bs!1836157 (= lambda!388697 lambda!388628)))

(declare-fun bs!1836158 () Bool)

(assert (= bs!1836158 (and d!2157890 d!2157550)))

(assert (=> bs!1836158 (= lambda!388697 lambda!388619)))

(declare-fun bs!1836159 () Bool)

(assert (= bs!1836159 (and d!2157890 d!2157808)))

(assert (=> bs!1836159 (= lambda!388697 lambda!388680)))

(declare-fun bs!1836160 () Bool)

(assert (= bs!1836160 (and d!2157890 b!6867793)))

(assert (=> bs!1836160 (= lambda!388697 lambda!388573)))

(declare-fun bs!1836161 () Bool)

(assert (= bs!1836161 (and d!2157890 d!2157578)))

(assert (=> bs!1836161 (not (= lambda!388697 lambda!388637))))

(declare-fun bs!1836162 () Bool)

(assert (= bs!1836162 (and d!2157890 b!6867798)))

(assert (=> bs!1836162 (not (= lambda!388697 lambda!388571))))

(declare-fun bs!1836163 () Bool)

(assert (= bs!1836163 (and d!2157890 d!2157836)))

(assert (=> bs!1836163 (= lambda!388697 lambda!388688)))

(declare-fun bs!1836164 () Bool)

(assert (= bs!1836164 (and d!2157890 d!2157580)))

(assert (=> bs!1836164 (= lambda!388697 lambda!388640)))

(declare-fun bs!1836165 () Bool)

(assert (= bs!1836165 (and d!2157890 d!2157772)))

(assert (=> bs!1836165 (= lambda!388697 lambda!388675)))

(assert (=> bs!1836161 (= lambda!388697 lambda!388636)))

(declare-fun bs!1836166 () Bool)

(assert (= bs!1836166 (and d!2157890 d!2157806)))

(assert (=> bs!1836166 (= lambda!388697 lambda!388679)))

(declare-fun bs!1836167 () Bool)

(assert (= bs!1836167 (and d!2157890 d!2157854)))

(assert (=> bs!1836167 (= lambda!388697 lambda!388689)))

(declare-fun bs!1836168 () Bool)

(assert (= bs!1836168 (and d!2157890 d!2157534)))

(assert (=> bs!1836168 (= lambda!388697 lambda!388616)))

(declare-fun bs!1836169 () Bool)

(assert (= bs!1836169 (and d!2157890 d!2157866)))

(assert (=> bs!1836169 (= lambda!388697 lambda!388693)))

(declare-fun bs!1836170 () Bool)

(assert (= bs!1836170 (and d!2157890 d!2157582)))

(assert (=> bs!1836170 (= lambda!388697 lambda!388641)))

(declare-fun bs!1836171 () Bool)

(assert (= bs!1836171 (and d!2157890 d!2157834)))

(assert (=> bs!1836171 (= lambda!388697 lambda!388687)))

(declare-fun bs!1836172 () Bool)

(assert (= bs!1836172 (and d!2157890 d!2157576)))

(assert (=> bs!1836172 (not (= lambda!388697 lambda!388631))))

(declare-fun bs!1836173 () Bool)

(assert (= bs!1836173 (and d!2157890 d!2157872)))

(assert (=> bs!1836173 (= lambda!388697 lambda!388696)))

(assert (=> d!2157890 (= (inv!84989 setElem!47231) (forall!15890 (exprs!6581 setElem!47231) lambda!388697))))

(declare-fun bs!1836174 () Bool)

(assert (= bs!1836174 d!2157890))

(declare-fun m!7600432 () Bool)

(assert (=> bs!1836174 m!7600432))

(assert (=> setNonEmpty!47231 d!2157890))

(declare-fun bs!1836175 () Bool)

(declare-fun b!6869071 () Bool)

(assert (= bs!1836175 (and b!6869071 b!6867923)))

(declare-fun lambda!388698 () Int)

(assert (=> bs!1836175 (= (and (= (reg!17026 (regTwo!33907 r!7292)) (reg!17026 r!7292)) (= (regTwo!33907 r!7292) r!7292)) (= lambda!388698 lambda!388599))))

(declare-fun bs!1836176 () Bool)

(assert (= bs!1836176 (and b!6869071 b!6867924)))

(assert (=> bs!1836176 (not (= lambda!388698 lambda!388601))))

(declare-fun bs!1836177 () Bool)

(assert (= bs!1836177 (and b!6869071 b!6868967)))

(assert (=> bs!1836177 (= (and (= (reg!17026 (regTwo!33907 r!7292)) (reg!17026 (regOne!33907 r!7292))) (= (regTwo!33907 r!7292) (regOne!33907 r!7292))) (= lambda!388698 lambda!388685))))

(declare-fun bs!1836178 () Bool)

(assert (= bs!1836178 (and b!6869071 b!6868968)))

(assert (=> bs!1836178 (not (= lambda!388698 lambda!388686))))

(assert (=> b!6869071 true))

(assert (=> b!6869071 true))

(declare-fun bs!1836179 () Bool)

(declare-fun b!6869072 () Bool)

(assert (= bs!1836179 (and b!6869072 b!6867923)))

(declare-fun lambda!388699 () Int)

(assert (=> bs!1836179 (not (= lambda!388699 lambda!388599))))

(declare-fun bs!1836180 () Bool)

(assert (= bs!1836180 (and b!6869072 b!6868968)))

(assert (=> bs!1836180 (= (and (= (regOne!33906 (regTwo!33907 r!7292)) (regOne!33906 (regOne!33907 r!7292))) (= (regTwo!33906 (regTwo!33907 r!7292)) (regTwo!33906 (regOne!33907 r!7292)))) (= lambda!388699 lambda!388686))))

(declare-fun bs!1836181 () Bool)

(assert (= bs!1836181 (and b!6869072 b!6868967)))

(assert (=> bs!1836181 (not (= lambda!388699 lambda!388685))))

(declare-fun bs!1836182 () Bool)

(assert (= bs!1836182 (and b!6869072 b!6867924)))

(assert (=> bs!1836182 (= (and (= (regOne!33906 (regTwo!33907 r!7292)) (regOne!33906 r!7292)) (= (regTwo!33906 (regTwo!33907 r!7292)) (regTwo!33906 r!7292))) (= lambda!388699 lambda!388601))))

(declare-fun bs!1836183 () Bool)

(assert (= bs!1836183 (and b!6869072 b!6869071)))

(assert (=> bs!1836183 (not (= lambda!388699 lambda!388698))))

(assert (=> b!6869072 true))

(assert (=> b!6869072 true))

(declare-fun bm!625644 () Bool)

(declare-fun call!625649 () Bool)

(declare-fun c!1278484 () Bool)

(assert (=> bm!625644 (= call!625649 (Exists!3757 (ite c!1278484 lambda!388698 lambda!388699)))))

(declare-fun b!6869068 () Bool)

(declare-fun c!1278481 () Bool)

(assert (=> b!6869068 (= c!1278481 ((_ is ElementMatch!16697) (regTwo!33907 r!7292)))))

(declare-fun e!4140696 () Bool)

(declare-fun e!4140695 () Bool)

(assert (=> b!6869068 (= e!4140696 e!4140695)))

(declare-fun b!6869069 () Bool)

(assert (=> b!6869069 (= e!4140695 (= s!2326 (Cons!66268 (c!1278149 (regTwo!33907 r!7292)) Nil!66268)))))

(declare-fun b!6869070 () Bool)

(declare-fun e!4140694 () Bool)

(declare-fun e!4140697 () Bool)

(assert (=> b!6869070 (= e!4140694 e!4140697)))

(assert (=> b!6869070 (= c!1278484 ((_ is Star!16697) (regTwo!33907 r!7292)))))

(declare-fun e!4140698 () Bool)

(assert (=> b!6869071 (= e!4140698 call!625649)))

(declare-fun bm!625645 () Bool)

(declare-fun call!625650 () Bool)

(assert (=> bm!625645 (= call!625650 (isEmpty!38627 s!2326))))

(declare-fun b!6869073 () Bool)

(declare-fun e!4140699 () Bool)

(assert (=> b!6869073 (= e!4140694 e!4140699)))

(declare-fun res!2801735 () Bool)

(assert (=> b!6869073 (= res!2801735 (matchRSpec!3798 (regOne!33907 (regTwo!33907 r!7292)) s!2326))))

(assert (=> b!6869073 (=> res!2801735 e!4140699)))

(declare-fun b!6869074 () Bool)

(declare-fun e!4140693 () Bool)

(assert (=> b!6869074 (= e!4140693 e!4140696)))

(declare-fun res!2801737 () Bool)

(assert (=> b!6869074 (= res!2801737 (not ((_ is EmptyLang!16697) (regTwo!33907 r!7292))))))

(assert (=> b!6869074 (=> (not res!2801737) (not e!4140696))))

(declare-fun b!6869075 () Bool)

(assert (=> b!6869075 (= e!4140693 call!625650)))

(declare-fun b!6869076 () Bool)

(assert (=> b!6869076 (= e!4140699 (matchRSpec!3798 (regTwo!33907 (regTwo!33907 r!7292)) s!2326))))

(declare-fun d!2157892 () Bool)

(declare-fun c!1278482 () Bool)

(assert (=> d!2157892 (= c!1278482 ((_ is EmptyExpr!16697) (regTwo!33907 r!7292)))))

(assert (=> d!2157892 (= (matchRSpec!3798 (regTwo!33907 r!7292) s!2326) e!4140693)))

(assert (=> b!6869072 (= e!4140697 call!625649)))

(declare-fun b!6869077 () Bool)

(declare-fun res!2801736 () Bool)

(assert (=> b!6869077 (=> res!2801736 e!4140698)))

(assert (=> b!6869077 (= res!2801736 call!625650)))

(assert (=> b!6869077 (= e!4140697 e!4140698)))

(declare-fun b!6869078 () Bool)

(declare-fun c!1278483 () Bool)

(assert (=> b!6869078 (= c!1278483 ((_ is Union!16697) (regTwo!33907 r!7292)))))

(assert (=> b!6869078 (= e!4140695 e!4140694)))

(assert (= (and d!2157892 c!1278482) b!6869075))

(assert (= (and d!2157892 (not c!1278482)) b!6869074))

(assert (= (and b!6869074 res!2801737) b!6869068))

(assert (= (and b!6869068 c!1278481) b!6869069))

(assert (= (and b!6869068 (not c!1278481)) b!6869078))

(assert (= (and b!6869078 c!1278483) b!6869073))

(assert (= (and b!6869078 (not c!1278483)) b!6869070))

(assert (= (and b!6869073 (not res!2801735)) b!6869076))

(assert (= (and b!6869070 c!1278484) b!6869077))

(assert (= (and b!6869070 (not c!1278484)) b!6869072))

(assert (= (and b!6869077 (not res!2801736)) b!6869071))

(assert (= (or b!6869071 b!6869072) bm!625644))

(assert (= (or b!6869075 b!6869077) bm!625645))

(declare-fun m!7600434 () Bool)

(assert (=> bm!625644 m!7600434))

(assert (=> bm!625645 m!7599520))

(declare-fun m!7600436 () Bool)

(assert (=> b!6869073 m!7600436))

(declare-fun m!7600438 () Bool)

(assert (=> b!6869076 m!7600438))

(assert (=> b!6867928 d!2157892))

(assert (=> d!2157502 d!2157790))

(assert (=> d!2157502 d!2157560))

(declare-fun b!6869079 () Bool)

(declare-fun e!4140700 () Bool)

(declare-fun call!625652 () Bool)

(assert (=> b!6869079 (= e!4140700 call!625652)))

(declare-fun c!1278486 () Bool)

(declare-fun bm!625646 () Bool)

(declare-fun call!625651 () Bool)

(declare-fun c!1278485 () Bool)

(assert (=> bm!625646 (= call!625651 (validRegex!8433 (ite c!1278485 (reg!17026 (ite c!1278250 (regTwo!33907 r!7292) (regTwo!33906 r!7292))) (ite c!1278486 (regOne!33907 (ite c!1278250 (regTwo!33907 r!7292) (regTwo!33906 r!7292))) (regOne!33906 (ite c!1278250 (regTwo!33907 r!7292) (regTwo!33906 r!7292)))))))))

(declare-fun bm!625647 () Bool)

(declare-fun call!625653 () Bool)

(assert (=> bm!625647 (= call!625653 call!625651)))

(declare-fun b!6869080 () Bool)

(declare-fun e!4140702 () Bool)

(assert (=> b!6869080 (= e!4140702 call!625651)))

(declare-fun bm!625648 () Bool)

(assert (=> bm!625648 (= call!625652 (validRegex!8433 (ite c!1278486 (regTwo!33907 (ite c!1278250 (regTwo!33907 r!7292) (regTwo!33906 r!7292))) (regTwo!33906 (ite c!1278250 (regTwo!33907 r!7292) (regTwo!33906 r!7292))))))))

(declare-fun b!6869081 () Bool)

(declare-fun e!4140706 () Bool)

(assert (=> b!6869081 (= e!4140706 e!4140700)))

(declare-fun res!2801740 () Bool)

(assert (=> b!6869081 (=> (not res!2801740) (not e!4140700))))

(assert (=> b!6869081 (= res!2801740 call!625653)))

(declare-fun d!2157894 () Bool)

(declare-fun res!2801739 () Bool)

(declare-fun e!4140704 () Bool)

(assert (=> d!2157894 (=> res!2801739 e!4140704)))

(assert (=> d!2157894 (= res!2801739 ((_ is ElementMatch!16697) (ite c!1278250 (regTwo!33907 r!7292) (regTwo!33906 r!7292))))))

(assert (=> d!2157894 (= (validRegex!8433 (ite c!1278250 (regTwo!33907 r!7292) (regTwo!33906 r!7292))) e!4140704)))

(declare-fun b!6869082 () Bool)

(declare-fun res!2801738 () Bool)

(declare-fun e!4140703 () Bool)

(assert (=> b!6869082 (=> (not res!2801738) (not e!4140703))))

(assert (=> b!6869082 (= res!2801738 call!625653)))

(declare-fun e!4140705 () Bool)

(assert (=> b!6869082 (= e!4140705 e!4140703)))

(declare-fun b!6869083 () Bool)

(assert (=> b!6869083 (= e!4140703 call!625652)))

(declare-fun b!6869084 () Bool)

(declare-fun res!2801741 () Bool)

(assert (=> b!6869084 (=> res!2801741 e!4140706)))

(assert (=> b!6869084 (= res!2801741 (not ((_ is Concat!25542) (ite c!1278250 (regTwo!33907 r!7292) (regTwo!33906 r!7292)))))))

(assert (=> b!6869084 (= e!4140705 e!4140706)))

(declare-fun b!6869085 () Bool)

(declare-fun e!4140701 () Bool)

(assert (=> b!6869085 (= e!4140701 e!4140705)))

(assert (=> b!6869085 (= c!1278486 ((_ is Union!16697) (ite c!1278250 (regTwo!33907 r!7292) (regTwo!33906 r!7292))))))

(declare-fun b!6869086 () Bool)

(assert (=> b!6869086 (= e!4140704 e!4140701)))

(assert (=> b!6869086 (= c!1278485 ((_ is Star!16697) (ite c!1278250 (regTwo!33907 r!7292) (regTwo!33906 r!7292))))))

(declare-fun b!6869087 () Bool)

(assert (=> b!6869087 (= e!4140701 e!4140702)))

(declare-fun res!2801742 () Bool)

(assert (=> b!6869087 (= res!2801742 (not (nullable!6658 (reg!17026 (ite c!1278250 (regTwo!33907 r!7292) (regTwo!33906 r!7292))))))))

(assert (=> b!6869087 (=> (not res!2801742) (not e!4140702))))

(assert (= (and d!2157894 (not res!2801739)) b!6869086))

(assert (= (and b!6869086 c!1278485) b!6869087))

(assert (= (and b!6869086 (not c!1278485)) b!6869085))

(assert (= (and b!6869087 res!2801742) b!6869080))

(assert (= (and b!6869085 c!1278486) b!6869082))

(assert (= (and b!6869085 (not c!1278486)) b!6869084))

(assert (= (and b!6869082 res!2801738) b!6869083))

(assert (= (and b!6869084 (not res!2801741)) b!6869081))

(assert (= (and b!6869081 res!2801740) b!6869079))

(assert (= (or b!6869083 b!6869079) bm!625648))

(assert (= (or b!6869082 b!6869081) bm!625647))

(assert (= (or b!6869080 bm!625647) bm!625646))

(declare-fun m!7600440 () Bool)

(assert (=> bm!625646 m!7600440))

(declare-fun m!7600442 () Bool)

(assert (=> bm!625648 m!7600442))

(declare-fun m!7600444 () Bool)

(assert (=> b!6869087 m!7600444))

(assert (=> bm!625545 d!2157894))

(declare-fun d!2157896 () Bool)

(assert (=> d!2157896 (= (isEmpty!38628 (tail!12836 (exprs!6581 lt!2458040))) ((_ is Nil!66266) (tail!12836 (exprs!6581 lt!2458040))))))

(assert (=> b!6868259 d!2157896))

(declare-fun d!2157898 () Bool)

(assert (=> d!2157898 (= (tail!12836 (exprs!6581 lt!2458040)) (t!380133 (exprs!6581 lt!2458040)))))

(assert (=> b!6868259 d!2157898))

(declare-fun d!2157900 () Bool)

(declare-fun c!1278487 () Bool)

(assert (=> d!2157900 (= c!1278487 (isEmpty!38627 s!2326))))

(declare-fun e!4140707 () Bool)

(assert (=> d!2157900 (= (matchZipper!2663 (store ((as const (Array Context!12162 Bool)) false) lt!2458110 true) s!2326) e!4140707)))

(declare-fun b!6869088 () Bool)

(assert (=> b!6869088 (= e!4140707 (nullableZipper!2370 (store ((as const (Array Context!12162 Bool)) false) lt!2458110 true)))))

(declare-fun b!6869089 () Bool)

(assert (=> b!6869089 (= e!4140707 (matchZipper!2663 (derivationStepZipper!2617 (store ((as const (Array Context!12162 Bool)) false) lt!2458110 true) (head!13779 s!2326)) (tail!12835 s!2326)))))

(assert (= (and d!2157900 c!1278487) b!6869088))

(assert (= (and d!2157900 (not c!1278487)) b!6869089))

(assert (=> d!2157900 m!7599520))

(assert (=> b!6869088 m!7599762))

(declare-fun m!7600446 () Bool)

(assert (=> b!6869088 m!7600446))

(assert (=> b!6869089 m!7599586))

(assert (=> b!6869089 m!7599762))

(assert (=> b!6869089 m!7599586))

(declare-fun m!7600448 () Bool)

(assert (=> b!6869089 m!7600448))

(assert (=> b!6869089 m!7599580))

(assert (=> b!6869089 m!7600448))

(assert (=> b!6869089 m!7599580))

(declare-fun m!7600450 () Bool)

(assert (=> b!6869089 m!7600450))

(assert (=> bs!1835819 d!2157900))

(assert (=> d!2157578 d!2157502))

(declare-fun bs!1836184 () Bool)

(declare-fun d!2157902 () Bool)

(assert (= bs!1836184 (and d!2157902 d!2157564)))

(declare-fun lambda!388700 () Int)

(assert (=> bs!1836184 (not (= lambda!388700 lambda!388628))))

(declare-fun bs!1836185 () Bool)

(assert (= bs!1836185 (and d!2157902 d!2157550)))

(assert (=> bs!1836185 (not (= lambda!388700 lambda!388619))))

(declare-fun bs!1836186 () Bool)

(assert (= bs!1836186 (and d!2157902 d!2157808)))

(assert (=> bs!1836186 (not (= lambda!388700 lambda!388680))))

(declare-fun bs!1836187 () Bool)

(assert (= bs!1836187 (and d!2157902 b!6867793)))

(assert (=> bs!1836187 (not (= lambda!388700 lambda!388573))))

(declare-fun bs!1836188 () Bool)

(assert (= bs!1836188 (and d!2157902 d!2157578)))

(assert (=> bs!1836188 (not (= lambda!388700 lambda!388637))))

(declare-fun bs!1836189 () Bool)

(assert (= bs!1836189 (and d!2157902 d!2157890)))

(assert (=> bs!1836189 (not (= lambda!388700 lambda!388697))))

(declare-fun bs!1836190 () Bool)

(assert (= bs!1836190 (and d!2157902 b!6867798)))

(assert (=> bs!1836190 (not (= lambda!388700 lambda!388571))))

(declare-fun bs!1836191 () Bool)

(assert (= bs!1836191 (and d!2157902 d!2157836)))

(assert (=> bs!1836191 (not (= lambda!388700 lambda!388688))))

(declare-fun bs!1836192 () Bool)

(assert (= bs!1836192 (and d!2157902 d!2157580)))

(assert (=> bs!1836192 (not (= lambda!388700 lambda!388640))))

(declare-fun bs!1836193 () Bool)

(assert (= bs!1836193 (and d!2157902 d!2157772)))

(assert (=> bs!1836193 (not (= lambda!388700 lambda!388675))))

(assert (=> bs!1836188 (not (= lambda!388700 lambda!388636))))

(declare-fun bs!1836194 () Bool)

(assert (= bs!1836194 (and d!2157902 d!2157806)))

(assert (=> bs!1836194 (not (= lambda!388700 lambda!388679))))

(declare-fun bs!1836195 () Bool)

(assert (= bs!1836195 (and d!2157902 d!2157854)))

(assert (=> bs!1836195 (not (= lambda!388700 lambda!388689))))

(declare-fun bs!1836196 () Bool)

(assert (= bs!1836196 (and d!2157902 d!2157534)))

(assert (=> bs!1836196 (not (= lambda!388700 lambda!388616))))

(declare-fun bs!1836197 () Bool)

(assert (= bs!1836197 (and d!2157902 d!2157866)))

(assert (=> bs!1836197 (not (= lambda!388700 lambda!388693))))

(declare-fun bs!1836198 () Bool)

(assert (= bs!1836198 (and d!2157902 d!2157582)))

(assert (=> bs!1836198 (not (= lambda!388700 lambda!388641))))

(declare-fun bs!1836199 () Bool)

(assert (= bs!1836199 (and d!2157902 d!2157834)))

(assert (=> bs!1836199 (not (= lambda!388700 lambda!388687))))

(declare-fun bs!1836200 () Bool)

(assert (= bs!1836200 (and d!2157902 d!2157576)))

(assert (=> bs!1836200 (= (= lambda!388637 lambda!388571) (= lambda!388700 lambda!388631))))

(declare-fun bs!1836201 () Bool)

(assert (= bs!1836201 (and d!2157902 d!2157872)))

(assert (=> bs!1836201 (not (= lambda!388700 lambda!388696))))

(assert (=> d!2157902 true))

(assert (=> d!2157902 (< (dynLambda!26532 order!27731 lambda!388637) (dynLambda!26532 order!27731 lambda!388700))))

(assert (=> d!2157902 (= (exists!2829 lt!2458035 lambda!388637) (not (forall!15890 lt!2458035 lambda!388700)))))

(declare-fun bs!1836202 () Bool)

(assert (= bs!1836202 d!2157902))

(declare-fun m!7600452 () Bool)

(assert (=> bs!1836202 m!7600452))

(assert (=> d!2157578 d!2157902))

(declare-fun bs!1836203 () Bool)

(declare-fun d!2157904 () Bool)

(assert (= bs!1836203 (and d!2157904 d!2157564)))

(declare-fun lambda!388703 () Int)

(assert (=> bs!1836203 (not (= lambda!388703 lambda!388628))))

(declare-fun bs!1836204 () Bool)

(assert (= bs!1836204 (and d!2157904 d!2157550)))

(assert (=> bs!1836204 (not (= lambda!388703 lambda!388619))))

(declare-fun bs!1836205 () Bool)

(assert (= bs!1836205 (and d!2157904 d!2157808)))

(assert (=> bs!1836205 (not (= lambda!388703 lambda!388680))))

(declare-fun bs!1836206 () Bool)

(assert (= bs!1836206 (and d!2157904 b!6867793)))

(assert (=> bs!1836206 (not (= lambda!388703 lambda!388573))))

(declare-fun bs!1836207 () Bool)

(assert (= bs!1836207 (and d!2157904 d!2157902)))

(assert (=> bs!1836207 (not (= lambda!388703 lambda!388700))))

(declare-fun bs!1836208 () Bool)

(assert (= bs!1836208 (and d!2157904 d!2157578)))

(assert (=> bs!1836208 (= lambda!388703 lambda!388637)))

(declare-fun bs!1836209 () Bool)

(assert (= bs!1836209 (and d!2157904 d!2157890)))

(assert (=> bs!1836209 (not (= lambda!388703 lambda!388697))))

(declare-fun bs!1836210 () Bool)

(assert (= bs!1836210 (and d!2157904 b!6867798)))

(assert (=> bs!1836210 (= lambda!388703 lambda!388571)))

(declare-fun bs!1836211 () Bool)

(assert (= bs!1836211 (and d!2157904 d!2157836)))

(assert (=> bs!1836211 (not (= lambda!388703 lambda!388688))))

(declare-fun bs!1836212 () Bool)

(assert (= bs!1836212 (and d!2157904 d!2157580)))

(assert (=> bs!1836212 (not (= lambda!388703 lambda!388640))))

(declare-fun bs!1836213 () Bool)

(assert (= bs!1836213 (and d!2157904 d!2157772)))

(assert (=> bs!1836213 (not (= lambda!388703 lambda!388675))))

(assert (=> bs!1836208 (not (= lambda!388703 lambda!388636))))

(declare-fun bs!1836214 () Bool)

(assert (= bs!1836214 (and d!2157904 d!2157806)))

(assert (=> bs!1836214 (not (= lambda!388703 lambda!388679))))

(declare-fun bs!1836215 () Bool)

(assert (= bs!1836215 (and d!2157904 d!2157854)))

(assert (=> bs!1836215 (not (= lambda!388703 lambda!388689))))

(declare-fun bs!1836216 () Bool)

(assert (= bs!1836216 (and d!2157904 d!2157534)))

(assert (=> bs!1836216 (not (= lambda!388703 lambda!388616))))

(declare-fun bs!1836217 () Bool)

(assert (= bs!1836217 (and d!2157904 d!2157866)))

(assert (=> bs!1836217 (not (= lambda!388703 lambda!388693))))

(declare-fun bs!1836218 () Bool)

(assert (= bs!1836218 (and d!2157904 d!2157582)))

(assert (=> bs!1836218 (not (= lambda!388703 lambda!388641))))

(declare-fun bs!1836219 () Bool)

(assert (= bs!1836219 (and d!2157904 d!2157834)))

(assert (=> bs!1836219 (not (= lambda!388703 lambda!388687))))

(declare-fun bs!1836220 () Bool)

(assert (= bs!1836220 (and d!2157904 d!2157576)))

(assert (=> bs!1836220 (not (= lambda!388703 lambda!388631))))

(declare-fun bs!1836221 () Bool)

(assert (= bs!1836221 (and d!2157904 d!2157872)))

(assert (=> bs!1836221 (not (= lambda!388703 lambda!388696))))

(assert (=> d!2157904 true))

(assert (=> d!2157904 (= (matchR!8880 r!7292 s!2326) (exists!2829 lt!2458035 lambda!388703))))

(assert (=> d!2157904 true))

(declare-fun _$85!227 () Unit!160165)

(assert (=> d!2157904 (= (choose!51185 r!7292 lt!2458035 s!2326) _$85!227)))

(declare-fun bs!1836222 () Bool)

(assert (= bs!1836222 d!2157904))

(assert (=> bs!1836222 m!7599438))

(declare-fun m!7600454 () Bool)

(assert (=> bs!1836222 m!7600454))

(assert (=> d!2157578 d!2157904))

(declare-fun d!2157906 () Bool)

(declare-fun res!2801745 () Bool)

(declare-fun e!4140710 () Bool)

(assert (=> d!2157906 (=> res!2801745 e!4140710)))

(assert (=> d!2157906 (= res!2801745 ((_ is Nil!66266) lt!2458035))))

(assert (=> d!2157906 (= (forall!15890 lt!2458035 lambda!388636) e!4140710)))

(declare-fun b!6869092 () Bool)

(declare-fun e!4140711 () Bool)

(assert (=> b!6869092 (= e!4140710 e!4140711)))

(declare-fun res!2801746 () Bool)

(assert (=> b!6869092 (=> (not res!2801746) (not e!4140711))))

(assert (=> b!6869092 (= res!2801746 (dynLambda!26529 lambda!388636 (h!72714 lt!2458035)))))

(declare-fun b!6869093 () Bool)

(assert (=> b!6869093 (= e!4140711 (forall!15890 (t!380133 lt!2458035) lambda!388636))))

(assert (= (and d!2157906 (not res!2801745)) b!6869092))

(assert (= (and b!6869092 res!2801746) b!6869093))

(declare-fun b_lambda!259863 () Bool)

(assert (=> (not b_lambda!259863) (not b!6869092)))

(declare-fun m!7600456 () Bool)

(assert (=> b!6869092 m!7600456))

(declare-fun m!7600458 () Bool)

(assert (=> b!6869093 m!7600458))

(assert (=> d!2157578 d!2157906))

(assert (=> b!6868006 d!2157864))

(assert (=> b!6868006 d!2157780))

(declare-fun b!6869096 () Bool)

(declare-fun e!4140712 () Bool)

(declare-fun tp!1885588 () Bool)

(assert (=> b!6869096 (= e!4140712 tp!1885588)))

(declare-fun b!6869097 () Bool)

(declare-fun tp!1885586 () Bool)

(declare-fun tp!1885587 () Bool)

(assert (=> b!6869097 (= e!4140712 (and tp!1885586 tp!1885587))))

(assert (=> b!6868326 (= tp!1885395 e!4140712)))

(declare-fun b!6869095 () Bool)

(declare-fun tp!1885584 () Bool)

(declare-fun tp!1885585 () Bool)

(assert (=> b!6869095 (= e!4140712 (and tp!1885584 tp!1885585))))

(declare-fun b!6869094 () Bool)

(assert (=> b!6869094 (= e!4140712 tp_is_empty!42647)))

(assert (= (and b!6868326 ((_ is ElementMatch!16697) (regOne!33907 (regTwo!33906 r!7292)))) b!6869094))

(assert (= (and b!6868326 ((_ is Concat!25542) (regOne!33907 (regTwo!33906 r!7292)))) b!6869095))

(assert (= (and b!6868326 ((_ is Star!16697) (regOne!33907 (regTwo!33906 r!7292)))) b!6869096))

(assert (= (and b!6868326 ((_ is Union!16697) (regOne!33907 (regTwo!33906 r!7292)))) b!6869097))

(declare-fun b!6869100 () Bool)

(declare-fun e!4140713 () Bool)

(declare-fun tp!1885593 () Bool)

(assert (=> b!6869100 (= e!4140713 tp!1885593)))

(declare-fun b!6869101 () Bool)

(declare-fun tp!1885591 () Bool)

(declare-fun tp!1885592 () Bool)

(assert (=> b!6869101 (= e!4140713 (and tp!1885591 tp!1885592))))

(assert (=> b!6868326 (= tp!1885396 e!4140713)))

(declare-fun b!6869099 () Bool)

(declare-fun tp!1885589 () Bool)

(declare-fun tp!1885590 () Bool)

(assert (=> b!6869099 (= e!4140713 (and tp!1885589 tp!1885590))))

(declare-fun b!6869098 () Bool)

(assert (=> b!6869098 (= e!4140713 tp_is_empty!42647)))

(assert (= (and b!6868326 ((_ is ElementMatch!16697) (regTwo!33907 (regTwo!33906 r!7292)))) b!6869098))

(assert (= (and b!6868326 ((_ is Concat!25542) (regTwo!33907 (regTwo!33906 r!7292)))) b!6869099))

(assert (= (and b!6868326 ((_ is Star!16697) (regTwo!33907 (regTwo!33906 r!7292)))) b!6869100))

(assert (= (and b!6868326 ((_ is Union!16697) (regTwo!33907 (regTwo!33906 r!7292)))) b!6869101))

(declare-fun b!6869104 () Bool)

(declare-fun e!4140714 () Bool)

(declare-fun tp!1885598 () Bool)

(assert (=> b!6869104 (= e!4140714 tp!1885598)))

(declare-fun b!6869105 () Bool)

(declare-fun tp!1885596 () Bool)

(declare-fun tp!1885597 () Bool)

(assert (=> b!6869105 (= e!4140714 (and tp!1885596 tp!1885597))))

(assert (=> b!6868317 (= tp!1885387 e!4140714)))

(declare-fun b!6869103 () Bool)

(declare-fun tp!1885594 () Bool)

(declare-fun tp!1885595 () Bool)

(assert (=> b!6869103 (= e!4140714 (and tp!1885594 tp!1885595))))

(declare-fun b!6869102 () Bool)

(assert (=> b!6869102 (= e!4140714 tp_is_empty!42647)))

(assert (= (and b!6868317 ((_ is ElementMatch!16697) (reg!17026 (regTwo!33907 r!7292)))) b!6869102))

(assert (= (and b!6868317 ((_ is Concat!25542) (reg!17026 (regTwo!33907 r!7292)))) b!6869103))

(assert (= (and b!6868317 ((_ is Star!16697) (reg!17026 (regTwo!33907 r!7292)))) b!6869104))

(assert (= (and b!6868317 ((_ is Union!16697) (reg!17026 (regTwo!33907 r!7292)))) b!6869105))

(declare-fun b!6869108 () Bool)

(declare-fun e!4140715 () Bool)

(declare-fun tp!1885603 () Bool)

(assert (=> b!6869108 (= e!4140715 tp!1885603)))

(declare-fun b!6869109 () Bool)

(declare-fun tp!1885601 () Bool)

(declare-fun tp!1885602 () Bool)

(assert (=> b!6869109 (= e!4140715 (and tp!1885601 tp!1885602))))

(assert (=> b!6868316 (= tp!1885383 e!4140715)))

(declare-fun b!6869107 () Bool)

(declare-fun tp!1885599 () Bool)

(declare-fun tp!1885600 () Bool)

(assert (=> b!6869107 (= e!4140715 (and tp!1885599 tp!1885600))))

(declare-fun b!6869106 () Bool)

(assert (=> b!6869106 (= e!4140715 tp_is_empty!42647)))

(assert (= (and b!6868316 ((_ is ElementMatch!16697) (regOne!33906 (regTwo!33907 r!7292)))) b!6869106))

(assert (= (and b!6868316 ((_ is Concat!25542) (regOne!33906 (regTwo!33907 r!7292)))) b!6869107))

(assert (= (and b!6868316 ((_ is Star!16697) (regOne!33906 (regTwo!33907 r!7292)))) b!6869108))

(assert (= (and b!6868316 ((_ is Union!16697) (regOne!33906 (regTwo!33907 r!7292)))) b!6869109))

(declare-fun b!6869112 () Bool)

(declare-fun e!4140716 () Bool)

(declare-fun tp!1885608 () Bool)

(assert (=> b!6869112 (= e!4140716 tp!1885608)))

(declare-fun b!6869113 () Bool)

(declare-fun tp!1885606 () Bool)

(declare-fun tp!1885607 () Bool)

(assert (=> b!6869113 (= e!4140716 (and tp!1885606 tp!1885607))))

(assert (=> b!6868316 (= tp!1885384 e!4140716)))

(declare-fun b!6869111 () Bool)

(declare-fun tp!1885604 () Bool)

(declare-fun tp!1885605 () Bool)

(assert (=> b!6869111 (= e!4140716 (and tp!1885604 tp!1885605))))

(declare-fun b!6869110 () Bool)

(assert (=> b!6869110 (= e!4140716 tp_is_empty!42647)))

(assert (= (and b!6868316 ((_ is ElementMatch!16697) (regTwo!33906 (regTwo!33907 r!7292)))) b!6869110))

(assert (= (and b!6868316 ((_ is Concat!25542) (regTwo!33906 (regTwo!33907 r!7292)))) b!6869111))

(assert (= (and b!6868316 ((_ is Star!16697) (regTwo!33906 (regTwo!33907 r!7292)))) b!6869112))

(assert (= (and b!6868316 ((_ is Union!16697) (regTwo!33906 (regTwo!33907 r!7292)))) b!6869113))

(declare-fun b!6869116 () Bool)

(declare-fun e!4140717 () Bool)

(declare-fun tp!1885613 () Bool)

(assert (=> b!6869116 (= e!4140717 tp!1885613)))

(declare-fun b!6869117 () Bool)

(declare-fun tp!1885611 () Bool)

(declare-fun tp!1885612 () Bool)

(assert (=> b!6869117 (= e!4140717 (and tp!1885611 tp!1885612))))

(assert (=> b!6868325 (= tp!1885397 e!4140717)))

(declare-fun b!6869115 () Bool)

(declare-fun tp!1885609 () Bool)

(declare-fun tp!1885610 () Bool)

(assert (=> b!6869115 (= e!4140717 (and tp!1885609 tp!1885610))))

(declare-fun b!6869114 () Bool)

(assert (=> b!6869114 (= e!4140717 tp_is_empty!42647)))

(assert (= (and b!6868325 ((_ is ElementMatch!16697) (reg!17026 (regTwo!33906 r!7292)))) b!6869114))

(assert (= (and b!6868325 ((_ is Concat!25542) (reg!17026 (regTwo!33906 r!7292)))) b!6869115))

(assert (= (and b!6868325 ((_ is Star!16697) (reg!17026 (regTwo!33906 r!7292)))) b!6869116))

(assert (= (and b!6868325 ((_ is Union!16697) (reg!17026 (regTwo!33906 r!7292)))) b!6869117))

(declare-fun b!6869120 () Bool)

(declare-fun e!4140718 () Bool)

(declare-fun tp!1885618 () Bool)

(assert (=> b!6869120 (= e!4140718 tp!1885618)))

(declare-fun b!6869121 () Bool)

(declare-fun tp!1885616 () Bool)

(declare-fun tp!1885617 () Bool)

(assert (=> b!6869121 (= e!4140718 (and tp!1885616 tp!1885617))))

(assert (=> b!6868345 (= tp!1885413 e!4140718)))

(declare-fun b!6869119 () Bool)

(declare-fun tp!1885614 () Bool)

(declare-fun tp!1885615 () Bool)

(assert (=> b!6869119 (= e!4140718 (and tp!1885614 tp!1885615))))

(declare-fun b!6869118 () Bool)

(assert (=> b!6869118 (= e!4140718 tp_is_empty!42647)))

(assert (= (and b!6868345 ((_ is ElementMatch!16697) (h!72714 (exprs!6581 (h!72715 zl!343))))) b!6869118))

(assert (= (and b!6868345 ((_ is Concat!25542) (h!72714 (exprs!6581 (h!72715 zl!343))))) b!6869119))

(assert (= (and b!6868345 ((_ is Star!16697) (h!72714 (exprs!6581 (h!72715 zl!343))))) b!6869120))

(assert (= (and b!6868345 ((_ is Union!16697) (h!72714 (exprs!6581 (h!72715 zl!343))))) b!6869121))

(declare-fun b!6869122 () Bool)

(declare-fun e!4140719 () Bool)

(declare-fun tp!1885619 () Bool)

(declare-fun tp!1885620 () Bool)

(assert (=> b!6869122 (= e!4140719 (and tp!1885619 tp!1885620))))

(assert (=> b!6868345 (= tp!1885414 e!4140719)))

(assert (= (and b!6868345 ((_ is Cons!66266) (t!380133 (exprs!6581 (h!72715 zl!343))))) b!6869122))

(declare-fun b!6869125 () Bool)

(declare-fun e!4140720 () Bool)

(declare-fun tp!1885625 () Bool)

(assert (=> b!6869125 (= e!4140720 tp!1885625)))

(declare-fun b!6869126 () Bool)

(declare-fun tp!1885623 () Bool)

(declare-fun tp!1885624 () Bool)

(assert (=> b!6869126 (= e!4140720 (and tp!1885623 tp!1885624))))

(assert (=> b!6868324 (= tp!1885393 e!4140720)))

(declare-fun b!6869124 () Bool)

(declare-fun tp!1885621 () Bool)

(declare-fun tp!1885622 () Bool)

(assert (=> b!6869124 (= e!4140720 (and tp!1885621 tp!1885622))))

(declare-fun b!6869123 () Bool)

(assert (=> b!6869123 (= e!4140720 tp_is_empty!42647)))

(assert (= (and b!6868324 ((_ is ElementMatch!16697) (regOne!33906 (regTwo!33906 r!7292)))) b!6869123))

(assert (= (and b!6868324 ((_ is Concat!25542) (regOne!33906 (regTwo!33906 r!7292)))) b!6869124))

(assert (= (and b!6868324 ((_ is Star!16697) (regOne!33906 (regTwo!33906 r!7292)))) b!6869125))

(assert (= (and b!6868324 ((_ is Union!16697) (regOne!33906 (regTwo!33906 r!7292)))) b!6869126))

(declare-fun b!6869129 () Bool)

(declare-fun e!4140721 () Bool)

(declare-fun tp!1885630 () Bool)

(assert (=> b!6869129 (= e!4140721 tp!1885630)))

(declare-fun b!6869130 () Bool)

(declare-fun tp!1885628 () Bool)

(declare-fun tp!1885629 () Bool)

(assert (=> b!6869130 (= e!4140721 (and tp!1885628 tp!1885629))))

(assert (=> b!6868324 (= tp!1885394 e!4140721)))

(declare-fun b!6869128 () Bool)

(declare-fun tp!1885626 () Bool)

(declare-fun tp!1885627 () Bool)

(assert (=> b!6869128 (= e!4140721 (and tp!1885626 tp!1885627))))

(declare-fun b!6869127 () Bool)

(assert (=> b!6869127 (= e!4140721 tp_is_empty!42647)))

(assert (= (and b!6868324 ((_ is ElementMatch!16697) (regTwo!33906 (regTwo!33906 r!7292)))) b!6869127))

(assert (= (and b!6868324 ((_ is Concat!25542) (regTwo!33906 (regTwo!33906 r!7292)))) b!6869128))

(assert (= (and b!6868324 ((_ is Star!16697) (regTwo!33906 (regTwo!33906 r!7292)))) b!6869129))

(assert (= (and b!6868324 ((_ is Union!16697) (regTwo!33906 (regTwo!33906 r!7292)))) b!6869130))

(declare-fun b!6869131 () Bool)

(declare-fun e!4140722 () Bool)

(declare-fun tp!1885631 () Bool)

(declare-fun tp!1885632 () Bool)

(assert (=> b!6869131 (= e!4140722 (and tp!1885631 tp!1885632))))

(assert (=> b!6868334 (= tp!1885402 e!4140722)))

(assert (= (and b!6868334 ((_ is Cons!66266) (exprs!6581 (h!72715 (t!380134 zl!343))))) b!6869131))

(declare-fun b!6869134 () Bool)

(declare-fun e!4140723 () Bool)

(declare-fun tp!1885637 () Bool)

(assert (=> b!6869134 (= e!4140723 tp!1885637)))

(declare-fun b!6869135 () Bool)

(declare-fun tp!1885635 () Bool)

(declare-fun tp!1885636 () Bool)

(assert (=> b!6869135 (= e!4140723 (and tp!1885635 tp!1885636))))

(assert (=> b!6868318 (= tp!1885385 e!4140723)))

(declare-fun b!6869133 () Bool)

(declare-fun tp!1885633 () Bool)

(declare-fun tp!1885634 () Bool)

(assert (=> b!6869133 (= e!4140723 (and tp!1885633 tp!1885634))))

(declare-fun b!6869132 () Bool)

(assert (=> b!6869132 (= e!4140723 tp_is_empty!42647)))

(assert (= (and b!6868318 ((_ is ElementMatch!16697) (regOne!33907 (regTwo!33907 r!7292)))) b!6869132))

(assert (= (and b!6868318 ((_ is Concat!25542) (regOne!33907 (regTwo!33907 r!7292)))) b!6869133))

(assert (= (and b!6868318 ((_ is Star!16697) (regOne!33907 (regTwo!33907 r!7292)))) b!6869134))

(assert (= (and b!6868318 ((_ is Union!16697) (regOne!33907 (regTwo!33907 r!7292)))) b!6869135))

(declare-fun b!6869138 () Bool)

(declare-fun e!4140724 () Bool)

(declare-fun tp!1885642 () Bool)

(assert (=> b!6869138 (= e!4140724 tp!1885642)))

(declare-fun b!6869139 () Bool)

(declare-fun tp!1885640 () Bool)

(declare-fun tp!1885641 () Bool)

(assert (=> b!6869139 (= e!4140724 (and tp!1885640 tp!1885641))))

(assert (=> b!6868318 (= tp!1885386 e!4140724)))

(declare-fun b!6869137 () Bool)

(declare-fun tp!1885638 () Bool)

(declare-fun tp!1885639 () Bool)

(assert (=> b!6869137 (= e!4140724 (and tp!1885638 tp!1885639))))

(declare-fun b!6869136 () Bool)

(assert (=> b!6869136 (= e!4140724 tp_is_empty!42647)))

(assert (= (and b!6868318 ((_ is ElementMatch!16697) (regTwo!33907 (regTwo!33907 r!7292)))) b!6869136))

(assert (= (and b!6868318 ((_ is Concat!25542) (regTwo!33907 (regTwo!33907 r!7292)))) b!6869137))

(assert (= (and b!6868318 ((_ is Star!16697) (regTwo!33907 (regTwo!33907 r!7292)))) b!6869138))

(assert (= (and b!6868318 ((_ is Union!16697) (regTwo!33907 (regTwo!33907 r!7292)))) b!6869139))

(declare-fun b!6869142 () Bool)

(declare-fun e!4140725 () Bool)

(declare-fun tp!1885647 () Bool)

(assert (=> b!6869142 (= e!4140725 tp!1885647)))

(declare-fun b!6869143 () Bool)

(declare-fun tp!1885645 () Bool)

(declare-fun tp!1885646 () Bool)

(assert (=> b!6869143 (= e!4140725 (and tp!1885645 tp!1885646))))

(assert (=> b!6868339 (= tp!1885408 e!4140725)))

(declare-fun b!6869141 () Bool)

(declare-fun tp!1885643 () Bool)

(declare-fun tp!1885644 () Bool)

(assert (=> b!6869141 (= e!4140725 (and tp!1885643 tp!1885644))))

(declare-fun b!6869140 () Bool)

(assert (=> b!6869140 (= e!4140725 tp_is_empty!42647)))

(assert (= (and b!6868339 ((_ is ElementMatch!16697) (h!72714 (exprs!6581 setElem!47225)))) b!6869140))

(assert (= (and b!6868339 ((_ is Concat!25542) (h!72714 (exprs!6581 setElem!47225)))) b!6869141))

(assert (= (and b!6868339 ((_ is Star!16697) (h!72714 (exprs!6581 setElem!47225)))) b!6869142))

(assert (= (and b!6868339 ((_ is Union!16697) (h!72714 (exprs!6581 setElem!47225)))) b!6869143))

(declare-fun b!6869144 () Bool)

(declare-fun e!4140726 () Bool)

(declare-fun tp!1885648 () Bool)

(declare-fun tp!1885649 () Bool)

(assert (=> b!6869144 (= e!4140726 (and tp!1885648 tp!1885649))))

(assert (=> b!6868339 (= tp!1885409 e!4140726)))

(assert (= (and b!6868339 ((_ is Cons!66266) (t!380133 (exprs!6581 setElem!47225)))) b!6869144))

(declare-fun b!6869146 () Bool)

(declare-fun e!4140728 () Bool)

(declare-fun tp!1885650 () Bool)

(assert (=> b!6869146 (= e!4140728 tp!1885650)))

(declare-fun e!4140727 () Bool)

(declare-fun b!6869145 () Bool)

(declare-fun tp!1885651 () Bool)

(assert (=> b!6869145 (= e!4140727 (and (inv!84989 (h!72715 (t!380134 (t!380134 zl!343)))) e!4140728 tp!1885651))))

(assert (=> b!6868333 (= tp!1885403 e!4140727)))

(assert (= b!6869145 b!6869146))

(assert (= (and b!6868333 ((_ is Cons!66267) (t!380134 (t!380134 zl!343)))) b!6869145))

(declare-fun m!7600460 () Bool)

(assert (=> b!6869145 m!7600460))

(declare-fun b!6869149 () Bool)

(declare-fun e!4140729 () Bool)

(declare-fun tp!1885656 () Bool)

(assert (=> b!6869149 (= e!4140729 tp!1885656)))

(declare-fun b!6869150 () Bool)

(declare-fun tp!1885654 () Bool)

(declare-fun tp!1885655 () Bool)

(assert (=> b!6869150 (= e!4140729 (and tp!1885654 tp!1885655))))

(assert (=> b!6868348 (= tp!1885419 e!4140729)))

(declare-fun b!6869148 () Bool)

(declare-fun tp!1885652 () Bool)

(declare-fun tp!1885653 () Bool)

(assert (=> b!6869148 (= e!4140729 (and tp!1885652 tp!1885653))))

(declare-fun b!6869147 () Bool)

(assert (=> b!6869147 (= e!4140729 tp_is_empty!42647)))

(assert (= (and b!6868348 ((_ is ElementMatch!16697) (reg!17026 (reg!17026 r!7292)))) b!6869147))

(assert (= (and b!6868348 ((_ is Concat!25542) (reg!17026 (reg!17026 r!7292)))) b!6869148))

(assert (= (and b!6868348 ((_ is Star!16697) (reg!17026 (reg!17026 r!7292)))) b!6869149))

(assert (= (and b!6868348 ((_ is Union!16697) (reg!17026 (reg!17026 r!7292)))) b!6869150))

(declare-fun b!6869153 () Bool)

(declare-fun e!4140730 () Bool)

(declare-fun tp!1885661 () Bool)

(assert (=> b!6869153 (= e!4140730 tp!1885661)))

(declare-fun b!6869154 () Bool)

(declare-fun tp!1885659 () Bool)

(declare-fun tp!1885660 () Bool)

(assert (=> b!6869154 (= e!4140730 (and tp!1885659 tp!1885660))))

(assert (=> b!6868347 (= tp!1885415 e!4140730)))

(declare-fun b!6869152 () Bool)

(declare-fun tp!1885657 () Bool)

(declare-fun tp!1885658 () Bool)

(assert (=> b!6869152 (= e!4140730 (and tp!1885657 tp!1885658))))

(declare-fun b!6869151 () Bool)

(assert (=> b!6869151 (= e!4140730 tp_is_empty!42647)))

(assert (= (and b!6868347 ((_ is ElementMatch!16697) (regOne!33906 (reg!17026 r!7292)))) b!6869151))

(assert (= (and b!6868347 ((_ is Concat!25542) (regOne!33906 (reg!17026 r!7292)))) b!6869152))

(assert (= (and b!6868347 ((_ is Star!16697) (regOne!33906 (reg!17026 r!7292)))) b!6869153))

(assert (= (and b!6868347 ((_ is Union!16697) (regOne!33906 (reg!17026 r!7292)))) b!6869154))

(declare-fun b!6869157 () Bool)

(declare-fun e!4140731 () Bool)

(declare-fun tp!1885666 () Bool)

(assert (=> b!6869157 (= e!4140731 tp!1885666)))

(declare-fun b!6869158 () Bool)

(declare-fun tp!1885664 () Bool)

(declare-fun tp!1885665 () Bool)

(assert (=> b!6869158 (= e!4140731 (and tp!1885664 tp!1885665))))

(assert (=> b!6868347 (= tp!1885416 e!4140731)))

(declare-fun b!6869156 () Bool)

(declare-fun tp!1885662 () Bool)

(declare-fun tp!1885663 () Bool)

(assert (=> b!6869156 (= e!4140731 (and tp!1885662 tp!1885663))))

(declare-fun b!6869155 () Bool)

(assert (=> b!6869155 (= e!4140731 tp_is_empty!42647)))

(assert (= (and b!6868347 ((_ is ElementMatch!16697) (regTwo!33906 (reg!17026 r!7292)))) b!6869155))

(assert (= (and b!6868347 ((_ is Concat!25542) (regTwo!33906 (reg!17026 r!7292)))) b!6869156))

(assert (= (and b!6868347 ((_ is Star!16697) (regTwo!33906 (reg!17026 r!7292)))) b!6869157))

(assert (= (and b!6868347 ((_ is Union!16697) (regTwo!33906 (reg!17026 r!7292)))) b!6869158))

(declare-fun b!6869161 () Bool)

(declare-fun e!4140732 () Bool)

(declare-fun tp!1885671 () Bool)

(assert (=> b!6869161 (= e!4140732 tp!1885671)))

(declare-fun b!6869162 () Bool)

(declare-fun tp!1885669 () Bool)

(declare-fun tp!1885670 () Bool)

(assert (=> b!6869162 (= e!4140732 (and tp!1885669 tp!1885670))))

(assert (=> b!6868312 (= tp!1885378 e!4140732)))

(declare-fun b!6869160 () Bool)

(declare-fun tp!1885667 () Bool)

(declare-fun tp!1885668 () Bool)

(assert (=> b!6869160 (= e!4140732 (and tp!1885667 tp!1885668))))

(declare-fun b!6869159 () Bool)

(assert (=> b!6869159 (= e!4140732 tp_is_empty!42647)))

(assert (= (and b!6868312 ((_ is ElementMatch!16697) (regOne!33906 (regOne!33907 r!7292)))) b!6869159))

(assert (= (and b!6868312 ((_ is Concat!25542) (regOne!33906 (regOne!33907 r!7292)))) b!6869160))

(assert (= (and b!6868312 ((_ is Star!16697) (regOne!33906 (regOne!33907 r!7292)))) b!6869161))

(assert (= (and b!6868312 ((_ is Union!16697) (regOne!33906 (regOne!33907 r!7292)))) b!6869162))

(declare-fun b!6869165 () Bool)

(declare-fun e!4140733 () Bool)

(declare-fun tp!1885676 () Bool)

(assert (=> b!6869165 (= e!4140733 tp!1885676)))

(declare-fun b!6869166 () Bool)

(declare-fun tp!1885674 () Bool)

(declare-fun tp!1885675 () Bool)

(assert (=> b!6869166 (= e!4140733 (and tp!1885674 tp!1885675))))

(assert (=> b!6868312 (= tp!1885379 e!4140733)))

(declare-fun b!6869164 () Bool)

(declare-fun tp!1885672 () Bool)

(declare-fun tp!1885673 () Bool)

(assert (=> b!6869164 (= e!4140733 (and tp!1885672 tp!1885673))))

(declare-fun b!6869163 () Bool)

(assert (=> b!6869163 (= e!4140733 tp_is_empty!42647)))

(assert (= (and b!6868312 ((_ is ElementMatch!16697) (regTwo!33906 (regOne!33907 r!7292)))) b!6869163))

(assert (= (and b!6868312 ((_ is Concat!25542) (regTwo!33906 (regOne!33907 r!7292)))) b!6869164))

(assert (= (and b!6868312 ((_ is Star!16697) (regTwo!33906 (regOne!33907 r!7292)))) b!6869165))

(assert (= (and b!6868312 ((_ is Union!16697) (regTwo!33906 (regOne!33907 r!7292)))) b!6869166))

(declare-fun b!6869169 () Bool)

(declare-fun e!4140734 () Bool)

(declare-fun tp!1885681 () Bool)

(assert (=> b!6869169 (= e!4140734 tp!1885681)))

(declare-fun b!6869170 () Bool)

(declare-fun tp!1885679 () Bool)

(declare-fun tp!1885680 () Bool)

(assert (=> b!6869170 (= e!4140734 (and tp!1885679 tp!1885680))))

(assert (=> b!6868321 (= tp!1885392 e!4140734)))

(declare-fun b!6869168 () Bool)

(declare-fun tp!1885677 () Bool)

(declare-fun tp!1885678 () Bool)

(assert (=> b!6869168 (= e!4140734 (and tp!1885677 tp!1885678))))

(declare-fun b!6869167 () Bool)

(assert (=> b!6869167 (= e!4140734 tp_is_empty!42647)))

(assert (= (and b!6868321 ((_ is ElementMatch!16697) (reg!17026 (regOne!33906 r!7292)))) b!6869167))

(assert (= (and b!6868321 ((_ is Concat!25542) (reg!17026 (regOne!33906 r!7292)))) b!6869168))

(assert (= (and b!6868321 ((_ is Star!16697) (reg!17026 (regOne!33906 r!7292)))) b!6869169))

(assert (= (and b!6868321 ((_ is Union!16697) (reg!17026 (regOne!33906 r!7292)))) b!6869170))

(declare-fun b!6869173 () Bool)

(declare-fun e!4140735 () Bool)

(declare-fun tp!1885686 () Bool)

(assert (=> b!6869173 (= e!4140735 tp!1885686)))

(declare-fun b!6869174 () Bool)

(declare-fun tp!1885684 () Bool)

(declare-fun tp!1885685 () Bool)

(assert (=> b!6869174 (= e!4140735 (and tp!1885684 tp!1885685))))

(assert (=> b!6868320 (= tp!1885388 e!4140735)))

(declare-fun b!6869172 () Bool)

(declare-fun tp!1885682 () Bool)

(declare-fun tp!1885683 () Bool)

(assert (=> b!6869172 (= e!4140735 (and tp!1885682 tp!1885683))))

(declare-fun b!6869171 () Bool)

(assert (=> b!6869171 (= e!4140735 tp_is_empty!42647)))

(assert (= (and b!6868320 ((_ is ElementMatch!16697) (regOne!33906 (regOne!33906 r!7292)))) b!6869171))

(assert (= (and b!6868320 ((_ is Concat!25542) (regOne!33906 (regOne!33906 r!7292)))) b!6869172))

(assert (= (and b!6868320 ((_ is Star!16697) (regOne!33906 (regOne!33906 r!7292)))) b!6869173))

(assert (= (and b!6868320 ((_ is Union!16697) (regOne!33906 (regOne!33906 r!7292)))) b!6869174))

(declare-fun b!6869177 () Bool)

(declare-fun e!4140736 () Bool)

(declare-fun tp!1885691 () Bool)

(assert (=> b!6869177 (= e!4140736 tp!1885691)))

(declare-fun b!6869178 () Bool)

(declare-fun tp!1885689 () Bool)

(declare-fun tp!1885690 () Bool)

(assert (=> b!6869178 (= e!4140736 (and tp!1885689 tp!1885690))))

(assert (=> b!6868320 (= tp!1885389 e!4140736)))

(declare-fun b!6869176 () Bool)

(declare-fun tp!1885687 () Bool)

(declare-fun tp!1885688 () Bool)

(assert (=> b!6869176 (= e!4140736 (and tp!1885687 tp!1885688))))

(declare-fun b!6869175 () Bool)

(assert (=> b!6869175 (= e!4140736 tp_is_empty!42647)))

(assert (= (and b!6868320 ((_ is ElementMatch!16697) (regTwo!33906 (regOne!33906 r!7292)))) b!6869175))

(assert (= (and b!6868320 ((_ is Concat!25542) (regTwo!33906 (regOne!33906 r!7292)))) b!6869176))

(assert (= (and b!6868320 ((_ is Star!16697) (regTwo!33906 (regOne!33906 r!7292)))) b!6869177))

(assert (= (and b!6868320 ((_ is Union!16697) (regTwo!33906 (regOne!33906 r!7292)))) b!6869178))

(declare-fun b!6869181 () Bool)

(declare-fun e!4140737 () Bool)

(declare-fun tp!1885696 () Bool)

(assert (=> b!6869181 (= e!4140737 tp!1885696)))

(declare-fun b!6869182 () Bool)

(declare-fun tp!1885694 () Bool)

(declare-fun tp!1885695 () Bool)

(assert (=> b!6869182 (= e!4140737 (and tp!1885694 tp!1885695))))

(assert (=> b!6868349 (= tp!1885417 e!4140737)))

(declare-fun b!6869180 () Bool)

(declare-fun tp!1885692 () Bool)

(declare-fun tp!1885693 () Bool)

(assert (=> b!6869180 (= e!4140737 (and tp!1885692 tp!1885693))))

(declare-fun b!6869179 () Bool)

(assert (=> b!6869179 (= e!4140737 tp_is_empty!42647)))

(assert (= (and b!6868349 ((_ is ElementMatch!16697) (regOne!33907 (reg!17026 r!7292)))) b!6869179))

(assert (= (and b!6868349 ((_ is Concat!25542) (regOne!33907 (reg!17026 r!7292)))) b!6869180))

(assert (= (and b!6868349 ((_ is Star!16697) (regOne!33907 (reg!17026 r!7292)))) b!6869181))

(assert (= (and b!6868349 ((_ is Union!16697) (regOne!33907 (reg!17026 r!7292)))) b!6869182))

(declare-fun b!6869185 () Bool)

(declare-fun e!4140738 () Bool)

(declare-fun tp!1885701 () Bool)

(assert (=> b!6869185 (= e!4140738 tp!1885701)))

(declare-fun b!6869186 () Bool)

(declare-fun tp!1885699 () Bool)

(declare-fun tp!1885700 () Bool)

(assert (=> b!6869186 (= e!4140738 (and tp!1885699 tp!1885700))))

(assert (=> b!6868349 (= tp!1885418 e!4140738)))

(declare-fun b!6869184 () Bool)

(declare-fun tp!1885697 () Bool)

(declare-fun tp!1885698 () Bool)

(assert (=> b!6869184 (= e!4140738 (and tp!1885697 tp!1885698))))

(declare-fun b!6869183 () Bool)

(assert (=> b!6869183 (= e!4140738 tp_is_empty!42647)))

(assert (= (and b!6868349 ((_ is ElementMatch!16697) (regTwo!33907 (reg!17026 r!7292)))) b!6869183))

(assert (= (and b!6868349 ((_ is Concat!25542) (regTwo!33907 (reg!17026 r!7292)))) b!6869184))

(assert (= (and b!6868349 ((_ is Star!16697) (regTwo!33907 (reg!17026 r!7292)))) b!6869185))

(assert (= (and b!6868349 ((_ is Union!16697) (regTwo!33907 (reg!17026 r!7292)))) b!6869186))

(declare-fun b!6869189 () Bool)

(declare-fun e!4140739 () Bool)

(declare-fun tp!1885706 () Bool)

(assert (=> b!6869189 (= e!4140739 tp!1885706)))

(declare-fun b!6869190 () Bool)

(declare-fun tp!1885704 () Bool)

(declare-fun tp!1885705 () Bool)

(assert (=> b!6869190 (= e!4140739 (and tp!1885704 tp!1885705))))

(assert (=> b!6868314 (= tp!1885380 e!4140739)))

(declare-fun b!6869188 () Bool)

(declare-fun tp!1885702 () Bool)

(declare-fun tp!1885703 () Bool)

(assert (=> b!6869188 (= e!4140739 (and tp!1885702 tp!1885703))))

(declare-fun b!6869187 () Bool)

(assert (=> b!6869187 (= e!4140739 tp_is_empty!42647)))

(assert (= (and b!6868314 ((_ is ElementMatch!16697) (regOne!33907 (regOne!33907 r!7292)))) b!6869187))

(assert (= (and b!6868314 ((_ is Concat!25542) (regOne!33907 (regOne!33907 r!7292)))) b!6869188))

(assert (= (and b!6868314 ((_ is Star!16697) (regOne!33907 (regOne!33907 r!7292)))) b!6869189))

(assert (= (and b!6868314 ((_ is Union!16697) (regOne!33907 (regOne!33907 r!7292)))) b!6869190))

(declare-fun b!6869193 () Bool)

(declare-fun e!4140740 () Bool)

(declare-fun tp!1885711 () Bool)

(assert (=> b!6869193 (= e!4140740 tp!1885711)))

(declare-fun b!6869194 () Bool)

(declare-fun tp!1885709 () Bool)

(declare-fun tp!1885710 () Bool)

(assert (=> b!6869194 (= e!4140740 (and tp!1885709 tp!1885710))))

(assert (=> b!6868314 (= tp!1885381 e!4140740)))

(declare-fun b!6869192 () Bool)

(declare-fun tp!1885707 () Bool)

(declare-fun tp!1885708 () Bool)

(assert (=> b!6869192 (= e!4140740 (and tp!1885707 tp!1885708))))

(declare-fun b!6869191 () Bool)

(assert (=> b!6869191 (= e!4140740 tp_is_empty!42647)))

(assert (= (and b!6868314 ((_ is ElementMatch!16697) (regTwo!33907 (regOne!33907 r!7292)))) b!6869191))

(assert (= (and b!6868314 ((_ is Concat!25542) (regTwo!33907 (regOne!33907 r!7292)))) b!6869192))

(assert (= (and b!6868314 ((_ is Star!16697) (regTwo!33907 (regOne!33907 r!7292)))) b!6869193))

(assert (= (and b!6868314 ((_ is Union!16697) (regTwo!33907 (regOne!33907 r!7292)))) b!6869194))

(declare-fun b!6869197 () Bool)

(declare-fun e!4140741 () Bool)

(declare-fun tp!1885716 () Bool)

(assert (=> b!6869197 (= e!4140741 tp!1885716)))

(declare-fun b!6869198 () Bool)

(declare-fun tp!1885714 () Bool)

(declare-fun tp!1885715 () Bool)

(assert (=> b!6869198 (= e!4140741 (and tp!1885714 tp!1885715))))

(assert (=> b!6868322 (= tp!1885390 e!4140741)))

(declare-fun b!6869196 () Bool)

(declare-fun tp!1885712 () Bool)

(declare-fun tp!1885713 () Bool)

(assert (=> b!6869196 (= e!4140741 (and tp!1885712 tp!1885713))))

(declare-fun b!6869195 () Bool)

(assert (=> b!6869195 (= e!4140741 tp_is_empty!42647)))

(assert (= (and b!6868322 ((_ is ElementMatch!16697) (regOne!33907 (regOne!33906 r!7292)))) b!6869195))

(assert (= (and b!6868322 ((_ is Concat!25542) (regOne!33907 (regOne!33906 r!7292)))) b!6869196))

(assert (= (and b!6868322 ((_ is Star!16697) (regOne!33907 (regOne!33906 r!7292)))) b!6869197))

(assert (= (and b!6868322 ((_ is Union!16697) (regOne!33907 (regOne!33906 r!7292)))) b!6869198))

(declare-fun b!6869201 () Bool)

(declare-fun e!4140742 () Bool)

(declare-fun tp!1885721 () Bool)

(assert (=> b!6869201 (= e!4140742 tp!1885721)))

(declare-fun b!6869202 () Bool)

(declare-fun tp!1885719 () Bool)

(declare-fun tp!1885720 () Bool)

(assert (=> b!6869202 (= e!4140742 (and tp!1885719 tp!1885720))))

(assert (=> b!6868322 (= tp!1885391 e!4140742)))

(declare-fun b!6869200 () Bool)

(declare-fun tp!1885717 () Bool)

(declare-fun tp!1885718 () Bool)

(assert (=> b!6869200 (= e!4140742 (and tp!1885717 tp!1885718))))

(declare-fun b!6869199 () Bool)

(assert (=> b!6869199 (= e!4140742 tp_is_empty!42647)))

(assert (= (and b!6868322 ((_ is ElementMatch!16697) (regTwo!33907 (regOne!33906 r!7292)))) b!6869199))

(assert (= (and b!6868322 ((_ is Concat!25542) (regTwo!33907 (regOne!33906 r!7292)))) b!6869200))

(assert (= (and b!6868322 ((_ is Star!16697) (regTwo!33907 (regOne!33906 r!7292)))) b!6869201))

(assert (= (and b!6868322 ((_ is Union!16697) (regTwo!33907 (regOne!33906 r!7292)))) b!6869202))

(declare-fun b!6869205 () Bool)

(declare-fun e!4140743 () Bool)

(declare-fun tp!1885726 () Bool)

(assert (=> b!6869205 (= e!4140743 tp!1885726)))

(declare-fun b!6869206 () Bool)

(declare-fun tp!1885724 () Bool)

(declare-fun tp!1885725 () Bool)

(assert (=> b!6869206 (= e!4140743 (and tp!1885724 tp!1885725))))

(assert (=> b!6868313 (= tp!1885382 e!4140743)))

(declare-fun b!6869204 () Bool)

(declare-fun tp!1885722 () Bool)

(declare-fun tp!1885723 () Bool)

(assert (=> b!6869204 (= e!4140743 (and tp!1885722 tp!1885723))))

(declare-fun b!6869203 () Bool)

(assert (=> b!6869203 (= e!4140743 tp_is_empty!42647)))

(assert (= (and b!6868313 ((_ is ElementMatch!16697) (reg!17026 (regOne!33907 r!7292)))) b!6869203))

(assert (= (and b!6868313 ((_ is Concat!25542) (reg!17026 (regOne!33907 r!7292)))) b!6869204))

(assert (= (and b!6868313 ((_ is Star!16697) (reg!17026 (regOne!33907 r!7292)))) b!6869205))

(assert (= (and b!6868313 ((_ is Union!16697) (reg!17026 (regOne!33907 r!7292)))) b!6869206))

(declare-fun condSetEmpty!47233 () Bool)

(assert (=> setNonEmpty!47231 (= condSetEmpty!47233 (= setRest!47231 ((as const (Array Context!12162 Bool)) false)))))

(declare-fun setRes!47233 () Bool)

(assert (=> setNonEmpty!47231 (= tp!1885366 setRes!47233)))

(declare-fun setIsEmpty!47233 () Bool)

(assert (=> setIsEmpty!47233 setRes!47233))

(declare-fun setElem!47233 () Context!12162)

(declare-fun tp!1885727 () Bool)

(declare-fun e!4140744 () Bool)

(declare-fun setNonEmpty!47233 () Bool)

(assert (=> setNonEmpty!47233 (= setRes!47233 (and tp!1885727 (inv!84989 setElem!47233) e!4140744))))

(declare-fun setRest!47233 () (InoxSet Context!12162))

(assert (=> setNonEmpty!47233 (= setRest!47231 ((_ map or) (store ((as const (Array Context!12162 Bool)) false) setElem!47233 true) setRest!47233))))

(declare-fun b!6869207 () Bool)

(declare-fun tp!1885728 () Bool)

(assert (=> b!6869207 (= e!4140744 tp!1885728)))

(assert (= (and setNonEmpty!47231 condSetEmpty!47233) setIsEmpty!47233))

(assert (= (and setNonEmpty!47231 (not condSetEmpty!47233)) setNonEmpty!47233))

(assert (= setNonEmpty!47233 b!6869207))

(declare-fun m!7600462 () Bool)

(assert (=> setNonEmpty!47233 m!7600462))

(declare-fun b!6869208 () Bool)

(declare-fun e!4140745 () Bool)

(declare-fun tp!1885729 () Bool)

(assert (=> b!6869208 (= e!4140745 (and tp_is_empty!42647 tp!1885729))))

(assert (=> b!6868344 (= tp!1885412 e!4140745)))

(assert (= (and b!6868344 ((_ is Cons!66268) (t!380135 (t!380135 s!2326)))) b!6869208))

(declare-fun b!6869209 () Bool)

(declare-fun e!4140746 () Bool)

(declare-fun tp!1885730 () Bool)

(declare-fun tp!1885731 () Bool)

(assert (=> b!6869209 (= e!4140746 (and tp!1885730 tp!1885731))))

(assert (=> b!6868300 (= tp!1885367 e!4140746)))

(assert (= (and b!6868300 ((_ is Cons!66266) (exprs!6581 setElem!47231))) b!6869209))

(declare-fun b_lambda!259865 () Bool)

(assert (= b_lambda!259845 (or d!2157582 b_lambda!259865)))

(declare-fun bs!1836223 () Bool)

(declare-fun d!2157908 () Bool)

(assert (= bs!1836223 (and d!2157908 d!2157582)))

(assert (=> bs!1836223 (= (dynLambda!26529 lambda!388641 (h!72714 (exprs!6581 (h!72715 zl!343)))) (validRegex!8433 (h!72714 (exprs!6581 (h!72715 zl!343)))))))

(declare-fun m!7600464 () Bool)

(assert (=> bs!1836223 m!7600464))

(assert (=> b!6868975 d!2157908))

(declare-fun b_lambda!259867 () Bool)

(assert (= b_lambda!259851 (or b!6867794 b_lambda!259867)))

(declare-fun bs!1836224 () Bool)

(declare-fun d!2157910 () Bool)

(assert (= bs!1836224 (and d!2157910 b!6867794)))

(assert (=> bs!1836224 (= (dynLambda!26530 lambda!388572 (h!72715 (t!380134 zl!343))) (matchZipper!2663 (store ((as const (Array Context!12162 Bool)) false) (h!72715 (t!380134 zl!343)) true) s!2326))))

(declare-fun m!7600466 () Bool)

(assert (=> bs!1836224 m!7600466))

(assert (=> bs!1836224 m!7600466))

(declare-fun m!7600468 () Bool)

(assert (=> bs!1836224 m!7600468))

(assert (=> b!6869008 d!2157910))

(declare-fun b_lambda!259869 () Bool)

(assert (= b_lambda!259853 (or b!6867794 b_lambda!259869)))

(declare-fun bs!1836225 () Bool)

(declare-fun d!2157912 () Bool)

(assert (= bs!1836225 (and d!2157912 b!6867794)))

(assert (=> bs!1836225 (= (dynLambda!26530 lambda!388572 lt!2458179) (matchZipper!2663 (store ((as const (Array Context!12162 Bool)) false) lt!2458179 true) s!2326))))

(declare-fun m!7600470 () Bool)

(assert (=> bs!1836225 m!7600470))

(assert (=> bs!1836225 m!7600470))

(declare-fun m!7600472 () Bool)

(assert (=> bs!1836225 m!7600472))

(assert (=> d!2157852 d!2157912))

(declare-fun b_lambda!259871 () Bool)

(assert (= b_lambda!259843 (or d!2157576 b_lambda!259871)))

(declare-fun bs!1836226 () Bool)

(declare-fun d!2157914 () Bool)

(assert (= bs!1836226 (and d!2157914 d!2157576)))

(assert (=> bs!1836226 (= (dynLambda!26529 lambda!388631 (h!72714 lt!2458035)) (not (dynLambda!26529 lambda!388571 (h!72714 lt!2458035))))))

(declare-fun b_lambda!259887 () Bool)

(assert (=> (not b_lambda!259887) (not bs!1836226)))

(declare-fun m!7600474 () Bool)

(assert (=> bs!1836226 m!7600474))

(assert (=> b!6868944 d!2157914))

(declare-fun b_lambda!259873 () Bool)

(assert (= b_lambda!259855 (or d!2157556 b_lambda!259873)))

(declare-fun bs!1836227 () Bool)

(declare-fun d!2157916 () Bool)

(assert (= bs!1836227 (and d!2157916 d!2157556)))

(assert (=> bs!1836227 (= (dynLambda!26530 lambda!388622 (h!72715 zl!343)) (not (dynLambda!26530 lambda!388572 (h!72715 zl!343))))))

(declare-fun b_lambda!259889 () Bool)

(assert (=> (not b_lambda!259889) (not bs!1836227)))

(assert (=> bs!1836227 m!7599666))

(assert (=> b!6869036 d!2157916))

(declare-fun b_lambda!259875 () Bool)

(assert (= b_lambda!259859 (or d!2157564 b_lambda!259875)))

(declare-fun bs!1836228 () Bool)

(declare-fun d!2157918 () Bool)

(assert (= bs!1836228 (and d!2157918 d!2157564)))

(assert (=> bs!1836228 (= (dynLambda!26529 lambda!388628 (h!72714 (exprs!6581 lt!2458040))) (validRegex!8433 (h!72714 (exprs!6581 lt!2458040))))))

(assert (=> bs!1836228 m!7599770))

(assert (=> b!6869049 d!2157918))

(declare-fun b_lambda!259877 () Bool)

(assert (= b_lambda!259857 (or d!2157550 b_lambda!259877)))

(declare-fun bs!1836229 () Bool)

(declare-fun d!2157920 () Bool)

(assert (= bs!1836229 (and d!2157920 d!2157550)))

(assert (=> bs!1836229 (= (dynLambda!26529 lambda!388619 (h!72714 (exprs!6581 lt!2458040))) (validRegex!8433 (h!72714 (exprs!6581 lt!2458040))))))

(assert (=> bs!1836229 m!7599770))

(assert (=> b!6869038 d!2157920))

(declare-fun b_lambda!259879 () Bool)

(assert (= b_lambda!259849 (or b!6867793 b_lambda!259879)))

(declare-fun bs!1836230 () Bool)

(declare-fun d!2157922 () Bool)

(assert (= bs!1836230 (and d!2157922 b!6867793)))

(assert (=> bs!1836230 (= (dynLambda!26529 lambda!388573 (h!72714 (t!380133 (exprs!6581 lt!2458040)))) (validRegex!8433 (h!72714 (t!380133 (exprs!6581 lt!2458040)))))))

(declare-fun m!7600476 () Bool)

(assert (=> bs!1836230 m!7600476))

(assert (=> b!6869006 d!2157922))

(declare-fun b_lambda!259881 () Bool)

(assert (= b_lambda!259863 (or d!2157578 b_lambda!259881)))

(declare-fun bs!1836231 () Bool)

(declare-fun d!2157924 () Bool)

(assert (= bs!1836231 (and d!2157924 d!2157578)))

(assert (=> bs!1836231 (= (dynLambda!26529 lambda!388636 (h!72714 lt!2458035)) (validRegex!8433 (h!72714 lt!2458035)))))

(declare-fun m!7600478 () Bool)

(assert (=> bs!1836231 m!7600478))

(assert (=> b!6869092 d!2157924))

(declare-fun b_lambda!259883 () Bool)

(assert (= b_lambda!259847 (or d!2157580 b_lambda!259883)))

(declare-fun bs!1836232 () Bool)

(declare-fun d!2157926 () Bool)

(assert (= bs!1836232 (and d!2157926 d!2157580)))

(assert (=> bs!1836232 (= (dynLambda!26529 lambda!388640 (h!72714 lt!2458134)) (validRegex!8433 (h!72714 lt!2458134)))))

(declare-fun m!7600480 () Bool)

(assert (=> bs!1836232 m!7600480))

(assert (=> b!6868998 d!2157926))

(declare-fun b_lambda!259885 () Bool)

(assert (= b_lambda!259861 (or d!2157534 b_lambda!259885)))

(declare-fun bs!1836233 () Bool)

(declare-fun d!2157928 () Bool)

(assert (= bs!1836233 (and d!2157928 d!2157534)))

(assert (=> bs!1836233 (= (dynLambda!26529 lambda!388616 (h!72714 (exprs!6581 setElem!47225))) (validRegex!8433 (h!72714 (exprs!6581 setElem!47225))))))

(declare-fun m!7600482 () Bool)

(assert (=> bs!1836233 m!7600482))

(assert (=> b!6869062 d!2157928))

(check-sat (not b!6869172) (not bs!1836233) (not b!6869139) (not b!6869103) (not b_lambda!259875) (not bm!625633) (not b!6869026) (not d!2157900) (not b!6869152) (not b!6869173) (not b!6869095) (not b!6869109) (not b!6868936) (not d!2157844) (not b!6868940) (not b!6869022) (not b!6869007) (not b!6869061) (not bm!625641) (not b!6868842) (not b!6868804) (not b!6868855) (not b!6868961) (not b!6869117) (not b!6868835) (not b!6869142) (not d!2157766) tp_is_empty!42647 (not bm!625626) (not bm!625610) (not b!6869113) (not d!2157774) (not b!6868814) (not b!6869050) (not b!6869030) (not b!6869185) (not b!6868932) (not b!6869150) (not bs!1836224) (not bm!625635) (not b!6868937) (not d!2157854) (not b!6869105) (not b!6869087) (not b!6869101) (not d!2157850) (not bm!625643) (not bm!625648) (not b!6868986) (not b!6869031) (not b!6869063) (not b!6868956) (not b!6869176) (not bm!625605) (not b!6869128) (not b!6868839) (not b!6869076) (not bm!625637) (not d!2157866) (not b!6868958) (not d!2157822) (not b!6869129) (not b!6869198) (not d!2157818) (not b!6869025) (not b!6869192) (not bs!1836223) (not b_lambda!259879) (not bm!625621) (not b!6869143) (not d!2157806) (not bm!625632) (not b!6869121) (not b!6869208) (not b!6869138) (not d!2157890) (not b_lambda!259889) (not b!6869141) (not bm!625623) (not bm!625611) (not b!6868885) (not b!6869039) (not b_lambda!259793) (not b!6868954) (not b!6869201) (not b!6869144) (not d!2157808) (not d!2157852) (not bm!625644) (not b!6869200) (not bm!625627) (not b!6869014) (not b!6869115) (not b!6869170) (not b_lambda!259885) (not b!6869190) (not b!6869145) (not d!2157836) (not b!6869153) (not b!6869164) (not b!6869177) (not b!6869010) (not b!6869182) (not b!6869116) (not b!6868999) (not b!6869015) (not b!6869181) (not b!6868994) (not b_lambda!259883) (not b!6869134) (not b!6869135) (not d!2157788) (not b!6868843) (not setNonEmpty!47233) (not b!6868957) (not bm!625634) (not b!6868939) (not b!6868996) (not b!6869119) (not b_lambda!259865) (not bs!1836231) (not bm!625630) (not b!6869205) (not b!6868972) (not bs!1836228) (not b!6869154) (not d!2157776) (not bs!1836229) (not b!6869180) (not bm!625629) (not bm!625645) (not b!6869112) (not b!6868848) (not d!2157794) (not b!6869024) (not b!6869097) (not b!6869108) (not b!6869107) (not b!6869099) (not b!6869037) (not b!6868945) (not b!6868893) (not b_lambda!259871) (not b!6869146) (not b!6869160) (not b!6869184) (not b!6869124) (not b!6869005) (not d!2157878) (not b!6868938) (not b!6869148) (not b!6868988) (not d!2157838) (not d!2157820) (not b!6869169) (not b!6868969) (not b!6868902) (not b!6868942) (not d!2157856) (not b!6869122) (not b!6869073) (not b!6868905) (not b!6869157) (not b!6869161) (not b!6868935) (not b!6868963) (not b!6869012) (not b!6869133) (not b_lambda!259791) (not d!2157796) (not b!6869174) (not bm!625646) (not b!6869009) (not b!6869158) (not b!6869209) (not b!6869207) (not b!6869027) (not b!6868838) (not b!6869104) (not b!6869189) (not b!6869064) (not b!6869131) (not b!6869168) (not b!6869204) (not b_lambda!259873) (not bm!625607) (not bm!625638) (not b!6869130) (not b!6869186) (not b!6869120) (not b!6869178) (not d!2157880) (not bm!625608) (not b!6868959) (not b!6869194) (not d!2157792) (not b_lambda!259867) (not b!6869089) (not d!2157772) (not b!6869125) (not b!6869149) (not b!6869197) (not b!6868854) (not b_lambda!259881) (not b!6868851) (not b!6869193) (not bs!1836230) (not b!6868857) (not b!6868913) (not b!6868990) (not b!6868960) (not b!6868894) (not b_lambda!259877) (not b!6868976) (not b!6869196) (not b!6868995) (not bs!1836225) (not b!6868903) (not b!6869093) (not b!6868856) (not b!6869096) (not b!6868931) (not d!2157816) (not b!6869202) (not b!6869206) (not d!2157904) (not d!2157858) (not b!6868911) (not b!6869048) (not b_lambda!259789) (not b!6869165) (not b!6869066) (not b!6869100) (not b!6869018) (not b_lambda!259869) (not d!2157872) (not b!6869020) (not b_lambda!259887) (not b!6868955) (not b!6868922) (not bs!1836232) (not b!6868991) (not d!2157834) (not b!6869166) (not b!6869162) (not b!6868840) (not b!6868901) (not b!6868989) (not b!6868904) (not b!6869137) (not b!6869156) (not bm!625640) (not b!6868841) (not b!6869111) (not b!6869188) (not b!6868985) (not d!2157902) (not bm!625624) (not b!6869052) (not d!2157786) (not b!6869088) (not b!6869126))
(check-sat)
(get-model)

(declare-fun b_lambda!259895 () Bool)

(assert (= b_lambda!259887 (or b!6867798 b_lambda!259895)))

(declare-fun bs!1836235 () Bool)

(declare-fun d!2157932 () Bool)

(assert (= bs!1836235 (and d!2157932 b!6867798)))

(declare-fun res!2801748 () Bool)

(declare-fun e!4140748 () Bool)

(assert (=> bs!1836235 (=> (not res!2801748) (not e!4140748))))

(assert (=> bs!1836235 (= res!2801748 (validRegex!8433 (h!72714 lt!2458035)))))

(assert (=> bs!1836235 (= (dynLambda!26529 lambda!388571 (h!72714 lt!2458035)) e!4140748)))

(declare-fun b!6869211 () Bool)

(assert (=> b!6869211 (= e!4140748 (matchR!8880 (h!72714 lt!2458035) s!2326))))

(assert (= (and bs!1836235 res!2801748) b!6869211))

(assert (=> bs!1836235 m!7600478))

(declare-fun m!7600486 () Bool)

(assert (=> b!6869211 m!7600486))

(assert (=> bs!1836226 d!2157932))

(declare-fun b_lambda!259897 () Bool)

(assert (= b_lambda!259889 (or b!6867794 b_lambda!259897)))

(assert (=> bs!1836227 d!2157586))

(check-sat (not b!6869172) (not bs!1836233) (not b!6869139) (not b!6869103) (not b_lambda!259875) (not bm!625633) (not b!6869026) (not d!2157900) (not b!6869152) (not b_lambda!259897) (not b!6869173) (not b!6869095) (not b!6869109) (not b!6868936) (not d!2157844) (not b!6868940) (not b!6869022) (not b!6869007) (not b!6869061) (not bm!625641) (not b!6868842) (not b!6868804) (not b!6868855) (not b!6868961) (not b!6869117) (not b!6868835) (not b!6869142) (not d!2157766) tp_is_empty!42647 (not bm!625626) (not bm!625610) (not b!6869113) (not d!2157774) (not b!6868814) (not b!6869050) (not b!6869030) (not b!6869185) (not b!6868932) (not b!6869150) (not bs!1836224) (not bm!625635) (not b!6868937) (not d!2157854) (not b!6869105) (not b!6869087) (not b!6869101) (not d!2157850) (not bm!625643) (not bm!625648) (not b!6868986) (not b!6869031) (not b!6869063) (not b!6868956) (not b!6869176) (not bm!625605) (not b!6869128) (not b!6868839) (not b!6869076) (not bm!625637) (not d!2157866) (not b!6868958) (not d!2157822) (not b!6869129) (not b!6869198) (not d!2157818) (not b!6869025) (not b!6869192) (not bs!1836223) (not b_lambda!259879) (not bm!625621) (not b!6869141) (not b!6869143) (not d!2157806) (not bm!625632) (not b!6869121) (not b!6869208) (not b!6869138) (not d!2157890) (not bm!625623) (not bm!625611) (not b!6868885) (not b!6869039) (not b_lambda!259793) (not b!6868954) (not b!6869201) (not b!6869144) (not d!2157808) (not d!2157852) (not bm!625644) (not b!6869200) (not bm!625627) (not b!6869014) (not b!6869115) (not b!6869170) (not b_lambda!259885) (not b_lambda!259895) (not b!6869190) (not b!6869145) (not d!2157836) (not b!6869153) (not b!6869164) (not b!6869177) (not b!6869010) (not b!6869182) (not b!6869116) (not b!6868999) (not b!6869015) (not b!6869181) (not b!6868994) (not b_lambda!259883) (not b!6869135) (not d!2157788) (not b!6869211) (not b!6869134) (not b!6868843) (not setNonEmpty!47233) (not b!6868957) (not bm!625634) (not b!6868939) (not b!6868996) (not b!6869119) (not b_lambda!259865) (not bs!1836231) (not bm!625630) (not b!6869205) (not b!6868972) (not bs!1836228) (not b!6869154) (not d!2157776) (not bs!1836229) (not b!6869180) (not bm!625629) (not bm!625645) (not b!6869112) (not b!6868848) (not d!2157794) (not b!6869024) (not b!6869097) (not b!6869108) (not b!6869107) (not b!6869099) (not b!6869037) (not b!6868945) (not b!6868893) (not b_lambda!259871) (not b!6869146) (not b!6869160) (not b!6869184) (not b!6869124) (not b!6869005) (not d!2157878) (not b!6868938) (not b!6869148) (not b!6868988) (not d!2157838) (not d!2157820) (not b!6869169) (not b!6868969) (not b!6868902) (not b!6868942) (not d!2157856) (not b!6869122) (not b!6869073) (not b!6868905) (not b!6869157) (not b!6869161) (not b!6868935) (not b!6868963) (not b!6869012) (not b!6869133) (not b_lambda!259791) (not d!2157796) (not b!6869174) (not bm!625646) (not b!6869009) (not b!6869158) (not b!6869209) (not b!6869207) (not b!6869027) (not b!6868838) (not b!6869104) (not b!6869189) (not b!6869064) (not b!6869131) (not b!6869168) (not b!6869204) (not b_lambda!259873) (not bm!625607) (not bm!625638) (not b!6869130) (not b!6869186) (not b!6869120) (not b!6869178) (not d!2157880) (not bm!625608) (not b!6868959) (not b!6869194) (not d!2157792) (not b_lambda!259867) (not bs!1836235) (not b!6869089) (not d!2157772) (not b!6869125) (not b!6869149) (not b!6869197) (not b!6868854) (not b_lambda!259881) (not b!6868851) (not b!6869193) (not bs!1836230) (not b!6868857) (not b!6868913) (not b!6868990) (not b!6868960) (not b!6868894) (not b_lambda!259877) (not b!6868976) (not b!6869196) (not b!6868995) (not bs!1836225) (not b!6868903) (not b!6869093) (not b!6868856) (not b!6869096) (not b!6868931) (not d!2157816) (not b!6869202) (not b!6869206) (not d!2157904) (not d!2157858) (not b!6868911) (not b!6869048) (not b_lambda!259789) (not b!6869165) (not b!6869066) (not b!6869100) (not b!6869018) (not b_lambda!259869) (not d!2157872) (not b!6869020) (not b!6868955) (not b!6868922) (not bs!1836232) (not b!6868991) (not d!2157834) (not b!6869166) (not b!6869162) (not b!6868840) (not b!6868901) (not b!6868989) (not b!6868904) (not b!6869137) (not b!6869156) (not bm!625640) (not b!6868841) (not b!6869111) (not b!6869188) (not b!6868985) (not d!2157902) (not bm!625624) (not b!6869052) (not d!2157786) (not b!6869088) (not b!6869126))
(check-sat)
(get-model)

(declare-fun d!2157992 () Bool)

(declare-fun res!2801811 () Bool)

(declare-fun e!4140836 () Bool)

(assert (=> d!2157992 (=> res!2801811 e!4140836)))

(assert (=> d!2157992 (= res!2801811 ((_ is Nil!66266) (t!380133 (exprs!6581 (h!72715 zl!343)))))))

(assert (=> d!2157992 (= (forall!15890 (t!380133 (exprs!6581 (h!72715 zl!343))) lambda!388641) e!4140836)))

(declare-fun b!6869335 () Bool)

(declare-fun e!4140837 () Bool)

(assert (=> b!6869335 (= e!4140836 e!4140837)))

(declare-fun res!2801812 () Bool)

(assert (=> b!6869335 (=> (not res!2801812) (not e!4140837))))

(assert (=> b!6869335 (= res!2801812 (dynLambda!26529 lambda!388641 (h!72714 (t!380133 (exprs!6581 (h!72715 zl!343))))))))

(declare-fun b!6869336 () Bool)

(assert (=> b!6869336 (= e!4140837 (forall!15890 (t!380133 (t!380133 (exprs!6581 (h!72715 zl!343)))) lambda!388641))))

(assert (= (and d!2157992 (not res!2801811)) b!6869335))

(assert (= (and b!6869335 res!2801812) b!6869336))

(declare-fun b_lambda!259907 () Bool)

(assert (=> (not b_lambda!259907) (not b!6869335)))

(declare-fun m!7600620 () Bool)

(assert (=> b!6869335 m!7600620))

(declare-fun m!7600622 () Bool)

(assert (=> b!6869336 m!7600622))

(assert (=> b!6868976 d!2157992))

(declare-fun d!2157994 () Bool)

(assert (=> d!2157994 (= (head!13781 (unfocusZipperList!2114 lt!2458043)) (h!72714 (unfocusZipperList!2114 lt!2458043)))))

(assert (=> b!6868932 d!2157994))

(declare-fun d!2157996 () Bool)

(declare-fun res!2801813 () Bool)

(declare-fun e!4140838 () Bool)

(assert (=> d!2157996 (=> res!2801813 e!4140838)))

(assert (=> d!2157996 (= res!2801813 ((_ is Nil!66266) lt!2458173))))

(assert (=> d!2157996 (= (forall!15890 lt!2458173 lambda!388680) e!4140838)))

(declare-fun b!6869337 () Bool)

(declare-fun e!4140839 () Bool)

(assert (=> b!6869337 (= e!4140838 e!4140839)))

(declare-fun res!2801814 () Bool)

(assert (=> b!6869337 (=> (not res!2801814) (not e!4140839))))

(assert (=> b!6869337 (= res!2801814 (dynLambda!26529 lambda!388680 (h!72714 lt!2458173)))))

(declare-fun b!6869338 () Bool)

(assert (=> b!6869338 (= e!4140839 (forall!15890 (t!380133 lt!2458173) lambda!388680))))

(assert (= (and d!2157996 (not res!2801813)) b!6869337))

(assert (= (and b!6869337 res!2801814) b!6869338))

(declare-fun b_lambda!259909 () Bool)

(assert (=> (not b_lambda!259909) (not b!6869337)))

(declare-fun m!7600624 () Bool)

(assert (=> b!6869337 m!7600624))

(declare-fun m!7600626 () Bool)

(assert (=> b!6869338 m!7600626))

(assert (=> d!2157808 d!2157996))

(declare-fun d!2157998 () Bool)

(declare-fun lt!2458194 () Bool)

(assert (=> d!2157998 (= lt!2458194 (select (content!13010 (t!380134 lt!2458093)) (h!72715 lt!2458093)))))

(declare-fun e!4140841 () Bool)

(assert (=> d!2157998 (= lt!2458194 e!4140841)))

(declare-fun res!2801815 () Bool)

(assert (=> d!2157998 (=> (not res!2801815) (not e!4140841))))

(assert (=> d!2157998 (= res!2801815 ((_ is Cons!66267) (t!380134 lt!2458093)))))

(assert (=> d!2157998 (= (contains!20355 (t!380134 lt!2458093) (h!72715 lt!2458093)) lt!2458194)))

(declare-fun b!6869339 () Bool)

(declare-fun e!4140840 () Bool)

(assert (=> b!6869339 (= e!4140841 e!4140840)))

(declare-fun res!2801816 () Bool)

(assert (=> b!6869339 (=> res!2801816 e!4140840)))

(assert (=> b!6869339 (= res!2801816 (= (h!72715 (t!380134 lt!2458093)) (h!72715 lt!2458093)))))

(declare-fun b!6869340 () Bool)

(assert (=> b!6869340 (= e!4140840 (contains!20355 (t!380134 (t!380134 lt!2458093)) (h!72715 lt!2458093)))))

(assert (= (and d!2157998 res!2801815) b!6869339))

(assert (= (and b!6869339 (not res!2801816)) b!6869340))

(assert (=> d!2157998 m!7600214))

(declare-fun m!7600634 () Bool)

(assert (=> d!2157998 m!7600634))

(declare-fun m!7600636 () Bool)

(assert (=> b!6869340 m!7600636))

(assert (=> b!6868893 d!2157998))

(declare-fun d!2158002 () Bool)

(assert (=> d!2158002 (= (isEmpty!38628 (tail!12836 (exprs!6581 (h!72715 zl!343)))) ((_ is Nil!66266) (tail!12836 (exprs!6581 (h!72715 zl!343)))))))

(assert (=> b!6868989 d!2158002))

(declare-fun d!2158004 () Bool)

(assert (=> d!2158004 (= (tail!12836 (exprs!6581 (h!72715 zl!343))) (t!380133 (exprs!6581 (h!72715 zl!343))))))

(assert (=> b!6868989 d!2158004))

(declare-fun d!2158006 () Bool)

(assert (=> d!2158006 (= (isEmpty!38628 (tail!12836 (t!380133 (exprs!6581 lt!2458040)))) ((_ is Nil!66266) (tail!12836 (t!380133 (exprs!6581 lt!2458040)))))))

(assert (=> b!6869025 d!2158006))

(declare-fun d!2158008 () Bool)

(assert (=> d!2158008 (= (tail!12836 (t!380133 (exprs!6581 lt!2458040))) (t!380133 (t!380133 (exprs!6581 lt!2458040))))))

(assert (=> b!6869025 d!2158008))

(declare-fun d!2158010 () Bool)

(declare-fun res!2801817 () Bool)

(declare-fun e!4140842 () Bool)

(assert (=> d!2158010 (=> res!2801817 e!4140842)))

(assert (=> d!2158010 (= res!2801817 ((_ is Nil!66267) res!2801683))))

(assert (=> d!2158010 (= (noDuplicate!2461 res!2801683) e!4140842)))

(declare-fun b!6869341 () Bool)

(declare-fun e!4140843 () Bool)

(assert (=> b!6869341 (= e!4140842 e!4140843)))

(declare-fun res!2801818 () Bool)

(assert (=> b!6869341 (=> (not res!2801818) (not e!4140843))))

(assert (=> b!6869341 (= res!2801818 (not (contains!20355 (t!380134 res!2801683) (h!72715 res!2801683))))))

(declare-fun b!6869342 () Bool)

(assert (=> b!6869342 (= e!4140843 (noDuplicate!2461 (t!380134 res!2801683)))))

(assert (= (and d!2158010 (not res!2801817)) b!6869341))

(assert (= (and b!6869341 res!2801818) b!6869342))

(declare-fun m!7600638 () Bool)

(assert (=> b!6869341 m!7600638))

(declare-fun m!7600640 () Bool)

(assert (=> b!6869342 m!7600640))

(assert (=> d!2157816 d!2158010))

(declare-fun bs!1836374 () Bool)

(declare-fun d!2158012 () Bool)

(assert (= bs!1836374 (and d!2158012 d!2157564)))

(declare-fun lambda!388710 () Int)

(assert (=> bs!1836374 (= lambda!388710 lambda!388628)))

(declare-fun bs!1836375 () Bool)

(assert (= bs!1836375 (and d!2158012 d!2157550)))

(assert (=> bs!1836375 (= lambda!388710 lambda!388619)))

(declare-fun bs!1836376 () Bool)

(assert (= bs!1836376 (and d!2158012 d!2157808)))

(assert (=> bs!1836376 (= lambda!388710 lambda!388680)))

(declare-fun bs!1836377 () Bool)

(assert (= bs!1836377 (and d!2158012 b!6867793)))

(assert (=> bs!1836377 (= lambda!388710 lambda!388573)))

(declare-fun bs!1836378 () Bool)

(assert (= bs!1836378 (and d!2158012 d!2157902)))

(assert (=> bs!1836378 (not (= lambda!388710 lambda!388700))))

(declare-fun bs!1836379 () Bool)

(assert (= bs!1836379 (and d!2158012 d!2157578)))

(assert (=> bs!1836379 (not (= lambda!388710 lambda!388637))))

(declare-fun bs!1836380 () Bool)

(assert (= bs!1836380 (and d!2158012 d!2157904)))

(assert (=> bs!1836380 (not (= lambda!388710 lambda!388703))))

(declare-fun bs!1836381 () Bool)

(assert (= bs!1836381 (and d!2158012 d!2157890)))

(assert (=> bs!1836381 (= lambda!388710 lambda!388697)))

(declare-fun bs!1836382 () Bool)

(assert (= bs!1836382 (and d!2158012 b!6867798)))

(assert (=> bs!1836382 (not (= lambda!388710 lambda!388571))))

(declare-fun bs!1836383 () Bool)

(assert (= bs!1836383 (and d!2158012 d!2157836)))

(assert (=> bs!1836383 (= lambda!388710 lambda!388688)))

(declare-fun bs!1836384 () Bool)

(assert (= bs!1836384 (and d!2158012 d!2157580)))

(assert (=> bs!1836384 (= lambda!388710 lambda!388640)))

(declare-fun bs!1836385 () Bool)

(assert (= bs!1836385 (and d!2158012 d!2157772)))

(assert (=> bs!1836385 (= lambda!388710 lambda!388675)))

(assert (=> bs!1836379 (= lambda!388710 lambda!388636)))

(declare-fun bs!1836386 () Bool)

(assert (= bs!1836386 (and d!2158012 d!2157806)))

(assert (=> bs!1836386 (= lambda!388710 lambda!388679)))

(declare-fun bs!1836387 () Bool)

(assert (= bs!1836387 (and d!2158012 d!2157854)))

(assert (=> bs!1836387 (= lambda!388710 lambda!388689)))

(declare-fun bs!1836388 () Bool)

(assert (= bs!1836388 (and d!2158012 d!2157534)))

(assert (=> bs!1836388 (= lambda!388710 lambda!388616)))

(declare-fun bs!1836389 () Bool)

(assert (= bs!1836389 (and d!2158012 d!2157866)))

(assert (=> bs!1836389 (= lambda!388710 lambda!388693)))

(declare-fun bs!1836390 () Bool)

(assert (= bs!1836390 (and d!2158012 d!2157582)))

(assert (=> bs!1836390 (= lambda!388710 lambda!388641)))

(declare-fun bs!1836391 () Bool)

(assert (= bs!1836391 (and d!2158012 d!2157834)))

(assert (=> bs!1836391 (= lambda!388710 lambda!388687)))

(declare-fun bs!1836392 () Bool)

(assert (= bs!1836392 (and d!2158012 d!2157576)))

(assert (=> bs!1836392 (not (= lambda!388710 lambda!388631))))

(declare-fun bs!1836393 () Bool)

(assert (= bs!1836393 (and d!2158012 d!2157872)))

(assert (=> bs!1836393 (= lambda!388710 lambda!388696)))

(declare-fun b!6869343 () Bool)

(declare-fun e!4140848 () Bool)

(declare-fun lt!2458195 () Regex!16697)

(assert (=> b!6869343 (= e!4140848 (= lt!2458195 (head!13781 (t!380133 (unfocusZipperList!2114 lt!2458043)))))))

(declare-fun b!6869344 () Bool)

(declare-fun e!4140849 () Regex!16697)

(declare-fun e!4140844 () Regex!16697)

(assert (=> b!6869344 (= e!4140849 e!4140844)))

(declare-fun c!1278520 () Bool)

(assert (=> b!6869344 (= c!1278520 ((_ is Cons!66266) (t!380133 (unfocusZipperList!2114 lt!2458043))))))

(declare-fun e!4140846 () Bool)

(assert (=> d!2158012 e!4140846))

(declare-fun res!2801820 () Bool)

(assert (=> d!2158012 (=> (not res!2801820) (not e!4140846))))

(assert (=> d!2158012 (= res!2801820 (validRegex!8433 lt!2458195))))

(assert (=> d!2158012 (= lt!2458195 e!4140849)))

(declare-fun c!1278521 () Bool)

(declare-fun e!4140847 () Bool)

(assert (=> d!2158012 (= c!1278521 e!4140847)))

(declare-fun res!2801819 () Bool)

(assert (=> d!2158012 (=> (not res!2801819) (not e!4140847))))

(assert (=> d!2158012 (= res!2801819 ((_ is Cons!66266) (t!380133 (unfocusZipperList!2114 lt!2458043))))))

(assert (=> d!2158012 (forall!15890 (t!380133 (unfocusZipperList!2114 lt!2458043)) lambda!388710)))

(assert (=> d!2158012 (= (generalisedUnion!2532 (t!380133 (unfocusZipperList!2114 lt!2458043))) lt!2458195)))

(declare-fun b!6869345 () Bool)

(assert (=> b!6869345 (= e!4140844 EmptyLang!16697)))

(declare-fun b!6869346 () Bool)

(declare-fun e!4140845 () Bool)

(assert (=> b!6869346 (= e!4140845 (isEmptyLang!2026 lt!2458195))))

(declare-fun b!6869347 () Bool)

(assert (=> b!6869347 (= e!4140844 (Union!16697 (h!72714 (t!380133 (unfocusZipperList!2114 lt!2458043))) (generalisedUnion!2532 (t!380133 (t!380133 (unfocusZipperList!2114 lt!2458043))))))))

(declare-fun b!6869348 () Bool)

(assert (=> b!6869348 (= e!4140847 (isEmpty!38628 (t!380133 (t!380133 (unfocusZipperList!2114 lt!2458043)))))))

(declare-fun b!6869349 () Bool)

(assert (=> b!6869349 (= e!4140846 e!4140845)))

(declare-fun c!1278523 () Bool)

(assert (=> b!6869349 (= c!1278523 (isEmpty!38628 (t!380133 (unfocusZipperList!2114 lt!2458043))))))

(declare-fun b!6869350 () Bool)

(assert (=> b!6869350 (= e!4140845 e!4140848)))

(declare-fun c!1278522 () Bool)

(assert (=> b!6869350 (= c!1278522 (isEmpty!38628 (tail!12836 (t!380133 (unfocusZipperList!2114 lt!2458043)))))))

(declare-fun b!6869351 () Bool)

(assert (=> b!6869351 (= e!4140848 (isUnion!1456 lt!2458195))))

(declare-fun b!6869352 () Bool)

(assert (=> b!6869352 (= e!4140849 (h!72714 (t!380133 (unfocusZipperList!2114 lt!2458043))))))

(assert (= (and d!2158012 res!2801819) b!6869348))

(assert (= (and d!2158012 c!1278521) b!6869352))

(assert (= (and d!2158012 (not c!1278521)) b!6869344))

(assert (= (and b!6869344 c!1278520) b!6869347))

(assert (= (and b!6869344 (not c!1278520)) b!6869345))

(assert (= (and d!2158012 res!2801820) b!6869349))

(assert (= (and b!6869349 c!1278523) b!6869346))

(assert (= (and b!6869349 (not c!1278523)) b!6869350))

(assert (= (and b!6869350 c!1278522) b!6869343))

(assert (= (and b!6869350 (not c!1278522)) b!6869351))

(declare-fun m!7600642 () Bool)

(assert (=> d!2158012 m!7600642))

(declare-fun m!7600644 () Bool)

(assert (=> d!2158012 m!7600644))

(declare-fun m!7600646 () Bool)

(assert (=> b!6869346 m!7600646))

(assert (=> b!6869349 m!7600246))

(declare-fun m!7600648 () Bool)

(assert (=> b!6869343 m!7600648))

(declare-fun m!7600650 () Bool)

(assert (=> b!6869350 m!7600650))

(assert (=> b!6869350 m!7600650))

(declare-fun m!7600652 () Bool)

(assert (=> b!6869350 m!7600652))

(declare-fun m!7600654 () Bool)

(assert (=> b!6869351 m!7600654))

(declare-fun m!7600656 () Bool)

(assert (=> b!6869347 m!7600656))

(declare-fun m!7600658 () Bool)

(assert (=> b!6869348 m!7600658))

(assert (=> b!6868936 d!2158012))

(declare-fun bs!1836399 () Bool)

(declare-fun d!2158016 () Bool)

(assert (= bs!1836399 (and d!2158016 d!2157564)))

(declare-fun lambda!388712 () Int)

(assert (=> bs!1836399 (= lambda!388712 lambda!388628)))

(declare-fun bs!1836400 () Bool)

(assert (= bs!1836400 (and d!2158016 d!2157550)))

(assert (=> bs!1836400 (= lambda!388712 lambda!388619)))

(declare-fun bs!1836401 () Bool)

(assert (= bs!1836401 (and d!2158016 d!2157808)))

(assert (=> bs!1836401 (= lambda!388712 lambda!388680)))

(declare-fun bs!1836403 () Bool)

(assert (= bs!1836403 (and d!2158016 b!6867793)))

(assert (=> bs!1836403 (= lambda!388712 lambda!388573)))

(declare-fun bs!1836404 () Bool)

(assert (= bs!1836404 (and d!2158016 d!2157902)))

(assert (=> bs!1836404 (not (= lambda!388712 lambda!388700))))

(declare-fun bs!1836405 () Bool)

(assert (= bs!1836405 (and d!2158016 d!2157904)))

(assert (=> bs!1836405 (not (= lambda!388712 lambda!388703))))

(declare-fun bs!1836406 () Bool)

(assert (= bs!1836406 (and d!2158016 d!2157890)))

(assert (=> bs!1836406 (= lambda!388712 lambda!388697)))

(declare-fun bs!1836407 () Bool)

(assert (= bs!1836407 (and d!2158016 b!6867798)))

(assert (=> bs!1836407 (not (= lambda!388712 lambda!388571))))

(declare-fun bs!1836408 () Bool)

(assert (= bs!1836408 (and d!2158016 d!2157836)))

(assert (=> bs!1836408 (= lambda!388712 lambda!388688)))

(declare-fun bs!1836409 () Bool)

(assert (= bs!1836409 (and d!2158016 d!2157580)))

(assert (=> bs!1836409 (= lambda!388712 lambda!388640)))

(declare-fun bs!1836410 () Bool)

(assert (= bs!1836410 (and d!2158016 d!2157772)))

(assert (=> bs!1836410 (= lambda!388712 lambda!388675)))

(declare-fun bs!1836411 () Bool)

(assert (= bs!1836411 (and d!2158016 d!2157578)))

(assert (=> bs!1836411 (= lambda!388712 lambda!388636)))

(declare-fun bs!1836412 () Bool)

(assert (= bs!1836412 (and d!2158016 d!2157806)))

(assert (=> bs!1836412 (= lambda!388712 lambda!388679)))

(declare-fun bs!1836413 () Bool)

(assert (= bs!1836413 (and d!2158016 d!2158012)))

(assert (=> bs!1836413 (= lambda!388712 lambda!388710)))

(assert (=> bs!1836411 (not (= lambda!388712 lambda!388637))))

(declare-fun bs!1836414 () Bool)

(assert (= bs!1836414 (and d!2158016 d!2157854)))

(assert (=> bs!1836414 (= lambda!388712 lambda!388689)))

(declare-fun bs!1836415 () Bool)

(assert (= bs!1836415 (and d!2158016 d!2157534)))

(assert (=> bs!1836415 (= lambda!388712 lambda!388616)))

(declare-fun bs!1836416 () Bool)

(assert (= bs!1836416 (and d!2158016 d!2157866)))

(assert (=> bs!1836416 (= lambda!388712 lambda!388693)))

(declare-fun bs!1836417 () Bool)

(assert (= bs!1836417 (and d!2158016 d!2157582)))

(assert (=> bs!1836417 (= lambda!388712 lambda!388641)))

(declare-fun bs!1836418 () Bool)

(assert (= bs!1836418 (and d!2158016 d!2157834)))

(assert (=> bs!1836418 (= lambda!388712 lambda!388687)))

(declare-fun bs!1836419 () Bool)

(assert (= bs!1836419 (and d!2158016 d!2157576)))

(assert (=> bs!1836419 (not (= lambda!388712 lambda!388631))))

(declare-fun bs!1836420 () Bool)

(assert (= bs!1836420 (and d!2158016 d!2157872)))

(assert (=> bs!1836420 (= lambda!388712 lambda!388696)))

(declare-fun e!4140862 () Bool)

(assert (=> d!2158016 e!4140862))

(declare-fun res!2801824 () Bool)

(assert (=> d!2158016 (=> (not res!2801824) (not e!4140862))))

(declare-fun lt!2458196 () Regex!16697)

(assert (=> d!2158016 (= res!2801824 (validRegex!8433 lt!2458196))))

(declare-fun e!4140861 () Regex!16697)

(assert (=> d!2158016 (= lt!2458196 e!4140861)))

(declare-fun c!1278530 () Bool)

(declare-fun e!4140859 () Bool)

(assert (=> d!2158016 (= c!1278530 e!4140859)))

(declare-fun res!2801825 () Bool)

(assert (=> d!2158016 (=> (not res!2801825) (not e!4140859))))

(assert (=> d!2158016 (= res!2801825 ((_ is Cons!66266) (exprs!6581 (h!72715 lt!2458043))))))

(assert (=> d!2158016 (forall!15890 (exprs!6581 (h!72715 lt!2458043)) lambda!388712)))

(assert (=> d!2158016 (= (generalisedConcat!2285 (exprs!6581 (h!72715 lt!2458043))) lt!2458196)))

(declare-fun b!6869364 () Bool)

(assert (=> b!6869364 (= e!4140859 (isEmpty!38628 (t!380133 (exprs!6581 (h!72715 lt!2458043)))))))

(declare-fun b!6869365 () Bool)

(declare-fun e!4140858 () Regex!16697)

(assert (=> b!6869365 (= e!4140861 e!4140858)))

(declare-fun c!1278528 () Bool)

(assert (=> b!6869365 (= c!1278528 ((_ is Cons!66266) (exprs!6581 (h!72715 lt!2458043))))))

(declare-fun b!6869366 () Bool)

(declare-fun e!4140857 () Bool)

(assert (=> b!6869366 (= e!4140862 e!4140857)))

(declare-fun c!1278531 () Bool)

(assert (=> b!6869366 (= c!1278531 (isEmpty!38628 (exprs!6581 (h!72715 lt!2458043))))))

(declare-fun b!6869367 () Bool)

(declare-fun e!4140860 () Bool)

(assert (=> b!6869367 (= e!4140857 e!4140860)))

(declare-fun c!1278529 () Bool)

(assert (=> b!6869367 (= c!1278529 (isEmpty!38628 (tail!12836 (exprs!6581 (h!72715 lt!2458043)))))))

(declare-fun b!6869368 () Bool)

(assert (=> b!6869368 (= e!4140860 (isConcat!1540 lt!2458196))))

(declare-fun b!6869369 () Bool)

(assert (=> b!6869369 (= e!4140857 (isEmptyExpr!2017 lt!2458196))))

(declare-fun b!6869370 () Bool)

(assert (=> b!6869370 (= e!4140858 EmptyExpr!16697)))

(declare-fun b!6869371 () Bool)

(assert (=> b!6869371 (= e!4140861 (h!72714 (exprs!6581 (h!72715 lt!2458043))))))

(declare-fun b!6869372 () Bool)

(assert (=> b!6869372 (= e!4140860 (= lt!2458196 (head!13781 (exprs!6581 (h!72715 lt!2458043)))))))

(declare-fun b!6869373 () Bool)

(assert (=> b!6869373 (= e!4140858 (Concat!25542 (h!72714 (exprs!6581 (h!72715 lt!2458043))) (generalisedConcat!2285 (t!380133 (exprs!6581 (h!72715 lt!2458043))))))))

(assert (= (and d!2158016 res!2801825) b!6869364))

(assert (= (and d!2158016 c!1278530) b!6869371))

(assert (= (and d!2158016 (not c!1278530)) b!6869365))

(assert (= (and b!6869365 c!1278528) b!6869373))

(assert (= (and b!6869365 (not c!1278528)) b!6869370))

(assert (= (and d!2158016 res!2801824) b!6869366))

(assert (= (and b!6869366 c!1278531) b!6869369))

(assert (= (and b!6869366 (not c!1278531)) b!6869367))

(assert (= (and b!6869367 c!1278529) b!6869372))

(assert (= (and b!6869367 (not c!1278529)) b!6869368))

(declare-fun m!7600660 () Bool)

(assert (=> b!6869368 m!7600660))

(declare-fun m!7600662 () Bool)

(assert (=> b!6869373 m!7600662))

(declare-fun m!7600664 () Bool)

(assert (=> b!6869366 m!7600664))

(declare-fun m!7600666 () Bool)

(assert (=> b!6869369 m!7600666))

(declare-fun m!7600668 () Bool)

(assert (=> b!6869364 m!7600668))

(declare-fun m!7600670 () Bool)

(assert (=> b!6869372 m!7600670))

(declare-fun m!7600672 () Bool)

(assert (=> d!2158016 m!7600672))

(declare-fun m!7600674 () Bool)

(assert (=> d!2158016 m!7600674))

(declare-fun m!7600676 () Bool)

(assert (=> b!6869367 m!7600676))

(assert (=> b!6869367 m!7600676))

(declare-fun m!7600678 () Bool)

(assert (=> b!6869367 m!7600678))

(assert (=> b!6868942 d!2158016))

(declare-fun bs!1836426 () Bool)

(declare-fun d!2158018 () Bool)

(assert (= bs!1836426 (and d!2158018 d!2157564)))

(declare-fun lambda!388714 () Int)

(assert (=> bs!1836426 (= lambda!388714 lambda!388628)))

(declare-fun bs!1836428 () Bool)

(assert (= bs!1836428 (and d!2158018 d!2157550)))

(assert (=> bs!1836428 (= lambda!388714 lambda!388619)))

(declare-fun bs!1836429 () Bool)

(assert (= bs!1836429 (and d!2158018 d!2157808)))

(assert (=> bs!1836429 (= lambda!388714 lambda!388680)))

(declare-fun bs!1836430 () Bool)

(assert (= bs!1836430 (and d!2158018 b!6867793)))

(assert (=> bs!1836430 (= lambda!388714 lambda!388573)))

(declare-fun bs!1836432 () Bool)

(assert (= bs!1836432 (and d!2158018 d!2157902)))

(assert (=> bs!1836432 (not (= lambda!388714 lambda!388700))))

(declare-fun bs!1836433 () Bool)

(assert (= bs!1836433 (and d!2158018 d!2158016)))

(assert (=> bs!1836433 (= lambda!388714 lambda!388712)))

(declare-fun bs!1836434 () Bool)

(assert (= bs!1836434 (and d!2158018 d!2157904)))

(assert (=> bs!1836434 (not (= lambda!388714 lambda!388703))))

(declare-fun bs!1836435 () Bool)

(assert (= bs!1836435 (and d!2158018 d!2157890)))

(assert (=> bs!1836435 (= lambda!388714 lambda!388697)))

(declare-fun bs!1836436 () Bool)

(assert (= bs!1836436 (and d!2158018 b!6867798)))

(assert (=> bs!1836436 (not (= lambda!388714 lambda!388571))))

(declare-fun bs!1836437 () Bool)

(assert (= bs!1836437 (and d!2158018 d!2157836)))

(assert (=> bs!1836437 (= lambda!388714 lambda!388688)))

(declare-fun bs!1836438 () Bool)

(assert (= bs!1836438 (and d!2158018 d!2157580)))

(assert (=> bs!1836438 (= lambda!388714 lambda!388640)))

(declare-fun bs!1836439 () Bool)

(assert (= bs!1836439 (and d!2158018 d!2157772)))

(assert (=> bs!1836439 (= lambda!388714 lambda!388675)))

(declare-fun bs!1836440 () Bool)

(assert (= bs!1836440 (and d!2158018 d!2157578)))

(assert (=> bs!1836440 (= lambda!388714 lambda!388636)))

(declare-fun bs!1836441 () Bool)

(assert (= bs!1836441 (and d!2158018 d!2157806)))

(assert (=> bs!1836441 (= lambda!388714 lambda!388679)))

(declare-fun bs!1836442 () Bool)

(assert (= bs!1836442 (and d!2158018 d!2158012)))

(assert (=> bs!1836442 (= lambda!388714 lambda!388710)))

(assert (=> bs!1836440 (not (= lambda!388714 lambda!388637))))

(declare-fun bs!1836443 () Bool)

(assert (= bs!1836443 (and d!2158018 d!2157854)))

(assert (=> bs!1836443 (= lambda!388714 lambda!388689)))

(declare-fun bs!1836444 () Bool)

(assert (= bs!1836444 (and d!2158018 d!2157534)))

(assert (=> bs!1836444 (= lambda!388714 lambda!388616)))

(declare-fun bs!1836445 () Bool)

(assert (= bs!1836445 (and d!2158018 d!2157866)))

(assert (=> bs!1836445 (= lambda!388714 lambda!388693)))

(declare-fun bs!1836446 () Bool)

(assert (= bs!1836446 (and d!2158018 d!2157582)))

(assert (=> bs!1836446 (= lambda!388714 lambda!388641)))

(declare-fun bs!1836447 () Bool)

(assert (= bs!1836447 (and d!2158018 d!2157834)))

(assert (=> bs!1836447 (= lambda!388714 lambda!388687)))

(declare-fun bs!1836448 () Bool)

(assert (= bs!1836448 (and d!2158018 d!2157576)))

(assert (=> bs!1836448 (not (= lambda!388714 lambda!388631))))

(declare-fun bs!1836449 () Bool)

(assert (= bs!1836449 (and d!2158018 d!2157872)))

(assert (=> bs!1836449 (= lambda!388714 lambda!388696)))

(declare-fun lt!2458197 () List!66390)

(assert (=> d!2158018 (forall!15890 lt!2458197 lambda!388714)))

(declare-fun e!4140863 () List!66390)

(assert (=> d!2158018 (= lt!2458197 e!4140863)))

(declare-fun c!1278532 () Bool)

(assert (=> d!2158018 (= c!1278532 ((_ is Cons!66267) (t!380134 lt!2458043)))))

(assert (=> d!2158018 (= (unfocusZipperList!2114 (t!380134 lt!2458043)) lt!2458197)))

(declare-fun b!6869374 () Bool)

(assert (=> b!6869374 (= e!4140863 (Cons!66266 (generalisedConcat!2285 (exprs!6581 (h!72715 (t!380134 lt!2458043)))) (unfocusZipperList!2114 (t!380134 (t!380134 lt!2458043)))))))

(declare-fun b!6869375 () Bool)

(assert (=> b!6869375 (= e!4140863 Nil!66266)))

(assert (= (and d!2158018 c!1278532) b!6869374))

(assert (= (and d!2158018 (not c!1278532)) b!6869375))

(declare-fun m!7600686 () Bool)

(assert (=> d!2158018 m!7600686))

(declare-fun m!7600688 () Bool)

(assert (=> b!6869374 m!7600688))

(declare-fun m!7600690 () Bool)

(assert (=> b!6869374 m!7600690))

(assert (=> b!6868942 d!2158018))

(declare-fun b!6869376 () Bool)

(declare-fun e!4140864 () Bool)

(declare-fun call!625678 () Bool)

(assert (=> b!6869376 (= e!4140864 call!625678)))

(declare-fun c!1278534 () Bool)

(declare-fun bm!625672 () Bool)

(declare-fun c!1278533 () Bool)

(declare-fun call!625677 () Bool)

(assert (=> bm!625672 (= call!625677 (validRegex!8433 (ite c!1278533 (reg!17026 lt!2458174) (ite c!1278534 (regOne!33907 lt!2458174) (regOne!33906 lt!2458174)))))))

(declare-fun bm!625673 () Bool)

(declare-fun call!625679 () Bool)

(assert (=> bm!625673 (= call!625679 call!625677)))

(declare-fun b!6869377 () Bool)

(declare-fun e!4140866 () Bool)

(assert (=> b!6869377 (= e!4140866 call!625677)))

(declare-fun bm!625674 () Bool)

(assert (=> bm!625674 (= call!625678 (validRegex!8433 (ite c!1278534 (regTwo!33907 lt!2458174) (regTwo!33906 lt!2458174))))))

(declare-fun b!6869378 () Bool)

(declare-fun e!4140870 () Bool)

(assert (=> b!6869378 (= e!4140870 e!4140864)))

(declare-fun res!2801828 () Bool)

(assert (=> b!6869378 (=> (not res!2801828) (not e!4140864))))

(assert (=> b!6869378 (= res!2801828 call!625679)))

(declare-fun d!2158022 () Bool)

(declare-fun res!2801827 () Bool)

(declare-fun e!4140868 () Bool)

(assert (=> d!2158022 (=> res!2801827 e!4140868)))

(assert (=> d!2158022 (= res!2801827 ((_ is ElementMatch!16697) lt!2458174))))

(assert (=> d!2158022 (= (validRegex!8433 lt!2458174) e!4140868)))

(declare-fun b!6869379 () Bool)

(declare-fun res!2801826 () Bool)

(declare-fun e!4140867 () Bool)

(assert (=> b!6869379 (=> (not res!2801826) (not e!4140867))))

(assert (=> b!6869379 (= res!2801826 call!625679)))

(declare-fun e!4140869 () Bool)

(assert (=> b!6869379 (= e!4140869 e!4140867)))

(declare-fun b!6869380 () Bool)

(assert (=> b!6869380 (= e!4140867 call!625678)))

(declare-fun b!6869381 () Bool)

(declare-fun res!2801829 () Bool)

(assert (=> b!6869381 (=> res!2801829 e!4140870)))

(assert (=> b!6869381 (= res!2801829 (not ((_ is Concat!25542) lt!2458174)))))

(assert (=> b!6869381 (= e!4140869 e!4140870)))

(declare-fun b!6869382 () Bool)

(declare-fun e!4140865 () Bool)

(assert (=> b!6869382 (= e!4140865 e!4140869)))

(assert (=> b!6869382 (= c!1278534 ((_ is Union!16697) lt!2458174))))

(declare-fun b!6869383 () Bool)

(assert (=> b!6869383 (= e!4140868 e!4140865)))

(assert (=> b!6869383 (= c!1278533 ((_ is Star!16697) lt!2458174))))

(declare-fun b!6869384 () Bool)

(assert (=> b!6869384 (= e!4140865 e!4140866)))

(declare-fun res!2801830 () Bool)

(assert (=> b!6869384 (= res!2801830 (not (nullable!6658 (reg!17026 lt!2458174))))))

(assert (=> b!6869384 (=> (not res!2801830) (not e!4140866))))

(assert (= (and d!2158022 (not res!2801827)) b!6869383))

(assert (= (and b!6869383 c!1278533) b!6869384))

(assert (= (and b!6869383 (not c!1278533)) b!6869382))

(assert (= (and b!6869384 res!2801830) b!6869377))

(assert (= (and b!6869382 c!1278534) b!6869379))

(assert (= (and b!6869382 (not c!1278534)) b!6869381))

(assert (= (and b!6869379 res!2801826) b!6869380))

(assert (= (and b!6869381 (not res!2801829)) b!6869378))

(assert (= (and b!6869378 res!2801828) b!6869376))

(assert (= (or b!6869380 b!6869376) bm!625674))

(assert (= (or b!6869379 b!6869378) bm!625673))

(assert (= (or b!6869377 bm!625673) bm!625672))

(declare-fun m!7600692 () Bool)

(assert (=> bm!625672 m!7600692))

(declare-fun m!7600694 () Bool)

(assert (=> bm!625674 m!7600694))

(declare-fun m!7600696 () Bool)

(assert (=> b!6869384 m!7600696))

(assert (=> d!2157834 d!2158022))

(declare-fun d!2158024 () Bool)

(declare-fun res!2801831 () Bool)

(declare-fun e!4140871 () Bool)

(assert (=> d!2158024 (=> res!2801831 e!4140871)))

(assert (=> d!2158024 (= res!2801831 ((_ is Nil!66266) (exprs!6581 (h!72715 zl!343))))))

(assert (=> d!2158024 (= (forall!15890 (exprs!6581 (h!72715 zl!343)) lambda!388687) e!4140871)))

(declare-fun b!6869385 () Bool)

(declare-fun e!4140872 () Bool)

(assert (=> b!6869385 (= e!4140871 e!4140872)))

(declare-fun res!2801832 () Bool)

(assert (=> b!6869385 (=> (not res!2801832) (not e!4140872))))

(assert (=> b!6869385 (= res!2801832 (dynLambda!26529 lambda!388687 (h!72714 (exprs!6581 (h!72715 zl!343)))))))

(declare-fun b!6869386 () Bool)

(assert (=> b!6869386 (= e!4140872 (forall!15890 (t!380133 (exprs!6581 (h!72715 zl!343))) lambda!388687))))

(assert (= (and d!2158024 (not res!2801831)) b!6869385))

(assert (= (and b!6869385 res!2801832) b!6869386))

(declare-fun b_lambda!259911 () Bool)

(assert (=> (not b_lambda!259911) (not b!6869385)))

(declare-fun m!7600698 () Bool)

(assert (=> b!6869385 m!7600698))

(declare-fun m!7600700 () Bool)

(assert (=> b!6869386 m!7600700))

(assert (=> d!2157834 d!2158024))

(declare-fun b!6869387 () Bool)

(declare-fun e!4140878 () Bool)

(declare-fun lt!2458198 () Bool)

(assert (=> b!6869387 (= e!4140878 (not lt!2458198))))

(declare-fun b!6869388 () Bool)

(declare-fun res!2801838 () Bool)

(declare-fun e!4140876 () Bool)

(assert (=> b!6869388 (=> res!2801838 e!4140876)))

(declare-fun e!4140873 () Bool)

(assert (=> b!6869388 (= res!2801838 e!4140873)))

(declare-fun res!2801835 () Bool)

(assert (=> b!6869388 (=> (not res!2801835) (not e!4140873))))

(assert (=> b!6869388 (= res!2801835 lt!2458198)))

(declare-fun b!6869389 () Bool)

(declare-fun e!4140874 () Bool)

(assert (=> b!6869389 (= e!4140874 e!4140878)))

(declare-fun c!1278535 () Bool)

(assert (=> b!6869389 (= c!1278535 ((_ is EmptyLang!16697) (h!72714 lt!2458035)))))

(declare-fun b!6869390 () Bool)

(declare-fun res!2801833 () Bool)

(declare-fun e!4140877 () Bool)

(assert (=> b!6869390 (=> res!2801833 e!4140877)))

(assert (=> b!6869390 (= res!2801833 (not (isEmpty!38627 (tail!12835 s!2326))))))

(declare-fun b!6869391 () Bool)

(declare-fun e!4140879 () Bool)

(assert (=> b!6869391 (= e!4140876 e!4140879)))

(declare-fun res!2801839 () Bool)

(assert (=> b!6869391 (=> (not res!2801839) (not e!4140879))))

(assert (=> b!6869391 (= res!2801839 (not lt!2458198))))

(declare-fun b!6869392 () Bool)

(declare-fun res!2801840 () Bool)

(assert (=> b!6869392 (=> (not res!2801840) (not e!4140873))))

(declare-fun call!625680 () Bool)

(assert (=> b!6869392 (= res!2801840 (not call!625680))))

(declare-fun b!6869393 () Bool)

(declare-fun e!4140875 () Bool)

(assert (=> b!6869393 (= e!4140875 (nullable!6658 (h!72714 lt!2458035)))))

(declare-fun d!2158026 () Bool)

(assert (=> d!2158026 e!4140874))

(declare-fun c!1278537 () Bool)

(assert (=> d!2158026 (= c!1278537 ((_ is EmptyExpr!16697) (h!72714 lt!2458035)))))

(assert (=> d!2158026 (= lt!2458198 e!4140875)))

(declare-fun c!1278536 () Bool)

(assert (=> d!2158026 (= c!1278536 (isEmpty!38627 s!2326))))

(assert (=> d!2158026 (validRegex!8433 (h!72714 lt!2458035))))

(assert (=> d!2158026 (= (matchR!8880 (h!72714 lt!2458035) s!2326) lt!2458198)))

(declare-fun b!6869394 () Bool)

(assert (=> b!6869394 (= e!4140874 (= lt!2458198 call!625680))))

(declare-fun b!6869395 () Bool)

(assert (=> b!6869395 (= e!4140879 e!4140877)))

(declare-fun res!2801837 () Bool)

(assert (=> b!6869395 (=> res!2801837 e!4140877)))

(assert (=> b!6869395 (= res!2801837 call!625680)))

(declare-fun b!6869396 () Bool)

(assert (=> b!6869396 (= e!4140873 (= (head!13779 s!2326) (c!1278149 (h!72714 lt!2458035))))))

(declare-fun b!6869397 () Bool)

(assert (=> b!6869397 (= e!4140875 (matchR!8880 (derivativeStep!5340 (h!72714 lt!2458035) (head!13779 s!2326)) (tail!12835 s!2326)))))

(declare-fun b!6869398 () Bool)

(declare-fun res!2801834 () Bool)

(assert (=> b!6869398 (=> (not res!2801834) (not e!4140873))))

(assert (=> b!6869398 (= res!2801834 (isEmpty!38627 (tail!12835 s!2326)))))

(declare-fun b!6869399 () Bool)

(assert (=> b!6869399 (= e!4140877 (not (= (head!13779 s!2326) (c!1278149 (h!72714 lt!2458035)))))))

(declare-fun b!6869400 () Bool)

(declare-fun res!2801836 () Bool)

(assert (=> b!6869400 (=> res!2801836 e!4140876)))

(assert (=> b!6869400 (= res!2801836 (not ((_ is ElementMatch!16697) (h!72714 lt!2458035))))))

(assert (=> b!6869400 (= e!4140878 e!4140876)))

(declare-fun bm!625675 () Bool)

(assert (=> bm!625675 (= call!625680 (isEmpty!38627 s!2326))))

(assert (= (and d!2158026 c!1278536) b!6869393))

(assert (= (and d!2158026 (not c!1278536)) b!6869397))

(assert (= (and d!2158026 c!1278537) b!6869394))

(assert (= (and d!2158026 (not c!1278537)) b!6869389))

(assert (= (and b!6869389 c!1278535) b!6869387))

(assert (= (and b!6869389 (not c!1278535)) b!6869400))

(assert (= (and b!6869400 (not res!2801836)) b!6869388))

(assert (= (and b!6869388 res!2801835) b!6869392))

(assert (= (and b!6869392 res!2801840) b!6869398))

(assert (= (and b!6869398 res!2801834) b!6869396))

(assert (= (and b!6869388 (not res!2801838)) b!6869391))

(assert (= (and b!6869391 res!2801839) b!6869395))

(assert (= (and b!6869395 (not res!2801837)) b!6869390))

(assert (= (and b!6869390 (not res!2801833)) b!6869399))

(assert (= (or b!6869394 b!6869392 b!6869395) bm!625675))

(assert (=> b!6869398 m!7599580))

(assert (=> b!6869398 m!7599580))

(assert (=> b!6869398 m!7599582))

(assert (=> bm!625675 m!7599520))

(assert (=> b!6869390 m!7599580))

(assert (=> b!6869390 m!7599580))

(assert (=> b!6869390 m!7599582))

(declare-fun m!7600708 () Bool)

(assert (=> b!6869393 m!7600708))

(assert (=> b!6869397 m!7599586))

(assert (=> b!6869397 m!7599586))

(declare-fun m!7600710 () Bool)

(assert (=> b!6869397 m!7600710))

(assert (=> b!6869397 m!7599580))

(assert (=> b!6869397 m!7600710))

(assert (=> b!6869397 m!7599580))

(declare-fun m!7600712 () Bool)

(assert (=> b!6869397 m!7600712))

(assert (=> d!2158026 m!7599520))

(assert (=> d!2158026 m!7600478))

(assert (=> b!6869399 m!7599586))

(assert (=> b!6869396 m!7599586))

(assert (=> b!6869211 d!2158026))

(declare-fun d!2158032 () Bool)

(assert (=> d!2158032 (= (nullable!6658 (reg!17026 (h!72714 (exprs!6581 lt!2458040)))) (nullableFct!2532 (reg!17026 (h!72714 (exprs!6581 lt!2458040)))))))

(declare-fun bs!1836457 () Bool)

(assert (= bs!1836457 d!2158032))

(declare-fun m!7600714 () Bool)

(assert (=> bs!1836457 m!7600714))

(assert (=> b!6868922 d!2158032))

(declare-fun d!2158034 () Bool)

(declare-fun c!1278538 () Bool)

(assert (=> d!2158034 (= c!1278538 ((_ is Nil!66267) (t!380134 zl!343)))))

(declare-fun e!4140884 () (InoxSet Context!12162))

(assert (=> d!2158034 (= (content!13010 (t!380134 zl!343)) e!4140884)))

(declare-fun b!6869405 () Bool)

(assert (=> b!6869405 (= e!4140884 ((as const (Array Context!12162 Bool)) false))))

(declare-fun b!6869406 () Bool)

(assert (=> b!6869406 (= e!4140884 ((_ map or) (store ((as const (Array Context!12162 Bool)) false) (h!72715 (t!380134 zl!343)) true) (content!13010 (t!380134 (t!380134 zl!343)))))))

(assert (= (and d!2158034 c!1278538) b!6869405))

(assert (= (and d!2158034 (not c!1278538)) b!6869406))

(assert (=> b!6869406 m!7600466))

(declare-fun m!7600720 () Bool)

(assert (=> b!6869406 m!7600720))

(assert (=> b!6868963 d!2158034))

(declare-fun d!2158038 () Bool)

(assert (=> d!2158038 (= (Exists!3757 (ite c!1278454 lambda!388685 lambda!388686)) (choose!51187 (ite c!1278454 lambda!388685 lambda!388686)))))

(declare-fun bs!1836458 () Bool)

(assert (= bs!1836458 d!2158038))

(declare-fun m!7600722 () Bool)

(assert (=> bs!1836458 m!7600722))

(assert (=> bm!625633 d!2158038))

(declare-fun d!2158040 () Bool)

(assert (=> d!2158040 (= (nullable!6658 (reg!17026 (ite c!1278250 (regTwo!33907 r!7292) (regTwo!33906 r!7292)))) (nullableFct!2532 (reg!17026 (ite c!1278250 (regTwo!33907 r!7292) (regTwo!33906 r!7292)))))))

(declare-fun bs!1836459 () Bool)

(assert (= bs!1836459 d!2158040))

(declare-fun m!7600724 () Bool)

(assert (=> bs!1836459 m!7600724))

(assert (=> b!6869087 d!2158040))

(declare-fun bs!1836460 () Bool)

(declare-fun d!2158042 () Bool)

(assert (= bs!1836460 (and d!2158042 d!2157564)))

(declare-fun lambda!388716 () Int)

(assert (=> bs!1836460 (= lambda!388716 lambda!388628)))

(declare-fun bs!1836461 () Bool)

(assert (= bs!1836461 (and d!2158042 d!2157550)))

(assert (=> bs!1836461 (= lambda!388716 lambda!388619)))

(declare-fun bs!1836462 () Bool)

(assert (= bs!1836462 (and d!2158042 d!2157808)))

(assert (=> bs!1836462 (= lambda!388716 lambda!388680)))

(declare-fun bs!1836463 () Bool)

(assert (= bs!1836463 (and d!2158042 b!6867793)))

(assert (=> bs!1836463 (= lambda!388716 lambda!388573)))

(declare-fun bs!1836464 () Bool)

(assert (= bs!1836464 (and d!2158042 d!2157902)))

(assert (=> bs!1836464 (not (= lambda!388716 lambda!388700))))

(declare-fun bs!1836465 () Bool)

(assert (= bs!1836465 (and d!2158042 d!2158018)))

(assert (=> bs!1836465 (= lambda!388716 lambda!388714)))

(declare-fun bs!1836466 () Bool)

(assert (= bs!1836466 (and d!2158042 d!2158016)))

(assert (=> bs!1836466 (= lambda!388716 lambda!388712)))

(declare-fun bs!1836467 () Bool)

(assert (= bs!1836467 (and d!2158042 d!2157904)))

(assert (=> bs!1836467 (not (= lambda!388716 lambda!388703))))

(declare-fun bs!1836468 () Bool)

(assert (= bs!1836468 (and d!2158042 d!2157890)))

(assert (=> bs!1836468 (= lambda!388716 lambda!388697)))

(declare-fun bs!1836469 () Bool)

(assert (= bs!1836469 (and d!2158042 b!6867798)))

(assert (=> bs!1836469 (not (= lambda!388716 lambda!388571))))

(declare-fun bs!1836470 () Bool)

(assert (= bs!1836470 (and d!2158042 d!2157836)))

(assert (=> bs!1836470 (= lambda!388716 lambda!388688)))

(declare-fun bs!1836471 () Bool)

(assert (= bs!1836471 (and d!2158042 d!2157580)))

(assert (=> bs!1836471 (= lambda!388716 lambda!388640)))

(declare-fun bs!1836472 () Bool)

(assert (= bs!1836472 (and d!2158042 d!2157772)))

(assert (=> bs!1836472 (= lambda!388716 lambda!388675)))

(declare-fun bs!1836473 () Bool)

(assert (= bs!1836473 (and d!2158042 d!2157578)))

(assert (=> bs!1836473 (= lambda!388716 lambda!388636)))

(declare-fun bs!1836474 () Bool)

(assert (= bs!1836474 (and d!2158042 d!2157806)))

(assert (=> bs!1836474 (= lambda!388716 lambda!388679)))

(declare-fun bs!1836475 () Bool)

(assert (= bs!1836475 (and d!2158042 d!2158012)))

(assert (=> bs!1836475 (= lambda!388716 lambda!388710)))

(assert (=> bs!1836473 (not (= lambda!388716 lambda!388637))))

(declare-fun bs!1836476 () Bool)

(assert (= bs!1836476 (and d!2158042 d!2157854)))

(assert (=> bs!1836476 (= lambda!388716 lambda!388689)))

(declare-fun bs!1836477 () Bool)

(assert (= bs!1836477 (and d!2158042 d!2157534)))

(assert (=> bs!1836477 (= lambda!388716 lambda!388616)))

(declare-fun bs!1836478 () Bool)

(assert (= bs!1836478 (and d!2158042 d!2157866)))

(assert (=> bs!1836478 (= lambda!388716 lambda!388693)))

(declare-fun bs!1836479 () Bool)

(assert (= bs!1836479 (and d!2158042 d!2157582)))

(assert (=> bs!1836479 (= lambda!388716 lambda!388641)))

(declare-fun bs!1836480 () Bool)

(assert (= bs!1836480 (and d!2158042 d!2157834)))

(assert (=> bs!1836480 (= lambda!388716 lambda!388687)))

(declare-fun bs!1836481 () Bool)

(assert (= bs!1836481 (and d!2158042 d!2157576)))

(assert (=> bs!1836481 (not (= lambda!388716 lambda!388631))))

(declare-fun bs!1836482 () Bool)

(assert (= bs!1836482 (and d!2158042 d!2157872)))

(assert (=> bs!1836482 (= lambda!388716 lambda!388696)))

(assert (=> d!2158042 (= (inv!84989 setElem!47233) (forall!15890 (exprs!6581 setElem!47233) lambda!388716))))

(declare-fun bs!1836483 () Bool)

(assert (= bs!1836483 d!2158042))

(declare-fun m!7600726 () Bool)

(assert (=> bs!1836483 m!7600726))

(assert (=> setNonEmpty!47233 d!2158042))

(declare-fun d!2158044 () Bool)

(assert (=> d!2158044 (= (head!13781 (t!380133 (exprs!6581 lt!2458040))) (h!72714 (t!380133 (exprs!6581 lt!2458040))))))

(assert (=> b!6869030 d!2158044))

(declare-fun d!2158046 () Bool)

(assert (=> d!2158046 (= (isEmpty!38627 (tail!12835 (tail!12835 s!2326))) ((_ is Nil!66268) (tail!12835 (tail!12835 s!2326))))))

(assert (=> b!6868848 d!2158046))

(declare-fun d!2158048 () Bool)

(assert (=> d!2158048 (= (tail!12835 (tail!12835 s!2326)) (t!380135 (tail!12835 s!2326)))))

(assert (=> b!6868848 d!2158048))

(declare-fun b!6869407 () Bool)

(declare-fun e!4140885 () Bool)

(declare-fun call!625682 () Bool)

(assert (=> b!6869407 (= e!4140885 call!625682)))

(declare-fun bm!625676 () Bool)

(declare-fun c!1278539 () Bool)

(declare-fun c!1278540 () Bool)

(declare-fun call!625681 () Bool)

(assert (=> bm!625676 (= call!625681 (validRegex!8433 (ite c!1278539 (reg!17026 (ite c!1278398 (regTwo!33907 lt!2458112) (regTwo!33906 lt!2458112))) (ite c!1278540 (regOne!33907 (ite c!1278398 (regTwo!33907 lt!2458112) (regTwo!33906 lt!2458112))) (regOne!33906 (ite c!1278398 (regTwo!33907 lt!2458112) (regTwo!33906 lt!2458112)))))))))

(declare-fun bm!625677 () Bool)

(declare-fun call!625683 () Bool)

(assert (=> bm!625677 (= call!625683 call!625681)))

(declare-fun b!6869408 () Bool)

(declare-fun e!4140887 () Bool)

(assert (=> b!6869408 (= e!4140887 call!625681)))

(declare-fun bm!625678 () Bool)

(assert (=> bm!625678 (= call!625682 (validRegex!8433 (ite c!1278540 (regTwo!33907 (ite c!1278398 (regTwo!33907 lt!2458112) (regTwo!33906 lt!2458112))) (regTwo!33906 (ite c!1278398 (regTwo!33907 lt!2458112) (regTwo!33906 lt!2458112))))))))

(declare-fun b!6869409 () Bool)

(declare-fun e!4140891 () Bool)

(assert (=> b!6869409 (= e!4140891 e!4140885)))

(declare-fun res!2801847 () Bool)

(assert (=> b!6869409 (=> (not res!2801847) (not e!4140885))))

(assert (=> b!6869409 (= res!2801847 call!625683)))

(declare-fun d!2158050 () Bool)

(declare-fun res!2801846 () Bool)

(declare-fun e!4140889 () Bool)

(assert (=> d!2158050 (=> res!2801846 e!4140889)))

(assert (=> d!2158050 (= res!2801846 ((_ is ElementMatch!16697) (ite c!1278398 (regTwo!33907 lt!2458112) (regTwo!33906 lt!2458112))))))

(assert (=> d!2158050 (= (validRegex!8433 (ite c!1278398 (regTwo!33907 lt!2458112) (regTwo!33906 lt!2458112))) e!4140889)))

(declare-fun b!6869410 () Bool)

(declare-fun res!2801845 () Bool)

(declare-fun e!4140888 () Bool)

(assert (=> b!6869410 (=> (not res!2801845) (not e!4140888))))

(assert (=> b!6869410 (= res!2801845 call!625683)))

(declare-fun e!4140890 () Bool)

(assert (=> b!6869410 (= e!4140890 e!4140888)))

(declare-fun b!6869411 () Bool)

(assert (=> b!6869411 (= e!4140888 call!625682)))

(declare-fun b!6869412 () Bool)

(declare-fun res!2801848 () Bool)

(assert (=> b!6869412 (=> res!2801848 e!4140891)))

(assert (=> b!6869412 (= res!2801848 (not ((_ is Concat!25542) (ite c!1278398 (regTwo!33907 lt!2458112) (regTwo!33906 lt!2458112)))))))

(assert (=> b!6869412 (= e!4140890 e!4140891)))

(declare-fun b!6869413 () Bool)

(declare-fun e!4140886 () Bool)

(assert (=> b!6869413 (= e!4140886 e!4140890)))

(assert (=> b!6869413 (= c!1278540 ((_ is Union!16697) (ite c!1278398 (regTwo!33907 lt!2458112) (regTwo!33906 lt!2458112))))))

(declare-fun b!6869414 () Bool)

(assert (=> b!6869414 (= e!4140889 e!4140886)))

(assert (=> b!6869414 (= c!1278539 ((_ is Star!16697) (ite c!1278398 (regTwo!33907 lt!2458112) (regTwo!33906 lt!2458112))))))

(declare-fun b!6869415 () Bool)

(assert (=> b!6869415 (= e!4140886 e!4140887)))

(declare-fun res!2801849 () Bool)

(assert (=> b!6869415 (= res!2801849 (not (nullable!6658 (reg!17026 (ite c!1278398 (regTwo!33907 lt!2458112) (regTwo!33906 lt!2458112))))))))

(assert (=> b!6869415 (=> (not res!2801849) (not e!4140887))))

(assert (= (and d!2158050 (not res!2801846)) b!6869414))

(assert (= (and b!6869414 c!1278539) b!6869415))

(assert (= (and b!6869414 (not c!1278539)) b!6869413))

(assert (= (and b!6869415 res!2801849) b!6869408))

(assert (= (and b!6869413 c!1278540) b!6869410))

(assert (= (and b!6869413 (not c!1278540)) b!6869412))

(assert (= (and b!6869410 res!2801845) b!6869411))

(assert (= (and b!6869412 (not res!2801848)) b!6869409))

(assert (= (and b!6869409 res!2801847) b!6869407))

(assert (= (or b!6869411 b!6869407) bm!625678))

(assert (= (or b!6869410 b!6869409) bm!625677))

(assert (= (or b!6869408 bm!625677) bm!625676))

(declare-fun m!7600728 () Bool)

(assert (=> bm!625676 m!7600728))

(declare-fun m!7600730 () Bool)

(assert (=> bm!625678 m!7600730))

(declare-fun m!7600732 () Bool)

(assert (=> b!6869415 m!7600732))

(assert (=> bm!625610 d!2158050))

(declare-fun b!6869416 () Bool)

(declare-fun c!1278543 () Bool)

(assert (=> b!6869416 (= c!1278543 ((_ is Union!16697) (h!72714 (exprs!6581 (h!72715 lt!2458043)))))))

(declare-fun e!4140893 () Int)

(declare-fun e!4140895 () Int)

(assert (=> b!6869416 (= e!4140893 e!4140895)))

(declare-fun b!6869417 () Bool)

(declare-fun e!4140894 () Int)

(assert (=> b!6869417 (= e!4140894 e!4140893)))

(declare-fun c!1278544 () Bool)

(assert (=> b!6869417 (= c!1278544 ((_ is Star!16697) (h!72714 (exprs!6581 (h!72715 lt!2458043)))))))

(declare-fun d!2158052 () Bool)

(declare-fun lt!2458202 () Int)

(assert (=> d!2158052 (> lt!2458202 0)))

(assert (=> d!2158052 (= lt!2458202 e!4140894)))

(declare-fun c!1278542 () Bool)

(assert (=> d!2158052 (= c!1278542 ((_ is ElementMatch!16697) (h!72714 (exprs!6581 (h!72715 lt!2458043)))))))

(assert (=> d!2158052 (= (regexDepthTotal!263 (h!72714 (exprs!6581 (h!72715 lt!2458043)))) lt!2458202)))

(declare-fun b!6869418 () Bool)

(assert (=> b!6869418 (= e!4140894 1)))

(declare-fun b!6869419 () Bool)

(declare-fun e!4140892 () Int)

(assert (=> b!6869419 (= e!4140895 e!4140892)))

(declare-fun c!1278541 () Bool)

(assert (=> b!6869419 (= c!1278541 ((_ is Concat!25542) (h!72714 (exprs!6581 (h!72715 lt!2458043)))))))

(declare-fun b!6869420 () Bool)

(declare-fun call!625685 () Int)

(assert (=> b!6869420 (= e!4140893 (+ 1 call!625685))))

(declare-fun bm!625679 () Bool)

(declare-fun call!625686 () Int)

(assert (=> bm!625679 (= call!625686 (regexDepthTotal!263 (ite c!1278543 (regOne!33907 (h!72714 (exprs!6581 (h!72715 lt!2458043)))) (regOne!33906 (h!72714 (exprs!6581 (h!72715 lt!2458043)))))))))

(declare-fun b!6869421 () Bool)

(declare-fun call!625684 () Int)

(assert (=> b!6869421 (= e!4140895 (+ 1 call!625686 call!625684))))

(declare-fun b!6869422 () Bool)

(assert (=> b!6869422 (= e!4140892 (+ 1 call!625686 call!625684))))

(declare-fun b!6869423 () Bool)

(assert (=> b!6869423 (= e!4140892 1)))

(declare-fun bm!625680 () Bool)

(assert (=> bm!625680 (= call!625684 call!625685)))

(declare-fun bm!625681 () Bool)

(assert (=> bm!625681 (= call!625685 (regexDepthTotal!263 (ite c!1278544 (reg!17026 (h!72714 (exprs!6581 (h!72715 lt!2458043)))) (ite c!1278543 (regTwo!33907 (h!72714 (exprs!6581 (h!72715 lt!2458043)))) (regTwo!33906 (h!72714 (exprs!6581 (h!72715 lt!2458043))))))))))

(assert (= (and d!2158052 c!1278542) b!6869418))

(assert (= (and d!2158052 (not c!1278542)) b!6869417))

(assert (= (and b!6869417 c!1278544) b!6869420))

(assert (= (and b!6869417 (not c!1278544)) b!6869416))

(assert (= (and b!6869416 c!1278543) b!6869421))

(assert (= (and b!6869416 (not c!1278543)) b!6869419))

(assert (= (and b!6869419 c!1278541) b!6869422))

(assert (= (and b!6869419 (not c!1278541)) b!6869423))

(assert (= (or b!6869421 b!6869422) bm!625680))

(assert (= (or b!6869421 b!6869422) bm!625679))

(assert (= (or b!6869420 bm!625680) bm!625681))

(declare-fun m!7600736 () Bool)

(assert (=> bm!625679 m!7600736))

(declare-fun m!7600740 () Bool)

(assert (=> bm!625681 m!7600740))

(assert (=> b!6869018 d!2158052))

(declare-fun d!2158056 () Bool)

(declare-fun lt!2458204 () Int)

(assert (=> d!2158056 (>= lt!2458204 0)))

(declare-fun e!4140896 () Int)

(assert (=> d!2158056 (= lt!2458204 e!4140896)))

(declare-fun c!1278545 () Bool)

(assert (=> d!2158056 (= c!1278545 ((_ is Cons!66266) (exprs!6581 (Context!12163 (t!380133 (exprs!6581 (h!72715 lt!2458043)))))))))

(assert (=> d!2158056 (= (contextDepthTotal!418 (Context!12163 (t!380133 (exprs!6581 (h!72715 lt!2458043))))) lt!2458204)))

(declare-fun b!6869424 () Bool)

(assert (=> b!6869424 (= e!4140896 (+ (regexDepthTotal!263 (h!72714 (exprs!6581 (Context!12163 (t!380133 (exprs!6581 (h!72715 lt!2458043))))))) (contextDepthTotal!418 (Context!12163 (t!380133 (exprs!6581 (Context!12163 (t!380133 (exprs!6581 (h!72715 lt!2458043))))))))))))

(declare-fun b!6869425 () Bool)

(assert (=> b!6869425 (= e!4140896 1)))

(assert (= (and d!2158056 c!1278545) b!6869424))

(assert (= (and d!2158056 (not c!1278545)) b!6869425))

(declare-fun m!7600742 () Bool)

(assert (=> b!6869424 m!7600742))

(declare-fun m!7600744 () Bool)

(assert (=> b!6869424 m!7600744))

(assert (=> b!6869018 d!2158056))

(declare-fun b!6869428 () Bool)

(declare-fun c!1278548 () Bool)

(assert (=> b!6869428 (= c!1278548 ((_ is Union!16697) (h!72714 (exprs!6581 (Context!12163 (t!380133 (exprs!6581 lt!2458040)))))))))

(declare-fun e!4140900 () Int)

(declare-fun e!4140902 () Int)

(assert (=> b!6869428 (= e!4140900 e!4140902)))

(declare-fun b!6869429 () Bool)

(declare-fun e!4140901 () Int)

(assert (=> b!6869429 (= e!4140901 e!4140900)))

(declare-fun c!1278549 () Bool)

(assert (=> b!6869429 (= c!1278549 ((_ is Star!16697) (h!72714 (exprs!6581 (Context!12163 (t!380133 (exprs!6581 lt!2458040)))))))))

(declare-fun d!2158058 () Bool)

(declare-fun lt!2458206 () Int)

(assert (=> d!2158058 (> lt!2458206 0)))

(assert (=> d!2158058 (= lt!2458206 e!4140901)))

(declare-fun c!1278547 () Bool)

(assert (=> d!2158058 (= c!1278547 ((_ is ElementMatch!16697) (h!72714 (exprs!6581 (Context!12163 (t!380133 (exprs!6581 lt!2458040)))))))))

(assert (=> d!2158058 (= (regexDepthTotal!263 (h!72714 (exprs!6581 (Context!12163 (t!380133 (exprs!6581 lt!2458040)))))) lt!2458206)))

(declare-fun b!6869430 () Bool)

(assert (=> b!6869430 (= e!4140901 1)))

(declare-fun b!6869431 () Bool)

(declare-fun e!4140899 () Int)

(assert (=> b!6869431 (= e!4140902 e!4140899)))

(declare-fun c!1278546 () Bool)

(assert (=> b!6869431 (= c!1278546 ((_ is Concat!25542) (h!72714 (exprs!6581 (Context!12163 (t!380133 (exprs!6581 lt!2458040)))))))))

(declare-fun b!6869432 () Bool)

(declare-fun call!625688 () Int)

(assert (=> b!6869432 (= e!4140900 (+ 1 call!625688))))

(declare-fun bm!625682 () Bool)

(declare-fun call!625689 () Int)

(assert (=> bm!625682 (= call!625689 (regexDepthTotal!263 (ite c!1278548 (regOne!33907 (h!72714 (exprs!6581 (Context!12163 (t!380133 (exprs!6581 lt!2458040)))))) (regOne!33906 (h!72714 (exprs!6581 (Context!12163 (t!380133 (exprs!6581 lt!2458040)))))))))))

(declare-fun b!6869433 () Bool)

(declare-fun call!625687 () Int)

(assert (=> b!6869433 (= e!4140902 (+ 1 call!625689 call!625687))))

(declare-fun b!6869434 () Bool)

(assert (=> b!6869434 (= e!4140899 (+ 1 call!625689 call!625687))))

(declare-fun b!6869435 () Bool)

(assert (=> b!6869435 (= e!4140899 1)))

(declare-fun bm!625683 () Bool)

(assert (=> bm!625683 (= call!625687 call!625688)))

(declare-fun bm!625684 () Bool)

(assert (=> bm!625684 (= call!625688 (regexDepthTotal!263 (ite c!1278549 (reg!17026 (h!72714 (exprs!6581 (Context!12163 (t!380133 (exprs!6581 lt!2458040)))))) (ite c!1278548 (regTwo!33907 (h!72714 (exprs!6581 (Context!12163 (t!380133 (exprs!6581 lt!2458040)))))) (regTwo!33906 (h!72714 (exprs!6581 (Context!12163 (t!380133 (exprs!6581 lt!2458040))))))))))))

(assert (= (and d!2158058 c!1278547) b!6869430))

(assert (= (and d!2158058 (not c!1278547)) b!6869429))

(assert (= (and b!6869429 c!1278549) b!6869432))

(assert (= (and b!6869429 (not c!1278549)) b!6869428))

(assert (= (and b!6869428 c!1278548) b!6869433))

(assert (= (and b!6869428 (not c!1278548)) b!6869431))

(assert (= (and b!6869431 c!1278546) b!6869434))

(assert (= (and b!6869431 (not c!1278546)) b!6869435))

(assert (= (or b!6869433 b!6869434) bm!625683))

(assert (= (or b!6869433 b!6869434) bm!625682))

(assert (= (or b!6869432 bm!625683) bm!625684))

(declare-fun m!7600750 () Bool)

(assert (=> bm!625682 m!7600750))

(declare-fun m!7600752 () Bool)

(assert (=> bm!625684 m!7600752))

(assert (=> b!6868804 d!2158058))

(declare-fun d!2158062 () Bool)

(declare-fun lt!2458208 () Int)

(assert (=> d!2158062 (>= lt!2458208 0)))

(declare-fun e!4140909 () Int)

(assert (=> d!2158062 (= lt!2458208 e!4140909)))

(declare-fun c!1278554 () Bool)

(assert (=> d!2158062 (= c!1278554 ((_ is Cons!66266) (exprs!6581 (Context!12163 (t!380133 (exprs!6581 (Context!12163 (t!380133 (exprs!6581 lt!2458040)))))))))))

(assert (=> d!2158062 (= (contextDepthTotal!418 (Context!12163 (t!380133 (exprs!6581 (Context!12163 (t!380133 (exprs!6581 lt!2458040))))))) lt!2458208)))

(declare-fun b!6869446 () Bool)

(assert (=> b!6869446 (= e!4140909 (+ (regexDepthTotal!263 (h!72714 (exprs!6581 (Context!12163 (t!380133 (exprs!6581 (Context!12163 (t!380133 (exprs!6581 lt!2458040))))))))) (contextDepthTotal!418 (Context!12163 (t!380133 (exprs!6581 (Context!12163 (t!380133 (exprs!6581 (Context!12163 (t!380133 (exprs!6581 lt!2458040))))))))))))))

(declare-fun b!6869447 () Bool)

(assert (=> b!6869447 (= e!4140909 1)))

(assert (= (and d!2158062 c!1278554) b!6869446))

(assert (= (and d!2158062 (not c!1278554)) b!6869447))

(declare-fun m!7600754 () Bool)

(assert (=> b!6869446 m!7600754))

(declare-fun m!7600756 () Bool)

(assert (=> b!6869446 m!7600756))

(assert (=> b!6868804 d!2158062))

(declare-fun d!2158064 () Bool)

(assert (=> d!2158064 (= (isEmpty!38628 (unfocusZipperList!2114 zl!343)) ((_ is Nil!66266) (unfocusZipperList!2114 zl!343)))))

(assert (=> b!6868841 d!2158064))

(declare-fun b!6869448 () Bool)

(declare-fun e!4140914 () Regex!16697)

(declare-fun e!4140911 () Regex!16697)

(assert (=> b!6869448 (= e!4140914 e!4140911)))

(declare-fun c!1278559 () Bool)

(assert (=> b!6869448 (= c!1278559 ((_ is Star!16697) (ite c!1278426 (regTwo!33907 r!7292) (ite c!1278425 (regTwo!33906 r!7292) (regOne!33906 r!7292)))))))

(declare-fun b!6869449 () Bool)

(declare-fun call!625691 () Regex!16697)

(declare-fun call!625693 () Regex!16697)

(assert (=> b!6869449 (= e!4140914 (Union!16697 call!625691 call!625693))))

(declare-fun bm!625685 () Bool)

(declare-fun call!625690 () Regex!16697)

(assert (=> bm!625685 (= call!625690 call!625693)))

(declare-fun e!4140910 () Regex!16697)

(declare-fun b!6869450 () Bool)

(assert (=> b!6869450 (= e!4140910 (Union!16697 (Concat!25542 call!625690 (regTwo!33906 (ite c!1278426 (regTwo!33907 r!7292) (ite c!1278425 (regTwo!33906 r!7292) (regOne!33906 r!7292))))) EmptyLang!16697))))

(declare-fun b!6869451 () Bool)

(declare-fun e!4140913 () Regex!16697)

(assert (=> b!6869451 (= e!4140913 EmptyLang!16697)))

(declare-fun c!1278557 () Bool)

(declare-fun bm!625686 () Bool)

(assert (=> bm!625686 (= call!625691 (derivativeStep!5340 (ite c!1278557 (regOne!33907 (ite c!1278426 (regTwo!33907 r!7292) (ite c!1278425 (regTwo!33906 r!7292) (regOne!33906 r!7292)))) (ite c!1278559 (reg!17026 (ite c!1278426 (regTwo!33907 r!7292) (ite c!1278425 (regTwo!33906 r!7292) (regOne!33906 r!7292)))) (regOne!33906 (ite c!1278426 (regTwo!33907 r!7292) (ite c!1278425 (regTwo!33906 r!7292) (regOne!33906 r!7292)))))) (head!13779 s!2326)))))

(declare-fun b!6869452 () Bool)

(declare-fun call!625692 () Regex!16697)

(assert (=> b!6869452 (= e!4140910 (Union!16697 (Concat!25542 call!625692 (regTwo!33906 (ite c!1278426 (regTwo!33907 r!7292) (ite c!1278425 (regTwo!33906 r!7292) (regOne!33906 r!7292))))) call!625690))))

(declare-fun bm!625687 () Bool)

(assert (=> bm!625687 (= call!625692 call!625691)))

(declare-fun bm!625688 () Bool)

(declare-fun c!1278556 () Bool)

(assert (=> bm!625688 (= call!625693 (derivativeStep!5340 (ite c!1278557 (regTwo!33907 (ite c!1278426 (regTwo!33907 r!7292) (ite c!1278425 (regTwo!33906 r!7292) (regOne!33906 r!7292)))) (ite c!1278556 (regTwo!33906 (ite c!1278426 (regTwo!33907 r!7292) (ite c!1278425 (regTwo!33906 r!7292) (regOne!33906 r!7292)))) (regOne!33906 (ite c!1278426 (regTwo!33907 r!7292) (ite c!1278425 (regTwo!33906 r!7292) (regOne!33906 r!7292)))))) (head!13779 s!2326)))))

(declare-fun b!6869453 () Bool)

(assert (=> b!6869453 (= c!1278557 ((_ is Union!16697) (ite c!1278426 (regTwo!33907 r!7292) (ite c!1278425 (regTwo!33906 r!7292) (regOne!33906 r!7292)))))))

(declare-fun e!4140912 () Regex!16697)

(assert (=> b!6869453 (= e!4140912 e!4140914)))

(declare-fun b!6869454 () Bool)

(assert (=> b!6869454 (= c!1278556 (nullable!6658 (regOne!33906 (ite c!1278426 (regTwo!33907 r!7292) (ite c!1278425 (regTwo!33906 r!7292) (regOne!33906 r!7292))))))))

(assert (=> b!6869454 (= e!4140911 e!4140910)))

(declare-fun b!6869456 () Bool)

(assert (=> b!6869456 (= e!4140913 e!4140912)))

(declare-fun c!1278555 () Bool)

(assert (=> b!6869456 (= c!1278555 ((_ is ElementMatch!16697) (ite c!1278426 (regTwo!33907 r!7292) (ite c!1278425 (regTwo!33906 r!7292) (regOne!33906 r!7292)))))))

(declare-fun b!6869457 () Bool)

(assert (=> b!6869457 (= e!4140912 (ite (= (head!13779 s!2326) (c!1278149 (ite c!1278426 (regTwo!33907 r!7292) (ite c!1278425 (regTwo!33906 r!7292) (regOne!33906 r!7292))))) EmptyExpr!16697 EmptyLang!16697))))

(declare-fun b!6869455 () Bool)

(assert (=> b!6869455 (= e!4140911 (Concat!25542 call!625692 (ite c!1278426 (regTwo!33907 r!7292) (ite c!1278425 (regTwo!33906 r!7292) (regOne!33906 r!7292)))))))

(declare-fun d!2158066 () Bool)

(declare-fun lt!2458209 () Regex!16697)

(assert (=> d!2158066 (validRegex!8433 lt!2458209)))

(assert (=> d!2158066 (= lt!2458209 e!4140913)))

(declare-fun c!1278558 () Bool)

(assert (=> d!2158066 (= c!1278558 (or ((_ is EmptyExpr!16697) (ite c!1278426 (regTwo!33907 r!7292) (ite c!1278425 (regTwo!33906 r!7292) (regOne!33906 r!7292)))) ((_ is EmptyLang!16697) (ite c!1278426 (regTwo!33907 r!7292) (ite c!1278425 (regTwo!33906 r!7292) (regOne!33906 r!7292))))))))

(assert (=> d!2158066 (validRegex!8433 (ite c!1278426 (regTwo!33907 r!7292) (ite c!1278425 (regTwo!33906 r!7292) (regOne!33906 r!7292))))))

(assert (=> d!2158066 (= (derivativeStep!5340 (ite c!1278426 (regTwo!33907 r!7292) (ite c!1278425 (regTwo!33906 r!7292) (regOne!33906 r!7292))) (head!13779 s!2326)) lt!2458209)))

(assert (= (and d!2158066 c!1278558) b!6869451))

(assert (= (and d!2158066 (not c!1278558)) b!6869456))

(assert (= (and b!6869456 c!1278555) b!6869457))

(assert (= (and b!6869456 (not c!1278555)) b!6869453))

(assert (= (and b!6869453 c!1278557) b!6869449))

(assert (= (and b!6869453 (not c!1278557)) b!6869448))

(assert (= (and b!6869448 c!1278559) b!6869455))

(assert (= (and b!6869448 (not c!1278559)) b!6869454))

(assert (= (and b!6869454 c!1278556) b!6869452))

(assert (= (and b!6869454 (not c!1278556)) b!6869450))

(assert (= (or b!6869452 b!6869450) bm!625685))

(assert (= (or b!6869455 b!6869452) bm!625687))

(assert (= (or b!6869449 bm!625685) bm!625688))

(assert (= (or b!6869449 bm!625687) bm!625686))

(assert (=> bm!625686 m!7599586))

(declare-fun m!7600758 () Bool)

(assert (=> bm!625686 m!7600758))

(assert (=> bm!625688 m!7599586))

(declare-fun m!7600760 () Bool)

(assert (=> bm!625688 m!7600760))

(declare-fun m!7600762 () Bool)

(assert (=> b!6869454 m!7600762))

(declare-fun m!7600764 () Bool)

(assert (=> d!2158066 m!7600764))

(declare-fun m!7600766 () Bool)

(assert (=> d!2158066 m!7600766))

(assert (=> bm!625623 d!2158066))

(declare-fun bs!1836499 () Bool)

(declare-fun d!2158068 () Bool)

(assert (= bs!1836499 (and d!2158068 b!6867794)))

(declare-fun lambda!388718 () Int)

(assert (=> bs!1836499 (not (= lambda!388718 lambda!388572))))

(declare-fun bs!1836501 () Bool)

(assert (= bs!1836501 (and d!2158068 d!2157558)))

(assert (=> bs!1836501 (not (= lambda!388718 lambda!388625))))

(declare-fun bs!1836503 () Bool)

(assert (= bs!1836503 (and d!2158068 d!2157556)))

(assert (=> bs!1836503 (not (= lambda!388718 lambda!388622))))

(declare-fun bs!1836504 () Bool)

(assert (= bs!1836504 (and d!2158068 d!2157788)))

(assert (=> bs!1836504 (= lambda!388718 lambda!388678)))

(declare-fun bs!1836506 () Bool)

(assert (= bs!1836506 (and d!2158068 d!2157818)))

(assert (=> bs!1836506 (not (= lambda!388718 lambda!388681))))

(declare-fun bs!1836507 () Bool)

(assert (= bs!1836507 (and d!2158068 d!2157820)))

(assert (=> bs!1836507 (not (= lambda!388718 lambda!388684))))

(assert (=> d!2158068 (= (nullableZipper!2370 (derivationStepZipper!2617 z!1189 (head!13779 s!2326))) (exists!2831 (derivationStepZipper!2617 z!1189 (head!13779 s!2326)) lambda!388718))))

(declare-fun bs!1836510 () Bool)

(assert (= bs!1836510 d!2158068))

(assert (=> bs!1836510 m!7599738))

(declare-fun m!7600768 () Bool)

(assert (=> bs!1836510 m!7600768))

(assert (=> b!6869014 d!2158068))

(declare-fun bs!1836512 () Bool)

(declare-fun d!2158070 () Bool)

(assert (= bs!1836512 (and d!2158070 b!6867794)))

(declare-fun lambda!388719 () Int)

(assert (=> bs!1836512 (not (= lambda!388719 lambda!388572))))

(declare-fun bs!1836514 () Bool)

(assert (= bs!1836514 (and d!2158070 d!2157558)))

(assert (=> bs!1836514 (not (= lambda!388719 lambda!388625))))

(declare-fun bs!1836515 () Bool)

(assert (= bs!1836515 (and d!2158070 d!2157556)))

(assert (=> bs!1836515 (not (= lambda!388719 lambda!388622))))

(declare-fun bs!1836517 () Bool)

(assert (= bs!1836517 (and d!2158070 d!2158068)))

(assert (=> bs!1836517 (= lambda!388719 lambda!388718)))

(declare-fun bs!1836518 () Bool)

(assert (= bs!1836518 (and d!2158070 d!2157788)))

(assert (=> bs!1836518 (= lambda!388719 lambda!388678)))

(declare-fun bs!1836520 () Bool)

(assert (= bs!1836520 (and d!2158070 d!2157818)))

(assert (=> bs!1836520 (not (= lambda!388719 lambda!388681))))

(declare-fun bs!1836521 () Bool)

(assert (= bs!1836521 (and d!2158070 d!2157820)))

(assert (=> bs!1836521 (not (= lambda!388719 lambda!388684))))

(assert (=> d!2158070 (= (nullableZipper!2370 (content!13010 zl!343)) (exists!2831 (content!13010 zl!343) lambda!388719))))

(declare-fun bs!1836523 () Bool)

(assert (= bs!1836523 d!2158070))

(assert (=> bs!1836523 m!7599684))

(declare-fun m!7600770 () Bool)

(assert (=> bs!1836523 m!7600770))

(assert (=> b!6868960 d!2158070))

(declare-fun b!6869458 () Bool)

(declare-fun e!4140917 () Bool)

(assert (=> b!6869458 (= e!4140917 (dynLambda!26530 lambda!388572 (h!72715 (t!380134 (t!380134 zl!343)))))))

(declare-fun d!2158072 () Bool)

(declare-fun e!4140915 () Bool)

(assert (=> d!2158072 e!4140915))

(declare-fun res!2801855 () Bool)

(assert (=> d!2158072 (=> (not res!2801855) (not e!4140915))))

(declare-fun lt!2458210 () Context!12162)

(assert (=> d!2158072 (= res!2801855 (dynLambda!26530 lambda!388572 lt!2458210))))

(declare-fun e!4140916 () Context!12162)

(assert (=> d!2158072 (= lt!2458210 e!4140916)))

(declare-fun c!1278561 () Bool)

(assert (=> d!2158072 (= c!1278561 e!4140917)))

(declare-fun res!2801854 () Bool)

(assert (=> d!2158072 (=> (not res!2801854) (not e!4140917))))

(assert (=> d!2158072 (= res!2801854 ((_ is Cons!66267) (t!380134 (t!380134 zl!343))))))

(assert (=> d!2158072 (exists!2828 (t!380134 (t!380134 zl!343)) lambda!388572)))

(assert (=> d!2158072 (= (getWitness!976 (t!380134 (t!380134 zl!343)) lambda!388572) lt!2458210)))

(declare-fun b!6869459 () Bool)

(declare-fun lt!2458211 () Unit!160165)

(declare-fun Unit!160171 () Unit!160165)

(assert (=> b!6869459 (= lt!2458211 Unit!160171)))

(assert (=> b!6869459 false))

(declare-fun e!4140918 () Context!12162)

(assert (=> b!6869459 (= e!4140918 (head!13780 (t!380134 (t!380134 zl!343))))))

(declare-fun b!6869460 () Bool)

(assert (=> b!6869460 (= e!4140915 (contains!20355 (t!380134 (t!380134 zl!343)) lt!2458210))))

(declare-fun b!6869461 () Bool)

(assert (=> b!6869461 (= e!4140916 (h!72715 (t!380134 (t!380134 zl!343))))))

(declare-fun b!6869462 () Bool)

(assert (=> b!6869462 (= e!4140918 (getWitness!976 (t!380134 (t!380134 (t!380134 zl!343))) lambda!388572))))

(declare-fun b!6869463 () Bool)

(assert (=> b!6869463 (= e!4140916 e!4140918)))

(declare-fun c!1278560 () Bool)

(assert (=> b!6869463 (= c!1278560 ((_ is Cons!66267) (t!380134 (t!380134 zl!343))))))

(assert (= (and d!2158072 res!2801854) b!6869458))

(assert (= (and d!2158072 c!1278561) b!6869461))

(assert (= (and d!2158072 (not c!1278561)) b!6869463))

(assert (= (and b!6869463 c!1278560) b!6869462))

(assert (= (and b!6869463 (not c!1278560)) b!6869459))

(assert (= (and d!2158072 res!2801855) b!6869460))

(declare-fun b_lambda!259915 () Bool)

(assert (=> (not b_lambda!259915) (not b!6869458)))

(declare-fun b_lambda!259917 () Bool)

(assert (=> (not b_lambda!259917) (not d!2158072)))

(declare-fun m!7600772 () Bool)

(assert (=> b!6869462 m!7600772))

(declare-fun m!7600774 () Bool)

(assert (=> b!6869458 m!7600774))

(declare-fun m!7600776 () Bool)

(assert (=> d!2158072 m!7600776))

(declare-fun m!7600778 () Bool)

(assert (=> d!2158072 m!7600778))

(declare-fun m!7600780 () Bool)

(assert (=> b!6869459 m!7600780))

(declare-fun m!7600782 () Bool)

(assert (=> b!6869460 m!7600782))

(assert (=> b!6869012 d!2158072))

(declare-fun b!6869464 () Bool)

(declare-fun e!4140919 () Bool)

(declare-fun call!625695 () Bool)

(assert (=> b!6869464 (= e!4140919 call!625695)))

(declare-fun c!1278562 () Bool)

(declare-fun call!625694 () Bool)

(declare-fun bm!625689 () Bool)

(declare-fun c!1278563 () Bool)

(assert (=> bm!625689 (= call!625694 (validRegex!8433 (ite c!1278562 (reg!17026 (ite c!1278439 (regTwo!33907 lt!2458097) (regTwo!33906 lt!2458097))) (ite c!1278563 (regOne!33907 (ite c!1278439 (regTwo!33907 lt!2458097) (regTwo!33906 lt!2458097))) (regOne!33906 (ite c!1278439 (regTwo!33907 lt!2458097) (regTwo!33906 lt!2458097)))))))))

(declare-fun bm!625690 () Bool)

(declare-fun call!625696 () Bool)

(assert (=> bm!625690 (= call!625696 call!625694)))

(declare-fun b!6869465 () Bool)

(declare-fun e!4140921 () Bool)

(assert (=> b!6869465 (= e!4140921 call!625694)))

(declare-fun bm!625691 () Bool)

(assert (=> bm!625691 (= call!625695 (validRegex!8433 (ite c!1278563 (regTwo!33907 (ite c!1278439 (regTwo!33907 lt!2458097) (regTwo!33906 lt!2458097))) (regTwo!33906 (ite c!1278439 (regTwo!33907 lt!2458097) (regTwo!33906 lt!2458097))))))))

(declare-fun b!6869466 () Bool)

(declare-fun e!4140925 () Bool)

(assert (=> b!6869466 (= e!4140925 e!4140919)))

(declare-fun res!2801858 () Bool)

(assert (=> b!6869466 (=> (not res!2801858) (not e!4140919))))

(assert (=> b!6869466 (= res!2801858 call!625696)))

(declare-fun d!2158074 () Bool)

(declare-fun res!2801857 () Bool)

(declare-fun e!4140923 () Bool)

(assert (=> d!2158074 (=> res!2801857 e!4140923)))

(assert (=> d!2158074 (= res!2801857 ((_ is ElementMatch!16697) (ite c!1278439 (regTwo!33907 lt!2458097) (regTwo!33906 lt!2458097))))))

(assert (=> d!2158074 (= (validRegex!8433 (ite c!1278439 (regTwo!33907 lt!2458097) (regTwo!33906 lt!2458097))) e!4140923)))

(declare-fun b!6869467 () Bool)

(declare-fun res!2801856 () Bool)

(declare-fun e!4140922 () Bool)

(assert (=> b!6869467 (=> (not res!2801856) (not e!4140922))))

(assert (=> b!6869467 (= res!2801856 call!625696)))

(declare-fun e!4140924 () Bool)

(assert (=> b!6869467 (= e!4140924 e!4140922)))

(declare-fun b!6869468 () Bool)

(assert (=> b!6869468 (= e!4140922 call!625695)))

(declare-fun b!6869469 () Bool)

(declare-fun res!2801859 () Bool)

(assert (=> b!6869469 (=> res!2801859 e!4140925)))

(assert (=> b!6869469 (= res!2801859 (not ((_ is Concat!25542) (ite c!1278439 (regTwo!33907 lt!2458097) (regTwo!33906 lt!2458097)))))))

(assert (=> b!6869469 (= e!4140924 e!4140925)))

(declare-fun b!6869470 () Bool)

(declare-fun e!4140920 () Bool)

(assert (=> b!6869470 (= e!4140920 e!4140924)))

(assert (=> b!6869470 (= c!1278563 ((_ is Union!16697) (ite c!1278439 (regTwo!33907 lt!2458097) (regTwo!33906 lt!2458097))))))

(declare-fun b!6869471 () Bool)

(assert (=> b!6869471 (= e!4140923 e!4140920)))

(assert (=> b!6869471 (= c!1278562 ((_ is Star!16697) (ite c!1278439 (regTwo!33907 lt!2458097) (regTwo!33906 lt!2458097))))))

(declare-fun b!6869472 () Bool)

(assert (=> b!6869472 (= e!4140920 e!4140921)))

(declare-fun res!2801860 () Bool)

(assert (=> b!6869472 (= res!2801860 (not (nullable!6658 (reg!17026 (ite c!1278439 (regTwo!33907 lt!2458097) (regTwo!33906 lt!2458097))))))))

(assert (=> b!6869472 (=> (not res!2801860) (not e!4140921))))

(assert (= (and d!2158074 (not res!2801857)) b!6869471))

(assert (= (and b!6869471 c!1278562) b!6869472))

(assert (= (and b!6869471 (not c!1278562)) b!6869470))

(assert (= (and b!6869472 res!2801860) b!6869465))

(assert (= (and b!6869470 c!1278563) b!6869467))

(assert (= (and b!6869470 (not c!1278563)) b!6869469))

(assert (= (and b!6869467 res!2801856) b!6869468))

(assert (= (and b!6869469 (not res!2801859)) b!6869466))

(assert (= (and b!6869466 res!2801858) b!6869464))

(assert (= (or b!6869468 b!6869464) bm!625691))

(assert (= (or b!6869467 b!6869466) bm!625690))

(assert (= (or b!6869465 bm!625690) bm!625689))

(declare-fun m!7600798 () Bool)

(assert (=> bm!625689 m!7600798))

(declare-fun m!7600802 () Bool)

(assert (=> bm!625691 m!7600802))

(declare-fun m!7600806 () Bool)

(assert (=> b!6869472 m!7600806))

(assert (=> bm!625629 d!2158074))

(declare-fun bs!1836526 () Bool)

(declare-fun d!2158076 () Bool)

(assert (= bs!1836526 (and d!2158076 d!2157564)))

(declare-fun lambda!388720 () Int)

(assert (=> bs!1836526 (= lambda!388720 lambda!388628)))

(declare-fun bs!1836527 () Bool)

(assert (= bs!1836527 (and d!2158076 d!2157550)))

(assert (=> bs!1836527 (= lambda!388720 lambda!388619)))

(declare-fun bs!1836528 () Bool)

(assert (= bs!1836528 (and d!2158076 d!2157808)))

(assert (=> bs!1836528 (= lambda!388720 lambda!388680)))

(declare-fun bs!1836529 () Bool)

(assert (= bs!1836529 (and d!2158076 b!6867793)))

(assert (=> bs!1836529 (= lambda!388720 lambda!388573)))

(declare-fun bs!1836530 () Bool)

(assert (= bs!1836530 (and d!2158076 d!2157902)))

(assert (=> bs!1836530 (not (= lambda!388720 lambda!388700))))

(declare-fun bs!1836531 () Bool)

(assert (= bs!1836531 (and d!2158076 d!2158018)))

(assert (=> bs!1836531 (= lambda!388720 lambda!388714)))

(declare-fun bs!1836532 () Bool)

(assert (= bs!1836532 (and d!2158076 d!2158042)))

(assert (=> bs!1836532 (= lambda!388720 lambda!388716)))

(declare-fun bs!1836533 () Bool)

(assert (= bs!1836533 (and d!2158076 d!2158016)))

(assert (=> bs!1836533 (= lambda!388720 lambda!388712)))

(declare-fun bs!1836534 () Bool)

(assert (= bs!1836534 (and d!2158076 d!2157904)))

(assert (=> bs!1836534 (not (= lambda!388720 lambda!388703))))

(declare-fun bs!1836535 () Bool)

(assert (= bs!1836535 (and d!2158076 d!2157890)))

(assert (=> bs!1836535 (= lambda!388720 lambda!388697)))

(declare-fun bs!1836536 () Bool)

(assert (= bs!1836536 (and d!2158076 b!6867798)))

(assert (=> bs!1836536 (not (= lambda!388720 lambda!388571))))

(declare-fun bs!1836537 () Bool)

(assert (= bs!1836537 (and d!2158076 d!2157836)))

(assert (=> bs!1836537 (= lambda!388720 lambda!388688)))

(declare-fun bs!1836538 () Bool)

(assert (= bs!1836538 (and d!2158076 d!2157580)))

(assert (=> bs!1836538 (= lambda!388720 lambda!388640)))

(declare-fun bs!1836539 () Bool)

(assert (= bs!1836539 (and d!2158076 d!2157772)))

(assert (=> bs!1836539 (= lambda!388720 lambda!388675)))

(declare-fun bs!1836540 () Bool)

(assert (= bs!1836540 (and d!2158076 d!2157578)))

(assert (=> bs!1836540 (= lambda!388720 lambda!388636)))

(declare-fun bs!1836541 () Bool)

(assert (= bs!1836541 (and d!2158076 d!2157806)))

(assert (=> bs!1836541 (= lambda!388720 lambda!388679)))

(declare-fun bs!1836542 () Bool)

(assert (= bs!1836542 (and d!2158076 d!2158012)))

(assert (=> bs!1836542 (= lambda!388720 lambda!388710)))

(assert (=> bs!1836540 (not (= lambda!388720 lambda!388637))))

(declare-fun bs!1836543 () Bool)

(assert (= bs!1836543 (and d!2158076 d!2157854)))

(assert (=> bs!1836543 (= lambda!388720 lambda!388689)))

(declare-fun bs!1836544 () Bool)

(assert (= bs!1836544 (and d!2158076 d!2157534)))

(assert (=> bs!1836544 (= lambda!388720 lambda!388616)))

(declare-fun bs!1836545 () Bool)

(assert (= bs!1836545 (and d!2158076 d!2157866)))

(assert (=> bs!1836545 (= lambda!388720 lambda!388693)))

(declare-fun bs!1836546 () Bool)

(assert (= bs!1836546 (and d!2158076 d!2157582)))

(assert (=> bs!1836546 (= lambda!388720 lambda!388641)))

(declare-fun bs!1836548 () Bool)

(assert (= bs!1836548 (and d!2158076 d!2157834)))

(assert (=> bs!1836548 (= lambda!388720 lambda!388687)))

(declare-fun bs!1836549 () Bool)

(assert (= bs!1836549 (and d!2158076 d!2157576)))

(assert (=> bs!1836549 (not (= lambda!388720 lambda!388631))))

(declare-fun bs!1836550 () Bool)

(assert (= bs!1836550 (and d!2158076 d!2157872)))

(assert (=> bs!1836550 (= lambda!388720 lambda!388696)))

(assert (=> d!2158076 (= (inv!84989 (h!72715 res!2801660)) (forall!15890 (exprs!6581 (h!72715 res!2801660)) lambda!388720))))

(declare-fun bs!1836551 () Bool)

(assert (= bs!1836551 d!2158076))

(declare-fun m!7600816 () Bool)

(assert (=> bs!1836551 m!7600816))

(assert (=> b!6868901 d!2158076))

(declare-fun b!6869484 () Bool)

(declare-fun c!1278569 () Bool)

(assert (=> b!6869484 (= c!1278569 ((_ is Union!16697) (h!72714 (exprs!6581 (h!72715 zl!343)))))))

(declare-fun e!4140935 () Int)

(declare-fun e!4140937 () Int)

(assert (=> b!6869484 (= e!4140935 e!4140937)))

(declare-fun b!6869485 () Bool)

(declare-fun e!4140936 () Int)

(assert (=> b!6869485 (= e!4140936 e!4140935)))

(declare-fun c!1278570 () Bool)

(assert (=> b!6869485 (= c!1278570 ((_ is Star!16697) (h!72714 (exprs!6581 (h!72715 zl!343)))))))

(declare-fun d!2158086 () Bool)

(declare-fun lt!2458212 () Int)

(assert (=> d!2158086 (> lt!2458212 0)))

(assert (=> d!2158086 (= lt!2458212 e!4140936)))

(declare-fun c!1278568 () Bool)

(assert (=> d!2158086 (= c!1278568 ((_ is ElementMatch!16697) (h!72714 (exprs!6581 (h!72715 zl!343)))))))

(assert (=> d!2158086 (= (regexDepthTotal!263 (h!72714 (exprs!6581 (h!72715 zl!343)))) lt!2458212)))

(declare-fun b!6869486 () Bool)

(assert (=> b!6869486 (= e!4140936 1)))

(declare-fun b!6869487 () Bool)

(declare-fun e!4140934 () Int)

(assert (=> b!6869487 (= e!4140937 e!4140934)))

(declare-fun c!1278567 () Bool)

(assert (=> b!6869487 (= c!1278567 ((_ is Concat!25542) (h!72714 (exprs!6581 (h!72715 zl!343)))))))

(declare-fun b!6869488 () Bool)

(declare-fun call!625701 () Int)

(assert (=> b!6869488 (= e!4140935 (+ 1 call!625701))))

(declare-fun bm!625695 () Bool)

(declare-fun call!625702 () Int)

(assert (=> bm!625695 (= call!625702 (regexDepthTotal!263 (ite c!1278569 (regOne!33907 (h!72714 (exprs!6581 (h!72715 zl!343)))) (regOne!33906 (h!72714 (exprs!6581 (h!72715 zl!343)))))))))

(declare-fun b!6869489 () Bool)

(declare-fun call!625700 () Int)

(assert (=> b!6869489 (= e!4140937 (+ 1 call!625702 call!625700))))

(declare-fun b!6869490 () Bool)

(assert (=> b!6869490 (= e!4140934 (+ 1 call!625702 call!625700))))

(declare-fun b!6869491 () Bool)

(assert (=> b!6869491 (= e!4140934 1)))

(declare-fun bm!625696 () Bool)

(assert (=> bm!625696 (= call!625700 call!625701)))

(declare-fun bm!625697 () Bool)

(assert (=> bm!625697 (= call!625701 (regexDepthTotal!263 (ite c!1278570 (reg!17026 (h!72714 (exprs!6581 (h!72715 zl!343)))) (ite c!1278569 (regTwo!33907 (h!72714 (exprs!6581 (h!72715 zl!343)))) (regTwo!33906 (h!72714 (exprs!6581 (h!72715 zl!343))))))))))

(assert (= (and d!2158086 c!1278568) b!6869486))

(assert (= (and d!2158086 (not c!1278568)) b!6869485))

(assert (= (and b!6869485 c!1278570) b!6869488))

(assert (= (and b!6869485 (not c!1278570)) b!6869484))

(assert (= (and b!6869484 c!1278569) b!6869489))

(assert (= (and b!6869484 (not c!1278569)) b!6869487))

(assert (= (and b!6869487 c!1278567) b!6869490))

(assert (= (and b!6869487 (not c!1278567)) b!6869491))

(assert (= (or b!6869489 b!6869490) bm!625696))

(assert (= (or b!6869489 b!6869490) bm!625695))

(assert (= (or b!6869488 bm!625696) bm!625697))

(declare-fun m!7600824 () Bool)

(assert (=> bm!625695 m!7600824))

(declare-fun m!7600826 () Bool)

(assert (=> bm!625697 m!7600826))

(assert (=> b!6869064 d!2158086))

(declare-fun d!2158090 () Bool)

(declare-fun lt!2458213 () Int)

(assert (=> d!2158090 (>= lt!2458213 0)))

(declare-fun e!4140938 () Int)

(assert (=> d!2158090 (= lt!2458213 e!4140938)))

(declare-fun c!1278572 () Bool)

(assert (=> d!2158090 (= c!1278572 ((_ is Cons!66266) (exprs!6581 (Context!12163 (t!380133 (exprs!6581 (h!72715 zl!343)))))))))

(assert (=> d!2158090 (= (contextDepthTotal!418 (Context!12163 (t!380133 (exprs!6581 (h!72715 zl!343))))) lt!2458213)))

(declare-fun b!6869492 () Bool)

(assert (=> b!6869492 (= e!4140938 (+ (regexDepthTotal!263 (h!72714 (exprs!6581 (Context!12163 (t!380133 (exprs!6581 (h!72715 zl!343))))))) (contextDepthTotal!418 (Context!12163 (t!380133 (exprs!6581 (Context!12163 (t!380133 (exprs!6581 (h!72715 zl!343))))))))))))

(declare-fun b!6869493 () Bool)

(assert (=> b!6869493 (= e!4140938 1)))

(assert (= (and d!2158090 c!1278572) b!6869492))

(assert (= (and d!2158090 (not c!1278572)) b!6869493))

(declare-fun m!7600828 () Bool)

(assert (=> b!6869492 m!7600828))

(declare-fun m!7600830 () Bool)

(assert (=> b!6869492 m!7600830))

(assert (=> b!6869064 d!2158090))

(assert (=> bm!625645 d!2157790))

(assert (=> b!6868856 d!2158046))

(assert (=> b!6868856 d!2158048))

(declare-fun b!6869521 () Bool)

(declare-fun e!4140961 () Bool)

(declare-fun e!4140964 () Bool)

(assert (=> b!6869521 (= e!4140961 e!4140964)))

(declare-fun res!2801886 () Bool)

(declare-fun call!625710 () Bool)

(assert (=> b!6869521 (= res!2801886 call!625710)))

(assert (=> b!6869521 (=> res!2801886 e!4140964)))

(declare-fun b!6869522 () Bool)

(declare-fun e!4140963 () Bool)

(declare-fun e!4140966 () Bool)

(assert (=> b!6869522 (= e!4140963 e!4140966)))

(declare-fun res!2801887 () Bool)

(assert (=> b!6869522 (=> (not res!2801887) (not e!4140966))))

(assert (=> b!6869522 (= res!2801887 (and (not ((_ is EmptyLang!16697) r!7292)) (not ((_ is ElementMatch!16697) r!7292))))))

(declare-fun b!6869523 () Bool)

(declare-fun e!4140965 () Bool)

(assert (=> b!6869523 (= e!4140966 e!4140965)))

(declare-fun res!2801884 () Bool)

(assert (=> b!6869523 (=> res!2801884 e!4140965)))

(assert (=> b!6869523 (= res!2801884 ((_ is Star!16697) r!7292))))

(declare-fun bm!625705 () Bool)

(declare-fun c!1278577 () Bool)

(assert (=> bm!625705 (= call!625710 (nullable!6658 (ite c!1278577 (regOne!33907 r!7292) (regOne!33906 r!7292))))))

(declare-fun d!2158092 () Bool)

(declare-fun res!2801883 () Bool)

(assert (=> d!2158092 (=> res!2801883 e!4140963)))

(assert (=> d!2158092 (= res!2801883 ((_ is EmptyExpr!16697) r!7292))))

(assert (=> d!2158092 (= (nullableFct!2532 r!7292) e!4140963)))

(declare-fun b!6869524 () Bool)

(declare-fun call!625711 () Bool)

(assert (=> b!6869524 (= e!4140964 call!625711)))

(declare-fun b!6869525 () Bool)

(assert (=> b!6869525 (= e!4140965 e!4140961)))

(assert (=> b!6869525 (= c!1278577 ((_ is Union!16697) r!7292))))

(declare-fun b!6869526 () Bool)

(declare-fun e!4140962 () Bool)

(assert (=> b!6869526 (= e!4140962 call!625711)))

(declare-fun b!6869527 () Bool)

(assert (=> b!6869527 (= e!4140961 e!4140962)))

(declare-fun res!2801885 () Bool)

(assert (=> b!6869527 (= res!2801885 call!625710)))

(assert (=> b!6869527 (=> (not res!2801885) (not e!4140962))))

(declare-fun bm!625706 () Bool)

(assert (=> bm!625706 (= call!625711 (nullable!6658 (ite c!1278577 (regTwo!33907 r!7292) (regTwo!33906 r!7292))))))

(assert (= (and d!2158092 (not res!2801883)) b!6869522))

(assert (= (and b!6869522 res!2801887) b!6869523))

(assert (= (and b!6869523 (not res!2801884)) b!6869525))

(assert (= (and b!6869525 c!1278577) b!6869521))

(assert (= (and b!6869525 (not c!1278577)) b!6869527))

(assert (= (and b!6869521 (not res!2801886)) b!6869524))

(assert (= (and b!6869527 res!2801885) b!6869526))

(assert (= (or b!6869524 b!6869526) bm!625706))

(assert (= (or b!6869521 b!6869527) bm!625705))

(declare-fun m!7600848 () Bool)

(assert (=> bm!625705 m!7600848))

(declare-fun m!7600850 () Bool)

(assert (=> bm!625706 m!7600850))

(assert (=> d!2157766 d!2158092))

(declare-fun b!6869528 () Bool)

(declare-fun e!4140967 () Bool)

(declare-fun call!625713 () Bool)

(assert (=> b!6869528 (= e!4140967 call!625713)))

(declare-fun c!1278578 () Bool)

(declare-fun call!625712 () Bool)

(declare-fun bm!625707 () Bool)

(declare-fun c!1278579 () Bool)

(assert (=> bm!625707 (= call!625712 (validRegex!8433 (ite c!1278578 (reg!17026 (ite c!1278485 (reg!17026 (ite c!1278250 (regTwo!33907 r!7292) (regTwo!33906 r!7292))) (ite c!1278486 (regOne!33907 (ite c!1278250 (regTwo!33907 r!7292) (regTwo!33906 r!7292))) (regOne!33906 (ite c!1278250 (regTwo!33907 r!7292) (regTwo!33906 r!7292)))))) (ite c!1278579 (regOne!33907 (ite c!1278485 (reg!17026 (ite c!1278250 (regTwo!33907 r!7292) (regTwo!33906 r!7292))) (ite c!1278486 (regOne!33907 (ite c!1278250 (regTwo!33907 r!7292) (regTwo!33906 r!7292))) (regOne!33906 (ite c!1278250 (regTwo!33907 r!7292) (regTwo!33906 r!7292)))))) (regOne!33906 (ite c!1278485 (reg!17026 (ite c!1278250 (regTwo!33907 r!7292) (regTwo!33906 r!7292))) (ite c!1278486 (regOne!33907 (ite c!1278250 (regTwo!33907 r!7292) (regTwo!33906 r!7292))) (regOne!33906 (ite c!1278250 (regTwo!33907 r!7292) (regTwo!33906 r!7292))))))))))))

(declare-fun bm!625708 () Bool)

(declare-fun call!625714 () Bool)

(assert (=> bm!625708 (= call!625714 call!625712)))

(declare-fun b!6869529 () Bool)

(declare-fun e!4140969 () Bool)

(assert (=> b!6869529 (= e!4140969 call!625712)))

(declare-fun bm!625709 () Bool)

(assert (=> bm!625709 (= call!625713 (validRegex!8433 (ite c!1278579 (regTwo!33907 (ite c!1278485 (reg!17026 (ite c!1278250 (regTwo!33907 r!7292) (regTwo!33906 r!7292))) (ite c!1278486 (regOne!33907 (ite c!1278250 (regTwo!33907 r!7292) (regTwo!33906 r!7292))) (regOne!33906 (ite c!1278250 (regTwo!33907 r!7292) (regTwo!33906 r!7292)))))) (regTwo!33906 (ite c!1278485 (reg!17026 (ite c!1278250 (regTwo!33907 r!7292) (regTwo!33906 r!7292))) (ite c!1278486 (regOne!33907 (ite c!1278250 (regTwo!33907 r!7292) (regTwo!33906 r!7292))) (regOne!33906 (ite c!1278250 (regTwo!33907 r!7292) (regTwo!33906 r!7292)))))))))))

(declare-fun b!6869530 () Bool)

(declare-fun e!4140973 () Bool)

(assert (=> b!6869530 (= e!4140973 e!4140967)))

(declare-fun res!2801890 () Bool)

(assert (=> b!6869530 (=> (not res!2801890) (not e!4140967))))

(assert (=> b!6869530 (= res!2801890 call!625714)))

(declare-fun d!2158108 () Bool)

(declare-fun res!2801889 () Bool)

(declare-fun e!4140971 () Bool)

(assert (=> d!2158108 (=> res!2801889 e!4140971)))

(assert (=> d!2158108 (= res!2801889 ((_ is ElementMatch!16697) (ite c!1278485 (reg!17026 (ite c!1278250 (regTwo!33907 r!7292) (regTwo!33906 r!7292))) (ite c!1278486 (regOne!33907 (ite c!1278250 (regTwo!33907 r!7292) (regTwo!33906 r!7292))) (regOne!33906 (ite c!1278250 (regTwo!33907 r!7292) (regTwo!33906 r!7292)))))))))

(assert (=> d!2158108 (= (validRegex!8433 (ite c!1278485 (reg!17026 (ite c!1278250 (regTwo!33907 r!7292) (regTwo!33906 r!7292))) (ite c!1278486 (regOne!33907 (ite c!1278250 (regTwo!33907 r!7292) (regTwo!33906 r!7292))) (regOne!33906 (ite c!1278250 (regTwo!33907 r!7292) (regTwo!33906 r!7292)))))) e!4140971)))

(declare-fun b!6869531 () Bool)

(declare-fun res!2801888 () Bool)

(declare-fun e!4140970 () Bool)

(assert (=> b!6869531 (=> (not res!2801888) (not e!4140970))))

(assert (=> b!6869531 (= res!2801888 call!625714)))

(declare-fun e!4140972 () Bool)

(assert (=> b!6869531 (= e!4140972 e!4140970)))

(declare-fun b!6869532 () Bool)

(assert (=> b!6869532 (= e!4140970 call!625713)))

(declare-fun b!6869533 () Bool)

(declare-fun res!2801891 () Bool)

(assert (=> b!6869533 (=> res!2801891 e!4140973)))

(assert (=> b!6869533 (= res!2801891 (not ((_ is Concat!25542) (ite c!1278485 (reg!17026 (ite c!1278250 (regTwo!33907 r!7292) (regTwo!33906 r!7292))) (ite c!1278486 (regOne!33907 (ite c!1278250 (regTwo!33907 r!7292) (regTwo!33906 r!7292))) (regOne!33906 (ite c!1278250 (regTwo!33907 r!7292) (regTwo!33906 r!7292))))))))))

(assert (=> b!6869533 (= e!4140972 e!4140973)))

(declare-fun b!6869534 () Bool)

(declare-fun e!4140968 () Bool)

(assert (=> b!6869534 (= e!4140968 e!4140972)))

(assert (=> b!6869534 (= c!1278579 ((_ is Union!16697) (ite c!1278485 (reg!17026 (ite c!1278250 (regTwo!33907 r!7292) (regTwo!33906 r!7292))) (ite c!1278486 (regOne!33907 (ite c!1278250 (regTwo!33907 r!7292) (regTwo!33906 r!7292))) (regOne!33906 (ite c!1278250 (regTwo!33907 r!7292) (regTwo!33906 r!7292)))))))))

(declare-fun b!6869535 () Bool)

(assert (=> b!6869535 (= e!4140971 e!4140968)))

(assert (=> b!6869535 (= c!1278578 ((_ is Star!16697) (ite c!1278485 (reg!17026 (ite c!1278250 (regTwo!33907 r!7292) (regTwo!33906 r!7292))) (ite c!1278486 (regOne!33907 (ite c!1278250 (regTwo!33907 r!7292) (regTwo!33906 r!7292))) (regOne!33906 (ite c!1278250 (regTwo!33907 r!7292) (regTwo!33906 r!7292)))))))))

(declare-fun b!6869536 () Bool)

(assert (=> b!6869536 (= e!4140968 e!4140969)))

(declare-fun res!2801892 () Bool)

(assert (=> b!6869536 (= res!2801892 (not (nullable!6658 (reg!17026 (ite c!1278485 (reg!17026 (ite c!1278250 (regTwo!33907 r!7292) (regTwo!33906 r!7292))) (ite c!1278486 (regOne!33907 (ite c!1278250 (regTwo!33907 r!7292) (regTwo!33906 r!7292))) (regOne!33906 (ite c!1278250 (regTwo!33907 r!7292) (regTwo!33906 r!7292)))))))))))

(assert (=> b!6869536 (=> (not res!2801892) (not e!4140969))))

(assert (= (and d!2158108 (not res!2801889)) b!6869535))

(assert (= (and b!6869535 c!1278578) b!6869536))

(assert (= (and b!6869535 (not c!1278578)) b!6869534))

(assert (= (and b!6869536 res!2801892) b!6869529))

(assert (= (and b!6869534 c!1278579) b!6869531))

(assert (= (and b!6869534 (not c!1278579)) b!6869533))

(assert (= (and b!6869531 res!2801888) b!6869532))

(assert (= (and b!6869533 (not res!2801891)) b!6869530))

(assert (= (and b!6869530 res!2801890) b!6869528))

(assert (= (or b!6869532 b!6869528) bm!625709))

(assert (= (or b!6869531 b!6869530) bm!625708))

(assert (= (or b!6869529 bm!625708) bm!625707))

(declare-fun m!7600852 () Bool)

(assert (=> bm!625707 m!7600852))

(declare-fun m!7600854 () Bool)

(assert (=> bm!625709 m!7600854))

(declare-fun m!7600856 () Bool)

(assert (=> b!6869536 m!7600856))

(assert (=> bm!625646 d!2158108))

(declare-fun d!2158110 () Bool)

(assert (=> d!2158110 (= (nullable!6658 (reg!17026 lt!2458112)) (nullableFct!2532 (reg!17026 lt!2458112)))))

(declare-fun bs!1836580 () Bool)

(assert (= bs!1836580 d!2158110))

(declare-fun m!7600858 () Bool)

(assert (=> bs!1836580 m!7600858))

(assert (=> b!6868814 d!2158110))

(declare-fun d!2158112 () Bool)

(declare-fun res!2801893 () Bool)

(declare-fun e!4140974 () Bool)

(assert (=> d!2158112 (=> res!2801893 e!4140974)))

(assert (=> d!2158112 (= res!2801893 ((_ is Nil!66266) lt!2458175))))

(assert (=> d!2158112 (= (forall!15890 lt!2458175 lambda!388688) e!4140974)))

(declare-fun b!6869537 () Bool)

(declare-fun e!4140975 () Bool)

(assert (=> b!6869537 (= e!4140974 e!4140975)))

(declare-fun res!2801894 () Bool)

(assert (=> b!6869537 (=> (not res!2801894) (not e!4140975))))

(assert (=> b!6869537 (= res!2801894 (dynLambda!26529 lambda!388688 (h!72714 lt!2458175)))))

(declare-fun b!6869538 () Bool)

(assert (=> b!6869538 (= e!4140975 (forall!15890 (t!380133 lt!2458175) lambda!388688))))

(assert (= (and d!2158112 (not res!2801893)) b!6869537))

(assert (= (and b!6869537 res!2801894) b!6869538))

(declare-fun b_lambda!259921 () Bool)

(assert (=> (not b_lambda!259921) (not b!6869537)))

(declare-fun m!7600860 () Bool)

(assert (=> b!6869537 m!7600860))

(declare-fun m!7600864 () Bool)

(assert (=> b!6869538 m!7600864))

(assert (=> d!2157836 d!2158112))

(assert (=> d!2157796 d!2157790))

(assert (=> bm!625611 d!2157864))

(declare-fun d!2158114 () Bool)

(assert (=> d!2158114 (= (isEmpty!38628 (exprs!6581 (h!72715 zl!343))) ((_ is Nil!66266) (exprs!6581 (h!72715 zl!343))))))

(assert (=> b!6868988 d!2158114))

(declare-fun d!2158118 () Bool)

(declare-fun lt!2458214 () Int)

(assert (=> d!2158118 (>= lt!2458214 0)))

(declare-fun e!4140976 () Int)

(assert (=> d!2158118 (= lt!2458214 e!4140976)))

(declare-fun c!1278580 () Bool)

(assert (=> d!2158118 (= c!1278580 ((_ is Cons!66266) (exprs!6581 (h!72715 (t!380134 lt!2458043)))))))

(assert (=> d!2158118 (= (contextDepthTotal!418 (h!72715 (t!380134 lt!2458043))) lt!2458214)))

(declare-fun b!6869539 () Bool)

(assert (=> b!6869539 (= e!4140976 (+ (regexDepthTotal!263 (h!72714 (exprs!6581 (h!72715 (t!380134 lt!2458043))))) (contextDepthTotal!418 (Context!12163 (t!380133 (exprs!6581 (h!72715 (t!380134 lt!2458043))))))))))

(declare-fun b!6869540 () Bool)

(assert (=> b!6869540 (= e!4140976 1)))

(assert (= (and d!2158118 c!1278580) b!6869539))

(assert (= (and d!2158118 (not c!1278580)) b!6869540))

(declare-fun m!7600868 () Bool)

(assert (=> b!6869539 m!7600868))

(declare-fun m!7600870 () Bool)

(assert (=> b!6869539 m!7600870))

(assert (=> b!6869020 d!2158118))

(declare-fun d!2158122 () Bool)

(declare-fun lt!2458215 () Int)

(assert (=> d!2158122 (>= lt!2458215 0)))

(declare-fun e!4140984 () Int)

(assert (=> d!2158122 (= lt!2458215 e!4140984)))

(declare-fun c!1278585 () Bool)

(assert (=> d!2158122 (= c!1278585 ((_ is Cons!66267) (t!380134 (t!380134 lt!2458043))))))

(assert (=> d!2158122 (= (zipperDepthTotal!446 (t!380134 (t!380134 lt!2458043))) lt!2458215)))

(declare-fun b!6869546 () Bool)

(assert (=> b!6869546 (= e!4140984 (+ (contextDepthTotal!418 (h!72715 (t!380134 (t!380134 lt!2458043)))) (zipperDepthTotal!446 (t!380134 (t!380134 (t!380134 lt!2458043))))))))

(declare-fun b!6869547 () Bool)

(assert (=> b!6869547 (= e!4140984 0)))

(assert (= (and d!2158122 c!1278585) b!6869546))

(assert (= (and d!2158122 (not c!1278585)) b!6869547))

(declare-fun m!7600872 () Bool)

(assert (=> b!6869546 m!7600872))

(declare-fun m!7600874 () Bool)

(assert (=> b!6869546 m!7600874))

(assert (=> b!6869020 d!2158122))

(declare-fun c!1278588 () Bool)

(declare-fun b!6869554 () Bool)

(assert (=> b!6869554 (= c!1278588 ((_ is Union!16697) (ite c!1278395 (reg!17026 (h!72714 (exprs!6581 lt!2458040))) (ite c!1278394 (regTwo!33907 (h!72714 (exprs!6581 lt!2458040))) (regTwo!33906 (h!72714 (exprs!6581 lt!2458040)))))))))

(declare-fun e!4140986 () Int)

(declare-fun e!4140988 () Int)

(assert (=> b!6869554 (= e!4140986 e!4140988)))

(declare-fun b!6869555 () Bool)

(declare-fun e!4140987 () Int)

(assert (=> b!6869555 (= e!4140987 e!4140986)))

(declare-fun c!1278589 () Bool)

(assert (=> b!6869555 (= c!1278589 ((_ is Star!16697) (ite c!1278395 (reg!17026 (h!72714 (exprs!6581 lt!2458040))) (ite c!1278394 (regTwo!33907 (h!72714 (exprs!6581 lt!2458040))) (regTwo!33906 (h!72714 (exprs!6581 lt!2458040)))))))))

(declare-fun d!2158124 () Bool)

(declare-fun lt!2458216 () Int)

(assert (=> d!2158124 (> lt!2458216 0)))

(assert (=> d!2158124 (= lt!2458216 e!4140987)))

(declare-fun c!1278587 () Bool)

(assert (=> d!2158124 (= c!1278587 ((_ is ElementMatch!16697) (ite c!1278395 (reg!17026 (h!72714 (exprs!6581 lt!2458040))) (ite c!1278394 (regTwo!33907 (h!72714 (exprs!6581 lt!2458040))) (regTwo!33906 (h!72714 (exprs!6581 lt!2458040)))))))))

(assert (=> d!2158124 (= (regexDepthTotal!263 (ite c!1278395 (reg!17026 (h!72714 (exprs!6581 lt!2458040))) (ite c!1278394 (regTwo!33907 (h!72714 (exprs!6581 lt!2458040))) (regTwo!33906 (h!72714 (exprs!6581 lt!2458040)))))) lt!2458216)))

(declare-fun b!6869556 () Bool)

(assert (=> b!6869556 (= e!4140987 1)))

(declare-fun b!6869557 () Bool)

(declare-fun e!4140985 () Int)

(assert (=> b!6869557 (= e!4140988 e!4140985)))

(declare-fun c!1278586 () Bool)

(assert (=> b!6869557 (= c!1278586 ((_ is Concat!25542) (ite c!1278395 (reg!17026 (h!72714 (exprs!6581 lt!2458040))) (ite c!1278394 (regTwo!33907 (h!72714 (exprs!6581 lt!2458040))) (regTwo!33906 (h!72714 (exprs!6581 lt!2458040)))))))))

(declare-fun b!6869558 () Bool)

(declare-fun call!625718 () Int)

(assert (=> b!6869558 (= e!4140986 (+ 1 call!625718))))

(declare-fun bm!625712 () Bool)

(declare-fun call!625719 () Int)

(assert (=> bm!625712 (= call!625719 (regexDepthTotal!263 (ite c!1278588 (regOne!33907 (ite c!1278395 (reg!17026 (h!72714 (exprs!6581 lt!2458040))) (ite c!1278394 (regTwo!33907 (h!72714 (exprs!6581 lt!2458040))) (regTwo!33906 (h!72714 (exprs!6581 lt!2458040)))))) (regOne!33906 (ite c!1278395 (reg!17026 (h!72714 (exprs!6581 lt!2458040))) (ite c!1278394 (regTwo!33907 (h!72714 (exprs!6581 lt!2458040))) (regTwo!33906 (h!72714 (exprs!6581 lt!2458040)))))))))))

(declare-fun b!6869559 () Bool)

(declare-fun call!625717 () Int)

(assert (=> b!6869559 (= e!4140988 (+ 1 call!625719 call!625717))))

(declare-fun b!6869560 () Bool)

(assert (=> b!6869560 (= e!4140985 (+ 1 call!625719 call!625717))))

(declare-fun b!6869561 () Bool)

(assert (=> b!6869561 (= e!4140985 1)))

(declare-fun bm!625713 () Bool)

(assert (=> bm!625713 (= call!625717 call!625718)))

(declare-fun bm!625714 () Bool)

(assert (=> bm!625714 (= call!625718 (regexDepthTotal!263 (ite c!1278589 (reg!17026 (ite c!1278395 (reg!17026 (h!72714 (exprs!6581 lt!2458040))) (ite c!1278394 (regTwo!33907 (h!72714 (exprs!6581 lt!2458040))) (regTwo!33906 (h!72714 (exprs!6581 lt!2458040)))))) (ite c!1278588 (regTwo!33907 (ite c!1278395 (reg!17026 (h!72714 (exprs!6581 lt!2458040))) (ite c!1278394 (regTwo!33907 (h!72714 (exprs!6581 lt!2458040))) (regTwo!33906 (h!72714 (exprs!6581 lt!2458040)))))) (regTwo!33906 (ite c!1278395 (reg!17026 (h!72714 (exprs!6581 lt!2458040))) (ite c!1278394 (regTwo!33907 (h!72714 (exprs!6581 lt!2458040))) (regTwo!33906 (h!72714 (exprs!6581 lt!2458040))))))))))))

(assert (= (and d!2158124 c!1278587) b!6869556))

(assert (= (and d!2158124 (not c!1278587)) b!6869555))

(assert (= (and b!6869555 c!1278589) b!6869558))

(assert (= (and b!6869555 (not c!1278589)) b!6869554))

(assert (= (and b!6869554 c!1278588) b!6869559))

(assert (= (and b!6869554 (not c!1278588)) b!6869557))

(assert (= (and b!6869557 c!1278586) b!6869560))

(assert (= (and b!6869557 (not c!1278586)) b!6869561))

(assert (= (or b!6869559 b!6869560) bm!625713))

(assert (= (or b!6869559 b!6869560) bm!625712))

(assert (= (or b!6869558 bm!625713) bm!625714))

(declare-fun m!7600876 () Bool)

(assert (=> bm!625712 m!7600876))

(declare-fun m!7600878 () Bool)

(assert (=> bm!625714 m!7600878))

(assert (=> bm!625607 d!2158124))

(assert (=> d!2157900 d!2157790))

(declare-fun d!2158126 () Bool)

(assert (=> d!2158126 (= (nullable!6658 (reg!17026 lt!2458097)) (nullableFct!2532 (reg!17026 lt!2458097)))))

(declare-fun bs!1836583 () Bool)

(assert (= bs!1836583 d!2158126))

(declare-fun m!7600880 () Bool)

(assert (=> bs!1836583 m!7600880))

(assert (=> b!6868931 d!2158126))

(declare-fun bs!1836585 () Bool)

(declare-fun d!2158128 () Bool)

(assert (= bs!1836585 (and d!2158128 d!2157564)))

(declare-fun lambda!388723 () Int)

(assert (=> bs!1836585 (= lambda!388723 lambda!388628)))

(declare-fun bs!1836586 () Bool)

(assert (= bs!1836586 (and d!2158128 d!2157550)))

(assert (=> bs!1836586 (= lambda!388723 lambda!388619)))

(declare-fun bs!1836587 () Bool)

(assert (= bs!1836587 (and d!2158128 d!2157808)))

(assert (=> bs!1836587 (= lambda!388723 lambda!388680)))

(declare-fun bs!1836588 () Bool)

(assert (= bs!1836588 (and d!2158128 b!6867793)))

(assert (=> bs!1836588 (= lambda!388723 lambda!388573)))

(declare-fun bs!1836590 () Bool)

(assert (= bs!1836590 (and d!2158128 d!2157902)))

(assert (=> bs!1836590 (not (= lambda!388723 lambda!388700))))

(declare-fun bs!1836591 () Bool)

(assert (= bs!1836591 (and d!2158128 d!2158018)))

(assert (=> bs!1836591 (= lambda!388723 lambda!388714)))

(declare-fun bs!1836592 () Bool)

(assert (= bs!1836592 (and d!2158128 d!2158042)))

(assert (=> bs!1836592 (= lambda!388723 lambda!388716)))

(declare-fun bs!1836594 () Bool)

(assert (= bs!1836594 (and d!2158128 d!2158016)))

(assert (=> bs!1836594 (= lambda!388723 lambda!388712)))

(declare-fun bs!1836595 () Bool)

(assert (= bs!1836595 (and d!2158128 d!2157904)))

(assert (=> bs!1836595 (not (= lambda!388723 lambda!388703))))

(declare-fun bs!1836596 () Bool)

(assert (= bs!1836596 (and d!2158128 d!2158076)))

(assert (=> bs!1836596 (= lambda!388723 lambda!388720)))

(declare-fun bs!1836597 () Bool)

(assert (= bs!1836597 (and d!2158128 d!2157890)))

(assert (=> bs!1836597 (= lambda!388723 lambda!388697)))

(declare-fun bs!1836599 () Bool)

(assert (= bs!1836599 (and d!2158128 b!6867798)))

(assert (=> bs!1836599 (not (= lambda!388723 lambda!388571))))

(declare-fun bs!1836600 () Bool)

(assert (= bs!1836600 (and d!2158128 d!2157836)))

(assert (=> bs!1836600 (= lambda!388723 lambda!388688)))

(declare-fun bs!1836601 () Bool)

(assert (= bs!1836601 (and d!2158128 d!2157580)))

(assert (=> bs!1836601 (= lambda!388723 lambda!388640)))

(declare-fun bs!1836603 () Bool)

(assert (= bs!1836603 (and d!2158128 d!2157772)))

(assert (=> bs!1836603 (= lambda!388723 lambda!388675)))

(declare-fun bs!1836604 () Bool)

(assert (= bs!1836604 (and d!2158128 d!2157578)))

(assert (=> bs!1836604 (= lambda!388723 lambda!388636)))

(declare-fun bs!1836605 () Bool)

(assert (= bs!1836605 (and d!2158128 d!2157806)))

(assert (=> bs!1836605 (= lambda!388723 lambda!388679)))

(declare-fun bs!1836606 () Bool)

(assert (= bs!1836606 (and d!2158128 d!2158012)))

(assert (=> bs!1836606 (= lambda!388723 lambda!388710)))

(assert (=> bs!1836604 (not (= lambda!388723 lambda!388637))))

(declare-fun bs!1836608 () Bool)

(assert (= bs!1836608 (and d!2158128 d!2157854)))

(assert (=> bs!1836608 (= lambda!388723 lambda!388689)))

(declare-fun bs!1836609 () Bool)

(assert (= bs!1836609 (and d!2158128 d!2157534)))

(assert (=> bs!1836609 (= lambda!388723 lambda!388616)))

(declare-fun bs!1836611 () Bool)

(assert (= bs!1836611 (and d!2158128 d!2157866)))

(assert (=> bs!1836611 (= lambda!388723 lambda!388693)))

(declare-fun bs!1836612 () Bool)

(assert (= bs!1836612 (and d!2158128 d!2157582)))

(assert (=> bs!1836612 (= lambda!388723 lambda!388641)))

(declare-fun bs!1836613 () Bool)

(assert (= bs!1836613 (and d!2158128 d!2157834)))

(assert (=> bs!1836613 (= lambda!388723 lambda!388687)))

(declare-fun bs!1836614 () Bool)

(assert (= bs!1836614 (and d!2158128 d!2157576)))

(assert (=> bs!1836614 (not (= lambda!388723 lambda!388631))))

(declare-fun bs!1836616 () Bool)

(assert (= bs!1836616 (and d!2158128 d!2157872)))

(assert (=> bs!1836616 (= lambda!388723 lambda!388696)))

(declare-fun e!4140994 () Bool)

(assert (=> d!2158128 e!4140994))

(declare-fun res!2801898 () Bool)

(assert (=> d!2158128 (=> (not res!2801898) (not e!4140994))))

(declare-fun lt!2458217 () Regex!16697)

(assert (=> d!2158128 (= res!2801898 (validRegex!8433 lt!2458217))))

(declare-fun e!4140993 () Regex!16697)

(assert (=> d!2158128 (= lt!2458217 e!4140993)))

(declare-fun c!1278592 () Bool)

(declare-fun e!4140991 () Bool)

(assert (=> d!2158128 (= c!1278592 e!4140991)))

(declare-fun res!2801899 () Bool)

(assert (=> d!2158128 (=> (not res!2801899) (not e!4140991))))

(assert (=> d!2158128 (= res!2801899 ((_ is Cons!66266) (exprs!6581 (h!72715 (t!380134 zl!343)))))))

(assert (=> d!2158128 (forall!15890 (exprs!6581 (h!72715 (t!380134 zl!343))) lambda!388723)))

(assert (=> d!2158128 (= (generalisedConcat!2285 (exprs!6581 (h!72715 (t!380134 zl!343)))) lt!2458217)))

(declare-fun b!6869562 () Bool)

(assert (=> b!6869562 (= e!4140991 (isEmpty!38628 (t!380133 (exprs!6581 (h!72715 (t!380134 zl!343))))))))

(declare-fun b!6869563 () Bool)

(declare-fun e!4140990 () Regex!16697)

(assert (=> b!6869563 (= e!4140993 e!4140990)))

(declare-fun c!1278590 () Bool)

(assert (=> b!6869563 (= c!1278590 ((_ is Cons!66266) (exprs!6581 (h!72715 (t!380134 zl!343)))))))

(declare-fun b!6869564 () Bool)

(declare-fun e!4140989 () Bool)

(assert (=> b!6869564 (= e!4140994 e!4140989)))

(declare-fun c!1278593 () Bool)

(assert (=> b!6869564 (= c!1278593 (isEmpty!38628 (exprs!6581 (h!72715 (t!380134 zl!343)))))))

(declare-fun b!6869565 () Bool)

(declare-fun e!4140992 () Bool)

(assert (=> b!6869565 (= e!4140989 e!4140992)))

(declare-fun c!1278591 () Bool)

(assert (=> b!6869565 (= c!1278591 (isEmpty!38628 (tail!12836 (exprs!6581 (h!72715 (t!380134 zl!343))))))))

(declare-fun b!6869566 () Bool)

(assert (=> b!6869566 (= e!4140992 (isConcat!1540 lt!2458217))))

(declare-fun b!6869567 () Bool)

(assert (=> b!6869567 (= e!4140989 (isEmptyExpr!2017 lt!2458217))))

(declare-fun b!6869568 () Bool)

(assert (=> b!6869568 (= e!4140990 EmptyExpr!16697)))

(declare-fun b!6869569 () Bool)

(assert (=> b!6869569 (= e!4140993 (h!72714 (exprs!6581 (h!72715 (t!380134 zl!343)))))))

(declare-fun b!6869570 () Bool)

(assert (=> b!6869570 (= e!4140992 (= lt!2458217 (head!13781 (exprs!6581 (h!72715 (t!380134 zl!343))))))))

(declare-fun b!6869571 () Bool)

(assert (=> b!6869571 (= e!4140990 (Concat!25542 (h!72714 (exprs!6581 (h!72715 (t!380134 zl!343)))) (generalisedConcat!2285 (t!380133 (exprs!6581 (h!72715 (t!380134 zl!343)))))))))

(assert (= (and d!2158128 res!2801899) b!6869562))

(assert (= (and d!2158128 c!1278592) b!6869569))

(assert (= (and d!2158128 (not c!1278592)) b!6869563))

(assert (= (and b!6869563 c!1278590) b!6869571))

(assert (= (and b!6869563 (not c!1278590)) b!6869568))

(assert (= (and d!2158128 res!2801898) b!6869564))

(assert (= (and b!6869564 c!1278593) b!6869567))

(assert (= (and b!6869564 (not c!1278593)) b!6869565))

(assert (= (and b!6869565 c!1278591) b!6869570))

(assert (= (and b!6869565 (not c!1278591)) b!6869566))

(declare-fun m!7600882 () Bool)

(assert (=> b!6869566 m!7600882))

(declare-fun m!7600884 () Bool)

(assert (=> b!6869571 m!7600884))

(declare-fun m!7600886 () Bool)

(assert (=> b!6869564 m!7600886))

(declare-fun m!7600888 () Bool)

(assert (=> b!6869567 m!7600888))

(declare-fun m!7600890 () Bool)

(assert (=> b!6869562 m!7600890))

(declare-fun m!7600892 () Bool)

(assert (=> b!6869570 m!7600892))

(declare-fun m!7600894 () Bool)

(assert (=> d!2158128 m!7600894))

(declare-fun m!7600896 () Bool)

(assert (=> d!2158128 m!7600896))

(declare-fun m!7600898 () Bool)

(assert (=> b!6869565 m!7600898))

(assert (=> b!6869565 m!7600898))

(declare-fun m!7600900 () Bool)

(assert (=> b!6869565 m!7600900))

(assert (=> b!6868996 d!2158128))

(declare-fun bs!1836617 () Bool)

(declare-fun d!2158130 () Bool)

(assert (= bs!1836617 (and d!2158130 d!2157564)))

(declare-fun lambda!388725 () Int)

(assert (=> bs!1836617 (= lambda!388725 lambda!388628)))

(declare-fun bs!1836619 () Bool)

(assert (= bs!1836619 (and d!2158130 d!2157550)))

(assert (=> bs!1836619 (= lambda!388725 lambda!388619)))

(declare-fun bs!1836620 () Bool)

(assert (= bs!1836620 (and d!2158130 d!2157808)))

(assert (=> bs!1836620 (= lambda!388725 lambda!388680)))

(declare-fun bs!1836621 () Bool)

(assert (= bs!1836621 (and d!2158130 b!6867793)))

(assert (=> bs!1836621 (= lambda!388725 lambda!388573)))

(declare-fun bs!1836622 () Bool)

(assert (= bs!1836622 (and d!2158130 d!2157902)))

(assert (=> bs!1836622 (not (= lambda!388725 lambda!388700))))

(declare-fun bs!1836624 () Bool)

(assert (= bs!1836624 (and d!2158130 d!2158018)))

(assert (=> bs!1836624 (= lambda!388725 lambda!388714)))

(declare-fun bs!1836625 () Bool)

(assert (= bs!1836625 (and d!2158130 d!2158016)))

(assert (=> bs!1836625 (= lambda!388725 lambda!388712)))

(declare-fun bs!1836626 () Bool)

(assert (= bs!1836626 (and d!2158130 d!2157904)))

(assert (=> bs!1836626 (not (= lambda!388725 lambda!388703))))

(declare-fun bs!1836628 () Bool)

(assert (= bs!1836628 (and d!2158130 d!2158076)))

(assert (=> bs!1836628 (= lambda!388725 lambda!388720)))

(declare-fun bs!1836629 () Bool)

(assert (= bs!1836629 (and d!2158130 d!2157890)))

(assert (=> bs!1836629 (= lambda!388725 lambda!388697)))

(declare-fun bs!1836630 () Bool)

(assert (= bs!1836630 (and d!2158130 b!6867798)))

(assert (=> bs!1836630 (not (= lambda!388725 lambda!388571))))

(declare-fun bs!1836631 () Bool)

(assert (= bs!1836631 (and d!2158130 d!2157836)))

(assert (=> bs!1836631 (= lambda!388725 lambda!388688)))

(declare-fun bs!1836633 () Bool)

(assert (= bs!1836633 (and d!2158130 d!2157580)))

(assert (=> bs!1836633 (= lambda!388725 lambda!388640)))

(declare-fun bs!1836634 () Bool)

(assert (= bs!1836634 (and d!2158130 d!2157772)))

(assert (=> bs!1836634 (= lambda!388725 lambda!388675)))

(declare-fun bs!1836635 () Bool)

(assert (= bs!1836635 (and d!2158130 d!2157578)))

(assert (=> bs!1836635 (= lambda!388725 lambda!388636)))

(declare-fun bs!1836637 () Bool)

(assert (= bs!1836637 (and d!2158130 d!2157806)))

(assert (=> bs!1836637 (= lambda!388725 lambda!388679)))

(declare-fun bs!1836638 () Bool)

(assert (= bs!1836638 (and d!2158130 d!2158012)))

(assert (=> bs!1836638 (= lambda!388725 lambda!388710)))

(assert (=> bs!1836635 (not (= lambda!388725 lambda!388637))))

(declare-fun bs!1836639 () Bool)

(assert (= bs!1836639 (and d!2158130 d!2158042)))

(assert (=> bs!1836639 (= lambda!388725 lambda!388716)))

(declare-fun bs!1836641 () Bool)

(assert (= bs!1836641 (and d!2158130 d!2158128)))

(assert (=> bs!1836641 (= lambda!388725 lambda!388723)))

(declare-fun bs!1836642 () Bool)

(assert (= bs!1836642 (and d!2158130 d!2157854)))

(assert (=> bs!1836642 (= lambda!388725 lambda!388689)))

(declare-fun bs!1836643 () Bool)

(assert (= bs!1836643 (and d!2158130 d!2157534)))

(assert (=> bs!1836643 (= lambda!388725 lambda!388616)))

(declare-fun bs!1836645 () Bool)

(assert (= bs!1836645 (and d!2158130 d!2157866)))

(assert (=> bs!1836645 (= lambda!388725 lambda!388693)))

(declare-fun bs!1836646 () Bool)

(assert (= bs!1836646 (and d!2158130 d!2157582)))

(assert (=> bs!1836646 (= lambda!388725 lambda!388641)))

(declare-fun bs!1836647 () Bool)

(assert (= bs!1836647 (and d!2158130 d!2157834)))

(assert (=> bs!1836647 (= lambda!388725 lambda!388687)))

(declare-fun bs!1836648 () Bool)

(assert (= bs!1836648 (and d!2158130 d!2157576)))

(assert (=> bs!1836648 (not (= lambda!388725 lambda!388631))))

(declare-fun bs!1836650 () Bool)

(assert (= bs!1836650 (and d!2158130 d!2157872)))

(assert (=> bs!1836650 (= lambda!388725 lambda!388696)))

(declare-fun lt!2458218 () List!66390)

(assert (=> d!2158130 (forall!15890 lt!2458218 lambda!388725)))

(declare-fun e!4140995 () List!66390)

(assert (=> d!2158130 (= lt!2458218 e!4140995)))

(declare-fun c!1278594 () Bool)

(assert (=> d!2158130 (= c!1278594 ((_ is Cons!66267) (t!380134 (t!380134 zl!343))))))

(assert (=> d!2158130 (= (unfocusZipperList!2114 (t!380134 (t!380134 zl!343))) lt!2458218)))

(declare-fun b!6869572 () Bool)

(assert (=> b!6869572 (= e!4140995 (Cons!66266 (generalisedConcat!2285 (exprs!6581 (h!72715 (t!380134 (t!380134 zl!343))))) (unfocusZipperList!2114 (t!380134 (t!380134 (t!380134 zl!343))))))))

(declare-fun b!6869573 () Bool)

(assert (=> b!6869573 (= e!4140995 Nil!66266)))

(assert (= (and d!2158130 c!1278594) b!6869572))

(assert (= (and d!2158130 (not c!1278594)) b!6869573))

(declare-fun m!7600902 () Bool)

(assert (=> d!2158130 m!7600902))

(declare-fun m!7600904 () Bool)

(assert (=> b!6869572 m!7600904))

(declare-fun m!7600906 () Bool)

(assert (=> b!6869572 m!7600906))

(assert (=> b!6868996 d!2158130))

(declare-fun d!2158132 () Bool)

(declare-fun c!1278595 () Bool)

(assert (=> d!2158132 (= c!1278595 (isEmpty!38627 (tail!12835 s!2326)))))

(declare-fun e!4140996 () Bool)

(assert (=> d!2158132 (= (matchZipper!2663 (derivationStepZipper!2617 (store ((as const (Array Context!12162 Bool)) false) (h!72715 zl!343) true) (head!13779 s!2326)) (tail!12835 s!2326)) e!4140996)))

(declare-fun b!6869574 () Bool)

(assert (=> b!6869574 (= e!4140996 (nullableZipper!2370 (derivationStepZipper!2617 (store ((as const (Array Context!12162 Bool)) false) (h!72715 zl!343) true) (head!13779 s!2326))))))

(declare-fun b!6869575 () Bool)

(assert (=> b!6869575 (= e!4140996 (matchZipper!2663 (derivationStepZipper!2617 (derivationStepZipper!2617 (store ((as const (Array Context!12162 Bool)) false) (h!72715 zl!343) true) (head!13779 s!2326)) (head!13779 (tail!12835 s!2326))) (tail!12835 (tail!12835 s!2326))))))

(assert (= (and d!2158132 c!1278595) b!6869574))

(assert (= (and d!2158132 (not c!1278595)) b!6869575))

(assert (=> d!2158132 m!7599580))

(assert (=> d!2158132 m!7599582))

(assert (=> b!6869574 m!7600204))

(declare-fun m!7600908 () Bool)

(assert (=> b!6869574 m!7600908))

(assert (=> b!6869575 m!7599580))

(assert (=> b!6869575 m!7600170))

(assert (=> b!6869575 m!7600204))

(assert (=> b!6869575 m!7600170))

(declare-fun m!7600910 () Bool)

(assert (=> b!6869575 m!7600910))

(assert (=> b!6869575 m!7599580))

(assert (=> b!6869575 m!7600164))

(assert (=> b!6869575 m!7600910))

(assert (=> b!6869575 m!7600164))

(declare-fun m!7600912 () Bool)

(assert (=> b!6869575 m!7600912))

(assert (=> b!6868905 d!2158132))

(declare-fun bs!1836652 () Bool)

(declare-fun d!2158134 () Bool)

(assert (= bs!1836652 (and d!2158134 d!2157858)))

(declare-fun lambda!388726 () Int)

(assert (=> bs!1836652 (= lambda!388726 lambda!388692)))

(assert (=> d!2158134 true))

(assert (=> d!2158134 (= (derivationStepZipper!2617 (store ((as const (Array Context!12162 Bool)) false) (h!72715 zl!343) true) (head!13779 s!2326)) (flatMap!2144 (store ((as const (Array Context!12162 Bool)) false) (h!72715 zl!343) true) lambda!388726))))

(declare-fun bs!1836653 () Bool)

(assert (= bs!1836653 d!2158134))

(assert (=> bs!1836653 m!7599766))

(declare-fun m!7600920 () Bool)

(assert (=> bs!1836653 m!7600920))

(assert (=> b!6868905 d!2158134))

(assert (=> b!6868905 d!2157778))

(assert (=> b!6868905 d!2157780))

(assert (=> b!6869024 d!2157832))

(declare-fun d!2158138 () Bool)

(declare-fun c!1278596 () Bool)

(assert (=> d!2158138 (= c!1278596 (isEmpty!38627 (tail!12835 s!2326)))))

(declare-fun e!4140999 () Bool)

(assert (=> d!2158138 (= (matchZipper!2663 (derivationStepZipper!2617 (store ((as const (Array Context!12162 Bool)) false) lt!2458110 true) (head!13779 s!2326)) (tail!12835 s!2326)) e!4140999)))

(declare-fun b!6869578 () Bool)

(assert (=> b!6869578 (= e!4140999 (nullableZipper!2370 (derivationStepZipper!2617 (store ((as const (Array Context!12162 Bool)) false) lt!2458110 true) (head!13779 s!2326))))))

(declare-fun b!6869579 () Bool)

(assert (=> b!6869579 (= e!4140999 (matchZipper!2663 (derivationStepZipper!2617 (derivationStepZipper!2617 (store ((as const (Array Context!12162 Bool)) false) lt!2458110 true) (head!13779 s!2326)) (head!13779 (tail!12835 s!2326))) (tail!12835 (tail!12835 s!2326))))))

(assert (= (and d!2158138 c!1278596) b!6869578))

(assert (= (and d!2158138 (not c!1278596)) b!6869579))

(assert (=> d!2158138 m!7599580))

(assert (=> d!2158138 m!7599582))

(assert (=> b!6869578 m!7600448))

(declare-fun m!7600922 () Bool)

(assert (=> b!6869578 m!7600922))

(assert (=> b!6869579 m!7599580))

(assert (=> b!6869579 m!7600170))

(assert (=> b!6869579 m!7600448))

(assert (=> b!6869579 m!7600170))

(declare-fun m!7600924 () Bool)

(assert (=> b!6869579 m!7600924))

(assert (=> b!6869579 m!7599580))

(assert (=> b!6869579 m!7600164))

(assert (=> b!6869579 m!7600924))

(assert (=> b!6869579 m!7600164))

(declare-fun m!7600930 () Bool)

(assert (=> b!6869579 m!7600930))

(assert (=> b!6869089 d!2158138))

(declare-fun bs!1836654 () Bool)

(declare-fun d!2158142 () Bool)

(assert (= bs!1836654 (and d!2158142 d!2157858)))

(declare-fun lambda!388727 () Int)

(assert (=> bs!1836654 (= lambda!388727 lambda!388692)))

(declare-fun bs!1836655 () Bool)

(assert (= bs!1836655 (and d!2158142 d!2158134)))

(assert (=> bs!1836655 (= lambda!388727 lambda!388726)))

(assert (=> d!2158142 true))

(assert (=> d!2158142 (= (derivationStepZipper!2617 (store ((as const (Array Context!12162 Bool)) false) lt!2458110 true) (head!13779 s!2326)) (flatMap!2144 (store ((as const (Array Context!12162 Bool)) false) lt!2458110 true) lambda!388727))))

(declare-fun bs!1836656 () Bool)

(assert (= bs!1836656 d!2158142))

(assert (=> bs!1836656 m!7599762))

(declare-fun m!7600934 () Bool)

(assert (=> bs!1836656 m!7600934))

(assert (=> b!6869089 d!2158142))

(assert (=> b!6869089 d!2157778))

(assert (=> b!6869089 d!2157780))

(declare-fun d!2158144 () Bool)

(assert (=> d!2158144 (= (isEmptyLang!2026 lt!2458172) ((_ is EmptyLang!16697) lt!2458172))))

(assert (=> b!6868935 d!2158144))

(declare-fun b!6869582 () Bool)

(declare-fun e!4141001 () Bool)

(declare-fun call!625721 () Bool)

(assert (=> b!6869582 (= e!4141001 call!625721)))

(declare-fun c!1278599 () Bool)

(declare-fun bm!625715 () Bool)

(declare-fun call!625720 () Bool)

(declare-fun c!1278598 () Bool)

(assert (=> bm!625715 (= call!625720 (validRegex!8433 (ite c!1278598 (reg!17026 lt!2458167) (ite c!1278599 (regOne!33907 lt!2458167) (regOne!33906 lt!2458167)))))))

(declare-fun bm!625716 () Bool)

(declare-fun call!625722 () Bool)

(assert (=> bm!625716 (= call!625722 call!625720)))

(declare-fun b!6869583 () Bool)

(declare-fun e!4141003 () Bool)

(assert (=> b!6869583 (= e!4141003 call!625720)))

(declare-fun bm!625717 () Bool)

(assert (=> bm!625717 (= call!625721 (validRegex!8433 (ite c!1278599 (regTwo!33907 lt!2458167) (regTwo!33906 lt!2458167))))))

(declare-fun b!6869584 () Bool)

(declare-fun e!4141007 () Bool)

(assert (=> b!6869584 (= e!4141007 e!4141001)))

(declare-fun res!2801904 () Bool)

(assert (=> b!6869584 (=> (not res!2801904) (not e!4141001))))

(assert (=> b!6869584 (= res!2801904 call!625722)))

(declare-fun d!2158148 () Bool)

(declare-fun res!2801903 () Bool)

(declare-fun e!4141005 () Bool)

(assert (=> d!2158148 (=> res!2801903 e!4141005)))

(assert (=> d!2158148 (= res!2801903 ((_ is ElementMatch!16697) lt!2458167))))

(assert (=> d!2158148 (= (validRegex!8433 lt!2458167) e!4141005)))

(declare-fun b!6869585 () Bool)

(declare-fun res!2801902 () Bool)

(declare-fun e!4141004 () Bool)

(assert (=> b!6869585 (=> (not res!2801902) (not e!4141004))))

(assert (=> b!6869585 (= res!2801902 call!625722)))

(declare-fun e!4141006 () Bool)

(assert (=> b!6869585 (= e!4141006 e!4141004)))

(declare-fun b!6869586 () Bool)

(assert (=> b!6869586 (= e!4141004 call!625721)))

(declare-fun b!6869587 () Bool)

(declare-fun res!2801905 () Bool)

(assert (=> b!6869587 (=> res!2801905 e!4141007)))

(assert (=> b!6869587 (= res!2801905 (not ((_ is Concat!25542) lt!2458167)))))

(assert (=> b!6869587 (= e!4141006 e!4141007)))

(declare-fun b!6869588 () Bool)

(declare-fun e!4141002 () Bool)

(assert (=> b!6869588 (= e!4141002 e!4141006)))

(assert (=> b!6869588 (= c!1278599 ((_ is Union!16697) lt!2458167))))

(declare-fun b!6869589 () Bool)

(assert (=> b!6869589 (= e!4141005 e!4141002)))

(assert (=> b!6869589 (= c!1278598 ((_ is Star!16697) lt!2458167))))

(declare-fun b!6869590 () Bool)

(assert (=> b!6869590 (= e!4141002 e!4141003)))

(declare-fun res!2801906 () Bool)

(assert (=> b!6869590 (= res!2801906 (not (nullable!6658 (reg!17026 lt!2458167))))))

(assert (=> b!6869590 (=> (not res!2801906) (not e!4141003))))

(assert (= (and d!2158148 (not res!2801903)) b!6869589))

(assert (= (and b!6869589 c!1278598) b!6869590))

(assert (= (and b!6869589 (not c!1278598)) b!6869588))

(assert (= (and b!6869590 res!2801906) b!6869583))

(assert (= (and b!6869588 c!1278599) b!6869585))

(assert (= (and b!6869588 (not c!1278599)) b!6869587))

(assert (= (and b!6869585 res!2801902) b!6869586))

(assert (= (and b!6869587 (not res!2801905)) b!6869584))

(assert (= (and b!6869584 res!2801904) b!6869582))

(assert (= (or b!6869586 b!6869582) bm!625717))

(assert (= (or b!6869585 b!6869584) bm!625716))

(assert (= (or b!6869583 bm!625716) bm!625715))

(declare-fun m!7600942 () Bool)

(assert (=> bm!625715 m!7600942))

(declare-fun m!7600946 () Bool)

(assert (=> bm!625717 m!7600946))

(declare-fun m!7600948 () Bool)

(assert (=> b!6869590 m!7600948))

(assert (=> d!2157772 d!2158148))

(declare-fun d!2158152 () Bool)

(declare-fun res!2801907 () Bool)

(declare-fun e!4141012 () Bool)

(assert (=> d!2158152 (=> res!2801907 e!4141012)))

(assert (=> d!2158152 (= res!2801907 ((_ is Nil!66266) (unfocusZipperList!2114 zl!343)))))

(assert (=> d!2158152 (= (forall!15890 (unfocusZipperList!2114 zl!343) lambda!388675) e!4141012)))

(declare-fun b!6869599 () Bool)

(declare-fun e!4141013 () Bool)

(assert (=> b!6869599 (= e!4141012 e!4141013)))

(declare-fun res!2801908 () Bool)

(assert (=> b!6869599 (=> (not res!2801908) (not e!4141013))))

(assert (=> b!6869599 (= res!2801908 (dynLambda!26529 lambda!388675 (h!72714 (unfocusZipperList!2114 zl!343))))))

(declare-fun b!6869600 () Bool)

(assert (=> b!6869600 (= e!4141013 (forall!15890 (t!380133 (unfocusZipperList!2114 zl!343)) lambda!388675))))

(assert (= (and d!2158152 (not res!2801907)) b!6869599))

(assert (= (and b!6869599 res!2801908) b!6869600))

(declare-fun b_lambda!259923 () Bool)

(assert (=> (not b_lambda!259923) (not b!6869599)))

(declare-fun m!7600952 () Bool)

(assert (=> b!6869599 m!7600952))

(declare-fun m!7600956 () Bool)

(assert (=> b!6869600 m!7600956))

(assert (=> d!2157772 d!2158152))

(declare-fun d!2158156 () Bool)

(assert (=> d!2158156 true))

(assert (=> d!2158156 true))

(declare-fun res!2801911 () Bool)

(assert (=> d!2158156 (= (choose!51187 (ite c!1278182 lambda!388599 lambda!388601)) res!2801911)))

(assert (=> d!2157792 d!2158156))

(declare-fun d!2158162 () Bool)

(declare-fun c!1278609 () Bool)

(assert (=> d!2158162 (= c!1278609 (isEmpty!38627 s!2326))))

(declare-fun e!4141019 () Bool)

(assert (=> d!2158162 (= (matchZipper!2663 (store ((as const (Array Context!12162 Bool)) false) (h!72715 (t!380134 zl!343)) true) s!2326) e!4141019)))

(declare-fun b!6869611 () Bool)

(assert (=> b!6869611 (= e!4141019 (nullableZipper!2370 (store ((as const (Array Context!12162 Bool)) false) (h!72715 (t!380134 zl!343)) true)))))

(declare-fun b!6869612 () Bool)

(assert (=> b!6869612 (= e!4141019 (matchZipper!2663 (derivationStepZipper!2617 (store ((as const (Array Context!12162 Bool)) false) (h!72715 (t!380134 zl!343)) true) (head!13779 s!2326)) (tail!12835 s!2326)))))

(assert (= (and d!2158162 c!1278609) b!6869611))

(assert (= (and d!2158162 (not c!1278609)) b!6869612))

(assert (=> d!2158162 m!7599520))

(assert (=> b!6869611 m!7600466))

(declare-fun m!7600962 () Bool)

(assert (=> b!6869611 m!7600962))

(assert (=> b!6869612 m!7599586))

(assert (=> b!6869612 m!7600466))

(assert (=> b!6869612 m!7599586))

(declare-fun m!7600964 () Bool)

(assert (=> b!6869612 m!7600964))

(assert (=> b!6869612 m!7599580))

(assert (=> b!6869612 m!7600964))

(assert (=> b!6869612 m!7599580))

(declare-fun m!7600968 () Bool)

(assert (=> b!6869612 m!7600968))

(assert (=> bs!1836224 d!2158162))

(declare-fun b!6869613 () Bool)

(declare-fun e!4141020 () Bool)

(declare-fun call!625730 () Bool)

(assert (=> b!6869613 (= e!4141020 call!625730)))

(declare-fun c!1278611 () Bool)

(declare-fun bm!625724 () Bool)

(declare-fun c!1278610 () Bool)

(declare-fun call!625729 () Bool)

(assert (=> bm!625724 (= call!625729 (validRegex!8433 (ite c!1278610 (reg!17026 (h!72714 lt!2458134)) (ite c!1278611 (regOne!33907 (h!72714 lt!2458134)) (regOne!33906 (h!72714 lt!2458134))))))))

(declare-fun bm!625725 () Bool)

(declare-fun call!625731 () Bool)

(assert (=> bm!625725 (= call!625731 call!625729)))

(declare-fun b!6869614 () Bool)

(declare-fun e!4141022 () Bool)

(assert (=> b!6869614 (= e!4141022 call!625729)))

(declare-fun bm!625726 () Bool)

(assert (=> bm!625726 (= call!625730 (validRegex!8433 (ite c!1278611 (regTwo!33907 (h!72714 lt!2458134)) (regTwo!33906 (h!72714 lt!2458134)))))))

(declare-fun b!6869615 () Bool)

(declare-fun e!4141026 () Bool)

(assert (=> b!6869615 (= e!4141026 e!4141020)))

(declare-fun res!2801914 () Bool)

(assert (=> b!6869615 (=> (not res!2801914) (not e!4141020))))

(assert (=> b!6869615 (= res!2801914 call!625731)))

(declare-fun d!2158164 () Bool)

(declare-fun res!2801913 () Bool)

(declare-fun e!4141024 () Bool)

(assert (=> d!2158164 (=> res!2801913 e!4141024)))

(assert (=> d!2158164 (= res!2801913 ((_ is ElementMatch!16697) (h!72714 lt!2458134)))))

(assert (=> d!2158164 (= (validRegex!8433 (h!72714 lt!2458134)) e!4141024)))

(declare-fun b!6869616 () Bool)

(declare-fun res!2801912 () Bool)

(declare-fun e!4141023 () Bool)

(assert (=> b!6869616 (=> (not res!2801912) (not e!4141023))))

(assert (=> b!6869616 (= res!2801912 call!625731)))

(declare-fun e!4141025 () Bool)

(assert (=> b!6869616 (= e!4141025 e!4141023)))

(declare-fun b!6869617 () Bool)

(assert (=> b!6869617 (= e!4141023 call!625730)))

(declare-fun b!6869618 () Bool)

(declare-fun res!2801915 () Bool)

(assert (=> b!6869618 (=> res!2801915 e!4141026)))

(assert (=> b!6869618 (= res!2801915 (not ((_ is Concat!25542) (h!72714 lt!2458134))))))

(assert (=> b!6869618 (= e!4141025 e!4141026)))

(declare-fun b!6869619 () Bool)

(declare-fun e!4141021 () Bool)

(assert (=> b!6869619 (= e!4141021 e!4141025)))

(assert (=> b!6869619 (= c!1278611 ((_ is Union!16697) (h!72714 lt!2458134)))))

(declare-fun b!6869620 () Bool)

(assert (=> b!6869620 (= e!4141024 e!4141021)))

(assert (=> b!6869620 (= c!1278610 ((_ is Star!16697) (h!72714 lt!2458134)))))

(declare-fun b!6869621 () Bool)

(assert (=> b!6869621 (= e!4141021 e!4141022)))

(declare-fun res!2801916 () Bool)

(assert (=> b!6869621 (= res!2801916 (not (nullable!6658 (reg!17026 (h!72714 lt!2458134)))))))

(assert (=> b!6869621 (=> (not res!2801916) (not e!4141022))))

(assert (= (and d!2158164 (not res!2801913)) b!6869620))

(assert (= (and b!6869620 c!1278610) b!6869621))

(assert (= (and b!6869620 (not c!1278610)) b!6869619))

(assert (= (and b!6869621 res!2801916) b!6869614))

(assert (= (and b!6869619 c!1278611) b!6869616))

(assert (= (and b!6869619 (not c!1278611)) b!6869618))

(assert (= (and b!6869616 res!2801912) b!6869617))

(assert (= (and b!6869618 (not res!2801915)) b!6869615))

(assert (= (and b!6869615 res!2801914) b!6869613))

(assert (= (or b!6869617 b!6869613) bm!625726))

(assert (= (or b!6869616 b!6869615) bm!625725))

(assert (= (or b!6869614 bm!625725) bm!625724))

(declare-fun m!7600974 () Bool)

(assert (=> bm!625724 m!7600974))

(declare-fun m!7600976 () Bool)

(assert (=> bm!625726 m!7600976))

(declare-fun m!7600978 () Bool)

(assert (=> b!6869621 m!7600978))

(assert (=> bs!1836232 d!2158164))

(declare-fun d!2158170 () Bool)

(assert (=> d!2158170 (= (isUnion!1456 lt!2458172) ((_ is Union!16697) lt!2458172))))

(assert (=> b!6868940 d!2158170))

(declare-fun b!6869633 () Bool)

(declare-fun e!4141036 () Bool)

(declare-fun call!625736 () Bool)

(assert (=> b!6869633 (= e!4141036 call!625736)))

(declare-fun call!625735 () Bool)

(declare-fun c!1278615 () Bool)

(declare-fun bm!625730 () Bool)

(declare-fun c!1278614 () Bool)

(assert (=> bm!625730 (= call!625735 (validRegex!8433 (ite c!1278614 (reg!17026 lt!2458183) (ite c!1278615 (regOne!33907 lt!2458183) (regOne!33906 lt!2458183)))))))

(declare-fun bm!625731 () Bool)

(declare-fun call!625737 () Bool)

(assert (=> bm!625731 (= call!625737 call!625735)))

(declare-fun b!6869634 () Bool)

(declare-fun e!4141038 () Bool)

(assert (=> b!6869634 (= e!4141038 call!625735)))

(declare-fun bm!625732 () Bool)

(assert (=> bm!625732 (= call!625736 (validRegex!8433 (ite c!1278615 (regTwo!33907 lt!2458183) (regTwo!33906 lt!2458183))))))

(declare-fun b!6869635 () Bool)

(declare-fun e!4141042 () Bool)

(assert (=> b!6869635 (= e!4141042 e!4141036)))

(declare-fun res!2801926 () Bool)

(assert (=> b!6869635 (=> (not res!2801926) (not e!4141036))))

(assert (=> b!6869635 (= res!2801926 call!625737)))

(declare-fun d!2158174 () Bool)

(declare-fun res!2801925 () Bool)

(declare-fun e!4141040 () Bool)

(assert (=> d!2158174 (=> res!2801925 e!4141040)))

(assert (=> d!2158174 (= res!2801925 ((_ is ElementMatch!16697) lt!2458183))))

(assert (=> d!2158174 (= (validRegex!8433 lt!2458183) e!4141040)))

(declare-fun b!6869636 () Bool)

(declare-fun res!2801922 () Bool)

(declare-fun e!4141039 () Bool)

(assert (=> b!6869636 (=> (not res!2801922) (not e!4141039))))

(assert (=> b!6869636 (= res!2801922 call!625737)))

(declare-fun e!4141041 () Bool)

(assert (=> b!6869636 (= e!4141041 e!4141039)))

(declare-fun b!6869637 () Bool)

(assert (=> b!6869637 (= e!4141039 call!625736)))

(declare-fun b!6869638 () Bool)

(declare-fun res!2801927 () Bool)

(assert (=> b!6869638 (=> res!2801927 e!4141042)))

(assert (=> b!6869638 (= res!2801927 (not ((_ is Concat!25542) lt!2458183)))))

(assert (=> b!6869638 (= e!4141041 e!4141042)))

(declare-fun b!6869639 () Bool)

(declare-fun e!4141037 () Bool)

(assert (=> b!6869639 (= e!4141037 e!4141041)))

(assert (=> b!6869639 (= c!1278615 ((_ is Union!16697) lt!2458183))))

(declare-fun b!6869640 () Bool)

(assert (=> b!6869640 (= e!4141040 e!4141037)))

(assert (=> b!6869640 (= c!1278614 ((_ is Star!16697) lt!2458183))))

(declare-fun b!6869641 () Bool)

(assert (=> b!6869641 (= e!4141037 e!4141038)))

(declare-fun res!2801928 () Bool)

(assert (=> b!6869641 (= res!2801928 (not (nullable!6658 (reg!17026 lt!2458183))))))

(assert (=> b!6869641 (=> (not res!2801928) (not e!4141038))))

(assert (= (and d!2158174 (not res!2801925)) b!6869640))

(assert (= (and b!6869640 c!1278614) b!6869641))

(assert (= (and b!6869640 (not c!1278614)) b!6869639))

(assert (= (and b!6869641 res!2801928) b!6869634))

(assert (= (and b!6869639 c!1278615) b!6869636))

(assert (= (and b!6869639 (not c!1278615)) b!6869638))

(assert (= (and b!6869636 res!2801922) b!6869637))

(assert (= (and b!6869638 (not res!2801927)) b!6869635))

(assert (= (and b!6869635 res!2801926) b!6869633))

(assert (= (or b!6869637 b!6869633) bm!625732))

(assert (= (or b!6869636 b!6869635) bm!625731))

(assert (= (or b!6869634 bm!625731) bm!625730))

(declare-fun m!7600990 () Bool)

(assert (=> bm!625730 m!7600990))

(declare-fun m!7600992 () Bool)

(assert (=> bm!625732 m!7600992))

(declare-fun m!7600994 () Bool)

(assert (=> b!6869641 m!7600994))

(assert (=> d!2157866 d!2158174))

(declare-fun d!2158180 () Bool)

(declare-fun res!2801931 () Bool)

(declare-fun e!4141045 () Bool)

(assert (=> d!2158180 (=> res!2801931 e!4141045)))

(assert (=> d!2158180 (= res!2801931 ((_ is Nil!66266) (t!380133 (exprs!6581 lt!2458040))))))

(assert (=> d!2158180 (= (forall!15890 (t!380133 (exprs!6581 lt!2458040)) lambda!388693) e!4141045)))

(declare-fun b!6869644 () Bool)

(declare-fun e!4141046 () Bool)

(assert (=> b!6869644 (= e!4141045 e!4141046)))

(declare-fun res!2801932 () Bool)

(assert (=> b!6869644 (=> (not res!2801932) (not e!4141046))))

(assert (=> b!6869644 (= res!2801932 (dynLambda!26529 lambda!388693 (h!72714 (t!380133 (exprs!6581 lt!2458040)))))))

(declare-fun b!6869645 () Bool)

(assert (=> b!6869645 (= e!4141046 (forall!15890 (t!380133 (t!380133 (exprs!6581 lt!2458040))) lambda!388693))))

(assert (= (and d!2158180 (not res!2801931)) b!6869644))

(assert (= (and b!6869644 res!2801932) b!6869645))

(declare-fun b_lambda!259927 () Bool)

(assert (=> (not b_lambda!259927) (not b!6869644)))

(declare-fun m!7601000 () Bool)

(assert (=> b!6869644 m!7601000))

(declare-fun m!7601002 () Bool)

(assert (=> b!6869645 m!7601002))

(assert (=> d!2157866 d!2158180))

(declare-fun b!6869655 () Bool)

(declare-fun e!4141054 () Bool)

(declare-fun call!625742 () Bool)

(assert (=> b!6869655 (= e!4141054 call!625742)))

(declare-fun c!1278619 () Bool)

(declare-fun bm!625736 () Bool)

(declare-fun call!625741 () Bool)

(declare-fun c!1278618 () Bool)

(assert (=> bm!625736 (= call!625741 (validRegex!8433 (ite c!1278618 (reg!17026 (h!72714 (exprs!6581 setElem!47225))) (ite c!1278619 (regOne!33907 (h!72714 (exprs!6581 setElem!47225))) (regOne!33906 (h!72714 (exprs!6581 setElem!47225)))))))))

(declare-fun bm!625737 () Bool)

(declare-fun call!625743 () Bool)

(assert (=> bm!625737 (= call!625743 call!625741)))

(declare-fun b!6869656 () Bool)

(declare-fun e!4141056 () Bool)

(assert (=> b!6869656 (= e!4141056 call!625741)))

(declare-fun bm!625738 () Bool)

(assert (=> bm!625738 (= call!625742 (validRegex!8433 (ite c!1278619 (regTwo!33907 (h!72714 (exprs!6581 setElem!47225))) (regTwo!33906 (h!72714 (exprs!6581 setElem!47225))))))))

(declare-fun b!6869657 () Bool)

(declare-fun e!4141060 () Bool)

(assert (=> b!6869657 (= e!4141060 e!4141054)))

(declare-fun res!2801940 () Bool)

(assert (=> b!6869657 (=> (not res!2801940) (not e!4141054))))

(assert (=> b!6869657 (= res!2801940 call!625743)))

(declare-fun d!2158184 () Bool)

(declare-fun res!2801939 () Bool)

(declare-fun e!4141058 () Bool)

(assert (=> d!2158184 (=> res!2801939 e!4141058)))

(assert (=> d!2158184 (= res!2801939 ((_ is ElementMatch!16697) (h!72714 (exprs!6581 setElem!47225))))))

(assert (=> d!2158184 (= (validRegex!8433 (h!72714 (exprs!6581 setElem!47225))) e!4141058)))

(declare-fun b!6869658 () Bool)

(declare-fun res!2801938 () Bool)

(declare-fun e!4141057 () Bool)

(assert (=> b!6869658 (=> (not res!2801938) (not e!4141057))))

(assert (=> b!6869658 (= res!2801938 call!625743)))

(declare-fun e!4141059 () Bool)

(assert (=> b!6869658 (= e!4141059 e!4141057)))

(declare-fun b!6869659 () Bool)

(assert (=> b!6869659 (= e!4141057 call!625742)))

(declare-fun b!6869660 () Bool)

(declare-fun res!2801941 () Bool)

(assert (=> b!6869660 (=> res!2801941 e!4141060)))

(assert (=> b!6869660 (= res!2801941 (not ((_ is Concat!25542) (h!72714 (exprs!6581 setElem!47225)))))))

(assert (=> b!6869660 (= e!4141059 e!4141060)))

(declare-fun b!6869661 () Bool)

(declare-fun e!4141055 () Bool)

(assert (=> b!6869661 (= e!4141055 e!4141059)))

(assert (=> b!6869661 (= c!1278619 ((_ is Union!16697) (h!72714 (exprs!6581 setElem!47225))))))

(declare-fun b!6869662 () Bool)

(assert (=> b!6869662 (= e!4141058 e!4141055)))

(assert (=> b!6869662 (= c!1278618 ((_ is Star!16697) (h!72714 (exprs!6581 setElem!47225))))))

(declare-fun b!6869663 () Bool)

(assert (=> b!6869663 (= e!4141055 e!4141056)))

(declare-fun res!2801942 () Bool)

(assert (=> b!6869663 (= res!2801942 (not (nullable!6658 (reg!17026 (h!72714 (exprs!6581 setElem!47225))))))))

(assert (=> b!6869663 (=> (not res!2801942) (not e!4141056))))

(assert (= (and d!2158184 (not res!2801939)) b!6869662))

(assert (= (and b!6869662 c!1278618) b!6869663))

(assert (= (and b!6869662 (not c!1278618)) b!6869661))

(assert (= (and b!6869663 res!2801942) b!6869656))

(assert (= (and b!6869661 c!1278619) b!6869658))

(assert (= (and b!6869661 (not c!1278619)) b!6869660))

(assert (= (and b!6869658 res!2801938) b!6869659))

(assert (= (and b!6869660 (not res!2801941)) b!6869657))

(assert (= (and b!6869657 res!2801940) b!6869655))

(assert (= (or b!6869659 b!6869655) bm!625738))

(assert (= (or b!6869658 b!6869657) bm!625737))

(assert (= (or b!6869656 bm!625737) bm!625736))

(declare-fun m!7601010 () Bool)

(assert (=> bm!625736 m!7601010))

(declare-fun m!7601012 () Bool)

(assert (=> bm!625738 m!7601012))

(declare-fun m!7601016 () Bool)

(assert (=> b!6869663 m!7601016))

(assert (=> bs!1836233 d!2158184))

(declare-fun bs!1836669 () Bool)

(declare-fun d!2158188 () Bool)

(assert (= bs!1836669 (and d!2158188 d!2157564)))

(declare-fun lambda!388730 () Int)

(assert (=> bs!1836669 (= lambda!388730 lambda!388628)))

(declare-fun bs!1836670 () Bool)

(assert (= bs!1836670 (and d!2158188 d!2157550)))

(assert (=> bs!1836670 (= lambda!388730 lambda!388619)))

(declare-fun bs!1836671 () Bool)

(assert (= bs!1836671 (and d!2158188 d!2157808)))

(assert (=> bs!1836671 (= lambda!388730 lambda!388680)))

(declare-fun bs!1836672 () Bool)

(assert (= bs!1836672 (and d!2158188 b!6867793)))

(assert (=> bs!1836672 (= lambda!388730 lambda!388573)))

(declare-fun bs!1836673 () Bool)

(assert (= bs!1836673 (and d!2158188 d!2157902)))

(assert (=> bs!1836673 (not (= lambda!388730 lambda!388700))))

(declare-fun bs!1836674 () Bool)

(assert (= bs!1836674 (and d!2158188 d!2158018)))

(assert (=> bs!1836674 (= lambda!388730 lambda!388714)))

(declare-fun bs!1836675 () Bool)

(assert (= bs!1836675 (and d!2158188 d!2158016)))

(assert (=> bs!1836675 (= lambda!388730 lambda!388712)))

(declare-fun bs!1836676 () Bool)

(assert (= bs!1836676 (and d!2158188 d!2158130)))

(assert (=> bs!1836676 (= lambda!388730 lambda!388725)))

(declare-fun bs!1836677 () Bool)

(assert (= bs!1836677 (and d!2158188 d!2157904)))

(assert (=> bs!1836677 (not (= lambda!388730 lambda!388703))))

(declare-fun bs!1836679 () Bool)

(assert (= bs!1836679 (and d!2158188 d!2158076)))

(assert (=> bs!1836679 (= lambda!388730 lambda!388720)))

(declare-fun bs!1836681 () Bool)

(assert (= bs!1836681 (and d!2158188 d!2157890)))

(assert (=> bs!1836681 (= lambda!388730 lambda!388697)))

(declare-fun bs!1836682 () Bool)

(assert (= bs!1836682 (and d!2158188 b!6867798)))

(assert (=> bs!1836682 (not (= lambda!388730 lambda!388571))))

(declare-fun bs!1836683 () Bool)

(assert (= bs!1836683 (and d!2158188 d!2157836)))

(assert (=> bs!1836683 (= lambda!388730 lambda!388688)))

(declare-fun bs!1836685 () Bool)

(assert (= bs!1836685 (and d!2158188 d!2157580)))

(assert (=> bs!1836685 (= lambda!388730 lambda!388640)))

(declare-fun bs!1836686 () Bool)

(assert (= bs!1836686 (and d!2158188 d!2157772)))

(assert (=> bs!1836686 (= lambda!388730 lambda!388675)))

(declare-fun bs!1836687 () Bool)

(assert (= bs!1836687 (and d!2158188 d!2157578)))

(assert (=> bs!1836687 (= lambda!388730 lambda!388636)))

(declare-fun bs!1836688 () Bool)

(assert (= bs!1836688 (and d!2158188 d!2157806)))

(assert (=> bs!1836688 (= lambda!388730 lambda!388679)))

(declare-fun bs!1836689 () Bool)

(assert (= bs!1836689 (and d!2158188 d!2158012)))

(assert (=> bs!1836689 (= lambda!388730 lambda!388710)))

(assert (=> bs!1836687 (not (= lambda!388730 lambda!388637))))

(declare-fun bs!1836690 () Bool)

(assert (= bs!1836690 (and d!2158188 d!2158042)))

(assert (=> bs!1836690 (= lambda!388730 lambda!388716)))

(declare-fun bs!1836691 () Bool)

(assert (= bs!1836691 (and d!2158188 d!2158128)))

(assert (=> bs!1836691 (= lambda!388730 lambda!388723)))

(declare-fun bs!1836692 () Bool)

(assert (= bs!1836692 (and d!2158188 d!2157854)))

(assert (=> bs!1836692 (= lambda!388730 lambda!388689)))

(declare-fun bs!1836693 () Bool)

(assert (= bs!1836693 (and d!2158188 d!2157534)))

(assert (=> bs!1836693 (= lambda!388730 lambda!388616)))

(declare-fun bs!1836694 () Bool)

(assert (= bs!1836694 (and d!2158188 d!2157866)))

(assert (=> bs!1836694 (= lambda!388730 lambda!388693)))

(declare-fun bs!1836695 () Bool)

(assert (= bs!1836695 (and d!2158188 d!2157582)))

(assert (=> bs!1836695 (= lambda!388730 lambda!388641)))

(declare-fun bs!1836696 () Bool)

(assert (= bs!1836696 (and d!2158188 d!2157834)))

(assert (=> bs!1836696 (= lambda!388730 lambda!388687)))

(declare-fun bs!1836697 () Bool)

(assert (= bs!1836697 (and d!2158188 d!2157576)))

(assert (=> bs!1836697 (not (= lambda!388730 lambda!388631))))

(declare-fun bs!1836698 () Bool)

(assert (= bs!1836698 (and d!2158188 d!2157872)))

(assert (=> bs!1836698 (= lambda!388730 lambda!388696)))

(assert (=> d!2158188 (= (inv!84989 (h!72715 res!2801683)) (forall!15890 (exprs!6581 (h!72715 res!2801683)) lambda!388730))))

(declare-fun bs!1836699 () Bool)

(assert (= bs!1836699 d!2158188))

(declare-fun m!7601026 () Bool)

(assert (=> bs!1836699 m!7601026))

(assert (=> b!6868957 d!2158188))

(declare-fun d!2158196 () Bool)

(assert (=> d!2158196 (= (nullable!6658 (derivativeStep!5340 r!7292 (head!13779 s!2326))) (nullableFct!2532 (derivativeStep!5340 r!7292 (head!13779 s!2326))))))

(declare-fun bs!1836700 () Bool)

(assert (= bs!1836700 d!2158196))

(assert (=> bs!1836700 m!7599588))

(declare-fun m!7601038 () Bool)

(assert (=> bs!1836700 m!7601038))

(assert (=> b!6868851 d!2158196))

(assert (=> bs!1836228 d!2157802))

(declare-fun d!2158200 () Bool)

(assert (=> d!2158200 (= (Exists!3757 (ite c!1278484 lambda!388698 lambda!388699)) (choose!51187 (ite c!1278484 lambda!388698 lambda!388699)))))

(declare-fun bs!1836701 () Bool)

(assert (= bs!1836701 d!2158200))

(declare-fun m!7601040 () Bool)

(assert (=> bs!1836701 m!7601040))

(assert (=> bm!625644 d!2158200))

(declare-fun d!2158202 () Bool)

(assert (=> d!2158202 (= (nullable!6658 (reg!17026 (ite c!1278249 (reg!17026 r!7292) (ite c!1278250 (regOne!33907 r!7292) (regOne!33906 r!7292))))) (nullableFct!2532 (reg!17026 (ite c!1278249 (reg!17026 r!7292) (ite c!1278250 (regOne!33907 r!7292) (regOne!33906 r!7292))))))))

(declare-fun bs!1836702 () Bool)

(assert (= bs!1836702 d!2158202))

(declare-fun m!7601044 () Bool)

(assert (=> bs!1836702 m!7601044))

(assert (=> b!6868985 d!2158202))

(assert (=> d!2157880 d!2157824))

(declare-fun d!2158204 () Bool)

(assert (=> d!2158204 (= (isEmpty!38628 (t!380133 (unfocusZipperList!2114 zl!343))) ((_ is Nil!66266) (t!380133 (unfocusZipperList!2114 zl!343))))))

(assert (=> b!6868840 d!2158204))

(declare-fun d!2158208 () Bool)

(assert (=> d!2158208 (= (nullable!6658 (reg!17026 (ite c!1278251 (reg!17026 lt!2458034) (ite c!1278252 (regOne!33907 lt!2458034) (regOne!33906 lt!2458034))))) (nullableFct!2532 (reg!17026 (ite c!1278251 (reg!17026 lt!2458034) (ite c!1278252 (regOne!33907 lt!2458034) (regOne!33906 lt!2458034))))))))

(declare-fun bs!1836703 () Bool)

(assert (= bs!1836703 d!2158208))

(declare-fun m!7601048 () Bool)

(assert (=> bs!1836703 m!7601048))

(assert (=> b!6869061 d!2158208))

(declare-fun bs!1836704 () Bool)

(declare-fun b!6869691 () Bool)

(assert (= bs!1836704 (and b!6869691 b!6869072)))

(declare-fun lambda!388732 () Int)

(assert (=> bs!1836704 (not (= lambda!388732 lambda!388699))))

(declare-fun bs!1836706 () Bool)

(assert (= bs!1836706 (and b!6869691 b!6867923)))

(assert (=> bs!1836706 (= (and (= (reg!17026 (regOne!33907 (regOne!33907 r!7292))) (reg!17026 r!7292)) (= (regOne!33907 (regOne!33907 r!7292)) r!7292)) (= lambda!388732 lambda!388599))))

(declare-fun bs!1836707 () Bool)

(assert (= bs!1836707 (and b!6869691 b!6868968)))

(assert (=> bs!1836707 (not (= lambda!388732 lambda!388686))))

(declare-fun bs!1836708 () Bool)

(assert (= bs!1836708 (and b!6869691 b!6868967)))

(assert (=> bs!1836708 (= (and (= (reg!17026 (regOne!33907 (regOne!33907 r!7292))) (reg!17026 (regOne!33907 r!7292))) (= (regOne!33907 (regOne!33907 r!7292)) (regOne!33907 r!7292))) (= lambda!388732 lambda!388685))))

(declare-fun bs!1836709 () Bool)

(assert (= bs!1836709 (and b!6869691 b!6867924)))

(assert (=> bs!1836709 (not (= lambda!388732 lambda!388601))))

(declare-fun bs!1836710 () Bool)

(assert (= bs!1836710 (and b!6869691 b!6869071)))

(assert (=> bs!1836710 (= (and (= (reg!17026 (regOne!33907 (regOne!33907 r!7292))) (reg!17026 (regTwo!33907 r!7292))) (= (regOne!33907 (regOne!33907 r!7292)) (regTwo!33907 r!7292))) (= lambda!388732 lambda!388698))))

(assert (=> b!6869691 true))

(assert (=> b!6869691 true))

(declare-fun bs!1836720 () Bool)

(declare-fun b!6869692 () Bool)

(assert (= bs!1836720 (and b!6869692 b!6869072)))

(declare-fun lambda!388734 () Int)

(assert (=> bs!1836720 (= (and (= (regOne!33906 (regOne!33907 (regOne!33907 r!7292))) (regOne!33906 (regTwo!33907 r!7292))) (= (regTwo!33906 (regOne!33907 (regOne!33907 r!7292))) (regTwo!33906 (regTwo!33907 r!7292)))) (= lambda!388734 lambda!388699))))

(declare-fun bs!1836723 () Bool)

(assert (= bs!1836723 (and b!6869692 b!6869691)))

(assert (=> bs!1836723 (not (= lambda!388734 lambda!388732))))

(declare-fun bs!1836725 () Bool)

(assert (= bs!1836725 (and b!6869692 b!6867923)))

(assert (=> bs!1836725 (not (= lambda!388734 lambda!388599))))

(declare-fun bs!1836728 () Bool)

(assert (= bs!1836728 (and b!6869692 b!6868968)))

(assert (=> bs!1836728 (= (and (= (regOne!33906 (regOne!33907 (regOne!33907 r!7292))) (regOne!33906 (regOne!33907 r!7292))) (= (regTwo!33906 (regOne!33907 (regOne!33907 r!7292))) (regTwo!33906 (regOne!33907 r!7292)))) (= lambda!388734 lambda!388686))))

(declare-fun bs!1836731 () Bool)

(assert (= bs!1836731 (and b!6869692 b!6868967)))

(assert (=> bs!1836731 (not (= lambda!388734 lambda!388685))))

(declare-fun bs!1836734 () Bool)

(assert (= bs!1836734 (and b!6869692 b!6867924)))

(assert (=> bs!1836734 (= (and (= (regOne!33906 (regOne!33907 (regOne!33907 r!7292))) (regOne!33906 r!7292)) (= (regTwo!33906 (regOne!33907 (regOne!33907 r!7292))) (regTwo!33906 r!7292))) (= lambda!388734 lambda!388601))))

(declare-fun bs!1836736 () Bool)

(assert (= bs!1836736 (and b!6869692 b!6869071)))

(assert (=> bs!1836736 (not (= lambda!388734 lambda!388698))))

(assert (=> b!6869692 true))

(assert (=> b!6869692 true))

(declare-fun c!1278634 () Bool)

(declare-fun bm!625747 () Bool)

(declare-fun call!625752 () Bool)

(assert (=> bm!625747 (= call!625752 (Exists!3757 (ite c!1278634 lambda!388732 lambda!388734)))))

(declare-fun b!6869688 () Bool)

(declare-fun c!1278631 () Bool)

(assert (=> b!6869688 (= c!1278631 ((_ is ElementMatch!16697) (regOne!33907 (regOne!33907 r!7292))))))

(declare-fun e!4141077 () Bool)

(declare-fun e!4141076 () Bool)

(assert (=> b!6869688 (= e!4141077 e!4141076)))

(declare-fun b!6869689 () Bool)

(assert (=> b!6869689 (= e!4141076 (= s!2326 (Cons!66268 (c!1278149 (regOne!33907 (regOne!33907 r!7292))) Nil!66268)))))

(declare-fun b!6869690 () Bool)

(declare-fun e!4141075 () Bool)

(declare-fun e!4141078 () Bool)

(assert (=> b!6869690 (= e!4141075 e!4141078)))

(assert (=> b!6869690 (= c!1278634 ((_ is Star!16697) (regOne!33907 (regOne!33907 r!7292))))))

(declare-fun e!4141079 () Bool)

(assert (=> b!6869691 (= e!4141079 call!625752)))

(declare-fun bm!625748 () Bool)

(declare-fun call!625753 () Bool)

(assert (=> bm!625748 (= call!625753 (isEmpty!38627 s!2326))))

(declare-fun b!6869693 () Bool)

(declare-fun e!4141080 () Bool)

(assert (=> b!6869693 (= e!4141075 e!4141080)))

(declare-fun res!2801945 () Bool)

(assert (=> b!6869693 (= res!2801945 (matchRSpec!3798 (regOne!33907 (regOne!33907 (regOne!33907 r!7292))) s!2326))))

(assert (=> b!6869693 (=> res!2801945 e!4141080)))

(declare-fun b!6869694 () Bool)

(declare-fun e!4141074 () Bool)

(assert (=> b!6869694 (= e!4141074 e!4141077)))

(declare-fun res!2801947 () Bool)

(assert (=> b!6869694 (= res!2801947 (not ((_ is EmptyLang!16697) (regOne!33907 (regOne!33907 r!7292)))))))

(assert (=> b!6869694 (=> (not res!2801947) (not e!4141077))))

(declare-fun b!6869695 () Bool)

(assert (=> b!6869695 (= e!4141074 call!625753)))

(declare-fun b!6869696 () Bool)

(assert (=> b!6869696 (= e!4141080 (matchRSpec!3798 (regTwo!33907 (regOne!33907 (regOne!33907 r!7292))) s!2326))))

(declare-fun d!2158210 () Bool)

(declare-fun c!1278632 () Bool)

(assert (=> d!2158210 (= c!1278632 ((_ is EmptyExpr!16697) (regOne!33907 (regOne!33907 r!7292))))))

(assert (=> d!2158210 (= (matchRSpec!3798 (regOne!33907 (regOne!33907 r!7292)) s!2326) e!4141074)))

(assert (=> b!6869692 (= e!4141078 call!625752)))

(declare-fun b!6869697 () Bool)

(declare-fun res!2801946 () Bool)

(assert (=> b!6869697 (=> res!2801946 e!4141079)))

(assert (=> b!6869697 (= res!2801946 call!625753)))

(assert (=> b!6869697 (= e!4141078 e!4141079)))

(declare-fun b!6869698 () Bool)

(declare-fun c!1278633 () Bool)

(assert (=> b!6869698 (= c!1278633 ((_ is Union!16697) (regOne!33907 (regOne!33907 r!7292))))))

(assert (=> b!6869698 (= e!4141076 e!4141075)))

(assert (= (and d!2158210 c!1278632) b!6869695))

(assert (= (and d!2158210 (not c!1278632)) b!6869694))

(assert (= (and b!6869694 res!2801947) b!6869688))

(assert (= (and b!6869688 c!1278631) b!6869689))

(assert (= (and b!6869688 (not c!1278631)) b!6869698))

(assert (= (and b!6869698 c!1278633) b!6869693))

(assert (= (and b!6869698 (not c!1278633)) b!6869690))

(assert (= (and b!6869693 (not res!2801945)) b!6869696))

(assert (= (and b!6869690 c!1278634) b!6869697))

(assert (= (and b!6869690 (not c!1278634)) b!6869692))

(assert (= (and b!6869697 (not res!2801946)) b!6869691))

(assert (= (or b!6869691 b!6869692) bm!625747))

(assert (= (or b!6869695 b!6869697) bm!625748))

(declare-fun m!7601066 () Bool)

(assert (=> bm!625747 m!7601066))

(assert (=> bm!625748 m!7599520))

(declare-fun m!7601068 () Bool)

(assert (=> b!6869693 m!7601068))

(declare-fun m!7601070 () Bool)

(assert (=> b!6869696 m!7601070))

(assert (=> b!6868969 d!2158210))

(declare-fun b!6869711 () Bool)

(declare-fun e!4141088 () Bool)

(declare-fun call!625755 () Bool)

(assert (=> b!6869711 (= e!4141088 call!625755)))

(declare-fun call!625754 () Bool)

(declare-fun c!1278641 () Bool)

(declare-fun bm!625749 () Bool)

(declare-fun c!1278640 () Bool)

(assert (=> bm!625749 (= call!625754 (validRegex!8433 (ite c!1278640 (reg!17026 (ite c!1278474 (reg!17026 lt!2458118) (ite c!1278475 (regOne!33907 lt!2458118) (regOne!33906 lt!2458118)))) (ite c!1278641 (regOne!33907 (ite c!1278474 (reg!17026 lt!2458118) (ite c!1278475 (regOne!33907 lt!2458118) (regOne!33906 lt!2458118)))) (regOne!33906 (ite c!1278474 (reg!17026 lt!2458118) (ite c!1278475 (regOne!33907 lt!2458118) (regOne!33906 lt!2458118))))))))))

(declare-fun bm!625750 () Bool)

(declare-fun call!625756 () Bool)

(assert (=> bm!625750 (= call!625756 call!625754)))

(declare-fun b!6869712 () Bool)

(declare-fun e!4141090 () Bool)

(assert (=> b!6869712 (= e!4141090 call!625754)))

(declare-fun bm!625751 () Bool)

(assert (=> bm!625751 (= call!625755 (validRegex!8433 (ite c!1278641 (regTwo!33907 (ite c!1278474 (reg!17026 lt!2458118) (ite c!1278475 (regOne!33907 lt!2458118) (regOne!33906 lt!2458118)))) (regTwo!33906 (ite c!1278474 (reg!17026 lt!2458118) (ite c!1278475 (regOne!33907 lt!2458118) (regOne!33906 lt!2458118)))))))))

(declare-fun b!6869713 () Bool)

(declare-fun e!4141094 () Bool)

(assert (=> b!6869713 (= e!4141094 e!4141088)))

(declare-fun res!2801952 () Bool)

(assert (=> b!6869713 (=> (not res!2801952) (not e!4141088))))

(assert (=> b!6869713 (= res!2801952 call!625756)))

(declare-fun d!2158222 () Bool)

(declare-fun res!2801951 () Bool)

(declare-fun e!4141092 () Bool)

(assert (=> d!2158222 (=> res!2801951 e!4141092)))

(assert (=> d!2158222 (= res!2801951 ((_ is ElementMatch!16697) (ite c!1278474 (reg!17026 lt!2458118) (ite c!1278475 (regOne!33907 lt!2458118) (regOne!33906 lt!2458118)))))))

(assert (=> d!2158222 (= (validRegex!8433 (ite c!1278474 (reg!17026 lt!2458118) (ite c!1278475 (regOne!33907 lt!2458118) (regOne!33906 lt!2458118)))) e!4141092)))

(declare-fun b!6869714 () Bool)

(declare-fun res!2801950 () Bool)

(declare-fun e!4141091 () Bool)

(assert (=> b!6869714 (=> (not res!2801950) (not e!4141091))))

(assert (=> b!6869714 (= res!2801950 call!625756)))

(declare-fun e!4141093 () Bool)

(assert (=> b!6869714 (= e!4141093 e!4141091)))

(declare-fun b!6869715 () Bool)

(assert (=> b!6869715 (= e!4141091 call!625755)))

(declare-fun b!6869716 () Bool)

(declare-fun res!2801953 () Bool)

(assert (=> b!6869716 (=> res!2801953 e!4141094)))

(assert (=> b!6869716 (= res!2801953 (not ((_ is Concat!25542) (ite c!1278474 (reg!17026 lt!2458118) (ite c!1278475 (regOne!33907 lt!2458118) (regOne!33906 lt!2458118))))))))

(assert (=> b!6869716 (= e!4141093 e!4141094)))

(declare-fun b!6869717 () Bool)

(declare-fun e!4141089 () Bool)

(assert (=> b!6869717 (= e!4141089 e!4141093)))

(assert (=> b!6869717 (= c!1278641 ((_ is Union!16697) (ite c!1278474 (reg!17026 lt!2458118) (ite c!1278475 (regOne!33907 lt!2458118) (regOne!33906 lt!2458118)))))))

(declare-fun b!6869718 () Bool)

(assert (=> b!6869718 (= e!4141092 e!4141089)))

(assert (=> b!6869718 (= c!1278640 ((_ is Star!16697) (ite c!1278474 (reg!17026 lt!2458118) (ite c!1278475 (regOne!33907 lt!2458118) (regOne!33906 lt!2458118)))))))

(declare-fun b!6869719 () Bool)

(assert (=> b!6869719 (= e!4141089 e!4141090)))

(declare-fun res!2801954 () Bool)

(assert (=> b!6869719 (= res!2801954 (not (nullable!6658 (reg!17026 (ite c!1278474 (reg!17026 lt!2458118) (ite c!1278475 (regOne!33907 lt!2458118) (regOne!33906 lt!2458118)))))))))

(assert (=> b!6869719 (=> (not res!2801954) (not e!4141090))))

(assert (= (and d!2158222 (not res!2801951)) b!6869718))

(assert (= (and b!6869718 c!1278640) b!6869719))

(assert (= (and b!6869718 (not c!1278640)) b!6869717))

(assert (= (and b!6869719 res!2801954) b!6869712))

(assert (= (and b!6869717 c!1278641) b!6869714))

(assert (= (and b!6869717 (not c!1278641)) b!6869716))

(assert (= (and b!6869714 res!2801950) b!6869715))

(assert (= (and b!6869716 (not res!2801953)) b!6869713))

(assert (= (and b!6869713 res!2801952) b!6869711))

(assert (= (or b!6869715 b!6869711) bm!625751))

(assert (= (or b!6869714 b!6869713) bm!625750))

(assert (= (or b!6869712 bm!625750) bm!625749))

(declare-fun m!7601090 () Bool)

(assert (=> bm!625749 m!7601090))

(declare-fun m!7601092 () Bool)

(assert (=> bm!625751 m!7601092))

(declare-fun m!7601094 () Bool)

(assert (=> b!6869719 m!7601094))

(assert (=> bm!625638 d!2158222))

(declare-fun b!6869731 () Bool)

(declare-fun e!4141102 () Bool)

(declare-fun call!625760 () Bool)

(assert (=> b!6869731 (= e!4141102 call!625760)))

(declare-fun c!1278647 () Bool)

(declare-fun bm!625754 () Bool)

(declare-fun c!1278646 () Bool)

(declare-fun call!625759 () Bool)

(assert (=> bm!625754 (= call!625759 (validRegex!8433 (ite c!1278646 (reg!17026 (ite c!1278445 (reg!17026 (ite c!1278252 (regTwo!33907 lt!2458034) (regTwo!33906 lt!2458034))) (ite c!1278446 (regOne!33907 (ite c!1278252 (regTwo!33907 lt!2458034) (regTwo!33906 lt!2458034))) (regOne!33906 (ite c!1278252 (regTwo!33907 lt!2458034) (regTwo!33906 lt!2458034)))))) (ite c!1278647 (regOne!33907 (ite c!1278445 (reg!17026 (ite c!1278252 (regTwo!33907 lt!2458034) (regTwo!33906 lt!2458034))) (ite c!1278446 (regOne!33907 (ite c!1278252 (regTwo!33907 lt!2458034) (regTwo!33906 lt!2458034))) (regOne!33906 (ite c!1278252 (regTwo!33907 lt!2458034) (regTwo!33906 lt!2458034)))))) (regOne!33906 (ite c!1278445 (reg!17026 (ite c!1278252 (regTwo!33907 lt!2458034) (regTwo!33906 lt!2458034))) (ite c!1278446 (regOne!33907 (ite c!1278252 (regTwo!33907 lt!2458034) (regTwo!33906 lt!2458034))) (regOne!33906 (ite c!1278252 (regTwo!33907 lt!2458034) (regTwo!33906 lt!2458034))))))))))))

(declare-fun bm!625755 () Bool)

(declare-fun call!625761 () Bool)

(assert (=> bm!625755 (= call!625761 call!625759)))

(declare-fun b!6869732 () Bool)

(declare-fun e!4141104 () Bool)

(assert (=> b!6869732 (= e!4141104 call!625759)))

(declare-fun bm!625756 () Bool)

(assert (=> bm!625756 (= call!625760 (validRegex!8433 (ite c!1278647 (regTwo!33907 (ite c!1278445 (reg!17026 (ite c!1278252 (regTwo!33907 lt!2458034) (regTwo!33906 lt!2458034))) (ite c!1278446 (regOne!33907 (ite c!1278252 (regTwo!33907 lt!2458034) (regTwo!33906 lt!2458034))) (regOne!33906 (ite c!1278252 (regTwo!33907 lt!2458034) (regTwo!33906 lt!2458034)))))) (regTwo!33906 (ite c!1278445 (reg!17026 (ite c!1278252 (regTwo!33907 lt!2458034) (regTwo!33906 lt!2458034))) (ite c!1278446 (regOne!33907 (ite c!1278252 (regTwo!33907 lt!2458034) (regTwo!33906 lt!2458034))) (regOne!33906 (ite c!1278252 (regTwo!33907 lt!2458034) (regTwo!33906 lt!2458034)))))))))))

(declare-fun b!6869733 () Bool)

(declare-fun e!4141108 () Bool)

(assert (=> b!6869733 (= e!4141108 e!4141102)))

(declare-fun res!2801960 () Bool)

(assert (=> b!6869733 (=> (not res!2801960) (not e!4141102))))

(assert (=> b!6869733 (= res!2801960 call!625761)))

(declare-fun d!2158226 () Bool)

(declare-fun res!2801959 () Bool)

(declare-fun e!4141106 () Bool)

(assert (=> d!2158226 (=> res!2801959 e!4141106)))

(assert (=> d!2158226 (= res!2801959 ((_ is ElementMatch!16697) (ite c!1278445 (reg!17026 (ite c!1278252 (regTwo!33907 lt!2458034) (regTwo!33906 lt!2458034))) (ite c!1278446 (regOne!33907 (ite c!1278252 (regTwo!33907 lt!2458034) (regTwo!33906 lt!2458034))) (regOne!33906 (ite c!1278252 (regTwo!33907 lt!2458034) (regTwo!33906 lt!2458034)))))))))

(assert (=> d!2158226 (= (validRegex!8433 (ite c!1278445 (reg!17026 (ite c!1278252 (regTwo!33907 lt!2458034) (regTwo!33906 lt!2458034))) (ite c!1278446 (regOne!33907 (ite c!1278252 (regTwo!33907 lt!2458034) (regTwo!33906 lt!2458034))) (regOne!33906 (ite c!1278252 (regTwo!33907 lt!2458034) (regTwo!33906 lt!2458034)))))) e!4141106)))

(declare-fun b!6869734 () Bool)

(declare-fun res!2801958 () Bool)

(declare-fun e!4141105 () Bool)

(assert (=> b!6869734 (=> (not res!2801958) (not e!4141105))))

(assert (=> b!6869734 (= res!2801958 call!625761)))

(declare-fun e!4141107 () Bool)

(assert (=> b!6869734 (= e!4141107 e!4141105)))

(declare-fun b!6869735 () Bool)

(assert (=> b!6869735 (= e!4141105 call!625760)))

(declare-fun b!6869736 () Bool)

(declare-fun res!2801961 () Bool)

(assert (=> b!6869736 (=> res!2801961 e!4141108)))

(assert (=> b!6869736 (= res!2801961 (not ((_ is Concat!25542) (ite c!1278445 (reg!17026 (ite c!1278252 (regTwo!33907 lt!2458034) (regTwo!33906 lt!2458034))) (ite c!1278446 (regOne!33907 (ite c!1278252 (regTwo!33907 lt!2458034) (regTwo!33906 lt!2458034))) (regOne!33906 (ite c!1278252 (regTwo!33907 lt!2458034) (regTwo!33906 lt!2458034))))))))))

(assert (=> b!6869736 (= e!4141107 e!4141108)))

(declare-fun b!6869737 () Bool)

(declare-fun e!4141103 () Bool)

(assert (=> b!6869737 (= e!4141103 e!4141107)))

(assert (=> b!6869737 (= c!1278647 ((_ is Union!16697) (ite c!1278445 (reg!17026 (ite c!1278252 (regTwo!33907 lt!2458034) (regTwo!33906 lt!2458034))) (ite c!1278446 (regOne!33907 (ite c!1278252 (regTwo!33907 lt!2458034) (regTwo!33906 lt!2458034))) (regOne!33906 (ite c!1278252 (regTwo!33907 lt!2458034) (regTwo!33906 lt!2458034)))))))))

(declare-fun b!6869738 () Bool)

(assert (=> b!6869738 (= e!4141106 e!4141103)))

(assert (=> b!6869738 (= c!1278646 ((_ is Star!16697) (ite c!1278445 (reg!17026 (ite c!1278252 (regTwo!33907 lt!2458034) (regTwo!33906 lt!2458034))) (ite c!1278446 (regOne!33907 (ite c!1278252 (regTwo!33907 lt!2458034) (regTwo!33906 lt!2458034))) (regOne!33906 (ite c!1278252 (regTwo!33907 lt!2458034) (regTwo!33906 lt!2458034)))))))))

(declare-fun b!6869739 () Bool)

(assert (=> b!6869739 (= e!4141103 e!4141104)))

(declare-fun res!2801962 () Bool)

(assert (=> b!6869739 (= res!2801962 (not (nullable!6658 (reg!17026 (ite c!1278445 (reg!17026 (ite c!1278252 (regTwo!33907 lt!2458034) (regTwo!33906 lt!2458034))) (ite c!1278446 (regOne!33907 (ite c!1278252 (regTwo!33907 lt!2458034) (regTwo!33906 lt!2458034))) (regOne!33906 (ite c!1278252 (regTwo!33907 lt!2458034) (regTwo!33906 lt!2458034)))))))))))

(assert (=> b!6869739 (=> (not res!2801962) (not e!4141104))))

(assert (= (and d!2158226 (not res!2801959)) b!6869738))

(assert (= (and b!6869738 c!1278646) b!6869739))

(assert (= (and b!6869738 (not c!1278646)) b!6869737))

(assert (= (and b!6869739 res!2801962) b!6869732))

(assert (= (and b!6869737 c!1278647) b!6869734))

(assert (= (and b!6869737 (not c!1278647)) b!6869736))

(assert (= (and b!6869734 res!2801958) b!6869735))

(assert (= (and b!6869736 (not res!2801961)) b!6869733))

(assert (= (and b!6869733 res!2801960) b!6869731))

(assert (= (or b!6869735 b!6869731) bm!625756))

(assert (= (or b!6869734 b!6869733) bm!625755))

(assert (= (or b!6869732 bm!625755) bm!625754))

(declare-fun m!7601096 () Bool)

(assert (=> bm!625754 m!7601096))

(declare-fun m!7601098 () Bool)

(assert (=> bm!625756 m!7601098))

(declare-fun m!7601100 () Bool)

(assert (=> b!6869739 m!7601100))

(assert (=> bm!625630 d!2158226))

(declare-fun b!6869740 () Bool)

(declare-fun e!4141114 () Bool)

(declare-fun lt!2458226 () Bool)

(assert (=> b!6869740 (= e!4141114 (not lt!2458226))))

(declare-fun b!6869741 () Bool)

(declare-fun res!2801968 () Bool)

(declare-fun e!4141112 () Bool)

(assert (=> b!6869741 (=> res!2801968 e!4141112)))

(declare-fun e!4141109 () Bool)

(assert (=> b!6869741 (= res!2801968 e!4141109)))

(declare-fun res!2801965 () Bool)

(assert (=> b!6869741 (=> (not res!2801965) (not e!4141109))))

(assert (=> b!6869741 (= res!2801965 lt!2458226)))

(declare-fun b!6869742 () Bool)

(declare-fun e!4141110 () Bool)

(assert (=> b!6869742 (= e!4141110 e!4141114)))

(declare-fun c!1278648 () Bool)

(assert (=> b!6869742 (= c!1278648 ((_ is EmptyLang!16697) (derivativeStep!5340 (derivativeStep!5340 r!7292 (head!13779 s!2326)) (head!13779 (tail!12835 s!2326)))))))

(declare-fun b!6869743 () Bool)

(declare-fun res!2801963 () Bool)

(declare-fun e!4141113 () Bool)

(assert (=> b!6869743 (=> res!2801963 e!4141113)))

(assert (=> b!6869743 (= res!2801963 (not (isEmpty!38627 (tail!12835 (tail!12835 (tail!12835 s!2326))))))))

(declare-fun b!6869744 () Bool)

(declare-fun e!4141115 () Bool)

(assert (=> b!6869744 (= e!4141112 e!4141115)))

(declare-fun res!2801969 () Bool)

(assert (=> b!6869744 (=> (not res!2801969) (not e!4141115))))

(assert (=> b!6869744 (= res!2801969 (not lt!2458226))))

(declare-fun b!6869745 () Bool)

(declare-fun res!2801970 () Bool)

(assert (=> b!6869745 (=> (not res!2801970) (not e!4141109))))

(declare-fun call!625762 () Bool)

(assert (=> b!6869745 (= res!2801970 (not call!625762))))

(declare-fun b!6869746 () Bool)

(declare-fun e!4141111 () Bool)

(assert (=> b!6869746 (= e!4141111 (nullable!6658 (derivativeStep!5340 (derivativeStep!5340 r!7292 (head!13779 s!2326)) (head!13779 (tail!12835 s!2326)))))))

(declare-fun d!2158228 () Bool)

(assert (=> d!2158228 e!4141110))

(declare-fun c!1278650 () Bool)

(assert (=> d!2158228 (= c!1278650 ((_ is EmptyExpr!16697) (derivativeStep!5340 (derivativeStep!5340 r!7292 (head!13779 s!2326)) (head!13779 (tail!12835 s!2326)))))))

(assert (=> d!2158228 (= lt!2458226 e!4141111)))

(declare-fun c!1278649 () Bool)

(assert (=> d!2158228 (= c!1278649 (isEmpty!38627 (tail!12835 (tail!12835 s!2326))))))

(assert (=> d!2158228 (validRegex!8433 (derivativeStep!5340 (derivativeStep!5340 r!7292 (head!13779 s!2326)) (head!13779 (tail!12835 s!2326))))))

(assert (=> d!2158228 (= (matchR!8880 (derivativeStep!5340 (derivativeStep!5340 r!7292 (head!13779 s!2326)) (head!13779 (tail!12835 s!2326))) (tail!12835 (tail!12835 s!2326))) lt!2458226)))

(declare-fun b!6869747 () Bool)

(assert (=> b!6869747 (= e!4141110 (= lt!2458226 call!625762))))

(declare-fun b!6869748 () Bool)

(assert (=> b!6869748 (= e!4141115 e!4141113)))

(declare-fun res!2801967 () Bool)

(assert (=> b!6869748 (=> res!2801967 e!4141113)))

(assert (=> b!6869748 (= res!2801967 call!625762)))

(declare-fun b!6869749 () Bool)

(assert (=> b!6869749 (= e!4141109 (= (head!13779 (tail!12835 (tail!12835 s!2326))) (c!1278149 (derivativeStep!5340 (derivativeStep!5340 r!7292 (head!13779 s!2326)) (head!13779 (tail!12835 s!2326))))))))

(declare-fun b!6869750 () Bool)

(assert (=> b!6869750 (= e!4141111 (matchR!8880 (derivativeStep!5340 (derivativeStep!5340 (derivativeStep!5340 r!7292 (head!13779 s!2326)) (head!13779 (tail!12835 s!2326))) (head!13779 (tail!12835 (tail!12835 s!2326)))) (tail!12835 (tail!12835 (tail!12835 s!2326)))))))

(declare-fun b!6869751 () Bool)

(declare-fun res!2801964 () Bool)

(assert (=> b!6869751 (=> (not res!2801964) (not e!4141109))))

(assert (=> b!6869751 (= res!2801964 (isEmpty!38627 (tail!12835 (tail!12835 (tail!12835 s!2326)))))))

(declare-fun b!6869752 () Bool)

(assert (=> b!6869752 (= e!4141113 (not (= (head!13779 (tail!12835 (tail!12835 s!2326))) (c!1278149 (derivativeStep!5340 (derivativeStep!5340 r!7292 (head!13779 s!2326)) (head!13779 (tail!12835 s!2326)))))))))

(declare-fun b!6869753 () Bool)

(declare-fun res!2801966 () Bool)

(assert (=> b!6869753 (=> res!2801966 e!4141112)))

(assert (=> b!6869753 (= res!2801966 (not ((_ is ElementMatch!16697) (derivativeStep!5340 (derivativeStep!5340 r!7292 (head!13779 s!2326)) (head!13779 (tail!12835 s!2326))))))))

(assert (=> b!6869753 (= e!4141114 e!4141112)))

(declare-fun bm!625757 () Bool)

(assert (=> bm!625757 (= call!625762 (isEmpty!38627 (tail!12835 (tail!12835 s!2326))))))

(assert (= (and d!2158228 c!1278649) b!6869746))

(assert (= (and d!2158228 (not c!1278649)) b!6869750))

(assert (= (and d!2158228 c!1278650) b!6869747))

(assert (= (and d!2158228 (not c!1278650)) b!6869742))

(assert (= (and b!6869742 c!1278648) b!6869740))

(assert (= (and b!6869742 (not c!1278648)) b!6869753))

(assert (= (and b!6869753 (not res!2801966)) b!6869741))

(assert (= (and b!6869741 res!2801965) b!6869745))

(assert (= (and b!6869745 res!2801970) b!6869751))

(assert (= (and b!6869751 res!2801964) b!6869749))

(assert (= (and b!6869741 (not res!2801968)) b!6869744))

(assert (= (and b!6869744 res!2801969) b!6869748))

(assert (= (and b!6869748 (not res!2801967)) b!6869743))

(assert (= (and b!6869743 (not res!2801963)) b!6869752))

(assert (= (or b!6869747 b!6869745 b!6869748) bm!625757))

(assert (=> b!6869751 m!7600164))

(declare-fun m!7601102 () Bool)

(assert (=> b!6869751 m!7601102))

(assert (=> b!6869751 m!7601102))

(declare-fun m!7601104 () Bool)

(assert (=> b!6869751 m!7601104))

(assert (=> bm!625757 m!7600164))

(assert (=> bm!625757 m!7600166))

(assert (=> b!6869743 m!7600164))

(assert (=> b!6869743 m!7601102))

(assert (=> b!6869743 m!7601102))

(assert (=> b!6869743 m!7601104))

(assert (=> b!6869746 m!7600172))

(declare-fun m!7601106 () Bool)

(assert (=> b!6869746 m!7601106))

(assert (=> b!6869750 m!7600164))

(declare-fun m!7601108 () Bool)

(assert (=> b!6869750 m!7601108))

(assert (=> b!6869750 m!7600172))

(assert (=> b!6869750 m!7601108))

(declare-fun m!7601110 () Bool)

(assert (=> b!6869750 m!7601110))

(assert (=> b!6869750 m!7600164))

(assert (=> b!6869750 m!7601102))

(assert (=> b!6869750 m!7601110))

(assert (=> b!6869750 m!7601102))

(declare-fun m!7601112 () Bool)

(assert (=> b!6869750 m!7601112))

(assert (=> d!2158228 m!7600164))

(assert (=> d!2158228 m!7600166))

(assert (=> d!2158228 m!7600172))

(declare-fun m!7601114 () Bool)

(assert (=> d!2158228 m!7601114))

(assert (=> b!6869752 m!7600164))

(assert (=> b!6869752 m!7601108))

(assert (=> b!6869749 m!7600164))

(assert (=> b!6869749 m!7601108))

(assert (=> b!6868855 d!2158228))

(declare-fun b!6869754 () Bool)

(declare-fun e!4141120 () Regex!16697)

(declare-fun e!4141117 () Regex!16697)

(assert (=> b!6869754 (= e!4141120 e!4141117)))

(declare-fun c!1278655 () Bool)

(assert (=> b!6869754 (= c!1278655 ((_ is Star!16697) (derivativeStep!5340 r!7292 (head!13779 s!2326))))))

(declare-fun b!6869755 () Bool)

(declare-fun call!625764 () Regex!16697)

(declare-fun call!625766 () Regex!16697)

(assert (=> b!6869755 (= e!4141120 (Union!16697 call!625764 call!625766))))

(declare-fun bm!625758 () Bool)

(declare-fun call!625763 () Regex!16697)

(assert (=> bm!625758 (= call!625763 call!625766)))

(declare-fun b!6869756 () Bool)

(declare-fun e!4141116 () Regex!16697)

(assert (=> b!6869756 (= e!4141116 (Union!16697 (Concat!25542 call!625763 (regTwo!33906 (derivativeStep!5340 r!7292 (head!13779 s!2326)))) EmptyLang!16697))))

(declare-fun b!6869757 () Bool)

(declare-fun e!4141119 () Regex!16697)

(assert (=> b!6869757 (= e!4141119 EmptyLang!16697)))

(declare-fun bm!625759 () Bool)

(declare-fun c!1278653 () Bool)

(assert (=> bm!625759 (= call!625764 (derivativeStep!5340 (ite c!1278653 (regOne!33907 (derivativeStep!5340 r!7292 (head!13779 s!2326))) (ite c!1278655 (reg!17026 (derivativeStep!5340 r!7292 (head!13779 s!2326))) (regOne!33906 (derivativeStep!5340 r!7292 (head!13779 s!2326))))) (head!13779 (tail!12835 s!2326))))))

(declare-fun b!6869758 () Bool)

(declare-fun call!625765 () Regex!16697)

(assert (=> b!6869758 (= e!4141116 (Union!16697 (Concat!25542 call!625765 (regTwo!33906 (derivativeStep!5340 r!7292 (head!13779 s!2326)))) call!625763))))

(declare-fun bm!625760 () Bool)

(assert (=> bm!625760 (= call!625765 call!625764)))

(declare-fun c!1278652 () Bool)

(declare-fun bm!625761 () Bool)

(assert (=> bm!625761 (= call!625766 (derivativeStep!5340 (ite c!1278653 (regTwo!33907 (derivativeStep!5340 r!7292 (head!13779 s!2326))) (ite c!1278652 (regTwo!33906 (derivativeStep!5340 r!7292 (head!13779 s!2326))) (regOne!33906 (derivativeStep!5340 r!7292 (head!13779 s!2326))))) (head!13779 (tail!12835 s!2326))))))

(declare-fun b!6869759 () Bool)

(assert (=> b!6869759 (= c!1278653 ((_ is Union!16697) (derivativeStep!5340 r!7292 (head!13779 s!2326))))))

(declare-fun e!4141118 () Regex!16697)

(assert (=> b!6869759 (= e!4141118 e!4141120)))

(declare-fun b!6869760 () Bool)

(assert (=> b!6869760 (= c!1278652 (nullable!6658 (regOne!33906 (derivativeStep!5340 r!7292 (head!13779 s!2326)))))))

(assert (=> b!6869760 (= e!4141117 e!4141116)))

(declare-fun b!6869762 () Bool)

(assert (=> b!6869762 (= e!4141119 e!4141118)))

(declare-fun c!1278651 () Bool)

(assert (=> b!6869762 (= c!1278651 ((_ is ElementMatch!16697) (derivativeStep!5340 r!7292 (head!13779 s!2326))))))

(declare-fun b!6869763 () Bool)

(assert (=> b!6869763 (= e!4141118 (ite (= (head!13779 (tail!12835 s!2326)) (c!1278149 (derivativeStep!5340 r!7292 (head!13779 s!2326)))) EmptyExpr!16697 EmptyLang!16697))))

(declare-fun b!6869761 () Bool)

(assert (=> b!6869761 (= e!4141117 (Concat!25542 call!625765 (derivativeStep!5340 r!7292 (head!13779 s!2326))))))

(declare-fun d!2158230 () Bool)

(declare-fun lt!2458227 () Regex!16697)

(assert (=> d!2158230 (validRegex!8433 lt!2458227)))

(assert (=> d!2158230 (= lt!2458227 e!4141119)))

(declare-fun c!1278654 () Bool)

(assert (=> d!2158230 (= c!1278654 (or ((_ is EmptyExpr!16697) (derivativeStep!5340 r!7292 (head!13779 s!2326))) ((_ is EmptyLang!16697) (derivativeStep!5340 r!7292 (head!13779 s!2326)))))))

(assert (=> d!2158230 (validRegex!8433 (derivativeStep!5340 r!7292 (head!13779 s!2326)))))

(assert (=> d!2158230 (= (derivativeStep!5340 (derivativeStep!5340 r!7292 (head!13779 s!2326)) (head!13779 (tail!12835 s!2326))) lt!2458227)))

(assert (= (and d!2158230 c!1278654) b!6869757))

(assert (= (and d!2158230 (not c!1278654)) b!6869762))

(assert (= (and b!6869762 c!1278651) b!6869763))

(assert (= (and b!6869762 (not c!1278651)) b!6869759))

(assert (= (and b!6869759 c!1278653) b!6869755))

(assert (= (and b!6869759 (not c!1278653)) b!6869754))

(assert (= (and b!6869754 c!1278655) b!6869761))

(assert (= (and b!6869754 (not c!1278655)) b!6869760))

(assert (= (and b!6869760 c!1278652) b!6869758))

(assert (= (and b!6869760 (not c!1278652)) b!6869756))

(assert (= (or b!6869758 b!6869756) bm!625758))

(assert (= (or b!6869761 b!6869758) bm!625760))

(assert (= (or b!6869755 bm!625758) bm!625761))

(assert (= (or b!6869755 bm!625760) bm!625759))

(assert (=> bm!625759 m!7600170))

(declare-fun m!7601116 () Bool)

(assert (=> bm!625759 m!7601116))

(assert (=> bm!625761 m!7600170))

(declare-fun m!7601118 () Bool)

(assert (=> bm!625761 m!7601118))

(declare-fun m!7601120 () Bool)

(assert (=> b!6869760 m!7601120))

(declare-fun m!7601122 () Bool)

(assert (=> d!2158230 m!7601122))

(assert (=> d!2158230 m!7599588))

(assert (=> d!2158230 m!7600176))

(assert (=> b!6868855 d!2158230))

(declare-fun d!2158232 () Bool)

(assert (=> d!2158232 (= (head!13779 (tail!12835 s!2326)) (h!72716 (tail!12835 s!2326)))))

(assert (=> b!6868855 d!2158232))

(assert (=> b!6868855 d!2158048))

(declare-fun d!2158234 () Bool)

(declare-fun res!2801971 () Bool)

(declare-fun e!4141121 () Bool)

(assert (=> d!2158234 (=> res!2801971 e!4141121)))

(assert (=> d!2158234 (= res!2801971 ((_ is Nil!66267) (t!380134 lt!2458102)))))

(assert (=> d!2158234 (= (noDuplicate!2461 (t!380134 lt!2458102)) e!4141121)))

(declare-fun b!6869764 () Bool)

(declare-fun e!4141122 () Bool)

(assert (=> b!6869764 (= e!4141121 e!4141122)))

(declare-fun res!2801972 () Bool)

(assert (=> b!6869764 (=> (not res!2801972) (not e!4141122))))

(assert (=> b!6869764 (= res!2801972 (not (contains!20355 (t!380134 (t!380134 lt!2458102)) (h!72715 (t!380134 lt!2458102)))))))

(declare-fun b!6869765 () Bool)

(assert (=> b!6869765 (= e!4141122 (noDuplicate!2461 (t!380134 (t!380134 lt!2458102))))))

(assert (= (and d!2158234 (not res!2801971)) b!6869764))

(assert (= (and b!6869764 res!2801972) b!6869765))

(declare-fun m!7601124 () Bool)

(assert (=> b!6869764 m!7601124))

(declare-fun m!7601126 () Bool)

(assert (=> b!6869765 m!7601126))

(assert (=> b!6868956 d!2158234))

(declare-fun bs!1836768 () Bool)

(declare-fun b!6869769 () Bool)

(assert (= bs!1836768 (and b!6869769 b!6869072)))

(declare-fun lambda!388737 () Int)

(assert (=> bs!1836768 (not (= lambda!388737 lambda!388699))))

(declare-fun bs!1836769 () Bool)

(assert (= bs!1836769 (and b!6869769 b!6867923)))

(assert (=> bs!1836769 (= (and (= (reg!17026 (regOne!33907 (regTwo!33907 r!7292))) (reg!17026 r!7292)) (= (regOne!33907 (regTwo!33907 r!7292)) r!7292)) (= lambda!388737 lambda!388599))))

(declare-fun bs!1836770 () Bool)

(assert (= bs!1836770 (and b!6869769 b!6868968)))

(assert (=> bs!1836770 (not (= lambda!388737 lambda!388686))))

(declare-fun bs!1836771 () Bool)

(assert (= bs!1836771 (and b!6869769 b!6868967)))

(assert (=> bs!1836771 (= (and (= (reg!17026 (regOne!33907 (regTwo!33907 r!7292))) (reg!17026 (regOne!33907 r!7292))) (= (regOne!33907 (regTwo!33907 r!7292)) (regOne!33907 r!7292))) (= lambda!388737 lambda!388685))))

(declare-fun bs!1836772 () Bool)

(assert (= bs!1836772 (and b!6869769 b!6867924)))

(assert (=> bs!1836772 (not (= lambda!388737 lambda!388601))))

(declare-fun bs!1836773 () Bool)

(assert (= bs!1836773 (and b!6869769 b!6869071)))

(assert (=> bs!1836773 (= (and (= (reg!17026 (regOne!33907 (regTwo!33907 r!7292))) (reg!17026 (regTwo!33907 r!7292))) (= (regOne!33907 (regTwo!33907 r!7292)) (regTwo!33907 r!7292))) (= lambda!388737 lambda!388698))))

(declare-fun bs!1836774 () Bool)

(assert (= bs!1836774 (and b!6869769 b!6869692)))

(assert (=> bs!1836774 (not (= lambda!388737 lambda!388734))))

(declare-fun bs!1836775 () Bool)

(assert (= bs!1836775 (and b!6869769 b!6869691)))

(assert (=> bs!1836775 (= (and (= (reg!17026 (regOne!33907 (regTwo!33907 r!7292))) (reg!17026 (regOne!33907 (regOne!33907 r!7292)))) (= (regOne!33907 (regTwo!33907 r!7292)) (regOne!33907 (regOne!33907 r!7292)))) (= lambda!388737 lambda!388732))))

(assert (=> b!6869769 true))

(assert (=> b!6869769 true))

(declare-fun bs!1836776 () Bool)

(declare-fun b!6869770 () Bool)

(assert (= bs!1836776 (and b!6869770 b!6869072)))

(declare-fun lambda!388738 () Int)

(assert (=> bs!1836776 (= (and (= (regOne!33906 (regOne!33907 (regTwo!33907 r!7292))) (regOne!33906 (regTwo!33907 r!7292))) (= (regTwo!33906 (regOne!33907 (regTwo!33907 r!7292))) (regTwo!33906 (regTwo!33907 r!7292)))) (= lambda!388738 lambda!388699))))

(declare-fun bs!1836777 () Bool)

(assert (= bs!1836777 (and b!6869770 b!6869769)))

(assert (=> bs!1836777 (not (= lambda!388738 lambda!388737))))

(declare-fun bs!1836778 () Bool)

(assert (= bs!1836778 (and b!6869770 b!6867923)))

(assert (=> bs!1836778 (not (= lambda!388738 lambda!388599))))

(declare-fun bs!1836779 () Bool)

(assert (= bs!1836779 (and b!6869770 b!6868968)))

(assert (=> bs!1836779 (= (and (= (regOne!33906 (regOne!33907 (regTwo!33907 r!7292))) (regOne!33906 (regOne!33907 r!7292))) (= (regTwo!33906 (regOne!33907 (regTwo!33907 r!7292))) (regTwo!33906 (regOne!33907 r!7292)))) (= lambda!388738 lambda!388686))))

(declare-fun bs!1836780 () Bool)

(assert (= bs!1836780 (and b!6869770 b!6868967)))

(assert (=> bs!1836780 (not (= lambda!388738 lambda!388685))))

(declare-fun bs!1836781 () Bool)

(assert (= bs!1836781 (and b!6869770 b!6867924)))

(assert (=> bs!1836781 (= (and (= (regOne!33906 (regOne!33907 (regTwo!33907 r!7292))) (regOne!33906 r!7292)) (= (regTwo!33906 (regOne!33907 (regTwo!33907 r!7292))) (regTwo!33906 r!7292))) (= lambda!388738 lambda!388601))))

(declare-fun bs!1836782 () Bool)

(assert (= bs!1836782 (and b!6869770 b!6869071)))

(assert (=> bs!1836782 (not (= lambda!388738 lambda!388698))))

(declare-fun bs!1836783 () Bool)

(assert (= bs!1836783 (and b!6869770 b!6869692)))

(assert (=> bs!1836783 (= (and (= (regOne!33906 (regOne!33907 (regTwo!33907 r!7292))) (regOne!33906 (regOne!33907 (regOne!33907 r!7292)))) (= (regTwo!33906 (regOne!33907 (regTwo!33907 r!7292))) (regTwo!33906 (regOne!33907 (regOne!33907 r!7292))))) (= lambda!388738 lambda!388734))))

(declare-fun bs!1836785 () Bool)

(assert (= bs!1836785 (and b!6869770 b!6869691)))

(assert (=> bs!1836785 (not (= lambda!388738 lambda!388732))))

(assert (=> b!6869770 true))

(assert (=> b!6869770 true))

(declare-fun bm!625762 () Bool)

(declare-fun call!625767 () Bool)

(declare-fun c!1278659 () Bool)

(assert (=> bm!625762 (= call!625767 (Exists!3757 (ite c!1278659 lambda!388737 lambda!388738)))))

(declare-fun b!6869766 () Bool)

(declare-fun c!1278656 () Bool)

(assert (=> b!6869766 (= c!1278656 ((_ is ElementMatch!16697) (regOne!33907 (regTwo!33907 r!7292))))))

(declare-fun e!4141126 () Bool)

(declare-fun e!4141125 () Bool)

(assert (=> b!6869766 (= e!4141126 e!4141125)))

(declare-fun b!6869767 () Bool)

(assert (=> b!6869767 (= e!4141125 (= s!2326 (Cons!66268 (c!1278149 (regOne!33907 (regTwo!33907 r!7292))) Nil!66268)))))

(declare-fun b!6869768 () Bool)

(declare-fun e!4141124 () Bool)

(declare-fun e!4141127 () Bool)

(assert (=> b!6869768 (= e!4141124 e!4141127)))

(assert (=> b!6869768 (= c!1278659 ((_ is Star!16697) (regOne!33907 (regTwo!33907 r!7292))))))

(declare-fun e!4141128 () Bool)

(assert (=> b!6869769 (= e!4141128 call!625767)))

(declare-fun bm!625763 () Bool)

(declare-fun call!625768 () Bool)

(assert (=> bm!625763 (= call!625768 (isEmpty!38627 s!2326))))

(declare-fun b!6869771 () Bool)

(declare-fun e!4141129 () Bool)

(assert (=> b!6869771 (= e!4141124 e!4141129)))

(declare-fun res!2801973 () Bool)

(assert (=> b!6869771 (= res!2801973 (matchRSpec!3798 (regOne!33907 (regOne!33907 (regTwo!33907 r!7292))) s!2326))))

(assert (=> b!6869771 (=> res!2801973 e!4141129)))

(declare-fun b!6869772 () Bool)

(declare-fun e!4141123 () Bool)

(assert (=> b!6869772 (= e!4141123 e!4141126)))

(declare-fun res!2801975 () Bool)

(assert (=> b!6869772 (= res!2801975 (not ((_ is EmptyLang!16697) (regOne!33907 (regTwo!33907 r!7292)))))))

(assert (=> b!6869772 (=> (not res!2801975) (not e!4141126))))

(declare-fun b!6869773 () Bool)

(assert (=> b!6869773 (= e!4141123 call!625768)))

(declare-fun b!6869774 () Bool)

(assert (=> b!6869774 (= e!4141129 (matchRSpec!3798 (regTwo!33907 (regOne!33907 (regTwo!33907 r!7292))) s!2326))))

(declare-fun d!2158236 () Bool)

(declare-fun c!1278657 () Bool)

(assert (=> d!2158236 (= c!1278657 ((_ is EmptyExpr!16697) (regOne!33907 (regTwo!33907 r!7292))))))

(assert (=> d!2158236 (= (matchRSpec!3798 (regOne!33907 (regTwo!33907 r!7292)) s!2326) e!4141123)))

(assert (=> b!6869770 (= e!4141127 call!625767)))

(declare-fun b!6869775 () Bool)

(declare-fun res!2801974 () Bool)

(assert (=> b!6869775 (=> res!2801974 e!4141128)))

(assert (=> b!6869775 (= res!2801974 call!625768)))

(assert (=> b!6869775 (= e!4141127 e!4141128)))

(declare-fun b!6869776 () Bool)

(declare-fun c!1278658 () Bool)

(assert (=> b!6869776 (= c!1278658 ((_ is Union!16697) (regOne!33907 (regTwo!33907 r!7292))))))

(assert (=> b!6869776 (= e!4141125 e!4141124)))

(assert (= (and d!2158236 c!1278657) b!6869773))

(assert (= (and d!2158236 (not c!1278657)) b!6869772))

(assert (= (and b!6869772 res!2801975) b!6869766))

(assert (= (and b!6869766 c!1278656) b!6869767))

(assert (= (and b!6869766 (not c!1278656)) b!6869776))

(assert (= (and b!6869776 c!1278658) b!6869771))

(assert (= (and b!6869776 (not c!1278658)) b!6869768))

(assert (= (and b!6869771 (not res!2801973)) b!6869774))

(assert (= (and b!6869768 c!1278659) b!6869775))

(assert (= (and b!6869768 (not c!1278659)) b!6869770))

(assert (= (and b!6869775 (not res!2801974)) b!6869769))

(assert (= (or b!6869769 b!6869770) bm!625762))

(assert (= (or b!6869773 b!6869775) bm!625763))

(declare-fun m!7601162 () Bool)

(assert (=> bm!625762 m!7601162))

(assert (=> bm!625763 m!7599520))

(declare-fun m!7601164 () Bool)

(assert (=> b!6869771 m!7601164))

(declare-fun m!7601166 () Bool)

(assert (=> b!6869774 m!7601166))

(assert (=> b!6869073 d!2158236))

(declare-fun bs!1836794 () Bool)

(declare-fun d!2158258 () Bool)

(assert (= bs!1836794 (and d!2158258 d!2157550)))

(declare-fun lambda!388740 () Int)

(assert (=> bs!1836794 (= lambda!388740 lambda!388619)))

(declare-fun bs!1836796 () Bool)

(assert (= bs!1836796 (and d!2158258 d!2157808)))

(assert (=> bs!1836796 (= lambda!388740 lambda!388680)))

(declare-fun bs!1836798 () Bool)

(assert (= bs!1836798 (and d!2158258 b!6867793)))

(assert (=> bs!1836798 (= lambda!388740 lambda!388573)))

(declare-fun bs!1836799 () Bool)

(assert (= bs!1836799 (and d!2158258 d!2157902)))

(assert (=> bs!1836799 (not (= lambda!388740 lambda!388700))))

(declare-fun bs!1836801 () Bool)

(assert (= bs!1836801 (and d!2158258 d!2158018)))

(assert (=> bs!1836801 (= lambda!388740 lambda!388714)))

(declare-fun bs!1836803 () Bool)

(assert (= bs!1836803 (and d!2158258 d!2158016)))

(assert (=> bs!1836803 (= lambda!388740 lambda!388712)))

(declare-fun bs!1836806 () Bool)

(assert (= bs!1836806 (and d!2158258 d!2158130)))

(assert (=> bs!1836806 (= lambda!388740 lambda!388725)))

(declare-fun bs!1836808 () Bool)

(assert (= bs!1836808 (and d!2158258 d!2157904)))

(assert (=> bs!1836808 (not (= lambda!388740 lambda!388703))))

(declare-fun bs!1836810 () Bool)

(assert (= bs!1836810 (and d!2158258 d!2158076)))

(assert (=> bs!1836810 (= lambda!388740 lambda!388720)))

(declare-fun bs!1836812 () Bool)

(assert (= bs!1836812 (and d!2158258 d!2157890)))

(assert (=> bs!1836812 (= lambda!388740 lambda!388697)))

(declare-fun bs!1836813 () Bool)

(assert (= bs!1836813 (and d!2158258 d!2158188)))

(assert (=> bs!1836813 (= lambda!388740 lambda!388730)))

(declare-fun bs!1836814 () Bool)

(assert (= bs!1836814 (and d!2158258 d!2157564)))

(assert (=> bs!1836814 (= lambda!388740 lambda!388628)))

(declare-fun bs!1836816 () Bool)

(assert (= bs!1836816 (and d!2158258 b!6867798)))

(assert (=> bs!1836816 (not (= lambda!388740 lambda!388571))))

(declare-fun bs!1836817 () Bool)

(assert (= bs!1836817 (and d!2158258 d!2157836)))

(assert (=> bs!1836817 (= lambda!388740 lambda!388688)))

(declare-fun bs!1836818 () Bool)

(assert (= bs!1836818 (and d!2158258 d!2157580)))

(assert (=> bs!1836818 (= lambda!388740 lambda!388640)))

(declare-fun bs!1836819 () Bool)

(assert (= bs!1836819 (and d!2158258 d!2157772)))

(assert (=> bs!1836819 (= lambda!388740 lambda!388675)))

(declare-fun bs!1836820 () Bool)

(assert (= bs!1836820 (and d!2158258 d!2157578)))

(assert (=> bs!1836820 (= lambda!388740 lambda!388636)))

(declare-fun bs!1836821 () Bool)

(assert (= bs!1836821 (and d!2158258 d!2157806)))

(assert (=> bs!1836821 (= lambda!388740 lambda!388679)))

(declare-fun bs!1836822 () Bool)

(assert (= bs!1836822 (and d!2158258 d!2158012)))

(assert (=> bs!1836822 (= lambda!388740 lambda!388710)))

(assert (=> bs!1836820 (not (= lambda!388740 lambda!388637))))

(declare-fun bs!1836823 () Bool)

(assert (= bs!1836823 (and d!2158258 d!2158042)))

(assert (=> bs!1836823 (= lambda!388740 lambda!388716)))

(declare-fun bs!1836824 () Bool)

(assert (= bs!1836824 (and d!2158258 d!2158128)))

(assert (=> bs!1836824 (= lambda!388740 lambda!388723)))

(declare-fun bs!1836825 () Bool)

(assert (= bs!1836825 (and d!2158258 d!2157854)))

(assert (=> bs!1836825 (= lambda!388740 lambda!388689)))

(declare-fun bs!1836826 () Bool)

(assert (= bs!1836826 (and d!2158258 d!2157534)))

(assert (=> bs!1836826 (= lambda!388740 lambda!388616)))

(declare-fun bs!1836827 () Bool)

(assert (= bs!1836827 (and d!2158258 d!2157866)))

(assert (=> bs!1836827 (= lambda!388740 lambda!388693)))

(declare-fun bs!1836828 () Bool)

(assert (= bs!1836828 (and d!2158258 d!2157582)))

(assert (=> bs!1836828 (= lambda!388740 lambda!388641)))

(declare-fun bs!1836829 () Bool)

(assert (= bs!1836829 (and d!2158258 d!2157834)))

(assert (=> bs!1836829 (= lambda!388740 lambda!388687)))

(declare-fun bs!1836830 () Bool)

(assert (= bs!1836830 (and d!2158258 d!2157576)))

(assert (=> bs!1836830 (not (= lambda!388740 lambda!388631))))

(declare-fun bs!1836831 () Bool)

(assert (= bs!1836831 (and d!2158258 d!2157872)))

(assert (=> bs!1836831 (= lambda!388740 lambda!388696)))

(assert (=> d!2158258 (= (inv!84989 (h!72715 (t!380134 (t!380134 zl!343)))) (forall!15890 (exprs!6581 (h!72715 (t!380134 (t!380134 zl!343)))) lambda!388740))))

(declare-fun bs!1836832 () Bool)

(assert (= bs!1836832 d!2158258))

(declare-fun m!7601176 () Bool)

(assert (=> bs!1836832 m!7601176))

(assert (=> b!6869145 d!2158258))

(declare-fun b!6869812 () Bool)

(declare-fun c!1278670 () Bool)

(assert (=> b!6869812 (= c!1278670 ((_ is Union!16697) (ite c!1278394 (regOne!33907 (h!72714 (exprs!6581 lt!2458040))) (regOne!33906 (h!72714 (exprs!6581 lt!2458040))))))))

(declare-fun e!4141158 () Int)

(declare-fun e!4141160 () Int)

(assert (=> b!6869812 (= e!4141158 e!4141160)))

(declare-fun b!6869813 () Bool)

(declare-fun e!4141159 () Int)

(assert (=> b!6869813 (= e!4141159 e!4141158)))

(declare-fun c!1278671 () Bool)

(assert (=> b!6869813 (= c!1278671 ((_ is Star!16697) (ite c!1278394 (regOne!33907 (h!72714 (exprs!6581 lt!2458040))) (regOne!33906 (h!72714 (exprs!6581 lt!2458040))))))))

(declare-fun d!2158266 () Bool)

(declare-fun lt!2458228 () Int)

(assert (=> d!2158266 (> lt!2458228 0)))

(assert (=> d!2158266 (= lt!2458228 e!4141159)))

(declare-fun c!1278669 () Bool)

(assert (=> d!2158266 (= c!1278669 ((_ is ElementMatch!16697) (ite c!1278394 (regOne!33907 (h!72714 (exprs!6581 lt!2458040))) (regOne!33906 (h!72714 (exprs!6581 lt!2458040))))))))

(assert (=> d!2158266 (= (regexDepthTotal!263 (ite c!1278394 (regOne!33907 (h!72714 (exprs!6581 lt!2458040))) (regOne!33906 (h!72714 (exprs!6581 lt!2458040))))) lt!2458228)))

(declare-fun b!6869814 () Bool)

(assert (=> b!6869814 (= e!4141159 1)))

(declare-fun b!6869815 () Bool)

(declare-fun e!4141157 () Int)

(assert (=> b!6869815 (= e!4141160 e!4141157)))

(declare-fun c!1278668 () Bool)

(assert (=> b!6869815 (= c!1278668 ((_ is Concat!25542) (ite c!1278394 (regOne!33907 (h!72714 (exprs!6581 lt!2458040))) (regOne!33906 (h!72714 (exprs!6581 lt!2458040))))))))

(declare-fun b!6869816 () Bool)

(declare-fun call!625779 () Int)

(assert (=> b!6869816 (= e!4141158 (+ 1 call!625779))))

(declare-fun bm!625773 () Bool)

(declare-fun call!625780 () Int)

(assert (=> bm!625773 (= call!625780 (regexDepthTotal!263 (ite c!1278670 (regOne!33907 (ite c!1278394 (regOne!33907 (h!72714 (exprs!6581 lt!2458040))) (regOne!33906 (h!72714 (exprs!6581 lt!2458040))))) (regOne!33906 (ite c!1278394 (regOne!33907 (h!72714 (exprs!6581 lt!2458040))) (regOne!33906 (h!72714 (exprs!6581 lt!2458040))))))))))

(declare-fun b!6869817 () Bool)

(declare-fun call!625778 () Int)

(assert (=> b!6869817 (= e!4141160 (+ 1 call!625780 call!625778))))

(declare-fun b!6869818 () Bool)

(assert (=> b!6869818 (= e!4141157 (+ 1 call!625780 call!625778))))

(declare-fun b!6869819 () Bool)

(assert (=> b!6869819 (= e!4141157 1)))

(declare-fun bm!625774 () Bool)

(assert (=> bm!625774 (= call!625778 call!625779)))

(declare-fun bm!625775 () Bool)

(assert (=> bm!625775 (= call!625779 (regexDepthTotal!263 (ite c!1278671 (reg!17026 (ite c!1278394 (regOne!33907 (h!72714 (exprs!6581 lt!2458040))) (regOne!33906 (h!72714 (exprs!6581 lt!2458040))))) (ite c!1278670 (regTwo!33907 (ite c!1278394 (regOne!33907 (h!72714 (exprs!6581 lt!2458040))) (regOne!33906 (h!72714 (exprs!6581 lt!2458040))))) (regTwo!33906 (ite c!1278394 (regOne!33907 (h!72714 (exprs!6581 lt!2458040))) (regOne!33906 (h!72714 (exprs!6581 lt!2458040)))))))))))

(assert (= (and d!2158266 c!1278669) b!6869814))

(assert (= (and d!2158266 (not c!1278669)) b!6869813))

(assert (= (and b!6869813 c!1278671) b!6869816))

(assert (= (and b!6869813 (not c!1278671)) b!6869812))

(assert (= (and b!6869812 c!1278670) b!6869817))

(assert (= (and b!6869812 (not c!1278670)) b!6869815))

(assert (= (and b!6869815 c!1278668) b!6869818))

(assert (= (and b!6869815 (not c!1278668)) b!6869819))

(assert (= (or b!6869817 b!6869818) bm!625774))

(assert (= (or b!6869817 b!6869818) bm!625773))

(assert (= (or b!6869816 bm!625774) bm!625775))

(declare-fun m!7601188 () Bool)

(assert (=> bm!625773 m!7601188))

(declare-fun m!7601190 () Bool)

(assert (=> bm!625775 m!7601190))

(assert (=> bm!625605 d!2158266))

(declare-fun b!6869820 () Bool)

(declare-fun e!4141161 () Bool)

(declare-fun call!625782 () Bool)

(assert (=> b!6869820 (= e!4141161 call!625782)))

(declare-fun c!1278673 () Bool)

(declare-fun bm!625776 () Bool)

(declare-fun call!625781 () Bool)

(declare-fun c!1278672 () Bool)

(assert (=> bm!625776 (= call!625781 (validRegex!8433 (ite c!1278672 (reg!17026 (ite c!1278436 (reg!17026 (h!72714 (exprs!6581 lt!2458040))) (ite c!1278437 (regOne!33907 (h!72714 (exprs!6581 lt!2458040))) (regOne!33906 (h!72714 (exprs!6581 lt!2458040)))))) (ite c!1278673 (regOne!33907 (ite c!1278436 (reg!17026 (h!72714 (exprs!6581 lt!2458040))) (ite c!1278437 (regOne!33907 (h!72714 (exprs!6581 lt!2458040))) (regOne!33906 (h!72714 (exprs!6581 lt!2458040)))))) (regOne!33906 (ite c!1278436 (reg!17026 (h!72714 (exprs!6581 lt!2458040))) (ite c!1278437 (regOne!33907 (h!72714 (exprs!6581 lt!2458040))) (regOne!33906 (h!72714 (exprs!6581 lt!2458040))))))))))))

(declare-fun bm!625777 () Bool)

(declare-fun call!625783 () Bool)

(assert (=> bm!625777 (= call!625783 call!625781)))

(declare-fun b!6869821 () Bool)

(declare-fun e!4141163 () Bool)

(assert (=> b!6869821 (= e!4141163 call!625781)))

(declare-fun bm!625778 () Bool)

(assert (=> bm!625778 (= call!625782 (validRegex!8433 (ite c!1278673 (regTwo!33907 (ite c!1278436 (reg!17026 (h!72714 (exprs!6581 lt!2458040))) (ite c!1278437 (regOne!33907 (h!72714 (exprs!6581 lt!2458040))) (regOne!33906 (h!72714 (exprs!6581 lt!2458040)))))) (regTwo!33906 (ite c!1278436 (reg!17026 (h!72714 (exprs!6581 lt!2458040))) (ite c!1278437 (regOne!33907 (h!72714 (exprs!6581 lt!2458040))) (regOne!33906 (h!72714 (exprs!6581 lt!2458040)))))))))))

(declare-fun b!6869822 () Bool)

(declare-fun e!4141167 () Bool)

(assert (=> b!6869822 (= e!4141167 e!4141161)))

(declare-fun res!2801997 () Bool)

(assert (=> b!6869822 (=> (not res!2801997) (not e!4141161))))

(assert (=> b!6869822 (= res!2801997 call!625783)))

(declare-fun d!2158270 () Bool)

(declare-fun res!2801996 () Bool)

(declare-fun e!4141165 () Bool)

(assert (=> d!2158270 (=> res!2801996 e!4141165)))

(assert (=> d!2158270 (= res!2801996 ((_ is ElementMatch!16697) (ite c!1278436 (reg!17026 (h!72714 (exprs!6581 lt!2458040))) (ite c!1278437 (regOne!33907 (h!72714 (exprs!6581 lt!2458040))) (regOne!33906 (h!72714 (exprs!6581 lt!2458040)))))))))

(assert (=> d!2158270 (= (validRegex!8433 (ite c!1278436 (reg!17026 (h!72714 (exprs!6581 lt!2458040))) (ite c!1278437 (regOne!33907 (h!72714 (exprs!6581 lt!2458040))) (regOne!33906 (h!72714 (exprs!6581 lt!2458040)))))) e!4141165)))

(declare-fun b!6869823 () Bool)

(declare-fun res!2801995 () Bool)

(declare-fun e!4141164 () Bool)

(assert (=> b!6869823 (=> (not res!2801995) (not e!4141164))))

(assert (=> b!6869823 (= res!2801995 call!625783)))

(declare-fun e!4141166 () Bool)

(assert (=> b!6869823 (= e!4141166 e!4141164)))

(declare-fun b!6869824 () Bool)

(assert (=> b!6869824 (= e!4141164 call!625782)))

(declare-fun b!6869825 () Bool)

(declare-fun res!2801998 () Bool)

(assert (=> b!6869825 (=> res!2801998 e!4141167)))

(assert (=> b!6869825 (= res!2801998 (not ((_ is Concat!25542) (ite c!1278436 (reg!17026 (h!72714 (exprs!6581 lt!2458040))) (ite c!1278437 (regOne!33907 (h!72714 (exprs!6581 lt!2458040))) (regOne!33906 (h!72714 (exprs!6581 lt!2458040))))))))))

(assert (=> b!6869825 (= e!4141166 e!4141167)))

(declare-fun b!6869826 () Bool)

(declare-fun e!4141162 () Bool)

(assert (=> b!6869826 (= e!4141162 e!4141166)))

(assert (=> b!6869826 (= c!1278673 ((_ is Union!16697) (ite c!1278436 (reg!17026 (h!72714 (exprs!6581 lt!2458040))) (ite c!1278437 (regOne!33907 (h!72714 (exprs!6581 lt!2458040))) (regOne!33906 (h!72714 (exprs!6581 lt!2458040)))))))))

(declare-fun b!6869827 () Bool)

(assert (=> b!6869827 (= e!4141165 e!4141162)))

(assert (=> b!6869827 (= c!1278672 ((_ is Star!16697) (ite c!1278436 (reg!17026 (h!72714 (exprs!6581 lt!2458040))) (ite c!1278437 (regOne!33907 (h!72714 (exprs!6581 lt!2458040))) (regOne!33906 (h!72714 (exprs!6581 lt!2458040)))))))))

(declare-fun b!6869828 () Bool)

(assert (=> b!6869828 (= e!4141162 e!4141163)))

(declare-fun res!2801999 () Bool)

(assert (=> b!6869828 (= res!2801999 (not (nullable!6658 (reg!17026 (ite c!1278436 (reg!17026 (h!72714 (exprs!6581 lt!2458040))) (ite c!1278437 (regOne!33907 (h!72714 (exprs!6581 lt!2458040))) (regOne!33906 (h!72714 (exprs!6581 lt!2458040)))))))))))

(assert (=> b!6869828 (=> (not res!2801999) (not e!4141163))))

(assert (= (and d!2158270 (not res!2801996)) b!6869827))

(assert (= (and b!6869827 c!1278672) b!6869828))

(assert (= (and b!6869827 (not c!1278672)) b!6869826))

(assert (= (and b!6869828 res!2801999) b!6869821))

(assert (= (and b!6869826 c!1278673) b!6869823))

(assert (= (and b!6869826 (not c!1278673)) b!6869825))

(assert (= (and b!6869823 res!2801995) b!6869824))

(assert (= (and b!6869825 (not res!2801998)) b!6869822))

(assert (= (and b!6869822 res!2801997) b!6869820))

(assert (= (or b!6869824 b!6869820) bm!625778))

(assert (= (or b!6869823 b!6869822) bm!625777))

(assert (= (or b!6869821 bm!625777) bm!625776))

(declare-fun m!7601194 () Bool)

(assert (=> bm!625776 m!7601194))

(declare-fun m!7601196 () Bool)

(assert (=> bm!625778 m!7601196))

(declare-fun m!7601198 () Bool)

(assert (=> b!6869828 m!7601198))

(assert (=> bm!625624 d!2158270))

(declare-fun d!2158276 () Bool)

(declare-fun res!2802002 () Bool)

(declare-fun e!4141174 () Bool)

(assert (=> d!2158276 (=> res!2802002 e!4141174)))

(assert (=> d!2158276 (= res!2802002 ((_ is Nil!66266) (t!380133 (exprs!6581 lt!2458040))))))

(assert (=> d!2158276 (= (forall!15890 (t!380133 (exprs!6581 lt!2458040)) lambda!388619) e!4141174)))

(declare-fun b!6869839 () Bool)

(declare-fun e!4141175 () Bool)

(assert (=> b!6869839 (= e!4141174 e!4141175)))

(declare-fun res!2802003 () Bool)

(assert (=> b!6869839 (=> (not res!2802003) (not e!4141175))))

(assert (=> b!6869839 (= res!2802003 (dynLambda!26529 lambda!388619 (h!72714 (t!380133 (exprs!6581 lt!2458040)))))))

(declare-fun b!6869840 () Bool)

(assert (=> b!6869840 (= e!4141175 (forall!15890 (t!380133 (t!380133 (exprs!6581 lt!2458040))) lambda!388619))))

(assert (= (and d!2158276 (not res!2802002)) b!6869839))

(assert (= (and b!6869839 res!2802003) b!6869840))

(declare-fun b_lambda!259935 () Bool)

(assert (=> (not b_lambda!259935) (not b!6869839)))

(declare-fun m!7601200 () Bool)

(assert (=> b!6869839 m!7601200))

(declare-fun m!7601202 () Bool)

(assert (=> b!6869840 m!7601202))

(assert (=> b!6869039 d!2158276))

(declare-fun d!2158278 () Bool)

(declare-fun c!1278678 () Bool)

(assert (=> d!2158278 (= c!1278678 ((_ is Nil!66267) res!2801660))))

(declare-fun e!4141176 () (InoxSet Context!12162))

(assert (=> d!2158278 (= (content!13010 res!2801660) e!4141176)))

(declare-fun b!6869841 () Bool)

(assert (=> b!6869841 (= e!4141176 ((as const (Array Context!12162 Bool)) false))))

(declare-fun b!6869842 () Bool)

(assert (=> b!6869842 (= e!4141176 ((_ map or) (store ((as const (Array Context!12162 Bool)) false) (h!72715 res!2801660) true) (content!13010 (t!380134 res!2801660))))))

(assert (= (and d!2158278 c!1278678) b!6869841))

(assert (= (and d!2158278 (not c!1278678)) b!6869842))

(declare-fun m!7601204 () Bool)

(assert (=> b!6869842 m!7601204))

(declare-fun m!7601206 () Bool)

(assert (=> b!6869842 m!7601206))

(assert (=> b!6868903 d!2158278))

(declare-fun b!6869843 () Bool)

(declare-fun e!4141177 () Bool)

(declare-fun call!625785 () Bool)

(assert (=> b!6869843 (= e!4141177 call!625785)))

(declare-fun call!625784 () Bool)

(declare-fun bm!625779 () Bool)

(declare-fun c!1278680 () Bool)

(declare-fun c!1278679 () Bool)

(assert (=> bm!625779 (= call!625784 (validRegex!8433 (ite c!1278679 (reg!17026 (ite c!1278446 (regTwo!33907 (ite c!1278252 (regTwo!33907 lt!2458034) (regTwo!33906 lt!2458034))) (regTwo!33906 (ite c!1278252 (regTwo!33907 lt!2458034) (regTwo!33906 lt!2458034))))) (ite c!1278680 (regOne!33907 (ite c!1278446 (regTwo!33907 (ite c!1278252 (regTwo!33907 lt!2458034) (regTwo!33906 lt!2458034))) (regTwo!33906 (ite c!1278252 (regTwo!33907 lt!2458034) (regTwo!33906 lt!2458034))))) (regOne!33906 (ite c!1278446 (regTwo!33907 (ite c!1278252 (regTwo!33907 lt!2458034) (regTwo!33906 lt!2458034))) (regTwo!33906 (ite c!1278252 (regTwo!33907 lt!2458034) (regTwo!33906 lt!2458034)))))))))))

(declare-fun bm!625780 () Bool)

(declare-fun call!625786 () Bool)

(assert (=> bm!625780 (= call!625786 call!625784)))

(declare-fun b!6869844 () Bool)

(declare-fun e!4141179 () Bool)

(assert (=> b!6869844 (= e!4141179 call!625784)))

(declare-fun bm!625781 () Bool)

(assert (=> bm!625781 (= call!625785 (validRegex!8433 (ite c!1278680 (regTwo!33907 (ite c!1278446 (regTwo!33907 (ite c!1278252 (regTwo!33907 lt!2458034) (regTwo!33906 lt!2458034))) (regTwo!33906 (ite c!1278252 (regTwo!33907 lt!2458034) (regTwo!33906 lt!2458034))))) (regTwo!33906 (ite c!1278446 (regTwo!33907 (ite c!1278252 (regTwo!33907 lt!2458034) (regTwo!33906 lt!2458034))) (regTwo!33906 (ite c!1278252 (regTwo!33907 lt!2458034) (regTwo!33906 lt!2458034))))))))))

(declare-fun b!6869845 () Bool)

(declare-fun e!4141183 () Bool)

(assert (=> b!6869845 (= e!4141183 e!4141177)))

(declare-fun res!2802006 () Bool)

(assert (=> b!6869845 (=> (not res!2802006) (not e!4141177))))

(assert (=> b!6869845 (= res!2802006 call!625786)))

(declare-fun d!2158280 () Bool)

(declare-fun res!2802005 () Bool)

(declare-fun e!4141181 () Bool)

(assert (=> d!2158280 (=> res!2802005 e!4141181)))

(assert (=> d!2158280 (= res!2802005 ((_ is ElementMatch!16697) (ite c!1278446 (regTwo!33907 (ite c!1278252 (regTwo!33907 lt!2458034) (regTwo!33906 lt!2458034))) (regTwo!33906 (ite c!1278252 (regTwo!33907 lt!2458034) (regTwo!33906 lt!2458034))))))))

(assert (=> d!2158280 (= (validRegex!8433 (ite c!1278446 (regTwo!33907 (ite c!1278252 (regTwo!33907 lt!2458034) (regTwo!33906 lt!2458034))) (regTwo!33906 (ite c!1278252 (regTwo!33907 lt!2458034) (regTwo!33906 lt!2458034))))) e!4141181)))

(declare-fun b!6869846 () Bool)

(declare-fun res!2802004 () Bool)

(declare-fun e!4141180 () Bool)

(assert (=> b!6869846 (=> (not res!2802004) (not e!4141180))))

(assert (=> b!6869846 (= res!2802004 call!625786)))

(declare-fun e!4141182 () Bool)

(assert (=> b!6869846 (= e!4141182 e!4141180)))

(declare-fun b!6869847 () Bool)

(assert (=> b!6869847 (= e!4141180 call!625785)))

(declare-fun b!6869848 () Bool)

(declare-fun res!2802007 () Bool)

(assert (=> b!6869848 (=> res!2802007 e!4141183)))

(assert (=> b!6869848 (= res!2802007 (not ((_ is Concat!25542) (ite c!1278446 (regTwo!33907 (ite c!1278252 (regTwo!33907 lt!2458034) (regTwo!33906 lt!2458034))) (regTwo!33906 (ite c!1278252 (regTwo!33907 lt!2458034) (regTwo!33906 lt!2458034)))))))))

(assert (=> b!6869848 (= e!4141182 e!4141183)))

(declare-fun b!6869849 () Bool)

(declare-fun e!4141178 () Bool)

(assert (=> b!6869849 (= e!4141178 e!4141182)))

(assert (=> b!6869849 (= c!1278680 ((_ is Union!16697) (ite c!1278446 (regTwo!33907 (ite c!1278252 (regTwo!33907 lt!2458034) (regTwo!33906 lt!2458034))) (regTwo!33906 (ite c!1278252 (regTwo!33907 lt!2458034) (regTwo!33906 lt!2458034))))))))

(declare-fun b!6869850 () Bool)

(assert (=> b!6869850 (= e!4141181 e!4141178)))

(assert (=> b!6869850 (= c!1278679 ((_ is Star!16697) (ite c!1278446 (regTwo!33907 (ite c!1278252 (regTwo!33907 lt!2458034) (regTwo!33906 lt!2458034))) (regTwo!33906 (ite c!1278252 (regTwo!33907 lt!2458034) (regTwo!33906 lt!2458034))))))))

(declare-fun b!6869851 () Bool)

(assert (=> b!6869851 (= e!4141178 e!4141179)))

(declare-fun res!2802008 () Bool)

(assert (=> b!6869851 (= res!2802008 (not (nullable!6658 (reg!17026 (ite c!1278446 (regTwo!33907 (ite c!1278252 (regTwo!33907 lt!2458034) (regTwo!33906 lt!2458034))) (regTwo!33906 (ite c!1278252 (regTwo!33907 lt!2458034) (regTwo!33906 lt!2458034))))))))))

(assert (=> b!6869851 (=> (not res!2802008) (not e!4141179))))

(assert (= (and d!2158280 (not res!2802005)) b!6869850))

(assert (= (and b!6869850 c!1278679) b!6869851))

(assert (= (and b!6869850 (not c!1278679)) b!6869849))

(assert (= (and b!6869851 res!2802008) b!6869844))

(assert (= (and b!6869849 c!1278680) b!6869846))

(assert (= (and b!6869849 (not c!1278680)) b!6869848))

(assert (= (and b!6869846 res!2802004) b!6869847))

(assert (= (and b!6869848 (not res!2802007)) b!6869845))

(assert (= (and b!6869845 res!2802006) b!6869843))

(assert (= (or b!6869847 b!6869843) bm!625781))

(assert (= (or b!6869846 b!6869845) bm!625780))

(assert (= (or b!6869844 bm!625780) bm!625779))

(declare-fun m!7601208 () Bool)

(assert (=> bm!625779 m!7601208))

(declare-fun m!7601210 () Bool)

(assert (=> bm!625781 m!7601210))

(declare-fun m!7601212 () Bool)

(assert (=> b!6869851 m!7601212))

(assert (=> bm!625632 d!2158280))

(declare-fun bs!1836866 () Bool)

(declare-fun d!2158282 () Bool)

(assert (= bs!1836866 (and d!2158282 b!6867794)))

(declare-fun lambda!388744 () Int)

(assert (=> bs!1836866 (not (= lambda!388744 lambda!388572))))

(declare-fun bs!1836867 () Bool)

(assert (= bs!1836867 (and d!2158282 d!2157558)))

(assert (=> bs!1836867 (not (= lambda!388744 lambda!388625))))

(declare-fun bs!1836868 () Bool)

(assert (= bs!1836868 (and d!2158282 d!2157556)))

(assert (=> bs!1836868 (= lambda!388744 lambda!388622)))

(declare-fun bs!1836869 () Bool)

(assert (= bs!1836869 (and d!2158282 d!2158068)))

(assert (=> bs!1836869 (not (= lambda!388744 lambda!388718))))

(declare-fun bs!1836870 () Bool)

(assert (= bs!1836870 (and d!2158282 d!2157788)))

(assert (=> bs!1836870 (not (= lambda!388744 lambda!388678))))

(declare-fun bs!1836871 () Bool)

(assert (= bs!1836871 (and d!2158282 d!2158070)))

(assert (=> bs!1836871 (not (= lambda!388744 lambda!388719))))

(declare-fun bs!1836872 () Bool)

(assert (= bs!1836872 (and d!2158282 d!2157818)))

(assert (=> bs!1836872 (= (= lambda!388572 lambda!388625) (= lambda!388744 lambda!388681))))

(declare-fun bs!1836873 () Bool)

(assert (= bs!1836873 (and d!2158282 d!2157820)))

(assert (=> bs!1836873 (not (= lambda!388744 lambda!388684))))

(assert (=> d!2158282 true))

(assert (=> d!2158282 (< (dynLambda!26531 order!27729 lambda!388572) (dynLambda!26531 order!27729 lambda!388744))))

(assert (=> d!2158282 (= (exists!2828 (t!380134 zl!343) lambda!388572) (not (forall!15892 (t!380134 zl!343) lambda!388744)))))

(declare-fun bs!1836874 () Bool)

(assert (= bs!1836874 d!2158282))

(declare-fun m!7601232 () Bool)

(assert (=> bs!1836874 m!7601232))

(assert (=> d!2157852 d!2158282))

(declare-fun d!2158286 () Bool)

(declare-fun lt!2458230 () Bool)

(assert (=> d!2158286 (= lt!2458230 (select (content!13010 (t!380134 zl!343)) lt!2458040))))

(declare-fun e!4141192 () Bool)

(assert (=> d!2158286 (= lt!2458230 e!4141192)))

(declare-fun res!2802014 () Bool)

(assert (=> d!2158286 (=> (not res!2802014) (not e!4141192))))

(assert (=> d!2158286 (= res!2802014 ((_ is Cons!66267) (t!380134 zl!343)))))

(assert (=> d!2158286 (= (contains!20355 (t!380134 zl!343) lt!2458040) lt!2458230)))

(declare-fun b!6869861 () Bool)

(declare-fun e!4141191 () Bool)

(assert (=> b!6869861 (= e!4141192 e!4141191)))

(declare-fun res!2802015 () Bool)

(assert (=> b!6869861 (=> res!2802015 e!4141191)))

(assert (=> b!6869861 (= res!2802015 (= (h!72715 (t!380134 zl!343)) lt!2458040))))

(declare-fun b!6869862 () Bool)

(assert (=> b!6869862 (= e!4141191 (contains!20355 (t!380134 (t!380134 zl!343)) lt!2458040))))

(assert (= (and d!2158286 res!2802014) b!6869861))

(assert (= (and b!6869861 (not res!2802015)) b!6869862))

(assert (=> d!2158286 m!7600284))

(declare-fun m!7601234 () Bool)

(assert (=> d!2158286 m!7601234))

(declare-fun m!7601236 () Bool)

(assert (=> b!6869862 m!7601236))

(assert (=> b!6869052 d!2158286))

(declare-fun bs!1836875 () Bool)

(declare-fun d!2158288 () Bool)

(assert (= bs!1836875 (and d!2158288 b!6867794)))

(declare-fun lambda!388745 () Int)

(assert (=> bs!1836875 (not (= lambda!388745 lambda!388572))))

(declare-fun bs!1836876 () Bool)

(assert (= bs!1836876 (and d!2158288 d!2157558)))

(assert (=> bs!1836876 (not (= lambda!388745 lambda!388625))))

(declare-fun bs!1836877 () Bool)

(assert (= bs!1836877 (and d!2158288 d!2157556)))

(assert (=> bs!1836877 (not (= lambda!388745 lambda!388622))))

(declare-fun bs!1836878 () Bool)

(assert (= bs!1836878 (and d!2158288 d!2158068)))

(assert (=> bs!1836878 (= lambda!388745 lambda!388718)))

(declare-fun bs!1836879 () Bool)

(assert (= bs!1836879 (and d!2158288 d!2157788)))

(assert (=> bs!1836879 (= lambda!388745 lambda!388678)))

(declare-fun bs!1836880 () Bool)

(assert (= bs!1836880 (and d!2158288 d!2158282)))

(assert (=> bs!1836880 (not (= lambda!388745 lambda!388744))))

(declare-fun bs!1836881 () Bool)

(assert (= bs!1836881 (and d!2158288 d!2158070)))

(assert (=> bs!1836881 (= lambda!388745 lambda!388719)))

(declare-fun bs!1836882 () Bool)

(assert (= bs!1836882 (and d!2158288 d!2157818)))

(assert (=> bs!1836882 (not (= lambda!388745 lambda!388681))))

(declare-fun bs!1836883 () Bool)

(assert (= bs!1836883 (and d!2158288 d!2157820)))

(assert (=> bs!1836883 (not (= lambda!388745 lambda!388684))))

(assert (=> d!2158288 (= (nullableZipper!2370 (store ((as const (Array Context!12162 Bool)) false) (h!72715 zl!343) true)) (exists!2831 (store ((as const (Array Context!12162 Bool)) false) (h!72715 zl!343) true) lambda!388745))))

(declare-fun bs!1836884 () Bool)

(assert (= bs!1836884 d!2158288))

(assert (=> bs!1836884 m!7599766))

(declare-fun m!7601244 () Bool)

(assert (=> bs!1836884 m!7601244))

(assert (=> b!6868904 d!2158288))

(declare-fun d!2158292 () Bool)

(declare-fun res!2802021 () Bool)

(declare-fun e!4141200 () Bool)

(assert (=> d!2158292 (=> res!2802021 e!4141200)))

(assert (=> d!2158292 (= res!2802021 ((_ is Nil!66266) (t!380133 lt!2458134)))))

(assert (=> d!2158292 (= (forall!15890 (t!380133 lt!2458134) lambda!388640) e!4141200)))

(declare-fun b!6869872 () Bool)

(declare-fun e!4141201 () Bool)

(assert (=> b!6869872 (= e!4141200 e!4141201)))

(declare-fun res!2802022 () Bool)

(assert (=> b!6869872 (=> (not res!2802022) (not e!4141201))))

(assert (=> b!6869872 (= res!2802022 (dynLambda!26529 lambda!388640 (h!72714 (t!380133 lt!2458134))))))

(declare-fun b!6869873 () Bool)

(assert (=> b!6869873 (= e!4141201 (forall!15890 (t!380133 (t!380133 lt!2458134)) lambda!388640))))

(assert (= (and d!2158292 (not res!2802021)) b!6869872))

(assert (= (and b!6869872 res!2802022) b!6869873))

(declare-fun b_lambda!259937 () Bool)

(assert (=> (not b_lambda!259937) (not b!6869872)))

(declare-fun m!7601252 () Bool)

(assert (=> b!6869872 m!7601252))

(declare-fun m!7601254 () Bool)

(assert (=> b!6869873 m!7601254))

(assert (=> b!6868999 d!2158292))

(declare-fun b!6869883 () Bool)

(declare-fun e!4141209 () Bool)

(declare-fun call!625797 () Bool)

(assert (=> b!6869883 (= e!4141209 call!625797)))

(declare-fun bm!625791 () Bool)

(declare-fun call!625796 () Bool)

(declare-fun c!1278688 () Bool)

(declare-fun c!1278687 () Bool)

(assert (=> bm!625791 (= call!625796 (validRegex!8433 (ite c!1278687 (reg!17026 (h!72714 (exprs!6581 (h!72715 zl!343)))) (ite c!1278688 (regOne!33907 (h!72714 (exprs!6581 (h!72715 zl!343)))) (regOne!33906 (h!72714 (exprs!6581 (h!72715 zl!343))))))))))

(declare-fun bm!625792 () Bool)

(declare-fun call!625798 () Bool)

(assert (=> bm!625792 (= call!625798 call!625796)))

(declare-fun b!6869884 () Bool)

(declare-fun e!4141211 () Bool)

(assert (=> b!6869884 (= e!4141211 call!625796)))

(declare-fun bm!625793 () Bool)

(assert (=> bm!625793 (= call!625797 (validRegex!8433 (ite c!1278688 (regTwo!33907 (h!72714 (exprs!6581 (h!72715 zl!343)))) (regTwo!33906 (h!72714 (exprs!6581 (h!72715 zl!343)))))))))

(declare-fun b!6869885 () Bool)

(declare-fun e!4141215 () Bool)

(assert (=> b!6869885 (= e!4141215 e!4141209)))

(declare-fun res!2802030 () Bool)

(assert (=> b!6869885 (=> (not res!2802030) (not e!4141209))))

(assert (=> b!6869885 (= res!2802030 call!625798)))

(declare-fun d!2158296 () Bool)

(declare-fun res!2802029 () Bool)

(declare-fun e!4141213 () Bool)

(assert (=> d!2158296 (=> res!2802029 e!4141213)))

(assert (=> d!2158296 (= res!2802029 ((_ is ElementMatch!16697) (h!72714 (exprs!6581 (h!72715 zl!343)))))))

(assert (=> d!2158296 (= (validRegex!8433 (h!72714 (exprs!6581 (h!72715 zl!343)))) e!4141213)))

(declare-fun b!6869886 () Bool)

(declare-fun res!2802028 () Bool)

(declare-fun e!4141212 () Bool)

(assert (=> b!6869886 (=> (not res!2802028) (not e!4141212))))

(assert (=> b!6869886 (= res!2802028 call!625798)))

(declare-fun e!4141214 () Bool)

(assert (=> b!6869886 (= e!4141214 e!4141212)))

(declare-fun b!6869887 () Bool)

(assert (=> b!6869887 (= e!4141212 call!625797)))

(declare-fun b!6869888 () Bool)

(declare-fun res!2802031 () Bool)

(assert (=> b!6869888 (=> res!2802031 e!4141215)))

(assert (=> b!6869888 (= res!2802031 (not ((_ is Concat!25542) (h!72714 (exprs!6581 (h!72715 zl!343))))))))

(assert (=> b!6869888 (= e!4141214 e!4141215)))

(declare-fun b!6869889 () Bool)

(declare-fun e!4141210 () Bool)

(assert (=> b!6869889 (= e!4141210 e!4141214)))

(assert (=> b!6869889 (= c!1278688 ((_ is Union!16697) (h!72714 (exprs!6581 (h!72715 zl!343)))))))

(declare-fun b!6869890 () Bool)

(assert (=> b!6869890 (= e!4141213 e!4141210)))

(assert (=> b!6869890 (= c!1278687 ((_ is Star!16697) (h!72714 (exprs!6581 (h!72715 zl!343)))))))

(declare-fun b!6869891 () Bool)

(assert (=> b!6869891 (= e!4141210 e!4141211)))

(declare-fun res!2802032 () Bool)

(assert (=> b!6869891 (= res!2802032 (not (nullable!6658 (reg!17026 (h!72714 (exprs!6581 (h!72715 zl!343)))))))))

(assert (=> b!6869891 (=> (not res!2802032) (not e!4141211))))

(assert (= (and d!2158296 (not res!2802029)) b!6869890))

(assert (= (and b!6869890 c!1278687) b!6869891))

(assert (= (and b!6869890 (not c!1278687)) b!6869889))

(assert (= (and b!6869891 res!2802032) b!6869884))

(assert (= (and b!6869889 c!1278688) b!6869886))

(assert (= (and b!6869889 (not c!1278688)) b!6869888))

(assert (= (and b!6869886 res!2802028) b!6869887))

(assert (= (and b!6869888 (not res!2802031)) b!6869885))

(assert (= (and b!6869885 res!2802030) b!6869883))

(assert (= (or b!6869887 b!6869883) bm!625793))

(assert (= (or b!6869886 b!6869885) bm!625792))

(assert (= (or b!6869884 bm!625792) bm!625791))

(declare-fun m!7601262 () Bool)

(assert (=> bm!625791 m!7601262))

(declare-fun m!7601264 () Bool)

(assert (=> bm!625793 m!7601264))

(declare-fun m!7601266 () Bool)

(assert (=> b!6869891 m!7601266))

(assert (=> bs!1836223 d!2158296))

(declare-fun b!6869894 () Bool)

(declare-fun e!4141218 () Bool)

(declare-fun call!625800 () Bool)

(assert (=> b!6869894 (= e!4141218 call!625800)))

(declare-fun c!1278689 () Bool)

(declare-fun bm!625794 () Bool)

(declare-fun call!625799 () Bool)

(declare-fun c!1278690 () Bool)

(assert (=> bm!625794 (= call!625799 (validRegex!8433 (ite c!1278689 (reg!17026 (ite c!1278486 (regTwo!33907 (ite c!1278250 (regTwo!33907 r!7292) (regTwo!33906 r!7292))) (regTwo!33906 (ite c!1278250 (regTwo!33907 r!7292) (regTwo!33906 r!7292))))) (ite c!1278690 (regOne!33907 (ite c!1278486 (regTwo!33907 (ite c!1278250 (regTwo!33907 r!7292) (regTwo!33906 r!7292))) (regTwo!33906 (ite c!1278250 (regTwo!33907 r!7292) (regTwo!33906 r!7292))))) (regOne!33906 (ite c!1278486 (regTwo!33907 (ite c!1278250 (regTwo!33907 r!7292) (regTwo!33906 r!7292))) (regTwo!33906 (ite c!1278250 (regTwo!33907 r!7292) (regTwo!33906 r!7292)))))))))))

(declare-fun bm!625795 () Bool)

(declare-fun call!625801 () Bool)

(assert (=> bm!625795 (= call!625801 call!625799)))

(declare-fun b!6869895 () Bool)

(declare-fun e!4141220 () Bool)

(assert (=> b!6869895 (= e!4141220 call!625799)))

(declare-fun bm!625796 () Bool)

(assert (=> bm!625796 (= call!625800 (validRegex!8433 (ite c!1278690 (regTwo!33907 (ite c!1278486 (regTwo!33907 (ite c!1278250 (regTwo!33907 r!7292) (regTwo!33906 r!7292))) (regTwo!33906 (ite c!1278250 (regTwo!33907 r!7292) (regTwo!33906 r!7292))))) (regTwo!33906 (ite c!1278486 (regTwo!33907 (ite c!1278250 (regTwo!33907 r!7292) (regTwo!33906 r!7292))) (regTwo!33906 (ite c!1278250 (regTwo!33907 r!7292) (regTwo!33906 r!7292))))))))))

(declare-fun b!6869896 () Bool)

(declare-fun e!4141224 () Bool)

(assert (=> b!6869896 (= e!4141224 e!4141218)))

(declare-fun res!2802037 () Bool)

(assert (=> b!6869896 (=> (not res!2802037) (not e!4141218))))

(assert (=> b!6869896 (= res!2802037 call!625801)))

(declare-fun d!2158300 () Bool)

(declare-fun res!2802036 () Bool)

(declare-fun e!4141222 () Bool)

(assert (=> d!2158300 (=> res!2802036 e!4141222)))

(assert (=> d!2158300 (= res!2802036 ((_ is ElementMatch!16697) (ite c!1278486 (regTwo!33907 (ite c!1278250 (regTwo!33907 r!7292) (regTwo!33906 r!7292))) (regTwo!33906 (ite c!1278250 (regTwo!33907 r!7292) (regTwo!33906 r!7292))))))))

(assert (=> d!2158300 (= (validRegex!8433 (ite c!1278486 (regTwo!33907 (ite c!1278250 (regTwo!33907 r!7292) (regTwo!33906 r!7292))) (regTwo!33906 (ite c!1278250 (regTwo!33907 r!7292) (regTwo!33906 r!7292))))) e!4141222)))

(declare-fun b!6869897 () Bool)

(declare-fun res!2802035 () Bool)

(declare-fun e!4141221 () Bool)

(assert (=> b!6869897 (=> (not res!2802035) (not e!4141221))))

(assert (=> b!6869897 (= res!2802035 call!625801)))

(declare-fun e!4141223 () Bool)

(assert (=> b!6869897 (= e!4141223 e!4141221)))

(declare-fun b!6869898 () Bool)

(assert (=> b!6869898 (= e!4141221 call!625800)))

(declare-fun b!6869899 () Bool)

(declare-fun res!2802038 () Bool)

(assert (=> b!6869899 (=> res!2802038 e!4141224)))

(assert (=> b!6869899 (= res!2802038 (not ((_ is Concat!25542) (ite c!1278486 (regTwo!33907 (ite c!1278250 (regTwo!33907 r!7292) (regTwo!33906 r!7292))) (regTwo!33906 (ite c!1278250 (regTwo!33907 r!7292) (regTwo!33906 r!7292)))))))))

(assert (=> b!6869899 (= e!4141223 e!4141224)))

(declare-fun b!6869900 () Bool)

(declare-fun e!4141219 () Bool)

(assert (=> b!6869900 (= e!4141219 e!4141223)))

(assert (=> b!6869900 (= c!1278690 ((_ is Union!16697) (ite c!1278486 (regTwo!33907 (ite c!1278250 (regTwo!33907 r!7292) (regTwo!33906 r!7292))) (regTwo!33906 (ite c!1278250 (regTwo!33907 r!7292) (regTwo!33906 r!7292))))))))

(declare-fun b!6869901 () Bool)

(assert (=> b!6869901 (= e!4141222 e!4141219)))

(assert (=> b!6869901 (= c!1278689 ((_ is Star!16697) (ite c!1278486 (regTwo!33907 (ite c!1278250 (regTwo!33907 r!7292) (regTwo!33906 r!7292))) (regTwo!33906 (ite c!1278250 (regTwo!33907 r!7292) (regTwo!33906 r!7292))))))))

(declare-fun b!6869902 () Bool)

(assert (=> b!6869902 (= e!4141219 e!4141220)))

(declare-fun res!2802039 () Bool)

(assert (=> b!6869902 (= res!2802039 (not (nullable!6658 (reg!17026 (ite c!1278486 (regTwo!33907 (ite c!1278250 (regTwo!33907 r!7292) (regTwo!33906 r!7292))) (regTwo!33906 (ite c!1278250 (regTwo!33907 r!7292) (regTwo!33906 r!7292))))))))))

(assert (=> b!6869902 (=> (not res!2802039) (not e!4141220))))

(assert (= (and d!2158300 (not res!2802036)) b!6869901))

(assert (= (and b!6869901 c!1278689) b!6869902))

(assert (= (and b!6869901 (not c!1278689)) b!6869900))

(assert (= (and b!6869902 res!2802039) b!6869895))

(assert (= (and b!6869900 c!1278690) b!6869897))

(assert (= (and b!6869900 (not c!1278690)) b!6869899))

(assert (= (and b!6869897 res!2802035) b!6869898))

(assert (= (and b!6869899 (not res!2802038)) b!6869896))

(assert (= (and b!6869896 res!2802037) b!6869894))

(assert (= (or b!6869898 b!6869894) bm!625796))

(assert (= (or b!6869897 b!6869896) bm!625795))

(assert (= (or b!6869895 bm!625795) bm!625794))

(declare-fun m!7601272 () Bool)

(assert (=> bm!625794 m!7601272))

(declare-fun m!7601274 () Bool)

(assert (=> bm!625796 m!7601274))

(declare-fun m!7601278 () Bool)

(assert (=> b!6869902 m!7601278))

(assert (=> bm!625648 d!2158300))

(declare-fun b!6869911 () Bool)

(declare-fun e!4141229 () Bool)

(declare-fun call!625806 () Bool)

(assert (=> b!6869911 (= e!4141229 call!625806)))

(declare-fun call!625805 () Bool)

(declare-fun c!1278696 () Bool)

(declare-fun bm!625800 () Bool)

(declare-fun c!1278695 () Bool)

(assert (=> bm!625800 (= call!625805 (validRegex!8433 (ite c!1278695 (reg!17026 (h!72714 lt!2458035)) (ite c!1278696 (regOne!33907 (h!72714 lt!2458035)) (regOne!33906 (h!72714 lt!2458035))))))))

(declare-fun bm!625801 () Bool)

(declare-fun call!625807 () Bool)

(assert (=> bm!625801 (= call!625807 call!625805)))

(declare-fun b!6869912 () Bool)

(declare-fun e!4141231 () Bool)

(assert (=> b!6869912 (= e!4141231 call!625805)))

(declare-fun bm!625802 () Bool)

(assert (=> bm!625802 (= call!625806 (validRegex!8433 (ite c!1278696 (regTwo!33907 (h!72714 lt!2458035)) (regTwo!33906 (h!72714 lt!2458035)))))))

(declare-fun b!6869913 () Bool)

(declare-fun e!4141235 () Bool)

(assert (=> b!6869913 (= e!4141235 e!4141229)))

(declare-fun res!2802042 () Bool)

(assert (=> b!6869913 (=> (not res!2802042) (not e!4141229))))

(assert (=> b!6869913 (= res!2802042 call!625807)))

(declare-fun d!2158304 () Bool)

(declare-fun res!2802041 () Bool)

(declare-fun e!4141233 () Bool)

(assert (=> d!2158304 (=> res!2802041 e!4141233)))

(assert (=> d!2158304 (= res!2802041 ((_ is ElementMatch!16697) (h!72714 lt!2458035)))))

(assert (=> d!2158304 (= (validRegex!8433 (h!72714 lt!2458035)) e!4141233)))

(declare-fun b!6869914 () Bool)

(declare-fun res!2802040 () Bool)

(declare-fun e!4141232 () Bool)

(assert (=> b!6869914 (=> (not res!2802040) (not e!4141232))))

(assert (=> b!6869914 (= res!2802040 call!625807)))

(declare-fun e!4141234 () Bool)

(assert (=> b!6869914 (= e!4141234 e!4141232)))

(declare-fun b!6869915 () Bool)

(assert (=> b!6869915 (= e!4141232 call!625806)))

(declare-fun b!6869916 () Bool)

(declare-fun res!2802043 () Bool)

(assert (=> b!6869916 (=> res!2802043 e!4141235)))

(assert (=> b!6869916 (= res!2802043 (not ((_ is Concat!25542) (h!72714 lt!2458035))))))

(assert (=> b!6869916 (= e!4141234 e!4141235)))

(declare-fun b!6869917 () Bool)

(declare-fun e!4141230 () Bool)

(assert (=> b!6869917 (= e!4141230 e!4141234)))

(assert (=> b!6869917 (= c!1278696 ((_ is Union!16697) (h!72714 lt!2458035)))))

(declare-fun b!6869918 () Bool)

(assert (=> b!6869918 (= e!4141233 e!4141230)))

(assert (=> b!6869918 (= c!1278695 ((_ is Star!16697) (h!72714 lt!2458035)))))

(declare-fun b!6869919 () Bool)

(assert (=> b!6869919 (= e!4141230 e!4141231)))

(declare-fun res!2802044 () Bool)

(assert (=> b!6869919 (= res!2802044 (not (nullable!6658 (reg!17026 (h!72714 lt!2458035)))))))

(assert (=> b!6869919 (=> (not res!2802044) (not e!4141231))))

(assert (= (and d!2158304 (not res!2802041)) b!6869918))

(assert (= (and b!6869918 c!1278695) b!6869919))

(assert (= (and b!6869918 (not c!1278695)) b!6869917))

(assert (= (and b!6869919 res!2802044) b!6869912))

(assert (= (and b!6869917 c!1278696) b!6869914))

(assert (= (and b!6869917 (not c!1278696)) b!6869916))

(assert (= (and b!6869914 res!2802040) b!6869915))

(assert (= (and b!6869916 (not res!2802043)) b!6869913))

(assert (= (and b!6869913 res!2802042) b!6869911))

(assert (= (or b!6869915 b!6869911) bm!625802))

(assert (= (or b!6869914 b!6869913) bm!625801))

(assert (= (or b!6869912 bm!625801) bm!625800))

(declare-fun m!7601286 () Bool)

(assert (=> bm!625800 m!7601286))

(declare-fun m!7601288 () Bool)

(assert (=> bm!625802 m!7601288))

(declare-fun m!7601290 () Bool)

(assert (=> b!6869919 m!7601290))

(assert (=> bs!1836231 d!2158304))

(declare-fun d!2158310 () Bool)

(assert (=> d!2158310 (= (isEmptyExpr!2017 lt!2458174) ((_ is EmptyExpr!16697) lt!2458174))))

(assert (=> b!6868991 d!2158310))

(declare-fun b!6869922 () Bool)

(declare-fun e!4141237 () Bool)

(declare-fun call!625809 () Bool)

(assert (=> b!6869922 (= e!4141237 call!625809)))

(declare-fun call!625808 () Bool)

(declare-fun bm!625803 () Bool)

(declare-fun c!1278698 () Bool)

(declare-fun c!1278699 () Bool)

(assert (=> bm!625803 (= call!625808 (validRegex!8433 (ite c!1278698 (reg!17026 (ite c!1278477 (reg!17026 (ite c!1278251 (reg!17026 lt!2458034) (ite c!1278252 (regOne!33907 lt!2458034) (regOne!33906 lt!2458034)))) (ite c!1278478 (regOne!33907 (ite c!1278251 (reg!17026 lt!2458034) (ite c!1278252 (regOne!33907 lt!2458034) (regOne!33906 lt!2458034)))) (regOne!33906 (ite c!1278251 (reg!17026 lt!2458034) (ite c!1278252 (regOne!33907 lt!2458034) (regOne!33906 lt!2458034))))))) (ite c!1278699 (regOne!33907 (ite c!1278477 (reg!17026 (ite c!1278251 (reg!17026 lt!2458034) (ite c!1278252 (regOne!33907 lt!2458034) (regOne!33906 lt!2458034)))) (ite c!1278478 (regOne!33907 (ite c!1278251 (reg!17026 lt!2458034) (ite c!1278252 (regOne!33907 lt!2458034) (regOne!33906 lt!2458034)))) (regOne!33906 (ite c!1278251 (reg!17026 lt!2458034) (ite c!1278252 (regOne!33907 lt!2458034) (regOne!33906 lt!2458034))))))) (regOne!33906 (ite c!1278477 (reg!17026 (ite c!1278251 (reg!17026 lt!2458034) (ite c!1278252 (regOne!33907 lt!2458034) (regOne!33906 lt!2458034)))) (ite c!1278478 (regOne!33907 (ite c!1278251 (reg!17026 lt!2458034) (ite c!1278252 (regOne!33907 lt!2458034) (regOne!33906 lt!2458034)))) (regOne!33906 (ite c!1278251 (reg!17026 lt!2458034) (ite c!1278252 (regOne!33907 lt!2458034) (regOne!33906 lt!2458034)))))))))))))

(declare-fun bm!625804 () Bool)

(declare-fun call!625810 () Bool)

(assert (=> bm!625804 (= call!625810 call!625808)))

(declare-fun b!6869923 () Bool)

(declare-fun e!4141239 () Bool)

(assert (=> b!6869923 (= e!4141239 call!625808)))

(declare-fun bm!625805 () Bool)

(assert (=> bm!625805 (= call!625809 (validRegex!8433 (ite c!1278699 (regTwo!33907 (ite c!1278477 (reg!17026 (ite c!1278251 (reg!17026 lt!2458034) (ite c!1278252 (regOne!33907 lt!2458034) (regOne!33906 lt!2458034)))) (ite c!1278478 (regOne!33907 (ite c!1278251 (reg!17026 lt!2458034) (ite c!1278252 (regOne!33907 lt!2458034) (regOne!33906 lt!2458034)))) (regOne!33906 (ite c!1278251 (reg!17026 lt!2458034) (ite c!1278252 (regOne!33907 lt!2458034) (regOne!33906 lt!2458034))))))) (regTwo!33906 (ite c!1278477 (reg!17026 (ite c!1278251 (reg!17026 lt!2458034) (ite c!1278252 (regOne!33907 lt!2458034) (regOne!33906 lt!2458034)))) (ite c!1278478 (regOne!33907 (ite c!1278251 (reg!17026 lt!2458034) (ite c!1278252 (regOne!33907 lt!2458034) (regOne!33906 lt!2458034)))) (regOne!33906 (ite c!1278251 (reg!17026 lt!2458034) (ite c!1278252 (regOne!33907 lt!2458034) (regOne!33906 lt!2458034))))))))))))

(declare-fun b!6869924 () Bool)

(declare-fun e!4141243 () Bool)

(assert (=> b!6869924 (= e!4141243 e!4141237)))

(declare-fun res!2802047 () Bool)

(assert (=> b!6869924 (=> (not res!2802047) (not e!4141237))))

(assert (=> b!6869924 (= res!2802047 call!625810)))

(declare-fun d!2158312 () Bool)

(declare-fun res!2802046 () Bool)

(declare-fun e!4141241 () Bool)

(assert (=> d!2158312 (=> res!2802046 e!4141241)))

(assert (=> d!2158312 (= res!2802046 ((_ is ElementMatch!16697) (ite c!1278477 (reg!17026 (ite c!1278251 (reg!17026 lt!2458034) (ite c!1278252 (regOne!33907 lt!2458034) (regOne!33906 lt!2458034)))) (ite c!1278478 (regOne!33907 (ite c!1278251 (reg!17026 lt!2458034) (ite c!1278252 (regOne!33907 lt!2458034) (regOne!33906 lt!2458034)))) (regOne!33906 (ite c!1278251 (reg!17026 lt!2458034) (ite c!1278252 (regOne!33907 lt!2458034) (regOne!33906 lt!2458034))))))))))

(assert (=> d!2158312 (= (validRegex!8433 (ite c!1278477 (reg!17026 (ite c!1278251 (reg!17026 lt!2458034) (ite c!1278252 (regOne!33907 lt!2458034) (regOne!33906 lt!2458034)))) (ite c!1278478 (regOne!33907 (ite c!1278251 (reg!17026 lt!2458034) (ite c!1278252 (regOne!33907 lt!2458034) (regOne!33906 lt!2458034)))) (regOne!33906 (ite c!1278251 (reg!17026 lt!2458034) (ite c!1278252 (regOne!33907 lt!2458034) (regOne!33906 lt!2458034))))))) e!4141241)))

(declare-fun b!6869925 () Bool)

(declare-fun res!2802045 () Bool)

(declare-fun e!4141240 () Bool)

(assert (=> b!6869925 (=> (not res!2802045) (not e!4141240))))

(assert (=> b!6869925 (= res!2802045 call!625810)))

(declare-fun e!4141242 () Bool)

(assert (=> b!6869925 (= e!4141242 e!4141240)))

(declare-fun b!6869926 () Bool)

(assert (=> b!6869926 (= e!4141240 call!625809)))

(declare-fun b!6869927 () Bool)

(declare-fun res!2802048 () Bool)

(assert (=> b!6869927 (=> res!2802048 e!4141243)))

(assert (=> b!6869927 (= res!2802048 (not ((_ is Concat!25542) (ite c!1278477 (reg!17026 (ite c!1278251 (reg!17026 lt!2458034) (ite c!1278252 (regOne!33907 lt!2458034) (regOne!33906 lt!2458034)))) (ite c!1278478 (regOne!33907 (ite c!1278251 (reg!17026 lt!2458034) (ite c!1278252 (regOne!33907 lt!2458034) (regOne!33906 lt!2458034)))) (regOne!33906 (ite c!1278251 (reg!17026 lt!2458034) (ite c!1278252 (regOne!33907 lt!2458034) (regOne!33906 lt!2458034)))))))))))

(assert (=> b!6869927 (= e!4141242 e!4141243)))

(declare-fun b!6869928 () Bool)

(declare-fun e!4141238 () Bool)

(assert (=> b!6869928 (= e!4141238 e!4141242)))

(assert (=> b!6869928 (= c!1278699 ((_ is Union!16697) (ite c!1278477 (reg!17026 (ite c!1278251 (reg!17026 lt!2458034) (ite c!1278252 (regOne!33907 lt!2458034) (regOne!33906 lt!2458034)))) (ite c!1278478 (regOne!33907 (ite c!1278251 (reg!17026 lt!2458034) (ite c!1278252 (regOne!33907 lt!2458034) (regOne!33906 lt!2458034)))) (regOne!33906 (ite c!1278251 (reg!17026 lt!2458034) (ite c!1278252 (regOne!33907 lt!2458034) (regOne!33906 lt!2458034))))))))))

(declare-fun b!6869929 () Bool)

(assert (=> b!6869929 (= e!4141241 e!4141238)))

(assert (=> b!6869929 (= c!1278698 ((_ is Star!16697) (ite c!1278477 (reg!17026 (ite c!1278251 (reg!17026 lt!2458034) (ite c!1278252 (regOne!33907 lt!2458034) (regOne!33906 lt!2458034)))) (ite c!1278478 (regOne!33907 (ite c!1278251 (reg!17026 lt!2458034) (ite c!1278252 (regOne!33907 lt!2458034) (regOne!33906 lt!2458034)))) (regOne!33906 (ite c!1278251 (reg!17026 lt!2458034) (ite c!1278252 (regOne!33907 lt!2458034) (regOne!33906 lt!2458034))))))))))

(declare-fun b!6869930 () Bool)

(assert (=> b!6869930 (= e!4141238 e!4141239)))

(declare-fun res!2802049 () Bool)

(assert (=> b!6869930 (= res!2802049 (not (nullable!6658 (reg!17026 (ite c!1278477 (reg!17026 (ite c!1278251 (reg!17026 lt!2458034) (ite c!1278252 (regOne!33907 lt!2458034) (regOne!33906 lt!2458034)))) (ite c!1278478 (regOne!33907 (ite c!1278251 (reg!17026 lt!2458034) (ite c!1278252 (regOne!33907 lt!2458034) (regOne!33906 lt!2458034)))) (regOne!33906 (ite c!1278251 (reg!17026 lt!2458034) (ite c!1278252 (regOne!33907 lt!2458034) (regOne!33906 lt!2458034))))))))))))

(assert (=> b!6869930 (=> (not res!2802049) (not e!4141239))))

(assert (= (and d!2158312 (not res!2802046)) b!6869929))

(assert (= (and b!6869929 c!1278698) b!6869930))

(assert (= (and b!6869929 (not c!1278698)) b!6869928))

(assert (= (and b!6869930 res!2802049) b!6869923))

(assert (= (and b!6869928 c!1278699) b!6869925))

(assert (= (and b!6869928 (not c!1278699)) b!6869927))

(assert (= (and b!6869925 res!2802045) b!6869926))

(assert (= (and b!6869927 (not res!2802048)) b!6869924))

(assert (= (and b!6869924 res!2802047) b!6869922))

(assert (= (or b!6869926 b!6869922) bm!625805))

(assert (= (or b!6869925 b!6869924) bm!625804))

(assert (= (or b!6869923 bm!625804) bm!625803))

(declare-fun m!7601292 () Bool)

(assert (=> bm!625803 m!7601292))

(declare-fun m!7601294 () Bool)

(assert (=> bm!625805 m!7601294))

(declare-fun m!7601296 () Bool)

(assert (=> b!6869930 m!7601296))

(assert (=> bm!625641 d!2158312))

(declare-fun bs!1836909 () Bool)

(declare-fun d!2158314 () Bool)

(assert (= bs!1836909 (and d!2158314 d!2157558)))

(declare-fun lambda!388747 () Int)

(assert (=> bs!1836909 (not (= lambda!388747 lambda!388625))))

(declare-fun bs!1836912 () Bool)

(assert (= bs!1836912 (and d!2158314 d!2157556)))

(assert (=> bs!1836912 (not (= lambda!388747 lambda!388622))))

(declare-fun bs!1836914 () Bool)

(assert (= bs!1836914 (and d!2158314 d!2158068)))

(assert (=> bs!1836914 (= lambda!388747 lambda!388718)))

(declare-fun bs!1836916 () Bool)

(assert (= bs!1836916 (and d!2158314 d!2157788)))

(assert (=> bs!1836916 (= lambda!388747 lambda!388678)))

(declare-fun bs!1836918 () Bool)

(assert (= bs!1836918 (and d!2158314 d!2158282)))

(assert (=> bs!1836918 (not (= lambda!388747 lambda!388744))))

(declare-fun bs!1836920 () Bool)

(assert (= bs!1836920 (and d!2158314 d!2158070)))

(assert (=> bs!1836920 (= lambda!388747 lambda!388719)))

(declare-fun bs!1836921 () Bool)

(assert (= bs!1836921 (and d!2158314 d!2157818)))

(assert (=> bs!1836921 (not (= lambda!388747 lambda!388681))))

(declare-fun bs!1836922 () Bool)

(assert (= bs!1836922 (and d!2158314 d!2157820)))

(assert (=> bs!1836922 (not (= lambda!388747 lambda!388684))))

(declare-fun bs!1836924 () Bool)

(assert (= bs!1836924 (and d!2158314 d!2158288)))

(assert (=> bs!1836924 (= lambda!388747 lambda!388745)))

(declare-fun bs!1836925 () Bool)

(assert (= bs!1836925 (and d!2158314 b!6867794)))

(assert (=> bs!1836925 (not (= lambda!388747 lambda!388572))))

(assert (=> d!2158314 (= (nullableZipper!2370 (store ((as const (Array Context!12162 Bool)) false) lt!2458110 true)) (exists!2831 (store ((as const (Array Context!12162 Bool)) false) lt!2458110 true) lambda!388747))))

(declare-fun bs!1836926 () Bool)

(assert (= bs!1836926 d!2158314))

(assert (=> bs!1836926 m!7599762))

(declare-fun m!7601300 () Bool)

(assert (=> bs!1836926 m!7601300))

(assert (=> b!6869088 d!2158314))

(declare-fun b!6869940 () Bool)

(declare-fun e!4141251 () Bool)

(declare-fun call!625815 () Bool)

(assert (=> b!6869940 (= e!4141251 call!625815)))

(declare-fun call!625814 () Bool)

(declare-fun c!1278702 () Bool)

(declare-fun bm!625809 () Bool)

(declare-fun c!1278703 () Bool)

(assert (=> bm!625809 (= call!625814 (validRegex!8433 (ite c!1278702 (reg!17026 (ite c!1278455 (reg!17026 (ite c!1278249 (reg!17026 r!7292) (ite c!1278250 (regOne!33907 r!7292) (regOne!33906 r!7292)))) (ite c!1278456 (regOne!33907 (ite c!1278249 (reg!17026 r!7292) (ite c!1278250 (regOne!33907 r!7292) (regOne!33906 r!7292)))) (regOne!33906 (ite c!1278249 (reg!17026 r!7292) (ite c!1278250 (regOne!33907 r!7292) (regOne!33906 r!7292))))))) (ite c!1278703 (regOne!33907 (ite c!1278455 (reg!17026 (ite c!1278249 (reg!17026 r!7292) (ite c!1278250 (regOne!33907 r!7292) (regOne!33906 r!7292)))) (ite c!1278456 (regOne!33907 (ite c!1278249 (reg!17026 r!7292) (ite c!1278250 (regOne!33907 r!7292) (regOne!33906 r!7292)))) (regOne!33906 (ite c!1278249 (reg!17026 r!7292) (ite c!1278250 (regOne!33907 r!7292) (regOne!33906 r!7292))))))) (regOne!33906 (ite c!1278455 (reg!17026 (ite c!1278249 (reg!17026 r!7292) (ite c!1278250 (regOne!33907 r!7292) (regOne!33906 r!7292)))) (ite c!1278456 (regOne!33907 (ite c!1278249 (reg!17026 r!7292) (ite c!1278250 (regOne!33907 r!7292) (regOne!33906 r!7292)))) (regOne!33906 (ite c!1278249 (reg!17026 r!7292) (ite c!1278250 (regOne!33907 r!7292) (regOne!33906 r!7292)))))))))))))

(declare-fun bm!625810 () Bool)

(declare-fun call!625816 () Bool)

(assert (=> bm!625810 (= call!625816 call!625814)))

(declare-fun b!6869941 () Bool)

(declare-fun e!4141253 () Bool)

(assert (=> b!6869941 (= e!4141253 call!625814)))

(declare-fun bm!625811 () Bool)

(assert (=> bm!625811 (= call!625815 (validRegex!8433 (ite c!1278703 (regTwo!33907 (ite c!1278455 (reg!17026 (ite c!1278249 (reg!17026 r!7292) (ite c!1278250 (regOne!33907 r!7292) (regOne!33906 r!7292)))) (ite c!1278456 (regOne!33907 (ite c!1278249 (reg!17026 r!7292) (ite c!1278250 (regOne!33907 r!7292) (regOne!33906 r!7292)))) (regOne!33906 (ite c!1278249 (reg!17026 r!7292) (ite c!1278250 (regOne!33907 r!7292) (regOne!33906 r!7292))))))) (regTwo!33906 (ite c!1278455 (reg!17026 (ite c!1278249 (reg!17026 r!7292) (ite c!1278250 (regOne!33907 r!7292) (regOne!33906 r!7292)))) (ite c!1278456 (regOne!33907 (ite c!1278249 (reg!17026 r!7292) (ite c!1278250 (regOne!33907 r!7292) (regOne!33906 r!7292)))) (regOne!33906 (ite c!1278249 (reg!17026 r!7292) (ite c!1278250 (regOne!33907 r!7292) (regOne!33906 r!7292))))))))))))

(declare-fun b!6869942 () Bool)

(declare-fun e!4141257 () Bool)

(assert (=> b!6869942 (= e!4141257 e!4141251)))

(declare-fun res!2802057 () Bool)

(assert (=> b!6869942 (=> (not res!2802057) (not e!4141251))))

(assert (=> b!6869942 (= res!2802057 call!625816)))

(declare-fun d!2158322 () Bool)

(declare-fun res!2802056 () Bool)

(declare-fun e!4141255 () Bool)

(assert (=> d!2158322 (=> res!2802056 e!4141255)))

(assert (=> d!2158322 (= res!2802056 ((_ is ElementMatch!16697) (ite c!1278455 (reg!17026 (ite c!1278249 (reg!17026 r!7292) (ite c!1278250 (regOne!33907 r!7292) (regOne!33906 r!7292)))) (ite c!1278456 (regOne!33907 (ite c!1278249 (reg!17026 r!7292) (ite c!1278250 (regOne!33907 r!7292) (regOne!33906 r!7292)))) (regOne!33906 (ite c!1278249 (reg!17026 r!7292) (ite c!1278250 (regOne!33907 r!7292) (regOne!33906 r!7292))))))))))

(assert (=> d!2158322 (= (validRegex!8433 (ite c!1278455 (reg!17026 (ite c!1278249 (reg!17026 r!7292) (ite c!1278250 (regOne!33907 r!7292) (regOne!33906 r!7292)))) (ite c!1278456 (regOne!33907 (ite c!1278249 (reg!17026 r!7292) (ite c!1278250 (regOne!33907 r!7292) (regOne!33906 r!7292)))) (regOne!33906 (ite c!1278249 (reg!17026 r!7292) (ite c!1278250 (regOne!33907 r!7292) (regOne!33906 r!7292))))))) e!4141255)))

(declare-fun b!6869943 () Bool)

(declare-fun res!2802055 () Bool)

(declare-fun e!4141254 () Bool)

(assert (=> b!6869943 (=> (not res!2802055) (not e!4141254))))

(assert (=> b!6869943 (= res!2802055 call!625816)))

(declare-fun e!4141256 () Bool)

(assert (=> b!6869943 (= e!4141256 e!4141254)))

(declare-fun b!6869944 () Bool)

(assert (=> b!6869944 (= e!4141254 call!625815)))

(declare-fun b!6869945 () Bool)

(declare-fun res!2802058 () Bool)

(assert (=> b!6869945 (=> res!2802058 e!4141257)))

(assert (=> b!6869945 (= res!2802058 (not ((_ is Concat!25542) (ite c!1278455 (reg!17026 (ite c!1278249 (reg!17026 r!7292) (ite c!1278250 (regOne!33907 r!7292) (regOne!33906 r!7292)))) (ite c!1278456 (regOne!33907 (ite c!1278249 (reg!17026 r!7292) (ite c!1278250 (regOne!33907 r!7292) (regOne!33906 r!7292)))) (regOne!33906 (ite c!1278249 (reg!17026 r!7292) (ite c!1278250 (regOne!33907 r!7292) (regOne!33906 r!7292)))))))))))

(assert (=> b!6869945 (= e!4141256 e!4141257)))

(declare-fun b!6869946 () Bool)

(declare-fun e!4141252 () Bool)

(assert (=> b!6869946 (= e!4141252 e!4141256)))

(assert (=> b!6869946 (= c!1278703 ((_ is Union!16697) (ite c!1278455 (reg!17026 (ite c!1278249 (reg!17026 r!7292) (ite c!1278250 (regOne!33907 r!7292) (regOne!33906 r!7292)))) (ite c!1278456 (regOne!33907 (ite c!1278249 (reg!17026 r!7292) (ite c!1278250 (regOne!33907 r!7292) (regOne!33906 r!7292)))) (regOne!33906 (ite c!1278249 (reg!17026 r!7292) (ite c!1278250 (regOne!33907 r!7292) (regOne!33906 r!7292))))))))))

(declare-fun b!6869947 () Bool)

(assert (=> b!6869947 (= e!4141255 e!4141252)))

(assert (=> b!6869947 (= c!1278702 ((_ is Star!16697) (ite c!1278455 (reg!17026 (ite c!1278249 (reg!17026 r!7292) (ite c!1278250 (regOne!33907 r!7292) (regOne!33906 r!7292)))) (ite c!1278456 (regOne!33907 (ite c!1278249 (reg!17026 r!7292) (ite c!1278250 (regOne!33907 r!7292) (regOne!33906 r!7292)))) (regOne!33906 (ite c!1278249 (reg!17026 r!7292) (ite c!1278250 (regOne!33907 r!7292) (regOne!33906 r!7292))))))))))

(declare-fun b!6869948 () Bool)

(assert (=> b!6869948 (= e!4141252 e!4141253)))

(declare-fun res!2802059 () Bool)

(assert (=> b!6869948 (= res!2802059 (not (nullable!6658 (reg!17026 (ite c!1278455 (reg!17026 (ite c!1278249 (reg!17026 r!7292) (ite c!1278250 (regOne!33907 r!7292) (regOne!33906 r!7292)))) (ite c!1278456 (regOne!33907 (ite c!1278249 (reg!17026 r!7292) (ite c!1278250 (regOne!33907 r!7292) (regOne!33906 r!7292)))) (regOne!33906 (ite c!1278249 (reg!17026 r!7292) (ite c!1278250 (regOne!33907 r!7292) (regOne!33906 r!7292))))))))))))

(assert (=> b!6869948 (=> (not res!2802059) (not e!4141253))))

(assert (= (and d!2158322 (not res!2802056)) b!6869947))

(assert (= (and b!6869947 c!1278702) b!6869948))

(assert (= (and b!6869947 (not c!1278702)) b!6869946))

(assert (= (and b!6869948 res!2802059) b!6869941))

(assert (= (and b!6869946 c!1278703) b!6869943))

(assert (= (and b!6869946 (not c!1278703)) b!6869945))

(assert (= (and b!6869943 res!2802055) b!6869944))

(assert (= (and b!6869945 (not res!2802058)) b!6869942))

(assert (= (and b!6869942 res!2802057) b!6869940))

(assert (= (or b!6869944 b!6869940) bm!625811))

(assert (= (or b!6869943 b!6869942) bm!625810))

(assert (= (or b!6869941 bm!625810) bm!625809))

(declare-fun m!7601312 () Bool)

(assert (=> bm!625809 m!7601312))

(declare-fun m!7601314 () Bool)

(assert (=> bm!625811 m!7601314))

(declare-fun m!7601316 () Bool)

(assert (=> b!6869948 m!7601316))

(assert (=> bm!625635 d!2158322))

(assert (=> d!2157878 d!2157570))

(assert (=> d!2157878 d!2157568))

(declare-fun d!2158328 () Bool)

(declare-fun res!2802065 () Bool)

(declare-fun e!4141267 () Bool)

(assert (=> d!2158328 (=> res!2802065 e!4141267)))

(assert (=> d!2158328 (= res!2802065 ((_ is Nil!66266) (exprs!6581 lt!2458040)))))

(assert (=> d!2158328 (= (forall!15890 (exprs!6581 lt!2458040) lambda!388696) e!4141267)))

(declare-fun b!6869962 () Bool)

(declare-fun e!4141268 () Bool)

(assert (=> b!6869962 (= e!4141267 e!4141268)))

(declare-fun res!2802066 () Bool)

(assert (=> b!6869962 (=> (not res!2802066) (not e!4141268))))

(assert (=> b!6869962 (= res!2802066 (dynLambda!26529 lambda!388696 (h!72714 (exprs!6581 lt!2458040))))))

(declare-fun b!6869963 () Bool)

(assert (=> b!6869963 (= e!4141268 (forall!15890 (t!380133 (exprs!6581 lt!2458040)) lambda!388696))))

(assert (= (and d!2158328 (not res!2802065)) b!6869962))

(assert (= (and b!6869962 res!2802066) b!6869963))

(declare-fun b_lambda!259943 () Bool)

(assert (=> (not b_lambda!259943) (not b!6869962)))

(declare-fun m!7601318 () Bool)

(assert (=> b!6869962 m!7601318))

(declare-fun m!7601320 () Bool)

(assert (=> b!6869963 m!7601320))

(assert (=> d!2157872 d!2158328))

(declare-fun bs!1836928 () Bool)

(declare-fun d!2158330 () Bool)

(assert (= bs!1836928 (and d!2158330 d!2157550)))

(declare-fun lambda!388749 () Int)

(assert (=> bs!1836928 (= lambda!388749 lambda!388619)))

(declare-fun bs!1836930 () Bool)

(assert (= bs!1836930 (and d!2158330 d!2157808)))

(assert (=> bs!1836930 (= lambda!388749 lambda!388680)))

(declare-fun bs!1836931 () Bool)

(assert (= bs!1836931 (and d!2158330 b!6867793)))

(assert (=> bs!1836931 (= lambda!388749 lambda!388573)))

(declare-fun bs!1836933 () Bool)

(assert (= bs!1836933 (and d!2158330 d!2157902)))

(assert (=> bs!1836933 (not (= lambda!388749 lambda!388700))))

(declare-fun bs!1836934 () Bool)

(assert (= bs!1836934 (and d!2158330 d!2158018)))

(assert (=> bs!1836934 (= lambda!388749 lambda!388714)))

(declare-fun bs!1836936 () Bool)

(assert (= bs!1836936 (and d!2158330 d!2158016)))

(assert (=> bs!1836936 (= lambda!388749 lambda!388712)))

(declare-fun bs!1836937 () Bool)

(assert (= bs!1836937 (and d!2158330 d!2158130)))

(assert (=> bs!1836937 (= lambda!388749 lambda!388725)))

(declare-fun bs!1836939 () Bool)

(assert (= bs!1836939 (and d!2158330 d!2157904)))

(assert (=> bs!1836939 (not (= lambda!388749 lambda!388703))))

(declare-fun bs!1836940 () Bool)

(assert (= bs!1836940 (and d!2158330 d!2158076)))

(assert (=> bs!1836940 (= lambda!388749 lambda!388720)))

(declare-fun bs!1836942 () Bool)

(assert (= bs!1836942 (and d!2158330 d!2157890)))

(assert (=> bs!1836942 (= lambda!388749 lambda!388697)))

(declare-fun bs!1836943 () Bool)

(assert (= bs!1836943 (and d!2158330 d!2158188)))

(assert (=> bs!1836943 (= lambda!388749 lambda!388730)))

(declare-fun bs!1836945 () Bool)

(assert (= bs!1836945 (and d!2158330 d!2157564)))

(assert (=> bs!1836945 (= lambda!388749 lambda!388628)))

(declare-fun bs!1836947 () Bool)

(assert (= bs!1836947 (and d!2158330 b!6867798)))

(assert (=> bs!1836947 (not (= lambda!388749 lambda!388571))))

(declare-fun bs!1836948 () Bool)

(assert (= bs!1836948 (and d!2158330 d!2157836)))

(assert (=> bs!1836948 (= lambda!388749 lambda!388688)))

(declare-fun bs!1836950 () Bool)

(assert (= bs!1836950 (and d!2158330 d!2157580)))

(assert (=> bs!1836950 (= lambda!388749 lambda!388640)))

(declare-fun bs!1836951 () Bool)

(assert (= bs!1836951 (and d!2158330 d!2157772)))

(assert (=> bs!1836951 (= lambda!388749 lambda!388675)))

(declare-fun bs!1836953 () Bool)

(assert (= bs!1836953 (and d!2158330 d!2157578)))

(assert (=> bs!1836953 (= lambda!388749 lambda!388636)))

(declare-fun bs!1836954 () Bool)

(assert (= bs!1836954 (and d!2158330 d!2157806)))

(assert (=> bs!1836954 (= lambda!388749 lambda!388679)))

(declare-fun bs!1836956 () Bool)

(assert (= bs!1836956 (and d!2158330 d!2158012)))

(assert (=> bs!1836956 (= lambda!388749 lambda!388710)))

(assert (=> bs!1836953 (not (= lambda!388749 lambda!388637))))

(declare-fun bs!1836958 () Bool)

(assert (= bs!1836958 (and d!2158330 d!2158042)))

(assert (=> bs!1836958 (= lambda!388749 lambda!388716)))

(declare-fun bs!1836959 () Bool)

(assert (= bs!1836959 (and d!2158330 d!2158128)))

(assert (=> bs!1836959 (= lambda!388749 lambda!388723)))

(declare-fun bs!1836960 () Bool)

(assert (= bs!1836960 (and d!2158330 d!2157854)))

(assert (=> bs!1836960 (= lambda!388749 lambda!388689)))

(declare-fun bs!1836961 () Bool)

(assert (= bs!1836961 (and d!2158330 d!2157534)))

(assert (=> bs!1836961 (= lambda!388749 lambda!388616)))

(declare-fun bs!1836962 () Bool)

(assert (= bs!1836962 (and d!2158330 d!2157866)))

(assert (=> bs!1836962 (= lambda!388749 lambda!388693)))

(declare-fun bs!1836963 () Bool)

(assert (= bs!1836963 (and d!2158330 d!2157582)))

(assert (=> bs!1836963 (= lambda!388749 lambda!388641)))

(declare-fun bs!1836964 () Bool)

(assert (= bs!1836964 (and d!2158330 d!2157834)))

(assert (=> bs!1836964 (= lambda!388749 lambda!388687)))

(declare-fun bs!1836965 () Bool)

(assert (= bs!1836965 (and d!2158330 d!2157576)))

(assert (=> bs!1836965 (not (= lambda!388749 lambda!388631))))

(declare-fun bs!1836966 () Bool)

(assert (= bs!1836966 (and d!2158330 d!2158258)))

(assert (=> bs!1836966 (= lambda!388749 lambda!388740)))

(declare-fun bs!1836967 () Bool)

(assert (= bs!1836967 (and d!2158330 d!2157872)))

(assert (=> bs!1836967 (= lambda!388749 lambda!388696)))

(declare-fun e!4141274 () Bool)

(assert (=> d!2158330 e!4141274))

(declare-fun res!2802067 () Bool)

(assert (=> d!2158330 (=> (not res!2802067) (not e!4141274))))

(declare-fun lt!2458233 () Regex!16697)

(assert (=> d!2158330 (= res!2802067 (validRegex!8433 lt!2458233))))

(declare-fun e!4141273 () Regex!16697)

(assert (=> d!2158330 (= lt!2458233 e!4141273)))

(declare-fun c!1278710 () Bool)

(declare-fun e!4141271 () Bool)

(assert (=> d!2158330 (= c!1278710 e!4141271)))

(declare-fun res!2802068 () Bool)

(assert (=> d!2158330 (=> (not res!2802068) (not e!4141271))))

(assert (=> d!2158330 (= res!2802068 ((_ is Cons!66266) (t!380133 (exprs!6581 (h!72715 zl!343)))))))

(assert (=> d!2158330 (forall!15890 (t!380133 (exprs!6581 (h!72715 zl!343))) lambda!388749)))

(assert (=> d!2158330 (= (generalisedConcat!2285 (t!380133 (exprs!6581 (h!72715 zl!343)))) lt!2458233)))

(declare-fun b!6869964 () Bool)

(assert (=> b!6869964 (= e!4141271 (isEmpty!38628 (t!380133 (t!380133 (exprs!6581 (h!72715 zl!343))))))))

(declare-fun b!6869965 () Bool)

(declare-fun e!4141270 () Regex!16697)

(assert (=> b!6869965 (= e!4141273 e!4141270)))

(declare-fun c!1278708 () Bool)

(assert (=> b!6869965 (= c!1278708 ((_ is Cons!66266) (t!380133 (exprs!6581 (h!72715 zl!343)))))))

(declare-fun b!6869966 () Bool)

(declare-fun e!4141269 () Bool)

(assert (=> b!6869966 (= e!4141274 e!4141269)))

(declare-fun c!1278711 () Bool)

(assert (=> b!6869966 (= c!1278711 (isEmpty!38628 (t!380133 (exprs!6581 (h!72715 zl!343)))))))

(declare-fun b!6869967 () Bool)

(declare-fun e!4141272 () Bool)

(assert (=> b!6869967 (= e!4141269 e!4141272)))

(declare-fun c!1278709 () Bool)

(assert (=> b!6869967 (= c!1278709 (isEmpty!38628 (tail!12836 (t!380133 (exprs!6581 (h!72715 zl!343))))))))

(declare-fun b!6869968 () Bool)

(assert (=> b!6869968 (= e!4141272 (isConcat!1540 lt!2458233))))

(declare-fun b!6869969 () Bool)

(assert (=> b!6869969 (= e!4141269 (isEmptyExpr!2017 lt!2458233))))

(declare-fun b!6869970 () Bool)

(assert (=> b!6869970 (= e!4141270 EmptyExpr!16697)))

(declare-fun b!6869971 () Bool)

(assert (=> b!6869971 (= e!4141273 (h!72714 (t!380133 (exprs!6581 (h!72715 zl!343)))))))

(declare-fun b!6869972 () Bool)

(assert (=> b!6869972 (= e!4141272 (= lt!2458233 (head!13781 (t!380133 (exprs!6581 (h!72715 zl!343))))))))

(declare-fun b!6869973 () Bool)

(assert (=> b!6869973 (= e!4141270 (Concat!25542 (h!72714 (t!380133 (exprs!6581 (h!72715 zl!343)))) (generalisedConcat!2285 (t!380133 (t!380133 (exprs!6581 (h!72715 zl!343)))))))))

(assert (= (and d!2158330 res!2802068) b!6869964))

(assert (= (and d!2158330 c!1278710) b!6869971))

(assert (= (and d!2158330 (not c!1278710)) b!6869965))

(assert (= (and b!6869965 c!1278708) b!6869973))

(assert (= (and b!6869965 (not c!1278708)) b!6869970))

(assert (= (and d!2158330 res!2802067) b!6869966))

(assert (= (and b!6869966 c!1278711) b!6869969))

(assert (= (and b!6869966 (not c!1278711)) b!6869967))

(assert (= (and b!6869967 c!1278709) b!6869972))

(assert (= (and b!6869967 (not c!1278709)) b!6869968))

(declare-fun m!7601322 () Bool)

(assert (=> b!6869968 m!7601322))

(declare-fun m!7601324 () Bool)

(assert (=> b!6869973 m!7601324))

(assert (=> b!6869966 m!7600310))

(declare-fun m!7601326 () Bool)

(assert (=> b!6869969 m!7601326))

(declare-fun m!7601328 () Bool)

(assert (=> b!6869964 m!7601328))

(declare-fun m!7601330 () Bool)

(assert (=> b!6869972 m!7601330))

(declare-fun m!7601332 () Bool)

(assert (=> d!2158330 m!7601332))

(declare-fun m!7601334 () Bool)

(assert (=> d!2158330 m!7601334))

(declare-fun m!7601336 () Bool)

(assert (=> b!6869967 m!7601336))

(assert (=> b!6869967 m!7601336))

(declare-fun m!7601338 () Bool)

(assert (=> b!6869967 m!7601338))

(assert (=> b!6868995 d!2158330))

(assert (=> d!2157774 d!2157864))

(declare-fun b!6869974 () Bool)

(declare-fun e!4141275 () Bool)

(declare-fun call!625820 () Bool)

(assert (=> b!6869974 (= e!4141275 call!625820)))

(declare-fun call!625819 () Bool)

(declare-fun c!1278713 () Bool)

(declare-fun c!1278712 () Bool)

(declare-fun bm!625814 () Bool)

(assert (=> bm!625814 (= call!625819 (validRegex!8433 (ite c!1278712 (reg!17026 (derivativeStep!5340 r!7292 (head!13779 s!2326))) (ite c!1278713 (regOne!33907 (derivativeStep!5340 r!7292 (head!13779 s!2326))) (regOne!33906 (derivativeStep!5340 r!7292 (head!13779 s!2326)))))))))

(declare-fun bm!625815 () Bool)

(declare-fun call!625821 () Bool)

(assert (=> bm!625815 (= call!625821 call!625819)))

(declare-fun b!6869975 () Bool)

(declare-fun e!4141277 () Bool)

(assert (=> b!6869975 (= e!4141277 call!625819)))

(declare-fun bm!625816 () Bool)

(assert (=> bm!625816 (= call!625820 (validRegex!8433 (ite c!1278713 (regTwo!33907 (derivativeStep!5340 r!7292 (head!13779 s!2326))) (regTwo!33906 (derivativeStep!5340 r!7292 (head!13779 s!2326))))))))

(declare-fun b!6869976 () Bool)

(declare-fun e!4141281 () Bool)

(assert (=> b!6869976 (= e!4141281 e!4141275)))

(declare-fun res!2802071 () Bool)

(assert (=> b!6869976 (=> (not res!2802071) (not e!4141275))))

(assert (=> b!6869976 (= res!2802071 call!625821)))

(declare-fun d!2158332 () Bool)

(declare-fun res!2802070 () Bool)

(declare-fun e!4141279 () Bool)

(assert (=> d!2158332 (=> res!2802070 e!4141279)))

(assert (=> d!2158332 (= res!2802070 ((_ is ElementMatch!16697) (derivativeStep!5340 r!7292 (head!13779 s!2326))))))

(assert (=> d!2158332 (= (validRegex!8433 (derivativeStep!5340 r!7292 (head!13779 s!2326))) e!4141279)))

(declare-fun b!6869977 () Bool)

(declare-fun res!2802069 () Bool)

(declare-fun e!4141278 () Bool)

(assert (=> b!6869977 (=> (not res!2802069) (not e!4141278))))

(assert (=> b!6869977 (= res!2802069 call!625821)))

(declare-fun e!4141280 () Bool)

(assert (=> b!6869977 (= e!4141280 e!4141278)))

(declare-fun b!6869978 () Bool)

(assert (=> b!6869978 (= e!4141278 call!625820)))

(declare-fun b!6869979 () Bool)

(declare-fun res!2802072 () Bool)

(assert (=> b!6869979 (=> res!2802072 e!4141281)))

(assert (=> b!6869979 (= res!2802072 (not ((_ is Concat!25542) (derivativeStep!5340 r!7292 (head!13779 s!2326)))))))

(assert (=> b!6869979 (= e!4141280 e!4141281)))

(declare-fun b!6869980 () Bool)

(declare-fun e!4141276 () Bool)

(assert (=> b!6869980 (= e!4141276 e!4141280)))

(assert (=> b!6869980 (= c!1278713 ((_ is Union!16697) (derivativeStep!5340 r!7292 (head!13779 s!2326))))))

(declare-fun b!6869981 () Bool)

(assert (=> b!6869981 (= e!4141279 e!4141276)))

(assert (=> b!6869981 (= c!1278712 ((_ is Star!16697) (derivativeStep!5340 r!7292 (head!13779 s!2326))))))

(declare-fun b!6869982 () Bool)

(assert (=> b!6869982 (= e!4141276 e!4141277)))

(declare-fun res!2802073 () Bool)

(assert (=> b!6869982 (= res!2802073 (not (nullable!6658 (reg!17026 (derivativeStep!5340 r!7292 (head!13779 s!2326))))))))

(assert (=> b!6869982 (=> (not res!2802073) (not e!4141277))))

(assert (= (and d!2158332 (not res!2802070)) b!6869981))

(assert (= (and b!6869981 c!1278712) b!6869982))

(assert (= (and b!6869981 (not c!1278712)) b!6869980))

(assert (= (and b!6869982 res!2802073) b!6869975))

(assert (= (and b!6869980 c!1278713) b!6869977))

(assert (= (and b!6869980 (not c!1278713)) b!6869979))

(assert (= (and b!6869977 res!2802069) b!6869978))

(assert (= (and b!6869979 (not res!2802072)) b!6869976))

(assert (= (and b!6869976 res!2802071) b!6869974))

(assert (= (or b!6869978 b!6869974) bm!625816))

(assert (= (or b!6869977 b!6869976) bm!625815))

(assert (= (or b!6869975 bm!625815) bm!625814))

(declare-fun m!7601340 () Bool)

(assert (=> bm!625814 m!7601340))

(declare-fun m!7601342 () Bool)

(assert (=> bm!625816 m!7601342))

(declare-fun m!7601344 () Bool)

(assert (=> b!6869982 m!7601344))

(assert (=> d!2157774 d!2158332))

(declare-fun d!2158334 () Bool)

(assert (=> d!2158334 (= (isEmptyExpr!2017 lt!2458183) ((_ is EmptyExpr!16697) lt!2458183))))

(assert (=> b!6869027 d!2158334))

(declare-fun d!2158336 () Bool)

(declare-fun res!2802074 () Bool)

(declare-fun e!4141282 () Bool)

(assert (=> d!2158336 (=> res!2802074 e!4141282)))

(assert (=> d!2158336 (= res!2802074 ((_ is Nil!66267) res!2801660))))

(assert (=> d!2158336 (= (noDuplicate!2461 res!2801660) e!4141282)))

(declare-fun b!6869983 () Bool)

(declare-fun e!4141283 () Bool)

(assert (=> b!6869983 (= e!4141282 e!4141283)))

(declare-fun res!2802075 () Bool)

(assert (=> b!6869983 (=> (not res!2802075) (not e!4141283))))

(assert (=> b!6869983 (= res!2802075 (not (contains!20355 (t!380134 res!2801660) (h!72715 res!2801660))))))

(declare-fun b!6869984 () Bool)

(assert (=> b!6869984 (= e!4141283 (noDuplicate!2461 (t!380134 res!2801660)))))

(assert (= (and d!2158336 (not res!2802074)) b!6869983))

(assert (= (and b!6869983 res!2802075) b!6869984))

(declare-fun m!7601346 () Bool)

(assert (=> b!6869983 m!7601346))

(declare-fun m!7601348 () Bool)

(assert (=> b!6869984 m!7601348))

(assert (=> d!2157786 d!2158336))

(declare-fun d!2158338 () Bool)

(assert (=> d!2158338 (= (head!13781 (unfocusZipperList!2114 zl!343)) (h!72714 (unfocusZipperList!2114 zl!343)))))

(assert (=> b!6868835 d!2158338))

(declare-fun d!2158340 () Bool)

(declare-fun lt!2458234 () Int)

(assert (=> d!2158340 (>= lt!2458234 0)))

(declare-fun e!4141284 () Int)

(assert (=> d!2158340 (= lt!2458234 e!4141284)))

(declare-fun c!1278714 () Bool)

(assert (=> d!2158340 (= c!1278714 ((_ is Cons!66266) (exprs!6581 (h!72715 (t!380134 zl!343)))))))

(assert (=> d!2158340 (= (contextDepthTotal!418 (h!72715 (t!380134 zl!343))) lt!2458234)))

(declare-fun b!6869985 () Bool)

(assert (=> b!6869985 (= e!4141284 (+ (regexDepthTotal!263 (h!72714 (exprs!6581 (h!72715 (t!380134 zl!343))))) (contextDepthTotal!418 (Context!12163 (t!380133 (exprs!6581 (h!72715 (t!380134 zl!343))))))))))

(declare-fun b!6869986 () Bool)

(assert (=> b!6869986 (= e!4141284 1)))

(assert (= (and d!2158340 c!1278714) b!6869985))

(assert (= (and d!2158340 (not c!1278714)) b!6869986))

(declare-fun m!7601356 () Bool)

(assert (=> b!6869985 m!7601356))

(declare-fun m!7601358 () Bool)

(assert (=> b!6869985 m!7601358))

(assert (=> b!6869066 d!2158340))

(declare-fun d!2158344 () Bool)

(declare-fun lt!2458235 () Int)

(assert (=> d!2158344 (>= lt!2458235 0)))

(declare-fun e!4141292 () Int)

(assert (=> d!2158344 (= lt!2458235 e!4141292)))

(declare-fun c!1278717 () Bool)

(assert (=> d!2158344 (= c!1278717 ((_ is Cons!66267) (t!380134 (t!380134 zl!343))))))

(assert (=> d!2158344 (= (zipperDepthTotal!446 (t!380134 (t!380134 zl!343))) lt!2458235)))

(declare-fun b!6869996 () Bool)

(assert (=> b!6869996 (= e!4141292 (+ (contextDepthTotal!418 (h!72715 (t!380134 (t!380134 zl!343)))) (zipperDepthTotal!446 (t!380134 (t!380134 (t!380134 zl!343))))))))

(declare-fun b!6869997 () Bool)

(assert (=> b!6869997 (= e!4141292 0)))

(assert (= (and d!2158344 c!1278717) b!6869996))

(assert (= (and d!2158344 (not c!1278717)) b!6869997))

(declare-fun m!7601360 () Bool)

(assert (=> b!6869996 m!7601360))

(declare-fun m!7601362 () Bool)

(assert (=> b!6869996 m!7601362))

(assert (=> b!6869066 d!2158344))

(declare-fun d!2158346 () Bool)

(declare-fun lt!2458238 () Bool)

(assert (=> d!2158346 (= lt!2458238 (exists!2828 (toList!10481 z!1189) lambda!388678))))

(declare-fun choose!51189 ((InoxSet Context!12162) Int) Bool)

(assert (=> d!2158346 (= lt!2458238 (choose!51189 z!1189 lambda!388678))))

(assert (=> d!2158346 (= (exists!2831 z!1189 lambda!388678) lt!2458238)))

(declare-fun bs!1836983 () Bool)

(assert (= bs!1836983 d!2158346))

(assert (=> bs!1836983 m!7599424))

(assert (=> bs!1836983 m!7599424))

(declare-fun m!7601386 () Bool)

(assert (=> bs!1836983 m!7601386))

(declare-fun m!7601388 () Bool)

(assert (=> bs!1836983 m!7601388))

(assert (=> d!2157788 d!2158346))

(declare-fun b!6870011 () Bool)

(declare-fun e!4141303 () Bool)

(declare-fun call!625829 () Bool)

(assert (=> b!6870011 (= e!4141303 call!625829)))

(declare-fun c!1278721 () Bool)

(declare-fun call!625828 () Bool)

(declare-fun bm!625823 () Bool)

(declare-fun c!1278722 () Bool)

(assert (=> bm!625823 (= call!625828 (validRegex!8433 (ite c!1278721 (reg!17026 lt!2458172) (ite c!1278722 (regOne!33907 lt!2458172) (regOne!33906 lt!2458172)))))))

(declare-fun bm!625824 () Bool)

(declare-fun call!625830 () Bool)

(assert (=> bm!625824 (= call!625830 call!625828)))

(declare-fun b!6870012 () Bool)

(declare-fun e!4141305 () Bool)

(assert (=> b!6870012 (= e!4141305 call!625828)))

(declare-fun bm!625825 () Bool)

(assert (=> bm!625825 (= call!625829 (validRegex!8433 (ite c!1278722 (regTwo!33907 lt!2458172) (regTwo!33906 lt!2458172))))))

(declare-fun b!6870013 () Bool)

(declare-fun e!4141309 () Bool)

(assert (=> b!6870013 (= e!4141309 e!4141303)))

(declare-fun res!2802090 () Bool)

(assert (=> b!6870013 (=> (not res!2802090) (not e!4141303))))

(assert (=> b!6870013 (= res!2802090 call!625830)))

(declare-fun d!2158356 () Bool)

(declare-fun res!2802089 () Bool)

(declare-fun e!4141307 () Bool)

(assert (=> d!2158356 (=> res!2802089 e!4141307)))

(assert (=> d!2158356 (= res!2802089 ((_ is ElementMatch!16697) lt!2458172))))

(assert (=> d!2158356 (= (validRegex!8433 lt!2458172) e!4141307)))

(declare-fun b!6870014 () Bool)

(declare-fun res!2802088 () Bool)

(declare-fun e!4141306 () Bool)

(assert (=> b!6870014 (=> (not res!2802088) (not e!4141306))))

(assert (=> b!6870014 (= res!2802088 call!625830)))

(declare-fun e!4141308 () Bool)

(assert (=> b!6870014 (= e!4141308 e!4141306)))

(declare-fun b!6870015 () Bool)

(assert (=> b!6870015 (= e!4141306 call!625829)))

(declare-fun b!6870016 () Bool)

(declare-fun res!2802091 () Bool)

(assert (=> b!6870016 (=> res!2802091 e!4141309)))

(assert (=> b!6870016 (= res!2802091 (not ((_ is Concat!25542) lt!2458172)))))

(assert (=> b!6870016 (= e!4141308 e!4141309)))

(declare-fun b!6870017 () Bool)

(declare-fun e!4141304 () Bool)

(assert (=> b!6870017 (= e!4141304 e!4141308)))

(assert (=> b!6870017 (= c!1278722 ((_ is Union!16697) lt!2458172))))

(declare-fun b!6870018 () Bool)

(assert (=> b!6870018 (= e!4141307 e!4141304)))

(assert (=> b!6870018 (= c!1278721 ((_ is Star!16697) lt!2458172))))

(declare-fun b!6870019 () Bool)

(assert (=> b!6870019 (= e!4141304 e!4141305)))

(declare-fun res!2802092 () Bool)

(assert (=> b!6870019 (= res!2802092 (not (nullable!6658 (reg!17026 lt!2458172))))))

(assert (=> b!6870019 (=> (not res!2802092) (not e!4141305))))

(assert (= (and d!2158356 (not res!2802089)) b!6870018))

(assert (= (and b!6870018 c!1278721) b!6870019))

(assert (= (and b!6870018 (not c!1278721)) b!6870017))

(assert (= (and b!6870019 res!2802092) b!6870012))

(assert (= (and b!6870017 c!1278722) b!6870014))

(assert (= (and b!6870017 (not c!1278722)) b!6870016))

(assert (= (and b!6870014 res!2802088) b!6870015))

(assert (= (and b!6870016 (not res!2802091)) b!6870013))

(assert (= (and b!6870013 res!2802090) b!6870011))

(assert (= (or b!6870015 b!6870011) bm!625825))

(assert (= (or b!6870014 b!6870013) bm!625824))

(assert (= (or b!6870012 bm!625824) bm!625823))

(declare-fun m!7601392 () Bool)

(assert (=> bm!625823 m!7601392))

(declare-fun m!7601394 () Bool)

(assert (=> bm!625825 m!7601394))

(declare-fun m!7601396 () Bool)

(assert (=> b!6870019 m!7601396))

(assert (=> d!2157806 d!2158356))

(declare-fun d!2158360 () Bool)

(declare-fun res!2802098 () Bool)

(declare-fun e!4141317 () Bool)

(assert (=> d!2158360 (=> res!2802098 e!4141317)))

(assert (=> d!2158360 (= res!2802098 ((_ is Nil!66266) (unfocusZipperList!2114 lt!2458043)))))

(assert (=> d!2158360 (= (forall!15890 (unfocusZipperList!2114 lt!2458043) lambda!388679) e!4141317)))

(declare-fun b!6870029 () Bool)

(declare-fun e!4141318 () Bool)

(assert (=> b!6870029 (= e!4141317 e!4141318)))

(declare-fun res!2802099 () Bool)

(assert (=> b!6870029 (=> (not res!2802099) (not e!4141318))))

(assert (=> b!6870029 (= res!2802099 (dynLambda!26529 lambda!388679 (h!72714 (unfocusZipperList!2114 lt!2458043))))))

(declare-fun b!6870030 () Bool)

(assert (=> b!6870030 (= e!4141318 (forall!15890 (t!380133 (unfocusZipperList!2114 lt!2458043)) lambda!388679))))

(assert (= (and d!2158360 (not res!2802098)) b!6870029))

(assert (= (and b!6870029 res!2802099) b!6870030))

(declare-fun b_lambda!259947 () Bool)

(assert (=> (not b_lambda!259947) (not b!6870029)))

(declare-fun m!7601398 () Bool)

(assert (=> b!6870029 m!7601398))

(declare-fun m!7601400 () Bool)

(assert (=> b!6870030 m!7601400))

(assert (=> d!2157806 d!2158360))

(declare-fun d!2158362 () Bool)

(assert (=> d!2158362 (= (isEmpty!38628 (tail!12836 (unfocusZipperList!2114 lt!2458043))) ((_ is Nil!66266) (tail!12836 (unfocusZipperList!2114 lt!2458043))))))

(assert (=> b!6868939 d!2158362))

(declare-fun d!2158364 () Bool)

(assert (=> d!2158364 (= (tail!12836 (unfocusZipperList!2114 lt!2458043)) (t!380133 (unfocusZipperList!2114 lt!2458043)))))

(assert (=> b!6868939 d!2158364))

(declare-fun bs!1836987 () Bool)

(declare-fun d!2158366 () Bool)

(assert (= bs!1836987 (and d!2158366 d!2157558)))

(declare-fun lambda!388752 () Int)

(assert (=> bs!1836987 (not (= lambda!388752 lambda!388625))))

(declare-fun bs!1836988 () Bool)

(assert (= bs!1836988 (and d!2158366 d!2158314)))

(assert (=> bs!1836988 (not (= lambda!388752 lambda!388747))))

(declare-fun bs!1836989 () Bool)

(assert (= bs!1836989 (and d!2158366 d!2157556)))

(assert (=> bs!1836989 (= (= lambda!388684 lambda!388572) (= lambda!388752 lambda!388622))))

(declare-fun bs!1836990 () Bool)

(assert (= bs!1836990 (and d!2158366 d!2158068)))

(assert (=> bs!1836990 (not (= lambda!388752 lambda!388718))))

(declare-fun bs!1836991 () Bool)

(assert (= bs!1836991 (and d!2158366 d!2157788)))

(assert (=> bs!1836991 (not (= lambda!388752 lambda!388678))))

(declare-fun bs!1836992 () Bool)

(assert (= bs!1836992 (and d!2158366 d!2158282)))

(assert (=> bs!1836992 (= (= lambda!388684 lambda!388572) (= lambda!388752 lambda!388744))))

(declare-fun bs!1836993 () Bool)

(assert (= bs!1836993 (and d!2158366 d!2158070)))

(assert (=> bs!1836993 (not (= lambda!388752 lambda!388719))))

(declare-fun bs!1836994 () Bool)

(assert (= bs!1836994 (and d!2158366 d!2157818)))

(assert (=> bs!1836994 (= (= lambda!388684 lambda!388625) (= lambda!388752 lambda!388681))))

(declare-fun bs!1836995 () Bool)

(assert (= bs!1836995 (and d!2158366 d!2157820)))

(assert (=> bs!1836995 (not (= lambda!388752 lambda!388684))))

(declare-fun bs!1836996 () Bool)

(assert (= bs!1836996 (and d!2158366 d!2158288)))

(assert (=> bs!1836996 (not (= lambda!388752 lambda!388745))))

(declare-fun bs!1836997 () Bool)

(assert (= bs!1836997 (and d!2158366 b!6867794)))

(assert (=> bs!1836997 (not (= lambda!388752 lambda!388572))))

(assert (=> d!2158366 true))

(assert (=> d!2158366 (< (dynLambda!26531 order!27729 lambda!388684) (dynLambda!26531 order!27729 lambda!388752))))

(assert (=> d!2158366 (= (exists!2828 zl!343 lambda!388684) (not (forall!15892 zl!343 lambda!388752)))))

(declare-fun bs!1836998 () Bool)

(assert (= bs!1836998 d!2158366))

(declare-fun m!7601412 () Bool)

(assert (=> bs!1836998 m!7601412))

(assert (=> d!2157820 d!2158366))

(declare-fun bs!1836999 () Bool)

(declare-fun d!2158372 () Bool)

(assert (= bs!1836999 (and d!2158372 d!2157550)))

(declare-fun lambda!388753 () Int)

(assert (=> bs!1836999 (= lambda!388753 lambda!388619)))

(declare-fun bs!1837001 () Bool)

(assert (= bs!1837001 (and d!2158372 d!2157808)))

(assert (=> bs!1837001 (= lambda!388753 lambda!388680)))

(declare-fun bs!1837002 () Bool)

(assert (= bs!1837002 (and d!2158372 b!6867793)))

(assert (=> bs!1837002 (= lambda!388753 lambda!388573)))

(declare-fun bs!1837003 () Bool)

(assert (= bs!1837003 (and d!2158372 d!2157902)))

(assert (=> bs!1837003 (not (= lambda!388753 lambda!388700))))

(declare-fun bs!1837004 () Bool)

(assert (= bs!1837004 (and d!2158372 d!2158018)))

(assert (=> bs!1837004 (= lambda!388753 lambda!388714)))

(declare-fun bs!1837005 () Bool)

(assert (= bs!1837005 (and d!2158372 d!2158016)))

(assert (=> bs!1837005 (= lambda!388753 lambda!388712)))

(declare-fun bs!1837006 () Bool)

(assert (= bs!1837006 (and d!2158372 d!2158130)))

(assert (=> bs!1837006 (= lambda!388753 lambda!388725)))

(declare-fun bs!1837007 () Bool)

(assert (= bs!1837007 (and d!2158372 d!2157904)))

(assert (=> bs!1837007 (not (= lambda!388753 lambda!388703))))

(declare-fun bs!1837008 () Bool)

(assert (= bs!1837008 (and d!2158372 d!2158076)))

(assert (=> bs!1837008 (= lambda!388753 lambda!388720)))

(declare-fun bs!1837009 () Bool)

(assert (= bs!1837009 (and d!2158372 d!2157890)))

(assert (=> bs!1837009 (= lambda!388753 lambda!388697)))

(declare-fun bs!1837010 () Bool)

(assert (= bs!1837010 (and d!2158372 d!2158188)))

(assert (=> bs!1837010 (= lambda!388753 lambda!388730)))

(declare-fun bs!1837011 () Bool)

(assert (= bs!1837011 (and d!2158372 d!2157564)))

(assert (=> bs!1837011 (= lambda!388753 lambda!388628)))

(declare-fun bs!1837012 () Bool)

(assert (= bs!1837012 (and d!2158372 b!6867798)))

(assert (=> bs!1837012 (not (= lambda!388753 lambda!388571))))

(declare-fun bs!1837013 () Bool)

(assert (= bs!1837013 (and d!2158372 d!2157836)))

(assert (=> bs!1837013 (= lambda!388753 lambda!388688)))

(declare-fun bs!1837014 () Bool)

(assert (= bs!1837014 (and d!2158372 d!2157580)))

(assert (=> bs!1837014 (= lambda!388753 lambda!388640)))

(declare-fun bs!1837015 () Bool)

(assert (= bs!1837015 (and d!2158372 d!2157772)))

(assert (=> bs!1837015 (= lambda!388753 lambda!388675)))

(declare-fun bs!1837016 () Bool)

(assert (= bs!1837016 (and d!2158372 d!2157578)))

(assert (=> bs!1837016 (= lambda!388753 lambda!388636)))

(declare-fun bs!1837018 () Bool)

(assert (= bs!1837018 (and d!2158372 d!2157806)))

(assert (=> bs!1837018 (= lambda!388753 lambda!388679)))

(declare-fun bs!1837019 () Bool)

(assert (= bs!1837019 (and d!2158372 d!2158012)))

(assert (=> bs!1837019 (= lambda!388753 lambda!388710)))

(assert (=> bs!1837016 (not (= lambda!388753 lambda!388637))))

(declare-fun bs!1837020 () Bool)

(assert (= bs!1837020 (and d!2158372 d!2158042)))

(assert (=> bs!1837020 (= lambda!388753 lambda!388716)))

(declare-fun bs!1837021 () Bool)

(assert (= bs!1837021 (and d!2158372 d!2158128)))

(assert (=> bs!1837021 (= lambda!388753 lambda!388723)))

(declare-fun bs!1837022 () Bool)

(assert (= bs!1837022 (and d!2158372 d!2157854)))

(assert (=> bs!1837022 (= lambda!388753 lambda!388689)))

(declare-fun bs!1837023 () Bool)

(assert (= bs!1837023 (and d!2158372 d!2157534)))

(assert (=> bs!1837023 (= lambda!388753 lambda!388616)))

(declare-fun bs!1837024 () Bool)

(assert (= bs!1837024 (and d!2158372 d!2157866)))

(assert (=> bs!1837024 (= lambda!388753 lambda!388693)))

(declare-fun bs!1837025 () Bool)

(assert (= bs!1837025 (and d!2158372 d!2158330)))

(assert (=> bs!1837025 (= lambda!388753 lambda!388749)))

(declare-fun bs!1837026 () Bool)

(assert (= bs!1837026 (and d!2158372 d!2157582)))

(assert (=> bs!1837026 (= lambda!388753 lambda!388641)))

(declare-fun bs!1837027 () Bool)

(assert (= bs!1837027 (and d!2158372 d!2157834)))

(assert (=> bs!1837027 (= lambda!388753 lambda!388687)))

(declare-fun bs!1837028 () Bool)

(assert (= bs!1837028 (and d!2158372 d!2157576)))

(assert (=> bs!1837028 (not (= lambda!388753 lambda!388631))))

(declare-fun bs!1837029 () Bool)

(assert (= bs!1837029 (and d!2158372 d!2158258)))

(assert (=> bs!1837029 (= lambda!388753 lambda!388740)))

(declare-fun bs!1837030 () Bool)

(assert (= bs!1837030 (and d!2158372 d!2157872)))

(assert (=> bs!1837030 (= lambda!388753 lambda!388696)))

(declare-fun b!6870042 () Bool)

(declare-fun e!4141332 () Bool)

(declare-fun lt!2458240 () Regex!16697)

(assert (=> b!6870042 (= e!4141332 (= lt!2458240 (head!13781 (t!380133 (unfocusZipperList!2114 zl!343)))))))

(declare-fun b!6870043 () Bool)

(declare-fun e!4141333 () Regex!16697)

(declare-fun e!4141328 () Regex!16697)

(assert (=> b!6870043 (= e!4141333 e!4141328)))

(declare-fun c!1278727 () Bool)

(assert (=> b!6870043 (= c!1278727 ((_ is Cons!66266) (t!380133 (unfocusZipperList!2114 zl!343))))))

(declare-fun e!4141330 () Bool)

(assert (=> d!2158372 e!4141330))

(declare-fun res!2802108 () Bool)

(assert (=> d!2158372 (=> (not res!2802108) (not e!4141330))))

(assert (=> d!2158372 (= res!2802108 (validRegex!8433 lt!2458240))))

(assert (=> d!2158372 (= lt!2458240 e!4141333)))

(declare-fun c!1278728 () Bool)

(declare-fun e!4141331 () Bool)

(assert (=> d!2158372 (= c!1278728 e!4141331)))

(declare-fun res!2802107 () Bool)

(assert (=> d!2158372 (=> (not res!2802107) (not e!4141331))))

(assert (=> d!2158372 (= res!2802107 ((_ is Cons!66266) (t!380133 (unfocusZipperList!2114 zl!343))))))

(assert (=> d!2158372 (forall!15890 (t!380133 (unfocusZipperList!2114 zl!343)) lambda!388753)))

(assert (=> d!2158372 (= (generalisedUnion!2532 (t!380133 (unfocusZipperList!2114 zl!343))) lt!2458240)))

(declare-fun b!6870044 () Bool)

(assert (=> b!6870044 (= e!4141328 EmptyLang!16697)))

(declare-fun b!6870045 () Bool)

(declare-fun e!4141329 () Bool)

(assert (=> b!6870045 (= e!4141329 (isEmptyLang!2026 lt!2458240))))

(declare-fun b!6870046 () Bool)

(assert (=> b!6870046 (= e!4141328 (Union!16697 (h!72714 (t!380133 (unfocusZipperList!2114 zl!343))) (generalisedUnion!2532 (t!380133 (t!380133 (unfocusZipperList!2114 zl!343))))))))

(declare-fun b!6870047 () Bool)

(assert (=> b!6870047 (= e!4141331 (isEmpty!38628 (t!380133 (t!380133 (unfocusZipperList!2114 zl!343)))))))

(declare-fun b!6870048 () Bool)

(assert (=> b!6870048 (= e!4141330 e!4141329)))

(declare-fun c!1278730 () Bool)

(assert (=> b!6870048 (= c!1278730 (isEmpty!38628 (t!380133 (unfocusZipperList!2114 zl!343))))))

(declare-fun b!6870049 () Bool)

(assert (=> b!6870049 (= e!4141329 e!4141332)))

(declare-fun c!1278729 () Bool)

(assert (=> b!6870049 (= c!1278729 (isEmpty!38628 (tail!12836 (t!380133 (unfocusZipperList!2114 zl!343)))))))

(declare-fun b!6870050 () Bool)

(assert (=> b!6870050 (= e!4141332 (isUnion!1456 lt!2458240))))

(declare-fun b!6870051 () Bool)

(assert (=> b!6870051 (= e!4141333 (h!72714 (t!380133 (unfocusZipperList!2114 zl!343))))))

(assert (= (and d!2158372 res!2802107) b!6870047))

(assert (= (and d!2158372 c!1278728) b!6870051))

(assert (= (and d!2158372 (not c!1278728)) b!6870043))

(assert (= (and b!6870043 c!1278727) b!6870046))

(assert (= (and b!6870043 (not c!1278727)) b!6870044))

(assert (= (and d!2158372 res!2802108) b!6870048))

(assert (= (and b!6870048 c!1278730) b!6870045))

(assert (= (and b!6870048 (not c!1278730)) b!6870049))

(assert (= (and b!6870049 c!1278729) b!6870042))

(assert (= (and b!6870049 (not c!1278729)) b!6870050))

(declare-fun m!7601438 () Bool)

(assert (=> d!2158372 m!7601438))

(declare-fun m!7601440 () Bool)

(assert (=> d!2158372 m!7601440))

(declare-fun m!7601442 () Bool)

(assert (=> b!6870045 m!7601442))

(assert (=> b!6870048 m!7600162))

(declare-fun m!7601446 () Bool)

(assert (=> b!6870042 m!7601446))

(declare-fun m!7601448 () Bool)

(assert (=> b!6870049 m!7601448))

(assert (=> b!6870049 m!7601448))

(declare-fun m!7601450 () Bool)

(assert (=> b!6870049 m!7601450))

(declare-fun m!7601452 () Bool)

(assert (=> b!6870050 m!7601452))

(declare-fun m!7601454 () Bool)

(assert (=> b!6870046 m!7601454))

(declare-fun m!7601456 () Bool)

(assert (=> b!6870047 m!7601456))

(assert (=> b!6868839 d!2158372))

(declare-fun d!2158388 () Bool)

(declare-fun res!2802116 () Bool)

(declare-fun e!4141349 () Bool)

(assert (=> d!2158388 (=> res!2802116 e!4141349)))

(assert (=> d!2158388 (= res!2802116 ((_ is Nil!66266) lt!2458035))))

(assert (=> d!2158388 (= (forall!15890 lt!2458035 lambda!388700) e!4141349)))

(declare-fun b!6870075 () Bool)

(declare-fun e!4141350 () Bool)

(assert (=> b!6870075 (= e!4141349 e!4141350)))

(declare-fun res!2802117 () Bool)

(assert (=> b!6870075 (=> (not res!2802117) (not e!4141350))))

(assert (=> b!6870075 (= res!2802117 (dynLambda!26529 lambda!388700 (h!72714 lt!2458035)))))

(declare-fun b!6870076 () Bool)

(assert (=> b!6870076 (= e!4141350 (forall!15890 (t!380133 lt!2458035) lambda!388700))))

(assert (= (and d!2158388 (not res!2802116)) b!6870075))

(assert (= (and b!6870075 res!2802117) b!6870076))

(declare-fun b_lambda!259951 () Bool)

(assert (=> (not b_lambda!259951) (not b!6870075)))

(declare-fun m!7601462 () Bool)

(assert (=> b!6870075 m!7601462))

(declare-fun m!7601464 () Bool)

(assert (=> b!6870076 m!7601464))

(assert (=> d!2157902 d!2158388))

(declare-fun d!2158392 () Bool)

(declare-fun lt!2458243 () Bool)

(assert (=> d!2158392 (= lt!2458243 (select (content!13010 (t!380134 zl!343)) lt!2458179))))

(declare-fun e!4141358 () Bool)

(assert (=> d!2158392 (= lt!2458243 e!4141358)))

(declare-fun res!2802123 () Bool)

(assert (=> d!2158392 (=> (not res!2802123) (not e!4141358))))

(assert (=> d!2158392 (= res!2802123 ((_ is Cons!66267) (t!380134 zl!343)))))

(assert (=> d!2158392 (= (contains!20355 (t!380134 zl!343) lt!2458179) lt!2458243)))

(declare-fun b!6870084 () Bool)

(declare-fun e!4141357 () Bool)

(assert (=> b!6870084 (= e!4141358 e!4141357)))

(declare-fun res!2802124 () Bool)

(assert (=> b!6870084 (=> res!2802124 e!4141357)))

(assert (=> b!6870084 (= res!2802124 (= (h!72715 (t!380134 zl!343)) lt!2458179))))

(declare-fun b!6870085 () Bool)

(assert (=> b!6870085 (= e!4141357 (contains!20355 (t!380134 (t!380134 zl!343)) lt!2458179))))

(assert (= (and d!2158392 res!2802123) b!6870084))

(assert (= (and b!6870084 (not res!2802124)) b!6870085))

(assert (=> d!2158392 m!7600284))

(declare-fun m!7601466 () Bool)

(assert (=> d!2158392 m!7601466))

(declare-fun m!7601468 () Bool)

(assert (=> b!6870085 m!7601468))

(assert (=> b!6869010 d!2158392))

(declare-fun d!2158394 () Bool)

(declare-fun res!2802125 () Bool)

(declare-fun e!4141359 () Bool)

(assert (=> d!2158394 (=> res!2802125 e!4141359)))

(assert (=> d!2158394 (= res!2802125 ((_ is Nil!66266) (exprs!6581 (h!72715 (t!380134 zl!343)))))))

(assert (=> d!2158394 (= (forall!15890 (exprs!6581 (h!72715 (t!380134 zl!343))) lambda!388689) e!4141359)))

(declare-fun b!6870086 () Bool)

(declare-fun e!4141360 () Bool)

(assert (=> b!6870086 (= e!4141359 e!4141360)))

(declare-fun res!2802126 () Bool)

(assert (=> b!6870086 (=> (not res!2802126) (not e!4141360))))

(assert (=> b!6870086 (= res!2802126 (dynLambda!26529 lambda!388689 (h!72714 (exprs!6581 (h!72715 (t!380134 zl!343))))))))

(declare-fun b!6870087 () Bool)

(assert (=> b!6870087 (= e!4141360 (forall!15890 (t!380133 (exprs!6581 (h!72715 (t!380134 zl!343)))) lambda!388689))))

(assert (= (and d!2158394 (not res!2802125)) b!6870086))

(assert (= (and b!6870086 res!2802126) b!6870087))

(declare-fun b_lambda!259953 () Bool)

(assert (=> (not b_lambda!259953) (not b!6870086)))

(declare-fun m!7601478 () Bool)

(assert (=> b!6870086 m!7601478))

(declare-fun m!7601480 () Bool)

(assert (=> b!6870087 m!7601480))

(assert (=> d!2157854 d!2158394))

(declare-fun b!6870090 () Bool)

(declare-fun e!4141362 () Bool)

(declare-fun e!4141365 () Bool)

(assert (=> b!6870090 (= e!4141362 e!4141365)))

(declare-fun res!2802130 () Bool)

(declare-fun call!625845 () Bool)

(assert (=> b!6870090 (= res!2802130 call!625845)))

(assert (=> b!6870090 (=> res!2802130 e!4141365)))

(declare-fun b!6870091 () Bool)

(declare-fun e!4141364 () Bool)

(declare-fun e!4141367 () Bool)

(assert (=> b!6870091 (= e!4141364 e!4141367)))

(declare-fun res!2802131 () Bool)

(assert (=> b!6870091 (=> (not res!2802131) (not e!4141367))))

(assert (=> b!6870091 (= res!2802131 (and (not ((_ is EmptyLang!16697) (reg!17026 r!7292))) (not ((_ is ElementMatch!16697) (reg!17026 r!7292)))))))

(declare-fun b!6870092 () Bool)

(declare-fun e!4141366 () Bool)

(assert (=> b!6870092 (= e!4141367 e!4141366)))

(declare-fun res!2802128 () Bool)

(assert (=> b!6870092 (=> res!2802128 e!4141366)))

(assert (=> b!6870092 (= res!2802128 ((_ is Star!16697) (reg!17026 r!7292)))))

(declare-fun bm!625840 () Bool)

(declare-fun c!1278741 () Bool)

(assert (=> bm!625840 (= call!625845 (nullable!6658 (ite c!1278741 (regOne!33907 (reg!17026 r!7292)) (regOne!33906 (reg!17026 r!7292)))))))

(declare-fun d!2158400 () Bool)

(declare-fun res!2802127 () Bool)

(assert (=> d!2158400 (=> res!2802127 e!4141364)))

(assert (=> d!2158400 (= res!2802127 ((_ is EmptyExpr!16697) (reg!17026 r!7292)))))

(assert (=> d!2158400 (= (nullableFct!2532 (reg!17026 r!7292)) e!4141364)))

(declare-fun b!6870093 () Bool)

(declare-fun call!625846 () Bool)

(assert (=> b!6870093 (= e!4141365 call!625846)))

(declare-fun b!6870094 () Bool)

(assert (=> b!6870094 (= e!4141366 e!4141362)))

(assert (=> b!6870094 (= c!1278741 ((_ is Union!16697) (reg!17026 r!7292)))))

(declare-fun b!6870095 () Bool)

(declare-fun e!4141363 () Bool)

(assert (=> b!6870095 (= e!4141363 call!625846)))

(declare-fun b!6870096 () Bool)

(assert (=> b!6870096 (= e!4141362 e!4141363)))

(declare-fun res!2802129 () Bool)

(assert (=> b!6870096 (= res!2802129 call!625845)))

(assert (=> b!6870096 (=> (not res!2802129) (not e!4141363))))

(declare-fun bm!625841 () Bool)

(assert (=> bm!625841 (= call!625846 (nullable!6658 (ite c!1278741 (regTwo!33907 (reg!17026 r!7292)) (regTwo!33906 (reg!17026 r!7292)))))))

(assert (= (and d!2158400 (not res!2802127)) b!6870091))

(assert (= (and b!6870091 res!2802131) b!6870092))

(assert (= (and b!6870092 (not res!2802128)) b!6870094))

(assert (= (and b!6870094 c!1278741) b!6870090))

(assert (= (and b!6870094 (not c!1278741)) b!6870096))

(assert (= (and b!6870090 (not res!2802130)) b!6870093))

(assert (= (and b!6870096 res!2802129) b!6870095))

(assert (= (or b!6870093 b!6870095) bm!625841))

(assert (= (or b!6870090 b!6870096) bm!625840))

(declare-fun m!7601484 () Bool)

(assert (=> bm!625840 m!7601484))

(declare-fun m!7601486 () Bool)

(assert (=> bm!625841 m!7601486))

(assert (=> d!2157794 d!2158400))

(assert (=> b!6868854 d!2158232))

(declare-fun b!6870097 () Bool)

(declare-fun e!4141368 () Bool)

(declare-fun call!625848 () Bool)

(assert (=> b!6870097 (= e!4141368 call!625848)))

(declare-fun bm!625842 () Bool)

(declare-fun c!1278742 () Bool)

(declare-fun call!625847 () Bool)

(declare-fun c!1278743 () Bool)

(assert (=> bm!625842 (= call!625847 (validRegex!8433 (ite c!1278742 (reg!17026 lt!2458171) (ite c!1278743 (regOne!33907 lt!2458171) (regOne!33906 lt!2458171)))))))

(declare-fun bm!625843 () Bool)

(declare-fun call!625849 () Bool)

(assert (=> bm!625843 (= call!625849 call!625847)))

(declare-fun b!6870098 () Bool)

(declare-fun e!4141370 () Bool)

(assert (=> b!6870098 (= e!4141370 call!625847)))

(declare-fun bm!625844 () Bool)

(assert (=> bm!625844 (= call!625848 (validRegex!8433 (ite c!1278743 (regTwo!33907 lt!2458171) (regTwo!33906 lt!2458171))))))

(declare-fun b!6870099 () Bool)

(declare-fun e!4141374 () Bool)

(assert (=> b!6870099 (= e!4141374 e!4141368)))

(declare-fun res!2802134 () Bool)

(assert (=> b!6870099 (=> (not res!2802134) (not e!4141368))))

(assert (=> b!6870099 (= res!2802134 call!625849)))

(declare-fun d!2158410 () Bool)

(declare-fun res!2802133 () Bool)

(declare-fun e!4141372 () Bool)

(assert (=> d!2158410 (=> res!2802133 e!4141372)))

(assert (=> d!2158410 (= res!2802133 ((_ is ElementMatch!16697) lt!2458171))))

(assert (=> d!2158410 (= (validRegex!8433 lt!2458171) e!4141372)))

(declare-fun b!6870100 () Bool)

(declare-fun res!2802132 () Bool)

(declare-fun e!4141371 () Bool)

(assert (=> b!6870100 (=> (not res!2802132) (not e!4141371))))

(assert (=> b!6870100 (= res!2802132 call!625849)))

(declare-fun e!4141373 () Bool)

(assert (=> b!6870100 (= e!4141373 e!4141371)))

(declare-fun b!6870101 () Bool)

(assert (=> b!6870101 (= e!4141371 call!625848)))

(declare-fun b!6870102 () Bool)

(declare-fun res!2802135 () Bool)

(assert (=> b!6870102 (=> res!2802135 e!4141374)))

(assert (=> b!6870102 (= res!2802135 (not ((_ is Concat!25542) lt!2458171)))))

(assert (=> b!6870102 (= e!4141373 e!4141374)))

(declare-fun b!6870103 () Bool)

(declare-fun e!4141369 () Bool)

(assert (=> b!6870103 (= e!4141369 e!4141373)))

(assert (=> b!6870103 (= c!1278743 ((_ is Union!16697) lt!2458171))))

(declare-fun b!6870104 () Bool)

(assert (=> b!6870104 (= e!4141372 e!4141369)))

(assert (=> b!6870104 (= c!1278742 ((_ is Star!16697) lt!2458171))))

(declare-fun b!6870105 () Bool)

(assert (=> b!6870105 (= e!4141369 e!4141370)))

(declare-fun res!2802136 () Bool)

(assert (=> b!6870105 (= res!2802136 (not (nullable!6658 (reg!17026 lt!2458171))))))

(assert (=> b!6870105 (=> (not res!2802136) (not e!4141370))))

(assert (= (and d!2158410 (not res!2802133)) b!6870104))

(assert (= (and b!6870104 c!1278742) b!6870105))

(assert (= (and b!6870104 (not c!1278742)) b!6870103))

(assert (= (and b!6870105 res!2802136) b!6870098))

(assert (= (and b!6870103 c!1278743) b!6870100))

(assert (= (and b!6870103 (not c!1278743)) b!6870102))

(assert (= (and b!6870100 res!2802132) b!6870101))

(assert (= (and b!6870102 (not res!2802135)) b!6870099))

(assert (= (and b!6870099 res!2802134) b!6870097))

(assert (= (or b!6870101 b!6870097) bm!625844))

(assert (= (or b!6870100 b!6870099) bm!625843))

(assert (= (or b!6870098 bm!625843) bm!625842))

(declare-fun m!7601488 () Bool)

(assert (=> bm!625842 m!7601488))

(declare-fun m!7601490 () Bool)

(assert (=> bm!625844 m!7601490))

(declare-fun m!7601492 () Bool)

(assert (=> b!6870105 m!7601492))

(assert (=> d!2157776 d!2158410))

(assert (=> d!2157776 d!2157560))

(declare-fun d!2158412 () Bool)

(declare-fun c!1278744 () Bool)

(assert (=> d!2158412 (= c!1278744 ((_ is Nil!66267) (t!380134 lt!2458093)))))

(declare-fun e!4141375 () (InoxSet Context!12162))

(assert (=> d!2158412 (= (content!13010 (t!380134 lt!2458093)) e!4141375)))

(declare-fun b!6870106 () Bool)

(assert (=> b!6870106 (= e!4141375 ((as const (Array Context!12162 Bool)) false))))

(declare-fun b!6870107 () Bool)

(assert (=> b!6870107 (= e!4141375 ((_ map or) (store ((as const (Array Context!12162 Bool)) false) (h!72715 (t!380134 lt!2458093)) true) (content!13010 (t!380134 (t!380134 lt!2458093)))))))

(assert (= (and d!2158412 c!1278744) b!6870106))

(assert (= (and d!2158412 (not c!1278744)) b!6870107))

(declare-fun m!7601494 () Bool)

(assert (=> b!6870107 m!7601494))

(declare-fun m!7601496 () Bool)

(assert (=> b!6870107 m!7601496))

(assert (=> b!6868913 d!2158412))

(assert (=> bs!1836229 d!2157802))

(declare-fun d!2158414 () Bool)

(assert (=> d!2158414 (= (isUnion!1456 lt!2458167) ((_ is Union!16697) lt!2458167))))

(assert (=> b!6868843 d!2158414))

(declare-fun b!6870108 () Bool)

(declare-fun e!4141376 () Bool)

(declare-fun call!625851 () Bool)

(assert (=> b!6870108 (= e!4141376 call!625851)))

(declare-fun bm!625845 () Bool)

(declare-fun call!625850 () Bool)

(declare-fun c!1278745 () Bool)

(declare-fun c!1278746 () Bool)

(assert (=> bm!625845 (= call!625850 (validRegex!8433 (ite c!1278745 (reg!17026 (ite c!1278475 (regTwo!33907 lt!2458118) (regTwo!33906 lt!2458118))) (ite c!1278746 (regOne!33907 (ite c!1278475 (regTwo!33907 lt!2458118) (regTwo!33906 lt!2458118))) (regOne!33906 (ite c!1278475 (regTwo!33907 lt!2458118) (regTwo!33906 lt!2458118)))))))))

(declare-fun bm!625846 () Bool)

(declare-fun call!625852 () Bool)

(assert (=> bm!625846 (= call!625852 call!625850)))

(declare-fun b!6870109 () Bool)

(declare-fun e!4141378 () Bool)

(assert (=> b!6870109 (= e!4141378 call!625850)))

(declare-fun bm!625847 () Bool)

(assert (=> bm!625847 (= call!625851 (validRegex!8433 (ite c!1278746 (regTwo!33907 (ite c!1278475 (regTwo!33907 lt!2458118) (regTwo!33906 lt!2458118))) (regTwo!33906 (ite c!1278475 (regTwo!33907 lt!2458118) (regTwo!33906 lt!2458118))))))))

(declare-fun b!6870110 () Bool)

(declare-fun e!4141382 () Bool)

(assert (=> b!6870110 (= e!4141382 e!4141376)))

(declare-fun res!2802139 () Bool)

(assert (=> b!6870110 (=> (not res!2802139) (not e!4141376))))

(assert (=> b!6870110 (= res!2802139 call!625852)))

(declare-fun d!2158416 () Bool)

(declare-fun res!2802138 () Bool)

(declare-fun e!4141380 () Bool)

(assert (=> d!2158416 (=> res!2802138 e!4141380)))

(assert (=> d!2158416 (= res!2802138 ((_ is ElementMatch!16697) (ite c!1278475 (regTwo!33907 lt!2458118) (regTwo!33906 lt!2458118))))))

(assert (=> d!2158416 (= (validRegex!8433 (ite c!1278475 (regTwo!33907 lt!2458118) (regTwo!33906 lt!2458118))) e!4141380)))

(declare-fun b!6870111 () Bool)

(declare-fun res!2802137 () Bool)

(declare-fun e!4141379 () Bool)

(assert (=> b!6870111 (=> (not res!2802137) (not e!4141379))))

(assert (=> b!6870111 (= res!2802137 call!625852)))

(declare-fun e!4141381 () Bool)

(assert (=> b!6870111 (= e!4141381 e!4141379)))

(declare-fun b!6870112 () Bool)

(assert (=> b!6870112 (= e!4141379 call!625851)))

(declare-fun b!6870113 () Bool)

(declare-fun res!2802140 () Bool)

(assert (=> b!6870113 (=> res!2802140 e!4141382)))

(assert (=> b!6870113 (= res!2802140 (not ((_ is Concat!25542) (ite c!1278475 (regTwo!33907 lt!2458118) (regTwo!33906 lt!2458118)))))))

(assert (=> b!6870113 (= e!4141381 e!4141382)))

(declare-fun b!6870114 () Bool)

(declare-fun e!4141377 () Bool)

(assert (=> b!6870114 (= e!4141377 e!4141381)))

(assert (=> b!6870114 (= c!1278746 ((_ is Union!16697) (ite c!1278475 (regTwo!33907 lt!2458118) (regTwo!33906 lt!2458118))))))

(declare-fun b!6870115 () Bool)

(assert (=> b!6870115 (= e!4141380 e!4141377)))

(assert (=> b!6870115 (= c!1278745 ((_ is Star!16697) (ite c!1278475 (regTwo!33907 lt!2458118) (regTwo!33906 lt!2458118))))))

(declare-fun b!6870116 () Bool)

(assert (=> b!6870116 (= e!4141377 e!4141378)))

(declare-fun res!2802141 () Bool)

(assert (=> b!6870116 (= res!2802141 (not (nullable!6658 (reg!17026 (ite c!1278475 (regTwo!33907 lt!2458118) (regTwo!33906 lt!2458118))))))))

(assert (=> b!6870116 (=> (not res!2802141) (not e!4141378))))

(assert (= (and d!2158416 (not res!2802138)) b!6870115))

(assert (= (and b!6870115 c!1278745) b!6870116))

(assert (= (and b!6870115 (not c!1278745)) b!6870114))

(assert (= (and b!6870116 res!2802141) b!6870109))

(assert (= (and b!6870114 c!1278746) b!6870111))

(assert (= (and b!6870114 (not c!1278746)) b!6870113))

(assert (= (and b!6870111 res!2802137) b!6870112))

(assert (= (and b!6870113 (not res!2802140)) b!6870110))

(assert (= (and b!6870110 res!2802139) b!6870108))

(assert (= (or b!6870112 b!6870108) bm!625847))

(assert (= (or b!6870111 b!6870110) bm!625846))

(assert (= (or b!6870109 bm!625846) bm!625845))

(declare-fun m!7601498 () Bool)

(assert (=> bm!625845 m!7601498))

(declare-fun m!7601500 () Bool)

(assert (=> bm!625847 m!7601500))

(declare-fun m!7601502 () Bool)

(assert (=> b!6870116 m!7601502))

(assert (=> bm!625640 d!2158416))

(declare-fun bs!1837064 () Bool)

(declare-fun b!6870120 () Bool)

(assert (= bs!1837064 (and b!6870120 b!6869072)))

(declare-fun lambda!388755 () Int)

(assert (=> bs!1837064 (not (= lambda!388755 lambda!388699))))

(declare-fun bs!1837065 () Bool)

(assert (= bs!1837065 (and b!6870120 b!6869769)))

(assert (=> bs!1837065 (= (and (= (reg!17026 (regTwo!33907 (regOne!33907 r!7292))) (reg!17026 (regOne!33907 (regTwo!33907 r!7292)))) (= (regTwo!33907 (regOne!33907 r!7292)) (regOne!33907 (regTwo!33907 r!7292)))) (= lambda!388755 lambda!388737))))

(declare-fun bs!1837068 () Bool)

(assert (= bs!1837068 (and b!6870120 b!6867923)))

(assert (=> bs!1837068 (= (and (= (reg!17026 (regTwo!33907 (regOne!33907 r!7292))) (reg!17026 r!7292)) (= (regTwo!33907 (regOne!33907 r!7292)) r!7292)) (= lambda!388755 lambda!388599))))

(declare-fun bs!1837071 () Bool)

(assert (= bs!1837071 (and b!6870120 b!6868968)))

(assert (=> bs!1837071 (not (= lambda!388755 lambda!388686))))

(declare-fun bs!1837073 () Bool)

(assert (= bs!1837073 (and b!6870120 b!6868967)))

(assert (=> bs!1837073 (= (and (= (reg!17026 (regTwo!33907 (regOne!33907 r!7292))) (reg!17026 (regOne!33907 r!7292))) (= (regTwo!33907 (regOne!33907 r!7292)) (regOne!33907 r!7292))) (= lambda!388755 lambda!388685))))

(declare-fun bs!1837076 () Bool)

(assert (= bs!1837076 (and b!6870120 b!6867924)))

(assert (=> bs!1837076 (not (= lambda!388755 lambda!388601))))

(declare-fun bs!1837079 () Bool)

(assert (= bs!1837079 (and b!6870120 b!6869071)))

(assert (=> bs!1837079 (= (and (= (reg!17026 (regTwo!33907 (regOne!33907 r!7292))) (reg!17026 (regTwo!33907 r!7292))) (= (regTwo!33907 (regOne!33907 r!7292)) (regTwo!33907 r!7292))) (= lambda!388755 lambda!388698))))

(declare-fun bs!1837082 () Bool)

(assert (= bs!1837082 (and b!6870120 b!6869770)))

(assert (=> bs!1837082 (not (= lambda!388755 lambda!388738))))

(declare-fun bs!1837085 () Bool)

(assert (= bs!1837085 (and b!6870120 b!6869692)))

(assert (=> bs!1837085 (not (= lambda!388755 lambda!388734))))

(declare-fun bs!1837088 () Bool)

(assert (= bs!1837088 (and b!6870120 b!6869691)))

(assert (=> bs!1837088 (= (and (= (reg!17026 (regTwo!33907 (regOne!33907 r!7292))) (reg!17026 (regOne!33907 (regOne!33907 r!7292)))) (= (regTwo!33907 (regOne!33907 r!7292)) (regOne!33907 (regOne!33907 r!7292)))) (= lambda!388755 lambda!388732))))

(assert (=> b!6870120 true))

(assert (=> b!6870120 true))

(declare-fun bs!1837100 () Bool)

(declare-fun b!6870121 () Bool)

(assert (= bs!1837100 (and b!6870121 b!6869072)))

(declare-fun lambda!388757 () Int)

(assert (=> bs!1837100 (= (and (= (regOne!33906 (regTwo!33907 (regOne!33907 r!7292))) (regOne!33906 (regTwo!33907 r!7292))) (= (regTwo!33906 (regTwo!33907 (regOne!33907 r!7292))) (regTwo!33906 (regTwo!33907 r!7292)))) (= lambda!388757 lambda!388699))))

(declare-fun bs!1837102 () Bool)

(assert (= bs!1837102 (and b!6870121 b!6870120)))

(assert (=> bs!1837102 (not (= lambda!388757 lambda!388755))))

(declare-fun bs!1837105 () Bool)

(assert (= bs!1837105 (and b!6870121 b!6869769)))

(assert (=> bs!1837105 (not (= lambda!388757 lambda!388737))))

(declare-fun bs!1837108 () Bool)

(assert (= bs!1837108 (and b!6870121 b!6867923)))

(assert (=> bs!1837108 (not (= lambda!388757 lambda!388599))))

(declare-fun bs!1837110 () Bool)

(assert (= bs!1837110 (and b!6870121 b!6868968)))

(assert (=> bs!1837110 (= (and (= (regOne!33906 (regTwo!33907 (regOne!33907 r!7292))) (regOne!33906 (regOne!33907 r!7292))) (= (regTwo!33906 (regTwo!33907 (regOne!33907 r!7292))) (regTwo!33906 (regOne!33907 r!7292)))) (= lambda!388757 lambda!388686))))

(declare-fun bs!1837111 () Bool)

(assert (= bs!1837111 (and b!6870121 b!6868967)))

(assert (=> bs!1837111 (not (= lambda!388757 lambda!388685))))

(declare-fun bs!1837113 () Bool)

(assert (= bs!1837113 (and b!6870121 b!6867924)))

(assert (=> bs!1837113 (= (and (= (regOne!33906 (regTwo!33907 (regOne!33907 r!7292))) (regOne!33906 r!7292)) (= (regTwo!33906 (regTwo!33907 (regOne!33907 r!7292))) (regTwo!33906 r!7292))) (= lambda!388757 lambda!388601))))

(declare-fun bs!1837114 () Bool)

(assert (= bs!1837114 (and b!6870121 b!6869071)))

(assert (=> bs!1837114 (not (= lambda!388757 lambda!388698))))

(declare-fun bs!1837115 () Bool)

(assert (= bs!1837115 (and b!6870121 b!6869770)))

(assert (=> bs!1837115 (= (and (= (regOne!33906 (regTwo!33907 (regOne!33907 r!7292))) (regOne!33906 (regOne!33907 (regTwo!33907 r!7292)))) (= (regTwo!33906 (regTwo!33907 (regOne!33907 r!7292))) (regTwo!33906 (regOne!33907 (regTwo!33907 r!7292))))) (= lambda!388757 lambda!388738))))

(declare-fun bs!1837116 () Bool)

(assert (= bs!1837116 (and b!6870121 b!6869692)))

(assert (=> bs!1837116 (= (and (= (regOne!33906 (regTwo!33907 (regOne!33907 r!7292))) (regOne!33906 (regOne!33907 (regOne!33907 r!7292)))) (= (regTwo!33906 (regTwo!33907 (regOne!33907 r!7292))) (regTwo!33906 (regOne!33907 (regOne!33907 r!7292))))) (= lambda!388757 lambda!388734))))

(declare-fun bs!1837117 () Bool)

(assert (= bs!1837117 (and b!6870121 b!6869691)))

(assert (=> bs!1837117 (not (= lambda!388757 lambda!388732))))

(assert (=> b!6870121 true))

(assert (=> b!6870121 true))

(declare-fun bm!625848 () Bool)

(declare-fun call!625853 () Bool)

(declare-fun c!1278750 () Bool)

(assert (=> bm!625848 (= call!625853 (Exists!3757 (ite c!1278750 lambda!388755 lambda!388757)))))

(declare-fun b!6870117 () Bool)

(declare-fun c!1278747 () Bool)

(assert (=> b!6870117 (= c!1278747 ((_ is ElementMatch!16697) (regTwo!33907 (regOne!33907 r!7292))))))

(declare-fun e!4141386 () Bool)

(declare-fun e!4141385 () Bool)

(assert (=> b!6870117 (= e!4141386 e!4141385)))

(declare-fun b!6870118 () Bool)

(assert (=> b!6870118 (= e!4141385 (= s!2326 (Cons!66268 (c!1278149 (regTwo!33907 (regOne!33907 r!7292))) Nil!66268)))))

(declare-fun b!6870119 () Bool)

(declare-fun e!4141384 () Bool)

(declare-fun e!4141387 () Bool)

(assert (=> b!6870119 (= e!4141384 e!4141387)))

(assert (=> b!6870119 (= c!1278750 ((_ is Star!16697) (regTwo!33907 (regOne!33907 r!7292))))))

(declare-fun e!4141388 () Bool)

(assert (=> b!6870120 (= e!4141388 call!625853)))

(declare-fun bm!625849 () Bool)

(declare-fun call!625854 () Bool)

(assert (=> bm!625849 (= call!625854 (isEmpty!38627 s!2326))))

(declare-fun b!6870122 () Bool)

(declare-fun e!4141389 () Bool)

(assert (=> b!6870122 (= e!4141384 e!4141389)))

(declare-fun res!2802142 () Bool)

(assert (=> b!6870122 (= res!2802142 (matchRSpec!3798 (regOne!33907 (regTwo!33907 (regOne!33907 r!7292))) s!2326))))

(assert (=> b!6870122 (=> res!2802142 e!4141389)))

(declare-fun b!6870123 () Bool)

(declare-fun e!4141383 () Bool)

(assert (=> b!6870123 (= e!4141383 e!4141386)))

(declare-fun res!2802144 () Bool)

(assert (=> b!6870123 (= res!2802144 (not ((_ is EmptyLang!16697) (regTwo!33907 (regOne!33907 r!7292)))))))

(assert (=> b!6870123 (=> (not res!2802144) (not e!4141386))))

(declare-fun b!6870124 () Bool)

(assert (=> b!6870124 (= e!4141383 call!625854)))

(declare-fun b!6870125 () Bool)

(assert (=> b!6870125 (= e!4141389 (matchRSpec!3798 (regTwo!33907 (regTwo!33907 (regOne!33907 r!7292))) s!2326))))

(declare-fun d!2158418 () Bool)

(declare-fun c!1278748 () Bool)

(assert (=> d!2158418 (= c!1278748 ((_ is EmptyExpr!16697) (regTwo!33907 (regOne!33907 r!7292))))))

(assert (=> d!2158418 (= (matchRSpec!3798 (regTwo!33907 (regOne!33907 r!7292)) s!2326) e!4141383)))

(assert (=> b!6870121 (= e!4141387 call!625853)))

(declare-fun b!6870126 () Bool)

(declare-fun res!2802143 () Bool)

(assert (=> b!6870126 (=> res!2802143 e!4141388)))

(assert (=> b!6870126 (= res!2802143 call!625854)))

(assert (=> b!6870126 (= e!4141387 e!4141388)))

(declare-fun b!6870127 () Bool)

(declare-fun c!1278749 () Bool)

(assert (=> b!6870127 (= c!1278749 ((_ is Union!16697) (regTwo!33907 (regOne!33907 r!7292))))))

(assert (=> b!6870127 (= e!4141385 e!4141384)))

(assert (= (and d!2158418 c!1278748) b!6870124))

(assert (= (and d!2158418 (not c!1278748)) b!6870123))

(assert (= (and b!6870123 res!2802144) b!6870117))

(assert (= (and b!6870117 c!1278747) b!6870118))

(assert (= (and b!6870117 (not c!1278747)) b!6870127))

(assert (= (and b!6870127 c!1278749) b!6870122))

(assert (= (and b!6870127 (not c!1278749)) b!6870119))

(assert (= (and b!6870122 (not res!2802142)) b!6870125))

(assert (= (and b!6870119 c!1278750) b!6870126))

(assert (= (and b!6870119 (not c!1278750)) b!6870121))

(assert (= (and b!6870126 (not res!2802143)) b!6870120))

(assert (= (or b!6870120 b!6870121) bm!625848))

(assert (= (or b!6870124 b!6870126) bm!625849))

(declare-fun m!7601518 () Bool)

(assert (=> bm!625848 m!7601518))

(assert (=> bm!625849 m!7599520))

(declare-fun m!7601520 () Bool)

(assert (=> b!6870122 m!7601520))

(declare-fun m!7601522 () Bool)

(assert (=> b!6870125 m!7601522))

(assert (=> b!6868972 d!2158418))

(declare-fun d!2158430 () Bool)

(assert (=> d!2158430 (= (nullable!6658 (regOne!33906 r!7292)) (nullableFct!2532 (regOne!33906 r!7292)))))

(declare-fun bs!1837118 () Bool)

(assert (= bs!1837118 d!2158430))

(declare-fun m!7601528 () Bool)

(assert (=> bs!1837118 m!7601528))

(assert (=> b!6868885 d!2158430))

(declare-fun d!2158432 () Bool)

(declare-fun res!2802154 () Bool)

(declare-fun e!4141403 () Bool)

(assert (=> d!2158432 (=> res!2802154 e!4141403)))

(assert (=> d!2158432 (= res!2802154 ((_ is Nil!66266) (t!380133 (exprs!6581 lt!2458040))))))

(assert (=> d!2158432 (= (forall!15890 (t!380133 (exprs!6581 lt!2458040)) lambda!388628) e!4141403)))

(declare-fun b!6870145 () Bool)

(declare-fun e!4141404 () Bool)

(assert (=> b!6870145 (= e!4141403 e!4141404)))

(declare-fun res!2802155 () Bool)

(assert (=> b!6870145 (=> (not res!2802155) (not e!4141404))))

(assert (=> b!6870145 (= res!2802155 (dynLambda!26529 lambda!388628 (h!72714 (t!380133 (exprs!6581 lt!2458040)))))))

(declare-fun b!6870146 () Bool)

(assert (=> b!6870146 (= e!4141404 (forall!15890 (t!380133 (t!380133 (exprs!6581 lt!2458040))) lambda!388628))))

(assert (= (and d!2158432 (not res!2802154)) b!6870145))

(assert (= (and b!6870145 res!2802155) b!6870146))

(declare-fun b_lambda!259957 () Bool)

(assert (=> (not b_lambda!259957) (not b!6870145)))

(declare-fun m!7601538 () Bool)

(assert (=> b!6870145 m!7601538))

(declare-fun m!7601540 () Bool)

(assert (=> b!6870146 m!7601540))

(assert (=> b!6869050 d!2158432))

(declare-fun d!2158440 () Bool)

(assert (=> d!2158440 (= (isEmpty!38628 (t!380133 (exprs!6581 (h!72715 zl!343)))) ((_ is Nil!66266) (t!380133 (exprs!6581 (h!72715 zl!343)))))))

(assert (=> b!6868986 d!2158440))

(declare-fun d!2158442 () Bool)

(declare-fun lt!2458247 () Bool)

(assert (=> d!2158442 (= lt!2458247 (select (content!13010 (t!380134 lt!2458102)) (h!72715 lt!2458102)))))

(declare-fun e!4141406 () Bool)

(assert (=> d!2158442 (= lt!2458247 e!4141406)))

(declare-fun res!2802156 () Bool)

(assert (=> d!2158442 (=> (not res!2802156) (not e!4141406))))

(assert (=> d!2158442 (= res!2802156 ((_ is Cons!66267) (t!380134 lt!2458102)))))

(assert (=> d!2158442 (= (contains!20355 (t!380134 lt!2458102) (h!72715 lt!2458102)) lt!2458247)))

(declare-fun b!6870147 () Bool)

(declare-fun e!4141405 () Bool)

(assert (=> b!6870147 (= e!4141406 e!4141405)))

(declare-fun res!2802157 () Bool)

(assert (=> b!6870147 (=> res!2802157 e!4141405)))

(assert (=> b!6870147 (= res!2802157 (= (h!72715 (t!380134 lt!2458102)) (h!72715 lt!2458102)))))

(declare-fun b!6870148 () Bool)

(assert (=> b!6870148 (= e!4141405 (contains!20355 (t!380134 (t!380134 lt!2458102)) (h!72715 lt!2458102)))))

(assert (= (and d!2158442 res!2802156) b!6870147))

(assert (= (and b!6870147 (not res!2802157)) b!6870148))

(assert (=> d!2158442 m!7600210))

(declare-fun m!7601542 () Bool)

(assert (=> d!2158442 m!7601542))

(declare-fun m!7601544 () Bool)

(assert (=> b!6870148 m!7601544))

(assert (=> b!6868955 d!2158442))

(declare-fun d!2158444 () Bool)

(declare-fun res!2802158 () Bool)

(declare-fun e!4141407 () Bool)

(assert (=> d!2158444 (=> res!2802158 e!4141407)))

(assert (=> d!2158444 (= res!2802158 ((_ is Nil!66267) zl!343))))

(assert (=> d!2158444 (= (forall!15892 zl!343 lambda!388681) e!4141407)))

(declare-fun b!6870149 () Bool)

(declare-fun e!4141408 () Bool)

(assert (=> b!6870149 (= e!4141407 e!4141408)))

(declare-fun res!2802159 () Bool)

(assert (=> b!6870149 (=> (not res!2802159) (not e!4141408))))

(assert (=> b!6870149 (= res!2802159 (dynLambda!26530 lambda!388681 (h!72715 zl!343)))))

(declare-fun b!6870150 () Bool)

(assert (=> b!6870150 (= e!4141408 (forall!15892 (t!380134 zl!343) lambda!388681))))

(assert (= (and d!2158444 (not res!2802158)) b!6870149))

(assert (= (and b!6870149 res!2802159) b!6870150))

(declare-fun b_lambda!259959 () Bool)

(assert (=> (not b_lambda!259959) (not b!6870149)))

(declare-fun m!7601546 () Bool)

(assert (=> b!6870149 m!7601546))

(declare-fun m!7601548 () Bool)

(assert (=> b!6870150 m!7601548))

(assert (=> d!2157818 d!2158444))

(declare-fun bs!1837130 () Bool)

(declare-fun b!6870154 () Bool)

(assert (= bs!1837130 (and b!6870154 b!6869072)))

(declare-fun lambda!388759 () Int)

(assert (=> bs!1837130 (not (= lambda!388759 lambda!388699))))

(declare-fun bs!1837131 () Bool)

(assert (= bs!1837131 (and b!6870154 b!6870120)))

(assert (=> bs!1837131 (= (and (= (reg!17026 (regTwo!33907 (regTwo!33907 r!7292))) (reg!17026 (regTwo!33907 (regOne!33907 r!7292)))) (= (regTwo!33907 (regTwo!33907 r!7292)) (regTwo!33907 (regOne!33907 r!7292)))) (= lambda!388759 lambda!388755))))

(declare-fun bs!1837132 () Bool)

(assert (= bs!1837132 (and b!6870154 b!6869769)))

(assert (=> bs!1837132 (= (and (= (reg!17026 (regTwo!33907 (regTwo!33907 r!7292))) (reg!17026 (regOne!33907 (regTwo!33907 r!7292)))) (= (regTwo!33907 (regTwo!33907 r!7292)) (regOne!33907 (regTwo!33907 r!7292)))) (= lambda!388759 lambda!388737))))

(declare-fun bs!1837133 () Bool)

(assert (= bs!1837133 (and b!6870154 b!6868968)))

(assert (=> bs!1837133 (not (= lambda!388759 lambda!388686))))

(declare-fun bs!1837134 () Bool)

(assert (= bs!1837134 (and b!6870154 b!6868967)))

(assert (=> bs!1837134 (= (and (= (reg!17026 (regTwo!33907 (regTwo!33907 r!7292))) (reg!17026 (regOne!33907 r!7292))) (= (regTwo!33907 (regTwo!33907 r!7292)) (regOne!33907 r!7292))) (= lambda!388759 lambda!388685))))

(declare-fun bs!1837135 () Bool)

(assert (= bs!1837135 (and b!6870154 b!6867924)))

(assert (=> bs!1837135 (not (= lambda!388759 lambda!388601))))

(declare-fun bs!1837136 () Bool)

(assert (= bs!1837136 (and b!6870154 b!6869071)))

(assert (=> bs!1837136 (= (and (= (reg!17026 (regTwo!33907 (regTwo!33907 r!7292))) (reg!17026 (regTwo!33907 r!7292))) (= (regTwo!33907 (regTwo!33907 r!7292)) (regTwo!33907 r!7292))) (= lambda!388759 lambda!388698))))

(declare-fun bs!1837137 () Bool)

(assert (= bs!1837137 (and b!6870154 b!6869770)))

(assert (=> bs!1837137 (not (= lambda!388759 lambda!388738))))

(declare-fun bs!1837138 () Bool)

(assert (= bs!1837138 (and b!6870154 b!6869692)))

(assert (=> bs!1837138 (not (= lambda!388759 lambda!388734))))

(declare-fun bs!1837139 () Bool)

(assert (= bs!1837139 (and b!6870154 b!6869691)))

(assert (=> bs!1837139 (= (and (= (reg!17026 (regTwo!33907 (regTwo!33907 r!7292))) (reg!17026 (regOne!33907 (regOne!33907 r!7292)))) (= (regTwo!33907 (regTwo!33907 r!7292)) (regOne!33907 (regOne!33907 r!7292)))) (= lambda!388759 lambda!388732))))

(declare-fun bs!1837140 () Bool)

(assert (= bs!1837140 (and b!6870154 b!6870121)))

(assert (=> bs!1837140 (not (= lambda!388759 lambda!388757))))

(declare-fun bs!1837141 () Bool)

(assert (= bs!1837141 (and b!6870154 b!6867923)))

(assert (=> bs!1837141 (= (and (= (reg!17026 (regTwo!33907 (regTwo!33907 r!7292))) (reg!17026 r!7292)) (= (regTwo!33907 (regTwo!33907 r!7292)) r!7292)) (= lambda!388759 lambda!388599))))

(assert (=> b!6870154 true))

(assert (=> b!6870154 true))

(declare-fun bs!1837142 () Bool)

(declare-fun b!6870155 () Bool)

(assert (= bs!1837142 (and b!6870155 b!6870120)))

(declare-fun lambda!388760 () Int)

(assert (=> bs!1837142 (not (= lambda!388760 lambda!388755))))

(declare-fun bs!1837143 () Bool)

(assert (= bs!1837143 (and b!6870155 b!6869769)))

(assert (=> bs!1837143 (not (= lambda!388760 lambda!388737))))

(declare-fun bs!1837144 () Bool)

(assert (= bs!1837144 (and b!6870155 b!6868968)))

(assert (=> bs!1837144 (= (and (= (regOne!33906 (regTwo!33907 (regTwo!33907 r!7292))) (regOne!33906 (regOne!33907 r!7292))) (= (regTwo!33906 (regTwo!33907 (regTwo!33907 r!7292))) (regTwo!33906 (regOne!33907 r!7292)))) (= lambda!388760 lambda!388686))))

(declare-fun bs!1837145 () Bool)

(assert (= bs!1837145 (and b!6870155 b!6868967)))

(assert (=> bs!1837145 (not (= lambda!388760 lambda!388685))))

(declare-fun bs!1837146 () Bool)

(assert (= bs!1837146 (and b!6870155 b!6867924)))

(assert (=> bs!1837146 (= (and (= (regOne!33906 (regTwo!33907 (regTwo!33907 r!7292))) (regOne!33906 r!7292)) (= (regTwo!33906 (regTwo!33907 (regTwo!33907 r!7292))) (regTwo!33906 r!7292))) (= lambda!388760 lambda!388601))))

(declare-fun bs!1837147 () Bool)

(assert (= bs!1837147 (and b!6870155 b!6869071)))

(assert (=> bs!1837147 (not (= lambda!388760 lambda!388698))))

(declare-fun bs!1837148 () Bool)

(assert (= bs!1837148 (and b!6870155 b!6869770)))

(assert (=> bs!1837148 (= (and (= (regOne!33906 (regTwo!33907 (regTwo!33907 r!7292))) (regOne!33906 (regOne!33907 (regTwo!33907 r!7292)))) (= (regTwo!33906 (regTwo!33907 (regTwo!33907 r!7292))) (regTwo!33906 (regOne!33907 (regTwo!33907 r!7292))))) (= lambda!388760 lambda!388738))))

(declare-fun bs!1837149 () Bool)

(assert (= bs!1837149 (and b!6870155 b!6869072)))

(assert (=> bs!1837149 (= (and (= (regOne!33906 (regTwo!33907 (regTwo!33907 r!7292))) (regOne!33906 (regTwo!33907 r!7292))) (= (regTwo!33906 (regTwo!33907 (regTwo!33907 r!7292))) (regTwo!33906 (regTwo!33907 r!7292)))) (= lambda!388760 lambda!388699))))

(declare-fun bs!1837150 () Bool)

(assert (= bs!1837150 (and b!6870155 b!6870154)))

(assert (=> bs!1837150 (not (= lambda!388760 lambda!388759))))

(declare-fun bs!1837151 () Bool)

(assert (= bs!1837151 (and b!6870155 b!6869692)))

(assert (=> bs!1837151 (= (and (= (regOne!33906 (regTwo!33907 (regTwo!33907 r!7292))) (regOne!33906 (regOne!33907 (regOne!33907 r!7292)))) (= (regTwo!33906 (regTwo!33907 (regTwo!33907 r!7292))) (regTwo!33906 (regOne!33907 (regOne!33907 r!7292))))) (= lambda!388760 lambda!388734))))

(declare-fun bs!1837152 () Bool)

(assert (= bs!1837152 (and b!6870155 b!6869691)))

(assert (=> bs!1837152 (not (= lambda!388760 lambda!388732))))

(declare-fun bs!1837153 () Bool)

(assert (= bs!1837153 (and b!6870155 b!6870121)))

(assert (=> bs!1837153 (= (and (= (regOne!33906 (regTwo!33907 (regTwo!33907 r!7292))) (regOne!33906 (regTwo!33907 (regOne!33907 r!7292)))) (= (regTwo!33906 (regTwo!33907 (regTwo!33907 r!7292))) (regTwo!33906 (regTwo!33907 (regOne!33907 r!7292))))) (= lambda!388760 lambda!388757))))

(declare-fun bs!1837154 () Bool)

(assert (= bs!1837154 (and b!6870155 b!6867923)))

(assert (=> bs!1837154 (not (= lambda!388760 lambda!388599))))

(assert (=> b!6870155 true))

(assert (=> b!6870155 true))

(declare-fun bm!625853 () Bool)

(declare-fun call!625858 () Bool)

(declare-fun c!1278758 () Bool)

(assert (=> bm!625853 (= call!625858 (Exists!3757 (ite c!1278758 lambda!388759 lambda!388760)))))

(declare-fun b!6870151 () Bool)

(declare-fun c!1278755 () Bool)

(assert (=> b!6870151 (= c!1278755 ((_ is ElementMatch!16697) (regTwo!33907 (regTwo!33907 r!7292))))))

(declare-fun e!4141412 () Bool)

(declare-fun e!4141411 () Bool)

(assert (=> b!6870151 (= e!4141412 e!4141411)))

(declare-fun b!6870152 () Bool)

(assert (=> b!6870152 (= e!4141411 (= s!2326 (Cons!66268 (c!1278149 (regTwo!33907 (regTwo!33907 r!7292))) Nil!66268)))))

(declare-fun b!6870153 () Bool)

(declare-fun e!4141410 () Bool)

(declare-fun e!4141413 () Bool)

(assert (=> b!6870153 (= e!4141410 e!4141413)))

(assert (=> b!6870153 (= c!1278758 ((_ is Star!16697) (regTwo!33907 (regTwo!33907 r!7292))))))

(declare-fun e!4141414 () Bool)

(assert (=> b!6870154 (= e!4141414 call!625858)))

(declare-fun bm!625854 () Bool)

(declare-fun call!625859 () Bool)

(assert (=> bm!625854 (= call!625859 (isEmpty!38627 s!2326))))

(declare-fun b!6870156 () Bool)

(declare-fun e!4141415 () Bool)

(assert (=> b!6870156 (= e!4141410 e!4141415)))

(declare-fun res!2802160 () Bool)

(assert (=> b!6870156 (= res!2802160 (matchRSpec!3798 (regOne!33907 (regTwo!33907 (regTwo!33907 r!7292))) s!2326))))

(assert (=> b!6870156 (=> res!2802160 e!4141415)))

(declare-fun b!6870157 () Bool)

(declare-fun e!4141409 () Bool)

(assert (=> b!6870157 (= e!4141409 e!4141412)))

(declare-fun res!2802162 () Bool)

(assert (=> b!6870157 (= res!2802162 (not ((_ is EmptyLang!16697) (regTwo!33907 (regTwo!33907 r!7292)))))))

(assert (=> b!6870157 (=> (not res!2802162) (not e!4141412))))

(declare-fun b!6870158 () Bool)

(assert (=> b!6870158 (= e!4141409 call!625859)))

(declare-fun b!6870159 () Bool)

(assert (=> b!6870159 (= e!4141415 (matchRSpec!3798 (regTwo!33907 (regTwo!33907 (regTwo!33907 r!7292))) s!2326))))

(declare-fun d!2158446 () Bool)

(declare-fun c!1278756 () Bool)

(assert (=> d!2158446 (= c!1278756 ((_ is EmptyExpr!16697) (regTwo!33907 (regTwo!33907 r!7292))))))

(assert (=> d!2158446 (= (matchRSpec!3798 (regTwo!33907 (regTwo!33907 r!7292)) s!2326) e!4141409)))

(assert (=> b!6870155 (= e!4141413 call!625858)))

(declare-fun b!6870160 () Bool)

(declare-fun res!2802161 () Bool)

(assert (=> b!6870160 (=> res!2802161 e!4141414)))

(assert (=> b!6870160 (= res!2802161 call!625859)))

(assert (=> b!6870160 (= e!4141413 e!4141414)))

(declare-fun b!6870161 () Bool)

(declare-fun c!1278757 () Bool)

(assert (=> b!6870161 (= c!1278757 ((_ is Union!16697) (regTwo!33907 (regTwo!33907 r!7292))))))

(assert (=> b!6870161 (= e!4141411 e!4141410)))

(assert (= (and d!2158446 c!1278756) b!6870158))

(assert (= (and d!2158446 (not c!1278756)) b!6870157))

(assert (= (and b!6870157 res!2802162) b!6870151))

(assert (= (and b!6870151 c!1278755) b!6870152))

(assert (= (and b!6870151 (not c!1278755)) b!6870161))

(assert (= (and b!6870161 c!1278757) b!6870156))

(assert (= (and b!6870161 (not c!1278757)) b!6870153))

(assert (= (and b!6870156 (not res!2802160)) b!6870159))

(assert (= (and b!6870153 c!1278758) b!6870160))

(assert (= (and b!6870153 (not c!1278758)) b!6870155))

(assert (= (and b!6870160 (not res!2802161)) b!6870154))

(assert (= (or b!6870154 b!6870155) bm!625853))

(assert (= (or b!6870158 b!6870160) bm!625854))

(declare-fun m!7601584 () Bool)

(assert (=> bm!625853 m!7601584))

(assert (=> bm!625854 m!7599520))

(declare-fun m!7601586 () Bool)

(assert (=> b!6870156 m!7601586))

(declare-fun m!7601588 () Bool)

(assert (=> b!6870159 m!7601588))

(assert (=> b!6869076 d!2158446))

(declare-fun b!6870216 () Bool)

(declare-fun e!4141455 () Bool)

(declare-fun call!625874 () Bool)

(assert (=> b!6870216 (= e!4141455 call!625874)))

(declare-fun call!625873 () Bool)

(declare-fun c!1278770 () Bool)

(declare-fun bm!625868 () Bool)

(declare-fun c!1278771 () Bool)

(assert (=> bm!625868 (= call!625873 (validRegex!8433 (ite c!1278770 (reg!17026 (ite c!1278437 (regTwo!33907 (h!72714 (exprs!6581 lt!2458040))) (regTwo!33906 (h!72714 (exprs!6581 lt!2458040))))) (ite c!1278771 (regOne!33907 (ite c!1278437 (regTwo!33907 (h!72714 (exprs!6581 lt!2458040))) (regTwo!33906 (h!72714 (exprs!6581 lt!2458040))))) (regOne!33906 (ite c!1278437 (regTwo!33907 (h!72714 (exprs!6581 lt!2458040))) (regTwo!33906 (h!72714 (exprs!6581 lt!2458040)))))))))))

(declare-fun bm!625869 () Bool)

(declare-fun call!625875 () Bool)

(assert (=> bm!625869 (= call!625875 call!625873)))

(declare-fun b!6870217 () Bool)

(declare-fun e!4141457 () Bool)

(assert (=> b!6870217 (= e!4141457 call!625873)))

(declare-fun bm!625870 () Bool)

(assert (=> bm!625870 (= call!625874 (validRegex!8433 (ite c!1278771 (regTwo!33907 (ite c!1278437 (regTwo!33907 (h!72714 (exprs!6581 lt!2458040))) (regTwo!33906 (h!72714 (exprs!6581 lt!2458040))))) (regTwo!33906 (ite c!1278437 (regTwo!33907 (h!72714 (exprs!6581 lt!2458040))) (regTwo!33906 (h!72714 (exprs!6581 lt!2458040))))))))))

(declare-fun b!6870218 () Bool)

(declare-fun e!4141461 () Bool)

(assert (=> b!6870218 (= e!4141461 e!4141455)))

(declare-fun res!2802197 () Bool)

(assert (=> b!6870218 (=> (not res!2802197) (not e!4141455))))

(assert (=> b!6870218 (= res!2802197 call!625875)))

(declare-fun d!2158468 () Bool)

(declare-fun res!2802196 () Bool)

(declare-fun e!4141459 () Bool)

(assert (=> d!2158468 (=> res!2802196 e!4141459)))

(assert (=> d!2158468 (= res!2802196 ((_ is ElementMatch!16697) (ite c!1278437 (regTwo!33907 (h!72714 (exprs!6581 lt!2458040))) (regTwo!33906 (h!72714 (exprs!6581 lt!2458040))))))))

(assert (=> d!2158468 (= (validRegex!8433 (ite c!1278437 (regTwo!33907 (h!72714 (exprs!6581 lt!2458040))) (regTwo!33906 (h!72714 (exprs!6581 lt!2458040))))) e!4141459)))

(declare-fun b!6870219 () Bool)

(declare-fun res!2802195 () Bool)

(declare-fun e!4141458 () Bool)

(assert (=> b!6870219 (=> (not res!2802195) (not e!4141458))))

(assert (=> b!6870219 (= res!2802195 call!625875)))

(declare-fun e!4141460 () Bool)

(assert (=> b!6870219 (= e!4141460 e!4141458)))

(declare-fun b!6870220 () Bool)

(assert (=> b!6870220 (= e!4141458 call!625874)))

(declare-fun b!6870221 () Bool)

(declare-fun res!2802198 () Bool)

(assert (=> b!6870221 (=> res!2802198 e!4141461)))

(assert (=> b!6870221 (= res!2802198 (not ((_ is Concat!25542) (ite c!1278437 (regTwo!33907 (h!72714 (exprs!6581 lt!2458040))) (regTwo!33906 (h!72714 (exprs!6581 lt!2458040)))))))))

(assert (=> b!6870221 (= e!4141460 e!4141461)))

(declare-fun b!6870222 () Bool)

(declare-fun e!4141456 () Bool)

(assert (=> b!6870222 (= e!4141456 e!4141460)))

(assert (=> b!6870222 (= c!1278771 ((_ is Union!16697) (ite c!1278437 (regTwo!33907 (h!72714 (exprs!6581 lt!2458040))) (regTwo!33906 (h!72714 (exprs!6581 lt!2458040))))))))

(declare-fun b!6870223 () Bool)

(assert (=> b!6870223 (= e!4141459 e!4141456)))

(assert (=> b!6870223 (= c!1278770 ((_ is Star!16697) (ite c!1278437 (regTwo!33907 (h!72714 (exprs!6581 lt!2458040))) (regTwo!33906 (h!72714 (exprs!6581 lt!2458040))))))))

(declare-fun b!6870224 () Bool)

(assert (=> b!6870224 (= e!4141456 e!4141457)))

(declare-fun res!2802199 () Bool)

(assert (=> b!6870224 (= res!2802199 (not (nullable!6658 (reg!17026 (ite c!1278437 (regTwo!33907 (h!72714 (exprs!6581 lt!2458040))) (regTwo!33906 (h!72714 (exprs!6581 lt!2458040))))))))))

(assert (=> b!6870224 (=> (not res!2802199) (not e!4141457))))

(assert (= (and d!2158468 (not res!2802196)) b!6870223))

(assert (= (and b!6870223 c!1278770) b!6870224))

(assert (= (and b!6870223 (not c!1278770)) b!6870222))

(assert (= (and b!6870224 res!2802199) b!6870217))

(assert (= (and b!6870222 c!1278771) b!6870219))

(assert (= (and b!6870222 (not c!1278771)) b!6870221))

(assert (= (and b!6870219 res!2802195) b!6870220))

(assert (= (and b!6870221 (not res!2802198)) b!6870218))

(assert (= (and b!6870218 res!2802197) b!6870216))

(assert (= (or b!6870220 b!6870216) bm!625870))

(assert (= (or b!6870219 b!6870218) bm!625869))

(assert (= (or b!6870217 bm!625869) bm!625868))

(declare-fun m!7601596 () Bool)

(assert (=> bm!625868 m!7601596))

(declare-fun m!7601600 () Bool)

(assert (=> bm!625870 m!7601600))

(declare-fun m!7601602 () Bool)

(assert (=> b!6870224 m!7601602))

(assert (=> bm!625626 d!2158468))

(declare-fun d!2158470 () Bool)

(assert (=> d!2158470 (= (isConcat!1540 lt!2458174) ((_ is Concat!25542) lt!2458174))))

(assert (=> b!6868990 d!2158470))

(declare-fun d!2158472 () Bool)

(assert (=> d!2158472 (= (isEmpty!38628 (t!380133 (t!380133 (exprs!6581 lt!2458040)))) ((_ is Nil!66266) (t!380133 (t!380133 (exprs!6581 lt!2458040)))))))

(assert (=> b!6869022 d!2158472))

(declare-fun d!2158476 () Bool)

(assert (=> d!2158476 (= (nullable!6658 (reg!17026 lt!2458118)) (nullableFct!2532 (reg!17026 lt!2458118)))))

(declare-fun bs!1837155 () Bool)

(assert (= bs!1837155 d!2158476))

(declare-fun m!7601606 () Bool)

(assert (=> bs!1837155 m!7601606))

(assert (=> b!6869048 d!2158476))

(declare-fun d!2158478 () Bool)

(declare-fun res!2802200 () Bool)

(declare-fun e!4141467 () Bool)

(assert (=> d!2158478 (=> res!2802200 e!4141467)))

(assert (=> d!2158478 (= res!2802200 ((_ is Nil!66266) (t!380133 lt!2458035)))))

(assert (=> d!2158478 (= (forall!15890 (t!380133 lt!2458035) lambda!388636) e!4141467)))

(declare-fun b!6870235 () Bool)

(declare-fun e!4141468 () Bool)

(assert (=> b!6870235 (= e!4141467 e!4141468)))

(declare-fun res!2802201 () Bool)

(assert (=> b!6870235 (=> (not res!2802201) (not e!4141468))))

(assert (=> b!6870235 (= res!2802201 (dynLambda!26529 lambda!388636 (h!72714 (t!380133 lt!2458035))))))

(declare-fun b!6870236 () Bool)

(assert (=> b!6870236 (= e!4141468 (forall!15890 (t!380133 (t!380133 lt!2458035)) lambda!388636))))

(assert (= (and d!2158478 (not res!2802200)) b!6870235))

(assert (= (and b!6870235 res!2802201) b!6870236))

(declare-fun b_lambda!259965 () Bool)

(assert (=> (not b_lambda!259965) (not b!6870235)))

(declare-fun m!7601608 () Bool)

(assert (=> b!6870235 m!7601608))

(declare-fun m!7601610 () Bool)

(assert (=> b!6870236 m!7601610))

(assert (=> b!6869093 d!2158478))

(declare-fun d!2158480 () Bool)

(declare-fun res!2802202 () Bool)

(declare-fun e!4141469 () Bool)

(assert (=> d!2158480 (=> res!2802202 e!4141469)))

(assert (=> d!2158480 (= res!2802202 ((_ is Nil!66267) (t!380134 lt!2458093)))))

(assert (=> d!2158480 (= (noDuplicate!2461 (t!380134 lt!2458093)) e!4141469)))

(declare-fun b!6870237 () Bool)

(declare-fun e!4141470 () Bool)

(assert (=> b!6870237 (= e!4141469 e!4141470)))

(declare-fun res!2802203 () Bool)

(assert (=> b!6870237 (=> (not res!2802203) (not e!4141470))))

(assert (=> b!6870237 (= res!2802203 (not (contains!20355 (t!380134 (t!380134 lt!2458093)) (h!72715 (t!380134 lt!2458093)))))))

(declare-fun b!6870238 () Bool)

(assert (=> b!6870238 (= e!4141470 (noDuplicate!2461 (t!380134 (t!380134 lt!2458093))))))

(assert (= (and d!2158480 (not res!2802202)) b!6870237))

(assert (= (and b!6870237 res!2802203) b!6870238))

(declare-fun m!7601612 () Bool)

(assert (=> b!6870237 m!7601612))

(declare-fun m!7601614 () Bool)

(assert (=> b!6870238 m!7601614))

(assert (=> b!6868894 d!2158480))

(declare-fun d!2158482 () Bool)

(declare-fun choose!51191 ((InoxSet Context!12162) Int) (InoxSet Context!12162))

(assert (=> d!2158482 (= (flatMap!2144 z!1189 lambda!388692) (choose!51191 z!1189 lambda!388692))))

(declare-fun bs!1837156 () Bool)

(assert (= bs!1837156 d!2158482))

(declare-fun m!7601624 () Bool)

(assert (=> bs!1837156 m!7601624))

(assert (=> d!2157858 d!2158482))

(declare-fun d!2158486 () Bool)

(declare-fun c!1278777 () Bool)

(assert (=> d!2158486 (= c!1278777 ((_ is Nil!66267) (t!380134 lt!2458102)))))

(declare-fun e!4141471 () (InoxSet Context!12162))

(assert (=> d!2158486 (= (content!13010 (t!380134 lt!2458102)) e!4141471)))

(declare-fun b!6870239 () Bool)

(assert (=> b!6870239 (= e!4141471 ((as const (Array Context!12162 Bool)) false))))

(declare-fun b!6870240 () Bool)

(assert (=> b!6870240 (= e!4141471 ((_ map or) (store ((as const (Array Context!12162 Bool)) false) (h!72715 (t!380134 lt!2458102)) true) (content!13010 (t!380134 (t!380134 lt!2458102)))))))

(assert (= (and d!2158486 c!1278777) b!6870239))

(assert (= (and d!2158486 (not c!1278777)) b!6870240))

(declare-fun m!7601626 () Bool)

(assert (=> b!6870240 m!7601626))

(declare-fun m!7601628 () Bool)

(assert (=> b!6870240 m!7601628))

(assert (=> b!6868911 d!2158486))

(declare-fun d!2158488 () Bool)

(declare-fun res!2802204 () Bool)

(declare-fun e!4141472 () Bool)

(assert (=> d!2158488 (=> res!2802204 e!4141472)))

(assert (=> d!2158488 (= res!2802204 ((_ is Nil!66267) (t!380134 zl!343)))))

(assert (=> d!2158488 (= (forall!15892 (t!380134 zl!343) lambda!388622) e!4141472)))

(declare-fun b!6870241 () Bool)

(declare-fun e!4141473 () Bool)

(assert (=> b!6870241 (= e!4141472 e!4141473)))

(declare-fun res!2802205 () Bool)

(assert (=> b!6870241 (=> (not res!2802205) (not e!4141473))))

(assert (=> b!6870241 (= res!2802205 (dynLambda!26530 lambda!388622 (h!72715 (t!380134 zl!343))))))

(declare-fun b!6870242 () Bool)

(assert (=> b!6870242 (= e!4141473 (forall!15892 (t!380134 (t!380134 zl!343)) lambda!388622))))

(assert (= (and d!2158488 (not res!2802204)) b!6870241))

(assert (= (and b!6870241 res!2802205) b!6870242))

(declare-fun b_lambda!259967 () Bool)

(assert (=> (not b_lambda!259967) (not b!6870241)))

(declare-fun m!7601632 () Bool)

(assert (=> b!6870241 m!7601632))

(declare-fun m!7601634 () Bool)

(assert (=> b!6870242 m!7601634))

(assert (=> b!6869037 d!2158488))

(assert (=> bs!1836235 d!2158304))

(declare-fun d!2158492 () Bool)

(declare-fun res!2802208 () Bool)

(declare-fun e!4141478 () Bool)

(assert (=> d!2158492 (=> res!2802208 e!4141478)))

(assert (=> d!2158492 (= res!2802208 ((_ is Nil!66266) (t!380133 (t!380133 (exprs!6581 lt!2458040)))))))

(assert (=> d!2158492 (= (forall!15890 (t!380133 (t!380133 (exprs!6581 lt!2458040))) lambda!388573) e!4141478)))

(declare-fun b!6870249 () Bool)

(declare-fun e!4141479 () Bool)

(assert (=> b!6870249 (= e!4141478 e!4141479)))

(declare-fun res!2802209 () Bool)

(assert (=> b!6870249 (=> (not res!2802209) (not e!4141479))))

(assert (=> b!6870249 (= res!2802209 (dynLambda!26529 lambda!388573 (h!72714 (t!380133 (t!380133 (exprs!6581 lt!2458040))))))))

(declare-fun b!6870250 () Bool)

(assert (=> b!6870250 (= e!4141479 (forall!15890 (t!380133 (t!380133 (t!380133 (exprs!6581 lt!2458040)))) lambda!388573))))

(assert (= (and d!2158492 (not res!2802208)) b!6870249))

(assert (= (and b!6870249 res!2802209) b!6870250))

(declare-fun b_lambda!259969 () Bool)

(assert (=> (not b_lambda!259969) (not b!6870249)))

(declare-fun m!7601636 () Bool)

(assert (=> b!6870249 m!7601636))

(declare-fun m!7601638 () Bool)

(assert (=> b!6870250 m!7601638))

(assert (=> b!6869007 d!2158492))

(declare-fun d!2158494 () Bool)

(assert (=> d!2158494 (= (head!13781 (exprs!6581 (h!72715 zl!343))) (h!72714 (exprs!6581 (h!72715 zl!343))))))

(assert (=> b!6868994 d!2158494))

(declare-fun d!2158496 () Bool)

(assert (=> d!2158496 (= (isConcat!1540 lt!2458183) ((_ is Concat!25542) lt!2458183))))

(assert (=> b!6869026 d!2158496))

(declare-fun d!2158498 () Bool)

(declare-fun res!2802210 () Bool)

(declare-fun e!4141480 () Bool)

(assert (=> d!2158498 (=> res!2802210 e!4141480)))

(assert (=> d!2158498 (= res!2802210 ((_ is Nil!66266) (t!380133 (exprs!6581 setElem!47225))))))

(assert (=> d!2158498 (= (forall!15890 (t!380133 (exprs!6581 setElem!47225)) lambda!388616) e!4141480)))

(declare-fun b!6870251 () Bool)

(declare-fun e!4141481 () Bool)

(assert (=> b!6870251 (= e!4141480 e!4141481)))

(declare-fun res!2802211 () Bool)

(assert (=> b!6870251 (=> (not res!2802211) (not e!4141481))))

(assert (=> b!6870251 (= res!2802211 (dynLambda!26529 lambda!388616 (h!72714 (t!380133 (exprs!6581 setElem!47225)))))))

(declare-fun b!6870252 () Bool)

(assert (=> b!6870252 (= e!4141481 (forall!15890 (t!380133 (t!380133 (exprs!6581 setElem!47225))) lambda!388616))))

(assert (= (and d!2158498 (not res!2802210)) b!6870251))

(assert (= (and b!6870251 res!2802211) b!6870252))

(declare-fun b_lambda!259975 () Bool)

(assert (=> (not b_lambda!259975) (not b!6870251)))

(declare-fun m!7601652 () Bool)

(assert (=> b!6870251 m!7601652))

(declare-fun m!7601654 () Bool)

(assert (=> b!6870252 m!7601654))

(assert (=> b!6869063 d!2158498))

(declare-fun d!2158502 () Bool)

(assert (=> d!2158502 (= (nullable!6658 (reg!17026 (ite c!1278252 (regTwo!33907 lt!2458034) (regTwo!33906 lt!2458034)))) (nullableFct!2532 (reg!17026 (ite c!1278252 (regTwo!33907 lt!2458034) (regTwo!33906 lt!2458034)))))))

(declare-fun bs!1837158 () Bool)

(assert (= bs!1837158 d!2158502))

(declare-fun m!7601660 () Bool)

(assert (=> bs!1837158 m!7601660))

(assert (=> b!6868954 d!2158502))

(assert (=> d!2157838 d!2157502))

(assert (=> d!2157838 d!2157476))

(declare-fun d!2158506 () Bool)

(assert (=> d!2158506 (= (isEmpty!38628 (t!380133 (unfocusZipperList!2114 lt!2458043))) ((_ is Nil!66266) (t!380133 (unfocusZipperList!2114 lt!2458043))))))

(assert (=> b!6868937 d!2158506))

(declare-fun b!6870264 () Bool)

(declare-fun e!4141491 () Bool)

(declare-fun call!625884 () Bool)

(assert (=> b!6870264 (= e!4141491 call!625884)))

(declare-fun bm!625878 () Bool)

(declare-fun call!625883 () Bool)

(declare-fun c!1278783 () Bool)

(declare-fun c!1278782 () Bool)

(assert (=> bm!625878 (= call!625883 (validRegex!8433 (ite c!1278782 (reg!17026 (ite c!1278456 (regTwo!33907 (ite c!1278249 (reg!17026 r!7292) (ite c!1278250 (regOne!33907 r!7292) (regOne!33906 r!7292)))) (regTwo!33906 (ite c!1278249 (reg!17026 r!7292) (ite c!1278250 (regOne!33907 r!7292) (regOne!33906 r!7292)))))) (ite c!1278783 (regOne!33907 (ite c!1278456 (regTwo!33907 (ite c!1278249 (reg!17026 r!7292) (ite c!1278250 (regOne!33907 r!7292) (regOne!33906 r!7292)))) (regTwo!33906 (ite c!1278249 (reg!17026 r!7292) (ite c!1278250 (regOne!33907 r!7292) (regOne!33906 r!7292)))))) (regOne!33906 (ite c!1278456 (regTwo!33907 (ite c!1278249 (reg!17026 r!7292) (ite c!1278250 (regOne!33907 r!7292) (regOne!33906 r!7292)))) (regTwo!33906 (ite c!1278249 (reg!17026 r!7292) (ite c!1278250 (regOne!33907 r!7292) (regOne!33906 r!7292))))))))))))

(declare-fun bm!625879 () Bool)

(declare-fun call!625885 () Bool)

(assert (=> bm!625879 (= call!625885 call!625883)))

(declare-fun b!6870265 () Bool)

(declare-fun e!4141493 () Bool)

(assert (=> b!6870265 (= e!4141493 call!625883)))

(declare-fun bm!625880 () Bool)

(assert (=> bm!625880 (= call!625884 (validRegex!8433 (ite c!1278783 (regTwo!33907 (ite c!1278456 (regTwo!33907 (ite c!1278249 (reg!17026 r!7292) (ite c!1278250 (regOne!33907 r!7292) (regOne!33906 r!7292)))) (regTwo!33906 (ite c!1278249 (reg!17026 r!7292) (ite c!1278250 (regOne!33907 r!7292) (regOne!33906 r!7292)))))) (regTwo!33906 (ite c!1278456 (regTwo!33907 (ite c!1278249 (reg!17026 r!7292) (ite c!1278250 (regOne!33907 r!7292) (regOne!33906 r!7292)))) (regTwo!33906 (ite c!1278249 (reg!17026 r!7292) (ite c!1278250 (regOne!33907 r!7292) (regOne!33906 r!7292)))))))))))

(declare-fun b!6870266 () Bool)

(declare-fun e!4141497 () Bool)

(assert (=> b!6870266 (= e!4141497 e!4141491)))

(declare-fun res!2802221 () Bool)

(assert (=> b!6870266 (=> (not res!2802221) (not e!4141491))))

(assert (=> b!6870266 (= res!2802221 call!625885)))

(declare-fun d!2158508 () Bool)

(declare-fun res!2802220 () Bool)

(declare-fun e!4141495 () Bool)

(assert (=> d!2158508 (=> res!2802220 e!4141495)))

(assert (=> d!2158508 (= res!2802220 ((_ is ElementMatch!16697) (ite c!1278456 (regTwo!33907 (ite c!1278249 (reg!17026 r!7292) (ite c!1278250 (regOne!33907 r!7292) (regOne!33906 r!7292)))) (regTwo!33906 (ite c!1278249 (reg!17026 r!7292) (ite c!1278250 (regOne!33907 r!7292) (regOne!33906 r!7292)))))))))

(assert (=> d!2158508 (= (validRegex!8433 (ite c!1278456 (regTwo!33907 (ite c!1278249 (reg!17026 r!7292) (ite c!1278250 (regOne!33907 r!7292) (regOne!33906 r!7292)))) (regTwo!33906 (ite c!1278249 (reg!17026 r!7292) (ite c!1278250 (regOne!33907 r!7292) (regOne!33906 r!7292)))))) e!4141495)))

(declare-fun b!6870267 () Bool)

(declare-fun res!2802219 () Bool)

(declare-fun e!4141494 () Bool)

(assert (=> b!6870267 (=> (not res!2802219) (not e!4141494))))

(assert (=> b!6870267 (= res!2802219 call!625885)))

(declare-fun e!4141496 () Bool)

(assert (=> b!6870267 (= e!4141496 e!4141494)))

(declare-fun b!6870268 () Bool)

(assert (=> b!6870268 (= e!4141494 call!625884)))

(declare-fun b!6870269 () Bool)

(declare-fun res!2802222 () Bool)

(assert (=> b!6870269 (=> res!2802222 e!4141497)))

(assert (=> b!6870269 (= res!2802222 (not ((_ is Concat!25542) (ite c!1278456 (regTwo!33907 (ite c!1278249 (reg!17026 r!7292) (ite c!1278250 (regOne!33907 r!7292) (regOne!33906 r!7292)))) (regTwo!33906 (ite c!1278249 (reg!17026 r!7292) (ite c!1278250 (regOne!33907 r!7292) (regOne!33906 r!7292))))))))))

(assert (=> b!6870269 (= e!4141496 e!4141497)))

(declare-fun b!6870270 () Bool)

(declare-fun e!4141492 () Bool)

(assert (=> b!6870270 (= e!4141492 e!4141496)))

(assert (=> b!6870270 (= c!1278783 ((_ is Union!16697) (ite c!1278456 (regTwo!33907 (ite c!1278249 (reg!17026 r!7292) (ite c!1278250 (regOne!33907 r!7292) (regOne!33906 r!7292)))) (regTwo!33906 (ite c!1278249 (reg!17026 r!7292) (ite c!1278250 (regOne!33907 r!7292) (regOne!33906 r!7292)))))))))

(declare-fun b!6870271 () Bool)

(assert (=> b!6870271 (= e!4141495 e!4141492)))

(assert (=> b!6870271 (= c!1278782 ((_ is Star!16697) (ite c!1278456 (regTwo!33907 (ite c!1278249 (reg!17026 r!7292) (ite c!1278250 (regOne!33907 r!7292) (regOne!33906 r!7292)))) (regTwo!33906 (ite c!1278249 (reg!17026 r!7292) (ite c!1278250 (regOne!33907 r!7292) (regOne!33906 r!7292)))))))))

(declare-fun b!6870272 () Bool)

(assert (=> b!6870272 (= e!4141492 e!4141493)))

(declare-fun res!2802223 () Bool)

(assert (=> b!6870272 (= res!2802223 (not (nullable!6658 (reg!17026 (ite c!1278456 (regTwo!33907 (ite c!1278249 (reg!17026 r!7292) (ite c!1278250 (regOne!33907 r!7292) (regOne!33906 r!7292)))) (regTwo!33906 (ite c!1278249 (reg!17026 r!7292) (ite c!1278250 (regOne!33907 r!7292) (regOne!33906 r!7292)))))))))))

(assert (=> b!6870272 (=> (not res!2802223) (not e!4141493))))

(assert (= (and d!2158508 (not res!2802220)) b!6870271))

(assert (= (and b!6870271 c!1278782) b!6870272))

(assert (= (and b!6870271 (not c!1278782)) b!6870270))

(assert (= (and b!6870272 res!2802223) b!6870265))

(assert (= (and b!6870270 c!1278783) b!6870267))

(assert (= (and b!6870270 (not c!1278783)) b!6870269))

(assert (= (and b!6870267 res!2802219) b!6870268))

(assert (= (and b!6870269 (not res!2802222)) b!6870266))

(assert (= (and b!6870266 res!2802221) b!6870264))

(assert (= (or b!6870268 b!6870264) bm!625880))

(assert (= (or b!6870267 b!6870266) bm!625879))

(assert (= (or b!6870265 bm!625879) bm!625878))

(declare-fun m!7601668 () Bool)

(assert (=> bm!625878 m!7601668))

(declare-fun m!7601670 () Bool)

(assert (=> bm!625880 m!7601670))

(declare-fun m!7601672 () Bool)

(assert (=> b!6870272 m!7601672))

(assert (=> bm!625637 d!2158508))

(declare-fun b!6870273 () Bool)

(declare-fun e!4141498 () Bool)

(declare-fun call!625887 () Bool)

(assert (=> b!6870273 (= e!4141498 call!625887)))

(declare-fun c!1278785 () Bool)

(declare-fun bm!625881 () Bool)

(declare-fun call!625886 () Bool)

(declare-fun c!1278784 () Bool)

(assert (=> bm!625881 (= call!625886 (validRegex!8433 (ite c!1278784 (reg!17026 (ite c!1278478 (regTwo!33907 (ite c!1278251 (reg!17026 lt!2458034) (ite c!1278252 (regOne!33907 lt!2458034) (regOne!33906 lt!2458034)))) (regTwo!33906 (ite c!1278251 (reg!17026 lt!2458034) (ite c!1278252 (regOne!33907 lt!2458034) (regOne!33906 lt!2458034)))))) (ite c!1278785 (regOne!33907 (ite c!1278478 (regTwo!33907 (ite c!1278251 (reg!17026 lt!2458034) (ite c!1278252 (regOne!33907 lt!2458034) (regOne!33906 lt!2458034)))) (regTwo!33906 (ite c!1278251 (reg!17026 lt!2458034) (ite c!1278252 (regOne!33907 lt!2458034) (regOne!33906 lt!2458034)))))) (regOne!33906 (ite c!1278478 (regTwo!33907 (ite c!1278251 (reg!17026 lt!2458034) (ite c!1278252 (regOne!33907 lt!2458034) (regOne!33906 lt!2458034)))) (regTwo!33906 (ite c!1278251 (reg!17026 lt!2458034) (ite c!1278252 (regOne!33907 lt!2458034) (regOne!33906 lt!2458034))))))))))))

(declare-fun bm!625882 () Bool)

(declare-fun call!625888 () Bool)

(assert (=> bm!625882 (= call!625888 call!625886)))

(declare-fun b!6870274 () Bool)

(declare-fun e!4141500 () Bool)

(assert (=> b!6870274 (= e!4141500 call!625886)))

(declare-fun bm!625883 () Bool)

(assert (=> bm!625883 (= call!625887 (validRegex!8433 (ite c!1278785 (regTwo!33907 (ite c!1278478 (regTwo!33907 (ite c!1278251 (reg!17026 lt!2458034) (ite c!1278252 (regOne!33907 lt!2458034) (regOne!33906 lt!2458034)))) (regTwo!33906 (ite c!1278251 (reg!17026 lt!2458034) (ite c!1278252 (regOne!33907 lt!2458034) (regOne!33906 lt!2458034)))))) (regTwo!33906 (ite c!1278478 (regTwo!33907 (ite c!1278251 (reg!17026 lt!2458034) (ite c!1278252 (regOne!33907 lt!2458034) (regOne!33906 lt!2458034)))) (regTwo!33906 (ite c!1278251 (reg!17026 lt!2458034) (ite c!1278252 (regOne!33907 lt!2458034) (regOne!33906 lt!2458034)))))))))))

(declare-fun b!6870275 () Bool)

(declare-fun e!4141504 () Bool)

(assert (=> b!6870275 (= e!4141504 e!4141498)))

(declare-fun res!2802226 () Bool)

(assert (=> b!6870275 (=> (not res!2802226) (not e!4141498))))

(assert (=> b!6870275 (= res!2802226 call!625888)))

(declare-fun d!2158512 () Bool)

(declare-fun res!2802225 () Bool)

(declare-fun e!4141502 () Bool)

(assert (=> d!2158512 (=> res!2802225 e!4141502)))

(assert (=> d!2158512 (= res!2802225 ((_ is ElementMatch!16697) (ite c!1278478 (regTwo!33907 (ite c!1278251 (reg!17026 lt!2458034) (ite c!1278252 (regOne!33907 lt!2458034) (regOne!33906 lt!2458034)))) (regTwo!33906 (ite c!1278251 (reg!17026 lt!2458034) (ite c!1278252 (regOne!33907 lt!2458034) (regOne!33906 lt!2458034)))))))))

(assert (=> d!2158512 (= (validRegex!8433 (ite c!1278478 (regTwo!33907 (ite c!1278251 (reg!17026 lt!2458034) (ite c!1278252 (regOne!33907 lt!2458034) (regOne!33906 lt!2458034)))) (regTwo!33906 (ite c!1278251 (reg!17026 lt!2458034) (ite c!1278252 (regOne!33907 lt!2458034) (regOne!33906 lt!2458034)))))) e!4141502)))

(declare-fun b!6870276 () Bool)

(declare-fun res!2802224 () Bool)

(declare-fun e!4141501 () Bool)

(assert (=> b!6870276 (=> (not res!2802224) (not e!4141501))))

(assert (=> b!6870276 (= res!2802224 call!625888)))

(declare-fun e!4141503 () Bool)

(assert (=> b!6870276 (= e!4141503 e!4141501)))

(declare-fun b!6870277 () Bool)

(assert (=> b!6870277 (= e!4141501 call!625887)))

(declare-fun b!6870278 () Bool)

(declare-fun res!2802227 () Bool)

(assert (=> b!6870278 (=> res!2802227 e!4141504)))

(assert (=> b!6870278 (= res!2802227 (not ((_ is Concat!25542) (ite c!1278478 (regTwo!33907 (ite c!1278251 (reg!17026 lt!2458034) (ite c!1278252 (regOne!33907 lt!2458034) (regOne!33906 lt!2458034)))) (regTwo!33906 (ite c!1278251 (reg!17026 lt!2458034) (ite c!1278252 (regOne!33907 lt!2458034) (regOne!33906 lt!2458034))))))))))

(assert (=> b!6870278 (= e!4141503 e!4141504)))

(declare-fun b!6870279 () Bool)

(declare-fun e!4141499 () Bool)

(assert (=> b!6870279 (= e!4141499 e!4141503)))

(assert (=> b!6870279 (= c!1278785 ((_ is Union!16697) (ite c!1278478 (regTwo!33907 (ite c!1278251 (reg!17026 lt!2458034) (ite c!1278252 (regOne!33907 lt!2458034) (regOne!33906 lt!2458034)))) (regTwo!33906 (ite c!1278251 (reg!17026 lt!2458034) (ite c!1278252 (regOne!33907 lt!2458034) (regOne!33906 lt!2458034)))))))))

(declare-fun b!6870280 () Bool)

(assert (=> b!6870280 (= e!4141502 e!4141499)))

(assert (=> b!6870280 (= c!1278784 ((_ is Star!16697) (ite c!1278478 (regTwo!33907 (ite c!1278251 (reg!17026 lt!2458034) (ite c!1278252 (regOne!33907 lt!2458034) (regOne!33906 lt!2458034)))) (regTwo!33906 (ite c!1278251 (reg!17026 lt!2458034) (ite c!1278252 (regOne!33907 lt!2458034) (regOne!33906 lt!2458034)))))))))

(declare-fun b!6870281 () Bool)

(assert (=> b!6870281 (= e!4141499 e!4141500)))

(declare-fun res!2802228 () Bool)

(assert (=> b!6870281 (= res!2802228 (not (nullable!6658 (reg!17026 (ite c!1278478 (regTwo!33907 (ite c!1278251 (reg!17026 lt!2458034) (ite c!1278252 (regOne!33907 lt!2458034) (regOne!33906 lt!2458034)))) (regTwo!33906 (ite c!1278251 (reg!17026 lt!2458034) (ite c!1278252 (regOne!33907 lt!2458034) (regOne!33906 lt!2458034)))))))))))

(assert (=> b!6870281 (=> (not res!2802228) (not e!4141500))))

(assert (= (and d!2158512 (not res!2802225)) b!6870280))

(assert (= (and b!6870280 c!1278784) b!6870281))

(assert (= (and b!6870280 (not c!1278784)) b!6870279))

(assert (= (and b!6870281 res!2802228) b!6870274))

(assert (= (and b!6870279 c!1278785) b!6870276))

(assert (= (and b!6870279 (not c!1278785)) b!6870278))

(assert (= (and b!6870276 res!2802224) b!6870277))

(assert (= (and b!6870278 (not res!2802227)) b!6870275))

(assert (= (and b!6870275 res!2802226) b!6870273))

(assert (= (or b!6870277 b!6870273) bm!625883))

(assert (= (or b!6870276 b!6870275) bm!625882))

(assert (= (or b!6870274 bm!625882) bm!625881))

(declare-fun m!7601676 () Bool)

(assert (=> bm!625881 m!7601676))

(declare-fun m!7601678 () Bool)

(assert (=> bm!625883 m!7601678))

(declare-fun m!7601680 () Bool)

(assert (=> b!6870281 m!7601680))

(assert (=> bm!625643 d!2158512))

(declare-fun b!6870284 () Bool)

(declare-fun e!4141506 () Bool)

(declare-fun call!625890 () Bool)

(assert (=> b!6870284 (= e!4141506 call!625890)))

(declare-fun call!625889 () Bool)

(declare-fun bm!625884 () Bool)

(declare-fun c!1278787 () Bool)

(declare-fun c!1278788 () Bool)

(assert (=> bm!625884 (= call!625889 (validRegex!8433 (ite c!1278787 (reg!17026 (ite c!1278397 (reg!17026 lt!2458112) (ite c!1278398 (regOne!33907 lt!2458112) (regOne!33906 lt!2458112)))) (ite c!1278788 (regOne!33907 (ite c!1278397 (reg!17026 lt!2458112) (ite c!1278398 (regOne!33907 lt!2458112) (regOne!33906 lt!2458112)))) (regOne!33906 (ite c!1278397 (reg!17026 lt!2458112) (ite c!1278398 (regOne!33907 lt!2458112) (regOne!33906 lt!2458112))))))))))

(declare-fun bm!625885 () Bool)

(declare-fun call!625891 () Bool)

(assert (=> bm!625885 (= call!625891 call!625889)))

(declare-fun b!6870285 () Bool)

(declare-fun e!4141508 () Bool)

(assert (=> b!6870285 (= e!4141508 call!625889)))

(declare-fun bm!625886 () Bool)

(assert (=> bm!625886 (= call!625890 (validRegex!8433 (ite c!1278788 (regTwo!33907 (ite c!1278397 (reg!17026 lt!2458112) (ite c!1278398 (regOne!33907 lt!2458112) (regOne!33906 lt!2458112)))) (regTwo!33906 (ite c!1278397 (reg!17026 lt!2458112) (ite c!1278398 (regOne!33907 lt!2458112) (regOne!33906 lt!2458112)))))))))

(declare-fun b!6870286 () Bool)

(declare-fun e!4141512 () Bool)

(assert (=> b!6870286 (= e!4141512 e!4141506)))

(declare-fun res!2802231 () Bool)

(assert (=> b!6870286 (=> (not res!2802231) (not e!4141506))))

(assert (=> b!6870286 (= res!2802231 call!625891)))

(declare-fun d!2158516 () Bool)

(declare-fun res!2802230 () Bool)

(declare-fun e!4141510 () Bool)

(assert (=> d!2158516 (=> res!2802230 e!4141510)))

(assert (=> d!2158516 (= res!2802230 ((_ is ElementMatch!16697) (ite c!1278397 (reg!17026 lt!2458112) (ite c!1278398 (regOne!33907 lt!2458112) (regOne!33906 lt!2458112)))))))

(assert (=> d!2158516 (= (validRegex!8433 (ite c!1278397 (reg!17026 lt!2458112) (ite c!1278398 (regOne!33907 lt!2458112) (regOne!33906 lt!2458112)))) e!4141510)))

(declare-fun b!6870287 () Bool)

(declare-fun res!2802229 () Bool)

(declare-fun e!4141509 () Bool)

(assert (=> b!6870287 (=> (not res!2802229) (not e!4141509))))

(assert (=> b!6870287 (= res!2802229 call!625891)))

(declare-fun e!4141511 () Bool)

(assert (=> b!6870287 (= e!4141511 e!4141509)))

(declare-fun b!6870288 () Bool)

(assert (=> b!6870288 (= e!4141509 call!625890)))

(declare-fun b!6870289 () Bool)

(declare-fun res!2802232 () Bool)

(assert (=> b!6870289 (=> res!2802232 e!4141512)))

(assert (=> b!6870289 (= res!2802232 (not ((_ is Concat!25542) (ite c!1278397 (reg!17026 lt!2458112) (ite c!1278398 (regOne!33907 lt!2458112) (regOne!33906 lt!2458112))))))))

(assert (=> b!6870289 (= e!4141511 e!4141512)))

(declare-fun b!6870290 () Bool)

(declare-fun e!4141507 () Bool)

(assert (=> b!6870290 (= e!4141507 e!4141511)))

(assert (=> b!6870290 (= c!1278788 ((_ is Union!16697) (ite c!1278397 (reg!17026 lt!2458112) (ite c!1278398 (regOne!33907 lt!2458112) (regOne!33906 lt!2458112)))))))

(declare-fun b!6870291 () Bool)

(assert (=> b!6870291 (= e!4141510 e!4141507)))

(assert (=> b!6870291 (= c!1278787 ((_ is Star!16697) (ite c!1278397 (reg!17026 lt!2458112) (ite c!1278398 (regOne!33907 lt!2458112) (regOne!33906 lt!2458112)))))))

(declare-fun b!6870292 () Bool)

(assert (=> b!6870292 (= e!4141507 e!4141508)))

(declare-fun res!2802233 () Bool)

(assert (=> b!6870292 (= res!2802233 (not (nullable!6658 (reg!17026 (ite c!1278397 (reg!17026 lt!2458112) (ite c!1278398 (regOne!33907 lt!2458112) (regOne!33906 lt!2458112)))))))))

(assert (=> b!6870292 (=> (not res!2802233) (not e!4141508))))

(assert (= (and d!2158516 (not res!2802230)) b!6870291))

(assert (= (and b!6870291 c!1278787) b!6870292))

(assert (= (and b!6870291 (not c!1278787)) b!6870290))

(assert (= (and b!6870292 res!2802233) b!6870285))

(assert (= (and b!6870290 c!1278788) b!6870287))

(assert (= (and b!6870290 (not c!1278788)) b!6870289))

(assert (= (and b!6870287 res!2802229) b!6870288))

(assert (= (and b!6870289 (not res!2802232)) b!6870286))

(assert (= (and b!6870286 res!2802231) b!6870284))

(assert (= (or b!6870288 b!6870284) bm!625886))

(assert (= (or b!6870287 b!6870286) bm!625885))

(assert (= (or b!6870285 bm!625885) bm!625884))

(declare-fun m!7601690 () Bool)

(assert (=> bm!625884 m!7601690))

(declare-fun m!7601694 () Bool)

(assert (=> bm!625886 m!7601694))

(declare-fun m!7601698 () Bool)

(assert (=> b!6870292 m!7601698))

(assert (=> bm!625608 d!2158516))

(declare-fun d!2158524 () Bool)

(assert (=> d!2158524 (= (isEmpty!38628 (unfocusZipperList!2114 lt!2458043)) ((_ is Nil!66266) (unfocusZipperList!2114 lt!2458043)))))

(assert (=> b!6868938 d!2158524))

(assert (=> d!2157844 d!2157824))

(declare-fun d!2158526 () Bool)

(declare-fun res!2802238 () Bool)

(declare-fun e!4141518 () Bool)

(assert (=> d!2158526 (=> res!2802238 e!4141518)))

(assert (=> d!2158526 (= res!2802238 ((_ is Nil!66266) (t!380133 lt!2458035)))))

(assert (=> d!2158526 (= (forall!15890 (t!380133 lt!2458035) lambda!388631) e!4141518)))

(declare-fun b!6870299 () Bool)

(declare-fun e!4141519 () Bool)

(assert (=> b!6870299 (= e!4141518 e!4141519)))

(declare-fun res!2802239 () Bool)

(assert (=> b!6870299 (=> (not res!2802239) (not e!4141519))))

(assert (=> b!6870299 (= res!2802239 (dynLambda!26529 lambda!388631 (h!72714 (t!380133 lt!2458035))))))

(declare-fun b!6870300 () Bool)

(assert (=> b!6870300 (= e!4141519 (forall!15890 (t!380133 (t!380133 lt!2458035)) lambda!388631))))

(assert (= (and d!2158526 (not res!2802238)) b!6870299))

(assert (= (and b!6870299 res!2802239) b!6870300))

(declare-fun b_lambda!259981 () Bool)

(assert (=> (not b_lambda!259981) (not b!6870299)))

(declare-fun m!7601704 () Bool)

(assert (=> b!6870299 m!7601704))

(declare-fun m!7601706 () Bool)

(assert (=> b!6870300 m!7601706))

(assert (=> b!6868945 d!2158526))

(declare-fun d!2158532 () Bool)

(assert (=> d!2158532 (= (isEmptyLang!2026 lt!2458167) ((_ is EmptyLang!16697) lt!2458167))))

(assert (=> b!6868838 d!2158532))

(declare-fun bs!1837171 () Bool)

(declare-fun d!2158534 () Bool)

(assert (= bs!1837171 (and d!2158534 d!2157550)))

(declare-fun lambda!388762 () Int)

(assert (=> bs!1837171 (= lambda!388762 lambda!388619)))

(declare-fun bs!1837172 () Bool)

(assert (= bs!1837172 (and d!2158534 d!2157808)))

(assert (=> bs!1837172 (= lambda!388762 lambda!388680)))

(declare-fun bs!1837173 () Bool)

(assert (= bs!1837173 (and d!2158534 b!6867793)))

(assert (=> bs!1837173 (= lambda!388762 lambda!388573)))

(declare-fun bs!1837174 () Bool)

(assert (= bs!1837174 (and d!2158534 d!2157902)))

(assert (=> bs!1837174 (not (= lambda!388762 lambda!388700))))

(declare-fun bs!1837175 () Bool)

(assert (= bs!1837175 (and d!2158534 d!2158018)))

(assert (=> bs!1837175 (= lambda!388762 lambda!388714)))

(declare-fun bs!1837176 () Bool)

(assert (= bs!1837176 (and d!2158534 d!2158016)))

(assert (=> bs!1837176 (= lambda!388762 lambda!388712)))

(declare-fun bs!1837177 () Bool)

(assert (= bs!1837177 (and d!2158534 d!2158130)))

(assert (=> bs!1837177 (= lambda!388762 lambda!388725)))

(declare-fun bs!1837178 () Bool)

(assert (= bs!1837178 (and d!2158534 d!2157904)))

(assert (=> bs!1837178 (not (= lambda!388762 lambda!388703))))

(declare-fun bs!1837179 () Bool)

(assert (= bs!1837179 (and d!2158534 d!2158076)))

(assert (=> bs!1837179 (= lambda!388762 lambda!388720)))

(declare-fun bs!1837180 () Bool)

(assert (= bs!1837180 (and d!2158534 d!2157890)))

(assert (=> bs!1837180 (= lambda!388762 lambda!388697)))

(declare-fun bs!1837181 () Bool)

(assert (= bs!1837181 (and d!2158534 d!2158188)))

(assert (=> bs!1837181 (= lambda!388762 lambda!388730)))

(declare-fun bs!1837182 () Bool)

(assert (= bs!1837182 (and d!2158534 d!2157564)))

(assert (=> bs!1837182 (= lambda!388762 lambda!388628)))

(declare-fun bs!1837183 () Bool)

(assert (= bs!1837183 (and d!2158534 b!6867798)))

(assert (=> bs!1837183 (not (= lambda!388762 lambda!388571))))

(declare-fun bs!1837184 () Bool)

(assert (= bs!1837184 (and d!2158534 d!2157836)))

(assert (=> bs!1837184 (= lambda!388762 lambda!388688)))

(declare-fun bs!1837185 () Bool)

(assert (= bs!1837185 (and d!2158534 d!2157580)))

(assert (=> bs!1837185 (= lambda!388762 lambda!388640)))

(declare-fun bs!1837186 () Bool)

(assert (= bs!1837186 (and d!2158534 d!2157772)))

(assert (=> bs!1837186 (= lambda!388762 lambda!388675)))

(declare-fun bs!1837187 () Bool)

(assert (= bs!1837187 (and d!2158534 d!2157578)))

(assert (=> bs!1837187 (= lambda!388762 lambda!388636)))

(declare-fun bs!1837188 () Bool)

(assert (= bs!1837188 (and d!2158534 d!2157806)))

(assert (=> bs!1837188 (= lambda!388762 lambda!388679)))

(declare-fun bs!1837189 () Bool)

(assert (= bs!1837189 (and d!2158534 d!2158012)))

(assert (=> bs!1837189 (= lambda!388762 lambda!388710)))

(assert (=> bs!1837187 (not (= lambda!388762 lambda!388637))))

(declare-fun bs!1837190 () Bool)

(assert (= bs!1837190 (and d!2158534 d!2158042)))

(assert (=> bs!1837190 (= lambda!388762 lambda!388716)))

(declare-fun bs!1837191 () Bool)

(assert (= bs!1837191 (and d!2158534 d!2158128)))

(assert (=> bs!1837191 (= lambda!388762 lambda!388723)))

(declare-fun bs!1837192 () Bool)

(assert (= bs!1837192 (and d!2158534 d!2157854)))

(assert (=> bs!1837192 (= lambda!388762 lambda!388689)))

(declare-fun bs!1837193 () Bool)

(assert (= bs!1837193 (and d!2158534 d!2158372)))

(assert (=> bs!1837193 (= lambda!388762 lambda!388753)))

(declare-fun bs!1837194 () Bool)

(assert (= bs!1837194 (and d!2158534 d!2157534)))

(assert (=> bs!1837194 (= lambda!388762 lambda!388616)))

(declare-fun bs!1837195 () Bool)

(assert (= bs!1837195 (and d!2158534 d!2157866)))

(assert (=> bs!1837195 (= lambda!388762 lambda!388693)))

(declare-fun bs!1837196 () Bool)

(assert (= bs!1837196 (and d!2158534 d!2158330)))

(assert (=> bs!1837196 (= lambda!388762 lambda!388749)))

(declare-fun bs!1837197 () Bool)

(assert (= bs!1837197 (and d!2158534 d!2157582)))

(assert (=> bs!1837197 (= lambda!388762 lambda!388641)))

(declare-fun bs!1837198 () Bool)

(assert (= bs!1837198 (and d!2158534 d!2157834)))

(assert (=> bs!1837198 (= lambda!388762 lambda!388687)))

(declare-fun bs!1837199 () Bool)

(assert (= bs!1837199 (and d!2158534 d!2157576)))

(assert (=> bs!1837199 (not (= lambda!388762 lambda!388631))))

(declare-fun bs!1837200 () Bool)

(assert (= bs!1837200 (and d!2158534 d!2158258)))

(assert (=> bs!1837200 (= lambda!388762 lambda!388740)))

(declare-fun bs!1837201 () Bool)

(assert (= bs!1837201 (and d!2158534 d!2157872)))

(assert (=> bs!1837201 (= lambda!388762 lambda!388696)))

(declare-fun e!4141527 () Bool)

(assert (=> d!2158534 e!4141527))

(declare-fun res!2802242 () Bool)

(assert (=> d!2158534 (=> (not res!2802242) (not e!4141527))))

(declare-fun lt!2458254 () Regex!16697)

(assert (=> d!2158534 (= res!2802242 (validRegex!8433 lt!2458254))))

(declare-fun e!4141526 () Regex!16697)

(assert (=> d!2158534 (= lt!2458254 e!4141526)))

(declare-fun c!1278792 () Bool)

(declare-fun e!4141524 () Bool)

(assert (=> d!2158534 (= c!1278792 e!4141524)))

(declare-fun res!2802243 () Bool)

(assert (=> d!2158534 (=> (not res!2802243) (not e!4141524))))

(assert (=> d!2158534 (= res!2802243 ((_ is Cons!66266) (t!380133 (t!380133 (exprs!6581 lt!2458040)))))))

(assert (=> d!2158534 (forall!15890 (t!380133 (t!380133 (exprs!6581 lt!2458040))) lambda!388762)))

(assert (=> d!2158534 (= (generalisedConcat!2285 (t!380133 (t!380133 (exprs!6581 lt!2458040)))) lt!2458254)))

(declare-fun b!6870303 () Bool)

(assert (=> b!6870303 (= e!4141524 (isEmpty!38628 (t!380133 (t!380133 (t!380133 (exprs!6581 lt!2458040))))))))

(declare-fun b!6870304 () Bool)

(declare-fun e!4141523 () Regex!16697)

(assert (=> b!6870304 (= e!4141526 e!4141523)))

(declare-fun c!1278790 () Bool)

(assert (=> b!6870304 (= c!1278790 ((_ is Cons!66266) (t!380133 (t!380133 (exprs!6581 lt!2458040)))))))

(declare-fun b!6870305 () Bool)

(declare-fun e!4141522 () Bool)

(assert (=> b!6870305 (= e!4141527 e!4141522)))

(declare-fun c!1278793 () Bool)

(assert (=> b!6870305 (= c!1278793 (isEmpty!38628 (t!380133 (t!380133 (exprs!6581 lt!2458040)))))))

(declare-fun b!6870306 () Bool)

(declare-fun e!4141525 () Bool)

(assert (=> b!6870306 (= e!4141522 e!4141525)))

(declare-fun c!1278791 () Bool)

(assert (=> b!6870306 (= c!1278791 (isEmpty!38628 (tail!12836 (t!380133 (t!380133 (exprs!6581 lt!2458040))))))))

(declare-fun b!6870307 () Bool)

(assert (=> b!6870307 (= e!4141525 (isConcat!1540 lt!2458254))))

(declare-fun b!6870308 () Bool)

(assert (=> b!6870308 (= e!4141522 (isEmptyExpr!2017 lt!2458254))))

(declare-fun b!6870309 () Bool)

(assert (=> b!6870309 (= e!4141523 EmptyExpr!16697)))

(declare-fun b!6870310 () Bool)

(assert (=> b!6870310 (= e!4141526 (h!72714 (t!380133 (t!380133 (exprs!6581 lt!2458040)))))))

(declare-fun b!6870311 () Bool)

(assert (=> b!6870311 (= e!4141525 (= lt!2458254 (head!13781 (t!380133 (t!380133 (exprs!6581 lt!2458040))))))))

(declare-fun b!6870312 () Bool)

(assert (=> b!6870312 (= e!4141523 (Concat!25542 (h!72714 (t!380133 (t!380133 (exprs!6581 lt!2458040)))) (generalisedConcat!2285 (t!380133 (t!380133 (t!380133 (exprs!6581 lt!2458040)))))))))

(assert (= (and d!2158534 res!2802243) b!6870303))

(assert (= (and d!2158534 c!1278792) b!6870310))

(assert (= (and d!2158534 (not c!1278792)) b!6870304))

(assert (= (and b!6870304 c!1278790) b!6870312))

(assert (= (and b!6870304 (not c!1278790)) b!6870309))

(assert (= (and d!2158534 res!2802242) b!6870305))

(assert (= (and b!6870305 c!1278793) b!6870308))

(assert (= (and b!6870305 (not c!1278793)) b!6870306))

(assert (= (and b!6870306 c!1278791) b!6870311))

(assert (= (and b!6870306 (not c!1278791)) b!6870307))

(declare-fun m!7601728 () Bool)

(assert (=> b!6870307 m!7601728))

(declare-fun m!7601730 () Bool)

(assert (=> b!6870312 m!7601730))

(assert (=> b!6870305 m!7600378))

(declare-fun m!7601732 () Bool)

(assert (=> b!6870308 m!7601732))

(declare-fun m!7601734 () Bool)

(assert (=> b!6870303 m!7601734))

(declare-fun m!7601736 () Bool)

(assert (=> b!6870311 m!7601736))

(declare-fun m!7601738 () Bool)

(assert (=> d!2158534 m!7601738))

(declare-fun m!7601740 () Bool)

(assert (=> d!2158534 m!7601740))

(declare-fun m!7601742 () Bool)

(assert (=> b!6870306 m!7601742))

(assert (=> b!6870306 m!7601742))

(declare-fun m!7601744 () Bool)

(assert (=> b!6870306 m!7601744))

(assert (=> b!6869031 d!2158534))

(declare-fun b!6870346 () Bool)

(declare-fun e!4141548 () Bool)

(declare-fun call!625899 () Bool)

(assert (=> b!6870346 (= e!4141548 call!625899)))

(declare-fun c!1278798 () Bool)

(declare-fun c!1278799 () Bool)

(declare-fun call!625898 () Bool)

(declare-fun bm!625893 () Bool)

(assert (=> bm!625893 (= call!625898 (validRegex!8433 (ite c!1278798 (reg!17026 (ite c!1278438 (reg!17026 lt!2458097) (ite c!1278439 (regOne!33907 lt!2458097) (regOne!33906 lt!2458097)))) (ite c!1278799 (regOne!33907 (ite c!1278438 (reg!17026 lt!2458097) (ite c!1278439 (regOne!33907 lt!2458097) (regOne!33906 lt!2458097)))) (regOne!33906 (ite c!1278438 (reg!17026 lt!2458097) (ite c!1278439 (regOne!33907 lt!2458097) (regOne!33906 lt!2458097))))))))))

(declare-fun bm!625894 () Bool)

(declare-fun call!625900 () Bool)

(assert (=> bm!625894 (= call!625900 call!625898)))

(declare-fun b!6870347 () Bool)

(declare-fun e!4141550 () Bool)

(assert (=> b!6870347 (= e!4141550 call!625898)))

(declare-fun bm!625895 () Bool)

(assert (=> bm!625895 (= call!625899 (validRegex!8433 (ite c!1278799 (regTwo!33907 (ite c!1278438 (reg!17026 lt!2458097) (ite c!1278439 (regOne!33907 lt!2458097) (regOne!33906 lt!2458097)))) (regTwo!33906 (ite c!1278438 (reg!17026 lt!2458097) (ite c!1278439 (regOne!33907 lt!2458097) (regOne!33906 lt!2458097)))))))))

(declare-fun b!6870348 () Bool)

(declare-fun e!4141554 () Bool)

(assert (=> b!6870348 (= e!4141554 e!4141548)))

(declare-fun res!2802258 () Bool)

(assert (=> b!6870348 (=> (not res!2802258) (not e!4141548))))

(assert (=> b!6870348 (= res!2802258 call!625900)))

(declare-fun d!2158546 () Bool)

(declare-fun res!2802257 () Bool)

(declare-fun e!4141552 () Bool)

(assert (=> d!2158546 (=> res!2802257 e!4141552)))

(assert (=> d!2158546 (= res!2802257 ((_ is ElementMatch!16697) (ite c!1278438 (reg!17026 lt!2458097) (ite c!1278439 (regOne!33907 lt!2458097) (regOne!33906 lt!2458097)))))))

(assert (=> d!2158546 (= (validRegex!8433 (ite c!1278438 (reg!17026 lt!2458097) (ite c!1278439 (regOne!33907 lt!2458097) (regOne!33906 lt!2458097)))) e!4141552)))

(declare-fun b!6870349 () Bool)

(declare-fun res!2802256 () Bool)

(declare-fun e!4141551 () Bool)

(assert (=> b!6870349 (=> (not res!2802256) (not e!4141551))))

(assert (=> b!6870349 (= res!2802256 call!625900)))

(declare-fun e!4141553 () Bool)

(assert (=> b!6870349 (= e!4141553 e!4141551)))

(declare-fun b!6870350 () Bool)

(assert (=> b!6870350 (= e!4141551 call!625899)))

(declare-fun b!6870351 () Bool)

(declare-fun res!2802259 () Bool)

(assert (=> b!6870351 (=> res!2802259 e!4141554)))

(assert (=> b!6870351 (= res!2802259 (not ((_ is Concat!25542) (ite c!1278438 (reg!17026 lt!2458097) (ite c!1278439 (regOne!33907 lt!2458097) (regOne!33906 lt!2458097))))))))

(assert (=> b!6870351 (= e!4141553 e!4141554)))

(declare-fun b!6870352 () Bool)

(declare-fun e!4141549 () Bool)

(assert (=> b!6870352 (= e!4141549 e!4141553)))

(assert (=> b!6870352 (= c!1278799 ((_ is Union!16697) (ite c!1278438 (reg!17026 lt!2458097) (ite c!1278439 (regOne!33907 lt!2458097) (regOne!33906 lt!2458097)))))))

(declare-fun b!6870353 () Bool)

(assert (=> b!6870353 (= e!4141552 e!4141549)))

(assert (=> b!6870353 (= c!1278798 ((_ is Star!16697) (ite c!1278438 (reg!17026 lt!2458097) (ite c!1278439 (regOne!33907 lt!2458097) (regOne!33906 lt!2458097)))))))

(declare-fun b!6870354 () Bool)

(assert (=> b!6870354 (= e!4141549 e!4141550)))

(declare-fun res!2802260 () Bool)

(assert (=> b!6870354 (= res!2802260 (not (nullable!6658 (reg!17026 (ite c!1278438 (reg!17026 lt!2458097) (ite c!1278439 (regOne!33907 lt!2458097) (regOne!33906 lt!2458097)))))))))

(assert (=> b!6870354 (=> (not res!2802260) (not e!4141550))))

(assert (= (and d!2158546 (not res!2802257)) b!6870353))

(assert (= (and b!6870353 c!1278798) b!6870354))

(assert (= (and b!6870353 (not c!1278798)) b!6870352))

(assert (= (and b!6870354 res!2802260) b!6870347))

(assert (= (and b!6870352 c!1278799) b!6870349))

(assert (= (and b!6870352 (not c!1278799)) b!6870351))

(assert (= (and b!6870349 res!2802256) b!6870350))

(assert (= (and b!6870351 (not res!2802259)) b!6870348))

(assert (= (and b!6870348 res!2802258) b!6870346))

(assert (= (or b!6870350 b!6870346) bm!625895))

(assert (= (or b!6870349 b!6870348) bm!625894))

(assert (= (or b!6870347 bm!625894) bm!625893))

(declare-fun m!7601746 () Bool)

(assert (=> bm!625893 m!7601746))

(declare-fun m!7601748 () Bool)

(assert (=> bm!625895 m!7601748))

(declare-fun m!7601750 () Bool)

(assert (=> b!6870354 m!7601750))

(assert (=> bm!625627 d!2158546))

(assert (=> bm!625634 d!2157790))

(declare-fun d!2158548 () Bool)

(assert (=> d!2158548 (= (head!13780 (t!380134 zl!343)) (h!72715 (t!380134 zl!343)))))

(assert (=> b!6869009 d!2158548))

(declare-fun b!6870376 () Bool)

(declare-fun e!4141565 () Regex!16697)

(declare-fun e!4141562 () Regex!16697)

(assert (=> b!6870376 (= e!4141565 e!4141562)))

(declare-fun c!1278804 () Bool)

(assert (=> b!6870376 (= c!1278804 ((_ is Star!16697) (ite c!1278426 (regOne!33907 r!7292) (ite c!1278428 (reg!17026 r!7292) (regOne!33906 r!7292)))))))

(declare-fun b!6870377 () Bool)

(declare-fun call!625902 () Regex!16697)

(declare-fun call!625904 () Regex!16697)

(assert (=> b!6870377 (= e!4141565 (Union!16697 call!625902 call!625904))))

(declare-fun bm!625896 () Bool)

(declare-fun call!625901 () Regex!16697)

(assert (=> bm!625896 (= call!625901 call!625904)))

(declare-fun b!6870378 () Bool)

(declare-fun e!4141561 () Regex!16697)

(assert (=> b!6870378 (= e!4141561 (Union!16697 (Concat!25542 call!625901 (regTwo!33906 (ite c!1278426 (regOne!33907 r!7292) (ite c!1278428 (reg!17026 r!7292) (regOne!33906 r!7292))))) EmptyLang!16697))))

(declare-fun b!6870379 () Bool)

(declare-fun e!4141564 () Regex!16697)

(assert (=> b!6870379 (= e!4141564 EmptyLang!16697)))

(declare-fun c!1278802 () Bool)

(declare-fun bm!625897 () Bool)

(assert (=> bm!625897 (= call!625902 (derivativeStep!5340 (ite c!1278802 (regOne!33907 (ite c!1278426 (regOne!33907 r!7292) (ite c!1278428 (reg!17026 r!7292) (regOne!33906 r!7292)))) (ite c!1278804 (reg!17026 (ite c!1278426 (regOne!33907 r!7292) (ite c!1278428 (reg!17026 r!7292) (regOne!33906 r!7292)))) (regOne!33906 (ite c!1278426 (regOne!33907 r!7292) (ite c!1278428 (reg!17026 r!7292) (regOne!33906 r!7292)))))) (head!13779 s!2326)))))

(declare-fun call!625903 () Regex!16697)

(declare-fun b!6870380 () Bool)

(assert (=> b!6870380 (= e!4141561 (Union!16697 (Concat!25542 call!625903 (regTwo!33906 (ite c!1278426 (regOne!33907 r!7292) (ite c!1278428 (reg!17026 r!7292) (regOne!33906 r!7292))))) call!625901))))

(declare-fun bm!625898 () Bool)

(assert (=> bm!625898 (= call!625903 call!625902)))

(declare-fun c!1278801 () Bool)

(declare-fun bm!625899 () Bool)

(assert (=> bm!625899 (= call!625904 (derivativeStep!5340 (ite c!1278802 (regTwo!33907 (ite c!1278426 (regOne!33907 r!7292) (ite c!1278428 (reg!17026 r!7292) (regOne!33906 r!7292)))) (ite c!1278801 (regTwo!33906 (ite c!1278426 (regOne!33907 r!7292) (ite c!1278428 (reg!17026 r!7292) (regOne!33906 r!7292)))) (regOne!33906 (ite c!1278426 (regOne!33907 r!7292) (ite c!1278428 (reg!17026 r!7292) (regOne!33906 r!7292)))))) (head!13779 s!2326)))))

(declare-fun b!6870381 () Bool)

(assert (=> b!6870381 (= c!1278802 ((_ is Union!16697) (ite c!1278426 (regOne!33907 r!7292) (ite c!1278428 (reg!17026 r!7292) (regOne!33906 r!7292)))))))

(declare-fun e!4141563 () Regex!16697)

(assert (=> b!6870381 (= e!4141563 e!4141565)))

(declare-fun b!6870382 () Bool)

(assert (=> b!6870382 (= c!1278801 (nullable!6658 (regOne!33906 (ite c!1278426 (regOne!33907 r!7292) (ite c!1278428 (reg!17026 r!7292) (regOne!33906 r!7292))))))))

(assert (=> b!6870382 (= e!4141562 e!4141561)))

(declare-fun b!6870384 () Bool)

(assert (=> b!6870384 (= e!4141564 e!4141563)))

(declare-fun c!1278800 () Bool)

(assert (=> b!6870384 (= c!1278800 ((_ is ElementMatch!16697) (ite c!1278426 (regOne!33907 r!7292) (ite c!1278428 (reg!17026 r!7292) (regOne!33906 r!7292)))))))

(declare-fun b!6870385 () Bool)

(assert (=> b!6870385 (= e!4141563 (ite (= (head!13779 s!2326) (c!1278149 (ite c!1278426 (regOne!33907 r!7292) (ite c!1278428 (reg!17026 r!7292) (regOne!33906 r!7292))))) EmptyExpr!16697 EmptyLang!16697))))

(declare-fun b!6870383 () Bool)

(assert (=> b!6870383 (= e!4141562 (Concat!25542 call!625903 (ite c!1278426 (regOne!33907 r!7292) (ite c!1278428 (reg!17026 r!7292) (regOne!33906 r!7292)))))))

(declare-fun d!2158550 () Bool)

(declare-fun lt!2458255 () Regex!16697)

(assert (=> d!2158550 (validRegex!8433 lt!2458255)))

(assert (=> d!2158550 (= lt!2458255 e!4141564)))

(declare-fun c!1278803 () Bool)

(assert (=> d!2158550 (= c!1278803 (or ((_ is EmptyExpr!16697) (ite c!1278426 (regOne!33907 r!7292) (ite c!1278428 (reg!17026 r!7292) (regOne!33906 r!7292)))) ((_ is EmptyLang!16697) (ite c!1278426 (regOne!33907 r!7292) (ite c!1278428 (reg!17026 r!7292) (regOne!33906 r!7292))))))))

(assert (=> d!2158550 (validRegex!8433 (ite c!1278426 (regOne!33907 r!7292) (ite c!1278428 (reg!17026 r!7292) (regOne!33906 r!7292))))))

(assert (=> d!2158550 (= (derivativeStep!5340 (ite c!1278426 (regOne!33907 r!7292) (ite c!1278428 (reg!17026 r!7292) (regOne!33906 r!7292))) (head!13779 s!2326)) lt!2458255)))

(assert (= (and d!2158550 c!1278803) b!6870379))

(assert (= (and d!2158550 (not c!1278803)) b!6870384))

(assert (= (and b!6870384 c!1278800) b!6870385))

(assert (= (and b!6870384 (not c!1278800)) b!6870381))

(assert (= (and b!6870381 c!1278802) b!6870377))

(assert (= (and b!6870381 (not c!1278802)) b!6870376))

(assert (= (and b!6870376 c!1278804) b!6870383))

(assert (= (and b!6870376 (not c!1278804)) b!6870382))

(assert (= (and b!6870382 c!1278801) b!6870380))

(assert (= (and b!6870382 (not c!1278801)) b!6870378))

(assert (= (or b!6870380 b!6870378) bm!625896))

(assert (= (or b!6870383 b!6870380) bm!625898))

(assert (= (or b!6870377 bm!625896) bm!625899))

(assert (= (or b!6870377 bm!625898) bm!625897))

(assert (=> bm!625897 m!7599586))

(declare-fun m!7601752 () Bool)

(assert (=> bm!625897 m!7601752))

(assert (=> bm!625899 m!7599586))

(declare-fun m!7601754 () Bool)

(assert (=> bm!625899 m!7601754))

(declare-fun m!7601756 () Bool)

(assert (=> b!6870382 m!7601756))

(declare-fun m!7601758 () Bool)

(assert (=> d!2158550 m!7601758))

(declare-fun m!7601760 () Bool)

(assert (=> d!2158550 m!7601760))

(assert (=> bm!625621 d!2158550))

(assert (=> d!2157856 d!2157864))

(declare-fun d!2158552 () Bool)

(declare-fun c!1278805 () Bool)

(assert (=> d!2158552 (= c!1278805 ((_ is Nil!66267) res!2801683))))

(declare-fun e!4141573 () (InoxSet Context!12162))

(assert (=> d!2158552 (= (content!13010 res!2801683) e!4141573)))

(declare-fun b!6870408 () Bool)

(assert (=> b!6870408 (= e!4141573 ((as const (Array Context!12162 Bool)) false))))

(declare-fun b!6870409 () Bool)

(assert (=> b!6870409 (= e!4141573 ((_ map or) (store ((as const (Array Context!12162 Bool)) false) (h!72715 res!2801683) true) (content!13010 (t!380134 res!2801683))))))

(assert (= (and d!2158552 c!1278805) b!6870408))

(assert (= (and d!2158552 (not c!1278805)) b!6870409))

(declare-fun m!7601762 () Bool)

(assert (=> b!6870409 m!7601762))

(declare-fun m!7601764 () Bool)

(assert (=> b!6870409 m!7601764))

(assert (=> b!6868959 d!2158552))

(declare-fun d!2158554 () Bool)

(declare-fun c!1278806 () Bool)

(assert (=> d!2158554 (= c!1278806 (isEmpty!38627 s!2326))))

(declare-fun e!4141575 () Bool)

(assert (=> d!2158554 (= (matchZipper!2663 (store ((as const (Array Context!12162 Bool)) false) lt!2458179 true) s!2326) e!4141575)))

(declare-fun b!6870414 () Bool)

(assert (=> b!6870414 (= e!4141575 (nullableZipper!2370 (store ((as const (Array Context!12162 Bool)) false) lt!2458179 true)))))

(declare-fun b!6870415 () Bool)

(assert (=> b!6870415 (= e!4141575 (matchZipper!2663 (derivationStepZipper!2617 (store ((as const (Array Context!12162 Bool)) false) lt!2458179 true) (head!13779 s!2326)) (tail!12835 s!2326)))))

(assert (= (and d!2158554 c!1278806) b!6870414))

(assert (= (and d!2158554 (not c!1278806)) b!6870415))

(assert (=> d!2158554 m!7599520))

(assert (=> b!6870414 m!7600470))

(declare-fun m!7601766 () Bool)

(assert (=> b!6870414 m!7601766))

(assert (=> b!6870415 m!7599586))

(assert (=> b!6870415 m!7600470))

(assert (=> b!6870415 m!7599586))

(declare-fun m!7601768 () Bool)

(assert (=> b!6870415 m!7601768))

(assert (=> b!6870415 m!7599580))

(assert (=> b!6870415 m!7601768))

(assert (=> b!6870415 m!7599580))

(declare-fun m!7601770 () Bool)

(assert (=> b!6870415 m!7601770))

(assert (=> bs!1836225 d!2158554))

(assert (=> d!2157822 d!2157790))

(declare-fun d!2158556 () Bool)

(declare-fun lt!2458256 () Bool)

(assert (=> d!2158556 (= lt!2458256 (select (content!13010 (t!380134 zl!343)) lt!2458110))))

(declare-fun e!4141580 () Bool)

(assert (=> d!2158556 (= lt!2458256 e!4141580)))

(declare-fun res!2802261 () Bool)

(assert (=> d!2158556 (=> (not res!2802261) (not e!4141580))))

(assert (=> d!2158556 (= res!2802261 ((_ is Cons!66267) (t!380134 zl!343)))))

(assert (=> d!2158556 (= (contains!20355 (t!380134 zl!343) lt!2458110) lt!2458256)))

(declare-fun b!6870428 () Bool)

(declare-fun e!4141579 () Bool)

(assert (=> b!6870428 (= e!4141580 e!4141579)))

(declare-fun res!2802262 () Bool)

(assert (=> b!6870428 (=> res!2802262 e!4141579)))

(assert (=> b!6870428 (= res!2802262 (= (h!72715 (t!380134 zl!343)) lt!2458110))))

(declare-fun b!6870429 () Bool)

(assert (=> b!6870429 (= e!4141579 (contains!20355 (t!380134 (t!380134 zl!343)) lt!2458110))))

(assert (= (and d!2158556 res!2802261) b!6870428))

(assert (= (and b!6870428 (not res!2802262)) b!6870429))

(assert (=> d!2158556 m!7600284))

(declare-fun m!7601772 () Bool)

(assert (=> d!2158556 m!7601772))

(declare-fun m!7601774 () Bool)

(assert (=> b!6870429 m!7601774))

(assert (=> b!6869005 d!2158556))

(declare-fun d!2158558 () Bool)

(assert (=> d!2158558 (= (isEmpty!38628 (tail!12836 (unfocusZipperList!2114 zl!343))) ((_ is Nil!66266) (tail!12836 (unfocusZipperList!2114 zl!343))))))

(assert (=> b!6868842 d!2158558))

(declare-fun d!2158560 () Bool)

(assert (=> d!2158560 (= (tail!12836 (unfocusZipperList!2114 zl!343)) (t!380133 (unfocusZipperList!2114 zl!343)))))

(assert (=> b!6868842 d!2158560))

(declare-fun d!2158562 () Bool)

(declare-fun res!2802263 () Bool)

(declare-fun e!4141584 () Bool)

(assert (=> d!2158562 (=> res!2802263 e!4141584)))

(assert (=> d!2158562 (= res!2802263 ((_ is Nil!66266) (exprs!6581 setElem!47231)))))

(assert (=> d!2158562 (= (forall!15890 (exprs!6581 setElem!47231) lambda!388697) e!4141584)))

(declare-fun b!6870442 () Bool)

(declare-fun e!4141585 () Bool)

(assert (=> b!6870442 (= e!4141584 e!4141585)))

(declare-fun res!2802264 () Bool)

(assert (=> b!6870442 (=> (not res!2802264) (not e!4141585))))

(assert (=> b!6870442 (= res!2802264 (dynLambda!26529 lambda!388697 (h!72714 (exprs!6581 setElem!47231))))))

(declare-fun b!6870443 () Bool)

(assert (=> b!6870443 (= e!4141585 (forall!15890 (t!380133 (exprs!6581 setElem!47231)) lambda!388697))))

(assert (= (and d!2158562 (not res!2802263)) b!6870442))

(assert (= (and b!6870442 res!2802264) b!6870443))

(declare-fun b_lambda!259985 () Bool)

(assert (=> (not b_lambda!259985) (not b!6870442)))

(declare-fun m!7601776 () Bool)

(assert (=> b!6870442 m!7601776))

(declare-fun m!7601778 () Bool)

(assert (=> b!6870443 m!7601778))

(assert (=> d!2157890 d!2158562))

(assert (=> d!2157904 d!2157502))

(declare-fun bs!1837202 () Bool)

(declare-fun d!2158564 () Bool)

(assert (= bs!1837202 (and d!2158564 d!2157550)))

(declare-fun lambda!388763 () Int)

(assert (=> bs!1837202 (not (= lambda!388763 lambda!388619))))

(declare-fun bs!1837203 () Bool)

(assert (= bs!1837203 (and d!2158564 d!2157808)))

(assert (=> bs!1837203 (not (= lambda!388763 lambda!388680))))

(declare-fun bs!1837204 () Bool)

(assert (= bs!1837204 (and d!2158564 b!6867793)))

(assert (=> bs!1837204 (not (= lambda!388763 lambda!388573))))

(declare-fun bs!1837205 () Bool)

(assert (= bs!1837205 (and d!2158564 d!2157902)))

(assert (=> bs!1837205 (= (= lambda!388703 lambda!388637) (= lambda!388763 lambda!388700))))

(declare-fun bs!1837206 () Bool)

(assert (= bs!1837206 (and d!2158564 d!2158018)))

(assert (=> bs!1837206 (not (= lambda!388763 lambda!388714))))

(declare-fun bs!1837207 () Bool)

(assert (= bs!1837207 (and d!2158564 d!2158016)))

(assert (=> bs!1837207 (not (= lambda!388763 lambda!388712))))

(declare-fun bs!1837208 () Bool)

(assert (= bs!1837208 (and d!2158564 d!2158130)))

(assert (=> bs!1837208 (not (= lambda!388763 lambda!388725))))

(declare-fun bs!1837209 () Bool)

(assert (= bs!1837209 (and d!2158564 d!2157904)))

(assert (=> bs!1837209 (not (= lambda!388763 lambda!388703))))

(declare-fun bs!1837210 () Bool)

(assert (= bs!1837210 (and d!2158564 d!2158076)))

(assert (=> bs!1837210 (not (= lambda!388763 lambda!388720))))

(declare-fun bs!1837211 () Bool)

(assert (= bs!1837211 (and d!2158564 d!2157890)))

(assert (=> bs!1837211 (not (= lambda!388763 lambda!388697))))

(declare-fun bs!1837212 () Bool)

(assert (= bs!1837212 (and d!2158564 d!2158188)))

(assert (=> bs!1837212 (not (= lambda!388763 lambda!388730))))

(declare-fun bs!1837213 () Bool)

(assert (= bs!1837213 (and d!2158564 d!2157564)))

(assert (=> bs!1837213 (not (= lambda!388763 lambda!388628))))

(declare-fun bs!1837214 () Bool)

(assert (= bs!1837214 (and d!2158564 b!6867798)))

(assert (=> bs!1837214 (not (= lambda!388763 lambda!388571))))

(declare-fun bs!1837215 () Bool)

(assert (= bs!1837215 (and d!2158564 d!2157836)))

(assert (=> bs!1837215 (not (= lambda!388763 lambda!388688))))

(declare-fun bs!1837216 () Bool)

(assert (= bs!1837216 (and d!2158564 d!2157580)))

(assert (=> bs!1837216 (not (= lambda!388763 lambda!388640))))

(declare-fun bs!1837217 () Bool)

(assert (= bs!1837217 (and d!2158564 d!2157772)))

(assert (=> bs!1837217 (not (= lambda!388763 lambda!388675))))

(declare-fun bs!1837218 () Bool)

(assert (= bs!1837218 (and d!2158564 d!2157578)))

(assert (=> bs!1837218 (not (= lambda!388763 lambda!388636))))

(declare-fun bs!1837219 () Bool)

(assert (= bs!1837219 (and d!2158564 d!2158534)))

(assert (=> bs!1837219 (not (= lambda!388763 lambda!388762))))

(declare-fun bs!1837220 () Bool)

(assert (= bs!1837220 (and d!2158564 d!2157806)))

(assert (=> bs!1837220 (not (= lambda!388763 lambda!388679))))

(declare-fun bs!1837221 () Bool)

(assert (= bs!1837221 (and d!2158564 d!2158012)))

(assert (=> bs!1837221 (not (= lambda!388763 lambda!388710))))

(assert (=> bs!1837218 (not (= lambda!388763 lambda!388637))))

(declare-fun bs!1837222 () Bool)

(assert (= bs!1837222 (and d!2158564 d!2158042)))

(assert (=> bs!1837222 (not (= lambda!388763 lambda!388716))))

(declare-fun bs!1837223 () Bool)

(assert (= bs!1837223 (and d!2158564 d!2158128)))

(assert (=> bs!1837223 (not (= lambda!388763 lambda!388723))))

(declare-fun bs!1837224 () Bool)

(assert (= bs!1837224 (and d!2158564 d!2157854)))

(assert (=> bs!1837224 (not (= lambda!388763 lambda!388689))))

(declare-fun bs!1837225 () Bool)

(assert (= bs!1837225 (and d!2158564 d!2158372)))

(assert (=> bs!1837225 (not (= lambda!388763 lambda!388753))))

(declare-fun bs!1837226 () Bool)

(assert (= bs!1837226 (and d!2158564 d!2157534)))

(assert (=> bs!1837226 (not (= lambda!388763 lambda!388616))))

(declare-fun bs!1837227 () Bool)

(assert (= bs!1837227 (and d!2158564 d!2157866)))

(assert (=> bs!1837227 (not (= lambda!388763 lambda!388693))))

(declare-fun bs!1837228 () Bool)

(assert (= bs!1837228 (and d!2158564 d!2158330)))

(assert (=> bs!1837228 (not (= lambda!388763 lambda!388749))))

(declare-fun bs!1837229 () Bool)

(assert (= bs!1837229 (and d!2158564 d!2157582)))

(assert (=> bs!1837229 (not (= lambda!388763 lambda!388641))))

(declare-fun bs!1837230 () Bool)

(assert (= bs!1837230 (and d!2158564 d!2157834)))

(assert (=> bs!1837230 (not (= lambda!388763 lambda!388687))))

(declare-fun bs!1837231 () Bool)

(assert (= bs!1837231 (and d!2158564 d!2157576)))

(assert (=> bs!1837231 (= (= lambda!388703 lambda!388571) (= lambda!388763 lambda!388631))))

(declare-fun bs!1837232 () Bool)

(assert (= bs!1837232 (and d!2158564 d!2158258)))

(assert (=> bs!1837232 (not (= lambda!388763 lambda!388740))))

(declare-fun bs!1837233 () Bool)

(assert (= bs!1837233 (and d!2158564 d!2157872)))

(assert (=> bs!1837233 (not (= lambda!388763 lambda!388696))))

(assert (=> d!2158564 true))

(assert (=> d!2158564 (< (dynLambda!26532 order!27731 lambda!388703) (dynLambda!26532 order!27731 lambda!388763))))

(assert (=> d!2158564 (= (exists!2829 lt!2458035 lambda!388703) (not (forall!15890 lt!2458035 lambda!388763)))))

(declare-fun bs!1837234 () Bool)

(assert (= bs!1837234 d!2158564))

(declare-fun m!7601784 () Bool)

(assert (=> bs!1837234 m!7601784))

(assert (=> d!2157904 d!2158564))

(declare-fun d!2158566 () Bool)

(declare-fun c!1278807 () Bool)

(assert (=> d!2158566 (= c!1278807 (isEmpty!38627 (tail!12835 (tail!12835 s!2326))))))

(declare-fun e!4141604 () Bool)

(assert (=> d!2158566 (= (matchZipper!2663 (derivationStepZipper!2617 (derivationStepZipper!2617 z!1189 (head!13779 s!2326)) (head!13779 (tail!12835 s!2326))) (tail!12835 (tail!12835 s!2326))) e!4141604)))

(declare-fun b!6870507 () Bool)

(assert (=> b!6870507 (= e!4141604 (nullableZipper!2370 (derivationStepZipper!2617 (derivationStepZipper!2617 z!1189 (head!13779 s!2326)) (head!13779 (tail!12835 s!2326)))))))

(declare-fun b!6870508 () Bool)

(assert (=> b!6870508 (= e!4141604 (matchZipper!2663 (derivationStepZipper!2617 (derivationStepZipper!2617 (derivationStepZipper!2617 z!1189 (head!13779 s!2326)) (head!13779 (tail!12835 s!2326))) (head!13779 (tail!12835 (tail!12835 s!2326)))) (tail!12835 (tail!12835 (tail!12835 s!2326)))))))

(assert (= (and d!2158566 c!1278807) b!6870507))

(assert (= (and d!2158566 (not c!1278807)) b!6870508))

(assert (=> d!2158566 m!7600164))

(assert (=> d!2158566 m!7600166))

(assert (=> b!6870507 m!7600358))

(declare-fun m!7601786 () Bool)

(assert (=> b!6870507 m!7601786))

(assert (=> b!6870508 m!7600164))

(assert (=> b!6870508 m!7601108))

(assert (=> b!6870508 m!7600358))

(assert (=> b!6870508 m!7601108))

(declare-fun m!7601788 () Bool)

(assert (=> b!6870508 m!7601788))

(assert (=> b!6870508 m!7600164))

(assert (=> b!6870508 m!7601102))

(assert (=> b!6870508 m!7601788))

(assert (=> b!6870508 m!7601102))

(declare-fun m!7601790 () Bool)

(assert (=> b!6870508 m!7601790))

(assert (=> b!6869015 d!2158566))

(declare-fun bs!1837235 () Bool)

(declare-fun d!2158568 () Bool)

(assert (= bs!1837235 (and d!2158568 d!2157858)))

(declare-fun lambda!388764 () Int)

(assert (=> bs!1837235 (= (= (head!13779 (tail!12835 s!2326)) (head!13779 s!2326)) (= lambda!388764 lambda!388692))))

(declare-fun bs!1837236 () Bool)

(assert (= bs!1837236 (and d!2158568 d!2158134)))

(assert (=> bs!1837236 (= (= (head!13779 (tail!12835 s!2326)) (head!13779 s!2326)) (= lambda!388764 lambda!388726))))

(declare-fun bs!1837237 () Bool)

(assert (= bs!1837237 (and d!2158568 d!2158142)))

(assert (=> bs!1837237 (= (= (head!13779 (tail!12835 s!2326)) (head!13779 s!2326)) (= lambda!388764 lambda!388727))))

(assert (=> d!2158568 true))

(assert (=> d!2158568 (= (derivationStepZipper!2617 (derivationStepZipper!2617 z!1189 (head!13779 s!2326)) (head!13779 (tail!12835 s!2326))) (flatMap!2144 (derivationStepZipper!2617 z!1189 (head!13779 s!2326)) lambda!388764))))

(declare-fun bs!1837238 () Bool)

(assert (= bs!1837238 d!2158568))

(assert (=> bs!1837238 m!7599738))

(declare-fun m!7601792 () Bool)

(assert (=> bs!1837238 m!7601792))

(assert (=> b!6869015 d!2158568))

(assert (=> b!6869015 d!2158232))

(assert (=> b!6869015 d!2158048))

(assert (=> b!6868857 d!2158232))

(declare-fun b!6870541 () Bool)

(declare-fun e!4141612 () Bool)

(declare-fun call!625906 () Bool)

(assert (=> b!6870541 (= e!4141612 call!625906)))

(declare-fun call!625905 () Bool)

(declare-fun c!1278809 () Bool)

(declare-fun bm!625900 () Bool)

(declare-fun c!1278808 () Bool)

(assert (=> bm!625900 (= call!625905 (validRegex!8433 (ite c!1278808 (reg!17026 (h!72714 (t!380133 (exprs!6581 lt!2458040)))) (ite c!1278809 (regOne!33907 (h!72714 (t!380133 (exprs!6581 lt!2458040)))) (regOne!33906 (h!72714 (t!380133 (exprs!6581 lt!2458040))))))))))

(declare-fun bm!625901 () Bool)

(declare-fun call!625907 () Bool)

(assert (=> bm!625901 (= call!625907 call!625905)))

(declare-fun b!6870542 () Bool)

(declare-fun e!4141615 () Bool)

(assert (=> b!6870542 (= e!4141615 call!625905)))

(declare-fun bm!625902 () Bool)

(assert (=> bm!625902 (= call!625906 (validRegex!8433 (ite c!1278809 (regTwo!33907 (h!72714 (t!380133 (exprs!6581 lt!2458040)))) (regTwo!33906 (h!72714 (t!380133 (exprs!6581 lt!2458040)))))))))

(declare-fun b!6870543 () Bool)

(declare-fun e!4141619 () Bool)

(assert (=> b!6870543 (= e!4141619 e!4141612)))

(declare-fun res!2802267 () Bool)

(assert (=> b!6870543 (=> (not res!2802267) (not e!4141612))))

(assert (=> b!6870543 (= res!2802267 call!625907)))

(declare-fun d!2158570 () Bool)

(declare-fun res!2802266 () Bool)

(declare-fun e!4141617 () Bool)

(assert (=> d!2158570 (=> res!2802266 e!4141617)))

(assert (=> d!2158570 (= res!2802266 ((_ is ElementMatch!16697) (h!72714 (t!380133 (exprs!6581 lt!2458040)))))))

(assert (=> d!2158570 (= (validRegex!8433 (h!72714 (t!380133 (exprs!6581 lt!2458040)))) e!4141617)))

(declare-fun b!6870544 () Bool)

(declare-fun res!2802265 () Bool)

(declare-fun e!4141616 () Bool)

(assert (=> b!6870544 (=> (not res!2802265) (not e!4141616))))

(assert (=> b!6870544 (= res!2802265 call!625907)))

(declare-fun e!4141618 () Bool)

(assert (=> b!6870544 (= e!4141618 e!4141616)))

(declare-fun b!6870545 () Bool)

(assert (=> b!6870545 (= e!4141616 call!625906)))

(declare-fun b!6870546 () Bool)

(declare-fun res!2802268 () Bool)

(assert (=> b!6870546 (=> res!2802268 e!4141619)))

(assert (=> b!6870546 (= res!2802268 (not ((_ is Concat!25542) (h!72714 (t!380133 (exprs!6581 lt!2458040))))))))

(assert (=> b!6870546 (= e!4141618 e!4141619)))

(declare-fun b!6870547 () Bool)

(declare-fun e!4141614 () Bool)

(assert (=> b!6870547 (= e!4141614 e!4141618)))

(assert (=> b!6870547 (= c!1278809 ((_ is Union!16697) (h!72714 (t!380133 (exprs!6581 lt!2458040)))))))

(declare-fun b!6870548 () Bool)

(assert (=> b!6870548 (= e!4141617 e!4141614)))

(assert (=> b!6870548 (= c!1278808 ((_ is Star!16697) (h!72714 (t!380133 (exprs!6581 lt!2458040)))))))

(declare-fun b!6870549 () Bool)

(assert (=> b!6870549 (= e!4141614 e!4141615)))

(declare-fun res!2802269 () Bool)

(assert (=> b!6870549 (= res!2802269 (not (nullable!6658 (reg!17026 (h!72714 (t!380133 (exprs!6581 lt!2458040)))))))))

(assert (=> b!6870549 (=> (not res!2802269) (not e!4141615))))

(assert (= (and d!2158570 (not res!2802266)) b!6870548))

(assert (= (and b!6870548 c!1278808) b!6870549))

(assert (= (and b!6870548 (not c!1278808)) b!6870547))

(assert (= (and b!6870549 res!2802269) b!6870542))

(assert (= (and b!6870547 c!1278809) b!6870544))

(assert (= (and b!6870547 (not c!1278809)) b!6870546))

(assert (= (and b!6870544 res!2802265) b!6870545))

(assert (= (and b!6870546 (not res!2802268)) b!6870543))

(assert (= (and b!6870543 res!2802267) b!6870541))

(assert (= (or b!6870545 b!6870541) bm!625902))

(assert (= (or b!6870544 b!6870543) bm!625901))

(assert (= (or b!6870542 bm!625901) bm!625900))

(declare-fun m!7601794 () Bool)

(assert (=> bm!625900 m!7601794))

(declare-fun m!7601796 () Bool)

(assert (=> bm!625902 m!7601796))

(declare-fun m!7601798 () Bool)

(assert (=> b!6870549 m!7601798))

(assert (=> bs!1836230 d!2158570))

(declare-fun d!2158572 () Bool)

(declare-fun c!1278810 () Bool)

(assert (=> d!2158572 (= c!1278810 (isEmpty!38627 (tail!12835 s!2326)))))

(declare-fun e!4141624 () Bool)

(assert (=> d!2158572 (= (matchZipper!2663 (derivationStepZipper!2617 (content!13010 zl!343) (head!13779 s!2326)) (tail!12835 s!2326)) e!4141624)))

(declare-fun b!6870566 () Bool)

(assert (=> b!6870566 (= e!4141624 (nullableZipper!2370 (derivationStepZipper!2617 (content!13010 zl!343) (head!13779 s!2326))))))

(declare-fun b!6870567 () Bool)

(assert (=> b!6870567 (= e!4141624 (matchZipper!2663 (derivationStepZipper!2617 (derivationStepZipper!2617 (content!13010 zl!343) (head!13779 s!2326)) (head!13779 (tail!12835 s!2326))) (tail!12835 (tail!12835 s!2326))))))

(assert (= (and d!2158572 c!1278810) b!6870566))

(assert (= (and d!2158572 (not c!1278810)) b!6870567))

(assert (=> d!2158572 m!7599580))

(assert (=> d!2158572 m!7599582))

(assert (=> b!6870566 m!7600280))

(declare-fun m!7601800 () Bool)

(assert (=> b!6870566 m!7601800))

(assert (=> b!6870567 m!7599580))

(assert (=> b!6870567 m!7600170))

(assert (=> b!6870567 m!7600280))

(assert (=> b!6870567 m!7600170))

(declare-fun m!7601802 () Bool)

(assert (=> b!6870567 m!7601802))

(assert (=> b!6870567 m!7599580))

(assert (=> b!6870567 m!7600164))

(assert (=> b!6870567 m!7601802))

(assert (=> b!6870567 m!7600164))

(declare-fun m!7601804 () Bool)

(assert (=> b!6870567 m!7601804))

(assert (=> b!6868961 d!2158572))

(declare-fun bs!1837239 () Bool)

(declare-fun d!2158574 () Bool)

(assert (= bs!1837239 (and d!2158574 d!2157858)))

(declare-fun lambda!388765 () Int)

(assert (=> bs!1837239 (= lambda!388765 lambda!388692)))

(declare-fun bs!1837240 () Bool)

(assert (= bs!1837240 (and d!2158574 d!2158134)))

(assert (=> bs!1837240 (= lambda!388765 lambda!388726)))

(declare-fun bs!1837241 () Bool)

(assert (= bs!1837241 (and d!2158574 d!2158142)))

(assert (=> bs!1837241 (= lambda!388765 lambda!388727)))

(declare-fun bs!1837242 () Bool)

(assert (= bs!1837242 (and d!2158574 d!2158568)))

(assert (=> bs!1837242 (= (= (head!13779 s!2326) (head!13779 (tail!12835 s!2326))) (= lambda!388765 lambda!388764))))

(assert (=> d!2158574 true))

(assert (=> d!2158574 (= (derivationStepZipper!2617 (content!13010 zl!343) (head!13779 s!2326)) (flatMap!2144 (content!13010 zl!343) lambda!388765))))

(declare-fun bs!1837243 () Bool)

(assert (= bs!1837243 d!2158574))

(assert (=> bs!1837243 m!7599684))

(declare-fun m!7601806 () Bool)

(assert (=> bs!1837243 m!7601806))

(assert (=> b!6868961 d!2158574))

(assert (=> b!6868961 d!2157778))

(assert (=> b!6868961 d!2157780))

(declare-fun b!6870596 () Bool)

(declare-fun e!4141632 () Bool)

(declare-fun e!4141635 () Bool)

(assert (=> b!6870596 (= e!4141632 e!4141635)))

(declare-fun res!2802273 () Bool)

(declare-fun call!625908 () Bool)

(assert (=> b!6870596 (= res!2802273 call!625908)))

(assert (=> b!6870596 (=> res!2802273 e!4141635)))

(declare-fun b!6870597 () Bool)

(declare-fun e!4141634 () Bool)

(declare-fun e!4141637 () Bool)

(assert (=> b!6870597 (= e!4141634 e!4141637)))

(declare-fun res!2802274 () Bool)

(assert (=> b!6870597 (=> (not res!2802274) (not e!4141637))))

(assert (=> b!6870597 (= res!2802274 (and (not ((_ is EmptyLang!16697) (reg!17026 lt!2458034))) (not ((_ is ElementMatch!16697) (reg!17026 lt!2458034)))))))

(declare-fun b!6870598 () Bool)

(declare-fun e!4141636 () Bool)

(assert (=> b!6870598 (= e!4141637 e!4141636)))

(declare-fun res!2802271 () Bool)

(assert (=> b!6870598 (=> res!2802271 e!4141636)))

(assert (=> b!6870598 (= res!2802271 ((_ is Star!16697) (reg!17026 lt!2458034)))))

(declare-fun bm!625903 () Bool)

(declare-fun c!1278811 () Bool)

(assert (=> bm!625903 (= call!625908 (nullable!6658 (ite c!1278811 (regOne!33907 (reg!17026 lt!2458034)) (regOne!33906 (reg!17026 lt!2458034)))))))

(declare-fun d!2158576 () Bool)

(declare-fun res!2802270 () Bool)

(assert (=> d!2158576 (=> res!2802270 e!4141634)))

(assert (=> d!2158576 (= res!2802270 ((_ is EmptyExpr!16697) (reg!17026 lt!2458034)))))

(assert (=> d!2158576 (= (nullableFct!2532 (reg!17026 lt!2458034)) e!4141634)))

(declare-fun b!6870599 () Bool)

(declare-fun call!625909 () Bool)

(assert (=> b!6870599 (= e!4141635 call!625909)))

(declare-fun b!6870600 () Bool)

(assert (=> b!6870600 (= e!4141636 e!4141632)))

(assert (=> b!6870600 (= c!1278811 ((_ is Union!16697) (reg!17026 lt!2458034)))))

(declare-fun b!6870601 () Bool)

(declare-fun e!4141633 () Bool)

(assert (=> b!6870601 (= e!4141633 call!625909)))

(declare-fun b!6870602 () Bool)

(assert (=> b!6870602 (= e!4141632 e!4141633)))

(declare-fun res!2802272 () Bool)

(assert (=> b!6870602 (= res!2802272 call!625908)))

(assert (=> b!6870602 (=> (not res!2802272) (not e!4141633))))

(declare-fun bm!625904 () Bool)

(assert (=> bm!625904 (= call!625909 (nullable!6658 (ite c!1278811 (regTwo!33907 (reg!17026 lt!2458034)) (regTwo!33906 (reg!17026 lt!2458034)))))))

(assert (= (and d!2158576 (not res!2802270)) b!6870597))

(assert (= (and b!6870597 res!2802274) b!6870598))

(assert (= (and b!6870598 (not res!2802271)) b!6870600))

(assert (= (and b!6870600 c!1278811) b!6870596))

(assert (= (and b!6870600 (not c!1278811)) b!6870602))

(assert (= (and b!6870596 (not res!2802273)) b!6870599))

(assert (= (and b!6870602 res!2802272) b!6870601))

(assert (= (or b!6870599 b!6870601) bm!625904))

(assert (= (or b!6870596 b!6870602) bm!625903))

(declare-fun m!7601808 () Bool)

(assert (=> bm!625903 m!7601808))

(declare-fun m!7601810 () Bool)

(assert (=> bm!625904 m!7601810))

(assert (=> d!2157850 d!2158576))

(declare-fun b!6870629 () Bool)

(declare-fun e!4141644 () Bool)

(declare-fun tp!1886048 () Bool)

(assert (=> b!6870629 (= e!4141644 tp!1886048)))

(declare-fun b!6870630 () Bool)

(declare-fun tp!1886046 () Bool)

(declare-fun tp!1886047 () Bool)

(assert (=> b!6870630 (= e!4141644 (and tp!1886046 tp!1886047))))

(assert (=> b!6869097 (= tp!1885586 e!4141644)))

(declare-fun b!6870628 () Bool)

(declare-fun tp!1886044 () Bool)

(declare-fun tp!1886045 () Bool)

(assert (=> b!6870628 (= e!4141644 (and tp!1886044 tp!1886045))))

(declare-fun b!6870627 () Bool)

(assert (=> b!6870627 (= e!4141644 tp_is_empty!42647)))

(assert (= (and b!6869097 ((_ is ElementMatch!16697) (regOne!33907 (regOne!33907 (regTwo!33906 r!7292))))) b!6870627))

(assert (= (and b!6869097 ((_ is Concat!25542) (regOne!33907 (regOne!33907 (regTwo!33906 r!7292))))) b!6870628))

(assert (= (and b!6869097 ((_ is Star!16697) (regOne!33907 (regOne!33907 (regTwo!33906 r!7292))))) b!6870629))

(assert (= (and b!6869097 ((_ is Union!16697) (regOne!33907 (regOne!33907 (regTwo!33906 r!7292))))) b!6870630))

(declare-fun b!6870641 () Bool)

(declare-fun e!4141647 () Bool)

(declare-fun tp!1886063 () Bool)

(assert (=> b!6870641 (= e!4141647 tp!1886063)))

(declare-fun b!6870642 () Bool)

(declare-fun tp!1886061 () Bool)

(declare-fun tp!1886062 () Bool)

(assert (=> b!6870642 (= e!4141647 (and tp!1886061 tp!1886062))))

(assert (=> b!6869097 (= tp!1885587 e!4141647)))

(declare-fun b!6870640 () Bool)

(declare-fun tp!1886059 () Bool)

(declare-fun tp!1886060 () Bool)

(assert (=> b!6870640 (= e!4141647 (and tp!1886059 tp!1886060))))

(declare-fun b!6870639 () Bool)

(assert (=> b!6870639 (= e!4141647 tp_is_empty!42647)))

(assert (= (and b!6869097 ((_ is ElementMatch!16697) (regTwo!33907 (regOne!33907 (regTwo!33906 r!7292))))) b!6870639))

(assert (= (and b!6869097 ((_ is Concat!25542) (regTwo!33907 (regOne!33907 (regTwo!33906 r!7292))))) b!6870640))

(assert (= (and b!6869097 ((_ is Star!16697) (regTwo!33907 (regOne!33907 (regTwo!33906 r!7292))))) b!6870641))

(assert (= (and b!6869097 ((_ is Union!16697) (regTwo!33907 (regOne!33907 (regTwo!33906 r!7292))))) b!6870642))

(declare-fun b!6870648 () Bool)

(declare-fun e!4141650 () Bool)

(declare-fun tp!1886069 () Bool)

(assert (=> b!6870648 (= e!4141650 tp!1886069)))

(declare-fun b!6870647 () Bool)

(declare-fun e!4141649 () Bool)

(declare-fun tp!1886070 () Bool)

(assert (=> b!6870647 (= e!4141649 (and (inv!84989 (h!72715 (t!380134 (t!380134 (t!380134 zl!343))))) e!4141650 tp!1886070))))

(assert (=> b!6869145 (= tp!1885651 e!4141649)))

(assert (= b!6870647 b!6870648))

(assert (= (and b!6869145 ((_ is Cons!66267) (t!380134 (t!380134 (t!380134 zl!343))))) b!6870647))

(declare-fun m!7601812 () Bool)

(assert (=> b!6870647 m!7601812))

(declare-fun b!6870655 () Bool)

(declare-fun e!4141652 () Bool)

(declare-fun tp!1886080 () Bool)

(assert (=> b!6870655 (= e!4141652 tp!1886080)))

(declare-fun b!6870656 () Bool)

(declare-fun tp!1886078 () Bool)

(declare-fun tp!1886079 () Bool)

(assert (=> b!6870656 (= e!4141652 (and tp!1886078 tp!1886079))))

(assert (=> b!6869138 (= tp!1885642 e!4141652)))

(declare-fun b!6870654 () Bool)

(declare-fun tp!1886076 () Bool)

(declare-fun tp!1886077 () Bool)

(assert (=> b!6870654 (= e!4141652 (and tp!1886076 tp!1886077))))

(declare-fun b!6870653 () Bool)

(assert (=> b!6870653 (= e!4141652 tp_is_empty!42647)))

(assert (= (and b!6869138 ((_ is ElementMatch!16697) (reg!17026 (regTwo!33907 (regTwo!33907 r!7292))))) b!6870653))

(assert (= (and b!6869138 ((_ is Concat!25542) (reg!17026 (regTwo!33907 (regTwo!33907 r!7292))))) b!6870654))

(assert (= (and b!6869138 ((_ is Star!16697) (reg!17026 (regTwo!33907 (regTwo!33907 r!7292))))) b!6870655))

(assert (= (and b!6869138 ((_ is Union!16697) (reg!17026 (regTwo!33907 (regTwo!33907 r!7292))))) b!6870656))

(declare-fun b!6870661 () Bool)

(declare-fun e!4141655 () Bool)

(declare-fun tp!1886087 () Bool)

(assert (=> b!6870661 (= e!4141655 tp!1886087)))

(declare-fun b!6870662 () Bool)

(declare-fun tp!1886085 () Bool)

(declare-fun tp!1886086 () Bool)

(assert (=> b!6870662 (= e!4141655 (and tp!1886085 tp!1886086))))

(assert (=> b!6869209 (= tp!1885730 e!4141655)))

(declare-fun b!6870660 () Bool)

(declare-fun tp!1886083 () Bool)

(declare-fun tp!1886084 () Bool)

(assert (=> b!6870660 (= e!4141655 (and tp!1886083 tp!1886084))))

(declare-fun b!6870659 () Bool)

(assert (=> b!6870659 (= e!4141655 tp_is_empty!42647)))

(assert (= (and b!6869209 ((_ is ElementMatch!16697) (h!72714 (exprs!6581 setElem!47231)))) b!6870659))

(assert (= (and b!6869209 ((_ is Concat!25542) (h!72714 (exprs!6581 setElem!47231)))) b!6870660))

(assert (= (and b!6869209 ((_ is Star!16697) (h!72714 (exprs!6581 setElem!47231)))) b!6870661))

(assert (= (and b!6869209 ((_ is Union!16697) (h!72714 (exprs!6581 setElem!47231)))) b!6870662))

(declare-fun b!6870668 () Bool)

(declare-fun e!4141657 () Bool)

(declare-fun tp!1886093 () Bool)

(declare-fun tp!1886099 () Bool)

(assert (=> b!6870668 (= e!4141657 (and tp!1886093 tp!1886099))))

(assert (=> b!6869209 (= tp!1885731 e!4141657)))

(assert (= (and b!6869209 ((_ is Cons!66266) (t!380133 (exprs!6581 setElem!47231)))) b!6870668))

(declare-fun b!6870674 () Bool)

(declare-fun e!4141659 () Bool)

(declare-fun tp!1886104 () Bool)

(assert (=> b!6870674 (= e!4141659 tp!1886104)))

(declare-fun b!6870675 () Bool)

(declare-fun tp!1886102 () Bool)

(declare-fun tp!1886103 () Bool)

(assert (=> b!6870675 (= e!4141659 (and tp!1886102 tp!1886103))))

(assert (=> b!6869154 (= tp!1885659 e!4141659)))

(declare-fun b!6870673 () Bool)

(declare-fun tp!1886100 () Bool)

(declare-fun tp!1886101 () Bool)

(assert (=> b!6870673 (= e!4141659 (and tp!1886100 tp!1886101))))

(declare-fun b!6870672 () Bool)

(assert (=> b!6870672 (= e!4141659 tp_is_empty!42647)))

(assert (= (and b!6869154 ((_ is ElementMatch!16697) (regOne!33907 (regOne!33906 (reg!17026 r!7292))))) b!6870672))

(assert (= (and b!6869154 ((_ is Concat!25542) (regOne!33907 (regOne!33906 (reg!17026 r!7292))))) b!6870673))

(assert (= (and b!6869154 ((_ is Star!16697) (regOne!33907 (regOne!33906 (reg!17026 r!7292))))) b!6870674))

(assert (= (and b!6869154 ((_ is Union!16697) (regOne!33907 (regOne!33906 (reg!17026 r!7292))))) b!6870675))

(declare-fun b!6870680 () Bool)

(declare-fun e!4141662 () Bool)

(declare-fun tp!1886111 () Bool)

(assert (=> b!6870680 (= e!4141662 tp!1886111)))

(declare-fun b!6870681 () Bool)

(declare-fun tp!1886109 () Bool)

(declare-fun tp!1886110 () Bool)

(assert (=> b!6870681 (= e!4141662 (and tp!1886109 tp!1886110))))

(assert (=> b!6869154 (= tp!1885660 e!4141662)))

(declare-fun b!6870679 () Bool)

(declare-fun tp!1886107 () Bool)

(declare-fun tp!1886108 () Bool)

(assert (=> b!6870679 (= e!4141662 (and tp!1886107 tp!1886108))))

(declare-fun b!6870678 () Bool)

(assert (=> b!6870678 (= e!4141662 tp_is_empty!42647)))

(assert (= (and b!6869154 ((_ is ElementMatch!16697) (regTwo!33907 (regOne!33906 (reg!17026 r!7292))))) b!6870678))

(assert (= (and b!6869154 ((_ is Concat!25542) (regTwo!33907 (regOne!33906 (reg!17026 r!7292))))) b!6870679))

(assert (= (and b!6869154 ((_ is Star!16697) (regTwo!33907 (regOne!33906 (reg!17026 r!7292))))) b!6870680))

(assert (= (and b!6869154 ((_ is Union!16697) (regTwo!33907 (regOne!33906 (reg!17026 r!7292))))) b!6870681))

(declare-fun b!6870689 () Bool)

(declare-fun e!4141665 () Bool)

(declare-fun tp!1886122 () Bool)

(assert (=> b!6870689 (= e!4141665 tp!1886122)))

(declare-fun b!6870690 () Bool)

(declare-fun tp!1886120 () Bool)

(declare-fun tp!1886121 () Bool)

(assert (=> b!6870690 (= e!4141665 (and tp!1886120 tp!1886121))))

(assert (=> b!6869204 (= tp!1885722 e!4141665)))

(declare-fun b!6870688 () Bool)

(declare-fun tp!1886118 () Bool)

(declare-fun tp!1886119 () Bool)

(assert (=> b!6870688 (= e!4141665 (and tp!1886118 tp!1886119))))

(declare-fun b!6870687 () Bool)

(assert (=> b!6870687 (= e!4141665 tp_is_empty!42647)))

(assert (= (and b!6869204 ((_ is ElementMatch!16697) (regOne!33906 (reg!17026 (regOne!33907 r!7292))))) b!6870687))

(assert (= (and b!6869204 ((_ is Concat!25542) (regOne!33906 (reg!17026 (regOne!33907 r!7292))))) b!6870688))

(assert (= (and b!6869204 ((_ is Star!16697) (regOne!33906 (reg!17026 (regOne!33907 r!7292))))) b!6870689))

(assert (= (and b!6869204 ((_ is Union!16697) (regOne!33906 (reg!17026 (regOne!33907 r!7292))))) b!6870690))

(declare-fun b!6870697 () Bool)

(declare-fun e!4141667 () Bool)

(declare-fun tp!1886132 () Bool)

(assert (=> b!6870697 (= e!4141667 tp!1886132)))

(declare-fun b!6870698 () Bool)

(declare-fun tp!1886130 () Bool)

(declare-fun tp!1886131 () Bool)

(assert (=> b!6870698 (= e!4141667 (and tp!1886130 tp!1886131))))

(assert (=> b!6869204 (= tp!1885723 e!4141667)))

(declare-fun b!6870696 () Bool)

(declare-fun tp!1886128 () Bool)

(declare-fun tp!1886129 () Bool)

(assert (=> b!6870696 (= e!4141667 (and tp!1886128 tp!1886129))))

(declare-fun b!6870695 () Bool)

(assert (=> b!6870695 (= e!4141667 tp_is_empty!42647)))

(assert (= (and b!6869204 ((_ is ElementMatch!16697) (regTwo!33906 (reg!17026 (regOne!33907 r!7292))))) b!6870695))

(assert (= (and b!6869204 ((_ is Concat!25542) (regTwo!33906 (reg!17026 (regOne!33907 r!7292))))) b!6870696))

(assert (= (and b!6869204 ((_ is Star!16697) (regTwo!33906 (reg!17026 (regOne!33907 r!7292))))) b!6870697))

(assert (= (and b!6869204 ((_ is Union!16697) (regTwo!33906 (reg!17026 (regOne!33907 r!7292))))) b!6870698))

(declare-fun b!6870702 () Bool)

(declare-fun e!4141669 () Bool)

(declare-fun tp!1886139 () Bool)

(assert (=> b!6870702 (= e!4141669 tp!1886139)))

(declare-fun b!6870703 () Bool)

(declare-fun tp!1886137 () Bool)

(declare-fun tp!1886138 () Bool)

(assert (=> b!6870703 (= e!4141669 (and tp!1886137 tp!1886138))))

(assert (=> b!6869206 (= tp!1885724 e!4141669)))

(declare-fun b!6870701 () Bool)

(declare-fun tp!1886135 () Bool)

(declare-fun tp!1886136 () Bool)

(assert (=> b!6870701 (= e!4141669 (and tp!1886135 tp!1886136))))

(declare-fun b!6870700 () Bool)

(assert (=> b!6870700 (= e!4141669 tp_is_empty!42647)))

(assert (= (and b!6869206 ((_ is ElementMatch!16697) (regOne!33907 (reg!17026 (regOne!33907 r!7292))))) b!6870700))

(assert (= (and b!6869206 ((_ is Concat!25542) (regOne!33907 (reg!17026 (regOne!33907 r!7292))))) b!6870701))

(assert (= (and b!6869206 ((_ is Star!16697) (regOne!33907 (reg!17026 (regOne!33907 r!7292))))) b!6870702))

(assert (= (and b!6869206 ((_ is Union!16697) (regOne!33907 (reg!17026 (regOne!33907 r!7292))))) b!6870703))

(declare-fun b!6870710 () Bool)

(declare-fun e!4141671 () Bool)

(declare-fun tp!1886149 () Bool)

(assert (=> b!6870710 (= e!4141671 tp!1886149)))

(declare-fun b!6870711 () Bool)

(declare-fun tp!1886147 () Bool)

(declare-fun tp!1886148 () Bool)

(assert (=> b!6870711 (= e!4141671 (and tp!1886147 tp!1886148))))

(assert (=> b!6869206 (= tp!1885725 e!4141671)))

(declare-fun b!6870709 () Bool)

(declare-fun tp!1886145 () Bool)

(declare-fun tp!1886146 () Bool)

(assert (=> b!6870709 (= e!4141671 (and tp!1886145 tp!1886146))))

(declare-fun b!6870708 () Bool)

(assert (=> b!6870708 (= e!4141671 tp_is_empty!42647)))

(assert (= (and b!6869206 ((_ is ElementMatch!16697) (regTwo!33907 (reg!17026 (regOne!33907 r!7292))))) b!6870708))

(assert (= (and b!6869206 ((_ is Concat!25542) (regTwo!33907 (reg!17026 (regOne!33907 r!7292))))) b!6870709))

(assert (= (and b!6869206 ((_ is Star!16697) (regTwo!33907 (reg!17026 (regOne!33907 r!7292))))) b!6870710))

(assert (= (and b!6869206 ((_ is Union!16697) (regTwo!33907 (reg!17026 (regOne!33907 r!7292))))) b!6870711))

(declare-fun b!6870718 () Bool)

(declare-fun e!4141673 () Bool)

(declare-fun tp!1886159 () Bool)

(assert (=> b!6870718 (= e!4141673 tp!1886159)))

(declare-fun b!6870719 () Bool)

(declare-fun tp!1886157 () Bool)

(declare-fun tp!1886158 () Bool)

(assert (=> b!6870719 (= e!4141673 (and tp!1886157 tp!1886158))))

(assert (=> b!6869131 (= tp!1885631 e!4141673)))

(declare-fun b!6870717 () Bool)

(declare-fun tp!1886155 () Bool)

(declare-fun tp!1886156 () Bool)

(assert (=> b!6870717 (= e!4141673 (and tp!1886155 tp!1886156))))

(declare-fun b!6870716 () Bool)

(assert (=> b!6870716 (= e!4141673 tp_is_empty!42647)))

(assert (= (and b!6869131 ((_ is ElementMatch!16697) (h!72714 (exprs!6581 (h!72715 (t!380134 zl!343)))))) b!6870716))

(assert (= (and b!6869131 ((_ is Concat!25542) (h!72714 (exprs!6581 (h!72715 (t!380134 zl!343)))))) b!6870717))

(assert (= (and b!6869131 ((_ is Star!16697) (h!72714 (exprs!6581 (h!72715 (t!380134 zl!343)))))) b!6870718))

(assert (= (and b!6869131 ((_ is Union!16697) (h!72714 (exprs!6581 (h!72715 (t!380134 zl!343)))))) b!6870719))

(declare-fun b!6870724 () Bool)

(declare-fun e!4141675 () Bool)

(declare-fun tp!1886165 () Bool)

(declare-fun tp!1886166 () Bool)

(assert (=> b!6870724 (= e!4141675 (and tp!1886165 tp!1886166))))

(assert (=> b!6869131 (= tp!1885632 e!4141675)))

(assert (= (and b!6869131 ((_ is Cons!66266) (t!380133 (exprs!6581 (h!72715 (t!380134 zl!343)))))) b!6870724))

(declare-fun b!6870731 () Bool)

(declare-fun e!4141677 () Bool)

(declare-fun tp!1886176 () Bool)

(assert (=> b!6870731 (= e!4141677 tp!1886176)))

(declare-fun b!6870732 () Bool)

(declare-fun tp!1886174 () Bool)

(declare-fun tp!1886175 () Bool)

(assert (=> b!6870732 (= e!4141677 (and tp!1886174 tp!1886175))))

(assert (=> b!6869197 (= tp!1885716 e!4141677)))

(declare-fun b!6870730 () Bool)

(declare-fun tp!1886172 () Bool)

(declare-fun tp!1886173 () Bool)

(assert (=> b!6870730 (= e!4141677 (and tp!1886172 tp!1886173))))

(declare-fun b!6870729 () Bool)

(assert (=> b!6870729 (= e!4141677 tp_is_empty!42647)))

(assert (= (and b!6869197 ((_ is ElementMatch!16697) (reg!17026 (regOne!33907 (regOne!33906 r!7292))))) b!6870729))

(assert (= (and b!6869197 ((_ is Concat!25542) (reg!17026 (regOne!33907 (regOne!33906 r!7292))))) b!6870730))

(assert (= (and b!6869197 ((_ is Star!16697) (reg!17026 (regOne!33907 (regOne!33906 r!7292))))) b!6870731))

(assert (= (and b!6869197 ((_ is Union!16697) (reg!17026 (regOne!33907 (regOne!33906 r!7292))))) b!6870732))

(declare-fun b!6870739 () Bool)

(declare-fun e!4141679 () Bool)

(declare-fun tp!1886186 () Bool)

(assert (=> b!6870739 (= e!4141679 tp!1886186)))

(declare-fun b!6870740 () Bool)

(declare-fun tp!1886184 () Bool)

(declare-fun tp!1886185 () Bool)

(assert (=> b!6870740 (= e!4141679 (and tp!1886184 tp!1886185))))

(assert (=> b!6869188 (= tp!1885702 e!4141679)))

(declare-fun b!6870738 () Bool)

(declare-fun tp!1886182 () Bool)

(declare-fun tp!1886183 () Bool)

(assert (=> b!6870738 (= e!4141679 (and tp!1886182 tp!1886183))))

(declare-fun b!6870737 () Bool)

(assert (=> b!6870737 (= e!4141679 tp_is_empty!42647)))

(assert (= (and b!6869188 ((_ is ElementMatch!16697) (regOne!33906 (regOne!33907 (regOne!33907 r!7292))))) b!6870737))

(assert (= (and b!6869188 ((_ is Concat!25542) (regOne!33906 (regOne!33907 (regOne!33907 r!7292))))) b!6870738))

(assert (= (and b!6869188 ((_ is Star!16697) (regOne!33906 (regOne!33907 (regOne!33907 r!7292))))) b!6870739))

(assert (= (and b!6869188 ((_ is Union!16697) (regOne!33906 (regOne!33907 (regOne!33907 r!7292))))) b!6870740))

(declare-fun b!6870747 () Bool)

(declare-fun e!4141681 () Bool)

(declare-fun tp!1886196 () Bool)

(assert (=> b!6870747 (= e!4141681 tp!1886196)))

(declare-fun b!6870748 () Bool)

(declare-fun tp!1886194 () Bool)

(declare-fun tp!1886195 () Bool)

(assert (=> b!6870748 (= e!4141681 (and tp!1886194 tp!1886195))))

(assert (=> b!6869188 (= tp!1885703 e!4141681)))

(declare-fun b!6870746 () Bool)

(declare-fun tp!1886192 () Bool)

(declare-fun tp!1886193 () Bool)

(assert (=> b!6870746 (= e!4141681 (and tp!1886192 tp!1886193))))

(declare-fun b!6870745 () Bool)

(assert (=> b!6870745 (= e!4141681 tp_is_empty!42647)))

(assert (= (and b!6869188 ((_ is ElementMatch!16697) (regTwo!33906 (regOne!33907 (regOne!33907 r!7292))))) b!6870745))

(assert (= (and b!6869188 ((_ is Concat!25542) (regTwo!33906 (regOne!33907 (regOne!33907 r!7292))))) b!6870746))

(assert (= (and b!6869188 ((_ is Star!16697) (regTwo!33906 (regOne!33907 (regOne!33907 r!7292))))) b!6870747))

(assert (= (and b!6869188 ((_ is Union!16697) (regTwo!33906 (regOne!33907 (regOne!33907 r!7292))))) b!6870748))

(declare-fun b!6870755 () Bool)

(declare-fun e!4141683 () Bool)

(declare-fun tp!1886206 () Bool)

(assert (=> b!6870755 (= e!4141683 tp!1886206)))

(declare-fun b!6870756 () Bool)

(declare-fun tp!1886204 () Bool)

(declare-fun tp!1886205 () Bool)

(assert (=> b!6870756 (= e!4141683 (and tp!1886204 tp!1886205))))

(assert (=> b!6869190 (= tp!1885704 e!4141683)))

(declare-fun b!6870754 () Bool)

(declare-fun tp!1886202 () Bool)

(declare-fun tp!1886203 () Bool)

(assert (=> b!6870754 (= e!4141683 (and tp!1886202 tp!1886203))))

(declare-fun b!6870753 () Bool)

(assert (=> b!6870753 (= e!4141683 tp_is_empty!42647)))

(assert (= (and b!6869190 ((_ is ElementMatch!16697) (regOne!33907 (regOne!33907 (regOne!33907 r!7292))))) b!6870753))

(assert (= (and b!6869190 ((_ is Concat!25542) (regOne!33907 (regOne!33907 (regOne!33907 r!7292))))) b!6870754))

(assert (= (and b!6869190 ((_ is Star!16697) (regOne!33907 (regOne!33907 (regOne!33907 r!7292))))) b!6870755))

(assert (= (and b!6869190 ((_ is Union!16697) (regOne!33907 (regOne!33907 (regOne!33907 r!7292))))) b!6870756))

(declare-fun b!6870763 () Bool)

(declare-fun e!4141685 () Bool)

(declare-fun tp!1886216 () Bool)

(assert (=> b!6870763 (= e!4141685 tp!1886216)))

(declare-fun b!6870764 () Bool)

(declare-fun tp!1886214 () Bool)

(declare-fun tp!1886215 () Bool)

(assert (=> b!6870764 (= e!4141685 (and tp!1886214 tp!1886215))))

(assert (=> b!6869190 (= tp!1885705 e!4141685)))

(declare-fun b!6870762 () Bool)

(declare-fun tp!1886212 () Bool)

(declare-fun tp!1886213 () Bool)

(assert (=> b!6870762 (= e!4141685 (and tp!1886212 tp!1886213))))

(declare-fun b!6870761 () Bool)

(assert (=> b!6870761 (= e!4141685 tp_is_empty!42647)))

(assert (= (and b!6869190 ((_ is ElementMatch!16697) (regTwo!33907 (regOne!33907 (regOne!33907 r!7292))))) b!6870761))

(assert (= (and b!6869190 ((_ is Concat!25542) (regTwo!33907 (regOne!33907 (regOne!33907 r!7292))))) b!6870762))

(assert (= (and b!6869190 ((_ is Star!16697) (regTwo!33907 (regOne!33907 (regOne!33907 r!7292))))) b!6870763))

(assert (= (and b!6869190 ((_ is Union!16697) (regTwo!33907 (regOne!33907 (regOne!33907 r!7292))))) b!6870764))

(declare-fun b!6870771 () Bool)

(declare-fun e!4141687 () Bool)

(declare-fun tp!1886226 () Bool)

(assert (=> b!6870771 (= e!4141687 tp!1886226)))

(declare-fun b!6870772 () Bool)

(declare-fun tp!1886224 () Bool)

(declare-fun tp!1886225 () Bool)

(assert (=> b!6870772 (= e!4141687 (and tp!1886224 tp!1886225))))

(assert (=> b!6869115 (= tp!1885609 e!4141687)))

(declare-fun b!6870770 () Bool)

(declare-fun tp!1886222 () Bool)

(declare-fun tp!1886223 () Bool)

(assert (=> b!6870770 (= e!4141687 (and tp!1886222 tp!1886223))))

(declare-fun b!6870769 () Bool)

(assert (=> b!6870769 (= e!4141687 tp_is_empty!42647)))

(assert (= (and b!6869115 ((_ is ElementMatch!16697) (regOne!33906 (reg!17026 (regTwo!33906 r!7292))))) b!6870769))

(assert (= (and b!6869115 ((_ is Concat!25542) (regOne!33906 (reg!17026 (regTwo!33906 r!7292))))) b!6870770))

(assert (= (and b!6869115 ((_ is Star!16697) (regOne!33906 (reg!17026 (regTwo!33906 r!7292))))) b!6870771))

(assert (= (and b!6869115 ((_ is Union!16697) (regOne!33906 (reg!17026 (regTwo!33906 r!7292))))) b!6870772))

(declare-fun b!6870775 () Bool)

(declare-fun e!4141688 () Bool)

(declare-fun tp!1886231 () Bool)

(assert (=> b!6870775 (= e!4141688 tp!1886231)))

(declare-fun b!6870776 () Bool)

(declare-fun tp!1886229 () Bool)

(declare-fun tp!1886230 () Bool)

(assert (=> b!6870776 (= e!4141688 (and tp!1886229 tp!1886230))))

(assert (=> b!6869115 (= tp!1885610 e!4141688)))

(declare-fun b!6870774 () Bool)

(declare-fun tp!1886227 () Bool)

(declare-fun tp!1886228 () Bool)

(assert (=> b!6870774 (= e!4141688 (and tp!1886227 tp!1886228))))

(declare-fun b!6870773 () Bool)

(assert (=> b!6870773 (= e!4141688 tp_is_empty!42647)))

(assert (= (and b!6869115 ((_ is ElementMatch!16697) (regTwo!33906 (reg!17026 (regTwo!33906 r!7292))))) b!6870773))

(assert (= (and b!6869115 ((_ is Concat!25542) (regTwo!33906 (reg!17026 (regTwo!33906 r!7292))))) b!6870774))

(assert (= (and b!6869115 ((_ is Star!16697) (regTwo!33906 (reg!17026 (regTwo!33906 r!7292))))) b!6870775))

(assert (= (and b!6869115 ((_ is Union!16697) (regTwo!33906 (reg!17026 (regTwo!33906 r!7292))))) b!6870776))

(declare-fun b!6870779 () Bool)

(declare-fun e!4141689 () Bool)

(declare-fun tp!1886236 () Bool)

(assert (=> b!6870779 (= e!4141689 tp!1886236)))

(declare-fun b!6870780 () Bool)

(declare-fun tp!1886234 () Bool)

(declare-fun tp!1886235 () Bool)

(assert (=> b!6870780 (= e!4141689 (and tp!1886234 tp!1886235))))

(assert (=> b!6869117 (= tp!1885611 e!4141689)))

(declare-fun b!6870778 () Bool)

(declare-fun tp!1886232 () Bool)

(declare-fun tp!1886233 () Bool)

(assert (=> b!6870778 (= e!4141689 (and tp!1886232 tp!1886233))))

(declare-fun b!6870777 () Bool)

(assert (=> b!6870777 (= e!4141689 tp_is_empty!42647)))

(assert (= (and b!6869117 ((_ is ElementMatch!16697) (regOne!33907 (reg!17026 (regTwo!33906 r!7292))))) b!6870777))

(assert (= (and b!6869117 ((_ is Concat!25542) (regOne!33907 (reg!17026 (regTwo!33906 r!7292))))) b!6870778))

(assert (= (and b!6869117 ((_ is Star!16697) (regOne!33907 (reg!17026 (regTwo!33906 r!7292))))) b!6870779))

(assert (= (and b!6869117 ((_ is Union!16697) (regOne!33907 (reg!17026 (regTwo!33906 r!7292))))) b!6870780))

(declare-fun b!6870787 () Bool)

(declare-fun e!4141691 () Bool)

(declare-fun tp!1886246 () Bool)

(assert (=> b!6870787 (= e!4141691 tp!1886246)))

(declare-fun b!6870788 () Bool)

(declare-fun tp!1886244 () Bool)

(declare-fun tp!1886245 () Bool)

(assert (=> b!6870788 (= e!4141691 (and tp!1886244 tp!1886245))))

(assert (=> b!6869117 (= tp!1885612 e!4141691)))

(declare-fun b!6870786 () Bool)

(declare-fun tp!1886242 () Bool)

(declare-fun tp!1886243 () Bool)

(assert (=> b!6870786 (= e!4141691 (and tp!1886242 tp!1886243))))

(declare-fun b!6870785 () Bool)

(assert (=> b!6870785 (= e!4141691 tp_is_empty!42647)))

(assert (= (and b!6869117 ((_ is ElementMatch!16697) (regTwo!33907 (reg!17026 (regTwo!33906 r!7292))))) b!6870785))

(assert (= (and b!6869117 ((_ is Concat!25542) (regTwo!33907 (reg!17026 (regTwo!33906 r!7292))))) b!6870786))

(assert (= (and b!6869117 ((_ is Star!16697) (regTwo!33907 (reg!17026 (regTwo!33906 r!7292))))) b!6870787))

(assert (= (and b!6869117 ((_ is Union!16697) (regTwo!33907 (reg!17026 (regTwo!33906 r!7292))))) b!6870788))

(declare-fun b!6870795 () Bool)

(declare-fun e!4141693 () Bool)

(declare-fun tp!1886256 () Bool)

(assert (=> b!6870795 (= e!4141693 tp!1886256)))

(declare-fun b!6870796 () Bool)

(declare-fun tp!1886254 () Bool)

(declare-fun tp!1886255 () Bool)

(assert (=> b!6870796 (= e!4141693 (and tp!1886254 tp!1886255))))

(assert (=> b!6869108 (= tp!1885603 e!4141693)))

(declare-fun b!6870794 () Bool)

(declare-fun tp!1886252 () Bool)

(declare-fun tp!1886253 () Bool)

(assert (=> b!6870794 (= e!4141693 (and tp!1886252 tp!1886253))))

(declare-fun b!6870793 () Bool)

(assert (=> b!6870793 (= e!4141693 tp_is_empty!42647)))

(assert (= (and b!6869108 ((_ is ElementMatch!16697) (reg!17026 (regOne!33906 (regTwo!33907 r!7292))))) b!6870793))

(assert (= (and b!6869108 ((_ is Concat!25542) (reg!17026 (regOne!33906 (regTwo!33907 r!7292))))) b!6870794))

(assert (= (and b!6869108 ((_ is Star!16697) (reg!17026 (regOne!33906 (regTwo!33907 r!7292))))) b!6870795))

(assert (= (and b!6869108 ((_ is Union!16697) (reg!17026 (regOne!33906 (regTwo!33907 r!7292))))) b!6870796))

(declare-fun b!6870804 () Bool)

(declare-fun e!4141696 () Bool)

(declare-fun tp!1886268 () Bool)

(assert (=> b!6870804 (= e!4141696 tp!1886268)))

(declare-fun b!6870805 () Bool)

(declare-fun tp!1886266 () Bool)

(declare-fun tp!1886267 () Bool)

(assert (=> b!6870805 (= e!4141696 (and tp!1886266 tp!1886267))))

(assert (=> b!6869181 (= tp!1885696 e!4141696)))

(declare-fun b!6870803 () Bool)

(declare-fun tp!1886264 () Bool)

(declare-fun tp!1886265 () Bool)

(assert (=> b!6870803 (= e!4141696 (and tp!1886264 tp!1886265))))

(declare-fun b!6870802 () Bool)

(assert (=> b!6870802 (= e!4141696 tp_is_empty!42647)))

(assert (= (and b!6869181 ((_ is ElementMatch!16697) (reg!17026 (regOne!33907 (reg!17026 r!7292))))) b!6870802))

(assert (= (and b!6869181 ((_ is Concat!25542) (reg!17026 (regOne!33907 (reg!17026 r!7292))))) b!6870803))

(assert (= (and b!6869181 ((_ is Star!16697) (reg!17026 (regOne!33907 (reg!17026 r!7292))))) b!6870804))

(assert (= (and b!6869181 ((_ is Union!16697) (reg!17026 (regOne!33907 (reg!17026 r!7292))))) b!6870805))

(declare-fun b!6870812 () Bool)

(declare-fun e!4141698 () Bool)

(declare-fun tp!1886278 () Bool)

(assert (=> b!6870812 (= e!4141698 tp!1886278)))

(declare-fun b!6870813 () Bool)

(declare-fun tp!1886276 () Bool)

(declare-fun tp!1886277 () Bool)

(assert (=> b!6870813 (= e!4141698 (and tp!1886276 tp!1886277))))

(assert (=> b!6869172 (= tp!1885682 e!4141698)))

(declare-fun b!6870811 () Bool)

(declare-fun tp!1886274 () Bool)

(declare-fun tp!1886275 () Bool)

(assert (=> b!6870811 (= e!4141698 (and tp!1886274 tp!1886275))))

(declare-fun b!6870810 () Bool)

(assert (=> b!6870810 (= e!4141698 tp_is_empty!42647)))

(assert (= (and b!6869172 ((_ is ElementMatch!16697) (regOne!33906 (regOne!33906 (regOne!33906 r!7292))))) b!6870810))

(assert (= (and b!6869172 ((_ is Concat!25542) (regOne!33906 (regOne!33906 (regOne!33906 r!7292))))) b!6870811))

(assert (= (and b!6869172 ((_ is Star!16697) (regOne!33906 (regOne!33906 (regOne!33906 r!7292))))) b!6870812))

(assert (= (and b!6869172 ((_ is Union!16697) (regOne!33906 (regOne!33906 (regOne!33906 r!7292))))) b!6870813))

(declare-fun b!6870820 () Bool)

(declare-fun e!4141700 () Bool)

(declare-fun tp!1886288 () Bool)

(assert (=> b!6870820 (= e!4141700 tp!1886288)))

(declare-fun b!6870821 () Bool)

(declare-fun tp!1886286 () Bool)

(declare-fun tp!1886287 () Bool)

(assert (=> b!6870821 (= e!4141700 (and tp!1886286 tp!1886287))))

(assert (=> b!6869172 (= tp!1885683 e!4141700)))

(declare-fun b!6870819 () Bool)

(declare-fun tp!1886284 () Bool)

(declare-fun tp!1886285 () Bool)

(assert (=> b!6870819 (= e!4141700 (and tp!1886284 tp!1886285))))

(declare-fun b!6870818 () Bool)

(assert (=> b!6870818 (= e!4141700 tp_is_empty!42647)))

(assert (= (and b!6869172 ((_ is ElementMatch!16697) (regTwo!33906 (regOne!33906 (regOne!33906 r!7292))))) b!6870818))

(assert (= (and b!6869172 ((_ is Concat!25542) (regTwo!33906 (regOne!33906 (regOne!33906 r!7292))))) b!6870819))

(assert (= (and b!6869172 ((_ is Star!16697) (regTwo!33906 (regOne!33906 (regOne!33906 r!7292))))) b!6870820))

(assert (= (and b!6869172 ((_ is Union!16697) (regTwo!33906 (regOne!33906 (regOne!33906 r!7292))))) b!6870821))

(declare-fun b!6870828 () Bool)

(declare-fun e!4141702 () Bool)

(declare-fun tp!1886298 () Bool)

(assert (=> b!6870828 (= e!4141702 tp!1886298)))

(declare-fun b!6870829 () Bool)

(declare-fun tp!1886296 () Bool)

(declare-fun tp!1886297 () Bool)

(assert (=> b!6870829 (= e!4141702 (and tp!1886296 tp!1886297))))

(assert (=> b!6869125 (= tp!1885625 e!4141702)))

(declare-fun b!6870827 () Bool)

(declare-fun tp!1886294 () Bool)

(declare-fun tp!1886295 () Bool)

(assert (=> b!6870827 (= e!4141702 (and tp!1886294 tp!1886295))))

(declare-fun b!6870826 () Bool)

(assert (=> b!6870826 (= e!4141702 tp_is_empty!42647)))

(assert (= (and b!6869125 ((_ is ElementMatch!16697) (reg!17026 (regOne!33906 (regTwo!33906 r!7292))))) b!6870826))

(assert (= (and b!6869125 ((_ is Concat!25542) (reg!17026 (regOne!33906 (regTwo!33906 r!7292))))) b!6870827))

(assert (= (and b!6869125 ((_ is Star!16697) (reg!17026 (regOne!33906 (regTwo!33906 r!7292))))) b!6870828))

(assert (= (and b!6869125 ((_ is Union!16697) (reg!17026 (regOne!33906 (regTwo!33906 r!7292))))) b!6870829))

(declare-fun b!6870836 () Bool)

(declare-fun e!4141704 () Bool)

(declare-fun tp!1886308 () Bool)

(assert (=> b!6870836 (= e!4141704 tp!1886308)))

(declare-fun b!6870837 () Bool)

(declare-fun tp!1886306 () Bool)

(declare-fun tp!1886307 () Bool)

(assert (=> b!6870837 (= e!4141704 (and tp!1886306 tp!1886307))))

(assert (=> b!6869174 (= tp!1885684 e!4141704)))

(declare-fun b!6870835 () Bool)

(declare-fun tp!1886304 () Bool)

(declare-fun tp!1886305 () Bool)

(assert (=> b!6870835 (= e!4141704 (and tp!1886304 tp!1886305))))

(declare-fun b!6870834 () Bool)

(assert (=> b!6870834 (= e!4141704 tp_is_empty!42647)))

(assert (= (and b!6869174 ((_ is ElementMatch!16697) (regOne!33907 (regOne!33906 (regOne!33906 r!7292))))) b!6870834))

(assert (= (and b!6869174 ((_ is Concat!25542) (regOne!33907 (regOne!33906 (regOne!33906 r!7292))))) b!6870835))

(assert (= (and b!6869174 ((_ is Star!16697) (regOne!33907 (regOne!33906 (regOne!33906 r!7292))))) b!6870836))

(assert (= (and b!6869174 ((_ is Union!16697) (regOne!33907 (regOne!33906 (regOne!33906 r!7292))))) b!6870837))

(declare-fun b!6870844 () Bool)

(declare-fun e!4141706 () Bool)

(declare-fun tp!1886318 () Bool)

(assert (=> b!6870844 (= e!4141706 tp!1886318)))

(declare-fun b!6870845 () Bool)

(declare-fun tp!1886316 () Bool)

(declare-fun tp!1886317 () Bool)

(assert (=> b!6870845 (= e!4141706 (and tp!1886316 tp!1886317))))

(assert (=> b!6869174 (= tp!1885685 e!4141706)))

(declare-fun b!6870843 () Bool)

(declare-fun tp!1886314 () Bool)

(declare-fun tp!1886315 () Bool)

(assert (=> b!6870843 (= e!4141706 (and tp!1886314 tp!1886315))))

(declare-fun b!6870842 () Bool)

(assert (=> b!6870842 (= e!4141706 tp_is_empty!42647)))

(assert (= (and b!6869174 ((_ is ElementMatch!16697) (regTwo!33907 (regOne!33906 (regOne!33906 r!7292))))) b!6870842))

(assert (= (and b!6869174 ((_ is Concat!25542) (regTwo!33907 (regOne!33906 (regOne!33906 r!7292))))) b!6870843))

(assert (= (and b!6869174 ((_ is Star!16697) (regTwo!33907 (regOne!33906 (regOne!33906 r!7292))))) b!6870844))

(assert (= (and b!6869174 ((_ is Union!16697) (regTwo!33907 (regOne!33906 (regOne!33906 r!7292))))) b!6870845))

(declare-fun b!6870852 () Bool)

(declare-fun e!4141708 () Bool)

(declare-fun tp!1886328 () Bool)

(assert (=> b!6870852 (= e!4141708 tp!1886328)))

(declare-fun b!6870853 () Bool)

(declare-fun tp!1886326 () Bool)

(declare-fun tp!1886327 () Bool)

(assert (=> b!6870853 (= e!4141708 (and tp!1886326 tp!1886327))))

(assert (=> b!6869099 (= tp!1885589 e!4141708)))

(declare-fun b!6870851 () Bool)

(declare-fun tp!1886324 () Bool)

(declare-fun tp!1886325 () Bool)

(assert (=> b!6870851 (= e!4141708 (and tp!1886324 tp!1886325))))

(declare-fun b!6870850 () Bool)

(assert (=> b!6870850 (= e!4141708 tp_is_empty!42647)))

(assert (= (and b!6869099 ((_ is ElementMatch!16697) (regOne!33906 (regTwo!33907 (regTwo!33906 r!7292))))) b!6870850))

(assert (= (and b!6869099 ((_ is Concat!25542) (regOne!33906 (regTwo!33907 (regTwo!33906 r!7292))))) b!6870851))

(assert (= (and b!6869099 ((_ is Star!16697) (regOne!33906 (regTwo!33907 (regTwo!33906 r!7292))))) b!6870852))

(assert (= (and b!6869099 ((_ is Union!16697) (regOne!33906 (regTwo!33907 (regTwo!33906 r!7292))))) b!6870853))

(declare-fun b!6870860 () Bool)

(declare-fun e!4141710 () Bool)

(declare-fun tp!1886338 () Bool)

(assert (=> b!6870860 (= e!4141710 tp!1886338)))

(declare-fun b!6870861 () Bool)

(declare-fun tp!1886336 () Bool)

(declare-fun tp!1886337 () Bool)

(assert (=> b!6870861 (= e!4141710 (and tp!1886336 tp!1886337))))

(assert (=> b!6869099 (= tp!1885590 e!4141710)))

(declare-fun b!6870859 () Bool)

(declare-fun tp!1886334 () Bool)

(declare-fun tp!1886335 () Bool)

(assert (=> b!6870859 (= e!4141710 (and tp!1886334 tp!1886335))))

(declare-fun b!6870858 () Bool)

(assert (=> b!6870858 (= e!4141710 tp_is_empty!42647)))

(assert (= (and b!6869099 ((_ is ElementMatch!16697) (regTwo!33906 (regTwo!33907 (regTwo!33906 r!7292))))) b!6870858))

(assert (= (and b!6869099 ((_ is Concat!25542) (regTwo!33906 (regTwo!33907 (regTwo!33906 r!7292))))) b!6870859))

(assert (= (and b!6869099 ((_ is Star!16697) (regTwo!33906 (regTwo!33907 (regTwo!33906 r!7292))))) b!6870860))

(assert (= (and b!6869099 ((_ is Union!16697) (regTwo!33906 (regTwo!33907 (regTwo!33906 r!7292))))) b!6870861))

(declare-fun b!6870868 () Bool)

(declare-fun e!4141712 () Bool)

(declare-fun tp!1886348 () Bool)

(assert (=> b!6870868 (= e!4141712 tp!1886348)))

(declare-fun b!6870869 () Bool)

(declare-fun tp!1886346 () Bool)

(declare-fun tp!1886347 () Bool)

(assert (=> b!6870869 (= e!4141712 (and tp!1886346 tp!1886347))))

(assert (=> b!6869101 (= tp!1885591 e!4141712)))

(declare-fun b!6870867 () Bool)

(declare-fun tp!1886344 () Bool)

(declare-fun tp!1886345 () Bool)

(assert (=> b!6870867 (= e!4141712 (and tp!1886344 tp!1886345))))

(declare-fun b!6870866 () Bool)

(assert (=> b!6870866 (= e!4141712 tp_is_empty!42647)))

(assert (= (and b!6869101 ((_ is ElementMatch!16697) (regOne!33907 (regTwo!33907 (regTwo!33906 r!7292))))) b!6870866))

(assert (= (and b!6869101 ((_ is Concat!25542) (regOne!33907 (regTwo!33907 (regTwo!33906 r!7292))))) b!6870867))

(assert (= (and b!6869101 ((_ is Star!16697) (regOne!33907 (regTwo!33907 (regTwo!33906 r!7292))))) b!6870868))

(assert (= (and b!6869101 ((_ is Union!16697) (regOne!33907 (regTwo!33907 (regTwo!33906 r!7292))))) b!6870869))

(declare-fun b!6870876 () Bool)

(declare-fun e!4141714 () Bool)

(declare-fun tp!1886358 () Bool)

(assert (=> b!6870876 (= e!4141714 tp!1886358)))

(declare-fun b!6870877 () Bool)

(declare-fun tp!1886356 () Bool)

(declare-fun tp!1886357 () Bool)

(assert (=> b!6870877 (= e!4141714 (and tp!1886356 tp!1886357))))

(assert (=> b!6869101 (= tp!1885592 e!4141714)))

(declare-fun b!6870875 () Bool)

(declare-fun tp!1886354 () Bool)

(declare-fun tp!1886355 () Bool)

(assert (=> b!6870875 (= e!4141714 (and tp!1886354 tp!1886355))))

(declare-fun b!6870874 () Bool)

(assert (=> b!6870874 (= e!4141714 tp_is_empty!42647)))

(assert (= (and b!6869101 ((_ is ElementMatch!16697) (regTwo!33907 (regTwo!33907 (regTwo!33906 r!7292))))) b!6870874))

(assert (= (and b!6869101 ((_ is Concat!25542) (regTwo!33907 (regTwo!33907 (regTwo!33906 r!7292))))) b!6870875))

(assert (= (and b!6869101 ((_ is Star!16697) (regTwo!33907 (regTwo!33907 (regTwo!33906 r!7292))))) b!6870876))

(assert (= (and b!6869101 ((_ is Union!16697) (regTwo!33907 (regTwo!33907 (regTwo!33906 r!7292))))) b!6870877))

(declare-fun b!6870885 () Bool)

(declare-fun e!4141716 () Bool)

(declare-fun tp!1886370 () Bool)

(assert (=> b!6870885 (= e!4141716 tp!1886370)))

(declare-fun b!6870886 () Bool)

(declare-fun tp!1886368 () Bool)

(declare-fun tp!1886369 () Bool)

(assert (=> b!6870886 (= e!4141716 (and tp!1886368 tp!1886369))))

(assert (=> b!6869141 (= tp!1885643 e!4141716)))

(declare-fun b!6870884 () Bool)

(declare-fun tp!1886366 () Bool)

(declare-fun tp!1886367 () Bool)

(assert (=> b!6870884 (= e!4141716 (and tp!1886366 tp!1886367))))

(declare-fun b!6870883 () Bool)

(assert (=> b!6870883 (= e!4141716 tp_is_empty!42647)))

(assert (= (and b!6869141 ((_ is ElementMatch!16697) (regOne!33906 (h!72714 (exprs!6581 setElem!47225))))) b!6870883))

(assert (= (and b!6869141 ((_ is Concat!25542) (regOne!33906 (h!72714 (exprs!6581 setElem!47225))))) b!6870884))

(assert (= (and b!6869141 ((_ is Star!16697) (regOne!33906 (h!72714 (exprs!6581 setElem!47225))))) b!6870885))

(assert (= (and b!6869141 ((_ is Union!16697) (regOne!33906 (h!72714 (exprs!6581 setElem!47225))))) b!6870886))

(declare-fun b!6870893 () Bool)

(declare-fun e!4141719 () Bool)

(declare-fun tp!1886380 () Bool)

(assert (=> b!6870893 (= e!4141719 tp!1886380)))

(declare-fun b!6870894 () Bool)

(declare-fun tp!1886378 () Bool)

(declare-fun tp!1886379 () Bool)

(assert (=> b!6870894 (= e!4141719 (and tp!1886378 tp!1886379))))

(assert (=> b!6869141 (= tp!1885644 e!4141719)))

(declare-fun b!6870892 () Bool)

(declare-fun tp!1886376 () Bool)

(declare-fun tp!1886377 () Bool)

(assert (=> b!6870892 (= e!4141719 (and tp!1886376 tp!1886377))))

(declare-fun b!6870891 () Bool)

(assert (=> b!6870891 (= e!4141719 tp_is_empty!42647)))

(assert (= (and b!6869141 ((_ is ElementMatch!16697) (regTwo!33906 (h!72714 (exprs!6581 setElem!47225))))) b!6870891))

(assert (= (and b!6869141 ((_ is Concat!25542) (regTwo!33906 (h!72714 (exprs!6581 setElem!47225))))) b!6870892))

(assert (= (and b!6869141 ((_ is Star!16697) (regTwo!33906 (h!72714 (exprs!6581 setElem!47225))))) b!6870893))

(assert (= (and b!6869141 ((_ is Union!16697) (regTwo!33906 (h!72714 (exprs!6581 setElem!47225))))) b!6870894))

(declare-fun b!6870901 () Bool)

(declare-fun e!4141721 () Bool)

(declare-fun tp!1886390 () Bool)

(assert (=> b!6870901 (= e!4141721 tp!1886390)))

(declare-fun b!6870902 () Bool)

(declare-fun tp!1886388 () Bool)

(declare-fun tp!1886389 () Bool)

(assert (=> b!6870902 (= e!4141721 (and tp!1886388 tp!1886389))))

(assert (=> b!6869165 (= tp!1885676 e!4141721)))

(declare-fun b!6870900 () Bool)

(declare-fun tp!1886386 () Bool)

(declare-fun tp!1886387 () Bool)

(assert (=> b!6870900 (= e!4141721 (and tp!1886386 tp!1886387))))

(declare-fun b!6870899 () Bool)

(assert (=> b!6870899 (= e!4141721 tp_is_empty!42647)))

(assert (= (and b!6869165 ((_ is ElementMatch!16697) (reg!17026 (regTwo!33906 (regOne!33907 r!7292))))) b!6870899))

(assert (= (and b!6869165 ((_ is Concat!25542) (reg!17026 (regTwo!33906 (regOne!33907 r!7292))))) b!6870900))

(assert (= (and b!6869165 ((_ is Star!16697) (reg!17026 (regTwo!33906 (regOne!33907 r!7292))))) b!6870901))

(assert (= (and b!6869165 ((_ is Union!16697) (reg!17026 (regTwo!33906 (regOne!33907 r!7292))))) b!6870902))

(declare-fun b!6870909 () Bool)

(declare-fun e!4141723 () Bool)

(declare-fun tp!1886400 () Bool)

(assert (=> b!6870909 (= e!4141723 tp!1886400)))

(declare-fun b!6870910 () Bool)

(declare-fun tp!1886398 () Bool)

(declare-fun tp!1886399 () Bool)

(assert (=> b!6870910 (= e!4141723 (and tp!1886398 tp!1886399))))

(assert (=> b!6869156 (= tp!1885662 e!4141723)))

(declare-fun b!6870908 () Bool)

(declare-fun tp!1886396 () Bool)

(declare-fun tp!1886397 () Bool)

(assert (=> b!6870908 (= e!4141723 (and tp!1886396 tp!1886397))))

(declare-fun b!6870907 () Bool)

(assert (=> b!6870907 (= e!4141723 tp_is_empty!42647)))

(assert (= (and b!6869156 ((_ is ElementMatch!16697) (regOne!33906 (regTwo!33906 (reg!17026 r!7292))))) b!6870907))

(assert (= (and b!6869156 ((_ is Concat!25542) (regOne!33906 (regTwo!33906 (reg!17026 r!7292))))) b!6870908))

(assert (= (and b!6869156 ((_ is Star!16697) (regOne!33906 (regTwo!33906 (reg!17026 r!7292))))) b!6870909))

(assert (= (and b!6869156 ((_ is Union!16697) (regOne!33906 (regTwo!33906 (reg!17026 r!7292))))) b!6870910))

(declare-fun b!6870917 () Bool)

(declare-fun e!4141725 () Bool)

(declare-fun tp!1886410 () Bool)

(assert (=> b!6870917 (= e!4141725 tp!1886410)))

(declare-fun b!6870918 () Bool)

(declare-fun tp!1886408 () Bool)

(declare-fun tp!1886409 () Bool)

(assert (=> b!6870918 (= e!4141725 (and tp!1886408 tp!1886409))))

(assert (=> b!6869156 (= tp!1885663 e!4141725)))

(declare-fun b!6870916 () Bool)

(declare-fun tp!1886406 () Bool)

(declare-fun tp!1886407 () Bool)

(assert (=> b!6870916 (= e!4141725 (and tp!1886406 tp!1886407))))

(declare-fun b!6870915 () Bool)

(assert (=> b!6870915 (= e!4141725 tp_is_empty!42647)))

(assert (= (and b!6869156 ((_ is ElementMatch!16697) (regTwo!33906 (regTwo!33906 (reg!17026 r!7292))))) b!6870915))

(assert (= (and b!6869156 ((_ is Concat!25542) (regTwo!33906 (regTwo!33906 (reg!17026 r!7292))))) b!6870916))

(assert (= (and b!6869156 ((_ is Star!16697) (regTwo!33906 (regTwo!33906 (reg!17026 r!7292))))) b!6870917))

(assert (= (and b!6869156 ((_ is Union!16697) (regTwo!33906 (regTwo!33906 (reg!17026 r!7292))))) b!6870918))

(declare-fun b!6870925 () Bool)

(declare-fun e!4141727 () Bool)

(declare-fun tp!1886420 () Bool)

(assert (=> b!6870925 (= e!4141727 tp!1886420)))

(declare-fun b!6870926 () Bool)

(declare-fun tp!1886418 () Bool)

(declare-fun tp!1886419 () Bool)

(assert (=> b!6870926 (= e!4141727 (and tp!1886418 tp!1886419))))

(assert (=> b!6869142 (= tp!1885647 e!4141727)))

(declare-fun b!6870924 () Bool)

(declare-fun tp!1886416 () Bool)

(declare-fun tp!1886417 () Bool)

(assert (=> b!6870924 (= e!4141727 (and tp!1886416 tp!1886417))))

(declare-fun b!6870923 () Bool)

(assert (=> b!6870923 (= e!4141727 tp_is_empty!42647)))

(assert (= (and b!6869142 ((_ is ElementMatch!16697) (reg!17026 (h!72714 (exprs!6581 setElem!47225))))) b!6870923))

(assert (= (and b!6869142 ((_ is Concat!25542) (reg!17026 (h!72714 (exprs!6581 setElem!47225))))) b!6870924))

(assert (= (and b!6869142 ((_ is Star!16697) (reg!17026 (h!72714 (exprs!6581 setElem!47225))))) b!6870925))

(assert (= (and b!6869142 ((_ is Union!16697) (reg!17026 (h!72714 (exprs!6581 setElem!47225))))) b!6870926))

(declare-fun b!6870933 () Bool)

(declare-fun e!4141729 () Bool)

(declare-fun tp!1886430 () Bool)

(assert (=> b!6870933 (= e!4141729 tp!1886430)))

(declare-fun b!6870934 () Bool)

(declare-fun tp!1886428 () Bool)

(declare-fun tp!1886429 () Bool)

(assert (=> b!6870934 (= e!4141729 (and tp!1886428 tp!1886429))))

(assert (=> b!6869134 (= tp!1885637 e!4141729)))

(declare-fun b!6870932 () Bool)

(declare-fun tp!1886426 () Bool)

(declare-fun tp!1886427 () Bool)

(assert (=> b!6870932 (= e!4141729 (and tp!1886426 tp!1886427))))

(declare-fun b!6870931 () Bool)

(assert (=> b!6870931 (= e!4141729 tp_is_empty!42647)))

(assert (= (and b!6869134 ((_ is ElementMatch!16697) (reg!17026 (regOne!33907 (regTwo!33907 r!7292))))) b!6870931))

(assert (= (and b!6869134 ((_ is Concat!25542) (reg!17026 (regOne!33907 (regTwo!33907 r!7292))))) b!6870932))

(assert (= (and b!6869134 ((_ is Star!16697) (reg!17026 (regOne!33907 (regTwo!33907 r!7292))))) b!6870933))

(assert (= (and b!6869134 ((_ is Union!16697) (reg!17026 (regOne!33907 (regTwo!33907 r!7292))))) b!6870934))

(declare-fun b!6870941 () Bool)

(declare-fun e!4141731 () Bool)

(declare-fun tp!1886440 () Bool)

(assert (=> b!6870941 (= e!4141731 tp!1886440)))

(declare-fun b!6870942 () Bool)

(declare-fun tp!1886438 () Bool)

(declare-fun tp!1886439 () Bool)

(assert (=> b!6870942 (= e!4141731 (and tp!1886438 tp!1886439))))

(assert (=> b!6869157 (= tp!1885666 e!4141731)))

(declare-fun b!6870940 () Bool)

(declare-fun tp!1886436 () Bool)

(declare-fun tp!1886437 () Bool)

(assert (=> b!6870940 (= e!4141731 (and tp!1886436 tp!1886437))))

(declare-fun b!6870939 () Bool)

(assert (=> b!6870939 (= e!4141731 tp_is_empty!42647)))

(assert (= (and b!6869157 ((_ is ElementMatch!16697) (reg!17026 (regTwo!33906 (reg!17026 r!7292))))) b!6870939))

(assert (= (and b!6869157 ((_ is Concat!25542) (reg!17026 (regTwo!33906 (reg!17026 r!7292))))) b!6870940))

(assert (= (and b!6869157 ((_ is Star!16697) (reg!17026 (regTwo!33906 (reg!17026 r!7292))))) b!6870941))

(assert (= (and b!6869157 ((_ is Union!16697) (reg!17026 (regTwo!33906 (reg!17026 r!7292))))) b!6870942))

(declare-fun b!6870949 () Bool)

(declare-fun e!4141733 () Bool)

(declare-fun tp!1886450 () Bool)

(assert (=> b!6870949 (= e!4141733 tp!1886450)))

(declare-fun b!6870950 () Bool)

(declare-fun tp!1886448 () Bool)

(declare-fun tp!1886449 () Bool)

(assert (=> b!6870950 (= e!4141733 (and tp!1886448 tp!1886449))))

(assert (=> b!6869148 (= tp!1885652 e!4141733)))

(declare-fun b!6870948 () Bool)

(declare-fun tp!1886446 () Bool)

(declare-fun tp!1886447 () Bool)

(assert (=> b!6870948 (= e!4141733 (and tp!1886446 tp!1886447))))

(declare-fun b!6870947 () Bool)

(assert (=> b!6870947 (= e!4141733 tp_is_empty!42647)))

(assert (= (and b!6869148 ((_ is ElementMatch!16697) (regOne!33906 (reg!17026 (reg!17026 r!7292))))) b!6870947))

(assert (= (and b!6869148 ((_ is Concat!25542) (regOne!33906 (reg!17026 (reg!17026 r!7292))))) b!6870948))

(assert (= (and b!6869148 ((_ is Star!16697) (regOne!33906 (reg!17026 (reg!17026 r!7292))))) b!6870949))

(assert (= (and b!6869148 ((_ is Union!16697) (regOne!33906 (reg!17026 (reg!17026 r!7292))))) b!6870950))

(declare-fun b!6870957 () Bool)

(declare-fun e!4141735 () Bool)

(declare-fun tp!1886460 () Bool)

(assert (=> b!6870957 (= e!4141735 tp!1886460)))

(declare-fun b!6870958 () Bool)

(declare-fun tp!1886458 () Bool)

(declare-fun tp!1886459 () Bool)

(assert (=> b!6870958 (= e!4141735 (and tp!1886458 tp!1886459))))

(assert (=> b!6869148 (= tp!1885653 e!4141735)))

(declare-fun b!6870956 () Bool)

(declare-fun tp!1886456 () Bool)

(declare-fun tp!1886457 () Bool)

(assert (=> b!6870956 (= e!4141735 (and tp!1886456 tp!1886457))))

(declare-fun b!6870955 () Bool)

(assert (=> b!6870955 (= e!4141735 tp_is_empty!42647)))

(assert (= (and b!6869148 ((_ is ElementMatch!16697) (regTwo!33906 (reg!17026 (reg!17026 r!7292))))) b!6870955))

(assert (= (and b!6869148 ((_ is Concat!25542) (regTwo!33906 (reg!17026 (reg!17026 r!7292))))) b!6870956))

(assert (= (and b!6869148 ((_ is Star!16697) (regTwo!33906 (reg!17026 (reg!17026 r!7292))))) b!6870957))

(assert (= (and b!6869148 ((_ is Union!16697) (regTwo!33906 (reg!17026 (reg!17026 r!7292))))) b!6870958))

(declare-fun condSetEmpty!47235 () Bool)

(assert (=> setNonEmpty!47233 (= condSetEmpty!47235 (= setRest!47233 ((as const (Array Context!12162 Bool)) false)))))

(declare-fun setRes!47235 () Bool)

(assert (=> setNonEmpty!47233 (= tp!1885727 setRes!47235)))

(declare-fun setIsEmpty!47235 () Bool)

(assert (=> setIsEmpty!47235 setRes!47235))

(declare-fun setElem!47235 () Context!12162)

(declare-fun tp!1886466 () Bool)

(declare-fun e!4141737 () Bool)

(declare-fun setNonEmpty!47235 () Bool)

(assert (=> setNonEmpty!47235 (= setRes!47235 (and tp!1886466 (inv!84989 setElem!47235) e!4141737))))

(declare-fun setRest!47235 () (InoxSet Context!12162))

(assert (=> setNonEmpty!47235 (= setRest!47233 ((_ map or) (store ((as const (Array Context!12162 Bool)) false) setElem!47235 true) setRest!47235))))

(declare-fun b!6870963 () Bool)

(declare-fun tp!1886467 () Bool)

(assert (=> b!6870963 (= e!4141737 tp!1886467)))

(assert (= (and setNonEmpty!47233 condSetEmpty!47235) setIsEmpty!47235))

(assert (= (and setNonEmpty!47233 (not condSetEmpty!47235)) setNonEmpty!47235))

(assert (= setNonEmpty!47235 b!6870963))

(declare-fun m!7601818 () Bool)

(assert (=> setNonEmpty!47235 m!7601818))

(declare-fun b!6870972 () Bool)

(declare-fun e!4141739 () Bool)

(declare-fun tp!1886477 () Bool)

(assert (=> b!6870972 (= e!4141739 tp!1886477)))

(declare-fun b!6870973 () Bool)

(declare-fun tp!1886475 () Bool)

(declare-fun tp!1886476 () Bool)

(assert (=> b!6870973 (= e!4141739 (and tp!1886475 tp!1886476))))

(assert (=> b!6869150 (= tp!1885654 e!4141739)))

(declare-fun b!6870970 () Bool)

(declare-fun tp!1886473 () Bool)

(declare-fun tp!1886474 () Bool)

(assert (=> b!6870970 (= e!4141739 (and tp!1886473 tp!1886474))))

(declare-fun b!6870968 () Bool)

(assert (=> b!6870968 (= e!4141739 tp_is_empty!42647)))

(assert (= (and b!6869150 ((_ is ElementMatch!16697) (regOne!33907 (reg!17026 (reg!17026 r!7292))))) b!6870968))

(assert (= (and b!6869150 ((_ is Concat!25542) (regOne!33907 (reg!17026 (reg!17026 r!7292))))) b!6870970))

(assert (= (and b!6869150 ((_ is Star!16697) (regOne!33907 (reg!17026 (reg!17026 r!7292))))) b!6870972))

(assert (= (and b!6869150 ((_ is Union!16697) (regOne!33907 (reg!17026 (reg!17026 r!7292))))) b!6870973))

(declare-fun b!6870982 () Bool)

(declare-fun e!4141741 () Bool)

(declare-fun tp!1886492 () Bool)

(assert (=> b!6870982 (= e!4141741 tp!1886492)))

(declare-fun b!6870983 () Bool)

(declare-fun tp!1886490 () Bool)

(declare-fun tp!1886491 () Bool)

(assert (=> b!6870983 (= e!4141741 (and tp!1886490 tp!1886491))))

(assert (=> b!6869150 (= tp!1885655 e!4141741)))

(declare-fun b!6870981 () Bool)

(declare-fun tp!1886488 () Bool)

(declare-fun tp!1886489 () Bool)

(assert (=> b!6870981 (= e!4141741 (and tp!1886488 tp!1886489))))

(declare-fun b!6870980 () Bool)

(assert (=> b!6870980 (= e!4141741 tp_is_empty!42647)))

(assert (= (and b!6869150 ((_ is ElementMatch!16697) (regTwo!33907 (reg!17026 (reg!17026 r!7292))))) b!6870980))

(assert (= (and b!6869150 ((_ is Concat!25542) (regTwo!33907 (reg!17026 (reg!17026 r!7292))))) b!6870981))

(assert (= (and b!6869150 ((_ is Star!16697) (regTwo!33907 (reg!17026 (reg!17026 r!7292))))) b!6870982))

(assert (= (and b!6869150 ((_ is Union!16697) (regTwo!33907 (reg!17026 (reg!17026 r!7292))))) b!6870983))

(declare-fun b!6870990 () Bool)

(declare-fun e!4141744 () Bool)

(declare-fun tp!1886502 () Bool)

(assert (=> b!6870990 (= e!4141744 tp!1886502)))

(declare-fun b!6870991 () Bool)

(declare-fun tp!1886500 () Bool)

(declare-fun tp!1886501 () Bool)

(assert (=> b!6870991 (= e!4141744 (and tp!1886500 tp!1886501))))

(assert (=> b!6869200 (= tp!1885717 e!4141744)))

(declare-fun b!6870989 () Bool)

(declare-fun tp!1886498 () Bool)

(declare-fun tp!1886499 () Bool)

(assert (=> b!6870989 (= e!4141744 (and tp!1886498 tp!1886499))))

(declare-fun b!6870988 () Bool)

(assert (=> b!6870988 (= e!4141744 tp_is_empty!42647)))

(assert (= (and b!6869200 ((_ is ElementMatch!16697) (regOne!33906 (regTwo!33907 (regOne!33906 r!7292))))) b!6870988))

(assert (= (and b!6869200 ((_ is Concat!25542) (regOne!33906 (regTwo!33907 (regOne!33906 r!7292))))) b!6870989))

(assert (= (and b!6869200 ((_ is Star!16697) (regOne!33906 (regTwo!33907 (regOne!33906 r!7292))))) b!6870990))

(assert (= (and b!6869200 ((_ is Union!16697) (regOne!33906 (regTwo!33907 (regOne!33906 r!7292))))) b!6870991))

(declare-fun b!6870998 () Bool)

(declare-fun e!4141746 () Bool)

(declare-fun tp!1886512 () Bool)

(assert (=> b!6870998 (= e!4141746 tp!1886512)))

(declare-fun b!6870999 () Bool)

(declare-fun tp!1886510 () Bool)

(declare-fun tp!1886511 () Bool)

(assert (=> b!6870999 (= e!4141746 (and tp!1886510 tp!1886511))))

(assert (=> b!6869200 (= tp!1885718 e!4141746)))

(declare-fun b!6870997 () Bool)

(declare-fun tp!1886508 () Bool)

(declare-fun tp!1886509 () Bool)

(assert (=> b!6870997 (= e!4141746 (and tp!1886508 tp!1886509))))

(declare-fun b!6870996 () Bool)

(assert (=> b!6870996 (= e!4141746 tp_is_empty!42647)))

(assert (= (and b!6869200 ((_ is ElementMatch!16697) (regTwo!33906 (regTwo!33907 (regOne!33906 r!7292))))) b!6870996))

(assert (= (and b!6869200 ((_ is Concat!25542) (regTwo!33906 (regTwo!33907 (regOne!33906 r!7292))))) b!6870997))

(assert (= (and b!6869200 ((_ is Star!16697) (regTwo!33906 (regTwo!33907 (regOne!33906 r!7292))))) b!6870998))

(assert (= (and b!6869200 ((_ is Union!16697) (regTwo!33906 (regTwo!33907 (regOne!33906 r!7292))))) b!6870999))

(declare-fun b!6871006 () Bool)

(declare-fun e!4141748 () Bool)

(declare-fun tp!1886522 () Bool)

(assert (=> b!6871006 (= e!4141748 tp!1886522)))

(declare-fun b!6871007 () Bool)

(declare-fun tp!1886520 () Bool)

(declare-fun tp!1886521 () Bool)

(assert (=> b!6871007 (= e!4141748 (and tp!1886520 tp!1886521))))

(assert (=> b!6869193 (= tp!1885711 e!4141748)))

(declare-fun b!6871005 () Bool)

(declare-fun tp!1886518 () Bool)

(declare-fun tp!1886519 () Bool)

(assert (=> b!6871005 (= e!4141748 (and tp!1886518 tp!1886519))))

(declare-fun b!6871004 () Bool)

(assert (=> b!6871004 (= e!4141748 tp_is_empty!42647)))

(assert (= (and b!6869193 ((_ is ElementMatch!16697) (reg!17026 (regTwo!33907 (regOne!33907 r!7292))))) b!6871004))

(assert (= (and b!6869193 ((_ is Concat!25542) (reg!17026 (regTwo!33907 (regOne!33907 r!7292))))) b!6871005))

(assert (= (and b!6869193 ((_ is Star!16697) (reg!17026 (regTwo!33907 (regOne!33907 r!7292))))) b!6871006))

(assert (= (and b!6869193 ((_ is Union!16697) (reg!17026 (regTwo!33907 (regOne!33907 r!7292))))) b!6871007))

(declare-fun b!6871014 () Bool)

(declare-fun e!4141750 () Bool)

(declare-fun tp!1886532 () Bool)

(assert (=> b!6871014 (= e!4141750 tp!1886532)))

(declare-fun b!6871015 () Bool)

(declare-fun tp!1886530 () Bool)

(declare-fun tp!1886531 () Bool)

(assert (=> b!6871015 (= e!4141750 (and tp!1886530 tp!1886531))))

(assert (=> b!6869184 (= tp!1885697 e!4141750)))

(declare-fun b!6871013 () Bool)

(declare-fun tp!1886528 () Bool)

(declare-fun tp!1886529 () Bool)

(assert (=> b!6871013 (= e!4141750 (and tp!1886528 tp!1886529))))

(declare-fun b!6871012 () Bool)

(assert (=> b!6871012 (= e!4141750 tp_is_empty!42647)))

(assert (= (and b!6869184 ((_ is ElementMatch!16697) (regOne!33906 (regTwo!33907 (reg!17026 r!7292))))) b!6871012))

(assert (= (and b!6869184 ((_ is Concat!25542) (regOne!33906 (regTwo!33907 (reg!17026 r!7292))))) b!6871013))

(assert (= (and b!6869184 ((_ is Star!16697) (regOne!33906 (regTwo!33907 (reg!17026 r!7292))))) b!6871014))

(assert (= (and b!6869184 ((_ is Union!16697) (regOne!33906 (regTwo!33907 (reg!17026 r!7292))))) b!6871015))

(declare-fun b!6871022 () Bool)

(declare-fun e!4141752 () Bool)

(declare-fun tp!1886542 () Bool)

(assert (=> b!6871022 (= e!4141752 tp!1886542)))

(declare-fun b!6871023 () Bool)

(declare-fun tp!1886540 () Bool)

(declare-fun tp!1886541 () Bool)

(assert (=> b!6871023 (= e!4141752 (and tp!1886540 tp!1886541))))

(assert (=> b!6869184 (= tp!1885698 e!4141752)))

(declare-fun b!6871021 () Bool)

(declare-fun tp!1886538 () Bool)

(declare-fun tp!1886539 () Bool)

(assert (=> b!6871021 (= e!4141752 (and tp!1886538 tp!1886539))))

(declare-fun b!6871020 () Bool)

(assert (=> b!6871020 (= e!4141752 tp_is_empty!42647)))

(assert (= (and b!6869184 ((_ is ElementMatch!16697) (regTwo!33906 (regTwo!33907 (reg!17026 r!7292))))) b!6871020))

(assert (= (and b!6869184 ((_ is Concat!25542) (regTwo!33906 (regTwo!33907 (reg!17026 r!7292))))) b!6871021))

(assert (= (and b!6869184 ((_ is Star!16697) (regTwo!33906 (regTwo!33907 (reg!17026 r!7292))))) b!6871022))

(assert (= (and b!6869184 ((_ is Union!16697) (regTwo!33906 (regTwo!33907 (reg!17026 r!7292))))) b!6871023))

(declare-fun b!6871030 () Bool)

(declare-fun e!4141754 () Bool)

(declare-fun tp!1886552 () Bool)

(assert (=> b!6871030 (= e!4141754 tp!1886552)))

(declare-fun b!6871031 () Bool)

(declare-fun tp!1886550 () Bool)

(declare-fun tp!1886551 () Bool)

(assert (=> b!6871031 (= e!4141754 (and tp!1886550 tp!1886551))))

(assert (=> b!6869202 (= tp!1885719 e!4141754)))

(declare-fun b!6871029 () Bool)

(declare-fun tp!1886548 () Bool)

(declare-fun tp!1886549 () Bool)

(assert (=> b!6871029 (= e!4141754 (and tp!1886548 tp!1886549))))

(declare-fun b!6871028 () Bool)

(assert (=> b!6871028 (= e!4141754 tp_is_empty!42647)))

(assert (= (and b!6869202 ((_ is ElementMatch!16697) (regOne!33907 (regTwo!33907 (regOne!33906 r!7292))))) b!6871028))

(assert (= (and b!6869202 ((_ is Concat!25542) (regOne!33907 (regTwo!33907 (regOne!33906 r!7292))))) b!6871029))

(assert (= (and b!6869202 ((_ is Star!16697) (regOne!33907 (regTwo!33907 (regOne!33906 r!7292))))) b!6871030))

(assert (= (and b!6869202 ((_ is Union!16697) (regOne!33907 (regTwo!33907 (regOne!33906 r!7292))))) b!6871031))

(declare-fun b!6871038 () Bool)

(declare-fun e!4141756 () Bool)

(declare-fun tp!1886562 () Bool)

(assert (=> b!6871038 (= e!4141756 tp!1886562)))

(declare-fun b!6871039 () Bool)

(declare-fun tp!1886560 () Bool)

(declare-fun tp!1886561 () Bool)

(assert (=> b!6871039 (= e!4141756 (and tp!1886560 tp!1886561))))

(assert (=> b!6869202 (= tp!1885720 e!4141756)))

(declare-fun b!6871037 () Bool)

(declare-fun tp!1886558 () Bool)

(declare-fun tp!1886559 () Bool)

(assert (=> b!6871037 (= e!4141756 (and tp!1886558 tp!1886559))))

(declare-fun b!6871036 () Bool)

(assert (=> b!6871036 (= e!4141756 tp_is_empty!42647)))

(assert (= (and b!6869202 ((_ is ElementMatch!16697) (regTwo!33907 (regTwo!33907 (regOne!33906 r!7292))))) b!6871036))

(assert (= (and b!6869202 ((_ is Concat!25542) (regTwo!33907 (regTwo!33907 (regOne!33906 r!7292))))) b!6871037))

(assert (= (and b!6869202 ((_ is Star!16697) (regTwo!33907 (regTwo!33907 (regOne!33906 r!7292))))) b!6871038))

(assert (= (and b!6869202 ((_ is Union!16697) (regTwo!33907 (regTwo!33907 (regOne!33906 r!7292))))) b!6871039))

(declare-fun b!6871046 () Bool)

(declare-fun e!4141758 () Bool)

(declare-fun tp!1886572 () Bool)

(assert (=> b!6871046 (= e!4141758 tp!1886572)))

(declare-fun b!6871047 () Bool)

(declare-fun tp!1886570 () Bool)

(declare-fun tp!1886571 () Bool)

(assert (=> b!6871047 (= e!4141758 (and tp!1886570 tp!1886571))))

(assert (=> b!6869111 (= tp!1885604 e!4141758)))

(declare-fun b!6871045 () Bool)

(declare-fun tp!1886568 () Bool)

(declare-fun tp!1886569 () Bool)

(assert (=> b!6871045 (= e!4141758 (and tp!1886568 tp!1886569))))

(declare-fun b!6871044 () Bool)

(assert (=> b!6871044 (= e!4141758 tp_is_empty!42647)))

(assert (= (and b!6869111 ((_ is ElementMatch!16697) (regOne!33906 (regTwo!33906 (regTwo!33907 r!7292))))) b!6871044))

(assert (= (and b!6869111 ((_ is Concat!25542) (regOne!33906 (regTwo!33906 (regTwo!33907 r!7292))))) b!6871045))

(assert (= (and b!6869111 ((_ is Star!16697) (regOne!33906 (regTwo!33906 (regTwo!33907 r!7292))))) b!6871046))

(assert (= (and b!6869111 ((_ is Union!16697) (regOne!33906 (regTwo!33906 (regTwo!33907 r!7292))))) b!6871047))

(declare-fun b!6871054 () Bool)

(declare-fun e!4141760 () Bool)

(declare-fun tp!1886582 () Bool)

(assert (=> b!6871054 (= e!4141760 tp!1886582)))

(declare-fun b!6871055 () Bool)

(declare-fun tp!1886580 () Bool)

(declare-fun tp!1886581 () Bool)

(assert (=> b!6871055 (= e!4141760 (and tp!1886580 tp!1886581))))

(assert (=> b!6869111 (= tp!1885605 e!4141760)))

(declare-fun b!6871053 () Bool)

(declare-fun tp!1886578 () Bool)

(declare-fun tp!1886579 () Bool)

(assert (=> b!6871053 (= e!4141760 (and tp!1886578 tp!1886579))))

(declare-fun b!6871052 () Bool)

(assert (=> b!6871052 (= e!4141760 tp_is_empty!42647)))

(assert (= (and b!6869111 ((_ is ElementMatch!16697) (regTwo!33906 (regTwo!33906 (regTwo!33907 r!7292))))) b!6871052))

(assert (= (and b!6869111 ((_ is Concat!25542) (regTwo!33906 (regTwo!33906 (regTwo!33907 r!7292))))) b!6871053))

(assert (= (and b!6869111 ((_ is Star!16697) (regTwo!33906 (regTwo!33906 (regTwo!33907 r!7292))))) b!6871054))

(assert (= (and b!6869111 ((_ is Union!16697) (regTwo!33906 (regTwo!33906 (regTwo!33907 r!7292))))) b!6871055))

(declare-fun b!6871060 () Bool)

(declare-fun e!4141762 () Bool)

(declare-fun tp!1886588 () Bool)

(declare-fun tp!1886589 () Bool)

(assert (=> b!6871060 (= e!4141762 (and tp!1886588 tp!1886589))))

(assert (=> b!6868958 (= tp!1885582 e!4141762)))

(assert (= (and b!6868958 ((_ is Cons!66266) (exprs!6581 (h!72715 res!2801683)))) b!6871060))

(declare-fun b!6871063 () Bool)

(declare-fun e!4141763 () Bool)

(declare-fun tp!1886594 () Bool)

(assert (=> b!6871063 (= e!4141763 tp!1886594)))

(declare-fun b!6871064 () Bool)

(declare-fun tp!1886592 () Bool)

(declare-fun tp!1886593 () Bool)

(assert (=> b!6871064 (= e!4141763 (and tp!1886592 tp!1886593))))

(assert (=> b!6869120 (= tp!1885618 e!4141763)))

(declare-fun b!6871062 () Bool)

(declare-fun tp!1886590 () Bool)

(declare-fun tp!1886591 () Bool)

(assert (=> b!6871062 (= e!4141763 (and tp!1886590 tp!1886591))))

(declare-fun b!6871061 () Bool)

(assert (=> b!6871061 (= e!4141763 tp_is_empty!42647)))

(assert (= (and b!6869120 ((_ is ElementMatch!16697) (reg!17026 (h!72714 (exprs!6581 (h!72715 zl!343)))))) b!6871061))

(assert (= (and b!6869120 ((_ is Concat!25542) (reg!17026 (h!72714 (exprs!6581 (h!72715 zl!343)))))) b!6871062))

(assert (= (and b!6869120 ((_ is Star!16697) (reg!17026 (h!72714 (exprs!6581 (h!72715 zl!343)))))) b!6871063))

(assert (= (and b!6869120 ((_ is Union!16697) (reg!17026 (h!72714 (exprs!6581 (h!72715 zl!343)))))) b!6871064))

(declare-fun b!6871071 () Bool)

(declare-fun e!4141765 () Bool)

(declare-fun tp!1886604 () Bool)

(assert (=> b!6871071 (= e!4141765 tp!1886604)))

(declare-fun b!6871072 () Bool)

(declare-fun tp!1886602 () Bool)

(declare-fun tp!1886603 () Bool)

(assert (=> b!6871072 (= e!4141765 (and tp!1886602 tp!1886603))))

(assert (=> b!6869128 (= tp!1885626 e!4141765)))

(declare-fun b!6871070 () Bool)

(declare-fun tp!1886600 () Bool)

(declare-fun tp!1886601 () Bool)

(assert (=> b!6871070 (= e!4141765 (and tp!1886600 tp!1886601))))

(declare-fun b!6871069 () Bool)

(assert (=> b!6871069 (= e!4141765 tp_is_empty!42647)))

(assert (= (and b!6869128 ((_ is ElementMatch!16697) (regOne!33906 (regTwo!33906 (regTwo!33906 r!7292))))) b!6871069))

(assert (= (and b!6869128 ((_ is Concat!25542) (regOne!33906 (regTwo!33906 (regTwo!33906 r!7292))))) b!6871070))

(assert (= (and b!6869128 ((_ is Star!16697) (regOne!33906 (regTwo!33906 (regTwo!33906 r!7292))))) b!6871071))

(assert (= (and b!6869128 ((_ is Union!16697) (regOne!33906 (regTwo!33906 (regTwo!33906 r!7292))))) b!6871072))

(declare-fun b!6871079 () Bool)

(declare-fun e!4141767 () Bool)

(declare-fun tp!1886614 () Bool)

(assert (=> b!6871079 (= e!4141767 tp!1886614)))

(declare-fun b!6871080 () Bool)

(declare-fun tp!1886612 () Bool)

(declare-fun tp!1886613 () Bool)

(assert (=> b!6871080 (= e!4141767 (and tp!1886612 tp!1886613))))

(assert (=> b!6869128 (= tp!1885627 e!4141767)))

(declare-fun b!6871078 () Bool)

(declare-fun tp!1886610 () Bool)

(declare-fun tp!1886611 () Bool)

(assert (=> b!6871078 (= e!4141767 (and tp!1886610 tp!1886611))))

(declare-fun b!6871077 () Bool)

(assert (=> b!6871077 (= e!4141767 tp_is_empty!42647)))

(assert (= (and b!6869128 ((_ is ElementMatch!16697) (regTwo!33906 (regTwo!33906 (regTwo!33906 r!7292))))) b!6871077))

(assert (= (and b!6869128 ((_ is Concat!25542) (regTwo!33906 (regTwo!33906 (regTwo!33906 r!7292))))) b!6871078))

(assert (= (and b!6869128 ((_ is Star!16697) (regTwo!33906 (regTwo!33906 (regTwo!33906 r!7292))))) b!6871079))

(assert (= (and b!6869128 ((_ is Union!16697) (regTwo!33906 (regTwo!33906 (regTwo!33906 r!7292))))) b!6871080))

(declare-fun b!6871088 () Bool)

(declare-fun e!4141770 () Bool)

(declare-fun tp!1886626 () Bool)

(assert (=> b!6871088 (= e!4141770 tp!1886626)))

(declare-fun b!6871089 () Bool)

(declare-fun tp!1886624 () Bool)

(declare-fun tp!1886625 () Bool)

(assert (=> b!6871089 (= e!4141770 (and tp!1886624 tp!1886625))))

(assert (=> b!6869177 (= tp!1885691 e!4141770)))

(declare-fun b!6871087 () Bool)

(declare-fun tp!1886622 () Bool)

(declare-fun tp!1886623 () Bool)

(assert (=> b!6871087 (= e!4141770 (and tp!1886622 tp!1886623))))

(declare-fun b!6871086 () Bool)

(assert (=> b!6871086 (= e!4141770 tp_is_empty!42647)))

(assert (= (and b!6869177 ((_ is ElementMatch!16697) (reg!17026 (regTwo!33906 (regOne!33906 r!7292))))) b!6871086))

(assert (= (and b!6869177 ((_ is Concat!25542) (reg!17026 (regTwo!33906 (regOne!33906 r!7292))))) b!6871087))

(assert (= (and b!6869177 ((_ is Star!16697) (reg!17026 (regTwo!33906 (regOne!33906 r!7292))))) b!6871088))

(assert (= (and b!6869177 ((_ is Union!16697) (reg!17026 (regTwo!33906 (regOne!33906 r!7292))))) b!6871089))

(declare-fun b!6871096 () Bool)

(declare-fun e!4141772 () Bool)

(declare-fun tp!1886636 () Bool)

(assert (=> b!6871096 (= e!4141772 tp!1886636)))

(declare-fun b!6871097 () Bool)

(declare-fun tp!1886634 () Bool)

(declare-fun tp!1886635 () Bool)

(assert (=> b!6871097 (= e!4141772 (and tp!1886634 tp!1886635))))

(assert (=> b!6869168 (= tp!1885677 e!4141772)))

(declare-fun b!6871095 () Bool)

(declare-fun tp!1886632 () Bool)

(declare-fun tp!1886633 () Bool)

(assert (=> b!6871095 (= e!4141772 (and tp!1886632 tp!1886633))))

(declare-fun b!6871094 () Bool)

(assert (=> b!6871094 (= e!4141772 tp_is_empty!42647)))

(assert (= (and b!6869168 ((_ is ElementMatch!16697) (regOne!33906 (reg!17026 (regOne!33906 r!7292))))) b!6871094))

(assert (= (and b!6869168 ((_ is Concat!25542) (regOne!33906 (reg!17026 (regOne!33906 r!7292))))) b!6871095))

(assert (= (and b!6869168 ((_ is Star!16697) (regOne!33906 (reg!17026 (regOne!33906 r!7292))))) b!6871096))

(assert (= (and b!6869168 ((_ is Union!16697) (regOne!33906 (reg!17026 (regOne!33906 r!7292))))) b!6871097))

(declare-fun b!6871104 () Bool)

(declare-fun e!4141774 () Bool)

(declare-fun tp!1886646 () Bool)

(assert (=> b!6871104 (= e!4141774 tp!1886646)))

(declare-fun b!6871105 () Bool)

(declare-fun tp!1886644 () Bool)

(declare-fun tp!1886645 () Bool)

(assert (=> b!6871105 (= e!4141774 (and tp!1886644 tp!1886645))))

(assert (=> b!6869168 (= tp!1885678 e!4141774)))

(declare-fun b!6871103 () Bool)

(declare-fun tp!1886642 () Bool)

(declare-fun tp!1886643 () Bool)

(assert (=> b!6871103 (= e!4141774 (and tp!1886642 tp!1886643))))

(declare-fun b!6871102 () Bool)

(assert (=> b!6871102 (= e!4141774 tp_is_empty!42647)))

(assert (= (and b!6869168 ((_ is ElementMatch!16697) (regTwo!33906 (reg!17026 (regOne!33906 r!7292))))) b!6871102))

(assert (= (and b!6869168 ((_ is Concat!25542) (regTwo!33906 (reg!17026 (regOne!33906 r!7292))))) b!6871103))

(assert (= (and b!6869168 ((_ is Star!16697) (regTwo!33906 (reg!17026 (regOne!33906 r!7292))))) b!6871104))

(assert (= (and b!6869168 ((_ is Union!16697) (regTwo!33906 (reg!17026 (regOne!33906 r!7292))))) b!6871105))

(declare-fun b!6871112 () Bool)

(declare-fun e!4141776 () Bool)

(declare-fun tp!1886656 () Bool)

(assert (=> b!6871112 (= e!4141776 tp!1886656)))

(declare-fun b!6871113 () Bool)

(declare-fun tp!1886654 () Bool)

(declare-fun tp!1886655 () Bool)

(assert (=> b!6871113 (= e!4141776 (and tp!1886654 tp!1886655))))

(assert (=> b!6869186 (= tp!1885699 e!4141776)))

(declare-fun b!6871111 () Bool)

(declare-fun tp!1886652 () Bool)

(declare-fun tp!1886653 () Bool)

(assert (=> b!6871111 (= e!4141776 (and tp!1886652 tp!1886653))))

(declare-fun b!6871110 () Bool)

(assert (=> b!6871110 (= e!4141776 tp_is_empty!42647)))

(assert (= (and b!6869186 ((_ is ElementMatch!16697) (regOne!33907 (regTwo!33907 (reg!17026 r!7292))))) b!6871110))

(assert (= (and b!6869186 ((_ is Concat!25542) (regOne!33907 (regTwo!33907 (reg!17026 r!7292))))) b!6871111))

(assert (= (and b!6869186 ((_ is Star!16697) (regOne!33907 (regTwo!33907 (reg!17026 r!7292))))) b!6871112))

(assert (= (and b!6869186 ((_ is Union!16697) (regOne!33907 (regTwo!33907 (reg!17026 r!7292))))) b!6871113))

(declare-fun b!6871120 () Bool)

(declare-fun e!4141778 () Bool)

(declare-fun tp!1886666 () Bool)

(assert (=> b!6871120 (= e!4141778 tp!1886666)))

(declare-fun b!6871121 () Bool)

(declare-fun tp!1886664 () Bool)

(declare-fun tp!1886665 () Bool)

(assert (=> b!6871121 (= e!4141778 (and tp!1886664 tp!1886665))))

(assert (=> b!6869186 (= tp!1885700 e!4141778)))

(declare-fun b!6871119 () Bool)

(declare-fun tp!1886662 () Bool)

(declare-fun tp!1886663 () Bool)

(assert (=> b!6871119 (= e!4141778 (and tp!1886662 tp!1886663))))

(declare-fun b!6871118 () Bool)

(assert (=> b!6871118 (= e!4141778 tp_is_empty!42647)))

(assert (= (and b!6869186 ((_ is ElementMatch!16697) (regTwo!33907 (regTwo!33907 (reg!17026 r!7292))))) b!6871118))

(assert (= (and b!6869186 ((_ is Concat!25542) (regTwo!33907 (regTwo!33907 (reg!17026 r!7292))))) b!6871119))

(assert (= (and b!6869186 ((_ is Star!16697) (regTwo!33907 (regTwo!33907 (reg!17026 r!7292))))) b!6871120))

(assert (= (and b!6869186 ((_ is Union!16697) (regTwo!33907 (regTwo!33907 (reg!17026 r!7292))))) b!6871121))

(declare-fun b!6871128 () Bool)

(declare-fun e!4141780 () Bool)

(declare-fun tp!1886676 () Bool)

(assert (=> b!6871128 (= e!4141780 tp!1886676)))

(declare-fun b!6871129 () Bool)

(declare-fun tp!1886674 () Bool)

(declare-fun tp!1886675 () Bool)

(assert (=> b!6871129 (= e!4141780 (and tp!1886674 tp!1886675))))

(assert (=> b!6869095 (= tp!1885584 e!4141780)))

(declare-fun b!6871127 () Bool)

(declare-fun tp!1886672 () Bool)

(declare-fun tp!1886673 () Bool)

(assert (=> b!6871127 (= e!4141780 (and tp!1886672 tp!1886673))))

(declare-fun b!6871126 () Bool)

(assert (=> b!6871126 (= e!4141780 tp_is_empty!42647)))

(assert (= (and b!6869095 ((_ is ElementMatch!16697) (regOne!33906 (regOne!33907 (regTwo!33906 r!7292))))) b!6871126))

(assert (= (and b!6869095 ((_ is Concat!25542) (regOne!33906 (regOne!33907 (regTwo!33906 r!7292))))) b!6871127))

(assert (= (and b!6869095 ((_ is Star!16697) (regOne!33906 (regOne!33907 (regTwo!33906 r!7292))))) b!6871128))

(assert (= (and b!6869095 ((_ is Union!16697) (regOne!33906 (regOne!33907 (regTwo!33906 r!7292))))) b!6871129))

(declare-fun b!6871136 () Bool)

(declare-fun e!4141782 () Bool)

(declare-fun tp!1886686 () Bool)

(assert (=> b!6871136 (= e!4141782 tp!1886686)))

(declare-fun b!6871137 () Bool)

(declare-fun tp!1886684 () Bool)

(declare-fun tp!1886685 () Bool)

(assert (=> b!6871137 (= e!4141782 (and tp!1886684 tp!1886685))))

(assert (=> b!6869095 (= tp!1885585 e!4141782)))

(declare-fun b!6871135 () Bool)

(declare-fun tp!1886682 () Bool)

(declare-fun tp!1886683 () Bool)

(assert (=> b!6871135 (= e!4141782 (and tp!1886682 tp!1886683))))

(declare-fun b!6871134 () Bool)

(assert (=> b!6871134 (= e!4141782 tp_is_empty!42647)))

(assert (= (and b!6869095 ((_ is ElementMatch!16697) (regTwo!33906 (regOne!33907 (regTwo!33906 r!7292))))) b!6871134))

(assert (= (and b!6869095 ((_ is Concat!25542) (regTwo!33906 (regOne!33907 (regTwo!33906 r!7292))))) b!6871135))

(assert (= (and b!6869095 ((_ is Star!16697) (regTwo!33906 (regOne!33907 (regTwo!33906 r!7292))))) b!6871136))

(assert (= (and b!6869095 ((_ is Union!16697) (regTwo!33906 (regOne!33907 (regTwo!33906 r!7292))))) b!6871137))

(declare-fun b!6871144 () Bool)

(declare-fun e!4141784 () Bool)

(declare-fun tp!1886696 () Bool)

(assert (=> b!6871144 (= e!4141784 tp!1886696)))

(declare-fun b!6871145 () Bool)

(declare-fun tp!1886694 () Bool)

(declare-fun tp!1886695 () Bool)

(assert (=> b!6871145 (= e!4141784 (and tp!1886694 tp!1886695))))

(assert (=> b!6869113 (= tp!1885606 e!4141784)))

(declare-fun b!6871143 () Bool)

(declare-fun tp!1886692 () Bool)

(declare-fun tp!1886693 () Bool)

(assert (=> b!6871143 (= e!4141784 (and tp!1886692 tp!1886693))))

(declare-fun b!6871142 () Bool)

(assert (=> b!6871142 (= e!4141784 tp_is_empty!42647)))

(assert (= (and b!6869113 ((_ is ElementMatch!16697) (regOne!33907 (regTwo!33906 (regTwo!33907 r!7292))))) b!6871142))

(assert (= (and b!6869113 ((_ is Concat!25542) (regOne!33907 (regTwo!33906 (regTwo!33907 r!7292))))) b!6871143))

(assert (= (and b!6869113 ((_ is Star!16697) (regOne!33907 (regTwo!33906 (regTwo!33907 r!7292))))) b!6871144))

(assert (= (and b!6869113 ((_ is Union!16697) (regOne!33907 (regTwo!33906 (regTwo!33907 r!7292))))) b!6871145))

(declare-fun b!6871152 () Bool)

(declare-fun e!4141786 () Bool)

(declare-fun tp!1886706 () Bool)

(assert (=> b!6871152 (= e!4141786 tp!1886706)))

(declare-fun b!6871153 () Bool)

(declare-fun tp!1886704 () Bool)

(declare-fun tp!1886705 () Bool)

(assert (=> b!6871153 (= e!4141786 (and tp!1886704 tp!1886705))))

(assert (=> b!6869113 (= tp!1885607 e!4141786)))

(declare-fun b!6871151 () Bool)

(declare-fun tp!1886702 () Bool)

(declare-fun tp!1886703 () Bool)

(assert (=> b!6871151 (= e!4141786 (and tp!1886702 tp!1886703))))

(declare-fun b!6871150 () Bool)

(assert (=> b!6871150 (= e!4141786 tp_is_empty!42647)))

(assert (= (and b!6869113 ((_ is ElementMatch!16697) (regTwo!33907 (regTwo!33906 (regTwo!33907 r!7292))))) b!6871150))

(assert (= (and b!6869113 ((_ is Concat!25542) (regTwo!33907 (regTwo!33906 (regTwo!33907 r!7292))))) b!6871151))

(assert (= (and b!6869113 ((_ is Star!16697) (regTwo!33907 (regTwo!33906 (regTwo!33907 r!7292))))) b!6871152))

(assert (= (and b!6869113 ((_ is Union!16697) (regTwo!33907 (regTwo!33906 (regTwo!33907 r!7292))))) b!6871153))

(declare-fun b!6871158 () Bool)

(declare-fun e!4141788 () Bool)

(declare-fun tp!1886712 () Bool)

(assert (=> b!6871158 (= e!4141788 (and tp_is_empty!42647 tp!1886712))))

(assert (=> b!6869208 (= tp!1885729 e!4141788)))

(assert (= (and b!6869208 ((_ is Cons!66268) (t!380135 (t!380135 (t!380135 s!2326))))) b!6871158))

(declare-fun b!6871165 () Bool)

(declare-fun e!4141790 () Bool)

(declare-fun tp!1886722 () Bool)

(assert (=> b!6871165 (= e!4141790 tp!1886722)))

(declare-fun b!6871166 () Bool)

(declare-fun tp!1886720 () Bool)

(declare-fun tp!1886721 () Bool)

(assert (=> b!6871166 (= e!4141790 (and tp!1886720 tp!1886721))))

(assert (=> b!6869104 (= tp!1885598 e!4141790)))

(declare-fun b!6871164 () Bool)

(declare-fun tp!1886718 () Bool)

(declare-fun tp!1886719 () Bool)

(assert (=> b!6871164 (= e!4141790 (and tp!1886718 tp!1886719))))

(declare-fun b!6871163 () Bool)

(assert (=> b!6871163 (= e!4141790 tp_is_empty!42647)))

(assert (= (and b!6869104 ((_ is ElementMatch!16697) (reg!17026 (reg!17026 (regTwo!33907 r!7292))))) b!6871163))

(assert (= (and b!6869104 ((_ is Concat!25542) (reg!17026 (reg!17026 (regTwo!33907 r!7292))))) b!6871164))

(assert (= (and b!6869104 ((_ is Star!16697) (reg!17026 (reg!17026 (regTwo!33907 r!7292))))) b!6871165))

(assert (= (and b!6869104 ((_ is Union!16697) (reg!17026 (reg!17026 (regTwo!33907 r!7292))))) b!6871166))

(declare-fun b!6871172 () Bool)

(declare-fun e!4141793 () Bool)

(declare-fun tp!1886728 () Bool)

(assert (=> b!6871172 (= e!4141793 tp!1886728)))

(declare-fun b!6871169 () Bool)

(declare-fun e!4141792 () Bool)

(declare-fun tp!1886729 () Bool)

(assert (=> b!6871169 (= e!4141792 (and (inv!84989 (h!72715 (t!380134 res!2801660))) e!4141793 tp!1886729))))

(assert (=> b!6868901 (= tp!1885581 e!4141792)))

(assert (= b!6871169 b!6871172))

(assert (= (and b!6868901 ((_ is Cons!66267) (t!380134 res!2801660))) b!6871169))

(declare-fun m!7601820 () Bool)

(assert (=> b!6871169 m!7601820))

(declare-fun b!6871176 () Bool)

(declare-fun e!4141795 () Bool)

(declare-fun tp!1886735 () Bool)

(assert (=> b!6871176 (= e!4141795 tp!1886735)))

(declare-fun b!6871178 () Bool)

(declare-fun tp!1886733 () Bool)

(declare-fun tp!1886734 () Bool)

(assert (=> b!6871178 (= e!4141795 (and tp!1886733 tp!1886734))))

(assert (=> b!6869161 (= tp!1885671 e!4141795)))

(declare-fun b!6871174 () Bool)

(declare-fun tp!1886731 () Bool)

(declare-fun tp!1886732 () Bool)

(assert (=> b!6871174 (= e!4141795 (and tp!1886731 tp!1886732))))

(declare-fun b!6871173 () Bool)

(assert (=> b!6871173 (= e!4141795 tp_is_empty!42647)))

(assert (= (and b!6869161 ((_ is ElementMatch!16697) (reg!17026 (regOne!33906 (regOne!33907 r!7292))))) b!6871173))

(assert (= (and b!6869161 ((_ is Concat!25542) (reg!17026 (regOne!33906 (regOne!33907 r!7292))))) b!6871174))

(assert (= (and b!6869161 ((_ is Star!16697) (reg!17026 (regOne!33906 (regOne!33907 r!7292))))) b!6871176))

(assert (= (and b!6869161 ((_ is Union!16697) (reg!17026 (regOne!33906 (regOne!33907 r!7292))))) b!6871178))

(declare-fun b!6871187 () Bool)

(declare-fun e!4141796 () Bool)

(declare-fun tp!1886749 () Bool)

(assert (=> b!6871187 (= e!4141796 tp!1886749)))

(declare-fun b!6871188 () Bool)

(declare-fun tp!1886747 () Bool)

(declare-fun tp!1886748 () Bool)

(assert (=> b!6871188 (= e!4141796 (and tp!1886747 tp!1886748))))

(assert (=> b!6869152 (= tp!1885657 e!4141796)))

(declare-fun b!6871186 () Bool)

(declare-fun tp!1886745 () Bool)

(declare-fun tp!1886746 () Bool)

(assert (=> b!6871186 (= e!4141796 (and tp!1886745 tp!1886746))))

(declare-fun b!6871185 () Bool)

(assert (=> b!6871185 (= e!4141796 tp_is_empty!42647)))

(assert (= (and b!6869152 ((_ is ElementMatch!16697) (regOne!33906 (regOne!33906 (reg!17026 r!7292))))) b!6871185))

(assert (= (and b!6869152 ((_ is Concat!25542) (regOne!33906 (regOne!33906 (reg!17026 r!7292))))) b!6871186))

(assert (= (and b!6869152 ((_ is Star!16697) (regOne!33906 (regOne!33906 (reg!17026 r!7292))))) b!6871187))

(assert (= (and b!6869152 ((_ is Union!16697) (regOne!33906 (regOne!33906 (reg!17026 r!7292))))) b!6871188))

(declare-fun b!6871195 () Bool)

(declare-fun e!4141799 () Bool)

(declare-fun tp!1886759 () Bool)

(assert (=> b!6871195 (= e!4141799 tp!1886759)))

(declare-fun b!6871196 () Bool)

(declare-fun tp!1886757 () Bool)

(declare-fun tp!1886758 () Bool)

(assert (=> b!6871196 (= e!4141799 (and tp!1886757 tp!1886758))))

(assert (=> b!6869152 (= tp!1885658 e!4141799)))

(declare-fun b!6871194 () Bool)

(declare-fun tp!1886755 () Bool)

(declare-fun tp!1886756 () Bool)

(assert (=> b!6871194 (= e!4141799 (and tp!1886755 tp!1886756))))

(declare-fun b!6871193 () Bool)

(assert (=> b!6871193 (= e!4141799 tp_is_empty!42647)))

(assert (= (and b!6869152 ((_ is ElementMatch!16697) (regTwo!33906 (regOne!33906 (reg!17026 r!7292))))) b!6871193))

(assert (= (and b!6869152 ((_ is Concat!25542) (regTwo!33906 (regOne!33906 (reg!17026 r!7292))))) b!6871194))

(assert (= (and b!6869152 ((_ is Star!16697) (regTwo!33906 (regOne!33906 (reg!17026 r!7292))))) b!6871195))

(assert (= (and b!6869152 ((_ is Union!16697) (regTwo!33906 (regOne!33906 (reg!17026 r!7292))))) b!6871196))

(declare-fun b!6871203 () Bool)

(declare-fun e!4141801 () Bool)

(declare-fun tp!1886769 () Bool)

(assert (=> b!6871203 (= e!4141801 tp!1886769)))

(declare-fun b!6871204 () Bool)

(declare-fun tp!1886767 () Bool)

(declare-fun tp!1886768 () Bool)

(assert (=> b!6871204 (= e!4141801 (and tp!1886767 tp!1886768))))

(assert (=> b!6869130 (= tp!1885628 e!4141801)))

(declare-fun b!6871202 () Bool)

(declare-fun tp!1886765 () Bool)

(declare-fun tp!1886766 () Bool)

(assert (=> b!6871202 (= e!4141801 (and tp!1886765 tp!1886766))))

(declare-fun b!6871201 () Bool)

(assert (=> b!6871201 (= e!4141801 tp_is_empty!42647)))

(assert (= (and b!6869130 ((_ is ElementMatch!16697) (regOne!33907 (regTwo!33906 (regTwo!33906 r!7292))))) b!6871201))

(assert (= (and b!6869130 ((_ is Concat!25542) (regOne!33907 (regTwo!33906 (regTwo!33906 r!7292))))) b!6871202))

(assert (= (and b!6869130 ((_ is Star!16697) (regOne!33907 (regTwo!33906 (regTwo!33906 r!7292))))) b!6871203))

(assert (= (and b!6869130 ((_ is Union!16697) (regOne!33907 (regTwo!33906 (regTwo!33906 r!7292))))) b!6871204))

(declare-fun b!6871211 () Bool)

(declare-fun e!4141803 () Bool)

(declare-fun tp!1886779 () Bool)

(assert (=> b!6871211 (= e!4141803 tp!1886779)))

(declare-fun b!6871212 () Bool)

(declare-fun tp!1886777 () Bool)

(declare-fun tp!1886778 () Bool)

(assert (=> b!6871212 (= e!4141803 (and tp!1886777 tp!1886778))))

(assert (=> b!6869130 (= tp!1885629 e!4141803)))

(declare-fun b!6871210 () Bool)

(declare-fun tp!1886775 () Bool)

(declare-fun tp!1886776 () Bool)

(assert (=> b!6871210 (= e!4141803 (and tp!1886775 tp!1886776))))

(declare-fun b!6871209 () Bool)

(assert (=> b!6871209 (= e!4141803 tp_is_empty!42647)))

(assert (= (and b!6869130 ((_ is ElementMatch!16697) (regTwo!33907 (regTwo!33906 (regTwo!33906 r!7292))))) b!6871209))

(assert (= (and b!6869130 ((_ is Concat!25542) (regTwo!33907 (regTwo!33906 (regTwo!33906 r!7292))))) b!6871210))

(assert (= (and b!6869130 ((_ is Star!16697) (regTwo!33907 (regTwo!33906 (regTwo!33906 r!7292))))) b!6871211))

(assert (= (and b!6869130 ((_ is Union!16697) (regTwo!33907 (regTwo!33906 (regTwo!33906 r!7292))))) b!6871212))

(declare-fun b!6871219 () Bool)

(declare-fun e!4141805 () Bool)

(declare-fun tp!1886789 () Bool)

(assert (=> b!6871219 (= e!4141805 tp!1886789)))

(declare-fun b!6871220 () Bool)

(declare-fun tp!1886787 () Bool)

(declare-fun tp!1886788 () Bool)

(assert (=> b!6871220 (= e!4141805 (and tp!1886787 tp!1886788))))

(assert (=> b!6869170 (= tp!1885679 e!4141805)))

(declare-fun b!6871218 () Bool)

(declare-fun tp!1886785 () Bool)

(declare-fun tp!1886786 () Bool)

(assert (=> b!6871218 (= e!4141805 (and tp!1886785 tp!1886786))))

(declare-fun b!6871217 () Bool)

(assert (=> b!6871217 (= e!4141805 tp_is_empty!42647)))

(assert (= (and b!6869170 ((_ is ElementMatch!16697) (regOne!33907 (reg!17026 (regOne!33906 r!7292))))) b!6871217))

(assert (= (and b!6869170 ((_ is Concat!25542) (regOne!33907 (reg!17026 (regOne!33906 r!7292))))) b!6871218))

(assert (= (and b!6869170 ((_ is Star!16697) (regOne!33907 (reg!17026 (regOne!33906 r!7292))))) b!6871219))

(assert (= (and b!6869170 ((_ is Union!16697) (regOne!33907 (reg!17026 (regOne!33906 r!7292))))) b!6871220))

(declare-fun b!6871227 () Bool)

(declare-fun e!4141807 () Bool)

(declare-fun tp!1886799 () Bool)

(assert (=> b!6871227 (= e!4141807 tp!1886799)))

(declare-fun b!6871228 () Bool)

(declare-fun tp!1886797 () Bool)

(declare-fun tp!1886798 () Bool)

(assert (=> b!6871228 (= e!4141807 (and tp!1886797 tp!1886798))))

(assert (=> b!6869170 (= tp!1885680 e!4141807)))

(declare-fun b!6871226 () Bool)

(declare-fun tp!1886795 () Bool)

(declare-fun tp!1886796 () Bool)

(assert (=> b!6871226 (= e!4141807 (and tp!1886795 tp!1886796))))

(declare-fun b!6871225 () Bool)

(assert (=> b!6871225 (= e!4141807 tp_is_empty!42647)))

(assert (= (and b!6869170 ((_ is ElementMatch!16697) (regTwo!33907 (reg!17026 (regOne!33906 r!7292))))) b!6871225))

(assert (= (and b!6869170 ((_ is Concat!25542) (regTwo!33907 (reg!17026 (regOne!33906 r!7292))))) b!6871226))

(assert (= (and b!6869170 ((_ is Star!16697) (regTwo!33907 (reg!17026 (regOne!33906 r!7292))))) b!6871227))

(assert (= (and b!6869170 ((_ is Union!16697) (regTwo!33907 (reg!17026 (regOne!33906 r!7292))))) b!6871228))

(declare-fun b!6871233 () Bool)

(declare-fun e!4141808 () Bool)

(declare-fun tp!1886809 () Bool)

(assert (=> b!6871233 (= e!4141808 tp!1886809)))

(declare-fun b!6871234 () Bool)

(declare-fun tp!1886802 () Bool)

(declare-fun tp!1886808 () Bool)

(assert (=> b!6871234 (= e!4141808 (and tp!1886802 tp!1886808))))

(assert (=> b!6869153 (= tp!1885661 e!4141808)))

(declare-fun b!6871232 () Bool)

(declare-fun tp!1886800 () Bool)

(declare-fun tp!1886801 () Bool)

(assert (=> b!6871232 (= e!4141808 (and tp!1886800 tp!1886801))))

(declare-fun b!6871231 () Bool)

(assert (=> b!6871231 (= e!4141808 tp_is_empty!42647)))

(assert (= (and b!6869153 ((_ is ElementMatch!16697) (reg!17026 (regOne!33906 (reg!17026 r!7292))))) b!6871231))

(assert (= (and b!6869153 ((_ is Concat!25542) (reg!17026 (regOne!33906 (reg!17026 r!7292))))) b!6871232))

(assert (= (and b!6869153 ((_ is Star!16697) (reg!17026 (regOne!33906 (reg!17026 r!7292))))) b!6871233))

(assert (= (and b!6869153 ((_ is Union!16697) (reg!17026 (regOne!33906 (reg!17026 r!7292))))) b!6871234))

(declare-fun b!6871237 () Bool)

(declare-fun e!4141811 () Bool)

(declare-fun tp!1886811 () Bool)

(declare-fun tp!1886812 () Bool)

(assert (=> b!6871237 (= e!4141811 (and tp!1886811 tp!1886812))))

(assert (=> b!6868902 (= tp!1885580 e!4141811)))

(assert (= (and b!6868902 ((_ is Cons!66266) (exprs!6581 (h!72715 res!2801660)))) b!6871237))

(declare-fun b!6871242 () Bool)

(declare-fun e!4141812 () Bool)

(declare-fun tp!1886817 () Bool)

(declare-fun tp!1886818 () Bool)

(assert (=> b!6871242 (= e!4141812 (and tp!1886817 tp!1886818))))

(assert (=> b!6869146 (= tp!1885650 e!4141812)))

(assert (= (and b!6869146 ((_ is Cons!66266) (exprs!6581 (h!72715 (t!380134 (t!380134 zl!343)))))) b!6871242))

(declare-fun b!6871248 () Bool)

(declare-fun e!4141813 () Bool)

(declare-fun tp!1886823 () Bool)

(assert (=> b!6871248 (= e!4141813 tp!1886823)))

(declare-fun b!6871250 () Bool)

(declare-fun tp!1886821 () Bool)

(declare-fun tp!1886822 () Bool)

(assert (=> b!6871250 (= e!4141813 (and tp!1886821 tp!1886822))))

(assert (=> b!6869122 (= tp!1885619 e!4141813)))

(declare-fun b!6871246 () Bool)

(declare-fun tp!1886819 () Bool)

(declare-fun tp!1886820 () Bool)

(assert (=> b!6871246 (= e!4141813 (and tp!1886819 tp!1886820))))

(declare-fun b!6871243 () Bool)

(assert (=> b!6871243 (= e!4141813 tp_is_empty!42647)))

(assert (= (and b!6869122 ((_ is ElementMatch!16697) (h!72714 (t!380133 (exprs!6581 (h!72715 zl!343)))))) b!6871243))

(assert (= (and b!6869122 ((_ is Concat!25542) (h!72714 (t!380133 (exprs!6581 (h!72715 zl!343)))))) b!6871246))

(assert (= (and b!6869122 ((_ is Star!16697) (h!72714 (t!380133 (exprs!6581 (h!72715 zl!343)))))) b!6871248))

(assert (= (and b!6869122 ((_ is Union!16697) (h!72714 (t!380133 (exprs!6581 (h!72715 zl!343)))))) b!6871250))

(declare-fun b!6871251 () Bool)

(declare-fun e!4141816 () Bool)

(declare-fun tp!1886833 () Bool)

(declare-fun tp!1886834 () Bool)

(assert (=> b!6871251 (= e!4141816 (and tp!1886833 tp!1886834))))

(assert (=> b!6869122 (= tp!1885620 e!4141816)))

(assert (= (and b!6869122 ((_ is Cons!66266) (t!380133 (t!380133 (exprs!6581 (h!72715 zl!343)))))) b!6871251))

(declare-fun b!6871258 () Bool)

(declare-fun e!4141817 () Bool)

(declare-fun tp!1886840 () Bool)

(assert (=> b!6871258 (= e!4141817 tp!1886840)))

(declare-fun b!6871259 () Bool)

(declare-fun tp!1886838 () Bool)

(declare-fun tp!1886839 () Bool)

(assert (=> b!6871259 (= e!4141817 (and tp!1886838 tp!1886839))))

(assert (=> b!6869162 (= tp!1885669 e!4141817)))

(declare-fun b!6871257 () Bool)

(declare-fun tp!1886836 () Bool)

(declare-fun tp!1886837 () Bool)

(assert (=> b!6871257 (= e!4141817 (and tp!1886836 tp!1886837))))

(declare-fun b!6871256 () Bool)

(assert (=> b!6871256 (= e!4141817 tp_is_empty!42647)))

(assert (= (and b!6869162 ((_ is ElementMatch!16697) (regOne!33907 (regOne!33906 (regOne!33907 r!7292))))) b!6871256))

(assert (= (and b!6869162 ((_ is Concat!25542) (regOne!33907 (regOne!33906 (regOne!33907 r!7292))))) b!6871257))

(assert (= (and b!6869162 ((_ is Star!16697) (regOne!33907 (regOne!33906 (regOne!33907 r!7292))))) b!6871258))

(assert (= (and b!6869162 ((_ is Union!16697) (regOne!33907 (regOne!33906 (regOne!33907 r!7292))))) b!6871259))

(declare-fun b!6871266 () Bool)

(declare-fun e!4141819 () Bool)

(declare-fun tp!1886850 () Bool)

(assert (=> b!6871266 (= e!4141819 tp!1886850)))

(declare-fun b!6871267 () Bool)

(declare-fun tp!1886848 () Bool)

(declare-fun tp!1886849 () Bool)

(assert (=> b!6871267 (= e!4141819 (and tp!1886848 tp!1886849))))

(assert (=> b!6869162 (= tp!1885670 e!4141819)))

(declare-fun b!6871265 () Bool)

(declare-fun tp!1886846 () Bool)

(declare-fun tp!1886847 () Bool)

(assert (=> b!6871265 (= e!4141819 (and tp!1886846 tp!1886847))))

(declare-fun b!6871264 () Bool)

(assert (=> b!6871264 (= e!4141819 tp_is_empty!42647)))

(assert (= (and b!6869162 ((_ is ElementMatch!16697) (regTwo!33907 (regOne!33906 (regOne!33907 r!7292))))) b!6871264))

(assert (= (and b!6869162 ((_ is Concat!25542) (regTwo!33907 (regOne!33906 (regOne!33907 r!7292))))) b!6871265))

(assert (= (and b!6869162 ((_ is Star!16697) (regTwo!33907 (regOne!33906 (regOne!33907 r!7292))))) b!6871266))

(assert (= (and b!6869162 ((_ is Union!16697) (regTwo!33907 (regOne!33906 (regOne!33907 r!7292))))) b!6871267))

(declare-fun b!6871270 () Bool)

(declare-fun e!4141820 () Bool)

(declare-fun tp!1886855 () Bool)

(assert (=> b!6871270 (= e!4141820 tp!1886855)))

(declare-fun b!6871271 () Bool)

(declare-fun tp!1886853 () Bool)

(declare-fun tp!1886854 () Bool)

(assert (=> b!6871271 (= e!4141820 (and tp!1886853 tp!1886854))))

(assert (=> b!6869139 (= tp!1885640 e!4141820)))

(declare-fun b!6871269 () Bool)

(declare-fun tp!1886851 () Bool)

(declare-fun tp!1886852 () Bool)

(assert (=> b!6871269 (= e!4141820 (and tp!1886851 tp!1886852))))

(declare-fun b!6871268 () Bool)

(assert (=> b!6871268 (= e!4141820 tp_is_empty!42647)))

(assert (= (and b!6869139 ((_ is ElementMatch!16697) (regOne!33907 (regTwo!33907 (regTwo!33907 r!7292))))) b!6871268))

(assert (= (and b!6869139 ((_ is Concat!25542) (regOne!33907 (regTwo!33907 (regTwo!33907 r!7292))))) b!6871269))

(assert (= (and b!6869139 ((_ is Star!16697) (regOne!33907 (regTwo!33907 (regTwo!33907 r!7292))))) b!6871270))

(assert (= (and b!6869139 ((_ is Union!16697) (regOne!33907 (regTwo!33907 (regTwo!33907 r!7292))))) b!6871271))

(declare-fun b!6871274 () Bool)

(declare-fun e!4141821 () Bool)

(declare-fun tp!1886860 () Bool)

(assert (=> b!6871274 (= e!4141821 tp!1886860)))

(declare-fun b!6871275 () Bool)

(declare-fun tp!1886858 () Bool)

(declare-fun tp!1886859 () Bool)

(assert (=> b!6871275 (= e!4141821 (and tp!1886858 tp!1886859))))

(assert (=> b!6869139 (= tp!1885641 e!4141821)))

(declare-fun b!6871273 () Bool)

(declare-fun tp!1886856 () Bool)

(declare-fun tp!1886857 () Bool)

(assert (=> b!6871273 (= e!4141821 (and tp!1886856 tp!1886857))))

(declare-fun b!6871272 () Bool)

(assert (=> b!6871272 (= e!4141821 tp_is_empty!42647)))

(assert (= (and b!6869139 ((_ is ElementMatch!16697) (regTwo!33907 (regTwo!33907 (regTwo!33907 r!7292))))) b!6871272))

(assert (= (and b!6869139 ((_ is Concat!25542) (regTwo!33907 (regTwo!33907 (regTwo!33907 r!7292))))) b!6871273))

(assert (= (and b!6869139 ((_ is Star!16697) (regTwo!33907 (regTwo!33907 (regTwo!33907 r!7292))))) b!6871274))

(assert (= (and b!6869139 ((_ is Union!16697) (regTwo!33907 (regTwo!33907 (regTwo!33907 r!7292))))) b!6871275))

(declare-fun b!6871278 () Bool)

(declare-fun e!4141822 () Bool)

(declare-fun tp!1886865 () Bool)

(assert (=> b!6871278 (= e!4141822 tp!1886865)))

(declare-fun b!6871279 () Bool)

(declare-fun tp!1886863 () Bool)

(declare-fun tp!1886864 () Bool)

(assert (=> b!6871279 (= e!4141822 (and tp!1886863 tp!1886864))))

(assert (=> b!6869205 (= tp!1885726 e!4141822)))

(declare-fun b!6871277 () Bool)

(declare-fun tp!1886861 () Bool)

(declare-fun tp!1886862 () Bool)

(assert (=> b!6871277 (= e!4141822 (and tp!1886861 tp!1886862))))

(declare-fun b!6871276 () Bool)

(assert (=> b!6871276 (= e!4141822 tp_is_empty!42647)))

(assert (= (and b!6869205 ((_ is ElementMatch!16697) (reg!17026 (reg!17026 (regOne!33907 r!7292))))) b!6871276))

(assert (= (and b!6869205 ((_ is Concat!25542) (reg!17026 (reg!17026 (regOne!33907 r!7292))))) b!6871277))

(assert (= (and b!6869205 ((_ is Star!16697) (reg!17026 (reg!17026 (regOne!33907 r!7292))))) b!6871278))

(assert (= (and b!6869205 ((_ is Union!16697) (reg!17026 (reg!17026 (regOne!33907 r!7292))))) b!6871279))

(declare-fun b!6871282 () Bool)

(declare-fun e!4141823 () Bool)

(declare-fun tp!1886870 () Bool)

(assert (=> b!6871282 (= e!4141823 tp!1886870)))

(declare-fun b!6871283 () Bool)

(declare-fun tp!1886868 () Bool)

(declare-fun tp!1886869 () Bool)

(assert (=> b!6871283 (= e!4141823 (and tp!1886868 tp!1886869))))

(assert (=> b!6869196 (= tp!1885712 e!4141823)))

(declare-fun b!6871281 () Bool)

(declare-fun tp!1886866 () Bool)

(declare-fun tp!1886867 () Bool)

(assert (=> b!6871281 (= e!4141823 (and tp!1886866 tp!1886867))))

(declare-fun b!6871280 () Bool)

(assert (=> b!6871280 (= e!4141823 tp_is_empty!42647)))

(assert (= (and b!6869196 ((_ is ElementMatch!16697) (regOne!33906 (regOne!33907 (regOne!33906 r!7292))))) b!6871280))

(assert (= (and b!6869196 ((_ is Concat!25542) (regOne!33906 (regOne!33907 (regOne!33906 r!7292))))) b!6871281))

(assert (= (and b!6869196 ((_ is Star!16697) (regOne!33906 (regOne!33907 (regOne!33906 r!7292))))) b!6871282))

(assert (= (and b!6869196 ((_ is Union!16697) (regOne!33906 (regOne!33907 (regOne!33906 r!7292))))) b!6871283))

(declare-fun b!6871286 () Bool)

(declare-fun e!4141824 () Bool)

(declare-fun tp!1886875 () Bool)

(assert (=> b!6871286 (= e!4141824 tp!1886875)))

(declare-fun b!6871287 () Bool)

(declare-fun tp!1886873 () Bool)

(declare-fun tp!1886874 () Bool)

(assert (=> b!6871287 (= e!4141824 (and tp!1886873 tp!1886874))))

(assert (=> b!6869196 (= tp!1885713 e!4141824)))

(declare-fun b!6871285 () Bool)

(declare-fun tp!1886871 () Bool)

(declare-fun tp!1886872 () Bool)

(assert (=> b!6871285 (= e!4141824 (and tp!1886871 tp!1886872))))

(declare-fun b!6871284 () Bool)

(assert (=> b!6871284 (= e!4141824 tp_is_empty!42647)))

(assert (= (and b!6869196 ((_ is ElementMatch!16697) (regTwo!33906 (regOne!33907 (regOne!33906 r!7292))))) b!6871284))

(assert (= (and b!6869196 ((_ is Concat!25542) (regTwo!33906 (regOne!33907 (regOne!33906 r!7292))))) b!6871285))

(assert (= (and b!6869196 ((_ is Star!16697) (regTwo!33906 (regOne!33907 (regOne!33906 r!7292))))) b!6871286))

(assert (= (and b!6869196 ((_ is Union!16697) (regTwo!33906 (regOne!33907 (regOne!33906 r!7292))))) b!6871287))

(declare-fun b!6871290 () Bool)

(declare-fun e!4141825 () Bool)

(declare-fun tp!1886880 () Bool)

(assert (=> b!6871290 (= e!4141825 tp!1886880)))

(declare-fun b!6871291 () Bool)

(declare-fun tp!1886878 () Bool)

(declare-fun tp!1886879 () Bool)

(assert (=> b!6871291 (= e!4141825 (and tp!1886878 tp!1886879))))

(assert (=> b!6869198 (= tp!1885714 e!4141825)))

(declare-fun b!6871289 () Bool)

(declare-fun tp!1886876 () Bool)

(declare-fun tp!1886877 () Bool)

(assert (=> b!6871289 (= e!4141825 (and tp!1886876 tp!1886877))))

(declare-fun b!6871288 () Bool)

(assert (=> b!6871288 (= e!4141825 tp_is_empty!42647)))

(assert (= (and b!6869198 ((_ is ElementMatch!16697) (regOne!33907 (regOne!33907 (regOne!33906 r!7292))))) b!6871288))

(assert (= (and b!6869198 ((_ is Concat!25542) (regOne!33907 (regOne!33907 (regOne!33906 r!7292))))) b!6871289))

(assert (= (and b!6869198 ((_ is Star!16697) (regOne!33907 (regOne!33907 (regOne!33906 r!7292))))) b!6871290))

(assert (= (and b!6869198 ((_ is Union!16697) (regOne!33907 (regOne!33907 (regOne!33906 r!7292))))) b!6871291))

(declare-fun b!6871294 () Bool)

(declare-fun e!4141826 () Bool)

(declare-fun tp!1886885 () Bool)

(assert (=> b!6871294 (= e!4141826 tp!1886885)))

(declare-fun b!6871295 () Bool)

(declare-fun tp!1886883 () Bool)

(declare-fun tp!1886884 () Bool)

(assert (=> b!6871295 (= e!4141826 (and tp!1886883 tp!1886884))))

(assert (=> b!6869198 (= tp!1885715 e!4141826)))

(declare-fun b!6871293 () Bool)

(declare-fun tp!1886881 () Bool)

(declare-fun tp!1886882 () Bool)

(assert (=> b!6871293 (= e!4141826 (and tp!1886881 tp!1886882))))

(declare-fun b!6871292 () Bool)

(assert (=> b!6871292 (= e!4141826 tp_is_empty!42647)))

(assert (= (and b!6869198 ((_ is ElementMatch!16697) (regTwo!33907 (regOne!33907 (regOne!33906 r!7292))))) b!6871292))

(assert (= (and b!6869198 ((_ is Concat!25542) (regTwo!33907 (regOne!33907 (regOne!33906 r!7292))))) b!6871293))

(assert (= (and b!6869198 ((_ is Star!16697) (regTwo!33907 (regOne!33907 (regOne!33906 r!7292))))) b!6871294))

(assert (= (and b!6869198 ((_ is Union!16697) (regTwo!33907 (regOne!33907 (regOne!33906 r!7292))))) b!6871295))

(declare-fun b!6871298 () Bool)

(declare-fun e!4141827 () Bool)

(declare-fun tp!1886890 () Bool)

(assert (=> b!6871298 (= e!4141827 tp!1886890)))

(declare-fun b!6871299 () Bool)

(declare-fun tp!1886888 () Bool)

(declare-fun tp!1886889 () Bool)

(assert (=> b!6871299 (= e!4141827 (and tp!1886888 tp!1886889))))

(assert (=> b!6869116 (= tp!1885613 e!4141827)))

(declare-fun b!6871297 () Bool)

(declare-fun tp!1886886 () Bool)

(declare-fun tp!1886887 () Bool)

(assert (=> b!6871297 (= e!4141827 (and tp!1886886 tp!1886887))))

(declare-fun b!6871296 () Bool)

(assert (=> b!6871296 (= e!4141827 tp_is_empty!42647)))

(assert (= (and b!6869116 ((_ is ElementMatch!16697) (reg!17026 (reg!17026 (regTwo!33906 r!7292))))) b!6871296))

(assert (= (and b!6869116 ((_ is Concat!25542) (reg!17026 (reg!17026 (regTwo!33906 r!7292))))) b!6871297))

(assert (= (and b!6869116 ((_ is Star!16697) (reg!17026 (reg!17026 (regTwo!33906 r!7292))))) b!6871298))

(assert (= (and b!6869116 ((_ is Union!16697) (reg!17026 (reg!17026 (regTwo!33906 r!7292))))) b!6871299))

(declare-fun b!6871302 () Bool)

(declare-fun e!4141828 () Bool)

(declare-fun tp!1886895 () Bool)

(assert (=> b!6871302 (= e!4141828 tp!1886895)))

(declare-fun b!6871303 () Bool)

(declare-fun tp!1886893 () Bool)

(declare-fun tp!1886894 () Bool)

(assert (=> b!6871303 (= e!4141828 (and tp!1886893 tp!1886894))))

(assert (=> b!6869189 (= tp!1885706 e!4141828)))

(declare-fun b!6871301 () Bool)

(declare-fun tp!1886891 () Bool)

(declare-fun tp!1886892 () Bool)

(assert (=> b!6871301 (= e!4141828 (and tp!1886891 tp!1886892))))

(declare-fun b!6871300 () Bool)

(assert (=> b!6871300 (= e!4141828 tp_is_empty!42647)))

(assert (= (and b!6869189 ((_ is ElementMatch!16697) (reg!17026 (regOne!33907 (regOne!33907 r!7292))))) b!6871300))

(assert (= (and b!6869189 ((_ is Concat!25542) (reg!17026 (regOne!33907 (regOne!33907 r!7292))))) b!6871301))

(assert (= (and b!6869189 ((_ is Star!16697) (reg!17026 (regOne!33907 (regOne!33907 r!7292))))) b!6871302))

(assert (= (and b!6869189 ((_ is Union!16697) (reg!17026 (regOne!33907 (regOne!33907 r!7292))))) b!6871303))

(declare-fun b!6871306 () Bool)

(declare-fun e!4141829 () Bool)

(declare-fun tp!1886900 () Bool)

(assert (=> b!6871306 (= e!4141829 tp!1886900)))

(declare-fun b!6871307 () Bool)

(declare-fun tp!1886898 () Bool)

(declare-fun tp!1886899 () Bool)

(assert (=> b!6871307 (= e!4141829 (and tp!1886898 tp!1886899))))

(assert (=> b!6869180 (= tp!1885692 e!4141829)))

(declare-fun b!6871305 () Bool)

(declare-fun tp!1886896 () Bool)

(declare-fun tp!1886897 () Bool)

(assert (=> b!6871305 (= e!4141829 (and tp!1886896 tp!1886897))))

(declare-fun b!6871304 () Bool)

(assert (=> b!6871304 (= e!4141829 tp_is_empty!42647)))

(assert (= (and b!6869180 ((_ is ElementMatch!16697) (regOne!33906 (regOne!33907 (reg!17026 r!7292))))) b!6871304))

(assert (= (and b!6869180 ((_ is Concat!25542) (regOne!33906 (regOne!33907 (reg!17026 r!7292))))) b!6871305))

(assert (= (and b!6869180 ((_ is Star!16697) (regOne!33906 (regOne!33907 (reg!17026 r!7292))))) b!6871306))

(assert (= (and b!6869180 ((_ is Union!16697) (regOne!33906 (regOne!33907 (reg!17026 r!7292))))) b!6871307))

(declare-fun b!6871310 () Bool)

(declare-fun e!4141830 () Bool)

(declare-fun tp!1886905 () Bool)

(assert (=> b!6871310 (= e!4141830 tp!1886905)))

(declare-fun b!6871311 () Bool)

(declare-fun tp!1886903 () Bool)

(declare-fun tp!1886904 () Bool)

(assert (=> b!6871311 (= e!4141830 (and tp!1886903 tp!1886904))))

(assert (=> b!6869180 (= tp!1885693 e!4141830)))

(declare-fun b!6871309 () Bool)

(declare-fun tp!1886901 () Bool)

(declare-fun tp!1886902 () Bool)

(assert (=> b!6871309 (= e!4141830 (and tp!1886901 tp!1886902))))

(declare-fun b!6871308 () Bool)

(assert (=> b!6871308 (= e!4141830 tp_is_empty!42647)))

(assert (= (and b!6869180 ((_ is ElementMatch!16697) (regTwo!33906 (regOne!33907 (reg!17026 r!7292))))) b!6871308))

(assert (= (and b!6869180 ((_ is Concat!25542) (regTwo!33906 (regOne!33907 (reg!17026 r!7292))))) b!6871309))

(assert (= (and b!6869180 ((_ is Star!16697) (regTwo!33906 (regOne!33907 (reg!17026 r!7292))))) b!6871310))

(assert (= (and b!6869180 ((_ is Union!16697) (regTwo!33906 (regOne!33907 (reg!17026 r!7292))))) b!6871311))

(declare-fun b!6871314 () Bool)

(declare-fun e!4141831 () Bool)

(declare-fun tp!1886910 () Bool)

(assert (=> b!6871314 (= e!4141831 tp!1886910)))

(declare-fun b!6871315 () Bool)

(declare-fun tp!1886908 () Bool)

(declare-fun tp!1886909 () Bool)

(assert (=> b!6871315 (= e!4141831 (and tp!1886908 tp!1886909))))

(assert (=> b!6869182 (= tp!1885694 e!4141831)))

(declare-fun b!6871313 () Bool)

(declare-fun tp!1886906 () Bool)

(declare-fun tp!1886907 () Bool)

(assert (=> b!6871313 (= e!4141831 (and tp!1886906 tp!1886907))))

(declare-fun b!6871312 () Bool)

(assert (=> b!6871312 (= e!4141831 tp_is_empty!42647)))

(assert (= (and b!6869182 ((_ is ElementMatch!16697) (regOne!33907 (regOne!33907 (reg!17026 r!7292))))) b!6871312))

(assert (= (and b!6869182 ((_ is Concat!25542) (regOne!33907 (regOne!33907 (reg!17026 r!7292))))) b!6871313))

(assert (= (and b!6869182 ((_ is Star!16697) (regOne!33907 (regOne!33907 (reg!17026 r!7292))))) b!6871314))

(assert (= (and b!6869182 ((_ is Union!16697) (regOne!33907 (regOne!33907 (reg!17026 r!7292))))) b!6871315))

(declare-fun b!6871318 () Bool)

(declare-fun e!4141832 () Bool)

(declare-fun tp!1886915 () Bool)

(assert (=> b!6871318 (= e!4141832 tp!1886915)))

(declare-fun b!6871319 () Bool)

(declare-fun tp!1886913 () Bool)

(declare-fun tp!1886914 () Bool)

(assert (=> b!6871319 (= e!4141832 (and tp!1886913 tp!1886914))))

(assert (=> b!6869182 (= tp!1885695 e!4141832)))

(declare-fun b!6871317 () Bool)

(declare-fun tp!1886911 () Bool)

(declare-fun tp!1886912 () Bool)

(assert (=> b!6871317 (= e!4141832 (and tp!1886911 tp!1886912))))

(declare-fun b!6871316 () Bool)

(assert (=> b!6871316 (= e!4141832 tp_is_empty!42647)))

(assert (= (and b!6869182 ((_ is ElementMatch!16697) (regTwo!33907 (regOne!33907 (reg!17026 r!7292))))) b!6871316))

(assert (= (and b!6869182 ((_ is Concat!25542) (regTwo!33907 (regOne!33907 (reg!17026 r!7292))))) b!6871317))

(assert (= (and b!6869182 ((_ is Star!16697) (regTwo!33907 (regOne!33907 (reg!17026 r!7292))))) b!6871318))

(assert (= (and b!6869182 ((_ is Union!16697) (regTwo!33907 (regOne!33907 (reg!17026 r!7292))))) b!6871319))

(declare-fun b!6871322 () Bool)

(declare-fun e!4141833 () Bool)

(declare-fun tp!1886920 () Bool)

(assert (=> b!6871322 (= e!4141833 tp!1886920)))

(declare-fun b!6871323 () Bool)

(declare-fun tp!1886918 () Bool)

(declare-fun tp!1886919 () Bool)

(assert (=> b!6871323 (= e!4141833 (and tp!1886918 tp!1886919))))

(assert (=> b!6869107 (= tp!1885599 e!4141833)))

(declare-fun b!6871321 () Bool)

(declare-fun tp!1886916 () Bool)

(declare-fun tp!1886917 () Bool)

(assert (=> b!6871321 (= e!4141833 (and tp!1886916 tp!1886917))))

(declare-fun b!6871320 () Bool)

(assert (=> b!6871320 (= e!4141833 tp_is_empty!42647)))

(assert (= (and b!6869107 ((_ is ElementMatch!16697) (regOne!33906 (regOne!33906 (regTwo!33907 r!7292))))) b!6871320))

(assert (= (and b!6869107 ((_ is Concat!25542) (regOne!33906 (regOne!33906 (regTwo!33907 r!7292))))) b!6871321))

(assert (= (and b!6869107 ((_ is Star!16697) (regOne!33906 (regOne!33906 (regTwo!33907 r!7292))))) b!6871322))

(assert (= (and b!6869107 ((_ is Union!16697) (regOne!33906 (regOne!33906 (regTwo!33907 r!7292))))) b!6871323))

(declare-fun b!6871326 () Bool)

(declare-fun e!4141834 () Bool)

(declare-fun tp!1886925 () Bool)

(assert (=> b!6871326 (= e!4141834 tp!1886925)))

(declare-fun b!6871327 () Bool)

(declare-fun tp!1886923 () Bool)

(declare-fun tp!1886924 () Bool)

(assert (=> b!6871327 (= e!4141834 (and tp!1886923 tp!1886924))))

(assert (=> b!6869107 (= tp!1885600 e!4141834)))

(declare-fun b!6871325 () Bool)

(declare-fun tp!1886921 () Bool)

(declare-fun tp!1886922 () Bool)

(assert (=> b!6871325 (= e!4141834 (and tp!1886921 tp!1886922))))

(declare-fun b!6871324 () Bool)

(assert (=> b!6871324 (= e!4141834 tp_is_empty!42647)))

(assert (= (and b!6869107 ((_ is ElementMatch!16697) (regTwo!33906 (regOne!33906 (regTwo!33907 r!7292))))) b!6871324))

(assert (= (and b!6869107 ((_ is Concat!25542) (regTwo!33906 (regOne!33906 (regTwo!33907 r!7292))))) b!6871325))

(assert (= (and b!6869107 ((_ is Star!16697) (regTwo!33906 (regOne!33906 (regTwo!33907 r!7292))))) b!6871326))

(assert (= (and b!6869107 ((_ is Union!16697) (regTwo!33906 (regOne!33906 (regTwo!33907 r!7292))))) b!6871327))

(declare-fun b!6871330 () Bool)

(declare-fun e!4141835 () Bool)

(declare-fun tp!1886930 () Bool)

(assert (=> b!6871330 (= e!4141835 tp!1886930)))

(declare-fun b!6871331 () Bool)

(declare-fun tp!1886928 () Bool)

(declare-fun tp!1886929 () Bool)

(assert (=> b!6871331 (= e!4141835 (and tp!1886928 tp!1886929))))

(assert (=> b!6869109 (= tp!1885601 e!4141835)))

(declare-fun b!6871329 () Bool)

(declare-fun tp!1886926 () Bool)

(declare-fun tp!1886927 () Bool)

(assert (=> b!6871329 (= e!4141835 (and tp!1886926 tp!1886927))))

(declare-fun b!6871328 () Bool)

(assert (=> b!6871328 (= e!4141835 tp_is_empty!42647)))

(assert (= (and b!6869109 ((_ is ElementMatch!16697) (regOne!33907 (regOne!33906 (regTwo!33907 r!7292))))) b!6871328))

(assert (= (and b!6869109 ((_ is Concat!25542) (regOne!33907 (regOne!33906 (regTwo!33907 r!7292))))) b!6871329))

(assert (= (and b!6869109 ((_ is Star!16697) (regOne!33907 (regOne!33906 (regTwo!33907 r!7292))))) b!6871330))

(assert (= (and b!6869109 ((_ is Union!16697) (regOne!33907 (regOne!33906 (regTwo!33907 r!7292))))) b!6871331))

(declare-fun b!6871334 () Bool)

(declare-fun e!4141836 () Bool)

(declare-fun tp!1886935 () Bool)

(assert (=> b!6871334 (= e!4141836 tp!1886935)))

(declare-fun b!6871335 () Bool)

(declare-fun tp!1886933 () Bool)

(declare-fun tp!1886934 () Bool)

(assert (=> b!6871335 (= e!4141836 (and tp!1886933 tp!1886934))))

(assert (=> b!6869109 (= tp!1885602 e!4141836)))

(declare-fun b!6871333 () Bool)

(declare-fun tp!1886931 () Bool)

(declare-fun tp!1886932 () Bool)

(assert (=> b!6871333 (= e!4141836 (and tp!1886931 tp!1886932))))

(declare-fun b!6871332 () Bool)

(assert (=> b!6871332 (= e!4141836 tp_is_empty!42647)))

(assert (= (and b!6869109 ((_ is ElementMatch!16697) (regTwo!33907 (regOne!33906 (regTwo!33907 r!7292))))) b!6871332))

(assert (= (and b!6869109 ((_ is Concat!25542) (regTwo!33907 (regOne!33906 (regTwo!33907 r!7292))))) b!6871333))

(assert (= (and b!6869109 ((_ is Star!16697) (regTwo!33907 (regOne!33906 (regTwo!33907 r!7292))))) b!6871334))

(assert (= (and b!6869109 ((_ is Union!16697) (regTwo!33907 (regOne!33906 (regTwo!33907 r!7292))))) b!6871335))

(declare-fun b!6871338 () Bool)

(declare-fun e!4141837 () Bool)

(declare-fun tp!1886940 () Bool)

(assert (=> b!6871338 (= e!4141837 tp!1886940)))

(declare-fun b!6871339 () Bool)

(declare-fun tp!1886938 () Bool)

(declare-fun tp!1886939 () Bool)

(assert (=> b!6871339 (= e!4141837 (and tp!1886938 tp!1886939))))

(assert (=> b!6869100 (= tp!1885593 e!4141837)))

(declare-fun b!6871337 () Bool)

(declare-fun tp!1886936 () Bool)

(declare-fun tp!1886937 () Bool)

(assert (=> b!6871337 (= e!4141837 (and tp!1886936 tp!1886937))))

(declare-fun b!6871336 () Bool)

(assert (=> b!6871336 (= e!4141837 tp_is_empty!42647)))

(assert (= (and b!6869100 ((_ is ElementMatch!16697) (reg!17026 (regTwo!33907 (regTwo!33906 r!7292))))) b!6871336))

(assert (= (and b!6869100 ((_ is Concat!25542) (reg!17026 (regTwo!33907 (regTwo!33906 r!7292))))) b!6871337))

(assert (= (and b!6869100 ((_ is Star!16697) (reg!17026 (regTwo!33907 (regTwo!33906 r!7292))))) b!6871338))

(assert (= (and b!6869100 ((_ is Union!16697) (reg!17026 (regTwo!33907 (regTwo!33906 r!7292))))) b!6871339))

(declare-fun b!6871342 () Bool)

(declare-fun e!4141838 () Bool)

(declare-fun tp!1886945 () Bool)

(assert (=> b!6871342 (= e!4141838 tp!1886945)))

(declare-fun b!6871343 () Bool)

(declare-fun tp!1886943 () Bool)

(declare-fun tp!1886944 () Bool)

(assert (=> b!6871343 (= e!4141838 (and tp!1886943 tp!1886944))))

(assert (=> b!6869124 (= tp!1885621 e!4141838)))

(declare-fun b!6871341 () Bool)

(declare-fun tp!1886941 () Bool)

(declare-fun tp!1886942 () Bool)

(assert (=> b!6871341 (= e!4141838 (and tp!1886941 tp!1886942))))

(declare-fun b!6871340 () Bool)

(assert (=> b!6871340 (= e!4141838 tp_is_empty!42647)))

(assert (= (and b!6869124 ((_ is ElementMatch!16697) (regOne!33906 (regOne!33906 (regTwo!33906 r!7292))))) b!6871340))

(assert (= (and b!6869124 ((_ is Concat!25542) (regOne!33906 (regOne!33906 (regTwo!33906 r!7292))))) b!6871341))

(assert (= (and b!6869124 ((_ is Star!16697) (regOne!33906 (regOne!33906 (regTwo!33906 r!7292))))) b!6871342))

(assert (= (and b!6869124 ((_ is Union!16697) (regOne!33906 (regOne!33906 (regTwo!33906 r!7292))))) b!6871343))

(declare-fun b!6871346 () Bool)

(declare-fun e!4141839 () Bool)

(declare-fun tp!1886950 () Bool)

(assert (=> b!6871346 (= e!4141839 tp!1886950)))

(declare-fun b!6871347 () Bool)

(declare-fun tp!1886948 () Bool)

(declare-fun tp!1886949 () Bool)

(assert (=> b!6871347 (= e!4141839 (and tp!1886948 tp!1886949))))

(assert (=> b!6869124 (= tp!1885622 e!4141839)))

(declare-fun b!6871345 () Bool)

(declare-fun tp!1886946 () Bool)

(declare-fun tp!1886947 () Bool)

(assert (=> b!6871345 (= e!4141839 (and tp!1886946 tp!1886947))))

(declare-fun b!6871344 () Bool)

(assert (=> b!6871344 (= e!4141839 tp_is_empty!42647)))

(assert (= (and b!6869124 ((_ is ElementMatch!16697) (regTwo!33906 (regOne!33906 (regTwo!33906 r!7292))))) b!6871344))

(assert (= (and b!6869124 ((_ is Concat!25542) (regTwo!33906 (regOne!33906 (regTwo!33906 r!7292))))) b!6871345))

(assert (= (and b!6869124 ((_ is Star!16697) (regTwo!33906 (regOne!33906 (regTwo!33906 r!7292))))) b!6871346))

(assert (= (and b!6869124 ((_ is Union!16697) (regTwo!33906 (regOne!33906 (regTwo!33906 r!7292))))) b!6871347))

(declare-fun b!6871350 () Bool)

(declare-fun e!4141840 () Bool)

(declare-fun tp!1886955 () Bool)

(assert (=> b!6871350 (= e!4141840 tp!1886955)))

(declare-fun b!6871351 () Bool)

(declare-fun tp!1886953 () Bool)

(declare-fun tp!1886954 () Bool)

(assert (=> b!6871351 (= e!4141840 (and tp!1886953 tp!1886954))))

(assert (=> b!6869173 (= tp!1885686 e!4141840)))

(declare-fun b!6871349 () Bool)

(declare-fun tp!1886951 () Bool)

(declare-fun tp!1886952 () Bool)

(assert (=> b!6871349 (= e!4141840 (and tp!1886951 tp!1886952))))

(declare-fun b!6871348 () Bool)

(assert (=> b!6871348 (= e!4141840 tp_is_empty!42647)))

(assert (= (and b!6869173 ((_ is ElementMatch!16697) (reg!17026 (regOne!33906 (regOne!33906 r!7292))))) b!6871348))

(assert (= (and b!6869173 ((_ is Concat!25542) (reg!17026 (regOne!33906 (regOne!33906 r!7292))))) b!6871349))

(assert (= (and b!6869173 ((_ is Star!16697) (reg!17026 (regOne!33906 (regOne!33906 r!7292))))) b!6871350))

(assert (= (and b!6869173 ((_ is Union!16697) (reg!17026 (regOne!33906 (regOne!33906 r!7292))))) b!6871351))

(declare-fun b!6871354 () Bool)

(declare-fun e!4141841 () Bool)

(declare-fun tp!1886960 () Bool)

(assert (=> b!6871354 (= e!4141841 tp!1886960)))

(declare-fun b!6871355 () Bool)

(declare-fun tp!1886958 () Bool)

(declare-fun tp!1886959 () Bool)

(assert (=> b!6871355 (= e!4141841 (and tp!1886958 tp!1886959))))

(assert (=> b!6869164 (= tp!1885672 e!4141841)))

(declare-fun b!6871353 () Bool)

(declare-fun tp!1886956 () Bool)

(declare-fun tp!1886957 () Bool)

(assert (=> b!6871353 (= e!4141841 (and tp!1886956 tp!1886957))))

(declare-fun b!6871352 () Bool)

(assert (=> b!6871352 (= e!4141841 tp_is_empty!42647)))

(assert (= (and b!6869164 ((_ is ElementMatch!16697) (regOne!33906 (regTwo!33906 (regOne!33907 r!7292))))) b!6871352))

(assert (= (and b!6869164 ((_ is Concat!25542) (regOne!33906 (regTwo!33906 (regOne!33907 r!7292))))) b!6871353))

(assert (= (and b!6869164 ((_ is Star!16697) (regOne!33906 (regTwo!33906 (regOne!33907 r!7292))))) b!6871354))

(assert (= (and b!6869164 ((_ is Union!16697) (regOne!33906 (regTwo!33906 (regOne!33907 r!7292))))) b!6871355))

(declare-fun b!6871358 () Bool)

(declare-fun e!4141842 () Bool)

(declare-fun tp!1886965 () Bool)

(assert (=> b!6871358 (= e!4141842 tp!1886965)))

(declare-fun b!6871359 () Bool)

(declare-fun tp!1886963 () Bool)

(declare-fun tp!1886964 () Bool)

(assert (=> b!6871359 (= e!4141842 (and tp!1886963 tp!1886964))))

(assert (=> b!6869164 (= tp!1885673 e!4141842)))

(declare-fun b!6871357 () Bool)

(declare-fun tp!1886961 () Bool)

(declare-fun tp!1886962 () Bool)

(assert (=> b!6871357 (= e!4141842 (and tp!1886961 tp!1886962))))

(declare-fun b!6871356 () Bool)

(assert (=> b!6871356 (= e!4141842 tp_is_empty!42647)))

(assert (= (and b!6869164 ((_ is ElementMatch!16697) (regTwo!33906 (regTwo!33906 (regOne!33907 r!7292))))) b!6871356))

(assert (= (and b!6869164 ((_ is Concat!25542) (regTwo!33906 (regTwo!33906 (regOne!33907 r!7292))))) b!6871357))

(assert (= (and b!6869164 ((_ is Star!16697) (regTwo!33906 (regTwo!33906 (regOne!33907 r!7292))))) b!6871358))

(assert (= (and b!6869164 ((_ is Union!16697) (regTwo!33906 (regTwo!33906 (regOne!33907 r!7292))))) b!6871359))

(declare-fun b!6871362 () Bool)

(declare-fun e!4141843 () Bool)

(declare-fun tp!1886970 () Bool)

(assert (=> b!6871362 (= e!4141843 tp!1886970)))

(declare-fun b!6871363 () Bool)

(declare-fun tp!1886968 () Bool)

(declare-fun tp!1886969 () Bool)

(assert (=> b!6871363 (= e!4141843 (and tp!1886968 tp!1886969))))

(assert (=> b!6869126 (= tp!1885623 e!4141843)))

(declare-fun b!6871361 () Bool)

(declare-fun tp!1886966 () Bool)

(declare-fun tp!1886967 () Bool)

(assert (=> b!6871361 (= e!4141843 (and tp!1886966 tp!1886967))))

(declare-fun b!6871360 () Bool)

(assert (=> b!6871360 (= e!4141843 tp_is_empty!42647)))

(assert (= (and b!6869126 ((_ is ElementMatch!16697) (regOne!33907 (regOne!33906 (regTwo!33906 r!7292))))) b!6871360))

(assert (= (and b!6869126 ((_ is Concat!25542) (regOne!33907 (regOne!33906 (regTwo!33906 r!7292))))) b!6871361))

(assert (= (and b!6869126 ((_ is Star!16697) (regOne!33907 (regOne!33906 (regTwo!33906 r!7292))))) b!6871362))

(assert (= (and b!6869126 ((_ is Union!16697) (regOne!33907 (regOne!33906 (regTwo!33906 r!7292))))) b!6871363))

(declare-fun b!6871366 () Bool)

(declare-fun e!4141844 () Bool)

(declare-fun tp!1886975 () Bool)

(assert (=> b!6871366 (= e!4141844 tp!1886975)))

(declare-fun b!6871367 () Bool)

(declare-fun tp!1886973 () Bool)

(declare-fun tp!1886974 () Bool)

(assert (=> b!6871367 (= e!4141844 (and tp!1886973 tp!1886974))))

(assert (=> b!6869126 (= tp!1885624 e!4141844)))

(declare-fun b!6871365 () Bool)

(declare-fun tp!1886971 () Bool)

(declare-fun tp!1886972 () Bool)

(assert (=> b!6871365 (= e!4141844 (and tp!1886971 tp!1886972))))

(declare-fun b!6871364 () Bool)

(assert (=> b!6871364 (= e!4141844 tp_is_empty!42647)))

(assert (= (and b!6869126 ((_ is ElementMatch!16697) (regTwo!33907 (regOne!33906 (regTwo!33906 r!7292))))) b!6871364))

(assert (= (and b!6869126 ((_ is Concat!25542) (regTwo!33907 (regOne!33906 (regTwo!33906 r!7292))))) b!6871365))

(assert (= (and b!6869126 ((_ is Star!16697) (regTwo!33907 (regOne!33906 (regTwo!33906 r!7292))))) b!6871366))

(assert (= (and b!6869126 ((_ is Union!16697) (regTwo!33907 (regOne!33906 (regTwo!33906 r!7292))))) b!6871367))

(declare-fun b!6871370 () Bool)

(declare-fun e!4141845 () Bool)

(declare-fun tp!1886980 () Bool)

(assert (=> b!6871370 (= e!4141845 tp!1886980)))

(declare-fun b!6871371 () Bool)

(declare-fun tp!1886978 () Bool)

(declare-fun tp!1886979 () Bool)

(assert (=> b!6871371 (= e!4141845 (and tp!1886978 tp!1886979))))

(assert (=> b!6869166 (= tp!1885674 e!4141845)))

(declare-fun b!6871369 () Bool)

(declare-fun tp!1886976 () Bool)

(declare-fun tp!1886977 () Bool)

(assert (=> b!6871369 (= e!4141845 (and tp!1886976 tp!1886977))))

(declare-fun b!6871368 () Bool)

(assert (=> b!6871368 (= e!4141845 tp_is_empty!42647)))

(assert (= (and b!6869166 ((_ is ElementMatch!16697) (regOne!33907 (regTwo!33906 (regOne!33907 r!7292))))) b!6871368))

(assert (= (and b!6869166 ((_ is Concat!25542) (regOne!33907 (regTwo!33906 (regOne!33907 r!7292))))) b!6871369))

(assert (= (and b!6869166 ((_ is Star!16697) (regOne!33907 (regTwo!33906 (regOne!33907 r!7292))))) b!6871370))

(assert (= (and b!6869166 ((_ is Union!16697) (regOne!33907 (regTwo!33906 (regOne!33907 r!7292))))) b!6871371))

(declare-fun b!6871374 () Bool)

(declare-fun e!4141846 () Bool)

(declare-fun tp!1886985 () Bool)

(assert (=> b!6871374 (= e!4141846 tp!1886985)))

(declare-fun b!6871375 () Bool)

(declare-fun tp!1886983 () Bool)

(declare-fun tp!1886984 () Bool)

(assert (=> b!6871375 (= e!4141846 (and tp!1886983 tp!1886984))))

(assert (=> b!6869166 (= tp!1885675 e!4141846)))

(declare-fun b!6871373 () Bool)

(declare-fun tp!1886981 () Bool)

(declare-fun tp!1886982 () Bool)

(assert (=> b!6871373 (= e!4141846 (and tp!1886981 tp!1886982))))

(declare-fun b!6871372 () Bool)

(assert (=> b!6871372 (= e!4141846 tp_is_empty!42647)))

(assert (= (and b!6869166 ((_ is ElementMatch!16697) (regTwo!33907 (regTwo!33906 (regOne!33907 r!7292))))) b!6871372))

(assert (= (and b!6869166 ((_ is Concat!25542) (regTwo!33907 (regTwo!33906 (regOne!33907 r!7292))))) b!6871373))

(assert (= (and b!6869166 ((_ is Star!16697) (regTwo!33907 (regTwo!33906 (regOne!33907 r!7292))))) b!6871374))

(assert (= (and b!6869166 ((_ is Union!16697) (regTwo!33907 (regTwo!33906 (regOne!33907 r!7292))))) b!6871375))

(declare-fun b!6871378 () Bool)

(declare-fun e!4141847 () Bool)

(declare-fun tp!1886990 () Bool)

(assert (=> b!6871378 (= e!4141847 tp!1886990)))

(declare-fun b!6871379 () Bool)

(declare-fun tp!1886988 () Bool)

(declare-fun tp!1886989 () Bool)

(assert (=> b!6871379 (= e!4141847 (and tp!1886988 tp!1886989))))

(assert (=> b!6869158 (= tp!1885664 e!4141847)))

(declare-fun b!6871377 () Bool)

(declare-fun tp!1886986 () Bool)

(declare-fun tp!1886987 () Bool)

(assert (=> b!6871377 (= e!4141847 (and tp!1886986 tp!1886987))))

(declare-fun b!6871376 () Bool)

(assert (=> b!6871376 (= e!4141847 tp_is_empty!42647)))

(assert (= (and b!6869158 ((_ is ElementMatch!16697) (regOne!33907 (regTwo!33906 (reg!17026 r!7292))))) b!6871376))

(assert (= (and b!6869158 ((_ is Concat!25542) (regOne!33907 (regTwo!33906 (reg!17026 r!7292))))) b!6871377))

(assert (= (and b!6869158 ((_ is Star!16697) (regOne!33907 (regTwo!33906 (reg!17026 r!7292))))) b!6871378))

(assert (= (and b!6869158 ((_ is Union!16697) (regOne!33907 (regTwo!33906 (reg!17026 r!7292))))) b!6871379))

(declare-fun b!6871382 () Bool)

(declare-fun e!4141848 () Bool)

(declare-fun tp!1886995 () Bool)

(assert (=> b!6871382 (= e!4141848 tp!1886995)))

(declare-fun b!6871383 () Bool)

(declare-fun tp!1886993 () Bool)

(declare-fun tp!1886994 () Bool)

(assert (=> b!6871383 (= e!4141848 (and tp!1886993 tp!1886994))))

(assert (=> b!6869158 (= tp!1885665 e!4141848)))

(declare-fun b!6871381 () Bool)

(declare-fun tp!1886991 () Bool)

(declare-fun tp!1886992 () Bool)

(assert (=> b!6871381 (= e!4141848 (and tp!1886991 tp!1886992))))

(declare-fun b!6871380 () Bool)

(assert (=> b!6871380 (= e!4141848 tp_is_empty!42647)))

(assert (= (and b!6869158 ((_ is ElementMatch!16697) (regTwo!33907 (regTwo!33906 (reg!17026 r!7292))))) b!6871380))

(assert (= (and b!6869158 ((_ is Concat!25542) (regTwo!33907 (regTwo!33906 (reg!17026 r!7292))))) b!6871381))

(assert (= (and b!6869158 ((_ is Star!16697) (regTwo!33907 (regTwo!33906 (reg!17026 r!7292))))) b!6871382))

(assert (= (and b!6869158 ((_ is Union!16697) (regTwo!33907 (regTwo!33906 (reg!17026 r!7292))))) b!6871383))

(declare-fun b!6871386 () Bool)

(declare-fun e!4141849 () Bool)

(declare-fun tp!1887000 () Bool)

(assert (=> b!6871386 (= e!4141849 tp!1887000)))

(declare-fun b!6871387 () Bool)

(declare-fun tp!1886998 () Bool)

(declare-fun tp!1886999 () Bool)

(assert (=> b!6871387 (= e!4141849 (and tp!1886998 tp!1886999))))

(assert (=> b!6869133 (= tp!1885633 e!4141849)))

(declare-fun b!6871385 () Bool)

(declare-fun tp!1886996 () Bool)

(declare-fun tp!1886997 () Bool)

(assert (=> b!6871385 (= e!4141849 (and tp!1886996 tp!1886997))))

(declare-fun b!6871384 () Bool)

(assert (=> b!6871384 (= e!4141849 tp_is_empty!42647)))

(assert (= (and b!6869133 ((_ is ElementMatch!16697) (regOne!33906 (regOne!33907 (regTwo!33907 r!7292))))) b!6871384))

(assert (= (and b!6869133 ((_ is Concat!25542) (regOne!33906 (regOne!33907 (regTwo!33907 r!7292))))) b!6871385))

(assert (= (and b!6869133 ((_ is Star!16697) (regOne!33906 (regOne!33907 (regTwo!33907 r!7292))))) b!6871386))

(assert (= (and b!6869133 ((_ is Union!16697) (regOne!33906 (regOne!33907 (regTwo!33907 r!7292))))) b!6871387))

(declare-fun b!6871390 () Bool)

(declare-fun e!4141850 () Bool)

(declare-fun tp!1887005 () Bool)

(assert (=> b!6871390 (= e!4141850 tp!1887005)))

(declare-fun b!6871391 () Bool)

(declare-fun tp!1887003 () Bool)

(declare-fun tp!1887004 () Bool)

(assert (=> b!6871391 (= e!4141850 (and tp!1887003 tp!1887004))))

(assert (=> b!6869133 (= tp!1885634 e!4141850)))

(declare-fun b!6871389 () Bool)

(declare-fun tp!1887001 () Bool)

(declare-fun tp!1887002 () Bool)

(assert (=> b!6871389 (= e!4141850 (and tp!1887001 tp!1887002))))

(declare-fun b!6871388 () Bool)

(assert (=> b!6871388 (= e!4141850 tp_is_empty!42647)))

(assert (= (and b!6869133 ((_ is ElementMatch!16697) (regTwo!33906 (regOne!33907 (regTwo!33907 r!7292))))) b!6871388))

(assert (= (and b!6869133 ((_ is Concat!25542) (regTwo!33906 (regOne!33907 (regTwo!33907 r!7292))))) b!6871389))

(assert (= (and b!6869133 ((_ is Star!16697) (regTwo!33906 (regOne!33907 (regTwo!33907 r!7292))))) b!6871390))

(assert (= (and b!6869133 ((_ is Union!16697) (regTwo!33906 (regOne!33907 (regTwo!33907 r!7292))))) b!6871391))

(declare-fun b!6871394 () Bool)

(declare-fun e!4141851 () Bool)

(declare-fun tp!1887010 () Bool)

(assert (=> b!6871394 (= e!4141851 tp!1887010)))

(declare-fun b!6871395 () Bool)

(declare-fun tp!1887008 () Bool)

(declare-fun tp!1887009 () Bool)

(assert (=> b!6871395 (= e!4141851 (and tp!1887008 tp!1887009))))

(assert (=> b!6869135 (= tp!1885635 e!4141851)))

(declare-fun b!6871393 () Bool)

(declare-fun tp!1887006 () Bool)

(declare-fun tp!1887007 () Bool)

(assert (=> b!6871393 (= e!4141851 (and tp!1887006 tp!1887007))))

(declare-fun b!6871392 () Bool)

(assert (=> b!6871392 (= e!4141851 tp_is_empty!42647)))

(assert (= (and b!6869135 ((_ is ElementMatch!16697) (regOne!33907 (regOne!33907 (regTwo!33907 r!7292))))) b!6871392))

(assert (= (and b!6869135 ((_ is Concat!25542) (regOne!33907 (regOne!33907 (regTwo!33907 r!7292))))) b!6871393))

(assert (= (and b!6869135 ((_ is Star!16697) (regOne!33907 (regOne!33907 (regTwo!33907 r!7292))))) b!6871394))

(assert (= (and b!6869135 ((_ is Union!16697) (regOne!33907 (regOne!33907 (regTwo!33907 r!7292))))) b!6871395))

(declare-fun b!6871398 () Bool)

(declare-fun e!4141852 () Bool)

(declare-fun tp!1887015 () Bool)

(assert (=> b!6871398 (= e!4141852 tp!1887015)))

(declare-fun b!6871399 () Bool)

(declare-fun tp!1887013 () Bool)

(declare-fun tp!1887014 () Bool)

(assert (=> b!6871399 (= e!4141852 (and tp!1887013 tp!1887014))))

(assert (=> b!6869135 (= tp!1885636 e!4141852)))

(declare-fun b!6871397 () Bool)

(declare-fun tp!1887011 () Bool)

(declare-fun tp!1887012 () Bool)

(assert (=> b!6871397 (= e!4141852 (and tp!1887011 tp!1887012))))

(declare-fun b!6871396 () Bool)

(assert (=> b!6871396 (= e!4141852 tp_is_empty!42647)))

(assert (= (and b!6869135 ((_ is ElementMatch!16697) (regTwo!33907 (regOne!33907 (regTwo!33907 r!7292))))) b!6871396))

(assert (= (and b!6869135 ((_ is Concat!25542) (regTwo!33907 (regOne!33907 (regTwo!33907 r!7292))))) b!6871397))

(assert (= (and b!6869135 ((_ is Star!16697) (regTwo!33907 (regOne!33907 (regTwo!33907 r!7292))))) b!6871398))

(assert (= (and b!6869135 ((_ is Union!16697) (regTwo!33907 (regOne!33907 (regTwo!33907 r!7292))))) b!6871399))

(declare-fun b!6871402 () Bool)

(declare-fun e!4141853 () Bool)

(declare-fun tp!1887020 () Bool)

(assert (=> b!6871402 (= e!4141853 tp!1887020)))

(declare-fun b!6871403 () Bool)

(declare-fun tp!1887018 () Bool)

(declare-fun tp!1887019 () Bool)

(assert (=> b!6871403 (= e!4141853 (and tp!1887018 tp!1887019))))

(assert (=> b!6869149 (= tp!1885656 e!4141853)))

(declare-fun b!6871401 () Bool)

(declare-fun tp!1887016 () Bool)

(declare-fun tp!1887017 () Bool)

(assert (=> b!6871401 (= e!4141853 (and tp!1887016 tp!1887017))))

(declare-fun b!6871400 () Bool)

(assert (=> b!6871400 (= e!4141853 tp_is_empty!42647)))

(assert (= (and b!6869149 ((_ is ElementMatch!16697) (reg!17026 (reg!17026 (reg!17026 r!7292))))) b!6871400))

(assert (= (and b!6869149 ((_ is Concat!25542) (reg!17026 (reg!17026 (reg!17026 r!7292))))) b!6871401))

(assert (= (and b!6869149 ((_ is Star!16697) (reg!17026 (reg!17026 (reg!17026 r!7292))))) b!6871402))

(assert (= (and b!6869149 ((_ is Union!16697) (reg!17026 (reg!17026 (reg!17026 r!7292))))) b!6871403))

(declare-fun b!6871406 () Bool)

(declare-fun e!4141854 () Bool)

(declare-fun tp!1887025 () Bool)

(assert (=> b!6871406 (= e!4141854 tp!1887025)))

(declare-fun b!6871407 () Bool)

(declare-fun tp!1887023 () Bool)

(declare-fun tp!1887024 () Bool)

(assert (=> b!6871407 (= e!4141854 (and tp!1887023 tp!1887024))))

(assert (=> b!6869143 (= tp!1885645 e!4141854)))

(declare-fun b!6871405 () Bool)

(declare-fun tp!1887021 () Bool)

(declare-fun tp!1887022 () Bool)

(assert (=> b!6871405 (= e!4141854 (and tp!1887021 tp!1887022))))

(declare-fun b!6871404 () Bool)

(assert (=> b!6871404 (= e!4141854 tp_is_empty!42647)))

(assert (= (and b!6869143 ((_ is ElementMatch!16697) (regOne!33907 (h!72714 (exprs!6581 setElem!47225))))) b!6871404))

(assert (= (and b!6869143 ((_ is Concat!25542) (regOne!33907 (h!72714 (exprs!6581 setElem!47225))))) b!6871405))

(assert (= (and b!6869143 ((_ is Star!16697) (regOne!33907 (h!72714 (exprs!6581 setElem!47225))))) b!6871406))

(assert (= (and b!6869143 ((_ is Union!16697) (regOne!33907 (h!72714 (exprs!6581 setElem!47225))))) b!6871407))

(declare-fun b!6871410 () Bool)

(declare-fun e!4141855 () Bool)

(declare-fun tp!1887030 () Bool)

(assert (=> b!6871410 (= e!4141855 tp!1887030)))

(declare-fun b!6871411 () Bool)

(declare-fun tp!1887028 () Bool)

(declare-fun tp!1887029 () Bool)

(assert (=> b!6871411 (= e!4141855 (and tp!1887028 tp!1887029))))

(assert (=> b!6869143 (= tp!1885646 e!4141855)))

(declare-fun b!6871409 () Bool)

(declare-fun tp!1887026 () Bool)

(declare-fun tp!1887027 () Bool)

(assert (=> b!6871409 (= e!4141855 (and tp!1887026 tp!1887027))))

(declare-fun b!6871408 () Bool)

(assert (=> b!6871408 (= e!4141855 tp_is_empty!42647)))

(assert (= (and b!6869143 ((_ is ElementMatch!16697) (regTwo!33907 (h!72714 (exprs!6581 setElem!47225))))) b!6871408))

(assert (= (and b!6869143 ((_ is Concat!25542) (regTwo!33907 (h!72714 (exprs!6581 setElem!47225))))) b!6871409))

(assert (= (and b!6869143 ((_ is Star!16697) (regTwo!33907 (h!72714 (exprs!6581 setElem!47225))))) b!6871410))

(assert (= (and b!6869143 ((_ is Union!16697) (regTwo!33907 (h!72714 (exprs!6581 setElem!47225))))) b!6871411))

(declare-fun b!6871414 () Bool)

(declare-fun e!4141856 () Bool)

(declare-fun tp!1887035 () Bool)

(assert (=> b!6871414 (= e!4141856 tp!1887035)))

(declare-fun b!6871415 () Bool)

(declare-fun tp!1887033 () Bool)

(declare-fun tp!1887034 () Bool)

(assert (=> b!6871415 (= e!4141856 (and tp!1887033 tp!1887034))))

(assert (=> b!6869201 (= tp!1885721 e!4141856)))

(declare-fun b!6871413 () Bool)

(declare-fun tp!1887031 () Bool)

(declare-fun tp!1887032 () Bool)

(assert (=> b!6871413 (= e!4141856 (and tp!1887031 tp!1887032))))

(declare-fun b!6871412 () Bool)

(assert (=> b!6871412 (= e!4141856 tp_is_empty!42647)))

(assert (= (and b!6869201 ((_ is ElementMatch!16697) (reg!17026 (regTwo!33907 (regOne!33906 r!7292))))) b!6871412))

(assert (= (and b!6869201 ((_ is Concat!25542) (reg!17026 (regTwo!33907 (regOne!33906 r!7292))))) b!6871413))

(assert (= (and b!6869201 ((_ is Star!16697) (reg!17026 (regTwo!33907 (regOne!33906 r!7292))))) b!6871414))

(assert (= (and b!6869201 ((_ is Union!16697) (reg!17026 (regTwo!33907 (regOne!33906 r!7292))))) b!6871415))

(declare-fun b!6871418 () Bool)

(declare-fun e!4141857 () Bool)

(declare-fun tp!1887040 () Bool)

(assert (=> b!6871418 (= e!4141857 tp!1887040)))

(declare-fun b!6871419 () Bool)

(declare-fun tp!1887038 () Bool)

(declare-fun tp!1887039 () Bool)

(assert (=> b!6871419 (= e!4141857 (and tp!1887038 tp!1887039))))

(assert (=> b!6869192 (= tp!1885707 e!4141857)))

(declare-fun b!6871417 () Bool)

(declare-fun tp!1887036 () Bool)

(declare-fun tp!1887037 () Bool)

(assert (=> b!6871417 (= e!4141857 (and tp!1887036 tp!1887037))))

(declare-fun b!6871416 () Bool)

(assert (=> b!6871416 (= e!4141857 tp_is_empty!42647)))

(assert (= (and b!6869192 ((_ is ElementMatch!16697) (regOne!33906 (regTwo!33907 (regOne!33907 r!7292))))) b!6871416))

(assert (= (and b!6869192 ((_ is Concat!25542) (regOne!33906 (regTwo!33907 (regOne!33907 r!7292))))) b!6871417))

(assert (= (and b!6869192 ((_ is Star!16697) (regOne!33906 (regTwo!33907 (regOne!33907 r!7292))))) b!6871418))

(assert (= (and b!6869192 ((_ is Union!16697) (regOne!33906 (regTwo!33907 (regOne!33907 r!7292))))) b!6871419))

(declare-fun b!6871422 () Bool)

(declare-fun e!4141858 () Bool)

(declare-fun tp!1887045 () Bool)

(assert (=> b!6871422 (= e!4141858 tp!1887045)))

(declare-fun b!6871423 () Bool)

(declare-fun tp!1887043 () Bool)

(declare-fun tp!1887044 () Bool)

(assert (=> b!6871423 (= e!4141858 (and tp!1887043 tp!1887044))))

(assert (=> b!6869192 (= tp!1885708 e!4141858)))

(declare-fun b!6871421 () Bool)

(declare-fun tp!1887041 () Bool)

(declare-fun tp!1887042 () Bool)

(assert (=> b!6871421 (= e!4141858 (and tp!1887041 tp!1887042))))

(declare-fun b!6871420 () Bool)

(assert (=> b!6871420 (= e!4141858 tp_is_empty!42647)))

(assert (= (and b!6869192 ((_ is ElementMatch!16697) (regTwo!33906 (regTwo!33907 (regOne!33907 r!7292))))) b!6871420))

(assert (= (and b!6869192 ((_ is Concat!25542) (regTwo!33906 (regTwo!33907 (regOne!33907 r!7292))))) b!6871421))

(assert (= (and b!6869192 ((_ is Star!16697) (regTwo!33906 (regTwo!33907 (regOne!33907 r!7292))))) b!6871422))

(assert (= (and b!6869192 ((_ is Union!16697) (regTwo!33906 (regTwo!33907 (regOne!33907 r!7292))))) b!6871423))

(declare-fun b!6871424 () Bool)

(declare-fun e!4141859 () Bool)

(declare-fun tp!1887046 () Bool)

(declare-fun tp!1887047 () Bool)

(assert (=> b!6871424 (= e!4141859 (and tp!1887046 tp!1887047))))

(assert (=> b!6869207 (= tp!1885728 e!4141859)))

(assert (= (and b!6869207 ((_ is Cons!66266) (exprs!6581 setElem!47233))) b!6871424))

(declare-fun b!6871427 () Bool)

(declare-fun e!4141860 () Bool)

(declare-fun tp!1887052 () Bool)

(assert (=> b!6871427 (= e!4141860 tp!1887052)))

(declare-fun b!6871428 () Bool)

(declare-fun tp!1887050 () Bool)

(declare-fun tp!1887051 () Bool)

(assert (=> b!6871428 (= e!4141860 (and tp!1887050 tp!1887051))))

(assert (=> b!6869119 (= tp!1885614 e!4141860)))

(declare-fun b!6871426 () Bool)

(declare-fun tp!1887048 () Bool)

(declare-fun tp!1887049 () Bool)

(assert (=> b!6871426 (= e!4141860 (and tp!1887048 tp!1887049))))

(declare-fun b!6871425 () Bool)

(assert (=> b!6871425 (= e!4141860 tp_is_empty!42647)))

(assert (= (and b!6869119 ((_ is ElementMatch!16697) (regOne!33906 (h!72714 (exprs!6581 (h!72715 zl!343)))))) b!6871425))

(assert (= (and b!6869119 ((_ is Concat!25542) (regOne!33906 (h!72714 (exprs!6581 (h!72715 zl!343)))))) b!6871426))

(assert (= (and b!6869119 ((_ is Star!16697) (regOne!33906 (h!72714 (exprs!6581 (h!72715 zl!343)))))) b!6871427))

(assert (= (and b!6869119 ((_ is Union!16697) (regOne!33906 (h!72714 (exprs!6581 (h!72715 zl!343)))))) b!6871428))

(declare-fun b!6871431 () Bool)

(declare-fun e!4141861 () Bool)

(declare-fun tp!1887057 () Bool)

(assert (=> b!6871431 (= e!4141861 tp!1887057)))

(declare-fun b!6871432 () Bool)

(declare-fun tp!1887055 () Bool)

(declare-fun tp!1887056 () Bool)

(assert (=> b!6871432 (= e!4141861 (and tp!1887055 tp!1887056))))

(assert (=> b!6869119 (= tp!1885615 e!4141861)))

(declare-fun b!6871430 () Bool)

(declare-fun tp!1887053 () Bool)

(declare-fun tp!1887054 () Bool)

(assert (=> b!6871430 (= e!4141861 (and tp!1887053 tp!1887054))))

(declare-fun b!6871429 () Bool)

(assert (=> b!6871429 (= e!4141861 tp_is_empty!42647)))

(assert (= (and b!6869119 ((_ is ElementMatch!16697) (regTwo!33906 (h!72714 (exprs!6581 (h!72715 zl!343)))))) b!6871429))

(assert (= (and b!6869119 ((_ is Concat!25542) (regTwo!33906 (h!72714 (exprs!6581 (h!72715 zl!343)))))) b!6871430))

(assert (= (and b!6869119 ((_ is Star!16697) (regTwo!33906 (h!72714 (exprs!6581 (h!72715 zl!343)))))) b!6871431))

(assert (= (and b!6869119 ((_ is Union!16697) (regTwo!33906 (h!72714 (exprs!6581 (h!72715 zl!343)))))) b!6871432))

(declare-fun b!6871434 () Bool)

(declare-fun e!4141863 () Bool)

(declare-fun tp!1887058 () Bool)

(assert (=> b!6871434 (= e!4141863 tp!1887058)))

(declare-fun tp!1887059 () Bool)

(declare-fun e!4141862 () Bool)

(declare-fun b!6871433 () Bool)

(assert (=> b!6871433 (= e!4141862 (and (inv!84989 (h!72715 (t!380134 res!2801683))) e!4141863 tp!1887059))))

(assert (=> b!6868957 (= tp!1885583 e!4141862)))

(assert (= b!6871433 b!6871434))

(assert (= (and b!6868957 ((_ is Cons!66267) (t!380134 res!2801683))) b!6871433))

(declare-fun m!7601858 () Bool)

(assert (=> b!6871433 m!7601858))

(declare-fun b!6871437 () Bool)

(declare-fun e!4141864 () Bool)

(declare-fun tp!1887064 () Bool)

(assert (=> b!6871437 (= e!4141864 tp!1887064)))

(declare-fun b!6871438 () Bool)

(declare-fun tp!1887062 () Bool)

(declare-fun tp!1887063 () Bool)

(assert (=> b!6871438 (= e!4141864 (and tp!1887062 tp!1887063))))

(assert (=> b!6869185 (= tp!1885701 e!4141864)))

(declare-fun b!6871436 () Bool)

(declare-fun tp!1887060 () Bool)

(declare-fun tp!1887061 () Bool)

(assert (=> b!6871436 (= e!4141864 (and tp!1887060 tp!1887061))))

(declare-fun b!6871435 () Bool)

(assert (=> b!6871435 (= e!4141864 tp_is_empty!42647)))

(assert (= (and b!6869185 ((_ is ElementMatch!16697) (reg!17026 (regTwo!33907 (reg!17026 r!7292))))) b!6871435))

(assert (= (and b!6869185 ((_ is Concat!25542) (reg!17026 (regTwo!33907 (reg!17026 r!7292))))) b!6871436))

(assert (= (and b!6869185 ((_ is Star!16697) (reg!17026 (regTwo!33907 (reg!17026 r!7292))))) b!6871437))

(assert (= (and b!6869185 ((_ is Union!16697) (reg!17026 (regTwo!33907 (reg!17026 r!7292))))) b!6871438))

(declare-fun b!6871441 () Bool)

(declare-fun e!4141865 () Bool)

(declare-fun tp!1887069 () Bool)

(assert (=> b!6871441 (= e!4141865 tp!1887069)))

(declare-fun b!6871442 () Bool)

(declare-fun tp!1887067 () Bool)

(declare-fun tp!1887068 () Bool)

(assert (=> b!6871442 (= e!4141865 (and tp!1887067 tp!1887068))))

(assert (=> b!6869176 (= tp!1885687 e!4141865)))

(declare-fun b!6871440 () Bool)

(declare-fun tp!1887065 () Bool)

(declare-fun tp!1887066 () Bool)

(assert (=> b!6871440 (= e!4141865 (and tp!1887065 tp!1887066))))

(declare-fun b!6871439 () Bool)

(assert (=> b!6871439 (= e!4141865 tp_is_empty!42647)))

(assert (= (and b!6869176 ((_ is ElementMatch!16697) (regOne!33906 (regTwo!33906 (regOne!33906 r!7292))))) b!6871439))

(assert (= (and b!6869176 ((_ is Concat!25542) (regOne!33906 (regTwo!33906 (regOne!33906 r!7292))))) b!6871440))

(assert (= (and b!6869176 ((_ is Star!16697) (regOne!33906 (regTwo!33906 (regOne!33906 r!7292))))) b!6871441))

(assert (= (and b!6869176 ((_ is Union!16697) (regOne!33906 (regTwo!33906 (regOne!33906 r!7292))))) b!6871442))

(declare-fun b!6871445 () Bool)

(declare-fun e!4141866 () Bool)

(declare-fun tp!1887074 () Bool)

(assert (=> b!6871445 (= e!4141866 tp!1887074)))

(declare-fun b!6871446 () Bool)

(declare-fun tp!1887072 () Bool)

(declare-fun tp!1887073 () Bool)

(assert (=> b!6871446 (= e!4141866 (and tp!1887072 tp!1887073))))

(assert (=> b!6869176 (= tp!1885688 e!4141866)))

(declare-fun b!6871444 () Bool)

(declare-fun tp!1887070 () Bool)

(declare-fun tp!1887071 () Bool)

(assert (=> b!6871444 (= e!4141866 (and tp!1887070 tp!1887071))))

(declare-fun b!6871443 () Bool)

(assert (=> b!6871443 (= e!4141866 tp_is_empty!42647)))

(assert (= (and b!6869176 ((_ is ElementMatch!16697) (regTwo!33906 (regTwo!33906 (regOne!33906 r!7292))))) b!6871443))

(assert (= (and b!6869176 ((_ is Concat!25542) (regTwo!33906 (regTwo!33906 (regOne!33906 r!7292))))) b!6871444))

(assert (= (and b!6869176 ((_ is Star!16697) (regTwo!33906 (regTwo!33906 (regOne!33906 r!7292))))) b!6871445))

(assert (= (and b!6869176 ((_ is Union!16697) (regTwo!33906 (regTwo!33906 (regOne!33906 r!7292))))) b!6871446))

(declare-fun b!6871449 () Bool)

(declare-fun e!4141867 () Bool)

(declare-fun tp!1887079 () Bool)

(assert (=> b!6871449 (= e!4141867 tp!1887079)))

(declare-fun b!6871450 () Bool)

(declare-fun tp!1887077 () Bool)

(declare-fun tp!1887078 () Bool)

(assert (=> b!6871450 (= e!4141867 (and tp!1887077 tp!1887078))))

(assert (=> b!6869144 (= tp!1885648 e!4141867)))

(declare-fun b!6871448 () Bool)

(declare-fun tp!1887075 () Bool)

(declare-fun tp!1887076 () Bool)

(assert (=> b!6871448 (= e!4141867 (and tp!1887075 tp!1887076))))

(declare-fun b!6871447 () Bool)

(assert (=> b!6871447 (= e!4141867 tp_is_empty!42647)))

(assert (= (and b!6869144 ((_ is ElementMatch!16697) (h!72714 (t!380133 (exprs!6581 setElem!47225))))) b!6871447))

(assert (= (and b!6869144 ((_ is Concat!25542) (h!72714 (t!380133 (exprs!6581 setElem!47225))))) b!6871448))

(assert (= (and b!6869144 ((_ is Star!16697) (h!72714 (t!380133 (exprs!6581 setElem!47225))))) b!6871449))

(assert (= (and b!6869144 ((_ is Union!16697) (h!72714 (t!380133 (exprs!6581 setElem!47225))))) b!6871450))

(declare-fun b!6871451 () Bool)

(declare-fun e!4141868 () Bool)

(declare-fun tp!1887080 () Bool)

(declare-fun tp!1887081 () Bool)

(assert (=> b!6871451 (= e!4141868 (and tp!1887080 tp!1887081))))

(assert (=> b!6869144 (= tp!1885649 e!4141868)))

(assert (= (and b!6869144 ((_ is Cons!66266) (t!380133 (t!380133 (exprs!6581 setElem!47225))))) b!6871451))

(declare-fun b!6871454 () Bool)

(declare-fun e!4141869 () Bool)

(declare-fun tp!1887086 () Bool)

(assert (=> b!6871454 (= e!4141869 tp!1887086)))

(declare-fun b!6871455 () Bool)

(declare-fun tp!1887084 () Bool)

(declare-fun tp!1887085 () Bool)

(assert (=> b!6871455 (= e!4141869 (and tp!1887084 tp!1887085))))

(assert (=> b!6869194 (= tp!1885709 e!4141869)))

(declare-fun b!6871453 () Bool)

(declare-fun tp!1887082 () Bool)

(declare-fun tp!1887083 () Bool)

(assert (=> b!6871453 (= e!4141869 (and tp!1887082 tp!1887083))))

(declare-fun b!6871452 () Bool)

(assert (=> b!6871452 (= e!4141869 tp_is_empty!42647)))

(assert (= (and b!6869194 ((_ is ElementMatch!16697) (regOne!33907 (regTwo!33907 (regOne!33907 r!7292))))) b!6871452))

(assert (= (and b!6869194 ((_ is Concat!25542) (regOne!33907 (regTwo!33907 (regOne!33907 r!7292))))) b!6871453))

(assert (= (and b!6869194 ((_ is Star!16697) (regOne!33907 (regTwo!33907 (regOne!33907 r!7292))))) b!6871454))

(assert (= (and b!6869194 ((_ is Union!16697) (regOne!33907 (regTwo!33907 (regOne!33907 r!7292))))) b!6871455))

(declare-fun b!6871458 () Bool)

(declare-fun e!4141870 () Bool)

(declare-fun tp!1887091 () Bool)

(assert (=> b!6871458 (= e!4141870 tp!1887091)))

(declare-fun b!6871459 () Bool)

(declare-fun tp!1887089 () Bool)

(declare-fun tp!1887090 () Bool)

(assert (=> b!6871459 (= e!4141870 (and tp!1887089 tp!1887090))))

(assert (=> b!6869194 (= tp!1885710 e!4141870)))

(declare-fun b!6871457 () Bool)

(declare-fun tp!1887087 () Bool)

(declare-fun tp!1887088 () Bool)

(assert (=> b!6871457 (= e!4141870 (and tp!1887087 tp!1887088))))

(declare-fun b!6871456 () Bool)

(assert (=> b!6871456 (= e!4141870 tp_is_empty!42647)))

(assert (= (and b!6869194 ((_ is ElementMatch!16697) (regTwo!33907 (regTwo!33907 (regOne!33907 r!7292))))) b!6871456))

(assert (= (and b!6869194 ((_ is Concat!25542) (regTwo!33907 (regTwo!33907 (regOne!33907 r!7292))))) b!6871457))

(assert (= (and b!6869194 ((_ is Star!16697) (regTwo!33907 (regTwo!33907 (regOne!33907 r!7292))))) b!6871458))

(assert (= (and b!6869194 ((_ is Union!16697) (regTwo!33907 (regTwo!33907 (regOne!33907 r!7292))))) b!6871459))

(declare-fun b!6871462 () Bool)

(declare-fun e!4141871 () Bool)

(declare-fun tp!1887096 () Bool)

(assert (=> b!6871462 (= e!4141871 tp!1887096)))

(declare-fun b!6871463 () Bool)

(declare-fun tp!1887094 () Bool)

(declare-fun tp!1887095 () Bool)

(assert (=> b!6871463 (= e!4141871 (and tp!1887094 tp!1887095))))

(assert (=> b!6869103 (= tp!1885594 e!4141871)))

(declare-fun b!6871461 () Bool)

(declare-fun tp!1887092 () Bool)

(declare-fun tp!1887093 () Bool)

(assert (=> b!6871461 (= e!4141871 (and tp!1887092 tp!1887093))))

(declare-fun b!6871460 () Bool)

(assert (=> b!6871460 (= e!4141871 tp_is_empty!42647)))

(assert (= (and b!6869103 ((_ is ElementMatch!16697) (regOne!33906 (reg!17026 (regTwo!33907 r!7292))))) b!6871460))

(assert (= (and b!6869103 ((_ is Concat!25542) (regOne!33906 (reg!17026 (regTwo!33907 r!7292))))) b!6871461))

(assert (= (and b!6869103 ((_ is Star!16697) (regOne!33906 (reg!17026 (regTwo!33907 r!7292))))) b!6871462))

(assert (= (and b!6869103 ((_ is Union!16697) (regOne!33906 (reg!17026 (regTwo!33907 r!7292))))) b!6871463))

(declare-fun b!6871466 () Bool)

(declare-fun e!4141872 () Bool)

(declare-fun tp!1887101 () Bool)

(assert (=> b!6871466 (= e!4141872 tp!1887101)))

(declare-fun b!6871467 () Bool)

(declare-fun tp!1887099 () Bool)

(declare-fun tp!1887100 () Bool)

(assert (=> b!6871467 (= e!4141872 (and tp!1887099 tp!1887100))))

(assert (=> b!6869103 (= tp!1885595 e!4141872)))

(declare-fun b!6871465 () Bool)

(declare-fun tp!1887097 () Bool)

(declare-fun tp!1887098 () Bool)

(assert (=> b!6871465 (= e!4141872 (and tp!1887097 tp!1887098))))

(declare-fun b!6871464 () Bool)

(assert (=> b!6871464 (= e!4141872 tp_is_empty!42647)))

(assert (= (and b!6869103 ((_ is ElementMatch!16697) (regTwo!33906 (reg!17026 (regTwo!33907 r!7292))))) b!6871464))

(assert (= (and b!6869103 ((_ is Concat!25542) (regTwo!33906 (reg!17026 (regTwo!33907 r!7292))))) b!6871465))

(assert (= (and b!6869103 ((_ is Star!16697) (regTwo!33906 (reg!17026 (regTwo!33907 r!7292))))) b!6871466))

(assert (= (and b!6869103 ((_ is Union!16697) (regTwo!33906 (reg!17026 (regTwo!33907 r!7292))))) b!6871467))

(declare-fun b!6871470 () Bool)

(declare-fun e!4141873 () Bool)

(declare-fun tp!1887106 () Bool)

(assert (=> b!6871470 (= e!4141873 tp!1887106)))

(declare-fun b!6871471 () Bool)

(declare-fun tp!1887104 () Bool)

(declare-fun tp!1887105 () Bool)

(assert (=> b!6871471 (= e!4141873 (and tp!1887104 tp!1887105))))

(assert (=> b!6869121 (= tp!1885616 e!4141873)))

(declare-fun b!6871469 () Bool)

(declare-fun tp!1887102 () Bool)

(declare-fun tp!1887103 () Bool)

(assert (=> b!6871469 (= e!4141873 (and tp!1887102 tp!1887103))))

(declare-fun b!6871468 () Bool)

(assert (=> b!6871468 (= e!4141873 tp_is_empty!42647)))

(assert (= (and b!6869121 ((_ is ElementMatch!16697) (regOne!33907 (h!72714 (exprs!6581 (h!72715 zl!343)))))) b!6871468))

(assert (= (and b!6869121 ((_ is Concat!25542) (regOne!33907 (h!72714 (exprs!6581 (h!72715 zl!343)))))) b!6871469))

(assert (= (and b!6869121 ((_ is Star!16697) (regOne!33907 (h!72714 (exprs!6581 (h!72715 zl!343)))))) b!6871470))

(assert (= (and b!6869121 ((_ is Union!16697) (regOne!33907 (h!72714 (exprs!6581 (h!72715 zl!343)))))) b!6871471))

(declare-fun b!6871474 () Bool)

(declare-fun e!4141874 () Bool)

(declare-fun tp!1887111 () Bool)

(assert (=> b!6871474 (= e!4141874 tp!1887111)))

(declare-fun b!6871475 () Bool)

(declare-fun tp!1887109 () Bool)

(declare-fun tp!1887110 () Bool)

(assert (=> b!6871475 (= e!4141874 (and tp!1887109 tp!1887110))))

(assert (=> b!6869121 (= tp!1885617 e!4141874)))

(declare-fun b!6871473 () Bool)

(declare-fun tp!1887107 () Bool)

(declare-fun tp!1887108 () Bool)

(assert (=> b!6871473 (= e!4141874 (and tp!1887107 tp!1887108))))

(declare-fun b!6871472 () Bool)

(assert (=> b!6871472 (= e!4141874 tp_is_empty!42647)))

(assert (= (and b!6869121 ((_ is ElementMatch!16697) (regTwo!33907 (h!72714 (exprs!6581 (h!72715 zl!343)))))) b!6871472))

(assert (= (and b!6869121 ((_ is Concat!25542) (regTwo!33907 (h!72714 (exprs!6581 (h!72715 zl!343)))))) b!6871473))

(assert (= (and b!6869121 ((_ is Star!16697) (regTwo!33907 (h!72714 (exprs!6581 (h!72715 zl!343)))))) b!6871474))

(assert (= (and b!6869121 ((_ is Union!16697) (regTwo!33907 (h!72714 (exprs!6581 (h!72715 zl!343)))))) b!6871475))

(declare-fun b!6871478 () Bool)

(declare-fun e!4141875 () Bool)

(declare-fun tp!1887116 () Bool)

(assert (=> b!6871478 (= e!4141875 tp!1887116)))

(declare-fun b!6871479 () Bool)

(declare-fun tp!1887114 () Bool)

(declare-fun tp!1887115 () Bool)

(assert (=> b!6871479 (= e!4141875 (and tp!1887114 tp!1887115))))

(assert (=> b!6869112 (= tp!1885608 e!4141875)))

(declare-fun b!6871477 () Bool)

(declare-fun tp!1887112 () Bool)

(declare-fun tp!1887113 () Bool)

(assert (=> b!6871477 (= e!4141875 (and tp!1887112 tp!1887113))))

(declare-fun b!6871476 () Bool)

(assert (=> b!6871476 (= e!4141875 tp_is_empty!42647)))

(assert (= (and b!6869112 ((_ is ElementMatch!16697) (reg!17026 (regTwo!33906 (regTwo!33907 r!7292))))) b!6871476))

(assert (= (and b!6869112 ((_ is Concat!25542) (reg!17026 (regTwo!33906 (regTwo!33907 r!7292))))) b!6871477))

(assert (= (and b!6869112 ((_ is Star!16697) (reg!17026 (regTwo!33906 (regTwo!33907 r!7292))))) b!6871478))

(assert (= (and b!6869112 ((_ is Union!16697) (reg!17026 (regTwo!33906 (regTwo!33907 r!7292))))) b!6871479))

(declare-fun b!6871482 () Bool)

(declare-fun e!4141876 () Bool)

(declare-fun tp!1887121 () Bool)

(assert (=> b!6871482 (= e!4141876 tp!1887121)))

(declare-fun b!6871483 () Bool)

(declare-fun tp!1887119 () Bool)

(declare-fun tp!1887120 () Bool)

(assert (=> b!6871483 (= e!4141876 (and tp!1887119 tp!1887120))))

(assert (=> b!6869169 (= tp!1885681 e!4141876)))

(declare-fun b!6871481 () Bool)

(declare-fun tp!1887117 () Bool)

(declare-fun tp!1887118 () Bool)

(assert (=> b!6871481 (= e!4141876 (and tp!1887117 tp!1887118))))

(declare-fun b!6871480 () Bool)

(assert (=> b!6871480 (= e!4141876 tp_is_empty!42647)))

(assert (= (and b!6869169 ((_ is ElementMatch!16697) (reg!17026 (reg!17026 (regOne!33906 r!7292))))) b!6871480))

(assert (= (and b!6869169 ((_ is Concat!25542) (reg!17026 (reg!17026 (regOne!33906 r!7292))))) b!6871481))

(assert (= (and b!6869169 ((_ is Star!16697) (reg!17026 (reg!17026 (regOne!33906 r!7292))))) b!6871482))

(assert (= (and b!6869169 ((_ is Union!16697) (reg!17026 (reg!17026 (regOne!33906 r!7292))))) b!6871483))

(declare-fun b!6871486 () Bool)

(declare-fun e!4141877 () Bool)

(declare-fun tp!1887126 () Bool)

(assert (=> b!6871486 (= e!4141877 tp!1887126)))

(declare-fun b!6871487 () Bool)

(declare-fun tp!1887124 () Bool)

(declare-fun tp!1887125 () Bool)

(assert (=> b!6871487 (= e!4141877 (and tp!1887124 tp!1887125))))

(assert (=> b!6869160 (= tp!1885667 e!4141877)))

(declare-fun b!6871485 () Bool)

(declare-fun tp!1887122 () Bool)

(declare-fun tp!1887123 () Bool)

(assert (=> b!6871485 (= e!4141877 (and tp!1887122 tp!1887123))))

(declare-fun b!6871484 () Bool)

(assert (=> b!6871484 (= e!4141877 tp_is_empty!42647)))

(assert (= (and b!6869160 ((_ is ElementMatch!16697) (regOne!33906 (regOne!33906 (regOne!33907 r!7292))))) b!6871484))

(assert (= (and b!6869160 ((_ is Concat!25542) (regOne!33906 (regOne!33906 (regOne!33907 r!7292))))) b!6871485))

(assert (= (and b!6869160 ((_ is Star!16697) (regOne!33906 (regOne!33906 (regOne!33907 r!7292))))) b!6871486))

(assert (= (and b!6869160 ((_ is Union!16697) (regOne!33906 (regOne!33906 (regOne!33907 r!7292))))) b!6871487))

(declare-fun b!6871490 () Bool)

(declare-fun e!4141878 () Bool)

(declare-fun tp!1887131 () Bool)

(assert (=> b!6871490 (= e!4141878 tp!1887131)))

(declare-fun b!6871491 () Bool)

(declare-fun tp!1887129 () Bool)

(declare-fun tp!1887130 () Bool)

(assert (=> b!6871491 (= e!4141878 (and tp!1887129 tp!1887130))))

(assert (=> b!6869160 (= tp!1885668 e!4141878)))

(declare-fun b!6871489 () Bool)

(declare-fun tp!1887127 () Bool)

(declare-fun tp!1887128 () Bool)

(assert (=> b!6871489 (= e!4141878 (and tp!1887127 tp!1887128))))

(declare-fun b!6871488 () Bool)

(assert (=> b!6871488 (= e!4141878 tp_is_empty!42647)))

(assert (= (and b!6869160 ((_ is ElementMatch!16697) (regTwo!33906 (regOne!33906 (regOne!33907 r!7292))))) b!6871488))

(assert (= (and b!6869160 ((_ is Concat!25542) (regTwo!33906 (regOne!33906 (regOne!33907 r!7292))))) b!6871489))

(assert (= (and b!6869160 ((_ is Star!16697) (regTwo!33906 (regOne!33906 (regOne!33907 r!7292))))) b!6871490))

(assert (= (and b!6869160 ((_ is Union!16697) (regTwo!33906 (regOne!33906 (regOne!33907 r!7292))))) b!6871491))

(declare-fun b!6871494 () Bool)

(declare-fun e!4141879 () Bool)

(declare-fun tp!1887136 () Bool)

(assert (=> b!6871494 (= e!4141879 tp!1887136)))

(declare-fun b!6871495 () Bool)

(declare-fun tp!1887134 () Bool)

(declare-fun tp!1887135 () Bool)

(assert (=> b!6871495 (= e!4141879 (and tp!1887134 tp!1887135))))

(assert (=> b!6869129 (= tp!1885630 e!4141879)))

(declare-fun b!6871493 () Bool)

(declare-fun tp!1887132 () Bool)

(declare-fun tp!1887133 () Bool)

(assert (=> b!6871493 (= e!4141879 (and tp!1887132 tp!1887133))))

(declare-fun b!6871492 () Bool)

(assert (=> b!6871492 (= e!4141879 tp_is_empty!42647)))

(assert (= (and b!6869129 ((_ is ElementMatch!16697) (reg!17026 (regTwo!33906 (regTwo!33906 r!7292))))) b!6871492))

(assert (= (and b!6869129 ((_ is Concat!25542) (reg!17026 (regTwo!33906 (regTwo!33906 r!7292))))) b!6871493))

(assert (= (and b!6869129 ((_ is Star!16697) (reg!17026 (regTwo!33906 (regTwo!33906 r!7292))))) b!6871494))

(assert (= (and b!6869129 ((_ is Union!16697) (reg!17026 (regTwo!33906 (regTwo!33906 r!7292))))) b!6871495))

(declare-fun b!6871498 () Bool)

(declare-fun e!4141880 () Bool)

(declare-fun tp!1887141 () Bool)

(assert (=> b!6871498 (= e!4141880 tp!1887141)))

(declare-fun b!6871499 () Bool)

(declare-fun tp!1887139 () Bool)

(declare-fun tp!1887140 () Bool)

(assert (=> b!6871499 (= e!4141880 (and tp!1887139 tp!1887140))))

(assert (=> b!6869178 (= tp!1885689 e!4141880)))

(declare-fun b!6871497 () Bool)

(declare-fun tp!1887137 () Bool)

(declare-fun tp!1887138 () Bool)

(assert (=> b!6871497 (= e!4141880 (and tp!1887137 tp!1887138))))

(declare-fun b!6871496 () Bool)

(assert (=> b!6871496 (= e!4141880 tp_is_empty!42647)))

(assert (= (and b!6869178 ((_ is ElementMatch!16697) (regOne!33907 (regTwo!33906 (regOne!33906 r!7292))))) b!6871496))

(assert (= (and b!6869178 ((_ is Concat!25542) (regOne!33907 (regTwo!33906 (regOne!33906 r!7292))))) b!6871497))

(assert (= (and b!6869178 ((_ is Star!16697) (regOne!33907 (regTwo!33906 (regOne!33906 r!7292))))) b!6871498))

(assert (= (and b!6869178 ((_ is Union!16697) (regOne!33907 (regTwo!33906 (regOne!33906 r!7292))))) b!6871499))

(declare-fun b!6871502 () Bool)

(declare-fun e!4141881 () Bool)

(declare-fun tp!1887146 () Bool)

(assert (=> b!6871502 (= e!4141881 tp!1887146)))

(declare-fun b!6871503 () Bool)

(declare-fun tp!1887144 () Bool)

(declare-fun tp!1887145 () Bool)

(assert (=> b!6871503 (= e!4141881 (and tp!1887144 tp!1887145))))

(assert (=> b!6869178 (= tp!1885690 e!4141881)))

(declare-fun b!6871501 () Bool)

(declare-fun tp!1887142 () Bool)

(declare-fun tp!1887143 () Bool)

(assert (=> b!6871501 (= e!4141881 (and tp!1887142 tp!1887143))))

(declare-fun b!6871500 () Bool)

(assert (=> b!6871500 (= e!4141881 tp_is_empty!42647)))

(assert (= (and b!6869178 ((_ is ElementMatch!16697) (regTwo!33907 (regTwo!33906 (regOne!33906 r!7292))))) b!6871500))

(assert (= (and b!6869178 ((_ is Concat!25542) (regTwo!33907 (regTwo!33906 (regOne!33906 r!7292))))) b!6871501))

(assert (= (and b!6869178 ((_ is Star!16697) (regTwo!33907 (regTwo!33906 (regOne!33906 r!7292))))) b!6871502))

(assert (= (and b!6869178 ((_ is Union!16697) (regTwo!33907 (regTwo!33906 (regOne!33906 r!7292))))) b!6871503))

(declare-fun b!6871506 () Bool)

(declare-fun e!4141882 () Bool)

(declare-fun tp!1887151 () Bool)

(assert (=> b!6871506 (= e!4141882 tp!1887151)))

(declare-fun b!6871507 () Bool)

(declare-fun tp!1887149 () Bool)

(declare-fun tp!1887150 () Bool)

(assert (=> b!6871507 (= e!4141882 (and tp!1887149 tp!1887150))))

(assert (=> b!6869137 (= tp!1885638 e!4141882)))

(declare-fun b!6871505 () Bool)

(declare-fun tp!1887147 () Bool)

(declare-fun tp!1887148 () Bool)

(assert (=> b!6871505 (= e!4141882 (and tp!1887147 tp!1887148))))

(declare-fun b!6871504 () Bool)

(assert (=> b!6871504 (= e!4141882 tp_is_empty!42647)))

(assert (= (and b!6869137 ((_ is ElementMatch!16697) (regOne!33906 (regTwo!33907 (regTwo!33907 r!7292))))) b!6871504))

(assert (= (and b!6869137 ((_ is Concat!25542) (regOne!33906 (regTwo!33907 (regTwo!33907 r!7292))))) b!6871505))

(assert (= (and b!6869137 ((_ is Star!16697) (regOne!33906 (regTwo!33907 (regTwo!33907 r!7292))))) b!6871506))

(assert (= (and b!6869137 ((_ is Union!16697) (regOne!33906 (regTwo!33907 (regTwo!33907 r!7292))))) b!6871507))

(declare-fun b!6871510 () Bool)

(declare-fun e!4141883 () Bool)

(declare-fun tp!1887156 () Bool)

(assert (=> b!6871510 (= e!4141883 tp!1887156)))

(declare-fun b!6871511 () Bool)

(declare-fun tp!1887154 () Bool)

(declare-fun tp!1887155 () Bool)

(assert (=> b!6871511 (= e!4141883 (and tp!1887154 tp!1887155))))

(assert (=> b!6869137 (= tp!1885639 e!4141883)))

(declare-fun b!6871509 () Bool)

(declare-fun tp!1887152 () Bool)

(declare-fun tp!1887153 () Bool)

(assert (=> b!6871509 (= e!4141883 (and tp!1887152 tp!1887153))))

(declare-fun b!6871508 () Bool)

(assert (=> b!6871508 (= e!4141883 tp_is_empty!42647)))

(assert (= (and b!6869137 ((_ is ElementMatch!16697) (regTwo!33906 (regTwo!33907 (regTwo!33907 r!7292))))) b!6871508))

(assert (= (and b!6869137 ((_ is Concat!25542) (regTwo!33906 (regTwo!33907 (regTwo!33907 r!7292))))) b!6871509))

(assert (= (and b!6869137 ((_ is Star!16697) (regTwo!33906 (regTwo!33907 (regTwo!33907 r!7292))))) b!6871510))

(assert (= (and b!6869137 ((_ is Union!16697) (regTwo!33906 (regTwo!33907 (regTwo!33907 r!7292))))) b!6871511))

(declare-fun b!6871514 () Bool)

(declare-fun e!4141884 () Bool)

(declare-fun tp!1887161 () Bool)

(assert (=> b!6871514 (= e!4141884 tp!1887161)))

(declare-fun b!6871515 () Bool)

(declare-fun tp!1887159 () Bool)

(declare-fun tp!1887160 () Bool)

(assert (=> b!6871515 (= e!4141884 (and tp!1887159 tp!1887160))))

(assert (=> b!6869105 (= tp!1885596 e!4141884)))

(declare-fun b!6871513 () Bool)

(declare-fun tp!1887157 () Bool)

(declare-fun tp!1887158 () Bool)

(assert (=> b!6871513 (= e!4141884 (and tp!1887157 tp!1887158))))

(declare-fun b!6871512 () Bool)

(assert (=> b!6871512 (= e!4141884 tp_is_empty!42647)))

(assert (= (and b!6869105 ((_ is ElementMatch!16697) (regOne!33907 (reg!17026 (regTwo!33907 r!7292))))) b!6871512))

(assert (= (and b!6869105 ((_ is Concat!25542) (regOne!33907 (reg!17026 (regTwo!33907 r!7292))))) b!6871513))

(assert (= (and b!6869105 ((_ is Star!16697) (regOne!33907 (reg!17026 (regTwo!33907 r!7292))))) b!6871514))

(assert (= (and b!6869105 ((_ is Union!16697) (regOne!33907 (reg!17026 (regTwo!33907 r!7292))))) b!6871515))

(declare-fun b!6871518 () Bool)

(declare-fun e!4141885 () Bool)

(declare-fun tp!1887166 () Bool)

(assert (=> b!6871518 (= e!4141885 tp!1887166)))

(declare-fun b!6871519 () Bool)

(declare-fun tp!1887164 () Bool)

(declare-fun tp!1887165 () Bool)

(assert (=> b!6871519 (= e!4141885 (and tp!1887164 tp!1887165))))

(assert (=> b!6869105 (= tp!1885597 e!4141885)))

(declare-fun b!6871517 () Bool)

(declare-fun tp!1887162 () Bool)

(declare-fun tp!1887163 () Bool)

(assert (=> b!6871517 (= e!4141885 (and tp!1887162 tp!1887163))))

(declare-fun b!6871516 () Bool)

(assert (=> b!6871516 (= e!4141885 tp_is_empty!42647)))

(assert (= (and b!6869105 ((_ is ElementMatch!16697) (regTwo!33907 (reg!17026 (regTwo!33907 r!7292))))) b!6871516))

(assert (= (and b!6869105 ((_ is Concat!25542) (regTwo!33907 (reg!17026 (regTwo!33907 r!7292))))) b!6871517))

(assert (= (and b!6869105 ((_ is Star!16697) (regTwo!33907 (reg!17026 (regTwo!33907 r!7292))))) b!6871518))

(assert (= (and b!6869105 ((_ is Union!16697) (regTwo!33907 (reg!17026 (regTwo!33907 r!7292))))) b!6871519))

(declare-fun b!6871522 () Bool)

(declare-fun e!4141886 () Bool)

(declare-fun tp!1887171 () Bool)

(assert (=> b!6871522 (= e!4141886 tp!1887171)))

(declare-fun b!6871523 () Bool)

(declare-fun tp!1887169 () Bool)

(declare-fun tp!1887170 () Bool)

(assert (=> b!6871523 (= e!4141886 (and tp!1887169 tp!1887170))))

(assert (=> b!6869096 (= tp!1885588 e!4141886)))

(declare-fun b!6871521 () Bool)

(declare-fun tp!1887167 () Bool)

(declare-fun tp!1887168 () Bool)

(assert (=> b!6871521 (= e!4141886 (and tp!1887167 tp!1887168))))

(declare-fun b!6871520 () Bool)

(assert (=> b!6871520 (= e!4141886 tp_is_empty!42647)))

(assert (= (and b!6869096 ((_ is ElementMatch!16697) (reg!17026 (regOne!33907 (regTwo!33906 r!7292))))) b!6871520))

(assert (= (and b!6869096 ((_ is Concat!25542) (reg!17026 (regOne!33907 (regTwo!33906 r!7292))))) b!6871521))

(assert (= (and b!6869096 ((_ is Star!16697) (reg!17026 (regOne!33907 (regTwo!33906 r!7292))))) b!6871522))

(assert (= (and b!6869096 ((_ is Union!16697) (reg!17026 (regOne!33907 (regTwo!33906 r!7292))))) b!6871523))

(declare-fun b_lambda!260039 () Bool)

(assert (= b_lambda!259965 (or d!2157578 b_lambda!260039)))

(declare-fun bs!1837266 () Bool)

(declare-fun d!2158622 () Bool)

(assert (= bs!1837266 (and d!2158622 d!2157578)))

(assert (=> bs!1837266 (= (dynLambda!26529 lambda!388636 (h!72714 (t!380133 lt!2458035))) (validRegex!8433 (h!72714 (t!380133 lt!2458035))))))

(declare-fun m!7601860 () Bool)

(assert (=> bs!1837266 m!7601860))

(assert (=> b!6870235 d!2158622))

(declare-fun b_lambda!260041 () Bool)

(assert (= b_lambda!259985 (or d!2157890 b_lambda!260041)))

(declare-fun bs!1837267 () Bool)

(declare-fun d!2158624 () Bool)

(assert (= bs!1837267 (and d!2158624 d!2157890)))

(assert (=> bs!1837267 (= (dynLambda!26529 lambda!388697 (h!72714 (exprs!6581 setElem!47231))) (validRegex!8433 (h!72714 (exprs!6581 setElem!47231))))))

(declare-fun m!7601862 () Bool)

(assert (=> bs!1837267 m!7601862))

(assert (=> b!6870442 d!2158624))

(declare-fun b_lambda!260043 () Bool)

(assert (= b_lambda!259911 (or d!2157834 b_lambda!260043)))

(declare-fun bs!1837268 () Bool)

(declare-fun d!2158626 () Bool)

(assert (= bs!1837268 (and d!2158626 d!2157834)))

(assert (=> bs!1837268 (= (dynLambda!26529 lambda!388687 (h!72714 (exprs!6581 (h!72715 zl!343)))) (validRegex!8433 (h!72714 (exprs!6581 (h!72715 zl!343)))))))

(assert (=> bs!1837268 m!7600464))

(assert (=> b!6869385 d!2158626))

(declare-fun b_lambda!260045 () Bool)

(assert (= b_lambda!259943 (or d!2157872 b_lambda!260045)))

(declare-fun bs!1837269 () Bool)

(declare-fun d!2158628 () Bool)

(assert (= bs!1837269 (and d!2158628 d!2157872)))

(assert (=> bs!1837269 (= (dynLambda!26529 lambda!388696 (h!72714 (exprs!6581 lt!2458040))) (validRegex!8433 (h!72714 (exprs!6581 lt!2458040))))))

(assert (=> bs!1837269 m!7599770))

(assert (=> b!6869962 d!2158628))

(declare-fun b_lambda!260047 () Bool)

(assert (= b_lambda!259951 (or d!2157902 b_lambda!260047)))

(declare-fun bs!1837270 () Bool)

(declare-fun d!2158630 () Bool)

(assert (= bs!1837270 (and d!2158630 d!2157902)))

(assert (=> bs!1837270 (= (dynLambda!26529 lambda!388700 (h!72714 lt!2458035)) (not (dynLambda!26529 lambda!388637 (h!72714 lt!2458035))))))

(declare-fun b_lambda!260083 () Bool)

(assert (=> (not b_lambda!260083) (not bs!1837270)))

(declare-fun m!7601864 () Bool)

(assert (=> bs!1837270 m!7601864))

(assert (=> b!6870075 d!2158630))

(declare-fun b_lambda!260049 () Bool)

(assert (= b_lambda!259917 (or b!6867794 b_lambda!260049)))

(declare-fun bs!1837271 () Bool)

(declare-fun d!2158632 () Bool)

(assert (= bs!1837271 (and d!2158632 b!6867794)))

(assert (=> bs!1837271 (= (dynLambda!26530 lambda!388572 lt!2458210) (matchZipper!2663 (store ((as const (Array Context!12162 Bool)) false) lt!2458210 true) s!2326))))

(declare-fun m!7601866 () Bool)

(assert (=> bs!1837271 m!7601866))

(assert (=> bs!1837271 m!7601866))

(declare-fun m!7601868 () Bool)

(assert (=> bs!1837271 m!7601868))

(assert (=> d!2158072 d!2158632))

(declare-fun b_lambda!260051 () Bool)

(assert (= b_lambda!259947 (or d!2157806 b_lambda!260051)))

(declare-fun bs!1837272 () Bool)

(declare-fun d!2158634 () Bool)

(assert (= bs!1837272 (and d!2158634 d!2157806)))

(assert (=> bs!1837272 (= (dynLambda!26529 lambda!388679 (h!72714 (unfocusZipperList!2114 lt!2458043))) (validRegex!8433 (h!72714 (unfocusZipperList!2114 lt!2458043))))))

(declare-fun m!7601870 () Bool)

(assert (=> bs!1837272 m!7601870))

(assert (=> b!6870029 d!2158634))

(declare-fun b_lambda!260053 () Bool)

(assert (= b_lambda!259967 (or d!2157556 b_lambda!260053)))

(declare-fun bs!1837273 () Bool)

(declare-fun d!2158636 () Bool)

(assert (= bs!1837273 (and d!2158636 d!2157556)))

(assert (=> bs!1837273 (= (dynLambda!26530 lambda!388622 (h!72715 (t!380134 zl!343))) (not (dynLambda!26530 lambda!388572 (h!72715 (t!380134 zl!343)))))))

(declare-fun b_lambda!260085 () Bool)

(assert (=> (not b_lambda!260085) (not bs!1837273)))

(assert (=> bs!1837273 m!7600344))

(assert (=> b!6870241 d!2158636))

(declare-fun b_lambda!260055 () Bool)

(assert (= b_lambda!259959 (or d!2157818 b_lambda!260055)))

(declare-fun bs!1837274 () Bool)

(declare-fun d!2158638 () Bool)

(assert (= bs!1837274 (and d!2158638 d!2157818)))

(assert (=> bs!1837274 (= (dynLambda!26530 lambda!388681 (h!72715 zl!343)) (not (dynLambda!26530 lambda!388625 (h!72715 zl!343))))))

(declare-fun b_lambda!260087 () Bool)

(assert (=> (not b_lambda!260087) (not bs!1837274)))

(declare-fun m!7601872 () Bool)

(assert (=> bs!1837274 m!7601872))

(assert (=> b!6870149 d!2158638))

(declare-fun b_lambda!260057 () Bool)

(assert (= b_lambda!259937 (or d!2157580 b_lambda!260057)))

(declare-fun bs!1837275 () Bool)

(declare-fun d!2158640 () Bool)

(assert (= bs!1837275 (and d!2158640 d!2157580)))

(assert (=> bs!1837275 (= (dynLambda!26529 lambda!388640 (h!72714 (t!380133 lt!2458134))) (validRegex!8433 (h!72714 (t!380133 lt!2458134))))))

(declare-fun m!7601874 () Bool)

(assert (=> bs!1837275 m!7601874))

(assert (=> b!6869872 d!2158640))

(declare-fun b_lambda!260059 () Bool)

(assert (= b_lambda!259957 (or d!2157564 b_lambda!260059)))

(declare-fun bs!1837276 () Bool)

(declare-fun d!2158642 () Bool)

(assert (= bs!1837276 (and d!2158642 d!2157564)))

(assert (=> bs!1837276 (= (dynLambda!26529 lambda!388628 (h!72714 (t!380133 (exprs!6581 lt!2458040)))) (validRegex!8433 (h!72714 (t!380133 (exprs!6581 lt!2458040)))))))

(assert (=> bs!1837276 m!7600476))

(assert (=> b!6870145 d!2158642))

(declare-fun b_lambda!260061 () Bool)

(assert (= b_lambda!259981 (or d!2157576 b_lambda!260061)))

(declare-fun bs!1837277 () Bool)

(declare-fun d!2158644 () Bool)

(assert (= bs!1837277 (and d!2158644 d!2157576)))

(assert (=> bs!1837277 (= (dynLambda!26529 lambda!388631 (h!72714 (t!380133 lt!2458035))) (not (dynLambda!26529 lambda!388571 (h!72714 (t!380133 lt!2458035)))))))

(declare-fun b_lambda!260089 () Bool)

(assert (=> (not b_lambda!260089) (not bs!1837277)))

(declare-fun m!7601876 () Bool)

(assert (=> bs!1837277 m!7601876))

(assert (=> b!6870299 d!2158644))

(declare-fun b_lambda!260063 () Bool)

(assert (= b_lambda!259969 (or b!6867793 b_lambda!260063)))

(declare-fun bs!1837278 () Bool)

(declare-fun d!2158646 () Bool)

(assert (= bs!1837278 (and d!2158646 b!6867793)))

(assert (=> bs!1837278 (= (dynLambda!26529 lambda!388573 (h!72714 (t!380133 (t!380133 (exprs!6581 lt!2458040))))) (validRegex!8433 (h!72714 (t!380133 (t!380133 (exprs!6581 lt!2458040))))))))

(declare-fun m!7601878 () Bool)

(assert (=> bs!1837278 m!7601878))

(assert (=> b!6870249 d!2158646))

(declare-fun b_lambda!260065 () Bool)

(assert (= b_lambda!259921 (or d!2157836 b_lambda!260065)))

(declare-fun bs!1837279 () Bool)

(declare-fun d!2158648 () Bool)

(assert (= bs!1837279 (and d!2158648 d!2157836)))

(assert (=> bs!1837279 (= (dynLambda!26529 lambda!388688 (h!72714 lt!2458175)) (validRegex!8433 (h!72714 lt!2458175)))))

(declare-fun m!7601880 () Bool)

(assert (=> bs!1837279 m!7601880))

(assert (=> b!6869537 d!2158648))

(declare-fun b_lambda!260067 () Bool)

(assert (= b_lambda!259915 (or b!6867794 b_lambda!260067)))

(declare-fun bs!1837280 () Bool)

(declare-fun d!2158650 () Bool)

(assert (= bs!1837280 (and d!2158650 b!6867794)))

(assert (=> bs!1837280 (= (dynLambda!26530 lambda!388572 (h!72715 (t!380134 (t!380134 zl!343)))) (matchZipper!2663 (store ((as const (Array Context!12162 Bool)) false) (h!72715 (t!380134 (t!380134 zl!343))) true) s!2326))))

(declare-fun m!7601882 () Bool)

(assert (=> bs!1837280 m!7601882))

(assert (=> bs!1837280 m!7601882))

(declare-fun m!7601884 () Bool)

(assert (=> bs!1837280 m!7601884))

(assert (=> b!6869458 d!2158650))

(declare-fun b_lambda!260069 () Bool)

(assert (= b_lambda!259907 (or d!2157582 b_lambda!260069)))

(declare-fun bs!1837281 () Bool)

(declare-fun d!2158652 () Bool)

(assert (= bs!1837281 (and d!2158652 d!2157582)))

(assert (=> bs!1837281 (= (dynLambda!26529 lambda!388641 (h!72714 (t!380133 (exprs!6581 (h!72715 zl!343))))) (validRegex!8433 (h!72714 (t!380133 (exprs!6581 (h!72715 zl!343))))))))

(declare-fun m!7601886 () Bool)

(assert (=> bs!1837281 m!7601886))

(assert (=> b!6869335 d!2158652))

(declare-fun b_lambda!260071 () Bool)

(assert (= b_lambda!259935 (or d!2157550 b_lambda!260071)))

(declare-fun bs!1837282 () Bool)

(declare-fun d!2158654 () Bool)

(assert (= bs!1837282 (and d!2158654 d!2157550)))

(assert (=> bs!1837282 (= (dynLambda!26529 lambda!388619 (h!72714 (t!380133 (exprs!6581 lt!2458040)))) (validRegex!8433 (h!72714 (t!380133 (exprs!6581 lt!2458040)))))))

(assert (=> bs!1837282 m!7600476))

(assert (=> b!6869839 d!2158654))

(declare-fun b_lambda!260073 () Bool)

(assert (= b_lambda!259923 (or d!2157772 b_lambda!260073)))

(declare-fun bs!1837283 () Bool)

(declare-fun d!2158656 () Bool)

(assert (= bs!1837283 (and d!2158656 d!2157772)))

(assert (=> bs!1837283 (= (dynLambda!26529 lambda!388675 (h!72714 (unfocusZipperList!2114 zl!343))) (validRegex!8433 (h!72714 (unfocusZipperList!2114 zl!343))))))

(declare-fun m!7601888 () Bool)

(assert (=> bs!1837283 m!7601888))

(assert (=> b!6869599 d!2158656))

(declare-fun b_lambda!260075 () Bool)

(assert (= b_lambda!259909 (or d!2157808 b_lambda!260075)))

(declare-fun bs!1837284 () Bool)

(declare-fun d!2158658 () Bool)

(assert (= bs!1837284 (and d!2158658 d!2157808)))

(assert (=> bs!1837284 (= (dynLambda!26529 lambda!388680 (h!72714 lt!2458173)) (validRegex!8433 (h!72714 lt!2458173)))))

(declare-fun m!7601890 () Bool)

(assert (=> bs!1837284 m!7601890))

(assert (=> b!6869337 d!2158658))

(declare-fun b_lambda!260077 () Bool)

(assert (= b_lambda!259953 (or d!2157854 b_lambda!260077)))

(declare-fun bs!1837285 () Bool)

(declare-fun d!2158660 () Bool)

(assert (= bs!1837285 (and d!2158660 d!2157854)))

(assert (=> bs!1837285 (= (dynLambda!26529 lambda!388689 (h!72714 (exprs!6581 (h!72715 (t!380134 zl!343))))) (validRegex!8433 (h!72714 (exprs!6581 (h!72715 (t!380134 zl!343))))))))

(declare-fun m!7601892 () Bool)

(assert (=> bs!1837285 m!7601892))

(assert (=> b!6870086 d!2158660))

(declare-fun b_lambda!260079 () Bool)

(assert (= b_lambda!259927 (or d!2157866 b_lambda!260079)))

(declare-fun bs!1837286 () Bool)

(declare-fun d!2158662 () Bool)

(assert (= bs!1837286 (and d!2158662 d!2157866)))

(assert (=> bs!1837286 (= (dynLambda!26529 lambda!388693 (h!72714 (t!380133 (exprs!6581 lt!2458040)))) (validRegex!8433 (h!72714 (t!380133 (exprs!6581 lt!2458040)))))))

(assert (=> bs!1837286 m!7600476))

(assert (=> b!6869644 d!2158662))

(declare-fun b_lambda!260081 () Bool)

(assert (= b_lambda!259975 (or d!2157534 b_lambda!260081)))

(declare-fun bs!1837287 () Bool)

(declare-fun d!2158664 () Bool)

(assert (= bs!1837287 (and d!2158664 d!2157534)))

(assert (=> bs!1837287 (= (dynLambda!26529 lambda!388616 (h!72714 (t!380133 (exprs!6581 setElem!47225)))) (validRegex!8433 (h!72714 (t!380133 (exprs!6581 setElem!47225)))))))

(declare-fun m!7601894 () Bool)

(assert (=> bs!1837287 m!7601894))

(assert (=> b!6870251 d!2158664))

(check-sat (not b!6870731) (not b!6871013) (not b_lambda!260059) (not b_lambda!259875) (not b!6871374) (not bm!625773) (not bm!625682) (not bm!625883) (not b!6871219) (not b!6870507) (not b!6870941) (not b!6869446) (not b!6871037) (not b!6871351) (not b!6869621) (not b!6871430) (not b!6871006) (not b!6870820) (not b!6871461) (not bm!625800) (not b!6870030) (not b!6871341) (not b!6870242) (not b!6870382) (not b!6871015) (not b!6871112) (not b!6871329) (not b!6870794) (not b!6871517) (not d!2158556) (not b!6870307) (not b!6871514) (not d!2158476) (not b!6870125) (not b!6871366) (not b_lambda!260053) (not b!6871275) (not b!6869396) (not b!6869567) (not b!6870690) (not b!6870696) (not b_lambda!259897) (not bm!625707) (not bm!625870) (not bm!625840) (not b!6869771) (not b!6871228) (not b!6869571) (not b!6869393) (not d!2158130) (not b!6871401) (not bm!625709) (not b!6870762) (not bm!625791) (not b!6871330) (not bs!1837283) (not b!6870709) (not b!6870107) (not b!6871493) (not bm!625695) (not b!6871394) (not bs!1837268) (not b!6871431) (not b!6870048) (not b!6870813) (not b!6869492) (not b!6869336) (not b!6871445) (not bm!625881) (not bs!1837282) (not b!6871290) (not d!2158138) (not b!6871455) (not b!6871358) (not b!6871248) (not b!6871361) (not b!6870630) (not b!6869538) (not b!6871259) tp_is_empty!42647 (not b!6871237) (not b!6869343) (not d!2158566) (not b!6871135) (not bm!625756) (not b!6870771) (not b!6871419) (not b!6870925) (not b!6871087) (not b!6870892) (not b!6869406) (not bm!625897) (not d!2158018) (not b!6869539) (not b_lambda!260063) (not b!6870909) (not b!6869350) (not b!6871305) (not b!6870958) (not b_lambda!260075) (not b!6869743) (not b!6871242) (not b!6870156) (not b!6871398) (not bm!625705) (not b!6869348) (not b_lambda!260041) (not b!6871503) (not b!6869578) (not b_lambda!260039) (not bm!625732) (not b!6871362) (not b!6870998) (not b!6871188) (not bm!625841) (not b!6871258) (not b!6870884) (not b!6869349) (not b!6870970) (not b!6871357) (not b!6870867) (not b!6871331) (not b!6871178) (not d!2158346) (not b!6871095) (not b!6871335) (not b!6871186) (not b!6870821) (not b!6869919) (not b!6871442) (not b!6870312) (not b!6871293) (not bm!625779) (not bm!625679) (not b!6871353) (not b!6870916) (not d!2158032) (not b!6871482) (not b!6871487) (not b!6870917) (not b!6871078) (not b!6870740) (not d!2158574) (not b!6871137) (not b!6871313) (not b!6871158) (not b!6870780) (not b!6871039) (not bm!625747) (not b!6869966) (not b!6870828) (not bm!625714) (not b!6871318) (not b_lambda!260089) (not b!6869760) (not b!6870150) (not b!6871434) (not b!6870281) (not d!2158126) (not b!6870877) (not b!6871080) (not b!6870756) (not d!2158038) (not b!6869752) (not bm!625793) (not b!6871345) (not bm!625900) (not b!6871486) (not b!6871294) (not bm!625678) (not b!6871506) (not b!6871379) (not b!6870105) (not b_lambda!260065) (not b!6871195) (not d!2158282) (not b!6871250) (not b!6871385) (not d!2158066) (not b!6870924) (not b!6871383) (not b!6870252) (not bm!625674) (not b!6871274) (not b!6870869) (not b!6870730) (not b_lambda!259879) (not b!6870732) (not b!6870045) (not b!6871469) (not b!6870673) (not b!6871285) (not d!2158076) (not b!6871389) (not b!6871418) (not b!6871397) (not b!6871509) (not b!6870661) (not b!6871303) (not b!6871451) (not bs!1837287) (not b!6871411) (not b!6870660) (not b!6870819) (not b!6869967) (not b!6871386) (not b!6870308) (not b_lambda!260067) (not b!6869341) (not bm!625676) (not b!6871319) (not b!6870567) (not bs!1837272) (not b!6870754) (not b!6869774) (not b!6870122) (not b!6870300) (not b!6869984) (not b!6870703) (not b!6871165) (not b!6871507) (not d!2158502) (not b!6870948) (not bm!625893) (not b!6871226) (not d!2158258) (not b!6869750) (not b_lambda!260057) (not bm!625724) (not b!6869963) (not b!6871414) (not b!6869891) (not b_lambda!259793) (not b!6871306) (not b!6871321) (not b!6871378) (not b!6871283) (not b!6871409) (not b!6871382) (not b!6869983) (not b!6870159) (not b!6871333) (not b!6869369) (not b!6870981) (not b!6869828) (not b!6870778) (not b!6870429) (not b!6870837) (not b!6870748) (not b!6870940) (not bm!625796) (not b!6870648) (not b!6871417) (not d!2158482) (not bm!625763) (not bm!625794) (not b!6870047) (not b!6871501) (not b_lambda!259885) (not b!6871471) (not b!6871129) (not b!6870697) (not b!6871278) (not b!6869472) (not b!6869612) (not b!6869842) (not bm!625757) (not b!6871301) (not b!6871519) (not b!6871406) (not b!6871441) (not b!6870717) (not b!6870236) (not b!6871505) (not b!6871267) (not b!6871302) (not b!6871407) (not b!6871246) (not b_lambda!259895) (not b!6871194) (not bm!625868) (not b!6870662) (not b_lambda!260047) (not b!6869862) (not b!6870680) (not b!6869696) (not b!6870668) (not b!6870886) (not b!6870860) (not b!6870306) (not b!6869397) (not b!6870861) (not b!6871297) (not b!6871031) (not b!6871279) (not b!6870774) (not b!6870050) (not b!6869749) (not b!6871365) (not bs!1837266) (not b!6871475) (not bm!625803) (not d!2158016) (not b!6871432) (not b!6870076) (not b!6871120) (not b!6871298) (not b!6870868) (not b!6870844) (not b!6870811) (not b!6870836) (not d!2158230) (not b!6871359) (not b!6869398) (not b!6871152) (not b!6871463) (not d!2158534) (not b!6871113) (not b!6871370) (not b!6870876) (not b_lambda!259883) (not b!6871211) (not bs!1837267) (not b!6871322) (not b!6870049) (not b_lambda!260083) (not bm!625748) (not bm!625899) (not b!6869969) (not b!6871164) (not bs!1837278) (not b!6870702) (not d!2158430) (not bm!625814) (not d!2158202) (not d!2158392) (not b!6871196) (not b!6869424) (not b!6871172) (not b!6871422) (not b!6869982) (not b!6870851) (not b!6871478) (not d!2158012) (not b!6869719) (not b!6871105) (not b!6869372) (not b!6870983) (not b!6871174) (not b!6870681) (not d!2158042) (not b!6871166) (not b!6871314) (not b!6871510) (not b!6870990) (not bm!625848) (not b_lambda!259865) (not b!6871403) (not b!6870755) (not bs!1837284) (not b!6869373) (not b!6870087) (not b!6870549) (not b!6870804) (not bm!625775) (not b!6871424) (not b!6871014) (not b!6870042) (not d!2158132) (not b!6870901) (not b_lambda!260055) (not b!6870688) (not b!6871088) (not b_lambda!260051) (not b!6871097) (not b!6870415) (not b!6870508) (not b!6869565) (not b!6871477) (not b!6870409) (not b!6871022) (not b!6870852) (not b_lambda!260071) (not b!6870788) (not b!6870224) (not b!6869964) (not b!6870827) (not b!6871373) (not b!6869462) (not b!6871327) (not b!6871499) (not b!6870900) (not b!6870763) (not b!6871127) (not b!6871337) (not b_lambda!260079) (not b!6870918) (not b!6869968) (not b!6869454) (not b!6871483) (not b!6871286) (not b!6871144) (not b!6871338) (not b!6870926) (not b!6870674) (not b!6869693) (not b!6871479) (not b!6871347) (not b_lambda!260061) (not b!6871405) (not bm!625717) (not b!6871467) (not b!6869346) (not b!6870689) (not b!6869386) (not b!6870711) (not b!6869570) (not b!6870853) (not b!6870949) (not b!6870805) (not b!6871444) (not b!6870932) (not b!6869746) (not b!6871438) (not b!6871287) (not b!6870835) (not b!6870701) (not b!6871111) (not b_lambda!259871) (not bm!625681) (not b!6871309) (not b!6871070) (not d!2158568) (not b!6870738) (not bm!625842) (not b!6869351) (not b!6871489) (not b!6871391) (not b!6871350) (not b!6871426) (not b!6871128) (not setNonEmpty!47235) (not b!6870146) (not b!6871053) (not b!6870148) (not d!2158228) (not b!6871307) (not b!6871136) (not b!6871440) (not bm!625761) (not b!6870414) (not b!6871433) (not b!6870829) (not b!6871377) (not b!6870303) (not b!6871354) (not b_lambda!260081) (not bm!625778) (not b!6869663) (not b!6871334) (not b!6869739) (not b!6871233) (not b!6871218) (not b!6871202) (not b!6870779) (not b!6870910) (not b!6869572) (not b!6871299) (not b!6871521) (not b!6870292) (not b!6871023) (not b!6870085) (not bm!625904) (not b!6870956) (not b!6871227) (not b!6871323) (not b!6871511) (not b!6871029) (not b!6871311) (not b!6870311) (not b!6871415) (not b!6870629) (not b!6869873) (not b!6871421) (not b!6869364) (not b!6869600) (not bm!625847) (not b!6871339) (not b!6871005) (not d!2158564) (not b!6871436) (not b!6870046) (not b_lambda!260049) (not b!6869399) (not b!6871251) (not b!6871212) (not b_lambda!259791) (not b!6871060) (not bm!625675) (not bm!625853) (not b!6871104) (not d!2158162) (not b!6869645) (not b!6870272) (not d!2158200) (not b!6869338) (not b!6870973) (not bm!625712) (not b!6870675) (not b!6871062) (not b!6871369) (not b!6869342) (not b!6871021) (not b!6870698) (not b!6869948) (not b!6870640) (not d!2158330) (not b!6871413) (not d!2158040) (not b!6869384) (not d!2158208) (not bm!625809) (not b!6871277) (not b!6871291) (not bm!625691) (not b!6871423) (not b!6871270) (not b!6871220) (not bm!625878) (not b!6871390) (not b!6871326) (not b!6870647) (not bm!625884) (not b!6870019) (not b!6871273) (not bs!1837279) (not b!6869340) (not b!6871485) (not b!6871502) (not b!6870786) (not b!6870933) (not b!6870305) (not b!6870902) (not b!6871096) (not b_lambda!259873) (not b!6870747) (not b!6870957) (not b!6870354) (not b!6870237) (not b!6870875) (not b!6871465) (not b!6871064) (not b!6871187) (not b!6871462) (not b!6869579) (not b_lambda!260043) (not bm!625902) (not b!6871281) (not b!6870963) (not b!6870719) (not b!6871453) (not bm!625781) (not b_lambda!260077) (not b!6870776) (not b!6869536) (not b!6871063) (not b!6871089) (not b!6871079) (not b!6871367) (not b!6869996) (not b!6870770) (not b!6869930) (not b!6870240) (not b!6869460) (not b!6871269) (not b!6871346) (not b!6871381) (not b!6871474) (not b!6871310) (not b_lambda!259867) (not b!6871119) (not b!6871103) (not b!6871121) (not b_lambda!260073) (not bm!625844) (not b!6869764) (not b!6869851) (not bm!625811) (not d!2158072) (not b!6871395) (not b!6871515) (not b!6871446) (not d!2158554) (not b!6870628) (not b!6871491) (not b!6869374) (not b_lambda!259881) (not b!6871072) (not b!6869415) (not b!6870642) (not b!6870982) (not bm!625825) (not b!6871457) (not bm!625686) (not b!6870843) (not bm!625672) (not b!6869751) (not b!6871473) (not bm!625754) (not b!6871371) (not bm!625776) (not b!6871448) (not b!6871470) (not b!6871402) (not b!6871494) (not b!6870710) (not b!6871410) (not b!6871355) (not b!6870989) (not b!6871363) (not b!6870950) (not d!2158070) (not b!6870679) (not bm!625816) (not d!2158068) (not bm!625715) (not bs!1837271) (not b!6870746) (not b!6871343) (not b_lambda!259877) (not b!6871266) (not b!6871427) (not b!6871466) (not b!6869902) (not bm!625738) (not bm!625845) (not d!2158550) (not b!6869368) (not b!6869459) (not b!6871437) (not bs!1837281) (not bm!625736) (not b!6870787) (not b!6871234) (not bs!1837269) (not b!6871450) (not bm!625762) (not d!2158372) (not bs!1837280) (not bm!625823) (not b!6871153) (not b!6871143) (not b!6871203) (not b!6869840) (not b!6870803) (not bm!625849) (not b!6870859) (not b!6870718) (not b!6870885) (not b_lambda!259789) (not b!6870894) (not b!6871399) (not b!6871449) (not b!6871151) (not d!2158286) (not b!6871265) (not b!6870997) (not bm!625751) (not b!6870654) (not b!6870942) (not b!6871349) (not b!6870893) (not b!6870934) (not b!6870972) (not b!6870656) (not b!6871498) (not b!6871325) (not b!6870795) (not b!6871054) (not b!6869390) (not b!6871428) (not b_lambda!260085) (not bm!625895) (not b!6871007) (not bm!625854) (not b!6870238) (not bm!625726) (not b!6871459) (not b!6871045) (not b!6869562) (not b!6869611) (not b!6870845) (not b!6871271) (not d!2158128) (not b!6871375) (not b!6871518) (not b!6869575) (not b!6871481) (not b!6871458) (not b_lambda!259869) (not b_lambda!260045) (not b!6870812) (not b!6870775) (not b!6869973) (not b!6871490) (not b!6871295) (not b_lambda!260087) (not b!6869972) (not d!2158188) (not b!6871393) (not b!6869367) (not bm!625689) (not b!6871038) (not d!2158288) (not b!6869765) (not b!6870772) (not b!6871046) (not bm!625706) (not d!2158314) (not b!6871030) (not b!6870796) (not b!6871454) (not bm!625684) (not b!6870764) (not b!6869366) (not b!6871282) (not b!6871342) (not b!6871176) (not bm!625730) (not b!6871387) (not b!6871513) (not bs!1837276) (not b!6870116) (not b!6870724) (not bm!625697) (not d!2158026) (not bm!625880) (not b!6870655) (not bs!1837286) (not d!2158366) (not d!2158442) (not b!6871145) (not b!6870566) (not b!6871257) (not b!6871523) (not b!6869546) (not b!6870908) (not b!6871169) (not b!6871071) (not d!2158134) (not bm!625759) (not b!6870739) (not bs!1837285) (not b_lambda!260069) (not d!2157998) (not b!6869985) (not b!6870991) (not bm!625805) (not b!6871204) (not d!2158196) (not d!2158572) (not b!6871315) (not b!6870999) (not bm!625802) (not b!6869566) (not b!6869347) (not b!6871317) (not b!6871232) (not b!6870443) (not d!2158110) (not b!6871522) (not b!6871495) (not bm!625886) (not b!6869641) (not bs!1837275) (not b!6871055) (not d!2158142) (not b!6871497) (not b!6871210) (not bm!625903) (not b!6871289) (not bm!625749) (not b!6869564) (not b!6870250) (not b!6869574) (not b!6869590) (not bm!625688) (not b!6870641) (not b!6871047))
(check-sat)
