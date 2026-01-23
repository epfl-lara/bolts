; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!682826 () Bool)

(assert start!682826)

(declare-fun b!7049870 () Bool)

(assert (=> b!7049870 true))

(declare-fun b!7049879 () Bool)

(assert (=> b!7049879 true))

(declare-fun b!7049872 () Bool)

(assert (=> b!7049872 true))

(declare-fun b!7049868 () Bool)

(declare-fun e!4238107 () Bool)

(declare-fun tp!1938615 () Bool)

(assert (=> b!7049868 (= e!4238107 tp!1938615)))

(declare-fun b!7049869 () Bool)

(declare-fun e!4238108 () Bool)

(declare-fun e!4238101 () Bool)

(assert (=> b!7049869 (= e!4238108 e!4238101)))

(declare-fun res!2878043 () Bool)

(assert (=> b!7049869 (=> res!2878043 e!4238101)))

(declare-datatypes ((C!35320 0))(
  ( (C!35321 (val!27362 Int)) )
))
(declare-datatypes ((Regex!17525 0))(
  ( (ElementMatch!17525 (c!1313093 C!35320)) (Concat!26370 (regOne!35562 Regex!17525) (regTwo!35562 Regex!17525)) (EmptyExpr!17525) (Star!17525 (reg!17854 Regex!17525)) (EmptyLang!17525) (Union!17525 (regOne!35563 Regex!17525) (regTwo!35563 Regex!17525)) )
))
(declare-datatypes ((List!68103 0))(
  ( (Nil!67979) (Cons!67979 (h!74427 Regex!17525) (t!381882 List!68103)) )
))
(declare-datatypes ((Context!13042 0))(
  ( (Context!13043 (exprs!7021 List!68103)) )
))
(declare-fun lt!2529033 () Context!13042)

(declare-fun ct2!306 () Context!13042)

(assert (=> b!7049869 (= res!2878043 (not (= lt!2529033 ct2!306)))))

(declare-fun lt!2529024 () Context!13042)

(declare-fun lambda!418627 () Int)

(declare-datatypes ((Unit!161738 0))(
  ( (Unit!161739) )
))
(declare-fun lt!2529030 () Unit!161738)

(declare-fun lemmaConcatPreservesForall!846 (List!68103 List!68103 Int) Unit!161738)

(assert (=> b!7049869 (= lt!2529030 (lemmaConcatPreservesForall!846 (exprs!7021 lt!2529024) (exprs!7021 ct2!306) lambda!418627))))

(declare-fun res!2878048 () Bool)

(declare-fun e!4238103 () Bool)

