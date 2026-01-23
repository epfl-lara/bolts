; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!705262 () Bool)

(assert start!705262)

(declare-fun b!7248773 () Bool)

(assert (=> b!7248773 true))

(declare-fun e!4346353 () Bool)

(declare-fun e!4346351 () Bool)

(assert (=> b!7248773 (= e!4346353 (not e!4346351))))

(declare-fun res!2940119 () Bool)

(assert (=> b!7248773 (=> res!2940119 e!4346351)))

(declare-datatypes ((C!37542 0))(
  ( (C!37543 (val!28719 Int)) )
))
(declare-datatypes ((Regex!18634 0))(
  ( (ElementMatch!18634 (c!1346800 C!37542)) (Concat!27479 (regOne!37780 Regex!18634) (regTwo!37780 Regex!18634)) (EmptyExpr!18634) (Star!18634 (reg!18963 Regex!18634)) (EmptyLang!18634) (Union!18634 (regOne!37781 Regex!18634) (regTwo!37781 Regex!18634)) )
))
(declare-datatypes ((List!70482 0))(
  ( (Nil!70358) (Cons!70358 (h!76806 Regex!18634) (t!384534 List!70482)) )
))
(declare-datatypes ((Context!15148 0))(
  ( (Context!15149 (exprs!8074 List!70482)) )
))
(declare-fun lt!2584008 () (Set Context!15148))

(declare-fun lambda!443762 () Int)

(declare-fun exists!4346 ((Set Context!15148) Int) Bool)

(assert (=> b!7248773 (= res!2940119 (not (exists!4346 lt!2584008 lambda!443762)))))

(declare-datatypes ((List!70483 0))(
  ( (Nil!70359) (Cons!70359 (h!76807 Context!15148) (t!384535 List!70483)) )
))
(declare-fun lt!2584010 () List!70483)

(declare-fun exists!4347 (List!70483 Int) Bool)

(assert (=> b!7248773 (exists!4347 lt!2584010 lambda!443762)))

(declare-datatypes ((Unit!163852 0))(
  ( (Unit!163853) )
))
(declare-fun lt!2584016 () Unit!163852)

(declare-datatypes ((List!70484 0))(
  ( (Nil!70360) (Cons!70360 (h!76808 C!37542) (t!384536 List!70484)) )
))
(declare-fun s1!1971 () List!70484)

(declare-fun lemmaZipperMatchesExistsMatchingContext!737 (List!70483 List!70484) Unit!163852)

(assert (=> b!7248773 (= lt!2584016 (lemmaZipperMatchesExistsMatchingContext!737 lt!2584010 (t!384536 s1!1971)))))

(declare-fun toList!11463 ((Set Context!15148)) List!70483)

(assert (=> b!7248773 (= lt!2584010 (toList!11463 lt!2584008))))

(declare-fun b!7248774 () Bool)

(declare-fun e!4346349 () Bool)

(assert (=> b!7248774 (= e!4346351 e!4346349)))

(declare-fun res!2940118 () Bool)

(assert (=> b!7248774 (=> res!2940118 e!4346349)))

(declare-fun ct1!232 () Context!15148)

(declare-fun isEmpty!40518 (List!70482) Bool)

(assert (=> b!7248774 (= res!2940118 (isEmpty!40518 (exprs!8074 ct1!232)))))

(declare-fun lt!2584011 () (Set Context!15148))

(declare-fun derivationStepZipperUp!2458 (Context!15148 C!37542) (Set Context!15148))

(assert (=> b!7248774 (= lt!2584011 (derivationStepZipperUp!2458 ct1!232 (h!76808 s1!1971)))))

(declare-fun lt!2584017 () Unit!163852)

(declare-fun lt!2584006 () Context!15148)

(declare-fun ct2!328 () Context!15148)

(declare-fun lambda!443761 () Int)

(declare-fun lemmaConcatPreservesForall!1441 (List!70482 List!70482 Int) Unit!163852)

(assert (=> b!7248774 (= lt!2584017 (lemmaConcatPreservesForall!1441 (exprs!8074 lt!2584006) (exprs!8074 ct2!328) lambda!443761))))

(declare-fun s2!1849 () List!70484)

(declare-fun matchZipper!3544 ((Set Context!15148) List!70484) Bool)

(declare-fun ++!16530 (List!70482 List!70482) List!70482)

(declare-fun ++!16531 (List!70484 List!70484) List!70484)

(assert (=> b!7248774 (matchZipper!3544 (set.insert (Context!15149 (++!16530 (exprs!8074 lt!2584006) (exprs!8074 ct2!328))) (as set.empty (Set Context!15148))) (++!16531 (t!384536 s1!1971) s2!1849))))

(declare-fun lt!2584012 () Unit!163852)

(assert (=> b!7248774 (= lt!2584012 (lemmaConcatPreservesForall!1441 (exprs!8074 lt!2584006) (exprs!8074 ct2!328) lambda!443761))))

(declare-fun lt!2584007 () Unit!163852)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!379 (Context!15148 Context!15148 List!70484 List!70484) Unit!163852)

(assert (=> b!7248774 (= lt!2584007 (lemmaConcatenateContextMatchesConcatOfStrings!379 lt!2584006 ct2!328 (t!384536 s1!1971) s2!1849))))

(declare-fun getWitness!2185 ((Set Context!15148) Int) Context!15148)

(assert (=> b!7248774 (= lt!2584006 (getWitness!2185 lt!2584008 lambda!443762))))

(declare-fun b!7248776 () Bool)

(declare-fun e!4346355 () Bool)

(declare-fun tp!2037126 () Bool)

(assert (=> b!7248776 (= e!4346355 tp!2037126)))

(declare-fun b!7248777 () Bool)

(declare-fun lt!2584014 () List!70482)

(assert (=> b!7248777 (= e!4346349 (not (isEmpty!40518 lt!2584014)))))

(declare-fun lt!2584009 () Unit!163852)

(assert (=> b!7248777 (= lt!2584009 (lemmaConcatPreservesForall!1441 (exprs!8074 ct1!232) (exprs!8074 ct2!328) lambda!443761))))

(declare-fun lt!2584015 () (Set Context!15148))

(assert (=> b!7248777 (= lt!2584015 (derivationStepZipperUp!2458 (Context!15149 lt!2584014) (h!76808 s1!1971)))))

(declare-fun lt!2584018 () Unit!163852)

(assert (=> b!7248777 (= lt!2584018 (lemmaConcatPreservesForall!1441 (exprs!8074 ct1!232) (exprs!8074 ct2!328) lambda!443761))))

(declare-fun lt!2584013 () (Set Context!15148))

(declare-fun derivationStepZipperDown!2628 (Regex!18634 Context!15148 C!37542) (Set Context!15148))

(declare-fun tail!14301 (List!70482) List!70482)

(assert (=> b!7248777 (= lt!2584013 (derivationStepZipperDown!2628 (h!76806 (exprs!8074 ct1!232)) (Context!15149 (tail!14301 (exprs!8074 ct1!232))) (h!76808 s1!1971)))))

(declare-fun b!7248778 () Bool)

(declare-fun e!4346348 () Bool)

(assert (=> b!7248778 (= e!4346348 e!4346353)))

(declare-fun res!2940115 () Bool)

(assert (=> b!7248778 (=> (not res!2940115) (not e!4346353))))

(assert (=> b!7248778 (= res!2940115 (matchZipper!3544 lt!2584008 (t!384536 s1!1971)))))

(declare-fun lt!2584004 () (Set Context!15148))

(declare-fun derivationStepZipper!3412 ((Set Context!15148) C!37542) (Set Context!15148))

(assert (=> b!7248778 (= lt!2584008 (derivationStepZipper!3412 lt!2584004 (h!76808 s1!1971)))))

(declare-fun b!7248779 () Bool)

(declare-fun e!4346347 () Bool)

