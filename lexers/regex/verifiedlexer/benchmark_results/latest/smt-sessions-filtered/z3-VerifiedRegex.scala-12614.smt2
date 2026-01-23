; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!698962 () Bool)

(assert start!698962)

(declare-fun b!7177885 () Bool)

(assert (=> b!7177885 true))

(declare-fun b!7177882 () Bool)

(assert (=> b!7177882 true))

(assert (=> b!7177882 true))

(declare-fun b!7177875 () Bool)

(declare-fun res!2923840 () Bool)

(declare-fun e!4310809 () Bool)

(assert (=> b!7177875 (=> (not res!2923840) (not e!4310809))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!36948 0))(
  ( (C!36949 (val!28422 Int)) )
))
(declare-datatypes ((Regex!18337 0))(
  ( (ElementMatch!18337 (c!1336673 C!36948)) (Concat!27182 (regOne!37186 Regex!18337) (regTwo!37186 Regex!18337)) (EmptyExpr!18337) (Star!18337 (reg!18666 Regex!18337)) (EmptyLang!18337) (Union!18337 (regOne!37187 Regex!18337) (regTwo!37187 Regex!18337)) )
))
(declare-datatypes ((List!69749 0))(
  ( (Nil!69625) (Cons!69625 (h!76073 Regex!18337) (t!383770 List!69749)) )
))
(declare-datatypes ((Context!14578 0))(
  ( (Context!14579 (exprs!7789 List!69749)) )
))
(declare-fun lt!2570561 () (InoxSet Context!14578))

(assert (=> b!7177875 (= res!2923840 (not (= lt!2570561 ((as const (Array Context!14578 Bool)) false))))))

(declare-fun setIsEmpty!53049 () Bool)

(declare-fun setRes!53049 () Bool)

(assert (=> setIsEmpty!53049 setRes!53049))

(declare-fun b!7177876 () Bool)

(declare-fun e!4310808 () Bool)

(declare-fun tp!1991191 () Bool)

(assert (=> b!7177876 (= e!4310808 tp!1991191)))

(declare-fun b!7177877 () Bool)

(declare-fun e!4310806 () Bool)

(declare-fun e!4310811 () Bool)

(assert (=> b!7177877 (= e!4310806 e!4310811)))

(declare-fun res!2923842 () Bool)

(assert (=> b!7177877 (=> (not res!2923842) (not e!4310811))))

(declare-fun z!3530 () (InoxSet Context!14578))

(declare-fun lt!2570562 () Context!14578)

(assert (=> b!7177877 (= res!2923842 (= z!3530 (store ((as const (Array Context!14578 Bool)) false) lt!2570562 true)))))

(assert (=> b!7177877 (= lt!2570562 (Context!14579 Nil!69625))))

(declare-fun b!7177878 () Bool)

(declare-fun res!2923841 () Bool)

(declare-fun e!4310810 () Bool)

(assert (=> b!7177878 (=> (not res!2923841) (not e!4310810))))

(declare-fun lt!2570563 () Context!14578)

(assert (=> b!7177878 (= res!2923841 (select lt!2570561 lt!2570563))))

(declare-fun res!2923846 () Bool)

(assert (=> start!698962 (=> (not res!2923846) (not e!4310806))))

(declare-datatypes ((List!69750 0))(
  ( (Nil!69626) (Cons!69626 (h!76074 Context!14578) (t!383771 List!69750)) )
))
(declare-fun unfocusZipper!2597 (List!69750) Regex!18337)

(declare-fun toList!11280 ((InoxSet Context!14578)) List!69750)

(assert (=> start!698962 (= res!2923846 (= (unfocusZipper!2597 (toList!11280 z!3530)) EmptyExpr!18337))))

(assert (=> start!698962 e!4310806))

(declare-fun condSetEmpty!53049 () Bool)

(assert (=> start!698962 (= condSetEmpty!53049 (= z!3530 ((as const (Array Context!14578 Bool)) false)))))

(assert (=> start!698962 setRes!53049))

(declare-fun e!4310812 () Bool)

(assert (=> start!698962 e!4310812))

(declare-fun b!7177879 () Bool)

(assert (=> b!7177879 (= e!4310811 e!4310809)))

(declare-fun res!2923845 () Bool)

(assert (=> b!7177879 (=> (not res!2923845) (not e!4310809))))

(declare-fun lt!2570564 () C!36948)

(declare-fun derivationStepZipperUp!2323 (Context!14578 C!36948) (InoxSet Context!14578))

(assert (=> b!7177879 (= res!2923845 (= (derivationStepZipperUp!2323 lt!2570562 lt!2570564) ((as const (Array Context!14578 Bool)) false)))))

(declare-fun derivationStepZipper!3214 ((InoxSet Context!14578) C!36948) (InoxSet Context!14578))

(assert (=> b!7177879 (= lt!2570561 (derivationStepZipper!3214 z!3530 lt!2570564))))

(declare-datatypes ((List!69751 0))(
  ( (Nil!69627) (Cons!69627 (h!76075 C!36948) (t!383772 List!69751)) )
))
(declare-fun s!7967 () List!69751)

(declare-fun head!14651 (List!69751) C!36948)

(assert (=> b!7177879 (= lt!2570564 (head!14651 s!7967))))

(declare-fun setElem!53049 () Context!14578)

(declare-fun setNonEmpty!53049 () Bool)

(declare-fun tp!1991188 () Bool)

(declare-fun inv!88864 (Context!14578) Bool)

(assert (=> setNonEmpty!53049 (= setRes!53049 (and tp!1991188 (inv!88864 setElem!53049) e!4310808))))

(declare-fun setRest!53049 () (InoxSet Context!14578))

