; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!572178 () Bool)

(assert start!572178)

(declare-fun b!5465857 () Bool)

(assert (=> b!5465857 true))

(assert (=> b!5465857 true))

(declare-fun lambda!290429 () Int)

(declare-fun lambda!290428 () Int)

(assert (=> b!5465857 (not (= lambda!290429 lambda!290428))))

(assert (=> b!5465857 true))

(assert (=> b!5465857 true))

(declare-fun lambda!290430 () Int)

(assert (=> b!5465857 (not (= lambda!290430 lambda!290428))))

(assert (=> b!5465857 (not (= lambda!290430 lambda!290429))))

(assert (=> b!5465857 true))

(assert (=> b!5465857 true))

(declare-fun b!5465854 () Bool)

(assert (=> b!5465854 true))

(declare-fun b!5465839 () Bool)

(declare-fun res!2328798 () Bool)

(declare-fun e!3384049 () Bool)

(assert (=> b!5465839 (=> res!2328798 e!3384049)))

(declare-datatypes ((C!30908 0))(
  ( (C!30909 (val!25156 Int)) )
))
(declare-datatypes ((Regex!15319 0))(
  ( (ElementMatch!15319 (c!954875 C!30908)) (Concat!24164 (regOne!31150 Regex!15319) (regTwo!31150 Regex!15319)) (EmptyExpr!15319) (Star!15319 (reg!15648 Regex!15319)) (EmptyLang!15319) (Union!15319 (regOne!31151 Regex!15319) (regTwo!31151 Regex!15319)) )
))
(declare-fun r!7292 () Regex!15319)

(declare-datatypes ((List!62256 0))(
  ( (Nil!62132) (Cons!62132 (h!68580 Regex!15319) (t!375485 List!62256)) )
))
(declare-datatypes ((Context!9406 0))(
  ( (Context!9407 (exprs!5203 List!62256)) )
))
(declare-datatypes ((List!62257 0))(
  ( (Nil!62133) (Cons!62133 (h!68581 Context!9406) (t!375486 List!62257)) )
))
(declare-fun zl!343 () List!62257)

(declare-fun generalisedConcat!988 (List!62256) Regex!15319)

(assert (=> b!5465839 (= res!2328798 (not (= r!7292 (generalisedConcat!988 (exprs!5203 (h!68581 zl!343))))))))

(declare-fun b!5465840 () Bool)

(declare-fun e!3384046 () Bool)

(declare-fun tp!1503417 () Bool)

(assert (=> b!5465840 (= e!3384046 tp!1503417)))

(declare-fun b!5465841 () Bool)

(declare-fun e!3384052 () Bool)

(declare-fun tp!1503416 () Bool)

(declare-fun tp!1503424 () Bool)

(assert (=> b!5465841 (= e!3384052 (and tp!1503416 tp!1503424))))

(declare-fun b!5465842 () Bool)

(declare-fun e!3384048 () Bool)

(declare-fun lt!2233397 () Bool)

(assert (=> b!5465842 (= e!3384048 lt!2233397)))

(declare-fun b!5465843 () Bool)

(declare-fun e!3384042 () Bool)

(assert (=> b!5465843 (= e!3384042 (not e!3384049))))

(declare-fun res!2328801 () Bool)

(assert (=> b!5465843 (=> res!2328801 e!3384049)))

(get-info :version)

(assert (=> b!5465843 (= res!2328801 (not ((_ is Cons!62133) zl!343)))))

(declare-fun lt!2233396 () Bool)

(declare-datatypes ((List!62258 0))(
  ( (Nil!62134) (Cons!62134 (h!68582 C!30908) (t!375487 List!62258)) )
))
(declare-fun s!2326 () List!62258)

(declare-fun matchRSpec!2422 (Regex!15319 List!62258) Bool)

(assert (=> b!5465843 (= lt!2233396 (matchRSpec!2422 r!7292 s!2326))))

(declare-fun matchR!7504 (Regex!15319 List!62258) Bool)

(assert (=> b!5465843 (= lt!2233396 (matchR!7504 r!7292 s!2326))))

(declare-datatypes ((Unit!155088 0))(
  ( (Unit!155089) )
))
(declare-fun lt!2233395 () Unit!155088)

(declare-fun mainMatchTheorem!2422 (Regex!15319 List!62258) Unit!155088)

(assert (=> b!5465843 (= lt!2233395 (mainMatchTheorem!2422 r!7292 s!2326))))

(declare-fun b!5465844 () Bool)

(declare-fun res!2328799 () Bool)

(assert (=> b!5465844 (=> res!2328799 e!3384049)))

(assert (=> b!5465844 (= res!2328799 (not ((_ is Cons!62132) (exprs!5203 (h!68581 zl!343)))))))

(declare-fun b!5465845 () Bool)

(declare-fun res!2328804 () Bool)

(assert (=> b!5465845 (=> res!2328804 e!3384049)))

(assert (=> b!5465845 (= res!2328804 (or ((_ is EmptyExpr!15319) r!7292) ((_ is EmptyLang!15319) r!7292) ((_ is ElementMatch!15319) r!7292) ((_ is Union!15319) r!7292) ((_ is Concat!24164) r!7292)))))

(declare-fun b!5465846 () Bool)

(declare-fun e!3384045 () Bool)

(declare-fun tp_is_empty!39891 () Bool)

(declare-fun tp!1503425 () Bool)

(assert (=> b!5465846 (= e!3384045 (and tp_is_empty!39891 tp!1503425))))

(declare-fun b!5465847 () Bool)

(declare-fun e!3384044 () Bool)

(declare-fun e!3384050 () Bool)

(assert (=> b!5465847 (= e!3384044 e!3384050)))

(declare-fun res!2328805 () Bool)

(assert (=> b!5465847 (=> res!2328805 e!3384050)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2233394 () (InoxSet Context!9406))

(declare-fun lt!2233389 () (InoxSet Context!9406))

(assert (=> b!5465847 (= res!2328805 (not (= lt!2233394 lt!2233389)))))

(declare-fun derivationStepZipperDown!745 (Regex!15319 Context!9406 C!30908) (InoxSet Context!9406))

(assert (=> b!5465847 (= lt!2233389 (derivationStepZipperDown!745 r!7292 (Context!9407 Nil!62132) (h!68582 s!2326)))))

(declare-fun derivationStepZipperUp!671 (Context!9406 C!30908) (InoxSet Context!9406))

(assert (=> b!5465847 (= lt!2233394 (derivationStepZipperUp!671 (Context!9407 (Cons!62132 r!7292 Nil!62132)) (h!68582 s!2326)))))

(declare-fun b!5465848 () Bool)

(assert (=> b!5465848 (= e!3384052 tp_is_empty!39891)))

(declare-fun b!5465849 () Bool)

(declare-fun tp!1503423 () Bool)

(assert (=> b!5465849 (= e!3384052 tp!1503423)))

(declare-fun b!5465850 () Bool)

(declare-fun res!2328807 () Bool)

(assert (=> b!5465850 (=> res!2328807 e!3384049)))

(declare-fun isEmpty!34094 (List!62257) Bool)

(assert (=> b!5465850 (= res!2328807 (not (isEmpty!34094 (t!375486 zl!343))))))

(declare-fun b!5465851 () Bool)

(declare-fun res!2328809 () Bool)

(assert (=> b!5465851 (=> res!2328809 e!3384044)))

(assert (=> b!5465851 (= res!2328809 ((_ is Nil!62134) s!2326))))

(declare-fun b!5465852 () Bool)

(declare-fun tp!1503421 () Bool)

(declare-fun tp!1503419 () Bool)

(assert (=> b!5465852 (= e!3384052 (and tp!1503421 tp!1503419))))

(declare-fun b!5465853 () Bool)

(declare-fun e!3384043 () Bool)

(declare-fun tp!1503418 () Bool)

(assert (=> b!5465853 (= e!3384043 tp!1503418)))

(declare-fun setNonEmpty!35833 () Bool)

(declare-fun setRes!35833 () Bool)

(declare-fun setElem!35833 () Context!9406)

(declare-fun tp!1503422 () Bool)

(declare-fun inv!81544 (Context!9406) Bool)

(assert (=> setNonEmpty!35833 (= setRes!35833 (and tp!1503422 (inv!81544 setElem!35833) e!3384046))))

(declare-fun z!1189 () (InoxSet Context!9406))

(declare-fun setRest!35833 () (InoxSet Context!9406))

(assert (=> setNonEmpty!35833 (= z!1189 ((_ map or) (store ((as const (Array Context!9406 Bool)) false) setElem!35833 true) setRest!35833))))

(declare-fun res!2328810 () Bool)

(assert (=> start!572178 (=> (not res!2328810) (not e!3384042))))

(declare-fun validRegex!7055 (Regex!15319) Bool)

(assert (=> start!572178 (= res!2328810 (validRegex!7055 r!7292))))

(assert (=> start!572178 e!3384042))

(assert (=> start!572178 e!3384052))

(declare-fun condSetEmpty!35833 () Bool)

(assert (=> start!572178 (= condSetEmpty!35833 (= z!1189 ((as const (Array Context!9406 Bool)) false)))))

(assert (=> start!572178 setRes!35833))

(declare-fun e!3384047 () Bool)

(assert (=> start!572178 e!3384047))

(assert (=> start!572178 e!3384045))

(declare-fun e!3384051 () Bool)

(assert (=> b!5465854 (= e!3384050 e!3384051)))

(declare-fun res!2328808 () Bool)

(assert (=> b!5465854 (=> res!2328808 e!3384051)))

(declare-fun derivationStepZipper!1514 ((InoxSet Context!9406) C!30908) (InoxSet Context!9406))

(assert (=> b!5465854 (= res!2328808 (not (= (derivationStepZipper!1514 z!1189 (h!68582 s!2326)) lt!2233389)))))

(declare-fun lambda!290431 () Int)

(declare-fun flatMap!1022 ((InoxSet Context!9406) Int) (InoxSet Context!9406))

(assert (=> b!5465854 (= (flatMap!1022 z!1189 lambda!290431) (derivationStepZipperUp!671 (h!68581 zl!343) (h!68582 s!2326)))))

(declare-fun lt!2233388 () Unit!155088)

(declare-fun lemmaFlatMapOnSingletonSet!554 ((InoxSet Context!9406) Context!9406 Int) Unit!155088)

(assert (=> b!5465854 (= lt!2233388 (lemmaFlatMapOnSingletonSet!554 z!1189 (h!68581 zl!343) lambda!290431))))

(declare-fun tp!1503420 () Bool)

(declare-fun b!5465855 () Bool)

(assert (=> b!5465855 (= e!3384047 (and (inv!81544 (h!68581 zl!343)) e!3384043 tp!1503420))))

(declare-fun b!5465856 () Bool)

(declare-fun res!2328800 () Bool)

(assert (=> b!5465856 (=> (not res!2328800) (not e!3384042))))

(declare-fun unfocusZipper!1061 (List!62257) Regex!15319)

(assert (=> b!5465856 (= res!2328800 (= r!7292 (unfocusZipper!1061 zl!343)))))

(assert (=> b!5465857 (= e!3384049 e!3384044)))

(declare-fun res!2328806 () Bool)

(assert (=> b!5465857 (=> res!2328806 e!3384044)))

(assert (=> b!5465857 (= res!2328806 (not (= lt!2233396 e!3384048)))))

(declare-fun res!2328803 () Bool)

(assert (=> b!5465857 (=> res!2328803 e!3384048)))

(declare-fun isEmpty!34095 (List!62258) Bool)

(assert (=> b!5465857 (= res!2328803 (isEmpty!34095 s!2326))))

(declare-fun Exists!2498 (Int) Bool)

(assert (=> b!5465857 (= (Exists!2498 lambda!290428) (Exists!2498 lambda!290430))))

(declare-fun lt!2233392 () Unit!155088)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1148 (Regex!15319 Regex!15319 List!62258) Unit!155088)

(assert (=> b!5465857 (= lt!2233392 (lemmaExistCutMatchRandMatchRSpecEquivalent!1148 (reg!15648 r!7292) r!7292 s!2326))))

(assert (=> b!5465857 (= (Exists!2498 lambda!290428) (Exists!2498 lambda!290429))))

(declare-fun lt!2233386 () Unit!155088)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!472 (Regex!15319 List!62258) Unit!155088)

(assert (=> b!5465857 (= lt!2233386 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!472 (reg!15648 r!7292) s!2326))))

(assert (=> b!5465857 (= lt!2233397 (Exists!2498 lambda!290428))))

(declare-datatypes ((tuple2!65032 0))(
  ( (tuple2!65033 (_1!35819 List!62258) (_2!35819 List!62258)) )
))
(declare-datatypes ((Option!15428 0))(
  ( (None!15427) (Some!15427 (v!51456 tuple2!65032)) )
))
(declare-fun isDefined!12131 (Option!15428) Bool)

(declare-fun findConcatSeparation!1842 (Regex!15319 Regex!15319 List!62258 List!62258 List!62258) Option!15428)

(assert (=> b!5465857 (= lt!2233397 (isDefined!12131 (findConcatSeparation!1842 (reg!15648 r!7292) r!7292 Nil!62134 s!2326 s!2326)))))

(declare-fun lt!2233385 () Unit!155088)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1606 (Regex!15319 Regex!15319 List!62258) Unit!155088)

(assert (=> b!5465857 (= lt!2233385 (lemmaFindConcatSeparationEquivalentToExists!1606 (reg!15648 r!7292) r!7292 s!2326))))

(declare-fun b!5465858 () Bool)

(declare-fun res!2328797 () Bool)

(assert (=> b!5465858 (=> (not res!2328797) (not e!3384042))))

(declare-fun toList!9103 ((InoxSet Context!9406)) List!62257)

(assert (=> b!5465858 (= res!2328797 (= (toList!9103 z!1189) zl!343))))

(declare-fun setIsEmpty!35833 () Bool)

(assert (=> setIsEmpty!35833 setRes!35833))

