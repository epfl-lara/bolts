; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!573758 () Bool)

(assert start!573758)

(declare-fun b!5487725 () Bool)

(assert (=> b!5487725 true))

(declare-fun b!5487723 () Bool)

(assert (=> b!5487723 true))

(declare-fun b!5487719 () Bool)

(declare-fun res!2340261 () Bool)

(declare-fun e!3395761 () Bool)

(assert (=> b!5487719 (=> res!2340261 e!3395761)))

(declare-datatypes ((C!31104 0))(
  ( (C!31105 (val!25254 Int)) )
))
(declare-datatypes ((Regex!15417 0))(
  ( (ElementMatch!15417 (c!958545 C!31104)) (Concat!24262 (regOne!31346 Regex!15417) (regTwo!31346 Regex!15417)) (EmptyExpr!15417) (Star!15417 (reg!15746 Regex!15417)) (EmptyLang!15417) (Union!15417 (regOne!31347 Regex!15417) (regTwo!31347 Regex!15417)) )
))
(declare-datatypes ((List!62550 0))(
  ( (Nil!62426) (Cons!62426 (h!68874 Regex!15417) (t!375781 List!62550)) )
))
(declare-datatypes ((Context!9602 0))(
  ( (Context!9603 (exprs!5301 List!62550)) )
))
(declare-datatypes ((List!62551 0))(
  ( (Nil!62427) (Cons!62427 (h!68875 Context!9602) (t!375782 List!62551)) )
))
(declare-fun zl!343 () List!62551)

(declare-fun isEmpty!34307 (List!62551) Bool)

(assert (=> b!5487719 (= res!2340261 (isEmpty!34307 (t!375782 zl!343)))))

(declare-fun b!5487720 () Bool)

(declare-fun res!2340272 () Bool)

(declare-fun e!3395766 () Bool)

(assert (=> b!5487720 (=> (not res!2340272) (not e!3395766))))

(declare-fun r!7292 () Regex!15417)

(declare-fun unfocusZipper!1159 (List!62551) Regex!15417)

(assert (=> b!5487720 (= res!2340272 (= r!7292 (unfocusZipper!1159 zl!343)))))

(declare-fun b!5487721 () Bool)

(declare-fun res!2340273 () Bool)

(assert (=> b!5487721 (=> res!2340273 e!3395761)))

(declare-datatypes ((List!62552 0))(
  ( (Nil!62428) (Cons!62428 (h!68876 C!31104) (t!375783 List!62552)) )
))
(declare-fun s!2326 () List!62552)

(get-info :version)

(assert (=> b!5487721 (= res!2340273 (or (not ((_ is Cons!62427) zl!343)) ((_ is Nil!62428) s!2326) (not (= zl!343 (Cons!62427 (h!68875 zl!343) (t!375782 zl!343))))))))

(declare-fun b!5487722 () Bool)

(declare-fun res!2340271 () Bool)

(declare-fun e!3395768 () Bool)

(assert (=> b!5487722 (=> res!2340271 e!3395768)))

(declare-fun lt!2241225 () List!62550)

(declare-fun lambda!293506 () Int)

(declare-fun exists!2056 (List!62550 Int) Bool)

(assert (=> b!5487722 (= res!2340271 (not (exists!2056 lt!2241225 lambda!293506)))))

(declare-fun e!3395760 () Bool)

(declare-fun e!3395762 () Bool)

(assert (=> b!5487723 (= e!3395760 e!3395762)))

(declare-fun res!2340262 () Bool)

(assert (=> b!5487723 (=> res!2340262 e!3395762)))

(declare-fun lambda!293507 () Int)

(declare-fun exists!2057 (List!62551 Int) Bool)

(assert (=> b!5487723 (= res!2340262 (not (exists!2057 zl!343 lambda!293507)))))

(assert (=> b!5487723 (exists!2057 zl!343 lambda!293507)))

(declare-datatypes ((Unit!155290 0))(
  ( (Unit!155291) )
))
(declare-fun lt!2241221 () Unit!155290)

(declare-fun lt!2241223 () Regex!15417)

(declare-fun lemmaUnfocusListContainsConcatThenZipperExistsCorrespondingContext!8 (List!62551 Regex!15417) Unit!155290)