(assert (=> setNonEmpty!53049 (= z!3530 ((_ map or) (store ((as const (Array Context!14578 Bool)) false) setElem!53049 true) setRest!53049))))

(declare-fun b!7177880 () Bool)

(declare-fun e!4310807 () Bool)

(declare-fun tp!1991190 () Bool)

(assert (=> b!7177880 (= e!4310807 tp!1991190)))

(declare-fun b!7177881 () Bool)

(declare-fun res!2923844 () Bool)

(assert (=> b!7177881 (=> (not res!2923844) (not e!4310806))))

(declare-fun focus!412 (Regex!18337) (InoxSet Context!14578))

(assert (=> b!7177881 (= res!2923844 (not (= z!3530 (focus!412 EmptyExpr!18337))))))

(assert (=> b!7177882 (= e!4310810 (not true))))

(declare-fun lt!2570560 () Bool)

(declare-fun lambda!437316 () Int)

(declare-fun exists!4070 ((InoxSet Context!14578) Int) Bool)

(assert (=> b!7177882 (= lt!2570560 (exists!4070 z!3530 lambda!437316))))

(declare-fun lambda!437315 () Int)

(declare-fun empty!2959 () Context!14578)

(declare-fun flatMapPost!60 ((InoxSet Context!14578) Int Context!14578) Context!14578)

(assert (=> b!7177882 (= (flatMapPost!60 z!3530 lambda!437315 lt!2570563) empty!2959)))

(assert (=> b!7177882 true))

(assert (=> b!7177882 (and (inv!88864 empty!2959) e!4310807)))

(declare-fun b!7177883 () Bool)

(declare-fun tp_is_empty!46247 () Bool)

(declare-fun tp!1991189 () Bool)

(assert (=> b!7177883 (= e!4310812 (and tp_is_empty!46247 tp!1991189))))

(declare-fun b!7177884 () Bool)

(declare-fun res!2923847 () Bool)

(assert (=> b!7177884 (=> (not res!2923847) (not e!4310811))))

(declare-fun isEmpty!40201 (List!69751) Bool)

(assert (=> b!7177884 (= res!2923847 (not (isEmpty!40201 s!7967)))))

(assert (=> b!7177885 (= e!4310809 e!4310810)))

(declare-fun res!2923843 () Bool)

(assert (=> b!7177885 (=> (not res!2923843) (not e!4310810))))

(declare-fun flatMap!2665 ((InoxSet Context!14578) Int) (InoxSet Context!14578))

(assert (=> b!7177885 (= res!2923843 (select (flatMap!2665 z!3530 lambda!437315) lt!2570563))))

(declare-fun head!14652 (List!69750) Context!14578)

(assert (=> b!7177885 (= lt!2570563 (head!14652 (toList!11280 lt!2570561)))))

(assert (= (and start!698962 res!2923846) b!7177881))

(assert (= (and b!7177881 res!2923844) b!7177877))

(assert (= (and b!7177877 res!2923842) b!7177884))

(assert (= (and b!7177884 res!2923847) b!7177879))

(assert (= (and b!7177879 res!2923845) b!7177875))

(assert (= (and b!7177875 res!2923840) b!7177885))

(assert (= (and b!7177885 res!2923843) b!7177878))

(assert (= (and b!7177878 res!2923841) b!7177882))

(assert (= b!7177882 b!7177880))

(assert (= (and start!698962 condSetEmpty!53049) setIsEmpty!53049))

(assert (= (and start!698962 (not condSetEmpty!53049)) setNonEmpty!53049))

(assert (= setNonEmpty!53049 b!7177876))

(get-info :version)

(assert (= (and start!698962 ((_ is Cons!69627) s!7967)) b!7177883))

(declare-fun m!7876734 () Bool)

(assert (=> b!7177877 m!7876734))

(declare-fun m!7876736 () Bool)

(assert (=> b!7177878 m!7876736))

(declare-fun m!7876738 () Bool)

(assert (=> b!7177881 m!7876738))

(declare-fun m!7876740 () Bool)

(assert (=> start!698962 m!7876740))

(assert (=> start!698962 m!7876740))

(declare-fun m!7876742 () Bool)

(assert (=> start!698962 m!7876742))

(declare-fun m!7876744 () Bool)

(assert (=> b!7177884 m!7876744))

(declare-fun m!7876746 () Bool)

(assert (=> b!7177885 m!7876746))

(declare-fun m!7876748 () Bool)

(assert (=> b!7177885 m!7876748))

(declare-fun m!7876750 () Bool)

(assert (=> b!7177885 m!7876750))

(assert (=> b!7177885 m!7876750))

(declare-fun m!7876752 () Bool)

(assert (=> b!7177885 m!7876752))

(declare-fun m!7876754 () Bool)

(assert (=> setNonEmpty!53049 m!7876754))

(declare-fun m!7876756 () Bool)

(assert (=> b!7177879 m!7876756))

(declare-fun m!7876758 () Bool)

(assert (=> b!7177879 m!7876758))

(declare-fun m!7876760 () Bool)

(assert (=> b!7177879 m!7876760))

(declare-fun m!7876762 () Bool)

(assert (=> b!7177882 m!7876762))

(declare-fun m!7876764 () Bool)

(assert (=> b!7177882 m!7876764))

(declare-fun m!7876766 () Bool)

(assert (=> b!7177882 m!7876766))

(check-sat (not b!7177885) (not setNonEmpty!53049) (not b!7177880) (not b!7177879) (not b!7177882) tp_is_empty!46247 (not b!7177884) (not b!7177876) (not start!698962) (not b!7177881) (not b!7177883))
(check-sat)
