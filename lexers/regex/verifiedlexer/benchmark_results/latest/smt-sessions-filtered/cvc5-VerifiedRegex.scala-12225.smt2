; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!688882 () Bool)

(assert start!688882)

(declare-fun b!7081389 () Bool)

(assert (=> b!7081389 true))

(declare-fun b!7081396 () Bool)

(assert (=> b!7081396 true))

(declare-fun b!7081388 () Bool)

(assert (=> b!7081388 true))

(declare-fun b!7081383 () Bool)

(declare-fun e!4257283 () Bool)

(declare-fun e!4257277 () Bool)

(assert (=> b!7081383 (= e!4257283 e!4257277)))

(declare-fun res!2892719 () Bool)

(assert (=> b!7081383 (=> res!2892719 e!4257277)))

(declare-datatypes ((C!35662 0))(
  ( (C!35663 (val!27533 Int)) )
))
(declare-datatypes ((Regex!17696 0))(
  ( (ElementMatch!17696 (c!1321707 C!35662)) (Concat!26541 (regOne!35904 Regex!17696) (regTwo!35904 Regex!17696)) (EmptyExpr!17696) (Star!17696 (reg!18025 Regex!17696)) (EmptyLang!17696) (Union!17696 (regOne!35905 Regex!17696) (regTwo!35905 Regex!17696)) )
))
(declare-datatypes ((List!68614 0))(
  ( (Nil!68490) (Cons!68490 (h!74938 Regex!17696) (t!382399 List!68614)) )
))
(declare-datatypes ((Context!13384 0))(
  ( (Context!13385 (exprs!7192 List!68614)) )
))
(declare-fun lt!2552758 () (Set Context!13384))

(declare-fun lt!2552757 () (Set Context!13384))

(assert (=> b!7081383 (= res!2892719 (not (= lt!2552758 lt!2552757)))))

(declare-fun lt!2552771 () Context!13384)

(assert (=> b!7081383 (= lt!2552758 (set.insert lt!2552771 (as set.empty (Set Context!13384))))))

(declare-fun lambda!428002 () Int)

(declare-datatypes ((Unit!162103 0))(
  ( (Unit!162104) )
))
(declare-fun lt!2552772 () Unit!162103)

(declare-fun lt!2552760 () Context!13384)

(declare-fun ct2!306 () Context!13384)

(declare-fun lemmaConcatPreservesForall!1007 (List!68614 List!68614 Int) Unit!162103)

(assert (=> b!7081383 (= lt!2552772 (lemmaConcatPreservesForall!1007 (exprs!7192 lt!2552760) (exprs!7192 ct2!306) lambda!428002))))

(declare-fun b!7081384 () Bool)

(declare-fun res!2892715 () Bool)

(declare-fun e!4257278 () Bool)

(assert (=> b!7081384 (=> res!2892715 e!4257278)))

(declare-fun lt!2552767 () Context!13384)

(declare-fun lt!2552763 () (Set Context!13384))

(assert (=> b!7081384 (= res!2892715 (not (set.member lt!2552767 lt!2552763)))))

(declare-fun b!7081385 () Bool)

(declare-fun res!2892716 () Bool)

(declare-fun e!4257276 () Bool)

(assert (=> b!7081385 (=> res!2892716 e!4257276)))

(assert (=> b!7081385 (= res!2892716 (is-Cons!68490 (exprs!7192 lt!2552760)))))

(declare-fun setNonEmpty!50524 () Bool)

(declare-fun e!4257282 () Bool)

(declare-fun setRes!50524 () Bool)

(declare-fun tp!1943606 () Bool)

(declare-fun setElem!50524 () Context!13384)

(declare-fun inv!87100 (Context!13384) Bool)

(assert (=> setNonEmpty!50524 (= setRes!50524 (and tp!1943606 (inv!87100 setElem!50524) e!4257282))))

(declare-fun z1!570 () (Set Context!13384))

(declare-fun setRest!50524 () (Set Context!13384))

(assert (=> setNonEmpty!50524 (= z1!570 (set.union (set.insert setElem!50524 (as set.empty (Set Context!13384))) setRest!50524))))

(declare-fun b!7081386 () Bool)

(declare-fun e!4257284 () Bool)

(assert (=> b!7081386 (= e!4257276 e!4257284)))

(declare-fun res!2892718 () Bool)

(assert (=> b!7081386 (=> res!2892718 e!4257284)))

(assert (=> b!7081386 (= res!2892718 (not (= lt!2552771 ct2!306)))))

(declare-fun lt!2552766 () Unit!162103)

(assert (=> b!7081386 (= lt!2552766 (lemmaConcatPreservesForall!1007 (exprs!7192 lt!2552760) (exprs!7192 ct2!306) lambda!428002))))

(declare-fun b!7081387 () Bool)

(declare-fun tp!1943605 () Bool)

(assert (=> b!7081387 (= e!4257282 tp!1943605)))

(assert (=> b!7081388 (= e!4257277 e!4257276)))

(declare-fun res!2892721 () Bool)

(assert (=> b!7081388 (=> res!2892721 e!4257276)))

(declare-fun lt!2552769 () (Set Context!13384))

(declare-datatypes ((List!68615 0))(
  ( (Nil!68491) (Cons!68491 (h!74939 C!35662) (t!382400 List!68615)) )
))
(declare-fun s!7408 () List!68615)

(declare-fun derivationStepZipper!3146 ((Set Context!13384) C!35662) (Set Context!13384))

(assert (=> b!7081388 (= res!2892721 (not (= (derivationStepZipper!3146 lt!2552758 (h!74939 s!7408)) lt!2552769)))))

(declare-fun lambda!428003 () Int)

(declare-fun flatMap!2622 ((Set Context!13384) Int) (Set Context!13384))

(declare-fun derivationStepZipperUp!2280 (Context!13384 C!35662) (Set Context!13384))

(assert (=> b!7081388 (= (flatMap!2622 lt!2552758 lambda!428003) (derivationStepZipperUp!2280 lt!2552771 (h!74939 s!7408)))))

(declare-fun lt!2552770 () Unit!162103)

(declare-fun lemmaFlatMapOnSingletonSet!2131 ((Set Context!13384) Context!13384 Int) Unit!162103)

(assert (=> b!7081388 (= lt!2552770 (lemmaFlatMapOnSingletonSet!2131 lt!2552758 lt!2552771 lambda!428003))))

(assert (=> b!7081388 (= lt!2552769 (derivationStepZipperUp!2280 lt!2552771 (h!74939 s!7408)))))

(declare-fun lt!2552765 () Unit!162103)

(assert (=> b!7081388 (= lt!2552765 (lemmaConcatPreservesForall!1007 (exprs!7192 lt!2552760) (exprs!7192 ct2!306) lambda!428002))))

(declare-fun e!4257279 () Bool)

(assert (=> b!7081389 (= e!4257279 (not e!4257278))))

(declare-fun res!2892712 () Bool)

(assert (=> b!7081389 (=> res!2892712 e!4257278)))

(declare-fun matchZipper!3236 ((Set Context!13384) List!68615) Bool)

(assert (=> b!7081389 (= res!2892712 (not (matchZipper!3236 lt!2552757 s!7408)))))

