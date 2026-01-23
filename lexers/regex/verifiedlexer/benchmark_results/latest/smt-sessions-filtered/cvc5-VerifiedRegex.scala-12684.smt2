; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!701286 () Bool)

(assert start!701286)

(declare-fun b!7230022 () Bool)

(declare-fun res!2933358 () Bool)

(declare-fun e!4334154 () Bool)

(assert (=> b!7230022 (=> (not res!2933358) (not e!4334154))))

(declare-datatypes ((C!37226 0))(
  ( (C!37227 (val!28561 Int)) )
))
(declare-datatypes ((Regex!18476 0))(
  ( (ElementMatch!18476 (c!1341306 C!37226)) (Concat!27321 (regOne!37464 Regex!18476) (regTwo!37464 Regex!18476)) (EmptyExpr!18476) (Star!18476 (reg!18805 Regex!18476)) (EmptyLang!18476) (Union!18476 (regOne!37465 Regex!18476) (regTwo!37465 Regex!18476)) )
))
(declare-datatypes ((List!70040 0))(
  ( (Nil!69916) (Cons!69916 (h!76364 Regex!18476) (t!384089 List!70040)) )
))
(declare-datatypes ((Context!14832 0))(
  ( (Context!14833 (exprs!7916 List!70040)) )
))
(declare-fun ct2!328 () Context!14832)

(declare-datatypes ((List!70041 0))(
  ( (Nil!69917) (Cons!69917 (h!76365 C!37226) (t!384090 List!70041)) )
))
(declare-fun s2!1849 () List!70041)

(declare-fun matchZipper!3386 ((Set Context!14832) List!70041) Bool)

(assert (=> b!7230022 (= res!2933358 (matchZipper!3386 (set.insert ct2!328 (as set.empty (Set Context!14832))) s2!1849))))

(declare-fun b!7230023 () Bool)

(declare-fun e!4334160 () Bool)

(declare-fun tp!2033523 () Bool)

(assert (=> b!7230023 (= e!4334160 tp!2033523)))

(declare-fun b!7230024 () Bool)

(declare-fun e!4334161 () Bool)

(declare-fun e!4334153 () Bool)

(assert (=> b!7230024 (= e!4334161 (not e!4334153))))

(declare-fun res!2933360 () Bool)

(assert (=> b!7230024 (=> res!2933360 e!4334153)))

(declare-fun lt!2572754 () Context!14832)

(assert (=> b!7230024 (= res!2933360 (not (= lt!2572754 ct2!328)))))

(declare-fun lambda!439024 () Int)

(declare-fun ct1!232 () Context!14832)

(declare-datatypes ((Unit!163487 0))(
  ( (Unit!163488) )
))
(declare-fun lt!2572755 () Unit!163487)

(declare-fun lemmaConcatPreservesForall!1285 (List!70040 List!70040 Int) Unit!163487)

(assert (=> b!7230024 (= lt!2572755 (lemmaConcatPreservesForall!1285 (exprs!7916 ct1!232) (exprs!7916 ct2!328) lambda!439024))))

(declare-fun s1!1971 () List!70041)

(declare-fun isEmpty!40310 (List!70041) Bool)

(assert (=> b!7230024 (isEmpty!40310 s1!1971)))

(declare-fun lt!2572757 () Unit!163487)

(declare-fun lt!2572760 () (Set Context!14832))

(declare-fun lemmaZipperOfEmptyContextMatchesEmptyString!43 ((Set Context!14832) List!70041) Unit!163487)

(assert (=> b!7230024 (= lt!2572757 (lemmaZipperOfEmptyContextMatchesEmptyString!43 lt!2572760 s1!1971))))

(declare-fun b!7230025 () Bool)

(declare-fun e!4334159 () Bool)

(declare-fun forall!17302 (List!70040 Int) Bool)

(assert (=> b!7230025 (= e!4334159 (forall!17302 (exprs!7916 ct1!232) lambda!439024))))

(declare-fun b!7230026 () Bool)

(assert (=> b!7230026 (= e!4334154 e!4334161)))

(declare-fun res!2933359 () Bool)

(assert (=> b!7230026 (=> (not res!2933359) (not e!4334161))))

(assert (=> b!7230026 (= res!2933359 (is-Nil!69916 (exprs!7916 ct1!232)))))

(declare-fun ++!16258 (List!70040 List!70040) List!70040)

