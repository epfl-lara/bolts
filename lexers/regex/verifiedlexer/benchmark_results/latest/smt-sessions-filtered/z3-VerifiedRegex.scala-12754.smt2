; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!704772 () Bool)

(assert start!704772)

(declare-fun b!7246852 () Bool)

(declare-fun e!4345134 () Bool)

(declare-fun tp_is_empty!46699 () Bool)

(declare-fun tp!2036669 () Bool)

(assert (=> b!7246852 (= e!4345134 (and tp_is_empty!46699 tp!2036669))))

(declare-fun b!7246853 () Bool)

(declare-fun e!4345133 () Bool)

(declare-fun e!4345140 () Bool)

(assert (=> b!7246853 (= e!4345133 (not e!4345140))))

(declare-fun res!2939483 () Bool)

(assert (=> b!7246853 (=> res!2939483 e!4345140)))

(declare-datatypes ((C!37508 0))(
  ( (C!37509 (val!28702 Int)) )
))
(declare-datatypes ((Regex!18617 0))(
  ( (ElementMatch!18617 (c!1346251 C!37508)) (Concat!27462 (regOne!37746 Regex!18617) (regTwo!37746 Regex!18617)) (EmptyExpr!18617) (Star!18617 (reg!18946 Regex!18617)) (EmptyLang!18617) (Union!18617 (regOne!37747 Regex!18617) (regTwo!37747 Regex!18617)) )
))
(declare-datatypes ((List!70432 0))(
  ( (Nil!70308) (Cons!70308 (h!76756 Regex!18617) (t!384484 List!70432)) )
))
(declare-datatypes ((Context!15114 0))(
  ( (Context!15115 (exprs!8057 List!70432)) )
))
(declare-fun lt!2583076 () Context!15114)

(declare-fun ct2!328 () Context!15114)

(assert (=> b!7246853 (= res!2939483 (not (= lt!2583076 ct2!328)))))

(declare-fun ct1!232 () Context!15114)

(declare-datatypes ((Unit!163817 0))(
  ( (Unit!163818) )
))
(declare-fun lt!2583078 () Unit!163817)

(declare-fun lambda!443291 () Int)

(declare-fun lemmaConcatPreservesForall!1424 (List!70432 List!70432 Int) Unit!163817)

(assert (=> b!7246853 (= lt!2583078 (lemmaConcatPreservesForall!1424 (exprs!8057 ct1!232) (exprs!8057 ct2!328) lambda!443291))))

(declare-datatypes ((List!70433 0))(
  ( (Nil!70309) (Cons!70309 (h!76757 C!37508) (t!384485 List!70433)) )
))
(declare-fun s1!1971 () List!70433)

(declare-fun isEmpty!40495 (List!70433) Bool)

(assert (=> b!7246853 (isEmpty!40495 s1!1971)))

(declare-fun lt!2583074 () Unit!163817)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2583075 () (InoxSet Context!15114))

(declare-fun lemmaZipperOfEmptyContextMatchesEmptyString!62 ((InoxSet Context!15114) List!70433) Unit!163817)

(assert (=> b!7246853 (= lt!2583074 (lemmaZipperOfEmptyContextMatchesEmptyString!62 lt!2583075 s1!1971))))

(declare-fun b!7246854 () Bool)

(declare-fun res!2939479 () Bool)

(declare-fun e!4345136 () Bool)

(assert (=> b!7246854 (=> (not res!2939479) (not e!4345136))))

(declare-fun s2!1849 () List!70433)

(declare-fun matchZipper!3527 ((InoxSet Context!15114) List!70433) Bool)

(assert (=> b!7246854 (= res!2939479 (matchZipper!3527 (store ((as const (Array Context!15114 Bool)) false) ct2!328 true) s2!1849))))

(declare-fun b!7246855 () Bool)

(declare-fun e!4345138 () Bool)

(declare-fun tp!2036672 () Bool)

(assert (=> b!7246855 (= e!4345138 tp!2036672)))

(declare-fun b!7246856 () Bool)

(declare-fun e!4345132 () Bool)

(declare-fun tp!2036670 () Bool)

(assert (=> b!7246856 (= e!4345132 (and tp_is_empty!46699 tp!2036670))))

(declare-fun b!7246857 () Bool)

(declare-fun e!4345139 () Bool)

(assert (=> b!7246857 (= e!4345140 e!4345139)))

(declare-fun res!2939478 () Bool)

(assert (=> b!7246857 (=> res!2939478 e!4345139)))

(declare-fun lt!2583077 () List!70433)

(assert (=> b!7246857 (= res!2939478 (not (= lt!2583077 s2!1849)))))

(declare-fun ++!16502 (List!70433 List!70433) List!70433)

(assert (=> b!7246857 (= lt!2583077 (++!16502 s1!1971 s2!1849))))

(declare-fun res!2939481 () Bool)

(assert (=> start!704772 (=> (not res!2939481) (not e!4345136))))

(assert (=> start!704772 (= res!2939481 (matchZipper!3527 lt!2583075 s1!1971))))

