; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!711128 () Bool)

(assert start!711128)

(declare-fun b!7295490 () Bool)

(assert (=> b!7295490 true))

(declare-fun b!7295488 () Bool)

(declare-fun e!4369636 () Bool)

(declare-fun tp_is_empty!47189 () Bool)

(declare-fun tp!2062303 () Bool)

(assert (=> b!7295488 (= e!4369636 (and tp_is_empty!47189 tp!2062303))))

(declare-fun b!7295489 () Bool)

(declare-fun res!2950874 () Bool)

(declare-fun e!4369639 () Bool)

(assert (=> b!7295489 (=> res!2950874 e!4369639)))

(declare-datatypes ((C!37998 0))(
  ( (C!37999 (val!28947 Int)) )
))
(declare-datatypes ((Regex!18862 0))(
  ( (ElementMatch!18862 (c!1355873 C!37998)) (Concat!27707 (regOne!38236 Regex!18862) (regTwo!38236 Regex!18862)) (EmptyExpr!18862) (Star!18862 (reg!19191 Regex!18862)) (EmptyLang!18862) (Union!18862 (regOne!38237 Regex!18862) (regTwo!38237 Regex!18862)) )
))
(declare-datatypes ((List!71041 0))(
  ( (Nil!70917) (Cons!70917 (h!77365 Regex!18862) (t!385117 List!71041)) )
))
(declare-datatypes ((Context!15604 0))(
  ( (Context!15605 (exprs!8302 List!71041)) )
))
(declare-fun ct1!250 () Context!15604)

(assert (=> b!7295489 (= res!2950874 (not (is-Cons!70917 (exprs!8302 ct1!250))))))

(declare-fun e!4369635 () Bool)

(assert (=> b!7295490 (= e!4369635 (not e!4369639))))

(declare-fun res!2950871 () Bool)

(assert (=> b!7295490 (=> res!2950871 e!4369639)))

(declare-datatypes ((List!71042 0))(
  ( (Nil!70918) (Cons!70918 (h!77366 C!37998) (t!385118 List!71042)) )
))
(declare-fun s!7854 () List!71042)

(declare-fun lt!2597788 () (Set Context!15604))

(declare-fun lt!2597791 () (Set Context!15604))

(declare-fun derivationStepZipper!3595 ((Set Context!15604) C!37998) (Set Context!15604))

(assert (=> b!7295490 (= res!2950871 (not (= lt!2597791 (derivationStepZipper!3595 lt!2597788 (h!77366 s!7854)))))))

(declare-datatypes ((Unit!164322 0))(
  ( (Unit!164323) )
))
(declare-fun lt!2597798 () Unit!164322)

(declare-fun lambda!450288 () Int)

(declare-fun ct2!346 () Context!15604)

(declare-fun lemmaConcatPreservesForall!1609 (List!71041 List!71041 Int) Unit!164322)

(assert (=> b!7295490 (= lt!2597798 (lemmaConcatPreservesForall!1609 (exprs!8302 ct1!250) (exprs!8302 ct2!346) lambda!450288))))

(declare-fun lambda!450289 () Int)

(declare-fun lt!2597784 () Context!15604)

(declare-fun flatMap!2957 ((Set Context!15604) Int) (Set Context!15604))

(declare-fun derivationStepZipperUp!2612 (Context!15604 C!37998) (Set Context!15604))

(assert (=> b!7295490 (= (flatMap!2957 lt!2597788 lambda!450289) (derivationStepZipperUp!2612 lt!2597784 (h!77366 s!7854)))))

(declare-fun lt!2597790 () Unit!164322)

(declare-fun lemmaFlatMapOnSingletonSet!2355 ((Set Context!15604) Context!15604 Int) Unit!164322)

(assert (=> b!7295490 (= lt!2597790 (lemmaFlatMapOnSingletonSet!2355 lt!2597788 lt!2597784 lambda!450289))))

(assert (=> b!7295490 (= lt!2597788 (set.insert lt!2597784 (as set.empty (Set Context!15604))))))

(declare-fun lt!2597785 () Unit!164322)

(assert (=> b!7295490 (= lt!2597785 (lemmaConcatPreservesForall!1609 (exprs!8302 ct1!250) (exprs!8302 ct2!346) lambda!450288))))

(declare-fun lt!2597792 () Unit!164322)

(assert (=> b!7295490 (= lt!2597792 (lemmaConcatPreservesForall!1609 (exprs!8302 ct1!250) (exprs!8302 ct2!346) lambda!450288))))

(declare-fun lt!2597794 () (Set Context!15604))

(assert (=> b!7295490 (= (flatMap!2957 lt!2597794 lambda!450289) (derivationStepZipperUp!2612 ct1!250 (h!77366 s!7854)))))

(declare-fun lt!2597799 () Unit!164322)

(assert (=> b!7295490 (= lt!2597799 (lemmaFlatMapOnSingletonSet!2355 lt!2597794 ct1!250 lambda!450289))))

(assert (=> b!7295490 (= lt!2597794 (set.insert ct1!250 (as set.empty (Set Context!15604))))))

(assert (=> b!7295490 (= lt!2597791 (derivationStepZipperUp!2612 lt!2597784 (h!77366 s!7854)))))

(declare-fun ++!16752 (List!71041 List!71041) List!71041)

(assert (=> b!7295490 (= lt!2597784 (Context!15605 (++!16752 (exprs!8302 ct1!250) (exprs!8302 ct2!346))))))

(declare-fun lt!2597786 () Unit!164322)

(assert (=> b!7295490 (= lt!2597786 (lemmaConcatPreservesForall!1609 (exprs!8302 ct1!250) (exprs!8302 ct2!346) lambda!450288))))

(declare-fun b!7295491 () Bool)

(declare-fun e!4369638 () Bool)

(declare-fun tp!2062305 () Bool)

(assert (=> b!7295491 (= e!4369638 tp!2062305)))

(declare-fun b!7295493 () Bool)

(declare-fun res!2950875 () Bool)

(assert (=> b!7295493 (=> (not res!2950875) (not e!4369635))))

(assert (=> b!7295493 (= res!2950875 (is-Cons!70918 s!7854))))

(declare-fun b!7295494 () Bool)

(declare-fun e!4369634 () Bool)

(declare-fun e!4369637 () Bool)

(assert (=> b!7295494 (= e!4369634 e!4369637)))

(declare-fun res!2950873 () Bool)

(assert (=> b!7295494 (=> res!2950873 e!4369637)))

(declare-fun lt!2597797 () Context!15604)

(declare-fun derivationStepZipperDown!2768 (Regex!18862 Context!15604 C!37998) (Set Context!15604))

(assert (=> b!7295494 (= res!2950873 (not (= lt!2597791 (set.union (derivationStepZipperDown!2768 (h!77365 (exprs!8302 ct1!250)) lt!2597797 (h!77366 s!7854)) (derivationStepZipperUp!2612 lt!2597797 (h!77366 s!7854))))))))

(declare-fun lt!2597795 () List!71041)

(assert (=> b!7295494 (= lt!2597797 (Context!15605 (++!16752 lt!2597795 (exprs!8302 ct2!346))))))

(declare-fun lt!2597793 () Unit!164322)

(assert (=> b!7295494 (= lt!2597793 (lemmaConcatPreservesForall!1609 lt!2597795 (exprs!8302 ct2!346) lambda!450288))))

(declare-fun lt!2597787 () Unit!164322)

(assert (=> b!7295494 (= lt!2597787 (lemmaConcatPreservesForall!1609 lt!2597795 (exprs!8302 ct2!346) lambda!450288))))

(declare-fun b!7295495 () Bool)

(declare-fun res!2950879 () Bool)

(assert (=> b!7295495 (=> res!2950879 e!4369637)))

(declare-fun lt!2597796 () Context!15604)

(declare-fun nullableContext!352 (Context!15604) Bool)

(assert (=> b!7295495 (= res!2950879 (not (nullableContext!352 lt!2597796)))))

(declare-fun b!7295496 () Bool)

(declare-fun res!2950877 () Bool)

(assert (=> b!7295496 (=> (not res!2950877) (not e!4369635))))

(assert (=> b!7295496 (= res!2950877 (nullableContext!352 ct1!250))))

