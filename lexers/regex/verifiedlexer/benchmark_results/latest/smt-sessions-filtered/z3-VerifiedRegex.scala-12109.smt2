; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!679800 () Bool)

(assert start!679800)

(declare-fun b!7033626 () Bool)

(assert (=> b!7033626 true))

(declare-fun b!7033613 () Bool)

(assert (=> b!7033613 true))

(declare-fun b!7033630 () Bool)

(assert (=> b!7033630 true))

(declare-fun bs!1871156 () Bool)

(declare-fun b!7033615 () Bool)

(assert (= bs!1871156 (and b!7033615 b!7033626)))

(declare-fun lambda!414893 () Int)

(declare-fun lambda!414889 () Int)

(assert (=> bs!1871156 (not (= lambda!414893 lambda!414889))))

(declare-fun b!7033601 () Bool)

(declare-fun e!4228322 () Bool)

(declare-fun e!4228321 () Bool)

(assert (=> b!7033601 (= e!4228322 e!4228321)))

(declare-fun res!2871213 () Bool)

(assert (=> b!7033601 (=> res!2871213 e!4228321)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!35200 0))(
  ( (C!35201 (val!27302 Int)) )
))
(declare-datatypes ((Regex!17465 0))(
  ( (ElementMatch!17465 (c!1308378 C!35200)) (Concat!26310 (regOne!35442 Regex!17465) (regTwo!35442 Regex!17465)) (EmptyExpr!17465) (Star!17465 (reg!17794 Regex!17465)) (EmptyLang!17465) (Union!17465 (regOne!35443 Regex!17465) (regTwo!35443 Regex!17465)) )
))
(declare-datatypes ((List!67923 0))(
  ( (Nil!67799) (Cons!67799 (h!74247 Regex!17465) (t!381690 List!67923)) )
))
(declare-datatypes ((Context!12922 0))(
  ( (Context!12923 (exprs!6961 List!67923)) )
))
(declare-fun lt!2519173 () (InoxSet Context!12922))

(declare-datatypes ((List!67924 0))(
  ( (Nil!67800) (Cons!67800 (h!74248 C!35200) (t!381691 List!67924)) )
))
(declare-datatypes ((tuple2!68076 0))(
  ( (tuple2!68077 (_1!37341 List!67924) (_2!37341 List!67924)) )
))
(declare-fun lt!2519172 () tuple2!68076)

(declare-fun matchZipper!3005 ((InoxSet Context!12922) List!67924) Bool)

(assert (=> b!7033601 (= res!2871213 (not (matchZipper!3005 lt!2519173 (_1!37341 lt!2519172))))))

(declare-datatypes ((Option!16870 0))(
  ( (None!16869) (Some!16869 (v!53155 tuple2!68076)) )
))
(declare-fun lt!2519206 () Option!16870)

(declare-fun get!23753 (Option!16870) tuple2!68076)

(assert (=> b!7033601 (= lt!2519172 (get!23753 lt!2519206))))

(declare-fun isDefined!13571 (Option!16870) Bool)

(assert (=> b!7033601 (isDefined!13571 lt!2519206)))

(declare-fun lt!2519194 () (InoxSet Context!12922))

(declare-fun s!7408 () List!67924)

(declare-fun findConcatSeparationZippers!386 ((InoxSet Context!12922) (InoxSet Context!12922) List!67924 List!67924 List!67924) Option!16870)

(assert (=> b!7033601 (= lt!2519206 (findConcatSeparationZippers!386 lt!2519173 lt!2519194 Nil!67800 s!7408 s!7408))))

(declare-fun ct2!306 () Context!12922)

(assert (=> b!7033601 (= lt!2519194 (store ((as const (Array Context!12922 Bool)) false) ct2!306 true))))

(declare-datatypes ((Unit!161604 0))(
  ( (Unit!161605) )
))
(declare-fun lt!2519201 () Unit!161604)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!374 ((InoxSet Context!12922) Context!12922 List!67924) Unit!161604)

(assert (=> b!7033601 (= lt!2519201 (lemmaConcatZipperMatchesStringThenFindConcatDefined!374 lt!2519173 ct2!306 s!7408))))

(declare-fun b!7033602 () Bool)

(declare-fun res!2871221 () Bool)

(declare-fun e!4228325 () Bool)

(assert (=> b!7033602 (=> res!2871221 e!4228325)))

(declare-fun lt!2519165 () Bool)

(assert (=> b!7033602 (= res!2871221 (not lt!2519165))))

(declare-fun setIsEmpty!49178 () Bool)

(declare-fun setRes!49178 () Bool)

(assert (=> setIsEmpty!49178 setRes!49178))

(declare-fun b!7033603 () Bool)

(declare-fun e!4228324 () Bool)

(declare-fun e!4228313 () Bool)

(assert (=> b!7033603 (= e!4228324 e!4228313)))

(declare-fun res!2871224 () Bool)

(assert (=> b!7033603 (=> res!2871224 e!4228313)))

