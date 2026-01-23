; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!710448 () Bool)

(assert start!710448)

(declare-fun b!7275152 () Bool)

(assert (=> b!7275152 true))

(declare-datatypes ((C!37950 0))(
  ( (C!37951 (val!28923 Int)) )
))
(declare-datatypes ((Regex!18838 0))(
  ( (ElementMatch!18838 (c!1354640 C!37950)) (Concat!27683 (regOne!38188 Regex!18838) (regTwo!38188 Regex!18838)) (EmptyExpr!18838) (Star!18838 (reg!19167 Regex!18838)) (EmptyLang!18838) (Union!18838 (regOne!38189 Regex!18838) (regTwo!38189 Regex!18838)) )
))
(declare-datatypes ((List!70991 0))(
  ( (Nil!70867) (Cons!70867 (h!77315 Regex!18838) (t!385063 List!70991)) )
))
(declare-datatypes ((Context!15556 0))(
  ( (Context!15557 (exprs!8278 List!70991)) )
))
(declare-fun ct1!250 () Context!15556)

(declare-fun lt!2596718 () (Set Context!15556))

(declare-datatypes ((List!70992 0))(
  ( (Nil!70868) (Cons!70868 (h!77316 C!37950) (t!385064 List!70992)) )
))
(declare-fun s!7854 () List!70992)

(declare-fun e!4362661 () Bool)

(declare-fun lt!2596731 () Context!15556)

(declare-fun b!7275148 () Bool)

(declare-fun derivationStepZipperDown!2752 (Regex!18838 Context!15556 C!37950) (Set Context!15556))

(declare-fun derivationStepZipperUp!2594 (Context!15556 C!37950) (Set Context!15556))

(assert (=> b!7275148 (= e!4362661 (= lt!2596718 (set.union (derivationStepZipperDown!2752 (h!77315 (exprs!8278 ct1!250)) lt!2596731 (h!77316 s!7854)) (derivationStepZipperUp!2594 lt!2596731 (h!77316 s!7854)))))))

(declare-fun lt!2596720 () List!70991)

(declare-fun ct2!346 () Context!15556)

(declare-fun ++!16732 (List!70991 List!70991) List!70991)

(assert (=> b!7275148 (= lt!2596731 (Context!15557 (++!16732 lt!2596720 (exprs!8278 ct2!346))))))

(declare-fun lambda!449682 () Int)

(declare-datatypes ((Unit!164282 0))(
  ( (Unit!164283) )
))
(declare-fun lt!2596724 () Unit!164282)

(declare-fun lemmaConcatPreservesForall!1589 (List!70991 List!70991 Int) Unit!164282)

(assert (=> b!7275148 (= lt!2596724 (lemmaConcatPreservesForall!1589 lt!2596720 (exprs!8278 ct2!346) lambda!449682))))

(declare-fun lt!2596727 () Unit!164282)

(assert (=> b!7275148 (= lt!2596727 (lemmaConcatPreservesForall!1589 lt!2596720 (exprs!8278 ct2!346) lambda!449682))))

(declare-fun b!7275149 () Bool)

(declare-fun e!4362656 () Bool)

(declare-fun tp!2041976 () Bool)

(assert (=> b!7275149 (= e!4362656 tp!2041976)))

(declare-fun b!7275150 () Bool)

(declare-fun res!2949025 () Bool)

(assert (=> b!7275150 (=> res!2949025 e!4362661)))

(declare-fun lt!2596729 () (Set Context!15556))

(declare-fun lt!2596723 () Context!15556)

(assert (=> b!7275150 (= res!2949025 (not (= lt!2596729 (set.union (derivationStepZipperDown!2752 (h!77315 (exprs!8278 ct1!250)) lt!2596723 (h!77316 s!7854)) (derivationStepZipperUp!2594 lt!2596723 (h!77316 s!7854))))))))

(declare-fun b!7275151 () Bool)

(declare-fun e!4362658 () Bool)

(assert (=> b!7275151 (= e!4362658 e!4362661)))

(declare-fun res!2949020 () Bool)

(assert (=> b!7275151 (=> res!2949020 e!4362661)))

(declare-fun nullable!8021 (Regex!18838) Bool)

(assert (=> b!7275151 (= res!2949020 (not (nullable!8021 (h!77315 (exprs!8278 ct1!250)))))))

(assert (=> b!7275151 (= lt!2596729 (derivationStepZipperUp!2594 ct1!250 (h!77316 s!7854)))))

(assert (=> b!7275151 (= lt!2596723 (Context!15557 lt!2596720))))

(declare-fun tail!14545 (List!70991) List!70991)

(assert (=> b!7275151 (= lt!2596720 (tail!14545 (exprs!8278 ct1!250)))))

(declare-fun b!7275153 () Bool)

(declare-fun res!2949022 () Bool)

(declare-fun e!4362660 () Bool)

(assert (=> b!7275153 (=> (not res!2949022) (not e!4362660))))

(declare-fun nullableContext!328 (Context!15556) Bool)

(assert (=> b!7275153 (= res!2949022 (nullableContext!328 ct1!250))))

(declare-fun b!7275154 () Bool)

(declare-fun res!2949026 () Bool)

(assert (=> b!7275154 (=> res!2949026 e!4362658)))

(declare-fun isEmpty!40760 (List!70991) Bool)

(assert (=> b!7275154 (= res!2949026 (isEmpty!40760 (exprs!8278 ct1!250)))))

(declare-fun b!7275155 () Bool)

(declare-fun res!2949021 () Bool)

(assert (=> b!7275155 (=> res!2949021 e!4362658)))

(assert (=> b!7275155 (= res!2949021 (not (is-Cons!70867 (exprs!8278 ct1!250))))))

(declare-fun b!7275156 () Bool)

(declare-fun e!4362657 () Bool)

(declare-fun tp!2041977 () Bool)

(assert (=> b!7275156 (= e!4362657 tp!2041977)))

(assert (=> b!7275152 (= e!4362660 (not e!4362658))))

(declare-fun res!2949027 () Bool)

(assert (=> b!7275152 (=> res!2949027 e!4362658)))

(declare-fun lt!2596719 () (Set Context!15556))

(declare-fun derivationStepZipper!3574 ((Set Context!15556) C!37950) (Set Context!15556))

(assert (=> b!7275152 (= res!2949027 (not (= lt!2596718 (derivationStepZipper!3574 lt!2596719 (h!77316 s!7854)))))))

(declare-fun lt!2596726 () Unit!164282)

(assert (=> b!7275152 (= lt!2596726 (lemmaConcatPreservesForall!1589 (exprs!8278 ct1!250) (exprs!8278 ct2!346) lambda!449682))))

(declare-fun lt!2596725 () Context!15556)

(declare-fun lambda!449683 () Int)

(declare-fun flatMap!2937 ((Set Context!15556) Int) (Set Context!15556))

(assert (=> b!7275152 (= (flatMap!2937 lt!2596719 lambda!449683) (derivationStepZipperUp!2594 lt!2596725 (h!77316 s!7854)))))

(declare-fun lt!2596730 () Unit!164282)

(declare-fun lemmaFlatMapOnSingletonSet!2337 ((Set Context!15556) Context!15556 Int) Unit!164282)

(assert (=> b!7275152 (= lt!2596730 (lemmaFlatMapOnSingletonSet!2337 lt!2596719 lt!2596725 lambda!449683))))

(assert (=> b!7275152 (= lt!2596719 (set.insert lt!2596725 (as set.empty (Set Context!15556))))))

(declare-fun lt!2596732 () Unit!164282)

