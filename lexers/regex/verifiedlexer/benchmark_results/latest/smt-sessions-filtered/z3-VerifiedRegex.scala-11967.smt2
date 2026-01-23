; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!670092 () Bool)

(assert start!670092)

(declare-fun b!6981954 () Bool)

(assert (=> b!6981954 true))

(declare-fun b!6981955 () Bool)

(assert (=> b!6981955 true))

(declare-fun b!6981960 () Bool)

(assert (=> b!6981960 true))

(declare-fun b!6981951 () Bool)

(declare-fun e!4196269 () Bool)

(declare-datatypes ((C!34632 0))(
  ( (C!34633 (val!27018 Int)) )
))
(declare-datatypes ((Regex!17181 0))(
  ( (ElementMatch!17181 (c!1294360 C!34632)) (Concat!26026 (regOne!34874 Regex!17181) (regTwo!34874 Regex!17181)) (EmptyExpr!17181) (Star!17181 (reg!17510 Regex!17181)) (EmptyLang!17181) (Union!17181 (regOne!34875 Regex!17181) (regTwo!34875 Regex!17181)) )
))
(declare-datatypes ((List!67088 0))(
  ( (Nil!66964) (Cons!66964 (h!73412 Regex!17181) (t!380831 List!67088)) )
))
(declare-datatypes ((Context!12354 0))(
  ( (Context!12355 (exprs!6677 List!67088)) )
))
(declare-fun lt!2482316 () Context!12354)

(declare-fun validRegex!8841 (Regex!17181) Bool)

(assert (=> b!6981951 (= e!4196269 (validRegex!8841 (h!73412 (exprs!6677 lt!2482316))))))

(declare-datatypes ((Unit!161014 0))(
  ( (Unit!161015) )
))
(declare-fun lt!2482322 () Unit!161014)

(declare-fun lambda!399462 () Int)

(declare-fun ct2!306 () Context!12354)

(declare-fun lt!2482321 () List!67088)

(declare-fun lemmaConcatPreservesForall!517 (List!67088 List!67088 Int) Unit!161014)

(assert (=> b!6981951 (= lt!2482322 (lemmaConcatPreservesForall!517 lt!2482321 (exprs!6677 ct2!306) lambda!399462))))

(declare-fun lt!2482326 () Unit!161014)

(assert (=> b!6981951 (= lt!2482326 (lemmaConcatPreservesForall!517 lt!2482321 (exprs!6677 ct2!306) lambda!399462))))

(declare-fun b!6981952 () Bool)

(declare-fun e!4196267 () Bool)

(declare-fun tp!1928448 () Bool)

(assert (=> b!6981952 (= e!4196267 tp!1928448)))

(declare-fun res!2847128 () Bool)

(declare-fun e!4196268 () Bool)

