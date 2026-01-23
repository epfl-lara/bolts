; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!573794 () Bool)

(assert start!573794)

(declare-fun b!5489023 () Bool)

(assert (=> b!5489023 true))

(declare-fun b!5489011 () Bool)

(assert (=> b!5489011 true))

(declare-fun b!5489008 () Bool)

(declare-fun e!3396451 () Bool)

(declare-fun tp!1508881 () Bool)

(declare-fun tp!1508886 () Bool)

(assert (=> b!5489008 (= e!3396451 (and tp!1508881 tp!1508886))))

(declare-fun res!2341023 () Bool)

(declare-fun e!3396445 () Bool)

(assert (=> start!573794 (=> (not res!2341023) (not e!3396445))))

(declare-datatypes ((C!31140 0))(
  ( (C!31141 (val!25272 Int)) )
))
(declare-datatypes ((Regex!15435 0))(
  ( (ElementMatch!15435 (c!958611 C!31140)) (Concat!24280 (regOne!31382 Regex!15435) (regTwo!31382 Regex!15435)) (EmptyExpr!15435) (Star!15435 (reg!15764 Regex!15435)) (EmptyLang!15435) (Union!15435 (regOne!31383 Regex!15435) (regTwo!31383 Regex!15435)) )
))
(declare-fun r!7292 () Regex!15435)

(declare-fun validRegex!7171 (Regex!15435) Bool)

(assert (=> start!573794 (= res!2341023 (validRegex!7171 r!7292))))

(assert (=> start!573794 e!3396445))

(assert (=> start!573794 e!3396451))

(declare-fun condSetEmpty!36273 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!62604 0))(
  ( (Nil!62480) (Cons!62480 (h!68928 Regex!15435) (t!375835 List!62604)) )
))
(declare-datatypes ((Context!9638 0))(
  ( (Context!9639 (exprs!5319 List!62604)) )
))
(declare-fun z!1189 () (InoxSet Context!9638))

(assert (=> start!573794 (= condSetEmpty!36273 (= z!1189 ((as const (Array Context!9638 Bool)) false)))))

(declare-fun setRes!36273 () Bool)

(assert (=> start!573794 setRes!36273))

(declare-fun e!3396444 () Bool)

(assert (=> start!573794 e!3396444))

(declare-fun e!3396443 () Bool)

(assert (=> start!573794 e!3396443))

(declare-fun b!5489009 () Bool)

(declare-fun tp_is_empty!40123 () Bool)

(assert (=> b!5489009 (= e!3396451 tp_is_empty!40123)))

(declare-fun b!5489010 () Bool)

(declare-fun res!2341021 () Bool)

(assert (=> b!5489010 (=> (not res!2341021) (not e!3396445))))

(declare-datatypes ((List!62605 0))(
  ( (Nil!62481) (Cons!62481 (h!68929 Context!9638) (t!375836 List!62605)) )
))
(declare-fun zl!343 () List!62605)

(declare-fun toList!9219 ((InoxSet Context!9638)) List!62605)

(assert (=> b!5489010 (= res!2341021 (= (toList!9219 z!1189) zl!343))))

(declare-fun e!3396452 () Bool)

(declare-fun e!3396450 () Bool)

(assert (=> b!5489011 (= e!3396452 e!3396450)))

(declare-fun res!2341025 () Bool)

(assert (=> b!5489011 (=> res!2341025 e!3396450)))

(declare-fun lambda!293737 () Int)

(declare-fun exists!2094 (List!62605 Int) Bool)

(assert (=> b!5489011 (= res!2341025 (not (exists!2094 zl!343 lambda!293737)))))

(assert (=> b!5489011 (exists!2094 zl!343 lambda!293737)))

(declare-datatypes ((Unit!155326 0))(
  ( (Unit!155327) )
))
(declare-fun lt!2241763 () Unit!155326)

(declare-datatypes ((List!62606 0))(
  ( (Nil!62482) (Cons!62482 (h!68930 C!31140) (t!375837 List!62606)) )
))
(declare-fun s!2326 () List!62606)

(declare-fun lemmaZipperMatchesExistsMatchingContext!62 (List!62605 List!62606) Unit!155326)

(assert (=> b!5489011 (= lt!2241763 (lemmaZipperMatchesExistsMatchingContext!62 zl!343 s!2326))))

(declare-fun setElem!36273 () Context!9638)

(declare-fun setNonEmpty!36273 () Bool)

(declare-fun tp!1508882 () Bool)

(declare-fun e!3396446 () Bool)

(declare-fun inv!81834 (Context!9638) Bool)

(assert (=> setNonEmpty!36273 (= setRes!36273 (and tp!1508882 (inv!81834 setElem!36273) e!3396446))))

(declare-fun setRest!36273 () (InoxSet Context!9638))

(assert (=> setNonEmpty!36273 (= z!1189 ((_ map or) (store ((as const (Array Context!9638 Bool)) false) setElem!36273 true) setRest!36273))))