(assert (=> b!7230026 (= lt!2572754 (Context!14833 (++!16258 (exprs!7916 ct1!232) (exprs!7916 ct2!328))))))

(declare-fun lt!2572758 () Unit!163487)

(assert (=> b!7230026 (= lt!2572758 (lemmaConcatPreservesForall!1285 (exprs!7916 ct1!232) (exprs!7916 ct2!328) lambda!439024))))

(declare-fun b!7230027 () Bool)

(declare-fun e!4334155 () Bool)

(declare-fun tp_is_empty!46417 () Bool)

(declare-fun tp!2033521 () Bool)

(assert (=> b!7230027 (= e!4334155 (and tp_is_empty!46417 tp!2033521))))

(declare-fun b!7230028 () Bool)

(declare-fun e!4334156 () Bool)

(assert (=> b!7230028 (= e!4334153 e!4334156)))

(declare-fun res!2933355 () Bool)

(assert (=> b!7230028 (=> res!2933355 e!4334156)))

(declare-fun lt!2572759 () List!70041)

(assert (=> b!7230028 (= res!2933355 (not (= lt!2572759 s2!1849)))))

(declare-fun ++!16259 (List!70041 List!70041) List!70041)

(assert (=> b!7230028 (= lt!2572759 (++!16259 s1!1971 s2!1849))))

(declare-fun res!2933356 () Bool)

(assert (=> start!701286 (=> (not res!2933356) (not e!4334154))))

(assert (=> start!701286 (= res!2933356 (matchZipper!3386 lt!2572760 s1!1971))))

(assert (=> start!701286 (= lt!2572760 (set.insert ct1!232 (as set.empty (Set Context!14832))))))

(assert (=> start!701286 e!4334154))

(declare-fun inv!89201 (Context!14832) Bool)

(assert (=> start!701286 (and (inv!89201 ct1!232) e!4334160)))

(assert (=> start!701286 e!4334155))

(declare-fun e!4334158 () Bool)

(assert (=> start!701286 e!4334158))

(declare-fun e!4334157 () Bool)

(assert (=> start!701286 (and (inv!89201 ct2!328) e!4334157)))

(declare-fun b!7230029 () Bool)

(declare-fun tp!2033524 () Bool)

(assert (=> b!7230029 (= e!4334157 tp!2033524)))

(declare-fun b!7230030 () Bool)

(declare-fun tp!2033522 () Bool)

(assert (=> b!7230030 (= e!4334158 (and tp_is_empty!46417 tp!2033522))))

(declare-fun b!7230031 () Bool)

(assert (=> b!7230031 (= e!4334156 e!4334159)))

(declare-fun res!2933357 () Bool)

(assert (=> b!7230031 (=> res!2933357 e!4334159)))

(assert (=> b!7230031 (= res!2933357 (not (matchZipper!3386 (set.insert lt!2572754 (as set.empty (Set Context!14832))) lt!2572759)))))

(declare-fun lt!2572756 () Unit!163487)

(assert (=> b!7230031 (= lt!2572756 (lemmaConcatPreservesForall!1285 (exprs!7916 ct1!232) (exprs!7916 ct2!328) lambda!439024))))

(assert (= (and start!701286 res!2933356) b!7230022))

(assert (= (and b!7230022 res!2933358) b!7230026))

(assert (= (and b!7230026 res!2933359) b!7230024))

(assert (= (and b!7230024 (not res!2933360)) b!7230028))

(assert (= (and b!7230028 (not res!2933355)) b!7230031))

(assert (= (and b!7230031 (not res!2933357)) b!7230025))

(assert (= start!701286 b!7230023))

(assert (= (and start!701286 (is-Cons!69917 s1!1971)) b!7230027))

(assert (= (and start!701286 (is-Cons!69917 s2!1849)) b!7230030))

(assert (= start!701286 b!7230029))

(declare-fun m!7898182 () Bool)

(assert (=> b!7230025 m!7898182))

(declare-fun m!7898184 () Bool)

(assert (=> b!7230026 m!7898184))

(declare-fun m!7898186 () Bool)

(assert (=> b!7230026 m!7898186))

(declare-fun m!7898188 () Bool)

(assert (=> start!701286 m!7898188))

(declare-fun m!7898190 () Bool)

(assert (=> start!701286 m!7898190))

(declare-fun m!7898192 () Bool)

(assert (=> start!701286 m!7898192))

(declare-fun m!7898194 () Bool)

