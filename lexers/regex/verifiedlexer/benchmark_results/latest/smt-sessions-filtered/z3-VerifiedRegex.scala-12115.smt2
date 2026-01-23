; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!680658 () Bool)

(assert start!680658)

(declare-fun b!7038386 () Bool)

(assert (=> b!7038386 true))

(declare-fun b!7038392 () Bool)

(assert (=> b!7038392 true))

(declare-fun b!7038390 () Bool)

(assert (=> b!7038390 true))

(declare-fun b!7038365 () Bool)

(declare-fun res!2873189 () Bool)

(declare-fun e!4231192 () Bool)

(assert (=> b!7038365 (=> res!2873189 e!4231192)))

(declare-datatypes ((C!35224 0))(
  ( (C!35225 (val!27314 Int)) )
))
(declare-datatypes ((List!67959 0))(
  ( (Nil!67835) (Cons!67835 (h!74283 C!35224) (t!381730 List!67959)) )
))
(declare-datatypes ((tuple2!68100 0))(
  ( (tuple2!68101 (_1!37353 List!67959) (_2!37353 List!67959)) )
))
(declare-fun lt!2522115 () tuple2!68100)

(declare-fun isEmpty!39577 (List!67959) Bool)

(assert (=> b!7038365 (= res!2873189 (isEmpty!39577 (_1!37353 lt!2522115)))))

(declare-fun b!7038366 () Bool)

(declare-fun res!2873204 () Bool)

(assert (=> b!7038366 (=> res!2873204 e!4231192)))

(declare-fun s!7408 () List!67959)

(declare-fun ++!15534 (List!67959 List!67959) List!67959)

(assert (=> b!7038366 (= res!2873204 (not (= (++!15534 (_1!37353 lt!2522115) (_2!37353 lt!2522115)) s!7408)))))

(declare-fun b!7038367 () Bool)

(declare-fun e!4231194 () Bool)

(declare-fun e!4231191 () Bool)

(assert (=> b!7038367 (= e!4231194 e!4231191)))

(declare-fun res!2873188 () Bool)

(assert (=> b!7038367 (=> res!2873188 e!4231191)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!17477 0))(
  ( (ElementMatch!17477 (c!1309841 C!35224)) (Concat!26322 (regOne!35466 Regex!17477) (regTwo!35466 Regex!17477)) (EmptyExpr!17477) (Star!17477 (reg!17806 Regex!17477)) (EmptyLang!17477) (Union!17477 (regOne!35467 Regex!17477) (regTwo!35467 Regex!17477)) )
))
(declare-datatypes ((List!67960 0))(
  ( (Nil!67836) (Cons!67836 (h!74284 Regex!17477) (t!381731 List!67960)) )
))
(declare-datatypes ((Context!12946 0))(
  ( (Context!12947 (exprs!6973 List!67960)) )
))
(declare-fun lt!2522154 () (InoxSet Context!12946))

(declare-fun matchZipper!3017 ((InoxSet Context!12946) List!67959) Bool)

(assert (=> b!7038367 (= res!2873188 (not (matchZipper!3017 lt!2522154 (t!381730 s!7408))))))

(declare-datatypes ((Unit!161634 0))(
  ( (Unit!161635) )
))
(declare-fun lt!2522143 () Unit!161634)

(declare-fun lambda!415989 () Int)

(declare-fun lt!2522123 () List!67960)

(declare-fun ct2!306 () Context!12946)

(declare-fun lemmaConcatPreservesForall!798 (List!67960 List!67960 Int) Unit!161634)

(assert (=> b!7038367 (= lt!2522143 (lemmaConcatPreservesForall!798 lt!2522123 (exprs!6973 ct2!306) lambda!415989))))

(declare-fun b!7038368 () Bool)

(declare-fun e!4231197 () Bool)

(assert (=> b!7038368 (= e!4231197 (matchZipper!3017 lt!2522154 (t!381730 s!7408)))))

(declare-fun b!7038369 () Bool)

(declare-fun res!2873203 () Bool)

(declare-fun e!4231193 () Bool)

(assert (=> b!7038369 (=> res!2873203 e!4231193)))

(declare-fun lt!2522131 () Context!12946)

(get-info :version)

(assert (=> b!7038369 (= res!2873203 (not ((_ is Cons!67836) (exprs!6973 lt!2522131))))))

(declare-fun b!7038370 () Bool)

(declare-fun e!4231180 () Bool)

(declare-fun e!4231177 () Bool)

(assert (=> b!7038370 (= e!4231180 e!4231177)))

(declare-fun res!2873184 () Bool)

(assert (=> b!7038370 (=> res!2873184 e!4231177)))

(declare-fun e!4231182 () Bool)

(assert (=> b!7038370 (= res!2873184 e!4231182)))

(declare-fun res!2873176 () Bool)

(assert (=> b!7038370 (=> (not res!2873176) (not e!4231182))))

(declare-fun lt!2522136 () (InoxSet Context!12946))

(declare-fun lt!2522166 () Bool)

(assert (=> b!7038370 (= res!2873176 (not (= (matchZipper!3017 lt!2522136 (_1!37353 lt!2522115)) lt!2522166)))))

(declare-fun lt!2522128 () (InoxSet Context!12946))

(declare-fun lt!2522151 () List!67959)

(declare-fun e!4231186 () Bool)

(assert (=> b!7038370 (= (matchZipper!3017 lt!2522128 lt!2522151) e!4231186)))

(declare-fun res!2873197 () Bool)

(assert (=> b!7038370 (=> res!2873197 e!4231186)))

(assert (=> b!7038370 (= res!2873197 lt!2522166)))

(declare-fun lt!2522163 () (InoxSet Context!12946))

(assert (=> b!7038370 (= lt!2522166 (matchZipper!3017 lt!2522163 lt!2522151))))

(declare-fun lt!2522168 () Unit!161634)

(declare-fun lt!2522167 () (InoxSet Context!12946))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1550 ((InoxSet Context!12946) (InoxSet Context!12946) List!67959) Unit!161634)

(assert (=> b!7038370 (= lt!2522168 (lemmaZipperConcatMatchesSameAsBothZippers!1550 lt!2522163 lt!2522167 lt!2522151))))

(declare-fun tail!13575 (List!67959) List!67959)

(assert (=> b!7038370 (= lt!2522151 (tail!13575 (_1!37353 lt!2522115)))))

(declare-fun b!7038371 () Bool)

(declare-fun res!2873182 () Bool)

(assert (=> b!7038371 (=> res!2873182 e!4231193)))

(declare-fun isEmpty!39578 (List!67960) Bool)

(assert (=> b!7038371 (= res!2873182 (isEmpty!39578 (exprs!6973 lt!2522131)))))

(declare-fun b!7038372 () Bool)

(declare-fun e!4231175 () Bool)

(declare-fun tp_is_empty!44179 () Bool)

(declare-fun tp!1937096 () Bool)

(assert (=> b!7038372 (= e!4231175 (and tp_is_empty!44179 tp!1937096))))

(declare-fun b!7038373 () Bool)

(declare-fun e!4231190 () Bool)

(declare-fun tp!1937095 () Bool)

(assert (=> b!7038373 (= e!4231190 tp!1937095)))

(declare-fun res!2873202 () Bool)

(declare-fun e!4231179 () Bool)

(assert (=> start!680658 (=> (not res!2873202) (not e!4231179))))

(declare-fun lt!2522119 () (InoxSet Context!12946))

(assert (=> start!680658 (= res!2873202 (matchZipper!3017 lt!2522119 s!7408))))

(declare-fun z1!570 () (InoxSet Context!12946))

(declare-fun appendTo!598 ((InoxSet Context!12946) Context!12946) (InoxSet Context!12946))

(assert (=> start!680658 (= lt!2522119 (appendTo!598 z1!570 ct2!306))))

(assert (=> start!680658 e!4231179))

(declare-fun condSetEmpty!49282 () Bool)

(assert (=> start!680658 (= condSetEmpty!49282 (= z1!570 ((as const (Array Context!12946 Bool)) false)))))

(declare-fun setRes!49282 () Bool)

(assert (=> start!680658 setRes!49282))

(declare-fun inv!86551 (Context!12946) Bool)

(assert (=> start!680658 (and (inv!86551 ct2!306) e!4231190)))

(assert (=> start!680658 e!4231175))

(declare-fun b!7038374 () Bool)

(assert (=> b!7038374 (= e!4231182 (not (matchZipper!3017 lt!2522167 lt!2522151)))))

(declare-fun b!7038375 () Bool)

(declare-fun res!2873178 () Bool)

(assert (=> b!7038375 (=> res!2873178 e!4231192)))

(declare-fun lt!2522159 () (InoxSet Context!12946))

(assert (=> b!7038375 (= res!2873178 (not (matchZipper!3017 lt!2522159 (_2!37353 lt!2522115))))))

(declare-fun b!7038376 () Bool)

(declare-fun e!4231195 () Bool)

(assert (=> b!7038376 (= e!4231195 e!4231192)))

(declare-fun res!2873190 () Bool)

(assert (=> b!7038376 (=> res!2873190 e!4231192)))

(declare-fun lt!2522146 () (InoxSet Context!12946))

(assert (=> b!7038376 (= res!2873190 (not (matchZipper!3017 lt!2522146 (_1!37353 lt!2522115))))))

(declare-datatypes ((Option!16882 0))(
  ( (None!16881) (Some!16881 (v!53171 tuple2!68100)) )
))
(declare-fun lt!2522125 () Option!16882)

(declare-fun get!23771 (Option!16882) tuple2!68100)

(assert (=> b!7038376 (= lt!2522115 (get!23771 lt!2522125))))

(declare-fun isDefined!13583 (Option!16882) Bool)

(assert (=> b!7038376 (isDefined!13583 lt!2522125)))

(declare-fun findConcatSeparationZippers!398 ((InoxSet Context!12946) (InoxSet Context!12946) List!67959 List!67959 List!67959) Option!16882)

(assert (=> b!7038376 (= lt!2522125 (findConcatSeparationZippers!398 lt!2522146 lt!2522159 Nil!67835 s!7408 s!7408))))

(assert (=> b!7038376 (= lt!2522159 (store ((as const (Array Context!12946 Bool)) false) ct2!306 true))))

(declare-fun lt!2522161 () Unit!161634)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!386 ((InoxSet Context!12946) Context!12946 List!67959) Unit!161634)

(assert (=> b!7038376 (= lt!2522161 (lemmaConcatZipperMatchesStringThenFindConcatDefined!386 lt!2522146 ct2!306 s!7408))))

(declare-fun b!7038377 () Bool)

(declare-fun res!2873191 () Bool)

(assert (=> b!7038377 (=> res!2873191 e!4231194)))

(declare-fun lt!2522126 () Bool)

(assert (=> b!7038377 (= res!2873191 (not lt!2522126))))

(declare-fun b!7038378 () Bool)

(declare-fun e!4231185 () Bool)

(declare-fun e!4231178 () Bool)

(assert (=> b!7038378 (= e!4231185 e!4231178)))

(declare-fun res!2873201 () Bool)

(assert (=> b!7038378 (=> res!2873201 e!4231178)))

(declare-fun lt!2522130 () (InoxSet Context!12946))

(assert (=> b!7038378 (= res!2873201 (not (matchZipper!3017 lt!2522130 s!7408)))))

(declare-fun lt!2522138 () Unit!161634)

(assert (=> b!7038378 (= lt!2522138 (lemmaConcatPreservesForall!798 lt!2522123 (exprs!6973 ct2!306) lambda!415989))))

(declare-fun b!7038379 () Bool)

(declare-fun res!2873187 () Bool)

(declare-fun e!4231184 () Bool)

(assert (=> b!7038379 (=> res!2873187 e!4231184)))

(declare-fun lt!2522113 () Context!12946)

(assert (=> b!7038379 (= res!2873187 (not (select lt!2522119 lt!2522113)))))

(declare-fun b!7038380 () Bool)

(assert (=> b!7038380 (= e!4231191 e!4231185)))

(declare-fun res!2873195 () Bool)

(assert (=> b!7038380 (=> res!2873195 e!4231185)))

(declare-fun derivationStepZipper!2933 ((InoxSet Context!12946) C!35224) (InoxSet Context!12946))

(assert (=> b!7038380 (= res!2873195 (not (= (derivationStepZipper!2933 lt!2522130 (h!74283 s!7408)) lt!2522154)))))

(declare-fun lt!2522149 () Unit!161634)

(assert (=> b!7038380 (= lt!2522149 (lemmaConcatPreservesForall!798 lt!2522123 (exprs!6973 ct2!306) lambda!415989))))

(declare-fun lt!2522144 () Unit!161634)

(assert (=> b!7038380 (= lt!2522144 (lemmaConcatPreservesForall!798 lt!2522123 (exprs!6973 ct2!306) lambda!415989))))

(declare-fun lambda!415990 () Int)

(declare-fun lt!2522122 () Context!12946)

(declare-fun flatMap!2424 ((InoxSet Context!12946) Int) (InoxSet Context!12946))

(declare-fun derivationStepZipperUp!2087 (Context!12946 C!35224) (InoxSet Context!12946))

(assert (=> b!7038380 (= (flatMap!2424 lt!2522130 lambda!415990) (derivationStepZipperUp!2087 lt!2522122 (h!74283 s!7408)))))

(declare-fun lt!2522164 () Unit!161634)

(declare-fun lemmaFlatMapOnSingletonSet!1938 ((InoxSet Context!12946) Context!12946 Int) Unit!161634)

(assert (=> b!7038380 (= lt!2522164 (lemmaFlatMapOnSingletonSet!1938 lt!2522130 lt!2522122 lambda!415990))))

(assert (=> b!7038380 (= lt!2522130 (store ((as const (Array Context!12946 Bool)) false) lt!2522122 true))))

(declare-fun lt!2522112 () Unit!161634)

(assert (=> b!7038380 (= lt!2522112 (lemmaConcatPreservesForall!798 lt!2522123 (exprs!6973 ct2!306) lambda!415989))))

(declare-fun lt!2522107 () Unit!161634)

(assert (=> b!7038380 (= lt!2522107 (lemmaConcatPreservesForall!798 lt!2522123 (exprs!6973 ct2!306) lambda!415989))))

(declare-fun b!7038381 () Bool)

(declare-fun e!4231198 () Bool)

(assert (=> b!7038381 (= e!4231198 e!4231194)))

(declare-fun res!2873194 () Bool)

(assert (=> b!7038381 (=> res!2873194 e!4231194)))

(declare-fun e!4231196 () Bool)

(assert (=> b!7038381 (= res!2873194 e!4231196)))

(declare-fun res!2873183 () Bool)

(assert (=> b!7038381 (=> (not res!2873183) (not e!4231196))))

(declare-fun lt!2522145 () Bool)

(assert (=> b!7038381 (= res!2873183 (not (= lt!2522126 lt!2522145)))))

(declare-fun lt!2522148 () (InoxSet Context!12946))

(assert (=> b!7038381 (= lt!2522126 (matchZipper!3017 lt!2522148 (t!381730 s!7408)))))

(declare-fun lt!2522110 () Unit!161634)

(assert (=> b!7038381 (= lt!2522110 (lemmaConcatPreservesForall!798 lt!2522123 (exprs!6973 ct2!306) lambda!415989))))

(declare-fun lt!2522152 () (InoxSet Context!12946))

(assert (=> b!7038381 (= (matchZipper!3017 lt!2522152 (t!381730 s!7408)) e!4231197)))

(declare-fun res!2873192 () Bool)

(assert (=> b!7038381 (=> res!2873192 e!4231197)))

(assert (=> b!7038381 (= res!2873192 lt!2522145)))

(declare-fun lt!2522142 () (InoxSet Context!12946))

(assert (=> b!7038381 (= lt!2522145 (matchZipper!3017 lt!2522142 (t!381730 s!7408)))))

(declare-fun lt!2522141 () Unit!161634)

(assert (=> b!7038381 (= lt!2522141 (lemmaZipperConcatMatchesSameAsBothZippers!1550 lt!2522142 lt!2522154 (t!381730 s!7408)))))

(declare-fun lt!2522129 () Unit!161634)

(assert (=> b!7038381 (= lt!2522129 (lemmaConcatPreservesForall!798 lt!2522123 (exprs!6973 ct2!306) lambda!415989))))

(declare-fun lt!2522153 () Unit!161634)

(assert (=> b!7038381 (= lt!2522153 (lemmaConcatPreservesForall!798 lt!2522123 (exprs!6973 ct2!306) lambda!415989))))

(declare-fun setElem!49282 () Context!12946)

(declare-fun e!4231188 () Bool)

(declare-fun tp!1937094 () Bool)

(declare-fun setNonEmpty!49282 () Bool)

(assert (=> setNonEmpty!49282 (= setRes!49282 (and tp!1937094 (inv!86551 setElem!49282) e!4231188))))

(declare-fun setRest!49282 () (InoxSet Context!12946))

(assert (=> setNonEmpty!49282 (= z1!570 ((_ map or) (store ((as const (Array Context!12946 Bool)) false) setElem!49282 true) setRest!49282))))

(declare-fun b!7038382 () Bool)

(declare-fun e!4231183 () Bool)

(declare-fun lt!2522118 () (InoxSet Context!12946))

(assert (=> b!7038382 (= e!4231183 (matchZipper!3017 lt!2522118 lt!2522151))))

(declare-fun b!7038383 () Bool)

(assert (=> b!7038383 (= e!4231178 e!4231195)))

(declare-fun res!2873177 () Bool)

(assert (=> b!7038383 (=> res!2873177 e!4231195)))

(declare-fun lt!2522108 () Int)

(declare-fun lt!2522140 () Context!12946)

(declare-fun contextDepthTotal!512 (Context!12946) Int)

(assert (=> b!7038383 (= res!2873177 (<= lt!2522108 (contextDepthTotal!512 lt!2522140)))))

(declare-fun lt!2522158 () Int)

(assert (=> b!7038383 (<= lt!2522108 lt!2522158)))

(declare-datatypes ((List!67961 0))(
  ( (Nil!67837) (Cons!67837 (h!74285 Context!12946) (t!381732 List!67961)) )
))
(declare-fun lt!2522116 () List!67961)

(declare-fun zipperDepthTotal!540 (List!67961) Int)

(assert (=> b!7038383 (= lt!2522158 (zipperDepthTotal!540 lt!2522116))))

(assert (=> b!7038383 (= lt!2522108 (contextDepthTotal!512 lt!2522131))))

(declare-fun lt!2522139 () Unit!161634)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContext!80 (List!67961 Context!12946) Unit!161634)

(assert (=> b!7038383 (= lt!2522139 (lemmaTotalDepthZipperLargerThanOfAnyContext!80 lt!2522116 lt!2522131))))

(declare-fun toList!10820 ((InoxSet Context!12946)) List!67961)

(assert (=> b!7038383 (= lt!2522116 (toList!10820 z1!570))))

(declare-fun lt!2522132 () Unit!161634)

(assert (=> b!7038383 (= lt!2522132 (lemmaConcatPreservesForall!798 lt!2522123 (exprs!6973 ct2!306) lambda!415989))))

(declare-fun lt!2522134 () Unit!161634)

(assert (=> b!7038383 (= lt!2522134 (lemmaConcatPreservesForall!798 lt!2522123 (exprs!6973 ct2!306) lambda!415989))))

(declare-fun lt!2522150 () Unit!161634)

(assert (=> b!7038383 (= lt!2522150 (lemmaConcatPreservesForall!798 lt!2522123 (exprs!6973 ct2!306) lambda!415989))))

(assert (=> b!7038383 (= (flatMap!2424 lt!2522146 lambda!415990) (derivationStepZipperUp!2087 lt!2522140 (h!74283 s!7408)))))