(declare-fun b!7295497 () Bool)

(declare-fun size!41859 (List!71041) Int)

(assert (=> b!7295497 (= e!4369637 (< (size!41859 lt!2597795) (size!41859 (exprs!8302 ct1!250))))))

(declare-fun b!7295498 () Bool)

(declare-fun res!2950876 () Bool)

(assert (=> b!7295498 (=> res!2950876 e!4369634)))

(declare-fun lt!2597789 () (Set Context!15604))

(assert (=> b!7295498 (= res!2950876 (not (= lt!2597789 (set.union (derivationStepZipperDown!2768 (h!77365 (exprs!8302 ct1!250)) lt!2597796 (h!77366 s!7854)) (derivationStepZipperUp!2612 lt!2597796 (h!77366 s!7854))))))))

(declare-fun b!7295499 () Bool)

(declare-fun e!4369633 () Bool)

(declare-fun tp!2062304 () Bool)

(assert (=> b!7295499 (= e!4369633 tp!2062304)))

(declare-fun b!7295500 () Bool)

(declare-fun res!2950878 () Bool)

(assert (=> b!7295500 (=> res!2950878 e!4369639)))

(declare-fun isEmpty!40793 (List!71041) Bool)

(assert (=> b!7295500 (= res!2950878 (isEmpty!40793 (exprs!8302 ct1!250)))))

(declare-fun b!7295492 () Bool)

(assert (=> b!7295492 (= e!4369639 e!4369634)))

(declare-fun res!2950870 () Bool)

(assert (=> b!7295492 (=> res!2950870 e!4369634)))

(declare-fun nullable!8039 (Regex!18862) Bool)

(assert (=> b!7295492 (= res!2950870 (not (nullable!8039 (h!77365 (exprs!8302 ct1!250)))))))

(assert (=> b!7295492 (= lt!2597789 (derivationStepZipperUp!2612 ct1!250 (h!77366 s!7854)))))

(assert (=> b!7295492 (= lt!2597796 (Context!15605 lt!2597795))))

(declare-fun tail!14576 (List!71041) List!71041)

(assert (=> b!7295492 (= lt!2597795 (tail!14576 (exprs!8302 ct1!250)))))

(declare-fun res!2950872 () Bool)

(assert (=> start!711128 (=> (not res!2950872) (not e!4369635))))

(declare-fun matchZipper!3766 ((Set Context!15604) List!71042) Bool)

(assert (=> start!711128 (= res!2950872 (matchZipper!3766 (set.insert ct2!346 (as set.empty (Set Context!15604))) s!7854))))

(assert (=> start!711128 e!4369635))

(declare-fun inv!90166 (Context!15604) Bool)

(assert (=> start!711128 (and (inv!90166 ct2!346) e!4369638)))

(assert (=> start!711128 e!4369636))

(assert (=> start!711128 (and (inv!90166 ct1!250) e!4369633)))

(assert (= (and start!711128 res!2950872) b!7295496))

(assert (= (and b!7295496 res!2950877) b!7295493))

(assert (= (and b!7295493 res!2950875) b!7295490))

(assert (= (and b!7295490 (not res!2950871)) b!7295489))

(assert (= (and b!7295489 (not res!2950874)) b!7295500))

(assert (= (and b!7295500 (not res!2950878)) b!7295492))

(assert (= (and b!7295492 (not res!2950870)) b!7295498))

(assert (= (and b!7295498 (not res!2950876)) b!7295494))

(assert (= (and b!7295494 (not res!2950873)) b!7295495))

(assert (= (and b!7295495 (not res!2950879)) b!7295497))

(assert (= start!711128 b!7295491))

(assert (= (and start!711128 (is-Cons!70918 s!7854)) b!7295488))

(assert (= start!711128 b!7295499))

(declare-fun m!7967118 () Bool)

(assert (=> b!7295497 m!7967118))

(declare-fun m!7967120 () Bool)

(assert (=> b!7295497 m!7967120))

(declare-fun m!7967122 () Bool)

(assert (=> b!7295490 m!7967122))

(declare-fun m!7967124 () Bool)

(assert (=> b!7295490 m!7967124))

(declare-fun m!7967126 () Bool)

(assert (=> b!7295490 m!7967126))

(declare-fun m!7967128 () Bool)

(assert (=> b!7295490 m!7967128))

(declare-fun m!7967130 () Bool)

(assert (=> b!7295490 m!7967130))

(declare-fun m!7967132 () Bool)

(assert (=> b!7295490 m!7967132))

(assert (=> b!7295490 m!7967124))

(assert (=> b!7295490 m!7967124))

(declare-fun m!7967134 () Bool)

(assert (=> b!7295490 m!7967134))

(declare-fun m!7967136 () Bool)

(assert (=> b!7295490 m!7967136))

(declare-fun m!7967138 () Bool)

(assert (=> b!7295490 m!7967138))

(assert (=> b!7295490 m!7967124))

(declare-fun m!7967140 () Bool)

(assert (=> b!7295490 m!7967140))

(declare-fun m!7967142 () Bool)

(assert (=> b!7295490 m!7967142))

(declare-fun m!7967144 () Bool)

(assert (=> b!7295492 m!7967144))

(assert (=> b!7295492 m!7967126))

(declare-fun m!7967146 () Bool)

(assert (=> b!7295492 m!7967146))

(declare-fun m!7967148 () Bool)

(assert (=> b!7295496 m!7967148))

(declare-fun m!7967150 () Bool)

(assert (=> start!711128 m!7967150))

(assert (=> start!711128 m!7967150))

(declare-fun m!7967152 () Bool)

(assert (=> start!711128 m!7967152))

(declare-fun m!7967154 () Bool)

(assert (=> start!711128 m!7967154))

(declare-fun m!7967156 () Bool)

(assert (=> start!711128 m!7967156))

(declare-fun m!7967158 () Bool)

(assert (=> b!7295495 m!7967158))

(declare-fun m!7967160 () Bool)

(assert (=> b!7295500 m!7967160))

(declare-fun m!7967162 () Bool)

(assert (=> b!7295498 m!7967162))

(declare-fun m!7967164 () Bool)

(assert (=> b!7295498 m!7967164))

(declare-fun m!7967166 () Bool)

(assert (=> b!7295494 m!7967166))

(declare-fun m!7967168 () Bool)

(assert (=> b!7295494 m!7967168))

(declare-fun m!7967170 () Bool)

(assert (=> b!7295494 m!7967170))

(declare-fun m!7967172 () Bool)

(assert (=> b!7295494 m!7967172))

(assert (=> b!7295494 m!7967168))

(push 1)

(assert (not b!7295492))

(assert tp_is_empty!47189)

(assert (not b!7295490))

(assert (not b!7295494))

(assert (not b!7295500))

(assert (not b!7295488))

(assert (not start!711128))

(assert (not b!7295499))

(assert (not b!7295498))

(assert (not b!7295491))

(assert (not b!7295495))

(assert (not b!7295497))

(assert (not b!7295496))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7295566 () Bool)

(declare-fun c!1355889 () Bool)

(assert (=> b!7295566 (= c!1355889 (is-Star!18862 (h!77365 (exprs!8302 ct1!250))))))

(declare-fun e!4369677 () (Set Context!15604))

(declare-fun e!4369675 () (Set Context!15604))

(assert (=> b!7295566 (= e!4369677 e!4369675)))

(declare-fun call!664665 () (Set Context!15604))

(declare-fun c!1355893 () Bool)

(declare-fun bm!664659 () Bool)

(declare-fun call!664669 () List!71041)

(assert (=> bm!664659 (= call!664665 (derivationStepZipperDown!2768 (ite c!1355893 (regTwo!38237 (h!77365 (exprs!8302 ct1!250))) (regOne!38236 (h!77365 (exprs!8302 ct1!250)))) (ite c!1355893 lt!2597796 (Context!15605 call!664669)) (h!77366 s!7854)))))

(declare-fun d!2266744 () Bool)

(declare-fun c!1355892 () Bool)

(assert (=> d!2266744 (= c!1355892 (and (is-ElementMatch!18862 (h!77365 (exprs!8302 ct1!250))) (= (c!1355873 (h!77365 (exprs!8302 ct1!250))) (h!77366 s!7854))))))

