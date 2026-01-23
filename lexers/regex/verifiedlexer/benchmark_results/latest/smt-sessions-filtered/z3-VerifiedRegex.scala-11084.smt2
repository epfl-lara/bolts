; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!573754 () Bool)

(assert start!573754)

(declare-fun b!5487577 () Bool)

(assert (=> b!5487577 true))

(declare-fun b!5487574 () Bool)

(assert (=> b!5487574 true))

(declare-fun b!5487568 () Bool)

(declare-fun e!3395691 () Bool)

(declare-fun e!3395682 () Bool)

(assert (=> b!5487568 (= e!3395691 (not e!3395682))))

(declare-fun res!2340172 () Bool)

(assert (=> b!5487568 (=> res!2340172 e!3395682)))

(declare-fun e!3395689 () Bool)

(assert (=> b!5487568 (= res!2340172 e!3395689)))

(declare-fun res!2340176 () Bool)

(assert (=> b!5487568 (=> (not res!2340176) (not e!3395689))))

(declare-datatypes ((C!31100 0))(
  ( (C!31101 (val!25252 Int)) )
))
(declare-datatypes ((Regex!15415 0))(
  ( (ElementMatch!15415 (c!958539 C!31100)) (Concat!24260 (regOne!31342 Regex!15415) (regTwo!31342 Regex!15415)) (EmptyExpr!15415) (Star!15415 (reg!15744 Regex!15415)) (EmptyLang!15415) (Union!15415 (regOne!31343 Regex!15415) (regTwo!31343 Regex!15415)) )
))
(declare-datatypes ((List!62544 0))(
  ( (Nil!62420) (Cons!62420 (h!68868 Regex!15415) (t!375775 List!62544)) )
))
(declare-datatypes ((Context!9598 0))(
  ( (Context!9599 (exprs!5299 List!62544)) )
))
(declare-datatypes ((List!62545 0))(
  ( (Nil!62421) (Cons!62421 (h!68869 Context!9598) (t!375776 List!62545)) )
))
(declare-fun zl!343 () List!62545)

(get-info :version)

(assert (=> b!5487568 (= res!2340176 ((_ is Cons!62421) zl!343))))

(declare-fun lt!2241183 () Bool)

(declare-fun r!7292 () Regex!15415)

(declare-datatypes ((List!62546 0))(
  ( (Nil!62422) (Cons!62422 (h!68870 C!31100) (t!375777 List!62546)) )
))
(declare-fun s!2326 () List!62546)

(declare-fun matchRSpec!2518 (Regex!15415 List!62546) Bool)

(assert (=> b!5487568 (= lt!2241183 (matchRSpec!2518 r!7292 s!2326))))

(declare-fun matchR!7600 (Regex!15415 List!62546) Bool)

(assert (=> b!5487568 (= lt!2241183 (matchR!7600 r!7292 s!2326))))

(declare-datatypes ((Unit!155286 0))(
  ( (Unit!155287) )
))
(declare-fun lt!2241180 () Unit!155286)

(declare-fun mainMatchTheorem!2518 (Regex!15415 List!62546) Unit!155286)

(assert (=> b!5487568 (= lt!2241180 (mainMatchTheorem!2518 r!7292 s!2326))))

(declare-fun b!5487569 () Bool)

(declare-fun e!3395683 () Bool)

(declare-fun tp!1508257 () Bool)

(declare-fun tp!1508255 () Bool)

(assert (=> b!5487569 (= e!3395683 (and tp!1508257 tp!1508255))))

(declare-fun b!5487570 () Bool)

(declare-fun e!3395687 () Bool)

(declare-fun tp_is_empty!40083 () Bool)

(declare-fun tp!1508259 () Bool)

(assert (=> b!5487570 (= e!3395687 (and tp_is_empty!40083 tp!1508259))))

(declare-fun b!5487571 () Bool)

(declare-fun e!3395685 () Bool)

(declare-fun tp!1508252 () Bool)

(assert (=> b!5487571 (= e!3395685 tp!1508252)))