(declare-fun lt!2522156 () Unit!161634)

(assert (=> b!7038383 (= lt!2522156 (lemmaFlatMapOnSingletonSet!1938 lt!2522146 lt!2522140 lambda!415990))))

(declare-fun lambda!415988 () Int)

(declare-fun map!15783 ((InoxSet Context!12946) Int) (InoxSet Context!12946))

(declare-fun ++!15535 (List!67960 List!67960) List!67960)

(assert (=> b!7038383 (= (map!15783 lt!2522146 lambda!415988) (store ((as const (Array Context!12946 Bool)) false) (Context!12947 (++!15535 lt!2522123 (exprs!6973 ct2!306))) true))))

(declare-fun lt!2522135 () Unit!161634)

(assert (=> b!7038383 (= lt!2522135 (lemmaConcatPreservesForall!798 lt!2522123 (exprs!6973 ct2!306) lambda!415989))))

(declare-fun lt!2522124 () Unit!161634)

(declare-fun lemmaMapOnSingletonSet!388 ((InoxSet Context!12946) Context!12946 Int) Unit!161634)

(assert (=> b!7038383 (= lt!2522124 (lemmaMapOnSingletonSet!388 lt!2522146 lt!2522140 lambda!415988))))

(assert (=> b!7038383 (= lt!2522146 (store ((as const (Array Context!12946 Bool)) false) lt!2522140 true))))

(declare-fun b!7038384 () Bool)

(declare-fun res!2873198 () Bool)

(assert (=> b!7038384 (=> (not res!2873198) (not e!4231179))))

(assert (=> b!7038384 (= res!2873198 ((_ is Cons!67835) s!7408))))

(declare-fun b!7038385 () Bool)

(assert (=> b!7038385 (= e!4231186 (matchZipper!3017 lt!2522167 lt!2522151))))

(declare-fun setIsEmpty!49282 () Bool)

(assert (=> setIsEmpty!49282 setRes!49282))

(assert (=> b!7038386 (= e!4231179 (not e!4231184))))

(declare-fun res!2873196 () Bool)

(assert (=> b!7038386 (=> res!2873196 e!4231184)))

(declare-fun lt!2522117 () (InoxSet Context!12946))

(assert (=> b!7038386 (= res!2873196 (not (matchZipper!3017 lt!2522117 s!7408)))))

(assert (=> b!7038386 (= lt!2522117 (store ((as const (Array Context!12946 Bool)) false) lt!2522113 true))))

(declare-fun lambda!415987 () Int)

(declare-fun getWitness!1492 ((InoxSet Context!12946) Int) Context!12946)

(assert (=> b!7038386 (= lt!2522113 (getWitness!1492 lt!2522119 lambda!415987))))

(declare-fun lt!2522133 () List!67961)

(declare-fun exists!3413 (List!67961 Int) Bool)

(assert (=> b!7038386 (exists!3413 lt!2522133 lambda!415987)))

(declare-fun lt!2522106 () Unit!161634)

(declare-fun lemmaZipperMatchesExistsMatchingContext!416 (List!67961 List!67959) Unit!161634)

(assert (=> b!7038386 (= lt!2522106 (lemmaZipperMatchesExistsMatchingContext!416 lt!2522133 s!7408))))

(assert (=> b!7038386 (= lt!2522133 (toList!10820 lt!2522119))))

(declare-fun b!7038387 () Bool)

(declare-fun e!4231181 () Bool)

(assert (=> b!7038387 (= e!4231181 e!4231180)))

(declare-fun res!2873193 () Bool)

(assert (=> b!7038387 (=> res!2873193 e!4231180)))

(declare-fun lt!2522137 () (InoxSet Context!12946))

(assert (=> b!7038387 (= res!2873193 (not (= lt!2522137 lt!2522128)))))

(assert (=> b!7038387 (= lt!2522128 ((_ map or) lt!2522163 lt!2522167))))

(assert (=> b!7038387 (= lt!2522167 (derivationStepZipperUp!2087 lt!2522140 (h!74283 s!7408)))))

(declare-fun derivationStepZipperDown!2141 (Regex!17477 Context!12946 C!35224) (InoxSet Context!12946))

(assert (=> b!7038387 (= lt!2522163 (derivationStepZipperDown!2141 (h!74284 (exprs!6973 lt!2522131)) lt!2522140 (h!74283 s!7408)))))

(declare-fun b!7038388 () Bool)

(declare-fun e!4231176 () Bool)

(declare-fun e!4231189 () Bool)

(assert (=> b!7038388 (= e!4231176 e!4231189)))

(declare-fun res!2873181 () Bool)

(assert (=> b!7038388 (=> res!2873181 e!4231189)))

(declare-fun lt!2522165 () (InoxSet Context!12946))

(assert (=> b!7038388 (= res!2873181 (not (= lt!2522165 lt!2522117)))))

(declare-fun lt!2522162 () Context!12946)

(assert (=> b!7038388 (= lt!2522165 (store ((as const (Array Context!12946 Bool)) false) lt!2522162 true))))

(declare-fun lt!2522127 () Unit!161634)

(assert (=> b!7038388 (= lt!2522127 (lemmaConcatPreservesForall!798 (exprs!6973 lt!2522131) (exprs!6973 ct2!306) lambda!415989))))

(declare-fun b!7038389 () Bool)

(declare-fun e!4231187 () Bool)

(assert (=> b!7038389 (= e!4231193 e!4231187)))

(declare-fun res!2873200 () Bool)

(assert (=> b!7038389 (=> res!2873200 e!4231187)))

(declare-fun nullable!7188 (Regex!17477) Bool)

(assert (=> b!7038389 (= res!2873200 (not (nullable!7188 (h!74284 (exprs!6973 lt!2522131)))))))

(assert (=> b!7038389 (= lt!2522140 (Context!12947 lt!2522123))))

(declare-fun tail!13576 (List!67960) List!67960)

(assert (=> b!7038389 (= lt!2522123 (tail!13576 (exprs!6973 lt!2522131)))))

(assert (=> b!7038390 (= e!4231189 e!4231193)))

(declare-fun res!2873175 () Bool)

(assert (=> b!7038390 (=> res!2873175 e!4231193)))

(assert (=> b!7038390 (= res!2873175 (not (= (derivationStepZipper!2933 lt!2522165 (h!74283 s!7408)) lt!2522148)))))

(assert (=> b!7038390 (= (flatMap!2424 lt!2522165 lambda!415990) (derivationStepZipperUp!2087 lt!2522162 (h!74283 s!7408)))))

(declare-fun lt!2522109 () Unit!161634)

(assert (=> b!7038390 (= lt!2522109 (lemmaFlatMapOnSingletonSet!1938 lt!2522165 lt!2522162 lambda!415990))))

(assert (=> b!7038390 (= lt!2522148 (derivationStepZipperUp!2087 lt!2522162 (h!74283 s!7408)))))

(declare-fun lt!2522157 () Unit!161634)

(assert (=> b!7038390 (= lt!2522157 (lemmaConcatPreservesForall!798 (exprs!6973 lt!2522131) (exprs!6973 ct2!306) lambda!415989))))

(declare-fun b!7038391 () Bool)

(assert (=> b!7038391 (= e!4231177 e!4231183)))

(declare-fun res!2873185 () Bool)

(assert (=> b!7038391 (=> res!2873185 e!4231183)))

(declare-fun lt!2522121 () C!35224)

(assert (=> b!7038391 (= res!2873185 (not (= (derivationStepZipper!2933 lt!2522146 lt!2522121) lt!2522118)))))

(assert (=> b!7038391 (= lt!2522118 (derivationStepZipperUp!2087 lt!2522140 lt!2522121))))

(declare-fun head!14279 (List!67959) C!35224)

(assert (=> b!7038391 (= lt!2522121 (head!14279 (_1!37353 lt!2522115)))))

(assert (=> b!7038391 (= (flatMap!2424 lt!2522146 lambda!415990) (derivationStepZipperUp!2087 lt!2522140 (h!74283 s!7408)))))

(declare-fun lt!2522160 () Unit!161634)

(assert (=> b!7038391 (= lt!2522160 (lemmaFlatMapOnSingletonSet!1938 lt!2522146 lt!2522140 lambda!415990))))

(assert (=> b!7038392 (= e!4231184 e!4231176)))

(declare-fun res!2873186 () Bool)

(assert (=> b!7038392 (=> res!2873186 e!4231176)))

(assert (=> b!7038392 (= res!2873186 (or (not (= lt!2522162 lt!2522113)) (not (select z1!570 lt!2522131))))))

(assert (=> b!7038392 (= lt!2522162 (Context!12947 (++!15535 (exprs!6973 lt!2522131) (exprs!6973 ct2!306))))))

(declare-fun lt!2522114 () Unit!161634)

(assert (=> b!7038392 (= lt!2522114 (lemmaConcatPreservesForall!798 (exprs!6973 lt!2522131) (exprs!6973 ct2!306) lambda!415989))))

(declare-fun mapPost2!318 ((InoxSet Context!12946) Int Context!12946) Context!12946)

(assert (=> b!7038392 (= lt!2522131 (mapPost2!318 z1!570 lambda!415988 lt!2522113))))

(declare-fun b!7038393 () Bool)

(assert (=> b!7038393 (= e!4231196 (not (matchZipper!3017 lt!2522154 (t!381730 s!7408))))))

(declare-fun lt!2522155 () Unit!161634)

(assert (=> b!7038393 (= lt!2522155 (lemmaConcatPreservesForall!798 lt!2522123 (exprs!6973 ct2!306) lambda!415989))))

(declare-fun b!7038394 () Bool)

(assert (=> b!7038394 (= e!4231187 e!4231198)))

(declare-fun res!2873199 () Bool)

(assert (=> b!7038394 (=> res!2873199 e!4231198)))

(assert (=> b!7038394 (= res!2873199 (not (= lt!2522148 lt!2522152)))))

(assert (=> b!7038394 (= lt!2522152 ((_ map or) lt!2522142 lt!2522154))))

(assert (=> b!7038394 (= lt!2522154 (derivationStepZipperUp!2087 lt!2522122 (h!74283 s!7408)))))

(assert (=> b!7038394 (= lt!2522142 (derivationStepZipperDown!2141 (h!74284 (exprs!6973 lt!2522131)) lt!2522122 (h!74283 s!7408)))))

(assert (=> b!7038394 (= lt!2522122 (Context!12947 (++!15535 lt!2522123 (exprs!6973 ct2!306))))))

(declare-fun lt!2522147 () Unit!161634)

(assert (=> b!7038394 (= lt!2522147 (lemmaConcatPreservesForall!798 lt!2522123 (exprs!6973 ct2!306) lambda!415989))))

(declare-fun lt!2522120 () Unit!161634)

(assert (=> b!7038394 (= lt!2522120 (lemmaConcatPreservesForall!798 lt!2522123 (exprs!6973 ct2!306) lambda!415989))))

(declare-fun b!7038395 () Bool)

(declare-fun tp!1937097 () Bool)

(assert (=> b!7038395 (= e!4231188 tp!1937097)))

(declare-fun b!7038396 () Bool)

(assert (=> b!7038396 (= e!4231192 e!4231181)))

(declare-fun res!2873180 () Bool)

(assert (=> b!7038396 (=> res!2873180 e!4231181)))

(assert (=> b!7038396 (= res!2873180 (not (= (derivationStepZipper!2933 lt!2522136 (h!74283 s!7408)) lt!2522137)))))

(assert (=> b!7038396 (= lt!2522137 (derivationStepZipperUp!2087 lt!2522131 (h!74283 s!7408)))))

(assert (=> b!7038396 (= (flatMap!2424 lt!2522136 lambda!415990) (derivationStepZipperUp!2087 lt!2522131 (h!74283 s!7408)))))

(declare-fun lt!2522111 () Unit!161634)

(assert (=> b!7038396 (= lt!2522111 (lemmaFlatMapOnSingletonSet!1938 lt!2522136 lt!2522131 lambda!415990))))

(assert (=> b!7038396 (= lt!2522136 (store ((as const (Array Context!12946 Bool)) false) lt!2522131 true))))

(declare-fun b!7038397 () Bool)

(declare-fun res!2873179 () Bool)

(assert (=> b!7038397 (=> res!2873179 e!4231195)))

(assert (=> b!7038397 (= res!2873179 (>= (zipperDepthTotal!540 (Cons!67837 lt!2522140 Nil!67837)) lt!2522158))))

(assert (= (and start!680658 res!2873202) b!7038384))

(assert (= (and b!7038384 res!2873198) b!7038386))

(assert (= (and b!7038386 (not res!2873196)) b!7038379))

(assert (= (and b!7038379 (not res!2873187)) b!7038392))

(assert (= (and b!7038392 (not res!2873186)) b!7038388))

(assert (= (and b!7038388 (not res!2873181)) b!7038390))

(assert (= (and b!7038390 (not res!2873175)) b!7038369))

(assert (= (and b!7038369 (not res!2873203)) b!7038371))

(assert (= (and b!7038371 (not res!2873182)) b!7038389))

(assert (= (and b!7038389 (not res!2873200)) b!7038394))

(assert (= (and b!7038394 (not res!2873199)) b!7038381))

(assert (= (and b!7038381 (not res!2873192)) b!7038368))

(assert (= (and b!7038381 res!2873183) b!7038393))

(assert (= (and b!7038381 (not res!2873194)) b!7038377))

(assert (= (and b!7038377 (not res!2873191)) b!7038367))

(assert (= (and b!7038367 (not res!2873188)) b!7038380))

(assert (= (and b!7038380 (not res!2873195)) b!7038378))

(assert (= (and b!7038378 (not res!2873201)) b!7038383))

(assert (= (and b!7038383 (not res!2873177)) b!7038397))

(assert (= (and b!7038397 (not res!2873179)) b!7038376))

(assert (= (and b!7038376 (not res!2873190)) b!7038375))

(assert (= (and b!7038375 (not res!2873178)) b!7038366))

(assert (= (and b!7038366 (not res!2873204)) b!7038365))

(assert (= (and b!7038365 (not res!2873189)) b!7038396))

(assert (= (and b!7038396 (not res!2873180)) b!7038387))

(assert (= (and b!7038387 (not res!2873193)) b!7038370))

(assert (= (and b!7038370 (not res!2873197)) b!7038385))

(assert (= (and b!7038370 res!2873176) b!7038374))

(assert (= (and b!7038370 (not res!2873184)) b!7038391))

(assert (= (and b!7038391 (not res!2873185)) b!7038382))

(assert (= (and start!680658 condSetEmpty!49282) setIsEmpty!49282))

(assert (= (and start!680658 (not condSetEmpty!49282)) setNonEmpty!49282))

(assert (= setNonEmpty!49282 b!7038395))

(assert (= start!680658 b!7038373))

(assert (= (and start!680658 ((_ is Cons!67835) s!7408)) b!7038372))

(declare-fun m!7748432 () Bool)

(assert (=> b!7038380 m!7748432))

(declare-fun m!7748434 () Bool)

(assert (=> b!7038380 m!7748434))

(declare-fun m!7748436 () Bool)

(assert (=> b!7038380 m!7748436))

(declare-fun m!7748438 () Bool)

(assert (=> b!7038380 m!7748438))

(declare-fun m!7748440 () Bool)

(assert (=> b!7038380 m!7748440))

(declare-fun m!7748442 () Bool)

(assert (=> b!7038380 m!7748442))

(assert (=> b!7038380 m!7748436))

(assert (=> b!7038380 m!7748436))

(assert (=> b!7038380 m!7748436))

(declare-fun m!7748444 () Bool)

(assert (=> b!7038394 m!7748444))

(assert (=> b!7038394 m!7748442))

(assert (=> b!7038394 m!7748436))

(assert (=> b!7038394 m!7748436))

(declare-fun m!7748446 () Bool)

(assert (=> b!7038394 m!7748446))

(declare-fun m!7748448 () Bool)

(assert (=> b!7038396 m!7748448))

(declare-fun m!7748450 () Bool)

(assert (=> b!7038396 m!7748450))

(declare-fun m!7748452 () Bool)

(assert (=> b!7038396 m!7748452))

(declare-fun m!7748454 () Bool)

(assert (=> b!7038396 m!7748454))

(declare-fun m!7748456 () Bool)

(assert (=> b!7038396 m!7748456))

(declare-fun m!7748458 () Bool)

(assert (=> b!7038381 m!7748458))

(declare-fun m!7748460 () Bool)

(assert (=> b!7038381 m!7748460))

(assert (=> b!7038381 m!7748436))

(declare-fun m!7748462 () Bool)

(assert (=> b!7038381 m!7748462))

(assert (=> b!7038381 m!7748436))

(declare-fun m!7748464 () Bool)

(assert (=> b!7038381 m!7748464))

(assert (=> b!7038381 m!7748436))

(declare-fun m!7748466 () Bool)

(assert (=> b!7038379 m!7748466))

(declare-fun m!7748468 () Bool)

(assert (=> b!7038397 m!7748468))

(declare-fun m!7748470 () Bool)

(assert (=> b!7038368 m!7748470))

(declare-fun m!7748472 () Bool)

(assert (=> b!7038365 m!7748472))

(declare-fun m!7748474 () Bool)

(assert (=> b!7038371 m!7748474))

(declare-fun m!7748476 () Bool)

(assert (=> b!7038376 m!7748476))

(declare-fun m!7748478 () Bool)

(assert (=> b!7038376 m!7748478))

(declare-fun m!7748480 () Bool)

(assert (=> b!7038376 m!7748480))

(declare-fun m!7748482 () Bool)

(assert (=> b!7038376 m!7748482))

(declare-fun m!7748484 () Bool)

(assert (=> b!7038376 m!7748484))

(declare-fun m!7748486 () Bool)

(assert (=> b!7038376 m!7748486))

(assert (=> b!7038393 m!7748470))

(assert (=> b!7038393 m!7748436))

(declare-fun m!7748488 () Bool)

(assert (=> b!7038378 m!7748488))

(assert (=> b!7038378 m!7748436))

(declare-fun m!7748490 () Bool)

(assert (=> start!680658 m!7748490))

(declare-fun m!7748492 () Bool)

(assert (=> start!680658 m!7748492))

(declare-fun m!7748494 () Bool)

(assert (=> start!680658 m!7748494))

(declare-fun m!7748496 () Bool)

(assert (=> b!7038388 m!7748496))

(declare-fun m!7748498 () Bool)

(assert (=> b!7038388 m!7748498))

(declare-fun m!7748500 () Bool)

(assert (=> b!7038392 m!7748500))

(declare-fun m!7748502 () Bool)

(assert (=> b!7038392 m!7748502))

(assert (=> b!7038392 m!7748498))

(declare-fun m!7748504 () Bool)

(assert (=> b!7038392 m!7748504))

(declare-fun m!7748506 () Bool)

(assert (=> b!7038375 m!7748506))

(declare-fun m!7748508 () Bool)

(assert (=> b!7038391 m!7748508))

(declare-fun m!7748510 () Bool)

(assert (=> b!7038391 m!7748510))

(declare-fun m!7748512 () Bool)

(assert (=> b!7038391 m!7748512))

(declare-fun m!7748514 () Bool)

(assert (=> b!7038391 m!7748514))

(declare-fun m!7748516 () Bool)

(assert (=> b!7038391 m!7748516))

(declare-fun m!7748518 () Bool)

(assert (=> b!7038391 m!7748518))

(assert (=> b!7038387 m!7748510))

(declare-fun m!7748520 () Bool)

(assert (=> b!7038387 m!7748520))

(declare-fun m!7748522 () Bool)

(assert (=> setNonEmpty!49282 m!7748522))

(declare-fun m!7748524 () Bool)

(assert (=> b!7038383 m!7748524))

(declare-fun m!7748526 () Bool)

