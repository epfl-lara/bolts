; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!281124 () Bool)

(assert start!281124)

(declare-fun b!2880447 () Bool)

(declare-fun e!1822409 () Bool)

(declare-fun e!1822411 () Bool)

(assert (=> b!2880447 (= e!1822409 e!1822411)))

(declare-fun res!1193794 () Bool)

(assert (=> b!2880447 (=> res!1193794 e!1822411)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!17684 0))(
  ( (C!17685 (val!10876 Int)) )
))
(declare-datatypes ((Regex!8751 0))(
  ( (ElementMatch!8751 (c!467614 C!17684)) (Concat!14072 (regOne!18014 Regex!8751) (regTwo!18014 Regex!8751)) (EmptyExpr!8751) (Star!8751 (reg!9080 Regex!8751)) (EmptyLang!8751) (Union!8751 (regOne!18015 Regex!8751) (regTwo!18015 Regex!8751)) )
))
(declare-datatypes ((List!34544 0))(
  ( (Nil!34420) (Cons!34420 (h!39840 Regex!8751) (t!233587 List!34544)) )
))
(declare-datatypes ((Context!5422 0))(
  ( (Context!5423 (exprs!3211 List!34544)) )
))
(declare-fun lt!1019587 () (InoxSet Context!5422))

(declare-datatypes ((List!34545 0))(
  ( (Nil!34421) (Cons!34421 (h!39841 C!17684) (t!233588 List!34545)) )
))
(declare-datatypes ((Option!6426 0))(
  ( (None!6425) (Some!6425 (v!34551 List!34545)) )
))
(declare-fun lt!1019584 () Option!6426)

(declare-fun matchZipper!493 ((InoxSet Context!5422) List!34545) Bool)

(assert (=> b!2880447 (= res!1193794 (not (matchZipper!493 lt!1019587 (v!34551 lt!1019584))))))

(declare-fun lt!1019588 () (InoxSet Context!5422))

(declare-fun lt!1019586 () Option!6426)

(assert (=> b!2880447 (matchZipper!493 lt!1019588 (v!34551 lt!1019586))))

(declare-fun lt!1019590 () Context!5422)

(declare-fun c!7184 () Context!5422)

(declare-datatypes ((Unit!48003 0))(
  ( (Unit!48004) )
))
(declare-fun lt!1019585 () Unit!48003)

(declare-datatypes ((List!34546 0))(
  ( (Nil!34422) (Cons!34422 (h!39842 Context!5422) (t!233589 List!34546)) )
))
(declare-fun theoremZipperRegexEquiv!125 ((InoxSet Context!5422) List!34546 Regex!8751 List!34545) Unit!48003)

(assert (=> b!2880447 (= lt!1019585 (theoremZipperRegexEquiv!125 lt!1019588 (Cons!34422 lt!1019590 Nil!34422) (h!39840 (exprs!3211 c!7184)) (v!34551 lt!1019586)))))

(assert (=> b!2880447 (= lt!1019588 (store ((as const (Array Context!5422 Bool)) false) lt!1019590 true))))

(declare-fun lt!1019591 () List!34544)

(assert (=> b!2880447 (= lt!1019590 (Context!5423 lt!1019591))))

(assert (=> b!2880447 (= lt!1019591 (Cons!34420 (h!39840 (exprs!3211 c!7184)) Nil!34420))))

(declare-fun res!1193792 () Bool)

(declare-fun e!1822407 () Bool)

(assert (=> start!281124 (=> (not res!1193792) (not e!1822407))))

(declare-fun lostCause!843 (Context!5422) Bool)

(assert (=> start!281124 (= res!1193792 (not (lostCause!843 c!7184)))))

(assert (=> start!281124 e!1822407))

(declare-fun e!1822410 () Bool)

(declare-fun inv!46464 (Context!5422) Bool)

(assert (=> start!281124 (and (inv!46464 c!7184) e!1822410)))

(declare-fun b!2880448 () Bool)

(declare-fun e!1822408 () Bool)

(declare-fun e!1822406 () Bool)

(assert (=> b!2880448 (= e!1822408 e!1822406)))

(declare-fun res!1193795 () Bool)

(assert (=> b!2880448 (=> (not res!1193795) (not e!1822406))))

(get-info :version)

(assert (=> b!2880448 (= res!1193795 ((_ is Some!6425) lt!1019584))))

(declare-fun lt!1019595 () Context!5422)

(declare-fun getLanguageWitness!453 (Context!5422) Option!6426)

(assert (=> b!2880448 (= lt!1019584 (getLanguageWitness!453 lt!1019595))))

(assert (=> b!2880448 (= lt!1019595 (Context!5423 (t!233587 (exprs!3211 c!7184))))))

(declare-fun b!2880449 () Bool)

(declare-fun tp!924112 () Bool)

(assert (=> b!2880449 (= e!1822410 tp!924112)))

(declare-fun b!2880450 () Bool)

(assert (=> b!2880450 (= e!1822407 e!1822408)))

(declare-fun res!1193797 () Bool)

(assert (=> b!2880450 (=> (not res!1193797) (not e!1822408))))

(assert (=> b!2880450 (= res!1193797 ((_ is Some!6425) lt!1019586))))

(declare-fun getLanguageWitness!454 (Regex!8751) Option!6426)

(assert (=> b!2880450 (= lt!1019586 (getLanguageWitness!454 (h!39840 (exprs!3211 c!7184))))))

(declare-fun b!2880451 () Bool)

(assert (=> b!2880451 (= e!1822406 (not e!1822409))))

(declare-fun res!1193793 () Bool)

(assert (=> b!2880451 (=> res!1193793 e!1822409)))

(declare-fun matchR!3751 (Regex!8751 List!34545) Bool)

(assert (=> b!2880451 (= res!1193793 (not (matchR!3751 (h!39840 (exprs!3211 c!7184)) (v!34551 lt!1019586))))))

(declare-fun get!10353 (Option!6426) List!34545)

(assert (=> b!2880451 (matchZipper!493 lt!1019587 (get!10353 lt!1019584))))

(assert (=> b!2880451 (= lt!1019587 (store ((as const (Array Context!5422 Bool)) false) lt!1019595 true))))

(declare-fun lt!1019589 () Unit!48003)

(declare-fun lemmaGetWitnessMatchesContext!50 (Context!5422) Unit!48003)

(assert (=> b!2880451 (= lt!1019589 (lemmaGetWitnessMatchesContext!50 lt!1019595))))

(assert (=> b!2880451 (matchR!3751 (h!39840 (exprs!3211 c!7184)) (get!10353 lt!1019586))))

(declare-fun lt!1019594 () Unit!48003)

(declare-fun lemmaGetWitnessMatches!58 (Regex!8751) Unit!48003)

(assert (=> b!2880451 (= lt!1019594 (lemmaGetWitnessMatches!58 (h!39840 (exprs!3211 c!7184))))))

(declare-fun b!2880452 () Bool)

(declare-fun res!1193796 () Bool)

(assert (=> b!2880452 (=> (not res!1193796) (not e!1822407))))

(assert (=> b!2880452 (= res!1193796 ((_ is Cons!34420) (exprs!3211 c!7184)))))

(declare-fun b!2880453 () Bool)

(assert (=> b!2880453 (= e!1822411 (matchZipper!493 (store ((as const (Array Context!5422 Bool)) false) c!7184 true) (get!10353 (getLanguageWitness!453 c!7184))))))

(declare-fun ++!8188 (List!34544 List!34544) List!34544)

(declare-fun ++!8189 (List!34545 List!34545) List!34545)

(assert (=> b!2880453 (matchZipper!493 (store ((as const (Array Context!5422 Bool)) false) (Context!5423 (++!8188 lt!1019591 (t!233587 (exprs!3211 c!7184)))) true) (++!8189 (v!34551 lt!1019586) (v!34551 lt!1019584)))))

(declare-fun lt!1019593 () Unit!48003)

(declare-fun lambda!107502 () Int)

(declare-fun lemmaConcatPreservesForall!130 (List!34544 List!34544 Int) Unit!48003)

(assert (=> b!2880453 (= lt!1019593 (lemmaConcatPreservesForall!130 lt!1019591 (t!233587 (exprs!3211 c!7184)) lambda!107502))))

(declare-fun lt!1019592 () Unit!48003)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!4 (Context!5422 Context!5422 List!34545 List!34545) Unit!48003)

(assert (=> b!2880453 (= lt!1019592 (lemmaConcatenateContextMatchesConcatOfStrings!4 lt!1019590 lt!1019595 (v!34551 lt!1019586) (v!34551 lt!1019584)))))

(assert (= (and start!281124 res!1193792) b!2880452))

(assert (= (and b!2880452 res!1193796) b!2880450))

(assert (= (and b!2880450 res!1193797) b!2880448))

(assert (= (and b!2880448 res!1193795) b!2880451))

(assert (= (and b!2880451 (not res!1193793)) b!2880447))

(assert (= (and b!2880447 (not res!1193794)) b!2880453))

(assert (= start!281124 b!2880449))

(declare-fun m!3297643 () Bool)

(assert (=> b!2880447 m!3297643))

(declare-fun m!3297645 () Bool)

(assert (=> b!2880447 m!3297645))

(declare-fun m!3297647 () Bool)

(assert (=> b!2880447 m!3297647))

(declare-fun m!3297649 () Bool)

(assert (=> b!2880447 m!3297649))

(declare-fun m!3297651 () Bool)

(assert (=> b!2880448 m!3297651))

(declare-fun m!3297653 () Bool)

(assert (=> b!2880450 m!3297653))

(declare-fun m!3297655 () Bool)

(assert (=> b!2880453 m!3297655))

(declare-fun m!3297657 () Bool)

(assert (=> b!2880453 m!3297657))

(declare-fun m!3297659 () Bool)

(assert (=> b!2880453 m!3297659))

(declare-fun m!3297661 () Bool)

(assert (=> b!2880453 m!3297661))

(declare-fun m!3297663 () Bool)

(assert (=> b!2880453 m!3297663))

(assert (=> b!2880453 m!3297661))

(assert (=> b!2880453 m!3297657))

(assert (=> b!2880453 m!3297655))

(declare-fun m!3297665 () Bool)

(assert (=> b!2880453 m!3297665))

(declare-fun m!3297667 () Bool)

(assert (=> b!2880453 m!3297667))

(declare-fun m!3297669 () Bool)

(assert (=> b!2880453 m!3297669))

(declare-fun m!3297671 () Bool)

(assert (=> b!2880453 m!3297671))

(assert (=> b!2880453 m!3297669))

(assert (=> b!2880453 m!3297671))

(declare-fun m!3297673 () Bool)

(assert (=> b!2880453 m!3297673))

(declare-fun m!3297675 () Bool)

(assert (=> b!2880451 m!3297675))

(declare-fun m!3297677 () Bool)

(assert (=> b!2880451 m!3297677))

(declare-fun m!3297679 () Bool)

(assert (=> b!2880451 m!3297679))

(assert (=> b!2880451 m!3297679))

(declare-fun m!3297681 () Bool)

(assert (=> b!2880451 m!3297681))

(declare-fun m!3297683 () Bool)

(assert (=> b!2880451 m!3297683))

(declare-fun m!3297685 () Bool)

(assert (=> b!2880451 m!3297685))

(declare-fun m!3297687 () Bool)

(assert (=> b!2880451 m!3297687))

(declare-fun m!3297689 () Bool)

(assert (=> b!2880451 m!3297689))

(assert (=> b!2880451 m!3297687))

(declare-fun m!3297691 () Bool)

(assert (=> start!281124 m!3297691))

(declare-fun m!3297693 () Bool)

(assert (=> start!281124 m!3297693))

(check-sat (not b!2880447) (not b!2880448) (not b!2880449) (not b!2880450) (not b!2880453) (not start!281124) (not b!2880451))
(check-sat)
(get-model)

(declare-fun d!833023 () Bool)

(declare-fun c!467617 () Bool)

(declare-fun isEmpty!18745 (List!34545) Bool)

(assert (=> d!833023 (= c!467617 (isEmpty!18745 (v!34551 lt!1019584)))))

(declare-fun e!1822414 () Bool)

(assert (=> d!833023 (= (matchZipper!493 lt!1019587 (v!34551 lt!1019584)) e!1822414)))

(declare-fun b!2880458 () Bool)

(declare-fun nullableZipper!729 ((InoxSet Context!5422)) Bool)

(assert (=> b!2880458 (= e!1822414 (nullableZipper!729 lt!1019587))))

(declare-fun b!2880459 () Bool)

(declare-fun derivationStepZipper!485 ((InoxSet Context!5422) C!17684) (InoxSet Context!5422))

(declare-fun head!6358 (List!34545) C!17684)

(declare-fun tail!4583 (List!34545) List!34545)

(assert (=> b!2880459 (= e!1822414 (matchZipper!493 (derivationStepZipper!485 lt!1019587 (head!6358 (v!34551 lt!1019584))) (tail!4583 (v!34551 lt!1019584))))))

(assert (= (and d!833023 c!467617) b!2880458))

(assert (= (and d!833023 (not c!467617)) b!2880459))

(declare-fun m!3297701 () Bool)

(assert (=> d!833023 m!3297701))

(declare-fun m!3297703 () Bool)

(assert (=> b!2880458 m!3297703))

(declare-fun m!3297705 () Bool)

(assert (=> b!2880459 m!3297705))

(assert (=> b!2880459 m!3297705))

(declare-fun m!3297707 () Bool)

(assert (=> b!2880459 m!3297707))

(declare-fun m!3297709 () Bool)

(assert (=> b!2880459 m!3297709))

(assert (=> b!2880459 m!3297707))

(assert (=> b!2880459 m!3297709))

(declare-fun m!3297711 () Bool)

(assert (=> b!2880459 m!3297711))

(assert (=> b!2880447 d!833023))

(declare-fun d!833029 () Bool)

(declare-fun c!467618 () Bool)

(assert (=> d!833029 (= c!467618 (isEmpty!18745 (v!34551 lt!1019586)))))

(declare-fun e!1822415 () Bool)

(assert (=> d!833029 (= (matchZipper!493 lt!1019588 (v!34551 lt!1019586)) e!1822415)))

(declare-fun b!2880460 () Bool)

(assert (=> b!2880460 (= e!1822415 (nullableZipper!729 lt!1019588))))

(declare-fun b!2880461 () Bool)

(assert (=> b!2880461 (= e!1822415 (matchZipper!493 (derivationStepZipper!485 lt!1019588 (head!6358 (v!34551 lt!1019586))) (tail!4583 (v!34551 lt!1019586))))))

(assert (= (and d!833029 c!467618) b!2880460))

(assert (= (and d!833029 (not c!467618)) b!2880461))

(declare-fun m!3297713 () Bool)

(assert (=> d!833029 m!3297713))

(declare-fun m!3297715 () Bool)

(assert (=> b!2880460 m!3297715))

(declare-fun m!3297717 () Bool)

(assert (=> b!2880461 m!3297717))

(assert (=> b!2880461 m!3297717))

(declare-fun m!3297719 () Bool)

(assert (=> b!2880461 m!3297719))

(declare-fun m!3297721 () Bool)

(assert (=> b!2880461 m!3297721))

(assert (=> b!2880461 m!3297719))

(assert (=> b!2880461 m!3297721))

(declare-fun m!3297723 () Bool)

(assert (=> b!2880461 m!3297723))

(assert (=> b!2880447 d!833029))

(declare-fun d!833031 () Bool)

(assert (=> d!833031 (= (matchR!3751 (h!39840 (exprs!3211 c!7184)) (v!34551 lt!1019586)) (matchZipper!493 lt!1019588 (v!34551 lt!1019586)))))

(declare-fun lt!1019606 () Unit!48003)

(declare-fun choose!17040 ((InoxSet Context!5422) List!34546 Regex!8751 List!34545) Unit!48003)

(assert (=> d!833031 (= lt!1019606 (choose!17040 lt!1019588 (Cons!34422 lt!1019590 Nil!34422) (h!39840 (exprs!3211 c!7184)) (v!34551 lt!1019586)))))

(declare-fun validRegex!3529 (Regex!8751) Bool)

(assert (=> d!833031 (validRegex!3529 (h!39840 (exprs!3211 c!7184)))))

(assert (=> d!833031 (= (theoremZipperRegexEquiv!125 lt!1019588 (Cons!34422 lt!1019590 Nil!34422) (h!39840 (exprs!3211 c!7184)) (v!34551 lt!1019586)) lt!1019606)))

(declare-fun bs!523373 () Bool)

(assert (= bs!523373 d!833031))

(assert (=> bs!523373 m!3297683))

(assert (=> bs!523373 m!3297645))

(declare-fun m!3297751 () Bool)

(assert (=> bs!523373 m!3297751))

(declare-fun m!3297753 () Bool)

(assert (=> bs!523373 m!3297753))

(assert (=> b!2880447 d!833031))

(declare-fun b!2880549 () Bool)

(declare-fun e!1822465 () Option!6426)

(assert (=> b!2880549 (= e!1822465 (Some!6425 Nil!34421))))

(declare-fun b!2880550 () Bool)

(declare-fun e!1822460 () Option!6426)

(assert (=> b!2880550 (= e!1822460 (Some!6425 (Cons!34421 (c!467614 (h!39840 (exprs!3211 c!7184))) Nil!34421)))))

(declare-fun b!2880551 () Bool)

(declare-fun c!467664 () Bool)

(assert (=> b!2880551 (= c!467664 ((_ is Union!8751) (h!39840 (exprs!3211 c!7184))))))

(declare-fun e!1822464 () Option!6426)

(declare-fun e!1822463 () Option!6426)

(assert (=> b!2880551 (= e!1822464 e!1822463)))

(declare-fun b!2880552 () Bool)

(declare-fun c!467659 () Bool)

(assert (=> b!2880552 (= c!467659 ((_ is ElementMatch!8751) (h!39840 (exprs!3211 c!7184))))))

(declare-fun e!1822466 () Option!6426)

(assert (=> b!2880552 (= e!1822466 e!1822460)))

(declare-fun b!2880553 () Bool)

(declare-fun c!467662 () Bool)

(declare-fun lt!1019631 () Option!6426)

(assert (=> b!2880553 (= c!467662 ((_ is Some!6425) lt!1019631))))

(declare-fun call!186744 () Option!6426)

(assert (=> b!2880553 (= lt!1019631 call!186744)))

(declare-fun e!1822459 () Option!6426)

(declare-fun e!1822461 () Option!6426)

(assert (=> b!2880553 (= e!1822459 e!1822461)))

(declare-fun b!2880554 () Bool)

(assert (=> b!2880554 (= e!1822461 None!6425)))

(declare-fun b!2880555 () Bool)

(declare-fun lt!1019632 () Option!6426)

(assert (=> b!2880555 (= e!1822461 (Some!6425 (++!8189 (v!34551 lt!1019632) (v!34551 lt!1019631))))))

(declare-fun bm!186738 () Bool)

(assert (=> bm!186738 (= call!186744 (getLanguageWitness!454 (ite c!467664 (regTwo!18015 (h!39840 (exprs!3211 c!7184))) (regTwo!18014 (h!39840 (exprs!3211 c!7184))))))))

(declare-fun bm!186739 () Bool)

(declare-fun call!186743 () Option!6426)

(assert (=> bm!186739 (= call!186743 (getLanguageWitness!454 (ite c!467664 (regOne!18015 (h!39840 (exprs!3211 c!7184))) (regOne!18014 (h!39840 (exprs!3211 c!7184))))))))

(declare-fun b!2880556 () Bool)

(assert (=> b!2880556 (= e!1822466 None!6425)))

(declare-fun b!2880548 () Bool)

(assert (=> b!2880548 (= e!1822464 (Some!6425 Nil!34421))))

(declare-fun d!833039 () Bool)

(declare-fun c!467663 () Bool)

(assert (=> d!833039 (= c!467663 ((_ is EmptyExpr!8751) (h!39840 (exprs!3211 c!7184))))))

(assert (=> d!833039 (= (getLanguageWitness!454 (h!39840 (exprs!3211 c!7184))) e!1822465)))

(declare-fun b!2880557 () Bool)

(declare-fun e!1822462 () Option!6426)

(assert (=> b!2880557 (= e!1822462 call!186744)))

(declare-fun b!2880558 () Bool)

(assert (=> b!2880558 (= e!1822463 e!1822459)))

(assert (=> b!2880558 (= lt!1019632 call!186743)))

(declare-fun c!467661 () Bool)

(assert (=> b!2880558 (= c!467661 ((_ is Some!6425) lt!1019632))))

(declare-fun b!2880559 () Bool)

(assert (=> b!2880559 (= e!1822459 None!6425)))

(declare-fun b!2880560 () Bool)

(assert (=> b!2880560 (= e!1822463 e!1822462)))

(declare-fun lt!1019633 () Option!6426)

(assert (=> b!2880560 (= lt!1019633 call!186743)))

(declare-fun c!467658 () Bool)

(assert (=> b!2880560 (= c!467658 ((_ is Some!6425) lt!1019633))))

(declare-fun b!2880561 () Bool)

(assert (=> b!2880561 (= e!1822460 e!1822464)))

(declare-fun c!467657 () Bool)

(assert (=> b!2880561 (= c!467657 ((_ is Star!8751) (h!39840 (exprs!3211 c!7184))))))

(declare-fun b!2880562 () Bool)

(assert (=> b!2880562 (= e!1822465 e!1822466)))

(declare-fun c!467660 () Bool)

(assert (=> b!2880562 (= c!467660 ((_ is EmptyLang!8751) (h!39840 (exprs!3211 c!7184))))))

(declare-fun b!2880563 () Bool)

(assert (=> b!2880563 (= e!1822462 lt!1019633)))

(assert (= (and d!833039 c!467663) b!2880549))

(assert (= (and d!833039 (not c!467663)) b!2880562))

(assert (= (and b!2880562 c!467660) b!2880556))

(assert (= (and b!2880562 (not c!467660)) b!2880552))

(assert (= (and b!2880552 c!467659) b!2880550))

(assert (= (and b!2880552 (not c!467659)) b!2880561))

(assert (= (and b!2880561 c!467657) b!2880548))

(assert (= (and b!2880561 (not c!467657)) b!2880551))

(assert (= (and b!2880551 c!467664) b!2880560))

(assert (= (and b!2880551 (not c!467664)) b!2880558))

(assert (= (and b!2880560 c!467658) b!2880563))

(assert (= (and b!2880560 (not c!467658)) b!2880557))

(assert (= (and b!2880558 c!467661) b!2880553))

(assert (= (and b!2880558 (not c!467661)) b!2880559))

(assert (= (and b!2880553 c!467662) b!2880555))

(assert (= (and b!2880553 (not c!467662)) b!2880554))

(assert (= (or b!2880557 b!2880553) bm!186738))

(assert (= (or b!2880560 b!2880558) bm!186739))

(declare-fun m!3297829 () Bool)

(assert (=> b!2880555 m!3297829))

(declare-fun m!3297831 () Bool)

(assert (=> bm!186738 m!3297831))

(declare-fun m!3297833 () Bool)

(assert (=> bm!186739 m!3297833))

(assert (=> b!2880450 d!833039))

(declare-fun bs!523381 () Bool)

(declare-fun d!833055 () Bool)

(assert (= bs!523381 (and d!833055 b!2880453)))

(declare-fun lambda!107511 () Int)

(assert (=> bs!523381 (not (= lambda!107511 lambda!107502))))

(declare-fun exists!1192 (List!34544 Int) Bool)

(assert (=> d!833055 (= (lostCause!843 c!7184) (exists!1192 (exprs!3211 c!7184) lambda!107511))))

(declare-fun bs!523382 () Bool)

(assert (= bs!523382 d!833055))

(declare-fun m!3297859 () Bool)

(assert (=> bs!523382 m!3297859))

(assert (=> start!281124 d!833055))

(declare-fun bs!523383 () Bool)

(declare-fun d!833063 () Bool)

(assert (= bs!523383 (and d!833063 b!2880453)))

(declare-fun lambda!107514 () Int)

(assert (=> bs!523383 (= lambda!107514 lambda!107502)))

(declare-fun bs!523384 () Bool)

(assert (= bs!523384 (and d!833063 d!833055)))

(assert (=> bs!523384 (not (= lambda!107514 lambda!107511))))

(declare-fun forall!7095 (List!34544 Int) Bool)

(assert (=> d!833063 (= (inv!46464 c!7184) (forall!7095 (exprs!3211 c!7184) lambda!107514))))

(declare-fun bs!523385 () Bool)

(assert (= bs!523385 d!833063))

(declare-fun m!3297861 () Bool)

(assert (=> bs!523385 m!3297861))

(assert (=> start!281124 d!833063))

(declare-fun d!833065 () Bool)

(assert (=> d!833065 (= (get!10353 lt!1019586) (v!34551 lt!1019586))))

(assert (=> b!2880451 d!833065))

(declare-fun d!833067 () Bool)

(assert (=> d!833067 (matchZipper!493 (store ((as const (Array Context!5422 Bool)) false) lt!1019595 true) (get!10353 (getLanguageWitness!453 lt!1019595)))))

(declare-fun lt!1019647 () Unit!48003)

(declare-fun choose!17041 (Context!5422) Unit!48003)

(assert (=> d!833067 (= lt!1019647 (choose!17041 lt!1019595))))

(assert (=> d!833067 (not (lostCause!843 lt!1019595))))

(assert (=> d!833067 (= (lemmaGetWitnessMatchesContext!50 lt!1019595) lt!1019647)))

(declare-fun bs!523395 () Bool)

(assert (= bs!523395 d!833067))

(declare-fun m!3297887 () Bool)

(assert (=> bs!523395 m!3297887))

(declare-fun m!3297889 () Bool)

(assert (=> bs!523395 m!3297889))

(assert (=> bs!523395 m!3297685))

(declare-fun m!3297891 () Bool)

(assert (=> bs!523395 m!3297891))

(declare-fun m!3297893 () Bool)

(assert (=> bs!523395 m!3297893))

(assert (=> bs!523395 m!3297685))

(assert (=> bs!523395 m!3297651))

(assert (=> bs!523395 m!3297651))

(assert (=> bs!523395 m!3297891))

(assert (=> b!2880451 d!833067))

(declare-fun b!2880709 () Bool)

(declare-fun e!1822540 () Bool)

(declare-fun lt!1019662 () Bool)

(declare-fun call!186757 () Bool)

(assert (=> b!2880709 (= e!1822540 (= lt!1019662 call!186757))))

(declare-fun b!2880710 () Bool)

(declare-fun e!1822545 () Bool)

(declare-fun e!1822544 () Bool)

(assert (=> b!2880710 (= e!1822545 e!1822544)))

(declare-fun res!1193858 () Bool)

(assert (=> b!2880710 (=> (not res!1193858) (not e!1822544))))

(assert (=> b!2880710 (= res!1193858 (not lt!1019662))))

(declare-fun b!2880711 () Bool)

(declare-fun res!1193861 () Bool)

(declare-fun e!1822542 () Bool)

(assert (=> b!2880711 (=> (not res!1193861) (not e!1822542))))

(assert (=> b!2880711 (= res!1193861 (isEmpty!18745 (tail!4583 (v!34551 lt!1019586))))))

(declare-fun b!2880712 () Bool)

(declare-fun e!1822543 () Bool)

(declare-fun derivativeStep!2334 (Regex!8751 C!17684) Regex!8751)

(assert (=> b!2880712 (= e!1822543 (matchR!3751 (derivativeStep!2334 (h!39840 (exprs!3211 c!7184)) (head!6358 (v!34551 lt!1019586))) (tail!4583 (v!34551 lt!1019586))))))

(declare-fun d!833081 () Bool)

(assert (=> d!833081 e!1822540))

(declare-fun c!467715 () Bool)

(assert (=> d!833081 (= c!467715 ((_ is EmptyExpr!8751) (h!39840 (exprs!3211 c!7184))))))

(assert (=> d!833081 (= lt!1019662 e!1822543)))

(declare-fun c!467714 () Bool)

(assert (=> d!833081 (= c!467714 (isEmpty!18745 (v!34551 lt!1019586)))))

(assert (=> d!833081 (validRegex!3529 (h!39840 (exprs!3211 c!7184)))))

(assert (=> d!833081 (= (matchR!3751 (h!39840 (exprs!3211 c!7184)) (v!34551 lt!1019586)) lt!1019662)))

(declare-fun bm!186752 () Bool)

(assert (=> bm!186752 (= call!186757 (isEmpty!18745 (v!34551 lt!1019586)))))

(declare-fun b!2880713 () Bool)

(assert (=> b!2880713 (= e!1822542 (= (head!6358 (v!34551 lt!1019586)) (c!467614 (h!39840 (exprs!3211 c!7184)))))))

(declare-fun b!2880714 () Bool)

(declare-fun e!1822546 () Bool)

(assert (=> b!2880714 (= e!1822546 (not lt!1019662))))

(declare-fun b!2880715 () Bool)

(declare-fun res!1193863 () Bool)

(declare-fun e!1822541 () Bool)

(assert (=> b!2880715 (=> res!1193863 e!1822541)))

(assert (=> b!2880715 (= res!1193863 (not (isEmpty!18745 (tail!4583 (v!34551 lt!1019586)))))))