(assert (=> b!7081389 (= lt!2552757 (set.insert lt!2552767 (as set.empty (Set Context!13384))))))

(declare-fun lambda!428000 () Int)

(declare-fun getWitness!1827 ((Set Context!13384) Int) Context!13384)

(assert (=> b!7081389 (= lt!2552767 (getWitness!1827 lt!2552763 lambda!428000))))

(declare-datatypes ((List!68616 0))(
  ( (Nil!68492) (Cons!68492 (h!74940 Context!13384) (t!382401 List!68616)) )
))
(declare-fun lt!2552761 () List!68616)

(declare-fun exists!3782 (List!68616 Int) Bool)

(assert (=> b!7081389 (exists!3782 lt!2552761 lambda!428000)))

(declare-fun lt!2552764 () Unit!162103)

(declare-fun lemmaZipperMatchesExistsMatchingContext!617 (List!68616 List!68615) Unit!162103)

(assert (=> b!7081389 (= lt!2552764 (lemmaZipperMatchesExistsMatchingContext!617 lt!2552761 s!7408))))

(declare-fun toList!11037 ((Set Context!13384)) List!68616)

(assert (=> b!7081389 (= lt!2552761 (toList!11037 lt!2552763))))

(declare-fun res!2892713 () Bool)

(assert (=> start!688882 (=> (not res!2892713) (not e!4257279))))

(assert (=> start!688882 (= res!2892713 (matchZipper!3236 lt!2552763 s!7408))))

(declare-fun appendTo!817 ((Set Context!13384) Context!13384) (Set Context!13384))

(assert (=> start!688882 (= lt!2552763 (appendTo!817 z1!570 ct2!306))))

(assert (=> start!688882 e!4257279))

(declare-fun condSetEmpty!50524 () Bool)

(assert (=> start!688882 (= condSetEmpty!50524 (= z1!570 (as set.empty (Set Context!13384))))))

(assert (=> start!688882 setRes!50524))

(declare-fun e!4257275 () Bool)

(assert (=> start!688882 (and (inv!87100 ct2!306) e!4257275)))

(declare-fun e!4257281 () Bool)

(assert (=> start!688882 e!4257281))

(declare-fun b!7081390 () Bool)

(declare-fun res!2892714 () Bool)

(assert (=> b!7081390 (=> (not res!2892714) (not e!4257279))))

(assert (=> b!7081390 (= res!2892714 (is-Cons!68491 s!7408))))

(declare-fun b!7081391 () Bool)

(declare-fun tp!1943604 () Bool)

(assert (=> b!7081391 (= e!4257275 tp!1943604)))

(declare-fun setIsEmpty!50524 () Bool)

(assert (=> setIsEmpty!50524 setRes!50524))

(declare-fun b!7081392 () Bool)

(declare-fun res!2892722 () Bool)

(assert (=> b!7081392 (=> res!2892722 e!4257284)))

(assert (=> b!7081392 (= res!2892722 (not (matchZipper!3236 (set.insert ct2!306 (as set.empty (Set Context!13384))) s!7408)))))

(declare-fun b!7081393 () Bool)

(declare-fun tp_is_empty!44617 () Bool)

(declare-fun tp!1943603 () Bool)

(assert (=> b!7081393 (= e!4257281 (and tp_is_empty!44617 tp!1943603))))

(declare-fun b!7081394 () Bool)

(declare-fun res!2892717 () Bool)

(declare-fun e!4257280 () Bool)

(assert (=> b!7081394 (=> res!2892717 e!4257280)))

(declare-fun ++!15861 (List!68615 List!68615) List!68615)

(assert (=> b!7081394 (= res!2892717 (not (= (++!15861 Nil!68491 s!7408) s!7408)))))

(declare-fun b!7081395 () Bool)

(assert (=> b!7081395 (= e!4257284 e!4257280)))

(declare-fun res!2892711 () Bool)

(assert (=> b!7081395 (=> res!2892711 e!4257280)))

(declare-fun lt!2552768 () Bool)

(assert (=> b!7081395 (= res!2892711 (not lt!2552768))))

(assert (=> b!7081395 (= lt!2552768 true)))

(declare-fun lt!2552762 () (Set Context!13384))

(assert (=> b!7081395 (= lt!2552768 (matchZipper!3236 lt!2552762 Nil!68491))))

(declare-fun lt!2552759 () Unit!162103)

(declare-fun lemmaZipperOfEmptyContextMatchesEmptyString!27 ((Set Context!13384) List!68615) Unit!162103)

(assert (=> b!7081395 (= lt!2552759 (lemmaZipperOfEmptyContextMatchesEmptyString!27 lt!2552762 Nil!68491))))

(assert (=> b!7081395 (= lt!2552762 (set.insert lt!2552760 (as set.empty (Set Context!13384))))))

(assert (=> b!7081396 (= e!4257278 e!4257283)))

(declare-fun res!2892720 () Bool)

(assert (=> b!7081396 (=> res!2892720 e!4257283)))

(assert (=> b!7081396 (= res!2892720 (or (not (= lt!2552771 lt!2552767)) (not (set.member lt!2552760 z1!570))))))

(declare-fun ++!15862 (List!68614 List!68614) List!68614)

(assert (=> b!7081396 (= lt!2552771 (Context!13385 (++!15862 (exprs!7192 lt!2552760) (exprs!7192 ct2!306))))))

(declare-fun lt!2552773 () Unit!162103)

(assert (=> b!7081396 (= lt!2552773 (lemmaConcatPreservesForall!1007 (exprs!7192 lt!2552760) (exprs!7192 ct2!306) lambda!428002))))

(declare-fun lambda!428001 () Int)

(declare-fun mapPost2!525 ((Set Context!13384) Int Context!13384) Context!13384)

(assert (=> b!7081396 (= lt!2552760 (mapPost2!525 z1!570 lambda!428001 lt!2552767))))

(declare-fun b!7081397 () Bool)

(declare-fun isPrefix!5867 (List!68615 List!68615) Bool)

(assert (=> b!7081397 (= e!4257280 (isPrefix!5867 Nil!68491 Nil!68491))))

(assert (= (and start!688882 res!2892713) b!7081390))

(assert (= (and b!7081390 res!2892714) b!7081389))

(assert (= (and b!7081389 (not res!2892712)) b!7081384))

(assert (= (and b!7081384 (not res!2892715)) b!7081396))

(assert (= (and b!7081396 (not res!2892720)) b!7081383))

(assert (= (and b!7081383 (not res!2892719)) b!7081388))

(assert (= (and b!7081388 (not res!2892721)) b!7081385))

(assert (= (and b!7081385 (not res!2892716)) b!7081386))

(assert (= (and b!7081386 (not res!2892718)) b!7081392))

(assert (= (and b!7081392 (not res!2892722)) b!7081395))

(assert (= (and b!7081395 (not res!2892711)) b!7081394))

(assert (= (and b!7081394 (not res!2892717)) b!7081397))

(assert (= (and start!688882 condSetEmpty!50524) setIsEmpty!50524))

(assert (= (and start!688882 (not condSetEmpty!50524)) setNonEmpty!50524))

(assert (= setNonEmpty!50524 b!7081387))

(assert (= start!688882 b!7081391))

