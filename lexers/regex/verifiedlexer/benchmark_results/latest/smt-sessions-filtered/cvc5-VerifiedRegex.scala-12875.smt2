; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!711020 () Bool)

(assert start!711020)

(declare-fun b!7294697 () Bool)

(assert (=> b!7294697 true))

(declare-fun b!7294696 () Bool)

(declare-fun e!4369180 () Bool)

(declare-fun e!4369181 () Bool)

(assert (=> b!7294696 (= e!4369180 e!4369181)))

(declare-fun res!2950620 () Bool)

(assert (=> b!7294696 (=> res!2950620 e!4369181)))

(declare-datatypes ((C!37990 0))(
  ( (C!37991 (val!28943 Int)) )
))
(declare-datatypes ((Regex!18858 0))(
  ( (ElementMatch!18858 (c!1355629 C!37990)) (Concat!27703 (regOne!38228 Regex!18858) (regTwo!38228 Regex!18858)) (EmptyExpr!18858) (Star!18858 (reg!19187 Regex!18858)) (EmptyLang!18858) (Union!18858 (regOne!38229 Regex!18858) (regTwo!38229 Regex!18858)) )
))
(declare-datatypes ((List!71033 0))(
  ( (Nil!70909) (Cons!70909 (h!77357 Regex!18858) (t!385107 List!71033)) )
))
(declare-datatypes ((Context!15596 0))(
  ( (Context!15597 (exprs!8298 List!71033)) )
))
(declare-fun ct1!250 () Context!15596)

(declare-fun nullable!8035 (Regex!18858) Bool)

(assert (=> b!7294696 (= res!2950620 (not (nullable!8035 (h!77357 (exprs!8298 ct1!250)))))))

(declare-fun lt!2597547 () (Set Context!15596))

(declare-datatypes ((List!71034 0))(
  ( (Nil!70910) (Cons!70910 (h!77358 C!37990) (t!385108 List!71034)) )
))
(declare-fun s!7854 () List!71034)

(declare-fun derivationStepZipperUp!2608 (Context!15596 C!37990) (Set Context!15596))

(assert (=> b!7294696 (= lt!2597547 (derivationStepZipperUp!2608 ct1!250 (h!77358 s!7854)))))

(declare-fun lt!2597558 () Context!15596)

(declare-fun lt!2597550 () List!71033)

(assert (=> b!7294696 (= lt!2597558 (Context!15597 lt!2597550))))

(declare-fun tail!14570 (List!71033) List!71033)

(assert (=> b!7294696 (= lt!2597550 (tail!14570 (exprs!8298 ct1!250)))))

(declare-fun e!4369177 () Bool)

(assert (=> b!7294697 (= e!4369177 (not e!4369180))))

(declare-fun res!2950621 () Bool)

(assert (=> b!7294697 (=> res!2950621 e!4369180)))

(declare-fun lt!2597559 () (Set Context!15596))

(declare-fun lt!2597549 () (Set Context!15596))

(declare-fun derivationStepZipper!3591 ((Set Context!15596) C!37990) (Set Context!15596))

(assert (=> b!7294697 (= res!2950621 (not (= lt!2597559 (derivationStepZipper!3591 lt!2597549 (h!77358 s!7854)))))))

(declare-fun lambda!450186 () Int)

(declare-datatypes ((Unit!164314 0))(
  ( (Unit!164315) )
))
(declare-fun lt!2597554 () Unit!164314)

(declare-fun ct2!346 () Context!15596)

(declare-fun lemmaConcatPreservesForall!1605 (List!71033 List!71033 Int) Unit!164314)

(assert (=> b!7294697 (= lt!2597554 (lemmaConcatPreservesForall!1605 (exprs!8298 ct1!250) (exprs!8298 ct2!346) lambda!450186))))

(declare-fun lambda!450187 () Int)

(declare-fun lt!2597548 () Context!15596)

(declare-fun flatMap!2953 ((Set Context!15596) Int) (Set Context!15596))

(assert (=> b!7294697 (= (flatMap!2953 lt!2597549 lambda!450187) (derivationStepZipperUp!2608 lt!2597548 (h!77358 s!7854)))))

(declare-fun lt!2597546 () Unit!164314)

(declare-fun lemmaFlatMapOnSingletonSet!2351 ((Set Context!15596) Context!15596 Int) Unit!164314)

(assert (=> b!7294697 (= lt!2597546 (lemmaFlatMapOnSingletonSet!2351 lt!2597549 lt!2597548 lambda!450187))))

(assert (=> b!7294697 (= lt!2597549 (set.insert lt!2597548 (as set.empty (Set Context!15596))))))

(declare-fun lt!2597555 () Unit!164314)

(assert (=> b!7294697 (= lt!2597555 (lemmaConcatPreservesForall!1605 (exprs!8298 ct1!250) (exprs!8298 ct2!346) lambda!450186))))