(declare-fun lt!2519203 () (InoxSet Context!12922))

(assert (=> b!7033603 (= res!2871224 (not (matchZipper!3005 lt!2519203 s!7408)))))

(declare-fun lt!2519204 () List!67923)

(declare-fun lambda!414891 () Int)

(declare-fun lt!2519198 () Unit!161604)

(declare-fun lemmaConcatPreservesForall!786 (List!67923 List!67923 Int) Unit!161604)

(assert (=> b!7033603 (= lt!2519198 (lemmaConcatPreservesForall!786 lt!2519204 (exprs!6961 ct2!306) lambda!414891))))

(declare-fun b!7033604 () Bool)

(declare-fun res!2871222 () Bool)

(declare-fun e!4228323 () Bool)

(assert (=> b!7033604 (=> res!2871222 e!4228323)))

(declare-fun lt!2519164 () Context!12922)

(declare-fun isEmpty!39544 (List!67923) Bool)

(assert (=> b!7033604 (= res!2871222 (isEmpty!39544 (exprs!6961 lt!2519164)))))

(declare-fun b!7033605 () Bool)

(declare-fun e!4228320 () Bool)

(declare-fun e!4228307 () Bool)

(assert (=> b!7033605 (= e!4228320 e!4228307)))

(declare-fun res!2871207 () Bool)

(assert (=> b!7033605 (=> res!2871207 e!4228307)))

(declare-fun lt!2519190 () (InoxSet Context!12922))

(declare-fun lt!2519170 () (InoxSet Context!12922))

(assert (=> b!7033605 (= res!2871207 (not (= lt!2519190 lt!2519170)))))

(declare-fun lt!2519179 () Context!12922)

(assert (=> b!7033605 (= lt!2519190 (store ((as const (Array Context!12922 Bool)) false) lt!2519179 true))))

(declare-fun lt!2519192 () Unit!161604)

(assert (=> b!7033605 (= lt!2519192 (lemmaConcatPreservesForall!786 (exprs!6961 lt!2519164) (exprs!6961 ct2!306) lambda!414891))))

(declare-fun b!7033606 () Bool)

(declare-fun res!2871209 () Bool)

(assert (=> b!7033606 (=> res!2871209 e!4228323)))

(get-info :version)

(assert (=> b!7033606 (= res!2871209 (not ((_ is Cons!67799) (exprs!6961 lt!2519164))))))

(declare-fun b!7033608 () Bool)

(declare-fun e!4228315 () Bool)

(declare-fun tp_is_empty!44155 () Bool)

(declare-fun tp!1936552 () Bool)

(assert (=> b!7033608 (= e!4228315 (and tp_is_empty!44155 tp!1936552))))

(declare-fun setNonEmpty!49178 () Bool)

(declare-fun tp!1936554 () Bool)

(declare-fun e!4228309 () Bool)

(declare-fun setElem!49178 () Context!12922)

(declare-fun inv!86521 (Context!12922) Bool)

(assert (=> setNonEmpty!49178 (= setRes!49178 (and tp!1936554 (inv!86521 setElem!49178) e!4228309))))

(declare-fun z1!570 () (InoxSet Context!12922))

(declare-fun setRest!49178 () (InoxSet Context!12922))

(assert (=> setNonEmpty!49178 (= z1!570 ((_ map or) (store ((as const (Array Context!12922 Bool)) false) setElem!49178 true) setRest!49178))))

(declare-fun b!7033609 () Bool)

(declare-fun e!4228308 () Bool)

(assert (=> b!7033609 (= e!4228323 e!4228308)))

(declare-fun res!2871227 () Bool)

(assert (=> b!7033609 (=> res!2871227 e!4228308)))

(declare-fun nullable!7176 (Regex!17465) Bool)

(assert (=> b!7033609 (= res!2871227 (not (nullable!7176 (h!74247 (exprs!6961 lt!2519164)))))))

(declare-fun lt!2519153 () Context!12922)

(assert (=> b!7033609 (= lt!2519153 (Context!12923 lt!2519204))))

(declare-fun tail!13553 (List!67923) List!67923)

(assert (=> b!7033609 (= lt!2519204 (tail!13553 (exprs!6961 lt!2519164)))))

(declare-fun b!7033610 () Bool)

(declare-fun e!4228318 () Bool)

(assert (=> b!7033610 (= e!4228325 e!4228318)))

(declare-fun res!2871206 () Bool)

(assert (=> b!7033610 (=> res!2871206 e!4228318)))

(declare-fun lt!2519166 () (InoxSet Context!12922))

(assert (=> b!7033610 (= res!2871206 (not (matchZipper!3005 lt!2519166 (t!381691 s!7408))))))

(declare-fun lt!2519171 () Unit!161604)

(assert (=> b!7033610 (= lt!2519171 (lemmaConcatPreservesForall!786 lt!2519204 (exprs!6961 ct2!306) lambda!414891))))

(declare-fun b!7033611 () Bool)

(declare-fun res!2871211 () Bool)

(declare-fun e!4228312 () Bool)

