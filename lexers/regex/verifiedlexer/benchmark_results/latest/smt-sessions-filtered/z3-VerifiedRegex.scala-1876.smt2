; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92586 () Bool)

(assert start!92586)

(declare-fun bs!256748 () Bool)

(declare-fun b!1086367 () Bool)

(declare-fun b!1086369 () Bool)

(assert (= bs!256748 (and b!1086367 b!1086369)))

(declare-fun lambda!40188 () Int)

(declare-fun lambda!40187 () Int)

(assert (=> bs!256748 (not (= lambda!40188 lambda!40187))))

(assert (=> b!1086367 true))

(declare-fun b!1086363 () Bool)

(declare-fun e!687101 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!6592 0))(
  ( (C!6593 (val!3544 Int)) )
))
(declare-datatypes ((Regex!3011 0))(
  ( (ElementMatch!3011 (c!183743 C!6592)) (Concat!4844 (regOne!6534 Regex!3011) (regTwo!6534 Regex!3011)) (EmptyExpr!3011) (Star!3011 (reg!3340 Regex!3011)) (EmptyLang!3011) (Union!3011 (regOne!6535 Regex!3011) (regTwo!6535 Regex!3011)) )
))
(declare-datatypes ((List!10336 0))(
  ( (Nil!10320) (Cons!10320 (h!15721 Regex!3011) (t!101382 List!10336)) )
))
(declare-datatypes ((Context!982 0))(
  ( (Context!983 (exprs!991 List!10336)) )
))
(declare-fun z!1122 () (InoxSet Context!982))

(declare-fun exists!165 ((InoxSet Context!982) Int) Bool)

(assert (=> b!1086363 (= e!687101 (exists!165 z!1122 lambda!40188))))

(assert (=> b!1086363 (exists!165 z!1122 lambda!40188)))

(declare-datatypes ((Unit!15713 0))(
  ( (Unit!15714) )
))
(declare-fun lt!363444 () Unit!15713)

(declare-fun lt!363445 () Context!982)

(declare-fun lemmaContainsThenExists!25 ((InoxSet Context!982) Context!982 Int) Unit!15713)

(assert (=> b!1086363 (= lt!363444 (lemmaContainsThenExists!25 z!1122 lt!363445 lambda!40188))))

(declare-fun b!1086364 () Bool)

(declare-fun e!687100 () Bool)

(declare-fun tp!325360 () Bool)

(assert (=> b!1086364 (= e!687100 tp!325360)))

(declare-fun b!1086365 () Bool)

(declare-fun e!687102 () Bool)

(declare-fun e!687097 () Bool)

(assert (=> b!1086365 (= e!687102 e!687097)))

(declare-fun res!483117 () Bool)

(assert (=> b!1086365 (=> res!483117 e!687097)))

(declare-fun filter!173 ((InoxSet Context!982) Int) (InoxSet Context!982))

(assert (=> b!1086365 (= res!483117 (not (select (filter!173 z!1122 lambda!40187) lt!363445)))))

(declare-fun getWitness!82 ((InoxSet Context!982) Int) Context!982)

(assert (=> b!1086365 (= lt!363445 (getWitness!82 (filter!173 z!1122 lambda!40187) lambda!40188))))

(declare-fun b!1086366 () Bool)

(declare-fun e!687095 () Bool)

(declare-fun tp!325362 () Bool)

(assert (=> b!1086366 (= e!687095 tp!325362)))

(declare-fun e!687096 () Bool)

(assert (=> b!1086367 (= e!687096 (not e!687102))))

(declare-fun res!483121 () Bool)

(assert (=> b!1086367 (=> res!483121 e!687102)))

(assert (=> b!1086367 (= res!483121 (not (exists!165 (filter!173 z!1122 lambda!40187) lambda!40188)))))

(declare-datatypes ((List!10337 0))(
  ( (Nil!10321) (Cons!10321 (h!15722 Context!982) (t!101383 List!10337)) )
))
(declare-fun lt!363442 () List!10337)