(declare-fun e!4369676 () (Set Context!15604))

(assert (=> d!2266744 (= (derivationStepZipperDown!2768 (h!77365 (exprs!8302 ct1!250)) lt!2597796 (h!77366 s!7854)) e!4369676)))

(declare-fun bm!664660 () Bool)

(declare-fun c!1355891 () Bool)

(declare-fun c!1355890 () Bool)

(declare-fun call!664666 () List!71041)

(declare-fun call!664667 () (Set Context!15604))

(assert (=> bm!664660 (= call!664667 (derivationStepZipperDown!2768 (ite c!1355893 (regOne!38237 (h!77365 (exprs!8302 ct1!250))) (ite c!1355890 (regTwo!38236 (h!77365 (exprs!8302 ct1!250))) (ite c!1355891 (regOne!38236 (h!77365 (exprs!8302 ct1!250))) (reg!19191 (h!77365 (exprs!8302 ct1!250)))))) (ite (or c!1355893 c!1355890) lt!2597796 (Context!15605 call!664666)) (h!77366 s!7854)))))

(declare-fun bm!664661 () Bool)

(declare-fun $colon$colon!2993 (List!71041 Regex!18862) List!71041)

(assert (=> bm!664661 (= call!664669 ($colon$colon!2993 (exprs!8302 lt!2597796) (ite (or c!1355890 c!1355891) (regTwo!38236 (h!77365 (exprs!8302 ct1!250))) (h!77365 (exprs!8302 ct1!250)))))))

(declare-fun b!7295567 () Bool)

(declare-fun e!4369674 () (Set Context!15604))

(assert (=> b!7295567 (= e!4369674 e!4369677)))

(assert (=> b!7295567 (= c!1355891 (is-Concat!27707 (h!77365 (exprs!8302 ct1!250))))))

(declare-fun b!7295568 () Bool)

(assert (=> b!7295568 (= e!4369676 (set.insert lt!2597796 (as set.empty (Set Context!15604))))))

(declare-fun bm!664662 () Bool)

(declare-fun call!664664 () (Set Context!15604))

(declare-fun call!664668 () (Set Context!15604))

(assert (=> bm!664662 (= call!664664 call!664668)))

(declare-fun b!7295569 () Bool)

(assert (=> b!7295569 (= e!4369674 (set.union call!664665 call!664668))))

(declare-fun b!7295570 () Bool)

(assert (=> b!7295570 (= e!4369677 call!664664)))

(declare-fun bm!664663 () Bool)

(assert (=> bm!664663 (= call!664668 call!664667)))

(declare-fun b!7295571 () Bool)

(assert (=> b!7295571 (= e!4369675 call!664664)))

(declare-fun b!7295572 () Bool)

(declare-fun e!4369678 () Bool)

(assert (=> b!7295572 (= e!4369678 (nullable!8039 (regOne!38236 (h!77365 (exprs!8302 ct1!250)))))))

(declare-fun b!7295573 () Bool)

(assert (=> b!7295573 (= c!1355890 e!4369678)))

(declare-fun res!2950912 () Bool)

(assert (=> b!7295573 (=> (not res!2950912) (not e!4369678))))

(assert (=> b!7295573 (= res!2950912 (is-Concat!27707 (h!77365 (exprs!8302 ct1!250))))))

(declare-fun e!4369673 () (Set Context!15604))

(assert (=> b!7295573 (= e!4369673 e!4369674)))

(declare-fun b!7295574 () Bool)

(assert (=> b!7295574 (= e!4369676 e!4369673)))

(assert (=> b!7295574 (= c!1355893 (is-Union!18862 (h!77365 (exprs!8302 ct1!250))))))

(declare-fun b!7295575 () Bool)

(assert (=> b!7295575 (= e!4369673 (set.union call!664667 call!664665))))

(declare-fun bm!664664 () Bool)

(assert (=> bm!664664 (= call!664666 call!664669)))

(declare-fun b!7295576 () Bool)

(assert (=> b!7295576 (= e!4369675 (as set.empty (Set Context!15604)))))

(assert (= (and d!2266744 c!1355892) b!7295568))

(assert (= (and d!2266744 (not c!1355892)) b!7295574))

(assert (= (and b!7295574 c!1355893) b!7295575))

(assert (= (and b!7295574 (not c!1355893)) b!7295573))

(assert (= (and b!7295573 res!2950912) b!7295572))

(assert (= (and b!7295573 c!1355890) b!7295569))

(assert (= (and b!7295573 (not c!1355890)) b!7295567))

(assert (= (and b!7295567 c!1355891) b!7295570))

(assert (= (and b!7295567 (not c!1355891)) b!7295566))

(assert (= (and b!7295566 c!1355889) b!7295571))

(assert (= (and b!7295566 (not c!1355889)) b!7295576))

(assert (= (or b!7295570 b!7295571) bm!664664))

(assert (= (or b!7295570 b!7295571) bm!664662))

(assert (= (or b!7295569 bm!664664) bm!664661))

(assert (= (or b!7295569 bm!664662) bm!664663))

(assert (= (or b!7295575 bm!664663) bm!664660))

(assert (= (or b!7295575 b!7295569) bm!664659))

(declare-fun m!7967236 () Bool)

(assert (=> bm!664660 m!7967236))

(declare-fun m!7967238 () Bool)

(assert (=> bm!664659 m!7967238))

(declare-fun m!7967240 () Bool)

(assert (=> b!7295568 m!7967240))

(declare-fun m!7967242 () Bool)

(assert (=> b!7295572 m!7967242))

(declare-fun m!7967244 () Bool)

(assert (=> bm!664661 m!7967244))

(assert (=> b!7295498 d!2266744))

(declare-fun e!4369689 () (Set Context!15604))

(declare-fun b!7295591 () Bool)

(declare-fun call!664672 () (Set Context!15604))

(assert (=> b!7295591 (= e!4369689 (set.union call!664672 (derivationStepZipperUp!2612 (Context!15605 (t!385117 (exprs!8302 lt!2597796))) (h!77366 s!7854))))))

(declare-fun d!2266750 () Bool)

(declare-fun c!1355901 () Bool)

(declare-fun e!4369687 () Bool)

(assert (=> d!2266750 (= c!1355901 e!4369687)))

(declare-fun res!2950915 () Bool)

(assert (=> d!2266750 (=> (not res!2950915) (not e!4369687))))

(assert (=> d!2266750 (= res!2950915 (is-Cons!70917 (exprs!8302 lt!2597796)))))

(assert (=> d!2266750 (= (derivationStepZipperUp!2612 lt!2597796 (h!77366 s!7854)) e!4369689)))

(declare-fun b!7295592 () Bool)

(declare-fun e!4369688 () (Set Context!15604))

(assert (=> b!7295592 (= e!4369688 call!664672)))

(declare-fun bm!664667 () Bool)

(assert (=> bm!664667 (= call!664672 (derivationStepZipperDown!2768 (h!77365 (exprs!8302 lt!2597796)) (Context!15605 (t!385117 (exprs!8302 lt!2597796))) (h!77366 s!7854)))))

(declare-fun b!7295593 () Bool)

(assert (=> b!7295593 (= e!4369689 e!4369688)))

(declare-fun c!1355900 () Bool)

(assert (=> b!7295593 (= c!1355900 (is-Cons!70917 (exprs!8302 lt!2597796)))))

(declare-fun b!7295594 () Bool)

(assert (=> b!7295594 (= e!4369688 (as set.empty (Set Context!15604)))))

(declare-fun b!7295595 () Bool)

(assert (=> b!7295595 (= e!4369687 (nullable!8039 (h!77365 (exprs!8302 lt!2597796))))))

(assert (= (and d!2266750 res!2950915) b!7295595))

(assert (= (and d!2266750 c!1355901) b!7295591))

(assert (= (and d!2266750 (not c!1355901)) b!7295593))

(assert (= (and b!7295593 c!1355900) b!7295592))

(assert (= (and b!7295593 (not c!1355900)) b!7295594))

(assert (= (or b!7295591 b!7295592) bm!664667))

(declare-fun m!7967246 () Bool)

