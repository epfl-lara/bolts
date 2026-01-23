; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!573610 () Bool)

(assert start!573610)

(declare-fun b!5486043 () Bool)

(assert (=> b!5486043 true))

(declare-fun b!5486035 () Bool)

(declare-fun res!2339451 () Bool)

(declare-fun e!3394816 () Bool)

(assert (=> b!5486035 (=> res!2339451 e!3394816)))

(declare-datatypes ((C!31084 0))(
  ( (C!31085 (val!25244 Int)) )
))
(declare-datatypes ((Regex!15407 0))(
  ( (ElementMatch!15407 (c!958347 C!31084)) (Concat!24252 (regOne!31326 Regex!15407) (regTwo!31326 Regex!15407)) (EmptyExpr!15407) (Star!15407 (reg!15736 Regex!15407)) (EmptyLang!15407) (Union!15407 (regOne!31327 Regex!15407) (regTwo!31327 Regex!15407)) )
))
(declare-datatypes ((List!62520 0))(
  ( (Nil!62396) (Cons!62396 (h!68844 Regex!15407) (t!375751 List!62520)) )
))
(declare-datatypes ((Context!9582 0))(
  ( (Context!9583 (exprs!5291 List!62520)) )
))
(declare-datatypes ((List!62521 0))(
  ( (Nil!62397) (Cons!62397 (h!68845 Context!9582) (t!375752 List!62521)) )
))
(declare-fun zl!343 () List!62521)

(declare-fun isEmpty!34293 (List!62521) Bool)

(assert (=> b!5486035 (= res!2339451 (isEmpty!34293 (t!375752 zl!343)))))

(declare-fun b!5486036 () Bool)

(declare-fun e!3394824 () Bool)

(declare-fun tp!1507762 () Bool)

(declare-fun tp!1507761 () Bool)

(assert (=> b!5486036 (= e!3394824 (and tp!1507762 tp!1507761))))

(declare-fun b!5486037 () Bool)

(declare-fun e!3394820 () Bool)

(declare-fun tp!1507759 () Bool)

(assert (=> b!5486037 (= e!3394820 tp!1507759)))

(declare-fun b!5486038 () Bool)

(declare-fun e!3394819 () Bool)

(declare-fun tp!1507765 () Bool)

(assert (=> b!5486038 (= e!3394819 tp!1507765)))

(declare-fun setIsEmpty!36177 () Bool)

(declare-fun setRes!36177 () Bool)

(assert (=> setIsEmpty!36177 setRes!36177))

(declare-fun b!5486039 () Bool)

(declare-fun tp_is_empty!40067 () Bool)

(assert (=> b!5486039 (= e!3394824 tp_is_empty!40067)))

(declare-fun b!5486040 () Bool)

(declare-fun res!2339443 () Bool)

(declare-fun e!3394817 () Bool)

(assert (=> b!5486040 (=> res!2339443 e!3394817)))

(declare-fun lt!2240912 () List!62520)

(declare-fun lambda!293265 () Int)

(declare-fun contains!19729 (List!62520 Regex!15407) Bool)

(declare-fun getWitness!862 (List!62520 Int) Regex!15407)

(assert (=> b!5486040 (= res!2339443 (not (contains!19729 lt!2240912 (getWitness!862 lt!2240912 lambda!293265))))))

(declare-fun b!5486042 () Bool)

(declare-fun res!2339448 () Bool)

(declare-fun e!3394818 () Bool)

(assert (=> b!5486042 (=> (not res!2339448) (not e!3394818))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!9582))

(declare-fun toList!9191 ((InoxSet Context!9582)) List!62521)

(assert (=> b!5486042 (= res!2339448 (= (toList!9191 z!1189) zl!343))))

(assert (=> b!5486043 (= e!3394816 e!3394817)))

(declare-fun res!2339446 () Bool)

(assert (=> b!5486043 (=> res!2339446 e!3394817)))

(declare-fun lt!2240915 () Bool)

(assert (=> b!5486043 (= res!2339446 (not lt!2240915))))

(declare-fun exists!2039 (List!62520 Int) Bool)

(assert (=> b!5486043 (= lt!2240915 (exists!2039 lt!2240912 lambda!293265))))

(declare-fun r!7292 () Regex!15407)

(declare-datatypes ((List!62522 0))(
  ( (Nil!62398) (Cons!62398 (h!68846 C!31084) (t!375753 List!62522)) )
))
(declare-fun s!2326 () List!62522)

