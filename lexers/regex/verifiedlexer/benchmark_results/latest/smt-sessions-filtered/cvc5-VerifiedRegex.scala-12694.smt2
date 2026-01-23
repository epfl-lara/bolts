; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!701706 () Bool)

(assert start!701706)

(declare-fun b!7231986 () Bool)

(assert (=> b!7231986 true))

(declare-fun e!4335492 () Bool)

(declare-fun e!4335495 () Bool)

(assert (=> b!7231986 (= e!4335492 (not e!4335495))))

(declare-fun res!2934149 () Bool)

(assert (=> b!7231986 (=> res!2934149 e!4335495)))

(declare-datatypes ((C!37266 0))(
  ( (C!37267 (val!28581 Int)) )
))
(declare-datatypes ((Regex!18496 0))(
  ( (ElementMatch!18496 (c!1341800 C!37266)) (Concat!27341 (regOne!37504 Regex!18496) (regTwo!37504 Regex!18496)) (EmptyExpr!18496) (Star!18496 (reg!18825 Regex!18496)) (EmptyLang!18496) (Union!18496 (regOne!37505 Regex!18496) (regTwo!37505 Regex!18496)) )
))
(declare-datatypes ((List!70096 0))(
  ( (Nil!69972) (Cons!69972 (h!76420 Regex!18496) (t!384145 List!70096)) )
))
(declare-datatypes ((Context!14872 0))(
  ( (Context!14873 (exprs!7936 List!70096)) )
))
(declare-fun lt!2573606 () (Set Context!14872))

(declare-fun lambda!439437 () Int)

(declare-fun exists!4135 ((Set Context!14872) Int) Bool)

(assert (=> b!7231986 (= res!2934149 (not (exists!4135 lt!2573606 lambda!439437)))))

(declare-datatypes ((List!70097 0))(
  ( (Nil!69973) (Cons!69973 (h!76421 Context!14872) (t!384146 List!70097)) )
))
(declare-fun lt!2573602 () List!70097)

(declare-fun exists!4136 (List!70097 Int) Bool)

(assert (=> b!7231986 (exists!4136 lt!2573602 lambda!439437)))

(declare-datatypes ((Unit!163529 0))(
  ( (Unit!163530) )
))
(declare-fun lt!2573598 () Unit!163529)

(declare-datatypes ((List!70098 0))(
  ( (Nil!69974) (Cons!69974 (h!76422 C!37266) (t!384147 List!70098)) )
))
(declare-fun s1!1971 () List!70098)

(declare-fun lemmaZipperMatchesExistsMatchingContext!639 (List!70097 List!70098) Unit!163529)

(assert (=> b!7231986 (= lt!2573598 (lemmaZipperMatchesExistsMatchingContext!639 lt!2573602 (t!384147 s1!1971)))))

(declare-fun toList!11353 ((Set Context!14872)) List!70097)

(assert (=> b!7231986 (= lt!2573602 (toList!11353 lt!2573606))))

(declare-fun b!7231987 () Bool)

(declare-fun e!4335497 () Bool)

(declare-fun tp!2033970 () Bool)

(assert (=> b!7231987 (= e!4335497 tp!2033970)))

(declare-fun b!7231988 () Bool)

(declare-fun e!4335491 () Bool)

(assert (=> b!7231988 (= e!4335495 e!4335491)))

(declare-fun res!2934145 () Bool)

(assert (=> b!7231988 (=> res!2934145 e!4335491)))

(declare-fun ct1!232 () Context!14872)

(declare-fun isEmpty!40327 (List!70096) Bool)

(assert (=> b!7231988 (= res!2934145 (isEmpty!40327 (exprs!7936 ct1!232)))))

(declare-fun lt!2573609 () (Set Context!14872))

(declare-fun derivationStepZipperUp!2370 (Context!14872 C!37266) (Set Context!14872))

(assert (=> b!7231988 (= lt!2573609 (derivationStepZipperUp!2370 ct1!232 (h!76422 s1!1971)))))

(declare-fun lt!2573605 () Unit!163529)

(declare-fun lt!2573604 () Context!14872)

(declare-fun lambda!439436 () Int)

(declare-fun ct2!328 () Context!14872)

(declare-fun lemmaConcatPreservesForall!1305 (List!70096 List!70096 Int) Unit!163529)

(assert (=> b!7231988 (= lt!2573605 (lemmaConcatPreservesForall!1305 (exprs!7936 lt!2573604) (exprs!7936 ct2!328) lambda!439436))))

(declare-fun s2!1849 () List!70098)

(declare-fun matchZipper!3406 ((Set Context!14872) List!70098) Bool)

(declare-fun ++!16292 (List!70096 List!70096) List!70096)

(declare-fun ++!16293 (List!70098 List!70098) List!70098)

(assert (=> b!7231988 (matchZipper!3406 (set.insert (Context!14873 (++!16292 (exprs!7936 lt!2573604) (exprs!7936 ct2!328))) (as set.empty (Set Context!14872))) (++!16293 (t!384147 s1!1971) s2!1849))))

(declare-fun lt!2573601 () Unit!163529)

(assert (=> b!7231988 (= lt!2573601 (lemmaConcatPreservesForall!1305 (exprs!7936 lt!2573604) (exprs!7936 ct2!328) lambda!439436))))

(declare-fun lt!2573600 () Unit!163529)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!287 (Context!14872 Context!14872 List!70098 List!70098) Unit!163529)

(assert (=> b!7231988 (= lt!2573600 (lemmaConcatenateContextMatchesConcatOfStrings!287 lt!2573604 ct2!328 (t!384147 s1!1971) s2!1849))))

(declare-fun getWitness!2012 ((Set Context!14872) Int) Context!14872)

(assert (=> b!7231988 (= lt!2573604 (getWitness!2012 lt!2573606 lambda!439437))))

(declare-fun b!7231989 () Bool)

(declare-fun e!4335496 () Bool)

(assert (=> b!7231989 (= e!4335491 e!4335496)))

(declare-fun res!2934148 () Bool)

(assert (=> b!7231989 (=> res!2934148 e!4335496)))

(declare-fun forall!17321 (List!70096 Int) Bool)

(assert (=> b!7231989 (= res!2934148 (not (forall!17321 (exprs!7936 ct1!232) lambda!439436)))))

(declare-fun lt!2573603 () (Set Context!14872))

(declare-fun derivationStepZipperDown!2540 (Regex!18496 Context!14872 C!37266) (Set Context!14872))

(declare-fun tail!14113 (List!70096) List!70096)

(assert (=> b!7231989 (= lt!2573603 (derivationStepZipperDown!2540 (h!76420 (exprs!7936 ct1!232)) (Context!14873 (tail!14113 (exprs!7936 ct1!232))) (h!76422 s1!1971)))))

(declare-fun b!7231990 () Bool)

(declare-fun res!2934146 () Bool)

(declare-fun e!4335494 () Bool)

(assert (=> b!7231990 (=> (not res!2934146) (not e!4335494))))

(assert (=> b!7231990 (= res!2934146 (matchZipper!3406 (set.insert ct2!328 (as set.empty (Set Context!14872))) s2!1849))))

(declare-fun res!2934147 () Bool)

(assert (=> start!701706 (=> (not res!2934147) (not e!4335494))))

(declare-fun lt!2573608 () (Set Context!14872))

(assert (=> start!701706 (= res!2934147 (matchZipper!3406 lt!2573608 s1!1971))))

(assert (=> start!701706 (= lt!2573608 (set.insert ct1!232 (as set.empty (Set Context!14872))))))

(assert (=> start!701706 e!4335494))

(declare-fun e!4335498 () Bool)

(declare-fun inv!89251 (Context!14872) Bool)

(assert (=> start!701706 (and (inv!89251 ct1!232) e!4335498)))

(declare-fun e!4335493 () Bool)

(assert (=> start!701706 e!4335493))

(declare-fun e!4335499 () Bool)

(assert (=> start!701706 e!4335499))

(assert (=> start!701706 (and (inv!89251 ct2!328) e!4335497)))

