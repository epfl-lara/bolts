; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!676534 () Bool)

(assert start!676534)

(declare-fun b!7017905 () Bool)

(assert (=> b!7017905 true))

(declare-fun b!7017890 () Bool)

(assert (=> b!7017890 true))

(declare-fun b!7017907 () Bool)

(assert (=> b!7017907 true))

(declare-fun setIsEmpty!48576 () Bool)

(declare-fun setRes!48576 () Bool)

(assert (=> setIsEmpty!48576 setRes!48576))

(declare-fun res!2864284 () Bool)

(declare-fun e!4218586 () Bool)

(assert (=> start!676534 (=> (not res!2864284) (not e!4218586))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!34992 0))(
  ( (C!34993 (val!27198 Int)) )
))
(declare-datatypes ((Regex!17361 0))(
  ( (ElementMatch!17361 (c!1304028 C!34992)) (Concat!26206 (regOne!35234 Regex!17361) (regTwo!35234 Regex!17361)) (EmptyExpr!17361) (Star!17361 (reg!17690 Regex!17361)) (EmptyLang!17361) (Union!17361 (regOne!35235 Regex!17361) (regTwo!35235 Regex!17361)) )
))
(declare-datatypes ((List!67628 0))(
  ( (Nil!67504) (Cons!67504 (h!73952 Regex!17361) (t!381383 List!67628)) )
))
(declare-datatypes ((Context!12714 0))(
  ( (Context!12715 (exprs!6857 List!67628)) )
))
(declare-fun lt!2509374 () (InoxSet Context!12714))

(declare-datatypes ((List!67629 0))(
  ( (Nil!67505) (Cons!67505 (h!73953 C!34992) (t!381384 List!67629)) )
))
(declare-fun s!7408 () List!67629)

(declare-fun matchZipper!2901 ((InoxSet Context!12714) List!67629) Bool)

(assert (=> start!676534 (= res!2864284 (matchZipper!2901 lt!2509374 s!7408))))

(declare-fun z1!570 () (InoxSet Context!12714))

(declare-fun ct2!306 () Context!12714)

(declare-fun appendTo!482 ((InoxSet Context!12714) Context!12714) (InoxSet Context!12714))

(assert (=> start!676534 (= lt!2509374 (appendTo!482 z1!570 ct2!306))))

(assert (=> start!676534 e!4218586))

(declare-fun condSetEmpty!48576 () Bool)

(assert (=> start!676534 (= condSetEmpty!48576 (= z1!570 ((as const (Array Context!12714 Bool)) false)))))

(assert (=> start!676534 setRes!48576))

(declare-fun e!4218594 () Bool)

(declare-fun inv!86261 (Context!12714) Bool)

(assert (=> start!676534 (and (inv!86261 ct2!306) e!4218594)))

(declare-fun e!4218588 () Bool)

(assert (=> start!676534 e!4218588))

(declare-fun b!7017887 () Bool)

(declare-fun e!4218589 () Bool)

(assert (=> b!7017887 (= e!4218589 true)))

(declare-fun lt!2509380 () List!67629)

(declare-fun ++!15386 (List!67629 List!67629) List!67629)

(assert (=> b!7017887 (= lt!2509380 (++!15386 Nil!67505 s!7408))))

(declare-fun b!7017888 () Bool)

(declare-fun res!2864294 () Bool)

(declare-fun e!4218593 () Bool)

(assert (=> b!7017888 (=> res!2864294 e!4218593)))

(declare-datatypes ((tuple2!68004 0))(
  ( (tuple2!68005 (_1!37305 List!67629) (_2!37305 List!67629)) )
))
(declare-fun lt!2509379 () tuple2!68004)

(assert (=> b!7017888 (= res!2864294 (not (= (++!15386 (_1!37305 lt!2509379) (_2!37305 lt!2509379)) (t!381384 s!7408))))))

(declare-fun b!7017889 () Bool)

(declare-fun res!2864288 () Bool)

(declare-fun e!4218598 () Bool)

(assert (=> b!7017889 (=> res!2864288 e!4218598)))

(declare-fun lt!2509398 () Context!12714)

(declare-fun isEmpty!39426 (List!67628) Bool)

(assert (=> b!7017889 (= res!2864288 (isEmpty!39426 (exprs!6857 lt!2509398)))))

(declare-fun e!4218592 () Bool)

(declare-fun e!4218587 () Bool)

