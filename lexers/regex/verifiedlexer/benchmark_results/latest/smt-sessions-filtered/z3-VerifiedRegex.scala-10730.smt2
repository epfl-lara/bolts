; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!549146 () Bool)

(assert start!549146)

(declare-fun b!5186204 () Bool)

(declare-fun e!3230829 () Bool)

(declare-fun tp_is_empty!38667 () Bool)

(declare-fun tp!1455056 () Bool)

(assert (=> b!5186204 (= e!3230829 (and tp_is_empty!38667 tp!1455056))))

(declare-fun res!2202991 () Bool)

(declare-fun e!3230827 () Bool)

(assert (=> start!549146 (=> (not res!2202991) (not e!3230827))))

(declare-datatypes ((C!29684 0))(
  ( (C!29685 (val!24544 Int)) )
))
(declare-datatypes ((Regex!14707 0))(
  ( (ElementMatch!14707 (c!893772 C!29684)) (Concat!23552 (regOne!29926 Regex!14707) (regTwo!29926 Regex!14707)) (EmptyExpr!14707) (Star!14707 (reg!15036 Regex!14707)) (EmptyLang!14707) (Union!14707 (regOne!29927 Regex!14707) (regTwo!29927 Regex!14707)) )
))
(declare-fun r!7292 () Regex!14707)

(declare-fun validRegex!6443 (Regex!14707) Bool)

(assert (=> start!549146 (= res!2202991 (validRegex!6443 r!7292))))

(assert (=> start!549146 e!3230827))

(declare-fun e!3230826 () Bool)

(assert (=> start!549146 e!3230826))

(declare-fun condSetEmpty!32680 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!60420 0))(
  ( (Nil!60296) (Cons!60296 (h!66744 Regex!14707) (t!373573 List!60420)) )
))
(declare-datatypes ((Context!8182 0))(
  ( (Context!8183 (exprs!4591 List!60420)) )
))
(declare-fun z!1189 () (InoxSet Context!8182))

(assert (=> start!549146 (= condSetEmpty!32680 (= z!1189 ((as const (Array Context!8182 Bool)) false)))))

(declare-fun setRes!32680 () Bool)

(assert (=> start!549146 setRes!32680))

(declare-fun e!3230824 () Bool)

(assert (=> start!549146 e!3230824))

(assert (=> start!549146 e!3230829))

(declare-fun b!5186205 () Bool)

(declare-fun res!2202988 () Bool)

(declare-fun e!3230828 () Bool)

(assert (=> b!5186205 (=> res!2202988 e!3230828)))

(get-info :version)

(assert (=> b!5186205 (= res!2202988 (or ((_ is EmptyExpr!14707) r!7292) ((_ is EmptyLang!14707) r!7292) ((_ is ElementMatch!14707) r!7292) (not ((_ is Union!14707) r!7292))))))

(declare-fun b!5186206 () Bool)

(declare-fun res!2202990 () Bool)

(assert (=> b!5186206 (=> res!2202990 e!3230828)))

(declare-datatypes ((List!60421 0))(
  ( (Nil!60297) (Cons!60297 (h!66745 Context!8182) (t!373574 List!60421)) )
))
(declare-fun zl!343 () List!60421)

(declare-fun generalisedConcat!376 (List!60420) Regex!14707)

(assert (=> b!5186206 (= res!2202990 (not (= r!7292 (generalisedConcat!376 (exprs!4591 (h!66745 zl!343))))))))

(declare-fun b!5186207 () Bool)

(assert (=> b!5186207 (= e!3230826 tp_is_empty!38667)))

(declare-fun b!5186208 () Bool)

(declare-fun e!3230830 () Bool)

(assert (=> b!5186208 (= e!3230830 true)))

(declare-fun nullable!4908 (Regex!14707) Bool)

(declare-fun nullableZipper!1205 ((InoxSet Context!8182)) Bool)

(assert (=> b!5186208 (= (nullable!4908 r!7292) (nullableZipper!1205 z!1189))))

(declare-datatypes ((Unit!152248 0))(
  ( (Unit!152249) )
))
(declare-fun lt!2136542 () Unit!152248)

(declare-fun lemmaUnfocusPreservesNullability!2 (Regex!14707 (InoxSet Context!8182)) Unit!152248)

(assert (=> b!5186208 (= lt!2136542 (lemmaUnfocusPreservesNullability!2 r!7292 z!1189))))

(declare-fun b!5186209 () Bool)

(declare-fun res!2202985 () Bool)

(assert (=> b!5186209 (=> res!2202985 e!3230828)))

(assert (=> b!5186209 (= res!2202985 (not ((_ is Cons!60296) (exprs!4591 (h!66745 zl!343)))))))

(declare-fun b!5186210 () Bool)

(assert (=> b!5186210 (= e!3230828 e!3230830)))

(declare-fun res!2202989 () Bool)

(assert (=> b!5186210 (=> res!2202989 e!3230830)))