(assert (= (and start!688882 (is-Cons!68491 s!7408)) b!7081393))

(declare-fun m!7812456 () Bool)

(assert (=> b!7081392 m!7812456))

(assert (=> b!7081392 m!7812456))

(declare-fun m!7812458 () Bool)

(assert (=> b!7081392 m!7812458))

(declare-fun m!7812460 () Bool)

(assert (=> b!7081388 m!7812460))

(declare-fun m!7812462 () Bool)

(assert (=> b!7081388 m!7812462))

(declare-fun m!7812464 () Bool)

(assert (=> b!7081388 m!7812464))

(declare-fun m!7812466 () Bool)

(assert (=> b!7081388 m!7812466))

(declare-fun m!7812468 () Bool)

(assert (=> b!7081388 m!7812468))

(assert (=> b!7081386 m!7812468))

(declare-fun m!7812470 () Bool)

(assert (=> b!7081384 m!7812470))

(declare-fun m!7812472 () Bool)

(assert (=> setNonEmpty!50524 m!7812472))

(declare-fun m!7812474 () Bool)

(assert (=> b!7081397 m!7812474))

(declare-fun m!7812476 () Bool)

(assert (=> b!7081389 m!7812476))

(declare-fun m!7812478 () Bool)

(assert (=> b!7081389 m!7812478))

(declare-fun m!7812480 () Bool)

(assert (=> b!7081389 m!7812480))

(declare-fun m!7812482 () Bool)

(assert (=> b!7081389 m!7812482))

(declare-fun m!7812484 () Bool)

(assert (=> b!7081389 m!7812484))

(declare-fun m!7812486 () Bool)

(assert (=> b!7081389 m!7812486))

(declare-fun m!7812488 () Bool)

(assert (=> b!7081396 m!7812488))

(declare-fun m!7812490 () Bool)

(assert (=> b!7081396 m!7812490))

(assert (=> b!7081396 m!7812468))

(declare-fun m!7812492 () Bool)

(assert (=> b!7081396 m!7812492))

(declare-fun m!7812494 () Bool)

(assert (=> b!7081383 m!7812494))

(assert (=> b!7081383 m!7812468))

(declare-fun m!7812496 () Bool)

(assert (=> start!688882 m!7812496))

(declare-fun m!7812498 () Bool)

(assert (=> start!688882 m!7812498))

(declare-fun m!7812500 () Bool)

(assert (=> start!688882 m!7812500))

(declare-fun m!7812502 () Bool)

(assert (=> b!7081394 m!7812502))

(declare-fun m!7812504 () Bool)

(assert (=> b!7081395 m!7812504))

(declare-fun m!7812506 () Bool)

(assert (=> b!7081395 m!7812506))

(declare-fun m!7812508 () Bool)

(assert (=> b!7081395 m!7812508))

(push 1)

(assert (not b!7081387))

(assert (not b!7081386))

(assert tp_is_empty!44617)

(assert (not b!7081395))

(assert (not b!7081393))

(assert (not b!7081394))

(assert (not b!7081397))

(assert (not b!7081391))

(assert (not b!7081392))

(assert (not b!7081389))

(assert (not setNonEmpty!50524))

(assert (not b!7081383))

(assert (not b!7081388))

(assert (not b!7081396))

(assert (not start!688882))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1882191 () Bool)

(declare-fun d!2214892 () Bool)

(assert (= bs!1882191 (and d!2214892 b!7081396)))

(declare-fun lambda!428028 () Int)

(assert (=> bs!1882191 (= lambda!428028 lambda!428002)))

(declare-fun forall!16656 (List!68614 Int) Bool)

(assert (=> d!2214892 (= (inv!87100 setElem!50524) (forall!16656 (exprs!7192 setElem!50524) lambda!428028))))

(declare-fun bs!1882192 () Bool)

(assert (= bs!1882192 d!2214892))

(declare-fun m!7812564 () Bool)

(assert (=> bs!1882192 m!7812564))

(assert (=> setNonEmpty!50524 d!2214892))

(declare-fun b!7081463 () Bool)

(declare-fun e!4257319 () List!68615)

(assert (=> b!7081463 (= e!4257319 s!7408)))

(declare-fun b!7081466 () Bool)

(declare-fun e!4257320 () Bool)

(declare-fun lt!2552829 () List!68615)

(assert (=> b!7081466 (= e!4257320 (or (not (= s!7408 Nil!68491)) (= lt!2552829 Nil!68491)))))

(declare-fun b!7081465 () Bool)

(declare-fun res!2892765 () Bool)

(assert (=> b!7081465 (=> (not res!2892765) (not e!4257320))))

(declare-fun size!41263 (List!68615) Int)

(assert (=> b!7081465 (= res!2892765 (= (size!41263 lt!2552829) (+ (size!41263 Nil!68491) (size!41263 s!7408))))))

(declare-fun d!2214894 () Bool)

(assert (=> d!2214894 e!4257320))

(declare-fun res!2892764 () Bool)

(assert (=> d!2214894 (=> (not res!2892764) (not e!4257320))))

(declare-fun content!13881 (List!68615) (Set C!35662))

(assert (=> d!2214894 (= res!2892764 (= (content!13881 lt!2552829) (set.union (content!13881 Nil!68491) (content!13881 s!7408))))))

(assert (=> d!2214894 (= lt!2552829 e!4257319)))

(declare-fun c!1321719 () Bool)

(assert (=> d!2214894 (= c!1321719 (is-Nil!68491 Nil!68491))))

(assert (=> d!2214894 (= (++!15861 Nil!68491 s!7408) lt!2552829)))

(declare-fun b!7081464 () Bool)

(assert (=> b!7081464 (= e!4257319 (Cons!68491 (h!74939 Nil!68491) (++!15861 (t!382400 Nil!68491) s!7408)))))

(assert (= (and d!2214894 c!1321719) b!7081463))

(assert (= (and d!2214894 (not c!1321719)) b!7081464))

(assert (= (and d!2214894 res!2892764) b!7081465))

(assert (= (and b!7081465 res!2892765) b!7081466))

(declare-fun m!7812566 () Bool)

(assert (=> b!7081465 m!7812566))

(declare-fun m!7812568 () Bool)

(assert (=> b!7081465 m!7812568))

(declare-fun m!7812570 () Bool)

(assert (=> b!7081465 m!7812570))

(declare-fun m!7812572 () Bool)

(assert (=> d!2214894 m!7812572))

(declare-fun m!7812574 () Bool)

(assert (=> d!2214894 m!7812574))

(declare-fun m!7812576 () Bool)

(assert (=> d!2214894 m!7812576))

(declare-fun m!7812578 () Bool)

(assert (=> b!7081464 m!7812578))

(assert (=> b!7081394 d!2214894))

(declare-fun d!2214896 () Bool)

(declare-fun c!1321722 () Bool)

(declare-fun isEmpty!39977 (List!68615) Bool)

(assert (=> d!2214896 (= c!1321722 (isEmpty!39977 s!7408))))

(declare-fun e!4257323 () Bool)

(assert (=> d!2214896 (= (matchZipper!3236 lt!2552763 s!7408) e!4257323)))

(declare-fun b!7081471 () Bool)

(declare-fun nullableZipper!2730 ((Set Context!13384)) Bool)

