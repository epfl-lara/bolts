; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!701990 () Bool)

(assert start!701990)

(declare-fun b!7233224 () Bool)

(assert (=> b!7233224 true))

(declare-fun b!7233214 () Bool)

(declare-fun e!4336279 () Bool)

(declare-fun tp!2034161 () Bool)

(assert (=> b!7233214 (= e!4336279 tp!2034161)))

(declare-fun b!7233215 () Bool)

(declare-fun e!4336280 () Bool)

(declare-fun e!4336277 () Bool)

(assert (=> b!7233215 (= e!4336280 e!4336277)))

(declare-fun res!2934564 () Bool)

(assert (=> b!7233215 (=> (not res!2934564) (not e!4336277))))

(declare-datatypes ((C!37282 0))(
  ( (C!37283 (val!28589 Int)) )
))
(declare-datatypes ((Regex!18504 0))(
  ( (ElementMatch!18504 (c!1342172 C!37282)) (Concat!27349 (regOne!37520 Regex!18504) (regTwo!37520 Regex!18504)) (EmptyExpr!18504) (Star!18504 (reg!18833 Regex!18504)) (EmptyLang!18504) (Union!18504 (regOne!37521 Regex!18504) (regTwo!37521 Regex!18504)) )
))
(declare-datatypes ((List!70120 0))(
  ( (Nil!69996) (Cons!69996 (h!76444 Regex!18504) (t!384169 List!70120)) )
))
(declare-datatypes ((Context!14888 0))(
  ( (Context!14889 (exprs!7944 List!70120)) )
))
(declare-fun lt!2574169 () (Set Context!14888))

(declare-datatypes ((List!70121 0))(
  ( (Nil!69997) (Cons!69997 (h!76445 C!37282) (t!384170 List!70121)) )
))
(declare-fun s1!1971 () List!70121)

(declare-fun matchZipper!3414 ((Set Context!14888) List!70121) Bool)

(assert (=> b!7233215 (= res!2934564 (matchZipper!3414 lt!2574169 (t!384170 s1!1971)))))

(declare-fun lt!2574168 () (Set Context!14888))

(declare-fun derivationStepZipper!3296 ((Set Context!14888) C!37282) (Set Context!14888))

(assert (=> b!7233215 (= lt!2574169 (derivationStepZipper!3296 lt!2574168 (h!76445 s1!1971)))))

(declare-fun b!7233216 () Bool)

(declare-fun e!4336275 () Bool)

(declare-fun e!4336278 () Bool)

(assert (=> b!7233216 (= e!4336275 e!4336278)))

(declare-fun res!2934565 () Bool)

(assert (=> b!7233216 (=> res!2934565 e!4336278)))

(declare-fun lt!2574174 () List!70120)

(declare-fun isEmpty!40343 (List!70120) Bool)

(assert (=> b!7233216 (= res!2934565 (isEmpty!40343 lt!2574174))))

(declare-fun ct1!232 () Context!14888)

(declare-fun ct2!328 () Context!14888)

(declare-datatypes ((Unit!163545 0))(
  ( (Unit!163546) )
))
(declare-fun lt!2574176 () Unit!163545)

(declare-fun lambda!439706 () Int)

(declare-fun lemmaConcatPreservesForall!1313 (List!70120 List!70120 Int) Unit!163545)

(assert (=> b!7233216 (= lt!2574176 (lemmaConcatPreservesForall!1313 (exprs!7944 ct1!232) (exprs!7944 ct2!328) lambda!439706))))

(declare-fun lt!2574177 () (Set Context!14888))

(declare-fun derivationStepZipperUp!2378 (Context!14888 C!37282) (Set Context!14888))

(assert (=> b!7233216 (= lt!2574177 (derivationStepZipperUp!2378 (Context!14889 lt!2574174) (h!76445 s1!1971)))))

(declare-fun lt!2574171 () Unit!163545)

(assert (=> b!7233216 (= lt!2574171 (lemmaConcatPreservesForall!1313 (exprs!7944 ct1!232) (exprs!7944 ct2!328) lambda!439706))))

(declare-fun lt!2574166 () (Set Context!14888))

(declare-fun derivationStepZipperDown!2548 (Regex!18504 Context!14888 C!37282) (Set Context!14888))

(declare-fun tail!14129 (List!70120) List!70120)

(assert (=> b!7233216 (= lt!2574166 (derivationStepZipperDown!2548 (h!76444 (exprs!7944 ct1!232)) (Context!14889 (tail!14129 (exprs!7944 ct1!232))) (h!76445 s1!1971)))))

(declare-fun b!7233217 () Bool)

(declare-fun e!4336284 () Bool)

(declare-fun tp!2034163 () Bool)

(assert (=> b!7233217 (= e!4336284 tp!2034163)))

(declare-fun b!7233218 () Bool)

(declare-fun res!2934567 () Bool)

(declare-fun e!4336281 () Bool)

(assert (=> b!7233218 (=> (not res!2934567) (not e!4336281))))

(declare-fun s2!1849 () List!70121)

(assert (=> b!7233218 (= res!2934567 (matchZipper!3414 (set.insert ct2!328 (as set.empty (Set Context!14888))) s2!1849))))

(declare-fun b!7233219 () Bool)

(declare-fun e!4336283 () Bool)

(declare-fun tp_is_empty!46473 () Bool)

(declare-fun tp!2034164 () Bool)

(assert (=> b!7233219 (= e!4336283 (and tp_is_empty!46473 tp!2034164))))

(declare-fun b!7233220 () Bool)

(declare-fun e!4336282 () Bool)

(assert (=> b!7233220 (= e!4336282 e!4336275)))

(declare-fun res!2934568 () Bool)

(assert (=> b!7233220 (=> res!2934568 e!4336275)))

(assert (=> b!7233220 (= res!2934568 (isEmpty!40343 (exprs!7944 ct1!232)))))

(declare-fun lt!2574167 () (Set Context!14888))

(assert (=> b!7233220 (= lt!2574167 (derivationStepZipperUp!2378 ct1!232 (h!76445 s1!1971)))))

(declare-fun lt!2574170 () Unit!163545)

(declare-fun lt!2574180 () Context!14888)

(assert (=> b!7233220 (= lt!2574170 (lemmaConcatPreservesForall!1313 (exprs!7944 lt!2574180) (exprs!7944 ct2!328) lambda!439706))))

(declare-fun ++!16308 (List!70120 List!70120) List!70120)

(declare-fun ++!16309 (List!70121 List!70121) List!70121)

(assert (=> b!7233220 (matchZipper!3414 (set.insert (Context!14889 (++!16308 (exprs!7944 lt!2574180) (exprs!7944 ct2!328))) (as set.empty (Set Context!14888))) (++!16309 (t!384170 s1!1971) s2!1849))))

(declare-fun lt!2574178 () Unit!163545)

(assert (=> b!7233220 (= lt!2574178 (lemmaConcatPreservesForall!1313 (exprs!7944 lt!2574180) (exprs!7944 ct2!328) lambda!439706))))

(declare-fun lt!2574175 () Unit!163545)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!295 (Context!14888 Context!14888 List!70121 List!70121) Unit!163545)

(assert (=> b!7233220 (= lt!2574175 (lemmaConcatenateContextMatchesConcatOfStrings!295 lt!2574180 ct2!328 (t!384170 s1!1971) s2!1849))))

(declare-fun lambda!439707 () Int)

(declare-fun getWitness!2027 ((Set Context!14888) Int) Context!14888)

(assert (=> b!7233220 (= lt!2574180 (getWitness!2027 lt!2574169 lambda!439707))))

(declare-fun b!7233221 () Bool)

(assert (=> b!7233221 (= e!4336281 e!4336280)))

(declare-fun res!2934566 () Bool)

(assert (=> b!7233221 (=> (not res!2934566) (not e!4336280))))

(assert (=> b!7233221 (= res!2934566 (and (not (is-Nil!69996 (exprs!7944 ct1!232))) (is-Cons!69997 s1!1971)))))

(assert (=> b!7233221 (= lt!2574174 (++!16308 (exprs!7944 ct1!232) (exprs!7944 ct2!328)))))

(declare-fun lt!2574179 () Unit!163545)

(assert (=> b!7233221 (= lt!2574179 (lemmaConcatPreservesForall!1313 (exprs!7944 ct1!232) (exprs!7944 ct2!328) lambda!439706))))

(declare-fun b!7233223 () Bool)

(declare-fun e!4336276 () Bool)

(declare-fun tp!2034162 () Bool)

(assert (=> b!7233223 (= e!4336276 (and tp_is_empty!46473 tp!2034162))))

(assert (=> b!7233224 (= e!4336277 (not e!4336282))))

(declare-fun res!2934569 () Bool)

(assert (=> b!7233224 (=> res!2934569 e!4336282)))

(declare-fun exists!4151 ((Set Context!14888) Int) Bool)

(assert (=> b!7233224 (= res!2934569 (not (exists!4151 lt!2574169 lambda!439707)))))

(declare-datatypes ((List!70122 0))(
  ( (Nil!69998) (Cons!69998 (h!76446 Context!14888) (t!384171 List!70122)) )
))
(declare-fun lt!2574173 () List!70122)

(declare-fun exists!4152 (List!70122 Int) Bool)

(assert (=> b!7233224 (exists!4152 lt!2574173 lambda!439707)))

(declare-fun lt!2574172 () Unit!163545)

(declare-fun lemmaZipperMatchesExistsMatchingContext!647 (List!70122 List!70121) Unit!163545)

(assert (=> b!7233224 (= lt!2574172 (lemmaZipperMatchesExistsMatchingContext!647 lt!2574173 (t!384170 s1!1971)))))

(declare-fun toList!11361 ((Set Context!14888)) List!70122)

(assert (=> b!7233224 (= lt!2574173 (toList!11361 lt!2574169))))

(declare-fun b!7233222 () Bool)

(declare-fun validRegex!9514 (Regex!18504) Bool)

(assert (=> b!7233222 (= e!4336278 (validRegex!9514 (h!76444 (exprs!7944 ct1!232))))))

(declare-fun res!2934563 () Bool)

(assert (=> start!701990 (=> (not res!2934563) (not e!4336281))))

(assert (=> start!701990 (= res!2934563 (matchZipper!3414 lt!2574168 s1!1971))))

(assert (=> start!701990 (= lt!2574168 (set.insert ct1!232 (as set.empty (Set Context!14888))))))

(assert (=> start!701990 e!4336281))

(declare-fun inv!89271 (Context!14888) Bool)

(assert (=> start!701990 (and (inv!89271 ct1!232) e!4336279)))

(assert (=> start!701990 e!4336283))

(assert (=> start!701990 e!4336276))

(assert (=> start!701990 (and (inv!89271 ct2!328) e!4336284)))

(assert (= (and start!701990 res!2934563) b!7233218))

(assert (= (and b!7233218 res!2934567) b!7233221))

(assert (= (and b!7233221 res!2934566) b!7233215))

(assert (= (and b!7233215 res!2934564) b!7233224))

(assert (= (and b!7233224 (not res!2934569)) b!7233220))

(assert (= (and b!7233220 (not res!2934568)) b!7233216))

(assert (= (and b!7233216 (not res!2934565)) b!7233222))

(assert (= start!701990 b!7233214))

(assert (= (and start!701990 (is-Cons!69997 s1!1971)) b!7233219))

(assert (= (and start!701990 (is-Cons!69997 s2!1849)) b!7233223))

(assert (= start!701990 b!7233217))

(declare-fun m!7902804 () Bool)

(assert (=> b!7233216 m!7902804))

(declare-fun m!7902806 () Bool)

(assert (=> b!7233216 m!7902806))

(declare-fun m!7902808 () Bool)

(assert (=> b!7233216 m!7902808))

(declare-fun m!7902810 () Bool)

(assert (=> b!7233216 m!7902810))

(declare-fun m!7902812 () Bool)

(assert (=> b!7233216 m!7902812))

(assert (=> b!7233216 m!7902804))

(declare-fun m!7902814 () Bool)

(assert (=> b!7233221 m!7902814))

(assert (=> b!7233221 m!7902804))

(declare-fun m!7902816 () Bool)

(assert (=> b!7233215 m!7902816))

(declare-fun m!7902818 () Bool)

(assert (=> b!7233215 m!7902818))

(declare-fun m!7902820 () Bool)

(assert (=> b!7233218 m!7902820))

(assert (=> b!7233218 m!7902820))

(declare-fun m!7902822 () Bool)

(assert (=> b!7233218 m!7902822))

(declare-fun m!7902824 () Bool)

(assert (=> b!7233220 m!7902824))

(declare-fun m!7902826 () Bool)

(assert (=> b!7233220 m!7902826))

(assert (=> b!7233220 m!7902824))

(declare-fun m!7902828 () Bool)

(assert (=> b!7233220 m!7902828))

(declare-fun m!7902830 () Bool)

(assert (=> b!7233220 m!7902830))

(declare-fun m!7902832 () Bool)

(assert (=> b!7233220 m!7902832))

(declare-fun m!7902834 () Bool)

(assert (=> b!7233220 m!7902834))

(declare-fun m!7902836 () Bool)

(assert (=> b!7233220 m!7902836))

(assert (=> b!7233220 m!7902828))

(declare-fun m!7902838 () Bool)

(assert (=> b!7233220 m!7902838))

(declare-fun m!7902840 () Bool)

(assert (=> b!7233220 m!7902840))

(assert (=> b!7233220 m!7902826))

(declare-fun m!7902842 () Bool)

(assert (=> b!7233224 m!7902842))

(declare-fun m!7902844 () Bool)

(assert (=> b!7233224 m!7902844))

(declare-fun m!7902846 () Bool)

(assert (=> b!7233224 m!7902846))

(declare-fun m!7902848 () Bool)

(assert (=> b!7233224 m!7902848))

(declare-fun m!7902850 () Bool)

(assert (=> start!701990 m!7902850))

(declare-fun m!7902852 () Bool)

(assert (=> start!701990 m!7902852))

(declare-fun m!7902854 () Bool)

(assert (=> start!701990 m!7902854))

(declare-fun m!7902856 () Bool)

(assert (=> start!701990 m!7902856))

(declare-fun m!7902858 () Bool)

(assert (=> b!7233222 m!7902858))

(push 1)

(assert (not start!701990))

(assert (not b!7233221))

(assert (not b!7233220))

(assert (not b!7233218))

(assert (not b!7233219))

(assert (not b!7233223))

(assert (not b!7233217))

(assert (not b!7233215))

(assert (not b!7233222))

(assert (not b!7233214))

(assert (not b!7233216))

(assert (not b!7233224))

(assert tp_is_empty!46473)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2246549 () Bool)

(declare-fun e!4336317 () Bool)

(assert (=> d!2246549 e!4336317))

(declare-fun res!2934593 () Bool)

(assert (=> d!2246549 (=> (not res!2934593) (not e!4336317))))

(declare-fun lt!2574228 () Context!14888)

(declare-fun dynLambda!28537 (Int Context!14888) Bool)

(assert (=> d!2246549 (= res!2934593 (dynLambda!28537 lambda!439707 lt!2574228))))

(declare-fun getWitness!2029 (List!70122 Int) Context!14888)

(assert (=> d!2246549 (= lt!2574228 (getWitness!2029 (toList!11361 lt!2574169) lambda!439707))))

(assert (=> d!2246549 (exists!4151 lt!2574169 lambda!439707)))

(assert (=> d!2246549 (= (getWitness!2027 lt!2574169 lambda!439707) lt!2574228)))

(declare-fun b!7233264 () Bool)

(assert (=> b!7233264 (= e!4336317 (set.member lt!2574228 lt!2574169))))

(assert (= (and d!2246549 res!2934593) b!7233264))

(declare-fun b_lambda!277231 () Bool)

(assert (=> (not b_lambda!277231) (not d!2246549)))

(declare-fun m!7902916 () Bool)

(assert (=> d!2246549 m!7902916))

(assert (=> d!2246549 m!7902848))

(assert (=> d!2246549 m!7902848))

(declare-fun m!7902918 () Bool)

(assert (=> d!2246549 m!7902918))

(assert (=> d!2246549 m!7902842))

(declare-fun m!7902920 () Bool)

(assert (=> b!7233264 m!7902920))

(assert (=> b!7233220 d!2246549))

(declare-fun d!2246551 () Bool)

(assert (=> d!2246551 (= (isEmpty!40343 (exprs!7944 ct1!232)) (is-Nil!69996 (exprs!7944 ct1!232)))))

(assert (=> b!7233220 d!2246551))

(declare-fun d!2246553 () Bool)

(declare-fun c!1342182 () Bool)

(declare-fun isEmpty!40345 (List!70121) Bool)

(assert (=> d!2246553 (= c!1342182 (isEmpty!40345 (++!16309 (t!384170 s1!1971) s2!1849)))))

(declare-fun e!4336320 () Bool)

(assert (=> d!2246553 (= (matchZipper!3414 (set.insert (Context!14889 (++!16308 (exprs!7944 lt!2574180) (exprs!7944 ct2!328))) (as set.empty (Set Context!14888))) (++!16309 (t!384170 s1!1971) s2!1849)) e!4336320)))

(declare-fun b!7233269 () Bool)

(declare-fun nullableZipper!2818 ((Set Context!14888)) Bool)

(assert (=> b!7233269 (= e!4336320 (nullableZipper!2818 (set.insert (Context!14889 (++!16308 (exprs!7944 lt!2574180) (exprs!7944 ct2!328))) (as set.empty (Set Context!14888)))))))

(declare-fun b!7233270 () Bool)

(declare-fun head!14806 (List!70121) C!37282)

(declare-fun tail!14131 (List!70121) List!70121)

(assert (=> b!7233270 (= e!4336320 (matchZipper!3414 (derivationStepZipper!3296 (set.insert (Context!14889 (++!16308 (exprs!7944 lt!2574180) (exprs!7944 ct2!328))) (as set.empty (Set Context!14888))) (head!14806 (++!16309 (t!384170 s1!1971) s2!1849))) (tail!14131 (++!16309 (t!384170 s1!1971) s2!1849))))))

(assert (= (and d!2246553 c!1342182) b!7233269))

(assert (= (and d!2246553 (not c!1342182)) b!7233270))

(assert (=> d!2246553 m!7902828))

(declare-fun m!7902922 () Bool)

(assert (=> d!2246553 m!7902922))

(assert (=> b!7233269 m!7902824))

(declare-fun m!7902924 () Bool)

(assert (=> b!7233269 m!7902924))

(assert (=> b!7233270 m!7902828))

(declare-fun m!7902926 () Bool)

(assert (=> b!7233270 m!7902926))

(assert (=> b!7233270 m!7902824))

(assert (=> b!7233270 m!7902926))

(declare-fun m!7902928 () Bool)

(assert (=> b!7233270 m!7902928))

(assert (=> b!7233270 m!7902828))

(declare-fun m!7902930 () Bool)

(assert (=> b!7233270 m!7902930))

(assert (=> b!7233270 m!7902928))

(assert (=> b!7233270 m!7902930))

(declare-fun m!7902932 () Bool)

(assert (=> b!7233270 m!7902932))

(assert (=> b!7233220 d!2246553))

(declare-fun b!7233279 () Bool)

(declare-fun e!4336326 () List!70121)

(assert (=> b!7233279 (= e!4336326 s2!1849)))

(declare-fun b!7233281 () Bool)

(declare-fun res!2934598 () Bool)

(declare-fun e!4336325 () Bool)

(assert (=> b!7233281 (=> (not res!2934598) (not e!4336325))))

(declare-fun lt!2574231 () List!70121)

(declare-fun size!41568 (List!70121) Int)

(assert (=> b!7233281 (= res!2934598 (= (size!41568 lt!2574231) (+ (size!41568 (t!384170 s1!1971)) (size!41568 s2!1849))))))

(declare-fun b!7233282 () Bool)

(assert (=> b!7233282 (= e!4336325 (or (not (= s2!1849 Nil!69997)) (= lt!2574231 (t!384170 s1!1971))))))

(declare-fun d!2246555 () Bool)

(assert (=> d!2246555 e!4336325))

(declare-fun res!2934599 () Bool)

(assert (=> d!2246555 (=> (not res!2934599) (not e!4336325))))

(declare-fun content!14402 (List!70121) (Set C!37282))

(assert (=> d!2246555 (= res!2934599 (= (content!14402 lt!2574231) (set.union (content!14402 (t!384170 s1!1971)) (content!14402 s2!1849))))))

(assert (=> d!2246555 (= lt!2574231 e!4336326)))

(declare-fun c!1342185 () Bool)

(assert (=> d!2246555 (= c!1342185 (is-Nil!69997 (t!384170 s1!1971)))))

(assert (=> d!2246555 (= (++!16309 (t!384170 s1!1971) s2!1849) lt!2574231)))

(declare-fun b!7233280 () Bool)

(assert (=> b!7233280 (= e!4336326 (Cons!69997 (h!76445 (t!384170 s1!1971)) (++!16309 (t!384170 (t!384170 s1!1971)) s2!1849)))))

(assert (= (and d!2246555 c!1342185) b!7233279))

(assert (= (and d!2246555 (not c!1342185)) b!7233280))

(assert (= (and d!2246555 res!2934599) b!7233281))

(assert (= (and b!7233281 res!2934598) b!7233282))

(declare-fun m!7902934 () Bool)

(assert (=> b!7233281 m!7902934))

(declare-fun m!7902936 () Bool)

(assert (=> b!7233281 m!7902936))

(declare-fun m!7902938 () Bool)

(assert (=> b!7233281 m!7902938))

(declare-fun m!7902940 () Bool)

(assert (=> d!2246555 m!7902940))

(declare-fun m!7902942 () Bool)

(assert (=> d!2246555 m!7902942))

(declare-fun m!7902944 () Bool)

(assert (=> d!2246555 m!7902944))

(declare-fun m!7902946 () Bool)

(assert (=> b!7233280 m!7902946))

(assert (=> b!7233220 d!2246555))

(declare-fun b!7233292 () Bool)

(declare-fun e!4336332 () List!70120)

(assert (=> b!7233292 (= e!4336332 (Cons!69996 (h!76444 (exprs!7944 lt!2574180)) (++!16308 (t!384169 (exprs!7944 lt!2574180)) (exprs!7944 ct2!328))))))

(declare-fun b!7233291 () Bool)

(assert (=> b!7233291 (= e!4336332 (exprs!7944 ct2!328))))

(declare-fun b!7233293 () Bool)

(declare-fun res!2934605 () Bool)

(declare-fun e!4336331 () Bool)

(assert (=> b!7233293 (=> (not res!2934605) (not e!4336331))))

(declare-fun lt!2574234 () List!70120)

(declare-fun size!41569 (List!70120) Int)

(assert (=> b!7233293 (= res!2934605 (= (size!41569 lt!2574234) (+ (size!41569 (exprs!7944 lt!2574180)) (size!41569 (exprs!7944 ct2!328)))))))

(declare-fun b!7233294 () Bool)

(assert (=> b!7233294 (= e!4336331 (or (not (= (exprs!7944 ct2!328) Nil!69996)) (= lt!2574234 (exprs!7944 lt!2574180))))))

(declare-fun d!2246557 () Bool)

(assert (=> d!2246557 e!4336331))

(declare-fun res!2934604 () Bool)

(assert (=> d!2246557 (=> (not res!2934604) (not e!4336331))))

(declare-fun content!14403 (List!70120) (Set Regex!18504))

(assert (=> d!2246557 (= res!2934604 (= (content!14403 lt!2574234) (set.union (content!14403 (exprs!7944 lt!2574180)) (content!14403 (exprs!7944 ct2!328)))))))

(assert (=> d!2246557 (= lt!2574234 e!4336332)))

(declare-fun c!1342188 () Bool)

(assert (=> d!2246557 (= c!1342188 (is-Nil!69996 (exprs!7944 lt!2574180)))))

(assert (=> d!2246557 (= (++!16308 (exprs!7944 lt!2574180) (exprs!7944 ct2!328)) lt!2574234)))

(assert (= (and d!2246557 c!1342188) b!7233291))

(assert (= (and d!2246557 (not c!1342188)) b!7233292))

(assert (= (and d!2246557 res!2934604) b!7233293))

(assert (= (and b!7233293 res!2934605) b!7233294))

(declare-fun m!7902948 () Bool)

(assert (=> b!7233292 m!7902948))

(declare-fun m!7902950 () Bool)

(assert (=> b!7233293 m!7902950))

(declare-fun m!7902952 () Bool)

(assert (=> b!7233293 m!7902952))

(declare-fun m!7902954 () Bool)

(assert (=> b!7233293 m!7902954))

(declare-fun m!7902956 () Bool)

(assert (=> d!2246557 m!7902956))

(declare-fun m!7902958 () Bool)

(assert (=> d!2246557 m!7902958))

(declare-fun m!7902960 () Bool)

(assert (=> d!2246557 m!7902960))

(assert (=> b!7233220 d!2246557))

(declare-fun b!7233305 () Bool)

(declare-fun e!4336340 () (Set Context!14888))

(declare-fun e!4336341 () (Set Context!14888))

(assert (=> b!7233305 (= e!4336340 e!4336341)))

(declare-fun c!1342194 () Bool)

(assert (=> b!7233305 (= c!1342194 (is-Cons!69996 (exprs!7944 ct1!232)))))

(declare-fun bm!658406 () Bool)

(declare-fun call!658411 () (Set Context!14888))

(assert (=> bm!658406 (= call!658411 (derivationStepZipperDown!2548 (h!76444 (exprs!7944 ct1!232)) (Context!14889 (t!384169 (exprs!7944 ct1!232))) (h!76445 s1!1971)))))

(declare-fun d!2246559 () Bool)

(declare-fun c!1342193 () Bool)

(declare-fun e!4336339 () Bool)

(assert (=> d!2246559 (= c!1342193 e!4336339)))

(declare-fun res!2934608 () Bool)

(assert (=> d!2246559 (=> (not res!2934608) (not e!4336339))))

(assert (=> d!2246559 (= res!2934608 (is-Cons!69996 (exprs!7944 ct1!232)))))

(assert (=> d!2246559 (= (derivationStepZipperUp!2378 ct1!232 (h!76445 s1!1971)) e!4336340)))

(declare-fun b!7233306 () Bool)

(assert (=> b!7233306 (= e!4336340 (set.union call!658411 (derivationStepZipperUp!2378 (Context!14889 (t!384169 (exprs!7944 ct1!232))) (h!76445 s1!1971))))))

(declare-fun b!7233307 () Bool)

(assert (=> b!7233307 (= e!4336341 (as set.empty (Set Context!14888)))))

(declare-fun b!7233308 () Bool)

(assert (=> b!7233308 (= e!4336341 call!658411)))

(declare-fun b!7233309 () Bool)

(declare-fun nullable!7821 (Regex!18504) Bool)

(assert (=> b!7233309 (= e!4336339 (nullable!7821 (h!76444 (exprs!7944 ct1!232))))))

(assert (= (and d!2246559 res!2934608) b!7233309))

(assert (= (and d!2246559 c!1342193) b!7233306))

(assert (= (and d!2246559 (not c!1342193)) b!7233305))

(assert (= (and b!7233305 c!1342194) b!7233308))

(assert (= (and b!7233305 (not c!1342194)) b!7233307))

(assert (= (or b!7233306 b!7233308) bm!658406))

(declare-fun m!7902962 () Bool)

(assert (=> bm!658406 m!7902962))

(declare-fun m!7902964 () Bool)

(assert (=> b!7233306 m!7902964))

(declare-fun m!7902966 () Bool)

(assert (=> b!7233309 m!7902966))

(assert (=> b!7233220 d!2246559))

(declare-fun d!2246563 () Bool)

(declare-fun forall!17335 (List!70120 Int) Bool)

(assert (=> d!2246563 (forall!17335 (++!16308 (exprs!7944 lt!2574180) (exprs!7944 ct2!328)) lambda!439706)))

(declare-fun lt!2574237 () Unit!163545)

(declare-fun choose!55558 (List!70120 List!70120 Int) Unit!163545)

(assert (=> d!2246563 (= lt!2574237 (choose!55558 (exprs!7944 lt!2574180) (exprs!7944 ct2!328) lambda!439706))))

(assert (=> d!2246563 (forall!17335 (exprs!7944 lt!2574180) lambda!439706)))

(assert (=> d!2246563 (= (lemmaConcatPreservesForall!1313 (exprs!7944 lt!2574180) (exprs!7944 ct2!328) lambda!439706) lt!2574237)))

