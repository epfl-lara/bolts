; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!702570 () Bool)

(assert start!702570)

(declare-fun b!7236160 () Bool)

(assert (=> b!7236160 true))

(declare-fun b!7236151 () Bool)

(assert (=> b!7236151 true))

(declare-fun b!7236150 () Bool)

(declare-fun res!2935653 () Bool)

(declare-fun e!4338161 () Bool)

(assert (=> b!7236150 (=> res!2935653 e!4338161)))

(declare-datatypes ((C!37322 0))(
  ( (C!37323 (val!28609 Int)) )
))
(declare-datatypes ((Regex!18524 0))(
  ( (ElementMatch!18524 (c!1343074 C!37322)) (Concat!27369 (regOne!37560 Regex!18524) (regTwo!37560 Regex!18524)) (EmptyExpr!18524) (Star!18524 (reg!18853 Regex!18524)) (EmptyLang!18524) (Union!18524 (regOne!37561 Regex!18524) (regTwo!37561 Regex!18524)) )
))
(declare-datatypes ((List!70180 0))(
  ( (Nil!70056) (Cons!70056 (h!76504 Regex!18524) (t!384231 List!70180)) )
))
(declare-datatypes ((Context!14928 0))(
  ( (Context!14929 (exprs!7964 List!70180)) )
))
(declare-fun lt!2575807 () (Set Context!14928))

(declare-fun lt!2575805 () (Set Context!14928))

(declare-datatypes ((List!70181 0))(
  ( (Nil!70057) (Cons!70057 (h!76505 C!37322) (t!384232 List!70181)) )
))
(declare-fun s1!1971 () List!70181)

(declare-fun derivationStepZipper!3316 ((Set Context!14928) C!37322) (Set Context!14928))

(assert (=> b!7236150 (= res!2935653 (not (= (derivationStepZipper!3316 lt!2575805 (h!76505 s1!1971)) lt!2575807)))))

(declare-fun e!4338168 () Bool)

(declare-fun e!4338164 () Bool)

(assert (=> b!7236151 (= e!4338168 e!4338164)))

(declare-fun res!2935662 () Bool)

(assert (=> b!7236151 (=> res!2935662 e!4338164)))

(declare-fun ct1!232 () Context!14928)

(declare-fun nullable!7837 (Regex!18524) Bool)

(assert (=> b!7236151 (= res!2935662 (not (nullable!7837 (h!76504 (exprs!7964 ct1!232)))))))

(declare-fun lt!2575813 () Context!14928)

(declare-fun lambda!440422 () Int)

(declare-fun flatMap!2728 ((Set Context!14928) Int) (Set Context!14928))

(declare-fun derivationStepZipperUp!2398 (Context!14928 C!37322) (Set Context!14928))

(assert (=> b!7236151 (= (flatMap!2728 lt!2575805 lambda!440422) (derivationStepZipperUp!2398 lt!2575813 (h!76505 s1!1971)))))

(declare-datatypes ((Unit!163586 0))(
  ( (Unit!163587) )
))
(declare-fun lt!2575797 () Unit!163586)

(declare-fun lemmaFlatMapOnSingletonSet!2155 ((Set Context!14928) Context!14928 Int) Unit!163586)

(assert (=> b!7236151 (= lt!2575797 (lemmaFlatMapOnSingletonSet!2155 lt!2575805 lt!2575813 lambda!440422))))

(declare-fun lambda!440420 () Int)

(declare-fun lt!2575806 () Unit!163586)

(declare-fun ct2!328 () Context!14928)

(declare-fun lemmaConcatPreservesForall!1333 (List!70180 List!70180 Int) Unit!163586)

(assert (=> b!7236151 (= lt!2575806 (lemmaConcatPreservesForall!1333 (exprs!7964 ct1!232) (exprs!7964 ct2!328) lambda!440420))))

(declare-fun lt!2575794 () (Set Context!14928))

(assert (=> b!7236151 (= (flatMap!2728 lt!2575794 lambda!440422) (derivationStepZipperUp!2398 ct1!232 (h!76505 s1!1971)))))

(declare-fun lt!2575799 () Unit!163586)

(assert (=> b!7236151 (= lt!2575799 (lemmaFlatMapOnSingletonSet!2155 lt!2575794 ct1!232 lambda!440422))))

(declare-fun lt!2575815 () (Set Context!14928))

(declare-fun lt!2575819 () Context!14928)

(declare-fun derivationStepZipperDown!2568 (Regex!18524 Context!14928 C!37322) (Set Context!14928))

(assert (=> b!7236151 (= lt!2575815 (derivationStepZipperDown!2568 (h!76504 (exprs!7964 ct1!232)) lt!2575819 (h!76505 s1!1971)))))

(declare-fun lt!2575812 () List!70180)

(declare-fun tail!14161 (List!70180) List!70180)

(assert (=> b!7236151 (= lt!2575819 (Context!14929 (tail!14161 lt!2575812)))))

(declare-fun b!7236153 () Bool)

(declare-fun e!4338167 () Bool)

(declare-fun tp!2034609 () Bool)

(assert (=> b!7236153 (= e!4338167 tp!2034609)))

(declare-fun b!7236154 () Bool)

(declare-fun e!4338162 () Bool)

(assert (=> b!7236154 (= e!4338164 e!4338162)))

(declare-fun res!2935656 () Bool)

(assert (=> b!7236154 (=> res!2935656 e!4338162)))

(declare-fun lt!2575800 () (Set Context!14928))

(declare-fun lt!2575809 () (Set Context!14928))

(declare-fun lt!2575804 () (Set Context!14928))

(assert (=> b!7236154 (= res!2935656 (or (not (= lt!2575800 lt!2575804)) (not (= lt!2575809 lt!2575800))))))

(declare-fun lt!2575802 () (Set Context!14928))

(declare-fun lt!2575820 () (Set Context!14928))

(assert (=> b!7236154 (= lt!2575804 (set.union lt!2575802 lt!2575820))))

(declare-fun lt!2575811 () Context!14928)

(assert (=> b!7236154 (= lt!2575820 (derivationStepZipperUp!2398 lt!2575811 (h!76505 s1!1971)))))

(declare-fun b!7236155 () Bool)

(declare-fun forall!17359 (List!70180 Int) Bool)

(assert (=> b!7236155 (= e!4338161 (forall!17359 (exprs!7964 ct1!232) lambda!440420))))

(declare-fun e!4338170 () Bool)

(declare-fun matchZipper!3434 ((Set Context!14928) List!70181) Bool)

(assert (=> b!7236155 (= (matchZipper!3434 lt!2575804 (t!384232 s1!1971)) e!4338170)))

(declare-fun res!2935655 () Bool)

(assert (=> b!7236155 (=> res!2935655 e!4338170)))

(assert (=> b!7236155 (= res!2935655 (matchZipper!3434 lt!2575802 (t!384232 s1!1971)))))

(declare-fun lt!2575818 () Unit!163586)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1671 ((Set Context!14928) (Set Context!14928) List!70181) Unit!163586)

(assert (=> b!7236155 (= lt!2575818 (lemmaZipperConcatMatchesSameAsBothZippers!1671 lt!2575802 lt!2575820 (t!384232 s1!1971)))))

(declare-fun b!7236156 () Bool)

(assert (=> b!7236156 (= e!4338170 (matchZipper!3434 lt!2575820 (t!384232 s1!1971)))))

(declare-fun b!7236157 () Bool)

(declare-fun e!4338169 () Bool)

(declare-fun tp_is_empty!46513 () Bool)

(declare-fun tp!2034612 () Bool)

(assert (=> b!7236157 (= e!4338169 (and tp_is_empty!46513 tp!2034612))))

(declare-fun b!7236158 () Bool)

(declare-fun e!4338171 () Bool)

(assert (=> b!7236158 (= e!4338171 e!4338168)))

(declare-fun res!2935661 () Bool)

(assert (=> b!7236158 (=> res!2935661 e!4338168)))

(declare-fun isEmpty!40375 (List!70180) Bool)

(assert (=> b!7236158 (= res!2935661 (isEmpty!40375 lt!2575812))))

(declare-fun lt!2575798 () Unit!163586)

(assert (=> b!7236158 (= lt!2575798 (lemmaConcatPreservesForall!1333 (exprs!7964 ct1!232) (exprs!7964 ct2!328) lambda!440420))))

(assert (=> b!7236158 (= lt!2575807 (derivationStepZipperUp!2398 lt!2575813 (h!76505 s1!1971)))))

(declare-fun lt!2575795 () Unit!163586)

(assert (=> b!7236158 (= lt!2575795 (lemmaConcatPreservesForall!1333 (exprs!7964 ct1!232) (exprs!7964 ct2!328) lambda!440420))))

(assert (=> b!7236158 (= lt!2575802 (derivationStepZipperDown!2568 (h!76504 (exprs!7964 ct1!232)) lt!2575811 (h!76505 s1!1971)))))

(assert (=> b!7236158 (= lt!2575811 (Context!14929 (tail!14161 (exprs!7964 ct1!232))))))

(declare-fun b!7236159 () Bool)

(declare-fun e!4338165 () Bool)

(declare-fun e!4338172 () Bool)

(assert (=> b!7236159 (= e!4338165 e!4338172)))

(declare-fun res!2935658 () Bool)

(assert (=> b!7236159 (=> (not res!2935658) (not e!4338172))))

(assert (=> b!7236159 (= res!2935658 (and (not (is-Nil!70056 (exprs!7964 ct1!232))) (is-Cons!70057 s1!1971)))))

(assert (=> b!7236159 (= lt!2575805 (set.insert lt!2575813 (as set.empty (Set Context!14928))))))

(assert (=> b!7236159 (= lt!2575813 (Context!14929 lt!2575812))))

(declare-fun ++!16348 (List!70180 List!70180) List!70180)

(assert (=> b!7236159 (= lt!2575812 (++!16348 (exprs!7964 ct1!232) (exprs!7964 ct2!328)))))

(declare-fun lt!2575814 () Unit!163586)

(assert (=> b!7236159 (= lt!2575814 (lemmaConcatPreservesForall!1333 (exprs!7964 ct1!232) (exprs!7964 ct2!328) lambda!440420))))

(declare-fun e!4338166 () Bool)

(declare-fun e!4338160 () Bool)

(assert (=> b!7236160 (= e!4338166 (not e!4338160))))

(declare-fun res!2935652 () Bool)

(assert (=> b!7236160 (=> res!2935652 e!4338160)))

(declare-fun lambda!440421 () Int)

(declare-fun exists!4191 ((Set Context!14928) Int) Bool)

(assert (=> b!7236160 (= res!2935652 (not (exists!4191 lt!2575809 lambda!440421)))))

(declare-datatypes ((List!70182 0))(
  ( (Nil!70058) (Cons!70058 (h!76506 Context!14928) (t!384233 List!70182)) )
))
(declare-fun lt!2575803 () List!70182)

(declare-fun exists!4192 (List!70182 Int) Bool)

(assert (=> b!7236160 (exists!4192 lt!2575803 lambda!440421)))

(declare-fun lt!2575816 () Unit!163586)

(declare-fun lemmaZipperMatchesExistsMatchingContext!667 (List!70182 List!70181) Unit!163586)

(assert (=> b!7236160 (= lt!2575816 (lemmaZipperMatchesExistsMatchingContext!667 lt!2575803 (t!384232 s1!1971)))))

(declare-fun toList!11381 ((Set Context!14928)) List!70182)

(assert (=> b!7236160 (= lt!2575803 (toList!11381 lt!2575809))))

(declare-fun b!7236161 () Bool)

(declare-fun res!2935651 () Bool)

(assert (=> b!7236161 (=> (not res!2935651) (not e!4338165))))

(declare-fun s2!1849 () List!70181)

(assert (=> b!7236161 (= res!2935651 (matchZipper!3434 (set.insert ct2!328 (as set.empty (Set Context!14928))) s2!1849))))

(declare-fun b!7236152 () Bool)

(assert (=> b!7236152 (= e!4338160 e!4338171)))

(declare-fun res!2935659 () Bool)

(assert (=> b!7236152 (=> res!2935659 e!4338171)))

(assert (=> b!7236152 (= res!2935659 (isEmpty!40375 (exprs!7964 ct1!232)))))