(assert (=> b!7081471 (= e!4257323 (nullableZipper!2730 lt!2552763))))

(declare-fun b!7081472 () Bool)

(declare-fun head!14439 (List!68615) C!35662)

(declare-fun tail!13902 (List!68615) List!68615)

(assert (=> b!7081472 (= e!4257323 (matchZipper!3236 (derivationStepZipper!3146 lt!2552763 (head!14439 s!7408)) (tail!13902 s!7408)))))

(assert (= (and d!2214896 c!1321722) b!7081471))

(assert (= (and d!2214896 (not c!1321722)) b!7081472))

(declare-fun m!7812580 () Bool)

(assert (=> d!2214896 m!7812580))

(declare-fun m!7812582 () Bool)

(assert (=> b!7081471 m!7812582))

(declare-fun m!7812584 () Bool)

(assert (=> b!7081472 m!7812584))

(assert (=> b!7081472 m!7812584))

(declare-fun m!7812586 () Bool)

(assert (=> b!7081472 m!7812586))

(declare-fun m!7812588 () Bool)

(assert (=> b!7081472 m!7812588))

(assert (=> b!7081472 m!7812586))

(assert (=> b!7081472 m!7812588))

(declare-fun m!7812590 () Bool)

(assert (=> b!7081472 m!7812590))

(assert (=> start!688882 d!2214896))

(declare-fun bs!1882193 () Bool)

(declare-fun d!2214898 () Bool)

(assert (= bs!1882193 (and d!2214898 b!7081396)))

(declare-fun lambda!428033 () Int)

(assert (=> bs!1882193 (= lambda!428033 lambda!428001)))

(assert (=> d!2214898 true))

(declare-fun map!16046 ((Set Context!13384) Int) (Set Context!13384))

(assert (=> d!2214898 (= (appendTo!817 z1!570 ct2!306) (map!16046 z1!570 lambda!428033))))

(declare-fun bs!1882194 () Bool)

(assert (= bs!1882194 d!2214898))

(declare-fun m!7812592 () Bool)

(assert (=> bs!1882194 m!7812592))

(assert (=> start!688882 d!2214898))

(declare-fun bs!1882195 () Bool)

(declare-fun d!2214900 () Bool)

(assert (= bs!1882195 (and d!2214900 b!7081396)))

(declare-fun lambda!428034 () Int)

(assert (=> bs!1882195 (= lambda!428034 lambda!428002)))

(declare-fun bs!1882196 () Bool)

(assert (= bs!1882196 (and d!2214900 d!2214892)))

(assert (=> bs!1882196 (= lambda!428034 lambda!428028)))

(assert (=> d!2214900 (= (inv!87100 ct2!306) (forall!16656 (exprs!7192 ct2!306) lambda!428034))))

(declare-fun bs!1882197 () Bool)

(assert (= bs!1882197 d!2214900))

(declare-fun m!7812594 () Bool)

(assert (=> bs!1882197 m!7812594))

(assert (=> start!688882 d!2214900))

(declare-fun b!7081483 () Bool)

(declare-fun res!2892772 () Bool)

(declare-fun e!4257329 () Bool)

(assert (=> b!7081483 (=> (not res!2892772) (not e!4257329))))

(declare-fun lt!2552834 () List!68614)

(declare-fun size!41264 (List!68614) Int)

(assert (=> b!7081483 (= res!2892772 (= (size!41264 lt!2552834) (+ (size!41264 (exprs!7192 lt!2552760)) (size!41264 (exprs!7192 ct2!306)))))))

(declare-fun b!7081482 () Bool)

(declare-fun e!4257328 () List!68614)

(assert (=> b!7081482 (= e!4257328 (Cons!68490 (h!74938 (exprs!7192 lt!2552760)) (++!15862 (t!382399 (exprs!7192 lt!2552760)) (exprs!7192 ct2!306))))))

(declare-fun b!7081484 () Bool)

(assert (=> b!7081484 (= e!4257329 (or (not (= (exprs!7192 ct2!306) Nil!68490)) (= lt!2552834 (exprs!7192 lt!2552760))))))

(declare-fun b!7081481 () Bool)

(assert (=> b!7081481 (= e!4257328 (exprs!7192 ct2!306))))

(declare-fun d!2214902 () Bool)

(assert (=> d!2214902 e!4257329))

(declare-fun res!2892771 () Bool)

(assert (=> d!2214902 (=> (not res!2892771) (not e!4257329))))

(declare-fun content!13882 (List!68614) (Set Regex!17696))

(assert (=> d!2214902 (= res!2892771 (= (content!13882 lt!2552834) (set.union (content!13882 (exprs!7192 lt!2552760)) (content!13882 (exprs!7192 ct2!306)))))))

(assert (=> d!2214902 (= lt!2552834 e!4257328)))

(declare-fun c!1321726 () Bool)

(assert (=> d!2214902 (= c!1321726 (is-Nil!68490 (exprs!7192 lt!2552760)))))

(assert (=> d!2214902 (= (++!15862 (exprs!7192 lt!2552760) (exprs!7192 ct2!306)) lt!2552834)))

(assert (= (and d!2214902 c!1321726) b!7081481))

(assert (= (and d!2214902 (not c!1321726)) b!7081482))

(assert (= (and d!2214902 res!2892771) b!7081483))

(assert (= (and b!7081483 res!2892772) b!7081484))

(declare-fun m!7812596 () Bool)

(assert (=> b!7081483 m!7812596))

(declare-fun m!7812598 () Bool)

(assert (=> b!7081483 m!7812598))

(declare-fun m!7812600 () Bool)

(assert (=> b!7081483 m!7812600))

(declare-fun m!7812602 () Bool)

(assert (=> b!7081482 m!7812602))

(declare-fun m!7812604 () Bool)

(assert (=> d!2214902 m!7812604))

(declare-fun m!7812606 () Bool)

(assert (=> d!2214902 m!7812606))

(declare-fun m!7812608 () Bool)

(assert (=> d!2214902 m!7812608))

(assert (=> b!7081396 d!2214902))

(declare-fun d!2214904 () Bool)

(assert (=> d!2214904 (forall!16656 (++!15862 (exprs!7192 lt!2552760) (exprs!7192 ct2!306)) lambda!428002)))

(declare-fun lt!2552837 () Unit!162103)

(declare-fun choose!54490 (List!68614 List!68614 Int) Unit!162103)

(assert (=> d!2214904 (= lt!2552837 (choose!54490 (exprs!7192 lt!2552760) (exprs!7192 ct2!306) lambda!428002))))

(assert (=> d!2214904 (forall!16656 (exprs!7192 lt!2552760) lambda!428002)))

(assert (=> d!2214904 (= (lemmaConcatPreservesForall!1007 (exprs!7192 lt!2552760) (exprs!7192 ct2!306) lambda!428002) lt!2552837)))

(declare-fun bs!1882198 () Bool)

(assert (= bs!1882198 d!2214904))

(assert (=> bs!1882198 m!7812490))

(assert (=> bs!1882198 m!7812490))

(declare-fun m!7812610 () Bool)

(assert (=> bs!1882198 m!7812610))

(declare-fun m!7812612 () Bool)

(assert (=> bs!1882198 m!7812612))