(assert (=> b!7033611 (=> res!2871211 e!4228312)))

(declare-fun nullableContext!85 (Context!12922) Bool)

(assert (=> b!7033611 (= res!2871211 (not (nullableContext!85 lt!2519164)))))

(declare-fun b!7033612 () Bool)

(declare-fun e!4228311 () Bool)

(assert (=> b!7033612 (= e!4228311 e!4228325)))

(declare-fun res!2871215 () Bool)

(assert (=> b!7033612 (=> res!2871215 e!4228325)))

(declare-fun e!4228316 () Bool)

(assert (=> b!7033612 (= res!2871215 e!4228316)))

(declare-fun res!2871232 () Bool)

(assert (=> b!7033612 (=> (not res!2871232) (not e!4228316))))

(declare-fun lt!2519189 () Bool)

(assert (=> b!7033612 (= res!2871232 (not (= lt!2519165 lt!2519189)))))

(declare-fun lt!2519185 () (InoxSet Context!12922))

(assert (=> b!7033612 (= lt!2519165 (matchZipper!3005 lt!2519185 (t!381691 s!7408)))))

(declare-fun lt!2519177 () Unit!161604)

(assert (=> b!7033612 (= lt!2519177 (lemmaConcatPreservesForall!786 lt!2519204 (exprs!6961 ct2!306) lambda!414891))))

(declare-fun lt!2519169 () (InoxSet Context!12922))

(declare-fun e!4228319 () Bool)

(assert (=> b!7033612 (= (matchZipper!3005 lt!2519169 (t!381691 s!7408)) e!4228319)))

(declare-fun res!2871214 () Bool)

(assert (=> b!7033612 (=> res!2871214 e!4228319)))

(assert (=> b!7033612 (= res!2871214 lt!2519189)))

(declare-fun lt!2519175 () (InoxSet Context!12922))

(assert (=> b!7033612 (= lt!2519189 (matchZipper!3005 lt!2519175 (t!381691 s!7408)))))

(declare-fun lt!2519176 () Unit!161604)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1538 ((InoxSet Context!12922) (InoxSet Context!12922) List!67924) Unit!161604)

(assert (=> b!7033612 (= lt!2519176 (lemmaZipperConcatMatchesSameAsBothZippers!1538 lt!2519175 lt!2519166 (t!381691 s!7408)))))

(declare-fun lt!2519168 () Unit!161604)

(assert (=> b!7033612 (= lt!2519168 (lemmaConcatPreservesForall!786 lt!2519204 (exprs!6961 ct2!306) lambda!414891))))

(declare-fun lt!2519156 () Unit!161604)

(assert (=> b!7033612 (= lt!2519156 (lemmaConcatPreservesForall!786 lt!2519204 (exprs!6961 ct2!306) lambda!414891))))

(declare-fun e!4228314 () Bool)

(assert (=> b!7033613 (= e!4228314 e!4228320)))

(declare-fun res!2871226 () Bool)

(assert (=> b!7033613 (=> res!2871226 e!4228320)))

(declare-fun lt!2519167 () Context!12922)

(assert (=> b!7033613 (= res!2871226 (or (not (= lt!2519179 lt!2519167)) (not (select z1!570 lt!2519164))))))

(declare-fun ++!15510 (List!67923 List!67923) List!67923)

(assert (=> b!7033613 (= lt!2519179 (Context!12923 (++!15510 (exprs!6961 lt!2519164) (exprs!6961 ct2!306))))))

(declare-fun lt!2519160 () Unit!161604)

(assert (=> b!7033613 (= lt!2519160 (lemmaConcatPreservesForall!786 (exprs!6961 lt!2519164) (exprs!6961 ct2!306) lambda!414891))))

(declare-fun lambda!414890 () Int)

(declare-fun mapPost2!306 ((InoxSet Context!12922) Int Context!12922) Context!12922)

(assert (=> b!7033613 (= lt!2519164 (mapPost2!306 z1!570 lambda!414890 lt!2519167))))

(declare-fun b!7033614 () Bool)

(assert (=> b!7033614 (= e!4228308 e!4228311)))

(declare-fun res!2871212 () Bool)

(assert (=> b!7033614 (=> res!2871212 e!4228311)))

(assert (=> b!7033614 (= res!2871212 (not (= lt!2519185 lt!2519169)))))

(assert (=> b!7033614 (= lt!2519169 ((_ map or) lt!2519175 lt!2519166))))

(declare-fun lt!2519174 () Context!12922)

(declare-fun derivationStepZipperUp!2075 (Context!12922 C!35200) (InoxSet Context!12922))

(assert (=> b!7033614 (= lt!2519166 (derivationStepZipperUp!2075 lt!2519174 (h!74248 s!7408)))))

(declare-fun derivationStepZipperDown!2129 (Regex!17465 Context!12922 C!35200) (InoxSet Context!12922))

(assert (=> b!7033614 (= lt!2519175 (derivationStepZipperDown!2129 (h!74247 (exprs!6961 lt!2519164)) lt!2519174 (h!74248 s!7408)))))

