; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!597054 () Bool)

(assert start!597054)

(declare-fun b!5829065 () Bool)

(declare-fun e!3576518 () Bool)

(declare-fun lt!2302780 () Bool)

(assert (=> b!5829065 (= e!3576518 (not lt!2302780))))

(declare-datatypes ((C!32034 0))(
  ( (C!32035 (val!25719 Int)) )
))
(declare-datatypes ((Regex!15882 0))(
  ( (ElementMatch!15882 (c!1032840 C!32034)) (Concat!24727 (regOne!32276 Regex!15882) (regTwo!32276 Regex!15882)) (EmptyExpr!15882) (Star!15882 (reg!16211 Regex!15882)) (EmptyLang!15882) (Union!15882 (regOne!32277 Regex!15882) (regTwo!32277 Regex!15882)) )
))
(declare-datatypes ((List!63945 0))(
  ( (Nil!63821) (Cons!63821 (h!70269 Regex!15882) (t!377300 List!63945)) )
))
(declare-datatypes ((Context!10532 0))(
  ( (Context!10533 (exprs!5766 List!63945)) )
))
(declare-fun z!1189 () (Set Context!10532))

(declare-datatypes ((List!63946 0))(
  ( (Nil!63822) (Cons!63822 (h!70270 C!32034) (t!377301 List!63946)) )
))
(declare-fun s!2326 () List!63946)

(declare-fun matchZipper!1974 ((Set Context!10532) List!63946) Bool)

(assert (=> b!5829065 (not (matchZipper!1974 z!1189 s!2326))))

(declare-fun lt!2302778 () Context!10532)

(declare-datatypes ((Unit!157035 0))(
  ( (Unit!157036) )
))
(declare-fun lt!2302777 () Unit!157035)

(declare-fun lemmaZipperStartingWithEmptyLangMatchesNothing!3 ((Set Context!10532) Context!10532 List!63946) Unit!157035)

(assert (=> b!5829065 (= lt!2302777 (lemmaZipperStartingWithEmptyLangMatchesNothing!3 z!1189 lt!2302778 s!2326))))

(declare-fun b!5829066 () Bool)

(declare-fun res!2456906 () Bool)

(declare-fun e!3576522 () Bool)

(assert (=> b!5829066 (=> (not res!2456906) (not e!3576522))))

(declare-fun r!7292 () Regex!15882)

(declare-datatypes ((List!63947 0))(
  ( (Nil!63823) (Cons!63823 (h!70271 Context!10532) (t!377302 List!63947)) )
))
(declare-fun zl!343 () List!63947)

(declare-fun unfocusZipper!1624 (List!63947) Regex!15882)

(assert (=> b!5829066 (= res!2456906 (= r!7292 (unfocusZipper!1624 zl!343)))))

(declare-fun b!5829068 () Bool)

(declare-fun res!2456907 () Bool)

(declare-fun e!3576519 () Bool)

(assert (=> b!5829068 (=> res!2456907 e!3576519)))

(assert (=> b!5829068 (= res!2456907 (not (is-Cons!63821 (exprs!5766 (h!70271 zl!343)))))))

(declare-fun b!5829069 () Bool)

(declare-fun e!3576523 () Bool)

(declare-fun tp!1610320 () Bool)

(declare-fun tp!1610318 () Bool)

(assert (=> b!5829069 (= e!3576523 (and tp!1610320 tp!1610318))))

(declare-fun b!5829070 () Bool)

(declare-fun res!2456913 () Bool)

(assert (=> b!5829070 (=> res!2456913 e!3576519)))

(declare-fun isEmpty!35689 (List!63947) Bool)

(assert (=> b!5829070 (= res!2456913 (not (isEmpty!35689 (t!377302 zl!343))))))

(declare-fun setIsEmpty!39415 () Bool)

(declare-fun setRes!39415 () Bool)

(assert (=> setIsEmpty!39415 setRes!39415))

(declare-fun b!5829071 () Bool)

(declare-fun res!2456904 () Bool)

(assert (=> b!5829071 (=> res!2456904 e!3576519)))

(declare-fun generalisedUnion!1726 (List!63945) Regex!15882)

(declare-fun unfocusZipperList!1303 (List!63947) List!63945)

(assert (=> b!5829071 (= res!2456904 (not (= r!7292 (generalisedUnion!1726 (unfocusZipperList!1303 zl!343)))))))

(declare-fun b!5829072 () Bool)

(declare-fun e!3576521 () Bool)

(declare-fun tp!1610321 () Bool)

(assert (=> b!5829072 (= e!3576521 tp!1610321)))

(declare-fun b!5829073 () Bool)

(declare-fun res!2456905 () Bool)

(assert (=> b!5829073 (=> res!2456905 e!3576518)))

(declare-fun lt!2302781 () List!63945)

(declare-fun isEmpty!35690 (List!63945) Bool)

(assert (=> b!5829073 (= res!2456905 (isEmpty!35690 lt!2302781))))

(declare-fun b!5829074 () Bool)

(declare-fun res!2456912 () Bool)

(assert (=> b!5829074 (=> (not res!2456912) (not e!3576522))))

(declare-fun toList!9666 ((Set Context!10532)) List!63947)

(assert (=> b!5829074 (= res!2456912 (= (toList!9666 z!1189) zl!343))))

(declare-fun b!5829075 () Bool)

(assert (=> b!5829075 (= e!3576519 e!3576518)))

(declare-fun res!2456910 () Bool)

(assert (=> b!5829075 (=> res!2456910 e!3576518)))

(assert (=> b!5829075 (= res!2456910 (not (= z!1189 (set.insert lt!2302778 (as set.empty (Set Context!10532))))))))

(assert (=> b!5829075 (= lt!2302778 (Context!10533 lt!2302781))))

(assert (=> b!5829075 (= lt!2302781 (Cons!63821 r!7292 Nil!63821))))

(declare-fun b!5829076 () Bool)

(declare-fun res!2456914 () Bool)

(assert (=> b!5829076 (=> res!2456914 e!3576519)))

(assert (=> b!5829076 (= res!2456914 (or (is-EmptyExpr!15882 r!7292) (not (is-EmptyLang!15882 r!7292))))))

(declare-fun b!5829067 () Bool)

(assert (=> b!5829067 (= e!3576522 (not e!3576519))))

(declare-fun res!2456908 () Bool)

(assert (=> b!5829067 (=> res!2456908 e!3576519)))

(assert (=> b!5829067 (= res!2456908 (not (is-Cons!63823 zl!343)))))

(declare-fun matchRSpec!2983 (Regex!15882 List!63946) Bool)

(assert (=> b!5829067 (= lt!2302780 (matchRSpec!2983 r!7292 s!2326))))

(declare-fun matchR!8065 (Regex!15882 List!63946) Bool)

(assert (=> b!5829067 (= lt!2302780 (matchR!8065 r!7292 s!2326))))

(declare-fun lt!2302779 () Unit!157035)

(declare-fun mainMatchTheorem!2983 (Regex!15882 List!63946) Unit!157035)

(assert (=> b!5829067 (= lt!2302779 (mainMatchTheorem!2983 r!7292 s!2326))))

(declare-fun res!2456911 () Bool)

(assert (=> start!597054 (=> (not res!2456911) (not e!3576522))))

(declare-fun validRegex!7618 (Regex!15882) Bool)

(assert (=> start!597054 (= res!2456911 (validRegex!7618 r!7292))))

(assert (=> start!597054 e!3576522))

(assert (=> start!597054 e!3576523))

(declare-fun condSetEmpty!39415 () Bool)

(assert (=> start!597054 (= condSetEmpty!39415 (= z!1189 (as set.empty (Set Context!10532))))))

(assert (=> start!597054 setRes!39415))

(declare-fun e!3576516 () Bool)

(assert (=> start!597054 e!3576516))

(declare-fun e!3576520 () Bool)

(assert (=> start!597054 e!3576520))

(declare-fun b!5829077 () Bool)

(declare-fun tp!1610315 () Bool)

(declare-fun tp!1610316 () Bool)

(assert (=> b!5829077 (= e!3576523 (and tp!1610315 tp!1610316))))

(declare-fun b!5829078 () Bool)

