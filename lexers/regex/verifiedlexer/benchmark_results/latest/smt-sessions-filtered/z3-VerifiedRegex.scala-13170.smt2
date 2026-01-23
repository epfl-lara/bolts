; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!718756 () Bool)

(assert start!718756)

(declare-fun b!7361344 () Bool)

(declare-fun e!4407382 () Bool)

(declare-fun tp!2091791 () Bool)

(declare-fun tp!2091789 () Bool)

(assert (=> b!7361344 (= e!4407382 (and tp!2091791 tp!2091789))))

(declare-fun res!2971724 () Bool)

(declare-fun e!4407377 () Bool)

(assert (=> start!718756 (=> (not res!2971724) (not e!4407377))))

(declare-datatypes ((C!38732 0))(
  ( (C!38733 (val!29726 Int)) )
))
(declare-datatypes ((Regex!19229 0))(
  ( (ElementMatch!19229 (c!1367773 C!38732)) (Concat!28074 (regOne!38970 Regex!19229) (regTwo!38970 Regex!19229)) (EmptyExpr!19229) (Star!19229 (reg!19558 Regex!19229)) (EmptyLang!19229) (Union!19229 (regOne!38971 Regex!19229) (regTwo!38971 Regex!19229)) )
))
(declare-fun r1!2370 () Regex!19229)

(declare-fun validRegex!9825 (Regex!19229) Bool)

(assert (=> start!718756 (= res!2971724 (validRegex!9825 r1!2370))))

(assert (=> start!718756 e!4407377))

(declare-fun tp_is_empty!48703 () Bool)

(assert (=> start!718756 tp_is_empty!48703))

(declare-datatypes ((List!71725 0))(
  ( (Nil!71601) (Cons!71601 (h!78049 Regex!19229) (t!386174 List!71725)) )
))
(declare-datatypes ((Context!16338 0))(
  ( (Context!16339 (exprs!8669 List!71725)) )
))
(declare-fun cWitness!61 () Context!16338)

(declare-fun e!4407383 () Bool)

(declare-fun inv!91412 (Context!16338) Bool)

(assert (=> start!718756 (and (inv!91412 cWitness!61) e!4407383)))

(declare-fun ct1!282 () Context!16338)

(declare-fun e!4407380 () Bool)

(assert (=> start!718756 (and (inv!91412 ct1!282) e!4407380)))

(assert (=> start!718756 e!4407382))

(declare-fun ct2!378 () Context!16338)

(declare-fun e!4407384 () Bool)

(assert (=> start!718756 (and (inv!91412 ct2!378) e!4407384)))

(declare-fun b!7361345 () Bool)

(declare-fun e!4407376 () Bool)

(declare-fun e!4407378 () Bool)

(assert (=> b!7361345 (= e!4407376 e!4407378)))

(declare-fun res!2971726 () Bool)

