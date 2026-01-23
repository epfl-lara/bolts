; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!669168 () Bool)

(assert start!669168)

(declare-fun b!6978204 () Bool)

(assert (=> b!6978204 true))

(declare-fun b!6978208 () Bool)

(assert (=> b!6978208 true))

(declare-fun setIsEmpty!47425 () Bool)

(declare-fun setRes!47425 () Bool)

(assert (=> setIsEmpty!47425 setRes!47425))

(declare-fun b!6978199 () Bool)

(declare-fun e!4193916 () Bool)

(declare-fun tp!1927642 () Bool)

(assert (=> b!6978199 (= e!4193916 tp!1927642)))

(declare-fun b!6978200 () Bool)

(declare-fun res!2845483 () Bool)

(declare-fun e!4193918 () Bool)

(assert (=> b!6978200 (=> (not res!2845483) (not e!4193918))))

(declare-datatypes ((C!34584 0))(
  ( (C!34585 (val!26994 Int)) )
))
(declare-datatypes ((List!67016 0))(
  ( (Nil!66892) (Cons!66892 (h!73340 C!34584) (t!380759 List!67016)) )
))
(declare-fun s!7408 () List!67016)

(get-info :version)

(assert (=> b!6978200 (= res!2845483 ((_ is Cons!66892) s!7408))))

(declare-datatypes ((Regex!17157 0))(
  ( (ElementMatch!17157 (c!1293416 C!34584)) (Concat!26002 (regOne!34826 Regex!17157) (regTwo!34826 Regex!17157)) (EmptyExpr!17157) (Star!17157 (reg!17486 Regex!17157)) (EmptyLang!17157) (Union!17157 (regOne!34827 Regex!17157) (regTwo!34827 Regex!17157)) )
))
(declare-datatypes ((List!67017 0))(
  ( (Nil!66893) (Cons!66893 (h!73341 Regex!17157) (t!380760 List!67017)) )
))
(declare-datatypes ((Context!12306 0))(
  ( (Context!12307 (exprs!6653 List!67017)) )
))
(declare-fun setElem!47425 () Context!12306)

(declare-fun tp!1927644 () Bool)

(declare-fun setNonEmpty!47425 () Bool)

(declare-fun e!4193913 () Bool)

(declare-fun inv!85751 (Context!12306) Bool)