(assert (=> b!7033614 (= lt!2519174 (Context!12923 (++!15510 lt!2519204 (exprs!6961 ct2!306))))))

(declare-fun lt!2519181 () Unit!161604)

(assert (=> b!7033614 (= lt!2519181 (lemmaConcatPreservesForall!786 lt!2519204 (exprs!6961 ct2!306) lambda!414891))))

(declare-fun lt!2519159 () Unit!161604)

(assert (=> b!7033614 (= lt!2519159 (lemmaConcatPreservesForall!786 lt!2519204 (exprs!6961 ct2!306) lambda!414891))))

(declare-fun res!2871228 () Bool)

(assert (=> b!7033615 (=> res!2871228 e!4228321)))

(declare-fun exists!3392 ((InoxSet Context!12922) Int) Bool)

(assert (=> b!7033615 (= res!2871228 (not (exists!3392 lt!2519173 lambda!414893)))))

(declare-fun b!7033616 () Bool)

(declare-fun res!2871231 () Bool)

(assert (=> b!7033616 (=> res!2871231 e!4228314)))

(declare-fun lt!2519162 () (InoxSet Context!12922))

(assert (=> b!7033616 (= res!2871231 (not (select lt!2519162 lt!2519167)))))

(declare-fun b!7033617 () Bool)

(declare-fun res!2871223 () Bool)

(declare-fun e!4228310 () Bool)

(assert (=> b!7033617 (=> (not res!2871223) (not e!4228310))))

(assert (=> b!7033617 (= res!2871223 ((_ is Cons!67800) s!7408))))

(declare-fun b!7033618 () Bool)

(assert (=> b!7033618 (= e!4228313 e!4228322)))

(declare-fun res!2871218 () Bool)

(assert (=> b!7033618 (=> res!2871218 e!4228322)))

(declare-fun lt!2519193 () Int)

(declare-fun contextDepthTotal!500 (Context!12922) Int)

(assert (=> b!7033618 (= res!2871218 (<= lt!2519193 (contextDepthTotal!500 lt!2519153)))))

(declare-fun lt!2519195 () Int)

(assert (=> b!7033618 (<= lt!2519193 lt!2519195)))

(declare-datatypes ((List!67925 0))(
  ( (Nil!67801) (Cons!67801 (h!74249 Context!12922) (t!381692 List!67925)) )
))
(declare-fun lt!2519188 () List!67925)

(declare-fun zipperDepthTotal!528 (List!67925) Int)

(assert (=> b!7033618 (= lt!2519195 (zipperDepthTotal!528 lt!2519188))))

(assert (=> b!7033618 (= lt!2519193 (contextDepthTotal!500 lt!2519164))))

(declare-fun lt!2519200 () Unit!161604)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContext!68 (List!67925 Context!12922) Unit!161604)

(assert (=> b!7033618 (= lt!2519200 (lemmaTotalDepthZipperLargerThanOfAnyContext!68 lt!2519188 lt!2519164))))

(declare-fun toList!10808 ((InoxSet Context!12922)) List!67925)

(assert (=> b!7033618 (= lt!2519188 (toList!10808 z1!570))))

(declare-fun lt!2519197 () Unit!161604)

(assert (=> b!7033618 (= lt!2519197 (lemmaConcatPreservesForall!786 lt!2519204 (exprs!6961 ct2!306) lambda!414891))))

(declare-fun lt!2519154 () Unit!161604)

(assert (=> b!7033618 (= lt!2519154 (lemmaConcatPreservesForall!786 lt!2519204 (exprs!6961 ct2!306) lambda!414891))))

(declare-fun lt!2519187 () Unit!161604)

(assert (=> b!7033618 (= lt!2519187 (lemmaConcatPreservesForall!786 lt!2519204 (exprs!6961 ct2!306) lambda!414891))))

(declare-fun lambda!414892 () Int)

(declare-fun flatMap!2412 ((InoxSet Context!12922) Int) (InoxSet Context!12922))

(assert (=> b!7033618 (= (flatMap!2412 lt!2519173 lambda!414892) (derivationStepZipperUp!2075 lt!2519153 (h!74248 s!7408)))))

(declare-fun lt!2519183 () Unit!161604)

(declare-fun lemmaFlatMapOnSingletonSet!1926 ((InoxSet Context!12922) Context!12922 Int) Unit!161604)

(assert (=> b!7033618 (= lt!2519183 (lemmaFlatMapOnSingletonSet!1926 lt!2519173 lt!2519153 lambda!414892))))

(declare-fun map!15765 ((InoxSet Context!12922) Int) (InoxSet Context!12922))

(assert (=> b!7033618 (= (map!15765 lt!2519173 lambda!414890) (store ((as const (Array Context!12922 Bool)) false) (Context!12923 (++!15510 lt!2519204 (exprs!6961 ct2!306))) true))))

(declare-fun lt!2519161 () Unit!161604)