(declare-fun bs!1902911 () Bool)

(assert (= bs!1902911 d!2246563))

(assert (=> bs!1902911 m!7902840))

(assert (=> bs!1902911 m!7902840))

(declare-fun m!7902968 () Bool)

(assert (=> bs!1902911 m!7902968))

(declare-fun m!7902970 () Bool)

(assert (=> bs!1902911 m!7902970))

(declare-fun m!7902972 () Bool)

(assert (=> bs!1902911 m!7902972))

(assert (=> b!7233220 d!2246563))

(declare-fun bs!1902912 () Bool)

(declare-fun d!2246565 () Bool)

(assert (= bs!1902912 (and d!2246565 b!7233221)))

(declare-fun lambda!439730 () Int)

(assert (=> bs!1902912 (= lambda!439730 lambda!439706)))

(assert (=> d!2246565 (matchZipper!3414 (set.insert (Context!14889 (++!16308 (exprs!7944 lt!2574180) (exprs!7944 ct2!328))) (as set.empty (Set Context!14888))) (++!16309 (t!384170 s1!1971) s2!1849))))

(declare-fun lt!2574247 () Unit!163545)

(assert (=> d!2246565 (= lt!2574247 (lemmaConcatPreservesForall!1313 (exprs!7944 lt!2574180) (exprs!7944 ct2!328) lambda!439730))))

(declare-fun lt!2574246 () Unit!163545)

(declare-fun choose!55559 (Context!14888 Context!14888 List!70121 List!70121) Unit!163545)

(assert (=> d!2246565 (= lt!2574246 (choose!55559 lt!2574180 ct2!328 (t!384170 s1!1971) s2!1849))))

(assert (=> d!2246565 (matchZipper!3414 (set.insert lt!2574180 (as set.empty (Set Context!14888))) (t!384170 s1!1971))))

(assert (=> d!2246565 (= (lemmaConcatenateContextMatchesConcatOfStrings!295 lt!2574180 ct2!328 (t!384170 s1!1971) s2!1849) lt!2574246)))

(declare-fun bs!1902913 () Bool)

(assert (= bs!1902913 d!2246565))

(assert (=> bs!1902913 m!7902824))

(assert (=> bs!1902913 m!7902828))

(declare-fun m!7902974 () Bool)

(assert (=> bs!1902913 m!7902974))

(assert (=> bs!1902913 m!7902824))

(assert (=> bs!1902913 m!7902828))

(assert (=> bs!1902913 m!7902830))

(declare-fun m!7902976 () Bool)

(assert (=> bs!1902913 m!7902976))

(declare-fun m!7902978 () Bool)

(assert (=> bs!1902913 m!7902978))

(assert (=> bs!1902913 m!7902976))

(declare-fun m!7902980 () Bool)

(assert (=> bs!1902913 m!7902980))

(assert (=> bs!1902913 m!7902840))

(assert (=> b!7233220 d!2246565))

(declare-fun d!2246567 () Bool)

(declare-fun lt!2574252 () Bool)

(assert (=> d!2246567 (= lt!2574252 (exists!4152 (toList!11361 lt!2574169) lambda!439707))))

(declare-fun choose!55560 ((Set Context!14888) Int) Bool)

(assert (=> d!2246567 (= lt!2574252 (choose!55560 lt!2574169 lambda!439707))))

(assert (=> d!2246567 (= (exists!4151 lt!2574169 lambda!439707) lt!2574252)))

(declare-fun bs!1902914 () Bool)

(assert (= bs!1902914 d!2246567))

(assert (=> bs!1902914 m!7902848))

(assert (=> bs!1902914 m!7902848))

(declare-fun m!7902982 () Bool)

(assert (=> bs!1902914 m!7902982))

(declare-fun m!7902984 () Bool)

(assert (=> bs!1902914 m!7902984))

(assert (=> b!7233224 d!2246567))

(declare-fun bs!1902917 () Bool)

(declare-fun d!2246569 () Bool)

(assert (= bs!1902917 (and d!2246569 b!7233224)))

(declare-fun lambda!439734 () Int)

(assert (=> bs!1902917 (not (= lambda!439734 lambda!439707))))

(assert (=> d!2246569 true))

(declare-fun order!28835 () Int)

(declare-fun dynLambda!28538 (Int Int) Int)

(assert (=> d!2246569 (< (dynLambda!28538 order!28835 lambda!439707) (dynLambda!28538 order!28835 lambda!439734))))

(declare-fun forall!17336 (List!70122 Int) Bool)

(assert (=> d!2246569 (= (exists!4152 lt!2574173 lambda!439707) (not (forall!17336 lt!2574173 lambda!439734)))))

(declare-fun bs!1902918 () Bool)

(assert (= bs!1902918 d!2246569))

(declare-fun m!7902994 () Bool)

(assert (=> bs!1902918 m!7902994))

(assert (=> b!7233224 d!2246569))

(declare-fun bs!1902919 () Bool)

(declare-fun d!2246573 () Bool)

(assert (= bs!1902919 (and d!2246573 b!7233224)))

(declare-fun lambda!439737 () Int)

(assert (=> bs!1902919 (= lambda!439737 lambda!439707)))

(declare-fun bs!1902920 () Bool)

(assert (= bs!1902920 (and d!2246573 d!2246569)))

(assert (=> bs!1902920 (not (= lambda!439737 lambda!439734))))

(assert (=> d!2246573 true))

(assert (=> d!2246573 (exists!4152 lt!2574173 lambda!439737)))

(declare-fun lt!2574255 () Unit!163545)

(declare-fun choose!55561 (List!70122 List!70121) Unit!163545)

(assert (=> d!2246573 (= lt!2574255 (choose!55561 lt!2574173 (t!384170 s1!1971)))))

(declare-fun content!14404 (List!70122) (Set Context!14888))

(assert (=> d!2246573 (matchZipper!3414 (content!14404 lt!2574173) (t!384170 s1!1971))))

(assert (=> d!2246573 (= (lemmaZipperMatchesExistsMatchingContext!647 lt!2574173 (t!384170 s1!1971)) lt!2574255)))

(declare-fun bs!1902921 () Bool)

(assert (= bs!1902921 d!2246573))

(declare-fun m!7902996 () Bool)

(assert (=> bs!1902921 m!7902996))

(declare-fun m!7902998 () Bool)

(assert (=> bs!1902921 m!7902998))

(declare-fun m!7903000 () Bool)

(assert (=> bs!1902921 m!7903000))

(assert (=> bs!1902921 m!7903000))

(declare-fun m!7903002 () Bool)

(assert (=> bs!1902921 m!7903002))

(assert (=> b!7233224 d!2246573))

(declare-fun d!2246577 () Bool)

(declare-fun e!4336347 () Bool)

(assert (=> d!2246577 e!4336347))

(declare-fun res!2934611 () Bool)

(assert (=> d!2246577 (=> (not res!2934611) (not e!4336347))))

(declare-fun lt!2574258 () List!70122)

(declare-fun noDuplicate!2928 (List!70122) Bool)

(assert (=> d!2246577 (= res!2934611 (noDuplicate!2928 lt!2574258))))

(declare-fun choose!55562 ((Set Context!14888)) List!70122)

(assert (=> d!2246577 (= lt!2574258 (choose!55562 lt!2574169))))

(assert (=> d!2246577 (= (toList!11361 lt!2574169) lt!2574258)))

(declare-fun b!7233320 () Bool)

(assert (=> b!7233320 (= e!4336347 (= (content!14404 lt!2574258) lt!2574169))))

(assert (= (and d!2246577 res!2934611) b!7233320))

(declare-fun m!7903004 () Bool)

(assert (=> d!2246577 m!7903004))

(declare-fun m!7903006 () Bool)

(assert (=> d!2246577 m!7903006))

(declare-fun m!7903008 () Bool)

(assert (=> b!7233320 m!7903008))

(assert (=> b!7233224 d!2246577))

(declare-fun d!2246579 () Bool)

(declare-fun c!1342200 () Bool)

(assert (=> d!2246579 (= c!1342200 (isEmpty!40345 s2!1849))))

(declare-fun e!4336348 () Bool)

(assert (=> d!2246579 (= (matchZipper!3414 (set.insert ct2!328 (as set.empty (Set Context!14888))) s2!1849) e!4336348)))

(declare-fun b!7233321 () Bool)

(assert (=> b!7233321 (= e!4336348 (nullableZipper!2818 (set.insert ct2!328 (as set.empty (Set Context!14888)))))))

(declare-fun b!7233322 () Bool)

(assert (=> b!7233322 (= e!4336348 (matchZipper!3414 (derivationStepZipper!3296 (set.insert ct2!328 (as set.empty (Set Context!14888))) (head!14806 s2!1849)) (tail!14131 s2!1849)))))

(assert (= (and d!2246579 c!1342200) b!7233321))

(assert (= (and d!2246579 (not c!1342200)) b!7233322))

(declare-fun m!7903014 () Bool)

(assert (=> d!2246579 m!7903014))

(assert (=> b!7233321 m!7902820))

(declare-fun m!7903018 () Bool)

(assert (=> b!7233321 m!7903018))

(declare-fun m!7903020 () Bool)

(assert (=> b!7233322 m!7903020))

(assert (=> b!7233322 m!7902820))

(assert (=> b!7233322 m!7903020))

(declare-fun m!7903022 () Bool)

(assert (=> b!7233322 m!7903022))

(declare-fun m!7903026 () Bool)

(assert (=> b!7233322 m!7903026))

(assert (=> b!7233322 m!7903022))

(assert (=> b!7233322 m!7903026))

(declare-fun m!7903030 () Bool)

(assert (=> b!7233322 m!7903030))

(assert (=> b!7233218 d!2246579))

(declare-fun bm!658413 () Bool)

(declare-fun call!658418 () Bool)

(declare-fun c!1342206 () Bool)

(assert (=> bm!658413 (= call!658418 (validRegex!9514 (ite c!1342206 (regTwo!37521 (h!76444 (exprs!7944 ct1!232))) (regTwo!37520 (h!76444 (exprs!7944 ct1!232))))))))

(declare-fun d!2246581 () Bool)

(declare-fun res!2934628 () Bool)

(declare-fun e!4336365 () Bool)

(assert (=> d!2246581 (=> res!2934628 e!4336365)))

(assert (=> d!2246581 (= res!2934628 (is-ElementMatch!18504 (h!76444 (exprs!7944 ct1!232))))))

(assert (=> d!2246581 (= (validRegex!9514 (h!76444 (exprs!7944 ct1!232))) e!4336365)))

(declare-fun b!7233343 () Bool)

(declare-fun e!4336369 () Bool)

(assert (=> b!7233343 (= e!4336369 call!658418)))

(declare-fun b!7233344 () Bool)

(declare-fun e!4336371 () Bool)

(assert (=> b!7233344 (= e!4336371 call!658418)))

(declare-fun b!7233345 () Bool)

(declare-fun res!2934626 () Bool)

(assert (=> b!7233345 (=> (not res!2934626) (not e!4336369))))

(declare-fun call!658419 () Bool)

(assert (=> b!7233345 (= res!2934626 call!658419)))

(declare-fun e!4336370 () Bool)

(assert (=> b!7233345 (= e!4336370 e!4336369)))

(declare-fun b!7233346 () Bool)

(declare-fun e!4336366 () Bool)

(assert (=> b!7233346 (= e!4336365 e!4336366)))

(declare-fun c!1342205 () Bool)

(assert (=> b!7233346 (= c!1342205 (is-Star!18504 (h!76444 (exprs!7944 ct1!232))))))

(declare-fun b!7233347 () Bool)

(declare-fun res!2934625 () Bool)

(declare-fun e!4336368 () Bool)

(assert (=> b!7233347 (=> res!2934625 e!4336368)))

(assert (=> b!7233347 (= res!2934625 (not (is-Concat!27349 (h!76444 (exprs!7944 ct1!232)))))))

(assert (=> b!7233347 (= e!4336370 e!4336368)))

(declare-fun b!7233348 () Bool)

(assert (=> b!7233348 (= e!4336368 e!4336371)))

(declare-fun res!2934627 () Bool)

(assert (=> b!7233348 (=> (not res!2934627) (not e!4336371))))

(assert (=> b!7233348 (= res!2934627 call!658419)))

(declare-fun b!7233349 () Bool)

(declare-fun e!4336367 () Bool)

(declare-fun call!658420 () Bool)

(assert (=> b!7233349 (= e!4336367 call!658420)))

(declare-fun b!7233350 () Bool)

(assert (=> b!7233350 (= e!4336366 e!4336367)))

(declare-fun res!2934624 () Bool)

(assert (=> b!7233350 (= res!2934624 (not (nullable!7821 (reg!18833 (h!76444 (exprs!7944 ct1!232))))))))

(assert (=> b!7233350 (=> (not res!2934624) (not e!4336367))))

(declare-fun bm!658414 () Bool)

(assert (=> bm!658414 (= call!658419 call!658420)))

(declare-fun bm!658415 () Bool)

(assert (=> bm!658415 (= call!658420 (validRegex!9514 (ite c!1342205 (reg!18833 (h!76444 (exprs!7944 ct1!232))) (ite c!1342206 (regOne!37521 (h!76444 (exprs!7944 ct1!232))) (regOne!37520 (h!76444 (exprs!7944 ct1!232)))))))))

(declare-fun b!7233351 () Bool)

(assert (=> b!7233351 (= e!4336366 e!4336370)))

(assert (=> b!7233351 (= c!1342206 (is-Union!18504 (h!76444 (exprs!7944 ct1!232))))))

(assert (= (and d!2246581 (not res!2934628)) b!7233346))

(assert (= (and b!7233346 c!1342205) b!7233350))

(assert (= (and b!7233346 (not c!1342205)) b!7233351))

(assert (= (and b!7233350 res!2934624) b!7233349))

(assert (= (and b!7233351 c!1342206) b!7233345))

(assert (= (and b!7233351 (not c!1342206)) b!7233347))

(assert (= (and b!7233345 res!2934626) b!7233343))

(assert (= (and b!7233347 (not res!2934625)) b!7233348))

(assert (= (and b!7233348 res!2934627) b!7233344))

(assert (= (or b!7233345 b!7233348) bm!658414))

(assert (= (or b!7233343 b!7233344) bm!658413))

(assert (= (or b!7233349 bm!658414) bm!658415))

(declare-fun m!7903034 () Bool)

(assert (=> bm!658413 m!7903034))

(declare-fun m!7903036 () Bool)

(assert (=> b!7233350 m!7903036))

(declare-fun m!7903038 () Bool)

(assert (=> bm!658415 m!7903038))

(assert (=> b!7233222 d!2246581))

(declare-fun d!2246585 () Bool)

(declare-fun c!1342207 () Bool)

(assert (=> d!2246585 (= c!1342207 (isEmpty!40345 s1!1971))))

(declare-fun e!4336372 () Bool)

(assert (=> d!2246585 (= (matchZipper!3414 lt!2574168 s1!1971) e!4336372)))

(declare-fun b!7233352 () Bool)

(assert (=> b!7233352 (= e!4336372 (nullableZipper!2818 lt!2574168))))

(declare-fun b!7233353 () Bool)

(assert (=> b!7233353 (= e!4336372 (matchZipper!3414 (derivationStepZipper!3296 lt!2574168 (head!14806 s1!1971)) (tail!14131 s1!1971)))))

(assert (= (and d!2246585 c!1342207) b!7233352))

(assert (= (and d!2246585 (not c!1342207)) b!7233353))

(declare-fun m!7903040 () Bool)

(assert (=> d!2246585 m!7903040))

(declare-fun m!7903042 () Bool)

(assert (=> b!7233352 m!7903042))

(declare-fun m!7903044 () Bool)

(assert (=> b!7233353 m!7903044))

(assert (=> b!7233353 m!7903044))

(declare-fun m!7903046 () Bool)

(assert (=> b!7233353 m!7903046))

(declare-fun m!7903048 () Bool)

(assert (=> b!7233353 m!7903048))

(assert (=> b!7233353 m!7903046))

(assert (=> b!7233353 m!7903048))

(declare-fun m!7903050 () Bool)

(assert (=> b!7233353 m!7903050))

(assert (=> start!701990 d!2246585))

(declare-fun bs!1902922 () Bool)

(declare-fun d!2246587 () Bool)

(assert (= bs!1902922 (and d!2246587 b!7233221)))

(declare-fun lambda!439740 () Int)

(assert (=> bs!1902922 (= lambda!439740 lambda!439706)))

(declare-fun bs!1902923 () Bool)

(assert (= bs!1902923 (and d!2246587 d!2246565)))

(assert (=> bs!1902923 (= lambda!439740 lambda!439730)))

(assert (=> d!2246587 (= (inv!89271 ct1!232) (forall!17335 (exprs!7944 ct1!232) lambda!439740))))

(declare-fun bs!1902924 () Bool)

(assert (= bs!1902924 d!2246587))

(declare-fun m!7903058 () Bool)

(assert (=> bs!1902924 m!7903058))

(assert (=> start!701990 d!2246587))

(declare-fun bs!1902925 () Bool)

(declare-fun d!2246591 () Bool)

(assert (= bs!1902925 (and d!2246591 b!7233221)))

(declare-fun lambda!439741 () Int)

(assert (=> bs!1902925 (= lambda!439741 lambda!439706)))

(declare-fun bs!1902926 () Bool)

(assert (= bs!1902926 (and d!2246591 d!2246565)))

(assert (=> bs!1902926 (= lambda!439741 lambda!439730)))

(declare-fun bs!1902927 () Bool)

(assert (= bs!1902927 (and d!2246591 d!2246587)))

(assert (=> bs!1902927 (= lambda!439741 lambda!439740)))

(assert (=> d!2246591 (= (inv!89271 ct2!328) (forall!17335 (exprs!7944 ct2!328) lambda!439741))))

(declare-fun bs!1902928 () Bool)

(assert (= bs!1902928 d!2246591))

(declare-fun m!7903060 () Bool)

(assert (=> bs!1902928 m!7903060))

(assert (=> start!701990 d!2246591))

(declare-fun d!2246593 () Bool)

(assert (=> d!2246593 (= (isEmpty!40343 lt!2574174) (is-Nil!69996 lt!2574174))))

(assert (=> b!7233216 d!2246593))

(declare-fun b!7233355 () Bool)

(declare-fun e!4336375 () (Set Context!14888))

(declare-fun e!4336376 () (Set Context!14888))

(assert (=> b!7233355 (= e!4336375 e!4336376)))

(declare-fun c!1342209 () Bool)

(assert (=> b!7233355 (= c!1342209 (is-Cons!69996 (exprs!7944 (Context!14889 lt!2574174))))))

(declare-fun bm!658416 () Bool)

(declare-fun call!658421 () (Set Context!14888))

(assert (=> bm!658416 (= call!658421 (derivationStepZipperDown!2548 (h!76444 (exprs!7944 (Context!14889 lt!2574174))) (Context!14889 (t!384169 (exprs!7944 (Context!14889 lt!2574174)))) (h!76445 s1!1971)))))

(declare-fun d!2246595 () Bool)

(declare-fun c!1342208 () Bool)

(declare-fun e!4336374 () Bool)

(assert (=> d!2246595 (= c!1342208 e!4336374)))

(declare-fun res!2934630 () Bool)

(assert (=> d!2246595 (=> (not res!2934630) (not e!4336374))))

(assert (=> d!2246595 (= res!2934630 (is-Cons!69996 (exprs!7944 (Context!14889 lt!2574174))))))

(assert (=> d!2246595 (= (derivationStepZipperUp!2378 (Context!14889 lt!2574174) (h!76445 s1!1971)) e!4336375)))

(declare-fun b!7233356 () Bool)

(assert (=> b!7233356 (= e!4336375 (set.union call!658421 (derivationStepZipperUp!2378 (Context!14889 (t!384169 (exprs!7944 (Context!14889 lt!2574174)))) (h!76445 s1!1971))))))

(declare-fun b!7233357 () Bool)

(assert (=> b!7233357 (= e!4336376 (as set.empty (Set Context!14888)))))

(declare-fun b!7233358 () Bool)

(assert (=> b!7233358 (= e!4336376 call!658421)))

(declare-fun b!7233359 () Bool)

(assert (=> b!7233359 (= e!4336374 (nullable!7821 (h!76444 (exprs!7944 (Context!14889 lt!2574174)))))))

(assert (= (and d!2246595 res!2934630) b!7233359))

(assert (= (and d!2246595 c!1342208) b!7233356))

(assert (= (and d!2246595 (not c!1342208)) b!7233355))

(assert (= (and b!7233355 c!1342209) b!7233358))

(assert (= (and b!7233355 (not c!1342209)) b!7233357))

(assert (= (or b!7233356 b!7233358) bm!658416))

(declare-fun m!7903062 () Bool)

(assert (=> bm!658416 m!7903062))

(declare-fun m!7903064 () Bool)

(assert (=> b!7233356 m!7903064))

(declare-fun m!7903066 () Bool)

(assert (=> b!7233359 m!7903066))

(assert (=> b!7233216 d!2246595))

(declare-fun b!7233396 () Bool)

(declare-fun e!4336397 () (Set Context!14888))

(assert (=> b!7233396 (= e!4336397 (as set.empty (Set Context!14888)))))

(declare-fun b!7233397 () Bool)

(declare-fun call!658436 () (Set Context!14888))

(assert (=> b!7233397 (= e!4336397 call!658436)))

(declare-fun d!2246597 () Bool)

(declare-fun c!1342224 () Bool)

(assert (=> d!2246597 (= c!1342224 (and (is-ElementMatch!18504 (h!76444 (exprs!7944 ct1!232))) (= (c!1342172 (h!76444 (exprs!7944 ct1!232))) (h!76445 s1!1971))))))

(declare-fun e!4336396 () (Set Context!14888))

(assert (=> d!2246597 (= (derivationStepZipperDown!2548 (h!76444 (exprs!7944 ct1!232)) (Context!14889 (tail!14129 (exprs!7944 ct1!232))) (h!76445 s1!1971)) e!4336396)))

(declare-fun bm!658429 () Bool)

(declare-fun call!658439 () (Set Context!14888))

(declare-fun call!658434 () (Set Context!14888))

(assert (=> bm!658429 (= call!658439 call!658434)))

(declare-fun bm!658430 () Bool)

(assert (=> bm!658430 (= call!658436 call!658439)))

(declare-fun b!7233398 () Bool)

(declare-fun e!4336399 () (Set Context!14888))

(assert (=> b!7233398 (= e!4336399 call!658436)))

(declare-fun b!7233399 () Bool)

(declare-fun e!4336398 () (Set Context!14888))

(assert (=> b!7233399 (= e!4336396 e!4336398)))

(declare-fun c!1342225 () Bool)

(assert (=> b!7233399 (= c!1342225 (is-Union!18504 (h!76444 (exprs!7944 ct1!232))))))

(declare-fun bm!658431 () Bool)

(declare-fun call!658438 () List!70120)

(declare-fun call!658435 () List!70120)

(assert (=> bm!658431 (= call!658438 call!658435)))

(declare-fun c!1342223 () Bool)

(declare-fun bm!658432 () Bool)

(declare-fun c!1342227 () Bool)

(declare-fun $colon$colon!2865 (List!70120 Regex!18504) List!70120)

(assert (=> bm!658432 (= call!658435 ($colon$colon!2865 (exprs!7944 (Context!14889 (tail!14129 (exprs!7944 ct1!232)))) (ite (or c!1342227 c!1342223) (regTwo!37520 (h!76444 (exprs!7944 ct1!232))) (h!76444 (exprs!7944 ct1!232)))))))

(declare-fun b!7233400 () Bool)

(assert (=> b!7233400 (= e!4336396 (set.insert (Context!14889 (tail!14129 (exprs!7944 ct1!232))) (as set.empty (Set Context!14888))))))

(declare-fun b!7233401 () Bool)

(declare-fun call!658437 () (Set Context!14888))

(assert (=> b!7233401 (= e!4336398 (set.union call!658434 call!658437))))

(declare-fun b!7233402 () Bool)

(declare-fun e!4336400 () Bool)

(assert (=> b!7233402 (= e!4336400 (nullable!7821 (regOne!37520 (h!76444 (exprs!7944 ct1!232)))))))

(declare-fun bm!658433 () Bool)

(assert (=> bm!658433 (= call!658434 (derivationStepZipperDown!2548 (ite c!1342225 (regOne!37521 (h!76444 (exprs!7944 ct1!232))) (ite c!1342227 (regTwo!37520 (h!76444 (exprs!7944 ct1!232))) (ite c!1342223 (regOne!37520 (h!76444 (exprs!7944 ct1!232))) (reg!18833 (h!76444 (exprs!7944 ct1!232)))))) (ite (or c!1342225 c!1342227) (Context!14889 (tail!14129 (exprs!7944 ct1!232))) (Context!14889 call!658438)) (h!76445 s1!1971)))))

(declare-fun b!7233403 () Bool)

(declare-fun e!4336395 () (Set Context!14888))

(assert (=> b!7233403 (= e!4336395 e!4336399)))

(assert (=> b!7233403 (= c!1342223 (is-Concat!27349 (h!76444 (exprs!7944 ct1!232))))))

(declare-fun b!7233404 () Bool)

(assert (=> b!7233404 (= e!4336395 (set.union call!658437 call!658439))))

(declare-fun b!7233405 () Bool)

(declare-fun c!1342226 () Bool)

(assert (=> b!7233405 (= c!1342226 (is-Star!18504 (h!76444 (exprs!7944 ct1!232))))))

(assert (=> b!7233405 (= e!4336399 e!4336397)))

(declare-fun b!7233406 () Bool)

(assert (=> b!7233406 (= c!1342227 e!4336400)))

(declare-fun res!2934639 () Bool)

(assert (=> b!7233406 (=> (not res!2934639) (not e!4336400))))

(assert (=> b!7233406 (= res!2934639 (is-Concat!27349 (h!76444 (exprs!7944 ct1!232))))))

(assert (=> b!7233406 (= e!4336398 e!4336395)))

(declare-fun bm!658434 () Bool)

(assert (=> bm!658434 (= call!658437 (derivationStepZipperDown!2548 (ite c!1342225 (regTwo!37521 (h!76444 (exprs!7944 ct1!232))) (regOne!37520 (h!76444 (exprs!7944 ct1!232)))) (ite c!1342225 (Context!14889 (tail!14129 (exprs!7944 ct1!232))) (Context!14889 call!658435)) (h!76445 s1!1971)))))

(assert (= (and d!2246597 c!1342224) b!7233400))

(assert (= (and d!2246597 (not c!1342224)) b!7233399))

(assert (= (and b!7233399 c!1342225) b!7233401))

(assert (= (and b!7233399 (not c!1342225)) b!7233406))

(assert (= (and b!7233406 res!2934639) b!7233402))

(assert (= (and b!7233406 c!1342227) b!7233404))

(assert (= (and b!7233406 (not c!1342227)) b!7233403))

(assert (= (and b!7233403 c!1342223) b!7233398))

(assert (= (and b!7233403 (not c!1342223)) b!7233405))

(assert (= (and b!7233405 c!1342226) b!7233397))

(assert (= (and b!7233405 (not c!1342226)) b!7233396))

(assert (= (or b!7233398 b!7233397) bm!658431))

(assert (= (or b!7233398 b!7233397) bm!658430))

(assert (= (or b!7233404 bm!658431) bm!658432))

(assert (= (or b!7233404 bm!658430) bm!658429))

(assert (= (or b!7233401 b!7233404) bm!658434))

(assert (= (or b!7233401 bm!658429) bm!658433))

(declare-fun m!7903082 () Bool)

(assert (=> b!7233402 m!7903082))

(declare-fun m!7903084 () Bool)

(assert (=> bm!658434 m!7903084))

(declare-fun m!7903086 () Bool)

(assert (=> b!7233400 m!7903086))

(declare-fun m!7903088 () Bool)

(assert (=> bm!658433 m!7903088))

(declare-fun m!7903090 () Bool)

(assert (=> bm!658432 m!7903090))

(assert (=> b!7233216 d!2246597))

(declare-fun d!2246601 () Bool)

(assert (=> d!2246601 (= (tail!14129 (exprs!7944 ct1!232)) (t!384169 (exprs!7944 ct1!232)))))

(assert (=> b!7233216 d!2246601))

(declare-fun d!2246603 () Bool)

(assert (=> d!2246603 (forall!17335 (++!16308 (exprs!7944 ct1!232) (exprs!7944 ct2!328)) lambda!439706)))