(assert (=> b!7017890 (= e!4218592 e!4218587)))

(declare-fun res!2864282 () Bool)

(assert (=> b!7017890 (=> res!2864282 e!4218587)))

(declare-fun lt!2509381 () Context!12714)

(declare-fun lt!2509387 () Context!12714)

(assert (=> b!7017890 (= res!2864282 (or (not (= lt!2509381 lt!2509387)) (not (select z1!570 lt!2509398))))))

(declare-fun ++!15387 (List!67628 List!67628) List!67628)

(assert (=> b!7017890 (= lt!2509381 (Context!12715 (++!15387 (exprs!6857 lt!2509398) (exprs!6857 ct2!306))))))

(declare-datatypes ((Unit!161404 0))(
  ( (Unit!161405) )
))
(declare-fun lt!2509376 () Unit!161404)

(declare-fun lambda!410400 () Int)

(declare-fun lemmaConcatPreservesForall!697 (List!67628 List!67628 Int) Unit!161404)

(assert (=> b!7017890 (= lt!2509376 (lemmaConcatPreservesForall!697 (exprs!6857 lt!2509398) (exprs!6857 ct2!306) lambda!410400))))

(declare-fun lambda!410399 () Int)

(declare-fun mapPost2!216 ((InoxSet Context!12714) Int Context!12714) Context!12714)

(assert (=> b!7017890 (= lt!2509398 (mapPost2!216 z1!570 lambda!410399 lt!2509387))))

(declare-fun b!7017891 () Bool)

(declare-fun res!2864283 () Bool)

(assert (=> b!7017891 (=> res!2864283 e!4218592)))

(assert (=> b!7017891 (= res!2864283 (not (select lt!2509374 lt!2509387)))))

(declare-fun b!7017892 () Bool)

(declare-fun e!4218595 () Bool)

(assert (=> b!7017892 (= e!4218593 e!4218595)))

(declare-fun res!2864285 () Bool)

(assert (=> b!7017892 (=> res!2864285 e!4218595)))

(declare-fun lt!2509388 () (InoxSet Context!12714))

(declare-fun lt!2509375 () (InoxSet Context!12714))

(declare-fun lt!2509389 () (InoxSet Context!12714))

(assert (=> b!7017892 (= res!2864285 (or (not (= lt!2509389 lt!2509375)) (not (= lt!2509389 lt!2509388))))))

(declare-fun lt!2509394 () (InoxSet Context!12714))

(declare-fun lambda!410401 () Int)

(declare-fun flatMap!2347 ((InoxSet Context!12714) Int) (InoxSet Context!12714))

(declare-fun derivationStepZipperUp!2011 (Context!12714 C!34992) (InoxSet Context!12714))

(assert (=> b!7017892 (= (flatMap!2347 lt!2509394 lambda!410401) (derivationStepZipperUp!2011 lt!2509398 (h!73953 s!7408)))))

(declare-fun lt!2509378 () Unit!161404)

(declare-fun lemmaFlatMapOnSingletonSet!1862 ((InoxSet Context!12714) Context!12714 Int) Unit!161404)

(assert (=> b!7017892 (= lt!2509378 (lemmaFlatMapOnSingletonSet!1862 lt!2509394 lt!2509398 lambda!410401))))

(assert (=> b!7017892 (= lt!2509375 (derivationStepZipperUp!2011 lt!2509398 (h!73953 s!7408)))))

(declare-fun derivationStepZipper!2841 ((InoxSet Context!12714) C!34992) (InoxSet Context!12714))

(assert (=> b!7017892 (= lt!2509389 (derivationStepZipper!2841 lt!2509394 (h!73953 s!7408)))))

(assert (=> b!7017892 (= lt!2509394 (store ((as const (Array Context!12714 Bool)) false) lt!2509398 true))))

(declare-fun b!7017893 () Bool)

(declare-fun res!2864281 () Bool)

(assert (=> b!7017893 (=> res!2864281 e!4218589)))

(declare-fun lt!2509396 () List!67629)

(assert (=> b!7017893 (= res!2864281 (not (= (++!15386 lt!2509396 (_2!37305 lt!2509379)) s!7408)))))

(declare-fun b!7017894 () Bool)

(declare-fun tp_is_empty!43947 () Bool)

(declare-fun tp!1933470 () Bool)

(assert (=> b!7017894 (= e!4218588 (and tp_is_empty!43947 tp!1933470))))

