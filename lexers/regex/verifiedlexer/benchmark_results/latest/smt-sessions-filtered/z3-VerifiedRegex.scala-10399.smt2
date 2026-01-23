; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!538432 () Bool)

(assert start!538432)

(declare-fun b!5106326 () Bool)

(declare-fun e!3184806 () Bool)

(declare-fun tp_is_empty!37451 () Bool)

(declare-fun tp!1424443 () Bool)

(assert (=> b!5106326 (= e!3184806 (and tp_is_empty!37451 tp!1424443))))

(declare-fun b!5106327 () Bool)

(declare-fun e!3184803 () Bool)

(declare-fun e!3184807 () Bool)

(assert (=> b!5106327 (= e!3184803 e!3184807)))

(declare-fun res!2173546 () Bool)

(assert (=> b!5106327 (=> (not res!2173546) (not e!3184807))))

(declare-fun lt!2101898 () Int)

(declare-fun lt!2101897 () Int)

(assert (=> b!5106327 (= res!2173546 (>= lt!2101898 lt!2101897))))

(declare-datatypes ((C!28444 0))(
  ( (C!28445 (val!23874 Int)) )
))
(declare-datatypes ((List!59048 0))(
  ( (Nil!58924) (Cons!58924 (h!65372 C!28444) (t!372049 List!59048)) )
))
(declare-fun returnP!41 () List!59048)

(declare-fun size!39395 (List!59048) Int)

(assert (=> b!5106327 (= lt!2101897 (size!39395 returnP!41))))

(declare-fun bigger!41 () List!59048)

(assert (=> b!5106327 (= lt!2101898 (size!39395 bigger!41))))

(declare-fun b!5106328 () Bool)

(declare-fun res!2173542 () Bool)

(assert (=> b!5106328 (=> (not res!2173542) (not e!3184807))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!14089 0))(
  ( (ElementMatch!14089 (c!877139 C!28444)) (Concat!22934 (regOne!28690 Regex!14089) (regTwo!28690 Regex!14089)) (EmptyExpr!14089) (Star!14089 (reg!14418 Regex!14089)) (EmptyLang!14089) (Union!14089 (regOne!28691 Regex!14089) (regTwo!28691 Regex!14089)) )
))
(declare-datatypes ((List!59049 0))(
  ( (Nil!58925) (Cons!58925 (h!65373 Regex!14089) (t!372050 List!59049)) )
))
(declare-datatypes ((Context!6946 0))(
  ( (Context!6947 (exprs!3973 List!59049)) )
))
(declare-fun baseZ!39 () (InoxSet Context!6946))

(declare-fun matchZipper!757 ((InoxSet Context!6946) List!59048) Bool)

(assert (=> b!5106328 (= res!2173542 (matchZipper!757 baseZ!39 bigger!41))))

(declare-fun b!5106329 () Bool)

(declare-fun e!3184805 () Bool)

(declare-fun tp!1424445 () Bool)

(assert (=> b!5106329 (= e!3184805 (and tp_is_empty!37451 tp!1424445))))

(declare-fun setIsEmpty!29386 () Bool)

(declare-fun setRes!29386 () Bool)

(assert (=> setIsEmpty!29386 setRes!29386))

(declare-fun b!5106330 () Bool)

(assert (=> b!5106330 (= e!3184807 false)))

(declare-fun lt!2101896 () Bool)

(declare-fun input!5723 () List!59048)

(declare-fun isPrefix!5494 (List!59048 List!59048) Bool)

(assert (=> b!5106330 (= lt!2101896 (isPrefix!5494 Nil!58924 input!5723))))

(declare-fun b!5106331 () Bool)

(declare-fun res!2173545 () Bool)

(assert (=> b!5106331 (=> (not res!2173545) (not e!3184807))))

(declare-datatypes ((tuple2!63564 0))(
  ( (tuple2!63565 (_1!35085 List!59048) (_2!35085 List!59048)) )
))
(declare-fun findLongestMatchInnerZipper!163 ((InoxSet Context!6946) List!59048 Int List!59048 List!59048 Int) tuple2!63564)

(assert (=> b!5106331 (= res!2173545 (= (_1!35085 (findLongestMatchInnerZipper!163 baseZ!39 Nil!58924 (size!39395 Nil!58924) input!5723 input!5723 (size!39395 input!5723))) returnP!41))))

(declare-fun setNonEmpty!29386 () Bool)

(declare-fun tp!1424441 () Bool)