(declare-fun tp_is_empty!46733 () Bool)

(declare-fun tp!2037125 () Bool)

(assert (=> b!7248779 (= e!4346347 (and tp_is_empty!46733 tp!2037125))))

(declare-fun b!7248780 () Bool)

(declare-fun e!4346350 () Bool)

(assert (=> b!7248780 (= e!4346350 e!4346348)))

(declare-fun res!2940120 () Bool)

(assert (=> b!7248780 (=> (not res!2940120) (not e!4346348))))

(assert (=> b!7248780 (= res!2940120 (and (not (is-Nil!70358 (exprs!8074 ct1!232))) (is-Cons!70360 s1!1971)))))

(assert (=> b!7248780 (= lt!2584014 (++!16530 (exprs!8074 ct1!232) (exprs!8074 ct2!328)))))

(declare-fun lt!2584005 () Unit!163852)

(assert (=> b!7248780 (= lt!2584005 (lemmaConcatPreservesForall!1441 (exprs!8074 ct1!232) (exprs!8074 ct2!328) lambda!443761))))

(declare-fun b!7248775 () Bool)

(declare-fun res!2940117 () Bool)

(assert (=> b!7248775 (=> (not res!2940117) (not e!4346350))))

(assert (=> b!7248775 (= res!2940117 (matchZipper!3544 (set.insert ct2!328 (as set.empty (Set Context!15148))) s2!1849))))

(declare-fun res!2940116 () Bool)

(assert (=> start!705262 (=> (not res!2940116) (not e!4346350))))

(assert (=> start!705262 (= res!2940116 (matchZipper!3544 lt!2584004 s1!1971))))

(assert (=> start!705262 (= lt!2584004 (set.insert ct1!232 (as set.empty (Set Context!15148))))))

(assert (=> start!705262 e!4346350))

(declare-fun inv!89596 (Context!15148) Bool)

(assert (=> start!705262 (and (inv!89596 ct1!232) e!4346355)))

(declare-fun e!4346354 () Bool)

(assert (=> start!705262 e!4346354))

(assert (=> start!705262 e!4346347))

(declare-fun e!4346352 () Bool)

(assert (=> start!705262 (and (inv!89596 ct2!328) e!4346352)))

(declare-fun b!7248781 () Bool)

(declare-fun tp!2037124 () Bool)

(assert (=> b!7248781 (= e!4346354 (and tp_is_empty!46733 tp!2037124))))

(declare-fun b!7248782 () Bool)

(declare-fun tp!2037123 () Bool)

(assert (=> b!7248782 (= e!4346352 tp!2037123)))

(assert (= (and start!705262 res!2940116) b!7248775))

(assert (= (and b!7248775 res!2940117) b!7248780))

(assert (= (and b!7248780 res!2940120) b!7248778))

(assert (= (and b!7248778 res!2940115) b!7248773))

(assert (= (and b!7248773 (not res!2940119)) b!7248774))

(assert (= (and b!7248774 (not res!2940118)) b!7248777))

(assert (= start!705262 b!7248776))

(assert (= (and start!705262 (is-Cons!70360 s1!1971)) b!7248781))

(assert (= (and start!705262 (is-Cons!70360 s2!1849)) b!7248779))

(assert (= start!705262 b!7248782))

(declare-fun m!7926766 () Bool)

(assert (=> b!7248778 m!7926766))

(declare-fun m!7926768 () Bool)

(assert (=> b!7248778 m!7926768))

(declare-fun m!7926770 () Bool)

(assert (=> b!7248777 m!7926770))

(declare-fun m!7926772 () Bool)

(assert (=> b!7248777 m!7926772))

(declare-fun m!7926774 () Bool)

(assert (=> b!7248777 m!7926774))

(declare-fun m!7926776 () Bool)

(assert (=> b!7248777 m!7926776))

(assert (=> b!7248777 m!7926774))

(declare-fun m!7926778 () Bool)

(assert (=> b!7248777 m!7926778))

(declare-fun m!7926780 () Bool)

(assert (=> b!7248780 m!7926780))

(assert (=> b!7248780 m!7926774))

(declare-fun m!7926782 () Bool)

(assert (=> b!7248773 m!7926782))

(declare-fun m!7926784 () Bool)

(assert (=> b!7248773 m!7926784))

(declare-fun m!7926786 () Bool)

(assert (=> b!7248773 m!7926786))

(declare-fun m!7926788 () Bool)

(assert (=> b!7248773 m!7926788))

(declare-fun m!7926790 () Bool)

(assert (=> b!7248775 m!7926790))

(assert (=> b!7248775 m!7926790))

(declare-fun m!7926792 () Bool)

(assert (=> b!7248775 m!7926792))

(declare-fun m!7926794 () Bool)

(assert (=> start!705262 m!7926794))

(declare-fun m!7926796 () Bool)

(assert (=> start!705262 m!7926796))

(declare-fun m!7926798 () Bool)

(assert (=> start!705262 m!7926798))

(declare-fun m!7926800 () Bool)

(assert (=> start!705262 m!7926800))

(declare-fun m!7926802 () Bool)

(assert (=> b!7248774 m!7926802))

(declare-fun m!7926804 () Bool)

(assert (=> b!7248774 m!7926804))

(declare-fun m!7926806 () Bool)

(assert (=> b!7248774 m!7926806))

(declare-fun m!7926808 () Bool)

(assert (=> b!7248774 m!7926808))

(assert (=> b!7248774 m!7926808))

(declare-fun m!7926810 () Bool)

(assert (=> b!7248774 m!7926810))

(declare-fun m!7926812 () Bool)

(assert (=> b!7248774 m!7926812))

(assert (=> b!7248774 m!7926804))

(declare-fun m!7926814 () Bool)

(assert (=> b!7248774 m!7926814))

(declare-fun m!7926816 () Bool)

(assert (=> b!7248774 m!7926816))

(declare-fun m!7926818 () Bool)

(assert (=> b!7248774 m!7926818))

(assert (=> b!7248774 m!7926814))

(push 1)

(assert (not b!7248774))

(assert (not b!7248775))

(assert (not b!7248781))

(assert (not b!7248779))

(assert (not b!7248776))

(assert (not b!7248780))

(assert (not b!7248777))

(assert tp_is_empty!46733)

(assert (not b!7248782))

(assert (not b!7248773))

(assert (not start!705262))

(assert (not b!7248778))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2252780 () Bool)

(declare-fun c!1346810 () Bool)

(declare-fun isEmpty!40520 (List!70484) Bool)

(assert (=> d!2252780 (= c!1346810 (isEmpty!40520 s1!1971))))

(declare-fun e!4346385 () Bool)

(assert (=> d!2252780 (= (matchZipper!3544 lt!2584004 s1!1971) e!4346385)))

(declare-fun b!7248821 () Bool)

(declare-fun nullableZipper!2905 ((Set Context!15148)) Bool)

(assert (=> b!7248821 (= e!4346385 (nullableZipper!2905 lt!2584004))))

(declare-fun b!7248822 () Bool)

(declare-fun head!14894 (List!70484) C!37542)

(declare-fun tail!14303 (List!70484) List!70484)

(assert (=> b!7248822 (= e!4346385 (matchZipper!3544 (derivationStepZipper!3412 lt!2584004 (head!14894 s1!1971)) (tail!14303 s1!1971)))))

(assert (= (and d!2252780 c!1346810) b!7248821))

(assert (= (and d!2252780 (not c!1346810)) b!7248822))

(declare-fun m!7926874 () Bool)

(assert (=> d!2252780 m!7926874))

(declare-fun m!7926876 () Bool)

(assert (=> b!7248821 m!7926876))

(declare-fun m!7926878 () Bool)

(assert (=> b!7248822 m!7926878))

(assert (=> b!7248822 m!7926878))

(declare-fun m!7926880 () Bool)

(assert (=> b!7248822 m!7926880))