(declare-fun b!2880716 () Bool)

(assert (=> b!2880716 (= e!1822541 (not (= (head!6358 (v!34551 lt!1019586)) (c!467614 (h!39840 (exprs!3211 c!7184))))))))

(declare-fun b!2880717 () Bool)

(assert (=> b!2880717 (= e!1822544 e!1822541)))

(declare-fun res!1193860 () Bool)

(assert (=> b!2880717 (=> res!1193860 e!1822541)))

(assert (=> b!2880717 (= res!1193860 call!186757)))

(declare-fun b!2880718 () Bool)

(declare-fun nullable!2701 (Regex!8751) Bool)

(assert (=> b!2880718 (= e!1822543 (nullable!2701 (h!39840 (exprs!3211 c!7184))))))

(declare-fun b!2880719 () Bool)

(declare-fun res!1193864 () Bool)

(assert (=> b!2880719 (=> res!1193864 e!1822545)))

(assert (=> b!2880719 (= res!1193864 e!1822542)))

(declare-fun res!1193859 () Bool)

(assert (=> b!2880719 (=> (not res!1193859) (not e!1822542))))

(assert (=> b!2880719 (= res!1193859 lt!1019662)))

(declare-fun b!2880720 () Bool)

(declare-fun res!1193865 () Bool)

(assert (=> b!2880720 (=> res!1193865 e!1822545)))

(assert (=> b!2880720 (= res!1193865 (not ((_ is ElementMatch!8751) (h!39840 (exprs!3211 c!7184)))))))

(assert (=> b!2880720 (= e!1822546 e!1822545)))

(declare-fun b!2880721 () Bool)

(assert (=> b!2880721 (= e!1822540 e!1822546)))

(declare-fun c!467713 () Bool)

(assert (=> b!2880721 (= c!467713 ((_ is EmptyLang!8751) (h!39840 (exprs!3211 c!7184))))))

(declare-fun b!2880722 () Bool)

(declare-fun res!1193862 () Bool)

(assert (=> b!2880722 (=> (not res!1193862) (not e!1822542))))

(assert (=> b!2880722 (= res!1193862 (not call!186757))))

(assert (= (and d!833081 c!467714) b!2880718))

(assert (= (and d!833081 (not c!467714)) b!2880712))

(assert (= (and d!833081 c!467715) b!2880709))

(assert (= (and d!833081 (not c!467715)) b!2880721))

(assert (= (and b!2880721 c!467713) b!2880714))

(assert (= (and b!2880721 (not c!467713)) b!2880720))

(assert (= (and b!2880720 (not res!1193865)) b!2880719))

(assert (= (and b!2880719 res!1193859) b!2880722))

(assert (= (and b!2880722 res!1193862) b!2880711))

(assert (= (and b!2880711 res!1193861) b!2880713))

(assert (= (and b!2880719 (not res!1193864)) b!2880710))

(assert (= (and b!2880710 res!1193858) b!2880717))

(assert (= (and b!2880717 (not res!1193860)) b!2880715))

(assert (= (and b!2880715 (not res!1193863)) b!2880716))

(assert (= (or b!2880709 b!2880717 b!2880722) bm!186752))

(assert (=> bm!186752 m!3297713))

(assert (=> b!2880713 m!3297717))

(assert (=> b!2880716 m!3297717))

(assert (=> b!2880715 m!3297721))

(assert (=> b!2880715 m!3297721))

(declare-fun m!3297911 () Bool)

(assert (=> b!2880715 m!3297911))

(assert (=> d!833081 m!3297713))

(assert (=> d!833081 m!3297753))

(assert (=> b!2880712 m!3297717))

(assert (=> b!2880712 m!3297717))

(declare-fun m!3297913 () Bool)

(assert (=> b!2880712 m!3297913))

(assert (=> b!2880712 m!3297721))

(assert (=> b!2880712 m!3297913))

(assert (=> b!2880712 m!3297721))

(declare-fun m!3297915 () Bool)

(assert (=> b!2880712 m!3297915))

(assert (=> b!2880711 m!3297721))

(assert (=> b!2880711 m!3297721))

(assert (=> b!2880711 m!3297911))

(declare-fun m!3297917 () Bool)

(assert (=> b!2880718 m!3297917))

(assert (=> b!2880451 d!833081))

(declare-fun d!833085 () Bool)

(assert (=> d!833085 (matchR!3751 (h!39840 (exprs!3211 c!7184)) (get!10353 (getLanguageWitness!454 (h!39840 (exprs!3211 c!7184)))))))

(declare-fun lt!1019665 () Unit!48003)

(declare-fun choose!17042 (Regex!8751) Unit!48003)

(assert (=> d!833085 (= lt!1019665 (choose!17042 (h!39840 (exprs!3211 c!7184))))))

(assert (=> d!833085 (validRegex!3529 (h!39840 (exprs!3211 c!7184)))))

(assert (=> d!833085 (= (lemmaGetWitnessMatches!58 (h!39840 (exprs!3211 c!7184))) lt!1019665)))

(declare-fun bs!523401 () Bool)

(assert (= bs!523401 d!833085))

(assert (=> bs!523401 m!3297653))

(declare-fun m!3297919 () Bool)

(assert (=> bs!523401 m!3297919))

(declare-fun m!3297921 () Bool)

(assert (=> bs!523401 m!3297921))

(assert (=> bs!523401 m!3297753))

(assert (=> bs!523401 m!3297653))

(assert (=> bs!523401 m!3297919))

(declare-fun m!3297923 () Bool)

(assert (=> bs!523401 m!3297923))

(assert (=> b!2880451 d!833085))

(declare-fun d!833087 () Bool)

(declare-fun c!467716 () Bool)

(assert (=> d!833087 (= c!467716 (isEmpty!18745 (get!10353 lt!1019584)))))

(declare-fun e!1822547 () Bool)

(assert (=> d!833087 (= (matchZipper!493 lt!1019587 (get!10353 lt!1019584)) e!1822547)))

(declare-fun b!2880723 () Bool)

(assert (=> b!2880723 (= e!1822547 (nullableZipper!729 lt!1019587))))

(declare-fun b!2880724 () Bool)

(assert (=> b!2880724 (= e!1822547 (matchZipper!493 (derivationStepZipper!485 lt!1019587 (head!6358 (get!10353 lt!1019584))) (tail!4583 (get!10353 lt!1019584))))))

(assert (= (and d!833087 c!467716) b!2880723))

(assert (= (and d!833087 (not c!467716)) b!2880724))

(assert (=> d!833087 m!3297687))

(declare-fun m!3297925 () Bool)

(assert (=> d!833087 m!3297925))

(assert (=> b!2880723 m!3297703))

(assert (=> b!2880724 m!3297687))

(declare-fun m!3297927 () Bool)

(assert (=> b!2880724 m!3297927))

(assert (=> b!2880724 m!3297927))

(declare-fun m!3297929 () Bool)

(assert (=> b!2880724 m!3297929))

(assert (=> b!2880724 m!3297687))

(declare-fun m!3297931 () Bool)

(assert (=> b!2880724 m!3297931))

(assert (=> b!2880724 m!3297929))

(assert (=> b!2880724 m!3297931))

(declare-fun m!3297933 () Bool)

(assert (=> b!2880724 m!3297933))

(assert (=> b!2880451 d!833087))

(declare-fun d!833089 () Bool)

(assert (=> d!833089 (= (get!10353 lt!1019584) (v!34551 lt!1019584))))

(assert (=> b!2880451 d!833089))

(declare-fun b!2880725 () Bool)

(declare-fun e!1822548 () Bool)

(declare-fun lt!1019666 () Bool)

(declare-fun call!186758 () Bool)

(assert (=> b!2880725 (= e!1822548 (= lt!1019666 call!186758))))

(declare-fun b!2880726 () Bool)

(declare-fun e!1822553 () Bool)

(declare-fun e!1822552 () Bool)

(assert (=> b!2880726 (= e!1822553 e!1822552)))

(declare-fun res!1193866 () Bool)

(assert (=> b!2880726 (=> (not res!1193866) (not e!1822552))))

(assert (=> b!2880726 (= res!1193866 (not lt!1019666))))

(declare-fun b!2880727 () Bool)

(declare-fun res!1193869 () Bool)

(declare-fun e!1822550 () Bool)

(assert (=> b!2880727 (=> (not res!1193869) (not e!1822550))))

(assert (=> b!2880727 (= res!1193869 (isEmpty!18745 (tail!4583 (get!10353 lt!1019586))))))

(declare-fun b!2880728 () Bool)

(declare-fun e!1822551 () Bool)

(assert (=> b!2880728 (= e!1822551 (matchR!3751 (derivativeStep!2334 (h!39840 (exprs!3211 c!7184)) (head!6358 (get!10353 lt!1019586))) (tail!4583 (get!10353 lt!1019586))))))

(declare-fun d!833091 () Bool)

(assert (=> d!833091 e!1822548))

(declare-fun c!467719 () Bool)

(assert (=> d!833091 (= c!467719 ((_ is EmptyExpr!8751) (h!39840 (exprs!3211 c!7184))))))

(assert (=> d!833091 (= lt!1019666 e!1822551)))

(declare-fun c!467718 () Bool)

(assert (=> d!833091 (= c!467718 (isEmpty!18745 (get!10353 lt!1019586)))))

(assert (=> d!833091 (validRegex!3529 (h!39840 (exprs!3211 c!7184)))))

(assert (=> d!833091 (= (matchR!3751 (h!39840 (exprs!3211 c!7184)) (get!10353 lt!1019586)) lt!1019666)))

(declare-fun bm!186753 () Bool)

(assert (=> bm!186753 (= call!186758 (isEmpty!18745 (get!10353 lt!1019586)))))

(declare-fun b!2880729 () Bool)

(assert (=> b!2880729 (= e!1822550 (= (head!6358 (get!10353 lt!1019586)) (c!467614 (h!39840 (exprs!3211 c!7184)))))))

(declare-fun b!2880730 () Bool)

(declare-fun e!1822554 () Bool)

(assert (=> b!2880730 (= e!1822554 (not lt!1019666))))

(declare-fun b!2880731 () Bool)

(declare-fun res!1193871 () Bool)

(declare-fun e!1822549 () Bool)

(assert (=> b!2880731 (=> res!1193871 e!1822549)))

(assert (=> b!2880731 (= res!1193871 (not (isEmpty!18745 (tail!4583 (get!10353 lt!1019586)))))))

(declare-fun b!2880732 () Bool)

(assert (=> b!2880732 (= e!1822549 (not (= (head!6358 (get!10353 lt!1019586)) (c!467614 (h!39840 (exprs!3211 c!7184))))))))

(declare-fun b!2880733 () Bool)

(assert (=> b!2880733 (= e!1822552 e!1822549)))

(declare-fun res!1193868 () Bool)

(assert (=> b!2880733 (=> res!1193868 e!1822549)))

(assert (=> b!2880733 (= res!1193868 call!186758)))

(declare-fun b!2880734 () Bool)

(assert (=> b!2880734 (= e!1822551 (nullable!2701 (h!39840 (exprs!3211 c!7184))))))

(declare-fun b!2880735 () Bool)

(declare-fun res!1193872 () Bool)

(assert (=> b!2880735 (=> res!1193872 e!1822553)))

(assert (=> b!2880735 (= res!1193872 e!1822550)))

(declare-fun res!1193867 () Bool)

(assert (=> b!2880735 (=> (not res!1193867) (not e!1822550))))

(assert (=> b!2880735 (= res!1193867 lt!1019666)))

(declare-fun b!2880736 () Bool)

(declare-fun res!1193873 () Bool)

(assert (=> b!2880736 (=> res!1193873 e!1822553)))

(assert (=> b!2880736 (= res!1193873 (not ((_ is ElementMatch!8751) (h!39840 (exprs!3211 c!7184)))))))

(assert (=> b!2880736 (= e!1822554 e!1822553)))

(declare-fun b!2880737 () Bool)

(assert (=> b!2880737 (= e!1822548 e!1822554)))

(declare-fun c!467717 () Bool)

(assert (=> b!2880737 (= c!467717 ((_ is EmptyLang!8751) (h!39840 (exprs!3211 c!7184))))))

(declare-fun b!2880738 () Bool)

(declare-fun res!1193870 () Bool)

(assert (=> b!2880738 (=> (not res!1193870) (not e!1822550))))

(assert (=> b!2880738 (= res!1193870 (not call!186758))))

(assert (= (and d!833091 c!467718) b!2880734))

(assert (= (and d!833091 (not c!467718)) b!2880728))

(assert (= (and d!833091 c!467719) b!2880725))

(assert (= (and d!833091 (not c!467719)) b!2880737))

(assert (= (and b!2880737 c!467717) b!2880730))

(assert (= (and b!2880737 (not c!467717)) b!2880736))

(assert (= (and b!2880736 (not res!1193873)) b!2880735))

(assert (= (and b!2880735 res!1193867) b!2880738))

(assert (= (and b!2880738 res!1193870) b!2880727))

(assert (= (and b!2880727 res!1193869) b!2880729))

(assert (= (and b!2880735 (not res!1193872)) b!2880726))

(assert (= (and b!2880726 res!1193866) b!2880733))

(assert (= (and b!2880733 (not res!1193868)) b!2880731))

(assert (= (and b!2880731 (not res!1193871)) b!2880732))

(assert (= (or b!2880725 b!2880733 b!2880738) bm!186753))

(assert (=> bm!186753 m!3297679))

(declare-fun m!3297935 () Bool)

(assert (=> bm!186753 m!3297935))

(assert (=> b!2880729 m!3297679))

(declare-fun m!3297937 () Bool)

(assert (=> b!2880729 m!3297937))

(assert (=> b!2880732 m!3297679))

(assert (=> b!2880732 m!3297937))

(assert (=> b!2880731 m!3297679))

(declare-fun m!3297939 () Bool)

(assert (=> b!2880731 m!3297939))

(assert (=> b!2880731 m!3297939))

(declare-fun m!3297941 () Bool)

(assert (=> b!2880731 m!3297941))

(assert (=> d!833091 m!3297679))

(assert (=> d!833091 m!3297935))

(assert (=> d!833091 m!3297753))

(assert (=> b!2880728 m!3297679))

(assert (=> b!2880728 m!3297937))

(assert (=> b!2880728 m!3297937))

(declare-fun m!3297943 () Bool)

(assert (=> b!2880728 m!3297943))

(assert (=> b!2880728 m!3297679))

(assert (=> b!2880728 m!3297939))

(assert (=> b!2880728 m!3297943))

(assert (=> b!2880728 m!3297939))

(declare-fun m!3297945 () Bool)

(assert (=> b!2880728 m!3297945))

(assert (=> b!2880727 m!3297679))

(assert (=> b!2880727 m!3297939))

(assert (=> b!2880727 m!3297939))

(assert (=> b!2880727 m!3297941))

(assert (=> b!2880734 m!3297917))

(assert (=> b!2880451 d!833091))

(declare-fun d!833093 () Bool)

(assert (=> d!833093 (forall!7095 (++!8188 lt!1019591 (t!233587 (exprs!3211 c!7184))) lambda!107502)))

(declare-fun lt!1019669 () Unit!48003)

(declare-fun choose!17043 (List!34544 List!34544 Int) Unit!48003)

(assert (=> d!833093 (= lt!1019669 (choose!17043 lt!1019591 (t!233587 (exprs!3211 c!7184)) lambda!107502))))

(assert (=> d!833093 (forall!7095 lt!1019591 lambda!107502)))

(assert (=> d!833093 (= (lemmaConcatPreservesForall!130 lt!1019591 (t!233587 (exprs!3211 c!7184)) lambda!107502) lt!1019669)))

(declare-fun bs!523402 () Bool)

(assert (= bs!523402 d!833093))

(assert (=> bs!523402 m!3297663))

(assert (=> bs!523402 m!3297663))

(declare-fun m!3297947 () Bool)

(assert (=> bs!523402 m!3297947))

(declare-fun m!3297949 () Bool)

(assert (=> bs!523402 m!3297949))

(declare-fun m!3297951 () Bool)

(assert (=> bs!523402 m!3297951))

(assert (=> b!2880453 d!833093))

(declare-fun b!2880747 () Bool)

(declare-fun e!1822559 () List!34545)

(assert (=> b!2880747 (= e!1822559 (v!34551 lt!1019584))))

(declare-fun b!2880748 () Bool)

(assert (=> b!2880748 (= e!1822559 (Cons!34421 (h!39841 (v!34551 lt!1019586)) (++!8189 (t!233588 (v!34551 lt!1019586)) (v!34551 lt!1019584))))))

(declare-fun lt!1019672 () List!34545)

(declare-fun b!2880750 () Bool)

(declare-fun e!1822560 () Bool)

(assert (=> b!2880750 (= e!1822560 (or (not (= (v!34551 lt!1019584) Nil!34421)) (= lt!1019672 (v!34551 lt!1019586))))))

(declare-fun b!2880749 () Bool)

(declare-fun res!1193878 () Bool)

(assert (=> b!2880749 (=> (not res!1193878) (not e!1822560))))

(declare-fun size!26335 (List!34545) Int)

(assert (=> b!2880749 (= res!1193878 (= (size!26335 lt!1019672) (+ (size!26335 (v!34551 lt!1019586)) (size!26335 (v!34551 lt!1019584)))))))

(declare-fun d!833095 () Bool)

(assert (=> d!833095 e!1822560))

(declare-fun res!1193879 () Bool)

(assert (=> d!833095 (=> (not res!1193879) (not e!1822560))))

(declare-fun content!4716 (List!34545) (InoxSet C!17684))

(assert (=> d!833095 (= res!1193879 (= (content!4716 lt!1019672) ((_ map or) (content!4716 (v!34551 lt!1019586)) (content!4716 (v!34551 lt!1019584)))))))

(assert (=> d!833095 (= lt!1019672 e!1822559)))

(declare-fun c!467722 () Bool)

(assert (=> d!833095 (= c!467722 ((_ is Nil!34421) (v!34551 lt!1019586)))))

(assert (=> d!833095 (= (++!8189 (v!34551 lt!1019586) (v!34551 lt!1019584)) lt!1019672)))

(assert (= (and d!833095 c!467722) b!2880747))

(assert (= (and d!833095 (not c!467722)) b!2880748))

(assert (= (and d!833095 res!1193879) b!2880749))

(assert (= (and b!2880749 res!1193878) b!2880750))

(declare-fun m!3297953 () Bool)

(assert (=> b!2880748 m!3297953))

(declare-fun m!3297955 () Bool)

(assert (=> b!2880749 m!3297955))

(declare-fun m!3297957 () Bool)

(assert (=> b!2880749 m!3297957))

(declare-fun m!3297959 () Bool)

(assert (=> b!2880749 m!3297959))

(declare-fun m!3297961 () Bool)

(assert (=> d!833095 m!3297961))

(declare-fun m!3297963 () Bool)

(assert (=> d!833095 m!3297963))

(declare-fun m!3297965 () Bool)

(assert (=> d!833095 m!3297965))

(assert (=> b!2880453 d!833095))

(declare-fun d!833097 () Bool)

(assert (=> d!833097 (= (get!10353 (getLanguageWitness!453 c!7184)) (v!34551 (getLanguageWitness!453 c!7184)))))

(assert (=> b!2880453 d!833097))

(declare-fun bs!523403 () Bool)

(declare-fun d!833099 () Bool)

(assert (= bs!523403 (and d!833099 b!2880453)))

(declare-fun lambda!107524 () Int)

(assert (=> bs!523403 (= lambda!107524 lambda!107502)))

(declare-fun bs!523404 () Bool)

(assert (= bs!523404 (and d!833099 d!833055)))

(assert (=> bs!523404 (not (= lambda!107524 lambda!107511))))

(declare-fun bs!523405 () Bool)

(assert (= bs!523405 (and d!833099 d!833063)))

(assert (=> bs!523405 (= lambda!107524 lambda!107514)))

(assert (=> d!833099 (matchZipper!493 (store ((as const (Array Context!5422 Bool)) false) (Context!5423 (++!8188 (exprs!3211 lt!1019590) (exprs!3211 lt!1019595))) true) (++!8189 (v!34551 lt!1019586) (v!34551 lt!1019584)))))

(declare-fun lt!1019678 () Unit!48003)

(assert (=> d!833099 (= lt!1019678 (lemmaConcatPreservesForall!130 (exprs!3211 lt!1019590) (exprs!3211 lt!1019595) lambda!107524))))

(declare-fun lt!1019677 () Unit!48003)

(declare-fun choose!17044 (Context!5422 Context!5422 List!34545 List!34545) Unit!48003)

(assert (=> d!833099 (= lt!1019677 (choose!17044 lt!1019590 lt!1019595 (v!34551 lt!1019586) (v!34551 lt!1019584)))))

(assert (=> d!833099 (matchZipper!493 (store ((as const (Array Context!5422 Bool)) false) lt!1019590 true) (v!34551 lt!1019586))))

(assert (=> d!833099 (= (lemmaConcatenateContextMatchesConcatOfStrings!4 lt!1019590 lt!1019595 (v!34551 lt!1019586) (v!34551 lt!1019584)) lt!1019677)))

(declare-fun bs!523406 () Bool)

(assert (= bs!523406 d!833099))

(declare-fun m!3297967 () Bool)

(assert (=> bs!523406 m!3297967))

(assert (=> bs!523406 m!3297671))

(declare-fun m!3297969 () Bool)

(assert (=> bs!523406 m!3297969))

(declare-fun m!3297971 () Bool)

(assert (=> bs!523406 m!3297971))

(assert (=> bs!523406 m!3297649))

(declare-fun m!3297973 () Bool)

(assert (=> bs!523406 m!3297973))

(assert (=> bs!523406 m!3297671))

(declare-fun m!3297975 () Bool)

(assert (=> bs!523406 m!3297975))

(assert (=> bs!523406 m!3297649))

(declare-fun m!3297977 () Bool)

(assert (=> bs!523406 m!3297977))

(assert (=> bs!523406 m!3297973))

(assert (=> b!2880453 d!833099))

(declare-fun bs!523407 () Bool)

(declare-fun d!833101 () Bool)

(assert (= bs!523407 (and d!833101 b!2880453)))

(declare-fun lambda!107527 () Int)

(assert (=> bs!523407 (not (= lambda!107527 lambda!107502))))

(declare-fun bs!523408 () Bool)

(assert (= bs!523408 (and d!833101 d!833055)))

(assert (=> bs!523408 (= lambda!107527 lambda!107511)))

(declare-fun bs!523409 () Bool)

(assert (= bs!523409 (and d!833101 d!833063)))

(assert (=> bs!523409 (not (= lambda!107527 lambda!107514))))

(declare-fun bs!523410 () Bool)

(assert (= bs!523410 (and d!833101 d!833099)))

(assert (=> bs!523410 (not (= lambda!107527 lambda!107524))))

(declare-fun b!2880763 () Bool)

(declare-fun e!1822568 () Option!6426)

(declare-fun lt!1019685 () Option!6426)

(declare-fun lt!1019687 () Option!6426)

(assert (=> b!2880763 (= e!1822568 (Some!6425 (++!8189 (v!34551 lt!1019685) (v!34551 lt!1019687))))))

(declare-fun b!2880764 () Bool)

(declare-fun e!1822567 () Option!6426)

(assert (=> b!2880764 (= e!1822567 None!6425)))

(declare-fun lt!1019686 () Option!6426)

(declare-fun isEmpty!18746 (Option!6426) Bool)

(assert (=> d!833101 (= (isEmpty!18746 lt!1019686) (exists!1192 (exprs!3211 c!7184) lambda!107527))))

(declare-fun e!1822569 () Option!6426)

(assert (=> d!833101 (= lt!1019686 e!1822569)))

(declare-fun c!467731 () Bool)

(assert (=> d!833101 (= c!467731 ((_ is Cons!34420) (exprs!3211 c!7184)))))

(assert (=> d!833101 (= (getLanguageWitness!453 c!7184) lt!1019686)))

(declare-fun b!2880765 () Bool)

(declare-fun c!467732 () Bool)

(assert (=> b!2880765 (= c!467732 ((_ is Some!6425) lt!1019687))))

(assert (=> b!2880765 (= lt!1019687 (getLanguageWitness!453 (Context!5423 (t!233587 (exprs!3211 c!7184)))))))

(assert (=> b!2880765 (= e!1822567 e!1822568)))

(declare-fun b!2880766 () Bool)

(assert (=> b!2880766 (= e!1822569 (Some!6425 Nil!34421))))

(declare-fun b!2880767 () Bool)

(assert (=> b!2880767 (= e!1822569 e!1822567)))

(assert (=> b!2880767 (= lt!1019685 (getLanguageWitness!454 (h!39840 (exprs!3211 c!7184))))))

(declare-fun c!467730 () Bool)

(assert (=> b!2880767 (= c!467730 ((_ is Some!6425) lt!1019685))))

(declare-fun b!2880768 () Bool)

(assert (=> b!2880768 (= e!1822568 None!6425)))

(assert (= (and d!833101 c!467731) b!2880767))

(assert (= (and d!833101 (not c!467731)) b!2880766))

(assert (= (and b!2880767 c!467730) b!2880765))

(assert (= (and b!2880767 (not c!467730)) b!2880764))

(assert (= (and b!2880765 c!467732) b!2880763))

(assert (= (and b!2880765 (not c!467732)) b!2880768))

(declare-fun m!3297979 () Bool)

(assert (=> b!2880763 m!3297979))

(declare-fun m!3297981 () Bool)

(assert (=> d!833101 m!3297981))

(declare-fun m!3297983 () Bool)

(assert (=> d!833101 m!3297983))

(declare-fun m!3297985 () Bool)

(assert (=> b!2880765 m!3297985))

(assert (=> b!2880767 m!3297653))

(assert (=> b!2880453 d!833101))

(declare-fun d!833103 () Bool)

(declare-fun c!467733 () Bool)

(assert (=> d!833103 (= c!467733 (isEmpty!18745 (++!8189 (v!34551 lt!1019586) (v!34551 lt!1019584))))))

(declare-fun e!1822570 () Bool)

(assert (=> d!833103 (= (matchZipper!493 (store ((as const (Array Context!5422 Bool)) false) (Context!5423 (++!8188 lt!1019591 (t!233587 (exprs!3211 c!7184)))) true) (++!8189 (v!34551 lt!1019586) (v!34551 lt!1019584))) e!1822570)))

(declare-fun b!2880769 () Bool)

(assert (=> b!2880769 (= e!1822570 (nullableZipper!729 (store ((as const (Array Context!5422 Bool)) false) (Context!5423 (++!8188 lt!1019591 (t!233587 (exprs!3211 c!7184)))) true)))))

(declare-fun b!2880770 () Bool)

(assert (=> b!2880770 (= e!1822570 (matchZipper!493 (derivationStepZipper!485 (store ((as const (Array Context!5422 Bool)) false) (Context!5423 (++!8188 lt!1019591 (t!233587 (exprs!3211 c!7184)))) true) (head!6358 (++!8189 (v!34551 lt!1019586) (v!34551 lt!1019584)))) (tail!4583 (++!8189 (v!34551 lt!1019586) (v!34551 lt!1019584)))))))

(assert (= (and d!833103 c!467733) b!2880769))

(assert (= (and d!833103 (not c!467733)) b!2880770))

(assert (=> d!833103 m!3297671))

(declare-fun m!3297987 () Bool)

(assert (=> d!833103 m!3297987))

(assert (=> b!2880769 m!3297669))

(declare-fun m!3297989 () Bool)

(assert (=> b!2880769 m!3297989))

(assert (=> b!2880770 m!3297671))

(declare-fun m!3297991 () Bool)

(assert (=> b!2880770 m!3297991))

(assert (=> b!2880770 m!3297669))

(assert (=> b!2880770 m!3297991))

(declare-fun m!3297993 () Bool)

(assert (=> b!2880770 m!3297993))

(assert (=> b!2880770 m!3297671))

(declare-fun m!3297995 () Bool)

(assert (=> b!2880770 m!3297995))

(assert (=> b!2880770 m!3297993))

(assert (=> b!2880770 m!3297995))

(declare-fun m!3297997 () Bool)

(assert (=> b!2880770 m!3297997))

(assert (=> b!2880453 d!833103))

(declare-fun b!2880780 () Bool)

(declare-fun e!1822575 () List!34544)

(assert (=> b!2880780 (= e!1822575 (Cons!34420 (h!39840 lt!1019591) (++!8188 (t!233587 lt!1019591) (t!233587 (exprs!3211 c!7184)))))))

(declare-fun b!2880781 () Bool)

(declare-fun res!1193885 () Bool)

(declare-fun e!1822576 () Bool)

(assert (=> b!2880781 (=> (not res!1193885) (not e!1822576))))

(declare-fun lt!1019690 () List!34544)

(declare-fun size!26336 (List!34544) Int)

(assert (=> b!2880781 (= res!1193885 (= (size!26336 lt!1019690) (+ (size!26336 lt!1019591) (size!26336 (t!233587 (exprs!3211 c!7184))))))))

(declare-fun d!833105 () Bool)

(assert (=> d!833105 e!1822576))

(declare-fun res!1193884 () Bool)

(assert (=> d!833105 (=> (not res!1193884) (not e!1822576))))

