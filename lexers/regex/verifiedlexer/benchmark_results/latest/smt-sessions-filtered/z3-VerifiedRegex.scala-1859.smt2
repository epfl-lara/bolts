; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92210 () Bool)

(assert start!92210)

(declare-fun b!1084533 () Bool)

(assert (=> b!1084533 true))

(declare-fun bs!256443 () Bool)

(declare-fun b!1084534 () Bool)

(assert (= bs!256443 (and b!1084534 b!1084533)))

(declare-fun lambda!39453 () Int)

(declare-fun lambda!39452 () Int)

(assert (=> bs!256443 (not (= lambda!39453 lambda!39452))))

(declare-fun res!482448 () Bool)

(declare-fun e!685807 () Bool)

(assert (=> start!92210 (=> (not res!482448) (not e!685807))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!6524 0))(
  ( (C!6525 (val!3510 Int)) )
))
(declare-datatypes ((Regex!2977 0))(
  ( (ElementMatch!2977 (c!183078 C!6524)) (Concat!4810 (regOne!6466 Regex!2977) (regTwo!6466 Regex!2977)) (EmptyExpr!2977) (Star!2977 (reg!3306 Regex!2977)) (EmptyLang!2977) (Union!2977 (regOne!6467 Regex!2977) (regTwo!6467 Regex!2977)) )
))
(declare-datatypes ((List!10234 0))(
  ( (Nil!10218) (Cons!10218 (h!15619 Regex!2977) (t!101280 List!10234)) )
))
(declare-datatypes ((Context!914 0))(
  ( (Context!915 (exprs!957 List!10234)) )
))
(declare-fun z!1122 () (InoxSet Context!914))

(declare-datatypes ((List!10235 0))(
  ( (Nil!10219) (Cons!10219 (h!15620 Context!914) (t!101281 List!10235)) )
))
(declare-fun zl!316 () List!10235)

(declare-fun toList!595 ((InoxSet Context!914)) List!10235)

(assert (=> start!92210 (= res!482448 (= (toList!595 z!1122) zl!316))))

(assert (=> start!92210 e!685807))

(declare-fun condSetEmpty!7446 () Bool)

(assert (=> start!92210 (= condSetEmpty!7446 (= z!1122 ((as const (Array Context!914 Bool)) false)))))

(declare-fun setRes!7446 () Bool)

(assert (=> start!92210 setRes!7446))

(declare-fun e!685804 () Bool)

(assert (=> start!92210 e!685804))

(declare-fun e!685800 () Bool)

(assert (=> start!92210 e!685800))

(declare-fun setIsEmpty!7446 () Bool)

(assert (=> setIsEmpty!7446 setRes!7446))

(declare-fun b!1084530 () Bool)

(declare-fun res!482452 () Bool)

(assert (=> b!1084530 (=> (not res!482452) (not e!685807))))

(declare-datatypes ((List!10236 0))(
  ( (Nil!10220) (Cons!10220 (h!15621 C!6524) (t!101282 List!10236)) )
))
(declare-fun s!2287 () List!10236)

(declare-fun matchZipper!25 ((InoxSet Context!914) List!10236) Bool)

(assert (=> b!1084530 (= res!482452 (matchZipper!25 z!1122 s!2287))))

(declare-fun b!1084531 () Bool)

(declare-fun e!685803 () Bool)

(declare-fun e!685809 () Bool)

(assert (=> b!1084531 (= e!685803 e!685809)))

(declare-fun res!482449 () Bool)

(assert (=> b!1084531 (=> res!482449 e!685809)))

(declare-fun lt!362729 () Context!914)

(assert (=> b!1084531 (= res!482449 (not (select z!1122 lt!362729)))))

(declare-fun getWitness!46 ((InoxSet Context!914) Int) Context!914)

(assert (=> b!1084531 (= lt!362729 (getWitness!46 z!1122 lambda!39452))))

(declare-fun b!1084532 () Bool)

(declare-fun e!685808 () Bool)

(declare-fun tp!324439 () Bool)

(assert (=> b!1084532 (= e!685808 tp!324439)))

(assert (=> b!1084533 (= e!685807 (not e!685803))))

(declare-fun res!482453 () Bool)

(assert (=> b!1084533 (=> res!482453 e!685803)))

(declare-fun exists!99 ((InoxSet Context!914) Int) Bool)

(assert (=> b!1084533 (= res!482453 (not (exists!99 z!1122 lambda!39452)))))

(declare-fun exists!100 (List!10235 Int) Bool)

(assert (=> b!1084533 (exists!100 zl!316 lambda!39452)))

(declare-datatypes ((Unit!15627 0))(
  ( (Unit!15628) )
))
(declare-fun lt!362724 () Unit!15627)

(declare-fun lemmaZipperMatchesExistsMatchingContext!6 (List!10235 List!10236) Unit!15627)

(assert (=> b!1084533 (= lt!362724 (lemmaZipperMatchesExistsMatchingContext!6 zl!316 s!2287))))

(declare-fun e!685805 () Bool)

(assert (=> b!1084534 (= e!685805 true)))

(declare-fun lt!362727 () Unit!15627)

(declare-fun filterPost!2 ((InoxSet Context!914) Int Context!914) Unit!15627)

(assert (=> b!1084534 (= lt!362727 (filterPost!2 z!1122 lambda!39453 lt!362729))))

(declare-fun b!1084535 () Bool)

(declare-fun e!685802 () Bool)

(assert (=> b!1084535 (= e!685802 e!685805)))

(declare-fun res!482451 () Bool)

(assert (=> b!1084535 (=> res!482451 e!685805)))

(declare-fun lt!362726 () Bool)