(declare-fun b!5489012 () Bool)

(declare-fun res!2341020 () Bool)

(declare-fun e!3396449 () Bool)

(assert (=> b!5489012 (=> res!2341020 e!3396449)))

(declare-fun isEmpty!34325 (List!62605) Bool)

(assert (=> b!5489012 (= res!2341020 (isEmpty!34325 (t!375836 zl!343)))))

(declare-fun b!5489013 () Bool)

(declare-fun res!2341027 () Bool)

(assert (=> b!5489013 (=> (not res!2341027) (not e!3396445))))

(declare-fun unfocusZipper!1177 (List!62605) Regex!15435)

(assert (=> b!5489013 (= res!2341027 (= r!7292 (unfocusZipper!1177 zl!343)))))

(declare-fun b!5489014 () Bool)

(declare-fun tp!1508885 () Bool)

(assert (=> b!5489014 (= e!3396446 tp!1508885)))

(declare-fun b!5489015 () Bool)

(declare-fun tp!1508888 () Bool)

(assert (=> b!5489015 (= e!3396451 tp!1508888)))

(declare-fun b!5489016 () Bool)

(declare-fun res!2341019 () Bool)

(assert (=> b!5489016 (=> res!2341019 e!3396452)))

(declare-fun lt!2241760 () List!62604)

(declare-fun lambda!293736 () Int)

(declare-fun exists!2095 (List!62604 Int) Bool)

(assert (=> b!5489016 (= res!2341019 (exists!2095 lt!2241760 lambda!293736))))

(declare-fun b!5489017 () Bool)

(assert (=> b!5489017 (= e!3396450 true)))

(declare-fun lt!2241765 () Context!9638)

(declare-fun getWitness!896 (List!62605 Int) Context!9638)

(assert (=> b!5489017 (= lt!2241765 (getWitness!896 zl!343 lambda!293737))))

(declare-fun b!5489018 () Bool)

(declare-fun e!3396447 () Bool)

(declare-fun tp!1508884 () Bool)

(assert (=> b!5489018 (= e!3396447 tp!1508884)))

(declare-fun b!5489019 () Bool)

(declare-fun e!3396448 () Bool)

(assert (=> b!5489019 (= e!3396448 (isEmpty!34325 (t!375836 zl!343)))))

(declare-fun b!5489020 () Bool)

(assert (=> b!5489020 (= e!3396445 (not e!3396449))))

(declare-fun res!2341022 () Bool)

(assert (=> b!5489020 (=> res!2341022 e!3396449)))

(assert (=> b!5489020 (= res!2341022 e!3396448)))

(declare-fun res!2341028 () Bool)

(assert (=> b!5489020 (=> (not res!2341028) (not e!3396448))))

(get-info :version)

(assert (=> b!5489020 (= res!2341028 ((_ is Cons!62481) zl!343))))

(declare-fun lt!2241764 () Bool)

(declare-fun matchRSpec!2538 (Regex!15435 List!62606) Bool)

(assert (=> b!5489020 (= lt!2241764 (matchRSpec!2538 r!7292 s!2326))))

(declare-fun matchR!7620 (Regex!15435 List!62606) Bool)

(assert (=> b!5489020 (= lt!2241764 (matchR!7620 r!7292 s!2326))))

(declare-fun lt!2241762 () Unit!155326)

(declare-fun mainMatchTheorem!2538 (Regex!15435 List!62606) Unit!155326)

(assert (=> b!5489020 (= lt!2241762 (mainMatchTheorem!2538 r!7292 s!2326))))

(declare-fun b!5489021 () Bool)

(declare-fun res!2341018 () Bool)

(assert (=> b!5489021 (=> res!2341018 e!3396449)))

(assert (=> b!5489021 (= res!2341018 (or (not ((_ is Cons!62481) zl!343)) ((_ is Nil!62482) s!2326) (not (= zl!343 (Cons!62481 (h!68929 zl!343) (t!375836 zl!343))))))))

(declare-fun setIsEmpty!36273 () Bool)

(assert (=> setIsEmpty!36273 setRes!36273))

(declare-fun b!5489022 () Bool)

(declare-fun res!2341026 () Bool)

(assert (=> b!5489022 (=> res!2341026 e!3396452)))

(declare-fun matchZipper!1619 ((InoxSet Context!9638) List!62606) Bool)

(assert (=> b!5489022 (= res!2341026 (not (matchZipper!1619 z!1189 s!2326)))))

(assert (=> b!5489023 (= e!3396449 e!3396452)))

(declare-fun res!2341024 () Bool)

(assert (=> b!5489023 (=> res!2341024 e!3396452)))

(assert (=> b!5489023 (= res!2341024 lt!2241764)))

(assert (=> b!5489023 (= lt!2241764 (exists!2095 lt!2241760 lambda!293736))))