(assert (=> b!5487723 (= lt!2241221 (lemmaUnfocusListContainsConcatThenZipperExistsCorrespondingContext!8 zl!343 lt!2241223))))

(declare-fun b!5487724 () Bool)

(assert (=> b!5487724 (= e!3395766 (not e!3395761))))

(declare-fun res!2340269 () Bool)

(assert (=> b!5487724 (=> res!2340269 e!3395761)))

(declare-fun e!3395769 () Bool)

(assert (=> b!5487724 (= res!2340269 e!3395769)))

(declare-fun res!2340274 () Bool)

(assert (=> b!5487724 (=> (not res!2340274) (not e!3395769))))

(assert (=> b!5487724 (= res!2340274 ((_ is Cons!62427) zl!343))))

(declare-fun lt!2241224 () Bool)

(declare-fun matchRSpec!2520 (Regex!15417 List!62552) Bool)

(assert (=> b!5487724 (= lt!2241224 (matchRSpec!2520 r!7292 s!2326))))

(declare-fun matchR!7602 (Regex!15417 List!62552) Bool)

(assert (=> b!5487724 (= lt!2241224 (matchR!7602 r!7292 s!2326))))

(declare-fun lt!2241219 () Unit!155290)

(declare-fun mainMatchTheorem!2520 (Regex!15417 List!62552) Unit!155290)

(assert (=> b!5487724 (= lt!2241219 (mainMatchTheorem!2520 r!7292 s!2326))))

(declare-fun setIsEmpty!36219 () Bool)

(declare-fun setRes!36219 () Bool)

(assert (=> setIsEmpty!36219 setRes!36219))

(assert (=> b!5487725 (= e!3395761 e!3395768)))

(declare-fun res!2340268 () Bool)

(assert (=> b!5487725 (=> res!2340268 e!3395768)))

(assert (=> b!5487725 (= res!2340268 (not lt!2241224))))

(assert (=> b!5487725 (= lt!2241224 (exists!2056 lt!2241225 lambda!293506))))

(declare-fun lt!2241220 () Unit!155290)

(declare-fun matchRGenUnionSpec!250 (Regex!15417 List!62550 List!62552) Unit!155290)

(assert (=> b!5487725 (= lt!2241220 (matchRGenUnionSpec!250 r!7292 lt!2241225 s!2326))))

(declare-fun unfocusZipperList!849 (List!62551) List!62550)

(assert (=> b!5487725 (= lt!2241225 (unfocusZipperList!849 zl!343))))

(declare-fun b!5487726 () Bool)

(declare-fun e!3395767 () Bool)

(declare-fun tp!1508312 () Bool)

(assert (=> b!5487726 (= e!3395767 tp!1508312)))

(declare-fun b!5487727 () Bool)

(assert (=> b!5487727 (= e!3395769 (isEmpty!34307 (t!375782 zl!343)))))

(declare-fun tp!1508314 () Bool)

(declare-fun b!5487728 () Bool)

(declare-fun e!3395765 () Bool)

(declare-fun inv!81789 (Context!9602) Bool)

(assert (=> b!5487728 (= e!3395765 (and (inv!81789 (h!68875 zl!343)) e!3395767 tp!1508314))))

(declare-fun b!5487729 () Bool)

(assert (=> b!5487729 (= e!3395762 true)))

(declare-fun lt!2241222 () Int)

(declare-fun size!39925 (List!62551) Int)

(assert (=> b!5487729 (= lt!2241222 (size!39925 zl!343))))

(declare-fun b!5487730 () Bool)

(declare-fun res!2340270 () Bool)

(assert (=> b!5487730 (=> res!2340270 e!3395762)))

(declare-fun contains!19740 (List!62551 Context!9602) Bool)

(declare-fun getWitness!873 (List!62551 Int) Context!9602)

(assert (=> b!5487730 (= res!2340270 (not (contains!19740 zl!343 (getWitness!873 zl!343 lambda!293507))))))

(declare-fun b!5487731 () Bool)

(declare-fun res!2340266 () Bool)

(assert (=> b!5487731 (=> res!2340266 e!3395760)))