(declare-fun m!7812614 () Bool)

(assert (=> bs!1882198 m!7812614))

(assert (=> b!7081396 d!2214904))

(declare-fun d!2214906 () Bool)

(declare-fun e!4257332 () Bool)

(assert (=> d!2214906 e!4257332))

(declare-fun res!2892775 () Bool)

(assert (=> d!2214906 (=> (not res!2892775) (not e!4257332))))

(declare-fun lt!2552840 () Context!13384)

(declare-fun dynLambda!27916 (Int Context!13384) Context!13384)

(assert (=> d!2214906 (= res!2892775 (= lt!2552767 (dynLambda!27916 lambda!428001 lt!2552840)))))

(declare-fun choose!54491 ((Set Context!13384) Int Context!13384) Context!13384)

(assert (=> d!2214906 (= lt!2552840 (choose!54491 z1!570 lambda!428001 lt!2552767))))

(assert (=> d!2214906 (set.member lt!2552767 (map!16046 z1!570 lambda!428001))))

(assert (=> d!2214906 (= (mapPost2!525 z1!570 lambda!428001 lt!2552767) lt!2552840)))

(declare-fun b!7081488 () Bool)

(assert (=> b!7081488 (= e!4257332 (set.member lt!2552840 z1!570))))

(assert (= (and d!2214906 res!2892775) b!7081488))

(declare-fun b_lambda!270585 () Bool)

(assert (=> (not b_lambda!270585) (not d!2214906)))

(declare-fun m!7812616 () Bool)

(assert (=> d!2214906 m!7812616))

(declare-fun m!7812618 () Bool)

(assert (=> d!2214906 m!7812618))

(declare-fun m!7812620 () Bool)

(assert (=> d!2214906 m!7812620))

(declare-fun m!7812622 () Bool)

(assert (=> d!2214906 m!7812622))

(declare-fun m!7812624 () Bool)

(assert (=> b!7081488 m!7812624))

(assert (=> b!7081396 d!2214906))

(assert (=> b!7081386 d!2214904))

(declare-fun d!2214908 () Bool)

(declare-fun c!1321727 () Bool)

(assert (=> d!2214908 (= c!1321727 (isEmpty!39977 Nil!68491))))

(declare-fun e!4257333 () Bool)

(assert (=> d!2214908 (= (matchZipper!3236 lt!2552762 Nil!68491) e!4257333)))

(declare-fun b!7081489 () Bool)

(assert (=> b!7081489 (= e!4257333 (nullableZipper!2730 lt!2552762))))

(declare-fun b!7081490 () Bool)

(assert (=> b!7081490 (= e!4257333 (matchZipper!3236 (derivationStepZipper!3146 lt!2552762 (head!14439 Nil!68491)) (tail!13902 Nil!68491)))))

(assert (= (and d!2214908 c!1321727) b!7081489))

(assert (= (and d!2214908 (not c!1321727)) b!7081490))

(declare-fun m!7812626 () Bool)

(assert (=> d!2214908 m!7812626))

(declare-fun m!7812628 () Bool)

(assert (=> b!7081489 m!7812628))

(declare-fun m!7812630 () Bool)

(assert (=> b!7081490 m!7812630))

(assert (=> b!7081490 m!7812630))

(declare-fun m!7812632 () Bool)

(assert (=> b!7081490 m!7812632))

(declare-fun m!7812634 () Bool)

(assert (=> b!7081490 m!7812634))

(assert (=> b!7081490 m!7812632))

(assert (=> b!7081490 m!7812634))

(declare-fun m!7812636 () Bool)

(assert (=> b!7081490 m!7812636))

(assert (=> b!7081395 d!2214908))

(declare-fun d!2214910 () Bool)

(assert (=> d!2214910 (= (matchZipper!3236 lt!2552762 Nil!68491) (isEmpty!39977 Nil!68491))))

(declare-fun lt!2552843 () Unit!162103)

(declare-fun choose!54492 ((Set Context!13384) List!68615) Unit!162103)

(assert (=> d!2214910 (= lt!2552843 (choose!54492 lt!2552762 Nil!68491))))

(assert (=> d!2214910 (= lt!2552762 (set.singleton (Context!13385 Nil!68490)))))

(assert (=> d!2214910 (= (lemmaZipperOfEmptyContextMatchesEmptyString!27 lt!2552762 Nil!68491) lt!2552843)))

(declare-fun bs!1882199 () Bool)

(assert (= bs!1882199 d!2214910))

(assert (=> bs!1882199 m!7812504))

(assert (=> bs!1882199 m!7812626))

(declare-fun m!7812638 () Bool)

(assert (=> bs!1882199 m!7812638))

(assert (=> b!7081395 d!2214910))

(declare-fun d!2214912 () Bool)

(declare-fun c!1321728 () Bool)

(assert (=> d!2214912 (= c!1321728 (isEmpty!39977 s!7408))))

(declare-fun e!4257334 () Bool)

(assert (=> d!2214912 (= (matchZipper!3236 (set.insert ct2!306 (as set.empty (Set Context!13384))) s!7408) e!4257334)))

(declare-fun b!7081491 () Bool)

(assert (=> b!7081491 (= e!4257334 (nullableZipper!2730 (set.insert ct2!306 (as set.empty (Set Context!13384)))))))

(declare-fun b!7081492 () Bool)

(assert (=> b!7081492 (= e!4257334 (matchZipper!3236 (derivationStepZipper!3146 (set.insert ct2!306 (as set.empty (Set Context!13384))) (head!14439 s!7408)) (tail!13902 s!7408)))))

(assert (= (and d!2214912 c!1321728) b!7081491))

(assert (= (and d!2214912 (not c!1321728)) b!7081492))

(assert (=> d!2214912 m!7812580))

(assert (=> b!7081491 m!7812456))

(declare-fun m!7812640 () Bool)

(assert (=> b!7081491 m!7812640))

(assert (=> b!7081492 m!7812584))

(assert (=> b!7081492 m!7812456))

(assert (=> b!7081492 m!7812584))

(declare-fun m!7812642 () Bool)

(assert (=> b!7081492 m!7812642))

(assert (=> b!7081492 m!7812588))

(assert (=> b!7081492 m!7812642))

(assert (=> b!7081492 m!7812588))

(declare-fun m!7812644 () Bool)

(assert (=> b!7081492 m!7812644))

(assert (=> b!7081392 d!2214912))

(assert (=> b!7081383 d!2214904))

(declare-fun b!7081503 () Bool)

(declare-fun e!4257341 () Bool)

(assert (=> b!7081503 (= e!4257341 (isPrefix!5867 (tail!13902 Nil!68491) (tail!13902 Nil!68491)))))

(declare-fun b!7081501 () Bool)

(declare-fun e!4257342 () Bool)

(assert (=> b!7081501 (= e!4257342 e!4257341)))

(declare-fun res!2892785 () Bool)

(assert (=> b!7081501 (=> (not res!2892785) (not e!4257341))))

(assert (=> b!7081501 (= res!2892785 (not (is-Nil!68491 Nil!68491)))))

(declare-fun b!7081502 () Bool)

(declare-fun res!2892787 () Bool)

(assert (=> b!7081502 (=> (not res!2892787) (not e!4257341))))

