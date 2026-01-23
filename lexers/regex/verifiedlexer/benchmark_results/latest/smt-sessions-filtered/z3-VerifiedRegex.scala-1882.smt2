; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92822 () Bool)

(assert start!92822)

(declare-fun b!1087611 () Bool)

(assert (=> b!1087611 true))

(declare-fun bs!257618 () Bool)

(declare-fun b!1087620 () Bool)

(assert (= bs!257618 (and b!1087620 b!1087611)))

(declare-fun lambda!40528 () Int)

(declare-fun lambda!40527 () Int)

(assert (=> bs!257618 (not (= lambda!40528 lambda!40527))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!6616 0))(
  ( (C!6617 (val!3556 Int)) )
))
(declare-datatypes ((Regex!3023 0))(
  ( (ElementMatch!3023 (c!184085 C!6616)) (Concat!4856 (regOne!6558 Regex!3023) (regTwo!6558 Regex!3023)) (EmptyExpr!3023) (Star!3023 (reg!3352 Regex!3023)) (EmptyLang!3023) (Union!3023 (regOne!6559 Regex!3023) (regTwo!6559 Regex!3023)) )
))
(declare-datatypes ((List!10372 0))(
  ( (Nil!10356) (Cons!10356 (h!15757 Regex!3023) (t!101418 List!10372)) )
))
(declare-datatypes ((Context!1006 0))(
  ( (Context!1007 (exprs!1003 List!10372)) )
))
(declare-fun z!1122 () (InoxSet Context!1006))

(declare-fun b!1087609 () Bool)

(declare-fun e!687966 () Bool)

(declare-fun lt!363814 () Context!1006)

(declare-fun filter!179 ((InoxSet Context!1006) Int) (InoxSet Context!1006))

(assert (=> b!1087609 (= e!687966 (select (filter!179 z!1122 lambda!40528) lt!363814))))

(declare-fun res!483553 () Bool)

(declare-fun e!687961 () Bool)

(assert (=> start!92822 (=> (not res!483553) (not e!687961))))

(declare-datatypes ((List!10373 0))(
  ( (Nil!10357) (Cons!10357 (h!15758 Context!1006) (t!101419 List!10373)) )
))
(declare-fun zl!316 () List!10373)

(declare-fun toList!641 ((InoxSet Context!1006)) List!10373)

(assert (=> start!92822 (= res!483553 (= (toList!641 z!1122) zl!316))))

(assert (=> start!92822 e!687961))

(declare-fun condSetEmpty!7660 () Bool)

(assert (=> start!92822 (= condSetEmpty!7660 (= z!1122 ((as const (Array Context!1006 Bool)) false)))))

(declare-fun setRes!7660 () Bool)

(assert (=> start!92822 setRes!7660))

(declare-fun e!687963 () Bool)

(assert (=> start!92822 e!687963))

(declare-fun e!687959 () Bool)

(assert (=> start!92822 e!687959))

(declare-fun b!1087610 () Bool)

(declare-fun e!687962 () Bool)

(declare-fun tp!325942 () Bool)

(assert (=> b!1087610 (= e!687962 tp!325942)))

(declare-fun e!687965 () Bool)

(assert (=> b!1087611 (= e!687961 (not e!687965))))

(declare-fun res!483552 () Bool)

(assert (=> b!1087611 (=> res!483552 e!687965)))

(declare-fun exists!187 ((InoxSet Context!1006) Int) Bool)

(assert (=> b!1087611 (= res!483552 (not (exists!187 z!1122 lambda!40527)))))

(declare-fun exists!188 (List!10373 Int) Bool)

(assert (=> b!1087611 (exists!188 zl!316 lambda!40527)))

(declare-datatypes ((Unit!15747 0))(
  ( (Unit!15748) )
))
(declare-fun lt!363818 () Unit!15747)

(declare-datatypes ((List!10374 0))(
  ( (Nil!10358) (Cons!10358 (h!15759 C!6616) (t!101420 List!10374)) )
))
(declare-fun s!2287 () List!10374)

(declare-fun lemmaZipperMatchesExistsMatchingContext!48 (List!10373 List!10374) Unit!15747)