(assert (=> b!7033618 (= lt!2519161 (lemmaConcatPreservesForall!786 lt!2519204 (exprs!6961 ct2!306) lambda!414891))))

(declare-fun lt!2519155 () Unit!161604)

(declare-fun lemmaMapOnSingletonSet!376 ((InoxSet Context!12922) Context!12922 Int) Unit!161604)

(assert (=> b!7033618 (= lt!2519155 (lemmaMapOnSingletonSet!376 lt!2519173 lt!2519153 lambda!414890))))

(assert (=> b!7033618 (= lt!2519173 (store ((as const (Array Context!12922 Bool)) false) lt!2519153 true))))

(declare-fun b!7033619 () Bool)

(declare-fun e!4228317 () Bool)

(declare-fun tp!1936553 () Bool)

(assert (=> b!7033619 (= e!4228317 tp!1936553)))

(declare-fun b!7033620 () Bool)

(assert (=> b!7033620 (= e!4228321 e!4228312)))

(declare-fun res!2871210 () Bool)

(assert (=> b!7033620 (=> res!2871210 e!4228312)))

(assert (=> b!7033620 (= res!2871210 (not (nullableContext!85 lt!2519153)))))

(declare-fun lt!2519196 () Context!12922)

(declare-fun getWitness!1472 ((InoxSet Context!12922) Int) Context!12922)

(assert (=> b!7033620 (= lt!2519196 (getWitness!1472 lt!2519173 lambda!414893))))

(declare-fun b!7033607 () Bool)

(assert (=> b!7033607 (= e!4228316 (not (matchZipper!3005 lt!2519166 (t!381691 s!7408))))))

(declare-fun lt!2519178 () Unit!161604)

(assert (=> b!7033607 (= lt!2519178 (lemmaConcatPreservesForall!786 lt!2519204 (exprs!6961 ct2!306) lambda!414891))))

(declare-fun res!2871216 () Bool)

(assert (=> start!679800 (=> (not res!2871216) (not e!4228310))))

(assert (=> start!679800 (= res!2871216 (matchZipper!3005 lt!2519162 s!7408))))

(declare-fun appendTo!586 ((InoxSet Context!12922) Context!12922) (InoxSet Context!12922))

(assert (=> start!679800 (= lt!2519162 (appendTo!586 z1!570 ct2!306))))

(assert (=> start!679800 e!4228310))

(declare-fun condSetEmpty!49178 () Bool)

(assert (=> start!679800 (= condSetEmpty!49178 (= z1!570 ((as const (Array Context!12922 Bool)) false)))))

(assert (=> start!679800 setRes!49178))

(assert (=> start!679800 (and (inv!86521 ct2!306) e!4228317)))

(assert (=> start!679800 e!4228315))

(declare-fun b!7033621 () Bool)

(declare-fun res!2871230 () Bool)

(assert (=> b!7033621 (=> res!2871230 e!4228321)))

(assert (=> b!7033621 (= res!2871230 (not (matchZipper!3005 lt!2519194 (_2!37341 lt!2519172))))))

(declare-fun b!7033622 () Bool)

(declare-fun res!2871229 () Bool)

(assert (=> b!7033622 (=> res!2871229 e!4228321)))

(declare-fun ++!15511 (List!67924 List!67924) List!67924)

(assert (=> b!7033622 (= res!2871229 (not (= (++!15511 (_1!37341 lt!2519172) (_2!37341 lt!2519172)) s!7408)))))

(declare-fun b!7033623 () Bool)

(assert (=> b!7033623 (= e!4228318 e!4228324)))

(declare-fun res!2871220 () Bool)

(assert (=> b!7033623 (=> res!2871220 e!4228324)))

(declare-fun derivationStepZipper!2921 ((InoxSet Context!12922) C!35200) (InoxSet Context!12922))

(assert (=> b!7033623 (= res!2871220 (not (= (derivationStepZipper!2921 lt!2519203 (h!74248 s!7408)) lt!2519166)))))

(declare-fun lt!2519163 () Unit!161604)

(assert (=> b!7033623 (= lt!2519163 (lemmaConcatPreservesForall!786 lt!2519204 (exprs!6961 ct2!306) lambda!414891))))

(declare-fun lt!2519191 () Unit!161604)

(assert (=> b!7033623 (= lt!2519191 (lemmaConcatPreservesForall!786 lt!2519204 (exprs!6961 ct2!306) lambda!414891))))

(assert (=> b!7033623 (= (flatMap!2412 lt!2519203 lambda!414892) (derivationStepZipperUp!2075 lt!2519174 (h!74248 s!7408)))))

(declare-fun lt!2519157 () Unit!161604)

(assert (=> b!7033623 (= lt!2519157 (lemmaFlatMapOnSingletonSet!1926 lt!2519203 lt!2519174 lambda!414892))))

(assert (=> b!7033623 (= lt!2519203 (store ((as const (Array Context!12922 Bool)) false) lt!2519174 true))))

(declare-fun lt!2519205 () Unit!161604)