(assert (=> b!7038383 m!7748526))

(declare-fun m!7748528 () Bool)

(assert (=> b!7038383 m!7748528))

(assert (=> b!7038383 m!7748516))

(assert (=> b!7038383 m!7748436))

(declare-fun m!7748530 () Bool)

(assert (=> b!7038383 m!7748530))

(assert (=> b!7038383 m!7748436))

(declare-fun m!7748532 () Bool)

(assert (=> b!7038383 m!7748532))

(assert (=> b!7038383 m!7748436))

(assert (=> b!7038383 m!7748436))

(declare-fun m!7748534 () Bool)

(assert (=> b!7038383 m!7748534))

(assert (=> b!7038383 m!7748510))

(declare-fun m!7748536 () Bool)

(assert (=> b!7038383 m!7748536))

(declare-fun m!7748538 () Bool)

(assert (=> b!7038383 m!7748538))

(assert (=> b!7038383 m!7748518))

(assert (=> b!7038383 m!7748446))

(declare-fun m!7748540 () Bool)

(assert (=> b!7038383 m!7748540))

(declare-fun m!7748542 () Bool)

(assert (=> b!7038370 m!7748542))

(declare-fun m!7748544 () Bool)

(assert (=> b!7038370 m!7748544))

(declare-fun m!7748546 () Bool)

(assert (=> b!7038370 m!7748546))

(declare-fun m!7748548 () Bool)

(assert (=> b!7038370 m!7748548))

(declare-fun m!7748550 () Bool)

(assert (=> b!7038370 m!7748550))

(declare-fun m!7748552 () Bool)

(assert (=> b!7038385 m!7748552))

(declare-fun m!7748554 () Bool)

(assert (=> b!7038389 m!7748554))

(declare-fun m!7748556 () Bool)

(assert (=> b!7038389 m!7748556))

(declare-fun m!7748558 () Bool)

(assert (=> b!7038366 m!7748558))

(assert (=> b!7038374 m!7748552))

(declare-fun m!7748560 () Bool)

(assert (=> b!7038386 m!7748560))

(declare-fun m!7748562 () Bool)

(assert (=> b!7038386 m!7748562))

(declare-fun m!7748564 () Bool)

(assert (=> b!7038386 m!7748564))

(declare-fun m!7748566 () Bool)

(assert (=> b!7038386 m!7748566))

(declare-fun m!7748568 () Bool)

(assert (=> b!7038386 m!7748568))

(declare-fun m!7748570 () Bool)

(assert (=> b!7038386 m!7748570))

(declare-fun m!7748572 () Bool)

(assert (=> b!7038382 m!7748572))

(assert (=> b!7038367 m!7748470))

(assert (=> b!7038367 m!7748436))

(declare-fun m!7748574 () Bool)

(assert (=> b!7038390 m!7748574))

(declare-fun m!7748576 () Bool)

(assert (=> b!7038390 m!7748576))

(assert (=> b!7038390 m!7748498))

(declare-fun m!7748578 () Bool)

(assert (=> b!7038390 m!7748578))

(declare-fun m!7748580 () Bool)

(assert (=> b!7038390 m!7748580))

(check-sat (not b!7038393) (not b!7038370) (not b!7038382) (not b!7038386) (not b!7038371) (not b!7038387) (not b!7038383) (not b!7038390) (not b!7038372) (not b!7038380) (not b!7038378) (not b!7038395) (not b!7038373) (not setNonEmpty!49282) (not b!7038391) (not b!7038375) (not b!7038396) (not b!7038367) (not b!7038376) (not b!7038394) (not start!680658) (not b!7038368) (not b!7038385) (not b!7038366) tp_is_empty!44179 (not b!7038392) (not b!7038397) (not b!7038388) (not b!7038365) (not b!7038381) (not b!7038374) (not b!7038389))
(check-sat)
(get-model)

(declare-fun d!2197410 () Bool)

(declare-fun forall!16398 (List!67960 Int) Bool)

(assert (=> d!2197410 (forall!16398 (++!15535 (exprs!6973 lt!2522131) (exprs!6973 ct2!306)) lambda!415989)))

(declare-fun lt!2522207 () Unit!161634)

(declare-fun choose!53378 (List!67960 List!67960 Int) Unit!161634)

(assert (=> d!2197410 (= lt!2522207 (choose!53378 (exprs!6973 lt!2522131) (exprs!6973 ct2!306) lambda!415989))))

(assert (=> d!2197410 (forall!16398 (exprs!6973 lt!2522131) lambda!415989)))

(assert (=> d!2197410 (= (lemmaConcatPreservesForall!798 (exprs!6973 lt!2522131) (exprs!6973 ct2!306) lambda!415989) lt!2522207)))

(declare-fun bs!1872949 () Bool)

(assert (= bs!1872949 d!2197410))

(assert (=> bs!1872949 m!7748502))

(assert (=> bs!1872949 m!7748502))

(declare-fun m!7748786 () Bool)

(assert (=> bs!1872949 m!7748786))

(declare-fun m!7748788 () Bool)

(assert (=> bs!1872949 m!7748788))

(declare-fun m!7748790 () Bool)

(assert (=> bs!1872949 m!7748790))

(assert (=> b!7038388 d!2197410))

(declare-fun b!7038573 () Bool)

(declare-fun e!4231293 () (InoxSet Context!12946))

(declare-fun call!639275 () (InoxSet Context!12946))

(assert (=> b!7038573 (= e!4231293 call!639275)))

(declare-fun b!7038574 () Bool)

(assert (=> b!7038574 (= e!4231293 ((as const (Array Context!12946 Bool)) false))))

(declare-fun bm!639270 () Bool)

(assert (=> bm!639270 (= call!639275 (derivationStepZipperDown!2141 (h!74284 (exprs!6973 lt!2522140)) (Context!12947 (t!381731 (exprs!6973 lt!2522140))) (h!74283 s!7408)))))

(declare-fun d!2197412 () Bool)

(declare-fun c!1309908 () Bool)

(declare-fun e!4231295 () Bool)

(assert (=> d!2197412 (= c!1309908 e!4231295)))

(declare-fun res!2873252 () Bool)

(assert (=> d!2197412 (=> (not res!2873252) (not e!4231295))))

(assert (=> d!2197412 (= res!2873252 ((_ is Cons!67836) (exprs!6973 lt!2522140)))))

(declare-fun e!4231294 () (InoxSet Context!12946))

(assert (=> d!2197412 (= (derivationStepZipperUp!2087 lt!2522140 (h!74283 s!7408)) e!4231294)))

(declare-fun b!7038575 () Bool)

(assert (=> b!7038575 (= e!4231294 e!4231293)))

(declare-fun c!1309907 () Bool)

(assert (=> b!7038575 (= c!1309907 ((_ is Cons!67836) (exprs!6973 lt!2522140)))))

(declare-fun b!7038576 () Bool)

(assert (=> b!7038576 (= e!4231295 (nullable!7188 (h!74284 (exprs!6973 lt!2522140))))))

(declare-fun b!7038577 () Bool)

(assert (=> b!7038577 (= e!4231294 ((_ map or) call!639275 (derivationStepZipperUp!2087 (Context!12947 (t!381731 (exprs!6973 lt!2522140))) (h!74283 s!7408))))))

(assert (= (and d!2197412 res!2873252) b!7038576))

(assert (= (and d!2197412 c!1309908) b!7038577))

(assert (= (and d!2197412 (not c!1309908)) b!7038575))

(assert (= (and b!7038575 c!1309907) b!7038573))

(assert (= (and b!7038575 (not c!1309907)) b!7038574))

(assert (= (or b!7038577 b!7038573) bm!639270))

(declare-fun m!7748816 () Bool)

(assert (=> bm!639270 m!7748816))

(declare-fun m!7748818 () Bool)

(assert (=> b!7038576 m!7748818))

(declare-fun m!7748820 () Bool)

(assert (=> b!7038577 m!7748820))

(assert (=> b!7038387 d!2197412))

(declare-fun c!1309931 () Bool)

(declare-fun bm!639283 () Bool)

(declare-fun c!1309929 () Bool)

(declare-fun call!639291 () List!67960)

(declare-fun $colon$colon!2583 (List!67960 Regex!17477) List!67960)

(assert (=> bm!639283 (= call!639291 ($colon$colon!2583 (exprs!6973 lt!2522140) (ite (or c!1309929 c!1309931) (regTwo!35466 (h!74284 (exprs!6973 lt!2522131))) (h!74284 (exprs!6973 lt!2522131)))))))

(declare-fun b!7038627 () Bool)

(declare-fun e!4231326 () (InoxSet Context!12946))

(declare-fun call!639292 () (InoxSet Context!12946))

(declare-fun call!639290 () (InoxSet Context!12946))

(assert (=> b!7038627 (= e!4231326 ((_ map or) call!639292 call!639290))))

(declare-fun bm!639284 () Bool)

(declare-fun call!639289 () List!67960)

(assert (=> bm!639284 (= call!639289 call!639291)))

(declare-fun b!7038628 () Bool)

(declare-fun e!4231325 () (InoxSet Context!12946))

(assert (=> b!7038628 (= e!4231325 e!4231326)))

(declare-fun c!1309932 () Bool)

(assert (=> b!7038628 (= c!1309932 ((_ is Union!17477) (h!74284 (exprs!6973 lt!2522131))))))

(declare-fun bm!639285 () Bool)

(declare-fun call!639288 () (InoxSet Context!12946))

(declare-fun call!639293 () (InoxSet Context!12946))

(assert (=> bm!639285 (= call!639288 call!639293)))

(declare-fun b!7038629 () Bool)

(declare-fun c!1309933 () Bool)

(assert (=> b!7038629 (= c!1309933 ((_ is Star!17477) (h!74284 (exprs!6973 lt!2522131))))))

(declare-fun e!4231327 () (InoxSet Context!12946))

(declare-fun e!4231324 () (InoxSet Context!12946))

(assert (=> b!7038629 (= e!4231327 e!4231324)))

(declare-fun b!7038630 () Bool)

(assert (=> b!7038630 (= e!4231325 (store ((as const (Array Context!12946 Bool)) false) lt!2522140 true))))

(declare-fun bm!639286 () Bool)

(assert (=> bm!639286 (= call!639293 call!639292)))

(declare-fun bm!639287 () Bool)

(assert (=> bm!639287 (= call!639292 (derivationStepZipperDown!2141 (ite c!1309932 (regOne!35467 (h!74284 (exprs!6973 lt!2522131))) (ite c!1309929 (regTwo!35466 (h!74284 (exprs!6973 lt!2522131))) (ite c!1309931 (regOne!35466 (h!74284 (exprs!6973 lt!2522131))) (reg!17806 (h!74284 (exprs!6973 lt!2522131)))))) (ite (or c!1309932 c!1309929) lt!2522140 (Context!12947 call!639289)) (h!74283 s!7408)))))

(declare-fun b!7038631 () Bool)

(declare-fun e!4231328 () (InoxSet Context!12946))

(assert (=> b!7038631 (= e!4231328 ((_ map or) call!639290 call!639293))))

(declare-fun d!2197418 () Bool)

(declare-fun c!1309930 () Bool)

(assert (=> d!2197418 (= c!1309930 (and ((_ is ElementMatch!17477) (h!74284 (exprs!6973 lt!2522131))) (= (c!1309841 (h!74284 (exprs!6973 lt!2522131))) (h!74283 s!7408))))))

(assert (=> d!2197418 (= (derivationStepZipperDown!2141 (h!74284 (exprs!6973 lt!2522131)) lt!2522140 (h!74283 s!7408)) e!4231325)))

(declare-fun bm!639288 () Bool)

(assert (=> bm!639288 (= call!639290 (derivationStepZipperDown!2141 (ite c!1309932 (regTwo!35467 (h!74284 (exprs!6973 lt!2522131))) (regOne!35466 (h!74284 (exprs!6973 lt!2522131)))) (ite c!1309932 lt!2522140 (Context!12947 call!639291)) (h!74283 s!7408)))))

(declare-fun b!7038632 () Bool)

(assert (=> b!7038632 (= e!4231328 e!4231327)))

(assert (=> b!7038632 (= c!1309931 ((_ is Concat!26322) (h!74284 (exprs!6973 lt!2522131))))))

(declare-fun b!7038633 () Bool)

(assert (=> b!7038633 (= e!4231324 call!639288)))

(declare-fun b!7038634 () Bool)

(declare-fun e!4231329 () Bool)

(assert (=> b!7038634 (= e!4231329 (nullable!7188 (regOne!35466 (h!74284 (exprs!6973 lt!2522131)))))))

(declare-fun b!7038635 () Bool)

(assert (=> b!7038635 (= e!4231327 call!639288)))

(declare-fun b!7038636 () Bool)

(assert (=> b!7038636 (= c!1309929 e!4231329)))

(declare-fun res!2873265 () Bool)

(assert (=> b!7038636 (=> (not res!2873265) (not e!4231329))))

(assert (=> b!7038636 (= res!2873265 ((_ is Concat!26322) (h!74284 (exprs!6973 lt!2522131))))))

(assert (=> b!7038636 (= e!4231326 e!4231328)))

(declare-fun b!7038637 () Bool)

(assert (=> b!7038637 (= e!4231324 ((as const (Array Context!12946 Bool)) false))))

(assert (= (and d!2197418 c!1309930) b!7038630))

(assert (= (and d!2197418 (not c!1309930)) b!7038628))

(assert (= (and b!7038628 c!1309932) b!7038627))

(assert (= (and b!7038628 (not c!1309932)) b!7038636))

(assert (= (and b!7038636 res!2873265) b!7038634))

(assert (= (and b!7038636 c!1309929) b!7038631))

(assert (= (and b!7038636 (not c!1309929)) b!7038632))

(assert (= (and b!7038632 c!1309931) b!7038635))

(assert (= (and b!7038632 (not c!1309931)) b!7038629))

(assert (= (and b!7038629 c!1309933) b!7038633))

(assert (= (and b!7038629 (not c!1309933)) b!7038637))

(assert (= (or b!7038635 b!7038633) bm!639284))

(assert (= (or b!7038635 b!7038633) bm!639285))

(assert (= (or b!7038631 bm!639285) bm!639286))

(assert (= (or b!7038631 bm!639284) bm!639283))

(assert (= (or b!7038627 bm!639286) bm!639287))

(assert (= (or b!7038627 b!7038631) bm!639288))

(declare-fun m!7748944 () Bool)

(assert (=> bm!639287 m!7748944))

(declare-fun m!7748946 () Bool)

(assert (=> bm!639288 m!7748946))

(assert (=> b!7038630 m!7748528))

(declare-fun m!7748948 () Bool)

(assert (=> b!7038634 m!7748948))

(declare-fun m!7748950 () Bool)

(assert (=> bm!639283 m!7748950))

(assert (=> b!7038387 d!2197418))

(declare-fun d!2197456 () Bool)

(declare-fun c!1309943 () Bool)

(assert (=> d!2197456 (= c!1309943 (isEmpty!39577 (t!381730 s!7408)))))

(declare-fun e!4231350 () Bool)

(assert (=> d!2197456 (= (matchZipper!3017 lt!2522154 (t!381730 s!7408)) e!4231350)))

(declare-fun b!7038673 () Bool)

(declare-fun nullableZipper!2590 ((InoxSet Context!12946)) Bool)

(assert (=> b!7038673 (= e!4231350 (nullableZipper!2590 lt!2522154))))

(declare-fun b!7038674 () Bool)

(assert (=> b!7038674 (= e!4231350 (matchZipper!3017 (derivationStepZipper!2933 lt!2522154 (head!14279 (t!381730 s!7408))) (tail!13575 (t!381730 s!7408))))))

(assert (= (and d!2197456 c!1309943) b!7038673))

(assert (= (and d!2197456 (not c!1309943)) b!7038674))

(declare-fun m!7748966 () Bool)

(assert (=> d!2197456 m!7748966))

(declare-fun m!7748968 () Bool)

(assert (=> b!7038673 m!7748968))

(declare-fun m!7748970 () Bool)

(assert (=> b!7038674 m!7748970))

(assert (=> b!7038674 m!7748970))

(declare-fun m!7748972 () Bool)

(assert (=> b!7038674 m!7748972))

(declare-fun m!7748974 () Bool)

(assert (=> b!7038674 m!7748974))

(assert (=> b!7038674 m!7748972))

(assert (=> b!7038674 m!7748974))

(declare-fun m!7748976 () Bool)

(assert (=> b!7038674 m!7748976))

(assert (=> b!7038368 d!2197456))

(declare-fun d!2197472 () Bool)

(declare-fun nullableFct!2737 (Regex!17477) Bool)

(assert (=> d!2197472 (= (nullable!7188 (h!74284 (exprs!6973 lt!2522131))) (nullableFct!2737 (h!74284 (exprs!6973 lt!2522131))))))

(declare-fun bs!1872968 () Bool)

(assert (= bs!1872968 d!2197472))

(declare-fun m!7748978 () Bool)

(assert (=> bs!1872968 m!7748978))

(assert (=> b!7038389 d!2197472))

(declare-fun d!2197474 () Bool)

(assert (=> d!2197474 (= (tail!13576 (exprs!6973 lt!2522131)) (t!381731 (exprs!6973 lt!2522131)))))

(assert (=> b!7038389 d!2197474))

(declare-fun d!2197476 () Bool)

(declare-fun c!1309944 () Bool)

(assert (=> d!2197476 (= c!1309944 (isEmpty!39577 (_1!37353 lt!2522115)))))

(declare-fun e!4231351 () Bool)

(assert (=> d!2197476 (= (matchZipper!3017 lt!2522136 (_1!37353 lt!2522115)) e!4231351)))

(declare-fun b!7038675 () Bool)

(assert (=> b!7038675 (= e!4231351 (nullableZipper!2590 lt!2522136))))

(declare-fun b!7038676 () Bool)

(assert (=> b!7038676 (= e!4231351 (matchZipper!3017 (derivationStepZipper!2933 lt!2522136 (head!14279 (_1!37353 lt!2522115))) (tail!13575 (_1!37353 lt!2522115))))))

(assert (= (and d!2197476 c!1309944) b!7038675))

(assert (= (and d!2197476 (not c!1309944)) b!7038676))

(assert (=> d!2197476 m!7748472))

(declare-fun m!7748980 () Bool)

(assert (=> b!7038675 m!7748980))

(assert (=> b!7038676 m!7748508))

(assert (=> b!7038676 m!7748508))

(declare-fun m!7748982 () Bool)

(assert (=> b!7038676 m!7748982))

(assert (=> b!7038676 m!7748542))

(assert (=> b!7038676 m!7748982))

(assert (=> b!7038676 m!7748542))

(declare-fun m!7748984 () Bool)

(assert (=> b!7038676 m!7748984))

(assert (=> b!7038370 d!2197476))

(declare-fun d!2197478 () Bool)

(declare-fun c!1309945 () Bool)

(assert (=> d!2197478 (= c!1309945 (isEmpty!39577 lt!2522151))))

(declare-fun e!4231352 () Bool)

(assert (=> d!2197478 (= (matchZipper!3017 lt!2522128 lt!2522151) e!4231352)))

(declare-fun b!7038677 () Bool)

(assert (=> b!7038677 (= e!4231352 (nullableZipper!2590 lt!2522128))))

(declare-fun b!7038678 () Bool)

(assert (=> b!7038678 (= e!4231352 (matchZipper!3017 (derivationStepZipper!2933 lt!2522128 (head!14279 lt!2522151)) (tail!13575 lt!2522151)))))

(assert (= (and d!2197478 c!1309945) b!7038677))

(assert (= (and d!2197478 (not c!1309945)) b!7038678))

(declare-fun m!7748986 () Bool)

(assert (=> d!2197478 m!7748986))