(declare-fun b!7231991 () Bool)

(declare-fun e!4335500 () Bool)

(assert (=> b!7231991 (= e!4335500 e!4335492)))

(declare-fun res!2934143 () Bool)

(assert (=> b!7231991 (=> (not res!2934143) (not e!4335492))))

(assert (=> b!7231991 (= res!2934143 (matchZipper!3406 lt!2573606 (t!384147 s1!1971)))))

(declare-fun derivationStepZipper!3288 ((Set Context!14872) C!37266) (Set Context!14872))

(assert (=> b!7231991 (= lt!2573606 (derivationStepZipper!3288 lt!2573608 (h!76422 s1!1971)))))

(declare-fun b!7231992 () Bool)

(declare-fun tp_is_empty!46457 () Bool)

(declare-fun tp!2033972 () Bool)

(assert (=> b!7231992 (= e!4335499 (and tp_is_empty!46457 tp!2033972))))

(declare-fun b!7231993 () Bool)

(declare-fun tp!2033969 () Bool)

(assert (=> b!7231993 (= e!4335493 (and tp_is_empty!46457 tp!2033969))))

(declare-fun b!7231994 () Bool)

(assert (=> b!7231994 (= e!4335496 (forall!17321 (exprs!7936 ct2!328) lambda!439436))))

(declare-fun b!7231995 () Bool)

(assert (=> b!7231995 (= e!4335494 e!4335500)))

(declare-fun res!2934144 () Bool)

(assert (=> b!7231995 (=> (not res!2934144) (not e!4335500))))

(assert (=> b!7231995 (= res!2934144 (and (not (is-Nil!69972 (exprs!7936 ct1!232))) (is-Cons!69974 s1!1971)))))

(declare-fun lt!2573607 () List!70096)

(assert (=> b!7231995 (= lt!2573607 (++!16292 (exprs!7936 ct1!232) (exprs!7936 ct2!328)))))

(declare-fun lt!2573599 () Unit!163529)

(assert (=> b!7231995 (= lt!2573599 (lemmaConcatPreservesForall!1305 (exprs!7936 ct1!232) (exprs!7936 ct2!328) lambda!439436))))

(declare-fun b!7231996 () Bool)

(declare-fun tp!2033971 () Bool)

(assert (=> b!7231996 (= e!4335498 tp!2033971)))

(assert (= (and start!701706 res!2934147) b!7231990))

(assert (= (and b!7231990 res!2934146) b!7231995))

(assert (= (and b!7231995 res!2934144) b!7231991))

(assert (= (and b!7231991 res!2934143) b!7231986))

(assert (= (and b!7231986 (not res!2934149)) b!7231988))

(assert (= (and b!7231988 (not res!2934145)) b!7231989))

(assert (= (and b!7231989 (not res!2934148)) b!7231994))

(assert (= start!701706 b!7231996))

(assert (= (and start!701706 (is-Cons!69974 s1!1971)) b!7231993))

(assert (= (and start!701706 (is-Cons!69974 s2!1849)) b!7231992))

(assert (= start!701706 b!7231987))

(declare-fun m!7901020 () Bool)

(assert (=> b!7231986 m!7901020))

(declare-fun m!7901022 () Bool)

(assert (=> b!7231986 m!7901022))

(declare-fun m!7901024 () Bool)

(assert (=> b!7231986 m!7901024))

(declare-fun m!7901026 () Bool)

(assert (=> b!7231986 m!7901026))

(declare-fun m!7901028 () Bool)

(assert (=> start!701706 m!7901028))

(declare-fun m!7901030 () Bool)

(assert (=> start!701706 m!7901030))

(declare-fun m!7901032 () Bool)

(assert (=> start!701706 m!7901032))

(declare-fun m!7901034 () Bool)

(assert (=> start!701706 m!7901034))

(declare-fun m!7901036 () Bool)

(assert (=> b!7231991 m!7901036))

(declare-fun m!7901038 () Bool)

(assert (=> b!7231991 m!7901038))

(declare-fun m!7901040 () Bool)

(assert (=> b!7231990 m!7901040))

(assert (=> b!7231990 m!7901040))

(declare-fun m!7901042 () Bool)

(assert (=> b!7231990 m!7901042))

(declare-fun m!7901044 () Bool)

(assert (=> b!7231994 m!7901044))

(declare-fun m!7901046 () Bool)

(assert (=> b!7231989 m!7901046))

(declare-fun m!7901048 () Bool)

(assert (=> b!7231989 m!7901048))

(declare-fun m!7901050 () Bool)

(assert (=> b!7231989 m!7901050))

(declare-fun m!7901052 () Bool)

(assert (=> b!7231988 m!7901052))

(assert (=> b!7231988 m!7901052))

(declare-fun m!7901054 () Bool)

(assert (=> b!7231988 m!7901054))

(declare-fun m!7901056 () Bool)

(assert (=> b!7231988 m!7901056))

(declare-fun m!7901058 () Bool)

(assert (=> b!7231988 m!7901058))

(declare-fun m!7901060 () Bool)

(assert (=> b!7231988 m!7901060))

(assert (=> b!7231988 m!7901058))

(declare-fun m!7901062 () Bool)

(assert (=> b!7231988 m!7901062))

(declare-fun m!7901064 () Bool)

(assert (=> b!7231988 m!7901064))

(declare-fun m!7901066 () Bool)

(assert (=> b!7231988 m!7901066))

(assert (=> b!7231988 m!7901062))

(declare-fun m!7901068 () Bool)

(assert (=> b!7231988 m!7901068))

(declare-fun m!7901070 () Bool)

(assert (=> b!7231995 m!7901070))

(declare-fun m!7901072 () Bool)

(assert (=> b!7231995 m!7901072))

(push 1)

(assert (not b!7231989))

(assert (not b!7231986))

(assert (not b!7231994))

(assert (not start!701706))

(assert (not b!7231996))

(assert (not b!7231990))

(assert tp_is_empty!46457)

(assert (not b!7231995))

(assert (not b!7231993))

(assert (not b!7231991))

(assert (not b!7231987))

(assert (not b!7231992))

(assert (not b!7231988))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2246121 () Bool)

(declare-fun c!1341810 () Bool)

(declare-fun isEmpty!40329 (List!70098) Bool)

(assert (=> d!2246121 (= c!1341810 (isEmpty!40329 (t!384147 s1!1971)))))

(declare-fun e!4335533 () Bool)

(assert (=> d!2246121 (= (matchZipper!3406 lt!2573606 (t!384147 s1!1971)) e!4335533)))

(declare-fun b!7232038 () Bool)

(declare-fun nullableZipper!2810 ((Set Context!14872)) Bool)

(assert (=> b!7232038 (= e!4335533 (nullableZipper!2810 lt!2573606))))

(declare-fun b!7232039 () Bool)

(declare-fun head!14798 (List!70098) C!37266)

(declare-fun tail!14115 (List!70098) List!70098)

(assert (=> b!7232039 (= e!4335533 (matchZipper!3406 (derivationStepZipper!3288 lt!2573606 (head!14798 (t!384147 s1!1971))) (tail!14115 (t!384147 s1!1971))))))

(assert (= (and d!2246121 c!1341810) b!7232038))

(assert (= (and d!2246121 (not c!1341810)) b!7232039))

(declare-fun m!7901128 () Bool)

(assert (=> d!2246121 m!7901128))

(declare-fun m!7901130 () Bool)

(assert (=> b!7232038 m!7901130))

(declare-fun m!7901132 () Bool)

(assert (=> b!7232039 m!7901132))

(assert (=> b!7232039 m!7901132))

(declare-fun m!7901134 () Bool)

(assert (=> b!7232039 m!7901134))

(declare-fun m!7901136 () Bool)

(assert (=> b!7232039 m!7901136))

(assert (=> b!7232039 m!7901134))

(assert (=> b!7232039 m!7901136))

(declare-fun m!7901138 () Bool)

(assert (=> b!7232039 m!7901138))

(assert (=> b!7231991 d!2246121))