(assert (=> b!5487731 (= res!2340266 (not (matchR!7602 lt!2241223 s!2326)))))

(declare-fun b!5487732 () Bool)

(declare-fun e!3395763 () Bool)

(declare-fun tp_is_empty!40087 () Bool)

(declare-fun tp!1508317 () Bool)

(assert (=> b!5487732 (= e!3395763 (and tp_is_empty!40087 tp!1508317))))

(declare-fun res!2340263 () Bool)

(assert (=> start!573758 (=> (not res!2340263) (not e!3395766))))

(declare-fun validRegex!7153 (Regex!15417) Bool)

(assert (=> start!573758 (= res!2340263 (validRegex!7153 r!7292))))

(assert (=> start!573758 e!3395766))

(declare-fun e!3395770 () Bool)

(assert (=> start!573758 e!3395770))

(declare-fun condSetEmpty!36219 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!9602))

(assert (=> start!573758 (= condSetEmpty!36219 (= z!1189 ((as const (Array Context!9602 Bool)) false)))))

(assert (=> start!573758 setRes!36219))

(assert (=> start!573758 e!3395765))

(assert (=> start!573758 e!3395763))

(declare-fun b!5487733 () Bool)

(declare-fun tp!1508319 () Bool)

(assert (=> b!5487733 (= e!3395770 tp!1508319)))

(declare-fun b!5487734 () Bool)

(assert (=> b!5487734 (= e!3395770 tp_is_empty!40087)))

(declare-fun b!5487735 () Bool)

(assert (=> b!5487735 (= e!3395768 e!3395760)))

(declare-fun res!2340265 () Bool)

(assert (=> b!5487735 (=> res!2340265 e!3395760)))

(declare-fun contains!19741 (List!62550 Regex!15417) Bool)

(assert (=> b!5487735 (= res!2340265 (not (contains!19741 lt!2241225 lt!2241223)))))

(declare-fun getWitness!874 (List!62550 Int) Regex!15417)

(assert (=> b!5487735 (= lt!2241223 (getWitness!874 lt!2241225 lambda!293506))))

(declare-fun b!5487736 () Bool)

(declare-fun res!2340267 () Bool)

(assert (=> b!5487736 (=> res!2340267 e!3395760)))

(assert (=> b!5487736 (= res!2340267 (not (validRegex!7153 lt!2241223)))))

(declare-fun b!5487737 () Bool)

(declare-fun e!3395764 () Bool)

(declare-fun tp!1508311 () Bool)

(assert (=> b!5487737 (= e!3395764 tp!1508311)))

(declare-fun b!5487738 () Bool)

(declare-fun tp!1508315 () Bool)

(declare-fun tp!1508316 () Bool)

(assert (=> b!5487738 (= e!3395770 (and tp!1508315 tp!1508316))))

(declare-fun b!5487739 () Bool)

(declare-fun tp!1508310 () Bool)

(declare-fun tp!1508313 () Bool)

(assert (=> b!5487739 (= e!3395770 (and tp!1508310 tp!1508313))))

(declare-fun b!5487740 () Bool)

(declare-fun res!2340264 () Bool)

(assert (=> b!5487740 (=> (not res!2340264) (not e!3395766))))

(declare-fun toList!9201 ((InoxSet Context!9602)) List!62551)

(assert (=> b!5487740 (= res!2340264 (= (toList!9201 z!1189) zl!343))))

(declare-fun setNonEmpty!36219 () Bool)

(declare-fun tp!1508318 () Bool)

(declare-fun setElem!36219 () Context!9602)

(assert (=> setNonEmpty!36219 (= setRes!36219 (and tp!1508318 (inv!81789 setElem!36219) e!3395764))))

(declare-fun setRest!36219 () (InoxSet Context!9602))

(assert (=> setNonEmpty!36219 (= z!1189 ((_ map or) (store ((as const (Array Context!9602 Bool)) false) setElem!36219 true) setRest!36219))))

(assert (= (and start!573758 res!2340263) b!5487740))

(assert (= (and b!5487740 res!2340264) b!5487720))

(assert (= (and b!5487720 res!2340272) b!5487724))

(assert (= (and b!5487724 res!2340274) b!5487727))

(assert (= (and b!5487724 (not res!2340269)) b!5487721))