(declare-fun m!7748988 () Bool)

(assert (=> b!7038677 m!7748988))

(declare-fun m!7748990 () Bool)

(assert (=> b!7038678 m!7748990))

(assert (=> b!7038678 m!7748990))

(declare-fun m!7748992 () Bool)

(assert (=> b!7038678 m!7748992))

(declare-fun m!7748994 () Bool)

(assert (=> b!7038678 m!7748994))

(assert (=> b!7038678 m!7748992))

(assert (=> b!7038678 m!7748994))

(declare-fun m!7748996 () Bool)

(assert (=> b!7038678 m!7748996))

(assert (=> b!7038370 d!2197478))

(declare-fun d!2197480 () Bool)

(declare-fun e!4231355 () Bool)

(assert (=> d!2197480 (= (matchZipper!3017 ((_ map or) lt!2522163 lt!2522167) lt!2522151) e!4231355)))

(declare-fun res!2873269 () Bool)

(assert (=> d!2197480 (=> res!2873269 e!4231355)))

(assert (=> d!2197480 (= res!2873269 (matchZipper!3017 lt!2522163 lt!2522151))))

(declare-fun lt!2522238 () Unit!161634)

(declare-fun choose!53380 ((InoxSet Context!12946) (InoxSet Context!12946) List!67959) Unit!161634)

(assert (=> d!2197480 (= lt!2522238 (choose!53380 lt!2522163 lt!2522167 lt!2522151))))

(assert (=> d!2197480 (= (lemmaZipperConcatMatchesSameAsBothZippers!1550 lt!2522163 lt!2522167 lt!2522151) lt!2522238)))

(declare-fun b!7038681 () Bool)

(assert (=> b!7038681 (= e!4231355 (matchZipper!3017 lt!2522167 lt!2522151))))

(assert (= (and d!2197480 (not res!2873269)) b!7038681))

(declare-fun m!7748998 () Bool)

(assert (=> d!2197480 m!7748998))

(assert (=> d!2197480 m!7748546))

(declare-fun m!7749000 () Bool)

(assert (=> d!2197480 m!7749000))

(assert (=> b!7038681 m!7748552))

(assert (=> b!7038370 d!2197480))

(declare-fun d!2197482 () Bool)

(assert (=> d!2197482 (= (tail!13575 (_1!37353 lt!2522115)) (t!381730 (_1!37353 lt!2522115)))))

(assert (=> b!7038370 d!2197482))

(declare-fun d!2197484 () Bool)

(declare-fun c!1309946 () Bool)

(assert (=> d!2197484 (= c!1309946 (isEmpty!39577 lt!2522151))))

(declare-fun e!4231356 () Bool)

(assert (=> d!2197484 (= (matchZipper!3017 lt!2522163 lt!2522151) e!4231356)))

(declare-fun b!7038682 () Bool)

(assert (=> b!7038682 (= e!4231356 (nullableZipper!2590 lt!2522163))))

(declare-fun b!7038683 () Bool)

(assert (=> b!7038683 (= e!4231356 (matchZipper!3017 (derivationStepZipper!2933 lt!2522163 (head!14279 lt!2522151)) (tail!13575 lt!2522151)))))

(assert (= (and d!2197484 c!1309946) b!7038682))

(assert (= (and d!2197484 (not c!1309946)) b!7038683))

(assert (=> d!2197484 m!7748986))

(declare-fun m!7749002 () Bool)

(assert (=> b!7038682 m!7749002))

(assert (=> b!7038683 m!7748990))

(assert (=> b!7038683 m!7748990))

(declare-fun m!7749004 () Bool)

(assert (=> b!7038683 m!7749004))

(assert (=> b!7038683 m!7748994))

(assert (=> b!7038683 m!7749004))

(assert (=> b!7038683 m!7748994))

(declare-fun m!7749006 () Bool)

(assert (=> b!7038683 m!7749006))

(assert (=> b!7038370 d!2197484))

(declare-fun d!2197486 () Bool)

(assert (=> d!2197486 (= (isEmpty!39578 (exprs!6973 lt!2522131)) ((_ is Nil!67836) (exprs!6973 lt!2522131)))))

(assert (=> b!7038371 d!2197486))

(declare-fun d!2197488 () Bool)

(declare-fun choose!53381 ((InoxSet Context!12946) Int) (InoxSet Context!12946))

(assert (=> d!2197488 (= (flatMap!2424 lt!2522165 lambda!415990) (choose!53381 lt!2522165 lambda!415990))))

(declare-fun bs!1872969 () Bool)

(assert (= bs!1872969 d!2197488))

(declare-fun m!7749008 () Bool)

(assert (=> bs!1872969 m!7749008))

(assert (=> b!7038390 d!2197488))

(assert (=> b!7038390 d!2197410))

(declare-fun d!2197490 () Bool)

(declare-fun dynLambda!27424 (Int Context!12946) (InoxSet Context!12946))

(assert (=> d!2197490 (= (flatMap!2424 lt!2522165 lambda!415990) (dynLambda!27424 lambda!415990 lt!2522162))))

(declare-fun lt!2522241 () Unit!161634)

(declare-fun choose!53382 ((InoxSet Context!12946) Context!12946 Int) Unit!161634)

(assert (=> d!2197490 (= lt!2522241 (choose!53382 lt!2522165 lt!2522162 lambda!415990))))

(assert (=> d!2197490 (= lt!2522165 (store ((as const (Array Context!12946 Bool)) false) lt!2522162 true))))

(assert (=> d!2197490 (= (lemmaFlatMapOnSingletonSet!1938 lt!2522165 lt!2522162 lambda!415990) lt!2522241)))

(declare-fun b_lambda!267155 () Bool)

(assert (=> (not b_lambda!267155) (not d!2197490)))

(declare-fun bs!1872970 () Bool)

(assert (= bs!1872970 d!2197490))

(assert (=> bs!1872970 m!7748580))

(declare-fun m!7749010 () Bool)

(assert (=> bs!1872970 m!7749010))

(declare-fun m!7749012 () Bool)

(assert (=> bs!1872970 m!7749012))

(assert (=> bs!1872970 m!7748496))

(assert (=> b!7038390 d!2197490))

(declare-fun bs!1872971 () Bool)

(declare-fun d!2197492 () Bool)

(assert (= bs!1872971 (and d!2197492 b!7038390)))

(declare-fun lambda!416014 () Int)

(assert (=> bs!1872971 (= lambda!416014 lambda!415990)))

(assert (=> d!2197492 true))

(assert (=> d!2197492 (= (derivationStepZipper!2933 lt!2522165 (h!74283 s!7408)) (flatMap!2424 lt!2522165 lambda!416014))))

(declare-fun bs!1872972 () Bool)

(assert (= bs!1872972 d!2197492))

(declare-fun m!7749014 () Bool)

(assert (=> bs!1872972 m!7749014))

(assert (=> b!7038390 d!2197492))

(declare-fun b!7038686 () Bool)

(declare-fun e!4231357 () (InoxSet Context!12946))

(declare-fun call!639300 () (InoxSet Context!12946))

(assert (=> b!7038686 (= e!4231357 call!639300)))

(declare-fun b!7038687 () Bool)

(assert (=> b!7038687 (= e!4231357 ((as const (Array Context!12946 Bool)) false))))

(declare-fun bm!639295 () Bool)

(assert (=> bm!639295 (= call!639300 (derivationStepZipperDown!2141 (h!74284 (exprs!6973 lt!2522162)) (Context!12947 (t!381731 (exprs!6973 lt!2522162))) (h!74283 s!7408)))))

(declare-fun d!2197494 () Bool)

(declare-fun c!1309950 () Bool)

(declare-fun e!4231359 () Bool)

(assert (=> d!2197494 (= c!1309950 e!4231359)))

(declare-fun res!2873270 () Bool)

(assert (=> d!2197494 (=> (not res!2873270) (not e!4231359))))

(assert (=> d!2197494 (= res!2873270 ((_ is Cons!67836) (exprs!6973 lt!2522162)))))

(declare-fun e!4231358 () (InoxSet Context!12946))

(assert (=> d!2197494 (= (derivationStepZipperUp!2087 lt!2522162 (h!74283 s!7408)) e!4231358)))

(declare-fun b!7038688 () Bool)

(assert (=> b!7038688 (= e!4231358 e!4231357)))

(declare-fun c!1309949 () Bool)

(assert (=> b!7038688 (= c!1309949 ((_ is Cons!67836) (exprs!6973 lt!2522162)))))

(declare-fun b!7038689 () Bool)

(assert (=> b!7038689 (= e!4231359 (nullable!7188 (h!74284 (exprs!6973 lt!2522162))))))

(declare-fun b!7038690 () Bool)

(assert (=> b!7038690 (= e!4231358 ((_ map or) call!639300 (derivationStepZipperUp!2087 (Context!12947 (t!381731 (exprs!6973 lt!2522162))) (h!74283 s!7408))))))

(assert (= (and d!2197494 res!2873270) b!7038689))

(assert (= (and d!2197494 c!1309950) b!7038690))

(assert (= (and d!2197494 (not c!1309950)) b!7038688))

(assert (= (and b!7038688 c!1309949) b!7038686))

(assert (= (and b!7038688 (not c!1309949)) b!7038687))

(assert (= (or b!7038690 b!7038686) bm!639295))

(declare-fun m!7749016 () Bool)

(assert (=> bm!639295 m!7749016))

(declare-fun m!7749018 () Bool)

(assert (=> b!7038689 m!7749018))

(declare-fun m!7749020 () Bool)

(assert (=> b!7038690 m!7749020))

(assert (=> b!7038390 d!2197494))

(declare-fun b!7038701 () Bool)

(declare-fun res!2873276 () Bool)

(declare-fun e!4231365 () Bool)

(assert (=> b!7038701 (=> (not res!2873276) (not e!4231365))))

(declare-fun lt!2522244 () List!67960)

(declare-fun size!41082 (List!67960) Int)

(assert (=> b!7038701 (= res!2873276 (= (size!41082 lt!2522244) (+ (size!41082 (exprs!6973 lt!2522131)) (size!41082 (exprs!6973 ct2!306)))))))

(declare-fun b!7038702 () Bool)

(assert (=> b!7038702 (= e!4231365 (or (not (= (exprs!6973 ct2!306) Nil!67836)) (= lt!2522244 (exprs!6973 lt!2522131))))))

(declare-fun b!7038700 () Bool)

(declare-fun e!4231364 () List!67960)

(assert (=> b!7038700 (= e!4231364 (Cons!67836 (h!74284 (exprs!6973 lt!2522131)) (++!15535 (t!381731 (exprs!6973 lt!2522131)) (exprs!6973 ct2!306))))))

(declare-fun d!2197496 () Bool)

(assert (=> d!2197496 e!4231365))

(declare-fun res!2873275 () Bool)

(assert (=> d!2197496 (=> (not res!2873275) (not e!4231365))))

(declare-fun content!13562 (List!67960) (InoxSet Regex!17477))

(assert (=> d!2197496 (= res!2873275 (= (content!13562 lt!2522244) ((_ map or) (content!13562 (exprs!6973 lt!2522131)) (content!13562 (exprs!6973 ct2!306)))))))

(assert (=> d!2197496 (= lt!2522244 e!4231364)))

(declare-fun c!1309953 () Bool)

(assert (=> d!2197496 (= c!1309953 ((_ is Nil!67836) (exprs!6973 lt!2522131)))))

(assert (=> d!2197496 (= (++!15535 (exprs!6973 lt!2522131) (exprs!6973 ct2!306)) lt!2522244)))

(declare-fun b!7038699 () Bool)

(assert (=> b!7038699 (= e!4231364 (exprs!6973 ct2!306))))

(assert (= (and d!2197496 c!1309953) b!7038699))

(assert (= (and d!2197496 (not c!1309953)) b!7038700))

(assert (= (and d!2197496 res!2873275) b!7038701))

(assert (= (and b!7038701 res!2873276) b!7038702))

(declare-fun m!7749022 () Bool)

(assert (=> b!7038701 m!7749022))

(declare-fun m!7749024 () Bool)

(assert (=> b!7038701 m!7749024))

(declare-fun m!7749026 () Bool)

(assert (=> b!7038701 m!7749026))

(declare-fun m!7749028 () Bool)

(assert (=> b!7038700 m!7749028))

(declare-fun m!7749030 () Bool)

(assert (=> d!2197496 m!7749030))

(declare-fun m!7749032 () Bool)

(assert (=> d!2197496 m!7749032))

(declare-fun m!7749034 () Bool)

(assert (=> d!2197496 m!7749034))

(assert (=> b!7038392 d!2197496))

(assert (=> b!7038392 d!2197410))

(declare-fun d!2197498 () Bool)

(declare-fun e!4231368 () Bool)

(assert (=> d!2197498 e!4231368))

(declare-fun res!2873279 () Bool)

(assert (=> d!2197498 (=> (not res!2873279) (not e!4231368))))

(declare-fun lt!2522247 () Context!12946)

(declare-fun dynLambda!27425 (Int Context!12946) Context!12946)

(assert (=> d!2197498 (= res!2873279 (= lt!2522113 (dynLambda!27425 lambda!415988 lt!2522247)))))

(declare-fun choose!53383 ((InoxSet Context!12946) Int Context!12946) Context!12946)

(assert (=> d!2197498 (= lt!2522247 (choose!53383 z1!570 lambda!415988 lt!2522113))))

(assert (=> d!2197498 (select (map!15783 z1!570 lambda!415988) lt!2522113)))

(assert (=> d!2197498 (= (mapPost2!318 z1!570 lambda!415988 lt!2522113) lt!2522247)))

(declare-fun b!7038706 () Bool)

(assert (=> b!7038706 (= e!4231368 (select z1!570 lt!2522247))))

(assert (= (and d!2197498 res!2873279) b!7038706))

(declare-fun b_lambda!267157 () Bool)

(assert (=> (not b_lambda!267157) (not d!2197498)))

(declare-fun m!7749036 () Bool)

(assert (=> d!2197498 m!7749036))

(declare-fun m!7749038 () Bool)

(assert (=> d!2197498 m!7749038))

(declare-fun m!7749040 () Bool)

(assert (=> d!2197498 m!7749040))

(declare-fun m!7749042 () Bool)

(assert (=> d!2197498 m!7749042))

(declare-fun m!7749044 () Bool)

(assert (=> b!7038706 m!7749044))

(assert (=> b!7038392 d!2197498))

(declare-fun bs!1872973 () Bool)

(declare-fun d!2197500 () Bool)

(assert (= bs!1872973 (and d!2197500 b!7038390)))

(declare-fun lambda!416015 () Int)

(assert (=> bs!1872973 (= (= lt!2522121 (h!74283 s!7408)) (= lambda!416015 lambda!415990))))

(declare-fun bs!1872974 () Bool)

(assert (= bs!1872974 (and d!2197500 d!2197492)))

(assert (=> bs!1872974 (= (= lt!2522121 (h!74283 s!7408)) (= lambda!416015 lambda!416014))))

(assert (=> d!2197500 true))

(assert (=> d!2197500 (= (derivationStepZipper!2933 lt!2522146 lt!2522121) (flatMap!2424 lt!2522146 lambda!416015))))

(declare-fun bs!1872975 () Bool)

(assert (= bs!1872975 d!2197500))

(declare-fun m!7749046 () Bool)

(assert (=> bs!1872975 m!7749046))

(assert (=> b!7038391 d!2197500))

(assert (=> b!7038391 d!2197412))

(declare-fun d!2197502 () Bool)

(assert (=> d!2197502 (= (flatMap!2424 lt!2522146 lambda!415990) (dynLambda!27424 lambda!415990 lt!2522140))))

(declare-fun lt!2522248 () Unit!161634)

(assert (=> d!2197502 (= lt!2522248 (choose!53382 lt!2522146 lt!2522140 lambda!415990))))

(assert (=> d!2197502 (= lt!2522146 (store ((as const (Array Context!12946 Bool)) false) lt!2522140 true))))

(assert (=> d!2197502 (= (lemmaFlatMapOnSingletonSet!1938 lt!2522146 lt!2522140 lambda!415990) lt!2522248)))

(declare-fun b_lambda!267159 () Bool)

(assert (=> (not b_lambda!267159) (not d!2197502)))

(declare-fun bs!1872976 () Bool)

(assert (= bs!1872976 d!2197502))

(assert (=> bs!1872976 m!7748518))

(declare-fun m!7749048 () Bool)

(assert (=> bs!1872976 m!7749048))

(declare-fun m!7749050 () Bool)

(assert (=> bs!1872976 m!7749050))

(assert (=> bs!1872976 m!7748528))

(assert (=> b!7038391 d!2197502))

(declare-fun d!2197504 () Bool)

(assert (=> d!2197504 (= (flatMap!2424 lt!2522146 lambda!415990) (choose!53381 lt!2522146 lambda!415990))))

(declare-fun bs!1872977 () Bool)

(assert (= bs!1872977 d!2197504))

(declare-fun m!7749052 () Bool)

(assert (=> bs!1872977 m!7749052))

(assert (=> b!7038391 d!2197504))

(declare-fun d!2197506 () Bool)

(assert (=> d!2197506 (= (head!14279 (_1!37353 lt!2522115)) (h!74283 (_1!37353 lt!2522115)))))

(assert (=> b!7038391 d!2197506))

(declare-fun b!7038707 () Bool)

(declare-fun e!4231369 () (InoxSet Context!12946))

(declare-fun call!639301 () (InoxSet Context!12946))

(assert (=> b!7038707 (= e!4231369 call!639301)))

(declare-fun b!7038708 () Bool)

(assert (=> b!7038708 (= e!4231369 ((as const (Array Context!12946 Bool)) false))))

(declare-fun bm!639296 () Bool)

(assert (=> bm!639296 (= call!639301 (derivationStepZipperDown!2141 (h!74284 (exprs!6973 lt!2522140)) (Context!12947 (t!381731 (exprs!6973 lt!2522140))) lt!2522121))))

(declare-fun d!2197508 () Bool)

(declare-fun c!1309955 () Bool)

(declare-fun e!4231371 () Bool)

(assert (=> d!2197508 (= c!1309955 e!4231371)))

(declare-fun res!2873280 () Bool)

(assert (=> d!2197508 (=> (not res!2873280) (not e!4231371))))

(assert (=> d!2197508 (= res!2873280 ((_ is Cons!67836) (exprs!6973 lt!2522140)))))

(declare-fun e!4231370 () (InoxSet Context!12946))

(assert (=> d!2197508 (= (derivationStepZipperUp!2087 lt!2522140 lt!2522121) e!4231370)))

(declare-fun b!7038709 () Bool)

(assert (=> b!7038709 (= e!4231370 e!4231369)))

(declare-fun c!1309954 () Bool)

(assert (=> b!7038709 (= c!1309954 ((_ is Cons!67836) (exprs!6973 lt!2522140)))))

(declare-fun b!7038710 () Bool)

(assert (=> b!7038710 (= e!4231371 (nullable!7188 (h!74284 (exprs!6973 lt!2522140))))))

(declare-fun b!7038711 () Bool)

(assert (=> b!7038711 (= e!4231370 ((_ map or) call!639301 (derivationStepZipperUp!2087 (Context!12947 (t!381731 (exprs!6973 lt!2522140))) lt!2522121)))))

(assert (= (and d!2197508 res!2873280) b!7038710))

(assert (= (and d!2197508 c!1309955) b!7038711))

(assert (= (and d!2197508 (not c!1309955)) b!7038709))

(assert (= (and b!7038709 c!1309954) b!7038707))

(assert (= (and b!7038709 (not c!1309954)) b!7038708))

(assert (= (or b!7038711 b!7038707) bm!639296))

(declare-fun m!7749054 () Bool)

