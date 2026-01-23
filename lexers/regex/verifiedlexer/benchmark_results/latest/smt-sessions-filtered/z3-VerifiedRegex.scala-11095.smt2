; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!573798 () Bool)

(assert start!573798)

(declare-fun b!5489152 () Bool)

(assert (=> b!5489152 true))

(declare-fun b!5489158 () Bool)

(assert (=> b!5489158 true))

(declare-fun bs!1267158 () Bool)

(declare-fun b!5489164 () Bool)

(assert (= bs!1267158 (and b!5489164 b!5489152)))

(declare-fun lambda!293771 () Int)

(declare-fun lambda!293769 () Int)

(assert (=> bs!1267158 (not (= lambda!293771 lambda!293769))))

(declare-fun b!5489148 () Bool)

(declare-fun res!2341106 () Bool)

(declare-fun e!3396516 () Bool)

(assert (=> b!5489148 (=> res!2341106 e!3396516)))

(declare-datatypes ((C!31144 0))(
  ( (C!31145 (val!25274 Int)) )
))
(declare-datatypes ((Regex!15437 0))(
  ( (ElementMatch!15437 (c!958617 C!31144)) (Concat!24282 (regOne!31386 Regex!15437) (regTwo!31386 Regex!15437)) (EmptyExpr!15437) (Star!15437 (reg!15766 Regex!15437)) (EmptyLang!15437) (Union!15437 (regOne!31387 Regex!15437) (regTwo!31387 Regex!15437)) )
))
(declare-datatypes ((List!62610 0))(
  ( (Nil!62486) (Cons!62486 (h!68934 Regex!15437) (t!375841 List!62610)) )
))
(declare-datatypes ((Context!9642 0))(
  ( (Context!9643 (exprs!5321 List!62610)) )
))
(declare-datatypes ((List!62611 0))(
  ( (Nil!62487) (Cons!62487 (h!68935 Context!9642) (t!375842 List!62611)) )
))
(declare-fun zl!343 () List!62611)

(declare-datatypes ((List!62612 0))(
  ( (Nil!62488) (Cons!62488 (h!68936 C!31144) (t!375843 List!62612)) )
))
(declare-fun s!2326 () List!62612)

(get-info :version)

(assert (=> b!5489148 (= res!2341106 (or (not ((_ is Cons!62487) zl!343)) ((_ is Nil!62488) s!2326) (not (= zl!343 (Cons!62487 (h!68935 zl!343) (t!375842 zl!343))))))))

(declare-fun b!5489149 () Bool)

(declare-fun e!3396518 () Bool)

(declare-fun tp!1508941 () Bool)

(declare-fun tp!1508944 () Bool)

(assert (=> b!5489149 (= e!3396518 (and tp!1508941 tp!1508944))))

(declare-fun res!2341108 () Bool)

(declare-fun e!3396517 () Bool)

(assert (=> start!573798 (=> (not res!2341108) (not e!3396517))))

(declare-fun r!7292 () Regex!15437)

(declare-fun validRegex!7173 (Regex!15437) Bool)

(assert (=> start!573798 (= res!2341108 (validRegex!7173 r!7292))))

(assert (=> start!573798 e!3396517))

(assert (=> start!573798 e!3396518))

(declare-fun condSetEmpty!36279 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!9642))

(assert (=> start!573798 (= condSetEmpty!36279 (= z!1189 ((as const (Array Context!9642 Bool)) false)))))

(declare-fun setRes!36279 () Bool)

(assert (=> start!573798 setRes!36279))

(declare-fun e!3396521 () Bool)

(assert (=> start!573798 e!3396521))

(declare-fun e!3396520 () Bool)

(assert (=> start!573798 e!3396520))

(declare-fun b!5489150 () Bool)

(declare-fun e!3396524 () Bool)

(declare-fun tp!1508940 () Bool)

(declare-fun inv!81839 (Context!9642) Bool)

(assert (=> b!5489150 (= e!3396521 (and (inv!81839 (h!68935 zl!343)) e!3396524 tp!1508940))))

(declare-fun b!5489151 () Bool)

(declare-fun tp_is_empty!40127 () Bool)

(declare-fun tp!1508942 () Bool)

(assert (=> b!5489151 (= e!3396520 (and tp_is_empty!40127 tp!1508942))))

