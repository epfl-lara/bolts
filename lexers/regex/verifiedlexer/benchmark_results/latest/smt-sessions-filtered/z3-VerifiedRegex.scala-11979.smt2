; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!671206 () Bool)

(assert start!671206)

(declare-fun b!6987192 () Bool)

(assert (=> b!6987192 true))

(declare-fun b!6987195 () Bool)

(assert (=> b!6987195 true))

(declare-fun b!6987201 () Bool)

(assert (=> b!6987201 true))

(declare-fun b!6987187 () Bool)

(declare-fun e!4199582 () Bool)

(declare-fun e!4199579 () Bool)

(assert (=> b!6987187 (= e!4199582 e!4199579)))

(declare-fun res!2849327 () Bool)

(assert (=> b!6987187 (=> res!2849327 e!4199579)))

(declare-datatypes ((C!34680 0))(
  ( (C!34681 (val!27042 Int)) )
))
(declare-datatypes ((Regex!17205 0))(
  ( (ElementMatch!17205 (c!1295749 C!34680)) (Concat!26050 (regOne!34922 Regex!17205) (regTwo!34922 Regex!17205)) (EmptyExpr!17205) (Star!17205 (reg!17534 Regex!17205)) (EmptyLang!17205) (Union!17205 (regOne!34923 Regex!17205) (regTwo!34923 Regex!17205)) )
))
(declare-datatypes ((List!67160 0))(
  ( (Nil!67036) (Cons!67036 (h!73484 Regex!17205) (t!380907 List!67160)) )
))
(declare-datatypes ((Context!12402 0))(
  ( (Context!12403 (exprs!6701 List!67160)) )
))
(declare-fun lt!2485001 () Context!12402)

(declare-fun nullable!6965 (Regex!17205) Bool)

(assert (=> b!6987187 (= res!2849327 (not (nullable!6965 (h!73484 (exprs!6701 lt!2485001)))))))

(declare-fun lt!2485000 () List!67160)

(declare-fun tail!13205 (List!67160) List!67160)

(assert (=> b!6987187 (= lt!2485000 (tail!13205 (exprs!6701 lt!2485001)))))

(declare-fun b!6987189 () Bool)

(declare-fun e!4199581 () Bool)

(assert (=> b!6987189 (= e!4199581 true)))

(declare-fun ct2!306 () Context!12402)

(declare-fun lambda!400741 () Int)

(declare-datatypes ((Unit!161065 0))(
  ( (Unit!161066) )
))
(declare-fun lt!2484984 () Unit!161065)

(declare-fun lemmaConcatPreservesForall!541 (List!67160 List!67160 Int) Unit!161065)

(assert (=> b!6987189 (= lt!2484984 (lemmaConcatPreservesForall!541 lt!2485000 (exprs!6701 ct2!306) lambda!400741))))

(declare-fun lt!2485009 () Unit!161065)

(assert (=> b!6987189 (= lt!2485009 (lemmaConcatPreservesForall!541 lt!2485000 (exprs!6701 ct2!306) lambda!400741))))

(declare-fun b!6987190 () Bool)

(declare-fun res!2849337 () Bool)

(declare-fun e!4199572 () Bool)

(assert (=> b!6987190 (=> res!2849337 e!4199572)))

(declare-fun lt!2484998 () Bool)

(assert (=> b!6987190 (= res!2849337 (not lt!2484998))))

(declare-fun b!6987191 () Bool)

(assert (=> b!6987191 (= e!4199572 e!4199581)))

(declare-fun res!2849326 () Bool)