(assert (=> start!701286 m!7898194))

(declare-fun m!7898196 () Bool)

(assert (=> b!7230028 m!7898196))

(assert (=> b!7230024 m!7898186))

(declare-fun m!7898198 () Bool)

(assert (=> b!7230024 m!7898198))

(declare-fun m!7898200 () Bool)

(assert (=> b!7230024 m!7898200))

(declare-fun m!7898202 () Bool)

(assert (=> b!7230022 m!7898202))

(assert (=> b!7230022 m!7898202))

(declare-fun m!7898204 () Bool)

(assert (=> b!7230022 m!7898204))

(declare-fun m!7898206 () Bool)

(assert (=> b!7230031 m!7898206))

(assert (=> b!7230031 m!7898206))

(declare-fun m!7898208 () Bool)

(assert (=> b!7230031 m!7898208))

(assert (=> b!7230031 m!7898186))

(push 1)

(assert (not start!701286))

(assert tp_is_empty!46417)

(assert (not b!7230029))

(assert (not b!7230025))

(assert (not b!7230031))

(assert (not b!7230024))

(assert (not b!7230023))

(assert (not b!7230030))

(assert (not b!7230022))

(assert (not b!7230027))

(assert (not b!7230028))

(assert (not b!7230026))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2245321 () Bool)

(assert (=> d!2245321 (forall!17302 (++!16258 (exprs!7916 ct1!232) (exprs!7916 ct2!328)) lambda!439024)))

(declare-fun lt!2572784 () Unit!163487)

(declare-fun choose!55480 (List!70040 List!70040 Int) Unit!163487)

(assert (=> d!2245321 (= lt!2572784 (choose!55480 (exprs!7916 ct1!232) (exprs!7916 ct2!328) lambda!439024))))

(assert (=> d!2245321 (forall!17302 (exprs!7916 ct1!232) lambda!439024)))

(assert (=> d!2245321 (= (lemmaConcatPreservesForall!1285 (exprs!7916 ct1!232) (exprs!7916 ct2!328) lambda!439024) lt!2572784)))

(declare-fun bs!1902361 () Bool)

(assert (= bs!1902361 d!2245321))

(assert (=> bs!1902361 m!7898184))

(assert (=> bs!1902361 m!7898184))

(declare-fun m!7898238 () Bool)

(assert (=> bs!1902361 m!7898238))

(declare-fun m!7898240 () Bool)

(assert (=> bs!1902361 m!7898240))

(assert (=> bs!1902361 m!7898182))

(assert (=> b!7230024 d!2245321))

(declare-fun d!2245323 () Bool)

(assert (=> d!2245323 (= (isEmpty!40310 s1!1971) (is-Nil!69917 s1!1971))))

(assert (=> b!7230024 d!2245323))

(declare-fun d!2245325 () Bool)

(assert (=> d!2245325 (= (matchZipper!3386 lt!2572760 s1!1971) (isEmpty!40310 s1!1971))))

(declare-fun lt!2572789 () Unit!163487)

(declare-fun choose!55481 ((Set Context!14832) List!70041) Unit!163487)

(assert (=> d!2245325 (= lt!2572789 (choose!55481 lt!2572760 s1!1971))))

(assert (=> d!2245325 (= lt!2572760 (set.singleton (Context!14833 Nil!69916)))))

(assert (=> d!2245325 (= (lemmaZipperOfEmptyContextMatchesEmptyString!43 lt!2572760 s1!1971) lt!2572789)))

(declare-fun bs!1902362 () Bool)

(assert (= bs!1902362 d!2245325))

(assert (=> bs!1902362 m!7898188))

(assert (=> bs!1902362 m!7898198))

(declare-fun m!7898242 () Bool)

(assert (=> bs!1902362 m!7898242))

(assert (=> b!7230024 d!2245325))

(declare-fun d!2245327 () Bool)

(declare-fun res!2933389 () Bool)

(declare-fun e!4334199 () Bool)

(assert (=> d!2245327 (=> res!2933389 e!4334199)))

(assert (=> d!2245327 (= res!2933389 (is-Nil!69916 (exprs!7916 ct1!232)))))

(assert (=> d!2245327 (= (forall!17302 (exprs!7916 ct1!232) lambda!439024) e!4334199)))

(declare-fun b!7230078 () Bool)

(declare-fun e!4334200 () Bool)