(assert (=> start!670092 (=> (not res!2847128) (not e!4196268))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2482327 () (InoxSet Context!12354))

(declare-datatypes ((List!67089 0))(
  ( (Nil!66965) (Cons!66965 (h!73413 C!34632) (t!380832 List!67089)) )
))
(declare-fun s!7408 () List!67089)

(declare-fun matchZipper!2721 ((InoxSet Context!12354) List!67089) Bool)

(assert (=> start!670092 (= res!2847128 (matchZipper!2721 lt!2482327 s!7408))))

(declare-fun z1!570 () (InoxSet Context!12354))

(declare-fun appendTo!302 ((InoxSet Context!12354) Context!12354) (InoxSet Context!12354))

(assert (=> start!670092 (= lt!2482327 (appendTo!302 z1!570 ct2!306))))

(assert (=> start!670092 e!4196268))

(declare-fun condSetEmpty!47573 () Bool)

(assert (=> start!670092 (= condSetEmpty!47573 (= z1!570 ((as const (Array Context!12354 Bool)) false)))))

(declare-fun setRes!47573 () Bool)

(assert (=> start!670092 setRes!47573))

(declare-fun e!4196272 () Bool)

(declare-fun inv!85811 (Context!12354) Bool)

(assert (=> start!670092 (and (inv!85811 ct2!306) e!4196272)))

(declare-fun e!4196273 () Bool)

(assert (=> start!670092 e!4196273))

(declare-fun b!6981953 () Bool)

(declare-fun e!4196270 () Bool)

(declare-fun e!4196265 () Bool)

(assert (=> b!6981953 (= e!4196270 e!4196265)))

(declare-fun res!2847124 () Bool)

(assert (=> b!6981953 (=> res!2847124 e!4196265)))

(declare-fun nullable!6941 (Regex!17181) Bool)

(assert (=> b!6981953 (= res!2847124 (not (nullable!6941 (h!73412 (exprs!6677 lt!2482316)))))))

(declare-fun tail!13163 (List!67088) List!67088)

(assert (=> b!6981953 (= lt!2482321 (tail!13163 (exprs!6677 lt!2482316)))))

(declare-fun e!4196264 () Bool)

(assert (=> b!6981954 (= e!4196268 (not e!4196264))))

(declare-fun res!2847134 () Bool)

(assert (=> b!6981954 (=> res!2847134 e!4196264)))

(declare-fun lt!2482318 () (InoxSet Context!12354))

(assert (=> b!6981954 (= res!2847134 (not (matchZipper!2721 lt!2482318 s!7408)))))

(declare-fun lt!2482315 () Context!12354)

(assert (=> b!6981954 (= lt!2482318 (store ((as const (Array Context!12354 Bool)) false) lt!2482315 true))))

(declare-fun lambda!399460 () Int)

(declare-fun getWitness!1056 ((InoxSet Context!12354) Int) Context!12354)

(assert (=> b!6981954 (= lt!2482315 (getWitness!1056 lt!2482327 lambda!399460))))

(declare-datatypes ((List!67090 0))(
  ( (Nil!66966) (Cons!66966 (h!73414 Context!12354) (t!380833 List!67090)) )
))
(declare-fun lt!2482329 () List!67090)

(declare-fun exists!2945 (List!67090 Int) Bool)

(assert (=> b!6981954 (exists!2945 lt!2482329 lambda!399460)))

(declare-fun lt!2482313 () Unit!161014)

(declare-fun lemmaZipperMatchesExistsMatchingContext!150 (List!67090 List!67089) Unit!161014)

(assert (=> b!6981954 (= lt!2482313 (lemmaZipperMatchesExistsMatchingContext!150 lt!2482329 s!7408))))

(declare-fun toList!10541 ((InoxSet Context!12354)) List!67090)

(assert (=> b!6981954 (= lt!2482329 (toList!10541 lt!2482327))))

(declare-fun e!4196266 () Bool)

(assert (=> b!6981955 (= e!4196264 e!4196266)))

(declare-fun res!2847127 () Bool)

(assert (=> b!6981955 (=> res!2847127 e!4196266)))

(declare-fun lt!2482325 () Context!12354)

(assert (=> b!6981955 (= res!2847127 (or (not (= lt!2482325 lt!2482315)) (not (select z1!570 lt!2482316))))))

(declare-fun ++!15126 (List!67088 List!67088) List!67088)

(assert (=> b!6981955 (= lt!2482325 (Context!12355 (++!15126 (exprs!6677 lt!2482316) (exprs!6677 ct2!306))))))

(declare-fun lt!2482324 () Unit!161014)

(assert (=> b!6981955 (= lt!2482324 (lemmaConcatPreservesForall!517 (exprs!6677 lt!2482316) (exprs!6677 ct2!306) lambda!399462))))

(declare-fun lambda!399461 () Int)

(declare-fun mapPost2!36 ((InoxSet Context!12354) Int Context!12354) Context!12354)

(assert (=> b!6981955 (= lt!2482316 (mapPost2!36 z1!570 lambda!399461 lt!2482315))))

(declare-fun b!6981956 () Bool)

(assert (=> b!6981956 (= e!4196265 e!4196269)))

(declare-fun res!2847133 () Bool)

(assert (=> b!6981956 (=> res!2847133 e!4196269)))

(declare-fun lt!2482317 () Context!12354)

(declare-fun lt!2482314 () (InoxSet Context!12354))

(declare-fun derivationStepZipperDown!1899 (Regex!17181 Context!12354 C!34632) (InoxSet Context!12354))

(declare-fun derivationStepZipperUp!1831 (Context!12354 C!34632) (InoxSet Context!12354))

(assert (=> b!6981956 (= res!2847133 (not (= lt!2482314 ((_ map or) (derivationStepZipperDown!1899 (h!73412 (exprs!6677 lt!2482316)) lt!2482317 (h!73413 s!7408)) (derivationStepZipperUp!1831 lt!2482317 (h!73413 s!7408))))))))

(assert (=> b!6981956 (= lt!2482317 (Context!12355 (++!15126 lt!2482321 (exprs!6677 ct2!306))))))

(declare-fun lt!2482312 () Unit!161014)

(assert (=> b!6981956 (= lt!2482312 (lemmaConcatPreservesForall!517 lt!2482321 (exprs!6677 ct2!306) lambda!399462))))

(declare-fun lt!2482323 () Unit!161014)

(assert (=> b!6981956 (= lt!2482323 (lemmaConcatPreservesForall!517 lt!2482321 (exprs!6677 ct2!306) lambda!399462))))

(declare-fun b!6981957 () Bool)

(declare-fun tp_is_empty!43587 () Bool)

(declare-fun tp!1928445 () Bool)

(assert (=> b!6981957 (= e!4196273 (and tp_is_empty!43587 tp!1928445))))

(declare-fun b!6981958 () Bool)

(declare-fun res!2847129 () Bool)

(assert (=> b!6981958 (=> res!2847129 e!4196264)))

(assert (=> b!6981958 (= res!2847129 (not (select lt!2482327 lt!2482315)))))

(declare-fun b!6981959 () Bool)

(declare-fun res!2847130 () Bool)

(assert (=> b!6981959 (=> res!2847130 e!4196270)))

(declare-fun isEmpty!39087 (List!67088) Bool)

(assert (=> b!6981959 (= res!2847130 (isEmpty!39087 (exprs!6677 lt!2482316)))))

(declare-fun e!4196271 () Bool)

(assert (=> b!6981960 (= e!4196271 e!4196270)))

(declare-fun res!2847126 () Bool)

(assert (=> b!6981960 (=> res!2847126 e!4196270)))

(declare-fun lt!2482320 () (InoxSet Context!12354))

(declare-fun derivationStepZipper!2661 ((InoxSet Context!12354) C!34632) (InoxSet Context!12354))

(assert (=> b!6981960 (= res!2847126 (not (= (derivationStepZipper!2661 lt!2482320 (h!73413 s!7408)) lt!2482314)))))

(declare-fun lambda!399463 () Int)

(declare-fun flatMap!2167 ((InoxSet Context!12354) Int) (InoxSet Context!12354))

(assert (=> b!6981960 (= (flatMap!2167 lt!2482320 lambda!399463) (derivationStepZipperUp!1831 lt!2482325 (h!73413 s!7408)))))

(declare-fun lt!2482319 () Unit!161014)

(declare-fun lemmaFlatMapOnSingletonSet!1682 ((InoxSet Context!12354) Context!12354 Int) Unit!161014)

(assert (=> b!6981960 (= lt!2482319 (lemmaFlatMapOnSingletonSet!1682 lt!2482320 lt!2482325 lambda!399463))))

(assert (=> b!6981960 (= lt!2482314 (derivationStepZipperUp!1831 lt!2482325 (h!73413 s!7408)))))

(declare-fun lt!2482328 () Unit!161014)

(assert (=> b!6981960 (= lt!2482328 (lemmaConcatPreservesForall!517 (exprs!6677 lt!2482316) (exprs!6677 ct2!306) lambda!399462))))

(declare-fun setElem!47573 () Context!12354)

(declare-fun tp!1928446 () Bool)

(declare-fun setNonEmpty!47573 () Bool)

(assert (=> setNonEmpty!47573 (= setRes!47573 (and tp!1928446 (inv!85811 setElem!47573) e!4196267))))

(declare-fun setRest!47573 () (InoxSet Context!12354))

(assert (=> setNonEmpty!47573 (= z1!570 ((_ map or) (store ((as const (Array Context!12354 Bool)) false) setElem!47573 true) setRest!47573))))

(declare-fun setIsEmpty!47573 () Bool)

(assert (=> setIsEmpty!47573 setRes!47573))

(declare-fun b!6981961 () Bool)

(declare-fun res!2847125 () Bool)

(assert (=> b!6981961 (=> (not res!2847125) (not e!4196268))))

(get-info :version)

(assert (=> b!6981961 (= res!2847125 ((_ is Cons!66965) s!7408))))

(declare-fun b!6981962 () Bool)

(declare-fun tp!1928447 () Bool)

(assert (=> b!6981962 (= e!4196272 tp!1928447)))

(declare-fun b!6981963 () Bool)

(declare-fun res!2847131 () Bool)

(assert (=> b!6981963 (=> res!2847131 e!4196270)))

(assert (=> b!6981963 (= res!2847131 (not ((_ is Cons!66964) (exprs!6677 lt!2482316))))))

(declare-fun b!6981964 () Bool)

(assert (=> b!6981964 (= e!4196266 e!4196271)))

(declare-fun res!2847132 () Bool)

(assert (=> b!6981964 (=> res!2847132 e!4196271)))

(assert (=> b!6981964 (= res!2847132 (not (= lt!2482320 lt!2482318)))))

(assert (=> b!6981964 (= lt!2482320 (store ((as const (Array Context!12354 Bool)) false) lt!2482325 true))))

(declare-fun lt!2482311 () Unit!161014)

(assert (=> b!6981964 (= lt!2482311 (lemmaConcatPreservesForall!517 (exprs!6677 lt!2482316) (exprs!6677 ct2!306) lambda!399462))))

(assert (= (and start!670092 res!2847128) b!6981961))

(assert (= (and b!6981961 res!2847125) b!6981954))

(assert (= (and b!6981954 (not res!2847134)) b!6981958))

(assert (= (and b!6981958 (not res!2847129)) b!6981955))

(assert (= (and b!6981955 (not res!2847127)) b!6981964))

(assert (= (and b!6981964 (not res!2847132)) b!6981960))

(assert (= (and b!6981960 (not res!2847126)) b!6981963))

(assert (= (and b!6981963 (not res!2847131)) b!6981959))

(assert (= (and b!6981959 (not res!2847130)) b!6981953))

(assert (= (and b!6981953 (not res!2847124)) b!6981956))

(assert (= (and b!6981956 (not res!2847133)) b!6981951))

(assert (= (and start!670092 condSetEmpty!47573) setIsEmpty!47573))

(assert (= (and start!670092 (not condSetEmpty!47573)) setNonEmpty!47573))

(assert (= setNonEmpty!47573 b!6981952))

(assert (= start!670092 b!6981962))

(assert (= (and start!670092 ((_ is Cons!66965) s!7408)) b!6981957))

(declare-fun m!7668570 () Bool)

(assert (=> b!6981951 m!7668570))

(declare-fun m!7668572 () Bool)

(assert (=> b!6981951 m!7668572))

(assert (=> b!6981951 m!7668572))

(declare-fun m!7668574 () Bool)

(assert (=> b!6981958 m!7668574))

(declare-fun m!7668576 () Bool)

(assert (=> b!6981959 m!7668576))

(declare-fun m!7668578 () Bool)

(assert (=> b!6981953 m!7668578))

(declare-fun m!7668580 () Bool)

(assert (=> b!6981953 m!7668580))

(declare-fun m!7668582 () Bool)

(assert (=> b!6981955 m!7668582))

(declare-fun m!7668584 () Bool)

(assert (=> b!6981955 m!7668584))

(declare-fun m!7668586 () Bool)

(assert (=> b!6981955 m!7668586))

(declare-fun m!7668588 () Bool)

(assert (=> b!6981955 m!7668588))

(declare-fun m!7668590 () Bool)

(assert (=> start!670092 m!7668590))

(declare-fun m!7668592 () Bool)

(assert (=> start!670092 m!7668592))

(declare-fun m!7668594 () Bool)

(assert (=> start!670092 m!7668594))

(declare-fun m!7668596 () Bool)

(assert (=> b!6981960 m!7668596))

(declare-fun m!7668598 () Bool)

(assert (=> b!6981960 m!7668598))

(declare-fun m!7668600 () Bool)

(assert (=> b!6981960 m!7668600))

(declare-fun m!7668602 () Bool)

(assert (=> b!6981960 m!7668602))

(assert (=> b!6981960 m!7668586))

(declare-fun m!7668604 () Bool)

(assert (=> setNonEmpty!47573 m!7668604))

(declare-fun m!7668606 () Bool)

(assert (=> b!6981964 m!7668606))

(assert (=> b!6981964 m!7668586))

(declare-fun m!7668608 () Bool)

(assert (=> b!6981954 m!7668608))

(declare-fun m!7668610 () Bool)

(assert (=> b!6981954 m!7668610))

(declare-fun m!7668612 () Bool)

(assert (=> b!6981954 m!7668612))

(declare-fun m!7668614 () Bool)

(assert (=> b!6981954 m!7668614))

(declare-fun m!7668616 () Bool)

(assert (=> b!6981954 m!7668616))

(declare-fun m!7668618 () Bool)

(assert (=> b!6981954 m!7668618))

(assert (=> b!6981956 m!7668572))

(declare-fun m!7668620 () Bool)

(assert (=> b!6981956 m!7668620))

(declare-fun m!7668622 () Bool)

(assert (=> b!6981956 m!7668622))

(declare-fun m!7668624 () Bool)

(assert (=> b!6981956 m!7668624))

(assert (=> b!6981956 m!7668572))

(check-sat (not b!6981959) (not b!6981960) (not b!6981955) tp_is_empty!43587 (not start!670092) (not b!6981952) (not b!6981954) (not b!6981957) (not b!6981951) (not b!6981962) (not b!6981964) (not b!6981953) (not b!6981956) (not setNonEmpty!47573))
(check-sat)
(get-model)

(declare-fun b!6982065 () Bool)

(declare-fun res!2847167 () Bool)

(declare-fun e!4196329 () Bool)

(assert (=> b!6982065 (=> (not res!2847167) (not e!4196329))))

(declare-fun lt!2482344 () List!67088)

(declare-fun size!40881 (List!67088) Int)

(assert (=> b!6982065 (= res!2847167 (= (size!40881 lt!2482344) (+ (size!40881 (exprs!6677 lt!2482316)) (size!40881 (exprs!6677 ct2!306)))))))

(declare-fun b!6982064 () Bool)

(declare-fun e!4196330 () List!67088)

(assert (=> b!6982064 (= e!4196330 (Cons!66964 (h!73412 (exprs!6677 lt!2482316)) (++!15126 (t!380831 (exprs!6677 lt!2482316)) (exprs!6677 ct2!306))))))

(declare-fun d!2174312 () Bool)

(assert (=> d!2174312 e!4196329))

(declare-fun res!2847168 () Bool)

(assert (=> d!2174312 (=> (not res!2847168) (not e!4196329))))

(declare-fun content!13213 (List!67088) (InoxSet Regex!17181))

(assert (=> d!2174312 (= res!2847168 (= (content!13213 lt!2482344) ((_ map or) (content!13213 (exprs!6677 lt!2482316)) (content!13213 (exprs!6677 ct2!306)))))))

(assert (=> d!2174312 (= lt!2482344 e!4196330)))

(declare-fun c!1294394 () Bool)

(assert (=> d!2174312 (= c!1294394 ((_ is Nil!66964) (exprs!6677 lt!2482316)))))

(assert (=> d!2174312 (= (++!15126 (exprs!6677 lt!2482316) (exprs!6677 ct2!306)) lt!2482344)))

(declare-fun b!6982063 () Bool)

(assert (=> b!6982063 (= e!4196330 (exprs!6677 ct2!306))))

(declare-fun b!6982066 () Bool)

(assert (=> b!6982066 (= e!4196329 (or (not (= (exprs!6677 ct2!306) Nil!66964)) (= lt!2482344 (exprs!6677 lt!2482316))))))

(assert (= (and d!2174312 c!1294394) b!6982063))

(assert (= (and d!2174312 (not c!1294394)) b!6982064))

(assert (= (and d!2174312 res!2847168) b!6982065))

(assert (= (and b!6982065 res!2847167) b!6982066))

(declare-fun m!7668690 () Bool)

(assert (=> b!6982065 m!7668690))

(declare-fun m!7668692 () Bool)

(assert (=> b!6982065 m!7668692))

(declare-fun m!7668694 () Bool)

(assert (=> b!6982065 m!7668694))

(declare-fun m!7668696 () Bool)

(assert (=> b!6982064 m!7668696))

(declare-fun m!7668698 () Bool)

(assert (=> d!2174312 m!7668698))

(declare-fun m!7668700 () Bool)

(assert (=> d!2174312 m!7668700))

(declare-fun m!7668702 () Bool)

(assert (=> d!2174312 m!7668702))

(assert (=> b!6981955 d!2174312))

(declare-fun d!2174316 () Bool)

(declare-fun forall!16076 (List!67088 Int) Bool)

(assert (=> d!2174316 (forall!16076 (++!15126 (exprs!6677 lt!2482316) (exprs!6677 ct2!306)) lambda!399462)))

(declare-fun lt!2482347 () Unit!161014)

(declare-fun choose!52082 (List!67088 List!67088 Int) Unit!161014)

(assert (=> d!2174316 (= lt!2482347 (choose!52082 (exprs!6677 lt!2482316) (exprs!6677 ct2!306) lambda!399462))))

(assert (=> d!2174316 (forall!16076 (exprs!6677 lt!2482316) lambda!399462)))

(assert (=> d!2174316 (= (lemmaConcatPreservesForall!517 (exprs!6677 lt!2482316) (exprs!6677 ct2!306) lambda!399462) lt!2482347)))

(declare-fun bs!1861006 () Bool)

(assert (= bs!1861006 d!2174316))

(assert (=> bs!1861006 m!7668584))

(assert (=> bs!1861006 m!7668584))

(declare-fun m!7668720 () Bool)

(assert (=> bs!1861006 m!7668720))

(declare-fun m!7668726 () Bool)

(assert (=> bs!1861006 m!7668726))

(declare-fun m!7668730 () Bool)

(assert (=> bs!1861006 m!7668730))

(assert (=> b!6981955 d!2174316))

(declare-fun d!2174322 () Bool)

(declare-fun e!4196348 () Bool)

(assert (=> d!2174322 e!4196348))

(declare-fun res!2847178 () Bool)

(assert (=> d!2174322 (=> (not res!2847178) (not e!4196348))))

(declare-fun lt!2482354 () Context!12354)

(declare-fun dynLambda!26786 (Int Context!12354) Context!12354)

(assert (=> d!2174322 (= res!2847178 (= lt!2482315 (dynLambda!26786 lambda!399461 lt!2482354)))))

(declare-fun choose!52083 ((InoxSet Context!12354) Int Context!12354) Context!12354)

(assert (=> d!2174322 (= lt!2482354 (choose!52083 z1!570 lambda!399461 lt!2482315))))

(declare-fun map!15437 ((InoxSet Context!12354) Int) (InoxSet Context!12354))

(assert (=> d!2174322 (select (map!15437 z1!570 lambda!399461) lt!2482315)))

(assert (=> d!2174322 (= (mapPost2!36 z1!570 lambda!399461 lt!2482315) lt!2482354)))

(declare-fun b!6982096 () Bool)

(assert (=> b!6982096 (= e!4196348 (select z1!570 lt!2482354))))

(assert (= (and d!2174322 res!2847178) b!6982096))

(declare-fun b_lambda!261755 () Bool)

(assert (=> (not b_lambda!261755) (not d!2174322)))

(declare-fun m!7668752 () Bool)

(assert (=> d!2174322 m!7668752))

(declare-fun m!7668754 () Bool)

(assert (=> d!2174322 m!7668754))

(declare-fun m!7668756 () Bool)

(assert (=> d!2174322 m!7668756))

(declare-fun m!7668758 () Bool)

(assert (=> d!2174322 m!7668758))

(declare-fun m!7668760 () Bool)

(assert (=> b!6982096 m!7668760))

(assert (=> b!6981955 d!2174322))

(assert (=> b!6981964 d!2174316))

(declare-fun bs!1861007 () Bool)

(declare-fun d!2174330 () Bool)

(assert (= bs!1861007 (and d!2174330 b!6981955)))

(declare-fun lambda!399477 () Int)

(assert (=> bs!1861007 (= lambda!399477 lambda!399462)))

(assert (=> d!2174330 (= (inv!85811 setElem!47573) (forall!16076 (exprs!6677 setElem!47573) lambda!399477))))

(declare-fun bs!1861008 () Bool)

(assert (= bs!1861008 d!2174330))

(declare-fun m!7668776 () Bool)

(assert (=> bs!1861008 m!7668776))

(assert (=> setNonEmpty!47573 d!2174330))

(declare-fun b!6982105 () Bool)

(declare-fun res!2847185 () Bool)

(declare-fun e!4196355 () Bool)

(assert (=> b!6982105 (=> (not res!2847185) (not e!4196355))))

(declare-fun lt!2482361 () List!67088)

(assert (=> b!6982105 (= res!2847185 (= (size!40881 lt!2482361) (+ (size!40881 lt!2482321) (size!40881 (exprs!6677 ct2!306)))))))

(declare-fun b!6982104 () Bool)

(declare-fun e!4196356 () List!67088)

(assert (=> b!6982104 (= e!4196356 (Cons!66964 (h!73412 lt!2482321) (++!15126 (t!380831 lt!2482321) (exprs!6677 ct2!306))))))

(declare-fun d!2174336 () Bool)

(assert (=> d!2174336 e!4196355))

(declare-fun res!2847186 () Bool)

(assert (=> d!2174336 (=> (not res!2847186) (not e!4196355))))

(assert (=> d!2174336 (= res!2847186 (= (content!13213 lt!2482361) ((_ map or) (content!13213 lt!2482321) (content!13213 (exprs!6677 ct2!306)))))))

(assert (=> d!2174336 (= lt!2482361 e!4196356)))

(declare-fun c!1294404 () Bool)

(assert (=> d!2174336 (= c!1294404 ((_ is Nil!66964) lt!2482321))))

(assert (=> d!2174336 (= (++!15126 lt!2482321 (exprs!6677 ct2!306)) lt!2482361)))

(declare-fun b!6982103 () Bool)

(assert (=> b!6982103 (= e!4196356 (exprs!6677 ct2!306))))

(declare-fun b!6982106 () Bool)

(assert (=> b!6982106 (= e!4196355 (or (not (= (exprs!6677 ct2!306) Nil!66964)) (= lt!2482361 lt!2482321)))))

(assert (= (and d!2174336 c!1294404) b!6982103))

(assert (= (and d!2174336 (not c!1294404)) b!6982104))

(assert (= (and d!2174336 res!2847186) b!6982105))

(assert (= (and b!6982105 res!2847185) b!6982106))

(declare-fun m!7668780 () Bool)

(assert (=> b!6982105 m!7668780))

(declare-fun m!7668782 () Bool)

(assert (=> b!6982105 m!7668782))

(assert (=> b!6982105 m!7668694))

(declare-fun m!7668784 () Bool)

(assert (=> b!6982104 m!7668784))

(declare-fun m!7668786 () Bool)

(assert (=> d!2174336 m!7668786))

(declare-fun m!7668788 () Bool)

(assert (=> d!2174336 m!7668788))

(assert (=> d!2174336 m!7668702))

(assert (=> b!6981956 d!2174336))

(declare-fun d!2174340 () Bool)

(declare-fun c!1294412 () Bool)

(declare-fun e!4196373 () Bool)

(assert (=> d!2174340 (= c!1294412 e!4196373)))

(declare-fun res!2847189 () Bool)

(assert (=> d!2174340 (=> (not res!2847189) (not e!4196373))))

(assert (=> d!2174340 (= res!2847189 ((_ is Cons!66964) (exprs!6677 lt!2482317)))))

(declare-fun e!4196374 () (InoxSet Context!12354))

(assert (=> d!2174340 (= (derivationStepZipperUp!1831 lt!2482317 (h!73413 s!7408)) e!4196374)))

(declare-fun b!6982135 () Bool)

(assert (=> b!6982135 (= e!4196373 (nullable!6941 (h!73412 (exprs!6677 lt!2482317))))))

(declare-fun b!6982136 () Bool)

(declare-fun e!4196375 () (InoxSet Context!12354))

(assert (=> b!6982136 (= e!4196374 e!4196375)))

(declare-fun c!1294411 () Bool)

(assert (=> b!6982136 (= c!1294411 ((_ is Cons!66964) (exprs!6677 lt!2482317)))))

(declare-fun b!6982137 () Bool)

(assert (=> b!6982137 (= e!4196375 ((as const (Array Context!12354 Bool)) false))))

(declare-fun bm!633623 () Bool)

(declare-fun call!633628 () (InoxSet Context!12354))

(assert (=> bm!633623 (= call!633628 (derivationStepZipperDown!1899 (h!73412 (exprs!6677 lt!2482317)) (Context!12355 (t!380831 (exprs!6677 lt!2482317))) (h!73413 s!7408)))))

(declare-fun b!6982138 () Bool)

(assert (=> b!6982138 (= e!4196375 call!633628)))

(declare-fun b!6982139 () Bool)

(assert (=> b!6982139 (= e!4196374 ((_ map or) call!633628 (derivationStepZipperUp!1831 (Context!12355 (t!380831 (exprs!6677 lt!2482317))) (h!73413 s!7408))))))

(assert (= (and d!2174340 res!2847189) b!6982135))

(assert (= (and d!2174340 c!1294412) b!6982139))

(assert (= (and d!2174340 (not c!1294412)) b!6982136))

(assert (= (and b!6982136 c!1294411) b!6982138))

(assert (= (and b!6982136 (not c!1294411)) b!6982137))

(assert (= (or b!6982139 b!6982138) bm!633623))

(declare-fun m!7668810 () Bool)

(assert (=> b!6982135 m!7668810))

(declare-fun m!7668812 () Bool)

(assert (=> bm!633623 m!7668812))

(declare-fun m!7668814 () Bool)

(assert (=> b!6982139 m!7668814))

(assert (=> b!6981956 d!2174340))

(declare-fun d!2174352 () Bool)

(assert (=> d!2174352 (forall!16076 (++!15126 lt!2482321 (exprs!6677 ct2!306)) lambda!399462)))

(declare-fun lt!2482366 () Unit!161014)

(assert (=> d!2174352 (= lt!2482366 (choose!52082 lt!2482321 (exprs!6677 ct2!306) lambda!399462))))

(assert (=> d!2174352 (forall!16076 lt!2482321 lambda!399462)))

(assert (=> d!2174352 (= (lemmaConcatPreservesForall!517 lt!2482321 (exprs!6677 ct2!306) lambda!399462) lt!2482366)))

(declare-fun bs!1861020 () Bool)

(assert (= bs!1861020 d!2174352))

(assert (=> bs!1861020 m!7668622))

(assert (=> bs!1861020 m!7668622))

(declare-fun m!7668816 () Bool)

(assert (=> bs!1861020 m!7668816))

(declare-fun m!7668818 () Bool)

(assert (=> bs!1861020 m!7668818))

(declare-fun m!7668820 () Bool)

(assert (=> bs!1861020 m!7668820))

(assert (=> b!6981956 d!2174352))

(declare-fun bm!633636 () Bool)

(declare-fun call!633644 () List!67088)

(declare-fun c!1294425 () Bool)

(declare-fun c!1294424 () Bool)

(declare-fun c!1294426 () Bool)

(declare-fun call!633646 () (InoxSet Context!12354))

(assert (=> bm!633636 (= call!633646 (derivationStepZipperDown!1899 (ite c!1294426 (regOne!34875 (h!73412 (exprs!6677 lt!2482316))) (ite c!1294424 (regTwo!34874 (h!73412 (exprs!6677 lt!2482316))) (ite c!1294425 (regOne!34874 (h!73412 (exprs!6677 lt!2482316))) (reg!17510 (h!73412 (exprs!6677 lt!2482316)))))) (ite (or c!1294426 c!1294424) lt!2482317 (Context!12355 call!633644)) (h!73413 s!7408)))))

(declare-fun bm!633637 () Bool)

(declare-fun call!633642 () (InoxSet Context!12354))

(declare-fun call!633645 () (InoxSet Context!12354))

(assert (=> bm!633637 (= call!633642 call!633645)))

(declare-fun b!6982162 () Bool)

(declare-fun e!4196390 () (InoxSet Context!12354))

(assert (=> b!6982162 (= e!4196390 call!633642)))

(declare-fun b!6982163 () Bool)

(declare-fun e!4196389 () (InoxSet Context!12354))

(assert (=> b!6982163 (= e!4196389 (store ((as const (Array Context!12354 Bool)) false) lt!2482317 true))))

(declare-fun b!6982164 () Bool)

(declare-fun e!4196388 () Bool)

(assert (=> b!6982164 (= e!4196388 (nullable!6941 (regOne!34874 (h!73412 (exprs!6677 lt!2482316)))))))

(declare-fun b!6982165 () Bool)

(assert (=> b!6982165 (= e!4196390 ((as const (Array Context!12354 Bool)) false))))

(declare-fun bm!633638 () Bool)

(declare-fun call!633641 () List!67088)

(assert (=> bm!633638 (= call!633644 call!633641)))

(declare-fun b!6982166 () Bool)

(declare-fun c!1294427 () Bool)

(assert (=> b!6982166 (= c!1294427 ((_ is Star!17181) (h!73412 (exprs!6677 lt!2482316))))))

(declare-fun e!4196391 () (InoxSet Context!12354))

(assert (=> b!6982166 (= e!4196391 e!4196390)))

(declare-fun bm!633639 () Bool)

(declare-fun $colon$colon!2461 (List!67088 Regex!17181) List!67088)

(assert (=> bm!633639 (= call!633641 ($colon$colon!2461 (exprs!6677 lt!2482317) (ite (or c!1294424 c!1294425) (regTwo!34874 (h!73412 (exprs!6677 lt!2482316))) (h!73412 (exprs!6677 lt!2482316)))))))

(declare-fun b!6982167 () Bool)

(assert (=> b!6982167 (= c!1294424 e!4196388)))

(declare-fun res!2847192 () Bool)

(assert (=> b!6982167 (=> (not res!2847192) (not e!4196388))))

(assert (=> b!6982167 (= res!2847192 ((_ is Concat!26026) (h!73412 (exprs!6677 lt!2482316))))))

(declare-fun e!4196393 () (InoxSet Context!12354))

(declare-fun e!4196392 () (InoxSet Context!12354))

(assert (=> b!6982167 (= e!4196393 e!4196392)))

(declare-fun b!6982168 () Bool)

(assert (=> b!6982168 (= e!4196391 call!633642)))

(declare-fun b!6982169 () Bool)

(assert (=> b!6982169 (= e!4196392 e!4196391)))

(assert (=> b!6982169 (= c!1294425 ((_ is Concat!26026) (h!73412 (exprs!6677 lt!2482316))))))

(declare-fun d!2174354 () Bool)

(declare-fun c!1294423 () Bool)

(assert (=> d!2174354 (= c!1294423 (and ((_ is ElementMatch!17181) (h!73412 (exprs!6677 lt!2482316))) (= (c!1294360 (h!73412 (exprs!6677 lt!2482316))) (h!73413 s!7408))))))

(assert (=> d!2174354 (= (derivationStepZipperDown!1899 (h!73412 (exprs!6677 lt!2482316)) lt!2482317 (h!73413 s!7408)) e!4196389)))

(declare-fun bm!633640 () Bool)

(declare-fun call!633643 () (InoxSet Context!12354))

(assert (=> bm!633640 (= call!633643 (derivationStepZipperDown!1899 (ite c!1294426 (regTwo!34875 (h!73412 (exprs!6677 lt!2482316))) (regOne!34874 (h!73412 (exprs!6677 lt!2482316)))) (ite c!1294426 lt!2482317 (Context!12355 call!633641)) (h!73413 s!7408)))))

(declare-fun b!6982170 () Bool)

(assert (=> b!6982170 (= e!4196389 e!4196393)))

(assert (=> b!6982170 (= c!1294426 ((_ is Union!17181) (h!73412 (exprs!6677 lt!2482316))))))

(declare-fun bm!633641 () Bool)

(assert (=> bm!633641 (= call!633645 call!633646)))

(declare-fun b!6982171 () Bool)

(assert (=> b!6982171 (= e!4196392 ((_ map or) call!633643 call!633645))))

(declare-fun b!6982172 () Bool)

(assert (=> b!6982172 (= e!4196393 ((_ map or) call!633646 call!633643))))

(assert (= (and d!2174354 c!1294423) b!6982163))

(assert (= (and d!2174354 (not c!1294423)) b!6982170))

(assert (= (and b!6982170 c!1294426) b!6982172))

(assert (= (and b!6982170 (not c!1294426)) b!6982167))

(assert (= (and b!6982167 res!2847192) b!6982164))

(assert (= (and b!6982167 c!1294424) b!6982171))

(assert (= (and b!6982167 (not c!1294424)) b!6982169))

(assert (= (and b!6982169 c!1294425) b!6982168))

(assert (= (and b!6982169 (not c!1294425)) b!6982166))

(assert (= (and b!6982166 c!1294427) b!6982162))

(assert (= (and b!6982166 (not c!1294427)) b!6982165))

(assert (= (or b!6982168 b!6982162) bm!633638))

(assert (= (or b!6982168 b!6982162) bm!633637))

(assert (= (or b!6982171 bm!633637) bm!633641))

(assert (= (or b!6982171 bm!633638) bm!633639))

(assert (= (or b!6982172 bm!633641) bm!633636))

(assert (= (or b!6982172 b!6982171) bm!633640))

(declare-fun m!7668822 () Bool)

(assert (=> bm!633636 m!7668822))

(declare-fun m!7668824 () Bool)

(assert (=> b!6982164 m!7668824))

(declare-fun m!7668826 () Bool)

(assert (=> bm!633639 m!7668826))

(declare-fun m!7668828 () Bool)

(assert (=> b!6982163 m!7668828))

(declare-fun m!7668830 () Bool)

(assert (=> bm!633640 m!7668830))

(assert (=> b!6981956 d!2174354))

(declare-fun b!6982191 () Bool)

(declare-fun e!4196409 () Bool)

(declare-fun call!633654 () Bool)

(assert (=> b!6982191 (= e!4196409 call!633654)))

(declare-fun b!6982192 () Bool)

(declare-fun res!2847204 () Bool)

(declare-fun e!4196413 () Bool)

(assert (=> b!6982192 (=> (not res!2847204) (not e!4196413))))

(declare-fun call!633655 () Bool)

(assert (=> b!6982192 (= res!2847204 call!633655)))

(declare-fun e!4196411 () Bool)

(assert (=> b!6982192 (= e!4196411 e!4196413)))

(declare-fun b!6982193 () Bool)

(declare-fun e!4196408 () Bool)

(assert (=> b!6982193 (= e!4196408 e!4196411)))

(declare-fun c!1294433 () Bool)

(assert (=> b!6982193 (= c!1294433 ((_ is Union!17181) (h!73412 (exprs!6677 lt!2482316))))))

(declare-fun b!6982194 () Bool)

(declare-fun e!4196410 () Bool)

(assert (=> b!6982194 (= e!4196410 e!4196408)))

(declare-fun c!1294432 () Bool)

(assert (=> b!6982194 (= c!1294432 ((_ is Star!17181) (h!73412 (exprs!6677 lt!2482316))))))

(declare-fun bm!633648 () Bool)

(declare-fun call!633653 () Bool)

(assert (=> bm!633648 (= call!633654 call!633653)))

(declare-fun b!6982195 () Bool)

(declare-fun res!2847206 () Bool)

(declare-fun e!4196412 () Bool)

(assert (=> b!6982195 (=> res!2847206 e!4196412)))

(assert (=> b!6982195 (= res!2847206 (not ((_ is Concat!26026) (h!73412 (exprs!6677 lt!2482316)))))))

(assert (=> b!6982195 (= e!4196411 e!4196412)))

(declare-fun b!6982196 () Bool)

(declare-fun e!4196414 () Bool)

(assert (=> b!6982196 (= e!4196408 e!4196414)))

(declare-fun res!2847205 () Bool)

(assert (=> b!6982196 (= res!2847205 (not (nullable!6941 (reg!17510 (h!73412 (exprs!6677 lt!2482316))))))))

(assert (=> b!6982196 (=> (not res!2847205) (not e!4196414))))

(declare-fun b!6982197 () Bool)

(assert (=> b!6982197 (= e!4196413 call!633654)))

(declare-fun bm!633649 () Bool)

(assert (=> bm!633649 (= call!633655 (validRegex!8841 (ite c!1294433 (regOne!34875 (h!73412 (exprs!6677 lt!2482316))) (regOne!34874 (h!73412 (exprs!6677 lt!2482316))))))))

(declare-fun d!2174356 () Bool)

(declare-fun res!2847203 () Bool)

(assert (=> d!2174356 (=> res!2847203 e!4196410)))

(assert (=> d!2174356 (= res!2847203 ((_ is ElementMatch!17181) (h!73412 (exprs!6677 lt!2482316))))))

(assert (=> d!2174356 (= (validRegex!8841 (h!73412 (exprs!6677 lt!2482316))) e!4196410)))

(declare-fun b!6982198 () Bool)

(assert (=> b!6982198 (= e!4196414 call!633653)))

(declare-fun bm!633650 () Bool)

(assert (=> bm!633650 (= call!633653 (validRegex!8841 (ite c!1294432 (reg!17510 (h!73412 (exprs!6677 lt!2482316))) (ite c!1294433 (regTwo!34875 (h!73412 (exprs!6677 lt!2482316))) (regTwo!34874 (h!73412 (exprs!6677 lt!2482316)))))))))

(declare-fun b!6982199 () Bool)

(assert (=> b!6982199 (= e!4196412 e!4196409)))

(declare-fun res!2847207 () Bool)

(assert (=> b!6982199 (=> (not res!2847207) (not e!4196409))))

(assert (=> b!6982199 (= res!2847207 call!633655)))

(assert (= (and d!2174356 (not res!2847203)) b!6982194))

(assert (= (and b!6982194 c!1294432) b!6982196))

(assert (= (and b!6982194 (not c!1294432)) b!6982193))

(assert (= (and b!6982196 res!2847205) b!6982198))

(assert (= (and b!6982193 c!1294433) b!6982192))

(assert (= (and b!6982193 (not c!1294433)) b!6982195))

(assert (= (and b!6982192 res!2847204) b!6982197))

(assert (= (and b!6982195 (not res!2847206)) b!6982199))

(assert (= (and b!6982199 res!2847207) b!6982191))

(assert (= (or b!6982197 b!6982191) bm!633648))

(assert (= (or b!6982192 b!6982199) bm!633649))

(assert (= (or b!6982198 bm!633648) bm!633650))

(declare-fun m!7668832 () Bool)

(assert (=> b!6982196 m!7668832))

(declare-fun m!7668834 () Bool)

(assert (=> bm!633649 m!7668834))

(declare-fun m!7668836 () Bool)

(assert (=> bm!633650 m!7668836))

(assert (=> b!6981951 d!2174356))

(assert (=> b!6981951 d!2174352))

(declare-fun d!2174358 () Bool)

(declare-fun nullableFct!2613 (Regex!17181) Bool)

(assert (=> d!2174358 (= (nullable!6941 (h!73412 (exprs!6677 lt!2482316))) (nullableFct!2613 (h!73412 (exprs!6677 lt!2482316))))))

(declare-fun bs!1861021 () Bool)

(assert (= bs!1861021 d!2174358))

(declare-fun m!7668838 () Bool)

(assert (=> bs!1861021 m!7668838))

(assert (=> b!6981953 d!2174358))

(declare-fun d!2174360 () Bool)

(assert (=> d!2174360 (= (tail!13163 (exprs!6677 lt!2482316)) (t!380831 (exprs!6677 lt!2482316)))))

(assert (=> b!6981953 d!2174360))

(declare-fun d!2174362 () Bool)

(declare-fun c!1294436 () Bool)

(declare-fun isEmpty!39089 (List!67089) Bool)

(assert (=> d!2174362 (= c!1294436 (isEmpty!39089 s!7408))))

(declare-fun e!4196417 () Bool)

(assert (=> d!2174362 (= (matchZipper!2721 lt!2482327 s!7408) e!4196417)))

(declare-fun b!6982204 () Bool)

(declare-fun nullableZipper!2410 ((InoxSet Context!12354)) Bool)

(assert (=> b!6982204 (= e!4196417 (nullableZipper!2410 lt!2482327))))

(declare-fun b!6982205 () Bool)

(declare-fun head!14082 (List!67089) C!34632)

(declare-fun tail!13165 (List!67089) List!67089)

(assert (=> b!6982205 (= e!4196417 (matchZipper!2721 (derivationStepZipper!2661 lt!2482327 (head!14082 s!7408)) (tail!13165 s!7408)))))

(assert (= (and d!2174362 c!1294436) b!6982204))

(assert (= (and d!2174362 (not c!1294436)) b!6982205))

(declare-fun m!7668840 () Bool)

(assert (=> d!2174362 m!7668840))

(declare-fun m!7668842 () Bool)

(assert (=> b!6982204 m!7668842))

(declare-fun m!7668844 () Bool)

(assert (=> b!6982205 m!7668844))

(assert (=> b!6982205 m!7668844))

(declare-fun m!7668846 () Bool)

(assert (=> b!6982205 m!7668846))

(declare-fun m!7668848 () Bool)

(assert (=> b!6982205 m!7668848))

(assert (=> b!6982205 m!7668846))

(assert (=> b!6982205 m!7668848))

(declare-fun m!7668850 () Bool)

(assert (=> b!6982205 m!7668850))

(assert (=> start!670092 d!2174362))

(declare-fun bs!1861022 () Bool)

(declare-fun d!2174364 () Bool)

(assert (= bs!1861022 (and d!2174364 b!6981955)))

(declare-fun lambda!399489 () Int)

(assert (=> bs!1861022 (= lambda!399489 lambda!399461)))

(assert (=> d!2174364 true))

(assert (=> d!2174364 (= (appendTo!302 z1!570 ct2!306) (map!15437 z1!570 lambda!399489))))

(declare-fun bs!1861023 () Bool)

(assert (= bs!1861023 d!2174364))

(declare-fun m!7668852 () Bool)

(assert (=> bs!1861023 m!7668852))

(assert (=> start!670092 d!2174364))

(declare-fun bs!1861024 () Bool)

(declare-fun d!2174366 () Bool)

(assert (= bs!1861024 (and d!2174366 b!6981955)))

(declare-fun lambda!399490 () Int)

(assert (=> bs!1861024 (= lambda!399490 lambda!399462)))

(declare-fun bs!1861025 () Bool)

(assert (= bs!1861025 (and d!2174366 d!2174330)))

(assert (=> bs!1861025 (= lambda!399490 lambda!399477)))

(assert (=> d!2174366 (= (inv!85811 ct2!306) (forall!16076 (exprs!6677 ct2!306) lambda!399490))))

(declare-fun bs!1861026 () Bool)

(assert (= bs!1861026 d!2174366))

(declare-fun m!7668854 () Bool)

(assert (=> bs!1861026 m!7668854))

(assert (=> start!670092 d!2174366))

(declare-fun d!2174368 () Bool)

(assert (=> d!2174368 (= (isEmpty!39087 (exprs!6677 lt!2482316)) ((_ is Nil!66964) (exprs!6677 lt!2482316)))))

(assert (=> b!6981959 d!2174368))

(declare-fun d!2174370 () Bool)

(declare-fun c!1294438 () Bool)

(assert (=> d!2174370 (= c!1294438 (isEmpty!39089 s!7408))))

(declare-fun e!4196418 () Bool)

(assert (=> d!2174370 (= (matchZipper!2721 lt!2482318 s!7408) e!4196418)))

(declare-fun b!6982206 () Bool)

(assert (=> b!6982206 (= e!4196418 (nullableZipper!2410 lt!2482318))))

(declare-fun b!6982207 () Bool)

(assert (=> b!6982207 (= e!4196418 (matchZipper!2721 (derivationStepZipper!2661 lt!2482318 (head!14082 s!7408)) (tail!13165 s!7408)))))

(assert (= (and d!2174370 c!1294438) b!6982206))

(assert (= (and d!2174370 (not c!1294438)) b!6982207))

(assert (=> d!2174370 m!7668840))

(declare-fun m!7668856 () Bool)

(assert (=> b!6982206 m!7668856))

(assert (=> b!6982207 m!7668844))

(assert (=> b!6982207 m!7668844))

(declare-fun m!7668858 () Bool)

(assert (=> b!6982207 m!7668858))

(assert (=> b!6982207 m!7668848))

(assert (=> b!6982207 m!7668858))

(assert (=> b!6982207 m!7668848))

(declare-fun m!7668860 () Bool)

(assert (=> b!6982207 m!7668860))

(assert (=> b!6981954 d!2174370))

(declare-fun d!2174372 () Bool)

(declare-fun e!4196421 () Bool)

(assert (=> d!2174372 e!4196421))

(declare-fun res!2847210 () Bool)

(assert (=> d!2174372 (=> (not res!2847210) (not e!4196421))))

(declare-fun lt!2482371 () List!67090)

(declare-fun noDuplicate!2500 (List!67090) Bool)

(assert (=> d!2174372 (= res!2847210 (noDuplicate!2500 lt!2482371))))

(declare-fun choose!52084 ((InoxSet Context!12354)) List!67090)

(assert (=> d!2174372 (= lt!2482371 (choose!52084 lt!2482327))))

(assert (=> d!2174372 (= (toList!10541 lt!2482327) lt!2482371)))

(declare-fun b!6982210 () Bool)

(declare-fun content!13214 (List!67090) (InoxSet Context!12354))

(assert (=> b!6982210 (= e!4196421 (= (content!13214 lt!2482371) lt!2482327))))

(assert (= (and d!2174372 res!2847210) b!6982210))

(declare-fun m!7668862 () Bool)

(assert (=> d!2174372 m!7668862))

(declare-fun m!7668864 () Bool)

(assert (=> d!2174372 m!7668864))

(declare-fun m!7668866 () Bool)

(assert (=> b!6982210 m!7668866))

(assert (=> b!6981954 d!2174372))

(declare-fun d!2174374 () Bool)

(declare-fun e!4196424 () Bool)

(assert (=> d!2174374 e!4196424))

(declare-fun res!2847213 () Bool)

(assert (=> d!2174374 (=> (not res!2847213) (not e!4196424))))

(declare-fun lt!2482374 () Context!12354)

(declare-fun dynLambda!26787 (Int Context!12354) Bool)

(assert (=> d!2174374 (= res!2847213 (dynLambda!26787 lambda!399460 lt!2482374))))

(declare-fun getWitness!1058 (List!67090 Int) Context!12354)

(assert (=> d!2174374 (= lt!2482374 (getWitness!1058 (toList!10541 lt!2482327) lambda!399460))))

(declare-fun exists!2947 ((InoxSet Context!12354) Int) Bool)

(assert (=> d!2174374 (exists!2947 lt!2482327 lambda!399460)))

(assert (=> d!2174374 (= (getWitness!1056 lt!2482327 lambda!399460) lt!2482374)))

(declare-fun b!6982213 () Bool)

(assert (=> b!6982213 (= e!4196424 (select lt!2482327 lt!2482374))))

(assert (= (and d!2174374 res!2847213) b!6982213))

(declare-fun b_lambda!261765 () Bool)

(assert (=> (not b_lambda!261765) (not d!2174374)))

(declare-fun m!7668868 () Bool)

(assert (=> d!2174374 m!7668868))

(assert (=> d!2174374 m!7668612))

(assert (=> d!2174374 m!7668612))

(declare-fun m!7668870 () Bool)

(assert (=> d!2174374 m!7668870))

(declare-fun m!7668872 () Bool)

(assert (=> d!2174374 m!7668872))

(declare-fun m!7668874 () Bool)

(assert (=> b!6982213 m!7668874))

(assert (=> b!6981954 d!2174374))

(declare-fun bs!1861027 () Bool)

(declare-fun d!2174376 () Bool)

(assert (= bs!1861027 (and d!2174376 b!6981954)))

(declare-fun lambda!399493 () Int)

(assert (=> bs!1861027 (not (= lambda!399493 lambda!399460))))

(assert (=> d!2174376 true))

(declare-fun order!27859 () Int)

(declare-fun dynLambda!26788 (Int Int) Int)

(assert (=> d!2174376 (< (dynLambda!26788 order!27859 lambda!399460) (dynLambda!26788 order!27859 lambda!399493))))

(declare-fun forall!16077 (List!67090 Int) Bool)

(assert (=> d!2174376 (= (exists!2945 lt!2482329 lambda!399460) (not (forall!16077 lt!2482329 lambda!399493)))))

(declare-fun bs!1861028 () Bool)

(assert (= bs!1861028 d!2174376))

(declare-fun m!7668876 () Bool)

(assert (=> bs!1861028 m!7668876))

(assert (=> b!6981954 d!2174376))

(declare-fun bs!1861029 () Bool)

(declare-fun d!2174378 () Bool)

(assert (= bs!1861029 (and d!2174378 b!6981954)))

(declare-fun lambda!399496 () Int)

(assert (=> bs!1861029 (= lambda!399496 lambda!399460)))

(declare-fun bs!1861030 () Bool)

(assert (= bs!1861030 (and d!2174378 d!2174376)))

(assert (=> bs!1861030 (not (= lambda!399496 lambda!399493))))

(assert (=> d!2174378 true))

(assert (=> d!2174378 (exists!2945 lt!2482329 lambda!399496)))

(declare-fun lt!2482377 () Unit!161014)

(declare-fun choose!52085 (List!67090 List!67089) Unit!161014)

(assert (=> d!2174378 (= lt!2482377 (choose!52085 lt!2482329 s!7408))))

(assert (=> d!2174378 (matchZipper!2721 (content!13214 lt!2482329) s!7408)))

(assert (=> d!2174378 (= (lemmaZipperMatchesExistsMatchingContext!150 lt!2482329 s!7408) lt!2482377)))

(declare-fun bs!1861031 () Bool)

(assert (= bs!1861031 d!2174378))

(declare-fun m!7668878 () Bool)

(assert (=> bs!1861031 m!7668878))

(declare-fun m!7668880 () Bool)

(assert (=> bs!1861031 m!7668880))

(declare-fun m!7668882 () Bool)

(assert (=> bs!1861031 m!7668882))

(assert (=> bs!1861031 m!7668882))

(declare-fun m!7668884 () Bool)

(assert (=> bs!1861031 m!7668884))

(assert (=> b!6981954 d!2174378))

(declare-fun bs!1861032 () Bool)

(declare-fun d!2174380 () Bool)

(assert (= bs!1861032 (and d!2174380 b!6981960)))

(declare-fun lambda!399499 () Int)

(assert (=> bs!1861032 (= lambda!399499 lambda!399463)))

(assert (=> d!2174380 true))

(assert (=> d!2174380 (= (derivationStepZipper!2661 lt!2482320 (h!73413 s!7408)) (flatMap!2167 lt!2482320 lambda!399499))))

(declare-fun bs!1861033 () Bool)

(assert (= bs!1861033 d!2174380))

(declare-fun m!7668886 () Bool)

(assert (=> bs!1861033 m!7668886))

(assert (=> b!6981960 d!2174380))

(declare-fun d!2174382 () Bool)

(declare-fun choose!52086 ((InoxSet Context!12354) Int) (InoxSet Context!12354))

(assert (=> d!2174382 (= (flatMap!2167 lt!2482320 lambda!399463) (choose!52086 lt!2482320 lambda!399463))))

(declare-fun bs!1861034 () Bool)

(assert (= bs!1861034 d!2174382))

(declare-fun m!7668888 () Bool)

(assert (=> bs!1861034 m!7668888))

(assert (=> b!6981960 d!2174382))

(assert (=> b!6981960 d!2174316))

(declare-fun d!2174384 () Bool)

(declare-fun dynLambda!26789 (Int Context!12354) (InoxSet Context!12354))

(assert (=> d!2174384 (= (flatMap!2167 lt!2482320 lambda!399463) (dynLambda!26789 lambda!399463 lt!2482325))))

(declare-fun lt!2482380 () Unit!161014)

(declare-fun choose!52087 ((InoxSet Context!12354) Context!12354 Int) Unit!161014)

(assert (=> d!2174384 (= lt!2482380 (choose!52087 lt!2482320 lt!2482325 lambda!399463))))

(assert (=> d!2174384 (= lt!2482320 (store ((as const (Array Context!12354 Bool)) false) lt!2482325 true))))

(assert (=> d!2174384 (= (lemmaFlatMapOnSingletonSet!1682 lt!2482320 lt!2482325 lambda!399463) lt!2482380)))

(declare-fun b_lambda!261767 () Bool)

(assert (=> (not b_lambda!261767) (not d!2174384)))

(declare-fun bs!1861035 () Bool)

(assert (= bs!1861035 d!2174384))

(assert (=> bs!1861035 m!7668598))

(declare-fun m!7668890 () Bool)

(assert (=> bs!1861035 m!7668890))

(declare-fun m!7668892 () Bool)

(assert (=> bs!1861035 m!7668892))

(assert (=> bs!1861035 m!7668606))

(assert (=> b!6981960 d!2174384))

(declare-fun d!2174386 () Bool)

(declare-fun c!1294444 () Bool)

(declare-fun e!4196425 () Bool)

(assert (=> d!2174386 (= c!1294444 e!4196425)))

(declare-fun res!2847214 () Bool)

(assert (=> d!2174386 (=> (not res!2847214) (not e!4196425))))

(assert (=> d!2174386 (= res!2847214 ((_ is Cons!66964) (exprs!6677 lt!2482325)))))

(declare-fun e!4196426 () (InoxSet Context!12354))

(assert (=> d!2174386 (= (derivationStepZipperUp!1831 lt!2482325 (h!73413 s!7408)) e!4196426)))

(declare-fun b!6982218 () Bool)

(assert (=> b!6982218 (= e!4196425 (nullable!6941 (h!73412 (exprs!6677 lt!2482325))))))

(declare-fun b!6982219 () Bool)

(declare-fun e!4196427 () (InoxSet Context!12354))

(assert (=> b!6982219 (= e!4196426 e!4196427)))

(declare-fun c!1294443 () Bool)

(assert (=> b!6982219 (= c!1294443 ((_ is Cons!66964) (exprs!6677 lt!2482325)))))

(declare-fun b!6982220 () Bool)

(assert (=> b!6982220 (= e!4196427 ((as const (Array Context!12354 Bool)) false))))

(declare-fun bm!633651 () Bool)

(declare-fun call!633656 () (InoxSet Context!12354))

(assert (=> bm!633651 (= call!633656 (derivationStepZipperDown!1899 (h!73412 (exprs!6677 lt!2482325)) (Context!12355 (t!380831 (exprs!6677 lt!2482325))) (h!73413 s!7408)))))

(declare-fun b!6982221 () Bool)

(assert (=> b!6982221 (= e!4196427 call!633656)))

(declare-fun b!6982222 () Bool)

(assert (=> b!6982222 (= e!4196426 ((_ map or) call!633656 (derivationStepZipperUp!1831 (Context!12355 (t!380831 (exprs!6677 lt!2482325))) (h!73413 s!7408))))))

(assert (= (and d!2174386 res!2847214) b!6982218))

(assert (= (and d!2174386 c!1294444) b!6982222))

(assert (= (and d!2174386 (not c!1294444)) b!6982219))

(assert (= (and b!6982219 c!1294443) b!6982221))

(assert (= (and b!6982219 (not c!1294443)) b!6982220))

(assert (= (or b!6982222 b!6982221) bm!633651))

(declare-fun m!7668894 () Bool)

(assert (=> b!6982218 m!7668894))

(declare-fun m!7668896 () Bool)

(assert (=> bm!633651 m!7668896))

(declare-fun m!7668898 () Bool)

(assert (=> b!6982222 m!7668898))

(assert (=> b!6981960 d!2174386))

(declare-fun condSetEmpty!47579 () Bool)

(assert (=> setNonEmpty!47573 (= condSetEmpty!47579 (= setRest!47573 ((as const (Array Context!12354 Bool)) false)))))

(declare-fun setRes!47579 () Bool)

(assert (=> setNonEmpty!47573 (= tp!1928446 setRes!47579)))

(declare-fun setIsEmpty!47579 () Bool)

(assert (=> setIsEmpty!47579 setRes!47579))

(declare-fun tp!1928470 () Bool)

(declare-fun setElem!47579 () Context!12354)

(declare-fun setNonEmpty!47579 () Bool)

(declare-fun e!4196430 () Bool)

(assert (=> setNonEmpty!47579 (= setRes!47579 (and tp!1928470 (inv!85811 setElem!47579) e!4196430))))

(declare-fun setRest!47579 () (InoxSet Context!12354))

(assert (=> setNonEmpty!47579 (= setRest!47573 ((_ map or) (store ((as const (Array Context!12354 Bool)) false) setElem!47579 true) setRest!47579))))

(declare-fun b!6982227 () Bool)

(declare-fun tp!1928471 () Bool)

(assert (=> b!6982227 (= e!4196430 tp!1928471)))

(assert (= (and setNonEmpty!47573 condSetEmpty!47579) setIsEmpty!47579))

(assert (= (and setNonEmpty!47573 (not condSetEmpty!47579)) setNonEmpty!47579))

(assert (= setNonEmpty!47579 b!6982227))

(declare-fun m!7668900 () Bool)

(assert (=> setNonEmpty!47579 m!7668900))

(declare-fun b!6982232 () Bool)

(declare-fun e!4196433 () Bool)

(declare-fun tp!1928474 () Bool)

(assert (=> b!6982232 (= e!4196433 (and tp_is_empty!43587 tp!1928474))))

(assert (=> b!6981957 (= tp!1928445 e!4196433)))

(assert (= (and b!6981957 ((_ is Cons!66965) (t!380832 s!7408))) b!6982232))

(declare-fun b!6982237 () Bool)

(declare-fun e!4196436 () Bool)

(declare-fun tp!1928479 () Bool)

(declare-fun tp!1928480 () Bool)

(assert (=> b!6982237 (= e!4196436 (and tp!1928479 tp!1928480))))

(assert (=> b!6981952 (= tp!1928448 e!4196436)))

(assert (= (and b!6981952 ((_ is Cons!66964) (exprs!6677 setElem!47573))) b!6982237))

(declare-fun b!6982238 () Bool)

(declare-fun e!4196437 () Bool)

(declare-fun tp!1928481 () Bool)

(declare-fun tp!1928482 () Bool)

(assert (=> b!6982238 (= e!4196437 (and tp!1928481 tp!1928482))))

(assert (=> b!6981962 (= tp!1928447 e!4196437)))

(assert (= (and b!6981962 ((_ is Cons!66964) (exprs!6677 ct2!306))) b!6982238))

(declare-fun b_lambda!261769 () Bool)

(assert (= b_lambda!261755 (or b!6981955 b_lambda!261769)))

(declare-fun bs!1861036 () Bool)

(declare-fun d!2174388 () Bool)

(assert (= bs!1861036 (and d!2174388 b!6981955)))

(declare-fun lt!2482381 () Unit!161014)

(assert (=> bs!1861036 (= lt!2482381 (lemmaConcatPreservesForall!517 (exprs!6677 lt!2482354) (exprs!6677 ct2!306) lambda!399462))))

(assert (=> bs!1861036 (= (dynLambda!26786 lambda!399461 lt!2482354) (Context!12355 (++!15126 (exprs!6677 lt!2482354) (exprs!6677 ct2!306))))))

(declare-fun m!7668902 () Bool)

(assert (=> bs!1861036 m!7668902))

(declare-fun m!7668904 () Bool)

(assert (=> bs!1861036 m!7668904))

(assert (=> d!2174322 d!2174388))

(declare-fun b_lambda!261771 () Bool)

(assert (= b_lambda!261767 (or b!6981960 b_lambda!261771)))

(declare-fun bs!1861037 () Bool)

(declare-fun d!2174390 () Bool)

(assert (= bs!1861037 (and d!2174390 b!6981960)))

(assert (=> bs!1861037 (= (dynLambda!26789 lambda!399463 lt!2482325) (derivationStepZipperUp!1831 lt!2482325 (h!73413 s!7408)))))

(assert (=> bs!1861037 m!7668602))

(assert (=> d!2174384 d!2174390))

(declare-fun b_lambda!261773 () Bool)

(assert (= b_lambda!261765 (or b!6981954 b_lambda!261773)))

(declare-fun bs!1861038 () Bool)

(declare-fun d!2174392 () Bool)

(assert (= bs!1861038 (and d!2174392 b!6981954)))

(assert (=> bs!1861038 (= (dynLambda!26787 lambda!399460 lt!2482374) (matchZipper!2721 (store ((as const (Array Context!12354 Bool)) false) lt!2482374 true) s!7408))))

(declare-fun m!7668906 () Bool)

(assert (=> bs!1861038 m!7668906))

(assert (=> bs!1861038 m!7668906))

(declare-fun m!7668908 () Bool)

(assert (=> bs!1861038 m!7668908))

(assert (=> d!2174374 d!2174392))

(check-sat (not b!6982065) (not bm!633639) (not b!6982222) (not b!6982205) (not d!2174370) (not bm!633651) (not b!6982237) (not d!2174378) (not bm!633640) (not b!6982196) (not d!2174362) (not bm!633649) (not b!6982218) (not b!6982135) (not d!2174366) (not b_lambda!261771) (not d!2174330) tp_is_empty!43587 (not d!2174382) (not d!2174374) (not b!6982204) (not b_lambda!261773) (not bs!1861036) (not bm!633623) (not b!6982164) (not b!6982207) (not d!2174312) (not bs!1861037) (not bm!633650) (not d!2174372) (not b_lambda!261769) (not d!2174316) (not b!6982210) (not b!6982227) (not b!6982232) (not d!2174380) (not d!2174322) (not d!2174336) (not d!2174364) (not d!2174358) (not setNonEmpty!47579) (not d!2174384) (not b!6982104) (not bm!633636) (not b!6982238) (not b!6982206) (not b!6982064) (not d!2174376) (not bs!1861038) (not d!2174352) (not b!6982139) (not b!6982105))
(check-sat)
(get-model)

(declare-fun d!2174540 () Bool)

(declare-fun c!1294511 () Bool)

(assert (=> d!2174540 (= c!1294511 (isEmpty!39089 s!7408))))

(declare-fun e!4196595 () Bool)

(assert (=> d!2174540 (= (matchZipper!2721 (store ((as const (Array Context!12354 Bool)) false) lt!2482374 true) s!7408) e!4196595)))

(declare-fun b!6982476 () Bool)

(assert (=> b!6982476 (= e!4196595 (nullableZipper!2410 (store ((as const (Array Context!12354 Bool)) false) lt!2482374 true)))))

(declare-fun b!6982477 () Bool)

(assert (=> b!6982477 (= e!4196595 (matchZipper!2721 (derivationStepZipper!2661 (store ((as const (Array Context!12354 Bool)) false) lt!2482374 true) (head!14082 s!7408)) (tail!13165 s!7408)))))

(assert (= (and d!2174540 c!1294511) b!6982476))

(assert (= (and d!2174540 (not c!1294511)) b!6982477))

(assert (=> d!2174540 m!7668840))

(assert (=> b!6982476 m!7668906))

(declare-fun m!7669188 () Bool)

(assert (=> b!6982476 m!7669188))

(assert (=> b!6982477 m!7668844))

(assert (=> b!6982477 m!7668906))

(assert (=> b!6982477 m!7668844))

(declare-fun m!7669190 () Bool)

(assert (=> b!6982477 m!7669190))

(assert (=> b!6982477 m!7668848))

(assert (=> b!6982477 m!7669190))

(assert (=> b!6982477 m!7668848))

(declare-fun m!7669192 () Bool)

(assert (=> b!6982477 m!7669192))

(assert (=> bs!1861038 d!2174540))

(declare-fun d!2174542 () Bool)

(declare-fun lt!2482405 () Int)

(assert (=> d!2174542 (>= lt!2482405 0)))

(declare-fun e!4196598 () Int)

(assert (=> d!2174542 (= lt!2482405 e!4196598)))

(declare-fun c!1294514 () Bool)

(assert (=> d!2174542 (= c!1294514 ((_ is Nil!66964) lt!2482361))))

(assert (=> d!2174542 (= (size!40881 lt!2482361) lt!2482405)))

(declare-fun b!6982482 () Bool)

(assert (=> b!6982482 (= e!4196598 0)))

(declare-fun b!6982483 () Bool)

(assert (=> b!6982483 (= e!4196598 (+ 1 (size!40881 (t!380831 lt!2482361))))))

(assert (= (and d!2174542 c!1294514) b!6982482))

(assert (= (and d!2174542 (not c!1294514)) b!6982483))

(declare-fun m!7669194 () Bool)

(assert (=> b!6982483 m!7669194))

(assert (=> b!6982105 d!2174542))

(declare-fun d!2174544 () Bool)

(declare-fun lt!2482406 () Int)

(assert (=> d!2174544 (>= lt!2482406 0)))

(declare-fun e!4196599 () Int)

(assert (=> d!2174544 (= lt!2482406 e!4196599)))

(declare-fun c!1294515 () Bool)

(assert (=> d!2174544 (= c!1294515 ((_ is Nil!66964) lt!2482321))))

(assert (=> d!2174544 (= (size!40881 lt!2482321) lt!2482406)))

(declare-fun b!6982484 () Bool)

(assert (=> b!6982484 (= e!4196599 0)))

(declare-fun b!6982485 () Bool)

(assert (=> b!6982485 (= e!4196599 (+ 1 (size!40881 (t!380831 lt!2482321))))))

(assert (= (and d!2174544 c!1294515) b!6982484))

(assert (= (and d!2174544 (not c!1294515)) b!6982485))

(declare-fun m!7669196 () Bool)

(assert (=> b!6982485 m!7669196))

(assert (=> b!6982105 d!2174544))

(declare-fun d!2174546 () Bool)

(declare-fun lt!2482407 () Int)

(assert (=> d!2174546 (>= lt!2482407 0)))

(declare-fun e!4196600 () Int)

(assert (=> d!2174546 (= lt!2482407 e!4196600)))

(declare-fun c!1294516 () Bool)

(assert (=> d!2174546 (= c!1294516 ((_ is Nil!66964) (exprs!6677 ct2!306)))))

(assert (=> d!2174546 (= (size!40881 (exprs!6677 ct2!306)) lt!2482407)))

(declare-fun b!6982486 () Bool)

(assert (=> b!6982486 (= e!4196600 0)))

(declare-fun b!6982487 () Bool)

(assert (=> b!6982487 (= e!4196600 (+ 1 (size!40881 (t!380831 (exprs!6677 ct2!306)))))))

(assert (= (and d!2174546 c!1294516) b!6982486))

(assert (= (and d!2174546 (not c!1294516)) b!6982487))

(declare-fun m!7669198 () Bool)

(assert (=> b!6982487 m!7669198))

(assert (=> b!6982105 d!2174546))

(declare-fun d!2174548 () Bool)

(assert (=> d!2174548 (= ($colon$colon!2461 (exprs!6677 lt!2482317) (ite (or c!1294424 c!1294425) (regTwo!34874 (h!73412 (exprs!6677 lt!2482316))) (h!73412 (exprs!6677 lt!2482316)))) (Cons!66964 (ite (or c!1294424 c!1294425) (regTwo!34874 (h!73412 (exprs!6677 lt!2482316))) (h!73412 (exprs!6677 lt!2482316))) (exprs!6677 lt!2482317)))))

(assert (=> bm!633639 d!2174548))

(declare-fun b!6982490 () Bool)

(declare-fun res!2847298 () Bool)

(declare-fun e!4196601 () Bool)

(assert (=> b!6982490 (=> (not res!2847298) (not e!4196601))))

(declare-fun lt!2482408 () List!67088)

(assert (=> b!6982490 (= res!2847298 (= (size!40881 lt!2482408) (+ (size!40881 (t!380831 lt!2482321)) (size!40881 (exprs!6677 ct2!306)))))))

(declare-fun b!6982489 () Bool)

(declare-fun e!4196602 () List!67088)

(assert (=> b!6982489 (= e!4196602 (Cons!66964 (h!73412 (t!380831 lt!2482321)) (++!15126 (t!380831 (t!380831 lt!2482321)) (exprs!6677 ct2!306))))))

(declare-fun d!2174550 () Bool)

(assert (=> d!2174550 e!4196601))

(declare-fun res!2847299 () Bool)

(assert (=> d!2174550 (=> (not res!2847299) (not e!4196601))))

(assert (=> d!2174550 (= res!2847299 (= (content!13213 lt!2482408) ((_ map or) (content!13213 (t!380831 lt!2482321)) (content!13213 (exprs!6677 ct2!306)))))))

(assert (=> d!2174550 (= lt!2482408 e!4196602)))

(declare-fun c!1294517 () Bool)

(assert (=> d!2174550 (= c!1294517 ((_ is Nil!66964) (t!380831 lt!2482321)))))

(assert (=> d!2174550 (= (++!15126 (t!380831 lt!2482321) (exprs!6677 ct2!306)) lt!2482408)))

(declare-fun b!6982488 () Bool)

(assert (=> b!6982488 (= e!4196602 (exprs!6677 ct2!306))))

(declare-fun b!6982491 () Bool)

(assert (=> b!6982491 (= e!4196601 (or (not (= (exprs!6677 ct2!306) Nil!66964)) (= lt!2482408 (t!380831 lt!2482321))))))

(assert (= (and d!2174550 c!1294517) b!6982488))

(assert (= (and d!2174550 (not c!1294517)) b!6982489))

(assert (= (and d!2174550 res!2847299) b!6982490))

(assert (= (and b!6982490 res!2847298) b!6982491))

(declare-fun m!7669200 () Bool)

(assert (=> b!6982490 m!7669200))

(assert (=> b!6982490 m!7669196))

(assert (=> b!6982490 m!7668694))

(declare-fun m!7669202 () Bool)

(assert (=> b!6982489 m!7669202))

(declare-fun m!7669204 () Bool)

(assert (=> d!2174550 m!7669204))

(declare-fun m!7669206 () Bool)

(assert (=> d!2174550 m!7669206))

(assert (=> d!2174550 m!7668702))

(assert (=> b!6982104 d!2174550))

(declare-fun d!2174552 () Bool)

(assert (=> d!2174552 (= (isEmpty!39089 s!7408) ((_ is Nil!66965) s!7408))))

(assert (=> d!2174370 d!2174552))

(declare-fun d!2174554 () Bool)

(declare-fun res!2847304 () Bool)

(declare-fun e!4196607 () Bool)

(assert (=> d!2174554 (=> res!2847304 e!4196607)))

(assert (=> d!2174554 (= res!2847304 ((_ is Nil!66966) lt!2482329))))

(assert (=> d!2174554 (= (forall!16077 lt!2482329 lambda!399493) e!4196607)))

(declare-fun b!6982496 () Bool)

(declare-fun e!4196608 () Bool)

(assert (=> b!6982496 (= e!4196607 e!4196608)))

(declare-fun res!2847305 () Bool)

(assert (=> b!6982496 (=> (not res!2847305) (not e!4196608))))

(assert (=> b!6982496 (= res!2847305 (dynLambda!26787 lambda!399493 (h!73414 lt!2482329)))))

(declare-fun b!6982497 () Bool)

(assert (=> b!6982497 (= e!4196608 (forall!16077 (t!380833 lt!2482329) lambda!399493))))

(assert (= (and d!2174554 (not res!2847304)) b!6982496))

(assert (= (and b!6982496 res!2847305) b!6982497))

(declare-fun b_lambda!261821 () Bool)

(assert (=> (not b_lambda!261821) (not b!6982496)))

(declare-fun m!7669208 () Bool)

(assert (=> b!6982496 m!7669208))

(declare-fun m!7669210 () Bool)

(assert (=> b!6982497 m!7669210))

(assert (=> d!2174376 d!2174554))

(declare-fun d!2174556 () Bool)

(declare-fun c!1294519 () Bool)

(declare-fun e!4196609 () Bool)

(assert (=> d!2174556 (= c!1294519 e!4196609)))

(declare-fun res!2847306 () Bool)

(assert (=> d!2174556 (=> (not res!2847306) (not e!4196609))))

(assert (=> d!2174556 (= res!2847306 ((_ is Cons!66964) (exprs!6677 (Context!12355 (t!380831 (exprs!6677 lt!2482317))))))))

(declare-fun e!4196610 () (InoxSet Context!12354))

(assert (=> d!2174556 (= (derivationStepZipperUp!1831 (Context!12355 (t!380831 (exprs!6677 lt!2482317))) (h!73413 s!7408)) e!4196610)))

(declare-fun b!6982498 () Bool)

(assert (=> b!6982498 (= e!4196609 (nullable!6941 (h!73412 (exprs!6677 (Context!12355 (t!380831 (exprs!6677 lt!2482317)))))))))

(declare-fun b!6982499 () Bool)

(declare-fun e!4196611 () (InoxSet Context!12354))

(assert (=> b!6982499 (= e!4196610 e!4196611)))

(declare-fun c!1294518 () Bool)

(assert (=> b!6982499 (= c!1294518 ((_ is Cons!66964) (exprs!6677 (Context!12355 (t!380831 (exprs!6677 lt!2482317))))))))

(declare-fun b!6982500 () Bool)

(assert (=> b!6982500 (= e!4196611 ((as const (Array Context!12354 Bool)) false))))

(declare-fun bm!633690 () Bool)

(declare-fun call!633695 () (InoxSet Context!12354))

(assert (=> bm!633690 (= call!633695 (derivationStepZipperDown!1899 (h!73412 (exprs!6677 (Context!12355 (t!380831 (exprs!6677 lt!2482317))))) (Context!12355 (t!380831 (exprs!6677 (Context!12355 (t!380831 (exprs!6677 lt!2482317)))))) (h!73413 s!7408)))))

(declare-fun b!6982501 () Bool)

(assert (=> b!6982501 (= e!4196611 call!633695)))

(declare-fun b!6982502 () Bool)

(assert (=> b!6982502 (= e!4196610 ((_ map or) call!633695 (derivationStepZipperUp!1831 (Context!12355 (t!380831 (exprs!6677 (Context!12355 (t!380831 (exprs!6677 lt!2482317)))))) (h!73413 s!7408))))))

(assert (= (and d!2174556 res!2847306) b!6982498))

(assert (= (and d!2174556 c!1294519) b!6982502))

(assert (= (and d!2174556 (not c!1294519)) b!6982499))

(assert (= (and b!6982499 c!1294518) b!6982501))

(assert (= (and b!6982499 (not c!1294518)) b!6982500))

(assert (= (or b!6982502 b!6982501) bm!633690))

(declare-fun m!7669212 () Bool)

(assert (=> b!6982498 m!7669212))

(declare-fun m!7669214 () Bool)

(assert (=> bm!633690 m!7669214))

(declare-fun m!7669216 () Bool)

(assert (=> b!6982502 m!7669216))

(assert (=> b!6982139 d!2174556))

(declare-fun d!2174558 () Bool)

(declare-fun c!1294520 () Bool)

(assert (=> d!2174558 (= c!1294520 (isEmpty!39089 (tail!13165 s!7408)))))

(declare-fun e!4196612 () Bool)

(assert (=> d!2174558 (= (matchZipper!2721 (derivationStepZipper!2661 lt!2482318 (head!14082 s!7408)) (tail!13165 s!7408)) e!4196612)))

(declare-fun b!6982503 () Bool)

(assert (=> b!6982503 (= e!4196612 (nullableZipper!2410 (derivationStepZipper!2661 lt!2482318 (head!14082 s!7408))))))

(declare-fun b!6982504 () Bool)

(assert (=> b!6982504 (= e!4196612 (matchZipper!2721 (derivationStepZipper!2661 (derivationStepZipper!2661 lt!2482318 (head!14082 s!7408)) (head!14082 (tail!13165 s!7408))) (tail!13165 (tail!13165 s!7408))))))

(assert (= (and d!2174558 c!1294520) b!6982503))

(assert (= (and d!2174558 (not c!1294520)) b!6982504))

(assert (=> d!2174558 m!7668848))

(declare-fun m!7669218 () Bool)

(assert (=> d!2174558 m!7669218))

(assert (=> b!6982503 m!7668858))

(declare-fun m!7669220 () Bool)

(assert (=> b!6982503 m!7669220))

(assert (=> b!6982504 m!7668848))

(declare-fun m!7669222 () Bool)

(assert (=> b!6982504 m!7669222))

(assert (=> b!6982504 m!7668858))

(assert (=> b!6982504 m!7669222))

(declare-fun m!7669224 () Bool)

(assert (=> b!6982504 m!7669224))

(assert (=> b!6982504 m!7668848))

(declare-fun m!7669226 () Bool)

(assert (=> b!6982504 m!7669226))

(assert (=> b!6982504 m!7669224))

(assert (=> b!6982504 m!7669226))

(declare-fun m!7669228 () Bool)

(assert (=> b!6982504 m!7669228))

(assert (=> b!6982207 d!2174558))

(declare-fun bs!1861094 () Bool)

(declare-fun d!2174560 () Bool)

(assert (= bs!1861094 (and d!2174560 b!6981960)))

(declare-fun lambda!399511 () Int)

(assert (=> bs!1861094 (= (= (head!14082 s!7408) (h!73413 s!7408)) (= lambda!399511 lambda!399463))))

(declare-fun bs!1861095 () Bool)

(assert (= bs!1861095 (and d!2174560 d!2174380)))

(assert (=> bs!1861095 (= (= (head!14082 s!7408) (h!73413 s!7408)) (= lambda!399511 lambda!399499))))

(assert (=> d!2174560 true))

(assert (=> d!2174560 (= (derivationStepZipper!2661 lt!2482318 (head!14082 s!7408)) (flatMap!2167 lt!2482318 lambda!399511))))

(declare-fun bs!1861096 () Bool)

(assert (= bs!1861096 d!2174560))

(declare-fun m!7669230 () Bool)

(assert (=> bs!1861096 m!7669230))

(assert (=> b!6982207 d!2174560))

(declare-fun d!2174562 () Bool)

(assert (=> d!2174562 (= (head!14082 s!7408) (h!73413 s!7408))))

(assert (=> b!6982207 d!2174562))

(declare-fun d!2174564 () Bool)

(assert (=> d!2174564 (= (tail!13165 s!7408) (t!380832 s!7408))))

(assert (=> b!6982207 d!2174564))

(declare-fun bs!1861097 () Bool)

(declare-fun d!2174566 () Bool)

(assert (= bs!1861097 (and d!2174566 b!6981954)))

(declare-fun lambda!399514 () Int)

(assert (=> bs!1861097 (not (= lambda!399514 lambda!399460))))

(declare-fun bs!1861098 () Bool)

(assert (= bs!1861098 (and d!2174566 d!2174376)))

(assert (=> bs!1861098 (not (= lambda!399514 lambda!399493))))

(declare-fun bs!1861099 () Bool)

(assert (= bs!1861099 (and d!2174566 d!2174378)))

(assert (=> bs!1861099 (not (= lambda!399514 lambda!399496))))

(assert (=> d!2174566 (= (nullableZipper!2410 lt!2482318) (exists!2947 lt!2482318 lambda!399514))))

(declare-fun bs!1861100 () Bool)

(assert (= bs!1861100 d!2174566))

(declare-fun m!7669232 () Bool)

(assert (=> bs!1861100 m!7669232))

(assert (=> b!6982206 d!2174566))

(declare-fun d!2174568 () Bool)

(declare-fun c!1294523 () Bool)

(assert (=> d!2174568 (= c!1294523 (isEmpty!39089 (tail!13165 s!7408)))))

(declare-fun e!4196613 () Bool)

(assert (=> d!2174568 (= (matchZipper!2721 (derivationStepZipper!2661 lt!2482327 (head!14082 s!7408)) (tail!13165 s!7408)) e!4196613)))

(declare-fun b!6982505 () Bool)

(assert (=> b!6982505 (= e!4196613 (nullableZipper!2410 (derivationStepZipper!2661 lt!2482327 (head!14082 s!7408))))))

(declare-fun b!6982506 () Bool)

(assert (=> b!6982506 (= e!4196613 (matchZipper!2721 (derivationStepZipper!2661 (derivationStepZipper!2661 lt!2482327 (head!14082 s!7408)) (head!14082 (tail!13165 s!7408))) (tail!13165 (tail!13165 s!7408))))))

(assert (= (and d!2174568 c!1294523) b!6982505))

(assert (= (and d!2174568 (not c!1294523)) b!6982506))

(assert (=> d!2174568 m!7668848))

(assert (=> d!2174568 m!7669218))

(assert (=> b!6982505 m!7668846))

(declare-fun m!7669234 () Bool)

(assert (=> b!6982505 m!7669234))

(assert (=> b!6982506 m!7668848))

(assert (=> b!6982506 m!7669222))

(assert (=> b!6982506 m!7668846))

(assert (=> b!6982506 m!7669222))

(declare-fun m!7669236 () Bool)

(assert (=> b!6982506 m!7669236))

(assert (=> b!6982506 m!7668848))

(assert (=> b!6982506 m!7669226))

(assert (=> b!6982506 m!7669236))

(assert (=> b!6982506 m!7669226))

(declare-fun m!7669238 () Bool)

(assert (=> b!6982506 m!7669238))

(assert (=> b!6982205 d!2174568))

(declare-fun bs!1861101 () Bool)

(declare-fun d!2174570 () Bool)

(assert (= bs!1861101 (and d!2174570 b!6981960)))

(declare-fun lambda!399515 () Int)

(assert (=> bs!1861101 (= (= (head!14082 s!7408) (h!73413 s!7408)) (= lambda!399515 lambda!399463))))

(declare-fun bs!1861102 () Bool)

(assert (= bs!1861102 (and d!2174570 d!2174380)))

(assert (=> bs!1861102 (= (= (head!14082 s!7408) (h!73413 s!7408)) (= lambda!399515 lambda!399499))))

(declare-fun bs!1861103 () Bool)

(assert (= bs!1861103 (and d!2174570 d!2174560)))

(assert (=> bs!1861103 (= lambda!399515 lambda!399511)))

(assert (=> d!2174570 true))

(assert (=> d!2174570 (= (derivationStepZipper!2661 lt!2482327 (head!14082 s!7408)) (flatMap!2167 lt!2482327 lambda!399515))))

(declare-fun bs!1861104 () Bool)

(assert (= bs!1861104 d!2174570))

(declare-fun m!7669240 () Bool)

(assert (=> bs!1861104 m!7669240))

(assert (=> b!6982205 d!2174570))

(assert (=> b!6982205 d!2174562))

(assert (=> b!6982205 d!2174564))

(declare-fun d!2174572 () Bool)

(assert (=> d!2174572 (= (nullable!6941 (reg!17510 (h!73412 (exprs!6677 lt!2482316)))) (nullableFct!2613 (reg!17510 (h!73412 (exprs!6677 lt!2482316)))))))

(declare-fun bs!1861105 () Bool)

(assert (= bs!1861105 d!2174572))

(declare-fun m!7669242 () Bool)

(assert (=> bs!1861105 m!7669242))

(assert (=> b!6982196 d!2174572))

(declare-fun d!2174574 () Bool)

(assert (=> d!2174574 (= (nullable!6941 (h!73412 (exprs!6677 lt!2482325))) (nullableFct!2613 (h!73412 (exprs!6677 lt!2482325))))))

(declare-fun bs!1861106 () Bool)

(assert (= bs!1861106 d!2174574))

(declare-fun m!7669244 () Bool)

(assert (=> bs!1861106 m!7669244))

(assert (=> b!6982218 d!2174574))

(declare-fun bs!1861107 () Bool)

(declare-fun d!2174576 () Bool)

(assert (= bs!1861107 (and d!2174576 b!6981954)))

(declare-fun lambda!399516 () Int)

(assert (=> bs!1861107 (not (= lambda!399516 lambda!399460))))

(declare-fun bs!1861108 () Bool)

(assert (= bs!1861108 (and d!2174576 d!2174376)))

(assert (=> bs!1861108 (not (= lambda!399516 lambda!399493))))

(declare-fun bs!1861109 () Bool)

(assert (= bs!1861109 (and d!2174576 d!2174378)))

(assert (=> bs!1861109 (not (= lambda!399516 lambda!399496))))

(declare-fun bs!1861110 () Bool)

(assert (= bs!1861110 (and d!2174576 d!2174566)))

(assert (=> bs!1861110 (= lambda!399516 lambda!399514)))

(assert (=> d!2174576 (= (nullableZipper!2410 lt!2482327) (exists!2947 lt!2482327 lambda!399516))))

(declare-fun bs!1861111 () Bool)

(assert (= bs!1861111 d!2174576))

(declare-fun m!7669246 () Bool)

(assert (=> bs!1861111 m!7669246))

(assert (=> b!6982204 d!2174576))

(declare-fun d!2174578 () Bool)

(assert (=> d!2174578 (= (nullable!6941 (h!73412 (exprs!6677 lt!2482317))) (nullableFct!2613 (h!73412 (exprs!6677 lt!2482317))))))

(declare-fun bs!1861112 () Bool)

(assert (= bs!1861112 d!2174578))

(declare-fun m!7669248 () Bool)

(assert (=> bs!1861112 m!7669248))

(assert (=> b!6982135 d!2174578))

(declare-fun b!6982521 () Bool)

(declare-fun e!4196626 () Bool)

(declare-fun e!4196631 () Bool)

(assert (=> b!6982521 (= e!4196626 e!4196631)))

(declare-fun res!2847320 () Bool)

(declare-fun call!633701 () Bool)

(assert (=> b!6982521 (= res!2847320 call!633701)))

(assert (=> b!6982521 (=> res!2847320 e!4196631)))

(declare-fun bm!633695 () Bool)

(declare-fun c!1294526 () Bool)

(assert (=> bm!633695 (= call!633701 (nullable!6941 (ite c!1294526 (regOne!34875 (h!73412 (exprs!6677 lt!2482316))) (regTwo!34874 (h!73412 (exprs!6677 lt!2482316))))))))

(declare-fun b!6982522 () Bool)

(declare-fun e!4196628 () Bool)

(assert (=> b!6982522 (= e!4196626 e!4196628)))

(declare-fun res!2847318 () Bool)

(declare-fun call!633700 () Bool)

(assert (=> b!6982522 (= res!2847318 call!633700)))

(assert (=> b!6982522 (=> (not res!2847318) (not e!4196628))))

(declare-fun b!6982523 () Bool)

(declare-fun e!4196630 () Bool)

(declare-fun e!4196629 () Bool)

(assert (=> b!6982523 (= e!4196630 e!4196629)))

(declare-fun res!2847319 () Bool)

(assert (=> b!6982523 (=> (not res!2847319) (not e!4196629))))

(assert (=> b!6982523 (= res!2847319 (and (not ((_ is EmptyLang!17181) (h!73412 (exprs!6677 lt!2482316)))) (not ((_ is ElementMatch!17181) (h!73412 (exprs!6677 lt!2482316))))))))

(declare-fun d!2174580 () Bool)

(declare-fun res!2847317 () Bool)

(assert (=> d!2174580 (=> res!2847317 e!4196630)))

(assert (=> d!2174580 (= res!2847317 ((_ is EmptyExpr!17181) (h!73412 (exprs!6677 lt!2482316))))))

(assert (=> d!2174580 (= (nullableFct!2613 (h!73412 (exprs!6677 lt!2482316))) e!4196630)))

(declare-fun b!6982524 () Bool)

(declare-fun e!4196627 () Bool)

(assert (=> b!6982524 (= e!4196627 e!4196626)))

(assert (=> b!6982524 (= c!1294526 ((_ is Union!17181) (h!73412 (exprs!6677 lt!2482316))))))

(declare-fun b!6982525 () Bool)

(assert (=> b!6982525 (= e!4196631 call!633700)))

(declare-fun bm!633696 () Bool)

(assert (=> bm!633696 (= call!633700 (nullable!6941 (ite c!1294526 (regTwo!34875 (h!73412 (exprs!6677 lt!2482316))) (regOne!34874 (h!73412 (exprs!6677 lt!2482316))))))))

(declare-fun b!6982526 () Bool)

(assert (=> b!6982526 (= e!4196629 e!4196627)))

(declare-fun res!2847321 () Bool)

(assert (=> b!6982526 (=> res!2847321 e!4196627)))

(assert (=> b!6982526 (= res!2847321 ((_ is Star!17181) (h!73412 (exprs!6677 lt!2482316))))))

(declare-fun b!6982527 () Bool)

(assert (=> b!6982527 (= e!4196628 call!633701)))

(assert (= (and d!2174580 (not res!2847317)) b!6982523))

(assert (= (and b!6982523 res!2847319) b!6982526))

(assert (= (and b!6982526 (not res!2847321)) b!6982524))

(assert (= (and b!6982524 c!1294526) b!6982521))

(assert (= (and b!6982524 (not c!1294526)) b!6982522))

(assert (= (and b!6982521 (not res!2847320)) b!6982525))

(assert (= (and b!6982522 res!2847318) b!6982527))

(assert (= (or b!6982525 b!6982522) bm!633696))

(assert (= (or b!6982521 b!6982527) bm!633695))

(declare-fun m!7669250 () Bool)

(assert (=> bm!633695 m!7669250))

(declare-fun m!7669252 () Bool)

(assert (=> bm!633696 m!7669252))

(assert (=> d!2174358 d!2174580))

(assert (=> d!2174384 d!2174382))

(declare-fun d!2174582 () Bool)

(assert (=> d!2174582 (= (flatMap!2167 lt!2482320 lambda!399463) (dynLambda!26789 lambda!399463 lt!2482325))))

(assert (=> d!2174582 true))

(declare-fun _$13!4367 () Unit!161014)

(assert (=> d!2174582 (= (choose!52087 lt!2482320 lt!2482325 lambda!399463) _$13!4367)))

(declare-fun b_lambda!261823 () Bool)

(assert (=> (not b_lambda!261823) (not d!2174582)))

(declare-fun bs!1861113 () Bool)

(assert (= bs!1861113 d!2174582))

(assert (=> bs!1861113 m!7668598))

(assert (=> bs!1861113 m!7668890))

(assert (=> d!2174384 d!2174582))

(assert (=> bs!1861037 d!2174386))

(declare-fun d!2174584 () Bool)

(declare-fun res!2847326 () Bool)

(declare-fun e!4196636 () Bool)

(assert (=> d!2174584 (=> res!2847326 e!4196636)))

(assert (=> d!2174584 (= res!2847326 ((_ is Nil!66964) (exprs!6677 setElem!47573)))))

(assert (=> d!2174584 (= (forall!16076 (exprs!6677 setElem!47573) lambda!399477) e!4196636)))

(declare-fun b!6982532 () Bool)

(declare-fun e!4196637 () Bool)

(assert (=> b!6982532 (= e!4196636 e!4196637)))

(declare-fun res!2847327 () Bool)

(assert (=> b!6982532 (=> (not res!2847327) (not e!4196637))))

(declare-fun dynLambda!26791 (Int Regex!17181) Bool)

(assert (=> b!6982532 (= res!2847327 (dynLambda!26791 lambda!399477 (h!73412 (exprs!6677 setElem!47573))))))

(declare-fun b!6982533 () Bool)

(assert (=> b!6982533 (= e!4196637 (forall!16076 (t!380831 (exprs!6677 setElem!47573)) lambda!399477))))

(assert (= (and d!2174584 (not res!2847326)) b!6982532))

(assert (= (and b!6982532 res!2847327) b!6982533))

(declare-fun b_lambda!261825 () Bool)

(assert (=> (not b_lambda!261825) (not b!6982532)))

(declare-fun m!7669254 () Bool)

(assert (=> b!6982532 m!7669254))

(declare-fun m!7669256 () Bool)

(assert (=> b!6982533 m!7669256))

(assert (=> d!2174330 d!2174584))

(declare-fun c!1294530 () Bool)

(declare-fun bm!633697 () Bool)

(declare-fun c!1294529 () Bool)

(declare-fun c!1294528 () Bool)

(declare-fun call!633707 () (InoxSet Context!12354))

(declare-fun call!633705 () List!67088)

(assert (=> bm!633697 (= call!633707 (derivationStepZipperDown!1899 (ite c!1294530 (regOne!34875 (h!73412 (exprs!6677 lt!2482317))) (ite c!1294528 (regTwo!34874 (h!73412 (exprs!6677 lt!2482317))) (ite c!1294529 (regOne!34874 (h!73412 (exprs!6677 lt!2482317))) (reg!17510 (h!73412 (exprs!6677 lt!2482317)))))) (ite (or c!1294530 c!1294528) (Context!12355 (t!380831 (exprs!6677 lt!2482317))) (Context!12355 call!633705)) (h!73413 s!7408)))))

(declare-fun bm!633698 () Bool)

(declare-fun call!633703 () (InoxSet Context!12354))

(declare-fun call!633706 () (InoxSet Context!12354))

(assert (=> bm!633698 (= call!633703 call!633706)))

(declare-fun b!6982534 () Bool)

(declare-fun e!4196640 () (InoxSet Context!12354))

(assert (=> b!6982534 (= e!4196640 call!633703)))

(declare-fun b!6982535 () Bool)

(declare-fun e!4196639 () (InoxSet Context!12354))

(assert (=> b!6982535 (= e!4196639 (store ((as const (Array Context!12354 Bool)) false) (Context!12355 (t!380831 (exprs!6677 lt!2482317))) true))))

(declare-fun b!6982536 () Bool)

(declare-fun e!4196638 () Bool)

(assert (=> b!6982536 (= e!4196638 (nullable!6941 (regOne!34874 (h!73412 (exprs!6677 lt!2482317)))))))

(declare-fun b!6982537 () Bool)

(assert (=> b!6982537 (= e!4196640 ((as const (Array Context!12354 Bool)) false))))

(declare-fun bm!633699 () Bool)

(declare-fun call!633702 () List!67088)

(assert (=> bm!633699 (= call!633705 call!633702)))

(declare-fun b!6982538 () Bool)

(declare-fun c!1294531 () Bool)

(assert (=> b!6982538 (= c!1294531 ((_ is Star!17181) (h!73412 (exprs!6677 lt!2482317))))))

(declare-fun e!4196641 () (InoxSet Context!12354))

(assert (=> b!6982538 (= e!4196641 e!4196640)))

(declare-fun bm!633700 () Bool)

(assert (=> bm!633700 (= call!633702 ($colon$colon!2461 (exprs!6677 (Context!12355 (t!380831 (exprs!6677 lt!2482317)))) (ite (or c!1294528 c!1294529) (regTwo!34874 (h!73412 (exprs!6677 lt!2482317))) (h!73412 (exprs!6677 lt!2482317)))))))

(declare-fun b!6982539 () Bool)

(assert (=> b!6982539 (= c!1294528 e!4196638)))

(declare-fun res!2847328 () Bool)

(assert (=> b!6982539 (=> (not res!2847328) (not e!4196638))))

(assert (=> b!6982539 (= res!2847328 ((_ is Concat!26026) (h!73412 (exprs!6677 lt!2482317))))))

(declare-fun e!4196643 () (InoxSet Context!12354))

(declare-fun e!4196642 () (InoxSet Context!12354))

(assert (=> b!6982539 (= e!4196643 e!4196642)))

(declare-fun b!6982540 () Bool)

(assert (=> b!6982540 (= e!4196641 call!633703)))

(declare-fun b!6982541 () Bool)

(assert (=> b!6982541 (= e!4196642 e!4196641)))

(assert (=> b!6982541 (= c!1294529 ((_ is Concat!26026) (h!73412 (exprs!6677 lt!2482317))))))

(declare-fun d!2174586 () Bool)

(declare-fun c!1294527 () Bool)

(assert (=> d!2174586 (= c!1294527 (and ((_ is ElementMatch!17181) (h!73412 (exprs!6677 lt!2482317))) (= (c!1294360 (h!73412 (exprs!6677 lt!2482317))) (h!73413 s!7408))))))

(assert (=> d!2174586 (= (derivationStepZipperDown!1899 (h!73412 (exprs!6677 lt!2482317)) (Context!12355 (t!380831 (exprs!6677 lt!2482317))) (h!73413 s!7408)) e!4196639)))

(declare-fun bm!633701 () Bool)

(declare-fun call!633704 () (InoxSet Context!12354))

(assert (=> bm!633701 (= call!633704 (derivationStepZipperDown!1899 (ite c!1294530 (regTwo!34875 (h!73412 (exprs!6677 lt!2482317))) (regOne!34874 (h!73412 (exprs!6677 lt!2482317)))) (ite c!1294530 (Context!12355 (t!380831 (exprs!6677 lt!2482317))) (Context!12355 call!633702)) (h!73413 s!7408)))))

(declare-fun b!6982542 () Bool)

(assert (=> b!6982542 (= e!4196639 e!4196643)))

(assert (=> b!6982542 (= c!1294530 ((_ is Union!17181) (h!73412 (exprs!6677 lt!2482317))))))

(declare-fun bm!633702 () Bool)

(assert (=> bm!633702 (= call!633706 call!633707)))

(declare-fun b!6982543 () Bool)

(assert (=> b!6982543 (= e!4196642 ((_ map or) call!633704 call!633706))))

(declare-fun b!6982544 () Bool)

(assert (=> b!6982544 (= e!4196643 ((_ map or) call!633707 call!633704))))

(assert (= (and d!2174586 c!1294527) b!6982535))

(assert (= (and d!2174586 (not c!1294527)) b!6982542))

(assert (= (and b!6982542 c!1294530) b!6982544))

(assert (= (and b!6982542 (not c!1294530)) b!6982539))

(assert (= (and b!6982539 res!2847328) b!6982536))

(assert (= (and b!6982539 c!1294528) b!6982543))

(assert (= (and b!6982539 (not c!1294528)) b!6982541))

(assert (= (and b!6982541 c!1294529) b!6982540))

(assert (= (and b!6982541 (not c!1294529)) b!6982538))

(assert (= (and b!6982538 c!1294531) b!6982534))

(assert (= (and b!6982538 (not c!1294531)) b!6982537))

(assert (= (or b!6982540 b!6982534) bm!633699))

(assert (= (or b!6982540 b!6982534) bm!633698))

(assert (= (or b!6982543 bm!633698) bm!633702))

(assert (= (or b!6982543 bm!633699) bm!633700))

(assert (= (or b!6982544 bm!633702) bm!633697))

(assert (= (or b!6982544 b!6982543) bm!633701))

(declare-fun m!7669258 () Bool)

(assert (=> bm!633697 m!7669258))

(declare-fun m!7669260 () Bool)

(assert (=> b!6982536 m!7669260))

(declare-fun m!7669262 () Bool)

(assert (=> bm!633700 m!7669262))

(declare-fun m!7669264 () Bool)

(assert (=> b!6982535 m!7669264))

(declare-fun m!7669266 () Bool)

(assert (=> bm!633701 m!7669266))

(assert (=> bm!633623 d!2174586))

(declare-fun d!2174588 () Bool)

(assert (=> d!2174588 (= (nullable!6941 (regOne!34874 (h!73412 (exprs!6677 lt!2482316)))) (nullableFct!2613 (regOne!34874 (h!73412 (exprs!6677 lt!2482316)))))))

(declare-fun bs!1861114 () Bool)

(assert (= bs!1861114 d!2174588))

(declare-fun m!7669268 () Bool)

(assert (=> bs!1861114 m!7669268))

(assert (=> b!6982164 d!2174588))

(declare-fun d!2174590 () Bool)

(declare-fun choose!52090 ((InoxSet Context!12354) Int) (InoxSet Context!12354))

(assert (=> d!2174590 (= (map!15437 z1!570 lambda!399489) (choose!52090 z1!570 lambda!399489))))

(declare-fun bs!1861115 () Bool)

(assert (= bs!1861115 d!2174590))

(declare-fun m!7669270 () Bool)

(assert (=> bs!1861115 m!7669270))

(assert (=> d!2174364 d!2174590))

(declare-fun d!2174592 () Bool)

(assert (=> d!2174592 (forall!16076 (++!15126 (exprs!6677 lt!2482354) (exprs!6677 ct2!306)) lambda!399462)))

(declare-fun lt!2482409 () Unit!161014)

(assert (=> d!2174592 (= lt!2482409 (choose!52082 (exprs!6677 lt!2482354) (exprs!6677 ct2!306) lambda!399462))))

(assert (=> d!2174592 (forall!16076 (exprs!6677 lt!2482354) lambda!399462)))

(assert (=> d!2174592 (= (lemmaConcatPreservesForall!517 (exprs!6677 lt!2482354) (exprs!6677 ct2!306) lambda!399462) lt!2482409)))

(declare-fun bs!1861116 () Bool)

(assert (= bs!1861116 d!2174592))

(assert (=> bs!1861116 m!7668904))

(assert (=> bs!1861116 m!7668904))

(declare-fun m!7669272 () Bool)

(assert (=> bs!1861116 m!7669272))

(declare-fun m!7669274 () Bool)

(assert (=> bs!1861116 m!7669274))

(declare-fun m!7669276 () Bool)

(assert (=> bs!1861116 m!7669276))

(assert (=> bs!1861036 d!2174592))

(declare-fun b!6982547 () Bool)

(declare-fun res!2847329 () Bool)

(declare-fun e!4196644 () Bool)

(assert (=> b!6982547 (=> (not res!2847329) (not e!4196644))))

(declare-fun lt!2482410 () List!67088)

(assert (=> b!6982547 (= res!2847329 (= (size!40881 lt!2482410) (+ (size!40881 (exprs!6677 lt!2482354)) (size!40881 (exprs!6677 ct2!306)))))))

(declare-fun b!6982546 () Bool)

(declare-fun e!4196645 () List!67088)

(assert (=> b!6982546 (= e!4196645 (Cons!66964 (h!73412 (exprs!6677 lt!2482354)) (++!15126 (t!380831 (exprs!6677 lt!2482354)) (exprs!6677 ct2!306))))))

(declare-fun d!2174594 () Bool)

(assert (=> d!2174594 e!4196644))

(declare-fun res!2847330 () Bool)

(assert (=> d!2174594 (=> (not res!2847330) (not e!4196644))))

(assert (=> d!2174594 (= res!2847330 (= (content!13213 lt!2482410) ((_ map or) (content!13213 (exprs!6677 lt!2482354)) (content!13213 (exprs!6677 ct2!306)))))))

(assert (=> d!2174594 (= lt!2482410 e!4196645)))

(declare-fun c!1294532 () Bool)

(assert (=> d!2174594 (= c!1294532 ((_ is Nil!66964) (exprs!6677 lt!2482354)))))

(assert (=> d!2174594 (= (++!15126 (exprs!6677 lt!2482354) (exprs!6677 ct2!306)) lt!2482410)))

(declare-fun b!6982545 () Bool)

(assert (=> b!6982545 (= e!4196645 (exprs!6677 ct2!306))))

(declare-fun b!6982548 () Bool)

(assert (=> b!6982548 (= e!4196644 (or (not (= (exprs!6677 ct2!306) Nil!66964)) (= lt!2482410 (exprs!6677 lt!2482354))))))

(assert (= (and d!2174594 c!1294532) b!6982545))

(assert (= (and d!2174594 (not c!1294532)) b!6982546))

(assert (= (and d!2174594 res!2847330) b!6982547))

(assert (= (and b!6982547 res!2847329) b!6982548))

(declare-fun m!7669278 () Bool)

(assert (=> b!6982547 m!7669278))

(declare-fun m!7669280 () Bool)

(assert (=> b!6982547 m!7669280))

(assert (=> b!6982547 m!7668694))

(declare-fun m!7669282 () Bool)

(assert (=> b!6982546 m!7669282))

(declare-fun m!7669284 () Bool)

(assert (=> d!2174594 m!7669284))

(declare-fun m!7669286 () Bool)

(assert (=> d!2174594 m!7669286))

(assert (=> d!2174594 m!7668702))

(assert (=> bs!1861036 d!2174594))

(declare-fun d!2174596 () Bool)

(declare-fun e!4196650 () Bool)

(assert (=> d!2174596 e!4196650))

(declare-fun res!2847333 () Bool)

(assert (=> d!2174596 (=> (not res!2847333) (not e!4196650))))

(declare-fun a!12644 () Context!12354)

(assert (=> d!2174596 (= res!2847333 (= lt!2482315 (dynLambda!26786 lambda!399461 a!12644)))))

(declare-fun e!4196651 () Bool)

(assert (=> d!2174596 (and (inv!85811 a!12644) e!4196651)))

(assert (=> d!2174596 (= (choose!52083 z1!570 lambda!399461 lt!2482315) a!12644)))

(declare-fun b!6982554 () Bool)

(declare-fun tp!1928529 () Bool)

(assert (=> b!6982554 (= e!4196651 tp!1928529)))

(declare-fun b!6982555 () Bool)

(assert (=> b!6982555 (= e!4196650 (select z1!570 a!12644))))

(assert (= d!2174596 b!6982554))

(assert (= (and d!2174596 res!2847333) b!6982555))

(declare-fun b_lambda!261827 () Bool)

(assert (=> (not b_lambda!261827) (not d!2174596)))

(declare-fun m!7669288 () Bool)

(assert (=> d!2174596 m!7669288))

(declare-fun m!7669290 () Bool)

(assert (=> d!2174596 m!7669290))

(declare-fun m!7669292 () Bool)

(assert (=> b!6982555 m!7669292))

(assert (=> d!2174322 d!2174596))

(declare-fun d!2174598 () Bool)

(assert (=> d!2174598 (= (map!15437 z1!570 lambda!399461) (choose!52090 z1!570 lambda!399461))))

(declare-fun bs!1861117 () Bool)

(assert (= bs!1861117 d!2174598))

(declare-fun m!7669294 () Bool)

(assert (=> bs!1861117 m!7669294))

(assert (=> d!2174322 d!2174598))

(declare-fun d!2174600 () Bool)

(assert (=> d!2174600 true))

(declare-fun setRes!47586 () Bool)

(assert (=> d!2174600 setRes!47586))

(declare-fun condSetEmpty!47586 () Bool)

(declare-fun res!2847336 () (InoxSet Context!12354))

(assert (=> d!2174600 (= condSetEmpty!47586 (= res!2847336 ((as const (Array Context!12354 Bool)) false)))))

(assert (=> d!2174600 (= (choose!52086 lt!2482320 lambda!399463) res!2847336)))

(declare-fun setIsEmpty!47586 () Bool)

(assert (=> setIsEmpty!47586 setRes!47586))

(declare-fun e!4196654 () Bool)

(declare-fun tp!1928535 () Bool)

(declare-fun setNonEmpty!47586 () Bool)

(declare-fun setElem!47586 () Context!12354)

(assert (=> setNonEmpty!47586 (= setRes!47586 (and tp!1928535 (inv!85811 setElem!47586) e!4196654))))

(declare-fun setRest!47586 () (InoxSet Context!12354))

(assert (=> setNonEmpty!47586 (= res!2847336 ((_ map or) (store ((as const (Array Context!12354 Bool)) false) setElem!47586 true) setRest!47586))))

(declare-fun b!6982558 () Bool)

(declare-fun tp!1928534 () Bool)

(assert (=> b!6982558 (= e!4196654 tp!1928534)))

(assert (= (and d!2174600 condSetEmpty!47586) setIsEmpty!47586))

(assert (= (and d!2174600 (not condSetEmpty!47586)) setNonEmpty!47586))

(assert (= setNonEmpty!47586 b!6982558))

(declare-fun m!7669296 () Bool)

(assert (=> setNonEmpty!47586 m!7669296))

(assert (=> d!2174382 d!2174600))

(declare-fun d!2174602 () Bool)

(assert (=> d!2174602 (= (flatMap!2167 lt!2482320 lambda!399499) (choose!52086 lt!2482320 lambda!399499))))

(declare-fun bs!1861118 () Bool)

(assert (= bs!1861118 d!2174602))

(declare-fun m!7669298 () Bool)

(assert (=> bs!1861118 m!7669298))

(assert (=> d!2174380 d!2174602))

(declare-fun d!2174604 () Bool)

(declare-fun res!2847337 () Bool)

(declare-fun e!4196655 () Bool)

(assert (=> d!2174604 (=> res!2847337 e!4196655)))

(assert (=> d!2174604 (= res!2847337 ((_ is Nil!66964) (++!15126 (exprs!6677 lt!2482316) (exprs!6677 ct2!306))))))

(assert (=> d!2174604 (= (forall!16076 (++!15126 (exprs!6677 lt!2482316) (exprs!6677 ct2!306)) lambda!399462) e!4196655)))

(declare-fun b!6982559 () Bool)

(declare-fun e!4196656 () Bool)

(assert (=> b!6982559 (= e!4196655 e!4196656)))

(declare-fun res!2847338 () Bool)

(assert (=> b!6982559 (=> (not res!2847338) (not e!4196656))))

(assert (=> b!6982559 (= res!2847338 (dynLambda!26791 lambda!399462 (h!73412 (++!15126 (exprs!6677 lt!2482316) (exprs!6677 ct2!306)))))))

(declare-fun b!6982560 () Bool)

(assert (=> b!6982560 (= e!4196656 (forall!16076 (t!380831 (++!15126 (exprs!6677 lt!2482316) (exprs!6677 ct2!306))) lambda!399462))))

(assert (= (and d!2174604 (not res!2847337)) b!6982559))

(assert (= (and b!6982559 res!2847338) b!6982560))

(declare-fun b_lambda!261829 () Bool)

(assert (=> (not b_lambda!261829) (not b!6982559)))

(declare-fun m!7669300 () Bool)

(assert (=> b!6982559 m!7669300))

(declare-fun m!7669302 () Bool)

(assert (=> b!6982560 m!7669302))

(assert (=> d!2174316 d!2174604))

(assert (=> d!2174316 d!2174312))

(declare-fun d!2174606 () Bool)

(assert (=> d!2174606 (forall!16076 (++!15126 (exprs!6677 lt!2482316) (exprs!6677 ct2!306)) lambda!399462)))

(assert (=> d!2174606 true))

(declare-fun _$78!483 () Unit!161014)

(assert (=> d!2174606 (= (choose!52082 (exprs!6677 lt!2482316) (exprs!6677 ct2!306) lambda!399462) _$78!483)))

(declare-fun bs!1861119 () Bool)

(assert (= bs!1861119 d!2174606))

(assert (=> bs!1861119 m!7668584))

(assert (=> bs!1861119 m!7668584))

(assert (=> bs!1861119 m!7668720))

(assert (=> d!2174316 d!2174606))

(declare-fun d!2174608 () Bool)

(declare-fun res!2847339 () Bool)

(declare-fun e!4196657 () Bool)

(assert (=> d!2174608 (=> res!2847339 e!4196657)))

(assert (=> d!2174608 (= res!2847339 ((_ is Nil!66964) (exprs!6677 lt!2482316)))))

(assert (=> d!2174608 (= (forall!16076 (exprs!6677 lt!2482316) lambda!399462) e!4196657)))

(declare-fun b!6982561 () Bool)

(declare-fun e!4196658 () Bool)

(assert (=> b!6982561 (= e!4196657 e!4196658)))

(declare-fun res!2847340 () Bool)

(assert (=> b!6982561 (=> (not res!2847340) (not e!4196658))))

(assert (=> b!6982561 (= res!2847340 (dynLambda!26791 lambda!399462 (h!73412 (exprs!6677 lt!2482316))))))

(declare-fun b!6982562 () Bool)

(assert (=> b!6982562 (= e!4196658 (forall!16076 (t!380831 (exprs!6677 lt!2482316)) lambda!399462))))

(assert (= (and d!2174608 (not res!2847339)) b!6982561))

(assert (= (and b!6982561 res!2847340) b!6982562))

(declare-fun b_lambda!261831 () Bool)

(assert (=> (not b_lambda!261831) (not b!6982561)))

(declare-fun m!7669304 () Bool)

(assert (=> b!6982561 m!7669304))

(declare-fun m!7669306 () Bool)

(assert (=> b!6982562 m!7669306))

(assert (=> d!2174316 d!2174608))

(declare-fun b!6982565 () Bool)

(declare-fun res!2847341 () Bool)

(declare-fun e!4196659 () Bool)

(assert (=> b!6982565 (=> (not res!2847341) (not e!4196659))))

(declare-fun lt!2482411 () List!67088)

(assert (=> b!6982565 (= res!2847341 (= (size!40881 lt!2482411) (+ (size!40881 (t!380831 (exprs!6677 lt!2482316))) (size!40881 (exprs!6677 ct2!306)))))))

(declare-fun b!6982564 () Bool)

(declare-fun e!4196660 () List!67088)

(assert (=> b!6982564 (= e!4196660 (Cons!66964 (h!73412 (t!380831 (exprs!6677 lt!2482316))) (++!15126 (t!380831 (t!380831 (exprs!6677 lt!2482316))) (exprs!6677 ct2!306))))))

(declare-fun d!2174610 () Bool)

(assert (=> d!2174610 e!4196659))

(declare-fun res!2847342 () Bool)

(assert (=> d!2174610 (=> (not res!2847342) (not e!4196659))))

(assert (=> d!2174610 (= res!2847342 (= (content!13213 lt!2482411) ((_ map or) (content!13213 (t!380831 (exprs!6677 lt!2482316))) (content!13213 (exprs!6677 ct2!306)))))))

(assert (=> d!2174610 (= lt!2482411 e!4196660)))

(declare-fun c!1294533 () Bool)

(assert (=> d!2174610 (= c!1294533 ((_ is Nil!66964) (t!380831 (exprs!6677 lt!2482316))))))

(assert (=> d!2174610 (= (++!15126 (t!380831 (exprs!6677 lt!2482316)) (exprs!6677 ct2!306)) lt!2482411)))

(declare-fun b!6982563 () Bool)

(assert (=> b!6982563 (= e!4196660 (exprs!6677 ct2!306))))

(declare-fun b!6982566 () Bool)

(assert (=> b!6982566 (= e!4196659 (or (not (= (exprs!6677 ct2!306) Nil!66964)) (= lt!2482411 (t!380831 (exprs!6677 lt!2482316)))))))

(assert (= (and d!2174610 c!1294533) b!6982563))

(assert (= (and d!2174610 (not c!1294533)) b!6982564))

(assert (= (and d!2174610 res!2847342) b!6982565))

(assert (= (and b!6982565 res!2847341) b!6982566))

(declare-fun m!7669308 () Bool)

(assert (=> b!6982565 m!7669308))

(declare-fun m!7669310 () Bool)

(assert (=> b!6982565 m!7669310))

(assert (=> b!6982565 m!7668694))

(declare-fun m!7669312 () Bool)

(assert (=> b!6982564 m!7669312))

(declare-fun m!7669314 () Bool)

(assert (=> d!2174610 m!7669314))

(declare-fun m!7669316 () Bool)

(assert (=> d!2174610 m!7669316))

(assert (=> d!2174610 m!7668702))

(assert (=> b!6982064 d!2174610))

(declare-fun b!6982579 () Bool)

(declare-fun e!4196669 () Context!12354)

(assert (=> b!6982579 (= e!4196669 (h!73414 (toList!10541 lt!2482327)))))

(declare-fun b!6982580 () Bool)

(declare-fun e!4196672 () Bool)

(assert (=> b!6982580 (= e!4196672 (dynLambda!26787 lambda!399460 (h!73414 (toList!10541 lt!2482327))))))

(declare-fun d!2174612 () Bool)

(declare-fun e!4196670 () Bool)

(assert (=> d!2174612 e!4196670))

(declare-fun res!2847347 () Bool)

(assert (=> d!2174612 (=> (not res!2847347) (not e!4196670))))

(declare-fun lt!2482416 () Context!12354)

(assert (=> d!2174612 (= res!2847347 (dynLambda!26787 lambda!399460 lt!2482416))))

(assert (=> d!2174612 (= lt!2482416 e!4196669)))

(declare-fun c!1294538 () Bool)

(assert (=> d!2174612 (= c!1294538 e!4196672)))

(declare-fun res!2847348 () Bool)

(assert (=> d!2174612 (=> (not res!2847348) (not e!4196672))))

(assert (=> d!2174612 (= res!2847348 ((_ is Cons!66966) (toList!10541 lt!2482327)))))

(assert (=> d!2174612 (exists!2945 (toList!10541 lt!2482327) lambda!399460)))

(assert (=> d!2174612 (= (getWitness!1058 (toList!10541 lt!2482327) lambda!399460) lt!2482416)))

(declare-fun b!6982581 () Bool)

(declare-fun e!4196671 () Context!12354)

(assert (=> b!6982581 (= e!4196669 e!4196671)))

(declare-fun c!1294539 () Bool)

(assert (=> b!6982581 (= c!1294539 ((_ is Cons!66966) (toList!10541 lt!2482327)))))

(declare-fun b!6982582 () Bool)

(declare-fun lt!2482417 () Unit!161014)

(declare-fun Unit!161017 () Unit!161014)

(assert (=> b!6982582 (= lt!2482417 Unit!161017)))

(assert (=> b!6982582 false))

(declare-fun head!14084 (List!67090) Context!12354)

(assert (=> b!6982582 (= e!4196671 (head!14084 (toList!10541 lt!2482327)))))

(declare-fun b!6982583 () Bool)

(declare-fun contains!20409 (List!67090 Context!12354) Bool)

(assert (=> b!6982583 (= e!4196670 (contains!20409 (toList!10541 lt!2482327) lt!2482416))))

(declare-fun b!6982584 () Bool)

(assert (=> b!6982584 (= e!4196671 (getWitness!1058 (t!380833 (toList!10541 lt!2482327)) lambda!399460))))

(assert (= (and d!2174612 res!2847348) b!6982580))

(assert (= (and d!2174612 c!1294538) b!6982579))

(assert (= (and d!2174612 (not c!1294538)) b!6982581))

(assert (= (and b!6982581 c!1294539) b!6982584))

(assert (= (and b!6982581 (not c!1294539)) b!6982582))

(assert (= (and d!2174612 res!2847347) b!6982583))

(declare-fun b_lambda!261833 () Bool)

(assert (=> (not b_lambda!261833) (not b!6982580)))

(declare-fun b_lambda!261835 () Bool)

(assert (=> (not b_lambda!261835) (not d!2174612)))

(assert (=> b!6982583 m!7668612))

(declare-fun m!7669318 () Bool)

(assert (=> b!6982583 m!7669318))

(declare-fun m!7669320 () Bool)

(assert (=> b!6982580 m!7669320))

(assert (=> b!6982582 m!7668612))

(declare-fun m!7669322 () Bool)

(assert (=> b!6982582 m!7669322))

(declare-fun m!7669324 () Bool)

(assert (=> b!6982584 m!7669324))

(declare-fun m!7669326 () Bool)

(assert (=> d!2174612 m!7669326))

(assert (=> d!2174612 m!7668612))

(declare-fun m!7669328 () Bool)

(assert (=> d!2174612 m!7669328))

(assert (=> d!2174374 d!2174612))

(assert (=> d!2174374 d!2174372))

(declare-fun d!2174614 () Bool)

(declare-fun lt!2482420 () Bool)

(assert (=> d!2174614 (= lt!2482420 (exists!2945 (toList!10541 lt!2482327) lambda!399460))))

(declare-fun choose!52091 ((InoxSet Context!12354) Int) Bool)

(assert (=> d!2174614 (= lt!2482420 (choose!52091 lt!2482327 lambda!399460))))

(assert (=> d!2174614 (= (exists!2947 lt!2482327 lambda!399460) lt!2482420)))

(declare-fun bs!1861120 () Bool)

(assert (= bs!1861120 d!2174614))

(assert (=> bs!1861120 m!7668612))

(assert (=> bs!1861120 m!7668612))

(assert (=> bs!1861120 m!7669328))

(declare-fun m!7669330 () Bool)

(assert (=> bs!1861120 m!7669330))

(assert (=> d!2174374 d!2174614))

(declare-fun c!1294543 () Bool)

(declare-fun c!1294541 () Bool)

(declare-fun bm!633703 () Bool)

(declare-fun call!633711 () List!67088)

(declare-fun c!1294542 () Bool)

(declare-fun call!633713 () (InoxSet Context!12354))

(assert (=> bm!633703 (= call!633713 (derivationStepZipperDown!1899 (ite c!1294543 (regOne!34875 (ite c!1294426 (regOne!34875 (h!73412 (exprs!6677 lt!2482316))) (ite c!1294424 (regTwo!34874 (h!73412 (exprs!6677 lt!2482316))) (ite c!1294425 (regOne!34874 (h!73412 (exprs!6677 lt!2482316))) (reg!17510 (h!73412 (exprs!6677 lt!2482316))))))) (ite c!1294541 (regTwo!34874 (ite c!1294426 (regOne!34875 (h!73412 (exprs!6677 lt!2482316))) (ite c!1294424 (regTwo!34874 (h!73412 (exprs!6677 lt!2482316))) (ite c!1294425 (regOne!34874 (h!73412 (exprs!6677 lt!2482316))) (reg!17510 (h!73412 (exprs!6677 lt!2482316))))))) (ite c!1294542 (regOne!34874 (ite c!1294426 (regOne!34875 (h!73412 (exprs!6677 lt!2482316))) (ite c!1294424 (regTwo!34874 (h!73412 (exprs!6677 lt!2482316))) (ite c!1294425 (regOne!34874 (h!73412 (exprs!6677 lt!2482316))) (reg!17510 (h!73412 (exprs!6677 lt!2482316))))))) (reg!17510 (ite c!1294426 (regOne!34875 (h!73412 (exprs!6677 lt!2482316))) (ite c!1294424 (regTwo!34874 (h!73412 (exprs!6677 lt!2482316))) (ite c!1294425 (regOne!34874 (h!73412 (exprs!6677 lt!2482316))) (reg!17510 (h!73412 (exprs!6677 lt!2482316)))))))))) (ite (or c!1294543 c!1294541) (ite (or c!1294426 c!1294424) lt!2482317 (Context!12355 call!633644)) (Context!12355 call!633711)) (h!73413 s!7408)))))

(declare-fun bm!633704 () Bool)

(declare-fun call!633709 () (InoxSet Context!12354))

(declare-fun call!633712 () (InoxSet Context!12354))

(assert (=> bm!633704 (= call!633709 call!633712)))

(declare-fun b!6982585 () Bool)

(declare-fun e!4196675 () (InoxSet Context!12354))

(assert (=> b!6982585 (= e!4196675 call!633709)))

(declare-fun b!6982586 () Bool)

(declare-fun e!4196674 () (InoxSet Context!12354))

(assert (=> b!6982586 (= e!4196674 (store ((as const (Array Context!12354 Bool)) false) (ite (or c!1294426 c!1294424) lt!2482317 (Context!12355 call!633644)) true))))

(declare-fun b!6982587 () Bool)

(declare-fun e!4196673 () Bool)

(assert (=> b!6982587 (= e!4196673 (nullable!6941 (regOne!34874 (ite c!1294426 (regOne!34875 (h!73412 (exprs!6677 lt!2482316))) (ite c!1294424 (regTwo!34874 (h!73412 (exprs!6677 lt!2482316))) (ite c!1294425 (regOne!34874 (h!73412 (exprs!6677 lt!2482316))) (reg!17510 (h!73412 (exprs!6677 lt!2482316)))))))))))

(declare-fun b!6982588 () Bool)

(assert (=> b!6982588 (= e!4196675 ((as const (Array Context!12354 Bool)) false))))

(declare-fun bm!633705 () Bool)

(declare-fun call!633708 () List!67088)

(assert (=> bm!633705 (= call!633711 call!633708)))

(declare-fun c!1294544 () Bool)

(declare-fun b!6982589 () Bool)

(assert (=> b!6982589 (= c!1294544 ((_ is Star!17181) (ite c!1294426 (regOne!34875 (h!73412 (exprs!6677 lt!2482316))) (ite c!1294424 (regTwo!34874 (h!73412 (exprs!6677 lt!2482316))) (ite c!1294425 (regOne!34874 (h!73412 (exprs!6677 lt!2482316))) (reg!17510 (h!73412 (exprs!6677 lt!2482316))))))))))

(declare-fun e!4196676 () (InoxSet Context!12354))

(assert (=> b!6982589 (= e!4196676 e!4196675)))

(declare-fun bm!633706 () Bool)

(assert (=> bm!633706 (= call!633708 ($colon$colon!2461 (exprs!6677 (ite (or c!1294426 c!1294424) lt!2482317 (Context!12355 call!633644))) (ite (or c!1294541 c!1294542) (regTwo!34874 (ite c!1294426 (regOne!34875 (h!73412 (exprs!6677 lt!2482316))) (ite c!1294424 (regTwo!34874 (h!73412 (exprs!6677 lt!2482316))) (ite c!1294425 (regOne!34874 (h!73412 (exprs!6677 lt!2482316))) (reg!17510 (h!73412 (exprs!6677 lt!2482316))))))) (ite c!1294426 (regOne!34875 (h!73412 (exprs!6677 lt!2482316))) (ite c!1294424 (regTwo!34874 (h!73412 (exprs!6677 lt!2482316))) (ite c!1294425 (regOne!34874 (h!73412 (exprs!6677 lt!2482316))) (reg!17510 (h!73412 (exprs!6677 lt!2482316)))))))))))

(declare-fun b!6982590 () Bool)

(assert (=> b!6982590 (= c!1294541 e!4196673)))

(declare-fun res!2847349 () Bool)

(assert (=> b!6982590 (=> (not res!2847349) (not e!4196673))))

(assert (=> b!6982590 (= res!2847349 ((_ is Concat!26026) (ite c!1294426 (regOne!34875 (h!73412 (exprs!6677 lt!2482316))) (ite c!1294424 (regTwo!34874 (h!73412 (exprs!6677 lt!2482316))) (ite c!1294425 (regOne!34874 (h!73412 (exprs!6677 lt!2482316))) (reg!17510 (h!73412 (exprs!6677 lt!2482316))))))))))

(declare-fun e!4196678 () (InoxSet Context!12354))

(declare-fun e!4196677 () (InoxSet Context!12354))

(assert (=> b!6982590 (= e!4196678 e!4196677)))

(declare-fun b!6982591 () Bool)

(assert (=> b!6982591 (= e!4196676 call!633709)))

(declare-fun b!6982592 () Bool)

(assert (=> b!6982592 (= e!4196677 e!4196676)))

(assert (=> b!6982592 (= c!1294542 ((_ is Concat!26026) (ite c!1294426 (regOne!34875 (h!73412 (exprs!6677 lt!2482316))) (ite c!1294424 (regTwo!34874 (h!73412 (exprs!6677 lt!2482316))) (ite c!1294425 (regOne!34874 (h!73412 (exprs!6677 lt!2482316))) (reg!17510 (h!73412 (exprs!6677 lt!2482316))))))))))

(declare-fun c!1294540 () Bool)

(declare-fun d!2174616 () Bool)

(assert (=> d!2174616 (= c!1294540 (and ((_ is ElementMatch!17181) (ite c!1294426 (regOne!34875 (h!73412 (exprs!6677 lt!2482316))) (ite c!1294424 (regTwo!34874 (h!73412 (exprs!6677 lt!2482316))) (ite c!1294425 (regOne!34874 (h!73412 (exprs!6677 lt!2482316))) (reg!17510 (h!73412 (exprs!6677 lt!2482316))))))) (= (c!1294360 (ite c!1294426 (regOne!34875 (h!73412 (exprs!6677 lt!2482316))) (ite c!1294424 (regTwo!34874 (h!73412 (exprs!6677 lt!2482316))) (ite c!1294425 (regOne!34874 (h!73412 (exprs!6677 lt!2482316))) (reg!17510 (h!73412 (exprs!6677 lt!2482316))))))) (h!73413 s!7408))))))

(assert (=> d!2174616 (= (derivationStepZipperDown!1899 (ite c!1294426 (regOne!34875 (h!73412 (exprs!6677 lt!2482316))) (ite c!1294424 (regTwo!34874 (h!73412 (exprs!6677 lt!2482316))) (ite c!1294425 (regOne!34874 (h!73412 (exprs!6677 lt!2482316))) (reg!17510 (h!73412 (exprs!6677 lt!2482316)))))) (ite (or c!1294426 c!1294424) lt!2482317 (Context!12355 call!633644)) (h!73413 s!7408)) e!4196674)))

(declare-fun call!633710 () (InoxSet Context!12354))

(declare-fun bm!633707 () Bool)

(assert (=> bm!633707 (= call!633710 (derivationStepZipperDown!1899 (ite c!1294543 (regTwo!34875 (ite c!1294426 (regOne!34875 (h!73412 (exprs!6677 lt!2482316))) (ite c!1294424 (regTwo!34874 (h!73412 (exprs!6677 lt!2482316))) (ite c!1294425 (regOne!34874 (h!73412 (exprs!6677 lt!2482316))) (reg!17510 (h!73412 (exprs!6677 lt!2482316))))))) (regOne!34874 (ite c!1294426 (regOne!34875 (h!73412 (exprs!6677 lt!2482316))) (ite c!1294424 (regTwo!34874 (h!73412 (exprs!6677 lt!2482316))) (ite c!1294425 (regOne!34874 (h!73412 (exprs!6677 lt!2482316))) (reg!17510 (h!73412 (exprs!6677 lt!2482316)))))))) (ite c!1294543 (ite (or c!1294426 c!1294424) lt!2482317 (Context!12355 call!633644)) (Context!12355 call!633708)) (h!73413 s!7408)))))

(declare-fun b!6982593 () Bool)

(assert (=> b!6982593 (= e!4196674 e!4196678)))

(assert (=> b!6982593 (= c!1294543 ((_ is Union!17181) (ite c!1294426 (regOne!34875 (h!73412 (exprs!6677 lt!2482316))) (ite c!1294424 (regTwo!34874 (h!73412 (exprs!6677 lt!2482316))) (ite c!1294425 (regOne!34874 (h!73412 (exprs!6677 lt!2482316))) (reg!17510 (h!73412 (exprs!6677 lt!2482316))))))))))

(declare-fun bm!633708 () Bool)

(assert (=> bm!633708 (= call!633712 call!633713)))

(declare-fun b!6982594 () Bool)

(assert (=> b!6982594 (= e!4196677 ((_ map or) call!633710 call!633712))))

(declare-fun b!6982595 () Bool)

(assert (=> b!6982595 (= e!4196678 ((_ map or) call!633713 call!633710))))

(assert (= (and d!2174616 c!1294540) b!6982586))

(assert (= (and d!2174616 (not c!1294540)) b!6982593))

(assert (= (and b!6982593 c!1294543) b!6982595))

(assert (= (and b!6982593 (not c!1294543)) b!6982590))

(assert (= (and b!6982590 res!2847349) b!6982587))

(assert (= (and b!6982590 c!1294541) b!6982594))

(assert (= (and b!6982590 (not c!1294541)) b!6982592))

(assert (= (and b!6982592 c!1294542) b!6982591))

(assert (= (and b!6982592 (not c!1294542)) b!6982589))

(assert (= (and b!6982589 c!1294544) b!6982585))

(assert (= (and b!6982589 (not c!1294544)) b!6982588))

(assert (= (or b!6982591 b!6982585) bm!633705))

(assert (= (or b!6982591 b!6982585) bm!633704))

(assert (= (or b!6982594 bm!633704) bm!633708))

(assert (= (or b!6982594 bm!633705) bm!633706))

(assert (= (or b!6982595 bm!633708) bm!633703))

(assert (= (or b!6982595 b!6982594) bm!633707))

(declare-fun m!7669332 () Bool)

(assert (=> bm!633703 m!7669332))

(declare-fun m!7669334 () Bool)

(assert (=> b!6982587 m!7669334))

(declare-fun m!7669336 () Bool)

(assert (=> bm!633706 m!7669336))

(declare-fun m!7669338 () Bool)

(assert (=> b!6982586 m!7669338))

(declare-fun m!7669340 () Bool)

(assert (=> bm!633707 m!7669340))

(assert (=> bm!633636 d!2174616))

(declare-fun d!2174618 () Bool)

(declare-fun c!1294547 () Bool)

(assert (=> d!2174618 (= c!1294547 ((_ is Nil!66964) lt!2482344))))

(declare-fun e!4196681 () (InoxSet Regex!17181))

(assert (=> d!2174618 (= (content!13213 lt!2482344) e!4196681)))

(declare-fun b!6982600 () Bool)

(assert (=> b!6982600 (= e!4196681 ((as const (Array Regex!17181 Bool)) false))))

(declare-fun b!6982601 () Bool)

(assert (=> b!6982601 (= e!4196681 ((_ map or) (store ((as const (Array Regex!17181 Bool)) false) (h!73412 lt!2482344) true) (content!13213 (t!380831 lt!2482344))))))

(assert (= (and d!2174618 c!1294547) b!6982600))

(assert (= (and d!2174618 (not c!1294547)) b!6982601))

(declare-fun m!7669342 () Bool)

(assert (=> b!6982601 m!7669342))

(declare-fun m!7669344 () Bool)

(assert (=> b!6982601 m!7669344))

(assert (=> d!2174312 d!2174618))

(declare-fun d!2174620 () Bool)

(declare-fun c!1294548 () Bool)

(assert (=> d!2174620 (= c!1294548 ((_ is Nil!66964) (exprs!6677 lt!2482316)))))

(declare-fun e!4196682 () (InoxSet Regex!17181))

(assert (=> d!2174620 (= (content!13213 (exprs!6677 lt!2482316)) e!4196682)))

(declare-fun b!6982602 () Bool)

(assert (=> b!6982602 (= e!4196682 ((as const (Array Regex!17181 Bool)) false))))

(declare-fun b!6982603 () Bool)

(assert (=> b!6982603 (= e!4196682 ((_ map or) (store ((as const (Array Regex!17181 Bool)) false) (h!73412 (exprs!6677 lt!2482316)) true) (content!13213 (t!380831 (exprs!6677 lt!2482316)))))))

(assert (= (and d!2174620 c!1294548) b!6982602))

(assert (= (and d!2174620 (not c!1294548)) b!6982603))

(declare-fun m!7669346 () Bool)

(assert (=> b!6982603 m!7669346))

(assert (=> b!6982603 m!7669316))

(assert (=> d!2174312 d!2174620))

(declare-fun d!2174622 () Bool)

(declare-fun c!1294549 () Bool)

(assert (=> d!2174622 (= c!1294549 ((_ is Nil!66964) (exprs!6677 ct2!306)))))

(declare-fun e!4196683 () (InoxSet Regex!17181))

(assert (=> d!2174622 (= (content!13213 (exprs!6677 ct2!306)) e!4196683)))

(declare-fun b!6982604 () Bool)

(assert (=> b!6982604 (= e!4196683 ((as const (Array Regex!17181 Bool)) false))))

(declare-fun b!6982605 () Bool)

(assert (=> b!6982605 (= e!4196683 ((_ map or) (store ((as const (Array Regex!17181 Bool)) false) (h!73412 (exprs!6677 ct2!306)) true) (content!13213 (t!380831 (exprs!6677 ct2!306)))))))

(assert (= (and d!2174622 c!1294549) b!6982604))

(assert (= (and d!2174622 (not c!1294549)) b!6982605))

(declare-fun m!7669348 () Bool)

(assert (=> b!6982605 m!7669348))

(declare-fun m!7669350 () Bool)

(assert (=> b!6982605 m!7669350))

(assert (=> d!2174312 d!2174622))

(declare-fun d!2174624 () Bool)

(declare-fun c!1294550 () Bool)

(assert (=> d!2174624 (= c!1294550 ((_ is Nil!66964) lt!2482361))))

(declare-fun e!4196684 () (InoxSet Regex!17181))

(assert (=> d!2174624 (= (content!13213 lt!2482361) e!4196684)))

(declare-fun b!6982606 () Bool)

(assert (=> b!6982606 (= e!4196684 ((as const (Array Regex!17181 Bool)) false))))

(declare-fun b!6982607 () Bool)

(assert (=> b!6982607 (= e!4196684 ((_ map or) (store ((as const (Array Regex!17181 Bool)) false) (h!73412 lt!2482361) true) (content!13213 (t!380831 lt!2482361))))))

(assert (= (and d!2174624 c!1294550) b!6982606))

(assert (= (and d!2174624 (not c!1294550)) b!6982607))

(declare-fun m!7669352 () Bool)

(assert (=> b!6982607 m!7669352))

(declare-fun m!7669354 () Bool)

(assert (=> b!6982607 m!7669354))

(assert (=> d!2174336 d!2174624))

(declare-fun d!2174626 () Bool)

(declare-fun c!1294551 () Bool)

(assert (=> d!2174626 (= c!1294551 ((_ is Nil!66964) lt!2482321))))

(declare-fun e!4196685 () (InoxSet Regex!17181))

(assert (=> d!2174626 (= (content!13213 lt!2482321) e!4196685)))

(declare-fun b!6982608 () Bool)

(assert (=> b!6982608 (= e!4196685 ((as const (Array Regex!17181 Bool)) false))))

(declare-fun b!6982609 () Bool)

(assert (=> b!6982609 (= e!4196685 ((_ map or) (store ((as const (Array Regex!17181 Bool)) false) (h!73412 lt!2482321) true) (content!13213 (t!380831 lt!2482321))))))

(assert (= (and d!2174626 c!1294551) b!6982608))

(assert (= (and d!2174626 (not c!1294551)) b!6982609))

(declare-fun m!7669356 () Bool)

(assert (=> b!6982609 m!7669356))

(assert (=> b!6982609 m!7669206))

(assert (=> d!2174336 d!2174626))

(assert (=> d!2174336 d!2174622))

(declare-fun d!2174628 () Bool)

(declare-fun lt!2482421 () Int)

(assert (=> d!2174628 (>= lt!2482421 0)))

(declare-fun e!4196686 () Int)

(assert (=> d!2174628 (= lt!2482421 e!4196686)))

(declare-fun c!1294552 () Bool)

(assert (=> d!2174628 (= c!1294552 ((_ is Nil!66964) lt!2482344))))

(assert (=> d!2174628 (= (size!40881 lt!2482344) lt!2482421)))

(declare-fun b!6982610 () Bool)

(assert (=> b!6982610 (= e!4196686 0)))

(declare-fun b!6982611 () Bool)

(assert (=> b!6982611 (= e!4196686 (+ 1 (size!40881 (t!380831 lt!2482344))))))

(assert (= (and d!2174628 c!1294552) b!6982610))

(assert (= (and d!2174628 (not c!1294552)) b!6982611))

(declare-fun m!7669358 () Bool)

(assert (=> b!6982611 m!7669358))

(assert (=> b!6982065 d!2174628))

(declare-fun d!2174630 () Bool)

(declare-fun lt!2482422 () Int)

(assert (=> d!2174630 (>= lt!2482422 0)))

(declare-fun e!4196687 () Int)

(assert (=> d!2174630 (= lt!2482422 e!4196687)))

(declare-fun c!1294553 () Bool)

(assert (=> d!2174630 (= c!1294553 ((_ is Nil!66964) (exprs!6677 lt!2482316)))))

(assert (=> d!2174630 (= (size!40881 (exprs!6677 lt!2482316)) lt!2482422)))

(declare-fun b!6982612 () Bool)

(assert (=> b!6982612 (= e!4196687 0)))

(declare-fun b!6982613 () Bool)

(assert (=> b!6982613 (= e!4196687 (+ 1 (size!40881 (t!380831 (exprs!6677 lt!2482316)))))))

(assert (= (and d!2174630 c!1294553) b!6982612))

(assert (= (and d!2174630 (not c!1294553)) b!6982613))

(assert (=> b!6982613 m!7669310))

(assert (=> b!6982065 d!2174630))

(assert (=> b!6982065 d!2174546))

(declare-fun d!2174632 () Bool)

(declare-fun res!2847354 () Bool)

(declare-fun e!4196692 () Bool)

(assert (=> d!2174632 (=> res!2847354 e!4196692)))

(assert (=> d!2174632 (= res!2847354 ((_ is Nil!66966) lt!2482371))))

(assert (=> d!2174632 (= (noDuplicate!2500 lt!2482371) e!4196692)))

(declare-fun b!6982618 () Bool)

(declare-fun e!4196693 () Bool)

(assert (=> b!6982618 (= e!4196692 e!4196693)))

(declare-fun res!2847355 () Bool)

(assert (=> b!6982618 (=> (not res!2847355) (not e!4196693))))

(assert (=> b!6982618 (= res!2847355 (not (contains!20409 (t!380833 lt!2482371) (h!73414 lt!2482371))))))

(declare-fun b!6982619 () Bool)

(assert (=> b!6982619 (= e!4196693 (noDuplicate!2500 (t!380833 lt!2482371)))))

(assert (= (and d!2174632 (not res!2847354)) b!6982618))

(assert (= (and b!6982618 res!2847355) b!6982619))

(declare-fun m!7669360 () Bool)

(assert (=> b!6982618 m!7669360))

(declare-fun m!7669362 () Bool)

(assert (=> b!6982619 m!7669362))

(assert (=> d!2174372 d!2174632))

(declare-fun d!2174634 () Bool)

(declare-fun e!4196701 () Bool)

(assert (=> d!2174634 e!4196701))

(declare-fun res!2847361 () Bool)

(assert (=> d!2174634 (=> (not res!2847361) (not e!4196701))))

(declare-fun res!2847360 () List!67090)

(assert (=> d!2174634 (= res!2847361 (noDuplicate!2500 res!2847360))))

(declare-fun e!4196700 () Bool)

(assert (=> d!2174634 e!4196700))

(assert (=> d!2174634 (= (choose!52084 lt!2482327) res!2847360)))

(declare-fun b!6982627 () Bool)

(declare-fun e!4196702 () Bool)

(declare-fun tp!1928541 () Bool)

(assert (=> b!6982627 (= e!4196702 tp!1928541)))

(declare-fun tp!1928540 () Bool)

(declare-fun b!6982626 () Bool)

(assert (=> b!6982626 (= e!4196700 (and (inv!85811 (h!73414 res!2847360)) e!4196702 tp!1928540))))

(declare-fun b!6982628 () Bool)

(assert (=> b!6982628 (= e!4196701 (= (content!13214 res!2847360) lt!2482327))))

(assert (= b!6982626 b!6982627))

(assert (= (and d!2174634 ((_ is Cons!66966) res!2847360)) b!6982626))

(assert (= (and d!2174634 res!2847361) b!6982628))

(declare-fun m!7669364 () Bool)

(assert (=> d!2174634 m!7669364))

(declare-fun m!7669366 () Bool)

(assert (=> b!6982626 m!7669366))

(declare-fun m!7669368 () Bool)

(assert (=> b!6982628 m!7669368))

(assert (=> d!2174372 d!2174634))

(declare-fun d!2174636 () Bool)

(declare-fun c!1294556 () Bool)

(assert (=> d!2174636 (= c!1294556 ((_ is Nil!66966) lt!2482371))))

(declare-fun e!4196705 () (InoxSet Context!12354))

(assert (=> d!2174636 (= (content!13214 lt!2482371) e!4196705)))

(declare-fun b!6982633 () Bool)

(assert (=> b!6982633 (= e!4196705 ((as const (Array Context!12354 Bool)) false))))

(declare-fun b!6982634 () Bool)

(assert (=> b!6982634 (= e!4196705 ((_ map or) (store ((as const (Array Context!12354 Bool)) false) (h!73414 lt!2482371) true) (content!13214 (t!380833 lt!2482371))))))

(assert (= (and d!2174636 c!1294556) b!6982633))

(assert (= (and d!2174636 (not c!1294556)) b!6982634))

(declare-fun m!7669370 () Bool)

(assert (=> b!6982634 m!7669370))

(declare-fun m!7669372 () Bool)

(assert (=> b!6982634 m!7669372))

(assert (=> b!6982210 d!2174636))

(declare-fun b!6982635 () Bool)

(declare-fun e!4196707 () Bool)

(declare-fun call!633715 () Bool)

(assert (=> b!6982635 (= e!4196707 call!633715)))

(declare-fun b!6982636 () Bool)

(declare-fun res!2847363 () Bool)

(declare-fun e!4196711 () Bool)

(assert (=> b!6982636 (=> (not res!2847363) (not e!4196711))))

(declare-fun call!633716 () Bool)

(assert (=> b!6982636 (= res!2847363 call!633716)))

(declare-fun e!4196709 () Bool)

(assert (=> b!6982636 (= e!4196709 e!4196711)))

(declare-fun b!6982637 () Bool)

(declare-fun e!4196706 () Bool)

(assert (=> b!6982637 (= e!4196706 e!4196709)))

(declare-fun c!1294558 () Bool)

(assert (=> b!6982637 (= c!1294558 ((_ is Union!17181) (ite c!1294432 (reg!17510 (h!73412 (exprs!6677 lt!2482316))) (ite c!1294433 (regTwo!34875 (h!73412 (exprs!6677 lt!2482316))) (regTwo!34874 (h!73412 (exprs!6677 lt!2482316)))))))))

(declare-fun b!6982638 () Bool)

(declare-fun e!4196708 () Bool)

(assert (=> b!6982638 (= e!4196708 e!4196706)))

(declare-fun c!1294557 () Bool)

(assert (=> b!6982638 (= c!1294557 ((_ is Star!17181) (ite c!1294432 (reg!17510 (h!73412 (exprs!6677 lt!2482316))) (ite c!1294433 (regTwo!34875 (h!73412 (exprs!6677 lt!2482316))) (regTwo!34874 (h!73412 (exprs!6677 lt!2482316)))))))))

(declare-fun bm!633709 () Bool)

(declare-fun call!633714 () Bool)

(assert (=> bm!633709 (= call!633715 call!633714)))

(declare-fun b!6982639 () Bool)

(declare-fun res!2847365 () Bool)

(declare-fun e!4196710 () Bool)

(assert (=> b!6982639 (=> res!2847365 e!4196710)))

(assert (=> b!6982639 (= res!2847365 (not ((_ is Concat!26026) (ite c!1294432 (reg!17510 (h!73412 (exprs!6677 lt!2482316))) (ite c!1294433 (regTwo!34875 (h!73412 (exprs!6677 lt!2482316))) (regTwo!34874 (h!73412 (exprs!6677 lt!2482316))))))))))

(assert (=> b!6982639 (= e!4196709 e!4196710)))

(declare-fun b!6982640 () Bool)

(declare-fun e!4196712 () Bool)

(assert (=> b!6982640 (= e!4196706 e!4196712)))

(declare-fun res!2847364 () Bool)

(assert (=> b!6982640 (= res!2847364 (not (nullable!6941 (reg!17510 (ite c!1294432 (reg!17510 (h!73412 (exprs!6677 lt!2482316))) (ite c!1294433 (regTwo!34875 (h!73412 (exprs!6677 lt!2482316))) (regTwo!34874 (h!73412 (exprs!6677 lt!2482316)))))))))))

(assert (=> b!6982640 (=> (not res!2847364) (not e!4196712))))

(declare-fun b!6982641 () Bool)

(assert (=> b!6982641 (= e!4196711 call!633715)))

(declare-fun bm!633710 () Bool)

(assert (=> bm!633710 (= call!633716 (validRegex!8841 (ite c!1294558 (regOne!34875 (ite c!1294432 (reg!17510 (h!73412 (exprs!6677 lt!2482316))) (ite c!1294433 (regTwo!34875 (h!73412 (exprs!6677 lt!2482316))) (regTwo!34874 (h!73412 (exprs!6677 lt!2482316)))))) (regOne!34874 (ite c!1294432 (reg!17510 (h!73412 (exprs!6677 lt!2482316))) (ite c!1294433 (regTwo!34875 (h!73412 (exprs!6677 lt!2482316))) (regTwo!34874 (h!73412 (exprs!6677 lt!2482316)))))))))))

(declare-fun d!2174638 () Bool)

(declare-fun res!2847362 () Bool)

(assert (=> d!2174638 (=> res!2847362 e!4196708)))

(assert (=> d!2174638 (= res!2847362 ((_ is ElementMatch!17181) (ite c!1294432 (reg!17510 (h!73412 (exprs!6677 lt!2482316))) (ite c!1294433 (regTwo!34875 (h!73412 (exprs!6677 lt!2482316))) (regTwo!34874 (h!73412 (exprs!6677 lt!2482316)))))))))

(assert (=> d!2174638 (= (validRegex!8841 (ite c!1294432 (reg!17510 (h!73412 (exprs!6677 lt!2482316))) (ite c!1294433 (regTwo!34875 (h!73412 (exprs!6677 lt!2482316))) (regTwo!34874 (h!73412 (exprs!6677 lt!2482316)))))) e!4196708)))

(declare-fun b!6982642 () Bool)

(assert (=> b!6982642 (= e!4196712 call!633714)))

(declare-fun bm!633711 () Bool)

(assert (=> bm!633711 (= call!633714 (validRegex!8841 (ite c!1294557 (reg!17510 (ite c!1294432 (reg!17510 (h!73412 (exprs!6677 lt!2482316))) (ite c!1294433 (regTwo!34875 (h!73412 (exprs!6677 lt!2482316))) (regTwo!34874 (h!73412 (exprs!6677 lt!2482316)))))) (ite c!1294558 (regTwo!34875 (ite c!1294432 (reg!17510 (h!73412 (exprs!6677 lt!2482316))) (ite c!1294433 (regTwo!34875 (h!73412 (exprs!6677 lt!2482316))) (regTwo!34874 (h!73412 (exprs!6677 lt!2482316)))))) (regTwo!34874 (ite c!1294432 (reg!17510 (h!73412 (exprs!6677 lt!2482316))) (ite c!1294433 (regTwo!34875 (h!73412 (exprs!6677 lt!2482316))) (regTwo!34874 (h!73412 (exprs!6677 lt!2482316))))))))))))

(declare-fun b!6982643 () Bool)

(assert (=> b!6982643 (= e!4196710 e!4196707)))

(declare-fun res!2847366 () Bool)

(assert (=> b!6982643 (=> (not res!2847366) (not e!4196707))))

(assert (=> b!6982643 (= res!2847366 call!633716)))

(assert (= (and d!2174638 (not res!2847362)) b!6982638))

(assert (= (and b!6982638 c!1294557) b!6982640))

(assert (= (and b!6982638 (not c!1294557)) b!6982637))

(assert (= (and b!6982640 res!2847364) b!6982642))

(assert (= (and b!6982637 c!1294558) b!6982636))

(assert (= (and b!6982637 (not c!1294558)) b!6982639))

(assert (= (and b!6982636 res!2847363) b!6982641))

(assert (= (and b!6982639 (not res!2847365)) b!6982643))

(assert (= (and b!6982643 res!2847366) b!6982635))

(assert (= (or b!6982641 b!6982635) bm!633709))

(assert (= (or b!6982636 b!6982643) bm!633710))

(assert (= (or b!6982642 bm!633709) bm!633711))

(declare-fun m!7669374 () Bool)

(assert (=> b!6982640 m!7669374))

(declare-fun m!7669376 () Bool)

(assert (=> bm!633710 m!7669376))

(declare-fun m!7669378 () Bool)

(assert (=> bm!633711 m!7669378))

(assert (=> bm!633650 d!2174638))

(declare-fun bs!1861121 () Bool)

(declare-fun d!2174640 () Bool)

(assert (= bs!1861121 (and d!2174640 b!6981955)))

(declare-fun lambda!399517 () Int)

(assert (=> bs!1861121 (= lambda!399517 lambda!399462)))

(declare-fun bs!1861122 () Bool)

(assert (= bs!1861122 (and d!2174640 d!2174330)))

(assert (=> bs!1861122 (= lambda!399517 lambda!399477)))

(declare-fun bs!1861123 () Bool)

(assert (= bs!1861123 (and d!2174640 d!2174366)))

(assert (=> bs!1861123 (= lambda!399517 lambda!399490)))

(assert (=> d!2174640 (= (inv!85811 setElem!47579) (forall!16076 (exprs!6677 setElem!47579) lambda!399517))))

(declare-fun bs!1861124 () Bool)

(assert (= bs!1861124 d!2174640))

(declare-fun m!7669380 () Bool)

(assert (=> bs!1861124 m!7669380))

(assert (=> setNonEmpty!47579 d!2174640))

(declare-fun call!633720 () List!67088)

(declare-fun c!1294562 () Bool)

(declare-fun c!1294561 () Bool)

(declare-fun c!1294560 () Bool)

(declare-fun call!633722 () (InoxSet Context!12354))

(declare-fun bm!633712 () Bool)

(assert (=> bm!633712 (= call!633722 (derivationStepZipperDown!1899 (ite c!1294562 (regOne!34875 (h!73412 (exprs!6677 lt!2482325))) (ite c!1294560 (regTwo!34874 (h!73412 (exprs!6677 lt!2482325))) (ite c!1294561 (regOne!34874 (h!73412 (exprs!6677 lt!2482325))) (reg!17510 (h!73412 (exprs!6677 lt!2482325)))))) (ite (or c!1294562 c!1294560) (Context!12355 (t!380831 (exprs!6677 lt!2482325))) (Context!12355 call!633720)) (h!73413 s!7408)))))

(declare-fun bm!633713 () Bool)

(declare-fun call!633718 () (InoxSet Context!12354))

(declare-fun call!633721 () (InoxSet Context!12354))

(assert (=> bm!633713 (= call!633718 call!633721)))

(declare-fun b!6982644 () Bool)

(declare-fun e!4196715 () (InoxSet Context!12354))

(assert (=> b!6982644 (= e!4196715 call!633718)))

(declare-fun b!6982645 () Bool)

(declare-fun e!4196714 () (InoxSet Context!12354))

(assert (=> b!6982645 (= e!4196714 (store ((as const (Array Context!12354 Bool)) false) (Context!12355 (t!380831 (exprs!6677 lt!2482325))) true))))

(declare-fun b!6982646 () Bool)

(declare-fun e!4196713 () Bool)

(assert (=> b!6982646 (= e!4196713 (nullable!6941 (regOne!34874 (h!73412 (exprs!6677 lt!2482325)))))))

(declare-fun b!6982647 () Bool)

(assert (=> b!6982647 (= e!4196715 ((as const (Array Context!12354 Bool)) false))))

(declare-fun bm!633714 () Bool)

(declare-fun call!633717 () List!67088)

(assert (=> bm!633714 (= call!633720 call!633717)))

(declare-fun b!6982648 () Bool)

(declare-fun c!1294563 () Bool)

(assert (=> b!6982648 (= c!1294563 ((_ is Star!17181) (h!73412 (exprs!6677 lt!2482325))))))

(declare-fun e!4196716 () (InoxSet Context!12354))

(assert (=> b!6982648 (= e!4196716 e!4196715)))

(declare-fun bm!633715 () Bool)

(assert (=> bm!633715 (= call!633717 ($colon$colon!2461 (exprs!6677 (Context!12355 (t!380831 (exprs!6677 lt!2482325)))) (ite (or c!1294560 c!1294561) (regTwo!34874 (h!73412 (exprs!6677 lt!2482325))) (h!73412 (exprs!6677 lt!2482325)))))))

(declare-fun b!6982649 () Bool)

(assert (=> b!6982649 (= c!1294560 e!4196713)))

(declare-fun res!2847367 () Bool)

(assert (=> b!6982649 (=> (not res!2847367) (not e!4196713))))

(assert (=> b!6982649 (= res!2847367 ((_ is Concat!26026) (h!73412 (exprs!6677 lt!2482325))))))

(declare-fun e!4196718 () (InoxSet Context!12354))

(declare-fun e!4196717 () (InoxSet Context!12354))

(assert (=> b!6982649 (= e!4196718 e!4196717)))

(declare-fun b!6982650 () Bool)

(assert (=> b!6982650 (= e!4196716 call!633718)))

(declare-fun b!6982651 () Bool)

(assert (=> b!6982651 (= e!4196717 e!4196716)))

(assert (=> b!6982651 (= c!1294561 ((_ is Concat!26026) (h!73412 (exprs!6677 lt!2482325))))))

(declare-fun d!2174642 () Bool)

(declare-fun c!1294559 () Bool)

(assert (=> d!2174642 (= c!1294559 (and ((_ is ElementMatch!17181) (h!73412 (exprs!6677 lt!2482325))) (= (c!1294360 (h!73412 (exprs!6677 lt!2482325))) (h!73413 s!7408))))))

(assert (=> d!2174642 (= (derivationStepZipperDown!1899 (h!73412 (exprs!6677 lt!2482325)) (Context!12355 (t!380831 (exprs!6677 lt!2482325))) (h!73413 s!7408)) e!4196714)))

(declare-fun bm!633716 () Bool)

(declare-fun call!633719 () (InoxSet Context!12354))

(assert (=> bm!633716 (= call!633719 (derivationStepZipperDown!1899 (ite c!1294562 (regTwo!34875 (h!73412 (exprs!6677 lt!2482325))) (regOne!34874 (h!73412 (exprs!6677 lt!2482325)))) (ite c!1294562 (Context!12355 (t!380831 (exprs!6677 lt!2482325))) (Context!12355 call!633717)) (h!73413 s!7408)))))

(declare-fun b!6982652 () Bool)

(assert (=> b!6982652 (= e!4196714 e!4196718)))

(assert (=> b!6982652 (= c!1294562 ((_ is Union!17181) (h!73412 (exprs!6677 lt!2482325))))))

(declare-fun bm!633717 () Bool)

(assert (=> bm!633717 (= call!633721 call!633722)))

(declare-fun b!6982653 () Bool)

(assert (=> b!6982653 (= e!4196717 ((_ map or) call!633719 call!633721))))

(declare-fun b!6982654 () Bool)

(assert (=> b!6982654 (= e!4196718 ((_ map or) call!633722 call!633719))))

(assert (= (and d!2174642 c!1294559) b!6982645))

(assert (= (and d!2174642 (not c!1294559)) b!6982652))

(assert (= (and b!6982652 c!1294562) b!6982654))

(assert (= (and b!6982652 (not c!1294562)) b!6982649))

(assert (= (and b!6982649 res!2847367) b!6982646))

(assert (= (and b!6982649 c!1294560) b!6982653))

(assert (= (and b!6982649 (not c!1294560)) b!6982651))

(assert (= (and b!6982651 c!1294561) b!6982650))

(assert (= (and b!6982651 (not c!1294561)) b!6982648))

(assert (= (and b!6982648 c!1294563) b!6982644))

(assert (= (and b!6982648 (not c!1294563)) b!6982647))

(assert (= (or b!6982650 b!6982644) bm!633714))

(assert (= (or b!6982650 b!6982644) bm!633713))

(assert (= (or b!6982653 bm!633713) bm!633717))

(assert (= (or b!6982653 bm!633714) bm!633715))

(assert (= (or b!6982654 bm!633717) bm!633712))

(assert (= (or b!6982654 b!6982653) bm!633716))

(declare-fun m!7669382 () Bool)

(assert (=> bm!633712 m!7669382))

(declare-fun m!7669384 () Bool)

(assert (=> b!6982646 m!7669384))

(declare-fun m!7669386 () Bool)

(assert (=> bm!633715 m!7669386))

(declare-fun m!7669388 () Bool)

(assert (=> b!6982645 m!7669388))

(declare-fun m!7669390 () Bool)

(assert (=> bm!633716 m!7669390))

(assert (=> bm!633651 d!2174642))

(declare-fun bm!633718 () Bool)

(declare-fun c!1294565 () Bool)

(declare-fun c!1294566 () Bool)

(declare-fun call!633728 () (InoxSet Context!12354))

(declare-fun call!633726 () List!67088)

(declare-fun c!1294567 () Bool)

(assert (=> bm!633718 (= call!633728 (derivationStepZipperDown!1899 (ite c!1294567 (regOne!34875 (ite c!1294426 (regTwo!34875 (h!73412 (exprs!6677 lt!2482316))) (regOne!34874 (h!73412 (exprs!6677 lt!2482316))))) (ite c!1294565 (regTwo!34874 (ite c!1294426 (regTwo!34875 (h!73412 (exprs!6677 lt!2482316))) (regOne!34874 (h!73412 (exprs!6677 lt!2482316))))) (ite c!1294566 (regOne!34874 (ite c!1294426 (regTwo!34875 (h!73412 (exprs!6677 lt!2482316))) (regOne!34874 (h!73412 (exprs!6677 lt!2482316))))) (reg!17510 (ite c!1294426 (regTwo!34875 (h!73412 (exprs!6677 lt!2482316))) (regOne!34874 (h!73412 (exprs!6677 lt!2482316)))))))) (ite (or c!1294567 c!1294565) (ite c!1294426 lt!2482317 (Context!12355 call!633641)) (Context!12355 call!633726)) (h!73413 s!7408)))))

(declare-fun bm!633719 () Bool)

(declare-fun call!633724 () (InoxSet Context!12354))

(declare-fun call!633727 () (InoxSet Context!12354))

(assert (=> bm!633719 (= call!633724 call!633727)))

(declare-fun b!6982655 () Bool)

(declare-fun e!4196721 () (InoxSet Context!12354))

(assert (=> b!6982655 (= e!4196721 call!633724)))

(declare-fun b!6982656 () Bool)

(declare-fun e!4196720 () (InoxSet Context!12354))

(assert (=> b!6982656 (= e!4196720 (store ((as const (Array Context!12354 Bool)) false) (ite c!1294426 lt!2482317 (Context!12355 call!633641)) true))))

(declare-fun b!6982657 () Bool)

(declare-fun e!4196719 () Bool)

(assert (=> b!6982657 (= e!4196719 (nullable!6941 (regOne!34874 (ite c!1294426 (regTwo!34875 (h!73412 (exprs!6677 lt!2482316))) (regOne!34874 (h!73412 (exprs!6677 lt!2482316)))))))))

(declare-fun b!6982658 () Bool)

(assert (=> b!6982658 (= e!4196721 ((as const (Array Context!12354 Bool)) false))))

(declare-fun bm!633720 () Bool)

(declare-fun call!633723 () List!67088)

(assert (=> bm!633720 (= call!633726 call!633723)))

(declare-fun b!6982659 () Bool)

(declare-fun c!1294568 () Bool)

(assert (=> b!6982659 (= c!1294568 ((_ is Star!17181) (ite c!1294426 (regTwo!34875 (h!73412 (exprs!6677 lt!2482316))) (regOne!34874 (h!73412 (exprs!6677 lt!2482316))))))))

(declare-fun e!4196722 () (InoxSet Context!12354))

(assert (=> b!6982659 (= e!4196722 e!4196721)))

(declare-fun bm!633721 () Bool)

(assert (=> bm!633721 (= call!633723 ($colon$colon!2461 (exprs!6677 (ite c!1294426 lt!2482317 (Context!12355 call!633641))) (ite (or c!1294565 c!1294566) (regTwo!34874 (ite c!1294426 (regTwo!34875 (h!73412 (exprs!6677 lt!2482316))) (regOne!34874 (h!73412 (exprs!6677 lt!2482316))))) (ite c!1294426 (regTwo!34875 (h!73412 (exprs!6677 lt!2482316))) (regOne!34874 (h!73412 (exprs!6677 lt!2482316)))))))))

(declare-fun b!6982660 () Bool)

(assert (=> b!6982660 (= c!1294565 e!4196719)))

(declare-fun res!2847368 () Bool)

(assert (=> b!6982660 (=> (not res!2847368) (not e!4196719))))

(assert (=> b!6982660 (= res!2847368 ((_ is Concat!26026) (ite c!1294426 (regTwo!34875 (h!73412 (exprs!6677 lt!2482316))) (regOne!34874 (h!73412 (exprs!6677 lt!2482316))))))))

(declare-fun e!4196724 () (InoxSet Context!12354))

(declare-fun e!4196723 () (InoxSet Context!12354))

(assert (=> b!6982660 (= e!4196724 e!4196723)))

(declare-fun b!6982661 () Bool)

(assert (=> b!6982661 (= e!4196722 call!633724)))

(declare-fun b!6982662 () Bool)

(assert (=> b!6982662 (= e!4196723 e!4196722)))

(assert (=> b!6982662 (= c!1294566 ((_ is Concat!26026) (ite c!1294426 (regTwo!34875 (h!73412 (exprs!6677 lt!2482316))) (regOne!34874 (h!73412 (exprs!6677 lt!2482316))))))))

(declare-fun d!2174644 () Bool)

(declare-fun c!1294564 () Bool)

(assert (=> d!2174644 (= c!1294564 (and ((_ is ElementMatch!17181) (ite c!1294426 (regTwo!34875 (h!73412 (exprs!6677 lt!2482316))) (regOne!34874 (h!73412 (exprs!6677 lt!2482316))))) (= (c!1294360 (ite c!1294426 (regTwo!34875 (h!73412 (exprs!6677 lt!2482316))) (regOne!34874 (h!73412 (exprs!6677 lt!2482316))))) (h!73413 s!7408))))))

(assert (=> d!2174644 (= (derivationStepZipperDown!1899 (ite c!1294426 (regTwo!34875 (h!73412 (exprs!6677 lt!2482316))) (regOne!34874 (h!73412 (exprs!6677 lt!2482316)))) (ite c!1294426 lt!2482317 (Context!12355 call!633641)) (h!73413 s!7408)) e!4196720)))

(declare-fun bm!633722 () Bool)

(declare-fun call!633725 () (InoxSet Context!12354))

(assert (=> bm!633722 (= call!633725 (derivationStepZipperDown!1899 (ite c!1294567 (regTwo!34875 (ite c!1294426 (regTwo!34875 (h!73412 (exprs!6677 lt!2482316))) (regOne!34874 (h!73412 (exprs!6677 lt!2482316))))) (regOne!34874 (ite c!1294426 (regTwo!34875 (h!73412 (exprs!6677 lt!2482316))) (regOne!34874 (h!73412 (exprs!6677 lt!2482316)))))) (ite c!1294567 (ite c!1294426 lt!2482317 (Context!12355 call!633641)) (Context!12355 call!633723)) (h!73413 s!7408)))))

(declare-fun b!6982663 () Bool)

(assert (=> b!6982663 (= e!4196720 e!4196724)))

(assert (=> b!6982663 (= c!1294567 ((_ is Union!17181) (ite c!1294426 (regTwo!34875 (h!73412 (exprs!6677 lt!2482316))) (regOne!34874 (h!73412 (exprs!6677 lt!2482316))))))))

(declare-fun bm!633723 () Bool)

(assert (=> bm!633723 (= call!633727 call!633728)))

(declare-fun b!6982664 () Bool)

(assert (=> b!6982664 (= e!4196723 ((_ map or) call!633725 call!633727))))

(declare-fun b!6982665 () Bool)

(assert (=> b!6982665 (= e!4196724 ((_ map or) call!633728 call!633725))))

(assert (= (and d!2174644 c!1294564) b!6982656))

(assert (= (and d!2174644 (not c!1294564)) b!6982663))

(assert (= (and b!6982663 c!1294567) b!6982665))

(assert (= (and b!6982663 (not c!1294567)) b!6982660))

(assert (= (and b!6982660 res!2847368) b!6982657))

(assert (= (and b!6982660 c!1294565) b!6982664))

(assert (= (and b!6982660 (not c!1294565)) b!6982662))

(assert (= (and b!6982662 c!1294566) b!6982661))

(assert (= (and b!6982662 (not c!1294566)) b!6982659))

(assert (= (and b!6982659 c!1294568) b!6982655))

(assert (= (and b!6982659 (not c!1294568)) b!6982658))

(assert (= (or b!6982661 b!6982655) bm!633720))

(assert (= (or b!6982661 b!6982655) bm!633719))

(assert (= (or b!6982664 bm!633719) bm!633723))

(assert (= (or b!6982664 bm!633720) bm!633721))

(assert (= (or b!6982665 bm!633723) bm!633718))

(assert (= (or b!6982665 b!6982664) bm!633722))

(declare-fun m!7669392 () Bool)

(assert (=> bm!633718 m!7669392))

(declare-fun m!7669394 () Bool)

(assert (=> b!6982657 m!7669394))

(declare-fun m!7669396 () Bool)

(assert (=> bm!633721 m!7669396))

(declare-fun m!7669398 () Bool)

(assert (=> b!6982656 m!7669398))

(declare-fun m!7669400 () Bool)

(assert (=> bm!633722 m!7669400))

(assert (=> bm!633640 d!2174644))

(declare-fun bs!1861125 () Bool)

(declare-fun d!2174646 () Bool)

(assert (= bs!1861125 (and d!2174646 d!2174566)))

(declare-fun lambda!399518 () Int)

(assert (=> bs!1861125 (not (= lambda!399518 lambda!399514))))

(declare-fun bs!1861126 () Bool)

(assert (= bs!1861126 (and d!2174646 d!2174378)))

(assert (=> bs!1861126 (not (= lambda!399518 lambda!399496))))

(declare-fun bs!1861127 () Bool)

(assert (= bs!1861127 (and d!2174646 d!2174376)))

(assert (=> bs!1861127 (= (= lambda!399496 lambda!399460) (= lambda!399518 lambda!399493))))

(declare-fun bs!1861128 () Bool)

(assert (= bs!1861128 (and d!2174646 d!2174576)))

(assert (=> bs!1861128 (not (= lambda!399518 lambda!399516))))

(declare-fun bs!1861129 () Bool)

(assert (= bs!1861129 (and d!2174646 b!6981954)))

(assert (=> bs!1861129 (not (= lambda!399518 lambda!399460))))

(assert (=> d!2174646 true))

(assert (=> d!2174646 (< (dynLambda!26788 order!27859 lambda!399496) (dynLambda!26788 order!27859 lambda!399518))))

(assert (=> d!2174646 (= (exists!2945 lt!2482329 lambda!399496) (not (forall!16077 lt!2482329 lambda!399518)))))

(declare-fun bs!1861130 () Bool)

(assert (= bs!1861130 d!2174646))

(declare-fun m!7669402 () Bool)

(assert (=> bs!1861130 m!7669402))

(assert (=> d!2174378 d!2174646))

(declare-fun bs!1861131 () Bool)

(declare-fun d!2174648 () Bool)

(assert (= bs!1861131 (and d!2174648 d!2174566)))

(declare-fun lambda!399521 () Int)

(assert (=> bs!1861131 (not (= lambda!399521 lambda!399514))))

(declare-fun bs!1861132 () Bool)

(assert (= bs!1861132 (and d!2174648 d!2174646)))

(assert (=> bs!1861132 (not (= lambda!399521 lambda!399518))))

(declare-fun bs!1861133 () Bool)

(assert (= bs!1861133 (and d!2174648 d!2174378)))

(assert (=> bs!1861133 (= lambda!399521 lambda!399496)))

(declare-fun bs!1861134 () Bool)

(assert (= bs!1861134 (and d!2174648 d!2174376)))

(assert (=> bs!1861134 (not (= lambda!399521 lambda!399493))))

(declare-fun bs!1861135 () Bool)

(assert (= bs!1861135 (and d!2174648 d!2174576)))

(assert (=> bs!1861135 (not (= lambda!399521 lambda!399516))))

(declare-fun bs!1861136 () Bool)

(assert (= bs!1861136 (and d!2174648 b!6981954)))

(assert (=> bs!1861136 (= lambda!399521 lambda!399460)))

(assert (=> d!2174648 true))

(assert (=> d!2174648 (exists!2945 lt!2482329 lambda!399521)))

(assert (=> d!2174648 true))

(declare-fun _$60!1048 () Unit!161014)

(assert (=> d!2174648 (= (choose!52085 lt!2482329 s!7408) _$60!1048)))

(declare-fun bs!1861137 () Bool)

(assert (= bs!1861137 d!2174648))

(declare-fun m!7669404 () Bool)

(assert (=> bs!1861137 m!7669404))

(assert (=> d!2174378 d!2174648))

(declare-fun d!2174650 () Bool)

(declare-fun c!1294571 () Bool)

(assert (=> d!2174650 (= c!1294571 (isEmpty!39089 s!7408))))

(declare-fun e!4196725 () Bool)

(assert (=> d!2174650 (= (matchZipper!2721 (content!13214 lt!2482329) s!7408) e!4196725)))

(declare-fun b!6982666 () Bool)

(assert (=> b!6982666 (= e!4196725 (nullableZipper!2410 (content!13214 lt!2482329)))))

(declare-fun b!6982667 () Bool)

(assert (=> b!6982667 (= e!4196725 (matchZipper!2721 (derivationStepZipper!2661 (content!13214 lt!2482329) (head!14082 s!7408)) (tail!13165 s!7408)))))

(assert (= (and d!2174650 c!1294571) b!6982666))

(assert (= (and d!2174650 (not c!1294571)) b!6982667))

(assert (=> d!2174650 m!7668840))

(assert (=> b!6982666 m!7668882))

(declare-fun m!7669406 () Bool)

(assert (=> b!6982666 m!7669406))

(assert (=> b!6982667 m!7668844))

(assert (=> b!6982667 m!7668882))

(assert (=> b!6982667 m!7668844))

(declare-fun m!7669408 () Bool)

(assert (=> b!6982667 m!7669408))

(assert (=> b!6982667 m!7668848))

(assert (=> b!6982667 m!7669408))

(assert (=> b!6982667 m!7668848))

(declare-fun m!7669410 () Bool)

(assert (=> b!6982667 m!7669410))

(assert (=> d!2174378 d!2174650))

(declare-fun d!2174652 () Bool)

(declare-fun c!1294572 () Bool)

(assert (=> d!2174652 (= c!1294572 ((_ is Nil!66966) lt!2482329))))

(declare-fun e!4196726 () (InoxSet Context!12354))

(assert (=> d!2174652 (= (content!13214 lt!2482329) e!4196726)))

(declare-fun b!6982668 () Bool)

(assert (=> b!6982668 (= e!4196726 ((as const (Array Context!12354 Bool)) false))))

(declare-fun b!6982669 () Bool)

(assert (=> b!6982669 (= e!4196726 ((_ map or) (store ((as const (Array Context!12354 Bool)) false) (h!73414 lt!2482329) true) (content!13214 (t!380833 lt!2482329))))))

(assert (= (and d!2174652 c!1294572) b!6982668))

(assert (= (and d!2174652 (not c!1294572)) b!6982669))

(declare-fun m!7669412 () Bool)

(assert (=> b!6982669 m!7669412))

(declare-fun m!7669414 () Bool)

(assert (=> b!6982669 m!7669414))

(assert (=> d!2174378 d!2174652))

(declare-fun b!6982670 () Bool)

(declare-fun e!4196728 () Bool)

(declare-fun call!633730 () Bool)

(assert (=> b!6982670 (= e!4196728 call!633730)))

(declare-fun b!6982671 () Bool)

(declare-fun res!2847370 () Bool)

(declare-fun e!4196732 () Bool)

(assert (=> b!6982671 (=> (not res!2847370) (not e!4196732))))

(declare-fun call!633731 () Bool)

(assert (=> b!6982671 (= res!2847370 call!633731)))

(declare-fun e!4196730 () Bool)

(assert (=> b!6982671 (= e!4196730 e!4196732)))

(declare-fun b!6982672 () Bool)

(declare-fun e!4196727 () Bool)

(assert (=> b!6982672 (= e!4196727 e!4196730)))

(declare-fun c!1294574 () Bool)

(assert (=> b!6982672 (= c!1294574 ((_ is Union!17181) (ite c!1294433 (regOne!34875 (h!73412 (exprs!6677 lt!2482316))) (regOne!34874 (h!73412 (exprs!6677 lt!2482316))))))))

(declare-fun b!6982673 () Bool)

(declare-fun e!4196729 () Bool)

(assert (=> b!6982673 (= e!4196729 e!4196727)))

(declare-fun c!1294573 () Bool)

(assert (=> b!6982673 (= c!1294573 ((_ is Star!17181) (ite c!1294433 (regOne!34875 (h!73412 (exprs!6677 lt!2482316))) (regOne!34874 (h!73412 (exprs!6677 lt!2482316))))))))

(declare-fun bm!633724 () Bool)

(declare-fun call!633729 () Bool)

(assert (=> bm!633724 (= call!633730 call!633729)))

(declare-fun b!6982674 () Bool)

(declare-fun res!2847372 () Bool)

(declare-fun e!4196731 () Bool)

(assert (=> b!6982674 (=> res!2847372 e!4196731)))

(assert (=> b!6982674 (= res!2847372 (not ((_ is Concat!26026) (ite c!1294433 (regOne!34875 (h!73412 (exprs!6677 lt!2482316))) (regOne!34874 (h!73412 (exprs!6677 lt!2482316)))))))))

(assert (=> b!6982674 (= e!4196730 e!4196731)))

(declare-fun b!6982675 () Bool)

(declare-fun e!4196733 () Bool)

(assert (=> b!6982675 (= e!4196727 e!4196733)))

(declare-fun res!2847371 () Bool)

(assert (=> b!6982675 (= res!2847371 (not (nullable!6941 (reg!17510 (ite c!1294433 (regOne!34875 (h!73412 (exprs!6677 lt!2482316))) (regOne!34874 (h!73412 (exprs!6677 lt!2482316))))))))))

(assert (=> b!6982675 (=> (not res!2847371) (not e!4196733))))

(declare-fun b!6982676 () Bool)

(assert (=> b!6982676 (= e!4196732 call!633730)))

(declare-fun bm!633725 () Bool)

(assert (=> bm!633725 (= call!633731 (validRegex!8841 (ite c!1294574 (regOne!34875 (ite c!1294433 (regOne!34875 (h!73412 (exprs!6677 lt!2482316))) (regOne!34874 (h!73412 (exprs!6677 lt!2482316))))) (regOne!34874 (ite c!1294433 (regOne!34875 (h!73412 (exprs!6677 lt!2482316))) (regOne!34874 (h!73412 (exprs!6677 lt!2482316))))))))))

(declare-fun d!2174654 () Bool)

(declare-fun res!2847369 () Bool)

(assert (=> d!2174654 (=> res!2847369 e!4196729)))

(assert (=> d!2174654 (= res!2847369 ((_ is ElementMatch!17181) (ite c!1294433 (regOne!34875 (h!73412 (exprs!6677 lt!2482316))) (regOne!34874 (h!73412 (exprs!6677 lt!2482316))))))))

(assert (=> d!2174654 (= (validRegex!8841 (ite c!1294433 (regOne!34875 (h!73412 (exprs!6677 lt!2482316))) (regOne!34874 (h!73412 (exprs!6677 lt!2482316))))) e!4196729)))

(declare-fun b!6982677 () Bool)

(assert (=> b!6982677 (= e!4196733 call!633729)))

(declare-fun bm!633726 () Bool)

(assert (=> bm!633726 (= call!633729 (validRegex!8841 (ite c!1294573 (reg!17510 (ite c!1294433 (regOne!34875 (h!73412 (exprs!6677 lt!2482316))) (regOne!34874 (h!73412 (exprs!6677 lt!2482316))))) (ite c!1294574 (regTwo!34875 (ite c!1294433 (regOne!34875 (h!73412 (exprs!6677 lt!2482316))) (regOne!34874 (h!73412 (exprs!6677 lt!2482316))))) (regTwo!34874 (ite c!1294433 (regOne!34875 (h!73412 (exprs!6677 lt!2482316))) (regOne!34874 (h!73412 (exprs!6677 lt!2482316)))))))))))

(declare-fun b!6982678 () Bool)

(assert (=> b!6982678 (= e!4196731 e!4196728)))

(declare-fun res!2847373 () Bool)

(assert (=> b!6982678 (=> (not res!2847373) (not e!4196728))))

(assert (=> b!6982678 (= res!2847373 call!633731)))

(assert (= (and d!2174654 (not res!2847369)) b!6982673))

(assert (= (and b!6982673 c!1294573) b!6982675))

(assert (= (and b!6982673 (not c!1294573)) b!6982672))

(assert (= (and b!6982675 res!2847371) b!6982677))

(assert (= (and b!6982672 c!1294574) b!6982671))

(assert (= (and b!6982672 (not c!1294574)) b!6982674))

(assert (= (and b!6982671 res!2847370) b!6982676))

(assert (= (and b!6982674 (not res!2847372)) b!6982678))

(assert (= (and b!6982678 res!2847373) b!6982670))

(assert (= (or b!6982676 b!6982670) bm!633724))

(assert (= (or b!6982671 b!6982678) bm!633725))

(assert (= (or b!6982677 bm!633724) bm!633726))

(declare-fun m!7669416 () Bool)

(assert (=> b!6982675 m!7669416))

(declare-fun m!7669418 () Bool)

(assert (=> bm!633725 m!7669418))

(declare-fun m!7669420 () Bool)

(assert (=> bm!633726 m!7669420))

(assert (=> bm!633649 d!2174654))

(declare-fun d!2174656 () Bool)

(declare-fun res!2847374 () Bool)

(declare-fun e!4196734 () Bool)

(assert (=> d!2174656 (=> res!2847374 e!4196734)))

(assert (=> d!2174656 (= res!2847374 ((_ is Nil!66964) (exprs!6677 ct2!306)))))

(assert (=> d!2174656 (= (forall!16076 (exprs!6677 ct2!306) lambda!399490) e!4196734)))

(declare-fun b!6982679 () Bool)

(declare-fun e!4196735 () Bool)

(assert (=> b!6982679 (= e!4196734 e!4196735)))

(declare-fun res!2847375 () Bool)

(assert (=> b!6982679 (=> (not res!2847375) (not e!4196735))))

(assert (=> b!6982679 (= res!2847375 (dynLambda!26791 lambda!399490 (h!73412 (exprs!6677 ct2!306))))))

(declare-fun b!6982680 () Bool)

(assert (=> b!6982680 (= e!4196735 (forall!16076 (t!380831 (exprs!6677 ct2!306)) lambda!399490))))

(assert (= (and d!2174656 (not res!2847374)) b!6982679))

(assert (= (and b!6982679 res!2847375) b!6982680))

(declare-fun b_lambda!261837 () Bool)

(assert (=> (not b_lambda!261837) (not b!6982679)))

(declare-fun m!7669422 () Bool)

(assert (=> b!6982679 m!7669422))

(declare-fun m!7669424 () Bool)

(assert (=> b!6982680 m!7669424))

(assert (=> d!2174366 d!2174656))

(declare-fun d!2174658 () Bool)

(declare-fun c!1294576 () Bool)

(declare-fun e!4196736 () Bool)

(assert (=> d!2174658 (= c!1294576 e!4196736)))

(declare-fun res!2847376 () Bool)

(assert (=> d!2174658 (=> (not res!2847376) (not e!4196736))))

(assert (=> d!2174658 (= res!2847376 ((_ is Cons!66964) (exprs!6677 (Context!12355 (t!380831 (exprs!6677 lt!2482325))))))))

(declare-fun e!4196737 () (InoxSet Context!12354))

(assert (=> d!2174658 (= (derivationStepZipperUp!1831 (Context!12355 (t!380831 (exprs!6677 lt!2482325))) (h!73413 s!7408)) e!4196737)))

(declare-fun b!6982681 () Bool)

(assert (=> b!6982681 (= e!4196736 (nullable!6941 (h!73412 (exprs!6677 (Context!12355 (t!380831 (exprs!6677 lt!2482325)))))))))

(declare-fun b!6982682 () Bool)

(declare-fun e!4196738 () (InoxSet Context!12354))

(assert (=> b!6982682 (= e!4196737 e!4196738)))

(declare-fun c!1294575 () Bool)

(assert (=> b!6982682 (= c!1294575 ((_ is Cons!66964) (exprs!6677 (Context!12355 (t!380831 (exprs!6677 lt!2482325))))))))

(declare-fun b!6982683 () Bool)

(assert (=> b!6982683 (= e!4196738 ((as const (Array Context!12354 Bool)) false))))

(declare-fun bm!633727 () Bool)

(declare-fun call!633732 () (InoxSet Context!12354))

(assert (=> bm!633727 (= call!633732 (derivationStepZipperDown!1899 (h!73412 (exprs!6677 (Context!12355 (t!380831 (exprs!6677 lt!2482325))))) (Context!12355 (t!380831 (exprs!6677 (Context!12355 (t!380831 (exprs!6677 lt!2482325)))))) (h!73413 s!7408)))))

(declare-fun b!6982684 () Bool)

(assert (=> b!6982684 (= e!4196738 call!633732)))

(declare-fun b!6982685 () Bool)

(assert (=> b!6982685 (= e!4196737 ((_ map or) call!633732 (derivationStepZipperUp!1831 (Context!12355 (t!380831 (exprs!6677 (Context!12355 (t!380831 (exprs!6677 lt!2482325)))))) (h!73413 s!7408))))))

(assert (= (and d!2174658 res!2847376) b!6982681))

(assert (= (and d!2174658 c!1294576) b!6982685))

(assert (= (and d!2174658 (not c!1294576)) b!6982682))

(assert (= (and b!6982682 c!1294575) b!6982684))

(assert (= (and b!6982682 (not c!1294575)) b!6982683))

(assert (= (or b!6982685 b!6982684) bm!633727))

(declare-fun m!7669426 () Bool)

(assert (=> b!6982681 m!7669426))

(declare-fun m!7669428 () Bool)

(assert (=> bm!633727 m!7669428))

(declare-fun m!7669430 () Bool)

(assert (=> b!6982685 m!7669430))

(assert (=> b!6982222 d!2174658))

(declare-fun d!2174660 () Bool)

(declare-fun res!2847377 () Bool)

(declare-fun e!4196739 () Bool)

(assert (=> d!2174660 (=> res!2847377 e!4196739)))

(assert (=> d!2174660 (= res!2847377 ((_ is Nil!66964) (++!15126 lt!2482321 (exprs!6677 ct2!306))))))

(assert (=> d!2174660 (= (forall!16076 (++!15126 lt!2482321 (exprs!6677 ct2!306)) lambda!399462) e!4196739)))

(declare-fun b!6982686 () Bool)

(declare-fun e!4196740 () Bool)

(assert (=> b!6982686 (= e!4196739 e!4196740)))

(declare-fun res!2847378 () Bool)

(assert (=> b!6982686 (=> (not res!2847378) (not e!4196740))))

(assert (=> b!6982686 (= res!2847378 (dynLambda!26791 lambda!399462 (h!73412 (++!15126 lt!2482321 (exprs!6677 ct2!306)))))))

(declare-fun b!6982687 () Bool)

(assert (=> b!6982687 (= e!4196740 (forall!16076 (t!380831 (++!15126 lt!2482321 (exprs!6677 ct2!306))) lambda!399462))))

(assert (= (and d!2174660 (not res!2847377)) b!6982686))

(assert (= (and b!6982686 res!2847378) b!6982687))

(declare-fun b_lambda!261839 () Bool)

(assert (=> (not b_lambda!261839) (not b!6982686)))

(declare-fun m!7669432 () Bool)

(assert (=> b!6982686 m!7669432))

(declare-fun m!7669434 () Bool)

(assert (=> b!6982687 m!7669434))

(assert (=> d!2174352 d!2174660))

(assert (=> d!2174352 d!2174336))

(declare-fun d!2174662 () Bool)

(assert (=> d!2174662 (forall!16076 (++!15126 lt!2482321 (exprs!6677 ct2!306)) lambda!399462)))

(assert (=> d!2174662 true))

(declare-fun _$78!484 () Unit!161014)

(assert (=> d!2174662 (= (choose!52082 lt!2482321 (exprs!6677 ct2!306) lambda!399462) _$78!484)))

(declare-fun bs!1861138 () Bool)

(assert (= bs!1861138 d!2174662))

(assert (=> bs!1861138 m!7668622))

(assert (=> bs!1861138 m!7668622))

(assert (=> bs!1861138 m!7668816))

(assert (=> d!2174352 d!2174662))

(declare-fun d!2174664 () Bool)

(declare-fun res!2847379 () Bool)

(declare-fun e!4196741 () Bool)

(assert (=> d!2174664 (=> res!2847379 e!4196741)))

(assert (=> d!2174664 (= res!2847379 ((_ is Nil!66964) lt!2482321))))

(assert (=> d!2174664 (= (forall!16076 lt!2482321 lambda!399462) e!4196741)))

(declare-fun b!6982688 () Bool)

(declare-fun e!4196742 () Bool)

(assert (=> b!6982688 (= e!4196741 e!4196742)))

(declare-fun res!2847380 () Bool)

(assert (=> b!6982688 (=> (not res!2847380) (not e!4196742))))

(assert (=> b!6982688 (= res!2847380 (dynLambda!26791 lambda!399462 (h!73412 lt!2482321)))))

(declare-fun b!6982689 () Bool)

(assert (=> b!6982689 (= e!4196742 (forall!16076 (t!380831 lt!2482321) lambda!399462))))

(assert (= (and d!2174664 (not res!2847379)) b!6982688))

(assert (= (and b!6982688 res!2847380) b!6982689))

(declare-fun b_lambda!261841 () Bool)

(assert (=> (not b_lambda!261841) (not b!6982688)))

(declare-fun m!7669436 () Bool)

(assert (=> b!6982688 m!7669436))

(declare-fun m!7669438 () Bool)

(assert (=> b!6982689 m!7669438))

(assert (=> d!2174352 d!2174664))

(assert (=> d!2174362 d!2174552))

(declare-fun b!6982690 () Bool)

(declare-fun e!4196743 () Bool)

(declare-fun tp!1928542 () Bool)

(declare-fun tp!1928543 () Bool)

(assert (=> b!6982690 (= e!4196743 (and tp!1928542 tp!1928543))))

(assert (=> b!6982227 (= tp!1928471 e!4196743)))

(assert (= (and b!6982227 ((_ is Cons!66964) (exprs!6677 setElem!47579))) b!6982690))

(declare-fun condSetEmpty!47587 () Bool)

(assert (=> setNonEmpty!47579 (= condSetEmpty!47587 (= setRest!47579 ((as const (Array Context!12354 Bool)) false)))))

(declare-fun setRes!47587 () Bool)

(assert (=> setNonEmpty!47579 (= tp!1928470 setRes!47587)))

(declare-fun setIsEmpty!47587 () Bool)

(assert (=> setIsEmpty!47587 setRes!47587))

(declare-fun setElem!47587 () Context!12354)

(declare-fun setNonEmpty!47587 () Bool)

(declare-fun tp!1928544 () Bool)

(declare-fun e!4196744 () Bool)

(assert (=> setNonEmpty!47587 (= setRes!47587 (and tp!1928544 (inv!85811 setElem!47587) e!4196744))))

(declare-fun setRest!47587 () (InoxSet Context!12354))

(assert (=> setNonEmpty!47587 (= setRest!47579 ((_ map or) (store ((as const (Array Context!12354 Bool)) false) setElem!47587 true) setRest!47587))))

(declare-fun b!6982691 () Bool)

(declare-fun tp!1928545 () Bool)

(assert (=> b!6982691 (= e!4196744 tp!1928545)))

(assert (= (and setNonEmpty!47579 condSetEmpty!47587) setIsEmpty!47587))

(assert (= (and setNonEmpty!47579 (not condSetEmpty!47587)) setNonEmpty!47587))

(assert (= setNonEmpty!47587 b!6982691))

(declare-fun m!7669440 () Bool)

(assert (=> setNonEmpty!47587 m!7669440))

(declare-fun b!6982705 () Bool)

(declare-fun e!4196747 () Bool)

(declare-fun tp!1928559 () Bool)

(declare-fun tp!1928557 () Bool)

(assert (=> b!6982705 (= e!4196747 (and tp!1928559 tp!1928557))))

(declare-fun b!6982702 () Bool)

(assert (=> b!6982702 (= e!4196747 tp_is_empty!43587)))

(declare-fun b!6982704 () Bool)

(declare-fun tp!1928558 () Bool)

(assert (=> b!6982704 (= e!4196747 tp!1928558)))

(assert (=> b!6982237 (= tp!1928479 e!4196747)))

(declare-fun b!6982703 () Bool)

(declare-fun tp!1928560 () Bool)

(declare-fun tp!1928556 () Bool)

(assert (=> b!6982703 (= e!4196747 (and tp!1928560 tp!1928556))))

(assert (= (and b!6982237 ((_ is ElementMatch!17181) (h!73412 (exprs!6677 setElem!47573)))) b!6982702))

(assert (= (and b!6982237 ((_ is Concat!26026) (h!73412 (exprs!6677 setElem!47573)))) b!6982703))

(assert (= (and b!6982237 ((_ is Star!17181) (h!73412 (exprs!6677 setElem!47573)))) b!6982704))

(assert (= (and b!6982237 ((_ is Union!17181) (h!73412 (exprs!6677 setElem!47573)))) b!6982705))

(declare-fun b!6982706 () Bool)

(declare-fun e!4196748 () Bool)

(declare-fun tp!1928561 () Bool)

(declare-fun tp!1928562 () Bool)

(assert (=> b!6982706 (= e!4196748 (and tp!1928561 tp!1928562))))

(assert (=> b!6982237 (= tp!1928480 e!4196748)))

(assert (= (and b!6982237 ((_ is Cons!66964) (t!380831 (exprs!6677 setElem!47573)))) b!6982706))

(declare-fun b!6982710 () Bool)

(declare-fun e!4196749 () Bool)

(declare-fun tp!1928566 () Bool)

(declare-fun tp!1928564 () Bool)

(assert (=> b!6982710 (= e!4196749 (and tp!1928566 tp!1928564))))

(declare-fun b!6982707 () Bool)

(assert (=> b!6982707 (= e!4196749 tp_is_empty!43587)))

(declare-fun b!6982709 () Bool)

(declare-fun tp!1928565 () Bool)

(assert (=> b!6982709 (= e!4196749 tp!1928565)))

(assert (=> b!6982238 (= tp!1928481 e!4196749)))

(declare-fun b!6982708 () Bool)

(declare-fun tp!1928567 () Bool)

(declare-fun tp!1928563 () Bool)

(assert (=> b!6982708 (= e!4196749 (and tp!1928567 tp!1928563))))

(assert (= (and b!6982238 ((_ is ElementMatch!17181) (h!73412 (exprs!6677 ct2!306)))) b!6982707))

(assert (= (and b!6982238 ((_ is Concat!26026) (h!73412 (exprs!6677 ct2!306)))) b!6982708))

(assert (= (and b!6982238 ((_ is Star!17181) (h!73412 (exprs!6677 ct2!306)))) b!6982709))

(assert (= (and b!6982238 ((_ is Union!17181) (h!73412 (exprs!6677 ct2!306)))) b!6982710))

(declare-fun b!6982711 () Bool)

(declare-fun e!4196750 () Bool)

(declare-fun tp!1928568 () Bool)

(declare-fun tp!1928569 () Bool)

(assert (=> b!6982711 (= e!4196750 (and tp!1928568 tp!1928569))))

(assert (=> b!6982238 (= tp!1928482 e!4196750)))

(assert (= (and b!6982238 ((_ is Cons!66964) (t!380831 (exprs!6677 ct2!306)))) b!6982711))

(declare-fun b!6982712 () Bool)

(declare-fun e!4196751 () Bool)

(declare-fun tp!1928570 () Bool)

(assert (=> b!6982712 (= e!4196751 (and tp_is_empty!43587 tp!1928570))))

(assert (=> b!6982232 (= tp!1928474 e!4196751)))

(assert (= (and b!6982232 ((_ is Cons!66965) (t!380832 (t!380832 s!7408)))) b!6982712))

(declare-fun b_lambda!261843 () Bool)

(assert (= b_lambda!261829 (or b!6981955 b_lambda!261843)))

(declare-fun bs!1861139 () Bool)

(declare-fun d!2174666 () Bool)

(assert (= bs!1861139 (and d!2174666 b!6981955)))

(assert (=> bs!1861139 (= (dynLambda!26791 lambda!399462 (h!73412 (++!15126 (exprs!6677 lt!2482316) (exprs!6677 ct2!306)))) (validRegex!8841 (h!73412 (++!15126 (exprs!6677 lt!2482316) (exprs!6677 ct2!306)))))))

(declare-fun m!7669442 () Bool)

(assert (=> bs!1861139 m!7669442))

(assert (=> b!6982559 d!2174666))

(declare-fun b_lambda!261845 () Bool)

(assert (= b_lambda!261837 (or d!2174366 b_lambda!261845)))

(declare-fun bs!1861140 () Bool)

(declare-fun d!2174668 () Bool)

(assert (= bs!1861140 (and d!2174668 d!2174366)))

(assert (=> bs!1861140 (= (dynLambda!26791 lambda!399490 (h!73412 (exprs!6677 ct2!306))) (validRegex!8841 (h!73412 (exprs!6677 ct2!306))))))

(declare-fun m!7669444 () Bool)

(assert (=> bs!1861140 m!7669444))

(assert (=> b!6982679 d!2174668))

(declare-fun b_lambda!261847 () Bool)

(assert (= b_lambda!261841 (or b!6981955 b_lambda!261847)))

(declare-fun bs!1861141 () Bool)

(declare-fun d!2174670 () Bool)

(assert (= bs!1861141 (and d!2174670 b!6981955)))

(assert (=> bs!1861141 (= (dynLambda!26791 lambda!399462 (h!73412 lt!2482321)) (validRegex!8841 (h!73412 lt!2482321)))))

(declare-fun m!7669446 () Bool)

(assert (=> bs!1861141 m!7669446))

(assert (=> b!6982688 d!2174670))

(declare-fun b_lambda!261849 () Bool)

(assert (= b_lambda!261823 (or b!6981960 b_lambda!261849)))

(assert (=> d!2174582 d!2174390))

(declare-fun b_lambda!261851 () Bool)

(assert (= b_lambda!261821 (or d!2174376 b_lambda!261851)))

(declare-fun bs!1861142 () Bool)

(declare-fun d!2174672 () Bool)

(assert (= bs!1861142 (and d!2174672 d!2174376)))

(assert (=> bs!1861142 (= (dynLambda!26787 lambda!399493 (h!73414 lt!2482329)) (not (dynLambda!26787 lambda!399460 (h!73414 lt!2482329))))))

(declare-fun b_lambda!261865 () Bool)

(assert (=> (not b_lambda!261865) (not bs!1861142)))

(declare-fun m!7669448 () Bool)

(assert (=> bs!1861142 m!7669448))

(assert (=> b!6982496 d!2174672))

(declare-fun b_lambda!261853 () Bool)

(assert (= b_lambda!261825 (or d!2174330 b_lambda!261853)))

(declare-fun bs!1861143 () Bool)

(declare-fun d!2174674 () Bool)

(assert (= bs!1861143 (and d!2174674 d!2174330)))

(assert (=> bs!1861143 (= (dynLambda!26791 lambda!399477 (h!73412 (exprs!6677 setElem!47573))) (validRegex!8841 (h!73412 (exprs!6677 setElem!47573))))))

(declare-fun m!7669450 () Bool)

(assert (=> bs!1861143 m!7669450))

(assert (=> b!6982532 d!2174674))

(declare-fun b_lambda!261855 () Bool)

(assert (= b_lambda!261833 (or b!6981954 b_lambda!261855)))

(declare-fun bs!1861144 () Bool)

(declare-fun d!2174676 () Bool)

(assert (= bs!1861144 (and d!2174676 b!6981954)))

(assert (=> bs!1861144 (= (dynLambda!26787 lambda!399460 (h!73414 (toList!10541 lt!2482327))) (matchZipper!2721 (store ((as const (Array Context!12354 Bool)) false) (h!73414 (toList!10541 lt!2482327)) true) s!7408))))

(declare-fun m!7669452 () Bool)

(assert (=> bs!1861144 m!7669452))

(assert (=> bs!1861144 m!7669452))

(declare-fun m!7669454 () Bool)

(assert (=> bs!1861144 m!7669454))

(assert (=> b!6982580 d!2174676))

(declare-fun b_lambda!261857 () Bool)

(assert (= b_lambda!261835 (or b!6981954 b_lambda!261857)))

(declare-fun bs!1861145 () Bool)

(declare-fun d!2174678 () Bool)

(assert (= bs!1861145 (and d!2174678 b!6981954)))

(assert (=> bs!1861145 (= (dynLambda!26787 lambda!399460 lt!2482416) (matchZipper!2721 (store ((as const (Array Context!12354 Bool)) false) lt!2482416 true) s!7408))))

(declare-fun m!7669456 () Bool)

(assert (=> bs!1861145 m!7669456))

(assert (=> bs!1861145 m!7669456))

(declare-fun m!7669458 () Bool)

(assert (=> bs!1861145 m!7669458))

(assert (=> d!2174612 d!2174678))

(declare-fun b_lambda!261859 () Bool)

(assert (= b_lambda!261827 (or b!6981955 b_lambda!261859)))

(declare-fun bs!1861146 () Bool)

(declare-fun d!2174680 () Bool)

(assert (= bs!1861146 (and d!2174680 b!6981955)))

(declare-fun lt!2482423 () Unit!161014)

(assert (=> bs!1861146 (= lt!2482423 (lemmaConcatPreservesForall!517 (exprs!6677 a!12644) (exprs!6677 ct2!306) lambda!399462))))

(assert (=> bs!1861146 (= (dynLambda!26786 lambda!399461 a!12644) (Context!12355 (++!15126 (exprs!6677 a!12644) (exprs!6677 ct2!306))))))

(declare-fun m!7669460 () Bool)

(assert (=> bs!1861146 m!7669460))

(declare-fun m!7669462 () Bool)

(assert (=> bs!1861146 m!7669462))

(assert (=> d!2174596 d!2174680))

(declare-fun b_lambda!261861 () Bool)

(assert (= b_lambda!261839 (or b!6981955 b_lambda!261861)))

(declare-fun bs!1861147 () Bool)

(declare-fun d!2174682 () Bool)

(assert (= bs!1861147 (and d!2174682 b!6981955)))

(assert (=> bs!1861147 (= (dynLambda!26791 lambda!399462 (h!73412 (++!15126 lt!2482321 (exprs!6677 ct2!306)))) (validRegex!8841 (h!73412 (++!15126 lt!2482321 (exprs!6677 ct2!306)))))))

(declare-fun m!7669464 () Bool)

(assert (=> bs!1861147 m!7669464))

(assert (=> b!6982686 d!2174682))

(declare-fun b_lambda!261863 () Bool)

(assert (= b_lambda!261831 (or b!6981955 b_lambda!261863)))

(declare-fun bs!1861148 () Bool)

(declare-fun d!2174684 () Bool)

(assert (= bs!1861148 (and d!2174684 b!6981955)))

(assert (=> bs!1861148 (= (dynLambda!26791 lambda!399462 (h!73412 (exprs!6677 lt!2482316))) (validRegex!8841 (h!73412 (exprs!6677 lt!2482316))))))

(assert (=> bs!1861148 m!7668570))

(assert (=> b!6982561 d!2174684))

(check-sat (not d!2174558) (not b!6982640) (not bm!633706) (not b!6982505) (not d!2174590) (not b!6982705) (not b!6982681) (not bs!1861139) (not bm!633715) (not d!2174550) (not b!6982691) (not d!2174634) (not b!6982657) (not b!6982546) (not b!6982603) (not b!6982565) (not bm!633722) (not b!6982646) (not d!2174612) (not bm!633703) (not b!6982689) (not d!2174592) (not b!6982687) (not b!6982562) (not d!2174574) (not b!6982619) (not b!6982477) (not b_lambda!261843) (not b_lambda!261771) (not setNonEmpty!47586) (not b_lambda!261857) (not b!6982711) (not b!6982618) (not b!6982611) (not b!6982497) (not d!2174648) tp_is_empty!43587 (not b_lambda!261863) (not d!2174578) (not setNonEmpty!47587) (not b!6982703) (not b_lambda!261773) (not b!6982483) (not d!2174614) (not b!6982669) (not b!6982685) (not d!2174576) (not bm!633697) (not d!2174610) (not d!2174646) (not bm!633695) (not b!6982490) (not bm!633712) (not bs!1861143) (not b!6982503) (not b_lambda!261853) (not b!6982487) (not d!2174540) (not b!6982708) (not bm!633711) (not b!6982554) (not bm!633726) (not b!6982628) (not d!2174570) (not bs!1861141) (not b!6982704) (not bm!633696) (not b!6982627) (not d!2174572) (not d!2174560) (not b!6982680) (not bs!1861144) (not d!2174640) (not b_lambda!261769) (not b!6982564) (not bm!633690) (not b_lambda!261851) (not bs!1861140) (not bs!1861145) (not b!6982710) (not b_lambda!261861) (not b!6982558) (not d!2174566) (not b_lambda!261855) (not b!6982489) (not b!6982560) (not d!2174594) (not bm!633701) (not b!6982709) (not b!6982533) (not d!2174568) (not d!2174598) (not b!6982626) (not bs!1861148) (not b!6982690) (not bm!633725) (not bm!633700) (not b!6982547) (not b!6982706) (not b!6982607) (not d!2174662) (not d!2174650) (not b_lambda!261859) (not b!6982506) (not b!6982485) (not b_lambda!261865) (not b!6982502) (not b!6982712) (not b!6982634) (not b_lambda!261845) (not b!6982605) (not bm!633707) (not d!2174602) (not bm!633727) (not b!6982675) (not d!2174596) (not d!2174582) (not b!6982666) (not b!6982587) (not bm!633716) (not d!2174588) (not bm!633710) (not b!6982584) (not b!6982609) (not b_lambda!261849) (not bm!633718) (not bs!1861146) (not bs!1861147) (not b!6982536) (not d!2174606) (not b!6982667) (not bm!633721) (not b!6982504) (not b_lambda!261847) (not b!6982476) (not b!6982582) (not b!6982613) (not b!6982601) (not b!6982583) (not b!6982498))
(check-sat)