(assert (=> b!1084535 (= res!482451 lt!362726)))

(declare-fun lt!362725 () Unit!15627)

(declare-fun e!685806 () Unit!15627)

(assert (=> b!1084535 (= lt!362725 e!685806)))

(declare-fun c!183077 () Bool)

(assert (=> b!1084535 (= c!183077 lt!362726)))

(declare-fun lostCause!214 (Context!914) Bool)

(assert (=> b!1084535 (= lt!362726 (lostCause!214 lt!362729))))

(declare-fun b!1084536 () Bool)

(declare-fun e!685801 () Bool)

(declare-fun tp!324440 () Bool)

(assert (=> b!1084536 (= e!685801 tp!324440)))

(declare-fun setNonEmpty!7446 () Bool)

(declare-fun tp!324436 () Bool)

(declare-fun setElem!7446 () Context!914)

(declare-fun inv!13155 (Context!914) Bool)

(assert (=> setNonEmpty!7446 (= setRes!7446 (and tp!324436 (inv!13155 setElem!7446) e!685808))))

(declare-fun setRest!7446 () (InoxSet Context!914))

(assert (=> setNonEmpty!7446 (= z!1122 ((_ map or) (store ((as const (Array Context!914 Bool)) false) setElem!7446 true) setRest!7446))))

(declare-fun b!1084537 () Bool)

(declare-fun Unit!15629 () Unit!15627)

(assert (=> b!1084537 (= e!685806 Unit!15629)))

(declare-fun b!1084538 () Bool)

(declare-fun tp_is_empty!5585 () Bool)

(declare-fun tp!324437 () Bool)

(assert (=> b!1084538 (= e!685800 (and tp_is_empty!5585 tp!324437))))

(declare-fun b!1084539 () Bool)

(declare-fun tp!324438 () Bool)

(assert (=> b!1084539 (= e!685804 (and (inv!13155 (h!15620 zl!316)) e!685801 tp!324438))))

(declare-fun b!1084540 () Bool)

(declare-fun Unit!15630 () Unit!15627)

(assert (=> b!1084540 (= e!685806 Unit!15630)))

(declare-fun lt!362728 () Unit!15627)

(declare-fun lt!362723 () (InoxSet Context!914))

(declare-fun lemmaLostCauseCannotMatch!3 ((InoxSet Context!914) List!10236) Unit!15627)

(assert (=> b!1084540 (= lt!362728 (lemmaLostCauseCannotMatch!3 lt!362723 s!2287))))

(assert (=> b!1084540 false))

(declare-fun b!1084541 () Bool)

(assert (=> b!1084541 (= e!685809 e!685802)))

(declare-fun res!482450 () Bool)

(assert (=> b!1084541 (=> res!482450 e!685802)))

(assert (=> b!1084541 (= res!482450 (not (matchZipper!25 lt!362723 s!2287)))))

(assert (=> b!1084541 (= lt!362723 (store ((as const (Array Context!914 Bool)) false) lt!362729 true))))

(assert (= (and start!92210 res!482448) b!1084530))

(assert (= (and b!1084530 res!482452) b!1084533))

(assert (= (and b!1084533 (not res!482453)) b!1084531))

(assert (= (and b!1084531 (not res!482449)) b!1084541))

(assert (= (and b!1084541 (not res!482450)) b!1084535))

(assert (= (and b!1084535 c!183077) b!1084540))

(assert (= (and b!1084535 (not c!183077)) b!1084537))

(assert (= (and b!1084535 (not res!482451)) b!1084534))

(assert (= (and start!92210 condSetEmpty!7446) setIsEmpty!7446))

(assert (= (and start!92210 (not condSetEmpty!7446)) setNonEmpty!7446))

(assert (= setNonEmpty!7446 b!1084532))

(assert (= b!1084539 b!1084536))

(get-info :version)

(assert (= (and start!92210 ((_ is Cons!10219) zl!316)) b!1084539))

(assert (= (and start!92210 ((_ is Cons!10220) s!2287)) b!1084538))

(declare-fun m!1234185 () Bool)

(assert (=> b!1084535 m!1234185))

(declare-fun m!1234187 () Bool)

(assert (=> b!1084540 m!1234187))

(declare-fun m!1234189 () Bool)

(assert (=> b!1084541 m!1234189))

(declare-fun m!1234191 () Bool)

(assert (=> b!1084541 m!1234191))

(declare-fun m!1234193 () Bool)

(assert (=> start!92210 m!1234193))

(declare-fun m!1234195 () Bool)

(assert (=> setNonEmpty!7446 m!1234195))

(declare-fun m!1234197 () Bool)

(assert (=> b!1084531 m!1234197))

(declare-fun m!1234199 () Bool)

(assert (=> b!1084531 m!1234199))

(declare-fun m!1234201 () Bool)

(assert (=> b!1084533 m!1234201))

(declare-fun m!1234203 () Bool)

(assert (=> b!1084533 m!1234203))

(declare-fun m!1234205 () Bool)

(assert (=> b!1084533 m!1234205))

(declare-fun m!1234207 () Bool)

(assert (=> b!1084539 m!1234207))

(declare-fun m!1234209 () Bool)

(assert (=> b!1084534 m!1234209))

(declare-fun m!1234211 () Bool)

(assert (=> b!1084530 m!1234211))

(check-sat (not b!1084538) (not setNonEmpty!7446) (not b!1084534) (not b!1084539) tp_is_empty!5585 (not start!92210) (not b!1084531) (not b!1084533) (not b!1084541) (not b!1084532) (not b!1084536) (not b!1084530) (not b!1084535) (not b!1084540))
(check-sat)