(assert (=> b!6987191 (=> res!2849326 e!4199581)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2485012 () (InoxSet Context!12402))

(declare-datatypes ((List!67161 0))(
  ( (Nil!67037) (Cons!67037 (h!73485 C!34680) (t!380908 List!67161)) )
))
(declare-fun s!7408 () List!67161)

(declare-fun matchZipper!2745 ((InoxSet Context!12402) List!67161) Bool)

(assert (=> b!6987191 (= res!2849326 (not (matchZipper!2745 lt!2485012 (t!380908 s!7408))))))

(declare-fun lt!2484996 () Unit!161065)

(assert (=> b!6987191 (= lt!2484996 (lemmaConcatPreservesForall!541 lt!2485000 (exprs!6701 ct2!306) lambda!400741))))

(declare-fun e!4199570 () Bool)

(declare-fun e!4199574 () Bool)

(assert (=> b!6987192 (= e!4199570 (not e!4199574))))

(declare-fun res!2849335 () Bool)

(assert (=> b!6987192 (=> res!2849335 e!4199574)))

(declare-fun lt!2485010 () (InoxSet Context!12402))

(assert (=> b!6987192 (= res!2849335 (not (matchZipper!2745 lt!2485010 s!7408)))))

(declare-fun lt!2484992 () Context!12402)

(assert (=> b!6987192 (= lt!2485010 (store ((as const (Array Context!12402 Bool)) false) lt!2484992 true))))

(declare-fun lt!2484997 () (InoxSet Context!12402))

(declare-fun lambda!400739 () Int)

(declare-fun getWitness!1096 ((InoxSet Context!12402) Int) Context!12402)

(assert (=> b!6987192 (= lt!2484992 (getWitness!1096 lt!2484997 lambda!400739))))

(declare-datatypes ((List!67162 0))(
  ( (Nil!67038) (Cons!67038 (h!73486 Context!12402) (t!380909 List!67162)) )
))
(declare-fun lt!2485002 () List!67162)

(declare-fun exists!2985 (List!67162 Int) Bool)

(assert (=> b!6987192 (exists!2985 lt!2485002 lambda!400739)))

(declare-fun lt!2485003 () Unit!161065)

(declare-fun lemmaZipperMatchesExistsMatchingContext!174 (List!67162 List!67161) Unit!161065)

(assert (=> b!6987192 (= lt!2485003 (lemmaZipperMatchesExistsMatchingContext!174 lt!2485002 s!7408))))

(declare-fun toList!10565 ((InoxSet Context!12402)) List!67162)

(assert (=> b!6987192 (= lt!2485002 (toList!10565 lt!2484997))))

(declare-fun b!6987193 () Bool)

(declare-fun e!4199575 () Bool)

(declare-fun tp!1929320 () Bool)

(assert (=> b!6987193 (= e!4199575 tp!1929320)))

(declare-fun b!6987194 () Bool)

(declare-fun e!4199578 () Bool)

(declare-fun tp!1929319 () Bool)

(assert (=> b!6987194 (= e!4199578 tp!1929319)))

(declare-fun e!4199576 () Bool)

(assert (=> b!6987195 (= e!4199574 e!4199576)))

(declare-fun res!2849333 () Bool)

(assert (=> b!6987195 (=> res!2849333 e!4199576)))

(declare-fun lt!2485013 () Context!12402)

(declare-fun z1!570 () (InoxSet Context!12402))

(assert (=> b!6987195 (= res!2849333 (or (not (= lt!2485013 lt!2484992)) (not (select z1!570 lt!2485001))))))

(declare-fun ++!15150 (List!67160 List!67160) List!67160)

(assert (=> b!6987195 (= lt!2485013 (Context!12403 (++!15150 (exprs!6701 lt!2485001) (exprs!6701 ct2!306))))))

(declare-fun lt!2484994 () Unit!161065)

(assert (=> b!6987195 (= lt!2484994 (lemmaConcatPreservesForall!541 (exprs!6701 lt!2485001) (exprs!6701 ct2!306) lambda!400741))))

(declare-fun lambda!400740 () Int)

(declare-fun mapPost2!60 ((InoxSet Context!12402) Int Context!12402) Context!12402)

(assert (=> b!6987195 (= lt!2485001 (mapPost2!60 z1!570 lambda!400740 lt!2484992))))

(declare-fun setNonEmpty!47733 () Bool)

(declare-fun setElem!47733 () Context!12402)

(declare-fun tp!1929318 () Bool)

(declare-fun setRes!47733 () Bool)

(declare-fun inv!85871 (Context!12402) Bool)

(assert (=> setNonEmpty!47733 (= setRes!47733 (and tp!1929318 (inv!85871 setElem!47733) e!4199575))))

(declare-fun setRest!47733 () (InoxSet Context!12402))

(assert (=> setNonEmpty!47733 (= z1!570 ((_ map or) (store ((as const (Array Context!12402 Bool)) false) setElem!47733 true) setRest!47733))))

(declare-fun b!6987196 () Bool)

(declare-fun res!2849336 () Bool)

(assert (=> b!6987196 (=> (not res!2849336) (not e!4199570))))

(get-info :version)

(assert (=> b!6987196 (= res!2849336 ((_ is Cons!67037) s!7408))))

(declare-fun b!6987197 () Bool)

(declare-fun res!2849322 () Bool)

(assert (=> b!6987197 (=> res!2849322 e!4199582)))

(declare-fun isEmpty!39129 (List!67160) Bool)

(assert (=> b!6987197 (= res!2849322 (isEmpty!39129 (exprs!6701 lt!2485001)))))

(declare-fun b!6987188 () Bool)

(declare-fun e!4199580 () Bool)

(declare-fun tp_is_empty!43635 () Bool)

(declare-fun tp!1929317 () Bool)

(assert (=> b!6987188 (= e!4199580 (and tp_is_empty!43635 tp!1929317))))

(declare-fun res!2849328 () Bool)

(assert (=> start!671206 (=> (not res!2849328) (not e!4199570))))

(assert (=> start!671206 (= res!2849328 (matchZipper!2745 lt!2484997 s!7408))))

(declare-fun appendTo!326 ((InoxSet Context!12402) Context!12402) (InoxSet Context!12402))

(assert (=> start!671206 (= lt!2484997 (appendTo!326 z1!570 ct2!306))))

(assert (=> start!671206 e!4199570))

(declare-fun condSetEmpty!47733 () Bool)

(assert (=> start!671206 (= condSetEmpty!47733 (= z1!570 ((as const (Array Context!12402 Bool)) false)))))

(assert (=> start!671206 setRes!47733))

(assert (=> start!671206 (and (inv!85871 ct2!306) e!4199578)))

(assert (=> start!671206 e!4199580))

(declare-fun b!6987198 () Bool)

(declare-fun e!4199573 () Bool)

(assert (=> b!6987198 (= e!4199576 e!4199573)))

(declare-fun res!2849323 () Bool)

(assert (=> b!6987198 (=> res!2849323 e!4199573)))

(declare-fun lt!2485008 () (InoxSet Context!12402))

(assert (=> b!6987198 (= res!2849323 (not (= lt!2485008 lt!2485010)))))

(assert (=> b!6987198 (= lt!2485008 (store ((as const (Array Context!12402 Bool)) false) lt!2485013 true))))

(declare-fun lt!2484989 () Unit!161065)

(assert (=> b!6987198 (= lt!2484989 (lemmaConcatPreservesForall!541 (exprs!6701 lt!2485001) (exprs!6701 ct2!306) lambda!400741))))

(declare-fun b!6987199 () Bool)

(declare-fun e!4199571 () Bool)

(assert (=> b!6987199 (= e!4199571 (not (matchZipper!2745 lt!2485012 (t!380908 s!7408))))))

(declare-fun lt!2484986 () Unit!161065)

(assert (=> b!6987199 (= lt!2484986 (lemmaConcatPreservesForall!541 lt!2485000 (exprs!6701 ct2!306) lambda!400741))))

(declare-fun b!6987200 () Bool)

(declare-fun res!2849331 () Bool)

(assert (=> b!6987200 (=> res!2849331 e!4199582)))

(assert (=> b!6987200 (= res!2849331 (not ((_ is Cons!67036) (exprs!6701 lt!2485001))))))

(assert (=> b!6987201 (= e!4199573 e!4199582)))

(declare-fun res!2849330 () Bool)

(assert (=> b!6987201 (=> res!2849330 e!4199582)))

(declare-fun lt!2484988 () (InoxSet Context!12402))

(declare-fun derivationStepZipper!2685 ((InoxSet Context!12402) C!34680) (InoxSet Context!12402))

(assert (=> b!6987201 (= res!2849330 (not (= (derivationStepZipper!2685 lt!2485008 (h!73485 s!7408)) lt!2484988)))))

(declare-fun lambda!400742 () Int)

(declare-fun flatMap!2191 ((InoxSet Context!12402) Int) (InoxSet Context!12402))

(declare-fun derivationStepZipperUp!1855 (Context!12402 C!34680) (InoxSet Context!12402))

(assert (=> b!6987201 (= (flatMap!2191 lt!2485008 lambda!400742) (derivationStepZipperUp!1855 lt!2485013 (h!73485 s!7408)))))

(declare-fun lt!2484995 () Unit!161065)

(declare-fun lemmaFlatMapOnSingletonSet!1706 ((InoxSet Context!12402) Context!12402 Int) Unit!161065)

(assert (=> b!6987201 (= lt!2484995 (lemmaFlatMapOnSingletonSet!1706 lt!2485008 lt!2485013 lambda!400742))))

(assert (=> b!6987201 (= lt!2484988 (derivationStepZipperUp!1855 lt!2485013 (h!73485 s!7408)))))

(declare-fun lt!2485006 () Unit!161065)

(assert (=> b!6987201 (= lt!2485006 (lemmaConcatPreservesForall!541 (exprs!6701 lt!2485001) (exprs!6701 ct2!306) lambda!400741))))

(declare-fun b!6987202 () Bool)

(declare-fun e!4199577 () Bool)

(assert (=> b!6987202 (= e!4199577 e!4199572)))

(declare-fun res!2849329 () Bool)

(assert (=> b!6987202 (=> res!2849329 e!4199572)))

(assert (=> b!6987202 (= res!2849329 e!4199571)))

(declare-fun res!2849325 () Bool)

(assert (=> b!6987202 (=> (not res!2849325) (not e!4199571))))

(declare-fun lt!2484990 () Bool)

(assert (=> b!6987202 (= res!2849325 (not (= lt!2484998 lt!2484990)))))

(assert (=> b!6987202 (= lt!2484998 (matchZipper!2745 lt!2484988 (t!380908 s!7408)))))

(declare-fun lt!2484999 () Unit!161065)

(assert (=> b!6987202 (= lt!2484999 (lemmaConcatPreservesForall!541 lt!2485000 (exprs!6701 ct2!306) lambda!400741))))

(declare-fun lt!2484993 () (InoxSet Context!12402))

(declare-fun e!4199583 () Bool)

(assert (=> b!6987202 (= (matchZipper!2745 lt!2484993 (t!380908 s!7408)) e!4199583)))

(declare-fun res!2849332 () Bool)

(assert (=> b!6987202 (=> res!2849332 e!4199583)))

(assert (=> b!6987202 (= res!2849332 lt!2484990)))

(declare-fun lt!2484991 () (InoxSet Context!12402))

(assert (=> b!6987202 (= lt!2484990 (matchZipper!2745 lt!2484991 (t!380908 s!7408)))))

(declare-fun lt!2485011 () Unit!161065)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1378 ((InoxSet Context!12402) (InoxSet Context!12402) List!67161) Unit!161065)