(assert (=> b!7033623 (= lt!2519205 (lemmaConcatPreservesForall!786 lt!2519204 (exprs!6961 ct2!306) lambda!414891))))

(declare-fun lt!2519202 () Unit!161604)

(assert (=> b!7033623 (= lt!2519202 (lemmaConcatPreservesForall!786 lt!2519204 (exprs!6961 ct2!306) lambda!414891))))

(declare-fun b!7033624 () Bool)

(declare-fun res!2871217 () Bool)

(assert (=> b!7033624 (=> res!2871217 e!4228321)))

(declare-fun isEmpty!39545 (List!67924) Bool)

(assert (=> b!7033624 (= res!2871217 (not (isEmpty!39545 (_1!37341 lt!2519172))))))

(declare-fun b!7033625 () Bool)

(declare-fun tp!1936555 () Bool)

(assert (=> b!7033625 (= e!4228309 tp!1936555)))

(assert (=> b!7033626 (= e!4228310 (not e!4228314))))

(declare-fun res!2871225 () Bool)

(assert (=> b!7033626 (=> res!2871225 e!4228314)))

(assert (=> b!7033626 (= res!2871225 (not (matchZipper!3005 lt!2519170 s!7408)))))

(assert (=> b!7033626 (= lt!2519170 (store ((as const (Array Context!12922 Bool)) false) lt!2519167 true))))

(assert (=> b!7033626 (= lt!2519167 (getWitness!1472 lt!2519162 lambda!414889))))

(declare-fun lt!2519180 () List!67925)

(declare-fun exists!3393 (List!67925 Int) Bool)

(assert (=> b!7033626 (exists!3393 lt!2519180 lambda!414889)))

(declare-fun lt!2519199 () Unit!161604)

(declare-fun lemmaZipperMatchesExistsMatchingContext!404 (List!67925 List!67924) Unit!161604)

(assert (=> b!7033626 (= lt!2519199 (lemmaZipperMatchesExistsMatchingContext!404 lt!2519180 s!7408))))

(assert (=> b!7033626 (= lt!2519180 (toList!10808 lt!2519162))))

(declare-fun b!7033627 () Bool)

(assert (=> b!7033627 (= e!4228312 true)))

(declare-fun lt!2519207 () (InoxSet Context!12922))

(assert (=> b!7033627 (exists!3392 lt!2519207 lambda!414893)))

(declare-fun lt!2519184 () Unit!161604)

(declare-fun lemmaContainsThenExists!119 ((InoxSet Context!12922) Context!12922 Int) Unit!161604)

(assert (=> b!7033627 (= lt!2519184 (lemmaContainsThenExists!119 lt!2519207 lt!2519164 lambda!414893))))

(assert (=> b!7033627 (= lt!2519207 (store ((as const (Array Context!12922 Bool)) false) lt!2519164 true))))

(assert (=> b!7033627 (exists!3392 lt!2519173 lambda!414893)))

(declare-fun lt!2519186 () Unit!161604)

(assert (=> b!7033627 (= lt!2519186 (lemmaContainsThenExists!119 lt!2519173 lt!2519153 lambda!414893))))

(declare-fun b!7033628 () Bool)

(assert (=> b!7033628 (= e!4228319 (matchZipper!3005 lt!2519166 (t!381691 s!7408)))))

(declare-fun b!7033629 () Bool)

(declare-fun res!2871219 () Bool)

(assert (=> b!7033629 (=> res!2871219 e!4228322)))

(assert (=> b!7033629 (= res!2871219 (>= (zipperDepthTotal!528 (Cons!67801 lt!2519153 Nil!67801)) lt!2519195))))

(assert (=> b!7033630 (= e!4228307 e!4228323)))

(declare-fun res!2871208 () Bool)

(assert (=> b!7033630 (=> res!2871208 e!4228323)))

(assert (=> b!7033630 (= res!2871208 (not (= (derivationStepZipper!2921 lt!2519190 (h!74248 s!7408)) lt!2519185)))))

(assert (=> b!7033630 (= (flatMap!2412 lt!2519190 lambda!414892) (derivationStepZipperUp!2075 lt!2519179 (h!74248 s!7408)))))

(declare-fun lt!2519182 () Unit!161604)

(assert (=> b!7033630 (= lt!2519182 (lemmaFlatMapOnSingletonSet!1926 lt!2519190 lt!2519179 lambda!414892))))

(assert (=> b!7033630 (= lt!2519185 (derivationStepZipperUp!2075 lt!2519179 (h!74248 s!7408)))))

(declare-fun lt!2519158 () Unit!161604)

(assert (=> b!7033630 (= lt!2519158 (lemmaConcatPreservesForall!786 (exprs!6961 lt!2519164) (exprs!6961 ct2!306) lambda!414891))))

(assert (= (and start!679800 res!2871216) b!7033617))

(assert (= (and b!7033617 res!2871223) b!7033626))

(assert (= (and b!7033626 (not res!2871225)) b!7033616))

(assert (= (and b!7033616 (not res!2871231)) b!7033613))