(declare-fun e!3184804 () Bool)

(declare-fun setElem!29386 () Context!6946)

(declare-fun inv!78403 (Context!6946) Bool)

(assert (=> setNonEmpty!29386 (= setRes!29386 (and tp!1424441 (inv!78403 setElem!29386) e!3184804))))

(declare-fun setRest!29386 () (InoxSet Context!6946))

(assert (=> setNonEmpty!29386 (= baseZ!39 ((_ map or) (store ((as const (Array Context!6946 Bool)) false) setElem!29386 true) setRest!29386))))

(declare-fun res!2173544 () Bool)

(assert (=> start!538432 (=> (not res!2173544) (not e!3184803))))

(assert (=> start!538432 (= res!2173544 (isPrefix!5494 returnP!41 input!5723))))

(assert (=> start!538432 e!3184803))

(assert (=> start!538432 e!3184806))

(assert (=> start!538432 e!3184805))

(declare-fun e!3184802 () Bool)

(assert (=> start!538432 e!3184802))

(declare-fun condSetEmpty!29386 () Bool)

(assert (=> start!538432 (= condSetEmpty!29386 (= baseZ!39 ((as const (Array Context!6946 Bool)) false)))))

(assert (=> start!538432 setRes!29386))

(declare-fun b!5106332 () Bool)

(declare-fun tp!1424442 () Bool)

(assert (=> b!5106332 (= e!3184802 (and tp_is_empty!37451 tp!1424442))))

(declare-fun b!5106333 () Bool)

(declare-fun tp!1424444 () Bool)

(assert (=> b!5106333 (= e!3184804 tp!1424444)))

(declare-fun b!5106334 () Bool)

(declare-fun res!2173543 () Bool)

(assert (=> b!5106334 (=> (not res!2173543) (not e!3184803))))

(assert (=> b!5106334 (= res!2173543 (isPrefix!5494 bigger!41 input!5723))))

(declare-fun b!5106335 () Bool)

(declare-fun res!2173541 () Bool)

(assert (=> b!5106335 (=> (not res!2173541) (not e!3184807))))

(assert (=> b!5106335 (= res!2173541 (not (= lt!2101898 lt!2101897)))))

(assert (= (and start!538432 res!2173544) b!5106334))

(assert (= (and b!5106334 res!2173543) b!5106327))

(assert (= (and b!5106327 res!2173546) b!5106331))

(assert (= (and b!5106331 res!2173545) b!5106335))

(assert (= (and b!5106335 res!2173541) b!5106328))

(assert (= (and b!5106328 res!2173542) b!5106330))

(get-info :version)

(assert (= (and start!538432 ((_ is Cons!58924) returnP!41)) b!5106326))

(assert (= (and start!538432 ((_ is Cons!58924) input!5723)) b!5106329))

(assert (= (and start!538432 ((_ is Cons!58924) bigger!41)) b!5106332))

(assert (= (and start!538432 condSetEmpty!29386) setIsEmpty!29386))

(assert (= (and start!538432 (not condSetEmpty!29386)) setNonEmpty!29386))

(assert (= setNonEmpty!29386 b!5106333))

(declare-fun m!6163618 () Bool)

(assert (=> start!538432 m!6163618))

(declare-fun m!6163620 () Bool)

(assert (=> b!5106328 m!6163620))

(declare-fun m!6163622 () Bool)

(assert (=> setNonEmpty!29386 m!6163622))

(declare-fun m!6163624 () Bool)

(assert (=> b!5106331 m!6163624))

(declare-fun m!6163626 () Bool)

(assert (=> b!5106331 m!6163626))

(assert (=> b!5106331 m!6163624))

(assert (=> b!5106331 m!6163626))

(declare-fun m!6163628 () Bool)

(assert (=> b!5106331 m!6163628))

(declare-fun m!6163630 () Bool)

(assert (=> b!5106334 m!6163630))

(declare-fun m!6163632 () Bool)

(assert (=> b!5106330 m!6163632))

(declare-fun m!6163634 () Bool)

(assert (=> b!5106327 m!6163634))

(declare-fun m!6163636 () Bool)

(assert (=> b!5106327 m!6163636))

(check-sat (not b!5106332) (not b!5106327) (not b!5106333) (not b!5106331) (not b!5106326) (not setNonEmpty!29386) (not start!538432) (not b!5106330) tp_is_empty!37451 (not b!5106334) (not b!5106328) (not b!5106329))
(check-sat)