(assert (=> bm!639296 m!7749054))

(assert (=> b!7038710 m!7748818))

(declare-fun m!7749056 () Bool)

(assert (=> b!7038711 m!7749056))

(assert (=> b!7038391 d!2197508))

(assert (=> b!7038393 d!2197456))

(declare-fun d!2197510 () Bool)

(assert (=> d!2197510 (forall!16398 (++!15535 lt!2522123 (exprs!6973 ct2!306)) lambda!415989)))

(declare-fun lt!2522249 () Unit!161634)

(assert (=> d!2197510 (= lt!2522249 (choose!53378 lt!2522123 (exprs!6973 ct2!306) lambda!415989))))

(assert (=> d!2197510 (forall!16398 lt!2522123 lambda!415989)))

(assert (=> d!2197510 (= (lemmaConcatPreservesForall!798 lt!2522123 (exprs!6973 ct2!306) lambda!415989) lt!2522249)))

(declare-fun bs!1872978 () Bool)

(assert (= bs!1872978 d!2197510))

(assert (=> bs!1872978 m!7748446))

(assert (=> bs!1872978 m!7748446))

(declare-fun m!7749058 () Bool)

(assert (=> bs!1872978 m!7749058))

(declare-fun m!7749060 () Bool)

(assert (=> bs!1872978 m!7749060))

(declare-fun m!7749062 () Bool)

(assert (=> bs!1872978 m!7749062))

(assert (=> b!7038393 d!2197510))

(declare-fun d!2197512 () Bool)

(declare-fun c!1309956 () Bool)

(assert (=> d!2197512 (= c!1309956 (isEmpty!39577 lt!2522151))))

(declare-fun e!4231372 () Bool)

(assert (=> d!2197512 (= (matchZipper!3017 lt!2522167 lt!2522151) e!4231372)))

(declare-fun b!7038712 () Bool)

(assert (=> b!7038712 (= e!4231372 (nullableZipper!2590 lt!2522167))))

(declare-fun b!7038713 () Bool)

(assert (=> b!7038713 (= e!4231372 (matchZipper!3017 (derivationStepZipper!2933 lt!2522167 (head!14279 lt!2522151)) (tail!13575 lt!2522151)))))

(assert (= (and d!2197512 c!1309956) b!7038712))

(assert (= (and d!2197512 (not c!1309956)) b!7038713))

(assert (=> d!2197512 m!7748986))

(declare-fun m!7749064 () Bool)

(assert (=> b!7038712 m!7749064))

(assert (=> b!7038713 m!7748990))

(assert (=> b!7038713 m!7748990))

(declare-fun m!7749066 () Bool)

(assert (=> b!7038713 m!7749066))

(assert (=> b!7038713 m!7748994))

(assert (=> b!7038713 m!7749066))

(assert (=> b!7038713 m!7748994))

(declare-fun m!7749068 () Bool)

(assert (=> b!7038713 m!7749068))

(assert (=> b!7038374 d!2197512))

(declare-fun d!2197514 () Bool)

(declare-fun c!1309957 () Bool)

(assert (=> d!2197514 (= c!1309957 (isEmpty!39577 (_2!37353 lt!2522115)))))

(declare-fun e!4231373 () Bool)

(assert (=> d!2197514 (= (matchZipper!3017 lt!2522159 (_2!37353 lt!2522115)) e!4231373)))

(declare-fun b!7038714 () Bool)

(assert (=> b!7038714 (= e!4231373 (nullableZipper!2590 lt!2522159))))

(declare-fun b!7038715 () Bool)

(assert (=> b!7038715 (= e!4231373 (matchZipper!3017 (derivationStepZipper!2933 lt!2522159 (head!14279 (_2!37353 lt!2522115))) (tail!13575 (_2!37353 lt!2522115))))))

(assert (= (and d!2197514 c!1309957) b!7038714))

(assert (= (and d!2197514 (not c!1309957)) b!7038715))

(declare-fun m!7749070 () Bool)

(assert (=> d!2197514 m!7749070))

(declare-fun m!7749072 () Bool)

(assert (=> b!7038714 m!7749072))

(declare-fun m!7749074 () Bool)

(assert (=> b!7038715 m!7749074))

(assert (=> b!7038715 m!7749074))

(declare-fun m!7749076 () Bool)

(assert (=> b!7038715 m!7749076))

(declare-fun m!7749078 () Bool)

(assert (=> b!7038715 m!7749078))

(assert (=> b!7038715 m!7749076))

(assert (=> b!7038715 m!7749078))

(declare-fun m!7749080 () Bool)

(assert (=> b!7038715 m!7749080))

(assert (=> b!7038375 d!2197514))

(declare-fun b!7038716 () Bool)

(declare-fun e!4231374 () (InoxSet Context!12946))

(declare-fun call!639302 () (InoxSet Context!12946))

(assert (=> b!7038716 (= e!4231374 call!639302)))

(declare-fun b!7038717 () Bool)

(assert (=> b!7038717 (= e!4231374 ((as const (Array Context!12946 Bool)) false))))

(declare-fun bm!639297 () Bool)

(assert (=> bm!639297 (= call!639302 (derivationStepZipperDown!2141 (h!74284 (exprs!6973 lt!2522122)) (Context!12947 (t!381731 (exprs!6973 lt!2522122))) (h!74283 s!7408)))))

(declare-fun d!2197516 () Bool)

(declare-fun c!1309959 () Bool)

(declare-fun e!4231376 () Bool)

(assert (=> d!2197516 (= c!1309959 e!4231376)))

(declare-fun res!2873281 () Bool)

(assert (=> d!2197516 (=> (not res!2873281) (not e!4231376))))

(assert (=> d!2197516 (= res!2873281 ((_ is Cons!67836) (exprs!6973 lt!2522122)))))

(declare-fun e!4231375 () (InoxSet Context!12946))

(assert (=> d!2197516 (= (derivationStepZipperUp!2087 lt!2522122 (h!74283 s!7408)) e!4231375)))

(declare-fun b!7038718 () Bool)

(assert (=> b!7038718 (= e!4231375 e!4231374)))

(declare-fun c!1309958 () Bool)

(assert (=> b!7038718 (= c!1309958 ((_ is Cons!67836) (exprs!6973 lt!2522122)))))

(declare-fun b!7038719 () Bool)

(assert (=> b!7038719 (= e!4231376 (nullable!7188 (h!74284 (exprs!6973 lt!2522122))))))

(declare-fun b!7038720 () Bool)

(assert (=> b!7038720 (= e!4231375 ((_ map or) call!639302 (derivationStepZipperUp!2087 (Context!12947 (t!381731 (exprs!6973 lt!2522122))) (h!74283 s!7408))))))

(assert (= (and d!2197516 res!2873281) b!7038719))

(assert (= (and d!2197516 c!1309959) b!7038720))

(assert (= (and d!2197516 (not c!1309959)) b!7038718))

(assert (= (and b!7038718 c!1309958) b!7038716))

(assert (= (and b!7038718 (not c!1309958)) b!7038717))

(assert (= (or b!7038720 b!7038716) bm!639297))

(declare-fun m!7749082 () Bool)

(assert (=> bm!639297 m!7749082))

(declare-fun m!7749084 () Bool)

(assert (=> b!7038719 m!7749084))

(declare-fun m!7749086 () Bool)

(assert (=> b!7038720 m!7749086))

(assert (=> b!7038394 d!2197516))

(declare-fun b!7038723 () Bool)

(declare-fun res!2873283 () Bool)

(declare-fun e!4231378 () Bool)

(assert (=> b!7038723 (=> (not res!2873283) (not e!4231378))))

(declare-fun lt!2522250 () List!67960)

(assert (=> b!7038723 (= res!2873283 (= (size!41082 lt!2522250) (+ (size!41082 lt!2522123) (size!41082 (exprs!6973 ct2!306)))))))

(declare-fun b!7038724 () Bool)

(assert (=> b!7038724 (= e!4231378 (or (not (= (exprs!6973 ct2!306) Nil!67836)) (= lt!2522250 lt!2522123)))))

(declare-fun b!7038722 () Bool)

(declare-fun e!4231377 () List!67960)

(assert (=> b!7038722 (= e!4231377 (Cons!67836 (h!74284 lt!2522123) (++!15535 (t!381731 lt!2522123) (exprs!6973 ct2!306))))))

(declare-fun d!2197518 () Bool)

(assert (=> d!2197518 e!4231378))

(declare-fun res!2873282 () Bool)

(assert (=> d!2197518 (=> (not res!2873282) (not e!4231378))))

(assert (=> d!2197518 (= res!2873282 (= (content!13562 lt!2522250) ((_ map or) (content!13562 lt!2522123) (content!13562 (exprs!6973 ct2!306)))))))

(assert (=> d!2197518 (= lt!2522250 e!4231377)))

(declare-fun c!1309960 () Bool)

(assert (=> d!2197518 (= c!1309960 ((_ is Nil!67836) lt!2522123))))

(assert (=> d!2197518 (= (++!15535 lt!2522123 (exprs!6973 ct2!306)) lt!2522250)))

(declare-fun b!7038721 () Bool)

(assert (=> b!7038721 (= e!4231377 (exprs!6973 ct2!306))))

(assert (= (and d!2197518 c!1309960) b!7038721))

(assert (= (and d!2197518 (not c!1309960)) b!7038722))

(assert (= (and d!2197518 res!2873282) b!7038723))

(assert (= (and b!7038723 res!2873283) b!7038724))

(declare-fun m!7749088 () Bool)

(assert (=> b!7038723 m!7749088))

(declare-fun m!7749090 () Bool)

(assert (=> b!7038723 m!7749090))

(assert (=> b!7038723 m!7749026))

(declare-fun m!7749092 () Bool)

(assert (=> b!7038722 m!7749092))

(declare-fun m!7749094 () Bool)

(assert (=> d!2197518 m!7749094))

(declare-fun m!7749096 () Bool)

(assert (=> d!2197518 m!7749096))

(assert (=> d!2197518 m!7749034))

(assert (=> b!7038394 d!2197518))

(assert (=> b!7038394 d!2197510))

(declare-fun bm!639298 () Bool)

(declare-fun c!1309963 () Bool)

(declare-fun call!639306 () List!67960)

(declare-fun c!1309961 () Bool)

(assert (=> bm!639298 (= call!639306 ($colon$colon!2583 (exprs!6973 lt!2522122) (ite (or c!1309961 c!1309963) (regTwo!35466 (h!74284 (exprs!6973 lt!2522131))) (h!74284 (exprs!6973 lt!2522131)))))))

(declare-fun b!7038725 () Bool)

(declare-fun e!4231381 () (InoxSet Context!12946))

(declare-fun call!639307 () (InoxSet Context!12946))

(declare-fun call!639305 () (InoxSet Context!12946))

(assert (=> b!7038725 (= e!4231381 ((_ map or) call!639307 call!639305))))

(declare-fun bm!639299 () Bool)

(declare-fun call!639304 () List!67960)

(assert (=> bm!639299 (= call!639304 call!639306)))

(declare-fun b!7038726 () Bool)

(declare-fun e!4231380 () (InoxSet Context!12946))

(assert (=> b!7038726 (= e!4231380 e!4231381)))

(declare-fun c!1309964 () Bool)

(assert (=> b!7038726 (= c!1309964 ((_ is Union!17477) (h!74284 (exprs!6973 lt!2522131))))))

(declare-fun bm!639300 () Bool)

(declare-fun call!639303 () (InoxSet Context!12946))

(declare-fun call!639308 () (InoxSet Context!12946))

(assert (=> bm!639300 (= call!639303 call!639308)))

(declare-fun b!7038727 () Bool)

(declare-fun c!1309965 () Bool)

(assert (=> b!7038727 (= c!1309965 ((_ is Star!17477) (h!74284 (exprs!6973 lt!2522131))))))

(declare-fun e!4231382 () (InoxSet Context!12946))

(declare-fun e!4231379 () (InoxSet Context!12946))

(assert (=> b!7038727 (= e!4231382 e!4231379)))

(declare-fun b!7038728 () Bool)

(assert (=> b!7038728 (= e!4231380 (store ((as const (Array Context!12946 Bool)) false) lt!2522122 true))))

(declare-fun bm!639301 () Bool)

(assert (=> bm!639301 (= call!639308 call!639307)))

(declare-fun bm!639302 () Bool)

(assert (=> bm!639302 (= call!639307 (derivationStepZipperDown!2141 (ite c!1309964 (regOne!35467 (h!74284 (exprs!6973 lt!2522131))) (ite c!1309961 (regTwo!35466 (h!74284 (exprs!6973 lt!2522131))) (ite c!1309963 (regOne!35466 (h!74284 (exprs!6973 lt!2522131))) (reg!17806 (h!74284 (exprs!6973 lt!2522131)))))) (ite (or c!1309964 c!1309961) lt!2522122 (Context!12947 call!639304)) (h!74283 s!7408)))))

(declare-fun b!7038729 () Bool)

(declare-fun e!4231383 () (InoxSet Context!12946))

(assert (=> b!7038729 (= e!4231383 ((_ map or) call!639305 call!639308))))

(declare-fun d!2197520 () Bool)

(declare-fun c!1309962 () Bool)

(assert (=> d!2197520 (= c!1309962 (and ((_ is ElementMatch!17477) (h!74284 (exprs!6973 lt!2522131))) (= (c!1309841 (h!74284 (exprs!6973 lt!2522131))) (h!74283 s!7408))))))

(assert (=> d!2197520 (= (derivationStepZipperDown!2141 (h!74284 (exprs!6973 lt!2522131)) lt!2522122 (h!74283 s!7408)) e!4231380)))

(declare-fun bm!639303 () Bool)

(assert (=> bm!639303 (= call!639305 (derivationStepZipperDown!2141 (ite c!1309964 (regTwo!35467 (h!74284 (exprs!6973 lt!2522131))) (regOne!35466 (h!74284 (exprs!6973 lt!2522131)))) (ite c!1309964 lt!2522122 (Context!12947 call!639306)) (h!74283 s!7408)))))

(declare-fun b!7038730 () Bool)

(assert (=> b!7038730 (= e!4231383 e!4231382)))

(assert (=> b!7038730 (= c!1309963 ((_ is Concat!26322) (h!74284 (exprs!6973 lt!2522131))))))

(declare-fun b!7038731 () Bool)

(assert (=> b!7038731 (= e!4231379 call!639303)))

(declare-fun b!7038732 () Bool)

(declare-fun e!4231384 () Bool)

(assert (=> b!7038732 (= e!4231384 (nullable!7188 (regOne!35466 (h!74284 (exprs!6973 lt!2522131)))))))

(declare-fun b!7038733 () Bool)

(assert (=> b!7038733 (= e!4231382 call!639303)))

(declare-fun b!7038734 () Bool)

(assert (=> b!7038734 (= c!1309961 e!4231384)))

(declare-fun res!2873284 () Bool)

(assert (=> b!7038734 (=> (not res!2873284) (not e!4231384))))

(assert (=> b!7038734 (= res!2873284 ((_ is Concat!26322) (h!74284 (exprs!6973 lt!2522131))))))

(assert (=> b!7038734 (= e!4231381 e!4231383)))

(declare-fun b!7038735 () Bool)

(assert (=> b!7038735 (= e!4231379 ((as const (Array Context!12946 Bool)) false))))

(assert (= (and d!2197520 c!1309962) b!7038728))

(assert (= (and d!2197520 (not c!1309962)) b!7038726))

(assert (= (and b!7038726 c!1309964) b!7038725))

(assert (= (and b!7038726 (not c!1309964)) b!7038734))

(assert (= (and b!7038734 res!2873284) b!7038732))

(assert (= (and b!7038734 c!1309961) b!7038729))

(assert (= (and b!7038734 (not c!1309961)) b!7038730))

(assert (= (and b!7038730 c!1309963) b!7038733))

(assert (= (and b!7038730 (not c!1309963)) b!7038727))

(assert (= (and b!7038727 c!1309965) b!7038731))

(assert (= (and b!7038727 (not c!1309965)) b!7038735))

(assert (= (or b!7038733 b!7038731) bm!639299))

(assert (= (or b!7038733 b!7038731) bm!639300))

(assert (= (or b!7038729 bm!639300) bm!639301))

(assert (= (or b!7038729 bm!639299) bm!639298))

(assert (= (or b!7038725 bm!639301) bm!639302))

(assert (= (or b!7038725 b!7038729) bm!639303))

(declare-fun m!7749098 () Bool)

(assert (=> bm!639302 m!7749098))

(declare-fun m!7749100 () Bool)

(assert (=> bm!639303 m!7749100))

(assert (=> b!7038728 m!7748432))

(assert (=> b!7038732 m!7748948))

(declare-fun m!7749102 () Bool)

(assert (=> bm!639298 m!7749102))

(assert (=> b!7038394 d!2197520))

(declare-fun bs!1872979 () Bool)

(declare-fun d!2197522 () Bool)

(assert (= bs!1872979 (and d!2197522 b!7038390)))

(declare-fun lambda!416016 () Int)

(assert (=> bs!1872979 (= lambda!416016 lambda!415990)))

(declare-fun bs!1872980 () Bool)

(assert (= bs!1872980 (and d!2197522 d!2197492)))

(assert (=> bs!1872980 (= lambda!416016 lambda!416014)))

(declare-fun bs!1872981 () Bool)

(assert (= bs!1872981 (and d!2197522 d!2197500)))

(assert (=> bs!1872981 (= (= (h!74283 s!7408) lt!2522121) (= lambda!416016 lambda!416015))))

(assert (=> d!2197522 true))

(assert (=> d!2197522 (= (derivationStepZipper!2933 lt!2522136 (h!74283 s!7408)) (flatMap!2424 lt!2522136 lambda!416016))))

(declare-fun bs!1872982 () Bool)

(assert (= bs!1872982 d!2197522))

(declare-fun m!7749104 () Bool)

(assert (=> bs!1872982 m!7749104))

(assert (=> b!7038396 d!2197522))

(declare-fun b!7038736 () Bool)

(declare-fun e!4231385 () (InoxSet Context!12946))

(declare-fun call!639309 () (InoxSet Context!12946))

(assert (=> b!7038736 (= e!4231385 call!639309)))

(declare-fun b!7038737 () Bool)

(assert (=> b!7038737 (= e!4231385 ((as const (Array Context!12946 Bool)) false))))

(declare-fun bm!639304 () Bool)

(assert (=> bm!639304 (= call!639309 (derivationStepZipperDown!2141 (h!74284 (exprs!6973 lt!2522131)) (Context!12947 (t!381731 (exprs!6973 lt!2522131))) (h!74283 s!7408)))))

(declare-fun d!2197524 () Bool)

(declare-fun c!1309967 () Bool)

(declare-fun e!4231387 () Bool)

(assert (=> d!2197524 (= c!1309967 e!4231387)))

(declare-fun res!2873285 () Bool)

(assert (=> d!2197524 (=> (not res!2873285) (not e!4231387))))

(assert (=> d!2197524 (= res!2873285 ((_ is Cons!67836) (exprs!6973 lt!2522131)))))

(declare-fun e!4231386 () (InoxSet Context!12946))

(assert (=> d!2197524 (= (derivationStepZipperUp!2087 lt!2522131 (h!74283 s!7408)) e!4231386)))

(declare-fun b!7038738 () Bool)

(assert (=> b!7038738 (= e!4231386 e!4231385)))

(declare-fun c!1309966 () Bool)

(assert (=> b!7038738 (= c!1309966 ((_ is Cons!67836) (exprs!6973 lt!2522131)))))

(declare-fun b!7038739 () Bool)

(assert (=> b!7038739 (= e!4231387 (nullable!7188 (h!74284 (exprs!6973 lt!2522131))))))

(declare-fun b!7038740 () Bool)

