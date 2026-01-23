; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!573566 () Bool)

(assert start!573566)

(declare-fun b!5484906 () Bool)

(declare-fun e!3394213 () Bool)

(declare-fun tp_is_empty!40023 () Bool)

(assert (=> b!5484906 (= e!3394213 tp_is_empty!40023)))

(declare-fun res!2338910 () Bool)

(declare-fun e!3394212 () Bool)

(assert (=> start!573566 (=> (not res!2338910) (not e!3394212))))

(declare-datatypes ((C!31040 0))(
  ( (C!31041 (val!25222 Int)) )
))
(declare-datatypes ((Regex!15385 0))(
  ( (ElementMatch!15385 (c!958325 C!31040)) (Concat!24230 (regOne!31282 Regex!15385) (regTwo!31282 Regex!15385)) (EmptyExpr!15385) (Star!15385 (reg!15714 Regex!15385)) (EmptyLang!15385) (Union!15385 (regOne!31283 Regex!15385) (regTwo!31283 Regex!15385)) )
))
(declare-fun r!7292 () Regex!15385)

(declare-fun validRegex!7121 (Regex!15385) Bool)

(assert (=> start!573566 (= res!2338910 (validRegex!7121 r!7292))))

(assert (=> start!573566 e!3394212))

(assert (=> start!573566 e!3394213))

(declare-fun condSetEmpty!36111 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!62454 0))(
  ( (Nil!62330) (Cons!62330 (h!68778 Regex!15385) (t!375685 List!62454)) )
))
(declare-datatypes ((Context!9538 0))(
  ( (Context!9539 (exprs!5269 List!62454)) )
))
(declare-fun z!1189 () (InoxSet Context!9538))

(assert (=> start!573566 (= condSetEmpty!36111 (= z!1189 ((as const (Array Context!9538 Bool)) false)))))

(declare-fun setRes!36111 () Bool)

(assert (=> start!573566 setRes!36111))

(declare-fun e!3394214 () Bool)

(assert (=> start!573566 e!3394214))

(declare-fun e!3394216 () Bool)

(assert (=> start!573566 e!3394216))

(declare-fun b!5484907 () Bool)

(declare-fun e!3394217 () Bool)

(declare-fun tp!1507040 () Bool)

(assert (=> b!5484907 (= e!3394217 tp!1507040)))

(declare-fun b!5484908 () Bool)

(declare-fun tp!1507044 () Bool)

(declare-datatypes ((List!62455 0))(
  ( (Nil!62331) (Cons!62331 (h!68779 Context!9538) (t!375686 List!62455)) )
))
(declare-fun zl!343 () List!62455)

(declare-fun inv!81709 (Context!9538) Bool)

(assert (=> b!5484908 (= e!3394214 (and (inv!81709 (h!68779 zl!343)) e!3394217 tp!1507044))))

(declare-fun b!5484909 () Bool)

(declare-fun tp!1507047 () Bool)

(declare-fun tp!1507042 () Bool)

(assert (=> b!5484909 (= e!3394213 (and tp!1507047 tp!1507042))))

(declare-fun setIsEmpty!36111 () Bool)

(assert (=> setIsEmpty!36111 setRes!36111))

(declare-fun b!5484910 () Bool)

(declare-fun res!2338909 () Bool)

(declare-fun e!3394218 () Bool)

(assert (=> b!5484910 (=> res!2338909 e!3394218)))

(declare-fun isEmpty!34269 (List!62455) Bool)

(assert (=> b!5484910 (= res!2338909 (not (isEmpty!34269 (t!375686 zl!343))))))

(declare-fun b!5484911 () Bool)

(assert (=> b!5484911 (= e!3394218 true)))

(declare-fun lt!2240698 () Regex!15385)

(declare-fun generalisedConcat!1054 (List!62454) Regex!15385)

(assert (=> b!5484911 (= lt!2240698 (generalisedConcat!1054 (exprs!5269 (h!68779 zl!343))))))

(declare-fun b!5484912 () Bool)

(declare-fun e!3394215 () Bool)

(declare-fun tp!1507041 () Bool)

(assert (=> b!5484912 (= e!3394215 tp!1507041)))

(declare-fun b!5484913 () Bool)

(declare-fun tp!1507045 () Bool)

(assert (=> b!5484913 (= e!3394216 (and tp_is_empty!40023 tp!1507045))))

(declare-fun b!5484914 () Bool)

(declare-fun res!2338912 () Bool)

(assert (=> b!5484914 (=> (not res!2338912) (not e!3394212))))

(declare-fun unfocusZipper!1127 (List!62455) Regex!15385)

(assert (=> b!5484914 (= res!2338912 (= r!7292 (unfocusZipper!1127 zl!343)))))

(declare-fun b!5484915 () Bool)

(declare-fun res!2338908 () Bool)

(assert (=> b!5484915 (=> (not res!2338908) (not e!3394212))))

