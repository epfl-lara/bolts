; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!542396 () Bool)

(assert start!542396)

(declare-fun b!5130748 () Bool)

(assert (=> b!5130748 true))

(declare-fun bs!1195854 () Bool)

(declare-fun b!5130749 () Bool)

(declare-fun b!5130738 () Bool)

(assert (= bs!1195854 (and b!5130749 b!5130738)))

(declare-fun lambda!253849 () Int)

(declare-fun lambda!253848 () Int)

(assert (=> bs!1195854 (not (= lambda!253849 lambda!253848))))

(declare-fun bs!1195855 () Bool)

(declare-fun b!5130737 () Bool)

(assert (= bs!1195855 (and b!5130737 b!5130738)))

(declare-fun lambda!253850 () Int)

(assert (=> bs!1195855 (not (= lambda!253850 lambda!253848))))

(declare-fun bs!1195856 () Bool)

(assert (= bs!1195856 (and b!5130737 b!5130749)))

(assert (=> bs!1195856 (not (= lambda!253850 lambda!253849))))

(assert (=> b!5130737 true))

(assert (=> b!5130737 true))

(declare-fun e!3199956 () Bool)

(declare-fun e!3199958 () Bool)

(assert (=> b!5130737 (= e!3199956 e!3199958)))

(declare-fun res!2185117 () Bool)

(assert (=> b!5130737 (=> res!2185117 e!3199958)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!28940 0))(
  ( (C!28941 (val!24122 Int)) )
))
(declare-datatypes ((Regex!14337 0))(
  ( (ElementMatch!14337 (c!882571 C!28940)) (Concat!23182 (regOne!29186 Regex!14337) (regTwo!29186 Regex!14337)) (EmptyExpr!14337) (Star!14337 (reg!14666 Regex!14337)) (EmptyLang!14337) (Union!14337 (regOne!29187 Regex!14337) (regTwo!29187 Regex!14337)) )
))
(declare-datatypes ((List!59603 0))(
  ( (Nil!59479) (Cons!59479 (h!65927 Regex!14337) (t!372630 List!59603)) )
))
(declare-datatypes ((Context!7442 0))(
  ( (Context!7443 (exprs!4221 List!59603)) )
))
(declare-fun z!1054 () (InoxSet Context!7442))

(declare-fun exists!1639 ((InoxSet Context!7442) Int) Bool)

(assert (=> b!5130737 (= res!2185117 (not (exists!1639 z!1054 lambda!253850)))))

(assert (=> b!5130737 (exists!1639 z!1054 lambda!253850)))

(declare-fun lt!2116613 () Context!7442)

(declare-datatypes ((Unit!150729 0))(
  ( (Unit!150730) )
))
(declare-fun lt!2116614 () Unit!150729)

(declare-fun lambda!253847 () Int)

(declare-fun lemmaFlatMapPost!6 ((InoxSet Context!7442) Int Context!7442) Unit!150729)

(assert (=> b!5130737 (= lt!2116614 (lemmaFlatMapPost!6 z!1054 lambda!253847 lt!2116613))))

(declare-fun e!3199960 () Bool)

(declare-fun e!3199959 () Bool)

(assert (=> b!5130738 (= e!3199960 e!3199959)))

(declare-fun res!2185115 () Bool)

(assert (=> b!5130738 (=> (not res!2185115) (not e!3199959))))

(declare-fun lt!2116606 () (InoxSet Context!7442))

(declare-fun lt!2116610 () Bool)

(declare-fun forall!13755 ((InoxSet Context!7442) Int) Bool)

(assert (=> b!5130738 (= res!2185115 (= lt!2116610 (forall!13755 lt!2116606 lambda!253848)))))

(declare-fun lostCauseZipper!1181 ((InoxSet Context!7442)) Bool)

(assert (=> b!5130738 (= lt!2116610 (lostCauseZipper!1181 lt!2116606))))

(declare-fun b!5130739 () Bool)

(declare-fun res!2185116 () Bool)

(declare-fun e!3199963 () Bool)

(assert (=> b!5130739 (=> res!2185116 e!3199963)))

(declare-fun lt!2116611 () Context!7442)

(declare-fun a!1233 () C!28940)

(declare-fun derivationStepZipperUp!62 (Context!7442 C!28940) (InoxSet Context!7442))

(assert (=> b!5130739 (= res!2185116 (not (select (derivationStepZipperUp!62 lt!2116611 a!1233) lt!2116613)))))

(declare-fun b!5130740 () Bool)

(declare-fun e!3199962 () Bool)

(declare-fun tp!1431313 () Bool)

(assert (=> b!5130740 (= e!3199962 tp!1431313)))

(declare-fun b!5130741 () Bool)

(declare-fun res!2185126 () Bool)

(assert (=> b!5130741 (=> (not res!2185126) (not e!3199959))))