(declare-fun lt!2574265 () Unit!163545)

(assert (=> d!2246603 (= lt!2574265 (choose!55558 (exprs!7944 ct1!232) (exprs!7944 ct2!328) lambda!439706))))

(assert (=> d!2246603 (forall!17335 (exprs!7944 ct1!232) lambda!439706)))

(assert (=> d!2246603 (= (lemmaConcatPreservesForall!1313 (exprs!7944 ct1!232) (exprs!7944 ct2!328) lambda!439706) lt!2574265)))

(declare-fun bs!1902929 () Bool)

(assert (= bs!1902929 d!2246603))

(assert (=> bs!1902929 m!7902814))

(assert (=> bs!1902929 m!7902814))

(declare-fun m!7903092 () Bool)

(assert (=> bs!1902929 m!7903092))

(declare-fun m!7903094 () Bool)

(assert (=> bs!1902929 m!7903094))

(declare-fun m!7903096 () Bool)

(assert (=> bs!1902929 m!7903096))

(assert (=> b!7233216 d!2246603))

(declare-fun b!7233416 () Bool)

(declare-fun e!4336408 () List!70120)

(assert (=> b!7233416 (= e!4336408 (Cons!69996 (h!76444 (exprs!7944 ct1!232)) (++!16308 (t!384169 (exprs!7944 ct1!232)) (exprs!7944 ct2!328))))))

(declare-fun b!7233415 () Bool)

(assert (=> b!7233415 (= e!4336408 (exprs!7944 ct2!328))))

(declare-fun b!7233417 () Bool)

(declare-fun res!2934643 () Bool)

(declare-fun e!4336407 () Bool)

(assert (=> b!7233417 (=> (not res!2934643) (not e!4336407))))

(declare-fun lt!2574266 () List!70120)

(assert (=> b!7233417 (= res!2934643 (= (size!41569 lt!2574266) (+ (size!41569 (exprs!7944 ct1!232)) (size!41569 (exprs!7944 ct2!328)))))))

(declare-fun b!7233418 () Bool)

(assert (=> b!7233418 (= e!4336407 (or (not (= (exprs!7944 ct2!328) Nil!69996)) (= lt!2574266 (exprs!7944 ct1!232))))))

(declare-fun d!2246605 () Bool)

(assert (=> d!2246605 e!4336407))

(declare-fun res!2934642 () Bool)

(assert (=> d!2246605 (=> (not res!2934642) (not e!4336407))))

(assert (=> d!2246605 (= res!2934642 (= (content!14403 lt!2574266) (set.union (content!14403 (exprs!7944 ct1!232)) (content!14403 (exprs!7944 ct2!328)))))))

(assert (=> d!2246605 (= lt!2574266 e!4336408)))

(declare-fun c!1342232 () Bool)

(assert (=> d!2246605 (= c!1342232 (is-Nil!69996 (exprs!7944 ct1!232)))))

(assert (=> d!2246605 (= (++!16308 (exprs!7944 ct1!232) (exprs!7944 ct2!328)) lt!2574266)))

(assert (= (and d!2246605 c!1342232) b!7233415))

(assert (= (and d!2246605 (not c!1342232)) b!7233416))

(assert (= (and d!2246605 res!2934642) b!7233417))

(assert (= (and b!7233417 res!2934643) b!7233418))

(declare-fun m!7903098 () Bool)

(assert (=> b!7233416 m!7903098))

(declare-fun m!7903100 () Bool)

(assert (=> b!7233417 m!7903100))

(declare-fun m!7903102 () Bool)

(assert (=> b!7233417 m!7903102))

(assert (=> b!7233417 m!7902954))

(declare-fun m!7903104 () Bool)

(assert (=> d!2246605 m!7903104))

(declare-fun m!7903106 () Bool)

(assert (=> d!2246605 m!7903106))

(assert (=> d!2246605 m!7902960))

(assert (=> b!7233221 d!2246605))

(assert (=> b!7233221 d!2246603))

(declare-fun d!2246607 () Bool)

(declare-fun c!1342233 () Bool)

(assert (=> d!2246607 (= c!1342233 (isEmpty!40345 (t!384170 s1!1971)))))

(declare-fun e!4336409 () Bool)

(assert (=> d!2246607 (= (matchZipper!3414 lt!2574169 (t!384170 s1!1971)) e!4336409)))

(declare-fun b!7233419 () Bool)

(assert (=> b!7233419 (= e!4336409 (nullableZipper!2818 lt!2574169))))

(declare-fun b!7233420 () Bool)

(assert (=> b!7233420 (= e!4336409 (matchZipper!3414 (derivationStepZipper!3296 lt!2574169 (head!14806 (t!384170 s1!1971))) (tail!14131 (t!384170 s1!1971))))))

(assert (= (and d!2246607 c!1342233) b!7233419))

(assert (= (and d!2246607 (not c!1342233)) b!7233420))

(declare-fun m!7903108 () Bool)

(assert (=> d!2246607 m!7903108))

(declare-fun m!7903110 () Bool)

(assert (=> b!7233419 m!7903110))

(declare-fun m!7903112 () Bool)

(assert (=> b!7233420 m!7903112))

(assert (=> b!7233420 m!7903112))

(declare-fun m!7903114 () Bool)

(assert (=> b!7233420 m!7903114))

(declare-fun m!7903116 () Bool)

(assert (=> b!7233420 m!7903116))

(assert (=> b!7233420 m!7903114))

(assert (=> b!7233420 m!7903116))

(declare-fun m!7903118 () Bool)

(assert (=> b!7233420 m!7903118))

(assert (=> b!7233215 d!2246607))

(declare-fun d!2246609 () Bool)

(assert (=> d!2246609 true))

(declare-fun lambda!439744 () Int)

(declare-fun flatMap!2710 ((Set Context!14888) Int) (Set Context!14888))

(assert (=> d!2246609 (= (derivationStepZipper!3296 lt!2574168 (h!76445 s1!1971)) (flatMap!2710 lt!2574168 lambda!439744))))

(declare-fun bs!1902930 () Bool)

(assert (= bs!1902930 d!2246609))

(declare-fun m!7903120 () Bool)

(assert (=> bs!1902930 m!7903120))

(assert (=> b!7233215 d!2246609))

(declare-fun b!7233432 () Bool)

(declare-fun e!4336415 () Bool)

(declare-fun tp!2034181 () Bool)

(declare-fun tp!2034182 () Bool)

(assert (=> b!7233432 (= e!4336415 (and tp!2034181 tp!2034182))))

(assert (=> b!7233214 (= tp!2034161 e!4336415)))

(assert (= (and b!7233214 (is-Cons!69996 (exprs!7944 ct1!232))) b!7233432))

(declare-fun b!7233437 () Bool)

(declare-fun e!4336418 () Bool)

(declare-fun tp!2034185 () Bool)

(assert (=> b!7233437 (= e!4336418 (and tp_is_empty!46473 tp!2034185))))

(assert (=> b!7233219 (= tp!2034164 e!4336418)))

(assert (= (and b!7233219 (is-Cons!69997 (t!384170 s1!1971))) b!7233437))

(declare-fun b!7233438 () Bool)

(declare-fun e!4336419 () Bool)

(declare-fun tp!2034186 () Bool)

(assert (=> b!7233438 (= e!4336419 (and tp_is_empty!46473 tp!2034186))))

(assert (=> b!7233223 (= tp!2034162 e!4336419)))

(assert (= (and b!7233223 (is-Cons!69997 (t!384170 s2!1849))) b!7233438))

(declare-fun b!7233439 () Bool)

(declare-fun e!4336420 () Bool)

(declare-fun tp!2034187 () Bool)

(declare-fun tp!2034188 () Bool)

(assert (=> b!7233439 (= e!4336420 (and tp!2034187 tp!2034188))))

(assert (=> b!7233217 (= tp!2034163 e!4336420)))

(assert (= (and b!7233217 (is-Cons!69996 (exprs!7944 ct2!328))) b!7233439))

(declare-fun b_lambda!277235 () Bool)

(assert (= b_lambda!277231 (or b!7233224 b_lambda!277235)))

(declare-fun bs!1902931 () Bool)

(declare-fun d!2246613 () Bool)

(assert (= bs!1902931 (and d!2246613 b!7233224)))

(assert (=> bs!1902931 (= (dynLambda!28537 lambda!439707 lt!2574228) (matchZipper!3414 (set.insert lt!2574228 (as set.empty (Set Context!14888))) (t!384170 s1!1971)))))

(declare-fun m!7903128 () Bool)

(assert (=> bs!1902931 m!7903128))

(assert (=> bs!1902931 m!7903128))

(declare-fun m!7903130 () Bool)

(assert (=> bs!1902931 m!7903130))

(assert (=> d!2246549 d!2246613))

(push 1)

(assert (not d!2246603))

(assert (not b!7233352))

(assert (not bm!658406))

(assert (not d!2246555))

(assert (not d!2246549))

(assert (not b!7233321))

(assert (not b!7233432))

(assert (not b!7233419))

(assert (not b!7233280))

(assert (not d!2246585))

(assert (not d!2246587))

(assert (not b!7233293))

(assert (not d!2246577))

(assert (not d!2246563))

(assert (not b!7233270))

(assert (not d!2246573))

(assert (not bm!658416))

(assert (not b!7233416))

(assert (not b!7233306))

(assert (not bm!658434))

(assert (not d!2246557))

(assert (not b_lambda!277235))

(assert (not b!7233438))

(assert (not b!7233322))

(assert (not d!2246569))

(assert (not b!7233437))

(assert (not d!2246567))

(assert (not d!2246609))

(assert (not b!7233269))

(assert (not bm!658415))

(assert (not bs!1902931))

(assert (not b!7233420))

(assert (not b!7233402))

(assert (not d!2246607))

(assert (not b!7233417))

(assert (not bm!658413))

(assert (not d!2246553))

(assert (not b!7233439))

(assert (not b!7233309))

(assert (not b!7233350))

(assert (not d!2246605))

(assert (not d!2246565))

(assert (not b!7233359))

(assert (not d!2246579))

(assert (not bm!658432))

(assert (not b!7233353))

(assert (not b!7233356))

(assert (not b!7233292))

(assert (not b!7233281))

(assert (not bm!658433))

(assert (not b!7233320))

(assert tp_is_empty!46473)

(assert (not d!2246591))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1902949 () Bool)

(declare-fun d!2246653 () Bool)

(assert (= bs!1902949 (and d!2246653 b!7233224)))

(declare-fun lambda!439760 () Int)

(assert (=> bs!1902949 (not (= lambda!439760 lambda!439707))))

(declare-fun bs!1902950 () Bool)

(assert (= bs!1902950 (and d!2246653 d!2246569)))

(assert (=> bs!1902950 (not (= lambda!439760 lambda!439734))))

(declare-fun bs!1902951 () Bool)

(assert (= bs!1902951 (and d!2246653 d!2246573)))

(assert (=> bs!1902951 (not (= lambda!439760 lambda!439737))))

(assert (=> d!2246653 (= (nullableZipper!2818 lt!2574168) (exists!4151 lt!2574168 lambda!439760))))

(declare-fun bs!1902952 () Bool)

(assert (= bs!1902952 d!2246653))

(declare-fun m!7903256 () Bool)

(assert (=> bs!1902952 m!7903256))

(assert (=> b!7233352 d!2246653))

(declare-fun b!7233546 () Bool)

(declare-fun e!4336487 () (Set Context!14888))

(assert (=> b!7233546 (= e!4336487 (as set.empty (Set Context!14888)))))

(declare-fun b!7233547 () Bool)

(declare-fun call!658473 () (Set Context!14888))

(assert (=> b!7233547 (= e!4336487 call!658473)))

(declare-fun d!2246655 () Bool)

(declare-fun c!1342275 () Bool)

(assert (=> d!2246655 (= c!1342275 (and (is-ElementMatch!18504 (h!76444 (exprs!7944 (Context!14889 lt!2574174)))) (= (c!1342172 (h!76444 (exprs!7944 (Context!14889 lt!2574174)))) (h!76445 s1!1971))))))

(declare-fun e!4336486 () (Set Context!14888))

(assert (=> d!2246655 (= (derivationStepZipperDown!2548 (h!76444 (exprs!7944 (Context!14889 lt!2574174))) (Context!14889 (t!384169 (exprs!7944 (Context!14889 lt!2574174)))) (h!76445 s1!1971)) e!4336486)))

(declare-fun bm!658466 () Bool)

(declare-fun call!658476 () (Set Context!14888))

(declare-fun call!658471 () (Set Context!14888))

(assert (=> bm!658466 (= call!658476 call!658471)))

(declare-fun bm!658467 () Bool)

(assert (=> bm!658467 (= call!658473 call!658476)))

(declare-fun b!7233548 () Bool)

(declare-fun e!4336489 () (Set Context!14888))

(assert (=> b!7233548 (= e!4336489 call!658473)))

(declare-fun b!7233549 () Bool)

(declare-fun e!4336488 () (Set Context!14888))

(assert (=> b!7233549 (= e!4336486 e!4336488)))

(declare-fun c!1342276 () Bool)

(assert (=> b!7233549 (= c!1342276 (is-Union!18504 (h!76444 (exprs!7944 (Context!14889 lt!2574174)))))))

(declare-fun bm!658468 () Bool)

(declare-fun call!658475 () List!70120)

(declare-fun call!658472 () List!70120)

(assert (=> bm!658468 (= call!658475 call!658472)))

(declare-fun c!1342274 () Bool)

(declare-fun c!1342278 () Bool)

(declare-fun bm!658469 () Bool)

(assert (=> bm!658469 (= call!658472 ($colon$colon!2865 (exprs!7944 (Context!14889 (t!384169 (exprs!7944 (Context!14889 lt!2574174))))) (ite (or c!1342278 c!1342274) (regTwo!37520 (h!76444 (exprs!7944 (Context!14889 lt!2574174)))) (h!76444 (exprs!7944 (Context!14889 lt!2574174))))))))

(declare-fun b!7233550 () Bool)

(assert (=> b!7233550 (= e!4336486 (set.insert (Context!14889 (t!384169 (exprs!7944 (Context!14889 lt!2574174)))) (as set.empty (Set Context!14888))))))

(declare-fun b!7233551 () Bool)

(declare-fun call!658474 () (Set Context!14888))

(assert (=> b!7233551 (= e!4336488 (set.union call!658471 call!658474))))

(declare-fun b!7233552 () Bool)

(declare-fun e!4336490 () Bool)

(assert (=> b!7233552 (= e!4336490 (nullable!7821 (regOne!37520 (h!76444 (exprs!7944 (Context!14889 lt!2574174))))))))

(declare-fun bm!658470 () Bool)

(assert (=> bm!658470 (= call!658471 (derivationStepZipperDown!2548 (ite c!1342276 (regOne!37521 (h!76444 (exprs!7944 (Context!14889 lt!2574174)))) (ite c!1342278 (regTwo!37520 (h!76444 (exprs!7944 (Context!14889 lt!2574174)))) (ite c!1342274 (regOne!37520 (h!76444 (exprs!7944 (Context!14889 lt!2574174)))) (reg!18833 (h!76444 (exprs!7944 (Context!14889 lt!2574174))))))) (ite (or c!1342276 c!1342278) (Context!14889 (t!384169 (exprs!7944 (Context!14889 lt!2574174)))) (Context!14889 call!658475)) (h!76445 s1!1971)))))

(declare-fun b!7233553 () Bool)

(declare-fun e!4336485 () (Set Context!14888))

(assert (=> b!7233553 (= e!4336485 e!4336489)))

(assert (=> b!7233553 (= c!1342274 (is-Concat!27349 (h!76444 (exprs!7944 (Context!14889 lt!2574174)))))))

(declare-fun b!7233554 () Bool)

(assert (=> b!7233554 (= e!4336485 (set.union call!658474 call!658476))))

(declare-fun b!7233555 () Bool)

(declare-fun c!1342277 () Bool)

(assert (=> b!7233555 (= c!1342277 (is-Star!18504 (h!76444 (exprs!7944 (Context!14889 lt!2574174)))))))

(assert (=> b!7233555 (= e!4336489 e!4336487)))

(declare-fun b!7233556 () Bool)

(assert (=> b!7233556 (= c!1342278 e!4336490)))

(declare-fun res!2934675 () Bool)

(assert (=> b!7233556 (=> (not res!2934675) (not e!4336490))))

(assert (=> b!7233556 (= res!2934675 (is-Concat!27349 (h!76444 (exprs!7944 (Context!14889 lt!2574174)))))))

(assert (=> b!7233556 (= e!4336488 e!4336485)))

(declare-fun bm!658471 () Bool)

(assert (=> bm!658471 (= call!658474 (derivationStepZipperDown!2548 (ite c!1342276 (regTwo!37521 (h!76444 (exprs!7944 (Context!14889 lt!2574174)))) (regOne!37520 (h!76444 (exprs!7944 (Context!14889 lt!2574174))))) (ite c!1342276 (Context!14889 (t!384169 (exprs!7944 (Context!14889 lt!2574174)))) (Context!14889 call!658472)) (h!76445 s1!1971)))))

(assert (= (and d!2246655 c!1342275) b!7233550))

(assert (= (and d!2246655 (not c!1342275)) b!7233549))

(assert (= (and b!7233549 c!1342276) b!7233551))

(assert (= (and b!7233549 (not c!1342276)) b!7233556))

(assert (= (and b!7233556 res!2934675) b!7233552))

(assert (= (and b!7233556 c!1342278) b!7233554))

(assert (= (and b!7233556 (not c!1342278)) b!7233553))

(assert (= (and b!7233553 c!1342274) b!7233548))

(assert (= (and b!7233553 (not c!1342274)) b!7233555))

(assert (= (and b!7233555 c!1342277) b!7233547))

(assert (= (and b!7233555 (not c!1342277)) b!7233546))

(assert (= (or b!7233548 b!7233547) bm!658468))

(assert (= (or b!7233548 b!7233547) bm!658467))

(assert (= (or b!7233554 bm!658468) bm!658469))

(assert (= (or b!7233554 bm!658467) bm!658466))

(assert (= (or b!7233551 b!7233554) bm!658471))

(assert (= (or b!7233551 bm!658466) bm!658470))

(declare-fun m!7903258 () Bool)

(assert (=> b!7233552 m!7903258))

(declare-fun m!7903260 () Bool)

(assert (=> bm!658471 m!7903260))

(declare-fun m!7903262 () Bool)

(assert (=> b!7233550 m!7903262))

(declare-fun m!7903264 () Bool)

(assert (=> bm!658470 m!7903264))

(declare-fun m!7903266 () Bool)

(assert (=> bm!658469 m!7903266))

(assert (=> bm!658416 d!2246655))

(declare-fun b!7233558 () Bool)

(declare-fun e!4336492 () List!70120)

(assert (=> b!7233558 (= e!4336492 (Cons!69996 (h!76444 (t!384169 (exprs!7944 lt!2574180))) (++!16308 (t!384169 (t!384169 (exprs!7944 lt!2574180))) (exprs!7944 ct2!328))))))

(declare-fun b!7233557 () Bool)

(assert (=> b!7233557 (= e!4336492 (exprs!7944 ct2!328))))

(declare-fun b!7233559 () Bool)

(declare-fun res!2934677 () Bool)

(declare-fun e!4336491 () Bool)

(assert (=> b!7233559 (=> (not res!2934677) (not e!4336491))))

(declare-fun lt!2574284 () List!70120)

(assert (=> b!7233559 (= res!2934677 (= (size!41569 lt!2574284) (+ (size!41569 (t!384169 (exprs!7944 lt!2574180))) (size!41569 (exprs!7944 ct2!328)))))))

(declare-fun b!7233560 () Bool)

(assert (=> b!7233560 (= e!4336491 (or (not (= (exprs!7944 ct2!328) Nil!69996)) (= lt!2574284 (t!384169 (exprs!7944 lt!2574180)))))))

(declare-fun d!2246657 () Bool)

(assert (=> d!2246657 e!4336491))

(declare-fun res!2934676 () Bool)

(assert (=> d!2246657 (=> (not res!2934676) (not e!4336491))))

(assert (=> d!2246657 (= res!2934676 (= (content!14403 lt!2574284) (set.union (content!14403 (t!384169 (exprs!7944 lt!2574180))) (content!14403 (exprs!7944 ct2!328)))))))

(assert (=> d!2246657 (= lt!2574284 e!4336492)))

(declare-fun c!1342279 () Bool)

(assert (=> d!2246657 (= c!1342279 (is-Nil!69996 (t!384169 (exprs!7944 lt!2574180))))))

(assert (=> d!2246657 (= (++!16308 (t!384169 (exprs!7944 lt!2574180)) (exprs!7944 ct2!328)) lt!2574284)))

(assert (= (and d!2246657 c!1342279) b!7233557))

(assert (= (and d!2246657 (not c!1342279)) b!7233558))

(assert (= (and d!2246657 res!2934676) b!7233559))

(assert (= (and b!7233559 res!2934677) b!7233560))

(declare-fun m!7903268 () Bool)

(assert (=> b!7233558 m!7903268))

(declare-fun m!7903270 () Bool)

(assert (=> b!7233559 m!7903270))

(declare-fun m!7903272 () Bool)

(assert (=> b!7233559 m!7903272))

(assert (=> b!7233559 m!7902954))

(declare-fun m!7903274 () Bool)

(assert (=> d!2246657 m!7903274))

(declare-fun m!7903276 () Bool)

(assert (=> d!2246657 m!7903276))

(assert (=> d!2246657 m!7902960))

(assert (=> b!7233292 d!2246657))

(declare-fun d!2246659 () Bool)

(declare-fun c!1342280 () Bool)

(assert (=> d!2246659 (= c!1342280 (isEmpty!40345 (tail!14131 (t!384170 s1!1971))))))

(declare-fun e!4336493 () Bool)

(assert (=> d!2246659 (= (matchZipper!3414 (derivationStepZipper!3296 lt!2574169 (head!14806 (t!384170 s1!1971))) (tail!14131 (t!384170 s1!1971))) e!4336493)))

(declare-fun b!7233561 () Bool)

(assert (=> b!7233561 (= e!4336493 (nullableZipper!2818 (derivationStepZipper!3296 lt!2574169 (head!14806 (t!384170 s1!1971)))))))

(declare-fun b!7233562 () Bool)

(assert (=> b!7233562 (= e!4336493 (matchZipper!3414 (derivationStepZipper!3296 (derivationStepZipper!3296 lt!2574169 (head!14806 (t!384170 s1!1971))) (head!14806 (tail!14131 (t!384170 s1!1971)))) (tail!14131 (tail!14131 (t!384170 s1!1971)))))))

(assert (= (and d!2246659 c!1342280) b!7233561))

(assert (= (and d!2246659 (not c!1342280)) b!7233562))

(assert (=> d!2246659 m!7903116))

(declare-fun m!7903278 () Bool)

(assert (=> d!2246659 m!7903278))

(assert (=> b!7233561 m!7903114))

(declare-fun m!7903280 () Bool)

(assert (=> b!7233561 m!7903280))

(assert (=> b!7233562 m!7903116))

(declare-fun m!7903282 () Bool)

(assert (=> b!7233562 m!7903282))

(assert (=> b!7233562 m!7903114))

(assert (=> b!7233562 m!7903282))

(declare-fun m!7903284 () Bool)

(assert (=> b!7233562 m!7903284))

(assert (=> b!7233562 m!7903116))

(declare-fun m!7903286 () Bool)

(assert (=> b!7233562 m!7903286))

(assert (=> b!7233562 m!7903284))

(assert (=> b!7233562 m!7903286))

(declare-fun m!7903288 () Bool)

(assert (=> b!7233562 m!7903288))

(assert (=> b!7233420 d!2246659))

(declare-fun bs!1902953 () Bool)

(declare-fun d!2246661 () Bool)

(assert (= bs!1902953 (and d!2246661 d!2246609)))

(declare-fun lambda!439761 () Int)

(assert (=> bs!1902953 (= (= (head!14806 (t!384170 s1!1971)) (h!76445 s1!1971)) (= lambda!439761 lambda!439744))))

(assert (=> d!2246661 true))

(assert (=> d!2246661 (= (derivationStepZipper!3296 lt!2574169 (head!14806 (t!384170 s1!1971))) (flatMap!2710 lt!2574169 lambda!439761))))

(declare-fun bs!1902954 () Bool)

(assert (= bs!1902954 d!2246661))

(declare-fun m!7903290 () Bool)

(assert (=> bs!1902954 m!7903290))

(assert (=> b!7233420 d!2246661))

(declare-fun d!2246663 () Bool)

(assert (=> d!2246663 (= (head!14806 (t!384170 s1!1971)) (h!76445 (t!384170 s1!1971)))))

(assert (=> b!7233420 d!2246663))

(declare-fun d!2246665 () Bool)

(assert (=> d!2246665 (= (tail!14131 (t!384170 s1!1971)) (t!384170 (t!384170 s1!1971)))))

(assert (=> b!7233420 d!2246665))

(declare-fun b!7233563 () Bool)

(declare-fun e!4336495 () (Set Context!14888))

(declare-fun e!4336496 () (Set Context!14888))

(assert (=> b!7233563 (= e!4336495 e!4336496)))

(declare-fun c!1342282 () Bool)

(assert (=> b!7233563 (= c!1342282 (is-Cons!69996 (exprs!7944 (Context!14889 (t!384169 (exprs!7944 ct1!232))))))))

(declare-fun bm!658472 () Bool)

(declare-fun call!658477 () (Set Context!14888))

(assert (=> bm!658472 (= call!658477 (derivationStepZipperDown!2548 (h!76444 (exprs!7944 (Context!14889 (t!384169 (exprs!7944 ct1!232))))) (Context!14889 (t!384169 (exprs!7944 (Context!14889 (t!384169 (exprs!7944 ct1!232)))))) (h!76445 s1!1971)))))

(declare-fun d!2246667 () Bool)

(declare-fun c!1342281 () Bool)

(declare-fun e!4336494 () Bool)

(assert (=> d!2246667 (= c!1342281 e!4336494)))

(declare-fun res!2934678 () Bool)

(assert (=> d!2246667 (=> (not res!2934678) (not e!4336494))))

(assert (=> d!2246667 (= res!2934678 (is-Cons!69996 (exprs!7944 (Context!14889 (t!384169 (exprs!7944 ct1!232))))))))

(assert (=> d!2246667 (= (derivationStepZipperUp!2378 (Context!14889 (t!384169 (exprs!7944 ct1!232))) (h!76445 s1!1971)) e!4336495)))

(declare-fun b!7233564 () Bool)

(assert (=> b!7233564 (= e!4336495 (set.union call!658477 (derivationStepZipperUp!2378 (Context!14889 (t!384169 (exprs!7944 (Context!14889 (t!384169 (exprs!7944 ct1!232)))))) (h!76445 s1!1971))))))

(declare-fun b!7233565 () Bool)

(assert (=> b!7233565 (= e!4336496 (as set.empty (Set Context!14888)))))

(declare-fun b!7233566 () Bool)

(assert (=> b!7233566 (= e!4336496 call!658477)))

(declare-fun b!7233567 () Bool)

(assert (=> b!7233567 (= e!4336494 (nullable!7821 (h!76444 (exprs!7944 (Context!14889 (t!384169 (exprs!7944 ct1!232)))))))))

(assert (= (and d!2246667 res!2934678) b!7233567))

(assert (= (and d!2246667 c!1342281) b!7233564))

(assert (= (and d!2246667 (not c!1342281)) b!7233563))

(assert (= (and b!7233563 c!1342282) b!7233566))

(assert (= (and b!7233563 (not c!1342282)) b!7233565))

(assert (= (or b!7233564 b!7233566) bm!658472))

(declare-fun m!7903292 () Bool)

(assert (=> bm!658472 m!7903292))

(declare-fun m!7903294 () Bool)

(assert (=> b!7233564 m!7903294))

(declare-fun m!7903296 () Bool)

(assert (=> b!7233567 m!7903296))

(assert (=> b!7233306 d!2246667))

(declare-fun call!658478 () Bool)

(declare-fun c!1342284 () Bool)

(declare-fun bm!658473 () Bool)

(assert (=> bm!658473 (= call!658478 (validRegex!9514 (ite c!1342284 (regTwo!37521 (ite c!1342206 (regTwo!37521 (h!76444 (exprs!7944 ct1!232))) (regTwo!37520 (h!76444 (exprs!7944 ct1!232))))) (regTwo!37520 (ite c!1342206 (regTwo!37521 (h!76444 (exprs!7944 ct1!232))) (regTwo!37520 (h!76444 (exprs!7944 ct1!232))))))))))