(assert (=> b!7275152 (= lt!2596732 (lemmaConcatPreservesForall!1589 (exprs!8278 ct1!250) (exprs!8278 ct2!346) lambda!449682))))

(declare-fun lt!2596721 () Unit!164282)

(assert (=> b!7275152 (= lt!2596721 (lemmaConcatPreservesForall!1589 (exprs!8278 ct1!250) (exprs!8278 ct2!346) lambda!449682))))

(declare-fun lt!2596733 () (Set Context!15556))

(assert (=> b!7275152 (= (flatMap!2937 lt!2596733 lambda!449683) (derivationStepZipperUp!2594 ct1!250 (h!77316 s!7854)))))

(declare-fun lt!2596728 () Unit!164282)

(assert (=> b!7275152 (= lt!2596728 (lemmaFlatMapOnSingletonSet!2337 lt!2596733 ct1!250 lambda!449683))))

(assert (=> b!7275152 (= lt!2596733 (set.insert ct1!250 (as set.empty (Set Context!15556))))))

(assert (=> b!7275152 (= lt!2596718 (derivationStepZipperUp!2594 lt!2596725 (h!77316 s!7854)))))

(assert (=> b!7275152 (= lt!2596725 (Context!15557 (++!16732 (exprs!8278 ct1!250) (exprs!8278 ct2!346))))))

(declare-fun lt!2596722 () Unit!164282)

(assert (=> b!7275152 (= lt!2596722 (lemmaConcatPreservesForall!1589 (exprs!8278 ct1!250) (exprs!8278 ct2!346) lambda!449682))))

(declare-fun res!2949024 () Bool)

(assert (=> start!710448 (=> (not res!2949024) (not e!4362660))))

(declare-fun matchZipper!3742 ((Set Context!15556) List!70992) Bool)

(assert (=> start!710448 (= res!2949024 (matchZipper!3742 (set.insert ct2!346 (as set.empty (Set Context!15556))) s!7854))))

(assert (=> start!710448 e!4362660))

(declare-fun inv!90106 (Context!15556) Bool)

(assert (=> start!710448 (and (inv!90106 ct2!346) e!4362657)))

(declare-fun e!4362659 () Bool)

(assert (=> start!710448 e!4362659))

(assert (=> start!710448 (and (inv!90106 ct1!250) e!4362656)))

(declare-fun b!7275157 () Bool)

(declare-fun tp_is_empty!47141 () Bool)

(declare-fun tp!2041975 () Bool)

(assert (=> b!7275157 (= e!4362659 (and tp_is_empty!47141 tp!2041975))))

(declare-fun b!7275158 () Bool)

(declare-fun res!2949023 () Bool)

(assert (=> b!7275158 (=> (not res!2949023) (not e!4362660))))

(assert (=> b!7275158 (= res!2949023 (is-Cons!70868 s!7854))))

(assert (= (and start!710448 res!2949024) b!7275153))

(assert (= (and b!7275153 res!2949022) b!7275158))

(assert (= (and b!7275158 res!2949023) b!7275152))

(assert (= (and b!7275152 (not res!2949027)) b!7275155))

(assert (= (and b!7275155 (not res!2949021)) b!7275154))

(assert (= (and b!7275154 (not res!2949026)) b!7275151))

(assert (= (and b!7275151 (not res!2949020)) b!7275150))

(assert (= (and b!7275150 (not res!2949025)) b!7275148))

(assert (= start!710448 b!7275156))

(assert (= (and start!710448 (is-Cons!70868 s!7854)) b!7275157))

(assert (= start!710448 b!7275149))

(declare-fun m!7961858 () Bool)

(assert (=> b!7275150 m!7961858))

(declare-fun m!7961860 () Bool)

(assert (=> b!7275150 m!7961860))

(declare-fun m!7961862 () Bool)

(assert (=> b!7275148 m!7961862))

(declare-fun m!7961864 () Bool)

(assert (=> b!7275148 m!7961864))

(declare-fun m!7961866 () Bool)

(assert (=> b!7275148 m!7961866))

(declare-fun m!7961868 () Bool)

(assert (=> b!7275148 m!7961868))

(assert (=> b!7275148 m!7961868))

(declare-fun m!7961870 () Bool)

(assert (=> start!710448 m!7961870))

(assert (=> start!710448 m!7961870))

(declare-fun m!7961872 () Bool)

(assert (=> start!710448 m!7961872))

(declare-fun m!7961874 () Bool)

(assert (=> start!710448 m!7961874))

(declare-fun m!7961876 () Bool)

(assert (=> start!710448 m!7961876))

(declare-fun m!7961878 () Bool)

(assert (=> b!7275153 m!7961878))

(declare-fun m!7961880 () Bool)

(assert (=> b!7275152 m!7961880))

(declare-fun m!7961882 () Bool)

(assert (=> b!7275152 m!7961882))

(declare-fun m!7961884 () Bool)

(assert (=> b!7275152 m!7961884))

(declare-fun m!7961886 () Bool)

(assert (=> b!7275152 m!7961886))

(declare-fun m!7961888 () Bool)

(assert (=> b!7275152 m!7961888))

(declare-fun m!7961890 () Bool)

(assert (=> b!7275152 m!7961890))

(assert (=> b!7275152 m!7961880))

(assert (=> b!7275152 m!7961880))

(declare-fun m!7961892 () Bool)

(assert (=> b!7275152 m!7961892))

(declare-fun m!7961894 () Bool)

(assert (=> b!7275152 m!7961894))

(declare-fun m!7961896 () Bool)

(assert (=> b!7275152 m!7961896))

(declare-fun m!7961898 () Bool)

(assert (=> b!7275152 m!7961898))

(declare-fun m!7961900 () Bool)

(assert (=> b!7275152 m!7961900))

(assert (=> b!7275152 m!7961880))

(declare-fun m!7961902 () Bool)

(assert (=> b!7275151 m!7961902))

(assert (=> b!7275151 m!7961890))

(declare-fun m!7961904 () Bool)

(assert (=> b!7275151 m!7961904))

(declare-fun m!7961906 () Bool)

(assert (=> b!7275154 m!7961906))

(push 1)

(assert (not b!7275153))

(assert (not b!7275151))

(assert (not b!7275150))

(assert tp_is_empty!47141)

(assert (not b!7275154))

(assert (not b!7275157))

(assert (not b!7275148))

(assert (not b!7275149))

(assert (not b!7275152))

(assert (not start!710448))

(assert (not b!7275156))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2264438 () Bool)

(assert (=> d!2264438 (= (isEmpty!40760 (exprs!8278 ct1!250)) (is-Nil!70867 (exprs!8278 ct1!250)))))

(assert (=> b!7275154 d!2264438))

(declare-fun b!7275218 () Bool)

(declare-fun e!4362692 () (Set Context!15556))

(declare-fun call!663723 () (Set Context!15556))

(assert (=> b!7275218 (= e!4362692 call!663723)))

(declare-fun b!7275219 () Bool)

(declare-fun e!4362694 () (Set Context!15556))

(declare-fun e!4362696 () (Set Context!15556))

(assert (=> b!7275219 (= e!4362694 e!4362696)))

(declare-fun c!1354658 () Bool)

(assert (=> b!7275219 (= c!1354658 (is-Concat!27683 (h!77315 (exprs!8278 ct1!250))))))

(declare-fun b!7275220 () Bool)

(assert (=> b!7275220 (= e!4362692 (as set.empty (Set Context!15556)))))

(declare-fun bm!663713 () Bool)

(declare-fun call!663720 () (Set Context!15556))

(declare-fun call!663719 () (Set Context!15556))

(assert (=> bm!663713 (= call!663720 call!663719)))