(assert (=> b!7081502 (= res!2892787 (= (head!14439 Nil!68491) (head!14439 Nil!68491)))))

(declare-fun b!7081504 () Bool)

(declare-fun e!4257343 () Bool)

(assert (=> b!7081504 (= e!4257343 (>= (size!41263 Nil!68491) (size!41263 Nil!68491)))))

(declare-fun d!2214914 () Bool)

(assert (=> d!2214914 e!4257343))

(declare-fun res!2892784 () Bool)

(assert (=> d!2214914 (=> res!2892784 e!4257343)))

(declare-fun lt!2552846 () Bool)

(assert (=> d!2214914 (= res!2892784 (not lt!2552846))))

(assert (=> d!2214914 (= lt!2552846 e!4257342)))

(declare-fun res!2892786 () Bool)

(assert (=> d!2214914 (=> res!2892786 e!4257342)))

(assert (=> d!2214914 (= res!2892786 (is-Nil!68491 Nil!68491))))

(assert (=> d!2214914 (= (isPrefix!5867 Nil!68491 Nil!68491) lt!2552846)))

(assert (= (and d!2214914 (not res!2892786)) b!7081501))

(assert (= (and b!7081501 res!2892785) b!7081502))

(assert (= (and b!7081502 res!2892787) b!7081503))

(assert (= (and d!2214914 (not res!2892784)) b!7081504))

(assert (=> b!7081503 m!7812634))

(assert (=> b!7081503 m!7812634))

(assert (=> b!7081503 m!7812634))

(assert (=> b!7081503 m!7812634))

(declare-fun m!7812646 () Bool)

(assert (=> b!7081503 m!7812646))

(assert (=> b!7081502 m!7812630))

(assert (=> b!7081502 m!7812630))

(assert (=> b!7081504 m!7812568))

(assert (=> b!7081504 m!7812568))

(assert (=> b!7081397 d!2214914))

(declare-fun d!2214916 () Bool)

(declare-fun e!4257346 () Bool)

(assert (=> d!2214916 e!4257346))

(declare-fun res!2892790 () Bool)

(assert (=> d!2214916 (=> (not res!2892790) (not e!4257346))))

(declare-fun lt!2552849 () List!68616)

(declare-fun noDuplicate!2757 (List!68616) Bool)

(assert (=> d!2214916 (= res!2892790 (noDuplicate!2757 lt!2552849))))

(declare-fun choose!54493 ((Set Context!13384)) List!68616)

(assert (=> d!2214916 (= lt!2552849 (choose!54493 lt!2552763))))

(assert (=> d!2214916 (= (toList!11037 lt!2552763) lt!2552849)))

(declare-fun b!7081507 () Bool)

(declare-fun content!13883 (List!68616) (Set Context!13384))

(assert (=> b!7081507 (= e!4257346 (= (content!13883 lt!2552849) lt!2552763))))

(assert (= (and d!2214916 res!2892790) b!7081507))

(declare-fun m!7812648 () Bool)

(assert (=> d!2214916 m!7812648))

(declare-fun m!7812650 () Bool)

(assert (=> d!2214916 m!7812650))

(declare-fun m!7812652 () Bool)

(assert (=> b!7081507 m!7812652))

(assert (=> b!7081389 d!2214916))

(declare-fun d!2214918 () Bool)

(declare-fun e!4257349 () Bool)

(assert (=> d!2214918 e!4257349))

(declare-fun res!2892793 () Bool)

(assert (=> d!2214918 (=> (not res!2892793) (not e!4257349))))

(declare-fun lt!2552852 () Context!13384)

(declare-fun dynLambda!27917 (Int Context!13384) Bool)

(assert (=> d!2214918 (= res!2892793 (dynLambda!27917 lambda!428000 lt!2552852))))

(declare-fun getWitness!1829 (List!68616 Int) Context!13384)

(assert (=> d!2214918 (= lt!2552852 (getWitness!1829 (toList!11037 lt!2552763) lambda!428000))))

(declare-fun exists!3784 ((Set Context!13384) Int) Bool)

(assert (=> d!2214918 (exists!3784 lt!2552763 lambda!428000)))

(assert (=> d!2214918 (= (getWitness!1827 lt!2552763 lambda!428000) lt!2552852)))

(declare-fun b!7081510 () Bool)

(assert (=> b!7081510 (= e!4257349 (set.member lt!2552852 lt!2552763))))

(assert (= (and d!2214918 res!2892793) b!7081510))

(declare-fun b_lambda!270587 () Bool)

(assert (=> (not b_lambda!270587) (not d!2214918)))

(declare-fun m!7812654 () Bool)

(assert (=> d!2214918 m!7812654))

(assert (=> d!2214918 m!7812480))

(assert (=> d!2214918 m!7812480))

(declare-fun m!7812656 () Bool)

(assert (=> d!2214918 m!7812656))

(declare-fun m!7812658 () Bool)

(assert (=> d!2214918 m!7812658))

(declare-fun m!7812660 () Bool)

(assert (=> b!7081510 m!7812660))

(assert (=> b!7081389 d!2214918))

(declare-fun bs!1882200 () Bool)

(declare-fun d!2214922 () Bool)

(assert (= bs!1882200 (and d!2214922 b!7081389)))

(declare-fun lambda!428037 () Int)

(assert (=> bs!1882200 (= lambda!428037 lambda!428000)))

(assert (=> d!2214922 true))

(assert (=> d!2214922 (exists!3782 lt!2552761 lambda!428037)))

(declare-fun lt!2552855 () Unit!162103)

(declare-fun choose!54494 (List!68616 List!68615) Unit!162103)

(assert (=> d!2214922 (= lt!2552855 (choose!54494 lt!2552761 s!7408))))

(assert (=> d!2214922 (matchZipper!3236 (content!13883 lt!2552761) s!7408)))

(assert (=> d!2214922 (= (lemmaZipperMatchesExistsMatchingContext!617 lt!2552761 s!7408) lt!2552855)))

(declare-fun bs!1882201 () Bool)

(assert (= bs!1882201 d!2214922))

(declare-fun m!7812662 () Bool)

(assert (=> bs!1882201 m!7812662))

(declare-fun m!7812664 () Bool)

(assert (=> bs!1882201 m!7812664))

(declare-fun m!7812666 () Bool)

(assert (=> bs!1882201 m!7812666))

(assert (=> bs!1882201 m!7812666))

(declare-fun m!7812668 () Bool)

(assert (=> bs!1882201 m!7812668))

(assert (=> b!7081389 d!2214922))

(declare-fun bs!1882202 () Bool)

(declare-fun d!2214924 () Bool)

(assert (= bs!1882202 (and d!2214924 b!7081389)))

(declare-fun lambda!428040 () Int)

(assert (=> bs!1882202 (not (= lambda!428040 lambda!428000))))

(declare-fun bs!1882203 () Bool)

(assert (= bs!1882203 (and d!2214924 d!2214922)))

(assert (=> bs!1882203 (not (= lambda!428040 lambda!428037))))

(assert (=> d!2214924 true))

(declare-fun order!28475 () Int)

(declare-fun dynLambda!27918 (Int Int) Int)

(assert (=> d!2214924 (< (dynLambda!27918 order!28475 lambda!428000) (dynLambda!27918 order!28475 lambda!428040))))