(declare-fun d!2246669 () Bool)

(declare-fun res!2934683 () Bool)

(declare-fun e!4336497 () Bool)

(assert (=> d!2246669 (=> res!2934683 e!4336497)))

(assert (=> d!2246669 (= res!2934683 (is-ElementMatch!18504 (ite c!1342206 (regTwo!37521 (h!76444 (exprs!7944 ct1!232))) (regTwo!37520 (h!76444 (exprs!7944 ct1!232))))))))

(assert (=> d!2246669 (= (validRegex!9514 (ite c!1342206 (regTwo!37521 (h!76444 (exprs!7944 ct1!232))) (regTwo!37520 (h!76444 (exprs!7944 ct1!232))))) e!4336497)))

(declare-fun b!7233568 () Bool)

(declare-fun e!4336501 () Bool)

(assert (=> b!7233568 (= e!4336501 call!658478)))

(declare-fun b!7233569 () Bool)

(declare-fun e!4336503 () Bool)

(assert (=> b!7233569 (= e!4336503 call!658478)))

(declare-fun b!7233570 () Bool)

(declare-fun res!2934681 () Bool)

(assert (=> b!7233570 (=> (not res!2934681) (not e!4336501))))

(declare-fun call!658479 () Bool)

(assert (=> b!7233570 (= res!2934681 call!658479)))

(declare-fun e!4336502 () Bool)

(assert (=> b!7233570 (= e!4336502 e!4336501)))

(declare-fun b!7233571 () Bool)

(declare-fun e!4336498 () Bool)

(assert (=> b!7233571 (= e!4336497 e!4336498)))

(declare-fun c!1342283 () Bool)

(assert (=> b!7233571 (= c!1342283 (is-Star!18504 (ite c!1342206 (regTwo!37521 (h!76444 (exprs!7944 ct1!232))) (regTwo!37520 (h!76444 (exprs!7944 ct1!232))))))))

(declare-fun b!7233572 () Bool)

(declare-fun res!2934680 () Bool)

(declare-fun e!4336500 () Bool)

(assert (=> b!7233572 (=> res!2934680 e!4336500)))

(assert (=> b!7233572 (= res!2934680 (not (is-Concat!27349 (ite c!1342206 (regTwo!37521 (h!76444 (exprs!7944 ct1!232))) (regTwo!37520 (h!76444 (exprs!7944 ct1!232)))))))))

(assert (=> b!7233572 (= e!4336502 e!4336500)))

(declare-fun b!7233573 () Bool)

(assert (=> b!7233573 (= e!4336500 e!4336503)))

(declare-fun res!2934682 () Bool)

(assert (=> b!7233573 (=> (not res!2934682) (not e!4336503))))

(assert (=> b!7233573 (= res!2934682 call!658479)))

(declare-fun b!7233574 () Bool)

(declare-fun e!4336499 () Bool)

(declare-fun call!658480 () Bool)

(assert (=> b!7233574 (= e!4336499 call!658480)))

(declare-fun b!7233575 () Bool)

(assert (=> b!7233575 (= e!4336498 e!4336499)))

(declare-fun res!2934679 () Bool)

(assert (=> b!7233575 (= res!2934679 (not (nullable!7821 (reg!18833 (ite c!1342206 (regTwo!37521 (h!76444 (exprs!7944 ct1!232))) (regTwo!37520 (h!76444 (exprs!7944 ct1!232))))))))))

(assert (=> b!7233575 (=> (not res!2934679) (not e!4336499))))

(declare-fun bm!658474 () Bool)

(assert (=> bm!658474 (= call!658479 call!658480)))

(declare-fun bm!658475 () Bool)

(assert (=> bm!658475 (= call!658480 (validRegex!9514 (ite c!1342283 (reg!18833 (ite c!1342206 (regTwo!37521 (h!76444 (exprs!7944 ct1!232))) (regTwo!37520 (h!76444 (exprs!7944 ct1!232))))) (ite c!1342284 (regOne!37521 (ite c!1342206 (regTwo!37521 (h!76444 (exprs!7944 ct1!232))) (regTwo!37520 (h!76444 (exprs!7944 ct1!232))))) (regOne!37520 (ite c!1342206 (regTwo!37521 (h!76444 (exprs!7944 ct1!232))) (regTwo!37520 (h!76444 (exprs!7944 ct1!232)))))))))))

(declare-fun b!7233576 () Bool)

(assert (=> b!7233576 (= e!4336498 e!4336502)))

(assert (=> b!7233576 (= c!1342284 (is-Union!18504 (ite c!1342206 (regTwo!37521 (h!76444 (exprs!7944 ct1!232))) (regTwo!37520 (h!76444 (exprs!7944 ct1!232))))))))

(assert (= (and d!2246669 (not res!2934683)) b!7233571))

(assert (= (and b!7233571 c!1342283) b!7233575))

(assert (= (and b!7233571 (not c!1342283)) b!7233576))

(assert (= (and b!7233575 res!2934679) b!7233574))

(assert (= (and b!7233576 c!1342284) b!7233570))

(assert (= (and b!7233576 (not c!1342284)) b!7233572))

(assert (= (and b!7233570 res!2934681) b!7233568))

(assert (= (and b!7233572 (not res!2934680)) b!7233573))

(assert (= (and b!7233573 res!2934682) b!7233569))

(assert (= (or b!7233570 b!7233573) bm!658474))

(assert (= (or b!7233568 b!7233569) bm!658473))

(assert (= (or b!7233574 bm!658474) bm!658475))

(declare-fun m!7903298 () Bool)

(assert (=> bm!658473 m!7903298))

(declare-fun m!7903300 () Bool)

(assert (=> b!7233575 m!7903300))

(declare-fun m!7903302 () Bool)

(assert (=> bm!658475 m!7903302))

(assert (=> bm!658413 d!2246669))

(declare-fun d!2246671 () Bool)

(assert (=> d!2246671 (= ($colon$colon!2865 (exprs!7944 (Context!14889 (tail!14129 (exprs!7944 ct1!232)))) (ite (or c!1342227 c!1342223) (regTwo!37520 (h!76444 (exprs!7944 ct1!232))) (h!76444 (exprs!7944 ct1!232)))) (Cons!69996 (ite (or c!1342227 c!1342223) (regTwo!37520 (h!76444 (exprs!7944 ct1!232))) (h!76444 (exprs!7944 ct1!232))) (exprs!7944 (Context!14889 (tail!14129 (exprs!7944 ct1!232))))))))

(assert (=> bm!658432 d!2246671))

(declare-fun b!7233577 () Bool)

(declare-fun e!4336506 () (Set Context!14888))

(assert (=> b!7233577 (= e!4336506 (as set.empty (Set Context!14888)))))

(declare-fun b!7233578 () Bool)

(declare-fun call!658483 () (Set Context!14888))

(assert (=> b!7233578 (= e!4336506 call!658483)))

(declare-fun d!2246673 () Bool)

(declare-fun c!1342286 () Bool)

(assert (=> d!2246673 (= c!1342286 (and (is-ElementMatch!18504 (h!76444 (exprs!7944 ct1!232))) (= (c!1342172 (h!76444 (exprs!7944 ct1!232))) (h!76445 s1!1971))))))

(declare-fun e!4336505 () (Set Context!14888))

(assert (=> d!2246673 (= (derivationStepZipperDown!2548 (h!76444 (exprs!7944 ct1!232)) (Context!14889 (t!384169 (exprs!7944 ct1!232))) (h!76445 s1!1971)) e!4336505)))

(declare-fun bm!658476 () Bool)

(declare-fun call!658486 () (Set Context!14888))

(declare-fun call!658481 () (Set Context!14888))

(assert (=> bm!658476 (= call!658486 call!658481)))

(declare-fun bm!658477 () Bool)

(assert (=> bm!658477 (= call!658483 call!658486)))

(declare-fun b!7233579 () Bool)

(declare-fun e!4336508 () (Set Context!14888))

(assert (=> b!7233579 (= e!4336508 call!658483)))

(declare-fun b!7233580 () Bool)

(declare-fun e!4336507 () (Set Context!14888))

(assert (=> b!7233580 (= e!4336505 e!4336507)))

(declare-fun c!1342287 () Bool)

(assert (=> b!7233580 (= c!1342287 (is-Union!18504 (h!76444 (exprs!7944 ct1!232))))))

(declare-fun bm!658478 () Bool)

(declare-fun call!658485 () List!70120)

(declare-fun call!658482 () List!70120)

(assert (=> bm!658478 (= call!658485 call!658482)))

(declare-fun c!1342285 () Bool)

(declare-fun c!1342289 () Bool)

(declare-fun bm!658479 () Bool)

(assert (=> bm!658479 (= call!658482 ($colon$colon!2865 (exprs!7944 (Context!14889 (t!384169 (exprs!7944 ct1!232)))) (ite (or c!1342289 c!1342285) (regTwo!37520 (h!76444 (exprs!7944 ct1!232))) (h!76444 (exprs!7944 ct1!232)))))))

(declare-fun b!7233581 () Bool)

(assert (=> b!7233581 (= e!4336505 (set.insert (Context!14889 (t!384169 (exprs!7944 ct1!232))) (as set.empty (Set Context!14888))))))

(declare-fun b!7233582 () Bool)

(declare-fun call!658484 () (Set Context!14888))

(assert (=> b!7233582 (= e!4336507 (set.union call!658481 call!658484))))

(declare-fun b!7233583 () Bool)

(declare-fun e!4336509 () Bool)

(assert (=> b!7233583 (= e!4336509 (nullable!7821 (regOne!37520 (h!76444 (exprs!7944 ct1!232)))))))

(declare-fun bm!658480 () Bool)

(assert (=> bm!658480 (= call!658481 (derivationStepZipperDown!2548 (ite c!1342287 (regOne!37521 (h!76444 (exprs!7944 ct1!232))) (ite c!1342289 (regTwo!37520 (h!76444 (exprs!7944 ct1!232))) (ite c!1342285 (regOne!37520 (h!76444 (exprs!7944 ct1!232))) (reg!18833 (h!76444 (exprs!7944 ct1!232)))))) (ite (or c!1342287 c!1342289) (Context!14889 (t!384169 (exprs!7944 ct1!232))) (Context!14889 call!658485)) (h!76445 s1!1971)))))

(declare-fun b!7233584 () Bool)

(declare-fun e!4336504 () (Set Context!14888))

(assert (=> b!7233584 (= e!4336504 e!4336508)))

(assert (=> b!7233584 (= c!1342285 (is-Concat!27349 (h!76444 (exprs!7944 ct1!232))))))

(declare-fun b!7233585 () Bool)

(assert (=> b!7233585 (= e!4336504 (set.union call!658484 call!658486))))

(declare-fun b!7233586 () Bool)

(declare-fun c!1342288 () Bool)

(assert (=> b!7233586 (= c!1342288 (is-Star!18504 (h!76444 (exprs!7944 ct1!232))))))

(assert (=> b!7233586 (= e!4336508 e!4336506)))

(declare-fun b!7233587 () Bool)

(assert (=> b!7233587 (= c!1342289 e!4336509)))

(declare-fun res!2934684 () Bool)

(assert (=> b!7233587 (=> (not res!2934684) (not e!4336509))))

(assert (=> b!7233587 (= res!2934684 (is-Concat!27349 (h!76444 (exprs!7944 ct1!232))))))

(assert (=> b!7233587 (= e!4336507 e!4336504)))

(declare-fun bm!658481 () Bool)

(assert (=> bm!658481 (= call!658484 (derivationStepZipperDown!2548 (ite c!1342287 (regTwo!37521 (h!76444 (exprs!7944 ct1!232))) (regOne!37520 (h!76444 (exprs!7944 ct1!232)))) (ite c!1342287 (Context!14889 (t!384169 (exprs!7944 ct1!232))) (Context!14889 call!658482)) (h!76445 s1!1971)))))

(assert (= (and d!2246673 c!1342286) b!7233581))

(assert (= (and d!2246673 (not c!1342286)) b!7233580))

(assert (= (and b!7233580 c!1342287) b!7233582))

(assert (= (and b!7233580 (not c!1342287)) b!7233587))

(assert (= (and b!7233587 res!2934684) b!7233583))

(assert (= (and b!7233587 c!1342289) b!7233585))

(assert (= (and b!7233587 (not c!1342289)) b!7233584))

(assert (= (and b!7233584 c!1342285) b!7233579))

(assert (= (and b!7233584 (not c!1342285)) b!7233586))

(assert (= (and b!7233586 c!1342288) b!7233578))

(assert (= (and b!7233586 (not c!1342288)) b!7233577))

(assert (= (or b!7233579 b!7233578) bm!658478))

(assert (= (or b!7233579 b!7233578) bm!658477))

(assert (= (or b!7233585 bm!658478) bm!658479))

(assert (= (or b!7233585 bm!658477) bm!658476))

(assert (= (or b!7233582 b!7233585) bm!658481))

(assert (= (or b!7233582 bm!658476) bm!658480))

(assert (=> b!7233583 m!7903082))

(declare-fun m!7903304 () Bool)

(assert (=> bm!658481 m!7903304))

(declare-fun m!7903306 () Bool)

(assert (=> b!7233581 m!7903306))

(declare-fun m!7903308 () Bool)

(assert (=> bm!658480 m!7903308))

(declare-fun m!7903310 () Bool)

(assert (=> bm!658479 m!7903310))

(assert (=> bm!658406 d!2246673))

(declare-fun d!2246675 () Bool)

(declare-fun res!2934689 () Bool)

(declare-fun e!4336514 () Bool)

(assert (=> d!2246675 (=> res!2934689 e!4336514)))

(assert (=> d!2246675 (= res!2934689 (is-Nil!69998 lt!2574258))))

(assert (=> d!2246675 (= (noDuplicate!2928 lt!2574258) e!4336514)))

(declare-fun b!7233592 () Bool)

(declare-fun e!4336515 () Bool)

(assert (=> b!7233592 (= e!4336514 e!4336515)))

(declare-fun res!2934690 () Bool)

(assert (=> b!7233592 (=> (not res!2934690) (not e!4336515))))

(declare-fun contains!20737 (List!70122 Context!14888) Bool)

(assert (=> b!7233592 (= res!2934690 (not (contains!20737 (t!384171 lt!2574258) (h!76446 lt!2574258))))))

(declare-fun b!7233593 () Bool)

(assert (=> b!7233593 (= e!4336515 (noDuplicate!2928 (t!384171 lt!2574258)))))

(assert (= (and d!2246675 (not res!2934689)) b!7233592))

(assert (= (and b!7233592 res!2934690) b!7233593))

(declare-fun m!7903312 () Bool)

(assert (=> b!7233592 m!7903312))

(declare-fun m!7903314 () Bool)

(assert (=> b!7233593 m!7903314))

(assert (=> d!2246577 d!2246675))

(declare-fun d!2246677 () Bool)

(declare-fun e!4336523 () Bool)

(assert (=> d!2246677 e!4336523))

(declare-fun res!2934696 () Bool)

(assert (=> d!2246677 (=> (not res!2934696) (not e!4336523))))

(declare-fun res!2934695 () List!70122)

(assert (=> d!2246677 (= res!2934696 (noDuplicate!2928 res!2934695))))

(declare-fun e!4336524 () Bool)

(assert (=> d!2246677 e!4336524))

(assert (=> d!2246677 (= (choose!55562 lt!2574169) res!2934695)))

(declare-fun b!7233601 () Bool)

(declare-fun e!4336522 () Bool)

(declare-fun tp!2034205 () Bool)

(assert (=> b!7233601 (= e!4336522 tp!2034205)))

(declare-fun tp!2034206 () Bool)

(declare-fun b!7233600 () Bool)

(assert (=> b!7233600 (= e!4336524 (and (inv!89271 (h!76446 res!2934695)) e!4336522 tp!2034206))))

(declare-fun b!7233602 () Bool)

(assert (=> b!7233602 (= e!4336523 (= (content!14404 res!2934695) lt!2574169))))

(assert (= b!7233600 b!7233601))

(assert (= (and d!2246677 (is-Cons!69998 res!2934695)) b!7233600))

(assert (= (and d!2246677 res!2934696) b!7233602))

(declare-fun m!7903316 () Bool)

(assert (=> d!2246677 m!7903316))

(declare-fun m!7903318 () Bool)

(assert (=> b!7233600 m!7903318))

(declare-fun m!7903320 () Bool)

(assert (=> b!7233602 m!7903320))

(assert (=> d!2246577 d!2246677))

(declare-fun d!2246679 () Bool)

(declare-fun res!2934701 () Bool)

(declare-fun e!4336529 () Bool)

(assert (=> d!2246679 (=> res!2934701 e!4336529)))

(assert (=> d!2246679 (= res!2934701 (is-Nil!69996 (exprs!7944 ct1!232)))))

(assert (=> d!2246679 (= (forall!17335 (exprs!7944 ct1!232) lambda!439740) e!4336529)))

(declare-fun b!7233607 () Bool)

(declare-fun e!4336530 () Bool)

(assert (=> b!7233607 (= e!4336529 e!4336530)))

(declare-fun res!2934702 () Bool)

(assert (=> b!7233607 (=> (not res!2934702) (not e!4336530))))

(declare-fun dynLambda!28541 (Int Regex!18504) Bool)

(assert (=> b!7233607 (= res!2934702 (dynLambda!28541 lambda!439740 (h!76444 (exprs!7944 ct1!232))))))

(declare-fun b!7233608 () Bool)

(assert (=> b!7233608 (= e!4336530 (forall!17335 (t!384169 (exprs!7944 ct1!232)) lambda!439740))))

(assert (= (and d!2246679 (not res!2934701)) b!7233607))

(assert (= (and b!7233607 res!2934702) b!7233608))

(declare-fun b_lambda!277239 () Bool)

(assert (=> (not b_lambda!277239) (not b!7233607)))

(declare-fun m!7903322 () Bool)

(assert (=> b!7233607 m!7903322))

(declare-fun m!7903324 () Bool)

(assert (=> b!7233608 m!7903324))

(assert (=> d!2246587 d!2246679))

(declare-fun bs!1902955 () Bool)

(declare-fun d!2246681 () Bool)

(assert (= bs!1902955 (and d!2246681 b!7233224)))

(declare-fun lambda!439762 () Int)

(assert (=> bs!1902955 (not (= lambda!439762 lambda!439707))))

(declare-fun bs!1902956 () Bool)

(assert (= bs!1902956 (and d!2246681 d!2246569)))

(assert (=> bs!1902956 (not (= lambda!439762 lambda!439734))))

(declare-fun bs!1902957 () Bool)

(assert (= bs!1902957 (and d!2246681 d!2246573)))

(assert (=> bs!1902957 (not (= lambda!439762 lambda!439737))))

(declare-fun bs!1902958 () Bool)

(assert (= bs!1902958 (and d!2246681 d!2246653)))

(assert (=> bs!1902958 (= lambda!439762 lambda!439760)))

(assert (=> d!2246681 (= (nullableZipper!2818 lt!2574169) (exists!4151 lt!2574169 lambda!439762))))

(declare-fun bs!1902959 () Bool)

(assert (= bs!1902959 d!2246681))

(declare-fun m!7903326 () Bool)

(assert (=> bs!1902959 m!7903326))

(assert (=> b!7233419 d!2246681))

(declare-fun d!2246683 () Bool)

(assert (=> d!2246683 (= (isEmpty!40345 s1!1971) (is-Nil!69997 s1!1971))))

(assert (=> d!2246585 d!2246683))

(declare-fun bs!1902960 () Bool)

(declare-fun d!2246685 () Bool)

(assert (= bs!1902960 (and d!2246685 d!2246681)))

(declare-fun lambda!439763 () Int)

(assert (=> bs!1902960 (not (= lambda!439763 lambda!439762))))

(declare-fun bs!1902961 () Bool)

(assert (= bs!1902961 (and d!2246685 d!2246569)))

(assert (=> bs!1902961 (= (= lambda!439737 lambda!439707) (= lambda!439763 lambda!439734))))

(declare-fun bs!1902962 () Bool)

(assert (= bs!1902962 (and d!2246685 d!2246653)))

(assert (=> bs!1902962 (not (= lambda!439763 lambda!439760))))

(declare-fun bs!1902963 () Bool)

(assert (= bs!1902963 (and d!2246685 d!2246573)))

(assert (=> bs!1902963 (not (= lambda!439763 lambda!439737))))

(declare-fun bs!1902964 () Bool)

(assert (= bs!1902964 (and d!2246685 b!7233224)))

(assert (=> bs!1902964 (not (= lambda!439763 lambda!439707))))

(assert (=> d!2246685 true))

(assert (=> d!2246685 (< (dynLambda!28538 order!28835 lambda!439737) (dynLambda!28538 order!28835 lambda!439763))))

(assert (=> d!2246685 (= (exists!4152 lt!2574173 lambda!439737) (not (forall!17336 lt!2574173 lambda!439763)))))

(declare-fun bs!1902965 () Bool)

(assert (= bs!1902965 d!2246685))

(declare-fun m!7903328 () Bool)

(assert (=> bs!1902965 m!7903328))

(assert (=> d!2246573 d!2246685))

(declare-fun bs!1902966 () Bool)

(declare-fun d!2246687 () Bool)

(assert (= bs!1902966 (and d!2246687 d!2246681)))

(declare-fun lambda!439766 () Int)

(assert (=> bs!1902966 (not (= lambda!439766 lambda!439762))))

(declare-fun bs!1902967 () Bool)

(assert (= bs!1902967 (and d!2246687 d!2246685)))

(assert (=> bs!1902967 (not (= lambda!439766 lambda!439763))))

(declare-fun bs!1902968 () Bool)

(assert (= bs!1902968 (and d!2246687 d!2246569)))

(assert (=> bs!1902968 (not (= lambda!439766 lambda!439734))))

(declare-fun bs!1902969 () Bool)

(assert (= bs!1902969 (and d!2246687 d!2246653)))

(assert (=> bs!1902969 (not (= lambda!439766 lambda!439760))))

(declare-fun bs!1902970 () Bool)

(assert (= bs!1902970 (and d!2246687 d!2246573)))

(assert (=> bs!1902970 (= lambda!439766 lambda!439737)))

(declare-fun bs!1902971 () Bool)

(assert (= bs!1902971 (and d!2246687 b!7233224)))

(assert (=> bs!1902971 (= lambda!439766 lambda!439707)))

(assert (=> d!2246687 true))

(assert (=> d!2246687 (exists!4152 lt!2574173 lambda!439766)))

(assert (=> d!2246687 true))

(declare-fun _$60!1201 () Unit!163545)

(assert (=> d!2246687 (= (choose!55561 lt!2574173 (t!384170 s1!1971)) _$60!1201)))

(declare-fun bs!1902972 () Bool)

(assert (= bs!1902972 d!2246687))

(declare-fun m!7903330 () Bool)

(assert (=> bs!1902972 m!7903330))

(assert (=> d!2246573 d!2246687))

(declare-fun d!2246689 () Bool)

(declare-fun c!1342292 () Bool)

(assert (=> d!2246689 (= c!1342292 (isEmpty!40345 (t!384170 s1!1971)))))

(declare-fun e!4336531 () Bool)

(assert (=> d!2246689 (= (matchZipper!3414 (content!14404 lt!2574173) (t!384170 s1!1971)) e!4336531)))

(declare-fun b!7233609 () Bool)

(assert (=> b!7233609 (= e!4336531 (nullableZipper!2818 (content!14404 lt!2574173)))))

(declare-fun b!7233610 () Bool)

(assert (=> b!7233610 (= e!4336531 (matchZipper!3414 (derivationStepZipper!3296 (content!14404 lt!2574173) (head!14806 (t!384170 s1!1971))) (tail!14131 (t!384170 s1!1971))))))

(assert (= (and d!2246689 c!1342292) b!7233609))

(assert (= (and d!2246689 (not c!1342292)) b!7233610))

(assert (=> d!2246689 m!7903108))

(assert (=> b!7233609 m!7903000))

(declare-fun m!7903332 () Bool)

(assert (=> b!7233609 m!7903332))

(assert (=> b!7233610 m!7903112))

(assert (=> b!7233610 m!7903000))

(assert (=> b!7233610 m!7903112))

(declare-fun m!7903334 () Bool)

(assert (=> b!7233610 m!7903334))

(assert (=> b!7233610 m!7903116))

(assert (=> b!7233610 m!7903334))

(assert (=> b!7233610 m!7903116))

(declare-fun m!7903336 () Bool)

(assert (=> b!7233610 m!7903336))

(assert (=> d!2246573 d!2246689))

(declare-fun d!2246691 () Bool)

(declare-fun c!1342295 () Bool)

(assert (=> d!2246691 (= c!1342295 (is-Nil!69998 lt!2574173))))

(declare-fun e!4336534 () (Set Context!14888))

(assert (=> d!2246691 (= (content!14404 lt!2574173) e!4336534)))

(declare-fun b!7233615 () Bool)

(assert (=> b!7233615 (= e!4336534 (as set.empty (Set Context!14888)))))

(declare-fun b!7233616 () Bool)

(assert (=> b!7233616 (= e!4336534 (set.union (set.insert (h!76446 lt!2574173) (as set.empty (Set Context!14888))) (content!14404 (t!384171 lt!2574173))))))

(assert (= (and d!2246691 c!1342295) b!7233615))

(assert (= (and d!2246691 (not c!1342295)) b!7233616))

(declare-fun m!7903338 () Bool)

(assert (=> b!7233616 m!7903338))

(declare-fun m!7903340 () Bool)

(assert (=> b!7233616 m!7903340))

(assert (=> d!2246573 d!2246691))

(declare-fun d!2246693 () Bool)

(declare-fun c!1342296 () Bool)

(assert (=> d!2246693 (= c!1342296 (is-Nil!69998 lt!2574258))))

(declare-fun e!4336535 () (Set Context!14888))

(assert (=> d!2246693 (= (content!14404 lt!2574258) e!4336535)))

(declare-fun b!7233617 () Bool)

(assert (=> b!7233617 (= e!4336535 (as set.empty (Set Context!14888)))))

(declare-fun b!7233618 () Bool)

(assert (=> b!7233618 (= e!4336535 (set.union (set.insert (h!76446 lt!2574258) (as set.empty (Set Context!14888))) (content!14404 (t!384171 lt!2574258))))))

(assert (= (and d!2246693 c!1342296) b!7233617))

(assert (= (and d!2246693 (not c!1342296)) b!7233618))

(declare-fun m!7903342 () Bool)

(assert (=> b!7233618 m!7903342))

(declare-fun m!7903344 () Bool)

(assert (=> b!7233618 m!7903344))

(assert (=> b!7233320 d!2246693))

(declare-fun d!2246695 () Bool)

(assert (=> d!2246695 (= (isEmpty!40345 (t!384170 s1!1971)) (is-Nil!69997 (t!384170 s1!1971)))))

(assert (=> d!2246607 d!2246695))

(declare-fun d!2246697 () Bool)

(declare-fun c!1342297 () Bool)

(assert (=> d!2246697 (= c!1342297 (isEmpty!40345 (t!384170 s1!1971)))))

(declare-fun e!4336536 () Bool)

(assert (=> d!2246697 (= (matchZipper!3414 (set.insert lt!2574228 (as set.empty (Set Context!14888))) (t!384170 s1!1971)) e!4336536)))

(declare-fun b!7233619 () Bool)

(assert (=> b!7233619 (= e!4336536 (nullableZipper!2818 (set.insert lt!2574228 (as set.empty (Set Context!14888)))))))

(declare-fun b!7233620 () Bool)

(assert (=> b!7233620 (= e!4336536 (matchZipper!3414 (derivationStepZipper!3296 (set.insert lt!2574228 (as set.empty (Set Context!14888))) (head!14806 (t!384170 s1!1971))) (tail!14131 (t!384170 s1!1971))))))

(assert (= (and d!2246697 c!1342297) b!7233619))

(assert (= (and d!2246697 (not c!1342297)) b!7233620))

(assert (=> d!2246697 m!7903108))

(assert (=> b!7233619 m!7903128))

(declare-fun m!7903346 () Bool)

(assert (=> b!7233619 m!7903346))

(assert (=> b!7233620 m!7903112))

(assert (=> b!7233620 m!7903128))