(declare-fun d!2246123 () Bool)

(assert (=> d!2246123 true))

(declare-fun lambda!439456 () Int)

(declare-fun flatMap!2703 ((Set Context!14872) Int) (Set Context!14872))

(assert (=> d!2246123 (= (derivationStepZipper!3288 lt!2573608 (h!76422 s1!1971)) (flatMap!2703 lt!2573608 lambda!439456))))

(declare-fun bs!1902741 () Bool)

(assert (= bs!1902741 d!2246123))

(declare-fun m!7901140 () Bool)

(assert (=> bs!1902741 m!7901140))

(assert (=> b!7231991 d!2246123))

(declare-fun d!2246125 () Bool)

(declare-fun c!1341813 () Bool)

(assert (=> d!2246125 (= c!1341813 (isEmpty!40329 s1!1971))))

(declare-fun e!4335534 () Bool)

(assert (=> d!2246125 (= (matchZipper!3406 lt!2573608 s1!1971) e!4335534)))

(declare-fun b!7232042 () Bool)

(assert (=> b!7232042 (= e!4335534 (nullableZipper!2810 lt!2573608))))

(declare-fun b!7232043 () Bool)

(assert (=> b!7232043 (= e!4335534 (matchZipper!3406 (derivationStepZipper!3288 lt!2573608 (head!14798 s1!1971)) (tail!14115 s1!1971)))))

(assert (= (and d!2246125 c!1341813) b!7232042))

(assert (= (and d!2246125 (not c!1341813)) b!7232043))

(declare-fun m!7901142 () Bool)

(assert (=> d!2246125 m!7901142))

(declare-fun m!7901144 () Bool)

(assert (=> b!7232042 m!7901144))

(declare-fun m!7901146 () Bool)

(assert (=> b!7232043 m!7901146))

(assert (=> b!7232043 m!7901146))

(declare-fun m!7901148 () Bool)

(assert (=> b!7232043 m!7901148))

(declare-fun m!7901150 () Bool)

(assert (=> b!7232043 m!7901150))

(assert (=> b!7232043 m!7901148))

(assert (=> b!7232043 m!7901150))

(declare-fun m!7901152 () Bool)

(assert (=> b!7232043 m!7901152))

(assert (=> start!701706 d!2246125))

(declare-fun bs!1902742 () Bool)

(declare-fun d!2246127 () Bool)

(assert (= bs!1902742 (and d!2246127 b!7231995)))

(declare-fun lambda!439459 () Int)

(assert (=> bs!1902742 (= lambda!439459 lambda!439436)))

(assert (=> d!2246127 (= (inv!89251 ct1!232) (forall!17321 (exprs!7936 ct1!232) lambda!439459))))

(declare-fun bs!1902743 () Bool)

(assert (= bs!1902743 d!2246127))

(declare-fun m!7901154 () Bool)

(assert (=> bs!1902743 m!7901154))

(assert (=> start!701706 d!2246127))

(declare-fun bs!1902744 () Bool)

(declare-fun d!2246129 () Bool)

(assert (= bs!1902744 (and d!2246129 b!7231995)))

(declare-fun lambda!439460 () Int)

(assert (=> bs!1902744 (= lambda!439460 lambda!439436)))

(declare-fun bs!1902745 () Bool)

(assert (= bs!1902745 (and d!2246129 d!2246127)))

(assert (=> bs!1902745 (= lambda!439460 lambda!439459)))

(assert (=> d!2246129 (= (inv!89251 ct2!328) (forall!17321 (exprs!7936 ct2!328) lambda!439460))))

(declare-fun bs!1902746 () Bool)

(assert (= bs!1902746 d!2246129))

(declare-fun m!7901156 () Bool)

(assert (=> bs!1902746 m!7901156))

(assert (=> start!701706 d!2246129))

(declare-fun d!2246131 () Bool)

(declare-fun c!1341814 () Bool)

(assert (=> d!2246131 (= c!1341814 (isEmpty!40329 s2!1849))))

(declare-fun e!4335535 () Bool)

(assert (=> d!2246131 (= (matchZipper!3406 (set.insert ct2!328 (as set.empty (Set Context!14872))) s2!1849) e!4335535)))

(declare-fun b!7232044 () Bool)

(assert (=> b!7232044 (= e!4335535 (nullableZipper!2810 (set.insert ct2!328 (as set.empty (Set Context!14872)))))))

(declare-fun b!7232045 () Bool)

(assert (=> b!7232045 (= e!4335535 (matchZipper!3406 (derivationStepZipper!3288 (set.insert ct2!328 (as set.empty (Set Context!14872))) (head!14798 s2!1849)) (tail!14115 s2!1849)))))

(assert (= (and d!2246131 c!1341814) b!7232044))

(assert (= (and d!2246131 (not c!1341814)) b!7232045))

(declare-fun m!7901158 () Bool)

(assert (=> d!2246131 m!7901158))

(assert (=> b!7232044 m!7901040))

(declare-fun m!7901160 () Bool)

(assert (=> b!7232044 m!7901160))

(declare-fun m!7901162 () Bool)

(assert (=> b!7232045 m!7901162))

(assert (=> b!7232045 m!7901040))

(assert (=> b!7232045 m!7901162))

(declare-fun m!7901164 () Bool)

(assert (=> b!7232045 m!7901164))

(declare-fun m!7901166 () Bool)

(assert (=> b!7232045 m!7901166))

(assert (=> b!7232045 m!7901164))

(assert (=> b!7232045 m!7901166))

(declare-fun m!7901168 () Bool)

(assert (=> b!7232045 m!7901168))

(assert (=> b!7231990 d!2246131))

(declare-fun d!2246133 () Bool)

(declare-fun e!4335541 () Bool)

(assert (=> d!2246133 e!4335541))

(declare-fun res!2934176 () Bool)

(assert (=> d!2246133 (=> (not res!2934176) (not e!4335541))))

(declare-fun lt!2573648 () List!70096)

(declare-fun content!14381 (List!70096) (Set Regex!18496))

(assert (=> d!2246133 (= res!2934176 (= (content!14381 lt!2573648) (set.union (content!14381 (exprs!7936 ct1!232)) (content!14381 (exprs!7936 ct2!328)))))))

(declare-fun e!4335540 () List!70096)

(assert (=> d!2246133 (= lt!2573648 e!4335540)))

(declare-fun c!1341817 () Bool)

(assert (=> d!2246133 (= c!1341817 (is-Nil!69972 (exprs!7936 ct1!232)))))

(assert (=> d!2246133 (= (++!16292 (exprs!7936 ct1!232) (exprs!7936 ct2!328)) lt!2573648)))

(declare-fun b!7232054 () Bool)

(assert (=> b!7232054 (= e!4335540 (exprs!7936 ct2!328))))

(declare-fun b!7232057 () Bool)

(assert (=> b!7232057 (= e!4335541 (or (not (= (exprs!7936 ct2!328) Nil!69972)) (= lt!2573648 (exprs!7936 ct1!232))))))

(declare-fun b!7232055 () Bool)

(assert (=> b!7232055 (= e!4335540 (Cons!69972 (h!76420 (exprs!7936 ct1!232)) (++!16292 (t!384145 (exprs!7936 ct1!232)) (exprs!7936 ct2!328))))))

(declare-fun b!7232056 () Bool)

(declare-fun res!2934175 () Bool)

(assert (=> b!7232056 (=> (not res!2934175) (not e!4335541))))

(declare-fun size!41553 (List!70096) Int)

(assert (=> b!7232056 (= res!2934175 (= (size!41553 lt!2573648) (+ (size!41553 (exprs!7936 ct1!232)) (size!41553 (exprs!7936 ct2!328)))))))

(assert (= (and d!2246133 c!1341817) b!7232054))

(assert (= (and d!2246133 (not c!1341817)) b!7232055))

(assert (= (and d!2246133 res!2934176) b!7232056))

(assert (= (and b!7232056 res!2934175) b!7232057))

(declare-fun m!7901170 () Bool)