(declare-fun lt!2241761 () Unit!155326)

(declare-fun matchRGenUnionSpec!268 (Regex!15435 List!62604 List!62606) Unit!155326)

(assert (=> b!5489023 (= lt!2241761 (matchRGenUnionSpec!268 r!7292 lt!2241760 s!2326))))

(declare-fun unfocusZipperList!867 (List!62605) List!62604)

(assert (=> b!5489023 (= lt!2241760 (unfocusZipperList!867 zl!343))))

(declare-fun b!5489024 () Bool)

(declare-fun tp!1508887 () Bool)

(assert (=> b!5489024 (= e!3396444 (and (inv!81834 (h!68929 zl!343)) e!3396447 tp!1508887))))

(declare-fun b!5489025 () Bool)

(declare-fun tp!1508889 () Bool)

(assert (=> b!5489025 (= e!3396443 (and tp_is_empty!40123 tp!1508889))))

(declare-fun b!5489026 () Bool)

(declare-fun tp!1508880 () Bool)

(declare-fun tp!1508883 () Bool)

(assert (=> b!5489026 (= e!3396451 (and tp!1508880 tp!1508883))))

(assert (= (and start!573794 res!2341023) b!5489010))

(assert (= (and b!5489010 res!2341021) b!5489013))

(assert (= (and b!5489013 res!2341027) b!5489020))

(assert (= (and b!5489020 res!2341028) b!5489019))

(assert (= (and b!5489020 (not res!2341022)) b!5489021))

(assert (= (and b!5489021 (not res!2341018)) b!5489012))

(assert (= (and b!5489012 (not res!2341020)) b!5489023))

(assert (= (and b!5489023 (not res!2341024)) b!5489016))

(assert (= (and b!5489016 (not res!2341019)) b!5489022))

(assert (= (and b!5489022 (not res!2341026)) b!5489011))

(assert (= (and b!5489011 (not res!2341025)) b!5489017))

(assert (= (and start!573794 ((_ is ElementMatch!15435) r!7292)) b!5489009))

(assert (= (and start!573794 ((_ is Concat!24280) r!7292)) b!5489008))

(assert (= (and start!573794 ((_ is Star!15435) r!7292)) b!5489015))

(assert (= (and start!573794 ((_ is Union!15435) r!7292)) b!5489026))

(assert (= (and start!573794 condSetEmpty!36273) setIsEmpty!36273))

(assert (= (and start!573794 (not condSetEmpty!36273)) setNonEmpty!36273))

(assert (= setNonEmpty!36273 b!5489014))

(assert (= b!5489024 b!5489018))

(assert (= (and start!573794 ((_ is Cons!62481) zl!343)) b!5489024))

(assert (= (and start!573794 ((_ is Cons!62482) s!2326)) b!5489025))

(declare-fun m!6502628 () Bool)

(assert (=> b!5489023 m!6502628))

(declare-fun m!6502630 () Bool)

(assert (=> b!5489023 m!6502630))

(declare-fun m!6502632 () Bool)

(assert (=> b!5489023 m!6502632))

(declare-fun m!6502634 () Bool)

(assert (=> b!5489020 m!6502634))

(declare-fun m!6502636 () Bool)

(assert (=> b!5489020 m!6502636))

(declare-fun m!6502638 () Bool)

(assert (=> b!5489020 m!6502638))

(declare-fun m!6502640 () Bool)

(assert (=> b!5489019 m!6502640))

(declare-fun m!6502642 () Bool)

(assert (=> b!5489013 m!6502642))

(declare-fun m!6502644 () Bool)

(assert (=> b!5489011 m!6502644))

(assert (=> b!5489011 m!6502644))

(declare-fun m!6502646 () Bool)

(assert (=> b!5489011 m!6502646))

(declare-fun m!6502648 () Bool)

(assert (=> b!5489017 m!6502648))

(declare-fun m!6502650 () Bool)

(assert (=> b!5489024 m!6502650))

(assert (=> b!5489012 m!6502640))

(declare-fun m!6502652 () Bool)

(assert (=> b!5489010 m!6502652))

(assert (=> b!5489016 m!6502628))

(declare-fun m!6502654 () Bool)

(assert (=> start!573794 m!6502654))

(declare-fun m!6502656 () Bool)

(assert (=> b!5489022 m!6502656))

(declare-fun m!6502658 () Bool)

(assert (=> setNonEmpty!36273 m!6502658))

(check-sat (not b!5489012) tp_is_empty!40123 (not b!5489022) (not setNonEmpty!36273) (not b!5489010) (not b!5489018) (not b!5489023) (not b!5489011) (not b!5489008) (not b!5489026) (not b!5489020) (not b!5489024) (not start!573794) (not b!5489019) (not b!5489014) (not b!5489013) (not b!5489025) (not b!5489015) (not b!5489017) (not b!5489016))
(check-sat)