(assert (=> b!7236152 (= lt!2575800 (derivationStepZipperUp!2398 ct1!232 (h!76505 s1!1971)))))

(declare-fun lt!2575810 () Context!14928)

(declare-fun lt!2575801 () Unit!163586)

(assert (=> b!7236152 (= lt!2575801 (lemmaConcatPreservesForall!1333 (exprs!7964 lt!2575810) (exprs!7964 ct2!328) lambda!440420))))

(declare-fun ++!16349 (List!70181 List!70181) List!70181)

(assert (=> b!7236152 (matchZipper!3434 (set.insert (Context!14929 (++!16348 (exprs!7964 lt!2575810) (exprs!7964 ct2!328))) (as set.empty (Set Context!14928))) (++!16349 (t!384232 s1!1971) s2!1849))))

(declare-fun lt!2575796 () Unit!163586)

(assert (=> b!7236152 (= lt!2575796 (lemmaConcatPreservesForall!1333 (exprs!7964 lt!2575810) (exprs!7964 ct2!328) lambda!440420))))

(declare-fun lt!2575817 () Unit!163586)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!315 (Context!14928 Context!14928 List!70181 List!70181) Unit!163586)

(assert (=> b!7236152 (= lt!2575817 (lemmaConcatenateContextMatchesConcatOfStrings!315 lt!2575810 ct2!328 (t!384232 s1!1971) s2!1849))))

(declare-fun getWitness!2059 ((Set Context!14928) Int) Context!14928)

(assert (=> b!7236152 (= lt!2575810 (getWitness!2059 lt!2575809 lambda!440421))))

(declare-fun res!2935660 () Bool)

(assert (=> start!702570 (=> (not res!2935660) (not e!4338165))))

(assert (=> start!702570 (= res!2935660 (matchZipper!3434 lt!2575794 s1!1971))))

(assert (=> start!702570 (= lt!2575794 (set.insert ct1!232 (as set.empty (Set Context!14928))))))

(assert (=> start!702570 e!4338165))

(declare-fun inv!89321 (Context!14928) Bool)

(assert (=> start!702570 (and (inv!89321 ct1!232) e!4338167)))

(declare-fun e!4338163 () Bool)

(assert (=> start!702570 e!4338163))

(assert (=> start!702570 e!4338169))

(declare-fun e!4338159 () Bool)

(assert (=> start!702570 (and (inv!89321 ct2!328) e!4338159)))

(declare-fun b!7236162 () Bool)

(declare-fun tp!2034611 () Bool)

(assert (=> b!7236162 (= e!4338163 (and tp_is_empty!46513 tp!2034611))))

(declare-fun b!7236163 () Bool)

(assert (=> b!7236163 (= e!4338162 e!4338161)))

(declare-fun res!2935654 () Bool)

(assert (=> b!7236163 (=> res!2935654 e!4338161)))

(assert (=> b!7236163 (= res!2935654 (not (= lt!2575807 (set.union lt!2575815 (derivationStepZipperUp!2398 lt!2575819 (h!76505 s1!1971))))))))

(declare-fun lt!2575808 () Unit!163586)

(assert (=> b!7236163 (= lt!2575808 (lemmaConcatPreservesForall!1333 (exprs!7964 ct1!232) (exprs!7964 ct2!328) lambda!440420))))

(declare-fun b!7236164 () Bool)

(declare-fun tp!2034610 () Bool)

(assert (=> b!7236164 (= e!4338159 tp!2034610)))

(declare-fun b!7236165 () Bool)

(assert (=> b!7236165 (= e!4338172 e!4338166)))

(declare-fun res!2935657 () Bool)

(assert (=> b!7236165 (=> (not res!2935657) (not e!4338166))))

(assert (=> b!7236165 (= res!2935657 (matchZipper!3434 lt!2575809 (t!384232 s1!1971)))))

(assert (=> b!7236165 (= lt!2575809 (derivationStepZipper!3316 lt!2575794 (h!76505 s1!1971)))))

(assert (= (and start!702570 res!2935660) b!7236161))

(assert (= (and b!7236161 res!2935651) b!7236159))

(assert (= (and b!7236159 res!2935658) b!7236165))

(assert (= (and b!7236165 res!2935657) b!7236160))

(assert (= (and b!7236160 (not res!2935652)) b!7236152))

(assert (= (and b!7236152 (not res!2935659)) b!7236158))

(assert (= (and b!7236158 (not res!2935661)) b!7236151))

(assert (= (and b!7236151 (not res!2935662)) b!7236154))

(assert (= (and b!7236154 (not res!2935656)) b!7236163))

(assert (= (and b!7236163 (not res!2935654)) b!7236150))

(assert (= (and b!7236150 (not res!2935653)) b!7236155))

(assert (= (and b!7236155 (not res!2935655)) b!7236156))

(assert (= start!702570 b!7236153))

(assert (= (and start!702570 (is-Cons!70057 s1!1971)) b!7236162))

(assert (= (and start!702570 (is-Cons!70057 s2!1849)) b!7236157))

(assert (= start!702570 b!7236164))

(declare-fun m!7907016 () Bool)

(assert (=> b!7236158 m!7907016))

(declare-fun m!7907018 () Bool)

(assert (=> b!7236158 m!7907018))

(declare-fun m!7907020 () Bool)

(assert (=> b!7236158 m!7907020))

(declare-fun m!7907022 () Bool)

(assert (=> b!7236158 m!7907022))

(assert (=> b!7236158 m!7907018))

(declare-fun m!7907024 () Bool)

(assert (=> b!7236158 m!7907024))

(declare-fun m!7907026 () Bool)

(assert (=> b!7236156 m!7907026))

(declare-fun m!7907028 () Bool)

(assert (=> start!702570 m!7907028))

(declare-fun m!7907030 () Bool)

(assert (=> start!702570 m!7907030))

(declare-fun m!7907032 () Bool)

(assert (=> start!702570 m!7907032))

(declare-fun m!7907034 () Bool)

(assert (=> start!702570 m!7907034))

(declare-fun m!7907036 () Bool)

(assert (=> b!7236165 m!7907036))

(declare-fun m!7907038 () Bool)

(assert (=> b!7236165 m!7907038))

(declare-fun m!7907040 () Bool)

(assert (=> b!7236163 m!7907040))

(assert (=> b!7236163 m!7907018))

(declare-fun m!7907042 () Bool)

(assert (=> b!7236152 m!7907042))

(declare-fun m!7907044 () Bool)

(assert (=> b!7236152 m!7907044))

(declare-fun m!7907046 () Bool)

(assert (=> b!7236152 m!7907046))

(declare-fun m!7907048 () Bool)

(assert (=> b!7236152 m!7907048))

(declare-fun m!7907050 () Bool)

(assert (=> b!7236152 m!7907050))

(assert (=> b!7236152 m!7907048))

(declare-fun m!7907052 () Bool)

(assert (=> b!7236152 m!7907052))

(declare-fun m!7907054 () Bool)

(assert (=> b!7236152 m!7907054))

(declare-fun m!7907056 () Bool)

(assert (=> b!7236152 m!7907056))

(assert (=> b!7236152 m!7907042))

(assert (=> b!7236152 m!7907050))

(declare-fun m!7907058 () Bool)

(assert (=> b!7236152 m!7907058))

(declare-fun m!7907060 () Bool)

(assert (=> b!7236151 m!7907060))

(assert (=> b!7236151 m!7907052))

(declare-fun m!7907062 () Bool)

(assert (=> b!7236151 m!7907062))

(declare-fun m!7907064 () Bool)

(assert (=> b!7236151 m!7907064))

(declare-fun m!7907066 () Bool)

(assert (=> b!7236151 m!7907066))

(declare-fun m!7907068 () Bool)

(assert (=> b!7236151 m!7907068))

(declare-fun m!7907070 () Bool)

(assert (=> b!7236151 m!7907070))

(assert (=> b!7236151 m!7907018))

(assert (=> b!7236151 m!7907024))

(declare-fun m!7907072 () Bool)

(assert (=> b!7236151 m!7907072))

(declare-fun m!7907074 () Bool)

(assert (=> b!7236155 m!7907074))

(declare-fun m!7907076 () Bool)

(assert (=> b!7236155 m!7907076))

(declare-fun m!7907078 () Bool)

(assert (=> b!7236155 m!7907078))

(declare-fun m!7907080 () Bool)

(assert (=> b!7236155 m!7907080))

(declare-fun m!7907082 () Bool)

(assert (=> b!7236154 m!7907082))

(declare-fun m!7907084 () Bool)

(assert (=> b!7236159 m!7907084))

(declare-fun m!7907086 () Bool)

(assert (=> b!7236159 m!7907086))

(assert (=> b!7236159 m!7907018))

(declare-fun m!7907088 () Bool)

(assert (=> b!7236160 m!7907088))

(declare-fun m!7907090 () Bool)

(assert (=> b!7236160 m!7907090))

(declare-fun m!7907092 () Bool)

(assert (=> b!7236160 m!7907092))

(declare-fun m!7907094 () Bool)

(assert (=> b!7236160 m!7907094))

(declare-fun m!7907096 () Bool)

(assert (=> b!7236150 m!7907096))

(declare-fun m!7907098 () Bool)

(assert (=> b!7236161 m!7907098))

(assert (=> b!7236161 m!7907098))

(declare-fun m!7907100 () Bool)

(assert (=> b!7236161 m!7907100))

(push 1)

(assert (not start!702570))

(assert (not b!7236161))

(assert (not b!7236165))

(assert (not b!7236151))

(assert (not b!7236159))

(assert (not b!7236154))

(assert (not b!7236157))

(assert (not b!7236152))

(assert (not b!7236155))

(assert (not b!7236163))

(assert (not b!7236156))

(assert tp_is_empty!46513)

(assert (not b!7236153))

(assert (not b!7236150))

(assert (not b!7236160))

(assert (not b!7236162))

(assert (not b!7236164))

(assert (not b!7236158))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7236231 () Bool)

(declare-fun e!4338220 () List!70180)

(assert (=> b!7236231 (= e!4338220 (Cons!70056 (h!76504 (exprs!7964 ct1!232)) (++!16348 (t!384231 (exprs!7964 ct1!232)) (exprs!7964 ct2!328))))))

(declare-fun b!7236230 () Bool)

(assert (=> b!7236230 (= e!4338220 (exprs!7964 ct2!328))))

(declare-fun b!7236233 () Bool)

(declare-fun lt!2575904 () List!70180)

(declare-fun e!4338219 () Bool)

(assert (=> b!7236233 (= e!4338219 (or (not (= (exprs!7964 ct2!328) Nil!70056)) (= lt!2575904 (exprs!7964 ct1!232))))))

(declare-fun d!2247727 () Bool)

(assert (=> d!2247727 e!4338219))

(declare-fun res!2935704 () Bool)

(assert (=> d!2247727 (=> (not res!2935704) (not e!4338219))))

(declare-fun content!14438 (List!70180) (Set Regex!18524))

(assert (=> d!2247727 (= res!2935704 (= (content!14438 lt!2575904) (set.union (content!14438 (exprs!7964 ct1!232)) (content!14438 (exprs!7964 ct2!328)))))))

(assert (=> d!2247727 (= lt!2575904 e!4338220)))

(declare-fun c!1343088 () Bool)

(assert (=> d!2247727 (= c!1343088 (is-Nil!70056 (exprs!7964 ct1!232)))))

(assert (=> d!2247727 (= (++!16348 (exprs!7964 ct1!232) (exprs!7964 ct2!328)) lt!2575904)))

(declare-fun b!7236232 () Bool)

(declare-fun res!2935703 () Bool)

(assert (=> b!7236232 (=> (not res!2935703) (not e!4338219))))

(declare-fun size!41592 (List!70180) Int)

(assert (=> b!7236232 (= res!2935703 (= (size!41592 lt!2575904) (+ (size!41592 (exprs!7964 ct1!232)) (size!41592 (exprs!7964 ct2!328)))))))

(assert (= (and d!2247727 c!1343088) b!7236230))

(assert (= (and d!2247727 (not c!1343088)) b!7236231))

(assert (= (and d!2247727 res!2935704) b!7236232))

(assert (= (and b!7236232 res!2935703) b!7236233))

(declare-fun m!7907188 () Bool)