(assert (=> b!1087611 (= lt!363818 (lemmaZipperMatchesExistsMatchingContext!48 zl!316 s!2287))))

(declare-fun b!1087612 () Bool)

(declare-fun tp!325946 () Bool)

(declare-fun inv!13270 (Context!1006) Bool)

(assert (=> b!1087612 (= e!687963 (and (inv!13270 (h!15758 zl!316)) e!687962 tp!325946))))

(declare-fun b!1087613 () Bool)

(declare-fun e!687958 () Unit!15747)

(declare-fun Unit!15749 () Unit!15747)

(assert (=> b!1087613 (= e!687958 Unit!15749)))

(declare-fun lt!363819 () Unit!15747)

(declare-fun lt!363813 () (InoxSet Context!1006))

(declare-fun lemmaLostCauseCannotMatch!17 ((InoxSet Context!1006) List!10374) Unit!15747)

(assert (=> b!1087613 (= lt!363819 (lemmaLostCauseCannotMatch!17 lt!363813 s!2287))))

(assert (=> b!1087613 false))

(declare-fun b!1087614 () Bool)

(declare-fun e!687964 () Bool)

(declare-fun e!687967 () Bool)

(assert (=> b!1087614 (= e!687964 e!687967)))

(declare-fun res!483557 () Bool)

(assert (=> b!1087614 (=> res!483557 e!687967)))

(declare-fun lt!363817 () Bool)

(assert (=> b!1087614 (= res!483557 lt!363817)))

(declare-fun lt!363816 () Unit!15747)

(assert (=> b!1087614 (= lt!363816 e!687958)))

(declare-fun c!184084 () Bool)

(assert (=> b!1087614 (= c!184084 lt!363817)))

(declare-fun lostCause!233 (Context!1006) Bool)

(assert (=> b!1087614 (= lt!363817 (lostCause!233 lt!363814))))

(declare-fun b!1087615 () Bool)

(declare-fun e!687968 () Bool)

(assert (=> b!1087615 (= e!687968 e!687964)))

(declare-fun res!483556 () Bool)

(assert (=> b!1087615 (=> res!483556 e!687964)))

(declare-fun matchZipper!71 ((InoxSet Context!1006) List!10374) Bool)

(assert (=> b!1087615 (= res!483556 (not (matchZipper!71 lt!363813 s!2287)))))

(assert (=> b!1087615 (= lt!363813 (store ((as const (Array Context!1006 Bool)) false) lt!363814 true))))

(declare-fun b!1087616 () Bool)

(assert (=> b!1087616 (= e!687965 e!687968)))

(declare-fun res!483555 () Bool)

(assert (=> b!1087616 (=> res!483555 e!687968)))

(assert (=> b!1087616 (= res!483555 (not (select z!1122 lt!363814)))))

(declare-fun getWitness!96 ((InoxSet Context!1006) Int) Context!1006)

(assert (=> b!1087616 (= lt!363814 (getWitness!96 z!1122 lambda!40527))))

(declare-fun b!1087617 () Bool)

(declare-fun res!483551 () Bool)

(assert (=> b!1087617 (=> (not res!483551) (not e!687961))))

(assert (=> b!1087617 (= res!483551 (matchZipper!71 z!1122 s!2287))))

(declare-fun setIsEmpty!7660 () Bool)

(assert (=> setIsEmpty!7660 setRes!7660))

(declare-fun b!1087618 () Bool)

(declare-fun tp_is_empty!5677 () Bool)

(declare-fun tp!325944 () Bool)

(assert (=> b!1087618 (= e!687959 (and tp_is_empty!5677 tp!325944))))

(declare-fun b!1087619 () Bool)

(declare-fun Unit!15750 () Unit!15747)

(assert (=> b!1087619 (= e!687958 Unit!15750)))

(assert (=> b!1087620 (= e!687967 e!687966)))

(declare-fun res!483554 () Bool)

(assert (=> b!1087620 (=> res!483554 e!687966)))

(assert (=> b!1087620 (= res!483554 (not (select (filter!179 z!1122 lambda!40528) lt!363814)))))