(declare-fun b!7275221 () Bool)

(declare-fun e!4362695 () (Set Context!15556))

(assert (=> b!7275221 (= e!4362695 (set.insert lt!2596723 (as set.empty (Set Context!15556))))))

(declare-fun b!7275222 () Bool)

(declare-fun c!1354657 () Bool)

(assert (=> b!7275222 (= c!1354657 (is-Star!18838 (h!77315 (exprs!8278 ct1!250))))))

(assert (=> b!7275222 (= e!4362696 e!4362692)))

(declare-fun d!2264440 () Bool)

(declare-fun c!1354659 () Bool)

(assert (=> d!2264440 (= c!1354659 (and (is-ElementMatch!18838 (h!77315 (exprs!8278 ct1!250))) (= (c!1354640 (h!77315 (exprs!8278 ct1!250))) (h!77316 s!7854))))))

(assert (=> d!2264440 (= (derivationStepZipperDown!2752 (h!77315 (exprs!8278 ct1!250)) lt!2596723 (h!77316 s!7854)) e!4362695)))

(declare-fun bm!663714 () Bool)

(declare-fun call!663721 () List!70991)

(declare-fun call!663722 () List!70991)

(assert (=> bm!663714 (= call!663721 call!663722)))

(declare-fun bm!663715 () Bool)

(assert (=> bm!663715 (= call!663723 call!663720)))

(declare-fun b!7275223 () Bool)

(declare-fun e!4362693 () (Set Context!15556))

(assert (=> b!7275223 (= e!4362695 e!4362693)))

(declare-fun c!1354656 () Bool)

(assert (=> b!7275223 (= c!1354656 (is-Union!18838 (h!77315 (exprs!8278 ct1!250))))))

(declare-fun b!7275224 () Bool)

(assert (=> b!7275224 (= e!4362696 call!663723)))

(declare-fun b!7275225 () Bool)

(declare-fun call!663718 () (Set Context!15556))

(assert (=> b!7275225 (= e!4362693 (set.union call!663719 call!663718))))

(declare-fun b!7275226 () Bool)

(declare-fun c!1354660 () Bool)

(declare-fun e!4362697 () Bool)

(assert (=> b!7275226 (= c!1354660 e!4362697)))

(declare-fun res!2949054 () Bool)

(assert (=> b!7275226 (=> (not res!2949054) (not e!4362697))))

(assert (=> b!7275226 (= res!2949054 (is-Concat!27683 (h!77315 (exprs!8278 ct1!250))))))

(assert (=> b!7275226 (= e!4362693 e!4362694)))

(declare-fun b!7275227 () Bool)

(assert (=> b!7275227 (= e!4362694 (set.union call!663718 call!663720))))

(declare-fun b!7275228 () Bool)

(assert (=> b!7275228 (= e!4362697 (nullable!8021 (regOne!38188 (h!77315 (exprs!8278 ct1!250)))))))

(declare-fun bm!663716 () Bool)

(assert (=> bm!663716 (= call!663719 (derivationStepZipperDown!2752 (ite c!1354656 (regOne!38189 (h!77315 (exprs!8278 ct1!250))) (ite c!1354660 (regTwo!38188 (h!77315 (exprs!8278 ct1!250))) (ite c!1354658 (regOne!38188 (h!77315 (exprs!8278 ct1!250))) (reg!19167 (h!77315 (exprs!8278 ct1!250)))))) (ite (or c!1354656 c!1354660) lt!2596723 (Context!15557 call!663721)) (h!77316 s!7854)))))

(declare-fun bm!663717 () Bool)

(declare-fun $colon$colon!2984 (List!70991 Regex!18838) List!70991)

(assert (=> bm!663717 (= call!663722 ($colon$colon!2984 (exprs!8278 lt!2596723) (ite (or c!1354660 c!1354658) (regTwo!38188 (h!77315 (exprs!8278 ct1!250))) (h!77315 (exprs!8278 ct1!250)))))))

(declare-fun bm!663718 () Bool)

(assert (=> bm!663718 (= call!663718 (derivationStepZipperDown!2752 (ite c!1354656 (regTwo!38189 (h!77315 (exprs!8278 ct1!250))) (regOne!38188 (h!77315 (exprs!8278 ct1!250)))) (ite c!1354656 lt!2596723 (Context!15557 call!663722)) (h!77316 s!7854)))))

(assert (= (and d!2264440 c!1354659) b!7275221))

(assert (= (and d!2264440 (not c!1354659)) b!7275223))

(assert (= (and b!7275223 c!1354656) b!7275225))

(assert (= (and b!7275223 (not c!1354656)) b!7275226))

(assert (= (and b!7275226 res!2949054) b!7275228))

(assert (= (and b!7275226 c!1354660) b!7275227))

(assert (= (and b!7275226 (not c!1354660)) b!7275219))

(assert (= (and b!7275219 c!1354658) b!7275224))

(assert (= (and b!7275219 (not c!1354658)) b!7275222))

(assert (= (and b!7275222 c!1354657) b!7275218))

(assert (= (and b!7275222 (not c!1354657)) b!7275220))

(assert (= (or b!7275224 b!7275218) bm!663714))

(assert (= (or b!7275224 b!7275218) bm!663715))

(assert (= (or b!7275227 bm!663714) bm!663717))

(assert (= (or b!7275227 bm!663715) bm!663713))

(assert (= (or b!7275225 bm!663713) bm!663716))

(assert (= (or b!7275225 b!7275227) bm!663718))

(declare-fun m!7961958 () Bool)

(assert (=> b!7275221 m!7961958))

(declare-fun m!7961960 () Bool)

(assert (=> bm!663718 m!7961960))

(declare-fun m!7961962 () Bool)

(assert (=> bm!663716 m!7961962))

(declare-fun m!7961964 () Bool)

(assert (=> bm!663717 m!7961964))

(declare-fun m!7961966 () Bool)

(assert (=> b!7275228 m!7961966))

(assert (=> b!7275150 d!2264440))

(declare-fun b!7275239 () Bool)

(declare-fun e!4362705 () (Set Context!15556))

(declare-fun call!663726 () (Set Context!15556))

(assert (=> b!7275239 (= e!4362705 call!663726)))

(declare-fun d!2264442 () Bool)

(declare-fun c!1354666 () Bool)

(declare-fun e!4362704 () Bool)

(assert (=> d!2264442 (= c!1354666 e!4362704)))

(declare-fun res!2949057 () Bool)

(assert (=> d!2264442 (=> (not res!2949057) (not e!4362704))))

(assert (=> d!2264442 (= res!2949057 (is-Cons!70867 (exprs!8278 lt!2596723)))))

(declare-fun e!4362706 () (Set Context!15556))

(assert (=> d!2264442 (= (derivationStepZipperUp!2594 lt!2596723 (h!77316 s!7854)) e!4362706)))

(declare-fun b!7275240 () Bool)

(assert (=> b!7275240 (= e!4362706 (set.union call!663726 (derivationStepZipperUp!2594 (Context!15557 (t!385063 (exprs!8278 lt!2596723))) (h!77316 s!7854))))))

(declare-fun bm!663721 () Bool)

(assert (=> bm!663721 (= call!663726 (derivationStepZipperDown!2752 (h!77315 (exprs!8278 lt!2596723)) (Context!15557 (t!385063 (exprs!8278 lt!2596723))) (h!77316 s!7854)))))

(declare-fun b!7275241 () Bool)

(assert (=> b!7275241 (= e!4362704 (nullable!8021 (h!77315 (exprs!8278 lt!2596723))))))

(declare-fun b!7275242 () Bool)

(assert (=> b!7275242 (= e!4362706 e!4362705)))