(declare-fun forall!16657 (List!68616 Int) Bool)

(assert (=> d!2214924 (= (exists!3782 lt!2552761 lambda!428000) (not (forall!16657 lt!2552761 lambda!428040)))))

(declare-fun bs!1882204 () Bool)

(assert (= bs!1882204 d!2214924))

(declare-fun m!7812670 () Bool)

(assert (=> bs!1882204 m!7812670))

(assert (=> b!7081389 d!2214924))

(declare-fun d!2214926 () Bool)

(declare-fun c!1321733 () Bool)

(assert (=> d!2214926 (= c!1321733 (isEmpty!39977 s!7408))))

(declare-fun e!4257352 () Bool)

(assert (=> d!2214926 (= (matchZipper!3236 lt!2552757 s!7408) e!4257352)))

(declare-fun b!7081517 () Bool)

(assert (=> b!7081517 (= e!4257352 (nullableZipper!2730 lt!2552757))))

(declare-fun b!7081518 () Bool)

(assert (=> b!7081518 (= e!4257352 (matchZipper!3236 (derivationStepZipper!3146 lt!2552757 (head!14439 s!7408)) (tail!13902 s!7408)))))

(assert (= (and d!2214926 c!1321733) b!7081517))

(assert (= (and d!2214926 (not c!1321733)) b!7081518))

(assert (=> d!2214926 m!7812580))

(declare-fun m!7812672 () Bool)

(assert (=> b!7081517 m!7812672))

(assert (=> b!7081518 m!7812584))

(assert (=> b!7081518 m!7812584))

(declare-fun m!7812674 () Bool)

(assert (=> b!7081518 m!7812674))

(assert (=> b!7081518 m!7812588))

(assert (=> b!7081518 m!7812674))

(assert (=> b!7081518 m!7812588))

(declare-fun m!7812676 () Bool)

(assert (=> b!7081518 m!7812676))

(assert (=> b!7081389 d!2214926))

(declare-fun bs!1882205 () Bool)

(declare-fun d!2214928 () Bool)

(assert (= bs!1882205 (and d!2214928 b!7081388)))

(declare-fun lambda!428043 () Int)

(assert (=> bs!1882205 (= lambda!428043 lambda!428003)))

(assert (=> d!2214928 true))

(assert (=> d!2214928 (= (derivationStepZipper!3146 lt!2552758 (h!74939 s!7408)) (flatMap!2622 lt!2552758 lambda!428043))))

(declare-fun bs!1882206 () Bool)

(assert (= bs!1882206 d!2214928))

(declare-fun m!7812690 () Bool)

(assert (=> bs!1882206 m!7812690))

(assert (=> b!7081388 d!2214928))

(declare-fun d!2214932 () Bool)

(declare-fun choose!54495 ((Set Context!13384) Int) (Set Context!13384))

(assert (=> d!2214932 (= (flatMap!2622 lt!2552758 lambda!428003) (choose!54495 lt!2552758 lambda!428003))))

(declare-fun bs!1882207 () Bool)

(assert (= bs!1882207 d!2214932))

(declare-fun m!7812692 () Bool)

(assert (=> bs!1882207 m!7812692))

(assert (=> b!7081388 d!2214932))

(declare-fun b!7081533 () Bool)

(declare-fun e!4257360 () (Set Context!13384))

(declare-fun call!643604 () (Set Context!13384))

(assert (=> b!7081533 (= e!4257360 call!643604)))

(declare-fun b!7081534 () Bool)

(declare-fun e!4257361 () Bool)

(declare-fun nullable!7374 (Regex!17696) Bool)

(assert (=> b!7081534 (= e!4257361 (nullable!7374 (h!74938 (exprs!7192 lt!2552771))))))

(declare-fun b!7081535 () Bool)

(declare-fun e!4257362 () (Set Context!13384))

(assert (=> b!7081535 (= e!4257362 e!4257360)))

(declare-fun c!1321741 () Bool)

(assert (=> b!7081535 (= c!1321741 (is-Cons!68490 (exprs!7192 lt!2552771)))))

(declare-fun bm!643599 () Bool)

(declare-fun derivationStepZipperDown!2325 (Regex!17696 Context!13384 C!35662) (Set Context!13384))

(assert (=> bm!643599 (= call!643604 (derivationStepZipperDown!2325 (h!74938 (exprs!7192 lt!2552771)) (Context!13385 (t!382399 (exprs!7192 lt!2552771))) (h!74939 s!7408)))))

(declare-fun b!7081536 () Bool)

(assert (=> b!7081536 (= e!4257360 (as set.empty (Set Context!13384)))))

(declare-fun d!2214934 () Bool)

(declare-fun c!1321742 () Bool)

(assert (=> d!2214934 (= c!1321742 e!4257361)))

(declare-fun res!2892796 () Bool)

(assert (=> d!2214934 (=> (not res!2892796) (not e!4257361))))

(assert (=> d!2214934 (= res!2892796 (is-Cons!68490 (exprs!7192 lt!2552771)))))

(assert (=> d!2214934 (= (derivationStepZipperUp!2280 lt!2552771 (h!74939 s!7408)) e!4257362)))

(declare-fun b!7081537 () Bool)

(assert (=> b!7081537 (= e!4257362 (set.union call!643604 (derivationStepZipperUp!2280 (Context!13385 (t!382399 (exprs!7192 lt!2552771))) (h!74939 s!7408))))))

(assert (= (and d!2214934 res!2892796) b!7081534))

(assert (= (and d!2214934 c!1321742) b!7081537))

(assert (= (and d!2214934 (not c!1321742)) b!7081535))

(assert (= (and b!7081535 c!1321741) b!7081533))

(assert (= (and b!7081535 (not c!1321741)) b!7081536))

(assert (= (or b!7081537 b!7081533) bm!643599))

(declare-fun m!7812694 () Bool)

(assert (=> b!7081534 m!7812694))

(declare-fun m!7812696 () Bool)

(assert (=> bm!643599 m!7812696))

(declare-fun m!7812698 () Bool)

(assert (=> b!7081537 m!7812698))

(assert (=> b!7081388 d!2214934))

(assert (=> b!7081388 d!2214904))

(declare-fun d!2214936 () Bool)

(declare-fun dynLambda!27919 (Int Context!13384) (Set Context!13384))

(assert (=> d!2214936 (= (flatMap!2622 lt!2552758 lambda!428003) (dynLambda!27919 lambda!428003 lt!2552771))))

(declare-fun lt!2552858 () Unit!162103)

(declare-fun choose!54496 ((Set Context!13384) Context!13384 Int) Unit!162103)

(assert (=> d!2214936 (= lt!2552858 (choose!54496 lt!2552758 lt!2552771 lambda!428003))))

(assert (=> d!2214936 (= lt!2552758 (set.insert lt!2552771 (as set.empty (Set Context!13384))))))

(assert (=> d!2214936 (= (lemmaFlatMapOnSingletonSet!2131 lt!2552758 lt!2552771 lambda!428003) lt!2552858)))

(declare-fun b_lambda!270589 () Bool)

(assert (=> (not b_lambda!270589) (not d!2214936)))

(declare-fun bs!1882208 () Bool)

