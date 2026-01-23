; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!673484 () Bool)

(assert start!673484)

(declare-fun b!7000391 () Bool)

(assert (=> b!7000391 true))

(declare-fun b!7000395 () Bool)

(assert (=> b!7000395 true))

(declare-fun b!7000408 () Bool)

(assert (=> b!7000408 true))

(declare-fun b!7000383 () Bool)

(declare-fun res!2855549 () Bool)

(declare-fun e!4207770 () Bool)

(assert (=> b!7000383 (=> res!2855549 e!4207770)))

(declare-datatypes ((C!34802 0))(
  ( (C!34803 (val!27103 Int)) )
))
(declare-datatypes ((List!67343 0))(
  ( (Nil!67219) (Cons!67219 (h!73667 C!34802) (t!381096 List!67343)) )
))
(declare-datatypes ((tuple2!67878 0))(
  ( (tuple2!67879 (_1!37242 List!67343) (_2!37242 List!67343)) )
))
(declare-fun lt!2495184 () tuple2!67878)

(declare-fun isEmpty!39243 (List!67343) Bool)

(assert (=> b!7000383 (= res!2855549 (isEmpty!39243 (_1!37242 lt!2495184)))))

(declare-fun b!7000384 () Bool)

(declare-fun e!4207774 () Bool)

(assert (=> b!7000384 (= e!4207774 (not (= (_1!37242 lt!2495184) Nil!67219)))))

(declare-datatypes ((Regex!17266 0))(
  ( (ElementMatch!17266 (c!1299465 C!34802)) (Concat!26111 (regOne!35044 Regex!17266) (regTwo!35044 Regex!17266)) (EmptyExpr!17266) (Star!17266 (reg!17595 Regex!17266)) (EmptyLang!17266) (Union!17266 (regOne!35045 Regex!17266) (regTwo!35045 Regex!17266)) )
))
(declare-datatypes ((List!67344 0))(
  ( (Nil!67220) (Cons!67220 (h!73668 Regex!17266) (t!381097 List!67344)) )
))
(declare-datatypes ((Context!12524 0))(
  ( (Context!12525 (exprs!6762 List!67344)) )
))
(declare-fun lt!2495226 () (Set Context!12524))

(declare-fun lt!2495198 () List!67343)

(declare-fun e!4207783 () Bool)

(declare-fun matchZipper!2806 ((Set Context!12524) List!67343) Bool)

(assert (=> b!7000384 (= (matchZipper!2806 lt!2495226 lt!2495198) e!4207783)))

(declare-fun res!2855556 () Bool)

(assert (=> b!7000384 (=> res!2855556 e!4207783)))

(declare-fun lt!2495221 () (Set Context!12524))

(assert (=> b!7000384 (= res!2855556 (matchZipper!2806 lt!2495221 lt!2495198))))

(declare-fun lt!2495219 () (Set Context!12524))

(declare-datatypes ((Unit!161192 0))(
  ( (Unit!161193) )
))
(declare-fun lt!2495195 () Unit!161192)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1439 ((Set Context!12524) (Set Context!12524) List!67343) Unit!161192)

(assert (=> b!7000384 (= lt!2495195 (lemmaZipperConcatMatchesSameAsBothZippers!1439 lt!2495221 lt!2495219 lt!2495198))))

(declare-fun tail!13300 (List!67343) List!67343)

(assert (=> b!7000384 (= lt!2495198 (tail!13300 (_1!37242 lt!2495184)))))

(declare-fun b!7000385 () Bool)

(declare-fun res!2855541 () Bool)

(declare-fun e!4207787 () Bool)

(assert (=> b!7000385 (=> (not res!2855541) (not e!4207787))))

(declare-fun s!7408 () List!67343)

(assert (=> b!7000385 (= res!2855541 (is-Cons!67219 s!7408))))

(declare-fun setIsEmpty!48090 () Bool)

(declare-fun setRes!48090 () Bool)

(assert (=> setIsEmpty!48090 setRes!48090))

(declare-fun tp!1931063 () Bool)

(declare-fun setNonEmpty!48090 () Bool)

(declare-fun setElem!48090 () Context!12524)

(declare-fun e!4207767 () Bool)

(declare-fun inv!86025 (Context!12524) Bool)

(assert (=> setNonEmpty!48090 (= setRes!48090 (and tp!1931063 (inv!86025 setElem!48090) e!4207767))))

(declare-fun z1!570 () (Set Context!12524))

(declare-fun setRest!48090 () (Set Context!12524))

(assert (=> setNonEmpty!48090 (= z1!570 (set.union (set.insert setElem!48090 (as set.empty (Set Context!12524))) setRest!48090))))

(declare-fun b!7000386 () Bool)

(declare-fun res!2855537 () Bool)

(declare-fun e!4207776 () Bool)

(assert (=> b!7000386 (=> res!2855537 e!4207776)))

(declare-fun lt!2495182 () Context!12524)

(declare-fun isEmpty!39244 (List!67344) Bool)

(assert (=> b!7000386 (= res!2855537 (isEmpty!39244 (exprs!6762 lt!2495182)))))

(declare-fun b!7000387 () Bool)

(declare-fun e!4207775 () Bool)

(declare-fun e!4207779 () Bool)

(assert (=> b!7000387 (= e!4207775 e!4207779)))

(declare-fun res!2855538 () Bool)

(assert (=> b!7000387 (=> res!2855538 e!4207779)))

(declare-fun lt!2495235 () (Set Context!12524))

(assert (=> b!7000387 (= res!2855538 (not (matchZipper!2806 lt!2495235 (t!381096 s!7408))))))

(declare-fun lt!2495233 () Unit!161192)

(declare-fun lambda!405067 () Int)

(declare-fun lt!2495237 () List!67344)

(declare-fun ct2!306 () Context!12524)

(declare-fun lemmaConcatPreservesForall!602 (List!67344 List!67344 Int) Unit!161192)

(assert (=> b!7000387 (= lt!2495233 (lemmaConcatPreservesForall!602 lt!2495237 (exprs!6762 ct2!306) lambda!405067))))

(declare-fun b!7000388 () Bool)

(declare-fun e!4207768 () Bool)

(declare-fun tp!1931065 () Bool)

(assert (=> b!7000388 (= e!4207768 tp!1931065)))

(declare-fun b!7000389 () Bool)

(declare-fun tp!1931066 () Bool)

(assert (=> b!7000389 (= e!4207767 tp!1931066)))

(declare-fun res!2855554 () Bool)

(assert (=> start!673484 (=> (not res!2855554) (not e!4207787))))

(declare-fun lt!2495180 () (Set Context!12524))

(assert (=> start!673484 (= res!2855554 (matchZipper!2806 lt!2495180 s!7408))))

(declare-fun appendTo!387 ((Set Context!12524) Context!12524) (Set Context!12524))

(assert (=> start!673484 (= lt!2495180 (appendTo!387 z1!570 ct2!306))))

(assert (=> start!673484 e!4207787))

(declare-fun condSetEmpty!48090 () Bool)

(assert (=> start!673484 (= condSetEmpty!48090 (= z1!570 (as set.empty (Set Context!12524))))))

(assert (=> start!673484 setRes!48090))

(assert (=> start!673484 (and (inv!86025 ct2!306) e!4207768)))

(declare-fun e!4207782 () Bool)

(assert (=> start!673484 e!4207782))

(declare-fun b!7000390 () Bool)

(declare-fun res!2855560 () Bool)

(assert (=> b!7000390 (=> res!2855560 e!4207770)))

(declare-fun lt!2495213 () (Set Context!12524))

(assert (=> b!7000390 (= res!2855560 (not (matchZipper!2806 lt!2495213 (_2!37242 lt!2495184))))))

(declare-fun e!4207781 () Bool)

(assert (=> b!7000391 (= e!4207787 (not e!4207781))))

(declare-fun res!2855539 () Bool)

(assert (=> b!7000391 (=> res!2855539 e!4207781)))

(declare-fun lt!2495188 () (Set Context!12524))

(assert (=> b!7000391 (= res!2855539 (not (matchZipper!2806 lt!2495188 s!7408)))))

(declare-fun lt!2495211 () Context!12524)

(assert (=> b!7000391 (= lt!2495188 (set.insert lt!2495211 (as set.empty (Set Context!12524))))))

(declare-fun lambda!405065 () Int)

(declare-fun getWitness!1185 ((Set Context!12524) Int) Context!12524)

(assert (=> b!7000391 (= lt!2495211 (getWitness!1185 lt!2495180 lambda!405065))))

(declare-datatypes ((List!67345 0))(
  ( (Nil!67221) (Cons!67221 (h!73669 Context!12524) (t!381098 List!67345)) )
))
(declare-fun lt!2495185 () List!67345)

(declare-fun exists!3081 (List!67345 Int) Bool)

(assert (=> b!7000391 (exists!3081 lt!2495185 lambda!405065)))

(declare-fun lt!2495225 () Unit!161192)

(declare-fun lemmaZipperMatchesExistsMatchingContext!235 (List!67345 List!67343) Unit!161192)

(assert (=> b!7000391 (= lt!2495225 (lemmaZipperMatchesExistsMatchingContext!235 lt!2495185 s!7408))))

(declare-fun toList!10626 ((Set Context!12524)) List!67345)

(assert (=> b!7000391 (= lt!2495185 (toList!10626 lt!2495180))))

(declare-fun b!7000392 () Bool)

(declare-fun e!4207769 () Bool)

(assert (=> b!7000392 (= e!4207770 e!4207769)))

(declare-fun res!2855563 () Bool)

(assert (=> b!7000392 (=> res!2855563 e!4207769)))

(declare-fun lt!2495212 () (Set Context!12524))

(declare-fun lt!2495238 () (Set Context!12524))

(declare-fun derivationStepZipper!2746 ((Set Context!12524) C!34802) (Set Context!12524))

(assert (=> b!7000392 (= res!2855563 (not (= (derivationStepZipper!2746 lt!2495212 (h!73667 s!7408)) lt!2495238)))))

(declare-fun derivationStepZipperUp!1916 (Context!12524 C!34802) (Set Context!12524))

(assert (=> b!7000392 (= lt!2495238 (derivationStepZipperUp!1916 lt!2495182 (h!73667 s!7408)))))

(declare-fun lambda!405068 () Int)

(declare-fun flatMap!2252 ((Set Context!12524) Int) (Set Context!12524))

(assert (=> b!7000392 (= (flatMap!2252 lt!2495212 lambda!405068) (derivationStepZipperUp!1916 lt!2495182 (h!73667 s!7408)))))

(declare-fun lt!2495205 () Unit!161192)

(declare-fun lemmaFlatMapOnSingletonSet!1767 ((Set Context!12524) Context!12524 Int) Unit!161192)

(assert (=> b!7000392 (= lt!2495205 (lemmaFlatMapOnSingletonSet!1767 lt!2495212 lt!2495182 lambda!405068))))

(assert (=> b!7000392 (= lt!2495212 (set.insert lt!2495182 (as set.empty (Set Context!12524))))))

(declare-fun b!7000393 () Bool)

(declare-fun res!2855546 () Bool)

(assert (=> b!7000393 (=> res!2855546 e!4207775)))

(declare-fun lt!2495202 () Bool)

(assert (=> b!7000393 (= res!2855546 (not lt!2495202))))

(declare-fun b!7000394 () Bool)

(declare-fun res!2855542 () Bool)

(assert (=> b!7000394 (=> res!2855542 e!4207776)))

(assert (=> b!7000394 (= res!2855542 (not (is-Cons!67220 (exprs!6762 lt!2495182))))))

(declare-fun e!4207784 () Bool)

(assert (=> b!7000395 (= e!4207781 e!4207784)))

(declare-fun res!2855545 () Bool)

(assert (=> b!7000395 (=> res!2855545 e!4207784)))

(declare-fun lt!2495194 () Context!12524)

(assert (=> b!7000395 (= res!2855545 (or (not (= lt!2495194 lt!2495211)) (not (set.member lt!2495182 z1!570))))))

(declare-fun ++!15233 (List!67344 List!67344) List!67344)

(assert (=> b!7000395 (= lt!2495194 (Context!12525 (++!15233 (exprs!6762 lt!2495182) (exprs!6762 ct2!306))))))

(declare-fun lt!2495224 () Unit!161192)

(assert (=> b!7000395 (= lt!2495224 (lemmaConcatPreservesForall!602 (exprs!6762 lt!2495182) (exprs!6762 ct2!306) lambda!405067))))

(declare-fun lambda!405066 () Int)

(declare-fun mapPost2!121 ((Set Context!12524) Int Context!12524) Context!12524)

(assert (=> b!7000395 (= lt!2495182 (mapPost2!121 z1!570 lambda!405066 lt!2495211))))

(declare-fun b!7000396 () Bool)

(declare-fun e!4207778 () Bool)

(declare-fun e!4207771 () Bool)

(assert (=> b!7000396 (= e!4207778 e!4207771)))

(declare-fun res!2855548 () Bool)

(assert (=> b!7000396 (=> res!2855548 e!4207771)))

(declare-fun lt!2495223 () (Set Context!12524))

(declare-fun lt!2495197 () (Set Context!12524))

(assert (=> b!7000396 (= res!2855548 (not (= lt!2495223 lt!2495197)))))

(declare-fun lt!2495230 () (Set Context!12524))

(assert (=> b!7000396 (= lt!2495197 (set.union lt!2495230 lt!2495235))))

(declare-fun lt!2495228 () Context!12524)

(assert (=> b!7000396 (= lt!2495235 (derivationStepZipperUp!1916 lt!2495228 (h!73667 s!7408)))))

(declare-fun derivationStepZipperDown!1984 (Regex!17266 Context!12524 C!34802) (Set Context!12524))

(assert (=> b!7000396 (= lt!2495230 (derivationStepZipperDown!1984 (h!73668 (exprs!6762 lt!2495182)) lt!2495228 (h!73667 s!7408)))))

(assert (=> b!7000396 (= lt!2495228 (Context!12525 (++!15233 lt!2495237 (exprs!6762 ct2!306))))))

(declare-fun lt!2495214 () Unit!161192)

(assert (=> b!7000396 (= lt!2495214 (lemmaConcatPreservesForall!602 lt!2495237 (exprs!6762 ct2!306) lambda!405067))))

(declare-fun lt!2495201 () Unit!161192)

(assert (=> b!7000396 (= lt!2495201 (lemmaConcatPreservesForall!602 lt!2495237 (exprs!6762 ct2!306) lambda!405067))))

(declare-fun b!7000397 () Bool)

(declare-fun tp_is_empty!43757 () Bool)

(declare-fun tp!1931064 () Bool)

(assert (=> b!7000397 (= e!4207782 (and tp_is_empty!43757 tp!1931064))))

(declare-fun b!7000398 () Bool)

(declare-fun e!4207773 () Bool)

(assert (=> b!7000398 (= e!4207773 e!4207770)))

(declare-fun res!2855557 () Bool)

(assert (=> b!7000398 (=> res!2855557 e!4207770)))

(declare-fun lt!2495191 () (Set Context!12524))

(assert (=> b!7000398 (= res!2855557 (not (matchZipper!2806 lt!2495191 (_1!37242 lt!2495184))))))

(declare-datatypes ((Option!16771 0))(
  ( (None!16770) (Some!16770 (v!53048 tuple2!67878)) )
))
(declare-fun lt!2495216 () Option!16771)

(declare-fun get!23569 (Option!16771) tuple2!67878)

(assert (=> b!7000398 (= lt!2495184 (get!23569 lt!2495216))))

(declare-fun isDefined!13472 (Option!16771) Bool)

(assert (=> b!7000398 (isDefined!13472 lt!2495216)))

(declare-fun findConcatSeparationZippers!287 ((Set Context!12524) (Set Context!12524) List!67343 List!67343 List!67343) Option!16771)

(assert (=> b!7000398 (= lt!2495216 (findConcatSeparationZippers!287 lt!2495191 lt!2495213 Nil!67219 s!7408 s!7408))))

(assert (=> b!7000398 (= lt!2495213 (set.insert ct2!306 (as set.empty (Set Context!12524))))))

(declare-fun lt!2495220 () Unit!161192)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!287 ((Set Context!12524) Context!12524 List!67343) Unit!161192)

(assert (=> b!7000398 (= lt!2495220 (lemmaConcatZipperMatchesStringThenFindConcatDefined!287 lt!2495191 ct2!306 s!7408))))

(declare-fun b!7000399 () Bool)

(assert (=> b!7000399 (= e!4207771 e!4207775)))

(declare-fun res!2855540 () Bool)

(assert (=> b!7000399 (=> res!2855540 e!4207775)))

(declare-fun e!4207786 () Bool)

(assert (=> b!7000399 (= res!2855540 e!4207786)))

(declare-fun res!2855551 () Bool)

(assert (=> b!7000399 (=> (not res!2855551) (not e!4207786))))

(declare-fun lt!2495187 () Bool)

(assert (=> b!7000399 (= res!2855551 (not (= lt!2495202 lt!2495187)))))

(assert (=> b!7000399 (= lt!2495202 (matchZipper!2806 lt!2495223 (t!381096 s!7408)))))

(declare-fun lt!2495203 () Unit!161192)

(assert (=> b!7000399 (= lt!2495203 (lemmaConcatPreservesForall!602 lt!2495237 (exprs!6762 ct2!306) lambda!405067))))

(declare-fun e!4207777 () Bool)

(assert (=> b!7000399 (= (matchZipper!2806 lt!2495197 (t!381096 s!7408)) e!4207777)))

(declare-fun res!2855561 () Bool)

(assert (=> b!7000399 (=> res!2855561 e!4207777)))

(assert (=> b!7000399 (= res!2855561 lt!2495187)))

(assert (=> b!7000399 (= lt!2495187 (matchZipper!2806 lt!2495230 (t!381096 s!7408)))))

(declare-fun lt!2495200 () Unit!161192)

(assert (=> b!7000399 (= lt!2495200 (lemmaZipperConcatMatchesSameAsBothZippers!1439 lt!2495230 lt!2495235 (t!381096 s!7408)))))

(declare-fun lt!2495215 () Unit!161192)

(assert (=> b!7000399 (= lt!2495215 (lemmaConcatPreservesForall!602 lt!2495237 (exprs!6762 ct2!306) lambda!405067))))

(declare-fun lt!2495231 () Unit!161192)

(assert (=> b!7000399 (= lt!2495231 (lemmaConcatPreservesForall!602 lt!2495237 (exprs!6762 ct2!306) lambda!405067))))