(declare-fun res!2456903 () Bool)

(assert (=> b!5829078 (=> res!2456903 e!3576519)))

(declare-fun generalisedConcat!1479 (List!63945) Regex!15882)

(assert (=> b!5829078 (= res!2456903 (not (= r!7292 (generalisedConcat!1479 (exprs!5766 (h!70271 zl!343))))))))

(declare-fun b!5829079 () Bool)

(declare-fun tp_is_empty!41017 () Bool)

(declare-fun tp!1610313 () Bool)

(assert (=> b!5829079 (= e!3576520 (and tp_is_empty!41017 tp!1610313))))

(declare-fun b!5829080 () Bool)

(declare-fun e!3576517 () Bool)

(declare-fun tp!1610319 () Bool)

(assert (=> b!5829080 (= e!3576517 tp!1610319)))

(declare-fun b!5829081 () Bool)

(declare-fun res!2456909 () Bool)

(assert (=> b!5829081 (=> res!2456909 e!3576518)))

(declare-fun head!12326 (List!63945) Regex!15882)

(assert (=> b!5829081 (= res!2456909 (not (= (head!12326 lt!2302781) EmptyLang!15882)))))

(declare-fun b!5829082 () Bool)

(declare-fun tp!1610317 () Bool)

(assert (=> b!5829082 (= e!3576523 tp!1610317)))

(declare-fun tp!1610314 () Bool)

(declare-fun setNonEmpty!39415 () Bool)

(declare-fun setElem!39415 () Context!10532)

(declare-fun inv!82953 (Context!10532) Bool)

(assert (=> setNonEmpty!39415 (= setRes!39415 (and tp!1610314 (inv!82953 setElem!39415) e!3576521))))

(declare-fun setRest!39415 () (Set Context!10532))

(assert (=> setNonEmpty!39415 (= z!1189 (set.union (set.insert setElem!39415 (as set.empty (Set Context!10532))) setRest!39415))))

(declare-fun b!5829083 () Bool)

(assert (=> b!5829083 (= e!3576523 tp_is_empty!41017)))

(declare-fun b!5829084 () Bool)

(declare-fun tp!1610322 () Bool)

(assert (=> b!5829084 (= e!3576516 (and (inv!82953 (h!70271 zl!343)) e!3576517 tp!1610322))))

(assert (= (and start!597054 res!2456911) b!5829074))

(assert (= (and b!5829074 res!2456912) b!5829066))

(assert (= (and b!5829066 res!2456906) b!5829067))

(assert (= (and b!5829067 (not res!2456908)) b!5829070))

(assert (= (and b!5829070 (not res!2456913)) b!5829078))

(assert (= (and b!5829078 (not res!2456903)) b!5829068))

(assert (= (and b!5829068 (not res!2456907)) b!5829071))

(assert (= (and b!5829071 (not res!2456904)) b!5829076))

(assert (= (and b!5829076 (not res!2456914)) b!5829075))

(assert (= (and b!5829075 (not res!2456910)) b!5829073))

(assert (= (and b!5829073 (not res!2456905)) b!5829081))

(assert (= (and b!5829081 (not res!2456909)) b!5829065))

(assert (= (and start!597054 (is-ElementMatch!15882 r!7292)) b!5829083))

(assert (= (and start!597054 (is-Concat!24727 r!7292)) b!5829077))

(assert (= (and start!597054 (is-Star!15882 r!7292)) b!5829082))

(assert (= (and start!597054 (is-Union!15882 r!7292)) b!5829069))

(assert (= (and start!597054 condSetEmpty!39415) setIsEmpty!39415))

(assert (= (and start!597054 (not condSetEmpty!39415)) setNonEmpty!39415))

(assert (= setNonEmpty!39415 b!5829072))

(assert (= b!5829084 b!5829080))

(assert (= (and start!597054 (is-Cons!63823 zl!343)) b!5829084))

(assert (= (and start!597054 (is-Cons!63822 s!2326)) b!5829079))

(declare-fun m!6759716 () Bool)

(assert (=> b!5829084 m!6759716))

(declare-fun m!6759718 () Bool)

(assert (=> b!5829066 m!6759718))

(declare-fun m!6759720 () Bool)

(assert (=> b!5829078 m!6759720))

(declare-fun m!6759722 () Bool)

(assert (=> b!5829075 m!6759722))

(declare-fun m!6759724 () Bool)

(assert (=> b!5829074 m!6759724))

(declare-fun m!6759726 () Bool)

(assert (=> start!597054 m!6759726))

(declare-fun m!6759728 () Bool)

(assert (=> b!5829081 m!6759728))

(declare-fun m!6759730 () Bool)

(assert (=> b!5829073 m!6759730))

(declare-fun m!6759732 () Bool)

(assert (=> setNonEmpty!39415 m!6759732))

(declare-fun m!6759734 () Bool)

(assert (=> b!5829065 m!6759734))

(declare-fun m!6759736 () Bool)

(assert (=> b!5829065 m!6759736))

(declare-fun m!6759738 () Bool)

(assert (=> b!5829071 m!6759738))

(assert (=> b!5829071 m!6759738))

(declare-fun m!6759740 () Bool)

(assert (=> b!5829071 m!6759740))

(declare-fun m!6759742 () Bool)

(assert (=> b!5829067 m!6759742))

(declare-fun m!6759744 () Bool)

(assert (=> b!5829067 m!6759744))

(declare-fun m!6759746 () Bool)

(assert (=> b!5829067 m!6759746))

(declare-fun m!6759748 () Bool)

(assert (=> b!5829070 m!6759748))

(push 1)

(assert (not b!5829081))

(assert (not b!5829073))

(assert (not b!5829071))

(assert (not b!5829065))

(assert (not b!5829080))

(assert (not b!5829074))

(assert (not b!5829082))

(assert (not b!5829077))

(assert tp_is_empty!41017)

(assert (not b!5829069))

(assert (not b!5829078))

(assert (not b!5829070))

(assert (not b!5829072))

(assert (not b!5829066))

(assert (not b!5829084))

(assert (not setNonEmpty!39415))

(assert (not start!597054))

(assert (not b!5829079))

(assert (not b!5829067))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1833263 () Bool)

(declare-fun lambda!318937 () Int)

(declare-fun forall!14973 (List!63945 Int) Bool)

(assert (=> d!1833263 (= (inv!82953 setElem!39415) (forall!14973 (exprs!5766 setElem!39415) lambda!318937))))

(declare-fun bs!1374520 () Bool)

(assert (= bs!1374520 d!1833263))

(declare-fun m!6759784 () Bool)

(assert (=> bs!1374520 m!6759784))

(assert (=> setNonEmpty!39415 d!1833263))

(declare-fun d!1833265 () Bool)

(assert (=> d!1833265 (= (isEmpty!35690 lt!2302781) (is-Nil!63821 lt!2302781))))

(assert (=> b!5829073 d!1833265))

(declare-fun d!1833267 () Bool)

(assert (=> d!1833267 (= (isEmpty!35689 (t!377302 zl!343)) (is-Nil!63823 (t!377302 zl!343)))))

(assert (=> b!5829070 d!1833267))

(declare-fun bs!1374521 () Bool)

(declare-fun d!1833269 () Bool)

(assert (= bs!1374521 (and d!1833269 d!1833263)))

(declare-fun lambda!318940 () Int)

(assert (=> bs!1374521 (= lambda!318940 lambda!318937)))

(declare-fun b!5829165 () Bool)

(declare-fun e!3576565 () Regex!15882)

(assert (=> b!5829165 (= e!3576565 (Union!15882 (h!70269 (unfocusZipperList!1303 zl!343)) (generalisedUnion!1726 (t!377300 (unfocusZipperList!1303 zl!343)))))))

(declare-fun b!5829166 () Bool)

(declare-fun e!3576562 () Bool)

(declare-fun lt!2302799 () Regex!15882)

(declare-fun isEmptyLang!1329 (Regex!15882) Bool)

(assert (=> b!5829166 (= e!3576562 (isEmptyLang!1329 lt!2302799))))

(declare-fun b!5829167 () Bool)

(declare-fun e!3576564 () Bool)

