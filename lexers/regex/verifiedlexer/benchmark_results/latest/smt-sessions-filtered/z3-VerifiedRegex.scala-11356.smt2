; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!601420 () Bool)

(assert start!601420)

(declare-fun b!5912230 () Bool)

(assert (=> b!5912230 true))

(assert (=> b!5912230 true))

(declare-fun lambda!322470 () Int)

(declare-fun lambda!322469 () Int)

(assert (=> b!5912230 (not (= lambda!322470 lambda!322469))))

(assert (=> b!5912230 true))

(assert (=> b!5912230 true))

(declare-fun b!5912217 () Bool)

(declare-fun res!2479002 () Bool)

(declare-fun e!3620293 () Bool)

(assert (=> b!5912217 (=> res!2479002 e!3620293)))

(declare-datatypes ((C!32188 0))(
  ( (C!32189 (val!25796 Int)) )
))
(declare-datatypes ((Regex!15959 0))(
  ( (ElementMatch!15959 (c!1050725 C!32188)) (Concat!24804 (regOne!32430 Regex!15959) (regTwo!32430 Regex!15959)) (EmptyExpr!15959) (Star!15959 (reg!16288 Regex!15959)) (EmptyLang!15959) (Union!15959 (regOne!32431 Regex!15959) (regTwo!32431 Regex!15959)) )
))
(declare-datatypes ((List!64176 0))(
  ( (Nil!64052) (Cons!64052 (h!70500 Regex!15959) (t!377565 List!64176)) )
))
(declare-datatypes ((Context!10686 0))(
  ( (Context!10687 (exprs!5843 List!64176)) )
))
(declare-datatypes ((List!64177 0))(
  ( (Nil!64053) (Cons!64053 (h!70501 Context!10686) (t!377566 List!64177)) )
))
(declare-fun zl!343 () List!64177)

(get-info :version)

(assert (=> b!5912217 (= res!2479002 (not ((_ is Cons!64052) (exprs!5843 (h!70501 zl!343)))))))

(declare-fun b!5912218 () Bool)

(declare-fun tp!1642594 () Bool)

(declare-fun e!3620296 () Bool)

(declare-fun e!3620292 () Bool)

(declare-fun inv!83144 (Context!10686) Bool)

(assert (=> b!5912218 (= e!3620296 (and (inv!83144 (h!70501 zl!343)) e!3620292 tp!1642594))))

(declare-fun setIsEmpty!40108 () Bool)

(declare-fun setRes!40108 () Bool)

(assert (=> setIsEmpty!40108 setRes!40108))

(declare-fun b!5912219 () Bool)

(declare-fun res!2478997 () Bool)

(assert (=> b!5912219 (=> res!2478997 e!3620293)))

(declare-fun r!7292 () Regex!15959)

(declare-fun generalisedUnion!1803 (List!64176) Regex!15959)

(declare-fun unfocusZipperList!1380 (List!64177) List!64176)

(assert (=> b!5912219 (= res!2478997 (not (= r!7292 (generalisedUnion!1803 (unfocusZipperList!1380 zl!343)))))))

(declare-fun b!5912220 () Bool)

(declare-fun e!3620290 () Bool)

(declare-fun tp_is_empty!41171 () Bool)

(declare-fun tp!1642598 () Bool)

(assert (=> b!5912220 (= e!3620290 (and tp_is_empty!41171 tp!1642598))))

(declare-fun res!2478994 () Bool)

(declare-fun e!3620295 () Bool)

(assert (=> start!601420 (=> (not res!2478994) (not e!3620295))))

(declare-fun validRegex!7695 (Regex!15959) Bool)

(assert (=> start!601420 (= res!2478994 (validRegex!7695 r!7292))))

(assert (=> start!601420 e!3620295))

(declare-fun e!3620297 () Bool)

(assert (=> start!601420 e!3620297))

(assert (=> start!601420 e!3620290))