(declare-fun b!7000400 () Bool)

(declare-fun res!2855550 () Bool)

(assert (=> b!7000400 (=> res!2855550 e!4207781)))

(assert (=> b!7000400 (= res!2855550 (not (set.member lt!2495211 lt!2495180)))))

(declare-fun b!7000401 () Bool)

(declare-fun e!4207772 () Bool)

(declare-fun e!4207785 () Bool)

(assert (=> b!7000401 (= e!4207772 e!4207785)))

(declare-fun res!2855547 () Bool)

(assert (=> b!7000401 (=> res!2855547 e!4207785)))

(declare-fun lt!2495190 () (Set Context!12524))

(assert (=> b!7000401 (= res!2855547 (not (matchZipper!2806 lt!2495190 s!7408)))))

(declare-fun lt!2495206 () Unit!161192)

(assert (=> b!7000401 (= lt!2495206 (lemmaConcatPreservesForall!602 lt!2495237 (exprs!6762 ct2!306) lambda!405067))))

(declare-fun b!7000402 () Bool)

(assert (=> b!7000402 (= e!4207779 e!4207772)))

(declare-fun res!2855544 () Bool)

(assert (=> b!7000402 (=> res!2855544 e!4207772)))

(assert (=> b!7000402 (= res!2855544 (not (= (derivationStepZipper!2746 lt!2495190 (h!73667 s!7408)) lt!2495235)))))

(declare-fun lt!2495222 () Unit!161192)

(assert (=> b!7000402 (= lt!2495222 (lemmaConcatPreservesForall!602 lt!2495237 (exprs!6762 ct2!306) lambda!405067))))

(declare-fun lt!2495232 () Unit!161192)

(assert (=> b!7000402 (= lt!2495232 (lemmaConcatPreservesForall!602 lt!2495237 (exprs!6762 ct2!306) lambda!405067))))

(assert (=> b!7000402 (= (flatMap!2252 lt!2495190 lambda!405068) (derivationStepZipperUp!1916 lt!2495228 (h!73667 s!7408)))))

(declare-fun lt!2495193 () Unit!161192)

(assert (=> b!7000402 (= lt!2495193 (lemmaFlatMapOnSingletonSet!1767 lt!2495190 lt!2495228 lambda!405068))))

(assert (=> b!7000402 (= lt!2495190 (set.insert lt!2495228 (as set.empty (Set Context!12524))))))

(declare-fun lt!2495210 () Unit!161192)

(assert (=> b!7000402 (= lt!2495210 (lemmaConcatPreservesForall!602 lt!2495237 (exprs!6762 ct2!306) lambda!405067))))

(declare-fun lt!2495209 () Unit!161192)

(assert (=> b!7000402 (= lt!2495209 (lemmaConcatPreservesForall!602 lt!2495237 (exprs!6762 ct2!306) lambda!405067))))

(declare-fun b!7000403 () Bool)

(assert (=> b!7000403 (= e!4207776 e!4207778)))

(declare-fun res!2855555 () Bool)

(assert (=> b!7000403 (=> res!2855555 e!4207778)))

(declare-fun nullable!7026 (Regex!17266) Bool)

(assert (=> b!7000403 (= res!2855555 (not (nullable!7026 (h!73668 (exprs!6762 lt!2495182)))))))

(declare-fun lt!2495186 () Context!12524)

(assert (=> b!7000403 (= lt!2495186 (Context!12525 lt!2495237))))

(declare-fun tail!13301 (List!67344) List!67344)

(assert (=> b!7000403 (= lt!2495237 (tail!13301 (exprs!6762 lt!2495182)))))

(declare-fun b!7000404 () Bool)

(assert (=> b!7000404 (= e!4207783 (matchZipper!2806 lt!2495219 lt!2495198))))

(declare-fun b!7000405 () Bool)

(declare-fun res!2855552 () Bool)

(assert (=> b!7000405 (=> res!2855552 e!4207773)))

(declare-fun lt!2495234 () Int)

(declare-fun zipperDepthTotal!487 (List!67345) Int)

(assert (=> b!7000405 (= res!2855552 (>= (zipperDepthTotal!487 (Cons!67221 lt!2495186 Nil!67221)) lt!2495234))))

(declare-fun b!7000406 () Bool)

(declare-fun res!2855553 () Bool)

(assert (=> b!7000406 (=> res!2855553 e!4207770)))

(declare-fun ++!15234 (List!67343 List!67343) List!67343)

(assert (=> b!7000406 (= res!2855553 (not (= (++!15234 (_1!37242 lt!2495184) (_2!37242 lt!2495184)) s!7408)))))

(declare-fun b!7000407 () Bool)

(assert (=> b!7000407 (= e!4207777 (matchZipper!2806 lt!2495235 (t!381096 s!7408)))))

(declare-fun e!4207780 () Bool)

(assert (=> b!7000408 (= e!4207780 e!4207776)))

(declare-fun res!2855562 () Bool)

(assert (=> b!7000408 (=> res!2855562 e!4207776)))

(declare-fun lt!2495218 () (Set Context!12524))

(assert (=> b!7000408 (= res!2855562 (not (= (derivationStepZipper!2746 lt!2495218 (h!73667 s!7408)) lt!2495223)))))

(assert (=> b!7000408 (= (flatMap!2252 lt!2495218 lambda!405068) (derivationStepZipperUp!1916 lt!2495194 (h!73667 s!7408)))))

(declare-fun lt!2495217 () Unit!161192)

(assert (=> b!7000408 (= lt!2495217 (lemmaFlatMapOnSingletonSet!1767 lt!2495218 lt!2495194 lambda!405068))))

(assert (=> b!7000408 (= lt!2495223 (derivationStepZipperUp!1916 lt!2495194 (h!73667 s!7408)))))

(declare-fun lt!2495192 () Unit!161192)

(assert (=> b!7000408 (= lt!2495192 (lemmaConcatPreservesForall!602 (exprs!6762 lt!2495182) (exprs!6762 ct2!306) lambda!405067))))

(declare-fun b!7000409 () Bool)

(assert (=> b!7000409 (= e!4207784 e!4207780)))

(declare-fun res!2855559 () Bool)

(assert (=> b!7000409 (=> res!2855559 e!4207780)))

(assert (=> b!7000409 (= res!2855559 (not (= lt!2495218 lt!2495188)))))

(assert (=> b!7000409 (= lt!2495218 (set.insert lt!2495194 (as set.empty (Set Context!12524))))))

(declare-fun lt!2495199 () Unit!161192)

(assert (=> b!7000409 (= lt!2495199 (lemmaConcatPreservesForall!602 (exprs!6762 lt!2495182) (exprs!6762 ct2!306) lambda!405067))))

(declare-fun b!7000410 () Bool)

(assert (=> b!7000410 (= e!4207786 (not (matchZipper!2806 lt!2495235 (t!381096 s!7408))))))

(declare-fun lt!2495204 () Unit!161192)

(assert (=> b!7000410 (= lt!2495204 (lemmaConcatPreservesForall!602 lt!2495237 (exprs!6762 ct2!306) lambda!405067))))

(declare-fun b!7000411 () Bool)

(assert (=> b!7000411 (= e!4207769 e!4207774)))

(declare-fun res!2855543 () Bool)

(assert (=> b!7000411 (=> res!2855543 e!4207774)))

(assert (=> b!7000411 (= res!2855543 (not (= lt!2495238 lt!2495226)))))

(assert (=> b!7000411 (= lt!2495226 (set.union lt!2495221 lt!2495219))))

(assert (=> b!7000411 (= lt!2495219 (derivationStepZipperUp!1916 lt!2495186 (h!73667 s!7408)))))

(assert (=> b!7000411 (= lt!2495221 (derivationStepZipperDown!1984 (h!73668 (exprs!6762 lt!2495182)) lt!2495186 (h!73667 s!7408)))))

(declare-fun b!7000412 () Bool)

(assert (=> b!7000412 (= e!4207785 e!4207773)))

(declare-fun res!2855558 () Bool)

(assert (=> b!7000412 (=> res!2855558 e!4207773)))

(declare-fun lt!2495196 () Int)

(declare-fun contextDepthTotal!459 (Context!12524) Int)

(assert (=> b!7000412 (= res!2855558 (<= lt!2495196 (contextDepthTotal!459 lt!2495186)))))

(assert (=> b!7000412 (<= lt!2495196 lt!2495234)))

(declare-fun lt!2495208 () List!67345)

(assert (=> b!7000412 (= lt!2495234 (zipperDepthTotal!487 lt!2495208))))

(assert (=> b!7000412 (= lt!2495196 (contextDepthTotal!459 lt!2495182))))

(declare-fun lt!2495236 () Unit!161192)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContext!27 (List!67345 Context!12524) Unit!161192)

(assert (=> b!7000412 (= lt!2495236 (lemmaTotalDepthZipperLargerThanOfAnyContext!27 lt!2495208 lt!2495182))))

(assert (=> b!7000412 (= lt!2495208 (toList!10626 z1!570))))

(declare-fun lt!2495207 () Unit!161192)

(assert (=> b!7000412 (= lt!2495207 (lemmaConcatPreservesForall!602 lt!2495237 (exprs!6762 ct2!306) lambda!405067))))

(declare-fun lt!2495189 () Unit!161192)

(assert (=> b!7000412 (= lt!2495189 (lemmaConcatPreservesForall!602 lt!2495237 (exprs!6762 ct2!306) lambda!405067))))

(declare-fun lt!2495183 () Unit!161192)

(assert (=> b!7000412 (= lt!2495183 (lemmaConcatPreservesForall!602 lt!2495237 (exprs!6762 ct2!306) lambda!405067))))

(assert (=> b!7000412 (= (flatMap!2252 lt!2495191 lambda!405068) (derivationStepZipperUp!1916 lt!2495186 (h!73667 s!7408)))))

(declare-fun lt!2495181 () Unit!161192)

(assert (=> b!7000412 (= lt!2495181 (lemmaFlatMapOnSingletonSet!1767 lt!2495191 lt!2495186 lambda!405068))))

(declare-fun map!15546 ((Set Context!12524) Int) (Set Context!12524))

(assert (=> b!7000412 (= (map!15546 lt!2495191 lambda!405066) (set.insert (Context!12525 (++!15233 lt!2495237 (exprs!6762 ct2!306))) (as set.empty (Set Context!12524))))))

(declare-fun lt!2495229 () Unit!161192)

(assert (=> b!7000412 (= lt!2495229 (lemmaConcatPreservesForall!602 lt!2495237 (exprs!6762 ct2!306) lambda!405067))))

(declare-fun lt!2495227 () Unit!161192)

(declare-fun lemmaMapOnSingletonSet!331 ((Set Context!12524) Context!12524 Int) Unit!161192)

(assert (=> b!7000412 (= lt!2495227 (lemmaMapOnSingletonSet!331 lt!2495191 lt!2495186 lambda!405066))))

(assert (=> b!7000412 (= lt!2495191 (set.insert lt!2495186 (as set.empty (Set Context!12524))))))

(assert (= (and start!673484 res!2855554) b!7000385))

(assert (= (and b!7000385 res!2855541) b!7000391))

(assert (= (and b!7000391 (not res!2855539)) b!7000400))

(assert (= (and b!7000400 (not res!2855550)) b!7000395))

(assert (= (and b!7000395 (not res!2855545)) b!7000409))

(assert (= (and b!7000409 (not res!2855559)) b!7000408))

(assert (= (and b!7000408 (not res!2855562)) b!7000394))

(assert (= (and b!7000394 (not res!2855542)) b!7000386))

(assert (= (and b!7000386 (not res!2855537)) b!7000403))

(assert (= (and b!7000403 (not res!2855555)) b!7000396))

(assert (= (and b!7000396 (not res!2855548)) b!7000399))

(assert (= (and b!7000399 (not res!2855561)) b!7000407))

(assert (= (and b!7000399 res!2855551) b!7000410))

(assert (= (and b!7000399 (not res!2855540)) b!7000393))

(assert (= (and b!7000393 (not res!2855546)) b!7000387))

(assert (= (and b!7000387 (not res!2855538)) b!7000402))

(assert (= (and b!7000402 (not res!2855544)) b!7000401))

(assert (= (and b!7000401 (not res!2855547)) b!7000412))

(assert (= (and b!7000412 (not res!2855558)) b!7000405))

(assert (= (and b!7000405 (not res!2855552)) b!7000398))

(assert (= (and b!7000398 (not res!2855557)) b!7000390))

(assert (= (and b!7000390 (not res!2855560)) b!7000406))

(assert (= (and b!7000406 (not res!2855553)) b!7000383))

(assert (= (and b!7000383 (not res!2855549)) b!7000392))

(assert (= (and b!7000392 (not res!2855563)) b!7000411))

(assert (= (and b!7000411 (not res!2855543)) b!7000384))

(assert (= (and b!7000384 (not res!2855556)) b!7000404))

(assert (= (and start!673484 condSetEmpty!48090) setIsEmpty!48090))

(assert (= (and start!673484 (not condSetEmpty!48090)) setNonEmpty!48090))

(assert (= setNonEmpty!48090 b!7000389))

(assert (= start!673484 b!7000388))

(assert (= (and start!673484 (is-Cons!67219 s!7408)) b!7000397))

(declare-fun m!7694176 () Bool)

(assert (=> b!7000405 m!7694176))

(declare-fun m!7694178 () Bool)

(assert (=> b!7000392 m!7694178))

(declare-fun m!7694180 () Bool)

(assert (=> b!7000392 m!7694180))

(declare-fun m!7694182 () Bool)

(assert (=> b!7000392 m!7694182))

(declare-fun m!7694184 () Bool)

(assert (=> b!7000392 m!7694184))

(declare-fun m!7694186 () Bool)

(assert (=> b!7000392 m!7694186))

(declare-fun m!7694188 () Bool)

(assert (=> b!7000411 m!7694188))

(declare-fun m!7694190 () Bool)

(assert (=> b!7000411 m!7694190))

(declare-fun m!7694192 () Bool)

(assert (=> b!7000407 m!7694192))

(declare-fun m!7694194 () Bool)

(assert (=> b!7000383 m!7694194))

(assert (=> b!7000387 m!7694192))

(declare-fun m!7694196 () Bool)

(assert (=> b!7000387 m!7694196))

(declare-fun m!7694198 () Bool)

(assert (=> b!7000400 m!7694198))

(declare-fun m!7694200 () Bool)

(assert (=> b!7000402 m!7694200))

(declare-fun m!7694202 () Bool)

(assert (=> b!7000402 m!7694202))

(assert (=> b!7000402 m!7694196))

(declare-fun m!7694204 () Bool)

(assert (=> b!7000402 m!7694204))

(declare-fun m!7694206 () Bool)

(assert (=> b!7000402 m!7694206))

(declare-fun m!7694208 () Bool)

(assert (=> b!7000402 m!7694208))

(assert (=> b!7000402 m!7694196))

(assert (=> b!7000402 m!7694196))

(assert (=> b!7000402 m!7694196))

(assert (=> b!7000399 m!7694196))

(declare-fun m!7694210 () Bool)

(assert (=> b!7000399 m!7694210))

(assert (=> b!7000399 m!7694196))

(declare-fun m!7694212 () Bool)

(assert (=> b!7000399 m!7694212))

(declare-fun m!7694214 () Bool)

(assert (=> b!7000399 m!7694214))

(assert (=> b!7000399 m!7694196))

(declare-fun m!7694216 () Bool)

(assert (=> b!7000399 m!7694216))

(declare-fun m!7694218 () Bool)

(assert (=> b!7000390 m!7694218))

(declare-fun m!7694220 () Bool)

(assert (=> b!7000412 m!7694220))

(declare-fun m!7694222 () Bool)

(assert (=> b!7000412 m!7694222))

(declare-fun m!7694224 () Bool)

(assert (=> b!7000412 m!7694224))

(assert (=> b!7000412 m!7694188))

(declare-fun m!7694226 () Bool)

(assert (=> b!7000412 m!7694226))

(declare-fun m!7694228 () Bool)

(assert (=> b!7000412 m!7694228))

(declare-fun m!7694230 () Bool)

(assert (=> b!7000412 m!7694230))

(declare-fun m!7694232 () Bool)

(assert (=> b!7000412 m!7694232))

(declare-fun m!7694234 () Bool)

(assert (=> b!7000412 m!7694234))

(declare-fun m!7694236 () Bool)

(assert (=> b!7000412 m!7694236))

(declare-fun m!7694238 () Bool)

(assert (=> b!7000412 m!7694238))

(declare-fun m!7694240 () Bool)

(assert (=> b!7000412 m!7694240))

(declare-fun m!7694242 () Bool)

(assert (=> b!7000412 m!7694242))

(assert (=> b!7000412 m!7694196))

(assert (=> b!7000412 m!7694196))

(assert (=> b!7000412 m!7694196))

(assert (=> b!7000412 m!7694196))

(declare-fun m!7694244 () Bool)

(assert (=> b!7000384 m!7694244))

(declare-fun m!7694246 () Bool)

(assert (=> b!7000384 m!7694246))

(declare-fun m!7694248 () Bool)

(assert (=> b!7000384 m!7694248))

(declare-fun m!7694250 () Bool)

(assert (=> b!7000384 m!7694250))

(assert (=> b!7000410 m!7694192))

(assert (=> b!7000410 m!7694196))

(declare-fun m!7694252 () Bool)

(assert (=> b!7000398 m!7694252))

(declare-fun m!7694254 () Bool)

(assert (=> b!7000398 m!7694254))

(declare-fun m!7694256 () Bool)

(assert (=> b!7000398 m!7694256))

(declare-fun m!7694258 () Bool)

(assert (=> b!7000398 m!7694258))

(declare-fun m!7694260 () Bool)

(assert (=> b!7000398 m!7694260))

(declare-fun m!7694262 () Bool)

(assert (=> b!7000398 m!7694262))

(declare-fun m!7694264 () Bool)

(assert (=> b!7000404 m!7694264))

(declare-fun m!7694266 () Bool)

(assert (=> b!7000409 m!7694266))

(declare-fun m!7694268 () Bool)

(assert (=> b!7000409 m!7694268))

(declare-fun m!7694270 () Bool)

(assert (=> b!7000408 m!7694270))

(declare-fun m!7694272 () Bool)

(assert (=> b!7000408 m!7694272))

(declare-fun m!7694274 () Bool)

(assert (=> b!7000408 m!7694274))