(declare-fun m!7926882 () Bool)

(assert (=> b!7248822 m!7926882))

(assert (=> b!7248822 m!7926880))

(assert (=> b!7248822 m!7926882))

(declare-fun m!7926884 () Bool)

(assert (=> b!7248822 m!7926884))

(assert (=> start!705262 d!2252780))

(declare-fun bs!1905740 () Bool)

(declare-fun d!2252782 () Bool)

(assert (= bs!1905740 (and d!2252782 b!7248780)))

(declare-fun lambda!443783 () Int)

(assert (=> bs!1905740 (= lambda!443783 lambda!443761)))

(declare-fun forall!17476 (List!70482 Int) Bool)

(assert (=> d!2252782 (= (inv!89596 ct1!232) (forall!17476 (exprs!8074 ct1!232) lambda!443783))))

(declare-fun bs!1905741 () Bool)

(assert (= bs!1905741 d!2252782))

(declare-fun m!7926886 () Bool)

(assert (=> bs!1905741 m!7926886))

(assert (=> start!705262 d!2252782))

(declare-fun bs!1905742 () Bool)

(declare-fun d!2252784 () Bool)

(assert (= bs!1905742 (and d!2252784 b!7248780)))

(declare-fun lambda!443784 () Int)

(assert (=> bs!1905742 (= lambda!443784 lambda!443761)))

(declare-fun bs!1905743 () Bool)

(assert (= bs!1905743 (and d!2252784 d!2252782)))

(assert (=> bs!1905743 (= lambda!443784 lambda!443783)))

(assert (=> d!2252784 (= (inv!89596 ct2!328) (forall!17476 (exprs!8074 ct2!328) lambda!443784))))

(declare-fun bs!1905744 () Bool)

(assert (= bs!1905744 d!2252784))

(declare-fun m!7926888 () Bool)

(assert (=> bs!1905744 m!7926888))

(assert (=> start!705262 d!2252784))

(declare-fun d!2252786 () Bool)

(declare-fun c!1346811 () Bool)

(assert (=> d!2252786 (= c!1346811 (isEmpty!40520 (t!384536 s1!1971)))))

(declare-fun e!4346386 () Bool)

(assert (=> d!2252786 (= (matchZipper!3544 lt!2584008 (t!384536 s1!1971)) e!4346386)))

(declare-fun b!7248823 () Bool)

(assert (=> b!7248823 (= e!4346386 (nullableZipper!2905 lt!2584008))))

(declare-fun b!7248824 () Bool)

(assert (=> b!7248824 (= e!4346386 (matchZipper!3544 (derivationStepZipper!3412 lt!2584008 (head!14894 (t!384536 s1!1971))) (tail!14303 (t!384536 s1!1971))))))

(assert (= (and d!2252786 c!1346811) b!7248823))

(assert (= (and d!2252786 (not c!1346811)) b!7248824))

(declare-fun m!7926890 () Bool)

(assert (=> d!2252786 m!7926890))

(declare-fun m!7926892 () Bool)

(assert (=> b!7248823 m!7926892))

(declare-fun m!7926894 () Bool)

(assert (=> b!7248824 m!7926894))

(assert (=> b!7248824 m!7926894))

(declare-fun m!7926896 () Bool)

(assert (=> b!7248824 m!7926896))

(declare-fun m!7926898 () Bool)

(assert (=> b!7248824 m!7926898))

(assert (=> b!7248824 m!7926896))

(assert (=> b!7248824 m!7926898))

(declare-fun m!7926900 () Bool)

(assert (=> b!7248824 m!7926900))

(assert (=> b!7248778 d!2252786))

(declare-fun d!2252788 () Bool)

(assert (=> d!2252788 true))

(declare-fun lambda!443787 () Int)

(declare-fun flatMap!2799 ((Set Context!15148) Int) (Set Context!15148))

(assert (=> d!2252788 (= (derivationStepZipper!3412 lt!2584004 (h!76808 s1!1971)) (flatMap!2799 lt!2584004 lambda!443787))))

(declare-fun bs!1905745 () Bool)

(assert (= bs!1905745 d!2252788))

(declare-fun m!7926902 () Bool)

(assert (=> bs!1905745 m!7926902))

(assert (=> b!7248778 d!2252788))

(declare-fun d!2252790 () Bool)

(declare-fun lt!2584066 () Bool)

(assert (=> d!2252790 (= lt!2584066 (exists!4347 (toList!11463 lt!2584008) lambda!443762))))

(declare-fun choose!55967 ((Set Context!15148) Int) Bool)

(assert (=> d!2252790 (= lt!2584066 (choose!55967 lt!2584008 lambda!443762))))

(assert (=> d!2252790 (= (exists!4346 lt!2584008 lambda!443762) lt!2584066)))

(declare-fun bs!1905746 () Bool)

(assert (= bs!1905746 d!2252790))

(assert (=> bs!1905746 m!7926788))

(assert (=> bs!1905746 m!7926788))

(declare-fun m!7926904 () Bool)

(assert (=> bs!1905746 m!7926904))

(declare-fun m!7926906 () Bool)

(assert (=> bs!1905746 m!7926906))

(assert (=> b!7248773 d!2252790))

(declare-fun bs!1905747 () Bool)

(declare-fun d!2252792 () Bool)

(assert (= bs!1905747 (and d!2252792 b!7248773)))

(declare-fun lambda!443790 () Int)

(assert (=> bs!1905747 (not (= lambda!443790 lambda!443762))))

(assert (=> d!2252792 true))

(declare-fun order!28963 () Int)

(declare-fun dynLambda!28718 (Int Int) Int)

(assert (=> d!2252792 (< (dynLambda!28718 order!28963 lambda!443762) (dynLambda!28718 order!28963 lambda!443790))))

(declare-fun forall!17477 (List!70483 Int) Bool)

(assert (=> d!2252792 (= (exists!4347 lt!2584010 lambda!443762) (not (forall!17477 lt!2584010 lambda!443790)))))

(declare-fun bs!1905748 () Bool)

(assert (= bs!1905748 d!2252792))

(declare-fun m!7926908 () Bool)

(assert (=> bs!1905748 m!7926908))

(assert (=> b!7248773 d!2252792))

(declare-fun bs!1905749 () Bool)

(declare-fun d!2252794 () Bool)

(assert (= bs!1905749 (and d!2252794 b!7248773)))

(declare-fun lambda!443793 () Int)

(assert (=> bs!1905749 (= lambda!443793 lambda!443762)))

(declare-fun bs!1905750 () Bool)

(assert (= bs!1905750 (and d!2252794 d!2252792)))

(assert (=> bs!1905750 (not (= lambda!443793 lambda!443790))))

(assert (=> d!2252794 true))

(assert (=> d!2252794 (exists!4347 lt!2584010 lambda!443793)))

(declare-fun lt!2584069 () Unit!163852)

(declare-fun choose!55968 (List!70483 List!70484) Unit!163852)

(assert (=> d!2252794 (= lt!2584069 (choose!55968 lt!2584010 (t!384536 s1!1971)))))

(declare-fun content!14586 (List!70483) (Set Context!15148))

(assert (=> d!2252794 (matchZipper!3544 (content!14586 lt!2584010) (t!384536 s1!1971))))

(assert (=> d!2252794 (= (lemmaZipperMatchesExistsMatchingContext!737 lt!2584010 (t!384536 s1!1971)) lt!2584069)))

(declare-fun bs!1905751 () Bool)

(assert (= bs!1905751 d!2252794))

(declare-fun m!7926910 () Bool)

(assert (=> bs!1905751 m!7926910))

(declare-fun m!7926912 () Bool)

(assert (=> bs!1905751 m!7926912))

(declare-fun m!7926914 () Bool)

(assert (=> bs!1905751 m!7926914))

(assert (=> bs!1905751 m!7926914))