(declare-fun c!1354665 () Bool)

(assert (=> b!7275242 (= c!1354665 (is-Cons!70867 (exprs!8278 lt!2596723)))))

(declare-fun b!7275243 () Bool)

(assert (=> b!7275243 (= e!4362705 (as set.empty (Set Context!15556)))))

(assert (= (and d!2264442 res!2949057) b!7275241))

(assert (= (and d!2264442 c!1354666) b!7275240))

(assert (= (and d!2264442 (not c!1354666)) b!7275242))

(assert (= (and b!7275242 c!1354665) b!7275239))

(assert (= (and b!7275242 (not c!1354665)) b!7275243))

(assert (= (or b!7275240 b!7275239) bm!663721))

(declare-fun m!7961968 () Bool)

(assert (=> b!7275240 m!7961968))

(declare-fun m!7961970 () Bool)

(assert (=> bm!663721 m!7961970))

(declare-fun m!7961972 () Bool)

(assert (=> b!7275241 m!7961972))

(assert (=> b!7275150 d!2264442))

(declare-fun d!2264444 () Bool)

(declare-fun nullableFct!3167 (Regex!18838) Bool)

(assert (=> d!2264444 (= (nullable!8021 (h!77315 (exprs!8278 ct1!250))) (nullableFct!3167 (h!77315 (exprs!8278 ct1!250))))))

(declare-fun bs!1911960 () Bool)

(assert (= bs!1911960 d!2264444))

(declare-fun m!7961974 () Bool)

(assert (=> bs!1911960 m!7961974))

(assert (=> b!7275151 d!2264444))

(declare-fun b!7275244 () Bool)

(declare-fun e!4362708 () (Set Context!15556))

(declare-fun call!663727 () (Set Context!15556))

(assert (=> b!7275244 (= e!4362708 call!663727)))

(declare-fun d!2264448 () Bool)

(declare-fun c!1354668 () Bool)

(declare-fun e!4362707 () Bool)

(assert (=> d!2264448 (= c!1354668 e!4362707)))

(declare-fun res!2949058 () Bool)

(assert (=> d!2264448 (=> (not res!2949058) (not e!4362707))))

(assert (=> d!2264448 (= res!2949058 (is-Cons!70867 (exprs!8278 ct1!250)))))

(declare-fun e!4362709 () (Set Context!15556))

(assert (=> d!2264448 (= (derivationStepZipperUp!2594 ct1!250 (h!77316 s!7854)) e!4362709)))

(declare-fun b!7275245 () Bool)

(assert (=> b!7275245 (= e!4362709 (set.union call!663727 (derivationStepZipperUp!2594 (Context!15557 (t!385063 (exprs!8278 ct1!250))) (h!77316 s!7854))))))

(declare-fun bm!663722 () Bool)

(assert (=> bm!663722 (= call!663727 (derivationStepZipperDown!2752 (h!77315 (exprs!8278 ct1!250)) (Context!15557 (t!385063 (exprs!8278 ct1!250))) (h!77316 s!7854)))))

(declare-fun b!7275246 () Bool)

(assert (=> b!7275246 (= e!4362707 (nullable!8021 (h!77315 (exprs!8278 ct1!250))))))

(declare-fun b!7275247 () Bool)

(assert (=> b!7275247 (= e!4362709 e!4362708)))

(declare-fun c!1354667 () Bool)

(assert (=> b!7275247 (= c!1354667 (is-Cons!70867 (exprs!8278 ct1!250)))))

(declare-fun b!7275248 () Bool)

(assert (=> b!7275248 (= e!4362708 (as set.empty (Set Context!15556)))))

(assert (= (and d!2264448 res!2949058) b!7275246))

(assert (= (and d!2264448 c!1354668) b!7275245))

(assert (= (and d!2264448 (not c!1354668)) b!7275247))

(assert (= (and b!7275247 c!1354667) b!7275244))

(assert (= (and b!7275247 (not c!1354667)) b!7275248))

(assert (= (or b!7275245 b!7275244) bm!663722))

(declare-fun m!7961976 () Bool)

(assert (=> b!7275245 m!7961976))

(declare-fun m!7961978 () Bool)

(assert (=> bm!663722 m!7961978))

(assert (=> b!7275246 m!7961902))

(assert (=> b!7275151 d!2264448))

(declare-fun d!2264450 () Bool)

(assert (=> d!2264450 (= (tail!14545 (exprs!8278 ct1!250)) (t!385063 (exprs!8278 ct1!250)))))

(assert (=> b!7275151 d!2264450))

(declare-fun d!2264452 () Bool)

(declare-fun choose!56478 ((Set Context!15556) Int) (Set Context!15556))

(assert (=> d!2264452 (= (flatMap!2937 lt!2596733 lambda!449683) (choose!56478 lt!2596733 lambda!449683))))

(declare-fun bs!1911961 () Bool)

(assert (= bs!1911961 d!2264452))

(declare-fun m!7961980 () Bool)

(assert (=> bs!1911961 m!7961980))

(assert (=> b!7275152 d!2264452))

(declare-fun bs!1911962 () Bool)

(declare-fun d!2264454 () Bool)

(assert (= bs!1911962 (and d!2264454 b!7275152)))

(declare-fun lambda!449704 () Int)

(assert (=> bs!1911962 (= lambda!449704 lambda!449683)))

(assert (=> d!2264454 true))

(assert (=> d!2264454 (= (derivationStepZipper!3574 lt!2596719 (h!77316 s!7854)) (flatMap!2937 lt!2596719 lambda!449704))))

(declare-fun bs!1911963 () Bool)

(assert (= bs!1911963 d!2264454))

(declare-fun m!7961982 () Bool)

(assert (=> bs!1911963 m!7961982))

(assert (=> b!7275152 d!2264454))

(assert (=> b!7275152 d!2264448))

(declare-fun b!7275265 () Bool)

(declare-fun res!2949064 () Bool)

(declare-fun e!4362716 () Bool)

(assert (=> b!7275265 (=> (not res!2949064) (not e!4362716))))

(declare-fun lt!2596784 () List!70991)

(declare-fun size!41844 (List!70991) Int)

(assert (=> b!7275265 (= res!2949064 (= (size!41844 lt!2596784) (+ (size!41844 (exprs!8278 ct1!250)) (size!41844 (exprs!8278 ct2!346)))))))

(declare-fun b!7275263 () Bool)

(declare-fun e!4362717 () List!70991)

(assert (=> b!7275263 (= e!4362717 (exprs!8278 ct2!346))))

(declare-fun d!2264456 () Bool)

(assert (=> d!2264456 e!4362716))

(declare-fun res!2949063 () Bool)

(assert (=> d!2264456 (=> (not res!2949063) (not e!4362716))))

(declare-fun content!14797 (List!70991) (Set Regex!18838))

(assert (=> d!2264456 (= res!2949063 (= (content!14797 lt!2596784) (set.union (content!14797 (exprs!8278 ct1!250)) (content!14797 (exprs!8278 ct2!346)))))))

(assert (=> d!2264456 (= lt!2596784 e!4362717)))

(declare-fun c!1354675 () Bool)

(assert (=> d!2264456 (= c!1354675 (is-Nil!70867 (exprs!8278 ct1!250)))))

(assert (=> d!2264456 (= (++!16732 (exprs!8278 ct1!250) (exprs!8278 ct2!346)) lt!2596784)))

(declare-fun b!7275264 () Bool)

(assert (=> b!7275264 (= e!4362717 (Cons!70867 (h!77315 (exprs!8278 ct1!250)) (++!16732 (t!385063 (exprs!8278 ct1!250)) (exprs!8278 ct2!346))))))