(assert (=> b!5829167 (= e!3576564 (isEmpty!35690 (t!377300 (unfocusZipperList!1303 zl!343))))))

(declare-fun b!5829168 () Bool)

(declare-fun e!3576560 () Bool)

(assert (=> b!5829168 (= e!3576562 e!3576560)))

(declare-fun c!1032850 () Bool)

(declare-fun tail!11411 (List!63945) List!63945)

(assert (=> b!5829168 (= c!1032850 (isEmpty!35690 (tail!11411 (unfocusZipperList!1303 zl!343))))))

(declare-fun b!5829169 () Bool)

(declare-fun e!3576561 () Regex!15882)

(assert (=> b!5829169 (= e!3576561 e!3576565)))

(declare-fun c!1032852 () Bool)

(assert (=> b!5829169 (= c!1032852 (is-Cons!63821 (unfocusZipperList!1303 zl!343)))))

(declare-fun b!5829170 () Bool)

(declare-fun isUnion!759 (Regex!15882) Bool)

(assert (=> b!5829170 (= e!3576560 (isUnion!759 lt!2302799))))

(declare-fun e!3576563 () Bool)

(assert (=> d!1833269 e!3576563))

(declare-fun res!2456956 () Bool)

(assert (=> d!1833269 (=> (not res!2456956) (not e!3576563))))

(assert (=> d!1833269 (= res!2456956 (validRegex!7618 lt!2302799))))

(assert (=> d!1833269 (= lt!2302799 e!3576561)))

(declare-fun c!1032853 () Bool)

(assert (=> d!1833269 (= c!1032853 e!3576564)))

(declare-fun res!2456955 () Bool)

(assert (=> d!1833269 (=> (not res!2456955) (not e!3576564))))

(assert (=> d!1833269 (= res!2456955 (is-Cons!63821 (unfocusZipperList!1303 zl!343)))))

(assert (=> d!1833269 (forall!14973 (unfocusZipperList!1303 zl!343) lambda!318940)))

(assert (=> d!1833269 (= (generalisedUnion!1726 (unfocusZipperList!1303 zl!343)) lt!2302799)))

(declare-fun b!5829171 () Bool)

(assert (=> b!5829171 (= e!3576565 EmptyLang!15882)))

(declare-fun b!5829172 () Bool)

(assert (=> b!5829172 (= e!3576561 (h!70269 (unfocusZipperList!1303 zl!343)))))

(declare-fun b!5829173 () Bool)

(assert (=> b!5829173 (= e!3576560 (= lt!2302799 (head!12326 (unfocusZipperList!1303 zl!343))))))

(declare-fun b!5829174 () Bool)

(assert (=> b!5829174 (= e!3576563 e!3576562)))

(declare-fun c!1032851 () Bool)

(assert (=> b!5829174 (= c!1032851 (isEmpty!35690 (unfocusZipperList!1303 zl!343)))))

(assert (= (and d!1833269 res!2456955) b!5829167))

(assert (= (and d!1833269 c!1032853) b!5829172))

(assert (= (and d!1833269 (not c!1032853)) b!5829169))

(assert (= (and b!5829169 c!1032852) b!5829165))

(assert (= (and b!5829169 (not c!1032852)) b!5829171))

(assert (= (and d!1833269 res!2456956) b!5829174))

(assert (= (and b!5829174 c!1032851) b!5829166))

(assert (= (and b!5829174 (not c!1032851)) b!5829168))

(assert (= (and b!5829168 c!1032850) b!5829173))

(assert (= (and b!5829168 (not c!1032850)) b!5829170))

(declare-fun m!6759786 () Bool)

(assert (=> b!5829167 m!6759786))

(declare-fun m!6759788 () Bool)

(assert (=> b!5829170 m!6759788))

(declare-fun m!6759790 () Bool)

(assert (=> b!5829165 m!6759790))

(declare-fun m!6759792 () Bool)

(assert (=> d!1833269 m!6759792))

(assert (=> d!1833269 m!6759738))

(declare-fun m!6759794 () Bool)

(assert (=> d!1833269 m!6759794))

(assert (=> b!5829174 m!6759738))

(declare-fun m!6759796 () Bool)

(assert (=> b!5829174 m!6759796))

(assert (=> b!5829173 m!6759738))

(declare-fun m!6759798 () Bool)

(assert (=> b!5829173 m!6759798))

(assert (=> b!5829168 m!6759738))

(declare-fun m!6759800 () Bool)

(assert (=> b!5829168 m!6759800))

(assert (=> b!5829168 m!6759800))

(declare-fun m!6759802 () Bool)

(assert (=> b!5829168 m!6759802))

(declare-fun m!6759804 () Bool)

(assert (=> b!5829166 m!6759804))

(assert (=> b!5829071 d!1833269))

(declare-fun bs!1374522 () Bool)

(declare-fun d!1833271 () Bool)

(assert (= bs!1374522 (and d!1833271 d!1833263)))

(declare-fun lambda!318943 () Int)

(assert (=> bs!1374522 (= lambda!318943 lambda!318937)))

(declare-fun bs!1374523 () Bool)

(assert (= bs!1374523 (and d!1833271 d!1833269)))

(assert (=> bs!1374523 (= lambda!318943 lambda!318940)))

(declare-fun lt!2302802 () List!63945)

(assert (=> d!1833271 (forall!14973 lt!2302802 lambda!318943)))

(declare-fun e!3576568 () List!63945)

(assert (=> d!1833271 (= lt!2302802 e!3576568)))

(declare-fun c!1032856 () Bool)

(assert (=> d!1833271 (= c!1032856 (is-Cons!63823 zl!343))))

(assert (=> d!1833271 (= (unfocusZipperList!1303 zl!343) lt!2302802)))

(declare-fun b!5829179 () Bool)

(assert (=> b!5829179 (= e!3576568 (Cons!63821 (generalisedConcat!1479 (exprs!5766 (h!70271 zl!343))) (unfocusZipperList!1303 (t!377302 zl!343))))))

(declare-fun b!5829180 () Bool)

(assert (=> b!5829180 (= e!3576568 Nil!63821)))

(assert (= (and d!1833271 c!1032856) b!5829179))

(assert (= (and d!1833271 (not c!1032856)) b!5829180))

(declare-fun m!6759806 () Bool)

(assert (=> d!1833271 m!6759806))

(assert (=> b!5829179 m!6759720))

(declare-fun m!6759808 () Bool)

(assert (=> b!5829179 m!6759808))

(assert (=> b!5829071 d!1833271))

(declare-fun b!5829199 () Bool)

(declare-fun e!3576584 () Bool)

(declare-fun call!455233 () Bool)

(assert (=> b!5829199 (= e!3576584 call!455233)))

(declare-fun b!5829200 () Bool)

(declare-fun e!3576589 () Bool)

(assert (=> b!5829200 (= e!3576589 call!455233)))

(declare-fun b!5829201 () Bool)

(declare-fun res!2456967 () Bool)

(assert (=> b!5829201 (=> (not res!2456967) (not e!3576584))))

(declare-fun call!455235 () Bool)

(assert (=> b!5829201 (= res!2456967 call!455235)))

(declare-fun e!3576586 () Bool)

(assert (=> b!5829201 (= e!3576586 e!3576584)))

(declare-fun b!5829202 () Bool)

(declare-fun e!3576587 () Bool)

(assert (=> b!5829202 (= e!3576587 e!3576586)))

(declare-fun c!1032861 () Bool)

(assert (=> b!5829202 (= c!1032861 (is-Union!15882 r!7292))))

(declare-fun b!5829203 () Bool)

(declare-fun e!3576583 () Bool)

(assert (=> b!5829203 (= e!3576587 e!3576583)))

(declare-fun res!2456968 () Bool)

(declare-fun nullable!5884 (Regex!15882) Bool)

(assert (=> b!5829203 (= res!2456968 (not (nullable!5884 (reg!16211 r!7292))))))

(assert (=> b!5829203 (=> (not res!2456968) (not e!3576583))))

(declare-fun b!5829204 () Bool)

(declare-fun e!3576585 () Bool)

(assert (=> b!5829204 (= e!3576585 e!3576587)))

(declare-fun c!1032862 () Bool)