(assert (=> b!7236231 m!7907188))

(declare-fun m!7907190 () Bool)

(assert (=> d!2247727 m!7907190))

(declare-fun m!7907192 () Bool)

(assert (=> d!2247727 m!7907192))

(declare-fun m!7907194 () Bool)

(assert (=> d!2247727 m!7907194))

(declare-fun m!7907196 () Bool)

(assert (=> b!7236232 m!7907196))

(declare-fun m!7907198 () Bool)

(assert (=> b!7236232 m!7907198))

(declare-fun m!7907200 () Bool)

(assert (=> b!7236232 m!7907200))

(assert (=> b!7236159 d!2247727))

(declare-fun d!2247729 () Bool)

(assert (=> d!2247729 (forall!17359 (++!16348 (exprs!7964 ct1!232) (exprs!7964 ct2!328)) lambda!440420)))

(declare-fun lt!2575907 () Unit!163586)

(declare-fun choose!55639 (List!70180 List!70180 Int) Unit!163586)

(assert (=> d!2247729 (= lt!2575907 (choose!55639 (exprs!7964 ct1!232) (exprs!7964 ct2!328) lambda!440420))))

(assert (=> d!2247729 (forall!17359 (exprs!7964 ct1!232) lambda!440420)))

(assert (=> d!2247729 (= (lemmaConcatPreservesForall!1333 (exprs!7964 ct1!232) (exprs!7964 ct2!328) lambda!440420) lt!2575907)))

(declare-fun bs!1903407 () Bool)

(assert (= bs!1903407 d!2247729))

(assert (=> bs!1903407 m!7907086))

(assert (=> bs!1903407 m!7907086))

(declare-fun m!7907202 () Bool)

(assert (=> bs!1903407 m!7907202))

(declare-fun m!7907204 () Bool)

(assert (=> bs!1903407 m!7907204))

(assert (=> bs!1903407 m!7907074))

(assert (=> b!7236159 d!2247729))

(declare-fun d!2247731 () Bool)

(declare-fun c!1343091 () Bool)

(declare-fun isEmpty!40377 (List!70181) Bool)

(assert (=> d!2247731 (= c!1343091 (isEmpty!40377 s2!1849))))

(declare-fun e!4338223 () Bool)

(assert (=> d!2247731 (= (matchZipper!3434 (set.insert ct2!328 (as set.empty (Set Context!14928))) s2!1849) e!4338223)))

(declare-fun b!7236238 () Bool)

(declare-fun nullableZipper!2830 ((Set Context!14928)) Bool)

(assert (=> b!7236238 (= e!4338223 (nullableZipper!2830 (set.insert ct2!328 (as set.empty (Set Context!14928)))))))

(declare-fun b!7236239 () Bool)

(declare-fun head!14819 (List!70181) C!37322)

(declare-fun tail!14163 (List!70181) List!70181)

(assert (=> b!7236239 (= e!4338223 (matchZipper!3434 (derivationStepZipper!3316 (set.insert ct2!328 (as set.empty (Set Context!14928))) (head!14819 s2!1849)) (tail!14163 s2!1849)))))

(assert (= (and d!2247731 c!1343091) b!7236238))

(assert (= (and d!2247731 (not c!1343091)) b!7236239))

(declare-fun m!7907206 () Bool)

(assert (=> d!2247731 m!7907206))

(assert (=> b!7236238 m!7907098))

(declare-fun m!7907208 () Bool)

(assert (=> b!7236238 m!7907208))

(declare-fun m!7907210 () Bool)

(assert (=> b!7236239 m!7907210))

(assert (=> b!7236239 m!7907098))

(assert (=> b!7236239 m!7907210))

(declare-fun m!7907212 () Bool)

(assert (=> b!7236239 m!7907212))

(declare-fun m!7907214 () Bool)

(assert (=> b!7236239 m!7907214))

(assert (=> b!7236239 m!7907212))

(assert (=> b!7236239 m!7907214))

(declare-fun m!7907216 () Bool)

(assert (=> b!7236239 m!7907216))

(assert (=> b!7236161 d!2247731))

(declare-fun bs!1903408 () Bool)

(declare-fun d!2247733 () Bool)

(assert (= bs!1903408 (and d!2247733 b!7236151)))

(declare-fun lambda!440454 () Int)

(assert (=> bs!1903408 (= lambda!440454 lambda!440422)))

(assert (=> d!2247733 true))

(assert (=> d!2247733 (= (derivationStepZipper!3316 lt!2575805 (h!76505 s1!1971)) (flatMap!2728 lt!2575805 lambda!440454))))

(declare-fun bs!1903409 () Bool)

(assert (= bs!1903409 d!2247733))

(declare-fun m!7907218 () Bool)

(assert (=> bs!1903409 m!7907218))

(assert (=> b!7236150 d!2247733))

(declare-fun d!2247735 () Bool)

(declare-fun c!1343094 () Bool)

(assert (=> d!2247735 (= c!1343094 (isEmpty!40377 s1!1971))))

(declare-fun e!4338224 () Bool)

(assert (=> d!2247735 (= (matchZipper!3434 lt!2575794 s1!1971) e!4338224)))

(declare-fun b!7236242 () Bool)

(assert (=> b!7236242 (= e!4338224 (nullableZipper!2830 lt!2575794))))

(declare-fun b!7236243 () Bool)

(assert (=> b!7236243 (= e!4338224 (matchZipper!3434 (derivationStepZipper!3316 lt!2575794 (head!14819 s1!1971)) (tail!14163 s1!1971)))))

(assert (= (and d!2247735 c!1343094) b!7236242))

(assert (= (and d!2247735 (not c!1343094)) b!7236243))

(declare-fun m!7907220 () Bool)

(assert (=> d!2247735 m!7907220))

(declare-fun m!7907222 () Bool)

(assert (=> b!7236242 m!7907222))

(declare-fun m!7907224 () Bool)

(assert (=> b!7236243 m!7907224))

(assert (=> b!7236243 m!7907224))

(declare-fun m!7907226 () Bool)

(assert (=> b!7236243 m!7907226))

(declare-fun m!7907228 () Bool)

(assert (=> b!7236243 m!7907228))

(assert (=> b!7236243 m!7907226))

(assert (=> b!7236243 m!7907228))

(declare-fun m!7907230 () Bool)

(assert (=> b!7236243 m!7907230))

(assert (=> start!702570 d!2247735))

(declare-fun bs!1903410 () Bool)

(declare-fun d!2247737 () Bool)

(assert (= bs!1903410 (and d!2247737 b!7236159)))

(declare-fun lambda!440457 () Int)

(assert (=> bs!1903410 (= lambda!440457 lambda!440420)))

(assert (=> d!2247737 (= (inv!89321 ct1!232) (forall!17359 (exprs!7964 ct1!232) lambda!440457))))

(declare-fun bs!1903411 () Bool)

(assert (= bs!1903411 d!2247737))

(declare-fun m!7907232 () Bool)

(assert (=> bs!1903411 m!7907232))

(assert (=> start!702570 d!2247737))

(declare-fun bs!1903412 () Bool)

(declare-fun d!2247739 () Bool)

(assert (= bs!1903412 (and d!2247739 b!7236159)))

(declare-fun lambda!440458 () Int)

(assert (=> bs!1903412 (= lambda!440458 lambda!440420)))

(declare-fun bs!1903413 () Bool)

(assert (= bs!1903413 (and d!2247739 d!2247737)))

(assert (=> bs!1903413 (= lambda!440458 lambda!440457)))

(assert (=> d!2247739 (= (inv!89321 ct2!328) (forall!17359 (exprs!7964 ct2!328) lambda!440458))))

(declare-fun bs!1903414 () Bool)

(assert (= bs!1903414 d!2247739))

(declare-fun m!7907234 () Bool)

(assert (=> bs!1903414 m!7907234))

(assert (=> start!702570 d!2247739))

(declare-fun d!2247741 () Bool)

(declare-fun lt!2575910 () Bool)

(assert (=> d!2247741 (= lt!2575910 (exists!4192 (toList!11381 lt!2575809) lambda!440421))))

(declare-fun choose!55640 ((Set Context!14928) Int) Bool)

(assert (=> d!2247741 (= lt!2575910 (choose!55640 lt!2575809 lambda!440421))))

(assert (=> d!2247741 (= (exists!4191 lt!2575809 lambda!440421) lt!2575910)))

(declare-fun bs!1903415 () Bool)

(assert (= bs!1903415 d!2247741))

(assert (=> bs!1903415 m!7907094))

(assert (=> bs!1903415 m!7907094))

(declare-fun m!7907236 () Bool)

(assert (=> bs!1903415 m!7907236))

(declare-fun m!7907238 () Bool)

(assert (=> bs!1903415 m!7907238))

(assert (=> b!7236160 d!2247741))

(declare-fun bs!1903416 () Bool)

(declare-fun d!2247743 () Bool)

(assert (= bs!1903416 (and d!2247743 b!7236160)))

(declare-fun lambda!440461 () Int)

(assert (=> bs!1903416 (not (= lambda!440461 lambda!440421))))

(assert (=> d!2247743 true))

(declare-fun order!28859 () Int)

(declare-fun dynLambda!28581 (Int Int) Int)

(assert (=> d!2247743 (< (dynLambda!28581 order!28859 lambda!440421) (dynLambda!28581 order!28859 lambda!440461))))

(declare-fun forall!17361 (List!70182 Int) Bool)

(assert (=> d!2247743 (= (exists!4192 lt!2575803 lambda!440421) (not (forall!17361 lt!2575803 lambda!440461)))))

(declare-fun bs!1903417 () Bool)

(assert (= bs!1903417 d!2247743))

(declare-fun m!7907240 () Bool)

(assert (=> bs!1903417 m!7907240))

(assert (=> b!7236160 d!2247743))

(declare-fun bs!1903418 () Bool)

(declare-fun d!2247745 () Bool)

(assert (= bs!1903418 (and d!2247745 b!7236160)))

(declare-fun lambda!440464 () Int)

(assert (=> bs!1903418 (= lambda!440464 lambda!440421)))

(declare-fun bs!1903419 () Bool)

(assert (= bs!1903419 (and d!2247745 d!2247743)))

(assert (=> bs!1903419 (not (= lambda!440464 lambda!440461))))

(assert (=> d!2247745 true))

(assert (=> d!2247745 (exists!4192 lt!2575803 lambda!440464)))

(declare-fun lt!2575913 () Unit!163586)

(declare-fun choose!55641 (List!70182 List!70181) Unit!163586)

(assert (=> d!2247745 (= lt!2575913 (choose!55641 lt!2575803 (t!384232 s1!1971)))))

(declare-fun content!14439 (List!70182) (Set Context!14928))

(assert (=> d!2247745 (matchZipper!3434 (content!14439 lt!2575803) (t!384232 s1!1971))))

(assert (=> d!2247745 (= (lemmaZipperMatchesExistsMatchingContext!667 lt!2575803 (t!384232 s1!1971)) lt!2575913)))

(declare-fun bs!1903420 () Bool)

(assert (= bs!1903420 d!2247745))

(declare-fun m!7907242 () Bool)

(assert (=> bs!1903420 m!7907242))

(declare-fun m!7907244 () Bool)

(assert (=> bs!1903420 m!7907244))

(declare-fun m!7907246 () Bool)

(assert (=> bs!1903420 m!7907246))

(assert (=> bs!1903420 m!7907246))

(declare-fun m!7907248 () Bool)

(assert (=> bs!1903420 m!7907248))

(assert (=> b!7236160 d!2247745))

(declare-fun d!2247747 () Bool)

(declare-fun e!4338227 () Bool)

(assert (=> d!2247747 e!4338227))

(declare-fun res!2935707 () Bool)

(assert (=> d!2247747 (=> (not res!2935707) (not e!4338227))))

(declare-fun lt!2575916 () List!70182)

(declare-fun noDuplicate!2940 (List!70182) Bool)

(assert (=> d!2247747 (= res!2935707 (noDuplicate!2940 lt!2575916))))

(declare-fun choose!55642 ((Set Context!14928)) List!70182)

(assert (=> d!2247747 (= lt!2575916 (choose!55642 lt!2575809))))

(assert (=> d!2247747 (= (toList!11381 lt!2575809) lt!2575916)))