(declare-fun m!7694276 () Bool)

(assert (=> b!7000408 m!7694276))

(assert (=> b!7000408 m!7694268))

(declare-fun m!7694278 () Bool)

(assert (=> b!7000395 m!7694278))

(declare-fun m!7694280 () Bool)

(assert (=> b!7000395 m!7694280))

(assert (=> b!7000395 m!7694268))

(declare-fun m!7694282 () Bool)

(assert (=> b!7000395 m!7694282))

(declare-fun m!7694284 () Bool)

(assert (=> b!7000403 m!7694284))

(declare-fun m!7694286 () Bool)

(assert (=> b!7000403 m!7694286))

(declare-fun m!7694288 () Bool)

(assert (=> setNonEmpty!48090 m!7694288))

(declare-fun m!7694290 () Bool)

(assert (=> b!7000391 m!7694290))

(declare-fun m!7694292 () Bool)

(assert (=> b!7000391 m!7694292))

(declare-fun m!7694294 () Bool)

(assert (=> b!7000391 m!7694294))

(declare-fun m!7694296 () Bool)

(assert (=> b!7000391 m!7694296))

(declare-fun m!7694298 () Bool)

(assert (=> b!7000391 m!7694298))

(declare-fun m!7694300 () Bool)

(assert (=> b!7000391 m!7694300))

(declare-fun m!7694302 () Bool)

(assert (=> start!673484 m!7694302))

(declare-fun m!7694304 () Bool)

(assert (=> start!673484 m!7694304))

(declare-fun m!7694306 () Bool)

(assert (=> start!673484 m!7694306))

(declare-fun m!7694308 () Bool)

(assert (=> b!7000396 m!7694308))

(assert (=> b!7000396 m!7694236))

(assert (=> b!7000396 m!7694196))

(assert (=> b!7000396 m!7694196))

(assert (=> b!7000396 m!7694208))

(declare-fun m!7694310 () Bool)

(assert (=> b!7000386 m!7694310))

(declare-fun m!7694312 () Bool)

(assert (=> b!7000406 m!7694312))

(declare-fun m!7694314 () Bool)

(assert (=> b!7000401 m!7694314))

(assert (=> b!7000401 m!7694196))

(push 1)

(assert (not b!7000390))

(assert (not b!7000388))

(assert (not b!7000399))

(assert (not b!7000383))

(assert (not b!7000395))

(assert (not b!7000412))

(assert (not b!7000392))

(assert (not setNonEmpty!48090))

(assert (not b!7000401))

(assert (not b!7000389))

(assert (not b!7000409))

(assert (not b!7000386))

(assert (not b!7000396))

(assert (not b!7000397))

(assert (not b!7000387))

(assert (not b!7000410))

(assert (not b!7000406))

(assert (not b!7000407))

(assert (not start!673484))

(assert (not b!7000404))

(assert (not b!7000384))

(assert (not b!7000398))

(assert (not b!7000391))

(assert (not b!7000403))

(assert (not b!7000402))

(assert (not b!7000405))

(assert tp_is_empty!43757)

(assert (not b!7000411))

(assert (not b!7000408))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2182007 () Bool)

(declare-fun c!1299487 () Bool)

(declare-fun e!4207859 () Bool)

(assert (=> d!2182007 (= c!1299487 e!4207859)))

(declare-fun res!2855648 () Bool)

(assert (=> d!2182007 (=> (not res!2855648) (not e!4207859))))

(assert (=> d!2182007 (= res!2855648 (is-Cons!67220 (exprs!6762 lt!2495228)))))

(declare-fun e!4207858 () (Set Context!12524))

(assert (=> d!2182007 (= (derivationStepZipperUp!1916 lt!2495228 (h!73667 s!7408)) e!4207858)))

(declare-fun b!7000525 () Bool)

(assert (=> b!7000525 (= e!4207859 (nullable!7026 (h!73668 (exprs!6762 lt!2495228))))))

(declare-fun b!7000526 () Bool)

(declare-fun e!4207857 () (Set Context!12524))

(assert (=> b!7000526 (= e!4207857 (as set.empty (Set Context!12524)))))

(declare-fun b!7000527 () Bool)

(declare-fun call!635660 () (Set Context!12524))

(assert (=> b!7000527 (= e!4207857 call!635660)))

(declare-fun b!7000528 () Bool)

(assert (=> b!7000528 (= e!4207858 e!4207857)))

(declare-fun c!1299488 () Bool)

(assert (=> b!7000528 (= c!1299488 (is-Cons!67220 (exprs!6762 lt!2495228)))))

(declare-fun b!7000529 () Bool)

(assert (=> b!7000529 (= e!4207858 (set.union call!635660 (derivationStepZipperUp!1916 (Context!12525 (t!381097 (exprs!6762 lt!2495228))) (h!73667 s!7408))))))

(declare-fun bm!635655 () Bool)

(assert (=> bm!635655 (= call!635660 (derivationStepZipperDown!1984 (h!73668 (exprs!6762 lt!2495228)) (Context!12525 (t!381097 (exprs!6762 lt!2495228))) (h!73667 s!7408)))))

(assert (= (and d!2182007 res!2855648) b!7000525))

(assert (= (and d!2182007 c!1299487) b!7000529))

(assert (= (and d!2182007 (not c!1299487)) b!7000528))

(assert (= (and b!7000528 c!1299488) b!7000527))

(assert (= (and b!7000528 (not c!1299488)) b!7000526))

(assert (= (or b!7000529 b!7000527) bm!635655))

(declare-fun m!7694456 () Bool)

(assert (=> b!7000525 m!7694456))

(declare-fun m!7694458 () Bool)

(assert (=> b!7000529 m!7694458))

(declare-fun m!7694460 () Bool)

(assert (=> bm!635655 m!7694460))

(assert (=> b!7000396 d!2182007))

(declare-fun d!2182009 () Bool)

(declare-fun forall!16182 (List!67344 Int) Bool)

(assert (=> d!2182009 (forall!16182 (++!15233 lt!2495237 (exprs!6762 ct2!306)) lambda!405067)))

(declare-fun lt!2495422 () Unit!161192)

(declare-fun choose!52474 (List!67344 List!67344 Int) Unit!161192)

(assert (=> d!2182009 (= lt!2495422 (choose!52474 lt!2495237 (exprs!6762 ct2!306) lambda!405067))))

(assert (=> d!2182009 (forall!16182 lt!2495237 lambda!405067)))

(assert (=> d!2182009 (= (lemmaConcatPreservesForall!602 lt!2495237 (exprs!6762 ct2!306) lambda!405067) lt!2495422)))

(declare-fun bs!1864761 () Bool)

(assert (= bs!1864761 d!2182009))

(assert (=> bs!1864761 m!7694236))

(assert (=> bs!1864761 m!7694236))

(declare-fun m!7694462 () Bool)

(assert (=> bs!1864761 m!7694462))

(declare-fun m!7694464 () Bool)

(assert (=> bs!1864761 m!7694464))

(declare-fun m!7694466 () Bool)

(assert (=> bs!1864761 m!7694466))

(assert (=> b!7000396 d!2182009))

(declare-fun b!7000552 () Bool)

(declare-fun c!1299502 () Bool)

(declare-fun e!4207877 () Bool)

(assert (=> b!7000552 (= c!1299502 e!4207877)))

(declare-fun res!2855651 () Bool)

(assert (=> b!7000552 (=> (not res!2855651) (not e!4207877))))

(assert (=> b!7000552 (= res!2855651 (is-Concat!26111 (h!73668 (exprs!6762 lt!2495182))))))

(declare-fun e!4207875 () (Set Context!12524))

(declare-fun e!4207872 () (Set Context!12524))

(assert (=> b!7000552 (= e!4207875 e!4207872)))

(declare-fun bm!635668 () Bool)

(declare-fun c!1299501 () Bool)

(declare-fun call!635673 () (Set Context!12524))

(declare-fun call!635677 () List!67344)

(assert (=> bm!635668 (= call!635673 (derivationStepZipperDown!1984 (ite c!1299501 (regOne!35045 (h!73668 (exprs!6762 lt!2495182))) (regOne!35044 (h!73668 (exprs!6762 lt!2495182)))) (ite c!1299501 lt!2495228 (Context!12525 call!635677)) (h!73667 s!7408)))))

(declare-fun b!7000553 () Bool)

(declare-fun e!4207874 () (Set Context!12524))

(assert (=> b!7000553 (= e!4207874 (as set.empty (Set Context!12524)))))

(declare-fun b!7000554 () Bool)

(declare-fun e!4207876 () (Set Context!12524))

(assert (=> b!7000554 (= e!4207876 e!4207875)))

(assert (=> b!7000554 (= c!1299501 (is-Union!17266 (h!73668 (exprs!6762 lt!2495182))))))

(declare-fun b!7000555 () Bool)

(declare-fun e!4207873 () (Set Context!12524))

(declare-fun call!635676 () (Set Context!12524))

(assert (=> b!7000555 (= e!4207873 call!635676)))

(declare-fun b!7000556 () Bool)

(assert (=> b!7000556 (= e!4207874 call!635676)))

(declare-fun d!2182011 () Bool)

(declare-fun c!1299500 () Bool)

(assert (=> d!2182011 (= c!1299500 (and (is-ElementMatch!17266 (h!73668 (exprs!6762 lt!2495182))) (= (c!1299465 (h!73668 (exprs!6762 lt!2495182))) (h!73667 s!7408))))))

(assert (=> d!2182011 (= (derivationStepZipperDown!1984 (h!73668 (exprs!6762 lt!2495182)) lt!2495228 (h!73667 s!7408)) e!4207876)))

(declare-fun bm!635669 () Bool)

(declare-fun call!635678 () (Set Context!12524))

(assert (=> bm!635669 (= call!635676 call!635678)))

(declare-fun b!7000557 () Bool)

(assert (=> b!7000557 (= e!4207877 (nullable!7026 (regOne!35044 (h!73668 (exprs!6762 lt!2495182)))))))

(declare-fun b!7000558 () Bool)

(assert (=> b!7000558 (= e!4207876 (set.insert lt!2495228 (as set.empty (Set Context!12524))))))

(declare-fun bm!635670 () Bool)

(declare-fun call!635674 () (Set Context!12524))

(assert (=> bm!635670 (= call!635678 call!635674)))

(declare-fun b!7000559 () Bool)

(assert (=> b!7000559 (= e!4207872 e!4207873)))

(declare-fun c!1299499 () Bool)

(assert (=> b!7000559 (= c!1299499 (is-Concat!26111 (h!73668 (exprs!6762 lt!2495182))))))

(declare-fun b!7000560 () Bool)

(assert (=> b!7000560 (= e!4207872 (set.union call!635673 call!635678))))

(declare-fun call!635675 () List!67344)

(declare-fun bm!635671 () Bool)

(assert (=> bm!635671 (= call!635674 (derivationStepZipperDown!1984 (ite c!1299501 (regTwo!35045 (h!73668 (exprs!6762 lt!2495182))) (ite c!1299502 (regTwo!35044 (h!73668 (exprs!6762 lt!2495182))) (ite c!1299499 (regOne!35044 (h!73668 (exprs!6762 lt!2495182))) (reg!17595 (h!73668 (exprs!6762 lt!2495182)))))) (ite (or c!1299501 c!1299502) lt!2495228 (Context!12525 call!635675)) (h!73667 s!7408)))))

(declare-fun b!7000561 () Bool)

(assert (=> b!7000561 (= e!4207875 (set.union call!635673 call!635674))))

(declare-fun bm!635672 () Bool)

(assert (=> bm!635672 (= call!635675 call!635677)))

(declare-fun bm!635673 () Bool)

(declare-fun $colon$colon!2505 (List!67344 Regex!17266) List!67344)

(assert (=> bm!635673 (= call!635677 ($colon$colon!2505 (exprs!6762 lt!2495228) (ite (or c!1299502 c!1299499) (regTwo!35044 (h!73668 (exprs!6762 lt!2495182))) (h!73668 (exprs!6762 lt!2495182)))))))

(declare-fun b!7000562 () Bool)

(declare-fun c!1299503 () Bool)

(assert (=> b!7000562 (= c!1299503 (is-Star!17266 (h!73668 (exprs!6762 lt!2495182))))))

(assert (=> b!7000562 (= e!4207873 e!4207874)))

(assert (= (and d!2182011 c!1299500) b!7000558))

(assert (= (and d!2182011 (not c!1299500)) b!7000554))

(assert (= (and b!7000554 c!1299501) b!7000561))

(assert (= (and b!7000554 (not c!1299501)) b!7000552))

(assert (= (and b!7000552 res!2855651) b!7000557))

(assert (= (and b!7000552 c!1299502) b!7000560))

(assert (= (and b!7000552 (not c!1299502)) b!7000559))

(assert (= (and b!7000559 c!1299499) b!7000555))

(assert (= (and b!7000559 (not c!1299499)) b!7000562))

(assert (= (and b!7000562 c!1299503) b!7000556))

(assert (= (and b!7000562 (not c!1299503)) b!7000553))

(assert (= (or b!7000555 b!7000556) bm!635672))

(assert (= (or b!7000555 b!7000556) bm!635669))

(assert (= (or b!7000560 bm!635669) bm!635670))

(assert (= (or b!7000560 bm!635672) bm!635673))

(assert (= (or b!7000561 b!7000560) bm!635668))

(assert (= (or b!7000561 bm!635670) bm!635671))

(declare-fun m!7694468 () Bool)

(assert (=> bm!635668 m!7694468))

(declare-fun m!7694470 () Bool)

(assert (=> bm!635673 m!7694470))

(declare-fun m!7694472 () Bool)

(assert (=> bm!635671 m!7694472))

(declare-fun m!7694474 () Bool)

(assert (=> b!7000557 m!7694474))

(assert (=> b!7000558 m!7694204))

(assert (=> b!7000396 d!2182011))

(declare-fun b!7000573 () Bool)

(declare-fun res!2855656 () Bool)

(declare-fun e!4207882 () Bool)

(assert (=> b!7000573 (=> (not res!2855656) (not e!4207882))))

(declare-fun lt!2495425 () List!67344)

(declare-fun size!40937 (List!67344) Int)

(assert (=> b!7000573 (= res!2855656 (= (size!40937 lt!2495425) (+ (size!40937 lt!2495237) (size!40937 (exprs!6762 ct2!306)))))))

(declare-fun d!2182013 () Bool)

(assert (=> d!2182013 e!4207882))

(declare-fun res!2855657 () Bool)

(assert (=> d!2182013 (=> (not res!2855657) (not e!4207882))))

(declare-fun content!13312 (List!67344) (Set Regex!17266))

(assert (=> d!2182013 (= res!2855657 (= (content!13312 lt!2495425) (set.union (content!13312 lt!2495237) (content!13312 (exprs!6762 ct2!306)))))))

(declare-fun e!4207883 () List!67344)

(assert (=> d!2182013 (= lt!2495425 e!4207883)))

(declare-fun c!1299506 () Bool)

(assert (=> d!2182013 (= c!1299506 (is-Nil!67220 lt!2495237))))

(assert (=> d!2182013 (= (++!15233 lt!2495237 (exprs!6762 ct2!306)) lt!2495425)))

(declare-fun b!7000572 () Bool)

(assert (=> b!7000572 (= e!4207883 (Cons!67220 (h!73668 lt!2495237) (++!15233 (t!381097 lt!2495237) (exprs!6762 ct2!306))))))

(declare-fun b!7000574 () Bool)

(assert (=> b!7000574 (= e!4207882 (or (not (= (exprs!6762 ct2!306) Nil!67220)) (= lt!2495425 lt!2495237)))))

(declare-fun b!7000571 () Bool)

(assert (=> b!7000571 (= e!4207883 (exprs!6762 ct2!306))))

(assert (= (and d!2182013 c!1299506) b!7000571))

(assert (= (and d!2182013 (not c!1299506)) b!7000572))

(assert (= (and d!2182013 res!2855657) b!7000573))

(assert (= (and b!7000573 res!2855656) b!7000574))

(declare-fun m!7694476 () Bool)

(assert (=> b!7000573 m!7694476))

(declare-fun m!7694478 () Bool)

(assert (=> b!7000573 m!7694478))

(declare-fun m!7694480 () Bool)

(assert (=> b!7000573 m!7694480))

(declare-fun m!7694482 () Bool)

(assert (=> d!2182013 m!7694482))

(declare-fun m!7694484 () Bool)

(assert (=> d!2182013 m!7694484))

(declare-fun m!7694486 () Bool)

(assert (=> d!2182013 m!7694486))

(declare-fun m!7694488 () Bool)

(assert (=> b!7000572 m!7694488))

(assert (=> b!7000396 d!2182013))

(declare-fun d!2182015 () Bool)

(declare-fun c!1299509 () Bool)

(assert (=> d!2182015 (= c!1299509 (isEmpty!39243 (_1!37242 lt!2495184)))))

(declare-fun e!4207886 () Bool)

(assert (=> d!2182015 (= (matchZipper!2806 lt!2495191 (_1!37242 lt!2495184)) e!4207886)))

(declare-fun b!7000579 () Bool)

(declare-fun nullableZipper!2461 ((Set Context!12524)) Bool)

(assert (=> b!7000579 (= e!4207886 (nullableZipper!2461 lt!2495191))))

(declare-fun b!7000580 () Bool)

(declare-fun head!14141 (List!67343) C!34802)

(assert (=> b!7000580 (= e!4207886 (matchZipper!2806 (derivationStepZipper!2746 lt!2495191 (head!14141 (_1!37242 lt!2495184))) (tail!13300 (_1!37242 lt!2495184))))))

(assert (= (and d!2182015 c!1299509) b!7000579))

(assert (= (and d!2182015 (not c!1299509)) b!7000580))

(assert (=> d!2182015 m!7694194))

(declare-fun m!7694490 () Bool)

(assert (=> b!7000579 m!7694490))

(declare-fun m!7694492 () Bool)

(assert (=> b!7000580 m!7694492))

(assert (=> b!7000580 m!7694492))

(declare-fun m!7694494 () Bool)

(assert (=> b!7000580 m!7694494))

(assert (=> b!7000580 m!7694250))

(assert (=> b!7000580 m!7694494))

(assert (=> b!7000580 m!7694250))

(declare-fun m!7694496 () Bool)

(assert (=> b!7000580 m!7694496))

(assert (=> b!7000398 d!2182015))

(declare-fun d!2182017 () Bool)