(assert (=> d!2246133 m!7901170))

(declare-fun m!7901172 () Bool)

(assert (=> d!2246133 m!7901172))

(declare-fun m!7901174 () Bool)

(assert (=> d!2246133 m!7901174))

(declare-fun m!7901176 () Bool)

(assert (=> b!7232055 m!7901176))

(declare-fun m!7901178 () Bool)

(assert (=> b!7232056 m!7901178))

(declare-fun m!7901180 () Bool)

(assert (=> b!7232056 m!7901180))

(declare-fun m!7901182 () Bool)

(assert (=> b!7232056 m!7901182))

(assert (=> b!7231995 d!2246133))

(declare-fun d!2246137 () Bool)

(assert (=> d!2246137 (forall!17321 (++!16292 (exprs!7936 ct1!232) (exprs!7936 ct2!328)) lambda!439436)))

(declare-fun lt!2573651 () Unit!163529)

(declare-fun choose!55525 (List!70096 List!70096 Int) Unit!163529)

(assert (=> d!2246137 (= lt!2573651 (choose!55525 (exprs!7936 ct1!232) (exprs!7936 ct2!328) lambda!439436))))

(assert (=> d!2246137 (forall!17321 (exprs!7936 ct1!232) lambda!439436)))

(assert (=> d!2246137 (= (lemmaConcatPreservesForall!1305 (exprs!7936 ct1!232) (exprs!7936 ct2!328) lambda!439436) lt!2573651)))

(declare-fun bs!1902747 () Bool)

(assert (= bs!1902747 d!2246137))

(assert (=> bs!1902747 m!7901070))

(assert (=> bs!1902747 m!7901070))

(declare-fun m!7901184 () Bool)

(assert (=> bs!1902747 m!7901184))

(declare-fun m!7901186 () Bool)

(assert (=> bs!1902747 m!7901186))

(assert (=> bs!1902747 m!7901046))

(assert (=> b!7231995 d!2246137))

(declare-fun d!2246139 () Bool)

(declare-fun res!2934181 () Bool)

(declare-fun e!4335546 () Bool)

(assert (=> d!2246139 (=> res!2934181 e!4335546)))

(assert (=> d!2246139 (= res!2934181 (is-Nil!69972 (exprs!7936 ct1!232)))))

(assert (=> d!2246139 (= (forall!17321 (exprs!7936 ct1!232) lambda!439436) e!4335546)))

(declare-fun b!7232062 () Bool)

(declare-fun e!4335547 () Bool)

(assert (=> b!7232062 (= e!4335546 e!4335547)))

(declare-fun res!2934182 () Bool)

(assert (=> b!7232062 (=> (not res!2934182) (not e!4335547))))

(declare-fun dynLambda!28519 (Int Regex!18496) Bool)

(assert (=> b!7232062 (= res!2934182 (dynLambda!28519 lambda!439436 (h!76420 (exprs!7936 ct1!232))))))

(declare-fun b!7232063 () Bool)

(assert (=> b!7232063 (= e!4335547 (forall!17321 (t!384145 (exprs!7936 ct1!232)) lambda!439436))))

(assert (= (and d!2246139 (not res!2934181)) b!7232062))

(assert (= (and b!7232062 res!2934182) b!7232063))

(declare-fun b_lambda!277159 () Bool)

(assert (=> (not b_lambda!277159) (not b!7232062)))

(declare-fun m!7901188 () Bool)

(assert (=> b!7232062 m!7901188))

(declare-fun m!7901190 () Bool)

(assert (=> b!7232063 m!7901190))

(assert (=> b!7231989 d!2246139))

(declare-fun bm!658242 () Bool)

(declare-fun call!658251 () (Set Context!14872))

(declare-fun call!658247 () (Set Context!14872))

(assert (=> bm!658242 (= call!658251 call!658247)))

(declare-fun call!658249 () (Set Context!14872))

(declare-fun c!1341831 () Bool)

(declare-fun call!658248 () List!70096)

(declare-fun bm!658243 () Bool)

(assert (=> bm!658243 (= call!658249 (derivationStepZipperDown!2540 (ite c!1341831 (regOne!37505 (h!76420 (exprs!7936 ct1!232))) (regOne!37504 (h!76420 (exprs!7936 ct1!232)))) (ite c!1341831 (Context!14873 (tail!14113 (exprs!7936 ct1!232))) (Context!14873 call!658248)) (h!76422 s1!1971)))))

(declare-fun b!7232086 () Bool)

(declare-fun e!4335562 () (Set Context!14872))

(assert (=> b!7232086 (= e!4335562 (set.union call!658249 call!658247))))

(declare-fun b!7232087 () Bool)

(declare-fun e!4335564 () (Set Context!14872))

(assert (=> b!7232087 (= e!4335564 call!658251)))

(declare-fun b!7232088 () Bool)

(declare-fun e!4335561 () (Set Context!14872))

(declare-fun e!4335563 () (Set Context!14872))

(assert (=> b!7232088 (= e!4335561 e!4335563)))

(assert (=> b!7232088 (= c!1341831 (is-Union!18496 (h!76420 (exprs!7936 ct1!232))))))

(declare-fun b!7232090 () Bool)

(assert (=> b!7232090 (= e!4335561 (set.insert (Context!14873 (tail!14113 (exprs!7936 ct1!232))) (as set.empty (Set Context!14872))))))

(declare-fun b!7232091 () Bool)

(assert (=> b!7232091 (= e!4335564 (as set.empty (Set Context!14872)))))

(declare-fun bm!658244 () Bool)

(declare-fun call!658252 () List!70096)

(assert (=> bm!658244 (= call!658252 call!658248)))

(declare-fun c!1341830 () Bool)

(declare-fun c!1341832 () Bool)

(declare-fun bm!658245 () Bool)

(declare-fun $colon$colon!2859 (List!70096 Regex!18496) List!70096)

(assert (=> bm!658245 (= call!658248 ($colon$colon!2859 (exprs!7936 (Context!14873 (tail!14113 (exprs!7936 ct1!232)))) (ite (or c!1341832 c!1341830) (regTwo!37504 (h!76420 (exprs!7936 ct1!232))) (h!76420 (exprs!7936 ct1!232)))))))

(declare-fun bm!658246 () Bool)

(declare-fun call!658250 () (Set Context!14872))

(assert (=> bm!658246 (= call!658250 (derivationStepZipperDown!2540 (ite c!1341831 (regTwo!37505 (h!76420 (exprs!7936 ct1!232))) (ite c!1341832 (regTwo!37504 (h!76420 (exprs!7936 ct1!232))) (ite c!1341830 (regOne!37504 (h!76420 (exprs!7936 ct1!232))) (reg!18825 (h!76420 (exprs!7936 ct1!232)))))) (ite (or c!1341831 c!1341832) (Context!14873 (tail!14113 (exprs!7936 ct1!232))) (Context!14873 call!658252)) (h!76422 s1!1971)))))

(declare-fun bm!658247 () Bool)

(assert (=> bm!658247 (= call!658247 call!658250)))

(declare-fun b!7232092 () Bool)

(declare-fun e!4335565 () (Set Context!14872))

(assert (=> b!7232092 (= e!4335565 call!658251)))

(declare-fun b!7232093 () Bool)

(declare-fun e!4335560 () Bool)

(assert (=> b!7232093 (= c!1341832 e!4335560)))

(declare-fun res!2934185 () Bool)

(assert (=> b!7232093 (=> (not res!2934185) (not e!4335560))))

(assert (=> b!7232093 (= res!2934185 (is-Concat!27341 (h!76420 (exprs!7936 ct1!232))))))

(assert (=> b!7232093 (= e!4335563 e!4335562)))

(declare-fun b!7232094 () Bool)

(declare-fun nullable!7813 (Regex!18496) Bool)

(assert (=> b!7232094 (= e!4335560 (nullable!7813 (regOne!37504 (h!76420 (exprs!7936 ct1!232)))))))

(declare-fun b!7232095 () Bool)

(declare-fun c!1341829 () Bool)