(declare-fun b!5487572 () Bool)

(declare-fun tp!1508254 () Bool)

(declare-fun tp!1508253 () Bool)

(assert (=> b!5487572 (= e!3395683 (and tp!1508254 tp!1508253))))

(declare-fun setIsEmpty!36213 () Bool)

(declare-fun setRes!36213 () Bool)

(assert (=> setIsEmpty!36213 setRes!36213))

(declare-fun b!5487573 () Bool)

(declare-fun res!2340174 () Bool)

(assert (=> b!5487573 (=> res!2340174 e!3395682)))

(declare-fun isEmpty!34305 (List!62545) Bool)

(assert (=> b!5487573 (= res!2340174 (isEmpty!34305 (t!375776 zl!343)))))

(declare-fun e!3395692 () Bool)

(declare-fun e!3395684 () Bool)

(assert (=> b!5487574 (= e!3395692 e!3395684)))

(declare-fun res!2340168 () Bool)

(assert (=> b!5487574 (=> res!2340168 e!3395684)))

(declare-fun lambda!293479 () Int)

(declare-fun exists!2052 (List!62545 Int) Bool)

(assert (=> b!5487574 (= res!2340168 (not (exists!2052 zl!343 lambda!293479)))))

(assert (=> b!5487574 (exists!2052 zl!343 lambda!293479)))

(declare-fun lt!2241181 () Unit!155286)

(declare-fun lt!2241178 () Regex!15415)

(declare-fun lemmaUnfocusListContainsConcatThenZipperExistsCorrespondingContext!6 (List!62545 Regex!15415) Unit!155286)

(assert (=> b!5487574 (= lt!2241181 (lemmaUnfocusListContainsConcatThenZipperExistsCorrespondingContext!6 zl!343 lt!2241178))))

(declare-fun setNonEmpty!36213 () Bool)

(declare-fun tp!1508256 () Bool)

(declare-fun e!3395686 () Bool)

(declare-fun setElem!36213 () Context!9598)

(declare-fun inv!81784 (Context!9598) Bool)

(assert (=> setNonEmpty!36213 (= setRes!36213 (and tp!1508256 (inv!81784 setElem!36213) e!3395686))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!9598))

(declare-fun setRest!36213 () (InoxSet Context!9598))

(assert (=> setNonEmpty!36213 (= z!1189 ((_ map or) (store ((as const (Array Context!9598 Bool)) false) setElem!36213 true) setRest!36213))))

(declare-fun res!2340175 () Bool)

(assert (=> start!573754 (=> (not res!2340175) (not e!3395691))))

(declare-fun validRegex!7151 (Regex!15415) Bool)

(assert (=> start!573754 (= res!2340175 (validRegex!7151 r!7292))))

(assert (=> start!573754 e!3395691))

(assert (=> start!573754 e!3395683))

(declare-fun condSetEmpty!36213 () Bool)

(assert (=> start!573754 (= condSetEmpty!36213 (= z!1189 ((as const (Array Context!9598 Bool)) false)))))

(assert (=> start!573754 setRes!36213))

(declare-fun e!3395690 () Bool)

(assert (=> start!573754 e!3395690))

(assert (=> start!573754 e!3395687))

(declare-fun b!5487575 () Bool)

(assert (=> b!5487575 (= e!3395689 (isEmpty!34305 (t!375776 zl!343)))))

(declare-fun tp!1508250 () Bool)

(declare-fun b!5487576 () Bool)

(assert (=> b!5487576 (= e!3395690 (and (inv!81784 (h!68869 zl!343)) e!3395685 tp!1508250))))

(declare-fun e!3395688 () Bool)

(assert (=> b!5487577 (= e!3395682 e!3395688)))

(declare-fun res!2340166 () Bool)

(assert (=> b!5487577 (=> res!2340166 e!3395688)))

(assert (=> b!5487577 (= res!2340166 (not lt!2241183))))

(declare-fun lt!2241182 () List!62544)

(declare-fun lambda!293478 () Int)