(declare-fun condSetEmpty!40108 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!10686))

(assert (=> start!601420 (= condSetEmpty!40108 (= z!1189 ((as const (Array Context!10686 Bool)) false)))))

(assert (=> start!601420 setRes!40108))

(assert (=> start!601420 e!3620296))

(declare-fun b!5912221 () Bool)

(declare-fun tp!1642597 () Bool)

(assert (=> b!5912221 (= e!3620292 tp!1642597)))

(declare-fun b!5912222 () Bool)

(declare-fun res!2479001 () Bool)

(assert (=> b!5912222 (=> res!2479001 e!3620293)))

(declare-fun generalisedConcat!1556 (List!64176) Regex!15959)

(assert (=> b!5912222 (= res!2479001 (not (= r!7292 (generalisedConcat!1556 (exprs!5843 (h!70501 zl!343))))))))

(declare-fun b!5912223 () Bool)

(declare-fun res!2478998 () Bool)

(assert (=> b!5912223 (=> res!2478998 e!3620293)))

(assert (=> b!5912223 (= res!2478998 (or ((_ is EmptyExpr!15959) r!7292) ((_ is EmptyLang!15959) r!7292) ((_ is ElementMatch!15959) r!7292) ((_ is Union!15959) r!7292) (not ((_ is Concat!24804) r!7292))))))

(declare-fun b!5912224 () Bool)

(declare-fun res!2478993 () Bool)

(declare-fun e!3620294 () Bool)

(assert (=> b!5912224 (=> (not res!2478993) (not e!3620294))))

(declare-fun unfocusZipper!1701 (List!64177) Regex!15959)

(assert (=> b!5912224 (= res!2478993 (= r!7292 (unfocusZipper!1701 zl!343)))))

(declare-fun b!5912225 () Bool)

(declare-fun tp!1642593 () Bool)

(assert (=> b!5912225 (= e!3620297 tp!1642593)))

(declare-fun b!5912226 () Bool)

(assert (=> b!5912226 (= e!3620295 e!3620294)))

(declare-fun res!2478999 () Bool)

(assert (=> b!5912226 (=> (not res!2478999) (not e!3620294))))

(declare-fun lt!2309184 () List!64177)

(assert (=> b!5912226 (= res!2478999 (= lt!2309184 zl!343))))

(declare-fun toList!9743 ((InoxSet Context!10686)) List!64177)

(assert (=> b!5912226 (= lt!2309184 (toList!9743 z!1189))))

(declare-fun b!5912227 () Bool)

(declare-fun res!2478996 () Bool)

(assert (=> b!5912227 (=> res!2478996 e!3620293)))

(declare-fun isEmpty!35908 (List!64177) Bool)

(assert (=> b!5912227 (= res!2478996 (not (isEmpty!35908 (t!377566 zl!343))))))

(declare-fun b!5912228 () Bool)

(declare-fun tp!1642602 () Bool)

(declare-fun tp!1642599 () Bool)

(assert (=> b!5912228 (= e!3620297 (and tp!1642602 tp!1642599))))

(declare-fun b!5912229 () Bool)

(declare-fun e!3620289 () Bool)

(declare-fun tp!1642595 () Bool)

(assert (=> b!5912229 (= e!3620289 tp!1642595)))

(declare-fun e!3620291 () Bool)

(assert (=> b!5912230 (= e!3620293 e!3620291)))

(declare-fun res!2479000 () Bool)

(assert (=> b!5912230 (=> res!2479000 e!3620291)))

(declare-datatypes ((List!64178 0))(
  ( (Nil!64054) (Cons!64054 (h!70502 C!32188) (t!377567 List!64178)) )
))
(declare-fun s!2326 () List!64178)

(declare-fun lt!2309183 () Bool)

(declare-fun lt!2309182 () Bool)

(assert (=> b!5912230 (= res!2479000 (or (not (= lt!2309183 lt!2309182)) (not ((_ is Nil!64054) s!2326))))))