(assert (=> b!5829204 (= c!1032862 (is-Star!15882 r!7292))))

(declare-fun b!5829205 () Bool)

(declare-fun res!2456970 () Bool)

(declare-fun e!3576588 () Bool)

(assert (=> b!5829205 (=> res!2456970 e!3576588)))

(assert (=> b!5829205 (= res!2456970 (not (is-Concat!24727 r!7292)))))

(assert (=> b!5829205 (= e!3576586 e!3576588)))

(declare-fun bm!455229 () Bool)

(declare-fun call!455234 () Bool)

(assert (=> bm!455229 (= call!455233 call!455234)))

(declare-fun bm!455230 () Bool)

(assert (=> bm!455230 (= call!455234 (validRegex!7618 (ite c!1032862 (reg!16211 r!7292) (ite c!1032861 (regTwo!32277 r!7292) (regTwo!32276 r!7292)))))))

(declare-fun d!1833273 () Bool)

(declare-fun res!2456971 () Bool)

(assert (=> d!1833273 (=> res!2456971 e!3576585)))

(assert (=> d!1833273 (= res!2456971 (is-ElementMatch!15882 r!7292))))

(assert (=> d!1833273 (= (validRegex!7618 r!7292) e!3576585)))

(declare-fun bm!455228 () Bool)

(assert (=> bm!455228 (= call!455235 (validRegex!7618 (ite c!1032861 (regOne!32277 r!7292) (regOne!32276 r!7292))))))

(declare-fun b!5829206 () Bool)

(assert (=> b!5829206 (= e!3576588 e!3576589)))

(declare-fun res!2456969 () Bool)

(assert (=> b!5829206 (=> (not res!2456969) (not e!3576589))))

(assert (=> b!5829206 (= res!2456969 call!455235)))

(declare-fun b!5829207 () Bool)

(assert (=> b!5829207 (= e!3576583 call!455234)))

(assert (= (and d!1833273 (not res!2456971)) b!5829204))

(assert (= (and b!5829204 c!1032862) b!5829203))

(assert (= (and b!5829204 (not c!1032862)) b!5829202))

(assert (= (and b!5829203 res!2456968) b!5829207))

(assert (= (and b!5829202 c!1032861) b!5829201))

(assert (= (and b!5829202 (not c!1032861)) b!5829205))

(assert (= (and b!5829201 res!2456967) b!5829199))

(assert (= (and b!5829205 (not res!2456970)) b!5829206))

(assert (= (and b!5829206 res!2456969) b!5829200))

(assert (= (or b!5829199 b!5829200) bm!455229))

(assert (= (or b!5829201 b!5829206) bm!455228))

(assert (= (or b!5829207 bm!455229) bm!455230))

(declare-fun m!6759810 () Bool)

(assert (=> b!5829203 m!6759810))

(declare-fun m!6759812 () Bool)

(assert (=> bm!455230 m!6759812))

(declare-fun m!6759814 () Bool)

(assert (=> bm!455228 m!6759814))

(assert (=> start!597054 d!1833273))

(declare-fun d!1833275 () Bool)

(assert (=> d!1833275 (= (head!12326 lt!2302781) (h!70269 lt!2302781))))

(assert (=> b!5829081 d!1833275))

(declare-fun b!5829269 () Bool)

(assert (=> b!5829269 true))

(assert (=> b!5829269 true))

(declare-fun bs!1374524 () Bool)

(declare-fun b!5829261 () Bool)

(assert (= bs!1374524 (and b!5829261 b!5829269)))

(declare-fun lambda!318951 () Int)

(declare-fun lambda!318950 () Int)

(assert (=> bs!1374524 (not (= lambda!318951 lambda!318950))))

(assert (=> b!5829261 true))

(assert (=> b!5829261 true))

(declare-fun c!1032882 () Bool)

(declare-fun call!455241 () Bool)

(declare-fun bm!455235 () Bool)

(declare-fun Exists!2959 (Int) Bool)

(assert (=> bm!455235 (= call!455241 (Exists!2959 (ite c!1032882 lambda!318950 lambda!318951)))))

(declare-fun b!5829260 () Bool)

(declare-fun e!3576623 () Bool)

(assert (=> b!5829260 (= e!3576623 (matchRSpec!2983 (regTwo!32277 r!7292) s!2326))))

(declare-fun e!3576620 () Bool)

(assert (=> b!5829261 (= e!3576620 call!455241)))

(declare-fun b!5829262 () Bool)

(declare-fun c!1032879 () Bool)

(assert (=> b!5829262 (= c!1032879 (is-Union!15882 r!7292))))

(declare-fun e!3576625 () Bool)

(declare-fun e!3576624 () Bool)

(assert (=> b!5829262 (= e!3576625 e!3576624)))

(declare-fun d!1833277 () Bool)

(declare-fun c!1032881 () Bool)

(assert (=> d!1833277 (= c!1032881 (is-EmptyExpr!15882 r!7292))))

(declare-fun e!3576622 () Bool)

(assert (=> d!1833277 (= (matchRSpec!2983 r!7292 s!2326) e!3576622)))

(declare-fun b!5829263 () Bool)

(assert (=> b!5829263 (= e!3576625 (= s!2326 (Cons!63822 (c!1032840 r!7292) Nil!63822)))))

(declare-fun bm!455236 () Bool)

(declare-fun call!455240 () Bool)

(declare-fun isEmpty!35693 (List!63946) Bool)

(assert (=> bm!455236 (= call!455240 (isEmpty!35693 s!2326))))

(declare-fun b!5829264 () Bool)

(assert (=> b!5829264 (= e!3576624 e!3576623)))

(declare-fun res!2456994 () Bool)

(assert (=> b!5829264 (= res!2456994 (matchRSpec!2983 (regOne!32277 r!7292) s!2326))))

(assert (=> b!5829264 (=> res!2456994 e!3576623)))

(declare-fun b!5829265 () Bool)

(declare-fun e!3576626 () Bool)

(assert (=> b!5829265 (= e!3576622 e!3576626)))

(declare-fun res!2456992 () Bool)

(assert (=> b!5829265 (= res!2456992 (not (is-EmptyLang!15882 r!7292)))))

(assert (=> b!5829265 (=> (not res!2456992) (not e!3576626))))

(declare-fun b!5829266 () Bool)

(declare-fun res!2456993 () Bool)

(declare-fun e!3576621 () Bool)

(assert (=> b!5829266 (=> res!2456993 e!3576621)))

(assert (=> b!5829266 (= res!2456993 call!455240)))

(assert (=> b!5829266 (= e!3576620 e!3576621)))

(declare-fun b!5829267 () Bool)

(declare-fun c!1032880 () Bool)

(assert (=> b!5829267 (= c!1032880 (is-ElementMatch!15882 r!7292))))

(assert (=> b!5829267 (= e!3576626 e!3576625)))

(declare-fun b!5829268 () Bool)

(assert (=> b!5829268 (= e!3576622 call!455240)))

(assert (=> b!5829269 (= e!3576621 call!455241)))

(declare-fun b!5829270 () Bool)

(assert (=> b!5829270 (= e!3576624 e!3576620)))

(assert (=> b!5829270 (= c!1032882 (is-Star!15882 r!7292))))

(assert (= (and d!1833277 c!1032881) b!5829268))

(assert (= (and d!1833277 (not c!1032881)) b!5829265))

(assert (= (and b!5829265 res!2456992) b!5829267))

(assert (= (and b!5829267 c!1032880) b!5829263))

(assert (= (and b!5829267 (not c!1032880)) b!5829262))

(assert (= (and b!5829262 c!1032879) b!5829264))

(assert (= (and b!5829262 (not c!1032879)) b!5829270))

(assert (= (and b!5829264 (not res!2456994)) b!5829260))

(assert (= (and b!5829270 c!1032882) b!5829266))

(assert (= (and b!5829270 (not c!1032882)) b!5829261))

(assert (= (and b!5829266 (not res!2456993)) b!5829269))

(assert (= (or b!5829269 b!5829261) bm!455235))

(assert (= (or b!5829268 b!5829266) bm!455236))

(declare-fun m!6759816 () Bool)