(assert (= (and b!7033613 (not res!2871226)) b!7033605))

(assert (= (and b!7033605 (not res!2871207)) b!7033630))

(assert (= (and b!7033630 (not res!2871208)) b!7033606))

(assert (= (and b!7033606 (not res!2871209)) b!7033604))

(assert (= (and b!7033604 (not res!2871222)) b!7033609))

(assert (= (and b!7033609 (not res!2871227)) b!7033614))

(assert (= (and b!7033614 (not res!2871212)) b!7033612))

(assert (= (and b!7033612 (not res!2871214)) b!7033628))

(assert (= (and b!7033612 res!2871232) b!7033607))

(assert (= (and b!7033612 (not res!2871215)) b!7033602))

(assert (= (and b!7033602 (not res!2871221)) b!7033610))

(assert (= (and b!7033610 (not res!2871206)) b!7033623))

(assert (= (and b!7033623 (not res!2871220)) b!7033603))

(assert (= (and b!7033603 (not res!2871224)) b!7033618))

(assert (= (and b!7033618 (not res!2871218)) b!7033629))

(assert (= (and b!7033629 (not res!2871219)) b!7033601))

(assert (= (and b!7033601 (not res!2871213)) b!7033621))

(assert (= (and b!7033621 (not res!2871230)) b!7033622))

(assert (= (and b!7033622 (not res!2871229)) b!7033624))

(assert (= (and b!7033624 (not res!2871217)) b!7033615))

(assert (= (and b!7033615 (not res!2871228)) b!7033620))

(assert (= (and b!7033620 (not res!2871210)) b!7033611))

(assert (= (and b!7033611 (not res!2871211)) b!7033627))

(assert (= (and start!679800 condSetEmpty!49178) setIsEmpty!49178))

(assert (= (and start!679800 (not condSetEmpty!49178)) setNonEmpty!49178))

(assert (= setNonEmpty!49178 b!7033625))

(assert (= start!679800 b!7033619))

(assert (= (and start!679800 ((_ is Cons!67800) s!7408)) b!7033608))

(declare-fun m!7740840 () Bool)

(assert (=> b!7033627 m!7740840))

(declare-fun m!7740842 () Bool)

(assert (=> b!7033627 m!7740842))

(declare-fun m!7740844 () Bool)

(assert (=> b!7033627 m!7740844))

(declare-fun m!7740846 () Bool)

(assert (=> b!7033627 m!7740846))

(declare-fun m!7740848 () Bool)

(assert (=> b!7033627 m!7740848))

(declare-fun m!7740850 () Bool)

(assert (=> b!7033604 m!7740850))

(declare-fun m!7740852 () Bool)

(assert (=> b!7033621 m!7740852))

(declare-fun m!7740854 () Bool)

(assert (=> b!7033603 m!7740854))

(declare-fun m!7740856 () Bool)

(assert (=> b!7033603 m!7740856))

(declare-fun m!7740858 () Bool)

(assert (=> b!7033612 m!7740858))

(declare-fun m!7740860 () Bool)

(assert (=> b!7033612 m!7740860))

(assert (=> b!7033612 m!7740856))

(assert (=> b!7033612 m!7740856))

(assert (=> b!7033612 m!7740856))

(declare-fun m!7740862 () Bool)

(assert (=> b!7033612 m!7740862))

(declare-fun m!7740864 () Bool)

(assert (=> b!7033612 m!7740864))

(declare-fun m!7740866 () Bool)

(assert (=> b!7033629 m!7740866))

(declare-fun m!7740868 () Bool)

(assert (=> b!7033601 m!7740868))

(declare-fun m!7740870 () Bool)

(assert (=> b!7033601 m!7740870))

(declare-fun m!7740872 () Bool)

(assert (=> b!7033601 m!7740872))

(declare-fun m!7740874 () Bool)

(assert (=> b!7033601 m!7740874))

(declare-fun m!7740876 () Bool)

(assert (=> b!7033601 m!7740876))

(declare-fun m!7740878 () Bool)

(assert (=> b!7033601 m!7740878))

(declare-fun m!7740880 () Bool)

(assert (=> b!7033614 m!7740880))

(assert (=> b!7033614 m!7740856))

(assert (=> b!7033614 m!7740856))

(declare-fun m!7740882 () Bool)

(assert (=> b!7033614 m!7740882))

(declare-fun m!7740884 () Bool)

(assert (=> b!7033614 m!7740884))

(declare-fun m!7740886 () Bool)

(assert (=> b!7033609 m!7740886))

(declare-fun m!7740888 () Bool)

(assert (=> b!7033609 m!7740888))

(declare-fun m!7740890 () Bool)

(assert (=> start!679800 m!7740890))

(declare-fun m!7740892 () Bool)

(assert (=> start!679800 m!7740892))

(declare-fun m!7740894 () Bool)

(assert (=> start!679800 m!7740894))

(declare-fun m!7740896 () Bool)

(assert (=> b!7033613 m!7740896))