(assert (=> start!704772 (= lt!2583075 (store ((as const (Array Context!15114 Bool)) false) ct1!232 true))))

(assert (=> start!704772 e!4345136))

(declare-fun e!4345135 () Bool)

(declare-fun inv!89552 (Context!15114) Bool)

(assert (=> start!704772 (and (inv!89552 ct1!232) e!4345135)))

(assert (=> start!704772 e!4345134))

(assert (=> start!704772 e!4345132))

(assert (=> start!704772 (and (inv!89552 ct2!328) e!4345138)))

(declare-fun b!7246858 () Bool)

(assert (=> b!7246858 (= e!4345136 e!4345133)))

(declare-fun res!2939482 () Bool)

(assert (=> b!7246858 (=> (not res!2939482) (not e!4345133))))

(get-info :version)

(assert (=> b!7246858 (= res!2939482 ((_ is Nil!70308) (exprs!8057 ct1!232)))))

(declare-fun ++!16503 (List!70432 List!70432) List!70432)

(assert (=> b!7246858 (= lt!2583076 (Context!15115 (++!16503 (exprs!8057 ct1!232) (exprs!8057 ct2!328))))))

(declare-fun lt!2583073 () Unit!163817)

(assert (=> b!7246858 (= lt!2583073 (lemmaConcatPreservesForall!1424 (exprs!8057 ct1!232) (exprs!8057 ct2!328) lambda!443291))))

(declare-fun b!7246859 () Bool)

(declare-fun e!4345137 () Bool)

(assert (=> b!7246859 (= e!4345139 e!4345137)))

(declare-fun res!2939480 () Bool)

(assert (=> b!7246859 (=> res!2939480 e!4345137)))

(assert (=> b!7246859 (= res!2939480 (not (matchZipper!3527 (store ((as const (Array Context!15114 Bool)) false) lt!2583076 true) lt!2583077)))))

(declare-fun lt!2583072 () Unit!163817)

(assert (=> b!7246859 (= lt!2583072 (lemmaConcatPreservesForall!1424 (exprs!8057 ct1!232) (exprs!8057 ct2!328) lambda!443291))))

(declare-fun b!7246860 () Bool)

(assert (=> b!7246860 (= e!4345137 true)))

(declare-fun lt!2583079 () Unit!163817)

(assert (=> b!7246860 (= lt!2583079 (lemmaConcatPreservesForall!1424 (exprs!8057 ct1!232) (exprs!8057 ct2!328) lambda!443291))))

(declare-fun b!7246861 () Bool)

(declare-fun tp!2036671 () Bool)

(assert (=> b!7246861 (= e!4345135 tp!2036671)))

(assert (= (and start!704772 res!2939481) b!7246854))

(assert (= (and b!7246854 res!2939479) b!7246858))

(assert (= (and b!7246858 res!2939482) b!7246853))

(assert (= (and b!7246853 (not res!2939483)) b!7246857))

(assert (= (and b!7246857 (not res!2939478)) b!7246859))

(assert (= (and b!7246859 (not res!2939480)) b!7246860))

(assert (= start!704772 b!7246861))

(assert (= (and start!704772 ((_ is Cons!70309) s1!1971)) b!7246852))

(assert (= (and start!704772 ((_ is Cons!70309) s2!1849)) b!7246856))

(assert (= start!704772 b!7246855))

(declare-fun m!7923708 () Bool)

(assert (=> b!7246853 m!7923708))

(declare-fun m!7923710 () Bool)

(assert (=> b!7246853 m!7923710))

(declare-fun m!7923712 () Bool)

(assert (=> b!7246853 m!7923712))

(declare-fun m!7923714 () Bool)

(assert (=> b!7246858 m!7923714))

(assert (=> b!7246858 m!7923708))

(assert (=> b!7246860 m!7923708))

(declare-fun m!7923716 () Bool)

(assert (=> b!7246859 m!7923716))

(assert (=> b!7246859 m!7923716))

(declare-fun m!7923718 () Bool)

(assert (=> b!7246859 m!7923718))

(assert (=> b!7246859 m!7923708))

(declare-fun m!7923720 () Bool)

(assert (=> start!704772 m!7923720))

(declare-fun m!7923722 () Bool)

(assert (=> start!704772 m!7923722))

(declare-fun m!7923724 () Bool)

(assert (=> start!704772 m!7923724))

(declare-fun m!7923726 () Bool)

(assert (=> start!704772 m!7923726))

(declare-fun m!7923728 () Bool)

(assert (=> b!7246857 m!7923728))

(declare-fun m!7923730 () Bool)

(assert (=> b!7246854 m!7923730))

(assert (=> b!7246854 m!7923730))

(declare-fun m!7923732 () Bool)

(assert (=> b!7246854 m!7923732))

(check-sat (not b!7246857) (not b!7246860) (not b!7246855) (not b!7246854) (not b!7246853) (not b!7246856) (not b!7246861) (not b!7246852) (not start!704772) tp_is_empty!46699 (not b!7246858) (not b!7246859))
(check-sat)