(assert (=> bm!455235 m!6759816))

(declare-fun m!6759818 () Bool)

(assert (=> b!5829260 m!6759818))

(declare-fun m!6759820 () Bool)

(assert (=> bm!455236 m!6759820))

(declare-fun m!6759822 () Bool)

(assert (=> b!5829264 m!6759822))

(assert (=> b!5829067 d!1833277))

(declare-fun b!5829341 () Bool)

(declare-fun e!3576665 () Bool)

(declare-fun e!3576669 () Bool)

(assert (=> b!5829341 (= e!3576665 e!3576669)))

(declare-fun c!1032902 () Bool)

(assert (=> b!5829341 (= c!1032902 (is-EmptyLang!15882 r!7292))))

(declare-fun b!5829342 () Bool)

(declare-fun e!3576667 () Bool)

(declare-fun derivativeStep!4624 (Regex!15882 C!32034) Regex!15882)

(declare-fun head!12328 (List!63946) C!32034)

(declare-fun tail!11412 (List!63946) List!63946)

(assert (=> b!5829342 (= e!3576667 (matchR!8065 (derivativeStep!4624 r!7292 (head!12328 s!2326)) (tail!11412 s!2326)))))

(declare-fun b!5829343 () Bool)

(assert (=> b!5829343 (= e!3576667 (nullable!5884 r!7292))))

(declare-fun b!5829344 () Bool)

(declare-fun res!2457025 () Bool)

(declare-fun e!3576666 () Bool)

(assert (=> b!5829344 (=> res!2457025 e!3576666)))

(assert (=> b!5829344 (= res!2457025 (not (isEmpty!35693 (tail!11412 s!2326))))))

(declare-fun b!5829345 () Bool)

(assert (=> b!5829345 (= e!3576666 (not (= (head!12328 s!2326) (c!1032840 r!7292))))))

(declare-fun b!5829346 () Bool)

(declare-fun res!2457027 () Bool)

(declare-fun e!3576663 () Bool)

(assert (=> b!5829346 (=> res!2457027 e!3576663)))

(assert (=> b!5829346 (= res!2457027 (not (is-ElementMatch!15882 r!7292)))))

(assert (=> b!5829346 (= e!3576669 e!3576663)))

(declare-fun d!1833279 () Bool)

(assert (=> d!1833279 e!3576665))

(declare-fun c!1032903 () Bool)

(assert (=> d!1833279 (= c!1032903 (is-EmptyExpr!15882 r!7292))))

(declare-fun lt!2302808 () Bool)

(assert (=> d!1833279 (= lt!2302808 e!3576667)))

(declare-fun c!1032901 () Bool)

(assert (=> d!1833279 (= c!1032901 (isEmpty!35693 s!2326))))

(assert (=> d!1833279 (validRegex!7618 r!7292)))

(assert (=> d!1833279 (= (matchR!8065 r!7292 s!2326) lt!2302808)))

(declare-fun b!5829347 () Bool)

(declare-fun res!2457032 () Bool)

(assert (=> b!5829347 (=> res!2457032 e!3576663)))

(declare-fun e!3576664 () Bool)

(assert (=> b!5829347 (= res!2457032 e!3576664)))

(declare-fun res!2457031 () Bool)

(assert (=> b!5829347 (=> (not res!2457031) (not e!3576664))))

(assert (=> b!5829347 (= res!2457031 lt!2302808)))

(declare-fun b!5829348 () Bool)

(declare-fun call!455244 () Bool)

(assert (=> b!5829348 (= e!3576665 (= lt!2302808 call!455244))))

(declare-fun b!5829349 () Bool)

(declare-fun res!2457026 () Bool)

(assert (=> b!5829349 (=> (not res!2457026) (not e!3576664))))

(assert (=> b!5829349 (= res!2457026 (not call!455244))))

(declare-fun b!5829350 () Bool)

(declare-fun res!2457029 () Bool)

(assert (=> b!5829350 (=> (not res!2457029) (not e!3576664))))

(assert (=> b!5829350 (= res!2457029 (isEmpty!35693 (tail!11412 s!2326)))))

(declare-fun bm!455239 () Bool)

(assert (=> bm!455239 (= call!455244 (isEmpty!35693 s!2326))))

(declare-fun b!5829351 () Bool)

(declare-fun e!3576668 () Bool)

(assert (=> b!5829351 (= e!3576663 e!3576668)))

(declare-fun res!2457028 () Bool)

(assert (=> b!5829351 (=> (not res!2457028) (not e!3576668))))

(assert (=> b!5829351 (= res!2457028 (not lt!2302808))))

(declare-fun b!5829352 () Bool)

(assert (=> b!5829352 (= e!3576664 (= (head!12328 s!2326) (c!1032840 r!7292)))))

(declare-fun b!5829353 () Bool)

(assert (=> b!5829353 (= e!3576669 (not lt!2302808))))

(declare-fun b!5829354 () Bool)

(assert (=> b!5829354 (= e!3576668 e!3576666)))

(declare-fun res!2457030 () Bool)

(assert (=> b!5829354 (=> res!2457030 e!3576666)))

(assert (=> b!5829354 (= res!2457030 call!455244)))

(assert (= (and d!1833279 c!1032901) b!5829343))

(assert (= (and d!1833279 (not c!1032901)) b!5829342))

(assert (= (and d!1833279 c!1032903) b!5829348))

(assert (= (and d!1833279 (not c!1032903)) b!5829341))

(assert (= (and b!5829341 c!1032902) b!5829353))

(assert (= (and b!5829341 (not c!1032902)) b!5829346))

(assert (= (and b!5829346 (not res!2457027)) b!5829347))

(assert (= (and b!5829347 res!2457031) b!5829349))

(assert (= (and b!5829349 res!2457026) b!5829350))

(assert (= (and b!5829350 res!2457029) b!5829352))

(assert (= (and b!5829347 (not res!2457032)) b!5829351))

(assert (= (and b!5829351 res!2457028) b!5829354))

(assert (= (and b!5829354 (not res!2457030)) b!5829344))

(assert (= (and b!5829344 (not res!2457025)) b!5829345))

(assert (= (or b!5829348 b!5829349 b!5829354) bm!455239))

(declare-fun m!6759844 () Bool)

(assert (=> b!5829345 m!6759844))

(assert (=> b!5829352 m!6759844))

(declare-fun m!6759846 () Bool)

(assert (=> b!5829350 m!6759846))

(assert (=> b!5829350 m!6759846))

(declare-fun m!6759848 () Bool)

(assert (=> b!5829350 m!6759848))

(assert (=> b!5829342 m!6759844))

(assert (=> b!5829342 m!6759844))

(declare-fun m!6759850 () Bool)

(assert (=> b!5829342 m!6759850))

(assert (=> b!5829342 m!6759846))

(assert (=> b!5829342 m!6759850))

(assert (=> b!5829342 m!6759846))

(declare-fun m!6759852 () Bool)

(assert (=> b!5829342 m!6759852))

(assert (=> bm!455239 m!6759820))

(assert (=> d!1833279 m!6759820))

(assert (=> d!1833279 m!6759726))

(assert (=> b!5829344 m!6759846))

(assert (=> b!5829344 m!6759846))

(assert (=> b!5829344 m!6759848))

(declare-fun m!6759854 () Bool)

(assert (=> b!5829343 m!6759854))

(assert (=> b!5829067 d!1833279))

(declare-fun d!1833283 () Bool)

(assert (=> d!1833283 (= (matchR!8065 r!7292 s!2326) (matchRSpec!2983 r!7292 s!2326))))

(declare-fun lt!2302811 () Unit!157035)

(declare-fun choose!44282 (Regex!15882 List!63946) Unit!157035)

(assert (=> d!1833283 (= lt!2302811 (choose!44282 r!7292 s!2326))))

(assert (=> d!1833283 (validRegex!7618 r!7292)))

(assert (=> d!1833283 (= (mainMatchTheorem!2983 r!7292 s!2326) lt!2302811)))

(declare-fun bs!1374525 () Bool)

(assert (= bs!1374525 d!1833283))

(assert (=> bs!1374525 m!6759744))

(assert (=> bs!1374525 m!6759742))