(declare-fun content!4717 (List!34544) (InoxSet Regex!8751))

(assert (=> d!833105 (= res!1193884 (= (content!4717 lt!1019690) ((_ map or) (content!4717 lt!1019591) (content!4717 (t!233587 (exprs!3211 c!7184))))))))

(assert (=> d!833105 (= lt!1019690 e!1822575)))

(declare-fun c!467736 () Bool)

(assert (=> d!833105 (= c!467736 ((_ is Nil!34420) lt!1019591))))

(assert (=> d!833105 (= (++!8188 lt!1019591 (t!233587 (exprs!3211 c!7184))) lt!1019690)))

(declare-fun b!2880782 () Bool)

(assert (=> b!2880782 (= e!1822576 (or (not (= (t!233587 (exprs!3211 c!7184)) Nil!34420)) (= lt!1019690 lt!1019591)))))

(declare-fun b!2880779 () Bool)

(assert (=> b!2880779 (= e!1822575 (t!233587 (exprs!3211 c!7184)))))

(assert (= (and d!833105 c!467736) b!2880779))

(assert (= (and d!833105 (not c!467736)) b!2880780))

(assert (= (and d!833105 res!1193884) b!2880781))

(assert (= (and b!2880781 res!1193885) b!2880782))

(declare-fun m!3297999 () Bool)

(assert (=> b!2880780 m!3297999))

(declare-fun m!3298001 () Bool)

(assert (=> b!2880781 m!3298001))

(declare-fun m!3298003 () Bool)

(assert (=> b!2880781 m!3298003))

(declare-fun m!3298005 () Bool)

(assert (=> b!2880781 m!3298005))

(declare-fun m!3298007 () Bool)

(assert (=> d!833105 m!3298007))

(declare-fun m!3298009 () Bool)

(assert (=> d!833105 m!3298009))

(declare-fun m!3298011 () Bool)

(assert (=> d!833105 m!3298011))

(assert (=> b!2880453 d!833105))

(declare-fun d!833107 () Bool)

(declare-fun c!467737 () Bool)

(assert (=> d!833107 (= c!467737 (isEmpty!18745 (get!10353 (getLanguageWitness!453 c!7184))))))

(declare-fun e!1822577 () Bool)

(assert (=> d!833107 (= (matchZipper!493 (store ((as const (Array Context!5422 Bool)) false) c!7184 true) (get!10353 (getLanguageWitness!453 c!7184))) e!1822577)))

(declare-fun b!2880783 () Bool)

(assert (=> b!2880783 (= e!1822577 (nullableZipper!729 (store ((as const (Array Context!5422 Bool)) false) c!7184 true)))))

(declare-fun b!2880784 () Bool)

(assert (=> b!2880784 (= e!1822577 (matchZipper!493 (derivationStepZipper!485 (store ((as const (Array Context!5422 Bool)) false) c!7184 true) (head!6358 (get!10353 (getLanguageWitness!453 c!7184)))) (tail!4583 (get!10353 (getLanguageWitness!453 c!7184)))))))

(assert (= (and d!833107 c!467737) b!2880783))

(assert (= (and d!833107 (not c!467737)) b!2880784))

(assert (=> d!833107 m!3297657))

(declare-fun m!3298013 () Bool)

(assert (=> d!833107 m!3298013))

(assert (=> b!2880783 m!3297655))

(declare-fun m!3298015 () Bool)

(assert (=> b!2880783 m!3298015))

(assert (=> b!2880784 m!3297657))

(declare-fun m!3298017 () Bool)

(assert (=> b!2880784 m!3298017))

(assert (=> b!2880784 m!3297655))

(assert (=> b!2880784 m!3298017))

(declare-fun m!3298019 () Bool)

(assert (=> b!2880784 m!3298019))

(assert (=> b!2880784 m!3297657))

(declare-fun m!3298021 () Bool)

(assert (=> b!2880784 m!3298021))

(assert (=> b!2880784 m!3298019))

(assert (=> b!2880784 m!3298021))

(declare-fun m!3298023 () Bool)

(assert (=> b!2880784 m!3298023))

(assert (=> b!2880453 d!833107))

(declare-fun bs!523411 () Bool)

(declare-fun d!833109 () Bool)

(assert (= bs!523411 (and d!833109 b!2880453)))

(declare-fun lambda!107528 () Int)

(assert (=> bs!523411 (not (= lambda!107528 lambda!107502))))

(declare-fun bs!523412 () Bool)

(assert (= bs!523412 (and d!833109 d!833099)))

(assert (=> bs!523412 (not (= lambda!107528 lambda!107524))))

(declare-fun bs!523413 () Bool)

(assert (= bs!523413 (and d!833109 d!833055)))

(assert (=> bs!523413 (= lambda!107528 lambda!107511)))

(declare-fun bs!523414 () Bool)

(assert (= bs!523414 (and d!833109 d!833101)))

(assert (=> bs!523414 (= lambda!107528 lambda!107527)))

(declare-fun bs!523415 () Bool)

(assert (= bs!523415 (and d!833109 d!833063)))

(assert (=> bs!523415 (not (= lambda!107528 lambda!107514))))

(declare-fun b!2880785 () Bool)

(declare-fun e!1822579 () Option!6426)

(declare-fun lt!1019691 () Option!6426)

(declare-fun lt!1019693 () Option!6426)

(assert (=> b!2880785 (= e!1822579 (Some!6425 (++!8189 (v!34551 lt!1019691) (v!34551 lt!1019693))))))

(declare-fun b!2880786 () Bool)

(declare-fun e!1822578 () Option!6426)

(assert (=> b!2880786 (= e!1822578 None!6425)))

(declare-fun lt!1019692 () Option!6426)

(assert (=> d!833109 (= (isEmpty!18746 lt!1019692) (exists!1192 (exprs!3211 lt!1019595) lambda!107528))))

(declare-fun e!1822580 () Option!6426)

(assert (=> d!833109 (= lt!1019692 e!1822580)))

(declare-fun c!467739 () Bool)

(assert (=> d!833109 (= c!467739 ((_ is Cons!34420) (exprs!3211 lt!1019595)))))

(assert (=> d!833109 (= (getLanguageWitness!453 lt!1019595) lt!1019692)))

(declare-fun b!2880787 () Bool)

(declare-fun c!467740 () Bool)

(assert (=> b!2880787 (= c!467740 ((_ is Some!6425) lt!1019693))))

(assert (=> b!2880787 (= lt!1019693 (getLanguageWitness!453 (Context!5423 (t!233587 (exprs!3211 lt!1019595)))))))

(assert (=> b!2880787 (= e!1822578 e!1822579)))

(declare-fun b!2880788 () Bool)

(assert (=> b!2880788 (= e!1822580 (Some!6425 Nil!34421))))

(declare-fun b!2880789 () Bool)

(assert (=> b!2880789 (= e!1822580 e!1822578)))

(assert (=> b!2880789 (= lt!1019691 (getLanguageWitness!454 (h!39840 (exprs!3211 lt!1019595))))))

(declare-fun c!467738 () Bool)

(assert (=> b!2880789 (= c!467738 ((_ is Some!6425) lt!1019691))))

(declare-fun b!2880790 () Bool)

(assert (=> b!2880790 (= e!1822579 None!6425)))

(assert (= (and d!833109 c!467739) b!2880789))

(assert (= (and d!833109 (not c!467739)) b!2880788))

(assert (= (and b!2880789 c!467738) b!2880787))

(assert (= (and b!2880789 (not c!467738)) b!2880786))

(assert (= (and b!2880787 c!467740) b!2880785))

(assert (= (and b!2880787 (not c!467740)) b!2880790))

(declare-fun m!3298025 () Bool)

(assert (=> b!2880785 m!3298025))

(declare-fun m!3298027 () Bool)

(assert (=> d!833109 m!3298027))

(declare-fun m!3298029 () Bool)

(assert (=> d!833109 m!3298029))

(declare-fun m!3298031 () Bool)

(assert (=> b!2880787 m!3298031))

(declare-fun m!3298033 () Bool)

(assert (=> b!2880789 m!3298033))

(assert (=> b!2880448 d!833109))

(declare-fun b!2880795 () Bool)

(declare-fun e!1822583 () Bool)

(declare-fun tp!924123 () Bool)

(declare-fun tp!924124 () Bool)

(assert (=> b!2880795 (= e!1822583 (and tp!924123 tp!924124))))

(assert (=> b!2880449 (= tp!924112 e!1822583)))

(assert (= (and b!2880449 ((_ is Cons!34420) (exprs!3211 c!7184))) b!2880795))

(check-sat (not b!2880781) (not d!833029) (not d!833085) (not b!2880769) (not b!2880715) (not d!833087) (not b!2880718) (not b!2880712) (not d!833063) (not b!2880461) (not d!833107) (not b!2880787) (not b!2880460) (not b!2880784) (not d!833093) (not bm!186738) (not d!833099) (not bm!186752) (not b!2880458) (not d!833031) (not b!2880767) (not b!2880734) (not d!833081) (not d!833101) (not b!2880763) (not b!2880711) (not b!2880785) (not b!2880789) (not b!2880723) (not bm!186739) (not d!833067) (not b!2880716) (not d!833105) (not b!2880459) (not b!2880555) (not b!2880770) (not b!2880729) (not d!833109) (not b!2880727) (not bm!186753) (not b!2880765) (not b!2880749) (not d!833023) (not b!2880731) (not b!2880795) (not d!833095) (not b!2880724) (not b!2880728) (not b!2880780) (not d!833091) (not d!833055) (not d!833103) (not b!2880783) (not b!2880713) (not b!2880732) (not b!2880748))
(check-sat)
(get-model)

(declare-fun b!2881075 () Bool)

(declare-fun e!1822736 () Option!6426)

(assert (=> b!2881075 (= e!1822736 (Some!6425 Nil!34421))))

(declare-fun b!2881076 () Bool)

(declare-fun e!1822731 () Option!6426)

(assert (=> b!2881076 (= e!1822731 (Some!6425 (Cons!34421 (c!467614 (ite c!467664 (regOne!18015 (h!39840 (exprs!3211 c!7184))) (regOne!18014 (h!39840 (exprs!3211 c!7184))))) Nil!34421)))))

(declare-fun b!2881077 () Bool)

(declare-fun c!467852 () Bool)

(assert (=> b!2881077 (= c!467852 ((_ is Union!8751) (ite c!467664 (regOne!18015 (h!39840 (exprs!3211 c!7184))) (regOne!18014 (h!39840 (exprs!3211 c!7184))))))))

(declare-fun e!1822735 () Option!6426)

(declare-fun e!1822734 () Option!6426)

(assert (=> b!2881077 (= e!1822735 e!1822734)))

(declare-fun b!2881078 () Bool)

(declare-fun c!467847 () Bool)

(assert (=> b!2881078 (= c!467847 ((_ is ElementMatch!8751) (ite c!467664 (regOne!18015 (h!39840 (exprs!3211 c!7184))) (regOne!18014 (h!39840 (exprs!3211 c!7184))))))))

(declare-fun e!1822737 () Option!6426)

(assert (=> b!2881078 (= e!1822737 e!1822731)))

(declare-fun b!2881079 () Bool)

(declare-fun c!467850 () Bool)

(declare-fun lt!1019736 () Option!6426)

(assert (=> b!2881079 (= c!467850 ((_ is Some!6425) lt!1019736))))

(declare-fun call!186794 () Option!6426)

(assert (=> b!2881079 (= lt!1019736 call!186794)))

(declare-fun e!1822730 () Option!6426)

(declare-fun e!1822732 () Option!6426)

(assert (=> b!2881079 (= e!1822730 e!1822732)))

(declare-fun b!2881080 () Bool)

(assert (=> b!2881080 (= e!1822732 None!6425)))

(declare-fun b!2881081 () Bool)

(declare-fun lt!1019737 () Option!6426)

(assert (=> b!2881081 (= e!1822732 (Some!6425 (++!8189 (v!34551 lt!1019737) (v!34551 lt!1019736))))))

(declare-fun bm!186788 () Bool)

(assert (=> bm!186788 (= call!186794 (getLanguageWitness!454 (ite c!467852 (regTwo!18015 (ite c!467664 (regOne!18015 (h!39840 (exprs!3211 c!7184))) (regOne!18014 (h!39840 (exprs!3211 c!7184))))) (regTwo!18014 (ite c!467664 (regOne!18015 (h!39840 (exprs!3211 c!7184))) (regOne!18014 (h!39840 (exprs!3211 c!7184))))))))))

(declare-fun bm!186789 () Bool)

(declare-fun call!186793 () Option!6426)

(assert (=> bm!186789 (= call!186793 (getLanguageWitness!454 (ite c!467852 (regOne!18015 (ite c!467664 (regOne!18015 (h!39840 (exprs!3211 c!7184))) (regOne!18014 (h!39840 (exprs!3211 c!7184))))) (regOne!18014 (ite c!467664 (regOne!18015 (h!39840 (exprs!3211 c!7184))) (regOne!18014 (h!39840 (exprs!3211 c!7184))))))))))

(declare-fun b!2881082 () Bool)

(assert (=> b!2881082 (= e!1822737 None!6425)))

(declare-fun b!2881074 () Bool)

(assert (=> b!2881074 (= e!1822735 (Some!6425 Nil!34421))))

(declare-fun d!833285 () Bool)

(declare-fun c!467851 () Bool)

(assert (=> d!833285 (= c!467851 ((_ is EmptyExpr!8751) (ite c!467664 (regOne!18015 (h!39840 (exprs!3211 c!7184))) (regOne!18014 (h!39840 (exprs!3211 c!7184))))))))

(assert (=> d!833285 (= (getLanguageWitness!454 (ite c!467664 (regOne!18015 (h!39840 (exprs!3211 c!7184))) (regOne!18014 (h!39840 (exprs!3211 c!7184))))) e!1822736)))

(declare-fun b!2881083 () Bool)

(declare-fun e!1822733 () Option!6426)

(assert (=> b!2881083 (= e!1822733 call!186794)))

(declare-fun b!2881084 () Bool)

(assert (=> b!2881084 (= e!1822734 e!1822730)))

(assert (=> b!2881084 (= lt!1019737 call!186793)))

(declare-fun c!467849 () Bool)

(assert (=> b!2881084 (= c!467849 ((_ is Some!6425) lt!1019737))))

(declare-fun b!2881085 () Bool)

(assert (=> b!2881085 (= e!1822730 None!6425)))

(declare-fun b!2881086 () Bool)

(assert (=> b!2881086 (= e!1822734 e!1822733)))

(declare-fun lt!1019738 () Option!6426)

(assert (=> b!2881086 (= lt!1019738 call!186793)))

(declare-fun c!467846 () Bool)

(assert (=> b!2881086 (= c!467846 ((_ is Some!6425) lt!1019738))))

(declare-fun b!2881087 () Bool)

(assert (=> b!2881087 (= e!1822731 e!1822735)))

(declare-fun c!467845 () Bool)

(assert (=> b!2881087 (= c!467845 ((_ is Star!8751) (ite c!467664 (regOne!18015 (h!39840 (exprs!3211 c!7184))) (regOne!18014 (h!39840 (exprs!3211 c!7184))))))))

(declare-fun b!2881088 () Bool)

(assert (=> b!2881088 (= e!1822736 e!1822737)))

(declare-fun c!467848 () Bool)

(assert (=> b!2881088 (= c!467848 ((_ is EmptyLang!8751) (ite c!467664 (regOne!18015 (h!39840 (exprs!3211 c!7184))) (regOne!18014 (h!39840 (exprs!3211 c!7184))))))))

(declare-fun b!2881089 () Bool)

(assert (=> b!2881089 (= e!1822733 lt!1019738)))

(assert (= (and d!833285 c!467851) b!2881075))

(assert (= (and d!833285 (not c!467851)) b!2881088))

(assert (= (and b!2881088 c!467848) b!2881082))

(assert (= (and b!2881088 (not c!467848)) b!2881078))

(assert (= (and b!2881078 c!467847) b!2881076))

(assert (= (and b!2881078 (not c!467847)) b!2881087))

(assert (= (and b!2881087 c!467845) b!2881074))

(assert (= (and b!2881087 (not c!467845)) b!2881077))

(assert (= (and b!2881077 c!467852) b!2881086))

(assert (= (and b!2881077 (not c!467852)) b!2881084))

(assert (= (and b!2881086 c!467846) b!2881089))

(assert (= (and b!2881086 (not c!467846)) b!2881083))

(assert (= (and b!2881084 c!467849) b!2881079))

(assert (= (and b!2881084 (not c!467849)) b!2881085))

(assert (= (and b!2881079 c!467850) b!2881081))

(assert (= (and b!2881079 (not c!467850)) b!2881080))

(assert (= (or b!2881083 b!2881079) bm!186788))

(assert (= (or b!2881086 b!2881084) bm!186789))

(declare-fun m!3298367 () Bool)

(assert (=> b!2881081 m!3298367))

(declare-fun m!3298369 () Bool)

(assert (=> bm!186788 m!3298369))

(declare-fun m!3298371 () Bool)

(assert (=> bm!186789 m!3298371))

(assert (=> bm!186739 d!833285))

(declare-fun d!833287 () Bool)

(declare-fun nullableFct!829 (Regex!8751) Bool)

(assert (=> d!833287 (= (nullable!2701 (h!39840 (exprs!3211 c!7184))) (nullableFct!829 (h!39840 (exprs!3211 c!7184))))))

(declare-fun bs!523518 () Bool)

(assert (= bs!523518 d!833287))

(declare-fun m!3298373 () Bool)

(assert (=> bs!523518 m!3298373))

(assert (=> b!2880718 d!833287))

(declare-fun d!833289 () Bool)

(declare-fun c!467853 () Bool)

(assert (=> d!833289 (= c!467853 (isEmpty!18745 (++!8189 (v!34551 lt!1019586) (v!34551 lt!1019584))))))

(declare-fun e!1822738 () Bool)

(assert (=> d!833289 (= (matchZipper!493 (store ((as const (Array Context!5422 Bool)) false) (Context!5423 (++!8188 (exprs!3211 lt!1019590) (exprs!3211 lt!1019595))) true) (++!8189 (v!34551 lt!1019586) (v!34551 lt!1019584))) e!1822738)))

(declare-fun b!2881090 () Bool)

(assert (=> b!2881090 (= e!1822738 (nullableZipper!729 (store ((as const (Array Context!5422 Bool)) false) (Context!5423 (++!8188 (exprs!3211 lt!1019590) (exprs!3211 lt!1019595))) true)))))

(declare-fun b!2881091 () Bool)

(assert (=> b!2881091 (= e!1822738 (matchZipper!493 (derivationStepZipper!485 (store ((as const (Array Context!5422 Bool)) false) (Context!5423 (++!8188 (exprs!3211 lt!1019590) (exprs!3211 lt!1019595))) true) (head!6358 (++!8189 (v!34551 lt!1019586) (v!34551 lt!1019584)))) (tail!4583 (++!8189 (v!34551 lt!1019586) (v!34551 lt!1019584)))))))

(assert (= (and d!833289 c!467853) b!2881090))

(assert (= (and d!833289 (not c!467853)) b!2881091))

(assert (=> d!833289 m!3297671))

(assert (=> d!833289 m!3297987))

(assert (=> b!2881090 m!3297973))

(declare-fun m!3298375 () Bool)

(assert (=> b!2881090 m!3298375))

(assert (=> b!2881091 m!3297671))

(assert (=> b!2881091 m!3297991))

(assert (=> b!2881091 m!3297973))

(assert (=> b!2881091 m!3297991))

(declare-fun m!3298377 () Bool)

(assert (=> b!2881091 m!3298377))

(assert (=> b!2881091 m!3297671))

(assert (=> b!2881091 m!3297995))

(assert (=> b!2881091 m!3298377))

(assert (=> b!2881091 m!3297995))

(declare-fun m!3298379 () Bool)

(assert (=> b!2881091 m!3298379))

(assert (=> d!833099 d!833289))

(assert (=> d!833099 d!833095))

(declare-fun bs!523519 () Bool)

(declare-fun d!833291 () Bool)

(assert (= bs!523519 (and d!833291 b!2880453)))

(declare-fun lambda!107555 () Int)

(assert (=> bs!523519 (= lambda!107555 lambda!107502)))

(declare-fun bs!523520 () Bool)

(assert (= bs!523520 (and d!833291 d!833099)))

(assert (=> bs!523520 (= lambda!107555 lambda!107524)))

(declare-fun bs!523521 () Bool)

(assert (= bs!523521 (and d!833291 d!833055)))

(assert (=> bs!523521 (not (= lambda!107555 lambda!107511))))

(declare-fun bs!523522 () Bool)

(assert (= bs!523522 (and d!833291 d!833063)))

(assert (=> bs!523522 (= lambda!107555 lambda!107514)))

(declare-fun bs!523523 () Bool)

(assert (= bs!523523 (and d!833291 d!833101)))

(assert (=> bs!523523 (not (= lambda!107555 lambda!107527))))

(declare-fun bs!523524 () Bool)

(assert (= bs!523524 (and d!833291 d!833109)))

(assert (=> bs!523524 (not (= lambda!107555 lambda!107528))))

(assert (=> d!833291 (matchZipper!493 (store ((as const (Array Context!5422 Bool)) false) (Context!5423 (++!8188 (exprs!3211 lt!1019590) (exprs!3211 lt!1019595))) true) (++!8189 (v!34551 lt!1019586) (v!34551 lt!1019584)))))

(declare-fun lt!1019741 () Unit!48003)

(assert (=> d!833291 (= lt!1019741 (lemmaConcatPreservesForall!130 (exprs!3211 lt!1019590) (exprs!3211 lt!1019595) lambda!107555))))

(assert (=> d!833291 true))

(declare-fun _$56!350 () Unit!48003)

(assert (=> d!833291 (= (choose!17044 lt!1019590 lt!1019595 (v!34551 lt!1019586) (v!34551 lt!1019584)) _$56!350)))

(declare-fun bs!523525 () Bool)

(assert (= bs!523525 d!833291))

(declare-fun m!3298381 () Bool)

(assert (=> bs!523525 m!3298381))

(assert (=> bs!523525 m!3297969))

(assert (=> bs!523525 m!3297973))

(assert (=> bs!523525 m!3297671))

(assert (=> bs!523525 m!3297973))

(assert (=> bs!523525 m!3297671))

(assert (=> bs!523525 m!3297975))

(assert (=> d!833099 d!833291))

(declare-fun d!833293 () Bool)

(declare-fun c!467854 () Bool)

(assert (=> d!833293 (= c!467854 (isEmpty!18745 (v!34551 lt!1019586)))))

(declare-fun e!1822739 () Bool)

(assert (=> d!833293 (= (matchZipper!493 (store ((as const (Array Context!5422 Bool)) false) lt!1019590 true) (v!34551 lt!1019586)) e!1822739)))

(declare-fun b!2881092 () Bool)

(assert (=> b!2881092 (= e!1822739 (nullableZipper!729 (store ((as const (Array Context!5422 Bool)) false) lt!1019590 true)))))

(declare-fun b!2881093 () Bool)

(assert (=> b!2881093 (= e!1822739 (matchZipper!493 (derivationStepZipper!485 (store ((as const (Array Context!5422 Bool)) false) lt!1019590 true) (head!6358 (v!34551 lt!1019586))) (tail!4583 (v!34551 lt!1019586))))))

(assert (= (and d!833293 c!467854) b!2881092))

(assert (= (and d!833293 (not c!467854)) b!2881093))

(assert (=> d!833293 m!3297713))

(assert (=> b!2881092 m!3297649))

(declare-fun m!3298383 () Bool)

(assert (=> b!2881092 m!3298383))

(assert (=> b!2881093 m!3297717))

(assert (=> b!2881093 m!3297649))

(assert (=> b!2881093 m!3297717))

(declare-fun m!3298385 () Bool)

(assert (=> b!2881093 m!3298385))

(assert (=> b!2881093 m!3297721))

(assert (=> b!2881093 m!3298385))

(assert (=> b!2881093 m!3297721))

(declare-fun m!3298387 () Bool)

(assert (=> b!2881093 m!3298387))

(assert (=> d!833099 d!833293))

(declare-fun d!833295 () Bool)

(assert (=> d!833295 (forall!7095 (++!8188 (exprs!3211 lt!1019590) (exprs!3211 lt!1019595)) lambda!107524)))

(declare-fun lt!1019742 () Unit!48003)

(assert (=> d!833295 (= lt!1019742 (choose!17043 (exprs!3211 lt!1019590) (exprs!3211 lt!1019595) lambda!107524))))

(assert (=> d!833295 (forall!7095 (exprs!3211 lt!1019590) lambda!107524)))

(assert (=> d!833295 (= (lemmaConcatPreservesForall!130 (exprs!3211 lt!1019590) (exprs!3211 lt!1019595) lambda!107524) lt!1019742)))

(declare-fun bs!523526 () Bool)

(assert (= bs!523526 d!833295))

(assert (=> bs!523526 m!3297969))

(assert (=> bs!523526 m!3297969))

(declare-fun m!3298389 () Bool)

(assert (=> bs!523526 m!3298389))

(declare-fun m!3298391 () Bool)

(assert (=> bs!523526 m!3298391))

(declare-fun m!3298393 () Bool)

(assert (=> bs!523526 m!3298393))

(assert (=> d!833099 d!833295))

(declare-fun b!2881095 () Bool)

(declare-fun e!1822740 () List!34544)

(assert (=> b!2881095 (= e!1822740 (Cons!34420 (h!39840 (exprs!3211 lt!1019590)) (++!8188 (t!233587 (exprs!3211 lt!1019590)) (exprs!3211 lt!1019595))))))

(declare-fun b!2881096 () Bool)

(declare-fun res!1193948 () Bool)

(declare-fun e!1822741 () Bool)

(assert (=> b!2881096 (=> (not res!1193948) (not e!1822741))))

(declare-fun lt!1019743 () List!34544)

(assert (=> b!2881096 (= res!1193948 (= (size!26336 lt!1019743) (+ (size!26336 (exprs!3211 lt!1019590)) (size!26336 (exprs!3211 lt!1019595)))))))

(declare-fun d!833297 () Bool)

(assert (=> d!833297 e!1822741))

(declare-fun res!1193947 () Bool)

(assert (=> d!833297 (=> (not res!1193947) (not e!1822741))))

(assert (=> d!833297 (= res!1193947 (= (content!4717 lt!1019743) ((_ map or) (content!4717 (exprs!3211 lt!1019590)) (content!4717 (exprs!3211 lt!1019595)))))))

(assert (=> d!833297 (= lt!1019743 e!1822740)))

(declare-fun c!467855 () Bool)

(assert (=> d!833297 (= c!467855 ((_ is Nil!34420) (exprs!3211 lt!1019590)))))

(assert (=> d!833297 (= (++!8188 (exprs!3211 lt!1019590) (exprs!3211 lt!1019595)) lt!1019743)))

(declare-fun b!2881097 () Bool)

(assert (=> b!2881097 (= e!1822741 (or (not (= (exprs!3211 lt!1019595) Nil!34420)) (= lt!1019743 (exprs!3211 lt!1019590))))))

(declare-fun b!2881094 () Bool)

(assert (=> b!2881094 (= e!1822740 (exprs!3211 lt!1019595))))

(assert (= (and d!833297 c!467855) b!2881094))

(assert (= (and d!833297 (not c!467855)) b!2881095))

(assert (= (and d!833297 res!1193947) b!2881096))

(assert (= (and b!2881096 res!1193948) b!2881097))

(declare-fun m!3298395 () Bool)

(assert (=> b!2881095 m!3298395))

(declare-fun m!3298397 () Bool)

(assert (=> b!2881096 m!3298397))

(declare-fun m!3298399 () Bool)

(assert (=> b!2881096 m!3298399))

(declare-fun m!3298401 () Bool)

(assert (=> b!2881096 m!3298401))

(declare-fun m!3298403 () Bool)

(assert (=> d!833297 m!3298403))

(declare-fun m!3298405 () Bool)

(assert (=> d!833297 m!3298405))

(declare-fun m!3298407 () Bool)

(assert (=> d!833297 m!3298407))

(assert (=> d!833099 d!833297))

(declare-fun d!833299 () Bool)

(declare-fun res!1193953 () Bool)

(declare-fun e!1822746 () Bool)

(assert (=> d!833299 (=> res!1193953 e!1822746)))

(assert (=> d!833299 (= res!1193953 ((_ is Nil!34420) (exprs!3211 c!7184)))))

(assert (=> d!833299 (= (forall!7095 (exprs!3211 c!7184) lambda!107514) e!1822746)))

(declare-fun b!2881102 () Bool)

(declare-fun e!1822747 () Bool)

(assert (=> b!2881102 (= e!1822746 e!1822747)))

(declare-fun res!1193954 () Bool)

(assert (=> b!2881102 (=> (not res!1193954) (not e!1822747))))

(declare-fun dynLambda!14334 (Int Regex!8751) Bool)

(assert (=> b!2881102 (= res!1193954 (dynLambda!14334 lambda!107514 (h!39840 (exprs!3211 c!7184))))))

(declare-fun b!2881103 () Bool)

(assert (=> b!2881103 (= e!1822747 (forall!7095 (t!233587 (exprs!3211 c!7184)) lambda!107514))))