(declare-fun b!7017895 () Bool)

(declare-fun e!4218590 () Bool)

(declare-fun e!4218597 () Bool)

(assert (=> b!7017895 (= e!4218590 e!4218597)))

(declare-fun res!2864287 () Bool)

(assert (=> b!7017895 (=> res!2864287 e!4218597)))

(declare-fun lt!2509392 () (InoxSet Context!12714))

(assert (=> b!7017895 (= res!2864287 (not (matchZipper!2901 lt!2509392 (t!381384 s!7408))))))

(declare-fun lt!2509386 () List!67628)

(declare-fun derivationStepZipperDown!2079 (Regex!17361 Context!12714 C!34992) (InoxSet Context!12714))

(assert (=> b!7017895 (= lt!2509392 (derivationStepZipperDown!2079 (h!73952 (exprs!6857 lt!2509398)) (Context!12715 (++!15387 lt!2509386 (exprs!6857 ct2!306))) (h!73953 s!7408)))))

(declare-fun lt!2509393 () Unit!161404)

(assert (=> b!7017895 (= lt!2509393 (lemmaConcatPreservesForall!697 lt!2509386 (exprs!6857 ct2!306) lambda!410400))))

(declare-fun b!7017896 () Bool)

(assert (=> b!7017896 (= e!4218598 e!4218590)))

(declare-fun res!2864279 () Bool)

(assert (=> b!7017896 (=> res!2864279 e!4218590)))

(declare-fun nullable!7121 (Regex!17361) Bool)

(assert (=> b!7017896 (= res!2864279 (nullable!7121 (h!73952 (exprs!6857 lt!2509398))))))

(declare-fun lt!2509391 () Context!12714)

(assert (=> b!7017896 (= lt!2509391 (Context!12715 lt!2509386))))

(declare-fun tail!13457 (List!67628) List!67628)

(assert (=> b!7017896 (= lt!2509386 (tail!13457 (exprs!6857 lt!2509398)))))

(declare-fun b!7017897 () Bool)

(declare-fun e!4218596 () Bool)

(declare-fun tp!1933473 () Bool)

(assert (=> b!7017897 (= e!4218596 tp!1933473)))

(declare-fun b!7017898 () Bool)

(assert (=> b!7017898 (= e!4218595 e!4218589)))

(declare-fun res!2864295 () Bool)

(assert (=> b!7017898 (=> res!2864295 e!4218589)))

(assert (=> b!7017898 (= res!2864295 (not (matchZipper!2901 lt!2509394 lt!2509396)))))

(assert (=> b!7017898 (= lt!2509396 (Cons!67505 (h!73953 s!7408) (_1!37305 lt!2509379)))))

(declare-fun setElem!48576 () Context!12714)

(declare-fun tp!1933472 () Bool)

(declare-fun setNonEmpty!48576 () Bool)

(assert (=> setNonEmpty!48576 (= setRes!48576 (and tp!1933472 (inv!86261 setElem!48576) e!4218596))))

(declare-fun setRest!48576 () (InoxSet Context!12714))

(assert (=> setNonEmpty!48576 (= z1!570 ((_ map or) (store ((as const (Array Context!12714 Bool)) false) setElem!48576 true) setRest!48576))))

(declare-fun b!7017899 () Bool)

(declare-fun e!4218591 () Bool)

(assert (=> b!7017899 (= e!4218587 e!4218591)))

(declare-fun res!2864280 () Bool)

(assert (=> b!7017899 (=> res!2864280 e!4218591)))

(declare-fun lt!2509399 () (InoxSet Context!12714))

(declare-fun lt!2509395 () (InoxSet Context!12714))

(assert (=> b!7017899 (= res!2864280 (not (= lt!2509399 lt!2509395)))))

(assert (=> b!7017899 (= lt!2509399 (store ((as const (Array Context!12714 Bool)) false) lt!2509381 true))))

(declare-fun lt!2509384 () Unit!161404)

(assert (=> b!7017899 (= lt!2509384 (lemmaConcatPreservesForall!697 (exprs!6857 lt!2509398) (exprs!6857 ct2!306) lambda!410400))))

(declare-fun b!7017900 () Bool)

(declare-fun res!2864278 () Bool)

(assert (=> b!7017900 (=> res!2864278 e!4218589)))

(declare-fun isPrefix!5830 (List!67629 List!67629) Bool)

(assert (=> b!7017900 (= res!2864278 (not (isPrefix!5830 Nil!67505 lt!2509396)))))