(declare-fun m!6759856 () Bool)

(assert (=> bs!1374525 m!6759856))

(assert (=> bs!1374525 m!6759726))

(assert (=> b!5829067 d!1833283))

(declare-fun bs!1374527 () Bool)

(declare-fun d!1833285 () Bool)

(assert (= bs!1374527 (and d!1833285 d!1833263)))

(declare-fun lambda!318961 () Int)

(assert (=> bs!1374527 (= lambda!318961 lambda!318937)))

(declare-fun bs!1374528 () Bool)

(assert (= bs!1374528 (and d!1833285 d!1833269)))

(assert (=> bs!1374528 (= lambda!318961 lambda!318940)))

(declare-fun bs!1374529 () Bool)

(assert (= bs!1374529 (and d!1833285 d!1833271)))

(assert (=> bs!1374529 (= lambda!318961 lambda!318943)))

(declare-fun b!5829394 () Bool)

(declare-fun e!3576695 () Bool)

(declare-fun lt!2302814 () Regex!15882)

(declare-fun isEmptyExpr!1321 (Regex!15882) Bool)

(assert (=> b!5829394 (= e!3576695 (isEmptyExpr!1321 lt!2302814))))

(declare-fun b!5829395 () Bool)

(declare-fun e!3576693 () Bool)

(assert (=> b!5829395 (= e!3576693 e!3576695)))

(declare-fun c!1032917 () Bool)

(assert (=> b!5829395 (= c!1032917 (isEmpty!35690 (exprs!5766 (h!70271 zl!343))))))

(declare-fun b!5829397 () Bool)

(declare-fun e!3576696 () Regex!15882)

(declare-fun e!3576691 () Regex!15882)

(assert (=> b!5829397 (= e!3576696 e!3576691)))

(declare-fun c!1032918 () Bool)

(assert (=> b!5829397 (= c!1032918 (is-Cons!63821 (exprs!5766 (h!70271 zl!343))))))

(declare-fun b!5829398 () Bool)

(assert (=> b!5829398 (= e!3576696 (h!70269 (exprs!5766 (h!70271 zl!343))))))

(declare-fun b!5829399 () Bool)

(declare-fun e!3576692 () Bool)

(declare-fun isConcat!845 (Regex!15882) Bool)

(assert (=> b!5829399 (= e!3576692 (isConcat!845 lt!2302814))))

(declare-fun b!5829396 () Bool)

(assert (=> b!5829396 (= e!3576691 EmptyExpr!15882)))

(assert (=> d!1833285 e!3576693))

(declare-fun res!2457045 () Bool)

(assert (=> d!1833285 (=> (not res!2457045) (not e!3576693))))

(assert (=> d!1833285 (= res!2457045 (validRegex!7618 lt!2302814))))

(assert (=> d!1833285 (= lt!2302814 e!3576696)))

(declare-fun c!1032916 () Bool)

(declare-fun e!3576694 () Bool)

(assert (=> d!1833285 (= c!1032916 e!3576694)))

(declare-fun res!2457044 () Bool)

(assert (=> d!1833285 (=> (not res!2457044) (not e!3576694))))

(assert (=> d!1833285 (= res!2457044 (is-Cons!63821 (exprs!5766 (h!70271 zl!343))))))

(assert (=> d!1833285 (forall!14973 (exprs!5766 (h!70271 zl!343)) lambda!318961)))

(assert (=> d!1833285 (= (generalisedConcat!1479 (exprs!5766 (h!70271 zl!343))) lt!2302814)))

(declare-fun b!5829400 () Bool)

(assert (=> b!5829400 (= e!3576691 (Concat!24727 (h!70269 (exprs!5766 (h!70271 zl!343))) (generalisedConcat!1479 (t!377300 (exprs!5766 (h!70271 zl!343))))))))

(declare-fun b!5829401 () Bool)

(assert (=> b!5829401 (= e!3576692 (= lt!2302814 (head!12326 (exprs!5766 (h!70271 zl!343)))))))

(declare-fun b!5829402 () Bool)

(assert (=> b!5829402 (= e!3576695 e!3576692)))

(declare-fun c!1032919 () Bool)

(assert (=> b!5829402 (= c!1032919 (isEmpty!35690 (tail!11411 (exprs!5766 (h!70271 zl!343)))))))

(declare-fun b!5829403 () Bool)

(assert (=> b!5829403 (= e!3576694 (isEmpty!35690 (t!377300 (exprs!5766 (h!70271 zl!343)))))))

(assert (= (and d!1833285 res!2457044) b!5829403))

(assert (= (and d!1833285 c!1032916) b!5829398))

(assert (= (and d!1833285 (not c!1032916)) b!5829397))

(assert (= (and b!5829397 c!1032918) b!5829400))

(assert (= (and b!5829397 (not c!1032918)) b!5829396))

(assert (= (and d!1833285 res!2457045) b!5829395))

(assert (= (and b!5829395 c!1032917) b!5829394))

(assert (= (and b!5829395 (not c!1032917)) b!5829402))

(assert (= (and b!5829402 c!1032919) b!5829401))

(assert (= (and b!5829402 (not c!1032919)) b!5829399))

(declare-fun m!6759866 () Bool)

(assert (=> b!5829394 m!6759866))

(declare-fun m!6759868 () Bool)

(assert (=> b!5829401 m!6759868))

(declare-fun m!6759870 () Bool)

(assert (=> b!5829399 m!6759870))

(declare-fun m!6759872 () Bool)

(assert (=> b!5829403 m!6759872))

(declare-fun m!6759874 () Bool)

(assert (=> b!5829395 m!6759874))

(declare-fun m!6759876 () Bool)

(assert (=> d!1833285 m!6759876))

(declare-fun m!6759878 () Bool)

(assert (=> d!1833285 m!6759878))

(declare-fun m!6759880 () Bool)

(assert (=> b!5829400 m!6759880))

(declare-fun m!6759882 () Bool)

(assert (=> b!5829402 m!6759882))

(assert (=> b!5829402 m!6759882))

(declare-fun m!6759884 () Bool)

(assert (=> b!5829402 m!6759884))

(assert (=> b!5829078 d!1833285))

(declare-fun d!1833289 () Bool)

(declare-fun c!1032928 () Bool)

(assert (=> d!1833289 (= c!1032928 (isEmpty!35693 s!2326))))

(declare-fun e!3576713 () Bool)

(assert (=> d!1833289 (= (matchZipper!1974 z!1189 s!2326) e!3576713)))

(declare-fun b!5829436 () Bool)

(declare-fun nullableZipper!1747 ((Set Context!10532)) Bool)

(assert (=> b!5829436 (= e!3576713 (nullableZipper!1747 z!1189))))

(declare-fun b!5829437 () Bool)

(declare-fun derivationStepZipper!1909 ((Set Context!10532) C!32034) (Set Context!10532))

(assert (=> b!5829437 (= e!3576713 (matchZipper!1974 (derivationStepZipper!1909 z!1189 (head!12328 s!2326)) (tail!11412 s!2326)))))

(assert (= (and d!1833289 c!1032928) b!5829436))

(assert (= (and d!1833289 (not c!1032928)) b!5829437))

(assert (=> d!1833289 m!6759820))

(declare-fun m!6759886 () Bool)

(assert (=> b!5829436 m!6759886))

(assert (=> b!5829437 m!6759844))

(assert (=> b!5829437 m!6759844))

(declare-fun m!6759888 () Bool)

(assert (=> b!5829437 m!6759888))

(assert (=> b!5829437 m!6759846))

(assert (=> b!5829437 m!6759888))

(assert (=> b!5829437 m!6759846))

(declare-fun m!6759890 () Bool)

(assert (=> b!5829437 m!6759890))

(assert (=> b!5829065 d!1833289))

(declare-fun d!1833291 () Bool)

(assert (=> d!1833291 (not (matchZipper!1974 z!1189 s!2326))))

(declare-fun lt!2302820 () Unit!157035)

(declare-fun choose!44283 ((Set Context!10532) Context!10532 List!63946) Unit!157035)

(assert (=> d!1833291 (= lt!2302820 (choose!44283 z!1189 lt!2302778 s!2326))))