(declare-fun exists!2053 (List!62544 Int) Bool)

(assert (=> b!5487577 (= lt!2241183 (exists!2053 lt!2241182 lambda!293478))))

(declare-fun lt!2241179 () Unit!155286)

(declare-fun matchRGenUnionSpec!248 (Regex!15415 List!62544 List!62546) Unit!155286)

(assert (=> b!5487577 (= lt!2241179 (matchRGenUnionSpec!248 r!7292 lt!2241182 s!2326))))

(declare-fun unfocusZipperList!847 (List!62545) List!62544)

(assert (=> b!5487577 (= lt!2241182 (unfocusZipperList!847 zl!343))))

(declare-fun b!5487578 () Bool)

(assert (=> b!5487578 (= e!3395684 (exists!2052 zl!343 lambda!293479))))

(declare-fun b!5487579 () Bool)

(assert (=> b!5487579 (= e!3395688 e!3395692)))

(declare-fun res!2340178 () Bool)

(assert (=> b!5487579 (=> res!2340178 e!3395692)))

(declare-fun contains!19737 (List!62544 Regex!15415) Bool)

(assert (=> b!5487579 (= res!2340178 (not (contains!19737 lt!2241182 lt!2241178)))))

(declare-fun getWitness!870 (List!62544 Int) Regex!15415)

(assert (=> b!5487579 (= lt!2241178 (getWitness!870 lt!2241182 lambda!293478))))

(declare-fun b!5487580 () Bool)

(declare-fun tp!1508258 () Bool)

(assert (=> b!5487580 (= e!3395686 tp!1508258)))

(declare-fun b!5487581 () Bool)

(declare-fun res!2340169 () Bool)

(assert (=> b!5487581 (=> res!2340169 e!3395692)))

(assert (=> b!5487581 (= res!2340169 (not (matchR!7600 lt!2241178 s!2326)))))

(declare-fun b!5487582 () Bool)

(declare-fun res!2340177 () Bool)

(assert (=> b!5487582 (=> res!2340177 e!3395682)))

(assert (=> b!5487582 (= res!2340177 (or (not ((_ is Cons!62421) zl!343)) ((_ is Nil!62422) s!2326) (not (= zl!343 (Cons!62421 (h!68869 zl!343) (t!375776 zl!343))))))))

(declare-fun b!5487583 () Bool)

(declare-fun res!2340171 () Bool)

(assert (=> b!5487583 (=> (not res!2340171) (not e!3395691))))

(declare-fun unfocusZipper!1157 (List!62545) Regex!15415)

(assert (=> b!5487583 (= res!2340171 (= r!7292 (unfocusZipper!1157 zl!343)))))

(declare-fun b!5487584 () Bool)

(declare-fun res!2340170 () Bool)

(assert (=> b!5487584 (=> res!2340170 e!3395688)))

(assert (=> b!5487584 (= res!2340170 (not (exists!2053 lt!2241182 lambda!293478)))))

(declare-fun b!5487585 () Bool)

(declare-fun res!2340173 () Bool)

(assert (=> b!5487585 (=> (not res!2340173) (not e!3395691))))

(declare-fun toList!9199 ((InoxSet Context!9598)) List!62545)

(assert (=> b!5487585 (= res!2340173 (= (toList!9199 z!1189) zl!343))))

(declare-fun b!5487586 () Bool)

(declare-fun res!2340167 () Bool)

(assert (=> b!5487586 (=> res!2340167 e!3395692)))

(assert (=> b!5487586 (= res!2340167 (not (validRegex!7151 lt!2241178)))))

(declare-fun b!5487587 () Bool)

(assert (=> b!5487587 (= e!3395683 tp_is_empty!40083)))

(declare-fun b!5487588 () Bool)

(declare-fun tp!1508251 () Bool)

(assert (=> b!5487588 (= e!3395683 tp!1508251)))

(assert (= (and start!573754 res!2340175) b!5487585))

(assert (= (and b!5487585 res!2340173) b!5487583))