(declare-fun Exists!3029 (Int) Bool)

(assert (=> b!5912230 (= (Exists!3029 lambda!322469) (Exists!3029 lambda!322470))))

(declare-datatypes ((Unit!157189 0))(
  ( (Unit!157190) )
))
(declare-fun lt!2309181 () Unit!157189)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1566 (Regex!15959 Regex!15959 List!64178) Unit!157189)

(assert (=> b!5912230 (= lt!2309181 (lemmaExistCutMatchRandMatchRSpecEquivalent!1566 (regOne!32430 r!7292) (regTwo!32430 r!7292) s!2326))))

(assert (=> b!5912230 (= lt!2309182 (Exists!3029 lambda!322469))))

(declare-datatypes ((tuple2!65876 0))(
  ( (tuple2!65877 (_1!36241 List!64178) (_2!36241 List!64178)) )
))
(declare-datatypes ((Option!15850 0))(
  ( (None!15849) (Some!15849 (v!51943 tuple2!65876)) )
))
(declare-fun isDefined!12553 (Option!15850) Bool)

(declare-fun findConcatSeparation!2264 (Regex!15959 Regex!15959 List!64178 List!64178 List!64178) Option!15850)

(assert (=> b!5912230 (= lt!2309182 (isDefined!12553 (findConcatSeparation!2264 (regOne!32430 r!7292) (regTwo!32430 r!7292) Nil!64054 s!2326 s!2326)))))

(declare-fun lt!2309180 () Unit!157189)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2028 (Regex!15959 Regex!15959 List!64178) Unit!157189)

(assert (=> b!5912230 (= lt!2309180 (lemmaFindConcatSeparationEquivalentToExists!2028 (regOne!32430 r!7292) (regTwo!32430 r!7292) s!2326))))

(declare-fun b!5912231 () Bool)

(assert (=> b!5912231 (= e!3620291 (= r!7292 (unfocusZipper!1701 lt!2309184)))))

(declare-fun b!5912232 () Bool)

(assert (=> b!5912232 (= e!3620297 tp_is_empty!41171)))

(declare-fun b!5912233 () Bool)

(declare-fun tp!1642600 () Bool)

(declare-fun tp!1642601 () Bool)

(assert (=> b!5912233 (= e!3620297 (and tp!1642600 tp!1642601))))

(declare-fun tp!1642596 () Bool)

(declare-fun setElem!40108 () Context!10686)

(declare-fun setNonEmpty!40108 () Bool)

(assert (=> setNonEmpty!40108 (= setRes!40108 (and tp!1642596 (inv!83144 setElem!40108) e!3620289))))

(declare-fun setRest!40108 () (InoxSet Context!10686))

(assert (=> setNonEmpty!40108 (= z!1189 ((_ map or) (store ((as const (Array Context!10686 Bool)) false) setElem!40108 true) setRest!40108))))

(declare-fun b!5912234 () Bool)

(assert (=> b!5912234 (= e!3620294 (not e!3620293))))

(declare-fun res!2478995 () Bool)

(assert (=> b!5912234 (=> res!2478995 e!3620293)))

(assert (=> b!5912234 (= res!2478995 (not ((_ is Cons!64053) zl!343)))))

(declare-fun matchRSpec!3060 (Regex!15959 List!64178) Bool)

(assert (=> b!5912234 (= lt!2309183 (matchRSpec!3060 r!7292 s!2326))))

(declare-fun matchR!8142 (Regex!15959 List!64178) Bool)

(assert (=> b!5912234 (= lt!2309183 (matchR!8142 r!7292 s!2326))))

(declare-fun lt!2309179 () Unit!157189)

(declare-fun mainMatchTheorem!3060 (Regex!15959 List!64178) Unit!157189)

(assert (=> b!5912234 (= lt!2309179 (mainMatchTheorem!3060 r!7292 s!2326))))