(declare-fun b!7017901 () Bool)

(assert (=> b!7017901 (= e!4218597 e!4218593)))

(declare-fun res!2864286 () Bool)

(assert (=> b!7017901 (=> res!2864286 e!4218593)))

(assert (=> b!7017901 (= res!2864286 (not (matchZipper!2901 lt!2509388 (_1!37305 lt!2509379))))))

(declare-datatypes ((Option!16834 0))(
  ( (None!16833) (Some!16833 (v!53111 tuple2!68004)) )
))
(declare-fun lt!2509400 () Option!16834)

(declare-fun get!23673 (Option!16834) tuple2!68004)

(assert (=> b!7017901 (= lt!2509379 (get!23673 lt!2509400))))

(declare-fun isDefined!13535 (Option!16834) Bool)

(assert (=> b!7017901 (isDefined!13535 lt!2509400)))

(declare-fun lt!2509382 () (InoxSet Context!12714))

(declare-fun findConcatSeparationZippers!350 ((InoxSet Context!12714) (InoxSet Context!12714) List!67629 List!67629 List!67629) Option!16834)

(assert (=> b!7017901 (= lt!2509400 (findConcatSeparationZippers!350 lt!2509388 lt!2509382 Nil!67505 (t!381384 s!7408) (t!381384 s!7408)))))

(assert (=> b!7017901 (= lt!2509382 (store ((as const (Array Context!12714 Bool)) false) ct2!306 true))))

(declare-fun lt!2509377 () Unit!161404)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!350 ((InoxSet Context!12714) Context!12714 List!67629) Unit!161404)

(assert (=> b!7017901 (= lt!2509377 (lemmaConcatZipperMatchesStringThenFindConcatDefined!350 lt!2509388 ct2!306 (t!381384 s!7408)))))

(assert (=> b!7017901 (= lt!2509392 (appendTo!482 lt!2509388 ct2!306))))

(assert (=> b!7017901 (= lt!2509388 (derivationStepZipperDown!2079 (h!73952 (exprs!6857 lt!2509398)) lt!2509391 (h!73953 s!7408)))))

(declare-fun lt!2509385 () Unit!161404)

(assert (=> b!7017901 (= lt!2509385 (lemmaConcatPreservesForall!697 lt!2509386 (exprs!6857 ct2!306) lambda!410400))))

(declare-fun lt!2509397 () Unit!161404)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!52 (Context!12714 Regex!17361 C!34992 Context!12714) Unit!161404)

(assert (=> b!7017901 (= lt!2509397 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!52 lt!2509391 (h!73952 (exprs!6857 lt!2509398)) (h!73953 s!7408) ct2!306))))

(declare-fun b!7017902 () Bool)

(declare-fun res!2864291 () Bool)

(assert (=> b!7017902 (=> res!2864291 e!4218593)))

(assert (=> b!7017902 (= res!2864291 (not (matchZipper!2901 lt!2509382 (_2!37305 lt!2509379))))))

(declare-fun b!7017903 () Bool)

(declare-fun tp!1933471 () Bool)

(assert (=> b!7017903 (= e!4218594 tp!1933471)))

(declare-fun b!7017904 () Bool)

(declare-fun res!2864292 () Bool)

(assert (=> b!7017904 (=> res!2864292 e!4218598)))

(get-info :version)

(assert (=> b!7017904 (= res!2864292 (not ((_ is Cons!67504) (exprs!6857 lt!2509398))))))

(assert (=> b!7017905 (= e!4218586 (not e!4218592))))

(declare-fun res!2864290 () Bool)

(assert (=> b!7017905 (=> res!2864290 e!4218592)))

(assert (=> b!7017905 (= res!2864290 (not (matchZipper!2901 lt!2509395 s!7408)))))

(assert (=> b!7017905 (= lt!2509395 (store ((as const (Array Context!12714 Bool)) false) lt!2509387 true))))

(declare-fun lambda!410398 () Int)

(declare-fun getWitness!1323 ((InoxSet Context!12714) Int) Context!12714)

(assert (=> b!7017905 (= lt!2509387 (getWitness!1323 lt!2509374 lambda!410398))))

(declare-datatypes ((List!67630 0))(
  ( (Nil!67506) (Cons!67506 (h!73954 Context!12714) (t!381385 List!67630)) )
))
(declare-fun lt!2509373 () List!67630)