(declare-fun b!7236248 () Bool)

(assert (=> b!7236248 (= e!4338227 (= (content!14439 lt!2575916) lt!2575809))))

(assert (= (and d!2247747 res!2935707) b!7236248))

(declare-fun m!7907250 () Bool)

(assert (=> d!2247747 m!7907250))

(declare-fun m!7907252 () Bool)

(assert (=> d!2247747 m!7907252))

(declare-fun m!7907254 () Bool)

(assert (=> b!7236248 m!7907254))

(assert (=> b!7236160 d!2247747))

(declare-fun d!2247749 () Bool)

(declare-fun c!1343097 () Bool)

(assert (=> d!2247749 (= c!1343097 (isEmpty!40377 (t!384232 s1!1971)))))

(declare-fun e!4338228 () Bool)

(assert (=> d!2247749 (= (matchZipper!3434 lt!2575820 (t!384232 s1!1971)) e!4338228)))

(declare-fun b!7236249 () Bool)

(assert (=> b!7236249 (= e!4338228 (nullableZipper!2830 lt!2575820))))

(declare-fun b!7236250 () Bool)

(assert (=> b!7236250 (= e!4338228 (matchZipper!3434 (derivationStepZipper!3316 lt!2575820 (head!14819 (t!384232 s1!1971))) (tail!14163 (t!384232 s1!1971))))))

(assert (= (and d!2247749 c!1343097) b!7236249))

(assert (= (and d!2247749 (not c!1343097)) b!7236250))

(declare-fun m!7907256 () Bool)

(assert (=> d!2247749 m!7907256))

(declare-fun m!7907258 () Bool)

(assert (=> b!7236249 m!7907258))

(declare-fun m!7907260 () Bool)

(assert (=> b!7236250 m!7907260))

(assert (=> b!7236250 m!7907260))

(declare-fun m!7907262 () Bool)

(assert (=> b!7236250 m!7907262))

(declare-fun m!7907264 () Bool)

(assert (=> b!7236250 m!7907264))

(assert (=> b!7236250 m!7907262))

(assert (=> b!7236250 m!7907264))

(declare-fun m!7907266 () Bool)

(assert (=> b!7236250 m!7907266))

(assert (=> b!7236156 d!2247749))

(declare-fun d!2247751 () Bool)

(assert (=> d!2247751 (= (tail!14161 (exprs!7964 ct1!232)) (t!384231 (exprs!7964 ct1!232)))))

(assert (=> b!7236158 d!2247751))

(declare-fun d!2247753 () Bool)

(assert (=> d!2247753 (= (isEmpty!40375 lt!2575812) (is-Nil!70056 lt!2575812))))

(assert (=> b!7236158 d!2247753))

(assert (=> b!7236158 d!2247729))

(declare-fun b!7236261 () Bool)

(declare-fun e!4338236 () Bool)

(assert (=> b!7236261 (= e!4338236 (nullable!7837 (h!76504 (exprs!7964 lt!2575813))))))

(declare-fun bm!658818 () Bool)

(declare-fun call!658823 () (Set Context!14928))

(assert (=> bm!658818 (= call!658823 (derivationStepZipperDown!2568 (h!76504 (exprs!7964 lt!2575813)) (Context!14929 (t!384231 (exprs!7964 lt!2575813))) (h!76505 s1!1971)))))

(declare-fun d!2247755 () Bool)

(declare-fun c!1343103 () Bool)

(assert (=> d!2247755 (= c!1343103 e!4338236)))

(declare-fun res!2935710 () Bool)

(assert (=> d!2247755 (=> (not res!2935710) (not e!4338236))))

(assert (=> d!2247755 (= res!2935710 (is-Cons!70056 (exprs!7964 lt!2575813)))))

(declare-fun e!4338235 () (Set Context!14928))

(assert (=> d!2247755 (= (derivationStepZipperUp!2398 lt!2575813 (h!76505 s1!1971)) e!4338235)))

(declare-fun b!7236262 () Bool)

(assert (=> b!7236262 (= e!4338235 (set.union call!658823 (derivationStepZipperUp!2398 (Context!14929 (t!384231 (exprs!7964 lt!2575813))) (h!76505 s1!1971))))))

(declare-fun b!7236263 () Bool)

(declare-fun e!4338237 () (Set Context!14928))

(assert (=> b!7236263 (= e!4338237 call!658823)))

(declare-fun b!7236264 () Bool)

(assert (=> b!7236264 (= e!4338235 e!4338237)))

(declare-fun c!1343102 () Bool)

(assert (=> b!7236264 (= c!1343102 (is-Cons!70056 (exprs!7964 lt!2575813)))))

(declare-fun b!7236265 () Bool)

(assert (=> b!7236265 (= e!4338237 (as set.empty (Set Context!14928)))))

(assert (= (and d!2247755 res!2935710) b!7236261))

(assert (= (and d!2247755 c!1343103) b!7236262))

(assert (= (and d!2247755 (not c!1343103)) b!7236264))

(assert (= (and b!7236264 c!1343102) b!7236263))

(assert (= (and b!7236264 (not c!1343102)) b!7236265))

(assert (= (or b!7236262 b!7236263) bm!658818))

(declare-fun m!7907268 () Bool)

(assert (=> b!7236261 m!7907268))

(declare-fun m!7907270 () Bool)

(assert (=> bm!658818 m!7907270))

(declare-fun m!7907272 () Bool)

(assert (=> b!7236262 m!7907272))

(assert (=> b!7236158 d!2247755))

(declare-fun b!7236288 () Bool)

(declare-fun e!4338253 () Bool)

(assert (=> b!7236288 (= e!4338253 (nullable!7837 (regOne!37560 (h!76504 (exprs!7964 ct1!232)))))))

(declare-fun b!7236289 () Bool)

(declare-fun e!4338254 () (Set Context!14928))

(declare-fun call!658841 () (Set Context!14928))

(assert (=> b!7236289 (= e!4338254 call!658841)))

(declare-fun b!7236290 () Bool)

(assert (=> b!7236290 (= e!4338254 (as set.empty (Set Context!14928)))))

(declare-fun d!2247757 () Bool)

(declare-fun c!1343116 () Bool)

(assert (=> d!2247757 (= c!1343116 (and (is-ElementMatch!18524 (h!76504 (exprs!7964 ct1!232))) (= (c!1343074 (h!76504 (exprs!7964 ct1!232))) (h!76505 s1!1971))))))

(declare-fun e!4338250 () (Set Context!14928))

(assert (=> d!2247757 (= (derivationStepZipperDown!2568 (h!76504 (exprs!7964 ct1!232)) lt!2575811 (h!76505 s1!1971)) e!4338250)))

(declare-fun b!7236291 () Bool)

(assert (=> b!7236291 (= e!4338250 (set.insert lt!2575811 (as set.empty (Set Context!14928))))))

(declare-fun call!658839 () (Set Context!14928))

(declare-fun call!658838 () List!70180)

(declare-fun c!1343115 () Bool)

(declare-fun bm!658831 () Bool)

(assert (=> bm!658831 (= call!658839 (derivationStepZipperDown!2568 (ite c!1343115 (regOne!37561 (h!76504 (exprs!7964 ct1!232))) (regOne!37560 (h!76504 (exprs!7964 ct1!232)))) (ite c!1343115 lt!2575811 (Context!14929 call!658838)) (h!76505 s1!1971)))))

(declare-fun call!658836 () (Set Context!14928))

(declare-fun call!658840 () List!70180)

(declare-fun c!1343117 () Bool)

(declare-fun c!1343118 () Bool)

(declare-fun bm!658832 () Bool)

(assert (=> bm!658832 (= call!658836 (derivationStepZipperDown!2568 (ite c!1343115 (regTwo!37561 (h!76504 (exprs!7964 ct1!232))) (ite c!1343118 (regTwo!37560 (h!76504 (exprs!7964 ct1!232))) (ite c!1343117 (regOne!37560 (h!76504 (exprs!7964 ct1!232))) (reg!18853 (h!76504 (exprs!7964 ct1!232)))))) (ite (or c!1343115 c!1343118) lt!2575811 (Context!14929 call!658840)) (h!76505 s1!1971)))))

(declare-fun bm!658833 () Bool)

(declare-fun $colon$colon!2877 (List!70180 Regex!18524) List!70180)

(assert (=> bm!658833 (= call!658838 ($colon$colon!2877 (exprs!7964 lt!2575811) (ite (or c!1343118 c!1343117) (regTwo!37560 (h!76504 (exprs!7964 ct1!232))) (h!76504 (exprs!7964 ct1!232)))))))

(declare-fun b!7236292 () Bool)

(declare-fun e!4338255 () (Set Context!14928))

(declare-fun call!658837 () (Set Context!14928))

(assert (=> b!7236292 (= e!4338255 (set.union call!658839 call!658837))))

(declare-fun b!7236293 () Bool)

(declare-fun e!4338251 () (Set Context!14928))

(assert (=> b!7236293 (= e!4338255 e!4338251)))

(assert (=> b!7236293 (= c!1343117 (is-Concat!27369 (h!76504 (exprs!7964 ct1!232))))))

(declare-fun b!7236294 () Bool)

(declare-fun e!4338252 () (Set Context!14928))

(assert (=> b!7236294 (= e!4338250 e!4338252)))

(assert (=> b!7236294 (= c!1343115 (is-Union!18524 (h!76504 (exprs!7964 ct1!232))))))

(declare-fun bm!658834 () Bool)

(assert (=> bm!658834 (= call!658840 call!658838)))

(declare-fun b!7236295 () Bool)

(assert (=> b!7236295 (= e!4338251 call!658841)))

(declare-fun bm!658835 () Bool)

(assert (=> bm!658835 (= call!658837 call!658836)))

(declare-fun bm!658836 () Bool)

(assert (=> bm!658836 (= call!658841 call!658837)))

(declare-fun b!7236296 () Bool)

(declare-fun c!1343114 () Bool)

(assert (=> b!7236296 (= c!1343114 (is-Star!18524 (h!76504 (exprs!7964 ct1!232))))))

(assert (=> b!7236296 (= e!4338251 e!4338254)))

(declare-fun b!7236297 () Bool)

(assert (=> b!7236297 (= c!1343118 e!4338253)))

(declare-fun res!2935713 () Bool)

(assert (=> b!7236297 (=> (not res!2935713) (not e!4338253))))

(assert (=> b!7236297 (= res!2935713 (is-Concat!27369 (h!76504 (exprs!7964 ct1!232))))))

(assert (=> b!7236297 (= e!4338252 e!4338255)))

(declare-fun b!7236298 () Bool)

(assert (=> b!7236298 (= e!4338252 (set.union call!658839 call!658836))))

(assert (= (and d!2247757 c!1343116) b!7236291))

(assert (= (and d!2247757 (not c!1343116)) b!7236294))

(assert (= (and b!7236294 c!1343115) b!7236298))

(assert (= (and b!7236294 (not c!1343115)) b!7236297))

(assert (= (and b!7236297 res!2935713) b!7236288))

(assert (= (and b!7236297 c!1343118) b!7236292))

(assert (= (and b!7236297 (not c!1343118)) b!7236293))

(assert (= (and b!7236293 c!1343117) b!7236295))

(assert (= (and b!7236293 (not c!1343117)) b!7236296))

(assert (= (and b!7236296 c!1343114) b!7236289))

(assert (= (and b!7236296 (not c!1343114)) b!7236290))

(assert (= (or b!7236295 b!7236289) bm!658834))

(assert (= (or b!7236295 b!7236289) bm!658836))

(assert (= (or b!7236292 bm!658834) bm!658833))

(assert (= (or b!7236292 bm!658836) bm!658835))

(assert (= (or b!7236298 bm!658835) bm!658832))

(assert (= (or b!7236298 b!7236292) bm!658831))

(declare-fun m!7907274 () Bool)

(assert (=> bm!658831 m!7907274))

(declare-fun m!7907276 () Bool)

(assert (=> bm!658833 m!7907276))

(declare-fun m!7907278 () Bool)

(assert (=> b!7236288 m!7907278))

(declare-fun m!7907280 () Bool)

(assert (=> bm!658832 m!7907280))

(declare-fun m!7907282 () Bool)