(assert (= (and start!601420 res!2478994) b!5912226))

(assert (= (and b!5912226 res!2478999) b!5912224))

(assert (= (and b!5912224 res!2478993) b!5912234))

(assert (= (and b!5912234 (not res!2478995)) b!5912227))

(assert (= (and b!5912227 (not res!2478996)) b!5912222))

(assert (= (and b!5912222 (not res!2479001)) b!5912217))

(assert (= (and b!5912217 (not res!2479002)) b!5912219))

(assert (= (and b!5912219 (not res!2478997)) b!5912223))

(assert (= (and b!5912223 (not res!2478998)) b!5912230))

(assert (= (and b!5912230 (not res!2479000)) b!5912231))

(assert (= (and start!601420 ((_ is ElementMatch!15959) r!7292)) b!5912232))

(assert (= (and start!601420 ((_ is Concat!24804) r!7292)) b!5912228))

(assert (= (and start!601420 ((_ is Star!15959) r!7292)) b!5912225))

(assert (= (and start!601420 ((_ is Union!15959) r!7292)) b!5912233))

(assert (= (and start!601420 ((_ is Cons!64054) s!2326)) b!5912220))

(assert (= (and start!601420 condSetEmpty!40108) setIsEmpty!40108))

(assert (= (and start!601420 (not condSetEmpty!40108)) setNonEmpty!40108))

(assert (= setNonEmpty!40108 b!5912229))

(assert (= b!5912218 b!5912221))

(assert (= (and start!601420 ((_ is Cons!64053) zl!343)) b!5912218))

(declare-fun m!6811630 () Bool)

(assert (=> b!5912218 m!6811630))

(declare-fun m!6811632 () Bool)

(assert (=> setNonEmpty!40108 m!6811632))

(declare-fun m!6811634 () Bool)

(assert (=> b!5912230 m!6811634))

(declare-fun m!6811636 () Bool)

(assert (=> b!5912230 m!6811636))

(declare-fun m!6811638 () Bool)

(assert (=> b!5912230 m!6811638))

(declare-fun m!6811640 () Bool)

(assert (=> b!5912230 m!6811640))

(assert (=> b!5912230 m!6811634))

(declare-fun m!6811642 () Bool)

(assert (=> b!5912230 m!6811642))

(assert (=> b!5912230 m!6811638))

(declare-fun m!6811644 () Bool)

(assert (=> b!5912230 m!6811644))

(declare-fun m!6811646 () Bool)

(assert (=> b!5912234 m!6811646))

(declare-fun m!6811648 () Bool)

(assert (=> b!5912234 m!6811648))

(declare-fun m!6811650 () Bool)

(assert (=> b!5912234 m!6811650))

(declare-fun m!6811652 () Bool)

(assert (=> start!601420 m!6811652))

(declare-fun m!6811654 () Bool)

(assert (=> b!5912224 m!6811654))

(declare-fun m!6811656 () Bool)

(assert (=> b!5912226 m!6811656))

(declare-fun m!6811658 () Bool)

(assert (=> b!5912222 m!6811658))

(declare-fun m!6811660 () Bool)

(assert (=> b!5912219 m!6811660))

(assert (=> b!5912219 m!6811660))

(declare-fun m!6811662 () Bool)

(assert (=> b!5912219 m!6811662))

(declare-fun m!6811664 () Bool)

(assert (=> b!5912227 m!6811664))

(declare-fun m!6811666 () Bool)

(assert (=> b!5912231 m!6811666))

(check-sat (not b!5912219) (not b!5912226) (not b!5912218) (not b!5912225) (not b!5912228) tp_is_empty!41171 (not start!601420) (not b!5912227) (not b!5912224) (not b!5912230) (not b!5912229) (not b!5912220) (not b!5912221) (not b!5912231) (not setNonEmpty!40108) (not b!5912222) (not b!5912233) (not b!5912234))
(check-sat)