(assert (=> b!5130741 (= res!2185126 (not (forall!13755 lt!2116606 lambda!253848)))))

(declare-fun setIsEmpty!31052 () Bool)

(declare-fun setRes!31052 () Bool)

(assert (=> setIsEmpty!31052 setRes!31052))

(declare-fun b!5130742 () Bool)

(declare-fun res!2185122 () Bool)

(assert (=> b!5130742 (=> (not res!2185122) (not e!3199959))))

(assert (=> b!5130742 (= res!2185122 (not lt!2116610))))

(declare-fun b!5130743 () Bool)

(assert (=> b!5130743 (= e!3199963 true)))

(declare-fun lt!2116609 () Bool)

(declare-fun lostCause!1290 (Context!7442) Bool)

(assert (=> b!5130743 (= lt!2116609 (lostCause!1290 lt!2116611))))

(declare-fun lt!2116607 () Unit!150729)

(declare-datatypes ((List!59604 0))(
  ( (Nil!59480) (Cons!59480 (h!65928 Context!7442) (t!372631 List!59604)) )
))
(declare-fun forallContained!4619 (List!59604 Int Context!7442) Unit!150729)

(declare-fun toList!8327 ((InoxSet Context!7442)) List!59604)

(assert (=> b!5130743 (= lt!2116607 (forallContained!4619 (toList!8327 z!1054) lambda!253848 lt!2116611))))

(declare-fun b!5130744 () Bool)

(declare-fun res!2185119 () Bool)

(assert (=> b!5130744 (=> res!2185119 e!3199956)))

(assert (=> b!5130744 (= res!2185119 (lostCause!1290 lt!2116613))))

(declare-fun setElem!31052 () Context!7442)

(declare-fun tp!1431312 () Bool)

(declare-fun setNonEmpty!31052 () Bool)

(declare-fun inv!79023 (Context!7442) Bool)

(assert (=> setNonEmpty!31052 (= setRes!31052 (and tp!1431312 (inv!79023 setElem!31052) e!3199962))))

(declare-fun setRest!31052 () (InoxSet Context!7442))

(assert (=> setNonEmpty!31052 (= z!1054 ((_ map or) (store ((as const (Array Context!7442 Bool)) false) setElem!31052 true) setRest!31052))))

(declare-fun b!5130745 () Bool)

(declare-fun res!2185123 () Bool)

(assert (=> b!5130745 (=> (not res!2185123) (not e!3199959))))

(assert (=> b!5130745 (= res!2185123 (forall!13755 z!1054 lambda!253848))))

(declare-fun b!5130747 () Bool)

(declare-fun e!3199961 () Bool)

(assert (=> b!5130747 (= e!3199961 e!3199956)))

(declare-fun res!2185121 () Bool)

(assert (=> b!5130747 (=> res!2185121 e!3199956)))

(assert (=> b!5130747 (= res!2185121 (not (select lt!2116606 lt!2116613)))))

(declare-fun lt!2116608 () List!59604)

(declare-fun getWitness!790 (List!59604 Int) Context!7442)

(assert (=> b!5130747 (= lt!2116613 (getWitness!790 lt!2116608 lambda!253849))))

(declare-fun e!3199957 () Bool)

(assert (=> b!5130748 (= e!3199957 e!3199960)))

(declare-fun res!2185118 () Bool)

(assert (=> b!5130748 (=> (not res!2185118) (not e!3199960))))

(declare-fun flatMap!388 ((InoxSet Context!7442) Int) (InoxSet Context!7442))

(assert (=> b!5130748 (= res!2185118 (= lt!2116606 (flatMap!388 z!1054 lambda!253847)))))

(declare-fun derivationStepZipper!892 ((InoxSet Context!7442) C!28940) (InoxSet Context!7442))

(assert (=> b!5130748 (= lt!2116606 (derivationStepZipper!892 z!1054 a!1233))))

(assert (=> b!5130749 (= e!3199959 (not e!3199961))))

(declare-fun res!2185120 () Bool)

(assert (=> b!5130749 (=> res!2185120 e!3199961)))

(assert (=> b!5130749 (= res!2185120 (not (exists!1639 lt!2116606 lambda!253849)))))

(declare-fun exists!1640 (List!59604 Int) Bool)

(assert (=> b!5130749 (exists!1640 lt!2116608 lambda!253849)))

(declare-fun lt!2116612 () Unit!150729)

(declare-fun lemmaNotForallThenExists!375 (List!59604 Int) Unit!150729)

(assert (=> b!5130749 (= lt!2116612 (lemmaNotForallThenExists!375 lt!2116608 lambda!253848))))

(assert (=> b!5130749 (= lt!2116608 (toList!8327 lt!2116606))))

(declare-fun res!2185125 () Bool)

