; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!703936 () Bool)

(assert start!703936)

(declare-fun b!7242624 () Bool)

(assert (=> b!7242624 true))

(declare-fun b!7242621 () Bool)

(declare-fun e!4342392 () Bool)

(declare-fun tp!2035730 () Bool)

(assert (=> b!7242621 (= e!4342392 tp!2035730)))

(declare-fun b!7242622 () Bool)

(declare-fun e!4342390 () Bool)

(declare-fun tp_is_empty!46615 () Bool)

(declare-fun tp!2035732 () Bool)

(assert (=> b!7242622 (= e!4342390 (and tp_is_empty!46615 tp!2035732))))

(declare-fun e!4342393 () Bool)

(declare-fun e!4342389 () Bool)

(assert (=> b!7242624 (= e!4342393 (not e!4342389))))

(declare-fun res!2938002 () Bool)

(assert (=> b!7242624 (=> res!2938002 e!4342389)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!37424 0))(
  ( (C!37425 (val!28660 Int)) )
))
(declare-datatypes ((Regex!18575 0))(
  ( (ElementMatch!18575 (c!1345067 C!37424)) (Concat!27420 (regOne!37662 Regex!18575) (regTwo!37662 Regex!18575)) (EmptyExpr!18575) (Star!18575 (reg!18904 Regex!18575)) (EmptyLang!18575) (Union!18575 (regOne!37663 Regex!18575) (regTwo!37663 Regex!18575)) )
))
(declare-datatypes ((List!70322 0))(
  ( (Nil!70198) (Cons!70198 (h!76646 Regex!18575) (t!384373 List!70322)) )
))
(declare-datatypes ((Context!15030 0))(
  ( (Context!15031 (exprs!8015 List!70322)) )
))
(declare-fun lt!2580621 () (InoxSet Context!15030))

(declare-fun lambda!442285 () Int)

(declare-fun exists!4269 ((InoxSet Context!15030) Int) Bool)

(assert (=> b!7242624 (= res!2938002 (not (exists!4269 lt!2580621 lambda!442285)))))

(declare-datatypes ((List!70323 0))(
  ( (Nil!70199) (Cons!70199 (h!76647 Context!15030) (t!384374 List!70323)) )
))
(declare-fun lt!2580618 () List!70323)

(declare-fun exists!4270 (List!70323 Int) Bool)

(assert (=> b!7242624 (exists!4270 lt!2580618 lambda!442285)))

(declare-datatypes ((Unit!163736 0))(
  ( (Unit!163737) )
))
(declare-fun lt!2580619 () Unit!163736)

(declare-datatypes ((List!70324 0))(
  ( (Nil!70200) (Cons!70200 (h!76648 C!37424) (t!384375 List!70324)) )
))
(declare-fun s1!1971 () List!70324)

(declare-fun lemmaZipperMatchesExistsMatchingContext!702 (List!70323 List!70324) Unit!163736)

(assert (=> b!7242624 (= lt!2580619 (lemmaZipperMatchesExistsMatchingContext!702 lt!2580618 (t!384375 s1!1971)))))

(declare-fun toList!11421 ((InoxSet Context!15030)) List!70323)

(assert (=> b!7242624 (= lt!2580618 (toList!11421 lt!2580621))))

(declare-fun b!7242625 () Bool)

(declare-fun e!4342387 () Bool)

(declare-fun tp!2035731 () Bool)

(assert (=> b!7242625 (= e!4342387 tp!2035731)))

(declare-fun b!7242626 () Bool)

(declare-fun res!2938003 () Bool)

(declare-fun e!4342388 () Bool)

(assert (=> b!7242626 (=> (not res!2938003) (not e!4342388))))

(declare-fun ct2!328 () Context!15030)

(declare-fun s2!1849 () List!70324)

(declare-fun matchZipper!3485 ((InoxSet Context!15030) List!70324) Bool)

(assert (=> b!7242626 (= res!2938003 (matchZipper!3485 (store ((as const (Array Context!15030 Bool)) false) ct2!328 true) s2!1849))))

(declare-fun b!7242627 () Bool)

(declare-fun e!4342386 () Bool)

(assert (=> b!7242627 (= e!4342388 e!4342386)))

(declare-fun res!2938000 () Bool)

(assert (=> b!7242627 (=> (not res!2938000) (not e!4342386))))

(declare-fun ct1!232 () Context!15030)

(get-info :version)

(assert (=> b!7242627 (= res!2938000 (and (not ((_ is Nil!70198) (exprs!8015 ct1!232))) ((_ is Cons!70200) s1!1971)))))

(declare-fun lt!2580620 () List!70322)

(declare-fun ++!16434 (List!70322 List!70322) List!70322)

(assert (=> b!7242627 (= lt!2580620 (++!16434 (exprs!8015 ct1!232) (exprs!8015 ct2!328)))))

(declare-fun lambda!442284 () Int)

(declare-fun lt!2580614 () Unit!163736)

(declare-fun lemmaConcatPreservesForall!1384 (List!70322 List!70322 Int) Unit!163736)

(assert (=> b!7242627 (= lt!2580614 (lemmaConcatPreservesForall!1384 (exprs!8015 ct1!232) (exprs!8015 ct2!328) lambda!442284))))

(declare-fun b!7242623 () Bool)

(assert (=> b!7242623 (= e!4342386 e!4342393)))

(declare-fun res!2938001 () Bool)

(assert (=> b!7242623 (=> (not res!2938001) (not e!4342393))))

(assert (=> b!7242623 (= res!2938001 (matchZipper!3485 lt!2580621 (t!384375 s1!1971)))))

(declare-fun lt!2580617 () (InoxSet Context!15030))