(assert (=> b!7295591 m!7967246))

(declare-fun m!7967248 () Bool)

(assert (=> bm!664667 m!7967248))

(declare-fun m!7967250 () Bool)

(assert (=> b!7295595 m!7967250))

(assert (=> b!7295498 d!2266750))

(declare-fun d!2266752 () Bool)

(declare-fun forall!17685 (List!71041 Int) Bool)

(assert (=> d!2266752 (forall!17685 (++!16752 lt!2597795 (exprs!8302 ct2!346)) lambda!450288)))

(declare-fun lt!2597855 () Unit!164322)

(declare-fun choose!56525 (List!71041 List!71041 Int) Unit!164322)

(assert (=> d!2266752 (= lt!2597855 (choose!56525 lt!2597795 (exprs!8302 ct2!346) lambda!450288))))

(assert (=> d!2266752 (forall!17685 lt!2597795 lambda!450288)))

(assert (=> d!2266752 (= (lemmaConcatPreservesForall!1609 lt!2597795 (exprs!8302 ct2!346) lambda!450288) lt!2597855)))

(declare-fun bs!1912868 () Bool)

(assert (= bs!1912868 d!2266752))

(assert (=> bs!1912868 m!7967170))

(assert (=> bs!1912868 m!7967170))

(declare-fun m!7967252 () Bool)

(assert (=> bs!1912868 m!7967252))

(declare-fun m!7967254 () Bool)

(assert (=> bs!1912868 m!7967254))

(declare-fun m!7967256 () Bool)

(assert (=> bs!1912868 m!7967256))

(assert (=> b!7295494 d!2266752))

(declare-fun call!664673 () (Set Context!15604))

(declare-fun e!4369694 () (Set Context!15604))

(declare-fun b!7295600 () Bool)

(assert (=> b!7295600 (= e!4369694 (set.union call!664673 (derivationStepZipperUp!2612 (Context!15605 (t!385117 (exprs!8302 lt!2597797))) (h!77366 s!7854))))))

(declare-fun d!2266754 () Bool)

(declare-fun c!1355903 () Bool)

(declare-fun e!4369692 () Bool)

(assert (=> d!2266754 (= c!1355903 e!4369692)))

(declare-fun res!2950920 () Bool)

(assert (=> d!2266754 (=> (not res!2950920) (not e!4369692))))

(assert (=> d!2266754 (= res!2950920 (is-Cons!70917 (exprs!8302 lt!2597797)))))

(assert (=> d!2266754 (= (derivationStepZipperUp!2612 lt!2597797 (h!77366 s!7854)) e!4369694)))

(declare-fun b!7295601 () Bool)

(declare-fun e!4369693 () (Set Context!15604))

(assert (=> b!7295601 (= e!4369693 call!664673)))

(declare-fun bm!664668 () Bool)

(assert (=> bm!664668 (= call!664673 (derivationStepZipperDown!2768 (h!77365 (exprs!8302 lt!2597797)) (Context!15605 (t!385117 (exprs!8302 lt!2597797))) (h!77366 s!7854)))))

(declare-fun b!7295602 () Bool)

(assert (=> b!7295602 (= e!4369694 e!4369693)))

(declare-fun c!1355902 () Bool)

(assert (=> b!7295602 (= c!1355902 (is-Cons!70917 (exprs!8302 lt!2597797)))))

(declare-fun b!7295603 () Bool)

(assert (=> b!7295603 (= e!4369693 (as set.empty (Set Context!15604)))))

(declare-fun b!7295604 () Bool)

(assert (=> b!7295604 (= e!4369692 (nullable!8039 (h!77365 (exprs!8302 lt!2597797))))))

(assert (= (and d!2266754 res!2950920) b!7295604))

(assert (= (and d!2266754 c!1355903) b!7295600))

(assert (= (and d!2266754 (not c!1355903)) b!7295602))

(assert (= (and b!7295602 c!1355902) b!7295601))

(assert (= (and b!7295602 (not c!1355902)) b!7295603))

(assert (= (or b!7295600 b!7295601) bm!664668))

(declare-fun m!7967258 () Bool)

(assert (=> b!7295600 m!7967258))

(declare-fun m!7967260 () Bool)

(assert (=> bm!664668 m!7967260))

(declare-fun m!7967262 () Bool)

(assert (=> b!7295604 m!7967262))

(assert (=> b!7295494 d!2266754))

(declare-fun b!7295605 () Bool)

(declare-fun c!1355904 () Bool)

(assert (=> b!7295605 (= c!1355904 (is-Star!18862 (h!77365 (exprs!8302 ct1!250))))))

(declare-fun e!4369699 () (Set Context!15604))

(declare-fun e!4369697 () (Set Context!15604))

(assert (=> b!7295605 (= e!4369699 e!4369697)))

(declare-fun call!664675 () (Set Context!15604))

(declare-fun bm!664669 () Bool)

(declare-fun call!664679 () List!71041)

(declare-fun c!1355908 () Bool)

(assert (=> bm!664669 (= call!664675 (derivationStepZipperDown!2768 (ite c!1355908 (regTwo!38237 (h!77365 (exprs!8302 ct1!250))) (regOne!38236 (h!77365 (exprs!8302 ct1!250)))) (ite c!1355908 lt!2597797 (Context!15605 call!664679)) (h!77366 s!7854)))))

(declare-fun d!2266756 () Bool)

(declare-fun c!1355907 () Bool)

(assert (=> d!2266756 (= c!1355907 (and (is-ElementMatch!18862 (h!77365 (exprs!8302 ct1!250))) (= (c!1355873 (h!77365 (exprs!8302 ct1!250))) (h!77366 s!7854))))))

(declare-fun e!4369698 () (Set Context!15604))

(assert (=> d!2266756 (= (derivationStepZipperDown!2768 (h!77365 (exprs!8302 ct1!250)) lt!2597797 (h!77366 s!7854)) e!4369698)))

(declare-fun call!664676 () List!71041)

(declare-fun c!1355906 () Bool)

(declare-fun bm!664670 () Bool)

(declare-fun c!1355905 () Bool)

(declare-fun call!664677 () (Set Context!15604))

(assert (=> bm!664670 (= call!664677 (derivationStepZipperDown!2768 (ite c!1355908 (regOne!38237 (h!77365 (exprs!8302 ct1!250))) (ite c!1355905 (regTwo!38236 (h!77365 (exprs!8302 ct1!250))) (ite c!1355906 (regOne!38236 (h!77365 (exprs!8302 ct1!250))) (reg!19191 (h!77365 (exprs!8302 ct1!250)))))) (ite (or c!1355908 c!1355905) lt!2597797 (Context!15605 call!664676)) (h!77366 s!7854)))))

(declare-fun bm!664671 () Bool)

(assert (=> bm!664671 (= call!664679 ($colon$colon!2993 (exprs!8302 lt!2597797) (ite (or c!1355905 c!1355906) (regTwo!38236 (h!77365 (exprs!8302 ct1!250))) (h!77365 (exprs!8302 ct1!250)))))))

(declare-fun b!7295606 () Bool)

(declare-fun e!4369696 () (Set Context!15604))

(assert (=> b!7295606 (= e!4369696 e!4369699)))

(assert (=> b!7295606 (= c!1355906 (is-Concat!27707 (h!77365 (exprs!8302 ct1!250))))))

(declare-fun b!7295607 () Bool)

(assert (=> b!7295607 (= e!4369698 (set.insert lt!2597797 (as set.empty (Set Context!15604))))))

(declare-fun bm!664672 () Bool)

(declare-fun call!664674 () (Set Context!15604))

(declare-fun call!664678 () (Set Context!15604))

(assert (=> bm!664672 (= call!664674 call!664678)))

(declare-fun b!7295608 () Bool)

(assert (=> b!7295608 (= e!4369696 (set.union call!664675 call!664678))))

(declare-fun b!7295609 () Bool)

(assert (=> b!7295609 (= e!4369699 call!664674)))

(declare-fun bm!664673 () Bool)

(assert (=> bm!664673 (= call!664678 call!664677)))

(declare-fun b!7295610 () Bool)

(assert (=> b!7295610 (= e!4369697 call!664674)))

