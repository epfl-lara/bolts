; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!704764 () Bool)

(assert start!704764)

(declare-fun b!7246733 () Bool)

(declare-fun e!4345031 () Bool)

(declare-fun e!4345029 () Bool)

(assert (=> b!7246733 (= e!4345031 e!4345029)))

(declare-fun res!2939407 () Bool)

(assert (=> b!7246733 (=> res!2939407 e!4345029)))

(declare-datatypes ((C!37500 0))(
  ( (C!37501 (val!28698 Int)) )
))
(declare-datatypes ((List!70424 0))(
  ( (Nil!70300) (Cons!70300 (h!76748 C!37500) (t!384476 List!70424)) )
))
(declare-fun lt!2582977 () List!70424)

(declare-fun s2!1849 () List!70424)

(assert (=> b!7246733 (= res!2939407 (not (= lt!2582977 s2!1849)))))

(declare-fun s1!1971 () List!70424)

(declare-fun ++!16494 (List!70424 List!70424) List!70424)

(assert (=> b!7246733 (= lt!2582977 (++!16494 s1!1971 s2!1849))))

(declare-fun b!7246734 () Bool)

(declare-fun e!4345026 () Bool)

(declare-fun tp!2036624 () Bool)

(assert (=> b!7246734 (= e!4345026 tp!2036624)))

(declare-fun b!7246735 () Bool)

(declare-fun res!2939409 () Bool)

(declare-fun e!4345025 () Bool)

(assert (=> b!7246735 (=> (not res!2939409) (not e!4345025))))

(declare-datatypes ((Regex!18613 0))(
  ( (ElementMatch!18613 (c!1346247 C!37500)) (Concat!27458 (regOne!37738 Regex!18613) (regTwo!37738 Regex!18613)) (EmptyExpr!18613) (Star!18613 (reg!18942 Regex!18613)) (EmptyLang!18613) (Union!18613 (regOne!37739 Regex!18613) (regTwo!37739 Regex!18613)) )
))
(declare-datatypes ((List!70425 0))(
  ( (Nil!70301) (Cons!70301 (h!76749 Regex!18613) (t!384477 List!70425)) )
))
(declare-datatypes ((Context!15106 0))(
  ( (Context!15107 (exprs!8053 List!70425)) )
))
(declare-fun ct2!328 () Context!15106)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun matchZipper!3523 ((InoxSet Context!15106) List!70424) Bool)

(assert (=> b!7246735 (= res!2939409 (matchZipper!3523 (store ((as const (Array Context!15106 Bool)) false) ct2!328 true) s2!1849))))

(declare-fun res!2939411 () Bool)

(assert (=> start!704764 (=> (not res!2939411) (not e!4345025))))

(declare-fun lt!2582979 () (InoxSet Context!15106))

(assert (=> start!704764 (= res!2939411 (matchZipper!3523 lt!2582979 s1!1971))))

(declare-fun ct1!232 () Context!15106)

(assert (=> start!704764 (= lt!2582979 (store ((as const (Array Context!15106 Bool)) false) ct1!232 true))))

(assert (=> start!704764 e!4345025))

(declare-fun e!4345027 () Bool)

(declare-fun inv!89542 (Context!15106) Bool)

(assert (=> start!704764 (and (inv!89542 ct1!232) e!4345027)))

(declare-fun e!4345030 () Bool)

(assert (=> start!704764 e!4345030))

(declare-fun e!4345032 () Bool)

(assert (=> start!704764 e!4345032))

(assert (=> start!704764 (and (inv!89542 ct2!328) e!4345026)))

(declare-fun b!7246736 () Bool)

(declare-fun e!4345028 () Bool)

(assert (=> b!7246736 (= e!4345028 (not e!4345031))))

(declare-fun res!2939408 () Bool)

(assert (=> b!7246736 (=> res!2939408 e!4345031)))

(declare-fun lt!2582982 () Context!15106)

(assert (=> b!7246736 (= res!2939408 (not (= lt!2582982 ct2!328)))))

(declare-fun lambda!443255 () Int)

(declare-datatypes ((Unit!163809 0))(
  ( (Unit!163810) )
))
(declare-fun lt!2582978 () Unit!163809)

(declare-fun lemmaConcatPreservesForall!1420 (List!70425 List!70425 Int) Unit!163809)

(assert (=> b!7246736 (= lt!2582978 (lemmaConcatPreservesForall!1420 (exprs!8053 ct1!232) (exprs!8053 ct2!328) lambda!443255))))

(declare-fun isEmpty!40491 (List!70424) Bool)

(assert (=> b!7246736 (isEmpty!40491 s1!1971)))