(declare-fun m!7926916 () Bool)

(assert (=> bs!1905751 m!7926916))

(assert (=> b!7248773 d!2252794))

(declare-fun d!2252796 () Bool)

(declare-fun e!4346389 () Bool)

(assert (=> d!2252796 e!4346389))

(declare-fun res!2940141 () Bool)

(assert (=> d!2252796 (=> (not res!2940141) (not e!4346389))))

(declare-fun lt!2584072 () List!70483)

(declare-fun noDuplicate!2982 (List!70483) Bool)

(assert (=> d!2252796 (= res!2940141 (noDuplicate!2982 lt!2584072))))

(declare-fun choose!55969 ((Set Context!15148)) List!70483)

(assert (=> d!2252796 (= lt!2584072 (choose!55969 lt!2584008))))

(assert (=> d!2252796 (= (toList!11463 lt!2584008) lt!2584072)))

(declare-fun b!7248831 () Bool)

(assert (=> b!7248831 (= e!4346389 (= (content!14586 lt!2584072) lt!2584008))))

(assert (= (and d!2252796 res!2940141) b!7248831))

(declare-fun m!7926918 () Bool)

(assert (=> d!2252796 m!7926918))

(declare-fun m!7926920 () Bool)

(assert (=> d!2252796 m!7926920))

(declare-fun m!7926922 () Bool)

(assert (=> b!7248831 m!7926922))

(assert (=> b!7248773 d!2252796))

(declare-fun d!2252800 () Bool)

(assert (=> d!2252800 (forall!17476 (++!16530 (exprs!8074 lt!2584006) (exprs!8074 ct2!328)) lambda!443761)))

(declare-fun lt!2584075 () Unit!163852)

(declare-fun choose!55970 (List!70482 List!70482 Int) Unit!163852)

(assert (=> d!2252800 (= lt!2584075 (choose!55970 (exprs!8074 lt!2584006) (exprs!8074 ct2!328) lambda!443761))))

(assert (=> d!2252800 (forall!17476 (exprs!8074 lt!2584006) lambda!443761)))

(assert (=> d!2252800 (= (lemmaConcatPreservesForall!1441 (exprs!8074 lt!2584006) (exprs!8074 ct2!328) lambda!443761) lt!2584075)))

(declare-fun bs!1905752 () Bool)

(assert (= bs!1905752 d!2252800))

(assert (=> bs!1905752 m!7926812))

(assert (=> bs!1905752 m!7926812))

(declare-fun m!7926924 () Bool)

(assert (=> bs!1905752 m!7926924))

(declare-fun m!7926926 () Bool)

(assert (=> bs!1905752 m!7926926))

(declare-fun m!7926928 () Bool)

(assert (=> bs!1905752 m!7926928))

(assert (=> b!7248774 d!2252800))

(declare-fun d!2252802 () Bool)

(assert (=> d!2252802 (= (isEmpty!40518 (exprs!8074 ct1!232)) (is-Nil!70358 (exprs!8074 ct1!232)))))

(assert (=> b!7248774 d!2252802))

(declare-fun b!7248846 () Bool)

(declare-fun res!2940147 () Bool)

(declare-fun e!4346397 () Bool)

(assert (=> b!7248846 (=> (not res!2940147) (not e!4346397))))

(declare-fun lt!2584078 () List!70484)

(declare-fun size!41700 (List!70484) Int)

(assert (=> b!7248846 (= res!2940147 (= (size!41700 lt!2584078) (+ (size!41700 (t!384536 s1!1971)) (size!41700 s2!1849))))))

(declare-fun b!7248847 () Bool)

(assert (=> b!7248847 (= e!4346397 (or (not (= s2!1849 Nil!70360)) (= lt!2584078 (t!384536 s1!1971))))))

(declare-fun b!7248845 () Bool)

(declare-fun e!4346396 () List!70484)

(assert (=> b!7248845 (= e!4346396 (Cons!70360 (h!76808 (t!384536 s1!1971)) (++!16531 (t!384536 (t!384536 s1!1971)) s2!1849)))))

(declare-fun d!2252804 () Bool)

(assert (=> d!2252804 e!4346397))

(declare-fun res!2940146 () Bool)

(assert (=> d!2252804 (=> (not res!2940146) (not e!4346397))))

(declare-fun content!14587 (List!70484) (Set C!37542))

(assert (=> d!2252804 (= res!2940146 (= (content!14587 lt!2584078) (set.union (content!14587 (t!384536 s1!1971)) (content!14587 s2!1849))))))

(assert (=> d!2252804 (= lt!2584078 e!4346396)))

(declare-fun c!1346820 () Bool)

(assert (=> d!2252804 (= c!1346820 (is-Nil!70360 (t!384536 s1!1971)))))

(assert (=> d!2252804 (= (++!16531 (t!384536 s1!1971) s2!1849) lt!2584078)))

(declare-fun b!7248844 () Bool)

(assert (=> b!7248844 (= e!4346396 s2!1849)))

(assert (= (and d!2252804 c!1346820) b!7248844))

(assert (= (and d!2252804 (not c!1346820)) b!7248845))

(assert (= (and d!2252804 res!2940146) b!7248846))

(assert (= (and b!7248846 res!2940147) b!7248847))

(declare-fun m!7926930 () Bool)

(assert (=> b!7248846 m!7926930))

(declare-fun m!7926932 () Bool)

(assert (=> b!7248846 m!7926932))

(declare-fun m!7926934 () Bool)

(assert (=> b!7248846 m!7926934))

(declare-fun m!7926936 () Bool)

(assert (=> b!7248845 m!7926936))

(declare-fun m!7926938 () Bool)

(assert (=> d!2252804 m!7926938))

(declare-fun m!7926940 () Bool)

(assert (=> d!2252804 m!7926940))

(declare-fun m!7926942 () Bool)

(assert (=> d!2252804 m!7926942))

(assert (=> b!7248774 d!2252804))

(declare-fun bs!1905754 () Bool)

(declare-fun d!2252806 () Bool)

(assert (= bs!1905754 (and d!2252806 b!7248780)))

(declare-fun lambda!443799 () Int)

(assert (=> bs!1905754 (= lambda!443799 lambda!443761)))

(declare-fun bs!1905755 () Bool)

(assert (= bs!1905755 (and d!2252806 d!2252782)))

(assert (=> bs!1905755 (= lambda!443799 lambda!443783)))

(declare-fun bs!1905756 () Bool)

(assert (= bs!1905756 (and d!2252806 d!2252784)))

(assert (=> bs!1905756 (= lambda!443799 lambda!443784)))

(assert (=> d!2252806 (matchZipper!3544 (set.insert (Context!15149 (++!16530 (exprs!8074 lt!2584006) (exprs!8074 ct2!328))) (as set.empty (Set Context!15148))) (++!16531 (t!384536 s1!1971) s2!1849))))

(declare-fun lt!2584084 () Unit!163852)

(assert (=> d!2252806 (= lt!2584084 (lemmaConcatPreservesForall!1441 (exprs!8074 lt!2584006) (exprs!8074 ct2!328) lambda!443799))))

(declare-fun lt!2584083 () Unit!163852)

(declare-fun choose!55971 (Context!15148 Context!15148 List!70484 List!70484) Unit!163852)

(assert (=> d!2252806 (= lt!2584083 (choose!55971 lt!2584006 ct2!328 (t!384536 s1!1971) s2!1849))))

(assert (=> d!2252806 (matchZipper!3544 (set.insert lt!2584006 (as set.empty (Set Context!15148))) (t!384536 s1!1971))))

(assert (=> d!2252806 (= (lemmaConcatenateContextMatchesConcatOfStrings!379 lt!2584006 ct2!328 (t!384536 s1!1971) s2!1849) lt!2584083)))

(declare-fun bs!1905757 () Bool)

(assert (= bs!1905757 d!2252806))