(declare-fun toList!9169 ((InoxSet Context!9538)) List!62455)

(assert (=> b!5484915 (= res!2338908 (= (toList!9169 z!1189) zl!343))))

(declare-fun tp!1507043 () Bool)

(declare-fun setNonEmpty!36111 () Bool)

(declare-fun setElem!36111 () Context!9538)

(assert (=> setNonEmpty!36111 (= setRes!36111 (and tp!1507043 (inv!81709 setElem!36111) e!3394215))))

(declare-fun setRest!36111 () (InoxSet Context!9538))

(assert (=> setNonEmpty!36111 (= z!1189 ((_ map or) (store ((as const (Array Context!9538 Bool)) false) setElem!36111 true) setRest!36111))))

(declare-fun b!5484916 () Bool)

(declare-fun tp!1507038 () Bool)

(declare-fun tp!1507046 () Bool)

(assert (=> b!5484916 (= e!3394213 (and tp!1507038 tp!1507046))))

(declare-fun b!5484917 () Bool)

(assert (=> b!5484917 (= e!3394212 (not e!3394218))))

(declare-fun res!2338911 () Bool)

(assert (=> b!5484917 (=> res!2338911 e!3394218)))

(get-info :version)

(assert (=> b!5484917 (= res!2338911 (not ((_ is Cons!62331) zl!343)))))

(declare-datatypes ((List!62456 0))(
  ( (Nil!62332) (Cons!62332 (h!68780 C!31040) (t!375687 List!62456)) )
))
(declare-fun s!2326 () List!62456)

(declare-fun matchR!7570 (Regex!15385 List!62456) Bool)

(declare-fun matchRSpec!2488 (Regex!15385 List!62456) Bool)

(assert (=> b!5484917 (= (matchR!7570 r!7292 s!2326) (matchRSpec!2488 r!7292 s!2326))))

(declare-datatypes ((Unit!155224 0))(
  ( (Unit!155225) )
))
(declare-fun lt!2240699 () Unit!155224)

(declare-fun mainMatchTheorem!2488 (Regex!15385 List!62456) Unit!155224)

(assert (=> b!5484917 (= lt!2240699 (mainMatchTheorem!2488 r!7292 s!2326))))

(declare-fun b!5484918 () Bool)

(declare-fun tp!1507039 () Bool)

(assert (=> b!5484918 (= e!3394213 tp!1507039)))

(assert (= (and start!573566 res!2338910) b!5484915))

(assert (= (and b!5484915 res!2338908) b!5484914))

(assert (= (and b!5484914 res!2338912) b!5484917))

(assert (= (and b!5484917 (not res!2338911)) b!5484910))

(assert (= (and b!5484910 (not res!2338909)) b!5484911))

(assert (= (and start!573566 ((_ is ElementMatch!15385) r!7292)) b!5484906))

(assert (= (and start!573566 ((_ is Concat!24230) r!7292)) b!5484909))

(assert (= (and start!573566 ((_ is Star!15385) r!7292)) b!5484918))

(assert (= (and start!573566 ((_ is Union!15385) r!7292)) b!5484916))

(assert (= (and start!573566 condSetEmpty!36111) setIsEmpty!36111))

(assert (= (and start!573566 (not condSetEmpty!36111)) setNonEmpty!36111))

(assert (= setNonEmpty!36111 b!5484912))

(assert (= b!5484908 b!5484907))

(assert (= (and start!573566 ((_ is Cons!62331) zl!343)) b!5484908))

(assert (= (and start!573566 ((_ is Cons!62332) s!2326)) b!5484913))

(declare-fun m!6500468 () Bool)

(assert (=> b!5484911 m!6500468))

(declare-fun m!6500470 () Bool)

(assert (=> b!5484917 m!6500470))

(declare-fun m!6500472 () Bool)

(assert (=> b!5484917 m!6500472))

(declare-fun m!6500474 () Bool)

(assert (=> b!5484917 m!6500474))

(declare-fun m!6500476 () Bool)

(assert (=> setNonEmpty!36111 m!6500476))

(declare-fun m!6500478 () Bool)

(assert (=> b!5484910 m!6500478))

(declare-fun m!6500480 () Bool)

(assert (=> start!573566 m!6500480))

(declare-fun m!6500482 () Bool)

(assert (=> b!5484915 m!6500482))

(declare-fun m!6500484 () Bool)

(assert (=> b!5484914 m!6500484))

(declare-fun m!6500486 () Bool)

(assert (=> b!5484908 m!6500486))

(check-sat (not b!5484909) (not setNonEmpty!36111) (not b!5484907) (not b!5484918) tp_is_empty!40023 (not b!5484917) (not b!5484910) (not b!5484913) (not start!573566) (not b!5484914) (not b!5484916) (not b!5484908) (not b!5484915) (not b!5484912) (not b!5484911))
(check-sat)