(declare-datatypes ((List!60422 0))(
  ( (Nil!60298) (Cons!60298 (h!66746 C!29684) (t!373575 List!60422)) )
))
(declare-fun s!2326 () List!60422)

(declare-fun lt!2136540 () Bool)

(declare-fun lt!2136543 () Bool)

(declare-fun lt!2136545 () Bool)

(assert (=> b!5186210 (= res!2202989 (or (not (= lt!2136545 (or lt!2136540 lt!2136543))) (not ((_ is Nil!60298) s!2326))))))

(declare-fun matchRSpec!1810 (Regex!14707 List!60422) Bool)

(assert (=> b!5186210 (= lt!2136543 (matchRSpec!1810 (regTwo!29927 r!7292) s!2326))))

(declare-fun matchR!6892 (Regex!14707 List!60422) Bool)

(assert (=> b!5186210 (= lt!2136543 (matchR!6892 (regTwo!29927 r!7292) s!2326))))

(declare-fun lt!2136539 () Unit!152248)

(declare-fun mainMatchTheorem!1810 (Regex!14707 List!60422) Unit!152248)

(assert (=> b!5186210 (= lt!2136539 (mainMatchTheorem!1810 (regTwo!29927 r!7292) s!2326))))

(assert (=> b!5186210 (= lt!2136540 (matchRSpec!1810 (regOne!29927 r!7292) s!2326))))

(assert (=> b!5186210 (= lt!2136540 (matchR!6892 (regOne!29927 r!7292) s!2326))))

(declare-fun lt!2136541 () Unit!152248)

(assert (=> b!5186210 (= lt!2136541 (mainMatchTheorem!1810 (regOne!29927 r!7292) s!2326))))

(declare-fun b!5186211 () Bool)

(declare-fun e!3230825 () Bool)

(declare-fun tp!1455055 () Bool)

(assert (=> b!5186211 (= e!3230825 tp!1455055)))

(declare-fun setIsEmpty!32680 () Bool)

(assert (=> setIsEmpty!32680 setRes!32680))

(declare-fun b!5186212 () Bool)

(declare-fun res!2202987 () Bool)

(assert (=> b!5186212 (=> res!2202987 e!3230828)))

(declare-fun isEmpty!32272 (List!60421) Bool)

(assert (=> b!5186212 (= res!2202987 (not (isEmpty!32272 (t!373574 zl!343))))))

(declare-fun b!5186213 () Bool)

(assert (=> b!5186213 (= e!3230827 (not e!3230828))))

(declare-fun res!2202992 () Bool)

(assert (=> b!5186213 (=> res!2202992 e!3230828)))

(assert (=> b!5186213 (= res!2202992 (not ((_ is Cons!60297) zl!343)))))

(assert (=> b!5186213 (= lt!2136545 (matchRSpec!1810 r!7292 s!2326))))

(assert (=> b!5186213 (= lt!2136545 (matchR!6892 r!7292 s!2326))))

(declare-fun lt!2136544 () Unit!152248)

(assert (=> b!5186213 (= lt!2136544 (mainMatchTheorem!1810 r!7292 s!2326))))

(declare-fun b!5186214 () Bool)

(declare-fun res!2202994 () Bool)

(assert (=> b!5186214 (=> (not res!2202994) (not e!3230827))))

(declare-fun toList!8491 ((InoxSet Context!8182)) List!60421)

(assert (=> b!5186214 (= res!2202994 (= (toList!8491 z!1189) zl!343))))

(declare-fun setNonEmpty!32680 () Bool)

(declare-fun setElem!32680 () Context!8182)

(declare-fun e!3230831 () Bool)

(declare-fun tp!1455049 () Bool)

(declare-fun inv!80014 (Context!8182) Bool)

(assert (=> setNonEmpty!32680 (= setRes!32680 (and tp!1455049 (inv!80014 setElem!32680) e!3230831))))

(declare-fun setRest!32680 () (InoxSet Context!8182))

(assert (=> setNonEmpty!32680 (= z!1189 ((_ map or) (store ((as const (Array Context!8182 Bool)) false) setElem!32680 true) setRest!32680))))

(declare-fun b!5186215 () Bool)

(declare-fun res!2202986 () Bool)

(assert (=> b!5186215 (=> (not res!2202986) (not e!3230827))))

(declare-fun unfocusZipper!449 (List!60421) Regex!14707)

(assert (=> b!5186215 (= res!2202986 (= r!7292 (unfocusZipper!449 zl!343)))))

(declare-fun b!5186216 () Bool)

(declare-fun tp!1455051 () Bool)

(declare-fun tp!1455057 () Bool)

(assert (=> b!5186216 (= e!3230826 (and tp!1455051 tp!1455057))))

(declare-fun b!5186217 () Bool)

(declare-fun tp!1455053 () Bool)

(assert (=> b!5186217 (= e!3230831 tp!1455053)))

(declare-fun b!5186218 () Bool)

(declare-fun tp!1455048 () Bool)