(declare-fun e!3396526 () Bool)

(assert (=> b!5489152 (= e!3396516 e!3396526)))

(declare-fun res!2341107 () Bool)

(assert (=> b!5489152 (=> res!2341107 e!3396526)))

(declare-fun lt!2241812 () Bool)

(assert (=> b!5489152 (= res!2341107 lt!2241812)))

(declare-fun lt!2241809 () List!62610)

(declare-fun exists!2098 (List!62610 Int) Bool)

(assert (=> b!5489152 (= lt!2241812 (exists!2098 lt!2241809 lambda!293769))))

(declare-datatypes ((Unit!155330 0))(
  ( (Unit!155331) )
))
(declare-fun lt!2241808 () Unit!155330)

(declare-fun matchRGenUnionSpec!270 (Regex!15437 List!62610 List!62612) Unit!155330)

(assert (=> b!5489152 (= lt!2241808 (matchRGenUnionSpec!270 r!7292 lt!2241809 s!2326))))

(declare-fun unfocusZipperList!869 (List!62611) List!62610)

(assert (=> b!5489152 (= lt!2241809 (unfocusZipperList!869 zl!343))))

(declare-fun b!5489153 () Bool)

(declare-fun res!2341103 () Bool)

(declare-fun e!3396525 () Bool)

(assert (=> b!5489153 (=> res!2341103 e!3396525)))

(declare-fun lt!2241806 () Context!9642)

(declare-fun contains!19753 (List!62611 Context!9642) Bool)

(assert (=> b!5489153 (= res!2341103 (not (contains!19753 zl!343 lt!2241806)))))

(declare-fun b!5489154 () Bool)

(declare-fun e!3396523 () Bool)

(declare-fun tp!1508943 () Bool)

(assert (=> b!5489154 (= e!3396523 tp!1508943)))

(declare-fun b!5489155 () Bool)

(declare-fun tp!1508947 () Bool)

(declare-fun tp!1508948 () Bool)

(assert (=> b!5489155 (= e!3396518 (and tp!1508947 tp!1508948))))

(declare-fun b!5489156 () Bool)

(declare-fun tp!1508949 () Bool)

(assert (=> b!5489156 (= e!3396524 tp!1508949)))

(declare-fun b!5489157 () Bool)

(declare-fun res!2341102 () Bool)

(assert (=> b!5489157 (=> res!2341102 e!3396516)))

(declare-fun isEmpty!34327 (List!62611) Bool)

(assert (=> b!5489157 (= res!2341102 (isEmpty!34327 (t!375842 zl!343)))))

(declare-fun e!3396522 () Bool)

(assert (=> b!5489158 (= e!3396526 e!3396522)))

(declare-fun res!2341114 () Bool)

(assert (=> b!5489158 (=> res!2341114 e!3396522)))

(declare-fun lambda!293770 () Int)

(declare-fun exists!2099 (List!62611 Int) Bool)

(assert (=> b!5489158 (= res!2341114 (not (exists!2099 zl!343 lambda!293770)))))

(assert (=> b!5489158 (exists!2099 zl!343 lambda!293770)))

(declare-fun lt!2241811 () Unit!155330)

(declare-fun lemmaZipperMatchesExistsMatchingContext!64 (List!62611 List!62612) Unit!155330)

(assert (=> b!5489158 (= lt!2241811 (lemmaZipperMatchesExistsMatchingContext!64 zl!343 s!2326))))

(declare-fun b!5489159 () Bool)

(declare-fun e!3396519 () Bool)

(assert (=> b!5489159 (= e!3396519 (isEmpty!34327 (t!375842 zl!343)))))

(declare-fun setNonEmpty!36279 () Bool)

(declare-fun setElem!36279 () Context!9642)

(declare-fun tp!1508946 () Bool)

(assert (=> setNonEmpty!36279 (= setRes!36279 (and tp!1508946 (inv!81839 setElem!36279) e!3396523))))

(declare-fun setRest!36279 () (InoxSet Context!9642))

(assert (=> setNonEmpty!36279 (= z!1189 ((_ map or) (store ((as const (Array Context!9642 Bool)) false) setElem!36279 true) setRest!36279))))

(declare-fun b!5489160 () Bool)