(assert (=> d!1833291 (= z!1189 (set.insert lt!2302778 (as set.empty (Set Context!10532))))))

(assert (=> d!1833291 (= (lemmaZipperStartingWithEmptyLangMatchesNothing!3 z!1189 lt!2302778 s!2326) lt!2302820)))

(declare-fun bs!1374530 () Bool)

(assert (= bs!1374530 d!1833291))

(assert (=> bs!1374530 m!6759734))

(declare-fun m!6759904 () Bool)

(assert (=> bs!1374530 m!6759904))

(assert (=> bs!1374530 m!6759722))

(assert (=> b!5829065 d!1833291))

(declare-fun bs!1374531 () Bool)

(declare-fun d!1833295 () Bool)

(assert (= bs!1374531 (and d!1833295 d!1833263)))

(declare-fun lambda!318962 () Int)

(assert (=> bs!1374531 (= lambda!318962 lambda!318937)))

(declare-fun bs!1374532 () Bool)

(assert (= bs!1374532 (and d!1833295 d!1833269)))

(assert (=> bs!1374532 (= lambda!318962 lambda!318940)))

(declare-fun bs!1374533 () Bool)

(assert (= bs!1374533 (and d!1833295 d!1833271)))

(assert (=> bs!1374533 (= lambda!318962 lambda!318943)))

(declare-fun bs!1374534 () Bool)

(assert (= bs!1374534 (and d!1833295 d!1833285)))

(assert (=> bs!1374534 (= lambda!318962 lambda!318961)))

(assert (=> d!1833295 (= (inv!82953 (h!70271 zl!343)) (forall!14973 (exprs!5766 (h!70271 zl!343)) lambda!318962))))

(declare-fun bs!1374535 () Bool)

(assert (= bs!1374535 d!1833295))

(declare-fun m!6759906 () Bool)

(assert (=> bs!1374535 m!6759906))

(assert (=> b!5829084 d!1833295))

(declare-fun d!1833297 () Bool)

(declare-fun e!3576723 () Bool)

(assert (=> d!1833297 e!3576723))

(declare-fun res!2457072 () Bool)

(assert (=> d!1833297 (=> (not res!2457072) (not e!3576723))))

(declare-fun lt!2302825 () List!63947)

(declare-fun noDuplicate!1752 (List!63947) Bool)

(assert (=> d!1833297 (= res!2457072 (noDuplicate!1752 lt!2302825))))

(declare-fun choose!44284 ((Set Context!10532)) List!63947)

(assert (=> d!1833297 (= lt!2302825 (choose!44284 z!1189))))

(assert (=> d!1833297 (= (toList!9666 z!1189) lt!2302825)))

(declare-fun b!5829454 () Bool)

(declare-fun content!11717 (List!63947) (Set Context!10532))

(assert (=> b!5829454 (= e!3576723 (= (content!11717 lt!2302825) z!1189))))

(assert (= (and d!1833297 res!2457072) b!5829454))

(declare-fun m!6759908 () Bool)

(assert (=> d!1833297 m!6759908))

(declare-fun m!6759910 () Bool)

(assert (=> d!1833297 m!6759910))

(declare-fun m!6759912 () Bool)

(assert (=> b!5829454 m!6759912))

(assert (=> b!5829074 d!1833297))

(declare-fun d!1833299 () Bool)

(declare-fun lt!2302829 () Regex!15882)

(assert (=> d!1833299 (validRegex!7618 lt!2302829)))

(assert (=> d!1833299 (= lt!2302829 (generalisedUnion!1726 (unfocusZipperList!1303 zl!343)))))

(assert (=> d!1833299 (= (unfocusZipper!1624 zl!343) lt!2302829)))

(declare-fun bs!1374537 () Bool)

(assert (= bs!1374537 d!1833299))

(declare-fun m!6759916 () Bool)

(assert (=> bs!1374537 m!6759916))

(assert (=> bs!1374537 m!6759738))

(assert (=> bs!1374537 m!6759738))

(assert (=> bs!1374537 m!6759740))

(assert (=> b!5829066 d!1833299))

(declare-fun condSetEmpty!39421 () Bool)

(assert (=> setNonEmpty!39415 (= condSetEmpty!39421 (= setRest!39415 (as set.empty (Set Context!10532))))))

(declare-fun setRes!39421 () Bool)

(assert (=> setNonEmpty!39415 (= tp!1610314 setRes!39421)))

(declare-fun setIsEmpty!39421 () Bool)

(assert (=> setIsEmpty!39421 setRes!39421))

(declare-fun setElem!39421 () Context!10532)

(declare-fun setNonEmpty!39421 () Bool)

(declare-fun tp!1610358 () Bool)

(declare-fun e!3576726 () Bool)

(assert (=> setNonEmpty!39421 (= setRes!39421 (and tp!1610358 (inv!82953 setElem!39421) e!3576726))))

(declare-fun setRest!39421 () (Set Context!10532))

(assert (=> setNonEmpty!39421 (= setRest!39415 (set.union (set.insert setElem!39421 (as set.empty (Set Context!10532))) setRest!39421))))

(declare-fun b!5829459 () Bool)

(declare-fun tp!1610357 () Bool)

(assert (=> b!5829459 (= e!3576726 tp!1610357)))

(assert (= (and setNonEmpty!39415 condSetEmpty!39421) setIsEmpty!39421))

(assert (= (and setNonEmpty!39415 (not condSetEmpty!39421)) setNonEmpty!39421))

(assert (= setNonEmpty!39421 b!5829459))

(declare-fun m!6759920 () Bool)

(assert (=> setNonEmpty!39421 m!6759920))

(declare-fun b!5829464 () Bool)

(declare-fun e!3576729 () Bool)

(declare-fun tp!1610363 () Bool)

(declare-fun tp!1610364 () Bool)

(assert (=> b!5829464 (= e!3576729 (and tp!1610363 tp!1610364))))

(assert (=> b!5829072 (= tp!1610321 e!3576729)))

(assert (= (and b!5829072 (is-Cons!63821 (exprs!5766 setElem!39415))) b!5829464))

(declare-fun b!5829475 () Bool)

(declare-fun e!3576732 () Bool)

(assert (=> b!5829475 (= e!3576732 tp_is_empty!41017)))

(declare-fun b!5829476 () Bool)

(declare-fun tp!1610378 () Bool)

(declare-fun tp!1610379 () Bool)

(assert (=> b!5829476 (= e!3576732 (and tp!1610378 tp!1610379))))

(assert (=> b!5829077 (= tp!1610315 e!3576732)))

(declare-fun b!5829478 () Bool)

(declare-fun tp!1610377 () Bool)

(declare-fun tp!1610376 () Bool)

(assert (=> b!5829478 (= e!3576732 (and tp!1610377 tp!1610376))))

(declare-fun b!5829477 () Bool)

(declare-fun tp!1610375 () Bool)

(assert (=> b!5829477 (= e!3576732 tp!1610375)))

(assert (= (and b!5829077 (is-ElementMatch!15882 (regOne!32276 r!7292))) b!5829475))

(assert (= (and b!5829077 (is-Concat!24727 (regOne!32276 r!7292))) b!5829476))

(assert (= (and b!5829077 (is-Star!15882 (regOne!32276 r!7292))) b!5829477))

(assert (= (and b!5829077 (is-Union!15882 (regOne!32276 r!7292))) b!5829478))

(declare-fun b!5829479 () Bool)

(declare-fun e!3576735 () Bool)

(assert (=> b!5829479 (= e!3576735 tp_is_empty!41017)))

(declare-fun b!5829480 () Bool)

(declare-fun tp!1610383 () Bool)

(declare-fun tp!1610384 () Bool)

(assert (=> b!5829480 (= e!3576735 (and tp!1610383 tp!1610384))))

(assert (=> b!5829077 (= tp!1610316 e!3576735)))

(declare-fun b!5829482 () Bool)

(declare-fun tp!1610382 () Bool)

(declare-fun tp!1610381 () Bool)

(assert (=> b!5829482 (= e!3576735 (and tp!1610382 tp!1610381))))

(declare-fun b!5829481 () Bool)

(declare-fun tp!1610380 () Bool)