(declare-fun b!7275266 () Bool)

(assert (=> b!7275266 (= e!4362716 (or (not (= (exprs!8278 ct2!346) Nil!70867)) (= lt!2596784 (exprs!8278 ct1!250))))))

(assert (= (and d!2264456 c!1354675) b!7275263))

(assert (= (and d!2264456 (not c!1354675)) b!7275264))

(assert (= (and d!2264456 res!2949063) b!7275265))

(assert (= (and b!7275265 res!2949064) b!7275266))

(declare-fun m!7961984 () Bool)

(assert (=> b!7275265 m!7961984))

(declare-fun m!7961986 () Bool)

(assert (=> b!7275265 m!7961986))

(declare-fun m!7961988 () Bool)

(assert (=> b!7275265 m!7961988))

(declare-fun m!7961990 () Bool)

(assert (=> d!2264456 m!7961990))

(declare-fun m!7961992 () Bool)

(assert (=> d!2264456 m!7961992))

(declare-fun m!7961994 () Bool)

(assert (=> d!2264456 m!7961994))

(declare-fun m!7961996 () Bool)

(assert (=> b!7275264 m!7961996))

(assert (=> b!7275152 d!2264456))

(declare-fun d!2264458 () Bool)

(declare-fun dynLambda!28978 (Int Context!15556) (Set Context!15556))

(assert (=> d!2264458 (= (flatMap!2937 lt!2596719 lambda!449683) (dynLambda!28978 lambda!449683 lt!2596725))))

(declare-fun lt!2596787 () Unit!164282)

(declare-fun choose!56479 ((Set Context!15556) Context!15556 Int) Unit!164282)

(assert (=> d!2264458 (= lt!2596787 (choose!56479 lt!2596719 lt!2596725 lambda!449683))))

(assert (=> d!2264458 (= lt!2596719 (set.insert lt!2596725 (as set.empty (Set Context!15556))))))

(assert (=> d!2264458 (= (lemmaFlatMapOnSingletonSet!2337 lt!2596719 lt!2596725 lambda!449683) lt!2596787)))

(declare-fun b_lambda!280797 () Bool)

(assert (=> (not b_lambda!280797) (not d!2264458)))

(declare-fun bs!1911964 () Bool)

(assert (= bs!1911964 d!2264458))

(assert (=> bs!1911964 m!7961888))

(declare-fun m!7962010 () Bool)

(assert (=> bs!1911964 m!7962010))

(declare-fun m!7962012 () Bool)

(assert (=> bs!1911964 m!7962012))

(assert (=> bs!1911964 m!7961900))

(assert (=> b!7275152 d!2264458))

(declare-fun d!2264462 () Bool)

(assert (=> d!2264462 (= (flatMap!2937 lt!2596733 lambda!449683) (dynLambda!28978 lambda!449683 ct1!250))))

(declare-fun lt!2596788 () Unit!164282)

(assert (=> d!2264462 (= lt!2596788 (choose!56479 lt!2596733 ct1!250 lambda!449683))))

(assert (=> d!2264462 (= lt!2596733 (set.insert ct1!250 (as set.empty (Set Context!15556))))))

(assert (=> d!2264462 (= (lemmaFlatMapOnSingletonSet!2337 lt!2596733 ct1!250 lambda!449683) lt!2596788)))

(declare-fun b_lambda!280799 () Bool)

(assert (=> (not b_lambda!280799) (not d!2264462)))

(declare-fun bs!1911965 () Bool)

(assert (= bs!1911965 d!2264462))

(assert (=> bs!1911965 m!7961894))

(declare-fun m!7962014 () Bool)

(assert (=> bs!1911965 m!7962014))

(declare-fun m!7962016 () Bool)

(assert (=> bs!1911965 m!7962016))

(assert (=> bs!1911965 m!7961892))

(assert (=> b!7275152 d!2264462))

(declare-fun d!2264464 () Bool)

(assert (=> d!2264464 (= (flatMap!2937 lt!2596719 lambda!449683) (choose!56478 lt!2596719 lambda!449683))))

(declare-fun bs!1911966 () Bool)

(assert (= bs!1911966 d!2264464))

(declare-fun m!7962018 () Bool)

(assert (=> bs!1911966 m!7962018))

(assert (=> b!7275152 d!2264464))

(declare-fun d!2264466 () Bool)

(declare-fun forall!17663 (List!70991 Int) Bool)

(assert (=> d!2264466 (forall!17663 (++!16732 (exprs!8278 ct1!250) (exprs!8278 ct2!346)) lambda!449682)))

(declare-fun lt!2596791 () Unit!164282)

(declare-fun choose!56480 (List!70991 List!70991 Int) Unit!164282)

(assert (=> d!2264466 (= lt!2596791 (choose!56480 (exprs!8278 ct1!250) (exprs!8278 ct2!346) lambda!449682))))

(assert (=> d!2264466 (forall!17663 (exprs!8278 ct1!250) lambda!449682)))

(assert (=> d!2264466 (= (lemmaConcatPreservesForall!1589 (exprs!8278 ct1!250) (exprs!8278 ct2!346) lambda!449682) lt!2596791)))

(declare-fun bs!1911967 () Bool)

(assert (= bs!1911967 d!2264466))

(assert (=> bs!1911967 m!7961896))

(assert (=> bs!1911967 m!7961896))

(declare-fun m!7962020 () Bool)

(assert (=> bs!1911967 m!7962020))

(declare-fun m!7962022 () Bool)

(assert (=> bs!1911967 m!7962022))

(declare-fun m!7962024 () Bool)

(assert (=> bs!1911967 m!7962024))

(assert (=> b!7275152 d!2264466))

(declare-fun b!7275269 () Bool)

(declare-fun e!4362720 () (Set Context!15556))

(declare-fun call!663728 () (Set Context!15556))

(assert (=> b!7275269 (= e!4362720 call!663728)))

(declare-fun d!2264468 () Bool)

(declare-fun c!1354678 () Bool)

(declare-fun e!4362719 () Bool)

(assert (=> d!2264468 (= c!1354678 e!4362719)))

(declare-fun res!2949065 () Bool)

(assert (=> d!2264468 (=> (not res!2949065) (not e!4362719))))

(assert (=> d!2264468 (= res!2949065 (is-Cons!70867 (exprs!8278 lt!2596725)))))

(declare-fun e!4362721 () (Set Context!15556))

(assert (=> d!2264468 (= (derivationStepZipperUp!2594 lt!2596725 (h!77316 s!7854)) e!4362721)))

(declare-fun b!7275270 () Bool)

(assert (=> b!7275270 (= e!4362721 (set.union call!663728 (derivationStepZipperUp!2594 (Context!15557 (t!385063 (exprs!8278 lt!2596725))) (h!77316 s!7854))))))

(declare-fun bm!663723 () Bool)

(assert (=> bm!663723 (= call!663728 (derivationStepZipperDown!2752 (h!77315 (exprs!8278 lt!2596725)) (Context!15557 (t!385063 (exprs!8278 lt!2596725))) (h!77316 s!7854)))))

(declare-fun b!7275271 () Bool)

(assert (=> b!7275271 (= e!4362719 (nullable!8021 (h!77315 (exprs!8278 lt!2596725))))))

(declare-fun b!7275272 () Bool)

(assert (=> b!7275272 (= e!4362721 e!4362720)))

(declare-fun c!1354677 () Bool)

(assert (=> b!7275272 (= c!1354677 (is-Cons!70867 (exprs!8278 lt!2596725)))))

(declare-fun b!7275273 () Bool)