(declare-fun res!2341104 () Bool)

(assert (=> b!5489160 (=> res!2341104 e!3396526)))

(declare-fun matchZipper!1621 ((InoxSet Context!9642) List!62612) Bool)

(assert (=> b!5489160 (= res!2341104 (not (matchZipper!1621 z!1189 s!2326)))))

(declare-fun b!5489161 () Bool)

(declare-fun tp!1508945 () Bool)

(assert (=> b!5489161 (= e!3396518 tp!1508945)))

(declare-fun b!5489162 () Bool)

(declare-fun res!2341105 () Bool)

(assert (=> b!5489162 (=> res!2341105 e!3396526)))

(assert (=> b!5489162 (= res!2341105 (exists!2098 lt!2241809 lambda!293769))))

(declare-fun b!5489163 () Bool)

(assert (=> b!5489163 (= e!3396525 true)))

(declare-fun lt!2241810 () Int)

(declare-fun size!39927 (List!62611) Int)

(assert (=> b!5489163 (= lt!2241810 (size!39927 zl!343))))

(assert (=> b!5489164 (= e!3396522 e!3396525)))

(declare-fun res!2341110 () Bool)

(assert (=> b!5489164 (=> res!2341110 e!3396525)))

(declare-fun forall!14634 (List!62610 Int) Bool)

(assert (=> b!5489164 (= res!2341110 (not (forall!14634 (exprs!5321 lt!2241806) lambda!293771)))))

(assert (=> b!5489164 (forall!14634 (exprs!5321 lt!2241806) lambda!293771)))

(declare-fun lt!2241813 () Unit!155330)

(declare-fun lemmaContextForallValidExprs!42 (Context!9642 List!62610) Unit!155330)

(assert (=> b!5489164 (= lt!2241813 (lemmaContextForallValidExprs!42 lt!2241806 (exprs!5321 lt!2241806)))))

(declare-fun getWitness!898 (List!62611 Int) Context!9642)

(assert (=> b!5489164 (= lt!2241806 (getWitness!898 zl!343 lambda!293770))))

(declare-fun b!5489165 () Bool)

(declare-fun res!2341113 () Bool)

(assert (=> b!5489165 (=> (not res!2341113) (not e!3396517))))

(declare-fun toList!9221 ((InoxSet Context!9642)) List!62611)

(assert (=> b!5489165 (= res!2341113 (= (toList!9221 z!1189) zl!343))))

(declare-fun b!5489166 () Bool)

(assert (=> b!5489166 (= e!3396518 tp_is_empty!40127)))

(declare-fun b!5489167 () Bool)

(declare-fun res!2341111 () Bool)

(assert (=> b!5489167 (=> (not res!2341111) (not e!3396517))))

(declare-fun unfocusZipper!1179 (List!62611) Regex!15437)

(assert (=> b!5489167 (= res!2341111 (= r!7292 (unfocusZipper!1179 zl!343)))))

(declare-fun setIsEmpty!36279 () Bool)

(assert (=> setIsEmpty!36279 setRes!36279))

(declare-fun b!5489168 () Bool)

(assert (=> b!5489168 (= e!3396517 (not e!3396516))))

(declare-fun res!2341109 () Bool)

(assert (=> b!5489168 (=> res!2341109 e!3396516)))

(assert (=> b!5489168 (= res!2341109 e!3396519)))

(declare-fun res!2341112 () Bool)

(assert (=> b!5489168 (=> (not res!2341112) (not e!3396519))))

(assert (=> b!5489168 (= res!2341112 ((_ is Cons!62487) zl!343))))

(declare-fun matchRSpec!2540 (Regex!15437 List!62612) Bool)

(assert (=> b!5489168 (= lt!2241812 (matchRSpec!2540 r!7292 s!2326))))

(declare-fun matchR!7622 (Regex!15437 List!62612) Bool)

(assert (=> b!5489168 (= lt!2241812 (matchR!7622 r!7292 s!2326))))

(declare-fun lt!2241807 () Unit!155330)

(declare-fun mainMatchTheorem!2540 (Regex!15437 List!62612) Unit!155330)

(assert (=> b!5489168 (= lt!2241807 (mainMatchTheorem!2540 r!7292 s!2326))))

(assert (= (and start!573798 res!2341108) b!5489165))