(assert (=> d!2182017 (= (get!23569 lt!2495216) (v!53048 lt!2495216))))

(assert (=> b!7000398 d!2182017))

(declare-fun d!2182019 () Bool)

(assert (=> d!2182019 (isDefined!13472 (findConcatSeparationZippers!287 lt!2495191 (set.insert ct2!306 (as set.empty (Set Context!12524))) Nil!67219 s!7408 s!7408))))

(declare-fun lt!2495428 () Unit!161192)

(declare-fun choose!52475 ((Set Context!12524) Context!12524 List!67343) Unit!161192)

(assert (=> d!2182019 (= lt!2495428 (choose!52475 lt!2495191 ct2!306 s!7408))))

(assert (=> d!2182019 (matchZipper!2806 (appendTo!387 lt!2495191 ct2!306) s!7408)))

(assert (=> d!2182019 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!287 lt!2495191 ct2!306 s!7408) lt!2495428)))

(declare-fun bs!1864762 () Bool)

(assert (= bs!1864762 d!2182019))

(assert (=> bs!1864762 m!7694260))

(declare-fun m!7694498 () Bool)

(assert (=> bs!1864762 m!7694498))

(declare-fun m!7694500 () Bool)

(assert (=> bs!1864762 m!7694500))

(declare-fun m!7694502 () Bool)

(assert (=> bs!1864762 m!7694502))

(declare-fun m!7694504 () Bool)

(assert (=> bs!1864762 m!7694504))

(assert (=> bs!1864762 m!7694260))

(assert (=> bs!1864762 m!7694500))

(assert (=> bs!1864762 m!7694504))

(declare-fun m!7694506 () Bool)

(assert (=> bs!1864762 m!7694506))

(assert (=> b!7000398 d!2182019))

(declare-fun b!7000599 () Bool)

(declare-fun res!2855672 () Bool)

(declare-fun e!4207899 () Bool)

(assert (=> b!7000599 (=> (not res!2855672) (not e!4207899))))

(declare-fun lt!2495435 () Option!16771)

(assert (=> b!7000599 (= res!2855672 (matchZipper!2806 lt!2495213 (_2!37242 (get!23569 lt!2495435))))))

(declare-fun b!7000600 () Bool)

(declare-fun e!4207898 () Option!16771)

(assert (=> b!7000600 (= e!4207898 None!16770)))

(declare-fun d!2182021 () Bool)

(declare-fun e!4207897 () Bool)

(assert (=> d!2182021 e!4207897))

(declare-fun res!2855669 () Bool)

(assert (=> d!2182021 (=> res!2855669 e!4207897)))

(assert (=> d!2182021 (= res!2855669 e!4207899)))

(declare-fun res!2855670 () Bool)

(assert (=> d!2182021 (=> (not res!2855670) (not e!4207899))))

(assert (=> d!2182021 (= res!2855670 (isDefined!13472 lt!2495435))))

(declare-fun e!4207900 () Option!16771)

(assert (=> d!2182021 (= lt!2495435 e!4207900)))

(declare-fun c!1299514 () Bool)

(declare-fun e!4207901 () Bool)

(assert (=> d!2182021 (= c!1299514 e!4207901)))

(declare-fun res!2855671 () Bool)

(assert (=> d!2182021 (=> (not res!2855671) (not e!4207901))))

(assert (=> d!2182021 (= res!2855671 (matchZipper!2806 lt!2495191 Nil!67219))))

(assert (=> d!2182021 (= (++!15234 Nil!67219 s!7408) s!7408)))

(assert (=> d!2182021 (= (findConcatSeparationZippers!287 lt!2495191 lt!2495213 Nil!67219 s!7408 s!7408) lt!2495435)))

(declare-fun b!7000601 () Bool)

(declare-fun lt!2495436 () Unit!161192)

(declare-fun lt!2495437 () Unit!161192)

(assert (=> b!7000601 (= lt!2495436 lt!2495437)))

