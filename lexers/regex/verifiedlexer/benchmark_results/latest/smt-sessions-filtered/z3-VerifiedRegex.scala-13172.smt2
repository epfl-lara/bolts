; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!718784 () Bool)

(assert start!718784)

(declare-fun b!7361747 () Bool)

(declare-fun e!4407627 () Bool)

(declare-fun tp!2091978 () Bool)

(declare-fun tp!2091973 () Bool)

(assert (=> b!7361747 (= e!4407627 (and tp!2091978 tp!2091973))))

(declare-fun b!7361748 () Bool)

(declare-fun tp!2091979 () Bool)

(assert (=> b!7361748 (= e!4407627 tp!2091979)))

(declare-fun b!7361749 () Bool)

(declare-fun tp_is_empty!48711 () Bool)

(assert (=> b!7361749 (= e!4407627 tp_is_empty!48711)))

(declare-fun b!7361750 () Bool)

(declare-fun e!4407630 () Bool)

(assert (=> b!7361750 (= e!4407630 false)))

(declare-datatypes ((C!38740 0))(
  ( (C!38741 (val!29730 Int)) )
))
(declare-datatypes ((Regex!19233 0))(
  ( (ElementMatch!19233 (c!1367837 C!38740)) (Concat!28078 (regOne!38978 Regex!19233) (regTwo!38978 Regex!19233)) (EmptyExpr!19233) (Star!19233 (reg!19562 Regex!19233)) (EmptyLang!19233) (Union!19233 (regOne!38979 Regex!19233) (regTwo!38979 Regex!19233)) )
))
(declare-datatypes ((List!71729 0))(
  ( (Nil!71605) (Cons!71605 (h!78053 Regex!19233) (t!386178 List!71729)) )
))
(declare-datatypes ((Context!16346 0))(
  ( (Context!16347 (exprs!8673 List!71729)) )
))
(declare-fun ct2!378 () Context!16346)

(declare-datatypes ((Unit!165415 0))(
  ( (Unit!165416) )
))
(declare-fun lt!2614043 () Unit!165415)

(declare-fun lambda!457413 () Int)

(declare-fun ct1!282 () Context!16346)

(declare-fun lemmaConcatPreservesForall!1906 (List!71729 List!71729 Int) Unit!165415)

(assert (=> b!7361750 (= lt!2614043 (lemmaConcatPreservesForall!1906 (exprs!8673 ct1!282) (exprs!8673 ct2!378) lambda!457413))))

(declare-fun cWitness!61 () Context!16346)

(declare-fun lt!2614039 () Unit!165415)

(assert (=> b!7361750 (= lt!2614039 (lemmaConcatPreservesForall!1906 (exprs!8673 cWitness!61) (exprs!8673 ct2!378) lambda!457413))))

(declare-fun b!7361751 () Bool)

(declare-fun e!4407633 () Bool)

(declare-fun e!4407634 () Bool)

(assert (=> b!7361751 (= e!4407633 e!4407634)))

(declare-fun res!2971850 () Bool)