(declare-fun lt!2582981 () Unit!163809)

(declare-fun lemmaZipperOfEmptyContextMatchesEmptyString!58 ((InoxSet Context!15106) List!70424) Unit!163809)

(assert (=> b!7246736 (= lt!2582981 (lemmaZipperOfEmptyContextMatchesEmptyString!58 lt!2582979 s1!1971))))

(declare-fun b!7246737 () Bool)

(assert (=> b!7246737 (= e!4345025 e!4345028)))

(declare-fun res!2939410 () Bool)

(assert (=> b!7246737 (=> (not res!2939410) (not e!4345028))))

(get-info :version)

(assert (=> b!7246737 (= res!2939410 ((_ is Nil!70301) (exprs!8053 ct1!232)))))

(declare-fun ++!16495 (List!70425 List!70425) List!70425)

(assert (=> b!7246737 (= lt!2582982 (Context!15107 (++!16495 (exprs!8053 ct1!232) (exprs!8053 ct2!328))))))

(declare-fun lt!2582980 () Unit!163809)

(assert (=> b!7246737 (= lt!2582980 (lemmaConcatPreservesForall!1420 (exprs!8053 ct1!232) (exprs!8053 ct2!328) lambda!443255))))

(declare-fun b!7246738 () Bool)

(declare-fun tp_is_empty!46691 () Bool)

(declare-fun tp!2036623 () Bool)

(assert (=> b!7246738 (= e!4345030 (and tp_is_empty!46691 tp!2036623))))

(declare-fun b!7246739 () Bool)

(declare-fun tp!2036622 () Bool)

(assert (=> b!7246739 (= e!4345032 (and tp_is_empty!46691 tp!2036622))))

(declare-fun b!7246740 () Bool)

(assert (=> b!7246740 (= e!4345029 (matchZipper!3523 (store ((as const (Array Context!15106 Bool)) false) lt!2582982 true) lt!2582977))))

(declare-fun lt!2582983 () Unit!163809)

(assert (=> b!7246740 (= lt!2582983 (lemmaConcatPreservesForall!1420 (exprs!8053 ct1!232) (exprs!8053 ct2!328) lambda!443255))))

(declare-fun b!7246741 () Bool)

(declare-fun tp!2036621 () Bool)

(assert (=> b!7246741 (= e!4345027 tp!2036621)))

(assert (= (and start!704764 res!2939411) b!7246735))

(assert (= (and b!7246735 res!2939409) b!7246737))

(assert (= (and b!7246737 res!2939410) b!7246736))

(assert (= (and b!7246736 (not res!2939408)) b!7246733))

(assert (= (and b!7246733 (not res!2939407)) b!7246740))

(assert (= start!704764 b!7246741))

(assert (= (and start!704764 ((_ is Cons!70300) s1!1971)) b!7246738))

(assert (= (and start!704764 ((_ is Cons!70300) s2!1849)) b!7246739))

(assert (= start!704764 b!7246734))

(declare-fun m!7923600 () Bool)

(assert (=> b!7246733 m!7923600))

(declare-fun m!7923602 () Bool)

(assert (=> b!7246735 m!7923602))

(assert (=> b!7246735 m!7923602))

(declare-fun m!7923604 () Bool)

(assert (=> b!7246735 m!7923604))

(declare-fun m!7923606 () Bool)

(assert (=> b!7246737 m!7923606))

(declare-fun m!7923608 () Bool)

(assert (=> b!7246737 m!7923608))

(assert (=> b!7246736 m!7923608))

(declare-fun m!7923610 () Bool)

(assert (=> b!7246736 m!7923610))

(declare-fun m!7923612 () Bool)

(assert (=> b!7246736 m!7923612))

(declare-fun m!7923614 () Bool)

(assert (=> b!7246740 m!7923614))

(assert (=> b!7246740 m!7923614))

(declare-fun m!7923616 () Bool)

(assert (=> b!7246740 m!7923616))

(assert (=> b!7246740 m!7923608))

(declare-fun m!7923618 () Bool)

(assert (=> start!704764 m!7923618))

(declare-fun m!7923620 () Bool)

(assert (=> start!704764 m!7923620))

(declare-fun m!7923622 () Bool)

(assert (=> start!704764 m!7923622))

(declare-fun m!7923624 () Bool)

(assert (=> start!704764 m!7923624))

(check-sat (not start!704764) (not b!7246737) (not b!7246736) (not b!7246734) tp_is_empty!46691 (not b!7246741) (not b!7246740) (not b!7246733) (not b!7246739) (not b!7246735) (not b!7246738))
(check-sat)