(assert (=> b!7038740 (= e!4231386 ((_ map or) call!639309 (derivationStepZipperUp!2087 (Context!12947 (t!381731 (exprs!6973 lt!2522131))) (h!74283 s!7408))))))

(assert (= (and d!2197524 res!2873285) b!7038739))

(assert (= (and d!2197524 c!1309967) b!7038740))

(assert (= (and d!2197524 (not c!1309967)) b!7038738))

(assert (= (and b!7038738 c!1309966) b!7038736))

(assert (= (and b!7038738 (not c!1309966)) b!7038737))

(assert (= (or b!7038740 b!7038736) bm!639304))

(declare-fun m!7749106 () Bool)

(assert (=> bm!639304 m!7749106))

(assert (=> b!7038739 m!7748554))

(declare-fun m!7749108 () Bool)

(assert (=> b!7038740 m!7749108))

(assert (=> b!7038396 d!2197524))

(declare-fun d!2197526 () Bool)

(assert (=> d!2197526 (= (flatMap!2424 lt!2522136 lambda!415990) (choose!53381 lt!2522136 lambda!415990))))

(declare-fun bs!1872983 () Bool)

(assert (= bs!1872983 d!2197526))

(declare-fun m!7749110 () Bool)

(assert (=> bs!1872983 m!7749110))

(assert (=> b!7038396 d!2197526))

(declare-fun d!2197528 () Bool)

(assert (=> d!2197528 (= (flatMap!2424 lt!2522136 lambda!415990) (dynLambda!27424 lambda!415990 lt!2522131))))

(declare-fun lt!2522251 () Unit!161634)

(assert (=> d!2197528 (= lt!2522251 (choose!53382 lt!2522136 lt!2522131 lambda!415990))))

(assert (=> d!2197528 (= lt!2522136 (store ((as const (Array Context!12946 Bool)) false) lt!2522131 true))))

(assert (=> d!2197528 (= (lemmaFlatMapOnSingletonSet!1938 lt!2522136 lt!2522131 lambda!415990) lt!2522251)))

(declare-fun b_lambda!267161 () Bool)

(assert (=> (not b_lambda!267161) (not d!2197528)))

(declare-fun bs!1872984 () Bool)

(assert (= bs!1872984 d!2197528))

(assert (=> bs!1872984 m!7748450))

(declare-fun m!7749112 () Bool)

(assert (=> bs!1872984 m!7749112))

(declare-fun m!7749114 () Bool)

(assert (=> bs!1872984 m!7749114))

(assert (=> bs!1872984 m!7748448))

(assert (=> b!7038396 d!2197528))

(declare-fun d!2197530 () Bool)

(assert (=> d!2197530 (= (get!23771 lt!2522125) (v!53171 lt!2522125))))

(assert (=> b!7038376 d!2197530))

(declare-fun d!2197532 () Bool)

(assert (=> d!2197532 (isDefined!13583 (findConcatSeparationZippers!398 lt!2522146 (store ((as const (Array Context!12946 Bool)) false) ct2!306 true) Nil!67835 s!7408 s!7408))))

(declare-fun lt!2522254 () Unit!161634)

(declare-fun choose!53384 ((InoxSet Context!12946) Context!12946 List!67959) Unit!161634)

(assert (=> d!2197532 (= lt!2522254 (choose!53384 lt!2522146 ct2!306 s!7408))))

(assert (=> d!2197532 (matchZipper!3017 (appendTo!598 lt!2522146 ct2!306) s!7408)))

(assert (=> d!2197532 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!386 lt!2522146 ct2!306 s!7408) lt!2522254)))

(declare-fun bs!1872985 () Bool)

(assert (= bs!1872985 d!2197532))

(declare-fun m!7749116 () Bool)

(assert (=> bs!1872985 m!7749116))

(declare-fun m!7749118 () Bool)

(assert (=> bs!1872985 m!7749118))

(declare-fun m!7749120 () Bool)

(assert (=> bs!1872985 m!7749120))

(assert (=> bs!1872985 m!7748480))

(declare-fun m!7749122 () Bool)

(assert (=> bs!1872985 m!7749122))

(declare-fun m!7749124 () Bool)

(assert (=> bs!1872985 m!7749124))

(assert (=> bs!1872985 m!7748480))

(assert (=> bs!1872985 m!7749118))

(assert (=> bs!1872985 m!7749122))

(assert (=> b!7038376 d!2197532))

(declare-fun d!2197534 () Bool)

(declare-fun isEmpty!39580 (Option!16882) Bool)

(assert (=> d!2197534 (= (isDefined!13583 lt!2522125) (not (isEmpty!39580 lt!2522125)))))

(declare-fun bs!1872986 () Bool)

(assert (= bs!1872986 d!2197534))

(declare-fun m!7749126 () Bool)

(assert (=> bs!1872986 m!7749126))

(assert (=> b!7038376 d!2197534))

(declare-fun b!7038759 () Bool)

(declare-fun e!4231399 () Option!16882)

(assert (=> b!7038759 (= e!4231399 (Some!16881 (tuple2!68101 Nil!67835 s!7408)))))

(declare-fun b!7038760 () Bool)

(declare-fun e!4231402 () Option!16882)

(assert (=> b!7038760 (= e!4231402 None!16881)))

(declare-fun b!7038761 () Bool)

(declare-fun res!2873299 () Bool)

(declare-fun e!4231398 () Bool)

(assert (=> b!7038761 (=> (not res!2873299) (not e!4231398))))

(declare-fun lt!2522261 () Option!16882)

(assert (=> b!7038761 (= res!2873299 (matchZipper!3017 lt!2522146 (_1!37353 (get!23771 lt!2522261))))))

(declare-fun b!7038762 () Bool)

(assert (=> b!7038762 (= e!4231398 (= (++!15534 (_1!37353 (get!23771 lt!2522261)) (_2!37353 (get!23771 lt!2522261))) s!7408))))

(declare-fun b!7038763 () Bool)

(declare-fun e!4231401 () Bool)

(assert (=> b!7038763 (= e!4231401 (matchZipper!3017 lt!2522159 s!7408))))

(declare-fun b!7038764 () Bool)

(declare-fun e!4231400 () Bool)

(assert (=> b!7038764 (= e!4231400 (not (isDefined!13583 lt!2522261)))))

(declare-fun b!7038765 () Bool)

(assert (=> b!7038765 (= e!4231399 e!4231402)))

(declare-fun c!1309972 () Bool)

(assert (=> b!7038765 (= c!1309972 ((_ is Nil!67835) s!7408))))

(declare-fun b!7038766 () Bool)

(declare-fun res!2873297 () Bool)

(assert (=> b!7038766 (=> (not res!2873297) (not e!4231398))))

(assert (=> b!7038766 (= res!2873297 (matchZipper!3017 lt!2522159 (_2!37353 (get!23771 lt!2522261))))))

(declare-fun d!2197536 () Bool)

(assert (=> d!2197536 e!4231400))

(declare-fun res!2873296 () Bool)

(assert (=> d!2197536 (=> res!2873296 e!4231400)))

(assert (=> d!2197536 (= res!2873296 e!4231398)))

(declare-fun res!2873300 () Bool)

(assert (=> d!2197536 (=> (not res!2873300) (not e!4231398))))

(assert (=> d!2197536 (= res!2873300 (isDefined!13583 lt!2522261))))

(assert (=> d!2197536 (= lt!2522261 e!4231399)))

(declare-fun c!1309973 () Bool)

(assert (=> d!2197536 (= c!1309973 e!4231401)))

(declare-fun res!2873298 () Bool)

(assert (=> d!2197536 (=> (not res!2873298) (not e!4231401))))

(assert (=> d!2197536 (= res!2873298 (matchZipper!3017 lt!2522146 Nil!67835))))

(assert (=> d!2197536 (= (++!15534 Nil!67835 s!7408) s!7408)))

(assert (=> d!2197536 (= (findConcatSeparationZippers!398 lt!2522146 lt!2522159 Nil!67835 s!7408 s!7408) lt!2522261)))

(declare-fun b!7038767 () Bool)

(declare-fun lt!2522262 () Unit!161634)

(declare-fun lt!2522263 () Unit!161634)

(assert (=> b!7038767 (= lt!2522262 lt!2522263)))