(declare-fun lt!363815 () Unit!15747)

(declare-fun filterPost!24 ((InoxSet Context!1006) Int Context!1006) Unit!15747)

(assert (=> b!1087620 (= lt!363815 (filterPost!24 z!1122 lambda!40528 lt!363814))))

(declare-fun b!1087621 () Bool)

(declare-fun e!687960 () Bool)

(declare-fun tp!325943 () Bool)

(assert (=> b!1087621 (= e!687960 tp!325943)))

(declare-fun setNonEmpty!7660 () Bool)

(declare-fun setElem!7660 () Context!1006)

(declare-fun tp!325945 () Bool)

(assert (=> setNonEmpty!7660 (= setRes!7660 (and tp!325945 (inv!13270 setElem!7660) e!687960))))

(declare-fun setRest!7660 () (InoxSet Context!1006))

(assert (=> setNonEmpty!7660 (= z!1122 ((_ map or) (store ((as const (Array Context!1006 Bool)) false) setElem!7660 true) setRest!7660))))

(assert (= (and start!92822 res!483553) b!1087617))

(assert (= (and b!1087617 res!483551) b!1087611))

(assert (= (and b!1087611 (not res!483552)) b!1087616))

(assert (= (and b!1087616 (not res!483555)) b!1087615))

(assert (= (and b!1087615 (not res!483556)) b!1087614))

(assert (= (and b!1087614 c!184084) b!1087613))

(assert (= (and b!1087614 (not c!184084)) b!1087619))

(assert (= (and b!1087614 (not res!483557)) b!1087620))

(assert (= (and b!1087620 (not res!483554)) b!1087609))

(assert (= (and start!92822 condSetEmpty!7660) setIsEmpty!7660))

(assert (= (and start!92822 (not condSetEmpty!7660)) setNonEmpty!7660))

(assert (= setNonEmpty!7660 b!1087621))

(assert (= b!1087612 b!1087610))

(get-info :version)

(assert (= (and start!92822 ((_ is Cons!10357) zl!316)) b!1087612))

(assert (= (and start!92822 ((_ is Cons!10358) s!2287)) b!1087618))

(declare-fun m!1237863 () Bool)

(assert (=> setNonEmpty!7660 m!1237863))

(declare-fun m!1237865 () Bool)

(assert (=> b!1087613 m!1237865))

(declare-fun m!1237867 () Bool)

(assert (=> b!1087611 m!1237867))

(declare-fun m!1237869 () Bool)

(assert (=> b!1087611 m!1237869))

(declare-fun m!1237871 () Bool)

(assert (=> b!1087611 m!1237871))

(declare-fun m!1237873 () Bool)

(assert (=> b!1087614 m!1237873))

(declare-fun m!1237875 () Bool)

(assert (=> start!92822 m!1237875))

(declare-fun m!1237877 () Bool)

(assert (=> b!1087616 m!1237877))

(declare-fun m!1237879 () Bool)

(assert (=> b!1087616 m!1237879))

(declare-fun m!1237881 () Bool)

(assert (=> b!1087609 m!1237881))

(declare-fun m!1237883 () Bool)

(assert (=> b!1087609 m!1237883))

(assert (=> b!1087620 m!1237881))

(assert (=> b!1087620 m!1237883))

(declare-fun m!1237885 () Bool)

(assert (=> b!1087620 m!1237885))

(declare-fun m!1237887 () Bool)

(assert (=> b!1087615 m!1237887))

(declare-fun m!1237889 () Bool)

(assert (=> b!1087615 m!1237889))

(declare-fun m!1237891 () Bool)

(assert (=> b!1087612 m!1237891))

(declare-fun m!1237893 () Bool)

(assert (=> b!1087617 m!1237893))

(check-sat (not b!1087610) (not b!1087620) (not b!1087609) (not setNonEmpty!7660) (not b!1087612) (not start!92822) (not b!1087621) (not b!1087616) (not b!1087618) (not b!1087613) (not b!1087614) tp_is_empty!5677 (not b!1087615) (not b!1087611) (not b!1087617))
(check-sat)