(declare-fun exists!3230 (List!67630 Int) Bool)

(assert (=> b!7017905 (exists!3230 lt!2509373 lambda!410398)))

(declare-fun lt!2509371 () Unit!161404)

(declare-fun lemmaZipperMatchesExistsMatchingContext!330 (List!67630 List!67629) Unit!161404)

(assert (=> b!7017905 (= lt!2509371 (lemmaZipperMatchesExistsMatchingContext!330 lt!2509373 s!7408))))

(declare-fun toList!10721 ((InoxSet Context!12714)) List!67630)

(assert (=> b!7017905 (= lt!2509373 (toList!10721 lt!2509374))))

(declare-fun b!7017906 () Bool)

(declare-fun res!2864293 () Bool)

(assert (=> b!7017906 (=> (not res!2864293) (not e!4218586))))

(assert (=> b!7017906 (= res!2864293 ((_ is Cons!67505) s!7408))))

(assert (=> b!7017907 (= e!4218591 e!4218598)))

(declare-fun res!2864289 () Bool)

(assert (=> b!7017907 (=> res!2864289 e!4218598)))

(declare-fun lt!2509383 () (InoxSet Context!12714))

(assert (=> b!7017907 (= res!2864289 (not (= (derivationStepZipper!2841 lt!2509399 (h!73953 s!7408)) lt!2509383)))))

(assert (=> b!7017907 (= (flatMap!2347 lt!2509399 lambda!410401) (derivationStepZipperUp!2011 lt!2509381 (h!73953 s!7408)))))

(declare-fun lt!2509372 () Unit!161404)

(assert (=> b!7017907 (= lt!2509372 (lemmaFlatMapOnSingletonSet!1862 lt!2509399 lt!2509381 lambda!410401))))

(assert (=> b!7017907 (= lt!2509383 (derivationStepZipperUp!2011 lt!2509381 (h!73953 s!7408)))))

(declare-fun lt!2509390 () Unit!161404)

(assert (=> b!7017907 (= lt!2509390 (lemmaConcatPreservesForall!697 (exprs!6857 lt!2509398) (exprs!6857 ct2!306) lambda!410400))))

(assert (= (and start!676534 res!2864284) b!7017906))

(assert (= (and b!7017906 res!2864293) b!7017905))

(assert (= (and b!7017905 (not res!2864290)) b!7017891))

(assert (= (and b!7017891 (not res!2864283)) b!7017890))

(assert (= (and b!7017890 (not res!2864282)) b!7017899))

(assert (= (and b!7017899 (not res!2864280)) b!7017907))

(assert (= (and b!7017907 (not res!2864289)) b!7017904))

(assert (= (and b!7017904 (not res!2864292)) b!7017889))

(assert (= (and b!7017889 (not res!2864288)) b!7017896))

(assert (= (and b!7017896 (not res!2864279)) b!7017895))

(assert (= (and b!7017895 (not res!2864287)) b!7017901))

(assert (= (and b!7017901 (not res!2864286)) b!7017902))

(assert (= (and b!7017902 (not res!2864291)) b!7017888))

(assert (= (and b!7017888 (not res!2864294)) b!7017892))

(assert (= (and b!7017892 (not res!2864285)) b!7017898))

(assert (= (and b!7017898 (not res!2864295)) b!7017893))

(assert (= (and b!7017893 (not res!2864281)) b!7017900))

(assert (= (and b!7017900 (not res!2864278)) b!7017887))

(assert (= (and start!676534 condSetEmpty!48576) setIsEmpty!48576))

(assert (= (and start!676534 (not condSetEmpty!48576)) setNonEmpty!48576))

(assert (= setNonEmpty!48576 b!7017897))

(assert (= start!676534 b!7017903))

(assert (= (and start!676534 ((_ is Cons!67505) s!7408)) b!7017894))

(declare-fun m!7718098 () Bool)

(assert (=> b!7017900 m!7718098))

(declare-fun m!7718100 () Bool)

(assert (=> b!7017899 m!7718100))

(declare-fun m!7718102 () Bool)

(assert (=> b!7017899 m!7718102))

(declare-fun m!7718104 () Bool)

(assert (=> b!7017892 m!7718104))

(declare-fun m!7718106 () Bool)

(assert (=> b!7017892 m!7718106))

(declare-fun m!7718108 () Bool)

(assert (=> b!7017892 m!7718108))

(declare-fun m!7718110 () Bool)