(assert (=> b!7233620 m!7903112))

(declare-fun m!7903348 () Bool)

(assert (=> b!7233620 m!7903348))

(assert (=> b!7233620 m!7903116))

(assert (=> b!7233620 m!7903348))

(assert (=> b!7233620 m!7903116))

(declare-fun m!7903350 () Bool)

(assert (=> b!7233620 m!7903350))

(assert (=> bs!1902931 d!2246697))

(declare-fun d!2246699 () Bool)

(assert (=> d!2246699 (= (isEmpty!40345 s2!1849) (is-Nil!69997 s2!1849))))

(assert (=> d!2246579 d!2246699))

(declare-fun d!2246701 () Bool)

(declare-fun nullableFct!3062 (Regex!18504) Bool)

(assert (=> d!2246701 (= (nullable!7821 (h!76444 (exprs!7944 (Context!14889 lt!2574174)))) (nullableFct!3062 (h!76444 (exprs!7944 (Context!14889 lt!2574174)))))))

(declare-fun bs!1902973 () Bool)

(assert (= bs!1902973 d!2246701))

(declare-fun m!7903352 () Bool)

(assert (=> bs!1902973 m!7903352))

(assert (=> b!7233359 d!2246701))

(declare-fun d!2246703 () Bool)

(assert (=> d!2246703 (= (isEmpty!40345 (++!16309 (t!384170 s1!1971) s2!1849)) (is-Nil!69997 (++!16309 (t!384170 s1!1971) s2!1849)))))

(assert (=> d!2246553 d!2246703))

(declare-fun d!2246705 () Bool)

(declare-fun res!2934707 () Bool)

(declare-fun e!4336541 () Bool)

(assert (=> d!2246705 (=> res!2934707 e!4336541)))

(assert (=> d!2246705 (= res!2934707 (is-Nil!69998 lt!2574173))))

(assert (=> d!2246705 (= (forall!17336 lt!2574173 lambda!439734) e!4336541)))

(declare-fun b!7233625 () Bool)

(declare-fun e!4336542 () Bool)

(assert (=> b!7233625 (= e!4336541 e!4336542)))

(declare-fun res!2934708 () Bool)

(assert (=> b!7233625 (=> (not res!2934708) (not e!4336542))))

(assert (=> b!7233625 (= res!2934708 (dynLambda!28537 lambda!439734 (h!76446 lt!2574173)))))

(declare-fun b!7233626 () Bool)

(assert (=> b!7233626 (= e!4336542 (forall!17336 (t!384171 lt!2574173) lambda!439734))))

(assert (= (and d!2246705 (not res!2934707)) b!7233625))

(assert (= (and b!7233625 res!2934708) b!7233626))

(declare-fun b_lambda!277241 () Bool)

(assert (=> (not b_lambda!277241) (not b!7233625)))

(declare-fun m!7903354 () Bool)

(assert (=> b!7233625 m!7903354))

(declare-fun m!7903356 () Bool)

(assert (=> b!7233626 m!7903356))

(assert (=> d!2246569 d!2246705))

(declare-fun d!2246707 () Bool)

(declare-fun lt!2574287 () Int)

(assert (=> d!2246707 (>= lt!2574287 0)))

(declare-fun e!4336545 () Int)

(assert (=> d!2246707 (= lt!2574287 e!4336545)))

(declare-fun c!1342300 () Bool)

(assert (=> d!2246707 (= c!1342300 (is-Nil!69996 lt!2574266))))

(assert (=> d!2246707 (= (size!41569 lt!2574266) lt!2574287)))

(declare-fun b!7233631 () Bool)

(assert (=> b!7233631 (= e!4336545 0)))

(declare-fun b!7233632 () Bool)

(assert (=> b!7233632 (= e!4336545 (+ 1 (size!41569 (t!384169 lt!2574266))))))

(assert (= (and d!2246707 c!1342300) b!7233631))

(assert (= (and d!2246707 (not c!1342300)) b!7233632))

(declare-fun m!7903358 () Bool)

(assert (=> b!7233632 m!7903358))

(assert (=> b!7233417 d!2246707))

(declare-fun d!2246709 () Bool)

(declare-fun lt!2574288 () Int)

(assert (=> d!2246709 (>= lt!2574288 0)))

(declare-fun e!4336546 () Int)

(assert (=> d!2246709 (= lt!2574288 e!4336546)))

(declare-fun c!1342301 () Bool)

(assert (=> d!2246709 (= c!1342301 (is-Nil!69996 (exprs!7944 ct1!232)))))

(assert (=> d!2246709 (= (size!41569 (exprs!7944 ct1!232)) lt!2574288)))

(declare-fun b!7233633 () Bool)

(assert (=> b!7233633 (= e!4336546 0)))

(declare-fun b!7233634 () Bool)

(assert (=> b!7233634 (= e!4336546 (+ 1 (size!41569 (t!384169 (exprs!7944 ct1!232)))))))

(assert (= (and d!2246709 c!1342301) b!7233633))

(assert (= (and d!2246709 (not c!1342301)) b!7233634))

(declare-fun m!7903360 () Bool)

(assert (=> b!7233634 m!7903360))

(assert (=> b!7233417 d!2246709))

(declare-fun d!2246711 () Bool)

(declare-fun lt!2574289 () Int)

(assert (=> d!2246711 (>= lt!2574289 0)))

(declare-fun e!4336547 () Int)

(assert (=> d!2246711 (= lt!2574289 e!4336547)))

(declare-fun c!1342302 () Bool)

(assert (=> d!2246711 (= c!1342302 (is-Nil!69996 (exprs!7944 ct2!328)))))

(assert (=> d!2246711 (= (size!41569 (exprs!7944 ct2!328)) lt!2574289)))

(declare-fun b!7233635 () Bool)

(assert (=> b!7233635 (= e!4336547 0)))

(declare-fun b!7233636 () Bool)

(assert (=> b!7233636 (= e!4336547 (+ 1 (size!41569 (t!384169 (exprs!7944 ct2!328)))))))

(assert (= (and d!2246711 c!1342302) b!7233635))

(assert (= (and d!2246711 (not c!1342302)) b!7233636))

(declare-fun m!7903362 () Bool)

(assert (=> b!7233636 m!7903362))

(assert (=> b!7233417 d!2246711))

(declare-fun b!7233637 () Bool)

(declare-fun e!4336550 () (Set Context!14888))

(assert (=> b!7233637 (= e!4336550 (as set.empty (Set Context!14888)))))

(declare-fun b!7233638 () Bool)

(declare-fun call!658489 () (Set Context!14888))

(assert (=> b!7233638 (= e!4336550 call!658489)))

(declare-fun d!2246713 () Bool)

(declare-fun c!1342304 () Bool)

(assert (=> d!2246713 (= c!1342304 (and (is-ElementMatch!18504 (ite c!1342225 (regOne!37521 (h!76444 (exprs!7944 ct1!232))) (ite c!1342227 (regTwo!37520 (h!76444 (exprs!7944 ct1!232))) (ite c!1342223 (regOne!37520 (h!76444 (exprs!7944 ct1!232))) (reg!18833 (h!76444 (exprs!7944 ct1!232))))))) (= (c!1342172 (ite c!1342225 (regOne!37521 (h!76444 (exprs!7944 ct1!232))) (ite c!1342227 (regTwo!37520 (h!76444 (exprs!7944 ct1!232))) (ite c!1342223 (regOne!37520 (h!76444 (exprs!7944 ct1!232))) (reg!18833 (h!76444 (exprs!7944 ct1!232))))))) (h!76445 s1!1971))))))

(declare-fun e!4336549 () (Set Context!14888))

(assert (=> d!2246713 (= (derivationStepZipperDown!2548 (ite c!1342225 (regOne!37521 (h!76444 (exprs!7944 ct1!232))) (ite c!1342227 (regTwo!37520 (h!76444 (exprs!7944 ct1!232))) (ite c!1342223 (regOne!37520 (h!76444 (exprs!7944 ct1!232))) (reg!18833 (h!76444 (exprs!7944 ct1!232)))))) (ite (or c!1342225 c!1342227) (Context!14889 (tail!14129 (exprs!7944 ct1!232))) (Context!14889 call!658438)) (h!76445 s1!1971)) e!4336549)))

(declare-fun bm!658482 () Bool)

(declare-fun call!658492 () (Set Context!14888))

(declare-fun call!658487 () (Set Context!14888))

(assert (=> bm!658482 (= call!658492 call!658487)))

(declare-fun bm!658483 () Bool)

(assert (=> bm!658483 (= call!658489 call!658492)))

(declare-fun b!7233639 () Bool)

(declare-fun e!4336552 () (Set Context!14888))

(assert (=> b!7233639 (= e!4336552 call!658489)))

(declare-fun b!7233640 () Bool)

(declare-fun e!4336551 () (Set Context!14888))

(assert (=> b!7233640 (= e!4336549 e!4336551)))

(declare-fun c!1342305 () Bool)

(assert (=> b!7233640 (= c!1342305 (is-Union!18504 (ite c!1342225 (regOne!37521 (h!76444 (exprs!7944 ct1!232))) (ite c!1342227 (regTwo!37520 (h!76444 (exprs!7944 ct1!232))) (ite c!1342223 (regOne!37520 (h!76444 (exprs!7944 ct1!232))) (reg!18833 (h!76444 (exprs!7944 ct1!232))))))))))

(declare-fun bm!658484 () Bool)

(declare-fun call!658491 () List!70120)

(declare-fun call!658488 () List!70120)

(assert (=> bm!658484 (= call!658491 call!658488)))

(declare-fun bm!658485 () Bool)

(declare-fun c!1342307 () Bool)

(declare-fun c!1342303 () Bool)

(assert (=> bm!658485 (= call!658488 ($colon$colon!2865 (exprs!7944 (ite (or c!1342225 c!1342227) (Context!14889 (tail!14129 (exprs!7944 ct1!232))) (Context!14889 call!658438))) (ite (or c!1342307 c!1342303) (regTwo!37520 (ite c!1342225 (regOne!37521 (h!76444 (exprs!7944 ct1!232))) (ite c!1342227 (regTwo!37520 (h!76444 (exprs!7944 ct1!232))) (ite c!1342223 (regOne!37520 (h!76444 (exprs!7944 ct1!232))) (reg!18833 (h!76444 (exprs!7944 ct1!232))))))) (ite c!1342225 (regOne!37521 (h!76444 (exprs!7944 ct1!232))) (ite c!1342227 (regTwo!37520 (h!76444 (exprs!7944 ct1!232))) (ite c!1342223 (regOne!37520 (h!76444 (exprs!7944 ct1!232))) (reg!18833 (h!76444 (exprs!7944 ct1!232)))))))))))

(declare-fun b!7233641 () Bool)

(assert (=> b!7233641 (= e!4336549 (set.insert (ite (or c!1342225 c!1342227) (Context!14889 (tail!14129 (exprs!7944 ct1!232))) (Context!14889 call!658438)) (as set.empty (Set Context!14888))))))

(declare-fun b!7233642 () Bool)

(declare-fun call!658490 () (Set Context!14888))

(assert (=> b!7233642 (= e!4336551 (set.union call!658487 call!658490))))

(declare-fun b!7233643 () Bool)

(declare-fun e!4336553 () Bool)

(assert (=> b!7233643 (= e!4336553 (nullable!7821 (regOne!37520 (ite c!1342225 (regOne!37521 (h!76444 (exprs!7944 ct1!232))) (ite c!1342227 (regTwo!37520 (h!76444 (exprs!7944 ct1!232))) (ite c!1342223 (regOne!37520 (h!76444 (exprs!7944 ct1!232))) (reg!18833 (h!76444 (exprs!7944 ct1!232)))))))))))

(declare-fun bm!658486 () Bool)

(assert (=> bm!658486 (= call!658487 (derivationStepZipperDown!2548 (ite c!1342305 (regOne!37521 (ite c!1342225 (regOne!37521 (h!76444 (exprs!7944 ct1!232))) (ite c!1342227 (regTwo!37520 (h!76444 (exprs!7944 ct1!232))) (ite c!1342223 (regOne!37520 (h!76444 (exprs!7944 ct1!232))) (reg!18833 (h!76444 (exprs!7944 ct1!232))))))) (ite c!1342307 (regTwo!37520 (ite c!1342225 (regOne!37521 (h!76444 (exprs!7944 ct1!232))) (ite c!1342227 (regTwo!37520 (h!76444 (exprs!7944 ct1!232))) (ite c!1342223 (regOne!37520 (h!76444 (exprs!7944 ct1!232))) (reg!18833 (h!76444 (exprs!7944 ct1!232))))))) (ite c!1342303 (regOne!37520 (ite c!1342225 (regOne!37521 (h!76444 (exprs!7944 ct1!232))) (ite c!1342227 (regTwo!37520 (h!76444 (exprs!7944 ct1!232))) (ite c!1342223 (regOne!37520 (h!76444 (exprs!7944 ct1!232))) (reg!18833 (h!76444 (exprs!7944 ct1!232))))))) (reg!18833 (ite c!1342225 (regOne!37521 (h!76444 (exprs!7944 ct1!232))) (ite c!1342227 (regTwo!37520 (h!76444 (exprs!7944 ct1!232))) (ite c!1342223 (regOne!37520 (h!76444 (exprs!7944 ct1!232))) (reg!18833 (h!76444 (exprs!7944 ct1!232)))))))))) (ite (or c!1342305 c!1342307) (ite (or c!1342225 c!1342227) (Context!14889 (tail!14129 (exprs!7944 ct1!232))) (Context!14889 call!658438)) (Context!14889 call!658491)) (h!76445 s1!1971)))))

(declare-fun b!7233644 () Bool)

(declare-fun e!4336548 () (Set Context!14888))

(assert (=> b!7233644 (= e!4336548 e!4336552)))

(assert (=> b!7233644 (= c!1342303 (is-Concat!27349 (ite c!1342225 (regOne!37521 (h!76444 (exprs!7944 ct1!232))) (ite c!1342227 (regTwo!37520 (h!76444 (exprs!7944 ct1!232))) (ite c!1342223 (regOne!37520 (h!76444 (exprs!7944 ct1!232))) (reg!18833 (h!76444 (exprs!7944 ct1!232))))))))))

(declare-fun b!7233645 () Bool)

(assert (=> b!7233645 (= e!4336548 (set.union call!658490 call!658492))))

(declare-fun c!1342306 () Bool)

(declare-fun b!7233646 () Bool)

(assert (=> b!7233646 (= c!1342306 (is-Star!18504 (ite c!1342225 (regOne!37521 (h!76444 (exprs!7944 ct1!232))) (ite c!1342227 (regTwo!37520 (h!76444 (exprs!7944 ct1!232))) (ite c!1342223 (regOne!37520 (h!76444 (exprs!7944 ct1!232))) (reg!18833 (h!76444 (exprs!7944 ct1!232))))))))))

(assert (=> b!7233646 (= e!4336552 e!4336550)))

(declare-fun b!7233647 () Bool)

(assert (=> b!7233647 (= c!1342307 e!4336553)))

(declare-fun res!2934709 () Bool)

(assert (=> b!7233647 (=> (not res!2934709) (not e!4336553))))

(assert (=> b!7233647 (= res!2934709 (is-Concat!27349 (ite c!1342225 (regOne!37521 (h!76444 (exprs!7944 ct1!232))) (ite c!1342227 (regTwo!37520 (h!76444 (exprs!7944 ct1!232))) (ite c!1342223 (regOne!37520 (h!76444 (exprs!7944 ct1!232))) (reg!18833 (h!76444 (exprs!7944 ct1!232))))))))))

(assert (=> b!7233647 (= e!4336551 e!4336548)))

(declare-fun bm!658487 () Bool)

(assert (=> bm!658487 (= call!658490 (derivationStepZipperDown!2548 (ite c!1342305 (regTwo!37521 (ite c!1342225 (regOne!37521 (h!76444 (exprs!7944 ct1!232))) (ite c!1342227 (regTwo!37520 (h!76444 (exprs!7944 ct1!232))) (ite c!1342223 (regOne!37520 (h!76444 (exprs!7944 ct1!232))) (reg!18833 (h!76444 (exprs!7944 ct1!232))))))) (regOne!37520 (ite c!1342225 (regOne!37521 (h!76444 (exprs!7944 ct1!232))) (ite c!1342227 (regTwo!37520 (h!76444 (exprs!7944 ct1!232))) (ite c!1342223 (regOne!37520 (h!76444 (exprs!7944 ct1!232))) (reg!18833 (h!76444 (exprs!7944 ct1!232)))))))) (ite c!1342305 (ite (or c!1342225 c!1342227) (Context!14889 (tail!14129 (exprs!7944 ct1!232))) (Context!14889 call!658438)) (Context!14889 call!658488)) (h!76445 s1!1971)))))

(assert (= (and d!2246713 c!1342304) b!7233641))

(assert (= (and d!2246713 (not c!1342304)) b!7233640))

(assert (= (and b!7233640 c!1342305) b!7233642))

(assert (= (and b!7233640 (not c!1342305)) b!7233647))

(assert (= (and b!7233647 res!2934709) b!7233643))

(assert (= (and b!7233647 c!1342307) b!7233645))

(assert (= (and b!7233647 (not c!1342307)) b!7233644))

(assert (= (and b!7233644 c!1342303) b!7233639))

(assert (= (and b!7233644 (not c!1342303)) b!7233646))

(assert (= (and b!7233646 c!1342306) b!7233638))

(assert (= (and b!7233646 (not c!1342306)) b!7233637))

(assert (= (or b!7233639 b!7233638) bm!658484))

(assert (= (or b!7233639 b!7233638) bm!658483))

(assert (= (or b!7233645 bm!658484) bm!658485))

(assert (= (or b!7233645 bm!658483) bm!658482))

(assert (= (or b!7233642 b!7233645) bm!658487))

(assert (= (or b!7233642 bm!658482) bm!658486))

(declare-fun m!7903364 () Bool)

(assert (=> b!7233643 m!7903364))

(declare-fun m!7903366 () Bool)

(assert (=> bm!658487 m!7903366))

(declare-fun m!7903368 () Bool)

(assert (=> b!7233641 m!7903368))

(declare-fun m!7903370 () Bool)

(assert (=> bm!658486 m!7903370))

(declare-fun m!7903372 () Bool)

(assert (=> bm!658485 m!7903372))

(assert (=> bm!658433 d!2246713))

(declare-fun b!7233649 () Bool)

(declare-fun e!4336555 () List!70120)

(assert (=> b!7233649 (= e!4336555 (Cons!69996 (h!76444 (t!384169 (exprs!7944 ct1!232))) (++!16308 (t!384169 (t!384169 (exprs!7944 ct1!232))) (exprs!7944 ct2!328))))))

(declare-fun b!7233648 () Bool)

(assert (=> b!7233648 (= e!4336555 (exprs!7944 ct2!328))))

(declare-fun b!7233650 () Bool)

(declare-fun res!2934711 () Bool)

(declare-fun e!4336554 () Bool)

(assert (=> b!7233650 (=> (not res!2934711) (not e!4336554))))

(declare-fun lt!2574290 () List!70120)

(assert (=> b!7233650 (= res!2934711 (= (size!41569 lt!2574290) (+ (size!41569 (t!384169 (exprs!7944 ct1!232))) (size!41569 (exprs!7944 ct2!328)))))))

(declare-fun b!7233651 () Bool)

(assert (=> b!7233651 (= e!4336554 (or (not (= (exprs!7944 ct2!328) Nil!69996)) (= lt!2574290 (t!384169 (exprs!7944 ct1!232)))))))

(declare-fun d!2246715 () Bool)

(assert (=> d!2246715 e!4336554))

(declare-fun res!2934710 () Bool)

(assert (=> d!2246715 (=> (not res!2934710) (not e!4336554))))

(assert (=> d!2246715 (= res!2934710 (= (content!14403 lt!2574290) (set.union (content!14403 (t!384169 (exprs!7944 ct1!232))) (content!14403 (exprs!7944 ct2!328)))))))

(assert (=> d!2246715 (= lt!2574290 e!4336555)))

(declare-fun c!1342308 () Bool)

(assert (=> d!2246715 (= c!1342308 (is-Nil!69996 (t!384169 (exprs!7944 ct1!232))))))

(assert (=> d!2246715 (= (++!16308 (t!384169 (exprs!7944 ct1!232)) (exprs!7944 ct2!328)) lt!2574290)))

(assert (= (and d!2246715 c!1342308) b!7233648))

(assert (= (and d!2246715 (not c!1342308)) b!7233649))

(assert (= (and d!2246715 res!2934710) b!7233650))

(assert (= (and b!7233650 res!2934711) b!7233651))

(declare-fun m!7903374 () Bool)

(assert (=> b!7233649 m!7903374))

(declare-fun m!7903376 () Bool)

(assert (=> b!7233650 m!7903376))

(assert (=> b!7233650 m!7903360))

(assert (=> b!7233650 m!7902954))

(declare-fun m!7903378 () Bool)

(assert (=> d!2246715 m!7903378))

(declare-fun m!7903380 () Bool)

(assert (=> d!2246715 m!7903380))

(assert (=> d!2246715 m!7902960))

(assert (=> b!7233416 d!2246715))

(declare-fun d!2246717 () Bool)

(assert (=> d!2246717 (= (nullable!7821 (h!76444 (exprs!7944 ct1!232))) (nullableFct!3062 (h!76444 (exprs!7944 ct1!232))))))

(declare-fun bs!1902974 () Bool)

(assert (= bs!1902974 d!2246717))

(declare-fun m!7903382 () Bool)

(assert (=> bs!1902974 m!7903382))

(assert (=> b!7233309 d!2246717))

(declare-fun d!2246719 () Bool)

(declare-fun c!1342309 () Bool)

(assert (=> d!2246719 (= c!1342309 (isEmpty!40345 (tail!14131 (++!16309 (t!384170 s1!1971) s2!1849))))))

(declare-fun e!4336556 () Bool)

(assert (=> d!2246719 (= (matchZipper!3414 (derivationStepZipper!3296 (set.insert (Context!14889 (++!16308 (exprs!7944 lt!2574180) (exprs!7944 ct2!328))) (as set.empty (Set Context!14888))) (head!14806 (++!16309 (t!384170 s1!1971) s2!1849))) (tail!14131 (++!16309 (t!384170 s1!1971) s2!1849))) e!4336556)))

(declare-fun b!7233652 () Bool)

(assert (=> b!7233652 (= e!4336556 (nullableZipper!2818 (derivationStepZipper!3296 (set.insert (Context!14889 (++!16308 (exprs!7944 lt!2574180) (exprs!7944 ct2!328))) (as set.empty (Set Context!14888))) (head!14806 (++!16309 (t!384170 s1!1971) s2!1849)))))))

(declare-fun b!7233653 () Bool)

(assert (=> b!7233653 (= e!4336556 (matchZipper!3414 (derivationStepZipper!3296 (derivationStepZipper!3296 (set.insert (Context!14889 (++!16308 (exprs!7944 lt!2574180) (exprs!7944 ct2!328))) (as set.empty (Set Context!14888))) (head!14806 (++!16309 (t!384170 s1!1971) s2!1849))) (head!14806 (tail!14131 (++!16309 (t!384170 s1!1971) s2!1849)))) (tail!14131 (tail!14131 (++!16309 (t!384170 s1!1971) s2!1849)))))))

(assert (= (and d!2246719 c!1342309) b!7233652))

(assert (= (and d!2246719 (not c!1342309)) b!7233653))

(assert (=> d!2246719 m!7902930))

(declare-fun m!7903384 () Bool)

(assert (=> d!2246719 m!7903384))

(assert (=> b!7233652 m!7902928))

(declare-fun m!7903386 () Bool)

(assert (=> b!7233652 m!7903386))

(assert (=> b!7233653 m!7902930))

(declare-fun m!7903388 () Bool)

(assert (=> b!7233653 m!7903388))

(assert (=> b!7233653 m!7902928))

(assert (=> b!7233653 m!7903388))

(declare-fun m!7903390 () Bool)

(assert (=> b!7233653 m!7903390))

(assert (=> b!7233653 m!7902930))

(declare-fun m!7903392 () Bool)

(assert (=> b!7233653 m!7903392))

(assert (=> b!7233653 m!7903390))

(assert (=> b!7233653 m!7903392))

(declare-fun m!7903394 () Bool)

(assert (=> b!7233653 m!7903394))

(assert (=> b!7233270 d!2246719))

(declare-fun bs!1902975 () Bool)

(declare-fun d!2246721 () Bool)

(assert (= bs!1902975 (and d!2246721 d!2246609)))

(declare-fun lambda!439767 () Int)

(assert (=> bs!1902975 (= (= (head!14806 (++!16309 (t!384170 s1!1971) s2!1849)) (h!76445 s1!1971)) (= lambda!439767 lambda!439744))))

(declare-fun bs!1902976 () Bool)

(assert (= bs!1902976 (and d!2246721 d!2246661)))

(assert (=> bs!1902976 (= (= (head!14806 (++!16309 (t!384170 s1!1971) s2!1849)) (head!14806 (t!384170 s1!1971))) (= lambda!439767 lambda!439761))))

(assert (=> d!2246721 true))

(assert (=> d!2246721 (= (derivationStepZipper!3296 (set.insert (Context!14889 (++!16308 (exprs!7944 lt!2574180) (exprs!7944 ct2!328))) (as set.empty (Set Context!14888))) (head!14806 (++!16309 (t!384170 s1!1971) s2!1849))) (flatMap!2710 (set.insert (Context!14889 (++!16308 (exprs!7944 lt!2574180) (exprs!7944 ct2!328))) (as set.empty (Set Context!14888))) lambda!439767))))

(declare-fun bs!1902977 () Bool)

(assert (= bs!1902977 d!2246721))

(assert (=> bs!1902977 m!7902824))

(declare-fun m!7903396 () Bool)

(assert (=> bs!1902977 m!7903396))

(assert (=> b!7233270 d!2246721))

(declare-fun d!2246723 () Bool)

(assert (=> d!2246723 (= (head!14806 (++!16309 (t!384170 s1!1971) s2!1849)) (h!76445 (++!16309 (t!384170 s1!1971) s2!1849)))))

(assert (=> b!7233270 d!2246723))

(declare-fun d!2246725 () Bool)

(assert (=> d!2246725 (= (tail!14131 (++!16309 (t!384170 s1!1971) s2!1849)) (t!384170 (++!16309 (t!384170 s1!1971) s2!1849)))))

(assert (=> b!7233270 d!2246725))

(declare-fun d!2246727 () Bool)

(declare-fun lt!2574291 () Int)

(assert (=> d!2246727 (>= lt!2574291 0)))

(declare-fun e!4336557 () Int)

(assert (=> d!2246727 (= lt!2574291 e!4336557)))

(declare-fun c!1342310 () Bool)

(assert (=> d!2246727 (= c!1342310 (is-Nil!69996 lt!2574234))))

(assert (=> d!2246727 (= (size!41569 lt!2574234) lt!2574291)))

(declare-fun b!7233654 () Bool)

(assert (=> b!7233654 (= e!4336557 0)))

(declare-fun b!7233655 () Bool)

(assert (=> b!7233655 (= e!4336557 (+ 1 (size!41569 (t!384169 lt!2574234))))))

(assert (= (and d!2246727 c!1342310) b!7233654))

(assert (= (and d!2246727 (not c!1342310)) b!7233655))

(declare-fun m!7903398 () Bool)

(assert (=> b!7233655 m!7903398))

(assert (=> b!7233293 d!2246727))

(declare-fun d!2246729 () Bool)

(declare-fun lt!2574292 () Int)

(assert (=> d!2246729 (>= lt!2574292 0)))

(declare-fun e!4336558 () Int)

(assert (=> d!2246729 (= lt!2574292 e!4336558)))

(declare-fun c!1342311 () Bool)

(assert (=> d!2246729 (= c!1342311 (is-Nil!69996 (exprs!7944 lt!2574180)))))

(assert (=> d!2246729 (= (size!41569 (exprs!7944 lt!2574180)) lt!2574292)))

(declare-fun b!7233656 () Bool)

(assert (=> b!7233656 (= e!4336558 0)))

(declare-fun b!7233657 () Bool)

(assert (=> b!7233657 (= e!4336558 (+ 1 (size!41569 (t!384169 (exprs!7944 lt!2574180)))))))

(assert (= (and d!2246729 c!1342311) b!7233656))

(assert (= (and d!2246729 (not c!1342311)) b!7233657))