(assert (=> b!6987202 (= lt!2485011 (lemmaZipperConcatMatchesSameAsBothZippers!1378 lt!2484991 lt!2485012 (t!380908 s!7408)))))

(declare-fun lt!2485004 () Unit!161065)

(assert (=> b!6987202 (= lt!2485004 (lemmaConcatPreservesForall!541 lt!2485000 (exprs!6701 ct2!306) lambda!400741))))

(declare-fun lt!2485007 () Unit!161065)

(assert (=> b!6987202 (= lt!2485007 (lemmaConcatPreservesForall!541 lt!2485000 (exprs!6701 ct2!306) lambda!400741))))

(declare-fun b!6987203 () Bool)

(declare-fun res!2849334 () Bool)

(assert (=> b!6987203 (=> res!2849334 e!4199574)))

(assert (=> b!6987203 (= res!2849334 (not (select lt!2484997 lt!2484992)))))

(declare-fun b!6987204 () Bool)

(assert (=> b!6987204 (= e!4199583 (matchZipper!2745 lt!2485012 (t!380908 s!7408)))))

(declare-fun b!6987205 () Bool)

(assert (=> b!6987205 (= e!4199579 e!4199577)))

(declare-fun res!2849324 () Bool)

(assert (=> b!6987205 (=> res!2849324 e!4199577)))