(assert (=> b!7275273 (= e!4362720 (as set.empty (Set Context!15556)))))

(assert (= (and d!2264468 res!2949065) b!7275271))

(assert (= (and d!2264468 c!1354678) b!7275270))

(assert (= (and d!2264468 (not c!1354678)) b!7275272))

(assert (= (and b!7275272 c!1354677) b!7275269))

(assert (= (and b!7275272 (not c!1354677)) b!7275273))

(assert (= (or b!7275270 b!7275269) bm!663723))

(declare-fun m!7962026 () Bool)

(assert (=> b!7275270 m!7962026))

(declare-fun m!7962028 () Bool)

(assert (=> bm!663723 m!7962028))

(declare-fun m!7962030 () Bool)

(assert (=> b!7275271 m!7962030))

(assert (=> b!7275152 d!2264468))

(declare-fun d!2264470 () Bool)

(declare-fun c!1354681 () Bool)

(declare-fun isEmpty!40762 (List!70992) Bool)

(assert (=> d!2264470 (= c!1354681 (isEmpty!40762 s!7854))))

(declare-fun e!4362724 () Bool)

(assert (=> d!2264470 (= (matchZipper!3742 (set.insert ct2!346 (as set.empty (Set Context!15556))) s!7854) e!4362724)))

(declare-fun b!7275278 () Bool)

(declare-fun nullableZipper!3038 ((Set Context!15556)) Bool)

(assert (=> b!7275278 (= e!4362724 (nullableZipper!3038 (set.insert ct2!346 (as set.empty (Set Context!15556)))))))

(declare-fun b!7275279 () Bool)

(declare-fun head!15036 (List!70992) C!37950)

(declare-fun tail!14547 (List!70992) List!70992)

(assert (=> b!7275279 (= e!4362724 (matchZipper!3742 (derivationStepZipper!3574 (set.insert ct2!346 (as set.empty (Set Context!15556))) (head!15036 s!7854)) (tail!14547 s!7854)))))

(assert (= (and d!2264470 c!1354681) b!7275278))

(assert (= (and d!2264470 (not c!1354681)) b!7275279))

(declare-fun m!7962038 () Bool)

(assert (=> d!2264470 m!7962038))

(assert (=> b!7275278 m!7961870))

(declare-fun m!7962040 () Bool)

(assert (=> b!7275278 m!7962040))

(declare-fun m!7962042 () Bool)

(assert (=> b!7275279 m!7962042))

(assert (=> b!7275279 m!7961870))

(assert (=> b!7275279 m!7962042))

(declare-fun m!7962044 () Bool)

(assert (=> b!7275279 m!7962044))

(declare-fun m!7962046 () Bool)

(assert (=> b!7275279 m!7962046))

(assert (=> b!7275279 m!7962044))

(assert (=> b!7275279 m!7962046))

(declare-fun m!7962048 () Bool)

(assert (=> b!7275279 m!7962048))

(assert (=> start!710448 d!2264470))

(declare-fun bs!1911974 () Bool)

(declare-fun d!2264478 () Bool)

(assert (= bs!1911974 (and d!2264478 b!7275152)))

(declare-fun lambda!449711 () Int)

(assert (=> bs!1911974 (= lambda!449711 lambda!449682)))

(assert (=> d!2264478 (= (inv!90106 ct2!346) (forall!17663 (exprs!8278 ct2!346) lambda!449711))))

(declare-fun bs!1911975 () Bool)

(assert (= bs!1911975 d!2264478))

(declare-fun m!7962050 () Bool)

(assert (=> bs!1911975 m!7962050))

(assert (=> start!710448 d!2264478))

(declare-fun bs!1911976 () Bool)

(declare-fun d!2264480 () Bool)

(assert (= bs!1911976 (and d!2264480 b!7275152)))

(declare-fun lambda!449712 () Int)

(assert (=> bs!1911976 (= lambda!449712 lambda!449682)))

(declare-fun bs!1911977 () Bool)

(assert (= bs!1911977 (and d!2264480 d!2264478)))

(assert (=> bs!1911977 (= lambda!449712 lambda!449711)))

(assert (=> d!2264480 (= (inv!90106 ct1!250) (forall!17663 (exprs!8278 ct1!250) lambda!449712))))

(declare-fun bs!1911978 () Bool)

(assert (= bs!1911978 d!2264480))

(declare-fun m!7962052 () Bool)

(assert (=> bs!1911978 m!7962052))

(assert (=> start!710448 d!2264480))

(declare-fun bs!1911979 () Bool)

(declare-fun d!2264482 () Bool)

(assert (= bs!1911979 (and d!2264482 b!7275152)))

(declare-fun lambda!449715 () Int)

(assert (=> bs!1911979 (not (= lambda!449715 lambda!449682))))

(declare-fun bs!1911980 () Bool)

(assert (= bs!1911980 (and d!2264482 d!2264478)))

(assert (=> bs!1911980 (not (= lambda!449715 lambda!449711))))

(declare-fun bs!1911981 () Bool)

(assert (= bs!1911981 (and d!2264482 d!2264480)))

(assert (=> bs!1911981 (not (= lambda!449715 lambda!449712))))

(assert (=> d!2264482 (= (nullableContext!328 ct1!250) (forall!17663 (exprs!8278 ct1!250) lambda!449715))))

(declare-fun bs!1911982 () Bool)

(assert (= bs!1911982 d!2264482))

(declare-fun m!7962054 () Bool)

(assert (=> bs!1911982 m!7962054))

(assert (=> b!7275153 d!2264482))

(declare-fun d!2264484 () Bool)

(assert (=> d!2264484 (forall!17663 (++!16732 lt!2596720 (exprs!8278 ct2!346)) lambda!449682)))

(declare-fun lt!2596792 () Unit!164282)

(assert (=> d!2264484 (= lt!2596792 (choose!56480 lt!2596720 (exprs!8278 ct2!346) lambda!449682))))

(assert (=> d!2264484 (forall!17663 lt!2596720 lambda!449682)))

(assert (=> d!2264484 (= (lemmaConcatPreservesForall!1589 lt!2596720 (exprs!8278 ct2!346) lambda!449682) lt!2596792)))

(declare-fun bs!1911983 () Bool)

(assert (= bs!1911983 d!2264484))

(assert (=> bs!1911983 m!7961862))

(assert (=> bs!1911983 m!7961862))

(declare-fun m!7962056 () Bool)

(assert (=> bs!1911983 m!7962056))

(declare-fun m!7962058 () Bool)

(assert (=> bs!1911983 m!7962058))

(declare-fun m!7962060 () Bool)

(assert (=> bs!1911983 m!7962060))

(assert (=> b!7275148 d!2264484))

(declare-fun b!7275282 () Bool)

(declare-fun res!2949067 () Bool)

(declare-fun e!4362725 () Bool)

(assert (=> b!7275282 (=> (not res!2949067) (not e!4362725))))

(declare-fun lt!2596793 () List!70991)

(assert (=> b!7275282 (= res!2949067 (= (size!41844 lt!2596793) (+ (size!41844 lt!2596720) (size!41844 (exprs!8278 ct2!346)))))))

(declare-fun b!7275280 () Bool)

(declare-fun e!4362726 () List!70991)

(assert (=> b!7275280 (= e!4362726 (exprs!8278 ct2!346))))

(declare-fun d!2264486 () Bool)

(assert (=> d!2264486 e!4362725))

(declare-fun res!2949066 () Bool)

(assert (=> d!2264486 (=> (not res!2949066) (not e!4362725))))

(assert (=> d!2264486 (= res!2949066 (= (content!14797 lt!2596793) (set.union (content!14797 lt!2596720) (content!14797 (exprs!8278 ct2!346)))))))