(assert (= (and b!5487583 res!2340171) b!5487568))

(assert (= (and b!5487568 res!2340176) b!5487575))

(assert (= (and b!5487568 (not res!2340172)) b!5487582))

(assert (= (and b!5487582 (not res!2340177)) b!5487573))

(assert (= (and b!5487573 (not res!2340174)) b!5487577))

(assert (= (and b!5487577 (not res!2340166)) b!5487584))

(assert (= (and b!5487584 (not res!2340170)) b!5487579))

(assert (= (and b!5487579 (not res!2340178)) b!5487586))

(assert (= (and b!5487586 (not res!2340167)) b!5487581))

(assert (= (and b!5487581 (not res!2340169)) b!5487574))

(assert (= (and b!5487574 (not res!2340168)) b!5487578))

(assert (= (and start!573754 ((_ is ElementMatch!15415) r!7292)) b!5487587))

(assert (= (and start!573754 ((_ is Concat!24260) r!7292)) b!5487572))

(assert (= (and start!573754 ((_ is Star!15415) r!7292)) b!5487588))

(assert (= (and start!573754 ((_ is Union!15415) r!7292)) b!5487569))

(assert (= (and start!573754 condSetEmpty!36213) setIsEmpty!36213))

(assert (= (and start!573754 (not condSetEmpty!36213)) setNonEmpty!36213))

(assert (= setNonEmpty!36213 b!5487580))

(assert (= b!5487576 b!5487571))

(assert (= (and start!573754 ((_ is Cons!62421) zl!343)) b!5487576))

(assert (= (and start!573754 ((_ is Cons!62422) s!2326)) b!5487570))

(declare-fun m!6501732 () Bool)

(assert (=> start!573754 m!6501732))

(declare-fun m!6501734 () Bool)

(assert (=> b!5487581 m!6501734))

(declare-fun m!6501736 () Bool)

(assert (=> b!5487585 m!6501736))

(declare-fun m!6501738 () Bool)

(assert (=> b!5487575 m!6501738))

(declare-fun m!6501740 () Bool)

(assert (=> b!5487577 m!6501740))

(declare-fun m!6501742 () Bool)

(assert (=> b!5487577 m!6501742))

(declare-fun m!6501744 () Bool)

(assert (=> b!5487577 m!6501744))

(declare-fun m!6501746 () Bool)

(assert (=> b!5487576 m!6501746))

(declare-fun m!6501748 () Bool)

(assert (=> b!5487586 m!6501748))

(declare-fun m!6501750 () Bool)

(assert (=> b!5487579 m!6501750))

(declare-fun m!6501752 () Bool)

(assert (=> b!5487579 m!6501752))

(assert (=> b!5487573 m!6501738))

(declare-fun m!6501754 () Bool)

(assert (=> setNonEmpty!36213 m!6501754))

(assert (=> b!5487584 m!6501740))

(declare-fun m!6501756 () Bool)

(assert (=> b!5487578 m!6501756))

(assert (=> b!5487574 m!6501756))

(assert (=> b!5487574 m!6501756))

(declare-fun m!6501758 () Bool)

(assert (=> b!5487574 m!6501758))

(declare-fun m!6501760 () Bool)

(assert (=> b!5487568 m!6501760))

(declare-fun m!6501762 () Bool)

(assert (=> b!5487568 m!6501762))

(declare-fun m!6501764 () Bool)

(assert (=> b!5487568 m!6501764))

(declare-fun m!6501766 () Bool)

(assert (=> b!5487583 m!6501766))

(check-sat (not b!5487588) (not b!5487573) (not b!5487581) (not b!5487584) (not b!5487572) (not b!5487571) (not b!5487578) tp_is_empty!40083 (not b!5487574) (not b!5487569) (not b!5487586) (not b!5487580) (not setNonEmpty!36213) (not start!573754) (not b!5487585) (not b!5487570) (not b!5487583) (not b!5487575) (not b!5487576) (not b!5487579) (not b!5487577) (not b!5487568))
(check-sat)