(declare-fun b!5465859 () Bool)

(assert (=> b!5465859 (= e!3384051 (validRegex!7055 (reg!15648 r!7292)))))

(declare-fun lt!2233387 () (InoxSet Context!9406))

(declare-fun lt!2233393 () Context!9406)

(assert (=> b!5465859 (= (flatMap!1022 lt!2233387 lambda!290431) (derivationStepZipperUp!671 lt!2233393 (h!68582 s!2326)))))

(declare-fun lt!2233390 () Unit!155088)

(assert (=> b!5465859 (= lt!2233390 (lemmaFlatMapOnSingletonSet!554 lt!2233387 lt!2233393 lambda!290431))))

(declare-fun lt!2233391 () (InoxSet Context!9406))

(assert (=> b!5465859 (= lt!2233391 (derivationStepZipperUp!671 lt!2233393 (h!68582 s!2326)))))

(assert (=> b!5465859 (= lt!2233387 (store ((as const (Array Context!9406 Bool)) false) lt!2233393 true))))

(assert (=> b!5465859 (= lt!2233393 (Context!9407 (Cons!62132 (reg!15648 r!7292) (Cons!62132 r!7292 Nil!62132))))))

(declare-fun b!5465860 () Bool)

(declare-fun res!2328802 () Bool)

(assert (=> b!5465860 (=> res!2328802 e!3384049)))

(declare-fun generalisedUnion!1248 (List!62256) Regex!15319)

(declare-fun unfocusZipperList!761 (List!62257) List!62256)

(assert (=> b!5465860 (= res!2328802 (not (= r!7292 (generalisedUnion!1248 (unfocusZipperList!761 zl!343)))))))

(assert (= (and start!572178 res!2328810) b!5465858))

(assert (= (and b!5465858 res!2328797) b!5465856))

(assert (= (and b!5465856 res!2328800) b!5465843))

(assert (= (and b!5465843 (not res!2328801)) b!5465850))

(assert (= (and b!5465850 (not res!2328807)) b!5465839))

(assert (= (and b!5465839 (not res!2328798)) b!5465844))

(assert (= (and b!5465844 (not res!2328799)) b!5465860))

(assert (= (and b!5465860 (not res!2328802)) b!5465845))

(assert (= (and b!5465845 (not res!2328804)) b!5465857))

(assert (= (and b!5465857 (not res!2328803)) b!5465842))

(assert (= (and b!5465857 (not res!2328806)) b!5465851))

(assert (= (and b!5465851 (not res!2328809)) b!5465847))

(assert (= (and b!5465847 (not res!2328805)) b!5465854))

(assert (= (and b!5465854 (not res!2328808)) b!5465859))

(assert (= (and start!572178 ((_ is ElementMatch!15319) r!7292)) b!5465848))

(assert (= (and start!572178 ((_ is Concat!24164) r!7292)) b!5465841))

(assert (= (and start!572178 ((_ is Star!15319) r!7292)) b!5465849))

(assert (= (and start!572178 ((_ is Union!15319) r!7292)) b!5465852))

(assert (= (and start!572178 condSetEmpty!35833) setIsEmpty!35833))

(assert (= (and start!572178 (not condSetEmpty!35833)) setNonEmpty!35833))

(assert (= setNonEmpty!35833 b!5465840))

(assert (= b!5465855 b!5465853))

(assert (= (and start!572178 ((_ is Cons!62133) zl!343)) b!5465855))

(assert (= (and start!572178 ((_ is Cons!62134) s!2326)) b!5465846))

(declare-fun m!6485520 () Bool)

(assert (=> b!5465858 m!6485520))

(declare-fun m!6485522 () Bool)

(assert (=> b!5465847 m!6485522))

(declare-fun m!6485524 () Bool)

(assert (=> b!5465847 m!6485524))

(declare-fun m!6485526 () Bool)

(assert (=> b!5465843 m!6485526))

(declare-fun m!6485528 () Bool)

(assert (=> b!5465843 m!6485528))

(declare-fun m!6485530 () Bool)

(assert (=> b!5465843 m!6485530))

(declare-fun m!6485532 () Bool)

(assert (=> start!572178 m!6485532))

(declare-fun m!6485534 () Bool)

(assert (=> b!5465859 m!6485534))

(declare-fun m!6485536 () Bool)

(assert (=> b!5465859 m!6485536))

(declare-fun m!6485538 () Bool)

(assert (=> b!5465859 m!6485538))

(declare-fun m!6485540 () Bool)

(assert (=> b!5465859 m!6485540))

(declare-fun m!6485542 () Bool)

(assert (=> b!5465859 m!6485542))

(declare-fun m!6485544 () Bool)

(assert (=> b!5465857 m!6485544))

(assert (=> b!5465857 m!6485544))

(declare-fun m!6485546 () Bool)

(assert (=> b!5465857 m!6485546))

(declare-fun m!6485548 () Bool)

(assert (=> b!5465857 m!6485548))

(declare-fun m!6485550 () Bool)

(assert (=> b!5465857 m!6485550))

(declare-fun m!6485552 () Bool)

(assert (=> b!5465857 m!6485552))

(declare-fun m!6485554 () Bool)

(assert (=> b!5465857 m!6485554))

(assert (=> b!5465857 m!6485552))

(declare-fun m!6485556 () Bool)

(assert (=> b!5465857 m!6485556))

(declare-fun m!6485558 () Bool)

(assert (=> b!5465857 m!6485558))

(declare-fun m!6485560 () Bool)

(assert (=> b!5465857 m!6485560))

(assert (=> b!5465857 m!6485544))

(declare-fun m!6485562 () Bool)

(assert (=> b!5465860 m!6485562))

(assert (=> b!5465860 m!6485562))

(declare-fun m!6485564 () Bool)

(assert (=> b!5465860 m!6485564))

(declare-fun m!6485566 () Bool)

(assert (=> setNonEmpty!35833 m!6485566))

(declare-fun m!6485568 () Bool)

(assert (=> b!5465856 m!6485568))

(declare-fun m!6485570 () Bool)

(assert (=> b!5465850 m!6485570))

(declare-fun m!6485572 () Bool)

(assert (=> b!5465839 m!6485572))

(declare-fun m!6485574 () Bool)

(assert (=> b!5465855 m!6485574))

(declare-fun m!6485576 () Bool)

(assert (=> b!5465854 m!6485576))

(declare-fun m!6485578 () Bool)

(assert (=> b!5465854 m!6485578))

(declare-fun m!6485580 () Bool)

(assert (=> b!5465854 m!6485580))

(declare-fun m!6485582 () Bool)

(assert (=> b!5465854 m!6485582))

(check-sat (not b!5465852) (not start!572178) (not setNonEmpty!35833) (not b!5465849) (not b!5465853) (not b!5465850) (not b!5465841) (not b!5465854) (not b!5465843) (not b!5465858) (not b!5465860) (not b!5465859) (not b!5465856) (not b!5465840) (not b!5465847) (not b!5465855) (not b!5465846) (not b!5465839) tp_is_empty!39891 (not b!5465857))
(check-sat)
(get-model)

(declare-fun b!5465935 () Bool)

(declare-fun e!3384101 () Bool)

(declare-fun lt!2233403 () Regex!15319)

(declare-fun head!11705 (List!62256) Regex!15319)

(assert (=> b!5465935 (= e!3384101 (= lt!2233403 (head!11705 (exprs!5203 (h!68581 zl!343)))))))

(declare-fun b!5465936 () Bool)

(declare-fun e!3384099 () Regex!15319)

(assert (=> b!5465936 (= e!3384099 (h!68580 (exprs!5203 (h!68581 zl!343))))))

(declare-fun d!1738523 () Bool)

(declare-fun e!3384098 () Bool)

(assert (=> d!1738523 e!3384098))

(declare-fun res!2328831 () Bool)

(assert (=> d!1738523 (=> (not res!2328831) (not e!3384098))))

(assert (=> d!1738523 (= res!2328831 (validRegex!7055 lt!2233403))))

(assert (=> d!1738523 (= lt!2233403 e!3384099)))

(declare-fun c!954900 () Bool)

(declare-fun e!3384097 () Bool)

(assert (=> d!1738523 (= c!954900 e!3384097)))

(declare-fun res!2328832 () Bool)

(assert (=> d!1738523 (=> (not res!2328832) (not e!3384097))))

(assert (=> d!1738523 (= res!2328832 ((_ is Cons!62132) (exprs!5203 (h!68581 zl!343))))))

(declare-fun lambda!290440 () Int)

(declare-fun forall!14600 (List!62256 Int) Bool)

(assert (=> d!1738523 (forall!14600 (exprs!5203 (h!68581 zl!343)) lambda!290440)))

(assert (=> d!1738523 (= (generalisedConcat!988 (exprs!5203 (h!68581 zl!343))) lt!2233403)))

(declare-fun b!5465937 () Bool)

(declare-fun e!3384100 () Bool)

(assert (=> b!5465937 (= e!3384098 e!3384100)))

(declare-fun c!954901 () Bool)

(declare-fun isEmpty!34098 (List!62256) Bool)

(assert (=> b!5465937 (= c!954901 (isEmpty!34098 (exprs!5203 (h!68581 zl!343))))))

(declare-fun b!5465938 () Bool)

(declare-fun isConcat!549 (Regex!15319) Bool)

(assert (=> b!5465938 (= e!3384101 (isConcat!549 lt!2233403))))

(declare-fun b!5465939 () Bool)

(declare-fun e!3384102 () Regex!15319)

(assert (=> b!5465939 (= e!3384102 (Concat!24164 (h!68580 (exprs!5203 (h!68581 zl!343))) (generalisedConcat!988 (t!375485 (exprs!5203 (h!68581 zl!343))))))))

(declare-fun b!5465940 () Bool)

(assert (=> b!5465940 (= e!3384099 e!3384102)))

(declare-fun c!954903 () Bool)

(assert (=> b!5465940 (= c!954903 ((_ is Cons!62132) (exprs!5203 (h!68581 zl!343))))))

(declare-fun b!5465941 () Bool)

(assert (=> b!5465941 (= e!3384100 e!3384101)))

(declare-fun c!954902 () Bool)

(declare-fun tail!10802 (List!62256) List!62256)

(assert (=> b!5465941 (= c!954902 (isEmpty!34098 (tail!10802 (exprs!5203 (h!68581 zl!343)))))))

(declare-fun b!5465942 () Bool)

(assert (=> b!5465942 (= e!3384097 (isEmpty!34098 (t!375485 (exprs!5203 (h!68581 zl!343)))))))

(declare-fun b!5465943 () Bool)

(assert (=> b!5465943 (= e!3384102 EmptyExpr!15319)))

(declare-fun b!5465944 () Bool)

(declare-fun isEmptyExpr!1026 (Regex!15319) Bool)

(assert (=> b!5465944 (= e!3384100 (isEmptyExpr!1026 lt!2233403))))

(assert (= (and d!1738523 res!2328832) b!5465942))

(assert (= (and d!1738523 c!954900) b!5465936))

(assert (= (and d!1738523 (not c!954900)) b!5465940))

(assert (= (and b!5465940 c!954903) b!5465939))

(assert (= (and b!5465940 (not c!954903)) b!5465943))

(assert (= (and d!1738523 res!2328831) b!5465937))

(assert (= (and b!5465937 c!954901) b!5465944))

(assert (= (and b!5465937 (not c!954901)) b!5465941))

(assert (= (and b!5465941 c!954902) b!5465935))

(assert (= (and b!5465941 (not c!954902)) b!5465938))

(declare-fun m!6485610 () Bool)

(assert (=> b!5465937 m!6485610))

(declare-fun m!6485614 () Bool)

(assert (=> b!5465939 m!6485614))

(declare-fun m!6485616 () Bool)

(assert (=> b!5465942 m!6485616))

(declare-fun m!6485618 () Bool)

(assert (=> b!5465944 m!6485618))

(declare-fun m!6485620 () Bool)

(assert (=> b!5465935 m!6485620))

(declare-fun m!6485622 () Bool)

(assert (=> d!1738523 m!6485622))

(declare-fun m!6485624 () Bool)

(assert (=> d!1738523 m!6485624))

(declare-fun m!6485626 () Bool)

(assert (=> b!5465938 m!6485626))

(declare-fun m!6485628 () Bool)

(assert (=> b!5465941 m!6485628))

(assert (=> b!5465941 m!6485628))

(declare-fun m!6485630 () Bool)

(assert (=> b!5465941 m!6485630))

(assert (=> b!5465839 d!1738523))

(declare-fun d!1738533 () Bool)

(declare-fun isEmpty!34099 (Option!15428) Bool)

(assert (=> d!1738533 (= (isDefined!12131 (findConcatSeparation!1842 (reg!15648 r!7292) r!7292 Nil!62134 s!2326 s!2326)) (not (isEmpty!34099 (findConcatSeparation!1842 (reg!15648 r!7292) r!7292 Nil!62134 s!2326 s!2326))))))

(declare-fun bs!1264488 () Bool)

(assert (= bs!1264488 d!1738533))

(assert (=> bs!1264488 m!6485552))

(declare-fun m!6485640 () Bool)

(assert (=> bs!1264488 m!6485640))

(assert (=> b!5465857 d!1738533))

(declare-fun bs!1264494 () Bool)

(declare-fun d!1738539 () Bool)

(assert (= bs!1264494 (and d!1738539 b!5465857)))

(declare-fun lambda!290450 () Int)

(assert (=> bs!1264494 (= lambda!290450 lambda!290428)))

(assert (=> bs!1264494 (not (= lambda!290450 lambda!290429))))

(assert (=> bs!1264494 (not (= lambda!290450 lambda!290430))))

(assert (=> d!1738539 true))

(assert (=> d!1738539 true))

(assert (=> d!1738539 true))

(declare-fun lambda!290453 () Int)

(assert (=> bs!1264494 (not (= lambda!290453 lambda!290428))))

(assert (=> bs!1264494 (not (= lambda!290453 lambda!290429))))