(assert (=> setNonEmpty!47425 (= setRes!47425 (and tp!1927644 (inv!85751 setElem!47425) e!4193913))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z1!570 () (InoxSet Context!12306))

(declare-fun setRest!47425 () (InoxSet Context!12306))

(assert (=> setNonEmpty!47425 (= z1!570 ((_ map or) (store ((as const (Array Context!12306 Bool)) false) setElem!47425 true) setRest!47425))))

(declare-fun res!2845485 () Bool)

(assert (=> start!669168 (=> (not res!2845485) (not e!4193918))))

(declare-fun lt!2480581 () (InoxSet Context!12306))

(declare-fun matchZipper!2697 ((InoxSet Context!12306) List!67016) Bool)

(assert (=> start!669168 (= res!2845485 (matchZipper!2697 lt!2480581 s!7408))))

(declare-fun ct2!306 () Context!12306)

(declare-fun appendTo!278 ((InoxSet Context!12306) Context!12306) (InoxSet Context!12306))

(assert (=> start!669168 (= lt!2480581 (appendTo!278 z1!570 ct2!306))))

(assert (=> start!669168 e!4193918))

(declare-fun condSetEmpty!47425 () Bool)

(assert (=> start!669168 (= condSetEmpty!47425 (= z1!570 ((as const (Array Context!12306 Bool)) false)))))

(assert (=> start!669168 setRes!47425))

(assert (=> start!669168 (and (inv!85751 ct2!306) e!4193916)))

(declare-fun e!4193914 () Bool)

(assert (=> start!669168 e!4193914))

(declare-fun b!6978201 () Bool)

(declare-fun e!4193917 () Bool)

(declare-fun lambda!398487 () Int)

(declare-fun forall!16036 (List!67017 Int) Bool)

(assert (=> b!6978201 (= e!4193917 (forall!16036 (exprs!6653 ct2!306) lambda!398487))))

(declare-fun b!6978202 () Bool)

(declare-fun res!2845487 () Bool)

(declare-fun e!4193915 () Bool)

(assert (=> b!6978202 (=> res!2845487 e!4193915)))

(declare-fun lt!2480586 () Context!12306)

(assert (=> b!6978202 (= res!2845487 (not (select lt!2480581 lt!2480586)))))

(declare-fun b!6978203 () Bool)

(declare-fun tp_is_empty!43539 () Bool)

(declare-fun tp!1927643 () Bool)

(assert (=> b!6978203 (= e!4193914 (and tp_is_empty!43539 tp!1927643))))

(assert (=> b!6978204 (= e!4193918 (not e!4193915))))

(declare-fun res!2845482 () Bool)

(assert (=> b!6978204 (=> res!2845482 e!4193915)))

(declare-fun lt!2480588 () (InoxSet Context!12306))

(assert (=> b!6978204 (= res!2845482 (not (matchZipper!2697 lt!2480588 s!7408)))))

(assert (=> b!6978204 (= lt!2480588 (store ((as const (Array Context!12306 Bool)) false) lt!2480586 true))))

(declare-fun lambda!398485 () Int)

(declare-fun getWitness!1014 ((InoxSet Context!12306) Int) Context!12306)

(assert (=> b!6978204 (= lt!2480586 (getWitness!1014 lt!2480581 lambda!398485))))

(declare-datatypes ((List!67018 0))(
  ( (Nil!66894) (Cons!66894 (h!73342 Context!12306) (t!380761 List!67018)) )
))
(declare-fun lt!2480587 () List!67018)

(declare-fun exists!2903 (List!67018 Int) Bool)

(assert (=> b!6978204 (exists!2903 lt!2480587 lambda!398485)))

(declare-datatypes ((Unit!160963 0))(
  ( (Unit!160964) )
))
(declare-fun lt!2480585 () Unit!160963)

(declare-fun lemmaZipperMatchesExistsMatchingContext!126 (List!67018 List!67016) Unit!160963)

(assert (=> b!6978204 (= lt!2480585 (lemmaZipperMatchesExistsMatchingContext!126 lt!2480587 s!7408))))

(declare-fun toList!10517 ((InoxSet Context!12306)) List!67018)

(assert (=> b!6978204 (= lt!2480587 (toList!10517 lt!2480581))))

(declare-fun b!6978205 () Bool)

(declare-fun e!4193919 () Bool)

(declare-fun e!4193912 () Bool)

(assert (=> b!6978205 (= e!4193919 e!4193912)))

(declare-fun res!2845486 () Bool)

(assert (=> b!6978205 (=> res!2845486 e!4193912)))

(declare-fun lt!2480589 () Context!12306)

(assert (=> b!6978205 (= res!2845486 (not (= (store ((as const (Array Context!12306 Bool)) false) lt!2480589 true) lt!2480588)))))

(declare-fun lt!2480583 () Unit!160963)

(declare-fun lt!2480584 () Context!12306)

(declare-fun lemmaConcatPreservesForall!493 (List!67017 List!67017 Int) Unit!160963)

(assert (=> b!6978205 (= lt!2480583 (lemmaConcatPreservesForall!493 (exprs!6653 lt!2480584) (exprs!6653 ct2!306) lambda!398487))))

(declare-fun b!6978206 () Bool)

(declare-fun tp!1927641 () Bool)

(assert (=> b!6978206 (= e!4193913 tp!1927641)))

(declare-fun b!6978207 () Bool)

(assert (=> b!6978207 (= e!4193912 e!4193917)))

(declare-fun res!2845484 () Bool)

(assert (=> b!6978207 (=> res!2845484 e!4193917)))

(assert (=> b!6978207 (= res!2845484 (not (forall!16036 (exprs!6653 lt!2480584) lambda!398487)))))

(assert (=> b!6978208 (= e!4193915 e!4193919)))

(declare-fun res!2845488 () Bool)

(assert (=> b!6978208 (=> res!2845488 e!4193919)))

(assert (=> b!6978208 (= res!2845488 (or (not (= lt!2480589 lt!2480586)) (not (select z1!570 lt!2480584))))))

(declare-fun ++!15102 (List!67017 List!67017) List!67017)

(assert (=> b!6978208 (= lt!2480589 (Context!12307 (++!15102 (exprs!6653 lt!2480584) (exprs!6653 ct2!306))))))

(declare-fun lt!2480582 () Unit!160963)

(assert (=> b!6978208 (= lt!2480582 (lemmaConcatPreservesForall!493 (exprs!6653 lt!2480584) (exprs!6653 ct2!306) lambda!398487))))

(declare-fun lambda!398486 () Int)

(declare-fun mapPost2!12 ((InoxSet Context!12306) Int Context!12306) Context!12306)

(assert (=> b!6978208 (= lt!2480584 (mapPost2!12 z1!570 lambda!398486 lt!2480586))))

(assert (= (and start!669168 res!2845485) b!6978200))

(assert (= (and b!6978200 res!2845483) b!6978204))

(assert (= (and b!6978204 (not res!2845482)) b!6978202))

(assert (= (and b!6978202 (not res!2845487)) b!6978208))

(assert (= (and b!6978208 (not res!2845488)) b!6978205))

(assert (= (and b!6978205 (not res!2845486)) b!6978207))

(assert (= (and b!6978207 (not res!2845484)) b!6978201))

(assert (= (and start!669168 condSetEmpty!47425) setIsEmpty!47425))

(assert (= (and start!669168 (not condSetEmpty!47425)) setNonEmpty!47425))

(assert (= setNonEmpty!47425 b!6978206))

(assert (= start!669168 b!6978199))

(assert (= (and start!669168 ((_ is Cons!66892) s!7408)) b!6978203))

(declare-fun m!7663954 () Bool)

(assert (=> setNonEmpty!47425 m!7663954))

(declare-fun m!7663956 () Bool)

(assert (=> b!6978205 m!7663956))

(declare-fun m!7663958 () Bool)

(assert (=> b!6978205 m!7663958))

(declare-fun m!7663960 () Bool)

(assert (=> start!669168 m!7663960))

(declare-fun m!7663962 () Bool)

(assert (=> start!669168 m!7663962))

(declare-fun m!7663964 () Bool)

(assert (=> start!669168 m!7663964))

(declare-fun m!7663966 () Bool)

(assert (=> b!6978201 m!7663966))

(declare-fun m!7663968 () Bool)

(assert (=> b!6978202 m!7663968))

(declare-fun m!7663970 () Bool)

(assert (=> b!6978204 m!7663970))

(declare-fun m!7663972 () Bool)

(assert (=> b!6978204 m!7663972))

(declare-fun m!7663974 () Bool)

(assert (=> b!6978204 m!7663974))

(declare-fun m!7663976 () Bool)

(assert (=> b!6978204 m!7663976))

(declare-fun m!7663978 () Bool)

(assert (=> b!6978204 m!7663978))

(declare-fun m!7663980 () Bool)

(assert (=> b!6978204 m!7663980))

(declare-fun m!7663982 () Bool)

(assert (=> b!6978207 m!7663982))

(declare-fun m!7663984 () Bool)

(assert (=> b!6978208 m!7663984))

(declare-fun m!7663986 () Bool)

(assert (=> b!6978208 m!7663986))

(assert (=> b!6978208 m!7663958))

(declare-fun m!7663988 () Bool)

(assert (=> b!6978208 m!7663988))

(check-sat (not b!6978205) (not b!6978201) (not b!6978199) (not b!6978203) (not setNonEmpty!47425) tp_is_empty!43539 (not b!6978208) (not b!6978207) (not b!6978204) (not start!669168) (not b!6978206))
(check-sat)
(get-model)

(declare-fun bs!1860315 () Bool)

(declare-fun d!2172742 () Bool)

(assert (= bs!1860315 (and d!2172742 b!6978208)))

(declare-fun lambda!398490 () Int)

(assert (=> bs!1860315 (= lambda!398490 lambda!398487)))

(assert (=> d!2172742 (= (inv!85751 setElem!47425) (forall!16036 (exprs!6653 setElem!47425) lambda!398490))))

(declare-fun bs!1860316 () Bool)

(assert (= bs!1860316 d!2172742))

(declare-fun m!7663990 () Bool)

(assert (=> bs!1860316 m!7663990))

(assert (=> setNonEmpty!47425 d!2172742))

(declare-fun d!2172744 () Bool)

(declare-fun c!1293419 () Bool)

(declare-fun isEmpty!39048 (List!67016) Bool)

(assert (=> d!2172744 (= c!1293419 (isEmpty!39048 s!7408))))

(declare-fun e!4193922 () Bool)

(assert (=> d!2172744 (= (matchZipper!2697 lt!2480581 s!7408) e!4193922)))

(declare-fun b!6978217 () Bool)

(declare-fun nullableZipper!2391 ((InoxSet Context!12306)) Bool)

(assert (=> b!6978217 (= e!4193922 (nullableZipper!2391 lt!2480581))))

(declare-fun b!6978218 () Bool)

(declare-fun derivationStepZipper!2638 ((InoxSet Context!12306) C!34584) (InoxSet Context!12306))

(declare-fun head!14060 (List!67016) C!34584)

(declare-fun tail!13126 (List!67016) List!67016)

(assert (=> b!6978218 (= e!4193922 (matchZipper!2697 (derivationStepZipper!2638 lt!2480581 (head!14060 s!7408)) (tail!13126 s!7408)))))

(assert (= (and d!2172744 c!1293419) b!6978217))

(assert (= (and d!2172744 (not c!1293419)) b!6978218))

(declare-fun m!7663992 () Bool)

(assert (=> d!2172744 m!7663992))

(declare-fun m!7663994 () Bool)

(assert (=> b!6978217 m!7663994))

(declare-fun m!7663996 () Bool)

(assert (=> b!6978218 m!7663996))

(assert (=> b!6978218 m!7663996))

(declare-fun m!7663998 () Bool)

(assert (=> b!6978218 m!7663998))

(declare-fun m!7664000 () Bool)

(assert (=> b!6978218 m!7664000))

(assert (=> b!6978218 m!7663998))

(assert (=> b!6978218 m!7664000))

(declare-fun m!7664002 () Bool)

(assert (=> b!6978218 m!7664002))

(assert (=> start!669168 d!2172744))

(declare-fun bs!1860317 () Bool)

(declare-fun d!2172746 () Bool)

(assert (= bs!1860317 (and d!2172746 b!6978208)))

(declare-fun lambda!398495 () Int)

(assert (=> bs!1860317 (= lambda!398495 lambda!398486)))

(assert (=> d!2172746 true))

(declare-fun map!15407 ((InoxSet Context!12306) Int) (InoxSet Context!12306))

(assert (=> d!2172746 (= (appendTo!278 z1!570 ct2!306) (map!15407 z1!570 lambda!398495))))

(declare-fun bs!1860318 () Bool)

(assert (= bs!1860318 d!2172746))

(declare-fun m!7664014 () Bool)

(assert (=> bs!1860318 m!7664014))

(assert (=> start!669168 d!2172746))

(declare-fun bs!1860319 () Bool)

(declare-fun d!2172752 () Bool)

(assert (= bs!1860319 (and d!2172752 b!6978208)))

(declare-fun lambda!398496 () Int)

(assert (=> bs!1860319 (= lambda!398496 lambda!398487)))

(declare-fun bs!1860320 () Bool)

(assert (= bs!1860320 (and d!2172752 d!2172742)))

(assert (=> bs!1860320 (= lambda!398496 lambda!398490)))

(assert (=> d!2172752 (= (inv!85751 ct2!306) (forall!16036 (exprs!6653 ct2!306) lambda!398496))))

(declare-fun bs!1860321 () Bool)

(assert (= bs!1860321 d!2172752))

(declare-fun m!7664018 () Bool)

(assert (=> bs!1860321 m!7664018))

(assert (=> start!669168 d!2172752))

(declare-fun d!2172754 () Bool)

(assert (=> d!2172754 (forall!16036 (++!15102 (exprs!6653 lt!2480584) (exprs!6653 ct2!306)) lambda!398487)))

(declare-fun lt!2480594 () Unit!160963)

(declare-fun choose!51965 (List!67017 List!67017 Int) Unit!160963)

(assert (=> d!2172754 (= lt!2480594 (choose!51965 (exprs!6653 lt!2480584) (exprs!6653 ct2!306) lambda!398487))))

(assert (=> d!2172754 (forall!16036 (exprs!6653 lt!2480584) lambda!398487)))

(assert (=> d!2172754 (= (lemmaConcatPreservesForall!493 (exprs!6653 lt!2480584) (exprs!6653 ct2!306) lambda!398487) lt!2480594)))

(declare-fun bs!1860322 () Bool)

(assert (= bs!1860322 d!2172754))

(assert (=> bs!1860322 m!7663986))

(assert (=> bs!1860322 m!7663986))

(declare-fun m!7664020 () Bool)

(assert (=> bs!1860322 m!7664020))

(declare-fun m!7664022 () Bool)

(assert (=> bs!1860322 m!7664022))

(assert (=> bs!1860322 m!7663982))

(assert (=> b!6978205 d!2172754))

(declare-fun d!2172756 () Bool)

(declare-fun res!2845495 () Bool)

(declare-fun e!4193930 () Bool)

(assert (=> d!2172756 (=> res!2845495 e!4193930)))

(assert (=> d!2172756 (= res!2845495 ((_ is Nil!66893) (exprs!6653 ct2!306)))))

(assert (=> d!2172756 (= (forall!16036 (exprs!6653 ct2!306) lambda!398487) e!4193930)))

(declare-fun b!6978229 () Bool)

(declare-fun e!4193931 () Bool)

(assert (=> b!6978229 (= e!4193930 e!4193931)))

(declare-fun res!2845496 () Bool)

(assert (=> b!6978229 (=> (not res!2845496) (not e!4193931))))

(declare-fun dynLambda!26695 (Int Regex!17157) Bool)

(assert (=> b!6978229 (= res!2845496 (dynLambda!26695 lambda!398487 (h!73341 (exprs!6653 ct2!306))))))

(declare-fun b!6978230 () Bool)

(assert (=> b!6978230 (= e!4193931 (forall!16036 (t!380760 (exprs!6653 ct2!306)) lambda!398487))))

(assert (= (and d!2172756 (not res!2845495)) b!6978229))

(assert (= (and b!6978229 res!2845496) b!6978230))

(declare-fun b_lambda!261231 () Bool)

(assert (=> (not b_lambda!261231) (not b!6978229)))

(declare-fun m!7664026 () Bool)

(assert (=> b!6978229 m!7664026))

(declare-fun m!7664028 () Bool)

(assert (=> b!6978230 m!7664028))

(assert (=> b!6978201 d!2172756))

(declare-fun b!6978245 () Bool)

(declare-fun e!4193943 () List!67017)

(assert (=> b!6978245 (= e!4193943 (exprs!6653 ct2!306))))

(declare-fun b!6978247 () Bool)

(declare-fun res!2845508 () Bool)

(declare-fun e!4193942 () Bool)

(assert (=> b!6978247 (=> (not res!2845508) (not e!4193942))))

(declare-fun lt!2480599 () List!67017)

(declare-fun size!40863 (List!67017) Int)

(assert (=> b!6978247 (= res!2845508 (= (size!40863 lt!2480599) (+ (size!40863 (exprs!6653 lt!2480584)) (size!40863 (exprs!6653 ct2!306)))))))

(declare-fun b!6978246 () Bool)

(assert (=> b!6978246 (= e!4193943 (Cons!66893 (h!73341 (exprs!6653 lt!2480584)) (++!15102 (t!380760 (exprs!6653 lt!2480584)) (exprs!6653 ct2!306))))))

(declare-fun b!6978248 () Bool)

(assert (=> b!6978248 (= e!4193942 (or (not (= (exprs!6653 ct2!306) Nil!66893)) (= lt!2480599 (exprs!6653 lt!2480584))))))

(declare-fun d!2172760 () Bool)

(assert (=> d!2172760 e!4193942))

(declare-fun res!2845507 () Bool)

(assert (=> d!2172760 (=> (not res!2845507) (not e!4193942))))

(declare-fun content!13177 (List!67017) (InoxSet Regex!17157))

(assert (=> d!2172760 (= res!2845507 (= (content!13177 lt!2480599) ((_ map or) (content!13177 (exprs!6653 lt!2480584)) (content!13177 (exprs!6653 ct2!306)))))))

(assert (=> d!2172760 (= lt!2480599 e!4193943)))

(declare-fun c!1293427 () Bool)

(assert (=> d!2172760 (= c!1293427 ((_ is Nil!66893) (exprs!6653 lt!2480584)))))

(assert (=> d!2172760 (= (++!15102 (exprs!6653 lt!2480584) (exprs!6653 ct2!306)) lt!2480599)))

(assert (= (and d!2172760 c!1293427) b!6978245))

(assert (= (and d!2172760 (not c!1293427)) b!6978246))

(assert (= (and d!2172760 res!2845507) b!6978247))

(assert (= (and b!6978247 res!2845508) b!6978248))

(declare-fun m!7664036 () Bool)

(assert (=> b!6978247 m!7664036))

(declare-fun m!7664038 () Bool)

(assert (=> b!6978247 m!7664038))

(declare-fun m!7664040 () Bool)

(assert (=> b!6978247 m!7664040))

(declare-fun m!7664042 () Bool)

(assert (=> b!6978246 m!7664042))

(declare-fun m!7664044 () Bool)

(assert (=> d!2172760 m!7664044))

(declare-fun m!7664046 () Bool)

(assert (=> d!2172760 m!7664046))

(declare-fun m!7664048 () Bool)

(assert (=> d!2172760 m!7664048))

(assert (=> b!6978208 d!2172760))

(assert (=> b!6978208 d!2172754))

(declare-fun d!2172766 () Bool)

(declare-fun e!4193949 () Bool)

(assert (=> d!2172766 e!4193949))

(declare-fun res!2845514 () Bool)

(assert (=> d!2172766 (=> (not res!2845514) (not e!4193949))))

(declare-fun lt!2480605 () Context!12306)

(declare-fun dynLambda!26697 (Int Context!12306) Context!12306)

(assert (=> d!2172766 (= res!2845514 (= lt!2480586 (dynLambda!26697 lambda!398486 lt!2480605)))))

(declare-fun choose!51967 ((InoxSet Context!12306) Int Context!12306) Context!12306)

(assert (=> d!2172766 (= lt!2480605 (choose!51967 z1!570 lambda!398486 lt!2480586))))

(assert (=> d!2172766 (select (map!15407 z1!570 lambda!398486) lt!2480586)))

(assert (=> d!2172766 (= (mapPost2!12 z1!570 lambda!398486 lt!2480586) lt!2480605)))

(declare-fun b!6978255 () Bool)

(assert (=> b!6978255 (= e!4193949 (select z1!570 lt!2480605))))

(assert (= (and d!2172766 res!2845514) b!6978255))

(declare-fun b_lambda!261237 () Bool)

(assert (=> (not b_lambda!261237) (not d!2172766)))

(declare-fun m!7664058 () Bool)

(assert (=> d!2172766 m!7664058))

(declare-fun m!7664060 () Bool)

(assert (=> d!2172766 m!7664060))

(declare-fun m!7664062 () Bool)

(assert (=> d!2172766 m!7664062))

(declare-fun m!7664064 () Bool)

(assert (=> d!2172766 m!7664064))

(declare-fun m!7664066 () Bool)

(assert (=> b!6978255 m!7664066))

(assert (=> b!6978208 d!2172766))

(declare-fun d!2172770 () Bool)

(declare-fun res!2845517 () Bool)

(declare-fun e!4193952 () Bool)

(assert (=> d!2172770 (=> res!2845517 e!4193952)))

(assert (=> d!2172770 (= res!2845517 ((_ is Nil!66893) (exprs!6653 lt!2480584)))))

(assert (=> d!2172770 (= (forall!16036 (exprs!6653 lt!2480584) lambda!398487) e!4193952)))

(declare-fun b!6978258 () Bool)

(declare-fun e!4193953 () Bool)

(assert (=> b!6978258 (= e!4193952 e!4193953)))

(declare-fun res!2845518 () Bool)

(assert (=> b!6978258 (=> (not res!2845518) (not e!4193953))))

(assert (=> b!6978258 (= res!2845518 (dynLambda!26695 lambda!398487 (h!73341 (exprs!6653 lt!2480584))))))

(declare-fun b!6978259 () Bool)

(assert (=> b!6978259 (= e!4193953 (forall!16036 (t!380760 (exprs!6653 lt!2480584)) lambda!398487))))

(assert (= (and d!2172770 (not res!2845517)) b!6978258))

(assert (= (and b!6978258 res!2845518) b!6978259))

(declare-fun b_lambda!261239 () Bool)

(assert (=> (not b_lambda!261239) (not b!6978258)))

(declare-fun m!7664068 () Bool)

(assert (=> b!6978258 m!7664068))

(declare-fun m!7664070 () Bool)

(assert (=> b!6978259 m!7664070))

(assert (=> b!6978207 d!2172770))

(declare-fun d!2172772 () Bool)

(declare-fun e!4193958 () Bool)

(assert (=> d!2172772 e!4193958))

(declare-fun res!2845522 () Bool)

(assert (=> d!2172772 (=> (not res!2845522) (not e!4193958))))

(declare-fun lt!2480611 () Context!12306)

(declare-fun dynLambda!26699 (Int Context!12306) Bool)

(assert (=> d!2172772 (= res!2845522 (dynLambda!26699 lambda!398485 lt!2480611))))

(declare-fun getWitness!1016 (List!67018 Int) Context!12306)

(assert (=> d!2172772 (= lt!2480611 (getWitness!1016 (toList!10517 lt!2480581) lambda!398485))))

(declare-fun exists!2905 ((InoxSet Context!12306) Int) Bool)

(assert (=> d!2172772 (exists!2905 lt!2480581 lambda!398485)))

(assert (=> d!2172772 (= (getWitness!1014 lt!2480581 lambda!398485) lt!2480611)))

(declare-fun b!6978265 () Bool)

(assert (=> b!6978265 (= e!4193958 (select lt!2480581 lt!2480611))))

(assert (= (and d!2172772 res!2845522) b!6978265))

(declare-fun b_lambda!261241 () Bool)

(assert (=> (not b_lambda!261241) (not d!2172772)))

(declare-fun m!7664084 () Bool)

(assert (=> d!2172772 m!7664084))

(assert (=> d!2172772 m!7663972))

(assert (=> d!2172772 m!7663972))

(declare-fun m!7664086 () Bool)

(assert (=> d!2172772 m!7664086))

(declare-fun m!7664088 () Bool)

(assert (=> d!2172772 m!7664088))

(declare-fun m!7664090 () Bool)

(assert (=> b!6978265 m!7664090))

(assert (=> b!6978204 d!2172772))

(declare-fun d!2172778 () Bool)

(declare-fun c!1293429 () Bool)

(assert (=> d!2172778 (= c!1293429 (isEmpty!39048 s!7408))))

(declare-fun e!4193959 () Bool)

(assert (=> d!2172778 (= (matchZipper!2697 lt!2480588 s!7408) e!4193959)))

(declare-fun b!6978266 () Bool)

(assert (=> b!6978266 (= e!4193959 (nullableZipper!2391 lt!2480588))))

(declare-fun b!6978267 () Bool)

(assert (=> b!6978267 (= e!4193959 (matchZipper!2697 (derivationStepZipper!2638 lt!2480588 (head!14060 s!7408)) (tail!13126 s!7408)))))

(assert (= (and d!2172778 c!1293429) b!6978266))

(assert (= (and d!2172778 (not c!1293429)) b!6978267))

(assert (=> d!2172778 m!7663992))

(declare-fun m!7664092 () Bool)

(assert (=> b!6978266 m!7664092))

(assert (=> b!6978267 m!7663996))

(assert (=> b!6978267 m!7663996))

(declare-fun m!7664094 () Bool)

(assert (=> b!6978267 m!7664094))

(assert (=> b!6978267 m!7664000))

(assert (=> b!6978267 m!7664094))

(assert (=> b!6978267 m!7664000))

(declare-fun m!7664096 () Bool)

(assert (=> b!6978267 m!7664096))

(assert (=> b!6978204 d!2172778))

(declare-fun bs!1860335 () Bool)

(declare-fun d!2172780 () Bool)

(assert (= bs!1860335 (and d!2172780 b!6978204)))

(declare-fun lambda!398514 () Int)

(assert (=> bs!1860335 (= lambda!398514 lambda!398485)))

(assert (=> d!2172780 true))

(assert (=> d!2172780 (exists!2903 lt!2480587 lambda!398514)))

(declare-fun lt!2480617 () Unit!160963)

(declare-fun choose!51970 (List!67018 List!67016) Unit!160963)

(assert (=> d!2172780 (= lt!2480617 (choose!51970 lt!2480587 s!7408))))

(declare-fun content!13180 (List!67018) (InoxSet Context!12306))

(assert (=> d!2172780 (matchZipper!2697 (content!13180 lt!2480587) s!7408)))

(assert (=> d!2172780 (= (lemmaZipperMatchesExistsMatchingContext!126 lt!2480587 s!7408) lt!2480617)))

(declare-fun bs!1860336 () Bool)

(assert (= bs!1860336 d!2172780))

(declare-fun m!7664110 () Bool)

(assert (=> bs!1860336 m!7664110))

(declare-fun m!7664112 () Bool)

(assert (=> bs!1860336 m!7664112))

(declare-fun m!7664114 () Bool)

(assert (=> bs!1860336 m!7664114))

(assert (=> bs!1860336 m!7664114))

(declare-fun m!7664116 () Bool)

(assert (=> bs!1860336 m!7664116))

(assert (=> b!6978204 d!2172780))

(declare-fun d!2172788 () Bool)

(declare-fun e!4193962 () Bool)

(assert (=> d!2172788 e!4193962))

(declare-fun res!2845525 () Bool)

(assert (=> d!2172788 (=> (not res!2845525) (not e!4193962))))

(declare-fun lt!2480623 () List!67018)

(declare-fun noDuplicate!2482 (List!67018) Bool)

(assert (=> d!2172788 (= res!2845525 (noDuplicate!2482 lt!2480623))))

(declare-fun choose!51972 ((InoxSet Context!12306)) List!67018)

(assert (=> d!2172788 (= lt!2480623 (choose!51972 lt!2480581))))

(assert (=> d!2172788 (= (toList!10517 lt!2480581) lt!2480623)))

(declare-fun b!6978272 () Bool)

(assert (=> b!6978272 (= e!4193962 (= (content!13180 lt!2480623) lt!2480581))))

(assert (= (and d!2172788 res!2845525) b!6978272))

(declare-fun m!7664122 () Bool)

(assert (=> d!2172788 m!7664122))

(declare-fun m!7664124 () Bool)

(assert (=> d!2172788 m!7664124))

(declare-fun m!7664126 () Bool)

(assert (=> b!6978272 m!7664126))

(assert (=> b!6978204 d!2172788))

(declare-fun bs!1860338 () Bool)

(declare-fun d!2172792 () Bool)

(assert (= bs!1860338 (and d!2172792 b!6978204)))

(declare-fun lambda!398517 () Int)

(assert (=> bs!1860338 (not (= lambda!398517 lambda!398485))))

(declare-fun bs!1860339 () Bool)

(assert (= bs!1860339 (and d!2172792 d!2172780)))

(assert (=> bs!1860339 (not (= lambda!398517 lambda!398514))))

(assert (=> d!2172792 true))

(declare-fun order!27819 () Int)

(declare-fun dynLambda!26701 (Int Int) Int)

(assert (=> d!2172792 (< (dynLambda!26701 order!27819 lambda!398485) (dynLambda!26701 order!27819 lambda!398517))))

(declare-fun forall!16038 (List!67018 Int) Bool)

(assert (=> d!2172792 (= (exists!2903 lt!2480587 lambda!398485) (not (forall!16038 lt!2480587 lambda!398517)))))

(declare-fun bs!1860340 () Bool)

(assert (= bs!1860340 d!2172792))

(declare-fun m!7664128 () Bool)

(assert (=> bs!1860340 m!7664128))

(assert (=> b!6978204 d!2172792))

(declare-fun condSetEmpty!47428 () Bool)

(assert (=> setNonEmpty!47425 (= condSetEmpty!47428 (= setRest!47425 ((as const (Array Context!12306 Bool)) false)))))

(declare-fun setRes!47428 () Bool)

(assert (=> setNonEmpty!47425 (= tp!1927644 setRes!47428)))

(declare-fun setIsEmpty!47428 () Bool)

(assert (=> setIsEmpty!47428 setRes!47428))

(declare-fun tp!1927650 () Bool)

(declare-fun e!4193969 () Bool)

(declare-fun setElem!47428 () Context!12306)

(declare-fun setNonEmpty!47428 () Bool)

(assert (=> setNonEmpty!47428 (= setRes!47428 (and tp!1927650 (inv!85751 setElem!47428) e!4193969))))

(declare-fun setRest!47428 () (InoxSet Context!12306))

(assert (=> setNonEmpty!47428 (= setRest!47425 ((_ map or) (store ((as const (Array Context!12306 Bool)) false) setElem!47428 true) setRest!47428))))

(declare-fun b!6978287 () Bool)

(declare-fun tp!1927649 () Bool)

(assert (=> b!6978287 (= e!4193969 tp!1927649)))

(assert (= (and setNonEmpty!47425 condSetEmpty!47428) setIsEmpty!47428))

(assert (= (and setNonEmpty!47425 (not condSetEmpty!47428)) setNonEmpty!47428))

(assert (= setNonEmpty!47428 b!6978287))

(declare-fun m!7664130 () Bool)

(assert (=> setNonEmpty!47428 m!7664130))

(declare-fun b!6978296 () Bool)

(declare-fun e!4193974 () Bool)

(declare-fun tp!1927655 () Bool)

(declare-fun tp!1927656 () Bool)

(assert (=> b!6978296 (= e!4193974 (and tp!1927655 tp!1927656))))

(assert (=> b!6978206 (= tp!1927641 e!4193974)))

(assert (= (and b!6978206 ((_ is Cons!66893) (exprs!6653 setElem!47425))) b!6978296))

(declare-fun b!6978297 () Bool)

(declare-fun e!4193975 () Bool)

(declare-fun tp!1927657 () Bool)

(declare-fun tp!1927658 () Bool)

(assert (=> b!6978297 (= e!4193975 (and tp!1927657 tp!1927658))))

(assert (=> b!6978199 (= tp!1927642 e!4193975)))

(assert (= (and b!6978199 ((_ is Cons!66893) (exprs!6653 ct2!306))) b!6978297))

(declare-fun b!6978302 () Bool)

(declare-fun e!4193978 () Bool)

(declare-fun tp!1927661 () Bool)

(assert (=> b!6978302 (= e!4193978 (and tp_is_empty!43539 tp!1927661))))

(assert (=> b!6978203 (= tp!1927643 e!4193978)))

(assert (= (and b!6978203 ((_ is Cons!66892) (t!380759 s!7408))) b!6978302))

(declare-fun b_lambda!261243 () Bool)

(assert (= b_lambda!261237 (or b!6978208 b_lambda!261243)))

(declare-fun bs!1860341 () Bool)

(declare-fun d!2172796 () Bool)

(assert (= bs!1860341 (and d!2172796 b!6978208)))

(declare-fun lt!2480627 () Unit!160963)

(assert (=> bs!1860341 (= lt!2480627 (lemmaConcatPreservesForall!493 (exprs!6653 lt!2480605) (exprs!6653 ct2!306) lambda!398487))))

(assert (=> bs!1860341 (= (dynLambda!26697 lambda!398486 lt!2480605) (Context!12307 (++!15102 (exprs!6653 lt!2480605) (exprs!6653 ct2!306))))))

(declare-fun m!7664146 () Bool)

(assert (=> bs!1860341 m!7664146))

(declare-fun m!7664148 () Bool)

(assert (=> bs!1860341 m!7664148))

(assert (=> d!2172766 d!2172796))

(declare-fun b_lambda!261245 () Bool)

(assert (= b_lambda!261231 (or b!6978208 b_lambda!261245)))

(declare-fun bs!1860342 () Bool)

(declare-fun d!2172798 () Bool)

(assert (= bs!1860342 (and d!2172798 b!6978208)))

(declare-fun validRegex!8828 (Regex!17157) Bool)

(assert (=> bs!1860342 (= (dynLambda!26695 lambda!398487 (h!73341 (exprs!6653 ct2!306))) (validRegex!8828 (h!73341 (exprs!6653 ct2!306))))))

(declare-fun m!7664150 () Bool)

(assert (=> bs!1860342 m!7664150))

(assert (=> b!6978229 d!2172798))

(declare-fun b_lambda!261247 () Bool)

(assert (= b_lambda!261241 (or b!6978204 b_lambda!261247)))

(declare-fun bs!1860343 () Bool)

(declare-fun d!2172800 () Bool)

(assert (= bs!1860343 (and d!2172800 b!6978204)))

(assert (=> bs!1860343 (= (dynLambda!26699 lambda!398485 lt!2480611) (matchZipper!2697 (store ((as const (Array Context!12306 Bool)) false) lt!2480611 true) s!7408))))

(declare-fun m!7664152 () Bool)

(assert (=> bs!1860343 m!7664152))

(assert (=> bs!1860343 m!7664152))

(declare-fun m!7664154 () Bool)

(assert (=> bs!1860343 m!7664154))

(assert (=> d!2172772 d!2172800))

(declare-fun b_lambda!261249 () Bool)

(assert (= b_lambda!261239 (or b!6978208 b_lambda!261249)))

(declare-fun bs!1860344 () Bool)

(declare-fun d!2172802 () Bool)

(assert (= bs!1860344 (and d!2172802 b!6978208)))

(assert (=> bs!1860344 (= (dynLambda!26695 lambda!398487 (h!73341 (exprs!6653 lt!2480584))) (validRegex!8828 (h!73341 (exprs!6653 lt!2480584))))))

(declare-fun m!7664156 () Bool)

(assert (=> bs!1860344 m!7664156))

(assert (=> b!6978258 d!2172802))

(check-sat tp_is_empty!43539 (not d!2172788) (not b!6978266) (not b!6978287) (not d!2172766) (not b_lambda!261243) (not bs!1860343) (not setNonEmpty!47428) (not b!6978296) (not d!2172746) (not d!2172744) (not bs!1860344) (not bs!1860341) (not d!2172778) (not b!6978246) (not d!2172792) (not b_lambda!261249) (not b!6978297) (not b_lambda!261247) (not b!6978247) (not b!6978302) (not b_lambda!261245) (not b!6978230) (not d!2172760) (not d!2172742) (not b!6978218) (not bs!1860342) (not b!6978259) (not b!6978217) (not d!2172752) (not d!2172780) (not b!6978267) (not d!2172754) (not d!2172772) (not b!6978272))
(check-sat)