(assert (= (and d!833299 (not res!1193953)) b!2881102))

(assert (= (and b!2881102 res!1193954) b!2881103))

(declare-fun b_lambda!86303 () Bool)

(assert (=> (not b_lambda!86303) (not b!2881102)))

(declare-fun m!3298409 () Bool)

(assert (=> b!2881102 m!3298409))

(declare-fun m!3298411 () Bool)

(assert (=> b!2881103 m!3298411))

(assert (=> d!833063 d!833299))

(declare-fun d!833301 () Bool)

(declare-fun lt!1019746 () Int)

(assert (=> d!833301 (>= lt!1019746 0)))

(declare-fun e!1822750 () Int)

(assert (=> d!833301 (= lt!1019746 e!1822750)))

(declare-fun c!467858 () Bool)

(assert (=> d!833301 (= c!467858 ((_ is Nil!34421) lt!1019672))))

(assert (=> d!833301 (= (size!26335 lt!1019672) lt!1019746)))

(declare-fun b!2881108 () Bool)

(assert (=> b!2881108 (= e!1822750 0)))

(declare-fun b!2881109 () Bool)

(assert (=> b!2881109 (= e!1822750 (+ 1 (size!26335 (t!233588 lt!1019672))))))

(assert (= (and d!833301 c!467858) b!2881108))

(assert (= (and d!833301 (not c!467858)) b!2881109))

(declare-fun m!3298413 () Bool)

(assert (=> b!2881109 m!3298413))

(assert (=> b!2880749 d!833301))

(declare-fun d!833303 () Bool)

(declare-fun lt!1019747 () Int)

(assert (=> d!833303 (>= lt!1019747 0)))

(declare-fun e!1822751 () Int)

(assert (=> d!833303 (= lt!1019747 e!1822751)))

(declare-fun c!467859 () Bool)

(assert (=> d!833303 (= c!467859 ((_ is Nil!34421) (v!34551 lt!1019586)))))

(assert (=> d!833303 (= (size!26335 (v!34551 lt!1019586)) lt!1019747)))

(declare-fun b!2881110 () Bool)

(assert (=> b!2881110 (= e!1822751 0)))

(declare-fun b!2881111 () Bool)

(assert (=> b!2881111 (= e!1822751 (+ 1 (size!26335 (t!233588 (v!34551 lt!1019586)))))))

(assert (= (and d!833303 c!467859) b!2881110))

(assert (= (and d!833303 (not c!467859)) b!2881111))

(declare-fun m!3298415 () Bool)

(assert (=> b!2881111 m!3298415))

(assert (=> b!2880749 d!833303))

(declare-fun d!833305 () Bool)

(declare-fun lt!1019748 () Int)

(assert (=> d!833305 (>= lt!1019748 0)))

(declare-fun e!1822752 () Int)

(assert (=> d!833305 (= lt!1019748 e!1822752)))

(declare-fun c!467860 () Bool)

(assert (=> d!833305 (= c!467860 ((_ is Nil!34421) (v!34551 lt!1019584)))))

(assert (=> d!833305 (= (size!26335 (v!34551 lt!1019584)) lt!1019748)))

(declare-fun b!2881112 () Bool)

(assert (=> b!2881112 (= e!1822752 0)))

(declare-fun b!2881113 () Bool)

(assert (=> b!2881113 (= e!1822752 (+ 1 (size!26335 (t!233588 (v!34551 lt!1019584)))))))

(assert (= (and d!833305 c!467860) b!2881112))

(assert (= (and d!833305 (not c!467860)) b!2881113))

(declare-fun m!3298417 () Bool)

(assert (=> b!2881113 m!3298417))

(assert (=> b!2880749 d!833305))

(declare-fun b!2881114 () Bool)

(declare-fun e!1822753 () List!34545)

(assert (=> b!2881114 (= e!1822753 (v!34551 lt!1019687))))

(declare-fun b!2881115 () Bool)

(assert (=> b!2881115 (= e!1822753 (Cons!34421 (h!39841 (v!34551 lt!1019685)) (++!8189 (t!233588 (v!34551 lt!1019685)) (v!34551 lt!1019687))))))

(declare-fun b!2881117 () Bool)

(declare-fun lt!1019749 () List!34545)

(declare-fun e!1822754 () Bool)

(assert (=> b!2881117 (= e!1822754 (or (not (= (v!34551 lt!1019687) Nil!34421)) (= lt!1019749 (v!34551 lt!1019685))))))

(declare-fun b!2881116 () Bool)

(declare-fun res!1193955 () Bool)

(assert (=> b!2881116 (=> (not res!1193955) (not e!1822754))))

(assert (=> b!2881116 (= res!1193955 (= (size!26335 lt!1019749) (+ (size!26335 (v!34551 lt!1019685)) (size!26335 (v!34551 lt!1019687)))))))

(declare-fun d!833307 () Bool)

(assert (=> d!833307 e!1822754))

(declare-fun res!1193956 () Bool)

(assert (=> d!833307 (=> (not res!1193956) (not e!1822754))))

(assert (=> d!833307 (= res!1193956 (= (content!4716 lt!1019749) ((_ map or) (content!4716 (v!34551 lt!1019685)) (content!4716 (v!34551 lt!1019687)))))))

(assert (=> d!833307 (= lt!1019749 e!1822753)))

(declare-fun c!467861 () Bool)

(assert (=> d!833307 (= c!467861 ((_ is Nil!34421) (v!34551 lt!1019685)))))

(assert (=> d!833307 (= (++!8189 (v!34551 lt!1019685) (v!34551 lt!1019687)) lt!1019749)))

(assert (= (and d!833307 c!467861) b!2881114))

(assert (= (and d!833307 (not c!467861)) b!2881115))

(assert (= (and d!833307 res!1193956) b!2881116))

(assert (= (and b!2881116 res!1193955) b!2881117))

(declare-fun m!3298419 () Bool)

(assert (=> b!2881115 m!3298419))

(declare-fun m!3298421 () Bool)

(assert (=> b!2881116 m!3298421))

(declare-fun m!3298423 () Bool)

(assert (=> b!2881116 m!3298423))

(declare-fun m!3298425 () Bool)

(assert (=> b!2881116 m!3298425))

(declare-fun m!3298427 () Bool)

(assert (=> d!833307 m!3298427))

(declare-fun m!3298429 () Bool)

(assert (=> d!833307 m!3298429))

(declare-fun m!3298431 () Bool)

(assert (=> d!833307 m!3298431))

(assert (=> b!2880763 d!833307))

(declare-fun d!833309 () Bool)

(declare-fun lambda!107558 () Int)

(declare-fun exists!1194 ((InoxSet Context!5422) Int) Bool)

(assert (=> d!833309 (= (nullableZipper!729 (store ((as const (Array Context!5422 Bool)) false) (Context!5423 (++!8188 lt!1019591 (t!233587 (exprs!3211 c!7184)))) true)) (exists!1194 (store ((as const (Array Context!5422 Bool)) false) (Context!5423 (++!8188 lt!1019591 (t!233587 (exprs!3211 c!7184)))) true) lambda!107558))))

(declare-fun bs!523527 () Bool)

(assert (= bs!523527 d!833309))

(assert (=> bs!523527 m!3297669))

(declare-fun m!3298433 () Bool)

(assert (=> bs!523527 m!3298433))

(assert (=> b!2880769 d!833309))

(declare-fun bs!523528 () Bool)

(declare-fun d!833311 () Bool)

(assert (= bs!523528 (and d!833311 b!2880453)))

(declare-fun lambda!107559 () Int)

(assert (=> bs!523528 (not (= lambda!107559 lambda!107502))))

(declare-fun bs!523529 () Bool)

(assert (= bs!523529 (and d!833311 d!833099)))

(assert (=> bs!523529 (not (= lambda!107559 lambda!107524))))

(declare-fun bs!523530 () Bool)

(assert (= bs!523530 (and d!833311 d!833055)))

(assert (=> bs!523530 (= lambda!107559 lambda!107511)))

(declare-fun bs!523531 () Bool)

(assert (= bs!523531 (and d!833311 d!833291)))

(assert (=> bs!523531 (not (= lambda!107559 lambda!107555))))

(declare-fun bs!523532 () Bool)

(assert (= bs!523532 (and d!833311 d!833063)))

(assert (=> bs!523532 (not (= lambda!107559 lambda!107514))))

(declare-fun bs!523533 () Bool)

(assert (= bs!523533 (and d!833311 d!833101)))

(assert (=> bs!523533 (= lambda!107559 lambda!107527)))

(declare-fun bs!523534 () Bool)

(assert (= bs!523534 (and d!833311 d!833109)))

(assert (=> bs!523534 (= lambda!107559 lambda!107528)))

(declare-fun b!2881118 () Bool)

(declare-fun e!1822756 () Option!6426)

(declare-fun lt!1019750 () Option!6426)

(declare-fun lt!1019752 () Option!6426)

(assert (=> b!2881118 (= e!1822756 (Some!6425 (++!8189 (v!34551 lt!1019750) (v!34551 lt!1019752))))))

(declare-fun b!2881119 () Bool)

(declare-fun e!1822755 () Option!6426)

(assert (=> b!2881119 (= e!1822755 None!6425)))

(declare-fun lt!1019751 () Option!6426)

(assert (=> d!833311 (= (isEmpty!18746 lt!1019751) (exists!1192 (exprs!3211 (Context!5423 (t!233587 (exprs!3211 c!7184)))) lambda!107559))))

(declare-fun e!1822757 () Option!6426)

(assert (=> d!833311 (= lt!1019751 e!1822757)))

(declare-fun c!467865 () Bool)

(assert (=> d!833311 (= c!467865 ((_ is Cons!34420) (exprs!3211 (Context!5423 (t!233587 (exprs!3211 c!7184))))))))

(assert (=> d!833311 (= (getLanguageWitness!453 (Context!5423 (t!233587 (exprs!3211 c!7184)))) lt!1019751)))

(declare-fun b!2881120 () Bool)

(declare-fun c!467866 () Bool)

(assert (=> b!2881120 (= c!467866 ((_ is Some!6425) lt!1019752))))

(assert (=> b!2881120 (= lt!1019752 (getLanguageWitness!453 (Context!5423 (t!233587 (exprs!3211 (Context!5423 (t!233587 (exprs!3211 c!7184))))))))))

(assert (=> b!2881120 (= e!1822755 e!1822756)))

(declare-fun b!2881121 () Bool)

(assert (=> b!2881121 (= e!1822757 (Some!6425 Nil!34421))))

(declare-fun b!2881122 () Bool)

(assert (=> b!2881122 (= e!1822757 e!1822755)))

(assert (=> b!2881122 (= lt!1019750 (getLanguageWitness!454 (h!39840 (exprs!3211 (Context!5423 (t!233587 (exprs!3211 c!7184)))))))))

(declare-fun c!467864 () Bool)

(assert (=> b!2881122 (= c!467864 ((_ is Some!6425) lt!1019750))))

(declare-fun b!2881123 () Bool)

(assert (=> b!2881123 (= e!1822756 None!6425)))

(assert (= (and d!833311 c!467865) b!2881122))

(assert (= (and d!833311 (not c!467865)) b!2881121))

(assert (= (and b!2881122 c!467864) b!2881120))

(assert (= (and b!2881122 (not c!467864)) b!2881119))

(assert (= (and b!2881120 c!467866) b!2881118))

(assert (= (and b!2881120 (not c!467866)) b!2881123))

(declare-fun m!3298435 () Bool)

(assert (=> b!2881118 m!3298435))

(declare-fun m!3298437 () Bool)

(assert (=> d!833311 m!3298437))

(declare-fun m!3298439 () Bool)

(assert (=> d!833311 m!3298439))

(declare-fun m!3298441 () Bool)

(assert (=> b!2881120 m!3298441))

(declare-fun m!3298443 () Bool)

(assert (=> b!2881122 m!3298443))

(assert (=> b!2880765 d!833311))

(declare-fun d!833313 () Bool)

(assert (=> d!833313 (= (isEmpty!18745 (get!10353 (getLanguageWitness!453 c!7184))) ((_ is Nil!34421) (get!10353 (getLanguageWitness!453 c!7184))))))

(assert (=> d!833107 d!833313))

(declare-fun d!833315 () Bool)

(assert (=> d!833315 (= (isEmpty!18745 (v!34551 lt!1019586)) ((_ is Nil!34421) (v!34551 lt!1019586)))))

(assert (=> d!833029 d!833315))

(assert (=> b!2880767 d!833039))

(declare-fun b!2881124 () Bool)

(declare-fun e!1822758 () Bool)

(declare-fun lt!1019753 () Bool)

(declare-fun call!186795 () Bool)

(assert (=> b!2881124 (= e!1822758 (= lt!1019753 call!186795))))

(declare-fun b!2881125 () Bool)

(declare-fun e!1822763 () Bool)

(declare-fun e!1822762 () Bool)

(assert (=> b!2881125 (= e!1822763 e!1822762)))

(declare-fun res!1193957 () Bool)

(assert (=> b!2881125 (=> (not res!1193957) (not e!1822762))))

(assert (=> b!2881125 (= res!1193957 (not lt!1019753))))

(declare-fun b!2881126 () Bool)

(declare-fun res!1193960 () Bool)

(declare-fun e!1822760 () Bool)

(assert (=> b!2881126 (=> (not res!1193960) (not e!1822760))))

(assert (=> b!2881126 (= res!1193960 (isEmpty!18745 (tail!4583 (tail!4583 (get!10353 lt!1019586)))))))

(declare-fun b!2881127 () Bool)

(declare-fun e!1822761 () Bool)

(assert (=> b!2881127 (= e!1822761 (matchR!3751 (derivativeStep!2334 (derivativeStep!2334 (h!39840 (exprs!3211 c!7184)) (head!6358 (get!10353 lt!1019586))) (head!6358 (tail!4583 (get!10353 lt!1019586)))) (tail!4583 (tail!4583 (get!10353 lt!1019586)))))))

(declare-fun d!833317 () Bool)

(assert (=> d!833317 e!1822758))

(declare-fun c!467869 () Bool)

(assert (=> d!833317 (= c!467869 ((_ is EmptyExpr!8751) (derivativeStep!2334 (h!39840 (exprs!3211 c!7184)) (head!6358 (get!10353 lt!1019586)))))))

(assert (=> d!833317 (= lt!1019753 e!1822761)))

(declare-fun c!467868 () Bool)

(assert (=> d!833317 (= c!467868 (isEmpty!18745 (tail!4583 (get!10353 lt!1019586))))))

(assert (=> d!833317 (validRegex!3529 (derivativeStep!2334 (h!39840 (exprs!3211 c!7184)) (head!6358 (get!10353 lt!1019586))))))

(assert (=> d!833317 (= (matchR!3751 (derivativeStep!2334 (h!39840 (exprs!3211 c!7184)) (head!6358 (get!10353 lt!1019586))) (tail!4583 (get!10353 lt!1019586))) lt!1019753)))

(declare-fun bm!186790 () Bool)

(assert (=> bm!186790 (= call!186795 (isEmpty!18745 (tail!4583 (get!10353 lt!1019586))))))

(declare-fun b!2881128 () Bool)

(assert (=> b!2881128 (= e!1822760 (= (head!6358 (tail!4583 (get!10353 lt!1019586))) (c!467614 (derivativeStep!2334 (h!39840 (exprs!3211 c!7184)) (head!6358 (get!10353 lt!1019586))))))))

(declare-fun b!2881129 () Bool)

(declare-fun e!1822764 () Bool)

(assert (=> b!2881129 (= e!1822764 (not lt!1019753))))

(declare-fun b!2881130 () Bool)

(declare-fun res!1193962 () Bool)

(declare-fun e!1822759 () Bool)

(assert (=> b!2881130 (=> res!1193962 e!1822759)))

(assert (=> b!2881130 (= res!1193962 (not (isEmpty!18745 (tail!4583 (tail!4583 (get!10353 lt!1019586))))))))

(declare-fun b!2881131 () Bool)

(assert (=> b!2881131 (= e!1822759 (not (= (head!6358 (tail!4583 (get!10353 lt!1019586))) (c!467614 (derivativeStep!2334 (h!39840 (exprs!3211 c!7184)) (head!6358 (get!10353 lt!1019586)))))))))

(declare-fun b!2881132 () Bool)

(assert (=> b!2881132 (= e!1822762 e!1822759)))

(declare-fun res!1193959 () Bool)

(assert (=> b!2881132 (=> res!1193959 e!1822759)))

(assert (=> b!2881132 (= res!1193959 call!186795)))

(declare-fun b!2881133 () Bool)

(assert (=> b!2881133 (= e!1822761 (nullable!2701 (derivativeStep!2334 (h!39840 (exprs!3211 c!7184)) (head!6358 (get!10353 lt!1019586)))))))

(declare-fun b!2881134 () Bool)

(declare-fun res!1193963 () Bool)

(assert (=> b!2881134 (=> res!1193963 e!1822763)))

(assert (=> b!2881134 (= res!1193963 e!1822760)))

(declare-fun res!1193958 () Bool)

(assert (=> b!2881134 (=> (not res!1193958) (not e!1822760))))

(assert (=> b!2881134 (= res!1193958 lt!1019753)))

(declare-fun b!2881135 () Bool)

(declare-fun res!1193964 () Bool)

(assert (=> b!2881135 (=> res!1193964 e!1822763)))

(assert (=> b!2881135 (= res!1193964 (not ((_ is ElementMatch!8751) (derivativeStep!2334 (h!39840 (exprs!3211 c!7184)) (head!6358 (get!10353 lt!1019586))))))))

(assert (=> b!2881135 (= e!1822764 e!1822763)))

(declare-fun b!2881136 () Bool)

(assert (=> b!2881136 (= e!1822758 e!1822764)))

(declare-fun c!467867 () Bool)

(assert (=> b!2881136 (= c!467867 ((_ is EmptyLang!8751) (derivativeStep!2334 (h!39840 (exprs!3211 c!7184)) (head!6358 (get!10353 lt!1019586)))))))

(declare-fun b!2881137 () Bool)

(declare-fun res!1193961 () Bool)

(assert (=> b!2881137 (=> (not res!1193961) (not e!1822760))))

(assert (=> b!2881137 (= res!1193961 (not call!186795))))

(assert (= (and d!833317 c!467868) b!2881133))

(assert (= (and d!833317 (not c!467868)) b!2881127))

(assert (= (and d!833317 c!467869) b!2881124))

(assert (= (and d!833317 (not c!467869)) b!2881136))

(assert (= (and b!2881136 c!467867) b!2881129))

(assert (= (and b!2881136 (not c!467867)) b!2881135))

(assert (= (and b!2881135 (not res!1193964)) b!2881134))

(assert (= (and b!2881134 res!1193958) b!2881137))

(assert (= (and b!2881137 res!1193961) b!2881126))

(assert (= (and b!2881126 res!1193960) b!2881128))

(assert (= (and b!2881134 (not res!1193963)) b!2881125))

(assert (= (and b!2881125 res!1193957) b!2881132))

(assert (= (and b!2881132 (not res!1193959)) b!2881130))

(assert (= (and b!2881130 (not res!1193962)) b!2881131))

(assert (= (or b!2881124 b!2881132 b!2881137) bm!186790))

(assert (=> bm!186790 m!3297939))

(assert (=> bm!186790 m!3297941))

(assert (=> b!2881128 m!3297939))

(declare-fun m!3298445 () Bool)

(assert (=> b!2881128 m!3298445))

(assert (=> b!2881131 m!3297939))

(assert (=> b!2881131 m!3298445))

(assert (=> b!2881130 m!3297939))

(declare-fun m!3298447 () Bool)

(assert (=> b!2881130 m!3298447))

(assert (=> b!2881130 m!3298447))

(declare-fun m!3298449 () Bool)

(assert (=> b!2881130 m!3298449))

(assert (=> d!833317 m!3297939))

(assert (=> d!833317 m!3297941))

(assert (=> d!833317 m!3297943))

(declare-fun m!3298451 () Bool)

(assert (=> d!833317 m!3298451))

(assert (=> b!2881127 m!3297939))

(assert (=> b!2881127 m!3298445))

(assert (=> b!2881127 m!3297943))

(assert (=> b!2881127 m!3298445))

(declare-fun m!3298453 () Bool)

(assert (=> b!2881127 m!3298453))

(assert (=> b!2881127 m!3297939))

(assert (=> b!2881127 m!3298447))

(assert (=> b!2881127 m!3298453))

(assert (=> b!2881127 m!3298447))

(declare-fun m!3298455 () Bool)

(assert (=> b!2881127 m!3298455))

(assert (=> b!2881126 m!3297939))

(assert (=> b!2881126 m!3298447))

(assert (=> b!2881126 m!3298447))

(assert (=> b!2881126 m!3298449))

(assert (=> b!2881133 m!3297943))

(declare-fun m!3298457 () Bool)

(assert (=> b!2881133 m!3298457))

(assert (=> b!2880728 d!833317))

(declare-fun b!2881158 () Bool)

(declare-fun e!1822777 () Regex!8751)

(assert (=> b!2881158 (= e!1822777 EmptyLang!8751)))

(declare-fun d!833319 () Bool)

(declare-fun lt!1019756 () Regex!8751)

(assert (=> d!833319 (validRegex!3529 lt!1019756)))

(assert (=> d!833319 (= lt!1019756 e!1822777)))

(declare-fun c!467883 () Bool)

(assert (=> d!833319 (= c!467883 (or ((_ is EmptyExpr!8751) (h!39840 (exprs!3211 c!7184))) ((_ is EmptyLang!8751) (h!39840 (exprs!3211 c!7184)))))))

(assert (=> d!833319 (validRegex!3529 (h!39840 (exprs!3211 c!7184)))))

(assert (=> d!833319 (= (derivativeStep!2334 (h!39840 (exprs!3211 c!7184)) (head!6358 (get!10353 lt!1019586))) lt!1019756)))

(declare-fun call!186805 () Regex!8751)

(declare-fun bm!186799 () Bool)

(declare-fun c!467880 () Bool)

(assert (=> bm!186799 (= call!186805 (derivativeStep!2334 (ite c!467880 (regTwo!18015 (h!39840 (exprs!3211 c!7184))) (regTwo!18014 (h!39840 (exprs!3211 c!7184)))) (head!6358 (get!10353 lt!1019586))))))

(declare-fun b!2881159 () Bool)

(declare-fun e!1822775 () Regex!8751)

(assert (=> b!2881159 (= e!1822775 (ite (= (head!6358 (get!10353 lt!1019586)) (c!467614 (h!39840 (exprs!3211 c!7184)))) EmptyExpr!8751 EmptyLang!8751))))

(declare-fun bm!186800 () Bool)

(declare-fun call!186804 () Regex!8751)

(declare-fun call!186807 () Regex!8751)

(assert (=> bm!186800 (= call!186804 call!186807)))

(declare-fun b!2881160 () Bool)

(assert (=> b!2881160 (= c!467880 ((_ is Union!8751) (h!39840 (exprs!3211 c!7184))))))

(declare-fun e!1822779 () Regex!8751)

(assert (=> b!2881160 (= e!1822775 e!1822779)))

(declare-fun bm!186801 () Bool)

(declare-fun call!186806 () Regex!8751)

(assert (=> bm!186801 (= call!186806 call!186804)))

(declare-fun b!2881161 () Bool)

(declare-fun c!467882 () Bool)

(assert (=> b!2881161 (= c!467882 (nullable!2701 (regOne!18014 (h!39840 (exprs!3211 c!7184)))))))

(declare-fun e!1822778 () Regex!8751)

(declare-fun e!1822776 () Regex!8751)

(assert (=> b!2881161 (= e!1822778 e!1822776)))

(declare-fun b!2881162 () Bool)

(assert (=> b!2881162 (= e!1822777 e!1822775)))

(declare-fun c!467884 () Bool)

(assert (=> b!2881162 (= c!467884 ((_ is ElementMatch!8751) (h!39840 (exprs!3211 c!7184))))))

(declare-fun b!2881163 () Bool)

(assert (=> b!2881163 (= e!1822776 (Union!8751 (Concat!14072 call!186806 (regTwo!18014 (h!39840 (exprs!3211 c!7184)))) call!186805))))

(declare-fun b!2881164 () Bool)

(assert (=> b!2881164 (= e!1822778 (Concat!14072 call!186804 (h!39840 (exprs!3211 c!7184))))))

(declare-fun b!2881165 () Bool)

(assert (=> b!2881165 (= e!1822779 e!1822778)))

(declare-fun c!467881 () Bool)

(assert (=> b!2881165 (= c!467881 ((_ is Star!8751) (h!39840 (exprs!3211 c!7184))))))

(declare-fun b!2881166 () Bool)

(assert (=> b!2881166 (= e!1822776 (Union!8751 (Concat!14072 call!186806 (regTwo!18014 (h!39840 (exprs!3211 c!7184)))) EmptyLang!8751))))

(declare-fun b!2881167 () Bool)

(assert (=> b!2881167 (= e!1822779 (Union!8751 call!186807 call!186805))))

(declare-fun bm!186802 () Bool)

(assert (=> bm!186802 (= call!186807 (derivativeStep!2334 (ite c!467880 (regOne!18015 (h!39840 (exprs!3211 c!7184))) (ite c!467881 (reg!9080 (h!39840 (exprs!3211 c!7184))) (regOne!18014 (h!39840 (exprs!3211 c!7184))))) (head!6358 (get!10353 lt!1019586))))))

(assert (= (and d!833319 c!467883) b!2881158))

(assert (= (and d!833319 (not c!467883)) b!2881162))

(assert (= (and b!2881162 c!467884) b!2881159))

(assert (= (and b!2881162 (not c!467884)) b!2881160))

(assert (= (and b!2881160 c!467880) b!2881167))

(assert (= (and b!2881160 (not c!467880)) b!2881165))

(assert (= (and b!2881165 c!467881) b!2881164))

(assert (= (and b!2881165 (not c!467881)) b!2881161))

(assert (= (and b!2881161 c!467882) b!2881163))

(assert (= (and b!2881161 (not c!467882)) b!2881166))

(assert (= (or b!2881163 b!2881166) bm!186801))

(assert (= (or b!2881164 bm!186801) bm!186800))

(assert (= (or b!2881167 bm!186800) bm!186802))

(assert (= (or b!2881167 b!2881163) bm!186799))

(declare-fun m!3298459 () Bool)

(assert (=> d!833319 m!3298459))

(assert (=> d!833319 m!3297753))

(assert (=> bm!186799 m!3297937))

(declare-fun m!3298461 () Bool)

(assert (=> bm!186799 m!3298461))

(declare-fun m!3298463 () Bool)

(assert (=> b!2881161 m!3298463))

(assert (=> bm!186802 m!3297937))

(declare-fun m!3298465 () Bool)

(assert (=> bm!186802 m!3298465))

(assert (=> b!2880728 d!833319))

(declare-fun d!833321 () Bool)

(assert (=> d!833321 (= (head!6358 (get!10353 lt!1019586)) (h!39841 (get!10353 lt!1019586)))))

(assert (=> b!2880728 d!833321))

(declare-fun d!833323 () Bool)

(assert (=> d!833323 (= (tail!4583 (get!10353 lt!1019586)) (t!233588 (get!10353 lt!1019586)))))

(assert (=> b!2880728 d!833323))

(declare-fun d!833325 () Bool)

(declare-fun lt!1019759 () Int)

(assert (=> d!833325 (>= lt!1019759 0)))

(declare-fun e!1822782 () Int)

(assert (=> d!833325 (= lt!1019759 e!1822782)))

(declare-fun c!467887 () Bool)

(assert (=> d!833325 (= c!467887 ((_ is Nil!34420) lt!1019690))))

(assert (=> d!833325 (= (size!26336 lt!1019690) lt!1019759)))

(declare-fun b!2881172 () Bool)

(assert (=> b!2881172 (= e!1822782 0)))

(declare-fun b!2881173 () Bool)

(assert (=> b!2881173 (= e!1822782 (+ 1 (size!26336 (t!233587 lt!1019690))))))

(assert (= (and d!833325 c!467887) b!2881172))

(assert (= (and d!833325 (not c!467887)) b!2881173))

(declare-fun m!3298467 () Bool)

(assert (=> b!2881173 m!3298467))

(assert (=> b!2880781 d!833325))

(declare-fun d!833327 () Bool)

(declare-fun lt!1019760 () Int)

(assert (=> d!833327 (>= lt!1019760 0)))

(declare-fun e!1822783 () Int)

(assert (=> d!833327 (= lt!1019760 e!1822783)))

(declare-fun c!467888 () Bool)

(assert (=> d!833327 (= c!467888 ((_ is Nil!34420) lt!1019591))))

(assert (=> d!833327 (= (size!26336 lt!1019591) lt!1019760)))

(declare-fun b!2881174 () Bool)

(assert (=> b!2881174 (= e!1822783 0)))

(declare-fun b!2881175 () Bool)

(assert (=> b!2881175 (= e!1822783 (+ 1 (size!26336 (t!233587 lt!1019591))))))

(assert (= (and d!833327 c!467888) b!2881174))

(assert (= (and d!833327 (not c!467888)) b!2881175))

(declare-fun m!3298469 () Bool)