(assert (=> b!7230078 (= e!4334199 e!4334200)))

(declare-fun res!2933390 () Bool)

(assert (=> b!7230078 (=> (not res!2933390) (not e!4334200))))

(declare-fun dynLambda!28496 (Int Regex!18476) Bool)

(assert (=> b!7230078 (= res!2933390 (dynLambda!28496 lambda!439024 (h!76364 (exprs!7916 ct1!232))))))

(declare-fun b!7230079 () Bool)

(assert (=> b!7230079 (= e!4334200 (forall!17302 (t!384089 (exprs!7916 ct1!232)) lambda!439024))))

(assert (= (and d!2245327 (not res!2933389)) b!7230078))

(assert (= (and b!7230078 res!2933390) b!7230079))

(declare-fun b_lambda!276995 () Bool)

(assert (=> (not b_lambda!276995) (not b!7230078)))

(declare-fun m!7898254 () Bool)

(assert (=> b!7230078 m!7898254))

(declare-fun m!7898258 () Bool)

(assert (=> b!7230079 m!7898258))

(assert (=> b!7230025 d!2245327))

(declare-fun b!7230089 () Bool)

(declare-fun e!4334205 () List!70041)

(assert (=> b!7230089 (= e!4334205 (Cons!69917 (h!76365 s1!1971) (++!16259 (t!384090 s1!1971) s2!1849)))))

(declare-fun d!2245329 () Bool)

(declare-fun e!4334206 () Bool)

(assert (=> d!2245329 e!4334206))

(declare-fun res!2933395 () Bool)

(assert (=> d!2245329 (=> (not res!2933395) (not e!4334206))))

(declare-fun lt!2572793 () List!70041)

(declare-fun content!14352 (List!70041) (Set C!37226))

(assert (=> d!2245329 (= res!2933395 (= (content!14352 lt!2572793) (set.union (content!14352 s1!1971) (content!14352 s2!1849))))))

(assert (=> d!2245329 (= lt!2572793 e!4334205)))

(declare-fun c!1341313 () Bool)

(assert (=> d!2245329 (= c!1341313 (is-Nil!69917 s1!1971))))

(assert (=> d!2245329 (= (++!16259 s1!1971 s2!1849) lt!2572793)))

(declare-fun b!7230090 () Bool)

(declare-fun res!2933396 () Bool)

(assert (=> b!7230090 (=> (not res!2933396) (not e!4334206))))

(declare-fun size!41533 (List!70041) Int)

(assert (=> b!7230090 (= res!2933396 (= (size!41533 lt!2572793) (+ (size!41533 s1!1971) (size!41533 s2!1849))))))

(declare-fun b!7230088 () Bool)

(assert (=> b!7230088 (= e!4334205 s2!1849)))

(declare-fun b!7230091 () Bool)

(assert (=> b!7230091 (= e!4334206 (or (not (= s2!1849 Nil!69917)) (= lt!2572793 s1!1971)))))

(assert (= (and d!2245329 c!1341313) b!7230088))

(assert (= (and d!2245329 (not c!1341313)) b!7230089))

(assert (= (and d!2245329 res!2933395) b!7230090))

(assert (= (and b!7230090 res!2933396) b!7230091))

(declare-fun m!7898262 () Bool)

(assert (=> b!7230089 m!7898262))

(declare-fun m!7898264 () Bool)

(assert (=> d!2245329 m!7898264))

(declare-fun m!7898266 () Bool)

(assert (=> d!2245329 m!7898266))

(declare-fun m!7898268 () Bool)

(assert (=> d!2245329 m!7898268))

(declare-fun m!7898270 () Bool)

(assert (=> b!7230090 m!7898270))

(declare-fun m!7898272 () Bool)

(assert (=> b!7230090 m!7898272))

(declare-fun m!7898274 () Bool)

(assert (=> b!7230090 m!7898274))

(assert (=> b!7230028 d!2245329))

(declare-fun d!2245333 () Bool)

(declare-fun c!1341318 () Bool)

(assert (=> d!2245333 (= c!1341318 (isEmpty!40310 s1!1971))))

(declare-fun e!4334213 () Bool)

(assert (=> d!2245333 (= (matchZipper!3386 lt!2572760 s1!1971) e!4334213)))

(declare-fun b!7230104 () Bool)

(declare-fun nullableZipper!2799 ((Set Context!14832)) Bool)

(assert (=> b!7230104 (= e!4334213 (nullableZipper!2799 lt!2572760))))