(declare-fun b!7295611 () Bool)

(declare-fun e!4369700 () Bool)

(assert (=> b!7295611 (= e!4369700 (nullable!8039 (regOne!38236 (h!77365 (exprs!8302 ct1!250)))))))

(declare-fun b!7295612 () Bool)

(assert (=> b!7295612 (= c!1355905 e!4369700)))

(declare-fun res!2950921 () Bool)

(assert (=> b!7295612 (=> (not res!2950921) (not e!4369700))))

(assert (=> b!7295612 (= res!2950921 (is-Concat!27707 (h!77365 (exprs!8302 ct1!250))))))

(declare-fun e!4369695 () (Set Context!15604))

(assert (=> b!7295612 (= e!4369695 e!4369696)))

(declare-fun b!7295613 () Bool)

(assert (=> b!7295613 (= e!4369698 e!4369695)))

(assert (=> b!7295613 (= c!1355908 (is-Union!18862 (h!77365 (exprs!8302 ct1!250))))))

(declare-fun b!7295614 () Bool)

(assert (=> b!7295614 (= e!4369695 (set.union call!664677 call!664675))))

(declare-fun bm!664674 () Bool)

(assert (=> bm!664674 (= call!664676 call!664679)))

(declare-fun b!7295615 () Bool)

(assert (=> b!7295615 (= e!4369697 (as set.empty (Set Context!15604)))))

(assert (= (and d!2266756 c!1355907) b!7295607))

(assert (= (and d!2266756 (not c!1355907)) b!7295613))

(assert (= (and b!7295613 c!1355908) b!7295614))

(assert (= (and b!7295613 (not c!1355908)) b!7295612))

(assert (= (and b!7295612 res!2950921) b!7295611))

(assert (= (and b!7295612 c!1355905) b!7295608))

(assert (= (and b!7295612 (not c!1355905)) b!7295606))

(assert (= (and b!7295606 c!1355906) b!7295609))

(assert (= (and b!7295606 (not c!1355906)) b!7295605))

(assert (= (and b!7295605 c!1355904) b!7295610))

(assert (= (and b!7295605 (not c!1355904)) b!7295615))

(assert (= (or b!7295609 b!7295610) bm!664674))

(assert (= (or b!7295609 b!7295610) bm!664672))

(assert (= (or b!7295608 bm!664674) bm!664671))

(assert (= (or b!7295608 bm!664672) bm!664673))

(assert (= (or b!7295614 bm!664673) bm!664670))

(assert (= (or b!7295614 b!7295608) bm!664669))

(declare-fun m!7967264 () Bool)

(assert (=> bm!664670 m!7967264))

(declare-fun m!7967266 () Bool)

(assert (=> bm!664669 m!7967266))

(declare-fun m!7967268 () Bool)

(assert (=> b!7295607 m!7967268))

(assert (=> b!7295611 m!7967242))

(declare-fun m!7967270 () Bool)

(assert (=> bm!664671 m!7967270))

(assert (=> b!7295494 d!2266756))

(declare-fun b!7295629 () Bool)

(declare-fun e!4369707 () List!71041)

(assert (=> b!7295629 (= e!4369707 (Cons!70917 (h!77365 lt!2597795) (++!16752 (t!385117 lt!2597795) (exprs!8302 ct2!346))))))

(declare-fun b!7295628 () Bool)

(assert (=> b!7295628 (= e!4369707 (exprs!8302 ct2!346))))

(declare-fun d!2266758 () Bool)

(declare-fun e!4369708 () Bool)

(assert (=> d!2266758 e!4369708))

(declare-fun res!2950929 () Bool)

(assert (=> d!2266758 (=> (not res!2950929) (not e!4369708))))

(declare-fun lt!2597859 () List!71041)

(declare-fun content!14813 (List!71041) (Set Regex!18862))

(assert (=> d!2266758 (= res!2950929 (= (content!14813 lt!2597859) (set.union (content!14813 lt!2597795) (content!14813 (exprs!8302 ct2!346)))))))

(assert (=> d!2266758 (= lt!2597859 e!4369707)))

(declare-fun c!1355912 () Bool)

(assert (=> d!2266758 (= c!1355912 (is-Nil!70917 lt!2597795))))

(assert (=> d!2266758 (= (++!16752 lt!2597795 (exprs!8302 ct2!346)) lt!2597859)))

(declare-fun b!7295631 () Bool)

(assert (=> b!7295631 (= e!4369708 (or (not (= (exprs!8302 ct2!346) Nil!70917)) (= lt!2597859 lt!2597795)))))

(declare-fun b!7295630 () Bool)

(declare-fun res!2950928 () Bool)

(assert (=> b!7295630 (=> (not res!2950928) (not e!4369708))))

(assert (=> b!7295630 (= res!2950928 (= (size!41859 lt!2597859) (+ (size!41859 lt!2597795) (size!41859 (exprs!8302 ct2!346)))))))

(assert (= (and d!2266758 c!1355912) b!7295628))

(assert (= (and d!2266758 (not c!1355912)) b!7295629))

(assert (= (and d!2266758 res!2950929) b!7295630))

(assert (= (and b!7295630 res!2950928) b!7295631))

(declare-fun m!7967284 () Bool)

(assert (=> b!7295629 m!7967284))

(declare-fun m!7967286 () Bool)

(assert (=> d!2266758 m!7967286))

(declare-fun m!7967288 () Bool)

(assert (=> d!2266758 m!7967288))

(declare-fun m!7967290 () Bool)

(assert (=> d!2266758 m!7967290))

(declare-fun m!7967292 () Bool)

(assert (=> b!7295630 m!7967292))

(assert (=> b!7295630 m!7967118))

(declare-fun m!7967294 () Bool)

(assert (=> b!7295630 m!7967294))

(assert (=> b!7295494 d!2266758))

(declare-fun d!2266762 () Bool)

(assert (=> d!2266762 (= (isEmpty!40793 (exprs!8302 ct1!250)) (is-Nil!70917 (exprs!8302 ct1!250)))))

(assert (=> b!7295500 d!2266762))

(declare-fun bs!1912869 () Bool)

(declare-fun d!2266764 () Bool)

(assert (= bs!1912869 (and d!2266764 b!7295490)))

(declare-fun lambda!450310 () Int)

(assert (=> bs!1912869 (not (= lambda!450310 lambda!450288))))

(assert (=> d!2266764 (= (nullableContext!352 lt!2597796) (forall!17685 (exprs!8302 lt!2597796) lambda!450310))))

(declare-fun bs!1912870 () Bool)

(assert (= bs!1912870 d!2266764))

(declare-fun m!7967296 () Bool)

(assert (=> bs!1912870 m!7967296))

(assert (=> b!7295495 d!2266764))

(declare-fun e!4369717 () (Set Context!15604))

(declare-fun b!7295642 () Bool)

(declare-fun call!664680 () (Set Context!15604))

(assert (=> b!7295642 (= e!4369717 (set.union call!664680 (derivationStepZipperUp!2612 (Context!15605 (t!385117 (exprs!8302 ct1!250))) (h!77366 s!7854))))))

(declare-fun d!2266766 () Bool)

(declare-fun c!1355919 () Bool)

(declare-fun e!4369715 () Bool)

(assert (=> d!2266766 (= c!1355919 e!4369715)))

(declare-fun res!2950932 () Bool)

(assert (=> d!2266766 (=> (not res!2950932) (not e!4369715))))

(assert (=> d!2266766 (= res!2950932 (is-Cons!70917 (exprs!8302 ct1!250)))))

(assert (=> d!2266766 (= (derivationStepZipperUp!2612 ct1!250 (h!77366 s!7854)) e!4369717)))

(declare-fun b!7295643 () Bool)

(declare-fun e!4369716 () (Set Context!15604))

(assert (=> b!7295643 (= e!4369716 call!664680)))

(declare-fun bm!664675 () Bool)

(assert (=> bm!664675 (= call!664680 (derivationStepZipperDown!2768 (h!77365 (exprs!8302 ct1!250)) (Context!15605 (t!385117 (exprs!8302 ct1!250))) (h!77366 s!7854)))))

(declare-fun b!7295644 () Bool)

