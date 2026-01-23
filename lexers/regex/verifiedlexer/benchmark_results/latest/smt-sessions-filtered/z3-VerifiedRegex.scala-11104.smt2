; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!573834 () Bool)

(assert start!573834)

(declare-fun b!5490341 () Bool)

(declare-fun e!3397164 () Bool)

(declare-fun tp!1509512 () Bool)

(assert (=> b!5490341 (= e!3397164 tp!1509512)))

(declare-fun b!5490342 () Bool)

(declare-fun e!3397167 () Bool)

(declare-fun e!3397166 () Bool)

(assert (=> b!5490342 (= e!3397167 (not e!3397166))))

(declare-fun res!2341768 () Bool)

(assert (=> b!5490342 (=> res!2341768 e!3397166)))

(declare-fun e!3397168 () Bool)

(assert (=> b!5490342 (= res!2341768 e!3397168)))

(declare-fun res!2341772 () Bool)

(assert (=> b!5490342 (=> (not res!2341772) (not e!3397168))))

(declare-datatypes ((C!31180 0))(
  ( (C!31181 (val!25292 Int)) )
))
(declare-datatypes ((Regex!15455 0))(
  ( (ElementMatch!15455 (c!958669 C!31180)) (Concat!24300 (regOne!31422 Regex!15455) (regTwo!31422 Regex!15455)) (EmptyExpr!15455) (Star!15455 (reg!15784 Regex!15455)) (EmptyLang!15455) (Union!15455 (regOne!31423 Regex!15455) (regTwo!31423 Regex!15455)) )
))
(declare-datatypes ((List!62664 0))(
  ( (Nil!62540) (Cons!62540 (h!68988 Regex!15455) (t!375895 List!62664)) )
))
(declare-datatypes ((Context!9678 0))(
  ( (Context!9679 (exprs!5339 List!62664)) )
))
(declare-datatypes ((List!62665 0))(
  ( (Nil!62541) (Cons!62541 (h!68989 Context!9678) (t!375896 List!62665)) )
))
(declare-fun zl!343 () List!62665)

(get-info :version)

(assert (=> b!5490342 (= res!2341772 ((_ is Cons!62541) zl!343))))

(declare-fun r!7292 () Regex!15455)

(declare-datatypes ((List!62666 0))(
  ( (Nil!62542) (Cons!62542 (h!68990 C!31180) (t!375897 List!62666)) )
))
(declare-fun s!2326 () List!62666)

(declare-fun matchR!7640 (Regex!15455 List!62666) Bool)

(declare-fun matchRSpec!2558 (Regex!15455 List!62666) Bool)

(assert (=> b!5490342 (= (matchR!7640 r!7292 s!2326) (matchRSpec!2558 r!7292 s!2326))))

(declare-datatypes ((Unit!155370 0))(
  ( (Unit!155371) )
))
(declare-fun lt!2242412 () Unit!155370)

(declare-fun mainMatchTheorem!2558 (Regex!15455 List!62666) Unit!155370)

(assert (=> b!5490342 (= lt!2242412 (mainMatchTheorem!2558 r!7292 s!2326))))

(declare-fun b!5490343 () Bool)

(declare-fun isEmpty!34343 (List!62665) Bool)

(assert (=> b!5490343 (= e!3397168 (isEmpty!34343 (t!375896 zl!343)))))

(declare-fun b!5490344 () Bool)

(declare-fun e!3397163 () Bool)

(declare-fun tp!1509510 () Bool)

(assert (=> b!5490344 (= e!3397163 tp!1509510)))

(declare-fun tp!1509513 () Bool)

(declare-fun setElem!36333 () Context!9678)

(declare-fun setRes!36333 () Bool)

(declare-fun setNonEmpty!36333 () Bool)

(declare-fun e!3397161 () Bool)

(declare-fun inv!81884 (Context!9678) Bool)

(assert (=> setNonEmpty!36333 (= setRes!36333 (and tp!1509513 (inv!81884 setElem!36333) e!3397161))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!9678))

(declare-fun setRest!36333 () (InoxSet Context!9678))

(assert (=> setNonEmpty!36333 (= z!1189 ((_ map or) (store ((as const (Array Context!9678 Bool)) false) setElem!36333 true) setRest!36333))))

(declare-fun b!5490345 () Bool)

(declare-fun tp!1509518 () Bool)

(declare-fun tp!1509511 () Bool)

(assert (=> b!5490345 (= e!3397164 (and tp!1509518 tp!1509511))))

(declare-fun b!5490346 () Bool)

(declare-fun tp!1509515 () Bool)

(assert (=> b!5490346 (= e!3397161 tp!1509515)))

(declare-fun b!5490347 () Bool)

(declare-fun res!2341769 () Bool)

(assert (=> b!5490347 (=> res!2341769 e!3397166)))

(declare-fun isEmptyLang!1057 (Regex!15455) Bool)

(assert (=> b!5490347 (= res!2341769 (not (isEmptyLang!1057 r!7292)))))

(declare-fun tp!1509514 () Bool)

(declare-fun e!3397162 () Bool)

(declare-fun b!5490348 () Bool)

(assert (=> b!5490348 (= e!3397162 (and (inv!81884 (h!68989 zl!343)) e!3397163 tp!1509514))))

(declare-fun b!5490349 () Bool)

(assert (=> b!5490349 (= e!3397166 true)))

(declare-fun matchZipper!1637 ((InoxSet Context!9678) List!62666) Bool)

(assert (=> b!5490349 (not (matchZipper!1637 z!1189 s!2326))))

(declare-fun lt!2242413 () Unit!155370)

(declare-fun lemmaEmptyZipperMatchesNothing!48 ((InoxSet Context!9678) List!62666) Unit!155370)