(assert (=> b!5829481 (= e!3576735 tp!1610380)))

(assert (= (and b!5829077 (is-ElementMatch!15882 (regTwo!32276 r!7292))) b!5829479))

(assert (= (and b!5829077 (is-Concat!24727 (regTwo!32276 r!7292))) b!5829480))

(assert (= (and b!5829077 (is-Star!15882 (regTwo!32276 r!7292))) b!5829481))

(assert (= (and b!5829077 (is-Union!15882 (regTwo!32276 r!7292))) b!5829482))

(declare-fun b!5829485 () Bool)

(declare-fun e!3576736 () Bool)

(assert (=> b!5829485 (= e!3576736 tp_is_empty!41017)))

(declare-fun b!5829486 () Bool)

(declare-fun tp!1610388 () Bool)

(declare-fun tp!1610389 () Bool)

(assert (=> b!5829486 (= e!3576736 (and tp!1610388 tp!1610389))))

(assert (=> b!5829082 (= tp!1610317 e!3576736)))

(declare-fun b!5829488 () Bool)

(declare-fun tp!1610387 () Bool)

(declare-fun tp!1610386 () Bool)

(assert (=> b!5829488 (= e!3576736 (and tp!1610387 tp!1610386))))

(declare-fun b!5829487 () Bool)

(declare-fun tp!1610385 () Bool)

(assert (=> b!5829487 (= e!3576736 tp!1610385)))

(assert (= (and b!5829082 (is-ElementMatch!15882 (reg!16211 r!7292))) b!5829485))

(assert (= (and b!5829082 (is-Concat!24727 (reg!16211 r!7292))) b!5829486))

(assert (= (and b!5829082 (is-Star!15882 (reg!16211 r!7292))) b!5829487))

(assert (= (and b!5829082 (is-Union!15882 (reg!16211 r!7292))) b!5829488))

(declare-fun b!5829493 () Bool)

(declare-fun e!3576739 () Bool)

(declare-fun tp!1610392 () Bool)

(assert (=> b!5829493 (= e!3576739 (and tp_is_empty!41017 tp!1610392))))

(assert (=> b!5829079 (= tp!1610313 e!3576739)))

(assert (= (and b!5829079 (is-Cons!63822 (t!377301 s!2326))) b!5829493))

(declare-fun b!5829494 () Bool)

(declare-fun e!3576740 () Bool)

(assert (=> b!5829494 (= e!3576740 tp_is_empty!41017)))

(declare-fun b!5829495 () Bool)

(declare-fun tp!1610396 () Bool)

(declare-fun tp!1610397 () Bool)

(assert (=> b!5829495 (= e!3576740 (and tp!1610396 tp!1610397))))

(assert (=> b!5829069 (= tp!1610320 e!3576740)))

(declare-fun b!5829497 () Bool)

(declare-fun tp!1610395 () Bool)

(declare-fun tp!1610394 () Bool)

(assert (=> b!5829497 (= e!3576740 (and tp!1610395 tp!1610394))))

(declare-fun b!5829496 () Bool)

(declare-fun tp!1610393 () Bool)

(assert (=> b!5829496 (= e!3576740 tp!1610393)))

(assert (= (and b!5829069 (is-ElementMatch!15882 (regOne!32277 r!7292))) b!5829494))

(assert (= (and b!5829069 (is-Concat!24727 (regOne!32277 r!7292))) b!5829495))

(assert (= (and b!5829069 (is-Star!15882 (regOne!32277 r!7292))) b!5829496))

(assert (= (and b!5829069 (is-Union!15882 (regOne!32277 r!7292))) b!5829497))

(declare-fun b!5829499 () Bool)

(declare-fun e!3576742 () Bool)

(assert (=> b!5829499 (= e!3576742 tp_is_empty!41017)))

(declare-fun b!5829500 () Bool)

(declare-fun tp!1610401 () Bool)

(declare-fun tp!1610402 () Bool)

(assert (=> b!5829500 (= e!3576742 (and tp!1610401 tp!1610402))))

(assert (=> b!5829069 (= tp!1610318 e!3576742)))

(declare-fun b!5829502 () Bool)

(declare-fun tp!1610400 () Bool)

(declare-fun tp!1610399 () Bool)

(assert (=> b!5829502 (= e!3576742 (and tp!1610400 tp!1610399))))

(declare-fun b!5829501 () Bool)

(declare-fun tp!1610398 () Bool)

(assert (=> b!5829501 (= e!3576742 tp!1610398)))

(assert (= (and b!5829069 (is-ElementMatch!15882 (regTwo!32277 r!7292))) b!5829499))

(assert (= (and b!5829069 (is-Concat!24727 (regTwo!32277 r!7292))) b!5829500))

(assert (= (and b!5829069 (is-Star!15882 (regTwo!32277 r!7292))) b!5829501))

(assert (= (and b!5829069 (is-Union!15882 (regTwo!32277 r!7292))) b!5829502))

(declare-fun b!5829503 () Bool)

(declare-fun e!3576743 () Bool)

(declare-fun tp!1610403 () Bool)

(declare-fun tp!1610404 () Bool)

(assert (=> b!5829503 (= e!3576743 (and tp!1610403 tp!1610404))))

(assert (=> b!5829080 (= tp!1610319 e!3576743)))

(assert (= (and b!5829080 (is-Cons!63821 (exprs!5766 (h!70271 zl!343)))) b!5829503))

(declare-fun b!5829511 () Bool)

(declare-fun e!3576749 () Bool)

(declare-fun tp!1610409 () Bool)

(assert (=> b!5829511 (= e!3576749 tp!1610409)))

(declare-fun b!5829510 () Bool)

(declare-fun tp!1610410 () Bool)

(declare-fun e!3576748 () Bool)

(assert (=> b!5829510 (= e!3576748 (and (inv!82953 (h!70271 (t!377302 zl!343))) e!3576749 tp!1610410))))

(assert (=> b!5829084 (= tp!1610322 e!3576748)))

(assert (= b!5829510 b!5829511))

(assert (= (and b!5829084 (is-Cons!63823 (t!377302 zl!343))) b!5829510))

(declare-fun m!6759930 () Bool)

(assert (=> b!5829510 m!6759930))

(push 1)

(assert (not d!1833297))

(assert (not b!5829179))

(assert (not b!5829464))

(assert (not b!5829502))

(assert (not b!5829403))

(assert (not b!5829170))

(assert (not b!5829402))

(assert (not b!5829436))

(assert (not b!5829173))

(assert (not bm!455235))

(assert (not b!5829478))

(assert (not b!5829168))

(assert (not b!5829495))

(assert (not bm!455239))

(assert (not d!1833285))

(assert (not b!5829174))

(assert (not d!1833271))

(assert (not b!5829203))

(assert (not b!5829166))

(assert (not b!5829395))

(assert (not bm!455230))

(assert (not d!1833283))

(assert (not b!5829459))

(assert (not b!5829401))

(assert (not b!5829165))

(assert (not b!5829454))

(assert (not b!5829399))

(assert tp_is_empty!41017)

(assert (not b!5829167))

(assert (not b!5829511))

(assert (not b!5829487))

(assert (not bm!455236))

(assert (not b!5829493))

(assert (not b!5829342))

(assert (not b!5829488))

(assert (not setNonEmpty!39421))

(assert (not b!5829503))

(assert (not b!5829343))

(assert (not b!5829352))

(assert (not b!5829350))

(assert (not b!5829486))

(assert (not bm!455228))

(assert (not b!5829260))

(assert (not d!1833289))

(assert (not b!5829501))

(assert (not b!5829496))

(assert (not b!5829477))

(assert (not b!5829400))

(assert (not b!5829264))

(assert (not b!5829437))

(assert (not b!5829510))

(assert (not d!1833279))

(assert (not b!5829481))

(assert (not b!5829500))

(assert (not b!5829497))

(assert (not d!1833291))

(assert (not d!1833263))

(assert (not b!5829482))

(assert (not b!5829480))

(assert (not d!1833295))

(assert (not b!5829344))

(assert (not d!1833269))

(assert (not b!5829476))

(assert (not d!1833299))

(assert (not b!5829345))

(assert (not b!5829394))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