(declare-fun b!7230105 () Bool)

(declare-fun derivationStepZipper!3268 ((Set Context!14832) C!37226) (Set Context!14832))

(declare-fun head!14785 (List!70041) C!37226)

(declare-fun tail!14100 (List!70041) List!70041)

(assert (=> b!7230105 (= e!4334213 (matchZipper!3386 (derivationStepZipper!3268 lt!2572760 (head!14785 s1!1971)) (tail!14100 s1!1971)))))

(assert (= (and d!2245333 c!1341318) b!7230104))

(assert (= (and d!2245333 (not c!1341318)) b!7230105))

(assert (=> d!2245333 m!7898198))

(declare-fun m!7898276 () Bool)

(assert (=> b!7230104 m!7898276))

(declare-fun m!7898278 () Bool)

(assert (=> b!7230105 m!7898278))

(assert (=> b!7230105 m!7898278))

(declare-fun m!7898280 () Bool)

(assert (=> b!7230105 m!7898280))

(declare-fun m!7898282 () Bool)

(assert (=> b!7230105 m!7898282))

(assert (=> b!7230105 m!7898280))

(assert (=> b!7230105 m!7898282))

(declare-fun m!7898284 () Bool)

(assert (=> b!7230105 m!7898284))

(assert (=> start!701286 d!2245333))

(declare-fun bs!1902363 () Bool)

(declare-fun d!2245335 () Bool)

(assert (= bs!1902363 (and d!2245335 b!7230026)))

(declare-fun lambda!439036 () Int)

(assert (=> bs!1902363 (= lambda!439036 lambda!439024)))

(assert (=> d!2245335 (= (inv!89201 ct1!232) (forall!17302 (exprs!7916 ct1!232) lambda!439036))))

(declare-fun bs!1902364 () Bool)

(assert (= bs!1902364 d!2245335))

(declare-fun m!7898286 () Bool)

(assert (=> bs!1902364 m!7898286))

(assert (=> start!701286 d!2245335))

(declare-fun bs!1902365 () Bool)

(declare-fun d!2245337 () Bool)

(assert (= bs!1902365 (and d!2245337 b!7230026)))

(declare-fun lambda!439037 () Int)

(assert (=> bs!1902365 (= lambda!439037 lambda!439024)))

(declare-fun bs!1902366 () Bool)

(assert (= bs!1902366 (and d!2245337 d!2245335)))

(assert (=> bs!1902366 (= lambda!439037 lambda!439036)))

(assert (=> d!2245337 (= (inv!89201 ct2!328) (forall!17302 (exprs!7916 ct2!328) lambda!439037))))

(declare-fun bs!1902367 () Bool)

(assert (= bs!1902367 d!2245337))

(declare-fun m!7898302 () Bool)

(assert (=> bs!1902367 m!7898302))

(assert (=> start!701286 d!2245337))

(declare-fun d!2245341 () Bool)

(declare-fun c!1341320 () Bool)

(assert (=> d!2245341 (= c!1341320 (isEmpty!40310 s2!1849))))

(declare-fun e!4334216 () Bool)

(assert (=> d!2245341 (= (matchZipper!3386 (set.insert ct2!328 (as set.empty (Set Context!14832))) s2!1849) e!4334216)))

(declare-fun b!7230110 () Bool)

(assert (=> b!7230110 (= e!4334216 (nullableZipper!2799 (set.insert ct2!328 (as set.empty (Set Context!14832)))))))

(declare-fun b!7230111 () Bool)

(assert (=> b!7230111 (= e!4334216 (matchZipper!3386 (derivationStepZipper!3268 (set.insert ct2!328 (as set.empty (Set Context!14832))) (head!14785 s2!1849)) (tail!14100 s2!1849)))))

(assert (= (and d!2245341 c!1341320) b!7230110))

(assert (= (and d!2245341 (not c!1341320)) b!7230111))

(declare-fun m!7898304 () Bool)

(assert (=> d!2245341 m!7898304))

(assert (=> b!7230110 m!7898202))

(declare-fun m!7898306 () Bool)

(assert (=> b!7230110 m!7898306))

(declare-fun m!7898308 () Bool)

(assert (=> b!7230111 m!7898308))

(assert (=> b!7230111 m!7898202))

(assert (=> b!7230111 m!7898308))

(declare-fun m!7898310 () Bool)