(declare-fun m!7926958 () Bool)

(assert (=> bs!1905757 m!7926958))

(assert (=> bs!1905757 m!7926804))

(assert (=> bs!1905757 m!7926814))

(assert (=> bs!1905757 m!7926816))

(declare-fun m!7926960 () Bool)

(assert (=> bs!1905757 m!7926960))

(assert (=> bs!1905757 m!7926804))

(declare-fun m!7926962 () Bool)

(assert (=> bs!1905757 m!7926962))

(declare-fun m!7926964 () Bool)

(assert (=> bs!1905757 m!7926964))

(assert (=> bs!1905757 m!7926962))

(assert (=> bs!1905757 m!7926814))

(assert (=> bs!1905757 m!7926812))

(assert (=> b!7248774 d!2252806))

(declare-fun d!2252812 () Bool)

(declare-fun c!1346830 () Bool)

(declare-fun e!4346408 () Bool)

(assert (=> d!2252812 (= c!1346830 e!4346408)))

(declare-fun res!2940150 () Bool)

(assert (=> d!2252812 (=> (not res!2940150) (not e!4346408))))

(assert (=> d!2252812 (= res!2940150 (is-Cons!70358 (exprs!8074 ct1!232)))))

(declare-fun e!4346407 () (Set Context!15148))

(assert (=> d!2252812 (= (derivationStepZipperUp!2458 ct1!232 (h!76808 s1!1971)) e!4346407)))

(declare-fun b!7248866 () Bool)

(declare-fun e!4346409 () (Set Context!15148))

(declare-fun call!660097 () (Set Context!15148))

(assert (=> b!7248866 (= e!4346409 call!660097)))

(declare-fun b!7248867 () Bool)

(assert (=> b!7248867 (= e!4346409 (as set.empty (Set Context!15148)))))

(declare-fun b!7248868 () Bool)

(declare-fun nullable!7896 (Regex!18634) Bool)

(assert (=> b!7248868 (= e!4346408 (nullable!7896 (h!76806 (exprs!8074 ct1!232))))))

(declare-fun b!7248869 () Bool)

(assert (=> b!7248869 (= e!4346407 (set.union call!660097 (derivationStepZipperUp!2458 (Context!15149 (t!384534 (exprs!8074 ct1!232))) (h!76808 s1!1971))))))

(declare-fun bm!660092 () Bool)

(assert (=> bm!660092 (= call!660097 (derivationStepZipperDown!2628 (h!76806 (exprs!8074 ct1!232)) (Context!15149 (t!384534 (exprs!8074 ct1!232))) (h!76808 s1!1971)))))

(declare-fun b!7248870 () Bool)

(assert (=> b!7248870 (= e!4346407 e!4346409)))

(declare-fun c!1346831 () Bool)

(assert (=> b!7248870 (= c!1346831 (is-Cons!70358 (exprs!8074 ct1!232)))))

(assert (= (and d!2252812 res!2940150) b!7248868))

(assert (= (and d!2252812 c!1346830) b!7248869))

(assert (= (and d!2252812 (not c!1346830)) b!7248870))

(assert (= (and b!7248870 c!1346831) b!7248866))

(assert (= (and b!7248870 (not c!1346831)) b!7248867))

(assert (= (or b!7248869 b!7248866) bm!660092))

(declare-fun m!7926966 () Bool)

(assert (=> b!7248868 m!7926966))

(declare-fun m!7926968 () Bool)

(assert (=> b!7248869 m!7926968))

(declare-fun m!7926970 () Bool)

(assert (=> bm!660092 m!7926970))

(assert (=> b!7248774 d!2252812))

(declare-fun d!2252814 () Bool)

(declare-fun e!4346414 () Bool)

(assert (=> d!2252814 e!4346414))

(declare-fun res!2940157 () Bool)

(assert (=> d!2252814 (=> (not res!2940157) (not e!4346414))))

(declare-fun lt!2584089 () Context!15148)

(declare-fun dynLambda!28719 (Int Context!15148) Bool)

(assert (=> d!2252814 (= res!2940157 (dynLambda!28719 lambda!443762 lt!2584089))))

(declare-fun getWitness!2187 (List!70483 Int) Context!15148)

(assert (=> d!2252814 (= lt!2584089 (getWitness!2187 (toList!11463 lt!2584008) lambda!443762))))

(assert (=> d!2252814 (exists!4346 lt!2584008 lambda!443762)))

(assert (=> d!2252814 (= (getWitness!2185 lt!2584008 lambda!443762) lt!2584089)))

(declare-fun b!7248877 () Bool)

(assert (=> b!7248877 (= e!4346414 (set.member lt!2584089 lt!2584008))))

(assert (= (and d!2252814 res!2940157) b!7248877))

(declare-fun b_lambda!278235 () Bool)

(assert (=> (not b_lambda!278235) (not d!2252814)))

(declare-fun m!7926972 () Bool)

(assert (=> d!2252814 m!7926972))

(assert (=> d!2252814 m!7926788))

(assert (=> d!2252814 m!7926788))

(declare-fun m!7926974 () Bool)

(assert (=> d!2252814 m!7926974))

(assert (=> d!2252814 m!7926782))

(declare-fun m!7926976 () Bool)

(assert (=> b!7248877 m!7926976))

(assert (=> b!7248774 d!2252814))

(declare-fun b!7248891 () Bool)

(declare-fun e!4346422 () List!70482)

(assert (=> b!7248891 (= e!4346422 (Cons!70358 (h!76806 (exprs!8074 lt!2584006)) (++!16530 (t!384534 (exprs!8074 lt!2584006)) (exprs!8074 ct2!328))))))

(declare-fun e!4346421 () Bool)

(declare-fun b!7248893 () Bool)

(declare-fun lt!2584093 () List!70482)

(assert (=> b!7248893 (= e!4346421 (or (not (= (exprs!8074 ct2!328) Nil!70358)) (= lt!2584093 (exprs!8074 lt!2584006))))))

(declare-fun b!7248892 () Bool)

(declare-fun res!2940164 () Bool)

(assert (=> b!7248892 (=> (not res!2940164) (not e!4346421))))

(declare-fun size!41701 (List!70482) Int)

(assert (=> b!7248892 (= res!2940164 (= (size!41701 lt!2584093) (+ (size!41701 (exprs!8074 lt!2584006)) (size!41701 (exprs!8074 ct2!328)))))))

(declare-fun b!7248890 () Bool)

(assert (=> b!7248890 (= e!4346422 (exprs!8074 ct2!328))))

(declare-fun d!2252816 () Bool)

(assert (=> d!2252816 e!4346421))

(declare-fun res!2940165 () Bool)

(assert (=> d!2252816 (=> (not res!2940165) (not e!4346421))))

(declare-fun content!14588 (List!70482) (Set Regex!18634))

(assert (=> d!2252816 (= res!2940165 (= (content!14588 lt!2584093) (set.union (content!14588 (exprs!8074 lt!2584006)) (content!14588 (exprs!8074 ct2!328)))))))

(assert (=> d!2252816 (= lt!2584093 e!4346422)))

(declare-fun c!1346835 () Bool)

(assert (=> d!2252816 (= c!1346835 (is-Nil!70358 (exprs!8074 lt!2584006)))))

(assert (=> d!2252816 (= (++!16530 (exprs!8074 lt!2584006) (exprs!8074 ct2!328)) lt!2584093)))

(assert (= (and d!2252816 c!1346835) b!7248890))

(assert (= (and d!2252816 (not c!1346835)) b!7248891))

(assert (= (and d!2252816 res!2940165) b!7248892))

(assert (= (and b!7248892 res!2940164) b!7248893))

(declare-fun m!7926992 () Bool)

(assert (=> b!7248891 m!7926992))

(declare-fun m!7926994 () Bool)

(assert (=> b!7248892 m!7926994))

(declare-fun m!7926996 () Bool)