(assert (=> b!7361345 (=> (not res!2971726) (not e!4407378))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2613914 () (InoxSet Context!16338))

(declare-fun lt!2613915 () (InoxSet Context!16338))

(assert (=> b!7361345 (= res!2971726 (and (= lt!2613915 lt!2613914) (select lt!2613914 cWitness!61) (= cWitness!61 ct1!282)))))

(assert (=> b!7361345 (= lt!2613914 (store ((as const (Array Context!16338 Bool)) false) ct1!282 true))))

(declare-fun b!7361346 () Bool)

(declare-fun tp!2091786 () Bool)

(assert (=> b!7361346 (= e!4407383 tp!2091786)))

(declare-fun b!7361347 () Bool)

(declare-fun e!4407379 () Bool)

(assert (=> b!7361347 (= e!4407379 e!4407376)))

(declare-fun res!2971722 () Bool)

(assert (=> b!7361347 (=> (not res!2971722) (not e!4407376))))

(declare-fun c!10362 () C!38732)

(get-info :version)

(assert (=> b!7361347 (= res!2971722 (and ((_ is ElementMatch!19229) r1!2370) (= c!10362 (c!1367773 r1!2370))))))

(declare-fun lt!2613911 () Context!16338)

(declare-fun lt!2613916 () (InoxSet Context!16338))

(declare-fun derivationStepZipperDown!3055 (Regex!19229 Context!16338 C!38732) (InoxSet Context!16338))

(assert (=> b!7361347 (= lt!2613916 (derivationStepZipperDown!3055 r1!2370 lt!2613911 c!10362))))

(declare-fun ++!17045 (List!71725 List!71725) List!71725)

(assert (=> b!7361347 (= lt!2613911 (Context!16339 (++!17045 (exprs!8669 ct1!282) (exprs!8669 ct2!378))))))

(declare-fun lambda!457357 () Int)

(declare-datatypes ((Unit!165407 0))(
  ( (Unit!165408) )
))
(declare-fun lt!2613913 () Unit!165407)

(declare-fun lemmaConcatPreservesForall!1902 (List!71725 List!71725 Int) Unit!165407)

(assert (=> b!7361347 (= lt!2613913 (lemmaConcatPreservesForall!1902 (exprs!8669 ct1!282) (exprs!8669 ct2!378) lambda!457357))))

(declare-fun b!7361348 () Bool)

(assert (=> b!7361348 (= e!4407377 e!4407379)))

(declare-fun res!2971725 () Bool)

(assert (=> b!7361348 (=> (not res!2971725) (not e!4407379))))

(assert (=> b!7361348 (= res!2971725 (select lt!2613915 cWitness!61))))

(assert (=> b!7361348 (= lt!2613915 (derivationStepZipperDown!3055 r1!2370 ct1!282 c!10362))))

(declare-fun b!7361349 () Bool)

(declare-fun tp!2091792 () Bool)

(declare-fun tp!2091787 () Bool)

(assert (=> b!7361349 (= e!4407382 (and tp!2091792 tp!2091787))))

(declare-fun b!7361350 () Bool)

(declare-fun e!4407381 () Bool)

(assert (=> b!7361350 (= e!4407378 e!4407381)))

(declare-fun res!2971723 () Bool)

(assert (=> b!7361350 (=> (not res!2971723) (not e!4407381))))

(assert (=> b!7361350 (= res!2971723 (= lt!2613916 (store ((as const (Array Context!16338 Bool)) false) lt!2613911 true)))))

(declare-fun lt!2613917 () Unit!165407)

(assert (=> b!7361350 (= lt!2613917 (lemmaConcatPreservesForall!1902 (exprs!8669 ct1!282) (exprs!8669 ct2!378) lambda!457357))))

(declare-fun b!7361351 () Bool)

(assert (=> b!7361351 (= e!4407382 tp_is_empty!48703)))

(declare-fun b!7361352 () Bool)

(assert (=> b!7361352 (= e!4407381 (not (select lt!2613916 (Context!16339 (++!17045 (exprs!8669 cWitness!61) (exprs!8669 ct2!378))))))))

(declare-fun lt!2613912 () Unit!165407)

(assert (=> b!7361352 (= lt!2613912 (lemmaConcatPreservesForall!1902 (exprs!8669 cWitness!61) (exprs!8669 ct2!378) lambda!457357))))

(declare-fun b!7361353 () Bool)

(declare-fun tp!2091790 () Bool)

(assert (=> b!7361353 (= e!4407382 tp!2091790)))

(declare-fun b!7361354 () Bool)

(declare-fun tp!2091793 () Bool)

(assert (=> b!7361354 (= e!4407380 tp!2091793)))

(declare-fun b!7361355 () Bool)

(declare-fun tp!2091788 () Bool)

(assert (=> b!7361355 (= e!4407384 tp!2091788)))

(assert (= (and start!718756 res!2971724) b!7361348))

(assert (= (and b!7361348 res!2971725) b!7361347))

(assert (= (and b!7361347 res!2971722) b!7361345))

(assert (= (and b!7361345 res!2971726) b!7361350))

(assert (= (and b!7361350 res!2971723) b!7361352))

(assert (= start!718756 b!7361346))

(assert (= start!718756 b!7361354))

(assert (= (and start!718756 ((_ is ElementMatch!19229) r1!2370)) b!7361351))

(assert (= (and start!718756 ((_ is Concat!28074) r1!2370)) b!7361349))

(assert (= (and start!718756 ((_ is Star!19229) r1!2370)) b!7361353))

(assert (= (and start!718756 ((_ is Union!19229) r1!2370)) b!7361344))

(assert (= start!718756 b!7361355))

(declare-fun m!8018720 () Bool)

(assert (=> b!7361347 m!8018720))

(declare-fun m!8018722 () Bool)

(assert (=> b!7361347 m!8018722))

(declare-fun m!8018724 () Bool)

(assert (=> b!7361347 m!8018724))

(declare-fun m!8018726 () Bool)

(assert (=> b!7361350 m!8018726))

(assert (=> b!7361350 m!8018724))

(declare-fun m!8018728 () Bool)

(assert (=> b!7361345 m!8018728))

(declare-fun m!8018730 () Bool)

(assert (=> b!7361345 m!8018730))

(declare-fun m!8018732 () Bool)

(assert (=> start!718756 m!8018732))

(declare-fun m!8018734 () Bool)

(assert (=> start!718756 m!8018734))

(declare-fun m!8018736 () Bool)

(assert (=> start!718756 m!8018736))

(declare-fun m!8018738 () Bool)

(assert (=> start!718756 m!8018738))

(declare-fun m!8018740 () Bool)

(assert (=> b!7361352 m!8018740))

(declare-fun m!8018742 () Bool)

(assert (=> b!7361352 m!8018742))

(declare-fun m!8018744 () Bool)

(assert (=> b!7361352 m!8018744))

(declare-fun m!8018746 () Bool)

(assert (=> b!7361348 m!8018746))

(declare-fun m!8018748 () Bool)

(assert (=> b!7361348 m!8018748))

(check-sat (not b!7361354) (not b!7361346) (not start!718756) (not b!7361349) (not b!7361352) (not b!7361353) (not b!7361348) (not b!7361350) (not b!7361355) (not b!7361347) (not b!7361344) tp_is_empty!48703)
(check-sat)