(assert (=> start!542396 (=> (not res!2185125) (not e!3199957))))

(assert (=> start!542396 (= res!2185125 (lostCauseZipper!1181 z!1054))))

(assert (=> start!542396 e!3199957))

(declare-fun condSetEmpty!31052 () Bool)

(assert (=> start!542396 (= condSetEmpty!31052 (= z!1054 ((as const (Array Context!7442 Bool)) false)))))

(assert (=> start!542396 setRes!31052))

(declare-fun tp_is_empty!37847 () Bool)

(assert (=> start!542396 tp_is_empty!37847))

(declare-fun b!5130746 () Bool)

(assert (=> b!5130746 (= e!3199958 e!3199963)))

(declare-fun res!2185124 () Bool)

(assert (=> b!5130746 (=> res!2185124 e!3199963)))

(assert (=> b!5130746 (= res!2185124 (not (select z!1054 lt!2116611)))))

(declare-fun getWitness!791 ((InoxSet Context!7442) Int) Context!7442)

(assert (=> b!5130746 (= lt!2116611 (getWitness!791 z!1054 lambda!253850))))

(assert (= (and start!542396 res!2185125) b!5130748))

(assert (= (and b!5130748 res!2185118) b!5130738))

(assert (= (and b!5130738 res!2185115) b!5130745))

(assert (= (and b!5130745 res!2185123) b!5130742))

(assert (= (and b!5130742 res!2185122) b!5130741))

(assert (= (and b!5130741 res!2185126) b!5130749))

(assert (= (and b!5130749 (not res!2185120)) b!5130747))

(assert (= (and b!5130747 (not res!2185121)) b!5130744))

(assert (= (and b!5130744 (not res!2185119)) b!5130737))

(assert (= (and b!5130737 (not res!2185117)) b!5130746))

(assert (= (and b!5130746 (not res!2185124)) b!5130739))

(assert (= (and b!5130739 (not res!2185116)) b!5130743))

(assert (= (and start!542396 condSetEmpty!31052) setIsEmpty!31052))

(assert (= (and start!542396 (not condSetEmpty!31052)) setNonEmpty!31052))

(assert (= setNonEmpty!31052 b!5130740))

(declare-fun m!6195560 () Bool)

(assert (=> b!5130749 m!6195560))

(declare-fun m!6195562 () Bool)

(assert (=> b!5130749 m!6195562))

(declare-fun m!6195564 () Bool)

(assert (=> b!5130749 m!6195564))

(declare-fun m!6195566 () Bool)

(assert (=> b!5130749 m!6195566))

(declare-fun m!6195568 () Bool)

(assert (=> setNonEmpty!31052 m!6195568))

(declare-fun m!6195570 () Bool)

(assert (=> b!5130741 m!6195570))

(declare-fun m!6195572 () Bool)

(assert (=> start!542396 m!6195572))

(declare-fun m!6195574 () Bool)

(assert (=> b!5130746 m!6195574))

(declare-fun m!6195576 () Bool)

(assert (=> b!5130746 m!6195576))

(declare-fun m!6195578 () Bool)

(assert (=> b!5130739 m!6195578))

(declare-fun m!6195580 () Bool)

(assert (=> b!5130739 m!6195580))

(declare-fun m!6195582 () Bool)

(assert (=> b!5130737 m!6195582))

(assert (=> b!5130737 m!6195582))

(declare-fun m!6195584 () Bool)

(assert (=> b!5130737 m!6195584))

(declare-fun m!6195586 () Bool)

(assert (=> b!5130747 m!6195586))

(declare-fun m!6195588 () Bool)

(assert (=> b!5130747 m!6195588))

(declare-fun m!6195590 () Bool)

(assert (=> b!5130745 m!6195590))

(declare-fun m!6195592 () Bool)

(assert (=> b!5130743 m!6195592))

(declare-fun m!6195594 () Bool)

(assert (=> b!5130743 m!6195594))

(assert (=> b!5130743 m!6195594))

(declare-fun m!6195596 () Bool)

(assert (=> b!5130743 m!6195596))

(assert (=> b!5130738 m!6195570))

(declare-fun m!6195598 () Bool)

(assert (=> b!5130738 m!6195598))

(declare-fun m!6195600 () Bool)

(assert (=> b!5130748 m!6195600))

(declare-fun m!6195602 () Bool)

(assert (=> b!5130748 m!6195602))

(declare-fun m!6195604 () Bool)

(assert (=> b!5130744 m!6195604))

(check-sat (not b!5130743) (not b!5130744) (not b!5130747) (not b!5130738) (not b!5130745) (not b!5130748) (not setNonEmpty!31052) (not b!5130737) (not b!5130739) (not b!5130746) (not b!5130741) (not b!5130749) (not b!5130740) tp_is_empty!37847 (not start!542396))
(check-sat)