(declare-fun lt!2597544 () Unit!164314)

(assert (=> b!7294697 (= lt!2597544 (lemmaConcatPreservesForall!1605 (exprs!8298 ct1!250) (exprs!8298 ct2!346) lambda!450186))))

(declare-fun lt!2597556 () (Set Context!15596))

(assert (=> b!7294697 (= (flatMap!2953 lt!2597556 lambda!450187) (derivationStepZipperUp!2608 ct1!250 (h!77358 s!7854)))))

(declare-fun lt!2597551 () Unit!164314)

(assert (=> b!7294697 (= lt!2597551 (lemmaFlatMapOnSingletonSet!2351 lt!2597556 ct1!250 lambda!450187))))

(assert (=> b!7294697 (= lt!2597556 (set.insert ct1!250 (as set.empty (Set Context!15596))))))

(assert (=> b!7294697 (= lt!2597559 (derivationStepZipperUp!2608 lt!2597548 (h!77358 s!7854)))))

(declare-fun ++!16748 (List!71033 List!71033) List!71033)

(assert (=> b!7294697 (= lt!2597548 (Context!15597 (++!16748 (exprs!8298 ct1!250) (exprs!8298 ct2!346))))))

(declare-fun lt!2597557 () Unit!164314)

(assert (=> b!7294697 (= lt!2597557 (lemmaConcatPreservesForall!1605 (exprs!8298 ct1!250) (exprs!8298 ct2!346) lambda!450186))))

(declare-fun b!7294699 () Bool)

(assert (=> b!7294699 (= e!4369181 true)))

(declare-fun lt!2597545 () (Set Context!15596))

(declare-fun lt!2597552 () Context!15596)

(assert (=> b!7294699 (= lt!2597545 (derivationStepZipperUp!2608 lt!2597552 (h!77358 s!7854)))))

(declare-fun lt!2597543 () (Set Context!15596))

(declare-fun derivationStepZipperDown!2764 (Regex!18858 Context!15596 C!37990) (Set Context!15596))

(assert (=> b!7294699 (= lt!2597543 (derivationStepZipperDown!2764 (h!77357 (exprs!8298 ct1!250)) lt!2597552 (h!77358 s!7854)))))

(assert (=> b!7294699 (= lt!2597552 (Context!15597 (++!16748 lt!2597550 (exprs!8298 ct2!346))))))

(declare-fun lt!2597542 () Unit!164314)

(assert (=> b!7294699 (= lt!2597542 (lemmaConcatPreservesForall!1605 lt!2597550 (exprs!8298 ct2!346) lambda!450186))))

(declare-fun lt!2597553 () Unit!164314)

(assert (=> b!7294699 (= lt!2597553 (lemmaConcatPreservesForall!1605 lt!2597550 (exprs!8298 ct2!346) lambda!450186))))

(declare-fun b!7294700 () Bool)

(declare-fun e!4369178 () Bool)

(declare-fun tp!2062181 () Bool)

(assert (=> b!7294700 (= e!4369178 tp!2062181)))

(declare-fun b!7294701 () Bool)

(declare-fun e!4369179 () Bool)

(declare-fun tp_is_empty!47181 () Bool)

(declare-fun tp!2062179 () Bool)

(assert (=> b!7294701 (= e!4369179 (and tp_is_empty!47181 tp!2062179))))

(declare-fun b!7294702 () Bool)

(declare-fun res!2950619 () Bool)

(assert (=> b!7294702 (=> res!2950619 e!4369180)))

(assert (=> b!7294702 (= res!2950619 (not (is-Cons!70909 (exprs!8298 ct1!250))))))

(declare-fun b!7294703 () Bool)

(declare-fun res!2950623 () Bool)

(assert (=> b!7294703 (=> (not res!2950623) (not e!4369177))))

(assert (=> b!7294703 (= res!2950623 (is-Cons!70910 s!7854))))

(declare-fun b!7294704 () Bool)

(declare-fun res!2950622 () Bool)

(assert (=> b!7294704 (=> res!2950622 e!4369181)))

(assert (=> b!7294704 (= res!2950622 (not (= lt!2597547 (set.union (derivationStepZipperDown!2764 (h!77357 (exprs!8298 ct1!250)) lt!2597558 (h!77358 s!7854)) (derivationStepZipperUp!2608 lt!2597558 (h!77358 s!7854))))))))

(declare-fun b!7294698 () Bool)

(declare-fun e!4369182 () Bool)

(declare-fun tp!2062180 () Bool)

(assert (=> b!7294698 (= e!4369182 tp!2062180)))

(declare-fun res!2950625 () Bool)

(assert (=> start!711020 (=> (not res!2950625) (not e!4369177))))

(declare-fun matchZipper!3762 ((Set Context!15596) List!71034) Bool)