(declare-fun derivationStepZipper!3363 ((InoxSet Context!15030) C!37424) (InoxSet Context!15030))

(assert (=> b!7242623 (= lt!2580621 (derivationStepZipper!3363 lt!2580617 (h!76648 s1!1971)))))

(declare-fun res!2938004 () Bool)

(assert (=> start!703936 (=> (not res!2938004) (not e!4342388))))

(assert (=> start!703936 (= res!2938004 (matchZipper!3485 lt!2580617 s1!1971))))

(assert (=> start!703936 (= lt!2580617 (store ((as const (Array Context!15030 Bool)) false) ct1!232 true))))

(assert (=> start!703936 e!4342388))

(declare-fun inv!89447 (Context!15030) Bool)

(assert (=> start!703936 (and (inv!89447 ct1!232) e!4342387)))

(assert (=> start!703936 e!4342390))

(declare-fun e!4342391 () Bool)

(assert (=> start!703936 e!4342391))

(assert (=> start!703936 (and (inv!89447 ct2!328) e!4342392)))

(declare-fun b!7242628 () Bool)

(assert (=> b!7242628 (= e!4342389 true)))

(declare-fun lt!2580622 () Context!15030)

(declare-fun lt!2580615 () Unit!163736)

(assert (=> b!7242628 (= lt!2580615 (lemmaConcatPreservesForall!1384 (exprs!8015 lt!2580622) (exprs!8015 ct2!328) lambda!442284))))

(declare-fun ++!16435 (List!70324 List!70324) List!70324)

(assert (=> b!7242628 (matchZipper!3485 (store ((as const (Array Context!15030 Bool)) false) (Context!15031 (++!16434 (exprs!8015 lt!2580622) (exprs!8015 ct2!328))) true) (++!16435 (t!384375 s1!1971) s2!1849))))

(declare-fun lt!2580616 () Unit!163736)

(assert (=> b!7242628 (= lt!2580616 (lemmaConcatPreservesForall!1384 (exprs!8015 lt!2580622) (exprs!8015 ct2!328) lambda!442284))))

(declare-fun lt!2580613 () Unit!163736)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!348 (Context!15030 Context!15030 List!70324 List!70324) Unit!163736)

(assert (=> b!7242628 (= lt!2580613 (lemmaConcatenateContextMatchesConcatOfStrings!348 lt!2580622 ct2!328 (t!384375 s1!1971) s2!1849))))

(declare-fun getWitness!2119 ((InoxSet Context!15030) Int) Context!15030)

(assert (=> b!7242628 (= lt!2580622 (getWitness!2119 lt!2580621 lambda!442285))))

(declare-fun b!7242629 () Bool)

(declare-fun tp!2035729 () Bool)

(assert (=> b!7242629 (= e!4342391 (and tp_is_empty!46615 tp!2035729))))

(assert (= (and start!703936 res!2938004) b!7242626))

(assert (= (and b!7242626 res!2938003) b!7242627))

(assert (= (and b!7242627 res!2938000) b!7242623))

(assert (= (and b!7242623 res!2938001) b!7242624))

(assert (= (and b!7242624 (not res!2938002)) b!7242628))

(assert (= start!703936 b!7242625))

(assert (= (and start!703936 ((_ is Cons!70200) s1!1971)) b!7242622))

(assert (= (and start!703936 ((_ is Cons!70200) s2!1849)) b!7242629))

(assert (= start!703936 b!7242621))

(declare-fun m!7917570 () Bool)

(assert (=> b!7242626 m!7917570))

(assert (=> b!7242626 m!7917570))

(declare-fun m!7917572 () Bool)

(assert (=> b!7242626 m!7917572))

(declare-fun m!7917574 () Bool)

(assert (=> b!7242627 m!7917574))

(declare-fun m!7917576 () Bool)

(assert (=> b!7242627 m!7917576))

(declare-fun m!7917578 () Bool)

(assert (=> start!703936 m!7917578))

(declare-fun m!7917580 () Bool)

(assert (=> start!703936 m!7917580))

(declare-fun m!7917582 () Bool)

(assert (=> start!703936 m!7917582))

(declare-fun m!7917584 () Bool)

(assert (=> start!703936 m!7917584))

(declare-fun m!7917586 () Bool)

(assert (=> b!7242623 m!7917586))

(declare-fun m!7917588 () Bool)

(assert (=> b!7242623 m!7917588))

(declare-fun m!7917590 () Bool)

(assert (=> b!7242628 m!7917590))

(declare-fun m!7917592 () Bool)

(assert (=> b!7242628 m!7917592))

(assert (=> b!7242628 m!7917592))

(declare-fun m!7917594 () Bool)

(assert (=> b!7242628 m!7917594))

(declare-fun m!7917596 () Bool)

(assert (=> b!7242628 m!7917596))

(declare-fun m!7917598 () Bool)

(assert (=> b!7242628 m!7917598))

(assert (=> b!7242628 m!7917598))

(assert (=> b!7242628 m!7917594))

(declare-fun m!7917600 () Bool)

(assert (=> b!7242628 m!7917600))

(declare-fun m!7917602 () Bool)

(assert (=> b!7242628 m!7917602))

(declare-fun m!7917604 () Bool)

(assert (=> b!7242624 m!7917604))

(declare-fun m!7917606 () Bool)

(assert (=> b!7242624 m!7917606))

(declare-fun m!7917608 () Bool)

(assert (=> b!7242624 m!7917608))

(declare-fun m!7917610 () Bool)

(assert (=> b!7242624 m!7917610))

(check-sat (not b!7242624) (not start!703936) (not b!7242626) (not b!7242621) (not b!7242622) (not b!7242628) tp_is_empty!46615 (not b!7242629) (not b!7242623) (not b!7242625) (not b!7242627))
(check-sat)