(assert (=> b!7038767 (= (++!15534 (++!15534 Nil!67835 (Cons!67835 (h!74283 s!7408) Nil!67835)) (t!381730 s!7408)) s!7408)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2933 (List!67959 C!35224 List!67959 List!67959) Unit!161634)

(assert (=> b!7038767 (= lt!2522263 (lemmaMoveElementToOtherListKeepsConcatEq!2933 Nil!67835 (h!74283 s!7408) (t!381730 s!7408) s!7408))))

(assert (=> b!7038767 (= e!4231402 (findConcatSeparationZippers!398 lt!2522146 lt!2522159 (++!15534 Nil!67835 (Cons!67835 (h!74283 s!7408) Nil!67835)) (t!381730 s!7408) s!7408))))

(assert (= (and d!2197536 res!2873298) b!7038763))

(assert (= (and d!2197536 c!1309973) b!7038759))

(assert (= (and d!2197536 (not c!1309973)) b!7038765))

(assert (= (and b!7038765 c!1309972) b!7038760))

(assert (= (and b!7038765 (not c!1309972)) b!7038767))

(assert (= (and d!2197536 res!2873300) b!7038761))

(assert (= (and b!7038761 res!2873299) b!7038766))

(assert (= (and b!7038766 res!2873297) b!7038762))

(assert (= (and d!2197536 (not res!2873296)) b!7038764))

(declare-fun m!7749128 () Bool)

(assert (=> b!7038767 m!7749128))

(assert (=> b!7038767 m!7749128))

(declare-fun m!7749130 () Bool)

(assert (=> b!7038767 m!7749130))

(declare-fun m!7749132 () Bool)

(assert (=> b!7038767 m!7749132))

(assert (=> b!7038767 m!7749128))

(declare-fun m!7749134 () Bool)

(assert (=> b!7038767 m!7749134))

(declare-fun m!7749136 () Bool)

(assert (=> b!7038763 m!7749136))

(declare-fun m!7749138 () Bool)

(assert (=> b!7038762 m!7749138))

(declare-fun m!7749140 () Bool)

(assert (=> b!7038762 m!7749140))

(declare-fun m!7749142 () Bool)

(assert (=> d!2197536 m!7749142))

(declare-fun m!7749144 () Bool)

(assert (=> d!2197536 m!7749144))

(declare-fun m!7749146 () Bool)

(assert (=> d!2197536 m!7749146))

(assert (=> b!7038764 m!7749142))

(assert (=> b!7038766 m!7749138))

(declare-fun m!7749148 () Bool)

(assert (=> b!7038766 m!7749148))

(assert (=> b!7038761 m!7749138))

(declare-fun m!7749150 () Bool)

(assert (=> b!7038761 m!7749150))

(assert (=> b!7038376 d!2197536))

(declare-fun d!2197538 () Bool)

(declare-fun c!1309974 () Bool)

(assert (=> d!2197538 (= c!1309974 (isEmpty!39577 (_1!37353 lt!2522115)))))

(declare-fun e!4231403 () Bool)

(assert (=> d!2197538 (= (matchZipper!3017 lt!2522146 (_1!37353 lt!2522115)) e!4231403)))

(declare-fun b!7038768 () Bool)

(assert (=> b!7038768 (= e!4231403 (nullableZipper!2590 lt!2522146))))

(declare-fun b!7038769 () Bool)

(assert (=> b!7038769 (= e!4231403 (matchZipper!3017 (derivationStepZipper!2933 lt!2522146 (head!14279 (_1!37353 lt!2522115))) (tail!13575 (_1!37353 lt!2522115))))))

(assert (= (and d!2197538 c!1309974) b!7038768))

(assert (= (and d!2197538 (not c!1309974)) b!7038769))

(assert (=> d!2197538 m!7748472))

(declare-fun m!7749152 () Bool)

(assert (=> b!7038768 m!7749152))

(assert (=> b!7038769 m!7748508))

(assert (=> b!7038769 m!7748508))

(declare-fun m!7749154 () Bool)

(assert (=> b!7038769 m!7749154))

(assert (=> b!7038769 m!7748542))

(assert (=> b!7038769 m!7749154))

(assert (=> b!7038769 m!7748542))

(declare-fun m!7749156 () Bool)

(assert (=> b!7038769 m!7749156))

(assert (=> b!7038376 d!2197538))

(declare-fun d!2197540 () Bool)

(declare-fun lt!2522266 () Int)

(assert (=> d!2197540 (>= lt!2522266 0)))

(declare-fun e!4231406 () Int)

(assert (=> d!2197540 (= lt!2522266 e!4231406)))

(declare-fun c!1309977 () Bool)

(assert (=> d!2197540 (= c!1309977 ((_ is Cons!67837) (Cons!67837 lt!2522140 Nil!67837)))))

(assert (=> d!2197540 (= (zipperDepthTotal!540 (Cons!67837 lt!2522140 Nil!67837)) lt!2522266)))

(declare-fun b!7038774 () Bool)

(assert (=> b!7038774 (= e!4231406 (+ (contextDepthTotal!512 (h!74285 (Cons!67837 lt!2522140 Nil!67837))) (zipperDepthTotal!540 (t!381732 (Cons!67837 lt!2522140 Nil!67837)))))))

(declare-fun b!7038775 () Bool)

(assert (=> b!7038775 (= e!4231406 0)))

(assert (= (and d!2197540 c!1309977) b!7038774))

(assert (= (and d!2197540 (not c!1309977)) b!7038775))

(declare-fun m!7749158 () Bool)

(assert (=> b!7038774 m!7749158))

(declare-fun m!7749160 () Bool)

(assert (=> b!7038774 m!7749160))

(assert (=> b!7038397 d!2197540))

(declare-fun d!2197542 () Bool)

(declare-fun c!1309978 () Bool)

(assert (=> d!2197542 (= c!1309978 (isEmpty!39577 s!7408))))

(declare-fun e!4231407 () Bool)

(assert (=> d!2197542 (= (matchZipper!3017 lt!2522130 s!7408) e!4231407)))

(declare-fun b!7038776 () Bool)

(assert (=> b!7038776 (= e!4231407 (nullableZipper!2590 lt!2522130))))

(declare-fun b!7038777 () Bool)

(assert (=> b!7038777 (= e!4231407 (matchZipper!3017 (derivationStepZipper!2933 lt!2522130 (head!14279 s!7408)) (tail!13575 s!7408)))))

(assert (= (and d!2197542 c!1309978) b!7038776))

(assert (= (and d!2197542 (not c!1309978)) b!7038777))

(declare-fun m!7749162 () Bool)

(assert (=> d!2197542 m!7749162))

(declare-fun m!7749164 () Bool)

(assert (=> b!7038776 m!7749164))

(declare-fun m!7749166 () Bool)

(assert (=> b!7038777 m!7749166))

(assert (=> b!7038777 m!7749166))

(declare-fun m!7749168 () Bool)

(assert (=> b!7038777 m!7749168))

(declare-fun m!7749170 () Bool)

(assert (=> b!7038777 m!7749170))

(assert (=> b!7038777 m!7749168))

(assert (=> b!7038777 m!7749170))

(declare-fun m!7749172 () Bool)

(assert (=> b!7038777 m!7749172))

(assert (=> b!7038378 d!2197542))

(assert (=> b!7038378 d!2197510))

(declare-fun d!2197544 () Bool)

(declare-fun c!1309979 () Bool)

(assert (=> d!2197544 (= c!1309979 (isEmpty!39577 s!7408))))

(declare-fun e!4231408 () Bool)

(assert (=> d!2197544 (= (matchZipper!3017 lt!2522119 s!7408) e!4231408)))

(declare-fun b!7038778 () Bool)

(assert (=> b!7038778 (= e!4231408 (nullableZipper!2590 lt!2522119))))

(declare-fun b!7038779 () Bool)

(assert (=> b!7038779 (= e!4231408 (matchZipper!3017 (derivationStepZipper!2933 lt!2522119 (head!14279 s!7408)) (tail!13575 s!7408)))))

(assert (= (and d!2197544 c!1309979) b!7038778))

(assert (= (and d!2197544 (not c!1309979)) b!7038779))

(assert (=> d!2197544 m!7749162))

(declare-fun m!7749174 () Bool)

(assert (=> b!7038778 m!7749174))

(assert (=> b!7038779 m!7749166))

(assert (=> b!7038779 m!7749166))

(declare-fun m!7749176 () Bool)

(assert (=> b!7038779 m!7749176))

(assert (=> b!7038779 m!7749170))

(assert (=> b!7038779 m!7749176))

(assert (=> b!7038779 m!7749170))

(declare-fun m!7749178 () Bool)

(assert (=> b!7038779 m!7749178))

(assert (=> start!680658 d!2197544))

(declare-fun bs!1872987 () Bool)

(declare-fun d!2197546 () Bool)

(assert (= bs!1872987 (and d!2197546 b!7038392)))

(declare-fun lambda!416021 () Int)

(assert (=> bs!1872987 (= lambda!416021 lambda!415988)))

(assert (=> d!2197546 true))

(assert (=> d!2197546 (= (appendTo!598 z1!570 ct2!306) (map!15783 z1!570 lambda!416021))))

(declare-fun bs!1872988 () Bool)

(assert (= bs!1872988 d!2197546))

(declare-fun m!7749180 () Bool)

(assert (=> bs!1872988 m!7749180))

(assert (=> start!680658 d!2197546))

(declare-fun bs!1872989 () Bool)

(declare-fun d!2197548 () Bool)

(assert (= bs!1872989 (and d!2197548 b!7038392)))

(declare-fun lambda!416024 () Int)

(assert (=> bs!1872989 (= lambda!416024 lambda!415989)))

(assert (=> d!2197548 (= (inv!86551 ct2!306) (forall!16398 (exprs!6973 ct2!306) lambda!416024))))

(declare-fun bs!1872990 () Bool)

(assert (= bs!1872990 d!2197548))

(declare-fun m!7749182 () Bool)

(assert (=> bs!1872990 m!7749182))

(assert (=> start!680658 d!2197548))

(declare-fun bs!1872991 () Bool)

(declare-fun d!2197550 () Bool)

(assert (= bs!1872991 (and d!2197550 b!7038390)))

(declare-fun lambda!416025 () Int)

(assert (=> bs!1872991 (= lambda!416025 lambda!415990)))

(declare-fun bs!1872992 () Bool)

(assert (= bs!1872992 (and d!2197550 d!2197492)))

(assert (=> bs!1872992 (= lambda!416025 lambda!416014)))

(declare-fun bs!1872993 () Bool)

(assert (= bs!1872993 (and d!2197550 d!2197500)))

(assert (=> bs!1872993 (= (= (h!74283 s!7408) lt!2522121) (= lambda!416025 lambda!416015))))

(declare-fun bs!1872994 () Bool)

(assert (= bs!1872994 (and d!2197550 d!2197522)))

(assert (=> bs!1872994 (= lambda!416025 lambda!416016)))

(assert (=> d!2197550 true))

(assert (=> d!2197550 (= (derivationStepZipper!2933 lt!2522130 (h!74283 s!7408)) (flatMap!2424 lt!2522130 lambda!416025))))

(declare-fun bs!1872995 () Bool)

(assert (= bs!1872995 d!2197550))

(declare-fun m!7749184 () Bool)

(assert (=> bs!1872995 m!7749184))

(assert (=> b!7038380 d!2197550))

(declare-fun d!2197552 () Bool)

(assert (=> d!2197552 (= (flatMap!2424 lt!2522130 lambda!415990) (choose!53381 lt!2522130 lambda!415990))))

(declare-fun bs!1872996 () Bool)

(assert (= bs!1872996 d!2197552))

(declare-fun m!7749186 () Bool)

(assert (=> bs!1872996 m!7749186))

(assert (=> b!7038380 d!2197552))

(declare-fun d!2197554 () Bool)

(assert (=> d!2197554 (= (flatMap!2424 lt!2522130 lambda!415990) (dynLambda!27424 lambda!415990 lt!2522122))))

(declare-fun lt!2522269 () Unit!161634)

(assert (=> d!2197554 (= lt!2522269 (choose!53382 lt!2522130 lt!2522122 lambda!415990))))

(assert (=> d!2197554 (= lt!2522130 (store ((as const (Array Context!12946 Bool)) false) lt!2522122 true))))

(assert (=> d!2197554 (= (lemmaFlatMapOnSingletonSet!1938 lt!2522130 lt!2522122 lambda!415990) lt!2522269)))

(declare-fun b_lambda!267163 () Bool)

(assert (=> (not b_lambda!267163) (not d!2197554)))

(declare-fun bs!1872997 () Bool)

(assert (= bs!1872997 d!2197554))

(assert (=> bs!1872997 m!7748434))

(declare-fun m!7749188 () Bool)

(assert (=> bs!1872997 m!7749188))

(declare-fun m!7749190 () Bool)

(assert (=> bs!1872997 m!7749190))

(assert (=> bs!1872997 m!7748432))

(assert (=> b!7038380 d!2197554))

(assert (=> b!7038380 d!2197516))

(assert (=> b!7038380 d!2197510))

(declare-fun bs!1872998 () Bool)

(declare-fun d!2197556 () Bool)

(assert (= bs!1872998 (and d!2197556 b!7038392)))

(declare-fun lambda!416026 () Int)

(assert (=> bs!1872998 (= lambda!416026 lambda!415989)))

(declare-fun bs!1872999 () Bool)

(assert (= bs!1872999 (and d!2197556 d!2197548)))

(assert (=> bs!1872999 (= lambda!416026 lambda!416024)))

(assert (=> d!2197556 (= (inv!86551 setElem!49282) (forall!16398 (exprs!6973 setElem!49282) lambda!416026))))

(declare-fun bs!1873000 () Bool)

(assert (= bs!1873000 d!2197556))

(declare-fun m!7749192 () Bool)

(assert (=> bs!1873000 m!7749192))

(assert (=> setNonEmpty!49282 d!2197556))

(declare-fun d!2197558 () Bool)

(declare-fun c!1309981 () Bool)

(assert (=> d!2197558 (= c!1309981 (isEmpty!39577 (t!381730 s!7408)))))

(declare-fun e!4231409 () Bool)

(assert (=> d!2197558 (= (matchZipper!3017 lt!2522148 (t!381730 s!7408)) e!4231409)))

(declare-fun b!7038780 () Bool)

(assert (=> b!7038780 (= e!4231409 (nullableZipper!2590 lt!2522148))))

(declare-fun b!7038781 () Bool)

(assert (=> b!7038781 (= e!4231409 (matchZipper!3017 (derivationStepZipper!2933 lt!2522148 (head!14279 (t!381730 s!7408))) (tail!13575 (t!381730 s!7408))))))

(assert (= (and d!2197558 c!1309981) b!7038780))

(assert (= (and d!2197558 (not c!1309981)) b!7038781))

(assert (=> d!2197558 m!7748966))

(declare-fun m!7749194 () Bool)

(assert (=> b!7038780 m!7749194))

(assert (=> b!7038781 m!7748970))

(assert (=> b!7038781 m!7748970))

(declare-fun m!7749196 () Bool)

(assert (=> b!7038781 m!7749196))

(assert (=> b!7038781 m!7748974))

(assert (=> b!7038781 m!7749196))

(assert (=> b!7038781 m!7748974))

(declare-fun m!7749198 () Bool)

(assert (=> b!7038781 m!7749198))

(assert (=> b!7038381 d!2197558))

(declare-fun d!2197560 () Bool)

(declare-fun c!1309982 () Bool)

(assert (=> d!2197560 (= c!1309982 (isEmpty!39577 (t!381730 s!7408)))))

(declare-fun e!4231410 () Bool)

(assert (=> d!2197560 (= (matchZipper!3017 lt!2522152 (t!381730 s!7408)) e!4231410)))

(declare-fun b!7038782 () Bool)

(assert (=> b!7038782 (= e!4231410 (nullableZipper!2590 lt!2522152))))

(declare-fun b!7038783 () Bool)

(assert (=> b!7038783 (= e!4231410 (matchZipper!3017 (derivationStepZipper!2933 lt!2522152 (head!14279 (t!381730 s!7408))) (tail!13575 (t!381730 s!7408))))))

(assert (= (and d!2197560 c!1309982) b!7038782))

(assert (= (and d!2197560 (not c!1309982)) b!7038783))

(assert (=> d!2197560 m!7748966))

(declare-fun m!7749200 () Bool)

(assert (=> b!7038782 m!7749200))

(assert (=> b!7038783 m!7748970))

(assert (=> b!7038783 m!7748970))

(declare-fun m!7749202 () Bool)

(assert (=> b!7038783 m!7749202))

(assert (=> b!7038783 m!7748974))

(assert (=> b!7038783 m!7749202))

(assert (=> b!7038783 m!7748974))

(declare-fun m!7749204 () Bool)

(assert (=> b!7038783 m!7749204))

(assert (=> b!7038381 d!2197560))

(declare-fun d!2197562 () Bool)

(declare-fun c!1309983 () Bool)

(assert (=> d!2197562 (= c!1309983 (isEmpty!39577 (t!381730 s!7408)))))

(declare-fun e!4231411 () Bool)

(assert (=> d!2197562 (= (matchZipper!3017 lt!2522142 (t!381730 s!7408)) e!4231411)))

(declare-fun b!7038784 () Bool)

(assert (=> b!7038784 (= e!4231411 (nullableZipper!2590 lt!2522142))))

(declare-fun b!7038785 () Bool)

(assert (=> b!7038785 (= e!4231411 (matchZipper!3017 (derivationStepZipper!2933 lt!2522142 (head!14279 (t!381730 s!7408))) (tail!13575 (t!381730 s!7408))))))

(assert (= (and d!2197562 c!1309983) b!7038784))

(assert (= (and d!2197562 (not c!1309983)) b!7038785))

(assert (=> d!2197562 m!7748966))

(declare-fun m!7749206 () Bool)

(assert (=> b!7038784 m!7749206))

(assert (=> b!7038785 m!7748970))

(assert (=> b!7038785 m!7748970))

(declare-fun m!7749208 () Bool)

(assert (=> b!7038785 m!7749208))

(assert (=> b!7038785 m!7748974))

(assert (=> b!7038785 m!7749208))

(assert (=> b!7038785 m!7748974))

(declare-fun m!7749210 () Bool)

(assert (=> b!7038785 m!7749210))

(assert (=> b!7038381 d!2197562))

(declare-fun e!4231412 () Bool)

(declare-fun d!2197564 () Bool)

(assert (=> d!2197564 (= (matchZipper!3017 ((_ map or) lt!2522142 lt!2522154) (t!381730 s!7408)) e!4231412)))

(declare-fun res!2873301 () Bool)

(assert (=> d!2197564 (=> res!2873301 e!4231412)))

(assert (=> d!2197564 (= res!2873301 (matchZipper!3017 lt!2522142 (t!381730 s!7408)))))

(declare-fun lt!2522270 () Unit!161634)

(assert (=> d!2197564 (= lt!2522270 (choose!53380 lt!2522142 lt!2522154 (t!381730 s!7408)))))

(assert (=> d!2197564 (= (lemmaZipperConcatMatchesSameAsBothZippers!1550 lt!2522142 lt!2522154 (t!381730 s!7408)) lt!2522270)))

(declare-fun b!7038786 () Bool)

(assert (=> b!7038786 (= e!4231412 (matchZipper!3017 lt!2522154 (t!381730 s!7408)))))

(assert (= (and d!2197564 (not res!2873301)) b!7038786))

(declare-fun m!7749212 () Bool)

(assert (=> d!2197564 m!7749212))

(assert (=> d!2197564 m!7748462))

(declare-fun m!7749214 () Bool)

(assert (=> d!2197564 m!7749214))

(assert (=> b!7038786 m!7748470))

(assert (=> b!7038381 d!2197564))

(assert (=> b!7038381 d!2197510))

(declare-fun d!2197566 () Bool)

(declare-fun c!1309984 () Bool)

(assert (=> d!2197566 (= c!1309984 (isEmpty!39577 lt!2522151))))

(declare-fun e!4231413 () Bool)

(assert (=> d!2197566 (= (matchZipper!3017 lt!2522118 lt!2522151) e!4231413)))

(declare-fun b!7038787 () Bool)

(assert (=> b!7038787 (= e!4231413 (nullableZipper!2590 lt!2522118))))

(declare-fun b!7038788 () Bool)

(assert (=> b!7038788 (= e!4231413 (matchZipper!3017 (derivationStepZipper!2933 lt!2522118 (head!14279 lt!2522151)) (tail!13575 lt!2522151)))))

(assert (= (and d!2197566 c!1309984) b!7038787))

(assert (= (and d!2197566 (not c!1309984)) b!7038788))

(assert (=> d!2197566 m!7748986))

(declare-fun m!7749216 () Bool)

(assert (=> b!7038787 m!7749216))

(assert (=> b!7038788 m!7748990))

(assert (=> b!7038788 m!7748990))

(declare-fun m!7749218 () Bool)

(assert (=> b!7038788 m!7749218))

(assert (=> b!7038788 m!7748994))

(assert (=> b!7038788 m!7749218))

(assert (=> b!7038788 m!7748994))

(declare-fun m!7749220 () Bool)

(assert (=> b!7038788 m!7749220))

(assert (=> b!7038382 d!2197566))

(assert (=> b!7038383 d!2197412))

(declare-fun d!2197568 () Bool)

(declare-fun e!4231416 () Bool)

(assert (=> d!2197568 e!4231416))

(declare-fun res!2873304 () Bool)

(assert (=> d!2197568 (=> (not res!2873304) (not e!4231416))))

(declare-fun lt!2522273 () List!67961)

(declare-fun noDuplicate!2637 (List!67961) Bool)

(assert (=> d!2197568 (= res!2873304 (noDuplicate!2637 lt!2522273))))

(declare-fun choose!53385 ((InoxSet Context!12946)) List!67961)

(assert (=> d!2197568 (= lt!2522273 (choose!53385 z1!570))))

(assert (=> d!2197568 (= (toList!10820 z1!570) lt!2522273)))

(declare-fun b!7038791 () Bool)

(declare-fun content!13563 (List!67961) (InoxSet Context!12946))

(assert (=> b!7038791 (= e!4231416 (= (content!13563 lt!2522273) z1!570))))

(assert (= (and d!2197568 res!2873304) b!7038791))

(declare-fun m!7749222 () Bool)

(assert (=> d!2197568 m!7749222))

(declare-fun m!7749224 () Bool)

(assert (=> d!2197568 m!7749224))

(declare-fun m!7749226 () Bool)

(assert (=> b!7038791 m!7749226))

(assert (=> b!7038383 d!2197568))

(assert (=> b!7038383 d!2197502))

(declare-fun d!2197570 () Bool)

(declare-fun lt!2522276 () Int)

(assert (=> d!2197570 (>= lt!2522276 0)))

(declare-fun e!4231419 () Int)

(assert (=> d!2197570 (= lt!2522276 e!4231419)))

(declare-fun c!1309988 () Bool)

(assert (=> d!2197570 (= c!1309988 ((_ is Cons!67836) (exprs!6973 lt!2522140)))))

(assert (=> d!2197570 (= (contextDepthTotal!512 lt!2522140) lt!2522276)))

(declare-fun b!7038796 () Bool)

(declare-fun regexDepthTotal!312 (Regex!17477) Int)

(assert (=> b!7038796 (= e!4231419 (+ (regexDepthTotal!312 (h!74284 (exprs!6973 lt!2522140))) (contextDepthTotal!512 (Context!12947 (t!381731 (exprs!6973 lt!2522140))))))))

(declare-fun b!7038797 () Bool)

(assert (=> b!7038797 (= e!4231419 1)))

(assert (= (and d!2197570 c!1309988) b!7038796))

(assert (= (and d!2197570 (not c!1309988)) b!7038797))

(declare-fun m!7749228 () Bool)

(assert (=> b!7038796 m!7749228))

(declare-fun m!7749230 () Bool)

(assert (=> b!7038796 m!7749230))

(assert (=> b!7038383 d!2197570))

(declare-fun d!2197572 () Bool)

(declare-fun choose!53386 ((InoxSet Context!12946) Int) (InoxSet Context!12946))

(assert (=> d!2197572 (= (map!15783 lt!2522146 lambda!415988) (choose!53386 lt!2522146 lambda!415988))))

(declare-fun bs!1873001 () Bool)

(assert (= bs!1873001 d!2197572))

(declare-fun m!7749232 () Bool)

(assert (=> bs!1873001 m!7749232))

(assert (=> b!7038383 d!2197572))

(declare-fun d!2197574 () Bool)

(assert (=> d!2197574 (= (map!15783 lt!2522146 lambda!415988) (store ((as const (Array Context!12946 Bool)) false) (dynLambda!27425 lambda!415988 lt!2522140) true))))

(declare-fun lt!2522279 () Unit!161634)

(declare-fun choose!53387 ((InoxSet Context!12946) Context!12946 Int) Unit!161634)

(assert (=> d!2197574 (= lt!2522279 (choose!53387 lt!2522146 lt!2522140 lambda!415988))))

(assert (=> d!2197574 (= lt!2522146 (store ((as const (Array Context!12946 Bool)) false) lt!2522140 true))))

(assert (=> d!2197574 (= (lemmaMapOnSingletonSet!388 lt!2522146 lt!2522140 lambda!415988) lt!2522279)))

(declare-fun b_lambda!267165 () Bool)

(assert (=> (not b_lambda!267165) (not d!2197574)))

(declare-fun bs!1873002 () Bool)

(assert (= bs!1873002 d!2197574))

(declare-fun m!7749234 () Bool)

(assert (=> bs!1873002 m!7749234))

(declare-fun m!7749236 () Bool)

(assert (=> bs!1873002 m!7749236))

(assert (=> bs!1873002 m!7748528))

(assert (=> bs!1873002 m!7748540))

(assert (=> bs!1873002 m!7749236))

(declare-fun m!7749238 () Bool)

(assert (=> bs!1873002 m!7749238))

(assert (=> b!7038383 d!2197574))

(assert (=> b!7038383 d!2197510))

(declare-fun d!2197576 () Bool)

(declare-fun lt!2522280 () Int)

(assert (=> d!2197576 (>= lt!2522280 0)))

(declare-fun e!4231420 () Int)

(assert (=> d!2197576 (= lt!2522280 e!4231420)))

(declare-fun c!1309989 () Bool)

(assert (=> d!2197576 (= c!1309989 ((_ is Cons!67836) (exprs!6973 lt!2522131)))))

(assert (=> d!2197576 (= (contextDepthTotal!512 lt!2522131) lt!2522280)))

(declare-fun b!7038798 () Bool)

(assert (=> b!7038798 (= e!4231420 (+ (regexDepthTotal!312 (h!74284 (exprs!6973 lt!2522131))) (contextDepthTotal!512 (Context!12947 (t!381731 (exprs!6973 lt!2522131))))))))

(declare-fun b!7038799 () Bool)

(assert (=> b!7038799 (= e!4231420 1)))

(assert (= (and d!2197576 c!1309989) b!7038798))

(assert (= (and d!2197576 (not c!1309989)) b!7038799))

(declare-fun m!7749240 () Bool)

(assert (=> b!7038798 m!7749240))

(declare-fun m!7749242 () Bool)

(assert (=> b!7038798 m!7749242))

(assert (=> b!7038383 d!2197576))

(declare-fun d!2197578 () Bool)

(declare-fun lt!2522281 () Int)

(assert (=> d!2197578 (>= lt!2522281 0)))

(declare-fun e!4231421 () Int)

(assert (=> d!2197578 (= lt!2522281 e!4231421)))

(declare-fun c!1309990 () Bool)

(assert (=> d!2197578 (= c!1309990 ((_ is Cons!67837) lt!2522116))))

(assert (=> d!2197578 (= (zipperDepthTotal!540 lt!2522116) lt!2522281)))

(declare-fun b!7038800 () Bool)

(assert (=> b!7038800 (= e!4231421 (+ (contextDepthTotal!512 (h!74285 lt!2522116)) (zipperDepthTotal!540 (t!381732 lt!2522116))))))

(declare-fun b!7038801 () Bool)

(assert (=> b!7038801 (= e!4231421 0)))

(assert (= (and d!2197578 c!1309990) b!7038800))

(assert (= (and d!2197578 (not c!1309990)) b!7038801))

(declare-fun m!7749244 () Bool)

(assert (=> b!7038800 m!7749244))

(declare-fun m!7749246 () Bool)

(assert (=> b!7038800 m!7749246))

(assert (=> b!7038383 d!2197578))

(declare-fun d!2197580 () Bool)

(assert (=> d!2197580 (<= (contextDepthTotal!512 lt!2522131) (zipperDepthTotal!540 lt!2522116))))

(declare-fun lt!2522284 () Unit!161634)

(declare-fun choose!53388 (List!67961 Context!12946) Unit!161634)

(assert (=> d!2197580 (= lt!2522284 (choose!53388 lt!2522116 lt!2522131))))

(declare-fun contains!20466 (List!67961 Context!12946) Bool)

(assert (=> d!2197580 (contains!20466 lt!2522116 lt!2522131)))

(assert (=> d!2197580 (= (lemmaTotalDepthZipperLargerThanOfAnyContext!80 lt!2522116 lt!2522131) lt!2522284)))

(declare-fun bs!1873003 () Bool)

(assert (= bs!1873003 d!2197580))

(assert (=> bs!1873003 m!7748524))

(assert (=> bs!1873003 m!7748530))

(declare-fun m!7749248 () Bool)

(assert (=> bs!1873003 m!7749248))

(declare-fun m!7749250 () Bool)

(assert (=> bs!1873003 m!7749250))

(assert (=> b!7038383 d!2197580))

(assert (=> b!7038383 d!2197504))

(assert (=> b!7038383 d!2197518))

(assert (=> b!7038385 d!2197512))

(declare-fun b!7038813 () Bool)

(declare-fun e!4231426 () Bool)

(declare-fun lt!2522287 () List!67959)

(assert (=> b!7038813 (= e!4231426 (or (not (= (_2!37353 lt!2522115) Nil!67835)) (= lt!2522287 (_1!37353 lt!2522115))))))

(declare-fun b!7038811 () Bool)

(declare-fun e!4231427 () List!67959)

(assert (=> b!7038811 (= e!4231427 (Cons!67835 (h!74283 (_1!37353 lt!2522115)) (++!15534 (t!381730 (_1!37353 lt!2522115)) (_2!37353 lt!2522115))))))

(declare-fun d!2197582 () Bool)

(assert (=> d!2197582 e!4231426))

(declare-fun res!2873310 () Bool)

(assert (=> d!2197582 (=> (not res!2873310) (not e!4231426))))

(declare-fun content!13564 (List!67959) (InoxSet C!35224))

(assert (=> d!2197582 (= res!2873310 (= (content!13564 lt!2522287) ((_ map or) (content!13564 (_1!37353 lt!2522115)) (content!13564 (_2!37353 lt!2522115)))))))

(assert (=> d!2197582 (= lt!2522287 e!4231427)))

(declare-fun c!1309994 () Bool)

(assert (=> d!2197582 (= c!1309994 ((_ is Nil!67835) (_1!37353 lt!2522115)))))

(assert (=> d!2197582 (= (++!15534 (_1!37353 lt!2522115) (_2!37353 lt!2522115)) lt!2522287)))

(declare-fun b!7038810 () Bool)

(assert (=> b!7038810 (= e!4231427 (_2!37353 lt!2522115))))

(declare-fun b!7038812 () Bool)

(declare-fun res!2873309 () Bool)

(assert (=> b!7038812 (=> (not res!2873309) (not e!4231426))))

(declare-fun size!41083 (List!67959) Int)

(assert (=> b!7038812 (= res!2873309 (= (size!41083 lt!2522287) (+ (size!41083 (_1!37353 lt!2522115)) (size!41083 (_2!37353 lt!2522115)))))))

(assert (= (and d!2197582 c!1309994) b!7038810))

(assert (= (and d!2197582 (not c!1309994)) b!7038811))

(assert (= (and d!2197582 res!2873310) b!7038812))

(assert (= (and b!7038812 res!2873309) b!7038813))

(declare-fun m!7749252 () Bool)

(assert (=> b!7038811 m!7749252))

(declare-fun m!7749254 () Bool)

(assert (=> d!2197582 m!7749254))

(declare-fun m!7749256 () Bool)

(assert (=> d!2197582 m!7749256))

(declare-fun m!7749258 () Bool)

(assert (=> d!2197582 m!7749258))

(declare-fun m!7749260 () Bool)

(assert (=> b!7038812 m!7749260))

(declare-fun m!7749262 () Bool)

(assert (=> b!7038812 m!7749262))

(declare-fun m!7749264 () Bool)

(assert (=> b!7038812 m!7749264))

(assert (=> b!7038366 d!2197582))

(declare-fun d!2197584 () Bool)

(assert (=> d!2197584 (= (isEmpty!39577 (_1!37353 lt!2522115)) ((_ is Nil!67835) (_1!37353 lt!2522115)))))

(assert (=> b!7038365 d!2197584))

(assert (=> b!7038367 d!2197456))

(assert (=> b!7038367 d!2197510))

(declare-fun bs!1873004 () Bool)

(declare-fun d!2197586 () Bool)

(assert (= bs!1873004 (and d!2197586 b!7038386)))

(declare-fun lambda!416029 () Int)

(assert (=> bs!1873004 (= lambda!416029 lambda!415987)))

(assert (=> d!2197586 true))

(assert (=> d!2197586 (exists!3413 lt!2522133 lambda!416029)))

(declare-fun lt!2522290 () Unit!161634)

(declare-fun choose!53389 (List!67961 List!67959) Unit!161634)

(assert (=> d!2197586 (= lt!2522290 (choose!53389 lt!2522133 s!7408))))

(assert (=> d!2197586 (matchZipper!3017 (content!13563 lt!2522133) s!7408)))

(assert (=> d!2197586 (= (lemmaZipperMatchesExistsMatchingContext!416 lt!2522133 s!7408) lt!2522290)))

(declare-fun bs!1873005 () Bool)

(assert (= bs!1873005 d!2197586))

(declare-fun m!7749266 () Bool)

(assert (=> bs!1873005 m!7749266))

(declare-fun m!7749268 () Bool)

(assert (=> bs!1873005 m!7749268))

(declare-fun m!7749270 () Bool)

(assert (=> bs!1873005 m!7749270))

(assert (=> bs!1873005 m!7749270))

(declare-fun m!7749272 () Bool)

(assert (=> bs!1873005 m!7749272))

(assert (=> b!7038386 d!2197586))

(declare-fun d!2197588 () Bool)

(declare-fun e!4231428 () Bool)

(assert (=> d!2197588 e!4231428))

(declare-fun res!2873311 () Bool)

(assert (=> d!2197588 (=> (not res!2873311) (not e!4231428))))

(declare-fun lt!2522291 () List!67961)

(assert (=> d!2197588 (= res!2873311 (noDuplicate!2637 lt!2522291))))

(assert (=> d!2197588 (= lt!2522291 (choose!53385 lt!2522119))))

(assert (=> d!2197588 (= (toList!10820 lt!2522119) lt!2522291)))

(declare-fun b!7038814 () Bool)

(assert (=> b!7038814 (= e!4231428 (= (content!13563 lt!2522291) lt!2522119))))

(assert (= (and d!2197588 res!2873311) b!7038814))

(declare-fun m!7749274 () Bool)

(assert (=> d!2197588 m!7749274))

(declare-fun m!7749276 () Bool)

(assert (=> d!2197588 m!7749276))

(declare-fun m!7749278 () Bool)

(assert (=> b!7038814 m!7749278))

(assert (=> b!7038386 d!2197588))

(declare-fun d!2197590 () Bool)

(declare-fun e!4231431 () Bool)

(assert (=> d!2197590 e!4231431))

(declare-fun res!2873314 () Bool)

(assert (=> d!2197590 (=> (not res!2873314) (not e!4231431))))

(declare-fun lt!2522294 () Context!12946)

(declare-fun dynLambda!27426 (Int Context!12946) Bool)

(assert (=> d!2197590 (= res!2873314 (dynLambda!27426 lambda!415987 lt!2522294))))

(declare-fun getWitness!1494 (List!67961 Int) Context!12946)

(assert (=> d!2197590 (= lt!2522294 (getWitness!1494 (toList!10820 lt!2522119) lambda!415987))))

(declare-fun exists!3415 ((InoxSet Context!12946) Int) Bool)

(assert (=> d!2197590 (exists!3415 lt!2522119 lambda!415987)))

(assert (=> d!2197590 (= (getWitness!1492 lt!2522119 lambda!415987) lt!2522294)))

(declare-fun b!7038817 () Bool)

(assert (=> b!7038817 (= e!4231431 (select lt!2522119 lt!2522294))))

(assert (= (and d!2197590 res!2873314) b!7038817))

(declare-fun b_lambda!267167 () Bool)

(assert (=> (not b_lambda!267167) (not d!2197590)))

(declare-fun m!7749280 () Bool)

(assert (=> d!2197590 m!7749280))

(assert (=> d!2197590 m!7748564))

(assert (=> d!2197590 m!7748564))

(declare-fun m!7749282 () Bool)

(assert (=> d!2197590 m!7749282))

(declare-fun m!7749284 () Bool)

(assert (=> d!2197590 m!7749284))

(declare-fun m!7749286 () Bool)

(assert (=> b!7038817 m!7749286))

(assert (=> b!7038386 d!2197590))

(declare-fun d!2197592 () Bool)

(declare-fun c!1309997 () Bool)

(assert (=> d!2197592 (= c!1309997 (isEmpty!39577 s!7408))))

(declare-fun e!4231432 () Bool)

(assert (=> d!2197592 (= (matchZipper!3017 lt!2522117 s!7408) e!4231432)))

(declare-fun b!7038818 () Bool)

(assert (=> b!7038818 (= e!4231432 (nullableZipper!2590 lt!2522117))))

(declare-fun b!7038819 () Bool)

(assert (=> b!7038819 (= e!4231432 (matchZipper!3017 (derivationStepZipper!2933 lt!2522117 (head!14279 s!7408)) (tail!13575 s!7408)))))

(assert (= (and d!2197592 c!1309997) b!7038818))

(assert (= (and d!2197592 (not c!1309997)) b!7038819))

(assert (=> d!2197592 m!7749162))

(declare-fun m!7749288 () Bool)

(assert (=> b!7038818 m!7749288))

(assert (=> b!7038819 m!7749166))

(assert (=> b!7038819 m!7749166))

(declare-fun m!7749290 () Bool)

(assert (=> b!7038819 m!7749290))

(assert (=> b!7038819 m!7749170))

(assert (=> b!7038819 m!7749290))

(assert (=> b!7038819 m!7749170))

(declare-fun m!7749292 () Bool)

(assert (=> b!7038819 m!7749292))

(assert (=> b!7038386 d!2197592))

(declare-fun bs!1873006 () Bool)

(declare-fun d!2197594 () Bool)

(assert (= bs!1873006 (and d!2197594 b!7038386)))

(declare-fun lambda!416032 () Int)

(assert (=> bs!1873006 (not (= lambda!416032 lambda!415987))))

(declare-fun bs!1873007 () Bool)

(assert (= bs!1873007 (and d!2197594 d!2197586)))

(assert (=> bs!1873007 (not (= lambda!416032 lambda!416029))))

(assert (=> d!2197594 true))

(declare-fun order!28195 () Int)

(declare-fun dynLambda!27427 (Int Int) Int)

(assert (=> d!2197594 (< (dynLambda!27427 order!28195 lambda!415987) (dynLambda!27427 order!28195 lambda!416032))))

(declare-fun forall!16399 (List!67961 Int) Bool)

(assert (=> d!2197594 (= (exists!3413 lt!2522133 lambda!415987) (not (forall!16399 lt!2522133 lambda!416032)))))

(declare-fun bs!1873008 () Bool)

(assert (= bs!1873008 d!2197594))

(declare-fun m!7749294 () Bool)

(assert (=> bs!1873008 m!7749294))

(assert (=> b!7038386 d!2197594))

(declare-fun b!7038826 () Bool)

(declare-fun e!4231435 () Bool)

(declare-fun tp!1937119 () Bool)

(declare-fun tp!1937120 () Bool)

(assert (=> b!7038826 (= e!4231435 (and tp!1937119 tp!1937120))))

(assert (=> b!7038373 (= tp!1937095 e!4231435)))

(assert (= (and b!7038373 ((_ is Cons!67836) (exprs!6973 ct2!306))) b!7038826))

(declare-fun condSetEmpty!49288 () Bool)

(assert (=> setNonEmpty!49282 (= condSetEmpty!49288 (= setRest!49282 ((as const (Array Context!12946 Bool)) false)))))

(declare-fun setRes!49288 () Bool)

(assert (=> setNonEmpty!49282 (= tp!1937094 setRes!49288)))

(declare-fun setIsEmpty!49288 () Bool)

(assert (=> setIsEmpty!49288 setRes!49288))

(declare-fun tp!1937126 () Bool)

(declare-fun e!4231438 () Bool)

(declare-fun setElem!49288 () Context!12946)

(declare-fun setNonEmpty!49288 () Bool)

(assert (=> setNonEmpty!49288 (= setRes!49288 (and tp!1937126 (inv!86551 setElem!49288) e!4231438))))

(declare-fun setRest!49288 () (InoxSet Context!12946))

(assert (=> setNonEmpty!49288 (= setRest!49282 ((_ map or) (store ((as const (Array Context!12946 Bool)) false) setElem!49288 true) setRest!49288))))

(declare-fun b!7038831 () Bool)

(declare-fun tp!1937125 () Bool)

(assert (=> b!7038831 (= e!4231438 tp!1937125)))

(assert (= (and setNonEmpty!49282 condSetEmpty!49288) setIsEmpty!49288))

(assert (= (and setNonEmpty!49282 (not condSetEmpty!49288)) setNonEmpty!49288))

(assert (= setNonEmpty!49288 b!7038831))

(declare-fun m!7749296 () Bool)

(assert (=> setNonEmpty!49288 m!7749296))

(declare-fun b!7038832 () Bool)

(declare-fun e!4231439 () Bool)

(declare-fun tp!1937127 () Bool)

(declare-fun tp!1937128 () Bool)

(assert (=> b!7038832 (= e!4231439 (and tp!1937127 tp!1937128))))

(assert (=> b!7038395 (= tp!1937097 e!4231439)))

(assert (= (and b!7038395 ((_ is Cons!67836) (exprs!6973 setElem!49282))) b!7038832))

(declare-fun b!7038837 () Bool)

(declare-fun e!4231442 () Bool)

(declare-fun tp!1937131 () Bool)

(assert (=> b!7038837 (= e!4231442 (and tp_is_empty!44179 tp!1937131))))

(assert (=> b!7038372 (= tp!1937096 e!4231442)))

(assert (= (and b!7038372 ((_ is Cons!67835) (t!381730 s!7408))) b!7038837))

(declare-fun b_lambda!267169 () Bool)

(assert (= b_lambda!267167 (or b!7038386 b_lambda!267169)))

(declare-fun bs!1873009 () Bool)

(declare-fun d!2197596 () Bool)

(assert (= bs!1873009 (and d!2197596 b!7038386)))

(assert (=> bs!1873009 (= (dynLambda!27426 lambda!415987 lt!2522294) (matchZipper!3017 (store ((as const (Array Context!12946 Bool)) false) lt!2522294 true) s!7408))))

(declare-fun m!7749298 () Bool)

(assert (=> bs!1873009 m!7749298))

(assert (=> bs!1873009 m!7749298))

(declare-fun m!7749300 () Bool)

(assert (=> bs!1873009 m!7749300))

(assert (=> d!2197590 d!2197596))

(declare-fun b_lambda!267171 () Bool)

(assert (= b_lambda!267157 (or b!7038392 b_lambda!267171)))

(declare-fun bs!1873010 () Bool)

(declare-fun d!2197598 () Bool)

(assert (= bs!1873010 (and d!2197598 b!7038392)))

(declare-fun lt!2522295 () Unit!161634)

(assert (=> bs!1873010 (= lt!2522295 (lemmaConcatPreservesForall!798 (exprs!6973 lt!2522247) (exprs!6973 ct2!306) lambda!415989))))

(assert (=> bs!1873010 (= (dynLambda!27425 lambda!415988 lt!2522247) (Context!12947 (++!15535 (exprs!6973 lt!2522247) (exprs!6973 ct2!306))))))

(declare-fun m!7749302 () Bool)

(assert (=> bs!1873010 m!7749302))

(declare-fun m!7749304 () Bool)

(assert (=> bs!1873010 m!7749304))

(assert (=> d!2197498 d!2197598))

(declare-fun b_lambda!267173 () Bool)

(assert (= b_lambda!267163 (or b!7038390 b_lambda!267173)))

(declare-fun bs!1873011 () Bool)

(declare-fun d!2197600 () Bool)

(assert (= bs!1873011 (and d!2197600 b!7038390)))

(assert (=> bs!1873011 (= (dynLambda!27424 lambda!415990 lt!2522122) (derivationStepZipperUp!2087 lt!2522122 (h!74283 s!7408)))))

(assert (=> bs!1873011 m!7748442))

(assert (=> d!2197554 d!2197600))

(declare-fun b_lambda!267175 () Bool)

(assert (= b_lambda!267161 (or b!7038390 b_lambda!267175)))

(declare-fun bs!1873012 () Bool)

(declare-fun d!2197602 () Bool)

(assert (= bs!1873012 (and d!2197602 b!7038390)))

(assert (=> bs!1873012 (= (dynLambda!27424 lambda!415990 lt!2522131) (derivationStepZipperUp!2087 lt!2522131 (h!74283 s!7408)))))

(assert (=> bs!1873012 m!7748454))

(assert (=> d!2197528 d!2197602))

(declare-fun b_lambda!267177 () Bool)

(assert (= b_lambda!267159 (or b!7038390 b_lambda!267177)))

(declare-fun bs!1873013 () Bool)

(declare-fun d!2197604 () Bool)

(assert (= bs!1873013 (and d!2197604 b!7038390)))

(assert (=> bs!1873013 (= (dynLambda!27424 lambda!415990 lt!2522140) (derivationStepZipperUp!2087 lt!2522140 (h!74283 s!7408)))))

(assert (=> bs!1873013 m!7748510))

(assert (=> d!2197502 d!2197604))

(declare-fun b_lambda!267179 () Bool)

(assert (= b_lambda!267165 (or b!7038392 b_lambda!267179)))

(declare-fun bs!1873014 () Bool)

(declare-fun d!2197606 () Bool)

(assert (= bs!1873014 (and d!2197606 b!7038392)))

(declare-fun lt!2522296 () Unit!161634)

(assert (=> bs!1873014 (= lt!2522296 (lemmaConcatPreservesForall!798 (exprs!6973 lt!2522140) (exprs!6973 ct2!306) lambda!415989))))

(assert (=> bs!1873014 (= (dynLambda!27425 lambda!415988 lt!2522140) (Context!12947 (++!15535 (exprs!6973 lt!2522140) (exprs!6973 ct2!306))))))

(declare-fun m!7749306 () Bool)

(assert (=> bs!1873014 m!7749306))

(declare-fun m!7749308 () Bool)

(assert (=> bs!1873014 m!7749308))

(assert (=> d!2197574 d!2197606))

(declare-fun b_lambda!267181 () Bool)

(assert (= b_lambda!267155 (or b!7038390 b_lambda!267181)))

(declare-fun bs!1873015 () Bool)

(declare-fun d!2197608 () Bool)

(assert (= bs!1873015 (and d!2197608 b!7038390)))

(assert (=> bs!1873015 (= (dynLambda!27424 lambda!415990 lt!2522162) (derivationStepZipperUp!2087 lt!2522162 (h!74283 s!7408)))))

(assert (=> bs!1873015 m!7748574))

(assert (=> d!2197490 d!2197608))

(check-sat (not d!2197500) (not d!2197556) (not d!2197550) (not b!7038762) (not b!7038787) (not bm!639298) (not b_lambda!267175) (not b!7038576) (not bs!1873011) (not d!2197594) (not b!7038739) (not d!2197522) (not b!7038673) (not d!2197552) (not b!7038786) (not b!7038798) (not bs!1873010) (not b!7038713) (not b!7038778) (not d!2197568) (not b!7038674) (not b_lambda!267173) (not bs!1873012) (not d!2197490) (not d!2197510) (not b!7038768) (not b!7038837) (not b!7038711) (not d!2197582) (not d!2197480) (not bm!639283) (not b!7038764) (not d!2197580) (not b!7038777) (not bm!639303) (not d!2197544) (not d!2197504) (not d!2197456) (not bm!639295) (not d!2197528) (not bs!1873015) (not b!7038785) (not b!7038683) (not bm!639302) (not d!2197502) (not b!7038767) (not b!7038818) (not b!7038832) (not d!2197472) (not d!2197488) (not bm!639287) (not b!7038634) (not b!7038714) (not d!2197548) (not b!7038700) (not d!2197534) (not b!7038710) (not b!7038784) (not b!7038796) (not d!2197560) (not b!7038766) (not b!7038814) (not b!7038577) (not d!2197532) (not b!7038719) (not d!2197496) (not d!2197478) (not b!7038690) (not b!7038826) (not d!2197536) (not b!7038819) (not b!7038776) (not b!7038701) (not d!2197484) (not b_lambda!267177) (not d!2197498) (not b!7038723) (not b!7038675) (not b!7038740) (not b_lambda!267179) (not b!7038677) (not b!7038722) (not d!2197572) tp_is_empty!44179 (not b!7038720) (not d!2197566) (not d!2197512) (not bs!1873013) (not b!7038689) (not b!7038791) (not b!7038678) (not b!7038682) (not b!7038715) (not d!2197518) (not b!7038780) (not d!2197564) (not bs!1873009) (not bs!1873014) (not b!7038779) (not b!7038732) (not d!2197554) (not d!2197588) (not d!2197542) (not d!2197526) (not d!2197514) (not d!2197586) (not d!2197476) (not d!2197538) (not d!2197574) (not d!2197546) (not b!7038774) (not d!2197410) (not bm!639297) (not b_lambda!267181) (not b!7038781) (not b_lambda!267171) (not b!7038811) (not d!2197492) (not b!7038783) (not bm!639304) (not b!7038676) (not b!7038800) (not d!2197590) (not bm!639296) (not d!2197562) (not b!7038831) (not b!7038712) (not d!2197558) (not b!7038769) (not b!7038782) (not b!7038681) (not b!7038763) (not setNonEmpty!49288) (not bm!639270) (not d!2197592) (not bm!639288) (not b_lambda!267169) (not b!7038788) (not b!7038761) (not b!7038812))
(check-sat)