(assert (=> b!7361751 (=> (not res!2971850) (not e!4407634))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2614046 () (InoxSet Context!16346))

(declare-fun lt!2614047 () Context!16346)

(assert (=> b!7361751 (= res!2971850 (= lt!2614046 (store ((as const (Array Context!16346 Bool)) false) lt!2614047 true)))))

(declare-fun lt!2614044 () Unit!165415)

(assert (=> b!7361751 (= lt!2614044 (lemmaConcatPreservesForall!1906 (exprs!8673 ct1!282) (exprs!8673 ct2!378) lambda!457413))))

(declare-fun b!7361752 () Bool)

(declare-fun tp!2091972 () Bool)

(declare-fun tp!2091975 () Bool)

(assert (=> b!7361752 (= e!4407627 (and tp!2091972 tp!2091975))))

(declare-fun res!2971849 () Bool)

(declare-fun e!4407632 () Bool)

(assert (=> start!718784 (=> (not res!2971849) (not e!4407632))))

(declare-fun r1!2370 () Regex!19233)

(declare-fun validRegex!9829 (Regex!19233) Bool)

(assert (=> start!718784 (= res!2971849 (validRegex!9829 r1!2370))))

(assert (=> start!718784 e!4407632))

(assert (=> start!718784 tp_is_empty!48711))

(declare-fun e!4407631 () Bool)

(declare-fun inv!91422 (Context!16346) Bool)

(assert (=> start!718784 (and (inv!91422 cWitness!61) e!4407631)))

(declare-fun e!4407628 () Bool)

(assert (=> start!718784 (and (inv!91422 ct1!282) e!4407628)))

(assert (=> start!718784 e!4407627))

(declare-fun e!4407626 () Bool)

(assert (=> start!718784 (and (inv!91422 ct2!378) e!4407626)))

(declare-fun b!7361753 () Bool)

(declare-fun tp!2091976 () Bool)

(assert (=> b!7361753 (= e!4407626 tp!2091976)))

(declare-fun b!7361754 () Bool)

(declare-fun tp!2091974 () Bool)

(assert (=> b!7361754 (= e!4407631 tp!2091974)))

(declare-fun b!7361755 () Bool)

(declare-fun e!4407625 () Bool)

(assert (=> b!7361755 (= e!4407632 e!4407625)))

(declare-fun res!2971848 () Bool)

(assert (=> b!7361755 (=> (not res!2971848) (not e!4407625))))

(declare-fun lt!2614040 () (InoxSet Context!16346))

(assert (=> b!7361755 (= res!2971848 (select lt!2614040 cWitness!61))))

(declare-fun c!10362 () C!38740)

(declare-fun derivationStepZipperDown!3059 (Regex!19233 Context!16346 C!38740) (InoxSet Context!16346))

(assert (=> b!7361755 (= lt!2614040 (derivationStepZipperDown!3059 r1!2370 ct1!282 c!10362))))

(declare-fun b!7361756 () Bool)

(declare-fun tp!2091977 () Bool)

(assert (=> b!7361756 (= e!4407628 tp!2091977)))

(declare-fun b!7361757 () Bool)

(declare-fun e!4407629 () Bool)

(assert (=> b!7361757 (= e!4407629 e!4407633)))

(declare-fun res!2971847 () Bool)

(assert (=> b!7361757 (=> (not res!2971847) (not e!4407633))))

(declare-fun lt!2614045 () (InoxSet Context!16346))

(assert (=> b!7361757 (= res!2971847 (and (= lt!2614040 lt!2614045) (select lt!2614045 cWitness!61) (= cWitness!61 ct1!282)))))

(assert (=> b!7361757 (= lt!2614045 (store ((as const (Array Context!16346 Bool)) false) ct1!282 true))))

(declare-fun b!7361758 () Bool)

(assert (=> b!7361758 (= e!4407634 e!4407630)))

(declare-fun res!2971852 () Bool)

(assert (=> b!7361758 (=> (not res!2971852) (not e!4407630))))

(declare-fun ++!17049 (List!71729 List!71729) List!71729)

(assert (=> b!7361758 (= res!2971852 (select lt!2614046 (Context!16347 (++!17049 (exprs!8673 cWitness!61) (exprs!8673 ct2!378)))))))

(declare-fun lt!2614042 () Unit!165415)

(assert (=> b!7361758 (= lt!2614042 (lemmaConcatPreservesForall!1906 (exprs!8673 cWitness!61) (exprs!8673 ct2!378) lambda!457413))))

(declare-fun b!7361759 () Bool)

(assert (=> b!7361759 (= e!4407625 e!4407629)))

(declare-fun res!2971851 () Bool)

(assert (=> b!7361759 (=> (not res!2971851) (not e!4407629))))

(get-info :version)

(assert (=> b!7361759 (= res!2971851 (and ((_ is ElementMatch!19233) r1!2370) (= c!10362 (c!1367837 r1!2370))))))

(assert (=> b!7361759 (= lt!2614046 (derivationStepZipperDown!3059 r1!2370 lt!2614047 c!10362))))

(assert (=> b!7361759 (= lt!2614047 (Context!16347 (++!17049 (exprs!8673 ct1!282) (exprs!8673 ct2!378))))))

(declare-fun lt!2614041 () Unit!165415)

(assert (=> b!7361759 (= lt!2614041 (lemmaConcatPreservesForall!1906 (exprs!8673 ct1!282) (exprs!8673 ct2!378) lambda!457413))))

(assert (= (and start!718784 res!2971849) b!7361755))

(assert (= (and b!7361755 res!2971848) b!7361759))

(assert (= (and b!7361759 res!2971851) b!7361757))

(assert (= (and b!7361757 res!2971847) b!7361751))

(assert (= (and b!7361751 res!2971850) b!7361758))

(assert (= (and b!7361758 res!2971852) b!7361750))

(assert (= start!718784 b!7361754))

(assert (= start!718784 b!7361756))

(assert (= (and start!718784 ((_ is ElementMatch!19233) r1!2370)) b!7361749))

(assert (= (and start!718784 ((_ is Concat!28078) r1!2370)) b!7361752))

(assert (= (and start!718784 ((_ is Star!19233) r1!2370)) b!7361748))

(assert (= (and start!718784 ((_ is Union!19233) r1!2370)) b!7361747))

(assert (= start!718784 b!7361753))

(declare-fun m!8018972 () Bool)

(assert (=> b!7361751 m!8018972))

(declare-fun m!8018974 () Bool)

(assert (=> b!7361751 m!8018974))

(declare-fun m!8018976 () Bool)

(assert (=> start!718784 m!8018976))

(declare-fun m!8018978 () Bool)

(assert (=> start!718784 m!8018978))

(declare-fun m!8018980 () Bool)

(assert (=> start!718784 m!8018980))

(declare-fun m!8018982 () Bool)

(assert (=> start!718784 m!8018982))

(declare-fun m!8018984 () Bool)

(assert (=> b!7361757 m!8018984))

(declare-fun m!8018986 () Bool)

(assert (=> b!7361757 m!8018986))

(declare-fun m!8018988 () Bool)

(assert (=> b!7361758 m!8018988))

(declare-fun m!8018990 () Bool)

(assert (=> b!7361758 m!8018990))

(declare-fun m!8018992 () Bool)

(assert (=> b!7361758 m!8018992))

(assert (=> b!7361750 m!8018974))

(assert (=> b!7361750 m!8018992))

(declare-fun m!8018994 () Bool)

(assert (=> b!7361759 m!8018994))

(declare-fun m!8018996 () Bool)

(assert (=> b!7361759 m!8018996))

(assert (=> b!7361759 m!8018974))

(declare-fun m!8018998 () Bool)

(assert (=> b!7361755 m!8018998))

(declare-fun m!8019000 () Bool)

(assert (=> b!7361755 m!8019000))

(check-sat (not b!7361759) (not b!7361758) (not b!7361747) (not b!7361751) (not b!7361756) (not b!7361754) (not start!718784) (not b!7361753) (not b!7361748) (not b!7361752) tp_is_empty!48711 (not b!7361755) (not b!7361750))
(check-sat)