(assert (=> start!711020 (= res!2950625 (matchZipper!3762 (set.insert ct2!346 (as set.empty (Set Context!15596))) s!7854))))

(assert (=> start!711020 e!4369177))

(declare-fun inv!90156 (Context!15596) Bool)

(assert (=> start!711020 (and (inv!90156 ct2!346) e!4369178)))

(assert (=> start!711020 e!4369179))

(assert (=> start!711020 (and (inv!90156 ct1!250) e!4369182)))

(declare-fun b!7294705 () Bool)

(declare-fun res!2950624 () Bool)

(assert (=> b!7294705 (=> res!2950624 e!4369180)))

(declare-fun isEmpty!40787 (List!71033) Bool)

(assert (=> b!7294705 (= res!2950624 (isEmpty!40787 (exprs!8298 ct1!250)))))

(declare-fun b!7294706 () Bool)

(declare-fun res!2950618 () Bool)

(assert (=> b!7294706 (=> (not res!2950618) (not e!4369177))))

(declare-fun nullableContext!348 (Context!15596) Bool)

(assert (=> b!7294706 (= res!2950618 (nullableContext!348 ct1!250))))

(assert (= (and start!711020 res!2950625) b!7294706))

(assert (= (and b!7294706 res!2950618) b!7294703))

(assert (= (and b!7294703 res!2950623) b!7294697))

(assert (= (and b!7294697 (not res!2950621)) b!7294702))

(assert (= (and b!7294702 (not res!2950619)) b!7294705))

(assert (= (and b!7294705 (not res!2950624)) b!7294696))

(assert (= (and b!7294696 (not res!2950620)) b!7294704))

(assert (= (and b!7294704 (not res!2950622)) b!7294699))

(assert (= start!711020 b!7294700))

(assert (= (and start!711020 (is-Cons!70910 s!7854)) b!7294701))

(assert (= start!711020 b!7294698))

(declare-fun m!7966250 () Bool)

(assert (=> b!7294705 m!7966250))

(declare-fun m!7966252 () Bool)

(assert (=> b!7294696 m!7966252))

(declare-fun m!7966254 () Bool)

(assert (=> b!7294696 m!7966254))

(declare-fun m!7966256 () Bool)

(assert (=> b!7294696 m!7966256))

(declare-fun m!7966258 () Bool)

(assert (=> b!7294706 m!7966258))

(declare-fun m!7966260 () Bool)

(assert (=> b!7294704 m!7966260))

(declare-fun m!7966262 () Bool)

(assert (=> b!7294704 m!7966262))

(declare-fun m!7966264 () Bool)

(assert (=> b!7294697 m!7966264))

(declare-fun m!7966266 () Bool)

(assert (=> b!7294697 m!7966266))

(declare-fun m!7966268 () Bool)

(assert (=> b!7294697 m!7966268))

(declare-fun m!7966270 () Bool)

(assert (=> b!7294697 m!7966270))

(assert (=> b!7294697 m!7966268))

(assert (=> b!7294697 m!7966254))

(declare-fun m!7966272 () Bool)

(assert (=> b!7294697 m!7966272))

(declare-fun m!7966274 () Bool)

(assert (=> b!7294697 m!7966274))

(declare-fun m!7966276 () Bool)

(assert (=> b!7294697 m!7966276))

(declare-fun m!7966278 () Bool)

(assert (=> b!7294697 m!7966278))

(declare-fun m!7966280 () Bool)

(assert (=> b!7294697 m!7966280))

(assert (=> b!7294697 m!7966268))

(declare-fun m!7966282 () Bool)

(assert (=> b!7294697 m!7966282))

(assert (=> b!7294697 m!7966268))

(declare-fun m!7966284 () Bool)

(assert (=> start!711020 m!7966284))

(assert (=> start!711020 m!7966284))

(declare-fun m!7966286 () Bool)

(assert (=> start!711020 m!7966286))

(declare-fun m!7966288 () Bool)

(assert (=> start!711020 m!7966288))

(declare-fun m!7966290 () Bool)

(assert (=> start!711020 m!7966290))

(declare-fun m!7966292 () Bool)

(assert (=> b!7294699 m!7966292))

(declare-fun m!7966294 () Bool)

(assert (=> b!7294699 m!7966294))

(declare-fun m!7966296 () Bool)

(assert (=> b!7294699 m!7966296))

(assert (=> b!7294699 m!7966292))

(declare-fun m!7966298 () Bool)

(assert (=> b!7294699 m!7966298))

(push 1)

(assert (not b!7294704))

(assert tp_is_empty!47181)

(assert (not b!7294705))

(assert (not start!711020))

(assert (not b!7294697))

(assert (not b!7294699))

(assert (not b!7294698))

(assert (not b!7294706))

(assert (not b!7294696))

(assert (not b!7294701))

(assert (not b!7294700))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