(declare-fun exists!166 (List!10337 Int) Bool)

(assert (=> b!1086367 (exists!166 lt!363442 lambda!40188)))

(declare-fun lt!363443 () Unit!15713)

(declare-datatypes ((List!10338 0))(
  ( (Nil!10322) (Cons!10322 (h!15723 C!6592) (t!101384 List!10338)) )
))
(declare-fun s!2287 () List!10338)

(declare-fun lemmaZipperMatchesExistsMatchingContext!38 (List!10337 List!10338) Unit!15713)

(assert (=> b!1086367 (= lt!363443 (lemmaZipperMatchesExistsMatchingContext!38 lt!363442 s!2287))))

(declare-fun toList!629 ((InoxSet Context!982)) List!10337)

(assert (=> b!1086367 (= lt!363442 (toList!629 (filter!173 z!1122 lambda!40187)))))

(declare-fun b!1086368 () Bool)

(declare-fun res!483119 () Bool)

(assert (=> b!1086368 (=> res!483119 e!687097)))

(declare-fun matchZipper!59 ((InoxSet Context!982) List!10338) Bool)

(assert (=> b!1086368 (= res!483119 (not (matchZipper!59 (store ((as const (Array Context!982 Bool)) false) lt!363445 true) s!2287)))))

(declare-fun res!483120 () Bool)

(assert (=> b!1086369 (=> (not res!483120) (not e!687096))))

(assert (=> b!1086369 (= res!483120 (matchZipper!59 (filter!173 z!1122 lambda!40187) s!2287))))

(declare-fun res!483123 () Bool)

(assert (=> start!92586 (=> (not res!483123) (not e!687096))))

(declare-fun zl!316 () List!10337)

(assert (=> start!92586 (= res!483123 (= (toList!629 z!1122) zl!316))))

(assert (=> start!92586 e!687096))

(declare-fun condSetEmpty!7602 () Bool)

(assert (=> start!92586 (= condSetEmpty!7602 (= z!1122 ((as const (Array Context!982 Bool)) false)))))

(declare-fun setRes!7602 () Bool)

(assert (=> start!92586 setRes!7602))

(declare-fun e!687098 () Bool)

(assert (=> start!92586 e!687098))

(declare-fun e!687099 () Bool)

(assert (=> start!92586 e!687099))

(declare-fun b!1086370 () Bool)

(assert (=> b!1086370 (= e!687097 e!687101)))

(declare-fun res!483122 () Bool)

(assert (=> b!1086370 (=> res!483122 e!687101)))

(assert (=> b!1086370 (= res!483122 (not (select z!1122 lt!363445)))))

(declare-fun lt!363441 () Unit!15713)

(declare-fun filterPost!18 ((InoxSet Context!982) Int Context!982) Unit!15713)

(assert (=> b!1086370 (= lt!363441 (filterPost!18 z!1122 lambda!40187 lt!363445))))

(declare-fun tp!325361 () Bool)

(declare-fun setNonEmpty!7602 () Bool)

(declare-fun setElem!7602 () Context!982)

(declare-fun inv!13240 (Context!982) Bool)

(assert (=> setNonEmpty!7602 (= setRes!7602 (and tp!325361 (inv!13240 setElem!7602) e!687100))))

(declare-fun setRest!7602 () (InoxSet Context!982))

(assert (=> setNonEmpty!7602 (= z!1122 ((_ map or) (store ((as const (Array Context!982 Bool)) false) setElem!7602 true) setRest!7602))))

(declare-fun b!1086371 () Bool)

(declare-fun res!483118 () Bool)

(assert (=> b!1086371 (=> (not res!483118) (not e!687096))))

(assert (=> b!1086371 (= res!483118 (not (matchZipper!59 z!1122 s!2287)))))

(declare-fun tp!325363 () Bool)

(declare-fun b!1086372 () Bool)