(assert (=> b!7233657 m!7903272))

(assert (=> b!7233293 d!2246729))

(assert (=> b!7233293 d!2246711))

(declare-fun d!2246731 () Bool)

(declare-fun c!1342312 () Bool)

(assert (=> d!2246731 (= c!1342312 (isEmpty!40345 (tail!14131 s1!1971)))))

(declare-fun e!4336559 () Bool)

(assert (=> d!2246731 (= (matchZipper!3414 (derivationStepZipper!3296 lt!2574168 (head!14806 s1!1971)) (tail!14131 s1!1971)) e!4336559)))

(declare-fun b!7233658 () Bool)

(assert (=> b!7233658 (= e!4336559 (nullableZipper!2818 (derivationStepZipper!3296 lt!2574168 (head!14806 s1!1971))))))

(declare-fun b!7233659 () Bool)

(assert (=> b!7233659 (= e!4336559 (matchZipper!3414 (derivationStepZipper!3296 (derivationStepZipper!3296 lt!2574168 (head!14806 s1!1971)) (head!14806 (tail!14131 s1!1971))) (tail!14131 (tail!14131 s1!1971))))))

(assert (= (and d!2246731 c!1342312) b!7233658))

(assert (= (and d!2246731 (not c!1342312)) b!7233659))

(assert (=> d!2246731 m!7903048))

(declare-fun m!7903400 () Bool)

(assert (=> d!2246731 m!7903400))

(assert (=> b!7233658 m!7903046))

(declare-fun m!7903402 () Bool)

(assert (=> b!7233658 m!7903402))

(assert (=> b!7233659 m!7903048))

(declare-fun m!7903404 () Bool)

(assert (=> b!7233659 m!7903404))

(assert (=> b!7233659 m!7903046))

(assert (=> b!7233659 m!7903404))

(declare-fun m!7903406 () Bool)

(assert (=> b!7233659 m!7903406))

(assert (=> b!7233659 m!7903048))

(declare-fun m!7903408 () Bool)

(assert (=> b!7233659 m!7903408))

(assert (=> b!7233659 m!7903406))

(assert (=> b!7233659 m!7903408))

(declare-fun m!7903410 () Bool)

(assert (=> b!7233659 m!7903410))

(assert (=> b!7233353 d!2246731))

(declare-fun bs!1902978 () Bool)

(declare-fun d!2246733 () Bool)

(assert (= bs!1902978 (and d!2246733 d!2246609)))

(declare-fun lambda!439768 () Int)

(assert (=> bs!1902978 (= (= (head!14806 s1!1971) (h!76445 s1!1971)) (= lambda!439768 lambda!439744))))

(declare-fun bs!1902979 () Bool)

(assert (= bs!1902979 (and d!2246733 d!2246661)))

(assert (=> bs!1902979 (= (= (head!14806 s1!1971) (head!14806 (t!384170 s1!1971))) (= lambda!439768 lambda!439761))))

(declare-fun bs!1902980 () Bool)

(assert (= bs!1902980 (and d!2246733 d!2246721)))

(assert (=> bs!1902980 (= (= (head!14806 s1!1971) (head!14806 (++!16309 (t!384170 s1!1971) s2!1849))) (= lambda!439768 lambda!439767))))

(assert (=> d!2246733 true))

(assert (=> d!2246733 (= (derivationStepZipper!3296 lt!2574168 (head!14806 s1!1971)) (flatMap!2710 lt!2574168 lambda!439768))))

(declare-fun bs!1902981 () Bool)

(assert (= bs!1902981 d!2246733))

(declare-fun m!7903412 () Bool)

(assert (=> bs!1902981 m!7903412))

(assert (=> b!7233353 d!2246733))

(declare-fun d!2246735 () Bool)

(assert (=> d!2246735 (= (head!14806 s1!1971) (h!76445 s1!1971))))

(assert (=> b!7233353 d!2246735))

(declare-fun d!2246737 () Bool)

(assert (=> d!2246737 (= (tail!14131 s1!1971) (t!384170 s1!1971))))

(assert (=> b!7233353 d!2246737))

(declare-fun b!7233660 () Bool)

(declare-fun e!4336561 () (Set Context!14888))

(declare-fun e!4336562 () (Set Context!14888))

(assert (=> b!7233660 (= e!4336561 e!4336562)))

(declare-fun c!1342314 () Bool)

(assert (=> b!7233660 (= c!1342314 (is-Cons!69996 (exprs!7944 (Context!14889 (t!384169 (exprs!7944 (Context!14889 lt!2574174)))))))))

(declare-fun bm!658488 () Bool)

(declare-fun call!658493 () (Set Context!14888))

(assert (=> bm!658488 (= call!658493 (derivationStepZipperDown!2548 (h!76444 (exprs!7944 (Context!14889 (t!384169 (exprs!7944 (Context!14889 lt!2574174)))))) (Context!14889 (t!384169 (exprs!7944 (Context!14889 (t!384169 (exprs!7944 (Context!14889 lt!2574174))))))) (h!76445 s1!1971)))))

(declare-fun d!2246739 () Bool)

(declare-fun c!1342313 () Bool)

(declare-fun e!4336560 () Bool)

(assert (=> d!2246739 (= c!1342313 e!4336560)))

(declare-fun res!2934712 () Bool)

(assert (=> d!2246739 (=> (not res!2934712) (not e!4336560))))

(assert (=> d!2246739 (= res!2934712 (is-Cons!69996 (exprs!7944 (Context!14889 (t!384169 (exprs!7944 (Context!14889 lt!2574174)))))))))

(assert (=> d!2246739 (= (derivationStepZipperUp!2378 (Context!14889 (t!384169 (exprs!7944 (Context!14889 lt!2574174)))) (h!76445 s1!1971)) e!4336561)))

(declare-fun b!7233661 () Bool)

(assert (=> b!7233661 (= e!4336561 (set.union call!658493 (derivationStepZipperUp!2378 (Context!14889 (t!384169 (exprs!7944 (Context!14889 (t!384169 (exprs!7944 (Context!14889 lt!2574174))))))) (h!76445 s1!1971))))))

(declare-fun b!7233662 () Bool)

(assert (=> b!7233662 (= e!4336562 (as set.empty (Set Context!14888)))))

(declare-fun b!7233663 () Bool)

(assert (=> b!7233663 (= e!4336562 call!658493)))

(declare-fun b!7233664 () Bool)

(assert (=> b!7233664 (= e!4336560 (nullable!7821 (h!76444 (exprs!7944 (Context!14889 (t!384169 (exprs!7944 (Context!14889 lt!2574174))))))))))

(assert (= (and d!2246739 res!2934712) b!7233664))

(assert (= (and d!2246739 c!1342313) b!7233661))

(assert (= (and d!2246739 (not c!1342313)) b!7233660))

(assert (= (and b!7233660 c!1342314) b!7233663))

(assert (= (and b!7233660 (not c!1342314)) b!7233662))

(assert (= (or b!7233661 b!7233663) bm!658488))

(declare-fun m!7903414 () Bool)

(assert (=> bm!658488 m!7903414))

(declare-fun m!7903416 () Bool)

(assert (=> b!7233661 m!7903416))

(declare-fun m!7903418 () Bool)

(assert (=> b!7233664 m!7903418))

(assert (=> b!7233356 d!2246739))

(declare-fun bs!1902982 () Bool)

(declare-fun d!2246741 () Bool)

(assert (= bs!1902982 (and d!2246741 d!2246681)))

(declare-fun lambda!439769 () Int)

(assert (=> bs!1902982 (= lambda!439769 lambda!439762)))

(declare-fun bs!1902983 () Bool)

(assert (= bs!1902983 (and d!2246741 d!2246687)))

(assert (=> bs!1902983 (not (= lambda!439769 lambda!439766))))

(declare-fun bs!1902984 () Bool)

(assert (= bs!1902984 (and d!2246741 d!2246685)))

(assert (=> bs!1902984 (not (= lambda!439769 lambda!439763))))

(declare-fun bs!1902985 () Bool)

(assert (= bs!1902985 (and d!2246741 d!2246569)))

(assert (=> bs!1902985 (not (= lambda!439769 lambda!439734))))

(declare-fun bs!1902986 () Bool)

(assert (= bs!1902986 (and d!2246741 d!2246653)))

(assert (=> bs!1902986 (= lambda!439769 lambda!439760)))

(declare-fun bs!1902987 () Bool)

(assert (= bs!1902987 (and d!2246741 d!2246573)))

(assert (=> bs!1902987 (not (= lambda!439769 lambda!439737))))

(declare-fun bs!1902988 () Bool)

(assert (= bs!1902988 (and d!2246741 b!7233224)))

(assert (=> bs!1902988 (not (= lambda!439769 lambda!439707))))

(assert (=> d!2246741 (= (nullableZipper!2818 (set.insert (Context!14889 (++!16308 (exprs!7944 lt!2574180) (exprs!7944 ct2!328))) (as set.empty (Set Context!14888)))) (exists!4151 (set.insert (Context!14889 (++!16308 (exprs!7944 lt!2574180) (exprs!7944 ct2!328))) (as set.empty (Set Context!14888))) lambda!439769))))

(declare-fun bs!1902989 () Bool)

(assert (= bs!1902989 d!2246741))

(assert (=> bs!1902989 m!7902824))

(declare-fun m!7903420 () Bool)

(assert (=> bs!1902989 m!7903420))

(assert (=> b!7233269 d!2246741))

(declare-fun d!2246743 () Bool)

(assert (=> d!2246743 (= (nullable!7821 (regOne!37520 (h!76444 (exprs!7944 ct1!232)))) (nullableFct!3062 (regOne!37520 (h!76444 (exprs!7944 ct1!232)))))))

(declare-fun bs!1902990 () Bool)

(assert (= bs!1902990 d!2246743))

(declare-fun m!7903422 () Bool)

(assert (=> bs!1902990 m!7903422))

(assert (=> b!7233402 d!2246743))

(declare-fun d!2246745 () Bool)

(declare-fun res!2934713 () Bool)

(declare-fun e!4336563 () Bool)

(assert (=> d!2246745 (=> res!2934713 e!4336563)))

(assert (=> d!2246745 (= res!2934713 (is-Nil!69996 (exprs!7944 ct2!328)))))

(assert (=> d!2246745 (= (forall!17335 (exprs!7944 ct2!328) lambda!439741) e!4336563)))

(declare-fun b!7233665 () Bool)

(declare-fun e!4336564 () Bool)

(assert (=> b!7233665 (= e!4336563 e!4336564)))

(declare-fun res!2934714 () Bool)

(assert (=> b!7233665 (=> (not res!2934714) (not e!4336564))))

(assert (=> b!7233665 (= res!2934714 (dynLambda!28541 lambda!439741 (h!76444 (exprs!7944 ct2!328))))))

(declare-fun b!7233666 () Bool)

(assert (=> b!7233666 (= e!4336564 (forall!17335 (t!384169 (exprs!7944 ct2!328)) lambda!439741))))

(assert (= (and d!2246745 (not res!2934713)) b!7233665))

(assert (= (and b!7233665 res!2934714) b!7233666))

(declare-fun b_lambda!277243 () Bool)

(assert (=> (not b_lambda!277243) (not b!7233665)))

(declare-fun m!7903424 () Bool)

(assert (=> b!7233665 m!7903424))

(declare-fun m!7903426 () Bool)

(assert (=> b!7233666 m!7903426))

(assert (=> d!2246591 d!2246745))

(declare-fun d!2246747 () Bool)

(declare-fun res!2934715 () Bool)

(declare-fun e!4336565 () Bool)

(assert (=> d!2246747 (=> res!2934715 e!4336565)))

(assert (=> d!2246747 (= res!2934715 (is-Nil!69996 (++!16308 (exprs!7944 lt!2574180) (exprs!7944 ct2!328))))))

(assert (=> d!2246747 (= (forall!17335 (++!16308 (exprs!7944 lt!2574180) (exprs!7944 ct2!328)) lambda!439706) e!4336565)))

(declare-fun b!7233667 () Bool)

(declare-fun e!4336566 () Bool)

(assert (=> b!7233667 (= e!4336565 e!4336566)))

(declare-fun res!2934716 () Bool)

(assert (=> b!7233667 (=> (not res!2934716) (not e!4336566))))

(assert (=> b!7233667 (= res!2934716 (dynLambda!28541 lambda!439706 (h!76444 (++!16308 (exprs!7944 lt!2574180) (exprs!7944 ct2!328)))))))

(declare-fun b!7233668 () Bool)

(assert (=> b!7233668 (= e!4336566 (forall!17335 (t!384169 (++!16308 (exprs!7944 lt!2574180) (exprs!7944 ct2!328))) lambda!439706))))

(assert (= (and d!2246747 (not res!2934715)) b!7233667))

(assert (= (and b!7233667 res!2934716) b!7233668))

(declare-fun b_lambda!277245 () Bool)

(assert (=> (not b_lambda!277245) (not b!7233667)))

(declare-fun m!7903428 () Bool)

(assert (=> b!7233667 m!7903428))

(declare-fun m!7903430 () Bool)

(assert (=> b!7233668 m!7903430))

(assert (=> d!2246563 d!2246747))

(assert (=> d!2246563 d!2246557))

(declare-fun d!2246749 () Bool)

(assert (=> d!2246749 (forall!17335 (++!16308 (exprs!7944 lt!2574180) (exprs!7944 ct2!328)) lambda!439706)))

(assert (=> d!2246749 true))

(declare-fun _$78!727 () Unit!163545)

(assert (=> d!2246749 (= (choose!55558 (exprs!7944 lt!2574180) (exprs!7944 ct2!328) lambda!439706) _$78!727)))

(declare-fun bs!1902991 () Bool)

(assert (= bs!1902991 d!2246749))

(assert (=> bs!1902991 m!7902840))

(assert (=> bs!1902991 m!7902840))

(assert (=> bs!1902991 m!7902968))

(assert (=> d!2246563 d!2246749))

(declare-fun d!2246751 () Bool)

(declare-fun res!2934717 () Bool)

(declare-fun e!4336567 () Bool)

(assert (=> d!2246751 (=> res!2934717 e!4336567)))

(assert (=> d!2246751 (= res!2934717 (is-Nil!69996 (exprs!7944 lt!2574180)))))

(assert (=> d!2246751 (= (forall!17335 (exprs!7944 lt!2574180) lambda!439706) e!4336567)))

(declare-fun b!7233669 () Bool)

(declare-fun e!4336568 () Bool)

(assert (=> b!7233669 (= e!4336567 e!4336568)))

(declare-fun res!2934718 () Bool)

(assert (=> b!7233669 (=> (not res!2934718) (not e!4336568))))

(assert (=> b!7233669 (= res!2934718 (dynLambda!28541 lambda!439706 (h!76444 (exprs!7944 lt!2574180))))))

(declare-fun b!7233670 () Bool)

(assert (=> b!7233670 (= e!4336568 (forall!17335 (t!384169 (exprs!7944 lt!2574180)) lambda!439706))))

(assert (= (and d!2246751 (not res!2934717)) b!7233669))

(assert (= (and b!7233669 res!2934718) b!7233670))

(declare-fun b_lambda!277247 () Bool)

(assert (=> (not b_lambda!277247) (not b!7233669)))

(declare-fun m!7903432 () Bool)

(assert (=> b!7233669 m!7903432))

(declare-fun m!7903434 () Bool)

(assert (=> b!7233670 m!7903434))

(assert (=> d!2246563 d!2246751))

(declare-fun d!2246753 () Bool)

(declare-fun lt!2574295 () Int)

(assert (=> d!2246753 (>= lt!2574295 0)))

(declare-fun e!4336571 () Int)

(assert (=> d!2246753 (= lt!2574295 e!4336571)))

(declare-fun c!1342317 () Bool)

(assert (=> d!2246753 (= c!1342317 (is-Nil!69997 lt!2574231))))

(assert (=> d!2246753 (= (size!41568 lt!2574231) lt!2574295)))

(declare-fun b!7233675 () Bool)

(assert (=> b!7233675 (= e!4336571 0)))

(declare-fun b!7233676 () Bool)

(assert (=> b!7233676 (= e!4336571 (+ 1 (size!41568 (t!384170 lt!2574231))))))

(assert (= (and d!2246753 c!1342317) b!7233675))

(assert (= (and d!2246753 (not c!1342317)) b!7233676))

(declare-fun m!7903436 () Bool)

(assert (=> b!7233676 m!7903436))

(assert (=> b!7233281 d!2246753))

(declare-fun d!2246755 () Bool)

(declare-fun lt!2574296 () Int)

(assert (=> d!2246755 (>= lt!2574296 0)))

(declare-fun e!4336572 () Int)

(assert (=> d!2246755 (= lt!2574296 e!4336572)))

(declare-fun c!1342318 () Bool)

(assert (=> d!2246755 (= c!1342318 (is-Nil!69997 (t!384170 s1!1971)))))

(assert (=> d!2246755 (= (size!41568 (t!384170 s1!1971)) lt!2574296)))

(declare-fun b!7233677 () Bool)

(assert (=> b!7233677 (= e!4336572 0)))

(declare-fun b!7233678 () Bool)

(assert (=> b!7233678 (= e!4336572 (+ 1 (size!41568 (t!384170 (t!384170 s1!1971)))))))

(assert (= (and d!2246755 c!1342318) b!7233677))

(assert (= (and d!2246755 (not c!1342318)) b!7233678))

(declare-fun m!7903438 () Bool)

(assert (=> b!7233678 m!7903438))

(assert (=> b!7233281 d!2246755))

(declare-fun d!2246757 () Bool)

(declare-fun lt!2574297 () Int)

(assert (=> d!2246757 (>= lt!2574297 0)))

(declare-fun e!4336573 () Int)

(assert (=> d!2246757 (= lt!2574297 e!4336573)))

(declare-fun c!1342319 () Bool)

(assert (=> d!2246757 (= c!1342319 (is-Nil!69997 s2!1849))))

(assert (=> d!2246757 (= (size!41568 s2!1849) lt!2574297)))

(declare-fun b!7233679 () Bool)

(assert (=> b!7233679 (= e!4336573 0)))

(declare-fun b!7233680 () Bool)

(assert (=> b!7233680 (= e!4336573 (+ 1 (size!41568 (t!384170 s2!1849))))))

(assert (= (and d!2246757 c!1342319) b!7233679))

(assert (= (and d!2246757 (not c!1342319)) b!7233680))

(declare-fun m!7903440 () Bool)

(assert (=> b!7233680 m!7903440))

(assert (=> b!7233281 d!2246757))

(declare-fun b!7233681 () Bool)

(declare-fun e!4336575 () List!70121)

(assert (=> b!7233681 (= e!4336575 s2!1849)))

(declare-fun b!7233683 () Bool)

(declare-fun res!2934719 () Bool)

(declare-fun e!4336574 () Bool)

(assert (=> b!7233683 (=> (not res!2934719) (not e!4336574))))

(declare-fun lt!2574298 () List!70121)

(assert (=> b!7233683 (= res!2934719 (= (size!41568 lt!2574298) (+ (size!41568 (t!384170 (t!384170 s1!1971))) (size!41568 s2!1849))))))

(declare-fun b!7233684 () Bool)

(assert (=> b!7233684 (= e!4336574 (or (not (= s2!1849 Nil!69997)) (= lt!2574298 (t!384170 (t!384170 s1!1971)))))))

(declare-fun d!2246759 () Bool)

(assert (=> d!2246759 e!4336574))

(declare-fun res!2934720 () Bool)

(assert (=> d!2246759 (=> (not res!2934720) (not e!4336574))))

(assert (=> d!2246759 (= res!2934720 (= (content!14402 lt!2574298) (set.union (content!14402 (t!384170 (t!384170 s1!1971))) (content!14402 s2!1849))))))

(assert (=> d!2246759 (= lt!2574298 e!4336575)))

(declare-fun c!1342320 () Bool)

(assert (=> d!2246759 (= c!1342320 (is-Nil!69997 (t!384170 (t!384170 s1!1971))))))

(assert (=> d!2246759 (= (++!16309 (t!384170 (t!384170 s1!1971)) s2!1849) lt!2574298)))

(declare-fun b!7233682 () Bool)

(assert (=> b!7233682 (= e!4336575 (Cons!69997 (h!76445 (t!384170 (t!384170 s1!1971))) (++!16309 (t!384170 (t!384170 (t!384170 s1!1971))) s2!1849)))))

(assert (= (and d!2246759 c!1342320) b!7233681))

(assert (= (and d!2246759 (not c!1342320)) b!7233682))

(assert (= (and d!2246759 res!2934720) b!7233683))

(assert (= (and b!7233683 res!2934719) b!7233684))

(declare-fun m!7903442 () Bool)

(assert (=> b!7233683 m!7903442))

(assert (=> b!7233683 m!7903438))

(assert (=> b!7233683 m!7902938))

(declare-fun m!7903444 () Bool)

(assert (=> d!2246759 m!7903444))

(declare-fun m!7903446 () Bool)

(assert (=> d!2246759 m!7903446))

(assert (=> d!2246759 m!7902944))

(declare-fun m!7903448 () Bool)

(assert (=> b!7233682 m!7903448))

(assert (=> b!7233280 d!2246759))

(declare-fun bm!658489 () Bool)

(declare-fun c!1342322 () Bool)

(declare-fun call!658494 () Bool)

(assert (=> bm!658489 (= call!658494 (validRegex!9514 (ite c!1342322 (regTwo!37521 (ite c!1342205 (reg!18833 (h!76444 (exprs!7944 ct1!232))) (ite c!1342206 (regOne!37521 (h!76444 (exprs!7944 ct1!232))) (regOne!37520 (h!76444 (exprs!7944 ct1!232)))))) (regTwo!37520 (ite c!1342205 (reg!18833 (h!76444 (exprs!7944 ct1!232))) (ite c!1342206 (regOne!37521 (h!76444 (exprs!7944 ct1!232))) (regOne!37520 (h!76444 (exprs!7944 ct1!232)))))))))))

(declare-fun d!2246761 () Bool)

(declare-fun res!2934725 () Bool)

(declare-fun e!4336576 () Bool)

(assert (=> d!2246761 (=> res!2934725 e!4336576)))

(assert (=> d!2246761 (= res!2934725 (is-ElementMatch!18504 (ite c!1342205 (reg!18833 (h!76444 (exprs!7944 ct1!232))) (ite c!1342206 (regOne!37521 (h!76444 (exprs!7944 ct1!232))) (regOne!37520 (h!76444 (exprs!7944 ct1!232)))))))))

(assert (=> d!2246761 (= (validRegex!9514 (ite c!1342205 (reg!18833 (h!76444 (exprs!7944 ct1!232))) (ite c!1342206 (regOne!37521 (h!76444 (exprs!7944 ct1!232))) (regOne!37520 (h!76444 (exprs!7944 ct1!232)))))) e!4336576)))

(declare-fun b!7233685 () Bool)

(declare-fun e!4336580 () Bool)

(assert (=> b!7233685 (= e!4336580 call!658494)))

(declare-fun b!7233686 () Bool)

(declare-fun e!4336582 () Bool)

(assert (=> b!7233686 (= e!4336582 call!658494)))

(declare-fun b!7233687 () Bool)

(declare-fun res!2934723 () Bool)

(assert (=> b!7233687 (=> (not res!2934723) (not e!4336580))))

(declare-fun call!658495 () Bool)

(assert (=> b!7233687 (= res!2934723 call!658495)))

(declare-fun e!4336581 () Bool)

(assert (=> b!7233687 (= e!4336581 e!4336580)))

(declare-fun b!7233688 () Bool)

(declare-fun e!4336577 () Bool)

(assert (=> b!7233688 (= e!4336576 e!4336577)))

(declare-fun c!1342321 () Bool)

(assert (=> b!7233688 (= c!1342321 (is-Star!18504 (ite c!1342205 (reg!18833 (h!76444 (exprs!7944 ct1!232))) (ite c!1342206 (regOne!37521 (h!76444 (exprs!7944 ct1!232))) (regOne!37520 (h!76444 (exprs!7944 ct1!232)))))))))

(declare-fun b!7233689 () Bool)

(declare-fun res!2934722 () Bool)

(declare-fun e!4336579 () Bool)

(assert (=> b!7233689 (=> res!2934722 e!4336579)))

(assert (=> b!7233689 (= res!2934722 (not (is-Concat!27349 (ite c!1342205 (reg!18833 (h!76444 (exprs!7944 ct1!232))) (ite c!1342206 (regOne!37521 (h!76444 (exprs!7944 ct1!232))) (regOne!37520 (h!76444 (exprs!7944 ct1!232))))))))))

(assert (=> b!7233689 (= e!4336581 e!4336579)))

(declare-fun b!7233690 () Bool)

(assert (=> b!7233690 (= e!4336579 e!4336582)))

(declare-fun res!2934724 () Bool)

(assert (=> b!7233690 (=> (not res!2934724) (not e!4336582))))

(assert (=> b!7233690 (= res!2934724 call!658495)))

(declare-fun b!7233691 () Bool)

(declare-fun e!4336578 () Bool)

(declare-fun call!658496 () Bool)

(assert (=> b!7233691 (= e!4336578 call!658496)))

(declare-fun b!7233692 () Bool)

(assert (=> b!7233692 (= e!4336577 e!4336578)))

(declare-fun res!2934721 () Bool)

(assert (=> b!7233692 (= res!2934721 (not (nullable!7821 (reg!18833 (ite c!1342205 (reg!18833 (h!76444 (exprs!7944 ct1!232))) (ite c!1342206 (regOne!37521 (h!76444 (exprs!7944 ct1!232))) (regOne!37520 (h!76444 (exprs!7944 ct1!232)))))))))))

(assert (=> b!7233692 (=> (not res!2934721) (not e!4336578))))

(declare-fun bm!658490 () Bool)

(assert (=> bm!658490 (= call!658495 call!658496)))

(declare-fun bm!658491 () Bool)

(assert (=> bm!658491 (= call!658496 (validRegex!9514 (ite c!1342321 (reg!18833 (ite c!1342205 (reg!18833 (h!76444 (exprs!7944 ct1!232))) (ite c!1342206 (regOne!37521 (h!76444 (exprs!7944 ct1!232))) (regOne!37520 (h!76444 (exprs!7944 ct1!232)))))) (ite c!1342322 (regOne!37521 (ite c!1342205 (reg!18833 (h!76444 (exprs!7944 ct1!232))) (ite c!1342206 (regOne!37521 (h!76444 (exprs!7944 ct1!232))) (regOne!37520 (h!76444 (exprs!7944 ct1!232)))))) (regOne!37520 (ite c!1342205 (reg!18833 (h!76444 (exprs!7944 ct1!232))) (ite c!1342206 (regOne!37521 (h!76444 (exprs!7944 ct1!232))) (regOne!37520 (h!76444 (exprs!7944 ct1!232))))))))))))

(declare-fun b!7233693 () Bool)

(assert (=> b!7233693 (= e!4336577 e!4336581)))

(assert (=> b!7233693 (= c!1342322 (is-Union!18504 (ite c!1342205 (reg!18833 (h!76444 (exprs!7944 ct1!232))) (ite c!1342206 (regOne!37521 (h!76444 (exprs!7944 ct1!232))) (regOne!37520 (h!76444 (exprs!7944 ct1!232)))))))))

(assert (= (and d!2246761 (not res!2934725)) b!7233688))

(assert (= (and b!7233688 c!1342321) b!7233692))

(assert (= (and b!7233688 (not c!1342321)) b!7233693))

(assert (= (and b!7233692 res!2934721) b!7233691))

(assert (= (and b!7233693 c!1342322) b!7233687))

(assert (= (and b!7233693 (not c!1342322)) b!7233689))

(assert (= (and b!7233687 res!2934723) b!7233685))

(assert (= (and b!7233689 (not res!2934722)) b!7233690))

(assert (= (and b!7233690 res!2934724) b!7233686))

(assert (= (or b!7233687 b!7233690) bm!658490))

(assert (= (or b!7233685 b!7233686) bm!658489))

(assert (= (or b!7233691 bm!658490) bm!658491))

(declare-fun m!7903450 () Bool)

(assert (=> bm!658489 m!7903450))

(declare-fun m!7903452 () Bool)

(assert (=> b!7233692 m!7903452))

(declare-fun m!7903454 () Bool)

(assert (=> bm!658491 m!7903454))

(assert (=> bm!658415 d!2246761))

(declare-fun d!2246763 () Bool)

(declare-fun c!1342323 () Bool)