(assert (=> b!6987205 (= res!2849324 (not (= lt!2484988 lt!2484993)))))

(assert (=> b!6987205 (= lt!2484993 ((_ map or) lt!2484991 lt!2485012))))

(declare-fun lt!2484985 () Context!12402)

(assert (=> b!6987205 (= lt!2485012 (derivationStepZipperUp!1855 lt!2484985 (h!73485 s!7408)))))

(declare-fun derivationStepZipperDown!1923 (Regex!17205 Context!12402 C!34680) (InoxSet Context!12402))

(assert (=> b!6987205 (= lt!2484991 (derivationStepZipperDown!1923 (h!73484 (exprs!6701 lt!2485001)) lt!2484985 (h!73485 s!7408)))))

(assert (=> b!6987205 (= lt!2484985 (Context!12403 (++!15150 lt!2485000 (exprs!6701 ct2!306))))))

(declare-fun lt!2484987 () Unit!161065)

(assert (=> b!6987205 (= lt!2484987 (lemmaConcatPreservesForall!541 lt!2485000 (exprs!6701 ct2!306) lambda!400741))))

(declare-fun lt!2485005 () Unit!161065)

(assert (=> b!6987205 (= lt!2485005 (lemmaConcatPreservesForall!541 lt!2485000 (exprs!6701 ct2!306) lambda!400741))))