(assert (=> b!7232095 (= c!1341829 (is-Star!18496 (h!76420 (exprs!7936 ct1!232))))))

(assert (=> b!7232095 (= e!4335565 e!4335564)))

(declare-fun b!7232096 () Bool)

(assert (=> b!7232096 (= e!4335562 e!4335565)))

(assert (=> b!7232096 (= c!1341830 (is-Concat!27341 (h!76420 (exprs!7936 ct1!232))))))

(declare-fun b!7232089 () Bool)

(assert (=> b!7232089 (= e!4335563 (set.union call!658249 call!658250))))

(declare-fun d!2246141 () Bool)

(declare-fun c!1341828 () Bool)

(assert (=> d!2246141 (= c!1341828 (and (is-ElementMatch!18496 (h!76420 (exprs!7936 ct1!232))) (= (c!1341800 (h!76420 (exprs!7936 ct1!232))) (h!76422 s1!1971))))))

(assert (=> d!2246141 (= (derivationStepZipperDown!2540 (h!76420 (exprs!7936 ct1!232)) (Context!14873 (tail!14113 (exprs!7936 ct1!232))) (h!76422 s1!1971)) e!4335561)))

(assert (= (and d!2246141 c!1341828) b!7232090))

(assert (= (and d!2246141 (not c!1341828)) b!7232088))

(assert (= (and b!7232088 c!1341831) b!7232089))

(assert (= (and b!7232088 (not c!1341831)) b!7232093))

(assert (= (and b!7232093 res!2934185) b!7232094))

(assert (= (and b!7232093 c!1341832) b!7232086))

(assert (= (and b!7232093 (not c!1341832)) b!7232096))

(assert (= (and b!7232096 c!1341830) b!7232092))

(assert (= (and b!7232096 (not c!1341830)) b!7232095))

(assert (= (and b!7232095 c!1341829) b!7232087))

(assert (= (and b!7232095 (not c!1341829)) b!7232091))

(assert (= (or b!7232092 b!7232087) bm!658244))

(assert (= (or b!7232092 b!7232087) bm!658242))

(assert (= (or b!7232086 bm!658244) bm!658245))

(assert (= (or b!7232086 bm!658242) bm!658247))

(assert (= (or b!7232089 bm!658247) bm!658246))

(assert (= (or b!7232089 b!7232086) bm!658243))

(declare-fun m!7901192 () Bool)

(assert (=> b!7232090 m!7901192))

(declare-fun m!7901194 () Bool)

(assert (=> bm!658245 m!7901194))

(declare-fun m!7901196 () Bool)

(assert (=> bm!658246 m!7901196))

(declare-fun m!7901198 () Bool)

(assert (=> b!7232094 m!7901198))

(declare-fun m!7901200 () Bool)

(assert (=> bm!658243 m!7901200))

(assert (=> b!7231989 d!2246141))

(declare-fun d!2246143 () Bool)

(assert (=> d!2246143 (= (tail!14113 (exprs!7936 ct1!232)) (t!384145 (exprs!7936 ct1!232)))))

(assert (=> b!7231989 d!2246143))

(declare-fun d!2246145 () Bool)

(declare-fun res!2934186 () Bool)

(declare-fun e!4335566 () Bool)

(assert (=> d!2246145 (=> res!2934186 e!4335566)))

(assert (=> d!2246145 (= res!2934186 (is-Nil!69972 (exprs!7936 ct2!328)))))

(assert (=> d!2246145 (= (forall!17321 (exprs!7936 ct2!328) lambda!439436) e!4335566)))

(declare-fun b!7232097 () Bool)

(declare-fun e!4335567 () Bool)

(assert (=> b!7232097 (= e!4335566 e!4335567)))

(declare-fun res!2934187 () Bool)

(assert (=> b!7232097 (=> (not res!2934187) (not e!4335567))))

(assert (=> b!7232097 (= res!2934187 (dynLambda!28519 lambda!439436 (h!76420 (exprs!7936 ct2!328))))))

(declare-fun b!7232098 () Bool)

(assert (=> b!7232098 (= e!4335567 (forall!17321 (t!384145 (exprs!7936 ct2!328)) lambda!439436))))

(assert (= (and d!2246145 (not res!2934186)) b!7232097))

(assert (= (and b!7232097 res!2934187) b!7232098))

(declare-fun b_lambda!277161 () Bool)

(assert (=> (not b_lambda!277161) (not b!7232097)))

(declare-fun m!7901202 () Bool)

(assert (=> b!7232097 m!7901202))

(declare-fun m!7901204 () Bool)

(assert (=> b!7232098 m!7901204))

(assert (=> b!7231994 d!2246145))

(declare-fun d!2246147 () Bool)

(assert (=> d!2246147 (= (isEmpty!40327 (exprs!7936 ct1!232)) (is-Nil!69972 (exprs!7936 ct1!232)))))

(assert (=> b!7231988 d!2246147))

(declare-fun d!2246149 () Bool)

(declare-fun c!1341833 () Bool)

(assert (=> d!2246149 (= c!1341833 (isEmpty!40329 (++!16293 (t!384147 s1!1971) s2!1849)))))

(declare-fun e!4335568 () Bool)

(assert (=> d!2246149 (= (matchZipper!3406 (set.insert (Context!14873 (++!16292 (exprs!7936 lt!2573604) (exprs!7936 ct2!328))) (as set.empty (Set Context!14872))) (++!16293 (t!384147 s1!1971) s2!1849)) e!4335568)))

(declare-fun b!7232099 () Bool)

(assert (=> b!7232099 (= e!4335568 (nullableZipper!2810 (set.insert (Context!14873 (++!16292 (exprs!7936 lt!2573604) (exprs!7936 ct2!328))) (as set.empty (Set Context!14872)))))))

(declare-fun b!7232100 () Bool)

(assert (=> b!7232100 (= e!4335568 (matchZipper!3406 (derivationStepZipper!3288 (set.insert (Context!14873 (++!16292 (exprs!7936 lt!2573604) (exprs!7936 ct2!328))) (as set.empty (Set Context!14872))) (head!14798 (++!16293 (t!384147 s1!1971) s2!1849))) (tail!14115 (++!16293 (t!384147 s1!1971) s2!1849))))))

(assert (= (and d!2246149 c!1341833) b!7232099))

(assert (= (and d!2246149 (not c!1341833)) b!7232100))

(assert (=> d!2246149 m!7901062))

(declare-fun m!7901214 () Bool)

(assert (=> d!2246149 m!7901214))

(assert (=> b!7232099 m!7901058))

(declare-fun m!7901216 () Bool)

(assert (=> b!7232099 m!7901216))

(assert (=> b!7232100 m!7901062))

(declare-fun m!7901218 () Bool)

(assert (=> b!7232100 m!7901218))

(assert (=> b!7232100 m!7901058))

(assert (=> b!7232100 m!7901218))

(declare-fun m!7901220 () Bool)

(assert (=> b!7232100 m!7901220))

(assert (=> b!7232100 m!7901062))

(declare-fun m!7901222 () Bool)

(assert (=> b!7232100 m!7901222))

(assert (=> b!7232100 m!7901220))

(assert (=> b!7232100 m!7901222))

(declare-fun m!7901224 () Bool)

(assert (=> b!7232100 m!7901224))

(assert (=> b!7231988 d!2246149))

(declare-fun d!2246153 () Bool)

(assert (=> d!2246153 (forall!17321 (++!16292 (exprs!7936 lt!2573604) (exprs!7936 ct2!328)) lambda!439436)))

(declare-fun lt!2573658 () Unit!163529)

(assert (=> d!2246153 (= lt!2573658 (choose!55525 (exprs!7936 lt!2573604) (exprs!7936 ct2!328) lambda!439436))))

(assert (=> d!2246153 (forall!17321 (exprs!7936 lt!2573604) lambda!439436)))

(assert (=> d!2246153 (= (lemmaConcatPreservesForall!1305 (exprs!7936 lt!2573604) (exprs!7936 ct2!328) lambda!439436) lt!2573658)))