(assert (=> b!7230111 m!7898310))

(declare-fun m!7898312 () Bool)

(assert (=> b!7230111 m!7898312))

(assert (=> b!7230111 m!7898310))

(assert (=> b!7230111 m!7898312))

(declare-fun m!7898314 () Bool)

(assert (=> b!7230111 m!7898314))

(assert (=> b!7230022 d!2245341))

(declare-fun d!2245343 () Bool)

(declare-fun c!1341321 () Bool)

(assert (=> d!2245343 (= c!1341321 (isEmpty!40310 lt!2572759))))

(declare-fun e!4334217 () Bool)

(assert (=> d!2245343 (= (matchZipper!3386 (set.insert lt!2572754 (as set.empty (Set Context!14832))) lt!2572759) e!4334217)))

(declare-fun b!7230112 () Bool)

(assert (=> b!7230112 (= e!4334217 (nullableZipper!2799 (set.insert lt!2572754 (as set.empty (Set Context!14832)))))))

(declare-fun b!7230113 () Bool)

(assert (=> b!7230113 (= e!4334217 (matchZipper!3386 (derivationStepZipper!3268 (set.insert lt!2572754 (as set.empty (Set Context!14832))) (head!14785 lt!2572759)) (tail!14100 lt!2572759)))))

(assert (= (and d!2245343 c!1341321) b!7230112))

(assert (= (and d!2245343 (not c!1341321)) b!7230113))

(declare-fun m!7898316 () Bool)

(assert (=> d!2245343 m!7898316))

(assert (=> b!7230112 m!7898206))

(declare-fun m!7898318 () Bool)

(assert (=> b!7230112 m!7898318))

(declare-fun m!7898320 () Bool)

(assert (=> b!7230113 m!7898320))

(assert (=> b!7230113 m!7898206))

(assert (=> b!7230113 m!7898320))

(declare-fun m!7898322 () Bool)

(assert (=> b!7230113 m!7898322))

(declare-fun m!7898324 () Bool)

(assert (=> b!7230113 m!7898324))

(assert (=> b!7230113 m!7898322))

(assert (=> b!7230113 m!7898324))

(declare-fun m!7898326 () Bool)

(assert (=> b!7230113 m!7898326))

(assert (=> b!7230031 d!2245343))

(assert (=> b!7230031 d!2245321))

(declare-fun b!7230123 () Bool)

(declare-fun e!4334223 () List!70040)

(assert (=> b!7230123 (= e!4334223 (Cons!69916 (h!76364 (exprs!7916 ct1!232)) (++!16258 (t!384089 (exprs!7916 ct1!232)) (exprs!7916 ct2!328))))))

(declare-fun lt!2572802 () List!70040)

(declare-fun e!4334222 () Bool)

(declare-fun b!7230125 () Bool)

(assert (=> b!7230125 (= e!4334222 (or (not (= (exprs!7916 ct2!328) Nil!69916)) (= lt!2572802 (exprs!7916 ct1!232))))))

(declare-fun b!7230122 () Bool)

(assert (=> b!7230122 (= e!4334223 (exprs!7916 ct2!328))))

(declare-fun b!7230124 () Bool)

(declare-fun res!2933408 () Bool)

(assert (=> b!7230124 (=> (not res!2933408) (not e!4334222))))

(declare-fun size!41534 (List!70040) Int)

(assert (=> b!7230124 (= res!2933408 (= (size!41534 lt!2572802) (+ (size!41534 (exprs!7916 ct1!232)) (size!41534 (exprs!7916 ct2!328)))))))

(declare-fun d!2245345 () Bool)

(assert (=> d!2245345 e!4334222))

(declare-fun res!2933407 () Bool)

(assert (=> d!2245345 (=> (not res!2933407) (not e!4334222))))

(declare-fun content!14353 (List!70040) (Set Regex!18476))

(assert (=> d!2245345 (= res!2933407 (= (content!14353 lt!2572802) (set.union (content!14353 (exprs!7916 ct1!232)) (content!14353 (exprs!7916 ct2!328)))))))

(assert (=> d!2245345 (= lt!2572802 e!4334223)))

(declare-fun c!1341324 () Bool)

(assert (=> d!2245345 (= c!1341324 (is-Nil!69916 (exprs!7916 ct1!232)))))

(assert (=> d!2245345 (= (++!16258 (exprs!7916 ct1!232) (exprs!7916 ct2!328)) lt!2572802)))