(assert (=> b!7236291 m!7907282))

(assert (=> b!7236158 d!2247757))

(declare-fun d!2247759 () Bool)

(declare-fun c!1343119 () Bool)

(assert (=> d!2247759 (= c!1343119 (isEmpty!40377 (t!384232 s1!1971)))))

(declare-fun e!4338256 () Bool)

(assert (=> d!2247759 (= (matchZipper!3434 lt!2575809 (t!384232 s1!1971)) e!4338256)))

(declare-fun b!7236299 () Bool)

(assert (=> b!7236299 (= e!4338256 (nullableZipper!2830 lt!2575809))))

(declare-fun b!7236300 () Bool)

(assert (=> b!7236300 (= e!4338256 (matchZipper!3434 (derivationStepZipper!3316 lt!2575809 (head!14819 (t!384232 s1!1971))) (tail!14163 (t!384232 s1!1971))))))

(assert (= (and d!2247759 c!1343119) b!7236299))

(assert (= (and d!2247759 (not c!1343119)) b!7236300))

(assert (=> d!2247759 m!7907256))

(declare-fun m!7907284 () Bool)

(assert (=> b!7236299 m!7907284))

(assert (=> b!7236300 m!7907260))

(assert (=> b!7236300 m!7907260))

(declare-fun m!7907286 () Bool)

(assert (=> b!7236300 m!7907286))

(assert (=> b!7236300 m!7907264))

(assert (=> b!7236300 m!7907286))

(assert (=> b!7236300 m!7907264))

(declare-fun m!7907288 () Bool)

(assert (=> b!7236300 m!7907288))

(assert (=> b!7236165 d!2247759))

(declare-fun bs!1903421 () Bool)

(declare-fun d!2247761 () Bool)

(assert (= bs!1903421 (and d!2247761 b!7236151)))

(declare-fun lambda!440465 () Int)

(assert (=> bs!1903421 (= lambda!440465 lambda!440422)))

(declare-fun bs!1903422 () Bool)

(assert (= bs!1903422 (and d!2247761 d!2247733)))

(assert (=> bs!1903422 (= lambda!440465 lambda!440454)))

(assert (=> d!2247761 true))

(assert (=> d!2247761 (= (derivationStepZipper!3316 lt!2575794 (h!76505 s1!1971)) (flatMap!2728 lt!2575794 lambda!440465))))

(declare-fun bs!1903423 () Bool)

(assert (= bs!1903423 d!2247761))

(declare-fun m!7907290 () Bool)

(assert (=> bs!1903423 m!7907290))

(assert (=> b!7236165 d!2247761))

(declare-fun b!7236301 () Bool)

(declare-fun e!4338258 () Bool)

(assert (=> b!7236301 (= e!4338258 (nullable!7837 (h!76504 (exprs!7964 lt!2575811))))))

(declare-fun bm!658837 () Bool)

(declare-fun call!658842 () (Set Context!14928))

(assert (=> bm!658837 (= call!658842 (derivationStepZipperDown!2568 (h!76504 (exprs!7964 lt!2575811)) (Context!14929 (t!384231 (exprs!7964 lt!2575811))) (h!76505 s1!1971)))))

(declare-fun d!2247763 () Bool)

(declare-fun c!1343121 () Bool)

(assert (=> d!2247763 (= c!1343121 e!4338258)))

(declare-fun res!2935714 () Bool)

(assert (=> d!2247763 (=> (not res!2935714) (not e!4338258))))

(assert (=> d!2247763 (= res!2935714 (is-Cons!70056 (exprs!7964 lt!2575811)))))

(declare-fun e!4338257 () (Set Context!14928))

(assert (=> d!2247763 (= (derivationStepZipperUp!2398 lt!2575811 (h!76505 s1!1971)) e!4338257)))

(declare-fun b!7236302 () Bool)

(assert (=> b!7236302 (= e!4338257 (set.union call!658842 (derivationStepZipperUp!2398 (Context!14929 (t!384231 (exprs!7964 lt!2575811))) (h!76505 s1!1971))))))

(declare-fun b!7236303 () Bool)

(declare-fun e!4338259 () (Set Context!14928))

(assert (=> b!7236303 (= e!4338259 call!658842)))

(declare-fun b!7236304 () Bool)

(assert (=> b!7236304 (= e!4338257 e!4338259)))

(declare-fun c!1343120 () Bool)

(assert (=> b!7236304 (= c!1343120 (is-Cons!70056 (exprs!7964 lt!2575811)))))

(declare-fun b!7236305 () Bool)

(assert (=> b!7236305 (= e!4338259 (as set.empty (Set Context!14928)))))

(assert (= (and d!2247763 res!2935714) b!7236301))

(assert (= (and d!2247763 c!1343121) b!7236302))

(assert (= (and d!2247763 (not c!1343121)) b!7236304))

(assert (= (and b!7236304 c!1343120) b!7236303))

(assert (= (and b!7236304 (not c!1343120)) b!7236305))

(assert (= (or b!7236302 b!7236303) bm!658837))

(declare-fun m!7907292 () Bool)

(assert (=> b!7236301 m!7907292))

(declare-fun m!7907294 () Bool)

(assert (=> bm!658837 m!7907294))

(declare-fun m!7907296 () Bool)

(assert (=> b!7236302 m!7907296))

(assert (=> b!7236154 d!2247763))

(declare-fun d!2247765 () Bool)

(declare-fun res!2935719 () Bool)

(declare-fun e!4338264 () Bool)

(assert (=> d!2247765 (=> res!2935719 e!4338264)))

(assert (=> d!2247765 (= res!2935719 (is-Nil!70056 (exprs!7964 ct1!232)))))

(assert (=> d!2247765 (= (forall!17359 (exprs!7964 ct1!232) lambda!440420) e!4338264)))

(declare-fun b!7236310 () Bool)

(declare-fun e!4338265 () Bool)

(assert (=> b!7236310 (= e!4338264 e!4338265)))

(declare-fun res!2935720 () Bool)

(assert (=> b!7236310 (=> (not res!2935720) (not e!4338265))))

(declare-fun dynLambda!28582 (Int Regex!18524) Bool)

(assert (=> b!7236310 (= res!2935720 (dynLambda!28582 lambda!440420 (h!76504 (exprs!7964 ct1!232))))))

(declare-fun b!7236311 () Bool)

(assert (=> b!7236311 (= e!4338265 (forall!17359 (t!384231 (exprs!7964 ct1!232)) lambda!440420))))

(assert (= (and d!2247765 (not res!2935719)) b!7236310))

(assert (= (and b!7236310 res!2935720) b!7236311))

(declare-fun b_lambda!277467 () Bool)

(assert (=> (not b_lambda!277467) (not b!7236310)))

(declare-fun m!7907298 () Bool)

(assert (=> b!7236310 m!7907298))

(declare-fun m!7907300 () Bool)

(assert (=> b!7236311 m!7907300))

(assert (=> b!7236155 d!2247765))

(declare-fun d!2247767 () Bool)

(declare-fun c!1343122 () Bool)

(assert (=> d!2247767 (= c!1343122 (isEmpty!40377 (t!384232 s1!1971)))))

(declare-fun e!4338266 () Bool)

(assert (=> d!2247767 (= (matchZipper!3434 lt!2575804 (t!384232 s1!1971)) e!4338266)))

(declare-fun b!7236312 () Bool)

(assert (=> b!7236312 (= e!4338266 (nullableZipper!2830 lt!2575804))))

(declare-fun b!7236313 () Bool)

(assert (=> b!7236313 (= e!4338266 (matchZipper!3434 (derivationStepZipper!3316 lt!2575804 (head!14819 (t!384232 s1!1971))) (tail!14163 (t!384232 s1!1971))))))

(assert (= (and d!2247767 c!1343122) b!7236312))

(assert (= (and d!2247767 (not c!1343122)) b!7236313))

(assert (=> d!2247767 m!7907256))

(declare-fun m!7907302 () Bool)

(assert (=> b!7236312 m!7907302))

(assert (=> b!7236313 m!7907260))

(assert (=> b!7236313 m!7907260))

(declare-fun m!7907304 () Bool)

(assert (=> b!7236313 m!7907304))

(assert (=> b!7236313 m!7907264))

(assert (=> b!7236313 m!7907304))

(assert (=> b!7236313 m!7907264))

(declare-fun m!7907306 () Bool)

(assert (=> b!7236313 m!7907306))

(assert (=> b!7236155 d!2247767))

(declare-fun d!2247769 () Bool)

(declare-fun c!1343123 () Bool)

(assert (=> d!2247769 (= c!1343123 (isEmpty!40377 (t!384232 s1!1971)))))

(declare-fun e!4338267 () Bool)

(assert (=> d!2247769 (= (matchZipper!3434 lt!2575802 (t!384232 s1!1971)) e!4338267)))

(declare-fun b!7236314 () Bool)

(assert (=> b!7236314 (= e!4338267 (nullableZipper!2830 lt!2575802))))

(declare-fun b!7236315 () Bool)

(assert (=> b!7236315 (= e!4338267 (matchZipper!3434 (derivationStepZipper!3316 lt!2575802 (head!14819 (t!384232 s1!1971))) (tail!14163 (t!384232 s1!1971))))))

(assert (= (and d!2247769 c!1343123) b!7236314))

(assert (= (and d!2247769 (not c!1343123)) b!7236315))

(assert (=> d!2247769 m!7907256))

(declare-fun m!7907308 () Bool)

(assert (=> b!7236314 m!7907308))

(assert (=> b!7236315 m!7907260))

(assert (=> b!7236315 m!7907260))

(declare-fun m!7907310 () Bool)

(assert (=> b!7236315 m!7907310))

(assert (=> b!7236315 m!7907264))

(assert (=> b!7236315 m!7907310))

(assert (=> b!7236315 m!7907264))

(declare-fun m!7907312 () Bool)

(assert (=> b!7236315 m!7907312))

(assert (=> b!7236155 d!2247769))

(declare-fun d!2247771 () Bool)

(declare-fun e!4338270 () Bool)

(assert (=> d!2247771 (= (matchZipper!3434 (set.union lt!2575802 lt!2575820) (t!384232 s1!1971)) e!4338270)))

(declare-fun res!2935723 () Bool)

(assert (=> d!2247771 (=> res!2935723 e!4338270)))

(assert (=> d!2247771 (= res!2935723 (matchZipper!3434 lt!2575802 (t!384232 s1!1971)))))

(declare-fun lt!2575919 () Unit!163586)

(declare-fun choose!55643 ((Set Context!14928) (Set Context!14928) List!70181) Unit!163586)

(assert (=> d!2247771 (= lt!2575919 (choose!55643 lt!2575802 lt!2575820 (t!384232 s1!1971)))))

(assert (=> d!2247771 (= (lemmaZipperConcatMatchesSameAsBothZippers!1671 lt!2575802 lt!2575820 (t!384232 s1!1971)) lt!2575919)))

(declare-fun b!7236318 () Bool)

(assert (=> b!7236318 (= e!4338270 (matchZipper!3434 lt!2575820 (t!384232 s1!1971)))))

(assert (= (and d!2247771 (not res!2935723)) b!7236318))

(declare-fun m!7907314 () Bool)

(assert (=> d!2247771 m!7907314))

(assert (=> d!2247771 m!7907078))

(declare-fun m!7907316 () Bool)

(assert (=> d!2247771 m!7907316))

(assert (=> b!7236318 m!7907026))

(assert (=> b!7236155 d!2247771))

(assert (=> b!7236151 d!2247729))

(assert (=> b!7236151 d!2247755))

(declare-fun d!2247773 () Bool)

(declare-fun nullableFct!3070 (Regex!18524) Bool)

(assert (=> d!2247773 (= (nullable!7837 (h!76504 (exprs!7964 ct1!232))) (nullableFct!3070 (h!76504 (exprs!7964 ct1!232))))))

(declare-fun bs!1903424 () Bool)

(assert (= bs!1903424 d!2247773))

(declare-fun m!7907318 () Bool)

(assert (=> bs!1903424 m!7907318))

(assert (=> b!7236151 d!2247773))

(declare-fun b!7236319 () Bool)

(declare-fun e!4338272 () Bool)

(assert (=> b!7236319 (= e!4338272 (nullable!7837 (h!76504 (exprs!7964 ct1!232))))))