(assert (=> b!5490349 (= lt!2242413 (lemmaEmptyZipperMatchesNothing!48 z!1189 s!2326))))

(declare-fun b!5490350 () Bool)

(declare-fun res!2341773 () Bool)

(assert (=> b!5490350 (=> (not res!2341773) (not e!3397167))))

(declare-fun toList!9239 ((InoxSet Context!9678)) List!62665)

(assert (=> b!5490350 (= res!2341773 (= (toList!9239 z!1189) zl!343))))

(declare-fun b!5490351 () Bool)

(declare-fun e!3397165 () Bool)

(declare-fun tp_is_empty!40163 () Bool)

(declare-fun tp!1509516 () Bool)

(assert (=> b!5490351 (= e!3397165 (and tp_is_empty!40163 tp!1509516))))

(declare-fun b!5490352 () Bool)

(assert (=> b!5490352 (= e!3397164 tp_is_empty!40163)))

(declare-fun b!5490353 () Bool)

(declare-fun tp!1509519 () Bool)

(declare-fun tp!1509517 () Bool)

(assert (=> b!5490353 (= e!3397164 (and tp!1509519 tp!1509517))))

(declare-fun res!2341770 () Bool)

(assert (=> start!573834 (=> (not res!2341770) (not e!3397167))))

(declare-fun validRegex!7191 (Regex!15455) Bool)

(assert (=> start!573834 (= res!2341770 (validRegex!7191 r!7292))))

(assert (=> start!573834 e!3397167))

(assert (=> start!573834 e!3397164))

(declare-fun condSetEmpty!36333 () Bool)

(assert (=> start!573834 (= condSetEmpty!36333 (= z!1189 ((as const (Array Context!9678 Bool)) false)))))

(assert (=> start!573834 setRes!36333))

(assert (=> start!573834 e!3397162))

(assert (=> start!573834 e!3397165))

(declare-fun setIsEmpty!36333 () Bool)

(assert (=> setIsEmpty!36333 setRes!36333))

(declare-fun b!5490354 () Bool)

(declare-fun res!2341774 () Bool)

(assert (=> b!5490354 (=> res!2341774 e!3397166)))

(assert (=> b!5490354 (= res!2341774 (not (= z!1189 ((as const (Array Context!9678 Bool)) false))))))

(declare-fun b!5490355 () Bool)

(declare-fun res!2341771 () Bool)

(assert (=> b!5490355 (=> res!2341771 e!3397166)))

(assert (=> b!5490355 (= res!2341771 ((_ is Cons!62541) zl!343))))

(declare-fun b!5490356 () Bool)

(declare-fun res!2341767 () Bool)

(assert (=> b!5490356 (=> (not res!2341767) (not e!3397167))))

(declare-fun unfocusZipper!1197 (List!62665) Regex!15455)

(assert (=> b!5490356 (= res!2341767 (= r!7292 (unfocusZipper!1197 zl!343)))))

(assert (= (and start!573834 res!2341770) b!5490350))

(assert (= (and b!5490350 res!2341773) b!5490356))

(assert (= (and b!5490356 res!2341767) b!5490342))

(assert (= (and b!5490342 res!2341772) b!5490343))

(assert (= (and b!5490342 (not res!2341768)) b!5490355))

(assert (= (and b!5490355 (not res!2341771)) b!5490347))

(assert (= (and b!5490347 (not res!2341769)) b!5490354))

(assert (= (and b!5490354 (not res!2341774)) b!5490349))

(assert (= (and start!573834 ((_ is ElementMatch!15455) r!7292)) b!5490352))

(assert (= (and start!573834 ((_ is Concat!24300) r!7292)) b!5490353))

(assert (= (and start!573834 ((_ is Star!15455) r!7292)) b!5490341))

(assert (= (and start!573834 ((_ is Union!15455) r!7292)) b!5490345))

(assert (= (and start!573834 condSetEmpty!36333) setIsEmpty!36333))

(assert (= (and start!573834 (not condSetEmpty!36333)) setNonEmpty!36333))

(assert (= setNonEmpty!36333 b!5490346))

(assert (= b!5490348 b!5490344))

(assert (= (and start!573834 ((_ is Cons!62541) zl!343)) b!5490348))

(assert (= (and start!573834 ((_ is Cons!62542) s!2326)) b!5490351))

(declare-fun m!6503568 () Bool)

(assert (=> b!5490347 m!6503568))

(declare-fun m!6503570 () Bool)

(assert (=> b!5490350 m!6503570))

(declare-fun m!6503572 () Bool)

(assert (=> start!573834 m!6503572))

(declare-fun m!6503574 () Bool)

(assert (=> setNonEmpty!36333 m!6503574))

(declare-fun m!6503576 () Bool)

(assert (=> b!5490356 m!6503576))

(declare-fun m!6503578 () Bool)

(assert (=> b!5490342 m!6503578))

(declare-fun m!6503580 () Bool)

(assert (=> b!5490342 m!6503580))

(declare-fun m!6503582 () Bool)

(assert (=> b!5490342 m!6503582))

(declare-fun m!6503584 () Bool)

(assert (=> b!5490348 m!6503584))

(declare-fun m!6503586 () Bool)

(assert (=> b!5490343 m!6503586))

(declare-fun m!6503588 () Bool)

(assert (=> b!5490349 m!6503588))

(declare-fun m!6503590 () Bool)

(assert (=> b!5490349 m!6503590))

(check-sat (not b!5490350) (not b!5490343) (not b!5490346) (not b!5490341) (not start!573834) (not setNonEmpty!36333) tp_is_empty!40163 (not b!5490349) (not b!5490351) (not b!5490344) (not b!5490342) (not b!5490347) (not b!5490356) (not b!5490353) (not b!5490345) (not b!5490348))
(check-sat)