(assert (= (and b!5489165 res!2341113) b!5489167))

(assert (= (and b!5489167 res!2341111) b!5489168))

(assert (= (and b!5489168 res!2341112) b!5489159))

(assert (= (and b!5489168 (not res!2341109)) b!5489148))

(assert (= (and b!5489148 (not res!2341106)) b!5489157))

(assert (= (and b!5489157 (not res!2341102)) b!5489152))

(assert (= (and b!5489152 (not res!2341107)) b!5489162))

(assert (= (and b!5489162 (not res!2341105)) b!5489160))

(assert (= (and b!5489160 (not res!2341104)) b!5489158))

(assert (= (and b!5489158 (not res!2341114)) b!5489164))

(assert (= (and b!5489164 (not res!2341110)) b!5489153))

(assert (= (and b!5489153 (not res!2341103)) b!5489163))

(assert (= (and start!573798 ((_ is ElementMatch!15437) r!7292)) b!5489166))

(assert (= (and start!573798 ((_ is Concat!24282) r!7292)) b!5489155))

(assert (= (and start!573798 ((_ is Star!15437) r!7292)) b!5489161))

(assert (= (and start!573798 ((_ is Union!15437) r!7292)) b!5489149))

(assert (= (and start!573798 condSetEmpty!36279) setIsEmpty!36279))

(assert (= (and start!573798 (not condSetEmpty!36279)) setNonEmpty!36279))

(assert (= setNonEmpty!36279 b!5489154))

(assert (= b!5489150 b!5489156))

(assert (= (and start!573798 ((_ is Cons!62487) zl!343)) b!5489150))

(assert (= (and start!573798 ((_ is Cons!62488) s!2326)) b!5489151))

(declare-fun m!6502700 () Bool)

(assert (=> b!5489165 m!6502700))

(declare-fun m!6502702 () Bool)

(assert (=> b!5489164 m!6502702))

(assert (=> b!5489164 m!6502702))

(declare-fun m!6502704 () Bool)

(assert (=> b!5489164 m!6502704))

(declare-fun m!6502706 () Bool)

(assert (=> b!5489164 m!6502706))

(declare-fun m!6502708 () Bool)

(assert (=> b!5489163 m!6502708))

(declare-fun m!6502710 () Bool)

(assert (=> b!5489158 m!6502710))

(assert (=> b!5489158 m!6502710))

(declare-fun m!6502712 () Bool)

(assert (=> b!5489158 m!6502712))

(declare-fun m!6502714 () Bool)

(assert (=> b!5489150 m!6502714))

(declare-fun m!6502716 () Bool)

(assert (=> start!573798 m!6502716))

(declare-fun m!6502718 () Bool)

(assert (=> b!5489162 m!6502718))

(declare-fun m!6502720 () Bool)

(assert (=> b!5489159 m!6502720))

(declare-fun m!6502722 () Bool)

(assert (=> b!5489153 m!6502722))

(declare-fun m!6502724 () Bool)

(assert (=> b!5489168 m!6502724))

(declare-fun m!6502726 () Bool)

(assert (=> b!5489168 m!6502726))

(declare-fun m!6502728 () Bool)

(assert (=> b!5489168 m!6502728))

(declare-fun m!6502730 () Bool)

(assert (=> b!5489160 m!6502730))

(assert (=> b!5489157 m!6502720))

(declare-fun m!6502732 () Bool)

(assert (=> b!5489167 m!6502732))

(assert (=> b!5489152 m!6502718))

(declare-fun m!6502734 () Bool)

(assert (=> b!5489152 m!6502734))

(declare-fun m!6502736 () Bool)

(assert (=> b!5489152 m!6502736))

(declare-fun m!6502738 () Bool)

(assert (=> setNonEmpty!36279 m!6502738))

(check-sat (not b!5489152) (not start!573798) (not b!5489163) (not b!5489158) (not b!5489151) (not b!5489156) (not b!5489164) (not b!5489150) tp_is_empty!40127 (not b!5489165) (not b!5489162) (not b!5489167) (not b!5489161) (not b!5489153) (not b!5489168) (not b!5489155) (not b!5489159) (not b!5489149) (not setNonEmpty!36279) (not b!5489154) (not b!5489160) (not b!5489157))
(check-sat)