(assert (=> b!7248892 m!7926996))

(declare-fun m!7926998 () Bool)

(assert (=> b!7248892 m!7926998))

(declare-fun m!7927000 () Bool)

(assert (=> d!2252816 m!7927000))

(declare-fun m!7927002 () Bool)

(assert (=> d!2252816 m!7927002))

(declare-fun m!7927004 () Bool)

(assert (=> d!2252816 m!7927004))

(assert (=> b!7248774 d!2252816))

(declare-fun d!2252820 () Bool)

(declare-fun c!1346836 () Bool)

(assert (=> d!2252820 (= c!1346836 (isEmpty!40520 (++!16531 (t!384536 s1!1971) s2!1849)))))

(declare-fun e!4346423 () Bool)

(assert (=> d!2252820 (= (matchZipper!3544 (set.insert (Context!15149 (++!16530 (exprs!8074 lt!2584006) (exprs!8074 ct2!328))) (as set.empty (Set Context!15148))) (++!16531 (t!384536 s1!1971) s2!1849)) e!4346423)))

(declare-fun b!7248894 () Bool)

(assert (=> b!7248894 (= e!4346423 (nullableZipper!2905 (set.insert (Context!15149 (++!16530 (exprs!8074 lt!2584006) (exprs!8074 ct2!328))) (as set.empty (Set Context!15148)))))))

(declare-fun b!7248895 () Bool)

(assert (=> b!7248895 (= e!4346423 (matchZipper!3544 (derivationStepZipper!3412 (set.insert (Context!15149 (++!16530 (exprs!8074 lt!2584006) (exprs!8074 ct2!328))) (as set.empty (Set Context!15148))) (head!14894 (++!16531 (t!384536 s1!1971) s2!1849))) (tail!14303 (++!16531 (t!384536 s1!1971) s2!1849))))))

(assert (= (and d!2252820 c!1346836) b!7248894))

(assert (= (and d!2252820 (not c!1346836)) b!7248895))

(assert (=> d!2252820 m!7926814))

(declare-fun m!7927006 () Bool)

(assert (=> d!2252820 m!7927006))

(assert (=> b!7248894 m!7926804))

(declare-fun m!7927008 () Bool)

(assert (=> b!7248894 m!7927008))

(assert (=> b!7248895 m!7926814))

(declare-fun m!7927010 () Bool)

(assert (=> b!7248895 m!7927010))

(assert (=> b!7248895 m!7926804))

(assert (=> b!7248895 m!7927010))

(declare-fun m!7927012 () Bool)

(assert (=> b!7248895 m!7927012))

(assert (=> b!7248895 m!7926814))

(declare-fun m!7927014 () Bool)

(assert (=> b!7248895 m!7927014))

(assert (=> b!7248895 m!7927012))

(assert (=> b!7248895 m!7927014))

(declare-fun m!7927016 () Bool)

(assert (=> b!7248895 m!7927016))

(assert (=> b!7248774 d!2252820))

(declare-fun b!7248897 () Bool)

(declare-fun e!4346425 () List!70482)

(assert (=> b!7248897 (= e!4346425 (Cons!70358 (h!76806 (exprs!8074 ct1!232)) (++!16530 (t!384534 (exprs!8074 ct1!232)) (exprs!8074 ct2!328))))))

(declare-fun b!7248899 () Bool)

(declare-fun lt!2584094 () List!70482)

(declare-fun e!4346424 () Bool)

(assert (=> b!7248899 (= e!4346424 (or (not (= (exprs!8074 ct2!328) Nil!70358)) (= lt!2584094 (exprs!8074 ct1!232))))))

(declare-fun b!7248898 () Bool)

(declare-fun res!2940166 () Bool)

(assert (=> b!7248898 (=> (not res!2940166) (not e!4346424))))

(assert (=> b!7248898 (= res!2940166 (= (size!41701 lt!2584094) (+ (size!41701 (exprs!8074 ct1!232)) (size!41701 (exprs!8074 ct2!328)))))))

(declare-fun b!7248896 () Bool)

(assert (=> b!7248896 (= e!4346425 (exprs!8074 ct2!328))))

(declare-fun d!2252822 () Bool)

(assert (=> d!2252822 e!4346424))

(declare-fun res!2940167 () Bool)

(assert (=> d!2252822 (=> (not res!2940167) (not e!4346424))))

(assert (=> d!2252822 (= res!2940167 (= (content!14588 lt!2584094) (set.union (content!14588 (exprs!8074 ct1!232)) (content!14588 (exprs!8074 ct2!328)))))))

(assert (=> d!2252822 (= lt!2584094 e!4346425)))

(declare-fun c!1346837 () Bool)

(assert (=> d!2252822 (= c!1346837 (is-Nil!70358 (exprs!8074 ct1!232)))))

(assert (=> d!2252822 (= (++!16530 (exprs!8074 ct1!232) (exprs!8074 ct2!328)) lt!2584094)))

(assert (= (and d!2252822 c!1346837) b!7248896))

(assert (= (and d!2252822 (not c!1346837)) b!7248897))

(assert (= (and d!2252822 res!2940167) b!7248898))

(assert (= (and b!7248898 res!2940166) b!7248899))

(declare-fun m!7927018 () Bool)

(assert (=> b!7248897 m!7927018))

(declare-fun m!7927020 () Bool)

(assert (=> b!7248898 m!7927020))

(declare-fun m!7927022 () Bool)

(assert (=> b!7248898 m!7927022))

(assert (=> b!7248898 m!7926998))

(declare-fun m!7927024 () Bool)

(assert (=> d!2252822 m!7927024))

(declare-fun m!7927026 () Bool)

(assert (=> d!2252822 m!7927026))

(assert (=> d!2252822 m!7927004))

(assert (=> b!7248780 d!2252822))

(declare-fun d!2252824 () Bool)

(assert (=> d!2252824 (forall!17476 (++!16530 (exprs!8074 ct1!232) (exprs!8074 ct2!328)) lambda!443761)))

(declare-fun lt!2584097 () Unit!163852)

(assert (=> d!2252824 (= lt!2584097 (choose!55970 (exprs!8074 ct1!232) (exprs!8074 ct2!328) lambda!443761))))

(assert (=> d!2252824 (forall!17476 (exprs!8074 ct1!232) lambda!443761)))

(assert (=> d!2252824 (= (lemmaConcatPreservesForall!1441 (exprs!8074 ct1!232) (exprs!8074 ct2!328) lambda!443761) lt!2584097)))

(declare-fun bs!1905758 () Bool)

(assert (= bs!1905758 d!2252824))

(assert (=> bs!1905758 m!7926780))

(assert (=> bs!1905758 m!7926780))

(declare-fun m!7927028 () Bool)

(assert (=> bs!1905758 m!7927028))

(declare-fun m!7927030 () Bool)

(assert (=> bs!1905758 m!7927030))

(declare-fun m!7927032 () Bool)

(assert (=> bs!1905758 m!7927032))

(assert (=> b!7248780 d!2252824))

(declare-fun d!2252826 () Bool)

(declare-fun c!1346838 () Bool)

(assert (=> d!2252826 (= c!1346838 (isEmpty!40520 s2!1849))))

(declare-fun e!4346426 () Bool)

(assert (=> d!2252826 (= (matchZipper!3544 (set.insert ct2!328 (as set.empty (Set Context!15148))) s2!1849) e!4346426)))

(declare-fun b!7248900 () Bool)

(assert (=> b!7248900 (= e!4346426 (nullableZipper!2905 (set.insert ct2!328 (as set.empty (Set Context!15148)))))))

(declare-fun b!7248901 () Bool)

(assert (=> b!7248901 (= e!4346426 (matchZipper!3544 (derivationStepZipper!3412 (set.insert ct2!328 (as set.empty (Set Context!15148))) (head!14894 s2!1849)) (tail!14303 s2!1849)))))

