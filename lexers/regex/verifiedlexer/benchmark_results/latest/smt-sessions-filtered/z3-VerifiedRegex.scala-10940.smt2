; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!566166 () Bool)

(assert start!566166)

(declare-fun b!5386717 () Bool)

(assert (=> b!5386717 true))

(assert (=> b!5386717 true))

(declare-fun lambda!279426 () Int)

(declare-fun lambda!279425 () Int)

(assert (=> b!5386717 (not (= lambda!279426 lambda!279425))))

(assert (=> b!5386717 true))

(assert (=> b!5386717 true))

(declare-fun b!5386718 () Bool)

(assert (=> b!5386718 true))

(declare-fun bs!1246540 () Bool)

(declare-fun b!5386707 () Bool)

(assert (= bs!1246540 (and b!5386707 b!5386717)))

(declare-fun lambda!279428 () Int)

(declare-datatypes ((C!30524 0))(
  ( (C!30525 (val!24964 Int)) )
))
(declare-datatypes ((Regex!15127 0))(
  ( (ElementMatch!15127 (c!938617 C!30524)) (Concat!23972 (regOne!30766 Regex!15127) (regTwo!30766 Regex!15127)) (EmptyExpr!15127) (Star!15127 (reg!15456 Regex!15127)) (EmptyLang!15127) (Union!15127 (regOne!30767 Regex!15127) (regTwo!30767 Regex!15127)) )
))
(declare-fun r!7292 () Regex!15127)

(declare-fun lt!2194501 () Regex!15127)

(assert (=> bs!1246540 (= (= lt!2194501 (regOne!30766 r!7292)) (= lambda!279428 lambda!279425))))

(assert (=> bs!1246540 (not (= lambda!279428 lambda!279426))))

(assert (=> b!5386707 true))

(assert (=> b!5386707 true))

(assert (=> b!5386707 true))

(declare-fun lambda!279429 () Int)

(assert (=> bs!1246540 (not (= lambda!279429 lambda!279425))))

(assert (=> bs!1246540 (= (= lt!2194501 (regOne!30766 r!7292)) (= lambda!279429 lambda!279426))))

(assert (=> b!5386707 (not (= lambda!279429 lambda!279428))))

(assert (=> b!5386707 true))

(assert (=> b!5386707 true))

(assert (=> b!5386707 true))

(declare-fun bs!1246541 () Bool)

(declare-fun b!5386710 () Bool)

(assert (= bs!1246541 (and b!5386710 b!5386717)))

(declare-datatypes ((List!61680 0))(
  ( (Nil!61556) (Cons!61556 (h!68004 C!30524) (t!374903 List!61680)) )
))
(declare-fun s!2326 () List!61680)

(declare-datatypes ((tuple2!64652 0))(
  ( (tuple2!64653 (_1!35629 List!61680) (_2!35629 List!61680)) )
))
(declare-fun lt!2194533 () tuple2!64652)

(declare-fun lambda!279430 () Int)

(assert (=> bs!1246541 (= (and (= (_1!35629 lt!2194533) s!2326) (= (reg!15456 (regOne!30766 r!7292)) (regOne!30766 r!7292)) (= lt!2194501 (regTwo!30766 r!7292))) (= lambda!279430 lambda!279425))))

(assert (=> bs!1246541 (not (= lambda!279430 lambda!279426))))

(declare-fun bs!1246542 () Bool)

(assert (= bs!1246542 (and b!5386710 b!5386707)))

(assert (=> bs!1246542 (= (and (= (_1!35629 lt!2194533) s!2326) (= (reg!15456 (regOne!30766 r!7292)) lt!2194501) (= lt!2194501 (regTwo!30766 r!7292))) (= lambda!279430 lambda!279428))))

(assert (=> bs!1246542 (not (= lambda!279430 lambda!279429))))

(assert (=> b!5386710 true))

(assert (=> b!5386710 true))

(assert (=> b!5386710 true))

(declare-fun lambda!279431 () Int)

(assert (=> bs!1246541 (not (= lambda!279431 lambda!279426))))

(assert (=> bs!1246542 (not (= lambda!279431 lambda!279428))))

(assert (=> bs!1246542 (not (= lambda!279431 lambda!279429))))

(assert (=> bs!1246541 (not (= lambda!279431 lambda!279425))))

(assert (=> b!5386710 (not (= lambda!279431 lambda!279430))))

(assert (=> b!5386710 true))

(assert (=> b!5386710 true))

(assert (=> b!5386710 true))

(declare-fun lambda!279432 () Int)

(assert (=> bs!1246541 (= (and (= (_1!35629 lt!2194533) s!2326) (= (reg!15456 (regOne!30766 r!7292)) (regOne!30766 r!7292)) (= lt!2194501 (regTwo!30766 r!7292))) (= lambda!279432 lambda!279426))))

(assert (=> bs!1246542 (not (= lambda!279432 lambda!279428))))

(assert (=> bs!1246542 (= (and (= (_1!35629 lt!2194533) s!2326) (= (reg!15456 (regOne!30766 r!7292)) lt!2194501) (= lt!2194501 (regTwo!30766 r!7292))) (= lambda!279432 lambda!279429))))

(assert (=> bs!1246541 (not (= lambda!279432 lambda!279425))))

(assert (=> b!5386710 (not (= lambda!279432 lambda!279431))))

(assert (=> b!5386710 (not (= lambda!279432 lambda!279430))))

(assert (=> b!5386710 true))

(assert (=> b!5386710 true))

(assert (=> b!5386710 true))

(declare-fun b!5386686 () Bool)

(declare-fun e!3341002 () Bool)

(declare-fun e!3341006 () Bool)

(assert (=> b!5386686 (= e!3341002 e!3341006)))

(declare-fun res!2288431 () Bool)

(assert (=> b!5386686 (=> res!2288431 e!3341006)))

(declare-fun lt!2194503 () List!61680)

(assert (=> b!5386686 (= res!2288431 (not (= lt!2194503 s!2326)))))

(declare-fun lt!2194510 () List!61680)

(assert (=> b!5386686 (= lt!2194503 lt!2194510)))

(declare-fun lt!2194542 () tuple2!64652)

(declare-fun lt!2194545 () List!61680)

(declare-fun ++!13439 (List!61680 List!61680) List!61680)

(assert (=> b!5386686 (= lt!2194510 (++!13439 (_1!35629 lt!2194542) lt!2194545))))

(declare-fun lt!2194517 () List!61680)

(assert (=> b!5386686 (= lt!2194503 (++!13439 lt!2194517 (_2!35629 lt!2194533)))))

(assert (=> b!5386686 (= lt!2194545 (++!13439 (_2!35629 lt!2194542) (_2!35629 lt!2194533)))))

(declare-datatypes ((Unit!154026 0))(
  ( (Unit!154027) )
))
(declare-fun lt!2194522 () Unit!154026)

(declare-fun lemmaConcatAssociativity!2824 (List!61680 List!61680 List!61680) Unit!154026)

(assert (=> b!5386686 (= lt!2194522 (lemmaConcatAssociativity!2824 (_1!35629 lt!2194542) (_2!35629 lt!2194542) (_2!35629 lt!2194533)))))

(declare-fun b!5386687 () Bool)

(declare-fun res!2288436 () Bool)

(declare-fun e!3341012 () Bool)

(assert (=> b!5386687 (=> res!2288436 e!3341012)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!61681 0))(
  ( (Nil!61557) (Cons!61557 (h!68005 Regex!15127) (t!374904 List!61681)) )
))
(declare-datatypes ((Context!9022 0))(
  ( (Context!9023 (exprs!5011 List!61681)) )
))
(declare-fun lt!2194521 () (InoxSet Context!9022))

(declare-fun lt!2194544 () (InoxSet Context!9022))

(declare-fun matchZipper!1371 ((InoxSet Context!9022) List!61680) Bool)

(assert (=> b!5386687 (= res!2288436 (not (= (matchZipper!1371 lt!2194544 s!2326) (matchZipper!1371 lt!2194521 (t!374903 s!2326)))))))

(declare-fun b!5386688 () Bool)

(declare-fun e!3341020 () Bool)

(declare-fun tp!1492218 () Bool)

(assert (=> b!5386688 (= e!3341020 tp!1492218)))

(declare-fun b!5386689 () Bool)

(declare-fun e!3340999 () Bool)

(declare-fun lt!2194505 () Bool)

(declare-fun lt!2194519 () Bool)

(assert (=> b!5386689 (= e!3340999 (or (not lt!2194505) lt!2194519))))

(declare-fun b!5386690 () Bool)

(declare-fun e!3341003 () Bool)

(declare-fun tp_is_empty!39507 () Bool)

(assert (=> b!5386690 (= e!3341003 tp_is_empty!39507)))

(declare-fun b!5386691 () Bool)

(declare-fun res!2288442 () Bool)

(declare-fun e!3341013 () Bool)

(assert (=> b!5386691 (=> res!2288442 e!3341013)))

(declare-datatypes ((List!61682 0))(
  ( (Nil!61558) (Cons!61558 (h!68006 Context!9022) (t!374905 List!61682)) )
))
(declare-fun zl!343 () List!61682)

(declare-fun generalisedUnion!1056 (List!61681) Regex!15127)

(declare-fun unfocusZipperList!569 (List!61682) List!61681)

(assert (=> b!5386691 (= res!2288442 (not (= r!7292 (generalisedUnion!1056 (unfocusZipperList!569 zl!343)))))))

(declare-fun setIsEmpty!34979 () Bool)

(declare-fun setRes!34979 () Bool)

(assert (=> setIsEmpty!34979 setRes!34979))

(declare-fun b!5386692 () Bool)

(declare-fun e!3341004 () Bool)

(assert (=> b!5386692 (= e!3341004 e!3341012)))

(declare-fun res!2288444 () Bool)

(assert (=> b!5386692 (=> res!2288444 e!3341012)))

(declare-fun lt!2194546 () (InoxSet Context!9022))

(assert (=> b!5386692 (= res!2288444 (not (= lt!2194521 lt!2194546)))))

(declare-fun lt!2194500 () Context!9022)

(declare-fun lambda!279427 () Int)

(declare-fun flatMap!854 ((InoxSet Context!9022) Int) (InoxSet Context!9022))

(declare-fun derivationStepZipperUp!499 (Context!9022 C!30524) (InoxSet Context!9022))

(assert (=> b!5386692 (= (flatMap!854 lt!2194544 lambda!279427) (derivationStepZipperUp!499 lt!2194500 (h!68004 s!2326)))))

(declare-fun lt!2194531 () Unit!154026)

(declare-fun lemmaFlatMapOnSingletonSet!386 ((InoxSet Context!9022) Context!9022 Int) Unit!154026)

(assert (=> b!5386692 (= lt!2194531 (lemmaFlatMapOnSingletonSet!386 lt!2194544 lt!2194500 lambda!279427))))

(declare-fun lt!2194552 () (InoxSet Context!9022))

(assert (=> b!5386692 (= lt!2194552 (derivationStepZipperUp!499 lt!2194500 (h!68004 s!2326)))))

(declare-fun derivationStepZipper!1366 ((InoxSet Context!9022) C!30524) (InoxSet Context!9022))

(assert (=> b!5386692 (= lt!2194521 (derivationStepZipper!1366 lt!2194544 (h!68004 s!2326)))))

(assert (=> b!5386692 (= lt!2194544 (store ((as const (Array Context!9022 Bool)) false) lt!2194500 true))))

(declare-fun lt!2194524 () List!61681)

(assert (=> b!5386692 (= lt!2194500 (Context!9023 (Cons!61557 (reg!15456 (regOne!30766 r!7292)) lt!2194524)))))

(declare-fun b!5386693 () Bool)

(declare-fun res!2288447 () Bool)

(assert (=> b!5386693 (=> res!2288447 e!3341012)))

(declare-fun lt!2194543 () Regex!15127)

(assert (=> b!5386693 (= res!2288447 (not (= lt!2194543 r!7292)))))

(declare-fun b!5386694 () Bool)

(declare-fun e!3340998 () Bool)

(declare-fun e!3341018 () Bool)

(assert (=> b!5386694 (= e!3340998 e!3341018)))

(declare-fun res!2288450 () Bool)

(assert (=> b!5386694 (=> res!2288450 e!3341018)))

(assert (=> b!5386694 (= res!2288450 (not lt!2194505))))

(assert (=> b!5386694 e!3340999))

(declare-fun res!2288443 () Bool)

(assert (=> b!5386694 (=> (not res!2288443) (not e!3340999))))

(declare-fun lt!2194541 () Regex!15127)

(declare-fun matchR!7312 (Regex!15127 List!61680) Bool)

(declare-fun matchRSpec!2230 (Regex!15127 List!61680) Bool)

(assert (=> b!5386694 (= res!2288443 (= (matchR!7312 lt!2194541 s!2326) (matchRSpec!2230 lt!2194541 s!2326)))))

(declare-fun lt!2194536 () Unit!154026)

(declare-fun mainMatchTheorem!2230 (Regex!15127 List!61680) Unit!154026)

(assert (=> b!5386694 (= lt!2194536 (mainMatchTheorem!2230 lt!2194541 s!2326))))

(declare-fun b!5386695 () Bool)

(declare-fun e!3341007 () Bool)

(declare-fun e!3341001 () Bool)

(assert (=> b!5386695 (= e!3341007 e!3341001)))

(declare-fun res!2288420 () Bool)

(assert (=> b!5386695 (=> res!2288420 e!3341001)))

(declare-fun unfocusZipper!869 (List!61682) Regex!15127)

(assert (=> b!5386695 (= res!2288420 (not (= (unfocusZipper!869 (Cons!61558 lt!2194500 Nil!61558)) lt!2194541)))))

(declare-fun lt!2194526 () Regex!15127)

(assert (=> b!5386695 (= lt!2194541 (Concat!23972 (reg!15456 (regOne!30766 r!7292)) lt!2194526))))

(declare-fun b!5386696 () Bool)

(declare-fun res!2288441 () Bool)

(assert (=> b!5386696 (=> res!2288441 e!3341006)))

(assert (=> b!5386696 (= res!2288441 (not (matchR!7312 lt!2194501 (_2!35629 lt!2194542))))))

(declare-fun b!5386697 () Bool)

(declare-fun e!3341011 () Bool)

(declare-fun tp!1492216 () Bool)

(assert (=> b!5386697 (= e!3341011 tp!1492216)))

(declare-fun b!5386698 () Bool)

(declare-fun e!3341005 () Bool)

(declare-fun nullable!5296 (Regex!15127) Bool)

(assert (=> b!5386698 (= e!3341005 (nullable!5296 (regOne!30766 (regOne!30766 r!7292))))))

(declare-fun b!5386699 () Bool)

(declare-fun tp!1492219 () Bool)

(assert (=> b!5386699 (= e!3341003 tp!1492219)))

(declare-fun e!3341010 () Bool)

(declare-fun tp!1492223 () Bool)

(declare-fun b!5386700 () Bool)

(declare-fun inv!81064 (Context!9022) Bool)

(assert (=> b!5386700 (= e!3341010 (and (inv!81064 (h!68006 zl!343)) e!3341020 tp!1492223))))

(declare-fun b!5386701 () Bool)

(declare-fun res!2288437 () Bool)

(assert (=> b!5386701 (=> res!2288437 e!3341013)))

(declare-fun generalisedConcat!796 (List!61681) Regex!15127)

(assert (=> b!5386701 (= res!2288437 (not (= r!7292 (generalisedConcat!796 (exprs!5011 (h!68006 zl!343))))))))

(declare-fun b!5386702 () Bool)

(declare-fun res!2288430 () Bool)

(assert (=> b!5386702 (=> res!2288430 e!3341006)))

(assert (=> b!5386702 (= res!2288430 (not (matchR!7312 (reg!15456 (regOne!30766 r!7292)) (_1!35629 lt!2194542))))))

(declare-fun b!5386703 () Bool)

(declare-fun e!3340997 () Bool)

(assert (=> b!5386703 (= e!3341001 e!3340997)))

(declare-fun res!2288435 () Bool)

(assert (=> b!5386703 (=> res!2288435 e!3340997)))

(declare-fun lt!2194547 () List!61682)

(assert (=> b!5386703 (= res!2288435 (not (= (unfocusZipper!869 lt!2194547) (reg!15456 (regOne!30766 r!7292)))))))

(declare-fun lt!2194550 () Context!9022)

(assert (=> b!5386703 (= lt!2194547 (Cons!61558 lt!2194550 Nil!61558))))

(declare-fun lt!2194537 () Context!9022)

(declare-fun lt!2194530 () (InoxSet Context!9022))

(assert (=> b!5386703 (= (flatMap!854 lt!2194530 lambda!279427) (derivationStepZipperUp!499 lt!2194537 (h!68004 s!2326)))))

(declare-fun lt!2194535 () Unit!154026)

(assert (=> b!5386703 (= lt!2194535 (lemmaFlatMapOnSingletonSet!386 lt!2194530 lt!2194537 lambda!279427))))

(declare-fun lt!2194538 () (InoxSet Context!9022))

(assert (=> b!5386703 (= (flatMap!854 lt!2194538 lambda!279427) (derivationStepZipperUp!499 lt!2194550 (h!68004 s!2326)))))

(declare-fun lt!2194540 () Unit!154026)

(assert (=> b!5386703 (= lt!2194540 (lemmaFlatMapOnSingletonSet!386 lt!2194538 lt!2194550 lambda!279427))))

(declare-fun lt!2194511 () (InoxSet Context!9022))

(assert (=> b!5386703 (= lt!2194511 (derivationStepZipperUp!499 lt!2194537 (h!68004 s!2326)))))

(declare-fun lt!2194508 () (InoxSet Context!9022))

(assert (=> b!5386703 (= lt!2194508 (derivationStepZipperUp!499 lt!2194550 (h!68004 s!2326)))))

(assert (=> b!5386703 (= lt!2194530 (store ((as const (Array Context!9022 Bool)) false) lt!2194537 true))))

(assert (=> b!5386703 (= lt!2194538 (store ((as const (Array Context!9022 Bool)) false) lt!2194550 true))))

(declare-fun lt!2194512 () List!61681)

(assert (=> b!5386703 (= lt!2194550 (Context!9023 lt!2194512))))

(assert (=> b!5386703 (= lt!2194512 (Cons!61557 (reg!15456 (regOne!30766 r!7292)) Nil!61557))))

(declare-fun b!5386704 () Bool)

(declare-fun e!3341014 () Bool)

(assert (=> b!5386704 (= e!3341014 (not e!3341013))))

(declare-fun res!2288432 () Bool)

(assert (=> b!5386704 (=> res!2288432 e!3341013)))

(get-info :version)

(assert (=> b!5386704 (= res!2288432 (not ((_ is Cons!61558) zl!343)))))

(assert (=> b!5386704 (= lt!2194505 lt!2194519)))

(assert (=> b!5386704 (= lt!2194519 (matchRSpec!2230 r!7292 s!2326))))

(assert (=> b!5386704 (= lt!2194505 (matchR!7312 r!7292 s!2326))))

(declare-fun lt!2194499 () Unit!154026)

(assert (=> b!5386704 (= lt!2194499 (mainMatchTheorem!2230 r!7292 s!2326))))

(declare-fun b!5386705 () Bool)

(declare-fun validRegex!6863 (Regex!15127) Bool)

(assert (=> b!5386705 (= e!3341006 (validRegex!6863 lt!2194541))))

(assert (=> b!5386705 (matchR!7312 lt!2194541 lt!2194510)))

(declare-fun lt!2194532 () Unit!154026)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!174 (Regex!15127 Regex!15127 List!61680 List!61680) Unit!154026)

(assert (=> b!5386705 (= lt!2194532 (lemmaTwoRegexMatchThenConcatMatchesConcatString!174 (reg!15456 (regOne!30766 r!7292)) lt!2194526 (_1!35629 lt!2194542) lt!2194545))))

(declare-fun ++!13440 (List!61681 List!61681) List!61681)

(assert (=> b!5386705 (matchZipper!1371 (store ((as const (Array Context!9022 Bool)) false) (Context!9023 (++!13440 lt!2194512 lt!2194524)) true) lt!2194510)))

(declare-fun lambda!279433 () Int)

(declare-fun lt!2194515 () Unit!154026)

(declare-fun lemmaConcatPreservesForall!158 (List!61681 List!61681 Int) Unit!154026)

(assert (=> b!5386705 (= lt!2194515 (lemmaConcatPreservesForall!158 lt!2194512 lt!2194524 lambda!279433))))

(declare-fun lt!2194514 () Unit!154026)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!14 (Context!9022 Context!9022 List!61680 List!61680) Unit!154026)

(assert (=> b!5386705 (= lt!2194514 (lemmaConcatenateContextMatchesConcatOfStrings!14 lt!2194550 lt!2194537 (_1!35629 lt!2194542) lt!2194545))))

(assert (=> b!5386705 (matchZipper!1371 lt!2194530 lt!2194545)))

(declare-fun lt!2194525 () Unit!154026)

(declare-fun lt!2194528 () List!61682)

(declare-fun theoremZipperRegexEquiv!457 ((InoxSet Context!9022) List!61682 Regex!15127 List!61680) Unit!154026)

(assert (=> b!5386705 (= lt!2194525 (theoremZipperRegexEquiv!457 lt!2194530 lt!2194528 lt!2194526 lt!2194545))))

(assert (=> b!5386705 (matchZipper!1371 lt!2194538 (_1!35629 lt!2194542))))

(declare-fun lt!2194551 () Unit!154026)

(assert (=> b!5386705 (= lt!2194551 (theoremZipperRegexEquiv!457 lt!2194538 lt!2194547 (reg!15456 (regOne!30766 r!7292)) (_1!35629 lt!2194542)))))

(assert (=> b!5386705 (matchR!7312 lt!2194526 lt!2194545)))

(declare-fun lt!2194534 () Unit!154026)

(assert (=> b!5386705 (= lt!2194534 (lemmaTwoRegexMatchThenConcatMatchesConcatString!174 lt!2194501 (regTwo!30766 r!7292) (_2!35629 lt!2194542) (_2!35629 lt!2194533)))))

(assert (=> b!5386705 (matchR!7312 lt!2194501 lt!2194517)))

(declare-fun lt!2194516 () Unit!154026)

(declare-fun lemmaStarApp!48 (Regex!15127 List!61680 List!61680) Unit!154026)

(assert (=> b!5386705 (= lt!2194516 (lemmaStarApp!48 (reg!15456 (regOne!30766 r!7292)) (_1!35629 lt!2194542) (_2!35629 lt!2194542)))))

(declare-fun b!5386706 () Bool)

(declare-fun res!2288423 () Bool)

(declare-fun e!3341017 () Bool)

(assert (=> b!5386706 (=> res!2288423 e!3341017)))

(declare-fun isEmpty!33552 (List!61681) Bool)

(assert (=> b!5386706 (= res!2288423 (isEmpty!33552 (t!374904 (exprs!5011 (h!68006 zl!343)))))))

(declare-fun e!3341008 () Bool)

(assert (=> b!5386707 (= e!3341018 e!3341008)))

(declare-fun res!2288421 () Bool)

(assert (=> b!5386707 (=> res!2288421 e!3341008)))

(assert (=> b!5386707 (= res!2288421 (not (= (++!13439 (_1!35629 lt!2194533) (_2!35629 lt!2194533)) s!2326)))))

(declare-datatypes ((Option!15238 0))(
  ( (None!15237) (Some!15237 (v!51266 tuple2!64652)) )
))
(declare-fun lt!2194513 () Option!15238)

(declare-fun get!21199 (Option!15238) tuple2!64652)

(assert (=> b!5386707 (= lt!2194533 (get!21199 lt!2194513))))

(declare-fun Exists!2308 (Int) Bool)

(assert (=> b!5386707 (= (Exists!2308 lambda!279428) (Exists!2308 lambda!279429))))

(declare-fun lt!2194553 () Unit!154026)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!962 (Regex!15127 Regex!15127 List!61680) Unit!154026)

(assert (=> b!5386707 (= lt!2194553 (lemmaExistCutMatchRandMatchRSpecEquivalent!962 lt!2194501 (regTwo!30766 r!7292) s!2326))))

(declare-fun isDefined!11941 (Option!15238) Bool)

(assert (=> b!5386707 (= (isDefined!11941 lt!2194513) (Exists!2308 lambda!279428))))

(declare-fun findConcatSeparation!1652 (Regex!15127 Regex!15127 List!61680 List!61680 List!61680) Option!15238)

(assert (=> b!5386707 (= lt!2194513 (findConcatSeparation!1652 lt!2194501 (regTwo!30766 r!7292) Nil!61556 s!2326 s!2326))))

(declare-fun lt!2194548 () Unit!154026)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1416 (Regex!15127 Regex!15127 List!61680) Unit!154026)

(assert (=> b!5386707 (= lt!2194548 (lemmaFindConcatSeparationEquivalentToExists!1416 lt!2194501 (regTwo!30766 r!7292) s!2326))))

(declare-fun b!5386708 () Bool)

(declare-fun res!2288427 () Bool)

(assert (=> b!5386708 (=> res!2288427 e!3341013)))

(declare-fun isEmpty!33553 (List!61682) Bool)

(assert (=> b!5386708 (= res!2288427 (not (isEmpty!33553 (t!374905 zl!343))))))

(declare-fun b!5386709 () Bool)

(assert (=> b!5386709 (= e!3340997 e!3340998)))

(declare-fun res!2288445 () Bool)

(assert (=> b!5386709 (=> res!2288445 e!3340998)))

(assert (=> b!5386709 (= res!2288445 (not (= (unfocusZipper!869 lt!2194528) lt!2194526)))))

(assert (=> b!5386709 (= lt!2194528 (Cons!61558 lt!2194537 Nil!61558))))

(assert (=> b!5386710 (= e!3341008 e!3341002)))

(declare-fun res!2288438 () Bool)

(assert (=> b!5386710 (=> res!2288438 e!3341002)))

(assert (=> b!5386710 (= res!2288438 (not (= (_1!35629 lt!2194533) lt!2194517)))))

(assert (=> b!5386710 (= lt!2194517 (++!13439 (_1!35629 lt!2194542) (_2!35629 lt!2194542)))))

(declare-fun lt!2194506 () Option!15238)

(assert (=> b!5386710 (= lt!2194542 (get!21199 lt!2194506))))

(assert (=> b!5386710 (= (Exists!2308 lambda!279430) (Exists!2308 lambda!279432))))

(declare-fun lt!2194539 () Unit!154026)

(assert (=> b!5386710 (= lt!2194539 (lemmaExistCutMatchRandMatchRSpecEquivalent!962 (reg!15456 (regOne!30766 r!7292)) lt!2194501 (_1!35629 lt!2194533)))))

(assert (=> b!5386710 (= (Exists!2308 lambda!279430) (Exists!2308 lambda!279431))))

(declare-fun lt!2194529 () Unit!154026)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!392 (Regex!15127 List!61680) Unit!154026)

(assert (=> b!5386710 (= lt!2194529 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!392 (reg!15456 (regOne!30766 r!7292)) (_1!35629 lt!2194533)))))

(assert (=> b!5386710 (= (isDefined!11941 lt!2194506) (Exists!2308 lambda!279430))))

(assert (=> b!5386710 (= lt!2194506 (findConcatSeparation!1652 (reg!15456 (regOne!30766 r!7292)) lt!2194501 Nil!61556 (_1!35629 lt!2194533) (_1!35629 lt!2194533)))))

(declare-fun lt!2194554 () Unit!154026)

(assert (=> b!5386710 (= lt!2194554 (lemmaFindConcatSeparationEquivalentToExists!1416 (reg!15456 (regOne!30766 r!7292)) lt!2194501 (_1!35629 lt!2194533)))))

(assert (=> b!5386710 (matchRSpec!2230 lt!2194501 (_1!35629 lt!2194533))))

(declare-fun lt!2194520 () Unit!154026)

(assert (=> b!5386710 (= lt!2194520 (mainMatchTheorem!2230 lt!2194501 (_1!35629 lt!2194533)))))

(declare-fun b!5386711 () Bool)

(declare-fun res!2288426 () Bool)

(assert (=> b!5386711 (=> res!2288426 e!3341008)))

(declare-fun isEmpty!33554 (List!61680) Bool)

(assert (=> b!5386711 (= res!2288426 (isEmpty!33554 (_1!35629 lt!2194533)))))

(declare-fun b!5386712 () Bool)

(declare-fun res!2288451 () Bool)

(assert (=> b!5386712 (=> res!2288451 e!3341013)))

(assert (=> b!5386712 (= res!2288451 (or ((_ is EmptyExpr!15127) r!7292) ((_ is EmptyLang!15127) r!7292) ((_ is ElementMatch!15127) r!7292) ((_ is Union!15127) r!7292) (not ((_ is Concat!23972) r!7292))))))

(declare-fun b!5386713 () Bool)

(declare-fun e!3341016 () Bool)

(declare-fun tp!1492217 () Bool)

(assert (=> b!5386713 (= e!3341016 (and tp_is_empty!39507 tp!1492217))))

(declare-fun b!5386714 () Bool)

(declare-fun res!2288440 () Bool)

(assert (=> b!5386714 (=> res!2288440 e!3341013)))

(assert (=> b!5386714 (= res!2288440 (not ((_ is Cons!61557) (exprs!5011 (h!68006 zl!343)))))))

(declare-fun b!5386715 () Bool)

(assert (=> b!5386715 (= e!3341012 e!3341007)))

(declare-fun res!2288428 () Bool)

(assert (=> b!5386715 (=> res!2288428 e!3341007)))

(assert (=> b!5386715 (= res!2288428 (not (= r!7292 lt!2194526)))))

(assert (=> b!5386715 (= lt!2194526 (Concat!23972 lt!2194501 (regTwo!30766 r!7292)))))

(declare-fun tp!1492222 () Bool)

(declare-fun setElem!34979 () Context!9022)

(declare-fun setNonEmpty!34979 () Bool)

(assert (=> setNonEmpty!34979 (= setRes!34979 (and tp!1492222 (inv!81064 setElem!34979) e!3341011))))

(declare-fun z!1189 () (InoxSet Context!9022))

(declare-fun setRest!34979 () (InoxSet Context!9022))

(assert (=> setNonEmpty!34979 (= z!1189 ((_ map or) (store ((as const (Array Context!9022 Bool)) false) setElem!34979 true) setRest!34979))))

(declare-fun b!5386716 () Bool)

(declare-fun res!2288424 () Bool)

(declare-fun e!3341019 () Bool)

(assert (=> b!5386716 (=> res!2288424 e!3341019)))

(assert (=> b!5386716 (= res!2288424 e!3341005)))

(declare-fun res!2288439 () Bool)

(assert (=> b!5386716 (=> (not res!2288439) (not e!3341005))))

(assert (=> b!5386716 (= res!2288439 ((_ is Concat!23972) (regOne!30766 r!7292)))))

(assert (=> b!5386717 (= e!3341013 e!3341017)))

(declare-fun res!2288418 () Bool)

(assert (=> b!5386717 (=> res!2288418 e!3341017)))

(declare-fun lt!2194497 () Bool)

(assert (=> b!5386717 (= res!2288418 (or (not (= lt!2194505 lt!2194497)) ((_ is Nil!61556) s!2326)))))

(assert (=> b!5386717 (= (Exists!2308 lambda!279425) (Exists!2308 lambda!279426))))

(declare-fun lt!2194509 () Unit!154026)

(assert (=> b!5386717 (= lt!2194509 (lemmaExistCutMatchRandMatchRSpecEquivalent!962 (regOne!30766 r!7292) (regTwo!30766 r!7292) s!2326))))

(assert (=> b!5386717 (= lt!2194497 (Exists!2308 lambda!279425))))

(assert (=> b!5386717 (= lt!2194497 (isDefined!11941 (findConcatSeparation!1652 (regOne!30766 r!7292) (regTwo!30766 r!7292) Nil!61556 s!2326 s!2326)))))

(declare-fun lt!2194504 () Unit!154026)

(assert (=> b!5386717 (= lt!2194504 (lemmaFindConcatSeparationEquivalentToExists!1416 (regOne!30766 r!7292) (regTwo!30766 r!7292) s!2326))))

(assert (=> b!5386718 (= e!3341017 e!3341019)))

(declare-fun res!2288425 () Bool)

(assert (=> b!5386718 (=> res!2288425 e!3341019)))

(assert (=> b!5386718 (= res!2288425 (or (and ((_ is ElementMatch!15127) (regOne!30766 r!7292)) (= (c!938617 (regOne!30766 r!7292)) (h!68004 s!2326))) ((_ is Union!15127) (regOne!30766 r!7292))))))

(declare-fun lt!2194498 () Unit!154026)

(declare-fun e!3341000 () Unit!154026)

(assert (=> b!5386718 (= lt!2194498 e!3341000)))

(declare-fun c!938616 () Bool)

(assert (=> b!5386718 (= c!938616 (nullable!5296 (h!68005 (exprs!5011 (h!68006 zl!343)))))))

(assert (=> b!5386718 (= (flatMap!854 z!1189 lambda!279427) (derivationStepZipperUp!499 (h!68006 zl!343) (h!68004 s!2326)))))

(declare-fun lt!2194502 () Unit!154026)

(assert (=> b!5386718 (= lt!2194502 (lemmaFlatMapOnSingletonSet!386 z!1189 (h!68006 zl!343) lambda!279427))))

(declare-fun lt!2194518 () (InoxSet Context!9022))

(declare-fun lt!2194523 () Context!9022)

(assert (=> b!5386718 (= lt!2194518 (derivationStepZipperUp!499 lt!2194523 (h!68004 s!2326)))))

(declare-fun lt!2194507 () (InoxSet Context!9022))

(declare-fun derivationStepZipperDown!575 (Regex!15127 Context!9022 C!30524) (InoxSet Context!9022))

(assert (=> b!5386718 (= lt!2194507 (derivationStepZipperDown!575 (h!68005 (exprs!5011 (h!68006 zl!343))) lt!2194523 (h!68004 s!2326)))))

(assert (=> b!5386718 (= lt!2194523 (Context!9023 (t!374904 (exprs!5011 (h!68006 zl!343)))))))

(declare-fun lt!2194549 () (InoxSet Context!9022))

(assert (=> b!5386718 (= lt!2194549 (derivationStepZipperUp!499 (Context!9023 (Cons!61557 (h!68005 (exprs!5011 (h!68006 zl!343))) (t!374904 (exprs!5011 (h!68006 zl!343))))) (h!68004 s!2326)))))

(declare-fun b!5386719 () Bool)

(declare-fun Unit!154028 () Unit!154026)

(assert (=> b!5386719 (= e!3341000 Unit!154028)))

(declare-fun b!5386720 () Bool)

(declare-fun e!3341015 () Bool)

(assert (=> b!5386720 (= e!3341015 (matchZipper!1371 lt!2194518 (t!374903 s!2326)))))

(declare-fun b!5386721 () Bool)

(declare-fun tp!1492220 () Bool)

(declare-fun tp!1492221 () Bool)

(assert (=> b!5386721 (= e!3341003 (and tp!1492220 tp!1492221))))

(declare-fun b!5386722 () Bool)

(declare-fun res!2288449 () Bool)

(assert (=> b!5386722 (=> res!2288449 e!3341008)))

(assert (=> b!5386722 (= res!2288449 (not (matchR!7312 lt!2194501 (_1!35629 lt!2194533))))))

(declare-fun b!5386723 () Bool)

(declare-fun res!2288446 () Bool)

(declare-fun e!3341009 () Bool)

(assert (=> b!5386723 (=> (not res!2288446) (not e!3341009))))

(declare-fun toList!8911 ((InoxSet Context!9022)) List!61682)

(assert (=> b!5386723 (= res!2288446 (= (toList!8911 z!1189) zl!343))))

(declare-fun b!5386724 () Bool)

(assert (=> b!5386724 (= e!3341019 e!3341004)))

(declare-fun res!2288422 () Bool)

(assert (=> b!5386724 (=> res!2288422 e!3341004)))

(assert (=> b!5386724 (= res!2288422 (not (= lt!2194507 lt!2194546)))))

(assert (=> b!5386724 (= lt!2194546 (derivationStepZipperDown!575 (reg!15456 (regOne!30766 r!7292)) lt!2194537 (h!68004 s!2326)))))

(assert (=> b!5386724 (= lt!2194537 (Context!9023 lt!2194524))))

(assert (=> b!5386724 (= lt!2194524 (Cons!61557 lt!2194501 (t!374904 (exprs!5011 (h!68006 zl!343)))))))

(assert (=> b!5386724 (= lt!2194501 (Star!15127 (reg!15456 (regOne!30766 r!7292))))))

(declare-fun res!2288429 () Bool)

(assert (=> start!566166 (=> (not res!2288429) (not e!3341009))))

(assert (=> start!566166 (= res!2288429 (validRegex!6863 r!7292))))

(assert (=> start!566166 e!3341009))

(assert (=> start!566166 e!3341003))

(declare-fun condSetEmpty!34979 () Bool)

(assert (=> start!566166 (= condSetEmpty!34979 (= z!1189 ((as const (Array Context!9022 Bool)) false)))))

(assert (=> start!566166 setRes!34979))

(assert (=> start!566166 e!3341010))

(assert (=> start!566166 e!3341016))

(declare-fun b!5386725 () Bool)

(declare-fun res!2288419 () Bool)

(assert (=> b!5386725 (=> res!2288419 e!3341008)))

(assert (=> b!5386725 (= res!2288419 (not (matchR!7312 (regTwo!30766 r!7292) (_2!35629 lt!2194533))))))

(declare-fun b!5386726 () Bool)

(declare-fun tp!1492225 () Bool)

(declare-fun tp!1492224 () Bool)

(assert (=> b!5386726 (= e!3341003 (and tp!1492225 tp!1492224))))

(declare-fun b!5386727 () Bool)

(assert (=> b!5386727 (= e!3341009 e!3341014)))

(declare-fun res!2288434 () Bool)

(assert (=> b!5386727 (=> (not res!2288434) (not e!3341014))))

(assert (=> b!5386727 (= res!2288434 (= r!7292 lt!2194543))))

(assert (=> b!5386727 (= lt!2194543 (unfocusZipper!869 zl!343))))

(declare-fun b!5386728 () Bool)

(declare-fun res!2288433 () Bool)

(assert (=> b!5386728 (=> res!2288433 e!3341019)))

(assert (=> b!5386728 (= res!2288433 (or ((_ is Concat!23972) (regOne!30766 r!7292)) (not ((_ is Star!15127) (regOne!30766 r!7292)))))))

(declare-fun b!5386729 () Bool)

(declare-fun Unit!154029 () Unit!154026)

(assert (=> b!5386729 (= e!3341000 Unit!154029)))

(declare-fun lt!2194527 () Unit!154026)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!364 ((InoxSet Context!9022) (InoxSet Context!9022) List!61680) Unit!154026)

(assert (=> b!5386729 (= lt!2194527 (lemmaZipperConcatMatchesSameAsBothZippers!364 lt!2194507 lt!2194518 (t!374903 s!2326)))))

(declare-fun res!2288448 () Bool)

(assert (=> b!5386729 (= res!2288448 (matchZipper!1371 lt!2194507 (t!374903 s!2326)))))

(assert (=> b!5386729 (=> res!2288448 e!3341015)))

(assert (=> b!5386729 (= (matchZipper!1371 ((_ map or) lt!2194507 lt!2194518) (t!374903 s!2326)) e!3341015)))

(assert (= (and start!566166 res!2288429) b!5386723))

(assert (= (and b!5386723 res!2288446) b!5386727))

(assert (= (and b!5386727 res!2288434) b!5386704))

(assert (= (and b!5386704 (not res!2288432)) b!5386708))

(assert (= (and b!5386708 (not res!2288427)) b!5386701))

(assert (= (and b!5386701 (not res!2288437)) b!5386714))

(assert (= (and b!5386714 (not res!2288440)) b!5386691))

(assert (= (and b!5386691 (not res!2288442)) b!5386712))

(assert (= (and b!5386712 (not res!2288451)) b!5386717))

(assert (= (and b!5386717 (not res!2288418)) b!5386706))

(assert (= (and b!5386706 (not res!2288423)) b!5386718))

(assert (= (and b!5386718 c!938616) b!5386729))

(assert (= (and b!5386718 (not c!938616)) b!5386719))

(assert (= (and b!5386729 (not res!2288448)) b!5386720))

(assert (= (and b!5386718 (not res!2288425)) b!5386716))

(assert (= (and b!5386716 res!2288439) b!5386698))

(assert (= (and b!5386716 (not res!2288424)) b!5386728))

(assert (= (and b!5386728 (not res!2288433)) b!5386724))

(assert (= (and b!5386724 (not res!2288422)) b!5386692))

(assert (= (and b!5386692 (not res!2288444)) b!5386687))

(assert (= (and b!5386687 (not res!2288436)) b!5386693))

(assert (= (and b!5386693 (not res!2288447)) b!5386715))

(assert (= (and b!5386715 (not res!2288428)) b!5386695))

(assert (= (and b!5386695 (not res!2288420)) b!5386703))

(assert (= (and b!5386703 (not res!2288435)) b!5386709))

(assert (= (and b!5386709 (not res!2288445)) b!5386694))

(assert (= (and b!5386694 res!2288443) b!5386689))

(assert (= (and b!5386694 (not res!2288450)) b!5386707))

(assert (= (and b!5386707 (not res!2288421)) b!5386722))

(assert (= (and b!5386722 (not res!2288449)) b!5386725))

(assert (= (and b!5386725 (not res!2288419)) b!5386711))

(assert (= (and b!5386711 (not res!2288426)) b!5386710))

(assert (= (and b!5386710 (not res!2288438)) b!5386686))

(assert (= (and b!5386686 (not res!2288431)) b!5386702))

(assert (= (and b!5386702 (not res!2288430)) b!5386696))

(assert (= (and b!5386696 (not res!2288441)) b!5386705))

(assert (= (and start!566166 ((_ is ElementMatch!15127) r!7292)) b!5386690))

(assert (= (and start!566166 ((_ is Concat!23972) r!7292)) b!5386721))

(assert (= (and start!566166 ((_ is Star!15127) r!7292)) b!5386699))

(assert (= (and start!566166 ((_ is Union!15127) r!7292)) b!5386726))

(assert (= (and start!566166 condSetEmpty!34979) setIsEmpty!34979))

(assert (= (and start!566166 (not condSetEmpty!34979)) setNonEmpty!34979))

(assert (= setNonEmpty!34979 b!5386697))

(assert (= b!5386700 b!5386688))

(assert (= (and start!566166 ((_ is Cons!61558) zl!343)) b!5386700))

(assert (= (and start!566166 ((_ is Cons!61556) s!2326)) b!5386713))

(declare-fun m!6412468 () Bool)

(assert (=> b!5386729 m!6412468))

(declare-fun m!6412470 () Bool)

(assert (=> b!5386729 m!6412470))

(declare-fun m!6412472 () Bool)

(assert (=> b!5386729 m!6412472))

(declare-fun m!6412474 () Bool)

(assert (=> b!5386696 m!6412474))

(declare-fun m!6412476 () Bool)

(assert (=> b!5386700 m!6412476))

(declare-fun m!6412478 () Bool)

(assert (=> b!5386704 m!6412478))

(declare-fun m!6412480 () Bool)

(assert (=> b!5386704 m!6412480))

(declare-fun m!6412482 () Bool)

(assert (=> b!5386704 m!6412482))

(declare-fun m!6412484 () Bool)

(assert (=> b!5386698 m!6412484))

(declare-fun m!6412486 () Bool)

(assert (=> b!5386711 m!6412486))

(declare-fun m!6412488 () Bool)

(assert (=> b!5386703 m!6412488))

(declare-fun m!6412490 () Bool)

(assert (=> b!5386703 m!6412490))

(declare-fun m!6412492 () Bool)

(assert (=> b!5386703 m!6412492))

(declare-fun m!6412494 () Bool)

(assert (=> b!5386703 m!6412494))

(declare-fun m!6412496 () Bool)

(assert (=> b!5386703 m!6412496))

(declare-fun m!6412498 () Bool)

(assert (=> b!5386703 m!6412498))

(declare-fun m!6412500 () Bool)

(assert (=> b!5386703 m!6412500))

(declare-fun m!6412502 () Bool)

(assert (=> b!5386703 m!6412502))

(declare-fun m!6412504 () Bool)

(assert (=> b!5386703 m!6412504))

(declare-fun m!6412506 () Bool)

(assert (=> b!5386694 m!6412506))

(declare-fun m!6412508 () Bool)

(assert (=> b!5386694 m!6412508))

(declare-fun m!6412510 () Bool)

(assert (=> b!5386694 m!6412510))

(declare-fun m!6412512 () Bool)

(assert (=> b!5386701 m!6412512))

(declare-fun m!6412514 () Bool)

(assert (=> b!5386702 m!6412514))

(declare-fun m!6412516 () Bool)

(assert (=> b!5386724 m!6412516))

(declare-fun m!6412518 () Bool)

(assert (=> b!5386717 m!6412518))

(assert (=> b!5386717 m!6412518))

(declare-fun m!6412520 () Bool)

(assert (=> b!5386717 m!6412520))

(declare-fun m!6412522 () Bool)

(assert (=> b!5386717 m!6412522))

(declare-fun m!6412524 () Bool)

(assert (=> b!5386717 m!6412524))

(declare-fun m!6412526 () Bool)

(assert (=> b!5386717 m!6412526))

(assert (=> b!5386717 m!6412524))

(declare-fun m!6412528 () Bool)

(assert (=> b!5386717 m!6412528))

(declare-fun m!6412530 () Bool)

(assert (=> b!5386692 m!6412530))

(declare-fun m!6412532 () Bool)

(assert (=> b!5386692 m!6412532))

(declare-fun m!6412534 () Bool)

(assert (=> b!5386692 m!6412534))

(declare-fun m!6412536 () Bool)

(assert (=> b!5386692 m!6412536))

(declare-fun m!6412538 () Bool)

(assert (=> b!5386692 m!6412538))

(declare-fun m!6412540 () Bool)

(assert (=> b!5386708 m!6412540))

(declare-fun m!6412542 () Bool)

(assert (=> b!5386710 m!6412542))

(declare-fun m!6412544 () Bool)

(assert (=> b!5386710 m!6412544))

(declare-fun m!6412546 () Bool)

(assert (=> b!5386710 m!6412546))

(declare-fun m!6412548 () Bool)

(assert (=> b!5386710 m!6412548))

(declare-fun m!6412550 () Bool)

(assert (=> b!5386710 m!6412550))

(declare-fun m!6412552 () Bool)

(assert (=> b!5386710 m!6412552))

(declare-fun m!6412554 () Bool)

(assert (=> b!5386710 m!6412554))

(assert (=> b!5386710 m!6412544))

(declare-fun m!6412556 () Bool)

(assert (=> b!5386710 m!6412556))

(assert (=> b!5386710 m!6412544))

(declare-fun m!6412558 () Bool)

(assert (=> b!5386710 m!6412558))

(declare-fun m!6412560 () Bool)

(assert (=> b!5386710 m!6412560))

(declare-fun m!6412562 () Bool)

(assert (=> b!5386710 m!6412562))

(declare-fun m!6412564 () Bool)

(assert (=> b!5386710 m!6412564))

(declare-fun m!6412566 () Bool)

(assert (=> b!5386709 m!6412566))

(declare-fun m!6412568 () Bool)

(assert (=> b!5386686 m!6412568))

(declare-fun m!6412570 () Bool)

(assert (=> b!5386686 m!6412570))

(declare-fun m!6412572 () Bool)

(assert (=> b!5386686 m!6412572))

(declare-fun m!6412574 () Bool)

(assert (=> b!5386686 m!6412574))

(declare-fun m!6412576 () Bool)

(assert (=> b!5386720 m!6412576))

(declare-fun m!6412578 () Bool)

(assert (=> b!5386706 m!6412578))

(declare-fun m!6412580 () Bool)

(assert (=> b!5386695 m!6412580))

(declare-fun m!6412582 () Bool)

(assert (=> start!566166 m!6412582))

(declare-fun m!6412584 () Bool)

(assert (=> b!5386727 m!6412584))

(declare-fun m!6412586 () Bool)

(assert (=> b!5386723 m!6412586))

(declare-fun m!6412588 () Bool)

(assert (=> b!5386725 m!6412588))

(declare-fun m!6412590 () Bool)

(assert (=> b!5386687 m!6412590))

(declare-fun m!6412592 () Bool)

(assert (=> b!5386687 m!6412592))

(declare-fun m!6412594 () Bool)

(assert (=> b!5386722 m!6412594))

(declare-fun m!6412596 () Bool)

(assert (=> b!5386691 m!6412596))

(assert (=> b!5386691 m!6412596))

(declare-fun m!6412598 () Bool)

(assert (=> b!5386691 m!6412598))

(declare-fun m!6412600 () Bool)

(assert (=> b!5386707 m!6412600))

(declare-fun m!6412602 () Bool)

(assert (=> b!5386707 m!6412602))

(declare-fun m!6412604 () Bool)

(assert (=> b!5386707 m!6412604))

(declare-fun m!6412606 () Bool)

(assert (=> b!5386707 m!6412606))

(declare-fun m!6412608 () Bool)

(assert (=> b!5386707 m!6412608))

(declare-fun m!6412610 () Bool)

(assert (=> b!5386707 m!6412610))

(declare-fun m!6412612 () Bool)

(assert (=> b!5386707 m!6412612))

(assert (=> b!5386707 m!6412600))

(declare-fun m!6412614 () Bool)

(assert (=> b!5386707 m!6412614))

(declare-fun m!6412616 () Bool)

(assert (=> setNonEmpty!34979 m!6412616))

(declare-fun m!6412618 () Bool)

(assert (=> b!5386718 m!6412618))

(declare-fun m!6412620 () Bool)

(assert (=> b!5386718 m!6412620))

(declare-fun m!6412622 () Bool)

(assert (=> b!5386718 m!6412622))

(declare-fun m!6412624 () Bool)

(assert (=> b!5386718 m!6412624))

(declare-fun m!6412626 () Bool)

(assert (=> b!5386718 m!6412626))

(declare-fun m!6412628 () Bool)

(assert (=> b!5386718 m!6412628))

(declare-fun m!6412630 () Bool)

(assert (=> b!5386718 m!6412630))

(declare-fun m!6412632 () Bool)

(assert (=> b!5386705 m!6412632))

(declare-fun m!6412634 () Bool)

(assert (=> b!5386705 m!6412634))

(declare-fun m!6412636 () Bool)

(assert (=> b!5386705 m!6412636))

(declare-fun m!6412638 () Bool)

(assert (=> b!5386705 m!6412638))

(declare-fun m!6412640 () Bool)

(assert (=> b!5386705 m!6412640))

(declare-fun m!6412642 () Bool)

(assert (=> b!5386705 m!6412642))

(declare-fun m!6412644 () Bool)

(assert (=> b!5386705 m!6412644))

(declare-fun m!6412646 () Bool)

(assert (=> b!5386705 m!6412646))

(declare-fun m!6412648 () Bool)

(assert (=> b!5386705 m!6412648))

(declare-fun m!6412650 () Bool)

(assert (=> b!5386705 m!6412650))

(declare-fun m!6412652 () Bool)

(assert (=> b!5386705 m!6412652))

(declare-fun m!6412654 () Bool)

(assert (=> b!5386705 m!6412654))

(declare-fun m!6412656 () Bool)

(assert (=> b!5386705 m!6412656))

(declare-fun m!6412658 () Bool)

(assert (=> b!5386705 m!6412658))

(assert (=> b!5386705 m!6412650))

(declare-fun m!6412660 () Bool)

(assert (=> b!5386705 m!6412660))

(declare-fun m!6412662 () Bool)

(assert (=> b!5386705 m!6412662))

(check-sat (not b!5386720) (not b!5386705) (not b!5386724) tp_is_empty!39507 (not b!5386695) (not b!5386688) (not b!5386692) (not b!5386703) (not b!5386711) (not b!5386718) (not setNonEmpty!34979) (not b!5386710) (not b!5386687) (not b!5386721) (not b!5386706) (not b!5386725) (not b!5386727) (not b!5386707) (not b!5386696) (not b!5386722) (not b!5386699) (not b!5386686) (not b!5386694) (not b!5386702) (not b!5386698) (not b!5386691) (not b!5386726) (not b!5386713) (not b!5386701) (not b!5386704) (not b!5386729) (not b!5386700) (not b!5386723) (not start!566166) (not b!5386717) (not b!5386708) (not b!5386709) (not b!5386697))
(check-sat)
(get-model)

(declare-fun b!5386793 () Bool)

(declare-fun e!3341056 () Bool)

(assert (=> b!5386793 (= e!3341056 (nullable!5296 lt!2194501))))

(declare-fun b!5386794 () Bool)

(declare-fun e!3341060 () Bool)

(declare-fun e!3341058 () Bool)

(assert (=> b!5386794 (= e!3341060 e!3341058)))

(declare-fun res!2288483 () Bool)

(assert (=> b!5386794 (=> (not res!2288483) (not e!3341058))))

(declare-fun lt!2194557 () Bool)

(assert (=> b!5386794 (= res!2288483 (not lt!2194557))))

(declare-fun b!5386795 () Bool)

(declare-fun res!2288486 () Bool)

(declare-fun e!3341062 () Bool)

(assert (=> b!5386795 (=> (not res!2288486) (not e!3341062))))

(declare-fun call!385572 () Bool)

(assert (=> b!5386795 (= res!2288486 (not call!385572))))

(declare-fun b!5386796 () Bool)

(declare-fun res!2288485 () Bool)

(assert (=> b!5386796 (=> (not res!2288485) (not e!3341062))))

(declare-fun tail!10650 (List!61680) List!61680)

(assert (=> b!5386796 (= res!2288485 (isEmpty!33554 (tail!10650 (_1!35629 lt!2194533))))))

(declare-fun b!5386797 () Bool)

(declare-fun e!3341059 () Bool)

(assert (=> b!5386797 (= e!3341059 (not lt!2194557))))

(declare-fun b!5386798 () Bool)

(declare-fun e!3341061 () Bool)

(assert (=> b!5386798 (= e!3341058 e!3341061)))

(declare-fun res!2288487 () Bool)

(assert (=> b!5386798 (=> res!2288487 e!3341061)))

(assert (=> b!5386798 (= res!2288487 call!385572)))

(declare-fun b!5386799 () Bool)

(declare-fun res!2288488 () Bool)

(assert (=> b!5386799 (=> res!2288488 e!3341060)))

(assert (=> b!5386799 (= res!2288488 (not ((_ is ElementMatch!15127) lt!2194501)))))

(assert (=> b!5386799 (= e!3341059 e!3341060)))

(declare-fun b!5386800 () Bool)

(declare-fun e!3341057 () Bool)

(assert (=> b!5386800 (= e!3341057 e!3341059)))

(declare-fun c!938631 () Bool)

(assert (=> b!5386800 (= c!938631 ((_ is EmptyLang!15127) lt!2194501))))

(declare-fun b!5386801 () Bool)

(declare-fun res!2288484 () Bool)

(assert (=> b!5386801 (=> res!2288484 e!3341060)))

(assert (=> b!5386801 (= res!2288484 e!3341062)))

(declare-fun res!2288489 () Bool)

(assert (=> b!5386801 (=> (not res!2288489) (not e!3341062))))

(assert (=> b!5386801 (= res!2288489 lt!2194557)))

(declare-fun b!5386802 () Bool)

(declare-fun res!2288490 () Bool)

(assert (=> b!5386802 (=> res!2288490 e!3341061)))

(assert (=> b!5386802 (= res!2288490 (not (isEmpty!33554 (tail!10650 (_1!35629 lt!2194533)))))))

(declare-fun b!5386803 () Bool)

(declare-fun head!11553 (List!61680) C!30524)

(assert (=> b!5386803 (= e!3341062 (= (head!11553 (_1!35629 lt!2194533)) (c!938617 lt!2194501)))))

(declare-fun b!5386804 () Bool)

(declare-fun derivativeStep!4239 (Regex!15127 C!30524) Regex!15127)

(assert (=> b!5386804 (= e!3341056 (matchR!7312 (derivativeStep!4239 lt!2194501 (head!11553 (_1!35629 lt!2194533))) (tail!10650 (_1!35629 lt!2194533))))))

(declare-fun d!1722643 () Bool)

(assert (=> d!1722643 e!3341057))

(declare-fun c!938630 () Bool)

(assert (=> d!1722643 (= c!938630 ((_ is EmptyExpr!15127) lt!2194501))))

(assert (=> d!1722643 (= lt!2194557 e!3341056)))

(declare-fun c!938632 () Bool)

(assert (=> d!1722643 (= c!938632 (isEmpty!33554 (_1!35629 lt!2194533)))))

(assert (=> d!1722643 (validRegex!6863 lt!2194501)))

(assert (=> d!1722643 (= (matchR!7312 lt!2194501 (_1!35629 lt!2194533)) lt!2194557)))

(declare-fun bm!385567 () Bool)

(assert (=> bm!385567 (= call!385572 (isEmpty!33554 (_1!35629 lt!2194533)))))

(declare-fun b!5386805 () Bool)

(assert (=> b!5386805 (= e!3341057 (= lt!2194557 call!385572))))

(declare-fun b!5386806 () Bool)

(assert (=> b!5386806 (= e!3341061 (not (= (head!11553 (_1!35629 lt!2194533)) (c!938617 lt!2194501))))))

(assert (= (and d!1722643 c!938632) b!5386793))

(assert (= (and d!1722643 (not c!938632)) b!5386804))

(assert (= (and d!1722643 c!938630) b!5386805))

(assert (= (and d!1722643 (not c!938630)) b!5386800))

(assert (= (and b!5386800 c!938631) b!5386797))

(assert (= (and b!5386800 (not c!938631)) b!5386799))

(assert (= (and b!5386799 (not res!2288488)) b!5386801))

(assert (= (and b!5386801 res!2288489) b!5386795))

(assert (= (and b!5386795 res!2288486) b!5386796))

(assert (= (and b!5386796 res!2288485) b!5386803))

(assert (= (and b!5386801 (not res!2288484)) b!5386794))

(assert (= (and b!5386794 res!2288483) b!5386798))

(assert (= (and b!5386798 (not res!2288487)) b!5386802))

(assert (= (and b!5386802 (not res!2288490)) b!5386806))

(assert (= (or b!5386805 b!5386795 b!5386798) bm!385567))

(declare-fun m!6412678 () Bool)

(assert (=> b!5386793 m!6412678))

(assert (=> d!1722643 m!6412486))

(declare-fun m!6412680 () Bool)

(assert (=> d!1722643 m!6412680))

(declare-fun m!6412682 () Bool)

(assert (=> b!5386804 m!6412682))

(assert (=> b!5386804 m!6412682))

(declare-fun m!6412684 () Bool)

(assert (=> b!5386804 m!6412684))

(declare-fun m!6412686 () Bool)

(assert (=> b!5386804 m!6412686))

(assert (=> b!5386804 m!6412684))

(assert (=> b!5386804 m!6412686))

(declare-fun m!6412688 () Bool)

(assert (=> b!5386804 m!6412688))

(assert (=> b!5386802 m!6412686))

(assert (=> b!5386802 m!6412686))

(declare-fun m!6412690 () Bool)

(assert (=> b!5386802 m!6412690))

(assert (=> bm!385567 m!6412486))

(assert (=> b!5386803 m!6412682))

(assert (=> b!5386796 m!6412686))

(assert (=> b!5386796 m!6412686))

(assert (=> b!5386796 m!6412690))

(assert (=> b!5386806 m!6412682))

(assert (=> b!5386722 d!1722643))

(declare-fun b!5386807 () Bool)

(declare-fun e!3341063 () Bool)

(assert (=> b!5386807 (= e!3341063 (nullable!5296 (reg!15456 (regOne!30766 r!7292))))))

(declare-fun b!5386808 () Bool)

(declare-fun e!3341067 () Bool)

(declare-fun e!3341065 () Bool)

(assert (=> b!5386808 (= e!3341067 e!3341065)))

(declare-fun res!2288491 () Bool)

(assert (=> b!5386808 (=> (not res!2288491) (not e!3341065))))

(declare-fun lt!2194561 () Bool)

(assert (=> b!5386808 (= res!2288491 (not lt!2194561))))

(declare-fun b!5386809 () Bool)

(declare-fun res!2288494 () Bool)

(declare-fun e!3341069 () Bool)

(assert (=> b!5386809 (=> (not res!2288494) (not e!3341069))))

(declare-fun call!385573 () Bool)

(assert (=> b!5386809 (= res!2288494 (not call!385573))))

(declare-fun b!5386810 () Bool)

(declare-fun res!2288493 () Bool)

(assert (=> b!5386810 (=> (not res!2288493) (not e!3341069))))

(assert (=> b!5386810 (= res!2288493 (isEmpty!33554 (tail!10650 (_1!35629 lt!2194542))))))

(declare-fun b!5386811 () Bool)

(declare-fun e!3341066 () Bool)

(assert (=> b!5386811 (= e!3341066 (not lt!2194561))))

(declare-fun b!5386812 () Bool)

(declare-fun e!3341068 () Bool)

(assert (=> b!5386812 (= e!3341065 e!3341068)))

(declare-fun res!2288495 () Bool)

(assert (=> b!5386812 (=> res!2288495 e!3341068)))

(assert (=> b!5386812 (= res!2288495 call!385573)))

(declare-fun b!5386813 () Bool)

(declare-fun res!2288496 () Bool)

(assert (=> b!5386813 (=> res!2288496 e!3341067)))

(assert (=> b!5386813 (= res!2288496 (not ((_ is ElementMatch!15127) (reg!15456 (regOne!30766 r!7292)))))))

(assert (=> b!5386813 (= e!3341066 e!3341067)))

(declare-fun b!5386814 () Bool)

(declare-fun e!3341064 () Bool)

(assert (=> b!5386814 (= e!3341064 e!3341066)))

(declare-fun c!938634 () Bool)

(assert (=> b!5386814 (= c!938634 ((_ is EmptyLang!15127) (reg!15456 (regOne!30766 r!7292))))))

(declare-fun b!5386815 () Bool)

(declare-fun res!2288492 () Bool)

(assert (=> b!5386815 (=> res!2288492 e!3341067)))

(assert (=> b!5386815 (= res!2288492 e!3341069)))

(declare-fun res!2288497 () Bool)

(assert (=> b!5386815 (=> (not res!2288497) (not e!3341069))))

(assert (=> b!5386815 (= res!2288497 lt!2194561)))

(declare-fun b!5386816 () Bool)

(declare-fun res!2288498 () Bool)

(assert (=> b!5386816 (=> res!2288498 e!3341068)))

(assert (=> b!5386816 (= res!2288498 (not (isEmpty!33554 (tail!10650 (_1!35629 lt!2194542)))))))

(declare-fun b!5386817 () Bool)

(assert (=> b!5386817 (= e!3341069 (= (head!11553 (_1!35629 lt!2194542)) (c!938617 (reg!15456 (regOne!30766 r!7292)))))))

(declare-fun b!5386818 () Bool)

(assert (=> b!5386818 (= e!3341063 (matchR!7312 (derivativeStep!4239 (reg!15456 (regOne!30766 r!7292)) (head!11553 (_1!35629 lt!2194542))) (tail!10650 (_1!35629 lt!2194542))))))

(declare-fun d!1722653 () Bool)

(assert (=> d!1722653 e!3341064))

(declare-fun c!938633 () Bool)

(assert (=> d!1722653 (= c!938633 ((_ is EmptyExpr!15127) (reg!15456 (regOne!30766 r!7292))))))

(assert (=> d!1722653 (= lt!2194561 e!3341063)))

(declare-fun c!938635 () Bool)

(assert (=> d!1722653 (= c!938635 (isEmpty!33554 (_1!35629 lt!2194542)))))

(assert (=> d!1722653 (validRegex!6863 (reg!15456 (regOne!30766 r!7292)))))

(assert (=> d!1722653 (= (matchR!7312 (reg!15456 (regOne!30766 r!7292)) (_1!35629 lt!2194542)) lt!2194561)))

(declare-fun bm!385568 () Bool)

(assert (=> bm!385568 (= call!385573 (isEmpty!33554 (_1!35629 lt!2194542)))))

(declare-fun b!5386819 () Bool)

(assert (=> b!5386819 (= e!3341064 (= lt!2194561 call!385573))))

(declare-fun b!5386820 () Bool)

(assert (=> b!5386820 (= e!3341068 (not (= (head!11553 (_1!35629 lt!2194542)) (c!938617 (reg!15456 (regOne!30766 r!7292))))))))

(assert (= (and d!1722653 c!938635) b!5386807))

(assert (= (and d!1722653 (not c!938635)) b!5386818))

(assert (= (and d!1722653 c!938633) b!5386819))

(assert (= (and d!1722653 (not c!938633)) b!5386814))

(assert (= (and b!5386814 c!938634) b!5386811))

(assert (= (and b!5386814 (not c!938634)) b!5386813))

(assert (= (and b!5386813 (not res!2288496)) b!5386815))

(assert (= (and b!5386815 res!2288497) b!5386809))

(assert (= (and b!5386809 res!2288494) b!5386810))

(assert (= (and b!5386810 res!2288493) b!5386817))

(assert (= (and b!5386815 (not res!2288492)) b!5386808))

(assert (= (and b!5386808 res!2288491) b!5386812))

(assert (= (and b!5386812 (not res!2288495)) b!5386816))

(assert (= (and b!5386816 (not res!2288498)) b!5386820))

(assert (= (or b!5386819 b!5386809 b!5386812) bm!385568))

(declare-fun m!6412692 () Bool)

(assert (=> b!5386807 m!6412692))

(declare-fun m!6412694 () Bool)

(assert (=> d!1722653 m!6412694))

(declare-fun m!6412696 () Bool)

(assert (=> d!1722653 m!6412696))

(declare-fun m!6412698 () Bool)

(assert (=> b!5386818 m!6412698))

(assert (=> b!5386818 m!6412698))

(declare-fun m!6412700 () Bool)

(assert (=> b!5386818 m!6412700))

(declare-fun m!6412702 () Bool)

(assert (=> b!5386818 m!6412702))

(assert (=> b!5386818 m!6412700))

(assert (=> b!5386818 m!6412702))

(declare-fun m!6412704 () Bool)

(assert (=> b!5386818 m!6412704))

(assert (=> b!5386816 m!6412702))

(assert (=> b!5386816 m!6412702))

(declare-fun m!6412706 () Bool)

(assert (=> b!5386816 m!6412706))

(assert (=> bm!385568 m!6412694))

(assert (=> b!5386817 m!6412698))

(assert (=> b!5386810 m!6412702))

(assert (=> b!5386810 m!6412702))

(assert (=> b!5386810 m!6412706))

(assert (=> b!5386820 m!6412698))

(assert (=> b!5386702 d!1722653))

(declare-fun d!1722655 () Bool)

(declare-fun dynLambda!24278 (Int Context!9022) (InoxSet Context!9022))

(assert (=> d!1722655 (= (flatMap!854 lt!2194538 lambda!279427) (dynLambda!24278 lambda!279427 lt!2194550))))

(declare-fun lt!2194570 () Unit!154026)

(declare-fun choose!40498 ((InoxSet Context!9022) Context!9022 Int) Unit!154026)

(assert (=> d!1722655 (= lt!2194570 (choose!40498 lt!2194538 lt!2194550 lambda!279427))))

(assert (=> d!1722655 (= lt!2194538 (store ((as const (Array Context!9022 Bool)) false) lt!2194550 true))))

(assert (=> d!1722655 (= (lemmaFlatMapOnSingletonSet!386 lt!2194538 lt!2194550 lambda!279427) lt!2194570)))

(declare-fun b_lambda!206157 () Bool)

(assert (=> (not b_lambda!206157) (not d!1722655)))

(declare-fun bs!1246547 () Bool)

(assert (= bs!1246547 d!1722655))

(assert (=> bs!1246547 m!6412496))

(declare-fun m!6412720 () Bool)

(assert (=> bs!1246547 m!6412720))

(declare-fun m!6412722 () Bool)

(assert (=> bs!1246547 m!6412722))

(assert (=> bs!1246547 m!6412490))

(assert (=> b!5386703 d!1722655))

(declare-fun d!1722659 () Bool)

(assert (=> d!1722659 (= (flatMap!854 lt!2194530 lambda!279427) (dynLambda!24278 lambda!279427 lt!2194537))))

(declare-fun lt!2194571 () Unit!154026)

(assert (=> d!1722659 (= lt!2194571 (choose!40498 lt!2194530 lt!2194537 lambda!279427))))

(assert (=> d!1722659 (= lt!2194530 (store ((as const (Array Context!9022 Bool)) false) lt!2194537 true))))

(assert (=> d!1722659 (= (lemmaFlatMapOnSingletonSet!386 lt!2194530 lt!2194537 lambda!279427) lt!2194571)))

(declare-fun b_lambda!206159 () Bool)

(assert (=> (not b_lambda!206159) (not d!1722659)))

(declare-fun bs!1246548 () Bool)

(assert (= bs!1246548 d!1722659))

(assert (=> bs!1246548 m!6412498))

(declare-fun m!6412724 () Bool)

(assert (=> bs!1246548 m!6412724))

(declare-fun m!6412726 () Bool)

(assert (=> bs!1246548 m!6412726))

(assert (=> bs!1246548 m!6412488))

(assert (=> b!5386703 d!1722659))

(declare-fun b!5386859 () Bool)

(declare-fun e!3341092 () Bool)

(assert (=> b!5386859 (= e!3341092 (nullable!5296 (h!68005 (exprs!5011 lt!2194550))))))

(declare-fun b!5386860 () Bool)

(declare-fun e!3341091 () (InoxSet Context!9022))

(declare-fun call!385578 () (InoxSet Context!9022))

(assert (=> b!5386860 (= e!3341091 call!385578)))

(declare-fun d!1722661 () Bool)

(declare-fun c!938646 () Bool)

(assert (=> d!1722661 (= c!938646 e!3341092)))

(declare-fun res!2288517 () Bool)

(assert (=> d!1722661 (=> (not res!2288517) (not e!3341092))))

(assert (=> d!1722661 (= res!2288517 ((_ is Cons!61557) (exprs!5011 lt!2194550)))))

(declare-fun e!3341090 () (InoxSet Context!9022))

(assert (=> d!1722661 (= (derivationStepZipperUp!499 lt!2194550 (h!68004 s!2326)) e!3341090)))

(declare-fun bm!385571 () Bool)

(assert (=> bm!385571 (= call!385578 (derivationStepZipperDown!575 (h!68005 (exprs!5011 lt!2194550)) (Context!9023 (t!374904 (exprs!5011 lt!2194550))) (h!68004 s!2326)))))

(declare-fun b!5386861 () Bool)

(assert (=> b!5386861 (= e!3341090 ((_ map or) call!385578 (derivationStepZipperUp!499 (Context!9023 (t!374904 (exprs!5011 lt!2194550))) (h!68004 s!2326))))))

(declare-fun b!5386862 () Bool)

(assert (=> b!5386862 (= e!3341090 e!3341091)))

(declare-fun c!938647 () Bool)

(assert (=> b!5386862 (= c!938647 ((_ is Cons!61557) (exprs!5011 lt!2194550)))))

(declare-fun b!5386863 () Bool)

(assert (=> b!5386863 (= e!3341091 ((as const (Array Context!9022 Bool)) false))))

(assert (= (and d!1722661 res!2288517) b!5386859))

(assert (= (and d!1722661 c!938646) b!5386861))

(assert (= (and d!1722661 (not c!938646)) b!5386862))

(assert (= (and b!5386862 c!938647) b!5386860))

(assert (= (and b!5386862 (not c!938647)) b!5386863))

(assert (= (or b!5386861 b!5386860) bm!385571))

(declare-fun m!6412732 () Bool)

(assert (=> b!5386859 m!6412732))

(declare-fun m!6412734 () Bool)

(assert (=> bm!385571 m!6412734))

(declare-fun m!6412736 () Bool)

(assert (=> b!5386861 m!6412736))

(assert (=> b!5386703 d!1722661))

(declare-fun d!1722665 () Bool)

(declare-fun lt!2194580 () Regex!15127)

(assert (=> d!1722665 (validRegex!6863 lt!2194580)))

(assert (=> d!1722665 (= lt!2194580 (generalisedUnion!1056 (unfocusZipperList!569 lt!2194547)))))

(assert (=> d!1722665 (= (unfocusZipper!869 lt!2194547) lt!2194580)))

(declare-fun bs!1246550 () Bool)

(assert (= bs!1246550 d!1722665))

(declare-fun m!6412750 () Bool)

(assert (=> bs!1246550 m!6412750))

(declare-fun m!6412752 () Bool)

(assert (=> bs!1246550 m!6412752))

(assert (=> bs!1246550 m!6412752))

(declare-fun m!6412756 () Bool)

(assert (=> bs!1246550 m!6412756))

(assert (=> b!5386703 d!1722665))

(declare-fun d!1722669 () Bool)

(declare-fun choose!40499 ((InoxSet Context!9022) Int) (InoxSet Context!9022))

(assert (=> d!1722669 (= (flatMap!854 lt!2194530 lambda!279427) (choose!40499 lt!2194530 lambda!279427))))

(declare-fun bs!1246551 () Bool)

(assert (= bs!1246551 d!1722669))

(declare-fun m!6412758 () Bool)

(assert (=> bs!1246551 m!6412758))

(assert (=> b!5386703 d!1722669))

(declare-fun d!1722671 () Bool)

(assert (=> d!1722671 (= (flatMap!854 lt!2194538 lambda!279427) (choose!40499 lt!2194538 lambda!279427))))

(declare-fun bs!1246552 () Bool)

(assert (= bs!1246552 d!1722671))

(declare-fun m!6412760 () Bool)

(assert (=> bs!1246552 m!6412760))

(assert (=> b!5386703 d!1722671))

(declare-fun b!5386878 () Bool)

(declare-fun e!3341102 () Bool)

(assert (=> b!5386878 (= e!3341102 (nullable!5296 (h!68005 (exprs!5011 lt!2194537))))))

(declare-fun b!5386879 () Bool)

(declare-fun e!3341101 () (InoxSet Context!9022))

(declare-fun call!385580 () (InoxSet Context!9022))

(assert (=> b!5386879 (= e!3341101 call!385580)))

(declare-fun d!1722673 () Bool)

(declare-fun c!938651 () Bool)

(assert (=> d!1722673 (= c!938651 e!3341102)))

(declare-fun res!2288526 () Bool)

(assert (=> d!1722673 (=> (not res!2288526) (not e!3341102))))

(assert (=> d!1722673 (= res!2288526 ((_ is Cons!61557) (exprs!5011 lt!2194537)))))

(declare-fun e!3341100 () (InoxSet Context!9022))

(assert (=> d!1722673 (= (derivationStepZipperUp!499 lt!2194537 (h!68004 s!2326)) e!3341100)))

(declare-fun bm!385575 () Bool)

(assert (=> bm!385575 (= call!385580 (derivationStepZipperDown!575 (h!68005 (exprs!5011 lt!2194537)) (Context!9023 (t!374904 (exprs!5011 lt!2194537))) (h!68004 s!2326)))))

(declare-fun b!5386880 () Bool)

(assert (=> b!5386880 (= e!3341100 ((_ map or) call!385580 (derivationStepZipperUp!499 (Context!9023 (t!374904 (exprs!5011 lt!2194537))) (h!68004 s!2326))))))

(declare-fun b!5386881 () Bool)

(assert (=> b!5386881 (= e!3341100 e!3341101)))

(declare-fun c!938652 () Bool)

(assert (=> b!5386881 (= c!938652 ((_ is Cons!61557) (exprs!5011 lt!2194537)))))

(declare-fun b!5386882 () Bool)

(assert (=> b!5386882 (= e!3341101 ((as const (Array Context!9022 Bool)) false))))

(assert (= (and d!1722673 res!2288526) b!5386878))

(assert (= (and d!1722673 c!938651) b!5386880))

(assert (= (and d!1722673 (not c!938651)) b!5386881))

(assert (= (and b!5386881 c!938652) b!5386879))

(assert (= (and b!5386881 (not c!938652)) b!5386882))

(assert (= (or b!5386880 b!5386879) bm!385575))

(declare-fun m!6412762 () Bool)

(assert (=> b!5386878 m!6412762))

(declare-fun m!6412764 () Bool)

(assert (=> bm!385575 m!6412764))

(declare-fun m!6412766 () Bool)

(assert (=> b!5386880 m!6412766))

(assert (=> b!5386703 d!1722673))

(declare-fun d!1722675 () Bool)

(declare-fun e!3341109 () Bool)

(assert (=> d!1722675 e!3341109))

(declare-fun res!2288529 () Bool)

(assert (=> d!1722675 (=> (not res!2288529) (not e!3341109))))

(declare-fun lt!2194584 () List!61682)

(declare-fun noDuplicate!1371 (List!61682) Bool)

(assert (=> d!1722675 (= res!2288529 (noDuplicate!1371 lt!2194584))))

(declare-fun choose!40500 ((InoxSet Context!9022)) List!61682)

(assert (=> d!1722675 (= lt!2194584 (choose!40500 z!1189))))

(assert (=> d!1722675 (= (toList!8911 z!1189) lt!2194584)))

(declare-fun b!5386893 () Bool)

(declare-fun content!11012 (List!61682) (InoxSet Context!9022))

(assert (=> b!5386893 (= e!3341109 (= (content!11012 lt!2194584) z!1189))))

(assert (= (and d!1722675 res!2288529) b!5386893))

(declare-fun m!6412790 () Bool)

(assert (=> d!1722675 m!6412790))

(declare-fun m!6412792 () Bool)

(assert (=> d!1722675 m!6412792))

(declare-fun m!6412794 () Bool)

(assert (=> b!5386893 m!6412794))

(assert (=> b!5386723 d!1722675))

(declare-fun c!938688 () Bool)

(declare-fun call!385604 () (InoxSet Context!9022))

(declare-fun call!385603 () List!61681)

(declare-fun bm!385596 () Bool)

(assert (=> bm!385596 (= call!385604 (derivationStepZipperDown!575 (ite c!938688 (regTwo!30767 (reg!15456 (regOne!30766 r!7292))) (regOne!30766 (reg!15456 (regOne!30766 r!7292)))) (ite c!938688 lt!2194537 (Context!9023 call!385603)) (h!68004 s!2326)))))

(declare-fun d!1722683 () Bool)

(declare-fun c!938687 () Bool)

(assert (=> d!1722683 (= c!938687 (and ((_ is ElementMatch!15127) (reg!15456 (regOne!30766 r!7292))) (= (c!938617 (reg!15456 (regOne!30766 r!7292))) (h!68004 s!2326))))))

(declare-fun e!3341165 () (InoxSet Context!9022))

(assert (=> d!1722683 (= (derivationStepZipperDown!575 (reg!15456 (regOne!30766 r!7292)) lt!2194537 (h!68004 s!2326)) e!3341165)))

(declare-fun bm!385597 () Bool)

(declare-fun call!385605 () (InoxSet Context!9022))

(declare-fun call!385602 () (InoxSet Context!9022))

(assert (=> bm!385597 (= call!385605 call!385602)))

(declare-fun b!5386988 () Bool)

(declare-fun e!3341168 () (InoxSet Context!9022))

(declare-fun call!385606 () (InoxSet Context!9022))

(assert (=> b!5386988 (= e!3341168 ((_ map or) call!385606 call!385604))))

(declare-fun b!5386989 () Bool)

(declare-fun e!3341166 () Bool)

(assert (=> b!5386989 (= e!3341166 (nullable!5296 (regOne!30766 (reg!15456 (regOne!30766 r!7292)))))))

(declare-fun b!5386990 () Bool)

(declare-fun e!3341169 () (InoxSet Context!9022))

(assert (=> b!5386990 (= e!3341169 call!385605)))

(declare-fun bm!385598 () Bool)

(declare-fun c!938690 () Bool)

(declare-fun c!938689 () Bool)

(declare-fun call!385601 () List!61681)

(assert (=> bm!385598 (= call!385606 (derivationStepZipperDown!575 (ite c!938688 (regOne!30767 (reg!15456 (regOne!30766 r!7292))) (ite c!938689 (regTwo!30766 (reg!15456 (regOne!30766 r!7292))) (ite c!938690 (regOne!30766 (reg!15456 (regOne!30766 r!7292))) (reg!15456 (reg!15456 (regOne!30766 r!7292)))))) (ite (or c!938688 c!938689) lt!2194537 (Context!9023 call!385601)) (h!68004 s!2326)))))

(declare-fun b!5386991 () Bool)

(assert (=> b!5386991 (= c!938689 e!3341166)))

(declare-fun res!2288566 () Bool)

(assert (=> b!5386991 (=> (not res!2288566) (not e!3341166))))

(assert (=> b!5386991 (= res!2288566 ((_ is Concat!23972) (reg!15456 (regOne!30766 r!7292))))))

(declare-fun e!3341167 () (InoxSet Context!9022))

(assert (=> b!5386991 (= e!3341168 e!3341167)))

(declare-fun b!5386992 () Bool)

(assert (=> b!5386992 (= e!3341165 (store ((as const (Array Context!9022 Bool)) false) lt!2194537 true))))

(declare-fun b!5386993 () Bool)

(declare-fun c!938686 () Bool)

(assert (=> b!5386993 (= c!938686 ((_ is Star!15127) (reg!15456 (regOne!30766 r!7292))))))

(declare-fun e!3341164 () (InoxSet Context!9022))

(assert (=> b!5386993 (= e!3341164 e!3341169)))

(declare-fun b!5386994 () Bool)

(assert (=> b!5386994 (= e!3341167 e!3341164)))

(assert (=> b!5386994 (= c!938690 ((_ is Concat!23972) (reg!15456 (regOne!30766 r!7292))))))

(declare-fun bm!385599 () Bool)

(assert (=> bm!385599 (= call!385601 call!385603)))

(declare-fun b!5386995 () Bool)

(assert (=> b!5386995 (= e!3341169 ((as const (Array Context!9022 Bool)) false))))

(declare-fun bm!385600 () Bool)

(declare-fun $colon$colon!1467 (List!61681 Regex!15127) List!61681)

(assert (=> bm!385600 (= call!385603 ($colon$colon!1467 (exprs!5011 lt!2194537) (ite (or c!938689 c!938690) (regTwo!30766 (reg!15456 (regOne!30766 r!7292))) (reg!15456 (regOne!30766 r!7292)))))))

(declare-fun b!5386996 () Bool)

(assert (=> b!5386996 (= e!3341164 call!385605)))

(declare-fun b!5386997 () Bool)

(assert (=> b!5386997 (= e!3341167 ((_ map or) call!385604 call!385602))))

(declare-fun b!5386998 () Bool)

(assert (=> b!5386998 (= e!3341165 e!3341168)))

(assert (=> b!5386998 (= c!938688 ((_ is Union!15127) (reg!15456 (regOne!30766 r!7292))))))

(declare-fun bm!385601 () Bool)

(assert (=> bm!385601 (= call!385602 call!385606)))

(assert (= (and d!1722683 c!938687) b!5386992))

(assert (= (and d!1722683 (not c!938687)) b!5386998))

(assert (= (and b!5386998 c!938688) b!5386988))

(assert (= (and b!5386998 (not c!938688)) b!5386991))

(assert (= (and b!5386991 res!2288566) b!5386989))

(assert (= (and b!5386991 c!938689) b!5386997))

(assert (= (and b!5386991 (not c!938689)) b!5386994))

(assert (= (and b!5386994 c!938690) b!5386996))

(assert (= (and b!5386994 (not c!938690)) b!5386993))

(assert (= (and b!5386993 c!938686) b!5386990))

(assert (= (and b!5386993 (not c!938686)) b!5386995))

(assert (= (or b!5386996 b!5386990) bm!385599))

(assert (= (or b!5386996 b!5386990) bm!385597))

(assert (= (or b!5386997 bm!385599) bm!385600))

(assert (= (or b!5386997 bm!385597) bm!385601))

(assert (= (or b!5386988 b!5386997) bm!385596))

(assert (= (or b!5386988 bm!385601) bm!385598))

(declare-fun m!6412894 () Bool)

(assert (=> b!5386989 m!6412894))

(assert (=> b!5386992 m!6412488))

(declare-fun m!6412896 () Bool)

(assert (=> bm!385598 m!6412896))

(declare-fun m!6412898 () Bool)

(assert (=> bm!385600 m!6412898))

(declare-fun m!6412900 () Bool)

(assert (=> bm!385596 m!6412900))

(assert (=> b!5386724 d!1722683))

(declare-fun bs!1246569 () Bool)

(declare-fun b!5387082 () Bool)

(assert (= bs!1246569 (and b!5387082 b!5386710)))

(declare-fun lambda!279452 () Int)

(assert (=> bs!1246569 (not (= lambda!279452 lambda!279432))))

(declare-fun bs!1246570 () Bool)

(assert (= bs!1246570 (and b!5387082 b!5386717)))

(assert (=> bs!1246570 (not (= lambda!279452 lambda!279426))))

(declare-fun bs!1246572 () Bool)

(assert (= bs!1246572 (and b!5387082 b!5386707)))

(assert (=> bs!1246572 (not (= lambda!279452 lambda!279428))))

(assert (=> bs!1246572 (not (= lambda!279452 lambda!279429))))

(assert (=> bs!1246570 (not (= lambda!279452 lambda!279425))))

(assert (=> bs!1246569 (= (and (= s!2326 (_1!35629 lt!2194533)) (= (reg!15456 r!7292) (reg!15456 (regOne!30766 r!7292))) (= r!7292 lt!2194501)) (= lambda!279452 lambda!279431))))

(assert (=> bs!1246569 (not (= lambda!279452 lambda!279430))))

(assert (=> b!5387082 true))

(assert (=> b!5387082 true))

(declare-fun bs!1246574 () Bool)

(declare-fun b!5387087 () Bool)

(assert (= bs!1246574 (and b!5387087 b!5386710)))

(declare-fun lambda!279454 () Int)

(assert (=> bs!1246574 (= (and (= s!2326 (_1!35629 lt!2194533)) (= (regOne!30766 r!7292) (reg!15456 (regOne!30766 r!7292))) (= (regTwo!30766 r!7292) lt!2194501)) (= lambda!279454 lambda!279432))))

(declare-fun bs!1246575 () Bool)

(assert (= bs!1246575 (and b!5387087 b!5386717)))

(assert (=> bs!1246575 (= lambda!279454 lambda!279426)))

(declare-fun bs!1246576 () Bool)

(assert (= bs!1246576 (and b!5387087 b!5386707)))

(assert (=> bs!1246576 (not (= lambda!279454 lambda!279428))))

(declare-fun bs!1246577 () Bool)

(assert (= bs!1246577 (and b!5387087 b!5387082)))

(assert (=> bs!1246577 (not (= lambda!279454 lambda!279452))))

(assert (=> bs!1246576 (= (= (regOne!30766 r!7292) lt!2194501) (= lambda!279454 lambda!279429))))

(assert (=> bs!1246575 (not (= lambda!279454 lambda!279425))))

(assert (=> bs!1246574 (not (= lambda!279454 lambda!279431))))

(assert (=> bs!1246574 (not (= lambda!279454 lambda!279430))))

(assert (=> b!5387087 true))

(assert (=> b!5387087 true))

(declare-fun b!5387078 () Bool)

(declare-fun e!3341218 () Bool)

(declare-fun e!3341215 () Bool)

(assert (=> b!5387078 (= e!3341218 e!3341215)))

(declare-fun c!938717 () Bool)

(assert (=> b!5387078 (= c!938717 ((_ is Star!15127) r!7292))))

(declare-fun b!5387079 () Bool)

(declare-fun e!3341216 () Bool)

(assert (=> b!5387079 (= e!3341218 e!3341216)))

(declare-fun res!2288599 () Bool)

(assert (=> b!5387079 (= res!2288599 (matchRSpec!2230 (regOne!30767 r!7292) s!2326))))

(assert (=> b!5387079 (=> res!2288599 e!3341216)))

(declare-fun b!5387080 () Bool)

(declare-fun c!938718 () Bool)

(assert (=> b!5387080 (= c!938718 ((_ is ElementMatch!15127) r!7292))))

(declare-fun e!3341221 () Bool)

(declare-fun e!3341219 () Bool)

(assert (=> b!5387080 (= e!3341221 e!3341219)))

(declare-fun b!5387081 () Bool)

(declare-fun e!3341220 () Bool)

(declare-fun call!385613 () Bool)

(assert (=> b!5387081 (= e!3341220 call!385613)))

(declare-fun e!3341217 () Bool)

(declare-fun call!385612 () Bool)

(assert (=> b!5387082 (= e!3341217 call!385612)))

(declare-fun b!5387083 () Bool)

(declare-fun res!2288600 () Bool)

(assert (=> b!5387083 (=> res!2288600 e!3341217)))

(assert (=> b!5387083 (= res!2288600 call!385613)))

(assert (=> b!5387083 (= e!3341215 e!3341217)))

(declare-fun b!5387084 () Bool)

(assert (=> b!5387084 (= e!3341216 (matchRSpec!2230 (regTwo!30767 r!7292) s!2326))))

(declare-fun bm!385608 () Bool)

(assert (=> bm!385608 (= call!385612 (Exists!2308 (ite c!938717 lambda!279452 lambda!279454)))))

(declare-fun b!5387085 () Bool)

(assert (=> b!5387085 (= e!3341219 (= s!2326 (Cons!61556 (c!938617 r!7292) Nil!61556)))))

(declare-fun b!5387086 () Bool)

(declare-fun c!938716 () Bool)

(assert (=> b!5387086 (= c!938716 ((_ is Union!15127) r!7292))))

(assert (=> b!5387086 (= e!3341219 e!3341218)))

(assert (=> b!5387087 (= e!3341215 call!385612)))

(declare-fun b!5387088 () Bool)

(assert (=> b!5387088 (= e!3341220 e!3341221)))

(declare-fun res!2288598 () Bool)

(assert (=> b!5387088 (= res!2288598 (not ((_ is EmptyLang!15127) r!7292)))))

(assert (=> b!5387088 (=> (not res!2288598) (not e!3341221))))

(declare-fun bm!385607 () Bool)

(assert (=> bm!385607 (= call!385613 (isEmpty!33554 s!2326))))

(declare-fun d!1722709 () Bool)

(declare-fun c!938715 () Bool)

(assert (=> d!1722709 (= c!938715 ((_ is EmptyExpr!15127) r!7292))))

(assert (=> d!1722709 (= (matchRSpec!2230 r!7292 s!2326) e!3341220)))

(assert (= (and d!1722709 c!938715) b!5387081))

(assert (= (and d!1722709 (not c!938715)) b!5387088))

(assert (= (and b!5387088 res!2288598) b!5387080))

(assert (= (and b!5387080 c!938718) b!5387085))

(assert (= (and b!5387080 (not c!938718)) b!5387086))

(assert (= (and b!5387086 c!938716) b!5387079))

(assert (= (and b!5387086 (not c!938716)) b!5387078))

(assert (= (and b!5387079 (not res!2288599)) b!5387084))

(assert (= (and b!5387078 c!938717) b!5387083))

(assert (= (and b!5387078 (not c!938717)) b!5387087))

(assert (= (and b!5387083 (not res!2288600)) b!5387082))

(assert (= (or b!5387082 b!5387087) bm!385608))

(assert (= (or b!5387081 b!5387083) bm!385607))

(declare-fun m!6412970 () Bool)

(assert (=> b!5387079 m!6412970))

(declare-fun m!6412972 () Bool)

(assert (=> b!5387084 m!6412972))

(declare-fun m!6412974 () Bool)

(assert (=> bm!385608 m!6412974))

(declare-fun m!6412976 () Bool)

(assert (=> bm!385607 m!6412976))

(assert (=> b!5386704 d!1722709))

(declare-fun b!5387089 () Bool)

(declare-fun e!3341222 () Bool)

(assert (=> b!5387089 (= e!3341222 (nullable!5296 r!7292))))

(declare-fun b!5387090 () Bool)

(declare-fun e!3341226 () Bool)

(declare-fun e!3341224 () Bool)

(assert (=> b!5387090 (= e!3341226 e!3341224)))

(declare-fun res!2288601 () Bool)

(assert (=> b!5387090 (=> (not res!2288601) (not e!3341224))))

(declare-fun lt!2194611 () Bool)

(assert (=> b!5387090 (= res!2288601 (not lt!2194611))))

(declare-fun b!5387091 () Bool)

(declare-fun res!2288604 () Bool)

(declare-fun e!3341228 () Bool)

(assert (=> b!5387091 (=> (not res!2288604) (not e!3341228))))

(declare-fun call!385614 () Bool)

(assert (=> b!5387091 (= res!2288604 (not call!385614))))

(declare-fun b!5387092 () Bool)

(declare-fun res!2288603 () Bool)

(assert (=> b!5387092 (=> (not res!2288603) (not e!3341228))))

(assert (=> b!5387092 (= res!2288603 (isEmpty!33554 (tail!10650 s!2326)))))

(declare-fun b!5387093 () Bool)

(declare-fun e!3341225 () Bool)

(assert (=> b!5387093 (= e!3341225 (not lt!2194611))))

(declare-fun b!5387094 () Bool)

(declare-fun e!3341227 () Bool)

(assert (=> b!5387094 (= e!3341224 e!3341227)))

(declare-fun res!2288605 () Bool)

(assert (=> b!5387094 (=> res!2288605 e!3341227)))

(assert (=> b!5387094 (= res!2288605 call!385614)))

(declare-fun b!5387095 () Bool)

(declare-fun res!2288606 () Bool)

(assert (=> b!5387095 (=> res!2288606 e!3341226)))

(assert (=> b!5387095 (= res!2288606 (not ((_ is ElementMatch!15127) r!7292)))))

(assert (=> b!5387095 (= e!3341225 e!3341226)))

(declare-fun b!5387096 () Bool)

(declare-fun e!3341223 () Bool)

(assert (=> b!5387096 (= e!3341223 e!3341225)))

(declare-fun c!938720 () Bool)

(assert (=> b!5387096 (= c!938720 ((_ is EmptyLang!15127) r!7292))))

(declare-fun b!5387097 () Bool)

(declare-fun res!2288602 () Bool)

(assert (=> b!5387097 (=> res!2288602 e!3341226)))

(assert (=> b!5387097 (= res!2288602 e!3341228)))

(declare-fun res!2288607 () Bool)

(assert (=> b!5387097 (=> (not res!2288607) (not e!3341228))))

(assert (=> b!5387097 (= res!2288607 lt!2194611)))

(declare-fun b!5387098 () Bool)

(declare-fun res!2288608 () Bool)

(assert (=> b!5387098 (=> res!2288608 e!3341227)))

(assert (=> b!5387098 (= res!2288608 (not (isEmpty!33554 (tail!10650 s!2326))))))

(declare-fun b!5387099 () Bool)

(assert (=> b!5387099 (= e!3341228 (= (head!11553 s!2326) (c!938617 r!7292)))))

(declare-fun b!5387100 () Bool)

(assert (=> b!5387100 (= e!3341222 (matchR!7312 (derivativeStep!4239 r!7292 (head!11553 s!2326)) (tail!10650 s!2326)))))

(declare-fun d!1722733 () Bool)

(assert (=> d!1722733 e!3341223))

(declare-fun c!938719 () Bool)

(assert (=> d!1722733 (= c!938719 ((_ is EmptyExpr!15127) r!7292))))

(assert (=> d!1722733 (= lt!2194611 e!3341222)))

(declare-fun c!938721 () Bool)

(assert (=> d!1722733 (= c!938721 (isEmpty!33554 s!2326))))

(assert (=> d!1722733 (validRegex!6863 r!7292)))

(assert (=> d!1722733 (= (matchR!7312 r!7292 s!2326) lt!2194611)))

(declare-fun bm!385609 () Bool)

(assert (=> bm!385609 (= call!385614 (isEmpty!33554 s!2326))))

(declare-fun b!5387101 () Bool)

(assert (=> b!5387101 (= e!3341223 (= lt!2194611 call!385614))))

(declare-fun b!5387102 () Bool)

(assert (=> b!5387102 (= e!3341227 (not (= (head!11553 s!2326) (c!938617 r!7292))))))

(assert (= (and d!1722733 c!938721) b!5387089))

(assert (= (and d!1722733 (not c!938721)) b!5387100))

(assert (= (and d!1722733 c!938719) b!5387101))

(assert (= (and d!1722733 (not c!938719)) b!5387096))

(assert (= (and b!5387096 c!938720) b!5387093))

(assert (= (and b!5387096 (not c!938720)) b!5387095))

(assert (= (and b!5387095 (not res!2288606)) b!5387097))

(assert (= (and b!5387097 res!2288607) b!5387091))

(assert (= (and b!5387091 res!2288604) b!5387092))

(assert (= (and b!5387092 res!2288603) b!5387099))

(assert (= (and b!5387097 (not res!2288602)) b!5387090))

(assert (= (and b!5387090 res!2288601) b!5387094))

(assert (= (and b!5387094 (not res!2288605)) b!5387098))

(assert (= (and b!5387098 (not res!2288608)) b!5387102))

(assert (= (or b!5387101 b!5387091 b!5387094) bm!385609))

(declare-fun m!6412978 () Bool)

(assert (=> b!5387089 m!6412978))

(assert (=> d!1722733 m!6412976))

(assert (=> d!1722733 m!6412582))

(declare-fun m!6412980 () Bool)

(assert (=> b!5387100 m!6412980))

(assert (=> b!5387100 m!6412980))

(declare-fun m!6412982 () Bool)

(assert (=> b!5387100 m!6412982))

(declare-fun m!6412984 () Bool)

(assert (=> b!5387100 m!6412984))

(assert (=> b!5387100 m!6412982))

(assert (=> b!5387100 m!6412984))

(declare-fun m!6412986 () Bool)

(assert (=> b!5387100 m!6412986))

(assert (=> b!5387098 m!6412984))

(assert (=> b!5387098 m!6412984))

(declare-fun m!6412988 () Bool)

(assert (=> b!5387098 m!6412988))

(assert (=> bm!385609 m!6412976))

(assert (=> b!5387099 m!6412980))

(assert (=> b!5387092 m!6412984))

(assert (=> b!5387092 m!6412984))

(assert (=> b!5387092 m!6412988))

(assert (=> b!5387102 m!6412980))

(assert (=> b!5386704 d!1722733))

(declare-fun d!1722735 () Bool)

(assert (=> d!1722735 (= (matchR!7312 r!7292 s!2326) (matchRSpec!2230 r!7292 s!2326))))

(declare-fun lt!2194617 () Unit!154026)

(declare-fun choose!40503 (Regex!15127 List!61680) Unit!154026)

(assert (=> d!1722735 (= lt!2194617 (choose!40503 r!7292 s!2326))))

(assert (=> d!1722735 (validRegex!6863 r!7292)))

(assert (=> d!1722735 (= (mainMatchTheorem!2230 r!7292 s!2326) lt!2194617)))

(declare-fun bs!1246579 () Bool)

(assert (= bs!1246579 d!1722735))

(assert (=> bs!1246579 m!6412480))

(assert (=> bs!1246579 m!6412478))

(declare-fun m!6413004 () Bool)

(assert (=> bs!1246579 m!6413004))

(assert (=> bs!1246579 m!6412582))

(assert (=> b!5386704 d!1722735))

(declare-fun b!5387124 () Bool)

(declare-fun e!3341239 () List!61681)

(assert (=> b!5387124 (= e!3341239 (Cons!61557 (h!68005 lt!2194512) (++!13440 (t!374904 lt!2194512) lt!2194524)))))

(declare-fun b!5387125 () Bool)

(declare-fun res!2288619 () Bool)

(declare-fun e!3341240 () Bool)

(assert (=> b!5387125 (=> (not res!2288619) (not e!3341240))))

(declare-fun lt!2194620 () List!61681)

(declare-fun size!39811 (List!61681) Int)

(assert (=> b!5387125 (= res!2288619 (= (size!39811 lt!2194620) (+ (size!39811 lt!2194512) (size!39811 lt!2194524))))))

(declare-fun b!5387123 () Bool)

(assert (=> b!5387123 (= e!3341239 lt!2194524)))

(declare-fun d!1722739 () Bool)

(assert (=> d!1722739 e!3341240))

(declare-fun res!2288620 () Bool)

(assert (=> d!1722739 (=> (not res!2288620) (not e!3341240))))

(declare-fun content!11013 (List!61681) (InoxSet Regex!15127))

(assert (=> d!1722739 (= res!2288620 (= (content!11013 lt!2194620) ((_ map or) (content!11013 lt!2194512) (content!11013 lt!2194524))))))

(assert (=> d!1722739 (= lt!2194620 e!3341239)))

(declare-fun c!938727 () Bool)

(assert (=> d!1722739 (= c!938727 ((_ is Nil!61557) lt!2194512))))

(assert (=> d!1722739 (= (++!13440 lt!2194512 lt!2194524) lt!2194620)))

(declare-fun b!5387126 () Bool)

(assert (=> b!5387126 (= e!3341240 (or (not (= lt!2194524 Nil!61557)) (= lt!2194620 lt!2194512)))))

(assert (= (and d!1722739 c!938727) b!5387123))

(assert (= (and d!1722739 (not c!938727)) b!5387124))

(assert (= (and d!1722739 res!2288620) b!5387125))

(assert (= (and b!5387125 res!2288619) b!5387126))

(declare-fun m!6413008 () Bool)

(assert (=> b!5387124 m!6413008))

(declare-fun m!6413010 () Bool)

(assert (=> b!5387125 m!6413010))

(declare-fun m!6413012 () Bool)

(assert (=> b!5387125 m!6413012))

(declare-fun m!6413014 () Bool)

(assert (=> b!5387125 m!6413014))

(declare-fun m!6413016 () Bool)

(assert (=> d!1722739 m!6413016))

(declare-fun m!6413018 () Bool)

(assert (=> d!1722739 m!6413018))

(declare-fun m!6413020 () Bool)

(assert (=> d!1722739 m!6413020))

(assert (=> b!5386705 d!1722739))

(declare-fun d!1722743 () Bool)

(declare-fun c!938730 () Bool)

(assert (=> d!1722743 (= c!938730 (isEmpty!33554 lt!2194545))))

(declare-fun e!3341245 () Bool)

(assert (=> d!1722743 (= (matchZipper!1371 lt!2194530 lt!2194545) e!3341245)))

(declare-fun b!5387135 () Bool)

(declare-fun nullableZipper!1418 ((InoxSet Context!9022)) Bool)

(assert (=> b!5387135 (= e!3341245 (nullableZipper!1418 lt!2194530))))

(declare-fun b!5387136 () Bool)

(assert (=> b!5387136 (= e!3341245 (matchZipper!1371 (derivationStepZipper!1366 lt!2194530 (head!11553 lt!2194545)) (tail!10650 lt!2194545)))))

(assert (= (and d!1722743 c!938730) b!5387135))

(assert (= (and d!1722743 (not c!938730)) b!5387136))

(declare-fun m!6413022 () Bool)

(assert (=> d!1722743 m!6413022))

(declare-fun m!6413024 () Bool)

(assert (=> b!5387135 m!6413024))

(declare-fun m!6413026 () Bool)

(assert (=> b!5387136 m!6413026))

(assert (=> b!5387136 m!6413026))

(declare-fun m!6413028 () Bool)

(assert (=> b!5387136 m!6413028))

(declare-fun m!6413030 () Bool)

(assert (=> b!5387136 m!6413030))

(assert (=> b!5387136 m!6413028))

(assert (=> b!5387136 m!6413030))

(declare-fun m!6413032 () Bool)

(assert (=> b!5387136 m!6413032))

(assert (=> b!5386705 d!1722743))

(declare-fun d!1722745 () Bool)

(assert (=> d!1722745 (= (matchR!7312 (reg!15456 (regOne!30766 r!7292)) (_1!35629 lt!2194542)) (matchZipper!1371 lt!2194538 (_1!35629 lt!2194542)))))

(declare-fun lt!2194626 () Unit!154026)

(declare-fun choose!40504 ((InoxSet Context!9022) List!61682 Regex!15127 List!61680) Unit!154026)

(assert (=> d!1722745 (= lt!2194626 (choose!40504 lt!2194538 lt!2194547 (reg!15456 (regOne!30766 r!7292)) (_1!35629 lt!2194542)))))

(assert (=> d!1722745 (validRegex!6863 (reg!15456 (regOne!30766 r!7292)))))

(assert (=> d!1722745 (= (theoremZipperRegexEquiv!457 lt!2194538 lt!2194547 (reg!15456 (regOne!30766 r!7292)) (_1!35629 lt!2194542)) lt!2194626)))

(declare-fun bs!1246586 () Bool)

(assert (= bs!1246586 d!1722745))

(assert (=> bs!1246586 m!6412514))

(assert (=> bs!1246586 m!6412632))

(declare-fun m!6413040 () Bool)

(assert (=> bs!1246586 m!6413040))

(assert (=> bs!1246586 m!6412696))

(assert (=> b!5386705 d!1722745))

(declare-fun d!1722751 () Bool)

(declare-fun forall!14511 (List!61681 Int) Bool)

(assert (=> d!1722751 (forall!14511 (++!13440 lt!2194512 lt!2194524) lambda!279433)))

(declare-fun lt!2194629 () Unit!154026)

(declare-fun choose!40505 (List!61681 List!61681 Int) Unit!154026)

(assert (=> d!1722751 (= lt!2194629 (choose!40505 lt!2194512 lt!2194524 lambda!279433))))

(assert (=> d!1722751 (forall!14511 lt!2194512 lambda!279433)))

(assert (=> d!1722751 (= (lemmaConcatPreservesForall!158 lt!2194512 lt!2194524 lambda!279433) lt!2194629)))

(declare-fun bs!1246587 () Bool)

(assert (= bs!1246587 d!1722751))

(assert (=> bs!1246587 m!6412638))

(assert (=> bs!1246587 m!6412638))

(declare-fun m!6413042 () Bool)

(assert (=> bs!1246587 m!6413042))

(declare-fun m!6413044 () Bool)

(assert (=> bs!1246587 m!6413044))

(declare-fun m!6413046 () Bool)

(assert (=> bs!1246587 m!6413046))

(assert (=> b!5386705 d!1722751))

(declare-fun d!1722753 () Bool)

(assert (=> d!1722753 (matchR!7312 (Star!15127 (reg!15456 (regOne!30766 r!7292))) (++!13439 (_1!35629 lt!2194542) (_2!35629 lt!2194542)))))

(declare-fun lt!2194634 () Unit!154026)

(declare-fun choose!40506 (Regex!15127 List!61680 List!61680) Unit!154026)

(assert (=> d!1722753 (= lt!2194634 (choose!40506 (reg!15456 (regOne!30766 r!7292)) (_1!35629 lt!2194542) (_2!35629 lt!2194542)))))

(assert (=> d!1722753 (validRegex!6863 (Star!15127 (reg!15456 (regOne!30766 r!7292))))))

(assert (=> d!1722753 (= (lemmaStarApp!48 (reg!15456 (regOne!30766 r!7292)) (_1!35629 lt!2194542) (_2!35629 lt!2194542)) lt!2194634)))

(declare-fun bs!1246588 () Bool)

(assert (= bs!1246588 d!1722753))

(assert (=> bs!1246588 m!6412554))

(assert (=> bs!1246588 m!6412554))

(declare-fun m!6413048 () Bool)

(assert (=> bs!1246588 m!6413048))

(declare-fun m!6413050 () Bool)

(assert (=> bs!1246588 m!6413050))

(declare-fun m!6413052 () Bool)

(assert (=> bs!1246588 m!6413052))

(assert (=> b!5386705 d!1722753))

(declare-fun b!5387147 () Bool)

(declare-fun e!3341252 () Bool)

(assert (=> b!5387147 (= e!3341252 (nullable!5296 lt!2194526))))

(declare-fun b!5387148 () Bool)

(declare-fun e!3341256 () Bool)

(declare-fun e!3341254 () Bool)

(assert (=> b!5387148 (= e!3341256 e!3341254)))

(declare-fun res!2288627 () Bool)

(assert (=> b!5387148 (=> (not res!2288627) (not e!3341254))))

(declare-fun lt!2194639 () Bool)

(assert (=> b!5387148 (= res!2288627 (not lt!2194639))))

(declare-fun b!5387149 () Bool)

(declare-fun res!2288630 () Bool)

(declare-fun e!3341258 () Bool)

(assert (=> b!5387149 (=> (not res!2288630) (not e!3341258))))

(declare-fun call!385615 () Bool)

(assert (=> b!5387149 (= res!2288630 (not call!385615))))

(declare-fun b!5387150 () Bool)

(declare-fun res!2288629 () Bool)

(assert (=> b!5387150 (=> (not res!2288629) (not e!3341258))))

(assert (=> b!5387150 (= res!2288629 (isEmpty!33554 (tail!10650 lt!2194545)))))

(declare-fun b!5387151 () Bool)

(declare-fun e!3341255 () Bool)

(assert (=> b!5387151 (= e!3341255 (not lt!2194639))))

(declare-fun b!5387152 () Bool)

(declare-fun e!3341257 () Bool)

(assert (=> b!5387152 (= e!3341254 e!3341257)))

(declare-fun res!2288631 () Bool)

(assert (=> b!5387152 (=> res!2288631 e!3341257)))

(assert (=> b!5387152 (= res!2288631 call!385615)))

(declare-fun b!5387153 () Bool)

(declare-fun res!2288632 () Bool)

(assert (=> b!5387153 (=> res!2288632 e!3341256)))

(assert (=> b!5387153 (= res!2288632 (not ((_ is ElementMatch!15127) lt!2194526)))))

(assert (=> b!5387153 (= e!3341255 e!3341256)))

(declare-fun b!5387154 () Bool)

(declare-fun e!3341253 () Bool)

(assert (=> b!5387154 (= e!3341253 e!3341255)))

(declare-fun c!938736 () Bool)

(assert (=> b!5387154 (= c!938736 ((_ is EmptyLang!15127) lt!2194526))))

(declare-fun b!5387155 () Bool)

(declare-fun res!2288628 () Bool)

(assert (=> b!5387155 (=> res!2288628 e!3341256)))

(assert (=> b!5387155 (= res!2288628 e!3341258)))

(declare-fun res!2288633 () Bool)

(assert (=> b!5387155 (=> (not res!2288633) (not e!3341258))))

(assert (=> b!5387155 (= res!2288633 lt!2194639)))

(declare-fun b!5387156 () Bool)

(declare-fun res!2288634 () Bool)

(assert (=> b!5387156 (=> res!2288634 e!3341257)))

(assert (=> b!5387156 (= res!2288634 (not (isEmpty!33554 (tail!10650 lt!2194545))))))

(declare-fun b!5387157 () Bool)

(assert (=> b!5387157 (= e!3341258 (= (head!11553 lt!2194545) (c!938617 lt!2194526)))))

(declare-fun b!5387158 () Bool)

(assert (=> b!5387158 (= e!3341252 (matchR!7312 (derivativeStep!4239 lt!2194526 (head!11553 lt!2194545)) (tail!10650 lt!2194545)))))

(declare-fun d!1722755 () Bool)

(assert (=> d!1722755 e!3341253))

(declare-fun c!938735 () Bool)

(assert (=> d!1722755 (= c!938735 ((_ is EmptyExpr!15127) lt!2194526))))

(assert (=> d!1722755 (= lt!2194639 e!3341252)))

(declare-fun c!938737 () Bool)

(assert (=> d!1722755 (= c!938737 (isEmpty!33554 lt!2194545))))

(assert (=> d!1722755 (validRegex!6863 lt!2194526)))

(assert (=> d!1722755 (= (matchR!7312 lt!2194526 lt!2194545) lt!2194639)))

(declare-fun bm!385610 () Bool)

(assert (=> bm!385610 (= call!385615 (isEmpty!33554 lt!2194545))))

(declare-fun b!5387159 () Bool)

(assert (=> b!5387159 (= e!3341253 (= lt!2194639 call!385615))))

(declare-fun b!5387160 () Bool)

(assert (=> b!5387160 (= e!3341257 (not (= (head!11553 lt!2194545) (c!938617 lt!2194526))))))

(assert (= (and d!1722755 c!938737) b!5387147))

(assert (= (and d!1722755 (not c!938737)) b!5387158))

(assert (= (and d!1722755 c!938735) b!5387159))

(assert (= (and d!1722755 (not c!938735)) b!5387154))

(assert (= (and b!5387154 c!938736) b!5387151))

(assert (= (and b!5387154 (not c!938736)) b!5387153))

(assert (= (and b!5387153 (not res!2288632)) b!5387155))

(assert (= (and b!5387155 res!2288633) b!5387149))

(assert (= (and b!5387149 res!2288630) b!5387150))

(assert (= (and b!5387150 res!2288629) b!5387157))

(assert (= (and b!5387155 (not res!2288628)) b!5387148))

(assert (= (and b!5387148 res!2288627) b!5387152))

(assert (= (and b!5387152 (not res!2288631)) b!5387156))

(assert (= (and b!5387156 (not res!2288634)) b!5387160))

(assert (= (or b!5387159 b!5387149 b!5387152) bm!385610))

(declare-fun m!6413054 () Bool)

(assert (=> b!5387147 m!6413054))

(assert (=> d!1722755 m!6413022))

(declare-fun m!6413056 () Bool)

(assert (=> d!1722755 m!6413056))

(assert (=> b!5387158 m!6413026))

(assert (=> b!5387158 m!6413026))

(declare-fun m!6413058 () Bool)

(assert (=> b!5387158 m!6413058))

(assert (=> b!5387158 m!6413030))

(assert (=> b!5387158 m!6413058))

(assert (=> b!5387158 m!6413030))

(declare-fun m!6413060 () Bool)

(assert (=> b!5387158 m!6413060))

(assert (=> b!5387156 m!6413030))

(assert (=> b!5387156 m!6413030))

(declare-fun m!6413062 () Bool)

(assert (=> b!5387156 m!6413062))

(assert (=> bm!385610 m!6413022))

(assert (=> b!5387157 m!6413026))

(assert (=> b!5387150 m!6413030))

(assert (=> b!5387150 m!6413030))

(assert (=> b!5387150 m!6413062))

(assert (=> b!5387160 m!6413026))

(assert (=> b!5386705 d!1722755))

(declare-fun d!1722757 () Bool)

(declare-fun c!938738 () Bool)

(assert (=> d!1722757 (= c!938738 (isEmpty!33554 lt!2194510))))

(declare-fun e!3341263 () Bool)

(assert (=> d!1722757 (= (matchZipper!1371 (store ((as const (Array Context!9022 Bool)) false) (Context!9023 (++!13440 lt!2194512 lt!2194524)) true) lt!2194510) e!3341263)))

(declare-fun b!5387169 () Bool)

(assert (=> b!5387169 (= e!3341263 (nullableZipper!1418 (store ((as const (Array Context!9022 Bool)) false) (Context!9023 (++!13440 lt!2194512 lt!2194524)) true)))))

(declare-fun b!5387170 () Bool)

(assert (=> b!5387170 (= e!3341263 (matchZipper!1371 (derivationStepZipper!1366 (store ((as const (Array Context!9022 Bool)) false) (Context!9023 (++!13440 lt!2194512 lt!2194524)) true) (head!11553 lt!2194510)) (tail!10650 lt!2194510)))))

(assert (= (and d!1722757 c!938738) b!5387169))

(assert (= (and d!1722757 (not c!938738)) b!5387170))

(declare-fun m!6413064 () Bool)

(assert (=> d!1722757 m!6413064))

(assert (=> b!5387169 m!6412650))

(declare-fun m!6413066 () Bool)

(assert (=> b!5387169 m!6413066))

(declare-fun m!6413068 () Bool)

(assert (=> b!5387170 m!6413068))

(assert (=> b!5387170 m!6412650))

(assert (=> b!5387170 m!6413068))

(declare-fun m!6413070 () Bool)

(assert (=> b!5387170 m!6413070))

(declare-fun m!6413072 () Bool)

(assert (=> b!5387170 m!6413072))

(assert (=> b!5387170 m!6413070))

(assert (=> b!5387170 m!6413072))

(declare-fun m!6413074 () Bool)

(assert (=> b!5387170 m!6413074))

(assert (=> b!5386705 d!1722757))

(declare-fun bs!1246590 () Bool)

(declare-fun d!1722759 () Bool)

(assert (= bs!1246590 (and d!1722759 b!5386705)))

(declare-fun lambda!279460 () Int)

(assert (=> bs!1246590 (= lambda!279460 lambda!279433)))

(assert (=> d!1722759 (matchZipper!1371 (store ((as const (Array Context!9022 Bool)) false) (Context!9023 (++!13440 (exprs!5011 lt!2194550) (exprs!5011 lt!2194537))) true) (++!13439 (_1!35629 lt!2194542) lt!2194545))))

(declare-fun lt!2194651 () Unit!154026)

(assert (=> d!1722759 (= lt!2194651 (lemmaConcatPreservesForall!158 (exprs!5011 lt!2194550) (exprs!5011 lt!2194537) lambda!279460))))

(declare-fun lt!2194650 () Unit!154026)

(declare-fun choose!40507 (Context!9022 Context!9022 List!61680 List!61680) Unit!154026)

(assert (=> d!1722759 (= lt!2194650 (choose!40507 lt!2194550 lt!2194537 (_1!35629 lt!2194542) lt!2194545))))

(assert (=> d!1722759 (matchZipper!1371 (store ((as const (Array Context!9022 Bool)) false) lt!2194550 true) (_1!35629 lt!2194542))))

(assert (=> d!1722759 (= (lemmaConcatenateContextMatchesConcatOfStrings!14 lt!2194550 lt!2194537 (_1!35629 lt!2194542) lt!2194545) lt!2194650)))

(declare-fun bs!1246591 () Bool)

(assert (= bs!1246591 d!1722759))

(declare-fun m!6413106 () Bool)

(assert (=> bs!1246591 m!6413106))

(assert (=> bs!1246591 m!6412490))

(declare-fun m!6413108 () Bool)

(assert (=> bs!1246591 m!6413108))

(declare-fun m!6413110 () Bool)

(assert (=> bs!1246591 m!6413110))

(assert (=> bs!1246591 m!6412568))

(declare-fun m!6413112 () Bool)

(assert (=> bs!1246591 m!6413112))

(declare-fun m!6413114 () Bool)

(assert (=> bs!1246591 m!6413114))

(assert (=> bs!1246591 m!6412490))

(assert (=> bs!1246591 m!6413114))

(assert (=> bs!1246591 m!6412568))

(declare-fun m!6413116 () Bool)

(assert (=> bs!1246591 m!6413116))

(assert (=> b!5386705 d!1722759))

(declare-fun b!5387229 () Bool)

(declare-fun e!3341305 () Bool)

(declare-fun call!385624 () Bool)

(assert (=> b!5387229 (= e!3341305 call!385624)))

(declare-fun bm!385617 () Bool)

(declare-fun call!385622 () Bool)

(declare-fun c!938754 () Bool)

(assert (=> bm!385617 (= call!385622 (validRegex!6863 (ite c!938754 (regOne!30767 lt!2194541) (regOne!30766 lt!2194541))))))

(declare-fun call!385623 () Bool)

(declare-fun c!938753 () Bool)

(declare-fun bm!385618 () Bool)

(assert (=> bm!385618 (= call!385623 (validRegex!6863 (ite c!938753 (reg!15456 lt!2194541) (ite c!938754 (regTwo!30767 lt!2194541) (regTwo!30766 lt!2194541)))))))

(declare-fun b!5387230 () Bool)

(declare-fun e!3341304 () Bool)

(assert (=> b!5387230 (= e!3341304 call!385623)))

(declare-fun b!5387231 () Bool)

(declare-fun e!3341303 () Bool)

(assert (=> b!5387231 (= e!3341303 call!385624)))

(declare-fun d!1722767 () Bool)

(declare-fun res!2288675 () Bool)

(declare-fun e!3341308 () Bool)

(assert (=> d!1722767 (=> res!2288675 e!3341308)))

(assert (=> d!1722767 (= res!2288675 ((_ is ElementMatch!15127) lt!2194541))))

(assert (=> d!1722767 (= (validRegex!6863 lt!2194541) e!3341308)))

(declare-fun b!5387232 () Bool)

(declare-fun res!2288674 () Bool)

(declare-fun e!3341307 () Bool)

(assert (=> b!5387232 (=> res!2288674 e!3341307)))

(assert (=> b!5387232 (= res!2288674 (not ((_ is Concat!23972) lt!2194541)))))

(declare-fun e!3341306 () Bool)

(assert (=> b!5387232 (= e!3341306 e!3341307)))

(declare-fun b!5387233 () Bool)

(declare-fun e!3341302 () Bool)

(assert (=> b!5387233 (= e!3341302 e!3341304)))

(declare-fun res!2288677 () Bool)

(assert (=> b!5387233 (= res!2288677 (not (nullable!5296 (reg!15456 lt!2194541))))))

(assert (=> b!5387233 (=> (not res!2288677) (not e!3341304))))

(declare-fun b!5387234 () Bool)

(assert (=> b!5387234 (= e!3341302 e!3341306)))

(assert (=> b!5387234 (= c!938754 ((_ is Union!15127) lt!2194541))))

(declare-fun bm!385619 () Bool)

(assert (=> bm!385619 (= call!385624 call!385623)))

(declare-fun b!5387235 () Bool)

(assert (=> b!5387235 (= e!3341307 e!3341303)))

(declare-fun res!2288673 () Bool)

(assert (=> b!5387235 (=> (not res!2288673) (not e!3341303))))

(assert (=> b!5387235 (= res!2288673 call!385622)))

(declare-fun b!5387236 () Bool)

(assert (=> b!5387236 (= e!3341308 e!3341302)))

(assert (=> b!5387236 (= c!938753 ((_ is Star!15127) lt!2194541))))

(declare-fun b!5387237 () Bool)

(declare-fun res!2288676 () Bool)

(assert (=> b!5387237 (=> (not res!2288676) (not e!3341305))))

(assert (=> b!5387237 (= res!2288676 call!385622)))

(assert (=> b!5387237 (= e!3341306 e!3341305)))

(assert (= (and d!1722767 (not res!2288675)) b!5387236))

(assert (= (and b!5387236 c!938753) b!5387233))

(assert (= (and b!5387236 (not c!938753)) b!5387234))

(assert (= (and b!5387233 res!2288677) b!5387230))

(assert (= (and b!5387234 c!938754) b!5387237))

(assert (= (and b!5387234 (not c!938754)) b!5387232))

(assert (= (and b!5387237 res!2288676) b!5387229))

(assert (= (and b!5387232 (not res!2288674)) b!5387235))

(assert (= (and b!5387235 res!2288673) b!5387231))

(assert (= (or b!5387229 b!5387231) bm!385619))

(assert (= (or b!5387237 b!5387235) bm!385617))

(assert (= (or b!5387230 bm!385619) bm!385618))

(declare-fun m!6413118 () Bool)

(assert (=> bm!385617 m!6413118))

(declare-fun m!6413120 () Bool)

(assert (=> bm!385618 m!6413120))

(declare-fun m!6413122 () Bool)

(assert (=> b!5387233 m!6413122))

(assert (=> b!5386705 d!1722767))

(declare-fun b!5387238 () Bool)

(declare-fun e!3341309 () Bool)

(assert (=> b!5387238 (= e!3341309 (nullable!5296 lt!2194541))))

(declare-fun b!5387239 () Bool)

(declare-fun e!3341313 () Bool)

(declare-fun e!3341311 () Bool)

(assert (=> b!5387239 (= e!3341313 e!3341311)))

(declare-fun res!2288678 () Bool)

(assert (=> b!5387239 (=> (not res!2288678) (not e!3341311))))

(declare-fun lt!2194652 () Bool)

(assert (=> b!5387239 (= res!2288678 (not lt!2194652))))

(declare-fun b!5387240 () Bool)

(declare-fun res!2288681 () Bool)

(declare-fun e!3341315 () Bool)

(assert (=> b!5387240 (=> (not res!2288681) (not e!3341315))))

(declare-fun call!385625 () Bool)

(assert (=> b!5387240 (= res!2288681 (not call!385625))))

(declare-fun b!5387241 () Bool)

(declare-fun res!2288680 () Bool)

(assert (=> b!5387241 (=> (not res!2288680) (not e!3341315))))

(assert (=> b!5387241 (= res!2288680 (isEmpty!33554 (tail!10650 lt!2194510)))))

(declare-fun b!5387242 () Bool)

(declare-fun e!3341312 () Bool)

(assert (=> b!5387242 (= e!3341312 (not lt!2194652))))

(declare-fun b!5387243 () Bool)

(declare-fun e!3341314 () Bool)

(assert (=> b!5387243 (= e!3341311 e!3341314)))

(declare-fun res!2288682 () Bool)

(assert (=> b!5387243 (=> res!2288682 e!3341314)))

(assert (=> b!5387243 (= res!2288682 call!385625)))

(declare-fun b!5387244 () Bool)

(declare-fun res!2288683 () Bool)

(assert (=> b!5387244 (=> res!2288683 e!3341313)))

(assert (=> b!5387244 (= res!2288683 (not ((_ is ElementMatch!15127) lt!2194541)))))

(assert (=> b!5387244 (= e!3341312 e!3341313)))

(declare-fun b!5387245 () Bool)

(declare-fun e!3341310 () Bool)

(assert (=> b!5387245 (= e!3341310 e!3341312)))

(declare-fun c!938756 () Bool)

(assert (=> b!5387245 (= c!938756 ((_ is EmptyLang!15127) lt!2194541))))

(declare-fun b!5387246 () Bool)

(declare-fun res!2288679 () Bool)

(assert (=> b!5387246 (=> res!2288679 e!3341313)))

(assert (=> b!5387246 (= res!2288679 e!3341315)))

(declare-fun res!2288684 () Bool)

(assert (=> b!5387246 (=> (not res!2288684) (not e!3341315))))

(assert (=> b!5387246 (= res!2288684 lt!2194652)))

(declare-fun b!5387247 () Bool)

(declare-fun res!2288685 () Bool)

(assert (=> b!5387247 (=> res!2288685 e!3341314)))

(assert (=> b!5387247 (= res!2288685 (not (isEmpty!33554 (tail!10650 lt!2194510))))))

(declare-fun b!5387248 () Bool)

(assert (=> b!5387248 (= e!3341315 (= (head!11553 lt!2194510) (c!938617 lt!2194541)))))

(declare-fun b!5387249 () Bool)

(assert (=> b!5387249 (= e!3341309 (matchR!7312 (derivativeStep!4239 lt!2194541 (head!11553 lt!2194510)) (tail!10650 lt!2194510)))))

(declare-fun d!1722769 () Bool)

(assert (=> d!1722769 e!3341310))

(declare-fun c!938755 () Bool)

(assert (=> d!1722769 (= c!938755 ((_ is EmptyExpr!15127) lt!2194541))))

(assert (=> d!1722769 (= lt!2194652 e!3341309)))

(declare-fun c!938757 () Bool)

(assert (=> d!1722769 (= c!938757 (isEmpty!33554 lt!2194510))))

(assert (=> d!1722769 (validRegex!6863 lt!2194541)))

(assert (=> d!1722769 (= (matchR!7312 lt!2194541 lt!2194510) lt!2194652)))

(declare-fun bm!385620 () Bool)

(assert (=> bm!385620 (= call!385625 (isEmpty!33554 lt!2194510))))

(declare-fun b!5387250 () Bool)

(assert (=> b!5387250 (= e!3341310 (= lt!2194652 call!385625))))

(declare-fun b!5387251 () Bool)

(assert (=> b!5387251 (= e!3341314 (not (= (head!11553 lt!2194510) (c!938617 lt!2194541))))))

(assert (= (and d!1722769 c!938757) b!5387238))

(assert (= (and d!1722769 (not c!938757)) b!5387249))

(assert (= (and d!1722769 c!938755) b!5387250))

(assert (= (and d!1722769 (not c!938755)) b!5387245))

(assert (= (and b!5387245 c!938756) b!5387242))

(assert (= (and b!5387245 (not c!938756)) b!5387244))

(assert (= (and b!5387244 (not res!2288683)) b!5387246))

(assert (= (and b!5387246 res!2288684) b!5387240))

(assert (= (and b!5387240 res!2288681) b!5387241))

(assert (= (and b!5387241 res!2288680) b!5387248))

(assert (= (and b!5387246 (not res!2288679)) b!5387239))

(assert (= (and b!5387239 res!2288678) b!5387243))

(assert (= (and b!5387243 (not res!2288682)) b!5387247))

(assert (= (and b!5387247 (not res!2288685)) b!5387251))

(assert (= (or b!5387250 b!5387240 b!5387243) bm!385620))

(declare-fun m!6413124 () Bool)

(assert (=> b!5387238 m!6413124))

(assert (=> d!1722769 m!6413064))

(assert (=> d!1722769 m!6412648))

(assert (=> b!5387249 m!6413068))

(assert (=> b!5387249 m!6413068))

(declare-fun m!6413126 () Bool)

(assert (=> b!5387249 m!6413126))

(assert (=> b!5387249 m!6413072))

(assert (=> b!5387249 m!6413126))

(assert (=> b!5387249 m!6413072))

(declare-fun m!6413128 () Bool)

(assert (=> b!5387249 m!6413128))

(assert (=> b!5387247 m!6413072))

(assert (=> b!5387247 m!6413072))

(declare-fun m!6413130 () Bool)

(assert (=> b!5387247 m!6413130))

(assert (=> bm!385620 m!6413064))

(assert (=> b!5387248 m!6413068))

(assert (=> b!5387241 m!6413072))

(assert (=> b!5387241 m!6413072))

(assert (=> b!5387241 m!6413130))

(assert (=> b!5387251 m!6413068))

(assert (=> b!5386705 d!1722769))

(declare-fun d!1722771 () Bool)

(declare-fun c!938758 () Bool)

(assert (=> d!1722771 (= c!938758 (isEmpty!33554 (_1!35629 lt!2194542)))))

(declare-fun e!3341318 () Bool)

(assert (=> d!1722771 (= (matchZipper!1371 lt!2194538 (_1!35629 lt!2194542)) e!3341318)))

(declare-fun b!5387256 () Bool)

(assert (=> b!5387256 (= e!3341318 (nullableZipper!1418 lt!2194538))))

(declare-fun b!5387257 () Bool)

(assert (=> b!5387257 (= e!3341318 (matchZipper!1371 (derivationStepZipper!1366 lt!2194538 (head!11553 (_1!35629 lt!2194542))) (tail!10650 (_1!35629 lt!2194542))))))

(assert (= (and d!1722771 c!938758) b!5387256))

(assert (= (and d!1722771 (not c!938758)) b!5387257))

(assert (=> d!1722771 m!6412694))

(declare-fun m!6413132 () Bool)

(assert (=> b!5387256 m!6413132))

(assert (=> b!5387257 m!6412698))

(assert (=> b!5387257 m!6412698))

(declare-fun m!6413134 () Bool)

(assert (=> b!5387257 m!6413134))

(assert (=> b!5387257 m!6412702))

(assert (=> b!5387257 m!6413134))

(assert (=> b!5387257 m!6412702))

(declare-fun m!6413136 () Bool)

(assert (=> b!5387257 m!6413136))

(assert (=> b!5386705 d!1722771))

(declare-fun d!1722773 () Bool)

(assert (=> d!1722773 (matchR!7312 (Concat!23972 (reg!15456 (regOne!30766 r!7292)) lt!2194526) (++!13439 (_1!35629 lt!2194542) lt!2194545))))

(declare-fun lt!2194655 () Unit!154026)

(declare-fun choose!40511 (Regex!15127 Regex!15127 List!61680 List!61680) Unit!154026)

(assert (=> d!1722773 (= lt!2194655 (choose!40511 (reg!15456 (regOne!30766 r!7292)) lt!2194526 (_1!35629 lt!2194542) lt!2194545))))

(declare-fun e!3341321 () Bool)

(assert (=> d!1722773 e!3341321))

(declare-fun res!2288692 () Bool)

(assert (=> d!1722773 (=> (not res!2288692) (not e!3341321))))

(assert (=> d!1722773 (= res!2288692 (validRegex!6863 (reg!15456 (regOne!30766 r!7292))))))

(assert (=> d!1722773 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!174 (reg!15456 (regOne!30766 r!7292)) lt!2194526 (_1!35629 lt!2194542) lt!2194545) lt!2194655)))

(declare-fun b!5387260 () Bool)

(assert (=> b!5387260 (= e!3341321 (validRegex!6863 lt!2194526))))

(assert (= (and d!1722773 res!2288692) b!5387260))

(assert (=> d!1722773 m!6412568))

(assert (=> d!1722773 m!6412568))

(declare-fun m!6413138 () Bool)

(assert (=> d!1722773 m!6413138))

(declare-fun m!6413140 () Bool)

(assert (=> d!1722773 m!6413140))

(assert (=> d!1722773 m!6412696))

(assert (=> b!5387260 m!6413056))

(assert (=> b!5386705 d!1722773))

(declare-fun b!5387272 () Bool)

(declare-fun e!3341329 () Bool)

(assert (=> b!5387272 (= e!3341329 (nullable!5296 lt!2194501))))

(declare-fun b!5387273 () Bool)

(declare-fun e!3341333 () Bool)

(declare-fun e!3341331 () Bool)

(assert (=> b!5387273 (= e!3341333 e!3341331)))

(declare-fun res!2288696 () Bool)

(assert (=> b!5387273 (=> (not res!2288696) (not e!3341331))))

(declare-fun lt!2194656 () Bool)

(assert (=> b!5387273 (= res!2288696 (not lt!2194656))))

(declare-fun b!5387274 () Bool)

(declare-fun res!2288699 () Bool)

(declare-fun e!3341335 () Bool)

(assert (=> b!5387274 (=> (not res!2288699) (not e!3341335))))

(declare-fun call!385632 () Bool)

(assert (=> b!5387274 (= res!2288699 (not call!385632))))

(declare-fun b!5387275 () Bool)

(declare-fun res!2288698 () Bool)

(assert (=> b!5387275 (=> (not res!2288698) (not e!3341335))))

(assert (=> b!5387275 (= res!2288698 (isEmpty!33554 (tail!10650 lt!2194517)))))

(declare-fun b!5387276 () Bool)

(declare-fun e!3341332 () Bool)

(assert (=> b!5387276 (= e!3341332 (not lt!2194656))))

(declare-fun b!5387277 () Bool)

(declare-fun e!3341334 () Bool)

(assert (=> b!5387277 (= e!3341331 e!3341334)))

(declare-fun res!2288700 () Bool)

(assert (=> b!5387277 (=> res!2288700 e!3341334)))

(assert (=> b!5387277 (= res!2288700 call!385632)))

(declare-fun b!5387278 () Bool)

(declare-fun res!2288701 () Bool)

(assert (=> b!5387278 (=> res!2288701 e!3341333)))

(assert (=> b!5387278 (= res!2288701 (not ((_ is ElementMatch!15127) lt!2194501)))))

(assert (=> b!5387278 (= e!3341332 e!3341333)))

(declare-fun b!5387279 () Bool)

(declare-fun e!3341330 () Bool)

(assert (=> b!5387279 (= e!3341330 e!3341332)))

(declare-fun c!938764 () Bool)

(assert (=> b!5387279 (= c!938764 ((_ is EmptyLang!15127) lt!2194501))))

(declare-fun b!5387280 () Bool)

(declare-fun res!2288697 () Bool)

(assert (=> b!5387280 (=> res!2288697 e!3341333)))

(assert (=> b!5387280 (= res!2288697 e!3341335)))

(declare-fun res!2288702 () Bool)

(assert (=> b!5387280 (=> (not res!2288702) (not e!3341335))))

(assert (=> b!5387280 (= res!2288702 lt!2194656)))

(declare-fun b!5387281 () Bool)

(declare-fun res!2288703 () Bool)

(assert (=> b!5387281 (=> res!2288703 e!3341334)))

(assert (=> b!5387281 (= res!2288703 (not (isEmpty!33554 (tail!10650 lt!2194517))))))

(declare-fun b!5387282 () Bool)

(assert (=> b!5387282 (= e!3341335 (= (head!11553 lt!2194517) (c!938617 lt!2194501)))))

(declare-fun b!5387283 () Bool)

(assert (=> b!5387283 (= e!3341329 (matchR!7312 (derivativeStep!4239 lt!2194501 (head!11553 lt!2194517)) (tail!10650 lt!2194517)))))

(declare-fun d!1722775 () Bool)

(assert (=> d!1722775 e!3341330))

(declare-fun c!938763 () Bool)

(assert (=> d!1722775 (= c!938763 ((_ is EmptyExpr!15127) lt!2194501))))

(assert (=> d!1722775 (= lt!2194656 e!3341329)))

(declare-fun c!938765 () Bool)

(assert (=> d!1722775 (= c!938765 (isEmpty!33554 lt!2194517))))

(assert (=> d!1722775 (validRegex!6863 lt!2194501)))

(assert (=> d!1722775 (= (matchR!7312 lt!2194501 lt!2194517) lt!2194656)))

(declare-fun bm!385627 () Bool)

(assert (=> bm!385627 (= call!385632 (isEmpty!33554 lt!2194517))))

(declare-fun b!5387284 () Bool)

(assert (=> b!5387284 (= e!3341330 (= lt!2194656 call!385632))))

(declare-fun b!5387285 () Bool)

(assert (=> b!5387285 (= e!3341334 (not (= (head!11553 lt!2194517) (c!938617 lt!2194501))))))

(assert (= (and d!1722775 c!938765) b!5387272))

(assert (= (and d!1722775 (not c!938765)) b!5387283))

(assert (= (and d!1722775 c!938763) b!5387284))

(assert (= (and d!1722775 (not c!938763)) b!5387279))

(assert (= (and b!5387279 c!938764) b!5387276))

(assert (= (and b!5387279 (not c!938764)) b!5387278))

(assert (= (and b!5387278 (not res!2288701)) b!5387280))

(assert (= (and b!5387280 res!2288702) b!5387274))

(assert (= (and b!5387274 res!2288699) b!5387275))

(assert (= (and b!5387275 res!2288698) b!5387282))

(assert (= (and b!5387280 (not res!2288697)) b!5387273))

(assert (= (and b!5387273 res!2288696) b!5387277))

(assert (= (and b!5387277 (not res!2288700)) b!5387281))

(assert (= (and b!5387281 (not res!2288703)) b!5387285))

(assert (= (or b!5387284 b!5387274 b!5387277) bm!385627))

(assert (=> b!5387272 m!6412678))

(declare-fun m!6413142 () Bool)

(assert (=> d!1722775 m!6413142))

(assert (=> d!1722775 m!6412680))

(declare-fun m!6413144 () Bool)

(assert (=> b!5387283 m!6413144))

(assert (=> b!5387283 m!6413144))

(declare-fun m!6413146 () Bool)

(assert (=> b!5387283 m!6413146))

(declare-fun m!6413148 () Bool)

(assert (=> b!5387283 m!6413148))

(assert (=> b!5387283 m!6413146))

(assert (=> b!5387283 m!6413148))

(declare-fun m!6413150 () Bool)

(assert (=> b!5387283 m!6413150))

(assert (=> b!5387281 m!6413148))

(assert (=> b!5387281 m!6413148))

(declare-fun m!6413152 () Bool)

(assert (=> b!5387281 m!6413152))

(assert (=> bm!385627 m!6413142))

(assert (=> b!5387282 m!6413144))

(assert (=> b!5387275 m!6413148))

(assert (=> b!5387275 m!6413148))

(assert (=> b!5387275 m!6413152))

(assert (=> b!5387285 m!6413144))

(assert (=> b!5386705 d!1722775))

(declare-fun d!1722777 () Bool)

(assert (=> d!1722777 (= (matchR!7312 lt!2194526 lt!2194545) (matchZipper!1371 lt!2194530 lt!2194545))))

(declare-fun lt!2194657 () Unit!154026)

(assert (=> d!1722777 (= lt!2194657 (choose!40504 lt!2194530 lt!2194528 lt!2194526 lt!2194545))))

(assert (=> d!1722777 (validRegex!6863 lt!2194526)))

(assert (=> d!1722777 (= (theoremZipperRegexEquiv!457 lt!2194530 lt!2194528 lt!2194526 lt!2194545) lt!2194657)))

(declare-fun bs!1246595 () Bool)

(assert (= bs!1246595 d!1722777))

(assert (=> bs!1246595 m!6412634))

(assert (=> bs!1246595 m!6412640))

(declare-fun m!6413154 () Bool)

(assert (=> bs!1246595 m!6413154))

(assert (=> bs!1246595 m!6413056))

(assert (=> b!5386705 d!1722777))

(declare-fun d!1722779 () Bool)

(assert (=> d!1722779 (matchR!7312 (Concat!23972 lt!2194501 (regTwo!30766 r!7292)) (++!13439 (_2!35629 lt!2194542) (_2!35629 lt!2194533)))))

(declare-fun lt!2194658 () Unit!154026)

(assert (=> d!1722779 (= lt!2194658 (choose!40511 lt!2194501 (regTwo!30766 r!7292) (_2!35629 lt!2194542) (_2!35629 lt!2194533)))))

(declare-fun e!3341336 () Bool)

(assert (=> d!1722779 e!3341336))

(declare-fun res!2288704 () Bool)

(assert (=> d!1722779 (=> (not res!2288704) (not e!3341336))))

(assert (=> d!1722779 (= res!2288704 (validRegex!6863 lt!2194501))))

(assert (=> d!1722779 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!174 lt!2194501 (regTwo!30766 r!7292) (_2!35629 lt!2194542) (_2!35629 lt!2194533)) lt!2194658)))

(declare-fun b!5387286 () Bool)

(assert (=> b!5387286 (= e!3341336 (validRegex!6863 (regTwo!30766 r!7292)))))

(assert (= (and d!1722779 res!2288704) b!5387286))

(assert (=> d!1722779 m!6412572))

(assert (=> d!1722779 m!6412572))

(declare-fun m!6413156 () Bool)

(assert (=> d!1722779 m!6413156))

(declare-fun m!6413158 () Bool)

(assert (=> d!1722779 m!6413158))

(assert (=> d!1722779 m!6412680))

(declare-fun m!6413160 () Bool)

(assert (=> b!5387286 m!6413160))

(assert (=> b!5386705 d!1722779))

(declare-fun b!5387287 () Bool)

(declare-fun e!3341337 () Bool)

(assert (=> b!5387287 (= e!3341337 (nullable!5296 (regTwo!30766 r!7292)))))

(declare-fun b!5387288 () Bool)

(declare-fun e!3341341 () Bool)

(declare-fun e!3341339 () Bool)

(assert (=> b!5387288 (= e!3341341 e!3341339)))

(declare-fun res!2288705 () Bool)

(assert (=> b!5387288 (=> (not res!2288705) (not e!3341339))))

(declare-fun lt!2194659 () Bool)

(assert (=> b!5387288 (= res!2288705 (not lt!2194659))))

(declare-fun b!5387289 () Bool)

(declare-fun res!2288708 () Bool)

(declare-fun e!3341343 () Bool)

(assert (=> b!5387289 (=> (not res!2288708) (not e!3341343))))

(declare-fun call!385633 () Bool)

(assert (=> b!5387289 (= res!2288708 (not call!385633))))

(declare-fun b!5387290 () Bool)

(declare-fun res!2288707 () Bool)

(assert (=> b!5387290 (=> (not res!2288707) (not e!3341343))))

(assert (=> b!5387290 (= res!2288707 (isEmpty!33554 (tail!10650 (_2!35629 lt!2194533))))))

(declare-fun b!5387291 () Bool)

(declare-fun e!3341340 () Bool)

(assert (=> b!5387291 (= e!3341340 (not lt!2194659))))

(declare-fun b!5387292 () Bool)

(declare-fun e!3341342 () Bool)

(assert (=> b!5387292 (= e!3341339 e!3341342)))

(declare-fun res!2288709 () Bool)

(assert (=> b!5387292 (=> res!2288709 e!3341342)))

(assert (=> b!5387292 (= res!2288709 call!385633)))

(declare-fun b!5387293 () Bool)

(declare-fun res!2288710 () Bool)

(assert (=> b!5387293 (=> res!2288710 e!3341341)))

(assert (=> b!5387293 (= res!2288710 (not ((_ is ElementMatch!15127) (regTwo!30766 r!7292))))))

(assert (=> b!5387293 (= e!3341340 e!3341341)))

(declare-fun b!5387294 () Bool)

(declare-fun e!3341338 () Bool)

(assert (=> b!5387294 (= e!3341338 e!3341340)))

(declare-fun c!938767 () Bool)

(assert (=> b!5387294 (= c!938767 ((_ is EmptyLang!15127) (regTwo!30766 r!7292)))))

(declare-fun b!5387295 () Bool)

(declare-fun res!2288706 () Bool)

(assert (=> b!5387295 (=> res!2288706 e!3341341)))

(assert (=> b!5387295 (= res!2288706 e!3341343)))

(declare-fun res!2288711 () Bool)

(assert (=> b!5387295 (=> (not res!2288711) (not e!3341343))))

(assert (=> b!5387295 (= res!2288711 lt!2194659)))

(declare-fun b!5387296 () Bool)

(declare-fun res!2288712 () Bool)

(assert (=> b!5387296 (=> res!2288712 e!3341342)))

(assert (=> b!5387296 (= res!2288712 (not (isEmpty!33554 (tail!10650 (_2!35629 lt!2194533)))))))

(declare-fun b!5387297 () Bool)

(assert (=> b!5387297 (= e!3341343 (= (head!11553 (_2!35629 lt!2194533)) (c!938617 (regTwo!30766 r!7292))))))

(declare-fun b!5387298 () Bool)

(assert (=> b!5387298 (= e!3341337 (matchR!7312 (derivativeStep!4239 (regTwo!30766 r!7292) (head!11553 (_2!35629 lt!2194533))) (tail!10650 (_2!35629 lt!2194533))))))

(declare-fun d!1722781 () Bool)

(assert (=> d!1722781 e!3341338))

(declare-fun c!938766 () Bool)

(assert (=> d!1722781 (= c!938766 ((_ is EmptyExpr!15127) (regTwo!30766 r!7292)))))

(assert (=> d!1722781 (= lt!2194659 e!3341337)))

(declare-fun c!938768 () Bool)

(assert (=> d!1722781 (= c!938768 (isEmpty!33554 (_2!35629 lt!2194533)))))

(assert (=> d!1722781 (validRegex!6863 (regTwo!30766 r!7292))))

(assert (=> d!1722781 (= (matchR!7312 (regTwo!30766 r!7292) (_2!35629 lt!2194533)) lt!2194659)))

(declare-fun bm!385628 () Bool)

(assert (=> bm!385628 (= call!385633 (isEmpty!33554 (_2!35629 lt!2194533)))))

(declare-fun b!5387299 () Bool)

(assert (=> b!5387299 (= e!3341338 (= lt!2194659 call!385633))))

(declare-fun b!5387300 () Bool)

(assert (=> b!5387300 (= e!3341342 (not (= (head!11553 (_2!35629 lt!2194533)) (c!938617 (regTwo!30766 r!7292)))))))

(assert (= (and d!1722781 c!938768) b!5387287))

(assert (= (and d!1722781 (not c!938768)) b!5387298))

(assert (= (and d!1722781 c!938766) b!5387299))

(assert (= (and d!1722781 (not c!938766)) b!5387294))

(assert (= (and b!5387294 c!938767) b!5387291))

(assert (= (and b!5387294 (not c!938767)) b!5387293))

(assert (= (and b!5387293 (not res!2288710)) b!5387295))

(assert (= (and b!5387295 res!2288711) b!5387289))

(assert (= (and b!5387289 res!2288708) b!5387290))

(assert (= (and b!5387290 res!2288707) b!5387297))

(assert (= (and b!5387295 (not res!2288706)) b!5387288))

(assert (= (and b!5387288 res!2288705) b!5387292))

(assert (= (and b!5387292 (not res!2288709)) b!5387296))

(assert (= (and b!5387296 (not res!2288712)) b!5387300))

(assert (= (or b!5387299 b!5387289 b!5387292) bm!385628))

(declare-fun m!6413162 () Bool)

(assert (=> b!5387287 m!6413162))

(declare-fun m!6413164 () Bool)

(assert (=> d!1722781 m!6413164))

(assert (=> d!1722781 m!6413160))

(declare-fun m!6413166 () Bool)

(assert (=> b!5387298 m!6413166))

(assert (=> b!5387298 m!6413166))

(declare-fun m!6413168 () Bool)

(assert (=> b!5387298 m!6413168))

(declare-fun m!6413170 () Bool)

(assert (=> b!5387298 m!6413170))

(assert (=> b!5387298 m!6413168))

(assert (=> b!5387298 m!6413170))

(declare-fun m!6413172 () Bool)

(assert (=> b!5387298 m!6413172))

(assert (=> b!5387296 m!6413170))

(assert (=> b!5387296 m!6413170))

(declare-fun m!6413174 () Bool)

(assert (=> b!5387296 m!6413174))

(assert (=> bm!385628 m!6413164))

(assert (=> b!5387297 m!6413166))

(assert (=> b!5387290 m!6413170))

(assert (=> b!5387290 m!6413170))

(assert (=> b!5387290 m!6413174))

(assert (=> b!5387300 m!6413166))

(assert (=> b!5386725 d!1722781))

(declare-fun b!5387323 () Bool)

(declare-fun e!3341356 () List!61680)

(assert (=> b!5387323 (= e!3341356 lt!2194545)))

(declare-fun b!5387325 () Bool)

(declare-fun res!2288725 () Bool)

(declare-fun e!3341355 () Bool)

(assert (=> b!5387325 (=> (not res!2288725) (not e!3341355))))

(declare-fun lt!2194663 () List!61680)

(declare-fun size!39813 (List!61680) Int)

(assert (=> b!5387325 (= res!2288725 (= (size!39813 lt!2194663) (+ (size!39813 (_1!35629 lt!2194542)) (size!39813 lt!2194545))))))

(declare-fun b!5387324 () Bool)

(assert (=> b!5387324 (= e!3341356 (Cons!61556 (h!68004 (_1!35629 lt!2194542)) (++!13439 (t!374903 (_1!35629 lt!2194542)) lt!2194545)))))

(declare-fun d!1722783 () Bool)

(assert (=> d!1722783 e!3341355))

(declare-fun res!2288726 () Bool)

(assert (=> d!1722783 (=> (not res!2288726) (not e!3341355))))

(declare-fun content!11016 (List!61680) (InoxSet C!30524))

(assert (=> d!1722783 (= res!2288726 (= (content!11016 lt!2194663) ((_ map or) (content!11016 (_1!35629 lt!2194542)) (content!11016 lt!2194545))))))

(assert (=> d!1722783 (= lt!2194663 e!3341356)))

(declare-fun c!938774 () Bool)

(assert (=> d!1722783 (= c!938774 ((_ is Nil!61556) (_1!35629 lt!2194542)))))

(assert (=> d!1722783 (= (++!13439 (_1!35629 lt!2194542) lt!2194545) lt!2194663)))

(declare-fun b!5387326 () Bool)

(assert (=> b!5387326 (= e!3341355 (or (not (= lt!2194545 Nil!61556)) (= lt!2194663 (_1!35629 lt!2194542))))))

(assert (= (and d!1722783 c!938774) b!5387323))

(assert (= (and d!1722783 (not c!938774)) b!5387324))

(assert (= (and d!1722783 res!2288726) b!5387325))

(assert (= (and b!5387325 res!2288725) b!5387326))

(declare-fun m!6413190 () Bool)

(assert (=> b!5387325 m!6413190))

(declare-fun m!6413192 () Bool)

(assert (=> b!5387325 m!6413192))

(declare-fun m!6413194 () Bool)

(assert (=> b!5387325 m!6413194))

(declare-fun m!6413196 () Bool)

(assert (=> b!5387324 m!6413196))

(declare-fun m!6413198 () Bool)

(assert (=> d!1722783 m!6413198))

(declare-fun m!6413200 () Bool)

(assert (=> d!1722783 m!6413200))

(declare-fun m!6413202 () Bool)

(assert (=> d!1722783 m!6413202))

(assert (=> b!5386686 d!1722783))

(declare-fun b!5387327 () Bool)

(declare-fun e!3341358 () List!61680)

(assert (=> b!5387327 (= e!3341358 (_2!35629 lt!2194533))))

(declare-fun b!5387329 () Bool)

(declare-fun res!2288727 () Bool)

(declare-fun e!3341357 () Bool)

(assert (=> b!5387329 (=> (not res!2288727) (not e!3341357))))

(declare-fun lt!2194664 () List!61680)

(assert (=> b!5387329 (= res!2288727 (= (size!39813 lt!2194664) (+ (size!39813 lt!2194517) (size!39813 (_2!35629 lt!2194533)))))))

(declare-fun b!5387328 () Bool)

(assert (=> b!5387328 (= e!3341358 (Cons!61556 (h!68004 lt!2194517) (++!13439 (t!374903 lt!2194517) (_2!35629 lt!2194533))))))

(declare-fun d!1722789 () Bool)

(assert (=> d!1722789 e!3341357))

(declare-fun res!2288728 () Bool)

(assert (=> d!1722789 (=> (not res!2288728) (not e!3341357))))

(assert (=> d!1722789 (= res!2288728 (= (content!11016 lt!2194664) ((_ map or) (content!11016 lt!2194517) (content!11016 (_2!35629 lt!2194533)))))))

(assert (=> d!1722789 (= lt!2194664 e!3341358)))

(declare-fun c!938775 () Bool)

(assert (=> d!1722789 (= c!938775 ((_ is Nil!61556) lt!2194517))))

(assert (=> d!1722789 (= (++!13439 lt!2194517 (_2!35629 lt!2194533)) lt!2194664)))

(declare-fun b!5387330 () Bool)

(assert (=> b!5387330 (= e!3341357 (or (not (= (_2!35629 lt!2194533) Nil!61556)) (= lt!2194664 lt!2194517)))))

(assert (= (and d!1722789 c!938775) b!5387327))

(assert (= (and d!1722789 (not c!938775)) b!5387328))

(assert (= (and d!1722789 res!2288728) b!5387329))

(assert (= (and b!5387329 res!2288727) b!5387330))

(declare-fun m!6413204 () Bool)

(assert (=> b!5387329 m!6413204))

(declare-fun m!6413206 () Bool)

(assert (=> b!5387329 m!6413206))

(declare-fun m!6413208 () Bool)

(assert (=> b!5387329 m!6413208))

(declare-fun m!6413210 () Bool)

(assert (=> b!5387328 m!6413210))

(declare-fun m!6413212 () Bool)

(assert (=> d!1722789 m!6413212))

(declare-fun m!6413214 () Bool)

(assert (=> d!1722789 m!6413214))

(declare-fun m!6413216 () Bool)

(assert (=> d!1722789 m!6413216))

(assert (=> b!5386686 d!1722789))

(declare-fun b!5387331 () Bool)

(declare-fun e!3341360 () List!61680)

(assert (=> b!5387331 (= e!3341360 (_2!35629 lt!2194533))))

(declare-fun b!5387333 () Bool)

(declare-fun res!2288729 () Bool)

(declare-fun e!3341359 () Bool)

(assert (=> b!5387333 (=> (not res!2288729) (not e!3341359))))

(declare-fun lt!2194667 () List!61680)

(assert (=> b!5387333 (= res!2288729 (= (size!39813 lt!2194667) (+ (size!39813 (_2!35629 lt!2194542)) (size!39813 (_2!35629 lt!2194533)))))))

(declare-fun b!5387332 () Bool)

(assert (=> b!5387332 (= e!3341360 (Cons!61556 (h!68004 (_2!35629 lt!2194542)) (++!13439 (t!374903 (_2!35629 lt!2194542)) (_2!35629 lt!2194533))))))

(declare-fun d!1722791 () Bool)

(assert (=> d!1722791 e!3341359))

(declare-fun res!2288730 () Bool)

(assert (=> d!1722791 (=> (not res!2288730) (not e!3341359))))

(assert (=> d!1722791 (= res!2288730 (= (content!11016 lt!2194667) ((_ map or) (content!11016 (_2!35629 lt!2194542)) (content!11016 (_2!35629 lt!2194533)))))))

(assert (=> d!1722791 (= lt!2194667 e!3341360)))

(declare-fun c!938776 () Bool)

(assert (=> d!1722791 (= c!938776 ((_ is Nil!61556) (_2!35629 lt!2194542)))))

(assert (=> d!1722791 (= (++!13439 (_2!35629 lt!2194542) (_2!35629 lt!2194533)) lt!2194667)))

(declare-fun b!5387334 () Bool)

(assert (=> b!5387334 (= e!3341359 (or (not (= (_2!35629 lt!2194533) Nil!61556)) (= lt!2194667 (_2!35629 lt!2194542))))))

(assert (= (and d!1722791 c!938776) b!5387331))

(assert (= (and d!1722791 (not c!938776)) b!5387332))

(assert (= (and d!1722791 res!2288730) b!5387333))

(assert (= (and b!5387333 res!2288729) b!5387334))

(declare-fun m!6413218 () Bool)

(assert (=> b!5387333 m!6413218))

(declare-fun m!6413220 () Bool)

(assert (=> b!5387333 m!6413220))

(assert (=> b!5387333 m!6413208))

(declare-fun m!6413222 () Bool)

(assert (=> b!5387332 m!6413222))

(declare-fun m!6413224 () Bool)

(assert (=> d!1722791 m!6413224))

(declare-fun m!6413226 () Bool)

(assert (=> d!1722791 m!6413226))

(assert (=> d!1722791 m!6413216))

(assert (=> b!5386686 d!1722791))

(declare-fun d!1722793 () Bool)

(assert (=> d!1722793 (= (++!13439 (++!13439 (_1!35629 lt!2194542) (_2!35629 lt!2194542)) (_2!35629 lt!2194533)) (++!13439 (_1!35629 lt!2194542) (++!13439 (_2!35629 lt!2194542) (_2!35629 lt!2194533))))))

(declare-fun lt!2194672 () Unit!154026)

(declare-fun choose!40514 (List!61680 List!61680 List!61680) Unit!154026)

(assert (=> d!1722793 (= lt!2194672 (choose!40514 (_1!35629 lt!2194542) (_2!35629 lt!2194542) (_2!35629 lt!2194533)))))

(assert (=> d!1722793 (= (lemmaConcatAssociativity!2824 (_1!35629 lt!2194542) (_2!35629 lt!2194542) (_2!35629 lt!2194533)) lt!2194672)))

(declare-fun bs!1246605 () Bool)

(assert (= bs!1246605 d!1722793))

(declare-fun m!6413234 () Bool)

(assert (=> bs!1246605 m!6413234))

(assert (=> bs!1246605 m!6412554))

(declare-fun m!6413236 () Bool)

(assert (=> bs!1246605 m!6413236))

(assert (=> bs!1246605 m!6412572))

(assert (=> bs!1246605 m!6412554))

(assert (=> bs!1246605 m!6412572))

(declare-fun m!6413238 () Bool)

(assert (=> bs!1246605 m!6413238))

(assert (=> b!5386686 d!1722793))

(declare-fun d!1722799 () Bool)

(assert (=> d!1722799 (= (isEmpty!33552 (t!374904 (exprs!5011 (h!68006 zl!343)))) ((_ is Nil!61557) (t!374904 (exprs!5011 (h!68006 zl!343)))))))

(assert (=> b!5386706 d!1722799))

(declare-fun bs!1246622 () Bool)

(declare-fun d!1722801 () Bool)

(assert (= bs!1246622 (and d!1722801 b!5386710)))

(declare-fun lambda!279471 () Int)

(assert (=> bs!1246622 (not (= lambda!279471 lambda!279432))))

(declare-fun bs!1246623 () Bool)

(assert (= bs!1246623 (and d!1722801 b!5386717)))

(assert (=> bs!1246623 (not (= lambda!279471 lambda!279426))))

(declare-fun bs!1246624 () Bool)

(assert (= bs!1246624 (and d!1722801 b!5386707)))

(assert (=> bs!1246624 (= lambda!279471 lambda!279428)))

(declare-fun bs!1246625 () Bool)

(assert (= bs!1246625 (and d!1722801 b!5387082)))

(assert (=> bs!1246625 (not (= lambda!279471 lambda!279452))))

(assert (=> bs!1246624 (not (= lambda!279471 lambda!279429))))

(assert (=> bs!1246623 (= (= lt!2194501 (regOne!30766 r!7292)) (= lambda!279471 lambda!279425))))

(assert (=> bs!1246622 (= (and (= s!2326 (_1!35629 lt!2194533)) (= lt!2194501 (reg!15456 (regOne!30766 r!7292))) (= (regTwo!30766 r!7292) lt!2194501)) (= lambda!279471 lambda!279430))))

(assert (=> bs!1246622 (not (= lambda!279471 lambda!279431))))

(declare-fun bs!1246626 () Bool)

(assert (= bs!1246626 (and d!1722801 b!5387087)))

(assert (=> bs!1246626 (not (= lambda!279471 lambda!279454))))

(assert (=> d!1722801 true))

(assert (=> d!1722801 true))

(assert (=> d!1722801 true))

(assert (=> d!1722801 (= (isDefined!11941 (findConcatSeparation!1652 lt!2194501 (regTwo!30766 r!7292) Nil!61556 s!2326 s!2326)) (Exists!2308 lambda!279471))))

(declare-fun lt!2194676 () Unit!154026)

(declare-fun choose!40515 (Regex!15127 Regex!15127 List!61680) Unit!154026)

(assert (=> d!1722801 (= lt!2194676 (choose!40515 lt!2194501 (regTwo!30766 r!7292) s!2326))))

(assert (=> d!1722801 (validRegex!6863 lt!2194501)))

(assert (=> d!1722801 (= (lemmaFindConcatSeparationEquivalentToExists!1416 lt!2194501 (regTwo!30766 r!7292) s!2326) lt!2194676)))

(declare-fun bs!1246627 () Bool)

(assert (= bs!1246627 d!1722801))

(assert (=> bs!1246627 m!6412602))

(declare-fun m!6413248 () Bool)

(assert (=> bs!1246627 m!6413248))

(assert (=> bs!1246627 m!6412602))

(declare-fun m!6413250 () Bool)

(assert (=> bs!1246627 m!6413250))

(declare-fun m!6413252 () Bool)

(assert (=> bs!1246627 m!6413252))

(assert (=> bs!1246627 m!6412680))

(assert (=> b!5386707 d!1722801))

(declare-fun d!1722807 () Bool)

(declare-fun choose!40516 (Int) Bool)

(assert (=> d!1722807 (= (Exists!2308 lambda!279429) (choose!40516 lambda!279429))))

(declare-fun bs!1246628 () Bool)

(assert (= bs!1246628 d!1722807))

(declare-fun m!6413254 () Bool)

(assert (=> bs!1246628 m!6413254))

(assert (=> b!5386707 d!1722807))

(declare-fun bs!1246633 () Bool)

(declare-fun d!1722809 () Bool)

(assert (= bs!1246633 (and d!1722809 d!1722801)))

(declare-fun lambda!279477 () Int)

(assert (=> bs!1246633 (= lambda!279477 lambda!279471)))

(declare-fun bs!1246636 () Bool)

(assert (= bs!1246636 (and d!1722809 b!5386710)))

(assert (=> bs!1246636 (not (= lambda!279477 lambda!279432))))

(declare-fun bs!1246637 () Bool)

(assert (= bs!1246637 (and d!1722809 b!5386717)))

(assert (=> bs!1246637 (not (= lambda!279477 lambda!279426))))

(declare-fun bs!1246639 () Bool)

(assert (= bs!1246639 (and d!1722809 b!5386707)))

(assert (=> bs!1246639 (= lambda!279477 lambda!279428)))

(declare-fun bs!1246641 () Bool)

(assert (= bs!1246641 (and d!1722809 b!5387082)))

(assert (=> bs!1246641 (not (= lambda!279477 lambda!279452))))

(assert (=> bs!1246639 (not (= lambda!279477 lambda!279429))))

(assert (=> bs!1246637 (= (= lt!2194501 (regOne!30766 r!7292)) (= lambda!279477 lambda!279425))))

(assert (=> bs!1246636 (= (and (= s!2326 (_1!35629 lt!2194533)) (= lt!2194501 (reg!15456 (regOne!30766 r!7292))) (= (regTwo!30766 r!7292) lt!2194501)) (= lambda!279477 lambda!279430))))

(assert (=> bs!1246636 (not (= lambda!279477 lambda!279431))))

(declare-fun bs!1246644 () Bool)

(assert (= bs!1246644 (and d!1722809 b!5387087)))

(assert (=> bs!1246644 (not (= lambda!279477 lambda!279454))))

(assert (=> d!1722809 true))

(assert (=> d!1722809 true))

(assert (=> d!1722809 true))

(declare-fun lambda!279478 () Int)

(assert (=> bs!1246633 (not (= lambda!279478 lambda!279471))))

(assert (=> bs!1246636 (= (and (= s!2326 (_1!35629 lt!2194533)) (= lt!2194501 (reg!15456 (regOne!30766 r!7292))) (= (regTwo!30766 r!7292) lt!2194501)) (= lambda!279478 lambda!279432))))

(assert (=> bs!1246637 (= (= lt!2194501 (regOne!30766 r!7292)) (= lambda!279478 lambda!279426))))

(assert (=> bs!1246639 (not (= lambda!279478 lambda!279428))))

(assert (=> bs!1246641 (not (= lambda!279478 lambda!279452))))

(assert (=> bs!1246639 (= lambda!279478 lambda!279429)))

(assert (=> bs!1246637 (not (= lambda!279478 lambda!279425))))

(assert (=> bs!1246636 (not (= lambda!279478 lambda!279430))))

(declare-fun bs!1246650 () Bool)

(assert (= bs!1246650 d!1722809))

(assert (=> bs!1246650 (not (= lambda!279478 lambda!279477))))

(assert (=> bs!1246636 (not (= lambda!279478 lambda!279431))))

(assert (=> bs!1246644 (= (= lt!2194501 (regOne!30766 r!7292)) (= lambda!279478 lambda!279454))))

(assert (=> d!1722809 true))

(assert (=> d!1722809 true))

(assert (=> d!1722809 true))

(assert (=> d!1722809 (= (Exists!2308 lambda!279477) (Exists!2308 lambda!279478))))

(declare-fun lt!2194683 () Unit!154026)

(declare-fun choose!40517 (Regex!15127 Regex!15127 List!61680) Unit!154026)

(assert (=> d!1722809 (= lt!2194683 (choose!40517 lt!2194501 (regTwo!30766 r!7292) s!2326))))

(assert (=> d!1722809 (validRegex!6863 lt!2194501)))

(assert (=> d!1722809 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!962 lt!2194501 (regTwo!30766 r!7292) s!2326) lt!2194683)))

(declare-fun m!6413288 () Bool)

(assert (=> bs!1246650 m!6413288))

(declare-fun m!6413290 () Bool)

(assert (=> bs!1246650 m!6413290))

(declare-fun m!6413292 () Bool)

(assert (=> bs!1246650 m!6413292))

(assert (=> bs!1246650 m!6412680))

(assert (=> b!5386707 d!1722809))

(declare-fun b!5387507 () Bool)

(declare-fun res!2288801 () Bool)

(declare-fun e!3341453 () Bool)

(assert (=> b!5387507 (=> (not res!2288801) (not e!3341453))))

(declare-fun lt!2194699 () Option!15238)

(assert (=> b!5387507 (= res!2288801 (matchR!7312 (regTwo!30766 r!7292) (_2!35629 (get!21199 lt!2194699))))))

(declare-fun b!5387512 () Bool)

(declare-fun res!2288811 () Bool)

(assert (=> b!5387512 (=> (not res!2288811) (not e!3341453))))

(assert (=> b!5387512 (= res!2288811 (matchR!7312 lt!2194501 (_1!35629 (get!21199 lt!2194699))))))

(declare-fun b!5387521 () Bool)

(declare-fun e!3341462 () Option!15238)

(declare-fun e!3341461 () Option!15238)

(assert (=> b!5387521 (= e!3341462 e!3341461)))

(declare-fun c!938829 () Bool)

(assert (=> b!5387521 (= c!938829 ((_ is Nil!61556) s!2326))))

(declare-fun b!5387523 () Bool)

(declare-fun e!3341455 () Bool)

(assert (=> b!5387523 (= e!3341455 (not (isDefined!11941 lt!2194699)))))

(declare-fun b!5387525 () Bool)

(declare-fun e!3341458 () Bool)

(assert (=> b!5387525 (= e!3341458 (matchR!7312 (regTwo!30766 r!7292) s!2326))))

(declare-fun b!5387526 () Bool)

(assert (=> b!5387526 (= e!3341462 (Some!15237 (tuple2!64653 Nil!61556 s!2326)))))

(declare-fun b!5387528 () Bool)

(assert (=> b!5387528 (= e!3341453 (= (++!13439 (_1!35629 (get!21199 lt!2194699)) (_2!35629 (get!21199 lt!2194699))) s!2326))))

(declare-fun b!5387529 () Bool)

(declare-fun lt!2194698 () Unit!154026)

(declare-fun lt!2194701 () Unit!154026)

(assert (=> b!5387529 (= lt!2194698 lt!2194701)))

(assert (=> b!5387529 (= (++!13439 (++!13439 Nil!61556 (Cons!61556 (h!68004 s!2326) Nil!61556)) (t!374903 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1813 (List!61680 C!30524 List!61680 List!61680) Unit!154026)

(assert (=> b!5387529 (= lt!2194701 (lemmaMoveElementToOtherListKeepsConcatEq!1813 Nil!61556 (h!68004 s!2326) (t!374903 s!2326) s!2326))))

(assert (=> b!5387529 (= e!3341461 (findConcatSeparation!1652 lt!2194501 (regTwo!30766 r!7292) (++!13439 Nil!61556 (Cons!61556 (h!68004 s!2326) Nil!61556)) (t!374903 s!2326) s!2326))))

(declare-fun b!5387519 () Bool)

(assert (=> b!5387519 (= e!3341461 None!15237)))

(declare-fun d!1722823 () Bool)

(assert (=> d!1722823 e!3341455))

(declare-fun res!2288813 () Bool)

(assert (=> d!1722823 (=> res!2288813 e!3341455)))

(assert (=> d!1722823 (= res!2288813 e!3341453)))

(declare-fun res!2288805 () Bool)

(assert (=> d!1722823 (=> (not res!2288805) (not e!3341453))))

(assert (=> d!1722823 (= res!2288805 (isDefined!11941 lt!2194699))))

(assert (=> d!1722823 (= lt!2194699 e!3341462)))

(declare-fun c!938833 () Bool)

(assert (=> d!1722823 (= c!938833 e!3341458)))

(declare-fun res!2288802 () Bool)

(assert (=> d!1722823 (=> (not res!2288802) (not e!3341458))))

(assert (=> d!1722823 (= res!2288802 (matchR!7312 lt!2194501 Nil!61556))))

(assert (=> d!1722823 (validRegex!6863 lt!2194501)))

(assert (=> d!1722823 (= (findConcatSeparation!1652 lt!2194501 (regTwo!30766 r!7292) Nil!61556 s!2326 s!2326) lt!2194699)))

(assert (= (and d!1722823 res!2288802) b!5387525))

(assert (= (and d!1722823 c!938833) b!5387526))

(assert (= (and d!1722823 (not c!938833)) b!5387521))

(assert (= (and b!5387521 c!938829) b!5387519))

(assert (= (and b!5387521 (not c!938829)) b!5387529))

(assert (= (and d!1722823 res!2288805) b!5387512))

(assert (= (and b!5387512 res!2288811) b!5387507))

(assert (= (and b!5387507 res!2288801) b!5387528))

(assert (= (and d!1722823 (not res!2288813)) b!5387523))

(declare-fun m!6413404 () Bool)

(assert (=> b!5387507 m!6413404))

(declare-fun m!6413406 () Bool)

(assert (=> b!5387507 m!6413406))

(declare-fun m!6413408 () Bool)

(assert (=> b!5387525 m!6413408))

(declare-fun m!6413410 () Bool)

(assert (=> b!5387529 m!6413410))

(assert (=> b!5387529 m!6413410))

(declare-fun m!6413412 () Bool)

(assert (=> b!5387529 m!6413412))

(declare-fun m!6413414 () Bool)

(assert (=> b!5387529 m!6413414))

(assert (=> b!5387529 m!6413410))

(declare-fun m!6413416 () Bool)

(assert (=> b!5387529 m!6413416))

(assert (=> b!5387528 m!6413404))

(declare-fun m!6413418 () Bool)

(assert (=> b!5387528 m!6413418))

(assert (=> b!5387512 m!6413404))

(declare-fun m!6413420 () Bool)

(assert (=> b!5387512 m!6413420))

(declare-fun m!6413422 () Bool)

(assert (=> d!1722823 m!6413422))

(declare-fun m!6413424 () Bool)

(assert (=> d!1722823 m!6413424))

(assert (=> d!1722823 m!6412680))

(assert (=> b!5387523 m!6413422))

(assert (=> b!5386707 d!1722823))

(declare-fun d!1722863 () Bool)

(assert (=> d!1722863 (= (get!21199 lt!2194513) (v!51266 lt!2194513))))

(assert (=> b!5386707 d!1722863))

(declare-fun d!1722867 () Bool)

(assert (=> d!1722867 (= (Exists!2308 lambda!279428) (choose!40516 lambda!279428))))

(declare-fun bs!1246669 () Bool)

(assert (= bs!1246669 d!1722867))

(declare-fun m!6413426 () Bool)

(assert (=> bs!1246669 m!6413426))

(assert (=> b!5386707 d!1722867))

(declare-fun d!1722869 () Bool)

(declare-fun isEmpty!33556 (Option!15238) Bool)

(assert (=> d!1722869 (= (isDefined!11941 lt!2194513) (not (isEmpty!33556 lt!2194513)))))

(declare-fun bs!1246670 () Bool)

(assert (= bs!1246670 d!1722869))

(declare-fun m!6413428 () Bool)

(assert (=> bs!1246670 m!6413428))

(assert (=> b!5386707 d!1722869))

(declare-fun b!5387530 () Bool)

(declare-fun e!3341466 () List!61680)

(assert (=> b!5387530 (= e!3341466 (_2!35629 lt!2194533))))

(declare-fun b!5387532 () Bool)

(declare-fun res!2288814 () Bool)

(declare-fun e!3341465 () Bool)

(assert (=> b!5387532 (=> (not res!2288814) (not e!3341465))))

(declare-fun lt!2194702 () List!61680)

(assert (=> b!5387532 (= res!2288814 (= (size!39813 lt!2194702) (+ (size!39813 (_1!35629 lt!2194533)) (size!39813 (_2!35629 lt!2194533)))))))

(declare-fun b!5387531 () Bool)

(assert (=> b!5387531 (= e!3341466 (Cons!61556 (h!68004 (_1!35629 lt!2194533)) (++!13439 (t!374903 (_1!35629 lt!2194533)) (_2!35629 lt!2194533))))))

(declare-fun d!1722871 () Bool)

(assert (=> d!1722871 e!3341465))

(declare-fun res!2288815 () Bool)

(assert (=> d!1722871 (=> (not res!2288815) (not e!3341465))))

(assert (=> d!1722871 (= res!2288815 (= (content!11016 lt!2194702) ((_ map or) (content!11016 (_1!35629 lt!2194533)) (content!11016 (_2!35629 lt!2194533)))))))

(assert (=> d!1722871 (= lt!2194702 e!3341466)))

(declare-fun c!938834 () Bool)

(assert (=> d!1722871 (= c!938834 ((_ is Nil!61556) (_1!35629 lt!2194533)))))

(assert (=> d!1722871 (= (++!13439 (_1!35629 lt!2194533) (_2!35629 lt!2194533)) lt!2194702)))

(declare-fun b!5387533 () Bool)

(assert (=> b!5387533 (= e!3341465 (or (not (= (_2!35629 lt!2194533) Nil!61556)) (= lt!2194702 (_1!35629 lt!2194533))))))

(assert (= (and d!1722871 c!938834) b!5387530))

(assert (= (and d!1722871 (not c!938834)) b!5387531))

(assert (= (and d!1722871 res!2288815) b!5387532))

(assert (= (and b!5387532 res!2288814) b!5387533))

(declare-fun m!6413430 () Bool)

(assert (=> b!5387532 m!6413430))

(declare-fun m!6413432 () Bool)

(assert (=> b!5387532 m!6413432))

(assert (=> b!5387532 m!6413208))

(declare-fun m!6413434 () Bool)

(assert (=> b!5387531 m!6413434))

(declare-fun m!6413436 () Bool)

(assert (=> d!1722871 m!6413436))

(declare-fun m!6413438 () Bool)

(assert (=> d!1722871 m!6413438))

(assert (=> d!1722871 m!6413216))

(assert (=> b!5386707 d!1722871))

(declare-fun d!1722873 () Bool)

(declare-fun lt!2194703 () Regex!15127)

(assert (=> d!1722873 (validRegex!6863 lt!2194703)))

(assert (=> d!1722873 (= lt!2194703 (generalisedUnion!1056 (unfocusZipperList!569 zl!343)))))

(assert (=> d!1722873 (= (unfocusZipper!869 zl!343) lt!2194703)))

(declare-fun bs!1246671 () Bool)

(assert (= bs!1246671 d!1722873))

(declare-fun m!6413440 () Bool)

(assert (=> bs!1246671 m!6413440))

(assert (=> bs!1246671 m!6412596))

(assert (=> bs!1246671 m!6412596))

(assert (=> bs!1246671 m!6412598))

(assert (=> b!5386727 d!1722873))

(declare-fun d!1722875 () Bool)

(declare-fun c!938835 () Bool)

(assert (=> d!1722875 (= c!938835 (isEmpty!33554 s!2326))))

(declare-fun e!3341467 () Bool)

(assert (=> d!1722875 (= (matchZipper!1371 lt!2194544 s!2326) e!3341467)))

(declare-fun b!5387534 () Bool)

(assert (=> b!5387534 (= e!3341467 (nullableZipper!1418 lt!2194544))))

(declare-fun b!5387535 () Bool)

(assert (=> b!5387535 (= e!3341467 (matchZipper!1371 (derivationStepZipper!1366 lt!2194544 (head!11553 s!2326)) (tail!10650 s!2326)))))

(assert (= (and d!1722875 c!938835) b!5387534))

(assert (= (and d!1722875 (not c!938835)) b!5387535))

(assert (=> d!1722875 m!6412976))

(declare-fun m!6413442 () Bool)

(assert (=> b!5387534 m!6413442))

(assert (=> b!5387535 m!6412980))

(assert (=> b!5387535 m!6412980))

(declare-fun m!6413444 () Bool)

(assert (=> b!5387535 m!6413444))

(assert (=> b!5387535 m!6412984))

(assert (=> b!5387535 m!6413444))

(assert (=> b!5387535 m!6412984))

(declare-fun m!6413446 () Bool)

(assert (=> b!5387535 m!6413446))

(assert (=> b!5386687 d!1722875))

(declare-fun d!1722877 () Bool)

(declare-fun c!938836 () Bool)

(assert (=> d!1722877 (= c!938836 (isEmpty!33554 (t!374903 s!2326)))))

(declare-fun e!3341468 () Bool)

(assert (=> d!1722877 (= (matchZipper!1371 lt!2194521 (t!374903 s!2326)) e!3341468)))

(declare-fun b!5387536 () Bool)

(assert (=> b!5387536 (= e!3341468 (nullableZipper!1418 lt!2194521))))

(declare-fun b!5387537 () Bool)

(assert (=> b!5387537 (= e!3341468 (matchZipper!1371 (derivationStepZipper!1366 lt!2194521 (head!11553 (t!374903 s!2326))) (tail!10650 (t!374903 s!2326))))))

(assert (= (and d!1722877 c!938836) b!5387536))

(assert (= (and d!1722877 (not c!938836)) b!5387537))

(declare-fun m!6413448 () Bool)

(assert (=> d!1722877 m!6413448))

(declare-fun m!6413450 () Bool)

(assert (=> b!5387536 m!6413450))

(declare-fun m!6413452 () Bool)

(assert (=> b!5387537 m!6413452))

(assert (=> b!5387537 m!6413452))

(declare-fun m!6413454 () Bool)

(assert (=> b!5387537 m!6413454))

(declare-fun m!6413456 () Bool)

(assert (=> b!5387537 m!6413456))

(assert (=> b!5387537 m!6413454))

(assert (=> b!5387537 m!6413456))

(declare-fun m!6413458 () Bool)

(assert (=> b!5387537 m!6413458))

(assert (=> b!5386687 d!1722877))

(declare-fun d!1722879 () Bool)

(assert (=> d!1722879 (= (isEmpty!33553 (t!374905 zl!343)) ((_ is Nil!61558) (t!374905 zl!343)))))

(assert (=> b!5386708 d!1722879))

(declare-fun d!1722881 () Bool)

(declare-fun lt!2194704 () Regex!15127)

(assert (=> d!1722881 (validRegex!6863 lt!2194704)))

(assert (=> d!1722881 (= lt!2194704 (generalisedUnion!1056 (unfocusZipperList!569 lt!2194528)))))

(assert (=> d!1722881 (= (unfocusZipper!869 lt!2194528) lt!2194704)))

(declare-fun bs!1246672 () Bool)

(assert (= bs!1246672 d!1722881))

(declare-fun m!6413460 () Bool)

(assert (=> bs!1246672 m!6413460))

(declare-fun m!6413462 () Bool)

(assert (=> bs!1246672 m!6413462))

(assert (=> bs!1246672 m!6413462))

(declare-fun m!6413464 () Bool)

(assert (=> bs!1246672 m!6413464))

(assert (=> b!5386709 d!1722881))

(declare-fun d!1722883 () Bool)

(declare-fun e!3341483 () Bool)

(assert (=> d!1722883 (= (matchZipper!1371 ((_ map or) lt!2194507 lt!2194518) (t!374903 s!2326)) e!3341483)))

(declare-fun res!2288822 () Bool)

(assert (=> d!1722883 (=> res!2288822 e!3341483)))

(assert (=> d!1722883 (= res!2288822 (matchZipper!1371 lt!2194507 (t!374903 s!2326)))))

(declare-fun lt!2194709 () Unit!154026)

(declare-fun choose!40518 ((InoxSet Context!9022) (InoxSet Context!9022) List!61680) Unit!154026)

(assert (=> d!1722883 (= lt!2194709 (choose!40518 lt!2194507 lt!2194518 (t!374903 s!2326)))))

(assert (=> d!1722883 (= (lemmaZipperConcatMatchesSameAsBothZippers!364 lt!2194507 lt!2194518 (t!374903 s!2326)) lt!2194709)))

(declare-fun b!5387560 () Bool)

(assert (=> b!5387560 (= e!3341483 (matchZipper!1371 lt!2194518 (t!374903 s!2326)))))

(assert (= (and d!1722883 (not res!2288822)) b!5387560))

(assert (=> d!1722883 m!6412472))

(assert (=> d!1722883 m!6412470))

(declare-fun m!6413466 () Bool)

(assert (=> d!1722883 m!6413466))

(assert (=> b!5387560 m!6412576))

(assert (=> b!5386729 d!1722883))

(declare-fun d!1722885 () Bool)

(declare-fun c!938845 () Bool)

(assert (=> d!1722885 (= c!938845 (isEmpty!33554 (t!374903 s!2326)))))

(declare-fun e!3341484 () Bool)

(assert (=> d!1722885 (= (matchZipper!1371 lt!2194507 (t!374903 s!2326)) e!3341484)))

(declare-fun b!5387561 () Bool)

(assert (=> b!5387561 (= e!3341484 (nullableZipper!1418 lt!2194507))))

(declare-fun b!5387562 () Bool)

(assert (=> b!5387562 (= e!3341484 (matchZipper!1371 (derivationStepZipper!1366 lt!2194507 (head!11553 (t!374903 s!2326))) (tail!10650 (t!374903 s!2326))))))

(assert (= (and d!1722885 c!938845) b!5387561))

(assert (= (and d!1722885 (not c!938845)) b!5387562))

(assert (=> d!1722885 m!6413448))

(declare-fun m!6413468 () Bool)

(assert (=> b!5387561 m!6413468))

(assert (=> b!5387562 m!6413452))

(assert (=> b!5387562 m!6413452))

(declare-fun m!6413470 () Bool)

(assert (=> b!5387562 m!6413470))

(assert (=> b!5387562 m!6413456))

(assert (=> b!5387562 m!6413470))

(assert (=> b!5387562 m!6413456))

(declare-fun m!6413472 () Bool)

(assert (=> b!5387562 m!6413472))

(assert (=> b!5386729 d!1722885))

(declare-fun d!1722887 () Bool)

(declare-fun c!938850 () Bool)

(assert (=> d!1722887 (= c!938850 (isEmpty!33554 (t!374903 s!2326)))))

(declare-fun e!3341491 () Bool)

(assert (=> d!1722887 (= (matchZipper!1371 ((_ map or) lt!2194507 lt!2194518) (t!374903 s!2326)) e!3341491)))

(declare-fun b!5387573 () Bool)

(assert (=> b!5387573 (= e!3341491 (nullableZipper!1418 ((_ map or) lt!2194507 lt!2194518)))))

(declare-fun b!5387574 () Bool)

(assert (=> b!5387574 (= e!3341491 (matchZipper!1371 (derivationStepZipper!1366 ((_ map or) lt!2194507 lt!2194518) (head!11553 (t!374903 s!2326))) (tail!10650 (t!374903 s!2326))))))

(assert (= (and d!1722887 c!938850) b!5387573))

(assert (= (and d!1722887 (not c!938850)) b!5387574))

(assert (=> d!1722887 m!6413448))

(declare-fun m!6413474 () Bool)

(assert (=> b!5387573 m!6413474))

(assert (=> b!5387574 m!6413452))

(assert (=> b!5387574 m!6413452))

(declare-fun m!6413476 () Bool)

(assert (=> b!5387574 m!6413476))

(assert (=> b!5387574 m!6413456))

(assert (=> b!5387574 m!6413476))

(assert (=> b!5387574 m!6413456))

(declare-fun m!6413478 () Bool)

(assert (=> b!5387574 m!6413478))

(assert (=> b!5386729 d!1722887))

(declare-fun d!1722889 () Bool)

(assert (=> d!1722889 (= (Exists!2308 lambda!279432) (choose!40516 lambda!279432))))

(declare-fun bs!1246677 () Bool)

(assert (= bs!1246677 d!1722889))

(declare-fun m!6413480 () Bool)

(assert (=> bs!1246677 m!6413480))

(assert (=> b!5386710 d!1722889))

(declare-fun d!1722891 () Bool)

(assert (=> d!1722891 (= (isDefined!11941 lt!2194506) (not (isEmpty!33556 lt!2194506)))))

(declare-fun bs!1246678 () Bool)

(assert (= bs!1246678 d!1722891))

(declare-fun m!6413482 () Bool)

(assert (=> bs!1246678 m!6413482))

(assert (=> b!5386710 d!1722891))

(declare-fun bs!1246679 () Bool)

(declare-fun d!1722893 () Bool)

(assert (= bs!1246679 (and d!1722893 d!1722801)))

(declare-fun lambda!279487 () Int)

(assert (=> bs!1246679 (= (and (= (_1!35629 lt!2194533) s!2326) (= (reg!15456 (regOne!30766 r!7292)) lt!2194501) (= lt!2194501 (regTwo!30766 r!7292))) (= lambda!279487 lambda!279471))))

(declare-fun bs!1246680 () Bool)

(assert (= bs!1246680 (and d!1722893 b!5386710)))

(assert (=> bs!1246680 (not (= lambda!279487 lambda!279432))))

(declare-fun bs!1246681 () Bool)

(assert (= bs!1246681 (and d!1722893 b!5386717)))

(assert (=> bs!1246681 (not (= lambda!279487 lambda!279426))))

(declare-fun bs!1246682 () Bool)

(assert (= bs!1246682 (and d!1722893 b!5386707)))

(assert (=> bs!1246682 (= (and (= (_1!35629 lt!2194533) s!2326) (= (reg!15456 (regOne!30766 r!7292)) lt!2194501) (= lt!2194501 (regTwo!30766 r!7292))) (= lambda!279487 lambda!279428))))

(declare-fun bs!1246683 () Bool)

(assert (= bs!1246683 (and d!1722893 b!5387082)))

(assert (=> bs!1246683 (not (= lambda!279487 lambda!279452))))

(assert (=> bs!1246682 (not (= lambda!279487 lambda!279429))))

(assert (=> bs!1246681 (= (and (= (_1!35629 lt!2194533) s!2326) (= (reg!15456 (regOne!30766 r!7292)) (regOne!30766 r!7292)) (= lt!2194501 (regTwo!30766 r!7292))) (= lambda!279487 lambda!279425))))

(declare-fun bs!1246684 () Bool)

(assert (= bs!1246684 (and d!1722893 d!1722809)))

(assert (=> bs!1246684 (not (= lambda!279487 lambda!279478))))

(assert (=> bs!1246680 (= lambda!279487 lambda!279430)))

(assert (=> bs!1246684 (= (and (= (_1!35629 lt!2194533) s!2326) (= (reg!15456 (regOne!30766 r!7292)) lt!2194501) (= lt!2194501 (regTwo!30766 r!7292))) (= lambda!279487 lambda!279477))))

(assert (=> bs!1246680 (not (= lambda!279487 lambda!279431))))

(declare-fun bs!1246685 () Bool)

(assert (= bs!1246685 (and d!1722893 b!5387087)))

(assert (=> bs!1246685 (not (= lambda!279487 lambda!279454))))

(assert (=> d!1722893 true))

(assert (=> d!1722893 true))

(assert (=> d!1722893 true))

(declare-fun lambda!279488 () Int)

(assert (=> bs!1246679 (not (= lambda!279488 lambda!279471))))

(assert (=> bs!1246680 (= lambda!279488 lambda!279432)))

(assert (=> bs!1246681 (= (and (= (_1!35629 lt!2194533) s!2326) (= (reg!15456 (regOne!30766 r!7292)) (regOne!30766 r!7292)) (= lt!2194501 (regTwo!30766 r!7292))) (= lambda!279488 lambda!279426))))

(assert (=> bs!1246682 (not (= lambda!279488 lambda!279428))))

(assert (=> bs!1246683 (not (= lambda!279488 lambda!279452))))

(assert (=> bs!1246682 (= (and (= (_1!35629 lt!2194533) s!2326) (= (reg!15456 (regOne!30766 r!7292)) lt!2194501) (= lt!2194501 (regTwo!30766 r!7292))) (= lambda!279488 lambda!279429))))

(assert (=> bs!1246681 (not (= lambda!279488 lambda!279425))))

(assert (=> bs!1246684 (= (and (= (_1!35629 lt!2194533) s!2326) (= (reg!15456 (regOne!30766 r!7292)) lt!2194501) (= lt!2194501 (regTwo!30766 r!7292))) (= lambda!279488 lambda!279478))))

(assert (=> bs!1246680 (not (= lambda!279488 lambda!279430))))

(assert (=> bs!1246684 (not (= lambda!279488 lambda!279477))))

(declare-fun bs!1246686 () Bool)

(assert (= bs!1246686 d!1722893))

(assert (=> bs!1246686 (not (= lambda!279488 lambda!279487))))

(assert (=> bs!1246680 (not (= lambda!279488 lambda!279431))))

(assert (=> bs!1246685 (= (and (= (_1!35629 lt!2194533) s!2326) (= (reg!15456 (regOne!30766 r!7292)) (regOne!30766 r!7292)) (= lt!2194501 (regTwo!30766 r!7292))) (= lambda!279488 lambda!279454))))

(assert (=> d!1722893 true))

(assert (=> d!1722893 true))

(assert (=> d!1722893 true))

(assert (=> d!1722893 (= (Exists!2308 lambda!279487) (Exists!2308 lambda!279488))))

(declare-fun lt!2194711 () Unit!154026)

(assert (=> d!1722893 (= lt!2194711 (choose!40517 (reg!15456 (regOne!30766 r!7292)) lt!2194501 (_1!35629 lt!2194533)))))

(assert (=> d!1722893 (validRegex!6863 (reg!15456 (regOne!30766 r!7292)))))

(assert (=> d!1722893 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!962 (reg!15456 (regOne!30766 r!7292)) lt!2194501 (_1!35629 lt!2194533)) lt!2194711)))

(declare-fun m!6413504 () Bool)

(assert (=> bs!1246686 m!6413504))

(declare-fun m!6413506 () Bool)

(assert (=> bs!1246686 m!6413506))

(declare-fun m!6413508 () Bool)

(assert (=> bs!1246686 m!6413508))

(assert (=> bs!1246686 m!6412696))

(assert (=> b!5386710 d!1722893))

(declare-fun d!1722897 () Bool)

(assert (=> d!1722897 (= (Exists!2308 lambda!279430) (choose!40516 lambda!279430))))

(declare-fun bs!1246688 () Bool)

(assert (= bs!1246688 d!1722897))

(declare-fun m!6413510 () Bool)

(assert (=> bs!1246688 m!6413510))

(assert (=> b!5386710 d!1722897))

(declare-fun bs!1246693 () Bool)

(declare-fun d!1722899 () Bool)

(assert (= bs!1246693 (and d!1722899 d!1722801)))

(declare-fun lambda!279492 () Int)

(assert (=> bs!1246693 (= (and (= (_1!35629 lt!2194533) s!2326) (= (reg!15456 (regOne!30766 r!7292)) lt!2194501) (= lt!2194501 (regTwo!30766 r!7292))) (= lambda!279492 lambda!279471))))

(declare-fun bs!1246694 () Bool)

(assert (= bs!1246694 (and d!1722899 d!1722893)))

(assert (=> bs!1246694 (not (= lambda!279492 lambda!279488))))

(declare-fun bs!1246695 () Bool)

(assert (= bs!1246695 (and d!1722899 b!5386710)))

(assert (=> bs!1246695 (not (= lambda!279492 lambda!279432))))

(declare-fun bs!1246696 () Bool)

(assert (= bs!1246696 (and d!1722899 b!5386717)))

(assert (=> bs!1246696 (not (= lambda!279492 lambda!279426))))

(declare-fun bs!1246697 () Bool)

(assert (= bs!1246697 (and d!1722899 b!5386707)))

(assert (=> bs!1246697 (= (and (= (_1!35629 lt!2194533) s!2326) (= (reg!15456 (regOne!30766 r!7292)) lt!2194501) (= lt!2194501 (regTwo!30766 r!7292))) (= lambda!279492 lambda!279428))))

(declare-fun bs!1246698 () Bool)

(assert (= bs!1246698 (and d!1722899 b!5387082)))

(assert (=> bs!1246698 (not (= lambda!279492 lambda!279452))))

(assert (=> bs!1246697 (not (= lambda!279492 lambda!279429))))

(assert (=> bs!1246696 (= (and (= (_1!35629 lt!2194533) s!2326) (= (reg!15456 (regOne!30766 r!7292)) (regOne!30766 r!7292)) (= lt!2194501 (regTwo!30766 r!7292))) (= lambda!279492 lambda!279425))))

(declare-fun bs!1246699 () Bool)

(assert (= bs!1246699 (and d!1722899 d!1722809)))

(assert (=> bs!1246699 (not (= lambda!279492 lambda!279478))))

(assert (=> bs!1246695 (= lambda!279492 lambda!279430)))

(assert (=> bs!1246699 (= (and (= (_1!35629 lt!2194533) s!2326) (= (reg!15456 (regOne!30766 r!7292)) lt!2194501) (= lt!2194501 (regTwo!30766 r!7292))) (= lambda!279492 lambda!279477))))

(assert (=> bs!1246694 (= lambda!279492 lambda!279487)))

(assert (=> bs!1246695 (not (= lambda!279492 lambda!279431))))

(declare-fun bs!1246700 () Bool)

(assert (= bs!1246700 (and d!1722899 b!5387087)))

(assert (=> bs!1246700 (not (= lambda!279492 lambda!279454))))

(assert (=> d!1722899 true))

(assert (=> d!1722899 true))

(assert (=> d!1722899 true))

(assert (=> d!1722899 (= (isDefined!11941 (findConcatSeparation!1652 (reg!15456 (regOne!30766 r!7292)) lt!2194501 Nil!61556 (_1!35629 lt!2194533) (_1!35629 lt!2194533))) (Exists!2308 lambda!279492))))

(declare-fun lt!2194715 () Unit!154026)

(assert (=> d!1722899 (= lt!2194715 (choose!40515 (reg!15456 (regOne!30766 r!7292)) lt!2194501 (_1!35629 lt!2194533)))))

(assert (=> d!1722899 (validRegex!6863 (reg!15456 (regOne!30766 r!7292)))))

(assert (=> d!1722899 (= (lemmaFindConcatSeparationEquivalentToExists!1416 (reg!15456 (regOne!30766 r!7292)) lt!2194501 (_1!35629 lt!2194533)) lt!2194715)))

(declare-fun bs!1246701 () Bool)

(assert (= bs!1246701 d!1722899))

(assert (=> bs!1246701 m!6412550))

(declare-fun m!6413516 () Bool)

(assert (=> bs!1246701 m!6413516))

(assert (=> bs!1246701 m!6412550))

(declare-fun m!6413518 () Bool)

(assert (=> bs!1246701 m!6413518))

(declare-fun m!6413520 () Bool)

(assert (=> bs!1246701 m!6413520))

(assert (=> bs!1246701 m!6412696))

(assert (=> b!5386710 d!1722899))

(declare-fun bs!1246703 () Bool)

(declare-fun d!1722905 () Bool)

(assert (= bs!1246703 (and d!1722905 d!1722801)))

(declare-fun lambda!279497 () Int)

(assert (=> bs!1246703 (= (and (= (_1!35629 lt!2194533) s!2326) (= (reg!15456 (regOne!30766 r!7292)) lt!2194501) (= (Star!15127 (reg!15456 (regOne!30766 r!7292))) (regTwo!30766 r!7292))) (= lambda!279497 lambda!279471))))

(declare-fun bs!1246704 () Bool)

(assert (= bs!1246704 (and d!1722905 d!1722893)))

(assert (=> bs!1246704 (not (= lambda!279497 lambda!279488))))

(declare-fun bs!1246705 () Bool)

(assert (= bs!1246705 (and d!1722905 b!5386710)))

(assert (=> bs!1246705 (not (= lambda!279497 lambda!279432))))

(declare-fun bs!1246706 () Bool)

(assert (= bs!1246706 (and d!1722905 b!5386717)))

(assert (=> bs!1246706 (not (= lambda!279497 lambda!279426))))

(declare-fun bs!1246707 () Bool)

(assert (= bs!1246707 (and d!1722905 b!5386707)))

(assert (=> bs!1246707 (= (and (= (_1!35629 lt!2194533) s!2326) (= (reg!15456 (regOne!30766 r!7292)) lt!2194501) (= (Star!15127 (reg!15456 (regOne!30766 r!7292))) (regTwo!30766 r!7292))) (= lambda!279497 lambda!279428))))

(declare-fun bs!1246708 () Bool)

(assert (= bs!1246708 (and d!1722905 b!5387082)))

(assert (=> bs!1246708 (not (= lambda!279497 lambda!279452))))

(assert (=> bs!1246707 (not (= lambda!279497 lambda!279429))))

(assert (=> bs!1246706 (= (and (= (_1!35629 lt!2194533) s!2326) (= (reg!15456 (regOne!30766 r!7292)) (regOne!30766 r!7292)) (= (Star!15127 (reg!15456 (regOne!30766 r!7292))) (regTwo!30766 r!7292))) (= lambda!279497 lambda!279425))))

(declare-fun bs!1246709 () Bool)

(assert (= bs!1246709 (and d!1722905 d!1722899)))

(assert (=> bs!1246709 (= (= (Star!15127 (reg!15456 (regOne!30766 r!7292))) lt!2194501) (= lambda!279497 lambda!279492))))

(declare-fun bs!1246710 () Bool)

(assert (= bs!1246710 (and d!1722905 d!1722809)))

(assert (=> bs!1246710 (not (= lambda!279497 lambda!279478))))

(assert (=> bs!1246705 (= (= (Star!15127 (reg!15456 (regOne!30766 r!7292))) lt!2194501) (= lambda!279497 lambda!279430))))

(assert (=> bs!1246710 (= (and (= (_1!35629 lt!2194533) s!2326) (= (reg!15456 (regOne!30766 r!7292)) lt!2194501) (= (Star!15127 (reg!15456 (regOne!30766 r!7292))) (regTwo!30766 r!7292))) (= lambda!279497 lambda!279477))))

(assert (=> bs!1246704 (= (= (Star!15127 (reg!15456 (regOne!30766 r!7292))) lt!2194501) (= lambda!279497 lambda!279487))))

(assert (=> bs!1246705 (not (= lambda!279497 lambda!279431))))

(declare-fun bs!1246711 () Bool)

(assert (= bs!1246711 (and d!1722905 b!5387087)))

(assert (=> bs!1246711 (not (= lambda!279497 lambda!279454))))

(assert (=> d!1722905 true))

(assert (=> d!1722905 true))

(declare-fun lambda!279498 () Int)

(assert (=> bs!1246703 (not (= lambda!279498 lambda!279471))))

(assert (=> bs!1246704 (not (= lambda!279498 lambda!279488))))

(assert (=> bs!1246705 (not (= lambda!279498 lambda!279432))))

(assert (=> bs!1246706 (not (= lambda!279498 lambda!279426))))

(assert (=> bs!1246708 (= (and (= (_1!35629 lt!2194533) s!2326) (= (reg!15456 (regOne!30766 r!7292)) (reg!15456 r!7292)) (= (Star!15127 (reg!15456 (regOne!30766 r!7292))) r!7292)) (= lambda!279498 lambda!279452))))

(assert (=> bs!1246707 (not (= lambda!279498 lambda!279429))))

(assert (=> bs!1246706 (not (= lambda!279498 lambda!279425))))

(assert (=> bs!1246709 (not (= lambda!279498 lambda!279492))))

(assert (=> bs!1246710 (not (= lambda!279498 lambda!279478))))

(assert (=> bs!1246705 (not (= lambda!279498 lambda!279430))))

(assert (=> bs!1246710 (not (= lambda!279498 lambda!279477))))

(assert (=> bs!1246704 (not (= lambda!279498 lambda!279487))))

(assert (=> bs!1246707 (not (= lambda!279498 lambda!279428))))

(declare-fun bs!1246712 () Bool)

(assert (= bs!1246712 d!1722905))

(assert (=> bs!1246712 (not (= lambda!279498 lambda!279497))))

(assert (=> bs!1246705 (= (= (Star!15127 (reg!15456 (regOne!30766 r!7292))) lt!2194501) (= lambda!279498 lambda!279431))))

(assert (=> bs!1246711 (not (= lambda!279498 lambda!279454))))

(assert (=> d!1722905 true))

(assert (=> d!1722905 true))

(assert (=> d!1722905 (= (Exists!2308 lambda!279497) (Exists!2308 lambda!279498))))

(declare-fun lt!2194728 () Unit!154026)

(declare-fun choose!40519 (Regex!15127 List!61680) Unit!154026)

(assert (=> d!1722905 (= lt!2194728 (choose!40519 (reg!15456 (regOne!30766 r!7292)) (_1!35629 lt!2194533)))))

(assert (=> d!1722905 (validRegex!6863 (reg!15456 (regOne!30766 r!7292)))))

(assert (=> d!1722905 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!392 (reg!15456 (regOne!30766 r!7292)) (_1!35629 lt!2194533)) lt!2194728)))

(declare-fun m!6413582 () Bool)

(assert (=> bs!1246712 m!6413582))

(declare-fun m!6413584 () Bool)

(assert (=> bs!1246712 m!6413584))

(declare-fun m!6413586 () Bool)

(assert (=> bs!1246712 m!6413586))

(assert (=> bs!1246712 m!6412696))

(assert (=> b!5386710 d!1722905))

(declare-fun d!1722923 () Bool)

(assert (=> d!1722923 (= (matchR!7312 lt!2194501 (_1!35629 lt!2194533)) (matchRSpec!2230 lt!2194501 (_1!35629 lt!2194533)))))

(declare-fun lt!2194731 () Unit!154026)

(assert (=> d!1722923 (= lt!2194731 (choose!40503 lt!2194501 (_1!35629 lt!2194533)))))

(assert (=> d!1722923 (validRegex!6863 lt!2194501)))

(assert (=> d!1722923 (= (mainMatchTheorem!2230 lt!2194501 (_1!35629 lt!2194533)) lt!2194731)))

(declare-fun bs!1246713 () Bool)

(assert (= bs!1246713 d!1722923))

(assert (=> bs!1246713 m!6412594))

(assert (=> bs!1246713 m!6412556))

(declare-fun m!6413588 () Bool)

(assert (=> bs!1246713 m!6413588))

(assert (=> bs!1246713 m!6412680))

(assert (=> b!5386710 d!1722923))

(declare-fun b!5387618 () Bool)

(declare-fun res!2288850 () Bool)

(declare-fun e!3341514 () Bool)

(assert (=> b!5387618 (=> (not res!2288850) (not e!3341514))))

(declare-fun lt!2194733 () Option!15238)

(assert (=> b!5387618 (= res!2288850 (matchR!7312 lt!2194501 (_2!35629 (get!21199 lt!2194733))))))

(declare-fun b!5387619 () Bool)

(declare-fun res!2288853 () Bool)

(assert (=> b!5387619 (=> (not res!2288853) (not e!3341514))))

(assert (=> b!5387619 (= res!2288853 (matchR!7312 (reg!15456 (regOne!30766 r!7292)) (_1!35629 (get!21199 lt!2194733))))))

(declare-fun b!5387621 () Bool)

(declare-fun e!3341518 () Option!15238)

(declare-fun e!3341517 () Option!15238)

(assert (=> b!5387621 (= e!3341518 e!3341517)))

(declare-fun c!938860 () Bool)

(assert (=> b!5387621 (= c!938860 ((_ is Nil!61556) (_1!35629 lt!2194533)))))

(declare-fun b!5387622 () Bool)

(declare-fun e!3341515 () Bool)

(assert (=> b!5387622 (= e!3341515 (not (isDefined!11941 lt!2194733)))))

(declare-fun b!5387623 () Bool)

(declare-fun e!3341516 () Bool)

(assert (=> b!5387623 (= e!3341516 (matchR!7312 lt!2194501 (_1!35629 lt!2194533)))))

(declare-fun b!5387624 () Bool)

(assert (=> b!5387624 (= e!3341518 (Some!15237 (tuple2!64653 Nil!61556 (_1!35629 lt!2194533))))))

(declare-fun b!5387625 () Bool)

(assert (=> b!5387625 (= e!3341514 (= (++!13439 (_1!35629 (get!21199 lt!2194733)) (_2!35629 (get!21199 lt!2194733))) (_1!35629 lt!2194533)))))

(declare-fun b!5387626 () Bool)

(declare-fun lt!2194732 () Unit!154026)

(declare-fun lt!2194734 () Unit!154026)

(assert (=> b!5387626 (= lt!2194732 lt!2194734)))

(assert (=> b!5387626 (= (++!13439 (++!13439 Nil!61556 (Cons!61556 (h!68004 (_1!35629 lt!2194533)) Nil!61556)) (t!374903 (_1!35629 lt!2194533))) (_1!35629 lt!2194533))))

(assert (=> b!5387626 (= lt!2194734 (lemmaMoveElementToOtherListKeepsConcatEq!1813 Nil!61556 (h!68004 (_1!35629 lt!2194533)) (t!374903 (_1!35629 lt!2194533)) (_1!35629 lt!2194533)))))

(assert (=> b!5387626 (= e!3341517 (findConcatSeparation!1652 (reg!15456 (regOne!30766 r!7292)) lt!2194501 (++!13439 Nil!61556 (Cons!61556 (h!68004 (_1!35629 lt!2194533)) Nil!61556)) (t!374903 (_1!35629 lt!2194533)) (_1!35629 lt!2194533)))))

(declare-fun b!5387620 () Bool)

(assert (=> b!5387620 (= e!3341517 None!15237)))

(declare-fun d!1722925 () Bool)

(assert (=> d!1722925 e!3341515))

(declare-fun res!2288854 () Bool)

(assert (=> d!1722925 (=> res!2288854 e!3341515)))

(assert (=> d!1722925 (= res!2288854 e!3341514)))

(declare-fun res!2288852 () Bool)

(assert (=> d!1722925 (=> (not res!2288852) (not e!3341514))))

(assert (=> d!1722925 (= res!2288852 (isDefined!11941 lt!2194733))))

(assert (=> d!1722925 (= lt!2194733 e!3341518)))

(declare-fun c!938861 () Bool)

(assert (=> d!1722925 (= c!938861 e!3341516)))

(declare-fun res!2288851 () Bool)

(assert (=> d!1722925 (=> (not res!2288851) (not e!3341516))))

(assert (=> d!1722925 (= res!2288851 (matchR!7312 (reg!15456 (regOne!30766 r!7292)) Nil!61556))))

(assert (=> d!1722925 (validRegex!6863 (reg!15456 (regOne!30766 r!7292)))))

(assert (=> d!1722925 (= (findConcatSeparation!1652 (reg!15456 (regOne!30766 r!7292)) lt!2194501 Nil!61556 (_1!35629 lt!2194533) (_1!35629 lt!2194533)) lt!2194733)))

(assert (= (and d!1722925 res!2288851) b!5387623))

(assert (= (and d!1722925 c!938861) b!5387624))

(assert (= (and d!1722925 (not c!938861)) b!5387621))

(assert (= (and b!5387621 c!938860) b!5387620))

(assert (= (and b!5387621 (not c!938860)) b!5387626))

(assert (= (and d!1722925 res!2288852) b!5387619))

(assert (= (and b!5387619 res!2288853) b!5387618))

(assert (= (and b!5387618 res!2288850) b!5387625))

(assert (= (and d!1722925 (not res!2288854)) b!5387622))

(declare-fun m!6413590 () Bool)

(assert (=> b!5387618 m!6413590))

(declare-fun m!6413592 () Bool)

(assert (=> b!5387618 m!6413592))

(assert (=> b!5387623 m!6412594))

(declare-fun m!6413594 () Bool)

(assert (=> b!5387626 m!6413594))

(assert (=> b!5387626 m!6413594))

(declare-fun m!6413596 () Bool)

(assert (=> b!5387626 m!6413596))

(declare-fun m!6413598 () Bool)

(assert (=> b!5387626 m!6413598))

(assert (=> b!5387626 m!6413594))

(declare-fun m!6413600 () Bool)

(assert (=> b!5387626 m!6413600))

(assert (=> b!5387625 m!6413590))

(declare-fun m!6413602 () Bool)

(assert (=> b!5387625 m!6413602))

(assert (=> b!5387619 m!6413590))

(declare-fun m!6413604 () Bool)

(assert (=> b!5387619 m!6413604))

(declare-fun m!6413606 () Bool)

(assert (=> d!1722925 m!6413606))

(declare-fun m!6413608 () Bool)

(assert (=> d!1722925 m!6413608))

(assert (=> d!1722925 m!6412696))

(assert (=> b!5387622 m!6413606))

(assert (=> b!5386710 d!1722925))

(declare-fun d!1722927 () Bool)

(assert (=> d!1722927 (= (Exists!2308 lambda!279431) (choose!40516 lambda!279431))))

(declare-fun bs!1246714 () Bool)

(assert (= bs!1246714 d!1722927))

(declare-fun m!6413610 () Bool)

(assert (=> bs!1246714 m!6413610))

(assert (=> b!5386710 d!1722927))

(declare-fun bs!1246715 () Bool)

(declare-fun b!5387637 () Bool)

(assert (= bs!1246715 (and b!5387637 d!1722801)))

(declare-fun lambda!279503 () Int)

(assert (=> bs!1246715 (not (= lambda!279503 lambda!279471))))

(declare-fun bs!1246716 () Bool)

(assert (= bs!1246716 (and b!5387637 d!1722893)))

(assert (=> bs!1246716 (not (= lambda!279503 lambda!279488))))

(declare-fun bs!1246717 () Bool)

(assert (= bs!1246717 (and b!5387637 b!5386710)))

(assert (=> bs!1246717 (not (= lambda!279503 lambda!279432))))

(declare-fun bs!1246719 () Bool)

(assert (= bs!1246719 (and b!5387637 b!5386717)))

(assert (=> bs!1246719 (not (= lambda!279503 lambda!279426))))

(declare-fun bs!1246721 () Bool)

(assert (= bs!1246721 (and b!5387637 b!5387082)))

(assert (=> bs!1246721 (= (and (= (_1!35629 lt!2194533) s!2326) (= (reg!15456 lt!2194501) (reg!15456 r!7292)) (= lt!2194501 r!7292)) (= lambda!279503 lambda!279452))))

(declare-fun bs!1246723 () Bool)

(assert (= bs!1246723 (and b!5387637 b!5386707)))

(assert (=> bs!1246723 (not (= lambda!279503 lambda!279429))))

(assert (=> bs!1246719 (not (= lambda!279503 lambda!279425))))

(declare-fun bs!1246725 () Bool)

(assert (= bs!1246725 (and b!5387637 d!1722899)))

(assert (=> bs!1246725 (not (= lambda!279503 lambda!279492))))

(declare-fun bs!1246726 () Bool)

(assert (= bs!1246726 (and b!5387637 d!1722809)))

(assert (=> bs!1246726 (not (= lambda!279503 lambda!279478))))

(assert (=> bs!1246717 (not (= lambda!279503 lambda!279430))))

(assert (=> bs!1246726 (not (= lambda!279503 lambda!279477))))

(assert (=> bs!1246723 (not (= lambda!279503 lambda!279428))))

(declare-fun bs!1246730 () Bool)

(assert (= bs!1246730 (and b!5387637 d!1722905)))

(assert (=> bs!1246730 (not (= lambda!279503 lambda!279497))))

(assert (=> bs!1246717 (= (= (reg!15456 lt!2194501) (reg!15456 (regOne!30766 r!7292))) (= lambda!279503 lambda!279431))))

(declare-fun bs!1246732 () Bool)

(assert (= bs!1246732 (and b!5387637 b!5387087)))

(assert (=> bs!1246732 (not (= lambda!279503 lambda!279454))))

(assert (=> bs!1246730 (= (and (= (reg!15456 lt!2194501) (reg!15456 (regOne!30766 r!7292))) (= lt!2194501 (Star!15127 (reg!15456 (regOne!30766 r!7292))))) (= lambda!279503 lambda!279498))))

(assert (=> bs!1246716 (not (= lambda!279503 lambda!279487))))

(assert (=> b!5387637 true))

(assert (=> b!5387637 true))

(declare-fun bs!1246736 () Bool)

(declare-fun b!5387642 () Bool)

(assert (= bs!1246736 (and b!5387642 d!1722801)))

(declare-fun lambda!279505 () Int)

(assert (=> bs!1246736 (not (= lambda!279505 lambda!279471))))

(declare-fun bs!1246737 () Bool)

(assert (= bs!1246737 (and b!5387642 d!1722893)))

(assert (=> bs!1246737 (= (and (= (regOne!30766 lt!2194501) (reg!15456 (regOne!30766 r!7292))) (= (regTwo!30766 lt!2194501) lt!2194501)) (= lambda!279505 lambda!279488))))

(declare-fun bs!1246738 () Bool)

(assert (= bs!1246738 (and b!5387642 b!5386710)))

(assert (=> bs!1246738 (= (and (= (regOne!30766 lt!2194501) (reg!15456 (regOne!30766 r!7292))) (= (regTwo!30766 lt!2194501) lt!2194501)) (= lambda!279505 lambda!279432))))

(declare-fun bs!1246739 () Bool)

(assert (= bs!1246739 (and b!5387642 b!5387082)))

(assert (=> bs!1246739 (not (= lambda!279505 lambda!279452))))

(declare-fun bs!1246740 () Bool)

(assert (= bs!1246740 (and b!5387642 b!5386707)))

(assert (=> bs!1246740 (= (and (= (_1!35629 lt!2194533) s!2326) (= (regOne!30766 lt!2194501) lt!2194501) (= (regTwo!30766 lt!2194501) (regTwo!30766 r!7292))) (= lambda!279505 lambda!279429))))

(declare-fun bs!1246741 () Bool)

(assert (= bs!1246741 (and b!5387642 b!5386717)))

(assert (=> bs!1246741 (not (= lambda!279505 lambda!279425))))

(declare-fun bs!1246742 () Bool)

(assert (= bs!1246742 (and b!5387642 d!1722899)))

(assert (=> bs!1246742 (not (= lambda!279505 lambda!279492))))

(declare-fun bs!1246743 () Bool)

(assert (= bs!1246743 (and b!5387642 d!1722809)))

(assert (=> bs!1246743 (= (and (= (_1!35629 lt!2194533) s!2326) (= (regOne!30766 lt!2194501) lt!2194501) (= (regTwo!30766 lt!2194501) (regTwo!30766 r!7292))) (= lambda!279505 lambda!279478))))

(assert (=> bs!1246738 (not (= lambda!279505 lambda!279430))))

(assert (=> bs!1246743 (not (= lambda!279505 lambda!279477))))

(assert (=> bs!1246741 (= (and (= (_1!35629 lt!2194533) s!2326) (= (regOne!30766 lt!2194501) (regOne!30766 r!7292)) (= (regTwo!30766 lt!2194501) (regTwo!30766 r!7292))) (= lambda!279505 lambda!279426))))

(declare-fun bs!1246744 () Bool)

(assert (= bs!1246744 (and b!5387642 b!5387637)))

(assert (=> bs!1246744 (not (= lambda!279505 lambda!279503))))

(assert (=> bs!1246740 (not (= lambda!279505 lambda!279428))))

(declare-fun bs!1246746 () Bool)

(assert (= bs!1246746 (and b!5387642 d!1722905)))

(assert (=> bs!1246746 (not (= lambda!279505 lambda!279497))))

(assert (=> bs!1246738 (not (= lambda!279505 lambda!279431))))

(declare-fun bs!1246747 () Bool)

(assert (= bs!1246747 (and b!5387642 b!5387087)))

(assert (=> bs!1246747 (= (and (= (_1!35629 lt!2194533) s!2326) (= (regOne!30766 lt!2194501) (regOne!30766 r!7292)) (= (regTwo!30766 lt!2194501) (regTwo!30766 r!7292))) (= lambda!279505 lambda!279454))))

(assert (=> bs!1246746 (not (= lambda!279505 lambda!279498))))

(assert (=> bs!1246737 (not (= lambda!279505 lambda!279487))))

(assert (=> b!5387642 true))

(assert (=> b!5387642 true))

(declare-fun b!5387633 () Bool)

(declare-fun e!3341524 () Bool)

(declare-fun e!3341521 () Bool)

(assert (=> b!5387633 (= e!3341524 e!3341521)))

(declare-fun c!938864 () Bool)

(assert (=> b!5387633 (= c!938864 ((_ is Star!15127) lt!2194501))))

(declare-fun b!5387634 () Bool)

(declare-fun e!3341522 () Bool)

(assert (=> b!5387634 (= e!3341524 e!3341522)))

(declare-fun res!2288862 () Bool)

(assert (=> b!5387634 (= res!2288862 (matchRSpec!2230 (regOne!30767 lt!2194501) (_1!35629 lt!2194533)))))

(assert (=> b!5387634 (=> res!2288862 e!3341522)))

(declare-fun b!5387635 () Bool)

(declare-fun c!938865 () Bool)

(assert (=> b!5387635 (= c!938865 ((_ is ElementMatch!15127) lt!2194501))))

(declare-fun e!3341527 () Bool)

(declare-fun e!3341525 () Bool)

(assert (=> b!5387635 (= e!3341527 e!3341525)))

(declare-fun b!5387636 () Bool)

(declare-fun e!3341526 () Bool)

(declare-fun call!385671 () Bool)

(assert (=> b!5387636 (= e!3341526 call!385671)))

(declare-fun e!3341523 () Bool)

(declare-fun call!385670 () Bool)

(assert (=> b!5387637 (= e!3341523 call!385670)))

(declare-fun b!5387638 () Bool)

(declare-fun res!2288863 () Bool)

(assert (=> b!5387638 (=> res!2288863 e!3341523)))

(assert (=> b!5387638 (= res!2288863 call!385671)))

(assert (=> b!5387638 (= e!3341521 e!3341523)))

(declare-fun b!5387639 () Bool)

(assert (=> b!5387639 (= e!3341522 (matchRSpec!2230 (regTwo!30767 lt!2194501) (_1!35629 lt!2194533)))))

(declare-fun bm!385666 () Bool)

(assert (=> bm!385666 (= call!385670 (Exists!2308 (ite c!938864 lambda!279503 lambda!279505)))))

(declare-fun b!5387640 () Bool)

(assert (=> b!5387640 (= e!3341525 (= (_1!35629 lt!2194533) (Cons!61556 (c!938617 lt!2194501) Nil!61556)))))

(declare-fun b!5387641 () Bool)

(declare-fun c!938863 () Bool)

(assert (=> b!5387641 (= c!938863 ((_ is Union!15127) lt!2194501))))

(assert (=> b!5387641 (= e!3341525 e!3341524)))

(assert (=> b!5387642 (= e!3341521 call!385670)))

(declare-fun b!5387643 () Bool)

(assert (=> b!5387643 (= e!3341526 e!3341527)))

(declare-fun res!2288861 () Bool)

(assert (=> b!5387643 (= res!2288861 (not ((_ is EmptyLang!15127) lt!2194501)))))

(assert (=> b!5387643 (=> (not res!2288861) (not e!3341527))))

(declare-fun bm!385665 () Bool)

(assert (=> bm!385665 (= call!385671 (isEmpty!33554 (_1!35629 lt!2194533)))))

(declare-fun d!1722929 () Bool)

(declare-fun c!938862 () Bool)

(assert (=> d!1722929 (= c!938862 ((_ is EmptyExpr!15127) lt!2194501))))

(assert (=> d!1722929 (= (matchRSpec!2230 lt!2194501 (_1!35629 lt!2194533)) e!3341526)))

(assert (= (and d!1722929 c!938862) b!5387636))

(assert (= (and d!1722929 (not c!938862)) b!5387643))

(assert (= (and b!5387643 res!2288861) b!5387635))

(assert (= (and b!5387635 c!938865) b!5387640))

(assert (= (and b!5387635 (not c!938865)) b!5387641))

(assert (= (and b!5387641 c!938863) b!5387634))

(assert (= (and b!5387641 (not c!938863)) b!5387633))

(assert (= (and b!5387634 (not res!2288862)) b!5387639))

(assert (= (and b!5387633 c!938864) b!5387638))

(assert (= (and b!5387633 (not c!938864)) b!5387642))

(assert (= (and b!5387638 (not res!2288863)) b!5387637))

(assert (= (or b!5387637 b!5387642) bm!385666))

(assert (= (or b!5387636 b!5387638) bm!385665))

(declare-fun m!6413612 () Bool)

(assert (=> b!5387634 m!6413612))

(declare-fun m!6413614 () Bool)

(assert (=> b!5387639 m!6413614))

(declare-fun m!6413618 () Bool)

(assert (=> bm!385666 m!6413618))

(assert (=> bm!385665 m!6412486))

(assert (=> b!5386710 d!1722929))

(declare-fun b!5387644 () Bool)

(declare-fun e!3341529 () List!61680)

(assert (=> b!5387644 (= e!3341529 (_2!35629 lt!2194542))))

(declare-fun b!5387646 () Bool)

(declare-fun res!2288864 () Bool)

(declare-fun e!3341528 () Bool)

(assert (=> b!5387646 (=> (not res!2288864) (not e!3341528))))

(declare-fun lt!2194736 () List!61680)

(assert (=> b!5387646 (= res!2288864 (= (size!39813 lt!2194736) (+ (size!39813 (_1!35629 lt!2194542)) (size!39813 (_2!35629 lt!2194542)))))))

(declare-fun b!5387645 () Bool)

(assert (=> b!5387645 (= e!3341529 (Cons!61556 (h!68004 (_1!35629 lt!2194542)) (++!13439 (t!374903 (_1!35629 lt!2194542)) (_2!35629 lt!2194542))))))

(declare-fun d!1722931 () Bool)

(assert (=> d!1722931 e!3341528))

(declare-fun res!2288865 () Bool)

(assert (=> d!1722931 (=> (not res!2288865) (not e!3341528))))

(assert (=> d!1722931 (= res!2288865 (= (content!11016 lt!2194736) ((_ map or) (content!11016 (_1!35629 lt!2194542)) (content!11016 (_2!35629 lt!2194542)))))))

(assert (=> d!1722931 (= lt!2194736 e!3341529)))

(declare-fun c!938866 () Bool)

(assert (=> d!1722931 (= c!938866 ((_ is Nil!61556) (_1!35629 lt!2194542)))))

(assert (=> d!1722931 (= (++!13439 (_1!35629 lt!2194542) (_2!35629 lt!2194542)) lt!2194736)))

(declare-fun b!5387647 () Bool)

(assert (=> b!5387647 (= e!3341528 (or (not (= (_2!35629 lt!2194542) Nil!61556)) (= lt!2194736 (_1!35629 lt!2194542))))))

(assert (= (and d!1722931 c!938866) b!5387644))

(assert (= (and d!1722931 (not c!938866)) b!5387645))

(assert (= (and d!1722931 res!2288865) b!5387646))

(assert (= (and b!5387646 res!2288864) b!5387647))

(declare-fun m!6413624 () Bool)

(assert (=> b!5387646 m!6413624))

(assert (=> b!5387646 m!6413192))

(assert (=> b!5387646 m!6413220))

(declare-fun m!6413626 () Bool)

(assert (=> b!5387645 m!6413626))

(declare-fun m!6413628 () Bool)

(assert (=> d!1722931 m!6413628))

(assert (=> d!1722931 m!6413200))

(assert (=> d!1722931 m!6413226))

(assert (=> b!5386710 d!1722931))

(declare-fun d!1722935 () Bool)

(assert (=> d!1722935 (= (get!21199 lt!2194506) (v!51266 lt!2194506))))

(assert (=> b!5386710 d!1722935))

(declare-fun d!1722937 () Bool)

(assert (=> d!1722937 (= (isEmpty!33554 (_1!35629 lt!2194533)) ((_ is Nil!61556) (_1!35629 lt!2194533)))))

(assert (=> b!5386711 d!1722937))

(declare-fun bs!1246775 () Bool)

(declare-fun d!1722939 () Bool)

(assert (= bs!1246775 (and d!1722939 b!5386705)))

(declare-fun lambda!279512 () Int)

(assert (=> bs!1246775 (= lambda!279512 lambda!279433)))

(declare-fun bs!1246776 () Bool)

(assert (= bs!1246776 (and d!1722939 d!1722759)))

(assert (=> bs!1246776 (= lambda!279512 lambda!279460)))

(declare-fun b!5387668 () Bool)

(declare-fun e!3341543 () Bool)

(declare-fun lt!2194741 () Regex!15127)

(declare-fun isUnion!392 (Regex!15127) Bool)

(assert (=> b!5387668 (= e!3341543 (isUnion!392 lt!2194741))))

(declare-fun b!5387669 () Bool)

(declare-fun e!3341542 () Bool)

(assert (=> b!5387669 (= e!3341542 (isEmpty!33552 (t!374904 (unfocusZipperList!569 zl!343))))))

(declare-fun b!5387670 () Bool)

(declare-fun e!3341545 () Bool)

(assert (=> b!5387670 (= e!3341545 e!3341543)))

(declare-fun c!938878 () Bool)

(declare-fun tail!10652 (List!61681) List!61681)

(assert (=> b!5387670 (= c!938878 (isEmpty!33552 (tail!10652 (unfocusZipperList!569 zl!343))))))

(declare-fun b!5387671 () Bool)

(declare-fun e!3341546 () Regex!15127)

(assert (=> b!5387671 (= e!3341546 (Union!15127 (h!68005 (unfocusZipperList!569 zl!343)) (generalisedUnion!1056 (t!374904 (unfocusZipperList!569 zl!343)))))))

(declare-fun b!5387672 () Bool)

(declare-fun head!11555 (List!61681) Regex!15127)

(assert (=> b!5387672 (= e!3341543 (= lt!2194741 (head!11555 (unfocusZipperList!569 zl!343))))))

(declare-fun b!5387673 () Bool)

(declare-fun e!3341547 () Regex!15127)

(assert (=> b!5387673 (= e!3341547 e!3341546)))

(declare-fun c!938875 () Bool)

(assert (=> b!5387673 (= c!938875 ((_ is Cons!61557) (unfocusZipperList!569 zl!343)))))

(declare-fun b!5387674 () Bool)

(declare-fun isEmptyLang!960 (Regex!15127) Bool)

(assert (=> b!5387674 (= e!3341545 (isEmptyLang!960 lt!2194741))))

(declare-fun b!5387675 () Bool)

(assert (=> b!5387675 (= e!3341547 (h!68005 (unfocusZipperList!569 zl!343)))))

(declare-fun e!3341544 () Bool)

(assert (=> d!1722939 e!3341544))

(declare-fun res!2288870 () Bool)

(assert (=> d!1722939 (=> (not res!2288870) (not e!3341544))))

(assert (=> d!1722939 (= res!2288870 (validRegex!6863 lt!2194741))))

(assert (=> d!1722939 (= lt!2194741 e!3341547)))

(declare-fun c!938876 () Bool)

(assert (=> d!1722939 (= c!938876 e!3341542)))

(declare-fun res!2288871 () Bool)

(assert (=> d!1722939 (=> (not res!2288871) (not e!3341542))))

(assert (=> d!1722939 (= res!2288871 ((_ is Cons!61557) (unfocusZipperList!569 zl!343)))))

(assert (=> d!1722939 (forall!14511 (unfocusZipperList!569 zl!343) lambda!279512)))

(assert (=> d!1722939 (= (generalisedUnion!1056 (unfocusZipperList!569 zl!343)) lt!2194741)))

(declare-fun b!5387676 () Bool)

(assert (=> b!5387676 (= e!3341546 EmptyLang!15127)))

(declare-fun b!5387677 () Bool)

(assert (=> b!5387677 (= e!3341544 e!3341545)))

(declare-fun c!938877 () Bool)

(assert (=> b!5387677 (= c!938877 (isEmpty!33552 (unfocusZipperList!569 zl!343)))))

(assert (= (and d!1722939 res!2288871) b!5387669))

(assert (= (and d!1722939 c!938876) b!5387675))

(assert (= (and d!1722939 (not c!938876)) b!5387673))

(assert (= (and b!5387673 c!938875) b!5387671))

(assert (= (and b!5387673 (not c!938875)) b!5387676))

(assert (= (and d!1722939 res!2288870) b!5387677))

(assert (= (and b!5387677 c!938877) b!5387674))

(assert (= (and b!5387677 (not c!938877)) b!5387670))

(assert (= (and b!5387670 c!938878) b!5387672))

(assert (= (and b!5387670 (not c!938878)) b!5387668))

(declare-fun m!6413642 () Bool)

(assert (=> b!5387669 m!6413642))

(assert (=> b!5387677 m!6412596))

(declare-fun m!6413644 () Bool)

(assert (=> b!5387677 m!6413644))

(assert (=> b!5387670 m!6412596))

(declare-fun m!6413646 () Bool)

(assert (=> b!5387670 m!6413646))

(assert (=> b!5387670 m!6413646))

(declare-fun m!6413648 () Bool)

(assert (=> b!5387670 m!6413648))

(assert (=> b!5387672 m!6412596))

(declare-fun m!6413650 () Bool)

(assert (=> b!5387672 m!6413650))

(declare-fun m!6413652 () Bool)

(assert (=> d!1722939 m!6413652))

(assert (=> d!1722939 m!6412596))

(declare-fun m!6413654 () Bool)

(assert (=> d!1722939 m!6413654))

(declare-fun m!6413656 () Bool)

(assert (=> b!5387674 m!6413656))

(declare-fun m!6413658 () Bool)

(assert (=> b!5387668 m!6413658))

(declare-fun m!6413660 () Bool)

(assert (=> b!5387671 m!6413660))

(assert (=> b!5386691 d!1722939))

(declare-fun bs!1246801 () Bool)

(declare-fun d!1722945 () Bool)

(assert (= bs!1246801 (and d!1722945 b!5386705)))

(declare-fun lambda!279517 () Int)

(assert (=> bs!1246801 (= lambda!279517 lambda!279433)))

(declare-fun bs!1246802 () Bool)

(assert (= bs!1246802 (and d!1722945 d!1722759)))

(assert (=> bs!1246802 (= lambda!279517 lambda!279460)))

(declare-fun bs!1246804 () Bool)

(assert (= bs!1246804 (and d!1722945 d!1722939)))

(assert (=> bs!1246804 (= lambda!279517 lambda!279512)))

(declare-fun lt!2194744 () List!61681)

(assert (=> d!1722945 (forall!14511 lt!2194744 lambda!279517)))

(declare-fun e!3341557 () List!61681)

(assert (=> d!1722945 (= lt!2194744 e!3341557)))

(declare-fun c!938885 () Bool)

(assert (=> d!1722945 (= c!938885 ((_ is Cons!61558) zl!343))))

(assert (=> d!1722945 (= (unfocusZipperList!569 zl!343) lt!2194744)))

(declare-fun b!5387693 () Bool)

(assert (=> b!5387693 (= e!3341557 (Cons!61557 (generalisedConcat!796 (exprs!5011 (h!68006 zl!343))) (unfocusZipperList!569 (t!374905 zl!343))))))

(declare-fun b!5387694 () Bool)

(assert (=> b!5387694 (= e!3341557 Nil!61557)))

(assert (= (and d!1722945 c!938885) b!5387693))

(assert (= (and d!1722945 (not c!938885)) b!5387694))

(declare-fun m!6413662 () Bool)

(assert (=> d!1722945 m!6413662))

(assert (=> b!5387693 m!6412512))

(declare-fun m!6413664 () Bool)

(assert (=> b!5387693 m!6413664))

(assert (=> b!5386691 d!1722945))

(declare-fun d!1722947 () Bool)

(assert (=> d!1722947 (= (flatMap!854 lt!2194544 lambda!279427) (choose!40499 lt!2194544 lambda!279427))))

(declare-fun bs!1246807 () Bool)

(assert (= bs!1246807 d!1722947))

(declare-fun m!6413666 () Bool)

(assert (=> bs!1246807 m!6413666))

(assert (=> b!5386692 d!1722947))

(declare-fun b!5387695 () Bool)

(declare-fun e!3341560 () Bool)

(assert (=> b!5387695 (= e!3341560 (nullable!5296 (h!68005 (exprs!5011 lt!2194500))))))

(declare-fun b!5387696 () Bool)

(declare-fun e!3341559 () (InoxSet Context!9022))

(declare-fun call!385674 () (InoxSet Context!9022))

(assert (=> b!5387696 (= e!3341559 call!385674)))

(declare-fun d!1722949 () Bool)

(declare-fun c!938886 () Bool)

(assert (=> d!1722949 (= c!938886 e!3341560)))

(declare-fun res!2288875 () Bool)

(assert (=> d!1722949 (=> (not res!2288875) (not e!3341560))))

(assert (=> d!1722949 (= res!2288875 ((_ is Cons!61557) (exprs!5011 lt!2194500)))))

(declare-fun e!3341558 () (InoxSet Context!9022))

(assert (=> d!1722949 (= (derivationStepZipperUp!499 lt!2194500 (h!68004 s!2326)) e!3341558)))

(declare-fun bm!385669 () Bool)

(assert (=> bm!385669 (= call!385674 (derivationStepZipperDown!575 (h!68005 (exprs!5011 lt!2194500)) (Context!9023 (t!374904 (exprs!5011 lt!2194500))) (h!68004 s!2326)))))

(declare-fun b!5387697 () Bool)

(assert (=> b!5387697 (= e!3341558 ((_ map or) call!385674 (derivationStepZipperUp!499 (Context!9023 (t!374904 (exprs!5011 lt!2194500))) (h!68004 s!2326))))))

(declare-fun b!5387698 () Bool)

(assert (=> b!5387698 (= e!3341558 e!3341559)))

(declare-fun c!938887 () Bool)

(assert (=> b!5387698 (= c!938887 ((_ is Cons!61557) (exprs!5011 lt!2194500)))))

(declare-fun b!5387699 () Bool)

(assert (=> b!5387699 (= e!3341559 ((as const (Array Context!9022 Bool)) false))))

(assert (= (and d!1722949 res!2288875) b!5387695))

(assert (= (and d!1722949 c!938886) b!5387697))

(assert (= (and d!1722949 (not c!938886)) b!5387698))

(assert (= (and b!5387698 c!938887) b!5387696))

(assert (= (and b!5387698 (not c!938887)) b!5387699))

(assert (= (or b!5387697 b!5387696) bm!385669))

(declare-fun m!6413668 () Bool)

(assert (=> b!5387695 m!6413668))

(declare-fun m!6413670 () Bool)

(assert (=> bm!385669 m!6413670))

(declare-fun m!6413672 () Bool)

(assert (=> b!5387697 m!6413672))

(assert (=> b!5386692 d!1722949))

(declare-fun d!1722951 () Bool)

(assert (=> d!1722951 (= (flatMap!854 lt!2194544 lambda!279427) (dynLambda!24278 lambda!279427 lt!2194500))))

(declare-fun lt!2194745 () Unit!154026)

(assert (=> d!1722951 (= lt!2194745 (choose!40498 lt!2194544 lt!2194500 lambda!279427))))

(assert (=> d!1722951 (= lt!2194544 (store ((as const (Array Context!9022 Bool)) false) lt!2194500 true))))

(assert (=> d!1722951 (= (lemmaFlatMapOnSingletonSet!386 lt!2194544 lt!2194500 lambda!279427) lt!2194745)))

(declare-fun b_lambda!206169 () Bool)

(assert (=> (not b_lambda!206169) (not d!1722951)))

(declare-fun bs!1246810 () Bool)

(assert (= bs!1246810 d!1722951))

(assert (=> bs!1246810 m!6412536))

(declare-fun m!6413674 () Bool)

(assert (=> bs!1246810 m!6413674))

(declare-fun m!6413676 () Bool)

(assert (=> bs!1246810 m!6413676))

(assert (=> bs!1246810 m!6412534))

(assert (=> b!5386692 d!1722951))

(declare-fun bs!1246815 () Bool)

(declare-fun d!1722953 () Bool)

(assert (= bs!1246815 (and d!1722953 b!5386718)))

(declare-fun lambda!279520 () Int)

(assert (=> bs!1246815 (= lambda!279520 lambda!279427)))

(assert (=> d!1722953 true))

(assert (=> d!1722953 (= (derivationStepZipper!1366 lt!2194544 (h!68004 s!2326)) (flatMap!854 lt!2194544 lambda!279520))))

(declare-fun bs!1246816 () Bool)

(assert (= bs!1246816 d!1722953))

(declare-fun m!6413694 () Bool)

(assert (=> bs!1246816 m!6413694))

(assert (=> b!5386692 d!1722953))

(declare-fun b!5387711 () Bool)

(declare-fun e!3341569 () Bool)

(declare-fun call!385677 () Bool)

(assert (=> b!5387711 (= e!3341569 call!385677)))

(declare-fun bm!385670 () Bool)

(declare-fun call!385675 () Bool)

(declare-fun c!938893 () Bool)

(assert (=> bm!385670 (= call!385675 (validRegex!6863 (ite c!938893 (regOne!30767 r!7292) (regOne!30766 r!7292))))))

(declare-fun c!938892 () Bool)

(declare-fun bm!385671 () Bool)

(declare-fun call!385676 () Bool)

(assert (=> bm!385671 (= call!385676 (validRegex!6863 (ite c!938892 (reg!15456 r!7292) (ite c!938893 (regTwo!30767 r!7292) (regTwo!30766 r!7292)))))))

(declare-fun b!5387712 () Bool)

(declare-fun e!3341568 () Bool)

(assert (=> b!5387712 (= e!3341568 call!385676)))

(declare-fun b!5387713 () Bool)

(declare-fun e!3341567 () Bool)

(assert (=> b!5387713 (= e!3341567 call!385677)))

(declare-fun d!1722965 () Bool)

(declare-fun res!2288883 () Bool)

(declare-fun e!3341572 () Bool)

(assert (=> d!1722965 (=> res!2288883 e!3341572)))

(assert (=> d!1722965 (= res!2288883 ((_ is ElementMatch!15127) r!7292))))

(assert (=> d!1722965 (= (validRegex!6863 r!7292) e!3341572)))

(declare-fun b!5387714 () Bool)

(declare-fun res!2288882 () Bool)

(declare-fun e!3341571 () Bool)

(assert (=> b!5387714 (=> res!2288882 e!3341571)))

(assert (=> b!5387714 (= res!2288882 (not ((_ is Concat!23972) r!7292)))))

(declare-fun e!3341570 () Bool)

(assert (=> b!5387714 (= e!3341570 e!3341571)))

(declare-fun b!5387715 () Bool)

(declare-fun e!3341566 () Bool)

(assert (=> b!5387715 (= e!3341566 e!3341568)))

(declare-fun res!2288885 () Bool)

(assert (=> b!5387715 (= res!2288885 (not (nullable!5296 (reg!15456 r!7292))))))

(assert (=> b!5387715 (=> (not res!2288885) (not e!3341568))))

(declare-fun b!5387716 () Bool)

(assert (=> b!5387716 (= e!3341566 e!3341570)))

(assert (=> b!5387716 (= c!938893 ((_ is Union!15127) r!7292))))

(declare-fun bm!385672 () Bool)

(assert (=> bm!385672 (= call!385677 call!385676)))

(declare-fun b!5387717 () Bool)

(assert (=> b!5387717 (= e!3341571 e!3341567)))

(declare-fun res!2288881 () Bool)

(assert (=> b!5387717 (=> (not res!2288881) (not e!3341567))))

(assert (=> b!5387717 (= res!2288881 call!385675)))

(declare-fun b!5387718 () Bool)

(assert (=> b!5387718 (= e!3341572 e!3341566)))

(assert (=> b!5387718 (= c!938892 ((_ is Star!15127) r!7292))))

(declare-fun b!5387719 () Bool)

(declare-fun res!2288884 () Bool)

(assert (=> b!5387719 (=> (not res!2288884) (not e!3341569))))

(assert (=> b!5387719 (= res!2288884 call!385675)))

(assert (=> b!5387719 (= e!3341570 e!3341569)))

(assert (= (and d!1722965 (not res!2288883)) b!5387718))

(assert (= (and b!5387718 c!938892) b!5387715))

(assert (= (and b!5387718 (not c!938892)) b!5387716))

(assert (= (and b!5387715 res!2288885) b!5387712))

(assert (= (and b!5387716 c!938893) b!5387719))

(assert (= (and b!5387716 (not c!938893)) b!5387714))

(assert (= (and b!5387719 res!2288884) b!5387711))

(assert (= (and b!5387714 (not res!2288882)) b!5387717))

(assert (= (and b!5387717 res!2288881) b!5387713))

(assert (= (or b!5387711 b!5387713) bm!385672))

(assert (= (or b!5387719 b!5387717) bm!385670))

(assert (= (or b!5387712 bm!385672) bm!385671))

(declare-fun m!6413716 () Bool)

(assert (=> bm!385670 m!6413716))

(declare-fun m!6413718 () Bool)

(assert (=> bm!385671 m!6413718))

(declare-fun m!6413720 () Bool)

(assert (=> b!5387715 m!6413720))

(assert (=> start!566166 d!1722965))

(declare-fun b!5387720 () Bool)

(declare-fun e!3341573 () Bool)

(assert (=> b!5387720 (= e!3341573 (nullable!5296 lt!2194541))))

(declare-fun b!5387721 () Bool)

(declare-fun e!3341577 () Bool)

(declare-fun e!3341575 () Bool)

(assert (=> b!5387721 (= e!3341577 e!3341575)))

(declare-fun res!2288886 () Bool)

(assert (=> b!5387721 (=> (not res!2288886) (not e!3341575))))

(declare-fun lt!2194750 () Bool)

(assert (=> b!5387721 (= res!2288886 (not lt!2194750))))

(declare-fun b!5387722 () Bool)

(declare-fun res!2288889 () Bool)

(declare-fun e!3341579 () Bool)

(assert (=> b!5387722 (=> (not res!2288889) (not e!3341579))))

(declare-fun call!385678 () Bool)

(assert (=> b!5387722 (= res!2288889 (not call!385678))))

(declare-fun b!5387723 () Bool)

(declare-fun res!2288888 () Bool)

(assert (=> b!5387723 (=> (not res!2288888) (not e!3341579))))

(assert (=> b!5387723 (= res!2288888 (isEmpty!33554 (tail!10650 s!2326)))))

(declare-fun b!5387724 () Bool)

(declare-fun e!3341576 () Bool)

(assert (=> b!5387724 (= e!3341576 (not lt!2194750))))

(declare-fun b!5387725 () Bool)

(declare-fun e!3341578 () Bool)

(assert (=> b!5387725 (= e!3341575 e!3341578)))

(declare-fun res!2288890 () Bool)

(assert (=> b!5387725 (=> res!2288890 e!3341578)))

(assert (=> b!5387725 (= res!2288890 call!385678)))

(declare-fun b!5387726 () Bool)

(declare-fun res!2288891 () Bool)

(assert (=> b!5387726 (=> res!2288891 e!3341577)))

(assert (=> b!5387726 (= res!2288891 (not ((_ is ElementMatch!15127) lt!2194541)))))

(assert (=> b!5387726 (= e!3341576 e!3341577)))

(declare-fun b!5387727 () Bool)

(declare-fun e!3341574 () Bool)

(assert (=> b!5387727 (= e!3341574 e!3341576)))

(declare-fun c!938895 () Bool)

(assert (=> b!5387727 (= c!938895 ((_ is EmptyLang!15127) lt!2194541))))

(declare-fun b!5387728 () Bool)

(declare-fun res!2288887 () Bool)

(assert (=> b!5387728 (=> res!2288887 e!3341577)))

(assert (=> b!5387728 (= res!2288887 e!3341579)))

(declare-fun res!2288892 () Bool)

(assert (=> b!5387728 (=> (not res!2288892) (not e!3341579))))

(assert (=> b!5387728 (= res!2288892 lt!2194750)))

(declare-fun b!5387729 () Bool)

(declare-fun res!2288893 () Bool)

(assert (=> b!5387729 (=> res!2288893 e!3341578)))

(assert (=> b!5387729 (= res!2288893 (not (isEmpty!33554 (tail!10650 s!2326))))))

(declare-fun b!5387730 () Bool)

(assert (=> b!5387730 (= e!3341579 (= (head!11553 s!2326) (c!938617 lt!2194541)))))

(declare-fun b!5387731 () Bool)

(assert (=> b!5387731 (= e!3341573 (matchR!7312 (derivativeStep!4239 lt!2194541 (head!11553 s!2326)) (tail!10650 s!2326)))))

(declare-fun d!1722973 () Bool)

(assert (=> d!1722973 e!3341574))

(declare-fun c!938894 () Bool)

(assert (=> d!1722973 (= c!938894 ((_ is EmptyExpr!15127) lt!2194541))))

(assert (=> d!1722973 (= lt!2194750 e!3341573)))

(declare-fun c!938896 () Bool)

(assert (=> d!1722973 (= c!938896 (isEmpty!33554 s!2326))))

(assert (=> d!1722973 (validRegex!6863 lt!2194541)))

(assert (=> d!1722973 (= (matchR!7312 lt!2194541 s!2326) lt!2194750)))

(declare-fun bm!385673 () Bool)

(assert (=> bm!385673 (= call!385678 (isEmpty!33554 s!2326))))

(declare-fun b!5387732 () Bool)

(assert (=> b!5387732 (= e!3341574 (= lt!2194750 call!385678))))

(declare-fun b!5387733 () Bool)

(assert (=> b!5387733 (= e!3341578 (not (= (head!11553 s!2326) (c!938617 lt!2194541))))))

(assert (= (and d!1722973 c!938896) b!5387720))

(assert (= (and d!1722973 (not c!938896)) b!5387731))

(assert (= (and d!1722973 c!938894) b!5387732))

(assert (= (and d!1722973 (not c!938894)) b!5387727))

(assert (= (and b!5387727 c!938895) b!5387724))

(assert (= (and b!5387727 (not c!938895)) b!5387726))

(assert (= (and b!5387726 (not res!2288891)) b!5387728))

(assert (= (and b!5387728 res!2288892) b!5387722))

(assert (= (and b!5387722 res!2288889) b!5387723))

(assert (= (and b!5387723 res!2288888) b!5387730))

(assert (= (and b!5387728 (not res!2288887)) b!5387721))

(assert (= (and b!5387721 res!2288886) b!5387725))

(assert (= (and b!5387725 (not res!2288890)) b!5387729))

(assert (= (and b!5387729 (not res!2288893)) b!5387733))

(assert (= (or b!5387732 b!5387722 b!5387725) bm!385673))

(assert (=> b!5387720 m!6413124))

(assert (=> d!1722973 m!6412976))

(assert (=> d!1722973 m!6412648))

(assert (=> b!5387731 m!6412980))

(assert (=> b!5387731 m!6412980))

(declare-fun m!6413724 () Bool)

(assert (=> b!5387731 m!6413724))

(assert (=> b!5387731 m!6412984))

(assert (=> b!5387731 m!6413724))

(assert (=> b!5387731 m!6412984))

(declare-fun m!6413726 () Bool)

(assert (=> b!5387731 m!6413726))

(assert (=> b!5387729 m!6412984))

(assert (=> b!5387729 m!6412984))

(assert (=> b!5387729 m!6412988))

(assert (=> bm!385673 m!6412976))

(assert (=> b!5387730 m!6412980))

(assert (=> b!5387723 m!6412984))

(assert (=> b!5387723 m!6412984))

(assert (=> b!5387723 m!6412988))

(assert (=> b!5387733 m!6412980))

(assert (=> b!5386694 d!1722973))

(declare-fun bs!1246825 () Bool)

(declare-fun b!5387748 () Bool)

(assert (= bs!1246825 (and b!5387748 d!1722801)))

(declare-fun lambda!279522 () Int)

(assert (=> bs!1246825 (not (= lambda!279522 lambda!279471))))

(declare-fun bs!1246826 () Bool)

(assert (= bs!1246826 (and b!5387748 b!5386710)))

(assert (=> bs!1246826 (not (= lambda!279522 lambda!279432))))

(declare-fun bs!1246827 () Bool)

(assert (= bs!1246827 (and b!5387748 b!5387082)))

(assert (=> bs!1246827 (= (and (= (reg!15456 lt!2194541) (reg!15456 r!7292)) (= lt!2194541 r!7292)) (= lambda!279522 lambda!279452))))

(declare-fun bs!1246828 () Bool)

(assert (= bs!1246828 (and b!5387748 b!5386707)))

(assert (=> bs!1246828 (not (= lambda!279522 lambda!279429))))

(declare-fun bs!1246829 () Bool)

(assert (= bs!1246829 (and b!5387748 b!5386717)))

(assert (=> bs!1246829 (not (= lambda!279522 lambda!279425))))

(declare-fun bs!1246830 () Bool)

(assert (= bs!1246830 (and b!5387748 d!1722899)))

(assert (=> bs!1246830 (not (= lambda!279522 lambda!279492))))

(declare-fun bs!1246831 () Bool)

(assert (= bs!1246831 (and b!5387748 d!1722809)))

(assert (=> bs!1246831 (not (= lambda!279522 lambda!279478))))

(assert (=> bs!1246826 (not (= lambda!279522 lambda!279430))))

(assert (=> bs!1246831 (not (= lambda!279522 lambda!279477))))

(declare-fun bs!1246832 () Bool)

(assert (= bs!1246832 (and b!5387748 b!5387642)))

(assert (=> bs!1246832 (not (= lambda!279522 lambda!279505))))

(declare-fun bs!1246833 () Bool)

(assert (= bs!1246833 (and b!5387748 d!1722893)))

(assert (=> bs!1246833 (not (= lambda!279522 lambda!279488))))

(assert (=> bs!1246829 (not (= lambda!279522 lambda!279426))))

(declare-fun bs!1246834 () Bool)

(assert (= bs!1246834 (and b!5387748 b!5387637)))

(assert (=> bs!1246834 (= (and (= s!2326 (_1!35629 lt!2194533)) (= (reg!15456 lt!2194541) (reg!15456 lt!2194501)) (= lt!2194541 lt!2194501)) (= lambda!279522 lambda!279503))))

(assert (=> bs!1246828 (not (= lambda!279522 lambda!279428))))

(declare-fun bs!1246835 () Bool)

(assert (= bs!1246835 (and b!5387748 d!1722905)))

(assert (=> bs!1246835 (not (= lambda!279522 lambda!279497))))

(assert (=> bs!1246826 (= (and (= s!2326 (_1!35629 lt!2194533)) (= (reg!15456 lt!2194541) (reg!15456 (regOne!30766 r!7292))) (= lt!2194541 lt!2194501)) (= lambda!279522 lambda!279431))))

(declare-fun bs!1246836 () Bool)

(assert (= bs!1246836 (and b!5387748 b!5387087)))

(assert (=> bs!1246836 (not (= lambda!279522 lambda!279454))))

(assert (=> bs!1246835 (= (and (= s!2326 (_1!35629 lt!2194533)) (= (reg!15456 lt!2194541) (reg!15456 (regOne!30766 r!7292))) (= lt!2194541 (Star!15127 (reg!15456 (regOne!30766 r!7292))))) (= lambda!279522 lambda!279498))))

(assert (=> bs!1246833 (not (= lambda!279522 lambda!279487))))

(assert (=> b!5387748 true))

(assert (=> b!5387748 true))

(declare-fun bs!1246837 () Bool)

(declare-fun b!5387753 () Bool)

(assert (= bs!1246837 (and b!5387753 d!1722801)))

(declare-fun lambda!279523 () Int)

(assert (=> bs!1246837 (not (= lambda!279523 lambda!279471))))

(declare-fun bs!1246838 () Bool)

(assert (= bs!1246838 (and b!5387753 b!5386710)))

(assert (=> bs!1246838 (= (and (= s!2326 (_1!35629 lt!2194533)) (= (regOne!30766 lt!2194541) (reg!15456 (regOne!30766 r!7292))) (= (regTwo!30766 lt!2194541) lt!2194501)) (= lambda!279523 lambda!279432))))

(declare-fun bs!1246839 () Bool)

(assert (= bs!1246839 (and b!5387753 b!5387082)))

(assert (=> bs!1246839 (not (= lambda!279523 lambda!279452))))

(declare-fun bs!1246840 () Bool)

(assert (= bs!1246840 (and b!5387753 b!5386707)))

(assert (=> bs!1246840 (= (and (= (regOne!30766 lt!2194541) lt!2194501) (= (regTwo!30766 lt!2194541) (regTwo!30766 r!7292))) (= lambda!279523 lambda!279429))))

(declare-fun bs!1246841 () Bool)

(assert (= bs!1246841 (and b!5387753 b!5386717)))

(assert (=> bs!1246841 (not (= lambda!279523 lambda!279425))))

(declare-fun bs!1246842 () Bool)

(assert (= bs!1246842 (and b!5387753 d!1722899)))

(assert (=> bs!1246842 (not (= lambda!279523 lambda!279492))))

(declare-fun bs!1246843 () Bool)

(assert (= bs!1246843 (and b!5387753 d!1722809)))

(assert (=> bs!1246843 (= (and (= (regOne!30766 lt!2194541) lt!2194501) (= (regTwo!30766 lt!2194541) (regTwo!30766 r!7292))) (= lambda!279523 lambda!279478))))

(declare-fun bs!1246844 () Bool)

(assert (= bs!1246844 (and b!5387753 b!5387748)))

(assert (=> bs!1246844 (not (= lambda!279523 lambda!279522))))

(assert (=> bs!1246838 (not (= lambda!279523 lambda!279430))))

(assert (=> bs!1246843 (not (= lambda!279523 lambda!279477))))

(declare-fun bs!1246846 () Bool)

(assert (= bs!1246846 (and b!5387753 b!5387642)))

(assert (=> bs!1246846 (= (and (= s!2326 (_1!35629 lt!2194533)) (= (regOne!30766 lt!2194541) (regOne!30766 lt!2194501)) (= (regTwo!30766 lt!2194541) (regTwo!30766 lt!2194501))) (= lambda!279523 lambda!279505))))

(declare-fun bs!1246848 () Bool)

(assert (= bs!1246848 (and b!5387753 d!1722893)))

(assert (=> bs!1246848 (= (and (= s!2326 (_1!35629 lt!2194533)) (= (regOne!30766 lt!2194541) (reg!15456 (regOne!30766 r!7292))) (= (regTwo!30766 lt!2194541) lt!2194501)) (= lambda!279523 lambda!279488))))

(assert (=> bs!1246841 (= (and (= (regOne!30766 lt!2194541) (regOne!30766 r!7292)) (= (regTwo!30766 lt!2194541) (regTwo!30766 r!7292))) (= lambda!279523 lambda!279426))))

(declare-fun bs!1246851 () Bool)

(assert (= bs!1246851 (and b!5387753 b!5387637)))

(assert (=> bs!1246851 (not (= lambda!279523 lambda!279503))))

(assert (=> bs!1246840 (not (= lambda!279523 lambda!279428))))

(declare-fun bs!1246852 () Bool)

(assert (= bs!1246852 (and b!5387753 d!1722905)))

(assert (=> bs!1246852 (not (= lambda!279523 lambda!279497))))

(assert (=> bs!1246838 (not (= lambda!279523 lambda!279431))))

(declare-fun bs!1246853 () Bool)

(assert (= bs!1246853 (and b!5387753 b!5387087)))

(assert (=> bs!1246853 (= (and (= (regOne!30766 lt!2194541) (regOne!30766 r!7292)) (= (regTwo!30766 lt!2194541) (regTwo!30766 r!7292))) (= lambda!279523 lambda!279454))))

(assert (=> bs!1246852 (not (= lambda!279523 lambda!279498))))

(assert (=> bs!1246848 (not (= lambda!279523 lambda!279487))))

(assert (=> b!5387753 true))

(assert (=> b!5387753 true))

(declare-fun b!5387744 () Bool)

(declare-fun e!3341585 () Bool)

(declare-fun e!3341582 () Bool)

(assert (=> b!5387744 (= e!3341585 e!3341582)))

(declare-fun c!938899 () Bool)

(assert (=> b!5387744 (= c!938899 ((_ is Star!15127) lt!2194541))))

(declare-fun b!5387745 () Bool)

(declare-fun e!3341583 () Bool)

(assert (=> b!5387745 (= e!3341585 e!3341583)))

(declare-fun res!2288895 () Bool)

(assert (=> b!5387745 (= res!2288895 (matchRSpec!2230 (regOne!30767 lt!2194541) s!2326))))

(assert (=> b!5387745 (=> res!2288895 e!3341583)))

(declare-fun b!5387746 () Bool)

(declare-fun c!938900 () Bool)

(assert (=> b!5387746 (= c!938900 ((_ is ElementMatch!15127) lt!2194541))))

(declare-fun e!3341588 () Bool)

(declare-fun e!3341586 () Bool)

(assert (=> b!5387746 (= e!3341588 e!3341586)))

(declare-fun b!5387747 () Bool)

(declare-fun e!3341587 () Bool)

(declare-fun call!385680 () Bool)

(assert (=> b!5387747 (= e!3341587 call!385680)))

(declare-fun e!3341584 () Bool)

(declare-fun call!385679 () Bool)

(assert (=> b!5387748 (= e!3341584 call!385679)))

(declare-fun b!5387749 () Bool)

(declare-fun res!2288896 () Bool)

(assert (=> b!5387749 (=> res!2288896 e!3341584)))

(assert (=> b!5387749 (= res!2288896 call!385680)))

(assert (=> b!5387749 (= e!3341582 e!3341584)))

(declare-fun b!5387750 () Bool)

(assert (=> b!5387750 (= e!3341583 (matchRSpec!2230 (regTwo!30767 lt!2194541) s!2326))))

(declare-fun bm!385675 () Bool)

(assert (=> bm!385675 (= call!385679 (Exists!2308 (ite c!938899 lambda!279522 lambda!279523)))))

(declare-fun b!5387751 () Bool)

(assert (=> b!5387751 (= e!3341586 (= s!2326 (Cons!61556 (c!938617 lt!2194541) Nil!61556)))))

(declare-fun b!5387752 () Bool)

(declare-fun c!938898 () Bool)

(assert (=> b!5387752 (= c!938898 ((_ is Union!15127) lt!2194541))))

(assert (=> b!5387752 (= e!3341586 e!3341585)))

(assert (=> b!5387753 (= e!3341582 call!385679)))

(declare-fun b!5387754 () Bool)

(assert (=> b!5387754 (= e!3341587 e!3341588)))

(declare-fun res!2288894 () Bool)

(assert (=> b!5387754 (= res!2288894 (not ((_ is EmptyLang!15127) lt!2194541)))))

(assert (=> b!5387754 (=> (not res!2288894) (not e!3341588))))

(declare-fun bm!385674 () Bool)

(assert (=> bm!385674 (= call!385680 (isEmpty!33554 s!2326))))

(declare-fun d!1722975 () Bool)

(declare-fun c!938897 () Bool)

(assert (=> d!1722975 (= c!938897 ((_ is EmptyExpr!15127) lt!2194541))))

(assert (=> d!1722975 (= (matchRSpec!2230 lt!2194541 s!2326) e!3341587)))

(assert (= (and d!1722975 c!938897) b!5387747))

(assert (= (and d!1722975 (not c!938897)) b!5387754))

(assert (= (and b!5387754 res!2288894) b!5387746))

(assert (= (and b!5387746 c!938900) b!5387751))

(assert (= (and b!5387746 (not c!938900)) b!5387752))

(assert (= (and b!5387752 c!938898) b!5387745))

(assert (= (and b!5387752 (not c!938898)) b!5387744))

(assert (= (and b!5387745 (not res!2288895)) b!5387750))

(assert (= (and b!5387744 c!938899) b!5387749))

(assert (= (and b!5387744 (not c!938899)) b!5387753))

(assert (= (and b!5387749 (not res!2288896)) b!5387748))

(assert (= (or b!5387748 b!5387753) bm!385675))

(assert (= (or b!5387747 b!5387749) bm!385674))

(declare-fun m!6413732 () Bool)

(assert (=> b!5387745 m!6413732))

(declare-fun m!6413734 () Bool)

(assert (=> b!5387750 m!6413734))

(declare-fun m!6413736 () Bool)

(assert (=> bm!385675 m!6413736))

(assert (=> bm!385674 m!6412976))

(assert (=> b!5386694 d!1722975))

(declare-fun d!1722985 () Bool)

(assert (=> d!1722985 (= (matchR!7312 lt!2194541 s!2326) (matchRSpec!2230 lt!2194541 s!2326))))

(declare-fun lt!2194751 () Unit!154026)

(assert (=> d!1722985 (= lt!2194751 (choose!40503 lt!2194541 s!2326))))

(assert (=> d!1722985 (validRegex!6863 lt!2194541)))

(assert (=> d!1722985 (= (mainMatchTheorem!2230 lt!2194541 s!2326) lt!2194751)))

(declare-fun bs!1246854 () Bool)

(assert (= bs!1246854 d!1722985))

(assert (=> bs!1246854 m!6412506))

(assert (=> bs!1246854 m!6412508))

(declare-fun m!6413738 () Bool)

(assert (=> bs!1246854 m!6413738))

(assert (=> bs!1246854 m!6412648))

(assert (=> b!5386694 d!1722985))

(declare-fun d!1722987 () Bool)

(declare-fun lt!2194752 () Regex!15127)

(assert (=> d!1722987 (validRegex!6863 lt!2194752)))

(assert (=> d!1722987 (= lt!2194752 (generalisedUnion!1056 (unfocusZipperList!569 (Cons!61558 lt!2194500 Nil!61558))))))

(assert (=> d!1722987 (= (unfocusZipper!869 (Cons!61558 lt!2194500 Nil!61558)) lt!2194752)))

(declare-fun bs!1246855 () Bool)

(assert (= bs!1246855 d!1722987))

(declare-fun m!6413740 () Bool)

(assert (=> bs!1246855 m!6413740))

(declare-fun m!6413742 () Bool)

(assert (=> bs!1246855 m!6413742))

(assert (=> bs!1246855 m!6413742))

(declare-fun m!6413744 () Bool)

(assert (=> bs!1246855 m!6413744))

(assert (=> b!5386695 d!1722987))

(declare-fun bs!1246856 () Bool)

(declare-fun d!1722989 () Bool)

(assert (= bs!1246856 (and d!1722989 b!5386705)))

(declare-fun lambda!279526 () Int)

(assert (=> bs!1246856 (= lambda!279526 lambda!279433)))

(declare-fun bs!1246857 () Bool)

(assert (= bs!1246857 (and d!1722989 d!1722759)))

(assert (=> bs!1246857 (= lambda!279526 lambda!279460)))

(declare-fun bs!1246858 () Bool)

(assert (= bs!1246858 (and d!1722989 d!1722939)))

(assert (=> bs!1246858 (= lambda!279526 lambda!279512)))

(declare-fun bs!1246859 () Bool)

(assert (= bs!1246859 (and d!1722989 d!1722945)))

(assert (=> bs!1246859 (= lambda!279526 lambda!279517)))

(assert (=> d!1722989 (= (inv!81064 setElem!34979) (forall!14511 (exprs!5011 setElem!34979) lambda!279526))))

(declare-fun bs!1246860 () Bool)

(assert (= bs!1246860 d!1722989))

(declare-fun m!6413746 () Bool)

(assert (=> bs!1246860 m!6413746))

(assert (=> setNonEmpty!34979 d!1722989))

(declare-fun b!5387799 () Bool)

(declare-fun e!3341610 () Bool)

(assert (=> b!5387799 (= e!3341610 (nullable!5296 lt!2194501))))

(declare-fun b!5387800 () Bool)

(declare-fun e!3341614 () Bool)

(declare-fun e!3341612 () Bool)

(assert (=> b!5387800 (= e!3341614 e!3341612)))

(declare-fun res!2288897 () Bool)

(assert (=> b!5387800 (=> (not res!2288897) (not e!3341612))))

(declare-fun lt!2194753 () Bool)

(assert (=> b!5387800 (= res!2288897 (not lt!2194753))))

(declare-fun b!5387801 () Bool)

(declare-fun res!2288900 () Bool)

(declare-fun e!3341616 () Bool)

(assert (=> b!5387801 (=> (not res!2288900) (not e!3341616))))

(declare-fun call!385681 () Bool)

(assert (=> b!5387801 (= res!2288900 (not call!385681))))

(declare-fun b!5387802 () Bool)

(declare-fun res!2288899 () Bool)

(assert (=> b!5387802 (=> (not res!2288899) (not e!3341616))))

(assert (=> b!5387802 (= res!2288899 (isEmpty!33554 (tail!10650 (_2!35629 lt!2194542))))))

(declare-fun b!5387803 () Bool)

(declare-fun e!3341613 () Bool)

(assert (=> b!5387803 (= e!3341613 (not lt!2194753))))

(declare-fun b!5387804 () Bool)

(declare-fun e!3341615 () Bool)

(assert (=> b!5387804 (= e!3341612 e!3341615)))

(declare-fun res!2288901 () Bool)

(assert (=> b!5387804 (=> res!2288901 e!3341615)))

(assert (=> b!5387804 (= res!2288901 call!385681)))

(declare-fun b!5387805 () Bool)

(declare-fun res!2288902 () Bool)

(assert (=> b!5387805 (=> res!2288902 e!3341614)))

(assert (=> b!5387805 (= res!2288902 (not ((_ is ElementMatch!15127) lt!2194501)))))

(assert (=> b!5387805 (= e!3341613 e!3341614)))

(declare-fun b!5387806 () Bool)

(declare-fun e!3341611 () Bool)

(assert (=> b!5387806 (= e!3341611 e!3341613)))

(declare-fun c!938902 () Bool)

(assert (=> b!5387806 (= c!938902 ((_ is EmptyLang!15127) lt!2194501))))

(declare-fun b!5387807 () Bool)

(declare-fun res!2288898 () Bool)

(assert (=> b!5387807 (=> res!2288898 e!3341614)))

(assert (=> b!5387807 (= res!2288898 e!3341616)))

(declare-fun res!2288903 () Bool)

(assert (=> b!5387807 (=> (not res!2288903) (not e!3341616))))

(assert (=> b!5387807 (= res!2288903 lt!2194753)))

(declare-fun b!5387808 () Bool)

(declare-fun res!2288904 () Bool)

(assert (=> b!5387808 (=> res!2288904 e!3341615)))

(assert (=> b!5387808 (= res!2288904 (not (isEmpty!33554 (tail!10650 (_2!35629 lt!2194542)))))))

(declare-fun b!5387809 () Bool)

(assert (=> b!5387809 (= e!3341616 (= (head!11553 (_2!35629 lt!2194542)) (c!938617 lt!2194501)))))

(declare-fun b!5387810 () Bool)

(assert (=> b!5387810 (= e!3341610 (matchR!7312 (derivativeStep!4239 lt!2194501 (head!11553 (_2!35629 lt!2194542))) (tail!10650 (_2!35629 lt!2194542))))))

(declare-fun d!1722991 () Bool)

(assert (=> d!1722991 e!3341611))

(declare-fun c!938901 () Bool)

(assert (=> d!1722991 (= c!938901 ((_ is EmptyExpr!15127) lt!2194501))))

(assert (=> d!1722991 (= lt!2194753 e!3341610)))

(declare-fun c!938903 () Bool)

(assert (=> d!1722991 (= c!938903 (isEmpty!33554 (_2!35629 lt!2194542)))))

(assert (=> d!1722991 (validRegex!6863 lt!2194501)))

(assert (=> d!1722991 (= (matchR!7312 lt!2194501 (_2!35629 lt!2194542)) lt!2194753)))

(declare-fun bm!385676 () Bool)

(assert (=> bm!385676 (= call!385681 (isEmpty!33554 (_2!35629 lt!2194542)))))

(declare-fun b!5387811 () Bool)

(assert (=> b!5387811 (= e!3341611 (= lt!2194753 call!385681))))

(declare-fun b!5387812 () Bool)

(assert (=> b!5387812 (= e!3341615 (not (= (head!11553 (_2!35629 lt!2194542)) (c!938617 lt!2194501))))))

(assert (= (and d!1722991 c!938903) b!5387799))

(assert (= (and d!1722991 (not c!938903)) b!5387810))

(assert (= (and d!1722991 c!938901) b!5387811))

(assert (= (and d!1722991 (not c!938901)) b!5387806))

(assert (= (and b!5387806 c!938902) b!5387803))

(assert (= (and b!5387806 (not c!938902)) b!5387805))

(assert (= (and b!5387805 (not res!2288902)) b!5387807))

(assert (= (and b!5387807 res!2288903) b!5387801))

(assert (= (and b!5387801 res!2288900) b!5387802))

(assert (= (and b!5387802 res!2288899) b!5387809))

(assert (= (and b!5387807 (not res!2288898)) b!5387800))

(assert (= (and b!5387800 res!2288897) b!5387804))

(assert (= (and b!5387804 (not res!2288901)) b!5387808))

(assert (= (and b!5387808 (not res!2288904)) b!5387812))

(assert (= (or b!5387811 b!5387801 b!5387804) bm!385676))

(assert (=> b!5387799 m!6412678))

(declare-fun m!6413748 () Bool)

(assert (=> d!1722991 m!6413748))

(assert (=> d!1722991 m!6412680))

(declare-fun m!6413750 () Bool)

(assert (=> b!5387810 m!6413750))

(assert (=> b!5387810 m!6413750))

(declare-fun m!6413752 () Bool)

(assert (=> b!5387810 m!6413752))

(declare-fun m!6413754 () Bool)

(assert (=> b!5387810 m!6413754))

(assert (=> b!5387810 m!6413752))

(assert (=> b!5387810 m!6413754))

(declare-fun m!6413756 () Bool)

(assert (=> b!5387810 m!6413756))

(assert (=> b!5387808 m!6413754))

(assert (=> b!5387808 m!6413754))

(declare-fun m!6413758 () Bool)

(assert (=> b!5387808 m!6413758))

(assert (=> bm!385676 m!6413748))

(assert (=> b!5387809 m!6413750))

(assert (=> b!5387802 m!6413754))

(assert (=> b!5387802 m!6413754))

(assert (=> b!5387802 m!6413758))

(assert (=> b!5387812 m!6413750))

(assert (=> b!5386696 d!1722991))

(declare-fun b!5387813 () Bool)

(declare-fun res!2288905 () Bool)

(declare-fun e!3341617 () Bool)

(assert (=> b!5387813 (=> (not res!2288905) (not e!3341617))))

(declare-fun lt!2194755 () Option!15238)

(assert (=> b!5387813 (= res!2288905 (matchR!7312 (regTwo!30766 r!7292) (_2!35629 (get!21199 lt!2194755))))))

(declare-fun b!5387814 () Bool)

(declare-fun res!2288908 () Bool)

(assert (=> b!5387814 (=> (not res!2288908) (not e!3341617))))

(assert (=> b!5387814 (= res!2288908 (matchR!7312 (regOne!30766 r!7292) (_1!35629 (get!21199 lt!2194755))))))

(declare-fun b!5387816 () Bool)

(declare-fun e!3341621 () Option!15238)

(declare-fun e!3341620 () Option!15238)

(assert (=> b!5387816 (= e!3341621 e!3341620)))

(declare-fun c!938904 () Bool)

(assert (=> b!5387816 (= c!938904 ((_ is Nil!61556) s!2326))))

(declare-fun b!5387817 () Bool)

(declare-fun e!3341618 () Bool)

(assert (=> b!5387817 (= e!3341618 (not (isDefined!11941 lt!2194755)))))

(declare-fun b!5387818 () Bool)

(declare-fun e!3341619 () Bool)

(assert (=> b!5387818 (= e!3341619 (matchR!7312 (regTwo!30766 r!7292) s!2326))))

(declare-fun b!5387819 () Bool)

(assert (=> b!5387819 (= e!3341621 (Some!15237 (tuple2!64653 Nil!61556 s!2326)))))

(declare-fun b!5387820 () Bool)

(assert (=> b!5387820 (= e!3341617 (= (++!13439 (_1!35629 (get!21199 lt!2194755)) (_2!35629 (get!21199 lt!2194755))) s!2326))))

(declare-fun b!5387821 () Bool)

(declare-fun lt!2194754 () Unit!154026)

(declare-fun lt!2194756 () Unit!154026)

(assert (=> b!5387821 (= lt!2194754 lt!2194756)))

(assert (=> b!5387821 (= (++!13439 (++!13439 Nil!61556 (Cons!61556 (h!68004 s!2326) Nil!61556)) (t!374903 s!2326)) s!2326)))

(assert (=> b!5387821 (= lt!2194756 (lemmaMoveElementToOtherListKeepsConcatEq!1813 Nil!61556 (h!68004 s!2326) (t!374903 s!2326) s!2326))))

(assert (=> b!5387821 (= e!3341620 (findConcatSeparation!1652 (regOne!30766 r!7292) (regTwo!30766 r!7292) (++!13439 Nil!61556 (Cons!61556 (h!68004 s!2326) Nil!61556)) (t!374903 s!2326) s!2326))))

(declare-fun b!5387815 () Bool)

(assert (=> b!5387815 (= e!3341620 None!15237)))

(declare-fun d!1722993 () Bool)

(assert (=> d!1722993 e!3341618))

(declare-fun res!2288909 () Bool)

(assert (=> d!1722993 (=> res!2288909 e!3341618)))

(assert (=> d!1722993 (= res!2288909 e!3341617)))

(declare-fun res!2288907 () Bool)

(assert (=> d!1722993 (=> (not res!2288907) (not e!3341617))))

(assert (=> d!1722993 (= res!2288907 (isDefined!11941 lt!2194755))))

(assert (=> d!1722993 (= lt!2194755 e!3341621)))

(declare-fun c!938905 () Bool)

(assert (=> d!1722993 (= c!938905 e!3341619)))

(declare-fun res!2288906 () Bool)

(assert (=> d!1722993 (=> (not res!2288906) (not e!3341619))))

(assert (=> d!1722993 (= res!2288906 (matchR!7312 (regOne!30766 r!7292) Nil!61556))))

(assert (=> d!1722993 (validRegex!6863 (regOne!30766 r!7292))))

(assert (=> d!1722993 (= (findConcatSeparation!1652 (regOne!30766 r!7292) (regTwo!30766 r!7292) Nil!61556 s!2326 s!2326) lt!2194755)))

(assert (= (and d!1722993 res!2288906) b!5387818))

(assert (= (and d!1722993 c!938905) b!5387819))

(assert (= (and d!1722993 (not c!938905)) b!5387816))

(assert (= (and b!5387816 c!938904) b!5387815))

(assert (= (and b!5387816 (not c!938904)) b!5387821))

(assert (= (and d!1722993 res!2288907) b!5387814))

(assert (= (and b!5387814 res!2288908) b!5387813))

(assert (= (and b!5387813 res!2288905) b!5387820))

(assert (= (and d!1722993 (not res!2288909)) b!5387817))

(declare-fun m!6413760 () Bool)

(assert (=> b!5387813 m!6413760))

(declare-fun m!6413762 () Bool)

(assert (=> b!5387813 m!6413762))

(assert (=> b!5387818 m!6413408))

(assert (=> b!5387821 m!6413410))

(assert (=> b!5387821 m!6413410))

(assert (=> b!5387821 m!6413412))

(assert (=> b!5387821 m!6413414))

(assert (=> b!5387821 m!6413410))

(declare-fun m!6413764 () Bool)

(assert (=> b!5387821 m!6413764))

(assert (=> b!5387820 m!6413760))

(declare-fun m!6413766 () Bool)

(assert (=> b!5387820 m!6413766))

(assert (=> b!5387814 m!6413760))

(declare-fun m!6413768 () Bool)

(assert (=> b!5387814 m!6413768))

(declare-fun m!6413770 () Bool)

(assert (=> d!1722993 m!6413770))

(declare-fun m!6413772 () Bool)

(assert (=> d!1722993 m!6413772))

(declare-fun m!6413774 () Bool)

(assert (=> d!1722993 m!6413774))

(assert (=> b!5387817 m!6413770))

(assert (=> b!5386717 d!1722993))

(declare-fun d!1722995 () Bool)

(assert (=> d!1722995 (= (Exists!2308 lambda!279425) (choose!40516 lambda!279425))))

(declare-fun bs!1246861 () Bool)

(assert (= bs!1246861 d!1722995))

(declare-fun m!6413776 () Bool)

(assert (=> bs!1246861 m!6413776))

(assert (=> b!5386717 d!1722995))

(declare-fun d!1722997 () Bool)

(assert (=> d!1722997 (= (Exists!2308 lambda!279426) (choose!40516 lambda!279426))))

(declare-fun bs!1246862 () Bool)

(assert (= bs!1246862 d!1722997))

(declare-fun m!6413778 () Bool)

(assert (=> bs!1246862 m!6413778))

(assert (=> b!5386717 d!1722997))

(declare-fun bs!1246863 () Bool)

(declare-fun d!1722999 () Bool)

(assert (= bs!1246863 (and d!1722999 d!1722801)))

(declare-fun lambda!279527 () Int)

(assert (=> bs!1246863 (= (= (regOne!30766 r!7292) lt!2194501) (= lambda!279527 lambda!279471))))

(declare-fun bs!1246864 () Bool)

(assert (= bs!1246864 (and d!1722999 b!5386710)))

(assert (=> bs!1246864 (not (= lambda!279527 lambda!279432))))

(declare-fun bs!1246865 () Bool)

(assert (= bs!1246865 (and d!1722999 b!5387082)))

(assert (=> bs!1246865 (not (= lambda!279527 lambda!279452))))

(declare-fun bs!1246866 () Bool)

(assert (= bs!1246866 (and d!1722999 b!5386707)))

(assert (=> bs!1246866 (not (= lambda!279527 lambda!279429))))

(declare-fun bs!1246867 () Bool)

(assert (= bs!1246867 (and d!1722999 b!5386717)))

(assert (=> bs!1246867 (= lambda!279527 lambda!279425)))

(declare-fun bs!1246868 () Bool)

(assert (= bs!1246868 (and d!1722999 d!1722899)))

(assert (=> bs!1246868 (= (and (= s!2326 (_1!35629 lt!2194533)) (= (regOne!30766 r!7292) (reg!15456 (regOne!30766 r!7292))) (= (regTwo!30766 r!7292) lt!2194501)) (= lambda!279527 lambda!279492))))

(declare-fun bs!1246869 () Bool)

(assert (= bs!1246869 (and d!1722999 d!1722809)))

(assert (=> bs!1246869 (not (= lambda!279527 lambda!279478))))

(declare-fun bs!1246870 () Bool)

(assert (= bs!1246870 (and d!1722999 b!5387748)))

(assert (=> bs!1246870 (not (= lambda!279527 lambda!279522))))

(declare-fun bs!1246871 () Bool)

(assert (= bs!1246871 (and d!1722999 b!5387753)))

(assert (=> bs!1246871 (not (= lambda!279527 lambda!279523))))

(assert (=> bs!1246864 (= (and (= s!2326 (_1!35629 lt!2194533)) (= (regOne!30766 r!7292) (reg!15456 (regOne!30766 r!7292))) (= (regTwo!30766 r!7292) lt!2194501)) (= lambda!279527 lambda!279430))))

(assert (=> bs!1246869 (= (= (regOne!30766 r!7292) lt!2194501) (= lambda!279527 lambda!279477))))

(declare-fun bs!1246872 () Bool)

(assert (= bs!1246872 (and d!1722999 b!5387642)))

(assert (=> bs!1246872 (not (= lambda!279527 lambda!279505))))

(declare-fun bs!1246873 () Bool)

(assert (= bs!1246873 (and d!1722999 d!1722893)))

(assert (=> bs!1246873 (not (= lambda!279527 lambda!279488))))

(assert (=> bs!1246867 (not (= lambda!279527 lambda!279426))))

(declare-fun bs!1246874 () Bool)

(assert (= bs!1246874 (and d!1722999 b!5387637)))

(assert (=> bs!1246874 (not (= lambda!279527 lambda!279503))))

(assert (=> bs!1246866 (= (= (regOne!30766 r!7292) lt!2194501) (= lambda!279527 lambda!279428))))

(declare-fun bs!1246875 () Bool)

(assert (= bs!1246875 (and d!1722999 d!1722905)))

(assert (=> bs!1246875 (= (and (= s!2326 (_1!35629 lt!2194533)) (= (regOne!30766 r!7292) (reg!15456 (regOne!30766 r!7292))) (= (regTwo!30766 r!7292) (Star!15127 (reg!15456 (regOne!30766 r!7292))))) (= lambda!279527 lambda!279497))))

(assert (=> bs!1246864 (not (= lambda!279527 lambda!279431))))

(declare-fun bs!1246876 () Bool)

(assert (= bs!1246876 (and d!1722999 b!5387087)))

(assert (=> bs!1246876 (not (= lambda!279527 lambda!279454))))

(assert (=> bs!1246875 (not (= lambda!279527 lambda!279498))))

(assert (=> bs!1246873 (= (and (= s!2326 (_1!35629 lt!2194533)) (= (regOne!30766 r!7292) (reg!15456 (regOne!30766 r!7292))) (= (regTwo!30766 r!7292) lt!2194501)) (= lambda!279527 lambda!279487))))

(assert (=> d!1722999 true))

(assert (=> d!1722999 true))

(assert (=> d!1722999 true))

(assert (=> d!1722999 (= (isDefined!11941 (findConcatSeparation!1652 (regOne!30766 r!7292) (regTwo!30766 r!7292) Nil!61556 s!2326 s!2326)) (Exists!2308 lambda!279527))))

(declare-fun lt!2194757 () Unit!154026)

(assert (=> d!1722999 (= lt!2194757 (choose!40515 (regOne!30766 r!7292) (regTwo!30766 r!7292) s!2326))))

(assert (=> d!1722999 (validRegex!6863 (regOne!30766 r!7292))))

(assert (=> d!1722999 (= (lemmaFindConcatSeparationEquivalentToExists!1416 (regOne!30766 r!7292) (regTwo!30766 r!7292) s!2326) lt!2194757)))

(declare-fun bs!1246877 () Bool)

(assert (= bs!1246877 d!1722999))

(assert (=> bs!1246877 m!6412524))

(assert (=> bs!1246877 m!6412526))

(assert (=> bs!1246877 m!6412524))

(declare-fun m!6413780 () Bool)

(assert (=> bs!1246877 m!6413780))

(declare-fun m!6413782 () Bool)

(assert (=> bs!1246877 m!6413782))

(assert (=> bs!1246877 m!6413774))

(assert (=> b!5386717 d!1722999))

(declare-fun bs!1246878 () Bool)

(declare-fun d!1723001 () Bool)

(assert (= bs!1246878 (and d!1723001 d!1722801)))

(declare-fun lambda!279528 () Int)

(assert (=> bs!1246878 (= (= (regOne!30766 r!7292) lt!2194501) (= lambda!279528 lambda!279471))))

(declare-fun bs!1246879 () Bool)

(assert (= bs!1246879 (and d!1723001 b!5387082)))

(assert (=> bs!1246879 (not (= lambda!279528 lambda!279452))))

(declare-fun bs!1246880 () Bool)

(assert (= bs!1246880 (and d!1723001 b!5386707)))

(assert (=> bs!1246880 (not (= lambda!279528 lambda!279429))))

(declare-fun bs!1246881 () Bool)

(assert (= bs!1246881 (and d!1723001 b!5386717)))

(assert (=> bs!1246881 (= lambda!279528 lambda!279425)))

(declare-fun bs!1246882 () Bool)

(assert (= bs!1246882 (and d!1723001 d!1722899)))

(assert (=> bs!1246882 (= (and (= s!2326 (_1!35629 lt!2194533)) (= (regOne!30766 r!7292) (reg!15456 (regOne!30766 r!7292))) (= (regTwo!30766 r!7292) lt!2194501)) (= lambda!279528 lambda!279492))))

(declare-fun bs!1246883 () Bool)

(assert (= bs!1246883 (and d!1723001 d!1722809)))

(assert (=> bs!1246883 (not (= lambda!279528 lambda!279478))))

(declare-fun bs!1246884 () Bool)

(assert (= bs!1246884 (and d!1723001 b!5387748)))

(assert (=> bs!1246884 (not (= lambda!279528 lambda!279522))))

(declare-fun bs!1246885 () Bool)

(assert (= bs!1246885 (and d!1723001 b!5387753)))

(assert (=> bs!1246885 (not (= lambda!279528 lambda!279523))))

(declare-fun bs!1246886 () Bool)

(assert (= bs!1246886 (and d!1723001 b!5386710)))

(assert (=> bs!1246886 (= (and (= s!2326 (_1!35629 lt!2194533)) (= (regOne!30766 r!7292) (reg!15456 (regOne!30766 r!7292))) (= (regTwo!30766 r!7292) lt!2194501)) (= lambda!279528 lambda!279430))))

(assert (=> bs!1246883 (= (= (regOne!30766 r!7292) lt!2194501) (= lambda!279528 lambda!279477))))

(declare-fun bs!1246887 () Bool)

(assert (= bs!1246887 (and d!1723001 b!5387642)))

(assert (=> bs!1246887 (not (= lambda!279528 lambda!279505))))

(declare-fun bs!1246888 () Bool)

(assert (= bs!1246888 (and d!1723001 d!1722893)))

(assert (=> bs!1246888 (not (= lambda!279528 lambda!279488))))

(assert (=> bs!1246886 (not (= lambda!279528 lambda!279432))))

(declare-fun bs!1246889 () Bool)

(assert (= bs!1246889 (and d!1723001 d!1722999)))

(assert (=> bs!1246889 (= lambda!279528 lambda!279527)))

(assert (=> bs!1246881 (not (= lambda!279528 lambda!279426))))

(declare-fun bs!1246890 () Bool)

(assert (= bs!1246890 (and d!1723001 b!5387637)))

(assert (=> bs!1246890 (not (= lambda!279528 lambda!279503))))

(assert (=> bs!1246880 (= (= (regOne!30766 r!7292) lt!2194501) (= lambda!279528 lambda!279428))))

(declare-fun bs!1246891 () Bool)

(assert (= bs!1246891 (and d!1723001 d!1722905)))

(assert (=> bs!1246891 (= (and (= s!2326 (_1!35629 lt!2194533)) (= (regOne!30766 r!7292) (reg!15456 (regOne!30766 r!7292))) (= (regTwo!30766 r!7292) (Star!15127 (reg!15456 (regOne!30766 r!7292))))) (= lambda!279528 lambda!279497))))

(assert (=> bs!1246886 (not (= lambda!279528 lambda!279431))))

(declare-fun bs!1246892 () Bool)

(assert (= bs!1246892 (and d!1723001 b!5387087)))

(assert (=> bs!1246892 (not (= lambda!279528 lambda!279454))))

(assert (=> bs!1246891 (not (= lambda!279528 lambda!279498))))

(assert (=> bs!1246888 (= (and (= s!2326 (_1!35629 lt!2194533)) (= (regOne!30766 r!7292) (reg!15456 (regOne!30766 r!7292))) (= (regTwo!30766 r!7292) lt!2194501)) (= lambda!279528 lambda!279487))))

(assert (=> d!1723001 true))

(assert (=> d!1723001 true))

(assert (=> d!1723001 true))

(declare-fun lambda!279529 () Int)

(assert (=> bs!1246878 (not (= lambda!279529 lambda!279471))))

(declare-fun bs!1246893 () Bool)

(assert (= bs!1246893 d!1723001))

(assert (=> bs!1246893 (not (= lambda!279529 lambda!279528))))

(assert (=> bs!1246879 (not (= lambda!279529 lambda!279452))))

(assert (=> bs!1246880 (= (= (regOne!30766 r!7292) lt!2194501) (= lambda!279529 lambda!279429))))

(assert (=> bs!1246881 (not (= lambda!279529 lambda!279425))))

(assert (=> bs!1246882 (not (= lambda!279529 lambda!279492))))

(assert (=> bs!1246883 (= (= (regOne!30766 r!7292) lt!2194501) (= lambda!279529 lambda!279478))))

(assert (=> bs!1246884 (not (= lambda!279529 lambda!279522))))

(assert (=> bs!1246885 (= (and (= (regOne!30766 r!7292) (regOne!30766 lt!2194541)) (= (regTwo!30766 r!7292) (regTwo!30766 lt!2194541))) (= lambda!279529 lambda!279523))))

(assert (=> bs!1246886 (not (= lambda!279529 lambda!279430))))

(assert (=> bs!1246883 (not (= lambda!279529 lambda!279477))))

(assert (=> bs!1246887 (= (and (= s!2326 (_1!35629 lt!2194533)) (= (regOne!30766 r!7292) (regOne!30766 lt!2194501)) (= (regTwo!30766 r!7292) (regTwo!30766 lt!2194501))) (= lambda!279529 lambda!279505))))

(assert (=> bs!1246888 (= (and (= s!2326 (_1!35629 lt!2194533)) (= (regOne!30766 r!7292) (reg!15456 (regOne!30766 r!7292))) (= (regTwo!30766 r!7292) lt!2194501)) (= lambda!279529 lambda!279488))))

(assert (=> bs!1246886 (= (and (= s!2326 (_1!35629 lt!2194533)) (= (regOne!30766 r!7292) (reg!15456 (regOne!30766 r!7292))) (= (regTwo!30766 r!7292) lt!2194501)) (= lambda!279529 lambda!279432))))

(assert (=> bs!1246889 (not (= lambda!279529 lambda!279527))))

(assert (=> bs!1246881 (= lambda!279529 lambda!279426)))

(assert (=> bs!1246890 (not (= lambda!279529 lambda!279503))))

(assert (=> bs!1246880 (not (= lambda!279529 lambda!279428))))

(assert (=> bs!1246891 (not (= lambda!279529 lambda!279497))))

(assert (=> bs!1246886 (not (= lambda!279529 lambda!279431))))

(assert (=> bs!1246892 (= lambda!279529 lambda!279454)))

(assert (=> bs!1246891 (not (= lambda!279529 lambda!279498))))

(assert (=> bs!1246888 (not (= lambda!279529 lambda!279487))))

(assert (=> d!1723001 true))

(assert (=> d!1723001 true))

(assert (=> d!1723001 true))

(assert (=> d!1723001 (= (Exists!2308 lambda!279528) (Exists!2308 lambda!279529))))

(declare-fun lt!2194758 () Unit!154026)

(assert (=> d!1723001 (= lt!2194758 (choose!40517 (regOne!30766 r!7292) (regTwo!30766 r!7292) s!2326))))

(assert (=> d!1723001 (validRegex!6863 (regOne!30766 r!7292))))

(assert (=> d!1723001 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!962 (regOne!30766 r!7292) (regTwo!30766 r!7292) s!2326) lt!2194758)))

(declare-fun m!6413784 () Bool)

(assert (=> bs!1246893 m!6413784))

(declare-fun m!6413786 () Bool)

(assert (=> bs!1246893 m!6413786))

(declare-fun m!6413788 () Bool)

(assert (=> bs!1246893 m!6413788))

(assert (=> bs!1246893 m!6413774))

(assert (=> b!5386717 d!1723001))

(declare-fun d!1723003 () Bool)

(assert (=> d!1723003 (= (isDefined!11941 (findConcatSeparation!1652 (regOne!30766 r!7292) (regTwo!30766 r!7292) Nil!61556 s!2326 s!2326)) (not (isEmpty!33556 (findConcatSeparation!1652 (regOne!30766 r!7292) (regTwo!30766 r!7292) Nil!61556 s!2326 s!2326))))))

(declare-fun bs!1246894 () Bool)

(assert (= bs!1246894 d!1723003))

(assert (=> bs!1246894 m!6412524))

(declare-fun m!6413790 () Bool)

(assert (=> bs!1246894 m!6413790))

(assert (=> b!5386717 d!1723003))

(declare-fun b!5387822 () Bool)

(declare-fun e!3341624 () Bool)

(assert (=> b!5387822 (= e!3341624 (nullable!5296 (h!68005 (exprs!5011 lt!2194523))))))

(declare-fun b!5387823 () Bool)

(declare-fun e!3341623 () (InoxSet Context!9022))

(declare-fun call!385682 () (InoxSet Context!9022))

(assert (=> b!5387823 (= e!3341623 call!385682)))

(declare-fun d!1723005 () Bool)

(declare-fun c!938906 () Bool)

(assert (=> d!1723005 (= c!938906 e!3341624)))

(declare-fun res!2288910 () Bool)

(assert (=> d!1723005 (=> (not res!2288910) (not e!3341624))))

(assert (=> d!1723005 (= res!2288910 ((_ is Cons!61557) (exprs!5011 lt!2194523)))))

(declare-fun e!3341622 () (InoxSet Context!9022))

(assert (=> d!1723005 (= (derivationStepZipperUp!499 lt!2194523 (h!68004 s!2326)) e!3341622)))

(declare-fun bm!385677 () Bool)

(assert (=> bm!385677 (= call!385682 (derivationStepZipperDown!575 (h!68005 (exprs!5011 lt!2194523)) (Context!9023 (t!374904 (exprs!5011 lt!2194523))) (h!68004 s!2326)))))

(declare-fun b!5387824 () Bool)

(assert (=> b!5387824 (= e!3341622 ((_ map or) call!385682 (derivationStepZipperUp!499 (Context!9023 (t!374904 (exprs!5011 lt!2194523))) (h!68004 s!2326))))))

(declare-fun b!5387825 () Bool)

(assert (=> b!5387825 (= e!3341622 e!3341623)))

(declare-fun c!938907 () Bool)

(assert (=> b!5387825 (= c!938907 ((_ is Cons!61557) (exprs!5011 lt!2194523)))))

(declare-fun b!5387826 () Bool)

(assert (=> b!5387826 (= e!3341623 ((as const (Array Context!9022 Bool)) false))))

(assert (= (and d!1723005 res!2288910) b!5387822))

(assert (= (and d!1723005 c!938906) b!5387824))

(assert (= (and d!1723005 (not c!938906)) b!5387825))

(assert (= (and b!5387825 c!938907) b!5387823))

(assert (= (and b!5387825 (not c!938907)) b!5387826))

(assert (= (or b!5387824 b!5387823) bm!385677))

(declare-fun m!6413792 () Bool)

(assert (=> b!5387822 m!6413792))

(declare-fun m!6413794 () Bool)

(assert (=> bm!385677 m!6413794))

(declare-fun m!6413796 () Bool)

(assert (=> b!5387824 m!6413796))

(assert (=> b!5386718 d!1723005))

(declare-fun d!1723007 () Bool)

(declare-fun nullableFct!1570 (Regex!15127) Bool)

(assert (=> d!1723007 (= (nullable!5296 (h!68005 (exprs!5011 (h!68006 zl!343)))) (nullableFct!1570 (h!68005 (exprs!5011 (h!68006 zl!343)))))))

(declare-fun bs!1246895 () Bool)

(assert (= bs!1246895 d!1723007))

(declare-fun m!6413798 () Bool)

(assert (=> bs!1246895 m!6413798))

(assert (=> b!5386718 d!1723007))

(declare-fun call!385685 () List!61681)

(declare-fun c!938910 () Bool)

(declare-fun call!385686 () (InoxSet Context!9022))

(declare-fun bm!385678 () Bool)

(assert (=> bm!385678 (= call!385686 (derivationStepZipperDown!575 (ite c!938910 (regTwo!30767 (h!68005 (exprs!5011 (h!68006 zl!343)))) (regOne!30766 (h!68005 (exprs!5011 (h!68006 zl!343))))) (ite c!938910 lt!2194523 (Context!9023 call!385685)) (h!68004 s!2326)))))

(declare-fun d!1723009 () Bool)

(declare-fun c!938909 () Bool)

(assert (=> d!1723009 (= c!938909 (and ((_ is ElementMatch!15127) (h!68005 (exprs!5011 (h!68006 zl!343)))) (= (c!938617 (h!68005 (exprs!5011 (h!68006 zl!343)))) (h!68004 s!2326))))))

(declare-fun e!3341626 () (InoxSet Context!9022))

(assert (=> d!1723009 (= (derivationStepZipperDown!575 (h!68005 (exprs!5011 (h!68006 zl!343))) lt!2194523 (h!68004 s!2326)) e!3341626)))

(declare-fun bm!385679 () Bool)

(declare-fun call!385687 () (InoxSet Context!9022))

(declare-fun call!385684 () (InoxSet Context!9022))

(assert (=> bm!385679 (= call!385687 call!385684)))

(declare-fun b!5387827 () Bool)

(declare-fun e!3341629 () (InoxSet Context!9022))

(declare-fun call!385688 () (InoxSet Context!9022))

(assert (=> b!5387827 (= e!3341629 ((_ map or) call!385688 call!385686))))

(declare-fun b!5387828 () Bool)

(declare-fun e!3341627 () Bool)

(assert (=> b!5387828 (= e!3341627 (nullable!5296 (regOne!30766 (h!68005 (exprs!5011 (h!68006 zl!343))))))))

(declare-fun b!5387829 () Bool)

(declare-fun e!3341630 () (InoxSet Context!9022))

(assert (=> b!5387829 (= e!3341630 call!385687)))

(declare-fun c!938911 () Bool)

(declare-fun c!938912 () Bool)

(declare-fun bm!385680 () Bool)

(declare-fun call!385683 () List!61681)

(assert (=> bm!385680 (= call!385688 (derivationStepZipperDown!575 (ite c!938910 (regOne!30767 (h!68005 (exprs!5011 (h!68006 zl!343)))) (ite c!938911 (regTwo!30766 (h!68005 (exprs!5011 (h!68006 zl!343)))) (ite c!938912 (regOne!30766 (h!68005 (exprs!5011 (h!68006 zl!343)))) (reg!15456 (h!68005 (exprs!5011 (h!68006 zl!343))))))) (ite (or c!938910 c!938911) lt!2194523 (Context!9023 call!385683)) (h!68004 s!2326)))))

(declare-fun b!5387830 () Bool)

(assert (=> b!5387830 (= c!938911 e!3341627)))

(declare-fun res!2288911 () Bool)

(assert (=> b!5387830 (=> (not res!2288911) (not e!3341627))))

(assert (=> b!5387830 (= res!2288911 ((_ is Concat!23972) (h!68005 (exprs!5011 (h!68006 zl!343)))))))

(declare-fun e!3341628 () (InoxSet Context!9022))

(assert (=> b!5387830 (= e!3341629 e!3341628)))

(declare-fun b!5387831 () Bool)

(assert (=> b!5387831 (= e!3341626 (store ((as const (Array Context!9022 Bool)) false) lt!2194523 true))))

(declare-fun b!5387832 () Bool)

(declare-fun c!938908 () Bool)

(assert (=> b!5387832 (= c!938908 ((_ is Star!15127) (h!68005 (exprs!5011 (h!68006 zl!343)))))))

(declare-fun e!3341625 () (InoxSet Context!9022))

(assert (=> b!5387832 (= e!3341625 e!3341630)))

(declare-fun b!5387833 () Bool)

(assert (=> b!5387833 (= e!3341628 e!3341625)))

(assert (=> b!5387833 (= c!938912 ((_ is Concat!23972) (h!68005 (exprs!5011 (h!68006 zl!343)))))))

(declare-fun bm!385681 () Bool)

(assert (=> bm!385681 (= call!385683 call!385685)))

(declare-fun b!5387834 () Bool)

(assert (=> b!5387834 (= e!3341630 ((as const (Array Context!9022 Bool)) false))))

(declare-fun bm!385682 () Bool)

(assert (=> bm!385682 (= call!385685 ($colon$colon!1467 (exprs!5011 lt!2194523) (ite (or c!938911 c!938912) (regTwo!30766 (h!68005 (exprs!5011 (h!68006 zl!343)))) (h!68005 (exprs!5011 (h!68006 zl!343))))))))

(declare-fun b!5387835 () Bool)

(assert (=> b!5387835 (= e!3341625 call!385687)))

(declare-fun b!5387836 () Bool)

(assert (=> b!5387836 (= e!3341628 ((_ map or) call!385686 call!385684))))

(declare-fun b!5387837 () Bool)

(assert (=> b!5387837 (= e!3341626 e!3341629)))

(assert (=> b!5387837 (= c!938910 ((_ is Union!15127) (h!68005 (exprs!5011 (h!68006 zl!343)))))))

(declare-fun bm!385683 () Bool)

(assert (=> bm!385683 (= call!385684 call!385688)))

(assert (= (and d!1723009 c!938909) b!5387831))

(assert (= (and d!1723009 (not c!938909)) b!5387837))

(assert (= (and b!5387837 c!938910) b!5387827))

(assert (= (and b!5387837 (not c!938910)) b!5387830))

(assert (= (and b!5387830 res!2288911) b!5387828))

(assert (= (and b!5387830 c!938911) b!5387836))

(assert (= (and b!5387830 (not c!938911)) b!5387833))

(assert (= (and b!5387833 c!938912) b!5387835))

(assert (= (and b!5387833 (not c!938912)) b!5387832))

(assert (= (and b!5387832 c!938908) b!5387829))

(assert (= (and b!5387832 (not c!938908)) b!5387834))

(assert (= (or b!5387835 b!5387829) bm!385681))

(assert (= (or b!5387835 b!5387829) bm!385679))

(assert (= (or b!5387836 bm!385681) bm!385682))

(assert (= (or b!5387836 bm!385679) bm!385683))

(assert (= (or b!5387827 b!5387836) bm!385678))

(assert (= (or b!5387827 bm!385683) bm!385680))

(declare-fun m!6413800 () Bool)

(assert (=> b!5387828 m!6413800))

(declare-fun m!6413802 () Bool)

(assert (=> b!5387831 m!6413802))

(declare-fun m!6413804 () Bool)

(assert (=> bm!385680 m!6413804))

(declare-fun m!6413806 () Bool)

(assert (=> bm!385682 m!6413806))

(declare-fun m!6413808 () Bool)

(assert (=> bm!385678 m!6413808))

(assert (=> b!5386718 d!1723009))

(declare-fun d!1723011 () Bool)

(assert (=> d!1723011 (= (flatMap!854 z!1189 lambda!279427) (choose!40499 z!1189 lambda!279427))))

(declare-fun bs!1246896 () Bool)

(assert (= bs!1246896 d!1723011))

(declare-fun m!6413810 () Bool)

(assert (=> bs!1246896 m!6413810))

(assert (=> b!5386718 d!1723011))

(declare-fun b!5387838 () Bool)

(declare-fun e!3341633 () Bool)

(assert (=> b!5387838 (= e!3341633 (nullable!5296 (h!68005 (exprs!5011 (h!68006 zl!343)))))))

(declare-fun b!5387839 () Bool)

(declare-fun e!3341632 () (InoxSet Context!9022))

(declare-fun call!385689 () (InoxSet Context!9022))

(assert (=> b!5387839 (= e!3341632 call!385689)))

(declare-fun d!1723013 () Bool)

(declare-fun c!938913 () Bool)

(assert (=> d!1723013 (= c!938913 e!3341633)))

(declare-fun res!2288912 () Bool)

(assert (=> d!1723013 (=> (not res!2288912) (not e!3341633))))

(assert (=> d!1723013 (= res!2288912 ((_ is Cons!61557) (exprs!5011 (h!68006 zl!343))))))

(declare-fun e!3341631 () (InoxSet Context!9022))

(assert (=> d!1723013 (= (derivationStepZipperUp!499 (h!68006 zl!343) (h!68004 s!2326)) e!3341631)))

(declare-fun bm!385684 () Bool)

(assert (=> bm!385684 (= call!385689 (derivationStepZipperDown!575 (h!68005 (exprs!5011 (h!68006 zl!343))) (Context!9023 (t!374904 (exprs!5011 (h!68006 zl!343)))) (h!68004 s!2326)))))

(declare-fun b!5387840 () Bool)

(assert (=> b!5387840 (= e!3341631 ((_ map or) call!385689 (derivationStepZipperUp!499 (Context!9023 (t!374904 (exprs!5011 (h!68006 zl!343)))) (h!68004 s!2326))))))

(declare-fun b!5387841 () Bool)

(assert (=> b!5387841 (= e!3341631 e!3341632)))

(declare-fun c!938914 () Bool)

(assert (=> b!5387841 (= c!938914 ((_ is Cons!61557) (exprs!5011 (h!68006 zl!343))))))

(declare-fun b!5387842 () Bool)

(assert (=> b!5387842 (= e!3341632 ((as const (Array Context!9022 Bool)) false))))

(assert (= (and d!1723013 res!2288912) b!5387838))

(assert (= (and d!1723013 c!938913) b!5387840))

(assert (= (and d!1723013 (not c!938913)) b!5387841))

(assert (= (and b!5387841 c!938914) b!5387839))

(assert (= (and b!5387841 (not c!938914)) b!5387842))

(assert (= (or b!5387840 b!5387839) bm!385684))

(assert (=> b!5387838 m!6412628))

(declare-fun m!6413812 () Bool)

(assert (=> bm!385684 m!6413812))

(declare-fun m!6413814 () Bool)

(assert (=> b!5387840 m!6413814))

(assert (=> b!5386718 d!1723013))

(declare-fun d!1723015 () Bool)

(assert (=> d!1723015 (= (flatMap!854 z!1189 lambda!279427) (dynLambda!24278 lambda!279427 (h!68006 zl!343)))))

(declare-fun lt!2194759 () Unit!154026)

(assert (=> d!1723015 (= lt!2194759 (choose!40498 z!1189 (h!68006 zl!343) lambda!279427))))

(assert (=> d!1723015 (= z!1189 (store ((as const (Array Context!9022 Bool)) false) (h!68006 zl!343) true))))

(assert (=> d!1723015 (= (lemmaFlatMapOnSingletonSet!386 z!1189 (h!68006 zl!343) lambda!279427) lt!2194759)))

(declare-fun b_lambda!206179 () Bool)

(assert (=> (not b_lambda!206179) (not d!1723015)))

(declare-fun bs!1246897 () Bool)

(assert (= bs!1246897 d!1723015))

(assert (=> bs!1246897 m!6412630))

(declare-fun m!6413816 () Bool)

(assert (=> bs!1246897 m!6413816))

(declare-fun m!6413818 () Bool)

(assert (=> bs!1246897 m!6413818))

(declare-fun m!6413820 () Bool)

(assert (=> bs!1246897 m!6413820))

(assert (=> b!5386718 d!1723015))

(declare-fun b!5387843 () Bool)

(declare-fun e!3341636 () Bool)

(assert (=> b!5387843 (= e!3341636 (nullable!5296 (h!68005 (exprs!5011 (Context!9023 (Cons!61557 (h!68005 (exprs!5011 (h!68006 zl!343))) (t!374904 (exprs!5011 (h!68006 zl!343)))))))))))

(declare-fun b!5387844 () Bool)

(declare-fun e!3341635 () (InoxSet Context!9022))

(declare-fun call!385690 () (InoxSet Context!9022))

(assert (=> b!5387844 (= e!3341635 call!385690)))

(declare-fun d!1723017 () Bool)

(declare-fun c!938915 () Bool)

(assert (=> d!1723017 (= c!938915 e!3341636)))

(declare-fun res!2288913 () Bool)

(assert (=> d!1723017 (=> (not res!2288913) (not e!3341636))))

(assert (=> d!1723017 (= res!2288913 ((_ is Cons!61557) (exprs!5011 (Context!9023 (Cons!61557 (h!68005 (exprs!5011 (h!68006 zl!343))) (t!374904 (exprs!5011 (h!68006 zl!343))))))))))

(declare-fun e!3341634 () (InoxSet Context!9022))

(assert (=> d!1723017 (= (derivationStepZipperUp!499 (Context!9023 (Cons!61557 (h!68005 (exprs!5011 (h!68006 zl!343))) (t!374904 (exprs!5011 (h!68006 zl!343))))) (h!68004 s!2326)) e!3341634)))

(declare-fun bm!385685 () Bool)

(assert (=> bm!385685 (= call!385690 (derivationStepZipperDown!575 (h!68005 (exprs!5011 (Context!9023 (Cons!61557 (h!68005 (exprs!5011 (h!68006 zl!343))) (t!374904 (exprs!5011 (h!68006 zl!343))))))) (Context!9023 (t!374904 (exprs!5011 (Context!9023 (Cons!61557 (h!68005 (exprs!5011 (h!68006 zl!343))) (t!374904 (exprs!5011 (h!68006 zl!343)))))))) (h!68004 s!2326)))))

(declare-fun b!5387845 () Bool)

(assert (=> b!5387845 (= e!3341634 ((_ map or) call!385690 (derivationStepZipperUp!499 (Context!9023 (t!374904 (exprs!5011 (Context!9023 (Cons!61557 (h!68005 (exprs!5011 (h!68006 zl!343))) (t!374904 (exprs!5011 (h!68006 zl!343)))))))) (h!68004 s!2326))))))

(declare-fun b!5387846 () Bool)

(assert (=> b!5387846 (= e!3341634 e!3341635)))

(declare-fun c!938916 () Bool)

(assert (=> b!5387846 (= c!938916 ((_ is Cons!61557) (exprs!5011 (Context!9023 (Cons!61557 (h!68005 (exprs!5011 (h!68006 zl!343))) (t!374904 (exprs!5011 (h!68006 zl!343))))))))))

(declare-fun b!5387847 () Bool)

(assert (=> b!5387847 (= e!3341635 ((as const (Array Context!9022 Bool)) false))))

(assert (= (and d!1723017 res!2288913) b!5387843))

(assert (= (and d!1723017 c!938915) b!5387845))

(assert (= (and d!1723017 (not c!938915)) b!5387846))

(assert (= (and b!5387846 c!938916) b!5387844))

(assert (= (and b!5387846 (not c!938916)) b!5387847))

(assert (= (or b!5387845 b!5387844) bm!385685))

(declare-fun m!6413822 () Bool)

(assert (=> b!5387843 m!6413822))

(declare-fun m!6413824 () Bool)

(assert (=> bm!385685 m!6413824))

(declare-fun m!6413826 () Bool)

(assert (=> b!5387845 m!6413826))

(assert (=> b!5386718 d!1723017))

(declare-fun d!1723019 () Bool)

(assert (=> d!1723019 (= (nullable!5296 (regOne!30766 (regOne!30766 r!7292))) (nullableFct!1570 (regOne!30766 (regOne!30766 r!7292))))))

(declare-fun bs!1246898 () Bool)

(assert (= bs!1246898 d!1723019))

(declare-fun m!6413828 () Bool)

(assert (=> bs!1246898 m!6413828))

(assert (=> b!5386698 d!1723019))

(declare-fun d!1723021 () Bool)

(declare-fun c!938917 () Bool)

(assert (=> d!1723021 (= c!938917 (isEmpty!33554 (t!374903 s!2326)))))

(declare-fun e!3341637 () Bool)

(assert (=> d!1723021 (= (matchZipper!1371 lt!2194518 (t!374903 s!2326)) e!3341637)))

(declare-fun b!5387848 () Bool)

(assert (=> b!5387848 (= e!3341637 (nullableZipper!1418 lt!2194518))))

(declare-fun b!5387849 () Bool)

(assert (=> b!5387849 (= e!3341637 (matchZipper!1371 (derivationStepZipper!1366 lt!2194518 (head!11553 (t!374903 s!2326))) (tail!10650 (t!374903 s!2326))))))

(assert (= (and d!1723021 c!938917) b!5387848))

(assert (= (and d!1723021 (not c!938917)) b!5387849))

(assert (=> d!1723021 m!6413448))

(declare-fun m!6413830 () Bool)

(assert (=> b!5387848 m!6413830))

(assert (=> b!5387849 m!6413452))

(assert (=> b!5387849 m!6413452))

(declare-fun m!6413832 () Bool)

(assert (=> b!5387849 m!6413832))

(assert (=> b!5387849 m!6413456))

(assert (=> b!5387849 m!6413832))

(assert (=> b!5387849 m!6413456))

(declare-fun m!6413834 () Bool)

(assert (=> b!5387849 m!6413834))

(assert (=> b!5386720 d!1723021))

(declare-fun bs!1246899 () Bool)

(declare-fun d!1723023 () Bool)

(assert (= bs!1246899 (and d!1723023 d!1722939)))

(declare-fun lambda!279530 () Int)

(assert (=> bs!1246899 (= lambda!279530 lambda!279512)))

(declare-fun bs!1246900 () Bool)

(assert (= bs!1246900 (and d!1723023 b!5386705)))

(assert (=> bs!1246900 (= lambda!279530 lambda!279433)))

(declare-fun bs!1246901 () Bool)

(assert (= bs!1246901 (and d!1723023 d!1722759)))

(assert (=> bs!1246901 (= lambda!279530 lambda!279460)))

(declare-fun bs!1246902 () Bool)

(assert (= bs!1246902 (and d!1723023 d!1722989)))

(assert (=> bs!1246902 (= lambda!279530 lambda!279526)))

(declare-fun bs!1246903 () Bool)

(assert (= bs!1246903 (and d!1723023 d!1722945)))

(assert (=> bs!1246903 (= lambda!279530 lambda!279517)))

(assert (=> d!1723023 (= (inv!81064 (h!68006 zl!343)) (forall!14511 (exprs!5011 (h!68006 zl!343)) lambda!279530))))

(declare-fun bs!1246904 () Bool)

(assert (= bs!1246904 d!1723023))

(declare-fun m!6413836 () Bool)

(assert (=> bs!1246904 m!6413836))

(assert (=> b!5386700 d!1723023))

(declare-fun bs!1246905 () Bool)

(declare-fun d!1723025 () Bool)

(assert (= bs!1246905 (and d!1723025 b!5386705)))

(declare-fun lambda!279533 () Int)

(assert (=> bs!1246905 (= lambda!279533 lambda!279433)))

(declare-fun bs!1246906 () Bool)

(assert (= bs!1246906 (and d!1723025 d!1722759)))

(assert (=> bs!1246906 (= lambda!279533 lambda!279460)))

(declare-fun bs!1246907 () Bool)

(assert (= bs!1246907 (and d!1723025 d!1722989)))

(assert (=> bs!1246907 (= lambda!279533 lambda!279526)))

(declare-fun bs!1246908 () Bool)

(assert (= bs!1246908 (and d!1723025 d!1722945)))

(assert (=> bs!1246908 (= lambda!279533 lambda!279517)))

(declare-fun bs!1246909 () Bool)

(assert (= bs!1246909 (and d!1723025 d!1722939)))

(assert (=> bs!1246909 (= lambda!279533 lambda!279512)))

(declare-fun bs!1246910 () Bool)

(assert (= bs!1246910 (and d!1723025 d!1723023)))

(assert (=> bs!1246910 (= lambda!279533 lambda!279530)))

(declare-fun b!5387870 () Bool)

(declare-fun e!3341653 () Bool)

(declare-fun e!3341655 () Bool)

(assert (=> b!5387870 (= e!3341653 e!3341655)))

(declare-fun c!938928 () Bool)

(assert (=> b!5387870 (= c!938928 (isEmpty!33552 (exprs!5011 (h!68006 zl!343))))))

(assert (=> d!1723025 e!3341653))

(declare-fun res!2288919 () Bool)

(assert (=> d!1723025 (=> (not res!2288919) (not e!3341653))))

(declare-fun lt!2194762 () Regex!15127)

(assert (=> d!1723025 (= res!2288919 (validRegex!6863 lt!2194762))))

(declare-fun e!3341651 () Regex!15127)

(assert (=> d!1723025 (= lt!2194762 e!3341651)))

(declare-fun c!938926 () Bool)

(declare-fun e!3341654 () Bool)

(assert (=> d!1723025 (= c!938926 e!3341654)))

(declare-fun res!2288918 () Bool)

(assert (=> d!1723025 (=> (not res!2288918) (not e!3341654))))

(assert (=> d!1723025 (= res!2288918 ((_ is Cons!61557) (exprs!5011 (h!68006 zl!343))))))

(assert (=> d!1723025 (forall!14511 (exprs!5011 (h!68006 zl!343)) lambda!279533)))

(assert (=> d!1723025 (= (generalisedConcat!796 (exprs!5011 (h!68006 zl!343))) lt!2194762)))

(declare-fun b!5387871 () Bool)

(declare-fun e!3341650 () Regex!15127)

(assert (=> b!5387871 (= e!3341650 (Concat!23972 (h!68005 (exprs!5011 (h!68006 zl!343))) (generalisedConcat!796 (t!374904 (exprs!5011 (h!68006 zl!343))))))))

(declare-fun b!5387872 () Bool)

(assert (=> b!5387872 (= e!3341654 (isEmpty!33552 (t!374904 (exprs!5011 (h!68006 zl!343)))))))

(declare-fun b!5387873 () Bool)

(declare-fun e!3341652 () Bool)

(assert (=> b!5387873 (= e!3341655 e!3341652)))

(declare-fun c!938927 () Bool)

(assert (=> b!5387873 (= c!938927 (isEmpty!33552 (tail!10652 (exprs!5011 (h!68006 zl!343)))))))

(declare-fun b!5387874 () Bool)

(assert (=> b!5387874 (= e!3341651 (h!68005 (exprs!5011 (h!68006 zl!343))))))

(declare-fun b!5387875 () Bool)

(assert (=> b!5387875 (= e!3341650 EmptyExpr!15127)))

(declare-fun b!5387876 () Bool)

(declare-fun isEmptyExpr!952 (Regex!15127) Bool)

(assert (=> b!5387876 (= e!3341655 (isEmptyExpr!952 lt!2194762))))

(declare-fun b!5387877 () Bool)

(declare-fun isConcat!475 (Regex!15127) Bool)

(assert (=> b!5387877 (= e!3341652 (isConcat!475 lt!2194762))))

(declare-fun b!5387878 () Bool)

(assert (=> b!5387878 (= e!3341651 e!3341650)))

(declare-fun c!938929 () Bool)

(assert (=> b!5387878 (= c!938929 ((_ is Cons!61557) (exprs!5011 (h!68006 zl!343))))))

(declare-fun b!5387879 () Bool)

(assert (=> b!5387879 (= e!3341652 (= lt!2194762 (head!11555 (exprs!5011 (h!68006 zl!343)))))))

(assert (= (and d!1723025 res!2288918) b!5387872))

(assert (= (and d!1723025 c!938926) b!5387874))

(assert (= (and d!1723025 (not c!938926)) b!5387878))

(assert (= (and b!5387878 c!938929) b!5387871))

(assert (= (and b!5387878 (not c!938929)) b!5387875))

(assert (= (and d!1723025 res!2288919) b!5387870))

(assert (= (and b!5387870 c!938928) b!5387876))

(assert (= (and b!5387870 (not c!938928)) b!5387873))

(assert (= (and b!5387873 c!938927) b!5387879))

(assert (= (and b!5387873 (not c!938927)) b!5387877))

(declare-fun m!6413838 () Bool)

(assert (=> d!1723025 m!6413838))

(declare-fun m!6413840 () Bool)

(assert (=> d!1723025 m!6413840))

(declare-fun m!6413842 () Bool)

(assert (=> b!5387877 m!6413842))

(assert (=> b!5387872 m!6412578))

(declare-fun m!6413844 () Bool)

(assert (=> b!5387873 m!6413844))

(assert (=> b!5387873 m!6413844))

(declare-fun m!6413846 () Bool)

(assert (=> b!5387873 m!6413846))

(declare-fun m!6413848 () Bool)

(assert (=> b!5387870 m!6413848))

(declare-fun m!6413850 () Bool)

(assert (=> b!5387876 m!6413850))

(declare-fun m!6413852 () Bool)

(assert (=> b!5387871 m!6413852))

(declare-fun m!6413854 () Bool)

(assert (=> b!5387879 m!6413854))

(assert (=> b!5386701 d!1723025))

(declare-fun b!5387884 () Bool)

(declare-fun e!3341658 () Bool)

(declare-fun tp!1492288 () Bool)

(declare-fun tp!1492289 () Bool)

(assert (=> b!5387884 (= e!3341658 (and tp!1492288 tp!1492289))))

(assert (=> b!5386697 (= tp!1492216 e!3341658)))

(assert (= (and b!5386697 ((_ is Cons!61557) (exprs!5011 setElem!34979))) b!5387884))

(declare-fun b!5387889 () Bool)

(declare-fun e!3341661 () Bool)

(declare-fun tp!1492292 () Bool)

(assert (=> b!5387889 (= e!3341661 (and tp_is_empty!39507 tp!1492292))))

(assert (=> b!5386713 (= tp!1492217 e!3341661)))

(assert (= (and b!5386713 ((_ is Cons!61556) (t!374903 s!2326))) b!5387889))

(declare-fun b!5387890 () Bool)

(declare-fun e!3341662 () Bool)

(declare-fun tp!1492293 () Bool)

(declare-fun tp!1492294 () Bool)

(assert (=> b!5387890 (= e!3341662 (and tp!1492293 tp!1492294))))

(assert (=> b!5386688 (= tp!1492218 e!3341662)))

(assert (= (and b!5386688 ((_ is Cons!61557) (exprs!5011 (h!68006 zl!343)))) b!5387890))

(declare-fun b!5387901 () Bool)

(declare-fun e!3341665 () Bool)

(assert (=> b!5387901 (= e!3341665 tp_is_empty!39507)))

(declare-fun b!5387902 () Bool)

(declare-fun tp!1492307 () Bool)

(declare-fun tp!1492305 () Bool)

(assert (=> b!5387902 (= e!3341665 (and tp!1492307 tp!1492305))))

(declare-fun b!5387903 () Bool)

(declare-fun tp!1492306 () Bool)

(assert (=> b!5387903 (= e!3341665 tp!1492306)))

(declare-fun b!5387904 () Bool)

(declare-fun tp!1492309 () Bool)

(declare-fun tp!1492308 () Bool)

(assert (=> b!5387904 (= e!3341665 (and tp!1492309 tp!1492308))))

(assert (=> b!5386699 (= tp!1492219 e!3341665)))

(assert (= (and b!5386699 ((_ is ElementMatch!15127) (reg!15456 r!7292))) b!5387901))

(assert (= (and b!5386699 ((_ is Concat!23972) (reg!15456 r!7292))) b!5387902))

(assert (= (and b!5386699 ((_ is Star!15127) (reg!15456 r!7292))) b!5387903))

(assert (= (and b!5386699 ((_ is Union!15127) (reg!15456 r!7292))) b!5387904))

(declare-fun b!5387905 () Bool)

(declare-fun e!3341666 () Bool)

(assert (=> b!5387905 (= e!3341666 tp_is_empty!39507)))

(declare-fun b!5387906 () Bool)

(declare-fun tp!1492312 () Bool)

(declare-fun tp!1492310 () Bool)

(assert (=> b!5387906 (= e!3341666 (and tp!1492312 tp!1492310))))

(declare-fun b!5387907 () Bool)

(declare-fun tp!1492311 () Bool)

(assert (=> b!5387907 (= e!3341666 tp!1492311)))

(declare-fun b!5387908 () Bool)

(declare-fun tp!1492314 () Bool)

(declare-fun tp!1492313 () Bool)

(assert (=> b!5387908 (= e!3341666 (and tp!1492314 tp!1492313))))

(assert (=> b!5386726 (= tp!1492225 e!3341666)))

(assert (= (and b!5386726 ((_ is ElementMatch!15127) (regOne!30767 r!7292))) b!5387905))

(assert (= (and b!5386726 ((_ is Concat!23972) (regOne!30767 r!7292))) b!5387906))

(assert (= (and b!5386726 ((_ is Star!15127) (regOne!30767 r!7292))) b!5387907))

(assert (= (and b!5386726 ((_ is Union!15127) (regOne!30767 r!7292))) b!5387908))

(declare-fun b!5387909 () Bool)

(declare-fun e!3341667 () Bool)

(assert (=> b!5387909 (= e!3341667 tp_is_empty!39507)))

(declare-fun b!5387910 () Bool)

(declare-fun tp!1492317 () Bool)

(declare-fun tp!1492315 () Bool)

(assert (=> b!5387910 (= e!3341667 (and tp!1492317 tp!1492315))))

(declare-fun b!5387911 () Bool)

(declare-fun tp!1492316 () Bool)

(assert (=> b!5387911 (= e!3341667 tp!1492316)))

(declare-fun b!5387912 () Bool)

(declare-fun tp!1492319 () Bool)

(declare-fun tp!1492318 () Bool)

(assert (=> b!5387912 (= e!3341667 (and tp!1492319 tp!1492318))))

(assert (=> b!5386726 (= tp!1492224 e!3341667)))

(assert (= (and b!5386726 ((_ is ElementMatch!15127) (regTwo!30767 r!7292))) b!5387909))

(assert (= (and b!5386726 ((_ is Concat!23972) (regTwo!30767 r!7292))) b!5387910))

(assert (= (and b!5386726 ((_ is Star!15127) (regTwo!30767 r!7292))) b!5387911))

(assert (= (and b!5386726 ((_ is Union!15127) (regTwo!30767 r!7292))) b!5387912))

(declare-fun b!5387920 () Bool)

(declare-fun e!3341673 () Bool)

(declare-fun tp!1492324 () Bool)

(assert (=> b!5387920 (= e!3341673 tp!1492324)))

(declare-fun tp!1492325 () Bool)

(declare-fun e!3341672 () Bool)

(declare-fun b!5387919 () Bool)

(assert (=> b!5387919 (= e!3341672 (and (inv!81064 (h!68006 (t!374905 zl!343))) e!3341673 tp!1492325))))

(assert (=> b!5386700 (= tp!1492223 e!3341672)))

(assert (= b!5387919 b!5387920))

(assert (= (and b!5386700 ((_ is Cons!61558) (t!374905 zl!343))) b!5387919))

(declare-fun m!6413856 () Bool)

(assert (=> b!5387919 m!6413856))

(declare-fun condSetEmpty!34985 () Bool)

(assert (=> setNonEmpty!34979 (= condSetEmpty!34985 (= setRest!34979 ((as const (Array Context!9022 Bool)) false)))))

(declare-fun setRes!34985 () Bool)

(assert (=> setNonEmpty!34979 (= tp!1492222 setRes!34985)))

(declare-fun setIsEmpty!34985 () Bool)

(assert (=> setIsEmpty!34985 setRes!34985))

(declare-fun setElem!34985 () Context!9022)

(declare-fun e!3341676 () Bool)

(declare-fun tp!1492330 () Bool)

(declare-fun setNonEmpty!34985 () Bool)

(assert (=> setNonEmpty!34985 (= setRes!34985 (and tp!1492330 (inv!81064 setElem!34985) e!3341676))))

(declare-fun setRest!34985 () (InoxSet Context!9022))

(assert (=> setNonEmpty!34985 (= setRest!34979 ((_ map or) (store ((as const (Array Context!9022 Bool)) false) setElem!34985 true) setRest!34985))))

(declare-fun b!5387925 () Bool)

(declare-fun tp!1492331 () Bool)

(assert (=> b!5387925 (= e!3341676 tp!1492331)))

(assert (= (and setNonEmpty!34979 condSetEmpty!34985) setIsEmpty!34985))

(assert (= (and setNonEmpty!34979 (not condSetEmpty!34985)) setNonEmpty!34985))

(assert (= setNonEmpty!34985 b!5387925))

(declare-fun m!6413858 () Bool)

(assert (=> setNonEmpty!34985 m!6413858))

(declare-fun b!5387926 () Bool)

(declare-fun e!3341677 () Bool)

(assert (=> b!5387926 (= e!3341677 tp_is_empty!39507)))

(declare-fun b!5387927 () Bool)

(declare-fun tp!1492334 () Bool)

(declare-fun tp!1492332 () Bool)

(assert (=> b!5387927 (= e!3341677 (and tp!1492334 tp!1492332))))

(declare-fun b!5387928 () Bool)

(declare-fun tp!1492333 () Bool)

(assert (=> b!5387928 (= e!3341677 tp!1492333)))

(declare-fun b!5387929 () Bool)

(declare-fun tp!1492336 () Bool)

(declare-fun tp!1492335 () Bool)

(assert (=> b!5387929 (= e!3341677 (and tp!1492336 tp!1492335))))

(assert (=> b!5386721 (= tp!1492220 e!3341677)))

(assert (= (and b!5386721 ((_ is ElementMatch!15127) (regOne!30766 r!7292))) b!5387926))

(assert (= (and b!5386721 ((_ is Concat!23972) (regOne!30766 r!7292))) b!5387927))

(assert (= (and b!5386721 ((_ is Star!15127) (regOne!30766 r!7292))) b!5387928))

(assert (= (and b!5386721 ((_ is Union!15127) (regOne!30766 r!7292))) b!5387929))

(declare-fun b!5387930 () Bool)

(declare-fun e!3341678 () Bool)

(assert (=> b!5387930 (= e!3341678 tp_is_empty!39507)))

(declare-fun b!5387931 () Bool)

(declare-fun tp!1492339 () Bool)

(declare-fun tp!1492337 () Bool)

(assert (=> b!5387931 (= e!3341678 (and tp!1492339 tp!1492337))))

(declare-fun b!5387932 () Bool)

(declare-fun tp!1492338 () Bool)

(assert (=> b!5387932 (= e!3341678 tp!1492338)))

(declare-fun b!5387933 () Bool)

(declare-fun tp!1492341 () Bool)

(declare-fun tp!1492340 () Bool)

(assert (=> b!5387933 (= e!3341678 (and tp!1492341 tp!1492340))))

(assert (=> b!5386721 (= tp!1492221 e!3341678)))

(assert (= (and b!5386721 ((_ is ElementMatch!15127) (regTwo!30766 r!7292))) b!5387930))

(assert (= (and b!5386721 ((_ is Concat!23972) (regTwo!30766 r!7292))) b!5387931))

(assert (= (and b!5386721 ((_ is Star!15127) (regTwo!30766 r!7292))) b!5387932))

(assert (= (and b!5386721 ((_ is Union!15127) (regTwo!30766 r!7292))) b!5387933))

(declare-fun b_lambda!206181 () Bool)

(assert (= b_lambda!206179 (or b!5386718 b_lambda!206181)))

(declare-fun bs!1246911 () Bool)

(declare-fun d!1723027 () Bool)

(assert (= bs!1246911 (and d!1723027 b!5386718)))

(assert (=> bs!1246911 (= (dynLambda!24278 lambda!279427 (h!68006 zl!343)) (derivationStepZipperUp!499 (h!68006 zl!343) (h!68004 s!2326)))))

(assert (=> bs!1246911 m!6412626))

(assert (=> d!1723015 d!1723027))

(declare-fun b_lambda!206183 () Bool)

(assert (= b_lambda!206159 (or b!5386718 b_lambda!206183)))

(declare-fun bs!1246912 () Bool)

(declare-fun d!1723029 () Bool)

(assert (= bs!1246912 (and d!1723029 b!5386718)))

(assert (=> bs!1246912 (= (dynLambda!24278 lambda!279427 lt!2194537) (derivationStepZipperUp!499 lt!2194537 (h!68004 s!2326)))))

(assert (=> bs!1246912 m!6412492))

(assert (=> d!1722659 d!1723029))

(declare-fun b_lambda!206185 () Bool)

(assert (= b_lambda!206157 (or b!5386718 b_lambda!206185)))

(declare-fun bs!1246913 () Bool)

(declare-fun d!1723031 () Bool)

(assert (= bs!1246913 (and d!1723031 b!5386718)))

(assert (=> bs!1246913 (= (dynLambda!24278 lambda!279427 lt!2194550) (derivationStepZipperUp!499 lt!2194550 (h!68004 s!2326)))))

(assert (=> bs!1246913 m!6412502))

(assert (=> d!1722655 d!1723031))

(declare-fun b_lambda!206187 () Bool)

(assert (= b_lambda!206169 (or b!5386718 b_lambda!206187)))

(declare-fun bs!1246914 () Bool)

(declare-fun d!1723033 () Bool)

(assert (= bs!1246914 (and d!1723033 b!5386718)))

(assert (=> bs!1246914 (= (dynLambda!24278 lambda!279427 lt!2194500) (derivationStepZipperUp!499 lt!2194500 (h!68004 s!2326)))))

(assert (=> bs!1246914 m!6412530))

(assert (=> d!1722951 d!1723033))

(check-sat (not d!1722945) (not b!5387876) (not b!5387931) (not b!5387238) (not b!5387843) (not d!1722793) (not b!5387160) (not d!1722875) (not d!1722665) (not d!1722769) (not bm!385575) (not b!5386817) (not b!5387233) (not b!5387672) (not b!5387084) (not d!1722891) (not bs!1246913) (not b!5387297) (not b!5387879) (not b!5387532) (not b!5387697) (not bs!1246914) (not d!1722927) (not b!5387098) (not b!5387169) (not d!1722807) (not b!5387808) (not b!5387873) (not bm!385600) (not b!5387079) (not d!1722869) (not b!5387927) (not b!5387925) (not b!5387669) (not d!1722669) (not d!1722823) (not b!5387574) (not bm!385617) (not b!5387619) (not d!1722987) tp_is_empty!39507 (not b!5387799) (not d!1722973) (not b!5387283) (not d!1722995) (not b!5387512) (not bm!385571) (not d!1722881) (not b!5387671) (not d!1722655) (not bm!385568) (not b!5386793) (not d!1722997) (not b!5387920) (not b!5387260) (not b!5387813) (not d!1722877) (not bm!385609) (not d!1723025) (not b!5387646) (not b!5387573) (not b!5387902) (not b!5387618) (not b!5386802) (not b!5387125) (not b_lambda!206185) (not b!5387300) (not d!1723003) (not bm!385607) (not b!5387872) (not b!5387715) (not b!5387908) (not b!5387535) (not b!5387170) (not b!5387821) (not b!5387150) (not b_lambda!206183) (not b!5387324) (not b!5387822) (not b!5387157) (not bs!1246912) (not b!5387674) (not b!5387247) (not d!1722757) (not b!5386861) (not d!1722939) (not b!5387910) (not b!5387272) (not d!1722867) (not bm!385685) (not b!5387809) (not d!1722885) (not bm!385608) (not b!5387625) (not d!1722897) (not d!1722809) (not b!5387281) (not d!1723015) (not b!5387912) (not b!5387932) (not d!1722893) (not b!5387817) (not b!5387828) (not b!5387889) (not d!1722739) (not b!5387089) (not bm!385665) (not d!1722947) (not d!1722925) (not bm!385676) (not d!1722951) (not bm!385628) (not b!5387529) (not d!1722781) (not d!1722985) (not b!5386803) (not b!5387158) (not b!5387623) (not b!5387818) (not b!5387156) (not d!1722733) (not b!5387525) (not b!5386818) (not d!1722989) (not bm!385677) (not b!5387523) (not d!1722791) (not b!5387820) (not d!1722777) (not b!5387560) (not b!5387645) (not d!1722923) (not b!5387287) (not b!5387729) (not b!5387622) (not b!5387723) (not bm!385670) (not b!5387290) (not d!1722751) (not b!5386796) (not b!5387730) (not d!1722743) (not d!1722755) (not b!5387333) (not b!5387884) (not bm!385598) (not b!5387296) (not b!5387810) (not setNonEmpty!34985) (not b!5386893) (not bm!385678) (not b!5387102) (not d!1722905) (not b!5387634) (not d!1722993) (not b!5387814) (not d!1722659) (not bm!385682) (not bm!385620) (not b!5387325) (not b!5387731) (not d!1722771) (not bm!385669) (not b!5386989) (not b!5387919) (not d!1723007) (not b!5387135) (not b!5387282) (not d!1722873) (not b!5386880) (not b!5386859) (not b!5387256) (not b!5387147) (not b!5387257) (not b_lambda!206187) (not b!5387845) (not b!5387241) (not b!5387537) (not b!5387298) (not b!5387911) (not b!5387933) (not b!5387136) (not b!5387286) (not b!5386810) (not b!5387677) (not d!1722899) (not d!1722999) (not d!1722735) (not b!5387328) (not d!1722753) (not b!5386878) (not b!5387124) (not b!5387251) (not d!1722801) (not d!1723011) (not b!5387099) (not b!5387904) (not d!1722953) (not bm!385675) (not bm!385674) (not b!5387907) (not b!5386816) (not b!5387668) (not b!5387536) (not b!5387670) (not b!5387877) (not b!5387802) (not b!5387100) (not d!1722773) (not bm!385671) (not bm!385567) (not d!1722759) (not d!1722675) (not b!5387750) (not b!5387639) (not d!1722931) (not b!5386807) (not bm!385610) (not bs!1246911) (not b!5387928) (not d!1723023) (not d!1722887) (not d!1722883) (not bm!385684) (not b!5387871) (not bm!385680) (not b!5387534) (not b!5386806) (not b!5387329) (not b!5387092) (not d!1722889) (not b!5387507) (not b!5387733) (not b!5386820) (not b!5387720) (not b!5387275) (not d!1723021) (not bm!385618) (not b!5387248) (not b!5387929) (not d!1722779) (not b!5387561) (not b!5387249) (not d!1722783) (not b!5387745) (not d!1723019) (not bm!385666) (not b!5387812) (not bm!385627) (not b!5387870) (not b!5387838) (not d!1722671) (not b!5387840) (not d!1722653) (not b!5387693) (not b!5387848) (not b!5387562) (not bm!385596) (not b!5387531) (not d!1722789) (not bm!385673) (not b!5387285) (not b!5387695) (not d!1723001) (not d!1722643) (not b!5387849) (not b_lambda!206181) (not b!5387332) (not b!5387903) (not b!5387626) (not b!5387906) (not b!5387824) (not d!1722775) (not b!5387528) (not b!5387890) (not b!5386804) (not d!1722991) (not d!1722871) (not d!1722745))
(check-sat)