(declare-datatypes ((Unit!155268 0))(
  ( (Unit!155269) )
))
(declare-fun lt!2240913 () Unit!155268)

(declare-fun matchRGenUnionSpec!240 (Regex!15407 List!62520 List!62522) Unit!155268)

(assert (=> b!5486043 (= lt!2240913 (matchRGenUnionSpec!240 r!7292 lt!2240912 s!2326))))

(declare-fun unfocusZipperList!839 (List!62521) List!62520)

(assert (=> b!5486043 (= lt!2240912 (unfocusZipperList!839 zl!343))))

(declare-fun res!2339447 () Bool)

(assert (=> start!573610 (=> (not res!2339447) (not e!3394818))))

(declare-fun validRegex!7143 (Regex!15407) Bool)

(assert (=> start!573610 (= res!2339447 (validRegex!7143 r!7292))))

(assert (=> start!573610 e!3394818))

(assert (=> start!573610 e!3394824))

(declare-fun condSetEmpty!36177 () Bool)

(assert (=> start!573610 (= condSetEmpty!36177 (= z!1189 ((as const (Array Context!9582 Bool)) false)))))

(assert (=> start!573610 setRes!36177))

(declare-fun e!3394821 () Bool)

(assert (=> start!573610 e!3394821))

(declare-fun e!3394823 () Bool)

(assert (=> start!573610 e!3394823))

(declare-fun b!5486041 () Bool)

(declare-fun e!3394822 () Bool)

(assert (=> b!5486041 (= e!3394822 (isEmpty!34293 (t!375752 zl!343)))))

(declare-fun b!5486044 () Bool)

(assert (=> b!5486044 (= e!3394818 (not e!3394816))))

(declare-fun res!2339452 () Bool)

(assert (=> b!5486044 (=> res!2339452 e!3394816)))

(assert (=> b!5486044 (= res!2339452 e!3394822)))

(declare-fun res!2339444 () Bool)

(assert (=> b!5486044 (=> (not res!2339444) (not e!3394822))))

(get-info :version)

(assert (=> b!5486044 (= res!2339444 ((_ is Cons!62397) zl!343))))

(declare-fun matchRSpec!2510 (Regex!15407 List!62522) Bool)

(assert (=> b!5486044 (= lt!2240915 (matchRSpec!2510 r!7292 s!2326))))

(declare-fun matchR!7592 (Regex!15407 List!62522) Bool)

(assert (=> b!5486044 (= lt!2240915 (matchR!7592 r!7292 s!2326))))

(declare-fun lt!2240914 () Unit!155268)

(declare-fun mainMatchTheorem!2510 (Regex!15407 List!62522) Unit!155268)

(assert (=> b!5486044 (= lt!2240914 (mainMatchTheorem!2510 r!7292 s!2326))))

(declare-fun b!5486045 () Bool)

(declare-fun res!2339449 () Bool)

(assert (=> b!5486045 (=> res!2339449 e!3394817)))

(assert (=> b!5486045 (= res!2339449 (not (exists!2039 lt!2240912 lambda!293265)))))

(declare-fun b!5486046 () Bool)

(assert (=> b!5486046 (= e!3394817 true)))

(declare-fun b!5486047 () Bool)

(declare-fun res!2339445 () Bool)

(assert (=> b!5486047 (=> (not res!2339445) (not e!3394818))))

(declare-fun unfocusZipper!1149 (List!62521) Regex!15407)

(assert (=> b!5486047 (= res!2339445 (= r!7292 (unfocusZipper!1149 zl!343)))))

(declare-fun b!5486048 () Bool)

(declare-fun tp!1507764 () Bool)

(declare-fun inv!81764 (Context!9582) Bool)

(assert (=> b!5486048 (= e!3394821 (and (inv!81764 (h!68845 zl!343)) e!3394820 tp!1507764))))

(declare-fun b!5486049 () Bool)

(declare-fun res!2339450 () Bool)

(assert (=> b!5486049 (=> res!2339450 e!3394816)))

(assert (=> b!5486049 (= res!2339450 (or (not ((_ is Cons!62397) zl!343)) ((_ is Nil!62398) s!2326) (not (= zl!343 (Cons!62397 (h!68845 zl!343) (t!375752 zl!343))))))))

(declare-fun b!5486050 () Bool)

(declare-fun tp!1507758 () Bool)

(declare-fun tp!1507767 () Bool)