(assert (= bs!1882208 d!2214936))

(assert (=> bs!1882208 m!7812466))

(declare-fun m!7812700 () Bool)

(assert (=> bs!1882208 m!7812700))

(declare-fun m!7812702 () Bool)

(assert (=> bs!1882208 m!7812702))

(assert (=> bs!1882208 m!7812494))

(assert (=> b!7081388 d!2214936))

(declare-fun condSetEmpty!50530 () Bool)

(assert (=> setNonEmpty!50524 (= condSetEmpty!50530 (= setRest!50524 (as set.empty (Set Context!13384))))))

(declare-fun setRes!50530 () Bool)

(assert (=> setNonEmpty!50524 (= tp!1943606 setRes!50530)))

(declare-fun setIsEmpty!50530 () Bool)

(assert (=> setIsEmpty!50530 setRes!50530))

(declare-fun tp!1943624 () Bool)

(declare-fun setElem!50530 () Context!13384)

(declare-fun setNonEmpty!50530 () Bool)

(declare-fun e!4257365 () Bool)

(assert (=> setNonEmpty!50530 (= setRes!50530 (and tp!1943624 (inv!87100 setElem!50530) e!4257365))))

(declare-fun setRest!50530 () (Set Context!13384))

(assert (=> setNonEmpty!50530 (= setRest!50524 (set.union (set.insert setElem!50530 (as set.empty (Set Context!13384))) setRest!50530))))

(declare-fun b!7081542 () Bool)

(declare-fun tp!1943623 () Bool)

(assert (=> b!7081542 (= e!4257365 tp!1943623)))

(assert (= (and setNonEmpty!50524 condSetEmpty!50530) setIsEmpty!50530))

(assert (= (and setNonEmpty!50524 (not condSetEmpty!50530)) setNonEmpty!50530))

(assert (= setNonEmpty!50530 b!7081542))

(declare-fun m!7812704 () Bool)

(assert (=> setNonEmpty!50530 m!7812704))

(declare-fun b!7081547 () Bool)

(declare-fun e!4257368 () Bool)

(declare-fun tp!1943629 () Bool)

(declare-fun tp!1943630 () Bool)

(assert (=> b!7081547 (= e!4257368 (and tp!1943629 tp!1943630))))

(assert (=> b!7081391 (= tp!1943604 e!4257368)))

(assert (= (and b!7081391 (is-Cons!68490 (exprs!7192 ct2!306))) b!7081547))

(declare-fun b!7081548 () Bool)

(declare-fun e!4257369 () Bool)

(declare-fun tp!1943631 () Bool)

(declare-fun tp!1943632 () Bool)

(assert (=> b!7081548 (= e!4257369 (and tp!1943631 tp!1943632))))

(assert (=> b!7081387 (= tp!1943605 e!4257369)))

(assert (= (and b!7081387 (is-Cons!68490 (exprs!7192 setElem!50524))) b!7081548))

(declare-fun b!7081553 () Bool)

(declare-fun e!4257372 () Bool)

(declare-fun tp!1943635 () Bool)

(assert (=> b!7081553 (= e!4257372 (and tp_is_empty!44617 tp!1943635))))

(assert (=> b!7081393 (= tp!1943603 e!4257372)))

(assert (= (and b!7081393 (is-Cons!68491 (t!382400 s!7408))) b!7081553))

(declare-fun b_lambda!270591 () Bool)

(assert (= b_lambda!270589 (or b!7081388 b_lambda!270591)))

(declare-fun bs!1882210 () Bool)

(declare-fun d!2214940 () Bool)

(assert (= bs!1882210 (and d!2214940 b!7081388)))

(assert (=> bs!1882210 (= (dynLambda!27919 lambda!428003 lt!2552771) (derivationStepZipperUp!2280 lt!2552771 (h!74939 s!7408)))))

(assert (=> bs!1882210 m!7812460))

(assert (=> d!2214936 d!2214940))

(declare-fun b_lambda!270593 () Bool)

(assert (= b_lambda!270587 (or b!7081389 b_lambda!270593)))

(declare-fun bs!1882211 () Bool)

(declare-fun d!2214942 () Bool)

(assert (= bs!1882211 (and d!2214942 b!7081389)))

(assert (=> bs!1882211 (= (dynLambda!27917 lambda!428000 lt!2552852) (matchZipper!3236 (set.insert lt!2552852 (as set.empty (Set Context!13384))) s!7408))))

(declare-fun m!7812708 () Bool)

(assert (=> bs!1882211 m!7812708))

(assert (=> bs!1882211 m!7812708))

(declare-fun m!7812710 () Bool)

(assert (=> bs!1882211 m!7812710))

(assert (=> d!2214918 d!2214942))

(declare-fun b_lambda!270595 () Bool)

(assert (= b_lambda!270585 (or b!7081396 b_lambda!270595)))

(declare-fun bs!1882212 () Bool)

(declare-fun d!2214944 () Bool)

(assert (= bs!1882212 (and d!2214944 b!7081396)))

(declare-fun lt!2552862 () Unit!162103)

(assert (=> bs!1882212 (= lt!2552862 (lemmaConcatPreservesForall!1007 (exprs!7192 lt!2552840) (exprs!7192 ct2!306) lambda!428002))))

(assert (=> bs!1882212 (= (dynLambda!27916 lambda!428001 lt!2552840) (Context!13385 (++!15862 (exprs!7192 lt!2552840) (exprs!7192 ct2!306))))))

(declare-fun m!7812712 () Bool)

(assert (=> bs!1882212 m!7812712))

(declare-fun m!7812714 () Bool)

(assert (=> bs!1882212 m!7812714))

(assert (=> d!2214906 d!2214944))

(push 1)

(assert (not d!2214922))

(assert (not d!2214924))

(assert (not b!7081534))

(assert (not d!2214900))

(assert (not b!7081547))

(assert (not b!7081491))

(assert (not b!7081553))

(assert (not d!2214896))

(assert (not b!7081517))

(assert (not d!2214928))

(assert (not d!2214918))

(assert (not d!2214932))

(assert (not b!7081489))

(assert (not b!7081471))

(assert (not d!2214926))

(assert (not b!7081490))

(assert tp_is_empty!44617)

(assert (not b!7081483))

(assert (not b!7081503))

(assert (not b_lambda!270593))

(assert (not b!7081507))

(assert (not b!7081502))

(assert (not b!7081504))

(assert (not bm!643599))

(assert (not b!7081548))

(assert (not d!2214892))

(assert (not d!2214898))

(assert (not bs!1882212))

(assert (not setNonEmpty!50530))

(assert (not d!2214916))

(assert (not d!2214906))

(assert (not d!2214904))

(assert (not d!2214908))

(assert (not b!7081465))

(assert (not bs!1882211))

(assert (not b_lambda!270595))

(assert (not bs!1882210))

(assert (not b_lambda!270591))

(assert (not d!2214910))

(assert (not b!7081518))

(assert (not b!7081492))

(assert (not b!7081472))

(assert (not d!2214936))

(assert (not b!7081464))

(assert (not d!2214912))

(assert (not b!7081542))

(assert (not d!2214894))

(assert (not b!7081537))

(assert (not b!7081482))

(assert (not d!2214902))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