(assert (=> b!2881175 m!3298469))

(assert (=> b!2880781 d!833327))

(declare-fun d!833329 () Bool)

(declare-fun lt!1019761 () Int)

(assert (=> d!833329 (>= lt!1019761 0)))

(declare-fun e!1822784 () Int)

(assert (=> d!833329 (= lt!1019761 e!1822784)))

(declare-fun c!467889 () Bool)

(assert (=> d!833329 (= c!467889 ((_ is Nil!34420) (t!233587 (exprs!3211 c!7184))))))

(assert (=> d!833329 (= (size!26336 (t!233587 (exprs!3211 c!7184))) lt!1019761)))

(declare-fun b!2881176 () Bool)

(assert (=> b!2881176 (= e!1822784 0)))

(declare-fun b!2881177 () Bool)

(assert (=> b!2881177 (= e!1822784 (+ 1 (size!26336 (t!233587 (t!233587 (exprs!3211 c!7184))))))))

(assert (= (and d!833329 c!467889) b!2881176))

(assert (= (and d!833329 (not c!467889)) b!2881177))

(declare-fun m!3298471 () Bool)

(assert (=> b!2881177 m!3298471))

(assert (=> b!2880781 d!833329))

(declare-fun d!833331 () Bool)

(assert (=> d!833331 (matchZipper!493 (store ((as const (Array Context!5422 Bool)) false) lt!1019595 true) (get!10353 (getLanguageWitness!453 lt!1019595)))))

(assert (=> d!833331 true))

(declare-fun _$31!184 () Unit!48003)

(assert (=> d!833331 (= (choose!17041 lt!1019595) _$31!184)))

(declare-fun bs!523535 () Bool)

(assert (= bs!523535 d!833331))

(assert (=> bs!523535 m!3297685))

(assert (=> bs!523535 m!3297651))

(assert (=> bs!523535 m!3297651))

(assert (=> bs!523535 m!3297891))

(assert (=> bs!523535 m!3297685))

(assert (=> bs!523535 m!3297891))

(assert (=> bs!523535 m!3297893))

(assert (=> d!833067 d!833331))

(assert (=> d!833067 d!833109))

(declare-fun d!833333 () Bool)

(assert (=> d!833333 (= (get!10353 (getLanguageWitness!453 lt!1019595)) (v!34551 (getLanguageWitness!453 lt!1019595)))))

(assert (=> d!833067 d!833333))

(declare-fun d!833335 () Bool)

(declare-fun c!467891 () Bool)

(assert (=> d!833335 (= c!467891 (isEmpty!18745 (get!10353 (getLanguageWitness!453 lt!1019595))))))

(declare-fun e!1822785 () Bool)

(assert (=> d!833335 (= (matchZipper!493 (store ((as const (Array Context!5422 Bool)) false) lt!1019595 true) (get!10353 (getLanguageWitness!453 lt!1019595))) e!1822785)))

(declare-fun b!2881178 () Bool)

(assert (=> b!2881178 (= e!1822785 (nullableZipper!729 (store ((as const (Array Context!5422 Bool)) false) lt!1019595 true)))))

(declare-fun b!2881179 () Bool)

(assert (=> b!2881179 (= e!1822785 (matchZipper!493 (derivationStepZipper!485 (store ((as const (Array Context!5422 Bool)) false) lt!1019595 true) (head!6358 (get!10353 (getLanguageWitness!453 lt!1019595)))) (tail!4583 (get!10353 (getLanguageWitness!453 lt!1019595)))))))

(assert (= (and d!833335 c!467891) b!2881178))

(assert (= (and d!833335 (not c!467891)) b!2881179))

(assert (=> d!833335 m!3297891))

(declare-fun m!3298473 () Bool)

(assert (=> d!833335 m!3298473))

(assert (=> b!2881178 m!3297685))

(declare-fun m!3298475 () Bool)

(assert (=> b!2881178 m!3298475))

(assert (=> b!2881179 m!3297891))

(declare-fun m!3298477 () Bool)

(assert (=> b!2881179 m!3298477))

(assert (=> b!2881179 m!3297685))

(assert (=> b!2881179 m!3298477))

(declare-fun m!3298479 () Bool)

(assert (=> b!2881179 m!3298479))

(assert (=> b!2881179 m!3297891))

(declare-fun m!3298481 () Bool)

(assert (=> b!2881179 m!3298481))

(assert (=> b!2881179 m!3298479))

(assert (=> b!2881179 m!3298481))

(declare-fun m!3298483 () Bool)

(assert (=> b!2881179 m!3298483))

(assert (=> d!833067 d!833335))

(declare-fun bs!523536 () Bool)

(declare-fun d!833337 () Bool)

(assert (= bs!523536 (and d!833337 b!2880453)))

(declare-fun lambda!107560 () Int)

(assert (=> bs!523536 (not (= lambda!107560 lambda!107502))))

(declare-fun bs!523537 () Bool)

(assert (= bs!523537 (and d!833337 d!833099)))

(assert (=> bs!523537 (not (= lambda!107560 lambda!107524))))

(declare-fun bs!523538 () Bool)

(assert (= bs!523538 (and d!833337 d!833055)))

(assert (=> bs!523538 (= lambda!107560 lambda!107511)))

(declare-fun bs!523539 () Bool)

(assert (= bs!523539 (and d!833337 d!833063)))

(assert (=> bs!523539 (not (= lambda!107560 lambda!107514))))

(declare-fun bs!523540 () Bool)

(assert (= bs!523540 (and d!833337 d!833311)))

(assert (=> bs!523540 (= lambda!107560 lambda!107559)))

(declare-fun bs!523541 () Bool)

(assert (= bs!523541 (and d!833337 d!833291)))

(assert (=> bs!523541 (not (= lambda!107560 lambda!107555))))

(declare-fun bs!523542 () Bool)

(assert (= bs!523542 (and d!833337 d!833101)))

(assert (=> bs!523542 (= lambda!107560 lambda!107527)))

(declare-fun bs!523543 () Bool)

(assert (= bs!523543 (and d!833337 d!833109)))

(assert (=> bs!523543 (= lambda!107560 lambda!107528)))

(assert (=> d!833337 (= (lostCause!843 lt!1019595) (exists!1192 (exprs!3211 lt!1019595) lambda!107560))))

(declare-fun bs!523544 () Bool)

(assert (= bs!523544 d!833337))

(declare-fun m!3298485 () Bool)

(assert (=> bs!523544 m!3298485))

(assert (=> d!833067 d!833337))

(declare-fun d!833339 () Bool)

(declare-fun c!467892 () Bool)

(assert (=> d!833339 (= c!467892 (isEmpty!18745 (tail!4583 (get!10353 (getLanguageWitness!453 c!7184)))))))

(declare-fun e!1822786 () Bool)

(assert (=> d!833339 (= (matchZipper!493 (derivationStepZipper!485 (store ((as const (Array Context!5422 Bool)) false) c!7184 true) (head!6358 (get!10353 (getLanguageWitness!453 c!7184)))) (tail!4583 (get!10353 (getLanguageWitness!453 c!7184)))) e!1822786)))

(declare-fun b!2881180 () Bool)

(assert (=> b!2881180 (= e!1822786 (nullableZipper!729 (derivationStepZipper!485 (store ((as const (Array Context!5422 Bool)) false) c!7184 true) (head!6358 (get!10353 (getLanguageWitness!453 c!7184))))))))

(declare-fun b!2881181 () Bool)

(assert (=> b!2881181 (= e!1822786 (matchZipper!493 (derivationStepZipper!485 (derivationStepZipper!485 (store ((as const (Array Context!5422 Bool)) false) c!7184 true) (head!6358 (get!10353 (getLanguageWitness!453 c!7184)))) (head!6358 (tail!4583 (get!10353 (getLanguageWitness!453 c!7184))))) (tail!4583 (tail!4583 (get!10353 (getLanguageWitness!453 c!7184))))))))

(assert (= (and d!833339 c!467892) b!2881180))

(assert (= (and d!833339 (not c!467892)) b!2881181))

(assert (=> d!833339 m!3298021))

(declare-fun m!3298487 () Bool)

(assert (=> d!833339 m!3298487))

(assert (=> b!2881180 m!3298019))

(declare-fun m!3298489 () Bool)

(assert (=> b!2881180 m!3298489))

(assert (=> b!2881181 m!3298021))

(declare-fun m!3298491 () Bool)

(assert (=> b!2881181 m!3298491))

(assert (=> b!2881181 m!3298019))

(assert (=> b!2881181 m!3298491))

(declare-fun m!3298493 () Bool)

(assert (=> b!2881181 m!3298493))

(assert (=> b!2881181 m!3298021))

(declare-fun m!3298495 () Bool)

(assert (=> b!2881181 m!3298495))

(assert (=> b!2881181 m!3298493))

(assert (=> b!2881181 m!3298495))

(declare-fun m!3298497 () Bool)

(assert (=> b!2881181 m!3298497))

(assert (=> b!2880784 d!833339))

(declare-fun d!833341 () Bool)

(assert (=> d!833341 true))

(declare-fun lambda!107563 () Int)

(declare-fun flatMap!232 ((InoxSet Context!5422) Int) (InoxSet Context!5422))

(assert (=> d!833341 (= (derivationStepZipper!485 (store ((as const (Array Context!5422 Bool)) false) c!7184 true) (head!6358 (get!10353 (getLanguageWitness!453 c!7184)))) (flatMap!232 (store ((as const (Array Context!5422 Bool)) false) c!7184 true) lambda!107563))))

(declare-fun bs!523545 () Bool)

(assert (= bs!523545 d!833341))

(assert (=> bs!523545 m!3297655))

(declare-fun m!3298499 () Bool)

(assert (=> bs!523545 m!3298499))

(assert (=> b!2880784 d!833341))

(declare-fun d!833343 () Bool)

(assert (=> d!833343 (= (head!6358 (get!10353 (getLanguageWitness!453 c!7184))) (h!39841 (get!10353 (getLanguageWitness!453 c!7184))))))

(assert (=> b!2880784 d!833343))

(declare-fun d!833345 () Bool)

(assert (=> d!833345 (= (tail!4583 (get!10353 (getLanguageWitness!453 c!7184))) (t!233588 (get!10353 (getLanguageWitness!453 c!7184))))))

(assert (=> b!2880784 d!833345))

(declare-fun bs!523546 () Bool)

(declare-fun d!833347 () Bool)

(assert (= bs!523546 (and d!833347 d!833309)))

(declare-fun lambda!107564 () Int)

(assert (=> bs!523546 (= lambda!107564 lambda!107558)))

(assert (=> d!833347 (= (nullableZipper!729 lt!1019588) (exists!1194 lt!1019588 lambda!107564))))

(declare-fun bs!523547 () Bool)

(assert (= bs!523547 d!833347))

(declare-fun m!3298501 () Bool)

(assert (=> bs!523547 m!3298501))

(assert (=> b!2880460 d!833347))

(declare-fun d!833349 () Bool)

(assert (=> d!833349 (= (isEmpty!18745 (get!10353 lt!1019586)) ((_ is Nil!34421) (get!10353 lt!1019586)))))

(assert (=> bm!186753 d!833349))

(declare-fun d!833351 () Bool)

(declare-fun c!467897 () Bool)

(assert (=> d!833351 (= c!467897 ((_ is Nil!34421) lt!1019672))))

(declare-fun e!1822789 () (InoxSet C!17684))

(assert (=> d!833351 (= (content!4716 lt!1019672) e!1822789)))

(declare-fun b!2881188 () Bool)

(assert (=> b!2881188 (= e!1822789 ((as const (Array C!17684 Bool)) false))))

(declare-fun b!2881189 () Bool)

(assert (=> b!2881189 (= e!1822789 ((_ map or) (store ((as const (Array C!17684 Bool)) false) (h!39841 lt!1019672) true) (content!4716 (t!233588 lt!1019672))))))

(assert (= (and d!833351 c!467897) b!2881188))

(assert (= (and d!833351 (not c!467897)) b!2881189))

(declare-fun m!3298503 () Bool)

(assert (=> b!2881189 m!3298503))

(declare-fun m!3298505 () Bool)

(assert (=> b!2881189 m!3298505))

(assert (=> d!833095 d!833351))

(declare-fun d!833353 () Bool)

(declare-fun c!467898 () Bool)

(assert (=> d!833353 (= c!467898 ((_ is Nil!34421) (v!34551 lt!1019586)))))

(declare-fun e!1822790 () (InoxSet C!17684))

(assert (=> d!833353 (= (content!4716 (v!34551 lt!1019586)) e!1822790)))

(declare-fun b!2881190 () Bool)

(assert (=> b!2881190 (= e!1822790 ((as const (Array C!17684 Bool)) false))))

(declare-fun b!2881191 () Bool)

(assert (=> b!2881191 (= e!1822790 ((_ map or) (store ((as const (Array C!17684 Bool)) false) (h!39841 (v!34551 lt!1019586)) true) (content!4716 (t!233588 (v!34551 lt!1019586)))))))

(assert (= (and d!833353 c!467898) b!2881190))

(assert (= (and d!833353 (not c!467898)) b!2881191))

(declare-fun m!3298507 () Bool)

(assert (=> b!2881191 m!3298507))

(declare-fun m!3298509 () Bool)

(assert (=> b!2881191 m!3298509))

(assert (=> d!833095 d!833353))

(declare-fun d!833355 () Bool)

(declare-fun c!467899 () Bool)

(assert (=> d!833355 (= c!467899 ((_ is Nil!34421) (v!34551 lt!1019584)))))

(declare-fun e!1822791 () (InoxSet C!17684))

(assert (=> d!833355 (= (content!4716 (v!34551 lt!1019584)) e!1822791)))

(declare-fun b!2881192 () Bool)

(assert (=> b!2881192 (= e!1822791 ((as const (Array C!17684 Bool)) false))))

(declare-fun b!2881193 () Bool)

(assert (=> b!2881193 (= e!1822791 ((_ map or) (store ((as const (Array C!17684 Bool)) false) (h!39841 (v!34551 lt!1019584)) true) (content!4716 (t!233588 (v!34551 lt!1019584)))))))

(assert (= (and d!833355 c!467899) b!2881192))

(assert (= (and d!833355 (not c!467899)) b!2881193))

(declare-fun m!3298511 () Bool)

(assert (=> b!2881193 m!3298511))

(declare-fun m!3298513 () Bool)

(assert (=> b!2881193 m!3298513))

(assert (=> d!833095 d!833355))

(declare-fun b!2881194 () Bool)

(declare-fun e!1822792 () List!34545)

(assert (=> b!2881194 (= e!1822792 (v!34551 lt!1019693))))

(declare-fun b!2881195 () Bool)

(assert (=> b!2881195 (= e!1822792 (Cons!34421 (h!39841 (v!34551 lt!1019691)) (++!8189 (t!233588 (v!34551 lt!1019691)) (v!34551 lt!1019693))))))

(declare-fun b!2881197 () Bool)

(declare-fun lt!1019762 () List!34545)

(declare-fun e!1822793 () Bool)

(assert (=> b!2881197 (= e!1822793 (or (not (= (v!34551 lt!1019693) Nil!34421)) (= lt!1019762 (v!34551 lt!1019691))))))

(declare-fun b!2881196 () Bool)

(declare-fun res!1193965 () Bool)

(assert (=> b!2881196 (=> (not res!1193965) (not e!1822793))))

(assert (=> b!2881196 (= res!1193965 (= (size!26335 lt!1019762) (+ (size!26335 (v!34551 lt!1019691)) (size!26335 (v!34551 lt!1019693)))))))

(declare-fun d!833357 () Bool)

(assert (=> d!833357 e!1822793))

(declare-fun res!1193966 () Bool)

(assert (=> d!833357 (=> (not res!1193966) (not e!1822793))))

(assert (=> d!833357 (= res!1193966 (= (content!4716 lt!1019762) ((_ map or) (content!4716 (v!34551 lt!1019691)) (content!4716 (v!34551 lt!1019693)))))))

(assert (=> d!833357 (= lt!1019762 e!1822792)))

(declare-fun c!467900 () Bool)

(assert (=> d!833357 (= c!467900 ((_ is Nil!34421) (v!34551 lt!1019691)))))

(assert (=> d!833357 (= (++!8189 (v!34551 lt!1019691) (v!34551 lt!1019693)) lt!1019762)))

(assert (= (and d!833357 c!467900) b!2881194))

(assert (= (and d!833357 (not c!467900)) b!2881195))

(assert (= (and d!833357 res!1193966) b!2881196))

(assert (= (and b!2881196 res!1193965) b!2881197))

(declare-fun m!3298515 () Bool)

(assert (=> b!2881195 m!3298515))

(declare-fun m!3298517 () Bool)

(assert (=> b!2881196 m!3298517))

(declare-fun m!3298519 () Bool)

(assert (=> b!2881196 m!3298519))

(declare-fun m!3298521 () Bool)

(assert (=> b!2881196 m!3298521))

(declare-fun m!3298523 () Bool)

(assert (=> d!833357 m!3298523))

(declare-fun m!3298525 () Bool)

(assert (=> d!833357 m!3298525))

(declare-fun m!3298527 () Bool)

(assert (=> d!833357 m!3298527))

(assert (=> b!2880785 d!833357))

(declare-fun d!833359 () Bool)

(assert (=> d!833359 (= (isEmpty!18745 (tail!4583 (v!34551 lt!1019586))) ((_ is Nil!34421) (tail!4583 (v!34551 lt!1019586))))))

(assert (=> b!2880711 d!833359))

(declare-fun d!833361 () Bool)

(assert (=> d!833361 (= (tail!4583 (v!34551 lt!1019586)) (t!233588 (v!34551 lt!1019586)))))

(assert (=> b!2880711 d!833361))

(declare-fun bs!523548 () Bool)

(declare-fun d!833363 () Bool)

(assert (= bs!523548 (and d!833363 b!2880453)))

(declare-fun lambda!107565 () Int)

(assert (=> bs!523548 (not (= lambda!107565 lambda!107502))))

(declare-fun bs!523549 () Bool)

(assert (= bs!523549 (and d!833363 d!833099)))

(assert (=> bs!523549 (not (= lambda!107565 lambda!107524))))

(declare-fun bs!523550 () Bool)

(assert (= bs!523550 (and d!833363 d!833055)))

(assert (=> bs!523550 (= lambda!107565 lambda!107511)))

(declare-fun bs!523551 () Bool)

(assert (= bs!523551 (and d!833363 d!833337)))

(assert (=> bs!523551 (= lambda!107565 lambda!107560)))

(declare-fun bs!523552 () Bool)

(assert (= bs!523552 (and d!833363 d!833063)))

(assert (=> bs!523552 (not (= lambda!107565 lambda!107514))))

(declare-fun bs!523553 () Bool)

(assert (= bs!523553 (and d!833363 d!833311)))

(assert (=> bs!523553 (= lambda!107565 lambda!107559)))

(declare-fun bs!523554 () Bool)

(assert (= bs!523554 (and d!833363 d!833291)))

(assert (=> bs!523554 (not (= lambda!107565 lambda!107555))))

(declare-fun bs!523555 () Bool)

(assert (= bs!523555 (and d!833363 d!833101)))

(assert (=> bs!523555 (= lambda!107565 lambda!107527)))

(declare-fun bs!523556 () Bool)

(assert (= bs!523556 (and d!833363 d!833109)))

(assert (=> bs!523556 (= lambda!107565 lambda!107528)))

(declare-fun b!2881198 () Bool)

(declare-fun e!1822795 () Option!6426)

(declare-fun lt!1019763 () Option!6426)

(declare-fun lt!1019765 () Option!6426)

(assert (=> b!2881198 (= e!1822795 (Some!6425 (++!8189 (v!34551 lt!1019763) (v!34551 lt!1019765))))))

(declare-fun b!2881199 () Bool)

(declare-fun e!1822794 () Option!6426)

(assert (=> b!2881199 (= e!1822794 None!6425)))

(declare-fun lt!1019764 () Option!6426)

(assert (=> d!833363 (= (isEmpty!18746 lt!1019764) (exists!1192 (exprs!3211 (Context!5423 (t!233587 (exprs!3211 lt!1019595)))) lambda!107565))))

(declare-fun e!1822796 () Option!6426)

(assert (=> d!833363 (= lt!1019764 e!1822796)))

(declare-fun c!467902 () Bool)

(assert (=> d!833363 (= c!467902 ((_ is Cons!34420) (exprs!3211 (Context!5423 (t!233587 (exprs!3211 lt!1019595))))))))

(assert (=> d!833363 (= (getLanguageWitness!453 (Context!5423 (t!233587 (exprs!3211 lt!1019595)))) lt!1019764)))

(declare-fun b!2881200 () Bool)

(declare-fun c!467903 () Bool)

(assert (=> b!2881200 (= c!467903 ((_ is Some!6425) lt!1019765))))

(assert (=> b!2881200 (= lt!1019765 (getLanguageWitness!453 (Context!5423 (t!233587 (exprs!3211 (Context!5423 (t!233587 (exprs!3211 lt!1019595))))))))))

(assert (=> b!2881200 (= e!1822794 e!1822795)))

(declare-fun b!2881201 () Bool)

(assert (=> b!2881201 (= e!1822796 (Some!6425 Nil!34421))))

(declare-fun b!2881202 () Bool)

(assert (=> b!2881202 (= e!1822796 e!1822794)))

(assert (=> b!2881202 (= lt!1019763 (getLanguageWitness!454 (h!39840 (exprs!3211 (Context!5423 (t!233587 (exprs!3211 lt!1019595)))))))))

(declare-fun c!467901 () Bool)

(assert (=> b!2881202 (= c!467901 ((_ is Some!6425) lt!1019763))))

(declare-fun b!2881203 () Bool)

(assert (=> b!2881203 (= e!1822795 None!6425)))

(assert (= (and d!833363 c!467902) b!2881202))

(assert (= (and d!833363 (not c!467902)) b!2881201))

(assert (= (and b!2881202 c!467901) b!2881200))

(assert (= (and b!2881202 (not c!467901)) b!2881199))

(assert (= (and b!2881200 c!467903) b!2881198))

(assert (= (and b!2881200 (not c!467903)) b!2881203))

(declare-fun m!3298529 () Bool)

(assert (=> b!2881198 m!3298529))

(declare-fun m!3298531 () Bool)

(assert (=> d!833363 m!3298531))

(declare-fun m!3298533 () Bool)

(assert (=> d!833363 m!3298533))

(declare-fun m!3298535 () Bool)

(assert (=> b!2881200 m!3298535))

(declare-fun m!3298537 () Bool)

(assert (=> b!2881202 m!3298537))

(assert (=> b!2880787 d!833363))

(declare-fun bs!523557 () Bool)

(declare-fun d!833365 () Bool)

(assert (= bs!523557 (and d!833365 d!833309)))

(declare-fun lambda!107566 () Int)

(assert (=> bs!523557 (= lambda!107566 lambda!107558)))

(declare-fun bs!523558 () Bool)

(assert (= bs!523558 (and d!833365 d!833347)))

(assert (=> bs!523558 (= lambda!107566 lambda!107564)))

(assert (=> d!833365 (= (nullableZipper!729 lt!1019587) (exists!1194 lt!1019587 lambda!107566))))

(declare-fun bs!523559 () Bool)

(assert (= bs!523559 d!833365))

(declare-fun m!3298539 () Bool)

(assert (=> bs!523559 m!3298539))

(assert (=> b!2880723 d!833365))

(declare-fun d!833367 () Bool)

(declare-fun c!467904 () Bool)

(assert (=> d!833367 (= c!467904 (isEmpty!18745 (tail!4583 (v!34551 lt!1019584))))))

(declare-fun e!1822797 () Bool)

(assert (=> d!833367 (= (matchZipper!493 (derivationStepZipper!485 lt!1019587 (head!6358 (v!34551 lt!1019584))) (tail!4583 (v!34551 lt!1019584))) e!1822797)))

(declare-fun b!2881204 () Bool)

(assert (=> b!2881204 (= e!1822797 (nullableZipper!729 (derivationStepZipper!485 lt!1019587 (head!6358 (v!34551 lt!1019584)))))))

(declare-fun b!2881205 () Bool)

(assert (=> b!2881205 (= e!1822797 (matchZipper!493 (derivationStepZipper!485 (derivationStepZipper!485 lt!1019587 (head!6358 (v!34551 lt!1019584))) (head!6358 (tail!4583 (v!34551 lt!1019584)))) (tail!4583 (tail!4583 (v!34551 lt!1019584)))))))

(assert (= (and d!833367 c!467904) b!2881204))

(assert (= (and d!833367 (not c!467904)) b!2881205))

(assert (=> d!833367 m!3297709))

(declare-fun m!3298541 () Bool)

(assert (=> d!833367 m!3298541))

(assert (=> b!2881204 m!3297707))

(declare-fun m!3298543 () Bool)

(assert (=> b!2881204 m!3298543))

(assert (=> b!2881205 m!3297709))

(declare-fun m!3298545 () Bool)

(assert (=> b!2881205 m!3298545))

(assert (=> b!2881205 m!3297707))

(assert (=> b!2881205 m!3298545))

(declare-fun m!3298547 () Bool)

(assert (=> b!2881205 m!3298547))

(assert (=> b!2881205 m!3297709))

(declare-fun m!3298549 () Bool)

(assert (=> b!2881205 m!3298549))

(assert (=> b!2881205 m!3298547))

(assert (=> b!2881205 m!3298549))

(declare-fun m!3298551 () Bool)

(assert (=> b!2881205 m!3298551))

(assert (=> b!2880459 d!833367))

(declare-fun bs!523560 () Bool)

(declare-fun d!833369 () Bool)

(assert (= bs!523560 (and d!833369 d!833341)))

(declare-fun lambda!107567 () Int)

(assert (=> bs!523560 (= (= (head!6358 (v!34551 lt!1019584)) (head!6358 (get!10353 (getLanguageWitness!453 c!7184)))) (= lambda!107567 lambda!107563))))

(assert (=> d!833369 true))

(assert (=> d!833369 (= (derivationStepZipper!485 lt!1019587 (head!6358 (v!34551 lt!1019584))) (flatMap!232 lt!1019587 lambda!107567))))

(declare-fun bs!523561 () Bool)

(assert (= bs!523561 d!833369))

(declare-fun m!3298553 () Bool)

(assert (=> bs!523561 m!3298553))

(assert (=> b!2880459 d!833369))

(declare-fun d!833371 () Bool)

(assert (=> d!833371 (= (head!6358 (v!34551 lt!1019584)) (h!39841 (v!34551 lt!1019584)))))

(assert (=> b!2880459 d!833371))

(declare-fun d!833373 () Bool)

(assert (=> d!833373 (= (tail!4583 (v!34551 lt!1019584)) (t!233588 (v!34551 lt!1019584)))))

(assert (=> b!2880459 d!833373))

(assert (=> b!2880732 d!833321))

(assert (=> b!2880734 d!833287))

(assert (=> bm!186752 d!833315))

(declare-fun b!2881207 () Bool)

(declare-fun e!1822804 () Option!6426)

(assert (=> b!2881207 (= e!1822804 (Some!6425 Nil!34421))))

(declare-fun b!2881208 () Bool)

(declare-fun e!1822799 () Option!6426)

(assert (=> b!2881208 (= e!1822799 (Some!6425 (Cons!34421 (c!467614 (h!39840 (exprs!3211 lt!1019595))) Nil!34421)))))

(declare-fun b!2881209 () Bool)

(declare-fun c!467912 () Bool)

(assert (=> b!2881209 (= c!467912 ((_ is Union!8751) (h!39840 (exprs!3211 lt!1019595))))))

(declare-fun e!1822803 () Option!6426)

(declare-fun e!1822802 () Option!6426)

(assert (=> b!2881209 (= e!1822803 e!1822802)))

(declare-fun b!2881210 () Bool)

(declare-fun c!467907 () Bool)

(assert (=> b!2881210 (= c!467907 ((_ is ElementMatch!8751) (h!39840 (exprs!3211 lt!1019595))))))

(declare-fun e!1822805 () Option!6426)

(assert (=> b!2881210 (= e!1822805 e!1822799)))

(declare-fun b!2881211 () Bool)

(declare-fun c!467910 () Bool)

(declare-fun lt!1019766 () Option!6426)

(assert (=> b!2881211 (= c!467910 ((_ is Some!6425) lt!1019766))))

(declare-fun call!186809 () Option!6426)

(assert (=> b!2881211 (= lt!1019766 call!186809)))

(declare-fun e!1822798 () Option!6426)

(declare-fun e!1822800 () Option!6426)

(assert (=> b!2881211 (= e!1822798 e!1822800)))

(declare-fun b!2881212 () Bool)

(assert (=> b!2881212 (= e!1822800 None!6425)))

(declare-fun b!2881213 () Bool)

(declare-fun lt!1019767 () Option!6426)

(assert (=> b!2881213 (= e!1822800 (Some!6425 (++!8189 (v!34551 lt!1019767) (v!34551 lt!1019766))))))

(declare-fun bm!186803 () Bool)

(assert (=> bm!186803 (= call!186809 (getLanguageWitness!454 (ite c!467912 (regTwo!18015 (h!39840 (exprs!3211 lt!1019595))) (regTwo!18014 (h!39840 (exprs!3211 lt!1019595))))))))