(assert (=> b!7295644 (= e!4369717 e!4369716)))

(declare-fun c!1355918 () Bool)

(assert (=> b!7295644 (= c!1355918 (is-Cons!70917 (exprs!8302 ct1!250)))))

(declare-fun b!7295645 () Bool)

(assert (=> b!7295645 (= e!4369716 (as set.empty (Set Context!15604)))))

(declare-fun b!7295646 () Bool)

(assert (=> b!7295646 (= e!4369715 (nullable!8039 (h!77365 (exprs!8302 ct1!250))))))

(assert (= (and d!2266766 res!2950932) b!7295646))

(assert (= (and d!2266766 c!1355919) b!7295642))

(assert (= (and d!2266766 (not c!1355919)) b!7295644))

(assert (= (and b!7295644 c!1355918) b!7295643))

(assert (= (and b!7295644 (not c!1355918)) b!7295645))

(assert (= (or b!7295642 b!7295643) bm!664675))

(declare-fun m!7967298 () Bool)

(assert (=> b!7295642 m!7967298))

(declare-fun m!7967300 () Bool)

(assert (=> bm!664675 m!7967300))

(assert (=> b!7295646 m!7967144))

(assert (=> b!7295490 d!2266766))

(declare-fun e!4369720 () (Set Context!15604))

(declare-fun call!664681 () (Set Context!15604))

(declare-fun b!7295647 () Bool)

(assert (=> b!7295647 (= e!4369720 (set.union call!664681 (derivationStepZipperUp!2612 (Context!15605 (t!385117 (exprs!8302 lt!2597784))) (h!77366 s!7854))))))

(declare-fun d!2266768 () Bool)

(declare-fun c!1355921 () Bool)

(declare-fun e!4369718 () Bool)

(assert (=> d!2266768 (= c!1355921 e!4369718)))

(declare-fun res!2950933 () Bool)

(assert (=> d!2266768 (=> (not res!2950933) (not e!4369718))))

(assert (=> d!2266768 (= res!2950933 (is-Cons!70917 (exprs!8302 lt!2597784)))))

(assert (=> d!2266768 (= (derivationStepZipperUp!2612 lt!2597784 (h!77366 s!7854)) e!4369720)))

(declare-fun b!7295648 () Bool)

(declare-fun e!4369719 () (Set Context!15604))

(assert (=> b!7295648 (= e!4369719 call!664681)))

(declare-fun bm!664676 () Bool)

(assert (=> bm!664676 (= call!664681 (derivationStepZipperDown!2768 (h!77365 (exprs!8302 lt!2597784)) (Context!15605 (t!385117 (exprs!8302 lt!2597784))) (h!77366 s!7854)))))

(declare-fun b!7295649 () Bool)

(assert (=> b!7295649 (= e!4369720 e!4369719)))

(declare-fun c!1355920 () Bool)

(assert (=> b!7295649 (= c!1355920 (is-Cons!70917 (exprs!8302 lt!2597784)))))

(declare-fun b!7295650 () Bool)

(assert (=> b!7295650 (= e!4369719 (as set.empty (Set Context!15604)))))

(declare-fun b!7295651 () Bool)

(assert (=> b!7295651 (= e!4369718 (nullable!8039 (h!77365 (exprs!8302 lt!2597784))))))

(assert (= (and d!2266768 res!2950933) b!7295651))

(assert (= (and d!2266768 c!1355921) b!7295647))

(assert (= (and d!2266768 (not c!1355921)) b!7295649))

(assert (= (and b!7295649 c!1355920) b!7295648))

(assert (= (and b!7295649 (not c!1355920)) b!7295650))

(assert (= (or b!7295647 b!7295648) bm!664676))

(declare-fun m!7967302 () Bool)

(assert (=> b!7295647 m!7967302))

(declare-fun m!7967304 () Bool)

(assert (=> bm!664676 m!7967304))

(declare-fun m!7967306 () Bool)

(assert (=> b!7295651 m!7967306))

(assert (=> b!7295490 d!2266768))

(declare-fun d!2266770 () Bool)

(declare-fun dynLambda!29003 (Int Context!15604) (Set Context!15604))

(assert (=> d!2266770 (= (flatMap!2957 lt!2597794 lambda!450289) (dynLambda!29003 lambda!450289 ct1!250))))

(declare-fun lt!2597862 () Unit!164322)

(declare-fun choose!56526 ((Set Context!15604) Context!15604 Int) Unit!164322)

(assert (=> d!2266770 (= lt!2597862 (choose!56526 lt!2597794 ct1!250 lambda!450289))))

(assert (=> d!2266770 (= lt!2597794 (set.insert ct1!250 (as set.empty (Set Context!15604))))))

(assert (=> d!2266770 (= (lemmaFlatMapOnSingletonSet!2355 lt!2597794 ct1!250 lambda!450289) lt!2597862)))

(declare-fun b_lambda!281357 () Bool)

(assert (=> (not b_lambda!281357) (not d!2266770)))

(declare-fun bs!1912871 () Bool)

(assert (= bs!1912871 d!2266770))

(assert (=> bs!1912871 m!7967128))

(declare-fun m!7967308 () Bool)

(assert (=> bs!1912871 m!7967308))

(declare-fun m!7967310 () Bool)

(assert (=> bs!1912871 m!7967310))

(assert (=> bs!1912871 m!7967134))

(assert (=> b!7295490 d!2266770))

(declare-fun d!2266772 () Bool)

(assert (=> d!2266772 (forall!17685 (++!16752 (exprs!8302 ct1!250) (exprs!8302 ct2!346)) lambda!450288)))

(declare-fun lt!2597863 () Unit!164322)

(assert (=> d!2266772 (= lt!2597863 (choose!56525 (exprs!8302 ct1!250) (exprs!8302 ct2!346) lambda!450288))))

(assert (=> d!2266772 (forall!17685 (exprs!8302 ct1!250) lambda!450288)))

(assert (=> d!2266772 (= (lemmaConcatPreservesForall!1609 (exprs!8302 ct1!250) (exprs!8302 ct2!346) lambda!450288) lt!2597863)))

(declare-fun bs!1912872 () Bool)

(assert (= bs!1912872 d!2266772))

(assert (=> bs!1912872 m!7967136))

(assert (=> bs!1912872 m!7967136))

(declare-fun m!7967312 () Bool)

(assert (=> bs!1912872 m!7967312))

(declare-fun m!7967314 () Bool)

(assert (=> bs!1912872 m!7967314))

(declare-fun m!7967316 () Bool)

(assert (=> bs!1912872 m!7967316))

(assert (=> b!7295490 d!2266772))

(declare-fun d!2266774 () Bool)

(declare-fun choose!56527 ((Set Context!15604) Int) (Set Context!15604))

(assert (=> d!2266774 (= (flatMap!2957 lt!2597788 lambda!450289) (choose!56527 lt!2597788 lambda!450289))))

(declare-fun bs!1912873 () Bool)

(assert (= bs!1912873 d!2266774))

(declare-fun m!7967318 () Bool)

(assert (=> bs!1912873 m!7967318))

(assert (=> b!7295490 d!2266774))

(declare-fun bs!1912874 () Bool)

(declare-fun d!2266776 () Bool)

(assert (= bs!1912874 (and d!2266776 b!7295490)))

(declare-fun lambda!450313 () Int)

(assert (=> bs!1912874 (= lambda!450313 lambda!450289)))

(assert (=> d!2266776 true))

(assert (=> d!2266776 (= (derivationStepZipper!3595 lt!2597788 (h!77366 s!7854)) (flatMap!2957 lt!2597788 lambda!450313))))

(declare-fun bs!1912875 () Bool)

(assert (= bs!1912875 d!2266776))

(declare-fun m!7967320 () Bool)

(assert (=> bs!1912875 m!7967320))

(assert (=> b!7295490 d!2266776))

(declare-fun b!7295660 () Bool)

(declare-fun e!4369724 () List!71041)

(assert (=> b!7295660 (= e!4369724 (Cons!70917 (h!77365 (exprs!8302 ct1!250)) (++!16752 (t!385117 (exprs!8302 ct1!250)) (exprs!8302 ct2!346))))))

(declare-fun b!7295659 () Bool)