(assert (=> d!2264486 (= lt!2596793 e!4362726)))

(declare-fun c!1354683 () Bool)

(assert (=> d!2264486 (= c!1354683 (is-Nil!70867 lt!2596720))))

(assert (=> d!2264486 (= (++!16732 lt!2596720 (exprs!8278 ct2!346)) lt!2596793)))

(declare-fun b!7275281 () Bool)

(assert (=> b!7275281 (= e!4362726 (Cons!70867 (h!77315 lt!2596720) (++!16732 (t!385063 lt!2596720) (exprs!8278 ct2!346))))))

(declare-fun b!7275283 () Bool)

(assert (=> b!7275283 (= e!4362725 (or (not (= (exprs!8278 ct2!346) Nil!70867)) (= lt!2596793 lt!2596720)))))

(assert (= (and d!2264486 c!1354683) b!7275280))

(assert (= (and d!2264486 (not c!1354683)) b!7275281))

(assert (= (and d!2264486 res!2949066) b!7275282))

(assert (= (and b!7275282 res!2949067) b!7275283))

(declare-fun m!7962062 () Bool)

(assert (=> b!7275282 m!7962062))

(declare-fun m!7962064 () Bool)

(assert (=> b!7275282 m!7962064))

(assert (=> b!7275282 m!7961988))

(declare-fun m!7962066 () Bool)

(assert (=> d!2264486 m!7962066))

(declare-fun m!7962068 () Bool)

(assert (=> d!2264486 m!7962068))

(assert (=> d!2264486 m!7961994))

(declare-fun m!7962070 () Bool)

(assert (=> b!7275281 m!7962070))

(assert (=> b!7275148 d!2264486))

(declare-fun b!7275286 () Bool)

(declare-fun e!4362727 () (Set Context!15556))

(declare-fun call!663734 () (Set Context!15556))

(assert (=> b!7275286 (= e!4362727 call!663734)))

(declare-fun b!7275287 () Bool)

(declare-fun e!4362729 () (Set Context!15556))

(declare-fun e!4362731 () (Set Context!15556))

(assert (=> b!7275287 (= e!4362729 e!4362731)))

(declare-fun c!1354686 () Bool)

(assert (=> b!7275287 (= c!1354686 (is-Concat!27683 (h!77315 (exprs!8278 ct1!250))))))

(declare-fun b!7275288 () Bool)

(assert (=> b!7275288 (= e!4362727 (as set.empty (Set Context!15556)))))

(declare-fun bm!663724 () Bool)

(declare-fun call!663731 () (Set Context!15556))

(declare-fun call!663730 () (Set Context!15556))

(assert (=> bm!663724 (= call!663731 call!663730)))

(declare-fun b!7275289 () Bool)

(declare-fun e!4362730 () (Set Context!15556))

(assert (=> b!7275289 (= e!4362730 (set.insert lt!2596731 (as set.empty (Set Context!15556))))))

(declare-fun b!7275290 () Bool)

(declare-fun c!1354685 () Bool)

(assert (=> b!7275290 (= c!1354685 (is-Star!18838 (h!77315 (exprs!8278 ct1!250))))))

(assert (=> b!7275290 (= e!4362731 e!4362727)))

(declare-fun d!2264488 () Bool)

(declare-fun c!1354687 () Bool)

(assert (=> d!2264488 (= c!1354687 (and (is-ElementMatch!18838 (h!77315 (exprs!8278 ct1!250))) (= (c!1354640 (h!77315 (exprs!8278 ct1!250))) (h!77316 s!7854))))))

(assert (=> d!2264488 (= (derivationStepZipperDown!2752 (h!77315 (exprs!8278 ct1!250)) lt!2596731 (h!77316 s!7854)) e!4362730)))

(declare-fun bm!663725 () Bool)

(declare-fun call!663732 () List!70991)

(declare-fun call!663733 () List!70991)

(assert (=> bm!663725 (= call!663732 call!663733)))

(declare-fun bm!663726 () Bool)

(assert (=> bm!663726 (= call!663734 call!663731)))

(declare-fun b!7275291 () Bool)

(declare-fun e!4362728 () (Set Context!15556))

(assert (=> b!7275291 (= e!4362730 e!4362728)))

(declare-fun c!1354684 () Bool)

(assert (=> b!7275291 (= c!1354684 (is-Union!18838 (h!77315 (exprs!8278 ct1!250))))))

(declare-fun b!7275292 () Bool)

(assert (=> b!7275292 (= e!4362731 call!663734)))

(declare-fun b!7275293 () Bool)

(declare-fun call!663729 () (Set Context!15556))

(assert (=> b!7275293 (= e!4362728 (set.union call!663730 call!663729))))

(declare-fun b!7275294 () Bool)

(declare-fun c!1354688 () Bool)

(declare-fun e!4362732 () Bool)

(assert (=> b!7275294 (= c!1354688 e!4362732)))

(declare-fun res!2949068 () Bool)

(assert (=> b!7275294 (=> (not res!2949068) (not e!4362732))))

(assert (=> b!7275294 (= res!2949068 (is-Concat!27683 (h!77315 (exprs!8278 ct1!250))))))

(assert (=> b!7275294 (= e!4362728 e!4362729)))

(declare-fun b!7275295 () Bool)

(assert (=> b!7275295 (= e!4362729 (set.union call!663729 call!663731))))

(declare-fun b!7275296 () Bool)

(assert (=> b!7275296 (= e!4362732 (nullable!8021 (regOne!38188 (h!77315 (exprs!8278 ct1!250)))))))

(declare-fun bm!663727 () Bool)

(assert (=> bm!663727 (= call!663730 (derivationStepZipperDown!2752 (ite c!1354684 (regOne!38189 (h!77315 (exprs!8278 ct1!250))) (ite c!1354688 (regTwo!38188 (h!77315 (exprs!8278 ct1!250))) (ite c!1354686 (regOne!38188 (h!77315 (exprs!8278 ct1!250))) (reg!19167 (h!77315 (exprs!8278 ct1!250)))))) (ite (or c!1354684 c!1354688) lt!2596731 (Context!15557 call!663732)) (h!77316 s!7854)))))

(declare-fun bm!663728 () Bool)

(assert (=> bm!663728 (= call!663733 ($colon$colon!2984 (exprs!8278 lt!2596731) (ite (or c!1354688 c!1354686) (regTwo!38188 (h!77315 (exprs!8278 ct1!250))) (h!77315 (exprs!8278 ct1!250)))))))

(declare-fun bm!663729 () Bool)

(assert (=> bm!663729 (= call!663729 (derivationStepZipperDown!2752 (ite c!1354684 (regTwo!38189 (h!77315 (exprs!8278 ct1!250))) (regOne!38188 (h!77315 (exprs!8278 ct1!250)))) (ite c!1354684 lt!2596731 (Context!15557 call!663733)) (h!77316 s!7854)))))

(assert (= (and d!2264488 c!1354687) b!7275289))

(assert (= (and d!2264488 (not c!1354687)) b!7275291))

(assert (= (and b!7275291 c!1354684) b!7275293))

(assert (= (and b!7275291 (not c!1354684)) b!7275294))

(assert (= (and b!7275294 res!2949068) b!7275296))

(assert (= (and b!7275294 c!1354688) b!7275295))

(assert (= (and b!7275294 (not c!1354688)) b!7275287))

(assert (= (and b!7275287 c!1354686) b!7275292))

(assert (= (and b!7275287 (not c!1354686)) b!7275290))

(assert (= (and b!7275290 c!1354685) b!7275286))