(assert (= (and d!2252826 c!1346838) b!7248900))

(assert (= (and d!2252826 (not c!1346838)) b!7248901))

(declare-fun m!7927034 () Bool)

(assert (=> d!2252826 m!7927034))

(assert (=> b!7248900 m!7926790))

(declare-fun m!7927036 () Bool)

(assert (=> b!7248900 m!7927036))

(declare-fun m!7927038 () Bool)

(assert (=> b!7248901 m!7927038))

(assert (=> b!7248901 m!7926790))

(assert (=> b!7248901 m!7927038))

(declare-fun m!7927040 () Bool)

(assert (=> b!7248901 m!7927040))

(declare-fun m!7927042 () Bool)

(assert (=> b!7248901 m!7927042))

(assert (=> b!7248901 m!7927040))

(assert (=> b!7248901 m!7927042))

(declare-fun m!7927044 () Bool)

(assert (=> b!7248901 m!7927044))

(assert (=> b!7248775 d!2252826))

(declare-fun d!2252828 () Bool)

(assert (=> d!2252828 (= (isEmpty!40518 lt!2584014) (is-Nil!70358 lt!2584014))))

(assert (=> b!7248777 d!2252828))

(declare-fun d!2252830 () Bool)

(assert (=> d!2252830 (= (tail!14301 (exprs!8074 ct1!232)) (t!384534 (exprs!8074 ct1!232)))))

(assert (=> b!7248777 d!2252830))

(declare-fun d!2252832 () Bool)

(declare-fun c!1346839 () Bool)

(declare-fun e!4346428 () Bool)

(assert (=> d!2252832 (= c!1346839 e!4346428)))

(declare-fun res!2940168 () Bool)

(assert (=> d!2252832 (=> (not res!2940168) (not e!4346428))))

(assert (=> d!2252832 (= res!2940168 (is-Cons!70358 (exprs!8074 (Context!15149 lt!2584014))))))

(declare-fun e!4346427 () (Set Context!15148))

(assert (=> d!2252832 (= (derivationStepZipperUp!2458 (Context!15149 lt!2584014) (h!76808 s1!1971)) e!4346427)))

(declare-fun b!7248902 () Bool)

(declare-fun e!4346429 () (Set Context!15148))

(declare-fun call!660098 () (Set Context!15148))

(assert (=> b!7248902 (= e!4346429 call!660098)))

(declare-fun b!7248903 () Bool)

(assert (=> b!7248903 (= e!4346429 (as set.empty (Set Context!15148)))))

(declare-fun b!7248904 () Bool)

(assert (=> b!7248904 (= e!4346428 (nullable!7896 (h!76806 (exprs!8074 (Context!15149 lt!2584014)))))))

(declare-fun b!7248905 () Bool)

(assert (=> b!7248905 (= e!4346427 (set.union call!660098 (derivationStepZipperUp!2458 (Context!15149 (t!384534 (exprs!8074 (Context!15149 lt!2584014)))) (h!76808 s1!1971))))))

(declare-fun bm!660093 () Bool)

(assert (=> bm!660093 (= call!660098 (derivationStepZipperDown!2628 (h!76806 (exprs!8074 (Context!15149 lt!2584014))) (Context!15149 (t!384534 (exprs!8074 (Context!15149 lt!2584014)))) (h!76808 s1!1971)))))

(declare-fun b!7248906 () Bool)

(assert (=> b!7248906 (= e!4346427 e!4346429)))

(declare-fun c!1346840 () Bool)

(assert (=> b!7248906 (= c!1346840 (is-Cons!70358 (exprs!8074 (Context!15149 lt!2584014))))))

(assert (= (and d!2252832 res!2940168) b!7248904))

(assert (= (and d!2252832 c!1346839) b!7248905))

(assert (= (and d!2252832 (not c!1346839)) b!7248906))

(assert (= (and b!7248906 c!1346840) b!7248902))

(assert (= (and b!7248906 (not c!1346840)) b!7248903))

(assert (= (or b!7248905 b!7248902) bm!660093))

(declare-fun m!7927052 () Bool)

(assert (=> b!7248904 m!7927052))

(declare-fun m!7927054 () Bool)

(assert (=> b!7248905 m!7927054))

(declare-fun m!7927056 () Bool)

(assert (=> bm!660093 m!7927056))

(assert (=> b!7248777 d!2252832))

(assert (=> b!7248777 d!2252824))

(declare-fun b!7248931 () Bool)

(declare-fun e!4346444 () (Set Context!15148))

(assert (=> b!7248931 (= e!4346444 (set.insert (Context!15149 (tail!14301 (exprs!8074 ct1!232))) (as set.empty (Set Context!15148))))))

(declare-fun b!7248932 () Bool)

(declare-fun e!4346447 () (Set Context!15148))

(declare-fun call!660114 () (Set Context!15148))

(declare-fun call!660112 () (Set Context!15148))

(assert (=> b!7248932 (= e!4346447 (set.union call!660114 call!660112))))

(declare-fun d!2252836 () Bool)

(declare-fun c!1346853 () Bool)

(assert (=> d!2252836 (= c!1346853 (and (is-ElementMatch!18634 (h!76806 (exprs!8074 ct1!232))) (= (c!1346800 (h!76806 (exprs!8074 ct1!232))) (h!76808 s1!1971))))))

(assert (=> d!2252836 (= (derivationStepZipperDown!2628 (h!76806 (exprs!8074 ct1!232)) (Context!15149 (tail!14301 (exprs!8074 ct1!232))) (h!76808 s1!1971)) e!4346444)))

(declare-fun b!7248933 () Bool)

(declare-fun e!4346442 () (Set Context!15148))

(assert (=> b!7248933 (= e!4346447 e!4346442)))

(declare-fun c!1346855 () Bool)

(assert (=> b!7248933 (= c!1346855 (is-Concat!27479 (h!76806 (exprs!8074 ct1!232))))))

(declare-fun b!7248934 () Bool)

(declare-fun call!660111 () (Set Context!15148))

(assert (=> b!7248934 (= e!4346442 call!660111)))

(declare-fun bm!660106 () Bool)

(assert (=> bm!660106 (= call!660111 call!660112)))

(declare-fun b!7248935 () Bool)

(declare-fun e!4346443 () Bool)

(assert (=> b!7248935 (= e!4346443 (nullable!7896 (regOne!37780 (h!76806 (exprs!8074 ct1!232)))))))

(declare-fun bm!660107 () Bool)

(declare-fun call!660113 () List!70482)

(declare-fun call!660115 () List!70482)

(assert (=> bm!660107 (= call!660113 call!660115)))

(declare-fun b!7248936 () Bool)

(declare-fun e!4346446 () (Set Context!15148))

(assert (=> b!7248936 (= e!4346446 call!660111)))

(declare-fun b!7248937 () Bool)

(assert (=> b!7248937 (= e!4346446 (as set.empty (Set Context!15148)))))

(declare-fun bm!660108 () Bool)

(declare-fun c!1346851 () Bool)

(assert (=> bm!660108 (= call!660114 (derivationStepZipperDown!2628 (ite c!1346851 (regTwo!37781 (h!76806 (exprs!8074 ct1!232))) (regOne!37780 (h!76806 (exprs!8074 ct1!232)))) (ite c!1346851 (Context!15149 (tail!14301 (exprs!8074 ct1!232))) (Context!15149 call!660115)) (h!76808 s1!1971)))))

(declare-fun bm!660109 () Bool)

(declare-fun c!1346854 () Bool)

(declare-fun $colon$colon!2910 (List!70482 Regex!18634) List!70482)

(assert (=> bm!660109 (= call!660115 ($colon$colon!2910 (exprs!8074 (Context!15149 (tail!14301 (exprs!8074 ct1!232)))) (ite (or c!1346854 c!1346855) (regTwo!37780 (h!76806 (exprs!8074 ct1!232))) (h!76806 (exprs!8074 ct1!232)))))))