(declare-fun bm!186804 () Bool)

(declare-fun call!186808 () Option!6426)

(assert (=> bm!186804 (= call!186808 (getLanguageWitness!454 (ite c!467912 (regOne!18015 (h!39840 (exprs!3211 lt!1019595))) (regOne!18014 (h!39840 (exprs!3211 lt!1019595))))))))

(declare-fun b!2881214 () Bool)

(assert (=> b!2881214 (= e!1822805 None!6425)))

(declare-fun b!2881206 () Bool)

(assert (=> b!2881206 (= e!1822803 (Some!6425 Nil!34421))))

(declare-fun d!833375 () Bool)

(declare-fun c!467911 () Bool)

(assert (=> d!833375 (= c!467911 ((_ is EmptyExpr!8751) (h!39840 (exprs!3211 lt!1019595))))))

(assert (=> d!833375 (= (getLanguageWitness!454 (h!39840 (exprs!3211 lt!1019595))) e!1822804)))

(declare-fun b!2881215 () Bool)

(declare-fun e!1822801 () Option!6426)

(assert (=> b!2881215 (= e!1822801 call!186809)))

(declare-fun b!2881216 () Bool)

(assert (=> b!2881216 (= e!1822802 e!1822798)))

(assert (=> b!2881216 (= lt!1019767 call!186808)))

(declare-fun c!467909 () Bool)

(assert (=> b!2881216 (= c!467909 ((_ is Some!6425) lt!1019767))))

(declare-fun b!2881217 () Bool)

(assert (=> b!2881217 (= e!1822798 None!6425)))

(declare-fun b!2881218 () Bool)

(assert (=> b!2881218 (= e!1822802 e!1822801)))

(declare-fun lt!1019768 () Option!6426)

(assert (=> b!2881218 (= lt!1019768 call!186808)))

(declare-fun c!467906 () Bool)

(assert (=> b!2881218 (= c!467906 ((_ is Some!6425) lt!1019768))))

(declare-fun b!2881219 () Bool)

(assert (=> b!2881219 (= e!1822799 e!1822803)))

(declare-fun c!467905 () Bool)

(assert (=> b!2881219 (= c!467905 ((_ is Star!8751) (h!39840 (exprs!3211 lt!1019595))))))

(declare-fun b!2881220 () Bool)

(assert (=> b!2881220 (= e!1822804 e!1822805)))

(declare-fun c!467908 () Bool)

(assert (=> b!2881220 (= c!467908 ((_ is EmptyLang!8751) (h!39840 (exprs!3211 lt!1019595))))))

(declare-fun b!2881221 () Bool)

(assert (=> b!2881221 (= e!1822801 lt!1019768)))

(assert (= (and d!833375 c!467911) b!2881207))

(assert (= (and d!833375 (not c!467911)) b!2881220))

(assert (= (and b!2881220 c!467908) b!2881214))

(assert (= (and b!2881220 (not c!467908)) b!2881210))

(assert (= (and b!2881210 c!467907) b!2881208))

(assert (= (and b!2881210 (not c!467907)) b!2881219))

(assert (= (and b!2881219 c!467905) b!2881206))

(assert (= (and b!2881219 (not c!467905)) b!2881209))

(assert (= (and b!2881209 c!467912) b!2881218))

(assert (= (and b!2881209 (not c!467912)) b!2881216))

(assert (= (and b!2881218 c!467906) b!2881221))

(assert (= (and b!2881218 (not c!467906)) b!2881215))

(assert (= (and b!2881216 c!467909) b!2881211))

(assert (= (and b!2881216 (not c!467909)) b!2881217))

(assert (= (and b!2881211 c!467910) b!2881213))

(assert (= (and b!2881211 (not c!467910)) b!2881212))

(assert (= (or b!2881215 b!2881211) bm!186803))

(assert (= (or b!2881218 b!2881216) bm!186804))

(declare-fun m!3298555 () Bool)

(assert (=> b!2881213 m!3298555))

(declare-fun m!3298557 () Bool)

(assert (=> bm!186803 m!3298557))

(declare-fun m!3298559 () Bool)

(assert (=> bm!186804 m!3298559))

(assert (=> b!2880789 d!833375))

(assert (=> d!833031 d!833081))

(assert (=> d!833031 d!833029))

(declare-fun d!833377 () Bool)

(assert (=> d!833377 (= (matchR!3751 (h!39840 (exprs!3211 c!7184)) (v!34551 lt!1019586)) (matchZipper!493 lt!1019588 (v!34551 lt!1019586)))))

(assert (=> d!833377 true))

(declare-fun _$44!1320 () Unit!48003)

(assert (=> d!833377 (= (choose!17040 lt!1019588 (Cons!34422 lt!1019590 Nil!34422) (h!39840 (exprs!3211 c!7184)) (v!34551 lt!1019586)) _$44!1320)))

(declare-fun bs!523562 () Bool)

(assert (= bs!523562 d!833377))

(assert (=> bs!523562 m!3297683))

(assert (=> bs!523562 m!3297645))

(assert (=> d!833031 d!833377))

(declare-fun b!2881240 () Bool)

(declare-fun e!1822826 () Bool)

(declare-fun e!1822824 () Bool)

(assert (=> b!2881240 (= e!1822826 e!1822824)))

(declare-fun res!1193980 () Bool)

(assert (=> b!2881240 (= res!1193980 (not (nullable!2701 (reg!9080 (h!39840 (exprs!3211 c!7184))))))))

(assert (=> b!2881240 (=> (not res!1193980) (not e!1822824))))

(declare-fun b!2881241 () Bool)

(declare-fun res!1193981 () Bool)

(declare-fun e!1822825 () Bool)

(assert (=> b!2881241 (=> res!1193981 e!1822825)))

(assert (=> b!2881241 (= res!1193981 (not ((_ is Concat!14072) (h!39840 (exprs!3211 c!7184)))))))

(declare-fun e!1822821 () Bool)

(assert (=> b!2881241 (= e!1822821 e!1822825)))

(declare-fun b!2881242 () Bool)

(assert (=> b!2881242 (= e!1822826 e!1822821)))

(declare-fun c!467918 () Bool)

(assert (=> b!2881242 (= c!467918 ((_ is Union!8751) (h!39840 (exprs!3211 c!7184))))))

(declare-fun bm!186811 () Bool)

(declare-fun call!186818 () Bool)

(declare-fun c!467917 () Bool)

(assert (=> bm!186811 (= call!186818 (validRegex!3529 (ite c!467917 (reg!9080 (h!39840 (exprs!3211 c!7184))) (ite c!467918 (regOne!18015 (h!39840 (exprs!3211 c!7184))) (regTwo!18014 (h!39840 (exprs!3211 c!7184)))))))))

(declare-fun b!2881243 () Bool)

(assert (=> b!2881243 (= e!1822824 call!186818)))

(declare-fun b!2881244 () Bool)

(declare-fun e!1822822 () Bool)

(assert (=> b!2881244 (= e!1822825 e!1822822)))

(declare-fun res!1193979 () Bool)

(assert (=> b!2881244 (=> (not res!1193979) (not e!1822822))))

(declare-fun call!186816 () Bool)

(assert (=> b!2881244 (= res!1193979 call!186816)))

(declare-fun b!2881245 () Bool)

(declare-fun e!1822820 () Bool)

(assert (=> b!2881245 (= e!1822820 call!186816)))

(declare-fun b!2881246 () Bool)

(declare-fun e!1822823 () Bool)

(assert (=> b!2881246 (= e!1822823 e!1822826)))

(assert (=> b!2881246 (= c!467917 ((_ is Star!8751) (h!39840 (exprs!3211 c!7184))))))

(declare-fun b!2881247 () Bool)

(declare-fun call!186817 () Bool)

(assert (=> b!2881247 (= e!1822822 call!186817)))

(declare-fun b!2881248 () Bool)

(declare-fun res!1193978 () Bool)

(assert (=> b!2881248 (=> (not res!1193978) (not e!1822820))))

(assert (=> b!2881248 (= res!1193978 call!186817)))

(assert (=> b!2881248 (= e!1822821 e!1822820)))

(declare-fun d!833379 () Bool)

(declare-fun res!1193977 () Bool)

(assert (=> d!833379 (=> res!1193977 e!1822823)))

(assert (=> d!833379 (= res!1193977 ((_ is ElementMatch!8751) (h!39840 (exprs!3211 c!7184))))))

(assert (=> d!833379 (= (validRegex!3529 (h!39840 (exprs!3211 c!7184))) e!1822823)))

(declare-fun bm!186812 () Bool)

(assert (=> bm!186812 (= call!186817 call!186818)))

(declare-fun bm!186813 () Bool)

(assert (=> bm!186813 (= call!186816 (validRegex!3529 (ite c!467918 (regTwo!18015 (h!39840 (exprs!3211 c!7184))) (regOne!18014 (h!39840 (exprs!3211 c!7184))))))))

(assert (= (and d!833379 (not res!1193977)) b!2881246))

(assert (= (and b!2881246 c!467917) b!2881240))

(assert (= (and b!2881246 (not c!467917)) b!2881242))

(assert (= (and b!2881240 res!1193980) b!2881243))

(assert (= (and b!2881242 c!467918) b!2881248))

(assert (= (and b!2881242 (not c!467918)) b!2881241))

(assert (= (and b!2881248 res!1193978) b!2881245))

(assert (= (and b!2881241 (not res!1193981)) b!2881244))

(assert (= (and b!2881244 res!1193979) b!2881247))

(assert (= (or b!2881245 b!2881244) bm!186813))

(assert (= (or b!2881248 b!2881247) bm!186812))

(assert (= (or b!2881243 bm!186812) bm!186811))

(declare-fun m!3298561 () Bool)

(assert (=> b!2881240 m!3298561))

(declare-fun m!3298563 () Bool)

(assert (=> bm!186811 m!3298563))

(declare-fun m!3298565 () Bool)

(assert (=> bm!186813 m!3298565))

(assert (=> d!833031 d!833379))

(declare-fun d!833381 () Bool)

(declare-fun c!467921 () Bool)

(assert (=> d!833381 (= c!467921 ((_ is Nil!34420) lt!1019690))))

(declare-fun e!1822829 () (InoxSet Regex!8751))

(assert (=> d!833381 (= (content!4717 lt!1019690) e!1822829)))

(declare-fun b!2881253 () Bool)

(assert (=> b!2881253 (= e!1822829 ((as const (Array Regex!8751 Bool)) false))))

(declare-fun b!2881254 () Bool)

(assert (=> b!2881254 (= e!1822829 ((_ map or) (store ((as const (Array Regex!8751 Bool)) false) (h!39840 lt!1019690) true) (content!4717 (t!233587 lt!1019690))))))

(assert (= (and d!833381 c!467921) b!2881253))

(assert (= (and d!833381 (not c!467921)) b!2881254))

(declare-fun m!3298567 () Bool)

(assert (=> b!2881254 m!3298567))

(declare-fun m!3298569 () Bool)

(assert (=> b!2881254 m!3298569))

(assert (=> d!833105 d!833381))

(declare-fun d!833383 () Bool)

(declare-fun c!467922 () Bool)

(assert (=> d!833383 (= c!467922 ((_ is Nil!34420) lt!1019591))))

(declare-fun e!1822830 () (InoxSet Regex!8751))

(assert (=> d!833383 (= (content!4717 lt!1019591) e!1822830)))

(declare-fun b!2881255 () Bool)

(assert (=> b!2881255 (= e!1822830 ((as const (Array Regex!8751 Bool)) false))))

(declare-fun b!2881256 () Bool)

(assert (=> b!2881256 (= e!1822830 ((_ map or) (store ((as const (Array Regex!8751 Bool)) false) (h!39840 lt!1019591) true) (content!4717 (t!233587 lt!1019591))))))

(assert (= (and d!833383 c!467922) b!2881255))

(assert (= (and d!833383 (not c!467922)) b!2881256))

(declare-fun m!3298571 () Bool)

(assert (=> b!2881256 m!3298571))

(declare-fun m!3298573 () Bool)

(assert (=> b!2881256 m!3298573))

(assert (=> d!833105 d!833383))

(declare-fun d!833385 () Bool)

(declare-fun c!467923 () Bool)

(assert (=> d!833385 (= c!467923 ((_ is Nil!34420) (t!233587 (exprs!3211 c!7184))))))

(declare-fun e!1822831 () (InoxSet Regex!8751))

(assert (=> d!833385 (= (content!4717 (t!233587 (exprs!3211 c!7184))) e!1822831)))

(declare-fun b!2881257 () Bool)

(assert (=> b!2881257 (= e!1822831 ((as const (Array Regex!8751 Bool)) false))))

(declare-fun b!2881258 () Bool)

(assert (=> b!2881258 (= e!1822831 ((_ map or) (store ((as const (Array Regex!8751 Bool)) false) (h!39840 (t!233587 (exprs!3211 c!7184))) true) (content!4717 (t!233587 (t!233587 (exprs!3211 c!7184))))))))

(assert (= (and d!833385 c!467923) b!2881257))

(assert (= (and d!833385 (not c!467923)) b!2881258))

(declare-fun m!3298575 () Bool)

(assert (=> b!2881258 m!3298575))

(declare-fun m!3298577 () Bool)

(assert (=> b!2881258 m!3298577))

(assert (=> d!833105 d!833385))

(declare-fun d!833387 () Bool)

(assert (=> d!833387 (= (isEmpty!18746 lt!1019686) (not ((_ is Some!6425) lt!1019686)))))

(assert (=> d!833101 d!833387))

(declare-fun bs!523563 () Bool)

(declare-fun d!833389 () Bool)

(assert (= bs!523563 (and d!833389 b!2880453)))

(declare-fun lambda!107570 () Int)

(assert (=> bs!523563 (not (= lambda!107570 lambda!107502))))

(declare-fun bs!523564 () Bool)

(assert (= bs!523564 (and d!833389 d!833099)))

(assert (=> bs!523564 (not (= lambda!107570 lambda!107524))))

(declare-fun bs!523565 () Bool)

(assert (= bs!523565 (and d!833389 d!833055)))

(assert (=> bs!523565 (not (= lambda!107570 lambda!107511))))

(declare-fun bs!523566 () Bool)

(assert (= bs!523566 (and d!833389 d!833337)))

(assert (=> bs!523566 (not (= lambda!107570 lambda!107560))))

(declare-fun bs!523567 () Bool)

(assert (= bs!523567 (and d!833389 d!833063)))

(assert (=> bs!523567 (not (= lambda!107570 lambda!107514))))

(declare-fun bs!523568 () Bool)

(assert (= bs!523568 (and d!833389 d!833311)))

(assert (=> bs!523568 (not (= lambda!107570 lambda!107559))))

(declare-fun bs!523569 () Bool)

(assert (= bs!523569 (and d!833389 d!833291)))

(assert (=> bs!523569 (not (= lambda!107570 lambda!107555))))

(declare-fun bs!523570 () Bool)

(assert (= bs!523570 (and d!833389 d!833363)))

(assert (=> bs!523570 (not (= lambda!107570 lambda!107565))))

(declare-fun bs!523571 () Bool)

(assert (= bs!523571 (and d!833389 d!833101)))

(assert (=> bs!523571 (not (= lambda!107570 lambda!107527))))

(declare-fun bs!523572 () Bool)

(assert (= bs!523572 (and d!833389 d!833109)))

(assert (=> bs!523572 (not (= lambda!107570 lambda!107528))))

(assert (=> d!833389 true))

(declare-fun order!18155 () Int)

(declare-fun dynLambda!14337 (Int Int) Int)

(assert (=> d!833389 (< (dynLambda!14337 order!18155 lambda!107527) (dynLambda!14337 order!18155 lambda!107570))))

(assert (=> d!833389 (= (exists!1192 (exprs!3211 c!7184) lambda!107527) (not (forall!7095 (exprs!3211 c!7184) lambda!107570)))))

(declare-fun bs!523573 () Bool)

(assert (= bs!523573 d!833389))

(declare-fun m!3298579 () Bool)

(assert (=> bs!523573 m!3298579))

(assert (=> d!833101 d!833389))

(declare-fun b!2881261 () Bool)

(declare-fun e!1822832 () List!34545)

(assert (=> b!2881261 (= e!1822832 (v!34551 lt!1019631))))

(declare-fun b!2881262 () Bool)

(assert (=> b!2881262 (= e!1822832 (Cons!34421 (h!39841 (v!34551 lt!1019632)) (++!8189 (t!233588 (v!34551 lt!1019632)) (v!34551 lt!1019631))))))

(declare-fun e!1822833 () Bool)

(declare-fun lt!1019769 () List!34545)

(declare-fun b!2881264 () Bool)

(assert (=> b!2881264 (= e!1822833 (or (not (= (v!34551 lt!1019631) Nil!34421)) (= lt!1019769 (v!34551 lt!1019632))))))

(declare-fun b!2881263 () Bool)

(declare-fun res!1193982 () Bool)

(assert (=> b!2881263 (=> (not res!1193982) (not e!1822833))))

(assert (=> b!2881263 (= res!1193982 (= (size!26335 lt!1019769) (+ (size!26335 (v!34551 lt!1019632)) (size!26335 (v!34551 lt!1019631)))))))

(declare-fun d!833391 () Bool)

(assert (=> d!833391 e!1822833))

(declare-fun res!1193983 () Bool)

(assert (=> d!833391 (=> (not res!1193983) (not e!1822833))))

(assert (=> d!833391 (= res!1193983 (= (content!4716 lt!1019769) ((_ map or) (content!4716 (v!34551 lt!1019632)) (content!4716 (v!34551 lt!1019631)))))))

(assert (=> d!833391 (= lt!1019769 e!1822832)))

(declare-fun c!467924 () Bool)

(assert (=> d!833391 (= c!467924 ((_ is Nil!34421) (v!34551 lt!1019632)))))

(assert (=> d!833391 (= (++!8189 (v!34551 lt!1019632) (v!34551 lt!1019631)) lt!1019769)))

(assert (= (and d!833391 c!467924) b!2881261))

(assert (= (and d!833391 (not c!467924)) b!2881262))

(assert (= (and d!833391 res!1193983) b!2881263))

(assert (= (and b!2881263 res!1193982) b!2881264))

(declare-fun m!3298581 () Bool)

(assert (=> b!2881262 m!3298581))

(declare-fun m!3298583 () Bool)

(assert (=> b!2881263 m!3298583))

(declare-fun m!3298585 () Bool)

(assert (=> b!2881263 m!3298585))

(declare-fun m!3298587 () Bool)

(assert (=> b!2881263 m!3298587))

(declare-fun m!3298589 () Bool)

(assert (=> d!833391 m!3298589))

(declare-fun m!3298591 () Bool)

(assert (=> d!833391 m!3298591))

(declare-fun m!3298593 () Bool)

(assert (=> d!833391 m!3298593))

(assert (=> b!2880555 d!833391))

(declare-fun d!833393 () Bool)

(assert (=> d!833393 (= (head!6358 (v!34551 lt!1019586)) (h!39841 (v!34551 lt!1019586)))))

(assert (=> b!2880716 d!833393))

(declare-fun d!833395 () Bool)

(assert (=> d!833395 (= (isEmpty!18746 lt!1019692) (not ((_ is Some!6425) lt!1019692)))))

(assert (=> d!833109 d!833395))

(declare-fun bs!523574 () Bool)

(declare-fun d!833397 () Bool)

(assert (= bs!523574 (and d!833397 b!2880453)))

(declare-fun lambda!107571 () Int)

(assert (=> bs!523574 (not (= lambda!107571 lambda!107502))))

(declare-fun bs!523575 () Bool)

(assert (= bs!523575 (and d!833397 d!833099)))

(assert (=> bs!523575 (not (= lambda!107571 lambda!107524))))

(declare-fun bs!523576 () Bool)

(assert (= bs!523576 (and d!833397 d!833055)))

(assert (=> bs!523576 (not (= lambda!107571 lambda!107511))))

(declare-fun bs!523577 () Bool)

(assert (= bs!523577 (and d!833397 d!833063)))

(assert (=> bs!523577 (not (= lambda!107571 lambda!107514))))

(declare-fun bs!523578 () Bool)

(assert (= bs!523578 (and d!833397 d!833337)))

(assert (=> bs!523578 (not (= lambda!107571 lambda!107560))))

(declare-fun bs!523579 () Bool)

(assert (= bs!523579 (and d!833397 d!833389)))

(assert (=> bs!523579 (= (= lambda!107528 lambda!107527) (= lambda!107571 lambda!107570))))

(declare-fun bs!523580 () Bool)

(assert (= bs!523580 (and d!833397 d!833311)))

(assert (=> bs!523580 (not (= lambda!107571 lambda!107559))))

(declare-fun bs!523581 () Bool)

(assert (= bs!523581 (and d!833397 d!833291)))

(assert (=> bs!523581 (not (= lambda!107571 lambda!107555))))

(declare-fun bs!523582 () Bool)

(assert (= bs!523582 (and d!833397 d!833363)))

(assert (=> bs!523582 (not (= lambda!107571 lambda!107565))))

(declare-fun bs!523583 () Bool)

(assert (= bs!523583 (and d!833397 d!833101)))

(assert (=> bs!523583 (not (= lambda!107571 lambda!107527))))

(declare-fun bs!523584 () Bool)

(assert (= bs!523584 (and d!833397 d!833109)))

(assert (=> bs!523584 (not (= lambda!107571 lambda!107528))))

(assert (=> d!833397 true))

(assert (=> d!833397 (< (dynLambda!14337 order!18155 lambda!107528) (dynLambda!14337 order!18155 lambda!107571))))

(assert (=> d!833397 (= (exists!1192 (exprs!3211 lt!1019595) lambda!107528) (not (forall!7095 (exprs!3211 lt!1019595) lambda!107571)))))

(declare-fun bs!523585 () Bool)

(assert (= bs!523585 d!833397))

(declare-fun m!3298595 () Bool)

(assert (=> bs!523585 m!3298595))

(assert (=> d!833109 d!833397))

(declare-fun b!2881265 () Bool)

(declare-fun e!1822834 () List!34545)

(assert (=> b!2881265 (= e!1822834 (v!34551 lt!1019584))))

(declare-fun b!2881266 () Bool)

(assert (=> b!2881266 (= e!1822834 (Cons!34421 (h!39841 (t!233588 (v!34551 lt!1019586))) (++!8189 (t!233588 (t!233588 (v!34551 lt!1019586))) (v!34551 lt!1019584))))))

(declare-fun lt!1019770 () List!34545)

(declare-fun e!1822835 () Bool)

(declare-fun b!2881268 () Bool)

(assert (=> b!2881268 (= e!1822835 (or (not (= (v!34551 lt!1019584) Nil!34421)) (= lt!1019770 (t!233588 (v!34551 lt!1019586)))))))

(declare-fun b!2881267 () Bool)

(declare-fun res!1193984 () Bool)

(assert (=> b!2881267 (=> (not res!1193984) (not e!1822835))))

(assert (=> b!2881267 (= res!1193984 (= (size!26335 lt!1019770) (+ (size!26335 (t!233588 (v!34551 lt!1019586))) (size!26335 (v!34551 lt!1019584)))))))

(declare-fun d!833399 () Bool)

(assert (=> d!833399 e!1822835))

(declare-fun res!1193985 () Bool)

(assert (=> d!833399 (=> (not res!1193985) (not e!1822835))))

(assert (=> d!833399 (= res!1193985 (= (content!4716 lt!1019770) ((_ map or) (content!4716 (t!233588 (v!34551 lt!1019586))) (content!4716 (v!34551 lt!1019584)))))))

(assert (=> d!833399 (= lt!1019770 e!1822834)))

(declare-fun c!467925 () Bool)

(assert (=> d!833399 (= c!467925 ((_ is Nil!34421) (t!233588 (v!34551 lt!1019586))))))

(assert (=> d!833399 (= (++!8189 (t!233588 (v!34551 lt!1019586)) (v!34551 lt!1019584)) lt!1019770)))

(assert (= (and d!833399 c!467925) b!2881265))

(assert (= (and d!833399 (not c!467925)) b!2881266))

(assert (= (and d!833399 res!1193985) b!2881267))

(assert (= (and b!2881267 res!1193984) b!2881268))

(declare-fun m!3298597 () Bool)

(assert (=> b!2881266 m!3298597))

(declare-fun m!3298599 () Bool)

(assert (=> b!2881267 m!3298599))

(assert (=> b!2881267 m!3298415))

(assert (=> b!2881267 m!3297959))

(declare-fun m!3298601 () Bool)

(assert (=> d!833399 m!3298601))

(assert (=> d!833399 m!3298509))

(assert (=> d!833399 m!3297965))

(assert (=> b!2880748 d!833399))

(declare-fun d!833401 () Bool)

(assert (=> d!833401 (= (isEmpty!18745 (++!8189 (v!34551 lt!1019586) (v!34551 lt!1019584))) ((_ is Nil!34421) (++!8189 (v!34551 lt!1019586) (v!34551 lt!1019584))))))

(assert (=> d!833103 d!833401))

(declare-fun bs!523586 () Bool)

(declare-fun d!833403 () Bool)

(assert (= bs!523586 (and d!833403 b!2880453)))

(declare-fun lambda!107572 () Int)

(assert (=> bs!523586 (not (= lambda!107572 lambda!107502))))

(declare-fun bs!523587 () Bool)

(assert (= bs!523587 (and d!833403 d!833099)))

(assert (=> bs!523587 (not (= lambda!107572 lambda!107524))))

(declare-fun bs!523588 () Bool)

(assert (= bs!523588 (and d!833403 d!833055)))

(assert (=> bs!523588 (not (= lambda!107572 lambda!107511))))

(declare-fun bs!523589 () Bool)

(assert (= bs!523589 (and d!833403 d!833397)))

(assert (=> bs!523589 (= (= lambda!107511 lambda!107528) (= lambda!107572 lambda!107571))))

(declare-fun bs!523590 () Bool)

(assert (= bs!523590 (and d!833403 d!833063)))

(assert (=> bs!523590 (not (= lambda!107572 lambda!107514))))

(declare-fun bs!523591 () Bool)

(assert (= bs!523591 (and d!833403 d!833337)))

(assert (=> bs!523591 (not (= lambda!107572 lambda!107560))))

(declare-fun bs!523592 () Bool)

(assert (= bs!523592 (and d!833403 d!833389)))

(assert (=> bs!523592 (= (= lambda!107511 lambda!107527) (= lambda!107572 lambda!107570))))

(declare-fun bs!523593 () Bool)

(assert (= bs!523593 (and d!833403 d!833311)))

(assert (=> bs!523593 (not (= lambda!107572 lambda!107559))))

(declare-fun bs!523594 () Bool)

(assert (= bs!523594 (and d!833403 d!833291)))

(assert (=> bs!523594 (not (= lambda!107572 lambda!107555))))

(declare-fun bs!523595 () Bool)

(assert (= bs!523595 (and d!833403 d!833363)))

(assert (=> bs!523595 (not (= lambda!107572 lambda!107565))))

(declare-fun bs!523596 () Bool)

(assert (= bs!523596 (and d!833403 d!833101)))

(assert (=> bs!523596 (not (= lambda!107572 lambda!107527))))

(declare-fun bs!523597 () Bool)

(assert (= bs!523597 (and d!833403 d!833109)))

(assert (=> bs!523597 (not (= lambda!107572 lambda!107528))))

(assert (=> d!833403 true))

(assert (=> d!833403 (< (dynLambda!14337 order!18155 lambda!107511) (dynLambda!14337 order!18155 lambda!107572))))

(assert (=> d!833403 (= (exists!1192 (exprs!3211 c!7184) lambda!107511) (not (forall!7095 (exprs!3211 c!7184) lambda!107572)))))

(declare-fun bs!523598 () Bool)

(assert (= bs!523598 d!833403))

(declare-fun m!3298603 () Bool)

(assert (=> bs!523598 m!3298603))

(assert (=> d!833055 d!833403))

(declare-fun d!833405 () Bool)

(declare-fun c!467926 () Bool)

(assert (=> d!833405 (= c!467926 (isEmpty!18745 (tail!4583 (++!8189 (v!34551 lt!1019586) (v!34551 lt!1019584)))))))

(declare-fun e!1822836 () Bool)

(assert (=> d!833405 (= (matchZipper!493 (derivationStepZipper!485 (store ((as const (Array Context!5422 Bool)) false) (Context!5423 (++!8188 lt!1019591 (t!233587 (exprs!3211 c!7184)))) true) (head!6358 (++!8189 (v!34551 lt!1019586) (v!34551 lt!1019584)))) (tail!4583 (++!8189 (v!34551 lt!1019586) (v!34551 lt!1019584)))) e!1822836)))

(declare-fun b!2881269 () Bool)

(assert (=> b!2881269 (= e!1822836 (nullableZipper!729 (derivationStepZipper!485 (store ((as const (Array Context!5422 Bool)) false) (Context!5423 (++!8188 lt!1019591 (t!233587 (exprs!3211 c!7184)))) true) (head!6358 (++!8189 (v!34551 lt!1019586) (v!34551 lt!1019584))))))))

(declare-fun b!2881270 () Bool)