(declare-fun bm!658838 () Bool)

(declare-fun call!658843 () (Set Context!14928))

(assert (=> bm!658838 (= call!658843 (derivationStepZipperDown!2568 (h!76504 (exprs!7964 ct1!232)) (Context!14929 (t!384231 (exprs!7964 ct1!232))) (h!76505 s1!1971)))))

(declare-fun d!2247775 () Bool)

(declare-fun c!1343125 () Bool)

(assert (=> d!2247775 (= c!1343125 e!4338272)))

(declare-fun res!2935724 () Bool)

(assert (=> d!2247775 (=> (not res!2935724) (not e!4338272))))

(assert (=> d!2247775 (= res!2935724 (is-Cons!70056 (exprs!7964 ct1!232)))))

(declare-fun e!4338271 () (Set Context!14928))

(assert (=> d!2247775 (= (derivationStepZipperUp!2398 ct1!232 (h!76505 s1!1971)) e!4338271)))

(declare-fun b!7236320 () Bool)

(assert (=> b!7236320 (= e!4338271 (set.union call!658843 (derivationStepZipperUp!2398 (Context!14929 (t!384231 (exprs!7964 ct1!232))) (h!76505 s1!1971))))))

(declare-fun b!7236321 () Bool)

(declare-fun e!4338273 () (Set Context!14928))

(assert (=> b!7236321 (= e!4338273 call!658843)))

(declare-fun b!7236322 () Bool)

(assert (=> b!7236322 (= e!4338271 e!4338273)))

(declare-fun c!1343124 () Bool)

(assert (=> b!7236322 (= c!1343124 (is-Cons!70056 (exprs!7964 ct1!232)))))

(declare-fun b!7236323 () Bool)

(assert (=> b!7236323 (= e!4338273 (as set.empty (Set Context!14928)))))

(assert (= (and d!2247775 res!2935724) b!7236319))

(assert (= (and d!2247775 c!1343125) b!7236320))

(assert (= (and d!2247775 (not c!1343125)) b!7236322))

(assert (= (and b!7236322 c!1343124) b!7236321))

(assert (= (and b!7236322 (not c!1343124)) b!7236323))

(assert (= (or b!7236320 b!7236321) bm!658838))

(assert (=> b!7236319 m!7907060))

(declare-fun m!7907320 () Bool)

(assert (=> bm!658838 m!7907320))

(declare-fun m!7907322 () Bool)

(assert (=> b!7236320 m!7907322))

(assert (=> b!7236151 d!2247775))

(declare-fun d!2247777 () Bool)

(declare-fun dynLambda!28583 (Int Context!14928) (Set Context!14928))

(assert (=> d!2247777 (= (flatMap!2728 lt!2575794 lambda!440422) (dynLambda!28583 lambda!440422 ct1!232))))

(declare-fun lt!2575922 () Unit!163586)

(declare-fun choose!55644 ((Set Context!14928) Context!14928 Int) Unit!163586)

(assert (=> d!2247777 (= lt!2575922 (choose!55644 lt!2575794 ct1!232 lambda!440422))))

(assert (=> d!2247777 (= lt!2575794 (set.insert ct1!232 (as set.empty (Set Context!14928))))))

(assert (=> d!2247777 (= (lemmaFlatMapOnSingletonSet!2155 lt!2575794 ct1!232 lambda!440422) lt!2575922)))

(declare-fun b_lambda!277469 () Bool)

(assert (=> (not b_lambda!277469) (not d!2247777)))

(declare-fun bs!1903425 () Bool)

(assert (= bs!1903425 d!2247777))

(assert (=> bs!1903425 m!7907072))

(declare-fun m!7907324 () Bool)

(assert (=> bs!1903425 m!7907324))

(declare-fun m!7907326 () Bool)

(assert (=> bs!1903425 m!7907326))

(assert (=> bs!1903425 m!7907030))

(assert (=> b!7236151 d!2247777))

(declare-fun b!7236324 () Bool)

(declare-fun e!4338277 () Bool)

(assert (=> b!7236324 (= e!4338277 (nullable!7837 (regOne!37560 (h!76504 (exprs!7964 ct1!232)))))))

(declare-fun b!7236325 () Bool)

(declare-fun e!4338278 () (Set Context!14928))

(declare-fun call!658849 () (Set Context!14928))

(assert (=> b!7236325 (= e!4338278 call!658849)))

(declare-fun b!7236326 () Bool)

(assert (=> b!7236326 (= e!4338278 (as set.empty (Set Context!14928)))))

(declare-fun d!2247779 () Bool)

(declare-fun c!1343128 () Bool)

(assert (=> d!2247779 (= c!1343128 (and (is-ElementMatch!18524 (h!76504 (exprs!7964 ct1!232))) (= (c!1343074 (h!76504 (exprs!7964 ct1!232))) (h!76505 s1!1971))))))

(declare-fun e!4338274 () (Set Context!14928))

(assert (=> d!2247779 (= (derivationStepZipperDown!2568 (h!76504 (exprs!7964 ct1!232)) lt!2575819 (h!76505 s1!1971)) e!4338274)))

(declare-fun b!7236327 () Bool)

(assert (=> b!7236327 (= e!4338274 (set.insert lt!2575819 (as set.empty (Set Context!14928))))))

(declare-fun bm!658839 () Bool)

(declare-fun call!658847 () (Set Context!14928))

(declare-fun call!658846 () List!70180)

(declare-fun c!1343127 () Bool)

(assert (=> bm!658839 (= call!658847 (derivationStepZipperDown!2568 (ite c!1343127 (regOne!37561 (h!76504 (exprs!7964 ct1!232))) (regOne!37560 (h!76504 (exprs!7964 ct1!232)))) (ite c!1343127 lt!2575819 (Context!14929 call!658846)) (h!76505 s1!1971)))))

(declare-fun c!1343130 () Bool)

(declare-fun c!1343129 () Bool)

(declare-fun bm!658840 () Bool)

(declare-fun call!658844 () (Set Context!14928))

(declare-fun call!658848 () List!70180)

(assert (=> bm!658840 (= call!658844 (derivationStepZipperDown!2568 (ite c!1343127 (regTwo!37561 (h!76504 (exprs!7964 ct1!232))) (ite c!1343130 (regTwo!37560 (h!76504 (exprs!7964 ct1!232))) (ite c!1343129 (regOne!37560 (h!76504 (exprs!7964 ct1!232))) (reg!18853 (h!76504 (exprs!7964 ct1!232)))))) (ite (or c!1343127 c!1343130) lt!2575819 (Context!14929 call!658848)) (h!76505 s1!1971)))))

(declare-fun bm!658841 () Bool)

(assert (=> bm!658841 (= call!658846 ($colon$colon!2877 (exprs!7964 lt!2575819) (ite (or c!1343130 c!1343129) (regTwo!37560 (h!76504 (exprs!7964 ct1!232))) (h!76504 (exprs!7964 ct1!232)))))))

(declare-fun b!7236328 () Bool)

(declare-fun e!4338279 () (Set Context!14928))

(declare-fun call!658845 () (Set Context!14928))

(assert (=> b!7236328 (= e!4338279 (set.union call!658847 call!658845))))

(declare-fun b!7236329 () Bool)

(declare-fun e!4338275 () (Set Context!14928))

(assert (=> b!7236329 (= e!4338279 e!4338275)))

(assert (=> b!7236329 (= c!1343129 (is-Concat!27369 (h!76504 (exprs!7964 ct1!232))))))

(declare-fun b!7236330 () Bool)

(declare-fun e!4338276 () (Set Context!14928))

(assert (=> b!7236330 (= e!4338274 e!4338276)))

(assert (=> b!7236330 (= c!1343127 (is-Union!18524 (h!76504 (exprs!7964 ct1!232))))))

(declare-fun bm!658842 () Bool)

(assert (=> bm!658842 (= call!658848 call!658846)))

(declare-fun b!7236331 () Bool)

(assert (=> b!7236331 (= e!4338275 call!658849)))

(declare-fun bm!658843 () Bool)

(assert (=> bm!658843 (= call!658845 call!658844)))

(declare-fun bm!658844 () Bool)

(assert (=> bm!658844 (= call!658849 call!658845)))

(declare-fun b!7236332 () Bool)

(declare-fun c!1343126 () Bool)

(assert (=> b!7236332 (= c!1343126 (is-Star!18524 (h!76504 (exprs!7964 ct1!232))))))

(assert (=> b!7236332 (= e!4338275 e!4338278)))

(declare-fun b!7236333 () Bool)

(assert (=> b!7236333 (= c!1343130 e!4338277)))

(declare-fun res!2935725 () Bool)

(assert (=> b!7236333 (=> (not res!2935725) (not e!4338277))))

(assert (=> b!7236333 (= res!2935725 (is-Concat!27369 (h!76504 (exprs!7964 ct1!232))))))

(assert (=> b!7236333 (= e!4338276 e!4338279)))

(declare-fun b!7236334 () Bool)

(assert (=> b!7236334 (= e!4338276 (set.union call!658847 call!658844))))

(assert (= (and d!2247779 c!1343128) b!7236327))

(assert (= (and d!2247779 (not c!1343128)) b!7236330))

(assert (= (and b!7236330 c!1343127) b!7236334))

(assert (= (and b!7236330 (not c!1343127)) b!7236333))

(assert (= (and b!7236333 res!2935725) b!7236324))

(assert (= (and b!7236333 c!1343130) b!7236328))

(assert (= (and b!7236333 (not c!1343130)) b!7236329))

(assert (= (and b!7236329 c!1343129) b!7236331))

(assert (= (and b!7236329 (not c!1343129)) b!7236332))

(assert (= (and b!7236332 c!1343126) b!7236325))

(assert (= (and b!7236332 (not c!1343126)) b!7236326))

(assert (= (or b!7236331 b!7236325) bm!658842))

(assert (= (or b!7236331 b!7236325) bm!658844))

(assert (= (or b!7236328 bm!658842) bm!658841))

(assert (= (or b!7236328 bm!658844) bm!658843))

(assert (= (or b!7236334 bm!658843) bm!658840))

(assert (= (or b!7236334 b!7236328) bm!658839))

(declare-fun m!7907328 () Bool)

(assert (=> bm!658839 m!7907328))

(declare-fun m!7907330 () Bool)

(assert (=> bm!658841 m!7907330))

(assert (=> b!7236324 m!7907278))

(declare-fun m!7907332 () Bool)

(assert (=> bm!658840 m!7907332))

(declare-fun m!7907334 () Bool)

(assert (=> b!7236327 m!7907334))

(assert (=> b!7236151 d!2247779))

(declare-fun d!2247781 () Bool)

(declare-fun choose!55645 ((Set Context!14928) Int) (Set Context!14928))

(assert (=> d!2247781 (= (flatMap!2728 lt!2575794 lambda!440422) (choose!55645 lt!2575794 lambda!440422))))

(declare-fun bs!1903426 () Bool)

(assert (= bs!1903426 d!2247781))

(declare-fun m!7907336 () Bool)

(assert (=> bs!1903426 m!7907336))

(assert (=> b!7236151 d!2247781))

(declare-fun d!2247783 () Bool)

(assert (=> d!2247783 (= (flatMap!2728 lt!2575805 lambda!440422) (dynLambda!28583 lambda!440422 lt!2575813))))

(declare-fun lt!2575923 () Unit!163586)

(assert (=> d!2247783 (= lt!2575923 (choose!55644 lt!2575805 lt!2575813 lambda!440422))))

(assert (=> d!2247783 (= lt!2575805 (set.insert lt!2575813 (as set.empty (Set Context!14928))))))

(assert (=> d!2247783 (= (lemmaFlatMapOnSingletonSet!2155 lt!2575805 lt!2575813 lambda!440422) lt!2575923)))

(declare-fun b_lambda!277471 () Bool)

(assert (=> (not b_lambda!277471) (not d!2247783)))

(declare-fun bs!1903427 () Bool)

(assert (= bs!1903427 d!2247783))

(assert (=> bs!1903427 m!7907066))

(declare-fun m!7907338 () Bool)

(assert (=> bs!1903427 m!7907338))

(declare-fun m!7907340 () Bool)

(assert (=> bs!1903427 m!7907340))