(assert (=> b!1086372 (= e!687098 (and (inv!13240 (h!15722 zl!316)) e!687095 tp!325363))))

(declare-fun setIsEmpty!7602 () Bool)

(assert (=> setIsEmpty!7602 setRes!7602))

(declare-fun b!1086373 () Bool)

(declare-fun tp_is_empty!5653 () Bool)

(declare-fun tp!325364 () Bool)

(assert (=> b!1086373 (= e!687099 (and tp_is_empty!5653 tp!325364))))

(assert (= (and start!92586 res!483123) b!1086371))

(assert (= (and b!1086371 res!483118) b!1086369))

(assert (= (and b!1086369 res!483120) b!1086367))

(assert (= (and b!1086367 (not res!483121)) b!1086365))

(assert (= (and b!1086365 (not res!483117)) b!1086368))

(assert (= (and b!1086368 (not res!483119)) b!1086370))

(assert (= (and b!1086370 (not res!483122)) b!1086363))

(assert (= (and start!92586 condSetEmpty!7602) setIsEmpty!7602))

(assert (= (and start!92586 (not condSetEmpty!7602)) setNonEmpty!7602))

(assert (= setNonEmpty!7602 b!1086364))

(assert (= b!1086372 b!1086366))

(get-info :version)

(assert (= (and start!92586 ((_ is Cons!10321) zl!316)) b!1086372))

(assert (= (and start!92586 ((_ is Cons!10322) s!2287)) b!1086373))

(declare-fun m!1236291 () Bool)

(assert (=> b!1086365 m!1236291))

(declare-fun m!1236293 () Bool)

(assert (=> b!1086365 m!1236293))

(assert (=> b!1086365 m!1236291))

(assert (=> b!1086365 m!1236291))

(declare-fun m!1236295 () Bool)

(assert (=> b!1086365 m!1236295))

(declare-fun m!1236297 () Bool)

(assert (=> setNonEmpty!7602 m!1236297))

(assert (=> b!1086369 m!1236291))

(assert (=> b!1086369 m!1236291))

(declare-fun m!1236299 () Bool)

(assert (=> b!1086369 m!1236299))

(declare-fun m!1236301 () Bool)

(assert (=> b!1086368 m!1236301))

(assert (=> b!1086368 m!1236301))

(declare-fun m!1236303 () Bool)

(assert (=> b!1086368 m!1236303))

(declare-fun m!1236305 () Bool)

(assert (=> start!92586 m!1236305))

(declare-fun m!1236307 () Bool)

(assert (=> b!1086363 m!1236307))

(assert (=> b!1086363 m!1236307))

(declare-fun m!1236309 () Bool)

(assert (=> b!1086363 m!1236309))

(declare-fun m!1236311 () Bool)

(assert (=> b!1086371 m!1236311))

(declare-fun m!1236313 () Bool)

(assert (=> b!1086372 m!1236313))

(declare-fun m!1236315 () Bool)

(assert (=> b!1086367 m!1236315))

(assert (=> b!1086367 m!1236291))

(assert (=> b!1086367 m!1236291))

(declare-fun m!1236317 () Bool)

(assert (=> b!1086367 m!1236317))

(assert (=> b!1086367 m!1236291))

(declare-fun m!1236319 () Bool)

(assert (=> b!1086367 m!1236319))

(assert (=> b!1086367 m!1236291))

(declare-fun m!1236321 () Bool)

(assert (=> b!1086367 m!1236321))

(declare-fun m!1236323 () Bool)

(assert (=> b!1086370 m!1236323))

(declare-fun m!1236325 () Bool)

(assert (=> b!1086370 m!1236325))

(check-sat (not b!1086364) (not b!1086369) (not b!1086363) (not b!1086365) (not setNonEmpty!7602) (not b!1086368) (not start!92586) (not b!1086373) (not b!1086367) (not b!1086372) tp_is_empty!5653 (not b!1086370) (not b!1086371) (not b!1086366))
(check-sat)