(assert (=> b!2881270 (= e!1822836 (matchZipper!493 (derivationStepZipper!485 (derivationStepZipper!485 (store ((as const (Array Context!5422 Bool)) false) (Context!5423 (++!8188 lt!1019591 (t!233587 (exprs!3211 c!7184)))) true) (head!6358 (++!8189 (v!34551 lt!1019586) (v!34551 lt!1019584)))) (head!6358 (tail!4583 (++!8189 (v!34551 lt!1019586) (v!34551 lt!1019584))))) (tail!4583 (tail!4583 (++!8189 (v!34551 lt!1019586) (v!34551 lt!1019584))))))))

(assert (= (and d!833405 c!467926) b!2881269))

(assert (= (and d!833405 (not c!467926)) b!2881270))

(assert (=> d!833405 m!3297995))

(declare-fun m!3298605 () Bool)

(assert (=> d!833405 m!3298605))

(assert (=> b!2881269 m!3297993))

(declare-fun m!3298607 () Bool)

(assert (=> b!2881269 m!3298607))

(assert (=> b!2881270 m!3297995))

(declare-fun m!3298609 () Bool)

(assert (=> b!2881270 m!3298609))

(assert (=> b!2881270 m!3297993))

(assert (=> b!2881270 m!3298609))

(declare-fun m!3298611 () Bool)

(assert (=> b!2881270 m!3298611))

(assert (=> b!2881270 m!3297995))

(declare-fun m!3298613 () Bool)

(assert (=> b!2881270 m!3298613))

(assert (=> b!2881270 m!3298611))

(assert (=> b!2881270 m!3298613))

(declare-fun m!3298615 () Bool)

(assert (=> b!2881270 m!3298615))

(assert (=> b!2880770 d!833405))

(declare-fun bs!523599 () Bool)

(declare-fun d!833407 () Bool)

(assert (= bs!523599 (and d!833407 d!833341)))

(declare-fun lambda!107573 () Int)

(assert (=> bs!523599 (= (= (head!6358 (++!8189 (v!34551 lt!1019586) (v!34551 lt!1019584))) (head!6358 (get!10353 (getLanguageWitness!453 c!7184)))) (= lambda!107573 lambda!107563))))

(declare-fun bs!523600 () Bool)

(assert (= bs!523600 (and d!833407 d!833369)))

(assert (=> bs!523600 (= (= (head!6358 (++!8189 (v!34551 lt!1019586) (v!34551 lt!1019584))) (head!6358 (v!34551 lt!1019584))) (= lambda!107573 lambda!107567))))

(assert (=> d!833407 true))

(assert (=> d!833407 (= (derivationStepZipper!485 (store ((as const (Array Context!5422 Bool)) false) (Context!5423 (++!8188 lt!1019591 (t!233587 (exprs!3211 c!7184)))) true) (head!6358 (++!8189 (v!34551 lt!1019586) (v!34551 lt!1019584)))) (flatMap!232 (store ((as const (Array Context!5422 Bool)) false) (Context!5423 (++!8188 lt!1019591 (t!233587 (exprs!3211 c!7184)))) true) lambda!107573))))

(declare-fun bs!523601 () Bool)

(assert (= bs!523601 d!833407))

(assert (=> bs!523601 m!3297669))

(declare-fun m!3298617 () Bool)

(assert (=> bs!523601 m!3298617))

(assert (=> b!2880770 d!833407))

(declare-fun d!833409 () Bool)

(assert (=> d!833409 (= (head!6358 (++!8189 (v!34551 lt!1019586) (v!34551 lt!1019584))) (h!39841 (++!8189 (v!34551 lt!1019586) (v!34551 lt!1019584))))))

(assert (=> b!2880770 d!833409))

(declare-fun d!833411 () Bool)

(assert (=> d!833411 (= (tail!4583 (++!8189 (v!34551 lt!1019586) (v!34551 lt!1019584))) (t!233588 (++!8189 (v!34551 lt!1019586) (v!34551 lt!1019584))))))

(assert (=> b!2880770 d!833411))

(assert (=> d!833091 d!833349))

(assert (=> d!833091 d!833379))

(declare-fun bs!523602 () Bool)

(declare-fun d!833413 () Bool)

(assert (= bs!523602 (and d!833413 d!833309)))

(declare-fun lambda!107574 () Int)

(assert (=> bs!523602 (= lambda!107574 lambda!107558)))

(declare-fun bs!523603 () Bool)

(assert (= bs!523603 (and d!833413 d!833347)))

(assert (=> bs!523603 (= lambda!107574 lambda!107564)))

(declare-fun bs!523604 () Bool)

(assert (= bs!523604 (and d!833413 d!833365)))

(assert (=> bs!523604 (= lambda!107574 lambda!107566)))

(assert (=> d!833413 (= (nullableZipper!729 (store ((as const (Array Context!5422 Bool)) false) c!7184 true)) (exists!1194 (store ((as const (Array Context!5422 Bool)) false) c!7184 true) lambda!107574))))

(declare-fun bs!523605 () Bool)

(assert (= bs!523605 d!833413))

(assert (=> bs!523605 m!3297655))

(declare-fun m!3298619 () Bool)

(assert (=> bs!523605 m!3298619))

(assert (=> b!2880783 d!833413))

(assert (=> d!833081 d!833315))

(assert (=> d!833081 d!833379))

(declare-fun d!833415 () Bool)

(assert (=> d!833415 (= (isEmpty!18745 (tail!4583 (get!10353 lt!1019586))) ((_ is Nil!34421) (tail!4583 (get!10353 lt!1019586))))))

(assert (=> b!2880727 d!833415))

(assert (=> b!2880727 d!833323))

(declare-fun b!2881272 () Bool)

(declare-fun e!1822837 () List!34544)

(assert (=> b!2881272 (= e!1822837 (Cons!34420 (h!39840 (t!233587 lt!1019591)) (++!8188 (t!233587 (t!233587 lt!1019591)) (t!233587 (exprs!3211 c!7184)))))))

(declare-fun b!2881273 () Bool)

(declare-fun res!1193987 () Bool)

(declare-fun e!1822838 () Bool)

(assert (=> b!2881273 (=> (not res!1193987) (not e!1822838))))

(declare-fun lt!1019771 () List!34544)

(assert (=> b!2881273 (= res!1193987 (= (size!26336 lt!1019771) (+ (size!26336 (t!233587 lt!1019591)) (size!26336 (t!233587 (exprs!3211 c!7184))))))))

(declare-fun d!833417 () Bool)

(assert (=> d!833417 e!1822838))

(declare-fun res!1193986 () Bool)

(assert (=> d!833417 (=> (not res!1193986) (not e!1822838))))

(assert (=> d!833417 (= res!1193986 (= (content!4717 lt!1019771) ((_ map or) (content!4717 (t!233587 lt!1019591)) (content!4717 (t!233587 (exprs!3211 c!7184))))))))

(assert (=> d!833417 (= lt!1019771 e!1822837)))

(declare-fun c!467927 () Bool)

(assert (=> d!833417 (= c!467927 ((_ is Nil!34420) (t!233587 lt!1019591)))))

(assert (=> d!833417 (= (++!8188 (t!233587 lt!1019591) (t!233587 (exprs!3211 c!7184))) lt!1019771)))

(declare-fun b!2881274 () Bool)

(assert (=> b!2881274 (= e!1822838 (or (not (= (t!233587 (exprs!3211 c!7184)) Nil!34420)) (= lt!1019771 (t!233587 lt!1019591))))))

(declare-fun b!2881271 () Bool)

(assert (=> b!2881271 (= e!1822837 (t!233587 (exprs!3211 c!7184)))))

(assert (= (and d!833417 c!467927) b!2881271))

(assert (= (and d!833417 (not c!467927)) b!2881272))

(assert (= (and d!833417 res!1193986) b!2881273))

(assert (= (and b!2881273 res!1193987) b!2881274))

(declare-fun m!3298621 () Bool)

(assert (=> b!2881272 m!3298621))

(declare-fun m!3298623 () Bool)

(assert (=> b!2881273 m!3298623))

(assert (=> b!2881273 m!3298469))

(assert (=> b!2881273 m!3298005))

(declare-fun m!3298625 () Bool)

(assert (=> d!833417 m!3298625))

(assert (=> d!833417 m!3298573))

(assert (=> d!833417 m!3298011))

(assert (=> b!2880780 d!833417))

(declare-fun d!833419 () Bool)

(declare-fun c!467928 () Bool)

(assert (=> d!833419 (= c!467928 (isEmpty!18745 (tail!4583 (v!34551 lt!1019586))))))

(declare-fun e!1822839 () Bool)

(assert (=> d!833419 (= (matchZipper!493 (derivationStepZipper!485 lt!1019588 (head!6358 (v!34551 lt!1019586))) (tail!4583 (v!34551 lt!1019586))) e!1822839)))

(declare-fun b!2881275 () Bool)

(assert (=> b!2881275 (= e!1822839 (nullableZipper!729 (derivationStepZipper!485 lt!1019588 (head!6358 (v!34551 lt!1019586)))))))

(declare-fun b!2881276 () Bool)

(assert (=> b!2881276 (= e!1822839 (matchZipper!493 (derivationStepZipper!485 (derivationStepZipper!485 lt!1019588 (head!6358 (v!34551 lt!1019586))) (head!6358 (tail!4583 (v!34551 lt!1019586)))) (tail!4583 (tail!4583 (v!34551 lt!1019586)))))))

(assert (= (and d!833419 c!467928) b!2881275))

(assert (= (and d!833419 (not c!467928)) b!2881276))

(assert (=> d!833419 m!3297721))

(assert (=> d!833419 m!3297911))

(assert (=> b!2881275 m!3297719))

(declare-fun m!3298627 () Bool)

(assert (=> b!2881275 m!3298627))

(assert (=> b!2881276 m!3297721))

(declare-fun m!3298629 () Bool)

(assert (=> b!2881276 m!3298629))

(assert (=> b!2881276 m!3297719))

(assert (=> b!2881276 m!3298629))

(declare-fun m!3298631 () Bool)

(assert (=> b!2881276 m!3298631))

(assert (=> b!2881276 m!3297721))

(declare-fun m!3298633 () Bool)

(assert (=> b!2881276 m!3298633))

(assert (=> b!2881276 m!3298631))

(assert (=> b!2881276 m!3298633))

(declare-fun m!3298635 () Bool)

(assert (=> b!2881276 m!3298635))

(assert (=> b!2880461 d!833419))

(declare-fun bs!523606 () Bool)

(declare-fun d!833421 () Bool)

(assert (= bs!523606 (and d!833421 d!833341)))

(declare-fun lambda!107575 () Int)

(assert (=> bs!523606 (= (= (head!6358 (v!34551 lt!1019586)) (head!6358 (get!10353 (getLanguageWitness!453 c!7184)))) (= lambda!107575 lambda!107563))))

(declare-fun bs!523607 () Bool)

(assert (= bs!523607 (and d!833421 d!833369)))

(assert (=> bs!523607 (= (= (head!6358 (v!34551 lt!1019586)) (head!6358 (v!34551 lt!1019584))) (= lambda!107575 lambda!107567))))

(declare-fun bs!523608 () Bool)

(assert (= bs!523608 (and d!833421 d!833407)))

(assert (=> bs!523608 (= (= (head!6358 (v!34551 lt!1019586)) (head!6358 (++!8189 (v!34551 lt!1019586) (v!34551 lt!1019584)))) (= lambda!107575 lambda!107573))))

(assert (=> d!833421 true))

(assert (=> d!833421 (= (derivationStepZipper!485 lt!1019588 (head!6358 (v!34551 lt!1019586))) (flatMap!232 lt!1019588 lambda!107575))))

(declare-fun bs!523609 () Bool)

(assert (= bs!523609 d!833421))

(declare-fun m!3298637 () Bool)

(assert (=> bs!523609 m!3298637))

(assert (=> b!2880461 d!833421))

(assert (=> b!2880461 d!833393))

(assert (=> b!2880461 d!833361))

(declare-fun d!833423 () Bool)

(assert (=> d!833423 (= (isEmpty!18745 (get!10353 lt!1019584)) ((_ is Nil!34421) (get!10353 lt!1019584)))))

(assert (=> d!833087 d!833423))

(assert (=> b!2880729 d!833321))

(assert (=> b!2880731 d!833415))

(assert (=> b!2880731 d!833323))

(assert (=> b!2880458 d!833365))

(declare-fun b!2881277 () Bool)

(declare-fun e!1822840 () Bool)

(declare-fun lt!1019772 () Bool)

(declare-fun call!186819 () Bool)

(assert (=> b!2881277 (= e!1822840 (= lt!1019772 call!186819))))

(declare-fun b!2881278 () Bool)

(declare-fun e!1822845 () Bool)

(declare-fun e!1822844 () Bool)

(assert (=> b!2881278 (= e!1822845 e!1822844)))

(declare-fun res!1193988 () Bool)

(assert (=> b!2881278 (=> (not res!1193988) (not e!1822844))))

(assert (=> b!2881278 (= res!1193988 (not lt!1019772))))

(declare-fun b!2881279 () Bool)

(declare-fun res!1193991 () Bool)

(declare-fun e!1822842 () Bool)

(assert (=> b!2881279 (=> (not res!1193991) (not e!1822842))))

(assert (=> b!2881279 (= res!1193991 (isEmpty!18745 (tail!4583 (tail!4583 (v!34551 lt!1019586)))))))

(declare-fun b!2881280 () Bool)

(declare-fun e!1822843 () Bool)

(assert (=> b!2881280 (= e!1822843 (matchR!3751 (derivativeStep!2334 (derivativeStep!2334 (h!39840 (exprs!3211 c!7184)) (head!6358 (v!34551 lt!1019586))) (head!6358 (tail!4583 (v!34551 lt!1019586)))) (tail!4583 (tail!4583 (v!34551 lt!1019586)))))))

(declare-fun d!833425 () Bool)

(assert (=> d!833425 e!1822840))

(declare-fun c!467931 () Bool)

(assert (=> d!833425 (= c!467931 ((_ is EmptyExpr!8751) (derivativeStep!2334 (h!39840 (exprs!3211 c!7184)) (head!6358 (v!34551 lt!1019586)))))))

(assert (=> d!833425 (= lt!1019772 e!1822843)))

(declare-fun c!467930 () Bool)

(assert (=> d!833425 (= c!467930 (isEmpty!18745 (tail!4583 (v!34551 lt!1019586))))))

(assert (=> d!833425 (validRegex!3529 (derivativeStep!2334 (h!39840 (exprs!3211 c!7184)) (head!6358 (v!34551 lt!1019586))))))

(assert (=> d!833425 (= (matchR!3751 (derivativeStep!2334 (h!39840 (exprs!3211 c!7184)) (head!6358 (v!34551 lt!1019586))) (tail!4583 (v!34551 lt!1019586))) lt!1019772)))

(declare-fun bm!186814 () Bool)

(assert (=> bm!186814 (= call!186819 (isEmpty!18745 (tail!4583 (v!34551 lt!1019586))))))

(declare-fun b!2881281 () Bool)

(assert (=> b!2881281 (= e!1822842 (= (head!6358 (tail!4583 (v!34551 lt!1019586))) (c!467614 (derivativeStep!2334 (h!39840 (exprs!3211 c!7184)) (head!6358 (v!34551 lt!1019586))))))))

(declare-fun b!2881282 () Bool)

(declare-fun e!1822846 () Bool)

(assert (=> b!2881282 (= e!1822846 (not lt!1019772))))

(declare-fun b!2881283 () Bool)

(declare-fun res!1193993 () Bool)

(declare-fun e!1822841 () Bool)

(assert (=> b!2881283 (=> res!1193993 e!1822841)))

(assert (=> b!2881283 (= res!1193993 (not (isEmpty!18745 (tail!4583 (tail!4583 (v!34551 lt!1019586))))))))

(declare-fun b!2881284 () Bool)

(assert (=> b!2881284 (= e!1822841 (not (= (head!6358 (tail!4583 (v!34551 lt!1019586))) (c!467614 (derivativeStep!2334 (h!39840 (exprs!3211 c!7184)) (head!6358 (v!34551 lt!1019586)))))))))

(declare-fun b!2881285 () Bool)

(assert (=> b!2881285 (= e!1822844 e!1822841)))

(declare-fun res!1193990 () Bool)

(assert (=> b!2881285 (=> res!1193990 e!1822841)))

(assert (=> b!2881285 (= res!1193990 call!186819)))

(declare-fun b!2881286 () Bool)

(assert (=> b!2881286 (= e!1822843 (nullable!2701 (derivativeStep!2334 (h!39840 (exprs!3211 c!7184)) (head!6358 (v!34551 lt!1019586)))))))

(declare-fun b!2881287 () Bool)

(declare-fun res!1193994 () Bool)

(assert (=> b!2881287 (=> res!1193994 e!1822845)))

(assert (=> b!2881287 (= res!1193994 e!1822842)))

(declare-fun res!1193989 () Bool)

(assert (=> b!2881287 (=> (not res!1193989) (not e!1822842))))

(assert (=> b!2881287 (= res!1193989 lt!1019772)))

(declare-fun b!2881288 () Bool)

(declare-fun res!1193995 () Bool)

(assert (=> b!2881288 (=> res!1193995 e!1822845)))

(assert (=> b!2881288 (= res!1193995 (not ((_ is ElementMatch!8751) (derivativeStep!2334 (h!39840 (exprs!3211 c!7184)) (head!6358 (v!34551 lt!1019586))))))))

(assert (=> b!2881288 (= e!1822846 e!1822845)))

(declare-fun b!2881289 () Bool)

(assert (=> b!2881289 (= e!1822840 e!1822846)))

(declare-fun c!467929 () Bool)

(assert (=> b!2881289 (= c!467929 ((_ is EmptyLang!8751) (derivativeStep!2334 (h!39840 (exprs!3211 c!7184)) (head!6358 (v!34551 lt!1019586)))))))

(declare-fun b!2881290 () Bool)

(declare-fun res!1193992 () Bool)

(assert (=> b!2881290 (=> (not res!1193992) (not e!1822842))))

(assert (=> b!2881290 (= res!1193992 (not call!186819))))

(assert (= (and d!833425 c!467930) b!2881286))

(assert (= (and d!833425 (not c!467930)) b!2881280))

(assert (= (and d!833425 c!467931) b!2881277))

(assert (= (and d!833425 (not c!467931)) b!2881289))

(assert (= (and b!2881289 c!467929) b!2881282))

(assert (= (and b!2881289 (not c!467929)) b!2881288))

(assert (= (and b!2881288 (not res!1193995)) b!2881287))

(assert (= (and b!2881287 res!1193989) b!2881290))

(assert (= (and b!2881290 res!1193992) b!2881279))

(assert (= (and b!2881279 res!1193991) b!2881281))

(assert (= (and b!2881287 (not res!1193994)) b!2881278))

(assert (= (and b!2881278 res!1193988) b!2881285))

(assert (= (and b!2881285 (not res!1193990)) b!2881283))

(assert (= (and b!2881283 (not res!1193993)) b!2881284))

(assert (= (or b!2881277 b!2881285 b!2881290) bm!186814))

(assert (=> bm!186814 m!3297721))

(assert (=> bm!186814 m!3297911))

(assert (=> b!2881281 m!3297721))

(assert (=> b!2881281 m!3298629))

(assert (=> b!2881284 m!3297721))

(assert (=> b!2881284 m!3298629))

(assert (=> b!2881283 m!3297721))

(assert (=> b!2881283 m!3298633))

(assert (=> b!2881283 m!3298633))

(declare-fun m!3298639 () Bool)

(assert (=> b!2881283 m!3298639))

(assert (=> d!833425 m!3297721))

(assert (=> d!833425 m!3297911))

(assert (=> d!833425 m!3297913))

(declare-fun m!3298641 () Bool)

(assert (=> d!833425 m!3298641))

(assert (=> b!2881280 m!3297721))

(assert (=> b!2881280 m!3298629))

(assert (=> b!2881280 m!3297913))

(assert (=> b!2881280 m!3298629))

(declare-fun m!3298643 () Bool)

(assert (=> b!2881280 m!3298643))

(assert (=> b!2881280 m!3297721))

(assert (=> b!2881280 m!3298633))

(assert (=> b!2881280 m!3298643))

(assert (=> b!2881280 m!3298633))

(declare-fun m!3298645 () Bool)

(assert (=> b!2881280 m!3298645))

(assert (=> b!2881279 m!3297721))

(assert (=> b!2881279 m!3298633))

(assert (=> b!2881279 m!3298633))

(assert (=> b!2881279 m!3298639))

(assert (=> b!2881286 m!3297913))

(declare-fun m!3298647 () Bool)

(assert (=> b!2881286 m!3298647))

(assert (=> b!2880712 d!833425))

(declare-fun b!2881291 () Bool)

(declare-fun e!1822849 () Regex!8751)

(assert (=> b!2881291 (= e!1822849 EmptyLang!8751)))

(declare-fun d!833427 () Bool)

(declare-fun lt!1019773 () Regex!8751)

(assert (=> d!833427 (validRegex!3529 lt!1019773)))

(assert (=> d!833427 (= lt!1019773 e!1822849)))

(declare-fun c!467935 () Bool)

(assert (=> d!833427 (= c!467935 (or ((_ is EmptyExpr!8751) (h!39840 (exprs!3211 c!7184))) ((_ is EmptyLang!8751) (h!39840 (exprs!3211 c!7184)))))))

(assert (=> d!833427 (validRegex!3529 (h!39840 (exprs!3211 c!7184)))))

(assert (=> d!833427 (= (derivativeStep!2334 (h!39840 (exprs!3211 c!7184)) (head!6358 (v!34551 lt!1019586))) lt!1019773)))

(declare-fun c!467932 () Bool)

(declare-fun bm!186815 () Bool)

(declare-fun call!186821 () Regex!8751)

(assert (=> bm!186815 (= call!186821 (derivativeStep!2334 (ite c!467932 (regTwo!18015 (h!39840 (exprs!3211 c!7184))) (regTwo!18014 (h!39840 (exprs!3211 c!7184)))) (head!6358 (v!34551 lt!1019586))))))

(declare-fun b!2881292 () Bool)

(declare-fun e!1822847 () Regex!8751)

(assert (=> b!2881292 (= e!1822847 (ite (= (head!6358 (v!34551 lt!1019586)) (c!467614 (h!39840 (exprs!3211 c!7184)))) EmptyExpr!8751 EmptyLang!8751))))

(declare-fun bm!186816 () Bool)

(declare-fun call!186820 () Regex!8751)

(declare-fun call!186823 () Regex!8751)

(assert (=> bm!186816 (= call!186820 call!186823)))

(declare-fun b!2881293 () Bool)

(assert (=> b!2881293 (= c!467932 ((_ is Union!8751) (h!39840 (exprs!3211 c!7184))))))

(declare-fun e!1822851 () Regex!8751)

(assert (=> b!2881293 (= e!1822847 e!1822851)))

(declare-fun bm!186817 () Bool)

(declare-fun call!186822 () Regex!8751)

(assert (=> bm!186817 (= call!186822 call!186820)))

(declare-fun b!2881294 () Bool)

(declare-fun c!467934 () Bool)

(assert (=> b!2881294 (= c!467934 (nullable!2701 (regOne!18014 (h!39840 (exprs!3211 c!7184)))))))

(declare-fun e!1822850 () Regex!8751)

(declare-fun e!1822848 () Regex!8751)

(assert (=> b!2881294 (= e!1822850 e!1822848)))

(declare-fun b!2881295 () Bool)

(assert (=> b!2881295 (= e!1822849 e!1822847)))

(declare-fun c!467936 () Bool)

(assert (=> b!2881295 (= c!467936 ((_ is ElementMatch!8751) (h!39840 (exprs!3211 c!7184))))))

(declare-fun b!2881296 () Bool)

(assert (=> b!2881296 (= e!1822848 (Union!8751 (Concat!14072 call!186822 (regTwo!18014 (h!39840 (exprs!3211 c!7184)))) call!186821))))

(declare-fun b!2881297 () Bool)

(assert (=> b!2881297 (= e!1822850 (Concat!14072 call!186820 (h!39840 (exprs!3211 c!7184))))))

(declare-fun b!2881298 () Bool)

(assert (=> b!2881298 (= e!1822851 e!1822850)))

(declare-fun c!467933 () Bool)

(assert (=> b!2881298 (= c!467933 ((_ is Star!8751) (h!39840 (exprs!3211 c!7184))))))

(declare-fun b!2881299 () Bool)

(assert (=> b!2881299 (= e!1822848 (Union!8751 (Concat!14072 call!186822 (regTwo!18014 (h!39840 (exprs!3211 c!7184)))) EmptyLang!8751))))

(declare-fun b!2881300 () Bool)

(assert (=> b!2881300 (= e!1822851 (Union!8751 call!186823 call!186821))))

(declare-fun bm!186818 () Bool)

(assert (=> bm!186818 (= call!186823 (derivativeStep!2334 (ite c!467932 (regOne!18015 (h!39840 (exprs!3211 c!7184))) (ite c!467933 (reg!9080 (h!39840 (exprs!3211 c!7184))) (regOne!18014 (h!39840 (exprs!3211 c!7184))))) (head!6358 (v!34551 lt!1019586))))))

(assert (= (and d!833427 c!467935) b!2881291))

(assert (= (and d!833427 (not c!467935)) b!2881295))

(assert (= (and b!2881295 c!467936) b!2881292))

(assert (= (and b!2881295 (not c!467936)) b!2881293))

(assert (= (and b!2881293 c!467932) b!2881300))

(assert (= (and b!2881293 (not c!467932)) b!2881298))

(assert (= (and b!2881298 c!467933) b!2881297))

(assert (= (and b!2881298 (not c!467933)) b!2881294))

(assert (= (and b!2881294 c!467934) b!2881296))

(assert (= (and b!2881294 (not c!467934)) b!2881299))

(assert (= (or b!2881296 b!2881299) bm!186817))

(assert (= (or b!2881297 bm!186817) bm!186816))

(assert (= (or b!2881300 bm!186816) bm!186818))

(assert (= (or b!2881300 b!2881296) bm!186815))

(declare-fun m!3298649 () Bool)

(assert (=> d!833427 m!3298649))

(assert (=> d!833427 m!3297753))

(assert (=> bm!186815 m!3297717))

(declare-fun m!3298651 () Bool)

(assert (=> bm!186815 m!3298651))

(assert (=> b!2881294 m!3298463))

(assert (=> bm!186818 m!3297717))

(declare-fun m!3298653 () Bool)

(assert (=> bm!186818 m!3298653))

(assert (=> b!2880712 d!833427))

(assert (=> b!2880712 d!833393))

(assert (=> b!2880712 d!833361))

(declare-fun d!833429 () Bool)

(declare-fun res!1193996 () Bool)

(declare-fun e!1822852 () Bool)

(assert (=> d!833429 (=> res!1193996 e!1822852)))

(assert (=> d!833429 (= res!1193996 ((_ is Nil!34420) (++!8188 lt!1019591 (t!233587 (exprs!3211 c!7184)))))))

(assert (=> d!833429 (= (forall!7095 (++!8188 lt!1019591 (t!233587 (exprs!3211 c!7184))) lambda!107502) e!1822852)))

(declare-fun b!2881301 () Bool)

(declare-fun e!1822853 () Bool)

(assert (=> b!2881301 (= e!1822852 e!1822853)))

(declare-fun res!1193997 () Bool)

(assert (=> b!2881301 (=> (not res!1193997) (not e!1822853))))

(assert (=> b!2881301 (= res!1193997 (dynLambda!14334 lambda!107502 (h!39840 (++!8188 lt!1019591 (t!233587 (exprs!3211 c!7184))))))))

(declare-fun b!2881302 () Bool)

(assert (=> b!2881302 (= e!1822853 (forall!7095 (t!233587 (++!8188 lt!1019591 (t!233587 (exprs!3211 c!7184)))) lambda!107502))))

(assert (= (and d!833429 (not res!1193996)) b!2881301))

(assert (= (and b!2881301 res!1193997) b!2881302))

(declare-fun b_lambda!86305 () Bool)

(assert (=> (not b_lambda!86305) (not b!2881301)))

(declare-fun m!3298655 () Bool)

(assert (=> b!2881301 m!3298655))

(declare-fun m!3298657 () Bool)

(assert (=> b!2881302 m!3298657))

(assert (=> d!833093 d!833429))

(assert (=> d!833093 d!833105))

(declare-fun d!833431 () Bool)

(assert (=> d!833431 (forall!7095 (++!8188 lt!1019591 (t!233587 (exprs!3211 c!7184))) lambda!107502)))

(assert (=> d!833431 true))

(declare-fun _$78!266 () Unit!48003)

(assert (=> d!833431 (= (choose!17043 lt!1019591 (t!233587 (exprs!3211 c!7184)) lambda!107502) _$78!266)))

(declare-fun bs!523610 () Bool)

(assert (= bs!523610 d!833431))

(assert (=> bs!523610 m!3297663))

(assert (=> bs!523610 m!3297663))

(assert (=> bs!523610 m!3297947))

(assert (=> d!833093 d!833431))

(declare-fun d!833433 () Bool)

(declare-fun res!1193998 () Bool)

(declare-fun e!1822854 () Bool)