(assert (= (and d!2245345 c!1341324) b!7230122))

(assert (= (and d!2245345 (not c!1341324)) b!7230123))

(assert (= (and d!2245345 res!2933407) b!7230124))

(assert (= (and b!7230124 res!2933408) b!7230125))

(declare-fun m!7898332 () Bool)

(assert (=> b!7230123 m!7898332))

(declare-fun m!7898334 () Bool)

(assert (=> b!7230124 m!7898334))

(declare-fun m!7898336 () Bool)

(assert (=> b!7230124 m!7898336))

(declare-fun m!7898338 () Bool)

(assert (=> b!7230124 m!7898338))

(declare-fun m!7898340 () Bool)

(assert (=> d!2245345 m!7898340))

(declare-fun m!7898342 () Bool)

(assert (=> d!2245345 m!7898342))

(declare-fun m!7898344 () Bool)

(assert (=> d!2245345 m!7898344))

(assert (=> b!7230026 d!2245345))

(assert (=> b!7230026 d!2245321))

(declare-fun b!7230130 () Bool)

(declare-fun e!4334226 () Bool)

(declare-fun tp!2033539 () Bool)

(assert (=> b!7230130 (= e!4334226 (and tp_is_empty!46417 tp!2033539))))

(assert (=> b!7230030 (= tp!2033522 e!4334226)))

(assert (= (and b!7230030 (is-Cons!69917 (t!384090 s2!1849))) b!7230130))

(declare-fun b!7230135 () Bool)

(declare-fun e!4334229 () Bool)

(declare-fun tp!2033544 () Bool)

(declare-fun tp!2033545 () Bool)

(assert (=> b!7230135 (= e!4334229 (and tp!2033544 tp!2033545))))

(assert (=> b!7230023 (= tp!2033523 e!4334229)))

(assert (= (and b!7230023 (is-Cons!69916 (exprs!7916 ct1!232))) b!7230135))

(declare-fun b!7230136 () Bool)

(declare-fun e!4334230 () Bool)

(declare-fun tp!2033546 () Bool)

(declare-fun tp!2033547 () Bool)

(assert (=> b!7230136 (= e!4334230 (and tp!2033546 tp!2033547))))

(assert (=> b!7230029 (= tp!2033524 e!4334230)))

(assert (= (and b!7230029 (is-Cons!69916 (exprs!7916 ct2!328))) b!7230136))

(declare-fun b!7230137 () Bool)

(declare-fun e!4334231 () Bool)

(declare-fun tp!2033548 () Bool)

(assert (=> b!7230137 (= e!4334231 (and tp_is_empty!46417 tp!2033548))))

(assert (=> b!7230027 (= tp!2033521 e!4334231)))

(assert (= (and b!7230027 (is-Cons!69917 (t!384090 s1!1971))) b!7230137))

(declare-fun b_lambda!276997 () Bool)

(assert (= b_lambda!276995 (or b!7230026 b_lambda!276997)))

(declare-fun bs!1902369 () Bool)

(declare-fun d!2245351 () Bool)

(assert (= bs!1902369 (and d!2245351 b!7230026)))

(declare-fun validRegex!9503 (Regex!18476) Bool)

(assert (=> bs!1902369 (= (dynLambda!28496 lambda!439024 (h!76364 (exprs!7916 ct1!232))) (validRegex!9503 (h!76364 (exprs!7916 ct1!232))))))

(declare-fun m!7898346 () Bool)

(assert (=> bs!1902369 m!7898346))

(assert (=> b!7230078 d!2245351))

(push 1)

(assert (not d!2245343))

(assert (not b!7230130))

(assert (not d!2245321))

(assert (not b!7230123))

(assert (not b!7230112))

(assert (not b!7230105))

(assert (not b!7230110))

(assert (not b_lambda!276997))

(assert (not d!2245333))

(assert (not b!7230136))

(assert (not bs!1902369))

(assert (not b!7230090))

(assert (not b!7230113))

(assert (not d!2245325))

(assert (not b!7230104))

(assert tp_is_empty!46417)

(assert (not b!7230089))

(assert (not d!2245345))

(assert (not d!2245329))

(assert (not d!2245337))

(assert (not d!2245335))

(assert (not d!2245341))

(assert (not b!7230079))

(assert (not b!7230111))

(assert (not b!7230137))

(assert (not b!7230135))

(assert (not b!7230124))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