(assert (= (and b!7275290 (not c!1354685)) b!7275288))

(assert (= (or b!7275292 b!7275286) bm!663725))

(assert (= (or b!7275292 b!7275286) bm!663726))

(assert (= (or b!7275295 bm!663725) bm!663728))

(assert (= (or b!7275295 bm!663726) bm!663724))

(assert (= (or b!7275293 bm!663724) bm!663727))

(assert (= (or b!7275293 b!7275295) bm!663729))

(declare-fun m!7962072 () Bool)

(assert (=> b!7275289 m!7962072))

(declare-fun m!7962074 () Bool)

(assert (=> bm!663729 m!7962074))

(declare-fun m!7962076 () Bool)

(assert (=> bm!663727 m!7962076))

(declare-fun m!7962078 () Bool)

(assert (=> bm!663728 m!7962078))

(assert (=> b!7275296 m!7961966))

(assert (=> b!7275148 d!2264488))

(declare-fun b!7275305 () Bool)

(declare-fun e!4362740 () (Set Context!15556))

(declare-fun call!663735 () (Set Context!15556))

(assert (=> b!7275305 (= e!4362740 call!663735)))

(declare-fun d!2264490 () Bool)

(declare-fun c!1354694 () Bool)

(declare-fun e!4362739 () Bool)

(assert (=> d!2264490 (= c!1354694 e!4362739)))

(declare-fun res!2949071 () Bool)

(assert (=> d!2264490 (=> (not res!2949071) (not e!4362739))))

(assert (=> d!2264490 (= res!2949071 (is-Cons!70867 (exprs!8278 lt!2596731)))))

(declare-fun e!4362741 () (Set Context!15556))

(assert (=> d!2264490 (= (derivationStepZipperUp!2594 lt!2596731 (h!77316 s!7854)) e!4362741)))

(declare-fun b!7275306 () Bool)

(assert (=> b!7275306 (= e!4362741 (set.union call!663735 (derivationStepZipperUp!2594 (Context!15557 (t!385063 (exprs!8278 lt!2596731))) (h!77316 s!7854))))))

(declare-fun bm!663730 () Bool)

(assert (=> bm!663730 (= call!663735 (derivationStepZipperDown!2752 (h!77315 (exprs!8278 lt!2596731)) (Context!15557 (t!385063 (exprs!8278 lt!2596731))) (h!77316 s!7854)))))

(declare-fun b!7275307 () Bool)

(assert (=> b!7275307 (= e!4362739 (nullable!8021 (h!77315 (exprs!8278 lt!2596731))))))

(declare-fun b!7275308 () Bool)

(assert (=> b!7275308 (= e!4362741 e!4362740)))

(declare-fun c!1354693 () Bool)

(assert (=> b!7275308 (= c!1354693 (is-Cons!70867 (exprs!8278 lt!2596731)))))

(declare-fun b!7275309 () Bool)

(assert (=> b!7275309 (= e!4362740 (as set.empty (Set Context!15556)))))

(assert (= (and d!2264490 res!2949071) b!7275307))

(assert (= (and d!2264490 c!1354694) b!7275306))

(assert (= (and d!2264490 (not c!1354694)) b!7275308))

(assert (= (and b!7275308 c!1354693) b!7275305))

(assert (= (and b!7275308 (not c!1354693)) b!7275309))

(assert (= (or b!7275306 b!7275305) bm!663730))

(declare-fun m!7962080 () Bool)

(assert (=> b!7275306 m!7962080))

(declare-fun m!7962082 () Bool)

(assert (=> bm!663730 m!7962082))

(declare-fun m!7962084 () Bool)

(assert (=> b!7275307 m!7962084))

(assert (=> b!7275148 d!2264490))

(declare-fun b!7275314 () Bool)

(declare-fun e!4362744 () Bool)

(declare-fun tp!2041991 () Bool)

(declare-fun tp!2041992 () Bool)

(assert (=> b!7275314 (= e!4362744 (and tp!2041991 tp!2041992))))

(assert (=> b!7275149 (= tp!2041976 e!4362744)))

(assert (= (and b!7275149 (is-Cons!70867 (exprs!8278 ct1!250))) b!7275314))

(declare-fun b!7275315 () Bool)

(declare-fun e!4362745 () Bool)

(declare-fun tp!2041993 () Bool)

(declare-fun tp!2041994 () Bool)

(assert (=> b!7275315 (= e!4362745 (and tp!2041993 tp!2041994))))

(assert (=> b!7275156 (= tp!2041977 e!4362745)))

(assert (= (and b!7275156 (is-Cons!70867 (exprs!8278 ct2!346))) b!7275315))

(declare-fun b!7275320 () Bool)

(declare-fun e!4362748 () Bool)

(declare-fun tp!2041997 () Bool)

(assert (=> b!7275320 (= e!4362748 (and tp_is_empty!47141 tp!2041997))))

(assert (=> b!7275157 (= tp!2041975 e!4362748)))

(assert (= (and b!7275157 (is-Cons!70868 (t!385064 s!7854))) b!7275320))

(declare-fun b_lambda!280801 () Bool)

(assert (= b_lambda!280797 (or b!7275152 b_lambda!280801)))

(declare-fun bs!1911984 () Bool)

(declare-fun d!2264492 () Bool)

(assert (= bs!1911984 (and d!2264492 b!7275152)))

(assert (=> bs!1911984 (= (dynLambda!28978 lambda!449683 lt!2596725) (derivationStepZipperUp!2594 lt!2596725 (h!77316 s!7854)))))

(assert (=> bs!1911984 m!7961898))

(assert (=> d!2264458 d!2264492))

(declare-fun b_lambda!280803 () Bool)

(assert (= b_lambda!280799 (or b!7275152 b_lambda!280803)))

(declare-fun bs!1911985 () Bool)

(declare-fun d!2264494 () Bool)

(assert (= bs!1911985 (and d!2264494 b!7275152)))

(assert (=> bs!1911985 (= (dynLambda!28978 lambda!449683 ct1!250) (derivationStepZipperUp!2594 ct1!250 (h!77316 s!7854)))))

(assert (=> bs!1911985 m!7961890))

(assert (=> d!2264462 d!2264494))

(push 1)

(assert (not b!7275264))

(assert (not b!7275307))

(assert (not b!7275265))

(assert (not b_lambda!280801))

(assert (not d!2264464))

(assert (not d!2264456))

(assert (not b!7275228))

(assert (not d!2264470))

(assert (not b!7275241))

(assert (not d!2264480))

(assert (not b!7275282))

(assert (not bs!1911985))

(assert (not d!2264458))

(assert (not d!2264452))

(assert (not d!2264482))

(assert (not bm!663722))

(assert (not b!7275296))

(assert (not bm!663718))

(assert tp_is_empty!47141)

(assert (not bm!663730))

(assert (not b!7275306))

(assert (not d!2264454))

(assert (not b!7275314))

(assert (not d!2264444))

(assert (not b!7275281))

(assert (not bm!663716))

(assert (not b!7275315))

(assert (not bm!663729))

(assert (not d!2264462))

(assert (not b!7275271))

(assert (not bm!663728))

(assert (not b!7275240))

(assert (not d!2264466))

(assert (not b!7275279))

(assert (not bm!663723))

(assert (not b!7275270))

(assert (not b_lambda!280803))

(assert (not bm!663717))

(assert (not bm!663727))

(assert (not b!7275245))

(assert (not b!7275320))

(assert (not d!2264478))

(assert (not d!2264486))

(assert (not bm!663721))

(assert (not d!2264484))

(assert (not bs!1911984))

(assert (not b!7275278))

(assert (not b!7275246))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