(declare-fun bs!1902750 () Bool)

(assert (= bs!1902750 d!2246153))

(assert (=> bs!1902750 m!7901056))

(assert (=> bs!1902750 m!7901056))

(declare-fun m!7901226 () Bool)

(assert (=> bs!1902750 m!7901226))

(declare-fun m!7901228 () Bool)

(assert (=> bs!1902750 m!7901228))

(declare-fun m!7901230 () Bool)

(assert (=> bs!1902750 m!7901230))

(assert (=> b!7231988 d!2246153))

(declare-fun lt!2573663 () List!70098)

(declare-fun b!7232112 () Bool)

(declare-fun e!4335573 () Bool)

(assert (=> b!7232112 (= e!4335573 (or (not (= s2!1849 Nil!69974)) (= lt!2573663 (t!384147 s1!1971))))))

(declare-fun b!7232109 () Bool)

(declare-fun e!4335574 () List!70098)

(assert (=> b!7232109 (= e!4335574 s2!1849)))

(declare-fun d!2246155 () Bool)

(assert (=> d!2246155 e!4335573))

(declare-fun res!2934193 () Bool)

(assert (=> d!2246155 (=> (not res!2934193) (not e!4335573))))

(declare-fun content!14382 (List!70098) (Set C!37266))

(assert (=> d!2246155 (= res!2934193 (= (content!14382 lt!2573663) (set.union (content!14382 (t!384147 s1!1971)) (content!14382 s2!1849))))))

(assert (=> d!2246155 (= lt!2573663 e!4335574)))

(declare-fun c!1341836 () Bool)

(assert (=> d!2246155 (= c!1341836 (is-Nil!69974 (t!384147 s1!1971)))))

(assert (=> d!2246155 (= (++!16293 (t!384147 s1!1971) s2!1849) lt!2573663)))

(declare-fun b!7232111 () Bool)

(declare-fun res!2934192 () Bool)

(assert (=> b!7232111 (=> (not res!2934192) (not e!4335573))))

(declare-fun size!41554 (List!70098) Int)

(assert (=> b!7232111 (= res!2934192 (= (size!41554 lt!2573663) (+ (size!41554 (t!384147 s1!1971)) (size!41554 s2!1849))))))

(declare-fun b!7232110 () Bool)

(assert (=> b!7232110 (= e!4335574 (Cons!69974 (h!76422 (t!384147 s1!1971)) (++!16293 (t!384147 (t!384147 s1!1971)) s2!1849)))))

(assert (= (and d!2246155 c!1341836) b!7232109))

(assert (= (and d!2246155 (not c!1341836)) b!7232110))

(assert (= (and d!2246155 res!2934193) b!7232111))

(assert (= (and b!7232111 res!2934192) b!7232112))

(declare-fun m!7901232 () Bool)

(assert (=> d!2246155 m!7901232))

(declare-fun m!7901234 () Bool)

(assert (=> d!2246155 m!7901234))

(declare-fun m!7901236 () Bool)

(assert (=> d!2246155 m!7901236))

(declare-fun m!7901238 () Bool)

(assert (=> b!7232111 m!7901238))

(declare-fun m!7901240 () Bool)

(assert (=> b!7232111 m!7901240))

(declare-fun m!7901242 () Bool)

(assert (=> b!7232111 m!7901242))

(declare-fun m!7901244 () Bool)

(assert (=> b!7232110 m!7901244))

(assert (=> b!7231988 d!2246155))

(declare-fun d!2246157 () Bool)

(declare-fun e!4335576 () Bool)

(assert (=> d!2246157 e!4335576))

(declare-fun res!2934195 () Bool)

(assert (=> d!2246157 (=> (not res!2934195) (not e!4335576))))

(declare-fun lt!2573665 () List!70096)

(assert (=> d!2246157 (= res!2934195 (= (content!14381 lt!2573665) (set.union (content!14381 (exprs!7936 lt!2573604)) (content!14381 (exprs!7936 ct2!328)))))))

(declare-fun e!4335575 () List!70096)

(assert (=> d!2246157 (= lt!2573665 e!4335575)))

(declare-fun c!1341837 () Bool)

(assert (=> d!2246157 (= c!1341837 (is-Nil!69972 (exprs!7936 lt!2573604)))))

(assert (=> d!2246157 (= (++!16292 (exprs!7936 lt!2573604) (exprs!7936 ct2!328)) lt!2573665)))

(declare-fun b!7232113 () Bool)

(assert (=> b!7232113 (= e!4335575 (exprs!7936 ct2!328))))

(declare-fun b!7232116 () Bool)

(assert (=> b!7232116 (= e!4335576 (or (not (= (exprs!7936 ct2!328) Nil!69972)) (= lt!2573665 (exprs!7936 lt!2573604))))))

(declare-fun b!7232114 () Bool)

(assert (=> b!7232114 (= e!4335575 (Cons!69972 (h!76420 (exprs!7936 lt!2573604)) (++!16292 (t!384145 (exprs!7936 lt!2573604)) (exprs!7936 ct2!328))))))

(declare-fun b!7232115 () Bool)

(declare-fun res!2934194 () Bool)

(assert (=> b!7232115 (=> (not res!2934194) (not e!4335576))))

(assert (=> b!7232115 (= res!2934194 (= (size!41553 lt!2573665) (+ (size!41553 (exprs!7936 lt!2573604)) (size!41553 (exprs!7936 ct2!328)))))))

(assert (= (and d!2246157 c!1341837) b!7232113))

(assert (= (and d!2246157 (not c!1341837)) b!7232114))

(assert (= (and d!2246157 res!2934195) b!7232115))

(assert (= (and b!7232115 res!2934194) b!7232116))

(declare-fun m!7901246 () Bool)

(assert (=> d!2246157 m!7901246))

(declare-fun m!7901248 () Bool)

(assert (=> d!2246157 m!7901248))

(assert (=> d!2246157 m!7901174))

(declare-fun m!7901250 () Bool)

(assert (=> b!7232114 m!7901250))

(declare-fun m!7901252 () Bool)

(assert (=> b!7232115 m!7901252))

(declare-fun m!7901254 () Bool)

(assert (=> b!7232115 m!7901254))

(assert (=> b!7232115 m!7901182))

(assert (=> b!7231988 d!2246157))

(declare-fun bs!1902752 () Bool)

(declare-fun d!2246159 () Bool)

(assert (= bs!1902752 (and d!2246159 b!7231995)))

(declare-fun lambda!439466 () Int)

(assert (=> bs!1902752 (= lambda!439466 lambda!439436)))

(declare-fun bs!1902753 () Bool)

(assert (= bs!1902753 (and d!2246159 d!2246127)))

(assert (=> bs!1902753 (= lambda!439466 lambda!439459)))

(declare-fun bs!1902754 () Bool)

(assert (= bs!1902754 (and d!2246159 d!2246129)))

(assert (=> bs!1902754 (= lambda!439466 lambda!439460)))

(assert (=> d!2246159 (matchZipper!3406 (set.insert (Context!14873 (++!16292 (exprs!7936 lt!2573604) (exprs!7936 ct2!328))) (as set.empty (Set Context!14872))) (++!16293 (t!384147 s1!1971) s2!1849))))

(declare-fun lt!2573673 () Unit!163529)

(assert (=> d!2246159 (= lt!2573673 (lemmaConcatPreservesForall!1305 (exprs!7936 lt!2573604) (exprs!7936 ct2!328) lambda!439466))))

(declare-fun lt!2573672 () Unit!163529)

(declare-fun choose!55526 (Context!14872 Context!14872 List!70098 List!70098) Unit!163529)

(assert (=> d!2246159 (= lt!2573672 (choose!55526 lt!2573604 ct2!328 (t!384147 s1!1971) s2!1849))))

(assert (=> d!2246159 (matchZipper!3406 (set.insert lt!2573604 (as set.empty (Set Context!14872))) (t!384147 s1!1971))))