(assert (=> b!7017892 m!7718110))

(declare-fun m!7718112 () Bool)

(assert (=> b!7017892 m!7718112))

(declare-fun m!7718114 () Bool)

(assert (=> b!7017887 m!7718114))

(declare-fun m!7718116 () Bool)

(assert (=> setNonEmpty!48576 m!7718116))

(declare-fun m!7718118 () Bool)

(assert (=> b!7017898 m!7718118))

(declare-fun m!7718120 () Bool)

(assert (=> b!7017891 m!7718120))

(declare-fun m!7718122 () Bool)

(assert (=> b!7017901 m!7718122))

(declare-fun m!7718124 () Bool)

(assert (=> b!7017901 m!7718124))

(declare-fun m!7718126 () Bool)

(assert (=> b!7017901 m!7718126))

(declare-fun m!7718128 () Bool)

(assert (=> b!7017901 m!7718128))

(declare-fun m!7718130 () Bool)

(assert (=> b!7017901 m!7718130))

(declare-fun m!7718132 () Bool)

(assert (=> b!7017901 m!7718132))

(declare-fun m!7718134 () Bool)

(assert (=> b!7017901 m!7718134))

(declare-fun m!7718136 () Bool)

(assert (=> b!7017901 m!7718136))

(declare-fun m!7718138 () Bool)

(assert (=> b!7017901 m!7718138))

(declare-fun m!7718140 () Bool)

(assert (=> b!7017901 m!7718140))

(declare-fun m!7718142 () Bool)

(assert (=> b!7017905 m!7718142))

(declare-fun m!7718144 () Bool)

(assert (=> b!7017905 m!7718144))

(declare-fun m!7718146 () Bool)

(assert (=> b!7017905 m!7718146))

(declare-fun m!7718148 () Bool)

(assert (=> b!7017905 m!7718148))

(declare-fun m!7718150 () Bool)

(assert (=> b!7017905 m!7718150))

(declare-fun m!7718152 () Bool)

(assert (=> b!7017905 m!7718152))

(declare-fun m!7718154 () Bool)

(assert (=> b!7017907 m!7718154))

(declare-fun m!7718156 () Bool)

(assert (=> b!7017907 m!7718156))

(declare-fun m!7718158 () Bool)

(assert (=> b!7017907 m!7718158))

(declare-fun m!7718160 () Bool)

(assert (=> b!7017907 m!7718160))

(assert (=> b!7017907 m!7718102))

(declare-fun m!7718162 () Bool)

(assert (=> b!7017889 m!7718162))

(declare-fun m!7718164 () Bool)

(assert (=> b!7017895 m!7718164))

(declare-fun m!7718166 () Bool)

(assert (=> b!7017895 m!7718166))

(declare-fun m!7718168 () Bool)

(assert (=> b!7017895 m!7718168))

(assert (=> b!7017895 m!7718138))

(declare-fun m!7718170 () Bool)

(assert (=> b!7017896 m!7718170))

(declare-fun m!7718172 () Bool)

(assert (=> b!7017896 m!7718172))

(declare-fun m!7718174 () Bool)

(assert (=> start!676534 m!7718174))

(declare-fun m!7718176 () Bool)

(assert (=> start!676534 m!7718176))

(declare-fun m!7718178 () Bool)

(assert (=> start!676534 m!7718178))

(declare-fun m!7718180 () Bool)

(assert (=> b!7017893 m!7718180))

(declare-fun m!7718182 () Bool)

(assert (=> b!7017888 m!7718182))

(declare-fun m!7718184 () Bool)

(assert (=> b!7017902 m!7718184))

(declare-fun m!7718186 () Bool)

(assert (=> b!7017890 m!7718186))

(declare-fun m!7718188 () Bool)

(assert (=> b!7017890 m!7718188))

(assert (=> b!7017890 m!7718102))

(declare-fun m!7718190 () Bool)

(assert (=> b!7017890 m!7718190))

(check-sat (not b!7017897) (not b!7017898) (not start!676534) (not b!7017892) (not b!7017907) (not b!7017902) (not b!7017889) (not b!7017890) (not b!7017894) tp_is_empty!43947 (not b!7017893) (not b!7017895) (not b!7017887) (not b!7017896) (not b!7017888) (not b!7017899) (not b!7017900) (not setNonEmpty!48576) (not b!7017903) (not b!7017905) (not b!7017901))
(check-sat)