(assert (=> d!2246763 (= c!1342323 (isEmpty!40345 (tail!14131 s2!1849)))))

(declare-fun e!4336583 () Bool)

(assert (=> d!2246763 (= (matchZipper!3414 (derivationStepZipper!3296 (set.insert ct2!328 (as set.empty (Set Context!14888))) (head!14806 s2!1849)) (tail!14131 s2!1849)) e!4336583)))

(declare-fun b!7233694 () Bool)

(assert (=> b!7233694 (= e!4336583 (nullableZipper!2818 (derivationStepZipper!3296 (set.insert ct2!328 (as set.empty (Set Context!14888))) (head!14806 s2!1849))))))

(declare-fun b!7233695 () Bool)

(assert (=> b!7233695 (= e!4336583 (matchZipper!3414 (derivationStepZipper!3296 (derivationStepZipper!3296 (set.insert ct2!328 (as set.empty (Set Context!14888))) (head!14806 s2!1849)) (head!14806 (tail!14131 s2!1849))) (tail!14131 (tail!14131 s2!1849))))))

(assert (= (and d!2246763 c!1342323) b!7233694))

(assert (= (and d!2246763 (not c!1342323)) b!7233695))

(assert (=> d!2246763 m!7903026))

(declare-fun m!7903456 () Bool)

(assert (=> d!2246763 m!7903456))

(assert (=> b!7233694 m!7903022))

(declare-fun m!7903458 () Bool)

(assert (=> b!7233694 m!7903458))

(assert (=> b!7233695 m!7903026))

(declare-fun m!7903460 () Bool)

(assert (=> b!7233695 m!7903460))

(assert (=> b!7233695 m!7903022))

(assert (=> b!7233695 m!7903460))

(declare-fun m!7903462 () Bool)

(assert (=> b!7233695 m!7903462))

(assert (=> b!7233695 m!7903026))

(declare-fun m!7903464 () Bool)

(assert (=> b!7233695 m!7903464))

(assert (=> b!7233695 m!7903462))

(assert (=> b!7233695 m!7903464))

(declare-fun m!7903466 () Bool)

(assert (=> b!7233695 m!7903466))

(assert (=> b!7233322 d!2246763))

(declare-fun bs!1902992 () Bool)

(declare-fun d!2246765 () Bool)

(assert (= bs!1902992 (and d!2246765 d!2246609)))

(declare-fun lambda!439770 () Int)

(assert (=> bs!1902992 (= (= (head!14806 s2!1849) (h!76445 s1!1971)) (= lambda!439770 lambda!439744))))

(declare-fun bs!1902993 () Bool)

(assert (= bs!1902993 (and d!2246765 d!2246661)))

(assert (=> bs!1902993 (= (= (head!14806 s2!1849) (head!14806 (t!384170 s1!1971))) (= lambda!439770 lambda!439761))))

(declare-fun bs!1902994 () Bool)

(assert (= bs!1902994 (and d!2246765 d!2246721)))

(assert (=> bs!1902994 (= (= (head!14806 s2!1849) (head!14806 (++!16309 (t!384170 s1!1971) s2!1849))) (= lambda!439770 lambda!439767))))

(declare-fun bs!1902995 () Bool)

(assert (= bs!1902995 (and d!2246765 d!2246733)))

(assert (=> bs!1902995 (= (= (head!14806 s2!1849) (head!14806 s1!1971)) (= lambda!439770 lambda!439768))))

(assert (=> d!2246765 true))

(assert (=> d!2246765 (= (derivationStepZipper!3296 (set.insert ct2!328 (as set.empty (Set Context!14888))) (head!14806 s2!1849)) (flatMap!2710 (set.insert ct2!328 (as set.empty (Set Context!14888))) lambda!439770))))

(declare-fun bs!1902996 () Bool)

(assert (= bs!1902996 d!2246765))

(assert (=> bs!1902996 m!7902820))

(declare-fun m!7903468 () Bool)

(assert (=> bs!1902996 m!7903468))

(assert (=> b!7233322 d!2246765))

(declare-fun d!2246767 () Bool)

(assert (=> d!2246767 (= (head!14806 s2!1849) (h!76445 s2!1849))))

(assert (=> b!7233322 d!2246767))

(declare-fun d!2246769 () Bool)

(assert (=> d!2246769 (= (tail!14131 s2!1849) (t!384170 s2!1849))))

(assert (=> b!7233322 d!2246769))

(declare-fun b!7233696 () Bool)

(declare-fun e!4336586 () (Set Context!14888))

(assert (=> b!7233696 (= e!4336586 (as set.empty (Set Context!14888)))))

(declare-fun b!7233697 () Bool)

(declare-fun call!658499 () (Set Context!14888))

(assert (=> b!7233697 (= e!4336586 call!658499)))

(declare-fun d!2246771 () Bool)

(declare-fun c!1342325 () Bool)

(assert (=> d!2246771 (= c!1342325 (and (is-ElementMatch!18504 (ite c!1342225 (regTwo!37521 (h!76444 (exprs!7944 ct1!232))) (regOne!37520 (h!76444 (exprs!7944 ct1!232))))) (= (c!1342172 (ite c!1342225 (regTwo!37521 (h!76444 (exprs!7944 ct1!232))) (regOne!37520 (h!76444 (exprs!7944 ct1!232))))) (h!76445 s1!1971))))))

(declare-fun e!4336585 () (Set Context!14888))

(assert (=> d!2246771 (= (derivationStepZipperDown!2548 (ite c!1342225 (regTwo!37521 (h!76444 (exprs!7944 ct1!232))) (regOne!37520 (h!76444 (exprs!7944 ct1!232)))) (ite c!1342225 (Context!14889 (tail!14129 (exprs!7944 ct1!232))) (Context!14889 call!658435)) (h!76445 s1!1971)) e!4336585)))

(declare-fun bm!658492 () Bool)

(declare-fun call!658502 () (Set Context!14888))

(declare-fun call!658497 () (Set Context!14888))

(assert (=> bm!658492 (= call!658502 call!658497)))

(declare-fun bm!658493 () Bool)

(assert (=> bm!658493 (= call!658499 call!658502)))

(declare-fun b!7233698 () Bool)

(declare-fun e!4336588 () (Set Context!14888))

(assert (=> b!7233698 (= e!4336588 call!658499)))

(declare-fun b!7233699 () Bool)

(declare-fun e!4336587 () (Set Context!14888))

(assert (=> b!7233699 (= e!4336585 e!4336587)))

(declare-fun c!1342326 () Bool)

(assert (=> b!7233699 (= c!1342326 (is-Union!18504 (ite c!1342225 (regTwo!37521 (h!76444 (exprs!7944 ct1!232))) (regOne!37520 (h!76444 (exprs!7944 ct1!232))))))))

(declare-fun bm!658494 () Bool)

(declare-fun call!658501 () List!70120)

(declare-fun call!658498 () List!70120)

(assert (=> bm!658494 (= call!658501 call!658498)))

(declare-fun c!1342324 () Bool)

(declare-fun bm!658495 () Bool)

(declare-fun c!1342328 () Bool)

(assert (=> bm!658495 (= call!658498 ($colon$colon!2865 (exprs!7944 (ite c!1342225 (Context!14889 (tail!14129 (exprs!7944 ct1!232))) (Context!14889 call!658435))) (ite (or c!1342328 c!1342324) (regTwo!37520 (ite c!1342225 (regTwo!37521 (h!76444 (exprs!7944 ct1!232))) (regOne!37520 (h!76444 (exprs!7944 ct1!232))))) (ite c!1342225 (regTwo!37521 (h!76444 (exprs!7944 ct1!232))) (regOne!37520 (h!76444 (exprs!7944 ct1!232)))))))))

(declare-fun b!7233700 () Bool)

(assert (=> b!7233700 (= e!4336585 (set.insert (ite c!1342225 (Context!14889 (tail!14129 (exprs!7944 ct1!232))) (Context!14889 call!658435)) (as set.empty (Set Context!14888))))))

(declare-fun b!7233701 () Bool)

(declare-fun call!658500 () (Set Context!14888))

(assert (=> b!7233701 (= e!4336587 (set.union call!658497 call!658500))))

(declare-fun b!7233702 () Bool)

(declare-fun e!4336589 () Bool)

(assert (=> b!7233702 (= e!4336589 (nullable!7821 (regOne!37520 (ite c!1342225 (regTwo!37521 (h!76444 (exprs!7944 ct1!232))) (regOne!37520 (h!76444 (exprs!7944 ct1!232)))))))))

(declare-fun bm!658496 () Bool)

(assert (=> bm!658496 (= call!658497 (derivationStepZipperDown!2548 (ite c!1342326 (regOne!37521 (ite c!1342225 (regTwo!37521 (h!76444 (exprs!7944 ct1!232))) (regOne!37520 (h!76444 (exprs!7944 ct1!232))))) (ite c!1342328 (regTwo!37520 (ite c!1342225 (regTwo!37521 (h!76444 (exprs!7944 ct1!232))) (regOne!37520 (h!76444 (exprs!7944 ct1!232))))) (ite c!1342324 (regOne!37520 (ite c!1342225 (regTwo!37521 (h!76444 (exprs!7944 ct1!232))) (regOne!37520 (h!76444 (exprs!7944 ct1!232))))) (reg!18833 (ite c!1342225 (regTwo!37521 (h!76444 (exprs!7944 ct1!232))) (regOne!37520 (h!76444 (exprs!7944 ct1!232)))))))) (ite (or c!1342326 c!1342328) (ite c!1342225 (Context!14889 (tail!14129 (exprs!7944 ct1!232))) (Context!14889 call!658435)) (Context!14889 call!658501)) (h!76445 s1!1971)))))

(declare-fun b!7233703 () Bool)

(declare-fun e!4336584 () (Set Context!14888))

(assert (=> b!7233703 (= e!4336584 e!4336588)))

(assert (=> b!7233703 (= c!1342324 (is-Concat!27349 (ite c!1342225 (regTwo!37521 (h!76444 (exprs!7944 ct1!232))) (regOne!37520 (h!76444 (exprs!7944 ct1!232))))))))

(declare-fun b!7233704 () Bool)

(assert (=> b!7233704 (= e!4336584 (set.union call!658500 call!658502))))

(declare-fun b!7233705 () Bool)

(declare-fun c!1342327 () Bool)

(assert (=> b!7233705 (= c!1342327 (is-Star!18504 (ite c!1342225 (regTwo!37521 (h!76444 (exprs!7944 ct1!232))) (regOne!37520 (h!76444 (exprs!7944 ct1!232))))))))

(assert (=> b!7233705 (= e!4336588 e!4336586)))

(declare-fun b!7233706 () Bool)

(assert (=> b!7233706 (= c!1342328 e!4336589)))

(declare-fun res!2934726 () Bool)

(assert (=> b!7233706 (=> (not res!2934726) (not e!4336589))))

(assert (=> b!7233706 (= res!2934726 (is-Concat!27349 (ite c!1342225 (regTwo!37521 (h!76444 (exprs!7944 ct1!232))) (regOne!37520 (h!76444 (exprs!7944 ct1!232))))))))

(assert (=> b!7233706 (= e!4336587 e!4336584)))

(declare-fun bm!658497 () Bool)

(assert (=> bm!658497 (= call!658500 (derivationStepZipperDown!2548 (ite c!1342326 (regTwo!37521 (ite c!1342225 (regTwo!37521 (h!76444 (exprs!7944 ct1!232))) (regOne!37520 (h!76444 (exprs!7944 ct1!232))))) (regOne!37520 (ite c!1342225 (regTwo!37521 (h!76444 (exprs!7944 ct1!232))) (regOne!37520 (h!76444 (exprs!7944 ct1!232)))))) (ite c!1342326 (ite c!1342225 (Context!14889 (tail!14129 (exprs!7944 ct1!232))) (Context!14889 call!658435)) (Context!14889 call!658498)) (h!76445 s1!1971)))))

(assert (= (and d!2246771 c!1342325) b!7233700))

(assert (= (and d!2246771 (not c!1342325)) b!7233699))

(assert (= (and b!7233699 c!1342326) b!7233701))

(assert (= (and b!7233699 (not c!1342326)) b!7233706))

(assert (= (and b!7233706 res!2934726) b!7233702))

(assert (= (and b!7233706 c!1342328) b!7233704))

(assert (= (and b!7233706 (not c!1342328)) b!7233703))

(assert (= (and b!7233703 c!1342324) b!7233698))

(assert (= (and b!7233703 (not c!1342324)) b!7233705))

(assert (= (and b!7233705 c!1342327) b!7233697))

(assert (= (and b!7233705 (not c!1342327)) b!7233696))

(assert (= (or b!7233698 b!7233697) bm!658494))

(assert (= (or b!7233698 b!7233697) bm!658493))

(assert (= (or b!7233704 bm!658494) bm!658495))

(assert (= (or b!7233704 bm!658493) bm!658492))

(assert (= (or b!7233701 b!7233704) bm!658497))

(assert (= (or b!7233701 bm!658492) bm!658496))

(declare-fun m!7903470 () Bool)

(assert (=> b!7233702 m!7903470))

(declare-fun m!7903472 () Bool)

(assert (=> bm!658497 m!7903472))

(declare-fun m!7903474 () Bool)

(assert (=> b!7233700 m!7903474))

(declare-fun m!7903476 () Bool)

(assert (=> bm!658496 m!7903476))

(declare-fun m!7903478 () Bool)

(assert (=> bm!658495 m!7903478))

(assert (=> bm!658434 d!2246771))

(declare-fun bs!1902997 () Bool)

(declare-fun d!2246773 () Bool)

(assert (= bs!1902997 (and d!2246773 d!2246681)))

(declare-fun lambda!439771 () Int)

(assert (=> bs!1902997 (= lambda!439771 lambda!439762)))

(declare-fun bs!1902998 () Bool)

(assert (= bs!1902998 (and d!2246773 d!2246687)))

(assert (=> bs!1902998 (not (= lambda!439771 lambda!439766))))

(declare-fun bs!1902999 () Bool)

(assert (= bs!1902999 (and d!2246773 d!2246685)))

(assert (=> bs!1902999 (not (= lambda!439771 lambda!439763))))

(declare-fun bs!1903000 () Bool)

(assert (= bs!1903000 (and d!2246773 d!2246569)))

(assert (=> bs!1903000 (not (= lambda!439771 lambda!439734))))

(declare-fun bs!1903001 () Bool)

(assert (= bs!1903001 (and d!2246773 d!2246741)))

(assert (=> bs!1903001 (= lambda!439771 lambda!439769)))

(declare-fun bs!1903002 () Bool)

(assert (= bs!1903002 (and d!2246773 d!2246653)))

(assert (=> bs!1903002 (= lambda!439771 lambda!439760)))

(declare-fun bs!1903003 () Bool)

(assert (= bs!1903003 (and d!2246773 d!2246573)))

(assert (=> bs!1903003 (not (= lambda!439771 lambda!439737))))

(declare-fun bs!1903004 () Bool)

(assert (= bs!1903004 (and d!2246773 b!7233224)))

(assert (=> bs!1903004 (not (= lambda!439771 lambda!439707))))

(assert (=> d!2246773 (= (nullableZipper!2818 (set.insert ct2!328 (as set.empty (Set Context!14888)))) (exists!4151 (set.insert ct2!328 (as set.empty (Set Context!14888))) lambda!439771))))

(declare-fun bs!1903005 () Bool)

(assert (= bs!1903005 d!2246773))

(assert (=> bs!1903005 m!7902820))

(declare-fun m!7903480 () Bool)

(assert (=> bs!1903005 m!7903480))

(assert (=> b!7233321 d!2246773))

(declare-fun d!2246775 () Bool)

(assert (=> d!2246775 (= (nullable!7821 (reg!18833 (h!76444 (exprs!7944 ct1!232)))) (nullableFct!3062 (reg!18833 (h!76444 (exprs!7944 ct1!232)))))))

(declare-fun bs!1903006 () Bool)

(assert (= bs!1903006 d!2246775))

(declare-fun m!7903482 () Bool)

(assert (=> bs!1903006 m!7903482))

(assert (=> b!7233350 d!2246775))

(declare-fun bs!1903007 () Bool)

(declare-fun d!2246777 () Bool)

(assert (= bs!1903007 (and d!2246777 d!2246681)))

(declare-fun lambda!439772 () Int)

(assert (=> bs!1903007 (not (= lambda!439772 lambda!439762))))

(declare-fun bs!1903008 () Bool)

(assert (= bs!1903008 (and d!2246777 d!2246687)))

(assert (=> bs!1903008 (not (= lambda!439772 lambda!439766))))

(declare-fun bs!1903009 () Bool)

(assert (= bs!1903009 (and d!2246777 d!2246685)))

(assert (=> bs!1903009 (= (= lambda!439707 lambda!439737) (= lambda!439772 lambda!439763))))

(declare-fun bs!1903010 () Bool)

(assert (= bs!1903010 (and d!2246777 d!2246569)))

(assert (=> bs!1903010 (= lambda!439772 lambda!439734)))

(declare-fun bs!1903011 () Bool)

(assert (= bs!1903011 (and d!2246777 d!2246741)))

(assert (=> bs!1903011 (not (= lambda!439772 lambda!439769))))

(declare-fun bs!1903012 () Bool)

(assert (= bs!1903012 (and d!2246777 d!2246653)))

(assert (=> bs!1903012 (not (= lambda!439772 lambda!439760))))

(declare-fun bs!1903013 () Bool)

(assert (= bs!1903013 (and d!2246777 d!2246773)))

(assert (=> bs!1903013 (not (= lambda!439772 lambda!439771))))

(declare-fun bs!1903014 () Bool)

(assert (= bs!1903014 (and d!2246777 d!2246573)))

(assert (=> bs!1903014 (not (= lambda!439772 lambda!439737))))

(declare-fun bs!1903015 () Bool)

(assert (= bs!1903015 (and d!2246777 b!7233224)))

(assert (=> bs!1903015 (not (= lambda!439772 lambda!439707))))

(assert (=> d!2246777 true))

(assert (=> d!2246777 (< (dynLambda!28538 order!28835 lambda!439707) (dynLambda!28538 order!28835 lambda!439772))))

(assert (=> d!2246777 (= (exists!4152 (toList!11361 lt!2574169) lambda!439707) (not (forall!17336 (toList!11361 lt!2574169) lambda!439772)))))

(declare-fun bs!1903016 () Bool)

(assert (= bs!1903016 d!2246777))

(assert (=> bs!1903016 m!7902848))

(declare-fun m!7903484 () Bool)

(assert (=> bs!1903016 m!7903484))

(assert (=> d!2246567 d!2246777))

(assert (=> d!2246567 d!2246577))

(declare-fun d!2246779 () Bool)

(declare-fun res!2934729 () Bool)

(assert (=> d!2246779 (= res!2934729 (exists!4152 (toList!11361 lt!2574169) lambda!439707))))

(assert (=> d!2246779 true))

(assert (=> d!2246779 (= (choose!55560 lt!2574169 lambda!439707) res!2934729)))

(declare-fun bs!1903017 () Bool)

(assert (= bs!1903017 d!2246779))

(assert (=> bs!1903017 m!7902848))

(assert (=> bs!1903017 m!7902848))

(assert (=> bs!1903017 m!7902982))

(assert (=> d!2246567 d!2246779))

(declare-fun d!2246781 () Bool)

(declare-fun c!1342331 () Bool)

(assert (=> d!2246781 (= c!1342331 (is-Nil!69996 lt!2574234))))

(declare-fun e!4336592 () (Set Regex!18504))

(assert (=> d!2246781 (= (content!14403 lt!2574234) e!4336592)))

(declare-fun b!7233711 () Bool)

(assert (=> b!7233711 (= e!4336592 (as set.empty (Set Regex!18504)))))

(declare-fun b!7233712 () Bool)

(assert (=> b!7233712 (= e!4336592 (set.union (set.insert (h!76444 lt!2574234) (as set.empty (Set Regex!18504))) (content!14403 (t!384169 lt!2574234))))))

(assert (= (and d!2246781 c!1342331) b!7233711))

(assert (= (and d!2246781 (not c!1342331)) b!7233712))

(declare-fun m!7903486 () Bool)

(assert (=> b!7233712 m!7903486))

(declare-fun m!7903488 () Bool)

(assert (=> b!7233712 m!7903488))

(assert (=> d!2246557 d!2246781))

(declare-fun d!2246783 () Bool)

(declare-fun c!1342332 () Bool)

(assert (=> d!2246783 (= c!1342332 (is-Nil!69996 (exprs!7944 lt!2574180)))))

(declare-fun e!4336593 () (Set Regex!18504))

(assert (=> d!2246783 (= (content!14403 (exprs!7944 lt!2574180)) e!4336593)))

(declare-fun b!7233713 () Bool)

(assert (=> b!7233713 (= e!4336593 (as set.empty (Set Regex!18504)))))

(declare-fun b!7233714 () Bool)

(assert (=> b!7233714 (= e!4336593 (set.union (set.insert (h!76444 (exprs!7944 lt!2574180)) (as set.empty (Set Regex!18504))) (content!14403 (t!384169 (exprs!7944 lt!2574180)))))))

(assert (= (and d!2246783 c!1342332) b!7233713))

(assert (= (and d!2246783 (not c!1342332)) b!7233714))

(declare-fun m!7903490 () Bool)

(assert (=> b!7233714 m!7903490))

(assert (=> b!7233714 m!7903276))

(assert (=> d!2246557 d!2246783))

(declare-fun d!2246785 () Bool)

(declare-fun c!1342333 () Bool)

(assert (=> d!2246785 (= c!1342333 (is-Nil!69996 (exprs!7944 ct2!328)))))

(declare-fun e!4336594 () (Set Regex!18504))

(assert (=> d!2246785 (= (content!14403 (exprs!7944 ct2!328)) e!4336594)))

(declare-fun b!7233715 () Bool)

(assert (=> b!7233715 (= e!4336594 (as set.empty (Set Regex!18504)))))

(declare-fun b!7233716 () Bool)

(assert (=> b!7233716 (= e!4336594 (set.union (set.insert (h!76444 (exprs!7944 ct2!328)) (as set.empty (Set Regex!18504))) (content!14403 (t!384169 (exprs!7944 ct2!328)))))))

(assert (= (and d!2246785 c!1342333) b!7233715))

(assert (= (and d!2246785 (not c!1342333)) b!7233716))

(declare-fun m!7903492 () Bool)

(assert (=> b!7233716 m!7903492))

(declare-fun m!7903494 () Bool)

(assert (=> b!7233716 m!7903494))

(assert (=> d!2246557 d!2246785))

(declare-fun d!2246787 () Bool)

(declare-fun res!2934730 () Bool)

(declare-fun e!4336595 () Bool)

(assert (=> d!2246787 (=> res!2934730 e!4336595)))

(assert (=> d!2246787 (= res!2934730 (is-Nil!69996 (++!16308 (exprs!7944 ct1!232) (exprs!7944 ct2!328))))))

(assert (=> d!2246787 (= (forall!17335 (++!16308 (exprs!7944 ct1!232) (exprs!7944 ct2!328)) lambda!439706) e!4336595)))

(declare-fun b!7233717 () Bool)

(declare-fun e!4336596 () Bool)

(assert (=> b!7233717 (= e!4336595 e!4336596)))

(declare-fun res!2934731 () Bool)

(assert (=> b!7233717 (=> (not res!2934731) (not e!4336596))))

(assert (=> b!7233717 (= res!2934731 (dynLambda!28541 lambda!439706 (h!76444 (++!16308 (exprs!7944 ct1!232) (exprs!7944 ct2!328)))))))

(declare-fun b!7233718 () Bool)

(assert (=> b!7233718 (= e!4336596 (forall!17335 (t!384169 (++!16308 (exprs!7944 ct1!232) (exprs!7944 ct2!328))) lambda!439706))))

(assert (= (and d!2246787 (not res!2934730)) b!7233717))

(assert (= (and b!7233717 res!2934731) b!7233718))

(declare-fun b_lambda!277249 () Bool)

(assert (=> (not b_lambda!277249) (not b!7233717)))

(declare-fun m!7903496 () Bool)

(assert (=> b!7233717 m!7903496))

(declare-fun m!7903498 () Bool)

(assert (=> b!7233718 m!7903498))

(assert (=> d!2246603 d!2246787))

(assert (=> d!2246603 d!2246605))

(declare-fun d!2246789 () Bool)

(assert (=> d!2246789 (forall!17335 (++!16308 (exprs!7944 ct1!232) (exprs!7944 ct2!328)) lambda!439706)))

(assert (=> d!2246789 true))

(declare-fun _$78!728 () Unit!163545)

(assert (=> d!2246789 (= (choose!55558 (exprs!7944 ct1!232) (exprs!7944 ct2!328) lambda!439706) _$78!728)))

(declare-fun bs!1903018 () Bool)

(assert (= bs!1903018 d!2246789))

(assert (=> bs!1903018 m!7902814))

(assert (=> bs!1903018 m!7902814))

(assert (=> bs!1903018 m!7903092))

(assert (=> d!2246603 d!2246789))

(declare-fun d!2246791 () Bool)

(declare-fun res!2934732 () Bool)

(declare-fun e!4336597 () Bool)

(assert (=> d!2246791 (=> res!2934732 e!4336597)))

(assert (=> d!2246791 (= res!2934732 (is-Nil!69996 (exprs!7944 ct1!232)))))

(assert (=> d!2246791 (= (forall!17335 (exprs!7944 ct1!232) lambda!439706) e!4336597)))

(declare-fun b!7233719 () Bool)

(declare-fun e!4336598 () Bool)

(assert (=> b!7233719 (= e!4336597 e!4336598)))

(declare-fun res!2934733 () Bool)

(assert (=> b!7233719 (=> (not res!2934733) (not e!4336598))))

(assert (=> b!7233719 (= res!2934733 (dynLambda!28541 lambda!439706 (h!76444 (exprs!7944 ct1!232))))))

(declare-fun b!7233720 () Bool)

(assert (=> b!7233720 (= e!4336598 (forall!17335 (t!384169 (exprs!7944 ct1!232)) lambda!439706))))

(assert (= (and d!2246791 (not res!2934732)) b!7233719))

(assert (= (and b!7233719 res!2934733) b!7233720))

(declare-fun b_lambda!277251 () Bool)

(assert (=> (not b_lambda!277251) (not b!7233719)))

(declare-fun m!7903500 () Bool)

(assert (=> b!7233719 m!7903500))

(declare-fun m!7903502 () Bool)

(assert (=> b!7233720 m!7903502))

(assert (=> d!2246603 d!2246791))

(declare-fun d!2246793 () Bool)

(declare-fun c!1342334 () Bool)

(assert (=> d!2246793 (= c!1342334 (isEmpty!40345 (t!384170 s1!1971)))))

(declare-fun e!4336599 () Bool)

(assert (=> d!2246793 (= (matchZipper!3414 (set.insert lt!2574180 (as set.empty (Set Context!14888))) (t!384170 s1!1971)) e!4336599)))

(declare-fun b!7233721 () Bool)

(assert (=> b!7233721 (= e!4336599 (nullableZipper!2818 (set.insert lt!2574180 (as set.empty (Set Context!14888)))))))

(declare-fun b!7233722 () Bool)

(assert (=> b!7233722 (= e!4336599 (matchZipper!3414 (derivationStepZipper!3296 (set.insert lt!2574180 (as set.empty (Set Context!14888))) (head!14806 (t!384170 s1!1971))) (tail!14131 (t!384170 s1!1971))))))

(assert (= (and d!2246793 c!1342334) b!7233721))

(assert (= (and d!2246793 (not c!1342334)) b!7233722))

(assert (=> d!2246793 m!7903108))

(assert (=> b!7233721 m!7902976))

(declare-fun m!7903504 () Bool)

(assert (=> b!7233721 m!7903504))

(assert (=> b!7233722 m!7903112))

(assert (=> b!7233722 m!7902976))

(assert (=> b!7233722 m!7903112))

(declare-fun m!7903506 () Bool)

(assert (=> b!7233722 m!7903506))

(assert (=> b!7233722 m!7903116))

(assert (=> b!7233722 m!7903506))

(assert (=> b!7233722 m!7903116))

(declare-fun m!7903508 () Bool)

(assert (=> b!7233722 m!7903508))

(assert (=> d!2246565 d!2246793))

(assert (=> d!2246565 d!2246555))

(assert (=> d!2246565 d!2246557))