(assert (= (and b!5487721 (not res!2340273)) b!5487719))

(assert (= (and b!5487719 (not res!2340261)) b!5487725))

(assert (= (and b!5487725 (not res!2340268)) b!5487722))

(assert (= (and b!5487722 (not res!2340271)) b!5487735))

(assert (= (and b!5487735 (not res!2340265)) b!5487736))

(assert (= (and b!5487736 (not res!2340267)) b!5487731))

(assert (= (and b!5487731 (not res!2340266)) b!5487723))

(assert (= (and b!5487723 (not res!2340262)) b!5487730))

(assert (= (and b!5487730 (not res!2340270)) b!5487729))

(assert (= (and start!573758 ((_ is ElementMatch!15417) r!7292)) b!5487734))

(assert (= (and start!573758 ((_ is Concat!24262) r!7292)) b!5487739))

(assert (= (and start!573758 ((_ is Star!15417) r!7292)) b!5487733))

(assert (= (and start!573758 ((_ is Union!15417) r!7292)) b!5487738))

(assert (= (and start!573758 condSetEmpty!36219) setIsEmpty!36219))

(assert (= (and start!573758 (not condSetEmpty!36219)) setNonEmpty!36219))

(assert (= setNonEmpty!36219 b!5487737))

(assert (= b!5487728 b!5487726))

(assert (= (and start!573758 ((_ is Cons!62427) zl!343)) b!5487728))

(assert (= (and start!573758 ((_ is Cons!62428) s!2326)) b!5487732))

(declare-fun m!6501810 () Bool)

(assert (=> b!5487731 m!6501810))

(declare-fun m!6501812 () Bool)

(assert (=> b!5487729 m!6501812))

(declare-fun m!6501814 () Bool)

(assert (=> b!5487736 m!6501814))

(declare-fun m!6501816 () Bool)

(assert (=> b!5487719 m!6501816))

(declare-fun m!6501818 () Bool)

(assert (=> setNonEmpty!36219 m!6501818))

(declare-fun m!6501820 () Bool)

(assert (=> b!5487724 m!6501820))

(declare-fun m!6501822 () Bool)

(assert (=> b!5487724 m!6501822))

(declare-fun m!6501824 () Bool)

(assert (=> b!5487724 m!6501824))

(declare-fun m!6501826 () Bool)

(assert (=> b!5487728 m!6501826))

(declare-fun m!6501828 () Bool)

(assert (=> b!5487730 m!6501828))

(assert (=> b!5487730 m!6501828))

(declare-fun m!6501830 () Bool)

(assert (=> b!5487730 m!6501830))

(assert (=> b!5487727 m!6501816))

(declare-fun m!6501832 () Bool)

(assert (=> b!5487725 m!6501832))

(declare-fun m!6501834 () Bool)

(assert (=> b!5487725 m!6501834))

(declare-fun m!6501836 () Bool)

(assert (=> b!5487725 m!6501836))

(declare-fun m!6501838 () Bool)

(assert (=> b!5487735 m!6501838))

(declare-fun m!6501840 () Bool)

(assert (=> b!5487735 m!6501840))

(assert (=> b!5487722 m!6501832))

(declare-fun m!6501842 () Bool)

(assert (=> start!573758 m!6501842))

(declare-fun m!6501844 () Bool)

(assert (=> b!5487740 m!6501844))

(declare-fun m!6501846 () Bool)

(assert (=> b!5487723 m!6501846))

(assert (=> b!5487723 m!6501846))

(declare-fun m!6501848 () Bool)

(assert (=> b!5487723 m!6501848))

(declare-fun m!6501850 () Bool)

(assert (=> b!5487720 m!6501850))

(check-sat (not b!5487726) (not b!5487724) (not b!5487722) (not b!5487735) (not setNonEmpty!36219) (not b!5487737) (not b!5487731) (not b!5487732) (not b!5487738) (not b!5487730) (not b!5487739) (not start!573758) (not b!5487736) (not b!5487740) (not b!5487725) (not b!5487723) (not b!5487727) (not b!5487720) (not b!5487719) (not b!5487728) (not b!5487729) (not b!5487733) tp_is_empty!40087)
(check-sat)