(assert (=> bs!1903427 m!7907084))

(assert (=> b!7236151 d!2247783))

(declare-fun d!2247785 () Bool)

(assert (=> d!2247785 (= (flatMap!2728 lt!2575805 lambda!440422) (choose!55645 lt!2575805 lambda!440422))))

(declare-fun bs!1903428 () Bool)

(assert (= bs!1903428 d!2247785))

(declare-fun m!7907342 () Bool)

(assert (=> bs!1903428 m!7907342))

(assert (=> b!7236151 d!2247785))

(declare-fun d!2247787 () Bool)

(assert (=> d!2247787 (= (tail!14161 lt!2575812) (t!384231 lt!2575812))))

(assert (=> b!7236151 d!2247787))

(declare-fun b!7236335 () Bool)

(declare-fun e!4338281 () Bool)

(assert (=> b!7236335 (= e!4338281 (nullable!7837 (h!76504 (exprs!7964 lt!2575819))))))

(declare-fun bm!658845 () Bool)

(declare-fun call!658850 () (Set Context!14928))

(assert (=> bm!658845 (= call!658850 (derivationStepZipperDown!2568 (h!76504 (exprs!7964 lt!2575819)) (Context!14929 (t!384231 (exprs!7964 lt!2575819))) (h!76505 s1!1971)))))

(declare-fun d!2247789 () Bool)

(declare-fun c!1343132 () Bool)

(assert (=> d!2247789 (= c!1343132 e!4338281)))

(declare-fun res!2935726 () Bool)

(assert (=> d!2247789 (=> (not res!2935726) (not e!4338281))))

(assert (=> d!2247789 (= res!2935726 (is-Cons!70056 (exprs!7964 lt!2575819)))))

(declare-fun e!4338280 () (Set Context!14928))

(assert (=> d!2247789 (= (derivationStepZipperUp!2398 lt!2575819 (h!76505 s1!1971)) e!4338280)))

(declare-fun b!7236336 () Bool)

(assert (=> b!7236336 (= e!4338280 (set.union call!658850 (derivationStepZipperUp!2398 (Context!14929 (t!384231 (exprs!7964 lt!2575819))) (h!76505 s1!1971))))))

(declare-fun b!7236337 () Bool)

(declare-fun e!4338282 () (Set Context!14928))

(assert (=> b!7236337 (= e!4338282 call!658850)))

(declare-fun b!7236338 () Bool)

(assert (=> b!7236338 (= e!4338280 e!4338282)))

(declare-fun c!1343131 () Bool)

(assert (=> b!7236338 (= c!1343131 (is-Cons!70056 (exprs!7964 lt!2575819)))))

(declare-fun b!7236339 () Bool)

(assert (=> b!7236339 (= e!4338282 (as set.empty (Set Context!14928)))))

(assert (= (and d!2247789 res!2935726) b!7236335))

(assert (= (and d!2247789 c!1343132) b!7236336))

(assert (= (and d!2247789 (not c!1343132)) b!7236338))

(assert (= (and b!7236338 c!1343131) b!7236337))

(assert (= (and b!7236338 (not c!1343131)) b!7236339))

(assert (= (or b!7236336 b!7236337) bm!658845))

(declare-fun m!7907344 () Bool)

(assert (=> b!7236335 m!7907344))

(declare-fun m!7907346 () Bool)

(assert (=> bm!658845 m!7907346))

(declare-fun m!7907348 () Bool)

(assert (=> b!7236336 m!7907348))

(assert (=> b!7236163 d!2247789))

(assert (=> b!7236163 d!2247729))

(declare-fun d!2247791 () Bool)

(declare-fun c!1343133 () Bool)

(assert (=> d!2247791 (= c!1343133 (isEmpty!40377 (++!16349 (t!384232 s1!1971) s2!1849)))))

(declare-fun e!4338283 () Bool)

(assert (=> d!2247791 (= (matchZipper!3434 (set.insert (Context!14929 (++!16348 (exprs!7964 lt!2575810) (exprs!7964 ct2!328))) (as set.empty (Set Context!14928))) (++!16349 (t!384232 s1!1971) s2!1849)) e!4338283)))

(declare-fun b!7236340 () Bool)

(assert (=> b!7236340 (= e!4338283 (nullableZipper!2830 (set.insert (Context!14929 (++!16348 (exprs!7964 lt!2575810) (exprs!7964 ct2!328))) (as set.empty (Set Context!14928)))))))

(declare-fun b!7236341 () Bool)

(assert (=> b!7236341 (= e!4338283 (matchZipper!3434 (derivationStepZipper!3316 (set.insert (Context!14929 (++!16348 (exprs!7964 lt!2575810) (exprs!7964 ct2!328))) (as set.empty (Set Context!14928))) (head!14819 (++!16349 (t!384232 s1!1971) s2!1849))) (tail!14163 (++!16349 (t!384232 s1!1971) s2!1849))))))

(assert (= (and d!2247791 c!1343133) b!7236340))

(assert (= (and d!2247791 (not c!1343133)) b!7236341))

(assert (=> d!2247791 m!7907050))

(declare-fun m!7907350 () Bool)

(assert (=> d!2247791 m!7907350))

(assert (=> b!7236340 m!7907042))

(declare-fun m!7907352 () Bool)

(assert (=> b!7236340 m!7907352))

(assert (=> b!7236341 m!7907050))

(declare-fun m!7907354 () Bool)

(assert (=> b!7236341 m!7907354))

(assert (=> b!7236341 m!7907042))

(assert (=> b!7236341 m!7907354))

(declare-fun m!7907356 () Bool)

(assert (=> b!7236341 m!7907356))

(assert (=> b!7236341 m!7907050))

(declare-fun m!7907358 () Bool)

(assert (=> b!7236341 m!7907358))

(assert (=> b!7236341 m!7907356))

(assert (=> b!7236341 m!7907358))

(declare-fun m!7907360 () Bool)

(assert (=> b!7236341 m!7907360))

(assert (=> b!7236152 d!2247791))

(declare-fun d!2247793 () Bool)

(assert (=> d!2247793 (= (isEmpty!40375 (exprs!7964 ct1!232)) (is-Nil!70056 (exprs!7964 ct1!232)))))

(assert (=> b!7236152 d!2247793))

(declare-fun b!7236351 () Bool)

(declare-fun e!4338289 () List!70181)

(assert (=> b!7236351 (= e!4338289 (Cons!70057 (h!76505 (t!384232 s1!1971)) (++!16349 (t!384232 (t!384232 s1!1971)) s2!1849)))))

(declare-fun b!7236350 () Bool)

(assert (=> b!7236350 (= e!4338289 s2!1849)))

(declare-fun b!7236352 () Bool)

(declare-fun res!2935731 () Bool)

(declare-fun e!4338288 () Bool)

(assert (=> b!7236352 (=> (not res!2935731) (not e!4338288))))

(declare-fun lt!2575926 () List!70181)

(declare-fun size!41593 (List!70181) Int)

(assert (=> b!7236352 (= res!2935731 (= (size!41593 lt!2575926) (+ (size!41593 (t!384232 s1!1971)) (size!41593 s2!1849))))))

(declare-fun d!2247795 () Bool)

(assert (=> d!2247795 e!4338288))

(declare-fun res!2935732 () Bool)

(assert (=> d!2247795 (=> (not res!2935732) (not e!4338288))))

(declare-fun content!14440 (List!70181) (Set C!37322))

(assert (=> d!2247795 (= res!2935732 (= (content!14440 lt!2575926) (set.union (content!14440 (t!384232 s1!1971)) (content!14440 s2!1849))))))

(assert (=> d!2247795 (= lt!2575926 e!4338289)))

(declare-fun c!1343136 () Bool)

(assert (=> d!2247795 (= c!1343136 (is-Nil!70057 (t!384232 s1!1971)))))

(assert (=> d!2247795 (= (++!16349 (t!384232 s1!1971) s2!1849) lt!2575926)))

(declare-fun b!7236353 () Bool)

(assert (=> b!7236353 (= e!4338288 (or (not (= s2!1849 Nil!70057)) (= lt!2575926 (t!384232 s1!1971))))))

(assert (= (and d!2247795 c!1343136) b!7236350))

(assert (= (and d!2247795 (not c!1343136)) b!7236351))

(assert (= (and d!2247795 res!2935732) b!7236352))

(assert (= (and b!7236352 res!2935731) b!7236353))

(declare-fun m!7907362 () Bool)

(assert (=> b!7236351 m!7907362))

(declare-fun m!7907364 () Bool)

(assert (=> b!7236352 m!7907364))

(declare-fun m!7907366 () Bool)

(assert (=> b!7236352 m!7907366))

(declare-fun m!7907368 () Bool)

(assert (=> b!7236352 m!7907368))

(declare-fun m!7907370 () Bool)

(assert (=> d!2247795 m!7907370))

(declare-fun m!7907372 () Bool)

(assert (=> d!2247795 m!7907372))

(declare-fun m!7907374 () Bool)

(assert (=> d!2247795 m!7907374))

(assert (=> b!7236152 d!2247795))

(assert (=> b!7236152 d!2247775))

(declare-fun bs!1903429 () Bool)

(declare-fun d!2247797 () Bool)

(assert (= bs!1903429 (and d!2247797 b!7236159)))

(declare-fun lambda!440468 () Int)

(assert (=> bs!1903429 (= lambda!440468 lambda!440420)))

(declare-fun bs!1903430 () Bool)

(assert (= bs!1903430 (and d!2247797 d!2247737)))

(assert (=> bs!1903430 (= lambda!440468 lambda!440457)))

(declare-fun bs!1903431 () Bool)

(assert (= bs!1903431 (and d!2247797 d!2247739)))

(assert (=> bs!1903431 (= lambda!440468 lambda!440458)))

(assert (=> d!2247797 (matchZipper!3434 (set.insert (Context!14929 (++!16348 (exprs!7964 lt!2575810) (exprs!7964 ct2!328))) (as set.empty (Set Context!14928))) (++!16349 (t!384232 s1!1971) s2!1849))))

(declare-fun lt!2575932 () Unit!163586)

(assert (=> d!2247797 (= lt!2575932 (lemmaConcatPreservesForall!1333 (exprs!7964 lt!2575810) (exprs!7964 ct2!328) lambda!440468))))

(declare-fun lt!2575931 () Unit!163586)

(declare-fun choose!55646 (Context!14928 Context!14928 List!70181 List!70181) Unit!163586)

(assert (=> d!2247797 (= lt!2575931 (choose!55646 lt!2575810 ct2!328 (t!384232 s1!1971) s2!1849))))

(assert (=> d!2247797 (matchZipper!3434 (set.insert lt!2575810 (as set.empty (Set Context!14928))) (t!384232 s1!1971))))

(assert (=> d!2247797 (= (lemmaConcatenateContextMatchesConcatOfStrings!315 lt!2575810 ct2!328 (t!384232 s1!1971) s2!1849) lt!2575931)))

(declare-fun bs!1903432 () Bool)

(assert (= bs!1903432 d!2247797))

(assert (=> bs!1903432 m!7907042))

(assert (=> bs!1903432 m!7907050))

(assert (=> bs!1903432 m!7907058))

(assert (=> bs!1903432 m!7907042))

(declare-fun m!7907376 () Bool)

(assert (=> bs!1903432 m!7907376))

(declare-fun m!7907378 () Bool)

(assert (=> bs!1903432 m!7907378))

(assert (=> bs!1903432 m!7907050))

(assert (=> bs!1903432 m!7907376))

(assert (=> bs!1903432 m!7907046))

(declare-fun m!7907380 () Bool)

(assert (=> bs!1903432 m!7907380))

(declare-fun m!7907382 () Bool)

(assert (=> bs!1903432 m!7907382))

(assert (=> b!7236152 d!2247797))

(declare-fun d!2247799 () Bool)

(declare-fun e!4338292 () Bool)

(assert (=> d!2247799 e!4338292))

(declare-fun res!2935735 () Bool)

(assert (=> d!2247799 (=> (not res!2935735) (not e!4338292))))

(declare-fun lt!2575935 () Context!14928)

(declare-fun dynLambda!28584 (Int Context!14928) Bool)

(assert (=> d!2247799 (= res!2935735 (dynLambda!28584 lambda!440421 lt!2575935))))