(assert (=> start!682826 (=> (not res!2878048) (not e!4238103))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2529031 () (InoxSet Context!13042))

(declare-datatypes ((List!68104 0))(
  ( (Nil!67980) (Cons!67980 (h!74428 C!35320) (t!381883 List!68104)) )
))
(declare-fun s!7408 () List!68104)

(declare-fun matchZipper!3065 ((InoxSet Context!13042) List!68104) Bool)

(assert (=> start!682826 (= res!2878048 (matchZipper!3065 lt!2529031 s!7408))))

(declare-fun z1!570 () (InoxSet Context!13042))

(declare-fun appendTo!646 ((InoxSet Context!13042) Context!13042) (InoxSet Context!13042))

(assert (=> start!682826 (= lt!2529031 (appendTo!646 z1!570 ct2!306))))

(assert (=> start!682826 e!4238103))

(declare-fun condSetEmpty!49566 () Bool)

(assert (=> start!682826 (= condSetEmpty!49566 (= z1!570 ((as const (Array Context!13042 Bool)) false)))))

(declare-fun setRes!49566 () Bool)

(assert (=> start!682826 setRes!49566))

(declare-fun inv!86671 (Context!13042) Bool)

(assert (=> start!682826 (and (inv!86671 ct2!306) e!4238107)))

(declare-fun e!4238104 () Bool)

(assert (=> start!682826 e!4238104))

(declare-fun setIsEmpty!49566 () Bool)

(assert (=> setIsEmpty!49566 setRes!49566))

(declare-fun e!4238100 () Bool)

(assert (=> b!7049870 (= e!4238103 (not e!4238100))))

(declare-fun res!2878049 () Bool)

(assert (=> b!7049870 (=> res!2878049 e!4238100)))

(declare-fun lt!2529021 () (InoxSet Context!13042))

(assert (=> b!7049870 (= res!2878049 (not (matchZipper!3065 lt!2529021 s!7408)))))

(declare-fun lt!2529026 () Context!13042)

(assert (=> b!7049870 (= lt!2529021 (store ((as const (Array Context!13042 Bool)) false) lt!2529026 true))))

(declare-fun lambda!418625 () Int)

(declare-fun getWitness!1569 ((InoxSet Context!13042) Int) Context!13042)

(assert (=> b!7049870 (= lt!2529026 (getWitness!1569 lt!2529031 lambda!418625))))

(declare-datatypes ((List!68105 0))(
  ( (Nil!67981) (Cons!67981 (h!74429 Context!13042) (t!381884 List!68105)) )
))
(declare-fun lt!2529025 () List!68105)

(declare-fun exists!3490 (List!68105 Int) Bool)

(assert (=> b!7049870 (exists!3490 lt!2529025 lambda!418625)))

(declare-fun lt!2529028 () Unit!161738)

(declare-fun lemmaZipperMatchesExistsMatchingContext!464 (List!68105 List!68104) Unit!161738)

(assert (=> b!7049870 (= lt!2529028 (lemmaZipperMatchesExistsMatchingContext!464 lt!2529025 s!7408))))

(declare-fun toList!10868 ((InoxSet Context!13042)) List!68105)

(assert (=> b!7049870 (= lt!2529025 (toList!10868 lt!2529031))))

(declare-fun b!7049871 () Bool)

(declare-fun res!2878047 () Bool)

(assert (=> b!7049871 (=> res!2878047 e!4238100)))

(assert (=> b!7049871 (= res!2878047 (not (select lt!2529031 lt!2529026)))))

(declare-fun e!4238106 () Bool)

(assert (=> b!7049872 (= e!4238106 e!4238108)))

(declare-fun res!2878050 () Bool)

(assert (=> b!7049872 (=> res!2878050 e!4238108)))

(declare-fun lt!2529022 () (InoxSet Context!13042))

(declare-fun lt!2529034 () (InoxSet Context!13042))

(declare-fun derivationStepZipper!2981 ((InoxSet Context!13042) C!35320) (InoxSet Context!13042))

(assert (=> b!7049872 (= res!2878050 (not (= (derivationStepZipper!2981 lt!2529034 (h!74428 s!7408)) lt!2529022)))))

(declare-fun lambda!418628 () Int)

(declare-fun flatMap!2472 ((InoxSet Context!13042) Int) (InoxSet Context!13042))

(declare-fun derivationStepZipperUp!2135 (Context!13042 C!35320) (InoxSet Context!13042))

(assert (=> b!7049872 (= (flatMap!2472 lt!2529034 lambda!418628) (derivationStepZipperUp!2135 lt!2529033 (h!74428 s!7408)))))

(declare-fun lt!2529032 () Unit!161738)

(declare-fun lemmaFlatMapOnSingletonSet!1986 ((InoxSet Context!13042) Context!13042 Int) Unit!161738)

(assert (=> b!7049872 (= lt!2529032 (lemmaFlatMapOnSingletonSet!1986 lt!2529034 lt!2529033 lambda!418628))))

(assert (=> b!7049872 (= lt!2529022 (derivationStepZipperUp!2135 lt!2529033 (h!74428 s!7408)))))

(declare-fun lt!2529023 () Unit!161738)

(assert (=> b!7049872 (= lt!2529023 (lemmaConcatPreservesForall!846 (exprs!7021 lt!2529024) (exprs!7021 ct2!306) lambda!418627))))

(declare-fun b!7049873 () Bool)

(declare-fun e!4238105 () Bool)

(assert (=> b!7049873 (= e!4238105 e!4238106)))

(declare-fun res!2878045 () Bool)

(assert (=> b!7049873 (=> res!2878045 e!4238106)))

(assert (=> b!7049873 (= res!2878045 (not (= lt!2529034 lt!2529021)))))

(assert (=> b!7049873 (= lt!2529034 (store ((as const (Array Context!13042 Bool)) false) lt!2529033 true))))

(declare-fun lt!2529027 () Unit!161738)

(assert (=> b!7049873 (= lt!2529027 (lemmaConcatPreservesForall!846 (exprs!7021 lt!2529024) (exprs!7021 ct2!306) lambda!418627))))

(declare-fun setElem!49566 () Context!13042)

(declare-fun setNonEmpty!49566 () Bool)

(declare-fun e!4238102 () Bool)

(declare-fun tp!1938613 () Bool)

(assert (=> setNonEmpty!49566 (= setRes!49566 (and tp!1938613 (inv!86671 setElem!49566) e!4238102))))

(declare-fun setRest!49566 () (InoxSet Context!13042))

(assert (=> setNonEmpty!49566 (= z1!570 ((_ map or) (store ((as const (Array Context!13042 Bool)) false) setElem!49566 true) setRest!49566))))

(declare-fun b!7049874 () Bool)

(declare-fun res!2878042 () Bool)

(assert (=> b!7049874 (=> res!2878042 e!4238108)))

(get-info :version)

(assert (=> b!7049874 (= res!2878042 ((_ is Cons!67979) (exprs!7021 lt!2529024)))))

(declare-fun b!7049875 () Bool)

(declare-fun tp!1938612 () Bool)

(assert (=> b!7049875 (= e!4238102 tp!1938612)))

(declare-fun b!7049876 () Bool)

(assert (=> b!7049876 (= e!4238101 (matchZipper!3065 (store ((as const (Array Context!13042 Bool)) false) ct2!306 true) s!7408))))

(declare-fun b!7049877 () Bool)

(declare-fun tp_is_empty!44275 () Bool)

(declare-fun tp!1938614 () Bool)

(assert (=> b!7049877 (= e!4238104 (and tp_is_empty!44275 tp!1938614))))

(declare-fun b!7049878 () Bool)

(declare-fun res!2878046 () Bool)

(assert (=> b!7049878 (=> (not res!2878046) (not e!4238103))))

(assert (=> b!7049878 (= res!2878046 ((_ is Cons!67980) s!7408))))

(assert (=> b!7049879 (= e!4238100 e!4238105)))

(declare-fun res!2878044 () Bool)

(assert (=> b!7049879 (=> res!2878044 e!4238105)))

(assert (=> b!7049879 (= res!2878044 (or (not (= lt!2529033 lt!2529026)) (not (select z1!570 lt!2529024))))))

(declare-fun ++!15618 (List!68103 List!68103) List!68103)

(assert (=> b!7049879 (= lt!2529033 (Context!13043 (++!15618 (exprs!7021 lt!2529024) (exprs!7021 ct2!306))))))

(declare-fun lt!2529029 () Unit!161738)

(assert (=> b!7049879 (= lt!2529029 (lemmaConcatPreservesForall!846 (exprs!7021 lt!2529024) (exprs!7021 ct2!306) lambda!418627))))

(declare-fun lambda!418626 () Int)

(declare-fun mapPost2!366 ((InoxSet Context!13042) Int Context!13042) Context!13042)

(assert (=> b!7049879 (= lt!2529024 (mapPost2!366 z1!570 lambda!418626 lt!2529026))))

(assert (= (and start!682826 res!2878048) b!7049878))

(assert (= (and b!7049878 res!2878046) b!7049870))

(assert (= (and b!7049870 (not res!2878049)) b!7049871))

(assert (= (and b!7049871 (not res!2878047)) b!7049879))

(assert (= (and b!7049879 (not res!2878044)) b!7049873))

(assert (= (and b!7049873 (not res!2878045)) b!7049872))

(assert (= (and b!7049872 (not res!2878050)) b!7049874))

(assert (= (and b!7049874 (not res!2878042)) b!7049869))

(assert (= (and b!7049869 (not res!2878043)) b!7049876))

(assert (= (and start!682826 condSetEmpty!49566) setIsEmpty!49566))

(assert (= (and start!682826 (not condSetEmpty!49566)) setNonEmpty!49566))

(assert (= setNonEmpty!49566 b!7049875))

(assert (= start!682826 b!7049868))

(assert (= (and start!682826 ((_ is Cons!67980) s!7408)) b!7049877))

(declare-fun m!7765498 () Bool)

(assert (=> start!682826 m!7765498))

(declare-fun m!7765500 () Bool)

(assert (=> start!682826 m!7765500))

(declare-fun m!7765502 () Bool)

(assert (=> start!682826 m!7765502))

(declare-fun m!7765504 () Bool)

(assert (=> setNonEmpty!49566 m!7765504))

(declare-fun m!7765506 () Bool)

(assert (=> b!7049872 m!7765506))

(declare-fun m!7765508 () Bool)

(assert (=> b!7049872 m!7765508))

(declare-fun m!7765510 () Bool)

(assert (=> b!7049872 m!7765510))

(declare-fun m!7765512 () Bool)

(assert (=> b!7049872 m!7765512))

(declare-fun m!7765514 () Bool)

(assert (=> b!7049872 m!7765514))

(declare-fun m!7765516 () Bool)

(assert (=> b!7049876 m!7765516))

(assert (=> b!7049876 m!7765516))

(declare-fun m!7765518 () Bool)

(assert (=> b!7049876 m!7765518))

(declare-fun m!7765520 () Bool)

(assert (=> b!7049879 m!7765520))

(declare-fun m!7765522 () Bool)

(assert (=> b!7049879 m!7765522))

(assert (=> b!7049879 m!7765508))

(declare-fun m!7765524 () Bool)

(assert (=> b!7049879 m!7765524))

(declare-fun m!7765526 () Bool)

(assert (=> b!7049871 m!7765526))

(declare-fun m!7765528 () Bool)

(assert (=> b!7049870 m!7765528))

(declare-fun m!7765530 () Bool)

(assert (=> b!7049870 m!7765530))

(declare-fun m!7765532 () Bool)

(assert (=> b!7049870 m!7765532))

(declare-fun m!7765534 () Bool)

(assert (=> b!7049870 m!7765534))

(declare-fun m!7765536 () Bool)

(assert (=> b!7049870 m!7765536))

(declare-fun m!7765538 () Bool)

(assert (=> b!7049870 m!7765538))

(assert (=> b!7049869 m!7765508))

(declare-fun m!7765540 () Bool)

(assert (=> b!7049873 m!7765540))

(assert (=> b!7049873 m!7765508))

(check-sat (not b!7049877) (not b!7049870) (not b!7049872) (not b!7049868) (not b!7049875) (not b!7049873) (not b!7049879) (not b!7049869) (not setNonEmpty!49566) (not b!7049876) tp_is_empty!44275 (not start!682826))
(check-sat)