(assert (=> d!2246159 (= (lemmaConcatenateContextMatchesConcatOfStrings!287 lt!2573604 ct2!328 (t!384147 s1!1971) s2!1849) lt!2573672)))

(declare-fun bs!1902755 () Bool)

(assert (= bs!1902755 d!2246159))

(declare-fun m!7901262 () Bool)

(assert (=> bs!1902755 m!7901262))

(assert (=> bs!1902755 m!7901058))

(declare-fun m!7901264 () Bool)

(assert (=> bs!1902755 m!7901264))

(declare-fun m!7901266 () Bool)

(assert (=> bs!1902755 m!7901266))

(assert (=> bs!1902755 m!7901266))

(declare-fun m!7901268 () Bool)

(assert (=> bs!1902755 m!7901268))

(assert (=> bs!1902755 m!7901062))

(assert (=> bs!1902755 m!7901058))

(assert (=> bs!1902755 m!7901062))

(assert (=> bs!1902755 m!7901064))

(assert (=> bs!1902755 m!7901056))

(assert (=> b!7231988 d!2246159))

(declare-fun d!2246163 () Bool)

(declare-fun e!4335582 () Bool)

(assert (=> d!2246163 e!4335582))

(declare-fun res!2934201 () Bool)

(assert (=> d!2246163 (=> (not res!2934201) (not e!4335582))))

(declare-fun lt!2573677 () Context!14872)

(declare-fun dynLambda!28520 (Int Context!14872) Bool)

(assert (=> d!2246163 (= res!2934201 (dynLambda!28520 lambda!439437 lt!2573677))))

(declare-fun getWitness!2014 (List!70097 Int) Context!14872)

(assert (=> d!2246163 (= lt!2573677 (getWitness!2014 (toList!11353 lt!2573606) lambda!439437))))

(assert (=> d!2246163 (exists!4135 lt!2573606 lambda!439437)))

(assert (=> d!2246163 (= (getWitness!2012 lt!2573606 lambda!439437) lt!2573677)))

(declare-fun b!7232122 () Bool)

(assert (=> b!7232122 (= e!4335582 (set.member lt!2573677 lt!2573606))))

(assert (= (and d!2246163 res!2934201) b!7232122))

(declare-fun b_lambda!277165 () Bool)

(assert (=> (not b_lambda!277165) (not d!2246163)))

(declare-fun m!7901276 () Bool)

(assert (=> d!2246163 m!7901276))

(assert (=> d!2246163 m!7901026))

(assert (=> d!2246163 m!7901026))

(declare-fun m!7901278 () Bool)

(assert (=> d!2246163 m!7901278))

(assert (=> d!2246163 m!7901020))

(declare-fun m!7901280 () Bool)

(assert (=> b!7232122 m!7901280))

(assert (=> b!7231988 d!2246163))

(declare-fun b!7232133 () Bool)

(declare-fun e!4335589 () (Set Context!14872))

(assert (=> b!7232133 (= e!4335589 (as set.empty (Set Context!14872)))))

(declare-fun d!2246169 () Bool)

(declare-fun c!1341842 () Bool)

(declare-fun e!4335591 () Bool)

(assert (=> d!2246169 (= c!1341842 e!4335591)))

(declare-fun res!2934204 () Bool)

(assert (=> d!2246169 (=> (not res!2934204) (not e!4335591))))

(assert (=> d!2246169 (= res!2934204 (is-Cons!69972 (exprs!7936 ct1!232)))))

(declare-fun e!4335590 () (Set Context!14872))

(assert (=> d!2246169 (= (derivationStepZipperUp!2370 ct1!232 (h!76422 s1!1971)) e!4335590)))

(declare-fun b!7232134 () Bool)

(assert (=> b!7232134 (= e!4335590 e!4335589)))

(declare-fun c!1341843 () Bool)

(assert (=> b!7232134 (= c!1341843 (is-Cons!69972 (exprs!7936 ct1!232)))))

(declare-fun b!7232135 () Bool)

(assert (=> b!7232135 (= e!4335591 (nullable!7813 (h!76420 (exprs!7936 ct1!232))))))

(declare-fun b!7232136 () Bool)

(declare-fun call!658255 () (Set Context!14872))

(assert (=> b!7232136 (= e!4335589 call!658255)))

(declare-fun b!7232137 () Bool)

(assert (=> b!7232137 (= e!4335590 (set.union call!658255 (derivationStepZipperUp!2370 (Context!14873 (t!384145 (exprs!7936 ct1!232))) (h!76422 s1!1971))))))

(declare-fun bm!658250 () Bool)

(assert (=> bm!658250 (= call!658255 (derivationStepZipperDown!2540 (h!76420 (exprs!7936 ct1!232)) (Context!14873 (t!384145 (exprs!7936 ct1!232))) (h!76422 s1!1971)))))

(assert (= (and d!2246169 res!2934204) b!7232135))

(assert (= (and d!2246169 c!1341842) b!7232137))

(assert (= (and d!2246169 (not c!1341842)) b!7232134))

(assert (= (and b!7232134 c!1341843) b!7232136))

(assert (= (and b!7232134 (not c!1341843)) b!7232133))

(assert (= (or b!7232137 b!7232136) bm!658250))

(declare-fun m!7901282 () Bool)

(assert (=> b!7232135 m!7901282))

(declare-fun m!7901284 () Bool)

(assert (=> b!7232137 m!7901284))

(declare-fun m!7901286 () Bool)

(assert (=> bm!658250 m!7901286))

(assert (=> b!7231988 d!2246169))

(declare-fun d!2246171 () Bool)

(declare-fun lt!2573682 () Bool)

(assert (=> d!2246171 (= lt!2573682 (exists!4136 (toList!11353 lt!2573606) lambda!439437))))

(declare-fun choose!55527 ((Set Context!14872) Int) Bool)

(assert (=> d!2246171 (= lt!2573682 (choose!55527 lt!2573606 lambda!439437))))

(assert (=> d!2246171 (= (exists!4135 lt!2573606 lambda!439437) lt!2573682)))

(declare-fun bs!1902756 () Bool)

(assert (= bs!1902756 d!2246171))

(assert (=> bs!1902756 m!7901026))

(assert (=> bs!1902756 m!7901026))

(declare-fun m!7901288 () Bool)

(assert (=> bs!1902756 m!7901288))

(declare-fun m!7901290 () Bool)

(assert (=> bs!1902756 m!7901290))

(assert (=> b!7231986 d!2246171))

(declare-fun bs!1902757 () Bool)

(declare-fun d!2246173 () Bool)

(assert (= bs!1902757 (and d!2246173 b!7231986)))

(declare-fun lambda!439469 () Int)

(assert (=> bs!1902757 (not (= lambda!439469 lambda!439437))))

(assert (=> d!2246173 true))

(declare-fun order!28819 () Int)

(declare-fun dynLambda!28521 (Int Int) Int)

(assert (=> d!2246173 (< (dynLambda!28521 order!28819 lambda!439437) (dynLambda!28521 order!28819 lambda!439469))))

(declare-fun forall!17323 (List!70097 Int) Bool)

(assert (=> d!2246173 (= (exists!4136 lt!2573602 lambda!439437) (not (forall!17323 lt!2573602 lambda!439469)))))

(declare-fun bs!1902758 () Bool)

(assert (= bs!1902758 d!2246173))

(declare-fun m!7901292 () Bool)

(assert (=> bs!1902758 m!7901292))

(assert (=> b!7231986 d!2246173))

(declare-fun bs!1902759 () Bool)

(declare-fun d!2246175 () Bool)

(assert (= bs!1902759 (and d!2246175 b!7231986)))

(declare-fun lambda!439472 () Int)

(assert (=> bs!1902759 (= lambda!439472 lambda!439437)))

(declare-fun bs!1902760 () Bool)

(assert (= bs!1902760 (and d!2246175 d!2246173)))

(assert (=> bs!1902760 (not (= lambda!439472 lambda!439469))))

(assert (=> d!2246175 true))

(assert (=> d!2246175 (exists!4136 lt!2573602 lambda!439472)))