(declare-fun b!7248938 () Bool)

(declare-fun e!4346445 () (Set Context!15148))

(assert (=> b!7248938 (= e!4346444 e!4346445)))

(assert (=> b!7248938 (= c!1346851 (is-Union!18634 (h!76806 (exprs!8074 ct1!232))))))

(declare-fun b!7248939 () Bool)

(assert (=> b!7248939 (= c!1346854 e!4346443)))

(declare-fun res!2940171 () Bool)

(assert (=> b!7248939 (=> (not res!2940171) (not e!4346443))))

(assert (=> b!7248939 (= res!2940171 (is-Concat!27479 (h!76806 (exprs!8074 ct1!232))))))

(assert (=> b!7248939 (= e!4346445 e!4346447)))

(declare-fun bm!660110 () Bool)

(declare-fun call!660116 () (Set Context!15148))

(assert (=> bm!660110 (= call!660112 call!660116)))

(declare-fun bm!660111 () Bool)

(assert (=> bm!660111 (= call!660116 (derivationStepZipperDown!2628 (ite c!1346851 (regOne!37781 (h!76806 (exprs!8074 ct1!232))) (ite c!1346854 (regTwo!37780 (h!76806 (exprs!8074 ct1!232))) (ite c!1346855 (regOne!37780 (h!76806 (exprs!8074 ct1!232))) (reg!18963 (h!76806 (exprs!8074 ct1!232)))))) (ite (or c!1346851 c!1346854) (Context!15149 (tail!14301 (exprs!8074 ct1!232))) (Context!15149 call!660113)) (h!76808 s1!1971)))))

(declare-fun b!7248940 () Bool)

(assert (=> b!7248940 (= e!4346445 (set.union call!660116 call!660114))))

(declare-fun b!7248941 () Bool)

(declare-fun c!1346852 () Bool)

(assert (=> b!7248941 (= c!1346852 (is-Star!18634 (h!76806 (exprs!8074 ct1!232))))))

(assert (=> b!7248941 (= e!4346442 e!4346446)))

(assert (= (and d!2252836 c!1346853) b!7248931))

(assert (= (and d!2252836 (not c!1346853)) b!7248938))

(assert (= (and b!7248938 c!1346851) b!7248940))

(assert (= (and b!7248938 (not c!1346851)) b!7248939))

(assert (= (and b!7248939 res!2940171) b!7248935))

(assert (= (and b!7248939 c!1346854) b!7248932))

(assert (= (and b!7248939 (not c!1346854)) b!7248933))

(assert (= (and b!7248933 c!1346855) b!7248934))

(assert (= (and b!7248933 (not c!1346855)) b!7248941))

(assert (= (and b!7248941 c!1346852) b!7248936))

(assert (= (and b!7248941 (not c!1346852)) b!7248937))

(assert (= (or b!7248934 b!7248936) bm!660107))

(assert (= (or b!7248934 b!7248936) bm!660106))

(assert (= (or b!7248932 bm!660107) bm!660109))

(assert (= (or b!7248932 bm!660106) bm!660110))

(assert (= (or b!7248940 b!7248932) bm!660108))

(assert (= (or b!7248940 bm!660110) bm!660111))

(declare-fun m!7927064 () Bool)

(assert (=> b!7248931 m!7927064))

(declare-fun m!7927066 () Bool)

(assert (=> bm!660109 m!7927066))

(declare-fun m!7927068 () Bool)

(assert (=> b!7248935 m!7927068))

(declare-fun m!7927070 () Bool)

(assert (=> bm!660108 m!7927070))

(declare-fun m!7927072 () Bool)

(assert (=> bm!660111 m!7927072))

(assert (=> b!7248777 d!2252836))

(declare-fun b!7248946 () Bool)

(declare-fun e!4346450 () Bool)

(declare-fun tp!2037141 () Bool)

(assert (=> b!7248946 (= e!4346450 (and tp_is_empty!46733 tp!2037141))))

(assert (=> b!7248779 (= tp!2037125 e!4346450)))

(assert (= (and b!7248779 (is-Cons!70360 (t!384536 s2!1849))) b!7248946))

(declare-fun b!7248947 () Bool)

(declare-fun e!4346451 () Bool)

(declare-fun tp!2037142 () Bool)

(assert (=> b!7248947 (= e!4346451 (and tp_is_empty!46733 tp!2037142))))

(assert (=> b!7248781 (= tp!2037124 e!4346451)))

(assert (= (and b!7248781 (is-Cons!70360 (t!384536 s1!1971))) b!7248947))

(declare-fun b!7248952 () Bool)

(declare-fun e!4346454 () Bool)

(declare-fun tp!2037147 () Bool)

(declare-fun tp!2037148 () Bool)

(assert (=> b!7248952 (= e!4346454 (and tp!2037147 tp!2037148))))

(assert (=> b!7248776 (= tp!2037126 e!4346454)))

(assert (= (and b!7248776 (is-Cons!70358 (exprs!8074 ct1!232))) b!7248952))

(declare-fun b!7248953 () Bool)

(declare-fun e!4346455 () Bool)

(declare-fun tp!2037149 () Bool)

(declare-fun tp!2037150 () Bool)

(assert (=> b!7248953 (= e!4346455 (and tp!2037149 tp!2037150))))

(assert (=> b!7248782 (= tp!2037123 e!4346455)))

(assert (= (and b!7248782 (is-Cons!70358 (exprs!8074 ct2!328))) b!7248953))

(declare-fun b_lambda!278237 () Bool)

(assert (= b_lambda!278235 (or b!7248773 b_lambda!278237)))

(declare-fun bs!1905763 () Bool)

(declare-fun d!2252842 () Bool)

(assert (= bs!1905763 (and d!2252842 b!7248773)))

(assert (=> bs!1905763 (= (dynLambda!28719 lambda!443762 lt!2584089) (matchZipper!3544 (set.insert lt!2584089 (as set.empty (Set Context!15148))) (t!384536 s1!1971)))))

(declare-fun m!7927074 () Bool)

(assert (=> bs!1905763 m!7927074))

(assert (=> bs!1905763 m!7927074))

(declare-fun m!7927076 () Bool)

(assert (=> bs!1905763 m!7927076))

(assert (=> d!2252814 d!2252842))

(push 1)

(assert (not b!7248845))

(assert (not d!2252786))

(assert (not b!7248947))

(assert (not b!7248900))

(assert (not b!7248895))

(assert (not d!2252792))

(assert (not b!7248953))

(assert (not b!7248846))

(assert (not bm!660092))

(assert (not b!7248935))

(assert (not b!7248952))

(assert (not b!7248869))

(assert (not bm!660108))

(assert (not d!2252826))

(assert (not d!2252796))

(assert (not d!2252780))

(assert (not bm!660109))

(assert (not b!7248894))

(assert (not b!7248901))

(assert (not b!7248824))

(assert (not d!2252804))

(assert (not b!7248897))

(assert (not b_lambda!278237))

(assert (not bm!660111))

(assert (not b!7248891))

(assert (not b!7248868))

(assert (not b!7248821))

(assert (not d!2252784))

(assert (not d!2252806))

(assert tp_is_empty!46733)

(assert (not b!7248892))

(assert (not b!7248823))

(assert (not bs!1905763))

(assert (not d!2252782))

(assert (not d!2252794))

(assert (not d!2252816))

(assert (not b!7248904))

(assert (not d!2252800))

(assert (not d!2252788))

(assert (not d!2252820))

(assert (not d!2252824))

(assert (not b!7248898))

(assert (not bm!660093))

(assert (not b!7248905))

(assert (not b!7248822))

(assert (not d!2252822))

(assert (not b!7248946))

(assert (not d!2252814))

(assert (not d!2252790))

(assert (not b!7248831))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