(declare-fun getWitness!2061 (List!70182 Int) Context!14928)

(assert (=> d!2247799 (= lt!2575935 (getWitness!2061 (toList!11381 lt!2575809) lambda!440421))))

(assert (=> d!2247799 (exists!4191 lt!2575809 lambda!440421)))

(assert (=> d!2247799 (= (getWitness!2059 lt!2575809 lambda!440421) lt!2575935)))

(declare-fun b!7236356 () Bool)

(assert (=> b!7236356 (= e!4338292 (set.member lt!2575935 lt!2575809))))

(assert (= (and d!2247799 res!2935735) b!7236356))

(declare-fun b_lambda!277473 () Bool)

(assert (=> (not b_lambda!277473) (not d!2247799)))

(declare-fun m!7907384 () Bool)

(assert (=> d!2247799 m!7907384))

(assert (=> d!2247799 m!7907094))

(assert (=> d!2247799 m!7907094))

(declare-fun m!7907386 () Bool)

(assert (=> d!2247799 m!7907386))

(assert (=> d!2247799 m!7907088))

(declare-fun m!7907388 () Bool)

(assert (=> b!7236356 m!7907388))

(assert (=> b!7236152 d!2247799))

(declare-fun d!2247801 () Bool)

(assert (=> d!2247801 (forall!17359 (++!16348 (exprs!7964 lt!2575810) (exprs!7964 ct2!328)) lambda!440420)))

(declare-fun lt!2575936 () Unit!163586)

(assert (=> d!2247801 (= lt!2575936 (choose!55639 (exprs!7964 lt!2575810) (exprs!7964 ct2!328) lambda!440420))))

(assert (=> d!2247801 (forall!17359 (exprs!7964 lt!2575810) lambda!440420)))

(assert (=> d!2247801 (= (lemmaConcatPreservesForall!1333 (exprs!7964 lt!2575810) (exprs!7964 ct2!328) lambda!440420) lt!2575936)))

(declare-fun bs!1903433 () Bool)

(assert (= bs!1903433 d!2247801))

(assert (=> bs!1903433 m!7907046))

(assert (=> bs!1903433 m!7907046))

(declare-fun m!7907390 () Bool)

(assert (=> bs!1903433 m!7907390))

(declare-fun m!7907392 () Bool)

(assert (=> bs!1903433 m!7907392))

(declare-fun m!7907394 () Bool)

(assert (=> bs!1903433 m!7907394))

(assert (=> b!7236152 d!2247801))

(declare-fun b!7236358 () Bool)

(declare-fun e!4338294 () List!70180)

(assert (=> b!7236358 (= e!4338294 (Cons!70056 (h!76504 (exprs!7964 lt!2575810)) (++!16348 (t!384231 (exprs!7964 lt!2575810)) (exprs!7964 ct2!328))))))

(declare-fun b!7236357 () Bool)

(assert (=> b!7236357 (= e!4338294 (exprs!7964 ct2!328))))

(declare-fun lt!2575937 () List!70180)

(declare-fun b!7236360 () Bool)

(declare-fun e!4338293 () Bool)

(assert (=> b!7236360 (= e!4338293 (or (not (= (exprs!7964 ct2!328) Nil!70056)) (= lt!2575937 (exprs!7964 lt!2575810))))))

(declare-fun d!2247803 () Bool)

(assert (=> d!2247803 e!4338293))

(declare-fun res!2935737 () Bool)

(assert (=> d!2247803 (=> (not res!2935737) (not e!4338293))))

(assert (=> d!2247803 (= res!2935737 (= (content!14438 lt!2575937) (set.union (content!14438 (exprs!7964 lt!2575810)) (content!14438 (exprs!7964 ct2!328)))))))

(assert (=> d!2247803 (= lt!2575937 e!4338294)))

(declare-fun c!1343137 () Bool)

(assert (=> d!2247803 (= c!1343137 (is-Nil!70056 (exprs!7964 lt!2575810)))))

(assert (=> d!2247803 (= (++!16348 (exprs!7964 lt!2575810) (exprs!7964 ct2!328)) lt!2575937)))

(declare-fun b!7236359 () Bool)

(declare-fun res!2935736 () Bool)

(assert (=> b!7236359 (=> (not res!2935736) (not e!4338293))))

(assert (=> b!7236359 (= res!2935736 (= (size!41592 lt!2575937) (+ (size!41592 (exprs!7964 lt!2575810)) (size!41592 (exprs!7964 ct2!328)))))))

(assert (= (and d!2247803 c!1343137) b!7236357))

(assert (= (and d!2247803 (not c!1343137)) b!7236358))

(assert (= (and d!2247803 res!2935737) b!7236359))

(assert (= (and b!7236359 res!2935736) b!7236360))

(declare-fun m!7907396 () Bool)

(assert (=> b!7236358 m!7907396))

(declare-fun m!7907398 () Bool)

(assert (=> d!2247803 m!7907398))

(declare-fun m!7907400 () Bool)

(assert (=> d!2247803 m!7907400))

(assert (=> d!2247803 m!7907194))

(declare-fun m!7907402 () Bool)

(assert (=> b!7236359 m!7907402))

(declare-fun m!7907404 () Bool)

(assert (=> b!7236359 m!7907404))

(assert (=> b!7236359 m!7907200))

(assert (=> b!7236152 d!2247803))

(declare-fun b!7236365 () Bool)

(declare-fun e!4338297 () Bool)

(declare-fun tp!2034629 () Bool)

(declare-fun tp!2034630 () Bool)

(assert (=> b!7236365 (= e!4338297 (and tp!2034629 tp!2034630))))

(assert (=> b!7236164 (= tp!2034610 e!4338297)))

(assert (= (and b!7236164 (is-Cons!70056 (exprs!7964 ct2!328))) b!7236365))

(declare-fun b!7236370 () Bool)

(declare-fun e!4338300 () Bool)

(declare-fun tp!2034633 () Bool)

(assert (=> b!7236370 (= e!4338300 (and tp_is_empty!46513 tp!2034633))))

(assert (=> b!7236157 (= tp!2034612 e!4338300)))

(assert (= (and b!7236157 (is-Cons!70057 (t!384232 s2!1849))) b!7236370))

(declare-fun b!7236371 () Bool)

(declare-fun e!4338301 () Bool)

(declare-fun tp!2034634 () Bool)

(assert (=> b!7236371 (= e!4338301 (and tp_is_empty!46513 tp!2034634))))

(assert (=> b!7236162 (= tp!2034611 e!4338301)))

(assert (= (and b!7236162 (is-Cons!70057 (t!384232 s1!1971))) b!7236371))

(declare-fun b!7236372 () Bool)

(declare-fun e!4338302 () Bool)

(declare-fun tp!2034635 () Bool)

(declare-fun tp!2034636 () Bool)

(assert (=> b!7236372 (= e!4338302 (and tp!2034635 tp!2034636))))

(assert (=> b!7236153 (= tp!2034609 e!4338302)))

(assert (= (and b!7236153 (is-Cons!70056 (exprs!7964 ct1!232))) b!7236372))

(declare-fun b_lambda!277475 () Bool)

(assert (= b_lambda!277467 (or b!7236159 b_lambda!277475)))

(declare-fun bs!1903434 () Bool)

(declare-fun d!2247805 () Bool)

(assert (= bs!1903434 (and d!2247805 b!7236159)))

(declare-fun validRegex!9523 (Regex!18524) Bool)

(assert (=> bs!1903434 (= (dynLambda!28582 lambda!440420 (h!76504 (exprs!7964 ct1!232))) (validRegex!9523 (h!76504 (exprs!7964 ct1!232))))))

(declare-fun m!7907406 () Bool)

(assert (=> bs!1903434 m!7907406))

(assert (=> b!7236310 d!2247805))

(declare-fun b_lambda!277477 () Bool)

(assert (= b_lambda!277471 (or b!7236151 b_lambda!277477)))

(declare-fun bs!1903435 () Bool)

(declare-fun d!2247807 () Bool)

(assert (= bs!1903435 (and d!2247807 b!7236151)))

(assert (=> bs!1903435 (= (dynLambda!28583 lambda!440422 lt!2575813) (derivationStepZipperUp!2398 lt!2575813 (h!76505 s1!1971)))))

(assert (=> bs!1903435 m!7907024))

(assert (=> d!2247783 d!2247807))

(declare-fun b_lambda!277479 () Bool)

(assert (= b_lambda!277469 (or b!7236151 b_lambda!277479)))

(declare-fun bs!1903436 () Bool)

(declare-fun d!2247809 () Bool)

(assert (= bs!1903436 (and d!2247809 b!7236151)))

(assert (=> bs!1903436 (= (dynLambda!28583 lambda!440422 ct1!232) (derivationStepZipperUp!2398 ct1!232 (h!76505 s1!1971)))))

(assert (=> bs!1903436 m!7907052))

(assert (=> d!2247777 d!2247809))

(declare-fun b_lambda!277481 () Bool)

(assert (= b_lambda!277473 (or b!7236160 b_lambda!277481)))

(declare-fun bs!1903437 () Bool)

(declare-fun d!2247811 () Bool)

(assert (= bs!1903437 (and d!2247811 b!7236160)))

(assert (=> bs!1903437 (= (dynLambda!28584 lambda!440421 lt!2575935) (matchZipper!3434 (set.insert lt!2575935 (as set.empty (Set Context!14928))) (t!384232 s1!1971)))))

(declare-fun m!7907408 () Bool)

(assert (=> bs!1903437 m!7907408))

(assert (=> bs!1903437 m!7907408))

(declare-fun m!7907410 () Bool)

(assert (=> bs!1903437 m!7907410))

(assert (=> d!2247799 d!2247811))

(push 1)

(assert (not d!2247745))

(assert (not b!7236261))

(assert (not bs!1903436))

(assert (not bm!658845))

(assert (not b!7236238))

(assert (not d!2247761))

(assert (not b!7236231))

(assert (not b!7236313))

(assert (not b!7236232))

(assert (not d!2247741))

(assert (not b_lambda!277477))

(assert (not b!7236249))

(assert tp_is_empty!46513)

(assert (not b!7236243))

(assert (not b!7236335))

(assert (not bm!658837))

(assert (not d!2247767))

(assert (not b!7236311))

(assert (not b!7236341))

(assert (not b!7236318))

(assert (not b!7236320))

(assert (not d!2247747))

(assert (not bm!658839))

(assert (not d!2247791))

(assert (not b!7236288))

(assert (not b!7236336))

(assert (not d!2247781))

(assert (not d!2247773))

(assert (not d!2247731))

(assert (not b!7236300))

(assert (not bm!658831))

(assert (not d!2247777))

(assert (not b!7236299))

(assert (not b!7236340))

(assert (not b_lambda!277479))

(assert (not b!7236262))

(assert (not b!7236242))

(assert (not d!2247735))

(assert (not b!7236372))

(assert (not bs!1903434))

(assert (not bs!1903437))

(assert (not d!2247743))

(assert (not b!7236312))

(assert (not d!2247733))

(assert (not b_lambda!277481))

(assert (not b!7236248))

(assert (not d!2247749))

(assert (not d!2247737))

(assert (not b!7236314))

(assert (not b!7236324))

(assert (not b_lambda!277475))

(assert (not d!2247797))

(assert (not bm!658840))

(assert (not d!2247739))

(assert (not b!7236365))

(assert (not d!2247727))

(assert (not b!7236319))

(assert (not b!7236359))

(assert (not b!7236371))

(assert (not d!2247799))

(assert (not b!7236315))

(assert (not bm!658841))

(assert (not bm!658818))

(assert (not d!2247783))

(assert (not bm!658838))

(assert (not d!2247785))

(assert (not b!7236370))

(assert (not d!2247801))

(assert (not b!7236250))

(assert (not b!7236352))

(assert (not d!2247803))

(assert (not bs!1903435))

(assert (not d!2247729))

(assert (not b!7236239))

(assert (not b!7236302))

(assert (not d!2247771))

(assert (not bm!658833))

(assert (not b!7236301))

(assert (not bm!658832))

(assert (not d!2247759))

(assert (not b!7236358))

(assert (not d!2247795))

(assert (not d!2247769))

(assert (not b!7236351))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