(assert (=> b!7295659 (= e!4369724 (exprs!8302 ct2!346))))

(declare-fun d!2266778 () Bool)

(declare-fun e!4369725 () Bool)

(assert (=> d!2266778 e!4369725))

(declare-fun res!2950936 () Bool)

(assert (=> d!2266778 (=> (not res!2950936) (not e!4369725))))

(declare-fun lt!2597864 () List!71041)

(assert (=> d!2266778 (= res!2950936 (= (content!14813 lt!2597864) (set.union (content!14813 (exprs!8302 ct1!250)) (content!14813 (exprs!8302 ct2!346)))))))

(assert (=> d!2266778 (= lt!2597864 e!4369724)))

(declare-fun c!1355926 () Bool)

(assert (=> d!2266778 (= c!1355926 (is-Nil!70917 (exprs!8302 ct1!250)))))

(assert (=> d!2266778 (= (++!16752 (exprs!8302 ct1!250) (exprs!8302 ct2!346)) lt!2597864)))

(declare-fun b!7295662 () Bool)

(assert (=> b!7295662 (= e!4369725 (or (not (= (exprs!8302 ct2!346) Nil!70917)) (= lt!2597864 (exprs!8302 ct1!250))))))

(declare-fun b!7295661 () Bool)

(declare-fun res!2950935 () Bool)

(assert (=> b!7295661 (=> (not res!2950935) (not e!4369725))))

(assert (=> b!7295661 (= res!2950935 (= (size!41859 lt!2597864) (+ (size!41859 (exprs!8302 ct1!250)) (size!41859 (exprs!8302 ct2!346)))))))

(assert (= (and d!2266778 c!1355926) b!7295659))

(assert (= (and d!2266778 (not c!1355926)) b!7295660))

(assert (= (and d!2266778 res!2950936) b!7295661))

(assert (= (and b!7295661 res!2950935) b!7295662))

(declare-fun m!7967328 () Bool)

(assert (=> b!7295660 m!7967328))

(declare-fun m!7967330 () Bool)

(assert (=> d!2266778 m!7967330))

(declare-fun m!7967332 () Bool)

(assert (=> d!2266778 m!7967332))

(assert (=> d!2266778 m!7967290))

(declare-fun m!7967334 () Bool)

(assert (=> b!7295661 m!7967334))

(assert (=> b!7295661 m!7967120))

(assert (=> b!7295661 m!7967294))

(assert (=> b!7295490 d!2266778))

(declare-fun d!2266782 () Bool)

(assert (=> d!2266782 (= (flatMap!2957 lt!2597788 lambda!450289) (dynLambda!29003 lambda!450289 lt!2597784))))

(declare-fun lt!2597865 () Unit!164322)

(assert (=> d!2266782 (= lt!2597865 (choose!56526 lt!2597788 lt!2597784 lambda!450289))))

(assert (=> d!2266782 (= lt!2597788 (set.insert lt!2597784 (as set.empty (Set Context!15604))))))

(assert (=> d!2266782 (= (lemmaFlatMapOnSingletonSet!2355 lt!2597788 lt!2597784 lambda!450289) lt!2597865)))

(declare-fun b_lambda!281359 () Bool)

(assert (=> (not b_lambda!281359) (not d!2266782)))

(declare-fun bs!1912876 () Bool)

(assert (= bs!1912876 d!2266782))

(assert (=> bs!1912876 m!7967138))

(declare-fun m!7967336 () Bool)

(assert (=> bs!1912876 m!7967336))

(declare-fun m!7967338 () Bool)

(assert (=> bs!1912876 m!7967338))

(assert (=> bs!1912876 m!7967140))

(assert (=> b!7295490 d!2266782))

(declare-fun d!2266784 () Bool)

(assert (=> d!2266784 (= (flatMap!2957 lt!2597794 lambda!450289) (choose!56527 lt!2597794 lambda!450289))))

(declare-fun bs!1912877 () Bool)

(assert (= bs!1912877 d!2266784))

(declare-fun m!7967340 () Bool)

(assert (=> bs!1912877 m!7967340))

(assert (=> b!7295490 d!2266784))

(declare-fun d!2266786 () Bool)

(declare-fun c!1355929 () Bool)

(declare-fun isEmpty!40795 (List!71042) Bool)

(assert (=> d!2266786 (= c!1355929 (isEmpty!40795 s!7854))))

(declare-fun e!4369728 () Bool)

(assert (=> d!2266786 (= (matchZipper!3766 (set.insert ct2!346 (as set.empty (Set Context!15604))) s!7854) e!4369728)))

(declare-fun b!7295667 () Bool)

(declare-fun nullableZipper!3057 ((Set Context!15604)) Bool)

(assert (=> b!7295667 (= e!4369728 (nullableZipper!3057 (set.insert ct2!346 (as set.empty (Set Context!15604)))))))

(declare-fun b!7295668 () Bool)

(declare-fun head!15055 (List!71042) C!37998)

(declare-fun tail!14578 (List!71042) List!71042)

(assert (=> b!7295668 (= e!4369728 (matchZipper!3766 (derivationStepZipper!3595 (set.insert ct2!346 (as set.empty (Set Context!15604))) (head!15055 s!7854)) (tail!14578 s!7854)))))

(assert (= (and d!2266786 c!1355929) b!7295667))

(assert (= (and d!2266786 (not c!1355929)) b!7295668))

(declare-fun m!7967342 () Bool)

(assert (=> d!2266786 m!7967342))

(assert (=> b!7295667 m!7967150))

(declare-fun m!7967344 () Bool)

(assert (=> b!7295667 m!7967344))

(declare-fun m!7967346 () Bool)

(assert (=> b!7295668 m!7967346))

(assert (=> b!7295668 m!7967150))

(assert (=> b!7295668 m!7967346))

(declare-fun m!7967348 () Bool)

(assert (=> b!7295668 m!7967348))

(declare-fun m!7967350 () Bool)

(assert (=> b!7295668 m!7967350))

(assert (=> b!7295668 m!7967348))

(assert (=> b!7295668 m!7967350))

(declare-fun m!7967352 () Bool)

(assert (=> b!7295668 m!7967352))

(assert (=> start!711128 d!2266786))

(declare-fun bs!1912878 () Bool)

(declare-fun d!2266788 () Bool)

(assert (= bs!1912878 (and d!2266788 b!7295490)))

(declare-fun lambda!450316 () Int)

(assert (=> bs!1912878 (= lambda!450316 lambda!450288)))

(declare-fun bs!1912879 () Bool)

(assert (= bs!1912879 (and d!2266788 d!2266764)))

(assert (=> bs!1912879 (not (= lambda!450316 lambda!450310))))

(assert (=> d!2266788 (= (inv!90166 ct2!346) (forall!17685 (exprs!8302 ct2!346) lambda!450316))))

(declare-fun bs!1912880 () Bool)

(assert (= bs!1912880 d!2266788))

(declare-fun m!7967354 () Bool)

(assert (=> bs!1912880 m!7967354))

(assert (=> start!711128 d!2266788))

(declare-fun bs!1912881 () Bool)

(declare-fun d!2266790 () Bool)

(assert (= bs!1912881 (and d!2266790 b!7295490)))

(declare-fun lambda!450317 () Int)

(assert (=> bs!1912881 (= lambda!450317 lambda!450288)))

(declare-fun bs!1912882 () Bool)

(assert (= bs!1912882 (and d!2266790 d!2266764)))

(assert (=> bs!1912882 (not (= lambda!450317 lambda!450310))))

(declare-fun bs!1912883 () Bool)

(assert (= bs!1912883 (and d!2266790 d!2266788)))

(assert (=> bs!1912883 (= lambda!450317 lambda!450316)))

(assert (=> d!2266790 (= (inv!90166 ct1!250) (forall!17685 (exprs!8302 ct1!250) lambda!450317))))

(declare-fun bs!1912884 () Bool)

(assert (= bs!1912884 d!2266790))

(declare-fun m!7967356 () Bool)

(assert (=> bs!1912884 m!7967356))

(assert (=> start!711128 d!2266790))

(declare-fun bs!1912885 () Bool)

(declare-fun d!2266792 () Bool)