(assert (=> bs!1264494 (= lambda!290453 lambda!290430)))

(declare-fun bs!1264497 () Bool)

(assert (= bs!1264497 d!1738539))

(assert (=> bs!1264497 (not (= lambda!290453 lambda!290450))))

(assert (=> d!1738539 true))

(assert (=> d!1738539 true))

(assert (=> d!1738539 true))

(assert (=> d!1738539 (= (Exists!2498 lambda!290450) (Exists!2498 lambda!290453))))

(declare-fun lt!2233412 () Unit!155088)

(declare-fun choose!41555 (Regex!15319 Regex!15319 List!62258) Unit!155088)

(assert (=> d!1738539 (= lt!2233412 (choose!41555 (reg!15648 r!7292) r!7292 s!2326))))

(assert (=> d!1738539 (validRegex!7055 (reg!15648 r!7292))))

(assert (=> d!1738539 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1148 (reg!15648 r!7292) r!7292 s!2326) lt!2233412)))

(declare-fun m!6485666 () Bool)

(assert (=> bs!1264497 m!6485666))

(declare-fun m!6485668 () Bool)

(assert (=> bs!1264497 m!6485668))

(declare-fun m!6485670 () Bool)

(assert (=> bs!1264497 m!6485670))

(assert (=> bs!1264497 m!6485538))

(assert (=> b!5465857 d!1738539))

(declare-fun bs!1264504 () Bool)

(declare-fun d!1738551 () Bool)

(assert (= bs!1264504 (and d!1738551 d!1738539)))

(declare-fun lambda!290463 () Int)

(assert (=> bs!1264504 (= (= (Star!15319 (reg!15648 r!7292)) r!7292) (= lambda!290463 lambda!290450))))

(declare-fun bs!1264506 () Bool)

(assert (= bs!1264506 (and d!1738551 b!5465857)))

(assert (=> bs!1264506 (not (= lambda!290463 lambda!290430))))

(assert (=> bs!1264506 (not (= lambda!290463 lambda!290429))))

(assert (=> bs!1264506 (= (= (Star!15319 (reg!15648 r!7292)) r!7292) (= lambda!290463 lambda!290428))))

(assert (=> bs!1264504 (not (= lambda!290463 lambda!290453))))

(assert (=> d!1738551 true))

(assert (=> d!1738551 true))

(declare-fun lambda!290465 () Int)

(assert (=> bs!1264504 (not (= lambda!290465 lambda!290450))))

(assert (=> bs!1264506 (not (= lambda!290465 lambda!290430))))

(assert (=> bs!1264506 (= (= (Star!15319 (reg!15648 r!7292)) r!7292) (= lambda!290465 lambda!290429))))

(assert (=> bs!1264506 (not (= lambda!290465 lambda!290428))))

(declare-fun bs!1264510 () Bool)

(assert (= bs!1264510 d!1738551))

(assert (=> bs!1264510 (not (= lambda!290465 lambda!290463))))

(assert (=> bs!1264504 (not (= lambda!290465 lambda!290453))))

(assert (=> d!1738551 true))

(assert (=> d!1738551 true))

(assert (=> d!1738551 (= (Exists!2498 lambda!290463) (Exists!2498 lambda!290465))))

(declare-fun lt!2233427 () Unit!155088)

(declare-fun choose!41556 (Regex!15319 List!62258) Unit!155088)

(assert (=> d!1738551 (= lt!2233427 (choose!41556 (reg!15648 r!7292) s!2326))))

(assert (=> d!1738551 (validRegex!7055 (reg!15648 r!7292))))

(assert (=> d!1738551 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!472 (reg!15648 r!7292) s!2326) lt!2233427)))

(declare-fun m!6485702 () Bool)

(assert (=> bs!1264510 m!6485702))

(declare-fun m!6485704 () Bool)

(assert (=> bs!1264510 m!6485704))

(declare-fun m!6485706 () Bool)

(assert (=> bs!1264510 m!6485706))

(assert (=> bs!1264510 m!6485538))

(assert (=> b!5465857 d!1738551))

(declare-fun d!1738573 () Bool)

(declare-fun choose!41557 (Int) Bool)

(assert (=> d!1738573 (= (Exists!2498 lambda!290429) (choose!41557 lambda!290429))))

(declare-fun bs!1264511 () Bool)

(assert (= bs!1264511 d!1738573))

(declare-fun m!6485708 () Bool)

(assert (=> bs!1264511 m!6485708))

(assert (=> b!5465857 d!1738573))

(declare-fun d!1738575 () Bool)

(assert (=> d!1738575 (= (isEmpty!34095 s!2326) ((_ is Nil!62134) s!2326))))

(assert (=> b!5465857 d!1738575))

(declare-fun d!1738577 () Bool)

(assert (=> d!1738577 (= (Exists!2498 lambda!290430) (choose!41557 lambda!290430))))

(declare-fun bs!1264512 () Bool)

(assert (= bs!1264512 d!1738577))

(declare-fun m!6485710 () Bool)

(assert (=> bs!1264512 m!6485710))

(assert (=> b!5465857 d!1738577))

(declare-fun d!1738579 () Bool)

(assert (=> d!1738579 (= (Exists!2498 lambda!290428) (choose!41557 lambda!290428))))

(declare-fun bs!1264513 () Bool)

(assert (= bs!1264513 d!1738579))

(declare-fun m!6485712 () Bool)

(assert (=> bs!1264513 m!6485712))

(assert (=> b!5465857 d!1738579))

(declare-fun b!5466151 () Bool)

(declare-fun e!3384222 () Option!15428)

(assert (=> b!5466151 (= e!3384222 (Some!15427 (tuple2!65033 Nil!62134 s!2326)))))

(declare-fun d!1738581 () Bool)

(declare-fun e!3384219 () Bool)

(assert (=> d!1738581 e!3384219))

(declare-fun res!2328959 () Bool)

(assert (=> d!1738581 (=> res!2328959 e!3384219)))

(declare-fun e!3384218 () Bool)

(assert (=> d!1738581 (= res!2328959 e!3384218)))

(declare-fun res!2328960 () Bool)

(assert (=> d!1738581 (=> (not res!2328960) (not e!3384218))))

(declare-fun lt!2233451 () Option!15428)

(assert (=> d!1738581 (= res!2328960 (isDefined!12131 lt!2233451))))

(assert (=> d!1738581 (= lt!2233451 e!3384222)))

(declare-fun c!954946 () Bool)

(declare-fun e!3384221 () Bool)

(assert (=> d!1738581 (= c!954946 e!3384221)))

(declare-fun res!2328961 () Bool)

(assert (=> d!1738581 (=> (not res!2328961) (not e!3384221))))

(assert (=> d!1738581 (= res!2328961 (matchR!7504 (reg!15648 r!7292) Nil!62134))))

(assert (=> d!1738581 (validRegex!7055 (reg!15648 r!7292))))

(assert (=> d!1738581 (= (findConcatSeparation!1842 (reg!15648 r!7292) r!7292 Nil!62134 s!2326 s!2326) lt!2233451)))

(declare-fun b!5466152 () Bool)

(declare-fun e!3384220 () Option!15428)

(assert (=> b!5466152 (= e!3384222 e!3384220)))

(declare-fun c!954945 () Bool)

(assert (=> b!5466152 (= c!954945 ((_ is Nil!62134) s!2326))))

(declare-fun b!5466153 () Bool)

(declare-fun res!2328958 () Bool)

(assert (=> b!5466153 (=> (not res!2328958) (not e!3384218))))

(declare-fun get!21421 (Option!15428) tuple2!65032)

(assert (=> b!5466153 (= res!2328958 (matchR!7504 (reg!15648 r!7292) (_1!35819 (get!21421 lt!2233451))))))

(declare-fun b!5466154 () Bool)

(declare-fun ++!13668 (List!62258 List!62258) List!62258)

(assert (=> b!5466154 (= e!3384218 (= (++!13668 (_1!35819 (get!21421 lt!2233451)) (_2!35819 (get!21421 lt!2233451))) s!2326))))

(declare-fun b!5466155 () Bool)

(assert (=> b!5466155 (= e!3384219 (not (isDefined!12131 lt!2233451)))))

(declare-fun b!5466156 () Bool)

(declare-fun lt!2233449 () Unit!155088)

(declare-fun lt!2233450 () Unit!155088)

(assert (=> b!5466156 (= lt!2233449 lt!2233450)))