(declare-fun lt!2573686 () Unit!163529)

(declare-fun choose!55528 (List!70097 List!70098) Unit!163529)

(assert (=> d!2246175 (= lt!2573686 (choose!55528 lt!2573602 (t!384147 s1!1971)))))

(declare-fun content!14383 (List!70097) (Set Context!14872))

(assert (=> d!2246175 (matchZipper!3406 (content!14383 lt!2573602) (t!384147 s1!1971))))

(assert (=> d!2246175 (= (lemmaZipperMatchesExistsMatchingContext!639 lt!2573602 (t!384147 s1!1971)) lt!2573686)))

(declare-fun bs!1902761 () Bool)

(assert (= bs!1902761 d!2246175))

(declare-fun m!7901308 () Bool)

(assert (=> bs!1902761 m!7901308))

(declare-fun m!7901310 () Bool)

(assert (=> bs!1902761 m!7901310))

(declare-fun m!7901312 () Bool)

(assert (=> bs!1902761 m!7901312))

(assert (=> bs!1902761 m!7901312))

(declare-fun m!7901314 () Bool)

(assert (=> bs!1902761 m!7901314))

(assert (=> b!7231986 d!2246175))

(declare-fun d!2246179 () Bool)

(declare-fun e!4335600 () Bool)

(assert (=> d!2246179 e!4335600))

(declare-fun res!2934213 () Bool)

(assert (=> d!2246179 (=> (not res!2934213) (not e!4335600))))

(declare-fun lt!2573689 () List!70097)

(declare-fun noDuplicate!2922 (List!70097) Bool)

(assert (=> d!2246179 (= res!2934213 (noDuplicate!2922 lt!2573689))))

(declare-fun choose!55529 ((Set Context!14872)) List!70097)

(assert (=> d!2246179 (= lt!2573689 (choose!55529 lt!2573606))))

(assert (=> d!2246179 (= (toList!11353 lt!2573606) lt!2573689)))

(declare-fun b!7232154 () Bool)

(assert (=> b!7232154 (= e!4335600 (= (content!14383 lt!2573689) lt!2573606))))

(assert (= (and d!2246179 res!2934213) b!7232154))

(declare-fun m!7901316 () Bool)

(assert (=> d!2246179 m!7901316))

(declare-fun m!7901318 () Bool)

(assert (=> d!2246179 m!7901318))

(declare-fun m!7901320 () Bool)

(assert (=> b!7232154 m!7901320))

(assert (=> b!7231986 d!2246179))

(declare-fun b!7232159 () Bool)

(declare-fun e!4335603 () Bool)

(declare-fun tp!2033989 () Bool)

(declare-fun tp!2033990 () Bool)

(assert (=> b!7232159 (= e!4335603 (and tp!2033989 tp!2033990))))

(assert (=> b!7231996 (= tp!2033971 e!4335603)))

(assert (= (and b!7231996 (is-Cons!69972 (exprs!7936 ct1!232))) b!7232159))

(declare-fun b!7232164 () Bool)

(declare-fun e!4335606 () Bool)

(declare-fun tp!2033993 () Bool)

(assert (=> b!7232164 (= e!4335606 (and tp_is_empty!46457 tp!2033993))))

(assert (=> b!7231993 (= tp!2033969 e!4335606)))

(assert (= (and b!7231993 (is-Cons!69974 (t!384147 s1!1971))) b!7232164))

(declare-fun b!7232165 () Bool)

(declare-fun e!4335607 () Bool)

(declare-fun tp!2033994 () Bool)

(declare-fun tp!2033995 () Bool)

(assert (=> b!7232165 (= e!4335607 (and tp!2033994 tp!2033995))))

(assert (=> b!7231987 (= tp!2033970 e!4335607)))

(assert (= (and b!7231987 (is-Cons!69972 (exprs!7936 ct2!328))) b!7232165))

(declare-fun b!7232166 () Bool)

(declare-fun e!4335608 () Bool)

(declare-fun tp!2033996 () Bool)

(assert (=> b!7232166 (= e!4335608 (and tp_is_empty!46457 tp!2033996))))

(assert (=> b!7231992 (= tp!2033972 e!4335608)))

(assert (= (and b!7231992 (is-Cons!69974 (t!384147 s2!1849))) b!7232166))

(declare-fun b_lambda!277167 () Bool)

(assert (= b_lambda!277161 (or b!7231995 b_lambda!277167)))

(declare-fun bs!1902762 () Bool)

(declare-fun d!2246181 () Bool)

(assert (= bs!1902762 (and d!2246181 b!7231995)))

(declare-fun validRegex!9510 (Regex!18496) Bool)

(assert (=> bs!1902762 (= (dynLambda!28519 lambda!439436 (h!76420 (exprs!7936 ct2!328))) (validRegex!9510 (h!76420 (exprs!7936 ct2!328))))))

(declare-fun m!7901322 () Bool)

(assert (=> bs!1902762 m!7901322))

(assert (=> b!7232097 d!2246181))

(declare-fun b_lambda!277169 () Bool)

(assert (= b_lambda!277159 (or b!7231995 b_lambda!277169)))

(declare-fun bs!1902763 () Bool)

(declare-fun d!2246183 () Bool)

(assert (= bs!1902763 (and d!2246183 b!7231995)))

(assert (=> bs!1902763 (= (dynLambda!28519 lambda!439436 (h!76420 (exprs!7936 ct1!232))) (validRegex!9510 (h!76420 (exprs!7936 ct1!232))))))

(declare-fun m!7901324 () Bool)

(assert (=> bs!1902763 m!7901324))

(assert (=> b!7232062 d!2246183))

(declare-fun b_lambda!277171 () Bool)

(assert (= b_lambda!277165 (or b!7231986 b_lambda!277171)))

(declare-fun bs!1902764 () Bool)

(declare-fun d!2246185 () Bool)

(assert (= bs!1902764 (and d!2246185 b!7231986)))

(assert (=> bs!1902764 (= (dynLambda!28520 lambda!439437 lt!2573677) (matchZipper!3406 (set.insert lt!2573677 (as set.empty (Set Context!14872))) (t!384147 s1!1971)))))

(declare-fun m!7901326 () Bool)

(assert (=> bs!1902764 m!7901326))

(assert (=> bs!1902764 m!7901326))

(declare-fun m!7901328 () Bool)

(assert (=> bs!1902764 m!7901328))

(assert (=> d!2246163 d!2246185))

(push 1)

(assert (not d!2246127))

(assert (not b!7232098))

(assert (not b!7232166))

(assert (not b!7232137))

(assert (not d!2246153))

(assert (not b!7232154))

(assert (not bm!658245))

(assert (not d!2246163))

(assert (not d!2246155))

(assert tp_is_empty!46457)

(assert (not d!2246137))

(assert (not b!7232115))

(assert (not d!2246123))

(assert (not b!7232159))

(assert (not d!2246125))

(assert (not d!2246175))

(assert (not b_lambda!277167))

(assert (not bs!1902762))

(assert (not b!7232044))

(assert (not d!2246129))

(assert (not b_lambda!277169))

(assert (not b!7232039))

(assert (not b!7232165))

(assert (not d!2246179))

(assert (not b!7232094))

(assert (not b!7232114))

(assert (not bs!1902764))

(assert (not bm!658250))

(assert (not b!7232110))

(assert (not bm!658246))

(assert (not d!2246149))

(assert (not d!2246131))

(assert (not b!7232111))

(assert (not d!2246173))

(assert (not b!7232042))

(assert (not b!7232100))

(assert (not b!7232045))

(assert (not d!2246121))

(assert (not d!2246133))

(assert (not b!7232056))

(assert (not bs!1902763))

(assert (not d!2246159))

(assert (not b!7232099))

(assert (not b!7232135))

(assert (not b!7232043))

(assert (not d!2246171))

(assert (not d!2246157))

(assert (not b!7232038))

(assert (not b!7232055))

(assert (not bm!658243))

(assert (not b!7232063))

(assert (not b_lambda!277171))

(assert (not b!7232164))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