(assert (=> d!833433 (=> res!1193998 e!1822854)))

(assert (=> d!833433 (= res!1193998 ((_ is Nil!34420) lt!1019591))))

(assert (=> d!833433 (= (forall!7095 lt!1019591 lambda!107502) e!1822854)))

(declare-fun b!2881303 () Bool)

(declare-fun e!1822855 () Bool)

(assert (=> b!2881303 (= e!1822854 e!1822855)))

(declare-fun res!1193999 () Bool)

(assert (=> b!2881303 (=> (not res!1193999) (not e!1822855))))

(assert (=> b!2881303 (= res!1193999 (dynLambda!14334 lambda!107502 (h!39840 lt!1019591)))))

(declare-fun b!2881304 () Bool)

(assert (=> b!2881304 (= e!1822855 (forall!7095 (t!233587 lt!1019591) lambda!107502))))

(assert (= (and d!833433 (not res!1193998)) b!2881303))

(assert (= (and b!2881303 res!1193999) b!2881304))

(declare-fun b_lambda!86307 () Bool)

(assert (=> (not b_lambda!86307) (not b!2881303)))

(declare-fun m!3298659 () Bool)

(assert (=> b!2881303 m!3298659))

(declare-fun m!3298661 () Bool)

(assert (=> b!2881304 m!3298661))

(assert (=> d!833093 d!833433))

(declare-fun d!833435 () Bool)

(declare-fun c!467937 () Bool)

(assert (=> d!833435 (= c!467937 (isEmpty!18745 (tail!4583 (get!10353 lt!1019584))))))

(declare-fun e!1822856 () Bool)

(assert (=> d!833435 (= (matchZipper!493 (derivationStepZipper!485 lt!1019587 (head!6358 (get!10353 lt!1019584))) (tail!4583 (get!10353 lt!1019584))) e!1822856)))

(declare-fun b!2881305 () Bool)

(assert (=> b!2881305 (= e!1822856 (nullableZipper!729 (derivationStepZipper!485 lt!1019587 (head!6358 (get!10353 lt!1019584)))))))

(declare-fun b!2881306 () Bool)

(assert (=> b!2881306 (= e!1822856 (matchZipper!493 (derivationStepZipper!485 (derivationStepZipper!485 lt!1019587 (head!6358 (get!10353 lt!1019584))) (head!6358 (tail!4583 (get!10353 lt!1019584)))) (tail!4583 (tail!4583 (get!10353 lt!1019584)))))))

(assert (= (and d!833435 c!467937) b!2881305))

(assert (= (and d!833435 (not c!467937)) b!2881306))

(assert (=> d!833435 m!3297931))

(declare-fun m!3298663 () Bool)

(assert (=> d!833435 m!3298663))

(assert (=> b!2881305 m!3297929))

(declare-fun m!3298665 () Bool)

(assert (=> b!2881305 m!3298665))

(assert (=> b!2881306 m!3297931))

(declare-fun m!3298667 () Bool)

(assert (=> b!2881306 m!3298667))

(assert (=> b!2881306 m!3297929))

(assert (=> b!2881306 m!3298667))

(declare-fun m!3298669 () Bool)

(assert (=> b!2881306 m!3298669))

(assert (=> b!2881306 m!3297931))

(declare-fun m!3298671 () Bool)

(assert (=> b!2881306 m!3298671))

(assert (=> b!2881306 m!3298669))

(assert (=> b!2881306 m!3298671))

(declare-fun m!3298673 () Bool)

(assert (=> b!2881306 m!3298673))

(assert (=> b!2880724 d!833435))

(declare-fun bs!523611 () Bool)

(declare-fun d!833437 () Bool)

(assert (= bs!523611 (and d!833437 d!833341)))

(declare-fun lambda!107576 () Int)

(assert (=> bs!523611 (= (= (head!6358 (get!10353 lt!1019584)) (head!6358 (get!10353 (getLanguageWitness!453 c!7184)))) (= lambda!107576 lambda!107563))))

(declare-fun bs!523612 () Bool)

(assert (= bs!523612 (and d!833437 d!833369)))

(assert (=> bs!523612 (= (= (head!6358 (get!10353 lt!1019584)) (head!6358 (v!34551 lt!1019584))) (= lambda!107576 lambda!107567))))

(declare-fun bs!523613 () Bool)

(assert (= bs!523613 (and d!833437 d!833407)))

(assert (=> bs!523613 (= (= (head!6358 (get!10353 lt!1019584)) (head!6358 (++!8189 (v!34551 lt!1019586) (v!34551 lt!1019584)))) (= lambda!107576 lambda!107573))))

(declare-fun bs!523614 () Bool)

(assert (= bs!523614 (and d!833437 d!833421)))

(assert (=> bs!523614 (= (= (head!6358 (get!10353 lt!1019584)) (head!6358 (v!34551 lt!1019586))) (= lambda!107576 lambda!107575))))

(assert (=> d!833437 true))

(assert (=> d!833437 (= (derivationStepZipper!485 lt!1019587 (head!6358 (get!10353 lt!1019584))) (flatMap!232 lt!1019587 lambda!107576))))

(declare-fun bs!523615 () Bool)

(assert (= bs!523615 d!833437))

(declare-fun m!3298675 () Bool)

(assert (=> bs!523615 m!3298675))

(assert (=> b!2880724 d!833437))

(declare-fun d!833439 () Bool)

(assert (=> d!833439 (= (head!6358 (get!10353 lt!1019584)) (h!39841 (get!10353 lt!1019584)))))

(assert (=> b!2880724 d!833439))

(declare-fun d!833441 () Bool)

(assert (=> d!833441 (= (tail!4583 (get!10353 lt!1019584)) (t!233588 (get!10353 lt!1019584)))))

(assert (=> b!2880724 d!833441))

(assert (=> d!833085 d!833379))

(declare-fun d!833443 () Bool)

(assert (=> d!833443 (= (get!10353 (getLanguageWitness!454 (h!39840 (exprs!3211 c!7184)))) (v!34551 (getLanguageWitness!454 (h!39840 (exprs!3211 c!7184)))))))

(assert (=> d!833085 d!833443))

(assert (=> d!833085 d!833039))

(declare-fun b!2881307 () Bool)

(declare-fun e!1822857 () Bool)

(declare-fun lt!1019774 () Bool)

(declare-fun call!186824 () Bool)

(assert (=> b!2881307 (= e!1822857 (= lt!1019774 call!186824))))

(declare-fun b!2881308 () Bool)

(declare-fun e!1822862 () Bool)

(declare-fun e!1822861 () Bool)

(assert (=> b!2881308 (= e!1822862 e!1822861)))

(declare-fun res!1194000 () Bool)

(assert (=> b!2881308 (=> (not res!1194000) (not e!1822861))))

(assert (=> b!2881308 (= res!1194000 (not lt!1019774))))

(declare-fun b!2881309 () Bool)

(declare-fun res!1194003 () Bool)

(declare-fun e!1822859 () Bool)

(assert (=> b!2881309 (=> (not res!1194003) (not e!1822859))))

(assert (=> b!2881309 (= res!1194003 (isEmpty!18745 (tail!4583 (get!10353 (getLanguageWitness!454 (h!39840 (exprs!3211 c!7184)))))))))

(declare-fun b!2881310 () Bool)

(declare-fun e!1822860 () Bool)

(assert (=> b!2881310 (= e!1822860 (matchR!3751 (derivativeStep!2334 (h!39840 (exprs!3211 c!7184)) (head!6358 (get!10353 (getLanguageWitness!454 (h!39840 (exprs!3211 c!7184)))))) (tail!4583 (get!10353 (getLanguageWitness!454 (h!39840 (exprs!3211 c!7184)))))))))

(declare-fun d!833445 () Bool)

(assert (=> d!833445 e!1822857))

(declare-fun c!467940 () Bool)

(assert (=> d!833445 (= c!467940 ((_ is EmptyExpr!8751) (h!39840 (exprs!3211 c!7184))))))

(assert (=> d!833445 (= lt!1019774 e!1822860)))

(declare-fun c!467939 () Bool)

(assert (=> d!833445 (= c!467939 (isEmpty!18745 (get!10353 (getLanguageWitness!454 (h!39840 (exprs!3211 c!7184))))))))

(assert (=> d!833445 (validRegex!3529 (h!39840 (exprs!3211 c!7184)))))

(assert (=> d!833445 (= (matchR!3751 (h!39840 (exprs!3211 c!7184)) (get!10353 (getLanguageWitness!454 (h!39840 (exprs!3211 c!7184))))) lt!1019774)))

(declare-fun bm!186819 () Bool)

(assert (=> bm!186819 (= call!186824 (isEmpty!18745 (get!10353 (getLanguageWitness!454 (h!39840 (exprs!3211 c!7184))))))))

(declare-fun b!2881311 () Bool)

(assert (=> b!2881311 (= e!1822859 (= (head!6358 (get!10353 (getLanguageWitness!454 (h!39840 (exprs!3211 c!7184))))) (c!467614 (h!39840 (exprs!3211 c!7184)))))))

(declare-fun b!2881312 () Bool)

(declare-fun e!1822863 () Bool)

(assert (=> b!2881312 (= e!1822863 (not lt!1019774))))

(declare-fun b!2881313 () Bool)

(declare-fun res!1194005 () Bool)

(declare-fun e!1822858 () Bool)

(assert (=> b!2881313 (=> res!1194005 e!1822858)))

(assert (=> b!2881313 (= res!1194005 (not (isEmpty!18745 (tail!4583 (get!10353 (getLanguageWitness!454 (h!39840 (exprs!3211 c!7184))))))))))

(declare-fun b!2881314 () Bool)

(assert (=> b!2881314 (= e!1822858 (not (= (head!6358 (get!10353 (getLanguageWitness!454 (h!39840 (exprs!3211 c!7184))))) (c!467614 (h!39840 (exprs!3211 c!7184))))))))

(declare-fun b!2881315 () Bool)

(assert (=> b!2881315 (= e!1822861 e!1822858)))

(declare-fun res!1194002 () Bool)

(assert (=> b!2881315 (=> res!1194002 e!1822858)))

(assert (=> b!2881315 (= res!1194002 call!186824)))

(declare-fun b!2881316 () Bool)

(assert (=> b!2881316 (= e!1822860 (nullable!2701 (h!39840 (exprs!3211 c!7184))))))

(declare-fun b!2881317 () Bool)

(declare-fun res!1194006 () Bool)

(assert (=> b!2881317 (=> res!1194006 e!1822862)))

(assert (=> b!2881317 (= res!1194006 e!1822859)))

(declare-fun res!1194001 () Bool)

(assert (=> b!2881317 (=> (not res!1194001) (not e!1822859))))

(assert (=> b!2881317 (= res!1194001 lt!1019774)))

(declare-fun b!2881318 () Bool)

(declare-fun res!1194007 () Bool)

(assert (=> b!2881318 (=> res!1194007 e!1822862)))

(assert (=> b!2881318 (= res!1194007 (not ((_ is ElementMatch!8751) (h!39840 (exprs!3211 c!7184)))))))

(assert (=> b!2881318 (= e!1822863 e!1822862)))

(declare-fun b!2881319 () Bool)

(assert (=> b!2881319 (= e!1822857 e!1822863)))

(declare-fun c!467938 () Bool)

(assert (=> b!2881319 (= c!467938 ((_ is EmptyLang!8751) (h!39840 (exprs!3211 c!7184))))))

(declare-fun b!2881320 () Bool)

(declare-fun res!1194004 () Bool)

(assert (=> b!2881320 (=> (not res!1194004) (not e!1822859))))

(assert (=> b!2881320 (= res!1194004 (not call!186824))))

(assert (= (and d!833445 c!467939) b!2881316))

(assert (= (and d!833445 (not c!467939)) b!2881310))

(assert (= (and d!833445 c!467940) b!2881307))

(assert (= (and d!833445 (not c!467940)) b!2881319))

(assert (= (and b!2881319 c!467938) b!2881312))

(assert (= (and b!2881319 (not c!467938)) b!2881318))

(assert (= (and b!2881318 (not res!1194007)) b!2881317))

(assert (= (and b!2881317 res!1194001) b!2881320))

(assert (= (and b!2881320 res!1194004) b!2881309))

(assert (= (and b!2881309 res!1194003) b!2881311))

(assert (= (and b!2881317 (not res!1194006)) b!2881308))

(assert (= (and b!2881308 res!1194000) b!2881315))

(assert (= (and b!2881315 (not res!1194002)) b!2881313))

(assert (= (and b!2881313 (not res!1194005)) b!2881314))

(assert (= (or b!2881307 b!2881315 b!2881320) bm!186819))

(assert (=> bm!186819 m!3297919))

(declare-fun m!3298677 () Bool)

(assert (=> bm!186819 m!3298677))

(assert (=> b!2881311 m!3297919))

(declare-fun m!3298679 () Bool)

(assert (=> b!2881311 m!3298679))

(assert (=> b!2881314 m!3297919))

(assert (=> b!2881314 m!3298679))

(assert (=> b!2881313 m!3297919))

(declare-fun m!3298681 () Bool)

(assert (=> b!2881313 m!3298681))

(assert (=> b!2881313 m!3298681))

(declare-fun m!3298683 () Bool)

(assert (=> b!2881313 m!3298683))

(assert (=> d!833445 m!3297919))

(assert (=> d!833445 m!3298677))

(assert (=> d!833445 m!3297753))

(assert (=> b!2881310 m!3297919))

(assert (=> b!2881310 m!3298679))

(assert (=> b!2881310 m!3298679))

(declare-fun m!3298685 () Bool)

(assert (=> b!2881310 m!3298685))

(assert (=> b!2881310 m!3297919))

(assert (=> b!2881310 m!3298681))

(assert (=> b!2881310 m!3298685))

(assert (=> b!2881310 m!3298681))

(declare-fun m!3298687 () Bool)

(assert (=> b!2881310 m!3298687))

(assert (=> b!2881309 m!3297919))

(assert (=> b!2881309 m!3298681))

(assert (=> b!2881309 m!3298681))

(assert (=> b!2881309 m!3298683))

(assert (=> b!2881316 m!3297917))

(assert (=> d!833085 d!833445))

(declare-fun d!833447 () Bool)

(assert (=> d!833447 (matchR!3751 (h!39840 (exprs!3211 c!7184)) (get!10353 (getLanguageWitness!454 (h!39840 (exprs!3211 c!7184)))))))

(assert (=> d!833447 true))

(declare-fun _$101!135 () Unit!48003)

(assert (=> d!833447 (= (choose!17042 (h!39840 (exprs!3211 c!7184))) _$101!135)))

(declare-fun bs!523616 () Bool)

(assert (= bs!523616 d!833447))

(assert (=> bs!523616 m!3297653))

(assert (=> bs!523616 m!3297653))

(assert (=> bs!523616 m!3297919))

(assert (=> bs!523616 m!3297919))

(assert (=> bs!523616 m!3297921))

(assert (=> d!833085 d!833447))

(assert (=> b!2880713 d!833393))

(assert (=> b!2880715 d!833359))

(assert (=> b!2880715 d!833361))

(declare-fun d!833449 () Bool)

(assert (=> d!833449 (= (isEmpty!18745 (v!34551 lt!1019584)) ((_ is Nil!34421) (v!34551 lt!1019584)))))

(assert (=> d!833023 d!833449))

(declare-fun b!2881322 () Bool)

(declare-fun e!1822870 () Option!6426)

(assert (=> b!2881322 (= e!1822870 (Some!6425 Nil!34421))))

(declare-fun b!2881323 () Bool)

(declare-fun e!1822865 () Option!6426)

(assert (=> b!2881323 (= e!1822865 (Some!6425 (Cons!34421 (c!467614 (ite c!467664 (regTwo!18015 (h!39840 (exprs!3211 c!7184))) (regTwo!18014 (h!39840 (exprs!3211 c!7184))))) Nil!34421)))))

(declare-fun b!2881324 () Bool)

(declare-fun c!467948 () Bool)

(assert (=> b!2881324 (= c!467948 ((_ is Union!8751) (ite c!467664 (regTwo!18015 (h!39840 (exprs!3211 c!7184))) (regTwo!18014 (h!39840 (exprs!3211 c!7184))))))))

(declare-fun e!1822869 () Option!6426)

(declare-fun e!1822868 () Option!6426)

(assert (=> b!2881324 (= e!1822869 e!1822868)))

(declare-fun b!2881325 () Bool)

(declare-fun c!467943 () Bool)

(assert (=> b!2881325 (= c!467943 ((_ is ElementMatch!8751) (ite c!467664 (regTwo!18015 (h!39840 (exprs!3211 c!7184))) (regTwo!18014 (h!39840 (exprs!3211 c!7184))))))))

(declare-fun e!1822871 () Option!6426)

(assert (=> b!2881325 (= e!1822871 e!1822865)))

(declare-fun b!2881326 () Bool)

(declare-fun c!467946 () Bool)

(declare-fun lt!1019775 () Option!6426)

(assert (=> b!2881326 (= c!467946 ((_ is Some!6425) lt!1019775))))

(declare-fun call!186826 () Option!6426)

(assert (=> b!2881326 (= lt!1019775 call!186826)))

(declare-fun e!1822864 () Option!6426)

(declare-fun e!1822866 () Option!6426)

(assert (=> b!2881326 (= e!1822864 e!1822866)))

(declare-fun b!2881327 () Bool)

(assert (=> b!2881327 (= e!1822866 None!6425)))

(declare-fun b!2881328 () Bool)

(declare-fun lt!1019776 () Option!6426)

(assert (=> b!2881328 (= e!1822866 (Some!6425 (++!8189 (v!34551 lt!1019776) (v!34551 lt!1019775))))))

(declare-fun bm!186820 () Bool)

(assert (=> bm!186820 (= call!186826 (getLanguageWitness!454 (ite c!467948 (regTwo!18015 (ite c!467664 (regTwo!18015 (h!39840 (exprs!3211 c!7184))) (regTwo!18014 (h!39840 (exprs!3211 c!7184))))) (regTwo!18014 (ite c!467664 (regTwo!18015 (h!39840 (exprs!3211 c!7184))) (regTwo!18014 (h!39840 (exprs!3211 c!7184))))))))))

(declare-fun bm!186821 () Bool)

(declare-fun call!186825 () Option!6426)

(assert (=> bm!186821 (= call!186825 (getLanguageWitness!454 (ite c!467948 (regOne!18015 (ite c!467664 (regTwo!18015 (h!39840 (exprs!3211 c!7184))) (regTwo!18014 (h!39840 (exprs!3211 c!7184))))) (regOne!18014 (ite c!467664 (regTwo!18015 (h!39840 (exprs!3211 c!7184))) (regTwo!18014 (h!39840 (exprs!3211 c!7184))))))))))

(declare-fun b!2881329 () Bool)

(assert (=> b!2881329 (= e!1822871 None!6425)))

(declare-fun b!2881321 () Bool)

(assert (=> b!2881321 (= e!1822869 (Some!6425 Nil!34421))))

(declare-fun d!833451 () Bool)

(declare-fun c!467947 () Bool)

(assert (=> d!833451 (= c!467947 ((_ is EmptyExpr!8751) (ite c!467664 (regTwo!18015 (h!39840 (exprs!3211 c!7184))) (regTwo!18014 (h!39840 (exprs!3211 c!7184))))))))

(assert (=> d!833451 (= (getLanguageWitness!454 (ite c!467664 (regTwo!18015 (h!39840 (exprs!3211 c!7184))) (regTwo!18014 (h!39840 (exprs!3211 c!7184))))) e!1822870)))

(declare-fun b!2881330 () Bool)

(declare-fun e!1822867 () Option!6426)

(assert (=> b!2881330 (= e!1822867 call!186826)))

(declare-fun b!2881331 () Bool)

(assert (=> b!2881331 (= e!1822868 e!1822864)))

(assert (=> b!2881331 (= lt!1019776 call!186825)))

(declare-fun c!467945 () Bool)

(assert (=> b!2881331 (= c!467945 ((_ is Some!6425) lt!1019776))))

(declare-fun b!2881332 () Bool)

(assert (=> b!2881332 (= e!1822864 None!6425)))

(declare-fun b!2881333 () Bool)

(assert (=> b!2881333 (= e!1822868 e!1822867)))

(declare-fun lt!1019777 () Option!6426)

(assert (=> b!2881333 (= lt!1019777 call!186825)))

(declare-fun c!467942 () Bool)

(assert (=> b!2881333 (= c!467942 ((_ is Some!6425) lt!1019777))))

(declare-fun b!2881334 () Bool)

(assert (=> b!2881334 (= e!1822865 e!1822869)))

(declare-fun c!467941 () Bool)

(assert (=> b!2881334 (= c!467941 ((_ is Star!8751) (ite c!467664 (regTwo!18015 (h!39840 (exprs!3211 c!7184))) (regTwo!18014 (h!39840 (exprs!3211 c!7184))))))))

(declare-fun b!2881335 () Bool)

(assert (=> b!2881335 (= e!1822870 e!1822871)))

(declare-fun c!467944 () Bool)

(assert (=> b!2881335 (= c!467944 ((_ is EmptyLang!8751) (ite c!467664 (regTwo!18015 (h!39840 (exprs!3211 c!7184))) (regTwo!18014 (h!39840 (exprs!3211 c!7184))))))))

(declare-fun b!2881336 () Bool)

(assert (=> b!2881336 (= e!1822867 lt!1019777)))

(assert (= (and d!833451 c!467947) b!2881322))

(assert (= (and d!833451 (not c!467947)) b!2881335))

(assert (= (and b!2881335 c!467944) b!2881329))

(assert (= (and b!2881335 (not c!467944)) b!2881325))

(assert (= (and b!2881325 c!467943) b!2881323))

(assert (= (and b!2881325 (not c!467943)) b!2881334))

(assert (= (and b!2881334 c!467941) b!2881321))

(assert (= (and b!2881334 (not c!467941)) b!2881324))

(assert (= (and b!2881324 c!467948) b!2881333))

(assert (= (and b!2881324 (not c!467948)) b!2881331))

(assert (= (and b!2881333 c!467942) b!2881336))

(assert (= (and b!2881333 (not c!467942)) b!2881330))

(assert (= (and b!2881331 c!467945) b!2881326))

(assert (= (and b!2881331 (not c!467945)) b!2881332))

(assert (= (and b!2881326 c!467946) b!2881328))

(assert (= (and b!2881326 (not c!467946)) b!2881327))

(assert (= (or b!2881330 b!2881326) bm!186820))

(assert (= (or b!2881333 b!2881331) bm!186821))

(declare-fun m!3298689 () Bool)

(assert (=> b!2881328 m!3298689))

(declare-fun m!3298691 () Bool)

(assert (=> bm!186820 m!3298691))

(declare-fun m!3298693 () Bool)

(assert (=> bm!186821 m!3298693))

(assert (=> bm!186738 d!833451))

(declare-fun b!2881349 () Bool)

(declare-fun e!1822874 () Bool)

(declare-fun tp!924156 () Bool)

(assert (=> b!2881349 (= e!1822874 tp!924156)))

(declare-fun b!2881348 () Bool)

(declare-fun tp!924153 () Bool)

(declare-fun tp!924154 () Bool)

(assert (=> b!2881348 (= e!1822874 (and tp!924153 tp!924154))))

(declare-fun b!2881350 () Bool)

(declare-fun tp!924155 () Bool)

(declare-fun tp!924152 () Bool)

(assert (=> b!2881350 (= e!1822874 (and tp!924155 tp!924152))))

(assert (=> b!2880795 (= tp!924123 e!1822874)))

(declare-fun b!2881347 () Bool)

(declare-fun tp_is_empty!15099 () Bool)

(assert (=> b!2881347 (= e!1822874 tp_is_empty!15099)))

(assert (= (and b!2880795 ((_ is ElementMatch!8751) (h!39840 (exprs!3211 c!7184)))) b!2881347))

(assert (= (and b!2880795 ((_ is Concat!14072) (h!39840 (exprs!3211 c!7184)))) b!2881348))

(assert (= (and b!2880795 ((_ is Star!8751) (h!39840 (exprs!3211 c!7184)))) b!2881349))

(assert (= (and b!2880795 ((_ is Union!8751) (h!39840 (exprs!3211 c!7184)))) b!2881350))

(declare-fun b!2881351 () Bool)

(declare-fun e!1822875 () Bool)

(declare-fun tp!924157 () Bool)

(declare-fun tp!924158 () Bool)

(assert (=> b!2881351 (= e!1822875 (and tp!924157 tp!924158))))

(assert (=> b!2880795 (= tp!924124 e!1822875)))

(assert (= (and b!2880795 ((_ is Cons!34420) (t!233587 (exprs!3211 c!7184)))) b!2881351))

(declare-fun b_lambda!86309 () Bool)

(assert (= b_lambda!86305 (or b!2880453 b_lambda!86309)))

(declare-fun bs!523617 () Bool)

(declare-fun d!833453 () Bool)

(assert (= bs!523617 (and d!833453 b!2880453)))

(assert (=> bs!523617 (= (dynLambda!14334 lambda!107502 (h!39840 (++!8188 lt!1019591 (t!233587 (exprs!3211 c!7184))))) (validRegex!3529 (h!39840 (++!8188 lt!1019591 (t!233587 (exprs!3211 c!7184))))))))

(declare-fun m!3298695 () Bool)

(assert (=> bs!523617 m!3298695))

(assert (=> b!2881301 d!833453))

(declare-fun b_lambda!86311 () Bool)

(assert (= b_lambda!86303 (or d!833063 b_lambda!86311)))

(declare-fun bs!523618 () Bool)

(declare-fun d!833455 () Bool)

(assert (= bs!523618 (and d!833455 d!833063)))

(assert (=> bs!523618 (= (dynLambda!14334 lambda!107514 (h!39840 (exprs!3211 c!7184))) (validRegex!3529 (h!39840 (exprs!3211 c!7184))))))

(assert (=> bs!523618 m!3297753))

(assert (=> b!2881102 d!833455))

(declare-fun b_lambda!86313 () Bool)

(assert (= b_lambda!86307 (or b!2880453 b_lambda!86313)))

(declare-fun bs!523619 () Bool)

(declare-fun d!833457 () Bool)

(assert (= bs!523619 (and d!833457 b!2880453)))

(assert (=> bs!523619 (= (dynLambda!14334 lambda!107502 (h!39840 lt!1019591)) (validRegex!3529 (h!39840 lt!1019591)))))

(declare-fun m!3298697 () Bool)

(assert (=> bs!523619 m!3298697))

(assert (=> b!2881303 d!833457))

(check-sat (not bm!186813) (not d!833337) (not bm!186802) (not d!833319) (not b!2881131) (not b!2881294) (not b!2881196) (not b!2881128) (not b!2881349) (not b!2881348) (not b!2881118) (not b!2881309) (not b!2881270) (not d!833287) (not b!2881109) (not bm!186799) (not b!2881328) tp_is_empty!15099 (not d!833377) (not b!2881111) (not b!2881276) (not d!833291) (not b!2881262) (not bs!523619) (not bm!186804) (not d!833357) (not b!2881310) (not b!2881179) (not d!833347) (not d!833437) (not b!2881130) (not d!833419) (not b!2881256) (not d!833435) (not b!2881314) (not b!2881133) (not d!833407) (not b!2881275) (not bs!523617) (not d!833293) (not d!833339) (not bm!186814) (not d!833295) (not bm!186790) (not d!833309) (not b!2881198) (not b!2881126) (not b!2881302) (not b!2881113) (not bm!186788) (not d!833369) (not b!2881081) (not b!2881304) (not d!833427) (not d!833403) (not b!2881204) (not b!2881195) (not d!833413) (not b!2881351) (not b!2881284) (not bm!186811) (not d!833365) (not b!2881258) (not d!833399) (not b!2881173) (not bm!186819) (not b!2881092) (not b!2881306) (not b!2881254) (not b!2881161) (not b!2881103) (not b!2881115) (not b!2881093) (not d!833431) (not b!2881350) (not b!2881280) (not bm!186789) (not b!2881202) (not b!2881205) (not b!2881095) (not b!2881273) (not b!2881240) (not b!2881283) (not b!2881191) (not b!2881266) (not b!2881180) (not b!2881189) (not b!2881200) (not b!2881313) (not b!2881316) (not bs!523618) (not bm!186815) (not b!2881127) (not b!2881311) (not d!833421) (not bm!186820) (not d!833389) (not b!2881263) (not bm!186818) (not d!833363) (not d!833289) (not d!833341) (not b!2881305) (not b!2881267) (not b!2881181) (not d!833391) (not b!2881122) (not d!833417) (not b!2881286) (not b!2881090) (not d!833297) (not b!2881175) (not d!833331) (not b_lambda!86309) (not b!2881193) (not d!833311) (not d!833397) (not b!2881272) (not bm!186803) (not b!2881096) (not d!833405) (not d!833367) (not b_lambda!86313) (not b!2881177) (not d!833425) (not b!2881269) (not b!2881091) (not b!2881120) (not d!833335) (not b_lambda!86311) (not b!2881178) (not b!2881279) (not d!833307) (not bm!186821) (not b!2881281) (not d!833447) (not d!833317) (not b!2881213) (not d!833445) (not b!2881116))
(check-sat)