(assert (=> b!5186218 (= e!3230826 tp!1455048)))

(declare-fun b!5186219 () Bool)

(declare-fun res!2202993 () Bool)

(assert (=> b!5186219 (=> res!2202993 e!3230828)))

(declare-fun generalisedUnion!636 (List!60420) Regex!14707)

(declare-fun unfocusZipperList!149 (List!60421) List!60420)

(assert (=> b!5186219 (= res!2202993 (not (= r!7292 (generalisedUnion!636 (unfocusZipperList!149 zl!343)))))))

(declare-fun b!5186220 () Bool)

(declare-fun tp!1455054 () Bool)

(declare-fun tp!1455052 () Bool)

(assert (=> b!5186220 (= e!3230826 (and tp!1455054 tp!1455052))))

(declare-fun b!5186221 () Bool)

(declare-fun tp!1455050 () Bool)

(assert (=> b!5186221 (= e!3230824 (and (inv!80014 (h!66745 zl!343)) e!3230825 tp!1455050))))

(assert (= (and start!549146 res!2202991) b!5186214))

(assert (= (and b!5186214 res!2202994) b!5186215))

(assert (= (and b!5186215 res!2202986) b!5186213))

(assert (= (and b!5186213 (not res!2202992)) b!5186212))

(assert (= (and b!5186212 (not res!2202987)) b!5186206))

(assert (= (and b!5186206 (not res!2202990)) b!5186209))

(assert (= (and b!5186209 (not res!2202985)) b!5186219))

(assert (= (and b!5186219 (not res!2202993)) b!5186205))

(assert (= (and b!5186205 (not res!2202988)) b!5186210))

(assert (= (and b!5186210 (not res!2202989)) b!5186208))

(assert (= (and start!549146 ((_ is ElementMatch!14707) r!7292)) b!5186207))

(assert (= (and start!549146 ((_ is Concat!23552) r!7292)) b!5186220))

(assert (= (and start!549146 ((_ is Star!14707) r!7292)) b!5186218))

(assert (= (and start!549146 ((_ is Union!14707) r!7292)) b!5186216))

(assert (= (and start!549146 condSetEmpty!32680) setIsEmpty!32680))

(assert (= (and start!549146 (not condSetEmpty!32680)) setNonEmpty!32680))

(assert (= setNonEmpty!32680 b!5186217))

(assert (= b!5186221 b!5186211))

(assert (= (and start!549146 ((_ is Cons!60297) zl!343)) b!5186221))

(assert (= (and start!549146 ((_ is Cons!60298) s!2326)) b!5186204))

(declare-fun m!6244516 () Bool)

(assert (=> b!5186215 m!6244516))

(declare-fun m!6244518 () Bool)

(assert (=> b!5186212 m!6244518))

(declare-fun m!6244520 () Bool)

(assert (=> b!5186213 m!6244520))

(declare-fun m!6244522 () Bool)

(assert (=> b!5186213 m!6244522))

(declare-fun m!6244524 () Bool)

(assert (=> b!5186213 m!6244524))

(declare-fun m!6244526 () Bool)

(assert (=> b!5186208 m!6244526))

(declare-fun m!6244528 () Bool)

(assert (=> b!5186208 m!6244528))

(declare-fun m!6244530 () Bool)

(assert (=> b!5186208 m!6244530))

(declare-fun m!6244532 () Bool)

(assert (=> b!5186219 m!6244532))

(assert (=> b!5186219 m!6244532))

(declare-fun m!6244534 () Bool)

(assert (=> b!5186219 m!6244534))

(declare-fun m!6244536 () Bool)

(assert (=> b!5186221 m!6244536))

(declare-fun m!6244538 () Bool)

(assert (=> start!549146 m!6244538))

(declare-fun m!6244540 () Bool)

(assert (=> b!5186210 m!6244540))

(declare-fun m!6244542 () Bool)

(assert (=> b!5186210 m!6244542))

(declare-fun m!6244544 () Bool)

(assert (=> b!5186210 m!6244544))

(declare-fun m!6244546 () Bool)

(assert (=> b!5186210 m!6244546))

(declare-fun m!6244548 () Bool)

(assert (=> b!5186210 m!6244548))

(declare-fun m!6244550 () Bool)

(assert (=> b!5186210 m!6244550))

(declare-fun m!6244552 () Bool)

(assert (=> b!5186214 m!6244552))

(declare-fun m!6244554 () Bool)

(assert (=> b!5186206 m!6244554))

(declare-fun m!6244556 () Bool)

(assert (=> setNonEmpty!32680 m!6244556))

(check-sat (not b!5186218) (not b!5186220) (not b!5186214) (not start!549146) (not b!5186216) (not b!5186206) (not b!5186212) (not b!5186221) (not b!5186213) (not b!5186217) (not b!5186210) (not b!5186204) (not b!5186211) (not b!5186208) tp_is_empty!38667 (not setNonEmpty!32680) (not b!5186215) (not b!5186219))
(check-sat)