(declare-fun m!7740898 () Bool)

(assert (=> b!7033613 m!7740898))

(declare-fun m!7740900 () Bool)

(assert (=> b!7033613 m!7740900))

(declare-fun m!7740902 () Bool)

(assert (=> b!7033613 m!7740902))

(declare-fun m!7740904 () Bool)

(assert (=> setNonEmpty!49178 m!7740904))

(assert (=> b!7033630 m!7740900))

(declare-fun m!7740906 () Bool)

(assert (=> b!7033630 m!7740906))

(declare-fun m!7740908 () Bool)

(assert (=> b!7033630 m!7740908))

(declare-fun m!7740910 () Bool)

(assert (=> b!7033630 m!7740910))

(declare-fun m!7740912 () Bool)

(assert (=> b!7033630 m!7740912))

(declare-fun m!7740914 () Bool)

(assert (=> b!7033623 m!7740914))

(declare-fun m!7740916 () Bool)

(assert (=> b!7033623 m!7740916))

(assert (=> b!7033623 m!7740856))

(declare-fun m!7740918 () Bool)

(assert (=> b!7033623 m!7740918))

(declare-fun m!7740920 () Bool)

(assert (=> b!7033623 m!7740920))

(assert (=> b!7033623 m!7740856))

(assert (=> b!7033623 m!7740884))

(assert (=> b!7033623 m!7740856))

(assert (=> b!7033623 m!7740856))

(declare-fun m!7740922 () Bool)

(assert (=> b!7033611 m!7740922))

(declare-fun m!7740924 () Bool)

(assert (=> b!7033618 m!7740924))

(assert (=> b!7033618 m!7740856))

(declare-fun m!7740926 () Bool)

(assert (=> b!7033618 m!7740926))

(declare-fun m!7740928 () Bool)

(assert (=> b!7033618 m!7740928))

(declare-fun m!7740930 () Bool)

(assert (=> b!7033618 m!7740930))

(declare-fun m!7740932 () Bool)

(assert (=> b!7033618 m!7740932))

(declare-fun m!7740934 () Bool)

(assert (=> b!7033618 m!7740934))

(declare-fun m!7740936 () Bool)

(assert (=> b!7033618 m!7740936))

(declare-fun m!7740938 () Bool)

(assert (=> b!7033618 m!7740938))

(declare-fun m!7740940 () Bool)

(assert (=> b!7033618 m!7740940))

(assert (=> b!7033618 m!7740856))

(assert (=> b!7033618 m!7740856))

(declare-fun m!7740942 () Bool)

(assert (=> b!7033618 m!7740942))

(assert (=> b!7033618 m!7740880))

(assert (=> b!7033618 m!7740856))

(declare-fun m!7740944 () Bool)

(assert (=> b!7033618 m!7740944))

(declare-fun m!7740946 () Bool)

(assert (=> b!7033618 m!7740946))

(declare-fun m!7740948 () Bool)

(assert (=> b!7033628 m!7740948))

(assert (=> b!7033607 m!7740948))

(assert (=> b!7033607 m!7740856))

(declare-fun m!7740950 () Bool)

(assert (=> b!7033605 m!7740950))

(assert (=> b!7033605 m!7740900))

(assert (=> b!7033615 m!7740848))

(declare-fun m!7740952 () Bool)

(assert (=> b!7033620 m!7740952))

(declare-fun m!7740954 () Bool)

(assert (=> b!7033620 m!7740954))

(assert (=> b!7033610 m!7740948))

(assert (=> b!7033610 m!7740856))

(declare-fun m!7740956 () Bool)

(assert (=> b!7033624 m!7740956))

(declare-fun m!7740958 () Bool)

(assert (=> b!7033626 m!7740958))

(declare-fun m!7740960 () Bool)

(assert (=> b!7033626 m!7740960))

(declare-fun m!7740962 () Bool)

(assert (=> b!7033626 m!7740962))

(declare-fun m!7740964 () Bool)

(assert (=> b!7033626 m!7740964))

(declare-fun m!7740966 () Bool)

(assert (=> b!7033626 m!7740966))

(declare-fun m!7740968 () Bool)

(assert (=> b!7033626 m!7740968))

(declare-fun m!7740970 () Bool)

(assert (=> b!7033616 m!7740970))

(declare-fun m!7740972 () Bool)

(assert (=> b!7033622 m!7740972))

(check-sat (not b!7033603) (not b!7033604) (not b!7033627) (not b!7033607) tp_is_empty!44155 (not b!7033614) (not b!7033608) (not b!7033626) (not b!7033619) (not b!7033625) (not b!7033615) (not b!7033623) (not b!7033622) (not b!7033624) (not start!679800) (not b!7033611) (not b!7033620) (not b!7033613) (not b!7033618) (not b!7033621) (not setNonEmpty!49178) (not b!7033605) (not b!7033612) (not b!7033630) (not b!7033629) (not b!7033628) (not b!7033610) (not b!7033601) (not b!7033609))
(check-sat)