(assert (=> b!7000601 (= (++!15234 (++!15234 Nil!67219 (Cons!67219 (h!73667 s!7408) Nil!67219)) (t!381096 s!7408)) s!7408)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2881 (List!67343 C!34802 List!67343 List!67343) Unit!161192)

(assert (=> b!7000601 (= lt!2495437 (lemmaMoveElementToOtherListKeepsConcatEq!2881 Nil!67219 (h!73667 s!7408) (t!381096 s!7408) s!7408))))

(assert (=> b!7000601 (= e!4207898 (findConcatSeparationZippers!287 lt!2495191 lt!2495213 (++!15234 Nil!67219 (Cons!67219 (h!73667 s!7408) Nil!67219)) (t!381096 s!7408) s!7408))))

(declare-fun b!7000602 () Bool)

(declare-fun res!2855668 () Bool)

(assert (=> b!7000602 (=> (not res!2855668) (not e!4207899))))

(assert (=> b!7000602 (= res!2855668 (matchZipper!2806 lt!2495191 (_1!37242 (get!23569 lt!2495435))))))

(declare-fun b!7000603 () Bool)

(assert (=> b!7000603 (= e!4207900 e!4207898)))

(declare-fun c!1299515 () Bool)

(assert (=> b!7000603 (= c!1299515 (is-Nil!67219 s!7408))))

(declare-fun b!7000604 () Bool)

(assert (=> b!7000604 (= e!4207899 (= (++!15234 (_1!37242 (get!23569 lt!2495435)) (_2!37242 (get!23569 lt!2495435))) s!7408))))

(declare-fun b!7000605 () Bool)

(assert (=> b!7000605 (= e!4207900 (Some!16770 (tuple2!67879 Nil!67219 s!7408)))))

(declare-fun b!7000606 () Bool)

(assert (=> b!7000606 (= e!4207901 (matchZipper!2806 lt!2495213 s!7408))))

(declare-fun b!7000607 () Bool)

(assert (=> b!7000607 (= e!4207897 (not (isDefined!13472 lt!2495435)))))

(assert (= (and d!2182021 res!2855671) b!7000606))

(assert (= (and d!2182021 c!1299514) b!7000605))

(assert (= (and d!2182021 (not c!1299514)) b!7000603))

(assert (= (and b!7000603 c!1299515) b!7000600))

(assert (= (and b!7000603 (not c!1299515)) b!7000601))

(assert (= (and d!2182021 res!2855670) b!7000602))

(assert (= (and b!7000602 res!2855668) b!7000599))

(assert (= (and b!7000599 res!2855672) b!7000604))

(assert (= (and d!2182021 (not res!2855669)) b!7000607))

(declare-fun m!7694508 () Bool)

(assert (=> b!7000599 m!7694508))

(declare-fun m!7694510 () Bool)

(assert (=> b!7000599 m!7694510))

(declare-fun m!7694512 () Bool)

(assert (=> b!7000607 m!7694512))

(declare-fun m!7694514 () Bool)

(assert (=> b!7000606 m!7694514))

(assert (=> b!7000602 m!7694508))

(declare-fun m!7694516 () Bool)

(assert (=> b!7000602 m!7694516))

(assert (=> b!7000604 m!7694508))

(declare-fun m!7694518 () Bool)

(assert (=> b!7000604 m!7694518))

(declare-fun m!7694520 () Bool)

(assert (=> b!7000601 m!7694520))

(assert (=> b!7000601 m!7694520))

(declare-fun m!7694522 () Bool)

(assert (=> b!7000601 m!7694522))

(declare-fun m!7694524 () Bool)

(assert (=> b!7000601 m!7694524))

(assert (=> b!7000601 m!7694520))

(declare-fun m!7694526 () Bool)

(assert (=> b!7000601 m!7694526))

(assert (=> d!2182021 m!7694512))

(declare-fun m!7694528 () Bool)

(assert (=> d!2182021 m!7694528))

(declare-fun m!7694530 () Bool)

(assert (=> d!2182021 m!7694530))

(assert (=> b!7000398 d!2182021))

(declare-fun d!2182023 () Bool)

(declare-fun isEmpty!39247 (Option!16771) Bool)

(assert (=> d!2182023 (= (isDefined!13472 lt!2495216) (not (isEmpty!39247 lt!2495216)))))

(declare-fun bs!1864763 () Bool)

(assert (= bs!1864763 d!2182023))

(declare-fun m!7694532 () Bool)

(assert (=> bs!1864763 m!7694532))

(assert (=> b!7000398 d!2182023))

(declare-fun d!2182025 () Bool)

(declare-fun e!4207904 () Bool)

(assert (=> d!2182025 (= (matchZipper!2806 (set.union lt!2495230 lt!2495235) (t!381096 s!7408)) e!4207904)))

(declare-fun res!2855675 () Bool)

(assert (=> d!2182025 (=> res!2855675 e!4207904)))

(assert (=> d!2182025 (= res!2855675 (matchZipper!2806 lt!2495230 (t!381096 s!7408)))))

(declare-fun lt!2495440 () Unit!161192)

(declare-fun choose!52476 ((Set Context!12524) (Set Context!12524) List!67343) Unit!161192)

(assert (=> d!2182025 (= lt!2495440 (choose!52476 lt!2495230 lt!2495235 (t!381096 s!7408)))))

(assert (=> d!2182025 (= (lemmaZipperConcatMatchesSameAsBothZippers!1439 lt!2495230 lt!2495235 (t!381096 s!7408)) lt!2495440)))

(declare-fun b!7000610 () Bool)

(assert (=> b!7000610 (= e!4207904 (matchZipper!2806 lt!2495235 (t!381096 s!7408)))))

(assert (= (and d!2182025 (not res!2855675)) b!7000610))

(declare-fun m!7694534 () Bool)

(assert (=> d!2182025 m!7694534))

(assert (=> d!2182025 m!7694216))

(declare-fun m!7694536 () Bool)

(assert (=> d!2182025 m!7694536))

(assert (=> b!7000610 m!7694192))

(assert (=> b!7000399 d!2182025))

(declare-fun d!2182027 () Bool)

(declare-fun c!1299516 () Bool)

(assert (=> d!2182027 (= c!1299516 (isEmpty!39243 (t!381096 s!7408)))))

(declare-fun e!4207905 () Bool)

(assert (=> d!2182027 (= (matchZipper!2806 lt!2495223 (t!381096 s!7408)) e!4207905)))

(declare-fun b!7000611 () Bool)

(assert (=> b!7000611 (= e!4207905 (nullableZipper!2461 lt!2495223))))

(declare-fun b!7000612 () Bool)

(assert (=> b!7000612 (= e!4207905 (matchZipper!2806 (derivationStepZipper!2746 lt!2495223 (head!14141 (t!381096 s!7408))) (tail!13300 (t!381096 s!7408))))))

(assert (= (and d!2182027 c!1299516) b!7000611))

(assert (= (and d!2182027 (not c!1299516)) b!7000612))

(declare-fun m!7694538 () Bool)

(assert (=> d!2182027 m!7694538))

(declare-fun m!7694540 () Bool)

(assert (=> b!7000611 m!7694540))

(declare-fun m!7694542 () Bool)

(assert (=> b!7000612 m!7694542))

(assert (=> b!7000612 m!7694542))

(declare-fun m!7694544 () Bool)

(assert (=> b!7000612 m!7694544))

(declare-fun m!7694546 () Bool)

(assert (=> b!7000612 m!7694546))

(assert (=> b!7000612 m!7694544))

(assert (=> b!7000612 m!7694546))

(declare-fun m!7694548 () Bool)

(assert (=> b!7000612 m!7694548))

(assert (=> b!7000399 d!2182027))

(declare-fun d!2182029 () Bool)

(declare-fun c!1299517 () Bool)

(assert (=> d!2182029 (= c!1299517 (isEmpty!39243 (t!381096 s!7408)))))

(declare-fun e!4207906 () Bool)

(assert (=> d!2182029 (= (matchZipper!2806 lt!2495230 (t!381096 s!7408)) e!4207906)))

(declare-fun b!7000613 () Bool)

(assert (=> b!7000613 (= e!4207906 (nullableZipper!2461 lt!2495230))))

(declare-fun b!7000614 () Bool)

(assert (=> b!7000614 (= e!4207906 (matchZipper!2806 (derivationStepZipper!2746 lt!2495230 (head!14141 (t!381096 s!7408))) (tail!13300 (t!381096 s!7408))))))

(assert (= (and d!2182029 c!1299517) b!7000613))

(assert (= (and d!2182029 (not c!1299517)) b!7000614))

(assert (=> d!2182029 m!7694538))

(declare-fun m!7694550 () Bool)

(assert (=> b!7000613 m!7694550))

(assert (=> b!7000614 m!7694542))

(assert (=> b!7000614 m!7694542))

(declare-fun m!7694552 () Bool)

(assert (=> b!7000614 m!7694552))

(assert (=> b!7000614 m!7694546))

(assert (=> b!7000614 m!7694552))

(assert (=> b!7000614 m!7694546))

(declare-fun m!7694554 () Bool)

(assert (=> b!7000614 m!7694554))

(assert (=> b!7000399 d!2182029))

(assert (=> b!7000399 d!2182009))

(declare-fun d!2182031 () Bool)

(declare-fun c!1299518 () Bool)

(assert (=> d!2182031 (= c!1299518 (isEmpty!39243 (t!381096 s!7408)))))

(declare-fun e!4207907 () Bool)

(assert (=> d!2182031 (= (matchZipper!2806 lt!2495197 (t!381096 s!7408)) e!4207907)))

(declare-fun b!7000615 () Bool)

(assert (=> b!7000615 (= e!4207907 (nullableZipper!2461 lt!2495197))))

(declare-fun b!7000616 () Bool)

(assert (=> b!7000616 (= e!4207907 (matchZipper!2806 (derivationStepZipper!2746 lt!2495197 (head!14141 (t!381096 s!7408))) (tail!13300 (t!381096 s!7408))))))

(assert (= (and d!2182031 c!1299518) b!7000615))

(assert (= (and d!2182031 (not c!1299518)) b!7000616))

(assert (=> d!2182031 m!7694538))

(declare-fun m!7694556 () Bool)

(assert (=> b!7000615 m!7694556))

(assert (=> b!7000616 m!7694542))

(assert (=> b!7000616 m!7694542))

(declare-fun m!7694558 () Bool)

(assert (=> b!7000616 m!7694558))

(assert (=> b!7000616 m!7694546))

(assert (=> b!7000616 m!7694558))

(assert (=> b!7000616 m!7694546))

(declare-fun m!7694560 () Bool)

(assert (=> b!7000616 m!7694560))

(assert (=> b!7000399 d!2182031))

(declare-fun bs!1864764 () Bool)

(declare-fun d!2182033 () Bool)

(assert (= bs!1864764 (and d!2182033 b!7000408)))

(declare-fun lambda!405133 () Int)

(assert (=> bs!1864764 (= lambda!405133 lambda!405068)))

(assert (=> d!2182033 true))

(assert (=> d!2182033 (= (derivationStepZipper!2746 lt!2495212 (h!73667 s!7408)) (flatMap!2252 lt!2495212 lambda!405133))))

(declare-fun bs!1864765 () Bool)

(assert (= bs!1864765 d!2182033))

(declare-fun m!7694562 () Bool)

(assert (=> bs!1864765 m!7694562))

(assert (=> b!7000392 d!2182033))

(declare-fun d!2182035 () Bool)

(declare-fun c!1299521 () Bool)

(declare-fun e!4207910 () Bool)

(assert (=> d!2182035 (= c!1299521 e!4207910)))

(declare-fun res!2855676 () Bool)

(assert (=> d!2182035 (=> (not res!2855676) (not e!4207910))))

(assert (=> d!2182035 (= res!2855676 (is-Cons!67220 (exprs!6762 lt!2495182)))))

(declare-fun e!4207909 () (Set Context!12524))

(assert (=> d!2182035 (= (derivationStepZipperUp!1916 lt!2495182 (h!73667 s!7408)) e!4207909)))

(declare-fun b!7000619 () Bool)

(assert (=> b!7000619 (= e!4207910 (nullable!7026 (h!73668 (exprs!6762 lt!2495182))))))

(declare-fun b!7000620 () Bool)

(declare-fun e!4207908 () (Set Context!12524))

(assert (=> b!7000620 (= e!4207908 (as set.empty (Set Context!12524)))))

(declare-fun b!7000621 () Bool)

(declare-fun call!635679 () (Set Context!12524))

(assert (=> b!7000621 (= e!4207908 call!635679)))

(declare-fun b!7000622 () Bool)

(assert (=> b!7000622 (= e!4207909 e!4207908)))

(declare-fun c!1299522 () Bool)

(assert (=> b!7000622 (= c!1299522 (is-Cons!67220 (exprs!6762 lt!2495182)))))

(declare-fun b!7000623 () Bool)

(assert (=> b!7000623 (= e!4207909 (set.union call!635679 (derivationStepZipperUp!1916 (Context!12525 (t!381097 (exprs!6762 lt!2495182))) (h!73667 s!7408))))))

(declare-fun bm!635674 () Bool)

(assert (=> bm!635674 (= call!635679 (derivationStepZipperDown!1984 (h!73668 (exprs!6762 lt!2495182)) (Context!12525 (t!381097 (exprs!6762 lt!2495182))) (h!73667 s!7408)))))

(assert (= (and d!2182035 res!2855676) b!7000619))

(assert (= (and d!2182035 c!1299521) b!7000623))

(assert (= (and d!2182035 (not c!1299521)) b!7000622))

(assert (= (and b!7000622 c!1299522) b!7000621))

(assert (= (and b!7000622 (not c!1299522)) b!7000620))

(assert (= (or b!7000623 b!7000621) bm!635674))

(assert (=> b!7000619 m!7694284))

(declare-fun m!7694564 () Bool)

(assert (=> b!7000623 m!7694564))

(declare-fun m!7694566 () Bool)

(assert (=> bm!635674 m!7694566))

(assert (=> b!7000392 d!2182035))

(declare-fun d!2182037 () Bool)

(declare-fun choose!52477 ((Set Context!12524) Int) (Set Context!12524))

(assert (=> d!2182037 (= (flatMap!2252 lt!2495212 lambda!405068) (choose!52477 lt!2495212 lambda!405068))))

(declare-fun bs!1864766 () Bool)

(assert (= bs!1864766 d!2182037))

(declare-fun m!7694568 () Bool)

(assert (=> bs!1864766 m!7694568))

(assert (=> b!7000392 d!2182037))

(declare-fun d!2182039 () Bool)

(declare-fun dynLambda!26998 (Int Context!12524) (Set Context!12524))

(assert (=> d!2182039 (= (flatMap!2252 lt!2495212 lambda!405068) (dynLambda!26998 lambda!405068 lt!2495182))))

(declare-fun lt!2495443 () Unit!161192)

(declare-fun choose!52478 ((Set Context!12524) Context!12524 Int) Unit!161192)

(assert (=> d!2182039 (= lt!2495443 (choose!52478 lt!2495212 lt!2495182 lambda!405068))))

(assert (=> d!2182039 (= lt!2495212 (set.insert lt!2495182 (as set.empty (Set Context!12524))))))

(assert (=> d!2182039 (= (lemmaFlatMapOnSingletonSet!1767 lt!2495212 lt!2495182 lambda!405068) lt!2495443)))

(declare-fun b_lambda!263655 () Bool)

(assert (=> (not b_lambda!263655) (not d!2182039)))

(declare-fun bs!1864767 () Bool)

(assert (= bs!1864767 d!2182039))

(assert (=> bs!1864767 m!7694184))

(declare-fun m!7694570 () Bool)

(assert (=> bs!1864767 m!7694570))

(declare-fun m!7694572 () Bool)

(assert (=> bs!1864767 m!7694572))

(assert (=> bs!1864767 m!7694182))

(assert (=> b!7000392 d!2182039))

(declare-fun d!2182041 () Bool)

(declare-fun c!1299523 () Bool)

(assert (=> d!2182041 (= c!1299523 (isEmpty!39243 (_2!37242 lt!2495184)))))

(declare-fun e!4207911 () Bool)

(assert (=> d!2182041 (= (matchZipper!2806 lt!2495213 (_2!37242 lt!2495184)) e!4207911)))

(declare-fun b!7000624 () Bool)

(assert (=> b!7000624 (= e!4207911 (nullableZipper!2461 lt!2495213))))

(declare-fun b!7000625 () Bool)

(assert (=> b!7000625 (= e!4207911 (matchZipper!2806 (derivationStepZipper!2746 lt!2495213 (head!14141 (_2!37242 lt!2495184))) (tail!13300 (_2!37242 lt!2495184))))))

(assert (= (and d!2182041 c!1299523) b!7000624))

(assert (= (and d!2182041 (not c!1299523)) b!7000625))

(declare-fun m!7694574 () Bool)

(assert (=> d!2182041 m!7694574))

(declare-fun m!7694576 () Bool)

(assert (=> b!7000624 m!7694576))

(declare-fun m!7694578 () Bool)

(assert (=> b!7000625 m!7694578))

(assert (=> b!7000625 m!7694578))

(declare-fun m!7694580 () Bool)

(assert (=> b!7000625 m!7694580))

(declare-fun m!7694582 () Bool)

(assert (=> b!7000625 m!7694582))

(assert (=> b!7000625 m!7694580))

(assert (=> b!7000625 m!7694582))

(declare-fun m!7694584 () Bool)

(assert (=> b!7000625 m!7694584))

(assert (=> b!7000390 d!2182041))

(declare-fun d!2182043 () Bool)

(declare-fun e!4207914 () Bool)

(assert (=> d!2182043 e!4207914))

(declare-fun res!2855679 () Bool)

(assert (=> d!2182043 (=> (not res!2855679) (not e!4207914))))

(declare-fun lt!2495446 () Context!12524)

(declare-fun dynLambda!26999 (Int Context!12524) Bool)

(assert (=> d!2182043 (= res!2855679 (dynLambda!26999 lambda!405065 lt!2495446))))

(declare-fun getWitness!1187 (List!67345 Int) Context!12524)

(assert (=> d!2182043 (= lt!2495446 (getWitness!1187 (toList!10626 lt!2495180) lambda!405065))))

(declare-fun exists!3083 ((Set Context!12524) Int) Bool)

(assert (=> d!2182043 (exists!3083 lt!2495180 lambda!405065)))

(assert (=> d!2182043 (= (getWitness!1185 lt!2495180 lambda!405065) lt!2495446)))

(declare-fun b!7000628 () Bool)

(assert (=> b!7000628 (= e!4207914 (set.member lt!2495446 lt!2495180))))

(assert (= (and d!2182043 res!2855679) b!7000628))

(declare-fun b_lambda!263657 () Bool)

(assert (=> (not b_lambda!263657) (not d!2182043)))

(declare-fun m!7694586 () Bool)

(assert (=> d!2182043 m!7694586))

(assert (=> d!2182043 m!7694294))

(assert (=> d!2182043 m!7694294))

(declare-fun m!7694588 () Bool)

(assert (=> d!2182043 m!7694588))

(declare-fun m!7694590 () Bool)

(assert (=> d!2182043 m!7694590))

(declare-fun m!7694592 () Bool)

(assert (=> b!7000628 m!7694592))

(assert (=> b!7000391 d!2182043))

(declare-fun d!2182045 () Bool)

(declare-fun c!1299524 () Bool)

(assert (=> d!2182045 (= c!1299524 (isEmpty!39243 s!7408))))

(declare-fun e!4207915 () Bool)

(assert (=> d!2182045 (= (matchZipper!2806 lt!2495188 s!7408) e!4207915)))

(declare-fun b!7000629 () Bool)

(assert (=> b!7000629 (= e!4207915 (nullableZipper!2461 lt!2495188))))

(declare-fun b!7000630 () Bool)

(assert (=> b!7000630 (= e!4207915 (matchZipper!2806 (derivationStepZipper!2746 lt!2495188 (head!14141 s!7408)) (tail!13300 s!7408)))))

(assert (= (and d!2182045 c!1299524) b!7000629))

(assert (= (and d!2182045 (not c!1299524)) b!7000630))

(declare-fun m!7694594 () Bool)

(assert (=> d!2182045 m!7694594))

(declare-fun m!7694596 () Bool)

(assert (=> b!7000629 m!7694596))

(declare-fun m!7694598 () Bool)

(assert (=> b!7000630 m!7694598))

(assert (=> b!7000630 m!7694598))

(declare-fun m!7694600 () Bool)

(assert (=> b!7000630 m!7694600))

(declare-fun m!7694602 () Bool)

(assert (=> b!7000630 m!7694602))

(assert (=> b!7000630 m!7694600))

(assert (=> b!7000630 m!7694602))

(declare-fun m!7694604 () Bool)

(assert (=> b!7000630 m!7694604))

(assert (=> b!7000391 d!2182045))

(declare-fun d!2182047 () Bool)

(declare-fun e!4207918 () Bool)

(assert (=> d!2182047 e!4207918))

(declare-fun res!2855682 () Bool)

(assert (=> d!2182047 (=> (not res!2855682) (not e!4207918))))

(declare-fun lt!2495449 () List!67345)

(declare-fun noDuplicate!2543 (List!67345) Bool)

(assert (=> d!2182047 (= res!2855682 (noDuplicate!2543 lt!2495449))))

(declare-fun choose!52479 ((Set Context!12524)) List!67345)

(assert (=> d!2182047 (= lt!2495449 (choose!52479 lt!2495180))))

(assert (=> d!2182047 (= (toList!10626 lt!2495180) lt!2495449)))

(declare-fun b!7000633 () Bool)

(declare-fun content!13313 (List!67345) (Set Context!12524))

(assert (=> b!7000633 (= e!4207918 (= (content!13313 lt!2495449) lt!2495180))))

(assert (= (and d!2182047 res!2855682) b!7000633))

(declare-fun m!7694606 () Bool)

(assert (=> d!2182047 m!7694606))

(declare-fun m!7694608 () Bool)

(assert (=> d!2182047 m!7694608))

(declare-fun m!7694610 () Bool)

(assert (=> b!7000633 m!7694610))

(assert (=> b!7000391 d!2182047))

(declare-fun bs!1864768 () Bool)

(declare-fun d!2182049 () Bool)

(assert (= bs!1864768 (and d!2182049 b!7000391)))

(declare-fun lambda!405136 () Int)

(assert (=> bs!1864768 (not (= lambda!405136 lambda!405065))))

(assert (=> d!2182049 true))

(declare-fun order!27973 () Int)

(declare-fun dynLambda!27000 (Int Int) Int)

(assert (=> d!2182049 (< (dynLambda!27000 order!27973 lambda!405065) (dynLambda!27000 order!27973 lambda!405136))))

(declare-fun forall!16183 (List!67345 Int) Bool)

(assert (=> d!2182049 (= (exists!3081 lt!2495185 lambda!405065) (not (forall!16183 lt!2495185 lambda!405136)))))

(declare-fun bs!1864769 () Bool)

(assert (= bs!1864769 d!2182049))

(declare-fun m!7694612 () Bool)

(assert (=> bs!1864769 m!7694612))

(assert (=> b!7000391 d!2182049))

(declare-fun bs!1864770 () Bool)

(declare-fun d!2182051 () Bool)

(assert (= bs!1864770 (and d!2182051 b!7000391)))

(declare-fun lambda!405139 () Int)

(assert (=> bs!1864770 (= lambda!405139 lambda!405065)))

(declare-fun bs!1864771 () Bool)

(assert (= bs!1864771 (and d!2182051 d!2182049)))

(assert (=> bs!1864771 (not (= lambda!405139 lambda!405136))))

(assert (=> d!2182051 true))

(assert (=> d!2182051 (exists!3081 lt!2495185 lambda!405139)))

(declare-fun lt!2495452 () Unit!161192)

(declare-fun choose!52480 (List!67345 List!67343) Unit!161192)

(assert (=> d!2182051 (= lt!2495452 (choose!52480 lt!2495185 s!7408))))

(assert (=> d!2182051 (matchZipper!2806 (content!13313 lt!2495185) s!7408)))

(assert (=> d!2182051 (= (lemmaZipperMatchesExistsMatchingContext!235 lt!2495185 s!7408) lt!2495452)))

(declare-fun bs!1864772 () Bool)

(assert (= bs!1864772 d!2182051))

(declare-fun m!7694614 () Bool)

(assert (=> bs!1864772 m!7694614))

(declare-fun m!7694616 () Bool)

(assert (=> bs!1864772 m!7694616))

(declare-fun m!7694618 () Bool)

(assert (=> bs!1864772 m!7694618))

(assert (=> bs!1864772 m!7694618))

(declare-fun m!7694620 () Bool)

(assert (=> bs!1864772 m!7694620))

(assert (=> b!7000391 d!2182051))

(declare-fun d!2182053 () Bool)

(declare-fun c!1299527 () Bool)

(declare-fun e!4207921 () Bool)

(assert (=> d!2182053 (= c!1299527 e!4207921)))

(declare-fun res!2855683 () Bool)

(assert (=> d!2182053 (=> (not res!2855683) (not e!4207921))))

(assert (=> d!2182053 (= res!2855683 (is-Cons!67220 (exprs!6762 lt!2495186)))))

(declare-fun e!4207920 () (Set Context!12524))

(assert (=> d!2182053 (= (derivationStepZipperUp!1916 lt!2495186 (h!73667 s!7408)) e!4207920)))

(declare-fun b!7000636 () Bool)

(assert (=> b!7000636 (= e!4207921 (nullable!7026 (h!73668 (exprs!6762 lt!2495186))))))

(declare-fun b!7000637 () Bool)

(declare-fun e!4207919 () (Set Context!12524))

(assert (=> b!7000637 (= e!4207919 (as set.empty (Set Context!12524)))))

(declare-fun b!7000638 () Bool)

(declare-fun call!635680 () (Set Context!12524))

(assert (=> b!7000638 (= e!4207919 call!635680)))

(declare-fun b!7000639 () Bool)

(assert (=> b!7000639 (= e!4207920 e!4207919)))

(declare-fun c!1299528 () Bool)

(assert (=> b!7000639 (= c!1299528 (is-Cons!67220 (exprs!6762 lt!2495186)))))

(declare-fun b!7000640 () Bool)

(assert (=> b!7000640 (= e!4207920 (set.union call!635680 (derivationStepZipperUp!1916 (Context!12525 (t!381097 (exprs!6762 lt!2495186))) (h!73667 s!7408))))))

(declare-fun bm!635675 () Bool)

(assert (=> bm!635675 (= call!635680 (derivationStepZipperDown!1984 (h!73668 (exprs!6762 lt!2495186)) (Context!12525 (t!381097 (exprs!6762 lt!2495186))) (h!73667 s!7408)))))

(assert (= (and d!2182053 res!2855683) b!7000636))

(assert (= (and d!2182053 c!1299527) b!7000640))

(assert (= (and d!2182053 (not c!1299527)) b!7000639))

(assert (= (and b!7000639 c!1299528) b!7000638))

(assert (= (and b!7000639 (not c!1299528)) b!7000637))

(assert (= (or b!7000640 b!7000638) bm!635675))

(declare-fun m!7694622 () Bool)

(assert (=> b!7000636 m!7694622))

(declare-fun m!7694624 () Bool)

(assert (=> b!7000640 m!7694624))

(declare-fun m!7694626 () Bool)

(assert (=> bm!635675 m!7694626))

(assert (=> b!7000412 d!2182053))

(declare-fun d!2182055 () Bool)

(declare-fun e!4207922 () Bool)

(assert (=> d!2182055 e!4207922))

(declare-fun res!2855684 () Bool)

(assert (=> d!2182055 (=> (not res!2855684) (not e!4207922))))

(declare-fun lt!2495453 () List!67345)

(assert (=> d!2182055 (= res!2855684 (noDuplicate!2543 lt!2495453))))

(assert (=> d!2182055 (= lt!2495453 (choose!52479 z1!570))))

(assert (=> d!2182055 (= (toList!10626 z1!570) lt!2495453)))

(declare-fun b!7000641 () Bool)

(assert (=> b!7000641 (= e!4207922 (= (content!13313 lt!2495453) z1!570))))

(assert (= (and d!2182055 res!2855684) b!7000641))

(declare-fun m!7694628 () Bool)

(assert (=> d!2182055 m!7694628))

(declare-fun m!7694630 () Bool)

(assert (=> d!2182055 m!7694630))

(declare-fun m!7694632 () Bool)

(assert (=> b!7000641 m!7694632))

(assert (=> b!7000412 d!2182055))

(declare-fun d!2182057 () Bool)

(assert (=> d!2182057 (<= (contextDepthTotal!459 lt!2495182) (zipperDepthTotal!487 lt!2495208))))

(declare-fun lt!2495456 () Unit!161192)

(declare-fun choose!52481 (List!67345 Context!12524) Unit!161192)

(assert (=> d!2182057 (= lt!2495456 (choose!52481 lt!2495208 lt!2495182))))

(declare-fun contains!20423 (List!67345 Context!12524) Bool)

(assert (=> d!2182057 (contains!20423 lt!2495208 lt!2495182)))

(assert (=> d!2182057 (= (lemmaTotalDepthZipperLargerThanOfAnyContext!27 lt!2495208 lt!2495182) lt!2495456)))

(declare-fun bs!1864773 () Bool)

(assert (= bs!1864773 d!2182057))

(assert (=> bs!1864773 m!7694226))

(assert (=> bs!1864773 m!7694240))

(declare-fun m!7694634 () Bool)

(assert (=> bs!1864773 m!7694634))

(declare-fun m!7694636 () Bool)

(assert (=> bs!1864773 m!7694636))

(assert (=> b!7000412 d!2182057))

(declare-fun d!2182059 () Bool)

(declare-fun dynLambda!27001 (Int Context!12524) Context!12524)

(assert (=> d!2182059 (= (map!15546 lt!2495191 lambda!405066) (set.insert (dynLambda!27001 lambda!405066 lt!2495186) (as set.empty (Set Context!12524))))))

(declare-fun lt!2495459 () Unit!161192)

(declare-fun choose!52482 ((Set Context!12524) Context!12524 Int) Unit!161192)

(assert (=> d!2182059 (= lt!2495459 (choose!52482 lt!2495191 lt!2495186 lambda!405066))))

(assert (=> d!2182059 (= lt!2495191 (set.insert lt!2495186 (as set.empty (Set Context!12524))))))

(assert (=> d!2182059 (= (lemmaMapOnSingletonSet!331 lt!2495191 lt!2495186 lambda!405066) lt!2495459)))

(declare-fun b_lambda!263659 () Bool)

(assert (=> (not b_lambda!263659) (not d!2182059)))

(declare-fun bs!1864774 () Bool)

(assert (= bs!1864774 d!2182059))

(declare-fun m!7694638 () Bool)

(assert (=> bs!1864774 m!7694638))

(declare-fun m!7694640 () Bool)

(assert (=> bs!1864774 m!7694640))

(assert (=> bs!1864774 m!7694640))

(declare-fun m!7694642 () Bool)

(assert (=> bs!1864774 m!7694642))

(assert (=> bs!1864774 m!7694220))

(assert (=> bs!1864774 m!7694238))

(assert (=> b!7000412 d!2182059))

(declare-fun d!2182061 () Bool)

(declare-fun lt!2495462 () Int)

(assert (=> d!2182061 (>= lt!2495462 0)))

(declare-fun e!4207925 () Int)

(assert (=> d!2182061 (= lt!2495462 e!4207925)))

(declare-fun c!1299533 () Bool)

(assert (=> d!2182061 (= c!1299533 (is-Cons!67220 (exprs!6762 lt!2495182)))))

(assert (=> d!2182061 (= (contextDepthTotal!459 lt!2495182) lt!2495462)))

(declare-fun b!7000646 () Bool)

(declare-fun regexDepthTotal!281 (Regex!17266) Int)

(assert (=> b!7000646 (= e!4207925 (+ (regexDepthTotal!281 (h!73668 (exprs!6762 lt!2495182))) (contextDepthTotal!459 (Context!12525 (t!381097 (exprs!6762 lt!2495182))))))))

(declare-fun b!7000647 () Bool)

(assert (=> b!7000647 (= e!4207925 1)))

(assert (= (and d!2182061 c!1299533) b!7000646))

(assert (= (and d!2182061 (not c!1299533)) b!7000647))

(declare-fun m!7694644 () Bool)

(assert (=> b!7000646 m!7694644))

(declare-fun m!7694646 () Bool)

(assert (=> b!7000646 m!7694646))

(assert (=> b!7000412 d!2182061))

(declare-fun d!2182063 () Bool)

(declare-fun lt!2495463 () Int)

(assert (=> d!2182063 (>= lt!2495463 0)))

(declare-fun e!4207926 () Int)

(assert (=> d!2182063 (= lt!2495463 e!4207926)))

(declare-fun c!1299534 () Bool)

(assert (=> d!2182063 (= c!1299534 (is-Cons!67220 (exprs!6762 lt!2495186)))))

(assert (=> d!2182063 (= (contextDepthTotal!459 lt!2495186) lt!2495463)))

(declare-fun b!7000648 () Bool)

(assert (=> b!7000648 (= e!4207926 (+ (regexDepthTotal!281 (h!73668 (exprs!6762 lt!2495186))) (contextDepthTotal!459 (Context!12525 (t!381097 (exprs!6762 lt!2495186))))))))

(declare-fun b!7000649 () Bool)

(assert (=> b!7000649 (= e!4207926 1)))

(assert (= (and d!2182063 c!1299534) b!7000648))

(assert (= (and d!2182063 (not c!1299534)) b!7000649))

(declare-fun m!7694648 () Bool)

(assert (=> b!7000648 m!7694648))

(declare-fun m!7694650 () Bool)

(assert (=> b!7000648 m!7694650))

(assert (=> b!7000412 d!2182063))

(declare-fun d!2182065 () Bool)

(assert (=> d!2182065 (= (flatMap!2252 lt!2495191 lambda!405068) (dynLambda!26998 lambda!405068 lt!2495186))))

(declare-fun lt!2495464 () Unit!161192)

(assert (=> d!2182065 (= lt!2495464 (choose!52478 lt!2495191 lt!2495186 lambda!405068))))

(assert (=> d!2182065 (= lt!2495191 (set.insert lt!2495186 (as set.empty (Set Context!12524))))))

(assert (=> d!2182065 (= (lemmaFlatMapOnSingletonSet!1767 lt!2495191 lt!2495186 lambda!405068) lt!2495464)))

(declare-fun b_lambda!263661 () Bool)

(assert (=> (not b_lambda!263661) (not d!2182065)))

(declare-fun bs!1864775 () Bool)

(assert (= bs!1864775 d!2182065))

(assert (=> bs!1864775 m!7694234))

(declare-fun m!7694652 () Bool)

(assert (=> bs!1864775 m!7694652))

(declare-fun m!7694654 () Bool)

(assert (=> bs!1864775 m!7694654))

(assert (=> bs!1864775 m!7694238))

(assert (=> b!7000412 d!2182065))

(assert (=> b!7000412 d!2182013))

(declare-fun d!2182067 () Bool)

(declare-fun choose!52483 ((Set Context!12524) Int) (Set Context!12524))

(assert (=> d!2182067 (= (map!15546 lt!2495191 lambda!405066) (choose!52483 lt!2495191 lambda!405066))))

(declare-fun bs!1864776 () Bool)

(assert (= bs!1864776 d!2182067))

(declare-fun m!7694656 () Bool)

(assert (=> bs!1864776 m!7694656))

(assert (=> b!7000412 d!2182067))

(declare-fun d!2182069 () Bool)

(assert (=> d!2182069 (= (flatMap!2252 lt!2495191 lambda!405068) (choose!52477 lt!2495191 lambda!405068))))

(declare-fun bs!1864777 () Bool)

(assert (= bs!1864777 d!2182069))

(declare-fun m!7694658 () Bool)

(assert (=> bs!1864777 m!7694658))

(assert (=> b!7000412 d!2182069))

(assert (=> b!7000412 d!2182009))

(declare-fun d!2182071 () Bool)

(declare-fun lt!2495467 () Int)

(assert (=> d!2182071 (>= lt!2495467 0)))

(declare-fun e!4207929 () Int)

(assert (=> d!2182071 (= lt!2495467 e!4207929)))

(declare-fun c!1299537 () Bool)

(assert (=> d!2182071 (= c!1299537 (is-Cons!67221 lt!2495208))))

(assert (=> d!2182071 (= (zipperDepthTotal!487 lt!2495208) lt!2495467)))

(declare-fun b!7000654 () Bool)

(assert (=> b!7000654 (= e!4207929 (+ (contextDepthTotal!459 (h!73669 lt!2495208)) (zipperDepthTotal!487 (t!381098 lt!2495208))))))

(declare-fun b!7000655 () Bool)

(assert (=> b!7000655 (= e!4207929 0)))

(assert (= (and d!2182071 c!1299537) b!7000654))

(assert (= (and d!2182071 (not c!1299537)) b!7000655))

(declare-fun m!7694660 () Bool)

(assert (=> b!7000654 m!7694660))

(declare-fun m!7694662 () Bool)

(assert (=> b!7000654 m!7694662))

(assert (=> b!7000412 d!2182071))

(declare-fun b!7000658 () Bool)

(declare-fun res!2855685 () Bool)

(declare-fun e!4207930 () Bool)

(assert (=> b!7000658 (=> (not res!2855685) (not e!4207930))))

(declare-fun lt!2495468 () List!67344)

(assert (=> b!7000658 (= res!2855685 (= (size!40937 lt!2495468) (+ (size!40937 (exprs!6762 lt!2495182)) (size!40937 (exprs!6762 ct2!306)))))))

(declare-fun d!2182073 () Bool)

(assert (=> d!2182073 e!4207930))

(declare-fun res!2855686 () Bool)

(assert (=> d!2182073 (=> (not res!2855686) (not e!4207930))))

(assert (=> d!2182073 (= res!2855686 (= (content!13312 lt!2495468) (set.union (content!13312 (exprs!6762 lt!2495182)) (content!13312 (exprs!6762 ct2!306)))))))

(declare-fun e!4207931 () List!67344)

(assert (=> d!2182073 (= lt!2495468 e!4207931)))

(declare-fun c!1299538 () Bool)

(assert (=> d!2182073 (= c!1299538 (is-Nil!67220 (exprs!6762 lt!2495182)))))

(assert (=> d!2182073 (= (++!15233 (exprs!6762 lt!2495182) (exprs!6762 ct2!306)) lt!2495468)))

(declare-fun b!7000657 () Bool)

(assert (=> b!7000657 (= e!4207931 (Cons!67220 (h!73668 (exprs!6762 lt!2495182)) (++!15233 (t!381097 (exprs!6762 lt!2495182)) (exprs!6762 ct2!306))))))

(declare-fun b!7000659 () Bool)

(assert (=> b!7000659 (= e!4207930 (or (not (= (exprs!6762 ct2!306) Nil!67220)) (= lt!2495468 (exprs!6762 lt!2495182))))))

(declare-fun b!7000656 () Bool)

(assert (=> b!7000656 (= e!4207931 (exprs!6762 ct2!306))))

(assert (= (and d!2182073 c!1299538) b!7000656))

(assert (= (and d!2182073 (not c!1299538)) b!7000657))

(assert (= (and d!2182073 res!2855686) b!7000658))

(assert (= (and b!7000658 res!2855685) b!7000659))

(declare-fun m!7694664 () Bool)

(assert (=> b!7000658 m!7694664))

(declare-fun m!7694666 () Bool)

(assert (=> b!7000658 m!7694666))

(assert (=> b!7000658 m!7694480))

(declare-fun m!7694668 () Bool)

(assert (=> d!2182073 m!7694668))

(declare-fun m!7694670 () Bool)

(assert (=> d!2182073 m!7694670))

(assert (=> d!2182073 m!7694486))

(declare-fun m!7694672 () Bool)

(assert (=> b!7000657 m!7694672))

(assert (=> b!7000395 d!2182073))

(declare-fun d!2182075 () Bool)

(assert (=> d!2182075 (forall!16182 (++!15233 (exprs!6762 lt!2495182) (exprs!6762 ct2!306)) lambda!405067)))

(declare-fun lt!2495469 () Unit!161192)

(assert (=> d!2182075 (= lt!2495469 (choose!52474 (exprs!6762 lt!2495182) (exprs!6762 ct2!306) lambda!405067))))

(assert (=> d!2182075 (forall!16182 (exprs!6762 lt!2495182) lambda!405067)))

(assert (=> d!2182075 (= (lemmaConcatPreservesForall!602 (exprs!6762 lt!2495182) (exprs!6762 ct2!306) lambda!405067) lt!2495469)))

(declare-fun bs!1864778 () Bool)

(assert (= bs!1864778 d!2182075))

(assert (=> bs!1864778 m!7694280))

(assert (=> bs!1864778 m!7694280))

(declare-fun m!7694674 () Bool)

(assert (=> bs!1864778 m!7694674))

(declare-fun m!7694676 () Bool)

(assert (=> bs!1864778 m!7694676))

(declare-fun m!7694678 () Bool)

(assert (=> bs!1864778 m!7694678))

(assert (=> b!7000395 d!2182075))

(declare-fun d!2182077 () Bool)

(declare-fun e!4207934 () Bool)

(assert (=> d!2182077 e!4207934))

(declare-fun res!2855689 () Bool)

(assert (=> d!2182077 (=> (not res!2855689) (not e!4207934))))

(declare-fun lt!2495472 () Context!12524)

(assert (=> d!2182077 (= res!2855689 (= lt!2495211 (dynLambda!27001 lambda!405066 lt!2495472)))))

(declare-fun choose!52484 ((Set Context!12524) Int Context!12524) Context!12524)

(assert (=> d!2182077 (= lt!2495472 (choose!52484 z1!570 lambda!405066 lt!2495211))))

(assert (=> d!2182077 (set.member lt!2495211 (map!15546 z1!570 lambda!405066))))

(assert (=> d!2182077 (= (mapPost2!121 z1!570 lambda!405066 lt!2495211) lt!2495472)))

(declare-fun b!7000663 () Bool)

(assert (=> b!7000663 (= e!4207934 (set.member lt!2495472 z1!570))))

(assert (= (and d!2182077 res!2855689) b!7000663))

(declare-fun b_lambda!263663 () Bool)

(assert (=> (not b_lambda!263663) (not d!2182077)))

(declare-fun m!7694680 () Bool)

(assert (=> d!2182077 m!7694680))

(declare-fun m!7694682 () Bool)

(assert (=> d!2182077 m!7694682))

(declare-fun m!7694684 () Bool)

(assert (=> d!2182077 m!7694684))

(declare-fun m!7694686 () Bool)

(assert (=> d!2182077 m!7694686))

(declare-fun m!7694688 () Bool)

(assert (=> b!7000663 m!7694688))

(assert (=> b!7000395 d!2182077))

(declare-fun d!2182079 () Bool)

(declare-fun c!1299539 () Bool)

(assert (=> d!2182079 (= c!1299539 (isEmpty!39243 s!7408))))

(declare-fun e!4207935 () Bool)

(assert (=> d!2182079 (= (matchZipper!2806 lt!2495180 s!7408) e!4207935)))

(declare-fun b!7000664 () Bool)

(assert (=> b!7000664 (= e!4207935 (nullableZipper!2461 lt!2495180))))

(declare-fun b!7000665 () Bool)

(assert (=> b!7000665 (= e!4207935 (matchZipper!2806 (derivationStepZipper!2746 lt!2495180 (head!14141 s!7408)) (tail!13300 s!7408)))))

(assert (= (and d!2182079 c!1299539) b!7000664))

(assert (= (and d!2182079 (not c!1299539)) b!7000665))

(assert (=> d!2182079 m!7694594))

(declare-fun m!7694690 () Bool)

(assert (=> b!7000664 m!7694690))

(assert (=> b!7000665 m!7694598))

(assert (=> b!7000665 m!7694598))

(declare-fun m!7694692 () Bool)

(assert (=> b!7000665 m!7694692))

(assert (=> b!7000665 m!7694602))

(assert (=> b!7000665 m!7694692))

(assert (=> b!7000665 m!7694602))

(declare-fun m!7694694 () Bool)

(assert (=> b!7000665 m!7694694))

(assert (=> start!673484 d!2182079))

(declare-fun bs!1864779 () Bool)

(declare-fun d!2182081 () Bool)

(assert (= bs!1864779 (and d!2182081 b!7000395)))

(declare-fun lambda!405144 () Int)

(assert (=> bs!1864779 (= lambda!405144 lambda!405066)))

(assert (=> d!2182081 true))

(assert (=> d!2182081 (= (appendTo!387 z1!570 ct2!306) (map!15546 z1!570 lambda!405144))))

(declare-fun bs!1864780 () Bool)

(assert (= bs!1864780 d!2182081))

(declare-fun m!7694696 () Bool)

(assert (=> bs!1864780 m!7694696))

(assert (=> start!673484 d!2182081))

(declare-fun bs!1864781 () Bool)

(declare-fun d!2182083 () Bool)

(assert (= bs!1864781 (and d!2182083 b!7000395)))

(declare-fun lambda!405147 () Int)

(assert (=> bs!1864781 (= lambda!405147 lambda!405067)))

(assert (=> d!2182083 (= (inv!86025 ct2!306) (forall!16182 (exprs!6762 ct2!306) lambda!405147))))

(declare-fun bs!1864782 () Bool)

(assert (= bs!1864782 d!2182083))

(declare-fun m!7694698 () Bool)

(assert (=> bs!1864782 m!7694698))

(assert (=> start!673484 d!2182083))

(declare-fun d!2182085 () Bool)

(assert (=> d!2182085 (= (isEmpty!39244 (exprs!6762 lt!2495182)) (is-Nil!67220 (exprs!6762 lt!2495182)))))

(assert (=> b!7000386 d!2182085))

(declare-fun d!2182087 () Bool)

(declare-fun c!1299541 () Bool)

(assert (=> d!2182087 (= c!1299541 (isEmpty!39243 (t!381096 s!7408)))))

(declare-fun e!4207936 () Bool)

(assert (=> d!2182087 (= (matchZipper!2806 lt!2495235 (t!381096 s!7408)) e!4207936)))

(declare-fun b!7000666 () Bool)

(assert (=> b!7000666 (= e!4207936 (nullableZipper!2461 lt!2495235))))

(declare-fun b!7000667 () Bool)

(assert (=> b!7000667 (= e!4207936 (matchZipper!2806 (derivationStepZipper!2746 lt!2495235 (head!14141 (t!381096 s!7408))) (tail!13300 (t!381096 s!7408))))))

(assert (= (and d!2182087 c!1299541) b!7000666))

(assert (= (and d!2182087 (not c!1299541)) b!7000667))

(assert (=> d!2182087 m!7694538))

(declare-fun m!7694700 () Bool)

(assert (=> b!7000666 m!7694700))

(assert (=> b!7000667 m!7694542))

(assert (=> b!7000667 m!7694542))

(declare-fun m!7694702 () Bool)

(assert (=> b!7000667 m!7694702))

(assert (=> b!7000667 m!7694546))

(assert (=> b!7000667 m!7694702))

(assert (=> b!7000667 m!7694546))

(declare-fun m!7694704 () Bool)

(assert (=> b!7000667 m!7694704))

(assert (=> b!7000387 d!2182087))

(assert (=> b!7000387 d!2182009))

(declare-fun d!2182089 () Bool)

(assert (=> d!2182089 (= (flatMap!2252 lt!2495218 lambda!405068) (choose!52477 lt!2495218 lambda!405068))))

(declare-fun bs!1864783 () Bool)

(assert (= bs!1864783 d!2182089))

(declare-fun m!7694706 () Bool)

(assert (=> bs!1864783 m!7694706))

(assert (=> b!7000408 d!2182089))

(declare-fun d!2182091 () Bool)

(assert (=> d!2182091 (= (flatMap!2252 lt!2495218 lambda!405068) (dynLambda!26998 lambda!405068 lt!2495194))))

(declare-fun lt!2495475 () Unit!161192)

(assert (=> d!2182091 (= lt!2495475 (choose!52478 lt!2495218 lt!2495194 lambda!405068))))

(assert (=> d!2182091 (= lt!2495218 (set.insert lt!2495194 (as set.empty (Set Context!12524))))))

(assert (=> d!2182091 (= (lemmaFlatMapOnSingletonSet!1767 lt!2495218 lt!2495194 lambda!405068) lt!2495475)))

(declare-fun b_lambda!263665 () Bool)

(assert (=> (not b_lambda!263665) (not d!2182091)))

(declare-fun bs!1864784 () Bool)

(assert (= bs!1864784 d!2182091))

(assert (=> bs!1864784 m!7694276))

(declare-fun m!7694708 () Bool)

(assert (=> bs!1864784 m!7694708))

(declare-fun m!7694710 () Bool)

(assert (=> bs!1864784 m!7694710))

(assert (=> bs!1864784 m!7694266))

(assert (=> b!7000408 d!2182091))

(assert (=> b!7000408 d!2182075))

(declare-fun bs!1864785 () Bool)

(declare-fun d!2182093 () Bool)

(assert (= bs!1864785 (and d!2182093 b!7000408)))

(declare-fun lambda!405148 () Int)

(assert (=> bs!1864785 (= lambda!405148 lambda!405068)))

(declare-fun bs!1864786 () Bool)

(assert (= bs!1864786 (and d!2182093 d!2182033)))

(assert (=> bs!1864786 (= lambda!405148 lambda!405133)))

(assert (=> d!2182093 true))

(assert (=> d!2182093 (= (derivationStepZipper!2746 lt!2495218 (h!73667 s!7408)) (flatMap!2252 lt!2495218 lambda!405148))))

(declare-fun bs!1864787 () Bool)

(assert (= bs!1864787 d!2182093))

(declare-fun m!7694712 () Bool)

(assert (=> bs!1864787 m!7694712))

(assert (=> b!7000408 d!2182093))

(declare-fun d!2182095 () Bool)

(declare-fun c!1299542 () Bool)

(declare-fun e!4207939 () Bool)

(assert (=> d!2182095 (= c!1299542 e!4207939)))

(declare-fun res!2855690 () Bool)

(assert (=> d!2182095 (=> (not res!2855690) (not e!4207939))))

(assert (=> d!2182095 (= res!2855690 (is-Cons!67220 (exprs!6762 lt!2495194)))))

(declare-fun e!4207938 () (Set Context!12524))

(assert (=> d!2182095 (= (derivationStepZipperUp!1916 lt!2495194 (h!73667 s!7408)) e!4207938)))

(declare-fun b!7000668 () Bool)

(assert (=> b!7000668 (= e!4207939 (nullable!7026 (h!73668 (exprs!6762 lt!2495194))))))

(declare-fun b!7000669 () Bool)

(declare-fun e!4207937 () (Set Context!12524))

(assert (=> b!7000669 (= e!4207937 (as set.empty (Set Context!12524)))))

(declare-fun b!7000670 () Bool)

(declare-fun call!635681 () (Set Context!12524))

(assert (=> b!7000670 (= e!4207937 call!635681)))

(declare-fun b!7000671 () Bool)

(assert (=> b!7000671 (= e!4207938 e!4207937)))

(declare-fun c!1299543 () Bool)

(assert (=> b!7000671 (= c!1299543 (is-Cons!67220 (exprs!6762 lt!2495194)))))

(declare-fun b!7000672 () Bool)

(assert (=> b!7000672 (= e!4207938 (set.union call!635681 (derivationStepZipperUp!1916 (Context!12525 (t!381097 (exprs!6762 lt!2495194))) (h!73667 s!7408))))))

(declare-fun bm!635676 () Bool)

(assert (=> bm!635676 (= call!635681 (derivationStepZipperDown!1984 (h!73668 (exprs!6762 lt!2495194)) (Context!12525 (t!381097 (exprs!6762 lt!2495194))) (h!73667 s!7408)))))

(assert (= (and d!2182095 res!2855690) b!7000668))

(assert (= (and d!2182095 c!1299542) b!7000672))

(assert (= (and d!2182095 (not c!1299542)) b!7000671))

(assert (= (and b!7000671 c!1299543) b!7000670))

(assert (= (and b!7000671 (not c!1299543)) b!7000669))

(assert (= (or b!7000672 b!7000670) bm!635676))

(declare-fun m!7694714 () Bool)

(assert (=> b!7000668 m!7694714))

(declare-fun m!7694716 () Bool)

(assert (=> b!7000672 m!7694716))

(declare-fun m!7694718 () Bool)

(assert (=> bm!635676 m!7694718))

(assert (=> b!7000408 d!2182095))

(declare-fun bs!1864788 () Bool)

(declare-fun d!2182097 () Bool)

(assert (= bs!1864788 (and d!2182097 b!7000395)))

(declare-fun lambda!405149 () Int)

(assert (=> bs!1864788 (= lambda!405149 lambda!405067)))

(declare-fun bs!1864789 () Bool)

(assert (= bs!1864789 (and d!2182097 d!2182083)))

(assert (=> bs!1864789 (= lambda!405149 lambda!405147)))

(assert (=> d!2182097 (= (inv!86025 setElem!48090) (forall!16182 (exprs!6762 setElem!48090) lambda!405149))))

(declare-fun bs!1864790 () Bool)

(assert (= bs!1864790 d!2182097))

(declare-fun m!7694720 () Bool)

(assert (=> bs!1864790 m!7694720))

(assert (=> setNonEmpty!48090 d!2182097))

(declare-fun d!2182099 () Bool)

(declare-fun e!4207945 () Bool)

(assert (=> d!2182099 e!4207945))

(declare-fun res!2855695 () Bool)

(assert (=> d!2182099 (=> (not res!2855695) (not e!4207945))))

(declare-fun lt!2495478 () List!67343)

(declare-fun content!13314 (List!67343) (Set C!34802))

(assert (=> d!2182099 (= res!2855695 (= (content!13314 lt!2495478) (set.union (content!13314 (_1!37242 lt!2495184)) (content!13314 (_2!37242 lt!2495184)))))))

(declare-fun e!4207944 () List!67343)

(assert (=> d!2182099 (= lt!2495478 e!4207944)))

(declare-fun c!1299546 () Bool)

(assert (=> d!2182099 (= c!1299546 (is-Nil!67219 (_1!37242 lt!2495184)))))

(assert (=> d!2182099 (= (++!15234 (_1!37242 lt!2495184) (_2!37242 lt!2495184)) lt!2495478)))

(declare-fun b!7000681 () Bool)

(assert (=> b!7000681 (= e!4207944 (_2!37242 lt!2495184))))

(declare-fun b!7000684 () Bool)

(assert (=> b!7000684 (= e!4207945 (or (not (= (_2!37242 lt!2495184) Nil!67219)) (= lt!2495478 (_1!37242 lt!2495184))))))

(declare-fun b!7000682 () Bool)

(assert (=> b!7000682 (= e!4207944 (Cons!67219 (h!73667 (_1!37242 lt!2495184)) (++!15234 (t!381096 (_1!37242 lt!2495184)) (_2!37242 lt!2495184))))))

(declare-fun b!7000683 () Bool)

(declare-fun res!2855696 () Bool)

(assert (=> b!7000683 (=> (not res!2855696) (not e!4207945))))

(declare-fun size!40938 (List!67343) Int)

(assert (=> b!7000683 (= res!2855696 (= (size!40938 lt!2495478) (+ (size!40938 (_1!37242 lt!2495184)) (size!40938 (_2!37242 lt!2495184)))))))

(assert (= (and d!2182099 c!1299546) b!7000681))

(assert (= (and d!2182099 (not c!1299546)) b!7000682))

(assert (= (and d!2182099 res!2855695) b!7000683))

(assert (= (and b!7000683 res!2855696) b!7000684))

(declare-fun m!7694722 () Bool)

(assert (=> d!2182099 m!7694722))

(declare-fun m!7694724 () Bool)

(assert (=> d!2182099 m!7694724))

(declare-fun m!7694726 () Bool)

(assert (=> d!2182099 m!7694726))

(declare-fun m!7694728 () Bool)

(assert (=> b!7000682 m!7694728))

(declare-fun m!7694730 () Bool)

(assert (=> b!7000683 m!7694730))

(declare-fun m!7694732 () Bool)

(assert (=> b!7000683 m!7694732))

(declare-fun m!7694734 () Bool)

(assert (=> b!7000683 m!7694734))

(assert (=> b!7000406 d!2182099))

(assert (=> b!7000407 d!2182087))

(assert (=> b!7000410 d!2182087))

(assert (=> b!7000410 d!2182009))

(assert (=> b!7000411 d!2182053))

(declare-fun b!7000685 () Bool)

(declare-fun c!1299550 () Bool)

(declare-fun e!4207951 () Bool)

(assert (=> b!7000685 (= c!1299550 e!4207951)))

(declare-fun res!2855697 () Bool)

(assert (=> b!7000685 (=> (not res!2855697) (not e!4207951))))

(assert (=> b!7000685 (= res!2855697 (is-Concat!26111 (h!73668 (exprs!6762 lt!2495182))))))

(declare-fun e!4207949 () (Set Context!12524))

(declare-fun e!4207946 () (Set Context!12524))

(assert (=> b!7000685 (= e!4207949 e!4207946)))

(declare-fun c!1299549 () Bool)

(declare-fun call!635686 () List!67344)

(declare-fun bm!635677 () Bool)

(declare-fun call!635682 () (Set Context!12524))

(assert (=> bm!635677 (= call!635682 (derivationStepZipperDown!1984 (ite c!1299549 (regOne!35045 (h!73668 (exprs!6762 lt!2495182))) (regOne!35044 (h!73668 (exprs!6762 lt!2495182)))) (ite c!1299549 lt!2495186 (Context!12525 call!635686)) (h!73667 s!7408)))))

(declare-fun b!7000686 () Bool)

(declare-fun e!4207948 () (Set Context!12524))

(assert (=> b!7000686 (= e!4207948 (as set.empty (Set Context!12524)))))

(declare-fun b!7000687 () Bool)

(declare-fun e!4207950 () (Set Context!12524))

(assert (=> b!7000687 (= e!4207950 e!4207949)))

(assert (=> b!7000687 (= c!1299549 (is-Union!17266 (h!73668 (exprs!6762 lt!2495182))))))

(declare-fun b!7000688 () Bool)

(declare-fun e!4207947 () (Set Context!12524))

(declare-fun call!635685 () (Set Context!12524))

(assert (=> b!7000688 (= e!4207947 call!635685)))

(declare-fun b!7000689 () Bool)

(assert (=> b!7000689 (= e!4207948 call!635685)))

(declare-fun d!2182101 () Bool)

(declare-fun c!1299548 () Bool)

(assert (=> d!2182101 (= c!1299548 (and (is-ElementMatch!17266 (h!73668 (exprs!6762 lt!2495182))) (= (c!1299465 (h!73668 (exprs!6762 lt!2495182))) (h!73667 s!7408))))))

(assert (=> d!2182101 (= (derivationStepZipperDown!1984 (h!73668 (exprs!6762 lt!2495182)) lt!2495186 (h!73667 s!7408)) e!4207950)))

(declare-fun bm!635678 () Bool)

(declare-fun call!635687 () (Set Context!12524))

(assert (=> bm!635678 (= call!635685 call!635687)))

(declare-fun b!7000690 () Bool)

(assert (=> b!7000690 (= e!4207951 (nullable!7026 (regOne!35044 (h!73668 (exprs!6762 lt!2495182)))))))

(declare-fun b!7000691 () Bool)

(assert (=> b!7000691 (= e!4207950 (set.insert lt!2495186 (as set.empty (Set Context!12524))))))

(declare-fun bm!635679 () Bool)

(declare-fun call!635683 () (Set Context!12524))

(assert (=> bm!635679 (= call!635687 call!635683)))

(declare-fun b!7000692 () Bool)

(assert (=> b!7000692 (= e!4207946 e!4207947)))

(declare-fun c!1299547 () Bool)

(assert (=> b!7000692 (= c!1299547 (is-Concat!26111 (h!73668 (exprs!6762 lt!2495182))))))

(declare-fun b!7000693 () Bool)

(assert (=> b!7000693 (= e!4207946 (set.union call!635682 call!635687))))

(declare-fun call!635684 () List!67344)

(declare-fun bm!635680 () Bool)

(assert (=> bm!635680 (= call!635683 (derivationStepZipperDown!1984 (ite c!1299549 (regTwo!35045 (h!73668 (exprs!6762 lt!2495182))) (ite c!1299550 (regTwo!35044 (h!73668 (exprs!6762 lt!2495182))) (ite c!1299547 (regOne!35044 (h!73668 (exprs!6762 lt!2495182))) (reg!17595 (h!73668 (exprs!6762 lt!2495182)))))) (ite (or c!1299549 c!1299550) lt!2495186 (Context!12525 call!635684)) (h!73667 s!7408)))))

(declare-fun b!7000694 () Bool)

(assert (=> b!7000694 (= e!4207949 (set.union call!635682 call!635683))))

(declare-fun bm!635681 () Bool)

(assert (=> bm!635681 (= call!635684 call!635686)))

(declare-fun bm!635682 () Bool)

(assert (=> bm!635682 (= call!635686 ($colon$colon!2505 (exprs!6762 lt!2495186) (ite (or c!1299550 c!1299547) (regTwo!35044 (h!73668 (exprs!6762 lt!2495182))) (h!73668 (exprs!6762 lt!2495182)))))))

(declare-fun b!7000695 () Bool)

(declare-fun c!1299551 () Bool)

(assert (=> b!7000695 (= c!1299551 (is-Star!17266 (h!73668 (exprs!6762 lt!2495182))))))

(assert (=> b!7000695 (= e!4207947 e!4207948)))

(assert (= (and d!2182101 c!1299548) b!7000691))

(assert (= (and d!2182101 (not c!1299548)) b!7000687))

(assert (= (and b!7000687 c!1299549) b!7000694))

(assert (= (and b!7000687 (not c!1299549)) b!7000685))

(assert (= (and b!7000685 res!2855697) b!7000690))

(assert (= (and b!7000685 c!1299550) b!7000693))

(assert (= (and b!7000685 (not c!1299550)) b!7000692))

(assert (= (and b!7000692 c!1299547) b!7000688))

(assert (= (and b!7000692 (not c!1299547)) b!7000695))

(assert (= (and b!7000695 c!1299551) b!7000689))

(assert (= (and b!7000695 (not c!1299551)) b!7000686))

(assert (= (or b!7000688 b!7000689) bm!635681))

(assert (= (or b!7000688 b!7000689) bm!635678))

(assert (= (or b!7000693 bm!635678) bm!635679))

(assert (= (or b!7000693 bm!635681) bm!635682))

(assert (= (or b!7000694 b!7000693) bm!635677))

(assert (= (or b!7000694 bm!635679) bm!635680))

(declare-fun m!7694736 () Bool)

(assert (=> bm!635677 m!7694736))

(declare-fun m!7694738 () Bool)

(assert (=> bm!635682 m!7694738))

(declare-fun m!7694740 () Bool)

(assert (=> bm!635680 m!7694740))

(assert (=> b!7000690 m!7694474))

(assert (=> b!7000691 m!7694238))

(assert (=> b!7000411 d!2182101))

(assert (=> b!7000409 d!2182075))

(declare-fun d!2182103 () Bool)

(assert (=> d!2182103 (= (isEmpty!39243 (_1!37242 lt!2495184)) (is-Nil!67219 (_1!37242 lt!2495184)))))

(assert (=> b!7000383 d!2182103))

(declare-fun d!2182105 () Bool)

(assert (=> d!2182105 (= (flatMap!2252 lt!2495190 lambda!405068) (choose!52477 lt!2495190 lambda!405068))))

(declare-fun bs!1864791 () Bool)

(assert (= bs!1864791 d!2182105))

(declare-fun m!7694742 () Bool)

(assert (=> bs!1864791 m!7694742))

(assert (=> b!7000402 d!2182105))

(assert (=> b!7000402 d!2182007))

(assert (=> b!7000402 d!2182009))

(declare-fun d!2182107 () Bool)

(assert (=> d!2182107 (= (flatMap!2252 lt!2495190 lambda!405068) (dynLambda!26998 lambda!405068 lt!2495228))))

(declare-fun lt!2495479 () Unit!161192)

(assert (=> d!2182107 (= lt!2495479 (choose!52478 lt!2495190 lt!2495228 lambda!405068))))

(assert (=> d!2182107 (= lt!2495190 (set.insert lt!2495228 (as set.empty (Set Context!12524))))))

(assert (=> d!2182107 (= (lemmaFlatMapOnSingletonSet!1767 lt!2495190 lt!2495228 lambda!405068) lt!2495479)))

(declare-fun b_lambda!263667 () Bool)

(assert (=> (not b_lambda!263667) (not d!2182107)))

(declare-fun bs!1864792 () Bool)

(assert (= bs!1864792 d!2182107))

(assert (=> bs!1864792 m!7694206))

(declare-fun m!7694744 () Bool)

(assert (=> bs!1864792 m!7694744))

(declare-fun m!7694746 () Bool)

(assert (=> bs!1864792 m!7694746))

(assert (=> bs!1864792 m!7694204))

(assert (=> b!7000402 d!2182107))

(declare-fun bs!1864793 () Bool)

(declare-fun d!2182109 () Bool)

(assert (= bs!1864793 (and d!2182109 b!7000408)))

(declare-fun lambda!405150 () Int)

(assert (=> bs!1864793 (= lambda!405150 lambda!405068)))

(declare-fun bs!1864794 () Bool)

(assert (= bs!1864794 (and d!2182109 d!2182033)))

(assert (=> bs!1864794 (= lambda!405150 lambda!405133)))

(declare-fun bs!1864795 () Bool)

(assert (= bs!1864795 (and d!2182109 d!2182093)))

(assert (=> bs!1864795 (= lambda!405150 lambda!405148)))

(assert (=> d!2182109 true))

(assert (=> d!2182109 (= (derivationStepZipper!2746 lt!2495190 (h!73667 s!7408)) (flatMap!2252 lt!2495190 lambda!405150))))

(declare-fun bs!1864796 () Bool)

(assert (= bs!1864796 d!2182109))

(declare-fun m!7694748 () Bool)

(assert (=> bs!1864796 m!7694748))

(assert (=> b!7000402 d!2182109))

(declare-fun d!2182111 () Bool)

(declare-fun nullableFct!2658 (Regex!17266) Bool)

(assert (=> d!2182111 (= (nullable!7026 (h!73668 (exprs!6762 lt!2495182))) (nullableFct!2658 (h!73668 (exprs!6762 lt!2495182))))))

(declare-fun bs!1864797 () Bool)

(assert (= bs!1864797 d!2182111))

(declare-fun m!7694750 () Bool)

(assert (=> bs!1864797 m!7694750))

(assert (=> b!7000403 d!2182111))

(declare-fun d!2182113 () Bool)

(assert (=> d!2182113 (= (tail!13301 (exprs!6762 lt!2495182)) (t!381097 (exprs!6762 lt!2495182)))))

(assert (=> b!7000403 d!2182113))

(declare-fun d!2182115 () Bool)

(declare-fun c!1299552 () Bool)

(assert (=> d!2182115 (= c!1299552 (isEmpty!39243 s!7408))))

(declare-fun e!4207952 () Bool)

(assert (=> d!2182115 (= (matchZipper!2806 lt!2495190 s!7408) e!4207952)))

(declare-fun b!7000696 () Bool)

(assert (=> b!7000696 (= e!4207952 (nullableZipper!2461 lt!2495190))))

(declare-fun b!7000697 () Bool)

(assert (=> b!7000697 (= e!4207952 (matchZipper!2806 (derivationStepZipper!2746 lt!2495190 (head!14141 s!7408)) (tail!13300 s!7408)))))

(assert (= (and d!2182115 c!1299552) b!7000696))

(assert (= (and d!2182115 (not c!1299552)) b!7000697))

(assert (=> d!2182115 m!7694594))

(declare-fun m!7694752 () Bool)

(assert (=> b!7000696 m!7694752))

(assert (=> b!7000697 m!7694598))

(assert (=> b!7000697 m!7694598))

(declare-fun m!7694754 () Bool)

(assert (=> b!7000697 m!7694754))

(assert (=> b!7000697 m!7694602))

(assert (=> b!7000697 m!7694754))

(assert (=> b!7000697 m!7694602))

(declare-fun m!7694756 () Bool)

(assert (=> b!7000697 m!7694756))

(assert (=> b!7000401 d!2182115))

(assert (=> b!7000401 d!2182009))

(declare-fun d!2182117 () Bool)

(declare-fun lt!2495480 () Int)

(assert (=> d!2182117 (>= lt!2495480 0)))

(declare-fun e!4207953 () Int)

(assert (=> d!2182117 (= lt!2495480 e!4207953)))

(declare-fun c!1299553 () Bool)

(assert (=> d!2182117 (= c!1299553 (is-Cons!67221 (Cons!67221 lt!2495186 Nil!67221)))))

(assert (=> d!2182117 (= (zipperDepthTotal!487 (Cons!67221 lt!2495186 Nil!67221)) lt!2495480)))

(declare-fun b!7000698 () Bool)

(assert (=> b!7000698 (= e!4207953 (+ (contextDepthTotal!459 (h!73669 (Cons!67221 lt!2495186 Nil!67221))) (zipperDepthTotal!487 (t!381098 (Cons!67221 lt!2495186 Nil!67221)))))))

(declare-fun b!7000699 () Bool)

(assert (=> b!7000699 (= e!4207953 0)))

(assert (= (and d!2182117 c!1299553) b!7000698))

(assert (= (and d!2182117 (not c!1299553)) b!7000699))

(declare-fun m!7694758 () Bool)

(assert (=> b!7000698 m!7694758))

(declare-fun m!7694760 () Bool)

(assert (=> b!7000698 m!7694760))

(assert (=> b!7000405 d!2182117))

(declare-fun d!2182119 () Bool)

(declare-fun c!1299554 () Bool)

(assert (=> d!2182119 (= c!1299554 (isEmpty!39243 lt!2495198))))

(declare-fun e!4207954 () Bool)

(assert (=> d!2182119 (= (matchZipper!2806 lt!2495226 lt!2495198) e!4207954)))

(declare-fun b!7000700 () Bool)

(assert (=> b!7000700 (= e!4207954 (nullableZipper!2461 lt!2495226))))

(declare-fun b!7000701 () Bool)

(assert (=> b!7000701 (= e!4207954 (matchZipper!2806 (derivationStepZipper!2746 lt!2495226 (head!14141 lt!2495198)) (tail!13300 lt!2495198)))))

(assert (= (and d!2182119 c!1299554) b!7000700))

(assert (= (and d!2182119 (not c!1299554)) b!7000701))

(declare-fun m!7694762 () Bool)

(assert (=> d!2182119 m!7694762))

(declare-fun m!7694764 () Bool)

(assert (=> b!7000700 m!7694764))

(declare-fun m!7694766 () Bool)

(assert (=> b!7000701 m!7694766))

(assert (=> b!7000701 m!7694766))

(declare-fun m!7694768 () Bool)

(assert (=> b!7000701 m!7694768))

(declare-fun m!7694770 () Bool)

(assert (=> b!7000701 m!7694770))

(assert (=> b!7000701 m!7694768))

(assert (=> b!7000701 m!7694770))

(declare-fun m!7694772 () Bool)

(assert (=> b!7000701 m!7694772))

(assert (=> b!7000384 d!2182119))

(declare-fun d!2182121 () Bool)

(declare-fun c!1299555 () Bool)

(assert (=> d!2182121 (= c!1299555 (isEmpty!39243 lt!2495198))))

(declare-fun e!4207955 () Bool)

(assert (=> d!2182121 (= (matchZipper!2806 lt!2495221 lt!2495198) e!4207955)))

(declare-fun b!7000702 () Bool)

(assert (=> b!7000702 (= e!4207955 (nullableZipper!2461 lt!2495221))))

(declare-fun b!7000703 () Bool)

(assert (=> b!7000703 (= e!4207955 (matchZipper!2806 (derivationStepZipper!2746 lt!2495221 (head!14141 lt!2495198)) (tail!13300 lt!2495198)))))

(assert (= (and d!2182121 c!1299555) b!7000702))

(assert (= (and d!2182121 (not c!1299555)) b!7000703))

(assert (=> d!2182121 m!7694762))

(declare-fun m!7694774 () Bool)

(assert (=> b!7000702 m!7694774))

(assert (=> b!7000703 m!7694766))

(assert (=> b!7000703 m!7694766))

(declare-fun m!7694776 () Bool)

(assert (=> b!7000703 m!7694776))

(assert (=> b!7000703 m!7694770))

(assert (=> b!7000703 m!7694776))

(assert (=> b!7000703 m!7694770))

(declare-fun m!7694778 () Bool)

(assert (=> b!7000703 m!7694778))

(assert (=> b!7000384 d!2182121))

(declare-fun e!4207956 () Bool)

(declare-fun d!2182123 () Bool)

(assert (=> d!2182123 (= (matchZipper!2806 (set.union lt!2495221 lt!2495219) lt!2495198) e!4207956)))

(declare-fun res!2855698 () Bool)

(assert (=> d!2182123 (=> res!2855698 e!4207956)))

(assert (=> d!2182123 (= res!2855698 (matchZipper!2806 lt!2495221 lt!2495198))))

(declare-fun lt!2495481 () Unit!161192)

(assert (=> d!2182123 (= lt!2495481 (choose!52476 lt!2495221 lt!2495219 lt!2495198))))

(assert (=> d!2182123 (= (lemmaZipperConcatMatchesSameAsBothZippers!1439 lt!2495221 lt!2495219 lt!2495198) lt!2495481)))

(declare-fun b!7000704 () Bool)

(assert (=> b!7000704 (= e!4207956 (matchZipper!2806 lt!2495219 lt!2495198))))

(assert (= (and d!2182123 (not res!2855698)) b!7000704))

(declare-fun m!7694780 () Bool)

(assert (=> d!2182123 m!7694780))

(assert (=> d!2182123 m!7694246))

(declare-fun m!7694782 () Bool)

(assert (=> d!2182123 m!7694782))

(assert (=> b!7000704 m!7694264))

(assert (=> b!7000384 d!2182123))

(declare-fun d!2182125 () Bool)

(assert (=> d!2182125 (= (tail!13300 (_1!37242 lt!2495184)) (t!381096 (_1!37242 lt!2495184)))))

(assert (=> b!7000384 d!2182125))

(declare-fun d!2182127 () Bool)

(declare-fun c!1299556 () Bool)

(assert (=> d!2182127 (= c!1299556 (isEmpty!39243 lt!2495198))))

(declare-fun e!4207957 () Bool)

(assert (=> d!2182127 (= (matchZipper!2806 lt!2495219 lt!2495198) e!4207957)))

(declare-fun b!7000705 () Bool)

(assert (=> b!7000705 (= e!4207957 (nullableZipper!2461 lt!2495219))))

(declare-fun b!7000706 () Bool)

(assert (=> b!7000706 (= e!4207957 (matchZipper!2806 (derivationStepZipper!2746 lt!2495219 (head!14141 lt!2495198)) (tail!13300 lt!2495198)))))

(assert (= (and d!2182127 c!1299556) b!7000705))

(assert (= (and d!2182127 (not c!1299556)) b!7000706))

(assert (=> d!2182127 m!7694762))

(declare-fun m!7694784 () Bool)

(assert (=> b!7000705 m!7694784))

(assert (=> b!7000706 m!7694766))

(assert (=> b!7000706 m!7694766))

(declare-fun m!7694786 () Bool)

(assert (=> b!7000706 m!7694786))

(assert (=> b!7000706 m!7694770))

(assert (=> b!7000706 m!7694786))

(assert (=> b!7000706 m!7694770))

(declare-fun m!7694788 () Bool)

(assert (=> b!7000706 m!7694788))

(assert (=> b!7000404 d!2182127))

(declare-fun b!7000711 () Bool)

(declare-fun e!4207960 () Bool)

(declare-fun tp!1931081 () Bool)

(assert (=> b!7000711 (= e!4207960 (and tp_is_empty!43757 tp!1931081))))

(assert (=> b!7000397 (= tp!1931064 e!4207960)))

(assert (= (and b!7000397 (is-Cons!67219 (t!381096 s!7408))) b!7000711))

(declare-fun condSetEmpty!48096 () Bool)

(assert (=> setNonEmpty!48090 (= condSetEmpty!48096 (= setRest!48090 (as set.empty (Set Context!12524))))))

(declare-fun setRes!48096 () Bool)

(assert (=> setNonEmpty!48090 (= tp!1931063 setRes!48096)))

(declare-fun setIsEmpty!48096 () Bool)

(assert (=> setIsEmpty!48096 setRes!48096))

(declare-fun e!4207963 () Bool)

(declare-fun setNonEmpty!48096 () Bool)

(declare-fun tp!1931086 () Bool)

(declare-fun setElem!48096 () Context!12524)

(assert (=> setNonEmpty!48096 (= setRes!48096 (and tp!1931086 (inv!86025 setElem!48096) e!4207963))))

(declare-fun setRest!48096 () (Set Context!12524))

(assert (=> setNonEmpty!48096 (= setRest!48090 (set.union (set.insert setElem!48096 (as set.empty (Set Context!12524))) setRest!48096))))

(declare-fun b!7000716 () Bool)

(declare-fun tp!1931087 () Bool)

(assert (=> b!7000716 (= e!4207963 tp!1931087)))

(assert (= (and setNonEmpty!48090 condSetEmpty!48096) setIsEmpty!48096))

(assert (= (and setNonEmpty!48090 (not condSetEmpty!48096)) setNonEmpty!48096))

(assert (= setNonEmpty!48096 b!7000716))

(declare-fun m!7694790 () Bool)

(assert (=> setNonEmpty!48096 m!7694790))

(declare-fun b!7000721 () Bool)

(declare-fun e!4207966 () Bool)

(declare-fun tp!1931092 () Bool)

(declare-fun tp!1931093 () Bool)

(assert (=> b!7000721 (= e!4207966 (and tp!1931092 tp!1931093))))

(assert (=> b!7000389 (= tp!1931066 e!4207966)))

(assert (= (and b!7000389 (is-Cons!67220 (exprs!6762 setElem!48090))) b!7000721))

(declare-fun b!7000722 () Bool)

(declare-fun e!4207967 () Bool)

(declare-fun tp!1931094 () Bool)

(declare-fun tp!1931095 () Bool)

(assert (=> b!7000722 (= e!4207967 (and tp!1931094 tp!1931095))))

(assert (=> b!7000388 (= tp!1931065 e!4207967)))

(assert (= (and b!7000388 (is-Cons!67220 (exprs!6762 ct2!306))) b!7000722))

(declare-fun b_lambda!263669 () Bool)

(assert (= b_lambda!263663 (or b!7000395 b_lambda!263669)))

(declare-fun bs!1864798 () Bool)

(declare-fun d!2182129 () Bool)

(assert (= bs!1864798 (and d!2182129 b!7000395)))

(declare-fun lt!2495482 () Unit!161192)

(assert (=> bs!1864798 (= lt!2495482 (lemmaConcatPreservesForall!602 (exprs!6762 lt!2495472) (exprs!6762 ct2!306) lambda!405067))))

(assert (=> bs!1864798 (= (dynLambda!27001 lambda!405066 lt!2495472) (Context!12525 (++!15233 (exprs!6762 lt!2495472) (exprs!6762 ct2!306))))))

(declare-fun m!7694792 () Bool)

(assert (=> bs!1864798 m!7694792))

(declare-fun m!7694794 () Bool)

(assert (=> bs!1864798 m!7694794))

(assert (=> d!2182077 d!2182129))

(declare-fun b_lambda!263671 () Bool)

(assert (= b_lambda!263667 (or b!7000408 b_lambda!263671)))

(declare-fun bs!1864799 () Bool)

(declare-fun d!2182131 () Bool)

(assert (= bs!1864799 (and d!2182131 b!7000408)))

(assert (=> bs!1864799 (= (dynLambda!26998 lambda!405068 lt!2495228) (derivationStepZipperUp!1916 lt!2495228 (h!73667 s!7408)))))

(assert (=> bs!1864799 m!7694208))

(assert (=> d!2182107 d!2182131))

(declare-fun b_lambda!263673 () Bool)

(assert (= b_lambda!263655 (or b!7000408 b_lambda!263673)))

(declare-fun bs!1864800 () Bool)

(declare-fun d!2182133 () Bool)

(assert (= bs!1864800 (and d!2182133 b!7000408)))

(assert (=> bs!1864800 (= (dynLambda!26998 lambda!405068 lt!2495182) (derivationStepZipperUp!1916 lt!2495182 (h!73667 s!7408)))))

(assert (=> bs!1864800 m!7694186))

(assert (=> d!2182039 d!2182133))

(declare-fun b_lambda!263675 () Bool)

(assert (= b_lambda!263657 (or b!7000391 b_lambda!263675)))

(declare-fun bs!1864801 () Bool)

(declare-fun d!2182135 () Bool)

(assert (= bs!1864801 (and d!2182135 b!7000391)))

(assert (=> bs!1864801 (= (dynLambda!26999 lambda!405065 lt!2495446) (matchZipper!2806 (set.insert lt!2495446 (as set.empty (Set Context!12524))) s!7408))))

(declare-fun m!7694796 () Bool)

(assert (=> bs!1864801 m!7694796))

(assert (=> bs!1864801 m!7694796))

(declare-fun m!7694798 () Bool)

(assert (=> bs!1864801 m!7694798))

(assert (=> d!2182043 d!2182135))

(declare-fun b_lambda!263677 () Bool)

(assert (= b_lambda!263665 (or b!7000408 b_lambda!263677)))

(declare-fun bs!1864802 () Bool)

(declare-fun d!2182137 () Bool)

(assert (= bs!1864802 (and d!2182137 b!7000408)))

(assert (=> bs!1864802 (= (dynLambda!26998 lambda!405068 lt!2495194) (derivationStepZipperUp!1916 lt!2495194 (h!73667 s!7408)))))

(assert (=> bs!1864802 m!7694270))

(assert (=> d!2182091 d!2182137))

(declare-fun b_lambda!263679 () Bool)

(assert (= b_lambda!263661 (or b!7000408 b_lambda!263679)))

(declare-fun bs!1864803 () Bool)

(declare-fun d!2182139 () Bool)

(assert (= bs!1864803 (and d!2182139 b!7000408)))

(assert (=> bs!1864803 (= (dynLambda!26998 lambda!405068 lt!2495186) (derivationStepZipperUp!1916 lt!2495186 (h!73667 s!7408)))))

(assert (=> bs!1864803 m!7694188))

(assert (=> d!2182065 d!2182139))

(declare-fun b_lambda!263681 () Bool)

(assert (= b_lambda!263659 (or b!7000395 b_lambda!263681)))

(declare-fun bs!1864804 () Bool)

(declare-fun d!2182141 () Bool)

(assert (= bs!1864804 (and d!2182141 b!7000395)))

(declare-fun lt!2495483 () Unit!161192)

(assert (=> bs!1864804 (= lt!2495483 (lemmaConcatPreservesForall!602 (exprs!6762 lt!2495186) (exprs!6762 ct2!306) lambda!405067))))

(assert (=> bs!1864804 (= (dynLambda!27001 lambda!405066 lt!2495186) (Context!12525 (++!15233 (exprs!6762 lt!2495186) (exprs!6762 ct2!306))))))

(declare-fun m!7694800 () Bool)

(assert (=> bs!1864804 m!7694800))

(declare-fun m!7694802 () Bool)

(assert (=> bs!1864804 m!7694802))

(assert (=> d!2182059 d!2182141))

(push 1)

(assert (not b_lambda!263681))

(assert (not d!2182033))

(assert (not b!7000619))

(assert (not d!2182023))

(assert (not b!7000664))

(assert (not d!2182089))

(assert (not b!7000704))

(assert (not b!7000579))

(assert (not b!7000698))

(assert (not b_lambda!263673))

(assert (not b!7000682))

(assert (not d!2182075))

(assert (not setNonEmpty!48096))

(assert (not b_lambda!263671))

(assert (not b!7000613))

(assert (not b!7000657))

(assert (not b!7000529))

(assert (not b!7000636))

(assert (not bm!635671))

(assert (not d!2182107))

(assert (not b!7000633))

(assert (not d!2182049))

(assert (not d!2182121))

(assert (not bm!635655))

(assert (not b!7000697))

(assert (not b!7000614))

(assert (not d!2182065))

(assert (not d!2182069))

(assert (not b!7000648))

(assert (not d!2182067))

(assert (not d!2182051))

(assert (not b!7000629))

(assert (not b!7000580))

(assert (not d!2182055))

(assert (not bm!635677))

(assert (not b!7000625))

(assert (not b!7000654))

(assert (not bs!1864799))

(assert (not b!7000610))

(assert (not b!7000616))

(assert (not d!2182039))

(assert (not b!7000721))

(assert (not d!2182043))

(assert (not d!2182109))

(assert (not b!7000640))

(assert (not b!7000599))

(assert (not d!2182009))

(assert (not b!7000624))

(assert (not d!2182087))

(assert (not b_lambda!263675))

(assert (not b!7000668))

(assert (not b!7000666))

(assert (not b!7000665))

(assert (not bs!1864801))

(assert (not d!2182021))

(assert (not bs!1864803))

(assert (not b!7000615))

(assert (not bm!635680))

(assert (not b_lambda!263677))

(assert (not b!7000606))

(assert (not b!7000667))

(assert (not d!2182081))

(assert (not d!2182057))

(assert (not d!2182097))

(assert (not bs!1864798))

(assert (not d!2182029))

(assert (not b!7000658))

(assert (not d!2182127))

(assert (not d!2182091))

(assert (not b!7000641))

(assert (not bm!635673))

(assert (not d!2182111))

(assert (not d!2182013))

(assert (not d!2182025))

(assert (not d!2182015))

(assert (not b_lambda!263679))

(assert (not d!2182031))

(assert (not d!2182105))

(assert (not b!7000557))

(assert (not d!2182079))

(assert (not b!7000611))

(assert (not b!7000690))

(assert (not bm!635674))

(assert (not b!7000601))

(assert (not d!2182027))

(assert (not b!7000683))

(assert (not b!7000612))

(assert (not d!2182093))

(assert (not b!7000703))

(assert (not b!7000672))

(assert (not bm!635676))

(assert (not d!2182123))

(assert tp_is_empty!43757)

(assert (not b!7000630))

(assert (not d!2182077))

(assert (not bs!1864802))

(assert (not b!7000706))

(assert (not d!2182047))

(assert (not b!7000646))

(assert (not b!7000705))

(assert (not bm!635668))

(assert (not b_lambda!263669))

(assert (not d!2182073))

(assert (not d!2182099))

(assert (not b!7000700))

(assert (not d!2182037))

(assert (not b!7000711))

(assert (not d!2182115))

(assert (not b!7000525))

(assert (not bm!635682))

(assert (not d!2182083))

(assert (not bs!1864804))

(assert (not b!7000701))

(assert (not b!7000607))

(assert (not b!7000716))

(assert (not b!7000702))

(assert (not b!7000602))

(assert (not d!2182041))

(assert (not d!2182045))

(assert (not d!2182019))

(assert (not b!7000573))

(assert (not bm!635675))

(assert (not b!7000604))

(assert (not bs!1864800))

(assert (not b!7000623))

(assert (not d!2182059))

(assert (not b!7000572))

(assert (not b!7000722))

(assert (not d!2182119))

(assert (not b!7000696))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