(declare-fun setIsEmpty!47733 () Bool)

(assert (=> setIsEmpty!47733 setRes!47733))

(assert (= (and start!671206 res!2849328) b!6987196))

(assert (= (and b!6987196 res!2849336) b!6987192))

(assert (= (and b!6987192 (not res!2849335)) b!6987203))

(assert (= (and b!6987203 (not res!2849334)) b!6987195))

(assert (= (and b!6987195 (not res!2849333)) b!6987198))

(assert (= (and b!6987198 (not res!2849323)) b!6987201))

(assert (= (and b!6987201 (not res!2849330)) b!6987200))

(assert (= (and b!6987200 (not res!2849331)) b!6987197))

(assert (= (and b!6987197 (not res!2849322)) b!6987187))

(assert (= (and b!6987187 (not res!2849327)) b!6987205))

(assert (= (and b!6987205 (not res!2849324)) b!6987202))

(assert (= (and b!6987202 (not res!2849332)) b!6987204))

(assert (= (and b!6987202 res!2849325) b!6987199))

(assert (= (and b!6987202 (not res!2849329)) b!6987190))

(assert (= (and b!6987190 (not res!2849337)) b!6987191))

(assert (= (and b!6987191 (not res!2849326)) b!6987189))

(assert (= (and start!671206 condSetEmpty!47733) setIsEmpty!47733))

(assert (= (and start!671206 (not condSetEmpty!47733)) setNonEmpty!47733))

(assert (= setNonEmpty!47733 b!6987193))

(assert (= start!671206 b!6987194))

(assert (= (and start!671206 ((_ is Cons!67037) s!7408)) b!6987188))