(assert (=> b!5466156 (= (++!13668 (++!13668 Nil!62134 (Cons!62134 (h!68582 s!2326) Nil!62134)) (t!375487 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1889 (List!62258 C!30908 List!62258 List!62258) Unit!155088)

(assert (=> b!5466156 (= lt!2233450 (lemmaMoveElementToOtherListKeepsConcatEq!1889 Nil!62134 (h!68582 s!2326) (t!375487 s!2326) s!2326))))

(assert (=> b!5466156 (= e!3384220 (findConcatSeparation!1842 (reg!15648 r!7292) r!7292 (++!13668 Nil!62134 (Cons!62134 (h!68582 s!2326) Nil!62134)) (t!375487 s!2326) s!2326))))

(declare-fun b!5466157 () Bool)

(assert (=> b!5466157 (= e!3384220 None!15427)))

(declare-fun b!5466158 () Bool)

(assert (=> b!5466158 (= e!3384221 (matchR!7504 r!7292 s!2326))))

(declare-fun b!5466159 () Bool)

(declare-fun res!2328957 () Bool)

(assert (=> b!5466159 (=> (not res!2328957) (not e!3384218))))

(assert (=> b!5466159 (= res!2328957 (matchR!7504 r!7292 (_2!35819 (get!21421 lt!2233451))))))

(assert (= (and d!1738581 res!2328961) b!5466158))

(assert (= (and d!1738581 c!954946) b!5466151))

(assert (= (and d!1738581 (not c!954946)) b!5466152))

(assert (= (and b!5466152 c!954945) b!5466157))

(assert (= (and b!5466152 (not c!954945)) b!5466156))

(assert (= (and d!1738581 res!2328960) b!5466153))

(assert (= (and b!5466153 res!2328958) b!5466159))

(assert (= (and b!5466159 res!2328957) b!5466154))

(assert (= (and d!1738581 (not res!2328959)) b!5466155))

(declare-fun m!6485744 () Bool)

(assert (=> b!5466155 m!6485744))

(assert (=> b!5466158 m!6485528))

(declare-fun m!6485746 () Bool)

(assert (=> b!5466154 m!6485746))

(declare-fun m!6485748 () Bool)

(assert (=> b!5466154 m!6485748))

(assert (=> b!5466159 m!6485746))

(declare-fun m!6485750 () Bool)

(assert (=> b!5466159 m!6485750))

(assert (=> b!5466153 m!6485746))

(declare-fun m!6485752 () Bool)

(assert (=> b!5466153 m!6485752))

(assert (=> d!1738581 m!6485744))

(declare-fun m!6485754 () Bool)

(assert (=> d!1738581 m!6485754))

(assert (=> d!1738581 m!6485538))

(declare-fun m!6485756 () Bool)

(assert (=> b!5466156 m!6485756))

(assert (=> b!5466156 m!6485756))

(declare-fun m!6485758 () Bool)

(assert (=> b!5466156 m!6485758))

(declare-fun m!6485760 () Bool)

(assert (=> b!5466156 m!6485760))

(assert (=> b!5466156 m!6485756))

(declare-fun m!6485762 () Bool)

(assert (=> b!5466156 m!6485762))

(assert (=> b!5465857 d!1738581))

(declare-fun bs!1264529 () Bool)

(declare-fun d!1738589 () Bool)

(assert (= bs!1264529 (and d!1738589 d!1738539)))

(declare-fun lambda!290480 () Int)

(assert (=> bs!1264529 (= lambda!290480 lambda!290450)))

(declare-fun bs!1264530 () Bool)

(assert (= bs!1264530 (and d!1738589 b!5465857)))

(assert (=> bs!1264530 (not (= lambda!290480 lambda!290430))))

(assert (=> bs!1264530 (not (= lambda!290480 lambda!290429))))

(assert (=> bs!1264530 (= lambda!290480 lambda!290428)))

(declare-fun bs!1264531 () Bool)

(assert (= bs!1264531 (and d!1738589 d!1738551)))

(assert (=> bs!1264531 (= (= r!7292 (Star!15319 (reg!15648 r!7292))) (= lambda!290480 lambda!290463))))

(assert (=> bs!1264531 (not (= lambda!290480 lambda!290465))))

(assert (=> bs!1264529 (not (= lambda!290480 lambda!290453))))

(assert (=> d!1738589 true))

(assert (=> d!1738589 true))

(assert (=> d!1738589 true))

(assert (=> d!1738589 (= (isDefined!12131 (findConcatSeparation!1842 (reg!15648 r!7292) r!7292 Nil!62134 s!2326 s!2326)) (Exists!2498 lambda!290480))))

(declare-fun lt!2233455 () Unit!155088)

(declare-fun choose!41558 (Regex!15319 Regex!15319 List!62258) Unit!155088)

(assert (=> d!1738589 (= lt!2233455 (choose!41558 (reg!15648 r!7292) r!7292 s!2326))))

(assert (=> d!1738589 (validRegex!7055 (reg!15648 r!7292))))

(assert (=> d!1738589 (= (lemmaFindConcatSeparationEquivalentToExists!1606 (reg!15648 r!7292) r!7292 s!2326) lt!2233455)))

(declare-fun bs!1264532 () Bool)

(assert (= bs!1264532 d!1738589))

(declare-fun m!6485796 () Bool)

(assert (=> bs!1264532 m!6485796))

(declare-fun m!6485798 () Bool)

(assert (=> bs!1264532 m!6485798))

(assert (=> bs!1264532 m!6485538))

(assert (=> bs!1264532 m!6485552))

(assert (=> bs!1264532 m!6485552))

(assert (=> bs!1264532 m!6485556))

(assert (=> b!5465857 d!1738589))

(declare-fun d!1738603 () Bool)

(declare-fun e!3384269 () Bool)

(assert (=> d!1738603 e!3384269))

(declare-fun res!2328979 () Bool)

(assert (=> d!1738603 (=> (not res!2328979) (not e!3384269))))

(declare-fun lt!2233461 () List!62257)

(declare-fun noDuplicate!1444 (List!62257) Bool)

(assert (=> d!1738603 (= res!2328979 (noDuplicate!1444 lt!2233461))))

(declare-fun choose!41559 ((InoxSet Context!9406)) List!62257)

(assert (=> d!1738603 (= lt!2233461 (choose!41559 z!1189))))

(assert (=> d!1738603 (= (toList!9103 z!1189) lt!2233461)))

(declare-fun b!5466241 () Bool)

(declare-fun content!11185 (List!62257) (InoxSet Context!9406))

(assert (=> b!5466241 (= e!3384269 (= (content!11185 lt!2233461) z!1189))))

(assert (= (and d!1738603 res!2328979) b!5466241))

(declare-fun m!6485810 () Bool)

(assert (=> d!1738603 m!6485810))

(declare-fun m!6485816 () Bool)

(assert (=> d!1738603 m!6485816))

(declare-fun m!6485822 () Bool)

(assert (=> b!5466241 m!6485822))

(assert (=> b!5465858 d!1738603))

(declare-fun bs!1264542 () Bool)

(declare-fun d!1738607 () Bool)

(assert (= bs!1264542 (and d!1738607 d!1738523)))

(declare-fun lambda!290489 () Int)

(assert (=> bs!1264542 (= lambda!290489 lambda!290440)))

(declare-fun b!5466322 () Bool)

(declare-fun e!3384310 () Regex!15319)

(declare-fun e!3384313 () Regex!15319)

(assert (=> b!5466322 (= e!3384310 e!3384313)))

(declare-fun c!954993 () Bool)

(assert (=> b!5466322 (= c!954993 ((_ is Cons!62132) (unfocusZipperList!761 zl!343)))))

(declare-fun b!5466323 () Bool)

(declare-fun e!3384311 () Bool)

(declare-fun lt!2233467 () Regex!15319)

(declare-fun isEmptyLang!1034 (Regex!15319) Bool)

(assert (=> b!5466323 (= e!3384311 (isEmptyLang!1034 lt!2233467))))

(declare-fun b!5466324 () Bool)

(declare-fun e!3384309 () Bool)

(assert (=> b!5466324 (= e!3384311 e!3384309)))

(declare-fun c!954991 () Bool)

(assert (=> b!5466324 (= c!954991 (isEmpty!34098 (tail!10802 (unfocusZipperList!761 zl!343))))))

(declare-fun b!5466325 () Bool)

(declare-fun e!3384308 () Bool)

(assert (=> b!5466325 (= e!3384308 e!3384311)))

(declare-fun c!954992 () Bool)

(assert (=> b!5466325 (= c!954992 (isEmpty!34098 (unfocusZipperList!761 zl!343)))))

(declare-fun b!5466326 () Bool)

(declare-fun isUnion!467 (Regex!15319) Bool)

(assert (=> b!5466326 (= e!3384309 (isUnion!467 lt!2233467))))

(declare-fun b!5466327 () Bool)

(assert (=> b!5466327 (= e!3384310 (h!68580 (unfocusZipperList!761 zl!343)))))

(assert (=> d!1738607 e!3384308))

(declare-fun res!2328984 () Bool)

(assert (=> d!1738607 (=> (not res!2328984) (not e!3384308))))

(assert (=> d!1738607 (= res!2328984 (validRegex!7055 lt!2233467))))

(assert (=> d!1738607 (= lt!2233467 e!3384310)))

(declare-fun c!954994 () Bool)

(declare-fun e!3384312 () Bool)

(assert (=> d!1738607 (= c!954994 e!3384312)))

(declare-fun res!2328985 () Bool)

(assert (=> d!1738607 (=> (not res!2328985) (not e!3384312))))

(assert (=> d!1738607 (= res!2328985 ((_ is Cons!62132) (unfocusZipperList!761 zl!343)))))

(assert (=> d!1738607 (forall!14600 (unfocusZipperList!761 zl!343) lambda!290489)))

(assert (=> d!1738607 (= (generalisedUnion!1248 (unfocusZipperList!761 zl!343)) lt!2233467)))

(declare-fun b!5466328 () Bool)

(assert (=> b!5466328 (= e!3384313 (Union!15319 (h!68580 (unfocusZipperList!761 zl!343)) (generalisedUnion!1248 (t!375485 (unfocusZipperList!761 zl!343)))))))

(declare-fun b!5466329 () Bool)

(assert (=> b!5466329 (= e!3384309 (= lt!2233467 (head!11705 (unfocusZipperList!761 zl!343))))))

(declare-fun b!5466330 () Bool)

(assert (=> b!5466330 (= e!3384313 EmptyLang!15319)))

(declare-fun b!5466331 () Bool)

(assert (=> b!5466331 (= e!3384312 (isEmpty!34098 (t!375485 (unfocusZipperList!761 zl!343))))))

(assert (= (and d!1738607 res!2328985) b!5466331))

(assert (= (and d!1738607 c!954994) b!5466327))

(assert (= (and d!1738607 (not c!954994)) b!5466322))

(assert (= (and b!5466322 c!954993) b!5466328))

(assert (= (and b!5466322 (not c!954993)) b!5466330))

(assert (= (and d!1738607 res!2328984) b!5466325))

(assert (= (and b!5466325 c!954992) b!5466323))

(assert (= (and b!5466325 (not c!954992)) b!5466324))

(assert (= (and b!5466324 c!954991) b!5466329))

(assert (= (and b!5466324 (not c!954991)) b!5466326))

(assert (=> b!5466329 m!6485562))

(declare-fun m!6485834 () Bool)

(assert (=> b!5466329 m!6485834))

(declare-fun m!6485836 () Bool)

(assert (=> d!1738607 m!6485836))

(assert (=> d!1738607 m!6485562))

(declare-fun m!6485838 () Bool)

(assert (=> d!1738607 m!6485838))

(declare-fun m!6485840 () Bool)

(assert (=> b!5466323 m!6485840))

(assert (=> b!5466324 m!6485562))

(declare-fun m!6485842 () Bool)

(assert (=> b!5466324 m!6485842))

(assert (=> b!5466324 m!6485842))

(declare-fun m!6485844 () Bool)

(assert (=> b!5466324 m!6485844))

(declare-fun m!6485846 () Bool)

(assert (=> b!5466331 m!6485846))

(declare-fun m!6485848 () Bool)

(assert (=> b!5466326 m!6485848))

(assert (=> b!5466325 m!6485562))

(declare-fun m!6485850 () Bool)

(assert (=> b!5466325 m!6485850))

(declare-fun m!6485852 () Bool)

(assert (=> b!5466328 m!6485852))

(assert (=> b!5465860 d!1738607))

(declare-fun bs!1264543 () Bool)

(declare-fun d!1738613 () Bool)

(assert (= bs!1264543 (and d!1738613 d!1738523)))

(declare-fun lambda!290492 () Int)

(assert (=> bs!1264543 (= lambda!290492 lambda!290440)))

(declare-fun bs!1264544 () Bool)

(assert (= bs!1264544 (and d!1738613 d!1738607)))

(assert (=> bs!1264544 (= lambda!290492 lambda!290489)))

(declare-fun lt!2233470 () List!62256)

(assert (=> d!1738613 (forall!14600 lt!2233470 lambda!290492)))

(declare-fun e!3384316 () List!62256)

(assert (=> d!1738613 (= lt!2233470 e!3384316)))

(declare-fun c!954997 () Bool)

(assert (=> d!1738613 (= c!954997 ((_ is Cons!62133) zl!343))))

(assert (=> d!1738613 (= (unfocusZipperList!761 zl!343) lt!2233470)))

(declare-fun b!5466336 () Bool)

(assert (=> b!5466336 (= e!3384316 (Cons!62132 (generalisedConcat!988 (exprs!5203 (h!68581 zl!343))) (unfocusZipperList!761 (t!375486 zl!343))))))

(declare-fun b!5466337 () Bool)

(assert (=> b!5466337 (= e!3384316 Nil!62132)))

(assert (= (and d!1738613 c!954997) b!5466336))

(assert (= (and d!1738613 (not c!954997)) b!5466337))

(declare-fun m!6485854 () Bool)

(assert (=> d!1738613 m!6485854))

(assert (=> b!5466336 m!6485572))

(declare-fun m!6485856 () Bool)

(assert (=> b!5466336 m!6485856))

(assert (=> b!5465860 d!1738613))

(declare-fun b!5466356 () Bool)

(declare-fun e!3384331 () Bool)

(declare-fun call!403328 () Bool)

(assert (=> b!5466356 (= e!3384331 call!403328)))

(declare-fun b!5466357 () Bool)

(declare-fun e!3384333 () Bool)

(declare-fun e!3384334 () Bool)

(assert (=> b!5466357 (= e!3384333 e!3384334)))

(declare-fun c!955003 () Bool)

(assert (=> b!5466357 (= c!955003 ((_ is Star!15319) (reg!15648 r!7292)))))

(declare-fun bm!403323 () Bool)

(declare-fun call!403329 () Bool)

(assert (=> bm!403323 (= call!403329 call!403328)))

(declare-fun b!5466358 () Bool)

(declare-fun res!2328997 () Bool)

(declare-fun e!3384336 () Bool)

(assert (=> b!5466358 (=> res!2328997 e!3384336)))

(assert (=> b!5466358 (= res!2328997 (not ((_ is Concat!24164) (reg!15648 r!7292))))))

(declare-fun e!3384337 () Bool)

(assert (=> b!5466358 (= e!3384337 e!3384336)))

(declare-fun b!5466359 () Bool)

(declare-fun res!2328999 () Bool)

(declare-fun e!3384332 () Bool)

(assert (=> b!5466359 (=> (not res!2328999) (not e!3384332))))

(assert (=> b!5466359 (= res!2328999 call!403329)))

(assert (=> b!5466359 (= e!3384337 e!3384332)))

(declare-fun b!5466360 () Bool)

(declare-fun call!403330 () Bool)

(assert (=> b!5466360 (= e!3384332 call!403330)))

(declare-fun b!5466361 () Bool)

(declare-fun e!3384335 () Bool)

(assert (=> b!5466361 (= e!3384336 e!3384335)))

(declare-fun res!2329000 () Bool)

(assert (=> b!5466361 (=> (not res!2329000) (not e!3384335))))

(assert (=> b!5466361 (= res!2329000 call!403329)))

(declare-fun b!5466362 () Bool)

(assert (=> b!5466362 (= e!3384334 e!3384337)))

(declare-fun c!955002 () Bool)

(assert (=> b!5466362 (= c!955002 ((_ is Union!15319) (reg!15648 r!7292)))))

(declare-fun b!5466363 () Bool)

(assert (=> b!5466363 (= e!3384334 e!3384331)))

(declare-fun res!2328998 () Bool)

(declare-fun nullable!5470 (Regex!15319) Bool)

(assert (=> b!5466363 (= res!2328998 (not (nullable!5470 (reg!15648 (reg!15648 r!7292)))))))

(assert (=> b!5466363 (=> (not res!2328998) (not e!3384331))))

(declare-fun d!1738615 () Bool)

(declare-fun res!2328996 () Bool)

(assert (=> d!1738615 (=> res!2328996 e!3384333)))

(assert (=> d!1738615 (= res!2328996 ((_ is ElementMatch!15319) (reg!15648 r!7292)))))

(assert (=> d!1738615 (= (validRegex!7055 (reg!15648 r!7292)) e!3384333)))

(declare-fun b!5466364 () Bool)

(assert (=> b!5466364 (= e!3384335 call!403330)))

(declare-fun bm!403324 () Bool)

(assert (=> bm!403324 (= call!403328 (validRegex!7055 (ite c!955003 (reg!15648 (reg!15648 r!7292)) (ite c!955002 (regOne!31151 (reg!15648 r!7292)) (regOne!31150 (reg!15648 r!7292))))))))

(declare-fun bm!403325 () Bool)

(assert (=> bm!403325 (= call!403330 (validRegex!7055 (ite c!955002 (regTwo!31151 (reg!15648 r!7292)) (regTwo!31150 (reg!15648 r!7292)))))))

(assert (= (and d!1738615 (not res!2328996)) b!5466357))

(assert (= (and b!5466357 c!955003) b!5466363))

(assert (= (and b!5466357 (not c!955003)) b!5466362))

(assert (= (and b!5466363 res!2328998) b!5466356))

(assert (= (and b!5466362 c!955002) b!5466359))

(assert (= (and b!5466362 (not c!955002)) b!5466358))

(assert (= (and b!5466359 res!2328999) b!5466360))

(assert (= (and b!5466358 (not res!2328997)) b!5466361))

(assert (= (and b!5466361 res!2329000) b!5466364))

(assert (= (or b!5466360 b!5466364) bm!403325))

(assert (= (or b!5466359 b!5466361) bm!403323))

(assert (= (or b!5466356 bm!403323) bm!403324))

(declare-fun m!6485858 () Bool)

(assert (=> b!5466363 m!6485858))

(declare-fun m!6485860 () Bool)

(assert (=> bm!403324 m!6485860))

(declare-fun m!6485862 () Bool)

(assert (=> bm!403325 m!6485862))

(assert (=> b!5465859 d!1738615))

(declare-fun d!1738617 () Bool)

(declare-fun choose!41560 ((InoxSet Context!9406) Int) (InoxSet Context!9406))

(assert (=> d!1738617 (= (flatMap!1022 lt!2233387 lambda!290431) (choose!41560 lt!2233387 lambda!290431))))

(declare-fun bs!1264545 () Bool)

(assert (= bs!1264545 d!1738617))

(declare-fun m!6485864 () Bool)

(assert (=> bs!1264545 m!6485864))

(assert (=> b!5465859 d!1738617))

(declare-fun b!5466375 () Bool)

(declare-fun e!3384344 () (InoxSet Context!9406))

(declare-fun call!403333 () (InoxSet Context!9406))

(assert (=> b!5466375 (= e!3384344 call!403333)))

(declare-fun b!5466376 () Bool)

(assert (=> b!5466376 (= e!3384344 ((as const (Array Context!9406 Bool)) false))))

(declare-fun b!5466377 () Bool)

(declare-fun e!3384346 () Bool)

(assert (=> b!5466377 (= e!3384346 (nullable!5470 (h!68580 (exprs!5203 lt!2233393))))))

(declare-fun e!3384345 () (InoxSet Context!9406))

(declare-fun b!5466378 () Bool)

(assert (=> b!5466378 (= e!3384345 ((_ map or) call!403333 (derivationStepZipperUp!671 (Context!9407 (t!375485 (exprs!5203 lt!2233393))) (h!68582 s!2326))))))

(declare-fun d!1738619 () Bool)

(declare-fun c!955008 () Bool)

(assert (=> d!1738619 (= c!955008 e!3384346)))

(declare-fun res!2329003 () Bool)

(assert (=> d!1738619 (=> (not res!2329003) (not e!3384346))))

(assert (=> d!1738619 (= res!2329003 ((_ is Cons!62132) (exprs!5203 lt!2233393)))))

(assert (=> d!1738619 (= (derivationStepZipperUp!671 lt!2233393 (h!68582 s!2326)) e!3384345)))

(declare-fun b!5466379 () Bool)

(assert (=> b!5466379 (= e!3384345 e!3384344)))

(declare-fun c!955009 () Bool)

(assert (=> b!5466379 (= c!955009 ((_ is Cons!62132) (exprs!5203 lt!2233393)))))

(declare-fun bm!403328 () Bool)

(assert (=> bm!403328 (= call!403333 (derivationStepZipperDown!745 (h!68580 (exprs!5203 lt!2233393)) (Context!9407 (t!375485 (exprs!5203 lt!2233393))) (h!68582 s!2326)))))

(assert (= (and d!1738619 res!2329003) b!5466377))

(assert (= (and d!1738619 c!955008) b!5466378))

(assert (= (and d!1738619 (not c!955008)) b!5466379))

(assert (= (and b!5466379 c!955009) b!5466375))

(assert (= (and b!5466379 (not c!955009)) b!5466376))

(assert (= (or b!5466378 b!5466375) bm!403328))

(declare-fun m!6485866 () Bool)

(assert (=> b!5466377 m!6485866))

(declare-fun m!6485868 () Bool)

(assert (=> b!5466378 m!6485868))

(declare-fun m!6485870 () Bool)

(assert (=> bm!403328 m!6485870))

(assert (=> b!5465859 d!1738619))

(declare-fun d!1738621 () Bool)

(declare-fun dynLambda!24417 (Int Context!9406) (InoxSet Context!9406))

(assert (=> d!1738621 (= (flatMap!1022 lt!2233387 lambda!290431) (dynLambda!24417 lambda!290431 lt!2233393))))

(declare-fun lt!2233473 () Unit!155088)

(declare-fun choose!41561 ((InoxSet Context!9406) Context!9406 Int) Unit!155088)

(assert (=> d!1738621 (= lt!2233473 (choose!41561 lt!2233387 lt!2233393 lambda!290431))))

(assert (=> d!1738621 (= lt!2233387 (store ((as const (Array Context!9406 Bool)) false) lt!2233393 true))))

(assert (=> d!1738621 (= (lemmaFlatMapOnSingletonSet!554 lt!2233387 lt!2233393 lambda!290431) lt!2233473)))

(declare-fun b_lambda!207875 () Bool)

(assert (=> (not b_lambda!207875) (not d!1738621)))

(declare-fun bs!1264546 () Bool)

(assert (= bs!1264546 d!1738621))

(assert (=> bs!1264546 m!6485542))

(declare-fun m!6485872 () Bool)

(assert (=> bs!1264546 m!6485872))

(declare-fun m!6485874 () Bool)

(assert (=> bs!1264546 m!6485874))

(assert (=> bs!1264546 m!6485534))

(assert (=> b!5465859 d!1738621))

(declare-fun bs!1264547 () Bool)

(declare-fun d!1738623 () Bool)

(assert (= bs!1264547 (and d!1738623 d!1738523)))

(declare-fun lambda!290495 () Int)

(assert (=> bs!1264547 (= lambda!290495 lambda!290440)))

(declare-fun bs!1264548 () Bool)

(assert (= bs!1264548 (and d!1738623 d!1738607)))

(assert (=> bs!1264548 (= lambda!290495 lambda!290489)))

(declare-fun bs!1264549 () Bool)

(assert (= bs!1264549 (and d!1738623 d!1738613)))

(assert (=> bs!1264549 (= lambda!290495 lambda!290492)))

(assert (=> d!1738623 (= (inv!81544 setElem!35833) (forall!14600 (exprs!5203 setElem!35833) lambda!290495))))

(declare-fun bs!1264550 () Bool)

(assert (= bs!1264550 d!1738623))

(declare-fun m!6485876 () Bool)

(assert (=> bs!1264550 m!6485876))

(assert (=> setNonEmpty!35833 d!1738623))

(declare-fun d!1738625 () Bool)

(assert (=> d!1738625 (= (isEmpty!34094 (t!375486 zl!343)) ((_ is Nil!62133) (t!375486 zl!343)))))

(assert (=> b!5465850 d!1738625))

(declare-fun b!5466380 () Bool)

(declare-fun e!3384347 () Bool)

(declare-fun call!403334 () Bool)

(assert (=> b!5466380 (= e!3384347 call!403334)))

(declare-fun b!5466381 () Bool)

(declare-fun e!3384349 () Bool)

(declare-fun e!3384350 () Bool)

(assert (=> b!5466381 (= e!3384349 e!3384350)))

(declare-fun c!955011 () Bool)

(assert (=> b!5466381 (= c!955011 ((_ is Star!15319) r!7292))))

(declare-fun bm!403329 () Bool)

(declare-fun call!403335 () Bool)

(assert (=> bm!403329 (= call!403335 call!403334)))

(declare-fun b!5466382 () Bool)

(declare-fun res!2329005 () Bool)

(declare-fun e!3384352 () Bool)

(assert (=> b!5466382 (=> res!2329005 e!3384352)))

(assert (=> b!5466382 (= res!2329005 (not ((_ is Concat!24164) r!7292)))))

(declare-fun e!3384353 () Bool)

(assert (=> b!5466382 (= e!3384353 e!3384352)))

(declare-fun b!5466383 () Bool)

(declare-fun res!2329007 () Bool)

(declare-fun e!3384348 () Bool)

(assert (=> b!5466383 (=> (not res!2329007) (not e!3384348))))

(assert (=> b!5466383 (= res!2329007 call!403335)))

(assert (=> b!5466383 (= e!3384353 e!3384348)))

(declare-fun b!5466384 () Bool)

(declare-fun call!403336 () Bool)

(assert (=> b!5466384 (= e!3384348 call!403336)))

(declare-fun b!5466385 () Bool)

(declare-fun e!3384351 () Bool)

(assert (=> b!5466385 (= e!3384352 e!3384351)))

(declare-fun res!2329008 () Bool)

(assert (=> b!5466385 (=> (not res!2329008) (not e!3384351))))

(assert (=> b!5466385 (= res!2329008 call!403335)))

(declare-fun b!5466386 () Bool)

(assert (=> b!5466386 (= e!3384350 e!3384353)))

(declare-fun c!955010 () Bool)

(assert (=> b!5466386 (= c!955010 ((_ is Union!15319) r!7292))))

(declare-fun b!5466387 () Bool)

(assert (=> b!5466387 (= e!3384350 e!3384347)))

(declare-fun res!2329006 () Bool)

(assert (=> b!5466387 (= res!2329006 (not (nullable!5470 (reg!15648 r!7292))))))

(assert (=> b!5466387 (=> (not res!2329006) (not e!3384347))))

(declare-fun d!1738627 () Bool)

(declare-fun res!2329004 () Bool)

(assert (=> d!1738627 (=> res!2329004 e!3384349)))

(assert (=> d!1738627 (= res!2329004 ((_ is ElementMatch!15319) r!7292))))

(assert (=> d!1738627 (= (validRegex!7055 r!7292) e!3384349)))

(declare-fun b!5466388 () Bool)

(assert (=> b!5466388 (= e!3384351 call!403336)))

(declare-fun bm!403330 () Bool)

(assert (=> bm!403330 (= call!403334 (validRegex!7055 (ite c!955011 (reg!15648 r!7292) (ite c!955010 (regOne!31151 r!7292) (regOne!31150 r!7292)))))))

(declare-fun bm!403331 () Bool)

(assert (=> bm!403331 (= call!403336 (validRegex!7055 (ite c!955010 (regTwo!31151 r!7292) (regTwo!31150 r!7292))))))

(assert (= (and d!1738627 (not res!2329004)) b!5466381))

(assert (= (and b!5466381 c!955011) b!5466387))

(assert (= (and b!5466381 (not c!955011)) b!5466386))

(assert (= (and b!5466387 res!2329006) b!5466380))

(assert (= (and b!5466386 c!955010) b!5466383))

(assert (= (and b!5466386 (not c!955010)) b!5466382))

(assert (= (and b!5466383 res!2329007) b!5466384))

(assert (= (and b!5466382 (not res!2329005)) b!5466385))

(assert (= (and b!5466385 res!2329008) b!5466388))

(assert (= (or b!5466384 b!5466388) bm!403331))

(assert (= (or b!5466383 b!5466385) bm!403329))

(assert (= (or b!5466380 bm!403329) bm!403330))

(declare-fun m!6485878 () Bool)

(assert (=> b!5466387 m!6485878))

(declare-fun m!6485880 () Bool)

(assert (=> bm!403330 m!6485880))

(declare-fun m!6485882 () Bool)

(assert (=> bm!403331 m!6485882))

(assert (=> start!572178 d!1738627))

(declare-fun bs!1264551 () Bool)

(declare-fun d!1738629 () Bool)

(assert (= bs!1264551 (and d!1738629 b!5465854)))

(declare-fun lambda!290498 () Int)

(assert (=> bs!1264551 (= lambda!290498 lambda!290431)))

(assert (=> d!1738629 true))

(assert (=> d!1738629 (= (derivationStepZipper!1514 z!1189 (h!68582 s!2326)) (flatMap!1022 z!1189 lambda!290498))))

(declare-fun bs!1264552 () Bool)

(assert (= bs!1264552 d!1738629))

(declare-fun m!6485884 () Bool)

(assert (=> bs!1264552 m!6485884))

(assert (=> b!5465854 d!1738629))

(declare-fun d!1738631 () Bool)

(assert (=> d!1738631 (= (flatMap!1022 z!1189 lambda!290431) (choose!41560 z!1189 lambda!290431))))

(declare-fun bs!1264553 () Bool)

(assert (= bs!1264553 d!1738631))

(declare-fun m!6485886 () Bool)

(assert (=> bs!1264553 m!6485886))

(assert (=> b!5465854 d!1738631))

(declare-fun b!5466391 () Bool)

(declare-fun e!3384354 () (InoxSet Context!9406))

(declare-fun call!403337 () (InoxSet Context!9406))

(assert (=> b!5466391 (= e!3384354 call!403337)))

(declare-fun b!5466392 () Bool)

(assert (=> b!5466392 (= e!3384354 ((as const (Array Context!9406 Bool)) false))))

(declare-fun b!5466393 () Bool)

(declare-fun e!3384356 () Bool)

(assert (=> b!5466393 (= e!3384356 (nullable!5470 (h!68580 (exprs!5203 (h!68581 zl!343)))))))

(declare-fun e!3384355 () (InoxSet Context!9406))

(declare-fun b!5466394 () Bool)

(assert (=> b!5466394 (= e!3384355 ((_ map or) call!403337 (derivationStepZipperUp!671 (Context!9407 (t!375485 (exprs!5203 (h!68581 zl!343)))) (h!68582 s!2326))))))

(declare-fun d!1738633 () Bool)

(declare-fun c!955014 () Bool)

(assert (=> d!1738633 (= c!955014 e!3384356)))

(declare-fun res!2329009 () Bool)

(assert (=> d!1738633 (=> (not res!2329009) (not e!3384356))))

(assert (=> d!1738633 (= res!2329009 ((_ is Cons!62132) (exprs!5203 (h!68581 zl!343))))))

(assert (=> d!1738633 (= (derivationStepZipperUp!671 (h!68581 zl!343) (h!68582 s!2326)) e!3384355)))

(declare-fun b!5466395 () Bool)

(assert (=> b!5466395 (= e!3384355 e!3384354)))

(declare-fun c!955015 () Bool)

(assert (=> b!5466395 (= c!955015 ((_ is Cons!62132) (exprs!5203 (h!68581 zl!343))))))

(declare-fun bm!403332 () Bool)

(assert (=> bm!403332 (= call!403337 (derivationStepZipperDown!745 (h!68580 (exprs!5203 (h!68581 zl!343))) (Context!9407 (t!375485 (exprs!5203 (h!68581 zl!343)))) (h!68582 s!2326)))))

(assert (= (and d!1738633 res!2329009) b!5466393))

(assert (= (and d!1738633 c!955014) b!5466394))

(assert (= (and d!1738633 (not c!955014)) b!5466395))

(assert (= (and b!5466395 c!955015) b!5466391))

(assert (= (and b!5466395 (not c!955015)) b!5466392))

(assert (= (or b!5466394 b!5466391) bm!403332))

(declare-fun m!6485888 () Bool)

(assert (=> b!5466393 m!6485888))

(declare-fun m!6485890 () Bool)

(assert (=> b!5466394 m!6485890))

(declare-fun m!6485892 () Bool)

(assert (=> bm!403332 m!6485892))

(assert (=> b!5465854 d!1738633))

(declare-fun d!1738635 () Bool)

(assert (=> d!1738635 (= (flatMap!1022 z!1189 lambda!290431) (dynLambda!24417 lambda!290431 (h!68581 zl!343)))))

(declare-fun lt!2233474 () Unit!155088)

(assert (=> d!1738635 (= lt!2233474 (choose!41561 z!1189 (h!68581 zl!343) lambda!290431))))

(assert (=> d!1738635 (= z!1189 (store ((as const (Array Context!9406 Bool)) false) (h!68581 zl!343) true))))

(assert (=> d!1738635 (= (lemmaFlatMapOnSingletonSet!554 z!1189 (h!68581 zl!343) lambda!290431) lt!2233474)))

(declare-fun b_lambda!207877 () Bool)

(assert (=> (not b_lambda!207877) (not d!1738635)))

(declare-fun bs!1264554 () Bool)

(assert (= bs!1264554 d!1738635))

(assert (=> bs!1264554 m!6485578))

(declare-fun m!6485894 () Bool)

(assert (=> bs!1264554 m!6485894))

(declare-fun m!6485896 () Bool)

(assert (=> bs!1264554 m!6485896))

(declare-fun m!6485898 () Bool)

(assert (=> bs!1264554 m!6485898))

(assert (=> b!5465854 d!1738635))

(declare-fun bs!1264555 () Bool)

(declare-fun b!5466432 () Bool)

(assert (= bs!1264555 (and b!5466432 d!1738539)))

(declare-fun lambda!290503 () Int)

(assert (=> bs!1264555 (not (= lambda!290503 lambda!290450))))

(declare-fun bs!1264556 () Bool)

(assert (= bs!1264556 (and b!5466432 b!5465857)))

(assert (=> bs!1264556 (not (= lambda!290503 lambda!290430))))

(assert (=> bs!1264556 (= lambda!290503 lambda!290429)))

(assert (=> bs!1264556 (not (= lambda!290503 lambda!290428))))

(declare-fun bs!1264557 () Bool)

(assert (= bs!1264557 (and b!5466432 d!1738551)))

(assert (=> bs!1264557 (not (= lambda!290503 lambda!290463))))

(declare-fun bs!1264558 () Bool)

(assert (= bs!1264558 (and b!5466432 d!1738589)))

(assert (=> bs!1264558 (not (= lambda!290503 lambda!290480))))

(assert (=> bs!1264557 (= (= r!7292 (Star!15319 (reg!15648 r!7292))) (= lambda!290503 lambda!290465))))

(assert (=> bs!1264555 (not (= lambda!290503 lambda!290453))))

(assert (=> b!5466432 true))

(assert (=> b!5466432 true))

(declare-fun bs!1264559 () Bool)

(declare-fun b!5466433 () Bool)

(assert (= bs!1264559 (and b!5466433 d!1738539)))

(declare-fun lambda!290504 () Int)

(assert (=> bs!1264559 (not (= lambda!290504 lambda!290450))))

(declare-fun bs!1264560 () Bool)

(assert (= bs!1264560 (and b!5466433 b!5465857)))

(assert (=> bs!1264560 (= (and (= (regOne!31150 r!7292) (reg!15648 r!7292)) (= (regTwo!31150 r!7292) r!7292)) (= lambda!290504 lambda!290430))))

(assert (=> bs!1264560 (not (= lambda!290504 lambda!290429))))

(assert (=> bs!1264560 (not (= lambda!290504 lambda!290428))))

(declare-fun bs!1264561 () Bool)

(assert (= bs!1264561 (and b!5466433 d!1738551)))

(assert (=> bs!1264561 (not (= lambda!290504 lambda!290463))))

(declare-fun bs!1264562 () Bool)

(assert (= bs!1264562 (and b!5466433 d!1738589)))

(assert (=> bs!1264562 (not (= lambda!290504 lambda!290480))))

(assert (=> bs!1264561 (not (= lambda!290504 lambda!290465))))

(declare-fun bs!1264563 () Bool)

(assert (= bs!1264563 (and b!5466433 b!5466432)))

(assert (=> bs!1264563 (not (= lambda!290504 lambda!290503))))

(assert (=> bs!1264559 (= (and (= (regOne!31150 r!7292) (reg!15648 r!7292)) (= (regTwo!31150 r!7292) r!7292)) (= lambda!290504 lambda!290453))))

(assert (=> b!5466433 true))

(assert (=> b!5466433 true))

(declare-fun b!5466428 () Bool)

(declare-fun e!3384378 () Bool)

(declare-fun e!3384375 () Bool)

(assert (=> b!5466428 (= e!3384378 e!3384375)))

(declare-fun c!955027 () Bool)

(assert (=> b!5466428 (= c!955027 ((_ is Star!15319) r!7292))))

(declare-fun b!5466429 () Bool)

(declare-fun res!2329026 () Bool)

(declare-fun e!3384376 () Bool)

(assert (=> b!5466429 (=> res!2329026 e!3384376)))

(declare-fun call!403343 () Bool)

(assert (=> b!5466429 (= res!2329026 call!403343)))

(assert (=> b!5466429 (= e!3384375 e!3384376)))

(declare-fun b!5466430 () Bool)

(declare-fun c!955025 () Bool)

(assert (=> b!5466430 (= c!955025 ((_ is Union!15319) r!7292))))

(declare-fun e!3384379 () Bool)

(assert (=> b!5466430 (= e!3384379 e!3384378)))

(declare-fun bm!403337 () Bool)

(assert (=> bm!403337 (= call!403343 (isEmpty!34095 s!2326))))

(declare-fun call!403342 () Bool)

(assert (=> b!5466432 (= e!3384376 call!403342)))

(assert (=> b!5466433 (= e!3384375 call!403342)))

(declare-fun b!5466434 () Bool)

(declare-fun e!3384380 () Bool)

(assert (=> b!5466434 (= e!3384380 call!403343)))

(declare-fun d!1738637 () Bool)

(declare-fun c!955024 () Bool)

(assert (=> d!1738637 (= c!955024 ((_ is EmptyExpr!15319) r!7292))))

(assert (=> d!1738637 (= (matchRSpec!2422 r!7292 s!2326) e!3384380)))

(declare-fun b!5466431 () Bool)

(declare-fun e!3384381 () Bool)

(assert (=> b!5466431 (= e!3384378 e!3384381)))

(declare-fun res!2329027 () Bool)

(assert (=> b!5466431 (= res!2329027 (matchRSpec!2422 (regOne!31151 r!7292) s!2326))))

(assert (=> b!5466431 (=> res!2329027 e!3384381)))

(declare-fun bm!403338 () Bool)

(assert (=> bm!403338 (= call!403342 (Exists!2498 (ite c!955027 lambda!290503 lambda!290504)))))

(declare-fun b!5466435 () Bool)

(declare-fun e!3384377 () Bool)

(assert (=> b!5466435 (= e!3384380 e!3384377)))

(declare-fun res!2329028 () Bool)

(assert (=> b!5466435 (= res!2329028 (not ((_ is EmptyLang!15319) r!7292)))))

(assert (=> b!5466435 (=> (not res!2329028) (not e!3384377))))

(declare-fun b!5466436 () Bool)

(declare-fun c!955026 () Bool)

(assert (=> b!5466436 (= c!955026 ((_ is ElementMatch!15319) r!7292))))

(assert (=> b!5466436 (= e!3384377 e!3384379)))

(declare-fun b!5466437 () Bool)

(assert (=> b!5466437 (= e!3384381 (matchRSpec!2422 (regTwo!31151 r!7292) s!2326))))

(declare-fun b!5466438 () Bool)

(assert (=> b!5466438 (= e!3384379 (= s!2326 (Cons!62134 (c!954875 r!7292) Nil!62134)))))

(assert (= (and d!1738637 c!955024) b!5466434))

(assert (= (and d!1738637 (not c!955024)) b!5466435))

(assert (= (and b!5466435 res!2329028) b!5466436))

(assert (= (and b!5466436 c!955026) b!5466438))

(assert (= (and b!5466436 (not c!955026)) b!5466430))

(assert (= (and b!5466430 c!955025) b!5466431))

(assert (= (and b!5466430 (not c!955025)) b!5466428))

(assert (= (and b!5466431 (not res!2329027)) b!5466437))

(assert (= (and b!5466428 c!955027) b!5466429))

(assert (= (and b!5466428 (not c!955027)) b!5466433))

(assert (= (and b!5466429 (not res!2329026)) b!5466432))

(assert (= (or b!5466432 b!5466433) bm!403338))

(assert (= (or b!5466434 b!5466429) bm!403337))

(assert (=> bm!403337 m!6485546))

(declare-fun m!6485900 () Bool)

(assert (=> b!5466431 m!6485900))

(declare-fun m!6485902 () Bool)

(assert (=> bm!403338 m!6485902))

(declare-fun m!6485904 () Bool)

(assert (=> b!5466437 m!6485904))

(assert (=> b!5465843 d!1738637))

(declare-fun b!5466467 () Bool)

(declare-fun e!3384399 () Bool)

(declare-fun e!3384400 () Bool)

(assert (=> b!5466467 (= e!3384399 e!3384400)))

(declare-fun res!2329048 () Bool)

(assert (=> b!5466467 (=> res!2329048 e!3384400)))

(declare-fun call!403346 () Bool)

(assert (=> b!5466467 (= res!2329048 call!403346)))

(declare-fun b!5466468 () Bool)

(declare-fun e!3384398 () Bool)

(declare-fun derivativeStep!4315 (Regex!15319 C!30908) Regex!15319)

(declare-fun head!11706 (List!62258) C!30908)

(declare-fun tail!10803 (List!62258) List!62258)

(assert (=> b!5466468 (= e!3384398 (matchR!7504 (derivativeStep!4315 r!7292 (head!11706 s!2326)) (tail!10803 s!2326)))))

(declare-fun bm!403341 () Bool)

(assert (=> bm!403341 (= call!403346 (isEmpty!34095 s!2326))))

(declare-fun b!5466469 () Bool)

(declare-fun res!2329049 () Bool)

(declare-fun e!3384402 () Bool)

(assert (=> b!5466469 (=> (not res!2329049) (not e!3384402))))

(assert (=> b!5466469 (= res!2329049 (not call!403346))))

(declare-fun b!5466470 () Bool)

(assert (=> b!5466470 (= e!3384400 (not (= (head!11706 s!2326) (c!954875 r!7292))))))

(declare-fun b!5466471 () Bool)

(assert (=> b!5466471 (= e!3384402 (= (head!11706 s!2326) (c!954875 r!7292)))))

(declare-fun b!5466472 () Bool)

(declare-fun res!2329047 () Bool)

(declare-fun e!3384397 () Bool)

(assert (=> b!5466472 (=> res!2329047 e!3384397)))

(assert (=> b!5466472 (= res!2329047 (not ((_ is ElementMatch!15319) r!7292)))))

(declare-fun e!3384401 () Bool)

(assert (=> b!5466472 (= e!3384401 e!3384397)))

(declare-fun d!1738639 () Bool)

(declare-fun e!3384396 () Bool)

(assert (=> d!1738639 e!3384396))

(declare-fun c!955034 () Bool)

(assert (=> d!1738639 (= c!955034 ((_ is EmptyExpr!15319) r!7292))))

(declare-fun lt!2233477 () Bool)

(assert (=> d!1738639 (= lt!2233477 e!3384398)))

(declare-fun c!955036 () Bool)

(assert (=> d!1738639 (= c!955036 (isEmpty!34095 s!2326))))

(assert (=> d!1738639 (validRegex!7055 r!7292)))

(assert (=> d!1738639 (= (matchR!7504 r!7292 s!2326) lt!2233477)))

(declare-fun b!5466473 () Bool)

(assert (=> b!5466473 (= e!3384396 (= lt!2233477 call!403346))))

(declare-fun b!5466474 () Bool)

(declare-fun res!2329045 () Bool)

(assert (=> b!5466474 (=> (not res!2329045) (not e!3384402))))

(assert (=> b!5466474 (= res!2329045 (isEmpty!34095 (tail!10803 s!2326)))))

(declare-fun b!5466475 () Bool)

(assert (=> b!5466475 (= e!3384401 (not lt!2233477))))

(declare-fun b!5466476 () Bool)

(declare-fun res!2329051 () Bool)

(assert (=> b!5466476 (=> res!2329051 e!3384400)))

(assert (=> b!5466476 (= res!2329051 (not (isEmpty!34095 (tail!10803 s!2326))))))

(declare-fun b!5466477 () Bool)

(declare-fun res!2329052 () Bool)

(assert (=> b!5466477 (=> res!2329052 e!3384397)))

(assert (=> b!5466477 (= res!2329052 e!3384402)))

(declare-fun res!2329050 () Bool)

(assert (=> b!5466477 (=> (not res!2329050) (not e!3384402))))

(assert (=> b!5466477 (= res!2329050 lt!2233477)))

(declare-fun b!5466478 () Bool)

(assert (=> b!5466478 (= e!3384397 e!3384399)))

(declare-fun res!2329046 () Bool)

(assert (=> b!5466478 (=> (not res!2329046) (not e!3384399))))

(assert (=> b!5466478 (= res!2329046 (not lt!2233477))))

(declare-fun b!5466479 () Bool)

(assert (=> b!5466479 (= e!3384398 (nullable!5470 r!7292))))

(declare-fun b!5466480 () Bool)

(assert (=> b!5466480 (= e!3384396 e!3384401)))

(declare-fun c!955035 () Bool)

(assert (=> b!5466480 (= c!955035 ((_ is EmptyLang!15319) r!7292))))

(assert (= (and d!1738639 c!955036) b!5466479))

(assert (= (and d!1738639 (not c!955036)) b!5466468))

(assert (= (and d!1738639 c!955034) b!5466473))

(assert (= (and d!1738639 (not c!955034)) b!5466480))

(assert (= (and b!5466480 c!955035) b!5466475))

(assert (= (and b!5466480 (not c!955035)) b!5466472))

(assert (= (and b!5466472 (not res!2329047)) b!5466477))

(assert (= (and b!5466477 res!2329050) b!5466469))

(assert (= (and b!5466469 res!2329049) b!5466474))

(assert (= (and b!5466474 res!2329045) b!5466471))

(assert (= (and b!5466477 (not res!2329052)) b!5466478))

(assert (= (and b!5466478 res!2329046) b!5466467))

(assert (= (and b!5466467 (not res!2329048)) b!5466476))

(assert (= (and b!5466476 (not res!2329051)) b!5466470))

(assert (= (or b!5466473 b!5466467 b!5466469) bm!403341))

(declare-fun m!6485906 () Bool)

(assert (=> b!5466470 m!6485906))

(declare-fun m!6485908 () Bool)

(assert (=> b!5466476 m!6485908))

(assert (=> b!5466476 m!6485908))

(declare-fun m!6485910 () Bool)

(assert (=> b!5466476 m!6485910))

(assert (=> d!1738639 m!6485546))

(assert (=> d!1738639 m!6485532))

(assert (=> bm!403341 m!6485546))

(declare-fun m!6485912 () Bool)

(assert (=> b!5466479 m!6485912))

(assert (=> b!5466474 m!6485908))

(assert (=> b!5466474 m!6485908))

(assert (=> b!5466474 m!6485910))

(assert (=> b!5466471 m!6485906))

(assert (=> b!5466468 m!6485906))

(assert (=> b!5466468 m!6485906))

(declare-fun m!6485914 () Bool)

(assert (=> b!5466468 m!6485914))

(assert (=> b!5466468 m!6485908))

(assert (=> b!5466468 m!6485914))

(assert (=> b!5466468 m!6485908))

(declare-fun m!6485916 () Bool)

(assert (=> b!5466468 m!6485916))

(assert (=> b!5465843 d!1738639))

(declare-fun d!1738641 () Bool)

(assert (=> d!1738641 (= (matchR!7504 r!7292 s!2326) (matchRSpec!2422 r!7292 s!2326))))

(declare-fun lt!2233480 () Unit!155088)

(declare-fun choose!41562 (Regex!15319 List!62258) Unit!155088)

(assert (=> d!1738641 (= lt!2233480 (choose!41562 r!7292 s!2326))))

(assert (=> d!1738641 (validRegex!7055 r!7292)))

(assert (=> d!1738641 (= (mainMatchTheorem!2422 r!7292 s!2326) lt!2233480)))

(declare-fun bs!1264564 () Bool)

(assert (= bs!1264564 d!1738641))

(assert (=> bs!1264564 m!6485528))

(assert (=> bs!1264564 m!6485526))

(declare-fun m!6485918 () Bool)

(assert (=> bs!1264564 m!6485918))

(assert (=> bs!1264564 m!6485532))

(assert (=> b!5465843 d!1738641))

(declare-fun d!1738643 () Bool)

(declare-fun lt!2233483 () Regex!15319)

(assert (=> d!1738643 (validRegex!7055 lt!2233483)))

(assert (=> d!1738643 (= lt!2233483 (generalisedUnion!1248 (unfocusZipperList!761 zl!343)))))

(assert (=> d!1738643 (= (unfocusZipper!1061 zl!343) lt!2233483)))

(declare-fun bs!1264565 () Bool)

(assert (= bs!1264565 d!1738643))

(declare-fun m!6485920 () Bool)

(assert (=> bs!1264565 m!6485920))

(assert (=> bs!1264565 m!6485562))

(assert (=> bs!1264565 m!6485562))

(assert (=> bs!1264565 m!6485564))

(assert (=> b!5465856 d!1738643))

(declare-fun b!5466503 () Bool)

(declare-fun e!3384419 () (InoxSet Context!9406))

(declare-fun call!403363 () (InoxSet Context!9406))

(declare-fun call!403362 () (InoxSet Context!9406))

(assert (=> b!5466503 (= e!3384419 ((_ map or) call!403363 call!403362))))

(declare-fun c!955051 () Bool)

(declare-fun bm!403354 () Bool)

(declare-fun call!403359 () List!62256)

(declare-fun c!955047 () Bool)

(declare-fun $colon$colon!1540 (List!62256 Regex!15319) List!62256)

(assert (=> bm!403354 (= call!403359 ($colon$colon!1540 (exprs!5203 (Context!9407 Nil!62132)) (ite (or c!955047 c!955051) (regTwo!31150 r!7292) r!7292)))))

(declare-fun b!5466504 () Bool)

(declare-fun e!3384417 () (InoxSet Context!9406))

(declare-fun call!403364 () (InoxSet Context!9406))

(assert (=> b!5466504 (= e!3384417 call!403364)))

(declare-fun bm!403355 () Bool)

(assert (=> bm!403355 (= call!403364 call!403362)))

(declare-fun b!5466505 () Bool)

(assert (=> b!5466505 (= e!3384419 e!3384417)))

(assert (=> b!5466505 (= c!955051 ((_ is Concat!24164) r!7292))))

(declare-fun b!5466506 () Bool)

(declare-fun e!3384416 () Bool)

(assert (=> b!5466506 (= c!955047 e!3384416)))

(declare-fun res!2329055 () Bool)

(assert (=> b!5466506 (=> (not res!2329055) (not e!3384416))))

(assert (=> b!5466506 (= res!2329055 ((_ is Concat!24164) r!7292))))

(declare-fun e!3384418 () (InoxSet Context!9406))

(assert (=> b!5466506 (= e!3384418 e!3384419)))

(declare-fun b!5466507 () Bool)

(declare-fun e!3384420 () (InoxSet Context!9406))

(assert (=> b!5466507 (= e!3384420 e!3384418)))

(declare-fun c!955048 () Bool)

(assert (=> b!5466507 (= c!955048 ((_ is Union!15319) r!7292))))

(declare-fun b!5466508 () Bool)

(declare-fun e!3384415 () (InoxSet Context!9406))

(assert (=> b!5466508 (= e!3384415 call!403364)))

(declare-fun b!5466509 () Bool)

(assert (=> b!5466509 (= e!3384420 (store ((as const (Array Context!9406 Bool)) false) (Context!9407 Nil!62132) true))))

(declare-fun b!5466510 () Bool)

(declare-fun c!955050 () Bool)

(assert (=> b!5466510 (= c!955050 ((_ is Star!15319) r!7292))))

(assert (=> b!5466510 (= e!3384417 e!3384415)))

(declare-fun bm!403357 () Bool)

(assert (=> bm!403357 (= call!403363 (derivationStepZipperDown!745 (ite c!955048 (regOne!31151 r!7292) (regOne!31150 r!7292)) (ite c!955048 (Context!9407 Nil!62132) (Context!9407 call!403359)) (h!68582 s!2326)))))

(declare-fun b!5466511 () Bool)

(assert (=> b!5466511 (= e!3384416 (nullable!5470 (regOne!31150 r!7292)))))

(declare-fun call!403360 () (InoxSet Context!9406))

(declare-fun call!403361 () List!62256)

(declare-fun bm!403356 () Bool)

(assert (=> bm!403356 (= call!403360 (derivationStepZipperDown!745 (ite c!955048 (regTwo!31151 r!7292) (ite c!955047 (regTwo!31150 r!7292) (ite c!955051 (regOne!31150 r!7292) (reg!15648 r!7292)))) (ite (or c!955048 c!955047) (Context!9407 Nil!62132) (Context!9407 call!403361)) (h!68582 s!2326)))))

(declare-fun d!1738645 () Bool)

(declare-fun c!955049 () Bool)

(assert (=> d!1738645 (= c!955049 (and ((_ is ElementMatch!15319) r!7292) (= (c!954875 r!7292) (h!68582 s!2326))))))

(assert (=> d!1738645 (= (derivationStepZipperDown!745 r!7292 (Context!9407 Nil!62132) (h!68582 s!2326)) e!3384420)))

(declare-fun bm!403358 () Bool)

(assert (=> bm!403358 (= call!403362 call!403360)))

(declare-fun bm!403359 () Bool)

(assert (=> bm!403359 (= call!403361 call!403359)))

(declare-fun b!5466512 () Bool)

(assert (=> b!5466512 (= e!3384415 ((as const (Array Context!9406 Bool)) false))))

(declare-fun b!5466513 () Bool)

(assert (=> b!5466513 (= e!3384418 ((_ map or) call!403363 call!403360))))

(assert (= (and d!1738645 c!955049) b!5466509))

(assert (= (and d!1738645 (not c!955049)) b!5466507))

(assert (= (and b!5466507 c!955048) b!5466513))

(assert (= (and b!5466507 (not c!955048)) b!5466506))

(assert (= (and b!5466506 res!2329055) b!5466511))

(assert (= (and b!5466506 c!955047) b!5466503))

(assert (= (and b!5466506 (not c!955047)) b!5466505))

(assert (= (and b!5466505 c!955051) b!5466504))

(assert (= (and b!5466505 (not c!955051)) b!5466510))

(assert (= (and b!5466510 c!955050) b!5466508))

(assert (= (and b!5466510 (not c!955050)) b!5466512))

(assert (= (or b!5466504 b!5466508) bm!403359))

(assert (= (or b!5466504 b!5466508) bm!403355))

(assert (= (or b!5466503 bm!403359) bm!403354))

(assert (= (or b!5466503 bm!403355) bm!403358))

(assert (= (or b!5466513 bm!403358) bm!403356))

(assert (= (or b!5466513 b!5466503) bm!403357))

(declare-fun m!6485922 () Bool)

(assert (=> b!5466509 m!6485922))

(declare-fun m!6485924 () Bool)

(assert (=> bm!403354 m!6485924))

(declare-fun m!6485926 () Bool)

(assert (=> bm!403356 m!6485926))

(declare-fun m!6485928 () Bool)

(assert (=> bm!403357 m!6485928))

(declare-fun m!6485930 () Bool)

(assert (=> b!5466511 m!6485930))

(assert (=> b!5465847 d!1738645))

(declare-fun b!5466514 () Bool)

(declare-fun e!3384421 () (InoxSet Context!9406))

(declare-fun call!403365 () (InoxSet Context!9406))

(assert (=> b!5466514 (= e!3384421 call!403365)))

(declare-fun b!5466515 () Bool)

(assert (=> b!5466515 (= e!3384421 ((as const (Array Context!9406 Bool)) false))))

(declare-fun b!5466516 () Bool)

(declare-fun e!3384423 () Bool)

(assert (=> b!5466516 (= e!3384423 (nullable!5470 (h!68580 (exprs!5203 (Context!9407 (Cons!62132 r!7292 Nil!62132))))))))

(declare-fun b!5466517 () Bool)

(declare-fun e!3384422 () (InoxSet Context!9406))

(assert (=> b!5466517 (= e!3384422 ((_ map or) call!403365 (derivationStepZipperUp!671 (Context!9407 (t!375485 (exprs!5203 (Context!9407 (Cons!62132 r!7292 Nil!62132))))) (h!68582 s!2326))))))

(declare-fun d!1738647 () Bool)

(declare-fun c!955052 () Bool)

(assert (=> d!1738647 (= c!955052 e!3384423)))

(declare-fun res!2329056 () Bool)

(assert (=> d!1738647 (=> (not res!2329056) (not e!3384423))))

(assert (=> d!1738647 (= res!2329056 ((_ is Cons!62132) (exprs!5203 (Context!9407 (Cons!62132 r!7292 Nil!62132)))))))

(assert (=> d!1738647 (= (derivationStepZipperUp!671 (Context!9407 (Cons!62132 r!7292 Nil!62132)) (h!68582 s!2326)) e!3384422)))

(declare-fun b!5466518 () Bool)

(assert (=> b!5466518 (= e!3384422 e!3384421)))

(declare-fun c!955053 () Bool)

(assert (=> b!5466518 (= c!955053 ((_ is Cons!62132) (exprs!5203 (Context!9407 (Cons!62132 r!7292 Nil!62132)))))))

(declare-fun bm!403360 () Bool)

(assert (=> bm!403360 (= call!403365 (derivationStepZipperDown!745 (h!68580 (exprs!5203 (Context!9407 (Cons!62132 r!7292 Nil!62132)))) (Context!9407 (t!375485 (exprs!5203 (Context!9407 (Cons!62132 r!7292 Nil!62132))))) (h!68582 s!2326)))))

(assert (= (and d!1738647 res!2329056) b!5466516))

(assert (= (and d!1738647 c!955052) b!5466517))

(assert (= (and d!1738647 (not c!955052)) b!5466518))

(assert (= (and b!5466518 c!955053) b!5466514))

(assert (= (and b!5466518 (not c!955053)) b!5466515))

(assert (= (or b!5466517 b!5466514) bm!403360))

(declare-fun m!6485932 () Bool)

(assert (=> b!5466516 m!6485932))

(declare-fun m!6485934 () Bool)

(assert (=> b!5466517 m!6485934))

(declare-fun m!6485936 () Bool)

(assert (=> bm!403360 m!6485936))

(assert (=> b!5465847 d!1738647))

(declare-fun bs!1264566 () Bool)

(declare-fun d!1738649 () Bool)

(assert (= bs!1264566 (and d!1738649 d!1738523)))

(declare-fun lambda!290505 () Int)

(assert (=> bs!1264566 (= lambda!290505 lambda!290440)))

(declare-fun bs!1264567 () Bool)

(assert (= bs!1264567 (and d!1738649 d!1738607)))

(assert (=> bs!1264567 (= lambda!290505 lambda!290489)))

(declare-fun bs!1264568 () Bool)

(assert (= bs!1264568 (and d!1738649 d!1738613)))

(assert (=> bs!1264568 (= lambda!290505 lambda!290492)))

(declare-fun bs!1264569 () Bool)

(assert (= bs!1264569 (and d!1738649 d!1738623)))

(assert (=> bs!1264569 (= lambda!290505 lambda!290495)))

(assert (=> d!1738649 (= (inv!81544 (h!68581 zl!343)) (forall!14600 (exprs!5203 (h!68581 zl!343)) lambda!290505))))

(declare-fun bs!1264570 () Bool)

(assert (= bs!1264570 d!1738649))

(declare-fun m!6485938 () Bool)

(assert (=> bs!1264570 m!6485938))

(assert (=> b!5465855 d!1738649))

(declare-fun b!5466529 () Bool)

(declare-fun e!3384426 () Bool)

(assert (=> b!5466529 (= e!3384426 tp_is_empty!39891)))

(declare-fun b!5466532 () Bool)

(declare-fun tp!1503498 () Bool)

(declare-fun tp!1503496 () Bool)

(assert (=> b!5466532 (= e!3384426 (and tp!1503498 tp!1503496))))

(declare-fun b!5466531 () Bool)

(declare-fun tp!1503497 () Bool)

(assert (=> b!5466531 (= e!3384426 tp!1503497)))

(assert (=> b!5465849 (= tp!1503423 e!3384426)))

(declare-fun b!5466530 () Bool)

(declare-fun tp!1503495 () Bool)

(declare-fun tp!1503494 () Bool)

(assert (=> b!5466530 (= e!3384426 (and tp!1503495 tp!1503494))))

(assert (= (and b!5465849 ((_ is ElementMatch!15319) (reg!15648 r!7292))) b!5466529))

(assert (= (and b!5465849 ((_ is Concat!24164) (reg!15648 r!7292))) b!5466530))

(assert (= (and b!5465849 ((_ is Star!15319) (reg!15648 r!7292))) b!5466531))

(assert (= (and b!5465849 ((_ is Union!15319) (reg!15648 r!7292))) b!5466532))

(declare-fun b!5466537 () Bool)

(declare-fun e!3384429 () Bool)

(declare-fun tp!1503503 () Bool)

(declare-fun tp!1503504 () Bool)

(assert (=> b!5466537 (= e!3384429 (and tp!1503503 tp!1503504))))

(assert (=> b!5465853 (= tp!1503418 e!3384429)))

(assert (= (and b!5465853 ((_ is Cons!62132) (exprs!5203 (h!68581 zl!343)))) b!5466537))

(declare-fun b!5466538 () Bool)

(declare-fun e!3384430 () Bool)

(assert (=> b!5466538 (= e!3384430 tp_is_empty!39891)))

(declare-fun b!5466541 () Bool)

(declare-fun tp!1503509 () Bool)

(declare-fun tp!1503507 () Bool)

(assert (=> b!5466541 (= e!3384430 (and tp!1503509 tp!1503507))))

(declare-fun b!5466540 () Bool)

(declare-fun tp!1503508 () Bool)

(assert (=> b!5466540 (= e!3384430 tp!1503508)))

(assert (=> b!5465852 (= tp!1503421 e!3384430)))

(declare-fun b!5466539 () Bool)

(declare-fun tp!1503506 () Bool)

(declare-fun tp!1503505 () Bool)

(assert (=> b!5466539 (= e!3384430 (and tp!1503506 tp!1503505))))

(assert (= (and b!5465852 ((_ is ElementMatch!15319) (regOne!31151 r!7292))) b!5466538))

(assert (= (and b!5465852 ((_ is Concat!24164) (regOne!31151 r!7292))) b!5466539))

(assert (= (and b!5465852 ((_ is Star!15319) (regOne!31151 r!7292))) b!5466540))

(assert (= (and b!5465852 ((_ is Union!15319) (regOne!31151 r!7292))) b!5466541))

(declare-fun b!5466542 () Bool)

(declare-fun e!3384431 () Bool)

(assert (=> b!5466542 (= e!3384431 tp_is_empty!39891)))

(declare-fun b!5466545 () Bool)

(declare-fun tp!1503514 () Bool)

(declare-fun tp!1503512 () Bool)

(assert (=> b!5466545 (= e!3384431 (and tp!1503514 tp!1503512))))

(declare-fun b!5466544 () Bool)

(declare-fun tp!1503513 () Bool)

(assert (=> b!5466544 (= e!3384431 tp!1503513)))

(assert (=> b!5465852 (= tp!1503419 e!3384431)))

(declare-fun b!5466543 () Bool)

(declare-fun tp!1503511 () Bool)

(declare-fun tp!1503510 () Bool)

(assert (=> b!5466543 (= e!3384431 (and tp!1503511 tp!1503510))))

(assert (= (and b!5465852 ((_ is ElementMatch!15319) (regTwo!31151 r!7292))) b!5466542))

(assert (= (and b!5465852 ((_ is Concat!24164) (regTwo!31151 r!7292))) b!5466543))

(assert (= (and b!5465852 ((_ is Star!15319) (regTwo!31151 r!7292))) b!5466544))

(assert (= (and b!5465852 ((_ is Union!15319) (regTwo!31151 r!7292))) b!5466545))

(declare-fun b!5466546 () Bool)

(declare-fun e!3384432 () Bool)

(assert (=> b!5466546 (= e!3384432 tp_is_empty!39891)))

(declare-fun b!5466549 () Bool)

(declare-fun tp!1503519 () Bool)

(declare-fun tp!1503517 () Bool)

(assert (=> b!5466549 (= e!3384432 (and tp!1503519 tp!1503517))))

(declare-fun b!5466548 () Bool)

(declare-fun tp!1503518 () Bool)

(assert (=> b!5466548 (= e!3384432 tp!1503518)))

(assert (=> b!5465841 (= tp!1503416 e!3384432)))

(declare-fun b!5466547 () Bool)

(declare-fun tp!1503516 () Bool)

(declare-fun tp!1503515 () Bool)

(assert (=> b!5466547 (= e!3384432 (and tp!1503516 tp!1503515))))

(assert (= (and b!5465841 ((_ is ElementMatch!15319) (regOne!31150 r!7292))) b!5466546))

(assert (= (and b!5465841 ((_ is Concat!24164) (regOne!31150 r!7292))) b!5466547))

(assert (= (and b!5465841 ((_ is Star!15319) (regOne!31150 r!7292))) b!5466548))

(assert (= (and b!5465841 ((_ is Union!15319) (regOne!31150 r!7292))) b!5466549))

(declare-fun b!5466550 () Bool)

(declare-fun e!3384433 () Bool)

(assert (=> b!5466550 (= e!3384433 tp_is_empty!39891)))

(declare-fun b!5466553 () Bool)

(declare-fun tp!1503524 () Bool)

(declare-fun tp!1503522 () Bool)

(assert (=> b!5466553 (= e!3384433 (and tp!1503524 tp!1503522))))

(declare-fun b!5466552 () Bool)

(declare-fun tp!1503523 () Bool)

(assert (=> b!5466552 (= e!3384433 tp!1503523)))

(assert (=> b!5465841 (= tp!1503424 e!3384433)))

(declare-fun b!5466551 () Bool)

(declare-fun tp!1503521 () Bool)

(declare-fun tp!1503520 () Bool)

(assert (=> b!5466551 (= e!3384433 (and tp!1503521 tp!1503520))))

(assert (= (and b!5465841 ((_ is ElementMatch!15319) (regTwo!31150 r!7292))) b!5466550))

(assert (= (and b!5465841 ((_ is Concat!24164) (regTwo!31150 r!7292))) b!5466551))

(assert (= (and b!5465841 ((_ is Star!15319) (regTwo!31150 r!7292))) b!5466552))

(assert (= (and b!5465841 ((_ is Union!15319) (regTwo!31150 r!7292))) b!5466553))

(declare-fun b!5466558 () Bool)

(declare-fun e!3384436 () Bool)

(declare-fun tp!1503527 () Bool)

(assert (=> b!5466558 (= e!3384436 (and tp_is_empty!39891 tp!1503527))))

(assert (=> b!5465846 (= tp!1503425 e!3384436)))

(assert (= (and b!5465846 ((_ is Cons!62134) (t!375487 s!2326))) b!5466558))

(declare-fun condSetEmpty!35839 () Bool)

(assert (=> setNonEmpty!35833 (= condSetEmpty!35839 (= setRest!35833 ((as const (Array Context!9406 Bool)) false)))))

(declare-fun setRes!35839 () Bool)

(assert (=> setNonEmpty!35833 (= tp!1503422 setRes!35839)))

(declare-fun setIsEmpty!35839 () Bool)

(assert (=> setIsEmpty!35839 setRes!35839))

(declare-fun tp!1503532 () Bool)

(declare-fun e!3384439 () Bool)

(declare-fun setElem!35839 () Context!9406)

(declare-fun setNonEmpty!35839 () Bool)

(assert (=> setNonEmpty!35839 (= setRes!35839 (and tp!1503532 (inv!81544 setElem!35839) e!3384439))))

(declare-fun setRest!35839 () (InoxSet Context!9406))

(assert (=> setNonEmpty!35839 (= setRest!35833 ((_ map or) (store ((as const (Array Context!9406 Bool)) false) setElem!35839 true) setRest!35839))))

(declare-fun b!5466563 () Bool)

(declare-fun tp!1503533 () Bool)

(assert (=> b!5466563 (= e!3384439 tp!1503533)))

(assert (= (and setNonEmpty!35833 condSetEmpty!35839) setIsEmpty!35839))

(assert (= (and setNonEmpty!35833 (not condSetEmpty!35839)) setNonEmpty!35839))

(assert (= setNonEmpty!35839 b!5466563))

(declare-fun m!6485940 () Bool)

(assert (=> setNonEmpty!35839 m!6485940))

(declare-fun b!5466571 () Bool)

(declare-fun e!3384445 () Bool)

(declare-fun tp!1503538 () Bool)

(assert (=> b!5466571 (= e!3384445 tp!1503538)))

(declare-fun b!5466570 () Bool)

(declare-fun e!3384444 () Bool)

(declare-fun tp!1503539 () Bool)

(assert (=> b!5466570 (= e!3384444 (and (inv!81544 (h!68581 (t!375486 zl!343))) e!3384445 tp!1503539))))

(assert (=> b!5465855 (= tp!1503420 e!3384444)))

(assert (= b!5466570 b!5466571))

(assert (= (and b!5465855 ((_ is Cons!62133) (t!375486 zl!343))) b!5466570))

(declare-fun m!6485942 () Bool)

(assert (=> b!5466570 m!6485942))

(declare-fun b!5466572 () Bool)

(declare-fun e!3384446 () Bool)

(declare-fun tp!1503540 () Bool)

(declare-fun tp!1503541 () Bool)

(assert (=> b!5466572 (= e!3384446 (and tp!1503540 tp!1503541))))

(assert (=> b!5465840 (= tp!1503417 e!3384446)))

(assert (= (and b!5465840 ((_ is Cons!62132) (exprs!5203 setElem!35833))) b!5466572))

(declare-fun b_lambda!207879 () Bool)

(assert (= b_lambda!207875 (or b!5465854 b_lambda!207879)))

(declare-fun bs!1264571 () Bool)

(declare-fun d!1738651 () Bool)

(assert (= bs!1264571 (and d!1738651 b!5465854)))

(assert (=> bs!1264571 (= (dynLambda!24417 lambda!290431 lt!2233393) (derivationStepZipperUp!671 lt!2233393 (h!68582 s!2326)))))

(assert (=> bs!1264571 m!6485536))

(assert (=> d!1738621 d!1738651))

(declare-fun b_lambda!207881 () Bool)

(assert (= b_lambda!207877 (or b!5465854 b_lambda!207881)))

(declare-fun bs!1264572 () Bool)

(declare-fun d!1738653 () Bool)

(assert (= bs!1264572 (and d!1738653 b!5465854)))

(assert (=> bs!1264572 (= (dynLambda!24417 lambda!290431 (h!68581 zl!343)) (derivationStepZipperUp!671 (h!68581 zl!343) (h!68582 s!2326)))))

(assert (=> bs!1264572 m!6485580))

(assert (=> d!1738635 d!1738653))

(check-sat (not b!5466393) (not b!5466468) (not b!5466571) (not d!1738589) (not bm!403357) (not b!5466572) (not d!1738551) (not b!5466517) (not b!5466377) (not bm!403354) (not b!5466387) (not b!5465944) (not b_lambda!207879) (not bs!1264572) (not d!1738639) (not b!5466158) (not b!5466324) (not bm!403324) (not b!5466331) (not b!5466553) (not b!5465939) (not b!5466431) (not d!1738577) (not b!5466551) (not d!1738641) (not b!5466532) (not d!1738613) (not b!5466329) (not d!1738533) (not bm!403328) (not setNonEmpty!35839) (not bm!403341) (not b!5466543) (not b!5466548) (not d!1738617) (not b!5466540) (not b!5466154) (not d!1738623) (not bm!403337) (not d!1738539) (not b!5465937) (not b!5466531) (not d!1738621) (not b!5466549) (not b!5466323) (not d!1738603) (not b!5466541) (not b!5465938) (not b!5466155) (not bm!403356) (not b!5466394) (not bm!403325) (not d!1738581) (not b!5466511) (not bm!403360) (not bs!1264571) (not b!5466336) (not d!1738523) (not b!5466544) (not b!5466470) (not d!1738629) (not bm!403338) (not b!5466552) (not b!5466474) (not b!5465941) (not b!5466159) (not b!5466545) (not b!5466558) (not d!1738573) (not b!5466241) (not d!1738631) (not b!5466326) (not b!5466476) (not b_lambda!207881) (not d!1738579) (not b!5466437) (not b!5465942) (not b!5466328) (not b!5466530) (not b!5466539) (not b!5466479) (not b!5466570) (not d!1738643) (not d!1738649) (not b!5466153) tp_is_empty!39891 (not d!1738607) (not bm!403332) (not b!5466547) (not b!5466378) (not b!5466363) (not b!5466325) (not b!5466537) (not b!5465935) (not b!5466516) (not b!5466563) (not bm!403331) (not d!1738635) (not bm!403330) (not b!5466156) (not b!5466471))
(check-sat)