(assert (= bs!1912885 (and d!2266792 b!7295490)))

(declare-fun lambda!450318 () Int)

(assert (=> bs!1912885 (not (= lambda!450318 lambda!450288))))

(declare-fun bs!1912886 () Bool)

(assert (= bs!1912886 (and d!2266792 d!2266764)))

(assert (=> bs!1912886 (= lambda!450318 lambda!450310)))

(declare-fun bs!1912887 () Bool)

(assert (= bs!1912887 (and d!2266792 d!2266788)))

(assert (=> bs!1912887 (not (= lambda!450318 lambda!450316))))

(declare-fun bs!1912888 () Bool)

(assert (= bs!1912888 (and d!2266792 d!2266790)))

(assert (=> bs!1912888 (not (= lambda!450318 lambda!450317))))

(assert (=> d!2266792 (= (nullableContext!352 ct1!250) (forall!17685 (exprs!8302 ct1!250) lambda!450318))))

(declare-fun bs!1912889 () Bool)

(assert (= bs!1912889 d!2266792))

(declare-fun m!7967358 () Bool)

(assert (=> bs!1912889 m!7967358))

(assert (=> b!7295496 d!2266792))

(declare-fun d!2266794 () Bool)

(declare-fun lt!2597868 () Int)

(assert (=> d!2266794 (>= lt!2597868 0)))

(declare-fun e!4369731 () Int)

(assert (=> d!2266794 (= lt!2597868 e!4369731)))

(declare-fun c!1355932 () Bool)

(assert (=> d!2266794 (= c!1355932 (is-Nil!70917 lt!2597795))))

(assert (=> d!2266794 (= (size!41859 lt!2597795) lt!2597868)))

(declare-fun b!7295675 () Bool)

(assert (=> b!7295675 (= e!4369731 0)))

(declare-fun b!7295676 () Bool)

(assert (=> b!7295676 (= e!4369731 (+ 1 (size!41859 (t!385117 lt!2597795))))))

(assert (= (and d!2266794 c!1355932) b!7295675))

(assert (= (and d!2266794 (not c!1355932)) b!7295676))

(declare-fun m!7967360 () Bool)

(assert (=> b!7295676 m!7967360))

(assert (=> b!7295497 d!2266794))

(declare-fun d!2266796 () Bool)

(declare-fun lt!2597869 () Int)

(assert (=> d!2266796 (>= lt!2597869 0)))

(declare-fun e!4369732 () Int)

(assert (=> d!2266796 (= lt!2597869 e!4369732)))

(declare-fun c!1355933 () Bool)

(assert (=> d!2266796 (= c!1355933 (is-Nil!70917 (exprs!8302 ct1!250)))))

(assert (=> d!2266796 (= (size!41859 (exprs!8302 ct1!250)) lt!2597869)))

(declare-fun b!7295677 () Bool)

(assert (=> b!7295677 (= e!4369732 0)))

(declare-fun b!7295678 () Bool)

(assert (=> b!7295678 (= e!4369732 (+ 1 (size!41859 (t!385117 (exprs!8302 ct1!250)))))))

(assert (= (and d!2266796 c!1355933) b!7295677))

(assert (= (and d!2266796 (not c!1355933)) b!7295678))

(declare-fun m!7967362 () Bool)

(assert (=> b!7295678 m!7967362))

(assert (=> b!7295497 d!2266796))

(declare-fun d!2266798 () Bool)

(declare-fun nullableFct!3177 (Regex!18862) Bool)

(assert (=> d!2266798 (= (nullable!8039 (h!77365 (exprs!8302 ct1!250))) (nullableFct!3177 (h!77365 (exprs!8302 ct1!250))))))

(declare-fun bs!1912890 () Bool)

(assert (= bs!1912890 d!2266798))

(declare-fun m!7967364 () Bool)

(assert (=> bs!1912890 m!7967364))

(assert (=> b!7295492 d!2266798))

(assert (=> b!7295492 d!2266766))

(declare-fun d!2266800 () Bool)

(assert (=> d!2266800 (= (tail!14576 (exprs!8302 ct1!250)) (t!385117 (exprs!8302 ct1!250)))))

(assert (=> b!7295492 d!2266800))

(declare-fun b!7295703 () Bool)

(declare-fun e!4369747 () Bool)

(declare-fun tp!2062317 () Bool)

(assert (=> b!7295703 (= e!4369747 (and tp_is_empty!47189 tp!2062317))))

(assert (=> b!7295488 (= tp!2062303 e!4369747)))

(assert (= (and b!7295488 (is-Cons!70918 (t!385118 s!7854))) b!7295703))

(declare-fun b!7295708 () Bool)

(declare-fun e!4369750 () Bool)

(declare-fun tp!2062322 () Bool)

(declare-fun tp!2062323 () Bool)

(assert (=> b!7295708 (= e!4369750 (and tp!2062322 tp!2062323))))

(assert (=> b!7295499 (= tp!2062304 e!4369750)))

(assert (= (and b!7295499 (is-Cons!70917 (exprs!8302 ct1!250))) b!7295708))

(declare-fun b!7295709 () Bool)

(declare-fun e!4369751 () Bool)

(declare-fun tp!2062324 () Bool)

(declare-fun tp!2062325 () Bool)

(assert (=> b!7295709 (= e!4369751 (and tp!2062324 tp!2062325))))

(assert (=> b!7295491 (= tp!2062305 e!4369751)))

(assert (= (and b!7295491 (is-Cons!70917 (exprs!8302 ct2!346))) b!7295709))

(declare-fun b_lambda!281361 () Bool)

(assert (= b_lambda!281357 (or b!7295490 b_lambda!281361)))

(declare-fun bs!1912891 () Bool)

(declare-fun d!2266802 () Bool)

(assert (= bs!1912891 (and d!2266802 b!7295490)))

(assert (=> bs!1912891 (= (dynLambda!29003 lambda!450289 ct1!250) (derivationStepZipperUp!2612 ct1!250 (h!77366 s!7854)))))

(assert (=> bs!1912891 m!7967126))

(assert (=> d!2266770 d!2266802))

(declare-fun b_lambda!281363 () Bool)

(assert (= b_lambda!281359 (or b!7295490 b_lambda!281363)))

(declare-fun bs!1912892 () Bool)

(declare-fun d!2266804 () Bool)

(assert (= bs!1912892 (and d!2266804 b!7295490)))

(assert (=> bs!1912892 (= (dynLambda!29003 lambda!450289 lt!2597784) (derivationStepZipperUp!2612 lt!2597784 (h!77366 s!7854)))))

(assert (=> bs!1912892 m!7967142))

(assert (=> d!2266782 d!2266804))

(push 1)

(assert (not b!7295709))

(assert (not b!7295647))

(assert (not bm!664670))

(assert (not b!7295703))

(assert (not d!2266770))

(assert (not b!7295572))

(assert (not bm!664676))

(assert (not bm!664675))

(assert (not b_lambda!281361))

(assert (not d!2266792))

(assert (not d!2266798))

(assert (not b!7295667))

(assert (not b!7295646))

(assert (not b!7295661))

(assert (not b!7295651))

(assert (not b!7295595))

(assert (not b!7295604))

(assert (not b!7295708))

(assert (not bm!664661))

(assert (not bs!1912891))

(assert (not b!7295660))

(assert tp_is_empty!47189)

(assert (not d!2266772))

(assert (not d!2266784))

(assert (not d!2266788))

(assert (not d!2266776))

(assert (not b!7295600))

(assert (not bm!664671))

(assert (not b!7295611))

(assert (not d!2266774))

(assert (not d!2266758))

(assert (not bm!664667))

(assert (not b_lambda!281363))

(assert (not b!7295591))

(assert (not b!7295642))

(assert (not d!2266752))

(assert (not b!7295678))

(assert (not b!7295676))

(assert (not bm!664668))

(assert (not bm!664669))

(assert (not bm!664660))

(assert (not d!2266764))

(assert (not bm!664659))

(assert (not d!2266778))

(assert (not b!7295630))

(assert (not d!2266786))

(assert (not bs!1912892))

(assert (not d!2266790))

(assert (not d!2266782))

(assert (not b!7295668))

(assert (not b!7295629))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