(declare-fun m!7675126 () Bool)

(assert (=> b!6987203 m!7675126))

(declare-fun m!7675128 () Bool)

(assert (=> start!671206 m!7675128))

(declare-fun m!7675130 () Bool)

(assert (=> start!671206 m!7675130))

(declare-fun m!7675132 () Bool)

(assert (=> start!671206 m!7675132))

(declare-fun m!7675134 () Bool)

(assert (=> b!6987204 m!7675134))

(declare-fun m!7675136 () Bool)

(assert (=> b!6987187 m!7675136))

(declare-fun m!7675138 () Bool)

(assert (=> b!6987187 m!7675138))

(declare-fun m!7675140 () Bool)

(assert (=> b!6987201 m!7675140))

(declare-fun m!7675142 () Bool)

(assert (=> b!6987201 m!7675142))

(declare-fun m!7675144 () Bool)

(assert (=> b!6987201 m!7675144))

(declare-fun m!7675146 () Bool)

(assert (=> b!6987201 m!7675146))

(declare-fun m!7675148 () Bool)

(assert (=> b!6987201 m!7675148))

(declare-fun m!7675150 () Bool)

(assert (=> b!6987195 m!7675150))

(declare-fun m!7675152 () Bool)

(assert (=> b!6987195 m!7675152))

(assert (=> b!6987195 m!7675140))

(declare-fun m!7675154 () Bool)

(assert (=> b!6987195 m!7675154))

(declare-fun m!7675156 () Bool)

(assert (=> b!6987202 m!7675156))

(declare-fun m!7675158 () Bool)

(assert (=> b!6987202 m!7675158))

(declare-fun m!7675160 () Bool)

(assert (=> b!6987202 m!7675160))

(assert (=> b!6987202 m!7675158))

(declare-fun m!7675162 () Bool)

(assert (=> b!6987202 m!7675162))

(declare-fun m!7675164 () Bool)

(assert (=> b!6987202 m!7675164))

(assert (=> b!6987202 m!7675158))

(assert (=> b!6987191 m!7675134))

(assert (=> b!6987191 m!7675158))

(assert (=> b!6987189 m!7675158))

(assert (=> b!6987189 m!7675158))

(declare-fun m!7675166 () Bool)

(assert (=> b!6987197 m!7675166))

(assert (=> b!6987199 m!7675134))

(assert (=> b!6987199 m!7675158))

(assert (=> b!6987205 m!7675158))

(declare-fun m!7675168 () Bool)

(assert (=> b!6987205 m!7675168))

(declare-fun m!7675170 () Bool)

(assert (=> b!6987205 m!7675170))

(declare-fun m!7675172 () Bool)

(assert (=> b!6987205 m!7675172))

(assert (=> b!6987205 m!7675158))

(declare-fun m!7675174 () Bool)

(assert (=> b!6987192 m!7675174))

(declare-fun m!7675176 () Bool)

(assert (=> b!6987192 m!7675176))

(declare-fun m!7675178 () Bool)

(assert (=> b!6987192 m!7675178))

(declare-fun m!7675180 () Bool)

(assert (=> b!6987192 m!7675180))

(declare-fun m!7675182 () Bool)

(assert (=> b!6987192 m!7675182))

(declare-fun m!7675184 () Bool)

(assert (=> b!6987192 m!7675184))

(declare-fun m!7675186 () Bool)

(assert (=> b!6987198 m!7675186))

(assert (=> b!6987198 m!7675140))

(declare-fun m!7675188 () Bool)

(assert (=> setNonEmpty!47733 m!7675188))

(check-sat (not b!6987198) (not b!6987202) (not b!6987199) (not b!6987189) (not b!6987192) (not b!6987193) (not b!6987205) (not b!6987197) (not setNonEmpty!47733) tp_is_empty!43635 (not b!6987194) (not b!6987191) (not b!6987187) (not start!671206) (not b!6987188) (not b!6987201) (not b!6987195) (not b!6987204))
(check-sat)