(assert (=> b!5486050 (= e!3394824 (and tp!1507758 tp!1507767))))

(declare-fun b!5486051 () Bool)

(declare-fun tp!1507766 () Bool)

(assert (=> b!5486051 (= e!3394824 tp!1507766)))

(declare-fun setNonEmpty!36177 () Bool)

(declare-fun setElem!36177 () Context!9582)

(declare-fun tp!1507763 () Bool)

(assert (=> setNonEmpty!36177 (= setRes!36177 (and tp!1507763 (inv!81764 setElem!36177) e!3394819))))

(declare-fun setRest!36177 () (InoxSet Context!9582))

(assert (=> setNonEmpty!36177 (= z!1189 ((_ map or) (store ((as const (Array Context!9582 Bool)) false) setElem!36177 true) setRest!36177))))

(declare-fun b!5486052 () Bool)

(declare-fun tp!1507760 () Bool)

(assert (=> b!5486052 (= e!3394823 (and tp_is_empty!40067 tp!1507760))))

(assert (= (and start!573610 res!2339447) b!5486042))

(assert (= (and b!5486042 res!2339448) b!5486047))

(assert (= (and b!5486047 res!2339445) b!5486044))

(assert (= (and b!5486044 res!2339444) b!5486041))

(assert (= (and b!5486044 (not res!2339452)) b!5486049))

(assert (= (and b!5486049 (not res!2339450)) b!5486035))

(assert (= (and b!5486035 (not res!2339451)) b!5486043))

(assert (= (and b!5486043 (not res!2339446)) b!5486045))

(assert (= (and b!5486045 (not res!2339449)) b!5486040))

(assert (= (and b!5486040 (not res!2339443)) b!5486046))

(assert (= (and start!573610 ((_ is ElementMatch!15407) r!7292)) b!5486039))

(assert (= (and start!573610 ((_ is Concat!24252) r!7292)) b!5486050))

(assert (= (and start!573610 ((_ is Star!15407) r!7292)) b!5486051))

(assert (= (and start!573610 ((_ is Union!15407) r!7292)) b!5486036))

(assert (= (and start!573610 condSetEmpty!36177) setIsEmpty!36177))

(assert (= (and start!573610 (not condSetEmpty!36177)) setNonEmpty!36177))

(assert (= setNonEmpty!36177 b!5486038))

(assert (= b!5486048 b!5486037))

(assert (= (and start!573610 ((_ is Cons!62397) zl!343)) b!5486048))

(assert (= (and start!573610 ((_ is Cons!62398) s!2326)) b!5486052))

(declare-fun m!6500996 () Bool)

(assert (=> b!5486040 m!6500996))

(assert (=> b!5486040 m!6500996))

(declare-fun m!6500998 () Bool)

(assert (=> b!5486040 m!6500998))

(declare-fun m!6501000 () Bool)

(assert (=> start!573610 m!6501000))

(declare-fun m!6501002 () Bool)

(assert (=> b!5486035 m!6501002))

(declare-fun m!6501004 () Bool)

(assert (=> b!5486048 m!6501004))

(declare-fun m!6501006 () Bool)

(assert (=> b!5486043 m!6501006))

(declare-fun m!6501008 () Bool)

(assert (=> b!5486043 m!6501008))

(declare-fun m!6501010 () Bool)

(assert (=> b!5486043 m!6501010))

(assert (=> b!5486041 m!6501002))

(declare-fun m!6501012 () Bool)

(assert (=> setNonEmpty!36177 m!6501012))

(declare-fun m!6501014 () Bool)

(assert (=> b!5486042 m!6501014))

(declare-fun m!6501016 () Bool)

(assert (=> b!5486047 m!6501016))

(declare-fun m!6501018 () Bool)

(assert (=> b!5486044 m!6501018))

(declare-fun m!6501020 () Bool)

(assert (=> b!5486044 m!6501020))

(declare-fun m!6501022 () Bool)

(assert (=> b!5486044 m!6501022))

(assert (=> b!5486045 m!6501006))

(check-sat (not b!5486045) (not b!5486047) (not b!5486051) tp_is_empty!40067 (not b!5486043) (not setNonEmpty!36177) (not b!5486040) (not b!5486036) (not b!5486038) (not b!5486042) (not b!5486041) (not start!573610) (not b!5486050) (not b!5486044) (not b!5486052) (not b!5486035) (not b!5486048) (not b!5486037))
(check-sat)
