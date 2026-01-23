; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!703778 () Bool)

(assert start!703778)

(declare-fun b!7241973 () Bool)

(declare-fun e!4341969 () Bool)

(declare-fun tp_is_empty!46595 () Bool)

(declare-fun tp!2035461 () Bool)

(assert (=> b!7241973 (= e!4341969 (and tp_is_empty!46595 tp!2035461))))

(declare-fun b!7241974 () Bool)

(declare-fun e!4341971 () Bool)

(declare-fun e!4341968 () Bool)

(assert (=> b!7241974 (= e!4341971 e!4341968)))

(declare-fun res!2937806 () Bool)

(assert (=> b!7241974 (=> (not res!2937806) (not e!4341968))))

(declare-datatypes ((C!37404 0))(
  ( (C!37405 (val!28650 Int)) )
))
(declare-datatypes ((Regex!18565 0))(
  ( (ElementMatch!18565 (c!1344933 C!37404)) (Concat!27410 (regOne!37642 Regex!18565) (regTwo!37642 Regex!18565)) (EmptyExpr!18565) (Star!18565 (reg!18894 Regex!18565)) (EmptyLang!18565) (Union!18565 (regOne!37643 Regex!18565) (regTwo!37643 Regex!18565)) )
))
(declare-datatypes ((List!70299 0))(
  ( (Nil!70175) (Cons!70175 (h!76623 Regex!18565) (t!384350 List!70299)) )
))
(declare-datatypes ((Context!15010 0))(
  ( (Context!15011 (exprs!8005 List!70299)) )
))
(declare-fun ct1!232 () Context!15010)

(get-info :version)

(assert (=> b!7241974 (= res!2937806 ((_ is Nil!70175) (exprs!8005 ct1!232)))))

(declare-fun lt!2580352 () List!70299)

(declare-fun ct2!328 () Context!15010)

(declare-fun ++!16421 (List!70299 List!70299) List!70299)

(assert (=> b!7241974 (= lt!2580352 (++!16421 (exprs!8005 ct1!232) (exprs!8005 ct2!328)))))

(declare-datatypes ((Unit!163716 0))(
  ( (Unit!163717) )
))
(declare-fun lt!2580351 () Unit!163716)

(declare-fun lambda!442146 () Int)

(declare-fun lemmaConcatPreservesForall!1374 (List!70299 List!70299 Int) Unit!163716)

(assert (=> b!7241974 (= lt!2580351 (lemmaConcatPreservesForall!1374 (exprs!8005 ct1!232) (exprs!8005 ct2!328) lambda!442146))))

(declare-fun b!7241975 () Bool)

(declare-fun e!4341967 () Bool)

(declare-fun tp!2035464 () Bool)

(assert (=> b!7241975 (= e!4341967 (and tp_is_empty!46595 tp!2035464))))

(declare-fun res!2937807 () Bool)

(assert (=> start!703778 (=> (not res!2937807) (not e!4341971))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2580349 () (InoxSet Context!15010))

(declare-datatypes ((List!70300 0))(
  ( (Nil!70176) (Cons!70176 (h!76624 C!37404) (t!384351 List!70300)) )
))
(declare-fun s1!1971 () List!70300)

(declare-fun matchZipper!3475 ((InoxSet Context!15010) List!70300) Bool)

(assert (=> start!703778 (= res!2937807 (matchZipper!3475 lt!2580349 s1!1971))))

(assert (=> start!703778 (= lt!2580349 (store ((as const (Array Context!15010 Bool)) false) ct1!232 true))))

(assert (=> start!703778 e!4341971))

(declare-fun e!4341970 () Bool)

(declare-fun inv!89422 (Context!15010) Bool)

(assert (=> start!703778 (and (inv!89422 ct1!232) e!4341970)))

(assert (=> start!703778 e!4341969))

(assert (=> start!703778 e!4341967))

(declare-fun e!4341966 () Bool)

(assert (=> start!703778 (and (inv!89422 ct2!328) e!4341966)))

(declare-fun b!7241976 () Bool)

(declare-fun tp!2035462 () Bool)

(assert (=> b!7241976 (= e!4341970 tp!2035462)))

(declare-fun b!7241977 () Bool)

(assert (=> b!7241977 (= e!4341968 (not true))))

(declare-fun isEmpty!40434 (List!70300) Bool)

(assert (=> b!7241977 (isEmpty!40434 s1!1971)))

(declare-fun lt!2580350 () Unit!163716)

(declare-fun lemmaZipperOfEmptyContextMatchesEmptyString!48 ((InoxSet Context!15010) List!70300) Unit!163716)

(assert (=> b!7241977 (= lt!2580350 (lemmaZipperOfEmptyContextMatchesEmptyString!48 lt!2580349 s1!1971))))

(declare-fun b!7241978 () Bool)

(declare-fun res!2937808 () Bool)

(assert (=> b!7241978 (=> (not res!2937808) (not e!4341971))))

(declare-fun s2!1849 () List!70300)

(assert (=> b!7241978 (= res!2937808 (matchZipper!3475 (store ((as const (Array Context!15010 Bool)) false) ct2!328 true) s2!1849))))

(declare-fun b!7241979 () Bool)

(declare-fun tp!2035463 () Bool)

(assert (=> b!7241979 (= e!4341966 tp!2035463)))

(assert (= (and start!703778 res!2937807) b!7241978))

(assert (= (and b!7241978 res!2937808) b!7241974))

(assert (= (and b!7241974 res!2937806) b!7241977))

(assert (= start!703778 b!7241976))

(assert (= (and start!703778 ((_ is Cons!70176) s1!1971)) b!7241973))

(assert (= (and start!703778 ((_ is Cons!70176) s2!1849)) b!7241975))

(assert (= start!703778 b!7241979))

(declare-fun m!7916680 () Bool)

(assert (=> b!7241974 m!7916680))

(declare-fun m!7916682 () Bool)

(assert (=> b!7241974 m!7916682))

(declare-fun m!7916684 () Bool)

(assert (=> start!703778 m!7916684))

(declare-fun m!7916686 () Bool)

(assert (=> start!703778 m!7916686))

(declare-fun m!7916688 () Bool)

(assert (=> start!703778 m!7916688))

(declare-fun m!7916690 () Bool)

(assert (=> start!703778 m!7916690))

(declare-fun m!7916692 () Bool)

(assert (=> b!7241977 m!7916692))

(declare-fun m!7916694 () Bool)

(assert (=> b!7241977 m!7916694))

(declare-fun m!7916696 () Bool)

(assert (=> b!7241978 m!7916696))

(assert (=> b!7241978 m!7916696))

(declare-fun m!7916698 () Bool)

(assert (=> b!7241978 m!7916698))

(check-sat (not start!703778) tp_is_empty!46595 (not b!7241979) (not b!7241973) (not b!7241978) (not b!7241974) (not b!7241976) (not b!7241975) (not b!7241977))
(check-sat)