(declare-fun bs!1903019 () Bool)

(declare-fun d!2246795 () Bool)

(assert (= bs!1903019 (and d!2246795 b!7233221)))

(declare-fun lambda!439775 () Int)

(assert (=> bs!1903019 (= lambda!439775 lambda!439706)))

(declare-fun bs!1903020 () Bool)

(assert (= bs!1903020 (and d!2246795 d!2246565)))

(assert (=> bs!1903020 (= lambda!439775 lambda!439730)))

(declare-fun bs!1903021 () Bool)

(assert (= bs!1903021 (and d!2246795 d!2246587)))

(assert (=> bs!1903021 (= lambda!439775 lambda!439740)))

(declare-fun bs!1903022 () Bool)

(assert (= bs!1903022 (and d!2246795 d!2246591)))

(assert (=> bs!1903022 (= lambda!439775 lambda!439741)))

(assert (=> d!2246795 (matchZipper!3414 (set.insert (Context!14889 (++!16308 (exprs!7944 lt!2574180) (exprs!7944 ct2!328))) (as set.empty (Set Context!14888))) (++!16309 (t!384170 s1!1971) s2!1849))))

(declare-fun lt!2574301 () Unit!163545)

(assert (=> d!2246795 (= lt!2574301 (lemmaConcatPreservesForall!1313 (exprs!7944 lt!2574180) (exprs!7944 ct2!328) lambda!439775))))

(assert (=> d!2246795 true))

(declare-fun _$56!485 () Unit!163545)

(assert (=> d!2246795 (= (choose!55559 lt!2574180 ct2!328 (t!384170 s1!1971) s2!1849) _$56!485)))

(declare-fun bs!1903023 () Bool)

(assert (= bs!1903023 d!2246795))

(assert (=> bs!1903023 m!7902828))

(assert (=> bs!1903023 m!7902824))

(assert (=> bs!1903023 m!7902828))

(assert (=> bs!1903023 m!7902830))

(assert (=> bs!1903023 m!7902840))

(declare-fun m!7903510 () Bool)

(assert (=> bs!1903023 m!7903510))

(assert (=> bs!1903023 m!7902824))

(assert (=> d!2246565 d!2246795))

(assert (=> d!2246565 d!2246553))

(declare-fun d!2246797 () Bool)

(assert (=> d!2246797 (forall!17335 (++!16308 (exprs!7944 lt!2574180) (exprs!7944 ct2!328)) lambda!439730)))

(declare-fun lt!2574302 () Unit!163545)

(assert (=> d!2246797 (= lt!2574302 (choose!55558 (exprs!7944 lt!2574180) (exprs!7944 ct2!328) lambda!439730))))

(assert (=> d!2246797 (forall!17335 (exprs!7944 lt!2574180) lambda!439730)))

(assert (=> d!2246797 (= (lemmaConcatPreservesForall!1313 (exprs!7944 lt!2574180) (exprs!7944 ct2!328) lambda!439730) lt!2574302)))

(declare-fun bs!1903024 () Bool)

(assert (= bs!1903024 d!2246797))

(assert (=> bs!1903024 m!7902840))

(assert (=> bs!1903024 m!7902840))

(declare-fun m!7903512 () Bool)

(assert (=> bs!1903024 m!7903512))

(declare-fun m!7903514 () Bool)

(assert (=> bs!1903024 m!7903514))

(declare-fun m!7903516 () Bool)

(assert (=> bs!1903024 m!7903516))

(assert (=> d!2246565 d!2246797))

(declare-fun d!2246799 () Bool)

(declare-fun c!1342337 () Bool)

(assert (=> d!2246799 (= c!1342337 (is-Nil!69997 lt!2574231))))

(declare-fun e!4336602 () (Set C!37282))

(assert (=> d!2246799 (= (content!14402 lt!2574231) e!4336602)))

(declare-fun b!7233727 () Bool)

(assert (=> b!7233727 (= e!4336602 (as set.empty (Set C!37282)))))

(declare-fun b!7233728 () Bool)

(assert (=> b!7233728 (= e!4336602 (set.union (set.insert (h!76445 lt!2574231) (as set.empty (Set C!37282))) (content!14402 (t!384170 lt!2574231))))))

(assert (= (and d!2246799 c!1342337) b!7233727))

(assert (= (and d!2246799 (not c!1342337)) b!7233728))

(declare-fun m!7903518 () Bool)

(assert (=> b!7233728 m!7903518))

(declare-fun m!7903520 () Bool)

(assert (=> b!7233728 m!7903520))

(assert (=> d!2246555 d!2246799))

(declare-fun d!2246801 () Bool)

(declare-fun c!1342338 () Bool)

(assert (=> d!2246801 (= c!1342338 (is-Nil!69997 (t!384170 s1!1971)))))

(declare-fun e!4336603 () (Set C!37282))

(assert (=> d!2246801 (= (content!14402 (t!384170 s1!1971)) e!4336603)))

(declare-fun b!7233729 () Bool)

(assert (=> b!7233729 (= e!4336603 (as set.empty (Set C!37282)))))

(declare-fun b!7233730 () Bool)

(assert (=> b!7233730 (= e!4336603 (set.union (set.insert (h!76445 (t!384170 s1!1971)) (as set.empty (Set C!37282))) (content!14402 (t!384170 (t!384170 s1!1971)))))))

(assert (= (and d!2246801 c!1342338) b!7233729))

(assert (= (and d!2246801 (not c!1342338)) b!7233730))

(declare-fun m!7903522 () Bool)

(assert (=> b!7233730 m!7903522))

(assert (=> b!7233730 m!7903446))

(assert (=> d!2246555 d!2246801))

(declare-fun d!2246803 () Bool)

(declare-fun c!1342339 () Bool)

(assert (=> d!2246803 (= c!1342339 (is-Nil!69997 s2!1849))))

(declare-fun e!4336604 () (Set C!37282))

(assert (=> d!2246803 (= (content!14402 s2!1849) e!4336604)))

(declare-fun b!7233731 () Bool)

(assert (=> b!7233731 (= e!4336604 (as set.empty (Set C!37282)))))

(declare-fun b!7233732 () Bool)

(assert (=> b!7233732 (= e!4336604 (set.union (set.insert (h!76445 s2!1849) (as set.empty (Set C!37282))) (content!14402 (t!384170 s2!1849))))))

(assert (= (and d!2246803 c!1342339) b!7233731))

(assert (= (and d!2246803 (not c!1342339)) b!7233732))

(declare-fun m!7903524 () Bool)

(assert (=> b!7233732 m!7903524))

(declare-fun m!7903526 () Bool)

(assert (=> b!7233732 m!7903526))

(assert (=> d!2246555 d!2246803))

(declare-fun d!2246805 () Bool)

(declare-fun c!1342340 () Bool)

(assert (=> d!2246805 (= c!1342340 (is-Nil!69996 lt!2574266))))

(declare-fun e!4336605 () (Set Regex!18504))

(assert (=> d!2246805 (= (content!14403 lt!2574266) e!4336605)))

(declare-fun b!7233733 () Bool)

(assert (=> b!7233733 (= e!4336605 (as set.empty (Set Regex!18504)))))

(declare-fun b!7233734 () Bool)

(assert (=> b!7233734 (= e!4336605 (set.union (set.insert (h!76444 lt!2574266) (as set.empty (Set Regex!18504))) (content!14403 (t!384169 lt!2574266))))))

(assert (= (and d!2246805 c!1342340) b!7233733))

(assert (= (and d!2246805 (not c!1342340)) b!7233734))

(declare-fun m!7903528 () Bool)

(assert (=> b!7233734 m!7903528))

(declare-fun m!7903530 () Bool)

(assert (=> b!7233734 m!7903530))

(assert (=> d!2246605 d!2246805))

(declare-fun d!2246807 () Bool)

(declare-fun c!1342341 () Bool)

(assert (=> d!2246807 (= c!1342341 (is-Nil!69996 (exprs!7944 ct1!232)))))

(declare-fun e!4336606 () (Set Regex!18504))

(assert (=> d!2246807 (= (content!14403 (exprs!7944 ct1!232)) e!4336606)))

(declare-fun b!7233735 () Bool)

(assert (=> b!7233735 (= e!4336606 (as set.empty (Set Regex!18504)))))

(declare-fun b!7233736 () Bool)

(assert (=> b!7233736 (= e!4336606 (set.union (set.insert (h!76444 (exprs!7944 ct1!232)) (as set.empty (Set Regex!18504))) (content!14403 (t!384169 (exprs!7944 ct1!232)))))))

(assert (= (and d!2246807 c!1342341) b!7233735))

(assert (= (and d!2246807 (not c!1342341)) b!7233736))

(declare-fun m!7903532 () Bool)

(assert (=> b!7233736 m!7903532))

(assert (=> b!7233736 m!7903380))

(assert (=> d!2246605 d!2246807))

(assert (=> d!2246605 d!2246785))

(declare-fun b!7233749 () Bool)

(declare-fun e!4336616 () Context!14888)

(assert (=> b!7233749 (= e!4336616 (getWitness!2029 (t!384171 (toList!11361 lt!2574169)) lambda!439707))))

(declare-fun b!7233750 () Bool)

(declare-fun e!4336618 () Context!14888)

(assert (=> b!7233750 (= e!4336618 e!4336616)))

(declare-fun c!1342347 () Bool)

(assert (=> b!7233750 (= c!1342347 (is-Cons!69998 (toList!11361 lt!2574169)))))

(declare-fun b!7233751 () Bool)

(assert (=> b!7233751 (= e!4336618 (h!76446 (toList!11361 lt!2574169)))))

(declare-fun b!7233752 () Bool)

(declare-fun lt!2574308 () Unit!163545)

(declare-fun Unit!163549 () Unit!163545)

(assert (=> b!7233752 (= lt!2574308 Unit!163549)))

(assert (=> b!7233752 false))

(declare-fun head!14808 (List!70122) Context!14888)

(assert (=> b!7233752 (= e!4336616 (head!14808 (toList!11361 lt!2574169)))))

(declare-fun d!2246809 () Bool)

(declare-fun e!4336617 () Bool)

(assert (=> d!2246809 e!4336617))

(declare-fun res!2934738 () Bool)

(assert (=> d!2246809 (=> (not res!2934738) (not e!4336617))))

(declare-fun lt!2574307 () Context!14888)

(assert (=> d!2246809 (= res!2934738 (dynLambda!28537 lambda!439707 lt!2574307))))

(assert (=> d!2246809 (= lt!2574307 e!4336618)))

(declare-fun c!1342346 () Bool)

(declare-fun e!4336615 () Bool)

(assert (=> d!2246809 (= c!1342346 e!4336615)))

(declare-fun res!2934739 () Bool)

(assert (=> d!2246809 (=> (not res!2934739) (not e!4336615))))

(assert (=> d!2246809 (= res!2934739 (is-Cons!69998 (toList!11361 lt!2574169)))))

(assert (=> d!2246809 (exists!4152 (toList!11361 lt!2574169) lambda!439707)))

(assert (=> d!2246809 (= (getWitness!2029 (toList!11361 lt!2574169) lambda!439707) lt!2574307)))

(declare-fun b!7233753 () Bool)

(assert (=> b!7233753 (= e!4336617 (contains!20737 (toList!11361 lt!2574169) lt!2574307))))

(declare-fun b!7233754 () Bool)

(assert (=> b!7233754 (= e!4336615 (dynLambda!28537 lambda!439707 (h!76446 (toList!11361 lt!2574169))))))

(assert (= (and d!2246809 res!2934739) b!7233754))

(assert (= (and d!2246809 c!1342346) b!7233751))

(assert (= (and d!2246809 (not c!1342346)) b!7233750))

(assert (= (and b!7233750 c!1342347) b!7233749))

(assert (= (and b!7233750 (not c!1342347)) b!7233752))

(assert (= (and d!2246809 res!2934738) b!7233753))

(declare-fun b_lambda!277253 () Bool)

(assert (=> (not b_lambda!277253) (not d!2246809)))

(declare-fun b_lambda!277255 () Bool)

(assert (=> (not b_lambda!277255) (not b!7233754)))

(assert (=> b!7233752 m!7902848))

(declare-fun m!7903534 () Bool)

(assert (=> b!7233752 m!7903534))

(declare-fun m!7903536 () Bool)

(assert (=> b!7233754 m!7903536))

(assert (=> b!7233753 m!7902848))

(declare-fun m!7903538 () Bool)

(assert (=> b!7233753 m!7903538))

(declare-fun m!7903540 () Bool)

(assert (=> d!2246809 m!7903540))

(assert (=> d!2246809 m!7902848))

(assert (=> d!2246809 m!7902982))

(declare-fun m!7903542 () Bool)

(assert (=> b!7233749 m!7903542))

(assert (=> d!2246549 d!2246809))

(assert (=> d!2246549 d!2246577))

(assert (=> d!2246549 d!2246567))

(declare-fun d!2246811 () Bool)

(declare-fun choose!55568 ((Set Context!14888) Int) (Set Context!14888))

(assert (=> d!2246811 (= (flatMap!2710 lt!2574168 lambda!439744) (choose!55568 lt!2574168 lambda!439744))))

(declare-fun bs!1903025 () Bool)

(assert (= bs!1903025 d!2246811))

(declare-fun m!7903544 () Bool)

(assert (=> bs!1903025 m!7903544))

(assert (=> d!2246609 d!2246811))

(declare-fun b!7233755 () Bool)

(declare-fun e!4336619 () Bool)

(declare-fun tp!2034207 () Bool)

(assert (=> b!7233755 (= e!4336619 (and tp_is_empty!46473 tp!2034207))))

(assert (=> b!7233437 (= tp!2034185 e!4336619)))

(assert (= (and b!7233437 (is-Cons!69997 (t!384170 (t!384170 s1!1971)))) b!7233755))

(declare-fun b!7233756 () Bool)

(declare-fun e!4336620 () Bool)

(declare-fun tp!2034208 () Bool)

(assert (=> b!7233756 (= e!4336620 (and tp_is_empty!46473 tp!2034208))))

(assert (=> b!7233438 (= tp!2034186 e!4336620)))

(assert (= (and b!7233438 (is-Cons!69997 (t!384170 (t!384170 s2!1849)))) b!7233756))

(declare-fun b!7233768 () Bool)

(declare-fun e!4336623 () Bool)

(declare-fun tp!2034219 () Bool)

(declare-fun tp!2034220 () Bool)

(assert (=> b!7233768 (= e!4336623 (and tp!2034219 tp!2034220))))

(declare-fun b!7233769 () Bool)

(declare-fun tp!2034223 () Bool)

(assert (=> b!7233769 (= e!4336623 tp!2034223)))

(declare-fun b!7233770 () Bool)

(declare-fun tp!2034221 () Bool)

(declare-fun tp!2034222 () Bool)

(assert (=> b!7233770 (= e!4336623 (and tp!2034221 tp!2034222))))

(declare-fun b!7233767 () Bool)

(assert (=> b!7233767 (= e!4336623 tp_is_empty!46473)))

(assert (=> b!7233439 (= tp!2034187 e!4336623)))

(assert (= (and b!7233439 (is-ElementMatch!18504 (h!76444 (exprs!7944 ct2!328)))) b!7233767))

(assert (= (and b!7233439 (is-Concat!27349 (h!76444 (exprs!7944 ct2!328)))) b!7233768))

(assert (= (and b!7233439 (is-Star!18504 (h!76444 (exprs!7944 ct2!328)))) b!7233769))

(assert (= (and b!7233439 (is-Union!18504 (h!76444 (exprs!7944 ct2!328)))) b!7233770))

(declare-fun b!7233771 () Bool)

(declare-fun e!4336624 () Bool)

(declare-fun tp!2034224 () Bool)

(declare-fun tp!2034225 () Bool)

(assert (=> b!7233771 (= e!4336624 (and tp!2034224 tp!2034225))))

(assert (=> b!7233439 (= tp!2034188 e!4336624)))

(assert (= (and b!7233439 (is-Cons!69996 (t!384169 (exprs!7944 ct2!328)))) b!7233771))

(declare-fun b!7233773 () Bool)

(declare-fun e!4336625 () Bool)

(declare-fun tp!2034226 () Bool)

(declare-fun tp!2034227 () Bool)

(assert (=> b!7233773 (= e!4336625 (and tp!2034226 tp!2034227))))

(declare-fun b!7233774 () Bool)

(declare-fun tp!2034230 () Bool)

(assert (=> b!7233774 (= e!4336625 tp!2034230)))

(declare-fun b!7233775 () Bool)

(declare-fun tp!2034228 () Bool)

(declare-fun tp!2034229 () Bool)

(assert (=> b!7233775 (= e!4336625 (and tp!2034228 tp!2034229))))

(declare-fun b!7233772 () Bool)

(assert (=> b!7233772 (= e!4336625 tp_is_empty!46473)))

(assert (=> b!7233432 (= tp!2034181 e!4336625)))

(assert (= (and b!7233432 (is-ElementMatch!18504 (h!76444 (exprs!7944 ct1!232)))) b!7233772))

(assert (= (and b!7233432 (is-Concat!27349 (h!76444 (exprs!7944 ct1!232)))) b!7233773))

(assert (= (and b!7233432 (is-Star!18504 (h!76444 (exprs!7944 ct1!232)))) b!7233774))

(assert (= (and b!7233432 (is-Union!18504 (h!76444 (exprs!7944 ct1!232)))) b!7233775))

(declare-fun b!7233776 () Bool)

(declare-fun e!4336626 () Bool)

(declare-fun tp!2034231 () Bool)

(declare-fun tp!2034232 () Bool)

(assert (=> b!7233776 (= e!4336626 (and tp!2034231 tp!2034232))))

(assert (=> b!7233432 (= tp!2034182 e!4336626)))

(assert (= (and b!7233432 (is-Cons!69996 (t!384169 (exprs!7944 ct1!232)))) b!7233776))

(declare-fun b_lambda!277257 () Bool)

(assert (= b_lambda!277251 (or b!7233221 b_lambda!277257)))

(declare-fun bs!1903026 () Bool)

(declare-fun d!2246813 () Bool)

(assert (= bs!1903026 (and d!2246813 b!7233221)))

(assert (=> bs!1903026 (= (dynLambda!28541 lambda!439706 (h!76444 (exprs!7944 ct1!232))) (validRegex!9514 (h!76444 (exprs!7944 ct1!232))))))

(assert (=> bs!1903026 m!7902858))

(assert (=> b!7233719 d!2246813))

(declare-fun b_lambda!277259 () Bool)

(assert (= b_lambda!277247 (or b!7233221 b_lambda!277259)))

(declare-fun bs!1903027 () Bool)

(declare-fun d!2246815 () Bool)

(assert (= bs!1903027 (and d!2246815 b!7233221)))

(assert (=> bs!1903027 (= (dynLambda!28541 lambda!439706 (h!76444 (exprs!7944 lt!2574180))) (validRegex!9514 (h!76444 (exprs!7944 lt!2574180))))))

(declare-fun m!7903546 () Bool)

(assert (=> bs!1903027 m!7903546))

(assert (=> b!7233669 d!2246815))

(declare-fun b_lambda!277261 () Bool)

(assert (= b_lambda!277249 (or b!7233221 b_lambda!277261)))

(declare-fun bs!1903028 () Bool)

(declare-fun d!2246817 () Bool)

(assert (= bs!1903028 (and d!2246817 b!7233221)))

(assert (=> bs!1903028 (= (dynLambda!28541 lambda!439706 (h!76444 (++!16308 (exprs!7944 ct1!232) (exprs!7944 ct2!328)))) (validRegex!9514 (h!76444 (++!16308 (exprs!7944 ct1!232) (exprs!7944 ct2!328)))))))

(declare-fun m!7903548 () Bool)

(assert (=> bs!1903028 m!7903548))

(assert (=> b!7233717 d!2246817))

(declare-fun b_lambda!277263 () Bool)

(assert (= b_lambda!277239 (or d!2246587 b_lambda!277263)))

(declare-fun bs!1903029 () Bool)

(declare-fun d!2246819 () Bool)

(assert (= bs!1903029 (and d!2246819 d!2246587)))

(assert (=> bs!1903029 (= (dynLambda!28541 lambda!439740 (h!76444 (exprs!7944 ct1!232))) (validRegex!9514 (h!76444 (exprs!7944 ct1!232))))))

(assert (=> bs!1903029 m!7902858))

(assert (=> b!7233607 d!2246819))

(declare-fun b_lambda!277265 () Bool)

(assert (= b_lambda!277255 (or b!7233224 b_lambda!277265)))

(declare-fun bs!1903030 () Bool)

(declare-fun d!2246821 () Bool)

(assert (= bs!1903030 (and d!2246821 b!7233224)))

(assert (=> bs!1903030 (= (dynLambda!28537 lambda!439707 (h!76446 (toList!11361 lt!2574169))) (matchZipper!3414 (set.insert (h!76446 (toList!11361 lt!2574169)) (as set.empty (Set Context!14888))) (t!384170 s1!1971)))))

(declare-fun m!7903550 () Bool)

(assert (=> bs!1903030 m!7903550))

(assert (=> bs!1903030 m!7903550))

(declare-fun m!7903552 () Bool)

(assert (=> bs!1903030 m!7903552))

(assert (=> b!7233754 d!2246821))

(declare-fun b_lambda!277267 () Bool)

(assert (= b_lambda!277241 (or d!2246569 b_lambda!277267)))

(declare-fun bs!1903031 () Bool)

(declare-fun d!2246823 () Bool)

(assert (= bs!1903031 (and d!2246823 d!2246569)))

(assert (=> bs!1903031 (= (dynLambda!28537 lambda!439734 (h!76446 lt!2574173)) (not (dynLambda!28537 lambda!439707 (h!76446 lt!2574173))))))

(declare-fun b_lambda!277275 () Bool)

(assert (=> (not b_lambda!277275) (not bs!1903031)))

(declare-fun m!7903554 () Bool)

(assert (=> bs!1903031 m!7903554))

(assert (=> b!7233625 d!2246823))

(declare-fun b_lambda!277269 () Bool)

(assert (= b_lambda!277253 (or b!7233224 b_lambda!277269)))

(declare-fun bs!1903032 () Bool)

(declare-fun d!2246825 () Bool)

(assert (= bs!1903032 (and d!2246825 b!7233224)))

(assert (=> bs!1903032 (= (dynLambda!28537 lambda!439707 lt!2574307) (matchZipper!3414 (set.insert lt!2574307 (as set.empty (Set Context!14888))) (t!384170 s1!1971)))))

(declare-fun m!7903556 () Bool)

(assert (=> bs!1903032 m!7903556))

(assert (=> bs!1903032 m!7903556))

(declare-fun m!7903558 () Bool)

(assert (=> bs!1903032 m!7903558))

(assert (=> d!2246809 d!2246825))

(declare-fun b_lambda!277271 () Bool)

(assert (= b_lambda!277243 (or d!2246591 b_lambda!277271)))

(declare-fun bs!1903033 () Bool)

(declare-fun d!2246827 () Bool)

(assert (= bs!1903033 (and d!2246827 d!2246591)))

(assert (=> bs!1903033 (= (dynLambda!28541 lambda!439741 (h!76444 (exprs!7944 ct2!328))) (validRegex!9514 (h!76444 (exprs!7944 ct2!328))))))

(declare-fun m!7903560 () Bool)

(assert (=> bs!1903033 m!7903560))

(assert (=> b!7233665 d!2246827))

(declare-fun b_lambda!277273 () Bool)

(assert (= b_lambda!277245 (or b!7233221 b_lambda!277273)))

(declare-fun bs!1903034 () Bool)

(declare-fun d!2246829 () Bool)

(assert (= bs!1903034 (and d!2246829 b!7233221)))

(assert (=> bs!1903034 (= (dynLambda!28541 lambda!439706 (h!76444 (++!16308 (exprs!7944 lt!2574180) (exprs!7944 ct2!328)))) (validRegex!9514 (h!76444 (++!16308 (exprs!7944 lt!2574180) (exprs!7944 ct2!328)))))))

(declare-fun m!7903562 () Bool)

(assert (=> bs!1903034 m!7903562))

(assert (=> b!7233667 d!2246829))

(push 1)

(assert (not b!7233718))

(assert (not b!7233659))

(assert (not b!7233558))

(assert (not b!7233601))

(assert (not b!7233583))

(assert (not b!7233695))

(assert (not b!7233634))

(assert (not bs!1903027))

(assert (not b!7233602))

(assert (not b!7233653))

(assert (not bm!658489))

(assert (not b!7233721))

(assert (not b!7233749))

(assert (not d!2246749))

(assert (not b!7233680))

(assert (not b!7233561))

(assert (not b!7233661))

(assert (not b_lambda!277271))

(assert (not b!7233668))

(assert (not b!7233774))

(assert (not b_lambda!277273))

(assert (not d!2246657))

(assert (not b_lambda!277269))

(assert (not b!7233657))

(assert (not b!7233652))

(assert (not d!2246653))

(assert (not bm!658488))

(assert (not b!7233616))

(assert (not d!2246717))

(assert (not b!7233564))

(assert (not bs!1903032))

(assert (not d!2246797))

(assert (not b!7233610))

(assert (not d!2246773))

(assert (not d!2246777))

(assert (not d!2246795))

(assert (not b_lambda!277235))

(assert (not d!2246715))

(assert (not d!2246719))

(assert (not b_lambda!277275))

(assert (not b!7233734))

(assert (not b!7233658))

(assert (not b!7233593))

(assert (not b!7233666))

(assert (not d!2246759))

(assert (not d!2246789))

(assert (not bm!658496))

(assert (not b!7233609))

(assert (not b!7233678))

(assert (not d!2246661))

(assert (not b!7233632))

(assert (not b!7233676))

(assert (not b_lambda!277263))

(assert (not b!7233768))

(assert (not b!7233702))

(assert (not b!7233716))

(assert (not d!2246659))

(assert (not b!7233730))

(assert (not d!2246681))

(assert (not b!7233575))

(assert (not d!2246743))

(assert (not bm!658471))

(assert (not bm!658479))

(assert (not d!2246741))

(assert (not d!2246685))

(assert (not b!7233650))

(assert (not bs!1903028))

(assert (not b_lambda!277259))

(assert (not d!2246677))

(assert (not d!2246811))

(assert (not d!2246687))

(assert (not d!2246689))

(assert (not b!7233692))

(assert (not d!2246763))

(assert (not bm!658491))

(assert (not b!7233670))

(assert (not b!7233694))

(assert (not b!7233682))

(assert (not b!7233559))

(assert (not bm!658481))

(assert (not b!7233664))

(assert (not bm!658495))

(assert (not d!2246721))

(assert (not b!7233712))

(assert (not b!7233608))

(assert (not bs!1903034))

(assert (not bm!658485))

(assert (not b!7233776))

(assert (not b!7233728))

(assert (not d!2246697))

(assert (not d!2246733))

(assert (not b!7233770))

(assert (not bs!1903029))

(assert (not bm!658472))

(assert (not b!7233722))

(assert (not b!7233755))

(assert (not b_lambda!277265))

(assert (not d!2246779))

(assert (not b!7233620))

(assert (not b!7233752))

(assert (not bm!658469))

(assert (not bm!658475))

(assert (not b!7233720))

(assert (not b_lambda!277267))

(assert (not b!7233600))

(assert (not d!2246809))

(assert (not bm!658473))

(assert (not b_lambda!277261))

(assert (not b!7233736))

(assert (not b!7233592))

(assert (not b!7233714))

(assert (not bs!1903033))

(assert (not d!2246793))

(assert (not bm!658497))

(assert (not d!2246765))

(assert (not b!7233552))

(assert (not d!2246775))

(assert (not b!7233649))

(assert (not b!7233562))

(assert (not b!7233567))

(assert (not b!7233643))

(assert (not d!2246731))

(assert (not bs!1903026))

(assert (not b!7233753))

(assert (not b!7233619))

(assert (not bm!658487))

(assert (not b!7233769))

(assert (not b!7233683))

(assert (not b!7233618))

(assert (not b_lambda!277257))

(assert (not bm!658470))

(assert (not b!7233732))

(assert (not bs!1903030))

(assert (not d!2246701))

(assert (not bm!658486))

(assert (not bm!658480))

(assert (not b!7233636))

(assert (not b!7233775))

(assert (not b!7233756))

(assert (not b!7233655))

(assert (not b!7233773))

(assert (not b!7233771))

(assert tp_is_empty!46473)

(assert (not b!7233626))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

